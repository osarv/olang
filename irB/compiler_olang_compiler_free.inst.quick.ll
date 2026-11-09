source_filename = "compiler_olang_compiler_free.inst.quick.ll"
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
%"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" = type { { i64, ptr }, { i64, ptr }, { i64, ptr }, i64, i64, i64 }
%"std/prelude/map:MapEntry.f17f3f0202174eb6591f595766c15613" = type { i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"std/prelude/map:MapEntry.0769abb240fa4d9f09390771d4b86387" = type { i32, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"std/prelude/map:MapEntry.2a60b5fdde847676acc31582b777d2c3" = type { i32, { i64, ptr } }
%"std/prelude/map:MapEntry.adf118859e04490c36a9a3f2e59cf058" = type { %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", { i64, ptr } }
%"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" = type { i64, i64 }
%"compiler/free:feedCall" = type { i64, i64, i64, i64, i64, i1 }
%"compiler/free:feed" = type { i64, i64, i64, i64, { i64, [2 x i64] }, { i64, [2 x i64] }, i64 }
%"compiler/free:leaf" = type { { i64, ptr }, i64 }
%"compiler/free:letGo" = type { i64, i64, i64, %"compiler/source:Span", %"compiler/source:Span", i64, %"compiler/source:Span", i64, i1 }
%"compiler/source:Span" = type { i32, i32 }
%"compiler/free:orCall" = type { i64, i64, i64, i64, i64, ptr, ptr }
%"compiler/free:orStore" = type { i64, i64, ptr, ptr }
%"compiler/free:reason" = type { i64, i64, %"compiler/source:Span", { i64, ptr } }
%"compiler/free:retire" = type { i64, %"compiler/source:Span", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/free:store" = type { i64, i64, i64, %"compiler/source:Span", i64, i64, i64, ptr, ptr }
%"compiler/typed:Plan" = type { { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", { i64, ptr }, { i64, ptr }, { i64, ptr }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
define dso_local i64 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2fvec_3aVec_3cc_H17fb8ab9ebc71e58a247ae267b9043f0(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %r = tail call i64 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Array_3ccompiler_2ftyped_3aBl_He88cfdc4919e1dee4cfd0cdecebbca1d(ptr %v0, ptr %a0, i64 %a1)
  ret i64 %r
}

define dso_local { i32, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2fvec_3aVec_3cc_H1c6ff733ce949281236b08418b935189(ptr %v0, ptr %v1, ptr %a0, i64 %a1) #0 {
entry:
  %r = tail call { i32, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2fvec_3aVec_3cI_Heebd28230b8fdd871dbb93ccdeb5ff7f(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
  ret { i32, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" } %r
}

define dso_local void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2fvec_3aVec_3cc_H4057097bf127937e673a7f89a723e29a(ptr %v0, ptr %v1, ptr %a0, i64 %a1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %a2) #0 {
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
  call void @__olang_check_failed(ptr @olang_loc_79e185e5012865bd_cd07b8da98a1151)
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
  call void @__olang_check_failed(ptr @olang_loc_79e185e5012865bd_cd07b8da98a1151)
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
  %t71 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aBlockId_3e(ptr %v0, ptr %l29)
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
  %t95 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aBlockId_3e(ptr %s0, ptr %l38)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t95, ptr %l40
  br label %bb19
bb19:
  %t96 = load ptr, ptr %l35, !tbaa !29
  %t97 = load i64, ptr %l36, !tbaa !24
  %t98 = load i64, ptr %l37, !tbaa !24
  %t99 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l40
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2fvec_3aVec_3cc_H635dbee12d970754805f3ad2ecbbe7ea(ptr %v0, ptr %s0, ptr %t96, i64 %t97, i64 %t98, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t99)
  br label %bb20
bb20:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2fvec_3aVec_3cc_H48be4d072aa67a39865369f0fe94a62c(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l3 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i32
  %l11 = alloca %"std/prelude/map:MapEntry.f17f3f0202174eb6591f595766c15613"
  %rv = alloca i1
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t5 = call { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2fvec_3aVec_3cc_H6ddcb23835ee1848fee3a29019ff48c5(ptr %v0, ptr %t1, i64 %a1)
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
  %t20 = getelementptr %"std/prelude/map:MapEntry.f17f3f0202174eb6591f595766c15613", ptr %t19, i64 %t12
  %t21 = load %"std/prelude/map:MapEntry.f17f3f0202174eb6591f595766c15613", ptr %t20
  store %"std/prelude/map:MapEntry.f17f3f0202174eb6591f595766c15613" zeroinitializer, ptr %t20
  store %"std/prelude/map:MapEntry.f17f3f0202174eb6591f595766c15613" %t21, ptr %l11
  store i1 true, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2fvec_3aVec_3cc_H635dbee12d970754805f3ad2ecbbe7ea(ptr %v0, ptr %v1, ptr %a0, i64 %a1, i64 %a2, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %a3) #0 {
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
  %t60 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aBlockId_3e(ptr %v0, ptr %l29)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t60, ptr %l31
  br label %bb9
bb9:
  %t61 = load i64, ptr %l28, !tbaa !24
  %t62 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l31
  %t63 = call %"std/prelude/map:MapEntry.f17f3f0202174eb6591f595766c15613" @std_2fprelude_2fmap_3aMapEntry_3cI64_2c_20std_2fprelude_2fvec_3aVec_3cI64_3e_3e_2ector(ptr %v0, ptr %v0, i64 %t61, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t62)
  store %"std/prelude/map:MapEntry.f17f3f0202174eb6591f595766c15613" %t63, ptr %l32
  br label %bb10
bb10:
  %t65 = call %"std/prelude/map:MapEntry.f17f3f0202174eb6591f595766c15613" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMapEntry_3cI64_2c_20std_2fprelud_H71177966bad46d14f5199700b30e3f5d(ptr %v0, ptr %l32)
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

define dso_local { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2fvec_3aVec_3cc_H6ddcb23835ee1848fee3a29019ff48c5(ptr %v0, ptr %a0, i64 %a1) #0 {
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
  %t39 = getelementptr %"std/prelude/map:MapEntry.f17f3f0202174eb6591f595766c15613", ptr %t38, i64 %t33
  %t40 = getelementptr %"std/prelude/map:MapEntry.f17f3f0202174eb6591f595766c15613", ptr %t39, i32 0, i32 0
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

define dso_local { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2fvec_3aVec_3cc_Hb31d7d04ed0b967e045fac66e0fbba2b(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %r = tail call { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2fvec_3aVec_3cI_H0bd8b2e51f5f92f67cbd68b5195b203d(ptr %v0, ptr %a0, i64 %a1)
  ret { i32, i64 } %r
}

define dso_local void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2fvec_3aVec_3cc_Hba6a9af93ba8dae64947cae6ff081e32(ptr %v0, ptr %a0) #0 {
entry:
  tail call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2fvec_3aVec_3cI_H6c078a596243b892e1847e2ccd4290dd(ptr %v0, ptr %a0)
  ret void
}

define dso_local void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2fvec_3aVec_3cc_Hcb8ba31809995dcae45f5acc6cf39f88(ptr %v0, ptr %a0) #0 {
entry:
  tail call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2fvec_3aVec_3cI_H84f9774226d7b378ef632445c463492d(ptr %v0, ptr %a0)
  ret void
}

define dso_local i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2fvec_3aVec_3cc_Hdac74c9fe050981f98ad068d3cced248(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %r = tail call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_H068cfedf7407289d149ee3c6f4c8aa20(ptr %v0, ptr %a0, i64 %a1)
  ret i1 %r
}

define dso_local void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId_2c_20std_2fp_H06dc6d0a1571b0e8c89911ba8a179a27(ptr %v0, ptr %v1, ptr %a0, i64 %a1, i32 %a2, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l4 = alloca i64
  %l9 = alloca ptr
  %l13 = alloca i64
  %l23 = alloca ptr
  %l26 = alloca ptr
  %l27 = alloca i64
  %l28 = alloca i32
  %l29 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l31 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l32 = alloca %"std/prelude/map:MapEntry.0769abb240fa4d9f09390771d4b86387"
  %l34 = alloca %"std/prelude/map:MapEntry.0769abb240fa4d9f09390771d4b86387"
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
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId_2c_20std_2fp_H8c645e861eab79d24ab88315f6be380b(ptr %v0, ptr %t39)
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
  store i32 %a2, ptr %l28, !tbaa !23
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %a3, ptr %l29
  %t60 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cI64_3e(ptr %v0, ptr %l29)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t60, ptr %l31
  br label %bb9
bb9:
  %t61 = load i32, ptr %l28, !tbaa !23
  %t62 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l31
  %t63 = call %"std/prelude/map:MapEntry.0769abb240fa4d9f09390771d4b86387" @std_2fprelude_2fmap_3aMapEntry_3ccompiler_2ftypes_3aTypeId_2c_20std_2fprelude_2fvec_3aVe_H61ac9fba86d846ffc08750bef4ca1ed1(ptr %v0, ptr %v0, i32 %t61, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t62)
  store %"std/prelude/map:MapEntry.0769abb240fa4d9f09390771d4b86387" %t63, ptr %l32
  br label %bb10
bb10:
  %t65 = call %"std/prelude/map:MapEntry.0769abb240fa4d9f09390771d4b86387" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMapEntry_3ccompiler_2ftypes_3aTy_Hb90c848738a6017ace01ca680fb7cc35(ptr %v0, ptr %l32)
  store %"std/prelude/map:MapEntry.0769abb240fa4d9f09390771d4b86387" %t65, ptr %l34
  br label %bb11
bb11:
  %t66 = load %"std/prelude/map:MapEntry.0769abb240fa4d9f09390771d4b86387", ptr %l34
  %t67 = load ptr, ptr %l26, !tbaa !29
  %t68 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t67, i32 0, i32 0
  %t69 = load i64, ptr %l27, !tbaa !24
  %t70 = getelementptr { i64, ptr }, ptr %t68, i32 0, i32 1
  %t71 = load ptr, ptr %t70, !tbaa !27
  %t72 = getelementptr %"std/prelude/map:MapEntry.0769abb240fa4d9f09390771d4b86387", ptr %t71, i64 %t69
  store %"std/prelude/map:MapEntry.0769abb240fa4d9f09390771d4b86387" %t66, ptr %t72
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
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId_2c_20std_2fp_Hbc3ad208bc099e1e563908d1c524859c(ptr %v0, ptr %t128)
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

define dso_local { i32, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId_2c_20std_2fp_H08f3244764437e29647226f03a29c83b(ptr %v0, ptr %v1, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i32
  %rv = alloca { i32, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1, ptr %l2, !tbaa !29
  %t2 = load ptr, ptr %l0, !tbaa !29
  %t6 = call { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId_2c_20std_2fp_H320ad4105ad386fc2b87dbc57360cb3f(ptr %v0, ptr %t2, i32 %a1)
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
  %t22 = insertvalue { i32, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" } zeroinitializer, i32 %t20, 0
  store { i32, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" } %t22, ptr %rv
  br label %ret
bb3:
  %t23 = load ptr, ptr %l2, !tbaa !29
  %t24 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t23, i32 0, i32 0
  %t25 = load i64, ptr %l3, !tbaa !24
  %t26 = getelementptr { i64, ptr }, ptr %t24, i32 0, i32 1
  %t27 = load ptr, ptr %t26, !tbaa !27
  %t28 = getelementptr %"std/prelude/map:MapEntry.0769abb240fa4d9f09390771d4b86387", ptr %t27, i64 %t25
  %t29 = getelementptr %"std/prelude/map:MapEntry.0769abb240fa4d9f09390771d4b86387", ptr %t28, i32 0, i32 1
  %t30 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t29
  %t32 = insertvalue { i32, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" } zeroinitializer, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t30, 1
  store { i32, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" } %t32, ptr %rv
  br label %ret
ret:
  %rr = load { i32, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }, ptr %rv
  ret { i32, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" } %rr
}

define dso_local i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId_2c_20std_2fp_H0fa35282e56bd0cd9b08251ba99b9868(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l2 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i32
  %rv = alloca i1
  br label %start
start:
  br label %bb0
bb0:
  %t5 = call { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId_2c_20std_2fp_H320ad4105ad386fc2b87dbc57360cb3f(ptr %v0, ptr %a0, i32 %a1)
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

define dso_local void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId_2c_20std_2fp_H127fb385441fbfd25cd8404c6b268b5d(ptr %v0, ptr %v1, ptr %a0, i32 %a1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
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
  %l37 = alloca i32
  %l38 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l40 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %s0 = alloca %olang.scope
  %t17 = alloca i64
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
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
  call void @__olang_check_failed(ptr @olang_loc_f5e55978a1ca9294_9305906d0ec8bac0)
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
  call void @__olang_check_failed(ptr @olang_loc_f5e55978a1ca9294_9305906d0ec8bac0)
  unreachable
bb7:
  %t30 = load ptr, ptr %l0, !tbaa !29
  %t31 = load i32, ptr %l1, !tbaa !23
  %t34 = call i64 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fsource_3aNameId_2c_20Bool_3_H0ad23e78b2b593286f94a0de5701989f(ptr %v0, ptr %t30, i32 %t31)
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
  %t59 = getelementptr %"std/prelude/map:MapEntry.0769abb240fa4d9f09390771d4b86387", ptr %t58, i64 %t53
  %t60 = getelementptr %"std/prelude/map:MapEntry.0769abb240fa4d9f09390771d4b86387", ptr %t59, i32 0, i32 0
  %t61 = load i32, ptr %t60, !tbaa !23
  %t62 = load i32, ptr %l1, !tbaa !23
  %t65 = icmp eq i32 %t61, %t62
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
  %t78 = getelementptr %"std/prelude/map:MapEntry.0769abb240fa4d9f09390771d4b86387", ptr %t77, i64 %t75
  %t79 = getelementptr %"std/prelude/map:MapEntry.0769abb240fa4d9f09390771d4b86387", ptr %t78, i32 0, i32 1
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
  %t92 = load i32, ptr %l1, !tbaa !23
  store i32 %t92, ptr %l37, !tbaa !23
  %t93 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l2
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t93, ptr %l38
  %t95 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cI64_3e(ptr %s0, ptr %l38)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t95, ptr %l40
  br label %bb19
bb19:
  %t96 = load ptr, ptr %l35, !tbaa !29
  %t97 = load i64, ptr %l36, !tbaa !24
  %t98 = load i32, ptr %l37, !tbaa !23
  %t99 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l40
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId_2c_20std_2fp_H06dc6d0a1571b0e8c89911ba8a179a27(ptr %v0, ptr %s0, ptr %t96, i64 %t97, i32 %t98, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t99)
  br label %bb20
bb20:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId_2c_20std_2fp_H2bb64fd79dc59453b9269b2696d6897f(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %r = tail call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId_2c_20Array_3_H6743fd6fdd876d533cce32e3c0cd25b6(ptr %v0, ptr %a0, i32 %a1)
  ret i1 %r
}

define dso_local i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId_2c_20std_2fp_H2ec6d9742f7c8443fadeb200505638c9(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %r = tail call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_H068cfedf7407289d149ee3c6f4c8aa20(ptr %v0, ptr %a0, i64 %a1)
  ret i1 %r
}

define dso_local i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId_2c_20std_2fp_H2f2a4d5cfb64e66b7c47439315f26791(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %r = tail call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_H068cfedf7407289d149ee3c6f4c8aa20(ptr %v0, ptr %a0, i64 %a1)
  ret i1 %r
}

define dso_local { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId_2c_20std_2fp_H320ad4105ad386fc2b87dbc57360cb3f(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca i64
  %l7 = alloca ptr
  %l10 = alloca i64
  %rv = alloca { i32, i64 }
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
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
  %t12 = load i32, ptr %l1, !tbaa !23
  %t15 = call i64 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fsource_3aNameId_2c_20Bool_3_H0ad23e78b2b593286f94a0de5701989f(ptr %v0, ptr %t11, i32 %t12)
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
  %t37 = getelementptr %"std/prelude/map:MapEntry.0769abb240fa4d9f09390771d4b86387", ptr %t36, i64 %t31
  %t38 = getelementptr %"std/prelude/map:MapEntry.0769abb240fa4d9f09390771d4b86387", ptr %t37, i32 0, i32 0
  %t39 = load i32, ptr %t38, !tbaa !23
  %t40 = load i32, ptr %l1, !tbaa !23
  %t43 = icmp eq i32 %t39, %t40
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

@std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId_2c_20std_2fp_H39ca684a9144c6cba1af5dc2ea7b2e34 = dso_local alias i1 (ptr, ptr, i32), ptr @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId_2c_20std_2fp_H0fa35282e56bd0cd9b08251ba99b9868
@std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId_2c_20std_2fp_H5a90f781c3861a3663a0d9df03e3877d = dso_local alias { i32, i64 } (ptr, ptr, i32), ptr @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId_2c_20std_2fp_H320ad4105ad386fc2b87dbc57360cb3f
define dso_local void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId_2c_20std_2fp_H60d06a7c3fd6dd4c35eae7d822c4a3e7(ptr %v0, ptr %a0) #0 {
entry:
  tail call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId_2c_20Array_3_Hd8d80a467d74446264496dd4b5aba312(ptr %v0, ptr %a0)
  ret void
}

define dso_local i64 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId_2c_20std_2fp_H62c4773d105ff72a1f9e70e955a93737(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %r = tail call i64 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fsource_3aNameId_2c_20Bool_3_H0ad23e78b2b593286f94a0de5701989f(ptr %v0, ptr %a0, i32 %a1)
  ret i64 %r
}

define dso_local void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId_2c_20std_2fp_H69db31e35a4e973edf5f90026da8d45a(ptr %v0, ptr %a0, i32 %a1, { i64, ptr } %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
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
  store i32 %a1, ptr %l1
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
  call void @__olang_check_failed(ptr @olang_loc_9b8c5d4975bade78_e56c05184de495ac)
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
  call void @__olang_check_failed(ptr @olang_loc_9b8c5d4975bade78_e56c05184de495ac)
  unreachable
bb7:
  %t30 = load ptr, ptr %l0, !tbaa !29
  %t31 = load i32, ptr %l1, !tbaa !23
  %t34 = call i64 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fsource_3aNameId_2c_20Bool_3_H0ad23e78b2b593286f94a0de5701989f(ptr %v0, ptr %t30, i32 %t31)
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
  %t59 = getelementptr %"std/prelude/map:MapEntry.2a60b5fdde847676acc31582b777d2c3", ptr %t58, i64 %t53
  %t60 = getelementptr %"std/prelude/map:MapEntry.2a60b5fdde847676acc31582b777d2c3", ptr %t59, i32 0, i32 0
  %t61 = load i32, ptr %t60, !tbaa !23
  %t62 = load i32, ptr %l1, !tbaa !23
  %t65 = icmp eq i32 %t61, %t62
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
  %t73 = mul i64 %t72, 1
  %t74 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t73)
  %t75 = insertvalue { i64, ptr } undef, i64 %t72, 0
  %t76 = insertvalue { i64, ptr } %t75, ptr %t74, 1
  store { i64, ptr } %t76, ptr %l31, !tbaa !27
  %t77 = getelementptr { i64, ptr }, ptr %l31, i32 0, i32 1
  %t78 = load ptr, ptr %t77, !tbaa !27
  %t79 = getelementptr { i64, ptr }, ptr %l29, i32 0, i32 1
  %t80 = load ptr, ptr %t79, !tbaa !27
  %t81 = load i64, ptr %l30, !tbaa !24
  %t82 = mul i64 %t81, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t78, ptr %t80, i64 %t82, i1 false)
  %t83 = load { i64, ptr }, ptr %l31, !tbaa !27
  %t85 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t67, i32 0, i32 0
  %t87 = getelementptr { i64, ptr }, ptr %t85, i32 0, i32 1
  %t88 = load ptr, ptr %t87, !tbaa !27
  %t89 = getelementptr %"std/prelude/map:MapEntry.2a60b5fdde847676acc31582b777d2c3", ptr %t88, i64 %t68
  %t90 = getelementptr %"std/prelude/map:MapEntry.2a60b5fdde847676acc31582b777d2c3", ptr %t89, i32 0, i32 1
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
  %t103 = load i32, ptr %l1, !tbaa !23
  %t104 = load { i64, ptr }, ptr %l2, !tbaa !27
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId_2c_20std_2fp_H7b0d6ad521ac06bc9e2e46cc2a31af2d(ptr %v0, ptr %t101, i64 %t102, i32 %t103, { i64, ptr } %t104)
  br label %bb18
bb18:
  br label %ret
ret:
  ret void
}

define dso_local i64 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId_2c_20std_2fp_H77ec2ee2d1fa647c13207d668b29f4c2(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %r = tail call i64 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fsource_3aNameId_2c_20Bool_3_H0ad23e78b2b593286f94a0de5701989f(ptr %v0, ptr %a0, i32 %a1)
  ret i64 %r
}

define dso_local void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId_2c_20std_2fp_H7b0d6ad521ac06bc9e2e46cc2a31af2d(ptr %v0, ptr %a0, i64 %a1, i32 %a2, { i64, ptr } %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l4 = alloca i64
  %l9 = alloca ptr
  %l13 = alloca i64
  %l23 = alloca ptr
  %l26 = alloca ptr
  %l27 = alloca i64
  %l30 = alloca %"std/prelude/map:MapEntry.2a60b5fdde847676acc31582b777d2c3"
  %l32 = alloca %"std/prelude/map:MapEntry.2a60b5fdde847676acc31582b777d2c3"
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
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId_2c_20std_2fp_H7f7ee88eb8e1a4823a83633d2bf3c0fa(ptr %v0, ptr %t39)
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
  %t61 = call %"std/prelude/map:MapEntry.2a60b5fdde847676acc31582b777d2c3" @std_2fprelude_2fmap_3aMapEntry_3ccompiler_2ftypes_3aTypeId_2c_20std_2fprelude_2ftext_3aString_3e_2ector(ptr %v0, i32 %a2, { i64, ptr } %a3)
  store %"std/prelude/map:MapEntry.2a60b5fdde847676acc31582b777d2c3" %t61, ptr %l30
  br label %bb9
bb9:
  %t63 = call %"std/prelude/map:MapEntry.2a60b5fdde847676acc31582b777d2c3" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMapEntry_3ccompiler_2ftypes_3aTy_He8c3fc5556fdbb675951f90c90a906b2(ptr %v0, ptr %l30)
  store %"std/prelude/map:MapEntry.2a60b5fdde847676acc31582b777d2c3" %t63, ptr %l32
  br label %bb10
bb10:
  %t64 = load %"std/prelude/map:MapEntry.2a60b5fdde847676acc31582b777d2c3", ptr %l32
  %t65 = load ptr, ptr %l26, !tbaa !29
  %t66 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t65, i32 0, i32 0
  %t67 = load i64, ptr %l27, !tbaa !24
  %t68 = getelementptr { i64, ptr }, ptr %t66, i32 0, i32 1
  %t69 = load ptr, ptr %t68, !tbaa !27
  %t70 = getelementptr %"std/prelude/map:MapEntry.2a60b5fdde847676acc31582b777d2c3", ptr %t69, i64 %t67
  store %"std/prelude/map:MapEntry.2a60b5fdde847676acc31582b777d2c3" %t64, ptr %t70
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
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId_2c_20Array_3_Hd8d80a467d74446264496dd4b5aba312(ptr %v0, ptr %t126)
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

define dso_local void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId_2c_20std_2fp_H7f7ee88eb8e1a4823a83633d2bf3c0fa(ptr %v0, ptr %a0) noinline cold #0 {
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
  call void @__olang_check_failed(ptr @olang_loc_63732e1191aeeb23_9297efdab07d2cd7)
  unreachable
bb6:
  %t38 = load i64, ptr %l24, !tbaa !24
  %t39 = load i64, ptr %l25, !tbaa !24
  %t40 = icmp sle i64 %t38, %t39
  br i1 %t40, label %bb8, label %bb9
bb7:
  call void @__olang_check_failed(ptr @olang_loc_63732e1191aeeb23_9297efdab07d2cd7)
  unreachable
bb8:
  %t42 = getelementptr { i64, ptr }, ptr %l22, i32 0, i32 1
  %t43 = load ptr, ptr %t42, !tbaa !27
  %t44 = load i64, ptr %l24, !tbaa !24
  %t45 = getelementptr %"std/prelude/map:MapEntry.2a60b5fdde847676acc31582b777d2c3", ptr %t43, i64 0
  %t46 = sub i64 %t44, 0
  %t47 = insertvalue { i64, ptr } undef, i64 %t46, 0
  %t48 = insertvalue { i64, ptr } %t47, ptr %t45, 1
  store { i64, ptr } %t48, ptr %l3, !tbaa !27
  %t50 = load i64, ptr %l1, !tbaa !24
  %t54 = mul i64 %t50, 24
  %t55 = call ptr @__olang_scope_alloc_zeroed(ptr %v0, i64 %t54)
  %t56 = insertvalue { i64, ptr } undef, i64 %t50, 0
  %t57 = insertvalue { i64, ptr } %t56, ptr %t55, 1
  store { i64, ptr } %t57, ptr %l32, !tbaa !27
  store i64 0, ptr %l33, !tbaa !24
  store i64 0, ptr %l5, !tbaa !24
  br label %bb10
bb9:
  call void @__olang_check_failed(ptr @olang_loc_63732e1191aeeb23_9297efdab07d2cd7)
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
  %t73 = getelementptr %"std/prelude/map:MapEntry.2a60b5fdde847676acc31582b777d2c3", ptr %t72, i64 %t69
  %t74 = load %"std/prelude/map:MapEntry.2a60b5fdde847676acc31582b777d2c3", ptr %t73
  store %"std/prelude/map:MapEntry.2a60b5fdde847676acc31582b777d2c3" zeroinitializer, ptr %t73
  %t76 = load i64, ptr %l33, !tbaa !24
  %t77 = getelementptr { i64, ptr }, ptr %l32, i32 0, i32 1
  %t78 = load ptr, ptr %t77, !tbaa !27
  %t79 = getelementptr %"std/prelude/map:MapEntry.2a60b5fdde847676acc31582b777d2c3", ptr %t78, i64 %t76
  store %"std/prelude/map:MapEntry.2a60b5fdde847676acc31582b777d2c3" %t74, ptr %t79
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
  call void @__olang_check_failed(ptr @olang_loc_3c88f75ac9b7346_7587423351d256fa)
  unreachable
bb18:
  %t109 = load i64, ptr %l51, !tbaa !24
  %t110 = load i64, ptr %l52, !tbaa !24
  %t111 = icmp sle i64 %t109, %t110
  br i1 %t111, label %bb20, label %bb21
bb19:
  call void @__olang_check_failed(ptr @olang_loc_3c88f75ac9b7346_7587423351d256fa)
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
  call void @__olang_check_failed(ptr @olang_loc_3c88f75ac9b7346_7587423351d256fa)
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

define dso_local void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId_2c_20std_2fp_H8c645e861eab79d24ab88315f6be380b(ptr %v0, ptr %a0) noinline cold #0 {
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
  call void @__olang_check_failed(ptr @olang_loc_8160683de217ed2d_b0b8d1b5ac9765e9)
  unreachable
bb6:
  %t38 = load i64, ptr %l24, !tbaa !24
  %t39 = load i64, ptr %l25, !tbaa !24
  %t40 = icmp sle i64 %t38, %t39
  br i1 %t40, label %bb8, label %bb9
bb7:
  call void @__olang_check_failed(ptr @olang_loc_8160683de217ed2d_b0b8d1b5ac9765e9)
  unreachable
bb8:
  %t42 = getelementptr { i64, ptr }, ptr %l22, i32 0, i32 1
  %t43 = load ptr, ptr %t42, !tbaa !27
  %t44 = load i64, ptr %l24, !tbaa !24
  %t45 = getelementptr %"std/prelude/map:MapEntry.0769abb240fa4d9f09390771d4b86387", ptr %t43, i64 0
  %t46 = sub i64 %t44, 0
  %t47 = insertvalue { i64, ptr } undef, i64 %t46, 0
  %t48 = insertvalue { i64, ptr } %t47, ptr %t45, 1
  store { i64, ptr } %t48, ptr %l3, !tbaa !27
  %t50 = load i64, ptr %l1, !tbaa !24
  %t54 = mul i64 %t50, 40
  %t55 = call ptr @__olang_scope_alloc_zeroed(ptr %v0, i64 %t54)
  %t56 = insertvalue { i64, ptr } undef, i64 %t50, 0
  %t57 = insertvalue { i64, ptr } %t56, ptr %t55, 1
  store { i64, ptr } %t57, ptr %l32, !tbaa !27
  store i64 0, ptr %l33, !tbaa !24
  store i64 0, ptr %l5, !tbaa !24
  br label %bb10
bb9:
  call void @__olang_check_failed(ptr @olang_loc_8160683de217ed2d_b0b8d1b5ac9765e9)
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
  %t73 = getelementptr %"std/prelude/map:MapEntry.0769abb240fa4d9f09390771d4b86387", ptr %t72, i64 %t69
  %t74 = load %"std/prelude/map:MapEntry.0769abb240fa4d9f09390771d4b86387", ptr %t73
  store %"std/prelude/map:MapEntry.0769abb240fa4d9f09390771d4b86387" zeroinitializer, ptr %t73
  %t76 = load i64, ptr %l33, !tbaa !24
  %t77 = getelementptr { i64, ptr }, ptr %l32, i32 0, i32 1
  %t78 = load ptr, ptr %t77, !tbaa !27
  %t79 = getelementptr %"std/prelude/map:MapEntry.0769abb240fa4d9f09390771d4b86387", ptr %t78, i64 %t76
  store %"std/prelude/map:MapEntry.0769abb240fa4d9f09390771d4b86387" %t74, ptr %t79
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
  call void @__olang_check_failed(ptr @olang_loc_74a2cf585ce2d650_e6a9e76847dd37fc)
  unreachable
bb18:
  %t109 = load i64, ptr %l51, !tbaa !24
  %t110 = load i64, ptr %l52, !tbaa !24
  %t111 = icmp sle i64 %t109, %t110
  br i1 %t111, label %bb20, label %bb21
bb19:
  call void @__olang_check_failed(ptr @olang_loc_74a2cf585ce2d650_e6a9e76847dd37fc)
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
  call void @__olang_check_failed(ptr @olang_loc_74a2cf585ce2d650_e6a9e76847dd37fc)
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

define dso_local void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId_2c_20std_2fp_Hbc3ad208bc099e1e563908d1c524859c(ptr %v0, ptr %a0) #0 {
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
  call void @__olang_check_failed(ptr @olang_loc_66242b482b1a54e7_3ddf23fb7c2c497b)
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
  call void @__olang_check_failed(ptr @olang_loc_66242b482b1a54e7_3ddf23fb7c2c497b)
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
  %t99 = getelementptr %"std/prelude/map:MapEntry.0769abb240fa4d9f09390771d4b86387", ptr %t98, i64 %t93
  %t100 = getelementptr %"std/prelude/map:MapEntry.0769abb240fa4d9f09390771d4b86387", ptr %t99, i32 0, i32 0
  %t101 = load i32, ptr %t100, !tbaa !23
  %t104 = call i64 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fsource_3aNameId_2c_20Bool_3_H0ad23e78b2b593286f94a0de5701989f(ptr %v0, ptr %t91, i32 %t101)
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

@std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId_2c_20std_2fp_Hbfe9ae0d170988a8a1b5e5688c9533ff = dso_local alias void (ptr, ptr), ptr @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId_2c_20std_2fp_H8c645e861eab79d24ab88315f6be380b
define dso_local i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId_2c_20std_2fp_Hd56aa543ee820f63570f7b1ec7ca9d56(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %r = tail call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_H068cfedf7407289d149ee3c6f4c8aa20(ptr %v0, ptr %a0, i64 %a1)
  ret i1 %r
}

@std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId_2c_20std_2fp_Hd8c1fa776e0a3a58fed2a4019c144451 = dso_local alias void (ptr, ptr), ptr @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId_2c_20std_2fp_Hbc3ad208bc099e1e563908d1c524859c
define dso_local { i32, { i64, ptr } } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId_2c_20std_2fp_Hdc5ed4f57090b33f7a83fc7b2b1f05b3(ptr %v0, ptr %v1, ptr %a0, i32 %a1) #0 {
entry:
  %r = tail call { i32, { i64, ptr } } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId_2c_20Array_3_H6b4c62a37e5c57cb2d11c50f44a997f9(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
  ret { i32, { i64, ptr } } %r
}

define dso_local { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId_2c_20std_2fp_He1cdb148200d6a98de0c849d0a0105d8(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %r = tail call { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId_2c_20Array_3_H98660a8959c13afe9504d4accd636acb(ptr %v0, ptr %a0, i32 %a1)
  ret { i32, i64 } %r
}

define dso_local void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId_2c_20std_2fp_He39f97315596c9568e753bccdda19b63(ptr %v0, ptr %v1, ptr %a0, i32 %a1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
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
  %l37 = alloca i32
  %l38 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l40 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %s0 = alloca %olang.scope
  %t17 = alloca i64
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
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
  call void @__olang_check_failed(ptr @olang_loc_a75194919de10a76_fce6476e6f77a342)
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
  call void @__olang_check_failed(ptr @olang_loc_a75194919de10a76_fce6476e6f77a342)
  unreachable
bb7:
  %t30 = load ptr, ptr %l0, !tbaa !29
  %t31 = load i32, ptr %l1, !tbaa !23
  %t34 = call i64 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fsource_3aNameId_2c_20Bool_3_H0ad23e78b2b593286f94a0de5701989f(ptr %v0, ptr %t30, i32 %t31)
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
  %t59 = getelementptr %"std/prelude/map:MapEntry.0769abb240fa4d9f09390771d4b86387", ptr %t58, i64 %t53
  %t60 = getelementptr %"std/prelude/map:MapEntry.0769abb240fa4d9f09390771d4b86387", ptr %t59, i32 0, i32 0
  %t61 = load i32, ptr %t60, !tbaa !23
  %t62 = load i32, ptr %l1, !tbaa !23
  %t65 = icmp eq i32 %t61, %t62
  br i1 %t65, label %bb13, label %bb14
bb13:
  %t67 = load ptr, ptr %l0, !tbaa !29
  store ptr %t67, ptr %l27, !tbaa !29
  %t68 = load i64, ptr %l4, !tbaa !24
  store i64 %t68, ptr %l28, !tbaa !24
  %t69 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l2
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t69, ptr %l29
  %t71 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ffree_3aleaf_3e(ptr %v0, ptr %l29)
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
  %t78 = getelementptr %"std/prelude/map:MapEntry.0769abb240fa4d9f09390771d4b86387", ptr %t77, i64 %t75
  %t79 = getelementptr %"std/prelude/map:MapEntry.0769abb240fa4d9f09390771d4b86387", ptr %t78, i32 0, i32 1
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
  %t92 = load i32, ptr %l1, !tbaa !23
  store i32 %t92, ptr %l37, !tbaa !23
  %t93 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l2
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t93, ptr %l38
  %t95 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ffree_3aleaf_3e(ptr %s0, ptr %l38)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t95, ptr %l40
  br label %bb19
bb19:
  %t96 = load ptr, ptr %l35, !tbaa !29
  %t97 = load i64, ptr %l36, !tbaa !24
  %t98 = load i32, ptr %l37, !tbaa !23
  %t99 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l40
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId_2c_20std_2fp_Hedb89f4f079990b889b7378d9df881f7(ptr %v0, ptr %s0, ptr %t96, i64 %t97, i32 %t98, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t99)
  br label %bb20
bb20:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local i64 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId_2c_20std_2fp_He621420756beaa2a1a478a7d7eade9c8(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %r = tail call i64 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fsource_3aNameId_2c_20Bool_3_H0ad23e78b2b593286f94a0de5701989f(ptr %v0, ptr %a0, i32 %a1)
  ret i64 %r
}

@std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId_2c_20std_2fp_He7b3466db9a608577543dd7c0832d3d6 = dso_local alias { i32, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" } (ptr, ptr, ptr, i32), ptr @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId_2c_20std_2fp_H08f3244764437e29647226f03a29c83b
define dso_local void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId_2c_20std_2fp_Hedb89f4f079990b889b7378d9df881f7(ptr %v0, ptr %v1, ptr %a0, i64 %a1, i32 %a2, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l4 = alloca i64
  %l9 = alloca ptr
  %l13 = alloca i64
  %l23 = alloca ptr
  %l26 = alloca ptr
  %l27 = alloca i64
  %l28 = alloca i32
  %l29 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l31 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l32 = alloca %"std/prelude/map:MapEntry.0769abb240fa4d9f09390771d4b86387"
  %l34 = alloca %"std/prelude/map:MapEntry.0769abb240fa4d9f09390771d4b86387"
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
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId_2c_20std_2fp_H8c645e861eab79d24ab88315f6be380b(ptr %v0, ptr %t39)
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
  store i32 %a2, ptr %l28, !tbaa !23
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %a3, ptr %l29
  %t60 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ffree_3aleaf_3e(ptr %v0, ptr %l29)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t60, ptr %l31
  br label %bb9
bb9:
  %t61 = load i32, ptr %l28, !tbaa !23
  %t62 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l31
  %t63 = call %"std/prelude/map:MapEntry.0769abb240fa4d9f09390771d4b86387" @std_2fprelude_2fmap_3aMapEntry_3ccompiler_2ftypes_3aTypeId_2c_20std_2fprelude_2fvec_3aVe_H61ac9fba86d846ffc08750bef4ca1ed1(ptr %v0, ptr %v0, i32 %t61, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t62)
  store %"std/prelude/map:MapEntry.0769abb240fa4d9f09390771d4b86387" %t63, ptr %l32
  br label %bb10
bb10:
  %t65 = call %"std/prelude/map:MapEntry.0769abb240fa4d9f09390771d4b86387" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMapEntry_3ccompiler_2ftypes_3aTy_H3be4ee752a8addbbec87ae071b9c8788(ptr %v0, ptr %l32)
  store %"std/prelude/map:MapEntry.0769abb240fa4d9f09390771d4b86387" %t65, ptr %l34
  br label %bb11
bb11:
  %t66 = load %"std/prelude/map:MapEntry.0769abb240fa4d9f09390771d4b86387", ptr %l34
  %t67 = load ptr, ptr %l26, !tbaa !29
  %t68 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t67, i32 0, i32 0
  %t69 = load i64, ptr %l27, !tbaa !24
  %t70 = getelementptr { i64, ptr }, ptr %t68, i32 0, i32 1
  %t71 = load ptr, ptr %t70, !tbaa !27
  %t72 = getelementptr %"std/prelude/map:MapEntry.0769abb240fa4d9f09390771d4b86387", ptr %t71, i64 %t69
  store %"std/prelude/map:MapEntry.0769abb240fa4d9f09390771d4b86387" %t66, ptr %t72
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
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId_2c_20std_2fp_Hbc3ad208bc099e1e563908d1c524859c(ptr %v0, ptr %t128)
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

define dso_local i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H1cd4248ba114d02b0b3e950d97f65aa5(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %r = tail call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_H068cfedf7407289d149ee3c6f4c8aa20(ptr %v0, ptr %a0, i64 %a1)
  ret i1 %r
}

define dso_local void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H244d20ece6bcd7da12066d0773e3688f(ptr %v0, ptr %a0) #0 {
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
  call void @__olang_check_failed(ptr @olang_loc_60753ec484e7b75d_7921789d0c292699)
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
  call void @__olang_check_failed(ptr @olang_loc_60753ec484e7b75d_7921789d0c292699)
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
  %t99 = getelementptr %"std/prelude/map:MapEntry.adf118859e04490c36a9a3f2e59cf058", ptr %t98, i64 %t93
  %t100 = getelementptr %"std/prelude/map:MapEntry.adf118859e04490c36a9a3f2e59cf058", ptr %t99, i32 0, i32 0
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

define dso_local void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H58704f470d09c6c466fe07940700ab7b(ptr %v0, ptr %a0, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %a1, { i64, ptr } %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0"
  %l2 = alloca { i64, ptr }
  %l3 = alloca i64
  %l4 = alloca i64
  %l9 = alloca ptr
  %l15 = alloca i64
  %l24 = alloca %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0"
  %l26 = alloca %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0"
  %l28 = alloca i1
  %l31 = alloca { i64, ptr }
  %l32 = alloca i64
  %l33 = alloca { i64, ptr }
  %t17 = alloca i64
  store ptr %a0, ptr %l0
  store %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %a1, ptr %l1
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
  call void @__olang_check_failed(ptr @olang_loc_588616244e83f4d1_f256c997d7540e5d)
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
  call void @__olang_check_failed(ptr @olang_loc_588616244e83f4d1_f256c997d7540e5d)
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
  %t59 = getelementptr %"std/prelude/map:MapEntry.adf118859e04490c36a9a3f2e59cf058", ptr %t58, i64 %t53
  %t60 = getelementptr %"std/prelude/map:MapEntry.adf118859e04490c36a9a3f2e59cf058", ptr %t59, i32 0, i32 0
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
  %t69 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t69, ptr %l31, !tbaa !27
  %t70 = load { i64, ptr }, ptr %l31, !tbaa !27
  %t71 = extractvalue { i64, ptr } %t70, 0
  store i64 %t71, ptr %l32, !tbaa !24
  %t72 = load i64, ptr %l32, !tbaa !24
  %t73 = mul i64 %t72, 8
  %t74 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t73)
  %t75 = insertvalue { i64, ptr } undef, i64 %t72, 0
  %t76 = insertvalue { i64, ptr } %t75, ptr %t74, 1
  store { i64, ptr } %t76, ptr %l33, !tbaa !27
  %t77 = getelementptr { i64, ptr }, ptr %l33, i32 0, i32 1
  %t78 = load ptr, ptr %t77, !tbaa !27
  %t79 = getelementptr { i64, ptr }, ptr %l31, i32 0, i32 1
  %t80 = load ptr, ptr %t79, !tbaa !27
  %t81 = load i64, ptr %l32, !tbaa !24
  %t82 = mul i64 %t81, 8
  call void @llvm.memmove.p0.p0.i64(ptr %t78, ptr %t80, i64 %t82, i1 false)
  %t83 = load { i64, ptr }, ptr %l33, !tbaa !27
  %t85 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t67, i32 0, i32 0
  %t87 = getelementptr { i64, ptr }, ptr %t85, i32 0, i32 1
  %t88 = load ptr, ptr %t87, !tbaa !27
  %t89 = getelementptr %"std/prelude/map:MapEntry.adf118859e04490c36a9a3f2e59cf058", ptr %t88, i64 %t68
  %t90 = getelementptr %"std/prelude/map:MapEntry.adf118859e04490c36a9a3f2e59cf058", ptr %t89, i32 0, i32 1
  store { i64, ptr } %t83, ptr %t90, !tbaa !27
  br label %ret
bb15:
  br label %bb16
bb16:
  br label %bb17
bb17:
  %t91 = load ptr, ptr %l0, !tbaa !29
  %t92 = load i64, ptr %l4, !tbaa !24
  %t94 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t91, i32 0, i32 1
  %t96 = getelementptr { i64, ptr }, ptr %t94, i32 0, i32 1
  %t97 = load ptr, ptr %t96, !tbaa !27
  %t98 = getelementptr i64, ptr %t97, i64 %t92
  %t99 = load i64, ptr %t98, !tbaa !34
  store i64 %t99, ptr %l4, !tbaa !24
  br label %bb9
bb18:
  %t101 = load ptr, ptr %l0, !tbaa !29
  %t102 = load i64, ptr %l3, !tbaa !24
  %t103 = load %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %l1
  %t104 = load { i64, ptr }, ptr %l2, !tbaa !27
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H906657e795452d3a9a579308e9320d73(ptr %v0, ptr %t101, i64 %t102, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t103, { i64, ptr } %t104)
  br label %bb19
bb19:
  br label %ret
ret:
  ret void
}

define dso_local { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H5e91313d06e94d868cf8eca9c031aaaf(ptr %v0, ptr %a0, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %a1) #0 {
entry:
  %r = tail call { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H964d39663fa413663ca48370aeba2c1e(ptr %v0, ptr %a0, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %a1)
  ret { i32, i64 } %r
}

define dso_local void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H797d95f86cc5303879cc3436cfb96ce2(ptr %v0, ptr %a0) noinline cold #0 {
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
  call void @__olang_check_failed(ptr @olang_loc_f5387e41aa461073_85329e3d54822a57)
  unreachable
bb6:
  %t38 = load i64, ptr %l24, !tbaa !24
  %t39 = load i64, ptr %l25, !tbaa !24
  %t40 = icmp sle i64 %t38, %t39
  br i1 %t40, label %bb8, label %bb9
bb7:
  call void @__olang_check_failed(ptr @olang_loc_f5387e41aa461073_85329e3d54822a57)
  unreachable
bb8:
  %t42 = getelementptr { i64, ptr }, ptr %l22, i32 0, i32 1
  %t43 = load ptr, ptr %t42, !tbaa !27
  %t44 = load i64, ptr %l24, !tbaa !24
  %t45 = getelementptr %"std/prelude/map:MapEntry.adf118859e04490c36a9a3f2e59cf058", ptr %t43, i64 0
  %t46 = sub i64 %t44, 0
  %t47 = insertvalue { i64, ptr } undef, i64 %t46, 0
  %t48 = insertvalue { i64, ptr } %t47, ptr %t45, 1
  store { i64, ptr } %t48, ptr %l3, !tbaa !27
  %t50 = load i64, ptr %l1, !tbaa !24
  %t54 = mul i64 %t50, 32
  %t55 = call ptr @__olang_scope_alloc_zeroed(ptr %v0, i64 %t54)
  %t56 = insertvalue { i64, ptr } undef, i64 %t50, 0
  %t57 = insertvalue { i64, ptr } %t56, ptr %t55, 1
  store { i64, ptr } %t57, ptr %l32, !tbaa !27
  store i64 0, ptr %l33, !tbaa !24
  store i64 0, ptr %l5, !tbaa !24
  br label %bb10
bb9:
  call void @__olang_check_failed(ptr @olang_loc_f5387e41aa461073_85329e3d54822a57)
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
  %t73 = getelementptr %"std/prelude/map:MapEntry.adf118859e04490c36a9a3f2e59cf058", ptr %t72, i64 %t69
  %t74 = load %"std/prelude/map:MapEntry.adf118859e04490c36a9a3f2e59cf058", ptr %t73
  store %"std/prelude/map:MapEntry.adf118859e04490c36a9a3f2e59cf058" zeroinitializer, ptr %t73
  %t76 = load i64, ptr %l33, !tbaa !24
  %t77 = getelementptr { i64, ptr }, ptr %l32, i32 0, i32 1
  %t78 = load ptr, ptr %t77, !tbaa !27
  %t79 = getelementptr %"std/prelude/map:MapEntry.adf118859e04490c36a9a3f2e59cf058", ptr %t78, i64 %t76
  store %"std/prelude/map:MapEntry.adf118859e04490c36a9a3f2e59cf058" %t74, ptr %t79
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
  call void @__olang_check_failed(ptr @olang_loc_baf2591500da8816_6821f095f5d7547a)
  unreachable
bb18:
  %t109 = load i64, ptr %l51, !tbaa !24
  %t110 = load i64, ptr %l52, !tbaa !24
  %t111 = icmp sle i64 %t109, %t110
  br i1 %t111, label %bb20, label %bb21
bb19:
  call void @__olang_check_failed(ptr @olang_loc_baf2591500da8816_6821f095f5d7547a)
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
  call void @__olang_check_failed(ptr @olang_loc_baf2591500da8816_6821f095f5d7547a)
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

define dso_local void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H906657e795452d3a9a579308e9320d73(ptr %v0, ptr %a0, i64 %a1, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %a2, { i64, ptr } %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l4 = alloca i64
  %l9 = alloca ptr
  %l13 = alloca i64
  %l23 = alloca ptr
  %l26 = alloca ptr
  %l27 = alloca i64
  %l30 = alloca %"std/prelude/map:MapEntry.adf118859e04490c36a9a3f2e59cf058"
  %l32 = alloca %"std/prelude/map:MapEntry.adf118859e04490c36a9a3f2e59cf058"
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
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H797d95f86cc5303879cc3436cfb96ce2(ptr %v0, ptr %t39)
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
  %t61 = call %"std/prelude/map:MapEntry.adf118859e04490c36a9a3f2e59cf058" @std_2fprelude_2fmap_3aMapEntry_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_20Array_3cI64_3e_3e_2ector(ptr %v0, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %a2, { i64, ptr } %a3)
  store %"std/prelude/map:MapEntry.adf118859e04490c36a9a3f2e59cf058" %t61, ptr %l30
  br label %bb9
bb9:
  %t63 = call %"std/prelude/map:MapEntry.adf118859e04490c36a9a3f2e59cf058" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMapEntry_3cstd_2fpair_3aPair_3cI_H02e5b8f3527406afbf8960df7d709035(ptr %v0, ptr %l30)
  store %"std/prelude/map:MapEntry.adf118859e04490c36a9a3f2e59cf058" %t63, ptr %l32
  br label %bb10
bb10:
  %t64 = load %"std/prelude/map:MapEntry.adf118859e04490c36a9a3f2e59cf058", ptr %l32
  %t65 = load ptr, ptr %l26, !tbaa !29
  %t66 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t65, i32 0, i32 0
  %t67 = load i64, ptr %l27, !tbaa !24
  %t68 = getelementptr { i64, ptr }, ptr %t66, i32 0, i32 1
  %t69 = load ptr, ptr %t68, !tbaa !27
  %t70 = getelementptr %"std/prelude/map:MapEntry.adf118859e04490c36a9a3f2e59cf058", ptr %t69, i64 %t67
  store %"std/prelude/map:MapEntry.adf118859e04490c36a9a3f2e59cf058" %t64, ptr %t70
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
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H244d20ece6bcd7da12066d0773e3688f(ptr %v0, ptr %t126)
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

define dso_local i64 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_Hcf5743ea5a1d20f022142a7d4a9b9643(ptr %v0, ptr %a0, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %a1) #0 {
entry:
  %r = tail call i64 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H2b299ac8414fe0900d06d94de708c354(ptr %v0, ptr %a0, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %a1)
  ret i64 %r
}

define dso_local { i32, { i64, ptr } } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_Hf6c82cf5f0e7149f7052eb5498c4cd14(ptr %v0, ptr %v1, ptr %a0, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %a1) #0 {
entry:
  %r = tail call { i32, { i64, ptr } } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H031c7c147cc8ce0b988dd3fed8d142ad(ptr %v0, ptr %v1, ptr %a0, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %a1)
  ret { i32, { i64, ptr } } %r
}

define dso_local %"std/prelude/map:MapEntry.f17f3f0202174eb6591f595766c15613" @std_2fprelude_2fmap_3aMapEntry_3cI64_2c_20std_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_3e_2ector(ptr %v0, ptr %v1, i64 %a0, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %a1) #0 {
entry:
  %r = tail call %"std/prelude/map:MapEntry.f17f3f0202174eb6591f595766c15613" @std_2fprelude_2fmap_3aMapEntry_3cI64_2c_20std_2fprelude_2fvec_3aVec_3cI64_3e_3e_2ector(ptr %v0, ptr %v1, i64 %a0, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %a1)
  ret %"std/prelude/map:MapEntry.f17f3f0202174eb6591f595766c15613" %r
}

define dso_local %"std/prelude/map:MapEntry.2a60b5fdde847676acc31582b777d2c3" @std_2fprelude_2fmap_3aMapEntry_3ccompiler_2ftypes_3aTypeId_2c_20std_2fprelude_2ftext_3aString_3e_2ector(ptr %v0, i32 %a0, { i64, ptr } %a1) #0 {
entry:
  %rv = alloca %"std/prelude/map:MapEntry.2a60b5fdde847676acc31582b777d2c3"
  br label %start
start:
  br label %bb0
bb0:
  %t6 = insertvalue %"std/prelude/map:MapEntry.2a60b5fdde847676acc31582b777d2c3" undef, i32 %a0, 0
  %t8 = insertvalue %"std/prelude/map:MapEntry.2a60b5fdde847676acc31582b777d2c3" %t6, { i64, ptr } %a1, 1
  store %"std/prelude/map:MapEntry.2a60b5fdde847676acc31582b777d2c3" %t8, ptr %rv
  br label %ret
ret:
  %rr = load %"std/prelude/map:MapEntry.2a60b5fdde847676acc31582b777d2c3", ptr %rv
  ret %"std/prelude/map:MapEntry.2a60b5fdde847676acc31582b777d2c3" %rr
}

define dso_local %"std/prelude/map:MapEntry.0769abb240fa4d9f09390771d4b86387" @std_2fprelude_2fmap_3aMapEntry_3ccompiler_2ftypes_3aTypeId_2c_20std_2fprelude_2fvec_3aVe_H61ac9fba86d846ffc08750bef4ca1ed1(ptr %v0, ptr %v1, i32 %a0, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %a1) #0 {
entry:
  %rv = alloca %"std/prelude/map:MapEntry.0769abb240fa4d9f09390771d4b86387"
  br label %start
start:
  br label %bb0
bb0:
  %t6 = insertvalue %"std/prelude/map:MapEntry.0769abb240fa4d9f09390771d4b86387" undef, i32 %a0, 0
  %t8 = insertvalue %"std/prelude/map:MapEntry.0769abb240fa4d9f09390771d4b86387" %t6, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %a1, 1
  store %"std/prelude/map:MapEntry.0769abb240fa4d9f09390771d4b86387" %t8, ptr %rv
  br label %ret
ret:
  %rr = load %"std/prelude/map:MapEntry.0769abb240fa4d9f09390771d4b86387", ptr %rv
  ret %"std/prelude/map:MapEntry.0769abb240fa4d9f09390771d4b86387" %rr
}

@std_2fprelude_2fmap_3aMapEntry_3ccompiler_2ftypes_3aTypeId_2c_20std_2fprelude_2fvec_3aVec_3cI64_3e_3e_2ector = dso_local alias %"std/prelude/map:MapEntry.0769abb240fa4d9f09390771d4b86387" (ptr, ptr, i32, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"), ptr @std_2fprelude_2fmap_3aMapEntry_3ccompiler_2ftypes_3aTypeId_2c_20std_2fprelude_2fvec_3aVe_H61ac9fba86d846ffc08750bef4ca1ed1
define dso_local %"std/prelude/map:MapEntry.adf118859e04490c36a9a3f2e59cf058" @std_2fprelude_2fmap_3aMapEntry_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_20Array_3cI64_3e_3e_2ector(ptr %v0, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %a0, { i64, ptr } %a1) #0 {
entry:
  %rv = alloca %"std/prelude/map:MapEntry.adf118859e04490c36a9a3f2e59cf058"
  br label %start
start:
  br label %bb0
bb0:
  %t6 = insertvalue %"std/prelude/map:MapEntry.adf118859e04490c36a9a3f2e59cf058" undef, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %a0, 0
  %t8 = insertvalue %"std/prelude/map:MapEntry.adf118859e04490c36a9a3f2e59cf058" %t6, { i64, ptr } %a1, 1
  store %"std/prelude/map:MapEntry.adf118859e04490c36a9a3f2e59cf058" %t8, ptr %rv
  br label %ret
ret:
  %rr = load %"std/prelude/map:MapEntry.adf118859e04490c36a9a3f2e59cf058", ptr %rv
  ret %"std/prelude/map:MapEntry.adf118859e04490c36a9a3f2e59cf058" %rr
}

define dso_local %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_3e_2ector(ptr %v0) #0 {
entry:
  %r = tail call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20compiler_2fsource_3aNameId_3e_2ector(ptr %v0)
  ret %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %r
}

define dso_local %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId_2c_20std_2fprelude_2ftext_3aString_3e_2ector(ptr %v0) #0 {
entry:
  %r = tail call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20compiler_2fsource_3aNameId_3e_2ector(ptr %v0)
  ret %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %r
}

define dso_local %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId_2c_20std_2fprelude_2fvec_3aVec_3cI64_3e_3e_2ector(ptr %v0) #0 {
entry:
  %r = tail call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20compiler_2fsource_3aNameId_3e_2ector(ptr %v0)
  ret %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %r
}

define dso_local %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId_2c_20std_2fprelude_2fvec_3aVec_3cc_Hd7bfb320b31828a1c070683ea7d5fb27(ptr %v0) #0 {
entry:
  %r = tail call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20compiler_2fsource_3aNameId_3e_2ector(ptr %v0)
  ret %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %r
}

define dso_local %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_20Array_3cI64_3e_3e_2ector(ptr %v0) #0 {
entry:
  %r = tail call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20compiler_2fsource_3aNameId_3e_2ector(ptr %v0)
  ret %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %r
}

define dso_local { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eStr_3cI64_3e(ptr %v0, ptr %v1, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca { i64, ptr }
  %l2 = alloca ptr
  %l4 = alloca i64
  %l5 = alloca i64
  %l9 = alloca { i64, ptr }
  %l11 = alloca { i64, ptr }
  %l13 = alloca i64
  %l14 = alloca i64
  %s1 = alloca %olang.scope
  %s2 = alloca %olang.builder
  %s2room = alloca [64 x i8], align 8
  %rv = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s1
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
  call void @__olang_check_failed(ptr @olang_loc_f9a298574f6fcd2c_98d69e8b2d03d648)
  unreachable
bb3:
  %t15 = load i64, ptr %l4, !tbaa !24
  %t16 = load i64, ptr %l5, !tbaa !24
  %t17 = icmp sle i64 %t15, %t16
  br i1 %t17, label %bb5, label %bb6
bb4:
  call void @__olang_check_failed(ptr @olang_loc_f9a298574f6fcd2c_98d69e8b2d03d648)
  unreachable
bb5:
  %t19 = load ptr, ptr %l2, !tbaa !29
  %t20 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t19, i32 0, i32 0
  %t21 = getelementptr { i64, ptr }, ptr %t20, i32 0, i32 1
  %t22 = load ptr, ptr %t21, !tbaa !27
  %t23 = load i64, ptr %l4, !tbaa !24
  %t24 = getelementptr i64, ptr %t22, i64 0
  %t25 = sub i64 %t23, 0
  %t26 = insertvalue { i64, ptr } undef, i64 %t25, 0
  %t27 = insertvalue { i64, ptr } %t26, ptr %t24, 1
  store { i64, ptr } %t27, ptr %l9, !tbaa !27
  store %olang.builder { ptr null, i64 0, i64 64, ptr null, ptr null }, ptr %s2
  store ptr %s2room, ptr %s2
  call void @olang_2emir_2eHelperKind_2eRender_2eArray_3cI64_3e_26(ptr %s2, ptr %l9, i64 0)
  br label %bb7
bb6:
  call void @__olang_check_failed(ptr @olang_loc_f9a298574f6fcd2c_98d69e8b2d03d648)
  unreachable
bb7:
  %t29 = load ptr, ptr %s2
  %t30 = getelementptr %olang.builder, ptr %s2, i32 0, i32 1
  %t31 = load i64, ptr %t30
  %t32 = call ptr @__olang_scope_alloc(ptr %s1, i64 %t31)
  call void @olang_textcopy(ptr %t32, ptr %t29, i64 %t31)
  %t33 = insertvalue { i64, ptr } undef, i64 %t31, 0
  %t34 = insertvalue { i64, ptr } %t33, ptr %t32, 1
  store { i64, ptr } %t34, ptr %l11, !tbaa !27
  %t35 = getelementptr %olang.builder, ptr %s2, i32 0, i32 3
  %t36 = load ptr, ptr %t35
  %t37 = icmp ne ptr %t36, null
  br i1 %t37, label %sbgrew.38, label %sbdone.39
sbgrew.38:
  call void @__olang_sb_done(ptr %s2)
  br label %sbdone.39
sbdone.39:
  %t40 = load { i64, ptr }, ptr %l11, !tbaa !27
  store { i64, ptr } %t40, ptr %l1, !tbaa !27
  %t41 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t43 = extractvalue { i64, ptr } %t41, 0
  store i64 %t43, ptr %l13, !tbaa !24
  %t44 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t45 = extractvalue { i64, ptr } %t44, 0
  store i64 %t45, ptr %l14, !tbaa !24
  %t46 = icmp sge i64 5, 0
  br i1 %t46, label %bb8, label %bb9
bb8:
  %t48 = load i64, ptr %l13, !tbaa !24
  %t49 = icmp sle i64 5, %t48
  br i1 %t49, label %bb10, label %bb11
bb9:
  call void @__olang_check_failed(ptr @olang_loc_beb03000e0ed6cd9_518867cc113b06a5)
  unreachable
bb10:
  %t51 = load i64, ptr %l13, !tbaa !24
  %t52 = load i64, ptr %l14, !tbaa !24
  %t53 = icmp sle i64 %t51, %t52
  br i1 %t53, label %bb12, label %bb13
bb11:
  call void @__olang_check_failed(ptr @olang_loc_beb03000e0ed6cd9_518867cc113b06a5)
  unreachable
bb12:
  %t55 = getelementptr { i64, ptr }, ptr %l1, i32 0, i32 1
  %t56 = load ptr, ptr %t55, !tbaa !27
  %t57 = load i64, ptr %l13, !tbaa !24
  %t58 = getelementptr i8, ptr %t56, i64 5
  %t59 = sub i64 %t57, 5
  %t60 = insertvalue { i64, ptr } undef, i64 %t59, 0
  %t61 = insertvalue { i64, ptr } %t60, ptr %t58, 1
  %t62 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d0, i32 0, i32 1) }, 1
  %t63 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d0, i32 0, i32 1) }, 0
  %t65 = extractvalue { i64, ptr } %t61, 1
  %t66 = extractvalue { i64, ptr } %t61, 0
  %t67 = add i64 %t63, %t66
  %t68 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t67)
  call void @olang_textcopy(ptr %t68, ptr %t62, i64 %t63)
  %t69 = getelementptr i8, ptr %t68, i64 %t63
  call void @olang_textcopy(ptr %t69, ptr %t65, i64 %t66)
  %t70 = insertvalue { i64, ptr } undef, i64 %t67, 0
  %t71 = insertvalue { i64, ptr } %t70, ptr %t68, 1
  call void @__olang_scope_close(ptr %s1)
  store { i64, ptr } %t71, ptr %rv
  br label %ret
bb13:
  call void @__olang_check_failed(ptr @olang_loc_beb03000e0ed6cd9_518867cc113b06a5)
  unreachable
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local %"compiler/free:feedCall" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ffree_3afeedCall_3e_2eAt_3ccompiler_2ffree_3afeedCall_3e(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %rv = alloca %"compiler/free:feedCall"
  br label %start
start:
  br label %bb0
bb0:
  %t4 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %a0, i32 0, i32 0
  %t6 = getelementptr { i64, ptr }, ptr %t4, i32 0, i32 1
  %t7 = load ptr, ptr %t6, !tbaa !27
  %t8 = getelementptr %"compiler/free:feedCall", ptr %t7, i64 %a1
  %t9 = load %"compiler/free:feedCall", ptr %t8
  store %"compiler/free:feedCall" %t9, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/free:feedCall", ptr %rv
  ret %"compiler/free:feedCall" %rr
}

define dso_local i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ffree_3afeedCall_3e_2eLen_3ccompiler_2ffree_3afeedCall_3e(ptr %v0, ptr %a0) #0 {
entry:
  %r = tail call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cU64_3e_2eLen_3cU64_3e(ptr %v0, ptr %a0)
  ret i64 %r
}

define dso_local void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ffree_3afeedCall_3e_2ePush_3ccompiler_2ffree_3afeedCall_3e(ptr %v0, ptr %a0, %"compiler/free:feedCall" %a1) #0 {
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
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ffree_3afeedCall_3e_2eroom_3ccompiler_2ffree_3afeedCall_3e(ptr %v0, ptr %t15, i64 %t21)
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
  %t36 = getelementptr %"compiler/free:feedCall", ptr %t35, i64 %t28
  store %"compiler/free:feedCall" %a1, ptr %t36
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

define dso_local void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ffree_3afeedCall_3e_2eroom_3ccompiler_2ffree_3afeedCall_3e(ptr %v0, ptr %a0, i64 %a1) noinline cold #0 {
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
  call void @__olang_check_failed(ptr @olang_loc_1281cf27d04edace_144f1257fa21d122)
  unreachable
bb15:
  %t71 = load i64, ptr %l36, !tbaa !24
  %t72 = load i64, ptr %l37, !tbaa !24
  %t73 = icmp sle i64 %t71, %t72
  br i1 %t73, label %bb17, label %bb18
bb16:
  call void @__olang_check_failed(ptr @olang_loc_1281cf27d04edace_144f1257fa21d122)
  unreachable
bb17:
  %t75 = getelementptr { i64, ptr }, ptr %l34, i32 0, i32 1
  %t76 = load ptr, ptr %t75, !tbaa !27
  %t77 = load i64, ptr %l36, !tbaa !24
  %t78 = getelementptr %"compiler/free:feedCall", ptr %t76, i64 0
  %t79 = sub i64 %t77, 0
  %t80 = insertvalue { i64, ptr } undef, i64 %t79, 0
  %t81 = insertvalue { i64, ptr } %t80, ptr %t78, 1
  store { i64, ptr } %t81, ptr %l4, !tbaa !27
  %t83 = load i64, ptr %l2, !tbaa !24
  %t87 = mul i64 %t83, 48
  %t88 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t87)
  %t89 = insertvalue { i64, ptr } undef, i64 %t83, 0
  %t90 = insertvalue { i64, ptr } %t89, ptr %t88, 1
  store { i64, ptr } %t90, ptr %l44, !tbaa !27
  store i64 0, ptr %l45, !tbaa !24
  store i64 0, ptr %l6, !tbaa !24
  br label %bb19
bb18:
  call void @__olang_check_failed(ptr @olang_loc_1281cf27d04edace_144f1257fa21d122)
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
  %t106 = getelementptr %"compiler/free:feedCall", ptr %t105, i64 %t102
  %t107 = load %"compiler/free:feedCall", ptr %t106
  %t109 = load i64, ptr %l45, !tbaa !24
  %t110 = getelementptr { i64, ptr }, ptr %l44, i32 0, i32 1
  %t111 = load ptr, ptr %t110, !tbaa !27
  %t112 = getelementptr %"compiler/free:feedCall", ptr %t111, i64 %t109
  store %"compiler/free:feedCall" %t107, ptr %t112
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

define dso_local %"compiler/free:feed" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ffree_3afeed_3e_2eAt_3ccompiler_2ffree_3afeed_3e(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %rv = alloca %"compiler/free:feed"
  br label %start
start:
  br label %bb0
bb0:
  %t4 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %a0, i32 0, i32 0
  %t6 = getelementptr { i64, ptr }, ptr %t4, i32 0, i32 1
  %t7 = load ptr, ptr %t6, !tbaa !27
  %t8 = getelementptr %"compiler/free:feed", ptr %t7, i64 %a1
  %t9 = load %"compiler/free:feed", ptr %t8
  store %"compiler/free:feed" %t9, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/free:feed", ptr %rv
  ret %"compiler/free:feed" %rr
}

define dso_local i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ffree_3afeed_3e_2eLen_3ccompiler_2ffree_3afeed_3e(ptr %v0, ptr %a0) #0 {
entry:
  %r = tail call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cU64_3e_2eLen_3cU64_3e(ptr %v0, ptr %a0)
  ret i64 %r
}

define dso_local void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ffree_3afeed_3e_2ePush_3ccompiler_2ffree_3afeed_3e(ptr %v0, ptr %a0, %"compiler/free:feed" %a1) #0 {
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
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ffree_3afeed_3e_2eroom_3ccompiler_2ffree_3afeed_3e(ptr %v0, ptr %t15, i64 %t21)
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
  %t36 = getelementptr %"compiler/free:feed", ptr %t35, i64 %t28
  store %"compiler/free:feed" %a1, ptr %t36
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

define dso_local ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ffree_3afeed_3e_2eRefMut_3ccompiler_2ffree_3afeed_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1) #0 {
entry:
  %rv = alloca ptr
  br label %start
start:
  br label %bb0
bb0:
  %t4 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %a0, i32 0, i32 0
  %t6 = getelementptr { i64, ptr }, ptr %t4, i32 0, i32 1
  %t7 = load ptr, ptr %t6, !tbaa !27
  %t8 = getelementptr %"compiler/free:feed", ptr %t7, i64 %a1
  store ptr %t8, ptr %rv
  br label %ret
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

define dso_local void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ffree_3afeed_3e_2eroom_3ccompiler_2ffree_3afeed_3e(ptr %v0, ptr %a0, i64 %a1) noinline cold #0 {
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
  call void @__olang_check_failed(ptr @olang_loc_efad923b834fcd6a_95f1fff106ff3fde)
  unreachable
bb15:
  %t71 = load i64, ptr %l36, !tbaa !24
  %t72 = load i64, ptr %l37, !tbaa !24
  %t73 = icmp sle i64 %t71, %t72
  br i1 %t73, label %bb17, label %bb18
bb16:
  call void @__olang_check_failed(ptr @olang_loc_efad923b834fcd6a_95f1fff106ff3fde)
  unreachable
bb17:
  %t75 = getelementptr { i64, ptr }, ptr %l34, i32 0, i32 1
  %t76 = load ptr, ptr %t75, !tbaa !27
  %t77 = load i64, ptr %l36, !tbaa !24
  %t78 = getelementptr %"compiler/free:feed", ptr %t76, i64 0
  %t79 = sub i64 %t77, 0
  %t80 = insertvalue { i64, ptr } undef, i64 %t79, 0
  %t81 = insertvalue { i64, ptr } %t80, ptr %t78, 1
  store { i64, ptr } %t81, ptr %l4, !tbaa !27
  %t83 = load i64, ptr %l2, !tbaa !24
  %t87 = mul i64 %t83, 88
  %t88 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t87)
  %t89 = insertvalue { i64, ptr } undef, i64 %t83, 0
  %t90 = insertvalue { i64, ptr } %t89, ptr %t88, 1
  store { i64, ptr } %t90, ptr %l44, !tbaa !27
  store i64 0, ptr %l45, !tbaa !24
  store i64 0, ptr %l6, !tbaa !24
  br label %bb19
bb18:
  call void @__olang_check_failed(ptr @olang_loc_efad923b834fcd6a_95f1fff106ff3fde)
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
  %t106 = getelementptr %"compiler/free:feed", ptr %t105, i64 %t102
  %t107 = load %"compiler/free:feed", ptr %t106
  %t109 = load i64, ptr %l45, !tbaa !24
  %t110 = getelementptr { i64, ptr }, ptr %l44, i32 0, i32 1
  %t111 = load ptr, ptr %t110, !tbaa !27
  %t112 = getelementptr %"compiler/free:feed", ptr %t111, i64 %t109
  store %"compiler/free:feed" %t107, ptr %t112
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

define dso_local void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ffree_3aleaf_3e_2ePush_3ccompiler_2ffree_3aleaf_3e(ptr %v0, ptr %v1, ptr %a0, %"compiler/free:leaf" %a1) #0 {
entry:
  %l0 = alloca ptr
  %l12 = alloca ptr
  %l14 = alloca i64
  %l15 = alloca %"compiler/free:leaf"
  %l17 = alloca %"compiler/free:leaf"
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
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ffree_3aleaf_3e_2eroom_3ccompiler_2ffree_3aleaf_3e(ptr %v0, ptr %t15, i64 %t21)
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
  store %"compiler/free:leaf" %a1, ptr %l15
  %t31 = call %"compiler/free:leaf" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2ffree_3aleaf(ptr %v0, ptr %l15)
  store %"compiler/free:leaf" %t31, ptr %l17
  br label %bb5
bb5:
  %t32 = load %"compiler/free:leaf", ptr %l17
  %t33 = load ptr, ptr %l12, !tbaa !29
  %t34 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t33, i32 0, i32 0
  %t35 = load i64, ptr %l14, !tbaa !24
  %t36 = getelementptr { i64, ptr }, ptr %t34, i32 0, i32 1
  %t37 = load ptr, ptr %t36, !tbaa !27
  %t38 = getelementptr %"compiler/free:leaf", ptr %t37, i64 %t35
  store %"compiler/free:leaf" %t32, ptr %t38
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

define dso_local void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ffree_3aleaf_3e_2eroom_3ccompiler_2ffree_3aleaf_3e(ptr %v0, ptr %a0, i64 %a1) noinline cold #0 {
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
  call void @__olang_check_failed(ptr @olang_loc_40604acdd443648a_f670573c60fc3c8e)
  unreachable
bb15:
  %t71 = load i64, ptr %l36, !tbaa !24
  %t72 = load i64, ptr %l37, !tbaa !24
  %t73 = icmp sle i64 %t71, %t72
  br i1 %t73, label %bb17, label %bb18
bb16:
  call void @__olang_check_failed(ptr @olang_loc_40604acdd443648a_f670573c60fc3c8e)
  unreachable
bb17:
  %t75 = getelementptr { i64, ptr }, ptr %l34, i32 0, i32 1
  %t76 = load ptr, ptr %t75, !tbaa !27
  %t77 = load i64, ptr %l36, !tbaa !24
  %t78 = getelementptr %"compiler/free:leaf", ptr %t76, i64 0
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
  call void @__olang_check_failed(ptr @olang_loc_40604acdd443648a_f670573c60fc3c8e)
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
  %t106 = getelementptr %"compiler/free:leaf", ptr %t105, i64 %t102
  %t107 = load %"compiler/free:leaf", ptr %t106
  store %"compiler/free:leaf" zeroinitializer, ptr %t106
  %t109 = load i64, ptr %l45, !tbaa !24
  %t110 = getelementptr { i64, ptr }, ptr %l44, i32 0, i32 1
  %t111 = load ptr, ptr %t110, !tbaa !27
  %t112 = getelementptr %"compiler/free:leaf", ptr %t111, i64 %t109
  store %"compiler/free:leaf" %t107, ptr %t112
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

define dso_local %"compiler/free:letGo" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ffree_3aletGo_3e_2eAt_3ccompiler_2ffree_3aletGo_3e(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %rv = alloca %"compiler/free:letGo"
  br label %start
start:
  br label %bb0
bb0:
  %t4 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %a0, i32 0, i32 0
  %t6 = getelementptr { i64, ptr }, ptr %t4, i32 0, i32 1
  %t7 = load ptr, ptr %t6, !tbaa !27
  %t8 = getelementptr %"compiler/free:letGo", ptr %t7, i64 %a1
  %t9 = load %"compiler/free:letGo", ptr %t8
  store %"compiler/free:letGo" %t9, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/free:letGo", ptr %rv
  ret %"compiler/free:letGo" %rr
}

define dso_local i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ffree_3aletGo_3e_2eLen_3ccompiler_2ffree_3aletGo_3e(ptr %v0, ptr %a0) #0 {
entry:
  %r = tail call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cU64_3e_2eLen_3cU64_3e(ptr %v0, ptr %a0)
  ret i64 %r
}

define dso_local void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ffree_3aletGo_3e_2ePush_3ccompiler_2ffree_3aletGo_3e(ptr %v0, ptr %a0, %"compiler/free:letGo" %a1) #0 {
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
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ffree_3aletGo_3e_2eroom_3ccompiler_2ffree_3aletGo_3e(ptr %v0, ptr %t15, i64 %t21)
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
  %t36 = getelementptr %"compiler/free:letGo", ptr %t35, i64 %t28
  store %"compiler/free:letGo" %a1, ptr %t36
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

define dso_local void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ffree_3aletGo_3e_2eroom_3ccompiler_2ffree_3aletGo_3e(ptr %v0, ptr %a0, i64 %a1) noinline cold #0 {
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
  call void @__olang_check_failed(ptr @olang_loc_1bf1200a231db6_da7843fa7a1e2caa)
  unreachable
bb15:
  %t71 = load i64, ptr %l36, !tbaa !24
  %t72 = load i64, ptr %l37, !tbaa !24
  %t73 = icmp sle i64 %t71, %t72
  br i1 %t73, label %bb17, label %bb18
bb16:
  call void @__olang_check_failed(ptr @olang_loc_1bf1200a231db6_da7843fa7a1e2caa)
  unreachable
bb17:
  %t75 = getelementptr { i64, ptr }, ptr %l34, i32 0, i32 1
  %t76 = load ptr, ptr %t75, !tbaa !27
  %t77 = load i64, ptr %l36, !tbaa !24
  %t78 = getelementptr %"compiler/free:letGo", ptr %t76, i64 0
  %t79 = sub i64 %t77, 0
  %t80 = insertvalue { i64, ptr } undef, i64 %t79, 0
  %t81 = insertvalue { i64, ptr } %t80, ptr %t78, 1
  store { i64, ptr } %t81, ptr %l4, !tbaa !27
  %t83 = load i64, ptr %l2, !tbaa !24
  %t87 = mul i64 %t83, 72
  %t88 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t87)
  %t89 = insertvalue { i64, ptr } undef, i64 %t83, 0
  %t90 = insertvalue { i64, ptr } %t89, ptr %t88, 1
  store { i64, ptr } %t90, ptr %l44, !tbaa !27
  store i64 0, ptr %l45, !tbaa !24
  store i64 0, ptr %l6, !tbaa !24
  br label %bb19
bb18:
  call void @__olang_check_failed(ptr @olang_loc_1bf1200a231db6_da7843fa7a1e2caa)
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
  %t106 = getelementptr %"compiler/free:letGo", ptr %t105, i64 %t102
  %t107 = load %"compiler/free:letGo", ptr %t106
  %t109 = load i64, ptr %l45, !tbaa !24
  %t110 = getelementptr { i64, ptr }, ptr %l44, i32 0, i32 1
  %t111 = load ptr, ptr %t110, !tbaa !27
  %t112 = getelementptr %"compiler/free:letGo", ptr %t111, i64 %t109
  store %"compiler/free:letGo" %t107, ptr %t112
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

define dso_local %"compiler/free:orCall" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ffree_3aorCall_3e_2eAt_3ccompiler_2ffree_3aorCall_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1) #0 {
entry:
  %rv = alloca %"compiler/free:orCall"
  br label %start
start:
  br label %bb0
bb0:
  %t4 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %a0, i32 0, i32 0
  %t6 = getelementptr { i64, ptr }, ptr %t4, i32 0, i32 1
  %t7 = load ptr, ptr %t6, !tbaa !27
  %t8 = getelementptr %"compiler/free:orCall", ptr %t7, i64 %a1
  %t9 = load %"compiler/free:orCall", ptr %t8
  store %"compiler/free:orCall" %t9, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/free:orCall", ptr %rv
  ret %"compiler/free:orCall" %rr
}

define dso_local i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ffree_3aorCall_3e_2eLen_3ccompiler_2ffree_3aorCall_3e(ptr %v0, ptr %a0) #0 {
entry:
  %r = tail call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cU64_3e_2eLen_3cU64_3e(ptr %v0, ptr %a0)
  ret i64 %r
}

define dso_local void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ffree_3aorCall_3e_2ePush_3ccompiler_2ffree_3aorCall_3e(ptr %v0, ptr %v1, ptr %a0, %"compiler/free:orCall" %a1) #0 {
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
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ffree_3aorCall_3e_2eroom_3ccompiler_2ffree_3aorCall_3e(ptr %v0, ptr %t15, i64 %t21)
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
  %t36 = getelementptr %"compiler/free:orCall", ptr %t35, i64 %t28
  store %"compiler/free:orCall" %a1, ptr %t36
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

define dso_local void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ffree_3aorCall_3e_2eroom_3ccompiler_2ffree_3aorCall_3e(ptr %v0, ptr %a0, i64 %a1) noinline cold #0 {
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
  call void @__olang_check_failed(ptr @olang_loc_2c35638b151a7e80_497395f4df4890e4)
  unreachable
bb15:
  %t71 = load i64, ptr %l36, !tbaa !24
  %t72 = load i64, ptr %l37, !tbaa !24
  %t73 = icmp sle i64 %t71, %t72
  br i1 %t73, label %bb17, label %bb18
bb16:
  call void @__olang_check_failed(ptr @olang_loc_2c35638b151a7e80_497395f4df4890e4)
  unreachable
bb17:
  %t75 = getelementptr { i64, ptr }, ptr %l34, i32 0, i32 1
  %t76 = load ptr, ptr %t75, !tbaa !27
  %t77 = load i64, ptr %l36, !tbaa !24
  %t78 = getelementptr %"compiler/free:orCall", ptr %t76, i64 0
  %t79 = sub i64 %t77, 0
  %t80 = insertvalue { i64, ptr } undef, i64 %t79, 0
  %t81 = insertvalue { i64, ptr } %t80, ptr %t78, 1
  store { i64, ptr } %t81, ptr %l4, !tbaa !27
  %t83 = load i64, ptr %l2, !tbaa !24
  %t87 = mul i64 %t83, 56
  %t88 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t87)
  %t89 = insertvalue { i64, ptr } undef, i64 %t83, 0
  %t90 = insertvalue { i64, ptr } %t89, ptr %t88, 1
  store { i64, ptr } %t90, ptr %l44, !tbaa !27
  store i64 0, ptr %l45, !tbaa !24
  store i64 0, ptr %l6, !tbaa !24
  br label %bb19
bb18:
  call void @__olang_check_failed(ptr @olang_loc_2c35638b151a7e80_497395f4df4890e4)
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
  %t106 = getelementptr %"compiler/free:orCall", ptr %t105, i64 %t102
  %t107 = load %"compiler/free:orCall", ptr %t106
  %t109 = load i64, ptr %l45, !tbaa !24
  %t110 = getelementptr { i64, ptr }, ptr %l44, i32 0, i32 1
  %t111 = load ptr, ptr %t110, !tbaa !27
  %t112 = getelementptr %"compiler/free:orCall", ptr %t111, i64 %t109
  store %"compiler/free:orCall" %t107, ptr %t112
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

define dso_local %"compiler/free:orStore" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ffree_3aorStore_3e_2eAt_3ccompiler_2ffree_3aorStore_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1) #0 {
entry:
  %rv = alloca %"compiler/free:orStore"
  br label %start
start:
  br label %bb0
bb0:
  %t4 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %a0, i32 0, i32 0
  %t6 = getelementptr { i64, ptr }, ptr %t4, i32 0, i32 1
  %t7 = load ptr, ptr %t6, !tbaa !27
  %t8 = getelementptr %"compiler/free:orStore", ptr %t7, i64 %a1
  %t9 = load %"compiler/free:orStore", ptr %t8
  store %"compiler/free:orStore" %t9, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/free:orStore", ptr %rv
  ret %"compiler/free:orStore" %rr
}

define dso_local i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ffree_3aorStore_3e_2eLen_3ccompiler_2ffree_3aorStore_3e(ptr %v0, ptr %a0) #0 {
entry:
  %r = tail call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cU64_3e_2eLen_3cU64_3e(ptr %v0, ptr %a0)
  ret i64 %r
}

define dso_local void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ffree_3aorStore_3e_2ePush_3ccompiler_2ffree_3aorStore_3e(ptr %v0, ptr %v1, ptr %a0, %"compiler/free:orStore" %a1) #0 {
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
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ffree_3aorStore_3e_2eroom_3ccompiler_2ffree_3aorStore_3e(ptr %v0, ptr %t15, i64 %t21)
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
  %t36 = getelementptr %"compiler/free:orStore", ptr %t35, i64 %t28
  store %"compiler/free:orStore" %a1, ptr %t36
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

define dso_local void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ffree_3aorStore_3e_2eroom_3ccompiler_2ffree_3aorStore_3e(ptr %v0, ptr %a0, i64 %a1) noinline cold #0 {
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
  call void @__olang_check_failed(ptr @olang_loc_d1161cdbd1b8021e_b3073b2cbacd1402)
  unreachable
bb15:
  %t71 = load i64, ptr %l36, !tbaa !24
  %t72 = load i64, ptr %l37, !tbaa !24
  %t73 = icmp sle i64 %t71, %t72
  br i1 %t73, label %bb17, label %bb18
bb16:
  call void @__olang_check_failed(ptr @olang_loc_d1161cdbd1b8021e_b3073b2cbacd1402)
  unreachable
bb17:
  %t75 = getelementptr { i64, ptr }, ptr %l34, i32 0, i32 1
  %t76 = load ptr, ptr %t75, !tbaa !27
  %t77 = load i64, ptr %l36, !tbaa !24
  %t78 = getelementptr %"compiler/free:orStore", ptr %t76, i64 0
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
  call void @__olang_check_failed(ptr @olang_loc_d1161cdbd1b8021e_b3073b2cbacd1402)
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
  %t106 = getelementptr %"compiler/free:orStore", ptr %t105, i64 %t102
  %t107 = load %"compiler/free:orStore", ptr %t106
  %t109 = load i64, ptr %l45, !tbaa !24
  %t110 = getelementptr { i64, ptr }, ptr %l44, i32 0, i32 1
  %t111 = load ptr, ptr %t110, !tbaa !27
  %t112 = getelementptr %"compiler/free:orStore", ptr %t111, i64 %t109
  store %"compiler/free:orStore" %t107, ptr %t112
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

define dso_local %"compiler/free:reason" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ffree_3areason_3e_2eAt_3ccompiler_2ffree_3areason_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1) #0 {
entry:
  %rv = alloca %"compiler/free:reason"
  br label %start
start:
  br label %bb0
bb0:
  %t4 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %a0, i32 0, i32 0
  %t6 = getelementptr { i64, ptr }, ptr %t4, i32 0, i32 1
  %t7 = load ptr, ptr %t6, !tbaa !27
  %t8 = getelementptr %"compiler/free:reason", ptr %t7, i64 %a1
  %t9 = load %"compiler/free:reason", ptr %t8
  store %"compiler/free:reason" %t9, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/free:reason", ptr %rv
  ret %"compiler/free:reason" %rr
}

define dso_local void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ffree_3areason_3e_2ePush_3ccompiler_2ffree_3areason_3e(ptr %v0, ptr %v1, ptr %a0, %"compiler/free:reason" %a1) #0 {
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
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ffree_3areason_3e_2eroom_3ccompiler_2ffree_3areason_3e(ptr %v0, ptr %t15, i64 %t21)
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
  %t36 = getelementptr %"compiler/free:reason", ptr %t35, i64 %t28
  store %"compiler/free:reason" %a1, ptr %t36
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

define dso_local void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ffree_3areason_3e_2eSetAt_3ccompiler_2ffree_3areason_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1, %"compiler/free:reason" %a2) #0 {
entry:
  br label %start
