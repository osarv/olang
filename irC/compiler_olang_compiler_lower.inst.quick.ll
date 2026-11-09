source_filename = "compiler_olang_compiler_lower.inst.quick.ll"
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
%"std/prelude/map:MapKeyIter.bf5835bb10600fe6a7fc1da14a6360d9" = type { ptr, i64 }
%"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" = type { { i64, ptr }, { i64, ptr }, { i64, ptr }, i64, i64, i64 }
%"std/prelude/map:MapEntry.8d509622153b47f1a5f79c42c8367406" = type { i64, { i64, ptr } }
%"std/prelude/map:MapEntry.d0636885f2b44490dbc61e56fa468a20" = type { i64, i32 }
%"std/prelude/map:MapEntry.8123c42416ba2f137f65a63a84d879b0" = type { i64, { i64, [1 x i64] } }
%"std/prelude/map:MapEntry.033938f0d277fb4f29f5816905973be0" = type { { i64, [2 x i64] }, i1 }
%"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" = type { { i64, ptr }, i64, i64 }
%"compiler/free:leaf" = type { { i64, ptr }, i64 }
%"compiler/generic:AnyTable" = type { i32, i32, i32, i64, %"compiler/source:Span", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/source:Span" = type { i32, i32 }
%"compiler/lower:Gap" = type { i64, %"compiler/source:Span", { i64, ptr } }
%"compiler/lower:collectCtx" = type { i32, i32, i32, i32, { i64, [1 x i64] }, i1, i1 }
%"compiler/lower:level" = type { i32, i32, i32 }
%"compiler/lower:loopCtx" = type { i32, i64, i32, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/lower:pl" = type { { i64, [2 x i64] }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, i32 }
%"compiler/lower:relPath" = type { i64, { i64, ptr } }
%"compiler/lower:tryCtx" = type { i64, { i64, ptr }, i1, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/mir:Call" = type { { i64, [7 x i64] }, %"compiler/mir:Range", %"compiler/mir:Range", %"compiler/mir:Lvalue", i1, i32, i32, i32 }
%"compiler/mir:Range" = type { i32, i32 }
%"compiler/mir:Lvalue" = type { { i64, [2 x i64] }, %"compiler/mir:Range" }
%"compiler/mir:Local" = type { i32, %"compiler/source:Span", i32, i32, { i64, [1 x i64] } }
%"compiler/mir:ScopeInfo" = type { i32, i32, i32, %"compiler/source:Span", i32 }
define dso_local { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMapKeyIter_3cI64_2c_20std_2fprelude_2ftext_3_H9d7da39dd81a932fb2b877accbcd070c(ptr %v0, ptr %a0) #0 {
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
  %t51 = getelementptr %"std/prelude/map:MapEntry.8d509622153b47f1a5f79c42c8367406", ptr %t50, i64 %t45
  %t52 = getelementptr %"std/prelude/map:MapEntry.8d509622153b47f1a5f79c42c8367406", ptr %t51, i32 0, i32 0
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

define dso_local { i32, i32 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2fmir_3aLocalId_3e_2_H1e3bc46345ebb5614acbe688055fe55f(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %r = tail call { i32, i32 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2ftypes_3aTypeId_3e__H9861f6f09602cf23d49075e82ac9429b(ptr %v0, ptr %a0, i64 %a1)
  ret { i32, i32 } %r
}

define dso_local { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2fmir_3aLocalId_3e_2_H597a5eca692c7b5001b57dc4ac62d758(ptr %v0, ptr %a0, i64 %a1) #0 {
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
  %t39 = getelementptr %"std/prelude/map:MapEntry.d0636885f2b44490dbc61e56fa468a20", ptr %t38, i64 %t33
  %t40 = getelementptr %"std/prelude/map:MapEntry.d0636885f2b44490dbc61e56fa468a20", ptr %t39, i32 0, i32 0
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

define dso_local void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2fmir_3aLocalId_3e_2_H6363fee5e3f1c076b4ec00933ab48c6c(ptr %v0, ptr %a0, i64 %a1, i32 %a2) #0 {
entry:
  tail call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2ftypes_3aTypeId_3e__Hbdd7c5068e376aa260a62181a9f99429(ptr %v0, ptr %a0, i64 %a1, i32 %a2)
  ret void
}

define dso_local void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2fmir_3aLocalId_3e_2_H70f5f41e41b2e32c5ee6eca2f29dd57a(ptr %v0, ptr %a0, i64 %a1, i64 %a2, i32 %a3) #0 {
entry:
  tail call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2ftypes_3aTypeId_3e__H794d3eb85f14516c95c7099ffa2bb98c(ptr %v0, ptr %a0, i64 %a1, i64 %a2, i32 %a3)
  ret void
}

define dso_local { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2fmir_3aLocalId_3e_2_H722204a3661a1a06f85461ca8db9120e(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %r = tail call { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2ftypes_3aTypeId_3e__Hd2a516d8805bb7924f0b2c0c5d7b17b5(ptr %v0, ptr %a0, i64 %a1)
  ret { i32, i64 } %r
}

define dso_local i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2fmir_3aLocalId_3e_2_H73e8c7c78dec39df553768af3eb5e0c9(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %r = tail call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_H068cfedf7407289d149ee3c6f4c8aa20(ptr %v0, ptr %a0, i64 %a1)
  ret i1 %r
}

define dso_local void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2fmir_3aLocalId_3e_2_H780e46e20d2809de2df4e4681d5afeba(ptr %v0, ptr %a0) #0 {
entry:
  tail call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2ftypes_3aTypeId_3e__H9417a29e0f32fc2aa662cd54d10b46f2(ptr %v0, ptr %a0)
  ret void
}

define dso_local i64 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2fmir_3aLocalId_3e_2_H8ef7bdc4e115672823c75a177a6148a5(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %r = tail call i64 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Array_3ccompiler_2ftyped_3aBl_He88cfdc4919e1dee4cfd0cdecebbca1d(ptr %v0, ptr %a0, i64 %a1)
  ret i64 %r
}

define dso_local i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2fmir_3aLocalId_3e_2_Hf0fb0e232c68e27195d0770621b0035a(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l3 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i32
  %l11 = alloca %"std/prelude/map:MapEntry.d0636885f2b44490dbc61e56fa468a20"
  %rv = alloca i1
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t5 = call { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2fmir_3aLocalId_3e_2_H597a5eca692c7b5001b57dc4ac62d758(ptr %v0, ptr %t1, i64 %a1)
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
  %t20 = getelementptr %"std/prelude/map:MapEntry.d0636885f2b44490dbc61e56fa468a20", ptr %t19, i64 %t12
  %t21 = load %"std/prelude/map:MapEntry.d0636885f2b44490dbc61e56fa468a20", ptr %t20
  store %"std/prelude/map:MapEntry.d0636885f2b44490dbc61e56fa468a20" %t21, ptr %l11
  store i1 true, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2fmir_3aScopeRef_3e__H09b52414a2257580d18c71733e3df074(ptr %v0, ptr %a0) #0 {
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
  call void @__olang_check_failed(ptr @olang_loc_a6adca394a83bf76_d8e0f8b00fb0b64a)
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
  call void @__olang_check_failed(ptr @olang_loc_a6adca394a83bf76_d8e0f8b00fb0b64a)
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
  %t99 = getelementptr %"std/prelude/map:MapEntry.8123c42416ba2f137f65a63a84d879b0", ptr %t98, i64 %t93
  %t100 = getelementptr %"std/prelude/map:MapEntry.8123c42416ba2f137f65a63a84d879b0", ptr %t99, i32 0, i32 0
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

define dso_local { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2fmir_3aScopeRef_3e__H1e6449439d67b98c96c7fbc10425b995(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca i64
  %l7 = alloca ptr
  %l10 = alloca i64
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
  store ptr %t10, ptr %l7, !tbaa !29
  %t11 = load ptr, ptr %l0, !tbaa !29
  %t12 = load i64, ptr %l1, !tbaa !24
  %t15 = call i64 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Array_3ccompiler_2ftyped_3aBl_He88cfdc4919e1dee4cfd0cdecebbca1d(ptr %v0, ptr %t11, i64 %t12)
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
  br label %bb13
bb7:
  br label %bb8
bb8:
  %t30 = load ptr, ptr %l0, !tbaa !29
  %t31 = load i64, ptr %l2, !tbaa !24
  %t33 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t30, i32 0, i32 0
  %t35 = getelementptr { i64, ptr }, ptr %t33, i32 0, i32 1
  %t36 = load ptr, ptr %t35, !tbaa !27
  %t37 = getelementptr %"std/prelude/map:MapEntry.8123c42416ba2f137f65a63a84d879b0", ptr %t36, i64 %t31
  %t38 = getelementptr %"std/prelude/map:MapEntry.8123c42416ba2f137f65a63a84d879b0", ptr %t37, i32 0, i32 0
  %t39 = load i64, ptr %t38, !tbaa !24
  %t40 = load i64, ptr %l1, !tbaa !24
  %t43 = icmp eq i64 %t39, %t40
  br i1 %t43, label %bb9, label %bb10
bb9:
  %t45 = load i64, ptr %l2, !tbaa !24
  %t47 = insertvalue { i32, i64 } zeroinitializer, i64 %t45, 1
  store { i32, i64 } %t47, ptr %rv
  br label %ret
bb10:
  br label %bb11
bb11:
  br label %bb12
bb12:
  %t48 = load ptr, ptr %l0, !tbaa !29
  %t49 = load i64, ptr %l2, !tbaa !24
  %t51 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t48, i32 0, i32 1
  %t53 = getelementptr { i64, ptr }, ptr %t51, i32 0, i32 1
  %t54 = load ptr, ptr %t53, !tbaa !27
  %t55 = getelementptr i64, ptr %t54, i64 %t49
  %t56 = load i64, ptr %t55, !tbaa !34
  store i64 %t56, ptr %l2, !tbaa !24
  br label %bb5
bb13:
  %t59 = insertvalue { i32, i64 } zeroinitializer, i32 65536, 0
  store { i32, i64 } %t59, ptr %rv
  br label %ret
ret:
  %rr = load { i32, i64 }, ptr %rv
  ret { i32, i64 } %rr
}

define dso_local void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2fmir_3aScopeRef_3e__H35c11d6c689f342c3475f70569184bed(ptr %v0, ptr %a0, i64 %a1, i64 %a2, { i64, [1 x i64] } %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l4 = alloca i64
  %l9 = alloca ptr
  %l13 = alloca i64
  %l23 = alloca ptr
  %l26 = alloca ptr
  %l27 = alloca i64
  %l30 = alloca %"std/prelude/map:MapEntry.8123c42416ba2f137f65a63a84d879b0"
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
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2fmir_3aScopeRef_3e__Ha4da48f52c5118fe3aa1d6dbdf08d6f5(ptr %v0, ptr %t39)
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
  %t61 = call %"std/prelude/map:MapEntry.8123c42416ba2f137f65a63a84d879b0" @std_2fprelude_2fmap_3aMapEntry_3cI64_2c_20compiler_2fmir_3aScopeRef_3e_2ector(ptr %s0, i64 %a2, { i64, [1 x i64] } %a3)
  store %"std/prelude/map:MapEntry.8123c42416ba2f137f65a63a84d879b0" %t61, ptr %l30
  br label %bb9
bb9:
  %t62 = load %"std/prelude/map:MapEntry.8123c42416ba2f137f65a63a84d879b0", ptr %l30
  %t63 = load ptr, ptr %l26, !tbaa !29
  %t64 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t63, i32 0, i32 0
  %t65 = load i64, ptr %l27, !tbaa !24
  %t66 = getelementptr { i64, ptr }, ptr %t64, i32 0, i32 1
  %t67 = load ptr, ptr %t66, !tbaa !27
  %t68 = getelementptr %"std/prelude/map:MapEntry.8123c42416ba2f137f65a63a84d879b0", ptr %t67, i64 %t65
  store %"std/prelude/map:MapEntry.8123c42416ba2f137f65a63a84d879b0" %t62, ptr %t68
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
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2fmir_3aScopeRef_3e__H09b52414a2257580d18c71733e3df074(ptr %v0, ptr %t124)
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

define dso_local i64 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2fmir_3aScopeRef_3e__H54c83d2ab0184b4e49b9bc045f0e0a39(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %r = tail call i64 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Array_3ccompiler_2ftyped_3aBl_He88cfdc4919e1dee4cfd0cdecebbca1d(ptr %v0, ptr %a0, i64 %a1)
  ret i64 %r
}

define dso_local { i32, { i64, [1 x i64] } } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2fmir_3aScopeRef_3e__H593d82357dc98d1f15fac9dd5b09c001(ptr %v0, ptr %a0, i64 %a1) #0 {
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
  %t6 = call { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2fmir_3aScopeRef_3e__H1e6449439d67b98c96c7fbc10425b995(ptr %v0, ptr %t2, i64 %a1)
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
  %t28 = getelementptr %"std/prelude/map:MapEntry.8123c42416ba2f137f65a63a84d879b0", ptr %t27, i64 %t25
  %t29 = getelementptr %"std/prelude/map:MapEntry.8123c42416ba2f137f65a63a84d879b0", ptr %t28, i32 0, i32 1
  %t30 = load { i64, [1 x i64] }, ptr %t29
  %t32 = insertvalue { i32, { i64, [1 x i64] } } zeroinitializer, { i64, [1 x i64] } %t30, 1
  store { i32, { i64, [1 x i64] } } %t32, ptr %rv
  br label %ret
ret:
  %rr = load { i32, { i64, [1 x i64] } }, ptr %rv
  ret { i32, { i64, [1 x i64] } } %rr
}

define dso_local i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2fmir_3aScopeRef_3e__H7479a55179d45ca73d05b9b020015ee1(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %r = tail call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_H068cfedf7407289d149ee3c6f4c8aa20(ptr %v0, ptr %a0, i64 %a1)
  ret i1 %r
}

define dso_local i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2fmir_3aScopeRef_3e__H989114ff406840d3a5cfe99ba734fa56(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l2 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i32
  %rv = alloca i1
  br label %start
start:
  br label %bb0
bb0:
  %t5 = call { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2fmir_3aScopeRef_3e__H1e6449439d67b98c96c7fbc10425b995(ptr %v0, ptr %a0, i64 %a1)
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

define dso_local void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2fmir_3aScopeRef_3e__Ha4da48f52c5118fe3aa1d6dbdf08d6f5(ptr %v0, ptr %a0) noinline cold #0 {
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
  call void @__olang_check_failed(ptr @olang_loc_2fc1ada24d2a2aba_cf50e9ec8732da9e)
  unreachable
bb6:
  %t38 = load i64, ptr %l24, !tbaa !24
  %t39 = load i64, ptr %l25, !tbaa !24
  %t40 = icmp sle i64 %t38, %t39
  br i1 %t40, label %bb8, label %bb9
bb7:
  call void @__olang_check_failed(ptr @olang_loc_2fc1ada24d2a2aba_cf50e9ec8732da9e)
  unreachable
bb8:
  %t42 = getelementptr { i64, ptr }, ptr %l22, i32 0, i32 1
  %t43 = load ptr, ptr %t42, !tbaa !27
  %t44 = load i64, ptr %l24, !tbaa !24
  %t45 = getelementptr %"std/prelude/map:MapEntry.8123c42416ba2f137f65a63a84d879b0", ptr %t43, i64 0
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
  call void @__olang_check_failed(ptr @olang_loc_2fc1ada24d2a2aba_cf50e9ec8732da9e)
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
  %t73 = getelementptr %"std/prelude/map:MapEntry.8123c42416ba2f137f65a63a84d879b0", ptr %t72, i64 %t69
  %t74 = load %"std/prelude/map:MapEntry.8123c42416ba2f137f65a63a84d879b0", ptr %t73
  %t76 = load i64, ptr %l33, !tbaa !24
  %t77 = getelementptr { i64, ptr }, ptr %l32, i32 0, i32 1
  %t78 = load ptr, ptr %t77, !tbaa !27
  %t79 = getelementptr %"std/prelude/map:MapEntry.8123c42416ba2f137f65a63a84d879b0", ptr %t78, i64 %t76
  store %"std/prelude/map:MapEntry.8123c42416ba2f137f65a63a84d879b0" %t74, ptr %t79
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
  call void @__olang_check_failed(ptr @olang_loc_629272ec9c34cd97_b77aa960c9f8ea9b)
  unreachable
bb18:
  %t109 = load i64, ptr %l51, !tbaa !24
  %t110 = load i64, ptr %l52, !tbaa !24
  %t111 = icmp sle i64 %t109, %t110
  br i1 %t111, label %bb20, label %bb21
bb19:
  call void @__olang_check_failed(ptr @olang_loc_629272ec9c34cd97_b77aa960c9f8ea9b)
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
  call void @__olang_check_failed(ptr @olang_loc_629272ec9c34cd97_b77aa960c9f8ea9b)
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

define dso_local void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2fmir_3aScopeRef_3e__Hfd0fb4fa500a8eead78ad1b6f9922652(ptr %v0, ptr %a0, i64 %a1, { i64, [1 x i64] } %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca { i64, [1 x i64] }
  %l3 = alloca i64
  %l4 = alloca i64
  %l9 = alloca ptr
  %l15 = alloca i64
  %t17 = alloca i64
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  store { i64, [1 x i64] } %a2, ptr %l2
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
  call void @__olang_check_failed(ptr @olang_loc_9f54463f911bbbe1_f325f6bf75a3c85d)
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
  call void @__olang_check_failed(ptr @olang_loc_9f54463f911bbbe1_f325f6bf75a3c85d)
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
  %t59 = getelementptr %"std/prelude/map:MapEntry.8123c42416ba2f137f65a63a84d879b0", ptr %t58, i64 %t53
  %t60 = getelementptr %"std/prelude/map:MapEntry.8123c42416ba2f137f65a63a84d879b0", ptr %t59, i32 0, i32 0
  %t61 = load i64, ptr %t60, !tbaa !24
  %t62 = load i64, ptr %l1, !tbaa !24
  %t65 = icmp eq i64 %t61, %t62
  br i1 %t65, label %bb13, label %bb14
bb13:
  %t67 = load ptr, ptr %l0, !tbaa !29
  %t68 = load i64, ptr %l4, !tbaa !24
  %t69 = load { i64, [1 x i64] }, ptr %l2
  %t72 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t67, i32 0, i32 0
  %t74 = getelementptr { i64, ptr }, ptr %t72, i32 0, i32 1
  %t75 = load ptr, ptr %t74, !tbaa !27
  %t76 = getelementptr %"std/prelude/map:MapEntry.8123c42416ba2f137f65a63a84d879b0", ptr %t75, i64 %t68
  %t77 = getelementptr %"std/prelude/map:MapEntry.8123c42416ba2f137f65a63a84d879b0", ptr %t76, i32 0, i32 1
  store { i64, [1 x i64] } %t69, ptr %t77
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
  %t91 = load { i64, [1 x i64] }, ptr %l2
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2fmir_3aScopeRef_3e__H35c11d6c689f342c3475f70569184bed(ptr %v0, ptr %t88, i64 %t89, i64 %t90, { i64, [1 x i64] } %t91)
  br label %bb18
bb18:
  br label %ret
ret:
  ret void
}

define dso_local %"std/prelude/map:MapKeyIter.bf5835bb10600fe6a7fc1da14a6360d9" @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2ftext_3aString_H3054d603499f3fef5e3f6df62ca84cee(ptr %v0, ptr %v1, ptr %a0) #0 {
entry:
  %r = tail call %"std/prelude/map:MapKeyIter.bf5835bb10600fe6a7fc1da14a6360d9" @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_Hd80cb4cbc6ceb8a13686fbc19b8451b4(ptr %v0, ptr %v1, ptr %a0)
  ret %"std/prelude/map:MapKeyIter.bf5835bb10600fe6a7fc1da14a6360d9" %r
}

define dso_local i64 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2ftext_3aString_Ha270003b2266a12c55eea6eacf9a4be1(ptr %v0, ptr %a0) #0 {
entry:
  %r = tail call i64 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2ftyped_3aVersions_2_H0b5e11c98f28e10a1176da3c2806abb8(ptr %v0, ptr %a0)
  ret i64 %r
}

define dso_local i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2ftext_3aString_Hf09e7c5a180a6f6551a23273369dbbf2(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %r = tail call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_H068cfedf7407289d149ee3c6f4c8aa20(ptr %v0, ptr %a0, i64 %a1)
  ret i1 %r
}

define dso_local i64 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fmir_3aFnKey_2c_20Bool_3e_2e_H684fb1d8e83754dc01392c124de59340(ptr %v0, ptr %a0, { i64, [2 x i64] } %a1) #0 {
entry:
  %l2 = alloca { i64, [2 x i64] }
  %l4 = alloca i64
  %rv = alloca i64
  br label %start
start:
  br label %bb0
bb0:
  store { i64, [2 x i64] } %a1, ptr %l2
  %t3 = call i64 @olang_2emir_2eHelperKind_2eHash_2ecompiler_2fmir_3aFnKey(ptr %l2)
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

define dso_local void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fmir_3aFnKey_2c_20Bool_3e_2e_Ha0aa9b7faca35e388214a899b2e93505(ptr %v0, ptr %a0, i64 %a1, { i64, [2 x i64] } %a2, i1 %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l4 = alloca i64
  %l9 = alloca ptr
  %l13 = alloca i64
  %l23 = alloca ptr
  %l26 = alloca ptr
  %l27 = alloca i64
  %l30 = alloca %"std/prelude/map:MapEntry.033938f0d277fb4f29f5816905973be0"
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
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fmir_3aFnKey_2c_20Bool_3e_2e_Hcd7094964c641578e3be8935a3dcd392(ptr %v0, ptr %t39)
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
  %t61 = call %"std/prelude/map:MapEntry.033938f0d277fb4f29f5816905973be0" @std_2fprelude_2fmap_3aMapEntry_3ccompiler_2fmir_3aFnKey_2c_20Bool_3e_2ector(ptr %s0, { i64, [2 x i64] } %a2, i1 %a3)
  store %"std/prelude/map:MapEntry.033938f0d277fb4f29f5816905973be0" %t61, ptr %l30
  br label %bb9
bb9:
  %t62 = load %"std/prelude/map:MapEntry.033938f0d277fb4f29f5816905973be0", ptr %l30
  %t63 = load ptr, ptr %l26, !tbaa !29
  %t64 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t63, i32 0, i32 0
  %t65 = load i64, ptr %l27, !tbaa !24
  %t66 = getelementptr { i64, ptr }, ptr %t64, i32 0, i32 1
  %t67 = load ptr, ptr %t66, !tbaa !27
  %t68 = getelementptr %"std/prelude/map:MapEntry.033938f0d277fb4f29f5816905973be0", ptr %t67, i64 %t65
  store %"std/prelude/map:MapEntry.033938f0d277fb4f29f5816905973be0" %t62, ptr %t68
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
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fmir_3aFnKey_2c_20Bool_3e_2e_Hab7f18b87e4dd1bee9b6a53101c1da8f(ptr %v0, ptr %t124)
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

define dso_local void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fmir_3aFnKey_2c_20Bool_3e_2e_Hab7f18b87e4dd1bee9b6a53101c1da8f(ptr %v0, ptr %a0) #0 {
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
  call void @__olang_check_failed(ptr @olang_loc_9e27c34721eceac6_f162f032b542dd6a)
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
  call void @__olang_check_failed(ptr @olang_loc_9e27c34721eceac6_f162f032b542dd6a)
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
  %t99 = getelementptr %"std/prelude/map:MapEntry.033938f0d277fb4f29f5816905973be0", ptr %t98, i64 %t93
  %t100 = getelementptr %"std/prelude/map:MapEntry.033938f0d277fb4f29f5816905973be0", ptr %t99, i32 0, i32 0
  %t101 = load { i64, [2 x i64] }, ptr %t100
  %t104 = call i64 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fmir_3aFnKey_2c_20Bool_3e_2e_H684fb1d8e83754dc01392c124de59340(ptr %v0, ptr %t91, { i64, [2 x i64] } %t101)
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

define dso_local void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fmir_3aFnKey_2c_20Bool_3e_2e_Hcd7094964c641578e3be8935a3dcd392(ptr %v0, ptr %a0) noinline cold #0 {
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
  call void @__olang_check_failed(ptr @olang_loc_31ae6e08448e2c5a_fc508ccbb81ed14e)
  unreachable
bb6:
  %t38 = load i64, ptr %l24, !tbaa !24
  %t39 = load i64, ptr %l25, !tbaa !24
  %t40 = icmp sle i64 %t38, %t39
  br i1 %t40, label %bb8, label %bb9
bb7:
  call void @__olang_check_failed(ptr @olang_loc_31ae6e08448e2c5a_fc508ccbb81ed14e)
  unreachable
bb8:
  %t42 = getelementptr { i64, ptr }, ptr %l22, i32 0, i32 1
  %t43 = load ptr, ptr %t42, !tbaa !27
  %t44 = load i64, ptr %l24, !tbaa !24
  %t45 = getelementptr %"std/prelude/map:MapEntry.033938f0d277fb4f29f5816905973be0", ptr %t43, i64 0
  %t46 = sub i64 %t44, 0
  %t47 = insertvalue { i64, ptr } undef, i64 %t46, 0
  %t48 = insertvalue { i64, ptr } %t47, ptr %t45, 1
  store { i64, ptr } %t48, ptr %l3, !tbaa !27
  %t50 = load i64, ptr %l1, !tbaa !24
  %t54 = mul i64 %t50, 32
  %t55 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t54)
  %t56 = insertvalue { i64, ptr } undef, i64 %t50, 0
  %t57 = insertvalue { i64, ptr } %t56, ptr %t55, 1
  store { i64, ptr } %t57, ptr %l32, !tbaa !27
  store i64 0, ptr %l33, !tbaa !24
  store i64 0, ptr %l5, !tbaa !24
  br label %bb10
bb9:
  call void @__olang_check_failed(ptr @olang_loc_31ae6e08448e2c5a_fc508ccbb81ed14e)
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
  %t73 = getelementptr %"std/prelude/map:MapEntry.033938f0d277fb4f29f5816905973be0", ptr %t72, i64 %t69
  %t74 = load %"std/prelude/map:MapEntry.033938f0d277fb4f29f5816905973be0", ptr %t73
  %t76 = load i64, ptr %l33, !tbaa !24
  %t77 = getelementptr { i64, ptr }, ptr %l32, i32 0, i32 1
  %t78 = load ptr, ptr %t77, !tbaa !27
  %t79 = getelementptr %"std/prelude/map:MapEntry.033938f0d277fb4f29f5816905973be0", ptr %t78, i64 %t76
  store %"std/prelude/map:MapEntry.033938f0d277fb4f29f5816905973be0" %t74, ptr %t79
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
  call void @__olang_check_failed(ptr @olang_loc_70d7765b799e4db7_3476719e7fa16f4b)
  unreachable
bb18:
  %t109 = load i64, ptr %l51, !tbaa !24
  %t110 = load i64, ptr %l52, !tbaa !24
  %t111 = icmp sle i64 %t109, %t110
  br i1 %t111, label %bb20, label %bb21
bb19:
  call void @__olang_check_failed(ptr @olang_loc_70d7765b799e4db7_3476719e7fa16f4b)
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
  call void @__olang_check_failed(ptr @olang_loc_70d7765b799e4db7_3476719e7fa16f4b)
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

define dso_local { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fmir_3aFnKey_2c_20Bool_3e_2e_He48a40de2402a856f88a2873bbe47052(ptr %v0, ptr %a0, { i64, [2 x i64] } %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca { i64, [2 x i64] }
  %l2 = alloca i64
  %l7 = alloca ptr
  %l10 = alloca i64
  %l17 = alloca { i64, [2 x i64] }
  %l19 = alloca { i64, [2 x i64] }
  %l21 = alloca i1
  %rv = alloca { i32, i64 }
  store ptr %a0, ptr %l0
  store { i64, [2 x i64] } %a1, ptr %l1
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
  %t12 = load { i64, [2 x i64] }, ptr %l1
  %t15 = call i64 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fmir_3aFnKey_2c_20Bool_3e_2e_H684fb1d8e83754dc01392c124de59340(ptr %v0, ptr %t11, { i64, [2 x i64] } %t12)
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
  %t37 = getelementptr %"std/prelude/map:MapEntry.033938f0d277fb4f29f5816905973be0", ptr %t36, i64 %t31
  %t38 = getelementptr %"std/prelude/map:MapEntry.033938f0d277fb4f29f5816905973be0", ptr %t37, i32 0, i32 0
  %t39 = load { i64, [2 x i64] }, ptr %t38
  store { i64, [2 x i64] } %t39, ptr %l17
  %t40 = load { i64, [2 x i64] }, ptr %l1
  store { i64, [2 x i64] } %t40, ptr %l19
  %t43 = call i1 @olang_2emir_2eHelperKind_2eEqual_2ecompiler_2fmir_3aFnKey(ptr %l17, ptr %l19)
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

define dso_local void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fmir_3aFnKey_2c_20Bool_3e_2e_He6968003b8dd5762fa82ec44b4ee1fc9(ptr %v0, ptr %a0, { i64, [2 x i64] } %a1, i1 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca { i64, [2 x i64] }
  %l2 = alloca i1
  %l3 = alloca i64
  %l4 = alloca i64
  %l9 = alloca ptr
  %l15 = alloca i64
  %l24 = alloca { i64, [2 x i64] }
  %l26 = alloca { i64, [2 x i64] }
  %l28 = alloca i1
  %t17 = alloca i64
  store ptr %a0, ptr %l0
  store { i64, [2 x i64] } %a1, ptr %l1
  store i1 %a2, ptr %l2
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
  call void @__olang_check_failed(ptr @olang_loc_8d0d1fc8faafb7e8_67030ad13592c9f4)
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
  call void @__olang_check_failed(ptr @olang_loc_8d0d1fc8faafb7e8_67030ad13592c9f4)
  unreachable
bb7:
  %t30 = load ptr, ptr %l0, !tbaa !29
  %t31 = load { i64, [2 x i64] }, ptr %l1
  %t34 = call i64 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fmir_3aFnKey_2c_20Bool_3e_2e_H684fb1d8e83754dc01392c124de59340(ptr %v0, ptr %t30, { i64, [2 x i64] } %t31)
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
  %t59 = getelementptr %"std/prelude/map:MapEntry.033938f0d277fb4f29f5816905973be0", ptr %t58, i64 %t53
  %t60 = getelementptr %"std/prelude/map:MapEntry.033938f0d277fb4f29f5816905973be0", ptr %t59, i32 0, i32 0
  %t61 = load { i64, [2 x i64] }, ptr %t60
  store { i64, [2 x i64] } %t61, ptr %l24
  %t62 = load { i64, [2 x i64] }, ptr %l1
  store { i64, [2 x i64] } %t62, ptr %l26
  %t65 = call i1 @olang_2emir_2eHelperKind_2eEqual_2ecompiler_2fmir_3aFnKey(ptr %l24, ptr %l26)
  store i1 %t65, ptr %l28
  br label %bb13
bb13:
  %t66 = load i1, ptr %l28, !tbaa !21
  br i1 %t66, label %bb14, label %bb15
bb14:
  %t67 = load ptr, ptr %l0, !tbaa !29
  %t68 = load i64, ptr %l4, !tbaa !24
  %t69 = load i1, ptr %l2, !tbaa !21
  %t72 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t67, i32 0, i32 0
  %t74 = getelementptr { i64, ptr }, ptr %t72, i32 0, i32 1
  %t75 = load ptr, ptr %t74, !tbaa !27
  %t76 = getelementptr %"std/prelude/map:MapEntry.033938f0d277fb4f29f5816905973be0", ptr %t75, i64 %t68
  %t77 = getelementptr %"std/prelude/map:MapEntry.033938f0d277fb4f29f5816905973be0", ptr %t76, i32 0, i32 1
  store i1 %t69, ptr %t77, !tbaa !21
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
  %t90 = load { i64, [2 x i64] }, ptr %l1
  %t91 = load i1, ptr %l2, !tbaa !21
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fmir_3aFnKey_2c_20Bool_3e_2e_Ha0aa9b7faca35e388214a899b2e93505(ptr %v0, ptr %t88, i64 %t89, { i64, [2 x i64] } %t90, i1 %t91)
  br label %bb19
bb19:
  br label %ret
ret:
  ret void
}

define dso_local i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fmir_3aFnKey_2c_20Bool_3e_2e_He8eb5d9c993ccccda8ec982916adbb1a(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %r = tail call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_H068cfedf7407289d149ee3c6f4c8aa20(ptr %v0, ptr %a0, i64 %a1)
  ret i1 %r
}

define dso_local i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fmir_3aFnKey_2c_20Bool_3e_2e_Hf0a5beca6f8aee4731a76bd327ae0a99(ptr %v0, ptr %a0, { i64, [2 x i64] } %a1) #0 {
entry:
  %l2 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i32
  %rv = alloca i1
  br label %start
start:
  br label %bb0
bb0:
  %t5 = call { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fmir_3aFnKey_2c_20Bool_3e_2e_He48a40de2402a856f88a2873bbe47052(ptr %v0, ptr %a0, { i64, [2 x i64] } %a1)
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

define dso_local %"std/prelude/map:MapEntry.d0636885f2b44490dbc61e56fa468a20" @std_2fprelude_2fmap_3aMapEntry_3cI64_2c_20compiler_2fmir_3aLocalId_3e_2ector(ptr %v0, i64 %a0, i32 %a1) #0 {
entry:
  %r = tail call %"std/prelude/map:MapEntry.d0636885f2b44490dbc61e56fa468a20" @std_2fprelude_2fmap_3aMapEntry_3cI64_2c_20compiler_2ftypes_3aTypeId_3e_2ector(ptr %v0, i64 %a0, i32 %a1)
  ret %"std/prelude/map:MapEntry.d0636885f2b44490dbc61e56fa468a20" %r
}

define dso_local %"std/prelude/map:MapEntry.8123c42416ba2f137f65a63a84d879b0" @std_2fprelude_2fmap_3aMapEntry_3cI64_2c_20compiler_2fmir_3aScopeRef_3e_2ector(ptr %v0, i64 %a0, { i64, [1 x i64] } %a1) #0 {
entry:
  %rv = alloca %"std/prelude/map:MapEntry.8123c42416ba2f137f65a63a84d879b0"
  br label %start
start:
  br label %bb0
bb0:
  %t6 = insertvalue %"std/prelude/map:MapEntry.8123c42416ba2f137f65a63a84d879b0" undef, i64 %a0, 0
  %t8 = insertvalue %"std/prelude/map:MapEntry.8123c42416ba2f137f65a63a84d879b0" %t6, { i64, [1 x i64] } %a1, 1
  store %"std/prelude/map:MapEntry.8123c42416ba2f137f65a63a84d879b0" %t8, ptr %rv
  br label %ret
ret:
  %rr = load %"std/prelude/map:MapEntry.8123c42416ba2f137f65a63a84d879b0", ptr %rv
  ret %"std/prelude/map:MapEntry.8123c42416ba2f137f65a63a84d879b0" %rr
}

define dso_local %"std/prelude/map:MapEntry.033938f0d277fb4f29f5816905973be0" @std_2fprelude_2fmap_3aMapEntry_3ccompiler_2fmir_3aFnKey_2c_20Bool_3e_2ector(ptr %v0, { i64, [2 x i64] } %a0, i1 %a1) #0 {
entry:
  %rv = alloca %"std/prelude/map:MapEntry.033938f0d277fb4f29f5816905973be0"
  br label %start
start:
  br label %bb0
bb0:
  %t6 = insertvalue %"std/prelude/map:MapEntry.033938f0d277fb4f29f5816905973be0" undef, { i64, [2 x i64] } %a0, 0
  %t8 = insertvalue %"std/prelude/map:MapEntry.033938f0d277fb4f29f5816905973be0" %t6, i1 %a1, 1
  store %"std/prelude/map:MapEntry.033938f0d277fb4f29f5816905973be0" %t8, ptr %rv
  br label %ret
ret:
  %rr = load %"std/prelude/map:MapEntry.033938f0d277fb4f29f5816905973be0", ptr %rv
  ret %"std/prelude/map:MapEntry.033938f0d277fb4f29f5816905973be0" %rr
}

define dso_local %"std/prelude/map:MapKeyIter.bf5835bb10600fe6a7fc1da14a6360d9" @std_2fprelude_2fmap_3aMapKeyIter_3cI64_2c_20std_2fprelude_2ftext_3aString_3e_2ector(ptr %v0, ptr %v1, ptr %a0) #0 {
entry:
  %r = tail call %"std/prelude/map:MapKeyIter.bf5835bb10600fe6a7fc1da14a6360d9" @std_2fprelude_2fmap_3aMapKeyIter_3cstd_2fprelude_2ftext_3aString_26_2c_20std_2fprelude_2ftext_3aString_26_3e_2ector(ptr %v0, ptr %v1, ptr %a0)
  ret %"std/prelude/map:MapKeyIter.bf5835bb10600fe6a7fc1da14a6360d9" %r
}

define dso_local %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2fmir_3aLocalId_3e_2ector(ptr %v0) #0 {
entry:
  %r = tail call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20compiler_2fsource_3aNameId_3e_2ector(ptr %v0)
  ret %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %r
}

define dso_local %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2fmir_3aScopeRef_3e_2ector(ptr %v0) #0 {
entry:
  %r = tail call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20compiler_2fsource_3aNameId_3e_2ector(ptr %v0)
  ret %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %r
}

define dso_local %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3ccompiler_2fmir_3aFnKey_2c_20Bool_3e_2ector(ptr %v0) #0 {
entry:
  %r = tail call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20compiler_2fsource_3aNameId_3e_2ector(ptr %v0)
  ret %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %r
}

define dso_local { i32, i64 } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eIndexOf_3cI64_3e(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca i64
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l13 = alloca i64
  %l16 = alloca i64
  %rv = alloca { i32, i64 }
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
  br label %bb15
bb9:
  br label %bb10
bb10:
  %t42 = load i64, ptr %l2, !tbaa !24
  %t43 = load i64, ptr %l6, !tbaa !24
  %t44 = load i64, ptr %l4, !tbaa !24
  %t47 = mul i64 %t43, %t44
  %t50 = add i64 %t42, %t47
  store i64 %t50, ptr %l7, !tbaa !24
  %t52 = load ptr, ptr %l0, !tbaa !29
  %t53 = load i64, ptr %l7, !tbaa !24
  %t55 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t52, i32 0, i32 0
  %t57 = getelementptr { i64, ptr }, ptr %t55, i32 0, i32 1
  %t58 = load ptr, ptr %t57, !tbaa !27
  %t59 = getelementptr i64, ptr %t58, i64 %t53
  %t60 = load i64, ptr %t59, !tbaa !34
  %t64 = icmp eq i64 %t60, %a1
  br i1 %t64, label %bb11, label %bb12
bb11:
  %t66 = load i64, ptr %l7, !tbaa !24
  %t68 = insertvalue { i32, i64 } zeroinitializer, i64 %t66, 1
  store { i32, i64 } %t68, ptr %rv
  br label %ret
bb12:
  br label %bb13
bb13:
  br label %bb14
bb14:
  %t69 = load i64, ptr %l6, !tbaa !24
  %t71 = add i64 %t69, 1
  store i64 %t71, ptr %l6, !tbaa !24
  br label %bb7
bb15:
  %t74 = insertvalue { i32, i64 } zeroinitializer, i32 65537, 0
  store { i32, i64 } %t74, ptr %rv
  br label %ret
ret:
  %rr = load { i32, i64 }, ptr %rv
  ret { i32, i64 } %rr
}

define dso_local i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eRemoveAt_3cI64_3e(ptr %v0, ptr %a0, i64 %a1) #0 {
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
  %l18 = alloca i64
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
  %t23 = getelementptr i64, ptr %t22, i64 %t17
  %t24 = load i64, ptr %t23, !tbaa !34
  store i64 %t24, ptr %l18, !tbaa !24
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
  %t91 = getelementptr i64, ptr %t90, i64 %t85
  %t92 = load i64, ptr %t91, !tbaa !34
  %t95 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t80, i32 0, i32 0
  %t97 = getelementptr { i64, ptr }, ptr %t95, i32 0, i32 1
  %t98 = load ptr, ptr %t97, !tbaa !27
  %t99 = getelementptr i64, ptr %t98, i64 %t81
  store i64 %t92, ptr %t99, !tbaa !34
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

define dso_local %"compiler/free:leaf" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ffree_3aleaf_3e_2eAt_3ccompiler_2ffree_3aleaf_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1) #0 {
entry:
  %rv = alloca %"compiler/free:leaf"
  br label %start
start:
  br label %bb0
bb0:
  %t4 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %a0, i32 0, i32 0
  %t6 = getelementptr { i64, ptr }, ptr %t4, i32 0, i32 1
  %t7 = load ptr, ptr %t6, !tbaa !27
  %t8 = getelementptr %"compiler/free:leaf", ptr %t7, i64 %a1
  %t9 = load %"compiler/free:leaf", ptr %t8
  store %"compiler/free:leaf" %t9, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/free:leaf", ptr %rv
  ret %"compiler/free:leaf" %rr
}

define dso_local i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ffree_3aleaf_3e_2eLen_3ccompiler_2ffree_3aleaf_3e(ptr %v0, ptr %a0) #0 {
entry:
  %r = tail call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cU64_3e_2eLen_3cU64_3e(ptr %v0, ptr %a0)
  ret i64 %r
}

define dso_local ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fgeneric_3aAnyTable_3e_2eRef_H53de96b937c1888202b72d022fb4696d(ptr %v0, ptr %v1, ptr %a0, i64 %a1) #0 {
entry:
  %rv = alloca ptr
  br label %start
start:
  br label %bb0
bb0:
  %t4 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %a0, i32 0, i32 0
  %t6 = getelementptr { i64, ptr }, ptr %t4, i32 0, i32 1
  %t7 = load ptr, ptr %t6, !tbaa !27
  %t8 = getelementptr %"compiler/generic:AnyTable", ptr %t7, i64 %a1
  store ptr %t8, ptr %rv
  br label %ret
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

define dso_local %"compiler/lower:Gap" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2flower_3aGap_3e_2eAt_3ccompiler_2flower_3aGap_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1) #0 {
entry:
  %rv = alloca %"compiler/lower:Gap"
  br label %start
start:
  br label %bb0
bb0:
  %t4 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %a0, i32 0, i32 0
  %t6 = getelementptr { i64, ptr }, ptr %t4, i32 0, i32 1
  %t7 = load ptr, ptr %t6, !tbaa !27
  %t8 = getelementptr %"compiler/lower:Gap", ptr %t7, i64 %a1
  %t9 = load %"compiler/lower:Gap", ptr %t8
  store %"compiler/lower:Gap" %t9, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/lower:Gap", ptr %rv
  ret %"compiler/lower:Gap" %rr
}

define dso_local i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2flower_3aGap_3e_2eLen_3ccompiler_2flower_3aGap_3e(ptr %v0, ptr %a0) #0 {
entry:
  %r = tail call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cU64_3e_2eLen_3cU64_3e(ptr %v0, ptr %a0)
  ret i64 %r
}

