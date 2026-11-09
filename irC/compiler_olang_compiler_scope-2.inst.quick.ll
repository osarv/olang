source_filename = "compiler_olang_compiler_scope-2.inst.quick.ll"
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
%"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" = type { { i64, ptr }, i64, i64 }
%"std/prelude/map:MapKeyIter.bf5835bb10600fe6a7fc1da14a6360d9" = type { ptr, i64 }
%"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" = type { i64, i64 }
%"compiler/scope:fnRec" = type { i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1 }
%"compiler/scope:Placement" = type { i64, i64, i64, i64, { i64, ptr }, i1 }
%"std/prelude/array:ArrayIter.ef37386b9f0625afbaa73bd3cf091381" = type { { i64, ptr }, i64 }
%"std/prelude/map:MapEntry.f17f3f0202174eb6591f595766c15613" = type { i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"std/prelude/map:MapIter.bf5835bb10600fe6a7fc1da14a6360d9" = type { ptr, i64 }
%"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" = type { { i64, ptr }, { i64, ptr }, { i64, ptr }, i64, i64, i64 }
%"std/prelude/map:MapEntry.eb00e4a6e4307a4e46e40fbcd79d6b4f" = type { i64, i1 }
%"std/prelude/map:MapEntry.8d509622153b47f1a5f79c42c8367406" = type { i64, { i64, ptr } }
%"std/prelude/map:MapEntry.e476b05c61172463a7c240e364dbb6d0" = type { i64, i64 }
%"std/prelude/map:MapEntry.e9f7fa267a7f2d248d882fb408477a69" = type { i64, { i64, [2 x i64] } }
%"compiler/scope:fnRecs" = type { %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"std/prelude/map:MapEntry.8067410eb7799f1c31299714f5ba653d" = type { i64, %"compiler/scope:fnRecs" }
%"std/prelude/map:MapEntry.1eb2466213689e002f25e81e83536e78" = type { i64, ptr }
%"std/prelude/map:MapEntry.77d571dcfbd22be90356fe294d3b1a19" = type { %"compiler/scope:verAtom", i64 }
%"compiler/scope:verAtom" = type { i64, i64, i64, i64, i64, i64, i1, i64 }
%"compiler/scope:placedRow" = type { %"compiler/source:Span", i64 }
%"compiler/source:Span" = type { i32, i32 }
%"std/prelude/map:MapEntry.545808996237a863e786f2cb6df7346f" = type { %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", %"compiler/scope:placedRow" }
%"std/prelude/map:MapEntry.0bcda5c026701d95f15bce76f62e86ad" = type { %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", %"compiler/scope:fnRecs" }
%"std/prelude/map:MapEntry.1b1d537c79dee3d5948de1b7c1a79d8b" = type { %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", { i64, [2 x i64] } }
%"std/prelude/map:MapEntry.9ce8a46a5d367870e2478b0757bce708" = type { %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", i64 }
%"std/prelude/map:MapEntry.5d90ea23f235d8870da3668e82c28edd" = type { %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", %"compiler/scope:Placement" }
%"std/prelude/map:MapEntry.39ab5235a9e7cc4d21ab272df52b187f" = type { %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"std/prelude/map:MapEntry.8c7bad97385adc7a5b41f0343fdc7864" = type { %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", { i64, [1 x i64] } }
%"std/prelude/map:MapEntry.ef37386b9f0625afbaa73bd3cf091381" = type { { i64, ptr }, i64 }
%"compiler/generic:Origin" = type { i64, %"compiler/source:Span", i64, i32 }
%"compiler/scope:Gap" = type { i64, %"compiler/source:Span", { i64, ptr } }
%"compiler/scope:markRead" = type { i64, i64, { i64, [1 x i64] } }
%"compiler/scope:rel" = type { { i64, [2 x i64] }, { i64, [2 x i64] }, i1, %"compiler/source:Span", i64, i1, i1 }
%"compiler/scope:sumRead" = type { i64, ptr }
%"compiler/typed:Plan" = type { { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", { i64, ptr }, { i64, ptr }, { i64, ptr }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
define dso_local void @compiler_2fscope_2edropKeyed_3cBool_3e(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l3 = alloca %"std/prelude/map:MapKeyIter.bf5835bb10600fe6a7fc1da14a6360d9"
  %l4 = alloca %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0"
  %l5 = alloca ptr
  %l6 = alloca i64
  %l8 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l10 = alloca %"std/prelude/map:MapKeyIter.bf5835bb10600fe6a7fc1da14a6360d9"
  %l11 = alloca %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0"
  %l13 = alloca %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0"
  %l14 = alloca i32
  %l16 = alloca i1
  %l19 = alloca i1
  %l23 = alloca i64
  %l25 = alloca i64
  %l30 = alloca %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0"
  %l33 = alloca i1
  %s0 = alloca %olang.scope
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cU64_3e_2ector(ptr %s0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1, ptr %l8
  br label %bb1
bb1:
  %t2 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l8
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t2, ptr %l2
  %t3 = load ptr, ptr %l0, !tbaa !29
  %t5 = call %"std/prelude/map:MapKeyIter.bf5835bb10600fe6a7fc1da14a6360d9" @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_Hd80cb4cbc6ceb8a13686fbc19b8451b4(ptr %v0, ptr %v0, ptr %t3)
  store %"std/prelude/map:MapKeyIter.bf5835bb10600fe6a7fc1da14a6360d9" %t5, ptr %l10
  br label %bb2
bb2:
  %t6 = load %"std/prelude/map:MapKeyIter.bf5835bb10600fe6a7fc1da14a6360d9", ptr %l10
  store %"std/prelude/map:MapKeyIter.bf5835bb10600fe6a7fc1da14a6360d9" %t6, ptr %l3
  br label %bb3
bb3:
  %t8 = call { i32, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMapKeyIter_3cstd_2fpair_3aPair_3cI64_2c_20I6_H50b542c856ab641bdb3083563d5a1f0c(ptr %v0, ptr %l3)
  %t9 = extractvalue { i32, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" } %t8, 1
  %t10 = extractvalue { i32, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" } %t8, 0
  store i32 %t10, ptr %l14
  %t11 = icmp ne i32 %t10, 0
  br i1 %t11, label %bb5, label %ok.12, !prof !99
ok.12:
  store %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t9, ptr %l13
  br label %bb4
bb4:
  %t13 = load %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %l13
  store %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t13, ptr %l11
  br label %bb7
bb5:
  %t14 = load i32, ptr %l14, !tbaa !23
  %t15 = ashr i32 %t14, 16
  %t17 = icmp eq i32 %t15, 1
  store i1 %t17, ptr %l16, !tbaa !21
  br label %bb6
bb6:
  br label %bb14
bb7:
  %t18 = load %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %l11
  store %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t18, ptr %l4
  %t20 = getelementptr %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %l4, i32 0, i32 0
  %t21 = load i64, ptr %t20, !tbaa !24
  %t24 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2eHas_3cI64_2c_20Bool_3e(ptr %v1, ptr %a1, i64 %t21)
  store i1 %t24, ptr %l19
  br label %bb8
bb8:
  %t25 = load i1, ptr %l19, !tbaa !21
  br i1 %t25, label %bb9, label %bb10
bb9:
  %t26 = load %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %l4
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_3e_H2474e1fc3c93452d7765e4ed18f29a03(ptr %s0, ptr %l2, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t26)
  br label %bb11
bb10:
  br label %bb12
bb11:
  br label %bb12
bb12:
  br label %bb13
bb13:
  br label %bb3
bb14:
  store ptr %l2, ptr %l5, !tbaa !29
  store i64 0, ptr %l6, !tbaa !24
  br label %bb15
bb15:
  %t30 = load i64, ptr %l6, !tbaa !24
  store i64 %t30, ptr %l23, !tbaa !24
  %t31 = load ptr, ptr %l5, !tbaa !29
  %t33 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cU64_3e_2eLen_3cU64_3e(ptr %s0, ptr %t31)
  store i64 %t33, ptr %l25
  br label %bb16
bb16:
  %t34 = load i64, ptr %l23, !tbaa !24
  %t35 = load i64, ptr %l25, !tbaa !24
  %t36 = icmp slt i64 %t34, %t35
  %t38 = xor i1 %t36, true
  br i1 %t38, label %bb17, label %bb18
bb17:
  br label %bb23
bb18:
  br label %bb19
bb19:
  %t40 = load ptr, ptr %l5, !tbaa !29
  %t41 = load i64, ptr %l6, !tbaa !24
  %t44 = call %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_3e_H87a29777ccf22aa2985fa9d3c61f9cd3(ptr %s0, ptr %t40, i64 %t41)
  store %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t44, ptr %l30
  br label %bb20
bb20:
  %t45 = load %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %l30
  %t46 = load ptr, ptr %l0, !tbaa !29
  %t50 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H8cf0101d1da75ad9e65d10673bedc6a2(ptr %v0, ptr %t46, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t45)
  store i1 %t50, ptr %l33
  br label %bb21
bb21:
  br label %bb22
bb22:
  %t51 = load i64, ptr %l6, !tbaa !24
  %t53 = add i64 %t51, 1
  store i64 %t53, ptr %l6, !tbaa !24
  br label %bb15
bb23:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local i64 @std_2fpair_2estd_2fpair_3aPair_3cI64_2c_20I64_3e_2eHash_3cI64_2c_20I64_3e(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l3 = alloca i64
  %l4 = alloca i64
  %l7 = alloca i64
  %rv = alloca i64
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %t1, i32 0, i32 0
  %t4 = load i64, ptr %t3, !tbaa !24
  %t6 = call i64 @std_2fprelude_2fhash_2eI64_2eHash(i64 %t4)
  store i64 %t6, ptr %l3
  br label %bb1
bb1:
  %t7 = load i64, ptr %l3, !tbaa !24
  %t8 = mul i64 %t7, 1099511628211
  store i64 %t8, ptr %l4, !tbaa !24
  %t9 = load ptr, ptr %l0, !tbaa !29
  %t11 = getelementptr %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %t9, i32 0, i32 1
  %t12 = load i64, ptr %t11, !tbaa !24
  %t14 = call i64 @std_2fprelude_2fhash_2eI64_2eHash(i64 %t12)
  store i64 %t14, ptr %l7
  br label %bb2
bb2:
  %t15 = load i64, ptr %l4, !tbaa !24
  %t16 = load i64, ptr %l7, !tbaa !24
  %t17 = add i64 %t15, %t16
  store i64 %t17, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local i1 @std_2fprelude_2farray_2eArray_3ccompiler_2fscope_3afnRec_3e_2eSome_3ccompiler_2fscope_3afnRec_2c_20_3f_3e(ptr %v0, ptr %v1, { i64, ptr } %a0, ptr %a1c, ptr %a1e) #0 {
entry:
  %l2 = alloca { i64, ptr }
  %l3 = alloca i64
  %l4 = alloca i64
  %l13 = alloca { i64, ptr }
  %l16 = alloca i1
  %l19 = alloca i1
  %s2 = alloca %olang.scope
  %rv = alloca i1
  %pf1 = insertvalue { ptr, ptr } undef, ptr %a1c, 0
  %pg1 = insertvalue { ptr, ptr } %pf1, ptr %a1e, 1
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
  store %olang.scope zeroinitializer, ptr %s2
  %t7 = load i64, ptr %l3, !tbaa !24
  %t8 = load i64, ptr %l4, !tbaa !24
  %t11 = icmp slt i64 %t7, %t8
  %t13 = xor i1 %t11, true
  br i1 %t13, label %bb2, label %bb3
bb2:
  call void @__olang_scope_close(ptr %s2)
  br label %bb11
bb3:
  br label %bb4
bb4:
  %t15 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t15, ptr %l13, !tbaa !27
  %t16 = load i64, ptr %l3, !tbaa !24
  %t18 = getelementptr { i64, ptr }, ptr %l13, i32 0, i32 1
  %t19 = load ptr, ptr %t18, !tbaa !27
  %t20 = getelementptr %"compiler/scope:fnRec", ptr %t19, i64 %t16
  %t21 = load %"compiler/scope:fnRec", ptr %t20
  %t26 = extractvalue { ptr, ptr } %pg1, 0
  %t27 = extractvalue { ptr, ptr } %pg1, 1
  %t29 = call i1 %t26(ptr %t27, ptr %s2, %"compiler/scope:fnRec" %t21)
  store i1 %t29, ptr %l19
  br label %bb5
bb5:
  %t30 = load i1, ptr %l19, !tbaa !21
  store i1 %t30, ptr %l16, !tbaa !21
  br label %bb6
bb6:
  %t31 = load i1, ptr %l16, !tbaa !21
  br i1 %t31, label %bb7, label %bb8
bb7:
  call void @__olang_scope_close(ptr %s2)
  store i1 true, ptr %rv
  br label %ret
bb8:
  br label %bb9
bb9:
  call void @__olang_scope_close(ptr %s2)
  br label %bb10
bb10:
  %t33 = load i64, ptr %l3, !tbaa !24
  %t35 = add i64 %t33, 1
  store i64 %t35, ptr %l3, !tbaa !24
  br label %bb1
bb11:
  store i1 false, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local void @std_2fprelude_2farray_2esortByPositions_3ccompiler_2fscope_3aPlacement_2c_20_3f_3e(ptr %v0, ptr %v1, { i64, ptr } %a0, ptr %a1c, ptr %a1e) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l1 = alloca { ptr, ptr }
  %l2 = alloca i64
  %l3 = alloca { i64, ptr }
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca { i64, ptr }
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca i64
  %l12 = alloca i64
  %l13 = alloca i64
  %l14 = alloca i64
  %l26 = alloca i64
  %l45 = alloca i64
  %l46 = alloca i64
  %l57 = alloca i64
  %l60 = alloca i64
  %l78 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %s2 = alloca %olang.scope
  %t160 = alloca { { ptr, ptr }, { i64, ptr }, ptr, ptr }, align 8
  store { i64, ptr } %a0, ptr %l0
  %pf1 = insertvalue { ptr, ptr } undef, ptr %a1c, 0
  %pg1 = insertvalue { ptr, ptr } %pf1, ptr %a1e, 1
  store { ptr, ptr } %pg1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t3 = extractvalue { i64, ptr } %t1, 0
  store i64 %t3, ptr %l2, !tbaa !24
  %t5 = load i64, ptr %l2, !tbaa !24
  %t6 = load i64, ptr @G_2estd_2fprelude_2farray_2esortRun, !tbaa !24
  %t9 = icmp sle i64 %t5, %t6
  br i1 %t9, label %bb1, label %bb2
bb1:
  %t11 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t12 = load i64, ptr %l2, !tbaa !24
  %t13 = load { ptr, ptr }, ptr %l1
  %t17 = extractvalue { ptr, ptr } %t13, 0
  %t18 = extractvalue { ptr, ptr } %t13, 1
  call void @std_2fprelude_2farray_2esortInsertion_3ccompiler_2fscope_3aPlacement_2c_20_3f_3e(ptr %v0, ptr %v1, { i64, ptr } %t11, i64 0, i64 %t12, ptr %t17, ptr %t18)
  br label %bb3
bb2:
  br label %bb5
bb3:
  br label %bb4
bb4:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb5:
  %t19 = load i64, ptr %l2, !tbaa !24
  %t20 = load i64, ptr @G_2estd_2fprelude_2farray_2esortBlock, !tbaa !24
  %t23 = icmp sgt i64 %t19, %t20
  br i1 %t23, label %bb6, label %bb7
bb6:
  %t25 = load i64, ptr @G_2estd_2fprelude_2farray_2esortBlock, !tbaa !24
  store i64 %t25, ptr %l26, !tbaa !24
  br label %bb8
bb7:
  %t27 = load i64, ptr %l2, !tbaa !24
  store i64 %t27, ptr %l26, !tbaa !24
  br label %bb8
bb8:
  %t29 = load i64, ptr %l26, !tbaa !24
  %t30 = icmp sge i64 %t29, 0
  br i1 %t30, label %bb9, label %bb10
bb9:
  %t32 = load i64, ptr %l26, !tbaa !24
  %t33 = icmp sle i64 %t32, 1152921504606846975
  br i1 %t33, label %bb11, label %bb12
bb10:
  call void @__olang_check_failed(ptr @olang_loc_d722d9d356e51315_f6b57ef284a7b0b9)
  unreachable
bb11:
  %t35 = load i64, ptr %l26, !tbaa !24
  %t36 = mul i64 %t35, 8
  %t37 = call ptr @__olang_scope_alloc_zeroed(ptr %s0, i64 %t36)
  %t38 = insertvalue { i64, ptr } undef, i64 %t35, 0
  %t39 = insertvalue { i64, ptr } %t38, ptr %t37, 1
  store { i64, ptr } %t39, ptr %l3, !tbaa !27
  store i64 0, ptr %l4, !tbaa !24
  br label %bb13
bb12:
  call void @__olang_check_failed(ptr @olang_loc_d722d9d356e51315_f6b57ef284a7b0b9)
  unreachable
bb13:
  store %olang.scope zeroinitializer, ptr %s2
  %t41 = load i64, ptr %l4, !tbaa !24
  %t42 = load i64, ptr %l2, !tbaa !24
  %t45 = icmp slt i64 %t41, %t42
  %t47 = xor i1 %t45, true
  br i1 %t47, label %bb14, label %bb15
bb14:
  call void @__olang_scope_close(ptr %s2)
  br label %bb42
bb15:
  br label %bb16
bb16:
  %t49 = load i64, ptr %l4, !tbaa !24
  %t50 = load i64, ptr @G_2estd_2fprelude_2farray_2esortBlock, !tbaa !24
  %t53 = add i64 %t49, %t50
  store i64 %t53, ptr %l5, !tbaa !24
  %t55 = load i64, ptr %l5, !tbaa !24
  %t56 = load i64, ptr %l2, !tbaa !24
  %t59 = icmp sgt i64 %t55, %t56
  br i1 %t59, label %bb17, label %bb18
bb17:
  %t61 = load i64, ptr %l2, !tbaa !24
  store i64 %t61, ptr %l5, !tbaa !24
  br label %bb19
bb18:
  br label %bb19
bb19:
  %t63 = load i64, ptr %l5, !tbaa !24
  %t64 = load i64, ptr %l4, !tbaa !24
  %t67 = sub i64 %t63, %t64
  store i64 %t67, ptr %l45, !tbaa !24
  %t68 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t69 = extractvalue { i64, ptr } %t68, 0
  store i64 %t69, ptr %l46, !tbaa !24
  %t70 = icmp sge i64 0, 0
  br i1 %t70, label %bb20, label %bb21
bb20:
  %t72 = load i64, ptr %l45, !tbaa !24
  %t73 = icmp sle i64 0, %t72
  br i1 %t73, label %bb22, label %bb23
bb21:
  call void @__olang_check_failed(ptr @olang_loc_f1b0736c8bbc73d8_d1c24a04e6320604)
  unreachable
bb22:
  %t75 = load i64, ptr %l45, !tbaa !24
  %t76 = load i64, ptr %l46, !tbaa !24
  %t77 = icmp sle i64 %t75, %t76
  br i1 %t77, label %bb24, label %bb25
bb23:
  call void @__olang_check_failed(ptr @olang_loc_f1b0736c8bbc73d8_d1c24a04e6320604)
  unreachable
bb24:
  %t79 = getelementptr { i64, ptr }, ptr %l3, i32 0, i32 1
  %t80 = load ptr, ptr %t79, !tbaa !27
  %t81 = load i64, ptr %l45, !tbaa !24
  %t82 = getelementptr i64, ptr %t80, i64 0
  %t83 = sub i64 %t81, 0
  %t84 = insertvalue { i64, ptr } undef, i64 %t83, 0
  %t85 = insertvalue { i64, ptr } %t84, ptr %t82, 1
  store { i64, ptr } %t85, ptr %l6, !tbaa !27
  store i64 0, ptr %l7, !tbaa !24
  %t87 = load i64, ptr %l5, !tbaa !24
  %t88 = load i64, ptr %l4, !tbaa !24
  %t91 = sub i64 %t87, %t88
  store i64 %t91, ptr %l8, !tbaa !24
  store i64 1, ptr %l9, !tbaa !24
  %t93 = load i64, ptr %l8, !tbaa !24
  %t94 = load i64, ptr %l7, !tbaa !24
  %t97 = icmp sgt i64 %t93, %t94
  br i1 %t97, label %bb26, label %bb27
bb25:
  call void @__olang_check_failed(ptr @olang_loc_f1b0736c8bbc73d8_d1c24a04e6320604)
  unreachable
bb26:
  %t99 = load i64, ptr %l9, !tbaa !24
  %t101 = icmp sgt i64 %t99, 0
  br i1 %t101, label %bb28, label %bb29
bb27:
  store i64 0, ptr %l57, !tbaa !24
  br label %bb31
bb28:
  %t103 = load i64, ptr %l8, !tbaa !24
  %t104 = load i64, ptr %l7, !tbaa !24
  %t107 = sub i64 %t103, %t104
  %t108 = load i64, ptr %l9, !tbaa !24
  %t111 = add i64 %t107, %t108
  %t113 = sub i64 %t111, 1
  %t114 = load i64, ptr %l9, !tbaa !24
  %t117 = sdiv i64 %t113, %t114
  store i64 %t117, ptr %l60, !tbaa !24
  br label %bb30
bb29:
  store i64 0, ptr %l60, !tbaa !24
  br label %bb30
bb30:
  %t119 = load i64, ptr %l60, !tbaa !24
  store i64 %t119, ptr %l57, !tbaa !24
  br label %bb31
bb31:
  %t120 = load i64, ptr %l57, !tbaa !24
  store i64 %t120, ptr %l10, !tbaa !24
  store i64 0, ptr %l11, !tbaa !24
  br label %bb32
bb32:
  %t121 = load i64, ptr %l11, !tbaa !24
  %t122 = load i64, ptr %l10, !tbaa !24
  %t125 = icmp slt i64 %t121, %t122
  %t127 = xor i1 %t125, true
  br i1 %t127, label %bb33, label %bb34
bb33:
  br label %bb37
bb34:
  br label %bb35
bb35:
  %t129 = load i64, ptr %l7, !tbaa !24
  %t130 = load i64, ptr %l11, !tbaa !24
  %t131 = load i64, ptr %l9, !tbaa !24
  %t134 = mul i64 %t130, %t131
  %t137 = add i64 %t129, %t134
  store i64 %t137, ptr %l12, !tbaa !24
  %t139 = load { i64, ptr }, ptr %l6, !tbaa !27
  store { i64, ptr } %t139, ptr %l78, !tbaa !27
  %t140 = load i64, ptr %l12, !tbaa !24
  %t141 = load i64, ptr %l4, !tbaa !24
  %t142 = load i64, ptr %l12, !tbaa !24
  %t145 = add i64 %t141, %t142
  %t148 = getelementptr { i64, ptr }, ptr %l78, i32 0, i32 1
  %t149 = load ptr, ptr %t148, !tbaa !27
  %t150 = getelementptr i64, ptr %t149, i64 %t140
  store i64 %t145, ptr %t150, !tbaa !34
  br label %bb36
bb36:
  %t151 = load i64, ptr %l11, !tbaa !24
  %t153 = add i64 %t151, 1
  store i64 %t153, ptr %l11, !tbaa !24
  br label %bb32
bb37:
  %t155 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t156 = load { ptr, ptr }, ptr %l1
  %t157 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t158 = getelementptr { { ptr, ptr }, { i64, ptr }, ptr, ptr }, ptr null, i32 1
  %t159 = ptrtoint ptr %t158 to i64
  %t161 = getelementptr { { ptr, ptr }, { i64, ptr }, ptr, ptr }, ptr %t160, i32 0, i32 0
  store { ptr, ptr } %t156, ptr %t161, !tbaa !28
  %t163 = getelementptr { { ptr, ptr }, { i64, ptr }, ptr, ptr }, ptr %t160, i32 0, i32 1
  store { i64, ptr } %t157, ptr %t163, !tbaa !28
  call void @__olang_scope_escape(ptr %v1)
  %t165 = getelementptr { { ptr, ptr }, { i64, ptr }, ptr, ptr }, ptr %t160, i32 0, i32 2
  store ptr %v1, ptr %t165, !tbaa !28
  call void @__olang_scope_escape(ptr %v0)
  %t166 = getelementptr { { ptr, ptr }, { i64, ptr }, ptr, ptr }, ptr %t160, i32 0, i32 3
  store ptr %v0, ptr %t166, !tbaa !28
  %t167 = insertvalue { ptr, ptr } undef, ptr @olang_lambda_0, 0
  %t168 = insertvalue { ptr, ptr } %t167, ptr %t160, 1
  %t171 = extractvalue { ptr, ptr } %t168, 0
  %t172 = extractvalue { ptr, ptr } %t168, 1
  call void @std_2fprelude_2farray_2esortMergeBuffered_3cI64_2c_20_3f_3e(ptr %s0, ptr %s2, { i64, ptr } %t155, ptr %t171, ptr %t172)
  br label %bb38
bb38:
  br label %bb39
bb39:
  %t173 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t174 = load i64, ptr %l4, !tbaa !24
  %t175 = load { i64, ptr }, ptr %l6, !tbaa !27
  call void @std_2fprelude_2farray_2esortPermute_3ccompiler_2fscope_3aPlacement_3e(ptr %v0, ptr %s0, { i64, ptr } %t173, i64 %t174, { i64, ptr } %t175)
  br label %bb40
bb40:
  %t179 = load i64, ptr %l5, !tbaa !24
  store i64 %t179, ptr %l4, !tbaa !24
  call void @__olang_scope_close(ptr %s2)
  br label %bb41
bb41:
  br label %bb13
bb42:
  %t181 = load i64, ptr @G_2estd_2fprelude_2farray_2esortBlock, !tbaa !24
  store i64 %t181, ptr %l13, !tbaa !24
  br label %bb43
bb43:
  %t183 = load i64, ptr %l13, !tbaa !24
  %t184 = load i64, ptr %l2, !tbaa !24
  %t187 = icmp slt i64 %t183, %t184
  %t189 = xor i1 %t187, true
  br i1 %t189, label %bb44, label %bb45
bb44:
  br label %bb59
bb45:
  br label %bb46
bb46:
  store i64 0, ptr %l4, !tbaa !24
  br label %bb47
bb47:
  %t191 = load i64, ptr %l4, !tbaa !24
  %t192 = load i64, ptr %l13, !tbaa !24
  %t195 = add i64 %t191, %t192
  %t196 = load i64, ptr %l2, !tbaa !24
  %t199 = icmp slt i64 %t195, %t196
  %t201 = xor i1 %t199, true
  br i1 %t201, label %bb48, label %bb49
bb48:
  br label %bb57
bb49:
  br label %bb50
bb50:
  %t203 = load i64, ptr %l4, !tbaa !24
  %t204 = load i64, ptr %l13, !tbaa !24
  %t206 = mul i64 2, %t204
  %t209 = add i64 %t203, %t206
  store i64 %t209, ptr %l14, !tbaa !24
  %t211 = load i64, ptr %l14, !tbaa !24
  %t212 = load i64, ptr %l2, !tbaa !24
  %t215 = icmp sgt i64 %t211, %t212
  br i1 %t215, label %bb51, label %bb52
bb51:
  %t217 = load i64, ptr %l2, !tbaa !24
  store i64 %t217, ptr %l14, !tbaa !24
  br label %bb53
bb52:
  br label %bb53
bb53:
  %t219 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t220 = load i64, ptr %l4, !tbaa !24
  %t221 = load i64, ptr %l4, !tbaa !24
  %t222 = load i64, ptr %l13, !tbaa !24
  %t225 = add i64 %t221, %t222
  %t226 = load i64, ptr %l14, !tbaa !24
  %t227 = load { ptr, ptr }, ptr %l1
  %t233 = extractvalue { ptr, ptr } %t227, 0
  %t234 = extractvalue { ptr, ptr } %t227, 1
  call void @std_2fprelude_2farray_2esortMerge_3ccompiler_2fscope_3aPlacement_2c_20_3f_3e(ptr %v0, ptr %v1, { i64, ptr } %t219, i64 %t220, i64 %t225, i64 %t226, ptr %t233, ptr %t234)
  br label %bb54
bb54:
  br label %bb55
bb55:
  %t235 = load i64, ptr %l14, !tbaa !24
  store i64 %t235, ptr %l4, !tbaa !24
  br label %bb56
bb56:
  br label %bb47
bb57:
  %t237 = load i64, ptr %l13, !tbaa !24
  %t239 = mul i64 %t237, 2
  store i64 %t239, ptr %l13, !tbaa !24
  br label %bb58
bb58:
  br label %bb43
bb59:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local void @std_2fprelude_2farray_2esortPermute_3ccompiler_2fscope_3aPlacement_3e(ptr %v0, ptr %v1, { i64, ptr } %a0, i64 %a1, { i64, ptr } %a2) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l1 = alloca i64
  %l2 = alloca { i64, ptr }
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca %"compiler/scope:Placement"
  %l10 = alloca i64
  %l11 = alloca i64
  %l17 = alloca i64
  %l20 = alloca i64
  %l38 = alloca { i64, ptr }
  %l45 = alloca { i64, ptr }
  %l51 = alloca { i64, ptr }
  %l54 = alloca { i64, ptr }
  %l64 = alloca { i64, ptr }
  %l67 = alloca i64
  %l68 = alloca %"compiler/scope:Placement"
  %l70 = alloca %"compiler/scope:Placement"
  %l71 = alloca { i64, ptr }
  %l75 = alloca { i64, ptr }
  store { i64, ptr } %a0, ptr %l0
  store i64 %a1, ptr %l1
  store { i64, ptr } %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  store i64 0, ptr %l3, !tbaa !24
  %t1 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t3 = extractvalue { i64, ptr } %t1, 0
  store i64 %t3, ptr %l4, !tbaa !24
  store i64 1, ptr %l5, !tbaa !24
  %t5 = load i64, ptr %l4, !tbaa !24
  %t6 = load i64, ptr %l3, !tbaa !24
  %t9 = icmp sgt i64 %t5, %t6
  br i1 %t9, label %bb1, label %bb2
bb1:
  %t11 = load i64, ptr %l5, !tbaa !24
  %t13 = icmp sgt i64 %t11, 0
  br i1 %t13, label %bb3, label %bb4
bb2:
  store i64 0, ptr %l17, !tbaa !24
  br label %bb6
bb3:
  %t15 = load i64, ptr %l4, !tbaa !24
  %t16 = load i64, ptr %l3, !tbaa !24
  %t19 = sub i64 %t15, %t16
  %t20 = load i64, ptr %l5, !tbaa !24
  %t23 = add i64 %t19, %t20
  %t25 = sub i64 %t23, 1
  %t26 = load i64, ptr %l5, !tbaa !24
  %t29 = sdiv i64 %t25, %t26
  store i64 %t29, ptr %l20, !tbaa !24
  br label %bb5
bb4:
  store i64 0, ptr %l20, !tbaa !24
  br label %bb5
bb5:
  %t31 = load i64, ptr %l20, !tbaa !24
  store i64 %t31, ptr %l17, !tbaa !24
  br label %bb6
bb6:
  %t32 = load i64, ptr %l17, !tbaa !24
  store i64 %t32, ptr %l6, !tbaa !24
  store i64 0, ptr %l7, !tbaa !24
  br label %bb7
bb7:
  %t33 = load i64, ptr %l7, !tbaa !24
  %t34 = load i64, ptr %l6, !tbaa !24
  %t37 = icmp slt i64 %t33, %t34
  %t39 = xor i1 %t37, true
  br i1 %t39, label %bb8, label %bb9
bb8:
  br label %bb22
bb9:
  br label %bb10
bb10:
  %t41 = load i64, ptr %l3, !tbaa !24
  %t42 = load i64, ptr %l7, !tbaa !24
  %t43 = load i64, ptr %l5, !tbaa !24
  %t46 = mul i64 %t42, %t43
  %t49 = add i64 %t41, %t46
  store i64 %t49, ptr %l8, !tbaa !24
  %t51 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t51, ptr %l38, !tbaa !27
  %t52 = load i64, ptr %l8, !tbaa !24
  %t54 = getelementptr { i64, ptr }, ptr %l38, i32 0, i32 1
  %t55 = load ptr, ptr %t54, !tbaa !27
  %t56 = getelementptr i64, ptr %t55, i64 %t52
  %t57 = load i64, ptr %t56, !tbaa !34
  %t58 = load i64, ptr %l1, !tbaa !24
  %t59 = load i64, ptr %l8, !tbaa !24
  %t62 = add i64 %t58, %t59
  %t65 = icmp eq i64 %t57, %t62
  br i1 %t65, label %bb11, label %bb12
bb11:
  br label %bb21
bb12:
  br label %bb13
bb13:
  %t67 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t67, ptr %l45, !tbaa !27
  %t68 = load i64, ptr %l1, !tbaa !24
  %t69 = load i64, ptr %l8, !tbaa !24
  %t72 = add i64 %t68, %t69
  %t74 = getelementptr { i64, ptr }, ptr %l45, i32 0, i32 1
  %t75 = load ptr, ptr %t74, !tbaa !27
  %t76 = getelementptr %"compiler/scope:Placement", ptr %t75, i64 %t72
  %t77 = load %"compiler/scope:Placement", ptr %t76
  store %"compiler/scope:Placement" zeroinitializer, ptr %t76
  store %"compiler/scope:Placement" %t77, ptr %l9
  %t79 = load i64, ptr %l8, !tbaa !24
  store i64 %t79, ptr %l10, !tbaa !24
  br label %bb14
bb14:
  %t81 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t81, ptr %l51, !tbaa !27
  %t82 = load i64, ptr %l10, !tbaa !24
  %t84 = getelementptr { i64, ptr }, ptr %l51, i32 0, i32 1
  %t85 = load ptr, ptr %t84, !tbaa !27
  %t86 = getelementptr i64, ptr %t85, i64 %t82
  %t87 = load i64, ptr %t86, !tbaa !34
  store i64 %t87, ptr %l11, !tbaa !24
  %t89 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t89, ptr %l54, !tbaa !27
  %t90 = load i64, ptr %l10, !tbaa !24
  %t91 = load i64, ptr %l1, !tbaa !24
  %t92 = load i64, ptr %l10, !tbaa !24
  %t95 = add i64 %t91, %t92
  %t98 = getelementptr { i64, ptr }, ptr %l54, i32 0, i32 1
  %t99 = load ptr, ptr %t98, !tbaa !27
  %t100 = getelementptr i64, ptr %t99, i64 %t90
  store i64 %t95, ptr %t100, !tbaa !34
  %t101 = load i64, ptr %l11, !tbaa !24
  %t102 = load i64, ptr %l1, !tbaa !24
  %t103 = load i64, ptr %l8, !tbaa !24
  %t106 = add i64 %t102, %t103
  %t109 = icmp eq i64 %t101, %t106
  br i1 %t109, label %bb15, label %bb16
bb15:
  %t111 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t111, ptr %l64, !tbaa !27
  %t112 = load i64, ptr %l1, !tbaa !24
  %t113 = load i64, ptr %l10, !tbaa !24
  %t116 = add i64 %t112, %t113
  store i64 %t116, ptr %l67, !tbaa !24
  %t117 = load %"compiler/scope:Placement", ptr %l9
  store %"compiler/scope:Placement" %t117, ptr %l68
  %t119 = call %"compiler/scope:Placement" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2fscope_3aPlacement(ptr %v0, ptr %l68)
  store %"compiler/scope:Placement" %t119, ptr %l70
  br label %bb17
bb16:
  br label %bb18
bb17:
  %t120 = load %"compiler/scope:Placement", ptr %l70
  %t121 = load i64, ptr %l67, !tbaa !24
  %t122 = getelementptr { i64, ptr }, ptr %l64, i32 0, i32 1
  %t123 = load ptr, ptr %t122, !tbaa !27
  %t124 = getelementptr %"compiler/scope:Placement", ptr %t123, i64 %t121
  store %"compiler/scope:Placement" %t120, ptr %t124
  br label %bb20
bb18:
  %t125 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t125, ptr %l71, !tbaa !27
  %t126 = load i64, ptr %l1, !tbaa !24
  %t127 = load i64, ptr %l10, !tbaa !24
  %t130 = add i64 %t126, %t127
  %t131 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t131, ptr %l75, !tbaa !27
  %t132 = load i64, ptr %l11, !tbaa !24
  %t134 = getelementptr { i64, ptr }, ptr %l75, i32 0, i32 1
  %t135 = load ptr, ptr %t134, !tbaa !27
  %t136 = getelementptr %"compiler/scope:Placement", ptr %t135, i64 %t132
  %t137 = load %"compiler/scope:Placement", ptr %t136
  store %"compiler/scope:Placement" zeroinitializer, ptr %t136
  %t140 = getelementptr { i64, ptr }, ptr %l71, i32 0, i32 1
  %t141 = load ptr, ptr %t140, !tbaa !27
  %t142 = getelementptr %"compiler/scope:Placement", ptr %t141, i64 %t130
  store %"compiler/scope:Placement" %t137, ptr %t142
  %t143 = load i64, ptr %l11, !tbaa !24
  %t144 = load i64, ptr %l1, !tbaa !24
  %t147 = sub i64 %t143, %t144
  store i64 %t147, ptr %l10, !tbaa !24
  br label %bb19
bb19:
  br label %bb14
bb20:
  br label %bb21
bb21:
  %t149 = load i64, ptr %l7, !tbaa !24
  %t151 = add i64 %t149, 1
  store i64 %t151, ptr %l7, !tbaa !24
  br label %bb7
bb22:
  br label %ret
ret:
  ret void
}

define dso_local { i32, i64 } @std_2fprelude_2farray_2estd_2fprelude_2farray_3aArrayIter_3cI64_3e_2eNext_3cI64_3e(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l8 = alloca ptr
  %l12 = alloca { i64, ptr }
  %rv = alloca { i32, i64 }
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"std/prelude/array:ArrayIter.ef37386b9f0625afbaa73bd3cf091381", ptr %t1, i32 0, i32 1
  %t4 = load i64, ptr %t3, !tbaa !24
  %t5 = load ptr, ptr %l0, !tbaa !29
  %t7 = getelementptr %"std/prelude/array:ArrayIter.ef37386b9f0625afbaa73bd3cf091381", ptr %t5, i32 0, i32 0
  %t8 = load { i64, ptr }, ptr %t7, !tbaa !27
  %t10 = extractvalue { i64, ptr } %t8, 0
  %t13 = icmp sge i64 %t4, %t10
  br i1 %t13, label %bb1, label %bb2
bb1:
  %t16 = insertvalue { i32, i64 } zeroinitializer, i32 65536, 0
  store { i32, i64 } %t16, ptr %rv
  br label %ret
bb2:
  br label %bb3
bb3:
  %t17 = load ptr, ptr %l0, !tbaa !29
  store ptr %t17, ptr %l8, !tbaa !29
  %t18 = load ptr, ptr %l8, !tbaa !29
  %t19 = getelementptr %"std/prelude/array:ArrayIter.ef37386b9f0625afbaa73bd3cf091381", ptr %t18, i32 0, i32 1
  %t20 = load i64, ptr %t19, !tbaa !24
  %t22 = add i64 %t20, 1
  %t24 = load ptr, ptr %l8, !tbaa !29
  %t25 = getelementptr %"std/prelude/array:ArrayIter.ef37386b9f0625afbaa73bd3cf091381", ptr %t24, i32 0, i32 1
  store i64 %t22, ptr %t25, !tbaa !24
  %t26 = load ptr, ptr %l0, !tbaa !29
  %t28 = getelementptr %"std/prelude/array:ArrayIter.ef37386b9f0625afbaa73bd3cf091381", ptr %t26, i32 0, i32 0
  %t29 = load { i64, ptr }, ptr %t28, !tbaa !27
  store { i64, ptr } %t29, ptr %l12, !tbaa !27
  %t30 = load ptr, ptr %l0, !tbaa !29
  %t32 = getelementptr %"std/prelude/array:ArrayIter.ef37386b9f0625afbaa73bd3cf091381", ptr %t30, i32 0, i32 1
  %t33 = load i64, ptr %t32, !tbaa !24
  %t35 = sub i64 %t33, 1
  %t37 = getelementptr { i64, ptr }, ptr %l12, i32 0, i32 1
  %t38 = load ptr, ptr %t37, !tbaa !27
  %t39 = getelementptr i64, ptr %t38, i64 %t35
  %t40 = load i64, ptr %t39, !tbaa !34
  %t42 = insertvalue { i32, i64 } zeroinitializer, i64 %t40, 1
  store { i32, i64 } %t42, ptr %rv
  br label %ret
ret:
  %rr = load { i32, i64 }, ptr %rv
  ret { i32, i64 } %rr
}

define dso_local { i32, %"std/prelude/map:MapEntry.f17f3f0202174eb6591f595766c15613" } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMapIter_3cI64_2c_20std_2fprelude_2fvec_3aVec_H30676698a8d79fc0f4ec56822d9f5001(ptr %v0, ptr %v1, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l11 = alloca ptr
  %l17 = alloca i1
  %l21 = alloca i64
  %l25 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l27 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l28 = alloca %"std/prelude/map:MapEntry.f17f3f0202174eb6591f595766c15613"
  %l30 = alloca %"std/prelude/map:MapEntry.f17f3f0202174eb6591f595766c15613"
  %rv = alloca { i32, %"std/prelude/map:MapEntry.f17f3f0202174eb6591f595766c15613" }
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
  %t51 = getelementptr %"std/prelude/map:MapEntry.f17f3f0202174eb6591f595766c15613", ptr %t50, i64 %t45
  %t52 = getelementptr %"std/prelude/map:MapEntry.f17f3f0202174eb6591f595766c15613", ptr %t51, i32 0, i32 0
  %t53 = load i64, ptr %t52, !tbaa !24
  store i64 %t53, ptr %l21, !tbaa !24
  %t54 = load ptr, ptr %l0, !tbaa !29
  %t56 = getelementptr %"std/prelude/map:MapIter.bf5835bb10600fe6a7fc1da14a6360d9", ptr %t54, i32 0, i32 0
  %t57 = load ptr, ptr %t56, !tbaa !29
  %t58 = load i64, ptr %l1, !tbaa !24
  %t60 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t57, i32 0, i32 0
  %t62 = getelementptr { i64, ptr }, ptr %t60, i32 0, i32 1
  %t63 = load ptr, ptr %t62, !tbaa !27
  %t64 = getelementptr %"std/prelude/map:MapEntry.f17f3f0202174eb6591f595766c15613", ptr %t63, i64 %t58
  %t65 = getelementptr %"std/prelude/map:MapEntry.f17f3f0202174eb6591f595766c15613", ptr %t64, i32 0, i32 1
  %t66 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t65
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t66, ptr %l25
  %t68 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feffects_3agiven_3e(ptr %v1, ptr %l25)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t68, ptr %l27
  br label %bb8
bb7:
  br label %bb11
bb8:
  %t69 = load i64, ptr %l21, !tbaa !24
  %t70 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l27
  %t71 = call %"std/prelude/map:MapEntry.f17f3f0202174eb6591f595766c15613" @std_2fprelude_2fmap_3aMapEntry_3cI64_2c_20std_2fprelude_2fvec_3aVec_3cI64_3e_3e_2ector(ptr %v1, ptr %v1, i64 %t69, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t70)
  store %"std/prelude/map:MapEntry.f17f3f0202174eb6591f595766c15613" %t71, ptr %l28
  br label %bb9
bb9:
  %t73 = call %"std/prelude/map:MapEntry.f17f3f0202174eb6591f595766c15613" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMapEntry_3cI64_2c_20std_2fprelud_Hbe8b18fc9dfd8a0dd431c26ba01d8572(ptr %v1, ptr %l28)
  store %"std/prelude/map:MapEntry.f17f3f0202174eb6591f595766c15613" %t73, ptr %l30
  br label %bb10
bb10:
  %t74 = load %"std/prelude/map:MapEntry.f17f3f0202174eb6591f595766c15613", ptr %l30
  %t75 = insertvalue { i32, %"std/prelude/map:MapEntry.f17f3f0202174eb6591f595766c15613" } zeroinitializer, %"std/prelude/map:MapEntry.f17f3f0202174eb6591f595766c15613" %t74, 1
  store { i32, %"std/prelude/map:MapEntry.f17f3f0202174eb6591f595766c15613" } %t75, ptr %rv
  br label %ret
bb11:
  br label %bb12
bb12:
  br label %bb1
bb13:
  %t77 = insertvalue { i32, %"std/prelude/map:MapEntry.f17f3f0202174eb6591f595766c15613" } zeroinitializer, i32 65536, 0
  store { i32, %"std/prelude/map:MapEntry.f17f3f0202174eb6591f595766c15613" } %t77, ptr %rv
  br label %ret
ret:
  %rr = load { i32, %"std/prelude/map:MapEntry.f17f3f0202174eb6591f595766c15613" }, ptr %rv
  ret { i32, %"std/prelude/map:MapEntry.f17f3f0202174eb6591f595766c15613" } %rr
}

define dso_local { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMapKeyIter_3cI64_2c_20Bool_3e_2eNext_3cI64_2c_20Bool_3e(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l11 = alloca ptr
  %l17 = alloca i1
  %rv = alloca { i32, i64 }
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  br label %bb1
bb1:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"std/prelude/map:MapKeyIter.bf5835bb10600fe6a7fc1da14a6360d9", ptr %t1, i32 0, i32 1
  %t4 = load i64, ptr %t3, !tbaa !24
  %t5 = load ptr, ptr %l0, !tbaa !29
  %t7 = getelementptr %"std/prelude/map:MapKeyIter.bf5835bb10600fe6a7fc1da14a6360d9", ptr %t5, i32 0, i32 0
  %t8 = load ptr, ptr %t7, !tbaa !29
  %t10 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t8, i32 0, i32 3
  %t11 = load i64, ptr %t10, !tbaa !24
  %t14 = icmp slt i64 %t4, %t11
  %t16 = xor i1 %t14, true
  br i1 %t16, label %bb2, label %bb3
bb2:
  br label %bb10
bb3:
  br label %bb4
bb4:
  %t18 = load ptr, ptr %l0, !tbaa !29
  %t20 = getelementptr %"std/prelude/map:MapKeyIter.bf5835bb10600fe6a7fc1da14a6360d9", ptr %t18, i32 0, i32 1
  %t21 = load i64, ptr %t20, !tbaa !24
  store i64 %t21, ptr %l1, !tbaa !24
  %t23 = load ptr, ptr %l0, !tbaa !29
  store ptr %t23, ptr %l11, !tbaa !29
  %t24 = load ptr, ptr %l11, !tbaa !29
  %t25 = getelementptr %"std/prelude/map:MapKeyIter.bf5835bb10600fe6a7fc1da14a6360d9", ptr %t24, i32 0, i32 1
  %t26 = load i64, ptr %t25, !tbaa !24
  %t28 = add i64 %t26, 1
  %t30 = load ptr, ptr %l11, !tbaa !29
  %t31 = getelementptr %"std/prelude/map:MapKeyIter.bf5835bb10600fe6a7fc1da14a6360d9", ptr %t30, i32 0, i32 1
  store i64 %t28, ptr %t31, !tbaa !24
  %t32 = load ptr, ptr %l0, !tbaa !29
  %t34 = getelementptr %"std/prelude/map:MapKeyIter.bf5835bb10600fe6a7fc1da14a6360d9", ptr %t32, i32 0, i32 0
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
  %t43 = getelementptr %"std/prelude/map:MapKeyIter.bf5835bb10600fe6a7fc1da14a6360d9", ptr %t41, i32 0, i32 0
  %t44 = load ptr, ptr %t43, !tbaa !29
  %t45 = load i64, ptr %l1, !tbaa !24
  %t47 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t44, i32 0, i32 0
  %t49 = getelementptr { i64, ptr }, ptr %t47, i32 0, i32 1
  %t50 = load ptr, ptr %t49, !tbaa !27
  %t51 = getelementptr %"std/prelude/map:MapEntry.eb00e4a6e4307a4e46e40fbcd79d6b4f", ptr %t50, i64 %t45
  %t52 = getelementptr %"std/prelude/map:MapEntry.eb00e4a6e4307a4e46e40fbcd79d6b4f", ptr %t51, i32 0, i32 0
  %t53 = load i64, ptr %t52, !tbaa !24
  %t55 = insertvalue { i32, i64 } zeroinitializer, i64 %t53, 1
  store { i32, i64 } %t55, ptr %rv
  br label %ret
bb7:
  br label %bb8
bb8:
  br label %bb9
bb9:
  br label %bb1
bb10:
  %t57 = insertvalue { i32, i64 } zeroinitializer, i32 65536, 0
  store { i32, i64 } %t57, ptr %rv
  br label %ret
ret:
  %rr = load { i32, i64 }, ptr %rv
  ret { i32, i64 } %rr
}

define dso_local void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Array_3ccompiler_2ftyped_3aBl_H6d0037fa94350b00beccb9ab942eac64(ptr %v0, ptr %a0, i64 %a1, i64 %a2, { i64, ptr } %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l4 = alloca i64
  %l9 = alloca ptr
  %l13 = alloca i64
  %l23 = alloca ptr
  %l26 = alloca ptr
  %l27 = alloca i64
  %l30 = alloca %"std/prelude/map:MapEntry.8d509622153b47f1a5f79c42c8367406"
  %l32 = alloca %"std/prelude/map:MapEntry.8d509622153b47f1a5f79c42c8367406"
  %l41 = alloca ptr
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t1, i32 0, i32 5
  %t4 = load i64, ptr %t3, !tbaa !24
  store i64 %t4, ptr %l4, !tbaa !24
  %t6 = load i64, ptr %l4, !tbaa !24
  %t8 = icmp sge i64 %t6, 0
  br i1 %t8, label %bb1, label %bb2
bb1:
  %t10 = load ptr, ptr %l0, !tbaa !29
  store ptr %t10, ptr %l9, !tbaa !29
  %t11 = load ptr, ptr %l0, !tbaa !29
  %t12 = load i64, ptr %l4, !tbaa !24
  %t14 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t11, i32 0, i32 1
  %t16 = getelementptr { i64, ptr }, ptr %t14, i32 0, i32 1
  %t17 = load ptr, ptr %t16, !tbaa !27
  %t18 = getelementptr i64, ptr %t17, i64 %t12
  %t19 = load i64, ptr %t18, !tbaa !34
  %t21 = call i64 @std_2fprelude_2fmap_2efreeLink(i64 %t19)
  store i64 %t21, ptr %l13
  br label %bb3
bb2:
  %t22 = load ptr, ptr %l0, !tbaa !29
  %t24 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t22, i32 0, i32 3
  %t25 = load i64, ptr %t24, !tbaa !24
  %t26 = load ptr, ptr %l0, !tbaa !29
  %t28 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t26, i32 0, i32 0
  %t29 = load { i64, ptr }, ptr %t28, !tbaa !27
  %t31 = extractvalue { i64, ptr } %t29, 0
  %t34 = icmp eq i64 %t25, %t31
  br i1 %t34, label %bb4, label %bb5
bb3:
  %t36 = load i64, ptr %l13, !tbaa !24
  %t37 = load ptr, ptr %l9, !tbaa !29
  %t38 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t37, i32 0, i32 5
  store i64 %t36, ptr %t38, !tbaa !24
  br label %bb8
bb4:
  %t39 = load ptr, ptr %l0, !tbaa !29
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Array_3ccompiler_2ftyped_3aBl_H7ccb72b7985b2d862bf28711ea395672(ptr %v0, ptr %t39)
  br label %bb6
bb5:
  br label %bb7
bb6:
  br label %bb7
bb7:
  %t41 = load ptr, ptr %l0, !tbaa !29
  %t43 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t41, i32 0, i32 3
  %t44 = load i64, ptr %t43, !tbaa !24
  store i64 %t44, ptr %l4, !tbaa !24
  %t46 = load ptr, ptr %l0, !tbaa !29
  store ptr %t46, ptr %l23, !tbaa !29
  %t47 = load ptr, ptr %l23, !tbaa !29
  %t48 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t47, i32 0, i32 3
  %t49 = load i64, ptr %t48, !tbaa !24
  %t51 = add i64 %t49, 1
  %t53 = load ptr, ptr %l23, !tbaa !29
  %t54 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t53, i32 0, i32 3
  store i64 %t51, ptr %t54, !tbaa !24
  br label %bb8
bb8:
  %t55 = load ptr, ptr %l0, !tbaa !29
  store ptr %t55, ptr %l26, !tbaa !29
  %t56 = load i64, ptr %l4, !tbaa !24
  store i64 %t56, ptr %l27, !tbaa !24
  %t61 = call %"std/prelude/map:MapEntry.8d509622153b47f1a5f79c42c8367406" @std_2fprelude_2fmap_3aMapEntry_3cI64_2c_20Array_3ccompiler_2ftyped_3aBlockId_3e_3e_2ector(ptr %v0, i64 %a2, { i64, ptr } %a3)
  store %"std/prelude/map:MapEntry.8d509622153b47f1a5f79c42c8367406" %t61, ptr %l30
  br label %bb9
bb9:
  %t63 = call %"std/prelude/map:MapEntry.8d509622153b47f1a5f79c42c8367406" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMapEntry_3cI64_2c_20Array_3ccompiler_2ftyped_3aBlockId_3e_3e(ptr %v0, ptr %l30)
  store %"std/prelude/map:MapEntry.8d509622153b47f1a5f79c42c8367406" %t63, ptr %l32
  br label %bb10
bb10:
  %t64 = load %"std/prelude/map:MapEntry.8d509622153b47f1a5f79c42c8367406", ptr %l32
  %t65 = load ptr, ptr %l26, !tbaa !29
  %t66 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t65, i32 0, i32 0
  %t67 = load i64, ptr %l27, !tbaa !24
  %t68 = getelementptr { i64, ptr }, ptr %t66, i32 0, i32 1
  %t69 = load ptr, ptr %t68, !tbaa !27
  %t70 = getelementptr %"std/prelude/map:MapEntry.8d509622153b47f1a5f79c42c8367406", ptr %t69, i64 %t67
  store %"std/prelude/map:MapEntry.8d509622153b47f1a5f79c42c8367406" %t64, ptr %t70
  %t71 = load ptr, ptr %l0, !tbaa !29
  %t72 = load i64, ptr %l4, !tbaa !24
  %t73 = load ptr, ptr %l0, !tbaa !29
  %t74 = load i64, ptr %l1, !tbaa !24
  %t76 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t73, i32 0, i32 2
  %t78 = getelementptr { i64, ptr }, ptr %t76, i32 0, i32 1
  %t79 = load ptr, ptr %t78, !tbaa !27
  %t80 = getelementptr i64, ptr %t79, i64 %t74
  %t81 = load i64, ptr %t80, !tbaa !34
  %t84 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t71, i32 0, i32 1
  %t86 = getelementptr { i64, ptr }, ptr %t84, i32 0, i32 1
  %t87 = load ptr, ptr %t86, !tbaa !27
  %t88 = getelementptr i64, ptr %t87, i64 %t72
  store i64 %t81, ptr %t88, !tbaa !34
  %t89 = load ptr, ptr %l0, !tbaa !29
  %t90 = load i64, ptr %l1, !tbaa !24
  %t91 = load i64, ptr %l4, !tbaa !24
  %t94 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t89, i32 0, i32 2
  %t96 = getelementptr { i64, ptr }, ptr %t94, i32 0, i32 1
  %t97 = load ptr, ptr %t96, !tbaa !27
  %t98 = getelementptr i64, ptr %t97, i64 %t90
  store i64 %t91, ptr %t98, !tbaa !34
  %t99 = load ptr, ptr %l0, !tbaa !29
  store ptr %t99, ptr %l41, !tbaa !29
  %t100 = load ptr, ptr %l41, !tbaa !29
  %t101 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t100, i32 0, i32 4
  %t102 = load i64, ptr %t101, !tbaa !24
  %t104 = add i64 %t102, 1
  %t106 = load ptr, ptr %l41, !tbaa !29
  %t107 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t106, i32 0, i32 4
  store i64 %t104, ptr %t107, !tbaa !24
  %t108 = load ptr, ptr %l0, !tbaa !29
  %t110 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t108, i32 0, i32 4
  %t111 = load i64, ptr %t110, !tbaa !24
  %t113 = mul i64 %t111, 4
  %t114 = load ptr, ptr %l0, !tbaa !29
  %t116 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t114, i32 0, i32 2
  %t117 = load { i64, ptr }, ptr %t116, !tbaa !27
  %t119 = extractvalue { i64, ptr } %t117, 0
  %t121 = mul i64 %t119, 3
  %t124 = icmp sgt i64 %t113, %t121
  br i1 %t124, label %bb11, label %bb12
bb11:
  %t126 = load ptr, ptr %l0, !tbaa !29
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Array_3ccompiler_2ftyped_3aBl_Hc5028bb32daef060d237a7608c857f1d(ptr %v0, ptr %t126)
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

define dso_local void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Array_3ccompiler_2ftyped_3aCa_H075f4750b9fbd2a4764c573a9763e3f6(ptr %v0, ptr %v1, ptr %a0, i64 %a1, { i64, ptr } %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca { i64, ptr }
  %l3 = alloca i64
  %l4 = alloca i64
  %l9 = alloca ptr
  %l15 = alloca i64
  %l29 = alloca { i64, ptr }
  %l30 = alloca i64
  %l31 = alloca { i64, ptr }
  %t17 = alloca i64
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  store { i64, ptr } %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t1, i32 0, i32 2
  %t4 = load { i64, ptr }, ptr %t3, !tbaa !27
  %t6 = extractvalue { i64, ptr } %t4, 0
  %t8 = icmp eq i64 %t6, 0
  br i1 %t8, label %bb1, label %bb2
bb1:
  %t10 = load ptr, ptr %l0, !tbaa !29
  store ptr %t10, ptr %l9, !tbaa !29
  %t11 = icmp sge i64 8, 0
  br i1 %t11, label %bb3, label %bb4
bb2:
  br label %bb7
bb3:
  %t13 = icmp sle i64 8, 1152921504606846975
  br i1 %t13, label %bb5, label %bb6
bb4:
  call void @__olang_check_failed(ptr @olang_loc_45577aa415fa5dbd_be5fb2d17f2af6c9)
  unreachable
bb5:
  %t15 = mul i64 8, 8
  %t16 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t15)
  store i64 0, ptr %t17
  br label %fill.18
fill.18:
  %t21 = load i64, ptr %t17
  %t22 = icmp slt i64 %t21, 8
  br i1 %t22, label %fillb.19, label %filld.20
fillb.19:
  %t23 = getelementptr i64, ptr %t16, i64 %t21
  store i64 -1, ptr %t23
  %t24 = add i64 %t21, 1
  store i64 %t24, ptr %t17
  br label %fill.18
filld.20:
  %t25 = insertvalue { i64, ptr } undef, i64 8, 0
  %t26 = insertvalue { i64, ptr } %t25, ptr %t16, 1
  %t28 = load ptr, ptr %l9, !tbaa !29
  %t29 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t28, i32 0, i32 2
  store { i64, ptr } %t26, ptr %t29, !tbaa !27
  br label %bb7
bb6:
  call void @__olang_check_failed(ptr @olang_loc_45577aa415fa5dbd_be5fb2d17f2af6c9)
  unreachable
bb7:
  %t30 = load ptr, ptr %l0, !tbaa !29
  %t31 = load i64, ptr %l1, !tbaa !24
  %t34 = call i64 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Array_3ccompiler_2ftyped_3aBl_He88cfdc4919e1dee4cfd0cdecebbca1d(ptr %v0, ptr %t30, i64 %t31)
  store i64 %t34, ptr %l15
  br label %bb8
bb8:
  %t35 = load i64, ptr %l15, !tbaa !24
  store i64 %t35, ptr %l3, !tbaa !24
  %t36 = load ptr, ptr %l0, !tbaa !29
  %t37 = load i64, ptr %l3, !tbaa !24
  %t39 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t36, i32 0, i32 2
  %t41 = getelementptr { i64, ptr }, ptr %t39, i32 0, i32 1
  %t42 = load ptr, ptr %t41, !tbaa !27
  %t43 = getelementptr i64, ptr %t42, i64 %t37
  %t44 = load i64, ptr %t43, !tbaa !34
  store i64 %t44, ptr %l4, !tbaa !24
  br label %bb9
bb9:
  %t46 = load i64, ptr %l4, !tbaa !24
  %t48 = icmp sge i64 %t46, 0
  %t50 = xor i1 %t48, true
  br i1 %t50, label %bb10, label %bb11
bb10:
  br label %bb17
bb11:
  br label %bb12
bb12:
  %t52 = load ptr, ptr %l0, !tbaa !29
  %t53 = load i64, ptr %l4, !tbaa !24
  %t55 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t52, i32 0, i32 0
  %t57 = getelementptr { i64, ptr }, ptr %t55, i32 0, i32 1
  %t58 = load ptr, ptr %t57, !tbaa !27
  %t59 = getelementptr %"std/prelude/map:MapEntry.8d509622153b47f1a5f79c42c8367406", ptr %t58, i64 %t53
  %t60 = getelementptr %"std/prelude/map:MapEntry.8d509622153b47f1a5f79c42c8367406", ptr %t59, i32 0, i32 0
  %t61 = load i64, ptr %t60, !tbaa !24
  %t62 = load i64, ptr %l1, !tbaa !24
  %t65 = icmp eq i64 %t61, %t62
  br i1 %t65, label %bb13, label %bb14
bb13:
  %t67 = load ptr, ptr %l0, !tbaa !29
  %t68 = load i64, ptr %l4, !tbaa !24
  %t69 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t69, ptr %l29, !tbaa !27
  %t70 = load { i64, ptr }, ptr %l29, !tbaa !27
  %t71 = extractvalue { i64, ptr } %t70, 0
  store i64 %t71, ptr %l30, !tbaa !24
  %t72 = load i64, ptr %l30, !tbaa !24
  %t73 = mul i64 %t72, 8
  %t74 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t73)
  %t75 = insertvalue { i64, ptr } undef, i64 %t72, 0
  %t76 = insertvalue { i64, ptr } %t75, ptr %t74, 1
  store { i64, ptr } %t76, ptr %l31, !tbaa !27
  %t77 = getelementptr { i64, ptr }, ptr %l31, i32 0, i32 1
  %t78 = load ptr, ptr %t77, !tbaa !27
  %t79 = getelementptr { i64, ptr }, ptr %l29, i32 0, i32 1
  %t80 = load ptr, ptr %t79, !tbaa !27
  %t81 = load i64, ptr %l30, !tbaa !24
  %t82 = mul i64 %t81, 8
  call void @llvm.memmove.p0.p0.i64(ptr %t78, ptr %t80, i64 %t82, i1 false)
  %t83 = load { i64, ptr }, ptr %l31, !tbaa !27
  %t85 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t67, i32 0, i32 0
  %t87 = getelementptr { i64, ptr }, ptr %t85, i32 0, i32 1
  %t88 = load ptr, ptr %t87, !tbaa !27
  %t89 = getelementptr %"std/prelude/map:MapEntry.8d509622153b47f1a5f79c42c8367406", ptr %t88, i64 %t68
  %t90 = getelementptr %"std/prelude/map:MapEntry.8d509622153b47f1a5f79c42c8367406", ptr %t89, i32 0, i32 1
  store { i64, ptr } %t83, ptr %t90, !tbaa !27
  br label %ret
bb14:
  br label %bb15
bb15:
  br label %bb16
bb16:
  %t91 = load ptr, ptr %l0, !tbaa !29
  %t92 = load i64, ptr %l4, !tbaa !24
  %t94 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t91, i32 0, i32 1
  %t96 = getelementptr { i64, ptr }, ptr %t94, i32 0, i32 1
  %t97 = load ptr, ptr %t96, !tbaa !27
  %t98 = getelementptr i64, ptr %t97, i64 %t92
  %t99 = load i64, ptr %t98, !tbaa !34
  store i64 %t99, ptr %l4, !tbaa !24
  br label %bb9
bb17:
  %t101 = load ptr, ptr %l0, !tbaa !29
  %t102 = load i64, ptr %l3, !tbaa !24
  %t103 = load i64, ptr %l1, !tbaa !24
  %t104 = load { i64, ptr }, ptr %l2, !tbaa !27
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Array_3ccompiler_2ftyped_3aCa_H67d798a1f57f3872a5b581cce531b2db(ptr %v0, ptr %v1, ptr %t101, i64 %t102, i64 %t103, { i64, ptr } %t104)
  br label %bb18
bb18:
  br label %ret
ret:
  ret void
}

define dso_local i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2eHas_3cI64_2c_20Bool_3e(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l2 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i32
  %rv = alloca i1
  br label %start
start:
  br label %bb0
bb0:
  %t5 = call { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2eslotOf_3cI64_2c_20Bool_3e(ptr %v0, ptr %a0, i64 %a1)
  %t6 = extractvalue { i32, i64 } %t5, 1
  %t7 = extractvalue { i32, i64 } %t5, 0
  store i32 %t7, ptr %l6
  %t8 = icmp ne i32 %t7, 0
  br i1 %t8, label %bb2, label %ok.9, !prof !99
ok.9:
  store i64 %t6, ptr %l5
  br label %bb1
bb1:
  %t10 = load i64, ptr %l5, !tbaa !24
  store i64 %t10, ptr %l2, !tbaa !24
  br label %bb4
bb2:
  br label %bb3
bb3:
  store i1 false, ptr %rv
  br label %ret
bb4:
  store i1 true, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local %"std/prelude/map:MapKeyIter.bf5835bb10600fe6a7fc1da14a6360d9" @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2eKeys_3cI64_2c_20Bool_3e(ptr %v0, ptr %v1, ptr %a0) #0 {
entry:
  %r = tail call %"std/prelude/map:MapKeyIter.bf5835bb10600fe6a7fc1da14a6360d9" @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_Hd80cb4cbc6ceb8a13686fbc19b8451b4(ptr %v0, ptr %v1, ptr %a0)
  ret %"std/prelude/map:MapKeyIter.bf5835bb10600fe6a7fc1da14a6360d9" %r
}

define dso_local i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2eRemove_3cI64_2c_20Bool_3e(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l3 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i32
  %l11 = alloca %"std/prelude/map:MapEntry.eb00e4a6e4307a4e46e40fbcd79d6b4f"
  %rv = alloca i1
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t5 = call { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2eunlink_3cI64_2c_20Bool_3e(ptr %v0, ptr %t1, i64 %a1)
  %t6 = extractvalue { i32, i64 } %t5, 1
  %t7 = extractvalue { i32, i64 } %t5, 0
  store i32 %t7, ptr %l7
  %t8 = icmp ne i32 %t7, 0
  br i1 %t8, label %bb2, label %ok.9, !prof !99
ok.9:
  store i64 %t6, ptr %l6
  br label %bb1
bb1:
  %t10 = load i64, ptr %l6, !tbaa !24
  store i64 %t10, ptr %l3, !tbaa !24
  br label %bb4
bb2:
  br label %bb3
bb3:
  store i1 false, ptr %rv
  br label %ret
bb4:
  %t12 = load i64, ptr %l3, !tbaa !24
  %t13 = load ptr, ptr %l0, !tbaa !29
  %t16 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t13, i32 0, i32 0
  %t18 = getelementptr { i64, ptr }, ptr %t16, i32 0, i32 1
  %t19 = load ptr, ptr %t18, !tbaa !27
  %t20 = getelementptr %"std/prelude/map:MapEntry.eb00e4a6e4307a4e46e40fbcd79d6b4f", ptr %t19, i64 %t12
  %t21 = load %"std/prelude/map:MapEntry.eb00e4a6e4307a4e46e40fbcd79d6b4f", ptr %t20
  store %"std/prelude/map:MapEntry.eb00e4a6e4307a4e46e40fbcd79d6b4f" %t21, ptr %l11
  store i1 true, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2eGet_3cI64_2c_20I64_3e(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i32
  %rv = alloca { i32, i64 }
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1, ptr %l2, !tbaa !29
  %t2 = load ptr, ptr %l0, !tbaa !29
  %t6 = call { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2eslotOf_3cI64_2c_20I64_3e(ptr %v0, ptr %t2, i64 %a1)
  %t7 = extractvalue { i32, i64 } %t6, 1
  %t8 = extractvalue { i32, i64 } %t6, 0
  store i32 %t8, ptr %l7
  %t9 = icmp ne i32 %t8, 0
  br i1 %t9, label %bb2, label %ok.10, !prof !99
ok.10:
  store i64 %t7, ptr %l6
  br label %bb1
bb1:
  %t11 = load i64, ptr %l6, !tbaa !24
  store i64 %t11, ptr %l3, !tbaa !24
  br label %bb3
bb2:
  %t12 = load i32, ptr %l7, !tbaa !23
  %t13 = lshr i32 %t12, 16
  %t14 = and i32 %t12, 65535
  %t15 = icmp eq i32 %t13, 1
  %t16 = select i1 %t15, i32 1, i32 0
  %t17 = icmp eq i32 %t12, 0
  %t18 = shl i32 %t16, 16
  %t19 = or i32 %t18, %t14
  %t20 = select i1 %t17, i32 0, i32 %t19
  %t22 = insertvalue { i32, i64 } zeroinitializer, i32 %t20, 0
  store { i32, i64 } %t22, ptr %rv
  br label %ret
bb3:
  %t23 = load ptr, ptr %l2, !tbaa !29
  %t24 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t23, i32 0, i32 0
  %t25 = load i64, ptr %l3, !tbaa !24
  %t26 = getelementptr { i64, ptr }, ptr %t24, i32 0, i32 1
  %t27 = load ptr, ptr %t26, !tbaa !27
  %t28 = getelementptr %"std/prelude/map:MapEntry.e476b05c61172463a7c240e364dbb6d0", ptr %t27, i64 %t25
  %t29 = getelementptr %"std/prelude/map:MapEntry.e476b05c61172463a7c240e364dbb6d0", ptr %t28, i32 0, i32 1
  %t30 = load i64, ptr %t29, !tbaa !24
  %t32 = insertvalue { i32, i64 } zeroinitializer, i64 %t30, 1
  store { i32, i64 } %t32, ptr %rv
  br label %ret
ret:
  %rr = load { i32, i64 }, ptr %rv
  ret { i32, i64 } %rr
}

define dso_local i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2eHas_3cI64_2c_20I64_3e(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l2 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i32
  %rv = alloca i1
  br label %start
start:
  br label %bb0
bb0:
  %t5 = call { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2eslotOf_3cI64_2c_20I64_3e(ptr %v0, ptr %a0, i64 %a1)
  %t6 = extractvalue { i32, i64 } %t5, 1
  %t7 = extractvalue { i32, i64 } %t5, 0
  store i32 %t7, ptr %l6
  %t8 = icmp ne i32 %t7, 0
  br i1 %t8, label %bb2, label %ok.9, !prof !99
ok.9:
  store i64 %t6, ptr %l5
  br label %bb1
bb1:
  %t10 = load i64, ptr %l5, !tbaa !24
  store i64 %t10, ptr %l2, !tbaa !24
  br label %bb4
bb2:
  br label %bb3
bb3:
  store i1 false, ptr %rv
  br label %ret
bb4:
  store i1 true, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local %"std/prelude/map:MapIter.bf5835bb10600fe6a7fc1da14a6360d9" @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2eIter_3cI64_2c_20I64_3e(ptr %v0, ptr %v1, ptr %a0) #0 {
entry:
  %l2 = alloca %"std/prelude/map:MapIter.bf5835bb10600fe6a7fc1da14a6360d9"
  %rv = alloca %"std/prelude/map:MapIter.bf5835bb10600fe6a7fc1da14a6360d9"
  br label %start
start:
  br label %bb0
bb0:
  %t3 = call %"std/prelude/map:MapIter.bf5835bb10600fe6a7fc1da14a6360d9" @std_2fprelude_2fmap_3aMapIter_3cI64_2c_20I64_3e_2ector(ptr %v0, ptr %v1, ptr %a0)
  store %"std/prelude/map:MapIter.bf5835bb10600fe6a7fc1da14a6360d9" %t3, ptr %l2
  br label %bb1
bb1:
  %t4 = load %"std/prelude/map:MapIter.bf5835bb10600fe6a7fc1da14a6360d9", ptr %l2
  store %"std/prelude/map:MapIter.bf5835bb10600fe6a7fc1da14a6360d9" %t4, ptr %rv
  br label %ret
ret:
  %rr = load %"std/prelude/map:MapIter.bf5835bb10600fe6a7fc1da14a6360d9", ptr %rv
  ret %"std/prelude/map:MapIter.bf5835bb10600fe6a7fc1da14a6360d9" %rr
}

define dso_local i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2elive_3cI64_2c_20I64_3e(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %r = tail call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_H068cfedf7407289d149ee3c6f4c8aa20(ptr %v0, ptr %a0, i64 %a1)
  ret i1 %r
}

define dso_local i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2fscope_3aTerm_3e_2e_Hb4ab14fd1aa8deeb21095c3402461540(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l3 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i32
  %l11 = alloca %"std/prelude/map:MapEntry.e9f7fa267a7f2d248d882fb408477a69"
  %rv = alloca i1
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t5 = call { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2fscope_3aTerm_3e_2e_H227479d75e2ae1e839d9c2cd86a7acd3(ptr %v0, ptr %t1, i64 %a1)
  %t6 = extractvalue { i32, i64 } %t5, 1
  %t7 = extractvalue { i32, i64 } %t5, 0
  store i32 %t7, ptr %l7
  %t8 = icmp ne i32 %t7, 0
  br i1 %t8, label %bb2, label %ok.9, !prof !99
ok.9:
  store i64 %t6, ptr %l6
  br label %bb1
bb1:
  %t10 = load i64, ptr %l6, !tbaa !24
  store i64 %t10, ptr %l3, !tbaa !24
  br label %bb4
bb2:
  br label %bb3
bb3:
  store i1 false, ptr %rv
  br label %ret
bb4:
  %t12 = load i64, ptr %l3, !tbaa !24
  %t13 = load ptr, ptr %l0, !tbaa !29
  %t16 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t13, i32 0, i32 0
  %t18 = getelementptr { i64, ptr }, ptr %t16, i32 0, i32 1
  %t19 = load ptr, ptr %t18, !tbaa !27
  %t20 = getelementptr %"std/prelude/map:MapEntry.e9f7fa267a7f2d248d882fb408477a69", ptr %t19, i64 %t12
  %t21 = load %"std/prelude/map:MapEntry.e9f7fa267a7f2d248d882fb408477a69", ptr %t20
  store %"std/prelude/map:MapEntry.e9f7fa267a7f2d248d882fb408477a69" %t21, ptr %l11
  store i1 true, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2fscope_3aTerm_3e_2e_Hc42eb28ee841a12e7ca1bab1c0e3da33(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca i64
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca ptr
  %l12 = alloca i64
  %l21 = alloca i64
  %l24 = alloca i64
  %l44 = alloca i1
  %l50 = alloca i64
  %t19 = alloca i64
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1, ptr %l8, !tbaa !29
  %t2 = load ptr, ptr %l0, !tbaa !29
  %t4 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t2, i32 0, i32 2
  %t5 = load { i64, ptr }, ptr %t4, !tbaa !27
  %t7 = extractvalue { i64, ptr } %t5, 0
  %t9 = mul i64 %t7, 2
  store i64 %t9, ptr %l12, !tbaa !24
  %t10 = load i64, ptr %l12, !tbaa !24
  %t11 = icmp sge i64 %t10, 0
  br i1 %t11, label %bb1, label %bb2
bb1:
  %t13 = load i64, ptr %l12, !tbaa !24
  %t14 = icmp sle i64 %t13, 1152921504606846975
  br i1 %t14, label %bb3, label %bb4
bb2:
  call void @__olang_check_failed(ptr @olang_loc_da3efeada6886791_f7bab64d16071645)
  unreachable
bb3:
  %t16 = load i64, ptr %l12, !tbaa !24
  %t17 = mul i64 %t16, 8
  %t18 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t17)
  store i64 0, ptr %t19
  br label %fill.20
fill.20:
  %t23 = load i64, ptr %t19
  %t24 = icmp slt i64 %t23, %t16
  br i1 %t24, label %fillb.21, label %filld.22
fillb.21:
  %t25 = getelementptr i64, ptr %t18, i64 %t23
  store i64 -1, ptr %t25
  %t26 = add i64 %t23, 1
  store i64 %t26, ptr %t19
  br label %fill.20
filld.22:
  %t27 = insertvalue { i64, ptr } undef, i64 %t16, 0
  %t28 = insertvalue { i64, ptr } %t27, ptr %t18, 1
  %t30 = load ptr, ptr %l8, !tbaa !29
  %t31 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t30, i32 0, i32 2
  store { i64, ptr } %t28, ptr %t31, !tbaa !27
  store i64 0, ptr %l1, !tbaa !24
  %t32 = load ptr, ptr %l0, !tbaa !29
  %t34 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t32, i32 0, i32 3
  %t35 = load i64, ptr %t34, !tbaa !24
  store i64 %t35, ptr %l2, !tbaa !24
  store i64 1, ptr %l3, !tbaa !24
  %t37 = load i64, ptr %l2, !tbaa !24
  %t38 = load i64, ptr %l1, !tbaa !24
  %t41 = icmp sgt i64 %t37, %t38
  br i1 %t41, label %bb5, label %bb6
bb4:
  call void @__olang_check_failed(ptr @olang_loc_da3efeada6886791_f7bab64d16071645)
  unreachable
bb5:
  %t43 = load i64, ptr %l3, !tbaa !24
  %t45 = icmp sgt i64 %t43, 0
  br i1 %t45, label %bb7, label %bb8
bb6:
  store i64 0, ptr %l21, !tbaa !24
  br label %bb10
bb7:
  %t47 = load i64, ptr %l2, !tbaa !24
  %t48 = load i64, ptr %l1, !tbaa !24
  %t51 = sub i64 %t47, %t48
  %t52 = load i64, ptr %l3, !tbaa !24
  %t55 = add i64 %t51, %t52
  %t57 = sub i64 %t55, 1
  %t58 = load i64, ptr %l3, !tbaa !24
  %t61 = sdiv i64 %t57, %t58
  store i64 %t61, ptr %l24, !tbaa !24
  br label %bb9
bb8:
  store i64 0, ptr %l24, !tbaa !24
  br label %bb9
bb9:
  %t63 = load i64, ptr %l24, !tbaa !24
  store i64 %t63, ptr %l21, !tbaa !24
  br label %bb10
bb10:
  %t64 = load i64, ptr %l21, !tbaa !24
  store i64 %t64, ptr %l4, !tbaa !24
  store i64 0, ptr %l5, !tbaa !24
  br label %bb11
bb11:
  %t65 = load i64, ptr %l5, !tbaa !24
  %t66 = load i64, ptr %l4, !tbaa !24
  %t69 = icmp slt i64 %t65, %t66
  %t71 = xor i1 %t69, true
  br i1 %t71, label %bb12, label %bb13
bb12:
  br label %bb21
bb13:
  br label %bb14
bb14:
  %t73 = load i64, ptr %l1, !tbaa !24
  %t74 = load i64, ptr %l5, !tbaa !24
  %t75 = load i64, ptr %l3, !tbaa !24
  %t78 = mul i64 %t74, %t75
  %t81 = add i64 %t73, %t78
  store i64 %t81, ptr %l6, !tbaa !24
  %t83 = load ptr, ptr %l0, !tbaa !29
  %t84 = load i64, ptr %l6, !tbaa !24
  %t87 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_H068cfedf7407289d149ee3c6f4c8aa20(ptr %v0, ptr %t83, i64 %t84)
  store i1 %t87, ptr %l44
  br label %bb15
bb15:
  %t88 = load i1, ptr %l44, !tbaa !21
  %t89 = xor i1 %t88, true
  br i1 %t89, label %bb16, label %bb17
bb16:
  br label %bb20
bb17:
  br label %bb18
bb18:
  %t91 = load ptr, ptr %l0, !tbaa !29
  %t92 = load ptr, ptr %l0, !tbaa !29
  %t93 = load i64, ptr %l6, !tbaa !24
  %t95 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t92, i32 0, i32 0
  %t97 = getelementptr { i64, ptr }, ptr %t95, i32 0, i32 1
  %t98 = load ptr, ptr %t97, !tbaa !27
  %t99 = getelementptr %"std/prelude/map:MapEntry.e9f7fa267a7f2d248d882fb408477a69", ptr %t98, i64 %t93
  %t100 = getelementptr %"std/prelude/map:MapEntry.e9f7fa267a7f2d248d882fb408477a69", ptr %t99, i32 0, i32 0
  %t101 = load i64, ptr %t100, !tbaa !24
  %t104 = call i64 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Array_3ccompiler_2ftyped_3aBl_He88cfdc4919e1dee4cfd0cdecebbca1d(ptr %v0, ptr %t91, i64 %t101)
  store i64 %t104, ptr %l50
  br label %bb19
bb19:
  %t105 = load i64, ptr %l50, !tbaa !24
  store i64 %t105, ptr %l7, !tbaa !24
  %t106 = load ptr, ptr %l0, !tbaa !29
  %t107 = load i64, ptr %l6, !tbaa !24
  %t108 = load ptr, ptr %l0, !tbaa !29
  %t109 = load i64, ptr %l7, !tbaa !24
  %t111 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t108, i32 0, i32 2
  %t113 = getelementptr { i64, ptr }, ptr %t111, i32 0, i32 1
  %t114 = load ptr, ptr %t113, !tbaa !27
  %t115 = getelementptr i64, ptr %t114, i64 %t109
  %t116 = load i64, ptr %t115, !tbaa !34
  %t119 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t106, i32 0, i32 1
  %t121 = getelementptr { i64, ptr }, ptr %t119, i32 0, i32 1
  %t122 = load ptr, ptr %t121, !tbaa !27
  %t123 = getelementptr i64, ptr %t122, i64 %t107
  store i64 %t116, ptr %t123, !tbaa !34
  %t124 = load ptr, ptr %l0, !tbaa !29
  %t125 = load i64, ptr %l7, !tbaa !24
  %t126 = load i64, ptr %l6, !tbaa !24
  %t129 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t124, i32 0, i32 2
  %t131 = getelementptr { i64, ptr }, ptr %t129, i32 0, i32 1
  %t132 = load ptr, ptr %t131, !tbaa !27
  %t133 = getelementptr i64, ptr %t132, i64 %t125
  store i64 %t126, ptr %t133, !tbaa !34
  br label %bb20
bb20:
  %t134 = load i64, ptr %l5, !tbaa !24
  %t136 = add i64 %t134, 1
  store i64 %t136, ptr %l5, !tbaa !24
  br label %bb11
bb21:
  br label %ret
ret:
  ret void
}

define dso_local void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2fscope_3afnRecs_3e__H47e799f943c6ac6af1e213444115e3d6(ptr %v0, ptr %v1, ptr %a0, i64 %a1, %"compiler/scope:fnRecs" %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca %"compiler/scope:fnRecs"
  %l3 = alloca i64
  %l4 = alloca i64
  %l9 = alloca ptr
  %l15 = alloca i64
  %l27 = alloca ptr
  %l28 = alloca i64
  %l29 = alloca %"compiler/scope:fnRecs"
  %l31 = alloca %"compiler/scope:fnRecs"
  %l35 = alloca ptr
  %l36 = alloca i64
  %l37 = alloca i64
  %l38 = alloca %"compiler/scope:fnRecs"
  %l40 = alloca %"compiler/scope:fnRecs"
  %s0 = alloca %olang.scope
  %t17 = alloca i64
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  store %"compiler/scope:fnRecs" %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t1, i32 0, i32 2
  %t4 = load { i64, ptr }, ptr %t3, !tbaa !27
  %t6 = extractvalue { i64, ptr } %t4, 0
  %t8 = icmp eq i64 %t6, 0
  br i1 %t8, label %bb1, label %bb2
bb1:
  %t10 = load ptr, ptr %l0, !tbaa !29
  store ptr %t10, ptr %l9, !tbaa !29
  %t11 = icmp sge i64 8, 0
  br i1 %t11, label %bb3, label %bb4
bb2:
  br label %bb7
bb3:
  %t13 = icmp sle i64 8, 1152921504606846975
  br i1 %t13, label %bb5, label %bb6
bb4:
  call void @__olang_check_failed(ptr @olang_loc_24edbb97c8e1be09_29e8bd2e11e75995)
  unreachable
bb5:
  %t15 = mul i64 8, 8
  %t16 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t15)
  store i64 0, ptr %t17
  br label %fill.18
fill.18:
  %t21 = load i64, ptr %t17
  %t22 = icmp slt i64 %t21, 8
  br i1 %t22, label %fillb.19, label %filld.20
fillb.19:
  %t23 = getelementptr i64, ptr %t16, i64 %t21
  store i64 -1, ptr %t23
  %t24 = add i64 %t21, 1
  store i64 %t24, ptr %t17
  br label %fill.18
filld.20:
  %t25 = insertvalue { i64, ptr } undef, i64 8, 0
  %t26 = insertvalue { i64, ptr } %t25, ptr %t16, 1
  %t28 = load ptr, ptr %l9, !tbaa !29
  %t29 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t28, i32 0, i32 2
  store { i64, ptr } %t26, ptr %t29, !tbaa !27
  br label %bb7
bb6:
  call void @__olang_check_failed(ptr @olang_loc_24edbb97c8e1be09_29e8bd2e11e75995)
  unreachable
bb7:
  %t30 = load ptr, ptr %l0, !tbaa !29
  %t31 = load i64, ptr %l1, !tbaa !24
  %t34 = call i64 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Array_3ccompiler_2ftyped_3aBl_He88cfdc4919e1dee4cfd0cdecebbca1d(ptr %v0, ptr %t30, i64 %t31)
  store i64 %t34, ptr %l15
  br label %bb8
bb8:
  %t35 = load i64, ptr %l15, !tbaa !24
  store i64 %t35, ptr %l3, !tbaa !24
  %t36 = load ptr, ptr %l0, !tbaa !29
  %t37 = load i64, ptr %l3, !tbaa !24
  %t39 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t36, i32 0, i32 2
  %t41 = getelementptr { i64, ptr }, ptr %t39, i32 0, i32 1
  %t42 = load ptr, ptr %t41, !tbaa !27
  %t43 = getelementptr i64, ptr %t42, i64 %t37
  %t44 = load i64, ptr %t43, !tbaa !34
  store i64 %t44, ptr %l4, !tbaa !24
  br label %bb9
bb9:
  %t46 = load i64, ptr %l4, !tbaa !24
  %t48 = icmp sge i64 %t46, 0
  %t50 = xor i1 %t48, true
  br i1 %t50, label %bb10, label %bb11
bb10:
  br label %bb18
bb11:
  br label %bb12
bb12:
  %t52 = load ptr, ptr %l0, !tbaa !29
  %t53 = load i64, ptr %l4, !tbaa !24
  %t55 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t52, i32 0, i32 0
  %t57 = getelementptr { i64, ptr }, ptr %t55, i32 0, i32 1
  %t58 = load ptr, ptr %t57, !tbaa !27
  %t59 = getelementptr %"std/prelude/map:MapEntry.8067410eb7799f1c31299714f5ba653d", ptr %t58, i64 %t53
  %t60 = getelementptr %"std/prelude/map:MapEntry.8067410eb7799f1c31299714f5ba653d", ptr %t59, i32 0, i32 0
  %t61 = load i64, ptr %t60, !tbaa !24
  %t62 = load i64, ptr %l1, !tbaa !24
  %t65 = icmp eq i64 %t61, %t62
  br i1 %t65, label %bb13, label %bb14
bb13:
  %t67 = load ptr, ptr %l0, !tbaa !29
  store ptr %t67, ptr %l27, !tbaa !29
  %t68 = load i64, ptr %l4, !tbaa !24
  store i64 %t68, ptr %l28, !tbaa !24
  %t69 = load %"compiler/scope:fnRecs", ptr %l2
  store %"compiler/scope:fnRecs" %t69, ptr %l29
  %t71 = call %"compiler/scope:fnRecs" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2fscope_3afnRecs(ptr %v0, ptr %l29)
  store %"compiler/scope:fnRecs" %t71, ptr %l31
  br label %bb15
bb14:
  br label %bb16
bb15:
  %t72 = load %"compiler/scope:fnRecs", ptr %l31
  %t73 = load ptr, ptr %l27, !tbaa !29
  %t74 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t73, i32 0, i32 0
  %t75 = load i64, ptr %l28, !tbaa !24
  %t76 = getelementptr { i64, ptr }, ptr %t74, i32 0, i32 1
  %t77 = load ptr, ptr %t76, !tbaa !27
  %t78 = getelementptr %"std/prelude/map:MapEntry.8067410eb7799f1c31299714f5ba653d", ptr %t77, i64 %t75
  %t79 = getelementptr %"std/prelude/map:MapEntry.8067410eb7799f1c31299714f5ba653d", ptr %t78, i32 0, i32 1
  store %"compiler/scope:fnRecs" %t72, ptr %t79
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb16:
  br label %bb17
bb17:
  %t80 = load ptr, ptr %l0, !tbaa !29
  %t81 = load i64, ptr %l4, !tbaa !24
  %t83 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t80, i32 0, i32 1
  %t85 = getelementptr { i64, ptr }, ptr %t83, i32 0, i32 1
  %t86 = load ptr, ptr %t85, !tbaa !27
  %t87 = getelementptr i64, ptr %t86, i64 %t81
  %t88 = load i64, ptr %t87, !tbaa !34
  store i64 %t88, ptr %l4, !tbaa !24
  br label %bb9
bb18:
  %t90 = load ptr, ptr %l0, !tbaa !29
  store ptr %t90, ptr %l35, !tbaa !29
  %t91 = load i64, ptr %l3, !tbaa !24
  store i64 %t91, ptr %l36, !tbaa !24
  %t92 = load i64, ptr %l1, !tbaa !24
  store i64 %t92, ptr %l37, !tbaa !24
  %t93 = load %"compiler/scope:fnRecs", ptr %l2
  store %"compiler/scope:fnRecs" %t93, ptr %l38
  %t95 = call %"compiler/scope:fnRecs" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2fscope_3afnRecs(ptr %s0, ptr %l38)
  store %"compiler/scope:fnRecs" %t95, ptr %l40
  br label %bb19
bb19:
  %t96 = load ptr, ptr %l35, !tbaa !29
  %t97 = load i64, ptr %l36, !tbaa !24
  %t98 = load i64, ptr %l37, !tbaa !24
  %t99 = load %"compiler/scope:fnRecs", ptr %l40
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2fscope_3afnRecs_3e__H562004361ec99b0cef432f8998da46ac(ptr %v0, ptr %s0, ptr %t96, i64 %t97, i64 %t98, %"compiler/scope:fnRecs" %t99)
  br label %bb20
bb20:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2fscope_3afnRecs_3e__H7810fb114fca6f1cf5928af4d43597da(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca i64
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca ptr
  %l12 = alloca i64
  %l21 = alloca i64
  %l24 = alloca i64
  %l44 = alloca i1
  %l50 = alloca i64
  %t19 = alloca i64
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1, ptr %l8, !tbaa !29
  %t2 = load ptr, ptr %l0, !tbaa !29
  %t4 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t2, i32 0, i32 2
  %t5 = load { i64, ptr }, ptr %t4, !tbaa !27
  %t7 = extractvalue { i64, ptr } %t5, 0
  %t9 = mul i64 %t7, 2
  store i64 %t9, ptr %l12, !tbaa !24
  %t10 = load i64, ptr %l12, !tbaa !24
  %t11 = icmp sge i64 %t10, 0
  br i1 %t11, label %bb1, label %bb2
bb1:
  %t13 = load i64, ptr %l12, !tbaa !24
  %t14 = icmp sle i64 %t13, 1152921504606846975
  br i1 %t14, label %bb3, label %bb4
bb2:
  call void @__olang_check_failed(ptr @olang_loc_70430947dbb211cd_c85beb0840cd5939)
  unreachable
bb3:
  %t16 = load i64, ptr %l12, !tbaa !24
  %t17 = mul i64 %t16, 8
  %t18 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t17)
  store i64 0, ptr %t19
  br label %fill.20
fill.20:
  %t23 = load i64, ptr %t19
  %t24 = icmp slt i64 %t23, %t16
  br i1 %t24, label %fillb.21, label %filld.22
fillb.21:
  %t25 = getelementptr i64, ptr %t18, i64 %t23
  store i64 -1, ptr %t25
  %t26 = add i64 %t23, 1
  store i64 %t26, ptr %t19
  br label %fill.20
filld.22:
  %t27 = insertvalue { i64, ptr } undef, i64 %t16, 0
  %t28 = insertvalue { i64, ptr } %t27, ptr %t18, 1
  %t30 = load ptr, ptr %l8, !tbaa !29
  %t31 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t30, i32 0, i32 2
  store { i64, ptr } %t28, ptr %t31, !tbaa !27
  store i64 0, ptr %l1, !tbaa !24
  %t32 = load ptr, ptr %l0, !tbaa !29
  %t34 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t32, i32 0, i32 3
  %t35 = load i64, ptr %t34, !tbaa !24
  store i64 %t35, ptr %l2, !tbaa !24
  store i64 1, ptr %l3, !tbaa !24
  %t37 = load i64, ptr %l2, !tbaa !24
  %t38 = load i64, ptr %l1, !tbaa !24
  %t41 = icmp sgt i64 %t37, %t38
  br i1 %t41, label %bb5, label %bb6
bb4:
  call void @__olang_check_failed(ptr @olang_loc_70430947dbb211cd_c85beb0840cd5939)
  unreachable
bb5:
  %t43 = load i64, ptr %l3, !tbaa !24
  %t45 = icmp sgt i64 %t43, 0
  br i1 %t45, label %bb7, label %bb8
bb6:
  store i64 0, ptr %l21, !tbaa !24
  br label %bb10
bb7:
  %t47 = load i64, ptr %l2, !tbaa !24
  %t48 = load i64, ptr %l1, !tbaa !24
  %t51 = sub i64 %t47, %t48
  %t52 = load i64, ptr %l3, !tbaa !24
  %t55 = add i64 %t51, %t52
  %t57 = sub i64 %t55, 1
  %t58 = load i64, ptr %l3, !tbaa !24
  %t61 = sdiv i64 %t57, %t58
  store i64 %t61, ptr %l24, !tbaa !24
  br label %bb9
bb8:
  store i64 0, ptr %l24, !tbaa !24
  br label %bb9
bb9:
  %t63 = load i64, ptr %l24, !tbaa !24
  store i64 %t63, ptr %l21, !tbaa !24
  br label %bb10
bb10:
  %t64 = load i64, ptr %l21, !tbaa !24
  store i64 %t64, ptr %l4, !tbaa !24
  store i64 0, ptr %l5, !tbaa !24
  br label %bb11
bb11:
  %t65 = load i64, ptr %l5, !tbaa !24
  %t66 = load i64, ptr %l4, !tbaa !24
  %t69 = icmp slt i64 %t65, %t66
  %t71 = xor i1 %t69, true
  br i1 %t71, label %bb12, label %bb13
bb12:
  br label %bb21
bb13:
  br label %bb14
bb14:
  %t73 = load i64, ptr %l1, !tbaa !24
  %t74 = load i64, ptr %l5, !tbaa !24
  %t75 = load i64, ptr %l3, !tbaa !24
  %t78 = mul i64 %t74, %t75
  %t81 = add i64 %t73, %t78
  store i64 %t81, ptr %l6, !tbaa !24
  %t83 = load ptr, ptr %l0, !tbaa !29
  %t84 = load i64, ptr %l6, !tbaa !24
  %t87 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_H068cfedf7407289d149ee3c6f4c8aa20(ptr %v0, ptr %t83, i64 %t84)
  store i1 %t87, ptr %l44
  br label %bb15
bb15:
  %t88 = load i1, ptr %l44, !tbaa !21
  %t89 = xor i1 %t88, true
  br i1 %t89, label %bb16, label %bb17
bb16:
  br label %bb20
bb17:
  br label %bb18
bb18:
  %t91 = load ptr, ptr %l0, !tbaa !29
  %t92 = load ptr, ptr %l0, !tbaa !29
  %t93 = load i64, ptr %l6, !tbaa !24
  %t95 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t92, i32 0, i32 0
  %t97 = getelementptr { i64, ptr }, ptr %t95, i32 0, i32 1
  %t98 = load ptr, ptr %t97, !tbaa !27
  %t99 = getelementptr %"std/prelude/map:MapEntry.8067410eb7799f1c31299714f5ba653d", ptr %t98, i64 %t93
  %t100 = getelementptr %"std/prelude/map:MapEntry.8067410eb7799f1c31299714f5ba653d", ptr %t99, i32 0, i32 0
  %t101 = load i64, ptr %t100, !tbaa !24
  %t104 = call i64 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Array_3ccompiler_2ftyped_3aBl_He88cfdc4919e1dee4cfd0cdecebbca1d(ptr %v0, ptr %t91, i64 %t101)
  store i64 %t104, ptr %l50
  br label %bb19
bb19:
  %t105 = load i64, ptr %l50, !tbaa !24
  store i64 %t105, ptr %l7, !tbaa !24
  %t106 = load ptr, ptr %l0, !tbaa !29
  %t107 = load i64, ptr %l6, !tbaa !24
  %t108 = load ptr, ptr %l0, !tbaa !29
  %t109 = load i64, ptr %l7, !tbaa !24
  %t111 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t108, i32 0, i32 2
  %t113 = getelementptr { i64, ptr }, ptr %t111, i32 0, i32 1
  %t114 = load ptr, ptr %t113, !tbaa !27
  %t115 = getelementptr i64, ptr %t114, i64 %t109
  %t116 = load i64, ptr %t115, !tbaa !34
  %t119 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t106, i32 0, i32 1
  %t121 = getelementptr { i64, ptr }, ptr %t119, i32 0, i32 1
  %t122 = load ptr, ptr %t121, !tbaa !27
  %t123 = getelementptr i64, ptr %t122, i64 %t107
  store i64 %t116, ptr %t123, !tbaa !34
  %t124 = load ptr, ptr %l0, !tbaa !29
  %t125 = load i64, ptr %l7, !tbaa !24
  %t126 = load i64, ptr %l6, !tbaa !24
  %t129 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t124, i32 0, i32 2
  %t131 = getelementptr { i64, ptr }, ptr %t129, i32 0, i32 1
  %t132 = load ptr, ptr %t131, !tbaa !27
  %t133 = getelementptr i64, ptr %t132, i64 %t125
  store i64 %t126, ptr %t133, !tbaa !34
  br label %bb20
bb20:
  %t134 = load i64, ptr %l5, !tbaa !24
  %t136 = add i64 %t134, 1
  store i64 %t136, ptr %l5, !tbaa !24
  br label %bb11
bb21:
  br label %ret
ret:
  ret void
}

define dso_local void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2fscope_3afnRecs_3e__He80baf1b588f50b63954cc685275029f(ptr %v0, ptr %a0) noinline cold #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca { i64, ptr }
  %l3 = alloca { i64, ptr }
  %l5 = alloca i64
  %l6 = alloca { i64, ptr }
  %l7 = alloca { i64, ptr }
  %l9 = alloca i64
  %l14 = alloca i64
  %l21 = alloca ptr
  %l22 = alloca { i64, ptr }
  %l24 = alloca i64
  %l25 = alloca i64
  %l32 = alloca { i64, ptr }
  %l33 = alloca i64
  %l39 = alloca { i64, ptr }
  %l48 = alloca ptr
  %l49 = alloca { i64, ptr }
  %l51 = alloca i64
  %l52 = alloca i64
  %l59 = alloca { i64, ptr }
  %l60 = alloca i64
  %l66 = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t1, i32 0, i32 0
  %t4 = load { i64, ptr }, ptr %t3, !tbaa !27
  %t6 = extractvalue { i64, ptr } %t4, 0
  %t8 = icmp slt i64 %t6, 4
  br i1 %t8, label %bb1, label %bb2
bb1:
  store i64 8, ptr %l14, !tbaa !24
  br label %bb3
bb2:
  %t10 = load ptr, ptr %l0, !tbaa !29
  %t12 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t10, i32 0, i32 0
  %t13 = load { i64, ptr }, ptr %t12, !tbaa !27
  %t15 = extractvalue { i64, ptr } %t13, 0
  %t17 = mul i64 %t15, 2
  store i64 %t17, ptr %l14, !tbaa !24
  br label %bb3
bb3:
  %t19 = load i64, ptr %l14, !tbaa !24
  store i64 %t19, ptr %l1, !tbaa !24
  %t20 = load ptr, ptr %l0, !tbaa !29
  %t22 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t20, i32 0, i32 0
  %t23 = load { i64, ptr }, ptr %t22, !tbaa !27
  store { i64, ptr } %t23, ptr %l2, !tbaa !27
  %t25 = load ptr, ptr %l0, !tbaa !29
  store ptr %t25, ptr %l21, !tbaa !29
  %t26 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t26, ptr %l22, !tbaa !27
  %t27 = load ptr, ptr %l0, !tbaa !29
  %t29 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t27, i32 0, i32 3
  %t30 = load i64, ptr %t29, !tbaa !24
  store i64 %t30, ptr %l24, !tbaa !24
  %t31 = load { i64, ptr }, ptr %l22, !tbaa !27
  %t32 = extractvalue { i64, ptr } %t31, 0
  store i64 %t32, ptr %l25, !tbaa !24
  %t33 = icmp sge i64 0, 0
  br i1 %t33, label %bb4, label %bb5
bb4:
  %t35 = load i64, ptr %l24, !tbaa !24
  %t36 = icmp sle i64 0, %t35
  br i1 %t36, label %bb6, label %bb7
bb5:
  call void @__olang_check_failed(ptr @olang_loc_7f58bbce9e95ad79_e8f56ec1072e1d1d)
  unreachable
bb6:
  %t38 = load i64, ptr %l24, !tbaa !24
  %t39 = load i64, ptr %l25, !tbaa !24
  %t40 = icmp sle i64 %t38, %t39
  br i1 %t40, label %bb8, label %bb9
bb7:
  call void @__olang_check_failed(ptr @olang_loc_7f58bbce9e95ad79_e8f56ec1072e1d1d)
  unreachable
bb8:
  %t42 = getelementptr { i64, ptr }, ptr %l22, i32 0, i32 1
  %t43 = load ptr, ptr %t42, !tbaa !27
  %t44 = load i64, ptr %l24, !tbaa !24
  %t45 = getelementptr %"std/prelude/map:MapEntry.8067410eb7799f1c31299714f5ba653d", ptr %t43, i64 0
  %t46 = sub i64 %t44, 0
  %t47 = insertvalue { i64, ptr } undef, i64 %t46, 0
  %t48 = insertvalue { i64, ptr } %t47, ptr %t45, 1
  store { i64, ptr } %t48, ptr %l3, !tbaa !27
  %t50 = load i64, ptr %l1, !tbaa !24
  %t54 = mul i64 %t50, 112
  %t55 = call ptr @__olang_scope_alloc_zeroed(ptr %v0, i64 %t54)
  %t56 = insertvalue { i64, ptr } undef, i64 %t50, 0
  %t57 = insertvalue { i64, ptr } %t56, ptr %t55, 1
  store { i64, ptr } %t57, ptr %l32, !tbaa !27
  store i64 0, ptr %l33, !tbaa !24
  store i64 0, ptr %l5, !tbaa !24
  br label %bb10
bb9:
  call void @__olang_check_failed(ptr @olang_loc_7f58bbce9e95ad79_e8f56ec1072e1d1d)
  unreachable
bb10:
  %t58 = load i64, ptr %l5, !tbaa !24
  %t59 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t61 = extractvalue { i64, ptr } %t59, 0
  %t64 = icmp slt i64 %t58, %t61
  %t66 = xor i1 %t64, true
  br i1 %t66, label %bb11, label %bb12
bb11:
  br label %bb15
bb12:
  br label %bb13
bb13:
  %t68 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t68, ptr %l39, !tbaa !27
  %t69 = load i64, ptr %l5, !tbaa !24
  %t71 = getelementptr { i64, ptr }, ptr %l39, i32 0, i32 1
  %t72 = load ptr, ptr %t71, !tbaa !27
  %t73 = getelementptr %"std/prelude/map:MapEntry.8067410eb7799f1c31299714f5ba653d", ptr %t72, i64 %t69
  %t74 = load %"std/prelude/map:MapEntry.8067410eb7799f1c31299714f5ba653d", ptr %t73
  store %"std/prelude/map:MapEntry.8067410eb7799f1c31299714f5ba653d" zeroinitializer, ptr %t73
  %t76 = load i64, ptr %l33, !tbaa !24
  %t77 = getelementptr { i64, ptr }, ptr %l32, i32 0, i32 1
  %t78 = load ptr, ptr %t77, !tbaa !27
  %t79 = getelementptr %"std/prelude/map:MapEntry.8067410eb7799f1c31299714f5ba653d", ptr %t78, i64 %t76
  store %"std/prelude/map:MapEntry.8067410eb7799f1c31299714f5ba653d" %t74, ptr %t79
  %t80 = load i64, ptr %l33, !tbaa !24
  %t81 = add i64 %t80, 1
  store i64 %t81, ptr %l33, !tbaa !24
  br label %bb14
bb14:
  %t82 = load i64, ptr %l5, !tbaa !24
  %t84 = add i64 %t82, 1
  store i64 %t84, ptr %l5, !tbaa !24
  br label %bb10
bb15:
  %t86 = load { i64, ptr }, ptr %l32, !tbaa !27
  %t87 = load ptr, ptr %l21, !tbaa !29
  %t88 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t87, i32 0, i32 0
  store { i64, ptr } %t86, ptr %t88, !tbaa !27
  %t89 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t91 = load ptr, ptr %l0, !tbaa !29
  %t93 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t91, i32 0, i32 1
  %t94 = load { i64, ptr }, ptr %t93, !tbaa !27
  store { i64, ptr } %t94, ptr %l6, !tbaa !27
  %t96 = load ptr, ptr %l0, !tbaa !29
  store ptr %t96, ptr %l48, !tbaa !29
  %t97 = load { i64, ptr }, ptr %l6, !tbaa !27
  store { i64, ptr } %t97, ptr %l49, !tbaa !27
  %t98 = load ptr, ptr %l0, !tbaa !29
  %t100 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t98, i32 0, i32 3
  %t101 = load i64, ptr %t100, !tbaa !24
  store i64 %t101, ptr %l51, !tbaa !24
  %t102 = load { i64, ptr }, ptr %l49, !tbaa !27
  %t103 = extractvalue { i64, ptr } %t102, 0
  store i64 %t103, ptr %l52, !tbaa !24
  %t104 = icmp sge i64 0, 0
  br i1 %t104, label %bb16, label %bb17
bb16:
  %t106 = load i64, ptr %l51, !tbaa !24
  %t107 = icmp sle i64 0, %t106
  br i1 %t107, label %bb18, label %bb19
bb17:
  call void @__olang_check_failed(ptr @olang_loc_d289edfcd51d194c_58000e496e1c51c0)
  unreachable
bb18:
  %t109 = load i64, ptr %l51, !tbaa !24
  %t110 = load i64, ptr %l52, !tbaa !24
  %t111 = icmp sle i64 %t109, %t110
  br i1 %t111, label %bb20, label %bb21
bb19:
  call void @__olang_check_failed(ptr @olang_loc_d289edfcd51d194c_58000e496e1c51c0)
  unreachable
bb20:
  %t113 = getelementptr { i64, ptr }, ptr %l49, i32 0, i32 1
  %t114 = load ptr, ptr %t113, !tbaa !27
  %t115 = load i64, ptr %l51, !tbaa !24
  %t116 = getelementptr i64, ptr %t114, i64 0
  %t117 = sub i64 %t115, 0
  %t118 = insertvalue { i64, ptr } undef, i64 %t117, 0
  %t119 = insertvalue { i64, ptr } %t118, ptr %t116, 1
  store { i64, ptr } %t119, ptr %l7, !tbaa !27
  %t121 = load i64, ptr %l1, !tbaa !24
  %t125 = mul i64 %t121, 8
  %t126 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t125)
  %t127 = insertvalue { i64, ptr } undef, i64 %t121, 0
  %t128 = insertvalue { i64, ptr } %t127, ptr %t126, 1
  store { i64, ptr } %t128, ptr %l59, !tbaa !27
  store i64 0, ptr %l60, !tbaa !24
  store i64 0, ptr %l9, !tbaa !24
  br label %bb22
bb21:
  call void @__olang_check_failed(ptr @olang_loc_d289edfcd51d194c_58000e496e1c51c0)
  unreachable
bb22:
  %t129 = load i64, ptr %l9, !tbaa !24
  %t130 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t132 = extractvalue { i64, ptr } %t130, 0
  %t135 = icmp slt i64 %t129, %t132
  %t137 = xor i1 %t135, true
  br i1 %t137, label %bb23, label %bb24
bb23:
  br label %bb27
bb24:
  br label %bb25
bb25:
  %t139 = load { i64, ptr }, ptr %l7, !tbaa !27
  store { i64, ptr } %t139, ptr %l66, !tbaa !27
  %t140 = load i64, ptr %l9, !tbaa !24
  %t142 = getelementptr { i64, ptr }, ptr %l66, i32 0, i32 1
  %t143 = load ptr, ptr %t142, !tbaa !27
  %t144 = getelementptr i64, ptr %t143, i64 %t140
  %t145 = load i64, ptr %t144, !tbaa !34
  %t147 = load i64, ptr %l60, !tbaa !24
  %t148 = getelementptr { i64, ptr }, ptr %l59, i32 0, i32 1
  %t149 = load ptr, ptr %t148, !tbaa !27
  %t150 = getelementptr i64, ptr %t149, i64 %t147
  store i64 %t145, ptr %t150, !tbaa !34
  %t151 = load i64, ptr %l60, !tbaa !24
  %t152 = add i64 %t151, 1
  store i64 %t152, ptr %l60, !tbaa !24
  br label %bb26
bb26:
  %t153 = load i64, ptr %l9, !tbaa !24
  %t155 = add i64 %t153, 1
  store i64 %t155, ptr %l9, !tbaa !24
  br label %bb22
bb27:
  %t157 = load { i64, ptr }, ptr %l59, !tbaa !27
  %t158 = load ptr, ptr %l48, !tbaa !29
  %t159 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t158, i32 0, i32 1
  store { i64, ptr } %t157, ptr %t159, !tbaa !27
  %t160 = load { i64, ptr }, ptr %l6, !tbaa !27
  br label %ret
ret:
  ret void
}

define dso_local void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2ftyped_3aExpr_26_3e_H15df9b3cd33c865ecbfff8d817188b6b(ptr %v0, ptr %v1, ptr %a0, i64 %a1, i64 %a2, ptr %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l4 = alloca i64
  %l9 = alloca ptr
  %l13 = alloca i64
  %l23 = alloca ptr
  %l26 = alloca ptr
  %l27 = alloca i64
  %l30 = alloca %"std/prelude/map:MapEntry.1eb2466213689e002f25e81e83536e78"
  %l39 = alloca ptr
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t1, i32 0, i32 5
  %t4 = load i64, ptr %t3, !tbaa !24
  store i64 %t4, ptr %l4, !tbaa !24
  %t6 = load i64, ptr %l4, !tbaa !24
  %t8 = icmp sge i64 %t6, 0
  br i1 %t8, label %bb1, label %bb2
bb1:
  %t10 = load ptr, ptr %l0, !tbaa !29
  store ptr %t10, ptr %l9, !tbaa !29
  %t11 = load ptr, ptr %l0, !tbaa !29
  %t12 = load i64, ptr %l4, !tbaa !24
  %t14 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t11, i32 0, i32 1
  %t16 = getelementptr { i64, ptr }, ptr %t14, i32 0, i32 1
  %t17 = load ptr, ptr %t16, !tbaa !27
  %t18 = getelementptr i64, ptr %t17, i64 %t12
  %t19 = load i64, ptr %t18, !tbaa !34
  %t21 = call i64 @std_2fprelude_2fmap_2efreeLink(i64 %t19)
  store i64 %t21, ptr %l13
  br label %bb3
bb2:
  %t22 = load ptr, ptr %l0, !tbaa !29
  %t24 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t22, i32 0, i32 3
  %t25 = load i64, ptr %t24, !tbaa !24
  %t26 = load ptr, ptr %l0, !tbaa !29
  %t28 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t26, i32 0, i32 0
  %t29 = load { i64, ptr }, ptr %t28, !tbaa !27
  %t31 = extractvalue { i64, ptr } %t29, 0
  %t34 = icmp eq i64 %t25, %t31
  br i1 %t34, label %bb4, label %bb5
bb3:
  %t36 = load i64, ptr %l13, !tbaa !24
  %t37 = load ptr, ptr %l9, !tbaa !29
  %t38 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t37, i32 0, i32 5
  store i64 %t36, ptr %t38, !tbaa !24
  br label %bb8
bb4:
  %t39 = load ptr, ptr %l0, !tbaa !29
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2ftyped_3aExpr_26_3e_H65d3befeefd610ac34988050904a0f74(ptr %v0, ptr %t39)
  br label %bb6
bb5:
  br label %bb7
bb6:
  br label %bb7
bb7:
  %t41 = load ptr, ptr %l0, !tbaa !29
  %t43 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t41, i32 0, i32 3
  %t44 = load i64, ptr %t43, !tbaa !24
  store i64 %t44, ptr %l4, !tbaa !24
  %t46 = load ptr, ptr %l0, !tbaa !29
  store ptr %t46, ptr %l23, !tbaa !29
  %t47 = load ptr, ptr %l23, !tbaa !29
  %t48 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t47, i32 0, i32 3
  %t49 = load i64, ptr %t48, !tbaa !24
  %t51 = add i64 %t49, 1
  %t53 = load ptr, ptr %l23, !tbaa !29
  %t54 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t53, i32 0, i32 3
  store i64 %t51, ptr %t54, !tbaa !24
  br label %bb8
bb8:
  %t55 = load ptr, ptr %l0, !tbaa !29
  store ptr %t55, ptr %l26, !tbaa !29
  %t56 = load i64, ptr %l4, !tbaa !24
  store i64 %t56, ptr %l27, !tbaa !24
  %t61 = call %"std/prelude/map:MapEntry.1eb2466213689e002f25e81e83536e78" @std_2fprelude_2fmap_3aMapEntry_3cI64_2c_20compiler_2ftyped_3aExpr_26_3e_2ector(ptr %v1, ptr %v0, i64 %a2, ptr %a3)
  store %"std/prelude/map:MapEntry.1eb2466213689e002f25e81e83536e78" %t61, ptr %l30
  br label %bb9
bb9:
  %t62 = load %"std/prelude/map:MapEntry.1eb2466213689e002f25e81e83536e78", ptr %l30
  %t63 = load ptr, ptr %l26, !tbaa !29
  %t64 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t63, i32 0, i32 0
  %t65 = load i64, ptr %l27, !tbaa !24
  %t66 = getelementptr { i64, ptr }, ptr %t64, i32 0, i32 1
  %t67 = load ptr, ptr %t66, !tbaa !27
  %t68 = getelementptr %"std/prelude/map:MapEntry.1eb2466213689e002f25e81e83536e78", ptr %t67, i64 %t65
  store %"std/prelude/map:MapEntry.1eb2466213689e002f25e81e83536e78" %t62, ptr %t68
  %t69 = load ptr, ptr %l0, !tbaa !29
  %t70 = load i64, ptr %l4, !tbaa !24
  %t71 = load ptr, ptr %l0, !tbaa !29
  %t72 = load i64, ptr %l1, !tbaa !24
  %t74 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t71, i32 0, i32 2
  %t76 = getelementptr { i64, ptr }, ptr %t74, i32 0, i32 1
  %t77 = load ptr, ptr %t76, !tbaa !27
  %t78 = getelementptr i64, ptr %t77, i64 %t72
  %t79 = load i64, ptr %t78, !tbaa !34
  %t82 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t69, i32 0, i32 1
  %t84 = getelementptr { i64, ptr }, ptr %t82, i32 0, i32 1
  %t85 = load ptr, ptr %t84, !tbaa !27
  %t86 = getelementptr i64, ptr %t85, i64 %t70
  store i64 %t79, ptr %t86, !tbaa !34
  %t87 = load ptr, ptr %l0, !tbaa !29
  %t88 = load i64, ptr %l1, !tbaa !24
  %t89 = load i64, ptr %l4, !tbaa !24
  %t92 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t87, i32 0, i32 2
  %t94 = getelementptr { i64, ptr }, ptr %t92, i32 0, i32 1
  %t95 = load ptr, ptr %t94, !tbaa !27
  %t96 = getelementptr i64, ptr %t95, i64 %t88
  store i64 %t89, ptr %t96, !tbaa !34
  %t97 = load ptr, ptr %l0, !tbaa !29
  store ptr %t97, ptr %l39, !tbaa !29
  %t98 = load ptr, ptr %l39, !tbaa !29
  %t99 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t98, i32 0, i32 4
  %t100 = load i64, ptr %t99, !tbaa !24
  %t102 = add i64 %t100, 1
  %t104 = load ptr, ptr %l39, !tbaa !29
  %t105 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t104, i32 0, i32 4
  store i64 %t102, ptr %t105, !tbaa !24
  %t106 = load ptr, ptr %l0, !tbaa !29
  %t108 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t106, i32 0, i32 4
  %t109 = load i64, ptr %t108, !tbaa !24
  %t111 = mul i64 %t109, 4
  %t112 = load ptr, ptr %l0, !tbaa !29
  %t114 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t112, i32 0, i32 2
  %t115 = load { i64, ptr }, ptr %t114, !tbaa !27
  %t117 = extractvalue { i64, ptr } %t115, 0
  %t119 = mul i64 %t117, 3
  %t122 = icmp sgt i64 %t111, %t119
  br i1 %t122, label %bb10, label %bb11
bb10:
  %t124 = load ptr, ptr %l0, !tbaa !29
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2ftyped_3aExpr_26_3e_H655fba6638d2279e16acb109e1654847(ptr %v0, ptr %t124)
  br label %bb12
bb11:
  br label %bb13
bb12:
  br label %bb13
bb13:
  br label %ret
ret:
  ret void
}

define dso_local { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2ftyped_3aExpr_26_3e_H7bce527c45ac5d04c4da61522877f354(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca i64
  %l3 = alloca i64
  %l4 = alloca i64
  %l11 = alloca i64
  %l35 = alloca ptr
  %l36 = alloca i64
  %l39 = alloca i64
  %l42 = alloca ptr
  %rv = alloca { i32, i64 }
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t1, i32 0, i32 4
  %t4 = load i64, ptr %t3, !tbaa !24
  %t6 = icmp eq i64 %t4, 0
  br i1 %t6, label %bb1, label %bb2
bb1:
  %t9 = insertvalue { i32, i64 } zeroinitializer, i32 65536, 0
  store { i32, i64 } %t9, ptr %rv
  br label %ret
bb2:
  br label %bb3
bb3:
  %t10 = load ptr, ptr %l0, !tbaa !29
  %t11 = load i64, ptr %l1, !tbaa !24
  %t14 = call i64 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Array_3ccompiler_2ftyped_3aBl_He88cfdc4919e1dee4cfd0cdecebbca1d(ptr %v0, ptr %t10, i64 %t11)
  store i64 %t14, ptr %l11
  br label %bb4
bb4:
  %t15 = load i64, ptr %l11, !tbaa !24
  store i64 %t15, ptr %l2, !tbaa !24
  store i64 -1, ptr %l3, !tbaa !24
  %t16 = load ptr, ptr %l0, !tbaa !29
  %t17 = load i64, ptr %l2, !tbaa !24
  %t19 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t16, i32 0, i32 2
  %t21 = getelementptr { i64, ptr }, ptr %t19, i32 0, i32 1
  %t22 = load ptr, ptr %t21, !tbaa !27
  %t23 = getelementptr i64, ptr %t22, i64 %t17
  %t24 = load i64, ptr %t23, !tbaa !34
  store i64 %t24, ptr %l4, !tbaa !24
  br label %bb5
bb5:
  %t26 = load i64, ptr %l4, !tbaa !24
  %t28 = icmp sge i64 %t26, 0
  %t30 = xor i1 %t28, true
  br i1 %t30, label %bb6, label %bb7
bb6:
  br label %bb17
bb7:
  br label %bb8
bb8:
  %t32 = load ptr, ptr %l0, !tbaa !29
  %t33 = load i64, ptr %l4, !tbaa !24
  %t35 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t32, i32 0, i32 0
  %t37 = getelementptr { i64, ptr }, ptr %t35, i32 0, i32 1
  %t38 = load ptr, ptr %t37, !tbaa !27
  %t39 = getelementptr %"std/prelude/map:MapEntry.1eb2466213689e002f25e81e83536e78", ptr %t38, i64 %t33
  %t40 = getelementptr %"std/prelude/map:MapEntry.1eb2466213689e002f25e81e83536e78", ptr %t39, i32 0, i32 0
  %t41 = load i64, ptr %t40, !tbaa !24
  %t42 = load i64, ptr %l1, !tbaa !24
  %t45 = icmp eq i64 %t41, %t42
  br i1 %t45, label %bb9, label %bb10
bb9:
  %t47 = load i64, ptr %l3, !tbaa !24
  %t49 = icmp slt i64 %t47, 0
  br i1 %t49, label %bb11, label %bb12
bb10:
  br label %bb15
bb11:
  %t51 = load ptr, ptr %l0, !tbaa !29
  %t52 = load i64, ptr %l2, !tbaa !24
  %t53 = load ptr, ptr %l0, !tbaa !29
  %t54 = load i64, ptr %l4, !tbaa !24
  %t56 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t53, i32 0, i32 1
  %t58 = getelementptr { i64, ptr }, ptr %t56, i32 0, i32 1
  %t59 = load ptr, ptr %t58, !tbaa !27
  %t60 = getelementptr i64, ptr %t59, i64 %t54
  %t61 = load i64, ptr %t60, !tbaa !34
  %t64 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t51, i32 0, i32 2
  %t66 = getelementptr { i64, ptr }, ptr %t64, i32 0, i32 1
  %t67 = load ptr, ptr %t66, !tbaa !27
  %t68 = getelementptr i64, ptr %t67, i64 %t52
  store i64 %t61, ptr %t68, !tbaa !34
  br label %bb13
bb12:
  %t69 = load ptr, ptr %l0, !tbaa !29
  %t70 = load i64, ptr %l3, !tbaa !24
  %t71 = load ptr, ptr %l0, !tbaa !29
  %t72 = load i64, ptr %l4, !tbaa !24
  %t74 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t71, i32 0, i32 1
  %t76 = getelementptr { i64, ptr }, ptr %t74, i32 0, i32 1
  %t77 = load ptr, ptr %t76, !tbaa !27
  %t78 = getelementptr i64, ptr %t77, i64 %t72
  %t79 = load i64, ptr %t78, !tbaa !34
  %t82 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t69, i32 0, i32 1
  %t84 = getelementptr { i64, ptr }, ptr %t82, i32 0, i32 1
  %t85 = load ptr, ptr %t84, !tbaa !27
  %t86 = getelementptr i64, ptr %t85, i64 %t70
  store i64 %t79, ptr %t86, !tbaa !34
  br label %bb13
bb13:
  %t87 = load ptr, ptr %l0, !tbaa !29
  store ptr %t87, ptr %l35, !tbaa !29
  %t88 = load i64, ptr %l4, !tbaa !24
  store i64 %t88, ptr %l36, !tbaa !24
  %t89 = load ptr, ptr %l0, !tbaa !29
  %t91 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t89, i32 0, i32 5
  %t92 = load i64, ptr %t91, !tbaa !24
  %t94 = call i64 @std_2fprelude_2fmap_2efreeLink(i64 %t92)
  store i64 %t94, ptr %l39
  br label %bb14
bb14:
  %t95 = load i64, ptr %l39, !tbaa !24
  %t96 = load ptr, ptr %l35, !tbaa !29
  %t97 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t96, i32 0, i32 1
  %t98 = load i64, ptr %l36, !tbaa !24
  %t99 = getelementptr { i64, ptr }, ptr %t97, i32 0, i32 1
  %t100 = load ptr, ptr %t99, !tbaa !27
  %t101 = getelementptr i64, ptr %t100, i64 %t98
  store i64 %t95, ptr %t101, !tbaa !34
  %t102 = load ptr, ptr %l0, !tbaa !29
  %t103 = load i64, ptr %l4, !tbaa !24
  %t106 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t102, i32 0, i32 5
  store i64 %t103, ptr %t106, !tbaa !24
  %t107 = load ptr, ptr %l0, !tbaa !29
  store ptr %t107, ptr %l42, !tbaa !29
  %t108 = load ptr, ptr %l42, !tbaa !29
  %t109 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t108, i32 0, i32 4
  %t110 = load i64, ptr %t109, !tbaa !24
  %t112 = sub i64 %t110, 1
  %t114 = load ptr, ptr %l42, !tbaa !29
  %t115 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t114, i32 0, i32 4
  store i64 %t112, ptr %t115, !tbaa !24
  %t116 = load i64, ptr %l4, !tbaa !24
  %t118 = insertvalue { i32, i64 } zeroinitializer, i64 %t116, 1
  store { i32, i64 } %t118, ptr %rv
  br label %ret
bb15:
  %t119 = load i64, ptr %l4, !tbaa !24
  store i64 %t119, ptr %l3, !tbaa !24
  br label %bb16
bb16:
  %t121 = load ptr, ptr %l0, !tbaa !29
  %t122 = load i64, ptr %l4, !tbaa !24
  %t124 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t121, i32 0, i32 1
  %t126 = getelementptr { i64, ptr }, ptr %t124, i32 0, i32 1
  %t127 = load ptr, ptr %t126, !tbaa !27
  %t128 = getelementptr i64, ptr %t127, i64 %t122
  %t129 = load i64, ptr %t128, !tbaa !34
  store i64 %t129, ptr %l4, !tbaa !24
  br label %bb5
bb17:
  %t132 = insertvalue { i32, i64 } zeroinitializer, i32 65536, 0
  store { i32, i64 } %t132, ptr %rv
  br label %ret
ret:
  %rr = load { i32, i64 }, ptr %rv
  ret { i32, i64 } %rr
}

@std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2ftyped_3aExpr_26_3e_H7e82b4dbdb79c77bc51fdaf9d4704834 = dso_local alias %"std/prelude/map:MapIter.bf5835bb10600fe6a7fc1da14a6360d9" (ptr, ptr, ptr), ptr @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2eIter_3cI64_2c_20I64_3e
define dso_local i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2ftyped_3aExpr_26_3e_Hb9b7b1d0a60c104971d2bbda63d84eec(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l3 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i32
  %l11 = alloca %"std/prelude/map:MapEntry.1eb2466213689e002f25e81e83536e78"
  %rv = alloca i1
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t5 = call { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2ftyped_3aExpr_26_3e_H7bce527c45ac5d04c4da61522877f354(ptr %v0, ptr %t1, i64 %a1)
  %t6 = extractvalue { i32, i64 } %t5, 1
  %t7 = extractvalue { i32, i64 } %t5, 0
  store i32 %t7, ptr %l7
  %t8 = icmp ne i32 %t7, 0
  br i1 %t8, label %bb2, label %ok.9, !prof !99
ok.9:
  store i64 %t6, ptr %l6
  br label %bb1
bb1:
  %t10 = load i64, ptr %l6, !tbaa !24
  store i64 %t10, ptr %l3, !tbaa !24
  br label %bb4
bb2:
  br label %bb3
bb3:
  store i1 false, ptr %rv
  br label %ret
bb4:
  %t12 = load i64, ptr %l3, !tbaa !24
  %t13 = load ptr, ptr %l0, !tbaa !29
  %t16 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t13, i32 0, i32 0
  %t18 = getelementptr { i64, ptr }, ptr %t16, i32 0, i32 1
  %t19 = load ptr, ptr %t18, !tbaa !27
  %t20 = getelementptr %"std/prelude/map:MapEntry.1eb2466213689e002f25e81e83536e78", ptr %t19, i64 %t12
  %t21 = load %"std/prelude/map:MapEntry.1eb2466213689e002f25e81e83536e78", ptr %t20
  store %"std/prelude/map:MapEntry.1eb2466213689e002f25e81e83536e78" %t21, ptr %l11
  store i1 true, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2ftyped_3aExpr_26_3e_He8fa2eab054d0b98ccbd3d6295fac885(ptr %v0, ptr %v1, ptr %a0, i64 %a1, ptr %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca ptr
  %l3 = alloca i64
  %l4 = alloca i64
  %l9 = alloca ptr
  %l15 = alloca i64
  %t17 = alloca i64
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  store ptr %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t1, i32 0, i32 2
  %t4 = load { i64, ptr }, ptr %t3, !tbaa !27
  %t6 = extractvalue { i64, ptr } %t4, 0
  %t8 = icmp eq i64 %t6, 0
  br i1 %t8, label %bb1, label %bb2
bb1:
  %t10 = load ptr, ptr %l0, !tbaa !29
  store ptr %t10, ptr %l9, !tbaa !29
  %t11 = icmp sge i64 8, 0
  br i1 %t11, label %bb3, label %bb4
bb2:
  br label %bb7
bb3:
  %t13 = icmp sle i64 8, 1152921504606846975
  br i1 %t13, label %bb5, label %bb6
bb4:
  call void @__olang_check_failed(ptr @olang_loc_e5286c8a428bda49_36c815cd4432524d)
  unreachable
bb5:
  %t15 = mul i64 8, 8
  %t16 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t15)
  store i64 0, ptr %t17
  br label %fill.18
fill.18:
  %t21 = load i64, ptr %t17
  %t22 = icmp slt i64 %t21, 8
  br i1 %t22, label %fillb.19, label %filld.20
fillb.19:
  %t23 = getelementptr i64, ptr %t16, i64 %t21
  store i64 -1, ptr %t23
  %t24 = add i64 %t21, 1
  store i64 %t24, ptr %t17
  br label %fill.18
filld.20:
  %t25 = insertvalue { i64, ptr } undef, i64 8, 0
  %t26 = insertvalue { i64, ptr } %t25, ptr %t16, 1
  %t28 = load ptr, ptr %l9, !tbaa !29
  %t29 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t28, i32 0, i32 2
  store { i64, ptr } %t26, ptr %t29, !tbaa !27
  br label %bb7
bb6:
  call void @__olang_check_failed(ptr @olang_loc_e5286c8a428bda49_36c815cd4432524d)
  unreachable
bb7:
  %t30 = load ptr, ptr %l0, !tbaa !29
  %t31 = load i64, ptr %l1, !tbaa !24
  %t34 = call i64 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Array_3ccompiler_2ftyped_3aBl_He88cfdc4919e1dee4cfd0cdecebbca1d(ptr %v0, ptr %t30, i64 %t31)
  store i64 %t34, ptr %l15
  br label %bb8
bb8:
  %t35 = load i64, ptr %l15, !tbaa !24
  store i64 %t35, ptr %l3, !tbaa !24
  %t36 = load ptr, ptr %l0, !tbaa !29
  %t37 = load i64, ptr %l3, !tbaa !24
  %t39 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t36, i32 0, i32 2
  %t41 = getelementptr { i64, ptr }, ptr %t39, i32 0, i32 1
  %t42 = load ptr, ptr %t41, !tbaa !27
  %t43 = getelementptr i64, ptr %t42, i64 %t37
  %t44 = load i64, ptr %t43, !tbaa !34
  store i64 %t44, ptr %l4, !tbaa !24
  br label %bb9
bb9:
  %t46 = load i64, ptr %l4, !tbaa !24
  %t48 = icmp sge i64 %t46, 0
  %t50 = xor i1 %t48, true
  br i1 %t50, label %bb10, label %bb11
bb10:
  br label %bb17
bb11:
  br label %bb12
bb12:
  %t52 = load ptr, ptr %l0, !tbaa !29
  %t53 = load i64, ptr %l4, !tbaa !24
  %t55 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t52, i32 0, i32 0
  %t57 = getelementptr { i64, ptr }, ptr %t55, i32 0, i32 1
  %t58 = load ptr, ptr %t57, !tbaa !27
  %t59 = getelementptr %"std/prelude/map:MapEntry.1eb2466213689e002f25e81e83536e78", ptr %t58, i64 %t53
  %t60 = getelementptr %"std/prelude/map:MapEntry.1eb2466213689e002f25e81e83536e78", ptr %t59, i32 0, i32 0
  %t61 = load i64, ptr %t60, !tbaa !24
  %t62 = load i64, ptr %l1, !tbaa !24
  %t65 = icmp eq i64 %t61, %t62
  br i1 %t65, label %bb13, label %bb14
bb13:
  %t67 = load ptr, ptr %l0, !tbaa !29
  %t68 = load i64, ptr %l4, !tbaa !24
  %t69 = load ptr, ptr %l2, !tbaa !29
  %t72 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t67, i32 0, i32 0
  %t74 = getelementptr { i64, ptr }, ptr %t72, i32 0, i32 1
  %t75 = load ptr, ptr %t74, !tbaa !27
  %t76 = getelementptr %"std/prelude/map:MapEntry.1eb2466213689e002f25e81e83536e78", ptr %t75, i64 %t68
  %t77 = getelementptr %"std/prelude/map:MapEntry.1eb2466213689e002f25e81e83536e78", ptr %t76, i32 0, i32 1
  store ptr %t69, ptr %t77, !tbaa !29
  br label %ret
bb14:
  br label %bb15
bb15:
  br label %bb16
bb16:
  %t78 = load ptr, ptr %l0, !tbaa !29
  %t79 = load i64, ptr %l4, !tbaa !24
  %t81 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t78, i32 0, i32 1
  %t83 = getelementptr { i64, ptr }, ptr %t81, i32 0, i32 1
  %t84 = load ptr, ptr %t83, !tbaa !27
  %t85 = getelementptr i64, ptr %t84, i64 %t79
  %t86 = load i64, ptr %t85, !tbaa !34
  store i64 %t86, ptr %l4, !tbaa !24
  br label %bb9
bb17:
  %t88 = load ptr, ptr %l0, !tbaa !29
  %t89 = load i64, ptr %l3, !tbaa !24
  %t90 = load i64, ptr %l1, !tbaa !24
  %t91 = load ptr, ptr %l2, !tbaa !29
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2ftyped_3aExpr_26_3e_H15df9b3cd33c865ecbfff8d817188b6b(ptr %v0, ptr %v1, ptr %t88, i64 %t89, i64 %t90, ptr %t91)
  br label %bb18
bb18:
  br label %ret
ret:
  ret void
}

@std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2ftyped_3aVersions_2_H52a762d129f91e4296595abcf4919501 = dso_local alias void (ptr, ptr, ptr, i64, i64, ptr), ptr @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2ftyped_3aExpr_26_3e_H15df9b3cd33c865ecbfff8d817188b6b
@std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2ftyped_3aVersions_2_H80889f9014c00d8025b220de3797e9a9 = dso_local alias void (ptr, ptr, ptr, i64, ptr), ptr @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2ftyped_3aExpr_26_3e_He8fa2eab054d0b98ccbd3d6295fac885
define dso_local i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2ftyped_3aVersions_2_H8102174f5d79e837358978914fd687c6(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %r = tail call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_H068cfedf7407289d149ee3c6f4c8aa20(ptr %v0, ptr %a0, i64 %a1)
  ret i1 %r
}

define dso_local void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2ftext_3aString_H77988c67796c02c095b36d4d78054ed2(ptr %v0, ptr %v1, ptr %a0, i64 %a1, i64 %a2, { i64, ptr } %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l4 = alloca i64
  %l9 = alloca ptr
  %l13 = alloca i64
  %l23 = alloca ptr
  %l26 = alloca ptr
  %l27 = alloca i64
  %l30 = alloca %"std/prelude/map:MapEntry.8d509622153b47f1a5f79c42c8367406"
  %l39 = alloca ptr
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t1, i32 0, i32 5
  %t4 = load i64, ptr %t3, !tbaa !24
  store i64 %t4, ptr %l4, !tbaa !24
  %t6 = load i64, ptr %l4, !tbaa !24
  %t8 = icmp sge i64 %t6, 0
  br i1 %t8, label %bb1, label %bb2
bb1:
  %t10 = load ptr, ptr %l0, !tbaa !29
  store ptr %t10, ptr %l9, !tbaa !29
  %t11 = load ptr, ptr %l0, !tbaa !29
  %t12 = load i64, ptr %l4, !tbaa !24
  %t14 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t11, i32 0, i32 1
  %t16 = getelementptr { i64, ptr }, ptr %t14, i32 0, i32 1
  %t17 = load ptr, ptr %t16, !tbaa !27
  %t18 = getelementptr i64, ptr %t17, i64 %t12
  %t19 = load i64, ptr %t18, !tbaa !34
  %t21 = call i64 @std_2fprelude_2fmap_2efreeLink(i64 %t19)
  store i64 %t21, ptr %l13
  br label %bb3
bb2:
  %t22 = load ptr, ptr %l0, !tbaa !29
  %t24 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t22, i32 0, i32 3
  %t25 = load i64, ptr %t24, !tbaa !24
  %t26 = load ptr, ptr %l0, !tbaa !29
  %t28 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t26, i32 0, i32 0
  %t29 = load { i64, ptr }, ptr %t28, !tbaa !27
  %t31 = extractvalue { i64, ptr } %t29, 0
  %t34 = icmp eq i64 %t25, %t31
  br i1 %t34, label %bb4, label %bb5
bb3:
  %t36 = load i64, ptr %l13, !tbaa !24
  %t37 = load ptr, ptr %l9, !tbaa !29
  %t38 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t37, i32 0, i32 5
  store i64 %t36, ptr %t38, !tbaa !24
  br label %bb8
bb4:
  %t39 = load ptr, ptr %l0, !tbaa !29
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2ftext_3aString_H578f6ddf8deeede0d17903533a2e3444(ptr %v0, ptr %t39)
  br label %bb6
bb5:
  br label %bb7
bb6:
  br label %bb7
bb7:
  %t41 = load ptr, ptr %l0, !tbaa !29
  %t43 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t41, i32 0, i32 3
  %t44 = load i64, ptr %t43, !tbaa !24
  store i64 %t44, ptr %l4, !tbaa !24
  %t46 = load ptr, ptr %l0, !tbaa !29
  store ptr %t46, ptr %l23, !tbaa !29
  %t47 = load ptr, ptr %l23, !tbaa !29
  %t48 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t47, i32 0, i32 3
  %t49 = load i64, ptr %t48, !tbaa !24
  %t51 = add i64 %t49, 1
  %t53 = load ptr, ptr %l23, !tbaa !29
  %t54 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t53, i32 0, i32 3
  store i64 %t51, ptr %t54, !tbaa !24
  br label %bb8
bb8:
  %t55 = load ptr, ptr %l0, !tbaa !29
  store ptr %t55, ptr %l26, !tbaa !29
  %t56 = load i64, ptr %l4, !tbaa !24
  store i64 %t56, ptr %l27, !tbaa !24
  %t61 = call %"std/prelude/map:MapEntry.8d509622153b47f1a5f79c42c8367406" @std_2fprelude_2fmap_3aMapEntry_3cI64_2c_20Array_3ccompiler_2ftyped_3aCapture_26_3e_3e_2ector(ptr %v1, ptr %v0, i64 %a2, { i64, ptr } %a3)
  store %"std/prelude/map:MapEntry.8d509622153b47f1a5f79c42c8367406" %t61, ptr %l30
  br label %bb9
bb9:
  %t62 = load %"std/prelude/map:MapEntry.8d509622153b47f1a5f79c42c8367406", ptr %l30
  %t63 = load ptr, ptr %l26, !tbaa !29
  %t64 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t63, i32 0, i32 0
  %t65 = load i64, ptr %l27, !tbaa !24
  %t66 = getelementptr { i64, ptr }, ptr %t64, i32 0, i32 1
  %t67 = load ptr, ptr %t66, !tbaa !27
  %t68 = getelementptr %"std/prelude/map:MapEntry.8d509622153b47f1a5f79c42c8367406", ptr %t67, i64 %t65
  store %"std/prelude/map:MapEntry.8d509622153b47f1a5f79c42c8367406" %t62, ptr %t68
  %t69 = load ptr, ptr %l0, !tbaa !29
  %t70 = load i64, ptr %l4, !tbaa !24
  %t71 = load ptr, ptr %l0, !tbaa !29
  %t72 = load i64, ptr %l1, !tbaa !24
  %t74 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t71, i32 0, i32 2
  %t76 = getelementptr { i64, ptr }, ptr %t74, i32 0, i32 1
  %t77 = load ptr, ptr %t76, !tbaa !27
  %t78 = getelementptr i64, ptr %t77, i64 %t72
  %t79 = load i64, ptr %t78, !tbaa !34
  %t82 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t69, i32 0, i32 1
  %t84 = getelementptr { i64, ptr }, ptr %t82, i32 0, i32 1
  %t85 = load ptr, ptr %t84, !tbaa !27
  %t86 = getelementptr i64, ptr %t85, i64 %t70
  store i64 %t79, ptr %t86, !tbaa !34
  %t87 = load ptr, ptr %l0, !tbaa !29
  %t88 = load i64, ptr %l1, !tbaa !24
  %t89 = load i64, ptr %l4, !tbaa !24
  %t92 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t87, i32 0, i32 2
  %t94 = getelementptr { i64, ptr }, ptr %t92, i32 0, i32 1
  %t95 = load ptr, ptr %t94, !tbaa !27
  %t96 = getelementptr i64, ptr %t95, i64 %t88
  store i64 %t89, ptr %t96, !tbaa !34
  %t97 = load ptr, ptr %l0, !tbaa !29
  store ptr %t97, ptr %l39, !tbaa !29
  %t98 = load ptr, ptr %l39, !tbaa !29
  %t99 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t98, i32 0, i32 4
  %t100 = load i64, ptr %t99, !tbaa !24
  %t102 = add i64 %t100, 1
  %t104 = load ptr, ptr %l39, !tbaa !29
  %t105 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t104, i32 0, i32 4
  store i64 %t102, ptr %t105, !tbaa !24
  %t106 = load ptr, ptr %l0, !tbaa !29
  %t108 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t106, i32 0, i32 4
  %t109 = load i64, ptr %t108, !tbaa !24
  %t111 = mul i64 %t109, 4
  %t112 = load ptr, ptr %l0, !tbaa !29
  %t114 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t112, i32 0, i32 2
  %t115 = load { i64, ptr }, ptr %t114, !tbaa !27
  %t117 = extractvalue { i64, ptr } %t115, 0
  %t119 = mul i64 %t117, 3
  %t122 = icmp sgt i64 %t111, %t119
  br i1 %t122, label %bb10, label %bb11
bb10:
  %t124 = load ptr, ptr %l0, !tbaa !29
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Array_3ccompiler_2ftyped_3aBl_Hc5028bb32daef060d237a7608c857f1d(ptr %v0, ptr %t124)
  br label %bb12
bb11:
  br label %bb13
bb12:
  br label %bb13
bb13:
  br label %ret
ret:
  ret void
}

define dso_local void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2fvec_3aVec_3cI_H83a8a603222d4de24a3f3ca52e4f26bc(ptr %v0, ptr %v1, ptr %a0, i64 %a1, i64 %a2, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l4 = alloca i64
  %l9 = alloca ptr
  %l13 = alloca i64
  %l23 = alloca ptr
  %l26 = alloca ptr
  %l27 = alloca i64
  %l28 = alloca i64
  %l29 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l31 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l32 = alloca %"std/prelude/map:MapEntry.f17f3f0202174eb6591f595766c15613"
  %l34 = alloca %"std/prelude/map:MapEntry.f17f3f0202174eb6591f595766c15613"
  %l43 = alloca ptr
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t1, i32 0, i32 5
  %t4 = load i64, ptr %t3, !tbaa !24
  store i64 %t4, ptr %l4, !tbaa !24
  %t6 = load i64, ptr %l4, !tbaa !24
  %t8 = icmp sge i64 %t6, 0
  br i1 %t8, label %bb1, label %bb2
bb1:
  %t10 = load ptr, ptr %l0, !tbaa !29
  store ptr %t10, ptr %l9, !tbaa !29
  %t11 = load ptr, ptr %l0, !tbaa !29
  %t12 = load i64, ptr %l4, !tbaa !24
  %t14 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t11, i32 0, i32 1
  %t16 = getelementptr { i64, ptr }, ptr %t14, i32 0, i32 1
  %t17 = load ptr, ptr %t16, !tbaa !27
  %t18 = getelementptr i64, ptr %t17, i64 %t12
  %t19 = load i64, ptr %t18, !tbaa !34
  %t21 = call i64 @std_2fprelude_2fmap_2efreeLink(i64 %t19)
  store i64 %t21, ptr %l13
  br label %bb3
bb2:
  %t22 = load ptr, ptr %l0, !tbaa !29
  %t24 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t22, i32 0, i32 3
  %t25 = load i64, ptr %t24, !tbaa !24
  %t26 = load ptr, ptr %l0, !tbaa !29
  %t28 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t26, i32 0, i32 0
  %t29 = load { i64, ptr }, ptr %t28, !tbaa !27
  %t31 = extractvalue { i64, ptr } %t29, 0
  %t34 = icmp eq i64 %t25, %t31
  br i1 %t34, label %bb4, label %bb5
bb3:
  %t36 = load i64, ptr %l13, !tbaa !24
  %t37 = load ptr, ptr %l9, !tbaa !29
  %t38 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t37, i32 0, i32 5
  store i64 %t36, ptr %t38, !tbaa !24
  br label %bb8
bb4:
  %t39 = load ptr, ptr %l0, !tbaa !29
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2fvec_3aVec_3cI_Haa7b37fb55048dd0c74843ff955f57e2(ptr %v0, ptr %t39)
  br label %bb6
bb5:
  br label %bb7
bb6:
  br label %bb7
bb7:
  %t41 = load ptr, ptr %l0, !tbaa !29
  %t43 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t41, i32 0, i32 3
  %t44 = load i64, ptr %t43, !tbaa !24
  store i64 %t44, ptr %l4, !tbaa !24
  %t46 = load ptr, ptr %l0, !tbaa !29
  store ptr %t46, ptr %l23, !tbaa !29
  %t47 = load ptr, ptr %l23, !tbaa !29
  %t48 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t47, i32 0, i32 3
  %t49 = load i64, ptr %t48, !tbaa !24
  %t51 = add i64 %t49, 1
  %t53 = load ptr, ptr %l23, !tbaa !29
  %t54 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t53, i32 0, i32 3
  store i64 %t51, ptr %t54, !tbaa !24
  br label %bb8
bb8:
  %t55 = load ptr, ptr %l0, !tbaa !29
  store ptr %t55, ptr %l26, !tbaa !29
  %t56 = load i64, ptr %l4, !tbaa !24
  store i64 %t56, ptr %l27, !tbaa !24
  store i64 %a2, ptr %l28, !tbaa !24
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %a3, ptr %l29
  %t60 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cI64_3e(ptr %v0, ptr %l29)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t60, ptr %l31
  br label %bb9
bb9:
  %t61 = load i64, ptr %l28, !tbaa !24
  %t62 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l31
  %t63 = call %"std/prelude/map:MapEntry.f17f3f0202174eb6591f595766c15613" @std_2fprelude_2fmap_3aMapEntry_3cI64_2c_20std_2fprelude_2fvec_3aVec_3cI64_3e_3e_2ector(ptr %v0, ptr %v0, i64 %t61, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t62)
  store %"std/prelude/map:MapEntry.f17f3f0202174eb6591f595766c15613" %t63, ptr %l32
  br label %bb10
bb10:
  %t65 = call %"std/prelude/map:MapEntry.f17f3f0202174eb6591f595766c15613" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMapEntry_3cI64_2c_20std_2fprelud_Hff03c904942c15bd0aa9c7c744faa430(ptr %v0, ptr %l32)
  store %"std/prelude/map:MapEntry.f17f3f0202174eb6591f595766c15613" %t65, ptr %l34
  br label %bb11
bb11:
  %t66 = load %"std/prelude/map:MapEntry.f17f3f0202174eb6591f595766c15613", ptr %l34
  %t67 = load ptr, ptr %l26, !tbaa !29
  %t68 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t67, i32 0, i32 0
  %t69 = load i64, ptr %l27, !tbaa !24
  %t70 = getelementptr { i64, ptr }, ptr %t68, i32 0, i32 1
  %t71 = load ptr, ptr %t70, !tbaa !27
  %t72 = getelementptr %"std/prelude/map:MapEntry.f17f3f0202174eb6591f595766c15613", ptr %t71, i64 %t69
  store %"std/prelude/map:MapEntry.f17f3f0202174eb6591f595766c15613" %t66, ptr %t72
  %t73 = load ptr, ptr %l0, !tbaa !29
  %t74 = load i64, ptr %l4, !tbaa !24
  %t75 = load ptr, ptr %l0, !tbaa !29
  %t76 = load i64, ptr %l1, !tbaa !24
  %t78 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t75, i32 0, i32 2
  %t80 = getelementptr { i64, ptr }, ptr %t78, i32 0, i32 1
  %t81 = load ptr, ptr %t80, !tbaa !27
  %t82 = getelementptr i64, ptr %t81, i64 %t76
  %t83 = load i64, ptr %t82, !tbaa !34
  %t86 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t73, i32 0, i32 1
  %t88 = getelementptr { i64, ptr }, ptr %t86, i32 0, i32 1
  %t89 = load ptr, ptr %t88, !tbaa !27
  %t90 = getelementptr i64, ptr %t89, i64 %t74
  store i64 %t83, ptr %t90, !tbaa !34
  %t91 = load ptr, ptr %l0, !tbaa !29
  %t92 = load i64, ptr %l1, !tbaa !24
  %t93 = load i64, ptr %l4, !tbaa !24
  %t96 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t91, i32 0, i32 2
  %t98 = getelementptr { i64, ptr }, ptr %t96, i32 0, i32 1
  %t99 = load ptr, ptr %t98, !tbaa !27
  %t100 = getelementptr i64, ptr %t99, i64 %t92
  store i64 %t93, ptr %t100, !tbaa !34
  %t101 = load ptr, ptr %l0, !tbaa !29
  store ptr %t101, ptr %l43, !tbaa !29
  %t102 = load ptr, ptr %l43, !tbaa !29
  %t103 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t102, i32 0, i32 4
  %t104 = load i64, ptr %t103, !tbaa !24
  %t106 = add i64 %t104, 1
  %t108 = load ptr, ptr %l43, !tbaa !29
  %t109 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t108, i32 0, i32 4
  store i64 %t106, ptr %t109, !tbaa !24
  %t110 = load ptr, ptr %l0, !tbaa !29
  %t112 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t110, i32 0, i32 4
  %t113 = load i64, ptr %t112, !tbaa !24
  %t115 = mul i64 %t113, 4
  %t116 = load ptr, ptr %l0, !tbaa !29
  %t118 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t116, i32 0, i32 2
  %t119 = load { i64, ptr }, ptr %t118, !tbaa !27
  %t121 = extractvalue { i64, ptr } %t119, 0
  %t123 = mul i64 %t121, 3
  %t126 = icmp sgt i64 %t115, %t123
  br i1 %t126, label %bb12, label %bb13
bb12:
  %t128 = load ptr, ptr %l0, !tbaa !29
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2fvec_3aVec_3cI_H6c078a596243b892e1847e2ccd4290dd(ptr %v0, ptr %t128)
  br label %bb14
bb13:
  br label %bb15
bb14:
  br label %bb15
bb15:
  br label %ret
ret:
  ret void
}

define dso_local void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2fvec_3aVec_3cc_H326cc72ba47e1bb28c462bec900fbfa4(ptr %v0, ptr %v1, ptr %a0, i64 %a1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l3 = alloca i64
  %l4 = alloca i64
  %l9 = alloca ptr
  %l15 = alloca i64
  %l27 = alloca ptr
  %l28 = alloca i64
  %l29 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l31 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l35 = alloca ptr
  %l36 = alloca i64
  %l37 = alloca i64
  %l38 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l40 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %s0 = alloca %olang.scope
  %t17 = alloca i64
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t1, i32 0, i32 2
  %t4 = load { i64, ptr }, ptr %t3, !tbaa !27
  %t6 = extractvalue { i64, ptr } %t4, 0
  %t8 = icmp eq i64 %t6, 0
  br i1 %t8, label %bb1, label %bb2
bb1:
  %t10 = load ptr, ptr %l0, !tbaa !29
  store ptr %t10, ptr %l9, !tbaa !29
  %t11 = icmp sge i64 8, 0
  br i1 %t11, label %bb3, label %bb4
bb2:
  br label %bb7
bb3:
  %t13 = icmp sle i64 8, 1152921504606846975
  br i1 %t13, label %bb5, label %bb6
bb4:
  call void @__olang_check_failed(ptr @olang_loc_7d00da40d04b84b5_3222d3b50bce4681)
  unreachable
bb5:
  %t15 = mul i64 8, 8
  %t16 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t15)
  store i64 0, ptr %t17
  br label %fill.18
fill.18:
  %t21 = load i64, ptr %t17
  %t22 = icmp slt i64 %t21, 8
  br i1 %t22, label %fillb.19, label %filld.20
fillb.19:
  %t23 = getelementptr i64, ptr %t16, i64 %t21
  store i64 -1, ptr %t23
  %t24 = add i64 %t21, 1
  store i64 %t24, ptr %t17
  br label %fill.18
filld.20:
  %t25 = insertvalue { i64, ptr } undef, i64 8, 0
  %t26 = insertvalue { i64, ptr } %t25, ptr %t16, 1
  %t28 = load ptr, ptr %l9, !tbaa !29
  %t29 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t28, i32 0, i32 2
  store { i64, ptr } %t26, ptr %t29, !tbaa !27
  br label %bb7
bb6:
  call void @__olang_check_failed(ptr @olang_loc_7d00da40d04b84b5_3222d3b50bce4681)
  unreachable
bb7:
  %t30 = load ptr, ptr %l0, !tbaa !29
  %t31 = load i64, ptr %l1, !tbaa !24
  %t34 = call i64 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Array_3ccompiler_2ftyped_3aBl_He88cfdc4919e1dee4cfd0cdecebbca1d(ptr %v0, ptr %t30, i64 %t31)
  store i64 %t34, ptr %l15
  br label %bb8
bb8:
  %t35 = load i64, ptr %l15, !tbaa !24
  store i64 %t35, ptr %l3, !tbaa !24
  %t36 = load ptr, ptr %l0, !tbaa !29
  %t37 = load i64, ptr %l3, !tbaa !24
  %t39 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t36, i32 0, i32 2
  %t41 = getelementptr { i64, ptr }, ptr %t39, i32 0, i32 1
  %t42 = load ptr, ptr %t41, !tbaa !27
  %t43 = getelementptr i64, ptr %t42, i64 %t37
  %t44 = load i64, ptr %t43, !tbaa !34
  store i64 %t44, ptr %l4, !tbaa !24
  br label %bb9
bb9:
  %t46 = load i64, ptr %l4, !tbaa !24
  %t48 = icmp sge i64 %t46, 0
  %t50 = xor i1 %t48, true
  br i1 %t50, label %bb10, label %bb11
bb10:
  br label %bb18
bb11:
  br label %bb12
bb12:
  %t52 = load ptr, ptr %l0, !tbaa !29
  %t53 = load i64, ptr %l4, !tbaa !24
  %t55 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t52, i32 0, i32 0
  %t57 = getelementptr { i64, ptr }, ptr %t55, i32 0, i32 1
  %t58 = load ptr, ptr %t57, !tbaa !27
  %t59 = getelementptr %"std/prelude/map:MapEntry.f17f3f0202174eb6591f595766c15613", ptr %t58, i64 %t53
  %t60 = getelementptr %"std/prelude/map:MapEntry.f17f3f0202174eb6591f595766c15613", ptr %t59, i32 0, i32 0
  %t61 = load i64, ptr %t60, !tbaa !24
  %t62 = load i64, ptr %l1, !tbaa !24
  %t65 = icmp eq i64 %t61, %t62
  br i1 %t65, label %bb13, label %bb14
bb13:
  %t67 = load ptr, ptr %l0, !tbaa !29
  store ptr %t67, ptr %l27, !tbaa !29
  %t68 = load i64, ptr %l4, !tbaa !24
  store i64 %t68, ptr %l28, !tbaa !24
  %t69 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l2
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t69, ptr %l29
  %t71 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feffects_3alink_3e(ptr %v0, ptr %l29)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t71, ptr %l31
  br label %bb15
bb14:
  br label %bb16
bb15:
  %t72 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l31
  %t73 = load ptr, ptr %l27, !tbaa !29
  %t74 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t73, i32 0, i32 0
  %t75 = load i64, ptr %l28, !tbaa !24
  %t76 = getelementptr { i64, ptr }, ptr %t74, i32 0, i32 1
  %t77 = load ptr, ptr %t76, !tbaa !27
  %t78 = getelementptr %"std/prelude/map:MapEntry.f17f3f0202174eb6591f595766c15613", ptr %t77, i64 %t75
  %t79 = getelementptr %"std/prelude/map:MapEntry.f17f3f0202174eb6591f595766c15613", ptr %t78, i32 0, i32 1
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t72, ptr %t79
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb16:
  br label %bb17
bb17:
  %t80 = load ptr, ptr %l0, !tbaa !29
  %t81 = load i64, ptr %l4, !tbaa !24
  %t83 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t80, i32 0, i32 1
  %t85 = getelementptr { i64, ptr }, ptr %t83, i32 0, i32 1
  %t86 = load ptr, ptr %t85, !tbaa !27
  %t87 = getelementptr i64, ptr %t86, i64 %t81
  %t88 = load i64, ptr %t87, !tbaa !34
  store i64 %t88, ptr %l4, !tbaa !24
  br label %bb9
bb18:
  %t90 = load ptr, ptr %l0, !tbaa !29
  store ptr %t90, ptr %l35, !tbaa !29
  %t91 = load i64, ptr %l3, !tbaa !24
  store i64 %t91, ptr %l36, !tbaa !24
  %t92 = load i64, ptr %l1, !tbaa !24
  store i64 %t92, ptr %l37, !tbaa !24
  %t93 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l2
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t93, ptr %l38
  %t95 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feffects_3alink_3e(ptr %s0, ptr %l38)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t95, ptr %l40
  br label %bb19
bb19:
  %t96 = load ptr, ptr %l35, !tbaa !29
  %t97 = load i64, ptr %l36, !tbaa !24
  %t98 = load i64, ptr %l37, !tbaa !24
  %t99 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l40
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2fvec_3aVec_3cc_Hbd85a50d6d27fe1c69f758c1c1e81060(ptr %v0, ptr %s0, ptr %t96, i64 %t97, i64 %t98, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t99)
  br label %bb20
bb20:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2fvec_3aVec_3cc_H6af57464cd91f7f507562fe7a967832c(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l2 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i32
  %rv = alloca i1
  br label %start
start:
  br label %bb0
bb0:
  %t5 = call { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2fvec_3aVec_3cI_H0bd8b2e51f5f92f67cbd68b5195b203d(ptr %v0, ptr %a0, i64 %a1)
  %t6 = extractvalue { i32, i64 } %t5, 1
  %t7 = extractvalue { i32, i64 } %t5, 0
  store i32 %t7, ptr %l6
  %t8 = icmp ne i32 %t7, 0
  br i1 %t8, label %bb2, label %ok.9, !prof !99
ok.9:
  store i64 %t6, ptr %l5
  br label %bb1
bb1:
  %t10 = load i64, ptr %l5, !tbaa !24
  store i64 %t10, ptr %l2, !tbaa !24
  br label %bb4
bb2:
  br label %bb3
bb3:
  store i1 false, ptr %rv
  br label %ret
bb4:
  store i1 true, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

@std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2fvec_3aVec_3cc_H6f0ddfd6b29a02e4921939af6d0f6ea3 = dso_local alias void (ptr, ptr, ptr, i64, i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"), ptr @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2fvec_3aVec_3cI_H83a8a603222d4de24a3f3ca52e4f26bc
@std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2fvec_3aVec_3cc_H812d4871fea5544bd17001c04038a9fe = dso_local alias i1 (ptr, ptr, i64), ptr @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2fvec_3aVec_3cc_H6af57464cd91f7f507562fe7a967832c
@std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2fvec_3aVec_3cc_H93a96b001ce9074b2340fc5090bc3754 = dso_local alias %"std/prelude/map:MapIter.bf5835bb10600fe6a7fc1da14a6360d9" (ptr, ptr, ptr), ptr @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2eIter_3cI64_2c_20I64_3e
@std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2fvec_3aVec_3cc_Ha97d140a669c19bbbb7e297ebe521011 = dso_local alias i1 (ptr, ptr, i64), ptr @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2fvec_3aVec_3cc_H6af57464cd91f7f507562fe7a967832c
define dso_local void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2fvec_3aVec_3cc_Hc680bc8b736298027ff580de04f60380(ptr %v0, ptr %v1, ptr %a0, i64 %a1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l3 = alloca i64
  %l4 = alloca i64
  %l9 = alloca ptr
  %l15 = alloca i64
  %l27 = alloca ptr
  %l28 = alloca i64
  %l29 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l31 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l35 = alloca ptr
  %l36 = alloca i64
  %l37 = alloca i64
  %l38 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l40 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %t17 = alloca i64
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t1, i32 0, i32 2
  %t4 = load { i64, ptr }, ptr %t3, !tbaa !27
  %t6 = extractvalue { i64, ptr } %t4, 0
  %t8 = icmp eq i64 %t6, 0
  br i1 %t8, label %bb1, label %bb2
bb1:
  %t10 = load ptr, ptr %l0, !tbaa !29
  store ptr %t10, ptr %l9, !tbaa !29
  %t11 = icmp sge i64 8, 0
  br i1 %t11, label %bb3, label %bb4
bb2:
  br label %bb7
bb3:
  %t13 = icmp sle i64 8, 1152921504606846975
  br i1 %t13, label %bb5, label %bb6
bb4:
  call void @__olang_check_failed(ptr @olang_loc_b908bcb2277b691_fbaaf11a41201605)
  unreachable
bb5:
  %t15 = mul i64 8, 8
  %t16 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t15)
  store i64 0, ptr %t17
  br label %fill.18
fill.18:
  %t21 = load i64, ptr %t17
  %t22 = icmp slt i64 %t21, 8
  br i1 %t22, label %fillb.19, label %filld.20
fillb.19:
  %t23 = getelementptr i64, ptr %t16, i64 %t21
  store i64 -1, ptr %t23
  %t24 = add i64 %t21, 1
  store i64 %t24, ptr %t17
  br label %fill.18
filld.20:
  %t25 = insertvalue { i64, ptr } undef, i64 8, 0
  %t26 = insertvalue { i64, ptr } %t25, ptr %t16, 1
  %t28 = load ptr, ptr %l9, !tbaa !29
  %t29 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t28, i32 0, i32 2
  store { i64, ptr } %t26, ptr %t29, !tbaa !27
  br label %bb7
bb6:
  call void @__olang_check_failed(ptr @olang_loc_b908bcb2277b691_fbaaf11a41201605)
  unreachable
bb7:
  %t30 = load ptr, ptr %l0, !tbaa !29
  %t31 = load i64, ptr %l1, !tbaa !24
  %t34 = call i64 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Array_3ccompiler_2ftyped_3aBl_He88cfdc4919e1dee4cfd0cdecebbca1d(ptr %v0, ptr %t30, i64 %t31)
  store i64 %t34, ptr %l15
  br label %bb8
bb8:
  %t35 = load i64, ptr %l15, !tbaa !24
  store i64 %t35, ptr %l3, !tbaa !24
  %t36 = load ptr, ptr %l0, !tbaa !29
  %t37 = load i64, ptr %l3, !tbaa !24
  %t39 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t36, i32 0, i32 2
  %t41 = getelementptr { i64, ptr }, ptr %t39, i32 0, i32 1
  %t42 = load ptr, ptr %t41, !tbaa !27
  %t43 = getelementptr i64, ptr %t42, i64 %t37
  %t44 = load i64, ptr %t43, !tbaa !34
  store i64 %t44, ptr %l4, !tbaa !24
  br label %bb9
bb9:
  %t46 = load i64, ptr %l4, !tbaa !24
  %t48 = icmp sge i64 %t46, 0
  %t50 = xor i1 %t48, true
  br i1 %t50, label %bb10, label %bb11
bb10:
  br label %bb18
bb11:
  br label %bb12
bb12:
  %t52 = load ptr, ptr %l0, !tbaa !29
  %t53 = load i64, ptr %l4, !tbaa !24
  %t55 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t52, i32 0, i32 0
  %t57 = getelementptr { i64, ptr }, ptr %t55, i32 0, i32 1
  %t58 = load ptr, ptr %t57, !tbaa !27
  %t59 = getelementptr %"std/prelude/map:MapEntry.f17f3f0202174eb6591f595766c15613", ptr %t58, i64 %t53
  %t60 = getelementptr %"std/prelude/map:MapEntry.f17f3f0202174eb6591f595766c15613", ptr %t59, i32 0, i32 0
  %t61 = load i64, ptr %t60, !tbaa !24
  %t62 = load i64, ptr %l1, !tbaa !24
  %t65 = icmp eq i64 %t61, %t62
  br i1 %t65, label %bb13, label %bb14
bb13:
  %t67 = load ptr, ptr %l0, !tbaa !29
  store ptr %t67, ptr %l27, !tbaa !29
  %t68 = load i64, ptr %l4, !tbaa !24
  store i64 %t68, ptr %l28, !tbaa !24
  %t69 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l2
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t69, ptr %l29
  %t71 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cI64_3e(ptr %v0, ptr %l29)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t71, ptr %l31
  br label %bb15
bb14:
  br label %bb16
bb15:
  %t72 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l31
  %t73 = load ptr, ptr %l27, !tbaa !29
  %t74 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t73, i32 0, i32 0
  %t75 = load i64, ptr %l28, !tbaa !24
  %t76 = getelementptr { i64, ptr }, ptr %t74, i32 0, i32 1
  %t77 = load ptr, ptr %t76, !tbaa !27
  %t78 = getelementptr %"std/prelude/map:MapEntry.f17f3f0202174eb6591f595766c15613", ptr %t77, i64 %t75
  %t79 = getelementptr %"std/prelude/map:MapEntry.f17f3f0202174eb6591f595766c15613", ptr %t78, i32 0, i32 1
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t72, ptr %t79
  br label %ret
bb16:
  br label %bb17
bb17:
  %t80 = load ptr, ptr %l0, !tbaa !29
  %t81 = load i64, ptr %l4, !tbaa !24
  %t83 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t80, i32 0, i32 1
  %t85 = getelementptr { i64, ptr }, ptr %t83, i32 0, i32 1
  %t86 = load ptr, ptr %t85, !tbaa !27
  %t87 = getelementptr i64, ptr %t86, i64 %t81
  %t88 = load i64, ptr %t87, !tbaa !34
  store i64 %t88, ptr %l4, !tbaa !24
  br label %bb9
bb18:
  %t90 = load ptr, ptr %l0, !tbaa !29
  store ptr %t90, ptr %l35, !tbaa !29
  %t91 = load i64, ptr %l3, !tbaa !24
  store i64 %t91, ptr %l36, !tbaa !24
  %t92 = load i64, ptr %l1, !tbaa !24
  store i64 %t92, ptr %l37, !tbaa !24
  %t93 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l2
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t93, ptr %l38
  %t95 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cI64_3e(ptr %v0, ptr %l38)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t95, ptr %l40
  br label %bb19
bb19:
  %t96 = load ptr, ptr %l35, !tbaa !29
  %t97 = load i64, ptr %l36, !tbaa !24
  %t98 = load i64, ptr %l37, !tbaa !24
  %t99 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l40
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2fvec_3aVec_3cI_H83a8a603222d4de24a3f3ca52e4f26bc(ptr %v0, ptr %v0, ptr %t96, i64 %t97, i64 %t98, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t99)
  br label %bb20
bb20:
  br label %ret
ret:
  ret void
}

define dso_local void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fscope_3averAtom_2c_20I64_3e_H61880cc0c3f5b74e4a95560b6b35e8b3(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca i64
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca ptr
  %l12 = alloca i64
  %l21 = alloca i64
  %l24 = alloca i64
  %l44 = alloca i1
  %l50 = alloca i64
  %t19 = alloca i64
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1, ptr %l8, !tbaa !29
  %t2 = load ptr, ptr %l0, !tbaa !29
  %t4 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t2, i32 0, i32 2
  %t5 = load { i64, ptr }, ptr %t4, !tbaa !27
  %t7 = extractvalue { i64, ptr } %t5, 0
  %t9 = mul i64 %t7, 2
  store i64 %t9, ptr %l12, !tbaa !24
  %t10 = load i64, ptr %l12, !tbaa !24
  %t11 = icmp sge i64 %t10, 0
  br i1 %t11, label %bb1, label %bb2
bb1:
  %t13 = load i64, ptr %l12, !tbaa !24
  %t14 = icmp sle i64 %t13, 1152921504606846975
  br i1 %t14, label %bb3, label %bb4
bb2:
  call void @__olang_check_failed(ptr @olang_loc_4a7008d639b35fc1_60a8879bd714ddc5)
  unreachable
bb3:
  %t16 = load i64, ptr %l12, !tbaa !24
  %t17 = mul i64 %t16, 8
  %t18 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t17)
  store i64 0, ptr %t19
  br label %fill.20
fill.20:
  %t23 = load i64, ptr %t19
  %t24 = icmp slt i64 %t23, %t16
  br i1 %t24, label %fillb.21, label %filld.22
fillb.21:
  %t25 = getelementptr i64, ptr %t18, i64 %t23
  store i64 -1, ptr %t25
  %t26 = add i64 %t23, 1
  store i64 %t26, ptr %t19
  br label %fill.20
filld.22:
  %t27 = insertvalue { i64, ptr } undef, i64 %t16, 0
  %t28 = insertvalue { i64, ptr } %t27, ptr %t18, 1
  %t30 = load ptr, ptr %l8, !tbaa !29
  %t31 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t30, i32 0, i32 2
  store { i64, ptr } %t28, ptr %t31, !tbaa !27
  store i64 0, ptr %l1, !tbaa !24
  %t32 = load ptr, ptr %l0, !tbaa !29
  %t34 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t32, i32 0, i32 3
  %t35 = load i64, ptr %t34, !tbaa !24
  store i64 %t35, ptr %l2, !tbaa !24
  store i64 1, ptr %l3, !tbaa !24
  %t37 = load i64, ptr %l2, !tbaa !24
  %t38 = load i64, ptr %l1, !tbaa !24
  %t41 = icmp sgt i64 %t37, %t38
  br i1 %t41, label %bb5, label %bb6
bb4:
  call void @__olang_check_failed(ptr @olang_loc_4a7008d639b35fc1_60a8879bd714ddc5)
  unreachable
bb5:
  %t43 = load i64, ptr %l3, !tbaa !24
  %t45 = icmp sgt i64 %t43, 0
  br i1 %t45, label %bb7, label %bb8
bb6:
  store i64 0, ptr %l21, !tbaa !24
  br label %bb10
bb7:
  %t47 = load i64, ptr %l2, !tbaa !24
  %t48 = load i64, ptr %l1, !tbaa !24
  %t51 = sub i64 %t47, %t48
  %t52 = load i64, ptr %l3, !tbaa !24
  %t55 = add i64 %t51, %t52
  %t57 = sub i64 %t55, 1
  %t58 = load i64, ptr %l3, !tbaa !24
  %t61 = sdiv i64 %t57, %t58
  store i64 %t61, ptr %l24, !tbaa !24
  br label %bb9
bb8:
  store i64 0, ptr %l24, !tbaa !24
  br label %bb9
bb9:
  %t63 = load i64, ptr %l24, !tbaa !24
  store i64 %t63, ptr %l21, !tbaa !24
  br label %bb10
bb10:
  %t64 = load i64, ptr %l21, !tbaa !24
  store i64 %t64, ptr %l4, !tbaa !24
  store i64 0, ptr %l5, !tbaa !24
  br label %bb11
bb11:
  %t65 = load i64, ptr %l5, !tbaa !24
  %t66 = load i64, ptr %l4, !tbaa !24
  %t69 = icmp slt i64 %t65, %t66
  %t71 = xor i1 %t69, true
  br i1 %t71, label %bb12, label %bb13
bb12:
  br label %bb21
bb13:
  br label %bb14
bb14:
  %t73 = load i64, ptr %l1, !tbaa !24
  %t74 = load i64, ptr %l5, !tbaa !24
  %t75 = load i64, ptr %l3, !tbaa !24
  %t78 = mul i64 %t74, %t75
  %t81 = add i64 %t73, %t78
  store i64 %t81, ptr %l6, !tbaa !24
  %t83 = load ptr, ptr %l0, !tbaa !29
  %t84 = load i64, ptr %l6, !tbaa !24
  %t87 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_H068cfedf7407289d149ee3c6f4c8aa20(ptr %v0, ptr %t83, i64 %t84)
  store i1 %t87, ptr %l44
  br label %bb15
bb15:
  %t88 = load i1, ptr %l44, !tbaa !21
  %t89 = xor i1 %t88, true
  br i1 %t89, label %bb16, label %bb17
bb16:
  br label %bb20
bb17:
  br label %bb18
bb18:
  %t91 = load ptr, ptr %l0, !tbaa !29
  %t92 = load ptr, ptr %l0, !tbaa !29
  %t93 = load i64, ptr %l6, !tbaa !24
  %t95 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t92, i32 0, i32 0
  %t97 = getelementptr { i64, ptr }, ptr %t95, i32 0, i32 1
  %t98 = load ptr, ptr %t97, !tbaa !27
  %t99 = getelementptr %"std/prelude/map:MapEntry.77d571dcfbd22be90356fe294d3b1a19", ptr %t98, i64 %t93
  %t100 = getelementptr %"std/prelude/map:MapEntry.77d571dcfbd22be90356fe294d3b1a19", ptr %t99, i32 0, i32 0
  %t101 = load %"compiler/scope:verAtom", ptr %t100
  %t104 = call i64 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fscope_3averAtom_2c_20I64_3e_Hc47d701965ca8920f073d73abe3135ef(ptr %v0, ptr %t91, %"compiler/scope:verAtom" %t101)
  store i64 %t104, ptr %l50
  br label %bb19
bb19:
  %t105 = load i64, ptr %l50, !tbaa !24
  store i64 %t105, ptr %l7, !tbaa !24
  %t106 = load ptr, ptr %l0, !tbaa !29
  %t107 = load i64, ptr %l6, !tbaa !24
  %t108 = load ptr, ptr %l0, !tbaa !29
  %t109 = load i64, ptr %l7, !tbaa !24
  %t111 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t108, i32 0, i32 2
  %t113 = getelementptr { i64, ptr }, ptr %t111, i32 0, i32 1
  %t114 = load ptr, ptr %t113, !tbaa !27
  %t115 = getelementptr i64, ptr %t114, i64 %t109
  %t116 = load i64, ptr %t115, !tbaa !34
  %t119 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t106, i32 0, i32 1
  %t121 = getelementptr { i64, ptr }, ptr %t119, i32 0, i32 1
  %t122 = load ptr, ptr %t121, !tbaa !27
  %t123 = getelementptr i64, ptr %t122, i64 %t107
  store i64 %t116, ptr %t123, !tbaa !34
  %t124 = load ptr, ptr %l0, !tbaa !29
  %t125 = load i64, ptr %l7, !tbaa !24
  %t126 = load i64, ptr %l6, !tbaa !24
  %t129 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t124, i32 0, i32 2
  %t131 = getelementptr { i64, ptr }, ptr %t129, i32 0, i32 1
  %t132 = load ptr, ptr %t131, !tbaa !27
  %t133 = getelementptr i64, ptr %t132, i64 %t125
  store i64 %t126, ptr %t133, !tbaa !34
  br label %bb20
bb20:
  %t134 = load i64, ptr %l5, !tbaa !24
  %t136 = add i64 %t134, 1
  store i64 %t136, ptr %l5, !tbaa !24
  br label %bb11
bb21:
  br label %ret
ret:
  ret void
}

define dso_local void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fscope_3averAtom_2c_20I64_3e_H7759b0a81475e844ea19f2e055657826(ptr %v0, ptr %a0, i64 %a1, %"compiler/scope:verAtom" %a2, i64 %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l4 = alloca i64
  %l9 = alloca ptr
  %l13 = alloca i64
  %l23 = alloca ptr
  %l26 = alloca ptr
  %l27 = alloca i64
  %l30 = alloca %"std/prelude/map:MapEntry.77d571dcfbd22be90356fe294d3b1a19"
  %l39 = alloca ptr
  %s0 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t1, i32 0, i32 5
  %t4 = load i64, ptr %t3, !tbaa !24
  store i64 %t4, ptr %l4, !tbaa !24
  %t6 = load i64, ptr %l4, !tbaa !24
  %t8 = icmp sge i64 %t6, 0
  br i1 %t8, label %bb1, label %bb2
bb1:
  %t10 = load ptr, ptr %l0, !tbaa !29
  store ptr %t10, ptr %l9, !tbaa !29
  %t11 = load ptr, ptr %l0, !tbaa !29
  %t12 = load i64, ptr %l4, !tbaa !24
  %t14 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t11, i32 0, i32 1
  %t16 = getelementptr { i64, ptr }, ptr %t14, i32 0, i32 1
  %t17 = load ptr, ptr %t16, !tbaa !27
  %t18 = getelementptr i64, ptr %t17, i64 %t12
  %t19 = load i64, ptr %t18, !tbaa !34
  %t21 = call i64 @std_2fprelude_2fmap_2efreeLink(i64 %t19)
  store i64 %t21, ptr %l13
  br label %bb3
bb2:
  %t22 = load ptr, ptr %l0, !tbaa !29
  %t24 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t22, i32 0, i32 3
  %t25 = load i64, ptr %t24, !tbaa !24
  %t26 = load ptr, ptr %l0, !tbaa !29
  %t28 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t26, i32 0, i32 0
  %t29 = load { i64, ptr }, ptr %t28, !tbaa !27
  %t31 = extractvalue { i64, ptr } %t29, 0
  %t34 = icmp eq i64 %t25, %t31
  br i1 %t34, label %bb4, label %bb5
bb3:
  %t36 = load i64, ptr %l13, !tbaa !24
  %t37 = load ptr, ptr %l9, !tbaa !29
  %t38 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t37, i32 0, i32 5
  store i64 %t36, ptr %t38, !tbaa !24
  br label %bb8
bb4:
  %t39 = load ptr, ptr %l0, !tbaa !29
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fscope_3averAtom_2c_20I64_3e_Hc81a30d19ad900e4ade0bdf80bb746a1(ptr %v0, ptr %t39)
  br label %bb6
bb5:
  br label %bb7
bb6:
  br label %bb7
bb7:
  %t41 = load ptr, ptr %l0, !tbaa !29
  %t43 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t41, i32 0, i32 3
  %t44 = load i64, ptr %t43, !tbaa !24
  store i64 %t44, ptr %l4, !tbaa !24
  %t46 = load ptr, ptr %l0, !tbaa !29
  store ptr %t46, ptr %l23, !tbaa !29
  %t47 = load ptr, ptr %l23, !tbaa !29
  %t48 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t47, i32 0, i32 3
  %t49 = load i64, ptr %t48, !tbaa !24
  %t51 = add i64 %t49, 1
  %t53 = load ptr, ptr %l23, !tbaa !29
  %t54 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t53, i32 0, i32 3
  store i64 %t51, ptr %t54, !tbaa !24
  br label %bb8
bb8:
  %t55 = load ptr, ptr %l0, !tbaa !29
  store ptr %t55, ptr %l26, !tbaa !29
  %t56 = load i64, ptr %l4, !tbaa !24
  store i64 %t56, ptr %l27, !tbaa !24
  %t61 = call %"std/prelude/map:MapEntry.77d571dcfbd22be90356fe294d3b1a19" @std_2fprelude_2fmap_3aMapEntry_3ccompiler_2fscope_3averAtom_2c_20I64_3e_2ector(ptr %s0, %"compiler/scope:verAtom" %a2, i64 %a3)
  store %"std/prelude/map:MapEntry.77d571dcfbd22be90356fe294d3b1a19" %t61, ptr %l30
  br label %bb9
bb9:
  %t62 = load %"std/prelude/map:MapEntry.77d571dcfbd22be90356fe294d3b1a19", ptr %l30
  %t63 = load ptr, ptr %l26, !tbaa !29
  %t64 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t63, i32 0, i32 0
  %t65 = load i64, ptr %l27, !tbaa !24
  %t66 = getelementptr { i64, ptr }, ptr %t64, i32 0, i32 1
  %t67 = load ptr, ptr %t66, !tbaa !27
  %t68 = getelementptr %"std/prelude/map:MapEntry.77d571dcfbd22be90356fe294d3b1a19", ptr %t67, i64 %t65
  store %"std/prelude/map:MapEntry.77d571dcfbd22be90356fe294d3b1a19" %t62, ptr %t68
  %t69 = load ptr, ptr %l0, !tbaa !29
  %t70 = load i64, ptr %l4, !tbaa !24
  %t71 = load ptr, ptr %l0, !tbaa !29
  %t72 = load i64, ptr %l1, !tbaa !24
  %t74 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t71, i32 0, i32 2
  %t76 = getelementptr { i64, ptr }, ptr %t74, i32 0, i32 1
  %t77 = load ptr, ptr %t76, !tbaa !27
  %t78 = getelementptr i64, ptr %t77, i64 %t72
  %t79 = load i64, ptr %t78, !tbaa !34
  %t82 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t69, i32 0, i32 1
  %t84 = getelementptr { i64, ptr }, ptr %t82, i32 0, i32 1
  %t85 = load ptr, ptr %t84, !tbaa !27
  %t86 = getelementptr i64, ptr %t85, i64 %t70
  store i64 %t79, ptr %t86, !tbaa !34
  %t87 = load ptr, ptr %l0, !tbaa !29
  %t88 = load i64, ptr %l1, !tbaa !24
  %t89 = load i64, ptr %l4, !tbaa !24
  %t92 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t87, i32 0, i32 2
  %t94 = getelementptr { i64, ptr }, ptr %t92, i32 0, i32 1
  %t95 = load ptr, ptr %t94, !tbaa !27
  %t96 = getelementptr i64, ptr %t95, i64 %t88
  store i64 %t89, ptr %t96, !tbaa !34
  %t97 = load ptr, ptr %l0, !tbaa !29
  store ptr %t97, ptr %l39, !tbaa !29
  %t98 = load ptr, ptr %l39, !tbaa !29
  %t99 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t98, i32 0, i32 4
  %t100 = load i64, ptr %t99, !tbaa !24
  %t102 = add i64 %t100, 1
  %t104 = load ptr, ptr %l39, !tbaa !29
  %t105 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t104, i32 0, i32 4
  store i64 %t102, ptr %t105, !tbaa !24
  %t106 = load ptr, ptr %l0, !tbaa !29
  %t108 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t106, i32 0, i32 4
  %t109 = load i64, ptr %t108, !tbaa !24
  %t111 = mul i64 %t109, 4
  %t112 = load ptr, ptr %l0, !tbaa !29
  %t114 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t112, i32 0, i32 2
  %t115 = load { i64, ptr }, ptr %t114, !tbaa !27
  %t117 = extractvalue { i64, ptr } %t115, 0
  %t119 = mul i64 %t117, 3
  %t122 = icmp sgt i64 %t111, %t119
  br i1 %t122, label %bb10, label %bb11
bb10:
  %t124 = load ptr, ptr %l0, !tbaa !29
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fscope_3averAtom_2c_20I64_3e_H61880cc0c3f5b74e4a95560b6b35e8b3(ptr %v0, ptr %t124)
  br label %bb12
bb11:
  br label %bb13
bb12:
  br label %bb13
bb13:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fscope_3averAtom_2c_20I64_3e_H8d3599a5dddfd883d4d2a8ab668ff9a1(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %r = tail call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_H068cfedf7407289d149ee3c6f4c8aa20(ptr %v0, ptr %a0, i64 %a1)
  ret i1 %r
}

define dso_local i64 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fscope_3averAtom_2c_20I64_3e_Hc47d701965ca8920f073d73abe3135ef(ptr %v0, ptr %a0, %"compiler/scope:verAtom" %a1) #0 {
entry:
  %l2 = alloca %"compiler/scope:verAtom"
  %l4 = alloca i64
  %rv = alloca i64
  br label %start
start:
  br label %bb0
bb0:
  store %"compiler/scope:verAtom" %a1, ptr %l2
  %t3 = call i64 @olang_2emir_2eHelperKind_2eHash_2ecompiler_2fscope_3averAtom(ptr %l2)
  store i64 %t3, ptr %l4
  br label %bb1
bb1:
  %t6 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %a0, i32 0, i32 2
  %t7 = load { i64, ptr }, ptr %t6, !tbaa !27
  %t9 = extractvalue { i64, ptr } %t7, 0
  %t11 = sub i64 %t9, 1
  %t12 = load i64, ptr %l4, !tbaa !24
  %t14 = and i64 %t12, %t11
  store i64 %t14, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local { i32, %"compiler/scope:placedRow" } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H0cf9aca3cf50919d11cd2cbbeb8bc986(ptr %v0, ptr %a0, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %a1) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i32
  %rv = alloca { i32, %"compiler/scope:placedRow" }
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1, ptr %l2, !tbaa !29
  %t2 = load ptr, ptr %l0, !tbaa !29
  %t6 = call { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H30fd1f462fafdfea9abeea90cd4113bf(ptr %v0, ptr %t2, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %a1)
  %t7 = extractvalue { i32, i64 } %t6, 1
  %t8 = extractvalue { i32, i64 } %t6, 0
  store i32 %t8, ptr %l7
  %t9 = icmp ne i32 %t8, 0
  br i1 %t9, label %bb2, label %ok.10, !prof !99
ok.10:
  store i64 %t7, ptr %l6
  br label %bb1
bb1:
  %t11 = load i64, ptr %l6, !tbaa !24
  store i64 %t11, ptr %l3, !tbaa !24
  br label %bb3
bb2:
  %t12 = load i32, ptr %l7, !tbaa !23
  %t13 = lshr i32 %t12, 16
  %t14 = and i32 %t12, 65535
  %t15 = icmp eq i32 %t13, 1
  %t16 = select i1 %t15, i32 1, i32 0
  %t17 = icmp eq i32 %t12, 0
  %t18 = shl i32 %t16, 16
  %t19 = or i32 %t18, %t14
  %t20 = select i1 %t17, i32 0, i32 %t19
  %t22 = insertvalue { i32, %"compiler/scope:placedRow" } zeroinitializer, i32 %t20, 0
  store { i32, %"compiler/scope:placedRow" } %t22, ptr %rv
  br label %ret
bb3:
  %t23 = load ptr, ptr %l2, !tbaa !29
  %t24 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t23, i32 0, i32 0
  %t25 = load i64, ptr %l3, !tbaa !24
  %t26 = getelementptr { i64, ptr }, ptr %t24, i32 0, i32 1
  %t27 = load ptr, ptr %t26, !tbaa !27
  %t28 = getelementptr %"std/prelude/map:MapEntry.545808996237a863e786f2cb6df7346f", ptr %t27, i64 %t25
  %t29 = getelementptr %"std/prelude/map:MapEntry.545808996237a863e786f2cb6df7346f", ptr %t28, i32 0, i32 1
  %t30 = load %"compiler/scope:placedRow", ptr %t29
  %t32 = insertvalue { i32, %"compiler/scope:placedRow" } zeroinitializer, %"compiler/scope:placedRow" %t30, 1
  store { i32, %"compiler/scope:placedRow" } %t32, ptr %rv
  br label %ret
ret:
  %rr = load { i32, %"compiler/scope:placedRow" }, ptr %rv
  ret { i32, %"compiler/scope:placedRow" } %rr
}

define dso_local void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H137d294468feab6c83bb409d7c0050e3(ptr %v0, ptr %v1, ptr %a0, i64 %a1, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %a2, %"compiler/scope:fnRecs" %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l4 = alloca i64
  %l9 = alloca ptr
  %l13 = alloca i64
  %l23 = alloca ptr
  %l26 = alloca ptr
  %l27 = alloca i64
  %l28 = alloca %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0"
  %l29 = alloca %"compiler/scope:fnRecs"
  %l31 = alloca %"compiler/scope:fnRecs"
  %l32 = alloca %"std/prelude/map:MapEntry.0bcda5c026701d95f15bce76f62e86ad"
  %l34 = alloca %"std/prelude/map:MapEntry.0bcda5c026701d95f15bce76f62e86ad"
  %l43 = alloca ptr
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t1, i32 0, i32 5
  %t4 = load i64, ptr %t3, !tbaa !24
  store i64 %t4, ptr %l4, !tbaa !24
  %t6 = load i64, ptr %l4, !tbaa !24
  %t8 = icmp sge i64 %t6, 0
  br i1 %t8, label %bb1, label %bb2
bb1:
  %t10 = load ptr, ptr %l0, !tbaa !29
  store ptr %t10, ptr %l9, !tbaa !29
  %t11 = load ptr, ptr %l0, !tbaa !29
  %t12 = load i64, ptr %l4, !tbaa !24
  %t14 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t11, i32 0, i32 1
  %t16 = getelementptr { i64, ptr }, ptr %t14, i32 0, i32 1
  %t17 = load ptr, ptr %t16, !tbaa !27
  %t18 = getelementptr i64, ptr %t17, i64 %t12
  %t19 = load i64, ptr %t18, !tbaa !34
  %t21 = call i64 @std_2fprelude_2fmap_2efreeLink(i64 %t19)
  store i64 %t21, ptr %l13
  br label %bb3
bb2:
  %t22 = load ptr, ptr %l0, !tbaa !29
  %t24 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t22, i32 0, i32 3
  %t25 = load i64, ptr %t24, !tbaa !24
  %t26 = load ptr, ptr %l0, !tbaa !29
  %t28 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t26, i32 0, i32 0
  %t29 = load { i64, ptr }, ptr %t28, !tbaa !27
  %t31 = extractvalue { i64, ptr } %t29, 0
  %t34 = icmp eq i64 %t25, %t31
  br i1 %t34, label %bb4, label %bb5
bb3:
  %t36 = load i64, ptr %l13, !tbaa !24
  %t37 = load ptr, ptr %l9, !tbaa !29
  %t38 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t37, i32 0, i32 5
  store i64 %t36, ptr %t38, !tbaa !24
  br label %bb8
bb4:
  %t39 = load ptr, ptr %l0, !tbaa !29
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_Ha7ec2521d254a46c93deb02fe8d52040(ptr %v0, ptr %t39)
  br label %bb6
bb5:
  br label %bb7
bb6:
  br label %bb7
bb7:
  %t41 = load ptr, ptr %l0, !tbaa !29
  %t43 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t41, i32 0, i32 3
  %t44 = load i64, ptr %t43, !tbaa !24
  store i64 %t44, ptr %l4, !tbaa !24
  %t46 = load ptr, ptr %l0, !tbaa !29
  store ptr %t46, ptr %l23, !tbaa !29
  %t47 = load ptr, ptr %l23, !tbaa !29
  %t48 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t47, i32 0, i32 3
  %t49 = load i64, ptr %t48, !tbaa !24
  %t51 = add i64 %t49, 1
  %t53 = load ptr, ptr %l23, !tbaa !29
  %t54 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t53, i32 0, i32 3
  store i64 %t51, ptr %t54, !tbaa !24
  br label %bb8
bb8:
  %t55 = load ptr, ptr %l0, !tbaa !29
  store ptr %t55, ptr %l26, !tbaa !29
  %t56 = load i64, ptr %l4, !tbaa !24
  store i64 %t56, ptr %l27, !tbaa !24
  store %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %a2, ptr %l28
  store %"compiler/scope:fnRecs" %a3, ptr %l29
  %t60 = call %"compiler/scope:fnRecs" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2fscope_3afnRecs(ptr %v0, ptr %l29)
  store %"compiler/scope:fnRecs" %t60, ptr %l31
  br label %bb9
bb9:
  %t61 = load %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %l28
  %t62 = load %"compiler/scope:fnRecs", ptr %l31
  %t63 = call %"std/prelude/map:MapEntry.0bcda5c026701d95f15bce76f62e86ad" @std_2fprelude_2fmap_3aMapEntry_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_20compiler_2fscope_3afnRecs_3e_2ector(ptr %v0, ptr %v0, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t61, %"compiler/scope:fnRecs" %t62)
  store %"std/prelude/map:MapEntry.0bcda5c026701d95f15bce76f62e86ad" %t63, ptr %l32
  br label %bb10
bb10:
  %t65 = call %"std/prelude/map:MapEntry.0bcda5c026701d95f15bce76f62e86ad" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMapEntry_3cstd_2fpair_3aPair_3cI_He76ccdd46fc8fd3edee4364d67fec2b5(ptr %v0, ptr %l32)
  store %"std/prelude/map:MapEntry.0bcda5c026701d95f15bce76f62e86ad" %t65, ptr %l34
  br label %bb11
bb11:
  %t66 = load %"std/prelude/map:MapEntry.0bcda5c026701d95f15bce76f62e86ad", ptr %l34
  %t67 = load ptr, ptr %l26, !tbaa !29
  %t68 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t67, i32 0, i32 0
  %t69 = load i64, ptr %l27, !tbaa !24
  %t70 = getelementptr { i64, ptr }, ptr %t68, i32 0, i32 1
  %t71 = load ptr, ptr %t70, !tbaa !27
  %t72 = getelementptr %"std/prelude/map:MapEntry.0bcda5c026701d95f15bce76f62e86ad", ptr %t71, i64 %t69
  store %"std/prelude/map:MapEntry.0bcda5c026701d95f15bce76f62e86ad" %t66, ptr %t72
  %t73 = load ptr, ptr %l0, !tbaa !29
  %t74 = load i64, ptr %l4, !tbaa !24
  %t75 = load ptr, ptr %l0, !tbaa !29
  %t76 = load i64, ptr %l1, !tbaa !24
  %t78 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t75, i32 0, i32 2
  %t80 = getelementptr { i64, ptr }, ptr %t78, i32 0, i32 1
  %t81 = load ptr, ptr %t80, !tbaa !27
  %t82 = getelementptr i64, ptr %t81, i64 %t76
  %t83 = load i64, ptr %t82, !tbaa !34
  %t86 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t73, i32 0, i32 1
  %t88 = getelementptr { i64, ptr }, ptr %t86, i32 0, i32 1
  %t89 = load ptr, ptr %t88, !tbaa !27
  %t90 = getelementptr i64, ptr %t89, i64 %t74
  store i64 %t83, ptr %t90, !tbaa !34
  %t91 = load ptr, ptr %l0, !tbaa !29
  %t92 = load i64, ptr %l1, !tbaa !24
  %t93 = load i64, ptr %l4, !tbaa !24
  %t96 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t91, i32 0, i32 2
  %t98 = getelementptr { i64, ptr }, ptr %t96, i32 0, i32 1
  %t99 = load ptr, ptr %t98, !tbaa !27
  %t100 = getelementptr i64, ptr %t99, i64 %t92
  store i64 %t93, ptr %t100, !tbaa !34
  %t101 = load ptr, ptr %l0, !tbaa !29
  store ptr %t101, ptr %l43, !tbaa !29
  %t102 = load ptr, ptr %l43, !tbaa !29
  %t103 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t102, i32 0, i32 4
  %t104 = load i64, ptr %t103, !tbaa !24
  %t106 = add i64 %t104, 1
  %t108 = load ptr, ptr %l43, !tbaa !29
  %t109 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t108, i32 0, i32 4
  store i64 %t106, ptr %t109, !tbaa !24
  %t110 = load ptr, ptr %l0, !tbaa !29
  %t112 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t110, i32 0, i32 4
  %t113 = load i64, ptr %t112, !tbaa !24
  %t115 = mul i64 %t113, 4
  %t116 = load ptr, ptr %l0, !tbaa !29
  %t118 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t116, i32 0, i32 2
  %t119 = load { i64, ptr }, ptr %t118, !tbaa !27
  %t121 = extractvalue { i64, ptr } %t119, 0
  %t123 = mul i64 %t121, 3
  %t126 = icmp sgt i64 %t115, %t123
  br i1 %t126, label %bb12, label %bb13
bb12:
  %t128 = load ptr, ptr %l0, !tbaa !29
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H0a72b58b33ed678635392a234715d56d(ptr %v0, ptr %t128)
  br label %bb14
bb13:
  br label %bb15
bb14:
  br label %bb15
bb15:
  br label %ret
ret:
  ret void
}

define dso_local void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H240bd86caf003ea6de374cb77d0dbfc6(ptr %v0, ptr %a0, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %a1, { i64, [2 x i64] } %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0"
  %l2 = alloca { i64, [2 x i64] }
  %l3 = alloca i64
  %l4 = alloca i64
  %l9 = alloca ptr
  %l15 = alloca i64
  %l24 = alloca %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0"
  %l26 = alloca %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0"
  %l28 = alloca i1
  %t17 = alloca i64
  store ptr %a0, ptr %l0
  store %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %a1, ptr %l1
  store { i64, [2 x i64] } %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t1, i32 0, i32 2
  %t4 = load { i64, ptr }, ptr %t3, !tbaa !27
  %t6 = extractvalue { i64, ptr } %t4, 0
  %t8 = icmp eq i64 %t6, 0
  br i1 %t8, label %bb1, label %bb2
bb1:
  %t10 = load ptr, ptr %l0, !tbaa !29
  store ptr %t10, ptr %l9, !tbaa !29
  %t11 = icmp sge i64 8, 0
  br i1 %t11, label %bb3, label %bb4
bb2:
  br label %bb7
bb3:
  %t13 = icmp sle i64 8, 1152921504606846975
  br i1 %t13, label %bb5, label %bb6
bb4:
  call void @__olang_check_failed(ptr @olang_loc_98e851230e25199_6709b2b891d27f9d)
  unreachable
bb5:
  %t15 = mul i64 8, 8
  %t16 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t15)
  store i64 0, ptr %t17
  br label %fill.18
fill.18:
  %t21 = load i64, ptr %t17
  %t22 = icmp slt i64 %t21, 8
  br i1 %t22, label %fillb.19, label %filld.20
fillb.19:
  %t23 = getelementptr i64, ptr %t16, i64 %t21
  store i64 -1, ptr %t23
  %t24 = add i64 %t21, 1
  store i64 %t24, ptr %t17
  br label %fill.18
filld.20:
  %t25 = insertvalue { i64, ptr } undef, i64 8, 0
  %t26 = insertvalue { i64, ptr } %t25, ptr %t16, 1
  %t28 = load ptr, ptr %l9, !tbaa !29
  %t29 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t28, i32 0, i32 2
  store { i64, ptr } %t26, ptr %t29, !tbaa !27
  br label %bb7
bb6:
  call void @__olang_check_failed(ptr @olang_loc_98e851230e25199_6709b2b891d27f9d)
  unreachable
bb7:
  %t30 = load ptr, ptr %l0, !tbaa !29
  %t31 = load %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %l1
  %t34 = call i64 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H2b299ac8414fe0900d06d94de708c354(ptr %v0, ptr %t30, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t31)
  store i64 %t34, ptr %l15
  br label %bb8
bb8:
  %t35 = load i64, ptr %l15, !tbaa !24
  store i64 %t35, ptr %l3, !tbaa !24
  %t36 = load ptr, ptr %l0, !tbaa !29
  %t37 = load i64, ptr %l3, !tbaa !24
  %t39 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t36, i32 0, i32 2
  %t41 = getelementptr { i64, ptr }, ptr %t39, i32 0, i32 1
  %t42 = load ptr, ptr %t41, !tbaa !27
  %t43 = getelementptr i64, ptr %t42, i64 %t37
  %t44 = load i64, ptr %t43, !tbaa !34
  store i64 %t44, ptr %l4, !tbaa !24
  br label %bb9
bb9:
  %t46 = load i64, ptr %l4, !tbaa !24
  %t48 = icmp sge i64 %t46, 0
  %t50 = xor i1 %t48, true
  br i1 %t50, label %bb10, label %bb11
bb10:
  br label %bb18
bb11:
  br label %bb12
bb12:
  %t52 = load ptr, ptr %l0, !tbaa !29
  %t53 = load i64, ptr %l4, !tbaa !24
  %t55 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t52, i32 0, i32 0
  %t57 = getelementptr { i64, ptr }, ptr %t55, i32 0, i32 1
  %t58 = load ptr, ptr %t57, !tbaa !27
  %t59 = getelementptr %"std/prelude/map:MapEntry.1b1d537c79dee3d5948de1b7c1a79d8b", ptr %t58, i64 %t53
  %t60 = getelementptr %"std/prelude/map:MapEntry.1b1d537c79dee3d5948de1b7c1a79d8b", ptr %t59, i32 0, i32 0
  %t61 = load %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %t60
  store %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t61, ptr %l24
  %t62 = load %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %l1
  store %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t62, ptr %l26
  %t65 = call i1 @olang_2emir_2eHelperKind_2eEqual_2estd_2fpair_3aPair_3cI64_2c_20I64_3e(ptr %l24, ptr %l26)
  store i1 %t65, ptr %l28
  br label %bb13
bb13:
  %t66 = load i1, ptr %l28, !tbaa !21
  br i1 %t66, label %bb14, label %bb15
bb14:
  %t67 = load ptr, ptr %l0, !tbaa !29
  %t68 = load i64, ptr %l4, !tbaa !24
  %t69 = load { i64, [2 x i64] }, ptr %l2
  %t72 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t67, i32 0, i32 0
  %t74 = getelementptr { i64, ptr }, ptr %t72, i32 0, i32 1
  %t75 = load ptr, ptr %t74, !tbaa !27
  %t76 = getelementptr %"std/prelude/map:MapEntry.1b1d537c79dee3d5948de1b7c1a79d8b", ptr %t75, i64 %t68
  %t77 = getelementptr %"std/prelude/map:MapEntry.1b1d537c79dee3d5948de1b7c1a79d8b", ptr %t76, i32 0, i32 1
  store { i64, [2 x i64] } %t69, ptr %t77
  br label %ret
bb15:
  br label %bb16
bb16:
  br label %bb17
bb17:
  %t78 = load ptr, ptr %l0, !tbaa !29
  %t79 = load i64, ptr %l4, !tbaa !24
  %t81 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t78, i32 0, i32 1
  %t83 = getelementptr { i64, ptr }, ptr %t81, i32 0, i32 1
  %t84 = load ptr, ptr %t83, !tbaa !27
  %t85 = getelementptr i64, ptr %t84, i64 %t79
  %t86 = load i64, ptr %t85, !tbaa !34
  store i64 %t86, ptr %l4, !tbaa !24
  br label %bb9
bb18:
  %t88 = load ptr, ptr %l0, !tbaa !29
  %t89 = load i64, ptr %l3, !tbaa !24
  %t90 = load %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %l1
  %t91 = load { i64, [2 x i64] }, ptr %l2
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_Hab75d718b46174fcd7d5c1dad72cbd5f(ptr %v0, ptr %t88, i64 %t89, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t90, { i64, [2 x i64] } %t91)
  br label %bb19
bb19:
  br label %ret
ret:
  ret void
}

define dso_local i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H24d5cc182d6b5a7ff3b349df82077e34(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %r = tail call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_H068cfedf7407289d149ee3c6f4c8aa20(ptr %v0, ptr %a0, i64 %a1)
  ret i1 %r
}

define dso_local void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H2b4f7a0691718c24c2513bccb473de6f(ptr %v0, ptr %a0) noinline cold #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca { i64, ptr }
  %l3 = alloca { i64, ptr }
  %l5 = alloca i64
  %l6 = alloca { i64, ptr }
  %l7 = alloca { i64, ptr }
  %l9 = alloca i64
  %l14 = alloca i64
  %l21 = alloca ptr
  %l22 = alloca { i64, ptr }
  %l24 = alloca i64
  %l25 = alloca i64
  %l32 = alloca { i64, ptr }
  %l33 = alloca i64
  %l39 = alloca { i64, ptr }
  %l48 = alloca ptr
  %l49 = alloca { i64, ptr }
  %l51 = alloca i64
  %l52 = alloca i64
  %l59 = alloca { i64, ptr }
  %l60 = alloca i64
  %l66 = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t1, i32 0, i32 0
  %t4 = load { i64, ptr }, ptr %t3, !tbaa !27
  %t6 = extractvalue { i64, ptr } %t4, 0
  %t8 = icmp slt i64 %t6, 4
  br i1 %t8, label %bb1, label %bb2
bb1:
  store i64 8, ptr %l14, !tbaa !24
  br label %bb3
bb2:
  %t10 = load ptr, ptr %l0, !tbaa !29
  %t12 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t10, i32 0, i32 0
  %t13 = load { i64, ptr }, ptr %t12, !tbaa !27
  %t15 = extractvalue { i64, ptr } %t13, 0
  %t17 = mul i64 %t15, 2
  store i64 %t17, ptr %l14, !tbaa !24
  br label %bb3
bb3:
  %t19 = load i64, ptr %l14, !tbaa !24
  store i64 %t19, ptr %l1, !tbaa !24
  %t20 = load ptr, ptr %l0, !tbaa !29
  %t22 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t20, i32 0, i32 0
  %t23 = load { i64, ptr }, ptr %t22, !tbaa !27
  store { i64, ptr } %t23, ptr %l2, !tbaa !27
  %t25 = load ptr, ptr %l0, !tbaa !29
  store ptr %t25, ptr %l21, !tbaa !29
  %t26 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t26, ptr %l22, !tbaa !27
  %t27 = load ptr, ptr %l0, !tbaa !29
  %t29 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t27, i32 0, i32 3
  %t30 = load i64, ptr %t29, !tbaa !24
  store i64 %t30, ptr %l24, !tbaa !24
  %t31 = load { i64, ptr }, ptr %l22, !tbaa !27
  %t32 = extractvalue { i64, ptr } %t31, 0
  store i64 %t32, ptr %l25, !tbaa !24
  %t33 = icmp sge i64 0, 0
  br i1 %t33, label %bb4, label %bb5
bb4:
  %t35 = load i64, ptr %l24, !tbaa !24
  %t36 = icmp sle i64 0, %t35
  br i1 %t36, label %bb6, label %bb7
bb5:
  call void @__olang_check_failed(ptr @olang_loc_f5147e9cccb71a89_abf62f853b44252d)
  unreachable
bb6:
  %t38 = load i64, ptr %l24, !tbaa !24
  %t39 = load i64, ptr %l25, !tbaa !24
  %t40 = icmp sle i64 %t38, %t39
  br i1 %t40, label %bb8, label %bb9
bb7:
  call void @__olang_check_failed(ptr @olang_loc_f5147e9cccb71a89_abf62f853b44252d)
  unreachable
bb8:
  %t42 = getelementptr { i64, ptr }, ptr %l22, i32 0, i32 1
  %t43 = load ptr, ptr %t42, !tbaa !27
  %t44 = load i64, ptr %l24, !tbaa !24
  %t45 = getelementptr %"std/prelude/map:MapEntry.9ce8a46a5d367870e2478b0757bce708", ptr %t43, i64 0
  %t46 = sub i64 %t44, 0
  %t47 = insertvalue { i64, ptr } undef, i64 %t46, 0
  %t48 = insertvalue { i64, ptr } %t47, ptr %t45, 1
  store { i64, ptr } %t48, ptr %l3, !tbaa !27
  %t50 = load i64, ptr %l1, !tbaa !24
  %t54 = mul i64 %t50, 24
  %t55 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t54)
  %t56 = insertvalue { i64, ptr } undef, i64 %t50, 0
  %t57 = insertvalue { i64, ptr } %t56, ptr %t55, 1
  store { i64, ptr } %t57, ptr %l32, !tbaa !27
  store i64 0, ptr %l33, !tbaa !24
  store i64 0, ptr %l5, !tbaa !24
  br label %bb10
bb9:
  call void @__olang_check_failed(ptr @olang_loc_f5147e9cccb71a89_abf62f853b44252d)
  unreachable
bb10:
  %t58 = load i64, ptr %l5, !tbaa !24
  %t59 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t61 = extractvalue { i64, ptr } %t59, 0
  %t64 = icmp slt i64 %t58, %t61
  %t66 = xor i1 %t64, true
  br i1 %t66, label %bb11, label %bb12
bb11:
  br label %bb15
bb12:
  br label %bb13
bb13:
  %t68 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t68, ptr %l39, !tbaa !27
  %t69 = load i64, ptr %l5, !tbaa !24
  %t71 = getelementptr { i64, ptr }, ptr %l39, i32 0, i32 1
  %t72 = load ptr, ptr %t71, !tbaa !27
  %t73 = getelementptr %"std/prelude/map:MapEntry.9ce8a46a5d367870e2478b0757bce708", ptr %t72, i64 %t69
  %t74 = load %"std/prelude/map:MapEntry.9ce8a46a5d367870e2478b0757bce708", ptr %t73
  %t76 = load i64, ptr %l33, !tbaa !24
  %t77 = getelementptr { i64, ptr }, ptr %l32, i32 0, i32 1
  %t78 = load ptr, ptr %t77, !tbaa !27
  %t79 = getelementptr %"std/prelude/map:MapEntry.9ce8a46a5d367870e2478b0757bce708", ptr %t78, i64 %t76
  store %"std/prelude/map:MapEntry.9ce8a46a5d367870e2478b0757bce708" %t74, ptr %t79
  %t80 = load i64, ptr %l33, !tbaa !24
  %t81 = add i64 %t80, 1
  store i64 %t81, ptr %l33, !tbaa !24
  br label %bb14
bb14:
  %t82 = load i64, ptr %l5, !tbaa !24
  %t84 = add i64 %t82, 1
  store i64 %t84, ptr %l5, !tbaa !24
  br label %bb10
bb15:
  %t86 = load { i64, ptr }, ptr %l32, !tbaa !27
  %t87 = load ptr, ptr %l21, !tbaa !29
  %t88 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t87, i32 0, i32 0
  store { i64, ptr } %t86, ptr %t88, !tbaa !27
  %t89 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t91 = load ptr, ptr %l0, !tbaa !29
  %t93 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t91, i32 0, i32 1
  %t94 = load { i64, ptr }, ptr %t93, !tbaa !27
  store { i64, ptr } %t94, ptr %l6, !tbaa !27
  %t96 = load ptr, ptr %l0, !tbaa !29
  store ptr %t96, ptr %l48, !tbaa !29
  %t97 = load { i64, ptr }, ptr %l6, !tbaa !27
  store { i64, ptr } %t97, ptr %l49, !tbaa !27
  %t98 = load ptr, ptr %l0, !tbaa !29
  %t100 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t98, i32 0, i32 3
  %t101 = load i64, ptr %t100, !tbaa !24
  store i64 %t101, ptr %l51, !tbaa !24
  %t102 = load { i64, ptr }, ptr %l49, !tbaa !27
  %t103 = extractvalue { i64, ptr } %t102, 0
  store i64 %t103, ptr %l52, !tbaa !24
  %t104 = icmp sge i64 0, 0
  br i1 %t104, label %bb16, label %bb17
bb16:
  %t106 = load i64, ptr %l51, !tbaa !24
  %t107 = icmp sle i64 0, %t106
  br i1 %t107, label %bb18, label %bb19
bb17:
  call void @__olang_check_failed(ptr @olang_loc_69fb979c9c271d1c_9f38969fb60f0e50)
  unreachable
bb18:
  %t109 = load i64, ptr %l51, !tbaa !24
  %t110 = load i64, ptr %l52, !tbaa !24
  %t111 = icmp sle i64 %t109, %t110
  br i1 %t111, label %bb20, label %bb21
bb19:
  call void @__olang_check_failed(ptr @olang_loc_69fb979c9c271d1c_9f38969fb60f0e50)
  unreachable
bb20:
  %t113 = getelementptr { i64, ptr }, ptr %l49, i32 0, i32 1
  %t114 = load ptr, ptr %t113, !tbaa !27
  %t115 = load i64, ptr %l51, !tbaa !24
  %t116 = getelementptr i64, ptr %t114, i64 0
  %t117 = sub i64 %t115, 0
  %t118 = insertvalue { i64, ptr } undef, i64 %t117, 0
  %t119 = insertvalue { i64, ptr } %t118, ptr %t116, 1
  store { i64, ptr } %t119, ptr %l7, !tbaa !27
  %t121 = load i64, ptr %l1, !tbaa !24
  %t125 = mul i64 %t121, 8
  %t126 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t125)
  %t127 = insertvalue { i64, ptr } undef, i64 %t121, 0
  %t128 = insertvalue { i64, ptr } %t127, ptr %t126, 1
  store { i64, ptr } %t128, ptr %l59, !tbaa !27
  store i64 0, ptr %l60, !tbaa !24
  store i64 0, ptr %l9, !tbaa !24
  br label %bb22
bb21:
  call void @__olang_check_failed(ptr @olang_loc_69fb979c9c271d1c_9f38969fb60f0e50)
  unreachable
bb22:
  %t129 = load i64, ptr %l9, !tbaa !24
  %t130 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t132 = extractvalue { i64, ptr } %t130, 0
  %t135 = icmp slt i64 %t129, %t132
  %t137 = xor i1 %t135, true
  br i1 %t137, label %bb23, label %bb24
bb23:
  br label %bb27
bb24:
  br label %bb25
bb25:
  %t139 = load { i64, ptr }, ptr %l7, !tbaa !27
  store { i64, ptr } %t139, ptr %l66, !tbaa !27
  %t140 = load i64, ptr %l9, !tbaa !24
  %t142 = getelementptr { i64, ptr }, ptr %l66, i32 0, i32 1
  %t143 = load ptr, ptr %t142, !tbaa !27
  %t144 = getelementptr i64, ptr %t143, i64 %t140
  %t145 = load i64, ptr %t144, !tbaa !34
  %t147 = load i64, ptr %l60, !tbaa !24
  %t148 = getelementptr { i64, ptr }, ptr %l59, i32 0, i32 1
  %t149 = load ptr, ptr %t148, !tbaa !27
  %t150 = getelementptr i64, ptr %t149, i64 %t147
  store i64 %t145, ptr %t150, !tbaa !34
  %t151 = load i64, ptr %l60, !tbaa !24
  %t152 = add i64 %t151, 1
  store i64 %t152, ptr %l60, !tbaa !24
  br label %bb26
bb26:
  %t153 = load i64, ptr %l9, !tbaa !24
  %t155 = add i64 %t153, 1
  store i64 %t155, ptr %l9, !tbaa !24
  br label %bb22
bb27:
  %t157 = load { i64, ptr }, ptr %l59, !tbaa !27
  %t158 = load ptr, ptr %l48, !tbaa !29
  %t159 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t158, i32 0, i32 1
  store { i64, ptr } %t157, ptr %t159, !tbaa !27
  %t160 = load { i64, ptr }, ptr %l6, !tbaa !27
  br label %ret
ret:
  ret void
}

define dso_local { i32, %"compiler/scope:Placement" } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H37e4a6df969d175d46971efed901ceea(ptr %v0, ptr %v1, ptr %a0, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %a1) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i32
  %rv = alloca { i32, %"compiler/scope:Placement" }
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1, ptr %l2, !tbaa !29
  %t2 = load ptr, ptr %l0, !tbaa !29
  %t6 = call { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_Hcc6f495c96b7688a1f2e663dcf37c036(ptr %v0, ptr %t2, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %a1)
  %t7 = extractvalue { i32, i64 } %t6, 1
  %t8 = extractvalue { i32, i64 } %t6, 0
  store i32 %t8, ptr %l7
  %t9 = icmp ne i32 %t8, 0
  br i1 %t9, label %bb2, label %ok.10, !prof !99
ok.10:
  store i64 %t7, ptr %l6
  br label %bb1
bb1:
  %t11 = load i64, ptr %l6, !tbaa !24
  store i64 %t11, ptr %l3, !tbaa !24
  br label %bb3
bb2:
  %t12 = load i32, ptr %l7, !tbaa !23
  %t13 = lshr i32 %t12, 16
  %t14 = and i32 %t12, 65535
  %t15 = icmp eq i32 %t13, 1
  %t16 = select i1 %t15, i32 1, i32 0
  %t17 = icmp eq i32 %t12, 0
  %t18 = shl i32 %t16, 16
  %t19 = or i32 %t18, %t14
  %t20 = select i1 %t17, i32 0, i32 %t19
  %t22 = insertvalue { i32, %"compiler/scope:Placement" } zeroinitializer, i32 %t20, 0
  store { i32, %"compiler/scope:Placement" } %t22, ptr %rv
  br label %ret
bb3:
  %t23 = load ptr, ptr %l2, !tbaa !29
  %t24 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t23, i32 0, i32 0
  %t25 = load i64, ptr %l3, !tbaa !24
  %t26 = getelementptr { i64, ptr }, ptr %t24, i32 0, i32 1
  %t27 = load ptr, ptr %t26, !tbaa !27
  %t28 = getelementptr %"std/prelude/map:MapEntry.5d90ea23f235d8870da3668e82c28edd", ptr %t27, i64 %t25
  %t29 = getelementptr %"std/prelude/map:MapEntry.5d90ea23f235d8870da3668e82c28edd", ptr %t28, i32 0, i32 1
  %t30 = load %"compiler/scope:Placement", ptr %t29
  %t32 = insertvalue { i32, %"compiler/scope:Placement" } zeroinitializer, %"compiler/scope:Placement" %t30, 1
  store { i32, %"compiler/scope:Placement" } %t32, ptr %rv
  br label %ret
ret:
  %rr = load { i32, %"compiler/scope:Placement" }, ptr %rv
  ret { i32, %"compiler/scope:Placement" } %rr
}

define dso_local void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H3cf9386e72489334d71359093abeedb1(ptr %v0, ptr %a0) noinline cold #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca { i64, ptr }
  %l3 = alloca { i64, ptr }
  %l5 = alloca i64
  %l6 = alloca { i64, ptr }
  %l7 = alloca { i64, ptr }
  %l9 = alloca i64
  %l14 = alloca i64
  %l21 = alloca ptr
  %l22 = alloca { i64, ptr }
  %l24 = alloca i64
  %l25 = alloca i64
  %l32 = alloca { i64, ptr }
  %l33 = alloca i64
  %l39 = alloca { i64, ptr }
  %l48 = alloca ptr
  %l49 = alloca { i64, ptr }
  %l51 = alloca i64
  %l52 = alloca i64
  %l59 = alloca { i64, ptr }
  %l60 = alloca i64
  %l66 = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t1, i32 0, i32 0
  %t4 = load { i64, ptr }, ptr %t3, !tbaa !27
  %t6 = extractvalue { i64, ptr } %t4, 0
  %t8 = icmp slt i64 %t6, 4
  br i1 %t8, label %bb1, label %bb2
bb1:
  store i64 8, ptr %l14, !tbaa !24
  br label %bb3
bb2:
  %t10 = load ptr, ptr %l0, !tbaa !29
  %t12 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t10, i32 0, i32 0
  %t13 = load { i64, ptr }, ptr %t12, !tbaa !27
  %t15 = extractvalue { i64, ptr } %t13, 0
  %t17 = mul i64 %t15, 2
  store i64 %t17, ptr %l14, !tbaa !24
  br label %bb3
bb3:
  %t19 = load i64, ptr %l14, !tbaa !24
  store i64 %t19, ptr %l1, !tbaa !24
  %t20 = load ptr, ptr %l0, !tbaa !29
  %t22 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t20, i32 0, i32 0
  %t23 = load { i64, ptr }, ptr %t22, !tbaa !27
  store { i64, ptr } %t23, ptr %l2, !tbaa !27
  %t25 = load ptr, ptr %l0, !tbaa !29
  store ptr %t25, ptr %l21, !tbaa !29
  %t26 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t26, ptr %l22, !tbaa !27
  %t27 = load ptr, ptr %l0, !tbaa !29
  %t29 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t27, i32 0, i32 3
  %t30 = load i64, ptr %t29, !tbaa !24
  store i64 %t30, ptr %l24, !tbaa !24
  %t31 = load { i64, ptr }, ptr %l22, !tbaa !27
  %t32 = extractvalue { i64, ptr } %t31, 0
  store i64 %t32, ptr %l25, !tbaa !24
  %t33 = icmp sge i64 0, 0
  br i1 %t33, label %bb4, label %bb5
bb4:
  %t35 = load i64, ptr %l24, !tbaa !24
  %t36 = icmp sle i64 0, %t35
  br i1 %t36, label %bb6, label %bb7
bb5:
  call void @__olang_check_failed(ptr @olang_loc_d09d4290b7da555d_4aaf343b9bec4899)
  unreachable
bb6:
  %t38 = load i64, ptr %l24, !tbaa !24
  %t39 = load i64, ptr %l25, !tbaa !24
  %t40 = icmp sle i64 %t38, %t39
  br i1 %t40, label %bb8, label %bb9
bb7:
  call void @__olang_check_failed(ptr @olang_loc_d09d4290b7da555d_4aaf343b9bec4899)
  unreachable
bb8:
  %t42 = getelementptr { i64, ptr }, ptr %l22, i32 0, i32 1
  %t43 = load ptr, ptr %t42, !tbaa !27
  %t44 = load i64, ptr %l24, !tbaa !24
  %t45 = getelementptr %"std/prelude/map:MapEntry.5d90ea23f235d8870da3668e82c28edd", ptr %t43, i64 0
  %t46 = sub i64 %t44, 0
  %t47 = insertvalue { i64, ptr } undef, i64 %t46, 0
  %t48 = insertvalue { i64, ptr } %t47, ptr %t45, 1
  store { i64, ptr } %t48, ptr %l3, !tbaa !27
  %t50 = load i64, ptr %l1, !tbaa !24
  %t54 = mul i64 %t50, 72
  %t55 = call ptr @__olang_scope_alloc_zeroed(ptr %v0, i64 %t54)
  %t56 = insertvalue { i64, ptr } undef, i64 %t50, 0
  %t57 = insertvalue { i64, ptr } %t56, ptr %t55, 1
  store { i64, ptr } %t57, ptr %l32, !tbaa !27
  store i64 0, ptr %l33, !tbaa !24
  store i64 0, ptr %l5, !tbaa !24
  br label %bb10
bb9:
  call void @__olang_check_failed(ptr @olang_loc_d09d4290b7da555d_4aaf343b9bec4899)
  unreachable
bb10:
  %t58 = load i64, ptr %l5, !tbaa !24
  %t59 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t61 = extractvalue { i64, ptr } %t59, 0
  %t64 = icmp slt i64 %t58, %t61
  %t66 = xor i1 %t64, true
  br i1 %t66, label %bb11, label %bb12
bb11:
  br label %bb15
bb12:
  br label %bb13
bb13:
  %t68 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t68, ptr %l39, !tbaa !27
  %t69 = load i64, ptr %l5, !tbaa !24
  %t71 = getelementptr { i64, ptr }, ptr %l39, i32 0, i32 1
  %t72 = load ptr, ptr %t71, !tbaa !27
  %t73 = getelementptr %"std/prelude/map:MapEntry.5d90ea23f235d8870da3668e82c28edd", ptr %t72, i64 %t69
  %t74 = load %"std/prelude/map:MapEntry.5d90ea23f235d8870da3668e82c28edd", ptr %t73
  store %"std/prelude/map:MapEntry.5d90ea23f235d8870da3668e82c28edd" zeroinitializer, ptr %t73
  %t76 = load i64, ptr %l33, !tbaa !24
  %t77 = getelementptr { i64, ptr }, ptr %l32, i32 0, i32 1
  %t78 = load ptr, ptr %t77, !tbaa !27
  %t79 = getelementptr %"std/prelude/map:MapEntry.5d90ea23f235d8870da3668e82c28edd", ptr %t78, i64 %t76
  store %"std/prelude/map:MapEntry.5d90ea23f235d8870da3668e82c28edd" %t74, ptr %t79
  %t80 = load i64, ptr %l33, !tbaa !24
  %t81 = add i64 %t80, 1
  store i64 %t81, ptr %l33, !tbaa !24
  br label %bb14
bb14:
  %t82 = load i64, ptr %l5, !tbaa !24
  %t84 = add i64 %t82, 1
  store i64 %t84, ptr %l5, !tbaa !24
  br label %bb10
bb15:
  %t86 = load { i64, ptr }, ptr %l32, !tbaa !27
  %t87 = load ptr, ptr %l21, !tbaa !29
  %t88 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t87, i32 0, i32 0
  store { i64, ptr } %t86, ptr %t88, !tbaa !27
  %t89 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t91 = load ptr, ptr %l0, !tbaa !29
  %t93 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t91, i32 0, i32 1
  %t94 = load { i64, ptr }, ptr %t93, !tbaa !27
  store { i64, ptr } %t94, ptr %l6, !tbaa !27
  %t96 = load ptr, ptr %l0, !tbaa !29
  store ptr %t96, ptr %l48, !tbaa !29
  %t97 = load { i64, ptr }, ptr %l6, !tbaa !27
  store { i64, ptr } %t97, ptr %l49, !tbaa !27
  %t98 = load ptr, ptr %l0, !tbaa !29
  %t100 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t98, i32 0, i32 3
  %t101 = load i64, ptr %t100, !tbaa !24
  store i64 %t101, ptr %l51, !tbaa !24
  %t102 = load { i64, ptr }, ptr %l49, !tbaa !27
  %t103 = extractvalue { i64, ptr } %t102, 0
  store i64 %t103, ptr %l52, !tbaa !24
  %t104 = icmp sge i64 0, 0
  br i1 %t104, label %bb16, label %bb17
bb16:
  %t106 = load i64, ptr %l51, !tbaa !24
  %t107 = icmp sle i64 0, %t106
  br i1 %t107, label %bb18, label %bb19
bb17:
  call void @__olang_check_failed(ptr @olang_loc_8c25b0a34c040f00_7447c6fffda4a9ec)
  unreachable
bb18:
  %t109 = load i64, ptr %l51, !tbaa !24
  %t110 = load i64, ptr %l52, !tbaa !24
  %t111 = icmp sle i64 %t109, %t110
  br i1 %t111, label %bb20, label %bb21
bb19:
  call void @__olang_check_failed(ptr @olang_loc_8c25b0a34c040f00_7447c6fffda4a9ec)
  unreachable
bb20:
  %t113 = getelementptr { i64, ptr }, ptr %l49, i32 0, i32 1
  %t114 = load ptr, ptr %t113, !tbaa !27
  %t115 = load i64, ptr %l51, !tbaa !24
  %t116 = getelementptr i64, ptr %t114, i64 0
  %t117 = sub i64 %t115, 0
  %t118 = insertvalue { i64, ptr } undef, i64 %t117, 0
  %t119 = insertvalue { i64, ptr } %t118, ptr %t116, 1
  store { i64, ptr } %t119, ptr %l7, !tbaa !27
  %t121 = load i64, ptr %l1, !tbaa !24
  %t125 = mul i64 %t121, 8
  %t126 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t125)
  %t127 = insertvalue { i64, ptr } undef, i64 %t121, 0
  %t128 = insertvalue { i64, ptr } %t127, ptr %t126, 1
  store { i64, ptr } %t128, ptr %l59, !tbaa !27
  store i64 0, ptr %l60, !tbaa !24
  store i64 0, ptr %l9, !tbaa !24
  br label %bb22
bb21:
  call void @__olang_check_failed(ptr @olang_loc_8c25b0a34c040f00_7447c6fffda4a9ec)
  unreachable
bb22:
  %t129 = load i64, ptr %l9, !tbaa !24
  %t130 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t132 = extractvalue { i64, ptr } %t130, 0
  %t135 = icmp slt i64 %t129, %t132
  %t137 = xor i1 %t135, true
  br i1 %t137, label %bb23, label %bb24
bb23:
  br label %bb27
bb24:
  br label %bb25
bb25:
  %t139 = load { i64, ptr }, ptr %l7, !tbaa !27
  store { i64, ptr } %t139, ptr %l66, !tbaa !27
  %t140 = load i64, ptr %l9, !tbaa !24
  %t142 = getelementptr { i64, ptr }, ptr %l66, i32 0, i32 1
  %t143 = load ptr, ptr %t142, !tbaa !27
  %t144 = getelementptr i64, ptr %t143, i64 %t140
  %t145 = load i64, ptr %t144, !tbaa !34
  %t147 = load i64, ptr %l60, !tbaa !24
  %t148 = getelementptr { i64, ptr }, ptr %l59, i32 0, i32 1
  %t149 = load ptr, ptr %t148, !tbaa !27
  %t150 = getelementptr i64, ptr %t149, i64 %t147
  store i64 %t145, ptr %t150, !tbaa !34
  %t151 = load i64, ptr %l60, !tbaa !24
  %t152 = add i64 %t151, 1
  store i64 %t152, ptr %l60, !tbaa !24
  br label %bb26
bb26:
  %t153 = load i64, ptr %l9, !tbaa !24
  %t155 = add i64 %t153, 1
  store i64 %t155, ptr %l9, !tbaa !24
  br label %bb22
bb27:
  %t157 = load { i64, ptr }, ptr %l59, !tbaa !27
  %t158 = load ptr, ptr %l48, !tbaa !29
  %t159 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t158, i32 0, i32 1
  store { i64, ptr } %t157, ptr %t159, !tbaa !27
  %t160 = load { i64, ptr }, ptr %l6, !tbaa !27
  br label %ret
ret:
  ret void
}

define dso_local void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H453662ae559f86d4d40ba4da3fb4f916(ptr %v0, ptr %v1, ptr %a0, i64 %a1, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %a2, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l4 = alloca i64
  %l9 = alloca ptr
  %l13 = alloca i64
  %l23 = alloca ptr
  %l26 = alloca ptr
  %l27 = alloca i64
  %l28 = alloca %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0"
  %l29 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l31 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l32 = alloca %"std/prelude/map:MapEntry.39ab5235a9e7cc4d21ab272df52b187f"
  %l34 = alloca %"std/prelude/map:MapEntry.39ab5235a9e7cc4d21ab272df52b187f"
  %l43 = alloca ptr
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t1, i32 0, i32 5
  %t4 = load i64, ptr %t3, !tbaa !24
  store i64 %t4, ptr %l4, !tbaa !24
  %t6 = load i64, ptr %l4, !tbaa !24
  %t8 = icmp sge i64 %t6, 0
  br i1 %t8, label %bb1, label %bb2
bb1:
  %t10 = load ptr, ptr %l0, !tbaa !29
  store ptr %t10, ptr %l9, !tbaa !29
  %t11 = load ptr, ptr %l0, !tbaa !29
  %t12 = load i64, ptr %l4, !tbaa !24
  %t14 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t11, i32 0, i32 1
  %t16 = getelementptr { i64, ptr }, ptr %t14, i32 0, i32 1
  %t17 = load ptr, ptr %t16, !tbaa !27
  %t18 = getelementptr i64, ptr %t17, i64 %t12
  %t19 = load i64, ptr %t18, !tbaa !34
  %t21 = call i64 @std_2fprelude_2fmap_2efreeLink(i64 %t19)
  store i64 %t21, ptr %l13
  br label %bb3
bb2:
  %t22 = load ptr, ptr %l0, !tbaa !29
  %t24 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t22, i32 0, i32 3
  %t25 = load i64, ptr %t24, !tbaa !24
  %t26 = load ptr, ptr %l0, !tbaa !29
  %t28 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t26, i32 0, i32 0
  %t29 = load { i64, ptr }, ptr %t28, !tbaa !27
  %t31 = extractvalue { i64, ptr } %t29, 0
  %t34 = icmp eq i64 %t25, %t31
  br i1 %t34, label %bb4, label %bb5
bb3:
  %t36 = load i64, ptr %l13, !tbaa !24
  %t37 = load ptr, ptr %l9, !tbaa !29
  %t38 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t37, i32 0, i32 5
  store i64 %t36, ptr %t38, !tbaa !24
  br label %bb8
bb4:
  %t39 = load ptr, ptr %l0, !tbaa !29
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_Hf1b08312c9801b2ab1b340dc49fbc612(ptr %v0, ptr %t39)
  br label %bb6
bb5:
  br label %bb7
bb6:
  br label %bb7
bb7:
  %t41 = load ptr, ptr %l0, !tbaa !29
  %t43 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t41, i32 0, i32 3
  %t44 = load i64, ptr %t43, !tbaa !24
  store i64 %t44, ptr %l4, !tbaa !24
  %t46 = load ptr, ptr %l0, !tbaa !29
  store ptr %t46, ptr %l23, !tbaa !29
  %t47 = load ptr, ptr %l23, !tbaa !29
  %t48 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t47, i32 0, i32 3
  %t49 = load i64, ptr %t48, !tbaa !24
  %t51 = add i64 %t49, 1
  %t53 = load ptr, ptr %l23, !tbaa !29
  %t54 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t53, i32 0, i32 3
  store i64 %t51, ptr %t54, !tbaa !24
  br label %bb8
bb8:
  %t55 = load ptr, ptr %l0, !tbaa !29
  store ptr %t55, ptr %l26, !tbaa !29
  %t56 = load i64, ptr %l4, !tbaa !24
  store i64 %t56, ptr %l27, !tbaa !24
  store %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %a2, ptr %l28
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %a3, ptr %l29
  %t60 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3averAtom_3e(ptr %v0, ptr %l29)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t60, ptr %l31
  br label %bb9
bb9:
  %t61 = load %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %l28
  %t62 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l31
  %t63 = call %"std/prelude/map:MapEntry.39ab5235a9e7cc4d21ab272df52b187f" @std_2fprelude_2fmap_3aMapEntry_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_20std_2fprelude__H885384343a2430f3b3dca762637b6621(ptr %v0, ptr %v0, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t61, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t62)
  store %"std/prelude/map:MapEntry.39ab5235a9e7cc4d21ab272df52b187f" %t63, ptr %l32
  br label %bb10
bb10:
  %t65 = call %"std/prelude/map:MapEntry.39ab5235a9e7cc4d21ab272df52b187f" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMapEntry_3cstd_2fpair_3aPair_3cI_Hf236050a4c87b3db613542553d971547(ptr %v0, ptr %l32)
  store %"std/prelude/map:MapEntry.39ab5235a9e7cc4d21ab272df52b187f" %t65, ptr %l34
  br label %bb11
bb11:
  %t66 = load %"std/prelude/map:MapEntry.39ab5235a9e7cc4d21ab272df52b187f", ptr %l34
  %t67 = load ptr, ptr %l26, !tbaa !29
  %t68 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t67, i32 0, i32 0
  %t69 = load i64, ptr %l27, !tbaa !24
  %t70 = getelementptr { i64, ptr }, ptr %t68, i32 0, i32 1
  %t71 = load ptr, ptr %t70, !tbaa !27
  %t72 = getelementptr %"std/prelude/map:MapEntry.39ab5235a9e7cc4d21ab272df52b187f", ptr %t71, i64 %t69
  store %"std/prelude/map:MapEntry.39ab5235a9e7cc4d21ab272df52b187f" %t66, ptr %t72
  %t73 = load ptr, ptr %l0, !tbaa !29
  %t74 = load i64, ptr %l4, !tbaa !24
  %t75 = load ptr, ptr %l0, !tbaa !29
  %t76 = load i64, ptr %l1, !tbaa !24
  %t78 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t75, i32 0, i32 2
  %t80 = getelementptr { i64, ptr }, ptr %t78, i32 0, i32 1
  %t81 = load ptr, ptr %t80, !tbaa !27
  %t82 = getelementptr i64, ptr %t81, i64 %t76
  %t83 = load i64, ptr %t82, !tbaa !34
  %t86 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t73, i32 0, i32 1
  %t88 = getelementptr { i64, ptr }, ptr %t86, i32 0, i32 1
  %t89 = load ptr, ptr %t88, !tbaa !27
  %t90 = getelementptr i64, ptr %t89, i64 %t74
  store i64 %t83, ptr %t90, !tbaa !34
  %t91 = load ptr, ptr %l0, !tbaa !29
  %t92 = load i64, ptr %l1, !tbaa !24
  %t93 = load i64, ptr %l4, !tbaa !24
  %t96 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t91, i32 0, i32 2
  %t98 = getelementptr { i64, ptr }, ptr %t96, i32 0, i32 1
  %t99 = load ptr, ptr %t98, !tbaa !27
  %t100 = getelementptr i64, ptr %t99, i64 %t92
  store i64 %t93, ptr %t100, !tbaa !34
  %t101 = load ptr, ptr %l0, !tbaa !29
  store ptr %t101, ptr %l43, !tbaa !29
  %t102 = load ptr, ptr %l43, !tbaa !29
  %t103 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t102, i32 0, i32 4
  %t104 = load i64, ptr %t103, !tbaa !24
  %t106 = add i64 %t104, 1
  %t108 = load ptr, ptr %l43, !tbaa !29
  %t109 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t108, i32 0, i32 4
  store i64 %t106, ptr %t109, !tbaa !24
  %t110 = load ptr, ptr %l0, !tbaa !29
  %t112 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t110, i32 0, i32 4
  %t113 = load i64, ptr %t112, !tbaa !24
  %t115 = mul i64 %t113, 4
  %t116 = load ptr, ptr %l0, !tbaa !29
  %t118 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t116, i32 0, i32 2
  %t119 = load { i64, ptr }, ptr %t118, !tbaa !27
  %t121 = extractvalue { i64, ptr } %t119, 0
  %t123 = mul i64 %t121, 3
  %t126 = icmp sgt i64 %t115, %t123
  br i1 %t126, label %bb12, label %bb13
bb12:
  %t128 = load ptr, ptr %l0, !tbaa !29
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H862285d0431cf564abc2614c38ea4467(ptr %v0, ptr %t128)
  br label %bb14
bb13:
  br label %bb15
bb14:
  br label %bb15
bb15:
  br label %ret
ret:
  ret void
}

define dso_local void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H5726a2dd684fb58cbf53a937edd2530b(ptr %v0, ptr %v1, ptr %a0, i64 %a1, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %a2, %"compiler/scope:Placement" %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l4 = alloca i64
  %l9 = alloca ptr
  %l13 = alloca i64
  %l23 = alloca ptr
  %l26 = alloca ptr
  %l27 = alloca i64
  %l28 = alloca %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0"
  %l29 = alloca %"compiler/scope:Placement"
  %l31 = alloca %"compiler/scope:Placement"
  %l32 = alloca %"std/prelude/map:MapEntry.5d90ea23f235d8870da3668e82c28edd"
  %l34 = alloca %"std/prelude/map:MapEntry.5d90ea23f235d8870da3668e82c28edd"
  %l43 = alloca ptr
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t1, i32 0, i32 5
  %t4 = load i64, ptr %t3, !tbaa !24
  store i64 %t4, ptr %l4, !tbaa !24
  %t6 = load i64, ptr %l4, !tbaa !24
  %t8 = icmp sge i64 %t6, 0
  br i1 %t8, label %bb1, label %bb2
bb1:
  %t10 = load ptr, ptr %l0, !tbaa !29
  store ptr %t10, ptr %l9, !tbaa !29
  %t11 = load ptr, ptr %l0, !tbaa !29
  %t12 = load i64, ptr %l4, !tbaa !24
  %t14 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t11, i32 0, i32 1
  %t16 = getelementptr { i64, ptr }, ptr %t14, i32 0, i32 1
  %t17 = load ptr, ptr %t16, !tbaa !27
  %t18 = getelementptr i64, ptr %t17, i64 %t12
  %t19 = load i64, ptr %t18, !tbaa !34
  %t21 = call i64 @std_2fprelude_2fmap_2efreeLink(i64 %t19)
  store i64 %t21, ptr %l13
  br label %bb3
bb2:
  %t22 = load ptr, ptr %l0, !tbaa !29
  %t24 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t22, i32 0, i32 3
  %t25 = load i64, ptr %t24, !tbaa !24
  %t26 = load ptr, ptr %l0, !tbaa !29
  %t28 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t26, i32 0, i32 0
  %t29 = load { i64, ptr }, ptr %t28, !tbaa !27
  %t31 = extractvalue { i64, ptr } %t29, 0
  %t34 = icmp eq i64 %t25, %t31
  br i1 %t34, label %bb4, label %bb5
bb3:
  %t36 = load i64, ptr %l13, !tbaa !24
  %t37 = load ptr, ptr %l9, !tbaa !29
  %t38 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t37, i32 0, i32 5
  store i64 %t36, ptr %t38, !tbaa !24
  br label %bb8
bb4:
  %t39 = load ptr, ptr %l0, !tbaa !29
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H3cf9386e72489334d71359093abeedb1(ptr %v0, ptr %t39)
  br label %bb6
bb5:
  br label %bb7
bb6:
  br label %bb7
bb7:
  %t41 = load ptr, ptr %l0, !tbaa !29
  %t43 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t41, i32 0, i32 3
  %t44 = load i64, ptr %t43, !tbaa !24
  store i64 %t44, ptr %l4, !tbaa !24
  %t46 = load ptr, ptr %l0, !tbaa !29
  store ptr %t46, ptr %l23, !tbaa !29
  %t47 = load ptr, ptr %l23, !tbaa !29
  %t48 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t47, i32 0, i32 3
  %t49 = load i64, ptr %t48, !tbaa !24
  %t51 = add i64 %t49, 1
  %t53 = load ptr, ptr %l23, !tbaa !29
  %t54 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t53, i32 0, i32 3
  store i64 %t51, ptr %t54, !tbaa !24
  br label %bb8
bb8:
  %t55 = load ptr, ptr %l0, !tbaa !29
  store ptr %t55, ptr %l26, !tbaa !29
  %t56 = load i64, ptr %l4, !tbaa !24
  store i64 %t56, ptr %l27, !tbaa !24
  store %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %a2, ptr %l28
  store %"compiler/scope:Placement" %a3, ptr %l29
  %t60 = call %"compiler/scope:Placement" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2fscope_3aPlacement(ptr %v0, ptr %l29)
  store %"compiler/scope:Placement" %t60, ptr %l31
  br label %bb9
bb9:
  %t61 = load %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %l28
  %t62 = load %"compiler/scope:Placement", ptr %l31
  %t63 = call %"std/prelude/map:MapEntry.5d90ea23f235d8870da3668e82c28edd" @std_2fprelude_2fmap_3aMapEntry_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_20compiler_2fscope_3aPlacement_3e_2ector(ptr %v0, ptr %v0, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t61, %"compiler/scope:Placement" %t62)
  store %"std/prelude/map:MapEntry.5d90ea23f235d8870da3668e82c28edd" %t63, ptr %l32
  br label %bb10
bb10:
  %t65 = call %"std/prelude/map:MapEntry.5d90ea23f235d8870da3668e82c28edd" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMapEntry_3cstd_2fpair_3aPair_3cI_Hba3d3054cd7ffa4093e8aae0f585f337(ptr %v0, ptr %l32)
  store %"std/prelude/map:MapEntry.5d90ea23f235d8870da3668e82c28edd" %t65, ptr %l34
  br label %bb11
bb11:
  %t66 = load %"std/prelude/map:MapEntry.5d90ea23f235d8870da3668e82c28edd", ptr %l34
  %t67 = load ptr, ptr %l26, !tbaa !29
  %t68 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t67, i32 0, i32 0
  %t69 = load i64, ptr %l27, !tbaa !24
  %t70 = getelementptr { i64, ptr }, ptr %t68, i32 0, i32 1
  %t71 = load ptr, ptr %t70, !tbaa !27
  %t72 = getelementptr %"std/prelude/map:MapEntry.5d90ea23f235d8870da3668e82c28edd", ptr %t71, i64 %t69
  store %"std/prelude/map:MapEntry.5d90ea23f235d8870da3668e82c28edd" %t66, ptr %t72
  %t73 = load ptr, ptr %l0, !tbaa !29
  %t74 = load i64, ptr %l4, !tbaa !24
  %t75 = load ptr, ptr %l0, !tbaa !29
  %t76 = load i64, ptr %l1, !tbaa !24
  %t78 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t75, i32 0, i32 2
  %t80 = getelementptr { i64, ptr }, ptr %t78, i32 0, i32 1
  %t81 = load ptr, ptr %t80, !tbaa !27
  %t82 = getelementptr i64, ptr %t81, i64 %t76
  %t83 = load i64, ptr %t82, !tbaa !34
  %t86 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t73, i32 0, i32 1
  %t88 = getelementptr { i64, ptr }, ptr %t86, i32 0, i32 1
  %t89 = load ptr, ptr %t88, !tbaa !27
  %t90 = getelementptr i64, ptr %t89, i64 %t74
  store i64 %t83, ptr %t90, !tbaa !34
  %t91 = load ptr, ptr %l0, !tbaa !29
  %t92 = load i64, ptr %l1, !tbaa !24
  %t93 = load i64, ptr %l4, !tbaa !24
  %t96 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t91, i32 0, i32 2
  %t98 = getelementptr { i64, ptr }, ptr %t96, i32 0, i32 1
  %t99 = load ptr, ptr %t98, !tbaa !27
  %t100 = getelementptr i64, ptr %t99, i64 %t92
  store i64 %t93, ptr %t100, !tbaa !34
  %t101 = load ptr, ptr %l0, !tbaa !29
  store ptr %t101, ptr %l43, !tbaa !29
  %t102 = load ptr, ptr %l43, !tbaa !29
  %t103 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t102, i32 0, i32 4
  %t104 = load i64, ptr %t103, !tbaa !24
  %t106 = add i64 %t104, 1
  %t108 = load ptr, ptr %l43, !tbaa !29
  %t109 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t108, i32 0, i32 4
  store i64 %t106, ptr %t109, !tbaa !24
  %t110 = load ptr, ptr %l0, !tbaa !29
  %t112 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t110, i32 0, i32 4
  %t113 = load i64, ptr %t112, !tbaa !24
  %t115 = mul i64 %t113, 4
  %t116 = load ptr, ptr %l0, !tbaa !29
  %t118 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t116, i32 0, i32 2
  %t119 = load { i64, ptr }, ptr %t118, !tbaa !27
  %t121 = extractvalue { i64, ptr } %t119, 0
  %t123 = mul i64 %t121, 3
  %t126 = icmp sgt i64 %t115, %t123
  br i1 %t126, label %bb12, label %bb13
bb12:
  %t128 = load ptr, ptr %l0, !tbaa !29
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H9032c6a3ab5d34e24fa3c5fb64b0c223(ptr %v0, ptr %t128)
  br label %bb14
bb13:
  br label %bb15
bb14:
  br label %bb15
bb15:
  br label %ret
ret:
  ret void
}

define dso_local %"std/prelude/map:MapKeyIter.bf5835bb10600fe6a7fc1da14a6360d9" @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H7f0db9a748408eed60466e9bcc3da0f4(ptr %v0, ptr %v1, ptr %a0) #0 {
entry:
  %r = tail call %"std/prelude/map:MapKeyIter.bf5835bb10600fe6a7fc1da14a6360d9" @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_Hd80cb4cbc6ceb8a13686fbc19b8451b4(ptr %v0, ptr %v1, ptr %a0)
  ret %"std/prelude/map:MapKeyIter.bf5835bb10600fe6a7fc1da14a6360d9" %r
}

define dso_local void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H90b2f1a7b052980cba404816f65c3f1c(ptr %v0, ptr %a0, i64 %a1, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %a2, { i64, [1 x i64] } %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l4 = alloca i64
  %l9 = alloca ptr
  %l13 = alloca i64
  %l23 = alloca ptr
  %l26 = alloca ptr
  %l27 = alloca i64
  %l30 = alloca %"std/prelude/map:MapEntry.8c7bad97385adc7a5b41f0343fdc7864"
  %l39 = alloca ptr
  %s0 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t1, i32 0, i32 5
  %t4 = load i64, ptr %t3, !tbaa !24
  store i64 %t4, ptr %l4, !tbaa !24
  %t6 = load i64, ptr %l4, !tbaa !24
  %t8 = icmp sge i64 %t6, 0
  br i1 %t8, label %bb1, label %bb2
bb1:
  %t10 = load ptr, ptr %l0, !tbaa !29
  store ptr %t10, ptr %l9, !tbaa !29
  %t11 = load ptr, ptr %l0, !tbaa !29
  %t12 = load i64, ptr %l4, !tbaa !24
  %t14 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t11, i32 0, i32 1
  %t16 = getelementptr { i64, ptr }, ptr %t14, i32 0, i32 1
  %t17 = load ptr, ptr %t16, !tbaa !27
  %t18 = getelementptr i64, ptr %t17, i64 %t12
  %t19 = load i64, ptr %t18, !tbaa !34
  %t21 = call i64 @std_2fprelude_2fmap_2efreeLink(i64 %t19)
  store i64 %t21, ptr %l13
  br label %bb3
bb2:
  %t22 = load ptr, ptr %l0, !tbaa !29
  %t24 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t22, i32 0, i32 3
  %t25 = load i64, ptr %t24, !tbaa !24
  %t26 = load ptr, ptr %l0, !tbaa !29
  %t28 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t26, i32 0, i32 0
  %t29 = load { i64, ptr }, ptr %t28, !tbaa !27
  %t31 = extractvalue { i64, ptr } %t29, 0
  %t34 = icmp eq i64 %t25, %t31
  br i1 %t34, label %bb4, label %bb5
bb3:
  %t36 = load i64, ptr %l13, !tbaa !24
  %t37 = load ptr, ptr %l9, !tbaa !29
  %t38 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t37, i32 0, i32 5
  store i64 %t36, ptr %t38, !tbaa !24
  br label %bb8
bb4:
  %t39 = load ptr, ptr %l0, !tbaa !29
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H82b0519898a45af4725a262dee225dae(ptr %v0, ptr %t39)
  br label %bb6
bb5:
  br label %bb7
bb6:
  br label %bb7
bb7:
  %t41 = load ptr, ptr %l0, !tbaa !29
  %t43 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t41, i32 0, i32 3
  %t44 = load i64, ptr %t43, !tbaa !24
  store i64 %t44, ptr %l4, !tbaa !24
  %t46 = load ptr, ptr %l0, !tbaa !29
  store ptr %t46, ptr %l23, !tbaa !29
  %t47 = load ptr, ptr %l23, !tbaa !29
  %t48 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t47, i32 0, i32 3
  %t49 = load i64, ptr %t48, !tbaa !24
  %t51 = add i64 %t49, 1
  %t53 = load ptr, ptr %l23, !tbaa !29
  %t54 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t53, i32 0, i32 3
  store i64 %t51, ptr %t54, !tbaa !24
  br label %bb8
bb8:
  %t55 = load ptr, ptr %l0, !tbaa !29
  store ptr %t55, ptr %l26, !tbaa !29
  %t56 = load i64, ptr %l4, !tbaa !24
  store i64 %t56, ptr %l27, !tbaa !24
  %t61 = call %"std/prelude/map:MapEntry.8c7bad97385adc7a5b41f0343fdc7864" @std_2fprelude_2fmap_3aMapEntry_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_20compiler_2ftyped_3aMark_3e_2ector(ptr %s0, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %a2, { i64, [1 x i64] } %a3)
  store %"std/prelude/map:MapEntry.8c7bad97385adc7a5b41f0343fdc7864" %t61, ptr %l30
  br label %bb9
bb9:
  %t62 = load %"std/prelude/map:MapEntry.8c7bad97385adc7a5b41f0343fdc7864", ptr %l30
  %t63 = load ptr, ptr %l26, !tbaa !29
  %t64 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t63, i32 0, i32 0
  %t65 = load i64, ptr %l27, !tbaa !24
  %t66 = getelementptr { i64, ptr }, ptr %t64, i32 0, i32 1
  %t67 = load ptr, ptr %t66, !tbaa !27
  %t68 = getelementptr %"std/prelude/map:MapEntry.8c7bad97385adc7a5b41f0343fdc7864", ptr %t67, i64 %t65
  store %"std/prelude/map:MapEntry.8c7bad97385adc7a5b41f0343fdc7864" %t62, ptr %t68
  %t69 = load ptr, ptr %l0, !tbaa !29
  %t70 = load i64, ptr %l4, !tbaa !24
  %t71 = load ptr, ptr %l0, !tbaa !29
  %t72 = load i64, ptr %l1, !tbaa !24
  %t74 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t71, i32 0, i32 2
  %t76 = getelementptr { i64, ptr }, ptr %t74, i32 0, i32 1
  %t77 = load ptr, ptr %t76, !tbaa !27
  %t78 = getelementptr i64, ptr %t77, i64 %t72
  %t79 = load i64, ptr %t78, !tbaa !34
  %t82 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t69, i32 0, i32 1
  %t84 = getelementptr { i64, ptr }, ptr %t82, i32 0, i32 1
  %t85 = load ptr, ptr %t84, !tbaa !27
  %t86 = getelementptr i64, ptr %t85, i64 %t70
  store i64 %t79, ptr %t86, !tbaa !34
  %t87 = load ptr, ptr %l0, !tbaa !29
  %t88 = load i64, ptr %l1, !tbaa !24
  %t89 = load i64, ptr %l4, !tbaa !24
  %t92 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t87, i32 0, i32 2
  %t94 = getelementptr { i64, ptr }, ptr %t92, i32 0, i32 1
  %t95 = load ptr, ptr %t94, !tbaa !27
  %t96 = getelementptr i64, ptr %t95, i64 %t88
  store i64 %t89, ptr %t96, !tbaa !34
  %t97 = load ptr, ptr %l0, !tbaa !29
  store ptr %t97, ptr %l39, !tbaa !29
  %t98 = load ptr, ptr %l39, !tbaa !29
  %t99 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t98, i32 0, i32 4
  %t100 = load i64, ptr %t99, !tbaa !24
  %t102 = add i64 %t100, 1
  %t104 = load ptr, ptr %l39, !tbaa !29
  %t105 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t104, i32 0, i32 4
  store i64 %t102, ptr %t105, !tbaa !24
  %t106 = load ptr, ptr %l0, !tbaa !29
  %t108 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t106, i32 0, i32 4
  %t109 = load i64, ptr %t108, !tbaa !24
  %t111 = mul i64 %t109, 4
  %t112 = load ptr, ptr %l0, !tbaa !29
  %t114 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t112, i32 0, i32 2
  %t115 = load { i64, ptr }, ptr %t114, !tbaa !27
  %t117 = extractvalue { i64, ptr } %t115, 0
  %t119 = mul i64 %t117, 3
  %t122 = icmp sgt i64 %t111, %t119
  br i1 %t122, label %bb10, label %bb11
bb10:
  %t124 = load ptr, ptr %l0, !tbaa !29
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H1f76df8a621f70023e022326f6e3e23c(ptr %v0, ptr %t124)
  br label %bb12
bb11:
  br label %bb13
bb12:
  br label %bb13
bb13:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H9fdc8568408306fa9a87591b3a40f2fa(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca i64
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca ptr
  %l12 = alloca i64
  %l21 = alloca i64
  %l24 = alloca i64
  %l44 = alloca i1
  %l50 = alloca i64
  %t19 = alloca i64
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1, ptr %l8, !tbaa !29
  %t2 = load ptr, ptr %l0, !tbaa !29
  %t4 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t2, i32 0, i32 2
  %t5 = load { i64, ptr }, ptr %t4, !tbaa !27
  %t7 = extractvalue { i64, ptr } %t5, 0
  %t9 = mul i64 %t7, 2
  store i64 %t9, ptr %l12, !tbaa !24
  %t10 = load i64, ptr %l12, !tbaa !24
  %t11 = icmp sge i64 %t10, 0
  br i1 %t11, label %bb1, label %bb2
bb1:
  %t13 = load i64, ptr %l12, !tbaa !24
  %t14 = icmp sle i64 %t13, 1152921504606846975
  br i1 %t14, label %bb3, label %bb4
bb2:
  call void @__olang_check_failed(ptr @olang_loc_24094b025ec3785d_cef0face9ea8d0e1)
  unreachable
bb3:
  %t16 = load i64, ptr %l12, !tbaa !24
  %t17 = mul i64 %t16, 8
  %t18 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t17)
  store i64 0, ptr %t19
  br label %fill.20
fill.20:
  %t23 = load i64, ptr %t19
  %t24 = icmp slt i64 %t23, %t16
  br i1 %t24, label %fillb.21, label %filld.22
fillb.21:
  %t25 = getelementptr i64, ptr %t18, i64 %t23
  store i64 -1, ptr %t25
  %t26 = add i64 %t23, 1
  store i64 %t26, ptr %t19
  br label %fill.20
filld.22:
  %t27 = insertvalue { i64, ptr } undef, i64 %t16, 0
  %t28 = insertvalue { i64, ptr } %t27, ptr %t18, 1
  %t30 = load ptr, ptr %l8, !tbaa !29
  %t31 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t30, i32 0, i32 2
  store { i64, ptr } %t28, ptr %t31, !tbaa !27
  store i64 0, ptr %l1, !tbaa !24
  %t32 = load ptr, ptr %l0, !tbaa !29
  %t34 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t32, i32 0, i32 3
  %t35 = load i64, ptr %t34, !tbaa !24
  store i64 %t35, ptr %l2, !tbaa !24
  store i64 1, ptr %l3, !tbaa !24
  %t37 = load i64, ptr %l2, !tbaa !24
  %t38 = load i64, ptr %l1, !tbaa !24
  %t41 = icmp sgt i64 %t37, %t38
  br i1 %t41, label %bb5, label %bb6
bb4:
  call void @__olang_check_failed(ptr @olang_loc_24094b025ec3785d_cef0face9ea8d0e1)
  unreachable
bb5:
  %t43 = load i64, ptr %l3, !tbaa !24
  %t45 = icmp sgt i64 %t43, 0
  br i1 %t45, label %bb7, label %bb8
bb6:
  store i64 0, ptr %l21, !tbaa !24
  br label %bb10
bb7:
  %t47 = load i64, ptr %l2, !tbaa !24
  %t48 = load i64, ptr %l1, !tbaa !24
  %t51 = sub i64 %t47, %t48
  %t52 = load i64, ptr %l3, !tbaa !24
  %t55 = add i64 %t51, %t52
  %t57 = sub i64 %t55, 1
  %t58 = load i64, ptr %l3, !tbaa !24
  %t61 = sdiv i64 %t57, %t58
  store i64 %t61, ptr %l24, !tbaa !24
  br label %bb9
bb8:
  store i64 0, ptr %l24, !tbaa !24
  br label %bb9
bb9:
  %t63 = load i64, ptr %l24, !tbaa !24
  store i64 %t63, ptr %l21, !tbaa !24
  br label %bb10
bb10:
  %t64 = load i64, ptr %l21, !tbaa !24
  store i64 %t64, ptr %l4, !tbaa !24
  store i64 0, ptr %l5, !tbaa !24
  br label %bb11
bb11:
  %t65 = load i64, ptr %l5, !tbaa !24
  %t66 = load i64, ptr %l4, !tbaa !24
  %t69 = icmp slt i64 %t65, %t66
  %t71 = xor i1 %t69, true
  br i1 %t71, label %bb12, label %bb13
bb12:
  br label %bb21
bb13:
  br label %bb14
bb14:
  %t73 = load i64, ptr %l1, !tbaa !24
  %t74 = load i64, ptr %l5, !tbaa !24
  %t75 = load i64, ptr %l3, !tbaa !24
  %t78 = mul i64 %t74, %t75
  %t81 = add i64 %t73, %t78
  store i64 %t81, ptr %l6, !tbaa !24
  %t83 = load ptr, ptr %l0, !tbaa !29
  %t84 = load i64, ptr %l6, !tbaa !24
  %t87 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_H068cfedf7407289d149ee3c6f4c8aa20(ptr %v0, ptr %t83, i64 %t84)
  store i1 %t87, ptr %l44
  br label %bb15
bb15:
  %t88 = load i1, ptr %l44, !tbaa !21
  %t89 = xor i1 %t88, true
  br i1 %t89, label %bb16, label %bb17
bb16:
  br label %bb20
bb17:
  br label %bb18
bb18:
  %t91 = load ptr, ptr %l0, !tbaa !29
  %t92 = load ptr, ptr %l0, !tbaa !29
  %t93 = load i64, ptr %l6, !tbaa !24
  %t95 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t92, i32 0, i32 0
  %t97 = getelementptr { i64, ptr }, ptr %t95, i32 0, i32 1
  %t98 = load ptr, ptr %t97, !tbaa !27
  %t99 = getelementptr %"std/prelude/map:MapEntry.9ce8a46a5d367870e2478b0757bce708", ptr %t98, i64 %t93
  %t100 = getelementptr %"std/prelude/map:MapEntry.9ce8a46a5d367870e2478b0757bce708", ptr %t99, i32 0, i32 0
  %t101 = load %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %t100
  %t104 = call i64 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H2b299ac8414fe0900d06d94de708c354(ptr %v0, ptr %t91, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t101)
  store i64 %t104, ptr %l50
  br label %bb19
bb19:
  %t105 = load i64, ptr %l50, !tbaa !24
  store i64 %t105, ptr %l7, !tbaa !24
  %t106 = load ptr, ptr %l0, !tbaa !29
  %t107 = load i64, ptr %l6, !tbaa !24
  %t108 = load ptr, ptr %l0, !tbaa !29
  %t109 = load i64, ptr %l7, !tbaa !24
  %t111 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t108, i32 0, i32 2
  %t113 = getelementptr { i64, ptr }, ptr %t111, i32 0, i32 1
  %t114 = load ptr, ptr %t113, !tbaa !27
  %t115 = getelementptr i64, ptr %t114, i64 %t109
  %t116 = load i64, ptr %t115, !tbaa !34
  %t119 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t106, i32 0, i32 1
  %t121 = getelementptr { i64, ptr }, ptr %t119, i32 0, i32 1
  %t122 = load ptr, ptr %t121, !tbaa !27
  %t123 = getelementptr i64, ptr %t122, i64 %t107
  store i64 %t116, ptr %t123, !tbaa !34
  %t124 = load ptr, ptr %l0, !tbaa !29
  %t125 = load i64, ptr %l7, !tbaa !24
  %t126 = load i64, ptr %l6, !tbaa !24
  %t129 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t124, i32 0, i32 2
  %t131 = getelementptr { i64, ptr }, ptr %t129, i32 0, i32 1
  %t132 = load ptr, ptr %t131, !tbaa !27
  %t133 = getelementptr i64, ptr %t132, i64 %t125
  store i64 %t126, ptr %t133, !tbaa !34
  br label %bb20
bb20:
  %t134 = load i64, ptr %l5, !tbaa !24
  %t136 = add i64 %t134, 1
  store i64 %t136, ptr %l5, !tbaa !24
  br label %bb11
bb21:
  br label %ret
ret:
  ret void
}

define dso_local { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_Ha4e72ca71bd1859a5af113f26a4315b6(ptr %v0, ptr %a0, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0"
  %l2 = alloca i64
  %l7 = alloca ptr
  %l10 = alloca i64
  %l17 = alloca %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0"
  %l19 = alloca %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0"
  %l21 = alloca i1
  %rv = alloca { i32, i64 }
  store ptr %a0, ptr %l0
  store %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t1, i32 0, i32 4
  %t4 = load i64, ptr %t3, !tbaa !24
  %t6 = icmp eq i64 %t4, 0
  br i1 %t6, label %bb1, label %bb2
bb1:
  %t9 = insertvalue { i32, i64 } zeroinitializer, i32 65536, 0
  store { i32, i64 } %t9, ptr %rv
  br label %ret
bb2:
  br label %bb3
bb3:
  %t10 = load ptr, ptr %l0, !tbaa !29
  store ptr %t10, ptr %l7, !tbaa !29
  %t11 = load ptr, ptr %l0, !tbaa !29
  %t12 = load %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %l1
  %t15 = call i64 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H2b299ac8414fe0900d06d94de708c354(ptr %v0, ptr %t11, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t12)
  store i64 %t15, ptr %l10
  br label %bb4
bb4:
  %t16 = load ptr, ptr %l7, !tbaa !29
  %t17 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t16, i32 0, i32 2
  %t18 = load i64, ptr %l10, !tbaa !24
  %t19 = getelementptr { i64, ptr }, ptr %t17, i32 0, i32 1
  %t20 = load ptr, ptr %t19, !tbaa !27
  %t21 = getelementptr i64, ptr %t20, i64 %t18
  %t22 = load i64, ptr %t21, !tbaa !34
  store i64 %t22, ptr %l2, !tbaa !24
  br label %bb5
bb5:
  %t24 = load i64, ptr %l2, !tbaa !24
  %t26 = icmp sge i64 %t24, 0
  %t28 = xor i1 %t26, true
  br i1 %t28, label %bb6, label %bb7
bb6:
  br label %bb14
bb7:
  br label %bb8
bb8:
  %t30 = load ptr, ptr %l0, !tbaa !29
  %t31 = load i64, ptr %l2, !tbaa !24
  %t33 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t30, i32 0, i32 0
  %t35 = getelementptr { i64, ptr }, ptr %t33, i32 0, i32 1
  %t36 = load ptr, ptr %t35, !tbaa !27
  %t37 = getelementptr %"std/prelude/map:MapEntry.8c7bad97385adc7a5b41f0343fdc7864", ptr %t36, i64 %t31
  %t38 = getelementptr %"std/prelude/map:MapEntry.8c7bad97385adc7a5b41f0343fdc7864", ptr %t37, i32 0, i32 0
  %t39 = load %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %t38
  store %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t39, ptr %l17
  %t40 = load %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %l1
  store %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t40, ptr %l19
  %t43 = call i1 @olang_2emir_2eHelperKind_2eEqual_2estd_2fpair_3aPair_3cI64_2c_20I64_3e(ptr %l17, ptr %l19)
  store i1 %t43, ptr %l21
  br label %bb9
bb9:
  %t44 = load i1, ptr %l21, !tbaa !21
  br i1 %t44, label %bb10, label %bb11
bb10:
  %t45 = load i64, ptr %l2, !tbaa !24
  %t47 = insertvalue { i32, i64 } zeroinitializer, i64 %t45, 1
  store { i32, i64 } %t47, ptr %rv
  br label %ret
bb11:
  br label %bb12
bb12:
  br label %bb13
bb13:
  %t48 = load ptr, ptr %l0, !tbaa !29
  %t49 = load i64, ptr %l2, !tbaa !24
  %t51 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t48, i32 0, i32 1
  %t53 = getelementptr { i64, ptr }, ptr %t51, i32 0, i32 1
  %t54 = load ptr, ptr %t53, !tbaa !27
  %t55 = getelementptr i64, ptr %t54, i64 %t49
  %t56 = load i64, ptr %t55, !tbaa !34
  store i64 %t56, ptr %l2, !tbaa !24
  br label %bb5
bb14:
  %t59 = insertvalue { i32, i64 } zeroinitializer, i32 65536, 0
  store { i32, i64 } %t59, ptr %rv
  br label %ret
ret:
  %rr = load { i32, i64 }, ptr %rv
  ret { i32, i64 } %rr
}

define dso_local void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_Hab75d718b46174fcd7d5c1dad72cbd5f(ptr %v0, ptr %a0, i64 %a1, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %a2, { i64, [2 x i64] } %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l4 = alloca i64
  %l9 = alloca ptr
  %l13 = alloca i64
  %l23 = alloca ptr
  %l26 = alloca ptr
  %l27 = alloca i64
  %l30 = alloca %"std/prelude/map:MapEntry.1b1d537c79dee3d5948de1b7c1a79d8b"
  %l39 = alloca ptr
  %s0 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t1, i32 0, i32 5
  %t4 = load i64, ptr %t3, !tbaa !24
  store i64 %t4, ptr %l4, !tbaa !24
  %t6 = load i64, ptr %l4, !tbaa !24
  %t8 = icmp sge i64 %t6, 0
  br i1 %t8, label %bb1, label %bb2
bb1:
  %t10 = load ptr, ptr %l0, !tbaa !29
  store ptr %t10, ptr %l9, !tbaa !29
  %t11 = load ptr, ptr %l0, !tbaa !29
  %t12 = load i64, ptr %l4, !tbaa !24
  %t14 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t11, i32 0, i32 1
  %t16 = getelementptr { i64, ptr }, ptr %t14, i32 0, i32 1
  %t17 = load ptr, ptr %t16, !tbaa !27
  %t18 = getelementptr i64, ptr %t17, i64 %t12
  %t19 = load i64, ptr %t18, !tbaa !34
  %t21 = call i64 @std_2fprelude_2fmap_2efreeLink(i64 %t19)
  store i64 %t21, ptr %l13
  br label %bb3
bb2:
  %t22 = load ptr, ptr %l0, !tbaa !29
  %t24 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t22, i32 0, i32 3
  %t25 = load i64, ptr %t24, !tbaa !24
  %t26 = load ptr, ptr %l0, !tbaa !29
  %t28 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t26, i32 0, i32 0
  %t29 = load { i64, ptr }, ptr %t28, !tbaa !27
  %t31 = extractvalue { i64, ptr } %t29, 0
  %t34 = icmp eq i64 %t25, %t31
  br i1 %t34, label %bb4, label %bb5
bb3:
  %t36 = load i64, ptr %l13, !tbaa !24
  %t37 = load ptr, ptr %l9, !tbaa !29
  %t38 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t37, i32 0, i32 5
  store i64 %t36, ptr %t38, !tbaa !24
  br label %bb8
bb4:
  %t39 = load ptr, ptr %l0, !tbaa !29
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H335f5042d0dc56bacbac76a21761a9ba(ptr %v0, ptr %t39)
  br label %bb6
bb5:
  br label %bb7
bb6:
  br label %bb7
bb7:
  %t41 = load ptr, ptr %l0, !tbaa !29
  %t43 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t41, i32 0, i32 3
  %t44 = load i64, ptr %t43, !tbaa !24
  store i64 %t44, ptr %l4, !tbaa !24
  %t46 = load ptr, ptr %l0, !tbaa !29
  store ptr %t46, ptr %l23, !tbaa !29
  %t47 = load ptr, ptr %l23, !tbaa !29
  %t48 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t47, i32 0, i32 3
  %t49 = load i64, ptr %t48, !tbaa !24
  %t51 = add i64 %t49, 1
  %t53 = load ptr, ptr %l23, !tbaa !29
  %t54 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t53, i32 0, i32 3
  store i64 %t51, ptr %t54, !tbaa !24
  br label %bb8
bb8:
  %t55 = load ptr, ptr %l0, !tbaa !29
  store ptr %t55, ptr %l26, !tbaa !29
  %t56 = load i64, ptr %l4, !tbaa !24
  store i64 %t56, ptr %l27, !tbaa !24
  %t61 = call %"std/prelude/map:MapEntry.1b1d537c79dee3d5948de1b7c1a79d8b" @std_2fprelude_2fmap_3aMapEntry_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_20compiler_2fscope_3aTerm_3e_2ector(ptr %s0, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %a2, { i64, [2 x i64] } %a3)
  store %"std/prelude/map:MapEntry.1b1d537c79dee3d5948de1b7c1a79d8b" %t61, ptr %l30
  br label %bb9
bb9:
  %t62 = load %"std/prelude/map:MapEntry.1b1d537c79dee3d5948de1b7c1a79d8b", ptr %l30
  %t63 = load ptr, ptr %l26, !tbaa !29
  %t64 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t63, i32 0, i32 0
  %t65 = load i64, ptr %l27, !tbaa !24
  %t66 = getelementptr { i64, ptr }, ptr %t64, i32 0, i32 1
  %t67 = load ptr, ptr %t66, !tbaa !27
  %t68 = getelementptr %"std/prelude/map:MapEntry.1b1d537c79dee3d5948de1b7c1a79d8b", ptr %t67, i64 %t65
  store %"std/prelude/map:MapEntry.1b1d537c79dee3d5948de1b7c1a79d8b" %t62, ptr %t68
  %t69 = load ptr, ptr %l0, !tbaa !29
  %t70 = load i64, ptr %l4, !tbaa !24
  %t71 = load ptr, ptr %l0, !tbaa !29
  %t72 = load i64, ptr %l1, !tbaa !24
  %t74 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t71, i32 0, i32 2
  %t76 = getelementptr { i64, ptr }, ptr %t74, i32 0, i32 1
  %t77 = load ptr, ptr %t76, !tbaa !27
  %t78 = getelementptr i64, ptr %t77, i64 %t72
  %t79 = load i64, ptr %t78, !tbaa !34
  %t82 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t69, i32 0, i32 1
  %t84 = getelementptr { i64, ptr }, ptr %t82, i32 0, i32 1
  %t85 = load ptr, ptr %t84, !tbaa !27
  %t86 = getelementptr i64, ptr %t85, i64 %t70
  store i64 %t79, ptr %t86, !tbaa !34
  %t87 = load ptr, ptr %l0, !tbaa !29
  %t88 = load i64, ptr %l1, !tbaa !24
  %t89 = load i64, ptr %l4, !tbaa !24
  %t92 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t87, i32 0, i32 2
  %t94 = getelementptr { i64, ptr }, ptr %t92, i32 0, i32 1
  %t95 = load ptr, ptr %t94, !tbaa !27
  %t96 = getelementptr i64, ptr %t95, i64 %t88
  store i64 %t89, ptr %t96, !tbaa !34
  %t97 = load ptr, ptr %l0, !tbaa !29
  store ptr %t97, ptr %l39, !tbaa !29
  %t98 = load ptr, ptr %l39, !tbaa !29
  %t99 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t98, i32 0, i32 4
  %t100 = load i64, ptr %t99, !tbaa !24
  %t102 = add i64 %t100, 1
  %t104 = load ptr, ptr %l39, !tbaa !29
  %t105 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t104, i32 0, i32 4
  store i64 %t102, ptr %t105, !tbaa !24
  %t106 = load ptr, ptr %l0, !tbaa !29
  %t108 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t106, i32 0, i32 4
  %t109 = load i64, ptr %t108, !tbaa !24
  %t111 = mul i64 %t109, 4
  %t112 = load ptr, ptr %l0, !tbaa !29
  %t114 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t112, i32 0, i32 2
  %t115 = load { i64, ptr }, ptr %t114, !tbaa !27
  %t117 = extractvalue { i64, ptr } %t115, 0
  %t119 = mul i64 %t117, 3
  %t122 = icmp sgt i64 %t111, %t119
  br i1 %t122, label %bb10, label %bb11
bb10:
  %t124 = load ptr, ptr %l0, !tbaa !29
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H7e25f6d14d72c5c05d6ad50f255768db(ptr %v0, ptr %t124)
  br label %bb12
bb11:
  br label %bb13
bb12:
  br label %bb13
bb13:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_Hc2a254abf8c22582ccd97018d00eb7e0(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca i64
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca ptr
  %l12 = alloca i64
  %l21 = alloca i64
  %l24 = alloca i64
  %l44 = alloca i1
  %l50 = alloca i64
  %t19 = alloca i64
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1, ptr %l8, !tbaa !29
  %t2 = load ptr, ptr %l0, !tbaa !29
  %t4 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t2, i32 0, i32 2
  %t5 = load { i64, ptr }, ptr %t4, !tbaa !27
  %t7 = extractvalue { i64, ptr } %t5, 0
  %t9 = mul i64 %t7, 2
  store i64 %t9, ptr %l12, !tbaa !24
  %t10 = load i64, ptr %l12, !tbaa !24
  %t11 = icmp sge i64 %t10, 0
  br i1 %t11, label %bb1, label %bb2
bb1:
  %t13 = load i64, ptr %l12, !tbaa !24
  %t14 = icmp sle i64 %t13, 1152921504606846975
  br i1 %t14, label %bb3, label %bb4
bb2:
  call void @__olang_check_failed(ptr @olang_loc_fddcfd835a4483a5_5a6ac7e89ec92289)
  unreachable
bb3:
  %t16 = load i64, ptr %l12, !tbaa !24
  %t17 = mul i64 %t16, 8
  %t18 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t17)
  store i64 0, ptr %t19
  br label %fill.20
fill.20:
  %t23 = load i64, ptr %t19
  %t24 = icmp slt i64 %t23, %t16
  br i1 %t24, label %fillb.21, label %filld.22
fillb.21:
  %t25 = getelementptr i64, ptr %t18, i64 %t23
  store i64 -1, ptr %t25
  %t26 = add i64 %t23, 1
  store i64 %t26, ptr %t19
  br label %fill.20
filld.22:
  %t27 = insertvalue { i64, ptr } undef, i64 %t16, 0
  %t28 = insertvalue { i64, ptr } %t27, ptr %t18, 1
  %t30 = load ptr, ptr %l8, !tbaa !29
  %t31 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t30, i32 0, i32 2
  store { i64, ptr } %t28, ptr %t31, !tbaa !27
  store i64 0, ptr %l1, !tbaa !24
  %t32 = load ptr, ptr %l0, !tbaa !29
  %t34 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t32, i32 0, i32 3
  %t35 = load i64, ptr %t34, !tbaa !24
  store i64 %t35, ptr %l2, !tbaa !24
  store i64 1, ptr %l3, !tbaa !24
  %t37 = load i64, ptr %l2, !tbaa !24
  %t38 = load i64, ptr %l1, !tbaa !24
  %t41 = icmp sgt i64 %t37, %t38
  br i1 %t41, label %bb5, label %bb6
bb4:
  call void @__olang_check_failed(ptr @olang_loc_fddcfd835a4483a5_5a6ac7e89ec92289)
  unreachable
bb5:
  %t43 = load i64, ptr %l3, !tbaa !24
  %t45 = icmp sgt i64 %t43, 0
  br i1 %t45, label %bb7, label %bb8
bb6:
  store i64 0, ptr %l21, !tbaa !24
  br label %bb10
bb7:
  %t47 = load i64, ptr %l2, !tbaa !24
  %t48 = load i64, ptr %l1, !tbaa !24
  %t51 = sub i64 %t47, %t48
  %t52 = load i64, ptr %l3, !tbaa !24
  %t55 = add i64 %t51, %t52
  %t57 = sub i64 %t55, 1
  %t58 = load i64, ptr %l3, !tbaa !24
  %t61 = sdiv i64 %t57, %t58
  store i64 %t61, ptr %l24, !tbaa !24
  br label %bb9
bb8:
  store i64 0, ptr %l24, !tbaa !24
  br label %bb9
bb9:
  %t63 = load i64, ptr %l24, !tbaa !24
  store i64 %t63, ptr %l21, !tbaa !24
  br label %bb10
bb10:
  %t64 = load i64, ptr %l21, !tbaa !24
  store i64 %t64, ptr %l4, !tbaa !24
  store i64 0, ptr %l5, !tbaa !24
  br label %bb11
bb11:
  %t65 = load i64, ptr %l5, !tbaa !24
  %t66 = load i64, ptr %l4, !tbaa !24
  %t69 = icmp slt i64 %t65, %t66
  %t71 = xor i1 %t69, true
  br i1 %t71, label %bb12, label %bb13
bb12:
  br label %bb21
bb13:
  br label %bb14
bb14:
  %t73 = load i64, ptr %l1, !tbaa !24
  %t74 = load i64, ptr %l5, !tbaa !24
  %t75 = load i64, ptr %l3, !tbaa !24
  %t78 = mul i64 %t74, %t75
  %t81 = add i64 %t73, %t78
  store i64 %t81, ptr %l6, !tbaa !24
  %t83 = load ptr, ptr %l0, !tbaa !29
  %t84 = load i64, ptr %l6, !tbaa !24
  %t87 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_H068cfedf7407289d149ee3c6f4c8aa20(ptr %v0, ptr %t83, i64 %t84)
  store i1 %t87, ptr %l44
  br label %bb15
bb15:
  %t88 = load i1, ptr %l44, !tbaa !21
  %t89 = xor i1 %t88, true
  br i1 %t89, label %bb16, label %bb17
bb16:
  br label %bb20
bb17:
  br label %bb18
bb18:
  %t91 = load ptr, ptr %l0, !tbaa !29
  %t92 = load ptr, ptr %l0, !tbaa !29
  %t93 = load i64, ptr %l6, !tbaa !24
  %t95 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t92, i32 0, i32 0
  %t97 = getelementptr { i64, ptr }, ptr %t95, i32 0, i32 1
  %t98 = load ptr, ptr %t97, !tbaa !27
  %t99 = getelementptr %"std/prelude/map:MapEntry.545808996237a863e786f2cb6df7346f", ptr %t98, i64 %t93
  %t100 = getelementptr %"std/prelude/map:MapEntry.545808996237a863e786f2cb6df7346f", ptr %t99, i32 0, i32 0
  %t101 = load %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %t100
  %t104 = call i64 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H2b299ac8414fe0900d06d94de708c354(ptr %v0, ptr %t91, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t101)
  store i64 %t104, ptr %l50
  br label %bb19
bb19:
  %t105 = load i64, ptr %l50, !tbaa !24
  store i64 %t105, ptr %l7, !tbaa !24
  %t106 = load ptr, ptr %l0, !tbaa !29
  %t107 = load i64, ptr %l6, !tbaa !24
  %t108 = load ptr, ptr %l0, !tbaa !29
  %t109 = load i64, ptr %l7, !tbaa !24
  %t111 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t108, i32 0, i32 2
  %t113 = getelementptr { i64, ptr }, ptr %t111, i32 0, i32 1
  %t114 = load ptr, ptr %t113, !tbaa !27
  %t115 = getelementptr i64, ptr %t114, i64 %t109
  %t116 = load i64, ptr %t115, !tbaa !34
  %t119 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t106, i32 0, i32 1
  %t121 = getelementptr { i64, ptr }, ptr %t119, i32 0, i32 1
  %t122 = load ptr, ptr %t121, !tbaa !27
  %t123 = getelementptr i64, ptr %t122, i64 %t107
  store i64 %t116, ptr %t123, !tbaa !34
  %t124 = load ptr, ptr %l0, !tbaa !29
  %t125 = load i64, ptr %l7, !tbaa !24
  %t126 = load i64, ptr %l6, !tbaa !24
  %t129 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t124, i32 0, i32 2
  %t131 = getelementptr { i64, ptr }, ptr %t129, i32 0, i32 1
  %t132 = load ptr, ptr %t131, !tbaa !27
  %t133 = getelementptr i64, ptr %t132, i64 %t125
  store i64 %t126, ptr %t133, !tbaa !34
  br label %bb20
bb20:
  %t134 = load i64, ptr %l5, !tbaa !24
  %t136 = add i64 %t134, 1
  store i64 %t136, ptr %l5, !tbaa !24
  br label %bb11
bb21:
  br label %ret
ret:
  ret void
}

define dso_local { i32, { i64, [1 x i64] } } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_Hc5984ad8092bcc1f8400c6a3aa96b134(ptr %v0, ptr %a0, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %a1) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i32
  %rv = alloca { i32, { i64, [1 x i64] } }
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1, ptr %l2, !tbaa !29
  %t2 = load ptr, ptr %l0, !tbaa !29
  %t6 = call { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_Ha4e72ca71bd1859a5af113f26a4315b6(ptr %v0, ptr %t2, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %a1)
  %t7 = extractvalue { i32, i64 } %t6, 1
  %t8 = extractvalue { i32, i64 } %t6, 0
  store i32 %t8, ptr %l7
  %t9 = icmp ne i32 %t8, 0
  br i1 %t9, label %bb2, label %ok.10, !prof !99
ok.10:
  store i64 %t7, ptr %l6
  br label %bb1
bb1:
  %t11 = load i64, ptr %l6, !tbaa !24
  store i64 %t11, ptr %l3, !tbaa !24
  br label %bb3
bb2:
  %t12 = load i32, ptr %l7, !tbaa !23
  %t13 = lshr i32 %t12, 16
  %t14 = and i32 %t12, 65535
  %t15 = icmp eq i32 %t13, 1
  %t16 = select i1 %t15, i32 1, i32 0
  %t17 = icmp eq i32 %t12, 0
  %t18 = shl i32 %t16, 16
  %t19 = or i32 %t18, %t14
  %t20 = select i1 %t17, i32 0, i32 %t19
  %t22 = insertvalue { i32, { i64, [1 x i64] } } zeroinitializer, i32 %t20, 0
  store { i32, { i64, [1 x i64] } } %t22, ptr %rv
  br label %ret
bb3:
  %t23 = load ptr, ptr %l2, !tbaa !29
  %t24 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t23, i32 0, i32 0
  %t25 = load i64, ptr %l3, !tbaa !24
  %t26 = getelementptr { i64, ptr }, ptr %t24, i32 0, i32 1
  %t27 = load ptr, ptr %t26, !tbaa !27
  %t28 = getelementptr %"std/prelude/map:MapEntry.8c7bad97385adc7a5b41f0343fdc7864", ptr %t27, i64 %t25
  %t29 = getelementptr %"std/prelude/map:MapEntry.8c7bad97385adc7a5b41f0343fdc7864", ptr %t28, i32 0, i32 1
  %t30 = load { i64, [1 x i64] }, ptr %t29
  %t32 = insertvalue { i32, { i64, [1 x i64] } } zeroinitializer, { i64, [1 x i64] } %t30, 1
  store { i32, { i64, [1 x i64] } } %t32, ptr %rv
  br label %ret
ret:
  %rr = load { i32, { i64, [1 x i64] } }, ptr %rv
  ret { i32, { i64, [1 x i64] } } %rr
}

define dso_local { i32, %"compiler/scope:fnRecs" } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_Hcfaf91d2f69b0f478c1276e68071930d(ptr %v0, ptr %v1, ptr %a0, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %a1) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i32
  %rv = alloca { i32, %"compiler/scope:fnRecs" }
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1, ptr %l2, !tbaa !29
  %t2 = load ptr, ptr %l0, !tbaa !29
  %t6 = call { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H050b8e98756be8be43114bd418639769(ptr %v0, ptr %t2, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %a1)
  %t7 = extractvalue { i32, i64 } %t6, 1
  %t8 = extractvalue { i32, i64 } %t6, 0
  store i32 %t8, ptr %l7
  %t9 = icmp ne i32 %t8, 0
  br i1 %t9, label %bb2, label %ok.10, !prof !99
ok.10:
  store i64 %t7, ptr %l6
  br label %bb1
bb1:
  %t11 = load i64, ptr %l6, !tbaa !24
  store i64 %t11, ptr %l3, !tbaa !24
  br label %bb3
bb2:
  %t12 = load i32, ptr %l7, !tbaa !23
  %t13 = lshr i32 %t12, 16
  %t14 = and i32 %t12, 65535
  %t15 = icmp eq i32 %t13, 1
  %t16 = select i1 %t15, i32 1, i32 0
  %t17 = icmp eq i32 %t12, 0
  %t18 = shl i32 %t16, 16
  %t19 = or i32 %t18, %t14
  %t20 = select i1 %t17, i32 0, i32 %t19
  %t22 = insertvalue { i32, %"compiler/scope:fnRecs" } zeroinitializer, i32 %t20, 0
  store { i32, %"compiler/scope:fnRecs" } %t22, ptr %rv
  br label %ret
bb3:
  %t23 = load ptr, ptr %l2, !tbaa !29
  %t24 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t23, i32 0, i32 0
  %t25 = load i64, ptr %l3, !tbaa !24
  %t26 = getelementptr { i64, ptr }, ptr %t24, i32 0, i32 1
  %t27 = load ptr, ptr %t26, !tbaa !27
  %t28 = getelementptr %"std/prelude/map:MapEntry.0bcda5c026701d95f15bce76f62e86ad", ptr %t27, i64 %t25
  %t29 = getelementptr %"std/prelude/map:MapEntry.0bcda5c026701d95f15bce76f62e86ad", ptr %t28, i32 0, i32 1
  %t30 = load %"compiler/scope:fnRecs", ptr %t29
  %t32 = insertvalue { i32, %"compiler/scope:fnRecs" } zeroinitializer, %"compiler/scope:fnRecs" %t30, 1
  store { i32, %"compiler/scope:fnRecs" } %t32, ptr %rv
  br label %ret
ret:
  %rr = load { i32, %"compiler/scope:fnRecs" }, ptr %rv
  ret { i32, %"compiler/scope:fnRecs" } %rr
}

define dso_local %"std/prelude/map:MapKeyIter.bf5835bb10600fe6a7fc1da14a6360d9" @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_Hf554e3812f6eb8d76d1c74a8cefae175(ptr %v0, ptr %v1, ptr %a0) #0 {
entry:
  %r = tail call %"std/prelude/map:MapKeyIter.bf5835bb10600fe6a7fc1da14a6360d9" @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_Hd80cb4cbc6ceb8a13686fbc19b8451b4(ptr %v0, ptr %v1, ptr %a0)
  ret %"std/prelude/map:MapKeyIter.bf5835bb10600fe6a7fc1da14a6360d9" %r
}

define dso_local %"std/prelude/map:MapKeyIter.bf5835bb10600fe6a7fc1da14a6360d9" @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_Hf5972b56dda05d695717ba209d559592(ptr %v0, ptr %v1, ptr %a0) #0 {
entry:
  %r = tail call %"std/prelude/map:MapKeyIter.bf5835bb10600fe6a7fc1da14a6360d9" @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_Hd80cb4cbc6ceb8a13686fbc19b8451b4(ptr %v0, ptr %v1, ptr %a0)
  ret %"std/prelude/map:MapKeyIter.bf5835bb10600fe6a7fc1da14a6360d9" %r
}

define dso_local { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_2c_20I64_H1914ebd8236b397314fec30d887725e8(ptr %v0, ptr %a0, { i64, ptr } %a1) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i32
  %rv = alloca { i32, i64 }
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1, ptr %l2, !tbaa !29
  %t2 = load ptr, ptr %l0, !tbaa !29
  %t6 = call { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_2c_20I64_H34302261840a41b6ea1d7025b62d974a(ptr %v0, ptr %t2, { i64, ptr } %a1)
  %t7 = extractvalue { i32, i64 } %t6, 1
  %t8 = extractvalue { i32, i64 } %t6, 0
  store i32 %t8, ptr %l7
  %t9 = icmp ne i32 %t8, 0
  br i1 %t9, label %bb2, label %ok.10, !prof !99
ok.10:
  store i64 %t7, ptr %l6
  br label %bb1
bb1:
  %t11 = load i64, ptr %l6, !tbaa !24
  store i64 %t11, ptr %l3, !tbaa !24
  br label %bb3
bb2:
  %t12 = load i32, ptr %l7, !tbaa !23
  %t13 = lshr i32 %t12, 16
  %t14 = and i32 %t12, 65535
  %t15 = icmp eq i32 %t13, 1
  %t16 = select i1 %t15, i32 1, i32 0
  %t17 = icmp eq i32 %t12, 0
  %t18 = shl i32 %t16, 16
  %t19 = or i32 %t18, %t14
  %t20 = select i1 %t17, i32 0, i32 %t19
  %t22 = insertvalue { i32, i64 } zeroinitializer, i32 %t20, 0
  store { i32, i64 } %t22, ptr %rv
  br label %ret
bb3:
  %t23 = load ptr, ptr %l2, !tbaa !29
  %t24 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t23, i32 0, i32 0
  %t25 = load i64, ptr %l3, !tbaa !24
  %t26 = getelementptr { i64, ptr }, ptr %t24, i32 0, i32 1
  %t27 = load ptr, ptr %t26, !tbaa !27
  %t28 = getelementptr %"std/prelude/map:MapEntry.ef37386b9f0625afbaa73bd3cf091381", ptr %t27, i64 %t25
  %t29 = getelementptr %"std/prelude/map:MapEntry.ef37386b9f0625afbaa73bd3cf091381", ptr %t28, i32 0, i32 1
  %t30 = load i64, ptr %t29, !tbaa !24
  %t32 = insertvalue { i32, i64 } zeroinitializer, i64 %t30, 1
  store { i32, i64 } %t32, ptr %rv
  br label %ret
ret:
  %rr = load { i32, i64 }, ptr %rv
  ret { i32, i64 } %rr
}

define dso_local { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_2c_20I64_H34302261840a41b6ea1d7025b62d974a(ptr %v0, ptr %a0, { i64, ptr } %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca { i64, ptr }
  %l2 = alloca i64
  %l7 = alloca ptr
  %l10 = alloca i64
  %l19 = alloca i1
  %s0 = alloca %olang.scope
  %rv = alloca { i32, i64 }
  store ptr %a0, ptr %l0
  store { i64, ptr } %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t1, i32 0, i32 4
  %t4 = load i64, ptr %t3, !tbaa !24
  %t6 = icmp eq i64 %t4, 0
  br i1 %t6, label %bb1, label %bb2
bb1:
  call void @__olang_scope_close(ptr %s0)
  %t9 = insertvalue { i32, i64 } zeroinitializer, i32 65536, 0
  store { i32, i64 } %t9, ptr %rv
  br label %ret
bb2:
  br label %bb3
bb3:
  %t10 = load ptr, ptr %l0, !tbaa !29
  store ptr %t10, ptr %l7, !tbaa !29
  %t11 = load ptr, ptr %l0, !tbaa !29
  %t12 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t15 = call i64 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_2c_20I64_H9d1a9cc8542744ec92a91bceaf2bc5c6(ptr %v0, ptr %t11, { i64, ptr } %t12)
  store i64 %t15, ptr %l10
  br label %bb4
bb4:
  %t16 = load ptr, ptr %l7, !tbaa !29
  %t17 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t16, i32 0, i32 2
  %t18 = load i64, ptr %l10, !tbaa !24
  %t19 = getelementptr { i64, ptr }, ptr %t17, i32 0, i32 1
  %t20 = load ptr, ptr %t19, !tbaa !27
  %t21 = getelementptr i64, ptr %t20, i64 %t18
  %t22 = load i64, ptr %t21, !tbaa !34
  store i64 %t22, ptr %l2, !tbaa !24
  br label %bb5
bb5:
  %t24 = load i64, ptr %l2, !tbaa !24
  %t26 = icmp sge i64 %t24, 0
  %t28 = xor i1 %t26, true
  br i1 %t28, label %bb6, label %bb7
bb6:
  br label %bb14
bb7:
  br label %bb8
bb8:
  %t30 = load ptr, ptr %l0, !tbaa !29
  %t31 = load i64, ptr %l2, !tbaa !24
  %t33 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t30, i32 0, i32 0
  %t35 = getelementptr { i64, ptr }, ptr %t33, i32 0, i32 1
  %t36 = load ptr, ptr %t35, !tbaa !27
  %t37 = getelementptr %"std/prelude/map:MapEntry.ef37386b9f0625afbaa73bd3cf091381", ptr %t36, i64 %t31
  %t38 = getelementptr %"std/prelude/map:MapEntry.ef37386b9f0625afbaa73bd3cf091381", ptr %t37, i32 0, i32 0
  %t39 = load { i64, ptr }, ptr %t38, !tbaa !27
  %t40 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t43 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t39, { i64, ptr } %t40)
  store i1 %t43, ptr %l19
  br label %bb9
bb9:
  %t44 = load i1, ptr %l19, !tbaa !21
  br i1 %t44, label %bb10, label %bb11
bb10:
  %t45 = load i64, ptr %l2, !tbaa !24
  call void @__olang_scope_close(ptr %s0)
  %t47 = insertvalue { i32, i64 } zeroinitializer, i64 %t45, 1
  store { i32, i64 } %t47, ptr %rv
  br label %ret
bb11:
  br label %bb12
bb12:
  br label %bb13
bb13:
  %t48 = load ptr, ptr %l0, !tbaa !29
  %t49 = load i64, ptr %l2, !tbaa !24
  %t51 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t48, i32 0, i32 1
  %t53 = getelementptr { i64, ptr }, ptr %t51, i32 0, i32 1
  %t54 = load ptr, ptr %t53, !tbaa !27
  %t55 = getelementptr i64, ptr %t54, i64 %t49
  %t56 = load i64, ptr %t55, !tbaa !34
  store i64 %t56, ptr %l2, !tbaa !24
  br label %bb5
bb14:
  call void @__olang_scope_close(ptr %s0)
  %t59 = insertvalue { i32, i64 } zeroinitializer, i32 65536, 0
  store { i32, i64 } %t59, ptr %rv
  br label %ret
ret:
  %rr = load { i32, i64 }, ptr %rv
  ret { i32, i64 } %rr
}

define dso_local %"std/prelude/map:MapEntry.8067410eb7799f1c31299714f5ba653d" @std_2fprelude_2fmap_3aMapEntry_3cI64_2c_20compiler_2fscope_3afnRecs_3e_2ector(ptr %v0, ptr %v1, i64 %a0, %"compiler/scope:fnRecs" %a1) #0 {
entry:
  %rv = alloca %"std/prelude/map:MapEntry.8067410eb7799f1c31299714f5ba653d"
  br label %start
start:
  br label %bb0
bb0:
  %t6 = insertvalue %"std/prelude/map:MapEntry.8067410eb7799f1c31299714f5ba653d" undef, i64 %a0, 0
  %t8 = insertvalue %"std/prelude/map:MapEntry.8067410eb7799f1c31299714f5ba653d" %t6, %"compiler/scope:fnRecs" %a1, 1
  store %"std/prelude/map:MapEntry.8067410eb7799f1c31299714f5ba653d" %t8, ptr %rv
  br label %ret
ret:
  %rr = load %"std/prelude/map:MapEntry.8067410eb7799f1c31299714f5ba653d", ptr %rv
  ret %"std/prelude/map:MapEntry.8067410eb7799f1c31299714f5ba653d" %rr
}

define dso_local %"std/prelude/map:MapKeyIter.bf5835bb10600fe6a7fc1da14a6360d9" @std_2fprelude_2fmap_3aMapKeyIter_3cI64_2c_20compiler_2ftyped_3aVersions_26_3e_2ector(ptr %v0, ptr %v1, ptr %a0) #0 {
entry:
  %r = tail call %"std/prelude/map:MapKeyIter.bf5835bb10600fe6a7fc1da14a6360d9" @std_2fprelude_2fmap_3aMapKeyIter_3cstd_2fprelude_2ftext_3aString_26_2c_20std_2fprelude_2ftext_3aString_26_3e_2ector(ptr %v0, ptr %v1, ptr %a0)
  ret %"std/prelude/map:MapKeyIter.bf5835bb10600fe6a7fc1da14a6360d9" %r
}

define dso_local %"std/prelude/map:MapKeyIter.bf5835bb10600fe6a7fc1da14a6360d9" @std_2fprelude_2fmap_3aMapKeyIter_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_20compiler_2fscope_3aPlacement_3e_2ector(ptr %v0, ptr %v1, ptr %a0) #0 {
entry:
  %r = tail call %"std/prelude/map:MapKeyIter.bf5835bb10600fe6a7fc1da14a6360d9" @std_2fprelude_2fmap_3aMapKeyIter_3cstd_2fprelude_2ftext_3aString_26_2c_20std_2fprelude_2ftext_3aString_26_3e_2ector(ptr %v0, ptr %v1, ptr %a0)
  ret %"std/prelude/map:MapKeyIter.bf5835bb10600fe6a7fc1da14a6360d9" %r
}

define dso_local %"std/prelude/map:MapKeyIter.bf5835bb10600fe6a7fc1da14a6360d9" @std_2fprelude_2fmap_3aMapKeyIter_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_20compiler_2fscope_3aplacedRow_3e_2ector(ptr %v0, ptr %v1, ptr %a0) #0 {
entry:
  %r = tail call %"std/prelude/map:MapKeyIter.bf5835bb10600fe6a7fc1da14a6360d9" @std_2fprelude_2fmap_3aMapKeyIter_3cstd_2fprelude_2ftext_3aString_26_2c_20std_2fprelude_2ftext_3aString_26_3e_2ector(ptr %v0, ptr %v1, ptr %a0)
  ret %"std/prelude/map:MapKeyIter.bf5835bb10600fe6a7fc1da14a6360d9" %r
}

define dso_local %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2fscope_3afnRecs_3e_2ector(ptr %v0) #0 {
entry:
  %r = tail call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20compiler_2fsource_3aNameId_3e_2ector(ptr %v0)
  ret %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %r
}

define dso_local %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2ftext_3aString_26_3e_2ector(ptr %v0) #0 {
entry:
  %r = tail call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20compiler_2fsource_3aNameId_3e_2ector(ptr %v0)
  ret %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %r
}

define dso_local %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_3e_2ector(ptr %v0) #0 {
entry:
  %r = tail call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20compiler_2fsource_3aNameId_3e_2ector(ptr %v0)
  ret %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %r
}

define dso_local void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cArray_3cI64_3e_3e_2ePush_3cArray_3cI64_3e_3e(ptr %v0, ptr %a0, { i64, ptr } %a1) #0 {
entry:
  %l0 = alloca ptr
  %l15 = alloca { i64, ptr }
  %l16 = alloca i64
  %l17 = alloca { i64, ptr }
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
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cArray_3cI64_3e_3e_2eroom_3cArray_3cI64_3e_3e(ptr %v0, ptr %t15, i64 %t21)
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
  store { i64, ptr } %a1, ptr %l15, !tbaa !27
  %t30 = load { i64, ptr }, ptr %l15, !tbaa !27
  %t31 = extractvalue { i64, ptr } %t30, 0
  store i64 %t31, ptr %l16, !tbaa !24
  %t32 = load i64, ptr %l16, !tbaa !24
  %t33 = mul i64 %t32, 8
  %t34 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t33)
  %t35 = insertvalue { i64, ptr } undef, i64 %t32, 0
  %t36 = insertvalue { i64, ptr } %t35, ptr %t34, 1
  store { i64, ptr } %t36, ptr %l17, !tbaa !27
  %t37 = getelementptr { i64, ptr }, ptr %l17, i32 0, i32 1
  %t38 = load ptr, ptr %t37, !tbaa !27
  %t39 = getelementptr { i64, ptr }, ptr %l15, i32 0, i32 1
  %t40 = load ptr, ptr %t39, !tbaa !27
  %t41 = load i64, ptr %l16, !tbaa !24
  %t42 = mul i64 %t41, 8
  call void @llvm.memmove.p0.p0.i64(ptr %t38, ptr %t40, i64 %t42, i1 false)
  %t43 = load { i64, ptr }, ptr %l17, !tbaa !27
  %t45 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t24, i32 0, i32 0
  %t47 = getelementptr { i64, ptr }, ptr %t45, i32 0, i32 1
  %t48 = load ptr, ptr %t47, !tbaa !27
  %t49 = getelementptr { i64, ptr }, ptr %t48, i64 %t28
  store { i64, ptr } %t43, ptr %t49, !tbaa !37
  %t50 = load ptr, ptr %l0, !tbaa !29
  store ptr %t50, ptr %l18, !tbaa !29
  %t51 = load ptr, ptr %l18, !tbaa !29
  %t52 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t51, i32 0, i32 1
  %t53 = load i64, ptr %t52, !tbaa !24
  %t55 = add i64 %t53, 1
  %t57 = load ptr, ptr %l18, !tbaa !29
  %t58 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t57, i32 0, i32 1
  store i64 %t55, ptr %t58, !tbaa !24
  br label %ret
ret:
  ret void
}

define dso_local i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fgeneric_3aAnyTable_3e_2eLen_H9daf28210c013890fd7cb07d1d61ba6e(ptr %v0, ptr %a0) #0 {
entry:
  %r = tail call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cU64_3e_2eLen_3cU64_3e(ptr %v0, ptr %a0)
  ret i64 %r
}

define dso_local void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fgeneric_3aOrigin_3e_2ePush_3ccompiler_2fgeneric_3aOrigin_3e(ptr %v0, ptr %a0, %"compiler/generic:Origin" %a1) #0 {
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
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fgeneric_3aOrigin_3e_2eroom_3ccompiler_2fgeneric_3aOrigin_3e(ptr %v0, ptr %t15, i64 %t21)
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
  %t36 = getelementptr %"compiler/generic:Origin", ptr %t35, i64 %t28
  store %"compiler/generic:Origin" %a1, ptr %t36
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

define dso_local void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3aGap_3e_2eTruncate_3ccompiler_2fscope_3aGap_3e(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca i64
  %l3 = alloca i64
  %l10 = alloca i64
  %l21 = alloca %"compiler/scope:Gap"
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load i64, ptr %l1, !tbaa !24
  %t2 = load ptr, ptr %l0, !tbaa !29
  %t4 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t2, i32 0, i32 1
  %t5 = load i64, ptr %t4, !tbaa !24
  %t8 = icmp sge i64 %t1, %t5
  br i1 %t8, label %bb1, label %bb2
bb1:
  br label %ret
bb2:
  br label %bb3
bb3:
  %t10 = load i64, ptr %l1, !tbaa !24
  %t12 = icmp sgt i64 %t10, 0
  br i1 %t12, label %bb4, label %bb5
bb4:
  %t14 = load i64, ptr %l1, !tbaa !24
  store i64 %t14, ptr %l10, !tbaa !24
  br label %bb6
bb5:
  store i64 0, ptr %l10, !tbaa !24
  br label %bb6
bb6:
  %t16 = load i64, ptr %l10, !tbaa !24
  store i64 %t16, ptr %l2, !tbaa !24
  %t17 = load ptr, ptr %l0, !tbaa !29
  %t19 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t17, i32 0, i32 1
  %t20 = load i64, ptr %t19, !tbaa !24
  %t22 = sub i64 %t20, 1
  store i64 %t22, ptr %l3, !tbaa !24
  br label %bb7
bb7:
  %t24 = load i64, ptr %l3, !tbaa !24
  %t25 = load i64, ptr %l2, !tbaa !24
  %t28 = icmp sge i64 %t24, %t25
  %t30 = xor i1 %t28, true
  br i1 %t30, label %bb8, label %bb9
bb8:
  br label %bb12
bb9:
  br label %bb10
bb10:
  %t32 = load ptr, ptr %l0, !tbaa !29
  %t33 = load i64, ptr %l3, !tbaa !24
  %t35 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t32, i32 0, i32 0
  %t37 = getelementptr { i64, ptr }, ptr %t35, i32 0, i32 1
  %t38 = load ptr, ptr %t37, !tbaa !27
  %t39 = getelementptr %"compiler/scope:Gap", ptr %t38, i64 %t33
  %t40 = load %"compiler/scope:Gap", ptr %t39
  store %"compiler/scope:Gap" %t40, ptr %l21
  br label %bb11
bb11:
  %t41 = load i64, ptr %l3, !tbaa !24
  %t43 = sub i64 %t41, 1
  store i64 %t43, ptr %l3, !tbaa !24
  br label %bb7
bb12:
  %t45 = load ptr, ptr %l0, !tbaa !29
  %t46 = load i64, ptr %l2, !tbaa !24
  %t49 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t45, i32 0, i32 1
  store i64 %t46, ptr %t49, !tbaa !24
  br label %ret
ret:
  ret void
}

define dso_local i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3aPlacement_3e_2eLen__H4d2672aa7d845ec0c6fc38a004384ece(ptr %v0, ptr %a0) #0 {
entry:
  %r = tail call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cU64_3e_2eLen_3cU64_3e(ptr %v0, ptr %a0)
  ret i64 %r
}

define dso_local void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3aTerm_3e_2ePush_3ccompiler_2fscope_3aTerm_3e(ptr %v0, ptr %a0, { i64, [2 x i64] } %a1) #0 {
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
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3aTerm_3e_2eroom_3ccompiler_2fscope_3aTerm_3e(ptr %v0, ptr %t15, i64 %t21)
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
  %t36 = getelementptr { i64, [2 x i64] }, ptr %t35, i64 %t28
  store { i64, [2 x i64] } %a1, ptr %t36
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

define dso_local i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3afnRec_3e_2eEq_3ccompiler_2fscope_3afnRec_3e(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca { i64, ptr }
  %l3 = alloca { i64, ptr }
  %l4 = alloca i64
  %l5 = alloca i1
  %l6 = alloca i64
  %l7 = alloca %"compiler/scope:fnRec"
  %l8 = alloca %"compiler/scope:fnRec"
  %l9 = alloca ptr
  %l11 = alloca i64
  %l12 = alloca i64
  %l17 = alloca ptr
  %l19 = alloca i64
  %l20 = alloca i64
  %l32 = alloca i1
  %l37 = alloca { i64, ptr }
  %l40 = alloca { i64, ptr }
  %l43 = alloca i64
  %l45 = alloca i64
  %l47 = alloca i1
  %l48 = alloca i1
  %l51 = alloca i1
  %l52 = alloca i1
  %l53 = alloca i1
  %l55 = alloca i1
  %l57 = alloca i1
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1, ptr %l9, !tbaa !29
  %t2 = load ptr, ptr %l0, !tbaa !29
  %t4 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t2, i32 0, i32 1
  %t5 = load i64, ptr %t4, !tbaa !24
  store i64 %t5, ptr %l11, !tbaa !24
  %t6 = load ptr, ptr %l9, !tbaa !29
  %t7 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t6, i32 0, i32 0
  %t8 = load { i64, ptr }, ptr %t7, !tbaa !27
  %t9 = extractvalue { i64, ptr } %t8, 0
  store i64 %t9, ptr %l12, !tbaa !24
  %t10 = icmp sge i64 0, 0
  br i1 %t10, label %bb1, label %bb2
bb1:
  %t12 = load i64, ptr %l11, !tbaa !24
  %t13 = icmp sle i64 0, %t12
  br i1 %t13, label %bb3, label %bb4
bb2:
  call void @__olang_check_failed(ptr @olang_loc_6a36cc37fc5e5049_682295a2af4be8bd)
  unreachable
bb3:
  %t15 = load i64, ptr %l11, !tbaa !24
  %t16 = load i64, ptr %l12, !tbaa !24
  %t17 = icmp sle i64 %t15, %t16
  br i1 %t17, label %bb5, label %bb6
bb4:
  call void @__olang_check_failed(ptr @olang_loc_6a36cc37fc5e5049_682295a2af4be8bd)
  unreachable
bb5:
  %t19 = load ptr, ptr %l9, !tbaa !29
  %t20 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t19, i32 0, i32 0
  %t21 = getelementptr { i64, ptr }, ptr %t20, i32 0, i32 1
  %t22 = load ptr, ptr %t21, !tbaa !27
  %t23 = load i64, ptr %l11, !tbaa !24
  %t24 = getelementptr %"compiler/scope:fnRec", ptr %t22, i64 0
  %t25 = sub i64 %t23, 0
  %t26 = insertvalue { i64, ptr } undef, i64 %t25, 0
  %t27 = insertvalue { i64, ptr } %t26, ptr %t24, 1
  store { i64, ptr } %t27, ptr %l2, !tbaa !27
  %t29 = load ptr, ptr %l1, !tbaa !29
  store ptr %t29, ptr %l17, !tbaa !29
  %t30 = load ptr, ptr %l1, !tbaa !29
  %t32 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t30, i32 0, i32 1
  %t33 = load i64, ptr %t32, !tbaa !24
  store i64 %t33, ptr %l19, !tbaa !24
  %t34 = load ptr, ptr %l17, !tbaa !29
  %t35 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t34, i32 0, i32 0
  %t36 = load { i64, ptr }, ptr %t35, !tbaa !27
  %t37 = extractvalue { i64, ptr } %t36, 0
  store i64 %t37, ptr %l20, !tbaa !24
  %t38 = icmp sge i64 0, 0
  br i1 %t38, label %bb7, label %bb8
bb6:
  call void @__olang_check_failed(ptr @olang_loc_6a36cc37fc5e5049_682295a2af4be8bd)
  unreachable
bb7:
  %t40 = load i64, ptr %l19, !tbaa !24
  %t41 = icmp sle i64 0, %t40
  br i1 %t41, label %bb9, label %bb10
bb8:
  call void @__olang_check_failed(ptr @olang_loc_6a36cc37fc5e5049_682295a2af4be8bd)
  unreachable
bb9:
  %t43 = load i64, ptr %l19, !tbaa !24
  %t44 = load i64, ptr %l20, !tbaa !24
  %t45 = icmp sle i64 %t43, %t44
  br i1 %t45, label %bb11, label %bb12
bb10:
  call void @__olang_check_failed(ptr @olang_loc_6a36cc37fc5e5049_682295a2af4be8bd)
  unreachable
bb11:
  %t47 = load ptr, ptr %l17, !tbaa !29
  %t48 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t47, i32 0, i32 0
  %t49 = getelementptr { i64, ptr }, ptr %t48, i32 0, i32 1
  %t50 = load ptr, ptr %t49, !tbaa !27
  %t51 = load i64, ptr %l19, !tbaa !24
  %t52 = getelementptr %"compiler/scope:fnRec", ptr %t50, i64 0
  %t53 = sub i64 %t51, 0
  %t54 = insertvalue { i64, ptr } undef, i64 %t53, 0
  %t55 = insertvalue { i64, ptr } %t54, ptr %t52, 1
  store { i64, ptr } %t55, ptr %l3, !tbaa !27
  %t57 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t59 = extractvalue { i64, ptr } %t57, 0
  store i64 %t59, ptr %l4, !tbaa !24
  %t61 = load i64, ptr %l4, !tbaa !24
  %t62 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t64 = extractvalue { i64, ptr } %t62, 0
  %t67 = icmp eq i64 %t61, %t64
  store i1 %t67, ptr %l5, !tbaa !21
  store i64 0, ptr %l6, !tbaa !24
  br label %bb13
bb12:
  call void @__olang_check_failed(ptr @olang_loc_6a36cc37fc5e5049_682295a2af4be8bd)
  unreachable
bb13:
  %t69 = load i1, ptr %l5, !tbaa !21
  br i1 %t69, label %bb14, label %bb15
bb14:
  %t71 = load i64, ptr %l6, !tbaa !24
  %t72 = load i64, ptr %l4, !tbaa !24
  %t75 = icmp slt i64 %t71, %t72
  store i1 %t75, ptr %l32, !tbaa !21
  br label %bb16
bb15:
  store i1 false, ptr %l32, !tbaa !21
  br label %bb16
bb16:
  %t77 = load i1, ptr %l32, !tbaa !21
  %t78 = xor i1 %t77, true
  br i1 %t78, label %bb17, label %bb18
bb17:
  br label %bb30
bb18:
  br label %bb19
bb19:
  %t80 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t80, ptr %l37, !tbaa !27
  %t81 = load i64, ptr %l6, !tbaa !24
  %t83 = getelementptr { i64, ptr }, ptr %l37, i32 0, i32 1
  %t84 = load ptr, ptr %t83, !tbaa !27
  %t85 = getelementptr %"compiler/scope:fnRec", ptr %t84, i64 %t81
  %t86 = load %"compiler/scope:fnRec", ptr %t85
  store %"compiler/scope:fnRec" %t86, ptr %l7
  %t88 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t88, ptr %l40, !tbaa !27
  %t89 = load i64, ptr %l6, !tbaa !24
  %t91 = getelementptr { i64, ptr }, ptr %l40, i32 0, i32 1
  %t92 = load ptr, ptr %t91, !tbaa !27
  %t93 = getelementptr %"compiler/scope:fnRec", ptr %t92, i64 %t89
  %t94 = load %"compiler/scope:fnRec", ptr %t93
  store %"compiler/scope:fnRec" %t94, ptr %l8
  %t96 = getelementptr %"compiler/scope:fnRec", ptr %l7, i32 0, i32 0
  %t97 = load i64, ptr %t96, !tbaa !24
  store i64 %t97, ptr %l43, !tbaa !24
  %t98 = getelementptr %"compiler/scope:fnRec", ptr %l8, i32 0, i32 0
  %t99 = load i64, ptr %t98, !tbaa !24
  store i64 %t99, ptr %l45, !tbaa !24
  %t102 = call i1 @olang_2emir_2eHelperKind_2eEqual_2eI64(ptr %l43, ptr %l45)
  store i1 %t102, ptr %l47
  br label %bb20
bb20:
  %t103 = load i1, ptr %l47, !tbaa !21
  br i1 %t103, label %bb21, label %bb22
bb21:
  %t104 = getelementptr %"compiler/scope:fnRec", ptr %l7, i32 0, i32 1
  %t105 = getelementptr %"compiler/scope:fnRec", ptr %l8, i32 0, i32 1
  %t108 = call i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3aTerm_3e_2eEq_3ccompiler_2fscope_3aTerm_3e(ptr %v0, ptr %v1, ptr %t104, ptr %t105)
  store i1 %t108, ptr %l51
  br label %bb23
bb22:
  store i1 false, ptr %l48, !tbaa !21
  br label %bb24
bb23:
  %t109 = load i1, ptr %l51, !tbaa !21
  store i1 %t109, ptr %l48, !tbaa !21
  br label %bb24
bb24:
  %t110 = load i1, ptr %l48, !tbaa !21
  br i1 %t110, label %bb25, label %bb26
bb25:
  %t111 = getelementptr %"compiler/scope:fnRec", ptr %l7, i32 0, i32 2
  %t112 = load i1, ptr %t111, !tbaa !21
  store i1 %t112, ptr %l53, !tbaa !21
  %t113 = getelementptr %"compiler/scope:fnRec", ptr %l8, i32 0, i32 2
  %t114 = load i1, ptr %t113, !tbaa !21
  store i1 %t114, ptr %l55, !tbaa !21
  %t117 = call i1 @olang_2emir_2eHelperKind_2eEqual_2eBool(ptr %l53, ptr %l55)
  store i1 %t117, ptr %l57
  br label %bb27
bb26:
  store i1 false, ptr %l52, !tbaa !21
  br label %bb28
bb27:
  %t118 = load i1, ptr %l57, !tbaa !21
  store i1 %t118, ptr %l52, !tbaa !21
  br label %bb28
bb28:
  %t119 = load i1, ptr %l52, !tbaa !21
  store i1 %t119, ptr %l5, !tbaa !21
  br label %bb29
bb29:
  %t120 = load i64, ptr %l6, !tbaa !24
  %t122 = add i64 %t120, 1
  store i64 %t122, ptr %l6, !tbaa !24
  br label %bb13
bb30:
  %t124 = load i1, ptr %l5, !tbaa !21
  store i1 %t124, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3afnRec_3e_2eHas_3ccompiler_2fscope_3afnRec_3e(ptr %v0, ptr %v1, ptr %a0, %"compiler/scope:fnRec" %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/scope:fnRec"
  %l2 = alloca i64
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l8 = alloca %"compiler/scope:fnRec"
  %l14 = alloca i64
  %l17 = alloca i64
  %l38 = alloca i64
  %l40 = alloca i64
  %l42 = alloca i1
  %l43 = alloca i1
  %l46 = alloca i1
  %l47 = alloca i1
  %l48 = alloca i1
  %l50 = alloca i1
  %l52 = alloca i1
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store %"compiler/scope:fnRec" %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store i64 0, ptr %l2, !tbaa !24
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t1, i32 0, i32 1
  %t4 = load i64, ptr %t3, !tbaa !24
  store i64 %t4, ptr %l3, !tbaa !24
  store i64 1, ptr %l4, !tbaa !24
  %t6 = load i64, ptr %l3, !tbaa !24
  %t7 = load i64, ptr %l2, !tbaa !24
  %t10 = icmp sgt i64 %t6, %t7
  br i1 %t10, label %bb1, label %bb2
bb1:
  %t12 = load i64, ptr %l4, !tbaa !24
  %t14 = icmp sgt i64 %t12, 0
  br i1 %t14, label %bb3, label %bb4
bb2:
  store i64 0, ptr %l14, !tbaa !24
  br label %bb6
bb3:
  %t16 = load i64, ptr %l3, !tbaa !24
  %t17 = load i64, ptr %l2, !tbaa !24
  %t20 = sub i64 %t16, %t17
  %t21 = load i64, ptr %l4, !tbaa !24
  %t24 = add i64 %t20, %t21
  %t26 = sub i64 %t24, 1
  %t27 = load i64, ptr %l4, !tbaa !24
  %t30 = sdiv i64 %t26, %t27
  store i64 %t30, ptr %l17, !tbaa !24
  br label %bb5
bb4:
  store i64 0, ptr %l17, !tbaa !24
  br label %bb5
bb5:
  %t32 = load i64, ptr %l17, !tbaa !24
  store i64 %t32, ptr %l14, !tbaa !24
  br label %bb6
bb6:
  %t33 = load i64, ptr %l14, !tbaa !24
  store i64 %t33, ptr %l5, !tbaa !24
  store i64 0, ptr %l6, !tbaa !24
  br label %bb7
bb7:
  %t34 = load i64, ptr %l6, !tbaa !24
  %t35 = load i64, ptr %l5, !tbaa !24
  %t38 = icmp slt i64 %t34, %t35
  %t40 = xor i1 %t38, true
  br i1 %t40, label %bb8, label %bb9
bb8:
  br label %bb24
bb9:
  br label %bb10
bb10:
  %t42 = load i64, ptr %l2, !tbaa !24
  %t43 = load i64, ptr %l6, !tbaa !24
  %t44 = load i64, ptr %l4, !tbaa !24
  %t47 = mul i64 %t43, %t44
  %t50 = add i64 %t42, %t47
  %t52 = load ptr, ptr %l0, !tbaa !29
  %t55 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t52, i32 0, i32 0
  %t57 = getelementptr { i64, ptr }, ptr %t55, i32 0, i32 1
  %t58 = load ptr, ptr %t57, !tbaa !27
  %t59 = getelementptr %"compiler/scope:fnRec", ptr %t58, i64 %t50
  %t60 = load %"compiler/scope:fnRec", ptr %t59
  store %"compiler/scope:fnRec" %t60, ptr %l8
  %t62 = getelementptr %"compiler/scope:fnRec", ptr %l8, i32 0, i32 0
  %t63 = load i64, ptr %t62, !tbaa !24
  store i64 %t63, ptr %l38, !tbaa !24
  %t64 = getelementptr %"compiler/scope:fnRec", ptr %l1, i32 0, i32 0
  %t65 = load i64, ptr %t64, !tbaa !24
  store i64 %t65, ptr %l40, !tbaa !24
  %t68 = call i1 @olang_2emir_2eHelperKind_2eEqual_2eI64(ptr %l38, ptr %l40)
  store i1 %t68, ptr %l42
  br label %bb11
bb11:
  %t69 = load i1, ptr %l42, !tbaa !21
  br i1 %t69, label %bb12, label %bb13
bb12:
  %t70 = getelementptr %"compiler/scope:fnRec", ptr %l8, i32 0, i32 1
  %t71 = getelementptr %"compiler/scope:fnRec", ptr %l1, i32 0, i32 1
  %t74 = call i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3aTerm_3e_2eEq_3ccompiler_2fscope_3aTerm_3e(ptr %v0, ptr %v1, ptr %t70, ptr %t71)
  store i1 %t74, ptr %l46
  br label %bb14
bb13:
  store i1 false, ptr %l43, !tbaa !21
  br label %bb15
bb14:
  %t75 = load i1, ptr %l46, !tbaa !21
  store i1 %t75, ptr %l43, !tbaa !21
  br label %bb15
bb15:
  %t76 = load i1, ptr %l43, !tbaa !21
  br i1 %t76, label %bb16, label %bb17
bb16:
  %t77 = getelementptr %"compiler/scope:fnRec", ptr %l8, i32 0, i32 2
  %t78 = load i1, ptr %t77, !tbaa !21
  store i1 %t78, ptr %l48, !tbaa !21
  %t79 = getelementptr %"compiler/scope:fnRec", ptr %l1, i32 0, i32 2
  %t80 = load i1, ptr %t79, !tbaa !21
  store i1 %t80, ptr %l50, !tbaa !21
  %t83 = call i1 @olang_2emir_2eHelperKind_2eEqual_2eBool(ptr %l48, ptr %l50)
  store i1 %t83, ptr %l52
  br label %bb18
bb17:
  store i1 false, ptr %l47, !tbaa !21
  br label %bb19
bb18:
  %t84 = load i1, ptr %l52, !tbaa !21
  store i1 %t84, ptr %l47, !tbaa !21
  br label %bb19
bb19:
  %t85 = load i1, ptr %l47, !tbaa !21
  br i1 %t85, label %bb20, label %bb21
bb20:
  store i1 true, ptr %rv
  br label %ret
bb21:
  br label %bb22
bb22:
  br label %bb23
bb23:
  %t87 = load i64, ptr %l6, !tbaa !24
  %t89 = add i64 %t87, 1
  store i64 %t89, ptr %l6, !tbaa !24
  br label %bb7
bb24:
  store i1 false, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3amarkRead_3e_2ePush_3ccompiler_2fscope_3amarkRead_3e(ptr %v0, ptr %a0, %"compiler/scope:markRead" %a1) #0 {
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
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3amarkRead_3e_2eroom_3ccompiler_2fscope_3amarkRead_3e(ptr %v0, ptr %t15, i64 %t21)
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
  %t36 = getelementptr %"compiler/scope:markRead", ptr %t35, i64 %t28
  store %"compiler/scope:markRead" %a1, ptr %t36
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

define dso_local void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3arel_3e_2ePush_3ccompiler_2fscope_3arel_3e(ptr %v0, ptr %a0, %"compiler/scope:rel" %a1) #0 {
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
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3arel_3e_2eroom_3ccompiler_2fscope_3arel_3e(ptr %v0, ptr %t15, i64 %t21)
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
  %t36 = getelementptr %"compiler/scope:rel", ptr %t35, i64 %t28
  store %"compiler/scope:rel" %a1, ptr %t36
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

define dso_local void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3asumRead_3e_2ePush_3ccompiler_2fscope_3asumRead_3e(ptr %v0, ptr %v1, ptr %a0, %"compiler/scope:sumRead" %a1) #0 {
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
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3asumRead_3e_2eroom_3ccompiler_2fscope_3asumRead_3e(ptr %v0, ptr %t15, i64 %t21)
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
  %t36 = getelementptr %"compiler/scope:sumRead", ptr %t35, i64 %t28
  store %"compiler/scope:sumRead" %a1, ptr %t36
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

define dso_local i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3averAtom_3e_2eHas_3ccompiler_2fscope_3averAtom_3e(ptr %v0, ptr %a0, %"compiler/scope:verAtom" %a1) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca i64
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l13 = alloca i64
  %l16 = alloca i64
  %l36 = alloca %"compiler/scope:verAtom"
  %l38 = alloca %"compiler/scope:verAtom"
  %l40 = alloca i1
  %rv = alloca i1
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store i64 0, ptr %l2, !tbaa !24
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t1, i32 0, i32 1
  %t4 = load i64, ptr %t3, !tbaa !24
  store i64 %t4, ptr %l3, !tbaa !24
  store i64 1, ptr %l4, !tbaa !24
  %t6 = load i64, ptr %l3, !tbaa !24
  %t7 = load i64, ptr %l2, !tbaa !24
  %t10 = icmp sgt i64 %t6, %t7
  br i1 %t10, label %bb1, label %bb2
bb1:
  %t12 = load i64, ptr %l4, !tbaa !24
  %t14 = icmp sgt i64 %t12, 0
  br i1 %t14, label %bb3, label %bb4
bb2:
  store i64 0, ptr %l13, !tbaa !24
  br label %bb6
bb3:
  %t16 = load i64, ptr %l3, !tbaa !24
  %t17 = load i64, ptr %l2, !tbaa !24
  %t20 = sub i64 %t16, %t17
  %t21 = load i64, ptr %l4, !tbaa !24
  %t24 = add i64 %t20, %t21
  %t26 = sub i64 %t24, 1
  %t27 = load i64, ptr %l4, !tbaa !24
  %t30 = sdiv i64 %t26, %t27
  store i64 %t30, ptr %l16, !tbaa !24
  br label %bb5
bb4:
  store i64 0, ptr %l16, !tbaa !24
  br label %bb5
bb5:
  %t32 = load i64, ptr %l16, !tbaa !24
  store i64 %t32, ptr %l13, !tbaa !24
  br label %bb6
bb6:
  %t33 = load i64, ptr %l13, !tbaa !24
  store i64 %t33, ptr %l5, !tbaa !24
  store i64 0, ptr %l6, !tbaa !24
  br label %bb7
bb7:
  %t34 = load i64, ptr %l6, !tbaa !24
  %t35 = load i64, ptr %l5, !tbaa !24
  %t38 = icmp slt i64 %t34, %t35
  %t40 = xor i1 %t38, true
  br i1 %t40, label %bb8, label %bb9
bb8:
  br label %bb16
bb9:
  br label %bb10
bb10:
  %t42 = load i64, ptr %l2, !tbaa !24
  %t43 = load i64, ptr %l6, !tbaa !24
  %t44 = load i64, ptr %l4, !tbaa !24
  %t47 = mul i64 %t43, %t44
  %t50 = add i64 %t42, %t47
  %t52 = load ptr, ptr %l0, !tbaa !29
  %t55 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t52, i32 0, i32 0
  %t57 = getelementptr { i64, ptr }, ptr %t55, i32 0, i32 1
  %t58 = load ptr, ptr %t57, !tbaa !27
  %t59 = getelementptr %"compiler/scope:verAtom", ptr %t58, i64 %t50
  %t60 = load %"compiler/scope:verAtom", ptr %t59
  store %"compiler/scope:verAtom" %t60, ptr %l36
  store %"compiler/scope:verAtom" %a1, ptr %l38
  %t64 = call i1 @olang_2emir_2eHelperKind_2eEqual_2ecompiler_2fscope_3averAtom(ptr %l36, ptr %l38)
  store i1 %t64, ptr %l40
  br label %bb11
bb11:
  %t65 = load i1, ptr %l40, !tbaa !21
  br i1 %t65, label %bb12, label %bb13
bb12:
  store i1 true, ptr %rv
  br label %ret
bb13:
  br label %bb14
bb14:
  br label %bb15
bb15:
  %t67 = load i64, ptr %l6, !tbaa !24
  %t69 = add i64 %t67, 1
  store i64 %t69, ptr %l6, !tbaa !24
  br label %bb7
bb16:
  store i1 false, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aBlockId_3e_2eTrunca_H41af7e01e05600e79afaa4070d8007e3(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  tail call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aNameId_3e_2eTrunca_H0175749ab7aa0aad23a4aa22bc447819(ptr %v0, ptr %a0, i64 %a1)
  ret void
}

define dso_local i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2eEq_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l4 = alloca i64
  %l5 = alloca i64
  %l9 = alloca { i64, ptr }
  %l10 = alloca ptr
  %l11 = alloca ptr
  %l13 = alloca i64
  %l14 = alloca i64
  %l18 = alloca { i64, ptr }
  %l20 = alloca i1
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1, ptr %l2, !tbaa !29
  %t2 = load ptr, ptr %l0, !tbaa !29
  %t4 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t2, i32 0, i32 1
  %t5 = load i64, ptr %t4, !tbaa !24
  store i64 %t5, ptr %l4, !tbaa !24
  %t6 = load ptr, ptr %l2, !tbaa !29
  %t7 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t6, i32 0, i32 0
  %t8 = load { i64, ptr }, ptr %t7, !tbaa !27
  %t9 = extractvalue { i64, ptr } %t8, 0
  store i64 %t9, ptr %l5, !tbaa !24
  %t10 = icmp sge i64 0, 0
  br i1 %t10, label %bb1, label %bb2
bb1:
  %t12 = load i64, ptr %l4, !tbaa !24
  %t13 = icmp sle i64 0, %t12
  br i1 %t13, label %bb3, label %bb4
bb2:
  call void @__olang_check_failed(ptr @olang_loc_9f8ef660388bfc85_df5941ae17e82a29)
  unreachable
bb3:
  %t15 = load i64, ptr %l4, !tbaa !24
  %t16 = load i64, ptr %l5, !tbaa !24
  %t17 = icmp sle i64 %t15, %t16
  br i1 %t17, label %bb5, label %bb6
bb4:
  call void @__olang_check_failed(ptr @olang_loc_9f8ef660388bfc85_df5941ae17e82a29)
  unreachable
bb5:
  %t19 = load ptr, ptr %l2, !tbaa !29
  %t20 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t19, i32 0, i32 0
  %t21 = getelementptr { i64, ptr }, ptr %t20, i32 0, i32 1
  %t22 = load ptr, ptr %t21, !tbaa !27
  %t23 = load i64, ptr %l4, !tbaa !24
  %t24 = getelementptr ptr, ptr %t22, i64 0
  %t25 = sub i64 %t23, 0
  %t26 = insertvalue { i64, ptr } undef, i64 %t25, 0
  %t27 = insertvalue { i64, ptr } %t26, ptr %t24, 1
  store { i64, ptr } %t27, ptr %l9, !tbaa !27
  store ptr %l9, ptr %l10
  %t28 = load ptr, ptr %l1, !tbaa !29
  store ptr %t28, ptr %l11, !tbaa !29
  %t29 = load ptr, ptr %l1, !tbaa !29
  %t31 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t29, i32 0, i32 1
  %t32 = load i64, ptr %t31, !tbaa !24
  store i64 %t32, ptr %l13, !tbaa !24
  %t33 = load ptr, ptr %l11, !tbaa !29
  %t34 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t33, i32 0, i32 0
  %t35 = load { i64, ptr }, ptr %t34, !tbaa !27
  %t36 = extractvalue { i64, ptr } %t35, 0
  store i64 %t36, ptr %l14, !tbaa !24
  %t37 = icmp sge i64 0, 0
  br i1 %t37, label %bb7, label %bb8
bb6:
  call void @__olang_check_failed(ptr @olang_loc_9f8ef660388bfc85_df5941ae17e82a29)
  unreachable
bb7:
  %t39 = load i64, ptr %l13, !tbaa !24
  %t40 = icmp sle i64 0, %t39
  br i1 %t40, label %bb9, label %bb10
bb8:
  call void @__olang_check_failed(ptr @olang_loc_9f8ef660388bfc85_df5941ae17e82a29)
  unreachable
bb9:
  %t42 = load i64, ptr %l13, !tbaa !24
  %t43 = load i64, ptr %l14, !tbaa !24
  %t44 = icmp sle i64 %t42, %t43
  br i1 %t44, label %bb11, label %bb12
bb10:
  call void @__olang_check_failed(ptr @olang_loc_9f8ef660388bfc85_df5941ae17e82a29)
  unreachable
bb11:
  %t46 = load ptr, ptr %l11, !tbaa !29
  %t47 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t46, i32 0, i32 0
  %t48 = getelementptr { i64, ptr }, ptr %t47, i32 0, i32 1
  %t49 = load ptr, ptr %t48, !tbaa !27
  %t50 = load i64, ptr %l13, !tbaa !24
  %t51 = getelementptr ptr, ptr %t49, i64 0
  %t52 = sub i64 %t50, 0
  %t53 = insertvalue { i64, ptr } undef, i64 %t52, 0
  %t54 = insertvalue { i64, ptr } %t53, ptr %t51, 1
  store { i64, ptr } %t54, ptr %l18, !tbaa !27
  %t55 = load ptr, ptr %l10
  %t57 = call i1 @olang_2emir_2eHelperKind_2eEqual_2eArray_3ccompiler_2ftyped_3aExpr_26_3e_26(ptr %t55, ptr %l18)
  store i1 %t57, ptr %l20
  br label %bb13
bb12:
  call void @__olang_check_failed(ptr @olang_loc_9f8ef660388bfc85_df5941ae17e82a29)
  unreachable
bb13:
  %t58 = load i1, ptr %l20, !tbaa !21
  store i1 %t58, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local { i32, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLvalue_26_3e_2ePop__He26954e073d6f40019e862398a9b5f5c(ptr %v0, ptr %v1, ptr %a0) #0 {
entry:
  %r = tail call { i32, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H30b952b85dc190b6cd5306b9d98a7749(ptr %v0, ptr %v1, ptr %a0)
  ret { i32, ptr } %r
}

define dso_local void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLvalue_26_3e_2ePush_H521773322b2b1b179ce4cc03a1674857(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  tail call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcond_3aGlobal_26_3e_2ePush_3ccompiler_2fcond_3aGlobal_26_3e(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
  ret void
}

define dso_local void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLvalue_26_3e_2eTrun_Haa7c8ccc08c8123d0b87c9688e5d351e(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  tail call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fast_3aDecl_26_3e_2eTruncate_3ccompiler_2fast_3aDecl_26_3e(ptr %v0, ptr %a0, i64 %a1)
  ret void
}

define dso_local void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aPlan_3e_2ePush_3ccompiler_2ftyped_3aPlan_3e(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/typed:Plan"
  %l12 = alloca ptr
  %l14 = alloca i64
  %l15 = alloca %"compiler/typed:Plan"
  %l17 = alloca %"compiler/typed:Plan"
  %l18 = alloca ptr
  %t29 = alloca %"compiler/typed:Plan", align 8
  store ptr %a0, ptr %l0
  call void @llvm.memmove.p0.p0.i64(ptr %l1, ptr %a1, i64 536, i1 false)
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
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aPlan_3e_2eroom_3ccompiler_2ftyped_3aPlan_3e(ptr %v0, ptr %t15, i64 %t21)
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
  call void @llvm.memmove.p0.p0.i64(ptr %l15, ptr %l1, i64 536, i1 false)
  call void @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2ftyped_3aPlan(ptr %t29, ptr %v0, ptr %l15)
  call void @llvm.memmove.p0.p0.i64(ptr %l17, ptr %t29, i64 536, i1 false)
  br label %bb5
bb5:
  %t31 = load ptr, ptr %l12, !tbaa !29
  %t32 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t31, i32 0, i32 0
  %t33 = load i64, ptr %l14, !tbaa !24
  %t34 = getelementptr { i64, ptr }, ptr %t32, i32 0, i32 1
  %t35 = load ptr, ptr %t34, !tbaa !27
  %t36 = getelementptr %"compiler/typed:Plan", ptr %t35, i64 %t33
  call void @llvm.memmove.p0.p0.i64(ptr %t36, ptr %l17, i64 536, i1 false)
  %t37 = load ptr, ptr %l0, !tbaa !29
  store ptr %t37, ptr %l18, !tbaa !29
  %t38 = load ptr, ptr %l18, !tbaa !29
  %t39 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t38, i32 0, i32 1
  %t40 = load i64, ptr %t39, !tbaa !24
  %t42 = add i64 %t40, 1
  %t44 = load ptr, ptr %l18, !tbaa !29
  %t45 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t44, i32 0, i32 1
  store i64 %t42, ptr %t45, !tbaa !24
  br label %ret
ret:
  ret void
}

define dso_local void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aScopeVar_3e_2ePush_3ccompiler_2ftyped_3aScopeVar_3e(ptr %v0, ptr %a0, { i64, [1 x i64] } %a1) #0 {
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
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aScopeVar_3e_2eroom_3ccompiler_2ftyped_3aScopeVar_3e(ptr %v0, ptr %t15, i64 %t21)
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
  %t36 = getelementptr { i64, [1 x i64] }, ptr %t35, i64 %t28
  store { i64, [1 x i64] } %a1, ptr %t36
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

define dso_local i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aScope_3e_2eEq_3ccompiler_2ftyped_3aScope_3e(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l4 = alloca i64
  %l5 = alloca i64
  %l9 = alloca { i64, ptr }
  %l10 = alloca ptr
  %l11 = alloca ptr
  %l13 = alloca i64
  %l14 = alloca i64
  %l18 = alloca { i64, ptr }
  %l20 = alloca i1
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1, ptr %l2, !tbaa !29
  %t2 = load ptr, ptr %l0, !tbaa !29
  %t4 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t2, i32 0, i32 1
  %t5 = load i64, ptr %t4, !tbaa !24
  store i64 %t5, ptr %l4, !tbaa !24
  %t6 = load ptr, ptr %l2, !tbaa !29
  %t7 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t6, i32 0, i32 0
  %t8 = load { i64, ptr }, ptr %t7, !tbaa !27
  %t9 = extractvalue { i64, ptr } %t8, 0
  store i64 %t9, ptr %l5, !tbaa !24
  %t10 = icmp sge i64 0, 0
  br i1 %t10, label %bb1, label %bb2
bb1:
  %t12 = load i64, ptr %l4, !tbaa !24
  %t13 = icmp sle i64 0, %t12
  br i1 %t13, label %bb3, label %bb4
bb2:
  call void @__olang_check_failed(ptr @olang_loc_631976024bd0a19_45a2efd665179b9d)
  unreachable
bb3:
  %t15 = load i64, ptr %l4, !tbaa !24
  %t16 = load i64, ptr %l5, !tbaa !24
  %t17 = icmp sle i64 %t15, %t16
  br i1 %t17, label %bb5, label %bb6
bb4:
  call void @__olang_check_failed(ptr @olang_loc_631976024bd0a19_45a2efd665179b9d)
  unreachable
bb5:
  %t19 = load ptr, ptr %l2, !tbaa !29
  %t20 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t19, i32 0, i32 0
  %t21 = getelementptr { i64, ptr }, ptr %t20, i32 0, i32 1
  %t22 = load ptr, ptr %t21, !tbaa !27
  %t23 = load i64, ptr %l4, !tbaa !24
  %t24 = getelementptr { i64, [2 x i64] }, ptr %t22, i64 0
  %t25 = sub i64 %t23, 0
  %t26 = insertvalue { i64, ptr } undef, i64 %t25, 0
  %t27 = insertvalue { i64, ptr } %t26, ptr %t24, 1
  store { i64, ptr } %t27, ptr %l9, !tbaa !27
  store ptr %l9, ptr %l10
  %t28 = load ptr, ptr %l1, !tbaa !29
  store ptr %t28, ptr %l11, !tbaa !29
  %t29 = load ptr, ptr %l1, !tbaa !29
  %t31 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t29, i32 0, i32 1
  %t32 = load i64, ptr %t31, !tbaa !24
  store i64 %t32, ptr %l13, !tbaa !24
  %t33 = load ptr, ptr %l11, !tbaa !29
  %t34 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t33, i32 0, i32 0
  %t35 = load { i64, ptr }, ptr %t34, !tbaa !27
  %t36 = extractvalue { i64, ptr } %t35, 0
  store i64 %t36, ptr %l14, !tbaa !24
  %t37 = icmp sge i64 0, 0
  br i1 %t37, label %bb7, label %bb8
bb6:
  call void @__olang_check_failed(ptr @olang_loc_631976024bd0a19_45a2efd665179b9d)
  unreachable
bb7:
  %t39 = load i64, ptr %l13, !tbaa !24
  %t40 = icmp sle i64 0, %t39
  br i1 %t40, label %bb9, label %bb10
bb8:
  call void @__olang_check_failed(ptr @olang_loc_631976024bd0a19_45a2efd665179b9d)
  unreachable
bb9:
  %t42 = load i64, ptr %l13, !tbaa !24
  %t43 = load i64, ptr %l14, !tbaa !24
  %t44 = icmp sle i64 %t42, %t43
  br i1 %t44, label %bb11, label %bb12
bb10:
  call void @__olang_check_failed(ptr @olang_loc_631976024bd0a19_45a2efd665179b9d)
  unreachable
bb11:
  %t46 = load ptr, ptr %l11, !tbaa !29
  %t47 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t46, i32 0, i32 0
  %t48 = getelementptr { i64, ptr }, ptr %t47, i32 0, i32 1
  %t49 = load ptr, ptr %t48, !tbaa !27
  %t50 = load i64, ptr %l13, !tbaa !24
  %t51 = getelementptr { i64, [2 x i64] }, ptr %t49, i64 0
  %t52 = sub i64 %t50, 0
  %t53 = insertvalue { i64, ptr } undef, i64 %t52, 0
  %t54 = insertvalue { i64, ptr } %t53, ptr %t51, 1
  store { i64, ptr } %t54, ptr %l18, !tbaa !27
  %t55 = load ptr, ptr %l10
  %t57 = call i1 @olang_2emir_2eHelperKind_2eEqual_2eArray_3ccompiler_2ftyped_3aScope_3e_26(ptr %t55, ptr %l18)
  store i1 %t57, ptr %l20
  br label %bb13
bb12:
  call void @__olang_check_failed(ptr @olang_loc_631976024bd0a19_45a2efd665179b9d)
  unreachable
bb13:
  %t58 = load i1, ptr %l20, !tbaa !21
  store i1 %t58, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

@std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aScope_3e_2ePush_3ccompiler_2ftyped_3aScope_3e = dso_local alias void (ptr, ptr, { i64, [2 x i64] }), ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3aTerm_3e_2ePush_3ccompiler_2fscope_3aTerm_3e
define dso_local void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2ePush_3ccompiler_2ftypes_3aTypeId_3e(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  tail call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI32_3e_2ePush_3cI32_3e(ptr %v0, ptr %a0, i32 %a1)
  ret void
}

define dso_local i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fscope_3acompRun_26_3e_Hde01c20c473402e23cc757f365f90f80(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca i64
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l10 = alloca i1
  %l18 = alloca ptr
  %l26 = alloca i64
  %l29 = alloca i64
  %l55 = alloca ptr
  %rv = alloca i32
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load i64, ptr %l1, !tbaa !24
  %t3 = icmp slt i64 %t1, 0
  br i1 %t3, label %bb1, label %bb2
bb1:
  store i1 true, ptr %l10, !tbaa !21
  br label %bb3
bb2:
  %t5 = load i64, ptr %l1, !tbaa !24
  %t6 = load ptr, ptr %l0, !tbaa !29
  %t8 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t6, i32 0, i32 1
  %t9 = load i64, ptr %t8, !tbaa !24
  %t12 = icmp sge i64 %t5, %t9
  store i1 %t12, ptr %l10, !tbaa !21
  br label %bb3
bb3:
  %t14 = load i1, ptr %l10, !tbaa !21
  br i1 %t14, label %bb4, label %bb5
bb4:
  store i32 65538, ptr %rv
  br label %ret
bb5:
  br label %bb6
bb6:
  %t16 = load ptr, ptr %l0, !tbaa !29
  %t17 = load i64, ptr %l1, !tbaa !24
  %t19 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t16, i32 0, i32 0
  %t21 = getelementptr { i64, ptr }, ptr %t19, i32 0, i32 1
  %t22 = load ptr, ptr %t21, !tbaa !27
  %t23 = getelementptr ptr, ptr %t22, i64 %t17
  %t24 = load ptr, ptr %t23, !tbaa !39
  store ptr %t24, ptr %l18, !tbaa !29
  %t25 = load i64, ptr %l1, !tbaa !24
  store i64 %t25, ptr %l2, !tbaa !24
  %t27 = load ptr, ptr %l0, !tbaa !29
  %t29 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t27, i32 0, i32 1
  %t30 = load i64, ptr %t29, !tbaa !24
  %t32 = sub i64 %t30, 1
  store i64 %t32, ptr %l3, !tbaa !24
  store i64 1, ptr %l4, !tbaa !24
  %t34 = load i64, ptr %l3, !tbaa !24
  %t35 = load i64, ptr %l2, !tbaa !24
  %t38 = icmp sgt i64 %t34, %t35
  br i1 %t38, label %bb7, label %bb8
bb7:
  %t40 = load i64, ptr %l4, !tbaa !24
  %t42 = icmp sgt i64 %t40, 0
  br i1 %t42, label %bb9, label %bb10
bb8:
  store i64 0, ptr %l26, !tbaa !24
  br label %bb12
bb9:
  %t44 = load i64, ptr %l3, !tbaa !24
  %t45 = load i64, ptr %l2, !tbaa !24
  %t48 = sub i64 %t44, %t45
  %t49 = load i64, ptr %l4, !tbaa !24
  %t52 = add i64 %t48, %t49
  %t54 = sub i64 %t52, 1
  %t55 = load i64, ptr %l4, !tbaa !24
  %t58 = sdiv i64 %t54, %t55
  store i64 %t58, ptr %l29, !tbaa !24
  br label %bb11
bb10:
  store i64 0, ptr %l29, !tbaa !24
  br label %bb11
bb11:
  %t60 = load i64, ptr %l29, !tbaa !24
  store i64 %t60, ptr %l26, !tbaa !24
  br label %bb12
bb12:
  %t61 = load i64, ptr %l26, !tbaa !24
  store i64 %t61, ptr %l5, !tbaa !24
  store i64 0, ptr %l6, !tbaa !24
  br label %bb13
bb13:
  %t62 = load i64, ptr %l6, !tbaa !24
  %t63 = load i64, ptr %l5, !tbaa !24
  %t66 = icmp slt i64 %t62, %t63
  %t68 = xor i1 %t66, true
  br i1 %t68, label %bb14, label %bb15
bb14:
  br label %bb18
bb15:
  br label %bb16
bb16:
  %t70 = load i64, ptr %l2, !tbaa !24
  %t71 = load i64, ptr %l6, !tbaa !24
  %t72 = load i64, ptr %l4, !tbaa !24
  %t75 = mul i64 %t71, %t72
  %t78 = add i64 %t70, %t75
  store i64 %t78, ptr %l7, !tbaa !24
  %t80 = load ptr, ptr %l0, !tbaa !29
  %t81 = load i64, ptr %l7, !tbaa !24
  %t82 = load ptr, ptr %l0, !tbaa !29
  %t83 = load i64, ptr %l7, !tbaa !24
  %t85 = add i64 %t83, 1
  %t87 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t82, i32 0, i32 0
  %t89 = getelementptr { i64, ptr }, ptr %t87, i32 0, i32 1
  %t90 = load ptr, ptr %t89, !tbaa !27
  %t91 = getelementptr ptr, ptr %t90, i64 %t85
  %t92 = load ptr, ptr %t91, !tbaa !39
  %t95 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t80, i32 0, i32 0
  %t97 = getelementptr { i64, ptr }, ptr %t95, i32 0, i32 1
  %t98 = load ptr, ptr %t97, !tbaa !27
  %t99 = getelementptr ptr, ptr %t98, i64 %t81
  store ptr %t92, ptr %t99, !tbaa !39
  br label %bb17
bb17:
  %t100 = load i64, ptr %l6, !tbaa !24
  %t102 = add i64 %t100, 1
  store i64 %t102, ptr %l6, !tbaa !24
  br label %bb13
bb18:
  %t104 = load ptr, ptr %l0, !tbaa !29
  store ptr %t104, ptr %l55, !tbaa !29
  %t105 = load ptr, ptr %l55, !tbaa !29
  %t106 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t105, i32 0, i32 1
  %t107 = load i64, ptr %t106, !tbaa !24
  %t109 = sub i64 %t107, 1
  %t111 = load ptr, ptr %l55, !tbaa !29
  %t112 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t111, i32 0, i32 1
  store i64 %t109, ptr %t112, !tbaa !24
  store i32 0, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fscope_3asummary_26_3e_H6c9b3c63d1bd8a9585cb935569d90c26(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  tail call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcond_3aGlobal_26_3e_2ePush_3ccompiler_2fcond_3aGlobal_26_3e(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
  ret void
}

define dso_local void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_3e_H8e86aafb7cbdd2ec2cbc5deec80f6d75(ptr %v0, ptr %a0) #0 {
entry:
  br label %start
start:
  br label %bb0
bb0:
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_3e_Haf2ee04ed658e65f26719862d5a58e20(ptr %v0, ptr %a0, i64 0)
  br label %bb1
bb1:
  br label %ret
ret:
  ret void
}

define dso_local void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_3e_He884b2f616501f0425bcbf257757c768(ptr %v0, ptr %a0, i64 %a1) noinline cold #0 {
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
  call void @__olang_check_failed(ptr @olang_loc_1ba14b2e3d91848d_9bcc70ac9434d0a1)
  unreachable
bb15:
  %t71 = load i64, ptr %l36, !tbaa !24
  %t72 = load i64, ptr %l37, !tbaa !24
  %t73 = icmp sle i64 %t71, %t72
  br i1 %t73, label %bb17, label %bb18
bb16:
  call void @__olang_check_failed(ptr @olang_loc_1ba14b2e3d91848d_9bcc70ac9434d0a1)
  unreachable
bb17:
  %t75 = getelementptr { i64, ptr }, ptr %l34, i32 0, i32 1
  %t76 = load ptr, ptr %t75, !tbaa !27
  %t77 = load i64, ptr %l36, !tbaa !24
  %t78 = getelementptr %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %t76, i64 0
  %t79 = sub i64 %t77, 0
  %t80 = insertvalue { i64, ptr } undef, i64 %t79, 0
  %t81 = insertvalue { i64, ptr } %t80, ptr %t78, 1
  store { i64, ptr } %t81, ptr %l4, !tbaa !27
  %t83 = load i64, ptr %l2, !tbaa !24
  %t87 = mul i64 %t83, 16
  %t88 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t87)
  %t89 = insertvalue { i64, ptr } undef, i64 %t83, 0
  %t90 = insertvalue { i64, ptr } %t89, ptr %t88, 1
  store { i64, ptr } %t90, ptr %l44, !tbaa !27
  store i64 0, ptr %l45, !tbaa !24
  store i64 0, ptr %l6, !tbaa !24
  br label %bb19
bb18:
  call void @__olang_check_failed(ptr @olang_loc_1ba14b2e3d91848d_9bcc70ac9434d0a1)
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
  %t106 = getelementptr %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %t105, i64 %t102
  %t107 = load %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %t106
  %t109 = load i64, ptr %l45, !tbaa !24
  %t110 = getelementptr { i64, ptr }, ptr %l44, i32 0, i32 1
  %t111 = load ptr, ptr %t110, !tbaa !27
  %t112 = getelementptr %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %t111, i64 %t109
  store %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t107, ptr %t112
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

define dso_local void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2fmap_3aMap_3cI64_2c_20c_H3625ae7f5f9460b5970f31ce1f03179d(ptr %v0, ptr %v1, ptr %a0, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %a1) #0 {
entry:
  %l0 = alloca ptr
  %l12 = alloca ptr
  %l14 = alloca i64
  %l15 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l17 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
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
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2fmap_3aMap_3cI64_2c_20c_Hedb47652e198260c416011857f695302(ptr %v0, ptr %t15, i64 %t21)
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
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %a1, ptr %l15
  %t31 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2fscope_3afnRecs_3e(ptr %v0, ptr %l15)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t31, ptr %l17
  br label %bb5
bb5:
  %t32 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l17
  %t33 = load ptr, ptr %l12, !tbaa !29
  %t34 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t33, i32 0, i32 0
  %t35 = load i64, ptr %l14, !tbaa !24
  %t36 = getelementptr { i64, ptr }, ptr %t34, i32 0, i32 1
  %t37 = load ptr, ptr %t36, !tbaa !27
  %t38 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t37, i64 %t35
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t32, ptr %t38
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

define dso_local ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2fvec_3aVec_3cmut_20comp_H1cf5fc557ad2be946465a784b28afba9(ptr %v0, ptr %v1, ptr %a0, i64 %a1) #0 {
entry:
  %rv = alloca ptr
  br label %start
start:
  br label %bb0
bb0:
  %t4 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %a0, i32 0, i32 0
  %t6 = getelementptr { i64, ptr }, ptr %t4, i32 0, i32 1
  %t7 = load ptr, ptr %t6, !tbaa !27
  %t8 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t7, i64 %a1
  store ptr %t8, ptr %rv
  br label %ret
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

define dso_local i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2fvec_3aVec_3cmut_20comp_H43e0789510fdd6e46eb40242e8ebac44(ptr %v0, ptr %a0) #0 {
entry:
  %r = tail call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cU64_3e_2eLen_3cU64_3e(ptr %v0, ptr %a0)
  ret i64 %r
}

define dso_local void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2fvec_3aVec_3cmut_20comp_Ha27721164864093d8065d46fbe969218(ptr %v0, ptr %v1, ptr %a0, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %a1) #0 {
entry:
  %l0 = alloca ptr
  %l12 = alloca ptr
  %l14 = alloca i64
  %l15 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l17 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
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
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2fvec_3aVec_3cstd_2fprel_H678b8309aae39c7cf837a36fd9762d02(ptr %v0, ptr %t15, i64 %t21)
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
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %a1, ptr %l15
  %t31 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cI64_3e(ptr %v0, ptr %l15)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t31, ptr %l17
  br label %bb5
bb5:
  %t32 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l17
  %t33 = load ptr, ptr %l12, !tbaa !29
  %t34 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t33, i32 0, i32 0
  %t35 = load i64, ptr %l14, !tbaa !24
  %t36 = getelementptr { i64, ptr }, ptr %t34, i32 0, i32 1
  %t37 = load ptr, ptr %t36, !tbaa !27
  %t38 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t37, i64 %t35
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t32, ptr %t38
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

@std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2fvec_3aVec_3cmut_20comp_Hcb6fae2338a785d6927a8587899f4e85 = dso_local alias ptr (ptr, ptr, ptr, i64), ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2fvec_3aVec_3cmut_20comp_H1cf5fc557ad2be946465a784b28afba9
define dso_local %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fgeneric_3aOrigin_3e_2ector(ptr %v0, i64 %a0) #0 {
entry:
  %r = tail call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cU64_3e_2ector(ptr %v0, i64 %a0)
  ret %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %r
}

define dso_local %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3amarkRead_3e_2ector(ptr %v0, i64 %a0) #0 {
entry:
  %r = tail call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cU64_3e_2ector(ptr %v0, i64 %a0)
  ret %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %r
}

define dso_local %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fscope_3acompRun_26_3e_3e_2ector(ptr %v0, i64 %a0) #0 {
entry:
  %r = tail call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cU64_3e_2ector(ptr %v0, i64 %a0)
  ret %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %r
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
declare noalias ptr @__olang_scope_alloc_zeroed(ptr, i64)
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
define internal i1 @olang_lambda_0(ptr %env, i64 %a0, i64 %a1) #0 {
entry:
  %l3 = alloca { i64, ptr }
  %l4 = alloca i1
  %l5 = alloca { ptr, ptr }
  %l6 = alloca { i64, ptr }
  %l8 = alloca %"compiler/scope:Placement"
  %l10 = alloca %"compiler/scope:Placement"
  %l11 = alloca { i64, ptr }
  %l13 = alloca %"compiler/scope:Placement"
  %l15 = alloca %"compiler/scope:Placement"
  %l16 = alloca i1
  %s0 = alloca %olang.scope
  %rv = alloca i1
  %cp0 = getelementptr { { ptr, ptr }, { i64, ptr }, ptr, ptr }, ptr %env, i32 0, i32 0
  %cv0 = load { ptr, ptr }, ptr %cp0, !tbaa !28
  %cp1 = getelementptr { { ptr, ptr }, { i64, ptr }, ptr, ptr }, ptr %env, i32 0, i32 1
  %cv1 = load { i64, ptr }, ptr %cp1, !tbaa !28
  store { i64, ptr } %cv1, ptr %l3
  %vq0 = getelementptr { { ptr, ptr }, { i64, ptr }, ptr, ptr }, ptr %env, i32 0, i32 2
  %vr0 = load ptr, ptr %vq0, !tbaa !28
  %vc0 = call ptr @__olang_capture_scope(ptr %vr0)
  %vq1 = getelementptr { { ptr, ptr }, { i64, ptr }, ptr, ptr }, ptr %env, i32 0, i32 3
  %vr1 = load ptr, ptr %vq1, !tbaa !28
  %vc1 = call ptr @__olang_capture_scope(ptr %vr1)
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  store { ptr, ptr } %cv0, ptr %l5
  %t2 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t2, ptr %l6, !tbaa !27
  %t5 = getelementptr { i64, ptr }, ptr %l6, i32 0, i32 1
  %t6 = load ptr, ptr %t5, !tbaa !27
  %t7 = getelementptr %"compiler/scope:Placement", ptr %t6, i64 %a0
  %t8 = load %"compiler/scope:Placement", ptr %t7
  store %"compiler/scope:Placement" %t8, ptr %l8
  %t10 = call %"compiler/scope:Placement" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2fscope_3aPlacement(ptr %s0, ptr %l8)
  store %"compiler/scope:Placement" %t10, ptr %l10
  br label %bb1
bb1:
  %t11 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t11, ptr %l11, !tbaa !27
  %t14 = getelementptr { i64, ptr }, ptr %l11, i32 0, i32 1
  %t15 = load ptr, ptr %t14, !tbaa !27
  %t16 = getelementptr %"compiler/scope:Placement", ptr %t15, i64 %a1
  %t17 = load %"compiler/scope:Placement", ptr %t16
  store %"compiler/scope:Placement" %t17, ptr %l13
  %t19 = call %"compiler/scope:Placement" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2fscope_3aPlacement(ptr %s0, ptr %l13)
  store %"compiler/scope:Placement" %t19, ptr %l15
  br label %bb2
bb2:
  %t20 = load { ptr, ptr }, ptr %l5
  %t21 = extractvalue { ptr, ptr } %t20, 0
  %t22 = extractvalue { ptr, ptr } %t20, 1
  %t23 = load %"compiler/scope:Placement", ptr %l10
  %t24 = load %"compiler/scope:Placement", ptr %l15
  %t25 = call i1 %t21(ptr %t22, ptr %s0, ptr %s0, %"compiler/scope:Placement" %t23, %"compiler/scope:Placement" %t24)
  store i1 %t25, ptr %l16
  br label %bb3
bb3:
  %t26 = load i1, ptr %l16, !tbaa !21
  store i1 %t26, ptr %l4, !tbaa !21
  br label %bb4
bb4:
  call void @__olang_scope_close(ptr %s0)
  %t27 = load i1, ptr %l4, !tbaa !21
  store i1 %t27, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define linkonce_odr %"compiler/scope:Placement" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2fscope_3aPlacement(ptr %v0, ptr %a0) #0 {
entry:
  %l1 = alloca %"compiler/scope:Placement"
  %l2 = alloca { i64, ptr }
  %l3 = alloca i64
  %l4 = alloca { i64, ptr }
  %rv = alloca %"compiler/scope:Placement"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = load %"compiler/scope:Placement", ptr %a0
  store %"compiler/scope:Placement" %t2, ptr %l1
  %t3 = getelementptr %"compiler/scope:Placement", ptr %l1, i32 0, i32 4
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
  %t19 = getelementptr %"compiler/scope:Placement", ptr %l1, i32 0, i32 4
  store { i64, ptr } %t18, ptr %t19, !tbaa !27
  %t20 = load %"compiler/scope:Placement", ptr %l1
  store %"compiler/scope:Placement" %t20, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/scope:Placement", ptr %rv
  ret %"compiler/scope:Placement" %rr
}

define linkonce_odr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feffects_3agiven_3e(ptr %v0, ptr %a0) #0 {
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

define linkonce_odr %"std/prelude/map:MapEntry.f17f3f0202174eb6591f595766c15613" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMapEntry_3cI64_2c_20std_2fprelud_Hbe8b18fc9dfd8a0dd431c26ba01d8572(ptr %v0, ptr %a0) #0 {
entry:
  %l1 = alloca %"std/prelude/map:MapEntry.f17f3f0202174eb6591f595766c15613"
  %l3 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %rv = alloca %"std/prelude/map:MapEntry.f17f3f0202174eb6591f595766c15613"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = load %"std/prelude/map:MapEntry.f17f3f0202174eb6591f595766c15613", ptr %a0
  store %"std/prelude/map:MapEntry.f17f3f0202174eb6591f595766c15613" %t2, ptr %l1
  %t3 = getelementptr %"std/prelude/map:MapEntry.f17f3f0202174eb6591f595766c15613", ptr %l1, i32 0, i32 1
  %t5 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feffects_3agiven_3e(ptr %v0, ptr %t3)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t5, ptr %l3
  br label %bb1
bb1:
  %t6 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l3
  %t7 = getelementptr %"std/prelude/map:MapEntry.f17f3f0202174eb6591f595766c15613", ptr %l1, i32 0, i32 1
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t6, ptr %t7
  %t8 = load %"std/prelude/map:MapEntry.f17f3f0202174eb6591f595766c15613", ptr %l1
  store %"std/prelude/map:MapEntry.f17f3f0202174eb6591f595766c15613" %t8, ptr %rv
  br label %ret
ret:
  %rr = load %"std/prelude/map:MapEntry.f17f3f0202174eb6591f595766c15613", ptr %rv
  ret %"std/prelude/map:MapEntry.f17f3f0202174eb6591f595766c15613" %rr
}

define linkonce_odr %"std/prelude/map:MapEntry.8d509622153b47f1a5f79c42c8367406" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMapEntry_3cI64_2c_20Array_3ccompiler_2ftyped_3aBlockId_3e_3e(ptr %v0, ptr %a0) #0 {
entry:
  %l1 = alloca %"std/prelude/map:MapEntry.8d509622153b47f1a5f79c42c8367406"
  %l2 = alloca { i64, ptr }
  %l3 = alloca i64
  %l4 = alloca { i64, ptr }
  %rv = alloca %"std/prelude/map:MapEntry.8d509622153b47f1a5f79c42c8367406"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = load %"std/prelude/map:MapEntry.8d509622153b47f1a5f79c42c8367406", ptr %a0
  store %"std/prelude/map:MapEntry.8d509622153b47f1a5f79c42c8367406" %t2, ptr %l1
  %t3 = getelementptr %"std/prelude/map:MapEntry.8d509622153b47f1a5f79c42c8367406", ptr %l1, i32 0, i32 1
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
  %t19 = getelementptr %"std/prelude/map:MapEntry.8d509622153b47f1a5f79c42c8367406", ptr %l1, i32 0, i32 1
  store { i64, ptr } %t18, ptr %t19, !tbaa !27
  %t20 = load %"std/prelude/map:MapEntry.8d509622153b47f1a5f79c42c8367406", ptr %l1
  store %"std/prelude/map:MapEntry.8d509622153b47f1a5f79c42c8367406" %t20, ptr %rv
  br label %ret
ret:
  %rr = load %"std/prelude/map:MapEntry.8d509622153b47f1a5f79c42c8367406", ptr %rv
  ret %"std/prelude/map:MapEntry.8d509622153b47f1a5f79c42c8367406" %rr
}

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
define linkonce_odr %"compiler/scope:fnRecs" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2fscope_3afnRecs(ptr %v0, ptr %a0) #0 {
entry:
  %l1 = alloca %"compiler/scope:fnRecs"
  %l3 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l5 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l7 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %rv = alloca %"compiler/scope:fnRecs"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = load %"compiler/scope:fnRecs", ptr %a0
  store %"compiler/scope:fnRecs" %t2, ptr %l1
  %t3 = getelementptr %"compiler/scope:fnRecs", ptr %l1, i32 0, i32 0
  %t5 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3afnRec_3e(ptr %v0, ptr %t3)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t5, ptr %l3
  br label %bb1
bb1:
  %t6 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l3
  %t7 = getelementptr %"compiler/scope:fnRecs", ptr %l1, i32 0, i32 0
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t6, ptr %t7
  %t8 = getelementptr %"compiler/scope:fnRecs", ptr %l1, i32 0, i32 2
  %t10 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cI64_3e(ptr %v0, ptr %t8)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t10, ptr %l5
  br label %bb2
bb2:
  %t11 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l5
  %t12 = getelementptr %"compiler/scope:fnRecs", ptr %l1, i32 0, i32 2
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t11, ptr %t12
  %t13 = getelementptr %"compiler/scope:fnRecs", ptr %l1, i32 0, i32 3
  %t15 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cI64_3e(ptr %v0, ptr %t13)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t15, ptr %l7
  br label %bb3
bb3:
  %t16 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l7
  %t17 = getelementptr %"compiler/scope:fnRecs", ptr %l1, i32 0, i32 3
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t16, ptr %t17
  %t18 = load %"compiler/scope:fnRecs", ptr %l1
  store %"compiler/scope:fnRecs" %t18, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/scope:fnRecs", ptr %rv
  ret %"compiler/scope:fnRecs" %rr
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

define linkonce_odr %"std/prelude/map:MapEntry.f17f3f0202174eb6591f595766c15613" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMapEntry_3cI64_2c_20std_2fprelud_Hff03c904942c15bd0aa9c7c744faa430(ptr %v0, ptr %a0) #0 {
entry:
  %l1 = alloca %"std/prelude/map:MapEntry.f17f3f0202174eb6591f595766c15613"
  %l3 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %rv = alloca %"std/prelude/map:MapEntry.f17f3f0202174eb6591f595766c15613"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = load %"std/prelude/map:MapEntry.f17f3f0202174eb6591f595766c15613", ptr %a0
  store %"std/prelude/map:MapEntry.f17f3f0202174eb6591f595766c15613" %t2, ptr %l1
  %t3 = getelementptr %"std/prelude/map:MapEntry.f17f3f0202174eb6591f595766c15613", ptr %l1, i32 0, i32 1
  %t5 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cI64_3e(ptr %v0, ptr %t3)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t5, ptr %l3
  br label %bb1
bb1:
  %t6 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l3
  %t7 = getelementptr %"std/prelude/map:MapEntry.f17f3f0202174eb6591f595766c15613", ptr %l1, i32 0, i32 1
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t6, ptr %t7
  %t8 = load %"std/prelude/map:MapEntry.f17f3f0202174eb6591f595766c15613", ptr %l1
  store %"std/prelude/map:MapEntry.f17f3f0202174eb6591f595766c15613" %t8, ptr %rv
  br label %ret
ret:
  %rr = load %"std/prelude/map:MapEntry.f17f3f0202174eb6591f595766c15613", ptr %rv
  ret %"std/prelude/map:MapEntry.f17f3f0202174eb6591f595766c15613" %rr
}

define linkonce_odr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feffects_3alink_3e(ptr %v0, ptr %a0) #0 {
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
  %t8 = mul i64 %t7, 24
  %t9 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t8)
  %t10 = insertvalue { i64, ptr } undef, i64 %t7, 0
  %t11 = insertvalue { i64, ptr } %t10, ptr %t9, 1
  store { i64, ptr } %t11, ptr %l4, !tbaa !27
  %t12 = getelementptr { i64, ptr }, ptr %l4, i32 0, i32 1
  %t13 = load ptr, ptr %t12, !tbaa !27
  %t14 = getelementptr { i64, ptr }, ptr %l2, i32 0, i32 1
  %t15 = load ptr, ptr %t14, !tbaa !27
  %t16 = load i64, ptr %l3, !tbaa !24
  %t17 = mul i64 %t16, 24
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

define linkonce_odr i64 @olang_2emir_2eHelperKind_2eHash_2ecompiler_2fscope_3averAtom(ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l3 = alloca i64
  %l8 = alloca i64
  %l13 = alloca i64
  %l18 = alloca i64
  %l23 = alloca i64
  %l28 = alloca i64
  %l34 = alloca i64
  %l39 = alloca i64
  %rv = alloca i64
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store i64 0, ptr %l1, !tbaa !24
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = getelementptr %"compiler/scope:verAtom", ptr %t1, i32 0, i32 0
  %t3 = load i64, ptr %t2, !tbaa !24
  %t5 = mul i64 %t3, -7046029254386353131
  store i64 %t5, ptr %l3, !tbaa !24
  %t6 = load i64, ptr %l3, !tbaa !24
  %t7 = ashr i64 %t6, 29
  %t8 = load i64, ptr %l3, !tbaa !24
  %t10 = xor i64 %t8, %t7
  %t11 = load i64, ptr %l1, !tbaa !24
  %t12 = mul i64 %t11, 1099511628211
  %t15 = add i64 %t12, %t10
  store i64 %t15, ptr %l1, !tbaa !24
  %t16 = load ptr, ptr %l0, !tbaa !29
  %t17 = getelementptr %"compiler/scope:verAtom", ptr %t16, i32 0, i32 1
  %t18 = load i64, ptr %t17, !tbaa !24
  %t20 = mul i64 %t18, -7046029254386353131
  store i64 %t20, ptr %l8, !tbaa !24
  %t21 = load i64, ptr %l8, !tbaa !24
  %t22 = ashr i64 %t21, 29
  %t23 = load i64, ptr %l8, !tbaa !24
  %t25 = xor i64 %t23, %t22
  %t26 = load i64, ptr %l1, !tbaa !24
  %t27 = mul i64 %t26, 1099511628211
  %t30 = add i64 %t27, %t25
  store i64 %t30, ptr %l1, !tbaa !24
  %t31 = load ptr, ptr %l0, !tbaa !29
  %t32 = getelementptr %"compiler/scope:verAtom", ptr %t31, i32 0, i32 2
  %t33 = load i64, ptr %t32, !tbaa !24
  %t35 = mul i64 %t33, -7046029254386353131
  store i64 %t35, ptr %l13, !tbaa !24
  %t36 = load i64, ptr %l13, !tbaa !24
  %t37 = ashr i64 %t36, 29
  %t38 = load i64, ptr %l13, !tbaa !24
  %t40 = xor i64 %t38, %t37
  %t41 = load i64, ptr %l1, !tbaa !24
  %t42 = mul i64 %t41, 1099511628211
  %t45 = add i64 %t42, %t40
  store i64 %t45, ptr %l1, !tbaa !24
  %t46 = load ptr, ptr %l0, !tbaa !29
  %t47 = getelementptr %"compiler/scope:verAtom", ptr %t46, i32 0, i32 3
  %t48 = load i64, ptr %t47, !tbaa !24
  %t50 = mul i64 %t48, -7046029254386353131
  store i64 %t50, ptr %l18, !tbaa !24
  %t51 = load i64, ptr %l18, !tbaa !24
  %t52 = ashr i64 %t51, 29
  %t53 = load i64, ptr %l18, !tbaa !24
  %t55 = xor i64 %t53, %t52
  %t56 = load i64, ptr %l1, !tbaa !24
  %t57 = mul i64 %t56, 1099511628211
  %t60 = add i64 %t57, %t55
  store i64 %t60, ptr %l1, !tbaa !24
  %t61 = load ptr, ptr %l0, !tbaa !29
  %t62 = getelementptr %"compiler/scope:verAtom", ptr %t61, i32 0, i32 4
  %t63 = load i64, ptr %t62, !tbaa !24
  %t65 = mul i64 %t63, -7046029254386353131
  store i64 %t65, ptr %l23, !tbaa !24
  %t66 = load i64, ptr %l23, !tbaa !24
  %t67 = ashr i64 %t66, 29
  %t68 = load i64, ptr %l23, !tbaa !24
  %t70 = xor i64 %t68, %t67
  %t71 = load i64, ptr %l1, !tbaa !24
  %t72 = mul i64 %t71, 1099511628211
  %t75 = add i64 %t72, %t70
  store i64 %t75, ptr %l1, !tbaa !24
  %t76 = load ptr, ptr %l0, !tbaa !29
  %t77 = getelementptr %"compiler/scope:verAtom", ptr %t76, i32 0, i32 5
  %t78 = load i64, ptr %t77, !tbaa !24
  %t80 = mul i64 %t78, -7046029254386353131
  store i64 %t80, ptr %l28, !tbaa !24
  %t81 = load i64, ptr %l28, !tbaa !24
  %t82 = ashr i64 %t81, 29
  %t83 = load i64, ptr %l28, !tbaa !24
  %t85 = xor i64 %t83, %t82
  %t86 = load i64, ptr %l1, !tbaa !24
  %t87 = mul i64 %t86, 1099511628211
  %t90 = add i64 %t87, %t85
  store i64 %t90, ptr %l1, !tbaa !24
  %t91 = load ptr, ptr %l0, !tbaa !29
  %t92 = getelementptr %"compiler/scope:verAtom", ptr %t91, i32 0, i32 6
  %t93 = load i1, ptr %t92, !tbaa !21
  %t95 = zext i1 %t93 to i64
  %t97 = mul i64 %t95, -7046029254386353131
  store i64 %t97, ptr %l34, !tbaa !24
  %t98 = load i64, ptr %l34, !tbaa !24
  %t99 = ashr i64 %t98, 29
  %t100 = load i64, ptr %l34, !tbaa !24
  %t102 = xor i64 %t100, %t99
  %t103 = load i64, ptr %l1, !tbaa !24
  %t104 = mul i64 %t103, 1099511628211
  %t107 = add i64 %t104, %t102
  store i64 %t107, ptr %l1, !tbaa !24
  %t108 = load ptr, ptr %l0, !tbaa !29
  %t109 = getelementptr %"compiler/scope:verAtom", ptr %t108, i32 0, i32 7
  %t110 = load i64, ptr %t109, !tbaa !24
  %t112 = mul i64 %t110, -7046029254386353131
  store i64 %t112, ptr %l39, !tbaa !24
  %t113 = load i64, ptr %l39, !tbaa !24
  %t114 = ashr i64 %t113, 29
  %t115 = load i64, ptr %l39, !tbaa !24
  %t117 = xor i64 %t115, %t114
  %t118 = load i64, ptr %l1, !tbaa !24
  %t119 = mul i64 %t118, 1099511628211
  %t122 = add i64 %t119, %t117
  store i64 %t122, ptr %l1, !tbaa !24
  %t123 = load i64, ptr %l1, !tbaa !24
  store i64 %t123, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define linkonce_odr %"std/prelude/map:MapEntry.0bcda5c026701d95f15bce76f62e86ad" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMapEntry_3cstd_2fpair_3aPair_3cI_He76ccdd46fc8fd3edee4364d67fec2b5(ptr %v0, ptr %a0) #0 {
entry:
  %l1 = alloca %"std/prelude/map:MapEntry.0bcda5c026701d95f15bce76f62e86ad"
  %l3 = alloca %"compiler/scope:fnRecs"
  %rv = alloca %"std/prelude/map:MapEntry.0bcda5c026701d95f15bce76f62e86ad"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = load %"std/prelude/map:MapEntry.0bcda5c026701d95f15bce76f62e86ad", ptr %a0
  store %"std/prelude/map:MapEntry.0bcda5c026701d95f15bce76f62e86ad" %t2, ptr %l1
  %t3 = getelementptr %"std/prelude/map:MapEntry.0bcda5c026701d95f15bce76f62e86ad", ptr %l1, i32 0, i32 1
  %t5 = call %"compiler/scope:fnRecs" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2fscope_3afnRecs(ptr %v0, ptr %t3)
  store %"compiler/scope:fnRecs" %t5, ptr %l3
  br label %bb1
bb1:
  %t6 = load %"compiler/scope:fnRecs", ptr %l3
  %t7 = getelementptr %"std/prelude/map:MapEntry.0bcda5c026701d95f15bce76f62e86ad", ptr %l1, i32 0, i32 1
  store %"compiler/scope:fnRecs" %t6, ptr %t7
  %t8 = load %"std/prelude/map:MapEntry.0bcda5c026701d95f15bce76f62e86ad", ptr %l1
  store %"std/prelude/map:MapEntry.0bcda5c026701d95f15bce76f62e86ad" %t8, ptr %rv
  br label %ret
ret:
  %rr = load %"std/prelude/map:MapEntry.0bcda5c026701d95f15bce76f62e86ad", ptr %rv
  ret %"std/prelude/map:MapEntry.0bcda5c026701d95f15bce76f62e86ad" %rr
}

define linkonce_odr i1 @olang_2emir_2eHelperKind_2eEqual_2estd_2fpair_3aPair_3cI64_2c_20I64_3e(ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i1
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store i1 true, ptr %l2, !tbaa !21
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = getelementptr %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %t1, i32 0, i32 0
  %t3 = load i64, ptr %t2, !tbaa !24
  %t4 = load ptr, ptr %l1, !tbaa !29
  %t5 = getelementptr %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %t4, i32 0, i32 0
  %t6 = load i64, ptr %t5, !tbaa !24
  %t9 = icmp eq i64 %t3, %t6
  br i1 %t9, label %bb2, label %bb1
bb1:
  store i1 false, ptr %l2, !tbaa !21
  br label %bb4
bb2:
  %t11 = load ptr, ptr %l0, !tbaa !29
  %t12 = getelementptr %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %t11, i32 0, i32 1
  %t13 = load i64, ptr %t12, !tbaa !24
  %t14 = load ptr, ptr %l1, !tbaa !29
  %t15 = getelementptr %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %t14, i32 0, i32 1
  %t16 = load i64, ptr %t15, !tbaa !24
  %t19 = icmp eq i64 %t13, %t16
  br i1 %t19, label %bb3, label %bb1
bb3:
  br label %bb4
bb4:
  %t21 = load i1, ptr %l2, !tbaa !21
  store i1 %t21, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define linkonce_odr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3averAtom_3e(ptr %v0, ptr %a0) #0 {
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
  %t8 = mul i64 %t7, 64
  %t9 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t8)
  %t10 = insertvalue { i64, ptr } undef, i64 %t7, 0
  %t11 = insertvalue { i64, ptr } %t10, ptr %t9, 1
  store { i64, ptr } %t11, ptr %l4, !tbaa !27
  %t12 = getelementptr { i64, ptr }, ptr %l4, i32 0, i32 1
  %t13 = load ptr, ptr %t12, !tbaa !27
  %t14 = getelementptr { i64, ptr }, ptr %l2, i32 0, i32 1
  %t15 = load ptr, ptr %t14, !tbaa !27
  %t16 = load i64, ptr %l3, !tbaa !24
  %t17 = mul i64 %t16, 64
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

define linkonce_odr %"std/prelude/map:MapEntry.39ab5235a9e7cc4d21ab272df52b187f" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMapEntry_3cstd_2fpair_3aPair_3cI_Hf236050a4c87b3db613542553d971547(ptr %v0, ptr %a0) #0 {
entry:
  %l1 = alloca %"std/prelude/map:MapEntry.39ab5235a9e7cc4d21ab272df52b187f"
  %l3 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %rv = alloca %"std/prelude/map:MapEntry.39ab5235a9e7cc4d21ab272df52b187f"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = load %"std/prelude/map:MapEntry.39ab5235a9e7cc4d21ab272df52b187f", ptr %a0
  store %"std/prelude/map:MapEntry.39ab5235a9e7cc4d21ab272df52b187f" %t2, ptr %l1
  %t3 = getelementptr %"std/prelude/map:MapEntry.39ab5235a9e7cc4d21ab272df52b187f", ptr %l1, i32 0, i32 1
  %t5 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3averAtom_3e(ptr %v0, ptr %t3)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t5, ptr %l3
  br label %bb1
bb1:
  %t6 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l3
  %t7 = getelementptr %"std/prelude/map:MapEntry.39ab5235a9e7cc4d21ab272df52b187f", ptr %l1, i32 0, i32 1
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t6, ptr %t7
  %t8 = load %"std/prelude/map:MapEntry.39ab5235a9e7cc4d21ab272df52b187f", ptr %l1
  store %"std/prelude/map:MapEntry.39ab5235a9e7cc4d21ab272df52b187f" %t8, ptr %rv
  br label %ret
ret:
  %rr = load %"std/prelude/map:MapEntry.39ab5235a9e7cc4d21ab272df52b187f", ptr %rv
  ret %"std/prelude/map:MapEntry.39ab5235a9e7cc4d21ab272df52b187f" %rr
}

define linkonce_odr %"std/prelude/map:MapEntry.5d90ea23f235d8870da3668e82c28edd" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMapEntry_3cstd_2fpair_3aPair_3cI_Hba3d3054cd7ffa4093e8aae0f585f337(ptr %v0, ptr %a0) #0 {
entry:
  %l1 = alloca %"std/prelude/map:MapEntry.5d90ea23f235d8870da3668e82c28edd"
  %l3 = alloca %"compiler/scope:Placement"
  %rv = alloca %"std/prelude/map:MapEntry.5d90ea23f235d8870da3668e82c28edd"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = load %"std/prelude/map:MapEntry.5d90ea23f235d8870da3668e82c28edd", ptr %a0
  store %"std/prelude/map:MapEntry.5d90ea23f235d8870da3668e82c28edd" %t2, ptr %l1
  %t3 = getelementptr %"std/prelude/map:MapEntry.5d90ea23f235d8870da3668e82c28edd", ptr %l1, i32 0, i32 1
  %t5 = call %"compiler/scope:Placement" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2fscope_3aPlacement(ptr %v0, ptr %t3)
  store %"compiler/scope:Placement" %t5, ptr %l3
  br label %bb1
bb1:
  %t6 = load %"compiler/scope:Placement", ptr %l3
  %t7 = getelementptr %"std/prelude/map:MapEntry.5d90ea23f235d8870da3668e82c28edd", ptr %l1, i32 0, i32 1
  store %"compiler/scope:Placement" %t6, ptr %t7
  %t8 = load %"std/prelude/map:MapEntry.5d90ea23f235d8870da3668e82c28edd", ptr %l1
  store %"std/prelude/map:MapEntry.5d90ea23f235d8870da3668e82c28edd" %t8, ptr %rv
  br label %ret
ret:
  %rr = load %"std/prelude/map:MapEntry.5d90ea23f235d8870da3668e82c28edd", ptr %rv
  ret %"std/prelude/map:MapEntry.5d90ea23f235d8870da3668e82c28edd" %rr
}

define linkonce_odr i1 @olang_2emir_2eHelperKind_2eEqual_2eI64(ptr %a0, ptr %a1) #0 {
entry:
  %rv = alloca i1
  br label %start
start:
  br label %bb0
bb0:
  %t2 = load i64, ptr %a0, !tbaa !24
  %t4 = load i64, ptr %a1, !tbaa !24
  %t7 = icmp eq i64 %t2, %t4
  store i1 %t7, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define linkonce_odr i1 @olang_2emir_2eHelperKind_2eEqual_2eBool(ptr %a0, ptr %a1) #0 {
entry:
  %rv = alloca i1
  br label %start
start:
  br label %bb0
bb0:
  %t2 = load i1, ptr %a0, !tbaa !21
  %t4 = load i1, ptr %a1, !tbaa !21
  %t7 = icmp eq i1 %t2, %t4
  store i1 %t7, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define linkonce_odr i1 @olang_2emir_2eHelperKind_2eEqual_2ecompiler_2fscope_3averAtom(ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i1
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store i1 true, ptr %l2, !tbaa !21
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = getelementptr %"compiler/scope:verAtom", ptr %t1, i32 0, i32 0
  %t3 = load i64, ptr %t2, !tbaa !24
  %t4 = load ptr, ptr %l1, !tbaa !29
  %t5 = getelementptr %"compiler/scope:verAtom", ptr %t4, i32 0, i32 0
  %t6 = load i64, ptr %t5, !tbaa !24
  %t9 = icmp eq i64 %t3, %t6
  br i1 %t9, label %bb2, label %bb1
bb1:
  store i1 false, ptr %l2, !tbaa !21
  br label %bb10
bb2:
  %t11 = load ptr, ptr %l0, !tbaa !29
  %t12 = getelementptr %"compiler/scope:verAtom", ptr %t11, i32 0, i32 1
  %t13 = load i64, ptr %t12, !tbaa !24
  %t14 = load ptr, ptr %l1, !tbaa !29
  %t15 = getelementptr %"compiler/scope:verAtom", ptr %t14, i32 0, i32 1
  %t16 = load i64, ptr %t15, !tbaa !24
  %t19 = icmp eq i64 %t13, %t16
  br i1 %t19, label %bb3, label %bb1
bb3:
  %t21 = load ptr, ptr %l0, !tbaa !29
  %t22 = getelementptr %"compiler/scope:verAtom", ptr %t21, i32 0, i32 2
  %t23 = load i64, ptr %t22, !tbaa !24
  %t24 = load ptr, ptr %l1, !tbaa !29
  %t25 = getelementptr %"compiler/scope:verAtom", ptr %t24, i32 0, i32 2
  %t26 = load i64, ptr %t25, !tbaa !24
  %t29 = icmp eq i64 %t23, %t26
  br i1 %t29, label %bb4, label %bb1
bb4:
  %t31 = load ptr, ptr %l0, !tbaa !29
  %t32 = getelementptr %"compiler/scope:verAtom", ptr %t31, i32 0, i32 3
  %t33 = load i64, ptr %t32, !tbaa !24
  %t34 = load ptr, ptr %l1, !tbaa !29
  %t35 = getelementptr %"compiler/scope:verAtom", ptr %t34, i32 0, i32 3
  %t36 = load i64, ptr %t35, !tbaa !24
  %t39 = icmp eq i64 %t33, %t36
  br i1 %t39, label %bb5, label %bb1
bb5:
  %t41 = load ptr, ptr %l0, !tbaa !29
  %t42 = getelementptr %"compiler/scope:verAtom", ptr %t41, i32 0, i32 4
  %t43 = load i64, ptr %t42, !tbaa !24
  %t44 = load ptr, ptr %l1, !tbaa !29
  %t45 = getelementptr %"compiler/scope:verAtom", ptr %t44, i32 0, i32 4
  %t46 = load i64, ptr %t45, !tbaa !24
  %t49 = icmp eq i64 %t43, %t46
  br i1 %t49, label %bb6, label %bb1
bb6:
  %t51 = load ptr, ptr %l0, !tbaa !29
  %t52 = getelementptr %"compiler/scope:verAtom", ptr %t51, i32 0, i32 5
  %t53 = load i64, ptr %t52, !tbaa !24
  %t54 = load ptr, ptr %l1, !tbaa !29
  %t55 = getelementptr %"compiler/scope:verAtom", ptr %t54, i32 0, i32 5
  %t56 = load i64, ptr %t55, !tbaa !24
  %t59 = icmp eq i64 %t53, %t56
  br i1 %t59, label %bb7, label %bb1
bb7:
  %t61 = load ptr, ptr %l0, !tbaa !29
  %t62 = getelementptr %"compiler/scope:verAtom", ptr %t61, i32 0, i32 6
  %t63 = load i1, ptr %t62, !tbaa !21
  %t64 = load ptr, ptr %l1, !tbaa !29
  %t65 = getelementptr %"compiler/scope:verAtom", ptr %t64, i32 0, i32 6
  %t66 = load i1, ptr %t65, !tbaa !21
  %t69 = icmp eq i1 %t63, %t66
  br i1 %t69, label %bb8, label %bb1
bb8:
  %t71 = load ptr, ptr %l0, !tbaa !29
  %t72 = getelementptr %"compiler/scope:verAtom", ptr %t71, i32 0, i32 7
  %t73 = load i64, ptr %t72, !tbaa !24
  %t74 = load ptr, ptr %l1, !tbaa !29
  %t75 = getelementptr %"compiler/scope:verAtom", ptr %t74, i32 0, i32 7
  %t76 = load i64, ptr %t75, !tbaa !24
  %t79 = icmp eq i64 %t73, %t76
  br i1 %t79, label %bb9, label %bb1
bb9:
  br label %bb10
bb10:
  %t81 = load i1, ptr %l2, !tbaa !21
  store i1 %t81, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define linkonce_odr i1 @olang_2emir_2eHelperKind_2eEqual_2eArray_3ccompiler_2ftyped_3aExpr_26_3e_26(ptr %a0, ptr %a1) #0 {
entry:
  %l6 = alloca i1
  %rv = alloca i1
  br label %start
start:
  br label %bb0
bb0:
  %t2 = load { i64, ptr }, ptr %a0, !tbaa !27
  %t4 = load { i64, ptr }, ptr %a1, !tbaa !27
  %t9 = call i1 @olang_2emir_2eHelperKind_2eEqual_2eArray_3ccompiler_2ftyped_3aExpr_26_3e({ i64, ptr } %t2, { i64, ptr } %t4)
  store i1 %t9, ptr %l6
  br label %bb1
bb1:
  %t10 = load i1, ptr %l6, !tbaa !21
  store i1 %t10, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define linkonce_odr void @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2ftyped_3aPlan(ptr %out, ptr %v0, ptr %a0) #0 {
entry:
  %l1 = alloca %"compiler/typed:Plan"
  %l3 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l5 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l7 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l9 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l11 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l13 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l15 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l17 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l19 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  br label %start
start:
  br label %bb0
bb0:
  call void @llvm.memmove.p0.p0.i64(ptr %l1, ptr %a0, i64 536, i1 false)
  %t2 = getelementptr %"compiler/typed:Plan", ptr %l1, i32 0, i32 10
  %t4 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cI64_3e(ptr %v0, ptr %t2)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t4, ptr %l3
  br label %bb1
bb1:
  %t5 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l3
  %t6 = getelementptr %"compiler/typed:Plan", ptr %l1, i32 0, i32 10
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t5, ptr %t6
  %t7 = getelementptr %"compiler/typed:Plan", ptr %l1, i32 0, i32 14
  %t9 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feffects_3alink_3e(ptr %v0, ptr %t7)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t9, ptr %l5
  br label %bb2
bb2:
  %t10 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l5
  %t11 = getelementptr %"compiler/typed:Plan", ptr %l1, i32 0, i32 14
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t10, ptr %t11
  %t12 = getelementptr %"compiler/typed:Plan", ptr %l1, i32 0, i32 15
  %t14 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cI64_3e(ptr %v0, ptr %t12)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t14, ptr %l7
  br label %bb3
bb3:
  %t15 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l7
  %t16 = getelementptr %"compiler/typed:Plan", ptr %l1, i32 0, i32 15
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t15, ptr %t16
  %t17 = getelementptr %"compiler/typed:Plan", ptr %l1, i32 0, i32 16
  %t19 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cI64_3e(ptr %v0, ptr %t17)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t19, ptr %l9
  br label %bb4
bb4:
  %t20 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l9
  %t21 = getelementptr %"compiler/typed:Plan", ptr %l1, i32 0, i32 16
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t20, ptr %t21
  %t22 = getelementptr %"compiler/typed:Plan", ptr %l1, i32 0, i32 17
  %t24 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2fv_H37dabf8663d733dfb3cf8a6ba127be58(ptr %v0, ptr %t22)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t24, ptr %l11
  br label %bb5
bb5:
  %t25 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l11
  %t26 = getelementptr %"compiler/typed:Plan", ptr %l1, i32 0, i32 17
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t25, ptr %t26
  %t27 = getelementptr %"compiler/typed:Plan", ptr %l1, i32 0, i32 18
  %t29 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cI64_3e(ptr %v0, ptr %t27)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t29, ptr %l13
  br label %bb6
bb6:
  %t30 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l13
  %t31 = getelementptr %"compiler/typed:Plan", ptr %l1, i32 0, i32 18
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t30, ptr %t31
  %t32 = getelementptr %"compiler/typed:Plan", ptr %l1, i32 0, i32 19
  %t34 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2fvec_3aVec__Hdbcf217951d8a5e6be477b9bbf1b3074(ptr %v0, ptr %t32)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t34, ptr %l15
  br label %bb7
bb7:
  %t35 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l15
  %t36 = getelementptr %"compiler/typed:Plan", ptr %l1, i32 0, i32 19
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t35, ptr %t36
  %t37 = getelementptr %"compiler/typed:Plan", ptr %l1, i32 0, i32 20
  %t39 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cI64_3e(ptr %v0, ptr %t37)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t39, ptr %l17
  br label %bb8
bb8:
  %t40 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l17
  %t41 = getelementptr %"compiler/typed:Plan", ptr %l1, i32 0, i32 20
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t40, ptr %t41
  %t42 = getelementptr %"compiler/typed:Plan", ptr %l1, i32 0, i32 21
  %t44 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feffects_3alink_3e(ptr %v0, ptr %t42)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t44, ptr %l19
  br label %bb9
bb9:
  %t45 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l19
  %t46 = getelementptr %"compiler/typed:Plan", ptr %l1, i32 0, i32 21
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t45, ptr %t46
  call void @llvm.memmove.p0.p0.i64(ptr %out, ptr %l1, i64 536, i1 false)
  br label %ret
ret:
  ret void
}

define linkonce_odr i1 @olang_2emir_2eHelperKind_2eEqual_2eArray_3ccompiler_2ftyped_3aScope_3e_26(ptr %a0, ptr %a1) #0 {
entry:
  %l6 = alloca i1
  %rv = alloca i1
  br label %start
start:
  br label %bb0
bb0:
  %t2 = load { i64, ptr }, ptr %a0, !tbaa !27
  %t4 = load { i64, ptr }, ptr %a1, !tbaa !27
  %t9 = call i1 @olang_2emir_2eHelperKind_2eEqual_2eArray_3ccompiler_2ftyped_3aScope_3e({ i64, ptr } %t2, { i64, ptr } %t4)
  store i1 %t9, ptr %l6
  br label %bb1
bb1:
  %t10 = load i1, ptr %l6, !tbaa !21
  store i1 %t10, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define linkonce_odr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2fscope_3afnRecs_3e(ptr %v0, ptr %a0) #0 {
entry:
  %l1 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l3 = alloca { i64, ptr }
  %l4 = alloca { i64, ptr }
  %l5 = alloca i64
  %l6 = alloca { i64, ptr }
  %l7 = alloca { i64, ptr }
  %l8 = alloca i64
  %l9 = alloca { i64, ptr }
  %rv = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %a0
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t2, ptr %l1
  %t3 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l1, i32 0, i32 0
  %t4 = load { i64, ptr }, ptr %t3, !tbaa !27
  %t6 = call { i64, ptr } @olang_2emir_2eHelperKind_2eCopy_2eArray_3cstd_2fprelude_2fmap_3aMapEntry_3cI64_2c_20compiler_2fscope_3afnRecs_3e_3e(ptr %v0, { i64, ptr } %t4)
  store { i64, ptr } %t6, ptr %l3
  br label %bb1
bb1:
  %t7 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t8 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l1, i32 0, i32 0
  store { i64, ptr } %t7, ptr %t8, !tbaa !27
  %t9 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l1, i32 0, i32 1
  %t10 = load { i64, ptr }, ptr %t9, !tbaa !27
  store { i64, ptr } %t10, ptr %l4, !tbaa !27
  %t11 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t12 = extractvalue { i64, ptr } %t11, 0
  store i64 %t12, ptr %l5, !tbaa !24
  %t13 = load i64, ptr %l5, !tbaa !24
  %t14 = mul i64 %t13, 8
  %t15 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t14)
  %t16 = insertvalue { i64, ptr } undef, i64 %t13, 0
  %t17 = insertvalue { i64, ptr } %t16, ptr %t15, 1
  store { i64, ptr } %t17, ptr %l6, !tbaa !27
  %t18 = getelementptr { i64, ptr }, ptr %l6, i32 0, i32 1
  %t19 = load ptr, ptr %t18, !tbaa !27
  %t20 = getelementptr { i64, ptr }, ptr %l4, i32 0, i32 1
  %t21 = load ptr, ptr %t20, !tbaa !27
  %t22 = load i64, ptr %l5, !tbaa !24
  %t23 = mul i64 %t22, 8
  call void @llvm.memmove.p0.p0.i64(ptr %t19, ptr %t21, i64 %t23, i1 false)
  %t24 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t25 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l1, i32 0, i32 1
  store { i64, ptr } %t24, ptr %t25, !tbaa !27
  %t26 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l1, i32 0, i32 2
  %t27 = load { i64, ptr }, ptr %t26, !tbaa !27
  store { i64, ptr } %t27, ptr %l7, !tbaa !27
  %t28 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t29 = extractvalue { i64, ptr } %t28, 0
  store i64 %t29, ptr %l8, !tbaa !24
  %t30 = load i64, ptr %l8, !tbaa !24
  %t31 = mul i64 %t30, 8
  %t32 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t31)
  %t33 = insertvalue { i64, ptr } undef, i64 %t30, 0
  %t34 = insertvalue { i64, ptr } %t33, ptr %t32, 1
  store { i64, ptr } %t34, ptr %l9, !tbaa !27
  %t35 = getelementptr { i64, ptr }, ptr %l9, i32 0, i32 1
  %t36 = load ptr, ptr %t35, !tbaa !27
  %t37 = getelementptr { i64, ptr }, ptr %l7, i32 0, i32 1
  %t38 = load ptr, ptr %t37, !tbaa !27
  %t39 = load i64, ptr %l8, !tbaa !24
  %t40 = mul i64 %t39, 8
  call void @llvm.memmove.p0.p0.i64(ptr %t36, ptr %t38, i64 %t40, i1 false)
  %t41 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t42 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l1, i32 0, i32 2
  store { i64, ptr } %t41, ptr %t42, !tbaa !27
  %t43 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l1
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t43, ptr %rv
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
define linkonce_odr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3afnRec_3e(ptr %v0, ptr %a0) #0 {
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
  %t6 = call { i64, ptr } @olang_2emir_2eHelperKind_2eCopy_2eArray_3ccompiler_2fscope_3afnRec_3e(ptr %v0, { i64, ptr } %t4)
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

define linkonce_odr i1 @olang_2emir_2eHelperKind_2eEqual_2eArray_3ccompiler_2ftyped_3aExpr_26_3e({ i64, ptr } %a0, { i64, ptr } %a1) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l1 = alloca { i64, ptr }
  %l2 = alloca i1
  %l3 = alloca i64
  %l6 = alloca i64
  %rv = alloca i1
  store { i64, ptr } %a0, ptr %l0
  store { i64, ptr } %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store i1 true, ptr %l2, !tbaa !21
  %t1 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t2 = extractvalue { i64, ptr } %t1, 0
  store i64 %t2, ptr %l3, !tbaa !24
  %t3 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t4 = extractvalue { i64, ptr } %t3, 0
  %t5 = load i64, ptr %l3, !tbaa !24
  %t7 = icmp eq i64 %t5, %t4
  br i1 %t7, label %bb2, label %bb1
bb1:
  store i1 false, ptr %l2, !tbaa !21
  br label %bb7
bb2:
  store i64 0, ptr %l6, !tbaa !24
  br label %bb3
bb3:
  %t9 = load i64, ptr %l6, !tbaa !24
  %t10 = load i64, ptr %l3, !tbaa !24
  %t11 = icmp slt i64 %t9, %t10
  br i1 %t11, label %bb4, label %bb5
bb4:
  %t13 = load i64, ptr %l6, !tbaa !24
  %t14 = getelementptr { i64, ptr }, ptr %l0, i32 0, i32 1
  %t15 = load ptr, ptr %t14, !tbaa !27
  %t16 = getelementptr ptr, ptr %t15, i64 %t13
  %t17 = load ptr, ptr %t16, !tbaa !39
  %t18 = load i64, ptr %l6, !tbaa !24
  %t19 = getelementptr { i64, ptr }, ptr %l1, i32 0, i32 1
  %t20 = load ptr, ptr %t19, !tbaa !27
  %t21 = getelementptr ptr, ptr %t20, i64 %t18
  %t22 = load ptr, ptr %t21, !tbaa !39
  %t25 = icmp eq ptr %t17, %t22
  br i1 %t25, label %bb6, label %bb1
bb5:
  br label %bb7
bb6:
  %t27 = load i64, ptr %l6, !tbaa !24
  %t28 = add i64 %t27, 1
  store i64 %t28, ptr %l6, !tbaa !24
  br label %bb3
bb7:
  %t29 = load i1, ptr %l2, !tbaa !21
  store i1 %t29, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define linkonce_odr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2fv_H37dabf8663d733dfb3cf8a6ba127be58(ptr %v0, ptr %a0) #0 {
entry:
  %l1 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l3 = alloca { i64, ptr }
  %l4 = alloca { i64, ptr }
  %l5 = alloca i64
  %l6 = alloca { i64, ptr }
  %l7 = alloca { i64, ptr }
  %l8 = alloca i64
  %l9 = alloca { i64, ptr }
  %rv = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %a0
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t2, ptr %l1
  %t3 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l1, i32 0, i32 0
  %t4 = load { i64, ptr }, ptr %t3, !tbaa !27
  %t6 = call { i64, ptr } @olang_2emir_2eHelperKind_2eCopy_2eArray_3cstd_2fprelude_2fmap_3aMapEntry_3cI64_2c_20std__Hc31c075a081277beb11a6149e950d3c3(ptr %v0, { i64, ptr } %t4)
  store { i64, ptr } %t6, ptr %l3
  br label %bb1
bb1:
  %t7 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t8 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l1, i32 0, i32 0
  store { i64, ptr } %t7, ptr %t8, !tbaa !27
  %t9 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l1, i32 0, i32 1
  %t10 = load { i64, ptr }, ptr %t9, !tbaa !27
  store { i64, ptr } %t10, ptr %l4, !tbaa !27
  %t11 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t12 = extractvalue { i64, ptr } %t11, 0
  store i64 %t12, ptr %l5, !tbaa !24
  %t13 = load i64, ptr %l5, !tbaa !24
  %t14 = mul i64 %t13, 8
  %t15 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t14)
  %t16 = insertvalue { i64, ptr } undef, i64 %t13, 0
  %t17 = insertvalue { i64, ptr } %t16, ptr %t15, 1
  store { i64, ptr } %t17, ptr %l6, !tbaa !27
  %t18 = getelementptr { i64, ptr }, ptr %l6, i32 0, i32 1
  %t19 = load ptr, ptr %t18, !tbaa !27
  %t20 = getelementptr { i64, ptr }, ptr %l4, i32 0, i32 1
  %t21 = load ptr, ptr %t20, !tbaa !27
  %t22 = load i64, ptr %l5, !tbaa !24
  %t23 = mul i64 %t22, 8
  call void @llvm.memmove.p0.p0.i64(ptr %t19, ptr %t21, i64 %t23, i1 false)
  %t24 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t25 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l1, i32 0, i32 1
  store { i64, ptr } %t24, ptr %t25, !tbaa !27
  %t26 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l1, i32 0, i32 2
  %t27 = load { i64, ptr }, ptr %t26, !tbaa !27
  store { i64, ptr } %t27, ptr %l7, !tbaa !27
  %t28 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t29 = extractvalue { i64, ptr } %t28, 0
  store i64 %t29, ptr %l8, !tbaa !24
  %t30 = load i64, ptr %l8, !tbaa !24
  %t31 = mul i64 %t30, 8
  %t32 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t31)
  %t33 = insertvalue { i64, ptr } undef, i64 %t30, 0
  %t34 = insertvalue { i64, ptr } %t33, ptr %t32, 1
  store { i64, ptr } %t34, ptr %l9, !tbaa !27
  %t35 = getelementptr { i64, ptr }, ptr %l9, i32 0, i32 1
  %t36 = load ptr, ptr %t35, !tbaa !27
  %t37 = getelementptr { i64, ptr }, ptr %l7, i32 0, i32 1
  %t38 = load ptr, ptr %t37, !tbaa !27
  %t39 = load i64, ptr %l8, !tbaa !24
  %t40 = mul i64 %t39, 8
  call void @llvm.memmove.p0.p0.i64(ptr %t36, ptr %t38, i64 %t40, i1 false)
  %t41 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t42 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l1, i32 0, i32 2
  store { i64, ptr } %t41, ptr %t42, !tbaa !27
  %t43 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l1
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t43, ptr %rv
  br label %ret
ret:
  %rr = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %rv
  ret %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %rr
}

define linkonce_odr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2fvec_3aVec__Hdbcf217951d8a5e6be477b9bbf1b3074(ptr %v0, ptr %a0) #0 {
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
  %t6 = call { i64, ptr } @olang_2emir_2eHelperKind_2eCopy_2eArray_3cstd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aDerivedArg_3e_3e(ptr %v0, { i64, ptr } %t4)
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

define linkonce_odr i1 @olang_2emir_2eHelperKind_2eEqual_2eArray_3ccompiler_2ftyped_3aScope_3e({ i64, ptr } %a0, { i64, ptr } %a1) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l1 = alloca { i64, ptr }
  %l2 = alloca i1
  %l3 = alloca i64
  %l6 = alloca i64
  %l10 = alloca i1
  %rv = alloca i1
  store { i64, ptr } %a0, ptr %l0
  store { i64, ptr } %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store i1 true, ptr %l2, !tbaa !21
  %t1 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t2 = extractvalue { i64, ptr } %t1, 0
  store i64 %t2, ptr %l3, !tbaa !24
  %t3 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t4 = extractvalue { i64, ptr } %t3, 0
  %t5 = load i64, ptr %l3, !tbaa !24
  %t7 = icmp eq i64 %t5, %t4
  br i1 %t7, label %bb2, label %bb1
bb1:
  store i1 false, ptr %l2, !tbaa !21
  br label %bb8
bb2:
  store i64 0, ptr %l6, !tbaa !24
  br label %bb3
bb3:
  %t9 = load i64, ptr %l6, !tbaa !24
  %t10 = load i64, ptr %l3, !tbaa !24
  %t11 = icmp slt i64 %t9, %t10
  br i1 %t11, label %bb4, label %bb5
bb4:
  %t13 = load i64, ptr %l6, !tbaa !24
  %t14 = getelementptr { i64, ptr }, ptr %l0, i32 0, i32 1
  %t15 = load ptr, ptr %t14, !tbaa !27
  %t16 = getelementptr { i64, [2 x i64] }, ptr %t15, i64 %t13
  %t17 = load i64, ptr %l6, !tbaa !24
  %t18 = getelementptr { i64, ptr }, ptr %l1, i32 0, i32 1
  %t19 = load ptr, ptr %t18, !tbaa !27
  %t20 = getelementptr { i64, [2 x i64] }, ptr %t19, i64 %t17
  %t23 = call i1 @olang_2emir_2eHelperKind_2eEqual_2ecompiler_2ftyped_3aScope(ptr %t16, ptr %t20)
  store i1 %t23, ptr %l10
  br label %bb6
bb5:
  br label %bb8
bb6:
  %t24 = load i1, ptr %l10, !tbaa !21
  br i1 %t24, label %bb7, label %bb1
bb7:
  %t25 = load i64, ptr %l6, !tbaa !24
  %t26 = add i64 %t25, 1
  store i64 %t26, ptr %l6, !tbaa !24
  br label %bb3
bb8:
  %t27 = load i1, ptr %l2, !tbaa !21
  store i1 %t27, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define linkonce_odr { i64, ptr } @olang_2emir_2eHelperKind_2eCopy_2eArray_3cstd_2fprelude_2fmap_3aMapEntry_3cI64_2c_20compiler_2fscope_3afnRecs_3e_3e(ptr %v0, { i64, ptr } %a0) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l1 = alloca i64
  %l2 = alloca { i64, ptr }
  %l3 = alloca i64
  %l6 = alloca %"std/prelude/map:MapEntry.8067410eb7799f1c31299714f5ba653d"
  %rv = alloca { i64, ptr }
  store { i64, ptr } %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t2 = extractvalue { i64, ptr } %t1, 0
  store i64 %t2, ptr %l1, !tbaa !24
  %t3 = load i64, ptr %l1, !tbaa !24
  %t4 = mul i64 %t3, 112
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
  %t15 = getelementptr %"std/prelude/map:MapEntry.8067410eb7799f1c31299714f5ba653d", ptr %t14, i64 %t12
  %t17 = call %"std/prelude/map:MapEntry.8067410eb7799f1c31299714f5ba653d" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMapEntry_3cI64_2c_20compiler_2fscope_3afnRecs_3e(ptr %v0, ptr %t15)
  store %"std/prelude/map:MapEntry.8067410eb7799f1c31299714f5ba653d" %t17, ptr %l6
  br label %bb4
bb3:
  %t18 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t18, ptr %rv
  br label %ret
bb4:
  %t19 = load %"std/prelude/map:MapEntry.8067410eb7799f1c31299714f5ba653d", ptr %l6
  %t20 = load i64, ptr %l3, !tbaa !24
  %t21 = getelementptr { i64, ptr }, ptr %l2, i32 0, i32 1
  %t22 = load ptr, ptr %t21, !tbaa !27
  %t23 = getelementptr %"std/prelude/map:MapEntry.8067410eb7799f1c31299714f5ba653d", ptr %t22, i64 %t20
  store %"std/prelude/map:MapEntry.8067410eb7799f1c31299714f5ba653d" %t19, ptr %t23
  %t24 = load i64, ptr %l3, !tbaa !24
  %t25 = add i64 %t24, 1
  store i64 %t25, ptr %l3, !tbaa !24
  br label %bb1
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
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
declare noalias ptr @__olang_scope_alloc_slow(ptr, i64, i64) noinline
define linkonce_odr { i64, ptr } @olang_2emir_2eHelperKind_2eCopy_2eArray_3ccompiler_2fscope_3afnRec_3e(ptr %v0, { i64, ptr } %a0) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l1 = alloca i64
  %l2 = alloca { i64, ptr }
  %l3 = alloca i64
  %l6 = alloca %"compiler/scope:fnRec"
  %rv = alloca { i64, ptr }
  store { i64, ptr } %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t2 = extractvalue { i64, ptr } %t1, 0
  store i64 %t2, ptr %l1, !tbaa !24
  %t3 = load i64, ptr %l1, !tbaa !24
  %t4 = mul i64 %t3, 48
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
  %t15 = getelementptr %"compiler/scope:fnRec", ptr %t14, i64 %t12
  %t17 = call %"compiler/scope:fnRec" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2fscope_3afnRec(ptr %v0, ptr %t15)
  store %"compiler/scope:fnRec" %t17, ptr %l6
  br label %bb4
bb3:
  %t18 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t18, ptr %rv
  br label %ret
bb4:
  %t19 = load %"compiler/scope:fnRec", ptr %l6
  %t20 = load i64, ptr %l3, !tbaa !24
  %t21 = getelementptr { i64, ptr }, ptr %l2, i32 0, i32 1
  %t22 = load ptr, ptr %t21, !tbaa !27
  %t23 = getelementptr %"compiler/scope:fnRec", ptr %t22, i64 %t20
  store %"compiler/scope:fnRec" %t19, ptr %t23
  %t24 = load i64, ptr %l3, !tbaa !24
  %t25 = add i64 %t24, 1
  store i64 %t25, ptr %l3, !tbaa !24
  br label %bb1
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define linkonce_odr { i64, ptr } @olang_2emir_2eHelperKind_2eCopy_2eArray_3cstd_2fprelude_2fmap_3aMapEntry_3cI64_2c_20std__Hc31c075a081277beb11a6149e950d3c3(ptr %v0, { i64, ptr } %a0) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l1 = alloca i64
  %l2 = alloca { i64, ptr }
  %l3 = alloca i64
  %l6 = alloca %"std/prelude/map:MapEntry.f17f3f0202174eb6591f595766c15613"
  %rv = alloca { i64, ptr }
  store { i64, ptr } %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t2 = extractvalue { i64, ptr } %t1, 0
  store i64 %t2, ptr %l1, !tbaa !24
  %t3 = load i64, ptr %l1, !tbaa !24
  %t4 = mul i64 %t3, 40
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
  %t15 = getelementptr %"std/prelude/map:MapEntry.f17f3f0202174eb6591f595766c15613", ptr %t14, i64 %t12
  %t17 = call %"std/prelude/map:MapEntry.f17f3f0202174eb6591f595766c15613" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMapEntry_3cI64_2c_20std_2fprelud_Hbe8b18fc9dfd8a0dd431c26ba01d8572(ptr %v0, ptr %t15)
  store %"std/prelude/map:MapEntry.f17f3f0202174eb6591f595766c15613" %t17, ptr %l6
  br label %bb4
bb3:
  %t18 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t18, ptr %rv
  br label %ret
bb4:
  %t19 = load %"std/prelude/map:MapEntry.f17f3f0202174eb6591f595766c15613", ptr %l6
  %t20 = load i64, ptr %l3, !tbaa !24
  %t21 = getelementptr { i64, ptr }, ptr %l2, i32 0, i32 1
  %t22 = load ptr, ptr %t21, !tbaa !27
  %t23 = getelementptr %"std/prelude/map:MapEntry.f17f3f0202174eb6591f595766c15613", ptr %t22, i64 %t20
  store %"std/prelude/map:MapEntry.f17f3f0202174eb6591f595766c15613" %t19, ptr %t23
  %t24 = load i64, ptr %l3, !tbaa !24
  %t25 = add i64 %t24, 1
  store i64 %t25, ptr %l3, !tbaa !24
  br label %bb1
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define linkonce_odr { i64, ptr } @olang_2emir_2eHelperKind_2eCopy_2eArray_3cstd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aDerivedArg_3e_3e(ptr %v0, { i64, ptr } %a0) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l1 = alloca i64
  %l2 = alloca { i64, ptr }
  %l3 = alloca i64
  %l6 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %rv = alloca { i64, ptr }
  store { i64, ptr } %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t2 = extractvalue { i64, ptr } %t1, 0
  store i64 %t2, ptr %l1, !tbaa !24
  %t3 = load i64, ptr %l1, !tbaa !24
  %t4 = mul i64 %t3, 32
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
  %t15 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t14, i64 %t12
  %t17 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feffects_3agiven_3e(ptr %v0, ptr %t15)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t17, ptr %l6
  br label %bb4
bb3:
  %t18 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t18, ptr %rv
  br label %ret
bb4:
  %t19 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l6
  %t20 = load i64, ptr %l3, !tbaa !24
  %t21 = getelementptr { i64, ptr }, ptr %l2, i32 0, i32 1
  %t22 = load ptr, ptr %t21, !tbaa !27
  %t23 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t22, i64 %t20
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t19, ptr %t23
  %t24 = load i64, ptr %l3, !tbaa !24
  %t25 = add i64 %t24, 1
  store i64 %t25, ptr %l3, !tbaa !24
  br label %bb1
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define linkonce_odr i1 @olang_2emir_2eHelperKind_2eEqual_2ecompiler_2ftyped_3aScope(ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i1
  %l3 = alloca i64
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store i1 true, ptr %l2, !tbaa !21
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load i64, ptr %t1, !range !{i64 0, i64 9}
  store i64 %t2, ptr %l3, !tbaa !24
  %t3 = load ptr, ptr %l1, !tbaa !29
  %t4 = load i64, ptr %t3, !range !{i64 0, i64 9}
  %t5 = load i64, ptr %l3, !tbaa !24
  %t7 = icmp eq i64 %t5, %t4
  br i1 %t7, label %bb2, label %bb1
bb1:
  store i1 false, ptr %l2, !tbaa !21
  br label %bb15
bb2:
  %t9 = load i64, ptr %l3, !tbaa !24
  switch i64 %t9, label %bb3 [ i64 1, label %bb4 i64 2, label %bb5 i64 4, label %bb6 i64 7, label %bb7 i64 8, label %bb8 ]
bb3:
  br label %bb15
bb4:
  %t10 = load ptr, ptr %l0, !tbaa !29
  %t11 = getelementptr { i64, [2 x i64] }, ptr %t10, i32 0, i32 1
  %t12 = getelementptr { i32 }, ptr %t11, i32 0, i32 0
  %t13 = load i32, ptr %t12
  %t14 = load ptr, ptr %l1, !tbaa !29
  %t15 = getelementptr { i64, [2 x i64] }, ptr %t14, i32 0, i32 1
  %t16 = getelementptr { i32 }, ptr %t15, i32 0, i32 0
  %t17 = load i32, ptr %t16
  %t20 = icmp eq i32 %t13, %t17
  br i1 %t20, label %bb9, label %bb1
bb5:
  %t22 = load ptr, ptr %l0, !tbaa !29
  %t23 = getelementptr { i64, [2 x i64] }, ptr %t22, i32 0, i32 1
  %t24 = getelementptr { i64 }, ptr %t23, i32 0, i32 0
  %t25 = load i64, ptr %t24
  %t26 = load ptr, ptr %l1, !tbaa !29
  %t27 = getelementptr { i64, [2 x i64] }, ptr %t26, i32 0, i32 1
  %t28 = getelementptr { i64 }, ptr %t27, i32 0, i32 0
  %t29 = load i64, ptr %t28
  %t32 = icmp eq i64 %t25, %t29
  br i1 %t32, label %bb10, label %bb1
bb6:
  %t34 = load ptr, ptr %l0, !tbaa !29
  %t35 = getelementptr { i64, [2 x i64] }, ptr %t34, i32 0, i32 1
  %t36 = getelementptr { i32 }, ptr %t35, i32 0, i32 0
  %t37 = load i32, ptr %t36
  %t38 = load ptr, ptr %l1, !tbaa !29
  %t39 = getelementptr { i64, [2 x i64] }, ptr %t38, i32 0, i32 1
  %t40 = getelementptr { i32 }, ptr %t39, i32 0, i32 0
  %t41 = load i32, ptr %t40
  %t44 = icmp eq i32 %t37, %t41
  br i1 %t44, label %bb11, label %bb1
bb7:
  %t46 = load ptr, ptr %l0, !tbaa !29
  %t47 = getelementptr { i64, [2 x i64] }, ptr %t46, i32 0, i32 1
  %t48 = getelementptr { i64 }, ptr %t47, i32 0, i32 0
  %t49 = load i64, ptr %t48
  %t50 = load ptr, ptr %l1, !tbaa !29
  %t51 = getelementptr { i64, [2 x i64] }, ptr %t50, i32 0, i32 1
  %t52 = getelementptr { i64 }, ptr %t51, i32 0, i32 0
  %t53 = load i64, ptr %t52
  %t56 = icmp eq i64 %t49, %t53
  br i1 %t56, label %bb12, label %bb1
bb8:
  %t58 = load ptr, ptr %l0, !tbaa !29
  %t59 = getelementptr { i64, [2 x i64] }, ptr %t58, i32 0, i32 1
  %t60 = getelementptr { i64, i64 }, ptr %t59, i32 0, i32 0
  %t61 = load i64, ptr %t60
  %t62 = load ptr, ptr %l1, !tbaa !29
  %t63 = getelementptr { i64, [2 x i64] }, ptr %t62, i32 0, i32 1
  %t64 = getelementptr { i64, i64 }, ptr %t63, i32 0, i32 0
  %t65 = load i64, ptr %t64
  %t68 = icmp eq i64 %t61, %t65
  br i1 %t68, label %bb13, label %bb1
bb9:
  br label %bb3
bb10:
  br label %bb3
bb11:
  br label %bb3
bb12:
  br label %bb3
bb13:
  %t70 = load ptr, ptr %l0, !tbaa !29
  %t71 = getelementptr { i64, [2 x i64] }, ptr %t70, i32 0, i32 1
  %t72 = getelementptr { i64, i64 }, ptr %t71, i32 0, i32 1
  %t73 = load i64, ptr %t72
  %t74 = load ptr, ptr %l1, !tbaa !29
  %t75 = getelementptr { i64, [2 x i64] }, ptr %t74, i32 0, i32 1
  %t76 = getelementptr { i64, i64 }, ptr %t75, i32 0, i32 1
  %t77 = load i64, ptr %t76
  %t80 = icmp eq i64 %t73, %t77
  br i1 %t80, label %bb14, label %bb1
bb14:
  br label %bb3
bb15:
  %t82 = load i1, ptr %l2, !tbaa !21
  store i1 %t82, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define linkonce_odr %"std/prelude/map:MapEntry.8067410eb7799f1c31299714f5ba653d" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMapEntry_3cI64_2c_20compiler_2fscope_3afnRecs_3e(ptr %v0, ptr %a0) #0 {
entry:
  %l1 = alloca %"std/prelude/map:MapEntry.8067410eb7799f1c31299714f5ba653d"
  %l3 = alloca %"compiler/scope:fnRecs"
  %rv = alloca %"std/prelude/map:MapEntry.8067410eb7799f1c31299714f5ba653d"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = load %"std/prelude/map:MapEntry.8067410eb7799f1c31299714f5ba653d", ptr %a0
  store %"std/prelude/map:MapEntry.8067410eb7799f1c31299714f5ba653d" %t2, ptr %l1
  %t3 = getelementptr %"std/prelude/map:MapEntry.8067410eb7799f1c31299714f5ba653d", ptr %l1, i32 0, i32 1
  %t5 = call %"compiler/scope:fnRecs" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2fscope_3afnRecs(ptr %v0, ptr %t3)
  store %"compiler/scope:fnRecs" %t5, ptr %l3
  br label %bb1
bb1:
  %t6 = load %"compiler/scope:fnRecs", ptr %l3
  %t7 = getelementptr %"std/prelude/map:MapEntry.8067410eb7799f1c31299714f5ba653d", ptr %l1, i32 0, i32 1
  store %"compiler/scope:fnRecs" %t6, ptr %t7
  %t8 = load %"std/prelude/map:MapEntry.8067410eb7799f1c31299714f5ba653d", ptr %l1
  store %"std/prelude/map:MapEntry.8067410eb7799f1c31299714f5ba653d" %t8, ptr %rv
  br label %ret
ret:
  %rr = load %"std/prelude/map:MapEntry.8067410eb7799f1c31299714f5ba653d", ptr %rv
  ret %"std/prelude/map:MapEntry.8067410eb7799f1c31299714f5ba653d" %rr
}

declare ptr @__olang_scope_mine_slow(ptr) noinline
define linkonce_odr %"compiler/scope:fnRec" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2fscope_3afnRec(ptr %v0, ptr %a0) #0 {
entry:
  %l1 = alloca %"compiler/scope:fnRec"
  %l3 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %rv = alloca %"compiler/scope:fnRec"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = load %"compiler/scope:fnRec", ptr %a0
  store %"compiler/scope:fnRec" %t2, ptr %l1
  %t3 = getelementptr %"compiler/scope:fnRec", ptr %l1, i32 0, i32 1
  %t5 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feffects_3alink_3e(ptr %v0, ptr %t3)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t5, ptr %l3
  br label %bb1
bb1:
  %t6 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l3
  %t7 = getelementptr %"compiler/scope:fnRec", ptr %l1, i32 0, i32 1
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t6, ptr %t7
  %t8 = load %"compiler/scope:fnRec", ptr %l1
  store %"compiler/scope:fnRec" %t8, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/scope:fnRec", ptr %rv
  ret %"compiler/scope:fnRec" %rr
}

declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cU64_3e_2ector(ptr %v0, i64 %a0)
declare %"std/prelude/map:MapKeyIter.bf5835bb10600fe6a7fc1da14a6360d9" @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_Hd80cb4cbc6ceb8a13686fbc19b8451b4(ptr %v0, ptr %v1, ptr %a0)
declare { i32, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMapKeyIter_3cstd_2fpair_3aPair_3cI64_2c_20I6_H50b542c856ab641bdb3083563d5a1f0c(ptr %v0, ptr %a0)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_3e_H2474e1fc3c93452d7765e4ed18f29a03(ptr %v0, ptr %a0, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cU64_3e_2eLen_3cU64_3e(ptr %v0, ptr %a0)
declare %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_3e_H87a29777ccf22aa2985fa9d3c61f9cd3(ptr %v0, ptr %a0, i64 %a1)
declare i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H8cf0101d1da75ad9e65d10673bedc6a2(ptr %v0, ptr %a0, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %a1)
declare i64 @std_2fprelude_2fhash_2eI64_2eHash(i64 %a0)
@G_2estd_2fprelude_2farray_2esortRun = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\18\00\00\00\00\00\00\00" }>, align 8
declare void @std_2fprelude_2farray_2esortInsertion_3ccompiler_2fscope_3aPlacement_2c_20_3f_3e(ptr %v0, ptr %v1, { i64, ptr } %a0, i64 %a1, i64 %a2, ptr %a3c, ptr %a3e)
@G_2estd_2fprelude_2farray_2esortBlock = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\00\30\00\00\00\00\00\00" }>, align 8
@olang_loc_d722d9d356e51315_f6b57ef284a7b0b9 = external constant [0 x i8]
@olang_loc_f1b0736c8bbc73d8_d1c24a04e6320604 = external constant [0 x i8]
declare void @std_2fprelude_2farray_2esortMergeBuffered_3cI64_2c_20_3f_3e(ptr %v0, ptr %v1, { i64, ptr } %a0, ptr %a1c, ptr %a1e)
declare void @std_2fprelude_2farray_2esortMerge_3ccompiler_2fscope_3aPlacement_2c_20_3f_3e(ptr %v0, ptr %v1, { i64, ptr } %a0, i64 %a1, i64 %a2, i64 %a3, ptr %a4c, ptr %a4e)
declare i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_H068cfedf7407289d149ee3c6f4c8aa20(ptr %v0, ptr %a0, i64 %a1)
declare %"std/prelude/map:MapEntry.f17f3f0202174eb6591f595766c15613" @std_2fprelude_2fmap_3aMapEntry_3cI64_2c_20std_2fprelude_2fvec_3aVec_3cI64_3e_3e_2ector(ptr %v0, ptr %v1, i64 %a0, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %a1)
declare i64 @std_2fprelude_2fmap_2efreeLink(i64 %a0)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Array_3ccompiler_2ftyped_3aBl_H7ccb72b7985b2d862bf28711ea395672(ptr %v0, ptr %a0)
declare %"std/prelude/map:MapEntry.8d509622153b47f1a5f79c42c8367406" @std_2fprelude_2fmap_3aMapEntry_3cI64_2c_20Array_3ccompiler_2ftyped_3aBlockId_3e_3e_2ector(ptr %v0, i64 %a0, { i64, ptr } %a1)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Array_3ccompiler_2ftyped_3aBl_Hc5028bb32daef060d237a7608c857f1d(ptr %v0, ptr %a0)
@olang_loc_45577aa415fa5dbd_be5fb2d17f2af6c9 = external constant [0 x i8]
declare i64 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Array_3ccompiler_2ftyped_3aBl_He88cfdc4919e1dee4cfd0cdecebbca1d(ptr %v0, ptr %a0, i64 %a1)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Array_3ccompiler_2ftyped_3aCa_H67d798a1f57f3872a5b581cce531b2db(ptr %v0, ptr %v1, ptr %a0, i64 %a1, i64 %a2, { i64, ptr } %a3)
declare { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2eslotOf_3cI64_2c_20Bool_3e(ptr %v0, ptr %a0, i64 %a1)
declare { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2eunlink_3cI64_2c_20Bool_3e(ptr %v0, ptr %a0, i64 %a1)
declare { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2eslotOf_3cI64_2c_20I64_3e(ptr %v0, ptr %a0, i64 %a1)
declare %"std/prelude/map:MapIter.bf5835bb10600fe6a7fc1da14a6360d9" @std_2fprelude_2fmap_3aMapIter_3cI64_2c_20I64_3e_2ector(ptr %v0, ptr %v1, ptr %a0)
declare { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2fscope_3aTerm_3e_2e_H227479d75e2ae1e839d9c2cd86a7acd3(ptr %v0, ptr %a0, i64 %a1)
@olang_loc_da3efeada6886791_f7bab64d16071645 = external constant [0 x i8]
@olang_loc_24edbb97c8e1be09_29e8bd2e11e75995 = external constant [0 x i8]
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2fscope_3afnRecs_3e__H562004361ec99b0cef432f8998da46ac(ptr %v0, ptr %v1, ptr %a0, i64 %a1, i64 %a2, %"compiler/scope:fnRecs" %a3)
@olang_loc_70430947dbb211cd_c85beb0840cd5939 = external constant [0 x i8]
@olang_loc_7f58bbce9e95ad79_e8f56ec1072e1d1d = external constant [0 x i8]
@olang_loc_d289edfcd51d194c_58000e496e1c51c0 = external constant [0 x i8]
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2ftyped_3aExpr_26_3e_H65d3befeefd610ac34988050904a0f74(ptr %v0, ptr %a0)
declare %"std/prelude/map:MapEntry.1eb2466213689e002f25e81e83536e78" @std_2fprelude_2fmap_3aMapEntry_3cI64_2c_20compiler_2ftyped_3aExpr_26_3e_2ector(ptr %v0, ptr %v1, i64 %a0, ptr %a1)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2ftyped_3aExpr_26_3e_H655fba6638d2279e16acb109e1654847(ptr %v0, ptr %a0)
@olang_loc_e5286c8a428bda49_36c815cd4432524d = external constant [0 x i8]
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2ftext_3aString_H578f6ddf8deeede0d17903533a2e3444(ptr %v0, ptr %a0)
declare %"std/prelude/map:MapEntry.8d509622153b47f1a5f79c42c8367406" @std_2fprelude_2fmap_3aMapEntry_3cI64_2c_20Array_3ccompiler_2ftyped_3aCapture_26_3e_3e_2ector(ptr %v0, ptr %v1, i64 %a0, { i64, ptr } %a1)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2fvec_3aVec_3cI_Haa7b37fb55048dd0c74843ff955f57e2(ptr %v0, ptr %a0)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2fvec_3aVec_3cI_H6c078a596243b892e1847e2ccd4290dd(ptr %v0, ptr %a0)
@olang_loc_7d00da40d04b84b5_3222d3b50bce4681 = external constant [0 x i8]
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2fvec_3aVec_3cc_Hbd85a50d6d27fe1c69f758c1c1e81060(ptr %v0, ptr %v1, ptr %a0, i64 %a1, i64 %a2, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %a3)
declare { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2fvec_3aVec_3cI_H0bd8b2e51f5f92f67cbd68b5195b203d(ptr %v0, ptr %a0, i64 %a1)
@olang_loc_b908bcb2277b691_fbaaf11a41201605 = external constant [0 x i8]
@olang_loc_4a7008d639b35fc1_60a8879bd714ddc5 = external constant [0 x i8]
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fscope_3averAtom_2c_20I64_3e_Hc81a30d19ad900e4ade0bdf80bb746a1(ptr %v0, ptr %a0)
declare %"std/prelude/map:MapEntry.77d571dcfbd22be90356fe294d3b1a19" @std_2fprelude_2fmap_3aMapEntry_3ccompiler_2fscope_3averAtom_2c_20I64_3e_2ector(ptr %v0, %"compiler/scope:verAtom" %a0, i64 %a1)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI32_2c_20I64_3e_2eroom_3cI32_2c_20I64_3e(ptr %v0, ptr %a0)
declare { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H30fd1f462fafdfea9abeea90cd4113bf(ptr %v0, ptr %a0, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %a1)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_Ha7ec2521d254a46c93deb02fe8d52040(ptr %v0, ptr %a0)
declare %"std/prelude/map:MapEntry.0bcda5c026701d95f15bce76f62e86ad" @std_2fprelude_2fmap_3aMapEntry_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_20compiler_2fscope_3afnRecs_3e_2ector(ptr %v0, ptr %v1, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %a0, %"compiler/scope:fnRecs" %a1)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H0a72b58b33ed678635392a234715d56d(ptr %v0, ptr %a0)
@olang_loc_98e851230e25199_6709b2b891d27f9d = external constant [0 x i8]
declare i64 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H2b299ac8414fe0900d06d94de708c354(ptr %v0, ptr %a0, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %a1)
@olang_loc_f5147e9cccb71a89_abf62f853b44252d = external constant [0 x i8]
@olang_loc_69fb979c9c271d1c_9f38969fb60f0e50 = external constant [0 x i8]
declare { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_Hcc6f495c96b7688a1f2e663dcf37c036(ptr %v0, ptr %a0, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %a1)
@olang_loc_d09d4290b7da555d_4aaf343b9bec4899 = external constant [0 x i8]
@olang_loc_8c25b0a34c040f00_7447c6fffda4a9ec = external constant [0 x i8]
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_Hf1b08312c9801b2ab1b340dc49fbc612(ptr %v0, ptr %a0)
declare %"std/prelude/map:MapEntry.39ab5235a9e7cc4d21ab272df52b187f" @std_2fprelude_2fmap_3aMapEntry_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_20std_2fprelude__H885384343a2430f3b3dca762637b6621(ptr %v0, ptr %v1, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %a0, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %a1)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H862285d0431cf564abc2614c38ea4467(ptr %v0, ptr %a0)
declare %"std/prelude/map:MapEntry.5d90ea23f235d8870da3668e82c28edd" @std_2fprelude_2fmap_3aMapEntry_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_20compiler_2fscope_3aPlacement_3e_2ector(ptr %v0, ptr %v1, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %a0, %"compiler/scope:Placement" %a1)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H9032c6a3ab5d34e24fa3c5fb64b0c223(ptr %v0, ptr %a0)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H82b0519898a45af4725a262dee225dae(ptr %v0, ptr %a0)
declare %"std/prelude/map:MapEntry.8c7bad97385adc7a5b41f0343fdc7864" @std_2fprelude_2fmap_3aMapEntry_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_20compiler_2ftyped_3aMark_3e_2ector(ptr %v0, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %a0, { i64, [1 x i64] } %a1)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H1f76df8a621f70023e022326f6e3e23c(ptr %v0, ptr %a0)
@olang_loc_24094b025ec3785d_cef0face9ea8d0e1 = external constant [0 x i8]
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H335f5042d0dc56bacbac76a21761a9ba(ptr %v0, ptr %a0)
declare %"std/prelude/map:MapEntry.1b1d537c79dee3d5948de1b7c1a79d8b" @std_2fprelude_2fmap_3aMapEntry_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_20compiler_2fscope_3aTerm_3e_2ector(ptr %v0, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %a0, { i64, [2 x i64] } %a1)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H7e25f6d14d72c5c05d6ad50f255768db(ptr %v0, ptr %a0)
@olang_loc_fddcfd835a4483a5_5a6ac7e89ec92289 = external constant [0 x i8]
declare { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H050b8e98756be8be43114bd418639769(ptr %v0, ptr %a0, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %a1)
declare i64 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_2c_20I64_H9d1a9cc8542744ec92a91bceaf2bc5c6(ptr %v0, ptr %a0, { i64, ptr } %a1)
declare i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
declare %"std/prelude/map:MapKeyIter.bf5835bb10600fe6a7fc1da14a6360d9" @std_2fprelude_2fmap_3aMapKeyIter_3cstd_2fprelude_2ftext_3aString_26_2c_20std_2fprelude_2ftext_3aString_26_3e_2ector(ptr %v0, ptr %v1, ptr %a0)
declare %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20compiler_2fsource_3aNameId_3e_2ector(ptr %v0)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cArray_3cI64_3e_3e_2eroom_3cArray_3cI64_3e_3e(ptr %v0, ptr %a0, i64 %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fgeneric_3aOrigin_3e_2eroom_3ccompiler_2fgeneric_3aOrigin_3e(ptr %v0, ptr %a0, i64 %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3aTerm_3e_2eroom_3ccompiler_2fscope_3aTerm_3e(ptr %v0, ptr %a0, i64 %a1)
@olang_loc_6a36cc37fc5e5049_682295a2af4be8bd = external constant [0 x i8]
declare i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3aTerm_3e_2eEq_3ccompiler_2fscope_3aTerm_3e(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3amarkRead_3e_2eroom_3ccompiler_2fscope_3amarkRead_3e(ptr %v0, ptr %a0, i64 %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3arel_3e_2eroom_3ccompiler_2fscope_3arel_3e(ptr %v0, ptr %a0, i64 %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3asumRead_3e_2eroom_3ccompiler_2fscope_3asumRead_3e(ptr %v0, ptr %a0, i64 %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aNameId_3e_2eTrunca_H0175749ab7aa0aad23a4aa22bc447819(ptr %v0, ptr %a0, i64 %a1)
@olang_loc_9f8ef660388bfc85_df5941ae17e82a29 = external constant [0 x i8]
declare { i32, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H30b952b85dc190b6cd5306b9d98a7749(ptr %v0, ptr %v1, ptr %a0)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcond_3aGlobal_26_3e_2ePush_3ccompiler_2fcond_3aGlobal_26_3e(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fast_3aDecl_26_3e_2eTruncate_3ccompiler_2fast_3aDecl_26_3e(ptr %v0, ptr %a0, i64 %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aPlan_3e_2eroom_3ccompiler_2ftyped_3aPlan_3e(ptr %v0, ptr %a0, i64 %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aScopeVar_3e_2eroom_3ccompiler_2ftyped_3aScopeVar_3e(ptr %v0, ptr %a0, i64 %a1)
@olang_loc_631976024bd0a19_45a2efd665179b9d = external constant [0 x i8]
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI32_3e_2ePush_3cI32_3e(ptr %v0, ptr %a0, i32 %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_3e_Haf2ee04ed658e65f26719862d5a58e20(ptr %v0, ptr %a0, i64 %a1)
@olang_loc_1ba14b2e3d91848d_9bcc70ac9434d0a1 = external constant [0 x i8]
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2fmap_3aMap_3cI64_2c_20c_Hedb47652e198260c416011857f695302(ptr %v0, ptr %a0, i64 %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2fvec_3aVec_3cstd_2fprel_H678b8309aae39c7cf837a36fd9762d02(ptr %v0, ptr %a0, i64 %a1)

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