start:
  br label %bb0
bb0:
  %t6 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %a0, i32 0, i32 0
  %t8 = getelementptr { i64, ptr }, ptr %t6, i32 0, i32 1
  %t9 = load ptr, ptr %t8, !tbaa !27
  %t10 = getelementptr %"compiler/free:reason", ptr %t9, i64 %a1
  store %"compiler/free:reason" %a2, ptr %t10
  br label %ret
ret:
  ret void
}

define dso_local void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ffree_3areason_3e_2eroom_3ccompiler_2ffree_3areason_3e(ptr %v0, ptr %a0, i64 %a1) noinline cold #0 {
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
  call void @__olang_check_failed(ptr @olang_loc_25b83b0e6fc9f846_57fef5b31297b84a)
  unreachable
bb15:
  %t71 = load i64, ptr %l36, !tbaa !24
  %t72 = load i64, ptr %l37, !tbaa !24
  %t73 = icmp sle i64 %t71, %t72
  br i1 %t73, label %bb17, label %bb18
bb16:
  call void @__olang_check_failed(ptr @olang_loc_25b83b0e6fc9f846_57fef5b31297b84a)
  unreachable
bb17:
  %t75 = getelementptr { i64, ptr }, ptr %l34, i32 0, i32 1
  %t76 = load ptr, ptr %t75, !tbaa !27
  %t77 = load i64, ptr %l36, !tbaa !24
  %t78 = getelementptr %"compiler/free:reason", ptr %t76, i64 0
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
  call void @__olang_check_failed(ptr @olang_loc_25b83b0e6fc9f846_57fef5b31297b84a)
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
  %t106 = getelementptr %"compiler/free:reason", ptr %t105, i64 %t102
  %t107 = load %"compiler/free:reason", ptr %t106
  %t109 = load i64, ptr %l45, !tbaa !24
  %t110 = getelementptr { i64, ptr }, ptr %l44, i32 0, i32 1
  %t111 = load ptr, ptr %t110, !tbaa !27
  %t112 = getelementptr %"compiler/free:reason", ptr %t111, i64 %t109
  store %"compiler/free:reason" %t107, ptr %t112
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