define dso_local void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2flower_3aGap_3e_2ePush_3ccompiler_2flower_3aGap_3e(ptr %v0, ptr %v1, ptr %a0, %"compiler/lower:Gap" %a1) #0 {
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
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2flower_3aGap_3e_2eroom_3ccompiler_2flower_3aGap_3e(ptr %v0, ptr %t15, i64 %t21)
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
  %t36 = getelementptr %"compiler/lower:Gap", ptr %t35, i64 %t28
  store %"compiler/lower:Gap" %a1, ptr %t36
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

define dso_local void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2flower_3aGap_3e_2eroom_3ccompiler_2flower_3aGap_3e(ptr %v0, ptr %a0, i64 %a1) noinline cold #0 {
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
  call void @__olang_check_failed(ptr @olang_loc_bd4d5de59a219420_4bdae22be829ea44)
  unreachable
bb15:
  %t71 = load i64, ptr %l36, !tbaa !24
  %t72 = load i64, ptr %l37, !tbaa !24
  %t73 = icmp sle i64 %t71, %t72
  br i1 %t73, label %bb17, label %bb18
bb16:
  call void @__olang_check_failed(ptr @olang_loc_bd4d5de59a219420_4bdae22be829ea44)
  unreachable
bb17:
  %t75 = getelementptr { i64, ptr }, ptr %l34, i32 0, i32 1
  %t76 = load ptr, ptr %t75, !tbaa !27
  %t77 = load i64, ptr %l36, !tbaa !24
  %t78 = getelementptr %"compiler/lower:Gap", ptr %t76, i64 0
  %t79 = sub i64 %t77, 0
  %t80 = insertvalue { i64, ptr } undef, i64 %t79, 0
  %t81 = insertvalue { i64, ptr } %t80, ptr %t78, 1
  store { i64, ptr } %t81, ptr %l4, !tbaa !27
  %t83 = load i64, ptr %l2, !tbaa !24
  %t87 = mul i64 %t83, 32
  %t88 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t87)
  %t89 = insertvalue { i64, ptr } undef, i64 %t83, 0
  %t90 = insertvalue { i64, ptr } %t89, ptr %t88, 1
  store { i64, ptr } %t90, ptr %l44, !tbaa !27
  store i64 0, ptr %l45, !tbaa !24
  store i64 0, ptr %l6, !tbaa !24
  br label %bb19
