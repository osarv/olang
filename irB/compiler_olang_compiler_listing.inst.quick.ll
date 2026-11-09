source_filename = "compiler_olang_compiler_listing.inst.quick.ll"
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
%"std/prelude/map:MapEntry.c7dad01dbd7dd6cd22e9701676806c15" = type { { i64, ptr }, { i64, ptr } }
%"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" = type { { i64, ptr }, { i64, ptr }, { i64, ptr }, i64, i64, i64 }
%"compiler/build:Code" = type { { i64, ptr }, { i64, ptr }, i64, { i64, ptr } }
%"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" = type { { i64, ptr }, i64, i64 }
%"compiler/listing:Remark" = type { { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, i64, { i64, ptr }, { i64, ptr }, { i64, ptr } }
define dso_local i64 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_H058b97fd9451b28c8c7214dea3d4ab39(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1) #0 {
entry:
  %r = tail call i64 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_Hfcb75e1e77f0243005273cd5f4616538(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
  ret i64 %r
}

define dso_local { i32, { i64, ptr } } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_H1a06a15e944bd533c307ed632a66227d(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1) #0 {
entry:
  %r = tail call { i32, { i64, ptr } } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_H412951a1c1c3c34f4f6a5a14e25e5986(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1)
  ret { i32, { i64, ptr } } %r
}

define dso_local void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_H1a20b1f5d16e1a50a914bb69592586cd(ptr %v0, ptr %v1, ptr %v2, ptr %a0, i64 %a1, { i64, ptr } %a2, { i64, ptr } %a3) #0 {
entry:
  tail call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_H94a907ff7e41d1a45418536df8a853bc(ptr %v0, ptr %v1, ptr %v2, ptr %a0, i64 %a1, { i64, ptr } %a2, { i64, ptr } %a3)
  ret void
}

define dso_local i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_H31be5498ebd17915897aa49c59d3f641(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %r = tail call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_H068cfedf7407289d149ee3c6f4c8aa20(ptr %v0, ptr %a0, i64 %a1)
  ret i1 %r
}

define dso_local void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_H622d547341f1d57ea9d487c43a5f4fbc(ptr %v0, ptr %a0) #0 {
entry:
  tail call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_H5c8af12b98438e38d8b5a8b0f4c19d47(ptr %v0, ptr %a0)
  ret void
}

define dso_local i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_H7e371d56fd28e687545500cc2dc4b78e(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1) #0 {
entry:
  %r = tail call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_H31dec199381f6e2bb0c82058ea887922(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
  ret i1 %r
}

define dso_local void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_He566606ea489086acfe37a2d8fe143fc(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1, { i64, ptr } %a2) #0 {
entry:
  tail call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_H6f7a2f8d839c49b6e7a19c287d4b190c(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1, { i64, ptr } %a2)
  ret void
}

define dso_local { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_Hefbd99a6ec774c46d2a68748128238f6(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1) #0 {
entry:
  %r = tail call { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_H3e8d9e73d202848c6ef7cc90298b7ff1(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
  ret { i32, i64 } %r
}

define dso_local %"std/prelude/map:MapEntry.c7dad01dbd7dd6cd22e9701676806c15" @std_2fprelude_2fmap_3aMapEntry_3cstd_2fprelude_2ftext_3aString_26_2c_20Array_3cstd_2fpre_H87870f362f0a7bd8828117b9541c2db9(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1) #0 {
entry:
  %r = tail call %"std/prelude/map:MapEntry.c7dad01dbd7dd6cd22e9701676806c15" @std_2fprelude_2fmap_3aMapEntry_3cstd_2fprelude_2ftext_3aString_26_2c_20Array_3cU8_3e_26_3e_2ector(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1)
  ret %"std/prelude/map:MapEntry.c7dad01dbd7dd6cd22e9701676806c15" %r
}

define dso_local %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20Array_3cstd_2fprelude__Hb5aefc70e2d3852a6d29ec0a9aea78a4(ptr %v0) #0 {
entry:
  %r = tail call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20compiler_2fsource_3aNameId_3e_2ector(ptr %v0)
  ret %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %r
}