define dso_local %"compiler/free:retire" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ffree_3aretire_3e_2eAt_3ccompiler_2ffree_3aretire_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1) #0 {
entry:
  %rv = alloca %"compiler/free:retire"
  br label %start
start:
  br label %bb0
bb0:
  %t4 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %a0, i32 0, i32 0
  %t6 = getelementptr { i64, ptr }, ptr %t4, i32 0, i32 1
  %t7 = load ptr, ptr %t6, !tbaa !27
  %t8 = getelementptr %"compiler/free:retire", ptr %t7, i64 %a1
  %t9 = load %"compiler/free:retire", ptr %t8
  store %"compiler/free:retire" %t9, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/free:retire", ptr %rv
  ret %"compiler/free:retire" %rr
}

define dso_local i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ffree_3aretire_3e_2eLen_3ccompiler_2ffree_3aretire_3e(ptr %v0, ptr %a0) #0 {
entry:
  %r = tail call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cU64_3e_2eLen_3cU64_3e(ptr %v0, ptr %a0)
  ret i64 %r
}

define dso_local void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ffree_3aretire_3e_2ePush_3ccompiler_2ffree_3aretire_3e(ptr %v0, ptr %v1, ptr %a0, %"compiler/free:retire" %a1) #0 {
entry:
  %l0 = alloca ptr
  %l12 = alloca ptr
  %l14 = alloca i64
  %l15 = alloca %"compiler/free:retire"
  %l17 = alloca %"compiler/free:retire"
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
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ffree_3aretire_3e_2eroom_3ccompiler_2ffree_3aretire_3e(ptr %v0, ptr %t15, i64 %t21)
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
  store %"compiler/free:retire" %a1, ptr %l15
  %t31 = call %"compiler/free:retire" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2ffree_3aretire(ptr %v0, ptr %l15)
  store %"compiler/free:retire" %t31, ptr %l17
  br label %bb5