bb18:
  call void @__olang_check_failed(ptr @olang_loc_bd4d5de59a219420_4bdae22be829ea44)
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
  %t106 = getelementptr %"compiler/lower:Gap", ptr %t105, i64 %t102
  %t107 = load %"compiler/lower:Gap", ptr %t106
  %t109 = load i64, ptr %l45, !tbaa !24
  %t110 = getelementptr { i64, ptr }, ptr %l44, i32 0, i32 1
  %t111 = load ptr, ptr %t110, !tbaa !27
  %t112 = getelementptr %"compiler/lower:Gap", ptr %t111, i64 %t109
  store %"compiler/lower:Gap" %t107, ptr %t112
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

define dso_local %"compiler/lower:collectCtx" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2flower_3acollectCtx_3e_2eAt__Hce97d3b6a95327627873f207e844a422(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %rv = alloca %"compiler/lower:collectCtx"
  br label %start
start:
  br label %bb0
bb0:
  %t4 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %a0, i32 0, i32 0
  %t6 = getelementptr { i64, ptr }, ptr %t4, i32 0, i32 1
  %t7 = load ptr, ptr %t6, !tbaa !27
  %t8 = getelementptr %"compiler/lower:collectCtx", ptr %t7, i64 %a1
  %t9 = load %"compiler/lower:collectCtx", ptr %t8
  store %"compiler/lower:collectCtx" %t9, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/lower:collectCtx", ptr %rv
  ret %"compiler/lower:collectCtx" %rr
}

define dso_local i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2flower_3acollectCtx_3e_2eLen_H6eade83fd48a7a0e84be67fdfc468e69(ptr %v0, ptr %a0) #0 {
entry:
  %r = tail call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cU64_3e_2eLen_3cU64_3e(ptr %v0, ptr %a0)
  ret i64 %r
}

define dso_local { i32, %"compiler/lower:collectCtx" } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2flower_3acollectCtx_3e_2ePop_He1200c0c51a1e2029459d9d8221d233c(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l5 = alloca ptr
  %rv = alloca { i32, %"compiler/lower:collectCtx" }
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t1, i32 0, i32 1
  %t4 = load i64, ptr %t3, !tbaa !24
  %t6 = icmp eq i64 %t4, 0
  br i1 %t6, label %bb1, label %bb2
bb1:
  %t9 = insertvalue { i32, %"compiler/lower:collectCtx" } zeroinitializer, i32 65536, 0
  store { i32, %"compiler/lower:collectCtx" } %t9, ptr %rv
  br label %ret
bb2:
  br label %bb3
bb3:
  %t10 = load ptr, ptr %l0, !tbaa !29
  store ptr %t10, ptr %l5, !tbaa !29
  %t11 = load ptr, ptr %l5, !tbaa !29
  %t12 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t11, i32 0, i32 1
  %t13 = load i64, ptr %t12, !tbaa !24
  %t15 = sub i64 %t13, 1
  %t17 = load ptr, ptr %l5, !tbaa !29
  %t18 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t17, i32 0, i32 1
  store i64 %t15, ptr %t18, !tbaa !24
  %t19 = load ptr, ptr %l0, !tbaa !29
  %t20 = load ptr, ptr %l0, !tbaa !29
  %t22 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t20, i32 0, i32 1
  %t23 = load i64, ptr %t22, !tbaa !24
  %t25 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t19, i32 0, i32 0
  %t27 = getelementptr { i64, ptr }, ptr %t25, i32 0, i32 1
  %t28 = load ptr, ptr %t27, !tbaa !27
  %t29 = getelementptr %"compiler/lower:collectCtx", ptr %t28, i64 %t23
  %t30 = load %"compiler/lower:collectCtx", ptr %t29
  %t32 = insertvalue { i32, %"compiler/lower:collectCtx" } zeroinitializer, %"compiler/lower:collectCtx" %t30, 1
  store { i32, %"compiler/lower:collectCtx" } %t32, ptr %rv
  br label %ret
ret:
  %rr = load { i32, %"compiler/lower:collectCtx" }, ptr %rv
  ret { i32, %"compiler/lower:collectCtx" } %rr
}

define dso_local void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2flower_3acollectCtx_3e_2ePus_Hd0ab7b9373bf150d973fdf7c33c4c364(ptr %v0, ptr %a0, %"compiler/lower:collectCtx" %a1) #0 {
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
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2flower_3acollectCtx_3e_2eroo_Hd6ce3f0d5c36cbfc952e979cf2c9961e(ptr %v0, ptr %t15, i64 %t21)
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
  %t36 = getelementptr %"compiler/lower:collectCtx", ptr %t35, i64 %t28
  store %"compiler/lower:collectCtx" %a1, ptr %t36
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

define dso_local void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2flower_3acollectCtx_3e_2eroo_Hd6ce3f0d5c36cbfc952e979cf2c9961e(ptr %v0, ptr %a0, i64 %a1) noinline cold #0 {
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
  call void @__olang_check_failed(ptr @olang_loc_67b00e737c45bee3_63119daa8b8b7597)
  unreachable
bb15:
  %t71 = load i64, ptr %l36, !tbaa !24
  %t72 = load i64, ptr %l37, !tbaa !24
  %t73 = icmp sle i64 %t71, %t72
  br i1 %t73, label %bb17, label %bb18
bb16:
  call void @__olang_check_failed(ptr @olang_loc_67b00e737c45bee3_63119daa8b8b7597)
  unreachable
bb17:
  %t75 = getelementptr { i64, ptr }, ptr %l34, i32 0, i32 1
  %t76 = load ptr, ptr %t75, !tbaa !27
  %t77 = load i64, ptr %l36, !tbaa !24
  %t78 = getelementptr %"compiler/lower:collectCtx", ptr %t76, i64 0
  %t79 = sub i64 %t77, 0
  %t80 = insertvalue { i64, ptr } undef, i64 %t79, 0
  %t81 = insertvalue { i64, ptr } %t80, ptr %t78, 1
  store { i64, ptr } %t81, ptr %l4, !tbaa !27
  %t83 = load i64, ptr %l2, !tbaa !24
  %t87 = mul i64 %t83, 40
  %t88 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t87)
  %t89 = insertvalue { i64, ptr } undef, i64 %t83, 0
  %t90 = insertvalue { i64, ptr } %t89, ptr %t88, 1
  store { i64, ptr } %t90, ptr %l44, !tbaa !27
  store i64 0, ptr %l45, !tbaa !24
  store i64 0, ptr %l6, !tbaa !24
  br label %bb19
bb18:
  call void @__olang_check_failed(ptr @olang_loc_67b00e737c45bee3_63119daa8b8b7597)
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
  %t106 = getelementptr %"compiler/lower:collectCtx", ptr %t105, i64 %t102
  %t107 = load %"compiler/lower:collectCtx", ptr %t106
  %t109 = load i64, ptr %l45, !tbaa !24
  %t110 = getelementptr { i64, ptr }, ptr %l44, i32 0, i32 1
  %t111 = load ptr, ptr %t110, !tbaa !27
  %t112 = getelementptr %"compiler/lower:collectCtx", ptr %t111, i64 %t109
  store %"compiler/lower:collectCtx" %t107, ptr %t112
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

define dso_local %"compiler/lower:level" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2flower_3alevel_3e_2eAt_3ccompiler_2flower_3alevel_3e(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %rv = alloca %"compiler/lower:level"
  br label %start
start:
  br label %bb0
bb0:
  %t4 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %a0, i32 0, i32 0
  %t6 = getelementptr { i64, ptr }, ptr %t4, i32 0, i32 1
  %t7 = load ptr, ptr %t6, !tbaa !27
  %t8 = getelementptr %"compiler/lower:level", ptr %t7, i64 %a1
  %t9 = load %"compiler/lower:level", ptr %t8
  store %"compiler/lower:level" %t9, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/lower:level", ptr %rv
  ret %"compiler/lower:level" %rr
}

define dso_local i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2flower_3alevel_3e_2eLen_3ccompiler_2flower_3alevel_3e(ptr %v0, ptr %a0) #0 {
entry:
  %r = tail call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cU64_3e_2eLen_3cU64_3e(ptr %v0, ptr %a0)
  ret i64 %r
}

define dso_local { i32, %"compiler/lower:level" } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2flower_3alevel_3e_2ePop_3ccompiler_2flower_3alevel_3e(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l5 = alloca ptr
  %rv = alloca { i32, %"compiler/lower:level" }
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t1, i32 0, i32 1
  %t4 = load i64, ptr %t3, !tbaa !24
  %t6 = icmp eq i64 %t4, 0
  br i1 %t6, label %bb1, label %bb2
bb1:
  %t9 = insertvalue { i32, %"compiler/lower:level" } zeroinitializer, i32 65536, 0
  store { i32, %"compiler/lower:level" } %t9, ptr %rv
  br label %ret
bb2:
  br label %bb3
bb3:
  %t10 = load ptr, ptr %l0, !tbaa !29
  store ptr %t10, ptr %l5, !tbaa !29
  %t11 = load ptr, ptr %l5, !tbaa !29
  %t12 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t11, i32 0, i32 1
  %t13 = load i64, ptr %t12, !tbaa !24
  %t15 = sub i64 %t13, 1
  %t17 = load ptr, ptr %l5, !tbaa !29
  %t18 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t17, i32 0, i32 1
  store i64 %t15, ptr %t18, !tbaa !24
  %t19 = load ptr, ptr %l0, !tbaa !29
  %t20 = load ptr, ptr %l0, !tbaa !29
  %t22 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t20, i32 0, i32 1
  %t23 = load i64, ptr %t22, !tbaa !24
  %t25 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t19, i32 0, i32 0
  %t27 = getelementptr { i64, ptr }, ptr %t25, i32 0, i32 1
  %t28 = load ptr, ptr %t27, !tbaa !27
  %t29 = getelementptr %"compiler/lower:level", ptr %t28, i64 %t23
  %t30 = load %"compiler/lower:level", ptr %t29
  %t32 = insertvalue { i32, %"compiler/lower:level" } zeroinitializer, %"compiler/lower:level" %t30, 1
  store { i32, %"compiler/lower:level" } %t32, ptr %rv
  br label %ret
ret:
  %rr = load { i32, %"compiler/lower:level" }, ptr %rv
  ret { i32, %"compiler/lower:level" } %rr
}

define dso_local void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2flower_3alevel_3e_2ePush_3ccompiler_2flower_3alevel_3e(ptr %v0, ptr %a0, %"compiler/lower:level" %a1) #0 {
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
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2flower_3alevel_3e_2eroom_3ccompiler_2flower_3alevel_3e(ptr %v0, ptr %t15, i64 %t21)
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
  %t36 = getelementptr %"compiler/lower:level", ptr %t35, i64 %t28
  store %"compiler/lower:level" %a1, ptr %t36
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

define dso_local ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2flower_3alevel_3e_2eRef_3ccompiler_2flower_3alevel_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1) #0 {
entry:
  %rv = alloca ptr
  br label %start
start:
  br label %bb0
bb0:
  %t4 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %a0, i32 0, i32 0
  %t6 = getelementptr { i64, ptr }, ptr %t4, i32 0, i32 1
  %t7 = load ptr, ptr %t6, !tbaa !27
  %t8 = getelementptr %"compiler/lower:level", ptr %t7, i64 %a1
  store ptr %t8, ptr %rv
  br label %ret
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

define dso_local void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2flower_3alevel_3e_2eroom_3ccompiler_2flower_3alevel_3e(ptr %v0, ptr %a0, i64 %a1) noinline cold #0 {
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
  call void @__olang_check_failed(ptr @olang_loc_33db97d4196cb0ac_97b376f7d739bfe0)
  unreachable
bb15:
  %t71 = load i64, ptr %l36, !tbaa !24
  %t72 = load i64, ptr %l37, !tbaa !24
  %t73 = icmp sle i64 %t71, %t72
  br i1 %t73, label %bb17, label %bb18
bb16:
  call void @__olang_check_failed(ptr @olang_loc_33db97d4196cb0ac_97b376f7d739bfe0)
  unreachable
bb17:
  %t75 = getelementptr { i64, ptr }, ptr %l34, i32 0, i32 1
  %t76 = load ptr, ptr %t75, !tbaa !27
  %t77 = load i64, ptr %l36, !tbaa !24
  %t78 = getelementptr %"compiler/lower:level", ptr %t76, i64 0
  %t79 = sub i64 %t77, 0
  %t80 = insertvalue { i64, ptr } undef, i64 %t79, 0
  %t81 = insertvalue { i64, ptr } %t80, ptr %t78, 1
  store { i64, ptr } %t81, ptr %l4, !tbaa !27
  %t83 = load i64, ptr %l2, !tbaa !24
  %t87 = mul i64 %t83, 12
  %t88 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t87)
  %t89 = insertvalue { i64, ptr } undef, i64 %t83, 0
  %t90 = insertvalue { i64, ptr } %t89, ptr %t88, 1
  store { i64, ptr } %t90, ptr %l44, !tbaa !27
  store i64 0, ptr %l45, !tbaa !24
  store i64 0, ptr %l6, !tbaa !24
  br label %bb19