define dso_local %"compiler/build:Code" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fbuild_3aCode_3e_2eAt_3ccompiler_2fbuild_3aCode_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1) #0 {
entry:
  %rv = alloca %"compiler/build:Code"
  br label %start
start:
  br label %bb0
bb0:
  %t4 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %a0, i32 0, i32 0
  %t6 = getelementptr { i64, ptr }, ptr %t4, i32 0, i32 1
  %t7 = load ptr, ptr %t6, !tbaa !27
  %t8 = getelementptr %"compiler/build:Code", ptr %t7, i64 %a1
  %t9 = load %"compiler/build:Code", ptr %t8
  store %"compiler/build:Code" %t9, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/build:Code", ptr %rv
  ret %"compiler/build:Code" %rr
}

define dso_local i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fbuild_3aCode_3e_2eLen_3ccompiler_2fbuild_3aCode_3e(ptr %v0, ptr %a0) #0 {
entry:
  %r = tail call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cU64_3e_2eLen_3cU64_3e(ptr %v0, ptr %a0)
  ret i64 %r
}

define dso_local %"compiler/listing:Remark" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2flisting_3aRemark_3e_2eAt_3ccompiler_2flisting_3aRemark_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1) #0 {
entry:
  %rv = alloca %"compiler/listing:Remark"
  br label %start
start:
  br label %bb0
bb0:
  %t4 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %a0, i32 0, i32 0
  %t6 = getelementptr { i64, ptr }, ptr %t4, i32 0, i32 1
  %t7 = load ptr, ptr %t6, !tbaa !27
  %t8 = getelementptr %"compiler/listing:Remark", ptr %t7, i64 %a1
  %t9 = load %"compiler/listing:Remark", ptr %t8
  store %"compiler/listing:Remark" %t9, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/listing:Remark", ptr %rv
  ret %"compiler/listing:Remark" %rr
}

define dso_local i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2flisting_3aRemark_3e_2eLen_3ccompiler_2flisting_3aRemark_3e(ptr %v0, ptr %a0) #0 {
entry:
  %r = tail call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cU64_3e_2eLen_3cU64_3e(ptr %v0, ptr %a0)
  ret i64 %r
}

define dso_local void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2flisting_3aRemark_3e_2ePush_3ccompiler_2flisting_3aRemark_3e(ptr %v0, ptr %v1, ptr %a0, %"compiler/listing:Remark" %a1) #0 {
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
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2flisting_3aRemark_3e_2eroom_3ccompiler_2flisting_3aRemark_3e(ptr %v0, ptr %t15, i64 %t21)
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
  %t36 = getelementptr %"compiler/listing:Remark", ptr %t35, i64 %t28
  store %"compiler/listing:Remark" %a1, ptr %t36
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

define dso_local void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2flisting_3aRemark_3e_2eroom_3ccompiler_2flisting_3aRemark_3e(ptr %v0, ptr %a0, i64 %a1) noinline cold #0 {
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
  call void @__olang_check_failed(ptr @olang_loc_2539e868f30e214a_bfbc5158cbb5f35e)
  unreachable
bb15:
  %t71 = load i64, ptr %l36, !tbaa !24
  %t72 = load i64, ptr %l37, !tbaa !24
  %t73 = icmp sle i64 %t71, %t72
  br i1 %t73, label %bb17, label %bb18
bb16:
  call void @__olang_check_failed(ptr @olang_loc_2539e868f30e214a_bfbc5158cbb5f35e)
  unreachable