bb5:
  %t32 = load %"compiler/free:retire", ptr %l17
  %t33 = load ptr, ptr %l12, !tbaa !29
  %t34 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t33, i32 0, i32 0
  %t35 = load i64, ptr %l14, !tbaa !24
  %t36 = getelementptr { i64, ptr }, ptr %t34, i32 0, i32 1
  %t37 = load ptr, ptr %t36, !tbaa !27
  %t38 = getelementptr %"compiler/free:retire", ptr %t37, i64 %t35
  store %"compiler/free:retire" %t32, ptr %t38
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

define dso_local void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ffree_3aretire_3e_2eroom_3ccompiler_2ffree_3aretire_3e(ptr %v0, ptr %a0, i64 %a1) noinline cold #0 {
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
  call void @__olang_check_failed(ptr @olang_loc_d42ff38256e33c94_2d92a6eda4551ad8)
  unreachable
bb15:
  %t71 = load i64, ptr %l36, !tbaa !24
  %t72 = load i64, ptr %l37, !tbaa !24
  %t73 = icmp sle i64 %t71, %t72
  br i1 %t73, label %bb17, label %bb18
bb16:
  call void @__olang_check_failed(ptr @olang_loc_d42ff38256e33c94_2d92a6eda4551ad8)
  unreachable