bb18:
  call void @__olang_check_failed(ptr @olang_loc_33db97d4196cb0ac_97b376f7d739bfe0)
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
  %t106 = getelementptr %"compiler/lower:level", ptr %t105, i64 %t102
  %t107 = load %"compiler/lower:level", ptr %t106
  %t109 = load i64, ptr %l45, !tbaa !24
  %t110 = getelementptr { i64, ptr }, ptr %l44, i32 0, i32 1
  %t111 = load ptr, ptr %t110, !tbaa !27
  %t112 = getelementptr %"compiler/lower:level", ptr %t111, i64 %t109
  store %"compiler/lower:level" %t107, ptr %t112
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

define dso_local i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2flower_3aloopCtx_3e_2eLen_3ccompiler_2flower_3aloopCtx_3e(ptr %v0, ptr %a0) #0 {
entry:
  %r = tail call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cU64_3e_2eLen_3cU64_3e(ptr %v0, ptr %a0)
  ret i64 %r
}

define dso_local { i32, %"compiler/lower:loopCtx" } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2flower_3aloopCtx_3e_2ePop_3ccompiler_2flower_3aloopCtx_3e(ptr %v0, ptr %v1, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l5 = alloca ptr
  %rv = alloca { i32, %"compiler/lower:loopCtx" }
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t1, i32 0, i32 1
  %t4 = load i64, ptr %t3, !tbaa !24
  %t6 = icmp eq i64 %t4, 0
  br i1 %t6, label %bb1, label %bb2
bb1:
  %t9 = insertvalue { i32, %"compiler/lower:loopCtx" } zeroinitializer, i32 65536, 0
  store { i32, %"compiler/lower:loopCtx" } %t9, ptr %rv
  br label %ret
bb2:
  br label %bb3
bb3:
  %t10 = load ptr, ptr %l0, !tbaa !29
  store ptr %t10, ptr %l5, !tbaa !29
  %t11 = load ptr, ptr %l5, !tbaa !29
  %t12 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t11, i32 0, i32 1
  %t13 = load i64, ptr %t12, !tbaa !24
  %t15 = sub i64 %t13, 1
  %t17 = load ptr, ptr %l5, !tbaa !29
  %t18 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t17, i32 0, i32 1
  store i64 %t15, ptr %t18, !tbaa !24
  %t19 = load ptr, ptr %l0, !tbaa !29
  %t20 = load ptr, ptr %l0, !tbaa !29
  %t22 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t20, i32 0, i32 1
  %t23 = load i64, ptr %t22, !tbaa !24
  %t25 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t19, i32 0, i32 0
  %t27 = getelementptr { i64, ptr }, ptr %t25, i32 0, i32 1
  %t28 = load ptr, ptr %t27, !tbaa !27
  %t29 = getelementptr %"compiler/lower:loopCtx", ptr %t28, i64 %t23
  %t30 = load %"compiler/lower:loopCtx", ptr %t29
  store %"compiler/lower:loopCtx" zeroinitializer, ptr %t29
  %t32 = insertvalue { i32, %"compiler/lower:loopCtx" } zeroinitializer, %"compiler/lower:loopCtx" %t30, 1
  store { i32, %"compiler/lower:loopCtx" } %t32, ptr %rv
  br label %ret
ret:
  %rr = load { i32, %"compiler/lower:loopCtx" }, ptr %rv
  ret { i32, %"compiler/lower:loopCtx" } %rr
}

define dso_local void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2flower_3aloopCtx_3e_2ePush_3ccompiler_2flower_3aloopCtx_3e(ptr %v0, ptr %v1, ptr %a0, %"compiler/lower:loopCtx" %a1) #0 {
entry:
  %l0 = alloca ptr
  %l12 = alloca ptr
  %l14 = alloca i64
  %l15 = alloca %"compiler/lower:loopCtx"
  %l17 = alloca %"compiler/lower:loopCtx"
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
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2flower_3aloopCtx_3e_2eroom_3ccompiler_2flower_3aloopCtx_3e(ptr %v0, ptr %t15, i64 %t21)
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
  store %"compiler/lower:loopCtx" %a1, ptr %l15
  %t31 = call %"compiler/lower:loopCtx" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2flower_3aloopCtx(ptr %v0, ptr %l15)
  store %"compiler/lower:loopCtx" %t31, ptr %l17
  br label %bb5
bb5:
  %t32 = load %"compiler/lower:loopCtx", ptr %l17
  %t33 = load ptr, ptr %l12, !tbaa !29
  %t34 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t33, i32 0, i32 0
  %t35 = load i64, ptr %l14, !tbaa !24
  %t36 = getelementptr { i64, ptr }, ptr %t34, i32 0, i32 1
  %t37 = load ptr, ptr %t36, !tbaa !27
  %t38 = getelementptr %"compiler/lower:loopCtx", ptr %t37, i64 %t35
  store %"compiler/lower:loopCtx" %t32, ptr %t38
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

define dso_local ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2flower_3aloopCtx_3e_2eRefMut_3ccompiler_2flower_3aloopCtx_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1) #0 {
entry:
  %rv = alloca ptr
  br label %start
start:
  br label %bb0
bb0:
  %t4 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %a0, i32 0, i32 0
  %t6 = getelementptr { i64, ptr }, ptr %t4, i32 0, i32 1
  %t7 = load ptr, ptr %t6, !tbaa !27
  %t8 = getelementptr %"compiler/lower:loopCtx", ptr %t7, i64 %a1
  store ptr %t8, ptr %rv
  br label %ret
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

@std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2flower_3aloopCtx_3e_2eRef_3ccompiler_2flower_3aloopCtx_3e = dso_local alias ptr (ptr, ptr, ptr, i64), ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2flower_3aloopCtx_3e_2eRefMut_3ccompiler_2flower_3aloopCtx_3e
define dso_local void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2flower_3aloopCtx_3e_2eroom_3ccompiler_2flower_3aloopCtx_3e(ptr %v0, ptr %a0, i64 %a1) noinline cold #0 {
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
  call void @__olang_check_failed(ptr @olang_loc_2a0308d202975a06_497d9fbbbd60595a)
  unreachable
bb15:
  %t71 = load i64, ptr %l36, !tbaa !24
  %t72 = load i64, ptr %l37, !tbaa !24
  %t73 = icmp sle i64 %t71, %t72
  br i1 %t73, label %bb17, label %bb18
bb16:
  call void @__olang_check_failed(ptr @olang_loc_2a0308d202975a06_497d9fbbbd60595a)
  unreachable
bb17:
  %t75 = getelementptr { i64, ptr }, ptr %l34, i32 0, i32 1
  %t76 = load ptr, ptr %t75, !tbaa !27
  %t77 = load i64, ptr %l36, !tbaa !24
  %t78 = getelementptr %"compiler/lower:loopCtx", ptr %t76, i64 0
  %t79 = sub i64 %t77, 0
  %t80 = insertvalue { i64, ptr } undef, i64 %t79, 0
  %t81 = insertvalue { i64, ptr } %t80, ptr %t78, 1
  store { i64, ptr } %t81, ptr %l4, !tbaa !27
  %t83 = load i64, ptr %l2, !tbaa !24
  %t87 = mul i64 %t83, 88
  %t88 = call ptr @__olang_scope_alloc_zeroed(ptr %v0, i64 %t87)
  %t89 = insertvalue { i64, ptr } undef, i64 %t83, 0
  %t90 = insertvalue { i64, ptr } %t89, ptr %t88, 1
  store { i64, ptr } %t90, ptr %l44, !tbaa !27
  store i64 0, ptr %l45, !tbaa !24
  store i64 0, ptr %l6, !tbaa !24
  br label %bb19
bb18:
  call void @__olang_check_failed(ptr @olang_loc_2a0308d202975a06_497d9fbbbd60595a)
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
  %t106 = getelementptr %"compiler/lower:loopCtx", ptr %t105, i64 %t102
  %t107 = load %"compiler/lower:loopCtx", ptr %t106
  store %"compiler/lower:loopCtx" zeroinitializer, ptr %t106
  %t109 = load i64, ptr %l45, !tbaa !24
  %t110 = getelementptr { i64, ptr }, ptr %l44, i32 0, i32 1
  %t111 = load ptr, ptr %t110, !tbaa !27
  %t112 = getelementptr %"compiler/lower:loopCtx", ptr %t111, i64 %t109
  store %"compiler/lower:loopCtx" %t107, ptr %t112
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

define dso_local %"compiler/lower:pl" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2flower_3apl_3e_2eAt_3ccompiler_2flower_3apl_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1) #0 {
entry:
  %rv = alloca %"compiler/lower:pl"
  br label %start
start:
  br label %bb0
bb0:
  %t4 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %a0, i32 0, i32 0
  %t6 = getelementptr { i64, ptr }, ptr %t4, i32 0, i32 1
  %t7 = load ptr, ptr %t6, !tbaa !27
  %t8 = getelementptr %"compiler/lower:pl", ptr %t7, i64 %a1
  %t9 = load %"compiler/lower:pl", ptr %t8
  store %"compiler/lower:pl" %t9, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/lower:pl", ptr %rv
  ret %"compiler/lower:pl" %rr
}

define dso_local i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2flower_3apl_3e_2eLen_3ccompiler_2flower_3apl_3e(ptr %v0, ptr %a0) #0 {
entry:
  %r = tail call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cU64_3e_2eLen_3cU64_3e(ptr %v0, ptr %a0)
  ret i64 %r
}

define dso_local { i32, %"compiler/lower:pl" } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2flower_3apl_3e_2ePop_3ccompiler_2flower_3apl_3e(ptr %v0, ptr %v1, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l5 = alloca ptr
  %rv = alloca { i32, %"compiler/lower:pl" }
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t1, i32 0, i32 1
  %t4 = load i64, ptr %t3, !tbaa !24
  %t6 = icmp eq i64 %t4, 0
  br i1 %t6, label %bb1, label %bb2
bb1:
  %t9 = insertvalue { i32, %"compiler/lower:pl" } zeroinitializer, i32 65536, 0
  store { i32, %"compiler/lower:pl" } %t9, ptr %rv
  br label %ret
bb2:
  br label %bb3
bb3:
  %t10 = load ptr, ptr %l0, !tbaa !29
  store ptr %t10, ptr %l5, !tbaa !29
  %t11 = load ptr, ptr %l5, !tbaa !29
  %t12 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t11, i32 0, i32 1
  %t13 = load i64, ptr %t12, !tbaa !24
  %t15 = sub i64 %t13, 1
  %t17 = load ptr, ptr %l5, !tbaa !29
  %t18 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t17, i32 0, i32 1
  store i64 %t15, ptr %t18, !tbaa !24
  %t19 = load ptr, ptr %l0, !tbaa !29
  %t20 = load ptr, ptr %l0, !tbaa !29
  %t22 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t20, i32 0, i32 1
  %t23 = load i64, ptr %t22, !tbaa !24
  %t25 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t19, i32 0, i32 0
  %t27 = getelementptr { i64, ptr }, ptr %t25, i32 0, i32 1
  %t28 = load ptr, ptr %t27, !tbaa !27
  %t29 = getelementptr %"compiler/lower:pl", ptr %t28, i64 %t23
  %t30 = load %"compiler/lower:pl", ptr %t29
  store %"compiler/lower:pl" zeroinitializer, ptr %t29
  %t32 = insertvalue { i32, %"compiler/lower:pl" } zeroinitializer, %"compiler/lower:pl" %t30, 1
  store { i32, %"compiler/lower:pl" } %t32, ptr %rv
  br label %ret
ret:
  %rr = load { i32, %"compiler/lower:pl" }, ptr %rv
  ret { i32, %"compiler/lower:pl" } %rr
}

define dso_local void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2flower_3apl_3e_2ePush_3ccompiler_2flower_3apl_3e(ptr %v0, ptr %v1, ptr %a0, %"compiler/lower:pl" %a1) #0 {
entry:
  %l0 = alloca ptr
  %l12 = alloca ptr
  %l14 = alloca i64
  %l15 = alloca %"compiler/lower:pl"
  %l17 = alloca %"compiler/lower:pl"
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
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2flower_3apl_3e_2eroom_3ccompiler_2flower_3apl_3e(ptr %v0, ptr %t15, i64 %t21)
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
  store %"compiler/lower:pl" %a1, ptr %l15
  %t31 = call %"compiler/lower:pl" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2flower_3apl(ptr %v0, ptr %l15)
  store %"compiler/lower:pl" %t31, ptr %l17
  br label %bb5
bb5:
  %t32 = load %"compiler/lower:pl", ptr %l17
  %t33 = load ptr, ptr %l12, !tbaa !29
  %t34 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t33, i32 0, i32 0
  %t35 = load i64, ptr %l14, !tbaa !24
  %t36 = getelementptr { i64, ptr }, ptr %t34, i32 0, i32 1
  %t37 = load ptr, ptr %t36, !tbaa !27
  %t38 = getelementptr %"compiler/lower:pl", ptr %t37, i64 %t35
  store %"compiler/lower:pl" %t32, ptr %t38
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

define dso_local void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2flower_3apl_3e_2eroom_3ccompiler_2flower_3apl_3e(ptr %v0, ptr %a0, i64 %a1) noinline cold #0 {
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
  call void @__olang_check_failed(ptr @olang_loc_76b86c55e07919f6_264aefe04044bd1a)
  unreachable
bb15:
  %t71 = load i64, ptr %l36, !tbaa !24
  %t72 = load i64, ptr %l37, !tbaa !24
  %t73 = icmp sle i64 %t71, %t72
  br i1 %t73, label %bb17, label %bb18
bb16:
  call void @__olang_check_failed(ptr @olang_loc_76b86c55e07919f6_264aefe04044bd1a)
  unreachable
bb17:
  %t75 = getelementptr { i64, ptr }, ptr %l34, i32 0, i32 1
  %t76 = load ptr, ptr %t75, !tbaa !27
  %t77 = load i64, ptr %l36, !tbaa !24
  %t78 = getelementptr %"compiler/lower:pl", ptr %t76, i64 0
  %t79 = sub i64 %t77, 0
  %t80 = insertvalue { i64, ptr } undef, i64 %t79, 0
  %t81 = insertvalue { i64, ptr } %t80, ptr %t78, 1
  store { i64, ptr } %t81, ptr %l4, !tbaa !27
  %t83 = load i64, ptr %l2, !tbaa !24
  %t87 = mul i64 %t83, 72
  %t88 = call ptr @__olang_scope_alloc_zeroed(ptr %v0, i64 %t87)
  %t89 = insertvalue { i64, ptr } undef, i64 %t83, 0
  %t90 = insertvalue { i64, ptr } %t89, ptr %t88, 1
  store { i64, ptr } %t90, ptr %l44, !tbaa !27
  store i64 0, ptr %l45, !tbaa !24
  store i64 0, ptr %l6, !tbaa !24
  br label %bb19
bb18:
  call void @__olang_check_failed(ptr @olang_loc_76b86c55e07919f6_264aefe04044bd1a)
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
  %t106 = getelementptr %"compiler/lower:pl", ptr %t105, i64 %t102
  %t107 = load %"compiler/lower:pl", ptr %t106
  store %"compiler/lower:pl" zeroinitializer, ptr %t106
  %t109 = load i64, ptr %l45, !tbaa !24
  %t110 = getelementptr { i64, ptr }, ptr %l44, i32 0, i32 1
  %t111 = load ptr, ptr %t110, !tbaa !27
  %t112 = getelementptr %"compiler/lower:pl", ptr %t111, i64 %t109
  store %"compiler/lower:pl" %t107, ptr %t112
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

define dso_local %"compiler/lower:relPath" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2flower_3arelPath_3e_2eAt_3ccompiler_2flower_3arelPath_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1) #0 {
entry:
  %rv = alloca %"compiler/lower:relPath"
  br label %start
start:
  br label %bb0
bb0:
  %t4 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %a0, i32 0, i32 0
  %t6 = getelementptr { i64, ptr }, ptr %t4, i32 0, i32 1
  %t7 = load ptr, ptr %t6, !tbaa !27
  %t8 = getelementptr %"compiler/lower:relPath", ptr %t7, i64 %a1
  %t9 = load %"compiler/lower:relPath", ptr %t8
  store %"compiler/lower:relPath" %t9, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/lower:relPath", ptr %rv
  ret %"compiler/lower:relPath" %rr
}

define dso_local i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2flower_3arelPath_3e_2eLen_3ccompiler_2flower_3arelPath_3e(ptr %v0, ptr %a0) #0 {
entry:
  %r = tail call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cU64_3e_2eLen_3cU64_3e(ptr %v0, ptr %a0)
  ret i64 %r
}

define dso_local void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2flower_3arelPath_3e_2ePush_3ccompiler_2flower_3arelPath_3e(ptr %v0, ptr %v1, ptr %a0, %"compiler/lower:relPath" %a1) #0 {
entry:
  %l0 = alloca ptr
  %l12 = alloca ptr
  %l14 = alloca i64
  %l15 = alloca %"compiler/lower:relPath"
  %l17 = alloca %"compiler/lower:relPath"
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
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2flower_3arelPath_3e_2eroom_3ccompiler_2flower_3arelPath_3e(ptr %v0, ptr %t15, i64 %t21)
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
  store %"compiler/lower:relPath" %a1, ptr %l15
  %t31 = call %"compiler/lower:relPath" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2flower_3arelPath(ptr %v0, ptr %l15)
  store %"compiler/lower:relPath" %t31, ptr %l17
  br label %bb5
bb5:
  %t32 = load %"compiler/lower:relPath", ptr %l17
  %t33 = load ptr, ptr %l12, !tbaa !29
  %t34 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t33, i32 0, i32 0
  %t35 = load i64, ptr %l14, !tbaa !24
  %t36 = getelementptr { i64, ptr }, ptr %t34, i32 0, i32 1
  %t37 = load ptr, ptr %t36, !tbaa !27
  %t38 = getelementptr %"compiler/lower:relPath", ptr %t37, i64 %t35
  store %"compiler/lower:relPath" %t32, ptr %t38
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

define dso_local void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2flower_3arelPath_3e_2eroom_3ccompiler_2flower_3arelPath_3e(ptr %v0, ptr %a0, i64 %a1) noinline cold #0 {
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
  call void @__olang_check_failed(ptr @olang_loc_36158707b7c2e8c0_5ade71222ca2e1f4)
  unreachable
bb15:
  %t71 = load i64, ptr %l36, !tbaa !24
  %t72 = load i64, ptr %l37, !tbaa !24
  %t73 = icmp sle i64 %t71, %t72
  br i1 %t73, label %bb17, label %bb18
bb16:
  call void @__olang_check_failed(ptr @olang_loc_36158707b7c2e8c0_5ade71222ca2e1f4)
  unreachable