bb17:
  %t75 = getelementptr { i64, ptr }, ptr %l34, i32 0, i32 1
  %t76 = load ptr, ptr %t75, !tbaa !27
  %t77 = load i64, ptr %l36, !tbaa !24
  %t78 = getelementptr %"compiler/listing:Remark", ptr %t76, i64 0
  %t79 = sub i64 %t77, 0
  %t80 = insertvalue { i64, ptr } undef, i64 %t79, 0
  %t81 = insertvalue { i64, ptr } %t80, ptr %t78, 1
  store { i64, ptr } %t81, ptr %l4, !tbaa !27
  %t83 = load i64, ptr %l2, !tbaa !24
  %t87 = mul i64 %t83, 120
  %t88 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t87)
  %t89 = insertvalue { i64, ptr } undef, i64 %t83, 0
  %t90 = insertvalue { i64, ptr } %t89, ptr %t88, 1
  store { i64, ptr } %t90, ptr %l44, !tbaa !27
  store i64 0, ptr %l45, !tbaa !24
  store i64 0, ptr %l6, !tbaa !24
  br label %bb19
bb18:
  call void @__olang_check_failed(ptr @olang_loc_2539e868f30e214a_bfbc5158cbb5f35e)
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
  %t106 = getelementptr %"compiler/listing:Remark", ptr %t105, i64 %t102
  %t107 = load %"compiler/listing:Remark", ptr %t106
  %t109 = load i64, ptr %l45, !tbaa !24
  %t110 = getelementptr { i64, ptr }, ptr %l44, i32 0, i32 1
  %t111 = load ptr, ptr %t110, !tbaa !27
  %t112 = getelementptr %"compiler/listing:Remark", ptr %t111, i64 %t109
  store %"compiler/listing:Remark" %t107, ptr %t112
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

define dso_local { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aChar_3e_2eToArr_H8081e04b38a8da5362a19182ff2ab7d7(ptr %v0, ptr %v1, ptr %a0) #0 {
entry:
  %r = tail call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cU8_3e_2eToArray_3cU8_3e(ptr %v0, ptr %v1, ptr %a0)
  ret { i64, ptr } %r
}

define dso_local %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2flisting_3aRemark_3e_2ector(ptr %v0, i64 %a0) #0 {
entry:
  %r = tail call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cU64_3e_2ector(ptr %v0, i64 %a0)
  ret %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %r
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
declare noalias ptr @__olang_scope_alloc_slow(ptr, i64, i64) noinline
declare i64 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_Hfcb75e1e77f0243005273cd5f4616538(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare { i32, { i64, ptr } } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_H412951a1c1c3c34f4f6a5a14e25e5986(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_H94a907ff7e41d1a45418536df8a853bc(ptr %v0, ptr %v1, ptr %v2, ptr %a0, i64 %a1, { i64, ptr } %a2, { i64, ptr } %a3)
declare i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_H068cfedf7407289d149ee3c6f4c8aa20(ptr %v0, ptr %a0, i64 %a1)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_H5c8af12b98438e38d8b5a8b0f4c19d47(ptr %v0, ptr %a0)
declare i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_H31dec199381f6e2bb0c82058ea887922(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_H645ac38fc9ca5642ae3d99c07e028fd9(ptr %v0, ptr %a0)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_H6f7a2f8d839c49b6e7a19c287d4b190c(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1, { i64, ptr } %a2)
declare { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_H3e8d9e73d202848c6ef7cc90298b7ff1(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare %"std/prelude/map:MapEntry.c7dad01dbd7dd6cd22e9701676806c15" @std_2fprelude_2fmap_3aMapEntry_3cstd_2fprelude_2ftext_3aString_26_2c_20Array_3cU8_3e_26_3e_2ector(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1)
declare %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20compiler_2fsource_3aNameId_3e_2ector(ptr %v0)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cU64_3e_2eLen_3cU64_3e(ptr %v0, ptr %a0)
@olang_loc_2539e868f30e214a_bfbc5158cbb5f35e = external constant [0 x i8]
declare { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cU8_3e_2eToArray_3cU8_3e(ptr %v0, ptr %v1, ptr %a0)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cU64_3e_2ector(ptr %v0, i64 %a0)

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