bb17:
  %t75 = getelementptr { i64, ptr }, ptr %l34, i32 0, i32 1
  %t76 = load ptr, ptr %t75, !tbaa !27
  %t77 = load i64, ptr %l36, !tbaa !24
  %t78 = getelementptr %"compiler/free:retire", ptr %t76, i64 0
  %t79 = sub i64 %t77, 0
  %t80 = insertvalue { i64, ptr } undef, i64 %t79, 0
  %t81 = insertvalue { i64, ptr } %t80, ptr %t78, 1
  store { i64, ptr } %t81, ptr %l4, !tbaa !27
  %t83 = load i64, ptr %l2, !tbaa !24
  %t87 = mul i64 %t83, 48
  %t88 = call ptr @__olang_scope_alloc_zeroed(ptr %v0, i64 %t87)
  %t89 = insertvalue { i64, ptr } undef, i64 %t83, 0
  %t90 = insertvalue { i64, ptr } %t89, ptr %t88, 1
  store { i64, ptr } %t90, ptr %l44, !tbaa !27
  store i64 0, ptr %l45, !tbaa !24
  store i64 0, ptr %l6, !tbaa !24
  br label %bb19
bb18:
  call void @__olang_check_failed(ptr @olang_loc_d42ff38256e33c94_2d92a6eda4551ad8)
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
  %t106 = getelementptr %"compiler/free:retire", ptr %t105, i64 %t102
  %t107 = load %"compiler/free:retire", ptr %t106
  store %"compiler/free:retire" zeroinitializer, ptr %t106
  %t109 = load i64, ptr %l45, !tbaa !24
  %t110 = getelementptr { i64, ptr }, ptr %l44, i32 0, i32 1
  %t111 = load ptr, ptr %t110, !tbaa !27
  %t112 = getelementptr %"compiler/free:retire", ptr %t111, i64 %t109
  store %"compiler/free:retire" %t107, ptr %t112
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