bb17:
  %t75 = getelementptr { i64, ptr }, ptr %l34, i32 0, i32 1
  %t76 = load ptr, ptr %t75, !tbaa !27
  %t77 = load i64, ptr %l36, !tbaa !24
  %t78 = getelementptr %"compiler/lower:relPath", ptr %t76, i64 0
  %t79 = sub i64 %t77, 0
  %t80 = insertvalue { i64, ptr } undef, i64 %t79, 0
  %t81 = insertvalue { i64, ptr } %t80, ptr %t78, 1
  store { i64, ptr } %t81, ptr %l4, !tbaa !27
  %t83 = load i64, ptr %l2, !tbaa !24
  %t87 = mul i64 %t83, 24
  %t88 = call ptr @__olang_scope_alloc_zeroed(ptr %v0, i64 %t87)
  %t89 = insertvalue { i64, ptr } undef, i64 %t83, 0
  %t90 = insertvalue { i64, ptr } %t89, ptr %t88, 1
  store { i64, ptr } %t90, ptr %l44, !tbaa !27
  store i64 0, ptr %l45, !tbaa !24
  store i64 0, ptr %l6, !tbaa !24
  br label %bb19
bb18:
  call void @__olang_check_failed(ptr @olang_loc_36158707b7c2e8c0_5ade71222ca2e1f4)
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
  %t106 = getelementptr %"compiler/lower:relPath", ptr %t105, i64 %t102
  %t107 = load %"compiler/lower:relPath", ptr %t106
  store %"compiler/lower:relPath" zeroinitializer, ptr %t106
  %t109 = load i64, ptr %l45, !tbaa !24
  %t110 = getelementptr { i64, ptr }, ptr %l44, i32 0, i32 1
  %t111 = load ptr, ptr %t110, !tbaa !27
  %t112 = getelementptr %"compiler/lower:relPath", ptr %t111, i64 %t109
  store %"compiler/lower:relPath" %t107, ptr %t112
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

define dso_local %"compiler/lower:tryCtx" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2flower_3atryCtx_3e_2eAt_3ccompiler_2flower_3atryCtx_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1) #0 {
entry:
  %rv = alloca %"compiler/lower:tryCtx"
  br label %start
start:
  br label %bb0
bb0:
  %t4 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %a0, i32 0, i32 0
  %t6 = getelementptr { i64, ptr }, ptr %t4, i32 0, i32 1
  %t7 = load ptr, ptr %t6, !tbaa !27
  %t8 = getelementptr %"compiler/lower:tryCtx", ptr %t7, i64 %a1
  %t9 = load %"compiler/lower:tryCtx", ptr %t8
  store %"compiler/lower:tryCtx" %t9, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/lower:tryCtx", ptr %rv
  ret %"compiler/lower:tryCtx" %rr
}

define dso_local i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2flower_3atryCtx_3e_2eLen_3ccompiler_2flower_3atryCtx_3e(ptr %v0, ptr %a0) #0 {
entry:
  %r = tail call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cU64_3e_2eLen_3cU64_3e(ptr %v0, ptr %a0)
  ret i64 %r
}

define dso_local { i32, %"compiler/lower:tryCtx" } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2flower_3atryCtx_3e_2ePop_3ccompiler_2flower_3atryCtx_3e(ptr %v0, ptr %v1, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l5 = alloca ptr
  %rv = alloca { i32, %"compiler/lower:tryCtx" }
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t1, i32 0, i32 1
  %t4 = load i64, ptr %t3, !tbaa !24
  %t6 = icmp eq i64 %t4, 0
  br i1 %t6, label %bb1, label %bb2
bb1:
  %t9 = insertvalue { i32, %"compiler/lower:tryCtx" } zeroinitializer, i32 65536, 0
  store { i32, %"compiler/lower:tryCtx" } %t9, ptr %rv
  br label %ret
bb2:
  br label %bb3
bb3:
  %t10 = load ptr, ptr %l0, !tbaa !29
  store ptr %t10, ptr %l5, !tbaa !29
  %t11 = load ptr, ptr %l5, !tbaa !29
  %t12 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t11, i32 0, i32 1
  %t13 = load i64, ptr %t12, !tbaa !24
  %t15 = sub i64 %t13, 1
  %t17 = load ptr, ptr %l5, !tbaa !29
  %t18 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t17, i32 0, i32 1
  store i64 %t15, ptr %t18, !tbaa !24
  %t19 = load ptr, ptr %l0, !tbaa !29
  %t20 = load ptr, ptr %l0, !tbaa !29
  %t22 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t20, i32 0, i32 1
  %t23 = load i64, ptr %t22, !tbaa !24
  %t25 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t19, i32 0, i32 0
  %t27 = getelementptr { i64, ptr }, ptr %t25, i32 0, i32 1
  %t28 = load ptr, ptr %t27, !tbaa !27
  %t29 = getelementptr %"compiler/lower:tryCtx", ptr %t28, i64 %t23
  %t30 = load %"compiler/lower:tryCtx", ptr %t29
  store %"compiler/lower:tryCtx" zeroinitializer, ptr %t29
  %t32 = insertvalue { i32, %"compiler/lower:tryCtx" } zeroinitializer, %"compiler/lower:tryCtx" %t30, 1
  store { i32, %"compiler/lower:tryCtx" } %t32, ptr %rv
  br label %ret
ret:
  %rr = load { i32, %"compiler/lower:tryCtx" }, ptr %rv
  ret { i32, %"compiler/lower:tryCtx" } %rr
}

define dso_local void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2flower_3atryCtx_3e_2ePush_3ccompiler_2flower_3atryCtx_3e(ptr %v0, ptr %v1, ptr %a0, %"compiler/lower:tryCtx" %a1) #0 {
entry:
  %l0 = alloca ptr
  %l12 = alloca ptr
  %l14 = alloca i64
  %l15 = alloca %"compiler/lower:tryCtx"
  %l17 = alloca %"compiler/lower:tryCtx"
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
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2flower_3atryCtx_3e_2eroom_3ccompiler_2flower_3atryCtx_3e(ptr %v0, ptr %t15, i64 %t21)
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
  store %"compiler/lower:tryCtx" %a1, ptr %l15
  %t31 = call %"compiler/lower:tryCtx" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2flower_3atryCtx(ptr %v0, ptr %l15)
  store %"compiler/lower:tryCtx" %t31, ptr %l17
  br label %bb5
bb5:
  %t32 = load %"compiler/lower:tryCtx", ptr %l17
  %t33 = load ptr, ptr %l12, !tbaa !29
  %t34 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t33, i32 0, i32 0
  %t35 = load i64, ptr %l14, !tbaa !24
  %t36 = getelementptr { i64, ptr }, ptr %t34, i32 0, i32 1
  %t37 = load ptr, ptr %t36, !tbaa !27
  %t38 = getelementptr %"compiler/lower:tryCtx", ptr %t37, i64 %t35
  store %"compiler/lower:tryCtx" %t32, ptr %t38
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

define dso_local ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2flower_3atryCtx_3e_2eRefMut_3ccompiler_2flower_3atryCtx_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1) #0 {
entry:
  %rv = alloca ptr
  br label %start
start:
  br label %bb0
bb0:
  %t4 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %a0, i32 0, i32 0
  %t6 = getelementptr { i64, ptr }, ptr %t4, i32 0, i32 1
  %t7 = load ptr, ptr %t6, !tbaa !27
  %t8 = getelementptr %"compiler/lower:tryCtx", ptr %t7, i64 %a1
  store ptr %t8, ptr %rv
  br label %ret
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

@std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2flower_3atryCtx_3e_2eRef_3ccompiler_2flower_3atryCtx_3e = dso_local alias ptr (ptr, ptr, ptr, i64), ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2flower_3atryCtx_3e_2eRefMut_3ccompiler_2flower_3atryCtx_3e
define dso_local void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2flower_3atryCtx_3e_2eSetAt_3ccompiler_2flower_3atryCtx_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1, %"compiler/lower:tryCtx" %a2) #0 {
entry:
  %l3 = alloca ptr
  %l4 = alloca i64
  %l5 = alloca %"compiler/lower:tryCtx"
  %l7 = alloca %"compiler/lower:tryCtx"
  br label %start
start:
  br label %bb0
bb0:
  store ptr %a0, ptr %l3, !tbaa !29
  store i64 %a1, ptr %l4, !tbaa !24
  store %"compiler/lower:tryCtx" %a2, ptr %l5
  %t5 = call %"compiler/lower:tryCtx" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2flower_3atryCtx(ptr %v0, ptr %l5)
  store %"compiler/lower:tryCtx" %t5, ptr %l7
  br label %bb1
bb1:
  %t6 = load %"compiler/lower:tryCtx", ptr %l7
  %t7 = load ptr, ptr %l3, !tbaa !29
  %t8 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t7, i32 0, i32 0
  %t9 = load i64, ptr %l4, !tbaa !24
  %t10 = getelementptr { i64, ptr }, ptr %t8, i32 0, i32 1
  %t11 = load ptr, ptr %t10, !tbaa !27
  %t12 = getelementptr %"compiler/lower:tryCtx", ptr %t11, i64 %t9
  store %"compiler/lower:tryCtx" %t6, ptr %t12
  br label %ret
ret:
  ret void
}

define dso_local void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2flower_3atryCtx_3e_2eroom_3ccompiler_2flower_3atryCtx_3e(ptr %v0, ptr %a0, i64 %a1) noinline cold #0 {
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
  call void @__olang_check_failed(ptr @olang_loc_1d6316cb7127b1a_e334a1e414cc449e)
  unreachable
bb15:
  %t71 = load i64, ptr %l36, !tbaa !24
  %t72 = load i64, ptr %l37, !tbaa !24
  %t73 = icmp sle i64 %t71, %t72
  br i1 %t73, label %bb17, label %bb18
bb16:
  call void @__olang_check_failed(ptr @olang_loc_1d6316cb7127b1a_e334a1e414cc449e)
  unreachable
bb17:
  %t75 = getelementptr { i64, ptr }, ptr %l34, i32 0, i32 1
  %t76 = load ptr, ptr %t75, !tbaa !27
  %t77 = load i64, ptr %l36, !tbaa !24
  %t78 = getelementptr %"compiler/lower:tryCtx", ptr %t76, i64 0
  %t79 = sub i64 %t77, 0
  %t80 = insertvalue { i64, ptr } undef, i64 %t79, 0
  %t81 = insertvalue { i64, ptr } %t80, ptr %t78, 1
  store { i64, ptr } %t81, ptr %l4, !tbaa !27
  %t83 = load i64, ptr %l2, !tbaa !24
  %t87 = mul i64 %t83, 64
  %t88 = call ptr @__olang_scope_alloc_zeroed(ptr %v0, i64 %t87)
  %t89 = insertvalue { i64, ptr } undef, i64 %t83, 0
  %t90 = insertvalue { i64, ptr } %t89, ptr %t88, 1
  store { i64, ptr } %t90, ptr %l44, !tbaa !27
  store i64 0, ptr %l45, !tbaa !24
  store i64 0, ptr %l6, !tbaa !24
  br label %bb19
bb18:
  call void @__olang_check_failed(ptr @olang_loc_1d6316cb7127b1a_e334a1e414cc449e)
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
  %t106 = getelementptr %"compiler/lower:tryCtx", ptr %t105, i64 %t102
  %t107 = load %"compiler/lower:tryCtx", ptr %t106
  store %"compiler/lower:tryCtx" zeroinitializer, ptr %t106
  %t109 = load i64, ptr %l45, !tbaa !24
  %t110 = getelementptr { i64, ptr }, ptr %l44, i32 0, i32 1
  %t111 = load ptr, ptr %t110, !tbaa !27
  %t112 = getelementptr %"compiler/lower:tryCtx", ptr %t111, i64 %t109
  store %"compiler/lower:tryCtx" %t107, ptr %t112
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

define dso_local i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aBlockId_3e_2eAt_3ccompiler_2fmir_3aBlockId_3e(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %r = tail call i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aNameId_3e_2eAt_3ccompiler_2fsource_3aNameId_3e(ptr %v0, ptr %a0, i64 %a1)
  ret i32 %r
}

define dso_local i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aBlockId_3e_2eLen_3ccompiler_2fmir_3aBlockId_3e(ptr %v0, ptr %a0) #0 {
entry:
  %r = tail call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cU64_3e_2eLen_3cU64_3e(ptr %v0, ptr %a0)
  ret i64 %r
}

define dso_local void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aBlockId_3e_2ePush_3ccompiler_2fmir_3aBlockId_3e(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  tail call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI32_3e_2ePush_3cI32_3e(ptr %v0, ptr %a0, i32 %a1)
  ret void
}

define dso_local void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aBlockId_3e_2eSetAt_3ccompiler_2fmir_3aBlockId_3e(ptr %v0, ptr %a0, i64 %a1, i32 %a2) #0 {
entry:
  tail call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2eSetAt_3ccompiler_2ftypes_3aTypeId_3e(ptr %v0, ptr %a0, i64 %a1, i32 %a2)
  ret void
}

define dso_local %"compiler/mir:Call" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aCall_3e_2eAt_3ccompiler_2fmir_3aCall_3e(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %rv = alloca %"compiler/mir:Call"
  br label %start
start:
  br label %bb0
bb0:
  %t4 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %a0, i32 0, i32 0
  %t6 = getelementptr { i64, ptr }, ptr %t4, i32 0, i32 1
  %t7 = load ptr, ptr %t6, !tbaa !27
  %t8 = getelementptr %"compiler/mir:Call", ptr %t7, i64 %a1
  %t9 = load %"compiler/mir:Call", ptr %t8
  store %"compiler/mir:Call" %t9, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/mir:Call", ptr %rv
  ret %"compiler/mir:Call" %rr
}

define dso_local { i64, [2 x i64] } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aFnKey_3e_2eAt_3ccompiler_2fmir_3aFnKey_3e(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %r = tail call { i64, [2 x i64] } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3aTerm_3e_2eAt_3ccompiler_2fscope_3aTerm_3e(ptr %v0, ptr %a0, i64 %a1)
  ret { i64, [2 x i64] } %r
}

define dso_local i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aFnKey_3e_2eLen_3ccompiler_2fmir_3aFnKey_3e(ptr %v0, ptr %a0) #0 {
entry:
  %r = tail call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cU64_3e_2eLen_3cU64_3e(ptr %v0, ptr %a0)
  ret i64 %r
}

define dso_local void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aFnKey_3e_2ePush_3ccompiler_2fmir_3aFnKey_3e(ptr %v0, ptr %a0, { i64, [2 x i64] } %a1) #0 {
entry:
  tail call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3aTerm_3e_2ePush_3ccompiler_2fscope_3aTerm_3e(ptr %v0, ptr %a0, { i64, [2 x i64] } %a1)
  ret void
}

define dso_local i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aLocalId_3e_2eAt_3ccompiler_2fmir_3aLocalId_3e(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %r = tail call i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aNameId_3e_2eAt_3ccompiler_2fsource_3aNameId_3e(ptr %v0, ptr %a0, i64 %a1)
  ret i32 %r
}

define dso_local i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aLocalId_3e_2eLen_3ccompiler_2fmir_3aLocalId_3e(ptr %v0, ptr %a0) #0 {
entry:
  %r = tail call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cU64_3e_2eLen_3cU64_3e(ptr %v0, ptr %a0)
  ret i64 %r
}

define dso_local void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aLocalId_3e_2ePush_3ccompiler_2fmir_3aLocalId_3e(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  tail call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI32_3e_2ePush_3cI32_3e(ptr %v0, ptr %a0, i32 %a1)
  ret void
}

define dso_local %"compiler/mir:Local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aLocal_3e_2eAt_3ccompiler_2fmir_3aLocal_3e(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %rv = alloca %"compiler/mir:Local"
  br label %start
start:
  br label %bb0
bb0:
  %t4 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %a0, i32 0, i32 0
  %t6 = getelementptr { i64, ptr }, ptr %t4, i32 0, i32 1
  %t7 = load ptr, ptr %t6, !tbaa !27
  %t8 = getelementptr %"compiler/mir:Local", ptr %t7, i64 %a1
  %t9 = load %"compiler/mir:Local", ptr %t8
  store %"compiler/mir:Local" %t9, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/mir:Local", ptr %rv
  ret %"compiler/mir:Local" %rr
}

define dso_local i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aLocal_3e_2eLen_3ccompiler_2fmir_3aLocal_3e(ptr %v0, ptr %a0) #0 {
entry:
  %r = tail call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cU64_3e_2eLen_3cU64_3e(ptr %v0, ptr %a0)
  ret i64 %r
}

define dso_local ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aLocal_3e_2eRefMut_3ccompiler_2fmir_3aLocal_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1) #0 {
entry:
  %rv = alloca ptr
  br label %start
start:
  br label %bb0
bb0:
  %t4 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %a0, i32 0, i32 0
  %t6 = getelementptr { i64, ptr }, ptr %t4, i32 0, i32 1
  %t7 = load ptr, ptr %t6, !tbaa !27
  %t8 = getelementptr %"compiler/mir:Local", ptr %t7, i64 %a1
  store ptr %t8, ptr %rv
  br label %ret
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

define dso_local { i64, [4 x i64] } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aOperand_3e_2eAt_3ccompiler_2fmir_3aOperand_3e(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %rv = alloca { i64, [4 x i64] }
  br label %start
start:
  br label %bb0
bb0:
  %t4 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %a0, i32 0, i32 0
  %t6 = getelementptr { i64, ptr }, ptr %t4, i32 0, i32 1
  %t7 = load ptr, ptr %t6, !tbaa !27
  %t8 = getelementptr { i64, [4 x i64] }, ptr %t7, i64 %a1
  %t9 = load { i64, [4 x i64] }, ptr %t8
  store { i64, [4 x i64] } %t9, ptr %rv
  br label %ret
ret:
  %rr = load { i64, [4 x i64] }, ptr %rv
  ret { i64, [4 x i64] } %rr
}

define dso_local void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aOperand_3e_2ePush_3ccompiler_2fmir_3aOperand_3e(ptr %v0, ptr %a0, { i64, [4 x i64] } %a1) #0 {
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
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aOperand_3e_2eroom_3ccompiler_2fmir_3aOperand_3e(ptr %v0, ptr %t15, i64 %t21)
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
  %t36 = getelementptr { i64, [4 x i64] }, ptr %t35, i64 %t28
  store { i64, [4 x i64] } %a1, ptr %t36
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

