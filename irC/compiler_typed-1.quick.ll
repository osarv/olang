source_filename = "compiler_typed-1.quick.ll"
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
%"compiler/source:Span" = type { i32, i32 }
%"compiler/typed:Try" = type { ptr, { i64, ptr }, i1, i1, i1 }
%"compiler/typed:BlockInfo" = type { i32, i32, %"compiler/source:Span" }
%"compiler/typed:Block" = type { i32, { i64, ptr } }
%"compiler/typed:Body" = type { i32, { i64, [2 x i64] }, i32, i64, %"compiler/source:Span", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i32, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" = type { { i64, ptr }, i64, i64 }
%"compiler/typed:If" = type { ptr, ptr, ptr }
%"compiler/typed:Call" = type { ptr, { i64, ptr }, i32, i1, i1 }
%"compiler/typed:Arm" = type { %"compiler/source:Span", { i64, ptr }, ptr, ptr, ptr }
%"compiler/typed:Alt" = type { ptr, { i64, ptr } }
%"compiler/typed:Landings" = type { { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64 }
%"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" = type { { i64, ptr }, { i64, ptr }, { i64, ptr }, i64, i64, i64 }
%"compiler/typed:Bind" = type { i32, ptr }
%"compiler/typed:Clause" = type { %"compiler/source:Span", { i64, ptr }, i1, ptr, { i64, ptr }, i64, i32 }
%"compiler/typed:landLoop" = type { i32, i64, { i64, ptr }, { i64, ptr }, i1, i1 }
%"compiler/typed:landState" = type { { i64, ptr }, i1 }
%"compiler/typed:Join" = type { ptr, i1, { i64, ptr } }
%"compiler/typed:Spawn" = type { { i64, ptr }, ptr, { i64, ptr }, i32 }
%"compiler/typed:TaskClause" = type { %"compiler/source:Span", { i64, ptr }, i1, ptr }
%"compiler/typed:Promote" = type { ptr, i32 }
%"compiler/typed:LastUses" = type { i64, { i64, ptr }, { i64, ptr }, i64, i64, i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"compiler/typed:Make" = type { i32, i64, { i64, ptr }, ptr, i32, i32, i1 }
%"compiler/typed:Collect" = type { ptr, ptr, i32, i32, i1 }
%"compiler/typed:Slice" = type { ptr, ptr, ptr, i32 }
%"compiler/typed:Cond" = type { ptr, ptr, ptr }
%"compiler/typed:Seq" = type { { i64, ptr }, ptr, i1 }
%"compiler/typed:Match" = type { { i64, ptr }, { i64, ptr }, ptr, i1 }
%"compiler/typed:Text" = type { { i64, ptr }, i32 }
%"compiler/typed:Capture" = type { i32, ptr }
%"compiler/typed:LocalUses" = type { ptr, ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, i32 }
%"compiler/typed:Elem" = type { ptr, ptr, i32 }
%"compiler/typed:Payload" = type { ptr, i64, i32 }
%"compiler/typed:Plan" = type { { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", { i64, ptr }, { i64, ptr }, { i64, ptr }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/typed:Versions" = type { ptr, { i64, ptr }, { i64, ptr }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1 }
%"compiler/typed:ViewWalk" = type { ptr, ptr, i64, { ptr, ptr }, { ptr, ptr } }
%"compiler/typed:Local" = type { i32, %"compiler/source:Span", i32, i32, i32, { i64, [1 x i64] }, i1, i1 }
%"compiler/typed:dropWalk" = type { ptr, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"compiler/typed:holdWalk" = type { ptr, ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/typed:printer" = type { ptr, %"std/prelude/text:StringBuilder" }
%"std/prelude/text:StringBuilder" = type { %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
define dso_local ptr @compiler_2ftyped_2eCall_2eOf(ptr %v0, ptr %v1, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca ptr
  %l7 = alloca ptr
  %l8 = alloca ptr
  %l9 = alloca i1
  %l16 = alloca ptr
  %l17 = alloca i1
  %l24 = alloca ptr
  %l25 = alloca ptr
  %l26 = alloca i1
  %l33 = alloca ptr
  %rv = alloca ptr
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = icmp eq ptr %t1, null
  br i1 %t3, label %bb1, label %bb2
bb1:
  store ptr null, ptr %rv
  br label %ret
bb2:
  br label %bb3
bb3:
  %t6 = load ptr, ptr %l0, !tbaa !29
  store ptr %t6, ptr %l8, !tbaa !29
  store i1 false, ptr %l9, !tbaa !21
  %t7 = load ptr, ptr %l8, !tbaa !29
  %t8 = icmp ne ptr %t7, null
  br i1 %t8, label %bb4, label %bb5
bb4:
  %t10 = load ptr, ptr %l8, !tbaa !29
  %t11 = load i64, ptr %t10, !range !{i64 0, i64 18}
  %t13 = icmp eq i64 %t11, 6
  store i1 %t13, ptr %l9, !tbaa !21
  br label %bb5
bb5:
  %t14 = load i1, ptr %l9, !tbaa !21
  br i1 %t14, label %bb6, label %bb7
bb6:
  %t15 = load ptr, ptr %l0, !tbaa !29
  %t17 = getelementptr { i64, [5 x i64] }, ptr %t15, i32 0, i32 1
  %t18 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t17, i32 0, i32 2
  %t19 = load ptr, ptr %t18
  store ptr %t19, ptr %l1, !tbaa !29
  br label %bb8
bb7:
  br label %bb9
bb8:
  %t21 = load ptr, ptr %l1, !tbaa !29
  store ptr %t21, ptr %l7, !tbaa !29
  br label %bb28
bb9:
  %t24 = load ptr, ptr %l0, !tbaa !29
  store ptr %t24, ptr %l16, !tbaa !29
  store i1 false, ptr %l17, !tbaa !21
  %t25 = load ptr, ptr %l16, !tbaa !29
  %t26 = icmp ne ptr %t25, null
  br i1 %t26, label %bb10, label %bb11
bb10:
  %t28 = load ptr, ptr %l16, !tbaa !29
  %t29 = load i64, ptr %t28, !range !{i64 0, i64 18}
  %t31 = icmp eq i64 %t29, 14
  store i1 %t31, ptr %l17, !tbaa !21
  br label %bb11
bb11:
  %t32 = load i1, ptr %l17, !tbaa !21
  br i1 %t32, label %bb12, label %bb13
bb12:
  %t33 = load ptr, ptr %l0, !tbaa !29
  %t35 = getelementptr { i64, [5 x i64] }, ptr %t33, i32 0, i32 1
  %t36 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t35, i32 0, i32 2
  %t37 = load ptr, ptr %t36
  store ptr %t37, ptr %l2, !tbaa !29
  br label %bb14
bb13:
  br label %bb16
bb14:
  %t39 = load ptr, ptr %l2, !tbaa !29
  %t41 = getelementptr %"compiler/typed:Try", ptr %t39, i32 0, i32 0
  %t42 = load ptr, ptr %t41, !tbaa !29
  %t44 = call ptr @compiler_2ftyped_2eCall_2eOf(ptr %v0, ptr %v1, ptr %t42)
  store ptr %t44, ptr %l24
  br label %bb15
bb15:
  %t45 = load ptr, ptr %l24, !tbaa !29
  store ptr %t45, ptr %l7, !tbaa !29
  br label %bb28
bb16:
  %t46 = load ptr, ptr %l0, !tbaa !29
  store ptr %t46, ptr %l25, !tbaa !29
  store i1 false, ptr %l26, !tbaa !21
  %t47 = load ptr, ptr %l25, !tbaa !29
  %t48 = icmp ne ptr %t47, null
  br i1 %t48, label %bb17, label %bb18
bb17:
  %t50 = load ptr, ptr %l25, !tbaa !29
  %t51 = load i64, ptr %t50, !range !{i64 0, i64 18}
  %t53 = icmp eq i64 %t51, 17
  store i1 %t53, ptr %l26, !tbaa !21
  br label %bb18
bb18:
  %t54 = load i1, ptr %l26, !tbaa !21
  br i1 %t54, label %bb19, label %bb20
bb19:
  %t55 = load ptr, ptr %l0, !tbaa !29
  %t57 = getelementptr { i64, [5 x i64] }, ptr %t55, i32 0, i32 1
  %t58 = getelementptr { %"compiler/source:Span", i64, ptr }, ptr %t57, i32 0, i32 2
  %t59 = load ptr, ptr %t58
  store ptr %t59, ptr %l3, !tbaa !29
  br label %bb21
bb20:
  br label %bb23
bb21:
  %t61 = load ptr, ptr %l3, !tbaa !29
  %t64 = call ptr @compiler_2ftyped_2eCall_2eOf(ptr %v0, ptr %v1, ptr %t61)
  store ptr %t64, ptr %l33
  br label %bb22
bb22:
  %t65 = load ptr, ptr %l33, !tbaa !29
  store ptr %t65, ptr %l7, !tbaa !29
  br label %bb28
bb23:
  br i1 true, label %bb24, label %bb25
bb24:
  br label %bb26
bb25:
  br label %bb27
bb26:
  store ptr null, ptr %l7, !tbaa !29
  br label %bb28
bb27:
  call void @__olang_check_failed(ptr @olang_loc_f6727531b73bc2ca_42cc985847dc16c6)
  unreachable
bb28:
  %t66 = load ptr, ptr %l7, !tbaa !29
  store ptr %t66, ptr %rv
  br label %ret
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

define dso_local i64 @compiler_2ftyped_2eDropFlag(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca %"compiler/source:Span"
  %l5 = alloca ptr
  %l6 = alloca %"compiler/source:Span"
  %l7 = alloca i32
  %l9 = alloca i32
  %l10 = alloca ptr
  %l11 = alloca %"compiler/source:Span"
  %l12 = alloca i32
  %l18 = alloca i1
  %l21 = alloca i64
  %l24 = alloca i64
  %l26 = alloca i1
  %l32 = alloca %"compiler/typed:BlockInfo"
  %l43 = alloca { i64, ptr }
  %l45 = alloca ptr
  %l46 = alloca i1
  %l58 = alloca ptr
  %l59 = alloca i1
  %l73 = alloca ptr
  %l74 = alloca i1
  %rv = alloca i64
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l1, !tbaa !29
  %t3 = getelementptr %"compiler/typed:Block", ptr %t1, i32 0, i32 0
  %t4 = load i32, ptr %t3, !tbaa !23
  %t6 = sext i32 %t4 to i64
  %t8 = icmp slt i64 %t6, 0
  br i1 %t8, label %bb1, label %bb2
bb1:
  store i1 true, ptr %l18, !tbaa !21
  br label %bb4
bb2:
  %t10 = load ptr, ptr %l1, !tbaa !29
  %t12 = getelementptr %"compiler/typed:Block", ptr %t10, i32 0, i32 0
  %t13 = load i32, ptr %t12, !tbaa !23
  %t15 = sext i32 %t13 to i64
  store i64 %t15, ptr %l21, !tbaa !24
  %t16 = load ptr, ptr %l0, !tbaa !29
  %t18 = getelementptr %"compiler/typed:Body", ptr %t16, i32 0, i32 8
  %t20 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aBlockInfo_3e_2eLen__Hdc799a0fe091f8e84d50200d058b631d(ptr %v0, ptr %t18)
  store i64 %t20, ptr %l24
  br label %bb3
bb3:
  %t21 = load i64, ptr %l21, !tbaa !24
  %t22 = load i64, ptr %l24, !tbaa !24
  %t23 = icmp sge i64 %t21, %t22
  store i1 %t23, ptr %l18, !tbaa !21
  br label %bb4
bb4:
  %t25 = load i1, ptr %l18, !tbaa !21
  br i1 %t25, label %bb5, label %bb6
bb5:
  store i1 true, ptr %l26, !tbaa !21
  br label %bb8
bb6:
  %t26 = load ptr, ptr %l0, !tbaa !29
  %t28 = getelementptr %"compiler/typed:Body", ptr %t26, i32 0, i32 8
  %t29 = load ptr, ptr %l1, !tbaa !29
  %t31 = getelementptr %"compiler/typed:Block", ptr %t29, i32 0, i32 0
  %t32 = load i32, ptr %t31, !tbaa !23
  %t34 = sext i32 %t32 to i64
  %t37 = call %"compiler/typed:BlockInfo" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aBlockInfo_3e_2eAt_3ccompiler_2ftyped_3aBlockInfo_3e(ptr %v0, ptr %t28, i64 %t34)
  store %"compiler/typed:BlockInfo" %t37, ptr %l32
  br label %bb7
bb7:
  %t38 = getelementptr %"compiler/typed:BlockInfo", ptr %l32, i32 0, i32 1
  %t39 = load i32, ptr %t38, !range !{i32 0, i32 10}
  %t41 = trunc i64 8 to i32
  %t42 = icmp eq i32 %t39, %t41
  %t44 = xor i1 %t42, true
  store i1 %t44, ptr %l26, !tbaa !21
  br label %bb8
bb8:
  %t46 = load i1, ptr %l26, !tbaa !21
  br i1 %t46, label %bb9, label %bb10
bb9:
  store i64 -1, ptr %rv
  br label %ret
bb10:
  br label %bb11
bb11:
  %t48 = load ptr, ptr %l1, !tbaa !29
  %t50 = getelementptr %"compiler/typed:Block", ptr %t48, i32 0, i32 1
  %t51 = load { i64, ptr }, ptr %t50, !tbaa !27
  %t53 = extractvalue { i64, ptr } %t51, 0
  %t55 = icmp ne i64 %t53, 1
  br i1 %t55, label %bb12, label %bb13
bb12:
  store i64 -1, ptr %rv
  br label %ret
bb13:
  br label %bb14
bb14:
  %t58 = load ptr, ptr %l1, !tbaa !29
  %t60 = getelementptr %"compiler/typed:Block", ptr %t58, i32 0, i32 1
  %t61 = load { i64, ptr }, ptr %t60, !tbaa !27
  store { i64, ptr } %t61, ptr %l43, !tbaa !27
  %t62 = getelementptr { i64, ptr }, ptr %l43, i32 0, i32 1
  %t63 = load ptr, ptr %t62, !tbaa !27
  %t64 = getelementptr ptr, ptr %t63, i64 0
  %t65 = load ptr, ptr %t64, !tbaa !39
  store ptr %t65, ptr %l2, !tbaa !29
  %t67 = load ptr, ptr %l2, !tbaa !29
  store ptr %t67, ptr %l45, !tbaa !29
  store i1 false, ptr %l46, !tbaa !21
  %t68 = load ptr, ptr %l45, !tbaa !29
  %t69 = icmp ne ptr %t68, null
  br i1 %t69, label %bb15, label %bb16
bb15:
  %t71 = load ptr, ptr %l45, !tbaa !29
  %t72 = load i64, ptr %t71, !range !{i64 0, i64 17}
  %t74 = icmp eq i64 %t72, 3
  store i1 %t74, ptr %l46, !tbaa !21
  br label %bb16
bb16:
  %t75 = load i1, ptr %l46, !tbaa !21
  %t76 = xor i1 %t75, true
  br i1 %t76, label %bb17, label %bb18
bb17:
  store i64 -1, ptr %rv
  br label %ret
bb18:
  br label %bb19
bb19:
  %t79 = load ptr, ptr %l2, !tbaa !29
  %t81 = getelementptr { i64, [3 x i64] }, ptr %t79, i32 0, i32 1
  %t82 = getelementptr { %"compiler/source:Span", ptr }, ptr %t81, i32 0, i32 0
  %t83 = load %"compiler/source:Span", ptr %t82
  store %"compiler/source:Span" %t83, ptr %l3
  %t85 = load ptr, ptr %l2, !tbaa !29
  %t87 = getelementptr { i64, [3 x i64] }, ptr %t85, i32 0, i32 1
  %t88 = getelementptr { %"compiler/source:Span", ptr }, ptr %t87, i32 0, i32 1
  %t89 = load ptr, ptr %t88
  %t94 = getelementptr %"compiler/typed:If", ptr %t89, i32 0, i32 0
  %t95 = load ptr, ptr %t94, !tbaa !29
  store ptr %t95, ptr %l5, !tbaa !29
  %t97 = load ptr, ptr %l5, !tbaa !29
  store ptr %t97, ptr %l58, !tbaa !29
  store i1 false, ptr %l59, !tbaa !21
  %t98 = load ptr, ptr %l58, !tbaa !29
  %t99 = icmp ne ptr %t98, null
  br i1 %t99, label %bb20, label %bb21
bb20:
  %t101 = load ptr, ptr %l58, !tbaa !29
  %t102 = load i64, ptr %t101, !range !{i64 0, i64 18}
  %t104 = icmp eq i64 %t102, 2
  store i1 %t104, ptr %l59, !tbaa !21
  br label %bb21
bb21:
  %t105 = load i1, ptr %l59, !tbaa !21
  %t106 = xor i1 %t105, true
  br i1 %t106, label %bb22, label %bb23
bb22:
  store i64 -1, ptr %rv
  br label %ret
bb23:
  br label %bb24
bb24:
  %t109 = load ptr, ptr %l5, !tbaa !29
  %t111 = getelementptr { i64, [5 x i64] }, ptr %t109, i32 0, i32 1
  %t112 = getelementptr { %"compiler/source:Span", i32, ptr, i32 }, ptr %t111, i32 0, i32 0
  %t113 = load %"compiler/source:Span", ptr %t112
  store %"compiler/source:Span" %t113, ptr %l6
  %t115 = load ptr, ptr %l5, !tbaa !29
  %t117 = getelementptr { i64, [5 x i64] }, ptr %t115, i32 0, i32 1
  %t118 = getelementptr { %"compiler/source:Span", i32, ptr, i32 }, ptr %t117, i32 0, i32 1
  %t119 = load i32, ptr %t118
  store i32 %t119, ptr %l7, !tbaa !23
  %t121 = load ptr, ptr %l5, !tbaa !29
  %t123 = getelementptr { i64, [5 x i64] }, ptr %t121, i32 0, i32 1
  %t124 = getelementptr { %"compiler/source:Span", i32, ptr, i32 }, ptr %t123, i32 0, i32 2
  %t125 = load ptr, ptr %t124
  %t127 = load ptr, ptr %l5, !tbaa !29
  %t129 = getelementptr { i64, [5 x i64] }, ptr %t127, i32 0, i32 1
  %t130 = getelementptr { %"compiler/source:Span", i32, ptr, i32 }, ptr %t129, i32 0, i32 3
  %t131 = load i32, ptr %t130
  store i32 %t131, ptr %l9, !tbaa !23
  store ptr %t125, ptr %l10, !tbaa !29
  %t135 = load ptr, ptr %l10, !tbaa !29
  store ptr %t135, ptr %l73, !tbaa !29
  store i1 false, ptr %l74, !tbaa !21
  %t136 = load ptr, ptr %l73, !tbaa !29
  %t137 = icmp ne ptr %t136, null
  br i1 %t137, label %bb25, label %bb26
bb25:
  %t139 = load ptr, ptr %l73, !tbaa !29
  %t140 = load i64, ptr %t139, !range !{i64 0, i64 8}
  %t142 = icmp eq i64 %t140, 0
  store i1 %t142, ptr %l74, !tbaa !21
  br label %bb26
bb26:
  %t143 = load i1, ptr %l74, !tbaa !21
  %t144 = xor i1 %t143, true
  br i1 %t144, label %bb27, label %bb28
bb27:
  store i64 -1, ptr %rv
  br label %ret
bb28:
  br label %bb29
bb29:
  %t147 = load ptr, ptr %l10, !tbaa !29
  %t149 = getelementptr { i64, [4 x i64] }, ptr %t147, i32 0, i32 1
  %t150 = getelementptr { %"compiler/source:Span", i32, i32 }, ptr %t149, i32 0, i32 0
  %t151 = load %"compiler/source:Span", ptr %t150
  store %"compiler/source:Span" %t151, ptr %l11
  %t153 = load ptr, ptr %l10, !tbaa !29
  %t155 = getelementptr { i64, [4 x i64] }, ptr %t153, i32 0, i32 1
  %t156 = getelementptr { %"compiler/source:Span", i32, i32 }, ptr %t155, i32 0, i32 1
  %t157 = load i32, ptr %t156
  store i32 %t157, ptr %l12, !tbaa !23
  %t159 = load ptr, ptr %l10, !tbaa !29
  %t161 = getelementptr { i64, [4 x i64] }, ptr %t159, i32 0, i32 1
  %t162 = getelementptr { %"compiler/source:Span", i32, i32 }, ptr %t161, i32 0, i32 2
  %t163 = load i32, ptr %t162
  %t167 = sext i32 %t163 to i64
  store i64 %t167, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local i64 @compiler_2ftyped_2eDropHolder(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca %"compiler/source:Span"
  %l5 = alloca %"compiler/source:Span"
  %l7 = alloca ptr
  %l8 = alloca %"compiler/source:Span"
  %l10 = alloca ptr
  %l11 = alloca %"compiler/source:Span"
  %l12 = alloca i32
  %l14 = alloca i32
  %l15 = alloca { i64, ptr }
  %l16 = alloca %"compiler/source:Span"
  %l17 = alloca i32
  %l18 = alloca i32
  %l19 = alloca i32
  %l21 = alloca %"compiler/source:Span"
  %l22 = alloca i32
  %l23 = alloca i32
  %l24 = alloca i32
  %l26 = alloca ptr
  %l27 = alloca %"compiler/source:Span"
  %l28 = alloca i32
  %l30 = alloca ptr
  %l31 = alloca %"compiler/source:Span"
  %l32 = alloca i32
  %l36 = alloca i64
  %l40 = alloca { i64, ptr }
  %l42 = alloca ptr
  %l43 = alloca i1
  %l47 = alloca i1
  %l66 = alloca { i64, ptr }
  %l68 = alloca ptr
  %l69 = alloca i1
  %l79 = alloca ptr
  %l80 = alloca i1
  %l84 = alloca i1
  %l98 = alloca i1
  %l124 = alloca { i64, ptr }
  %l126 = alloca ptr
  %l127 = alloca i1
  %l139 = alloca ptr
  %l140 = alloca i1
  %rv = alloca i64
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t2 = load ptr, ptr %l1, !tbaa !29
  %t5 = call i64 @compiler_2ftyped_2eDropFlag(ptr %v0, ptr %v1, ptr %a0, ptr %t2)
  store i64 %t5, ptr %l36
  br label %bb1
bb1:
  %t6 = load i64, ptr %l36, !tbaa !24
  %t7 = icmp slt i64 %t6, 0
  br i1 %t7, label %bb2, label %bb3
bb2:
  store i64 -1, ptr %rv
  br label %ret
bb3:
  br label %bb4
bb4:
  %t10 = load ptr, ptr %l1, !tbaa !29
  %t12 = getelementptr %"compiler/typed:Block", ptr %t10, i32 0, i32 1
  %t13 = load { i64, ptr }, ptr %t12, !tbaa !27
  store { i64, ptr } %t13, ptr %l40, !tbaa !27
  %t14 = getelementptr { i64, ptr }, ptr %l40, i32 0, i32 1
  %t15 = load ptr, ptr %t14, !tbaa !27
  %t16 = getelementptr ptr, ptr %t15, i64 0
  %t17 = load ptr, ptr %t16, !tbaa !39
  store ptr %t17, ptr %l2, !tbaa !29
  %t19 = load ptr, ptr %l2, !tbaa !29
  store ptr %t19, ptr %l42, !tbaa !29
  store i1 false, ptr %l43, !tbaa !21
  %t20 = load ptr, ptr %l42, !tbaa !29
  %t21 = icmp ne ptr %t20, null
  br i1 %t21, label %bb5, label %bb6
bb5:
  %t23 = load ptr, ptr %l42, !tbaa !29
  %t24 = load i64, ptr %t23, !range !{i64 0, i64 17}
  %t26 = icmp eq i64 %t24, 3
  store i1 %t26, ptr %l43, !tbaa !21
  br label %bb6
bb6:
  %t27 = load i1, ptr %l43, !tbaa !21
  %t28 = xor i1 %t27, true
  br i1 %t28, label %bb7, label %bb8
bb7:
  store i1 true, ptr %l47, !tbaa !21
  br label %bb9
bb8:
  %t30 = load ptr, ptr %l2, !tbaa !29
  %t32 = getelementptr { i64, [3 x i64] }, ptr %t30, i32 0, i32 1
  %t33 = getelementptr { %"compiler/source:Span", ptr }, ptr %t32, i32 0, i32 0
  %t34 = load %"compiler/source:Span", ptr %t33
  store %"compiler/source:Span" %t34, ptr %l3
  %t36 = load ptr, ptr %l2, !tbaa !29
  %t38 = getelementptr { i64, [3 x i64] }, ptr %t36, i32 0, i32 1
  %t39 = getelementptr { %"compiler/source:Span", ptr }, ptr %t38, i32 0, i32 1
  %t40 = load ptr, ptr %t39
  %t45 = getelementptr %"compiler/typed:If", ptr %t40, i32 0, i32 1
  %t46 = load ptr, ptr %t45, !tbaa !29
  %t48 = getelementptr %"compiler/typed:Block", ptr %t46, i32 0, i32 1
  %t49 = load { i64, ptr }, ptr %t48, !tbaa !27
  %t51 = extractvalue { i64, ptr } %t49, 0
  %t53 = icmp eq i64 %t51, 0
  store i1 %t53, ptr %l47, !tbaa !21
  br label %bb9
bb9:
  %t55 = load i1, ptr %l47, !tbaa !21
  br i1 %t55, label %bb10, label %bb11
bb10:
  store i64 -1, ptr %rv
  br label %ret
bb11:
  br label %bb12
bb12:
  %t57 = load ptr, ptr %l2, !tbaa !29
  %t59 = getelementptr { i64, [3 x i64] }, ptr %t57, i32 0, i32 1
  %t60 = getelementptr { %"compiler/source:Span", ptr }, ptr %t59, i32 0, i32 0
  %t61 = load %"compiler/source:Span", ptr %t60
  store %"compiler/source:Span" %t61, ptr %l5
  %t63 = load ptr, ptr %l2, !tbaa !29
  %t65 = getelementptr { i64, [3 x i64] }, ptr %t63, i32 0, i32 1
  %t66 = getelementptr { %"compiler/source:Span", ptr }, ptr %t65, i32 0, i32 1
  %t67 = load ptr, ptr %t66
  %t72 = getelementptr %"compiler/typed:If", ptr %t67, i32 0, i32 1
  %t73 = load ptr, ptr %t72, !tbaa !29
  %t75 = getelementptr %"compiler/typed:Block", ptr %t73, i32 0, i32 1
  %t76 = load { i64, ptr }, ptr %t75, !tbaa !27
  store { i64, ptr } %t76, ptr %l66, !tbaa !27
  %t77 = getelementptr { i64, ptr }, ptr %l66, i32 0, i32 1
  %t78 = load ptr, ptr %t77, !tbaa !27
  %t79 = getelementptr ptr, ptr %t78, i64 0
  %t80 = load ptr, ptr %t79, !tbaa !39
  store ptr %t80, ptr %l7, !tbaa !29
  %t82 = load ptr, ptr %l7, !tbaa !29
  store ptr %t82, ptr %l68, !tbaa !29
  store i1 false, ptr %l69, !tbaa !21
  %t83 = load ptr, ptr %l68, !tbaa !29
  %t84 = icmp ne ptr %t83, null
  br i1 %t84, label %bb13, label %bb14
bb13:
  %t86 = load ptr, ptr %l68, !tbaa !29
  %t87 = load i64, ptr %t86, !range !{i64 0, i64 17}
  %t89 = icmp eq i64 %t87, 2
  store i1 %t89, ptr %l69, !tbaa !21
  br label %bb14
bb14:
  %t90 = load i1, ptr %l69, !tbaa !21
  %t91 = xor i1 %t90, true
  br i1 %t91, label %bb15, label %bb16
bb15:
  store i64 -1, ptr %rv
  br label %ret
bb16:
  br label %bb17
bb17:
  %t94 = load ptr, ptr %l7, !tbaa !29
  %t96 = getelementptr { i64, [3 x i64] }, ptr %t94, i32 0, i32 1
  %t97 = getelementptr { %"compiler/source:Span", ptr }, ptr %t96, i32 0, i32 0
  %t98 = load %"compiler/source:Span", ptr %t97
  store %"compiler/source:Span" %t98, ptr %l8
  %t100 = load ptr, ptr %l7, !tbaa !29
  %t102 = getelementptr { i64, [3 x i64] }, ptr %t100, i32 0, i32 1
  %t103 = getelementptr { %"compiler/source:Span", ptr }, ptr %t102, i32 0, i32 1
  %t104 = load ptr, ptr %t103
  store ptr %t104, ptr %l10, !tbaa !29
  %t108 = load ptr, ptr %l10, !tbaa !29
  store ptr %t108, ptr %l79, !tbaa !29
  store i1 false, ptr %l80, !tbaa !21
  %t109 = load ptr, ptr %l79, !tbaa !29
  %t110 = icmp ne ptr %t109, null
  br i1 %t110, label %bb18, label %bb19
bb18:
  %t112 = load ptr, ptr %l79, !tbaa !29
  %t113 = load i64, ptr %t112, !range !{i64 0, i64 18}
  %t115 = icmp eq i64 %t113, 9
  store i1 %t115, ptr %l80, !tbaa !21
  br label %bb19
bb19:
  %t116 = load i1, ptr %l80, !tbaa !21
  %t117 = xor i1 %t116, true
  br i1 %t117, label %bb20, label %bb21
bb20:
  store i1 true, ptr %l84, !tbaa !21
  br label %bb22
bb21:
  %t119 = load ptr, ptr %l10, !tbaa !29
  %t121 = getelementptr { i64, [5 x i64] }, ptr %t119, i32 0, i32 1
  %t122 = getelementptr { %"compiler/source:Span", i32, i32, i32, { i64, ptr } }, ptr %t121, i32 0, i32 0
  %t123 = load %"compiler/source:Span", ptr %t122
  store %"compiler/source:Span" %t123, ptr %l11
  %t125 = load ptr, ptr %l10, !tbaa !29
  %t127 = getelementptr { i64, [5 x i64] }, ptr %t125, i32 0, i32 1
  %t128 = getelementptr { %"compiler/source:Span", i32, i32, i32, { i64, ptr } }, ptr %t127, i32 0, i32 1
  %t129 = load i32, ptr %t128
  store i32 %t129, ptr %l12, !tbaa !23
  %t131 = load ptr, ptr %l10, !tbaa !29
  %t133 = getelementptr { i64, [5 x i64] }, ptr %t131, i32 0, i32 1
  %t134 = getelementptr { %"compiler/source:Span", i32, i32, i32, { i64, ptr } }, ptr %t133, i32 0, i32 2
  %t135 = load i32, ptr %t134, !range !{i32 0, i32 52}
  %t137 = load ptr, ptr %l10, !tbaa !29
  %t139 = getelementptr { i64, [5 x i64] }, ptr %t137, i32 0, i32 1
  %t140 = getelementptr { %"compiler/source:Span", i32, i32, i32, { i64, ptr } }, ptr %t139, i32 0, i32 3
  %t141 = load i32, ptr %t140, !range !{i32 0, i32 3}
  store i32 %t141, ptr %l14
  %t143 = load ptr, ptr %l10, !tbaa !29
  %t145 = getelementptr { i64, [5 x i64] }, ptr %t143, i32 0, i32 1
  %t146 = getelementptr { %"compiler/source:Span", i32, i32, i32, { i64, ptr } }, ptr %t145, i32 0, i32 4
  %t147 = load { i64, ptr }, ptr %t146
  store { i64, ptr } %t147, ptr %l15, !tbaa !27
  %t151 = trunc i64 30 to i32
  %t152 = icmp eq i32 %t135, %t151
  %t154 = xor i1 %t152, true
  store i1 %t154, ptr %l84, !tbaa !21
  br label %bb22
bb22:
  %t156 = load i1, ptr %l84, !tbaa !21
  br i1 %t156, label %bb23, label %bb24
bb23:
  store i1 true, ptr %l98, !tbaa !21
  br label %bb25
bb24:
  %t157 = load ptr, ptr %l10, !tbaa !29
  %t159 = getelementptr { i64, [5 x i64] }, ptr %t157, i32 0, i32 1
  %t160 = getelementptr { %"compiler/source:Span", i32, i32, i32, { i64, ptr } }, ptr %t159, i32 0, i32 0
  %t161 = load %"compiler/source:Span", ptr %t160
  store %"compiler/source:Span" %t161, ptr %l16
  %t163 = load ptr, ptr %l10, !tbaa !29
  %t165 = getelementptr { i64, [5 x i64] }, ptr %t163, i32 0, i32 1
  %t166 = getelementptr { %"compiler/source:Span", i32, i32, i32, { i64, ptr } }, ptr %t165, i32 0, i32 1
  %t167 = load i32, ptr %t166
  store i32 %t167, ptr %l17, !tbaa !23
  %t169 = load ptr, ptr %l10, !tbaa !29
  %t171 = getelementptr { i64, [5 x i64] }, ptr %t169, i32 0, i32 1
  %t172 = getelementptr { %"compiler/source:Span", i32, i32, i32, { i64, ptr } }, ptr %t171, i32 0, i32 2
  %t173 = load i32, ptr %t172, !range !{i32 0, i32 52}
  store i32 %t173, ptr %l18
  %t175 = load ptr, ptr %l10, !tbaa !29
  %t177 = getelementptr { i64, [5 x i64] }, ptr %t175, i32 0, i32 1
  %t178 = getelementptr { %"compiler/source:Span", i32, i32, i32, { i64, ptr } }, ptr %t177, i32 0, i32 3
  %t179 = load i32, ptr %t178, !range !{i32 0, i32 3}
  store i32 %t179, ptr %l19
  %t181 = load ptr, ptr %l10, !tbaa !29
  %t183 = getelementptr { i64, [5 x i64] }, ptr %t181, i32 0, i32 1
  %t184 = getelementptr { %"compiler/source:Span", i32, i32, i32, { i64, ptr } }, ptr %t183, i32 0, i32 4
  %t185 = load { i64, ptr }, ptr %t184
  %t189 = extractvalue { i64, ptr } %t185, 0
  %t191 = icmp ne i64 %t189, 1
  store i1 %t191, ptr %l98, !tbaa !21
  br label %bb25
bb25:
  %t193 = load i1, ptr %l98, !tbaa !21
  br i1 %t193, label %bb26, label %bb27
bb26:
  store i64 -1, ptr %rv
  br label %ret
bb27:
  br label %bb28
bb28:
  %t195 = load ptr, ptr %l10, !tbaa !29
  %t197 = getelementptr { i64, [5 x i64] }, ptr %t195, i32 0, i32 1
  %t198 = getelementptr { %"compiler/source:Span", i32, i32, i32, { i64, ptr } }, ptr %t197, i32 0, i32 0
  %t199 = load %"compiler/source:Span", ptr %t198
  store %"compiler/source:Span" %t199, ptr %l21
  %t201 = load ptr, ptr %l10, !tbaa !29
  %t203 = getelementptr { i64, [5 x i64] }, ptr %t201, i32 0, i32 1
  %t204 = getelementptr { %"compiler/source:Span", i32, i32, i32, { i64, ptr } }, ptr %t203, i32 0, i32 1
  %t205 = load i32, ptr %t204
  store i32 %t205, ptr %l22, !tbaa !23
  %t207 = load ptr, ptr %l10, !tbaa !29
  %t209 = getelementptr { i64, [5 x i64] }, ptr %t207, i32 0, i32 1
  %t210 = getelementptr { %"compiler/source:Span", i32, i32, i32, { i64, ptr } }, ptr %t209, i32 0, i32 2
  %t211 = load i32, ptr %t210, !range !{i32 0, i32 52}
  store i32 %t211, ptr %l23
  %t213 = load ptr, ptr %l10, !tbaa !29
  %t215 = getelementptr { i64, [5 x i64] }, ptr %t213, i32 0, i32 1
  %t216 = getelementptr { %"compiler/source:Span", i32, i32, i32, { i64, ptr } }, ptr %t215, i32 0, i32 3
  %t217 = load i32, ptr %t216, !range !{i32 0, i32 3}
  store i32 %t217, ptr %l24
  %t219 = load ptr, ptr %l10, !tbaa !29
  %t221 = getelementptr { i64, [5 x i64] }, ptr %t219, i32 0, i32 1
  %t222 = getelementptr { %"compiler/source:Span", i32, i32, i32, { i64, ptr } }, ptr %t221, i32 0, i32 4
  %t223 = load { i64, ptr }, ptr %t222
  store { i64, ptr } %t223, ptr %l124, !tbaa !27
  %t227 = getelementptr { i64, ptr }, ptr %l124, i32 0, i32 1
  %t228 = load ptr, ptr %t227, !tbaa !27
  %t229 = getelementptr ptr, ptr %t228, i64 0
  %t230 = load ptr, ptr %t229, !tbaa !39
  store ptr %t230, ptr %l26, !tbaa !29
  %t232 = load ptr, ptr %l26, !tbaa !29
  store ptr %t232, ptr %l126, !tbaa !29
  store i1 false, ptr %l127, !tbaa !21
  %t233 = load ptr, ptr %l126, !tbaa !29
  %t234 = icmp ne ptr %t233, null
  br i1 %t234, label %bb29, label %bb30
bb29:
  %t236 = load ptr, ptr %l126, !tbaa !29
  %t237 = load i64, ptr %t236, !range !{i64 0, i64 18}
  %t239 = icmp eq i64 %t237, 3
  store i1 %t239, ptr %l127, !tbaa !21
  br label %bb30
bb30:
  %t240 = load i1, ptr %l127, !tbaa !21
  %t241 = xor i1 %t240, true
  br i1 %t241, label %bb31, label %bb32
bb31:
  store i64 -1, ptr %rv
  br label %ret
bb32:
  br label %bb33
bb33:
  %t244 = load ptr, ptr %l26, !tbaa !29
  %t246 = getelementptr { i64, [5 x i64] }, ptr %t244, i32 0, i32 1
  %t247 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t246, i32 0, i32 0
  %t248 = load %"compiler/source:Span", ptr %t247
  store %"compiler/source:Span" %t248, ptr %l27
  %t250 = load ptr, ptr %l26, !tbaa !29
  %t252 = getelementptr { i64, [5 x i64] }, ptr %t250, i32 0, i32 1
  %t253 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t252, i32 0, i32 1
  %t254 = load i32, ptr %t253
  store i32 %t254, ptr %l28, !tbaa !23
  %t256 = load ptr, ptr %l26, !tbaa !29
  %t258 = getelementptr { i64, [5 x i64] }, ptr %t256, i32 0, i32 1
  %t259 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t258, i32 0, i32 2
  %t260 = load ptr, ptr %t259
  store ptr %t260, ptr %l30, !tbaa !29
  %t264 = load ptr, ptr %l30, !tbaa !29
  store ptr %t264, ptr %l139, !tbaa !29
  store i1 false, ptr %l140, !tbaa !21
  %t265 = load ptr, ptr %l139, !tbaa !29
  %t266 = icmp ne ptr %t265, null
  br i1 %t266, label %bb34, label %bb35
bb34:
  %t268 = load ptr, ptr %l139, !tbaa !29
  %t269 = load i64, ptr %t268, !range !{i64 0, i64 8}
  %t271 = icmp eq i64 %t269, 0
  store i1 %t271, ptr %l140, !tbaa !21
  br label %bb35
bb35:
  %t272 = load i1, ptr %l140, !tbaa !21
  %t273 = xor i1 %t272, true
  br i1 %t273, label %bb36, label %bb37
bb36:
  store i64 -1, ptr %rv
  br label %ret
bb37:
  br label %bb38
bb38:
  %t276 = load ptr, ptr %l30, !tbaa !29
  %t278 = getelementptr { i64, [4 x i64] }, ptr %t276, i32 0, i32 1
  %t279 = getelementptr { %"compiler/source:Span", i32, i32 }, ptr %t278, i32 0, i32 0
  %t280 = load %"compiler/source:Span", ptr %t279
  store %"compiler/source:Span" %t280, ptr %l31
  %t282 = load ptr, ptr %l30, !tbaa !29
  %t284 = getelementptr { i64, [4 x i64] }, ptr %t282, i32 0, i32 1
  %t285 = getelementptr { %"compiler/source:Span", i32, i32 }, ptr %t284, i32 0, i32 1
  %t286 = load i32, ptr %t285
  store i32 %t286, ptr %l32, !tbaa !23
  %t288 = load ptr, ptr %l30, !tbaa !29
  %t290 = getelementptr { i64, [4 x i64] }, ptr %t288, i32 0, i32 1
  %t291 = getelementptr { %"compiler/source:Span", i32, i32 }, ptr %t290, i32 0, i32 2
  %t292 = load i32, ptr %t291
  %t296 = sext i32 %t292 to i64
  store i64 %t296, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local i1 @compiler_2ftyped_2eFreshViews(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1, i64 %a2, ptr %a3c, ptr %a3e, ptr %a4c, ptr %a4e) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i64
  %l4 = alloca { ptr, ptr }
  %l5 = alloca { i64, [2 x i64] }
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca i64
  %l12 = alloca ptr
  %l13 = alloca i64
  %l16 = alloca i1
  %l21 = alloca i1
  %l26 = alloca ptr
  %l28 = alloca i32
  %l29 = alloca { ptr, ptr }
  %l31 = alloca i64
  %l34 = alloca { i64, ptr }
  %l36 = alloca { i64, [2 x i64] }
  %l44 = alloca i64
  %l48 = alloca i64
  %l51 = alloca i64
  %l70 = alloca i64
  %l75 = alloca { i64, ptr }
  %l78 = alloca i1
  %l80 = alloca { i64, ptr }
  %l83 = alloca ptr
  %l86 = alloca i1
  %l92 = alloca i64
  %l95 = alloca i1
  %l100 = alloca i64
  %l103 = alloca ptr
  %l105 = alloca i32
  %l110 = alloca { i64, ptr }
  %l112 = alloca { i64, [2 x i64] }
  %l114 = alloca { i64, [2 x i64] }
  %l116 = alloca i1
  %s0 = alloca %olang.scope
  %s4 = alloca %olang.scope
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store i64 %a2, ptr %l2
  %pf3 = insertvalue { ptr, ptr } undef, ptr %a3c, 0
  %pg3 = insertvalue { ptr, ptr } %pf3, ptr %a3e, 1
  %pf4 = insertvalue { ptr, ptr } undef, ptr %a4c, 0
  %pg4 = insertvalue { ptr, ptr } %pf4, ptr %a4e, 1
  store { ptr, ptr } %pg4, ptr %l4
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load i64, ptr %l2, !tbaa !24
  %t3 = icmp sle i64 %t1, 0
  br i1 %t3, label %bb1, label %bb2
bb1:
  store i1 true, ptr %l16, !tbaa !21
  br label %bb3
bb2:
  %t5 = load i64, ptr %l2, !tbaa !24
  %t6 = load i64, ptr @G_2ecompiler_2ftyped_2eViewOther, !tbaa !24
  %t9 = and i64 %t5, %t6
  %t11 = icmp ne i64 %t9, 0
  store i1 %t11, ptr %l16, !tbaa !21
  br label %bb3
bb3:
  %t13 = load i1, ptr %l16, !tbaa !21
  br i1 %t13, label %bb4, label %bb5
bb4:
  store i1 true, ptr %l21, !tbaa !21
  br label %bb6
bb5:
  %t14 = load ptr, ptr %l1, !tbaa !29
  %t16 = getelementptr %"compiler/typed:Call", ptr %t14, i32 0, i32 2
  %t17 = load i32, ptr %t16, !tbaa !23
  %t19 = icmp slt i32 %t17, 0
  store i1 %t19, ptr %l21, !tbaa !21
  br label %bb6
bb6:
  %t21 = load i1, ptr %l21, !tbaa !21
  br i1 %t21, label %bb7, label %bb8
bb7:
  call void @__olang_scope_close(ptr %s0)
  store i1 false, ptr %rv
  br label %ret
bb8:
  br label %bb9
bb9:
  %t23 = load ptr, ptr %l0, !tbaa !29
  store ptr %t23, ptr %l26, !tbaa !29
  %t24 = load ptr, ptr %l1, !tbaa !29
  %t26 = getelementptr %"compiler/typed:Call", ptr %t24, i32 0, i32 2
  %t27 = load i32, ptr %t26, !tbaa !23
  store i32 %t27, ptr %l28, !tbaa !23
  %t28 = load { ptr, ptr }, ptr %l4
  store { ptr, ptr } %t28, ptr %l29
  %t29 = load ptr, ptr %l1, !tbaa !29
  %t31 = call i64 @compiler_2ftyped_2eCalleeBody(ptr %v1, ptr %t29)
  store i64 %t31, ptr %l31
  br label %bb10
bb10:
  %t32 = load i64, ptr %l31, !tbaa !24
  %t33 = trunc i64 %t32 to i32
  %t35 = load { ptr, ptr }, ptr %l29
  %t36 = extractvalue { ptr, ptr } %t35, 0
  %t37 = extractvalue { ptr, ptr } %t35, 1
  %t39 = call { i64, ptr } %t36(ptr %t37, ptr %s0, i32 %t33)
  store { i64, ptr } %t39, ptr %l34
  br label %bb11
bb11:
  %t40 = load { i64, ptr }, ptr %l34, !tbaa !27
  %t41 = extractvalue { i64, ptr } %t40, 0
  %t42 = extractvalue { i64, ptr } %t40, 1
  %t43 = mul i64 %t41, 8
  %t44 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t43)
  call void @llvm.memcpy.p0.p0.i64(ptr %t44, ptr %t42, i64 %t43, i1 false)
  %t45 = insertvalue { i64, ptr } undef, i64 %t41, 0
  %t46 = insertvalue { i64, ptr } %t45, ptr %t44, 1
  %t47 = load ptr, ptr %l26, !tbaa !29
  %t48 = load i32, ptr %l28, !tbaa !23
  %t50 = call { i64, [2 x i64] } @compiler_2ftyped_2eScope_2eresult(ptr %v0, ptr %s0, ptr %t47, i32 %t48, { i64, ptr } %t46)
  store { i64, [2 x i64] } %t50, ptr %l36
  br label %bb12
bb12:
  %t51 = load { i64, [2 x i64] }, ptr %l36
  store { i64, [2 x i64] } %t51, ptr %l5
  %t52 = load { i64, [2 x i64] }, ptr %l5
  %t54 = extractvalue { i64, [2 x i64] } %t52, 0
  %t55 = icmp eq i64 %t54, 0
  br i1 %t55, label %bb13, label %bb14
bb13:
  call void @__olang_scope_close(ptr %s0)
  store i1 false, ptr %rv
  br label %ret
bb14:
  br label %bb15
bb15:
  store i64 0, ptr %l6, !tbaa !24
  %t58 = load ptr, ptr %l1, !tbaa !29
  %t60 = getelementptr %"compiler/typed:Call", ptr %t58, i32 0, i32 1
  %t61 = load { i64, ptr }, ptr %t60, !tbaa !27
  %t63 = extractvalue { i64, ptr } %t61, 0
  %t64 = load i64, ptr @G_2ecompiler_2ftyped_2eViewBits, !tbaa !24
  %t67 = call i64 @std_2fprelude_2fnumber_2eI64_2eMin_3cI64_3e(i64 %t63, i64 %t64)
  store i64 %t67, ptr %l44
  br label %bb16
bb16:
  %t68 = load i64, ptr %l44, !tbaa !24
  store i64 %t68, ptr %l7, !tbaa !24
  store i64 1, ptr %l8, !tbaa !24
  %t69 = load i64, ptr %l7, !tbaa !24
  %t70 = load i64, ptr %l6, !tbaa !24
  %t73 = icmp sgt i64 %t69, %t70
  br i1 %t73, label %bb17, label %bb18
bb17:
  %t75 = load i64, ptr %l8, !tbaa !24
  %t77 = icmp sgt i64 %t75, 0
  br i1 %t77, label %bb19, label %bb20
bb18:
  store i64 0, ptr %l48, !tbaa !24
  br label %bb22
bb19:
  %t79 = load i64, ptr %l7, !tbaa !24
  %t80 = load i64, ptr %l6, !tbaa !24
  %t83 = sub i64 %t79, %t80
  %t84 = load i64, ptr %l8, !tbaa !24
  %t87 = add i64 %t83, %t84
  %t89 = sub i64 %t87, 1
  %t90 = load i64, ptr %l8, !tbaa !24
  %t93 = sdiv i64 %t89, %t90
  store i64 %t93, ptr %l51, !tbaa !24
  br label %bb21
bb20:
  store i64 0, ptr %l51, !tbaa !24
  br label %bb21
bb21:
  %t95 = load i64, ptr %l51, !tbaa !24
  store i64 %t95, ptr %l48, !tbaa !24
  br label %bb22
bb22:
  %t96 = load i64, ptr %l48, !tbaa !24
  store i64 %t96, ptr %l9, !tbaa !24
  store i64 0, ptr %l10, !tbaa !24
  br label %bb23
bb23:
  store %olang.scope zeroinitializer, ptr %s4
  %t97 = load i64, ptr %l10, !tbaa !24
  %t98 = load i64, ptr %l9, !tbaa !24
  %t101 = icmp slt i64 %t97, %t98
  %t103 = xor i1 %t101, true
  br i1 %t103, label %bb24, label %bb25
bb24:
  call void @__olang_scope_close(ptr %s4)
  br label %bb56
bb25:
  br label %bb26
bb26:
  %t105 = load i64, ptr %l6, !tbaa !24
  %t106 = load i64, ptr %l10, !tbaa !24
  %t107 = load i64, ptr %l8, !tbaa !24
  %t110 = mul i64 %t106, %t107
  %t113 = add i64 %t105, %t110
  store i64 %t113, ptr %l11, !tbaa !24
  %t115 = load i64, ptr %l2, !tbaa !24
  %t116 = load i64, ptr %l11, !tbaa !24
  store i64 %t116, ptr %l70, !tbaa !24
  %t117 = load i64, ptr %l70, !tbaa !24
  %t118 = load i64, ptr %l70, !tbaa !24
  %t119 = shl i64 1, %t118
  %t122 = and i64 %t115, %t119
  %t124 = icmp eq i64 %t122, 0
  br i1 %t124, label %bb27, label %bb28
bb27:
  call void @__olang_scope_close(ptr %s4)
  br label %bb55
bb28:
  br label %bb29
bb29:
  %t126 = load ptr, ptr %l1, !tbaa !29
  %t128 = getelementptr %"compiler/typed:Call", ptr %t126, i32 0, i32 1
  %t129 = load { i64, ptr }, ptr %t128, !tbaa !27
  store { i64, ptr } %t129, ptr %l75, !tbaa !27
  %t130 = load i64, ptr %l11, !tbaa !24
  %t132 = getelementptr { i64, ptr }, ptr %l75, i32 0, i32 1
  %t133 = load ptr, ptr %t132, !tbaa !27
  %t134 = getelementptr ptr, ptr %t133, i64 %t130
  %t135 = load ptr, ptr %t134, !tbaa !39
  %t137 = call i1 @compiler_2ftyped_2eMovedArg(ptr %v1, ptr %t135)
  store i1 %t137, ptr %l78
  br label %bb30
bb30:
  %t138 = load i1, ptr %l78, !tbaa !21
  br i1 %t138, label %bb31, label %bb32
bb31:
  call void @__olang_scope_close(ptr %s4)
  br label %bb55
bb32:
  br label %bb33
bb33:
  %t139 = load ptr, ptr %l1, !tbaa !29
  %t141 = getelementptr %"compiler/typed:Call", ptr %t139, i32 0, i32 1
  %t142 = load { i64, ptr }, ptr %t141, !tbaa !27
  store { i64, ptr } %t142, ptr %l80, !tbaa !27
  %t143 = load i64, ptr %l11, !tbaa !24
  %t145 = getelementptr { i64, ptr }, ptr %l80, i32 0, i32 1
  %t146 = load ptr, ptr %t145, !tbaa !27
  %t147 = getelementptr ptr, ptr %t146, i64 %t143
  %t148 = load ptr, ptr %t147, !tbaa !39
  %t150 = call ptr @compiler_2ftyped_2eCall_2efresh(ptr %v1, ptr %v1, ptr %t148, i64 0)
  store ptr %t150, ptr %l83
  br label %bb34
bb34:
  %t151 = load ptr, ptr %l83, !tbaa !29
  store ptr %t151, ptr %l12, !tbaa !29
  %t152 = load ptr, ptr %l12, !tbaa !29
  %t154 = icmp eq ptr %t152, null
  br i1 %t154, label %bb35, label %bb36
bb35:
  store i1 true, ptr %l86, !tbaa !21
  br label %bb37
bb36:
  %t156 = load ptr, ptr %l12, !tbaa !29
  %t158 = getelementptr %"compiler/typed:Call", ptr %t156, i32 0, i32 2
  %t159 = load i32, ptr %t158, !tbaa !23
  %t161 = icmp slt i32 %t159, 0
  store i1 %t161, ptr %l86, !tbaa !21
  br label %bb37
bb37:
  %t163 = load i1, ptr %l86, !tbaa !21
  br i1 %t163, label %bb38, label %bb39
bb38:
  call void @__olang_scope_close(ptr %s4)
  call void @__olang_scope_close(ptr %s0)
  store i1 false, ptr %rv
  br label %ret
bb39:
  br label %bb40
bb40:
  %t165 = load ptr, ptr %l12, !tbaa !29
  %t167 = call i64 @compiler_2ftyped_2eCalleeBody(ptr %v1, ptr %t165)
  store i64 %t167, ptr %l92
  br label %bb41
bb41:
  %t168 = load i64, ptr %l92, !tbaa !24
  store i64 %t168, ptr %l13, !tbaa !24
  %t169 = load i64, ptr %l13, !tbaa !24
  %t171 = icmp slt i64 %t169, 0
  br i1 %t171, label %bb42, label %bb43
bb42:
  store i1 true, ptr %l95, !tbaa !21
  br label %bb45
bb43:
  %t174 = load i64, ptr %l13, !tbaa !24
  %t176 = trunc i64 %t174 to i32
  %t179 = extractvalue { ptr, ptr } %pg3, 0
  %t180 = extractvalue { ptr, ptr } %pg3, 1
  %t182 = call i64 %t179(ptr %t180, i32 %t176)
  store i64 %t182, ptr %l100
  br label %bb44
bb44:
  %t183 = load i64, ptr %l100, !tbaa !24
  %t184 = icmp ne i64 %t183, 0
  store i1 %t184, ptr %l95, !tbaa !21
  br label %bb45
bb45:
  %t186 = load i1, ptr %l95, !tbaa !21
  br i1 %t186, label %bb46, label %bb47
bb46:
  call void @__olang_scope_close(ptr %s4)
  call void @__olang_scope_close(ptr %s0)
  store i1 false, ptr %rv
  br label %ret
bb47:
  br label %bb48
bb48:
  %t188 = load ptr, ptr %l0, !tbaa !29
  store ptr %t188, ptr %l103, !tbaa !29
  %t189 = load ptr, ptr %l12, !tbaa !29
  %t191 = getelementptr %"compiler/typed:Call", ptr %t189, i32 0, i32 2
  %t192 = load i32, ptr %t191, !tbaa !23
  store i32 %t192, ptr %l105, !tbaa !23
  %t193 = load { ptr, ptr }, ptr %l4
  %t194 = load i64, ptr %l13, !tbaa !24
  %t196 = trunc i64 %t194 to i32
  %t199 = extractvalue { ptr, ptr } %t193, 0
  %t200 = extractvalue { ptr, ptr } %t193, 1
  %t202 = call { i64, ptr } %t199(ptr %t200, ptr %s4, i32 %t196)
  store { i64, ptr } %t202, ptr %l110
  br label %bb49
bb49:
  %t203 = load { i64, ptr }, ptr %l110, !tbaa !27
  %t204 = extractvalue { i64, ptr } %t203, 0
  %t205 = extractvalue { i64, ptr } %t203, 1
  %t206 = mul i64 %t204, 8
  %t207 = call ptr @__olang_scope_alloc(ptr %s4, i64 %t206)
  call void @llvm.memcpy.p0.p0.i64(ptr %t207, ptr %t205, i64 %t206, i1 false)
  %t208 = insertvalue { i64, ptr } undef, i64 %t204, 0
  %t209 = insertvalue { i64, ptr } %t208, ptr %t207, 1
  %t210 = load ptr, ptr %l103, !tbaa !29
  %t211 = load i32, ptr %l105, !tbaa !23
  %t213 = call { i64, [2 x i64] } @compiler_2ftyped_2eScope_2eresult(ptr %v0, ptr %s4, ptr %t210, i32 %t211, { i64, ptr } %t209)
  store { i64, [2 x i64] } %t213, ptr %l112
  br label %bb50
bb50:
  %t214 = load { i64, [2 x i64] }, ptr %l5
  store { i64, [2 x i64] } %t214, ptr %l114
  %t217 = call i1 @olang_2emir_2eHelperKind_2eEqual_2ecompiler_2ftyped_3aScope(ptr %l112, ptr %l114)
  store i1 %t217, ptr %l116
  br label %bb51
bb51:
  %t218 = load i1, ptr %l116, !tbaa !21
  %t219 = xor i1 %t218, true
  br i1 %t219, label %bb52, label %bb53
bb52:
  call void @__olang_scope_close(ptr %s4)
  call void @__olang_scope_close(ptr %s0)
  store i1 false, ptr %rv
  br label %ret
bb53:
  br label %bb54
bb54:
  call void @__olang_scope_close(ptr %s4)
  br label %bb55
bb55:
  %t222 = load i64, ptr %l10, !tbaa !24
  %t224 = add i64 %t222, 1
  store i64 %t224, ptr %l10, !tbaa !24
  br label %bb23
bb56:
  call void @__olang_scope_close(ptr %s0)
  store i1 true, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i1 @compiler_2ftyped_2ePartOf(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i1
  %l2 = alloca ptr
  %l3 = alloca i1
  %l6 = alloca ptr
  %l7 = alloca i1
  %l10 = alloca ptr
  %l11 = alloca i1
  %rv = alloca i1
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1, ptr %l2, !tbaa !29
  store i1 false, ptr %l3, !tbaa !21
  %t2 = load ptr, ptr %l2, !tbaa !29
  %t3 = icmp ne ptr %t2, null
  br i1 %t3, label %bb1, label %bb2
bb1:
  %t5 = load ptr, ptr %l2, !tbaa !29
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 8}
  %t8 = icmp eq i64 %t6, 3
  store i1 %t8, ptr %l3, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l3, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  br label %bb13
bb4:
  %t10 = load ptr, ptr %l0, !tbaa !29
  store ptr %t10, ptr %l6, !tbaa !29
  store i1 false, ptr %l7, !tbaa !21
  %t11 = load ptr, ptr %l6, !tbaa !29
  %t12 = icmp ne ptr %t11, null
  br i1 %t12, label %bb5, label %bb6
bb5:
  %t14 = load ptr, ptr %l6, !tbaa !29
  %t15 = load i64, ptr %t14, !range !{i64 0, i64 8}
  %t17 = icmp eq i64 %t15, 4
  store i1 %t17, ptr %l7, !tbaa !21
  br label %bb6
bb6:
  %t18 = load i1, ptr %l7, !tbaa !21
  br i1 %t18, label %bb7, label %bb8
bb7:
  br label %bb13
bb8:
  %t19 = load ptr, ptr %l0, !tbaa !29
  store ptr %t19, ptr %l10, !tbaa !29
  store i1 false, ptr %l11, !tbaa !21
  %t20 = load ptr, ptr %l10, !tbaa !29
  %t21 = icmp ne ptr %t20, null
  br i1 %t21, label %bb9, label %bb10
bb9:
  %t23 = load ptr, ptr %l10, !tbaa !29
  %t24 = load i64, ptr %t23, !range !{i64 0, i64 8}
  %t26 = icmp eq i64 %t24, 5
  store i1 %t26, ptr %l11, !tbaa !21
  br label %bb10
bb10:
  %t27 = load i1, ptr %l11, !tbaa !21
  br i1 %t27, label %bb11, label %bb12
bb11:
  br label %bb13
bb12:
  br label %bb14
bb13:
  store i1 true, ptr %l1, !tbaa !21
  br label %bb19
bb14:
  br i1 true, label %bb15, label %bb16
bb15:
  br label %bb17
bb16:
  br label %bb18
bb17:
  store i1 false, ptr %l1, !tbaa !21
  br label %bb19
bb18:
  call void @__olang_check_failed(ptr @olang_loc_62af31c5105aaa5b_ddb95177f2bf45e7)
  unreachable
bb19:
  %t28 = load i1, ptr %l1, !tbaa !21
  store i1 %t28, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i1 @compiler_2ftyped_2ePassesRefs(i32 %a0) #0 {
entry:
  %l0 = alloca i32
  %l3 = alloca i1
  %l6 = alloca i1
  %rv = alloca i1
  store i32 %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load i32, ptr %l0, !range !{i32 0, i32 52}
  %t3 = trunc i64 20 to i32
  %t4 = icmp eq i32 %t1, %t3
  br i1 %t4, label %bb1, label %bb2
bb1:
  store i1 true, ptr %l3, !tbaa !21
  br label %bb3
bb2:
  %t6 = load i32, ptr %l0, !range !{i32 0, i32 52}
  %t8 = trunc i64 42 to i32
  %t9 = icmp eq i32 %t6, %t8
  store i1 %t9, ptr %l3, !tbaa !21
  br label %bb3
bb3:
  %t11 = load i1, ptr %l3, !tbaa !21
  br i1 %t11, label %bb4, label %bb5
bb4:
  store i1 true, ptr %l6, !tbaa !21
  br label %bb6
bb5:
  %t12 = load i32, ptr %l0, !range !{i32 0, i32 52}
  %t14 = trunc i64 43 to i32
  %t15 = icmp eq i32 %t12, %t14
  store i1 %t15, ptr %l6, !tbaa !21
  br label %bb6
bb6:
  %t17 = load i1, ptr %l6, !tbaa !21
  store i1 %t17, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i32 @compiler_2ftyped_2ecompiler_2ftyped_3aExpr_2eType(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca i32
  %l3 = alloca i32
  %l4 = alloca i32
  %l5 = alloca ptr
  %l6 = alloca i32
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
  %l120 = alloca i32
  %rv = alloca i32
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
  %t13 = getelementptr { %"compiler/source:Span", i32, i64 }, ptr %t12, i32 0, i32 1
  %t14 = load i32, ptr %t13
  store i32 %t14, ptr %l1, !tbaa !23
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
  %t28 = getelementptr { %"compiler/source:Span", i32, i64, ptr }, ptr %t27, i32 0, i32 1
  %t29 = load i32, ptr %t28
  store i32 %t29, ptr %l1, !tbaa !23
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
  %t43 = getelementptr { %"compiler/source:Span", i32, ptr, i32 }, ptr %t42, i32 0, i32 1
  %t44 = load i32, ptr %t43
  store i32 %t44, ptr %l1, !tbaa !23
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
  %t58 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t57, i32 0, i32 1
  %t59 = load i32, ptr %t58
  store i32 %t59, ptr %l1, !tbaa !23
  br label %bb17
bb16:
  br label %bb18
bb17:
  %t61 = load i32, ptr %l1, !tbaa !23
  store i32 %t61, ptr %l6, !tbaa !23
  br label %bb84
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
  %t75 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t74, i32 0, i32 1
  %t76 = load i32, ptr %t75
  store i32 %t76, ptr %l2, !tbaa !23
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
  %t90 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t89, i32 0, i32 1
  %t91 = load i32, ptr %t90
  store i32 %t91, ptr %l2, !tbaa !23
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
  %t105 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t104, i32 0, i32 1
  %t106 = load i32, ptr %t105
  store i32 %t106, ptr %l2, !tbaa !23
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
  %t120 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t119, i32 0, i32 1
  %t121 = load i32, ptr %t120
  store i32 %t121, ptr %l2, !tbaa !23
  br label %bb35
bb34:
  br label %bb36
bb35:
  %t123 = load i32, ptr %l2, !tbaa !23
  store i32 %t123, ptr %l6, !tbaa !23
  br label %bb84
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
  %t137 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t136, i32 0, i32 1
  %t138 = load i32, ptr %t137
  store i32 %t138, ptr %l3, !tbaa !23
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
  %t152 = getelementptr { %"compiler/source:Span", i32, i32, i32, { i64, ptr } }, ptr %t151, i32 0, i32 1
  %t153 = load i32, ptr %t152
  store i32 %t153, ptr %l3, !tbaa !23
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
  %t167 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t166, i32 0, i32 1
  %t168 = load i32, ptr %t167
  store i32 %t168, ptr %l3, !tbaa !23
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
  %t182 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t181, i32 0, i32 1
  %t183 = load i32, ptr %t182
  store i32 %t183, ptr %l3, !tbaa !23
  br label %bb53
bb52:
  br label %bb54
bb53:
  %t185 = load i32, ptr %l3, !tbaa !23
  store i32 %t185, ptr %l6, !tbaa !23
  br label %bb84
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
  %t199 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t198, i32 0, i32 1
  %t200 = load i32, ptr %t199
  store i32 %t200, ptr %l4, !tbaa !23
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
  %t214 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t213, i32 0, i32 1
  %t215 = load i32, ptr %t214
  store i32 %t215, ptr %l4, !tbaa !23
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
  %t229 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t228, i32 0, i32 1
  %t230 = load i32, ptr %t229
  store i32 %t230, ptr %l4, !tbaa !23
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
  %t244 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t243, i32 0, i32 1
  %t245 = load i32, ptr %t244
  store i32 %t245, ptr %l4, !tbaa !23
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
  %t259 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t258, i32 0, i32 1
  %t260 = load i32, ptr %t259
  store i32 %t260, ptr %l4, !tbaa !23
  br label %bb75
bb74:
  br label %bb76
bb75:
  %t262 = load i32, ptr %l4, !tbaa !23
  store i32 %t262, ptr %l6, !tbaa !23
  br label %bb84
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
  %t276 = getelementptr { %"compiler/source:Span", i64, ptr }, ptr %t275, i32 0, i32 2
  %t277 = load ptr, ptr %t276
  store ptr %t277, ptr %l5, !tbaa !29
  br label %bb81
bb80:
  br label %bb83
bb81:
  %t279 = load ptr, ptr %l5, !tbaa !29
  %t281 = call i32 @compiler_2ftyped_2ecompiler_2ftyped_3aExpr_2eType(ptr %v0, ptr %t279)
  store i32 %t281, ptr %l120
  br label %bb82
bb82:
  %t282 = load i32, ptr %l120, !tbaa !23
  store i32 %t282, ptr %l6, !tbaa !23
  br label %bb84
bb83:
  call void @__olang_check_failed(ptr @olang_loc_9fe0426b44bbec6b_25abfcb63d66fb57)
  unreachable
bb84:
  %t283 = load i32, ptr %l6, !tbaa !23
  store i32 %t283, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local void @compiler_2ftyped_2ecompiler_2ftyped_3aLandings_2earm(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
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
  %l9 = alloca ptr
  %l10 = alloca i64
  %l19 = alloca { i64, ptr }
  %l34 = alloca { i64, ptr }
  %l39 = alloca i64
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l1, !tbaa !29
  %t3 = getelementptr %"compiler/typed:Arm", ptr %t1, i32 0, i32 1
  %t4 = load { i64, ptr }, ptr %t3, !tbaa !27
  store { i64, ptr } %t4, ptr %l2, !tbaa !27
  store i64 0, ptr %l3, !tbaa !24
  %t6 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t8 = extractvalue { i64, ptr } %t6, 0
  store i64 %t8, ptr %l4, !tbaa !24
  br label %bb1
bb1:
  %t10 = load i64, ptr %l3, !tbaa !24
  %t11 = load i64, ptr %l4, !tbaa !24
  %t14 = icmp slt i64 %t10, %t11
  %t16 = xor i1 %t14, true
  br i1 %t16, label %bb2, label %bb3
bb2:
  br label %bb16
bb3:
  br label %bb4
bb4:
  %t18 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t18, ptr %l19, !tbaa !27
  %t19 = load i64, ptr %l3, !tbaa !24
  %t21 = getelementptr { i64, ptr }, ptr %l19, i32 0, i32 1
  %t22 = load ptr, ptr %t21, !tbaa !27
  %t23 = getelementptr ptr, ptr %t22, i64 %t19
  %t24 = load ptr, ptr %t23, !tbaa !39
  store ptr %t24, ptr %l5, !tbaa !29
  %t26 = load ptr, ptr %l0, !tbaa !29
  %t27 = load ptr, ptr %l5, !tbaa !29
  %t29 = getelementptr %"compiler/typed:Alt", ptr %t27, i32 0, i32 0
  %t30 = load ptr, ptr %t29, !tbaa !29
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aLandings_2eexpr(ptr %v0, ptr %v1, ptr %t26, ptr %t30)
  br label %bb5
bb5:
  %t34 = load ptr, ptr %l5, !tbaa !29
  %t36 = getelementptr %"compiler/typed:Alt", ptr %t34, i32 0, i32 1
  %t37 = load { i64, ptr }, ptr %t36, !tbaa !27
  store { i64, ptr } %t37, ptr %l6, !tbaa !27
  store i64 0, ptr %l7, !tbaa !24
  %t39 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t41 = extractvalue { i64, ptr } %t39, 0
  store i64 %t41, ptr %l8, !tbaa !24
  br label %bb6
bb6:
  %t43 = load i64, ptr %l7, !tbaa !24
  %t44 = load i64, ptr %l8, !tbaa !24
  %t47 = icmp slt i64 %t43, %t44
  %t49 = xor i1 %t47, true
  br i1 %t49, label %bb7, label %bb8
bb7:
  br label %bb14
bb8:
  br label %bb9
bb9:
  %t51 = load { i64, ptr }, ptr %l6, !tbaa !27
  store { i64, ptr } %t51, ptr %l34, !tbaa !27
  %t52 = load i64, ptr %l7, !tbaa !24
  %t54 = getelementptr { i64, ptr }, ptr %l34, i32 0, i32 1
  %t55 = load ptr, ptr %t54, !tbaa !27
  %t56 = getelementptr ptr, ptr %t55, i64 %t52
  %t57 = load ptr, ptr %t56, !tbaa !39
  store ptr %t57, ptr %l9, !tbaa !29
  %t59 = load ptr, ptr %l0, !tbaa !29
  %t61 = getelementptr %"compiler/typed:Landings", ptr %t59, i32 0, i32 15
  %t63 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %t61)
  store i64 %t63, ptr %l39
  br label %bb10
bb10:
  %t64 = load i64, ptr %l39, !tbaa !24
  store i64 %t64, ptr %l10, !tbaa !24
  %t65 = load ptr, ptr %l0, !tbaa !29
  %t66 = load ptr, ptr %l9, !tbaa !29
  %t68 = getelementptr %"compiler/typed:Bind", ptr %t66, i32 0, i32 1
  %t69 = load ptr, ptr %t68, !tbaa !29
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aLandings_2eexpr(ptr %v0, ptr %v1, ptr %t65, ptr %t69)
  br label %bb11
bb11:
  %t73 = load ptr, ptr %l0, !tbaa !29
  %t74 = load ptr, ptr %l9, !tbaa !29
  %t76 = getelementptr %"compiler/typed:Bind", ptr %t74, i32 0, i32 0
  %t77 = load i32, ptr %t76, !tbaa !23
  %t79 = sext i32 %t77 to i64
  %t80 = load i64, ptr %l10, !tbaa !24
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aLandings_2eholds(ptr %v0, ptr %t73, i64 %t79, i64 %t80)
  br label %bb12
bb12:
  br label %bb13
bb13:
  %t84 = load i64, ptr %l7, !tbaa !24
  %t86 = add i64 %t84, 1
  store i64 %t86, ptr %l7, !tbaa !24
  br label %bb6
bb14:
  br label %bb15
bb15:
  %t88 = load i64, ptr %l3, !tbaa !24
  %t90 = add i64 %t88, 1
  store i64 %t90, ptr %l3, !tbaa !24
  br label %bb1
bb16:
  %t92 = load ptr, ptr %l0, !tbaa !29
  %t93 = load ptr, ptr %l1, !tbaa !29
  %t95 = getelementptr %"compiler/typed:Arm", ptr %t93, i32 0, i32 2
  %t96 = load ptr, ptr %t95, !tbaa !29
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aLandings_2eexpr(ptr %v0, ptr %v1, ptr %t92, ptr %t96)
  br label %bb17
bb17:
  %t99 = load ptr, ptr %l0, !tbaa !29
  %t100 = load ptr, ptr %l1, !tbaa !29
  %t102 = getelementptr %"compiler/typed:Arm", ptr %t100, i32 0, i32 3
  %t103 = load ptr, ptr %t102, !tbaa !29
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aLandings_2eblock(ptr %v0, ptr %v1, ptr %t99, ptr %t103)
  br label %bb18
bb18:
  %t106 = load ptr, ptr %l0, !tbaa !29
  %t107 = load ptr, ptr %l1, !tbaa !29
  %t109 = getelementptr %"compiler/typed:Arm", ptr %t107, i32 0, i32 4
  %t110 = load ptr, ptr %t109, !tbaa !29
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aLandings_2eexpr(ptr %v0, ptr %v1, ptr %t106, ptr %t110)
  br label %bb19
bb19:
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2ftyped_2ecompiler_2ftyped_3aLandings_2eblock(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l1 = alloca ptr
  %l2 = alloca { i64, ptr }
  %l3 = alloca i64
  %l4 = alloca i64
  %l16 = alloca { i64, ptr }
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
  %t5 = load ptr, ptr %l1, !tbaa !29
  %t7 = getelementptr %"compiler/typed:Block", ptr %t5, i32 0, i32 1
  %t8 = load { i64, ptr }, ptr %t7, !tbaa !27
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
  br label %bb10
bb6:
  br label %bb7
bb7:
  %t22 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t22, ptr %l16, !tbaa !27
  %t23 = load i64, ptr %l3, !tbaa !24
  %t25 = getelementptr { i64, ptr }, ptr %l16, i32 0, i32 1
  %t26 = load ptr, ptr %t25, !tbaa !27
  %t27 = getelementptr ptr, ptr %t26, i64 %t23
  %t28 = load ptr, ptr %t27, !tbaa !39
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aLandings_2estmt(ptr %v0, ptr %v1, ptr %a0, ptr %t28)
  br label %bb8
bb8:
  br label %bb9
bb9:
  %t34 = load i64, ptr %l3, !tbaa !24
  %t36 = add i64 %t34, 1
  store i64 %t36, ptr %l3, !tbaa !24
  br label %bb4
bb10:
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2ftyped_2ecompiler_2ftyped_3aLandings_2eclauses(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca { i64, ptr }
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca ptr
  %l13 = alloca { i64, ptr }
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
  br label %bb8
bb3:
  br label %bb4
bb4:
  %t15 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t15, ptr %l13, !tbaa !27
  %t16 = load i64, ptr %l3, !tbaa !24
  %t18 = getelementptr { i64, ptr }, ptr %l13, i32 0, i32 1
  %t19 = load ptr, ptr %t18, !tbaa !27
  %t20 = getelementptr ptr, ptr %t19, i64 %t16
  %t21 = load ptr, ptr %t20, !tbaa !39
  store ptr %t21, ptr %l5, !tbaa !29
  %t23 = load ptr, ptr %l0, !tbaa !29
  %t24 = load ptr, ptr %l5, !tbaa !29
  %t26 = getelementptr %"compiler/typed:Clause", ptr %t24, i32 0, i32 3
  %t27 = load ptr, ptr %t26, !tbaa !29
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aLandings_2eblock(ptr %v0, ptr %v1, ptr %t23, ptr %t27)
  br label %bb5
bb5:
  %t30 = load ptr, ptr %l0, !tbaa !29
  %t31 = load ptr, ptr %l5, !tbaa !29
  %t33 = getelementptr %"compiler/typed:Clause", ptr %t31, i32 0, i32 4
  %t34 = load { i64, ptr }, ptr %t33, !tbaa !27
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aLandings_2eexprs(ptr %v0, ptr %v1, ptr %t30, { i64, ptr } %t34)
  br label %bb6
bb6:
  br label %bb7
bb7:
  %t37 = load i64, ptr %l3, !tbaa !24
  %t39 = add i64 %t37, 1
  store i64 %t39, ptr %l3, !tbaa !24
  br label %bb1
bb8:
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2ftyped_2ecompiler_2ftyped_3aLandings_2ekeptBy(ptr %v0, ptr %a0, i64 %a1) #0 {
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
  %l18 = alloca i64
  %l22 = alloca i64
  %l25 = alloca i64
  %l46 = alloca i1
  %l48 = alloca i1
  %l49 = alloca ptr
  %l53 = alloca i64
  %l54 = alloca i1
  %l59 = alloca i64
  %l63 = alloca i64
  %l66 = alloca i64
  %l87 = alloca i64
  %l88 = alloca i64
  %l92 = alloca i64
  %l94 = alloca i1
  %l98 = alloca i1
  %l100 = alloca i1
  %l103 = alloca i1
  %l109 = alloca i1
  %l111 = alloca { i64, ptr }
  %l119 = alloca ptr
  %l123 = alloca i64
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load i64, ptr %l1, !tbaa !24
  store i64 %t1, ptr %l2, !tbaa !24
  %t3 = load ptr, ptr %l0, !tbaa !29
  %t5 = getelementptr %"compiler/typed:Landings", ptr %t3, i32 0, i32 15
  %t7 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %t5)
  store i64 %t7, ptr %l18
  br label %bb1
bb1:
  %t8 = load i64, ptr %l18, !tbaa !24
  store i64 %t8, ptr %l3, !tbaa !24
  store i64 1, ptr %l4, !tbaa !24
  %t9 = load i64, ptr %l3, !tbaa !24
  %t10 = load i64, ptr %l2, !tbaa !24
  %t13 = icmp sgt i64 %t9, %t10
  br i1 %t13, label %bb2, label %bb3
bb2:
  %t15 = load i64, ptr %l4, !tbaa !24
  %t17 = icmp sgt i64 %t15, 0
  br i1 %t17, label %bb4, label %bb5
bb3:
  store i64 0, ptr %l22, !tbaa !24
  br label %bb7
bb4:
  %t19 = load i64, ptr %l3, !tbaa !24
  %t20 = load i64, ptr %l2, !tbaa !24
  %t23 = sub i64 %t19, %t20
  %t24 = load i64, ptr %l4, !tbaa !24
  %t27 = add i64 %t23, %t24
  %t29 = sub i64 %t27, 1
  %t30 = load i64, ptr %l4, !tbaa !24
  %t33 = sdiv i64 %t29, %t30
  store i64 %t33, ptr %l25, !tbaa !24
  br label %bb6
bb5:
  store i64 0, ptr %l25, !tbaa !24
  br label %bb6
bb6:
  %t35 = load i64, ptr %l25, !tbaa !24
  store i64 %t35, ptr %l22, !tbaa !24
  br label %bb7
bb7:
  %t36 = load i64, ptr %l22, !tbaa !24
  store i64 %t36, ptr %l5, !tbaa !24
  store i64 0, ptr %l6, !tbaa !24
  br label %bb8
bb8:
  %t37 = load i64, ptr %l6, !tbaa !24
  %t38 = load i64, ptr %l5, !tbaa !24
  %t41 = icmp slt i64 %t37, %t38
  %t43 = xor i1 %t41, true
  br i1 %t43, label %bb9, label %bb10
bb9:
  br label %bb56
bb10:
  br label %bb11
bb11:
  %t45 = load i64, ptr %l2, !tbaa !24
  %t46 = load i64, ptr %l6, !tbaa !24
  %t47 = load i64, ptr %l4, !tbaa !24
  %t50 = mul i64 %t46, %t47
  %t53 = add i64 %t45, %t50
  store i64 %t53, ptr %l7, !tbaa !24
  %t55 = load ptr, ptr %l0, !tbaa !29
  %t57 = getelementptr %"compiler/typed:Landings", ptr %t55, i32 0, i32 19
  %t58 = load i64, ptr %l7, !tbaa !24
  %t61 = call i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eAt_3cBool_3e(ptr %v0, ptr %t57, i64 %t58)
  store i1 %t61, ptr %l46
  br label %bb12
bb12:
  %t62 = load i1, ptr %l46, !tbaa !21
  %t63 = xor i1 %t62, true
  br i1 %t63, label %bb13, label %bb14
bb13:
  store i1 true, ptr %l48, !tbaa !21
  br label %bb17
bb14:
  %t65 = load ptr, ptr %l0, !tbaa !29
  store ptr %t65, ptr %l49, !tbaa !29
  %t66 = load ptr, ptr %l0, !tbaa !29
  %t68 = getelementptr %"compiler/typed:Landings", ptr %t66, i32 0, i32 15
  %t69 = load i64, ptr %l7, !tbaa !24
  %t72 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t68, i64 %t69)
  store i64 %t72, ptr %l53
  br label %bb15
bb15:
  %t73 = load ptr, ptr %l49, !tbaa !29
  %t74 = load i64, ptr %l53, !tbaa !24
  %t75 = call i1 @compiler_2ftyped_2ecompiler_2ftyped_3aLandings_2ewatched(ptr %v0, ptr %t73, i64 %t74)
  store i1 %t75, ptr %l54
  br label %bb16
bb16:
  %t76 = load i1, ptr %l54, !tbaa !21
  %t77 = xor i1 %t76, true
  store i1 %t77, ptr %l48, !tbaa !21
  br label %bb17
bb17:
  %t79 = load i1, ptr %l48, !tbaa !21
  br i1 %t79, label %bb18, label %bb19
bb18:
  br label %bb55
bb19:
  br label %bb20
bb20:
  %t80 = load i64, ptr %l1, !tbaa !24
  store i64 %t80, ptr %l8, !tbaa !24
  %t82 = load ptr, ptr %l0, !tbaa !29
  %t84 = getelementptr %"compiler/typed:Landings", ptr %t82, i32 0, i32 15
  %t86 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %t84)
  store i64 %t86, ptr %l59
  br label %bb21
bb21:
  %t87 = load i64, ptr %l59, !tbaa !24
  store i64 %t87, ptr %l9, !tbaa !24
  store i64 1, ptr %l10, !tbaa !24
  %t88 = load i64, ptr %l9, !tbaa !24
  %t89 = load i64, ptr %l8, !tbaa !24
  %t92 = icmp sgt i64 %t88, %t89
  br i1 %t92, label %bb22, label %bb23
bb22:
  %t94 = load i64, ptr %l10, !tbaa !24
  %t96 = icmp sgt i64 %t94, 0
  br i1 %t96, label %bb24, label %bb25
bb23:
  store i64 0, ptr %l63, !tbaa !24
  br label %bb27
bb24:
  %t98 = load i64, ptr %l9, !tbaa !24
  %t99 = load i64, ptr %l8, !tbaa !24
  %t102 = sub i64 %t98, %t99
  %t103 = load i64, ptr %l10, !tbaa !24
  %t106 = add i64 %t102, %t103
  %t108 = sub i64 %t106, 1
  %t109 = load i64, ptr %l10, !tbaa !24
  %t112 = sdiv i64 %t108, %t109
  store i64 %t112, ptr %l66, !tbaa !24
  br label %bb26
bb25:
  store i64 0, ptr %l66, !tbaa !24
  br label %bb26
bb26:
  %t114 = load i64, ptr %l66, !tbaa !24
  store i64 %t114, ptr %l63, !tbaa !24
  br label %bb27
bb27:
  %t115 = load i64, ptr %l63, !tbaa !24
  store i64 %t115, ptr %l11, !tbaa !24
  store i64 0, ptr %l12, !tbaa !24
  br label %bb28
bb28:
  %t116 = load i64, ptr %l12, !tbaa !24
  %t117 = load i64, ptr %l11, !tbaa !24
  %t120 = icmp slt i64 %t116, %t117
  %t122 = xor i1 %t120, true
  br i1 %t122, label %bb29, label %bb30
bb29:
  br label %bb54
bb30:
  br label %bb31
bb31:
  %t124 = load i64, ptr %l8, !tbaa !24
  %t125 = load i64, ptr %l12, !tbaa !24
  %t126 = load i64, ptr %l10, !tbaa !24
  %t129 = mul i64 %t125, %t126
  %t132 = add i64 %t124, %t129
  store i64 %t132, ptr %l13, !tbaa !24
  %t134 = load ptr, ptr %l0, !tbaa !29
  %t136 = getelementptr %"compiler/typed:Landings", ptr %t134, i32 0, i32 15
  %t137 = load i64, ptr %l13, !tbaa !24
  %t140 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t136, i64 %t137)
  store i64 %t140, ptr %l87
  br label %bb32
bb32:
  %t141 = load i64, ptr %l87, !tbaa !24
  store i64 %t141, ptr %l14, !tbaa !24
  %t142 = load i64, ptr %l14, !tbaa !24
  store i64 %t142, ptr %l88, !tbaa !24
  %t143 = load ptr, ptr %l0, !tbaa !29
  %t145 = getelementptr %"compiler/typed:Landings", ptr %t143, i32 0, i32 15
  %t146 = load i64, ptr %l7, !tbaa !24
  %t149 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t145, i64 %t146)
  store i64 %t149, ptr %l92
  br label %bb33
bb33:
  %t150 = load i64, ptr %l88, !tbaa !24
  %t151 = load i64, ptr %l92, !tbaa !24
  %t152 = icmp eq i64 %t150, %t151
  br i1 %t152, label %bb34, label %bb35
bb34:
  store i1 true, ptr %l94, !tbaa !21
  br label %bb37
bb35:
  %t154 = load ptr, ptr %l0, !tbaa !29
  %t156 = getelementptr %"compiler/typed:Landings", ptr %t154, i32 0, i32 18
  %t157 = load i64, ptr %l13, !tbaa !24
  %t160 = call i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eAt_3cBool_3e(ptr %v0, ptr %t156, i64 %t157)
  store i1 %t160, ptr %l98
  br label %bb36
bb36:
  %t161 = load i1, ptr %l98, !tbaa !21
  %t162 = xor i1 %t161, true
  store i1 %t162, ptr %l94, !tbaa !21
  br label %bb37
bb37:
  %t164 = load i1, ptr %l94, !tbaa !21
  br i1 %t164, label %bb38, label %bb39
bb38:
  store i1 true, ptr %l100, !tbaa !21
  br label %bb40
bb39:
  %t165 = load i64, ptr %l14, !tbaa !24
  %t167 = icmp slt i64 %t165, 0
  store i1 %t167, ptr %l100, !tbaa !21
  br label %bb40
bb40:
  %t169 = load i1, ptr %l100, !tbaa !21
  br i1 %t169, label %bb41, label %bb42
bb41:
  store i1 true, ptr %l103, !tbaa !21
  br label %bb43
bb42:
  %t170 = load i64, ptr %l14, !tbaa !24
  %t171 = load ptr, ptr %l0, !tbaa !29
  %t173 = getelementptr %"compiler/typed:Landings", ptr %t171, i32 0, i32 2
  %t174 = load { i64, ptr }, ptr %t173, !tbaa !27
  %t176 = extractvalue { i64, ptr } %t174, 0
  %t179 = icmp sge i64 %t170, %t176
  store i1 %t179, ptr %l103, !tbaa !21
  br label %bb43
bb43:
  %t181 = load i1, ptr %l103, !tbaa !21
  br i1 %t181, label %bb44, label %bb45
bb44:
  store i1 true, ptr %l109, !tbaa !21
  br label %bb46
bb45:
  %t182 = load ptr, ptr %l0, !tbaa !29
  %t184 = getelementptr %"compiler/typed:Landings", ptr %t182, i32 0, i32 2
  %t185 = load { i64, ptr }, ptr %t184, !tbaa !27
  store { i64, ptr } %t185, ptr %l111, !tbaa !27
  %t186 = load i64, ptr %l14, !tbaa !24
  %t188 = getelementptr { i64, ptr }, ptr %l111, i32 0, i32 1
  %t189 = load ptr, ptr %t188, !tbaa !27
  %t190 = getelementptr i1, ptr %t189, i64 %t186
  %t191 = load i1, ptr %t190, !tbaa !31
  %t193 = xor i1 %t191, true
  store i1 %t193, ptr %l109, !tbaa !21
  br label %bb46
bb46:
  %t195 = load i1, ptr %l109, !tbaa !21
  br i1 %t195, label %bb47, label %bb48
bb47:
  br label %bb53
bb48:
  br label %bb49
bb49:
  %t196 = load ptr, ptr %l0, !tbaa !29
  %t198 = getelementptr %"compiler/typed:Landings", ptr %t196, i32 0, i32 21
  %t199 = load i64, ptr %l14, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %t198, i64 %t199)
  br label %bb50
bb50:
  %t202 = load ptr, ptr %l0, !tbaa !29
  %t204 = getelementptr %"compiler/typed:Landings", ptr %t202, i32 0, i32 22
  store ptr %t204, ptr %l119, !tbaa !29
  %t205 = load ptr, ptr %l0, !tbaa !29
  %t207 = getelementptr %"compiler/typed:Landings", ptr %t205, i32 0, i32 15
  %t208 = load i64, ptr %l7, !tbaa !24
  %t211 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t207, i64 %t208)
  store i64 %t211, ptr %l123
  br label %bb51
bb51:
  %t212 = load ptr, ptr %l119, !tbaa !29
  %t213 = load i64, ptr %l123, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %t212, i64 %t213)
  br label %bb52
bb52:
  br label %bb53
bb53:
  %t214 = load i64, ptr %l12, !tbaa !24
  %t216 = add i64 %t214, 1
  store i64 %t216, ptr %l12, !tbaa !24
  br label %bb28
bb54:
  br label %bb55
bb55:
  %t218 = load i64, ptr %l6, !tbaa !24
  %t220 = add i64 %t218, 1
  store i64 %t220, ptr %l6, !tbaa !24
  br label %bb8
bb56:
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2ftyped_2ecompiler_2ftyped_3aLandings_2eloop(ptr %v0, ptr %v1, ptr %v2, ptr %a0, i32 %a1, ptr %a2, ptr %a3) #0 {
entry:
  %l0 = alloca ptr
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca %"compiler/typed:landLoop"
  %l11 = alloca i64
  %l12 = alloca i64
  %l13 = alloca i64
  %l14 = alloca i64
  %l15 = alloca i64
  %l16 = alloca i64
  %l17 = alloca %"compiler/typed:landLoop"
  %l18 = alloca i64
  %l19 = alloca i64
  %l20 = alloca i64
  %l21 = alloca i64
  %l22 = alloca i64
  %l23 = alloca i64
  %l25 = alloca ptr
  %l30 = alloca %"compiler/typed:landLoop"
  %l34 = alloca i64
  %l37 = alloca i64
  %l59 = alloca ptr
  %l62 = alloca i64
  %l64 = alloca %"compiler/typed:landLoop"
  %l74 = alloca i64
  %l77 = alloca i64
  %l96 = alloca { i64, ptr }
  %l98 = alloca { i64, ptr }
  %l113 = alloca %"compiler/typed:landLoop"
  %l116 = alloca %"compiler/typed:landLoop"
  %l117 = alloca i32
  %l127 = alloca i64
  %l130 = alloca i64
  %l149 = alloca { i64, ptr }
  %l151 = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/typed:Landings", ptr %t1, i32 0, i32 8
  store ptr %t3, ptr %l25, !tbaa !29
  %t5 = load ptr, ptr %l0, !tbaa !29
  %t7 = getelementptr %"compiler/typed:Landings", ptr %t5, i32 0, i32 6
  %t8 = load { i64, ptr }, ptr %t7, !tbaa !27
  %t10 = extractvalue { i64, ptr } %t8, 0
  %t13 = call %"compiler/typed:landLoop" @compiler_2ftyped_3alandLoop_2ector(ptr %v0, i32 %a1, i64 %t10)
  store %"compiler/typed:landLoop" %t13, ptr %l30
  br label %bb1
bb1:
  %t14 = load ptr, ptr %l25, !tbaa !29
  %t15 = load %"compiler/typed:landLoop", ptr %l30
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3alandLoop_3e_2ePush_3ccompiler_2ftyped_3alandLoop_3e(ptr %v0, ptr %v0, ptr %t14, %"compiler/typed:landLoop" %t15)
  br label %bb2
bb2:
  store i64 0, ptr %l4, !tbaa !24
  store i64 2, ptr %l5, !tbaa !24
  store i64 1, ptr %l6, !tbaa !24
  %t16 = load i64, ptr %l5, !tbaa !24
  %t17 = load i64, ptr %l4, !tbaa !24
  %t20 = icmp sgt i64 %t16, %t17
  br i1 %t20, label %bb3, label %bb4
bb3:
  %t22 = load i64, ptr %l6, !tbaa !24
  %t24 = icmp sgt i64 %t22, 0
  br i1 %t24, label %bb5, label %bb6
bb4:
  store i64 0, ptr %l34, !tbaa !24
  br label %bb8
bb5:
  %t26 = load i64, ptr %l5, !tbaa !24
  %t27 = load i64, ptr %l4, !tbaa !24
  %t30 = sub i64 %t26, %t27
  %t31 = load i64, ptr %l6, !tbaa !24
  %t34 = add i64 %t30, %t31
  %t36 = sub i64 %t34, 1
  %t37 = load i64, ptr %l6, !tbaa !24
  %t40 = sdiv i64 %t36, %t37
  store i64 %t40, ptr %l37, !tbaa !24
  br label %bb7
bb6:
  store i64 0, ptr %l37, !tbaa !24
  br label %bb7
bb7:
  %t42 = load i64, ptr %l37, !tbaa !24
  store i64 %t42, ptr %l34, !tbaa !24
  br label %bb8
bb8:
  %t43 = load i64, ptr %l34, !tbaa !24
  store i64 %t43, ptr %l7, !tbaa !24
  store i64 0, ptr %l8, !tbaa !24
  br label %bb9
bb9:
  %t44 = load i64, ptr %l8, !tbaa !24
  %t45 = load i64, ptr %l7, !tbaa !24
  %t48 = icmp slt i64 %t44, %t45
  %t50 = xor i1 %t48, true
  br i1 %t50, label %bb10, label %bb11
bb10:
  br label %bb40
bb11:
  br label %bb12
bb12:
  %t52 = load i64, ptr %l4, !tbaa !24
  %t53 = load i64, ptr %l8, !tbaa !24
  %t54 = load i64, ptr %l6, !tbaa !24
  %t57 = mul i64 %t53, %t54
  %t60 = add i64 %t52, %t57
  store i64 %t60, ptr %l9, !tbaa !24
  %t62 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aLandings_2eblock(ptr %v0, ptr %v1, ptr %t62, ptr %a2)
  br label %bb13
bb13:
  %t67 = load ptr, ptr %l0, !tbaa !29
  %t69 = getelementptr %"compiler/typed:Landings", ptr %t67, i32 0, i32 8
  store ptr %t69, ptr %l59, !tbaa !29
  %t70 = load ptr, ptr %l0, !tbaa !29
  %t72 = getelementptr %"compiler/typed:Landings", ptr %t70, i32 0, i32 8
  %t74 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3alandLoop_3e_2eLen_3ccompiler_2ftyped_3alandLoop_3e(ptr %v0, ptr %t72)
  store i64 %t74, ptr %l62
  br label %bb14
bb14:
  %t75 = load i64, ptr %l62, !tbaa !24
  %t76 = sub i64 %t75, 1
  %t77 = load ptr, ptr %l59, !tbaa !29
  %t79 = call %"compiler/typed:landLoop" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3alandLoop_3e_2eAt_3ccompiler_2ftyped_3alandLoop_3e(ptr %v0, ptr %v0, ptr %t77, i64 %t76)
  store %"compiler/typed:landLoop" %t79, ptr %l64
  br label %bb15
bb15:
  %t80 = load %"compiler/typed:landLoop", ptr %l64
  store %"compiler/typed:landLoop" %t80, ptr %l10
  %t81 = getelementptr %"compiler/typed:landLoop", ptr %l10, i32 0, i32 5
  %t82 = load i1, ptr %t81, !tbaa !21
  br i1 %t82, label %bb16, label %bb17
bb16:
  %t84 = load ptr, ptr %l0, !tbaa !29
  %t86 = getelementptr %"compiler/typed:Landings", ptr %t84, i32 0, i32 7
  %t87 = load i1, ptr %t86, !tbaa !21
  br i1 %t87, label %bb18, label %bb19
bb17:
  br label %bb34
bb18:
  store i64 0, ptr %l11, !tbaa !24
  %t89 = load ptr, ptr %l0, !tbaa !29
  %t91 = getelementptr %"compiler/typed:Landings", ptr %t89, i32 0, i32 6
  %t92 = load { i64, ptr }, ptr %t91, !tbaa !27
  %t94 = extractvalue { i64, ptr } %t92, 0
  store i64 %t94, ptr %l12, !tbaa !24
  store i64 1, ptr %l13, !tbaa !24
  %t96 = load i64, ptr %l12, !tbaa !24
  %t97 = load i64, ptr %l11, !tbaa !24
  %t100 = icmp sgt i64 %t96, %t97
  br i1 %t100, label %bb20, label %bb21
bb19:
  %t102 = load ptr, ptr %l0, !tbaa !29
  %t104 = getelementptr %"compiler/typed:Landings", ptr %t102, i32 0, i32 6
  %t105 = load { i64, ptr }, ptr %t104, !tbaa !27
  %t106 = getelementptr %"compiler/typed:landLoop", ptr %l10, i32 0, i32 3
  %t107 = load { i64, ptr }, ptr %t106, !tbaa !27
  call void @compiler_2ftyped_2eorInto(ptr %v0, ptr %v0, { i64, ptr } %t105, { i64, ptr } %t107)
  br label %bb32
bb20:
  %t110 = load i64, ptr %l13, !tbaa !24
  %t112 = icmp sgt i64 %t110, 0
  br i1 %t112, label %bb22, label %bb23
bb21:
  store i64 0, ptr %l74, !tbaa !24
  br label %bb25
bb22:
  %t114 = load i64, ptr %l12, !tbaa !24
  %t115 = load i64, ptr %l11, !tbaa !24
  %t118 = sub i64 %t114, %t115
  %t119 = load i64, ptr %l13, !tbaa !24
  %t122 = add i64 %t118, %t119
  %t124 = sub i64 %t122, 1
  %t125 = load i64, ptr %l13, !tbaa !24
  %t128 = sdiv i64 %t124, %t125
  store i64 %t128, ptr %l77, !tbaa !24
  br label %bb24
bb23:
  store i64 0, ptr %l77, !tbaa !24
  br label %bb24
bb24:
  %t130 = load i64, ptr %l77, !tbaa !24
  store i64 %t130, ptr %l74, !tbaa !24
  br label %bb25
bb25:
  %t131 = load i64, ptr %l74, !tbaa !24
  store i64 %t131, ptr %l14, !tbaa !24
  store i64 0, ptr %l15, !tbaa !24
  br label %bb26
bb26:
  %t132 = load i64, ptr %l15, !tbaa !24
  %t133 = load i64, ptr %l14, !tbaa !24
  %t136 = icmp slt i64 %t132, %t133
  %t138 = xor i1 %t136, true
  br i1 %t138, label %bb27, label %bb28
bb27:
  br label %bb31
bb28:
  br label %bb29
bb29:
  %t140 = load i64, ptr %l11, !tbaa !24
  %t141 = load i64, ptr %l15, !tbaa !24
  %t142 = load i64, ptr %l13, !tbaa !24
  %t145 = mul i64 %t141, %t142
  %t148 = add i64 %t140, %t145
  store i64 %t148, ptr %l16, !tbaa !24
  %t150 = load ptr, ptr %l0, !tbaa !29
  %t152 = getelementptr %"compiler/typed:Landings", ptr %t150, i32 0, i32 6
  %t153 = load { i64, ptr }, ptr %t152, !tbaa !27
  store { i64, ptr } %t153, ptr %l96, !tbaa !27
  %t154 = load i64, ptr %l16, !tbaa !24
  %t155 = getelementptr %"compiler/typed:landLoop", ptr %l10, i32 0, i32 3
  %t156 = load { i64, ptr }, ptr %t155, !tbaa !27
  store { i64, ptr } %t156, ptr %l98, !tbaa !27
  %t157 = load i64, ptr %l16, !tbaa !24
  %t159 = getelementptr { i64, ptr }, ptr %l98, i32 0, i32 1
  %t160 = load ptr, ptr %t159, !tbaa !27
  %t161 = getelementptr i1, ptr %t160, i64 %t157
  %t162 = load i1, ptr %t161, !tbaa !31
  %t165 = getelementptr { i64, ptr }, ptr %l96, i32 0, i32 1
  %t166 = load ptr, ptr %t165, !tbaa !27
  %t167 = getelementptr i1, ptr %t166, i64 %t154
  store i1 %t162, ptr %t167, !tbaa !31
  br label %bb30
bb30:
  %t168 = load i64, ptr %l15, !tbaa !24
  %t170 = add i64 %t168, 1
  store i64 %t170, ptr %l15, !tbaa !24
  br label %bb26
bb31:
  %t172 = load ptr, ptr %l0, !tbaa !29
  %t174 = getelementptr %"compiler/typed:Landings", ptr %t172, i32 0, i32 7
  store i1 false, ptr %t174, !tbaa !21
  br label %bb33
bb32:
  br label %bb33
bb33:
  br label %bb34
bb34:
  %t175 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aLandings_2eblock(ptr %v0, ptr %v2, ptr %t175, ptr %a3)
  br label %bb35
bb35:
  %t179 = load i64, ptr %l9, !tbaa !24
  %t181 = icmp eq i64 %t179, 1
  br i1 %t181, label %bb36, label %bb37
bb36:
  br label %bb40
bb37:
  br label %bb38
bb38:
  br label %bb39
bb39:
  %t183 = load i64, ptr %l8, !tbaa !24
  %t185 = add i64 %t183, 1
  store i64 %t185, ptr %l8, !tbaa !24
  br label %bb9
bb40:
  %t187 = load ptr, ptr %l0, !tbaa !29
  %t189 = getelementptr %"compiler/typed:Landings", ptr %t187, i32 0, i32 8
  %t191 = call { i32, %"compiler/typed:landLoop" } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3alandLoop_3e_2ePop_3ccompiler_2ftyped_3alandLoop_3e(ptr %v0, ptr %v0, ptr %t189)
  %t192 = extractvalue { i32, %"compiler/typed:landLoop" } %t191, 1
  %t193 = extractvalue { i32, %"compiler/typed:landLoop" } %t191, 0
  store i32 %t193, ptr %l117
  %t194 = icmp ne i32 %t193, 0
  br i1 %t194, label %bb42, label %ok.195, !prof !99
ok.195:
  store %"compiler/typed:landLoop" %t192, ptr %l116
  br label %bb41
bb41:
  %t196 = load %"compiler/typed:landLoop", ptr %l116
  store %"compiler/typed:landLoop" %t196, ptr %l113
  br label %bb44
bb42:
  br label %bb43
bb43:
  br label %ret
bb44:
  %t197 = load %"compiler/typed:landLoop", ptr %l113
  store %"compiler/typed:landLoop" %t197, ptr %l17
  %t198 = getelementptr %"compiler/typed:landLoop", ptr %l17, i32 0, i32 4
  %t199 = load i1, ptr %t198, !tbaa !21
  %t201 = xor i1 %t199, true
  br i1 %t201, label %bb45, label %bb46
bb45:
  %t203 = load ptr, ptr %l0, !tbaa !29
  %t205 = getelementptr %"compiler/typed:Landings", ptr %t203, i32 0, i32 7
  store i1 true, ptr %t205, !tbaa !21
  br label %ret
bb46:
  br label %bb47
bb47:
  store i64 0, ptr %l18, !tbaa !24
  %t206 = load ptr, ptr %l0, !tbaa !29
  %t208 = getelementptr %"compiler/typed:Landings", ptr %t206, i32 0, i32 6
  %t209 = load { i64, ptr }, ptr %t208, !tbaa !27
  %t211 = extractvalue { i64, ptr } %t209, 0
  store i64 %t211, ptr %l19, !tbaa !24
  store i64 1, ptr %l20, !tbaa !24
  %t213 = load i64, ptr %l19, !tbaa !24
  %t214 = load i64, ptr %l18, !tbaa !24
  %t217 = icmp sgt i64 %t213, %t214
  br i1 %t217, label %bb48, label %bb49
bb48:
  %t219 = load i64, ptr %l20, !tbaa !24
  %t221 = icmp sgt i64 %t219, 0
  br i1 %t221, label %bb50, label %bb51
bb49:
  store i64 0, ptr %l127, !tbaa !24
  br label %bb53
bb50:
  %t223 = load i64, ptr %l19, !tbaa !24
  %t224 = load i64, ptr %l18, !tbaa !24
  %t227 = sub i64 %t223, %t224
  %t228 = load i64, ptr %l20, !tbaa !24
  %t231 = add i64 %t227, %t228
  %t233 = sub i64 %t231, 1
  %t234 = load i64, ptr %l20, !tbaa !24
  %t237 = sdiv i64 %t233, %t234
  store i64 %t237, ptr %l130, !tbaa !24
  br label %bb52
bb51:
  store i64 0, ptr %l130, !tbaa !24
  br label %bb52
bb52:
  %t239 = load i64, ptr %l130, !tbaa !24
  store i64 %t239, ptr %l127, !tbaa !24
  br label %bb53
bb53:
  %t240 = load i64, ptr %l127, !tbaa !24
  store i64 %t240, ptr %l21, !tbaa !24
  store i64 0, ptr %l22, !tbaa !24
  br label %bb54
bb54:
  %t241 = load i64, ptr %l22, !tbaa !24
  %t242 = load i64, ptr %l21, !tbaa !24
  %t245 = icmp slt i64 %t241, %t242
  %t247 = xor i1 %t245, true
  br i1 %t247, label %bb55, label %bb56
bb55:
  br label %bb59
bb56:
  br label %bb57
bb57:
  %t249 = load i64, ptr %l18, !tbaa !24
  %t250 = load i64, ptr %l22, !tbaa !24
  %t251 = load i64, ptr %l20, !tbaa !24
  %t254 = mul i64 %t250, %t251
  %t257 = add i64 %t249, %t254
  store i64 %t257, ptr %l23, !tbaa !24
  %t259 = load ptr, ptr %l0, !tbaa !29
  %t261 = getelementptr %"compiler/typed:Landings", ptr %t259, i32 0, i32 6
  %t262 = load { i64, ptr }, ptr %t261, !tbaa !27
  store { i64, ptr } %t262, ptr %l149, !tbaa !27
  %t263 = load i64, ptr %l23, !tbaa !24
  %t264 = getelementptr %"compiler/typed:landLoop", ptr %l17, i32 0, i32 2
  %t265 = load { i64, ptr }, ptr %t264, !tbaa !27
  store { i64, ptr } %t265, ptr %l151, !tbaa !27
  %t266 = load i64, ptr %l23, !tbaa !24
  %t268 = getelementptr { i64, ptr }, ptr %l151, i32 0, i32 1
  %t269 = load ptr, ptr %t268, !tbaa !27
  %t270 = getelementptr i1, ptr %t269, i64 %t266
  %t271 = load i1, ptr %t270, !tbaa !31
  %t274 = getelementptr { i64, ptr }, ptr %l149, i32 0, i32 1
  %t275 = load ptr, ptr %t274, !tbaa !27
  %t276 = getelementptr i1, ptr %t275, i64 %t263
  store i1 %t271, ptr %t276, !tbaa !31
  br label %bb58
bb58:
  %t277 = load i64, ptr %l22, !tbaa !24
  %t279 = add i64 %t277, 1
  store i64 %t279, ptr %l22, !tbaa !24
  br label %bb54
bb59:
  %t281 = load ptr, ptr %l0, !tbaa !29
  %t283 = getelementptr %"compiler/typed:Landings", ptr %t281, i32 0, i32 7
  store i1 false, ptr %t283, !tbaa !21
  br label %ret
ret:
  ret void
}

define dso_local i1 @compiler_2ftyped_2ecompiler_2ftyped_3aLandings_2ereadIn(ptr %v0, ptr %a0, i64 %a1, i64 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l12 = alloca i64
  %l16 = alloca i64
  %l19 = alloca i64
  %l40 = alloca i1
  %l41 = alloca i1
  %l45 = alloca i64
  %l47 = alloca { i64, ptr }
  %l51 = alloca i1
  %l55 = alloca i64
  %l57 = alloca { i64, ptr }
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store i64 %a2, ptr %l3, !tbaa !24
  %t3 = load ptr, ptr %l0, !tbaa !29
  %t5 = getelementptr %"compiler/typed:Landings", ptr %t3, i32 0, i32 15
  %t7 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %t5)
  store i64 %t7, ptr %l12
  br label %bb1
bb1:
  %t8 = load i64, ptr %l12, !tbaa !24
  store i64 %t8, ptr %l4, !tbaa !24
  store i64 1, ptr %l5, !tbaa !24
  %t9 = load i64, ptr %l4, !tbaa !24
  %t10 = load i64, ptr %l3, !tbaa !24
  %t13 = icmp sgt i64 %t9, %t10
  br i1 %t13, label %bb2, label %bb3
bb2:
  %t15 = load i64, ptr %l5, !tbaa !24
  %t17 = icmp sgt i64 %t15, 0
  br i1 %t17, label %bb4, label %bb5
bb3:
  store i64 0, ptr %l16, !tbaa !24
  br label %bb7
bb4:
  %t19 = load i64, ptr %l4, !tbaa !24
  %t20 = load i64, ptr %l3, !tbaa !24
  %t23 = sub i64 %t19, %t20
  %t24 = load i64, ptr %l5, !tbaa !24
  %t27 = add i64 %t23, %t24
  %t29 = sub i64 %t27, 1
  %t30 = load i64, ptr %l5, !tbaa !24
  %t33 = sdiv i64 %t29, %t30
  store i64 %t33, ptr %l19, !tbaa !24
  br label %bb6
bb5:
  store i64 0, ptr %l19, !tbaa !24
  br label %bb6
bb6:
  %t35 = load i64, ptr %l19, !tbaa !24
  store i64 %t35, ptr %l16, !tbaa !24
  br label %bb7
bb7:
  %t36 = load i64, ptr %l16, !tbaa !24
  store i64 %t36, ptr %l6, !tbaa !24
  store i64 0, ptr %l7, !tbaa !24
  br label %bb8
bb8:
  %t37 = load i64, ptr %l7, !tbaa !24
  %t38 = load i64, ptr %l6, !tbaa !24
  %t41 = icmp slt i64 %t37, %t38
  %t43 = xor i1 %t41, true
  br i1 %t43, label %bb9, label %bb10
bb9:
  br label %bb25
bb10:
  br label %bb11
bb11:
  %t45 = load i64, ptr %l3, !tbaa !24
  %t46 = load i64, ptr %l7, !tbaa !24
  %t47 = load i64, ptr %l5, !tbaa !24
  %t50 = mul i64 %t46, %t47
  %t53 = add i64 %t45, %t50
  store i64 %t53, ptr %l8, !tbaa !24
  %t55 = load ptr, ptr %l0, !tbaa !29
  %t57 = getelementptr %"compiler/typed:Landings", ptr %t55, i32 0, i32 17
  %t58 = load i64, ptr %l8, !tbaa !24
  %t61 = call i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eAt_3cBool_3e(ptr %v0, ptr %t57, i64 %t58)
  store i1 %t61, ptr %l40
  br label %bb12
bb12:
  %t62 = load i1, ptr %l40, !tbaa !21
  br i1 %t62, label %bb13, label %bb14
bb13:
  %t63 = load ptr, ptr %l0, !tbaa !29
  %t65 = getelementptr %"compiler/typed:Landings", ptr %t63, i32 0, i32 15
  %t66 = load i64, ptr %l8, !tbaa !24
  %t69 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t65, i64 %t66)
  store i64 %t69, ptr %l45
  br label %bb15
bb14:
  store i1 false, ptr %l41, !tbaa !21
  br label %bb16
bb15:
  %t70 = load ptr, ptr %l0, !tbaa !29
  %t72 = getelementptr %"compiler/typed:Landings", ptr %t70, i32 0, i32 0
  %t73 = load { i64, ptr }, ptr %t72, !tbaa !27
  store { i64, ptr } %t73, ptr %l47, !tbaa !27
  %t74 = load i64, ptr %l1, !tbaa !24
  %t76 = getelementptr { i64, ptr }, ptr %l47, i32 0, i32 1
  %t77 = load ptr, ptr %t76, !tbaa !27
  %t78 = getelementptr i64, ptr %t77, i64 %t74
  %t79 = load i64, ptr %t78, !tbaa !34
  %t80 = load i64, ptr %l45, !tbaa !24
  %t82 = icmp eq i64 %t80, %t79
  store i1 %t82, ptr %l41, !tbaa !21
  br label %bb16
bb16:
  %t84 = load i1, ptr %l41, !tbaa !21
  br i1 %t84, label %bb17, label %bb18
bb17:
  %t85 = load ptr, ptr %l0, !tbaa !29
  %t87 = getelementptr %"compiler/typed:Landings", ptr %t85, i32 0, i32 16
  %t88 = load i64, ptr %l8, !tbaa !24
  %t91 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t87, i64 %t88)
  store i64 %t91, ptr %l55
  br label %bb19
bb18:
  store i1 false, ptr %l51, !tbaa !21
  br label %bb20
bb19:
  %t92 = load ptr, ptr %l0, !tbaa !29
  %t94 = getelementptr %"compiler/typed:Landings", ptr %t92, i32 0, i32 1
  %t95 = load { i64, ptr }, ptr %t94, !tbaa !27
  store { i64, ptr } %t95, ptr %l57, !tbaa !27
  %t96 = load i64, ptr %l1, !tbaa !24
  %t98 = getelementptr { i64, ptr }, ptr %l57, i32 0, i32 1
  %t99 = load ptr, ptr %t98, !tbaa !27
  %t100 = getelementptr i64, ptr %t99, i64 %t96
  %t101 = load i64, ptr %t100, !tbaa !34
  %t102 = load i64, ptr %l55, !tbaa !24
  %t104 = icmp eq i64 %t102, %t101
  store i1 %t104, ptr %l51, !tbaa !21
  br label %bb20
bb20:
  %t106 = load i1, ptr %l51, !tbaa !21
  br i1 %t106, label %bb21, label %bb22
bb21:
  store i1 true, ptr %rv
  br label %ret
bb22:
  br label %bb23
bb23:
  br label %bb24
bb24:
  %t108 = load i64, ptr %l7, !tbaa !24
  %t110 = add i64 %t108, 1
  store i64 %t110, ptr %l7, !tbaa !24
  br label %bb8
bb25:
  store i1 false, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local void @compiler_2ftyped_2ecompiler_2ftyped_3aLandings_2estmt(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i32
  %l3 = alloca ptr
  %l4 = alloca i64
  %l5 = alloca ptr
  %l6 = alloca ptr
  %l7 = alloca ptr
  %l8 = alloca i64
  %l9 = alloca %"compiler/source:Span"
  %l10 = alloca i32
  %l11 = alloca i32
  %l12 = alloca ptr
  %l13 = alloca ptr
  %l14 = alloca ptr
  %l15 = alloca ptr
  %l16 = alloca ptr
  %l17 = alloca ptr
  %l18 = alloca i32
  %l19 = alloca i32
  %l20 = alloca ptr
  %l21 = alloca ptr
  %l22 = alloca %"compiler/typed:landState"
  %l23 = alloca ptr
  %l24 = alloca ptr
  %l25 = alloca ptr
  %l26 = alloca ptr
  %l27 = alloca { i64, ptr }
  %l28 = alloca i64
  %l29 = alloca i64
  %l30 = alloca ptr
  %l31 = alloca { i64, ptr }
  %l32 = alloca i64
  %l33 = alloca i64
  %l35 = alloca ptr
  %l36 = alloca i1
  %l45 = alloca i64
  %l56 = alloca ptr
  %l57 = alloca i1
  %l62 = alloca ptr
  %l63 = alloca i1
  %l68 = alloca ptr
  %l69 = alloca i1
  %l77 = alloca ptr
  %l78 = alloca i1
  %l85 = alloca ptr
  %l86 = alloca i1
  %l94 = alloca i64
  %l98 = alloca ptr
  %l99 = alloca i1
  %l115 = alloca ptr
  %l116 = alloca i1
  %l123 = alloca ptr
  %l124 = alloca i1
  %l132 = alloca ptr
  %l133 = alloca i1
  %l137 = alloca ptr
  %l138 = alloca i1
  %l146 = alloca ptr
  %l147 = alloca i1
  %l154 = alloca ptr
  %l155 = alloca i1
  %l167 = alloca ptr
  %l168 = alloca i1
  %l178 = alloca ptr
  %l179 = alloca i1
  %l190 = alloca %"compiler/typed:landState"
  %l195 = alloca ptr
  %l196 = alloca i1
  %l204 = alloca ptr
  %l205 = alloca i1
  %l213 = alloca ptr
  %l214 = alloca i1
  %l223 = alloca ptr
  %l226 = alloca ptr
  %l232 = alloca ptr
  %l235 = alloca ptr
  %l238 = alloca ptr
  %l239 = alloca i1
  %l244 = alloca ptr
  %l247 = alloca ptr
  %l258 = alloca { i64, ptr }
  %l280 = alloca { i64, ptr }
  %l288 = alloca ptr
  %l291 = alloca ptr
  %s13 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l1, !tbaa !29
  store ptr %t1, ptr %l35, !tbaa !29
  store i1 false, ptr %l36, !tbaa !21
  %t2 = load ptr, ptr %l35, !tbaa !29
  %t3 = icmp ne ptr %t2, null
  br i1 %t3, label %bb1, label %bb2
bb1:
  %t5 = load ptr, ptr %l35, !tbaa !29
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 17}
  %t8 = icmp eq i64 %t6, 0
  store i1 %t8, ptr %l36, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l36, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  %t10 = load ptr, ptr %l1, !tbaa !29
  %t12 = getelementptr { i64, [3 x i64] }, ptr %t10, i32 0, i32 1
  %t13 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t12, i32 0, i32 1
  %t14 = load i32, ptr %t13
  store i32 %t14, ptr %l2, !tbaa !23
  %t16 = load ptr, ptr %l1, !tbaa !29
  %t18 = getelementptr { i64, [3 x i64] }, ptr %t16, i32 0, i32 1
  %t19 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t18, i32 0, i32 2
  %t20 = load ptr, ptr %t19
  store ptr %t20, ptr %l3, !tbaa !29
  br label %bb5
bb4:
  br label %bb10
bb5:
  %t22 = load ptr, ptr %l0, !tbaa !29
  %t24 = getelementptr %"compiler/typed:Landings", ptr %t22, i32 0, i32 15
  %t26 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %t24)
  store i64 %t26, ptr %l45
  br label %bb6
bb6:
  %t27 = load i64, ptr %l45, !tbaa !24
  store i64 %t27, ptr %l4, !tbaa !24
  %t28 = load ptr, ptr %l0, !tbaa !29
  %t29 = load ptr, ptr %l3, !tbaa !29
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aLandings_2eexpr(ptr %v0, ptr %v1, ptr %t28, ptr %t29)
  br label %bb7
bb7:
  %t33 = load ptr, ptr %l0, !tbaa !29
  %t34 = load i32, ptr %l2, !tbaa !23
  %t36 = sext i32 %t34 to i64
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aLandings_2erenewed(ptr %v0, ptr %t33, i64 %t36)
  br label %bb8
bb8:
  %t39 = load ptr, ptr %l0, !tbaa !29
  %t40 = load i32, ptr %l2, !tbaa !23
  %t42 = sext i32 %t40 to i64
  %t43 = load i64, ptr %l4, !tbaa !24
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aLandings_2eholds(ptr %v0, ptr %t39, i64 %t42, i64 %t43)
  br label %bb9
bb9:
  br label %bb151
bb10:
  %t47 = load ptr, ptr %l1, !tbaa !29
  store ptr %t47, ptr %l56, !tbaa !29
  store i1 false, ptr %l57, !tbaa !21
  %t48 = load ptr, ptr %l56, !tbaa !29
  %t49 = icmp ne ptr %t48, null
  br i1 %t49, label %bb11, label %bb12
bb11:
  %t51 = load ptr, ptr %l56, !tbaa !29
  %t52 = load i64, ptr %t51, !range !{i64 0, i64 17}
  %t54 = icmp eq i64 %t52, 2
  store i1 %t54, ptr %l57, !tbaa !21
  br label %bb12
bb12:
  %t55 = load i1, ptr %l57, !tbaa !21
  br i1 %t55, label %bb13, label %bb14
bb13:
  %t56 = load ptr, ptr %l1, !tbaa !29
  %t58 = getelementptr { i64, [3 x i64] }, ptr %t56, i32 0, i32 1
  %t59 = getelementptr { %"compiler/source:Span", ptr }, ptr %t58, i32 0, i32 1
  %t60 = load ptr, ptr %t59
  store ptr %t60, ptr %l5, !tbaa !29
  br label %bb23
bb14:
  %t62 = load ptr, ptr %l1, !tbaa !29
  store ptr %t62, ptr %l62, !tbaa !29
  store i1 false, ptr %l63, !tbaa !21
  %t63 = load ptr, ptr %l62, !tbaa !29
  %t64 = icmp ne ptr %t63, null
  br i1 %t64, label %bb15, label %bb16
bb15:
  %t66 = load ptr, ptr %l62, !tbaa !29
  %t67 = load i64, ptr %t66, !range !{i64 0, i64 17}
  %t69 = icmp eq i64 %t67, 15
  store i1 %t69, ptr %l63, !tbaa !21
  br label %bb16
bb16:
  %t70 = load i1, ptr %l63, !tbaa !21
  br i1 %t70, label %bb17, label %bb18
bb17:
  %t71 = load ptr, ptr %l1, !tbaa !29
  %t73 = getelementptr { i64, [3 x i64] }, ptr %t71, i32 0, i32 1
  %t74 = getelementptr { %"compiler/source:Span", ptr }, ptr %t73, i32 0, i32 1
  %t75 = load ptr, ptr %t74
  store ptr %t75, ptr %l5, !tbaa !29
  br label %bb23
bb18:
  %t77 = load ptr, ptr %l1, !tbaa !29
  store ptr %t77, ptr %l68, !tbaa !29
  store i1 false, ptr %l69, !tbaa !21
  %t78 = load ptr, ptr %l68, !tbaa !29
  %t79 = icmp ne ptr %t78, null
  br i1 %t79, label %bb19, label %bb20
bb19:
  %t81 = load ptr, ptr %l68, !tbaa !29
  %t82 = load i64, ptr %t81, !range !{i64 0, i64 17}
  %t84 = icmp eq i64 %t82, 8
  store i1 %t84, ptr %l69, !tbaa !21
  br label %bb20
bb20:
  %t85 = load i1, ptr %l69, !tbaa !21
  br i1 %t85, label %bb21, label %bb22
bb21:
  %t86 = load ptr, ptr %l1, !tbaa !29
  %t88 = getelementptr { i64, [3 x i64] }, ptr %t86, i32 0, i32 1
  %t89 = getelementptr { %"compiler/source:Span", ptr, i32 }, ptr %t88, i32 0, i32 1
  %t90 = load ptr, ptr %t89
  store ptr %t90, ptr %l5, !tbaa !29
  br label %bb23
bb22:
  br label %bb25
bb23:
  %t92 = load ptr, ptr %l0, !tbaa !29
  %t93 = load ptr, ptr %l5, !tbaa !29
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aLandings_2eexpr(ptr %v0, ptr %v1, ptr %t92, ptr %t93)
  br label %bb24
bb24:
  br label %bb151
bb25:
  %t97 = load ptr, ptr %l1, !tbaa !29
  store ptr %t97, ptr %l77, !tbaa !29
  store i1 false, ptr %l78, !tbaa !21
  %t98 = load ptr, ptr %l77, !tbaa !29
  %t99 = icmp ne ptr %t98, null
  br i1 %t99, label %bb26, label %bb27
bb26:
  %t101 = load ptr, ptr %l77, !tbaa !29
  %t102 = load i64, ptr %t101, !range !{i64 0, i64 17}
  %t104 = icmp eq i64 %t102, 1
  store i1 %t104, ptr %l78, !tbaa !21
  br label %bb27
bb27:
  %t105 = load i1, ptr %l78, !tbaa !21
  br i1 %t105, label %bb28, label %bb29
bb28:
  %t106 = load ptr, ptr %l1, !tbaa !29
  %t108 = getelementptr { i64, [3 x i64] }, ptr %t106, i32 0, i32 1
  %t109 = getelementptr { %"compiler/source:Span", ptr, ptr }, ptr %t108, i32 0, i32 1
  %t110 = load ptr, ptr %t109
  store ptr %t110, ptr %l6, !tbaa !29
  %t112 = load ptr, ptr %l1, !tbaa !29
  %t114 = getelementptr { i64, [3 x i64] }, ptr %t112, i32 0, i32 1
  %t115 = getelementptr { %"compiler/source:Span", ptr, ptr }, ptr %t114, i32 0, i32 2
  %t116 = load ptr, ptr %t115
  store ptr %t116, ptr %l7, !tbaa !29
  br label %bb30
bb29:
  br label %bb46
bb30:
  %t118 = load ptr, ptr %l6, !tbaa !29
  store ptr %t118, ptr %l85, !tbaa !29
  store i1 false, ptr %l86, !tbaa !21
  %t119 = load ptr, ptr %l85, !tbaa !29
  %t120 = icmp ne ptr %t119, null
  br i1 %t120, label %bb31, label %bb32
bb31:
  %t122 = load ptr, ptr %l85, !tbaa !29
  %t123 = load i64, ptr %t122, !range !{i64 0, i64 8}
  %t125 = icmp eq i64 %t123, 0
  store i1 %t125, ptr %l86, !tbaa !21
  br label %bb32
bb32:
  %t126 = load i1, ptr %l86, !tbaa !21
  %t127 = xor i1 %t126, true
  br i1 %t127, label %bb33, label %bb34
bb33:
  %t129 = load ptr, ptr %l0, !tbaa !29
  %t130 = load ptr, ptr %l6, !tbaa !29
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aLandings_2eplace(ptr %v0, ptr %v1, ptr %t129, ptr %t130)
  br label %bb35
bb34:
  br label %bb36
bb35:
  br label %bb36
bb36:
  %t133 = load ptr, ptr %l0, !tbaa !29
  %t135 = getelementptr %"compiler/typed:Landings", ptr %t133, i32 0, i32 15
  %t137 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %t135)
  store i64 %t137, ptr %l94
  br label %bb37
bb37:
  %t138 = load i64, ptr %l94, !tbaa !24
  store i64 %t138, ptr %l8, !tbaa !24
  %t139 = load ptr, ptr %l0, !tbaa !29
  %t140 = load ptr, ptr %l7, !tbaa !29
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aLandings_2eexpr(ptr %v0, ptr %v1, ptr %t139, ptr %t140)
  br label %bb38
bb38:
  %t144 = load ptr, ptr %l6, !tbaa !29
  store ptr %t144, ptr %l98, !tbaa !29
  store i1 false, ptr %l99, !tbaa !21
  %t145 = load ptr, ptr %l98, !tbaa !29
  %t146 = icmp ne ptr %t145, null
  br i1 %t146, label %bb39, label %bb40
bb39:
  %t148 = load ptr, ptr %l98, !tbaa !29
  %t149 = load i64, ptr %t148, !range !{i64 0, i64 8}
  %t151 = icmp eq i64 %t149, 0
  store i1 %t151, ptr %l99, !tbaa !21
  br label %bb40
bb40:
  %t152 = load i1, ptr %l99, !tbaa !21
  br i1 %t152, label %bb41, label %bb42
bb41:
  %t153 = load ptr, ptr %l6, !tbaa !29
  %t155 = getelementptr { i64, [4 x i64] }, ptr %t153, i32 0, i32 1
  %t156 = getelementptr { %"compiler/source:Span", i32, i32 }, ptr %t155, i32 0, i32 0
  %t157 = load %"compiler/source:Span", ptr %t156
  store %"compiler/source:Span" %t157, ptr %l9
  %t159 = load ptr, ptr %l6, !tbaa !29
  %t161 = getelementptr { i64, [4 x i64] }, ptr %t159, i32 0, i32 1
  %t162 = getelementptr { %"compiler/source:Span", i32, i32 }, ptr %t161, i32 0, i32 1
  %t163 = load i32, ptr %t162
  store i32 %t163, ptr %l10, !tbaa !23
  %t165 = load ptr, ptr %l6, !tbaa !29
  %t167 = getelementptr { i64, [4 x i64] }, ptr %t165, i32 0, i32 1
  %t168 = getelementptr { %"compiler/source:Span", i32, i32 }, ptr %t167, i32 0, i32 2
  %t169 = load i32, ptr %t168
  store i32 %t169, ptr %l11, !tbaa !23
  %t171 = load ptr, ptr %l0, !tbaa !29
  %t172 = load i32, ptr %l11, !tbaa !23
  %t174 = sext i32 %t172 to i64
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aLandings_2erenewed(ptr %v0, ptr %t171, i64 %t174)
  br label %bb43
bb42:
  br label %bb45
bb43:
  %t177 = load ptr, ptr %l0, !tbaa !29
  %t178 = load i32, ptr %l11, !tbaa !23
  %t180 = sext i32 %t178 to i64
  %t181 = load i64, ptr %l8, !tbaa !24
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aLandings_2eholds(ptr %v0, ptr %t177, i64 %t180, i64 %t181)
  br label %bb44
bb44:
  br label %bb45
bb45:
  br label %bb151
bb46:
  %t185 = load ptr, ptr %l1, !tbaa !29
  store ptr %t185, ptr %l115, !tbaa !29
  store i1 false, ptr %l116, !tbaa !21
  %t186 = load ptr, ptr %l115, !tbaa !29
  %t187 = icmp ne ptr %t186, null
  br i1 %t187, label %bb47, label %bb48
bb47:
  %t189 = load ptr, ptr %l115, !tbaa !29
  %t190 = load i64, ptr %t189, !range !{i64 0, i64 17}
  %t192 = icmp eq i64 %t190, 16
  store i1 %t192, ptr %l116, !tbaa !21
  br label %bb48
bb48:
  %t193 = load i1, ptr %l116, !tbaa !21
  br i1 %t193, label %bb49, label %bb50
bb49:
  %t194 = load ptr, ptr %l1, !tbaa !29
  %t196 = getelementptr { i64, [3 x i64] }, ptr %t194, i32 0, i32 1
  %t197 = getelementptr { %"compiler/source:Span", ptr }, ptr %t196, i32 0, i32 1
  %t198 = load ptr, ptr %t197
  store ptr %t198, ptr %l12, !tbaa !29
  br label %bb51
bb50:
  br label %bb53
bb51:
  %t200 = load ptr, ptr %l0, !tbaa !29
  %t201 = load ptr, ptr %l12, !tbaa !29
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aLandings_2eexpr(ptr %v0, ptr %v1, ptr %t200, ptr %t201)
  br label %bb52
bb52:
  br label %bb151
bb53:
  %t204 = load ptr, ptr %l1, !tbaa !29
  store ptr %t204, ptr %l123, !tbaa !29
  store i1 false, ptr %l124, !tbaa !21
  %t205 = load ptr, ptr %l123, !tbaa !29
  %t206 = icmp ne ptr %t205, null
  br i1 %t206, label %bb54, label %bb55
bb54:
  %t208 = load ptr, ptr %l123, !tbaa !29
  %t209 = load i64, ptr %t208, !range !{i64 0, i64 17}
  %t211 = icmp eq i64 %t209, 6
  store i1 %t211, ptr %l124, !tbaa !21
  br label %bb55
bb55:
  %t212 = load i1, ptr %l124, !tbaa !21
  br i1 %t212, label %bb56, label %bb57
bb56:
  %t213 = load ptr, ptr %l1, !tbaa !29
  %t215 = getelementptr { i64, [3 x i64] }, ptr %t213, i32 0, i32 1
  %t216 = getelementptr { %"compiler/source:Span", ptr }, ptr %t215, i32 0, i32 1
  %t217 = load ptr, ptr %t216
  store ptr %t217, ptr %l13, !tbaa !29
  br label %bb58
bb57:
  br label %bb60
bb58:
  %t219 = load ptr, ptr %l0, !tbaa !29
  %t220 = load ptr, ptr %l13, !tbaa !29
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aLandings_2eexpr(ptr %v0, ptr %v1, ptr %t219, ptr %t220)
  br label %bb59
bb59:
  %t223 = load ptr, ptr %l0, !tbaa !29
  %t225 = getelementptr %"compiler/typed:Landings", ptr %t223, i32 0, i32 7
  store i1 true, ptr %t225, !tbaa !21
  br label %bb151
bb60:
  %t226 = load ptr, ptr %l1, !tbaa !29
  store ptr %t226, ptr %l132, !tbaa !29
  store i1 false, ptr %l133, !tbaa !21
  %t227 = load ptr, ptr %l132, !tbaa !29
  %t228 = icmp ne ptr %t227, null
  br i1 %t228, label %bb61, label %bb62
bb61:
  %t230 = load ptr, ptr %l132, !tbaa !29
  %t231 = load i64, ptr %t230, !range !{i64 0, i64 17}
  %t233 = icmp eq i64 %t231, 7
  store i1 %t233, ptr %l133, !tbaa !21
  br label %bb62
bb62:
  %t234 = load i1, ptr %l133, !tbaa !21
  br i1 %t234, label %bb63, label %bb64
bb63:
  br label %bb65
bb64:
  br label %bb66
bb65:
  %t235 = load ptr, ptr %l0, !tbaa !29
  %t237 = getelementptr %"compiler/typed:Landings", ptr %t235, i32 0, i32 7
  store i1 true, ptr %t237, !tbaa !21
  br label %bb151
bb66:
  %t238 = load ptr, ptr %l1, !tbaa !29
  store ptr %t238, ptr %l137, !tbaa !29
  store i1 false, ptr %l138, !tbaa !21
  %t239 = load ptr, ptr %l137, !tbaa !29
  %t240 = icmp ne ptr %t239, null
  br i1 %t240, label %bb67, label %bb68
bb67:
  %t242 = load ptr, ptr %l137, !tbaa !29
  %t243 = load i64, ptr %t242, !range !{i64 0, i64 17}
  %t245 = icmp eq i64 %t243, 9
  store i1 %t245, ptr %l138, !tbaa !21
  br label %bb68
bb68:
  %t246 = load i1, ptr %l138, !tbaa !21
  br i1 %t246, label %bb69, label %bb70
bb69:
  %t247 = load ptr, ptr %l1, !tbaa !29
  %t249 = getelementptr { i64, [3 x i64] }, ptr %t247, i32 0, i32 1
  %t250 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t249, i32 0, i32 2
  %t251 = load ptr, ptr %t250
  store ptr %t251, ptr %l14, !tbaa !29
  br label %bb71
bb70:
  br label %bb73
bb71:
  %t253 = load ptr, ptr %l0, !tbaa !29
  %t254 = load ptr, ptr %l14, !tbaa !29
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aLandings_2eexpr(ptr %v0, ptr %v1, ptr %t253, ptr %t254)
  br label %bb72
bb72:
  %t257 = load ptr, ptr %l0, !tbaa !29
  %t259 = getelementptr %"compiler/typed:Landings", ptr %t257, i32 0, i32 7
  store i1 true, ptr %t259, !tbaa !21
  br label %bb151
bb73:
  %t260 = load ptr, ptr %l1, !tbaa !29
  store ptr %t260, ptr %l146, !tbaa !29
  store i1 false, ptr %l147, !tbaa !21
  %t261 = load ptr, ptr %l146, !tbaa !29
  %t262 = icmp ne ptr %t261, null
  br i1 %t262, label %bb74, label %bb75
bb74:
  %t264 = load ptr, ptr %l146, !tbaa !29
  %t265 = load i64, ptr %t264, !range !{i64 0, i64 17}
  %t267 = icmp eq i64 %t265, 3
  store i1 %t267, ptr %l147, !tbaa !21
  br label %bb75
bb75:
  %t268 = load i1, ptr %l147, !tbaa !21
  br i1 %t268, label %bb76, label %bb77
bb76:
  %t269 = load ptr, ptr %l1, !tbaa !29
  %t271 = getelementptr { i64, [3 x i64] }, ptr %t269, i32 0, i32 1
  %t272 = getelementptr { %"compiler/source:Span", ptr }, ptr %t271, i32 0, i32 1
  %t273 = load ptr, ptr %t272
  store ptr %t273, ptr %l15, !tbaa !29
  br label %bb78
bb77:
  br label %bb80
bb78:
  %t275 = load ptr, ptr %l0, !tbaa !29
  %t276 = load ptr, ptr %l15, !tbaa !29
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aLandings_2eifStmt(ptr %v0, ptr %v1, ptr %t275, ptr %t276)
  br label %bb79
bb79:
  br label %bb151
bb80:
  %t279 = load ptr, ptr %l1, !tbaa !29
  store ptr %t279, ptr %l154, !tbaa !29
  store i1 false, ptr %l155, !tbaa !21
  %t280 = load ptr, ptr %l154, !tbaa !29
  %t281 = icmp ne ptr %t280, null
  br i1 %t281, label %bb81, label %bb82
bb81:
  %t283 = load ptr, ptr %l154, !tbaa !29
  %t284 = load i64, ptr %t283, !range !{i64 0, i64 17}
  %t286 = icmp eq i64 %t284, 4
  store i1 %t286, ptr %l155, !tbaa !21
  br label %bb82
bb82:
  %t287 = load i1, ptr %l155, !tbaa !21
  br i1 %t287, label %bb83, label %bb84
bb83:
  %t288 = load ptr, ptr %l1, !tbaa !29
  %t290 = getelementptr { i64, [3 x i64] }, ptr %t288, i32 0, i32 1
  %t291 = getelementptr { %"compiler/source:Span", ptr, ptr }, ptr %t290, i32 0, i32 1
  %t292 = load ptr, ptr %t291
  store ptr %t292, ptr %l16, !tbaa !29
  %t294 = load ptr, ptr %l1, !tbaa !29
  %t296 = getelementptr { i64, [3 x i64] }, ptr %t294, i32 0, i32 1
  %t297 = getelementptr { %"compiler/source:Span", ptr, ptr }, ptr %t296, i32 0, i32 2
  %t298 = load ptr, ptr %t297
  store ptr %t298, ptr %l17, !tbaa !29
  br label %bb85
bb84:
  br label %bb87
bb85:
  %t300 = load ptr, ptr %l0, !tbaa !29
  %t301 = load ptr, ptr %l16, !tbaa !29
  %t303 = getelementptr %"compiler/typed:Block", ptr %t301, i32 0, i32 0
  %t304 = load i32, ptr %t303, !tbaa !23
  %t305 = load ptr, ptr %l16, !tbaa !29
  %t306 = load ptr, ptr %l17, !tbaa !29
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aLandings_2eloop(ptr %v0, ptr %v1, ptr %v1, ptr %t300, i32 %t304, ptr %t305, ptr %t306)
  br label %bb86
bb86:
  br label %bb151
bb87:
  %t311 = load ptr, ptr %l1, !tbaa !29
  store ptr %t311, ptr %l167, !tbaa !29
  store i1 false, ptr %l168, !tbaa !21
  %t312 = load ptr, ptr %l167, !tbaa !29
  %t313 = icmp ne ptr %t312, null
  br i1 %t313, label %bb88, label %bb89
bb88:
  %t315 = load ptr, ptr %l167, !tbaa !29
  %t316 = load i64, ptr %t315, !range !{i64 0, i64 17}
  %t318 = icmp eq i64 %t316, 5
  store i1 %t318, ptr %l168, !tbaa !21
  br label %bb89
bb89:
  %t319 = load i1, ptr %l168, !tbaa !21
  br i1 %t319, label %bb90, label %bb91
bb90:
  %t320 = load ptr, ptr %l1, !tbaa !29
  %t322 = getelementptr { i64, [3 x i64] }, ptr %t320, i32 0, i32 1
  %t323 = getelementptr { %"compiler/source:Span", i32, i32 }, ptr %t322, i32 0, i32 1
  %t324 = load i32, ptr %t323, !range !{i32 0, i32 2}
  store i32 %t324, ptr %l18
  %t326 = load ptr, ptr %l1, !tbaa !29
  %t328 = getelementptr { i64, [3 x i64] }, ptr %t326, i32 0, i32 1
  %t329 = getelementptr { %"compiler/source:Span", i32, i32 }, ptr %t328, i32 0, i32 2
  %t330 = load i32, ptr %t329
  store i32 %t330, ptr %l19, !tbaa !23
  br label %bb92
bb91:
  br label %bb94
bb92:
  %t332 = load ptr, ptr %l0, !tbaa !29
  %t333 = load i32, ptr %l18, !range !{i32 0, i32 2}
  %t334 = load i32, ptr %l19, !tbaa !23
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aLandings_2ejump(ptr %v0, ptr %t332, i32 %t333, i32 %t334)
  br label %bb93
bb93:
  br label %bb151
bb94:
  %t338 = load ptr, ptr %l1, !tbaa !29
  store ptr %t338, ptr %l178, !tbaa !29
  store i1 false, ptr %l179, !tbaa !21
  %t339 = load ptr, ptr %l178, !tbaa !29
  %t340 = icmp ne ptr %t339, null
  br i1 %t340, label %bb95, label %bb96
bb95:
  %t342 = load ptr, ptr %l178, !tbaa !29
  %t343 = load i64, ptr %t342, !range !{i64 0, i64 17}
  %t345 = icmp eq i64 %t343, 10
  store i1 %t345, ptr %l179, !tbaa !21
  br label %bb96
bb96:
  %t346 = load i1, ptr %l179, !tbaa !21
  br i1 %t346, label %bb97, label %bb98
bb97:
  %t347 = load ptr, ptr %l1, !tbaa !29
  %t349 = getelementptr { i64, [3 x i64] }, ptr %t347, i32 0, i32 1
  %t350 = getelementptr { %"compiler/source:Span", ptr, ptr }, ptr %t349, i32 0, i32 1
  %t351 = load ptr, ptr %t350
  store ptr %t351, ptr %l20, !tbaa !29
  %t353 = load ptr, ptr %l1, !tbaa !29
  %t355 = getelementptr { i64, [3 x i64] }, ptr %t353, i32 0, i32 1
  %t356 = getelementptr { %"compiler/source:Span", ptr, ptr }, ptr %t355, i32 0, i32 2
  %t357 = load ptr, ptr %t356
  store ptr %t357, ptr %l21, !tbaa !29
  br label %bb99
bb98:
  br label %bb104
bb99:
  store %olang.scope zeroinitializer, ptr %s13
  %t359 = load ptr, ptr %l0, !tbaa !29
  %t360 = load ptr, ptr %l20, !tbaa !29
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aLandings_2eexpr(ptr %v0, ptr %v1, ptr %t359, ptr %t360)
  br label %bb100
bb100:
  %t364 = load ptr, ptr %l0, !tbaa !29
  %t366 = call %"compiler/typed:landState" @compiler_2ftyped_2ecompiler_2ftyped_3aLandings_2esave(ptr %v0, ptr %s13, ptr %t364)
  store %"compiler/typed:landState" %t366, ptr %l190
  br label %bb101
bb101:
  %t367 = load %"compiler/typed:landState", ptr %l190
  store %"compiler/typed:landState" %t367, ptr %l22
  %t368 = load ptr, ptr %l0, !tbaa !29
  %t369 = load ptr, ptr %l21, !tbaa !29
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aLandings_2eexpr(ptr %v0, ptr %v1, ptr %t368, ptr %t369)
  br label %bb102
bb102:
  %t372 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aLandings_2erestore(ptr %v0, ptr %s13, ptr %t372, ptr %l22)
  br label %bb103
bb103:
  call void @__olang_scope_close(ptr %s13)
  br label %bb151
bb104:
  %t375 = load ptr, ptr %l1, !tbaa !29
  store ptr %t375, ptr %l195, !tbaa !29
  store i1 false, ptr %l196, !tbaa !21
  %t376 = load ptr, ptr %l195, !tbaa !29
  %t377 = icmp ne ptr %t376, null
  br i1 %t377, label %bb105, label %bb106
bb105:
  %t379 = load ptr, ptr %l195, !tbaa !29
  %t380 = load i64, ptr %t379, !range !{i64 0, i64 17}
  %t382 = icmp eq i64 %t380, 11
  store i1 %t382, ptr %l196, !tbaa !21
  br label %bb106
bb106:
  %t383 = load i1, ptr %l196, !tbaa !21
  br i1 %t383, label %bb107, label %bb108
bb107:
  %t384 = load ptr, ptr %l1, !tbaa !29
  %t386 = getelementptr { i64, [3 x i64] }, ptr %t384, i32 0, i32 1
  %t387 = getelementptr { %"compiler/source:Span", ptr }, ptr %t386, i32 0, i32 1
  %t388 = load ptr, ptr %t387
  store ptr %t388, ptr %l23, !tbaa !29
  br label %bb109
bb108:
  br label %bb111
bb109:
  %t390 = load ptr, ptr %l0, !tbaa !29
  %t391 = load ptr, ptr %l23, !tbaa !29
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aLandings_2eblock(ptr %v0, ptr %v1, ptr %t390, ptr %t391)
  br label %bb110
bb110:
  br label %bb151
bb111:
  %t395 = load ptr, ptr %l1, !tbaa !29
  store ptr %t395, ptr %l204, !tbaa !29
  store i1 false, ptr %l205, !tbaa !21
  %t396 = load ptr, ptr %l204, !tbaa !29
  %t397 = icmp ne ptr %t396, null
  br i1 %t397, label %bb112, label %bb113
bb112:
  %t399 = load ptr, ptr %l204, !tbaa !29
  %t400 = load i64, ptr %t399, !range !{i64 0, i64 17}
  %t402 = icmp eq i64 %t400, 12
  store i1 %t402, ptr %l205, !tbaa !21
  br label %bb113
bb113:
  %t403 = load i1, ptr %l205, !tbaa !21
  br i1 %t403, label %bb114, label %bb115
bb114:
  %t404 = load ptr, ptr %l1, !tbaa !29
  %t406 = getelementptr { i64, [3 x i64] }, ptr %t404, i32 0, i32 1
  %t407 = getelementptr { %"compiler/source:Span", ptr }, ptr %t406, i32 0, i32 1
  %t408 = load ptr, ptr %t407
  store ptr %t408, ptr %l24, !tbaa !29
  br label %bb116
bb115:
  br label %bb118
bb116:
  %t410 = load ptr, ptr %l0, !tbaa !29
  %t411 = load ptr, ptr %l24, !tbaa !29
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aLandings_2elaterBlock(ptr %v0, ptr %v1, ptr %t410, ptr %t411)
  br label %bb117
bb117:
  br label %bb151
bb118:
  %t415 = load ptr, ptr %l1, !tbaa !29
  store ptr %t415, ptr %l213, !tbaa !29
  store i1 false, ptr %l214, !tbaa !21
  %t416 = load ptr, ptr %l213, !tbaa !29
  %t417 = icmp ne ptr %t416, null
  br i1 %t417, label %bb119, label %bb120
bb119:
  %t419 = load ptr, ptr %l213, !tbaa !29
  %t420 = load i64, ptr %t419, !range !{i64 0, i64 17}
  %t422 = icmp eq i64 %t420, 13
  store i1 %t422, ptr %l214, !tbaa !21
  br label %bb120
bb120:
  %t423 = load i1, ptr %l214, !tbaa !21
  br i1 %t423, label %bb121, label %bb122
bb121:
  %t424 = load ptr, ptr %l1, !tbaa !29
  %t426 = getelementptr { i64, [3 x i64] }, ptr %t424, i32 0, i32 1
  %t427 = getelementptr { %"compiler/source:Span", ptr }, ptr %t426, i32 0, i32 1
  %t428 = load ptr, ptr %t427
  store ptr %t428, ptr %l25, !tbaa !29
  br label %bb123
bb122:
  br label %bb126
bb123:
  %t430 = load ptr, ptr %l0, !tbaa !29
  %t431 = load ptr, ptr %l25, !tbaa !29
  %t433 = getelementptr %"compiler/typed:Join", ptr %t431, i32 0, i32 0
  %t434 = load ptr, ptr %t433, !tbaa !29
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aLandings_2eblock(ptr %v0, ptr %v1, ptr %t430, ptr %t434)
  br label %bb124
bb124:
  %t438 = load ptr, ptr %l0, !tbaa !29
  store ptr %t438, ptr %l223, !tbaa !29
  %t439 = load ptr, ptr %l223, !tbaa !29
  %t440 = getelementptr %"compiler/typed:Landings", ptr %t439, i32 0, i32 9
  %t441 = load i64, ptr %t440, !tbaa !24
  %t443 = add i64 %t441, 1
  %t445 = load ptr, ptr %l223, !tbaa !29
  %t446 = getelementptr %"compiler/typed:Landings", ptr %t445, i32 0, i32 9
  store i64 %t443, ptr %t446, !tbaa !24
  %t447 = load ptr, ptr %l0, !tbaa !29
  store ptr %t447, ptr %l226, !tbaa !29
  %t448 = load ptr, ptr %l226, !tbaa !29
  %t449 = getelementptr %"compiler/typed:Landings", ptr %t448, i32 0, i32 10
  %t450 = load i64, ptr %t449, !tbaa !24
  %t452 = add i64 %t450, 1
  %t454 = load ptr, ptr %l226, !tbaa !29
  %t455 = getelementptr %"compiler/typed:Landings", ptr %t454, i32 0, i32 10
  store i64 %t452, ptr %t455, !tbaa !24
  %t456 = load ptr, ptr %l0, !tbaa !29
  %t457 = load ptr, ptr %l25, !tbaa !29
  %t459 = getelementptr %"compiler/typed:Join", ptr %t457, i32 0, i32 2
  %t460 = load { i64, ptr }, ptr %t459, !tbaa !27
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aLandings_2eclauses(ptr %v0, ptr %v1, ptr %t456, { i64, ptr } %t460)
  br label %bb125
bb125:
  %t463 = load ptr, ptr %l0, !tbaa !29
  store ptr %t463, ptr %l232, !tbaa !29
  %t464 = load ptr, ptr %l232, !tbaa !29
  %t465 = getelementptr %"compiler/typed:Landings", ptr %t464, i32 0, i32 10
  %t466 = load i64, ptr %t465, !tbaa !24
  %t468 = sub i64 %t466, 1
  %t470 = load ptr, ptr %l232, !tbaa !29
  %t471 = getelementptr %"compiler/typed:Landings", ptr %t470, i32 0, i32 10
  store i64 %t468, ptr %t471, !tbaa !24
  %t472 = load ptr, ptr %l0, !tbaa !29
  store ptr %t472, ptr %l235, !tbaa !29
  %t473 = load ptr, ptr %l235, !tbaa !29
  %t474 = getelementptr %"compiler/typed:Landings", ptr %t473, i32 0, i32 9
  %t475 = load i64, ptr %t474, !tbaa !24
  %t477 = sub i64 %t475, 1
  %t479 = load ptr, ptr %l235, !tbaa !29
  %t480 = getelementptr %"compiler/typed:Landings", ptr %t479, i32 0, i32 9
  store i64 %t477, ptr %t480, !tbaa !24
  br label %bb151
bb126:
  %t481 = load ptr, ptr %l1, !tbaa !29
  store ptr %t481, ptr %l238, !tbaa !29
  store i1 false, ptr %l239, !tbaa !21
  %t482 = load ptr, ptr %l238, !tbaa !29
  %t483 = icmp ne ptr %t482, null
  br i1 %t483, label %bb127, label %bb128
bb127:
  %t485 = load ptr, ptr %l238, !tbaa !29
  %t486 = load i64, ptr %t485, !range !{i64 0, i64 17}
  %t488 = icmp eq i64 %t486, 14
  store i1 %t488, ptr %l239, !tbaa !21
  br label %bb128
bb128:
  %t489 = load i1, ptr %l239, !tbaa !21
  br i1 %t489, label %bb129, label %bb130
bb129:
  %t490 = load ptr, ptr %l1, !tbaa !29
  %t492 = getelementptr { i64, [3 x i64] }, ptr %t490, i32 0, i32 1
  %t493 = getelementptr { %"compiler/source:Span", ptr }, ptr %t492, i32 0, i32 1
  %t494 = load ptr, ptr %t493
  store ptr %t494, ptr %l26, !tbaa !29
  br label %bb131
bb130:
  br label %bb150
bb131:
  %t496 = load ptr, ptr %l0, !tbaa !29
  store ptr %t496, ptr %l244, !tbaa !29
  %t497 = load ptr, ptr %l244, !tbaa !29
  %t498 = getelementptr %"compiler/typed:Landings", ptr %t497, i32 0, i32 9
  %t499 = load i64, ptr %t498, !tbaa !24
  %t501 = add i64 %t499, 1
  %t503 = load ptr, ptr %l244, !tbaa !29
  %t504 = getelementptr %"compiler/typed:Landings", ptr %t503, i32 0, i32 9
  store i64 %t501, ptr %t504, !tbaa !24
  %t505 = load ptr, ptr %l0, !tbaa !29
  store ptr %t505, ptr %l247, !tbaa !29
  %t506 = load ptr, ptr %l247, !tbaa !29
  %t507 = getelementptr %"compiler/typed:Landings", ptr %t506, i32 0, i32 10
  %t508 = load i64, ptr %t507, !tbaa !24
  %t510 = add i64 %t508, 1
  %t512 = load ptr, ptr %l247, !tbaa !29
  %t513 = getelementptr %"compiler/typed:Landings", ptr %t512, i32 0, i32 10
  store i64 %t510, ptr %t513, !tbaa !24
  %t514 = load ptr, ptr %l26, !tbaa !29
  %t516 = getelementptr %"compiler/typed:Spawn", ptr %t514, i32 0, i32 0
  %t517 = load { i64, ptr }, ptr %t516, !tbaa !27
  store { i64, ptr } %t517, ptr %l27, !tbaa !27
  store i64 0, ptr %l28, !tbaa !24
  %t519 = load { i64, ptr }, ptr %l27, !tbaa !27
  %t521 = extractvalue { i64, ptr } %t519, 0
  store i64 %t521, ptr %l29, !tbaa !24
  br label %bb132
bb132:
  %t523 = load i64, ptr %l28, !tbaa !24
  %t524 = load i64, ptr %l29, !tbaa !24
  %t527 = icmp slt i64 %t523, %t524
  %t529 = xor i1 %t527, true
  br i1 %t529, label %bb133, label %bb134
bb133:
  br label %bb141
bb134:
  br label %bb135
bb135:
  %t531 = load { i64, ptr }, ptr %l27, !tbaa !27
  store { i64, ptr } %t531, ptr %l258, !tbaa !27
  %t532 = load i64, ptr %l28, !tbaa !24
  %t534 = getelementptr { i64, ptr }, ptr %l258, i32 0, i32 1
  %t535 = load ptr, ptr %t534, !tbaa !27
  %t536 = getelementptr ptr, ptr %t535, i64 %t532
  %t537 = load ptr, ptr %t536, !tbaa !39
  store ptr %t537, ptr %l30, !tbaa !29
  %t539 = load ptr, ptr %l30, !tbaa !29
  %t541 = icmp eq ptr %t539, null
  %t543 = xor i1 %t541, true
  br i1 %t543, label %bb136, label %bb137
bb136:
  %t545 = load ptr, ptr %l0, !tbaa !29
  %t546 = load ptr, ptr %l30, !tbaa !29
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aLandings_2eplace(ptr %v0, ptr %v1, ptr %t545, ptr %t546)
  br label %bb138
bb137:
  br label %bb139
bb138:
  br label %bb139
bb139:
  br label %bb140
bb140:
  %t549 = load i64, ptr %l28, !tbaa !24
  %t551 = add i64 %t549, 1
  store i64 %t551, ptr %l28, !tbaa !24
  br label %bb132
bb141:
  %t553 = load ptr, ptr %l0, !tbaa !29
  %t554 = load ptr, ptr %l26, !tbaa !29
  %t556 = getelementptr %"compiler/typed:Spawn", ptr %t554, i32 0, i32 1
  %t557 = load ptr, ptr %t556, !tbaa !29
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aLandings_2eexpr(ptr %v0, ptr %v1, ptr %t553, ptr %t557)
  br label %bb142
bb142:
  %t561 = load ptr, ptr %l26, !tbaa !29
  %t563 = getelementptr %"compiler/typed:Spawn", ptr %t561, i32 0, i32 2
  %t564 = load { i64, ptr }, ptr %t563, !tbaa !27
  store { i64, ptr } %t564, ptr %l31, !tbaa !27
  store i64 0, ptr %l32, !tbaa !24
  %t566 = load { i64, ptr }, ptr %l31, !tbaa !27
  %t568 = extractvalue { i64, ptr } %t566, 0
  store i64 %t568, ptr %l33, !tbaa !24
  br label %bb143
bb143:
  %t570 = load i64, ptr %l32, !tbaa !24
  %t571 = load i64, ptr %l33, !tbaa !24
  %t574 = icmp slt i64 %t570, %t571
  %t576 = xor i1 %t574, true
  br i1 %t576, label %bb144, label %bb145
bb144:
  br label %bb149
bb145:
  br label %bb146
bb146:
  %t578 = load { i64, ptr }, ptr %l31, !tbaa !27
  store { i64, ptr } %t578, ptr %l280, !tbaa !27
  %t579 = load i64, ptr %l32, !tbaa !24
  %t581 = getelementptr { i64, ptr }, ptr %l280, i32 0, i32 1
  %t582 = load ptr, ptr %t581, !tbaa !27
  %t583 = getelementptr ptr, ptr %t582, i64 %t579
  %t584 = load ptr, ptr %t583, !tbaa !39
  %t586 = load ptr, ptr %l0, !tbaa !29
  %t589 = getelementptr %"compiler/typed:TaskClause", ptr %t584, i32 0, i32 3
  %t590 = load ptr, ptr %t589, !tbaa !29
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aLandings_2eexpr(ptr %v0, ptr %v1, ptr %t586, ptr %t590)
  br label %bb147
bb147:
  br label %bb148
bb148:
  %t593 = load i64, ptr %l32, !tbaa !24
  %t595 = add i64 %t593, 1
  store i64 %t595, ptr %l32, !tbaa !24
  br label %bb143
bb149:
  %t597 = load ptr, ptr %l0, !tbaa !29
  store ptr %t597, ptr %l288, !tbaa !29
  %t598 = load ptr, ptr %l288, !tbaa !29
  %t599 = getelementptr %"compiler/typed:Landings", ptr %t598, i32 0, i32 10
  %t600 = load i64, ptr %t599, !tbaa !24
  %t602 = sub i64 %t600, 1
  %t604 = load ptr, ptr %l288, !tbaa !29
  %t605 = getelementptr %"compiler/typed:Landings", ptr %t604, i32 0, i32 10
  store i64 %t602, ptr %t605, !tbaa !24
  %t606 = load ptr, ptr %l0, !tbaa !29
  store ptr %t606, ptr %l291, !tbaa !29
  %t607 = load ptr, ptr %l291, !tbaa !29
  %t608 = getelementptr %"compiler/typed:Landings", ptr %t607, i32 0, i32 9
  %t609 = load i64, ptr %t608, !tbaa !24
  %t611 = sub i64 %t609, 1
  %t613 = load ptr, ptr %l291, !tbaa !29
  %t614 = getelementptr %"compiler/typed:Landings", ptr %t613, i32 0, i32 9
  store i64 %t611, ptr %t614, !tbaa !24
  br label %bb151
bb150:
  call void @__olang_check_failed(ptr @olang_loc_c0d697227f379d2a_2050d061979ad5e)
  unreachable
bb151:
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2ftyped_2ecompiler_2ftyped_3aLastUses_2earm(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
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
  %l9 = alloca ptr
  %l18 = alloca { i64, ptr }
  %l33 = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l1, !tbaa !29
  %t3 = getelementptr %"compiler/typed:Arm", ptr %t1, i32 0, i32 1
  %t4 = load { i64, ptr }, ptr %t3, !tbaa !27
  store { i64, ptr } %t4, ptr %l2, !tbaa !27
  store i64 0, ptr %l3, !tbaa !24
  %t6 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t8 = extractvalue { i64, ptr } %t6, 0
  store i64 %t8, ptr %l4, !tbaa !24
  br label %bb1
bb1:
  %t10 = load i64, ptr %l3, !tbaa !24
  %t11 = load i64, ptr %l4, !tbaa !24
  %t14 = icmp slt i64 %t10, %t11
  %t16 = xor i1 %t14, true
  br i1 %t16, label %bb2, label %bb3
bb2:
  br label %bb16
bb3:
  br label %bb4
bb4:
  %t18 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t18, ptr %l18, !tbaa !27
  %t19 = load i64, ptr %l3, !tbaa !24
  %t21 = getelementptr { i64, ptr }, ptr %l18, i32 0, i32 1
  %t22 = load ptr, ptr %t21, !tbaa !27
  %t23 = getelementptr ptr, ptr %t22, i64 %t19
  %t24 = load ptr, ptr %t23, !tbaa !39
  store ptr %t24, ptr %l5, !tbaa !29
  %t26 = load ptr, ptr %l0, !tbaa !29
  %t27 = load ptr, ptr %l5, !tbaa !29
  %t29 = getelementptr %"compiler/typed:Alt", ptr %t27, i32 0, i32 0
  %t30 = load ptr, ptr %t29, !tbaa !29
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aLastUses_2eexpr(ptr %v0, ptr %v1, ptr %t26, ptr %t30)
  br label %bb5
bb5:
  %t34 = load ptr, ptr %l5, !tbaa !29
  %t36 = getelementptr %"compiler/typed:Alt", ptr %t34, i32 0, i32 1
  %t37 = load { i64, ptr }, ptr %t36, !tbaa !27
  store { i64, ptr } %t37, ptr %l6, !tbaa !27
  store i64 0, ptr %l7, !tbaa !24
  %t39 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t41 = extractvalue { i64, ptr } %t39, 0
  store i64 %t41, ptr %l8, !tbaa !24
  br label %bb6
bb6:
  %t43 = load i64, ptr %l7, !tbaa !24
  %t44 = load i64, ptr %l8, !tbaa !24
  %t47 = icmp slt i64 %t43, %t44
  %t49 = xor i1 %t47, true
  br i1 %t49, label %bb7, label %bb8
bb7:
  br label %bb14
bb8:
  br label %bb9
bb9:
  %t51 = load { i64, ptr }, ptr %l6, !tbaa !27
  store { i64, ptr } %t51, ptr %l33, !tbaa !27
  %t52 = load i64, ptr %l7, !tbaa !24
  %t54 = getelementptr { i64, ptr }, ptr %l33, i32 0, i32 1
  %t55 = load ptr, ptr %t54, !tbaa !27
  %t56 = getelementptr ptr, ptr %t55, i64 %t52
  %t57 = load ptr, ptr %t56, !tbaa !39
  store ptr %t57, ptr %l9, !tbaa !29
  %t59 = load ptr, ptr %l0, !tbaa !29
  %t60 = load ptr, ptr %l9, !tbaa !29
  %t62 = getelementptr %"compiler/typed:Bind", ptr %t60, i32 0, i32 0
  %t63 = load i32, ptr %t62, !tbaa !23
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aLastUses_2edeclare(ptr %v0, ptr %t59, i32 %t63)
  br label %bb10
bb10:
  %t66 = load ptr, ptr %l0, !tbaa !29
  %t67 = load ptr, ptr %l9, !tbaa !29
  %t69 = getelementptr %"compiler/typed:Bind", ptr %t67, i32 0, i32 1
  %t70 = load ptr, ptr %t69, !tbaa !29
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aLastUses_2eexpr(ptr %v0, ptr %v1, ptr %t66, ptr %t70)
  br label %bb11
bb11:
  %t74 = load ptr, ptr %l0, !tbaa !29
  %t75 = load ptr, ptr %l9, !tbaa !29
  %t77 = getelementptr %"compiler/typed:Bind", ptr %t75, i32 0, i32 0
  %t78 = load i32, ptr %t77, !tbaa !23
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aLastUses_2emention(ptr %v0, ptr %t74, i32 %t78)
  br label %bb12
bb12:
  br label %bb13
bb13:
  %t81 = load i64, ptr %l7, !tbaa !24
  %t83 = add i64 %t81, 1
  store i64 %t83, ptr %l7, !tbaa !24
  br label %bb6
bb14:
  br label %bb15
bb15:
  %t85 = load i64, ptr %l3, !tbaa !24
  %t87 = add i64 %t85, 1
  store i64 %t87, ptr %l3, !tbaa !24
  br label %bb1
bb16:
  %t89 = load ptr, ptr %l0, !tbaa !29
  %t90 = load ptr, ptr %l1, !tbaa !29
  %t92 = getelementptr %"compiler/typed:Arm", ptr %t90, i32 0, i32 2
  %t93 = load ptr, ptr %t92, !tbaa !29
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aLastUses_2eexpr(ptr %v0, ptr %v1, ptr %t89, ptr %t93)
  br label %bb17
bb17:
  %t96 = load ptr, ptr %l0, !tbaa !29
  %t97 = load ptr, ptr %l1, !tbaa !29
  %t99 = getelementptr %"compiler/typed:Arm", ptr %t97, i32 0, i32 3
  %t100 = load ptr, ptr %t99, !tbaa !29
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aLastUses_2eBlock(ptr %v0, ptr %v1, ptr %t96, ptr %t100)
  br label %bb18
bb18:
  %t103 = load ptr, ptr %l0, !tbaa !29
  %t104 = load ptr, ptr %l1, !tbaa !29
  %t106 = getelementptr %"compiler/typed:Arm", ptr %t104, i32 0, i32 4
  %t107 = load ptr, ptr %t106, !tbaa !29
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aLastUses_2eexpr(ptr %v0, ptr %v1, ptr %t103, ptr %t107)
  br label %bb19
bb19:
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2ftyped_2ecompiler_2ftyped_3aLastUses_2eexpr(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca ptr
  %l4 = alloca ptr
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca ptr
  %l8 = alloca ptr
  %l9 = alloca ptr
  %l10 = alloca i64
  %l11 = alloca i64
  %l12 = alloca ptr
  %l13 = alloca { i64, ptr }
  %l14 = alloca ptr
  %l15 = alloca ptr
  %l16 = alloca ptr
  %l17 = alloca ptr
  %l18 = alloca { i64, ptr }
  %l19 = alloca i64
  %l20 = alloca i64
  %l22 = alloca ptr
  %l23 = alloca ptr
  %l24 = alloca ptr
  %l25 = alloca { i64, ptr }
  %l26 = alloca i64
  %l27 = alloca i64
  %l28 = alloca ptr
  %l30 = alloca ptr
  %l33 = alloca ptr
  %l34 = alloca i1
  %l37 = alloca ptr
  %l38 = alloca i1
  %l41 = alloca ptr
  %l42 = alloca i1
  %l47 = alloca ptr
  %l48 = alloca i1
  %l53 = alloca ptr
  %l54 = alloca i1
  %l61 = alloca ptr
  %l62 = alloca i1
  %l71 = alloca ptr
  %l72 = alloca i1
  %l81 = alloca i64
  %l84 = alloca ptr
  %l85 = alloca i1
  %l99 = alloca ptr
  %l100 = alloca i1
  %l109 = alloca i64
  %l121 = alloca ptr
  %l122 = alloca i1
  %l130 = alloca ptr
  %l137 = alloca ptr
  %l140 = alloca ptr
  %l141 = alloca i1
  %l148 = alloca ptr
  %l149 = alloca i1
  %l165 = alloca ptr
  %l166 = alloca i1
  %l182 = alloca ptr
  %l183 = alloca i1
  %l194 = alloca ptr
  %l195 = alloca i1
  %l211 = alloca { i64, ptr }
  %l222 = alloca ptr
  %l228 = alloca ptr
  %l229 = alloca i1
  %l240 = alloca ptr
  %l241 = alloca i1
  %l248 = alloca ptr
  %l249 = alloca i1
  %l262 = alloca { i64, ptr }
  %l265 = alloca ptr
  %l266 = alloca i1
  %l276 = alloca ptr
  %l277 = alloca i1
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
  %t5 = load ptr, ptr %l1, !tbaa !29
  store ptr %t5, ptr %l33, !tbaa !29
  store i1 false, ptr %l34, !tbaa !21
  %t6 = load ptr, ptr %l33, !tbaa !29
  %t7 = icmp ne ptr %t6, null
  br i1 %t7, label %bb4, label %bb5
bb4:
  %t9 = load ptr, ptr %l33, !tbaa !29
  %t10 = load i64, ptr %t9, !range !{i64 0, i64 18}
  %t12 = icmp eq i64 %t10, 0
  store i1 %t12, ptr %l34, !tbaa !21
  br label %bb5
bb5:
  %t13 = load i1, ptr %l34, !tbaa !21
  br i1 %t13, label %bb6, label %bb7
bb6:
  br label %bb12
bb7:
  %t14 = load ptr, ptr %l1, !tbaa !29
  store ptr %t14, ptr %l37, !tbaa !29
  store i1 false, ptr %l38, !tbaa !21
  %t15 = load ptr, ptr %l37, !tbaa !29
  %t16 = icmp ne ptr %t15, null
  br i1 %t16, label %bb8, label %bb9
bb8:
  %t18 = load ptr, ptr %l37, !tbaa !29
  %t19 = load i64, ptr %t18, !range !{i64 0, i64 18}
  %t21 = icmp eq i64 %t19, 1
  store i1 %t21, ptr %l38, !tbaa !21
  br label %bb9
bb9:
  %t22 = load i1, ptr %l38, !tbaa !21
  br i1 %t22, label %bb10, label %bb11
bb10:
  br label %bb12
bb11:
  br label %bb13
bb12:
  br label %bb170
bb13:
  %t23 = load ptr, ptr %l1, !tbaa !29
  store ptr %t23, ptr %l41, !tbaa !29
  store i1 false, ptr %l42, !tbaa !21
  %t24 = load ptr, ptr %l41, !tbaa !29
  %t25 = icmp ne ptr %t24, null
  br i1 %t25, label %bb14, label %bb15
bb14:
  %t27 = load ptr, ptr %l41, !tbaa !29
  %t28 = load i64, ptr %t27, !range !{i64 0, i64 18}
  %t30 = icmp eq i64 %t28, 2
  store i1 %t30, ptr %l42, !tbaa !21
  br label %bb15
bb15:
  %t31 = load i1, ptr %l42, !tbaa !21
  br i1 %t31, label %bb16, label %bb17
bb16:
  %t32 = load ptr, ptr %l1, !tbaa !29
  %t34 = getelementptr { i64, [5 x i64] }, ptr %t32, i32 0, i32 1
  %t35 = getelementptr { %"compiler/source:Span", i32, ptr, i32 }, ptr %t34, i32 0, i32 2
  %t36 = load ptr, ptr %t35
  store ptr %t36, ptr %l2, !tbaa !29
  br label %bb26
bb17:
  %t38 = load ptr, ptr %l1, !tbaa !29
  store ptr %t38, ptr %l47, !tbaa !29
  store i1 false, ptr %l48, !tbaa !21
  %t39 = load ptr, ptr %l47, !tbaa !29
  %t40 = icmp ne ptr %t39, null
  br i1 %t40, label %bb18, label %bb19
bb18:
  %t42 = load ptr, ptr %l47, !tbaa !29
  %t43 = load i64, ptr %t42, !range !{i64 0, i64 18}
  %t45 = icmp eq i64 %t43, 3
  store i1 %t45, ptr %l48, !tbaa !21
  br label %bb19
bb19:
  %t46 = load i1, ptr %l48, !tbaa !21
  br i1 %t46, label %bb20, label %bb21
bb20:
  %t47 = load ptr, ptr %l1, !tbaa !29
  %t49 = getelementptr { i64, [5 x i64] }, ptr %t47, i32 0, i32 1
  %t50 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t49, i32 0, i32 2
  %t51 = load ptr, ptr %t50
  store ptr %t51, ptr %l2, !tbaa !29
  br label %bb26
bb21:
  %t53 = load ptr, ptr %l1, !tbaa !29
  store ptr %t53, ptr %l53, !tbaa !29
  store i1 false, ptr %l54, !tbaa !21
  %t54 = load ptr, ptr %l53, !tbaa !29
  %t55 = icmp ne ptr %t54, null
  br i1 %t55, label %bb22, label %bb23
bb22:
  %t57 = load ptr, ptr %l53, !tbaa !29
  %t58 = load i64, ptr %t57, !range !{i64 0, i64 18}
  %t60 = icmp eq i64 %t58, 4
  store i1 %t60, ptr %l54, !tbaa !21
  br label %bb23
bb23:
  %t61 = load i1, ptr %l54, !tbaa !21
  br i1 %t61, label %bb24, label %bb25
bb24:
  %t62 = load ptr, ptr %l1, !tbaa !29
  %t64 = getelementptr { i64, [5 x i64] }, ptr %t62, i32 0, i32 1
  %t65 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t64, i32 0, i32 2
  %t66 = load ptr, ptr %t65
  store ptr %t66, ptr %l2, !tbaa !29
  br label %bb26
bb25:
  br label %bb28
bb26:
  %t68 = load ptr, ptr %l0, !tbaa !29
  %t69 = load ptr, ptr %l2, !tbaa !29
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aLastUses_2eplace(ptr %v0, ptr %v1, ptr %t68, ptr %t69)
  br label %bb27
bb27:
  br label %bb170
bb28:
  %t72 = load ptr, ptr %l1, !tbaa !29
  store ptr %t72, ptr %l61, !tbaa !29
  store i1 false, ptr %l62, !tbaa !21
  %t73 = load ptr, ptr %l61, !tbaa !29
  %t74 = icmp ne ptr %t73, null
  br i1 %t74, label %bb29, label %bb30
bb29:
  %t76 = load ptr, ptr %l61, !tbaa !29
  %t77 = load i64, ptr %t76, !range !{i64 0, i64 18}
  %t79 = icmp eq i64 %t77, 5
  store i1 %t79, ptr %l62, !tbaa !21
  br label %bb30
bb30:
  %t80 = load i1, ptr %l62, !tbaa !21
  br i1 %t80, label %bb31, label %bb32
bb31:
  %t81 = load ptr, ptr %l1, !tbaa !29
  %t83 = getelementptr { i64, [5 x i64] }, ptr %t81, i32 0, i32 1
  %t84 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t83, i32 0, i32 2
  %t85 = load ptr, ptr %t84
  store ptr %t85, ptr %l3, !tbaa !29
  br label %bb33
bb32:
  br label %bb35
bb33:
  %t87 = load ptr, ptr %l0, !tbaa !29
  %t88 = load ptr, ptr %l3, !tbaa !29
  %t90 = getelementptr %"compiler/typed:Promote", ptr %t88, i32 0, i32 0
  %t91 = load ptr, ptr %t90, !tbaa !29
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aLastUses_2eexpr(ptr %v0, ptr %v1, ptr %t87, ptr %t91)
  br label %bb34
bb34:
  br label %bb170
bb35:
  %t95 = load ptr, ptr %l1, !tbaa !29
  store ptr %t95, ptr %l71, !tbaa !29
  store i1 false, ptr %l72, !tbaa !21
  %t96 = load ptr, ptr %l71, !tbaa !29
  %t97 = icmp ne ptr %t96, null
  br i1 %t97, label %bb36, label %bb37
bb36:
  %t99 = load ptr, ptr %l71, !tbaa !29
  %t100 = load i64, ptr %t99, !range !{i64 0, i64 18}
  %t102 = icmp eq i64 %t100, 6
  store i1 %t102, ptr %l72, !tbaa !21
  br label %bb37
bb37:
  %t103 = load i1, ptr %l72, !tbaa !21
  br i1 %t103, label %bb38, label %bb39
bb38:
  %t104 = load ptr, ptr %l1, !tbaa !29
  %t106 = getelementptr { i64, [5 x i64] }, ptr %t104, i32 0, i32 1
  %t107 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t106, i32 0, i32 2
  %t108 = load ptr, ptr %t107
  store ptr %t108, ptr %l4, !tbaa !29
  br label %bb40
bb39:
  br label %bb56
bb40:
  %t110 = load ptr, ptr %l0, !tbaa !29
  %t112 = getelementptr %"compiler/typed:LastUses", ptr %t110, i32 0, i32 3
  %t113 = load i64, ptr %t112, !tbaa !24
  store i64 %t113, ptr %l5, !tbaa !24
  %t115 = load ptr, ptr %l0, !tbaa !29
  %t117 = getelementptr %"compiler/typed:LastUses", ptr %t115, i32 0, i32 6
  %t119 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %t117)
  store i64 %t119, ptr %l81
  br label %bb41
bb41:
  %t120 = load i64, ptr %l81, !tbaa !24
  store i64 %t120, ptr %l6, !tbaa !24
  %t121 = load ptr, ptr %l4, !tbaa !29
  %t123 = getelementptr %"compiler/typed:Call", ptr %t121, i32 0, i32 0
  %t124 = load ptr, ptr %t123, !tbaa !29
  store ptr %t124, ptr %l7, !tbaa !29
  %t126 = load ptr, ptr %l7, !tbaa !29
  store ptr %t126, ptr %l84, !tbaa !29
  store i1 false, ptr %l85, !tbaa !21
  %t127 = load ptr, ptr %l84, !tbaa !29
  %t128 = icmp ne ptr %t127, null
  br i1 %t128, label %bb42, label %bb43
bb42:
  %t130 = load ptr, ptr %l84, !tbaa !29
  %t131 = load i64, ptr %t130, !range !{i64 0, i64 5}
  %t133 = icmp eq i64 %t131, 2
  store i1 %t133, ptr %l85, !tbaa !21
  br label %bb43
bb43:
  %t134 = load i1, ptr %l85, !tbaa !21
  br i1 %t134, label %bb44, label %bb45
bb44:
  %t135 = load ptr, ptr %l7, !tbaa !29
  %t137 = getelementptr { i64, [3 x i64] }, ptr %t135, i32 0, i32 1
  %t138 = getelementptr { ptr }, ptr %t137, i32 0, i32 0
  %t139 = load ptr, ptr %t138
  store ptr %t139, ptr %l8, !tbaa !29
  br label %bb46
bb45:
  br label %bb48
bb46:
  %t141 = load ptr, ptr %l0, !tbaa !29
  %t142 = load ptr, ptr %l8, !tbaa !29
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aLastUses_2eexpr(ptr %v0, ptr %v1, ptr %t141, ptr %t142)
  br label %bb47
bb47:
  br label %bb53
bb48:
  br i1 true, label %bb49, label %bb50
bb49:
  br label %bb51
bb50:
  br label %bb52
bb51:
  br label %bb53
bb52:
  call void @__olang_check_failed(ptr @olang_loc_198aad80d0550ab5_c06608159f163401)
  unreachable
bb53:
  %t146 = load ptr, ptr %l0, !tbaa !29
  %t147 = load ptr, ptr %l4, !tbaa !29
  %t149 = getelementptr %"compiler/typed:Call", ptr %t147, i32 0, i32 1
  %t150 = load { i64, ptr }, ptr %t149, !tbaa !27
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aLastUses_2eexprs(ptr %v0, ptr %v1, ptr %t146, { i64, ptr } %t150)
  br label %bb54
bb54:
  %t153 = load ptr, ptr %l0, !tbaa !29
  %t154 = load i64, ptr %l5, !tbaa !24
  %t155 = load i64, ptr %l6, !tbaa !24
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aLastUses_2eapart(ptr %v0, ptr %t153, i64 %t154, i64 %t155)
  br label %bb55
bb55:
  br label %bb170
bb56:
  %t159 = load ptr, ptr %l1, !tbaa !29
  store ptr %t159, ptr %l99, !tbaa !29
  store i1 false, ptr %l100, !tbaa !21
  %t160 = load ptr, ptr %l99, !tbaa !29
  %t161 = icmp ne ptr %t160, null
  br i1 %t161, label %bb57, label %bb58
bb57:
  %t163 = load ptr, ptr %l99, !tbaa !29
  %t164 = load i64, ptr %t163, !range !{i64 0, i64 18}
  %t166 = icmp eq i64 %t164, 7
  store i1 %t166, ptr %l100, !tbaa !21
  br label %bb58
bb58:
  %t167 = load i1, ptr %l100, !tbaa !21
  br i1 %t167, label %bb59, label %bb60
bb59:
  %t168 = load ptr, ptr %l1, !tbaa !29
  %t170 = getelementptr { i64, [5 x i64] }, ptr %t168, i32 0, i32 1
  %t171 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t170, i32 0, i32 2
  %t172 = load ptr, ptr %t171
  store ptr %t172, ptr %l9, !tbaa !29
  br label %bb61
bb60:
  br label %bb67
bb61:
  %t174 = load ptr, ptr %l0, !tbaa !29
  %t176 = getelementptr %"compiler/typed:LastUses", ptr %t174, i32 0, i32 3
  %t177 = load i64, ptr %t176, !tbaa !24
  store i64 %t177, ptr %l10, !tbaa !24
  %t179 = load ptr, ptr %l0, !tbaa !29
  %t181 = getelementptr %"compiler/typed:LastUses", ptr %t179, i32 0, i32 6
  %t183 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %t181)
  store i64 %t183, ptr %l109
  br label %bb62
bb62:
  %t184 = load i64, ptr %l109, !tbaa !24
  store i64 %t184, ptr %l11, !tbaa !24
  %t185 = load ptr, ptr %l0, !tbaa !29
  %t186 = load ptr, ptr %l9, !tbaa !29
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aLastUses_2ecopyOf(ptr %v0, ptr %v1, ptr %t185, ptr %t186)
  br label %bb63
bb63:
  %t189 = load ptr, ptr %l0, !tbaa !29
  %t190 = load ptr, ptr %l9, !tbaa !29
  %t192 = getelementptr %"compiler/typed:Make", ptr %t190, i32 0, i32 2
  %t193 = load { i64, ptr }, ptr %t192, !tbaa !27
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aLastUses_2eexprs(ptr %v0, ptr %v1, ptr %t189, { i64, ptr } %t193)
  br label %bb64
bb64:
  %t196 = load ptr, ptr %l0, !tbaa !29
  %t197 = load ptr, ptr %l9, !tbaa !29
  %t199 = getelementptr %"compiler/typed:Make", ptr %t197, i32 0, i32 3
  %t200 = load ptr, ptr %t199, !tbaa !29
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aLastUses_2eexpr(ptr %v0, ptr %v1, ptr %t196, ptr %t200)
  br label %bb65
bb65:
  %t203 = load ptr, ptr %l0, !tbaa !29
  %t204 = load i64, ptr %l10, !tbaa !24
  %t205 = load i64, ptr %l11, !tbaa !24
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aLastUses_2eapart(ptr %v0, ptr %t203, i64 %t204, i64 %t205)
  br label %bb66
bb66:
  br label %bb170
bb67:
  %t209 = load ptr, ptr %l1, !tbaa !29
  store ptr %t209, ptr %l121, !tbaa !29
  store i1 false, ptr %l122, !tbaa !21
  %t210 = load ptr, ptr %l121, !tbaa !29
  %t211 = icmp ne ptr %t210, null
  br i1 %t211, label %bb68, label %bb69
bb68:
  %t213 = load ptr, ptr %l121, !tbaa !29
  %t214 = load i64, ptr %t213, !range !{i64 0, i64 18}
  %t216 = icmp eq i64 %t214, 8
  store i1 %t216, ptr %l122, !tbaa !21
  br label %bb69
bb69:
  %t217 = load i1, ptr %l122, !tbaa !21
  br i1 %t217, label %bb70, label %bb71
bb70:
  %t218 = load ptr, ptr %l1, !tbaa !29
  %t220 = getelementptr { i64, [5 x i64] }, ptr %t218, i32 0, i32 1
  %t221 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t220, i32 0, i32 2
  %t222 = load ptr, ptr %t221
  store ptr %t222, ptr %l12, !tbaa !29
  br label %bb72
bb71:
  br label %bb75
bb72:
  %t224 = load ptr, ptr %l0, !tbaa !29
  %t225 = load ptr, ptr %l12, !tbaa !29
  %t227 = getelementptr %"compiler/typed:Collect", ptr %t225, i32 0, i32 0
  %t228 = load ptr, ptr %t227, !tbaa !29
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aLastUses_2eexpr(ptr %v0, ptr %v1, ptr %t224, ptr %t228)
  br label %bb73
bb73:
  %t231 = load ptr, ptr %l0, !tbaa !29
  store ptr %t231, ptr %l130, !tbaa !29
  %t232 = load ptr, ptr %l130, !tbaa !29
  %t233 = getelementptr %"compiler/typed:LastUses", ptr %t232, i32 0, i32 4
  %t234 = load i64, ptr %t233, !tbaa !24
  %t236 = add i64 %t234, 1
  %t238 = load ptr, ptr %l130, !tbaa !29
  %t239 = getelementptr %"compiler/typed:LastUses", ptr %t238, i32 0, i32 4
  store i64 %t236, ptr %t239, !tbaa !24
  %t240 = load ptr, ptr %l0, !tbaa !29
  %t241 = load ptr, ptr %l12, !tbaa !29
  %t243 = getelementptr %"compiler/typed:Collect", ptr %t241, i32 0, i32 1
  %t244 = load ptr, ptr %t243, !tbaa !29
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aLastUses_2eBlock(ptr %v0, ptr %v1, ptr %t240, ptr %t244)
  br label %bb74
bb74:
  %t248 = load ptr, ptr %l0, !tbaa !29
  store ptr %t248, ptr %l137, !tbaa !29
  %t249 = load ptr, ptr %l137, !tbaa !29
  %t250 = getelementptr %"compiler/typed:LastUses", ptr %t249, i32 0, i32 4
  %t251 = load i64, ptr %t250, !tbaa !24
  %t253 = sub i64 %t251, 1
  %t255 = load ptr, ptr %l137, !tbaa !29
  %t256 = getelementptr %"compiler/typed:LastUses", ptr %t255, i32 0, i32 4
  store i64 %t253, ptr %t256, !tbaa !24
  br label %bb170
bb75:
  %t257 = load ptr, ptr %l1, !tbaa !29
  store ptr %t257, ptr %l140, !tbaa !29
  store i1 false, ptr %l141, !tbaa !21
  %t258 = load ptr, ptr %l140, !tbaa !29
  %t259 = icmp ne ptr %t258, null
  br i1 %t259, label %bb76, label %bb77
bb76:
  %t261 = load ptr, ptr %l140, !tbaa !29
  %t262 = load i64, ptr %t261, !range !{i64 0, i64 18}
  %t264 = icmp eq i64 %t262, 9
  store i1 %t264, ptr %l141, !tbaa !21
  br label %bb77
bb77:
  %t265 = load i1, ptr %l141, !tbaa !21
  br i1 %t265, label %bb78, label %bb79
bb78:
  %t266 = load ptr, ptr %l1, !tbaa !29
  %t268 = getelementptr { i64, [5 x i64] }, ptr %t266, i32 0, i32 1
  %t269 = getelementptr { %"compiler/source:Span", i32, i32, i32, { i64, ptr } }, ptr %t268, i32 0, i32 4
  %t270 = load { i64, ptr }, ptr %t269
  store { i64, ptr } %t270, ptr %l13, !tbaa !27
  br label %bb80
bb79:
  br label %bb82
bb80:
  %t272 = load ptr, ptr %l0, !tbaa !29
  %t273 = load { i64, ptr }, ptr %l13, !tbaa !27
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aLastUses_2eexprs(ptr %v0, ptr %v1, ptr %t272, { i64, ptr } %t273)
  br label %bb81
bb81:
  br label %bb170
bb82:
  %t276 = load ptr, ptr %l1, !tbaa !29
  store ptr %t276, ptr %l148, !tbaa !29
  store i1 false, ptr %l149, !tbaa !21
  %t277 = load ptr, ptr %l148, !tbaa !29
  %t278 = icmp ne ptr %t277, null
  br i1 %t278, label %bb83, label %bb84
bb83:
  %t280 = load ptr, ptr %l148, !tbaa !29
  %t281 = load i64, ptr %t280, !range !{i64 0, i64 18}
  %t283 = icmp eq i64 %t281, 10
  store i1 %t283, ptr %l149, !tbaa !21
  br label %bb84
bb84:
  %t284 = load i1, ptr %l149, !tbaa !21
  br i1 %t284, label %bb85, label %bb86
bb85:
  %t285 = load ptr, ptr %l1, !tbaa !29
  %t287 = getelementptr { i64, [5 x i64] }, ptr %t285, i32 0, i32 1
  %t288 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t287, i32 0, i32 2
  %t289 = load ptr, ptr %t288
  store ptr %t289, ptr %l14, !tbaa !29
  br label %bb87
bb86:
  br label %bb91
bb87:
  %t291 = load ptr, ptr %l0, !tbaa !29
  %t292 = load ptr, ptr %l14, !tbaa !29
  %t294 = getelementptr %"compiler/typed:Slice", ptr %t292, i32 0, i32 0
  %t295 = load ptr, ptr %t294, !tbaa !29
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aLastUses_2eplace(ptr %v0, ptr %v1, ptr %t291, ptr %t295)
  br label %bb88
bb88:
  %t298 = load ptr, ptr %l0, !tbaa !29
  %t299 = load ptr, ptr %l14, !tbaa !29
  %t301 = getelementptr %"compiler/typed:Slice", ptr %t299, i32 0, i32 1
  %t302 = load ptr, ptr %t301, !tbaa !29
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aLastUses_2eexpr(ptr %v0, ptr %v1, ptr %t298, ptr %t302)
  br label %bb89
bb89:
  %t306 = load ptr, ptr %l0, !tbaa !29
  %t307 = load ptr, ptr %l14, !tbaa !29
  %t309 = getelementptr %"compiler/typed:Slice", ptr %t307, i32 0, i32 2
  %t310 = load ptr, ptr %t309, !tbaa !29
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aLastUses_2eexpr(ptr %v0, ptr %v1, ptr %t306, ptr %t310)
  br label %bb90
bb90:
  br label %bb170
bb91:
  %t314 = load ptr, ptr %l1, !tbaa !29
  store ptr %t314, ptr %l165, !tbaa !29
  store i1 false, ptr %l166, !tbaa !21
  %t315 = load ptr, ptr %l165, !tbaa !29
  %t316 = icmp ne ptr %t315, null
  br i1 %t316, label %bb92, label %bb93
bb92:
  %t318 = load ptr, ptr %l165, !tbaa !29
  %t319 = load i64, ptr %t318, !range !{i64 0, i64 18}
  %t321 = icmp eq i64 %t319, 11
  store i1 %t321, ptr %l166, !tbaa !21
  br label %bb93
bb93:
  %t322 = load i1, ptr %l166, !tbaa !21
  br i1 %t322, label %bb94, label %bb95
bb94:
  %t323 = load ptr, ptr %l1, !tbaa !29
  %t325 = getelementptr { i64, [5 x i64] }, ptr %t323, i32 0, i32 1
  %t326 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t325, i32 0, i32 2
  %t327 = load ptr, ptr %t326
  store ptr %t327, ptr %l15, !tbaa !29
  br label %bb96
bb95:
  br label %bb100
bb96:
  %t329 = load ptr, ptr %l0, !tbaa !29
  %t330 = load ptr, ptr %l15, !tbaa !29
  %t332 = getelementptr %"compiler/typed:Cond", ptr %t330, i32 0, i32 0
  %t333 = load ptr, ptr %t332, !tbaa !29
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aLastUses_2eexpr(ptr %v0, ptr %v1, ptr %t329, ptr %t333)
  br label %bb97
bb97:
  %t337 = load ptr, ptr %l0, !tbaa !29
  %t338 = load ptr, ptr %l15, !tbaa !29
  %t340 = getelementptr %"compiler/typed:Cond", ptr %t338, i32 0, i32 1
  %t341 = load ptr, ptr %t340, !tbaa !29
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aLastUses_2eexpr(ptr %v0, ptr %v1, ptr %t337, ptr %t341)
  br label %bb98
bb98:
  %t344 = load ptr, ptr %l0, !tbaa !29
  %t345 = load ptr, ptr %l15, !tbaa !29
  %t347 = getelementptr %"compiler/typed:Cond", ptr %t345, i32 0, i32 2
  %t348 = load ptr, ptr %t347, !tbaa !29
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aLastUses_2eexpr(ptr %v0, ptr %v1, ptr %t344, ptr %t348)
  br label %bb99
bb99:
  br label %bb170
bb100:
  %t352 = load ptr, ptr %l1, !tbaa !29
  store ptr %t352, ptr %l182, !tbaa !29
  store i1 false, ptr %l183, !tbaa !21
  %t353 = load ptr, ptr %l182, !tbaa !29
  %t354 = icmp ne ptr %t353, null
  br i1 %t354, label %bb101, label %bb102
bb101:
  %t356 = load ptr, ptr %l182, !tbaa !29
  %t357 = load i64, ptr %t356, !range !{i64 0, i64 18}
  %t359 = icmp eq i64 %t357, 12
  store i1 %t359, ptr %l183, !tbaa !21
  br label %bb102
bb102:
  %t360 = load i1, ptr %l183, !tbaa !21
  br i1 %t360, label %bb103, label %bb104
bb103:
  %t361 = load ptr, ptr %l1, !tbaa !29
  %t363 = getelementptr { i64, [5 x i64] }, ptr %t361, i32 0, i32 1
  %t364 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t363, i32 0, i32 2
  %t365 = load ptr, ptr %t364
  store ptr %t365, ptr %l16, !tbaa !29
  br label %bb105
bb104:
  br label %bb108
bb105:
  %t367 = load ptr, ptr %l0, !tbaa !29
  %t368 = load ptr, ptr %l16, !tbaa !29
  %t370 = getelementptr %"compiler/typed:Seq", ptr %t368, i32 0, i32 0
  %t371 = load { i64, ptr }, ptr %t370, !tbaa !27
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aLastUses_2estmts(ptr %v0, ptr %v1, ptr %t367, { i64, ptr } %t371)
  br label %bb106
bb106:
  %t374 = load ptr, ptr %l0, !tbaa !29
  %t375 = load ptr, ptr %l16, !tbaa !29
  %t377 = getelementptr %"compiler/typed:Seq", ptr %t375, i32 0, i32 1
  %t378 = load ptr, ptr %t377, !tbaa !29
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aLastUses_2eexpr(ptr %v0, ptr %v1, ptr %t374, ptr %t378)
  br label %bb107
bb107:
  br label %bb170
bb108:
  %t381 = load ptr, ptr %l1, !tbaa !29
  store ptr %t381, ptr %l194, !tbaa !29
  store i1 false, ptr %l195, !tbaa !21
  %t382 = load ptr, ptr %l194, !tbaa !29
  %t383 = icmp ne ptr %t382, null
  br i1 %t383, label %bb109, label %bb110
bb109:
  %t385 = load ptr, ptr %l194, !tbaa !29
  %t386 = load i64, ptr %t385, !range !{i64 0, i64 18}
  %t388 = icmp eq i64 %t386, 13
  store i1 %t388, ptr %l195, !tbaa !21
  br label %bb110
bb110:
  %t389 = load i1, ptr %l195, !tbaa !21
  br i1 %t389, label %bb111, label %bb112
bb111:
  %t390 = load ptr, ptr %l1, !tbaa !29
  %t392 = getelementptr { i64, [5 x i64] }, ptr %t390, i32 0, i32 1
  %t393 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t392, i32 0, i32 2
  %t394 = load ptr, ptr %t393
  store ptr %t394, ptr %l17, !tbaa !29
  br label %bb113
bb112:
  br label %bb129
bb113:
  %t396 = load ptr, ptr %l0, !tbaa !29
  %t397 = load ptr, ptr %l17, !tbaa !29
  %t399 = getelementptr %"compiler/typed:Match", ptr %t397, i32 0, i32 0
  %t400 = load { i64, ptr }, ptr %t399, !tbaa !27
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aLastUses_2estmts(ptr %v0, ptr %v1, ptr %t396, { i64, ptr } %t400)
  br label %bb114
bb114:
  %t403 = load ptr, ptr %l17, !tbaa !29
  %t405 = getelementptr %"compiler/typed:Match", ptr %t403, i32 0, i32 1
  %t406 = load { i64, ptr }, ptr %t405, !tbaa !27
  store { i64, ptr } %t406, ptr %l18, !tbaa !27
  store i64 0, ptr %l19, !tbaa !24
  %t408 = load { i64, ptr }, ptr %l18, !tbaa !27
  %t410 = extractvalue { i64, ptr } %t408, 0
  store i64 %t410, ptr %l20, !tbaa !24
  br label %bb115
bb115:
  %t412 = load i64, ptr %l19, !tbaa !24
  %t413 = load i64, ptr %l20, !tbaa !24
  %t416 = icmp slt i64 %t412, %t413
  %t418 = xor i1 %t416, true
  br i1 %t418, label %bb116, label %bb117
bb116:
  br label %bb121
bb117:
  br label %bb118
bb118:
  %t420 = load { i64, ptr }, ptr %l18, !tbaa !27
  store { i64, ptr } %t420, ptr %l211, !tbaa !27
  %t421 = load i64, ptr %l19, !tbaa !24
  %t423 = getelementptr { i64, ptr }, ptr %l211, i32 0, i32 1
  %t424 = load ptr, ptr %t423, !tbaa !27
  %t425 = getelementptr ptr, ptr %t424, i64 %t421
  %t426 = load ptr, ptr %t425, !tbaa !39
  %t428 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aLastUses_2earm(ptr %v0, ptr %v1, ptr %t428, ptr %t426)
  br label %bb119
bb119:
  br label %bb120
bb120:
  %t432 = load i64, ptr %l19, !tbaa !24
  %t434 = add i64 %t432, 1
  store i64 %t434, ptr %l19, !tbaa !24
  br label %bb115
bb121:
  %t436 = load ptr, ptr %l17, !tbaa !29
  %t438 = getelementptr %"compiler/typed:Match", ptr %t436, i32 0, i32 2
  %t439 = load ptr, ptr %t438, !tbaa !29
  %t441 = icmp eq ptr %t439, null
  %t443 = xor i1 %t441, true
  br i1 %t443, label %bb122, label %bb123
bb122:
  %t445 = load ptr, ptr %l0, !tbaa !29
  store ptr %t445, ptr %l222, !tbaa !29
  %t446 = load ptr, ptr %l17, !tbaa !29
  %t448 = getelementptr %"compiler/typed:Match", ptr %t446, i32 0, i32 2
  %t449 = load ptr, ptr %t448, !tbaa !29
  %t451 = icmp eq ptr %t449, null
  br i1 %t451, label %bb124, label %bb125
bb123:
  br label %bb128
bb124:
  call void @__olang_check_failed(ptr @olang_loc_28655f8a56cf669d_dc60f62ebe04c639)
  unreachable
bb125:
  br label %bb126
bb126:
  %t453 = load ptr, ptr %l17, !tbaa !29
  %t455 = getelementptr %"compiler/typed:Match", ptr %t453, i32 0, i32 2
  %t456 = load ptr, ptr %t455, !tbaa !29
  %t457 = load ptr, ptr %l222, !tbaa !29
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aLastUses_2earm(ptr %v0, ptr %v1, ptr %t457, ptr %t456)
  br label %bb127
bb127:
  br label %bb128
bb128:
  br label %bb170
bb129:
  %t459 = load ptr, ptr %l1, !tbaa !29
  store ptr %t459, ptr %l228, !tbaa !29
  store i1 false, ptr %l229, !tbaa !21
  %t460 = load ptr, ptr %l228, !tbaa !29
  %t461 = icmp ne ptr %t460, null
  br i1 %t461, label %bb130, label %bb131
bb130:
  %t463 = load ptr, ptr %l228, !tbaa !29
  %t464 = load i64, ptr %t463, !range !{i64 0, i64 18}
  %t466 = icmp eq i64 %t464, 14
  store i1 %t466, ptr %l229, !tbaa !21
  br label %bb131
bb131:
  %t467 = load i1, ptr %l229, !tbaa !21
  br i1 %t467, label %bb132, label %bb133
bb132:
  %t468 = load ptr, ptr %l1, !tbaa !29
  %t470 = getelementptr { i64, [5 x i64] }, ptr %t468, i32 0, i32 1
  %t471 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t470, i32 0, i32 2
  %t472 = load ptr, ptr %t471
  store ptr %t472, ptr %l22, !tbaa !29
  br label %bb134
bb133:
  br label %bb137
bb134:
  %t474 = load ptr, ptr %l0, !tbaa !29
  %t475 = load ptr, ptr %l22, !tbaa !29
  %t477 = getelementptr %"compiler/typed:Try", ptr %t475, i32 0, i32 0
  %t478 = load ptr, ptr %t477, !tbaa !29
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aLastUses_2eexpr(ptr %v0, ptr %v1, ptr %t474, ptr %t478)
  br label %bb135
bb135:
  %t481 = load ptr, ptr %l0, !tbaa !29
  %t482 = load ptr, ptr %l22, !tbaa !29
  %t484 = getelementptr %"compiler/typed:Try", ptr %t482, i32 0, i32 1
  %t485 = load { i64, ptr }, ptr %t484, !tbaa !27
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aLastUses_2eclauses(ptr %v0, ptr %v1, ptr %t481, { i64, ptr } %t485)
  br label %bb136
bb136:
  br label %bb170
bb137:
  %t488 = load ptr, ptr %l1, !tbaa !29
  store ptr %t488, ptr %l240, !tbaa !29
  store i1 false, ptr %l241, !tbaa !21
  %t489 = load ptr, ptr %l240, !tbaa !29
  %t490 = icmp ne ptr %t489, null
  br i1 %t490, label %bb138, label %bb139
bb138:
  %t492 = load ptr, ptr %l240, !tbaa !29
  %t493 = load i64, ptr %t492, !range !{i64 0, i64 18}
  %t495 = icmp eq i64 %t493, 15
  store i1 %t495, ptr %l241, !tbaa !21
  br label %bb139
bb139:
  %t496 = load i1, ptr %l241, !tbaa !21
  br i1 %t496, label %bb140, label %bb141
bb140:
  %t497 = load ptr, ptr %l1, !tbaa !29
  %t499 = getelementptr { i64, [5 x i64] }, ptr %t497, i32 0, i32 1
  %t500 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t499, i32 0, i32 2
  %t501 = load ptr, ptr %t500
  store ptr %t501, ptr %l23, !tbaa !29
  br label %bb142
bb141:
  br label %bb144
bb142:
  %t503 = load ptr, ptr %l0, !tbaa !29
  %t504 = load ptr, ptr %l23, !tbaa !29
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aLastUses_2efnVal(ptr %v0, ptr %v1, ptr %t503, ptr %t504)
  br label %bb143
bb143:
  br label %bb170
bb144:
  %t507 = load ptr, ptr %l1, !tbaa !29
  store ptr %t507, ptr %l248, !tbaa !29
  store i1 false, ptr %l249, !tbaa !21
  %t508 = load ptr, ptr %l248, !tbaa !29
  %t509 = icmp ne ptr %t508, null
  br i1 %t509, label %bb145, label %bb146
bb145:
  %t511 = load ptr, ptr %l248, !tbaa !29
  %t512 = load i64, ptr %t511, !range !{i64 0, i64 18}
  %t514 = icmp eq i64 %t512, 16
  store i1 %t514, ptr %l249, !tbaa !21
  br label %bb146
bb146:
  %t515 = load i1, ptr %l249, !tbaa !21
  br i1 %t515, label %bb147, label %bb148
bb147:
  %t516 = load ptr, ptr %l1, !tbaa !29
  %t518 = getelementptr { i64, [5 x i64] }, ptr %t516, i32 0, i32 1
  %t519 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t518, i32 0, i32 2
  %t520 = load ptr, ptr %t519
  store ptr %t520, ptr %l24, !tbaa !29
  br label %bb149
bb148:
  br label %bb162
bb149:
  %t522 = load ptr, ptr %l24, !tbaa !29
  %t524 = getelementptr %"compiler/typed:Text", ptr %t522, i32 0, i32 0
  %t525 = load { i64, ptr }, ptr %t524, !tbaa !27
  store { i64, ptr } %t525, ptr %l25, !tbaa !27
  store i64 0, ptr %l26, !tbaa !24
  %t527 = load { i64, ptr }, ptr %l25, !tbaa !27
  %t529 = extractvalue { i64, ptr } %t527, 0
  store i64 %t529, ptr %l27, !tbaa !24
  br label %bb150
bb150:
  %t531 = load i64, ptr %l26, !tbaa !24
  %t532 = load i64, ptr %l27, !tbaa !24
  %t535 = icmp slt i64 %t531, %t532
  %t537 = xor i1 %t535, true
  br i1 %t537, label %bb151, label %bb152
bb151:
  br label %bb161
bb152:
  br label %bb153
bb153:
  %t539 = load { i64, ptr }, ptr %l25, !tbaa !27
  store { i64, ptr } %t539, ptr %l262, !tbaa !27
  %t540 = load i64, ptr %l26, !tbaa !24
  %t542 = getelementptr { i64, ptr }, ptr %l262, i32 0, i32 1
  %t543 = load ptr, ptr %t542, !tbaa !27
  %t544 = getelementptr ptr, ptr %t543, i64 %t540
  %t545 = load ptr, ptr %t544, !tbaa !39
  store ptr %t545, ptr %l28, !tbaa !29
  %t547 = load ptr, ptr %l28, !tbaa !29
  store ptr %t547, ptr %l265, !tbaa !29
  store i1 false, ptr %l266, !tbaa !21
  %t548 = load ptr, ptr %l265, !tbaa !29
  %t549 = icmp ne ptr %t548, null
  br i1 %t549, label %bb154, label %bb155
bb154:
  %t551 = load ptr, ptr %l265, !tbaa !29
  %t552 = load i64, ptr %t551, !range !{i64 0, i64 2}
  %t554 = icmp eq i64 %t552, 1
  store i1 %t554, ptr %l266, !tbaa !21
  br label %bb155
bb155:
  %t555 = load i1, ptr %l266, !tbaa !21
  br i1 %t555, label %bb156, label %bb157
bb156:
  %t556 = load ptr, ptr %l28, !tbaa !29
  %t558 = getelementptr { i64, [2 x i64] }, ptr %t556, i32 0, i32 1
  %t559 = getelementptr { ptr }, ptr %t558, i32 0, i32 0
  %t560 = load ptr, ptr %t559
  %t562 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aLastUses_2eexpr(ptr %v0, ptr %v1, ptr %t562, ptr %t560)
  br label %bb158
bb157:
  br label %bb159
bb158:
  br label %bb159
bb159:
  br label %bb160
bb160:
  %t567 = load i64, ptr %l26, !tbaa !24
  %t569 = add i64 %t567, 1
  store i64 %t569, ptr %l26, !tbaa !24
  br label %bb150
bb161:
  br label %bb170
bb162:
  %t571 = load ptr, ptr %l1, !tbaa !29
  store ptr %t571, ptr %l276, !tbaa !29
  store i1 false, ptr %l277, !tbaa !21
  %t572 = load ptr, ptr %l276, !tbaa !29
  %t573 = icmp ne ptr %t572, null
  br i1 %t573, label %bb163, label %bb164
bb163:
  %t575 = load ptr, ptr %l276, !tbaa !29
  %t576 = load i64, ptr %t575, !range !{i64 0, i64 18}
  %t578 = icmp eq i64 %t576, 17
  store i1 %t578, ptr %l277, !tbaa !21
  br label %bb164
bb164:
  %t579 = load i1, ptr %l277, !tbaa !21
  br i1 %t579, label %bb165, label %bb166
bb165:
  %t580 = load ptr, ptr %l1, !tbaa !29
  %t582 = getelementptr { i64, [5 x i64] }, ptr %t580, i32 0, i32 1
  %t583 = getelementptr { %"compiler/source:Span", i64, ptr }, ptr %t582, i32 0, i32 2
  %t584 = load ptr, ptr %t583
  store ptr %t584, ptr %l30, !tbaa !29
  br label %bb167
bb166:
  br label %bb169
bb167:
  %t586 = load ptr, ptr %l0, !tbaa !29
  %t587 = load ptr, ptr %l30, !tbaa !29
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aLastUses_2eexpr(ptr %v0, ptr %v1, ptr %t586, ptr %t587)
  br label %bb168
bb168:
  br label %bb170
bb169:
  call void @__olang_check_failed(ptr @olang_loc_d36f57f073c6a2ff_232866ca740484ab)
  unreachable
bb170:
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2ftyped_2ecompiler_2ftyped_3aLastUses_2eexprs(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1) #0 {
entry:
  %l2 = alloca { i64, ptr }
  %l3 = alloca i64
  %l4 = alloca i64
  %l13 = alloca { i64, ptr }
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
  br label %bb7
bb3:
  br label %bb4
bb4:
  %t15 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t15, ptr %l13, !tbaa !27
  %t16 = load i64, ptr %l3, !tbaa !24
  %t18 = getelementptr { i64, ptr }, ptr %l13, i32 0, i32 1
  %t19 = load ptr, ptr %t18, !tbaa !27
  %t20 = getelementptr ptr, ptr %t19, i64 %t16
  %t21 = load ptr, ptr %t20, !tbaa !39
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aLastUses_2eexpr(ptr %v0, ptr %v1, ptr %a0, ptr %t21)
  br label %bb5
bb5:
  br label %bb6
bb6:
  %t28 = load i64, ptr %l3, !tbaa !24
  %t30 = add i64 %t28, 1
  store i64 %t30, ptr %l3, !tbaa !24
  br label %bb1
bb7:
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2ftyped_2ecompiler_2ftyped_3aLastUses_2efnVal(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca { i64, ptr }
  %l3 = alloca { i64, ptr }
  %l4 = alloca i64
  %l5 = alloca i64
  %l7 = alloca ptr
  %l8 = alloca ptr
  %l9 = alloca i1
  %l21 = alloca { i64, ptr }
  %l30 = alloca ptr
  %l31 = alloca i1
  %l39 = alloca ptr
  %l40 = alloca i1
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
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 3}
  %t8 = icmp eq i64 %t6, 1
  store i1 %t8, ptr %l9, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l9, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  %t10 = load ptr, ptr %l1, !tbaa !29
  %t12 = getelementptr { i64, [4 x i64] }, ptr %t10, i32 0, i32 1
  %t13 = getelementptr { i32, { i64, ptr }, i32 }, ptr %t12, i32 0, i32 1
  %t14 = load { i64, ptr }, ptr %t13
  store { i64, ptr } %t14, ptr %l2, !tbaa !27
  br label %bb5
bb4:
  br label %bb13
bb5:
  %t16 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t16, ptr %l3, !tbaa !27
  store i64 0, ptr %l4, !tbaa !24
  %t18 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t20 = extractvalue { i64, ptr } %t18, 0
  store i64 %t20, ptr %l5, !tbaa !24
  br label %bb6
bb6:
  %t22 = load i64, ptr %l4, !tbaa !24
  %t23 = load i64, ptr %l5, !tbaa !24
  %t26 = icmp slt i64 %t22, %t23
  %t28 = xor i1 %t26, true
  br i1 %t28, label %bb7, label %bb8
bb7:
  br label %bb12
bb8:
  br label %bb9
bb9:
  %t30 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t30, ptr %l21, !tbaa !27
  %t31 = load i64, ptr %l4, !tbaa !24
  %t33 = getelementptr { i64, ptr }, ptr %l21, i32 0, i32 1
  %t34 = load ptr, ptr %t33, !tbaa !27
  %t35 = getelementptr ptr, ptr %t34, i64 %t31
  %t36 = load ptr, ptr %t35, !tbaa !39
  %t38 = load ptr, ptr %l0, !tbaa !29
  %t41 = getelementptr %"compiler/typed:Capture", ptr %t36, i32 0, i32 1
  %t42 = load ptr, ptr %t41, !tbaa !29
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aLastUses_2eexpr(ptr %v0, ptr %v1, ptr %t38, ptr %t42)
  br label %bb10
bb10:
  br label %bb11
bb11:
  %t46 = load i64, ptr %l4, !tbaa !24
  %t48 = add i64 %t46, 1
  store i64 %t48, ptr %l4, !tbaa !24
  br label %bb6
bb12:
  br label %bb27
bb13:
  %t50 = load ptr, ptr %l1, !tbaa !29
  store ptr %t50, ptr %l30, !tbaa !29
  store i1 false, ptr %l31, !tbaa !21
  %t51 = load ptr, ptr %l30, !tbaa !29
  %t52 = icmp ne ptr %t51, null
  br i1 %t52, label %bb14, label %bb15
bb14:
  %t54 = load ptr, ptr %l30, !tbaa !29
  %t55 = load i64, ptr %t54, !range !{i64 0, i64 3}
  %t57 = icmp eq i64 %t55, 2
  store i1 %t57, ptr %l31, !tbaa !21
  br label %bb15
bb15:
  %t58 = load i1, ptr %l31, !tbaa !21
  br i1 %t58, label %bb16, label %bb17
bb16:
  %t59 = load ptr, ptr %l1, !tbaa !29
  %t61 = getelementptr { i64, [4 x i64] }, ptr %t59, i32 0, i32 1
  %t62 = getelementptr { i32, ptr, i32 }, ptr %t61, i32 0, i32 1
  %t63 = load ptr, ptr %t62
  store ptr %t63, ptr %l7, !tbaa !29
  br label %bb18
bb17:
  br label %bb20
bb18:
  %t65 = load ptr, ptr %l0, !tbaa !29
  %t66 = load ptr, ptr %l7, !tbaa !29
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aLastUses_2eexpr(ptr %v0, ptr %v1, ptr %t65, ptr %t66)
  br label %bb19
bb19:
  br label %bb27
bb20:
  %t70 = load ptr, ptr %l1, !tbaa !29
  store ptr %t70, ptr %l39, !tbaa !29
  store i1 false, ptr %l40, !tbaa !21
  %t71 = load ptr, ptr %l39, !tbaa !29
  %t72 = icmp ne ptr %t71, null
  br i1 %t72, label %bb21, label %bb22
bb21:
  %t74 = load ptr, ptr %l39, !tbaa !29
  %t75 = load i64, ptr %t74, !range !{i64 0, i64 3}
  %t77 = icmp eq i64 %t75, 0
  store i1 %t77, ptr %l40, !tbaa !21
  br label %bb22
bb22:
  %t78 = load i1, ptr %l40, !tbaa !21
  br i1 %t78, label %bb23, label %bb24
bb23:
  br label %bb25
bb24:
  br label %bb26
bb25:
  br label %bb27
bb26:
  call void @__olang_check_failed(ptr @olang_loc_faea1712f2053751_ed9fc9ee56afb56d)
  unreachable
bb27:
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2ftyped_2ecompiler_2ftyped_3aLastUses_2elaterBlock(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca ptr
  %l7 = alloca ptr
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1, ptr %l2, !tbaa !29
  %t2 = load ptr, ptr %l2, !tbaa !29
  %t3 = getelementptr %"compiler/typed:LastUses", ptr %t2, i32 0, i32 5
  %t4 = load i64, ptr %t3, !tbaa !24
  %t6 = add i64 %t4, 1
  %t8 = load ptr, ptr %l2, !tbaa !29
  %t9 = getelementptr %"compiler/typed:LastUses", ptr %t8, i32 0, i32 5
  store i64 %t6, ptr %t9, !tbaa !24
  %t10 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aLastUses_2eBlock(ptr %v0, ptr %v1, ptr %t10, ptr %a1)
  br label %bb1
bb1:
  %t14 = load ptr, ptr %l0, !tbaa !29
  store ptr %t14, ptr %l7, !tbaa !29
  %t15 = load ptr, ptr %l7, !tbaa !29
  %t16 = getelementptr %"compiler/typed:LastUses", ptr %t15, i32 0, i32 5
  %t17 = load i64, ptr %t16, !tbaa !24
  %t19 = sub i64 %t17, 1
  %t21 = load ptr, ptr %l7, !tbaa !29
  %t22 = getelementptr %"compiler/typed:LastUses", ptr %t21, i32 0, i32 5
  store i64 %t19, ptr %t22, !tbaa !24
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2ftyped_2ecompiler_2ftyped_3aLocalUses_2eborrow(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1, i32 %a2, { i64, [1 x i64] } %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l3 = alloca { i64, [1 x i64] }
  %l5 = alloca ptr
  %l8 = alloca i64
  %l22 = alloca i1
  %t34 = alloca { i64, [1 x i64] }, align 8
  %t51 = alloca { i64, [1 x i64] }, align 8
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store { i64, [1 x i64] } %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/typed:LocalUses", ptr %t1, i32 0, i32 0
  %t4 = load ptr, ptr %t3, !tbaa !29
  store ptr %t4, ptr %l5, !tbaa !29
  %t6 = load ptr, ptr %l5, !tbaa !29
  %t7 = call ptr @__olang_scope_or(ptr %v2, ptr %t6)
  %t8 = ptrtoint ptr %t7 to i64
  %t10 = inttoptr i64 %t8 to ptr
  %t11 = load ptr, ptr %l5, !tbaa !29
  %t13 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePermOf(ptr %t10, ptr %t11, i32 %a2)
  store i64 %t13, ptr %l8
  br label %bb1
bb1:
  %t14 = load i64, ptr @G_2ecompiler_2ftypes_2eWritable, !tbaa !24
  %t15 = load i64, ptr %l8, !tbaa !24
  %t17 = and i64 %t15, %t14
  %t19 = icmp ne i64 %t17, 0
  br i1 %t19, label %bb2, label %bb3
bb2:
  %t21 = load ptr, ptr %l0, !tbaa !29
  %t22 = load ptr, ptr %l1, !tbaa !29
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aLocalUses_2ewrite(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %t21, ptr %t22, i1 true)
  br label %bb4
bb3:
  br label %bb9
bb4:
  %t25 = load { i64, [1 x i64] }, ptr %l3
  %t27 = extractvalue { i64, [1 x i64] } %t25, 0
  %t28 = icmp eq i64 %t27, 1
  %t30 = xor i1 %t28, true
  br i1 %t30, label %bb5, label %bb6
bb5:
  %t32 = load ptr, ptr %l0, !tbaa !29
  %t33 = load ptr, ptr %l1, !tbaa !29
  store { i64, [1 x i64] } zeroinitializer, ptr %t34
  %t35 = getelementptr { i64, [1 x i64] }, ptr %t34, i32 0, i32 0
  store i64 5, ptr %t35
  %t36 = load { i64, [1 x i64] }, ptr %t34
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aLocalUses_2euse(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %t32, ptr %t33, { i64, [1 x i64] } %t36, i1 true)
  br label %bb7
bb6:
  br label %bb8
bb7:
  br label %bb8
bb8:
  br label %ret
bb9:
  %t40 = load { i64, [1 x i64] }, ptr %l3
  %t42 = extractvalue { i64, [1 x i64] } %t40, 0
  %t43 = icmp eq i64 %t42, 3
  br i1 %t43, label %bb10, label %bb11
bb10:
  store i1 true, ptr %l22, !tbaa !21
  br label %bb12
bb11:
  %t45 = load { i64, [1 x i64] }, ptr %l3
  %t47 = extractvalue { i64, [1 x i64] } %t45, 0
  %t48 = icmp eq i64 %t47, 2
  store i1 %t48, ptr %l22, !tbaa !21
  br label %bb12
bb12:
  %t50 = load i1, ptr %l22, !tbaa !21
  br i1 %t50, label %bb13, label %bb14
bb13:
  store { i64, [1 x i64] } zeroinitializer, ptr %t51
  %t52 = getelementptr { i64, [1 x i64] }, ptr %t51, i32 0, i32 0
  store i64 5, ptr %t52
  %t53 = load { i64, [1 x i64] }, ptr %t51
  store { i64, [1 x i64] } %t53, ptr %l3
  br label %bb15
bb14:
  br label %bb15
bb15:
  %t55 = load ptr, ptr %l0, !tbaa !29
  %t56 = load ptr, ptr %l1, !tbaa !29
  %t57 = load { i64, [1 x i64] }, ptr %l3
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aLocalUses_2euse(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %t55, ptr %t56, { i64, [1 x i64] } %t57, i1 true)
  br label %bb16
bb16:
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2ftyped_2ecompiler_2ftyped_3aLocalUses_2estmts(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, { i64, ptr } %a1) #0 {
entry:
  %l2 = alloca { i64, ptr }
  %l3 = alloca i64
  %l4 = alloca i64
  %l13 = alloca { i64, ptr }
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
  br label %bb7
bb3:
  br label %bb4
bb4:
  %t15 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t15, ptr %l13, !tbaa !27
  %t16 = load i64, ptr %l3, !tbaa !24
  %t18 = getelementptr { i64, ptr }, ptr %l13, i32 0, i32 1
  %t19 = load ptr, ptr %t18, !tbaa !27
  %t20 = getelementptr ptr, ptr %t19, i64 %t16
  %t21 = load ptr, ptr %t20, !tbaa !39
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aLocalUses_2estmt(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %t21)
  br label %bb5
bb5:
  br label %bb6
bb6:
  %t27 = load i64, ptr %l3, !tbaa !24
  %t29 = add i64 %t27, 1
  store i64 %t29, ptr %l3, !tbaa !24
  br label %bb1
bb7:
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2ftyped_2ecompiler_2ftyped_3aLocalUses_2etempsWritten(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca ptr
  %l4 = alloca ptr
  %l5 = alloca ptr
  %l6 = alloca i64
  %l7 = alloca ptr
  %l8 = alloca i1
  %l15 = alloca ptr
  %l16 = alloca i1
  %l24 = alloca ptr
  %l25 = alloca i1
  %l33 = alloca ptr
  %l34 = alloca i1
  %l41 = alloca i64
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
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aLocalUses_2etempsWritten(ptr %v0, ptr %v1, ptr %t16, ptr %t17)
  br label %bb6
bb6:
  br label %bb37
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
  br label %bb14
bb12:
  %t35 = load ptr, ptr %l0, !tbaa !29
  %t36 = load ptr, ptr %l3, !tbaa !29
  %t38 = getelementptr %"compiler/typed:Elem", ptr %t36, i32 0, i32 0
  %t39 = load ptr, ptr %t38, !tbaa !29
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aLocalUses_2etempsWritten(ptr %v0, ptr %v1, ptr %t35, ptr %t39)
  br label %bb13
bb13:
  br label %bb37
bb14:
  %t42 = load ptr, ptr %l1, !tbaa !29
  store ptr %t42, ptr %l24, !tbaa !29
  store i1 false, ptr %l25, !tbaa !21
  %t43 = load ptr, ptr %l24, !tbaa !29
  %t44 = icmp ne ptr %t43, null
  br i1 %t44, label %bb15, label %bb16
bb15:
  %t46 = load ptr, ptr %l24, !tbaa !29
  %t47 = load i64, ptr %t46, !range !{i64 0, i64 8}
  %t49 = icmp eq i64 %t47, 5
  store i1 %t49, ptr %l25, !tbaa !21
  br label %bb16
bb16:
  %t50 = load i1, ptr %l25, !tbaa !21
  br i1 %t50, label %bb17, label %bb18
bb17:
  %t51 = load ptr, ptr %l1, !tbaa !29
  %t53 = getelementptr { i64, [4 x i64] }, ptr %t51, i32 0, i32 1
  %t54 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t53, i32 0, i32 2
  %t55 = load ptr, ptr %t54
  store ptr %t55, ptr %l4, !tbaa !29
  br label %bb19
bb18:
  br label %bb21
bb19:
  %t57 = load ptr, ptr %l0, !tbaa !29
  %t58 = load ptr, ptr %l4, !tbaa !29
  %t60 = getelementptr %"compiler/typed:Payload", ptr %t58, i32 0, i32 0
  %t61 = load ptr, ptr %t60, !tbaa !29
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aLocalUses_2etempsWritten(ptr %v0, ptr %v1, ptr %t57, ptr %t61)
  br label %bb20
bb20:
  br label %bb37
bb21:
  %t64 = load ptr, ptr %l1, !tbaa !29
  store ptr %t64, ptr %l33, !tbaa !29
  store i1 false, ptr %l34, !tbaa !21
  %t65 = load ptr, ptr %l33, !tbaa !29
  %t66 = icmp ne ptr %t65, null
  br i1 %t66, label %bb22, label %bb23
bb22:
  %t68 = load ptr, ptr %l33, !tbaa !29
  %t69 = load i64, ptr %t68, !range !{i64 0, i64 8}
  %t71 = icmp eq i64 %t69, 6
  store i1 %t71, ptr %l34, !tbaa !21
  br label %bb23
bb23:
  %t72 = load i1, ptr %l34, !tbaa !21
  br i1 %t72, label %bb24, label %bb25
bb24:
  %t73 = load ptr, ptr %l1, !tbaa !29
  %t75 = getelementptr { i64, [4 x i64] }, ptr %t73, i32 0, i32 1
  %t76 = getelementptr { %"compiler/source:Span", i32, ptr, i32 }, ptr %t75, i32 0, i32 2
  %t77 = load ptr, ptr %t76
  store ptr %t77, ptr %l5, !tbaa !29
  br label %bb26
bb25:
  br label %bb32
bb26:
  %t79 = load ptr, ptr %l0, !tbaa !29
  %t80 = load ptr, ptr %l5, !tbaa !29
  %t83 = call i64 @compiler_2ftyped_2ecompiler_2ftyped_3aLocalUses_2eexprRoot(ptr %v0, ptr %v1, ptr %t79, ptr %t80)
  store i64 %t83, ptr %l41
  br label %bb27
bb27:
  %t84 = load i64, ptr %l41, !tbaa !24
  store i64 %t84, ptr %l6, !tbaa !24
  %t85 = load i64, ptr %l6, !tbaa !24
  %t87 = icmp sge i64 %t85, 0
  br i1 %t87, label %bb28, label %bb29
bb28:
  %t89 = load ptr, ptr %l0, !tbaa !29
  %t91 = getelementptr %"compiler/typed:LocalUses", ptr %t89, i32 0, i32 2
  %t92 = load i64, ptr %l6, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eSetAt_3cBool_3e(ptr %v0, ptr %t91, i64 %t92, i1 true)
  br label %bb30
bb29:
  br label %bb31
bb30:
  br label %bb31
bb31:
  br label %bb37
bb32:
  br i1 true, label %bb33, label %bb34
bb33:
  br label %bb35
bb34:
  br label %bb36
bb35:
  br label %bb37
bb36:
  call void @__olang_check_failed(ptr @olang_loc_2dc1351d0e6e1c9_f66be85c5a6693dd)
  unreachable
bb37:
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2ftyped_2ecompiler_2ftyped_3aLocalUses_2ewrite(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1, i1 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l3 = alloca i64
  %l8 = alloca i64
  %l15 = alloca i1
  %l18 = alloca i1
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
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
  store i64 %t9, ptr %l8
  br label %bb2
bb2:
  %t10 = load i64, ptr %l8, !tbaa !24
  store i64 %t10, ptr %l3, !tbaa !24
  %t11 = load i64, ptr %l3, !tbaa !24
  %t13 = icmp slt i64 %t11, 0
  br i1 %t13, label %bb3, label %bb4
bb3:
  %t15 = load ptr, ptr %l0, !tbaa !29
  %t16 = load ptr, ptr %l1, !tbaa !29
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aLocalUses_2etempsWritten(ptr %v0, ptr %v1, ptr %t15, ptr %t16)
  br label %bb5
bb4:
  br label %bb6
bb5:
  br label %ret
bb6:
  %t21 = xor i1 %a2, true
  br i1 %t21, label %bb7, label %bb8
bb7:
  %t23 = load ptr, ptr %l0, !tbaa !29
  %t24 = load ptr, ptr %l1, !tbaa !29
  %t27 = call i1 @compiler_2ftyped_2ecompiler_2ftyped_3aLocalUses_2escalarField(ptr %v0, ptr %v1, ptr %v2, ptr %t23, ptr %t24)
  store i1 %t27, ptr %l18
  br label %bb9
bb8:
  store i1 false, ptr %l15, !tbaa !21
  br label %bb10
bb9:
  %t28 = load i1, ptr %l18, !tbaa !21
  store i1 %t28, ptr %l15, !tbaa !21
  br label %bb10
bb10:
  %t29 = load i1, ptr %l15, !tbaa !21
  br i1 %t29, label %bb11, label %bb12
bb11:
  %t30 = load ptr, ptr %l0, !tbaa !29
  %t32 = getelementptr %"compiler/typed:LocalUses", ptr %t30, i32 0, i32 3
  %t33 = load i64, ptr %l3, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eSetAt_3cBool_3e(ptr %v0, ptr %t32, i64 %t33, i1 true)
  br label %bb13
bb12:
  br label %bb14
bb13:
  br label %ret
bb14:
  %t36 = load ptr, ptr %l0, !tbaa !29
  %t38 = getelementptr %"compiler/typed:LocalUses", ptr %t36, i32 0, i32 2
  %t39 = load i64, ptr %l3, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eSetAt_3cBool_3e(ptr %v0, ptr %t38, i64 %t39, i1 true)
  br label %bb15
bb15:
  br label %ret
ret:
  ret void
}

define dso_local i32 @compiler_2ftyped_2ecompiler_2ftyped_3aLvalue_2eType(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca i32
  %l3 = alloca i32
  %l4 = alloca ptr
  %l5 = alloca i1
  %l10 = alloca ptr
  %l11 = alloca i1
  %l16 = alloca ptr
  %l17 = alloca i1
  %l22 = alloca ptr
  %l23 = alloca i1
  %l29 = alloca ptr
  %l30 = alloca i1
  %l35 = alloca ptr
  %l36 = alloca i1
  %l41 = alloca ptr
  %l42 = alloca i1
  %l47 = alloca ptr
  %l48 = alloca i1
  %rv = alloca i32
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
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 8}
  %t8 = icmp eq i64 %t6, 0
  store i1 %t8, ptr %l5, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l5, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  %t10 = load ptr, ptr %l0, !tbaa !29
  %t12 = getelementptr { i64, [4 x i64] }, ptr %t10, i32 0, i32 1
  %t13 = getelementptr { %"compiler/source:Span", i32, i32 }, ptr %t12, i32 0, i32 1
  %t14 = load i32, ptr %t13
  store i32 %t14, ptr %l1, !tbaa !23
  br label %bb17
bb4:
  %t16 = load ptr, ptr %l0, !tbaa !29
  store ptr %t16, ptr %l10, !tbaa !29
  store i1 false, ptr %l11, !tbaa !21
  %t17 = load ptr, ptr %l10, !tbaa !29
  %t18 = icmp ne ptr %t17, null
  br i1 %t18, label %bb5, label %bb6
bb5:
  %t20 = load ptr, ptr %l10, !tbaa !29
  %t21 = load i64, ptr %t20, !range !{i64 0, i64 8}
  %t23 = icmp eq i64 %t21, 1
  store i1 %t23, ptr %l11, !tbaa !21
  br label %bb6
bb6:
  %t24 = load i1, ptr %l11, !tbaa !21
  br i1 %t24, label %bb7, label %bb8
bb7:
  %t25 = load ptr, ptr %l0, !tbaa !29
  %t27 = getelementptr { i64, [4 x i64] }, ptr %t25, i32 0, i32 1
  %t28 = getelementptr { %"compiler/source:Span", i32, i64, i32 }, ptr %t27, i32 0, i32 1
  %t29 = load i32, ptr %t28
  store i32 %t29, ptr %l1, !tbaa !23
  br label %bb17
bb8:
  %t31 = load ptr, ptr %l0, !tbaa !29
  store ptr %t31, ptr %l16, !tbaa !29
  store i1 false, ptr %l17, !tbaa !21
  %t32 = load ptr, ptr %l16, !tbaa !29
  %t33 = icmp ne ptr %t32, null
  br i1 %t33, label %bb9, label %bb10
bb9:
  %t35 = load ptr, ptr %l16, !tbaa !29
  %t36 = load i64, ptr %t35, !range !{i64 0, i64 8}
  %t38 = icmp eq i64 %t36, 2
  store i1 %t38, ptr %l17, !tbaa !21
  br label %bb10
bb10:
  %t39 = load i1, ptr %l17, !tbaa !21
  br i1 %t39, label %bb11, label %bb12
bb11:
  %t40 = load ptr, ptr %l0, !tbaa !29
  %t42 = getelementptr { i64, [4 x i64] }, ptr %t40, i32 0, i32 1
  %t43 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t42, i32 0, i32 1
  %t44 = load i32, ptr %t43
  store i32 %t44, ptr %l1, !tbaa !23
  br label %bb17
bb12:
  %t46 = load ptr, ptr %l0, !tbaa !29
  store ptr %t46, ptr %l22, !tbaa !29
  store i1 false, ptr %l23, !tbaa !21
  %t47 = load ptr, ptr %l22, !tbaa !29
  %t48 = icmp ne ptr %t47, null
  br i1 %t48, label %bb13, label %bb14
bb13:
  %t50 = load ptr, ptr %l22, !tbaa !29
  %t51 = load i64, ptr %t50, !range !{i64 0, i64 8}
  %t53 = icmp eq i64 %t51, 3
  store i1 %t53, ptr %l23, !tbaa !21
  br label %bb14
bb14:
  %t54 = load i1, ptr %l23, !tbaa !21
  br i1 %t54, label %bb15, label %bb16
bb15:
  %t55 = load ptr, ptr %l0, !tbaa !29
  %t57 = getelementptr { i64, [4 x i64] }, ptr %t55, i32 0, i32 1
  %t58 = getelementptr { %"compiler/source:Span", i32, ptr, i64 }, ptr %t57, i32 0, i32 1
  %t59 = load i32, ptr %t58
  store i32 %t59, ptr %l1, !tbaa !23
  br label %bb17
bb16:
  br label %bb18
bb17:
  %t61 = load i32, ptr %l1, !tbaa !23
  store i32 %t61, ptr %l3, !tbaa !23
  br label %bb37
bb18:
  %t63 = load ptr, ptr %l0, !tbaa !29
  store ptr %t63, ptr %l29, !tbaa !29
  store i1 false, ptr %l30, !tbaa !21
  %t64 = load ptr, ptr %l29, !tbaa !29
  %t65 = icmp ne ptr %t64, null
  br i1 %t65, label %bb19, label %bb20
bb19:
  %t67 = load ptr, ptr %l29, !tbaa !29
  %t68 = load i64, ptr %t67, !range !{i64 0, i64 8}
  %t70 = icmp eq i64 %t68, 4
  store i1 %t70, ptr %l30, !tbaa !21
  br label %bb20
bb20:
  %t71 = load i1, ptr %l30, !tbaa !21
  br i1 %t71, label %bb21, label %bb22
bb21:
  %t72 = load ptr, ptr %l0, !tbaa !29
  %t74 = getelementptr { i64, [4 x i64] }, ptr %t72, i32 0, i32 1
  %t75 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t74, i32 0, i32 1
  %t76 = load i32, ptr %t75
  store i32 %t76, ptr %l2, !tbaa !23
  br label %bb35
bb22:
  %t78 = load ptr, ptr %l0, !tbaa !29
  store ptr %t78, ptr %l35, !tbaa !29
  store i1 false, ptr %l36, !tbaa !21
  %t79 = load ptr, ptr %l35, !tbaa !29
  %t80 = icmp ne ptr %t79, null
  br i1 %t80, label %bb23, label %bb24
bb23:
  %t82 = load ptr, ptr %l35, !tbaa !29
  %t83 = load i64, ptr %t82, !range !{i64 0, i64 8}
  %t85 = icmp eq i64 %t83, 5
  store i1 %t85, ptr %l36, !tbaa !21
  br label %bb24
bb24:
  %t86 = load i1, ptr %l36, !tbaa !21
  br i1 %t86, label %bb25, label %bb26
bb25:
  %t87 = load ptr, ptr %l0, !tbaa !29
  %t89 = getelementptr { i64, [4 x i64] }, ptr %t87, i32 0, i32 1
  %t90 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t89, i32 0, i32 1
  %t91 = load i32, ptr %t90
  store i32 %t91, ptr %l2, !tbaa !23
  br label %bb35
bb26:
  %t93 = load ptr, ptr %l0, !tbaa !29
  store ptr %t93, ptr %l41, !tbaa !29
  store i1 false, ptr %l42, !tbaa !21
  %t94 = load ptr, ptr %l41, !tbaa !29
  %t95 = icmp ne ptr %t94, null
  br i1 %t95, label %bb27, label %bb28
bb27:
  %t97 = load ptr, ptr %l41, !tbaa !29
  %t98 = load i64, ptr %t97, !range !{i64 0, i64 8}
  %t100 = icmp eq i64 %t98, 6
  store i1 %t100, ptr %l42, !tbaa !21
  br label %bb28
bb28:
  %t101 = load i1, ptr %l42, !tbaa !21
  br i1 %t101, label %bb29, label %bb30
bb29:
  %t102 = load ptr, ptr %l0, !tbaa !29
  %t104 = getelementptr { i64, [4 x i64] }, ptr %t102, i32 0, i32 1
  %t105 = getelementptr { %"compiler/source:Span", i32, ptr, i32 }, ptr %t104, i32 0, i32 1
  %t106 = load i32, ptr %t105
  store i32 %t106, ptr %l2, !tbaa !23
  br label %bb35
bb30:
  %t108 = load ptr, ptr %l0, !tbaa !29
  store ptr %t108, ptr %l47, !tbaa !29
  store i1 false, ptr %l48, !tbaa !21
  %t109 = load ptr, ptr %l47, !tbaa !29
  %t110 = icmp ne ptr %t109, null
  br i1 %t110, label %bb31, label %bb32
bb31:
  %t112 = load ptr, ptr %l47, !tbaa !29
  %t113 = load i64, ptr %t112, !range !{i64 0, i64 8}
  %t115 = icmp eq i64 %t113, 7
  store i1 %t115, ptr %l48, !tbaa !21
  br label %bb32
bb32:
  %t116 = load i1, ptr %l48, !tbaa !21
  br i1 %t116, label %bb33, label %bb34
bb33:
  %t117 = load ptr, ptr %l0, !tbaa !29
  %t119 = getelementptr { i64, [4 x i64] }, ptr %t117, i32 0, i32 1
  %t120 = getelementptr { %"compiler/source:Span", i32 }, ptr %t119, i32 0, i32 1
  %t121 = load i32, ptr %t120
  store i32 %t121, ptr %l2, !tbaa !23
  br label %bb35
bb34:
  br label %bb36
bb35:
  %t123 = load i32, ptr %l2, !tbaa !23
  store i32 %t123, ptr %l3, !tbaa !23
  br label %bb37
bb36:
  call void @__olang_check_failed(ptr @olang_loc_e2587c8ec5c6f861_9513078f5b00021d)
  unreachable
bb37:
  %t125 = load i32, ptr %l3, !tbaa !23
  store i32 %t125, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local i64 @compiler_2ftyped_2ecompiler_2ftyped_3aPlan_2eDerivedSlot(ptr %v0, ptr %a0, i64 %a1, i64 %a2) #0 {
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
  %l11 = alloca i64
  %l15 = alloca i64
  %l18 = alloca i64
  %l39 = alloca i64
  %l42 = alloca i1
  %l46 = alloca i64
  %l60 = alloca i64
  %rv = alloca i64
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  store i64 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  store i64 0, ptr %l3, !tbaa !24
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/typed:Plan", ptr %t1, i32 0, i32 15
  %t5 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %t3)
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
  %t35 = load i64, ptr %l7, !tbaa !24
  %t36 = load i64, ptr %l6, !tbaa !24
  %t39 = icmp slt i64 %t35, %t36
  %t41 = xor i1 %t39, true
  br i1 %t41, label %bb9, label %bb10
bb9:
  br label %bb21
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
  %t55 = getelementptr %"compiler/typed:Plan", ptr %t53, i32 0, i32 15
  %t56 = load i64, ptr %l8, !tbaa !24
  %t59 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t55, i64 %t56)
  store i64 %t59, ptr %l39
  br label %bb12
bb12:
  %t60 = load i64, ptr %l1, !tbaa !24
  %t61 = load i64, ptr %l39, !tbaa !24
  %t63 = icmp eq i64 %t61, %t60
  br i1 %t63, label %bb13, label %bb14
bb13:
  %t65 = load ptr, ptr %l0, !tbaa !29
  %t67 = getelementptr %"compiler/typed:Plan", ptr %t65, i32 0, i32 16
  %t68 = load i64, ptr %l8, !tbaa !24
  %t71 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t67, i64 %t68)
  store i64 %t71, ptr %l46
  br label %bb15
bb14:
  store i1 false, ptr %l42, !tbaa !21
  br label %bb16
bb15:
  %t72 = load i64, ptr %l2, !tbaa !24
  %t73 = load i64, ptr %l46, !tbaa !24
  %t75 = icmp eq i64 %t73, %t72
  store i1 %t75, ptr %l42, !tbaa !21
  br label %bb16
bb16:
  %t77 = load i1, ptr %l42, !tbaa !21
  br i1 %t77, label %bb17, label %bb18
bb17:
  %t78 = load i64, ptr %l8, !tbaa !24
  store i64 %t78, ptr %rv
  br label %ret
bb18:
  br label %bb19
bb19:
  br label %bb20
bb20:
  %t80 = load i64, ptr %l7, !tbaa !24
  %t82 = add i64 %t80, 1
  store i64 %t82, ptr %l7, !tbaa !24
  br label %bb8
bb21:
  %t84 = load ptr, ptr %l0, !tbaa !29
  %t86 = getelementptr %"compiler/typed:Plan", ptr %t84, i32 0, i32 15
  %t87 = load i64, ptr %l1, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %t86, i64 %t87)
  br label %bb22
bb22:
  %t90 = load ptr, ptr %l0, !tbaa !29
  %t92 = getelementptr %"compiler/typed:Plan", ptr %t90, i32 0, i32 16
  %t93 = load i64, ptr %l2, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %t92, i64 %t93)
  br label %bb23
bb23:
  %t96 = load ptr, ptr %l0, !tbaa !29
  %t98 = getelementptr %"compiler/typed:Plan", ptr %t96, i32 0, i32 15
  %t100 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %t98)
  store i64 %t100, ptr %l60
  br label %bb24
bb24:
  %t101 = load i64, ptr %l60, !tbaa !24
  %t102 = sub i64 %t101, 1
  store i64 %t102, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local { i64, [2 x i64] } @compiler_2ftyped_2ecompiler_2ftyped_3aPlan_2eDropHomeOf(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
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
  %l44 = alloca { i64, [2 x i64] }
  %s2 = alloca %olang.scope
  %rv = alloca { i64, [2 x i64] }
  %t77 = alloca { i64, [2 x i64] }, align 8
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store i64 0, ptr %l2, !tbaa !24
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/typed:Plan", ptr %t1, i32 0, i32 20
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
  br label %bb18
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
  %t55 = getelementptr %"compiler/typed:Plan", ptr %t53, i32 0, i32 20
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
  %t67 = getelementptr %"compiler/typed:Plan", ptr %t65, i32 0, i32 21
  %t68 = load i64, ptr %l7, !tbaa !24
  %t71 = call { i64, [2 x i64] } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aScope_3e_2eAt_3ccompiler_2ftyped_3aScope_3e(ptr %v0, ptr %t67, i64 %t68)
  store { i64, [2 x i64] } %t71, ptr %l44
  br label %bb15
bb14:
  br label %bb16
bb15:
  call void @__olang_scope_close(ptr %s2)
  %t72 = load { i64, [2 x i64] }, ptr %l44
  store { i64, [2 x i64] } %t72, ptr %rv
  br label %ret
bb16:
  call void @__olang_scope_close(ptr %s2)
  br label %bb17
bb17:
  %t73 = load i64, ptr %l6, !tbaa !24
  %t75 = add i64 %t73, 1
  store i64 %t75, ptr %l6, !tbaa !24
  br label %bb8
bb18:
  store { i64, [2 x i64] } zeroinitializer, ptr %t77
  %t78 = getelementptr { i64, [2 x i64] }, ptr %t77, i32 0, i32 0
  store i64 0, ptr %t78
  %t79 = load { i64, [2 x i64] }, ptr %t77
  store { i64, [2 x i64] } %t79, ptr %rv
  br label %ret
ret:
  %rr = load { i64, [2 x i64] }, ptr %rv
  ret { i64, [2 x i64] } %rr
}

define dso_local { i64, [2 x i64] } @compiler_2ftyped_2ecompiler_2ftyped_3aPlan_2eFind(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l7 = alloca i64
  %rv = alloca { i64, [2 x i64] }
  %t14 = alloca { i64, [2 x i64] }, align 8
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/typed:Plan", ptr %t1, i32 0, i32 10
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2ePush_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %v1, ptr %t3, ptr %a1)
  br label %bb1
bb1:
  %t7 = load ptr, ptr %l0, !tbaa !29
  %t9 = getelementptr %"compiler/typed:Plan", ptr %t7, i32 0, i32 10
  %t11 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2eLen_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %t9)
  store i64 %t11, ptr %l7
  br label %bb2
bb2:
  %t12 = load i64, ptr %l7, !tbaa !24
  %t13 = sub i64 %t12, 1
  store { i64, [2 x i64] } zeroinitializer, ptr %t14
  %t15 = getelementptr { i64, [2 x i64] }, ptr %t14, i32 0, i32 0
  store i64 7, ptr %t15
  %t17 = insertvalue { i64 } undef, i64 %t13, 0
  %t18 = getelementptr { i64, [2 x i64] }, ptr %t14, i32 0, i32 1
  store { i64 } %t17, ptr %t18
  %t19 = load { i64, [2 x i64] }, ptr %t14
  store { i64, [2 x i64] } %t19, ptr %rv
  br label %ret
ret:
  %rr = load { i64, [2 x i64] }, ptr %rv
  ret { i64, [2 x i64] } %rr
}

define dso_local i64 @compiler_2ftyped_2ecompiler_2ftyped_3aVersions_2eDefOf(ptr %v0, ptr %a0, i64 %a1, i64 %a2) #0 {
entry:
  %l3 = alloca i64
  %l5 = alloca ptr
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i32
  %rv = alloca i64
  br label %start
start:
  br label %bb0
bb0:
  %t3 = getelementptr %"compiler/typed:Versions", ptr %a0, i32 0, i32 8
  store ptr %t3, ptr %l5, !tbaa !29
  %t8 = call i64 @compiler_2ftyped_2edefName(i64 %a1, i64 %a2)
  store i64 %t8, ptr %l8
  br label %bb1
bb1:
  %t9 = load ptr, ptr %l5, !tbaa !29
  %t10 = load i64, ptr %l8, !tbaa !24
  %t11 = call { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2eGet_3cI64_2c_20I64_3e(ptr %v0, ptr %t9, i64 %t10)
  %t12 = extractvalue { i32, i64 } %t11, 1
  %t13 = extractvalue { i32, i64 } %t11, 0
  store i32 %t13, ptr %l10
  %t14 = icmp ne i32 %t13, 0
  br i1 %t14, label %bb3, label %ok.15, !prof !99
ok.15:
  store i64 %t12, ptr %l9
  br label %bb2
bb2:
  %t16 = load i64, ptr %l9, !tbaa !24
  store i64 %t16, ptr %l3, !tbaa !24
  br label %bb5
bb3:
  br label %bb4
bb4:
  store i64 -1, ptr %l3, !tbaa !24
  br label %bb5
bb5:
  %t17 = load i64, ptr %l3, !tbaa !24
  store i64 %t17, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local void @compiler_2ftyped_2ecompiler_2ftyped_3aVersions_2eall(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca i64
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l12 = alloca i64
  %l14 = alloca i32
  %l17 = alloca i32
  %l20 = alloca i64
  %l25 = alloca i64
  %l28 = alloca i64
  %l54 = alloca ptr
  %l57 = alloca i64
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/typed:Versions", ptr %t1, i32 0, i32 20
  %t4 = load i1, ptr %t3, !tbaa !21
  br i1 %t4, label %bb1, label %bb2
bb1:
  br label %ret
bb2:
  br label %bb3
bb3:
  %t6 = load ptr, ptr %l0, !tbaa !29
  %t8 = getelementptr %"compiler/typed:Versions", ptr %t6, i32 0, i32 17
  %t10 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aBlockId_3e_2eLen_3ccompiler_2ftyped_3aBlockId_3e(ptr %v0, ptr %t8)
  store i64 %t10, ptr %l12
  br label %bb4
bb4:
  %t11 = load i64, ptr %l12, !tbaa !24
  %t12 = icmp sgt i64 %t11, 0
  br i1 %t12, label %bb5, label %bb6
bb5:
  %t14 = load ptr, ptr %l0, !tbaa !29
  %t16 = getelementptr %"compiler/typed:Versions", ptr %t14, i32 0, i32 17
  %t18 = call i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aBlockId_3e_2eAt_3ccompiler_2ftyped_3aBlockId_3e(ptr %v0, ptr %t16, i64 0)
  store i32 %t18, ptr %l17
  br label %bb7
bb6:
  store i32 -1, ptr %l14, !tbaa !23
  br label %bb8
bb7:
  %t19 = load i32, ptr %l17, !tbaa !23
  store i32 %t19, ptr %l14, !tbaa !23
  br label %bb8
bb8:
  %t20 = load i32, ptr %l14, !tbaa !23
  store i32 %t20, ptr %l1, !tbaa !23
  store i64 0, ptr %l2, !tbaa !24
  %t21 = load ptr, ptr %l0, !tbaa !29
  %t23 = getelementptr %"compiler/typed:Versions", ptr %t21, i32 0, i32 14
  %t25 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %t23)
  store i64 %t25, ptr %l20
  br label %bb9
bb9:
  %t26 = load i64, ptr %l20, !tbaa !24
  %t27 = sub i64 %t26, 1
  store i64 %t27, ptr %l3, !tbaa !24
  store i64 1, ptr %l4, !tbaa !24
  %t29 = load i64, ptr %l3, !tbaa !24
  %t30 = load i64, ptr %l2, !tbaa !24
  %t33 = icmp sgt i64 %t29, %t30
  br i1 %t33, label %bb10, label %bb11
bb10:
  %t35 = load i64, ptr %l4, !tbaa !24
  %t37 = icmp sgt i64 %t35, 0
  br i1 %t37, label %bb12, label %bb13
bb11:
  store i64 0, ptr %l25, !tbaa !24
  br label %bb15
bb12:
  %t39 = load i64, ptr %l3, !tbaa !24
  %t40 = load i64, ptr %l2, !tbaa !24
  %t43 = sub i64 %t39, %t40
  %t44 = load i64, ptr %l4, !tbaa !24
  %t47 = add i64 %t43, %t44
  %t49 = sub i64 %t47, 1
  %t50 = load i64, ptr %l4, !tbaa !24
  %t53 = sdiv i64 %t49, %t50
  store i64 %t53, ptr %l28, !tbaa !24
  br label %bb14
bb13:
  store i64 0, ptr %l28, !tbaa !24
  br label %bb14
bb14:
  %t55 = load i64, ptr %l28, !tbaa !24
  store i64 %t55, ptr %l25, !tbaa !24
  br label %bb15
bb15:
  %t56 = load i64, ptr %l25, !tbaa !24
  store i64 %t56, ptr %l5, !tbaa !24
  store i64 0, ptr %l6, !tbaa !24
  br label %bb16
bb16:
  %t57 = load i64, ptr %l6, !tbaa !24
  %t58 = load i64, ptr %l5, !tbaa !24
  %t61 = icmp slt i64 %t57, %t58
  %t63 = xor i1 %t61, true
  br i1 %t63, label %bb17, label %bb18
bb17:
  br label %bb22
bb18:
  br label %bb19
bb19:
  %t65 = load i64, ptr %l2, !tbaa !24
  %t66 = load i64, ptr %l6, !tbaa !24
  %t67 = load i64, ptr %l4, !tbaa !24
  %t70 = mul i64 %t66, %t67
  %t73 = add i64 %t65, %t70
  %t75 = load ptr, ptr %l0, !tbaa !29
  %t77 = getelementptr %"compiler/typed:Versions", ptr %t75, i32 0, i32 14
  %t79 = load i32, ptr %l1, !tbaa !23
  %t81 = sext i32 %t79 to i64
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eSetAt_3cI64_3e(ptr %v0, ptr %t77, i64 %t73, i64 %t81)
  br label %bb20
bb20:
  br label %bb21
bb21:
  %t85 = load i64, ptr %l6, !tbaa !24
  %t87 = add i64 %t85, 1
  store i64 %t87, ptr %l6, !tbaa !24
  br label %bb16
bb22:
  %t89 = load ptr, ptr %l0, !tbaa !29
  %t91 = getelementptr %"compiler/typed:Versions", ptr %t89, i32 0, i32 14
  store ptr %t91, ptr %l54, !tbaa !29
  %t92 = load ptr, ptr %l0, !tbaa !29
  %t94 = getelementptr %"compiler/typed:Versions", ptr %t92, i32 0, i32 14
  %t96 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %t94)
  store i64 %t96, ptr %l57
  br label %bb23
bb23:
  %t97 = load i64, ptr %l57, !tbaa !24
  %t98 = sub i64 %t97, 1
  %t99 = load ptr, ptr %l54, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eSetAt_3cI64_3e(ptr %v0, ptr %t99, i64 %t98, i64 0)
  br label %bb24
bb24:
  br label %ret
ret:
  ret void
}

define dso_local i64 @compiler_2ftyped_2ecompiler_2ftyped_3aViewWalk_2eCallViews(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l2 = alloca ptr
  %l3 = alloca i32
  %l6 = alloca i64
  %l7 = alloca ptr
  %l8 = alloca i1
  %l16 = alloca i64
  %rv = alloca i64
  br label %start
start:
  br label %bb0
bb0:
  %t3 = getelementptr %"compiler/typed:Call", ptr %a1, i32 0, i32 0
  %t4 = load ptr, ptr %t3, !tbaa !29
  store ptr %t4, ptr %l2, !tbaa !29
  %t6 = load ptr, ptr %l2, !tbaa !29
  store ptr %t6, ptr %l7, !tbaa !29
  store i1 false, ptr %l8, !tbaa !21
  %t7 = load ptr, ptr %l7, !tbaa !29
  %t8 = icmp ne ptr %t7, null
  br i1 %t8, label %bb1, label %bb2
bb1:
  %t10 = load ptr, ptr %l7, !tbaa !29
  %t11 = load i64, ptr %t10, !range !{i64 0, i64 5}
  %t13 = icmp eq i64 %t11, 0
  store i1 %t13, ptr %l8, !tbaa !21
  br label %bb2
bb2:
  %t14 = load i1, ptr %l8, !tbaa !21
  br i1 %t14, label %bb3, label %bb4
bb3:
  %t15 = load ptr, ptr %l2, !tbaa !29
  %t17 = getelementptr { i64, [3 x i64] }, ptr %t15, i32 0, i32 1
  %t18 = getelementptr { i32 }, ptr %t17, i32 0, i32 0
  %t19 = load i32, ptr %t18
  store i32 %t19, ptr %l3, !tbaa !23
  br label %bb5
bb4:
  br label %bb7
bb5:
  %t23 = getelementptr %"compiler/typed:ViewWalk", ptr %a0, i32 0, i32 3
  %t24 = load { ptr, ptr }, ptr %t23
  %t25 = load i32, ptr %l3, !tbaa !23
  %t27 = extractvalue { ptr, ptr } %t24, 0
  %t28 = extractvalue { ptr, ptr } %t24, 1
  %t30 = call i64 %t27(ptr %t28, i32 %t25)
  store i64 %t30, ptr %l16
  br label %bb6
bb6:
  %t31 = load i64, ptr %l16, !tbaa !24
  store i64 %t31, ptr %l6, !tbaa !24
  br label %bb12
bb7:
  br i1 true, label %bb8, label %bb9
bb8:
  br label %bb10
bb9:
  br label %bb11
bb10:
  store i64 0, ptr %l6, !tbaa !24
  br label %bb12
bb11:
  call void @__olang_check_failed(ptr @olang_loc_996d81e577c7faae_f3b4a025cf703a)
  unreachable
bb12:
  %t32 = load i64, ptr %l6, !tbaa !24
  store i64 %t32, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local i64 @compiler_2ftyped_2ecompiler_2ftyped_3aViewWalk_2elocalRoots(ptr %v0, ptr %v1, ptr %v2, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca i64
  %l3 = alloca %"compiler/typed:Local"
  %l7 = alloca i64
  %l12 = alloca ptr
  %l15 = alloca %"compiler/typed:Local"
  %l19 = alloca i1
  %l21 = alloca ptr
  %l24 = alloca i1
  %l25 = alloca i1
  %l27 = alloca ptr
  %l30 = alloca i1
  %l35 = alloca i64
  %rv = alloca i64
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/typed:ViewWalk", ptr %t1, i32 0, i32 4
  %t4 = load { ptr, ptr }, ptr %t3
  %t5 = load i32, ptr %l1, !tbaa !23
  %t7 = extractvalue { ptr, ptr } %t4, 0
  %t8 = extractvalue { ptr, ptr } %t4, 1
  %t10 = call i64 %t7(ptr %t8, i32 %t5)
  store i64 %t10, ptr %l7
  br label %bb1
bb1:
  %t11 = load i64, ptr %l7, !tbaa !24
  store i64 %t11, ptr %l2, !tbaa !24
  %t12 = load i64, ptr %l2, !tbaa !24
  %t14 = icmp sge i64 %t12, 0
  br i1 %t14, label %bb2, label %bb3
bb2:
  %t16 = load i64, ptr %l2, !tbaa !24
  store i64 %t16, ptr %rv
  br label %ret
bb3:
  br label %bb4
bb4:
  %t18 = load ptr, ptr %l0, !tbaa !29
  %t20 = getelementptr %"compiler/typed:ViewWalk", ptr %t18, i32 0, i32 1
  %t21 = load ptr, ptr %t20, !tbaa !29
  store ptr %t21, ptr %l12, !tbaa !29
  %t22 = load i32, ptr %l1, !tbaa !23
  %t23 = load ptr, ptr %l12, !tbaa !29
  %t24 = call ptr @__olang_scope_or(ptr %v1, ptr %t23)
  %t25 = ptrtoint ptr %t24 to i64
  %t27 = inttoptr i64 %t25 to ptr
  %t28 = load ptr, ptr %l12, !tbaa !29
  %t30 = call %"compiler/typed:Local" @compiler_2ftyped_2ecompiler_2ftyped_3aBody_2eLocal(ptr %t27, ptr %t28, i32 %t22)
  store %"compiler/typed:Local" %t30, ptr %l15
  br label %bb5
bb5:
  %t31 = load %"compiler/typed:Local", ptr %l15
  store %"compiler/typed:Local" %t31, ptr %l3
  %t32 = getelementptr %"compiler/typed:Local", ptr %l3, i32 0, i32 4
  %t33 = load i32, ptr %t32, !range !{i32 0, i32 7}
  %t35 = trunc i64 0 to i32
  %t36 = icmp eq i32 %t33, %t35
  %t38 = xor i1 %t36, true
  br i1 %t38, label %bb6, label %bb7
bb6:
  store i1 true, ptr %l19, !tbaa !21
  br label %bb9
bb7:
  %t40 = load ptr, ptr %l0, !tbaa !29
  %t42 = getelementptr %"compiler/typed:ViewWalk", ptr %t40, i32 0, i32 0
  %t43 = load ptr, ptr %t42, !tbaa !29
  store ptr %t43, ptr %l21, !tbaa !29
  %t44 = getelementptr %"compiler/typed:Local", ptr %l3, i32 0, i32 2
  %t45 = load i32, ptr %t44, !tbaa !23
  %t46 = load ptr, ptr %l21, !tbaa !29
  %t47 = call ptr @__olang_scope_or(ptr %v2, ptr %t46)
  %t48 = ptrtoint ptr %t47 to i64
  %t50 = inttoptr i64 %t48 to ptr
  %t51 = load ptr, ptr %l21, !tbaa !29
  %t53 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsRef(ptr %t50, ptr %t51, i32 %t45)
  store i1 %t53, ptr %l24
  br label %bb8
bb8:
  %t54 = load i1, ptr %l24, !tbaa !21
  store i1 %t54, ptr %l19, !tbaa !21
  br label %bb9
bb9:
  %t55 = load i1, ptr %l19, !tbaa !21
  br i1 %t55, label %bb10, label %bb11
bb10:
  store i1 true, ptr %l25, !tbaa !21
  br label %bb13
bb11:
  %t56 = load ptr, ptr %l0, !tbaa !29
  %t58 = getelementptr %"compiler/typed:ViewWalk", ptr %t56, i32 0, i32 0
  %t59 = load ptr, ptr %t58, !tbaa !29
  store ptr %t59, ptr %l27, !tbaa !29
  %t60 = getelementptr %"compiler/typed:Local", ptr %l3, i32 0, i32 2
  %t61 = load i32, ptr %t60, !tbaa !23
  %t62 = load ptr, ptr %l27, !tbaa !29
  %t63 = call ptr @__olang_scope_or(ptr %v2, ptr %t62)
  %t64 = ptrtoint ptr %t63 to i64
  %t66 = inttoptr i64 %t64 to ptr
  %t67 = load ptr, ptr %l27, !tbaa !29
  %t69 = call i1 @compiler_2ftyped_2eHoldsOwned(ptr %t66, ptr %t67, i32 %t61)
  store i1 %t69, ptr %l30
  br label %bb12
bb12:
  %t70 = load i1, ptr %l30, !tbaa !21
  %t71 = xor i1 %t70, true
  store i1 %t71, ptr %l25, !tbaa !21
  br label %bb13
bb13:
  %t73 = load i1, ptr %l25, !tbaa !21
  br i1 %t73, label %bb14, label %bb15
bb14:
  store i64 -1, ptr %rv
  br label %ret
bb15:
  br label %bb16
bb16:
  %t75 = load ptr, ptr %l0, !tbaa !29
  %t76 = load i32, ptr %l1, !tbaa !23
  %t79 = call i64 @compiler_2ftyped_2ecompiler_2ftyped_3aViewWalk_2eparamBit(ptr %v0, ptr %v1, ptr %t75, i32 %t76)
  store i64 %t79, ptr %l35
  br label %bb17
bb17:
  %t80 = load i64, ptr %l35, !tbaa !24
  store i64 %t80, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local i64 @compiler_2ftyped_2ecompiler_2ftyped_3aViewWalk_2ematchRoots(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i64
  %l3 = alloca { i64, ptr }
  %l4 = alloca i64
  %l5 = alloca i64
  %l15 = alloca { i64, ptr }
  %l18 = alloca i64
  %l22 = alloca i64
  %l23 = alloca i64
  %l30 = alloca i64
  %l31 = alloca ptr
  %l39 = alloca i64
  %l40 = alloca i64
  %rv = alloca i64
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store i64 0, ptr %l2, !tbaa !24
  %t1 = load ptr, ptr %l1, !tbaa !29
  %t3 = getelementptr %"compiler/typed:Match", ptr %t1, i32 0, i32 1
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
  br label %bb8
bb3:
  br label %bb4
bb4:
  %t18 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t18, ptr %l15, !tbaa !27
  %t19 = load i64, ptr %l4, !tbaa !24
  %t21 = getelementptr { i64, ptr }, ptr %l15, i32 0, i32 1
  %t22 = load ptr, ptr %t21, !tbaa !27
  %t23 = getelementptr ptr, ptr %t22, i64 %t19
  %t24 = load ptr, ptr %t23, !tbaa !39
  %t26 = load i64, ptr %l2, !tbaa !24
  store i64 %t26, ptr %l18, !tbaa !24
  %t27 = load ptr, ptr %l0, !tbaa !29
  %t30 = getelementptr %"compiler/typed:Arm", ptr %t24, i32 0, i32 4
  %t31 = load ptr, ptr %t30, !tbaa !29
  %t34 = call i64 @compiler_2ftyped_2ecompiler_2ftyped_3aViewWalk_2eRoots(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %t27, ptr %t31)
  store i64 %t34, ptr %l22
  br label %bb5
bb5:
  %t35 = load i64, ptr %l18, !tbaa !24
  %t36 = load i64, ptr %l22, !tbaa !24
  %t37 = call i64 @compiler_2ftyped_2emeetRoots(i64 %t35, i64 %t36)
  store i64 %t37, ptr %l23
  br label %bb6
bb6:
  %t38 = load i64, ptr %l23, !tbaa !24
  store i64 %t38, ptr %l2, !tbaa !24
  br label %bb7
bb7:
  %t39 = load i64, ptr %l4, !tbaa !24
  %t41 = add i64 %t39, 1
  store i64 %t41, ptr %l4, !tbaa !24
  br label %bb1
bb8:
  %t43 = load ptr, ptr %l1, !tbaa !29
  %t45 = getelementptr %"compiler/typed:Match", ptr %t43, i32 0, i32 2
  %t46 = load ptr, ptr %t45, !tbaa !29
  %t48 = icmp eq ptr %t46, null
  %t50 = xor i1 %t48, true
  br i1 %t50, label %bb9, label %bb10
bb9:
  %t52 = load i64, ptr %l2, !tbaa !24
  store i64 %t52, ptr %l30, !tbaa !24
  %t53 = load ptr, ptr %l0, !tbaa !29
  store ptr %t53, ptr %l31, !tbaa !29
  %t54 = load ptr, ptr %l1, !tbaa !29
  %t56 = getelementptr %"compiler/typed:Match", ptr %t54, i32 0, i32 2
  %t57 = load ptr, ptr %t56, !tbaa !29
  %t59 = icmp eq ptr %t57, null
  br i1 %t59, label %bb11, label %bb12
bb10:
  br label %bb16
bb11:
  call void @__olang_check_failed(ptr @olang_loc_dd6dc40ab752fedf_c333d42519625383)
  unreachable
bb12:
  br label %bb13
bb13:
  %t61 = load ptr, ptr %l1, !tbaa !29
  %t63 = getelementptr %"compiler/typed:Match", ptr %t61, i32 0, i32 2
  %t64 = load ptr, ptr %t63, !tbaa !29
  %t67 = getelementptr %"compiler/typed:Arm", ptr %t64, i32 0, i32 4
  %t68 = load ptr, ptr %t67, !tbaa !29
  %t69 = load ptr, ptr %l31, !tbaa !29
  %t71 = call i64 @compiler_2ftyped_2ecompiler_2ftyped_3aViewWalk_2eRoots(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %t69, ptr %t68)
  store i64 %t71, ptr %l39
  br label %bb14
bb14:
  %t72 = load i64, ptr %l30, !tbaa !24
  %t73 = load i64, ptr %l39, !tbaa !24
  %t74 = call i64 @compiler_2ftyped_2emeetRoots(i64 %t72, i64 %t73)
  store i64 %t74, ptr %l40
  br label %bb15
bb15:
  %t75 = load i64, ptr %l40, !tbaa !24
  store i64 %t75, ptr %l2, !tbaa !24
  br label %bb16
bb16:
  %t76 = load i64, ptr %l2, !tbaa !24
  store i64 %t76, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local i1 @compiler_2ftyped_2ecompiler_2ftyped_3aViewWalk_2eresultLocal(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1, i64 %a2, i1 %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i64
  %l4 = alloca %"compiler/typed:Local"
  %l5 = alloca i32
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %l12 = alloca ptr
  %l13 = alloca i64
  %l17 = alloca ptr
  %l20 = alloca %"compiler/typed:Local"
  %l25 = alloca i1
  %l29 = alloca i1
  %l35 = alloca ptr
  %l38 = alloca i1
  %l39 = alloca i1
  %l41 = alloca ptr
  %l44 = alloca i1
  %l50 = alloca i1
  %l51 = alloca i1
  %l55 = alloca i1
  %l56 = alloca i1
  %l60 = alloca i1
  %l64 = alloca i64
  %l68 = alloca i64
  %l71 = alloca i64
  %l92 = alloca i64
  %l101 = alloca i1
  %l109 = alloca i64
  %l110 = alloca ptr
  %l112 = alloca i64
  %l115 = alloca ptr
  %l118 = alloca i32
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store i64 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/typed:ViewWalk", ptr %t1, i32 0, i32 1
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t6 = getelementptr %"compiler/typed:Body", ptr %t4, i32 0, i32 7
  store ptr %t6, ptr %l17, !tbaa !29
  %t7 = load i64, ptr %l2, !tbaa !24
  %t8 = load ptr, ptr %l17, !tbaa !29
  %t9 = call ptr @__olang_scope_or(ptr %v2, ptr %t8)
  %t10 = ptrtoint ptr %t9 to i64
  %t12 = inttoptr i64 %t10 to ptr
  %t13 = load ptr, ptr %l17, !tbaa !29
  %t15 = call %"compiler/typed:Local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocal_3e_2eAt_3ccompiler_2ftyped_3aLocal_3e(ptr %t12, ptr %t13, i64 %t7)
  store %"compiler/typed:Local" %t15, ptr %l20
  br label %bb1
bb1:
  %t16 = load %"compiler/typed:Local", ptr %l20
  store %"compiler/typed:Local" %t16, ptr %l4
  %t17 = getelementptr %"compiler/typed:Local", ptr %l4, i32 0, i32 4
  %t18 = load i32, ptr %t17, !range !{i32 0, i32 7}
  store i32 %t18, ptr %l5
  %t20 = load i32, ptr %l5, !range !{i32 0, i32 7}
  %t22 = trunc i64 1 to i32
  %t23 = icmp eq i32 %t20, %t22
  %t25 = xor i1 %t23, true
  br i1 %t25, label %bb2, label %bb3
bb2:
  %t27 = load i32, ptr %l5, !range !{i32 0, i32 7}
  %t29 = trunc i64 3 to i32
  %t30 = icmp eq i32 %t27, %t29
  %t32 = xor i1 %t30, true
  store i1 %t32, ptr %l25, !tbaa !21
  br label %bb4
bb3:
  store i1 false, ptr %l25, !tbaa !21
  br label %bb4
bb4:
  %t34 = load i1, ptr %l25, !tbaa !21
  br i1 %t34, label %bb5, label %bb6
bb5:
  %t35 = load i32, ptr %l5, !range !{i32 0, i32 7}
  %t37 = trunc i64 6 to i32
  %t38 = icmp eq i32 %t35, %t37
  %t40 = xor i1 %t38, true
  store i1 %t40, ptr %l29, !tbaa !21
  br label %bb7
bb6:
  store i1 false, ptr %l29, !tbaa !21
  br label %bb7
bb7:
  %t42 = load i1, ptr %l29, !tbaa !21
  br i1 %t42, label %bb8, label %bb9
bb8:
  store i1 false, ptr %rv
  br label %ret
bb9:
  br label %bb10
bb10:
  %t44 = load ptr, ptr %l0, !tbaa !29
  %t46 = getelementptr %"compiler/typed:ViewWalk", ptr %t44, i32 0, i32 0
  %t47 = load ptr, ptr %t46, !tbaa !29
  store ptr %t47, ptr %l35, !tbaa !29
  %t48 = getelementptr %"compiler/typed:Local", ptr %l4, i32 0, i32 2
  %t49 = load i32, ptr %t48, !tbaa !23
  %t50 = load ptr, ptr %l35, !tbaa !29
  %t51 = call ptr @__olang_scope_or(ptr %v3, ptr %t50)
  %t52 = ptrtoint ptr %t51 to i64
  %t54 = inttoptr i64 %t52 to ptr
  %t55 = load ptr, ptr %l35, !tbaa !29
  %t57 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsRef(ptr %t54, ptr %t55, i32 %t49)
  store i1 %t57, ptr %l38
  br label %bb11
bb11:
  %t58 = load i1, ptr %l38, !tbaa !21
  br i1 %t58, label %bb12, label %bb13
bb12:
  store i1 true, ptr %l39, !tbaa !21
  br label %bb15
bb13:
  %t59 = load ptr, ptr %l0, !tbaa !29
  %t61 = getelementptr %"compiler/typed:ViewWalk", ptr %t59, i32 0, i32 0
  %t62 = load ptr, ptr %t61, !tbaa !29
  store ptr %t62, ptr %l41, !tbaa !29
  %t63 = getelementptr %"compiler/typed:Local", ptr %l4, i32 0, i32 2
  %t64 = load i32, ptr %t63, !tbaa !23
  %t65 = load ptr, ptr %l41, !tbaa !29
  %t66 = call ptr @__olang_scope_or(ptr %v3, ptr %t65)
  %t67 = ptrtoint ptr %t66 to i64
  %t69 = inttoptr i64 %t67 to ptr
  %t70 = load ptr, ptr %l41, !tbaa !29
  %t72 = call i1 @compiler_2ftyped_2eHoldsOwned(ptr %t69, ptr %t70, i32 %t64)
  store i1 %t72, ptr %l44
  br label %bb14
bb14:
  %t73 = load i1, ptr %l44, !tbaa !21
  %t74 = xor i1 %t73, true
  store i1 %t74, ptr %l39, !tbaa !21
  br label %bb15
bb15:
  %t76 = load i1, ptr %l39, !tbaa !21
  br i1 %t76, label %bb16, label %bb17
bb16:
  store i1 false, ptr %rv
  br label %ret
bb17:
  br label %bb18
bb18:
  %t78 = load ptr, ptr %l1, !tbaa !29
  %t80 = getelementptr %"compiler/typed:LocalUses", ptr %t78, i32 0, i32 5
  %t81 = load i64, ptr %l2, !tbaa !24
  %t84 = call i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eAt_3cBool_3e(ptr %v1, ptr %t80, i64 %t81)
  store i1 %t84, ptr %l50
  br label %bb19
bb19:
  %t85 = load i1, ptr %l50, !tbaa !21
  br i1 %t85, label %bb20, label %bb21
bb20:
  store i1 true, ptr %l51, !tbaa !21
  br label %bb23
bb21:
  %t86 = load ptr, ptr %l1, !tbaa !29
  %t88 = getelementptr %"compiler/typed:LocalUses", ptr %t86, i32 0, i32 2
  %t89 = load i64, ptr %l2, !tbaa !24
  %t92 = call i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eAt_3cBool_3e(ptr %v1, ptr %t88, i64 %t89)
  store i1 %t92, ptr %l55
  br label %bb22
bb22:
  %t93 = load i1, ptr %l55, !tbaa !21
  store i1 %t93, ptr %l51, !tbaa !21
  br label %bb23
bb23:
  %t94 = load i1, ptr %l51, !tbaa !21
  br i1 %t94, label %bb24, label %bb25
bb24:
  store i1 true, ptr %l56, !tbaa !21
  br label %bb27
bb25:
  %t95 = load ptr, ptr %l1, !tbaa !29
  %t97 = getelementptr %"compiler/typed:LocalUses", ptr %t95, i32 0, i32 4
  %t98 = load i64, ptr %l2, !tbaa !24
  %t101 = call i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eAt_3cBool_3e(ptr %v1, ptr %t97, i64 %t98)
  store i1 %t101, ptr %l60
  br label %bb26
bb26:
  %t102 = load i1, ptr %l60, !tbaa !21
  store i1 %t102, ptr %l56, !tbaa !21
  br label %bb27
bb27:
  %t103 = load i1, ptr %l56, !tbaa !21
  br i1 %t103, label %bb28, label %bb29
bb28:
  store i1 false, ptr %rv
  br label %ret
bb29:
  br label %bb30
bb30:
  store i64 0, ptr %l6, !tbaa !24
  %t105 = load ptr, ptr %l1, !tbaa !29
  %t107 = getelementptr %"compiler/typed:LocalUses", ptr %t105, i32 0, i32 12
  %t109 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v1, ptr %t107)
  store i64 %t109, ptr %l64
  br label %bb31
bb31:
  %t110 = load i64, ptr %l64, !tbaa !24
  store i64 %t110, ptr %l7, !tbaa !24
  store i64 1, ptr %l8, !tbaa !24
  %t111 = load i64, ptr %l7, !tbaa !24
  %t112 = load i64, ptr %l6, !tbaa !24
  %t115 = icmp sgt i64 %t111, %t112
  br i1 %t115, label %bb32, label %bb33
bb32:
  %t117 = load i64, ptr %l8, !tbaa !24
  %t119 = icmp sgt i64 %t117, 0
  br i1 %t119, label %bb34, label %bb35
bb33:
  store i64 0, ptr %l68, !tbaa !24
  br label %bb37
bb34:
  %t121 = load i64, ptr %l7, !tbaa !24
  %t122 = load i64, ptr %l6, !tbaa !24
  %t125 = sub i64 %t121, %t122
  %t126 = load i64, ptr %l8, !tbaa !24
  %t129 = add i64 %t125, %t126
  %t131 = sub i64 %t129, 1
  %t132 = load i64, ptr %l8, !tbaa !24
  %t135 = sdiv i64 %t131, %t132
  store i64 %t135, ptr %l71, !tbaa !24
  br label %bb36
bb35:
  store i64 0, ptr %l71, !tbaa !24
  br label %bb36
bb36:
  %t137 = load i64, ptr %l71, !tbaa !24
  store i64 %t137, ptr %l68, !tbaa !24
  br label %bb37
bb37:
  %t138 = load i64, ptr %l68, !tbaa !24
  store i64 %t138, ptr %l9, !tbaa !24
  store i64 0, ptr %l10, !tbaa !24
  br label %bb38
bb38:
  %t139 = load i64, ptr %l10, !tbaa !24
  %t140 = load i64, ptr %l9, !tbaa !24
  %t143 = icmp slt i64 %t139, %t140
  %t145 = xor i1 %t143, true
  br i1 %t145, label %bb39, label %bb40
bb39:
  br label %bb47
bb40:
  br label %bb41
bb41:
  %t147 = load i64, ptr %l6, !tbaa !24
  %t148 = load i64, ptr %l10, !tbaa !24
  %t149 = load i64, ptr %l8, !tbaa !24
  %t152 = mul i64 %t148, %t149
  %t155 = add i64 %t147, %t152
  %t157 = load ptr, ptr %l1, !tbaa !29
  %t159 = getelementptr %"compiler/typed:LocalUses", ptr %t157, i32 0, i32 12
  %t163 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v1, ptr %t159, i64 %t155)
  store i64 %t163, ptr %l92
  br label %bb42
bb42:
  %t164 = load i64, ptr %l2, !tbaa !24
  %t165 = load i64, ptr %l92, !tbaa !24
  %t167 = icmp eq i64 %t165, %t164
  br i1 %t167, label %bb43, label %bb44
bb43:
  store i1 false, ptr %rv
  br label %ret
bb44:
  br label %bb45
bb45:
  br label %bb46
bb46:
  %t170 = load i64, ptr %l10, !tbaa !24
  %t172 = add i64 %t170, 1
  store i64 %t172, ptr %l10, !tbaa !24
  br label %bb38
bb47:
  %t174 = load ptr, ptr %l1, !tbaa !29
  %t176 = getelementptr %"compiler/typed:LocalUses", ptr %t174, i32 0, i32 7
  %t177 = load i64, ptr %l2, !tbaa !24
  %t180 = call i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eAt_3cBool_3e(ptr %v1, ptr %t176, i64 %t177)
  store i1 %t180, ptr %l101
  br label %bb48
bb48:
  %t181 = load i1, ptr %l101, !tbaa !21
  br i1 %t181, label %bb49, label %bb50
bb49:
  store i1 true, ptr %rv
  br label %ret
bb50:
  br label %bb51
bb51:
  %t185 = xor i1 %a3, true
  br i1 %t185, label %bb52, label %bb53
bb52:
  store i1 false, ptr %rv
  br label %ret
bb53:
  br label %bb54
bb54:
  %t188 = load ptr, ptr %l0, !tbaa !29
  %t190 = getelementptr %"compiler/typed:ViewWalk", ptr %t188, i32 0, i32 1
  %t191 = load ptr, ptr %t190, !tbaa !29
  %t193 = getelementptr %"compiler/typed:Body", ptr %t191, i32 0, i32 10
  store ptr %t193, ptr %l12, !tbaa !29
  store i64 0, ptr %l13, !tbaa !24
  br label %bb55
bb55:
  %t195 = load i64, ptr %l13, !tbaa !24
  store i64 %t195, ptr %l109, !tbaa !24
  %t196 = load ptr, ptr %l12, !tbaa !29
  store ptr %t196, ptr %l110, !tbaa !29
  %t197 = load ptr, ptr %l110, !tbaa !29
  %t198 = call ptr @__olang_scope_or(ptr %v2, ptr %t197)
  %t199 = ptrtoint ptr %t198 to i64
  %t201 = inttoptr i64 %t199 to ptr
  %t202 = load ptr, ptr %l110, !tbaa !29
  %t203 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocalId_3e_2eLen_3ccompiler_2ftyped_3aLocalId_3e(ptr %t201, ptr %t202)
  store i64 %t203, ptr %l112
  br label %bb56
bb56:
  %t204 = load i64, ptr %l109, !tbaa !24
  %t205 = load i64, ptr %l112, !tbaa !24
  %t206 = icmp slt i64 %t204, %t205
  %t208 = xor i1 %t206, true
  br i1 %t208, label %bb57, label %bb58
bb57:
  br label %bb65
bb58:
  br label %bb59
bb59:
  %t210 = load ptr, ptr %l12, !tbaa !29
  store ptr %t210, ptr %l115, !tbaa !29
  %t211 = load i64, ptr %l13, !tbaa !24
  %t212 = load ptr, ptr %l115, !tbaa !29
  %t213 = call ptr @__olang_scope_or(ptr %v2, ptr %t212)
  %t214 = ptrtoint ptr %t213 to i64
  %t216 = inttoptr i64 %t214 to ptr
  %t217 = load ptr, ptr %l115, !tbaa !29
  %t219 = call i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocalId_3e_2eAt_3ccompiler_2ftyped_3aLocalId_3e(ptr %t216, ptr %t217, i64 %t211)
  store i32 %t219, ptr %l118
  br label %bb60
bb60:
  %t220 = load i32, ptr %l118, !tbaa !23
  %t223 = sext i32 %t220 to i64
  %t224 = load i64, ptr %l2, !tbaa !24
  %t227 = icmp eq i64 %t223, %t224
  br i1 %t227, label %bb61, label %bb62
bb61:
  store i1 true, ptr %rv
  br label %ret
bb62:
  br label %bb63
bb63:
  br label %bb64
bb64:
  %t230 = load i64, ptr %l13, !tbaa !24
  %t232 = add i64 %t230, 1
  store i64 %t232, ptr %l13, !tbaa !24
  br label %bb55
bb65:
  store i1 false, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local void @compiler_2ftyped_2ecompiler_2ftyped_3adropWalk_2ekeepFor(ptr %v0, ptr %a0, i1 %a1, i64 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i1
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %l13 = alloca i64
  %l22 = alloca i64
  %l25 = alloca i64
  %l46 = alloca i1
  store ptr %a0, ptr %l0
  store i1 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/typed:dropWalk", ptr %t1, i32 0, i32 2
  %t5 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eLen_3cBool_3e(ptr %v0, ptr %t3)
  store i64 %t5, ptr %l13
  br label %bb1
bb1:
  %t6 = load i64, ptr %l13, !tbaa !24
  store i64 %t6, ptr %l3, !tbaa !24
  %t8 = load i64, ptr %l3, !tbaa !24
  %t10 = add i64 %t8, 1
  %t13 = mul i64 %a2, %t10
  store i64 %t13, ptr %l4, !tbaa !24
  store i64 0, ptr %l5, !tbaa !24
  %t15 = load i64, ptr %l3, !tbaa !24
  store i64 %t15, ptr %l6, !tbaa !24
  store i64 1, ptr %l7, !tbaa !24
  %t17 = load i64, ptr %l6, !tbaa !24
  %t18 = load i64, ptr %l5, !tbaa !24
  %t21 = icmp sgt i64 %t17, %t18
  br i1 %t21, label %bb2, label %bb3
bb2:
  %t23 = load i64, ptr %l7, !tbaa !24
  %t25 = icmp sgt i64 %t23, 0
  br i1 %t25, label %bb4, label %bb5
bb3:
  store i64 0, ptr %l22, !tbaa !24
  br label %bb7
bb4:
  %t27 = load i64, ptr %l6, !tbaa !24
  %t28 = load i64, ptr %l5, !tbaa !24
  %t31 = sub i64 %t27, %t28
  %t32 = load i64, ptr %l7, !tbaa !24
  %t35 = add i64 %t31, %t32
  %t37 = sub i64 %t35, 1
  %t38 = load i64, ptr %l7, !tbaa !24
  %t41 = sdiv i64 %t37, %t38
  store i64 %t41, ptr %l25, !tbaa !24
  br label %bb6
bb5:
  store i64 0, ptr %l25, !tbaa !24
  br label %bb6
bb6:
  %t43 = load i64, ptr %l25, !tbaa !24
  store i64 %t43, ptr %l22, !tbaa !24
  br label %bb7
bb7:
  %t44 = load i64, ptr %l22, !tbaa !24
  store i64 %t44, ptr %l8, !tbaa !24
  store i64 0, ptr %l9, !tbaa !24
  br label %bb8
bb8:
  %t45 = load i64, ptr %l9, !tbaa !24
  %t46 = load i64, ptr %l8, !tbaa !24
  %t49 = icmp slt i64 %t45, %t46
  %t51 = xor i1 %t49, true
  br i1 %t51, label %bb9, label %bb10
bb9:
  br label %bb22
bb10:
  br label %bb11
bb11:
  %t53 = load i64, ptr %l5, !tbaa !24
  %t54 = load i64, ptr %l9, !tbaa !24
  %t55 = load i64, ptr %l7, !tbaa !24
  %t58 = mul i64 %t54, %t55
  %t61 = add i64 %t53, %t58
  store i64 %t61, ptr %l10, !tbaa !24
  %t63 = load ptr, ptr %l0, !tbaa !29
  %t65 = getelementptr %"compiler/typed:dropWalk", ptr %t63, i32 0, i32 2
  %t66 = load i64, ptr %l10, !tbaa !24
  %t69 = call i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eAt_3cBool_3e(ptr %v0, ptr %t65, i64 %t66)
  store i1 %t69, ptr %l46
  br label %bb12
bb12:
  %t70 = load i1, ptr %l46, !tbaa !21
  %t71 = xor i1 %t70, true
  br i1 %t71, label %bb13, label %bb14
bb13:
  br label %bb21
bb14:
  br label %bb15
bb15:
  %t73 = load i1, ptr %l1, !tbaa !21
  br i1 %t73, label %bb16, label %bb17
bb16:
  %t75 = load ptr, ptr %l0, !tbaa !29
  %t77 = getelementptr %"compiler/typed:dropWalk", ptr %t75, i32 0, i32 9
  %t78 = load i64, ptr %l4, !tbaa !24
  %t79 = load i64, ptr %l10, !tbaa !24
  %t82 = add i64 %t78, %t79
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eSetAt_3cBool_3e(ptr %v0, ptr %t77, i64 %t82, i1 true)
  br label %bb18
bb17:
  %t85 = load ptr, ptr %l0, !tbaa !29
  %t87 = getelementptr %"compiler/typed:dropWalk", ptr %t85, i32 0, i32 10
  %t88 = load i64, ptr %l4, !tbaa !24
  %t89 = load i64, ptr %l10, !tbaa !24
  %t92 = add i64 %t88, %t89
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eSetAt_3cBool_3e(ptr %v0, ptr %t87, i64 %t92, i1 true)
  br label %bb19
bb18:
  br label %bb20
bb19:
  br label %bb20
bb20:
  br label %bb21
bb21:
  %t95 = load i64, ptr %l9, !tbaa !24
  %t97 = add i64 %t95, 1
  store i64 %t97, ptr %l9, !tbaa !24
  br label %bb8
bb22:
  %t99 = load i1, ptr %l1, !tbaa !21
  br i1 %t99, label %bb23, label %bb24
bb23:
  %t101 = load ptr, ptr %l0, !tbaa !29
  %t103 = getelementptr %"compiler/typed:dropWalk", ptr %t101, i32 0, i32 9
  %t104 = load i64, ptr %l4, !tbaa !24
  %t105 = load i64, ptr %l3, !tbaa !24
  %t108 = add i64 %t104, %t105
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eSetAt_3cBool_3e(ptr %v0, ptr %t103, i64 %t108, i1 false)
  br label %bb25
bb24:
  %t111 = load ptr, ptr %l0, !tbaa !29
  %t113 = getelementptr %"compiler/typed:dropWalk", ptr %t111, i32 0, i32 10
  %t114 = load i64, ptr %l4, !tbaa !24
  %t115 = load i64, ptr %l3, !tbaa !24
  %t118 = add i64 %t114, %t115
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eSetAt_3cBool_3e(ptr %v0, ptr %t113, i64 %t118, i1 false)
  br label %bb26
bb25:
  br label %bb27
bb26:
  br label %bb27
bb27:
  br label %ret
ret:
  ret void
}

define dso_local { i64, ptr } @compiler_2ftyped_2ecompiler_2ftyped_3adropWalk_2eloopState(ptr %v0, ptr %v1, ptr %a0, i1 %a1, i64 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %l13 = alloca i64
  %l18 = alloca i64
  %l23 = alloca i64
  %l26 = alloca i64
  %l36 = alloca { i64, ptr }
  %l37 = alloca i64
  %l48 = alloca i1
  %l54 = alloca i1
  %l60 = alloca i1
  %rv = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store i64 %a2, ptr %l10, !tbaa !24
  %t2 = load ptr, ptr %l0, !tbaa !29
  %t4 = getelementptr %"compiler/typed:dropWalk", ptr %t2, i32 0, i32 2
  %t6 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eLen_3cBool_3e(ptr %v0, ptr %t4)
  store i64 %t6, ptr %l13
  br label %bb1
bb1:
  %t7 = load i64, ptr %l13, !tbaa !24
  %t8 = add i64 %t7, 1
  %t9 = load i64, ptr %l10, !tbaa !24
  %t11 = mul i64 %t9, %t8
  store i64 %t11, ptr %l3, !tbaa !24
  store i64 0, ptr %l4, !tbaa !24
  %t13 = load ptr, ptr %l0, !tbaa !29
  %t15 = getelementptr %"compiler/typed:dropWalk", ptr %t13, i32 0, i32 2
  %t17 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eLen_3cBool_3e(ptr %v0, ptr %t15)
  store i64 %t17, ptr %l18
  br label %bb2
bb2:
  %t18 = load i64, ptr %l18, !tbaa !24
  %t19 = add i64 %t18, 1
  store i64 %t19, ptr %l5, !tbaa !24
  store i64 1, ptr %l6, !tbaa !24
  %t21 = load i64, ptr %l5, !tbaa !24
  %t22 = load i64, ptr %l4, !tbaa !24
  %t25 = icmp sgt i64 %t21, %t22
  br i1 %t25, label %bb3, label %bb4
bb3:
  %t27 = load i64, ptr %l6, !tbaa !24
  %t29 = icmp sgt i64 %t27, 0
  br i1 %t29, label %bb5, label %bb6
bb4:
  store i64 0, ptr %l23, !tbaa !24
  br label %bb8
bb5:
  %t31 = load i64, ptr %l5, !tbaa !24
  %t32 = load i64, ptr %l4, !tbaa !24
  %t35 = sub i64 %t31, %t32
  %t36 = load i64, ptr %l6, !tbaa !24
  %t39 = add i64 %t35, %t36
  %t41 = sub i64 %t39, 1
  %t42 = load i64, ptr %l6, !tbaa !24
  %t45 = sdiv i64 %t41, %t42
  store i64 %t45, ptr %l26, !tbaa !24
  br label %bb7
bb6:
  store i64 0, ptr %l26, !tbaa !24
  br label %bb7
bb7:
  %t47 = load i64, ptr %l26, !tbaa !24
  store i64 %t47, ptr %l23, !tbaa !24
  br label %bb8
bb8:
  %t48 = load i64, ptr %l23, !tbaa !24
  store i64 %t48, ptr %l7, !tbaa !24
  store i64 0, ptr %l8, !tbaa !24
  %t49 = load i64, ptr %l7, !tbaa !24
  %t51 = mul i64 %t49, 1
  %t52 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t51)
  %t53 = insertvalue { i64, ptr } undef, i64 %t49, 0
  %t54 = insertvalue { i64, ptr } %t53, ptr %t52, 1
  store { i64, ptr } %t54, ptr %l36, !tbaa !27
  store i64 0, ptr %l37, !tbaa !24
  br label %bb9
bb9:
  %t55 = load i64, ptr %l8, !tbaa !24
  %t56 = load i64, ptr %l7, !tbaa !24
  %t59 = icmp slt i64 %t55, %t56
  %t61 = xor i1 %t59, true
  br i1 %t61, label %bb10, label %bb11
bb10:
  br label %bb19
bb11:
  br label %bb12
bb12:
  %t63 = load i64, ptr %l4, !tbaa !24
  %t64 = load i64, ptr %l8, !tbaa !24
  %t65 = load i64, ptr %l6, !tbaa !24
  %t68 = mul i64 %t64, %t65
  %t71 = add i64 %t63, %t68
  store i64 %t71, ptr %l9, !tbaa !24
  br i1 %a1, label %bb13, label %bb14
bb13:
  %t75 = load ptr, ptr %l0, !tbaa !29
  %t77 = getelementptr %"compiler/typed:dropWalk", ptr %t75, i32 0, i32 9
  %t78 = load i64, ptr %l3, !tbaa !24
  %t79 = load i64, ptr %l9, !tbaa !24
  %t82 = add i64 %t78, %t79
  %t85 = call i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eAt_3cBool_3e(ptr %v0, ptr %t77, i64 %t82)
  store i1 %t85, ptr %l54
  br label %bb15
bb14:
  %t86 = load ptr, ptr %l0, !tbaa !29
  %t88 = getelementptr %"compiler/typed:dropWalk", ptr %t86, i32 0, i32 10
  %t89 = load i64, ptr %l3, !tbaa !24
  %t90 = load i64, ptr %l9, !tbaa !24
  %t93 = add i64 %t89, %t90
  %t96 = call i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eAt_3cBool_3e(ptr %v0, ptr %t88, i64 %t93)
  store i1 %t96, ptr %l60
  br label %bb16
bb15:
  %t97 = load i1, ptr %l54, !tbaa !21
  store i1 %t97, ptr %l48, !tbaa !21
  br label %bb17
bb16:
  %t98 = load i1, ptr %l60, !tbaa !21
  store i1 %t98, ptr %l48, !tbaa !21
  br label %bb17
bb17:
  %t99 = load i1, ptr %l48, !tbaa !21
  %t100 = load i64, ptr %l37, !tbaa !24
  %t101 = getelementptr { i64, ptr }, ptr %l36, i32 0, i32 1
  %t102 = load ptr, ptr %t101, !tbaa !27
  %t103 = getelementptr i1, ptr %t102, i64 %t100
  store i1 %t99, ptr %t103, !tbaa !31
  %t104 = load i64, ptr %l37, !tbaa !24
  %t105 = add i64 %t104, 1
  store i64 %t105, ptr %l37, !tbaa !24
  br label %bb18
bb18:
  %t106 = load i64, ptr %l8, !tbaa !24
  %t108 = add i64 %t106, 1
  store i64 %t108, ptr %l8, !tbaa !24
  br label %bb9
bb19:
  %t110 = load { i64, ptr }, ptr %l36, !tbaa !27
  store { i64, ptr } %t110, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local void @compiler_2ftyped_2ecompiler_2ftyped_3aholdWalk_2eadd(ptr %v0, ptr %a0, i64 %a1, i64 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca i64
  %l6 = alloca i1
  %l10 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l13 = alloca i1
  %l17 = alloca ptr
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  store i64 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load i64, ptr %l1, !tbaa !24
  %t2 = load i64, ptr %l2, !tbaa !24
  %t5 = icmp eq i64 %t1, %t2
  br i1 %t5, label %bb1, label %bb2
bb1:
  store i1 true, ptr %l6, !tbaa !21
  br label %bb5
bb2:
  %t7 = load ptr, ptr %l0, !tbaa !29
  %t9 = getelementptr %"compiler/typed:holdWalk", ptr %t7, i32 0, i32 2
  %t10 = load i64, ptr %l1, !tbaa !24
  %t13 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2fvec_3aVec_3cI64_3e_3e__H7b6d4eff6fc9c3821aae8b284e12e095(ptr %v0, ptr %v0, ptr %t9, i64 %t10)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t13, ptr %l10
  br label %bb3
bb3:
  %t14 = load i64, ptr %l2, !tbaa !24
  %t17 = call i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eHas_3cI64_3e(ptr %v0, ptr %l10, i64 %t14)
  store i1 %t17, ptr %l13
  br label %bb4
bb4:
  %t18 = load i1, ptr %l13, !tbaa !21
  store i1 %t18, ptr %l6, !tbaa !21
  br label %bb5
bb5:
  %t19 = load i1, ptr %l6, !tbaa !21
  br i1 %t19, label %bb6, label %bb7
bb6:
  br label %ret
bb7:
  br label %bb8
bb8:
  %t20 = load ptr, ptr %l0, !tbaa !29
  %t22 = getelementptr %"compiler/typed:holdWalk", ptr %t20, i32 0, i32 2
  %t23 = load i64, ptr %l1, !tbaa !24
  %t26 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2fvec_3aVec_3cI64_3e_3e__Hcb8bb928db85b876b7f95fc01a2ef730(ptr %v0, ptr %v0, ptr %t22, i64 %t23)
  store ptr %t26, ptr %l17
  br label %bb9
bb9:
  %t27 = load i64, ptr %l2, !tbaa !24
  %t28 = load ptr, ptr %l17, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %t28, i64 %t27)
  br label %bb10
bb10:
  %t30 = load ptr, ptr %l0, !tbaa !29
  %t32 = getelementptr %"compiler/typed:holdWalk", ptr %t30, i32 0, i32 3
  store i1 true, ptr %t32, !tbaa !21
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2ftyped_2ecompiler_2ftyped_3aholdWalk_2eblock(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca { i64, ptr }
  %l3 = alloca i64
  %l4 = alloca i64
  %l20 = alloca { i64, ptr }
  %l27 = alloca i32
  %l30 = alloca i32
  %l31 = alloca i32
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
  %t7 = getelementptr %"compiler/typed:holdWalk", ptr %t5, i32 0, i32 8
  %t8 = load ptr, ptr %l1, !tbaa !29
  %t10 = getelementptr %"compiler/typed:Block", ptr %t8, i32 0, i32 0
  %t11 = load i32, ptr %t10, !tbaa !23
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aBlockId_3e_2ePush_3ccompiler_2ftyped_3aBlockId_3e(ptr %v0, ptr %t7, i32 %t11)
  br label %bb4
bb4:
  %t14 = load ptr, ptr %l1, !tbaa !29
  %t16 = getelementptr %"compiler/typed:Block", ptr %t14, i32 0, i32 1
  %t17 = load { i64, ptr }, ptr %t16, !tbaa !27
  store { i64, ptr } %t17, ptr %l2, !tbaa !27
  store i64 0, ptr %l3, !tbaa !24
  %t19 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t21 = extractvalue { i64, ptr } %t19, 0
  store i64 %t21, ptr %l4, !tbaa !24
  br label %bb5
bb5:
  %t23 = load i64, ptr %l3, !tbaa !24
  %t24 = load i64, ptr %l4, !tbaa !24
  %t27 = icmp slt i64 %t23, %t24
  %t29 = xor i1 %t27, true
  br i1 %t29, label %bb6, label %bb7
bb6:
  br label %bb11
bb7:
  br label %bb8
bb8:
  %t31 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t31, ptr %l20, !tbaa !27
  %t32 = load i64, ptr %l3, !tbaa !24
  %t34 = getelementptr { i64, ptr }, ptr %l20, i32 0, i32 1
  %t35 = load ptr, ptr %t34, !tbaa !27
  %t36 = getelementptr ptr, ptr %t35, i64 %t32
  %t37 = load ptr, ptr %t36, !tbaa !39
  %t39 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aholdWalk_2estmt(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %t39, ptr %t37)
  br label %bb9
bb9:
  br label %bb10
bb10:
  %t43 = load i64, ptr %l3, !tbaa !24
  %t45 = add i64 %t43, 1
  store i64 %t45, ptr %l3, !tbaa !24
  br label %bb5
bb11:
  %t47 = load ptr, ptr %l0, !tbaa !29
  %t49 = getelementptr %"compiler/typed:holdWalk", ptr %t47, i32 0, i32 8
  %t51 = call { i32, i32 } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aBlockId_3e_2ePop_3ccompiler_2ftyped_3aBlockId_3e(ptr %v0, ptr %t49)
  %t52 = extractvalue { i32, i32 } %t51, 1
  %t53 = extractvalue { i32, i32 } %t51, 0
  store i32 %t53, ptr %l31
  %t54 = icmp ne i32 %t53, 0
  br i1 %t54, label %bb13, label %ok.55, !prof !99
ok.55:
  store i32 %t52, ptr %l30
  br label %bb12
bb12:
  %t56 = load i32, ptr %l30, !tbaa !23
  store i32 %t56, ptr %l27, !tbaa !23
  br label %bb20
bb13:
  %t57 = load i32, ptr %l31, !tbaa !23
  %t58 = icmp eq i32 %t57, 65536
  br i1 %t58, label %bb14, label %bb15
bb14:
  call void @__olang_bang_failed_plain(ptr @olang_loc_ee90b64eb208d194_3ee30fc86ac20510)
  unreachable
bb15:
  %t60 = load i32, ptr %l31, !tbaa !23
  %t61 = icmp eq i32 %t60, 65537
  br i1 %t61, label %bb16, label %bb17
bb16:
  call void @__olang_bang_failed_plain(ptr @olang_loc_adeeaf8d66de5e9_765e2536cff45a05)
  unreachable
bb17:
  %t63 = load i32, ptr %l31, !tbaa !23
  %t64 = icmp eq i32 %t63, 65538
  br i1 %t64, label %bb18, label %bb19
bb18:
  call void @__olang_bang_failed_plain(ptr @olang_loc_735ea97a101db8a9_ef46e9a3f6738c65)
  unreachable
bb19:
  call void @__olang_bang_failed_plain(ptr @olang_loc_720a79c775c6eb2f_4e77fac288b2d7ab)
  unreachable
bb20:
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2ftyped_2ecompiler_2ftyped_3aholdWalk_2emix(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, { i64, ptr } %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca { i64, ptr }
  %l2 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l3 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l4 = alloca { i64, ptr }
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca ptr
  %l8 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l12 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l13 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l21 = alloca { i64, ptr }
  %l24 = alloca ptr
  %l28 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l30 = alloca { i64, ptr }
  %l31 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l35 = alloca ptr
  %l37 = alloca i32
  %l39 = alloca i1
  %l45 = alloca i64
  %s0 = alloca %olang.scope
  %s3 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store { i64, ptr } %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t3 = extractvalue { i64, ptr } %t1, 0
  %t5 = icmp eq i64 %t3, 0
  br i1 %t5, label %bb1, label %bb2
bb1:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb2:
  br label %bb3
bb3:
  %t7 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %s0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t7, ptr %l12
  br label %bb4
bb4:
  %t8 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l12
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t8, ptr %l2
  %t9 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %s0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t9, ptr %l13
  br label %bb5
bb5:
  %t10 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l13
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t10, ptr %l3
  %t11 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t11, ptr %l4, !tbaa !27
  store i64 0, ptr %l5, !tbaa !24
  %t13 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t15 = extractvalue { i64, ptr } %t13, 0
  store i64 %t15, ptr %l6, !tbaa !24
  br label %bb6
bb6:
  store %olang.scope zeroinitializer, ptr %s3
  %t17 = load i64, ptr %l5, !tbaa !24
  %t18 = load i64, ptr %l6, !tbaa !24
  %t21 = icmp slt i64 %t17, %t18
  %t23 = xor i1 %t21, true
  br i1 %t23, label %bb7, label %bb8
bb7:
  call void @__olang_scope_close(ptr %s3)
  br label %bb21
bb8:
  br label %bb9
bb9:
  %t25 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t25, ptr %l21, !tbaa !27
  %t26 = load i64, ptr %l5, !tbaa !24
  %t28 = getelementptr { i64, ptr }, ptr %l21, i32 0, i32 1
  %t29 = load ptr, ptr %t28, !tbaa !27
  %t30 = getelementptr ptr, ptr %t29, i64 %t26
  %t31 = load ptr, ptr %t30, !tbaa !39
  store ptr %t31, ptr %l7, !tbaa !29
  %t33 = load ptr, ptr %l0, !tbaa !29
  store ptr %t33, ptr %l24, !tbaa !29
  %t34 = load ptr, ptr %l0, !tbaa !29
  %t35 = load ptr, ptr %l7, !tbaa !29
  %t39 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2ftyped_2ecompiler_2ftyped_3aholdWalk_2etyped(ptr %v0, ptr %v1, ptr %s3, ptr %v2, ptr %v3, ptr %t34, ptr %t35)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t39, ptr %l28
  br label %bb10
bb10:
  %t40 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l28
  %t41 = call ptr @__olang_scope_alloc_a(ptr %s3, i64 32, i64 8)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t40, ptr %t41
  %t43 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eToArray_3cI64_3e(ptr %s3, ptr %s3, ptr %t41)
  store { i64, ptr } %t43, ptr %l30
  br label %bb11
bb11:
  %t44 = load ptr, ptr %l24, !tbaa !29
  %t45 = load { i64, ptr }, ptr %l30, !tbaa !27
  %t46 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2ftyped_2ecompiler_2ftyped_3aholdWalk_2eclosure(ptr %v0, ptr %s3, ptr %s3, ptr %t44, { i64, ptr } %t45)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t46, ptr %l31
  br label %bb12
bb12:
  %t47 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l31
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t47, ptr %l8
  call void @compiler_2ftyped_2eunion(ptr %s0, ptr %s3, ptr %l2, ptr %l8)
  br label %bb13
bb13:
  %t50 = load ptr, ptr %l0, !tbaa !29
  %t52 = getelementptr %"compiler/typed:holdWalk", ptr %t50, i32 0, i32 0
  %t53 = load ptr, ptr %t52, !tbaa !29
  store ptr %t53, ptr %l35, !tbaa !29
  %t54 = load ptr, ptr %l7, !tbaa !29
  %t56 = call i32 @compiler_2ftyped_2ecompiler_2ftyped_3aExpr_2eType(ptr %v1, ptr %t54)
  store i32 %t56, ptr %l37
  br label %bb14
bb14:
  %t57 = load ptr, ptr %l35, !tbaa !29
  %t58 = call ptr @__olang_scope_or(ptr %v2, ptr %t57)
  %t59 = ptrtoint ptr %t58 to i64
  %t61 = inttoptr i64 %t59 to ptr
  %t62 = load ptr, ptr %l35, !tbaa !29
  %t63 = load i32, ptr %l37, !tbaa !23
  %t64 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eReachesWrite(ptr %t61, ptr %t62, i32 %t63)
  store i1 %t64, ptr %l39
  br label %bb15
bb15:
  %t65 = load i1, ptr %l39, !tbaa !21
  br i1 %t65, label %bb16, label %bb17
bb16:
  call void @compiler_2ftyped_2eunion(ptr %s0, ptr %s3, ptr %l3, ptr %l8)
  br label %bb18
bb17:
  br label %bb19
bb18:
  br label %bb19
bb19:
  call void @__olang_scope_close(ptr %s3)
  br label %bb20
bb20:
  %t68 = load i64, ptr %l5, !tbaa !24
  %t70 = add i64 %t68, 1
  store i64 %t70, ptr %l5, !tbaa !24
  br label %bb6
bb21:
  %t73 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %s0, ptr %l3)
  store i64 %t73, ptr %l45
  br label %bb22
bb22:
  %t74 = load i64, ptr %l45, !tbaa !24
  %t75 = icmp sgt i64 %t74, 0
  br i1 %t75, label %bb23, label %bb24
bb23:
  %t77 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aholdWalk_2estore(ptr %v0, ptr %s0, ptr %s0, ptr %v3, ptr %v2, ptr %t77, ptr %l3, ptr %l2)
  br label %bb25
bb24:
  br label %bb26
bb25:
  br label %bb26
bb26:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2ftyped_2ecompiler_2ftyped_3aholdWalk_2estmt(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca %"compiler/source:Span"
  %l3 = alloca i32
  %l4 = alloca ptr
  %l5 = alloca %"compiler/source:Span"
  %l6 = alloca ptr
  %l7 = alloca ptr
  %l8 = alloca %"compiler/source:Span"
  %l9 = alloca i32
  %l10 = alloca i32
  %l11 = alloca %"compiler/source:Span"
  %l12 = alloca i32
  %l14 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l15 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l16 = alloca ptr
  %l17 = alloca ptr
  %l18 = alloca ptr
  %l19 = alloca ptr
  %l20 = alloca ptr
  %l21 = alloca ptr
  %l22 = alloca ptr
  %l23 = alloca ptr
  %l24 = alloca ptr
  %l25 = alloca ptr
  %l26 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l27 = alloca { i64, ptr }
  %l28 = alloca i64
  %l29 = alloca i64
  %l30 = alloca ptr
  %l31 = alloca { i64, ptr }
  %l32 = alloca i64
  %l33 = alloca i64
  %l35 = alloca ptr
  %l36 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l37 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l38 = alloca ptr
  %l39 = alloca i1
  %l51 = alloca i1
  %l56 = alloca ptr
  %l59 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l60 = alloca ptr
  %l64 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l66 = alloca ptr
  %l67 = alloca i1
  %l76 = alloca ptr
  %l77 = alloca i1
  %l80 = alloca i1
  %l90 = alloca i1
  %l103 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l105 = alloca ptr
  %l107 = alloca { i64, ptr }
  %l112 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l113 = alloca { i64, ptr }
  %l116 = alloca { i64, ptr }
  %l117 = alloca i32
  %l124 = alloca ptr
  %l125 = alloca i1
  %l130 = alloca ptr
  %l131 = alloca i1
  %l139 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l140 = alloca ptr
  %l141 = alloca i1
  %l151 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l154 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l155 = alloca ptr
  %l156 = alloca i1
  %l165 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l173 = alloca ptr
  %l174 = alloca i1
  %l186 = alloca ptr
  %l187 = alloca i1
  %l192 = alloca ptr
  %l193 = alloca i1
  %l198 = alloca ptr
  %l199 = alloca i1
  %l206 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l207 = alloca ptr
  %l208 = alloca i1
  %l213 = alloca ptr
  %l214 = alloca i1
  %l222 = alloca ptr
  %l223 = alloca i1
  %l235 = alloca ptr
  %l236 = alloca i1
  %l245 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l254 = alloca { i64, ptr }
  %l260 = alloca ptr
  %l263 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l276 = alloca { i64, ptr }
  %l282 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l285 = alloca ptr
  %l286 = alloca i1
  %l294 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l297 = alloca i64
  %l299 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l302 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l303 = alloca i32
  %s1 = alloca %olang.scope
  %s3 = alloca %olang.scope
  %s5 = alloca %olang.scope
  %s6 = alloca %olang.scope
  %s7 = alloca %olang.scope
  %s9 = alloca %olang.scope
  %s12 = alloca %olang.scope
  %s15 = alloca %olang.scope
  %s18 = alloca %olang.scope
  %s20 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l1, !tbaa !29
  store ptr %t1, ptr %l38, !tbaa !29
  store i1 false, ptr %l39, !tbaa !21
  %t2 = load ptr, ptr %l38, !tbaa !29
  %t3 = icmp ne ptr %t2, null
  br i1 %t3, label %bb1, label %bb2
bb1:
  %t5 = load ptr, ptr %l38, !tbaa !29
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 17}
  %t8 = icmp eq i64 %t6, 0
  store i1 %t8, ptr %l39, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l39, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  %t10 = load ptr, ptr %l1, !tbaa !29
  %t12 = getelementptr { i64, [3 x i64] }, ptr %t10, i32 0, i32 1
  %t13 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t12, i32 0, i32 0
  %t14 = load %"compiler/source:Span", ptr %t13
  store %"compiler/source:Span" %t14, ptr %l2
  %t16 = load ptr, ptr %l1, !tbaa !29
  %t18 = getelementptr { i64, [3 x i64] }, ptr %t16, i32 0, i32 1
  %t19 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t18, i32 0, i32 1
  %t20 = load i32, ptr %t19
  store i32 %t20, ptr %l3, !tbaa !23
  %t22 = load ptr, ptr %l1, !tbaa !29
  %t24 = getelementptr { i64, [3 x i64] }, ptr %t22, i32 0, i32 1
  %t25 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t24, i32 0, i32 2
  %t26 = load ptr, ptr %t25
  store ptr %t26, ptr %l4, !tbaa !29
  br label %bb5
bb4:
  br label %bb14
bb5:
  store %olang.scope zeroinitializer, ptr %s1
  %t28 = load ptr, ptr %l0, !tbaa !29
  %t29 = load ptr, ptr %l4, !tbaa !29
  %t33 = call i1 @compiler_2ftyped_2ecompiler_2ftyped_3aholdWalk_2eregistered(ptr %v0, ptr %v1, ptr %v2, ptr %t28, ptr %t29)
  store i1 %t33, ptr %l51
  br label %bb6
bb6:
  %t34 = load i1, ptr %l51, !tbaa !21
  br i1 %t34, label %bb7, label %bb8
bb7:
  %t35 = load ptr, ptr %l0, !tbaa !29
  %t36 = load i32, ptr %l3, !tbaa !23
  %t38 = sext i32 %t36 to i64
  %t39 = load %"compiler/source:Span", ptr %l2
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aholdWalk_2eregister(ptr %v0, ptr %t35, i64 %t38, %"compiler/source:Span" %t39)
  br label %bb9
bb8:
  br label %bb10
bb9:
  br label %bb10
bb10:
  %t43 = load ptr, ptr %l0, !tbaa !29
  store ptr %t43, ptr %l56, !tbaa !29
  %t44 = load i32, ptr %l3, !tbaa !23
  %t46 = sext i32 %t44 to i64
  %t48 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2ftyped_2eone(ptr %s1, i64 %t46)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t48, ptr %l59
  br label %bb11
bb11:
  %t49 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l59
  %t50 = call ptr @__olang_scope_alloc_a(ptr %s1, i64 32, i64 8)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t49, ptr %t50
  store ptr %t50, ptr %l60, !tbaa !29
  %t51 = load ptr, ptr %l0, !tbaa !29
  %t52 = load ptr, ptr %l4, !tbaa !29
  %t56 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2ftyped_2ecompiler_2ftyped_3aholdWalk_2etyped(ptr %v0, ptr %v1, ptr %s1, ptr %v2, ptr %v3, ptr %t51, ptr %t52)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t56, ptr %l64
  br label %bb12
bb12:
  %t57 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l64
  %t58 = call ptr @__olang_scope_alloc_a(ptr %s1, i64 32, i64 8)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t57, ptr %t58
  %t59 = load ptr, ptr %l56, !tbaa !29
  %t60 = load ptr, ptr %l60, !tbaa !29
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aholdWalk_2estore(ptr %v0, ptr %s1, ptr %s1, ptr %v3, ptr %v2, ptr %t59, ptr %t60, ptr %t58)
  br label %bb13
bb13:
  call void @__olang_scope_close(ptr %s1)
  br label %bb166
bb14:
  %t62 = load ptr, ptr %l1, !tbaa !29
  store ptr %t62, ptr %l66, !tbaa !29
  store i1 false, ptr %l67, !tbaa !21
  %t63 = load ptr, ptr %l66, !tbaa !29
  %t64 = icmp ne ptr %t63, null
  br i1 %t64, label %bb15, label %bb16
bb15:
  %t66 = load ptr, ptr %l66, !tbaa !29
  %t67 = load i64, ptr %t66, !range !{i64 0, i64 17}
  %t69 = icmp eq i64 %t67, 1
  store i1 %t69, ptr %l67, !tbaa !21
  br label %bb16
bb16:
  %t70 = load i1, ptr %l67, !tbaa !21
  br i1 %t70, label %bb17, label %bb18
bb17:
  %t71 = load ptr, ptr %l1, !tbaa !29
  %t73 = getelementptr { i64, [3 x i64] }, ptr %t71, i32 0, i32 1
  %t74 = getelementptr { %"compiler/source:Span", ptr, ptr }, ptr %t73, i32 0, i32 0
  %t75 = load %"compiler/source:Span", ptr %t74
  store %"compiler/source:Span" %t75, ptr %l5
  %t77 = load ptr, ptr %l1, !tbaa !29
  %t79 = getelementptr { i64, [3 x i64] }, ptr %t77, i32 0, i32 1
  %t80 = getelementptr { %"compiler/source:Span", ptr, ptr }, ptr %t79, i32 0, i32 1
  %t81 = load ptr, ptr %t80
  store ptr %t81, ptr %l6, !tbaa !29
  %t83 = load ptr, ptr %l1, !tbaa !29
  %t85 = getelementptr { i64, [3 x i64] }, ptr %t83, i32 0, i32 1
  %t86 = getelementptr { %"compiler/source:Span", ptr, ptr }, ptr %t85, i32 0, i32 2
  %t87 = load ptr, ptr %t86
  store ptr %t87, ptr %l7, !tbaa !29
  br label %bb19
bb18:
  br label %bb44
bb19:
  store %olang.scope zeroinitializer, ptr %s3
  %t89 = load ptr, ptr %l6, !tbaa !29
  store ptr %t89, ptr %l76, !tbaa !29
  store i1 false, ptr %l77, !tbaa !21
  %t90 = load ptr, ptr %l76, !tbaa !29
  %t91 = icmp ne ptr %t90, null
  br i1 %t91, label %bb20, label %bb21
bb20:
  %t93 = load ptr, ptr %l76, !tbaa !29
  %t94 = load i64, ptr %t93, !range !{i64 0, i64 8}
  %t96 = icmp eq i64 %t94, 0
  store i1 %t96, ptr %l77, !tbaa !21
  br label %bb21
bb21:
  %t97 = load i1, ptr %l77, !tbaa !21
  br i1 %t97, label %bb22, label %bb23
bb22:
  %t98 = load ptr, ptr %l6, !tbaa !29
  %t100 = getelementptr { i64, [4 x i64] }, ptr %t98, i32 0, i32 1
  %t101 = getelementptr { %"compiler/source:Span", i32, i32 }, ptr %t100, i32 0, i32 0
  %t102 = load %"compiler/source:Span", ptr %t101
  store %"compiler/source:Span" %t102, ptr %l8
  %t104 = load ptr, ptr %l6, !tbaa !29
  %t106 = getelementptr { i64, [4 x i64] }, ptr %t104, i32 0, i32 1
  %t107 = getelementptr { %"compiler/source:Span", i32, i32 }, ptr %t106, i32 0, i32 1
  %t108 = load i32, ptr %t107
  store i32 %t108, ptr %l9, !tbaa !23
  %t110 = load ptr, ptr %l6, !tbaa !29
  %t112 = getelementptr { i64, [4 x i64] }, ptr %t110, i32 0, i32 1
  %t113 = getelementptr { %"compiler/source:Span", i32, i32 }, ptr %t112, i32 0, i32 2
  %t114 = load i32, ptr %t113
  store i32 %t114, ptr %l10, !tbaa !23
  %t116 = load ptr, ptr %l0, !tbaa !29
  %t117 = load ptr, ptr %l7, !tbaa !29
  %t121 = call i1 @compiler_2ftyped_2ecompiler_2ftyped_3aholdWalk_2eregistered(ptr %v0, ptr %v1, ptr %v2, ptr %t116, ptr %t117)
  store i1 %t121, ptr %l90
  br label %bb24
bb23:
  store i1 false, ptr %l80, !tbaa !21
  br label %bb25
bb24:
  %t122 = load i1, ptr %l90, !tbaa !21
  store i1 %t122, ptr %l80, !tbaa !21
  br label %bb25
bb25:
  %t123 = load i1, ptr %l80, !tbaa !21
  br i1 %t123, label %bb26, label %bb27
bb26:
  %t124 = load ptr, ptr %l6, !tbaa !29
  %t126 = getelementptr { i64, [4 x i64] }, ptr %t124, i32 0, i32 1
  %t127 = getelementptr { %"compiler/source:Span", i32, i32 }, ptr %t126, i32 0, i32 0
  %t128 = load %"compiler/source:Span", ptr %t127
  store %"compiler/source:Span" %t128, ptr %l11
  %t130 = load ptr, ptr %l6, !tbaa !29
  %t132 = getelementptr { i64, [4 x i64] }, ptr %t130, i32 0, i32 1
  %t133 = getelementptr { %"compiler/source:Span", i32, i32 }, ptr %t132, i32 0, i32 1
  %t134 = load i32, ptr %t133
  store i32 %t134, ptr %l12, !tbaa !23
  %t136 = load ptr, ptr %l6, !tbaa !29
  %t138 = getelementptr { i64, [4 x i64] }, ptr %t136, i32 0, i32 1
  %t139 = getelementptr { %"compiler/source:Span", i32, i32 }, ptr %t138, i32 0, i32 2
  %t140 = load i32, ptr %t139
  %t142 = load ptr, ptr %l0, !tbaa !29
  %t145 = sext i32 %t140 to i64
  %t146 = load %"compiler/source:Span", ptr %l5
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aholdWalk_2eregister(ptr %v0, ptr %t142, i64 %t145, %"compiler/source:Span" %t146)
  br label %bb28
bb27:
  br label %bb29
bb28:
  br label %bb29
bb29:
  %t150 = load ptr, ptr %l0, !tbaa !29
  %t151 = load ptr, ptr %l6, !tbaa !29
  %t154 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2ftyped_2ecompiler_2ftyped_3aholdWalk_2estorage(ptr %v0, ptr %v1, ptr %s3, ptr %v2, ptr %v3, ptr %t150, ptr %t151)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t154, ptr %l103
  br label %bb30
bb30:
  %t155 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l103
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t155, ptr %l14
  %t156 = load ptr, ptr %l0, !tbaa !29
  %t158 = getelementptr %"compiler/typed:holdWalk", ptr %t156, i32 0, i32 4
  store ptr %t158, ptr %l105, !tbaa !29
  %t160 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eToArray_3cI64_3e(ptr %s3, ptr %s3, ptr %l14)
  store { i64, ptr } %t160, ptr %l107
  br label %bb31
bb31:
  %t161 = load { i64, ptr }, ptr %l107, !tbaa !27
  %t162 = load ptr, ptr %l105, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cArray_3cI64_3e_3e_2ePush_3cArray_3cI64_3e_3e(ptr %v0, ptr %t162, { i64, ptr } %t161)
  br label %bb32
bb32:
  %t164 = load ptr, ptr %l0, !tbaa !29
  %t165 = load ptr, ptr %l7, !tbaa !29
  %t169 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2ftyped_2ecompiler_2ftyped_3aholdWalk_2etyped(ptr %v0, ptr %v1, ptr %s3, ptr %v2, ptr %v3, ptr %t164, ptr %t165)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t169, ptr %l112
  br label %bb33
bb33:
  %t170 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l112
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t170, ptr %l15
  %t171 = load ptr, ptr %l0, !tbaa !29
  %t173 = getelementptr %"compiler/typed:holdWalk", ptr %t171, i32 0, i32 4
  %t175 = call { i32, { i64, ptr } } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cArray_3cI64_3e_3e_2ePop_3cArray_3cI64_3e_3e(ptr %v0, ptr %s3, ptr %t173)
  %t176 = extractvalue { i32, { i64, ptr } } %t175, 1
  %t177 = extractvalue { i32, { i64, ptr } } %t175, 0
  store i32 %t177, ptr %l117
  %t178 = icmp ne i32 %t177, 0
  br i1 %t178, label %bb35, label %ok.179, !prof !99
ok.179:
  store { i64, ptr } %t176, ptr %l116
  br label %bb34
bb34:
  %t180 = load { i64, ptr }, ptr %l116, !tbaa !27
  store { i64, ptr } %t180, ptr %l113, !tbaa !27
  br label %bb42
bb35:
  %t181 = load i32, ptr %l117, !tbaa !23
  %t182 = icmp eq i32 %t181, 65536
  br i1 %t182, label %bb36, label %bb37
bb36:
  call void @__olang_bang_failed_plain(ptr @olang_loc_96ed7c0737fb007f_bcf36b4956f76d4b)
  unreachable
bb37:
  %t184 = load i32, ptr %l117, !tbaa !23
  %t185 = icmp eq i32 %t184, 65537
  br i1 %t185, label %bb38, label %bb39
bb38:
  call void @__olang_bang_failed_plain(ptr @olang_loc_eee80033d1164c3c_3495c4b80935428)
  unreachable
bb39:
  %t187 = load i32, ptr %l117, !tbaa !23
  %t188 = icmp eq i32 %t187, 65538
  br i1 %t188, label %bb40, label %bb41
bb40:
  call void @__olang_bang_failed_plain(ptr @olang_loc_d52aab1c9c36d4_17087f4c711c4240)
  unreachable
bb41:
  call void @__olang_bang_failed_plain(ptr @olang_loc_fe54fd99e9902812_25d1b4e50c46612e)
  unreachable
bb42:
  %t190 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aholdWalk_2estore(ptr %v0, ptr %s3, ptr %s3, ptr %v3, ptr %v2, ptr %t190, ptr %l14, ptr %l15)
  br label %bb43
bb43:
  call void @__olang_scope_close(ptr %s3)
  br label %bb166
bb44:
  %t194 = load ptr, ptr %l1, !tbaa !29
  store ptr %t194, ptr %l124, !tbaa !29
  store i1 false, ptr %l125, !tbaa !21
  %t195 = load ptr, ptr %l124, !tbaa !29
  %t196 = icmp ne ptr %t195, null
  br i1 %t196, label %bb45, label %bb46
bb45:
  %t198 = load ptr, ptr %l124, !tbaa !29
  %t199 = load i64, ptr %t198, !range !{i64 0, i64 17}
  %t201 = icmp eq i64 %t199, 2
  store i1 %t201, ptr %l125, !tbaa !21
  br label %bb46
bb46:
  %t202 = load i1, ptr %l125, !tbaa !21
  br i1 %t202, label %bb47, label %bb48
bb47:
  %t203 = load ptr, ptr %l1, !tbaa !29
  %t205 = getelementptr { i64, [3 x i64] }, ptr %t203, i32 0, i32 1
  %t206 = getelementptr { %"compiler/source:Span", ptr }, ptr %t205, i32 0, i32 1
  %t207 = load ptr, ptr %t206
  store ptr %t207, ptr %l16, !tbaa !29
  br label %bb53
bb48:
  %t209 = load ptr, ptr %l1, !tbaa !29
  store ptr %t209, ptr %l130, !tbaa !29
  store i1 false, ptr %l131, !tbaa !21
  %t210 = load ptr, ptr %l130, !tbaa !29
  %t211 = icmp ne ptr %t210, null
  br i1 %t211, label %bb49, label %bb50
bb49:
  %t213 = load ptr, ptr %l130, !tbaa !29
  %t214 = load i64, ptr %t213, !range !{i64 0, i64 17}
  %t216 = icmp eq i64 %t214, 8
  store i1 %t216, ptr %l131, !tbaa !21
  br label %bb50
bb50:
  %t217 = load i1, ptr %l131, !tbaa !21
  br i1 %t217, label %bb51, label %bb52
bb51:
  %t218 = load ptr, ptr %l1, !tbaa !29
  %t220 = getelementptr { i64, [3 x i64] }, ptr %t218, i32 0, i32 1
  %t221 = getelementptr { %"compiler/source:Span", ptr, i32 }, ptr %t220, i32 0, i32 1
  %t222 = load ptr, ptr %t221
  store ptr %t222, ptr %l16, !tbaa !29
  br label %bb53
bb52:
  br label %bb55
bb53:
  store %olang.scope zeroinitializer, ptr %s5
  %t224 = load ptr, ptr %l0, !tbaa !29
  %t225 = load ptr, ptr %l16, !tbaa !29
  %t229 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2ftyped_2ecompiler_2ftyped_3aholdWalk_2erefs(ptr %v0, ptr %v1, ptr %s5, ptr %v2, ptr %v3, ptr %t224, ptr %t225)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t229, ptr %l139
  br label %bb54
bb54:
  call void @__olang_scope_close(ptr %s5)
  br label %bb166
bb55:
  %t230 = load ptr, ptr %l1, !tbaa !29
  store ptr %t230, ptr %l140, !tbaa !29
  store i1 false, ptr %l141, !tbaa !21
  %t231 = load ptr, ptr %l140, !tbaa !29
  %t232 = icmp ne ptr %t231, null
  br i1 %t232, label %bb56, label %bb57
bb56:
  %t234 = load ptr, ptr %l140, !tbaa !29
  %t235 = load i64, ptr %t234, !range !{i64 0, i64 17}
  %t237 = icmp eq i64 %t235, 10
  store i1 %t237, ptr %l141, !tbaa !21
  br label %bb57
bb57:
  %t238 = load i1, ptr %l141, !tbaa !21
  br i1 %t238, label %bb58, label %bb59
bb58:
  %t239 = load ptr, ptr %l1, !tbaa !29
  %t241 = getelementptr { i64, [3 x i64] }, ptr %t239, i32 0, i32 1
  %t242 = getelementptr { %"compiler/source:Span", ptr, ptr }, ptr %t241, i32 0, i32 1
  %t243 = load ptr, ptr %t242
  store ptr %t243, ptr %l17, !tbaa !29
  %t245 = load ptr, ptr %l1, !tbaa !29
  %t247 = getelementptr { i64, [3 x i64] }, ptr %t245, i32 0, i32 1
  %t248 = getelementptr { %"compiler/source:Span", ptr, ptr }, ptr %t247, i32 0, i32 2
  %t249 = load ptr, ptr %t248
  store ptr %t249, ptr %l18, !tbaa !29
  br label %bb60
bb59:
  br label %bb63
bb60:
  store %olang.scope zeroinitializer, ptr %s6
  %t251 = load ptr, ptr %l0, !tbaa !29
  %t252 = load ptr, ptr %l17, !tbaa !29
  %t256 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2ftyped_2ecompiler_2ftyped_3aholdWalk_2erefs(ptr %v0, ptr %v1, ptr %s6, ptr %v2, ptr %v3, ptr %t251, ptr %t252)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t256, ptr %l151
  br label %bb61
bb61:
  %t257 = load ptr, ptr %l0, !tbaa !29
  %t258 = load ptr, ptr %l18, !tbaa !29
  %t261 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2ftyped_2ecompiler_2ftyped_3aholdWalk_2erefs(ptr %v0, ptr %v1, ptr %s6, ptr %v2, ptr %v3, ptr %t257, ptr %t258)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t261, ptr %l154
  br label %bb62
bb62:
  call void @__olang_scope_close(ptr %s6)
  br label %bb166
bb63:
  %t262 = load ptr, ptr %l1, !tbaa !29
  store ptr %t262, ptr %l155, !tbaa !29
  store i1 false, ptr %l156, !tbaa !21
  %t263 = load ptr, ptr %l155, !tbaa !29
  %t264 = icmp ne ptr %t263, null
  br i1 %t264, label %bb64, label %bb65
bb64:
  %t266 = load ptr, ptr %l155, !tbaa !29
  %t267 = load i64, ptr %t266, !range !{i64 0, i64 17}
  %t269 = icmp eq i64 %t267, 3
  store i1 %t269, ptr %l156, !tbaa !21
  br label %bb65
bb65:
  %t270 = load i1, ptr %l156, !tbaa !21
  br i1 %t270, label %bb66, label %bb67
bb66:
  %t271 = load ptr, ptr %l1, !tbaa !29
  %t273 = getelementptr { i64, [3 x i64] }, ptr %t271, i32 0, i32 1
  %t274 = getelementptr { %"compiler/source:Span", ptr }, ptr %t273, i32 0, i32 1
  %t275 = load ptr, ptr %t274
  store ptr %t275, ptr %l19, !tbaa !29
  br label %bb68
bb67:
  br label %bb72
bb68:
  store %olang.scope zeroinitializer, ptr %s7
  %t277 = load ptr, ptr %l0, !tbaa !29
  %t278 = load ptr, ptr %l19, !tbaa !29
  %t280 = getelementptr %"compiler/typed:If", ptr %t278, i32 0, i32 0
  %t281 = load ptr, ptr %t280, !tbaa !29
  %t285 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2ftyped_2ecompiler_2ftyped_3aholdWalk_2erefs(ptr %v0, ptr %v1, ptr %s7, ptr %v2, ptr %v3, ptr %t277, ptr %t281)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t285, ptr %l165
  br label %bb69
bb69:
  %t286 = load ptr, ptr %l0, !tbaa !29
  %t287 = load ptr, ptr %l19, !tbaa !29
  %t289 = getelementptr %"compiler/typed:If", ptr %t287, i32 0, i32 1
  %t290 = load ptr, ptr %t289, !tbaa !29
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aholdWalk_2eblock(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %t286, ptr %t290)
  br label %bb70
bb70:
  %t294 = load ptr, ptr %l0, !tbaa !29
  %t295 = load ptr, ptr %l19, !tbaa !29
  %t297 = getelementptr %"compiler/typed:If", ptr %t295, i32 0, i32 2
  %t298 = load ptr, ptr %t297, !tbaa !29
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aholdWalk_2eblock(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %t294, ptr %t298)
  br label %bb71
bb71:
  call void @__olang_scope_close(ptr %s7)
  br label %bb166
bb72:
  %t301 = load ptr, ptr %l1, !tbaa !29
  store ptr %t301, ptr %l173, !tbaa !29
  store i1 false, ptr %l174, !tbaa !21
  %t302 = load ptr, ptr %l173, !tbaa !29
  %t303 = icmp ne ptr %t302, null
  br i1 %t303, label %bb73, label %bb74
bb73:
  %t305 = load ptr, ptr %l173, !tbaa !29
  %t306 = load i64, ptr %t305, !range !{i64 0, i64 17}
  %t308 = icmp eq i64 %t306, 4
  store i1 %t308, ptr %l174, !tbaa !21
  br label %bb74
bb74:
  %t309 = load i1, ptr %l174, !tbaa !21
  br i1 %t309, label %bb75, label %bb76
bb75:
  %t310 = load ptr, ptr %l1, !tbaa !29
  %t312 = getelementptr { i64, [3 x i64] }, ptr %t310, i32 0, i32 1
  %t313 = getelementptr { %"compiler/source:Span", ptr, ptr }, ptr %t312, i32 0, i32 1
  %t314 = load ptr, ptr %t313
  store ptr %t314, ptr %l20, !tbaa !29
  %t316 = load ptr, ptr %l1, !tbaa !29
  %t318 = getelementptr { i64, [3 x i64] }, ptr %t316, i32 0, i32 1
  %t319 = getelementptr { %"compiler/source:Span", ptr, ptr }, ptr %t318, i32 0, i32 2
  %t320 = load ptr, ptr %t319
  store ptr %t320, ptr %l21, !tbaa !29
  br label %bb77
bb76:
  br label %bb80
bb77:
  %t322 = load ptr, ptr %l0, !tbaa !29
  %t323 = load ptr, ptr %l20, !tbaa !29
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aholdWalk_2eblock(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %t322, ptr %t323)
  br label %bb78
bb78:
  %t327 = load ptr, ptr %l0, !tbaa !29
  %t328 = load ptr, ptr %l21, !tbaa !29
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aholdWalk_2eblock(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %t327, ptr %t328)
  br label %bb79
bb79:
  br label %bb166
bb80:
  %t331 = load ptr, ptr %l1, !tbaa !29
  store ptr %t331, ptr %l186, !tbaa !29
  store i1 false, ptr %l187, !tbaa !21
  %t332 = load ptr, ptr %l186, !tbaa !29
  %t333 = icmp ne ptr %t332, null
  br i1 %t333, label %bb81, label %bb82
bb81:
  %t335 = load ptr, ptr %l186, !tbaa !29
  %t336 = load i64, ptr %t335, !range !{i64 0, i64 17}
  %t338 = icmp eq i64 %t336, 6
  store i1 %t338, ptr %l187, !tbaa !21
  br label %bb82
bb82:
  %t339 = load i1, ptr %l187, !tbaa !21
  br i1 %t339, label %bb83, label %bb84
bb83:
  %t340 = load ptr, ptr %l1, !tbaa !29
  %t342 = getelementptr { i64, [3 x i64] }, ptr %t340, i32 0, i32 1
  %t343 = getelementptr { %"compiler/source:Span", ptr }, ptr %t342, i32 0, i32 1
  %t344 = load ptr, ptr %t343
  store ptr %t344, ptr %l22, !tbaa !29
  br label %bb93
bb84:
  %t346 = load ptr, ptr %l1, !tbaa !29
  store ptr %t346, ptr %l192, !tbaa !29
  store i1 false, ptr %l193, !tbaa !21
  %t347 = load ptr, ptr %l192, !tbaa !29
  %t348 = icmp ne ptr %t347, null
  br i1 %t348, label %bb85, label %bb86
bb85:
  %t350 = load ptr, ptr %l192, !tbaa !29
  %t351 = load i64, ptr %t350, !range !{i64 0, i64 17}
  %t353 = icmp eq i64 %t351, 16
  store i1 %t353, ptr %l193, !tbaa !21
  br label %bb86
bb86:
  %t354 = load i1, ptr %l193, !tbaa !21
  br i1 %t354, label %bb87, label %bb88
bb87:
  %t355 = load ptr, ptr %l1, !tbaa !29
  %t357 = getelementptr { i64, [3 x i64] }, ptr %t355, i32 0, i32 1
  %t358 = getelementptr { %"compiler/source:Span", ptr }, ptr %t357, i32 0, i32 1
  %t359 = load ptr, ptr %t358
  store ptr %t359, ptr %l22, !tbaa !29
  br label %bb93
bb88:
  %t361 = load ptr, ptr %l1, !tbaa !29
  store ptr %t361, ptr %l198, !tbaa !29
  store i1 false, ptr %l199, !tbaa !21
  %t362 = load ptr, ptr %l198, !tbaa !29
  %t363 = icmp ne ptr %t362, null
  br i1 %t363, label %bb89, label %bb90
bb89:
  %t365 = load ptr, ptr %l198, !tbaa !29
  %t366 = load i64, ptr %t365, !range !{i64 0, i64 17}
  %t368 = icmp eq i64 %t366, 9
  store i1 %t368, ptr %l199, !tbaa !21
  br label %bb90
bb90:
  %t369 = load i1, ptr %l199, !tbaa !21
  br i1 %t369, label %bb91, label %bb92
bb91:
  %t370 = load ptr, ptr %l1, !tbaa !29
  %t372 = getelementptr { i64, [3 x i64] }, ptr %t370, i32 0, i32 1
  %t373 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t372, i32 0, i32 2
  %t374 = load ptr, ptr %t373
  store ptr %t374, ptr %l22, !tbaa !29
  br label %bb93
bb92:
  br label %bb95
bb93:
  store %olang.scope zeroinitializer, ptr %s9
  %t376 = load ptr, ptr %l0, !tbaa !29
  %t377 = load ptr, ptr %l22, !tbaa !29
  %t380 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2ftyped_2ecompiler_2ftyped_3aholdWalk_2erefs(ptr %v0, ptr %v1, ptr %s9, ptr %v2, ptr %v3, ptr %t376, ptr %t377)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t380, ptr %l206
  br label %bb94
bb94:
  call void @__olang_scope_close(ptr %s9)
  br label %bb166
bb95:
  %t381 = load ptr, ptr %l1, !tbaa !29
  store ptr %t381, ptr %l207, !tbaa !29
  store i1 false, ptr %l208, !tbaa !21
  %t382 = load ptr, ptr %l207, !tbaa !29
  %t383 = icmp ne ptr %t382, null
  br i1 %t383, label %bb96, label %bb97
bb96:
  %t385 = load ptr, ptr %l207, !tbaa !29
  %t386 = load i64, ptr %t385, !range !{i64 0, i64 17}
  %t388 = icmp eq i64 %t386, 11
  store i1 %t388, ptr %l208, !tbaa !21
  br label %bb97
bb97:
  %t389 = load i1, ptr %l208, !tbaa !21
  br i1 %t389, label %bb98, label %bb99
bb98:
  %t390 = load ptr, ptr %l1, !tbaa !29
  %t392 = getelementptr { i64, [3 x i64] }, ptr %t390, i32 0, i32 1
  %t393 = getelementptr { %"compiler/source:Span", ptr }, ptr %t392, i32 0, i32 1
  %t394 = load ptr, ptr %t393
  store ptr %t394, ptr %l23, !tbaa !29
  br label %bb104
bb99:
  %t396 = load ptr, ptr %l1, !tbaa !29
  store ptr %t396, ptr %l213, !tbaa !29
  store i1 false, ptr %l214, !tbaa !21
  %t397 = load ptr, ptr %l213, !tbaa !29
  %t398 = icmp ne ptr %t397, null
  br i1 %t398, label %bb100, label %bb101
bb100:
  %t400 = load ptr, ptr %l213, !tbaa !29
  %t401 = load i64, ptr %t400, !range !{i64 0, i64 17}
  %t403 = icmp eq i64 %t401, 12
  store i1 %t403, ptr %l214, !tbaa !21
  br label %bb101
bb101:
  %t404 = load i1, ptr %l214, !tbaa !21
  br i1 %t404, label %bb102, label %bb103
bb102:
  %t405 = load ptr, ptr %l1, !tbaa !29
  %t407 = getelementptr { i64, [3 x i64] }, ptr %t405, i32 0, i32 1
  %t408 = getelementptr { %"compiler/source:Span", ptr }, ptr %t407, i32 0, i32 1
  %t409 = load ptr, ptr %t408
  store ptr %t409, ptr %l23, !tbaa !29
  br label %bb104
bb103:
  br label %bb106
bb104:
  %t411 = load ptr, ptr %l0, !tbaa !29
  %t412 = load ptr, ptr %l23, !tbaa !29
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aholdWalk_2eblock(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %t411, ptr %t412)
  br label %bb105
bb105:
  br label %bb166
bb106:
  %t416 = load ptr, ptr %l1, !tbaa !29
  store ptr %t416, ptr %l222, !tbaa !29
  store i1 false, ptr %l223, !tbaa !21
  %t417 = load ptr, ptr %l222, !tbaa !29
  %t418 = icmp ne ptr %t417, null
  br i1 %t418, label %bb107, label %bb108
bb107:
  %t420 = load ptr, ptr %l222, !tbaa !29
  %t421 = load i64, ptr %t420, !range !{i64 0, i64 17}
  %t423 = icmp eq i64 %t421, 13
  store i1 %t423, ptr %l223, !tbaa !21
  br label %bb108
bb108:
  %t424 = load i1, ptr %l223, !tbaa !21
  br i1 %t424, label %bb109, label %bb110
bb109:
  %t425 = load ptr, ptr %l1, !tbaa !29
  %t427 = getelementptr { i64, [3 x i64] }, ptr %t425, i32 0, i32 1
  %t428 = getelementptr { %"compiler/source:Span", ptr }, ptr %t427, i32 0, i32 1
  %t429 = load ptr, ptr %t428
  store ptr %t429, ptr %l24, !tbaa !29
  br label %bb111
bb110:
  br label %bb114
bb111:
  %t431 = load ptr, ptr %l0, !tbaa !29
  %t432 = load ptr, ptr %l24, !tbaa !29
  %t434 = getelementptr %"compiler/typed:Join", ptr %t432, i32 0, i32 0
  %t435 = load ptr, ptr %t434, !tbaa !29
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aholdWalk_2eblock(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %t431, ptr %t435)
  br label %bb112
bb112:
  %t439 = load ptr, ptr %l0, !tbaa !29
  %t440 = load ptr, ptr %l24, !tbaa !29
  %t442 = getelementptr %"compiler/typed:Join", ptr %t440, i32 0, i32 2
  %t443 = load { i64, ptr }, ptr %t442, !tbaa !27
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aholdWalk_2eclauses(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %t439, { i64, ptr } %t443)
  br label %bb113
bb113:
  br label %bb166
bb114:
  %t446 = load ptr, ptr %l1, !tbaa !29
  store ptr %t446, ptr %l235, !tbaa !29
  store i1 false, ptr %l236, !tbaa !21
  %t447 = load ptr, ptr %l235, !tbaa !29
  %t448 = icmp ne ptr %t447, null
  br i1 %t448, label %bb115, label %bb116
bb115:
  %t450 = load ptr, ptr %l235, !tbaa !29
  %t451 = load i64, ptr %t450, !range !{i64 0, i64 17}
  %t453 = icmp eq i64 %t451, 14
  store i1 %t453, ptr %l236, !tbaa !21
  br label %bb116
bb116:
  %t454 = load i1, ptr %l236, !tbaa !21
  br i1 %t454, label %bb117, label %bb118
bb117:
  %t455 = load ptr, ptr %l1, !tbaa !29
  %t457 = getelementptr { i64, [3 x i64] }, ptr %t455, i32 0, i32 1
  %t458 = getelementptr { %"compiler/source:Span", ptr }, ptr %t457, i32 0, i32 1
  %t459 = load ptr, ptr %t458
  store ptr %t459, ptr %l25, !tbaa !29
  br label %bb119
bb118:
  br label %bb139
bb119:
  store %olang.scope zeroinitializer, ptr %s12
  %t461 = load ptr, ptr %l0, !tbaa !29
  %t462 = load ptr, ptr %l25, !tbaa !29
  %t464 = getelementptr %"compiler/typed:Spawn", ptr %t462, i32 0, i32 1
  %t465 = load ptr, ptr %t464, !tbaa !29
  %t469 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2ftyped_2ecompiler_2ftyped_3aholdWalk_2etyped(ptr %v0, ptr %v1, ptr %s12, ptr %v2, ptr %v3, ptr %t461, ptr %t465)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t469, ptr %l245
  br label %bb120
bb120:
  %t470 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l245
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t470, ptr %l26
  %t471 = load ptr, ptr %l25, !tbaa !29
  %t473 = getelementptr %"compiler/typed:Spawn", ptr %t471, i32 0, i32 0
  %t474 = load { i64, ptr }, ptr %t473, !tbaa !27
  store { i64, ptr } %t474, ptr %l27, !tbaa !27
  store i64 0, ptr %l28, !tbaa !24
  %t476 = load { i64, ptr }, ptr %l27, !tbaa !27
  %t478 = extractvalue { i64, ptr } %t476, 0
  store i64 %t478, ptr %l29, !tbaa !24
  br label %bb121
bb121:
  %t480 = load i64, ptr %l28, !tbaa !24
  %t481 = load i64, ptr %l29, !tbaa !24
  %t484 = icmp slt i64 %t480, %t481
  %t486 = xor i1 %t484, true
  br i1 %t486, label %bb122, label %bb123
bb122:
  br label %bb131
bb123:
  br label %bb124
bb124:
  %t488 = load { i64, ptr }, ptr %l27, !tbaa !27
  store { i64, ptr } %t488, ptr %l254, !tbaa !27
  %t489 = load i64, ptr %l28, !tbaa !24
  %t491 = getelementptr { i64, ptr }, ptr %l254, i32 0, i32 1
  %t492 = load ptr, ptr %t491, !tbaa !27
  %t493 = getelementptr ptr, ptr %t492, i64 %t489
  %t494 = load ptr, ptr %t493, !tbaa !39
  store ptr %t494, ptr %l30, !tbaa !29
  %t496 = load ptr, ptr %l30, !tbaa !29
  %t498 = icmp eq ptr %t496, null
  %t500 = xor i1 %t498, true
  br i1 %t500, label %bb125, label %bb126
bb125:
  store %olang.scope zeroinitializer, ptr %s15
  %t502 = load ptr, ptr %l0, !tbaa !29
  store ptr %t502, ptr %l260, !tbaa !29
  %t503 = load ptr, ptr %l0, !tbaa !29
  %t504 = load ptr, ptr %l30, !tbaa !29
  %t507 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2ftyped_2ecompiler_2ftyped_3aholdWalk_2estorage(ptr %v0, ptr %v1, ptr %v0, ptr %v2, ptr %v3, ptr %t503, ptr %t504)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t507, ptr %l263
  br label %bb127
bb126:
  br label %bb129
bb127:
  %t508 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l263
  %t509 = call ptr @__olang_scope_alloc_a(ptr %s15, i64 32, i64 8)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t508, ptr %t509
  %t510 = load ptr, ptr %l260, !tbaa !29
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aholdWalk_2estore(ptr %v0, ptr %v0, ptr %s12, ptr %v3, ptr %v2, ptr %t510, ptr %t509, ptr %l26)
  br label %bb128
bb128:
  call void @__olang_scope_close(ptr %s15)
  br label %bb129
bb129:
  br label %bb130
bb130:
  %t513 = load i64, ptr %l28, !tbaa !24
  %t515 = add i64 %t513, 1
  store i64 %t515, ptr %l28, !tbaa !24
  br label %bb121
bb131:
  %t517 = load ptr, ptr %l25, !tbaa !29
  %t519 = getelementptr %"compiler/typed:Spawn", ptr %t517, i32 0, i32 2
  %t520 = load { i64, ptr }, ptr %t519, !tbaa !27
  store { i64, ptr } %t520, ptr %l31, !tbaa !27
  store i64 0, ptr %l32, !tbaa !24
  %t522 = load { i64, ptr }, ptr %l31, !tbaa !27
  %t524 = extractvalue { i64, ptr } %t522, 0
  store i64 %t524, ptr %l33, !tbaa !24
  br label %bb132
bb132:
  store %olang.scope zeroinitializer, ptr %s18
  %t526 = load i64, ptr %l32, !tbaa !24
  %t527 = load i64, ptr %l33, !tbaa !24
  %t530 = icmp slt i64 %t526, %t527
  %t532 = xor i1 %t530, true
  br i1 %t532, label %bb133, label %bb134
bb133:
  call void @__olang_scope_close(ptr %s18)
  br label %bb138
bb134:
  br label %bb135
bb135:
  %t534 = load { i64, ptr }, ptr %l31, !tbaa !27
  store { i64, ptr } %t534, ptr %l276, !tbaa !27
  %t535 = load i64, ptr %l32, !tbaa !24
  %t537 = getelementptr { i64, ptr }, ptr %l276, i32 0, i32 1
  %t538 = load ptr, ptr %t537, !tbaa !27
  %t539 = getelementptr ptr, ptr %t538, i64 %t535
  %t540 = load ptr, ptr %t539, !tbaa !39
  %t542 = load ptr, ptr %l0, !tbaa !29
  %t545 = getelementptr %"compiler/typed:TaskClause", ptr %t540, i32 0, i32 3
  %t546 = load ptr, ptr %t545, !tbaa !29
  %t549 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2ftyped_2ecompiler_2ftyped_3aholdWalk_2erefs(ptr %v0, ptr %v1, ptr %s18, ptr %v2, ptr %v3, ptr %t542, ptr %t546)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t549, ptr %l282
  br label %bb136
bb136:
  call void @__olang_scope_close(ptr %s18)
  br label %bb137
bb137:
  %t550 = load i64, ptr %l32, !tbaa !24
  %t552 = add i64 %t550, 1
  store i64 %t552, ptr %l32, !tbaa !24
  br label %bb132
bb138:
  call void @__olang_scope_close(ptr %s12)
  br label %bb166
bb139:
  %t554 = load ptr, ptr %l1, !tbaa !29
  store ptr %t554, ptr %l285, !tbaa !29
  store i1 false, ptr %l286, !tbaa !21
  %t555 = load ptr, ptr %l285, !tbaa !29
  %t556 = icmp ne ptr %t555, null
  br i1 %t556, label %bb140, label %bb141
bb140:
  %t558 = load ptr, ptr %l285, !tbaa !29
  %t559 = load i64, ptr %t558, !range !{i64 0, i64 17}
  %t561 = icmp eq i64 %t559, 15
  store i1 %t561, ptr %l286, !tbaa !21
  br label %bb141
bb141:
  %t562 = load i1, ptr %l286, !tbaa !21
  br i1 %t562, label %bb142, label %bb143
bb142:
  %t563 = load ptr, ptr %l1, !tbaa !29
  %t565 = getelementptr { i64, [3 x i64] }, ptr %t563, i32 0, i32 1
  %t566 = getelementptr { %"compiler/source:Span", ptr }, ptr %t565, i32 0, i32 1
  %t567 = load ptr, ptr %t566
  store ptr %t567, ptr %l35, !tbaa !29
  br label %bb144
bb143:
  br label %bb161
bb144:
  store %olang.scope zeroinitializer, ptr %s20
  %t569 = load ptr, ptr %l0, !tbaa !29
  %t570 = load ptr, ptr %l35, !tbaa !29
  %t574 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2ftyped_2ecompiler_2ftyped_3aholdWalk_2etyped(ptr %v0, ptr %v1, ptr %s20, ptr %v2, ptr %v3, ptr %t569, ptr %t570)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t574, ptr %l294
  br label %bb145
bb145:
  %t575 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l294
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t575, ptr %l36
  %t576 = load ptr, ptr %l0, !tbaa !29
  %t578 = getelementptr %"compiler/typed:holdWalk", ptr %t576, i32 0, i32 5
  %t580 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2fvec_3aVec_3cI64_3e_3e__Hb802ce24a60c51fc8ca388b849854e24(ptr %v0, ptr %t578)
  store i64 %t580, ptr %l297
  br label %bb146
bb146:
  %t581 = load i64, ptr %l297, !tbaa !24
  %t582 = icmp eq i64 %t581, 0
  br i1 %t582, label %bb147, label %bb148
bb147:
  call void @__olang_scope_close(ptr %s20)
  br label %ret
bb148:
  br label %bb149
bb149:
  %t584 = load ptr, ptr %l0, !tbaa !29
  %t586 = getelementptr %"compiler/typed:holdWalk", ptr %t584, i32 0, i32 5
  %t588 = call { i32, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2fvec_3aVec_3cI64_3e_3e__Hcd1867a2c89de03c7af27b93b5b476d9(ptr %v0, ptr %v0, ptr %t586)
  %t589 = extractvalue { i32, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" } %t588, 1
  %t590 = extractvalue { i32, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" } %t588, 0
  store i32 %t590, ptr %l303
  %t591 = icmp ne i32 %t590, 0
  br i1 %t591, label %bb151, label %ok.592, !prof !99
ok.592:
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t589, ptr %l302
  br label %bb150
bb150:
  %t593 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l302
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t593, ptr %l299
  br label %bb158
bb151:
  %t594 = load i32, ptr %l303, !tbaa !23
  %t595 = icmp eq i32 %t594, 65536
  br i1 %t595, label %bb152, label %bb153
bb152:
  call void @__olang_bang_failed_plain(ptr @olang_loc_5e6c689502ae97a3_4a93e9b8e1d69347)
  unreachable
bb153:
  %t597 = load i32, ptr %l303, !tbaa !23
  %t598 = icmp eq i32 %t597, 65537
  br i1 %t598, label %bb154, label %bb155
bb154:
  call void @__olang_bang_failed_plain(ptr @olang_loc_b6b3adf054eb2e90_3f1400959d6043b4)
  unreachable
bb155:
  %t600 = load i32, ptr %l303, !tbaa !23
  %t601 = icmp eq i32 %t600, 65538
  br i1 %t601, label %bb156, label %bb157
bb156:
  call void @__olang_bang_failed_plain(ptr @olang_loc_7b8fc3b9339208b8_2c51799eb4e60e7c)
  unreachable
bb157:
  call void @__olang_bang_failed_plain(ptr @olang_loc_47bf7dbda354986_81bfc8ef2d8843ba)
  unreachable
bb158:
  %t603 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l299
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t603, ptr %l37
  call void @compiler_2ftyped_2eunion(ptr %s20, ptr %s20, ptr %l37, ptr %l36)
  br label %bb159
bb159:
  %t606 = load ptr, ptr %l0, !tbaa !29
  %t608 = getelementptr %"compiler/typed:holdWalk", ptr %t606, i32 0, i32 5
  %t609 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l37
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2fvec_3aVec_3cI64_3e_3e__H5a6912247a81ac1f46c16a43fcc4c44a(ptr %v0, ptr %s20, ptr %t608, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t609)
  br label %bb160
bb160:
  call void @__olang_scope_close(ptr %s20)
  br label %bb166
bb161:
  br i1 true, label %bb162, label %bb163
bb162:
  br label %bb164
bb163:
  br label %bb165
bb164:
  br label %bb166
bb165:
  call void @__olang_check_failed(ptr @olang_loc_3ca74cad4df58772_2fc4655d37cc5656)
  unreachable
bb166:
  br label %ret
ret:
  ret void
}

define dso_local i1 @compiler_2ftyped_2ecompiler_2ftyped_3aleaveWalk_2eclausesLeave(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca { i64, ptr }
  %l2 = alloca { i64, ptr }
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca ptr
  %l17 = alloca { i64, ptr }
  %l23 = alloca i1
  %l24 = alloca i1
  %l28 = alloca i1
  %rv = alloca i1
  store ptr %a0, ptr %l0
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
  br label %bb17
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
  %t30 = load ptr, ptr %l0, !tbaa !29
  %t31 = load ptr, ptr %l5, !tbaa !29
  %t33 = getelementptr %"compiler/typed:Clause", ptr %t31, i32 0, i32 3
  %t34 = load ptr, ptr %t33, !tbaa !29
  %t37 = call i1 @compiler_2ftyped_2ecompiler_2ftyped_3aleaveWalk_2eblockLeaves(ptr %v0, ptr %v1, ptr %t30, ptr %t34)
  store i1 %t37, ptr %l23
  br label %bb8
bb8:
  %t38 = load i1, ptr %l23, !tbaa !21
  br i1 %t38, label %bb9, label %bb10
bb9:
  store i1 true, ptr %l24, !tbaa !21
  br label %bb12
bb10:
  %t39 = load ptr, ptr %l0, !tbaa !29
  %t40 = load ptr, ptr %l5, !tbaa !29
  %t42 = getelementptr %"compiler/typed:Clause", ptr %t40, i32 0, i32 4
  %t43 = load { i64, ptr }, ptr %t42, !tbaa !27
  %t46 = call i1 @compiler_2ftyped_2ecompiler_2ftyped_3aleaveWalk_2eexprsLeave(ptr %v0, ptr %v1, ptr %t39, { i64, ptr } %t43)
  store i1 %t46, ptr %l28
  br label %bb11
bb11:
  %t47 = load i1, ptr %l28, !tbaa !21
  store i1 %t47, ptr %l24, !tbaa !21
  br label %bb12
bb12:
  %t48 = load i1, ptr %l24, !tbaa !21
  br i1 %t48, label %bb13, label %bb14
bb13:
  store i1 true, ptr %rv
  br label %ret
bb14:
  br label %bb15
bb15:
  br label %bb16
bb16:
  %t50 = load i64, ptr %l3, !tbaa !24
  %t52 = add i64 %t50, 1
  store i64 %t52, ptr %l3, !tbaa !24
  br label %bb4
bb17:
  store i1 false, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i1 @compiler_2ftyped_2ecompiler_2ftyped_3aleaveWalk_2eloopLeaves(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, ptr %a2) #0 {
entry:
  %l0 = alloca ptr
  %l6 = alloca i1
  %l7 = alloca i1
  %l10 = alloca i1
  %rv = alloca i1
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t6 = call i1 @compiler_2ftyped_2ecompiler_2ftyped_3aleaveWalk_2eopenLeaves(ptr %v0, ptr %v1, ptr %t1, ptr %a1)
  store i1 %t6, ptr %l6
  br label %bb1
bb1:
  %t7 = load i1, ptr %l6, !tbaa !21
  br i1 %t7, label %bb2, label %bb3
bb2:
  store i1 true, ptr %l7, !tbaa !21
  br label %bb5
bb3:
  %t8 = load ptr, ptr %l0, !tbaa !29
  %t12 = call i1 @compiler_2ftyped_2ecompiler_2ftyped_3aleaveWalk_2eopenLeaves(ptr %v0, ptr %v2, ptr %t8, ptr %a2)
  store i1 %t12, ptr %l10
  br label %bb4
bb4:
  %t13 = load i1, ptr %l10, !tbaa !21
  store i1 %t13, ptr %l7, !tbaa !21
  br label %bb5
bb5:
  %t14 = load i1, ptr %l7, !tbaa !21
  store i1 %t14, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i1 @compiler_2ftyped_2ecompiler_2ftyped_3aleaveWalk_2eplaceLeaves(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca ptr
  %l4 = alloca ptr
  %l5 = alloca ptr
  %l6 = alloca ptr
  %l7 = alloca i1
  %l8 = alloca ptr
  %l9 = alloca i1
  %l12 = alloca ptr
  %l13 = alloca i1
  %l16 = alloca ptr
  %l17 = alloca i1
  %l20 = alloca ptr
  %l21 = alloca i1
  %l29 = alloca i1
  %l30 = alloca ptr
  %l31 = alloca i1
  %l38 = alloca i1
  %l39 = alloca ptr
  %l40 = alloca i1
  %l48 = alloca i1
  %l49 = alloca i1
  %l54 = alloca i1
  %l55 = alloca ptr
  %l56 = alloca i1
  %l64 = alloca i1
  %l65 = alloca ptr
  %l66 = alloca i1
  %l74 = alloca i1
  %rv = alloca i1
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
  br label %bb13
bb4:
  %t10 = load ptr, ptr %l1, !tbaa !29
  store ptr %t10, ptr %l12, !tbaa !29
  store i1 false, ptr %l13, !tbaa !21
  %t11 = load ptr, ptr %l12, !tbaa !29
  %t12 = icmp ne ptr %t11, null
  br i1 %t12, label %bb5, label %bb6
bb5:
  %t14 = load ptr, ptr %l12, !tbaa !29
  %t15 = load i64, ptr %t14, !range !{i64 0, i64 8}
  %t17 = icmp eq i64 %t15, 1
  store i1 %t17, ptr %l13, !tbaa !21
  br label %bb6
bb6:
  %t18 = load i1, ptr %l13, !tbaa !21
  br i1 %t18, label %bb7, label %bb8
bb7:
  br label %bb13
bb8:
  %t19 = load ptr, ptr %l1, !tbaa !29
  store ptr %t19, ptr %l16, !tbaa !29
  store i1 false, ptr %l17, !tbaa !21
  %t20 = load ptr, ptr %l16, !tbaa !29
  %t21 = icmp ne ptr %t20, null
  br i1 %t21, label %bb9, label %bb10
bb9:
  %t23 = load ptr, ptr %l16, !tbaa !29
  %t24 = load i64, ptr %t23, !range !{i64 0, i64 8}
  %t26 = icmp eq i64 %t24, 7
  store i1 %t26, ptr %l17, !tbaa !21
  br label %bb10
bb10:
  %t27 = load i1, ptr %l17, !tbaa !21
  br i1 %t27, label %bb11, label %bb12
bb11:
  br label %bb13
bb12:
  br label %bb14
bb13:
  store i1 false, ptr %l7, !tbaa !21
  br label %bb54
bb14:
  %t28 = load ptr, ptr %l1, !tbaa !29
  store ptr %t28, ptr %l20, !tbaa !29
  store i1 false, ptr %l21, !tbaa !21
  %t29 = load ptr, ptr %l20, !tbaa !29
  %t30 = icmp ne ptr %t29, null
  br i1 %t30, label %bb15, label %bb16
bb15:
  %t32 = load ptr, ptr %l20, !tbaa !29
  %t33 = load i64, ptr %t32, !range !{i64 0, i64 8}
  %t35 = icmp eq i64 %t33, 2
  store i1 %t35, ptr %l21, !tbaa !21
  br label %bb16
bb16:
  %t36 = load i1, ptr %l21, !tbaa !21
  br i1 %t36, label %bb17, label %bb18
bb17:
  %t37 = load ptr, ptr %l1, !tbaa !29
  %t39 = getelementptr { i64, [4 x i64] }, ptr %t37, i32 0, i32 1
  %t40 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t39, i32 0, i32 2
  %t41 = load ptr, ptr %t40
  store ptr %t41, ptr %l2, !tbaa !29
  br label %bb19
bb18:
  br label %bb21
bb19:
  %t43 = load ptr, ptr %l0, !tbaa !29
  %t44 = load ptr, ptr %l2, !tbaa !29
  %t48 = call i1 @compiler_2ftyped_2ecompiler_2ftyped_3aleaveWalk_2eexprLeaves(ptr %v0, ptr %v1, ptr %t43, ptr %t44)
  store i1 %t48, ptr %l29
  br label %bb20
bb20:
  %t49 = load i1, ptr %l29, !tbaa !21
  store i1 %t49, ptr %l7, !tbaa !21
  br label %bb54
bb21:
  %t50 = load ptr, ptr %l1, !tbaa !29
  store ptr %t50, ptr %l30, !tbaa !29
  store i1 false, ptr %l31, !tbaa !21
  %t51 = load ptr, ptr %l30, !tbaa !29
  %t52 = icmp ne ptr %t51, null
  br i1 %t52, label %bb22, label %bb23
bb22:
  %t54 = load ptr, ptr %l30, !tbaa !29
  %t55 = load i64, ptr %t54, !range !{i64 0, i64 8}
  %t57 = icmp eq i64 %t55, 3
  store i1 %t57, ptr %l31, !tbaa !21
  br label %bb23
bb23:
  %t58 = load i1, ptr %l31, !tbaa !21
  br i1 %t58, label %bb24, label %bb25
bb24:
  %t59 = load ptr, ptr %l1, !tbaa !29
  %t61 = getelementptr { i64, [4 x i64] }, ptr %t59, i32 0, i32 1
  %t62 = getelementptr { %"compiler/source:Span", i32, ptr, i64 }, ptr %t61, i32 0, i32 2
  %t63 = load ptr, ptr %t62
  store ptr %t63, ptr %l3, !tbaa !29
  br label %bb26
bb25:
  br label %bb28
bb26:
  %t65 = load ptr, ptr %l0, !tbaa !29
  %t66 = load ptr, ptr %l3, !tbaa !29
  %t69 = call i1 @compiler_2ftyped_2ecompiler_2ftyped_3aleaveWalk_2eplaceLeaves(ptr %v0, ptr %v1, ptr %t65, ptr %t66)
  store i1 %t69, ptr %l38
  br label %bb27
bb27:
  %t70 = load i1, ptr %l38, !tbaa !21
  store i1 %t70, ptr %l7, !tbaa !21
  br label %bb54
bb28:
  %t71 = load ptr, ptr %l1, !tbaa !29
  store ptr %t71, ptr %l39, !tbaa !29
  store i1 false, ptr %l40, !tbaa !21
  %t72 = load ptr, ptr %l39, !tbaa !29
  %t73 = icmp ne ptr %t72, null
  br i1 %t73, label %bb29, label %bb30
bb29:
  %t75 = load ptr, ptr %l39, !tbaa !29
  %t76 = load i64, ptr %t75, !range !{i64 0, i64 8}
  %t78 = icmp eq i64 %t76, 4
  store i1 %t78, ptr %l40, !tbaa !21
  br label %bb30
bb30:
  %t79 = load i1, ptr %l40, !tbaa !21
  br i1 %t79, label %bb31, label %bb32
bb31:
  %t80 = load ptr, ptr %l1, !tbaa !29
  %t82 = getelementptr { i64, [4 x i64] }, ptr %t80, i32 0, i32 1
  %t83 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t82, i32 0, i32 2
  %t84 = load ptr, ptr %t83
  store ptr %t84, ptr %l4, !tbaa !29
  br label %bb33
bb32:
  br label %bb39
bb33:
  %t86 = load ptr, ptr %l0, !tbaa !29
  %t87 = load ptr, ptr %l4, !tbaa !29
  %t89 = getelementptr %"compiler/typed:Elem", ptr %t87, i32 0, i32 0
  %t90 = load ptr, ptr %t89, !tbaa !29
  %t93 = call i1 @compiler_2ftyped_2ecompiler_2ftyped_3aleaveWalk_2eplaceLeaves(ptr %v0, ptr %v1, ptr %t86, ptr %t90)
  store i1 %t93, ptr %l48
  br label %bb34
bb34:
  %t94 = load i1, ptr %l48, !tbaa !21
  br i1 %t94, label %bb35, label %bb36
bb35:
  store i1 true, ptr %l49, !tbaa !21
  br label %bb38
bb36:
  %t95 = load ptr, ptr %l0, !tbaa !29
  %t96 = load ptr, ptr %l4, !tbaa !29
  %t98 = getelementptr %"compiler/typed:Elem", ptr %t96, i32 0, i32 1
  %t99 = load ptr, ptr %t98, !tbaa !29
  %t103 = call i1 @compiler_2ftyped_2ecompiler_2ftyped_3aleaveWalk_2eexprLeaves(ptr %v0, ptr %v1, ptr %t95, ptr %t99)
  store i1 %t103, ptr %l54
  br label %bb37
bb37:
  %t104 = load i1, ptr %l54, !tbaa !21
  store i1 %t104, ptr %l49, !tbaa !21
  br label %bb38
bb38:
  %t105 = load i1, ptr %l49, !tbaa !21
  store i1 %t105, ptr %l7, !tbaa !21
  br label %bb54
bb39:
  %t106 = load ptr, ptr %l1, !tbaa !29
  store ptr %t106, ptr %l55, !tbaa !29
  store i1 false, ptr %l56, !tbaa !21
  %t107 = load ptr, ptr %l55, !tbaa !29
  %t108 = icmp ne ptr %t107, null
  br i1 %t108, label %bb40, label %bb41
bb40:
  %t110 = load ptr, ptr %l55, !tbaa !29
  %t111 = load i64, ptr %t110, !range !{i64 0, i64 8}
  %t113 = icmp eq i64 %t111, 5
  store i1 %t113, ptr %l56, !tbaa !21
  br label %bb41
bb41:
  %t114 = load i1, ptr %l56, !tbaa !21
  br i1 %t114, label %bb42, label %bb43
bb42:
  %t115 = load ptr, ptr %l1, !tbaa !29
  %t117 = getelementptr { i64, [4 x i64] }, ptr %t115, i32 0, i32 1
  %t118 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t117, i32 0, i32 2
  %t119 = load ptr, ptr %t118
  store ptr %t119, ptr %l5, !tbaa !29
  br label %bb44
bb43:
  br label %bb46
bb44:
  %t121 = load ptr, ptr %l0, !tbaa !29
  %t122 = load ptr, ptr %l5, !tbaa !29
  %t124 = getelementptr %"compiler/typed:Payload", ptr %t122, i32 0, i32 0
  %t125 = load ptr, ptr %t124, !tbaa !29
  %t128 = call i1 @compiler_2ftyped_2ecompiler_2ftyped_3aleaveWalk_2eplaceLeaves(ptr %v0, ptr %v1, ptr %t121, ptr %t125)
  store i1 %t128, ptr %l64
  br label %bb45
bb45:
  %t129 = load i1, ptr %l64, !tbaa !21
  store i1 %t129, ptr %l7, !tbaa !21
  br label %bb54
bb46:
  %t130 = load ptr, ptr %l1, !tbaa !29
  store ptr %t130, ptr %l65, !tbaa !29
  store i1 false, ptr %l66, !tbaa !21
  %t131 = load ptr, ptr %l65, !tbaa !29
  %t132 = icmp ne ptr %t131, null
  br i1 %t132, label %bb47, label %bb48
bb47:
  %t134 = load ptr, ptr %l65, !tbaa !29
  %t135 = load i64, ptr %t134, !range !{i64 0, i64 8}
  %t137 = icmp eq i64 %t135, 6
  store i1 %t137, ptr %l66, !tbaa !21
  br label %bb48
bb48:
  %t138 = load i1, ptr %l66, !tbaa !21
  br i1 %t138, label %bb49, label %bb50
bb49:
  %t139 = load ptr, ptr %l1, !tbaa !29
  %t141 = getelementptr { i64, [4 x i64] }, ptr %t139, i32 0, i32 1
  %t142 = getelementptr { %"compiler/source:Span", i32, ptr, i32 }, ptr %t141, i32 0, i32 2
  %t143 = load ptr, ptr %t142
  store ptr %t143, ptr %l6, !tbaa !29
  br label %bb51
bb50:
  br label %bb53
bb51:
  %t145 = load ptr, ptr %l0, !tbaa !29
  %t146 = load ptr, ptr %l6, !tbaa !29
  %t150 = call i1 @compiler_2ftyped_2ecompiler_2ftyped_3aleaveWalk_2eexprLeaves(ptr %v0, ptr %v1, ptr %t145, ptr %t146)
  store i1 %t150, ptr %l74
  br label %bb52
bb52:
  %t151 = load i1, ptr %l74, !tbaa !21
  store i1 %t151, ptr %l7, !tbaa !21
  br label %bb54
bb53:
  call void @__olang_check_failed(ptr @olang_loc_1807395182923f6f_ecff5ea7ed15d953)
  unreachable
bb54:
  %t152 = load i1, ptr %l7, !tbaa !21
  store i1 %t152, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local void @compiler_2ftyped_2ecompiler_2ftyped_3aprinter_2eline(ptr %v0, ptr %v1, ptr %a0, i64 %a1, { i64, ptr } %a2) #0 {
entry:
  %l0 = alloca ptr
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l13 = alloca i64
  %l16 = alloca i64
  %s2 = alloca %olang.scope
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store i64 0, ptr %l3, !tbaa !24
  store i64 %a1, ptr %l4, !tbaa !24
  store i64 1, ptr %l5, !tbaa !24
  %t3 = load i64, ptr %l4, !tbaa !24
  %t4 = load i64, ptr %l3, !tbaa !24
  %t7 = icmp sgt i64 %t3, %t4
  br i1 %t7, label %bb1, label %bb2
bb1:
  %t9 = load i64, ptr %l5, !tbaa !24
  %t11 = icmp sgt i64 %t9, 0
  br i1 %t11, label %bb3, label %bb4
bb2:
  store i64 0, ptr %l13, !tbaa !24
  br label %bb6
bb3:
  %t13 = load i64, ptr %l4, !tbaa !24
  %t14 = load i64, ptr %l3, !tbaa !24
  %t17 = sub i64 %t13, %t14
  %t18 = load i64, ptr %l5, !tbaa !24
  %t21 = add i64 %t17, %t18
  %t23 = sub i64 %t21, 1
  %t24 = load i64, ptr %l5, !tbaa !24
  %t27 = sdiv i64 %t23, %t24
  store i64 %t27, ptr %l16, !tbaa !24
  br label %bb5
bb4:
  store i64 0, ptr %l16, !tbaa !24
  br label %bb5
bb5:
  %t29 = load i64, ptr %l16, !tbaa !24
  store i64 %t29, ptr %l13, !tbaa !24
  br label %bb6
bb6:
  %t30 = load i64, ptr %l13, !tbaa !24
  store i64 %t30, ptr %l6, !tbaa !24
  store i64 0, ptr %l7, !tbaa !24
  br label %bb7
bb7:
  store %olang.scope zeroinitializer, ptr %s2
  %t31 = load i64, ptr %l7, !tbaa !24
  %t32 = load i64, ptr %l6, !tbaa !24
  %t35 = icmp slt i64 %t31, %t32
  %t37 = xor i1 %t35, true
  br i1 %t37, label %bb8, label %bb9
bb8:
  call void @__olang_scope_close(ptr %s2)
  br label %bb13
bb9:
  br label %bb10
bb10:
  %t39 = load i64, ptr %l3, !tbaa !24
  %t40 = load i64, ptr %l7, !tbaa !24
  %t41 = load i64, ptr %l5, !tbaa !24
  %t44 = mul i64 %t40, %t41
  %t47 = add i64 %t39, %t44
  store i64 %t47, ptr %l8, !tbaa !24
  %t49 = load ptr, ptr %l0, !tbaa !29
  %t51 = getelementptr %"compiler/typed:printer", ptr %t49, i32 0, i32 1
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v0, ptr %s2, ptr %t51, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d0, i32 0, i32 1) })
  br label %bb11
bb11:
  call void @__olang_scope_close(ptr %s2)
  br label %bb12
bb12:
  %t53 = load i64, ptr %l7, !tbaa !24
  %t55 = add i64 %t53, 1
  store i64 %t55, ptr %l7, !tbaa !24
  br label %bb7
bb13:
  %t57 = load ptr, ptr %l0, !tbaa !29
  %t59 = getelementptr %"compiler/typed:printer", ptr %t57, i32 0, i32 1
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v0, ptr %v1, ptr %t59, { i64, ptr } %a2)
  br label %bb14
bb14:
  %t63 = load ptr, ptr %l0, !tbaa !29
  %t65 = getelementptr %"compiler/typed:printer", ptr %t63, i32 0, i32 1
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePushChar(ptr %v0, ptr %t65, i8 10)
  br label %bb15
bb15:
  br label %ret
ret:
  ret void
}

define dso_local i1 @compiler_2ftyped_2epiecesBreak(ptr %v0, { i64, ptr } %a0, i32 %a1) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l2 = alloca { i64, ptr }
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca ptr
  %l6 = alloca ptr
  %l18 = alloca { i64, ptr }
  %l21 = alloca ptr
  %l22 = alloca i1
  %l30 = alloca i1
  %l32 = alloca ptr
  %l33 = alloca i1
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
  br label %bb26
bb6:
  br label %bb7
bb7:
  %t22 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t22, ptr %l18, !tbaa !27
  %t23 = load i64, ptr %l3, !tbaa !24
  %t25 = getelementptr { i64, ptr }, ptr %l18, i32 0, i32 1
  %t26 = load ptr, ptr %t25, !tbaa !27
  %t27 = getelementptr ptr, ptr %t26, i64 %t23
  %t28 = load ptr, ptr %t27, !tbaa !39
  store ptr %t28, ptr %l5, !tbaa !29
  %t30 = load ptr, ptr %l5, !tbaa !29
  store ptr %t30, ptr %l21, !tbaa !29
  store i1 false, ptr %l22, !tbaa !21
  %t31 = load ptr, ptr %l21, !tbaa !29
  %t32 = icmp ne ptr %t31, null
  br i1 %t32, label %bb8, label %bb9
bb8:
  %t34 = load ptr, ptr %l21, !tbaa !29
  %t35 = load i64, ptr %t34, !range !{i64 0, i64 2}
  %t37 = icmp eq i64 %t35, 1
  store i1 %t37, ptr %l22, !tbaa !21
  br label %bb9
bb9:
  %t38 = load i1, ptr %l22, !tbaa !21
  br i1 %t38, label %bb10, label %bb11
bb10:
  %t39 = load ptr, ptr %l5, !tbaa !29
  %t41 = getelementptr { i64, [2 x i64] }, ptr %t39, i32 0, i32 1
  %t42 = getelementptr { ptr }, ptr %t41, i32 0, i32 0
  %t43 = load ptr, ptr %t42
  store ptr %t43, ptr %l6, !tbaa !29
  br label %bb12
bb11:
  br label %bb17
bb12:
  %t45 = load ptr, ptr %l6, !tbaa !29
  %t50 = call i1 @compiler_2ftyped_2eexprBreaks(ptr %v0, ptr %t45, i32 %a1)
  store i1 %t50, ptr %l30
  br label %bb13
bb13:
  %t51 = load i1, ptr %l30, !tbaa !21
  br i1 %t51, label %bb14, label %bb15
bb14:
  store i1 true, ptr %rv
  br label %ret
bb15:
  br label %bb16
bb16:
  br label %bb24
bb17:
  %t53 = load ptr, ptr %l5, !tbaa !29
  store ptr %t53, ptr %l32, !tbaa !29
  store i1 false, ptr %l33, !tbaa !21
  %t54 = load ptr, ptr %l32, !tbaa !29
  %t55 = icmp ne ptr %t54, null
  br i1 %t55, label %bb18, label %bb19
bb18:
  %t57 = load ptr, ptr %l32, !tbaa !29
  %t58 = load i64, ptr %t57, !range !{i64 0, i64 2}
  %t60 = icmp eq i64 %t58, 0
  store i1 %t60, ptr %l33, !tbaa !21
  br label %bb19
bb19:
  %t61 = load i1, ptr %l33, !tbaa !21
  br i1 %t61, label %bb20, label %bb21
bb20:
  br label %bb22
bb21:
  br label %bb23
bb22:
  br label %bb24
bb23:
  call void @__olang_check_failed(ptr @olang_loc_fc8cc15dada93547_2e2c8c126dc2f08b)
  unreachable
bb24:
  br label %bb25
bb25:
  %t62 = load i64, ptr %l3, !tbaa !24
  %t64 = add i64 %t62, 1
  store i64 %t64, ptr %l3, !tbaa !24
  br label %bb4
bb26:
  store i1 false, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i1 @compiler_2ftyped_2estmtBreaks(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca i32
  %l3 = alloca i32
  %l4 = alloca ptr
  %l5 = alloca ptr
  %l6 = alloca ptr
  %l7 = alloca ptr
  %l8 = alloca ptr
  %l9 = alloca ptr
  %l10 = alloca ptr
  %l11 = alloca ptr
  %l12 = alloca ptr
  %l13 = alloca ptr
  %l14 = alloca ptr
  %l15 = alloca ptr
  %l16 = alloca ptr
  %l17 = alloca ptr
  %l18 = alloca i1
  %l19 = alloca ptr
  %l20 = alloca i1
  %l29 = alloca i1
  %l33 = alloca ptr
  %l34 = alloca i1
  %l39 = alloca ptr
  %l40 = alloca i1
  %l45 = alloca ptr
  %l46 = alloca i1
  %l54 = alloca i1
  %l55 = alloca ptr
  %l56 = alloca i1
  %l65 = alloca i1
  %l66 = alloca i1
  %l70 = alloca i1
  %l71 = alloca ptr
  %l72 = alloca i1
  %l81 = alloca i1
  %l82 = alloca i1
  %l87 = alloca i1
  %l88 = alloca i1
  %l92 = alloca i1
  %l93 = alloca ptr
  %l94 = alloca i1
  %l104 = alloca i1
  %l105 = alloca i1
  %l108 = alloca i1
  %l109 = alloca ptr
  %l110 = alloca i1
  %l115 = alloca ptr
  %l116 = alloca i1
  %l123 = alloca i1
  %l124 = alloca ptr
  %l125 = alloca i1
  %l128 = alloca ptr
  %l129 = alloca i1
  %l137 = alloca i1
  %l138 = alloca ptr
  %l139 = alloca i1
  %l146 = alloca i1
  %l147 = alloca ptr
  %l148 = alloca i1
  %l158 = alloca i1
  %l159 = alloca i1
  %l162 = alloca i1
  %l163 = alloca ptr
  %l164 = alloca i1
  %l169 = alloca ptr
  %l170 = alloca i1
  %l178 = alloca i1
  %l179 = alloca ptr
  %l180 = alloca i1
  %l189 = alloca i1
  %l190 = alloca i1
  %l194 = alloca i1
  %l195 = alloca ptr
  %l196 = alloca i1
  %l204 = alloca i1
  %l205 = alloca i1
  %l210 = alloca i1
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1, ptr %l19, !tbaa !29
  store i1 false, ptr %l20, !tbaa !21
  %t2 = load ptr, ptr %l19, !tbaa !29
  %t3 = icmp ne ptr %t2, null
  br i1 %t3, label %bb1, label %bb2
bb1:
  %t5 = load ptr, ptr %l19, !tbaa !29
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 17}
  %t8 = icmp eq i64 %t6, 5
  store i1 %t8, ptr %l20, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l20, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  %t10 = load ptr, ptr %l0, !tbaa !29
  %t12 = getelementptr { i64, [3 x i64] }, ptr %t10, i32 0, i32 1
  %t13 = getelementptr { %"compiler/source:Span", i32, i32 }, ptr %t12, i32 0, i32 1
  %t14 = load i32, ptr %t13, !range !{i32 0, i32 2}
  store i32 %t14, ptr %l2
  %t16 = load ptr, ptr %l0, !tbaa !29
  %t18 = getelementptr { i64, [3 x i64] }, ptr %t16, i32 0, i32 1
  %t19 = getelementptr { %"compiler/source:Span", i32, i32 }, ptr %t18, i32 0, i32 2
  %t20 = load i32, ptr %t19
  store i32 %t20, ptr %l3, !tbaa !23
  br label %bb5
bb4:
  br label %bb9
bb5:
  %t22 = load i32, ptr %l2, !range !{i32 0, i32 2}
  %t24 = trunc i64 0 to i32
  %t25 = icmp eq i32 %t22, %t24
  br i1 %t25, label %bb6, label %bb7
bb6:
  %t27 = load i32, ptr %l3, !tbaa !23
  %t28 = load i32, ptr %l1, !tbaa !23
  %t31 = icmp eq i32 %t27, %t28
  store i1 %t31, ptr %l29, !tbaa !21
  br label %bb8
bb7:
  store i1 false, ptr %l29, !tbaa !21
  br label %bb8
bb8:
  %t33 = load i1, ptr %l29, !tbaa !21
  store i1 %t33, ptr %l18, !tbaa !21
  br label %bb137
bb9:
  %t34 = load ptr, ptr %l0, !tbaa !29
  store ptr %t34, ptr %l33, !tbaa !29
  store i1 false, ptr %l34, !tbaa !21
  %t35 = load ptr, ptr %l33, !tbaa !29
  %t36 = icmp ne ptr %t35, null
  br i1 %t36, label %bb10, label %bb11
bb10:
  %t38 = load ptr, ptr %l33, !tbaa !29
  %t39 = load i64, ptr %t38, !range !{i64 0, i64 17}
  %t41 = icmp eq i64 %t39, 0
  store i1 %t41, ptr %l34, !tbaa !21
  br label %bb11
bb11:
  %t42 = load i1, ptr %l34, !tbaa !21
  br i1 %t42, label %bb12, label %bb13
bb12:
  %t43 = load ptr, ptr %l0, !tbaa !29
  %t45 = getelementptr { i64, [3 x i64] }, ptr %t43, i32 0, i32 1
  %t46 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t45, i32 0, i32 2
  %t47 = load ptr, ptr %t46
  store ptr %t47, ptr %l4, !tbaa !29
  br label %bb22
bb13:
  %t49 = load ptr, ptr %l0, !tbaa !29
  store ptr %t49, ptr %l39, !tbaa !29
  store i1 false, ptr %l40, !tbaa !21
  %t50 = load ptr, ptr %l39, !tbaa !29
  %t51 = icmp ne ptr %t50, null
  br i1 %t51, label %bb14, label %bb15
bb14:
  %t53 = load ptr, ptr %l39, !tbaa !29
  %t54 = load i64, ptr %t53, !range !{i64 0, i64 17}
  %t56 = icmp eq i64 %t54, 2
  store i1 %t56, ptr %l40, !tbaa !21
  br label %bb15
bb15:
  %t57 = load i1, ptr %l40, !tbaa !21
  br i1 %t57, label %bb16, label %bb17
bb16:
  %t58 = load ptr, ptr %l0, !tbaa !29
  %t60 = getelementptr { i64, [3 x i64] }, ptr %t58, i32 0, i32 1
  %t61 = getelementptr { %"compiler/source:Span", ptr }, ptr %t60, i32 0, i32 1
  %t62 = load ptr, ptr %t61
  store ptr %t62, ptr %l4, !tbaa !29
  br label %bb22
bb17:
  %t64 = load ptr, ptr %l0, !tbaa !29
  store ptr %t64, ptr %l45, !tbaa !29
  store i1 false, ptr %l46, !tbaa !21
  %t65 = load ptr, ptr %l45, !tbaa !29
  %t66 = icmp ne ptr %t65, null
  br i1 %t66, label %bb18, label %bb19
bb18:
  %t68 = load ptr, ptr %l45, !tbaa !29
  %t69 = load i64, ptr %t68, !range !{i64 0, i64 17}
  %t71 = icmp eq i64 %t69, 15
  store i1 %t71, ptr %l46, !tbaa !21
  br label %bb19
bb19:
  %t72 = load i1, ptr %l46, !tbaa !21
  br i1 %t72, label %bb20, label %bb21
bb20:
  %t73 = load ptr, ptr %l0, !tbaa !29
  %t75 = getelementptr { i64, [3 x i64] }, ptr %t73, i32 0, i32 1
  %t76 = getelementptr { %"compiler/source:Span", ptr }, ptr %t75, i32 0, i32 1
  %t77 = load ptr, ptr %t76
  store ptr %t77, ptr %l4, !tbaa !29
  br label %bb22
bb21:
  br label %bb24
bb22:
  %t79 = load ptr, ptr %l4, !tbaa !29
  %t81 = load i32, ptr %l1, !tbaa !23
  %t84 = call i1 @compiler_2ftyped_2eexprBreaks(ptr %v0, ptr %t79, i32 %t81)
  store i1 %t84, ptr %l54
  br label %bb23
bb23:
  %t85 = load i1, ptr %l54, !tbaa !21
  store i1 %t85, ptr %l18, !tbaa !21
  br label %bb137
bb24:
  %t86 = load ptr, ptr %l0, !tbaa !29
  store ptr %t86, ptr %l55, !tbaa !29
  store i1 false, ptr %l56, !tbaa !21
  %t87 = load ptr, ptr %l55, !tbaa !29
  %t88 = icmp ne ptr %t87, null
  br i1 %t88, label %bb25, label %bb26
bb25:
  %t90 = load ptr, ptr %l55, !tbaa !29
  %t91 = load i64, ptr %t90, !range !{i64 0, i64 17}
  %t93 = icmp eq i64 %t91, 1
  store i1 %t93, ptr %l56, !tbaa !21
  br label %bb26
bb26:
  %t94 = load i1, ptr %l56, !tbaa !21
  br i1 %t94, label %bb27, label %bb28
bb27:
  %t95 = load ptr, ptr %l0, !tbaa !29
  %t97 = getelementptr { i64, [3 x i64] }, ptr %t95, i32 0, i32 1
  %t98 = getelementptr { %"compiler/source:Span", ptr, ptr }, ptr %t97, i32 0, i32 1
  %t99 = load ptr, ptr %t98
  store ptr %t99, ptr %l5, !tbaa !29
  %t101 = load ptr, ptr %l0, !tbaa !29
  %t103 = getelementptr { i64, [3 x i64] }, ptr %t101, i32 0, i32 1
  %t104 = getelementptr { %"compiler/source:Span", ptr, ptr }, ptr %t103, i32 0, i32 2
  %t105 = load ptr, ptr %t104
  store ptr %t105, ptr %l6, !tbaa !29
  br label %bb29
bb28:
  br label %bb35
bb29:
  %t107 = load ptr, ptr %l5, !tbaa !29
  %t108 = load i32, ptr %l1, !tbaa !23
  %t111 = call i1 @compiler_2ftyped_2eplaceBreaks(ptr %v0, ptr %t107, i32 %t108)
  store i1 %t111, ptr %l65
  br label %bb30
bb30:
  %t112 = load i1, ptr %l65, !tbaa !21
  br i1 %t112, label %bb31, label %bb32
bb31:
  store i1 true, ptr %l66, !tbaa !21
  br label %bb34
bb32:
  %t113 = load ptr, ptr %l6, !tbaa !29
  %t115 = load i32, ptr %l1, !tbaa !23
  %t118 = call i1 @compiler_2ftyped_2eexprBreaks(ptr %v0, ptr %t113, i32 %t115)
  store i1 %t118, ptr %l70
  br label %bb33
bb33:
  %t119 = load i1, ptr %l70, !tbaa !21
  store i1 %t119, ptr %l66, !tbaa !21
  br label %bb34
bb34:
  %t120 = load i1, ptr %l66, !tbaa !21
  store i1 %t120, ptr %l18, !tbaa !21
  br label %bb137
bb35:
  %t121 = load ptr, ptr %l0, !tbaa !29
  store ptr %t121, ptr %l71, !tbaa !29
  store i1 false, ptr %l72, !tbaa !21
  %t122 = load ptr, ptr %l71, !tbaa !29
  %t123 = icmp ne ptr %t122, null
  br i1 %t123, label %bb36, label %bb37
bb36:
  %t125 = load ptr, ptr %l71, !tbaa !29
  %t126 = load i64, ptr %t125, !range !{i64 0, i64 17}
  %t128 = icmp eq i64 %t126, 3
  store i1 %t128, ptr %l72, !tbaa !21
  br label %bb37
bb37:
  %t129 = load i1, ptr %l72, !tbaa !21
  br i1 %t129, label %bb38, label %bb39
bb38:
  %t130 = load ptr, ptr %l0, !tbaa !29
  %t132 = getelementptr { i64, [3 x i64] }, ptr %t130, i32 0, i32 1
  %t133 = getelementptr { %"compiler/source:Span", ptr }, ptr %t132, i32 0, i32 1
  %t134 = load ptr, ptr %t133
  store ptr %t134, ptr %l7, !tbaa !29
  br label %bb40
bb39:
  br label %bb50
bb40:
  %t136 = load ptr, ptr %l7, !tbaa !29
  %t138 = getelementptr %"compiler/typed:If", ptr %t136, i32 0, i32 0
  %t139 = load ptr, ptr %t138, !tbaa !29
  %t141 = load i32, ptr %l1, !tbaa !23
  %t144 = call i1 @compiler_2ftyped_2eexprBreaks(ptr %v0, ptr %t139, i32 %t141)
  store i1 %t144, ptr %l81
  br label %bb41
bb41:
  %t145 = load i1, ptr %l81, !tbaa !21
  br i1 %t145, label %bb42, label %bb43
bb42:
  store i1 true, ptr %l82, !tbaa !21
  br label %bb45
bb43:
  %t146 = load ptr, ptr %l7, !tbaa !29
  %t148 = getelementptr %"compiler/typed:If", ptr %t146, i32 0, i32 1
  %t149 = load ptr, ptr %t148, !tbaa !29
  %t151 = load i32, ptr %l1, !tbaa !23
  %t154 = call i1 @compiler_2ftyped_2eBreaksOut(ptr %v0, ptr %t149, i32 %t151)
  store i1 %t154, ptr %l87
  br label %bb44
bb44:
  %t155 = load i1, ptr %l87, !tbaa !21
  store i1 %t155, ptr %l82, !tbaa !21
  br label %bb45
bb45:
  %t156 = load i1, ptr %l82, !tbaa !21
  br i1 %t156, label %bb46, label %bb47
bb46:
  store i1 true, ptr %l88, !tbaa !21
  br label %bb49
bb47:
  %t157 = load ptr, ptr %l7, !tbaa !29
  %t159 = getelementptr %"compiler/typed:If", ptr %t157, i32 0, i32 2
  %t160 = load ptr, ptr %t159, !tbaa !29
  %t161 = load i32, ptr %l1, !tbaa !23
  %t164 = call i1 @compiler_2ftyped_2eBreaksOut(ptr %v0, ptr %t160, i32 %t161)
  store i1 %t164, ptr %l92
  br label %bb48
bb48:
  %t165 = load i1, ptr %l92, !tbaa !21
  store i1 %t165, ptr %l88, !tbaa !21
  br label %bb49
bb49:
  %t166 = load i1, ptr %l88, !tbaa !21
  store i1 %t166, ptr %l18, !tbaa !21
  br label %bb137
bb50:
  %t167 = load ptr, ptr %l0, !tbaa !29
  store ptr %t167, ptr %l93, !tbaa !29
  store i1 false, ptr %l94, !tbaa !21
  %t168 = load ptr, ptr %l93, !tbaa !29
  %t169 = icmp ne ptr %t168, null
  br i1 %t169, label %bb51, label %bb52
bb51:
  %t171 = load ptr, ptr %l93, !tbaa !29
  %t172 = load i64, ptr %t171, !range !{i64 0, i64 17}
  %t174 = icmp eq i64 %t172, 4
  store i1 %t174, ptr %l94, !tbaa !21
  br label %bb52
bb52:
  %t175 = load i1, ptr %l94, !tbaa !21
  br i1 %t175, label %bb53, label %bb54
bb53:
  %t176 = load ptr, ptr %l0, !tbaa !29
  %t178 = getelementptr { i64, [3 x i64] }, ptr %t176, i32 0, i32 1
  %t179 = getelementptr { %"compiler/source:Span", ptr, ptr }, ptr %t178, i32 0, i32 1
  %t180 = load ptr, ptr %t179
  store ptr %t180, ptr %l8, !tbaa !29
  %t182 = load ptr, ptr %l0, !tbaa !29
  %t184 = getelementptr { i64, [3 x i64] }, ptr %t182, i32 0, i32 1
  %t185 = getelementptr { %"compiler/source:Span", ptr, ptr }, ptr %t184, i32 0, i32 2
  %t186 = load ptr, ptr %t185
  store ptr %t186, ptr %l9, !tbaa !29
  br label %bb55
bb54:
  br label %bb61
bb55:
  %t188 = load ptr, ptr %l8, !tbaa !29
  %t190 = load i32, ptr %l1, !tbaa !23
  %t193 = call i1 @compiler_2ftyped_2eBreaksOut(ptr %v0, ptr %t188, i32 %t190)
  store i1 %t193, ptr %l104
  br label %bb56
bb56:
  %t194 = load i1, ptr %l104, !tbaa !21
  br i1 %t194, label %bb57, label %bb58
bb57:
  store i1 true, ptr %l105, !tbaa !21
  br label %bb60
bb58:
  %t195 = load ptr, ptr %l9, !tbaa !29
  %t196 = load i32, ptr %l1, !tbaa !23
  %t199 = call i1 @compiler_2ftyped_2eBreaksOut(ptr %v0, ptr %t195, i32 %t196)
  store i1 %t199, ptr %l108
  br label %bb59
bb59:
  %t200 = load i1, ptr %l108, !tbaa !21
  store i1 %t200, ptr %l105, !tbaa !21
  br label %bb60
bb60:
  %t201 = load i1, ptr %l105, !tbaa !21
  store i1 %t201, ptr %l18, !tbaa !21
  br label %bb137
bb61:
  %t202 = load ptr, ptr %l0, !tbaa !29
  store ptr %t202, ptr %l109, !tbaa !29
  store i1 false, ptr %l110, !tbaa !21
  %t203 = load ptr, ptr %l109, !tbaa !29
  %t204 = icmp ne ptr %t203, null
  br i1 %t204, label %bb62, label %bb63
bb62:
  %t206 = load ptr, ptr %l109, !tbaa !29
  %t207 = load i64, ptr %t206, !range !{i64 0, i64 17}
  %t209 = icmp eq i64 %t207, 6
  store i1 %t209, ptr %l110, !tbaa !21
  br label %bb63
bb63:
  %t210 = load i1, ptr %l110, !tbaa !21
  br i1 %t210, label %bb64, label %bb65
bb64:
  %t211 = load ptr, ptr %l0, !tbaa !29
  %t213 = getelementptr { i64, [3 x i64] }, ptr %t211, i32 0, i32 1
  %t214 = getelementptr { %"compiler/source:Span", ptr }, ptr %t213, i32 0, i32 1
  %t215 = load ptr, ptr %t214
  store ptr %t215, ptr %l10, !tbaa !29
  br label %bb70
bb65:
  %t217 = load ptr, ptr %l0, !tbaa !29
  store ptr %t217, ptr %l115, !tbaa !29
  store i1 false, ptr %l116, !tbaa !21
  %t218 = load ptr, ptr %l115, !tbaa !29
  %t219 = icmp ne ptr %t218, null
  br i1 %t219, label %bb66, label %bb67
bb66:
  %t221 = load ptr, ptr %l115, !tbaa !29
  %t222 = load i64, ptr %t221, !range !{i64 0, i64 17}
  %t224 = icmp eq i64 %t222, 16
  store i1 %t224, ptr %l116, !tbaa !21
  br label %bb67
bb67:
  %t225 = load i1, ptr %l116, !tbaa !21
  br i1 %t225, label %bb68, label %bb69
bb68:
  %t226 = load ptr, ptr %l0, !tbaa !29
  %t228 = getelementptr { i64, [3 x i64] }, ptr %t226, i32 0, i32 1
  %t229 = getelementptr { %"compiler/source:Span", ptr }, ptr %t228, i32 0, i32 1
  %t230 = load ptr, ptr %t229
  store ptr %t230, ptr %l10, !tbaa !29
  br label %bb70
bb69:
  br label %bb72
bb70:
  %t232 = load ptr, ptr %l10, !tbaa !29
  %t233 = load i32, ptr %l1, !tbaa !23
  %t236 = call i1 @compiler_2ftyped_2eexprBreaks(ptr %v0, ptr %t232, i32 %t233)
  store i1 %t236, ptr %l123
  br label %bb71
bb71:
  %t237 = load i1, ptr %l123, !tbaa !21
  store i1 %t237, ptr %l18, !tbaa !21
  br label %bb137
bb72:
  %t238 = load ptr, ptr %l0, !tbaa !29
  store ptr %t238, ptr %l124, !tbaa !29
  store i1 false, ptr %l125, !tbaa !21
  %t239 = load ptr, ptr %l124, !tbaa !29
  %t240 = icmp ne ptr %t239, null
  br i1 %t240, label %bb73, label %bb74
bb73:
  %t242 = load ptr, ptr %l124, !tbaa !29
  %t243 = load i64, ptr %t242, !range !{i64 0, i64 17}
  %t245 = icmp eq i64 %t243, 7
  store i1 %t245, ptr %l125, !tbaa !21
  br label %bb74
bb74:
  %t246 = load i1, ptr %l125, !tbaa !21
  br i1 %t246, label %bb75, label %bb76
bb75:
  br label %bb77
bb76:
  br label %bb78
bb77:
  store i1 false, ptr %l18, !tbaa !21
  br label %bb137
bb78:
  %t247 = load ptr, ptr %l0, !tbaa !29
  store ptr %t247, ptr %l128, !tbaa !29
  store i1 false, ptr %l129, !tbaa !21
  %t248 = load ptr, ptr %l128, !tbaa !29
  %t249 = icmp ne ptr %t248, null
  br i1 %t249, label %bb79, label %bb80
bb79:
  %t251 = load ptr, ptr %l128, !tbaa !29
  %t252 = load i64, ptr %t251, !range !{i64 0, i64 17}
  %t254 = icmp eq i64 %t252, 8
  store i1 %t254, ptr %l129, !tbaa !21
  br label %bb80
bb80:
  %t255 = load i1, ptr %l129, !tbaa !21
  br i1 %t255, label %bb81, label %bb82
bb81:
  %t256 = load ptr, ptr %l0, !tbaa !29
  %t258 = getelementptr { i64, [3 x i64] }, ptr %t256, i32 0, i32 1
  %t259 = getelementptr { %"compiler/source:Span", ptr, i32 }, ptr %t258, i32 0, i32 1
  %t260 = load ptr, ptr %t259
  store ptr %t260, ptr %l11, !tbaa !29
  br label %bb83
bb82:
  br label %bb85
bb83:
  %t262 = load ptr, ptr %l11, !tbaa !29
  %t264 = load i32, ptr %l1, !tbaa !23
  %t267 = call i1 @compiler_2ftyped_2eexprBreaks(ptr %v0, ptr %t262, i32 %t264)
  store i1 %t267, ptr %l137
  br label %bb84
bb84:
  %t268 = load i1, ptr %l137, !tbaa !21
  store i1 %t268, ptr %l18, !tbaa !21
  br label %bb137
bb85:
  %t269 = load ptr, ptr %l0, !tbaa !29
  store ptr %t269, ptr %l138, !tbaa !29
  store i1 false, ptr %l139, !tbaa !21
  %t270 = load ptr, ptr %l138, !tbaa !29
  %t271 = icmp ne ptr %t270, null
  br i1 %t271, label %bb86, label %bb87
bb86:
  %t273 = load ptr, ptr %l138, !tbaa !29
  %t274 = load i64, ptr %t273, !range !{i64 0, i64 17}
  %t276 = icmp eq i64 %t274, 9
  store i1 %t276, ptr %l139, !tbaa !21
  br label %bb87
bb87:
  %t277 = load i1, ptr %l139, !tbaa !21
  br i1 %t277, label %bb88, label %bb89
bb88:
  %t278 = load ptr, ptr %l0, !tbaa !29
  %t280 = getelementptr { i64, [3 x i64] }, ptr %t278, i32 0, i32 1
  %t281 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t280, i32 0, i32 2
  %t282 = load ptr, ptr %t281
  store ptr %t282, ptr %l12, !tbaa !29
  br label %bb90
bb89:
  br label %bb92
bb90:
  %t284 = load ptr, ptr %l12, !tbaa !29
  %t285 = load i32, ptr %l1, !tbaa !23
  %t288 = call i1 @compiler_2ftyped_2eexprBreaks(ptr %v0, ptr %t284, i32 %t285)
  store i1 %t288, ptr %l146
  br label %bb91
bb91:
  %t289 = load i1, ptr %l146, !tbaa !21
  store i1 %t289, ptr %l18, !tbaa !21
  br label %bb137
bb92:
  %t290 = load ptr, ptr %l0, !tbaa !29
  store ptr %t290, ptr %l147, !tbaa !29
  store i1 false, ptr %l148, !tbaa !21
  %t291 = load ptr, ptr %l147, !tbaa !29
  %t292 = icmp ne ptr %t291, null
  br i1 %t292, label %bb93, label %bb94
bb93:
  %t294 = load ptr, ptr %l147, !tbaa !29
  %t295 = load i64, ptr %t294, !range !{i64 0, i64 17}
  %t297 = icmp eq i64 %t295, 10
  store i1 %t297, ptr %l148, !tbaa !21
  br label %bb94
bb94:
  %t298 = load i1, ptr %l148, !tbaa !21
  br i1 %t298, label %bb95, label %bb96
bb95:
  %t299 = load ptr, ptr %l0, !tbaa !29
  %t301 = getelementptr { i64, [3 x i64] }, ptr %t299, i32 0, i32 1
  %t302 = getelementptr { %"compiler/source:Span", ptr, ptr }, ptr %t301, i32 0, i32 1
  %t303 = load ptr, ptr %t302
  store ptr %t303, ptr %l13, !tbaa !29
  %t305 = load ptr, ptr %l0, !tbaa !29
  %t307 = getelementptr { i64, [3 x i64] }, ptr %t305, i32 0, i32 1
  %t308 = getelementptr { %"compiler/source:Span", ptr, ptr }, ptr %t307, i32 0, i32 2
  %t309 = load ptr, ptr %t308
  store ptr %t309, ptr %l14, !tbaa !29
  br label %bb97
bb96:
  br label %bb103
bb97:
  %t311 = load ptr, ptr %l13, !tbaa !29
  %t313 = load i32, ptr %l1, !tbaa !23
  %t316 = call i1 @compiler_2ftyped_2eexprBreaks(ptr %v0, ptr %t311, i32 %t313)
  store i1 %t316, ptr %l158
  br label %bb98
bb98:
  %t317 = load i1, ptr %l158, !tbaa !21
  br i1 %t317, label %bb99, label %bb100
bb99:
  store i1 true, ptr %l159, !tbaa !21
  br label %bb102
bb100:
  %t318 = load ptr, ptr %l14, !tbaa !29
  %t319 = load i32, ptr %l1, !tbaa !23
  %t322 = call i1 @compiler_2ftyped_2eexprBreaks(ptr %v0, ptr %t318, i32 %t319)
  store i1 %t322, ptr %l162
  br label %bb101
bb101:
  %t323 = load i1, ptr %l162, !tbaa !21
  store i1 %t323, ptr %l159, !tbaa !21
  br label %bb102
bb102:
  %t324 = load i1, ptr %l159, !tbaa !21
  store i1 %t324, ptr %l18, !tbaa !21
  br label %bb137
bb103:
  %t325 = load ptr, ptr %l0, !tbaa !29
  store ptr %t325, ptr %l163, !tbaa !29
  store i1 false, ptr %l164, !tbaa !21
  %t326 = load ptr, ptr %l163, !tbaa !29
  %t327 = icmp ne ptr %t326, null
  br i1 %t327, label %bb104, label %bb105
bb104:
  %t329 = load ptr, ptr %l163, !tbaa !29
  %t330 = load i64, ptr %t329, !range !{i64 0, i64 17}
  %t332 = icmp eq i64 %t330, 11
  store i1 %t332, ptr %l164, !tbaa !21
  br label %bb105
bb105:
  %t333 = load i1, ptr %l164, !tbaa !21
  br i1 %t333, label %bb106, label %bb107
bb106:
  %t334 = load ptr, ptr %l0, !tbaa !29
  %t336 = getelementptr { i64, [3 x i64] }, ptr %t334, i32 0, i32 1
  %t337 = getelementptr { %"compiler/source:Span", ptr }, ptr %t336, i32 0, i32 1
  %t338 = load ptr, ptr %t337
  store ptr %t338, ptr %l15, !tbaa !29
  br label %bb112
bb107:
  %t340 = load ptr, ptr %l0, !tbaa !29
  store ptr %t340, ptr %l169, !tbaa !29
  store i1 false, ptr %l170, !tbaa !21
  %t341 = load ptr, ptr %l169, !tbaa !29
  %t342 = icmp ne ptr %t341, null
  br i1 %t342, label %bb108, label %bb109
bb108:
  %t344 = load ptr, ptr %l169, !tbaa !29
  %t345 = load i64, ptr %t344, !range !{i64 0, i64 17}
  %t347 = icmp eq i64 %t345, 12
  store i1 %t347, ptr %l170, !tbaa !21
  br label %bb109
bb109:
  %t348 = load i1, ptr %l170, !tbaa !21
  br i1 %t348, label %bb110, label %bb111
bb110:
  %t349 = load ptr, ptr %l0, !tbaa !29
  %t351 = getelementptr { i64, [3 x i64] }, ptr %t349, i32 0, i32 1
  %t352 = getelementptr { %"compiler/source:Span", ptr }, ptr %t351, i32 0, i32 1
  %t353 = load ptr, ptr %t352
  store ptr %t353, ptr %l15, !tbaa !29
  br label %bb112
bb111:
  br label %bb114
bb112:
  %t355 = load ptr, ptr %l15, !tbaa !29
  %t357 = load i32, ptr %l1, !tbaa !23
  %t360 = call i1 @compiler_2ftyped_2eBreaksOut(ptr %v0, ptr %t355, i32 %t357)
  store i1 %t360, ptr %l178
  br label %bb113
bb113:
  %t361 = load i1, ptr %l178, !tbaa !21
  store i1 %t361, ptr %l18, !tbaa !21
  br label %bb137
bb114:
  %t362 = load ptr, ptr %l0, !tbaa !29
  store ptr %t362, ptr %l179, !tbaa !29
  store i1 false, ptr %l180, !tbaa !21
  %t363 = load ptr, ptr %l179, !tbaa !29
  %t364 = icmp ne ptr %t363, null
  br i1 %t364, label %bb115, label %bb116
bb115:
  %t366 = load ptr, ptr %l179, !tbaa !29
  %t367 = load i64, ptr %t366, !range !{i64 0, i64 17}
  %t369 = icmp eq i64 %t367, 13
  store i1 %t369, ptr %l180, !tbaa !21
  br label %bb116
bb116:
  %t370 = load i1, ptr %l180, !tbaa !21
  br i1 %t370, label %bb117, label %bb118
bb117:
  %t371 = load ptr, ptr %l0, !tbaa !29
  %t373 = getelementptr { i64, [3 x i64] }, ptr %t371, i32 0, i32 1
  %t374 = getelementptr { %"compiler/source:Span", ptr }, ptr %t373, i32 0, i32 1
  %t375 = load ptr, ptr %t374
  store ptr %t375, ptr %l16, !tbaa !29
  br label %bb119
bb118:
  br label %bb125
bb119:
  %t377 = load ptr, ptr %l16, !tbaa !29
  %t379 = getelementptr %"compiler/typed:Join", ptr %t377, i32 0, i32 0
  %t380 = load ptr, ptr %t379, !tbaa !29
  %t382 = load i32, ptr %l1, !tbaa !23
  %t385 = call i1 @compiler_2ftyped_2eBreaksOut(ptr %v0, ptr %t380, i32 %t382)
  store i1 %t385, ptr %l189
  br label %bb120
bb120:
  %t386 = load i1, ptr %l189, !tbaa !21
  br i1 %t386, label %bb121, label %bb122
bb121:
  store i1 true, ptr %l190, !tbaa !21
  br label %bb124
bb122:
  %t387 = load ptr, ptr %l16, !tbaa !29
  %t389 = getelementptr %"compiler/typed:Join", ptr %t387, i32 0, i32 2
  %t390 = load { i64, ptr }, ptr %t389, !tbaa !27
  %t391 = load i32, ptr %l1, !tbaa !23
  %t394 = call i1 @compiler_2ftyped_2eclausesBreak(ptr %v0, { i64, ptr } %t390, i32 %t391)
  store i1 %t394, ptr %l194
  br label %bb123
bb123:
  %t395 = load i1, ptr %l194, !tbaa !21
  store i1 %t395, ptr %l190, !tbaa !21
  br label %bb124
bb124:
  %t396 = load i1, ptr %l190, !tbaa !21
  store i1 %t396, ptr %l18, !tbaa !21
  br label %bb137
bb125:
  %t397 = load ptr, ptr %l0, !tbaa !29
  store ptr %t397, ptr %l195, !tbaa !29
  store i1 false, ptr %l196, !tbaa !21
  %t398 = load ptr, ptr %l195, !tbaa !29
  %t399 = icmp ne ptr %t398, null
  br i1 %t399, label %bb126, label %bb127
bb126:
  %t401 = load ptr, ptr %l195, !tbaa !29
  %t402 = load i64, ptr %t401, !range !{i64 0, i64 17}
  %t404 = icmp eq i64 %t402, 14
  store i1 %t404, ptr %l196, !tbaa !21
  br label %bb127
bb127:
  %t405 = load i1, ptr %l196, !tbaa !21
  br i1 %t405, label %bb128, label %bb129
bb128:
  %t406 = load ptr, ptr %l0, !tbaa !29
  %t408 = getelementptr { i64, [3 x i64] }, ptr %t406, i32 0, i32 1
  %t409 = getelementptr { %"compiler/source:Span", ptr }, ptr %t408, i32 0, i32 1
  %t410 = load ptr, ptr %t409
  store ptr %t410, ptr %l17, !tbaa !29
  br label %bb130
bb129:
  br label %bb136
bb130:
  %t412 = load ptr, ptr %l17, !tbaa !29
  %t414 = getelementptr %"compiler/typed:Spawn", ptr %t412, i32 0, i32 0
  %t415 = load { i64, ptr }, ptr %t414, !tbaa !27
  %t416 = load i32, ptr %l1, !tbaa !23
  %t419 = call i1 @compiler_2ftyped_2etargetsBreak(ptr %v0, { i64, ptr } %t415, i32 %t416)
  store i1 %t419, ptr %l204
  br label %bb131
bb131:
  %t420 = load i1, ptr %l204, !tbaa !21
  br i1 %t420, label %bb132, label %bb133
bb132:
  store i1 true, ptr %l205, !tbaa !21
  br label %bb135
bb133:
  %t421 = load ptr, ptr %l17, !tbaa !29
  %t423 = getelementptr %"compiler/typed:Spawn", ptr %t421, i32 0, i32 1
  %t424 = load ptr, ptr %t423, !tbaa !29
  %t426 = load i32, ptr %l1, !tbaa !23
  %t429 = call i1 @compiler_2ftyped_2eexprBreaks(ptr %v0, ptr %t424, i32 %t426)
  store i1 %t429, ptr %l210
  br label %bb134
bb134:
  %t430 = load i1, ptr %l210, !tbaa !21
  store i1 %t430, ptr %l205, !tbaa !21
  br label %bb135
bb135:
  %t431 = load i1, ptr %l205, !tbaa !21
  store i1 %t431, ptr %l18, !tbaa !21
  br label %bb137
bb136:
  call void @__olang_check_failed(ptr @olang_loc_ab0bd1a1cb525619_8191fed8583864ed)
  unreachable
bb137:
  %t432 = load i1, ptr %l18, !tbaa !21
  store i1 %t432, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i1 @compiler_2ftyped_2estmtsBreak(ptr %v0, { i64, ptr } %a0, i32 %a1) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l2 = alloca { i64, ptr }
  %l3 = alloca i64
  %l4 = alloca i64
  %l17 = alloca { i64, ptr }
  %l22 = alloca i1
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
  %t34 = call i1 @compiler_2ftyped_2estmtBreaks(ptr %v0, ptr %t28, i32 %a1)
  store i1 %t34, ptr %l22
  br label %bb8
bb8:
  %t35 = load i1, ptr %l22, !tbaa !21
  br i1 %t35, label %bb9, label %bb10
bb9:
  store i1 true, ptr %rv
  br label %ret
bb10:
  br label %bb11
bb11:
  br label %bb12
bb12:
  %t37 = load i64, ptr %l3, !tbaa !24
  %t39 = add i64 %t37, 1
  store i64 %t39, ptr %l3, !tbaa !24
  br label %bb4
bb13:
  store i1 false, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i64 @compiler_2ftyped_2ewholeLocal(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca %"compiler/source:Span"
  %l3 = alloca i32
  %l5 = alloca ptr
  %l6 = alloca i64
  %l7 = alloca ptr
  %l8 = alloca i1
  %l13 = alloca ptr
  %l14 = alloca i1
  %l17 = alloca i64
  %l26 = alloca ptr
  %l27 = alloca i1
  %l33 = alloca i64
  %rv = alloca i64
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
  %t8 = icmp eq i64 %t6, 2
  store i1 %t8, ptr %l8, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l8, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  %t10 = load ptr, ptr %l0, !tbaa !29
  %t12 = getelementptr { i64, [5 x i64] }, ptr %t10, i32 0, i32 1
  %t13 = getelementptr { %"compiler/source:Span", i32, ptr, i32 }, ptr %t12, i32 0, i32 2
  %t14 = load ptr, ptr %t13
  store ptr %t14, ptr %l1, !tbaa !29
  br label %bb5
bb4:
  br label %bb11
bb5:
  %t16 = load ptr, ptr %l1, !tbaa !29
  store ptr %t16, ptr %l13, !tbaa !29
  store i1 false, ptr %l14, !tbaa !21
  %t17 = load ptr, ptr %l13, !tbaa !29
  %t18 = icmp ne ptr %t17, null
  br i1 %t18, label %bb6, label %bb7
bb6:
  %t20 = load ptr, ptr %l13, !tbaa !29
  %t21 = load i64, ptr %t20, !range !{i64 0, i64 8}
  %t23 = icmp eq i64 %t21, 0
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
  store %"compiler/source:Span" %t29, ptr %l2
  %t31 = load ptr, ptr %l1, !tbaa !29
  %t33 = getelementptr { i64, [4 x i64] }, ptr %t31, i32 0, i32 1
  %t34 = getelementptr { %"compiler/source:Span", i32, i32 }, ptr %t33, i32 0, i32 1
  %t35 = load i32, ptr %t34
  store i32 %t35, ptr %l3, !tbaa !23
  %t37 = load ptr, ptr %l1, !tbaa !29
  %t39 = getelementptr { i64, [4 x i64] }, ptr %t37, i32 0, i32 1
  %t40 = getelementptr { %"compiler/source:Span", i32, i32 }, ptr %t39, i32 0, i32 2
  %t41 = load i32, ptr %t40
  %t45 = sext i32 %t41 to i64
  store i64 %t45, ptr %l17, !tbaa !24
  br label %bb10
bb9:
  store i64 -1, ptr %l17, !tbaa !24
  br label %bb10
bb10:
  %t47 = load i64, ptr %l17, !tbaa !24
  store i64 %t47, ptr %l6, !tbaa !24
  br label %bb23
bb11:
  %t48 = load ptr, ptr %l0, !tbaa !29
  store ptr %t48, ptr %l26, !tbaa !29
  store i1 false, ptr %l27, !tbaa !21
  %t49 = load ptr, ptr %l26, !tbaa !29
  %t50 = icmp ne ptr %t49, null
  br i1 %t50, label %bb12, label %bb13
bb12:
  %t52 = load ptr, ptr %l26, !tbaa !29
  %t53 = load i64, ptr %t52, !range !{i64 0, i64 18}
  %t55 = icmp eq i64 %t53, 17
  store i1 %t55, ptr %l27, !tbaa !21
  br label %bb13
bb13:
  %t56 = load i1, ptr %l27, !tbaa !21
  br i1 %t56, label %bb14, label %bb15
bb14:
  %t57 = load ptr, ptr %l0, !tbaa !29
  %t59 = getelementptr { i64, [5 x i64] }, ptr %t57, i32 0, i32 1
  %t60 = getelementptr { %"compiler/source:Span", i64, ptr }, ptr %t59, i32 0, i32 2
  %t61 = load ptr, ptr %t60
  store ptr %t61, ptr %l5, !tbaa !29
  br label %bb16
bb15:
  br label %bb18
bb16:
  %t63 = load ptr, ptr %l5, !tbaa !29
  %t65 = call i64 @compiler_2ftyped_2ewholeLocal(ptr %v0, ptr %t63)
  store i64 %t65, ptr %l33
  br label %bb17
bb17:
  %t66 = load i64, ptr %l33, !tbaa !24
  store i64 %t66, ptr %l6, !tbaa !24
  br label %bb23
bb18:
  br i1 true, label %bb19, label %bb20
bb19:
  br label %bb21
bb20:
  br label %bb22
bb21:
  store i64 -1, ptr %l6, !tbaa !24
  br label %bb23
bb22:
  call void @__olang_check_failed(ptr @olang_loc_9bf6326dc96b231_1fb9b096f472b9bd)
  unreachable
bb23:
  %t67 = load i64, ptr %l6, !tbaa !24
  store i64 %t67, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local void @compiler_2ftyped_3aBody_2ector(ptr %out, ptr %v0, i32 %a0, { i64, [2 x i64] } %a1, i32 %a2, i64 %a3, %"compiler/source:Span" %a4) #0 {
entry:
  %l5 = alloca i32
  %l6 = alloca { i64, [2 x i64] }
  %l7 = alloca i32
  %l8 = alloca i64
  %l9 = alloca %"compiler/source:Span"
  %l10 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l11 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l12 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l13 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l14 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l15 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l16 = alloca ptr
  %l17 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l18 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l19 = alloca i1
  %l20 = alloca i32
  %l21 = alloca i1
  %l22 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l23 = alloca i1
  %l30 = alloca i64
  %l32 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l34 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l35 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l36 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l37 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l38 = alloca i64
  %l40 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l42 = alloca i64
  %l44 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l46 = alloca i64
  %l48 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l50 = alloca i64
  %l52 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l54 = alloca i64
  %l56 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l58 = alloca %"compiler/typed:Body"
  br label %start
start:
  br label %bb0
bb0:
  store i32 %a0, ptr %l5, !tbaa !23
  store { i64, [2 x i64] } %a1, ptr %l6
  store i32 %a2, ptr %l7, !tbaa !23
  store i64 %a3, ptr %l8, !tbaa !24
  store %"compiler/source:Span" %a4, ptr %l9
  %t11 = ptrtoint ptr %v0 to i64
  store i64 %t11, ptr %l30, !tbaa !24
  %t12 = load i1, ptr @olang_2esole_2ecompiler_2ftyped_3aBody_2e5
  br i1 %t12, label %bb1, label %bb2
bb1:
  %t14 = call ptr @__olang_region_make(ptr %v0)
  %t15 = ptrtoint ptr %t14 to i64
  store i64 %t15, ptr %l30, !tbaa !24
  br label %bb2
bb2:
  %t16 = load i64, ptr %l30
  %t17 = inttoptr i64 %t16 to ptr
  %t18 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocalId_3e_2ector(ptr %t17, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t18, ptr %l32
  br label %bb3
bb3:
  %t19 = load i1, ptr @olang_2esole_2ecompiler_2ftyped_3aBody_2e5
  br i1 %t19, label %bb4, label %bb5
bb4:
  %t21 = load i64, ptr %l30
  %t22 = inttoptr i64 %t21 to ptr
  %t23 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l32, i32 0, i32 0
  %t24 = load { i64, ptr }, ptr %t23
  %t25 = extractvalue { i64, ptr } %t24, 1
  %t26 = call ptr @__olang_region_or(ptr %t25, ptr null)
  %t27 = icmp ne ptr %t26, null
  %t28 = select i1 %t27, ptr %t26, ptr null
  %t29 = icmp eq ptr %t28, %t22
  call void @__olang_region_settle(ptr %t22, i1 %t29)
  br label %bb5
bb5:
  %t30 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l32
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t30, ptr %l10
  %t31 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aScopeVar_3e_2ector(ptr %v0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t31, ptr %l34
  br label %bb6
bb6:
  %t32 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l34
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t32, ptr %l11
  %t33 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocal_3e_2ector(ptr %v0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t33, ptr %l35
  br label %bb7
bb7:
  %t34 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l35
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t34, ptr %l12
  %t35 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aBlockInfo_3e_2ector(ptr %v0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t35, ptr %l36
  br label %bb8
bb8:
  %t36 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l36
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t36, ptr %l13
  %t37 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aSiteInfo_3e_2ector(ptr %v0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t37, ptr %l37
  br label %bb9
bb9:
  %t38 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l37
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t38, ptr %l14
  %t39 = ptrtoint ptr %v0 to i64
  store i64 %t39, ptr %l38, !tbaa !24
  %t40 = load i1, ptr @olang_2esole_2ecompiler_2ftyped_3aBody_2e10
  br i1 %t40, label %bb10, label %bb11
bb10:
  %t42 = call ptr @__olang_region_make(ptr %v0)
  %t43 = ptrtoint ptr %t42 to i64
  store i64 %t43, ptr %l38, !tbaa !24
  br label %bb11
bb11:
  %t44 = load i64, ptr %l38
  %t45 = inttoptr i64 %t44 to ptr
  %t46 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocalId_3e_2ector(ptr %t45, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t46, ptr %l40
  br label %bb12
bb12:
  %t47 = load i1, ptr @olang_2esole_2ecompiler_2ftyped_3aBody_2e10
  br i1 %t47, label %bb13, label %bb14
bb13:
  %t49 = load i64, ptr %l38
  %t50 = inttoptr i64 %t49 to ptr
  %t51 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l40, i32 0, i32 0
  %t52 = load { i64, ptr }, ptr %t51
  %t53 = extractvalue { i64, ptr } %t52, 1
  %t54 = call ptr @__olang_region_or(ptr %t53, ptr null)
  %t55 = icmp ne ptr %t54, null
  %t56 = select i1 %t55, ptr %t54, ptr null
  %t57 = icmp eq ptr %t56, %t50
  call void @__olang_region_settle(ptr %t50, i1 %t57)
  br label %bb14
bb14:
  %t58 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l40
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t58, ptr %l15
  store ptr null, ptr %l16, !tbaa !29
  %t59 = ptrtoint ptr %v0 to i64
  store i64 %t59, ptr %l42, !tbaa !24
  %t60 = load i1, ptr @olang_2esole_2ecompiler_2ftyped_3aBody_2e12
  br i1 %t60, label %bb15, label %bb16
bb15:
  %t62 = call ptr @__olang_region_make(ptr %v0)
  %t63 = ptrtoint ptr %t62 to i64
  store i64 %t63, ptr %l42, !tbaa !24
  br label %bb16
bb16:
  %t64 = load i64, ptr %l42
  %t65 = inttoptr i64 %t64 to ptr
  %t66 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI32_3e_2ector(ptr %t65, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t66, ptr %l44
  br label %bb17
bb17:
  %t67 = load i1, ptr @olang_2esole_2ecompiler_2ftyped_3aBody_2e12
  br i1 %t67, label %bb18, label %bb19
bb18:
  %t69 = load i64, ptr %l42
  %t70 = inttoptr i64 %t69 to ptr
  %t71 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l44, i32 0, i32 0
  %t72 = load { i64, ptr }, ptr %t71
  %t73 = extractvalue { i64, ptr } %t72, 1
  %t74 = call ptr @__olang_region_or(ptr %t73, ptr null)
  %t75 = icmp ne ptr %t74, null
  %t76 = select i1 %t75, ptr %t74, ptr null
  %t77 = icmp eq ptr %t76, %t70
  call void @__olang_region_settle(ptr %t70, i1 %t77)
  br label %bb19
bb19:
  %t78 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l44
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t78, ptr %l17
  %t79 = ptrtoint ptr %v0 to i64
  store i64 %t79, ptr %l46, !tbaa !24
  %t80 = load i1, ptr @olang_2esole_2ecompiler_2ftyped_3aBody_2e13
  br i1 %t80, label %bb20, label %bb21
bb20:
  %t82 = call ptr @__olang_region_make(ptr %v0)
  %t83 = ptrtoint ptr %t82 to i64
  store i64 %t83, ptr %l46, !tbaa !24
  br label %bb21
bb21:
  %t84 = load i64, ptr %l46
  %t85 = inttoptr i64 %t84 to ptr
  %t86 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2ector(ptr %t85, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t86, ptr %l48
  br label %bb22
bb22:
  %t87 = load i1, ptr @olang_2esole_2ecompiler_2ftyped_3aBody_2e13
  br i1 %t87, label %bb23, label %bb24
bb23:
  %t89 = load i64, ptr %l46
  %t90 = inttoptr i64 %t89 to ptr
  %t91 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l48, i32 0, i32 0
  %t92 = load { i64, ptr }, ptr %t91
  %t93 = extractvalue { i64, ptr } %t92, 1
  %t94 = call ptr @__olang_region_or(ptr %t93, ptr null)
  %t95 = icmp ne ptr %t94, null
  %t96 = select i1 %t95, ptr %t94, ptr null
  %t97 = icmp eq ptr %t96, %t90
  call void @__olang_region_settle(ptr %t90, i1 %t97)
  br label %bb24
bb24:
  %t98 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l48
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t98, ptr %l18
  store i1 false, ptr %l19, !tbaa !21
  store i32 -1, ptr %l20, !tbaa !23
  store i1 false, ptr %l21, !tbaa !21
  %t99 = ptrtoint ptr %v0 to i64
  store i64 %t99, ptr %l50, !tbaa !24
  %t100 = load i1, ptr @olang_2esole_2ecompiler_2ftyped_3aBody_2e17
  br i1 %t100, label %bb25, label %bb26
bb25:
  %t102 = call ptr @__olang_region_make(ptr %v0)
  %t103 = ptrtoint ptr %t102 to i64
  store i64 %t103, ptr %l50, !tbaa !24
  br label %bb26
bb26:
  %t104 = load i64, ptr %l50
  %t105 = inttoptr i64 %t104 to ptr
  %t106 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocalId_3e_2ector(ptr %t105, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t106, ptr %l52
  br label %bb27
bb27:
  %t107 = load i1, ptr @olang_2esole_2ecompiler_2ftyped_3aBody_2e17
  br i1 %t107, label %bb28, label %bb29
bb28:
  %t109 = load i64, ptr %l50
  %t110 = inttoptr i64 %t109 to ptr
  %t111 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l52, i32 0, i32 0
  %t112 = load { i64, ptr }, ptr %t111
  %t113 = extractvalue { i64, ptr } %t112, 1
  %t114 = call ptr @__olang_region_or(ptr %t113, ptr null)
  %t115 = icmp ne ptr %t114, null
  %t116 = select i1 %t115, ptr %t114, ptr null
  %t117 = icmp eq ptr %t116, %t110
  call void @__olang_region_settle(ptr %t110, i1 %t117)
  br label %bb29
bb29:
  %t118 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l52
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t118, ptr %l22
  store i1 false, ptr %l23, !tbaa !21
  %t119 = ptrtoint ptr %v0 to i64
  store i64 %t119, ptr %l54, !tbaa !24
  %t120 = load i1, ptr @olang_2esole_2ecompiler_2ftyped_3aBody_2e19
  br i1 %t120, label %bb30, label %bb31
bb30:
  %t122 = call ptr @__olang_region_make(ptr %v0)
  %t123 = ptrtoint ptr %t122 to i64
  store i64 %t123, ptr %l54, !tbaa !24
  br label %bb31
bb31:
  %t124 = load i64, ptr %l54
  %t125 = inttoptr i64 %t124 to ptr
  %t126 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aBlockId_3e_2ector(ptr %t125, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t126, ptr %l56
  br label %bb32
bb32:
  %t127 = load i1, ptr @olang_2esole_2ecompiler_2ftyped_3aBody_2e19
  br i1 %t127, label %bb33, label %bb34
bb33:
  %t129 = load i64, ptr %l54
  %t130 = inttoptr i64 %t129 to ptr
  %t131 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l56, i32 0, i32 0
  %t132 = load { i64, ptr }, ptr %t131
  %t133 = extractvalue { i64, ptr } %t132, 1
  %t134 = call ptr @__olang_region_or(ptr %t133, ptr null)
  %t135 = icmp ne ptr %t134, null
  %t136 = select i1 %t135, ptr %t134, ptr null
  %t137 = icmp eq ptr %t136, %t130
  call void @__olang_region_settle(ptr %t130, i1 %t137)
  br label %bb34
bb34:
  %t138 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l56
  %t139 = getelementptr %"compiler/typed:Body", ptr %l58, i32 0, i32 0
  %t140 = load i32, ptr %l5, !tbaa !23
  store i32 %t140, ptr %t139, !tbaa !23
  %t141 = getelementptr %"compiler/typed:Body", ptr %l58, i32 0, i32 1
  %t142 = load { i64, [2 x i64] }, ptr %l6
  store { i64, [2 x i64] } %t142, ptr %t141
  %t143 = getelementptr %"compiler/typed:Body", ptr %l58, i32 0, i32 2
  %t144 = load i32, ptr %l7, !tbaa !23
  store i32 %t144, ptr %t143, !tbaa !23
  %t145 = getelementptr %"compiler/typed:Body", ptr %l58, i32 0, i32 3
  %t146 = load i64, ptr %l8, !tbaa !24
  store i64 %t146, ptr %t145, !tbaa !24
  %t147 = getelementptr %"compiler/typed:Body", ptr %l58, i32 0, i32 4
  %t148 = load %"compiler/source:Span", ptr %l9
  store %"compiler/source:Span" %t148, ptr %t147
  %t149 = getelementptr %"compiler/typed:Body", ptr %l58, i32 0, i32 5
  %t150 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l10
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t150, ptr %t149
  %t151 = getelementptr %"compiler/typed:Body", ptr %l58, i32 0, i32 6
  %t152 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l11
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t152, ptr %t151
  %t153 = getelementptr %"compiler/typed:Body", ptr %l58, i32 0, i32 7
  %t154 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l12
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t154, ptr %t153
  %t155 = getelementptr %"compiler/typed:Body", ptr %l58, i32 0, i32 8
  %t156 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l13
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t156, ptr %t155
  %t157 = getelementptr %"compiler/typed:Body", ptr %l58, i32 0, i32 9
  %t158 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l14
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t158, ptr %t157
  %t159 = getelementptr %"compiler/typed:Body", ptr %l58, i32 0, i32 10
  %t160 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l15
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t160, ptr %t159
  %t161 = getelementptr %"compiler/typed:Body", ptr %l58, i32 0, i32 11
  %t162 = load ptr, ptr %l16, !tbaa !29
  store ptr %t162, ptr %t161, !tbaa !29
  %t163 = getelementptr %"compiler/typed:Body", ptr %l58, i32 0, i32 12
  %t164 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l17
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t164, ptr %t163
  %t165 = getelementptr %"compiler/typed:Body", ptr %l58, i32 0, i32 13
  %t166 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l18
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t166, ptr %t165
  %t167 = getelementptr %"compiler/typed:Body", ptr %l58, i32 0, i32 14
  %t168 = load i1, ptr %l19, !tbaa !21
  store i1 %t168, ptr %t167, !tbaa !21
  %t169 = getelementptr %"compiler/typed:Body", ptr %l58, i32 0, i32 15
  %t170 = load i32, ptr %l20, !tbaa !23
  store i32 %t170, ptr %t169, !tbaa !23
  %t171 = getelementptr %"compiler/typed:Body", ptr %l58, i32 0, i32 16
  %t172 = load i1, ptr %l21, !tbaa !21
  store i1 %t172, ptr %t171, !tbaa !21
  %t173 = getelementptr %"compiler/typed:Body", ptr %l58, i32 0, i32 17
  %t174 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l22
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t174, ptr %t173
  %t175 = getelementptr %"compiler/typed:Body", ptr %l58, i32 0, i32 18
  %t176 = load i1, ptr %l23, !tbaa !21
  store i1 %t176, ptr %t175, !tbaa !21
  %t177 = getelementptr %"compiler/typed:Body", ptr %l58, i32 0, i32 19
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t138, ptr %t177
  call void @llvm.memmove.p0.p0.i64(ptr %out, ptr %l58, i64 408, i1 false)
  br label %ret
ret:
  ret void
}

define dso_local %"compiler/typed:Capture" @compiler_2ftyped_3aCapture_2ector(ptr %v0, ptr %v1, i32 %a0, ptr %a1) #0 {
entry:
  %rv = alloca %"compiler/typed:Capture"
  br label %start
start:
  br label %bb0
bb0:
  %t6 = insertvalue %"compiler/typed:Capture" undef, i32 %a0, 0
  %t8 = insertvalue %"compiler/typed:Capture" %t6, ptr %a1, 1
  store %"compiler/typed:Capture" %t8, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/typed:Capture", ptr %rv
  ret %"compiler/typed:Capture" %rr
}

define dso_local %"compiler/typed:Clause" @compiler_2ftyped_3aClause_2ector(ptr %v0, ptr %v1, ptr %v2, ptr %v3, %"compiler/source:Span" %a0, { i64, ptr } %a1, i1 %a2, ptr %a3, { i64, ptr } %a4, i64 %a5, i32 %a6) #0 {
entry:
  %rv = alloca %"compiler/typed:Clause"
  br label %start
start:
  br label %bb0
bb0:
  %t16 = insertvalue %"compiler/typed:Clause" undef, %"compiler/source:Span" %a0, 0
  %t18 = insertvalue %"compiler/typed:Clause" %t16, { i64, ptr } %a1, 1
  %t20 = insertvalue %"compiler/typed:Clause" %t18, i1 %a2, 2
  %t22 = insertvalue %"compiler/typed:Clause" %t20, ptr %a3, 3
  %t24 = insertvalue %"compiler/typed:Clause" %t22, { i64, ptr } %a4, 4
  %t26 = insertvalue %"compiler/typed:Clause" %t24, i64 %a5, 5
  %t28 = insertvalue %"compiler/typed:Clause" %t26, i32 %a6, 6
  store %"compiler/typed:Clause" %t28, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/typed:Clause", ptr %rv
  ret %"compiler/typed:Clause" %rr
}

define dso_local void @compiler_2ftyped_3aLastUses_2ector(ptr %out, ptr %v0, i64 %a0) #0 {
entry:
  %l0 = alloca i64
  %l1 = alloca i64
  %l2 = alloca { i64, ptr }
  %l3 = alloca { i64, ptr }
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l8 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l9 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l10 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l13 = alloca i64
  %l15 = alloca i64
  %l19 = alloca i64
  %l21 = alloca i64
  %l25 = alloca i64
  %l27 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l29 = alloca i64
  %l31 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l33 = alloca i64
  %l35 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l37 = alloca i64
  %l39 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l41 = alloca i64
  %l43 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l45 = alloca %"compiler/typed:LastUses"
  %t20 = alloca i64
  %t48 = alloca i64
  store i64 %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load i64, ptr %l0, !tbaa !24
  store i64 %t1, ptr %l1, !tbaa !24
  %t3 = ptrtoint ptr %v0 to i64
  store i64 %t3, ptr %l13, !tbaa !24
  %t4 = load i1, ptr @olang_2esole_2ecompiler_2ftyped_3aLastUses_2e1
  br i1 %t4, label %bb1, label %bb2
bb1:
  %t6 = call ptr @__olang_region_make(ptr %v0)
  %t7 = ptrtoint ptr %t6 to i64
  store i64 %t7, ptr %l13, !tbaa !24
  br label %bb2
bb2:
  %t8 = load i64, ptr %l0, !tbaa !24
  store i64 %t8, ptr %l15, !tbaa !24
  %t9 = load i64, ptr %l15, !tbaa !24
  %t10 = icmp sge i64 %t9, 0
  br i1 %t10, label %bb3, label %bb4
bb3:
  %t12 = load i64, ptr %l15, !tbaa !24
  %t13 = icmp sle i64 %t12, 1152921504606846975
  br i1 %t13, label %bb5, label %bb6
bb4:
  call void @__olang_check_failed(ptr @olang_loc_f4630321a8cc4bc9_818e9b0c99e677c5)
  unreachable
bb5:
  %t15 = load i64, ptr %l15, !tbaa !24
  %t16 = mul i64 %t15, 8
  %t17 = load i64, ptr %l13
  %t18 = inttoptr i64 %t17 to ptr
  %t19 = call ptr @__olang_scope_alloc(ptr %t18, i64 %t16)
  store i64 0, ptr %t20
  br label %fill.21
fill.21:
  %t24 = load i64, ptr %t20
  %t25 = icmp slt i64 %t24, %t15
  br i1 %t25, label %fillb.22, label %filld.23
fillb.22:
  %t26 = getelementptr i64, ptr %t19, i64 %t24
  store i64 -1, ptr %t26
  %t27 = add i64 %t24, 1
  store i64 %t27, ptr %t20
  br label %fill.21
filld.23:
  %t28 = insertvalue { i64, ptr } undef, i64 %t15, 0
  %t29 = insertvalue { i64, ptr } %t28, ptr %t19, 1
  store { i64, ptr } %t29, ptr %l2, !tbaa !27
  %t31 = ptrtoint ptr %v0 to i64
  store i64 %t31, ptr %l19, !tbaa !24
  %t32 = load i1, ptr @olang_2esole_2ecompiler_2ftyped_3aLastUses_2e2
  br i1 %t32, label %bb7, label %bb8
bb6:
  call void @__olang_check_failed(ptr @olang_loc_f4630321a8cc4bc9_818e9b0c99e677c5)
  unreachable
bb7:
  %t34 = call ptr @__olang_region_make(ptr %v0)
  %t35 = ptrtoint ptr %t34 to i64
  store i64 %t35, ptr %l19, !tbaa !24
  br label %bb8
bb8:
  %t36 = load i64, ptr %l0, !tbaa !24
  store i64 %t36, ptr %l21, !tbaa !24
  %t37 = load i64, ptr %l21, !tbaa !24
  %t38 = icmp sge i64 %t37, 0
  br i1 %t38, label %bb9, label %bb10
bb9:
  %t40 = load i64, ptr %l21, !tbaa !24
  %t41 = icmp sle i64 %t40, 1152921504606846975
  br i1 %t41, label %bb11, label %bb12
bb10:
  call void @__olang_check_failed(ptr @olang_loc_ed49a40517443f7c_ed7a500f174a658)
  unreachable
bb11:
  %t43 = load i64, ptr %l21, !tbaa !24
  %t44 = mul i64 %t43, 8
  %t45 = load i64, ptr %l19
  %t46 = inttoptr i64 %t45 to ptr
  %t47 = call ptr @__olang_scope_alloc(ptr %t46, i64 %t44)
  store i64 0, ptr %t48
  br label %fill.49
fill.49:
  %t52 = load i64, ptr %t48
  %t53 = icmp slt i64 %t52, %t43
  br i1 %t53, label %fillb.50, label %filld.51
fillb.50:
  %t54 = getelementptr i64, ptr %t47, i64 %t52
  store i64 -1, ptr %t54
  %t55 = add i64 %t52, 1
  store i64 %t55, ptr %t48
  br label %fill.49
filld.51:
  %t56 = insertvalue { i64, ptr } undef, i64 %t43, 0
  %t57 = insertvalue { i64, ptr } %t56, ptr %t47, 1
  store { i64, ptr } %t57, ptr %l3, !tbaa !27
  store i64 0, ptr %l4, !tbaa !24
  store i64 0, ptr %l5, !tbaa !24
  store i64 0, ptr %l6, !tbaa !24
  %t59 = ptrtoint ptr %v0 to i64
  store i64 %t59, ptr %l25, !tbaa !24
  %t60 = load i1, ptr @olang_2esole_2ecompiler_2ftyped_3aLastUses_2e6
  br i1 %t60, label %bb13, label %bb14
bb12:
  call void @__olang_check_failed(ptr @olang_loc_ed49a40517443f7c_ed7a500f174a658)
  unreachable
bb13:
  %t62 = call ptr @__olang_region_make(ptr %v0)
  %t63 = ptrtoint ptr %t62 to i64
  store i64 %t63, ptr %l25, !tbaa !24
  br label %bb14
bb14:
  %t64 = load i64, ptr %l25
  %t65 = inttoptr i64 %t64 to ptr
  %t66 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %t65, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t66, ptr %l27
  br label %bb15
bb15:
  %t67 = load i1, ptr @olang_2esole_2ecompiler_2ftyped_3aLastUses_2e6
  br i1 %t67, label %bb16, label %bb17
bb16:
  %t69 = load i64, ptr %l25
  %t70 = inttoptr i64 %t69 to ptr
  %t71 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l27, i32 0, i32 0
  %t72 = load { i64, ptr }, ptr %t71
  %t73 = extractvalue { i64, ptr } %t72, 1
  %t74 = call ptr @__olang_region_or(ptr %t73, ptr null)
  %t75 = icmp ne ptr %t74, null
  %t76 = select i1 %t75, ptr %t74, ptr null
  %t77 = icmp eq ptr %t76, %t70
  call void @__olang_region_settle(ptr %t70, i1 %t77)
  br label %bb17
bb17:
  %t78 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l27
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t78, ptr %l7
  %t79 = ptrtoint ptr %v0 to i64
  store i64 %t79, ptr %l29, !tbaa !24
  %t80 = load i1, ptr @olang_2esole_2ecompiler_2ftyped_3aLastUses_2e7
  br i1 %t80, label %bb18, label %bb19
bb18:
  %t82 = call ptr @__olang_region_make(ptr %v0)
  %t83 = ptrtoint ptr %t82 to i64
  store i64 %t83, ptr %l29, !tbaa !24
  br label %bb19
bb19:
  %t84 = load i64, ptr %l29
  %t85 = inttoptr i64 %t84 to ptr
  %t86 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %t85, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t86, ptr %l31
  br label %bb20
bb20:
  %t87 = load i1, ptr @olang_2esole_2ecompiler_2ftyped_3aLastUses_2e7
  br i1 %t87, label %bb21, label %bb22
bb21:
  %t89 = load i64, ptr %l29
  %t90 = inttoptr i64 %t89 to ptr
  %t91 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l31, i32 0, i32 0
  %t92 = load { i64, ptr }, ptr %t91
  %t93 = extractvalue { i64, ptr } %t92, 1
  %t94 = call ptr @__olang_region_or(ptr %t93, ptr null)
  %t95 = icmp ne ptr %t94, null
  %t96 = select i1 %t95, ptr %t94, ptr null
  %t97 = icmp eq ptr %t96, %t90
  call void @__olang_region_settle(ptr %t90, i1 %t97)
  br label %bb22
bb22:
  %t98 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l31
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t98, ptr %l8
  %t99 = ptrtoint ptr %v0 to i64
  store i64 %t99, ptr %l33, !tbaa !24
  %t100 = load i1, ptr @olang_2esole_2ecompiler_2ftyped_3aLastUses_2e8
  br i1 %t100, label %bb23, label %bb24
bb23:
  %t102 = call ptr @__olang_region_make(ptr %v0)
  %t103 = ptrtoint ptr %t102 to i64
  store i64 %t103, ptr %l33, !tbaa !24
  br label %bb24
bb24:
  %t104 = load i64, ptr %l33
  %t105 = inttoptr i64 %t104 to ptr
  %t106 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %t105, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t106, ptr %l35
  br label %bb25
bb25:
  %t107 = load i1, ptr @olang_2esole_2ecompiler_2ftyped_3aLastUses_2e8
  br i1 %t107, label %bb26, label %bb27
bb26:
  %t109 = load i64, ptr %l33
  %t110 = inttoptr i64 %t109 to ptr
  %t111 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l35, i32 0, i32 0
  %t112 = load { i64, ptr }, ptr %t111
  %t113 = extractvalue { i64, ptr } %t112, 1
  %t114 = call ptr @__olang_region_or(ptr %t113, ptr null)
  %t115 = icmp ne ptr %t114, null
  %t116 = select i1 %t115, ptr %t114, ptr null
  %t117 = icmp eq ptr %t116, %t110
  call void @__olang_region_settle(ptr %t110, i1 %t117)
  br label %bb27
bb27:
  %t118 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l35
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t118, ptr %l9
  %t119 = ptrtoint ptr %v0 to i64
  store i64 %t119, ptr %l37, !tbaa !24
  %t120 = load i1, ptr @olang_2esole_2ecompiler_2ftyped_3aLastUses_2e9
  br i1 %t120, label %bb28, label %bb29
bb28:
  %t122 = call ptr @__olang_region_make(ptr %v0)
  %t123 = ptrtoint ptr %t122 to i64
  store i64 %t123, ptr %l37, !tbaa !24
  br label %bb29
bb29:
  %t124 = load i64, ptr %l37
  %t125 = inttoptr i64 %t124 to ptr
  %t126 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %t125, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t126, ptr %l39
  br label %bb30
bb30:
  %t127 = load i1, ptr @olang_2esole_2ecompiler_2ftyped_3aLastUses_2e9
  br i1 %t127, label %bb31, label %bb32
bb31:
  %t129 = load i64, ptr %l37
  %t130 = inttoptr i64 %t129 to ptr
  %t131 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l39, i32 0, i32 0
  %t132 = load { i64, ptr }, ptr %t131
  %t133 = extractvalue { i64, ptr } %t132, 1
  %t134 = call ptr @__olang_region_or(ptr %t133, ptr null)
  %t135 = icmp ne ptr %t134, null
  %t136 = select i1 %t135, ptr %t134, ptr null
  %t137 = icmp eq ptr %t136, %t130
  call void @__olang_region_settle(ptr %t130, i1 %t137)
  br label %bb32
bb32:
  %t138 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l39
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t138, ptr %l10
  %t139 = ptrtoint ptr %v0 to i64
  store i64 %t139, ptr %l41, !tbaa !24
  %t140 = load i1, ptr @olang_2esole_2ecompiler_2ftyped_3aLastUses_2e10
  br i1 %t140, label %bb33, label %bb34
bb33:
  %t142 = call ptr @__olang_region_make(ptr %v0)
  %t143 = ptrtoint ptr %t142 to i64
  store i64 %t143, ptr %l41, !tbaa !24
  br label %bb34
bb34:
  %t144 = load i64, ptr %l41
  %t145 = inttoptr i64 %t144 to ptr
  %t146 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e(ptr %t145)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t146, ptr %l43
  br label %bb35
bb35:
  %t147 = load i1, ptr @olang_2esole_2ecompiler_2ftyped_3aLastUses_2e10
  br i1 %t147, label %bb36, label %bb37
bb36:
  %t149 = load i64, ptr %l41
  %t150 = inttoptr i64 %t149 to ptr
  %t151 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l43, i32 0, i32 2
  %t152 = load { i64, ptr }, ptr %t151
  %t153 = extractvalue { i64, ptr } %t152, 1
  %t154 = call ptr @__olang_region_or(ptr %t153, ptr null)
  %t155 = icmp ne ptr %t154, null
  %t156 = select i1 %t155, ptr %t154, ptr null
  %t157 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l43, i32 0, i32 1
  %t158 = load { i64, ptr }, ptr %t157
  %t159 = extractvalue { i64, ptr } %t158, 1
  %t160 = call ptr @__olang_region_or(ptr %t159, ptr null)
  %t161 = icmp ne ptr %t160, null
  %t162 = select i1 %t161, ptr %t160, ptr %t156
  %t163 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l43, i32 0, i32 0
  %t164 = load { i64, ptr }, ptr %t163
  %t165 = extractvalue { i64, ptr } %t164, 1
  %t166 = call ptr @__olang_region_or(ptr %t165, ptr null)
  %t167 = icmp ne ptr %t166, null
  %t168 = select i1 %t167, ptr %t166, ptr %t162
  %t169 = icmp eq ptr %t168, %t150
  call void @__olang_region_settle(ptr %t150, i1 %t169)
  br label %bb37
bb37:
  %t170 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l43
  %t171 = getelementptr %"compiler/typed:LastUses", ptr %l45, i32 0, i32 0
  %t172 = load i64, ptr %l1, !tbaa !24
  store i64 %t172, ptr %t171, !tbaa !24
  %t173 = getelementptr %"compiler/typed:LastUses", ptr %l45, i32 0, i32 1
  %t174 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t174, ptr %t173, !tbaa !27
  %t175 = getelementptr %"compiler/typed:LastUses", ptr %l45, i32 0, i32 2
  %t176 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t176, ptr %t175, !tbaa !27
  %t177 = getelementptr %"compiler/typed:LastUses", ptr %l45, i32 0, i32 3
  %t178 = load i64, ptr %l4, !tbaa !24
  store i64 %t178, ptr %t177, !tbaa !24
  %t179 = getelementptr %"compiler/typed:LastUses", ptr %l45, i32 0, i32 4
  %t180 = load i64, ptr %l5, !tbaa !24
  store i64 %t180, ptr %t179, !tbaa !24
  %t181 = getelementptr %"compiler/typed:LastUses", ptr %l45, i32 0, i32 5
  %t182 = load i64, ptr %l6, !tbaa !24
  store i64 %t182, ptr %t181, !tbaa !24
  %t183 = getelementptr %"compiler/typed:LastUses", ptr %l45, i32 0, i32 6
  %t184 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l7
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t184, ptr %t183
  %t185 = getelementptr %"compiler/typed:LastUses", ptr %l45, i32 0, i32 7
  %t186 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l8
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t186, ptr %t185
  %t187 = getelementptr %"compiler/typed:LastUses", ptr %l45, i32 0, i32 8
  %t188 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l9
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t188, ptr %t187
  %t189 = getelementptr %"compiler/typed:LastUses", ptr %l45, i32 0, i32 9
  %t190 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l10
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t190, ptr %t189
  %t191 = getelementptr %"compiler/typed:LastUses", ptr %l45, i32 0, i32 10
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t170, ptr %t191
  call void @llvm.memmove.p0.p0.i64(ptr %out, ptr %l45, i64 264, i1 false)
  br label %ret
ret:
  ret void
}

define dso_local %"compiler/typed:Make" @compiler_2ftyped_3aMake_2ector(ptr %v0, ptr %v1, ptr %v2, i32 %a0, i64 %a1, { i64, ptr } %a2, ptr %a3, i32 %a4, i32 %a5, i1 %a6) #0 {
entry:
  %rv = alloca %"compiler/typed:Make"
  br label %start
start:
  br label %bb0
bb0:
  %t16 = insertvalue %"compiler/typed:Make" undef, i32 %a0, 0
  %t18 = insertvalue %"compiler/typed:Make" %t16, i64 %a1, 1
  %t20 = insertvalue %"compiler/typed:Make" %t18, { i64, ptr } %a2, 2
  %t22 = insertvalue %"compiler/typed:Make" %t20, ptr %a3, 3
  %t24 = insertvalue %"compiler/typed:Make" %t22, i32 %a4, 4
  %t26 = insertvalue %"compiler/typed:Make" %t24, i32 %a5, 5
  %t28 = insertvalue %"compiler/typed:Make" %t26, i1 %a6, 6
  store %"compiler/typed:Make" %t28, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/typed:Make", ptr %rv
  ret %"compiler/typed:Make" %rr
}

define dso_local void @compiler_2ftyped_3adropWalk_2ector(ptr %out, ptr %v0, ptr %v1, ptr %a0) #0 {
entry:
  %l1 = alloca ptr
  %l2 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l3 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l4 = alloca i1
  %l5 = alloca i64
  %l6 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l7 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l8 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l9 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l10 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l11 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l12 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l13 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l14 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l17 = alloca i64
  %l19 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l21 = alloca i64
  %l23 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l25 = alloca i64
  %l27 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l29 = alloca i64
  %l31 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l33 = alloca i64
  %l35 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l37 = alloca i64
  %l39 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l41 = alloca i64
  %l43 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l45 = alloca i64
  %l47 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l49 = alloca i64
  %l51 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l53 = alloca i64
  %l55 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l57 = alloca i64
  %l59 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l61 = alloca i64
  %l63 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l65 = alloca %"compiler/typed:dropWalk"
  br label %start
start:
  br label %bb0
bb0:
  store ptr %a0, ptr %l1, !tbaa !29
  %t3 = ptrtoint ptr %v1 to i64
  store i64 %t3, ptr %l17, !tbaa !24
  %t4 = load i1, ptr @olang_2esole_2ecompiler_2ftyped_3adropWalk_2e1
  br i1 %t4, label %bb1, label %bb2
bb1:
  %t6 = call ptr @__olang_region_make(ptr %v1)
  %t7 = ptrtoint ptr %t6 to i64
  store i64 %t7, ptr %l17, !tbaa !24
  br label %bb2
bb2:
  %t8 = load i64, ptr %l17
  %t9 = inttoptr i64 %t8 to ptr
  %t10 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e(ptr %t9)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t10, ptr %l19
  br label %bb3
bb3:
  %t11 = load i1, ptr @olang_2esole_2ecompiler_2ftyped_3adropWalk_2e1
  br i1 %t11, label %bb4, label %bb5
bb4:
  %t13 = load i64, ptr %l17
  %t14 = inttoptr i64 %t13 to ptr
  %t15 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l19, i32 0, i32 2
  %t16 = load { i64, ptr }, ptr %t15
  %t17 = extractvalue { i64, ptr } %t16, 1
  %t18 = call ptr @__olang_region_or(ptr %t17, ptr null)
  %t19 = icmp ne ptr %t18, null
  %t20 = select i1 %t19, ptr %t18, ptr null
  %t21 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l19, i32 0, i32 1
  %t22 = load { i64, ptr }, ptr %t21
  %t23 = extractvalue { i64, ptr } %t22, 1
  %t24 = call ptr @__olang_region_or(ptr %t23, ptr null)
  %t25 = icmp ne ptr %t24, null
  %t26 = select i1 %t25, ptr %t24, ptr %t20
  %t27 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l19, i32 0, i32 0
  %t28 = load { i64, ptr }, ptr %t27
  %t29 = extractvalue { i64, ptr } %t28, 1
  %t30 = call ptr @__olang_region_or(ptr %t29, ptr null)
  %t31 = icmp ne ptr %t30, null
  %t32 = select i1 %t31, ptr %t30, ptr %t26
  %t33 = icmp eq ptr %t32, %t14
  call void @__olang_region_settle(ptr %t14, i1 %t33)
  br label %bb5
bb5:
  %t34 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l19
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t34, ptr %l2
  %t35 = ptrtoint ptr %v1 to i64
  store i64 %t35, ptr %l21, !tbaa !24
  %t36 = load i1, ptr @olang_2esole_2ecompiler_2ftyped_3adropWalk_2e2
  br i1 %t36, label %bb6, label %bb7
bb6:
  %t38 = call ptr @__olang_region_make(ptr %v1)
  %t39 = ptrtoint ptr %t38 to i64
  store i64 %t39, ptr %l21, !tbaa !24
  br label %bb7
bb7:
  %t40 = load i64, ptr %l21
  %t41 = inttoptr i64 %t40 to ptr
  %t42 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cBool_3e_2ector(ptr %t41, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t42, ptr %l23
  br label %bb8
bb8:
  %t43 = load i1, ptr @olang_2esole_2ecompiler_2ftyped_3adropWalk_2e2
  br i1 %t43, label %bb9, label %bb10
bb9:
  %t45 = load i64, ptr %l21
  %t46 = inttoptr i64 %t45 to ptr
  %t47 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l23, i32 0, i32 0
  %t48 = load { i64, ptr }, ptr %t47
  %t49 = extractvalue { i64, ptr } %t48, 1
  %t50 = call ptr @__olang_region_or(ptr %t49, ptr null)
  %t51 = icmp ne ptr %t50, null
  %t52 = select i1 %t51, ptr %t50, ptr null
  %t53 = icmp eq ptr %t52, %t46
  call void @__olang_region_settle(ptr %t46, i1 %t53)
  br label %bb10
bb10:
  %t54 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l23
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t54, ptr %l3
  store i1 false, ptr %l4, !tbaa !21
  store i64 0, ptr %l5, !tbaa !24
  %t55 = ptrtoint ptr %v1 to i64
  store i64 %t55, ptr %l25, !tbaa !24
  %t56 = load i1, ptr @olang_2esole_2ecompiler_2ftyped_3adropWalk_2e5
  br i1 %t56, label %bb11, label %bb12
bb11:
  %t58 = call ptr @__olang_region_make(ptr %v1)
  %t59 = ptrtoint ptr %t58 to i64
  store i64 %t59, ptr %l25, !tbaa !24
  br label %bb12
bb12:
  %t60 = load i64, ptr %l25
  %t61 = inttoptr i64 %t60 to ptr
  %t62 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %t61, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t62, ptr %l27
  br label %bb13
bb13:
  %t63 = load i1, ptr @olang_2esole_2ecompiler_2ftyped_3adropWalk_2e5
  br i1 %t63, label %bb14, label %bb15
bb14:
  %t65 = load i64, ptr %l25
  %t66 = inttoptr i64 %t65 to ptr
  %t67 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l27, i32 0, i32 0
  %t68 = load { i64, ptr }, ptr %t67
  %t69 = extractvalue { i64, ptr } %t68, 1
  %t70 = call ptr @__olang_region_or(ptr %t69, ptr null)
  %t71 = icmp ne ptr %t70, null
  %t72 = select i1 %t71, ptr %t70, ptr null
  %t73 = icmp eq ptr %t72, %t66
  call void @__olang_region_settle(ptr %t66, i1 %t73)
  br label %bb15
bb15:
  %t74 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l27
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t74, ptr %l6
  %t75 = ptrtoint ptr %v1 to i64
  store i64 %t75, ptr %l29, !tbaa !24
  %t76 = load i1, ptr @olang_2esole_2ecompiler_2ftyped_3adropWalk_2e6
  br i1 %t76, label %bb16, label %bb17
bb16:
  %t78 = call ptr @__olang_region_make(ptr %v1)
  %t79 = ptrtoint ptr %t78 to i64
  store i64 %t79, ptr %l29, !tbaa !24
  br label %bb17
bb17:
  %t80 = load i64, ptr %l29
  %t81 = inttoptr i64 %t80 to ptr
  %t82 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %t81, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t82, ptr %l31
  br label %bb18
bb18:
  %t83 = load i1, ptr @olang_2esole_2ecompiler_2ftyped_3adropWalk_2e6
  br i1 %t83, label %bb19, label %bb20
bb19:
  %t85 = load i64, ptr %l29
  %t86 = inttoptr i64 %t85 to ptr
  %t87 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l31, i32 0, i32 0
  %t88 = load { i64, ptr }, ptr %t87
  %t89 = extractvalue { i64, ptr } %t88, 1
  %t90 = call ptr @__olang_region_or(ptr %t89, ptr null)
  %t91 = icmp ne ptr %t90, null
  %t92 = select i1 %t91, ptr %t90, ptr null
  %t93 = icmp eq ptr %t92, %t86
  call void @__olang_region_settle(ptr %t86, i1 %t93)
  br label %bb20
bb20:
  %t94 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l31
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t94, ptr %l7
  %t95 = ptrtoint ptr %v1 to i64
  store i64 %t95, ptr %l33, !tbaa !24
  %t96 = load i1, ptr @olang_2esole_2ecompiler_2ftyped_3adropWalk_2e7
  br i1 %t96, label %bb21, label %bb22
bb21:
  %t98 = call ptr @__olang_region_make(ptr %v1)
  %t99 = ptrtoint ptr %t98 to i64
  store i64 %t99, ptr %l33, !tbaa !24
  br label %bb22
bb22:
  %t100 = load i64, ptr %l33
  %t101 = inttoptr i64 %t100 to ptr
  %t102 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aBlockId_3e_2ector(ptr %t101, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t102, ptr %l35
  br label %bb23
bb23:
  %t103 = load i1, ptr @olang_2esole_2ecompiler_2ftyped_3adropWalk_2e7
  br i1 %t103, label %bb24, label %bb25
bb24:
  %t105 = load i64, ptr %l33
  %t106 = inttoptr i64 %t105 to ptr
  %t107 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l35, i32 0, i32 0
  %t108 = load { i64, ptr }, ptr %t107
  %t109 = extractvalue { i64, ptr } %t108, 1
  %t110 = call ptr @__olang_region_or(ptr %t109, ptr null)
  %t111 = icmp ne ptr %t110, null
  %t112 = select i1 %t111, ptr %t110, ptr null
  %t113 = icmp eq ptr %t112, %t106
  call void @__olang_region_settle(ptr %t106, i1 %t113)
  br label %bb25
bb25:
  %t114 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l35
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t114, ptr %l8
  %t115 = ptrtoint ptr %v1 to i64
  store i64 %t115, ptr %l37, !tbaa !24
  %t116 = load i1, ptr @olang_2esole_2ecompiler_2ftyped_3adropWalk_2e8
  br i1 %t116, label %bb26, label %bb27
bb26:
  %t118 = call ptr @__olang_region_make(ptr %v1)
  %t119 = ptrtoint ptr %t118 to i64
  store i64 %t119, ptr %l37, !tbaa !24
  br label %bb27
bb27:
  %t120 = load i64, ptr %l37
  %t121 = inttoptr i64 %t120 to ptr
  %t122 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %t121, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t122, ptr %l39
  br label %bb28
bb28:
  %t123 = load i1, ptr @olang_2esole_2ecompiler_2ftyped_3adropWalk_2e8
  br i1 %t123, label %bb29, label %bb30
bb29:
  %t125 = load i64, ptr %l37
  %t126 = inttoptr i64 %t125 to ptr
  %t127 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l39, i32 0, i32 0
  %t128 = load { i64, ptr }, ptr %t127
  %t129 = extractvalue { i64, ptr } %t128, 1
  %t130 = call ptr @__olang_region_or(ptr %t129, ptr null)
  %t131 = icmp ne ptr %t130, null
  %t132 = select i1 %t131, ptr %t130, ptr null
  %t133 = icmp eq ptr %t132, %t126
  call void @__olang_region_settle(ptr %t126, i1 %t133)
  br label %bb30
bb30:
  %t134 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l39
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t134, ptr %l9
  %t135 = ptrtoint ptr %v1 to i64
  store i64 %t135, ptr %l41, !tbaa !24
  %t136 = load i1, ptr @olang_2esole_2ecompiler_2ftyped_3adropWalk_2e9
  br i1 %t136, label %bb31, label %bb32
bb31:
  %t138 = call ptr @__olang_region_make(ptr %v1)
  %t139 = ptrtoint ptr %t138 to i64
  store i64 %t139, ptr %l41, !tbaa !24
  br label %bb32
bb32:
  %t140 = load i64, ptr %l41
  %t141 = inttoptr i64 %t140 to ptr
  %t142 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cBool_3e_2ector(ptr %t141, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t142, ptr %l43
  br label %bb33
bb33:
  %t143 = load i1, ptr @olang_2esole_2ecompiler_2ftyped_3adropWalk_2e9
  br i1 %t143, label %bb34, label %bb35
bb34:
  %t145 = load i64, ptr %l41
  %t146 = inttoptr i64 %t145 to ptr
  %t147 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l43, i32 0, i32 0
  %t148 = load { i64, ptr }, ptr %t147
  %t149 = extractvalue { i64, ptr } %t148, 1
  %t150 = call ptr @__olang_region_or(ptr %t149, ptr null)
  %t151 = icmp ne ptr %t150, null
  %t152 = select i1 %t151, ptr %t150, ptr null
  %t153 = icmp eq ptr %t152, %t146
  call void @__olang_region_settle(ptr %t146, i1 %t153)
  br label %bb35
bb35:
  %t154 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l43
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t154, ptr %l10
  %t155 = ptrtoint ptr %v1 to i64
  store i64 %t155, ptr %l45, !tbaa !24
  %t156 = load i1, ptr @olang_2esole_2ecompiler_2ftyped_3adropWalk_2e10
  br i1 %t156, label %bb36, label %bb37
bb36:
  %t158 = call ptr @__olang_region_make(ptr %v1)
  %t159 = ptrtoint ptr %t158 to i64
  store i64 %t159, ptr %l45, !tbaa !24
  br label %bb37
bb37:
  %t160 = load i64, ptr %l45
  %t161 = inttoptr i64 %t160 to ptr
  %t162 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cBool_3e_2ector(ptr %t161, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t162, ptr %l47
  br label %bb38
bb38:
  %t163 = load i1, ptr @olang_2esole_2ecompiler_2ftyped_3adropWalk_2e10
  br i1 %t163, label %bb39, label %bb40
bb39:
  %t165 = load i64, ptr %l45
  %t166 = inttoptr i64 %t165 to ptr
  %t167 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l47, i32 0, i32 0
  %t168 = load { i64, ptr }, ptr %t167
  %t169 = extractvalue { i64, ptr } %t168, 1
  %t170 = call ptr @__olang_region_or(ptr %t169, ptr null)
  %t171 = icmp ne ptr %t170, null
  %t172 = select i1 %t171, ptr %t170, ptr null
  %t173 = icmp eq ptr %t172, %t166
  call void @__olang_region_settle(ptr %t166, i1 %t173)
  br label %bb40
bb40:
  %t174 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l47
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t174, ptr %l11
  %t175 = ptrtoint ptr %v1 to i64
  store i64 %t175, ptr %l49, !tbaa !24
  %t176 = load i1, ptr @olang_2esole_2ecompiler_2ftyped_3adropWalk_2e11
  br i1 %t176, label %bb41, label %bb42
bb41:
  %t178 = call ptr @__olang_region_make(ptr %v1)
  %t179 = ptrtoint ptr %t178 to i64
  store i64 %t179, ptr %l49, !tbaa !24
  br label %bb42
bb42:
  %t180 = load i64, ptr %l49
  %t181 = inttoptr i64 %t180 to ptr
  %t182 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cBool_3e_2ector(ptr %t181, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t182, ptr %l51
  br label %bb43
bb43:
  %t183 = load i1, ptr @olang_2esole_2ecompiler_2ftyped_3adropWalk_2e11
  br i1 %t183, label %bb44, label %bb45
bb44:
  %t185 = load i64, ptr %l49
  %t186 = inttoptr i64 %t185 to ptr
  %t187 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l51, i32 0, i32 0
  %t188 = load { i64, ptr }, ptr %t187
  %t189 = extractvalue { i64, ptr } %t188, 1
  %t190 = call ptr @__olang_region_or(ptr %t189, ptr null)
  %t191 = icmp ne ptr %t190, null
  %t192 = select i1 %t191, ptr %t190, ptr null
  %t193 = icmp eq ptr %t192, %t186
  call void @__olang_region_settle(ptr %t186, i1 %t193)
  br label %bb45
bb45:
  %t194 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l51
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t194, ptr %l12
  %t195 = ptrtoint ptr %v1 to i64
  store i64 %t195, ptr %l53, !tbaa !24
  %t196 = load i1, ptr @olang_2esole_2ecompiler_2ftyped_3adropWalk_2e12
  br i1 %t196, label %bb46, label %bb47
bb46:
  %t198 = call ptr @__olang_region_make(ptr %v1)
  %t199 = ptrtoint ptr %t198 to i64
  store i64 %t199, ptr %l53, !tbaa !24
  br label %bb47
bb47:
  %t200 = load i64, ptr %l53
  %t201 = inttoptr i64 %t200 to ptr
  %t202 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %t201, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t202, ptr %l55
  br label %bb48
bb48:
  %t203 = load i1, ptr @olang_2esole_2ecompiler_2ftyped_3adropWalk_2e12
  br i1 %t203, label %bb49, label %bb50
bb49:
  %t205 = load i64, ptr %l53
  %t206 = inttoptr i64 %t205 to ptr
  %t207 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l55, i32 0, i32 0
  %t208 = load { i64, ptr }, ptr %t207
  %t209 = extractvalue { i64, ptr } %t208, 1
  %t210 = call ptr @__olang_region_or(ptr %t209, ptr null)
  %t211 = icmp ne ptr %t210, null
  %t212 = select i1 %t211, ptr %t210, ptr null
  %t213 = icmp eq ptr %t212, %t206
  call void @__olang_region_settle(ptr %t206, i1 %t213)
  br label %bb50
bb50:
  %t214 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l55
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t214, ptr %l13
  %t215 = ptrtoint ptr %v1 to i64
  store i64 %t215, ptr %l57, !tbaa !24
  %t216 = load i1, ptr @olang_2esole_2ecompiler_2ftyped_3adropWalk_2e13
  br i1 %t216, label %bb51, label %bb52
bb51:
  %t218 = call ptr @__olang_region_make(ptr %v1)
  %t219 = ptrtoint ptr %t218 to i64
  store i64 %t219, ptr %l57, !tbaa !24
  br label %bb52
bb52:
  %t220 = load i64, ptr %l57
  %t221 = inttoptr i64 %t220 to ptr
  %t222 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cBool_3e_2ector(ptr %t221, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t222, ptr %l59
  br label %bb53
bb53:
  %t223 = load i1, ptr @olang_2esole_2ecompiler_2ftyped_3adropWalk_2e13
  br i1 %t223, label %bb54, label %bb55
bb54:
  %t225 = load i64, ptr %l57
  %t226 = inttoptr i64 %t225 to ptr
  %t227 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l59, i32 0, i32 0
  %t228 = load { i64, ptr }, ptr %t227
  %t229 = extractvalue { i64, ptr } %t228, 1
  %t230 = call ptr @__olang_region_or(ptr %t229, ptr null)
  %t231 = icmp ne ptr %t230, null
  %t232 = select i1 %t231, ptr %t230, ptr null
  %t233 = icmp eq ptr %t232, %t226
  call void @__olang_region_settle(ptr %t226, i1 %t233)
  br label %bb55
bb55:
  %t234 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l59
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t234, ptr %l14
  %t235 = ptrtoint ptr %v1 to i64
  store i64 %t235, ptr %l61, !tbaa !24
  %t236 = load i1, ptr @olang_2esole_2ecompiler_2ftyped_3adropWalk_2e14
  br i1 %t236, label %bb56, label %bb57
bb56:
  %t238 = call ptr @__olang_region_make(ptr %v1)
  %t239 = ptrtoint ptr %t238 to i64
  store i64 %t239, ptr %l61, !tbaa !24
  br label %bb57
bb57:
  %t240 = load i64, ptr %l61
  %t241 = inttoptr i64 %t240 to ptr
  %t242 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e(ptr %t241)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t242, ptr %l63
  br label %bb58
bb58:
  %t243 = load i1, ptr @olang_2esole_2ecompiler_2ftyped_3adropWalk_2e14
  br i1 %t243, label %bb59, label %bb60
bb59:
  %t245 = load i64, ptr %l61
  %t246 = inttoptr i64 %t245 to ptr
  %t247 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l63, i32 0, i32 2
  %t248 = load { i64, ptr }, ptr %t247
  %t249 = extractvalue { i64, ptr } %t248, 1
  %t250 = call ptr @__olang_region_or(ptr %t249, ptr null)
  %t251 = icmp ne ptr %t250, null
  %t252 = select i1 %t251, ptr %t250, ptr null
  %t253 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l63, i32 0, i32 1
  %t254 = load { i64, ptr }, ptr %t253
  %t255 = extractvalue { i64, ptr } %t254, 1
  %t256 = call ptr @__olang_region_or(ptr %t255, ptr null)
  %t257 = icmp ne ptr %t256, null
  %t258 = select i1 %t257, ptr %t256, ptr %t252
  %t259 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l63, i32 0, i32 0
  %t260 = load { i64, ptr }, ptr %t259
  %t261 = extractvalue { i64, ptr } %t260, 1
  %t262 = call ptr @__olang_region_or(ptr %t261, ptr null)
  %t263 = icmp ne ptr %t262, null
  %t264 = select i1 %t263, ptr %t262, ptr %t258
  %t265 = icmp eq ptr %t264, %t246
  call void @__olang_region_settle(ptr %t246, i1 %t265)
  br label %bb60
bb60:
  %t266 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l63
  %t267 = getelementptr %"compiler/typed:dropWalk", ptr %l65, i32 0, i32 0
  %t268 = load ptr, ptr %l1, !tbaa !29
  store ptr %t268, ptr %t267, !tbaa !29
  %t269 = getelementptr %"compiler/typed:dropWalk", ptr %l65, i32 0, i32 1
  %t270 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l2
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t270, ptr %t269
  %t271 = getelementptr %"compiler/typed:dropWalk", ptr %l65, i32 0, i32 2
  %t272 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l3
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t272, ptr %t271
  %t273 = getelementptr %"compiler/typed:dropWalk", ptr %l65, i32 0, i32 3
  %t274 = load i1, ptr %l4, !tbaa !21
  store i1 %t274, ptr %t273, !tbaa !21
  %t275 = getelementptr %"compiler/typed:dropWalk", ptr %l65, i32 0, i32 4
  %t276 = load i64, ptr %l5, !tbaa !24
  store i64 %t276, ptr %t275, !tbaa !24
  %t277 = getelementptr %"compiler/typed:dropWalk", ptr %l65, i32 0, i32 5
  %t278 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l6
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t278, ptr %t277
  %t279 = getelementptr %"compiler/typed:dropWalk", ptr %l65, i32 0, i32 6
  %t280 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l7
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t280, ptr %t279
  %t281 = getelementptr %"compiler/typed:dropWalk", ptr %l65, i32 0, i32 7
  %t282 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l8
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t282, ptr %t281
  %t283 = getelementptr %"compiler/typed:dropWalk", ptr %l65, i32 0, i32 8
  %t284 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l9
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t284, ptr %t283
  %t285 = getelementptr %"compiler/typed:dropWalk", ptr %l65, i32 0, i32 9
  %t286 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l10
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t286, ptr %t285
  %t287 = getelementptr %"compiler/typed:dropWalk", ptr %l65, i32 0, i32 10
  %t288 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l11
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t288, ptr %t287
  %t289 = getelementptr %"compiler/typed:dropWalk", ptr %l65, i32 0, i32 11
  %t290 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l12
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t290, ptr %t289
  %t291 = getelementptr %"compiler/typed:dropWalk", ptr %l65, i32 0, i32 12
  %t292 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l13
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t292, ptr %t291
  %t293 = getelementptr %"compiler/typed:dropWalk", ptr %l65, i32 0, i32 13
  %t294 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l14
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t294, ptr %t293
  %t295 = getelementptr %"compiler/typed:dropWalk", ptr %l65, i32 0, i32 14
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t266, ptr %t295
  call void @llvm.memmove.p0.p0.i64(ptr %out, ptr %l65, i64 488, i1 false)
  br label %ret
ret:
  ret void
}

define dso_local %"compiler/typed:landState" @compiler_2ftyped_3alandState_2ector(ptr %v0, ptr %v1, { i64, ptr } %a0, i1 %a1) #0 {
entry:
  %rv = alloca %"compiler/typed:landState"
  br label %start
start:
  br label %bb0
bb0:
  %t6 = insertvalue %"compiler/typed:landState" undef, { i64, ptr } %a0, 0
  %t8 = insertvalue %"compiler/typed:landState" %t6, i1 %a1, 1
  store %"compiler/typed:landState" %t8, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/typed:landState", ptr %rv
  ret %"compiler/typed:landState" %rr
}

define dso_local %"compiler/typed:printer" @compiler_2ftyped_3aprinter_2ector(ptr %v0, ptr %v1, ptr %a0) #0 {
entry:
  %l1 = alloca ptr
  %l4 = alloca i64
  %l6 = alloca %"std/prelude/text:StringBuilder"
  %rv = alloca %"compiler/typed:printer"
  br label %start
start:
  br label %bb0
bb0:
  store ptr %a0, ptr %l1, !tbaa !29
  %t3 = ptrtoint ptr %v1 to i64
  store i64 %t3, ptr %l4, !tbaa !24
  %t4 = load i1, ptr @olang_2esole_2ecompiler_2ftyped_3aprinter_2e1
  br i1 %t4, label %bb1, label %bb2
bb1:
  %t6 = call ptr @__olang_region_make(ptr %v1)
  %t7 = ptrtoint ptr %t6 to i64
  store i64 %t7, ptr %l4, !tbaa !24
  br label %bb2
bb2:
  %t8 = load i64, ptr %l4
  %t9 = inttoptr i64 %t8 to ptr
  %t10 = call %"std/prelude/text:StringBuilder" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2ftext_3aStringBuilder(ptr %t9)
  store %"std/prelude/text:StringBuilder" %t10, ptr %l6
  br label %bb3
bb3:
  %t11 = load i1, ptr @olang_2esole_2ecompiler_2ftyped_3aprinter_2e1
  br i1 %t11, label %bb4, label %bb5
bb4:
  %t13 = load i64, ptr %l4
  %t14 = inttoptr i64 %t13 to ptr
  %t15 = getelementptr %"std/prelude/text:StringBuilder", ptr %l6, i32 0, i32 0
  %t16 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t15, i32 0, i32 0
  %t17 = load { i64, ptr }, ptr %t16
  %t18 = extractvalue { i64, ptr } %t17, 1
  %t19 = call ptr @__olang_region_or(ptr %t18, ptr null)
  %t20 = icmp ne ptr %t19, null
  %t21 = select i1 %t20, ptr %t19, ptr null
  %t22 = icmp eq ptr %t21, %t14
  call void @__olang_region_settle(ptr %t14, i1 %t22)
  br label %bb5
bb5:
  %t23 = load %"std/prelude/text:StringBuilder", ptr %l6
  %t24 = load ptr, ptr %l1, !tbaa !29
  %t25 = insertvalue %"compiler/typed:printer" undef, ptr %t24, 0
  %t27 = insertvalue %"compiler/typed:printer" %t25, %"std/prelude/text:StringBuilder" %t23, 1
  store %"compiler/typed:printer" %t27, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/typed:printer", ptr %rv
  ret %"compiler/typed:printer" %rr
}

declare void @__olang_check_failed(ptr) cold noreturn
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

declare ptr @__olang_scope_or(ptr, ptr)
declare void @__olang_bang_failed_plain(ptr) cold noreturn
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
@.d0 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"  " }>, align 8
@olang_2esole_2ecompiler_2ftyped_3aBody_2e5 = weak hidden constant i1 false
declare ptr @__olang_region_make(ptr) noinline
declare ptr @__olang_region_or(ptr, ptr)
declare void @__olang_region_settle(ptr, i1)
@olang_2esole_2ecompiler_2ftyped_3aBody_2e10 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2ftyped_3aBody_2e12 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2ftyped_3aBody_2e13 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2ftyped_3aBody_2e17 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2ftyped_3aBody_2e19 = weak hidden constant i1 false
declare void @llvm.memmove.p0.p0.i64(ptr, ptr, i64, i1)
@olang_2esole_2ecompiler_2ftyped_3aLastUses_2e1 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2ftyped_3aLastUses_2e2 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2ftyped_3aLastUses_2e6 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2ftyped_3aLastUses_2e7 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2ftyped_3aLastUses_2e8 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2ftyped_3aLastUses_2e9 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2ftyped_3aLastUses_2e10 = weak hidden constant i1 false
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

@olang_2esole_2ecompiler_2ftyped_3adropWalk_2e1 = weak hidden constant i1 false
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

@olang_2esole_2ecompiler_2ftyped_3adropWalk_2e2 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2ftyped_3adropWalk_2e5 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2ftyped_3adropWalk_2e6 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2ftyped_3adropWalk_2e7 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2ftyped_3adropWalk_2e8 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2ftyped_3adropWalk_2e9 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2ftyped_3adropWalk_2e10 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2ftyped_3adropWalk_2e11 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2ftyped_3adropWalk_2e12 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2ftyped_3adropWalk_2e13 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2ftyped_3adropWalk_2e14 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2ftyped_3aprinter_2e1 = weak hidden constant i1 false
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
@olang_loc_f6727531b73bc2ca_42cc985847dc16c6 = external constant [0 x i8]
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aBlockInfo_3e_2eLen__Hdc799a0fe091f8e84d50200d058b631d(ptr %v0, ptr %a0)
declare %"compiler/typed:BlockInfo" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aBlockInfo_3e_2eAt_3ccompiler_2ftyped_3aBlockInfo_3e(ptr %v0, ptr %a0, i64 %a1)
@G_2ecompiler_2ftyped_2eViewOther = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\00\00\00\00\00\00\00\40" }>, align 8
declare i64 @compiler_2ftyped_2eCalleeBody(ptr %v0, ptr %a0)
declare { i64, [2 x i64] } @compiler_2ftyped_2eScope_2eresult(ptr %v0, ptr %v1, ptr %a0, i32 %a1, { i64, ptr } %a2)
@G_2ecompiler_2ftyped_2eViewBits = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\3E\00\00\00\00\00\00\00" }>, align 8
declare i64 @std_2fprelude_2fnumber_2eI64_2eMin_3cI64_3e(i64 %a0, i64 %a1)
declare i1 @compiler_2ftyped_2eMovedArg(ptr %v0, ptr %a0)
declare ptr @compiler_2ftyped_2eCall_2efresh(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
@olang_loc_62af31c5105aaa5b_ddb95177f2bf45e7 = external constant [0 x i8]
@olang_loc_9fe0426b44bbec6b_25abfcb63d66fb57 = external constant [0 x i8]
declare void @compiler_2ftyped_2ecompiler_2ftyped_3aLandings_2eexpr(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %a0)
declare void @compiler_2ftyped_2ecompiler_2ftyped_3aLandings_2eholds(ptr %v0, ptr %a0, i64 %a1, i64 %a2)
declare void @compiler_2ftyped_2ecompiler_2ftyped_3aLandings_2eexprs(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eAt_3cBool_3e(ptr %v0, ptr %a0, i64 %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %a0, i64 %a1)
declare i1 @compiler_2ftyped_2ecompiler_2ftyped_3aLandings_2ewatched(ptr %v0, ptr %a0, i64 %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %a0, i64 %a1)
declare %"compiler/typed:landLoop" @compiler_2ftyped_3alandLoop_2ector(ptr %v0, i32 %a0, i64 %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3alandLoop_3e_2ePush_3ccompiler_2ftyped_3alandLoop_3e(ptr %v0, ptr %v1, ptr %a0, %"compiler/typed:landLoop" %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3alandLoop_3e_2eLen_3ccompiler_2ftyped_3alandLoop_3e(ptr %v0, ptr %a0)
declare %"compiler/typed:landLoop" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3alandLoop_3e_2eAt_3ccompiler_2ftyped_3alandLoop_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare void @compiler_2ftyped_2eorInto(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
declare { i32, %"compiler/typed:landLoop" } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3alandLoop_3e_2ePop_3ccompiler_2ftyped_3alandLoop_3e(ptr %v0, ptr %v1, ptr %a0)
declare void @compiler_2ftyped_2ecompiler_2ftyped_3aLandings_2erenewed(ptr %v0, ptr %a0, i64 %a1)
declare void @compiler_2ftyped_2ecompiler_2ftyped_3aLandings_2eplace(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare void @compiler_2ftyped_2ecompiler_2ftyped_3aLandings_2eifStmt(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare void @compiler_2ftyped_2ecompiler_2ftyped_3aLandings_2ejump(ptr %v0, ptr %a0, i32 %a1, i32 %a2)
declare %"compiler/typed:landState" @compiler_2ftyped_2ecompiler_2ftyped_3aLandings_2esave(ptr %v0, ptr %v1, ptr %a0)
declare void @compiler_2ftyped_2ecompiler_2ftyped_3aLandings_2erestore(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare void @compiler_2ftyped_2ecompiler_2ftyped_3aLandings_2elaterBlock(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
@olang_loc_c0d697227f379d2a_2050d061979ad5e = external constant [0 x i8]
declare void @compiler_2ftyped_2ecompiler_2ftyped_3aLastUses_2edeclare(ptr %v0, ptr %a0, i32 %a1)
declare void @compiler_2ftyped_2ecompiler_2ftyped_3aLastUses_2emention(ptr %v0, ptr %a0, i32 %a1)
declare void @compiler_2ftyped_2ecompiler_2ftyped_3aLastUses_2eBlock(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare void @compiler_2ftyped_2ecompiler_2ftyped_3aLastUses_2eplace(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
@olang_loc_198aad80d0550ab5_c06608159f163401 = external constant [0 x i8]
declare void @compiler_2ftyped_2ecompiler_2ftyped_3aLastUses_2eapart(ptr %v0, ptr %a0, i64 %a1, i64 %a2)
declare void @compiler_2ftyped_2ecompiler_2ftyped_3aLastUses_2ecopyOf(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare void @compiler_2ftyped_2ecompiler_2ftyped_3aLastUses_2estmts(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
@olang_loc_28655f8a56cf669d_dc60f62ebe04c639 = external constant [0 x i8]
declare void @compiler_2ftyped_2ecompiler_2ftyped_3aLastUses_2eclauses(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
@olang_loc_d36f57f073c6a2ff_232866ca740484ab = external constant [0 x i8]
@olang_loc_faea1712f2053751_ed9fc9ee56afb56d = external constant [0 x i8]
declare i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePermOf(ptr %v0, ptr %a0, i32 %a1)
@G_2ecompiler_2ftypes_2eWritable = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\01\00\00\00\00\00\00\00" }>, align 8
declare void @compiler_2ftyped_2ecompiler_2ftyped_3aLocalUses_2euse(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1, { i64, [1 x i64] } %a2, i1 %a3)
declare void @compiler_2ftyped_2ecompiler_2ftyped_3aLocalUses_2estmt(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1)
declare i64 @compiler_2ftyped_2ecompiler_2ftyped_3aLocalUses_2eexprRoot(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eSetAt_3cBool_3e(ptr %v0, ptr %a0, i64 %a1, i1 %a2)
@olang_loc_2dc1351d0e6e1c9_f66be85c5a6693dd = external constant [0 x i8]
declare void @compiler_2ftyped_2ecompiler_2ftyped_3aLocalUses_2eplaceExprs(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1)
declare i64 @compiler_2ftyped_2ecompiler_2ftyped_3aLocalUses_2erootOf(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i1 @compiler_2ftyped_2ecompiler_2ftyped_3aLocalUses_2escalarField(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1)
@olang_loc_e2587c8ec5c6f861_9513078f5b00021d = external constant [0 x i8]
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2eLen_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %a0)
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2eAt_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare { i64, [2 x i64] } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aScope_3e_2eAt_3ccompiler_2ftyped_3aScope_3e(ptr %v0, ptr %a0, i64 %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2ePush_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i64 @compiler_2ftyped_2edefName(i64 %a0, i64 %a1)
declare { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2eGet_3cI64_2c_20I64_3e(ptr %v0, ptr %a0, i64 %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aBlockId_3e_2eLen_3ccompiler_2ftyped_3aBlockId_3e(ptr %v0, ptr %a0)
declare i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aBlockId_3e_2eAt_3ccompiler_2ftyped_3aBlockId_3e(ptr %v0, ptr %a0, i64 %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eSetAt_3cI64_3e(ptr %v0, ptr %a0, i64 %a1, i64 %a2)
@olang_loc_996d81e577c7faae_f3b4a025cf703a = external constant [0 x i8]
declare %"compiler/typed:Local" @compiler_2ftyped_2ecompiler_2ftyped_3aBody_2eLocal(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsRef(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2ftyped_2eHoldsOwned(ptr %v0, ptr %a0, i32 %a1)
declare i64 @compiler_2ftyped_2ecompiler_2ftyped_3aViewWalk_2eparamBit(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare i64 @compiler_2ftyped_2ecompiler_2ftyped_3aViewWalk_2eRoots(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1)
declare i64 @compiler_2ftyped_2emeetRoots(i64 %a0, i64 %a1)
@olang_loc_dd6dc40ab752fedf_c333d42519625383 = external constant [0 x i8]
declare %"compiler/typed:Local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocal_3e_2eAt_3ccompiler_2ftyped_3aLocal_3e(ptr %v0, ptr %a0, i64 %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocalId_3e_2eLen_3ccompiler_2ftyped_3aLocalId_3e(ptr %v0, ptr %a0)
declare i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocalId_3e_2eAt_3ccompiler_2ftyped_3aLocalId_3e(ptr %v0, ptr %a0, i64 %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eLen_3cBool_3e(ptr %v0, ptr %a0)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2fvec_3aVec_3cI64_3e_3e__H7b6d4eff6fc9c3821aae8b284e12e095(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eHas_3cI64_3e(ptr %v0, ptr %a0, i64 %a1)
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2fvec_3aVec_3cI64_3e_3e__Hcb8bb928db85b876b7f95fc01a2ef730(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aBlockId_3e_2ePush_3ccompiler_2ftyped_3aBlockId_3e(ptr %v0, ptr %a0, i32 %a1)
declare { i32, i32 } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aBlockId_3e_2ePop_3ccompiler_2ftyped_3aBlockId_3e(ptr %v0, ptr %a0)
@olang_loc_ee90b64eb208d194_3ee30fc86ac20510 = external constant [0 x i8]
@olang_loc_adeeaf8d66de5e9_765e2536cff45a05 = external constant [0 x i8]
@olang_loc_735ea97a101db8a9_ef46e9a3f6738c65 = external constant [0 x i8]
@olang_loc_720a79c775c6eb2f_4e77fac288b2d7ab = external constant [0 x i8]
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %v0, i64 %a0)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2ftyped_2ecompiler_2ftyped_3aholdWalk_2etyped(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %a0, ptr %a1)
declare { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eToArray_3cI64_3e(ptr %v0, ptr %v1, ptr %a0)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2ftyped_2ecompiler_2ftyped_3aholdWalk_2eclosure(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1)
declare void @compiler_2ftyped_2eunion(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eReachesWrite(ptr %v0, ptr %a0, i32 %a1)
declare void @compiler_2ftyped_2ecompiler_2ftyped_3aholdWalk_2estore(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %a0, ptr %a1, ptr %a2)
declare i1 @compiler_2ftyped_2ecompiler_2ftyped_3aholdWalk_2eregistered(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1)
declare void @compiler_2ftyped_2ecompiler_2ftyped_3aholdWalk_2eregister(ptr %v0, ptr %a0, i64 %a1, %"compiler/source:Span" %a2)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2ftyped_2eone(ptr %v0, i64 %a0)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2ftyped_2ecompiler_2ftyped_3aholdWalk_2estorage(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %a0, ptr %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cArray_3cI64_3e_3e_2ePush_3cArray_3cI64_3e_3e(ptr %v0, ptr %a0, { i64, ptr } %a1)
declare { i32, { i64, ptr } } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cArray_3cI64_3e_3e_2ePop_3cArray_3cI64_3e_3e(ptr %v0, ptr %v1, ptr %a0)
@olang_loc_96ed7c0737fb007f_bcf36b4956f76d4b = external constant [0 x i8]
@olang_loc_eee80033d1164c3c_3495c4b80935428 = external constant [0 x i8]
@olang_loc_d52aab1c9c36d4_17087f4c711c4240 = external constant [0 x i8]
@olang_loc_fe54fd99e9902812_25d1b4e50c46612e = external constant [0 x i8]
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2ftyped_2ecompiler_2ftyped_3aholdWalk_2erefs(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %a0, ptr %a1)
declare void @compiler_2ftyped_2ecompiler_2ftyped_3aholdWalk_2eclauses(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, { i64, ptr } %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2fvec_3aVec_3cI64_3e_3e__Hb802ce24a60c51fc8ca388b849854e24(ptr %v0, ptr %a0)
declare { i32, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2fvec_3aVec_3cI64_3e_3e__Hcd1867a2c89de03c7af27b93b5b476d9(ptr %v0, ptr %v1, ptr %a0)
@olang_loc_5e6c689502ae97a3_4a93e9b8e1d69347 = external constant [0 x i8]
@olang_loc_b6b3adf054eb2e90_3f1400959d6043b4 = external constant [0 x i8]
@olang_loc_7b8fc3b9339208b8_2c51799eb4e60e7c = external constant [0 x i8]
@olang_loc_47bf7dbda354986_81bfc8ef2d8843ba = external constant [0 x i8]
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2fvec_3aVec_3cI64_3e_3e__H5a6912247a81ac1f46c16a43fcc4c44a(ptr %v0, ptr %v1, ptr %a0, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %a1)
@olang_loc_3ca74cad4df58772_2fc4655d37cc5656 = external constant [0 x i8]
declare i1 @compiler_2ftyped_2ecompiler_2ftyped_3aleaveWalk_2eblockLeaves(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i1 @compiler_2ftyped_2ecompiler_2ftyped_3aleaveWalk_2eexprsLeave(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare i1 @compiler_2ftyped_2ecompiler_2ftyped_3aleaveWalk_2eopenLeaves(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i1 @compiler_2ftyped_2ecompiler_2ftyped_3aleaveWalk_2eexprLeaves(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
@olang_loc_1807395182923f6f_ecff5ea7ed15d953 = external constant [0 x i8]
declare void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePushChar(ptr %v0, ptr %a0, i8 %a1)
declare i1 @compiler_2ftyped_2eexprBreaks(ptr %v0, ptr %a0, i32 %a1)
@olang_loc_fc8cc15dada93547_2e2c8c126dc2f08b = external constant [0 x i8]
declare i1 @compiler_2ftyped_2eplaceBreaks(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2ftyped_2eBreaksOut(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2ftyped_2eclausesBreak(ptr %v0, { i64, ptr } %a0, i32 %a1)
declare i1 @compiler_2ftyped_2etargetsBreak(ptr %v0, { i64, ptr } %a0, i32 %a1)
@olang_loc_ab0bd1a1cb525619_8191fed8583864ed = external constant [0 x i8]
@olang_loc_9bf6326dc96b231_1fb9b096f472b9bd = external constant [0 x i8]
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocalId_3e_2ector(ptr %v0, i64 %a0)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aScopeVar_3e_2ector(ptr %v0, i64 %a0)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocal_3e_2ector(ptr %v0, i64 %a0)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aBlockInfo_3e_2ector(ptr %v0, i64 %a0)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aSiteInfo_3e_2ector(ptr %v0, i64 %a0)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI32_3e_2ector(ptr %v0, i64 %a0)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2ector(ptr %v0, i64 %a0)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aBlockId_3e_2ector(ptr %v0, i64 %a0)
@olang_loc_f4630321a8cc4bc9_818e9b0c99e677c5 = external constant [0 x i8]
@olang_loc_ed49a40517443f7c_ed7a500f174a658 = external constant [0 x i8]
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cBool_3e_2ector(ptr %v0, i64 %a0)
declare %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2ector(ptr %v0)
declare %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2ector(ptr %v0)
declare %"std/prelude/text:StringBuilder" @std_2fprelude_2ftext_3aStringBuilder_2ector(ptr %v0)

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