define dso_local %"compiler/free:store" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ffree_3astore_3e_2eAt_3ccompiler_2ffree_3astore_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1) #0 {
entry:
  %rv = alloca %"compiler/free:store"
  br label %start
start:
  br label %bb0
bb0:
  %t4 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %a0, i32 0, i32 0
  %t6 = getelementptr { i64, ptr }, ptr %t4, i32 0, i32 1
  %t7 = load ptr, ptr %t6, !tbaa !27
  %t8 = getelementptr %"compiler/free:store", ptr %t7, i64 %a1
  %t9 = load %"compiler/free:store", ptr %t8
  store %"compiler/free:store" %t9, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/free:store", ptr %rv
  ret %"compiler/free:store" %rr
}

define dso_local i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ffree_3astore_3e_2eLen_3ccompiler_2ffree_3astore_3e(ptr %v0, ptr %a0) #0 {
entry:
  %r = tail call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cU64_3e_2eLen_3cU64_3e(ptr %v0, ptr %a0)
  ret i64 %r
}

define dso_local void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ffree_3astore_3e_2ePush_3ccompiler_2ffree_3astore_3e(ptr %v0, ptr %v1, ptr %a0, %"compiler/free:store" %a1) #0 {
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
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ffree_3astore_3e_2eroom_3ccompiler_2ffree_3astore_3e(ptr %v0, ptr %t15, i64 %t21)
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
  %t36 = getelementptr %"compiler/free:store", ptr %t35, i64 %t28
  store %"compiler/free:store" %a1, ptr %t36
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