define dso_local { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aOperand_3e_2eToArray_3ccompiler_2fmir_3aOperand_3e(ptr %v0, ptr %v1, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca { i64, ptr }
  %l2 = alloca i64
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l15 = alloca i64
  %l17 = alloca { i64, [4 x i64] }
  %l26 = alloca i64
  %l29 = alloca i64
  %l47 = alloca { i64, ptr }
  %rv = alloca { i64, ptr }
  %t37 = alloca i64
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t1, i32 0, i32 1
  %t4 = load i64, ptr %t3, !tbaa !24
  %t6 = icmp eq i64 %t4, 0
  br i1 %t6, label %bb1, label %bb2
bb1:
  %t8 = icmp sge i64 0, 0
  br i1 %t8, label %bb3, label %bb4
bb2:
  br label %bb7
bb3:
  %t10 = icmp sle i64 0, 230584300921369395
  br i1 %t10, label %bb5, label %bb6
bb4:
  call void @__olang_check_failed(ptr @olang_loc_e830083477ac3acf_e07c8e26dbb2717b)
  unreachable
bb5:
  %t12 = mul i64 0, 40
  %t13 = insertvalue { i64, ptr } undef, i64 0, 0
  %t14 = insertvalue { i64, ptr } %t13, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  store { i64, ptr } %t14, ptr %rv
  br label %ret
bb6:
  call void @__olang_check_failed(ptr @olang_loc_e830083477ac3acf_e07c8e26dbb2717b)
  unreachable
bb7:
  %t16 = load ptr, ptr %l0, !tbaa !29
  %t18 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t16, i32 0, i32 1
  %t19 = load i64, ptr %t18, !tbaa !24
  store i64 %t19, ptr %l15, !tbaa !24
  %t20 = load ptr, ptr %l0, !tbaa !29
  %t22 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t20, i32 0, i32 0
  %t23 = getelementptr { i64, ptr }, ptr %t22, i32 0, i32 1
  %t24 = load ptr, ptr %t23, !tbaa !27
  %t25 = getelementptr { i64, [4 x i64] }, ptr %t24, i64 0
  %t26 = load { i64, [4 x i64] }, ptr %t25
  store { i64, [4 x i64] } %t26, ptr %l17
  %t27 = load i64, ptr %l15, !tbaa !24
  %t28 = icmp sge i64 %t27, 0
  br i1 %t28, label %bb8, label %bb9
bb8:
  %t30 = load i64, ptr %l15, !tbaa !24
  %t31 = icmp sle i64 %t30, 230584300921369395
  br i1 %t31, label %bb10, label %bb11
bb9:
  call void @__olang_check_failed(ptr @olang_loc_3e36132a3052637a_18572711d0b9c0e6)
  unreachable
bb10:
  %t33 = load i64, ptr %l15, !tbaa !24
  %t34 = mul i64 %t33, 40
  %t35 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t34)
  %t36 = load { i64, [4 x i64] }, ptr %l17
  store i64 0, ptr %t37
  br label %fill.38
fill.38:
  %t41 = load i64, ptr %t37
  %t42 = icmp slt i64 %t41, %t33
  br i1 %t42, label %fillb.39, label %filld.40
fillb.39:
  %t43 = getelementptr { i64, [4 x i64] }, ptr %t35, i64 %t41
  store { i64, [4 x i64] } %t36, ptr %t43
  %t44 = add i64 %t41, 1
  store i64 %t44, ptr %t37
  br label %fill.38
filld.40:
  %t45 = insertvalue { i64, ptr } undef, i64 %t33, 0
  %t46 = insertvalue { i64, ptr } %t45, ptr %t35, 1
  store { i64, ptr } %t46, ptr %l1, !tbaa !27
  store i64 0, ptr %l2, !tbaa !24
  %t48 = load ptr, ptr %l0, !tbaa !29
  %t50 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t48, i32 0, i32 1
  %t51 = load i64, ptr %t50, !tbaa !24
  store i64 %t51, ptr %l3, !tbaa !24
  store i64 1, ptr %l4, !tbaa !24
  %t53 = load i64, ptr %l3, !tbaa !24
  %t54 = load i64, ptr %l2, !tbaa !24
  %t57 = icmp sgt i64 %t53, %t54
  br i1 %t57, label %bb12, label %bb13
bb11:
  call void @__olang_check_failed(ptr @olang_loc_3e36132a3052637a_18572711d0b9c0e6)
  unreachable
bb12:
  %t59 = load i64, ptr %l4, !tbaa !24
  %t61 = icmp sgt i64 %t59, 0
  br i1 %t61, label %bb14, label %bb15
bb13:
  store i64 0, ptr %l26, !tbaa !24
  br label %bb17
bb14:
  %t63 = load i64, ptr %l3, !tbaa !24
  %t64 = load i64, ptr %l2, !tbaa !24
  %t67 = sub i64 %t63, %t64
  %t68 = load i64, ptr %l4, !tbaa !24
  %t71 = add i64 %t67, %t68
  %t73 = sub i64 %t71, 1
  %t74 = load i64, ptr %l4, !tbaa !24
  %t77 = sdiv i64 %t73, %t74
  store i64 %t77, ptr %l29, !tbaa !24
  br label %bb16
bb15:
  store i64 0, ptr %l29, !tbaa !24
  br label %bb16
bb16:
  %t79 = load i64, ptr %l29, !tbaa !24
  store i64 %t79, ptr %l26, !tbaa !24
  br label %bb17
bb17:
  %t80 = load i64, ptr %l26, !tbaa !24
  store i64 %t80, ptr %l5, !tbaa !24
  store i64 0, ptr %l6, !tbaa !24
  br label %bb18
bb18:
  %t81 = load i64, ptr %l6, !tbaa !24
  %t82 = load i64, ptr %l5, !tbaa !24
  %t85 = icmp slt i64 %t81, %t82
  %t87 = xor i1 %t85, true
  br i1 %t87, label %bb19, label %bb20
bb19:
  br label %bb23
bb20:
  br label %bb21
bb21:
  %t89 = load i64, ptr %l2, !tbaa !24
  %t90 = load i64, ptr %l6, !tbaa !24
  %t91 = load i64, ptr %l4, !tbaa !24
  %t94 = mul i64 %t90, %t91
  %t97 = add i64 %t89, %t94
  store i64 %t97, ptr %l7, !tbaa !24
  %t99 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t99, ptr %l47, !tbaa !27
  %t100 = load i64, ptr %l7, !tbaa !24
  %t101 = load ptr, ptr %l0, !tbaa !29
  %t102 = load i64, ptr %l7, !tbaa !24
  %t104 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t101, i32 0, i32 0
  %t106 = getelementptr { i64, ptr }, ptr %t104, i32 0, i32 1
  %t107 = load ptr, ptr %t106, !tbaa !27
  %t108 = getelementptr { i64, [4 x i64] }, ptr %t107, i64 %t102
  %t109 = load { i64, [4 x i64] }, ptr %t108
  %t112 = getelementptr { i64, ptr }, ptr %l47, i32 0, i32 1
  %t113 = load ptr, ptr %t112, !tbaa !27
  %t114 = getelementptr { i64, [4 x i64] }, ptr %t113, i64 %t100
  store { i64, [4 x i64] } %t109, ptr %t114
  br label %bb22
bb22:
  %t115 = load i64, ptr %l6, !tbaa !24
  %t117 = add i64 %t115, 1
  store i64 %t117, ptr %l6, !tbaa !24
  br label %bb18
bb23:
  %t119 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t119, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aOperand_3e_2eroom_3ccompiler_2fmir_3aOperand_3e(ptr %v0, ptr %a0, i64 %a1) noinline cold #0 {
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
  call void @__olang_check_failed(ptr @olang_loc_458fdeac205c0154_72a2acc111bb0b18)
  unreachable
bb15:
  %t71 = load i64, ptr %l36, !tbaa !24
  %t72 = load i64, ptr %l37, !tbaa !24
  %t73 = icmp sle i64 %t71, %t72
  br i1 %t73, label %bb17, label %bb18
bb16:
  call void @__olang_check_failed(ptr @olang_loc_458fdeac205c0154_72a2acc111bb0b18)
  unreachable
bb17:
  %t75 = getelementptr { i64, ptr }, ptr %l34, i32 0, i32 1
  %t76 = load ptr, ptr %t75, !tbaa !27
  %t77 = load i64, ptr %l36, !tbaa !24
  %t78 = getelementptr { i64, [4 x i64] }, ptr %t76, i64 0
  %t79 = sub i64 %t77, 0
  %t80 = insertvalue { i64, ptr } undef, i64 %t79, 0
  %t81 = insertvalue { i64, ptr } %t80, ptr %t78, 1
  store { i64, ptr } %t81, ptr %l4, !tbaa !27
  %t83 = load i64, ptr %l2, !tbaa !24
  %t87 = mul i64 %t83, 40
  %t88 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t87)
  %t89 = insertvalue { i64, ptr } undef, i64 %t83, 0
  %t90 = insertvalue { i64, ptr } %t89, ptr %t88, 1
  store { i64, ptr } %t90, ptr %l44, !tbaa !27
  store i64 0, ptr %l45, !tbaa !24
  store i64 0, ptr %l6, !tbaa !24
  br label %bb19
bb18:
  call void @__olang_check_failed(ptr @olang_loc_458fdeac205c0154_72a2acc111bb0b18)
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
  %t106 = getelementptr { i64, [4 x i64] }, ptr %t105, i64 %t102
  %t107 = load { i64, [4 x i64] }, ptr %t106
  %t109 = load i64, ptr %l45, !tbaa !24
  %t110 = getelementptr { i64, ptr }, ptr %l44, i32 0, i32 1
  %t111 = load ptr, ptr %t110, !tbaa !27
  %t112 = getelementptr { i64, [4 x i64] }, ptr %t111, i64 %t109
  store { i64, [4 x i64] } %t107, ptr %t112
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

define dso_local { i64, [1 x i64] } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aProj_3e_2eAt_3ccompiler_2fmir_3aProj_3e(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %r = tail call { i64, [1 x i64] } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aScopeVar_3e_2eAt_3ccompiler_2ftyped_3aScopeVar_3e(ptr %v0, ptr %a0, i64 %a1)
  ret { i64, [1 x i64] } %r
}

define dso_local i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aProj_3e_2eLen_3ccompiler_2fmir_3aProj_3e(ptr %v0, ptr %a0) #0 {
entry:
  %r = tail call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cU64_3e_2eLen_3cU64_3e(ptr %v0, ptr %a0)
  ret i64 %r
}

define dso_local void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aProj_3e_2ePush_3ccompiler_2fmir_3aProj_3e(ptr %v0, ptr %a0, { i64, [1 x i64] } %a1) #0 {
entry:
  tail call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aScopeVar_3e_2ePush_3ccompiler_2ftyped_3aScopeVar_3e(ptr %v0, ptr %a0, { i64, [1 x i64] } %a1)
  ret void
}

define dso_local { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aProj_3e_2eToArray_3ccompiler_2fmir_3aProj_3e(ptr %v0, ptr %v1, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca { i64, ptr }
  %l2 = alloca i64
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l15 = alloca i64
  %l17 = alloca { i64, [1 x i64] }
  %l26 = alloca i64
  %l29 = alloca i64
  %l47 = alloca { i64, ptr }
  %rv = alloca { i64, ptr }
  %t37 = alloca i64
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t1, i32 0, i32 1
  %t4 = load i64, ptr %t3, !tbaa !24
  %t6 = icmp eq i64 %t4, 0
  br i1 %t6, label %bb1, label %bb2
bb1:
  %t8 = icmp sge i64 0, 0
  br i1 %t8, label %bb3, label %bb4
bb2:
  br label %bb7
bb3:
  %t10 = icmp sle i64 0, 576460752303423487
  br i1 %t10, label %bb5, label %bb6
bb4:
  call void @__olang_check_failed(ptr @olang_loc_a506bd3f6055e9b_13bf30702544d077)
  unreachable
bb5:
  %t12 = mul i64 0, 16
  %t13 = insertvalue { i64, ptr } undef, i64 0, 0
  %t14 = insertvalue { i64, ptr } %t13, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  store { i64, ptr } %t14, ptr %rv
  br label %ret
bb6:
  call void @__olang_check_failed(ptr @olang_loc_a506bd3f6055e9b_13bf30702544d077)
  unreachable
bb7:
  %t16 = load ptr, ptr %l0, !tbaa !29
  %t18 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t16, i32 0, i32 1
  %t19 = load i64, ptr %t18, !tbaa !24
  store i64 %t19, ptr %l15, !tbaa !24
  %t20 = load ptr, ptr %l0, !tbaa !29
  %t22 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t20, i32 0, i32 0
  %t23 = getelementptr { i64, ptr }, ptr %t22, i32 0, i32 1
  %t24 = load ptr, ptr %t23, !tbaa !27
  %t25 = getelementptr { i64, [1 x i64] }, ptr %t24, i64 0
  %t26 = load { i64, [1 x i64] }, ptr %t25
  store { i64, [1 x i64] } %t26, ptr %l17
  %t27 = load i64, ptr %l15, !tbaa !24
  %t28 = icmp sge i64 %t27, 0
  br i1 %t28, label %bb8, label %bb9
bb8:
  %t30 = load i64, ptr %l15, !tbaa !24
  %t31 = icmp sle i64 %t30, 576460752303423487
  br i1 %t31, label %bb10, label %bb11
bb9:
  call void @__olang_check_failed(ptr @olang_loc_be207203df869506_33d988219177d8c2)
  unreachable
bb10:
  %t33 = load i64, ptr %l15, !tbaa !24
  %t34 = mul i64 %t33, 16
  %t35 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t34)
  %t36 = load { i64, [1 x i64] }, ptr %l17
  store i64 0, ptr %t37
  br label %fill.38
fill.38:
  %t41 = load i64, ptr %t37
  %t42 = icmp slt i64 %t41, %t33
  br i1 %t42, label %fillb.39, label %filld.40
fillb.39:
  %t43 = getelementptr { i64, [1 x i64] }, ptr %t35, i64 %t41
  store { i64, [1 x i64] } %t36, ptr %t43
  %t44 = add i64 %t41, 1
  store i64 %t44, ptr %t37
  br label %fill.38
filld.40:
  %t45 = insertvalue { i64, ptr } undef, i64 %t33, 0
  %t46 = insertvalue { i64, ptr } %t45, ptr %t35, 1
  store { i64, ptr } %t46, ptr %l1, !tbaa !27
  store i64 0, ptr %l2, !tbaa !24
  %t48 = load ptr, ptr %l0, !tbaa !29
  %t50 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t48, i32 0, i32 1
  %t51 = load i64, ptr %t50, !tbaa !24
  store i64 %t51, ptr %l3, !tbaa !24
  store i64 1, ptr %l4, !tbaa !24
  %t53 = load i64, ptr %l3, !tbaa !24
  %t54 = load i64, ptr %l2, !tbaa !24
  %t57 = icmp sgt i64 %t53, %t54
  br i1 %t57, label %bb12, label %bb13
bb11:
  call void @__olang_check_failed(ptr @olang_loc_be207203df869506_33d988219177d8c2)
  unreachable
bb12:
  %t59 = load i64, ptr %l4, !tbaa !24
  %t61 = icmp sgt i64 %t59, 0
  br i1 %t61, label %bb14, label %bb15
bb13:
  store i64 0, ptr %l26, !tbaa !24
  br label %bb17
bb14:
  %t63 = load i64, ptr %l3, !tbaa !24
  %t64 = load i64, ptr %l2, !tbaa !24
  %t67 = sub i64 %t63, %t64
  %t68 = load i64, ptr %l4, !tbaa !24
  %t71 = add i64 %t67, %t68
  %t73 = sub i64 %t71, 1
  %t74 = load i64, ptr %l4, !tbaa !24
  %t77 = sdiv i64 %t73, %t74
  store i64 %t77, ptr %l29, !tbaa !24
  br label %bb16
bb15:
  store i64 0, ptr %l29, !tbaa !24
  br label %bb16
bb16:
  %t79 = load i64, ptr %l29, !tbaa !24
  store i64 %t79, ptr %l26, !tbaa !24
  br label %bb17
bb17:
  %t80 = load i64, ptr %l26, !tbaa !24
  store i64 %t80, ptr %l5, !tbaa !24
  store i64 0, ptr %l6, !tbaa !24
  br label %bb18
bb18:
  %t81 = load i64, ptr %l6, !tbaa !24
  %t82 = load i64, ptr %l5, !tbaa !24
  %t85 = icmp slt i64 %t81, %t82
  %t87 = xor i1 %t85, true
  br i1 %t87, label %bb19, label %bb20
bb19:
  br label %bb23
bb20:
  br label %bb21
bb21:
  %t89 = load i64, ptr %l2, !tbaa !24
  %t90 = load i64, ptr %l6, !tbaa !24
  %t91 = load i64, ptr %l4, !tbaa !24
  %t94 = mul i64 %t90, %t91
  %t97 = add i64 %t89, %t94
  store i64 %t97, ptr %l7, !tbaa !24
  %t99 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t99, ptr %l47, !tbaa !27
  %t100 = load i64, ptr %l7, !tbaa !24
  %t101 = load ptr, ptr %l0, !tbaa !29
  %t102 = load i64, ptr %l7, !tbaa !24
  %t104 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t101, i32 0, i32 0
  %t106 = getelementptr { i64, ptr }, ptr %t104, i32 0, i32 1
  %t107 = load ptr, ptr %t106, !tbaa !27
  %t108 = getelementptr { i64, [1 x i64] }, ptr %t107, i64 %t102
  %t109 = load { i64, [1 x i64] }, ptr %t108
  %t112 = getelementptr { i64, ptr }, ptr %l47, i32 0, i32 1
  %t113 = load ptr, ptr %t112, !tbaa !27
  %t114 = getelementptr { i64, [1 x i64] }, ptr %t113, i64 %t100
  store { i64, [1 x i64] } %t109, ptr %t114
  br label %bb22
bb22:
  %t115 = load i64, ptr %l6, !tbaa !24
  %t117 = add i64 %t115, 1
  store i64 %t117, ptr %l6, !tbaa !24
  br label %bb18
bb23:
  %t119 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t119, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aProj_3e_2eView_3ccompiler_2fmir_3aProj_3e(ptr %v0, ptr %v1, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l3 = alloca i64
  %l4 = alloca i64
  %rv = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1, ptr %l1, !tbaa !29
  %t2 = load ptr, ptr %l0, !tbaa !29
  %t4 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t2, i32 0, i32 1
  %t5 = load i64, ptr %t4, !tbaa !24
  store i64 %t5, ptr %l3, !tbaa !24
  %t6 = load ptr, ptr %l1, !tbaa !29
  %t7 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t6, i32 0, i32 0
  %t8 = load { i64, ptr }, ptr %t7, !tbaa !27
  %t9 = extractvalue { i64, ptr } %t8, 0
  store i64 %t9, ptr %l4, !tbaa !24
  %t10 = icmp sge i64 0, 0
  br i1 %t10, label %bb1, label %bb2
bb1:
  %t12 = load i64, ptr %l3, !tbaa !24
  %t13 = icmp sle i64 0, %t12
  br i1 %t13, label %bb3, label %bb4
bb2:
  call void @__olang_check_failed(ptr @olang_loc_d1873633b0a7d7c0_c1f5a1d4a9a9d3d4)
  unreachable
bb3:
  %t15 = load i64, ptr %l3, !tbaa !24
  %t16 = load i64, ptr %l4, !tbaa !24
  %t17 = icmp sle i64 %t15, %t16
  br i1 %t17, label %bb5, label %bb6
bb4:
  call void @__olang_check_failed(ptr @olang_loc_d1873633b0a7d7c0_c1f5a1d4a9a9d3d4)
  unreachable
bb5:
  %t19 = load ptr, ptr %l1, !tbaa !29
  %t20 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t19, i32 0, i32 0
  %t21 = getelementptr { i64, ptr }, ptr %t20, i32 0, i32 1
  %t22 = load ptr, ptr %t21, !tbaa !27
  %t23 = load i64, ptr %l3, !tbaa !24
  %t24 = getelementptr { i64, [1 x i64] }, ptr %t22, i64 0
  %t25 = sub i64 %t23, 0
  %t26 = insertvalue { i64, ptr } undef, i64 %t25, 0
  %t27 = insertvalue { i64, ptr } %t26, ptr %t24, 1
  store { i64, ptr } %t27, ptr %rv
  br label %ret
bb6:
  call void @__olang_check_failed(ptr @olang_loc_d1873633b0a7d7c0_c1f5a1d4a9a9d3d4)
  unreachable
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aScopeId_3e_2eAt_3ccompiler_2fmir_3aScopeId_3e(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %r = tail call i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aNameId_3e_2eAt_3ccompiler_2fsource_3aNameId_3e(ptr %v0, ptr %a0, i64 %a1)
  ret i32 %r
}

define dso_local i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aScopeId_3e_2eLen_3ccompiler_2fmir_3aScopeId_3e(ptr %v0, ptr %a0) #0 {
entry:
  %r = tail call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cU64_3e_2eLen_3cU64_3e(ptr %v0, ptr %a0)
  ret i64 %r
}

define dso_local { i32, i32 } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aScopeId_3e_2ePop_3ccompiler_2fmir_3aScopeId_3e(ptr %v0, ptr %a0) #0 {
entry:
  %r = tail call { i32, i32 } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aBlockId_3e_2ePop_3ccompiler_2ftyped_3aBlockId_3e(ptr %v0, ptr %a0)
  ret { i32, i32 } %r
}

define dso_local void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aScopeId_3e_2ePush_3ccompiler_2fmir_3aScopeId_3e(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  tail call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI32_3e_2ePush_3cI32_3e(ptr %v0, ptr %a0, i32 %a1)
  ret void
}

define dso_local void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aScopeId_3e_2eSetAt_3ccompiler_2fmir_3aScopeId_3e(ptr %v0, ptr %a0, i64 %a1, i32 %a2) #0 {
entry:
  tail call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2eSetAt_3ccompiler_2ftypes_3aTypeId_3e(ptr %v0, ptr %a0, i64 %a1, i32 %a2)
  ret void
}

define dso_local %"compiler/mir:ScopeInfo" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aScopeInfo_3e_2eAt_3ccompiler_2fmir_3aScopeInfo_3e(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %rv = alloca %"compiler/mir:ScopeInfo"
  br label %start
start:
  br label %bb0
bb0:
  %t4 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %a0, i32 0, i32 0
  %t6 = getelementptr { i64, ptr }, ptr %t4, i32 0, i32 1
  %t7 = load ptr, ptr %t6, !tbaa !27
  %t8 = getelementptr %"compiler/mir:ScopeInfo", ptr %t7, i64 %a1
  %t9 = load %"compiler/mir:ScopeInfo", ptr %t8
  store %"compiler/mir:ScopeInfo" %t9, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/mir:ScopeInfo", ptr %rv
  ret %"compiler/mir:ScopeInfo" %rr
}

define dso_local { i64, [1 x i64] } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aScopeRef_3e_2eAt_3ccompiler_2fmir_3aScopeRef_3e(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %r = tail call { i64, [1 x i64] } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aScopeVar_3e_2eAt_3ccompiler_2ftyped_3aScopeVar_3e(ptr %v0, ptr %a0, i64 %a1)
  ret { i64, [1 x i64] } %r
}

define dso_local void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aScopeRef_3e_2ePush_3ccompiler_2fmir_3aScopeRef_3e(ptr %v0, ptr %a0, { i64, [1 x i64] } %a1) #0 {
entry:
  tail call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aScopeVar_3e_2ePush_3ccompiler_2ftyped_3aScopeVar_3e(ptr %v0, ptr %a0, { i64, [1 x i64] } %a1)
  ret void
}

@std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aScopeRef_3e_2eToArray_3ccompiler_2fmir_3aScopeRef_3e = dso_local alias { i64, ptr } (ptr, ptr, ptr), ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aProj_3e_2eToArray_3ccompiler_2fmir_3aProj_3e
define dso_local { i64, [1 x i64] } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aVarKind_3e_2eAt_3ccompiler_2fmir_3aVarKind_3e(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %r = tail call { i64, [1 x i64] } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aScopeVar_3e_2eAt_3ccompiler_2ftyped_3aScopeVar_3e(ptr %v0, ptr %a0, i64 %a1)
  ret { i64, [1 x i64] } %r
}

define dso_local i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aVarKind_3e_2eLen_3ccompiler_2fmir_3aVarKind_3e(ptr %v0, ptr %a0) #0 {
entry:
  %r = tail call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cU64_3e_2eLen_3cU64_3e(ptr %v0, ptr %a0)
  ret i64 %r
}

define dso_local void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aVarKind_3e_2ePush_3ccompiler_2fmir_3aVarKind_3e(ptr %v0, ptr %a0, { i64, [1 x i64] } %a1) #0 {
entry:
  tail call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aScopeVar_3e_2ePush_3ccompiler_2ftyped_3aScopeVar_3e(ptr %v0, ptr %a0, { i64, [1 x i64] } %a1)
  ret void
}

define dso_local ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aBlock_26_3e_2eAt_3ccompiler_2ftyped_3aBlock_26_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1) #0 {
entry:
  %r = tail call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcond_3aGlobal_26_3e_2eAt_3ccompiler_2fcond_3aGlobal_26_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
  ret ptr %r
}

define dso_local i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aBlock_26_3e_2eLen_3ccompiler_2ftyped_3aBlock_26_3e(ptr %v0, ptr %a0) #0 {
entry:
  %r = tail call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cU64_3e_2eLen_3cU64_3e(ptr %v0, ptr %a0)
  ret i64 %r
}

define dso_local { i32, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aBlock_26_3e_2ePop_3ccompiler_2ftyped_3aBlock_26_3e(ptr %v0, ptr %v1, ptr %a0) #0 {
entry:
  %r = tail call { i32, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H30b952b85dc190b6cd5306b9d98a7749(ptr %v0, ptr %v1, ptr %a0)
  ret { i32, ptr } %r
}

define dso_local void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aBlock_26_3e_2ePush_3ccompiler_2ftyped_3aBlock_26_3e(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  tail call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcond_3aGlobal_26_3e_2ePush_3ccompiler_2fcond_3aGlobal_26_3e(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
  ret void
}

define dso_local void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocalId_3e_2ePush_3ccompiler_2ftyped_3aLocalId_3e(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  tail call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI32_3e_2ePush_3cI32_3e(ptr %v0, ptr %a0, i32 %a1)
  ret void
}

define dso_local { i32, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aStmt_26_3e_2ePop_3ccompiler_2ftyped_3aStmt_26_3e(ptr %v0, ptr %v1, ptr %a0) #0 {
entry:
  %r = tail call { i32, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H30b952b85dc190b6cd5306b9d98a7749(ptr %v0, ptr %v1, ptr %a0)
  ret { i32, ptr } %r
}

define dso_local %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2flower_3aGap_3e_2ector(ptr %v0, i64 %a0) #0 {
entry:
  %r = tail call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cU64_3e_2ector(ptr %v0, i64 %a0)
  ret %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %r
}

define dso_local %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2flower_3acollectCtx_3e_2ector(ptr %v0, i64 %a0) #0 {
entry:
  %r = tail call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cU64_3e_2ector(ptr %v0, i64 %a0)
  ret %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %r
}

define dso_local %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2flower_3alevel_3e_2ector(ptr %v0, i64 %a0) #0 {
entry:
  %r = tail call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cU64_3e_2ector(ptr %v0, i64 %a0)
  ret %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %r
}

define dso_local %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2flower_3aloopCtx_3e_2ector(ptr %v0, i64 %a0) #0 {
entry:
  %r = tail call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cU64_3e_2ector(ptr %v0, i64 %a0)
  ret %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %r
}

define dso_local %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2flower_3apl_3e_2ector(ptr %v0, i64 %a0) #0 {
entry:
  %r = tail call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cU64_3e_2ector(ptr %v0, i64 %a0)
  ret %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %r
}

define dso_local %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2flower_3arelPath_3e_2ector(ptr %v0, i64 %a0) #0 {
entry:
  %r = tail call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cU64_3e_2ector(ptr %v0, i64 %a0)
  ret %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %r
}

define dso_local %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2flower_3atryCtx_3e_2ector(ptr %v0, i64 %a0) #0 {
entry:
  %r = tail call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cU64_3e_2ector(ptr %v0, i64 %a0)
  ret %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %r
}

define dso_local %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aBlockId_3e_2ector(ptr %v0, i64 %a0) #0 {
entry:
  %r = tail call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cU64_3e_2ector(ptr %v0, i64 %a0)
  ret %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %r
}

define dso_local %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aFnKey_3e_2ector(ptr %v0, i64 %a0) #0 {
entry:
  %r = tail call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cU64_3e_2ector(ptr %v0, i64 %a0)
  ret %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %r
}

define dso_local %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aOperand_3e_2ector(ptr %v0, i64 %a0) #0 {
entry:
  %r = tail call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cU64_3e_2ector(ptr %v0, i64 %a0)
  ret %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %r
}

define dso_local %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aProj_3e_2ector(ptr %v0, i64 %a0) #0 {
entry:
  %r = tail call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cU64_3e_2ector(ptr %v0, i64 %a0)
  ret %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %r
}

define dso_local %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aScopeId_3e_2ector(ptr %v0, i64 %a0) #0 {
entry:
  %r = tail call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cU64_3e_2ector(ptr %v0, i64 %a0)
  ret %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %r
}

define dso_local %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aScopeRef_3e_2ector(ptr %v0, i64 %a0) #0 {
entry:
  %r = tail call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cU64_3e_2ector(ptr %v0, i64 %a0)
  ret %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %r
}

define dso_local %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aBlock_26_3e_2ector(ptr %v0, i64 %a0) #0 {
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
define linkonce_odr i64 @olang_2emir_2eHelperKind_2eHash_2ecompiler_2fmir_3aFnKey(ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca i64
  %l3 = alloca i64
  %l8 = alloca i64
  %l11 = alloca i64
  %l14 = alloca i64
  %l17 = alloca i64
  %l20 = alloca i64
  %l23 = alloca i64
  %l28 = alloca i64
  %l34 = alloca i64
  %l39 = alloca i64
  %l42 = alloca i64
  %rv = alloca i64
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store i64 0, ptr %l1, !tbaa !24
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load i64, ptr %t1, !range !{i64 0, i64 7}
  store i64 %t2, ptr %l2, !tbaa !24
  %t3 = load i64, ptr %l2, !tbaa !24
  %t4 = mul i64 %t3, -7046029254386353131
  store i64 %t4, ptr %l3, !tbaa !24
  %t5 = load i64, ptr %l3, !tbaa !24
  %t6 = ashr i64 %t5, 29
  %t7 = load i64, ptr %l3, !tbaa !24
  %t9 = xor i64 %t7, %t6
  %t10 = load i64, ptr %l1, !tbaa !24
  %t11 = mul i64 %t10, 1099511628211
  %t14 = add i64 %t11, %t9
  store i64 %t14, ptr %l1, !tbaa !24
  %t15 = load i64, ptr %l2, !tbaa !24
  switch i64 %t15, label %bb1 [ i64 0, label %bb2 i64 1, label %bb3 i64 2, label %bb4 i64 3, label %bb5 i64 4, label %bb6 i64 5, label %bb7 i64 6, label %bb8 ]
bb1:
  %t16 = load i64, ptr %l1, !tbaa !24
  store i64 %t16, ptr %rv
  br label %ret
bb2:
  %t17 = load ptr, ptr %l0, !tbaa !29
  %t18 = getelementptr { i64, [2 x i64] }, ptr %t17, i32 0, i32 1
  %t19 = getelementptr { i32 }, ptr %t18, i32 0, i32 0
  %t20 = load i32, ptr %t19
  %t22 = call i64 @std_2fprelude_2fhash_2eI32_2eHash(i32 %t20)
  store i64 %t22, ptr %l8
  br label %bb9
bb3:
  %t23 = load ptr, ptr %l0, !tbaa !29
  %t24 = getelementptr { i64, [2 x i64] }, ptr %t23, i32 0, i32 1
  %t25 = getelementptr { i32 }, ptr %t24, i32 0, i32 0
  %t26 = load i32, ptr %t25
  %t28 = call i64 @std_2fprelude_2fhash_2eI32_2eHash(i32 %t26)
  store i64 %t28, ptr %l11
  br label %bb10
bb4:
  %t29 = load ptr, ptr %l0, !tbaa !29
  %t30 = getelementptr { i64, [2 x i64] }, ptr %t29, i32 0, i32 1
  %t31 = getelementptr { i32 }, ptr %t30, i32 0, i32 0
  %t32 = load i32, ptr %t31
  %t34 = call i64 @std_2fprelude_2fhash_2eI32_2eHash(i32 %t32)
  store i64 %t34, ptr %l14
  br label %bb11
bb5:
  %t35 = load ptr, ptr %l0, !tbaa !29
  %t36 = getelementptr { i64, [2 x i64] }, ptr %t35, i32 0, i32 1
  %t37 = getelementptr { i32, i32 }, ptr %t36, i32 0, i32 0
  %t39 = call i64 @olang_2emir_2eHelperKind_2eHash_2ecompiler_2fmir_3aHelperKind(ptr %t37)
  store i64 %t39, ptr %l17
  br label %bb12
bb6:
  %t40 = load ptr, ptr %l0, !tbaa !29
  %t41 = getelementptr { i64, [2 x i64] }, ptr %t40, i32 0, i32 1
  %t42 = getelementptr { i64 }, ptr %t41, i32 0, i32 0
  %t43 = load i64, ptr %t42
  %t45 = mul i64 %t43, -7046029254386353131
  store i64 %t45, ptr %l23, !tbaa !24
  %t46 = load i64, ptr %l23, !tbaa !24
  %t47 = ashr i64 %t46, 29
  %t48 = load i64, ptr %l23, !tbaa !24
  %t50 = xor i64 %t48, %t47
  %t51 = load i64, ptr %l1, !tbaa !24
  %t52 = mul i64 %t51, 1099511628211
  %t55 = add i64 %t52, %t50
  store i64 %t55, ptr %l1, !tbaa !24
  br label %bb1
bb7:
  %t56 = load ptr, ptr %l0, !tbaa !29
  %t57 = getelementptr { i64, [2 x i64] }, ptr %t56, i32 0, i32 1
  %t58 = getelementptr { i64, i1 }, ptr %t57, i32 0, i32 0
  %t59 = load i64, ptr %t58
  %t61 = mul i64 %t59, -7046029254386353131
  store i64 %t61, ptr %l28, !tbaa !24
  %t62 = load i64, ptr %l28, !tbaa !24
  %t63 = ashr i64 %t62, 29
  %t64 = load i64, ptr %l28, !tbaa !24
  %t66 = xor i64 %t64, %t63
  %t67 = load i64, ptr %l1, !tbaa !24
  %t68 = mul i64 %t67, 1099511628211
  %t71 = add i64 %t68, %t66
  store i64 %t71, ptr %l1, !tbaa !24
  %t72 = load ptr, ptr %l0, !tbaa !29
  %t73 = getelementptr { i64, [2 x i64] }, ptr %t72, i32 0, i32 1
  %t74 = getelementptr { i64, i1 }, ptr %t73, i32 0, i32 1
  %t75 = load i1, ptr %t74
  %t77 = zext i1 %t75 to i64
  %t79 = mul i64 %t77, -7046029254386353131
  store i64 %t79, ptr %l34, !tbaa !24
  %t80 = load i64, ptr %l34, !tbaa !24
  %t81 = ashr i64 %t80, 29
  %t82 = load i64, ptr %l34, !tbaa !24
  %t84 = xor i64 %t82, %t81
  %t85 = load i64, ptr %l1, !tbaa !24
  %t86 = mul i64 %t85, 1099511628211
  %t89 = add i64 %t86, %t84
  store i64 %t89, ptr %l1, !tbaa !24
  br label %bb1
bb8:
  %t90 = load ptr, ptr %l0, !tbaa !29
  %t91 = getelementptr { i64, [2 x i64] }, ptr %t90, i32 0, i32 1
  %t92 = getelementptr { i32, i64 }, ptr %t91, i32 0, i32 0
  %t93 = load i32, ptr %t92
  %t95 = call i64 @std_2fprelude_2fhash_2eI32_2eHash(i32 %t93)
  store i64 %t95, ptr %l39
  br label %bb14
bb9:
  %t96 = load i64, ptr %l1, !tbaa !24
  %t97 = mul i64 %t96, 1099511628211
  %t99 = load i64, ptr %l8, !tbaa !24
  %t100 = add i64 %t97, %t99
  store i64 %t100, ptr %l1, !tbaa !24
  br label %bb1
bb10:
  %t101 = load i64, ptr %l1, !tbaa !24
  %t102 = mul i64 %t101, 1099511628211
  %t104 = load i64, ptr %l11, !tbaa !24
  %t105 = add i64 %t102, %t104
  store i64 %t105, ptr %l1, !tbaa !24
  br label %bb1
bb11:
  %t106 = load i64, ptr %l1, !tbaa !24
  %t107 = mul i64 %t106, 1099511628211
  %t109 = load i64, ptr %l14, !tbaa !24
  %t110 = add i64 %t107, %t109
  store i64 %t110, ptr %l1, !tbaa !24
  br label %bb1
bb12:
  %t111 = load i64, ptr %l1, !tbaa !24
  %t112 = mul i64 %t111, 1099511628211
  %t114 = load i64, ptr %l17, !tbaa !24
  %t115 = add i64 %t112, %t114
  store i64 %t115, ptr %l1, !tbaa !24
  %t116 = load ptr, ptr %l0, !tbaa !29
  %t117 = getelementptr { i64, [2 x i64] }, ptr %t116, i32 0, i32 1
  %t118 = getelementptr { i32, i32 }, ptr %t117, i32 0, i32 1
  %t119 = load i32, ptr %t118
  %t121 = call i64 @std_2fprelude_2fhash_2eI32_2eHash(i32 %t119)
  store i64 %t121, ptr %l20
  br label %bb13
bb13:
  %t122 = load i64, ptr %l1, !tbaa !24
  %t123 = mul i64 %t122, 1099511628211
  %t125 = load i64, ptr %l20, !tbaa !24
  %t126 = add i64 %t123, %t125
  store i64 %t126, ptr %l1, !tbaa !24
  br label %bb1
bb14:
  %t127 = load i64, ptr %l1, !tbaa !24
  %t128 = mul i64 %t127, 1099511628211
  %t130 = load i64, ptr %l39, !tbaa !24
  %t131 = add i64 %t128, %t130
  store i64 %t131, ptr %l1, !tbaa !24
  %t132 = load ptr, ptr %l0, !tbaa !29
  %t133 = getelementptr { i64, [2 x i64] }, ptr %t132, i32 0, i32 1
  %t134 = getelementptr { i32, i64 }, ptr %t133, i32 0, i32 1
  %t135 = load i64, ptr %t134
  %t137 = mul i64 %t135, -7046029254386353131
  store i64 %t137, ptr %l42, !tbaa !24
  %t138 = load i64, ptr %l42, !tbaa !24
  %t139 = ashr i64 %t138, 29
  %t140 = load i64, ptr %l42, !tbaa !24
  %t142 = xor i64 %t140, %t139
  %t143 = load i64, ptr %l1, !tbaa !24
  %t144 = mul i64 %t143, 1099511628211
  %t147 = add i64 %t144, %t142
  store i64 %t147, ptr %l1, !tbaa !24
  br label %bb1
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define linkonce_odr i1 @olang_2emir_2eHelperKind_2eEqual_2ecompiler_2fmir_3aFnKey(ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i1
  %l3 = alloca i64
  %l17 = alloca i1
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store i1 true, ptr %l2, !tbaa !21
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load i64, ptr %t1, !range !{i64 0, i64 7}
  store i64 %t2, ptr %l3, !tbaa !24
  %t3 = load ptr, ptr %l1, !tbaa !29
  %t4 = load i64, ptr %t3, !range !{i64 0, i64 7}
  %t5 = load i64, ptr %l3, !tbaa !24
  %t7 = icmp eq i64 %t5, %t4
  br i1 %t7, label %bb2, label %bb1
bb1:
  store i1 false, ptr %l2, !tbaa !21
  br label %bb22
bb2:
  %t9 = load i64, ptr %l3, !tbaa !24
  switch i64 %t9, label %bb3 [ i64 0, label %bb4 i64 1, label %bb5 i64 2, label %bb6 i64 3, label %bb7 i64 4, label %bb8 i64 5, label %bb9 i64 6, label %bb10 ]
bb3:
  br label %bb22
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
  br i1 %t20, label %bb11, label %bb1
bb5:
  %t22 = load ptr, ptr %l0, !tbaa !29
  %t23 = getelementptr { i64, [2 x i64] }, ptr %t22, i32 0, i32 1
  %t24 = getelementptr { i32 }, ptr %t23, i32 0, i32 0
  %t25 = load i32, ptr %t24
  %t26 = load ptr, ptr %l1, !tbaa !29
  %t27 = getelementptr { i64, [2 x i64] }, ptr %t26, i32 0, i32 1
  %t28 = getelementptr { i32 }, ptr %t27, i32 0, i32 0
  %t29 = load i32, ptr %t28
  %t32 = icmp eq i32 %t25, %t29
  br i1 %t32, label %bb12, label %bb1
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
  br i1 %t44, label %bb13, label %bb1
bb7:
  %t46 = load ptr, ptr %l0, !tbaa !29
  %t47 = getelementptr { i64, [2 x i64] }, ptr %t46, i32 0, i32 1
  %t48 = getelementptr { i32, i32 }, ptr %t47, i32 0, i32 0
  %t49 = load ptr, ptr %l1, !tbaa !29
  %t50 = getelementptr { i64, [2 x i64] }, ptr %t49, i32 0, i32 1
  %t51 = getelementptr { i32, i32 }, ptr %t50, i32 0, i32 0
  %t54 = call i1 @olang_2emir_2eHelperKind_2eEqual_2ecompiler_2fmir_3aHelperKind(ptr %t48, ptr %t51)
  store i1 %t54, ptr %l17
  br label %bb14
bb8:
  %t55 = load ptr, ptr %l0, !tbaa !29
  %t56 = getelementptr { i64, [2 x i64] }, ptr %t55, i32 0, i32 1
  %t57 = getelementptr { i64 }, ptr %t56, i32 0, i32 0
  %t58 = load i64, ptr %t57
  %t59 = load ptr, ptr %l1, !tbaa !29
  %t60 = getelementptr { i64, [2 x i64] }, ptr %t59, i32 0, i32 1
  %t61 = getelementptr { i64 }, ptr %t60, i32 0, i32 0
  %t62 = load i64, ptr %t61
  %t65 = icmp eq i64 %t58, %t62
  br i1 %t65, label %bb17, label %bb1
bb9:
  %t67 = load ptr, ptr %l0, !tbaa !29
  %t68 = getelementptr { i64, [2 x i64] }, ptr %t67, i32 0, i32 1
  %t69 = getelementptr { i64, i1 }, ptr %t68, i32 0, i32 0
  %t70 = load i64, ptr %t69
  %t71 = load ptr, ptr %l1, !tbaa !29
  %t72 = getelementptr { i64, [2 x i64] }, ptr %t71, i32 0, i32 1
  %t73 = getelementptr { i64, i1 }, ptr %t72, i32 0, i32 0
  %t74 = load i64, ptr %t73
  %t77 = icmp eq i64 %t70, %t74
  br i1 %t77, label %bb18, label %bb1
bb10:
  %t79 = load ptr, ptr %l0, !tbaa !29
  %t80 = getelementptr { i64, [2 x i64] }, ptr %t79, i32 0, i32 1
  %t81 = getelementptr { i32, i64 }, ptr %t80, i32 0, i32 0
  %t82 = load i32, ptr %t81
  %t83 = load ptr, ptr %l1, !tbaa !29
  %t84 = getelementptr { i64, [2 x i64] }, ptr %t83, i32 0, i32 1
  %t85 = getelementptr { i32, i64 }, ptr %t84, i32 0, i32 0
  %t86 = load i32, ptr %t85
  %t89 = icmp eq i32 %t82, %t86
  br i1 %t89, label %bb20, label %bb1
bb11:
  br label %bb3
bb12:
  br label %bb3
bb13:
  br label %bb3
bb14:
  %t91 = load i1, ptr %l17, !tbaa !21
  br i1 %t91, label %bb15, label %bb1
bb15:
  %t92 = load ptr, ptr %l0, !tbaa !29
  %t93 = getelementptr { i64, [2 x i64] }, ptr %t92, i32 0, i32 1
  %t94 = getelementptr { i32, i32 }, ptr %t93, i32 0, i32 1
  %t95 = load i32, ptr %t94
  %t96 = load ptr, ptr %l1, !tbaa !29
  %t97 = getelementptr { i64, [2 x i64] }, ptr %t96, i32 0, i32 1
  %t98 = getelementptr { i32, i32 }, ptr %t97, i32 0, i32 1
  %t99 = load i32, ptr %t98
  %t102 = icmp eq i32 %t95, %t99
  br i1 %t102, label %bb16, label %bb1
bb16:
  br label %bb3
bb17:
  br label %bb3
bb18:
  %t104 = load ptr, ptr %l0, !tbaa !29
  %t105 = getelementptr { i64, [2 x i64] }, ptr %t104, i32 0, i32 1
  %t106 = getelementptr { i64, i1 }, ptr %t105, i32 0, i32 1
  %t107 = load i1, ptr %t106
  %t108 = load ptr, ptr %l1, !tbaa !29
  %t109 = getelementptr { i64, [2 x i64] }, ptr %t108, i32 0, i32 1
  %t110 = getelementptr { i64, i1 }, ptr %t109, i32 0, i32 1
  %t111 = load i1, ptr %t110
  %t114 = icmp eq i1 %t107, %t111
  br i1 %t114, label %bb19, label %bb1
bb19:
  br label %bb3
bb20:
  %t116 = load ptr, ptr %l0, !tbaa !29
  %t117 = getelementptr { i64, [2 x i64] }, ptr %t116, i32 0, i32 1
  %t118 = getelementptr { i32, i64 }, ptr %t117, i32 0, i32 1
  %t119 = load i64, ptr %t118
  %t120 = load ptr, ptr %l1, !tbaa !29
  %t121 = getelementptr { i64, [2 x i64] }, ptr %t120, i32 0, i32 1
  %t122 = getelementptr { i32, i64 }, ptr %t121, i32 0, i32 1
  %t123 = load i64, ptr %t122
  %t126 = icmp eq i64 %t119, %t123
  br i1 %t126, label %bb21, label %bb1
bb21:
  br label %bb3
bb22:
  %t128 = load i1, ptr %l2, !tbaa !21
  store i1 %t128, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define linkonce_odr %"compiler/lower:loopCtx" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2flower_3aloopCtx(ptr %v0, ptr %a0) #0 {
entry:
  %l1 = alloca %"compiler/lower:loopCtx"
  %l3 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l5 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %rv = alloca %"compiler/lower:loopCtx"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = load %"compiler/lower:loopCtx", ptr %a0
  store %"compiler/lower:loopCtx" %t2, ptr %l1
  %t3 = getelementptr %"compiler/lower:loopCtx", ptr %l1, i32 0, i32 3
  %t5 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aBlockId_3e(ptr %v0, ptr %t3)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t5, ptr %l3
  br label %bb1
bb1:
  %t6 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l3
  %t7 = getelementptr %"compiler/lower:loopCtx", ptr %l1, i32 0, i32 3
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t6, ptr %t7
  %t8 = getelementptr %"compiler/lower:loopCtx", ptr %l1, i32 0, i32 4
  %t10 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aBlockId_3e(ptr %v0, ptr %t8)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t10, ptr %l5
  br label %bb2
bb2:
  %t11 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l5
  %t12 = getelementptr %"compiler/lower:loopCtx", ptr %l1, i32 0, i32 4
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t11, ptr %t12
  %t13 = load %"compiler/lower:loopCtx", ptr %l1
  store %"compiler/lower:loopCtx" %t13, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/lower:loopCtx", ptr %rv
  ret %"compiler/lower:loopCtx" %rr
}

declare noalias ptr @__olang_scope_alloc_zeroed(ptr, i64)
define linkonce_odr %"compiler/lower:pl" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2flower_3apl(ptr %v0, ptr %a0) #0 {
entry:
  %l1 = alloca %"compiler/lower:pl"
  %l3 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %rv = alloca %"compiler/lower:pl"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = load %"compiler/lower:pl", ptr %a0
  store %"compiler/lower:pl" %t2, ptr %l1
  %t3 = getelementptr %"compiler/lower:pl", ptr %l1, i32 0, i32 1
  %t5 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cArray_3cI64_3e_26_3e(ptr %v0, ptr %t3)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t5, ptr %l3
  br label %bb1
bb1:
  %t6 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l3
  %t7 = getelementptr %"compiler/lower:pl", ptr %l1, i32 0, i32 1
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t6, ptr %t7
  %t8 = load %"compiler/lower:pl", ptr %l1
  store %"compiler/lower:pl" %t8, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/lower:pl", ptr %rv
  ret %"compiler/lower:pl" %rr
}