define dso_local void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ffree_3astore_3e_2eroom_3ccompiler_2ffree_3astore_3e(ptr %v0, ptr %a0, i64 %a1) noinline cold #0 {
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
  call void @__olang_check_failed(ptr @olang_loc_8bcdc944ca0dc1fa_d04b087ab384b8ce)
  unreachable
bb15:
  %t71 = load i64, ptr %l36, !tbaa !24
  %t72 = load i64, ptr %l37, !tbaa !24
  %t73 = icmp sle i64 %t71, %t72
  br i1 %t73, label %bb17, label %bb18
bb16:
  call void @__olang_check_failed(ptr @olang_loc_8bcdc944ca0dc1fa_d04b087ab384b8ce)
  unreachable
bb17:
  %t75 = getelementptr { i64, ptr }, ptr %l34, i32 0, i32 1
  %t76 = load ptr, ptr %t75, !tbaa !27
  %t77 = load i64, ptr %l36, !tbaa !24
  %t78 = getelementptr %"compiler/free:store", ptr %t76, i64 0
  %t79 = sub i64 %t77, 0
  %t80 = insertvalue { i64, ptr } undef, i64 %t79, 0
  %t81 = insertvalue { i64, ptr } %t80, ptr %t78, 1
  store { i64, ptr } %t81, ptr %l4, !tbaa !27
  %t83 = load i64, ptr %l2, !tbaa !24
  %t87 = mul i64 %t83, 72
  %t88 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t87)
  %t89 = insertvalue { i64, ptr } undef, i64 %t83, 0
  %t90 = insertvalue { i64, ptr } %t89, ptr %t88, 1
  store { i64, ptr } %t90, ptr %l44, !tbaa !27
  store i64 0, ptr %l45, !tbaa !24
  store i64 0, ptr %l6, !tbaa !24
  br label %bb19
bb18:
  call void @__olang_check_failed(ptr @olang_loc_8bcdc944ca0dc1fa_d04b087ab384b8ce)
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
  %t106 = getelementptr %"compiler/free:store", ptr %t105, i64 %t102
  %t107 = load %"compiler/free:store", ptr %t106
  %t109 = load i64, ptr %l45, !tbaa !24
  %t110 = getelementptr { i64, ptr }, ptr %l44, i32 0, i32 1
  %t111 = load ptr, ptr %t110, !tbaa !27
  %t112 = getelementptr %"compiler/free:store", ptr %t111, i64 %t109
  store %"compiler/free:store" %t107, ptr %t112
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

define dso_local ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aPlan_3e_2eRefMut_3ccompiler_2ftyped_3aPlan_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1) #0 {
entry:
  %rv = alloca ptr
  br label %start
start:
  br label %bb0
bb0:
  %t4 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %a0, i32 0, i32 0
  %t6 = getelementptr { i64, ptr }, ptr %t4, i32 0, i32 1
  %t7 = load ptr, ptr %t6, !tbaa !27
  %t8 = getelementptr %"compiler/typed:Plan", ptr %t7, i64 %a1
  store ptr %t8, ptr %rv
  br label %ret
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

@std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aPlan_3e_2eRef_3ccompiler_2ftyped_3aPlan_3e = dso_local alias ptr (ptr, ptr, ptr, i64), ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aPlan_3e_2eRefMut_3ccompiler_2ftyped_3aPlan_3e
define dso_local void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20std_2fprelude_2fvec_3aVec_3cBool_H788cd74f9c006611bc4bb459b5b22001(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  tail call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcond_3aGlobal_26_3e_2ePush_3ccompiler_2fcond_3aGlobal_26_3e(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
  ret void
}

define dso_local ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20std_2fprelude_2fvec_3aVec_3cBool_Ha64a825bb0b4fc6c7596ac96329c2853(ptr %v0, ptr %v1, ptr %a0, i64 %a1) #0 {
entry:
  %r = tail call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcond_3aGlobal_26_3e_2eAt_3ccompiler_2fcond_3aGlobal_26_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
  ret ptr %r
}

define dso_local void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20std_2fprelude_2fvec_3aVec_3cI64__H2ad576503181bd1b8552368bfa2352a6(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  tail call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fast_3aDecl_26_3e_2eTruncate_3ccompiler_2fast_3aDecl_26_3e(ptr %v0, ptr %a0, i64 %a1)
  ret void
}

define dso_local { i32, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20std_2fprelude_2fvec_3aVec_3cI64__H5927ce9e0c48ffa4d9cf1c64f8f12c1b(ptr %v0, ptr %v1, ptr %a0) #0 {
entry:
  %r = tail call { i32, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H30b952b85dc190b6cd5306b9d98a7749(ptr %v0, ptr %v1, ptr %a0)
  ret { i32, ptr } %r
}

define dso_local ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20std_2fprelude_2fvec_3aVec_3cI64__H72f5eb830a5b95ea4064fb79c9339d29(ptr %v0, ptr %v1, ptr %a0, i64 %a1) #0 {
entry:
  %r = tail call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcond_3aGlobal_26_3e_2eAt_3ccompiler_2fcond_3aGlobal_26_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
  ret ptr %r
}

define dso_local i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20std_2fprelude_2fvec_3aVec_3cI64__Haa8dec86a2077fe432a5bd923bc4b0fd(ptr %v0, ptr %a0) #0 {
entry:
  %r = tail call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cU64_3e_2eLen_3cU64_3e(ptr %v0, ptr %a0)
  ret i64 %r
}

define dso_local void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20std_2fprelude_2fvec_3aVec_3cI64__Hca84839cdf395382408370342cfafe64(ptr %v0, ptr %a0) #0 {
entry:
  tail call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLvalue_26_3e_2eClea_Hf36a88772899b36a46c039ef55a38999(ptr %v0, ptr %a0)
  ret void
}

define dso_local void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20std_2fprelude_2fvec_3aVec_3cI64__He5d25769b393ce65c1b3f30021d9348f(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  tail call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcond_3aGlobal_26_3e_2ePush_3ccompiler_2fcond_3aGlobal_26_3e(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
  ret void
}

define dso_local %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2ffree_3afeedCall_3e_2ector(ptr %v0, i64 %a0) #0 {
entry:
  %r = tail call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cU64_3e_2ector(ptr %v0, i64 %a0)
  ret %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %r
}

define dso_local %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2ffree_3afeed_3e_2ector(ptr %v0, i64 %a0) #0 {
entry:
  %r = tail call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cU64_3e_2ector(ptr %v0, i64 %a0)
  ret %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %r
}

define dso_local %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2ffree_3aleaf_3e_2ector(ptr %v0, i64 %a0) #0 {
entry:
  %r = tail call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cU64_3e_2ector(ptr %v0, i64 %a0)
  ret %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %r
}

define dso_local %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2ffree_3aletGo_3e_2ector(ptr %v0, i64 %a0) #0 {
entry:
  %r = tail call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cU64_3e_2ector(ptr %v0, i64 %a0)
  ret %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %r
}

define dso_local %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2ffree_3aorCall_3e_2ector(ptr %v0, i64 %a0) #0 {
entry:
  %r = tail call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cU64_3e_2ector(ptr %v0, i64 %a0)
  ret %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %r
}

define dso_local %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2ffree_3aorStore_3e_2ector(ptr %v0, i64 %a0) #0 {
entry:
  %r = tail call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cU64_3e_2ector(ptr %v0, i64 %a0)
  ret %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %r
}

define dso_local %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2ffree_3areason_3e_2ector(ptr %v0, i64 %a0) #0 {
entry:
  %r = tail call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cU64_3e_2ector(ptr %v0, i64 %a0)
  ret %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %r
}

define dso_local %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2ffree_3aretire_3e_2ector(ptr %v0, i64 %a0) #0 {
entry:
  %r = tail call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cU64_3e_2ector(ptr %v0, i64 %a0)
  ret %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %r
}

define dso_local %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2ffree_3astore_3e_2ector(ptr %v0, i64 %a0) #0 {
entry:
  %r = tail call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cU64_3e_2ector(ptr %v0, i64 %a0)
  ret %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %r
}

define dso_local %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cmut_20std_2fprelude_2fvec_3aVec_3cBool_3e_26_3e_2ector(ptr %v0, i64 %a0) #0 {
entry:
  %r = tail call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cU64_3e_2ector(ptr %v0, i64 %a0)
  ret %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %r
}

define dso_local %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cmut_20std_2fprelude_2fvec_3aVec_3cI64_3e_26_3e_2ector(ptr %v0, i64 %a0) #0 {
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
define linkonce_odr %"std/prelude/map:MapEntry.f17f3f0202174eb6591f595766c15613" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMapEntry_3cI64_2c_20std_2fprelud_H71177966bad46d14f5199700b30e3f5d(ptr %v0, ptr %a0) #0 {
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
  %t5 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aBlockId_3e(ptr %v0, ptr %t3)
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

define linkonce_odr %"std/prelude/map:MapEntry.0769abb240fa4d9f09390771d4b86387" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMapEntry_3ccompiler_2ftypes_3aTy_Hb90c848738a6017ace01ca680fb7cc35(ptr %v0, ptr %a0) #0 {
entry:
  %l1 = alloca %"std/prelude/map:MapEntry.0769abb240fa4d9f09390771d4b86387"
  %l3 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %rv = alloca %"std/prelude/map:MapEntry.0769abb240fa4d9f09390771d4b86387"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = load %"std/prelude/map:MapEntry.0769abb240fa4d9f09390771d4b86387", ptr %a0
  store %"std/prelude/map:MapEntry.0769abb240fa4d9f09390771d4b86387" %t2, ptr %l1
  %t3 = getelementptr %"std/prelude/map:MapEntry.0769abb240fa4d9f09390771d4b86387", ptr %l1, i32 0, i32 1
  %t5 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cI64_3e(ptr %v0, ptr %t3)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t5, ptr %l3
  br label %bb1
bb1:
  %t6 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l3
  %t7 = getelementptr %"std/prelude/map:MapEntry.0769abb240fa4d9f09390771d4b86387", ptr %l1, i32 0, i32 1
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t6, ptr %t7
  %t8 = load %"std/prelude/map:MapEntry.0769abb240fa4d9f09390771d4b86387", ptr %l1
  store %"std/prelude/map:MapEntry.0769abb240fa4d9f09390771d4b86387" %t8, ptr %rv
  br label %ret
ret:
  %rr = load %"std/prelude/map:MapEntry.0769abb240fa4d9f09390771d4b86387", ptr %rv
  ret %"std/prelude/map:MapEntry.0769abb240fa4d9f09390771d4b86387" %rr
}

declare void @llvm.memmove.p0.p0.i64(ptr, ptr, i64, i1)
define linkonce_odr %"std/prelude/map:MapEntry.2a60b5fdde847676acc31582b777d2c3" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMapEntry_3ccompiler_2ftypes_3aTy_He8c3fc5556fdbb675951f90c90a906b2(ptr %v0, ptr %a0) #0 {
entry:
  %l1 = alloca %"std/prelude/map:MapEntry.2a60b5fdde847676acc31582b777d2c3"
  %l2 = alloca { i64, ptr }
  %l3 = alloca i64
  %l4 = alloca { i64, ptr }
  %rv = alloca %"std/prelude/map:MapEntry.2a60b5fdde847676acc31582b777d2c3"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = load %"std/prelude/map:MapEntry.2a60b5fdde847676acc31582b777d2c3", ptr %a0
  store %"std/prelude/map:MapEntry.2a60b5fdde847676acc31582b777d2c3" %t2, ptr %l1
  %t3 = getelementptr %"std/prelude/map:MapEntry.2a60b5fdde847676acc31582b777d2c3", ptr %l1, i32 0, i32 1
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
  %t19 = getelementptr %"std/prelude/map:MapEntry.2a60b5fdde847676acc31582b777d2c3", ptr %l1, i32 0, i32 1
  store { i64, ptr } %t18, ptr %t19, !tbaa !27
  %t20 = load %"std/prelude/map:MapEntry.2a60b5fdde847676acc31582b777d2c3", ptr %l1
  store %"std/prelude/map:MapEntry.2a60b5fdde847676acc31582b777d2c3" %t20, ptr %rv
  br label %ret
ret:
  %rr = load %"std/prelude/map:MapEntry.2a60b5fdde847676acc31582b777d2c3", ptr %rv
  ret %"std/prelude/map:MapEntry.2a60b5fdde847676acc31582b777d2c3" %rr
}

declare noalias ptr @__olang_scope_alloc_zeroed(ptr, i64)
define linkonce_odr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ffree_3aleaf_3e(ptr %v0, ptr %a0) #0 {
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
  %t6 = call { i64, ptr } @olang_2emir_2eHelperKind_2eCopy_2eArray_3ccompiler_2ffree_3aleaf_3e(ptr %v0, { i64, ptr } %t4)
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

define linkonce_odr %"std/prelude/map:MapEntry.0769abb240fa4d9f09390771d4b86387" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMapEntry_3ccompiler_2ftypes_3aTy_H3be4ee752a8addbbec87ae071b9c8788(ptr %v0, ptr %a0) #0 {
entry:
  %l1 = alloca %"std/prelude/map:MapEntry.0769abb240fa4d9f09390771d4b86387"
  %l3 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %rv = alloca %"std/prelude/map:MapEntry.0769abb240fa4d9f09390771d4b86387"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = load %"std/prelude/map:MapEntry.0769abb240fa4d9f09390771d4b86387", ptr %a0
  store %"std/prelude/map:MapEntry.0769abb240fa4d9f09390771d4b86387" %t2, ptr %l1
  %t3 = getelementptr %"std/prelude/map:MapEntry.0769abb240fa4d9f09390771d4b86387", ptr %l1, i32 0, i32 1
  %t5 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ffree_3aleaf_3e(ptr %v0, ptr %t3)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t5, ptr %l3
  br label %bb1