define linkonce_odr %"compiler/lower:relPath" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2flower_3arelPath(ptr %v0, ptr %a0) #0 {
entry:
  %l1 = alloca %"compiler/lower:relPath"
  %l2 = alloca { i64, ptr }
  %l3 = alloca i64
  %l4 = alloca { i64, ptr }
  %rv = alloca %"compiler/lower:relPath"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = load %"compiler/lower:relPath", ptr %a0
  store %"compiler/lower:relPath" %t2, ptr %l1
  %t3 = getelementptr %"compiler/lower:relPath", ptr %l1, i32 0, i32 1
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
  %t19 = getelementptr %"compiler/lower:relPath", ptr %l1, i32 0, i32 1
  store { i64, ptr } %t18, ptr %t19, !tbaa !27
  %t20 = load %"compiler/lower:relPath", ptr %l1
  store %"compiler/lower:relPath" %t20, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/lower:relPath", ptr %rv
  ret %"compiler/lower:relPath" %rr
}

define linkonce_odr %"compiler/lower:tryCtx" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2flower_3atryCtx(ptr %v0, ptr %a0) #0 {
entry:
  %l1 = alloca %"compiler/lower:tryCtx"
  %l3 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %rv = alloca %"compiler/lower:tryCtx"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = load %"compiler/lower:tryCtx", ptr %a0
  store %"compiler/lower:tryCtx" %t2, ptr %l1
  %t3 = getelementptr %"compiler/lower:tryCtx", ptr %l1, i32 0, i32 4
  %t5 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aBlockId_3e(ptr %v0, ptr %t3)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t5, ptr %l3
  br label %bb1
bb1:
  %t6 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l3
  %t7 = getelementptr %"compiler/lower:tryCtx", ptr %l1, i32 0, i32 4
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t6, ptr %t7
  %t8 = load %"compiler/lower:tryCtx", ptr %l1
  store %"compiler/lower:tryCtx" %t8, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/lower:tryCtx", ptr %rv
  ret %"compiler/lower:tryCtx" %rr
}

@__olang_empty_array = external constant [16 x i64]
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
define linkonce_odr i64 @olang_2emir_2eHelperKind_2eHash_2ecompiler_2fmir_3aHelperKind(ptr %a0) #0 {
entry:
  %l1 = alloca i64
  %l3 = alloca i64
  %rv = alloca i64
  br label %start
start:
  br label %bb0
bb0:
  store i64 0, ptr %l1, !tbaa !24
  %t2 = load i32, ptr %a0, !range !{i32 0, i32 8}
  %t3 = sext i32 %t2 to i64
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
  %t16 = load i64, ptr %l1, !tbaa !24
  store i64 %t16, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define linkonce_odr i1 @olang_2emir_2eHelperKind_2eEqual_2ecompiler_2fmir_3aHelperKind(ptr %a0, ptr %a1) #0 {
entry:
  %l2 = alloca i1
  %rv = alloca i1
  br label %start
start:
  br label %bb0
bb0:
  store i1 true, ptr %l2, !tbaa !21
  %t2 = load i32, ptr %a0, !range !{i32 0, i32 8}
  %t3 = sext i32 %t2 to i64
  %t5 = load i32, ptr %a1, !range !{i32 0, i32 8}
  %t6 = sext i32 %t5 to i64
  %t9 = icmp eq i64 %t3, %t6
  br i1 %t9, label %bb2, label %bb1
bb1:
  store i1 false, ptr %l2, !tbaa !21
  br label %bb3
bb2:
  br label %bb3
bb3:
  %t11 = load i1, ptr %l2, !tbaa !21
  store i1 %t11, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
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

declare void @llvm.memmove.p0.p0.i64(ptr, ptr, i64, i1)
declare noalias ptr @__olang_scope_alloc_slow(ptr, i64, i64) noinline
declare i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_H068cfedf7407289d149ee3c6f4c8aa20(ptr %v0, ptr %a0, i64 %a1)
declare { i32, i32 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2ftypes_3aTypeId_3e__H9861f6f09602cf23d49075e82ac9429b(ptr %v0, ptr %a0, i64 %a1)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2ftypes_3aTypeId_3e__H9009f93429b3aef40abc291fa3177e1e(ptr %v0, ptr %a0)
declare i64 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Array_3ccompiler_2ftyped_3aBl_He88cfdc4919e1dee4cfd0cdecebbca1d(ptr %v0, ptr %a0, i64 %a1)
declare i64 @std_2fprelude_2fmap_2efreeLink(i64 %a0)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2ftypes_3aTypeId_3e__Hbdd7c5068e376aa260a62181a9f99429(ptr %v0, ptr %a0, i64 %a1, i32 %a2)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2ftypes_3aTypeId_3e__H794d3eb85f14516c95c7099ffa2bb98c(ptr %v0, ptr %a0, i64 %a1, i64 %a2, i32 %a3)
declare { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2ftypes_3aTypeId_3e__Hd2a516d8805bb7924f0b2c0c5d7b17b5(ptr %v0, ptr %a0, i64 %a1)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2ftypes_3aTypeId_3e__H9417a29e0f32fc2aa662cd54d10b46f2(ptr %v0, ptr %a0)
@olang_loc_a6adca394a83bf76_d8e0f8b00fb0b64a = external constant [0 x i8]
@olang_loc_2fc1ada24d2a2aba_cf50e9ec8732da9e = external constant [0 x i8]
@olang_loc_629272ec9c34cd97_b77aa960c9f8ea9b = external constant [0 x i8]
@olang_loc_9f54463f911bbbe1_f325f6bf75a3c85d = external constant [0 x i8]
declare %"std/prelude/map:MapKeyIter.bf5835bb10600fe6a7fc1da14a6360d9" @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_Hd80cb4cbc6ceb8a13686fbc19b8451b4(ptr %v0, ptr %v1, ptr %a0)
declare i64 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2ftyped_3aVersions_2_H0b5e11c98f28e10a1176da3c2806abb8(ptr %v0, ptr %a0)
@olang_loc_9e27c34721eceac6_f162f032b542dd6a = external constant [0 x i8]
@olang_loc_31ae6e08448e2c5a_fc508ccbb81ed14e = external constant [0 x i8]
@olang_loc_70d7765b799e4db7_3476719e7fa16f4b = external constant [0 x i8]
@olang_loc_8d0d1fc8faafb7e8_67030ad13592c9f4 = external constant [0 x i8]
declare %"std/prelude/map:MapEntry.d0636885f2b44490dbc61e56fa468a20" @std_2fprelude_2fmap_3aMapEntry_3cI64_2c_20compiler_2ftypes_3aTypeId_3e_2ector(ptr %v0, i64 %a0, i32 %a1)
declare %"std/prelude/map:MapKeyIter.bf5835bb10600fe6a7fc1da14a6360d9" @std_2fprelude_2fmap_3aMapKeyIter_3cstd_2fprelude_2ftext_3aString_26_2c_20std_2fprelude_2ftext_3aString_26_3e_2ector(ptr %v0, ptr %v1, ptr %a0)
declare %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20compiler_2fsource_3aNameId_3e_2ector(ptr %v0)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cU64_3e_2eLen_3cU64_3e(ptr %v0, ptr %a0)
@olang_loc_bd4d5de59a219420_4bdae22be829ea44 = external constant [0 x i8]
@olang_loc_67b00e737c45bee3_63119daa8b8b7597 = external constant [0 x i8]
@olang_loc_33db97d4196cb0ac_97b376f7d739bfe0 = external constant [0 x i8]
@olang_loc_2a0308d202975a06_497d9fbbbd60595a = external constant [0 x i8]
@olang_loc_76b86c55e07919f6_264aefe04044bd1a = external constant [0 x i8]
@olang_loc_36158707b7c2e8c0_5ade71222ca2e1f4 = external constant [0 x i8]
@olang_loc_1d6316cb7127b1a_e334a1e414cc449e = external constant [0 x i8]
declare i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aNameId_3e_2eAt_3ccompiler_2fsource_3aNameId_3e(ptr %v0, ptr %a0, i64 %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI32_3e_2ePush_3cI32_3e(ptr %v0, ptr %a0, i32 %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2eSetAt_3ccompiler_2ftypes_3aTypeId_3e(ptr %v0, ptr %a0, i64 %a1, i32 %a2)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI32_3e_2eroom_3cI32_3e(ptr %v0, ptr %a0, i64 %a1)
declare { i64, [2 x i64] } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3aTerm_3e_2eAt_3ccompiler_2fscope_3aTerm_3e(ptr %v0, ptr %a0, i64 %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3aTerm_3e_2ePush_3ccompiler_2fscope_3aTerm_3e(ptr %v0, ptr %a0, { i64, [2 x i64] } %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3aTerm_3e_2eroom_3ccompiler_2fscope_3aTerm_3e(ptr %v0, ptr %a0, i64 %a1)
@olang_loc_e830083477ac3acf_e07c8e26dbb2717b = external constant [0 x i8]
@olang_loc_3e36132a3052637a_18572711d0b9c0e6 = external constant [0 x i8]
@olang_loc_458fdeac205c0154_72a2acc111bb0b18 = external constant [0 x i8]
declare { i64, [1 x i64] } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aScopeVar_3e_2eAt_3ccompiler_2ftyped_3aScopeVar_3e(ptr %v0, ptr %a0, i64 %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aScopeVar_3e_2ePush_3ccompiler_2ftyped_3aScopeVar_3e(ptr %v0, ptr %a0, { i64, [1 x i64] } %a1)
@olang_loc_a506bd3f6055e9b_13bf30702544d077 = external constant [0 x i8]
@olang_loc_be207203df869506_33d988219177d8c2 = external constant [0 x i8]
@olang_loc_d1873633b0a7d7c0_c1f5a1d4a9a9d3d4 = external constant [0 x i8]
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aScopeVar_3e_2eroom_3ccompiler_2ftyped_3aScopeVar_3e(ptr %v0, ptr %a0, i64 %a1)
declare { i32, i32 } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aBlockId_3e_2ePop_3ccompiler_2ftyped_3aBlockId_3e(ptr %v0, ptr %a0)
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcond_3aGlobal_26_3e_2eAt_3ccompiler_2fcond_3aGlobal_26_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare { i32, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H30b952b85dc190b6cd5306b9d98a7749(ptr %v0, ptr %v1, ptr %a0)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcond_3aGlobal_26_3e_2ePush_3ccompiler_2fcond_3aGlobal_26_3e(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcond_3aGlobal_26_3e_2eroom_3ccompiler_2fcond_3aGlobal_26_3e(ptr %v0, ptr %a0, i64 %a1)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cU64_3e_2ector(ptr %v0, i64 %a0)
declare i64 @std_2fprelude_2fhash_2eI32_2eHash(i32 %a0)

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