bb1:
  %t6 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l3
  %t7 = getelementptr %"std/prelude/map:MapEntry.0769abb240fa4d9f09390771d4b86387", ptr %l1, i32 0, i32 1
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t6, ptr %t7
  %t8 = load %"std/prelude/map:MapEntry.0769abb240fa4d9f09390771d4b86387", ptr %l1
  store %"std/prelude/map:MapEntry.0769abb240fa4d9f09390771d4b86387" %t8, ptr %rv
  br label %ret
ret:
  %rr = load %"std/prelude/map:MapEntry.0769abb240fa4d9f09390771d4b86387", ptr %rv
  ret %"std/prelude/map:MapEntry.0769abb240fa4d9f09390771d4b86387" %rr
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

define linkonce_odr %"std/prelude/map:MapEntry.adf118859e04490c36a9a3f2e59cf058" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMapEntry_3cstd_2fpair_3aPair_3cI_H02e5b8f3527406afbf8960df7d709035(ptr %v0, ptr %a0) #0 {
entry:
  %l1 = alloca %"std/prelude/map:MapEntry.adf118859e04490c36a9a3f2e59cf058"
  %l2 = alloca { i64, ptr }
  %l3 = alloca i64
  %l4 = alloca { i64, ptr }
  %rv = alloca %"std/prelude/map:MapEntry.adf118859e04490c36a9a3f2e59cf058"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = load %"std/prelude/map:MapEntry.adf118859e04490c36a9a3f2e59cf058", ptr %a0
  store %"std/prelude/map:MapEntry.adf118859e04490c36a9a3f2e59cf058" %t2, ptr %l1
  %t3 = getelementptr %"std/prelude/map:MapEntry.adf118859e04490c36a9a3f2e59cf058", ptr %l1, i32 0, i32 1
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
  %t19 = getelementptr %"std/prelude/map:MapEntry.adf118859e04490c36a9a3f2e59cf058", ptr %l1, i32 0, i32 1
  store { i64, ptr } %t18, ptr %t19, !tbaa !27
  %t20 = load %"std/prelude/map:MapEntry.adf118859e04490c36a9a3f2e59cf058", ptr %l1
  store %"std/prelude/map:MapEntry.adf118859e04490c36a9a3f2e59cf058" %t20, ptr %rv
  br label %ret
ret:
  %rr = load %"std/prelude/map:MapEntry.adf118859e04490c36a9a3f2e59cf058", ptr %rv
  ret %"std/prelude/map:MapEntry.adf118859e04490c36a9a3f2e59cf058" %rr
}

define linkonce_odr void @olang_2emir_2eHelperKind_2eRender_2eArray_3cI64_3e_26(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l1 = alloca i64
  %l2 = alloca { i64, ptr }
  store i64 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t2 = load { i64, ptr }, ptr %a0, !tbaa !27
  store { i64, ptr } %t2, ptr %l2, !tbaa !27
  br label %bb1
bb1:
  %t3 = load i64, ptr %l1, !tbaa !24
  %t4 = icmp sge i64 %t3, 8
  br i1 %t4, label %bb3, label %bb4
bb2:
  br label %ret
bb3:
  %t6 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d1, i32 0, i32 1) }, 1
  %t7 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d1, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t6, i64 %t7)
  br label %bb2
bb4:
  %t8 = load i64, ptr %l1, !tbaa !24
  %t9 = add i64 %t8, 1
  %t10 = load { i64, ptr }, ptr %l2, !tbaa !27
  call void @olang_2emir_2eHelperKind_2eRender_2eArray_3cI64_3e(ptr %v0, { i64, ptr } %t10, i64 %t9)
  br label %bb5
bb5:
  br label %bb2
ret:
  ret void
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
declare void @__olang_sb_done(ptr)
@.d0 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"Vec" }>, align 8
define linkonce_odr %"compiler/free:leaf" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2ffree_3aleaf(ptr %v0, ptr %a0) #0 {
entry:
  %l1 = alloca %"compiler/free:leaf"
  %l2 = alloca { i64, ptr }
  %l3 = alloca i64
  %l4 = alloca { i64, ptr }
  %rv = alloca %"compiler/free:leaf"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = load %"compiler/free:leaf", ptr %a0
  store %"compiler/free:leaf" %t2, ptr %l1
  %t3 = getelementptr %"compiler/free:leaf", ptr %l1, i32 0, i32 0
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
  %t19 = getelementptr %"compiler/free:leaf", ptr %l1, i32 0, i32 0
  store { i64, ptr } %t18, ptr %t19, !tbaa !27
  %t20 = load %"compiler/free:leaf", ptr %l1
  store %"compiler/free:leaf" %t20, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/free:leaf", ptr %rv
  ret %"compiler/free:leaf" %rr
}

define linkonce_odr %"compiler/free:retire" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2ffree_3aretire(ptr %v0, ptr %a0) #0 {
entry:
  %l1 = alloca %"compiler/free:retire"
  %l3 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %rv = alloca %"compiler/free:retire"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = load %"compiler/free:retire", ptr %a0
  store %"compiler/free:retire" %t2, ptr %l1
  %t3 = getelementptr %"compiler/free:retire", ptr %l1, i32 0, i32 2
  %t5 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cI64_3e(ptr %v0, ptr %t3)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t5, ptr %l3
  br label %bb1
bb1:
  %t6 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l3
  %t7 = getelementptr %"compiler/free:retire", ptr %l1, i32 0, i32 2
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t6, ptr %t7
  %t8 = load %"compiler/free:retire", ptr %l1
  store %"compiler/free:retire" %t8, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/free:retire", ptr %rv
  ret %"compiler/free:retire" %rr
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
define linkonce_odr { i64, ptr } @olang_2emir_2eHelperKind_2eCopy_2eArray_3ccompiler_2ffree_3aleaf_3e(ptr %v0, { i64, ptr } %a0) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l1 = alloca i64
  %l2 = alloca { i64, ptr }
  %l3 = alloca i64
  %l6 = alloca %"compiler/free:leaf"
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
  %t4 = mul i64 %t3, 24
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
  %t15 = getelementptr %"compiler/free:leaf", ptr %t14, i64 %t12
  %t17 = call %"compiler/free:leaf" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2ffree_3aleaf(ptr %v0, ptr %t15)
  store %"compiler/free:leaf" %t17, ptr %l6
  br label %bb4
bb3:
  %t18 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t18, ptr %rv
  br label %ret
bb4:
  %t19 = load %"compiler/free:leaf", ptr %l6
  %t20 = load i64, ptr %l3, !tbaa !24
  %t21 = getelementptr { i64, ptr }, ptr %l2, i32 0, i32 1
  %t22 = load ptr, ptr %t21, !tbaa !27
  %t23 = getelementptr %"compiler/free:leaf", ptr %t22, i64 %t20
  store %"compiler/free:leaf" %t19, ptr %t23
  %t24 = load i64, ptr %l3, !tbaa !24
  %t25 = add i64 %t24, 1
  store i64 %t25, ptr %l3, !tbaa !24
  br label %bb1
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

@.d1 = private unnamed_addr constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"..." }>, align 8
declare void @__olang_sb_put(ptr, ptr, i64)
define linkonce_odr void @olang_2emir_2eHelperKind_2eRender_2eArray_3cI64_3e(ptr %v0, { i64, ptr } %a0, i64 %a1) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l1 = alloca i64
  %l2 = alloca i64
  %l3 = alloca i64
  store { i64, ptr } %a0, ptr %l0
  store i64 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = extractvalue { i64, ptr } { i64 11, ptr getelementptr inbounds (<{ i64, [11 x i8] }>, ptr @.d2, i32 0, i32 1) }, 1
  %t2 = extractvalue { i64, ptr } { i64 11, ptr getelementptr inbounds (<{ i64, [11 x i8] }>, ptr @.d2, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t1, i64 %t2)
  %t3 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t4 = extractvalue { i64, ptr } %t3, 0
  store i64 %t4, ptr %l2, !tbaa !24
  store i64 0, ptr %l3, !tbaa !24
  br label %bb1
bb1:
  %t5 = load i64, ptr %l3, !tbaa !24
  %t6 = load i64, ptr %l2, !tbaa !24
  %t7 = icmp slt i64 %t5, %t6
  br i1 %t7, label %bb2, label %bb3
bb2:
  %t9 = load i64, ptr %l3, !tbaa !24
  %t10 = icmp eq i64 %t9, 0
  br i1 %t10, label %bb5, label %bb4
bb3:
  %t12 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d3, i32 0, i32 1) }, 1
  %t13 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d3, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t12, i64 %t13)
  br label %ret
bb4:
  %t14 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d4, i32 0, i32 1) }, 1
  %t15 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d4, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t14, i64 %t15)
  br label %bb5
bb5:
  %t16 = load i64, ptr %l3, !tbaa !24
  %t17 = getelementptr { i64, ptr }, ptr %l0, i32 0, i32 1
  %t18 = load ptr, ptr %t17, !tbaa !27
  %t19 = getelementptr i64, ptr %t18, i64 %t16
  %t20 = load i64, ptr %t19, !tbaa !34
  %t22 = call ptr @__olang_sb_room(ptr %v0, i64 24)
  %t23 = call i64 @__olang_fmt_i64(ptr %t22, i64 %t20)
  call void @__olang_sb_add(ptr %v0, i64 %t23)
  %t24 = load i64, ptr %l3, !tbaa !24
  %t25 = add i64 %t24, 1
  store i64 %t25, ptr %l3, !tbaa !24
  br label %bb1
ret:
  ret void
}

declare void @llvm.memcpy.p0.p0.i64(ptr, ptr, i64, i1)
declare noalias ptr @__olang_scope_alloc_slow(ptr, i64, i64) noinline
@.d2 = private unnamed_addr constant <{ i64, [11 x i8] }> <{ i64 0, [11 x i8] c"Array<I64>[" }>, align 8
@.d3 = private unnamed_addr constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"]" }>, align 8
@.d4 = private unnamed_addr constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c", " }>, align 8
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
declare i64 @__olang_fmt_i64(ptr, i64)
declare void @__olang_sb_add(ptr, i64)
declare ptr @__olang_sb_grow(ptr, i64) noinline
declare i64 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Array_3ccompiler_2ftyped_3aBl_He88cfdc4919e1dee4cfd0cdecebbca1d(ptr %v0, ptr %a0, i64 %a1)
declare { i32, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2fvec_3aVec_3cI_Heebd28230b8fdd871dbb93ccdeb5ff7f(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
@olang_loc_79e185e5012865bd_cd07b8da98a1151 = external constant [0 x i8]
declare i64 @std_2fprelude_2fmap_2efreeLink(i64 %a0)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2fvec_3aVec_3cI_Haa7b37fb55048dd0c74843ff955f57e2(ptr %v0, ptr %a0)
declare %"std/prelude/map:MapEntry.f17f3f0202174eb6591f595766c15613" @std_2fprelude_2fmap_3aMapEntry_3cI64_2c_20std_2fprelude_2fvec_3aVec_3cI64_3e_3e_2ector(ptr %v0, ptr %v1, i64 %a0, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %a1)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2fvec_3aVec_3cI_H6c078a596243b892e1847e2ccd4290dd(ptr %v0, ptr %a0)
declare { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2fvec_3aVec_3cI_H0bd8b2e51f5f92f67cbd68b5195b203d(ptr %v0, ptr %a0, i64 %a1)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2fvec_3aVec_3cI_H84f9774226d7b378ef632445c463492d(ptr %v0, ptr %a0)
declare i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_H068cfedf7407289d149ee3c6f4c8aa20(ptr %v0, ptr %a0, i64 %a1)
@olang_loc_f5e55978a1ca9294_9305906d0ec8bac0 = external constant [0 x i8]
declare i64 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fsource_3aNameId_2c_20Bool_3_H0ad23e78b2b593286f94a0de5701989f(ptr %v0, ptr %a0, i32 %a1)
declare i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId_2c_20Array_3_H6743fd6fdd876d533cce32e3c0cd25b6(ptr %v0, ptr %a0, i32 %a1)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId_2c_20Array_3_Hd8d80a467d74446264496dd4b5aba312(ptr %v0, ptr %a0)
@olang_loc_9b8c5d4975bade78_e56c05184de495ac = external constant [0 x i8]
@olang_loc_63732e1191aeeb23_9297efdab07d2cd7 = external constant [0 x i8]
@olang_loc_3c88f75ac9b7346_7587423351d256fa = external constant [0 x i8]
@olang_loc_8160683de217ed2d_b0b8d1b5ac9765e9 = external constant [0 x i8]
@olang_loc_74a2cf585ce2d650_e6a9e76847dd37fc = external constant [0 x i8]
@olang_loc_66242b482b1a54e7_3ddf23fb7c2c497b = external constant [0 x i8]
declare { i32, { i64, ptr } } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId_2c_20Array_3_H6b4c62a37e5c57cb2d11c50f44a997f9(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId_2c_20Array_3_H98660a8959c13afe9504d4accd636acb(ptr %v0, ptr %a0, i32 %a1)
@olang_loc_a75194919de10a76_fce6476e6f77a342 = external constant [0 x i8]
@olang_loc_60753ec484e7b75d_7921789d0c292699 = external constant [0 x i8]
declare i64 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H2b299ac8414fe0900d06d94de708c354(ptr %v0, ptr %a0, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %a1)
@olang_loc_588616244e83f4d1_f256c997d7540e5d = external constant [0 x i8]
declare { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H964d39663fa413663ca48370aeba2c1e(ptr %v0, ptr %a0, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %a1)
@olang_loc_f5387e41aa461073_85329e3d54822a57 = external constant [0 x i8]
@olang_loc_baf2591500da8816_6821f095f5d7547a = external constant [0 x i8]
declare { i32, { i64, ptr } } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H031c7c147cc8ce0b988dd3fed8d142ad(ptr %v0, ptr %v1, ptr %a0, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %a1)
declare %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20compiler_2fsource_3aNameId_3e_2ector(ptr %v0)
@olang_loc_f9a298574f6fcd2c_98d69e8b2d03d648 = external constant [0 x i8]
@olang_loc_beb03000e0ed6cd9_518867cc113b06a5 = external constant [0 x i8]
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cU64_3e_2eLen_3cU64_3e(ptr %v0, ptr %a0)
@olang_loc_1281cf27d04edace_144f1257fa21d122 = external constant [0 x i8]
@olang_loc_efad923b834fcd6a_95f1fff106ff3fde = external constant [0 x i8]
@olang_loc_40604acdd443648a_f670573c60fc3c8e = external constant [0 x i8]
@olang_loc_1bf1200a231db6_da7843fa7a1e2caa = external constant [0 x i8]
@olang_loc_2c35638b151a7e80_497395f4df4890e4 = external constant [0 x i8]
@olang_loc_d1161cdbd1b8021e_b3073b2cbacd1402 = external constant [0 x i8]
@olang_loc_25b83b0e6fc9f846_57fef5b31297b84a = external constant [0 x i8]
@olang_loc_d42ff38256e33c94_2d92a6eda4551ad8 = external constant [0 x i8]
@olang_loc_8bcdc944ca0dc1fa_d04b087ab384b8ce = external constant [0 x i8]
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcond_3aGlobal_26_3e_2ePush_3ccompiler_2fcond_3aGlobal_26_3e(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcond_3aGlobal_26_3e_2eroom_3ccompiler_2fcond_3aGlobal_26_3e(ptr %v0, ptr %a0, i64 %a1)
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcond_3aGlobal_26_3e_2eAt_3ccompiler_2fcond_3aGlobal_26_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fast_3aDecl_26_3e_2eTruncate_3ccompiler_2fast_3aDecl_26_3e(ptr %v0, ptr %a0, i64 %a1)
declare { i32, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H30b952b85dc190b6cd5306b9d98a7749(ptr %v0, ptr %v1, ptr %a0)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLvalue_26_3e_2eClea_Hf36a88772899b36a46c039ef55a38999(ptr %v0, ptr %a0)
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
