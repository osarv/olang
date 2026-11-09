source_filename = "compiler_typed-2.quick.ll"
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
%"compiler/typed:Join" = type { ptr, i1, { i64, ptr } }
%"compiler/typed:Block" = type { i32, { i64, ptr } }
%"compiler/typed:Call" = type { ptr, { i64, ptr }, i32, i1, i1 }
%"compiler/typed:DropHolding" = type { %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" = type { { i64, ptr }, i64, i64 }
%"compiler/typed:holdWalk" = type { ptr, ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/typed:Body" = type { i32, { i64, [2 x i64] }, i32, i64, %"compiler/source:Span", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i32, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/typed:Local" = type { i32, %"compiler/source:Span", i32, i32, i32, { i64, [1 x i64] }, i1, i1 }
%"compiler/typed:printer" = type { ptr, %"std/prelude/text:StringBuilder" }
%"std/prelude/text:StringBuilder" = type { %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/typed:landState" = type { { i64, ptr }, i1 }
%"compiler/typed:Landings" = type { { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64 }
%"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" = type { { i64, ptr }, { i64, ptr }, { i64, ptr }, i64, i64, i64 }
%"compiler/typed:Promote" = type { ptr, i32 }
%"compiler/typed:Make" = type { i32, i64, { i64, ptr }, ptr, i32, i32, i1 }
%"compiler/typed:Collect" = type { ptr, ptr, i32, i32, i1 }
%"compiler/typed:Slice" = type { ptr, ptr, ptr, i32 }
%"compiler/typed:Cond" = type { ptr, ptr, ptr }
%"compiler/typed:Seq" = type { { i64, ptr }, ptr, i1 }
%"compiler/typed:Try" = type { ptr, { i64, ptr }, i1, i1, i1 }
%"compiler/typed:Clause" = type { %"compiler/source:Span", { i64, ptr }, i1, ptr, { i64, ptr }, i64, i32 }
%"compiler/typed:Capture" = type { i32, ptr }
%"compiler/typed:Text" = type { { i64, ptr }, i32 }
%"compiler/typed:If" = type { ptr, ptr, ptr }
%"compiler/typed:landLoop" = type { i32, i64, { i64, ptr }, { i64, ptr }, i1, i1 }
%"compiler/typed:Match" = type { { i64, ptr }, { i64, ptr }, ptr, i1 }
%"compiler/typed:LastUses" = type { i64, { i64, ptr }, { i64, ptr }, i64, i64, i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"compiler/typed:Spawn" = type { { i64, ptr }, ptr, { i64, ptr }, i32 }
%"compiler/typed:TaskClause" = type { %"compiler/source:Span", { i64, ptr }, i1, ptr }
%"compiler/typed:LocalUses" = type { ptr, ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, i32 }
%"compiler/typed:Versions" = type { ptr, { i64, ptr }, { i64, ptr }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1 }
%"compiler/typed:Arm" = type { %"compiler/source:Span", { i64, ptr }, ptr, ptr, ptr }
%"compiler/typed:Alt" = type { ptr, { i64, ptr } }
%"compiler/typed:Bind" = type { i32, ptr }
%"compiler/typed:Elem" = type { ptr, ptr, i32 }
%"compiler/typed:Payload" = type { ptr, i64, i32 }
%"compiler/typed:dropWalk" = type { ptr, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"compiler/typed:leaveWalk" = type { %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
define dso_local ptr @compiler_2ftyped_2eBlock_2ewithin(ptr %v0, ptr %v1, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca ptr
  %l4 = alloca ptr
  %l5 = alloca ptr
  %l6 = alloca i1
  %l13 = alloca ptr
  %l14 = alloca i1
  %l21 = alloca ptr
  %l22 = alloca i1
  %rv = alloca ptr
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1, ptr %l5, !tbaa !29
  store i1 false, ptr %l6, !tbaa !21
  %t2 = load ptr, ptr %l5, !tbaa !29
  %t3 = icmp ne ptr %t2, null
  br i1 %t3, label %bb1, label %bb2
bb1:
  %t5 = load ptr, ptr %l5, !tbaa !29
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 17}
  %t8 = icmp eq i64 %t6, 11
  store i1 %t8, ptr %l6, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l6, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  %t10 = load ptr, ptr %l0, !tbaa !29
  %t12 = getelementptr { i64, [3 x i64] }, ptr %t10, i32 0, i32 1
  %t13 = getelementptr { %"compiler/source:Span", ptr }, ptr %t12, i32 0, i32 1
  %t14 = load ptr, ptr %t13
  store ptr %t14, ptr %l1, !tbaa !29
  br label %bb5
bb4:
  br label %bb6
bb5:
  %t16 = load ptr, ptr %l1, !tbaa !29
  store ptr %t16, ptr %l4, !tbaa !29
  br label %bb23
bb6:
  %t19 = load ptr, ptr %l0, !tbaa !29
  store ptr %t19, ptr %l13, !tbaa !29
  store i1 false, ptr %l14, !tbaa !21
  %t20 = load ptr, ptr %l13, !tbaa !29
  %t21 = icmp ne ptr %t20, null
  br i1 %t21, label %bb7, label %bb8
bb7:
  %t23 = load ptr, ptr %l13, !tbaa !29
  %t24 = load i64, ptr %t23, !range !{i64 0, i64 17}
  %t26 = icmp eq i64 %t24, 4
  store i1 %t26, ptr %l14, !tbaa !21
  br label %bb8
bb8:
  %t27 = load i1, ptr %l14, !tbaa !21
  br i1 %t27, label %bb9, label %bb10
bb9:
  %t28 = load ptr, ptr %l0, !tbaa !29
  %t30 = getelementptr { i64, [3 x i64] }, ptr %t28, i32 0, i32 1
  %t31 = getelementptr { %"compiler/source:Span", ptr, ptr }, ptr %t30, i32 0, i32 1
  %t32 = load ptr, ptr %t31
  store ptr %t32, ptr %l2, !tbaa !29
  br label %bb11
bb10:
  br label %bb12
bb11:
  %t34 = load ptr, ptr %l2, !tbaa !29
  store ptr %t34, ptr %l4, !tbaa !29
  br label %bb23
bb12:
  %t37 = load ptr, ptr %l0, !tbaa !29
  store ptr %t37, ptr %l21, !tbaa !29
  store i1 false, ptr %l22, !tbaa !21
  %t38 = load ptr, ptr %l21, !tbaa !29
  %t39 = icmp ne ptr %t38, null
  br i1 %t39, label %bb13, label %bb14
bb13:
  %t41 = load ptr, ptr %l21, !tbaa !29
  %t42 = load i64, ptr %t41, !range !{i64 0, i64 17}
  %t44 = icmp eq i64 %t42, 13
  store i1 %t44, ptr %l22, !tbaa !21
  br label %bb14
bb14:
  %t45 = load i1, ptr %l22, !tbaa !21
  br i1 %t45, label %bb15, label %bb16
bb15:
  %t46 = load ptr, ptr %l0, !tbaa !29
  %t48 = getelementptr { i64, [3 x i64] }, ptr %t46, i32 0, i32 1
  %t49 = getelementptr { %"compiler/source:Span", ptr }, ptr %t48, i32 0, i32 1
  %t50 = load ptr, ptr %t49
  store ptr %t50, ptr %l3, !tbaa !29
  br label %bb17
bb16:
  br label %bb18
bb17:
  %t52 = load ptr, ptr %l3, !tbaa !29
  %t54 = getelementptr %"compiler/typed:Join", ptr %t52, i32 0, i32 0
  %t55 = load ptr, ptr %t54, !tbaa !29
  store ptr %t55, ptr %l4, !tbaa !29
  br label %bb23
bb18:
  br i1 true, label %bb19, label %bb20
bb19:
  br label %bb21
bb20:
  br label %bb22
bb21:
  store ptr null, ptr %l4, !tbaa !29
  br label %bb23
bb22:
  call void @__olang_check_failed(ptr @olang_loc_98ffd35c6a6991db_b4b9a5fbdbb15627)
  unreachable
bb23:
  %t58 = load ptr, ptr %l4, !tbaa !29
  store ptr %t58, ptr %rv
  br label %ret
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

define dso_local i1 @compiler_2ftyped_2eBreaksOut(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l8 = alloca i1
  %rv = alloca i1
  store ptr %a0, ptr %l0
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
  %t13 = call i1 @compiler_2ftyped_2estmtsBreak(ptr %v0, { i64, ptr } %t9, i32 %a1)
  store i1 %t13, ptr %l8
  br label %bb4
bb4:
  %t14 = load i1, ptr %l8, !tbaa !21
  store i1 %t14, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i64 @compiler_2ftyped_2eCalledBody(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca i32
  %l4 = alloca ptr
  %l5 = alloca i1
  %l12 = alloca ptr
  %l13 = alloca i1
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
  %t8 = icmp eq i64 %t6, 6
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
  %t18 = getelementptr %"compiler/typed:Call", ptr %t16, i32 0, i32 0
  %t19 = load ptr, ptr %t18, !tbaa !29
  store ptr %t19, ptr %l2, !tbaa !29
  %t21 = load ptr, ptr %l2, !tbaa !29
  store ptr %t21, ptr %l12, !tbaa !29
  store i1 false, ptr %l13, !tbaa !21
  %t22 = load ptr, ptr %l12, !tbaa !29
  %t23 = icmp ne ptr %t22, null
  br i1 %t23, label %bb6, label %bb7
bb6:
  %t25 = load ptr, ptr %l12, !tbaa !29
  %t26 = load i64, ptr %t25, !range !{i64 0, i64 5}
  %t28 = icmp eq i64 %t26, 0
  store i1 %t28, ptr %l13, !tbaa !21
  br label %bb7
bb7:
  %t29 = load i1, ptr %l13, !tbaa !21
  br i1 %t29, label %bb8, label %bb9
bb8:
  %t30 = load ptr, ptr %l2, !tbaa !29
  %t32 = getelementptr { i64, [3 x i64] }, ptr %t30, i32 0, i32 1
  %t33 = getelementptr { i32 }, ptr %t32, i32 0, i32 0
  %t34 = load i32, ptr %t33
  store i32 %t34, ptr %l3, !tbaa !23
  br label %bb10
bb9:
  br label %bb11
bb10:
  %t36 = load i32, ptr %l3, !tbaa !23
  %t38 = sext i32 %t36 to i64
  store i64 %t38, ptr %rv
  br label %ret
bb11:
  br i1 true, label %bb12, label %bb13
bb12:
  br label %bb14
bb13:
  br label %bb15
bb14:
  store i64 -1, ptr %rv
  br label %ret
bb15:
  call void @__olang_check_failed(ptr @olang_loc_831440fdfc819328_dabfa81c01cf773c)
  unreachable
bb16:
  br i1 true, label %bb17, label %bb18
bb17:
  br label %bb19
bb18:
  br label %bb20
bb19:
  store i64 -1, ptr %rv
  br label %ret
bb20:
  call void @__olang_check_failed(ptr @olang_loc_7bdf3cb2fb8351f9_389183759a182ed)
  unreachable
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local void @compiler_2ftyped_2eDropHolding_2eDropHolds(ptr %out, ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1) #0 {
entry:
  %l4 = alloca %"compiler/typed:DropHolding"
  %t3 = alloca %"compiler/typed:DropHolding", align 8
  br label %start
start:
  br label %bb0
bb0:
  call void @compiler_2ftyped_2eDropHolding_2eholding(ptr %t3, ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, i1 false)
  call void @llvm.memmove.p0.p0.i64(ptr %l4, ptr %t3, i64 224, i1 false)
  br label %bb1
bb1:
  call void @llvm.memmove.p0.p0.i64(ptr %out, ptr %l4, i64 224, i1 false)
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2ftyped_2eDropHolding_2eholding(ptr %out, ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, i1 %a2) #0 {
entry:
  %l1 = alloca ptr
  %l2 = alloca i1
  %lp3 = alloca ptr
  %l4 = alloca ptr
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca %"compiler/typed:holdWalk"
  %l8 = alloca ptr
  %l9 = alloca i64
  %l11 = alloca ptr
  %l12 = alloca i64
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
  %l24 = alloca i64
  %l25 = alloca i64
  %l26 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l27 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l28 = alloca i64
  %l29 = alloca i64
  %l30 = alloca i64
  %l31 = alloca i64
  %l32 = alloca i64
  %l33 = alloca i64
  %l34 = alloca %"compiler/typed:DropHolding"
  %l38 = alloca %"compiler/typed:DropHolding"
  %l39 = alloca ptr
  %l48 = alloca i1
  %l50 = alloca i1
  %l53 = alloca i64
  %l55 = alloca i64
  %l60 = alloca i64
  %l61 = alloca ptr
  %l62 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l65 = alloca %"compiler/typed:DropHolding"
  %l68 = alloca %"compiler/typed:holdWalk"
  %l70 = alloca i64
  %l72 = alloca i64
  %l77 = alloca i64
  %l83 = alloca i64
  %l85 = alloca i64
  %l90 = alloca i32
  %l97 = alloca i64
  %l101 = alloca i64
  %l104 = alloca i64
  %l122 = alloca ptr
  %l123 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l139 = alloca i64
  %l143 = alloca i64
  %l146 = alloca i64
  %l164 = alloca ptr
  %l167 = alloca i64
  %l168 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l170 = alloca { i64, ptr }
  %l171 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l172 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l174 = alloca i64
  %l178 = alloca i64
  %l181 = alloca i64
  %l202 = alloca i1
  %l205 = alloca i32
  %l208 = alloca i32
  %l210 = alloca i1
  %l211 = alloca ptr
  %l214 = alloca i64
  %l215 = alloca i1
  %l216 = alloca ptr
  %l219 = alloca i64
  %l226 = alloca %"compiler/typed:DropHolding"
  %s0 = alloca %olang.scope
  %s4 = alloca %olang.scope
  %s13 = alloca %olang.scope
  %s19 = alloca %olang.scope
  %t1 = alloca %"compiler/typed:DropHolding", align 8
  %t71 = alloca %"compiler/typed:holdWalk", align 8
  store ptr %a1, ptr %l1
  store i1 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  call void @compiler_2ftyped_3aDropHolding_2ector(ptr %t1, ptr %v2)
  call void @llvm.memmove.p0.p0.i64(ptr %l34, ptr %t1, i64 224, i1 false)
  br label %bb1
bb1:
  %t2 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 224, i64 8)
  store ptr %t2, ptr %lp3
  %t3 = load ptr, ptr %lp3
  call void @llvm.memmove.p0.p0.i64(ptr %t3, ptr %l34, i64 224, i1 false)
  %t4 = load ptr, ptr %l1, !tbaa !29
  %t6 = getelementptr %"compiler/typed:Body", ptr %t4, i32 0, i32 11
  %t7 = load ptr, ptr %t6, !tbaa !29
  %t9 = icmp eq ptr %t7, null
  br i1 %t9, label %bb2, label %bb3
bb2:
  %t11 = load ptr, ptr %lp3
  call void @llvm.memmove.p0.p0.i64(ptr %l38, ptr %t11, i64 224, i1 false)
  call void @__olang_scope_close(ptr %s0)
  call void @llvm.memmove.p0.p0.i64(ptr %out, ptr %l38, i64 224, i1 false)
  br label %ret
bb3:
  br label %bb4
bb4:
  %t12 = load ptr, ptr %l1, !tbaa !29
  store ptr %t12, ptr %l39, !tbaa !29
  %t13 = load ptr, ptr %l1, !tbaa !29
  %t15 = getelementptr %"compiler/typed:Body", ptr %t13, i32 0, i32 11
  %t16 = load ptr, ptr %t15, !tbaa !29
  %t18 = icmp eq ptr %t16, null
  br i1 %t18, label %bb5, label %bb6
bb5:
  call void @__olang_check_failed(ptr @olang_loc_1d48dcdc24016ab9_795d1a331a4bc775)
  unreachable
bb6:
  br label %bb7
bb7:
  %t20 = load ptr, ptr %l1, !tbaa !29
  %t22 = getelementptr %"compiler/typed:Body", ptr %t20, i32 0, i32 11
  %t23 = load ptr, ptr %t22, !tbaa !29
  %t24 = load ptr, ptr %lp3
  %t25 = load ptr, ptr %l39, !tbaa !29
  call void @compiler_2ftyped_2efindHolders(ptr %v1, ptr %v1, ptr %v2, ptr %t25, ptr %t23, ptr %t24)
  br label %bb8
bb8:
  %t28 = load i1, ptr %l2, !tbaa !21
  %t30 = xor i1 %t28, true
  br i1 %t30, label %bb9, label %bb10
bb9:
  %t32 = load ptr, ptr %lp3
  %t33 = getelementptr %"compiler/typed:DropHolding", ptr %t32, i32 0, i32 1
  %t35 = call i1 @compiler_2ftyped_2esharedBlock(ptr %v2, ptr %t33)
  store i1 %t35, ptr %l50
  br label %bb11
bb10:
  store i1 false, ptr %l48, !tbaa !21
  br label %bb12
bb11:
  %t36 = load i1, ptr %l50, !tbaa !21
  %t37 = xor i1 %t36, true
  store i1 %t37, ptr %l48, !tbaa !21
  br label %bb12
bb12:
  %t39 = load i1, ptr %l48, !tbaa !21
  br i1 %t39, label %bb13, label %bb14
bb13:
  %t40 = load ptr, ptr %lp3
  %t41 = getelementptr %"compiler/typed:DropHolding", ptr %t40, i32 0, i32 0
  store ptr %t41, ptr %l4, !tbaa !29
  store i64 0, ptr %l5, !tbaa !24
  br label %bb15
bb14:
  br label %bb25
bb15:
  store %olang.scope zeroinitializer, ptr %s4
  %t43 = load i64, ptr %l5, !tbaa !24
  store i64 %t43, ptr %l53, !tbaa !24
  %t44 = load ptr, ptr %l4, !tbaa !29
  %t46 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v2, ptr %t44)
  store i64 %t46, ptr %l55
  br label %bb16
bb16:
  %t47 = load i64, ptr %l53, !tbaa !24
  %t48 = load i64, ptr %l55, !tbaa !24
  %t49 = icmp slt i64 %t47, %t48
  %t51 = xor i1 %t49, true
  br i1 %t51, label %bb17, label %bb18
bb17:
  call void @__olang_scope_close(ptr %s4)
  br label %bb24
bb18:
  br label %bb19
bb19:
  %t53 = load ptr, ptr %l4, !tbaa !29
  %t54 = load i64, ptr %l5, !tbaa !24
  %t57 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v2, ptr %t53, i64 %t54)
  store i64 %t57, ptr %l60
  br label %bb20
bb20:
  %t58 = load i64, ptr %l60, !tbaa !24
  store i64 %t58, ptr %l6, !tbaa !24
  %t59 = load ptr, ptr %lp3
  %t60 = getelementptr %"compiler/typed:DropHolding", ptr %t59, i32 0, i32 2
  store ptr %t60, ptr %l61, !tbaa !29
  %t61 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %s4, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t61, ptr %l62
  br label %bb21
bb21:
  %t62 = load ptr, ptr %l61, !tbaa !29
  %t63 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l62
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2fvec_3aVec_3cI64_3e_3e__H5a6912247a81ac1f46c16a43fcc4c44a(ptr %v2, ptr %s4, ptr %t62, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t63)
  br label %bb22
bb22:
  call void @__olang_scope_close(ptr %s4)
  br label %bb23
bb23:
  %t64 = load i64, ptr %l5, !tbaa !24
  %t66 = add i64 %t64, 1
  store i64 %t66, ptr %l5, !tbaa !24
  br label %bb15
bb24:
  %t68 = load ptr, ptr %lp3
  call void @llvm.memmove.p0.p0.i64(ptr %l65, ptr %t68, i64 224, i1 false)
  call void @__olang_scope_close(ptr %s0)
  call void @llvm.memmove.p0.p0.i64(ptr %out, ptr %l65, i64 224, i1 false)
  br label %ret
bb25:
  %t70 = load ptr, ptr %l1, !tbaa !29
  call void @compiler_2ftyped_3aholdWalk_2ector(ptr %t71, ptr %v0, ptr %v1, ptr %s0, ptr %a0, ptr %t70)
  call void @llvm.memmove.p0.p0.i64(ptr %l68, ptr %t71, i64 472, i1 false)
  br label %bb26
bb26:
  call void @llvm.memmove.p0.p0.i64(ptr %l7, ptr %l68, i64 472, i1 false)
  %t74 = load ptr, ptr %lp3
  %t75 = getelementptr %"compiler/typed:DropHolding", ptr %t74, i32 0, i32 0
  store ptr %t75, ptr %l8, !tbaa !29
  store i64 0, ptr %l9, !tbaa !24
  br label %bb27
bb27:
  %t77 = load i64, ptr %l9, !tbaa !24
  store i64 %t77, ptr %l70, !tbaa !24
  %t78 = load ptr, ptr %l8, !tbaa !29
  %t80 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v2, ptr %t78)
  store i64 %t80, ptr %l72
  br label %bb28
bb28:
  %t81 = load i64, ptr %l70, !tbaa !24
  %t82 = load i64, ptr %l72, !tbaa !24
  %t83 = icmp slt i64 %t81, %t82
  %t85 = xor i1 %t83, true
  br i1 %t85, label %bb29, label %bb30
bb29:
  br label %bb35
bb30:
  br label %bb31
bb31:
  %t87 = load ptr, ptr %l8, !tbaa !29
  %t88 = load i64, ptr %l9, !tbaa !24
  %t91 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v2, ptr %t87, i64 %t88)
  store i64 %t91, ptr %l77
  br label %bb32
bb32:
  %t92 = load i64, ptr %l77, !tbaa !24
  %t93 = getelementptr %"compiler/typed:holdWalk", ptr %l7, i32 0, i32 6
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %s0, ptr %t93, i64 %t92)
  br label %bb33
bb33:
  br label %bb34
bb34:
  %t97 = load i64, ptr %l9, !tbaa !24
  %t99 = add i64 %t97, 1
  store i64 %t99, ptr %l9, !tbaa !24
  br label %bb27
bb35:
  %t101 = load ptr, ptr %lp3
  %t102 = getelementptr %"compiler/typed:DropHolding", ptr %t101, i32 0, i32 1
  store ptr %t102, ptr %l11, !tbaa !29
  store i64 0, ptr %l12, !tbaa !24
  br label %bb36
bb36:
  %t104 = load i64, ptr %l12, !tbaa !24
  store i64 %t104, ptr %l83, !tbaa !24
  %t105 = load ptr, ptr %l11, !tbaa !29
  %t107 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aBlockId_3e_2eLen_3ccompiler_2ftyped_3aBlockId_3e(ptr %v2, ptr %t105)
  store i64 %t107, ptr %l85
  br label %bb37
bb37:
  %t108 = load i64, ptr %l83, !tbaa !24
  %t109 = load i64, ptr %l85, !tbaa !24
  %t110 = icmp slt i64 %t108, %t109
  %t112 = xor i1 %t110, true
  br i1 %t112, label %bb38, label %bb39
bb38:
  br label %bb44
bb39:
  br label %bb40
bb40:
  %t114 = load ptr, ptr %l11, !tbaa !29
  %t115 = load i64, ptr %l12, !tbaa !24
  %t118 = call i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aBlockId_3e_2eAt_3ccompiler_2ftyped_3aBlockId_3e(ptr %v2, ptr %t114, i64 %t115)
  store i32 %t118, ptr %l90
  br label %bb41
bb41:
  %t119 = load i32, ptr %l90, !tbaa !23
  %t120 = getelementptr %"compiler/typed:holdWalk", ptr %l7, i32 0, i32 7
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aBlockId_3e_2ePush_3ccompiler_2ftyped_3aBlockId_3e(ptr %s0, ptr %t120, i32 %t119)
  br label %bb42
bb42:
  br label %bb43
bb43:
  %t124 = load i64, ptr %l12, !tbaa !24
  %t126 = add i64 %t124, 1
  store i64 %t126, ptr %l12, !tbaa !24
  br label %bb36
bb44:
  store i64 0, ptr %l14, !tbaa !24
  %t128 = load ptr, ptr %l1, !tbaa !29
  %t130 = getelementptr %"compiler/typed:Body", ptr %t128, i32 0, i32 7
  %t132 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocal_3e_2eLen_3ccompiler_2ftyped_3aLocal_3e(ptr %v1, ptr %t130)
  store i64 %t132, ptr %l97
  br label %bb45
bb45:
  %t133 = load i64, ptr %l97, !tbaa !24
  store i64 %t133, ptr %l15, !tbaa !24
  store i64 1, ptr %l16, !tbaa !24
  %t134 = load i64, ptr %l15, !tbaa !24
  %t135 = load i64, ptr %l14, !tbaa !24
  %t138 = icmp sgt i64 %t134, %t135
  br i1 %t138, label %bb46, label %bb47
bb46:
  %t140 = load i64, ptr %l16, !tbaa !24
  %t142 = icmp sgt i64 %t140, 0
  br i1 %t142, label %bb48, label %bb49
bb47:
  store i64 0, ptr %l101, !tbaa !24
  br label %bb51
bb48:
  %t144 = load i64, ptr %l15, !tbaa !24
  %t145 = load i64, ptr %l14, !tbaa !24
  %t148 = sub i64 %t144, %t145
  %t149 = load i64, ptr %l16, !tbaa !24
  %t152 = add i64 %t148, %t149
  %t154 = sub i64 %t152, 1
  %t155 = load i64, ptr %l16, !tbaa !24
  %t158 = sdiv i64 %t154, %t155
  store i64 %t158, ptr %l104, !tbaa !24
  br label %bb50
bb49:
  store i64 0, ptr %l104, !tbaa !24
  br label %bb50
bb50:
  %t160 = load i64, ptr %l104, !tbaa !24
  store i64 %t160, ptr %l101, !tbaa !24
  br label %bb51
bb51:
  %t161 = load i64, ptr %l101, !tbaa !24
  store i64 %t161, ptr %l17, !tbaa !24
  store i64 0, ptr %l18, !tbaa !24
  br label %bb52
bb52:
  store %olang.scope zeroinitializer, ptr %s13
  %t162 = load i64, ptr %l18, !tbaa !24
  %t163 = load i64, ptr %l17, !tbaa !24
  %t166 = icmp slt i64 %t162, %t163
  %t168 = xor i1 %t166, true
  br i1 %t168, label %bb53, label %bb54
bb53:
  call void @__olang_scope_close(ptr %s13)
  br label %bb59
bb54:
  br label %bb55
bb55:
  %t170 = load i64, ptr %l14, !tbaa !24
  %t171 = load i64, ptr %l18, !tbaa !24
  %t172 = load i64, ptr %l16, !tbaa !24
  %t175 = mul i64 %t171, %t172
  %t178 = add i64 %t170, %t175
  store i64 %t178, ptr %l19, !tbaa !24
  %t180 = getelementptr %"compiler/typed:holdWalk", ptr %l7, i32 0, i32 2
  store ptr %t180, ptr %l122, !tbaa !29
  %t181 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %s13, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t181, ptr %l123
  br label %bb56
bb56:
  %t182 = load ptr, ptr %l122, !tbaa !29
  %t183 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l123
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2fvec_3aVec_3cI64_3e_3e__H5a6912247a81ac1f46c16a43fcc4c44a(ptr %s0, ptr %s13, ptr %t182, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t183)
  br label %bb57
bb57:
  call void @__olang_scope_close(ptr %s13)
  br label %bb58
bb58:
  %t184 = load i64, ptr %l18, !tbaa !24
  %t186 = add i64 %t184, 1
  store i64 %t186, ptr %l18, !tbaa !24
  br label %bb52
bb59:
  br label %bb60
bb60:
  %t188 = getelementptr %"compiler/typed:holdWalk", ptr %l7, i32 0, i32 3
  store i1 false, ptr %t188, !tbaa !21
  %t189 = getelementptr %"compiler/typed:holdWalk", ptr %l7, i32 0, i32 13
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aSpan_3e_2eClear_3ccompiler_2fsource_3aSpan_3e(ptr %s0, ptr %t189)
  br label %bb61
bb61:
  %t191 = getelementptr %"compiler/typed:holdWalk", ptr %l7, i32 0, i32 14
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2fvec_3aVec_3cI64_3e_3e__H76000d29bd4678bab17d21d786d60caf(ptr %s0, ptr %t191)
  br label %bb62
bb62:
  %t193 = getelementptr %"compiler/typed:holdWalk", ptr %l7, i32 0, i32 15
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aBlockId_3e_2eClear_3ccompiler_2ftyped_3aBlockId_3e(ptr %s0, ptr %t193)
  br label %bb63
bb63:
  %t195 = getelementptr %"compiler/typed:holdWalk", ptr %l7, i32 0, i32 16
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2eClear_3ccompiler_2ftypes_3aTypeId_3e(ptr %s0, ptr %t195)
  br label %bb64
bb64:
  %t197 = load ptr, ptr %l1, !tbaa !29
  %t199 = getelementptr %"compiler/typed:Body", ptr %t197, i32 0, i32 11
  %t200 = load ptr, ptr %t199, !tbaa !29
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aholdWalk_2eblock(ptr %s0, ptr %v1, ptr %v0, ptr %v1, ptr %l7, ptr %t200)
  br label %bb65
bb65:
  %t203 = getelementptr %"compiler/typed:holdWalk", ptr %l7, i32 0, i32 3
  %t204 = load i1, ptr %t203, !tbaa !21
  %t206 = xor i1 %t204, true
  br i1 %t206, label %bb66, label %bb67
bb66:
  br label %bb70
bb67:
  br label %bb68
bb68:
  br label %bb69
bb69:
  br label %bb60
bb70:
  %t208 = load i1, ptr %l2, !tbaa !21
  br i1 %t208, label %bb71, label %bb72
bb71:
  %t210 = load ptr, ptr %lp3
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aholdWalk_2erefusals(ptr %s0, ptr %v2, ptr %v1, ptr %v0, ptr %l7, ptr %t210)
  br label %bb73
bb72:
  br label %bb74
bb73:
  br label %bb74
bb74:
  store i64 0, ptr %l20, !tbaa !24
  %t213 = load ptr, ptr %lp3
  %t214 = getelementptr %"compiler/typed:DropHolding", ptr %t213, i32 0, i32 0
  %t216 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v2, ptr %t214)
  store i64 %t216, ptr %l139
  br label %bb75
bb75:
  %t217 = load i64, ptr %l139, !tbaa !24
  store i64 %t217, ptr %l21, !tbaa !24
  store i64 1, ptr %l22, !tbaa !24
  %t218 = load i64, ptr %l21, !tbaa !24
  %t219 = load i64, ptr %l20, !tbaa !24
  %t222 = icmp sgt i64 %t218, %t219
  br i1 %t222, label %bb76, label %bb77
bb76:
  %t224 = load i64, ptr %l22, !tbaa !24
  %t226 = icmp sgt i64 %t224, 0
  br i1 %t226, label %bb78, label %bb79
bb77:
  store i64 0, ptr %l143, !tbaa !24
  br label %bb81
bb78:
  %t228 = load i64, ptr %l21, !tbaa !24
  %t229 = load i64, ptr %l20, !tbaa !24
  %t232 = sub i64 %t228, %t229
  %t233 = load i64, ptr %l22, !tbaa !24
  %t236 = add i64 %t232, %t233
  %t238 = sub i64 %t236, 1
  %t239 = load i64, ptr %l22, !tbaa !24
  %t242 = sdiv i64 %t238, %t239
  store i64 %t242, ptr %l146, !tbaa !24
  br label %bb80
bb79:
  store i64 0, ptr %l146, !tbaa !24
  br label %bb80
bb80:
  %t244 = load i64, ptr %l146, !tbaa !24
  store i64 %t244, ptr %l143, !tbaa !24
  br label %bb81
bb81:
  %t245 = load i64, ptr %l143, !tbaa !24
  store i64 %t245, ptr %l23, !tbaa !24
  store i64 0, ptr %l24, !tbaa !24
  br label %bb82
bb82:
  store %olang.scope zeroinitializer, ptr %s19
  %t246 = load i64, ptr %l24, !tbaa !24
  %t247 = load i64, ptr %l23, !tbaa !24
  %t250 = icmp slt i64 %t246, %t247
  %t252 = xor i1 %t250, true
  br i1 %t252, label %bb83, label %bb84
bb83:
  call void @__olang_scope_close(ptr %s19)
  br label %bb121
bb84:
  br label %bb85
bb85:
  %t254 = load i64, ptr %l20, !tbaa !24
  %t255 = load i64, ptr %l24, !tbaa !24
  %t256 = load i64, ptr %l22, !tbaa !24
  %t259 = mul i64 %t255, %t256
  %t262 = add i64 %t254, %t259
  store i64 %t262, ptr %l25, !tbaa !24
  store ptr %l7, ptr %l164, !tbaa !29
  %t264 = load ptr, ptr %lp3
  %t265 = getelementptr %"compiler/typed:DropHolding", ptr %t264, i32 0, i32 0
  %t266 = load i64, ptr %l25, !tbaa !24
  %t269 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v2, ptr %t265, i64 %t266)
  store i64 %t269, ptr %l167
  br label %bb86
bb86:
  %t270 = load i64, ptr %l167, !tbaa !24
  %t271 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2ftyped_2eone(ptr %s19, i64 %t270)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t271, ptr %l168
  br label %bb87
bb87:
  %t272 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l168
  %t273 = call ptr @__olang_scope_alloc_a(ptr %s19, i64 32, i64 8)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t272, ptr %t273
  %t275 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eToArray_3cI64_3e(ptr %s19, ptr %s19, ptr %t273)
  store { i64, ptr } %t275, ptr %l170
  br label %bb88
bb88:
  %t276 = load ptr, ptr %l164, !tbaa !29
  %t277 = load { i64, ptr }, ptr %l170, !tbaa !27
  %t278 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2ftyped_2ecompiler_2ftyped_3aholdWalk_2eclosure(ptr %s0, ptr %s19, ptr %s19, ptr %t276, { i64, ptr } %t277)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t278, ptr %l171
  br label %bb89
bb89:
  %t279 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l171
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t279, ptr %l26
  %t280 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %s19, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t280, ptr %l172
  br label %bb90
bb90:
  %t281 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l172
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t281, ptr %l27
  store i64 0, ptr %l28, !tbaa !24
  %t282 = load ptr, ptr %lp3
  %t283 = getelementptr %"compiler/typed:DropHolding", ptr %t282, i32 0, i32 0
  %t285 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v2, ptr %t283)
  store i64 %t285, ptr %l174
  br label %bb91
bb91:
  %t286 = load i64, ptr %l174, !tbaa !24
  store i64 %t286, ptr %l29, !tbaa !24
  store i64 1, ptr %l30, !tbaa !24
  %t287 = load i64, ptr %l29, !tbaa !24
  %t288 = load i64, ptr %l28, !tbaa !24
  %t291 = icmp sgt i64 %t287, %t288
  br i1 %t291, label %bb92, label %bb93
bb92:
  %t293 = load i64, ptr %l30, !tbaa !24
  %t295 = icmp sgt i64 %t293, 0
  br i1 %t295, label %bb94, label %bb95
bb93:
  store i64 0, ptr %l178, !tbaa !24
  br label %bb97
bb94:
  %t297 = load i64, ptr %l29, !tbaa !24
  %t298 = load i64, ptr %l28, !tbaa !24
  %t301 = sub i64 %t297, %t298
  %t302 = load i64, ptr %l30, !tbaa !24
  %t305 = add i64 %t301, %t302
  %t307 = sub i64 %t305, 1
  %t308 = load i64, ptr %l30, !tbaa !24
  %t311 = sdiv i64 %t307, %t308
  store i64 %t311, ptr %l181, !tbaa !24
  br label %bb96
bb95:
  store i64 0, ptr %l181, !tbaa !24
  br label %bb96
bb96:
  %t313 = load i64, ptr %l181, !tbaa !24
  store i64 %t313, ptr %l178, !tbaa !24
  br label %bb97
bb97:
  %t314 = load i64, ptr %l178, !tbaa !24
  store i64 %t314, ptr %l31, !tbaa !24
  store i64 0, ptr %l32, !tbaa !24
  br label %bb98
bb98:
  %t315 = load i64, ptr %l32, !tbaa !24
  %t316 = load i64, ptr %l31, !tbaa !24
  %t319 = icmp slt i64 %t315, %t316
  %t321 = xor i1 %t319, true
  br i1 %t321, label %bb99, label %bb100
bb99:
  br label %bb118
bb100:
  br label %bb101
bb101:
  %t323 = load i64, ptr %l28, !tbaa !24
  %t324 = load i64, ptr %l32, !tbaa !24
  %t325 = load i64, ptr %l30, !tbaa !24
  %t328 = mul i64 %t324, %t325
  %t331 = add i64 %t323, %t328
  store i64 %t331, ptr %l33, !tbaa !24
  %t333 = load i64, ptr %l33, !tbaa !24
  %t334 = load i64, ptr %l25, !tbaa !24
  %t337 = icmp ne i64 %t333, %t334
  br i1 %t337, label %bb102, label %bb103
bb102:
  %t339 = load ptr, ptr %lp3
  %t340 = getelementptr %"compiler/typed:DropHolding", ptr %t339, i32 0, i32 1
  %t341 = load i64, ptr %l33, !tbaa !24
  %t344 = call i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aBlockId_3e_2eAt_3ccompiler_2ftyped_3aBlockId_3e(ptr %v2, ptr %t340, i64 %t341)
  store i32 %t344, ptr %l205
  br label %bb104
bb103:
  store i1 false, ptr %l202, !tbaa !21
  br label %bb106
bb104:
  %t345 = load ptr, ptr %lp3
  %t346 = getelementptr %"compiler/typed:DropHolding", ptr %t345, i32 0, i32 1
  %t347 = load i64, ptr %l25, !tbaa !24
  %t350 = call i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aBlockId_3e_2eAt_3ccompiler_2ftyped_3aBlockId_3e(ptr %v2, ptr %t346, i64 %t347)
  store i32 %t350, ptr %l208
  br label %bb105
bb105:
  %t351 = load i32, ptr %l205, !tbaa !23
  %t352 = load i32, ptr %l208, !tbaa !23
  %t353 = icmp eq i32 %t351, %t352
  store i1 %t353, ptr %l202, !tbaa !21
  br label %bb106
bb106:
  %t355 = load i1, ptr %l202, !tbaa !21
  br i1 %t355, label %bb107, label %bb108
bb107:
  store ptr %l26, ptr %l211, !tbaa !29
  %t356 = load ptr, ptr %lp3
  %t357 = getelementptr %"compiler/typed:DropHolding", ptr %t356, i32 0, i32 0
  %t358 = load i64, ptr %l33, !tbaa !24
  %t361 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v2, ptr %t357, i64 %t358)
  store i64 %t361, ptr %l214
  br label %bb109
bb108:
  store i1 false, ptr %l210, !tbaa !21
  br label %bb111
bb109:
  %t362 = load ptr, ptr %l211, !tbaa !29
  %t363 = load i64, ptr %l214, !tbaa !24
  %t364 = call i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eHas_3cI64_3e(ptr %s19, ptr %t362, i64 %t363)
  store i1 %t364, ptr %l215
  br label %bb110
bb110:
  %t365 = load i1, ptr %l215, !tbaa !21
  store i1 %t365, ptr %l210, !tbaa !21
  br label %bb111
bb111:
  %t366 = load i1, ptr %l210, !tbaa !21
  br i1 %t366, label %bb112, label %bb113
bb112:
  store ptr %l27, ptr %l216, !tbaa !29
  %t367 = load ptr, ptr %lp3
  %t368 = getelementptr %"compiler/typed:DropHolding", ptr %t367, i32 0, i32 0
  %t369 = load i64, ptr %l33, !tbaa !24
  %t372 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v2, ptr %t368, i64 %t369)
  store i64 %t372, ptr %l219
  br label %bb114
bb113:
  br label %bb116
bb114:
  %t373 = load ptr, ptr %l216, !tbaa !29
  %t374 = load i64, ptr %l219, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %s19, ptr %t373, i64 %t374)
  br label %bb115
bb115:
  br label %bb116
bb116:
  br label %bb117
bb117:
  %t375 = load i64, ptr %l32, !tbaa !24
  %t377 = add i64 %t375, 1
  store i64 %t377, ptr %l32, !tbaa !24
  br label %bb98
bb118:
  %t379 = load ptr, ptr %lp3
  %t380 = getelementptr %"compiler/typed:DropHolding", ptr %t379, i32 0, i32 2
  %t381 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l27
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2fvec_3aVec_3cI64_3e_3e__H5a6912247a81ac1f46c16a43fcc4c44a(ptr %v2, ptr %s19, ptr %t380, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t381)
  br label %bb119
bb119:
  call void @__olang_scope_close(ptr %s19)
  br label %bb120
bb120:
  %t384 = load i64, ptr %l24, !tbaa !24
  %t386 = add i64 %t384, 1
  store i64 %t386, ptr %l24, !tbaa !24
  br label %bb82
bb121:
  %t388 = load ptr, ptr %lp3
  call void @llvm.memmove.p0.p0.i64(ptr %l226, ptr %t388, i64 224, i1 false)
  call void @__olang_scope_close(ptr %s0)
  call void @llvm.memmove.p0.p0.i64(ptr %out, ptr %l226, i64 224, i1 false)
  br label %ret
ret:
  ret void
}

define dso_local i1 @compiler_2ftyped_2eFreshTemp(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca ptr
  %l4 = alloca ptr
  %l5 = alloca i1
  %l10 = alloca ptr
  %l11 = alloca i1
  %l17 = alloca i1
  %l18 = alloca ptr
  %l19 = alloca i1
  %l25 = alloca i1
  %rv = alloca i1
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
  %t8 = icmp eq i64 %t6, 2
  store i1 %t8, ptr %l5, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l5, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  %t10 = load ptr, ptr %l0, !tbaa !29
  %t12 = getelementptr { i64, [5 x i64] }, ptr %t10, i32 0, i32 1
  %t13 = getelementptr { %"compiler/source:Span", i32, ptr, i32 }, ptr %t12, i32 0, i32 2
  %t14 = load ptr, ptr %t13
  store ptr %t14, ptr %l1, !tbaa !29
  br label %bb5
bb4:
  br label %bb18
bb5:
  %t16 = load ptr, ptr %l1, !tbaa !29
  store ptr %t16, ptr %l10, !tbaa !29
  store i1 false, ptr %l11, !tbaa !21
  %t17 = load ptr, ptr %l10, !tbaa !29
  %t18 = icmp ne ptr %t17, null
  br i1 %t18, label %bb6, label %bb7
bb6:
  %t20 = load ptr, ptr %l10, !tbaa !29
  %t21 = load i64, ptr %t20, !range !{i64 0, i64 8}
  %t23 = icmp eq i64 %t21, 6
  store i1 %t23, ptr %l11, !tbaa !21
  br label %bb7
bb7:
  %t24 = load i1, ptr %l11, !tbaa !21
  br i1 %t24, label %bb8, label %bb9
bb8:
  %t25 = load ptr, ptr %l1, !tbaa !29
  %t27 = getelementptr { i64, [4 x i64] }, ptr %t25, i32 0, i32 1
  %t28 = getelementptr { %"compiler/source:Span", i32, ptr, i32 }, ptr %t27, i32 0, i32 2
  %t29 = load ptr, ptr %t28
  store ptr %t29, ptr %l2, !tbaa !29
  br label %bb10
bb9:
  br label %bb12
bb10:
  %t31 = load ptr, ptr %l2, !tbaa !29
  %t33 = call i1 @compiler_2ftyped_2efreshValue(ptr %v0, ptr %t31)
  store i1 %t33, ptr %l17
  br label %bb11
bb11:
  %t34 = load i1, ptr %l17, !tbaa !21
  store i1 %t34, ptr %rv
  br label %ret
bb12:
  br i1 true, label %bb13, label %bb14
bb13:
  br label %bb15
bb14:
  br label %bb16
bb15:
  br label %bb17
bb16:
  call void @__olang_check_failed(ptr @olang_loc_bf16ba0368763d37_f19ef32b132443ab)
  unreachable
bb17:
  br label %bb30
bb18:
  %t35 = load ptr, ptr %l0, !tbaa !29
  store ptr %t35, ptr %l18, !tbaa !29
  store i1 false, ptr %l19, !tbaa !21
  %t36 = load ptr, ptr %l18, !tbaa !29
  %t37 = icmp ne ptr %t36, null
  br i1 %t37, label %bb19, label %bb20
bb19:
  %t39 = load ptr, ptr %l18, !tbaa !29
  %t40 = load i64, ptr %t39, !range !{i64 0, i64 18}
  %t42 = icmp eq i64 %t40, 17
  store i1 %t42, ptr %l19, !tbaa !21
  br label %bb20
bb20:
  %t43 = load i1, ptr %l19, !tbaa !21
  br i1 %t43, label %bb21, label %bb22
bb21:
  %t44 = load ptr, ptr %l0, !tbaa !29
  %t46 = getelementptr { i64, [5 x i64] }, ptr %t44, i32 0, i32 1
  %t47 = getelementptr { %"compiler/source:Span", i64, ptr }, ptr %t46, i32 0, i32 2
  %t48 = load ptr, ptr %t47
  store ptr %t48, ptr %l3, !tbaa !29
  br label %bb23
bb22:
  br label %bb25
bb23:
  %t50 = load ptr, ptr %l3, !tbaa !29
  %t52 = call i1 @compiler_2ftyped_2eFreshTemp(ptr %v0, ptr %t50)
  store i1 %t52, ptr %l25
  br label %bb24
bb24:
  %t53 = load i1, ptr %l25, !tbaa !21
  store i1 %t53, ptr %rv
  br label %ret
bb25:
  br i1 true, label %bb26, label %bb27
bb26:
  br label %bb28
bb27:
  br label %bb29
bb28:
  br label %bb30
bb29:
  call void @__olang_check_failed(ptr @olang_loc_af65136929bfae16_48f8be4437d6c6ea)
  unreachable
bb30:
  store i1 false, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i1 @compiler_2ftyped_2eMathExtern(ptr %v0, { i64, ptr } %a0, i64 %a1) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l2 = alloca ptr
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca { i64, ptr }
  %l20 = alloca i1
  %l21 = alloca i1
  %l26 = alloca i1
  %l27 = alloca i1
  %s2 = alloca %olang.scope
  %rv = alloca i1
  store { i64, ptr } %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store ptr @G_2ecompiler_2ftyped_2emathNames, ptr %l2
  store i64 0, ptr %l3, !tbaa !24
  %t2 = load ptr, ptr %l2
  store i64 31, ptr %l4, !tbaa !24
  br label %bb1
bb1:
  store %olang.scope zeroinitializer, ptr %s2
  %t5 = load i64, ptr %l3, !tbaa !24
  %t6 = load i64, ptr %l4, !tbaa !24
  %t9 = icmp slt i64 %t5, %t6
  %t11 = xor i1 %t9, true
  br i1 %t11, label %bb2, label %bb3
bb2:
  call void @__olang_scope_close(ptr %s2)
  br label %bb17
bb3:
  br label %bb4
bb4:
  %t13 = load i64, ptr %l3, !tbaa !24
  store i64 %t13, ptr %l5, !tbaa !24
  %t15 = load ptr, ptr %l2
  %t16 = load i64, ptr %l3, !tbaa !24
  %t19 = getelementptr [31 x { i64, ptr }], ptr %t15, i64 0, i64 %t16
  %t20 = load { i64, ptr }, ptr %t19, !tbaa !37
  store { i64, ptr } %t20, ptr %l6, !tbaa !27
  %t22 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t23 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t24 = load ptr, ptr @__olang_prog_scope
  %t27 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %t24, { i64, ptr } %t22, { i64, ptr } %t23)
  store i1 %t27, ptr %l20
  br label %bb5
bb5:
  %t28 = load i1, ptr %l20, !tbaa !21
  br i1 %t28, label %bb6, label %bb7
bb6:
  store i1 true, ptr %l21, !tbaa !21
  br label %bb9
bb7:
  %t29 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t30 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t32 = extractvalue { i64, ptr } %t30, 1
  %t33 = extractvalue { i64, ptr } %t30, 0
  %t34 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d0, i32 0, i32 1) }, 1
  %t35 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d0, i32 0, i32 1) }, 0
  %t36 = add i64 %t33, %t35
  %t37 = call ptr @__olang_scope_alloc(ptr %s2, i64 %t36)
  call void @olang_textcopy(ptr %t37, ptr %t32, i64 %t33)
  %t38 = getelementptr i8, ptr %t37, i64 %t33
  call void @olang_textcopy(ptr %t38, ptr %t34, i64 %t35)
  %t39 = insertvalue { i64, ptr } undef, i64 %t36, 0
  %t40 = insertvalue { i64, ptr } %t39, ptr %t37, 1
  %t42 = extractvalue { i64, ptr } %t40, 0
  %t43 = extractvalue { i64, ptr } %t40, 1
  %t44 = mul i64 %t42, 1
  %t45 = call ptr @__olang_scope_alloc(ptr %s2, i64 %t44)
  call void @llvm.memcpy.p0.p0.i64(ptr %t45, ptr %t43, i64 %t44, i1 false)
  %t46 = insertvalue { i64, ptr } undef, i64 %t42, 0
  %t47 = insertvalue { i64, ptr } %t46, ptr %t45, 1
  %t50 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s2, { i64, ptr } %t29, { i64, ptr } %t47)
  store i1 %t50, ptr %l26
  br label %bb8
bb8:
  %t51 = load i1, ptr %l26, !tbaa !21
  store i1 %t51, ptr %l21, !tbaa !21
  br label %bb9
bb9:
  %t52 = load i1, ptr %l21, !tbaa !21
  br i1 %t52, label %bb10, label %bb11
bb10:
  %t54 = load i64, ptr %l5, !tbaa !24
  %t56 = getelementptr [31 x i64], ptr @G_2ecompiler_2ftyped_2emathArity, i64 0, i64 %t54
  %t57 = load i64, ptr %t56, !tbaa !34
  %t60 = icmp eq i64 %a1, %t57
  store i1 %t60, ptr %l27, !tbaa !21
  br label %bb12
bb11:
  store i1 false, ptr %l27, !tbaa !21
  br label %bb12
bb12:
  %t62 = load i1, ptr %l27, !tbaa !21
  br i1 %t62, label %bb13, label %bb14
bb13:
  call void @__olang_scope_close(ptr %s2)
  store i1 true, ptr %rv
  br label %ret
bb14:
  br label %bb15
bb15:
  call void @__olang_scope_close(ptr %s2)
  br label %bb16
bb16:
  %t64 = load i64, ptr %l3, !tbaa !24
  %t66 = add i64 %t64, 1
  store i64 %t66, ptr %l3, !tbaa !24
  br label %bb1
bb17:
  store i1 false, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local { i64, [2 x i64] } @compiler_2ftyped_2eScope_2eresult(ptr %v0, ptr %v1, ptr %a0, i32 %a1, { i64, ptr } %a2) #0 {
entry:
  %l2 = alloca { i64, ptr }
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l14 = alloca i64
  %l17 = alloca i64
  %l35 = alloca { i64, ptr }
  %l43 = alloca { i64, [2 x i64] }
  %rv = alloca { i64, [2 x i64] }
  %t75 = alloca { i64, [2 x i64] }, align 8
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
  store i64 0, ptr %l14, !tbaa !24
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
  store i64 %t29, ptr %l17, !tbaa !24
  br label %bb5
bb4:
  store i64 0, ptr %l17, !tbaa !24
  br label %bb5
bb5:
  %t31 = load i64, ptr %l17, !tbaa !24
  store i64 %t31, ptr %l14, !tbaa !24
  br label %bb6
bb6:
  %t32 = load i64, ptr %l14, !tbaa !24
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
  br label %bb16
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
  store { i64, ptr } %t51, ptr %l35, !tbaa !27
  %t52 = load i64, ptr %l8, !tbaa !24
  %t54 = getelementptr { i64, ptr }, ptr %l35, i32 0, i32 1
  %t55 = load ptr, ptr %t54, !tbaa !27
  %t56 = getelementptr i64, ptr %t55, i64 %t52
  %t57 = load i64, ptr %t56, !tbaa !34
  %t58 = load i64, ptr @G_2ecompiler_2ftypes_2eResultVar, !tbaa !24
  %t61 = icmp eq i64 %t57, %t58
  br i1 %t61, label %bb11, label %bb12
bb11:
  %t65 = load i64, ptr %l8, !tbaa !24
  %t69 = call { i64, [2 x i64] } @compiler_2ftyped_2ecompiler_2ftyped_3aPlan_2ePassed(ptr %v0, ptr %a0, i32 %a1, i64 %t65)
  store { i64, [2 x i64] } %t69, ptr %l43
  br label %bb13
bb12:
  br label %bb14
bb13:
  %t70 = load { i64, [2 x i64] }, ptr %l43
  store { i64, [2 x i64] } %t70, ptr %rv
  br label %ret
bb14:
  br label %bb15
bb15:
  %t71 = load i64, ptr %l7, !tbaa !24
  %t73 = add i64 %t71, 1
  store i64 %t73, ptr %l7, !tbaa !24
  br label %bb7
bb16:
  store { i64, [2 x i64] } zeroinitializer, ptr %t75
  %t76 = getelementptr { i64, [2 x i64] }, ptr %t75, i32 0, i32 0
  store i64 0, ptr %t76
  %t77 = load { i64, [2 x i64] }, ptr %t75
  store { i64, [2 x i64] } %t77, ptr %rv
  br label %ret
ret:
  %rr = load { i64, [2 x i64] }, ptr %rv
  ret { i64, [2 x i64] } %rr
}

define dso_local i1 @compiler_2ftyped_2eViewsMoved(ptr %v0, ptr %a0, i64 %a1) #0 {
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
  %l20 = alloca i64
  %l24 = alloca i64
  %l27 = alloca i64
  %l46 = alloca i64
  %l50 = alloca i1
  %l52 = alloca { i64, ptr }
  %l55 = alloca i1
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load i64, ptr %l1, !tbaa !24
  %t3 = icmp sle i64 %t1, 0
  br i1 %t3, label %bb1, label %bb2
bb1:
  store i1 true, ptr %l10, !tbaa !21
  br label %bb3
bb2:
  %t5 = load i64, ptr %l1, !tbaa !24
  %t6 = load i64, ptr @G_2ecompiler_2ftyped_2eViewOther, !tbaa !24
  %t9 = and i64 %t5, %t6
  %t11 = icmp ne i64 %t9, 0
  store i1 %t11, ptr %l10, !tbaa !21
  br label %bb3
bb3:
  %t13 = load i1, ptr %l10, !tbaa !21
  br i1 %t13, label %bb4, label %bb5
bb4:
  store i1 false, ptr %rv
  br label %ret
bb5:
  br label %bb6
bb6:
  store i64 0, ptr %l2, !tbaa !24
  %t15 = load ptr, ptr %l0, !tbaa !29
  %t17 = getelementptr %"compiler/typed:Call", ptr %t15, i32 0, i32 1
  %t18 = load { i64, ptr }, ptr %t17, !tbaa !27
  %t20 = extractvalue { i64, ptr } %t18, 0
  %t21 = load i64, ptr @G_2ecompiler_2ftyped_2eViewBits, !tbaa !24
  %t24 = call i64 @std_2fprelude_2fnumber_2eI64_2eMin_3cI64_3e(i64 %t20, i64 %t21)
  store i64 %t24, ptr %l20
  br label %bb7
bb7:
  %t25 = load i64, ptr %l20, !tbaa !24
  store i64 %t25, ptr %l3, !tbaa !24
  store i64 1, ptr %l4, !tbaa !24
  %t26 = load i64, ptr %l3, !tbaa !24
  %t27 = load i64, ptr %l2, !tbaa !24
  %t30 = icmp sgt i64 %t26, %t27
  br i1 %t30, label %bb8, label %bb9
bb8:
  %t32 = load i64, ptr %l4, !tbaa !24
  %t34 = icmp sgt i64 %t32, 0
  br i1 %t34, label %bb10, label %bb11
bb9:
  store i64 0, ptr %l24, !tbaa !24
  br label %bb13
bb10:
  %t36 = load i64, ptr %l3, !tbaa !24
  %t37 = load i64, ptr %l2, !tbaa !24
  %t40 = sub i64 %t36, %t37
  %t41 = load i64, ptr %l4, !tbaa !24
  %t44 = add i64 %t40, %t41
  %t46 = sub i64 %t44, 1
  %t47 = load i64, ptr %l4, !tbaa !24
  %t50 = sdiv i64 %t46, %t47
  store i64 %t50, ptr %l27, !tbaa !24
  br label %bb12
bb11:
  store i64 0, ptr %l27, !tbaa !24
  br label %bb12
bb12:
  %t52 = load i64, ptr %l27, !tbaa !24
  store i64 %t52, ptr %l24, !tbaa !24
  br label %bb13
bb13:
  %t53 = load i64, ptr %l24, !tbaa !24
  store i64 %t53, ptr %l5, !tbaa !24
  store i64 0, ptr %l6, !tbaa !24
  br label %bb14
bb14:
  %t54 = load i64, ptr %l6, !tbaa !24
  %t55 = load i64, ptr %l5, !tbaa !24
  %t58 = icmp slt i64 %t54, %t55
  %t60 = xor i1 %t58, true
  br i1 %t60, label %bb15, label %bb16
bb15:
  br label %bb26
bb16:
  br label %bb17
bb17:
  %t62 = load i64, ptr %l2, !tbaa !24
  %t63 = load i64, ptr %l6, !tbaa !24
  %t64 = load i64, ptr %l4, !tbaa !24
  %t67 = mul i64 %t63, %t64
  %t70 = add i64 %t62, %t67
  store i64 %t70, ptr %l7, !tbaa !24
  %t72 = load i64, ptr %l1, !tbaa !24
  %t73 = load i64, ptr %l7, !tbaa !24
  store i64 %t73, ptr %l46, !tbaa !24
  %t74 = load i64, ptr %l46, !tbaa !24
  %t75 = load i64, ptr %l46, !tbaa !24
  %t76 = shl i64 1, %t75
  %t79 = and i64 %t72, %t76
  %t81 = icmp ne i64 %t79, 0
  br i1 %t81, label %bb18, label %bb19
bb18:
  %t83 = load ptr, ptr %l0, !tbaa !29
  %t85 = getelementptr %"compiler/typed:Call", ptr %t83, i32 0, i32 1
  %t86 = load { i64, ptr }, ptr %t85, !tbaa !27
  store { i64, ptr } %t86, ptr %l52, !tbaa !27
  %t87 = load i64, ptr %l7, !tbaa !24
  %t89 = getelementptr { i64, ptr }, ptr %l52, i32 0, i32 1
  %t90 = load ptr, ptr %t89, !tbaa !27
  %t91 = getelementptr ptr, ptr %t90, i64 %t87
  %t92 = load ptr, ptr %t91, !tbaa !39
  %t94 = call i1 @compiler_2ftyped_2eMovedArg(ptr %v0, ptr %t92)
  store i1 %t94, ptr %l55
  br label %bb20
bb19:
  store i1 false, ptr %l50, !tbaa !21
  br label %bb21
bb20:
  %t95 = load i1, ptr %l55, !tbaa !21
  %t96 = xor i1 %t95, true
  store i1 %t96, ptr %l50, !tbaa !21
  br label %bb21
bb21:
  %t98 = load i1, ptr %l50, !tbaa !21
  br i1 %t98, label %bb22, label %bb23
bb22:
  store i1 false, ptr %rv
  br label %ret
bb23:
  br label %bb24
bb24:
  br label %bb25
bb25:
  %t100 = load i64, ptr %l6, !tbaa !24
  %t102 = add i64 %t100, 1
  store i64 %t102, ptr %l6, !tbaa !24
  br label %bb14
bb26:
  store i1 true, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i1 @compiler_2ftyped_2ecalleeBreaks(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca i1
  %l4 = alloca ptr
  %l5 = alloca i1
  %l13 = alloca i1
  %l14 = alloca ptr
  %l15 = alloca i1
  %l18 = alloca ptr
  %l19 = alloca i1
  %l22 = alloca ptr
  %l23 = alloca i1
  %l26 = alloca ptr
  %l27 = alloca i1
  %rv = alloca i1
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
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 5}
  %t8 = icmp eq i64 %t6, 2
  store i1 %t8, ptr %l5, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l5, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  %t10 = load ptr, ptr %l0, !tbaa !29
  %t12 = getelementptr { i64, [3 x i64] }, ptr %t10, i32 0, i32 1
  %t13 = getelementptr { ptr }, ptr %t12, i32 0, i32 0
  %t14 = load ptr, ptr %t13
  store ptr %t14, ptr %l2, !tbaa !29
  br label %bb5
bb4:
  br label %bb7
bb5:
  %t16 = load ptr, ptr %l2, !tbaa !29
  %t21 = call i1 @compiler_2ftyped_2eexprBreaks(ptr %v0, ptr %t16, i32 %a1)
  store i1 %t21, ptr %l13
  br label %bb6
bb6:
  %t22 = load i1, ptr %l13, !tbaa !21
  store i1 %t22, ptr %l3, !tbaa !21
  br label %bb26
bb7:
  %t23 = load ptr, ptr %l0, !tbaa !29
  store ptr %t23, ptr %l14, !tbaa !29
  store i1 false, ptr %l15, !tbaa !21
  %t24 = load ptr, ptr %l14, !tbaa !29
  %t25 = icmp ne ptr %t24, null
  br i1 %t25, label %bb8, label %bb9
bb8:
  %t27 = load ptr, ptr %l14, !tbaa !29
  %t28 = load i64, ptr %t27, !range !{i64 0, i64 5}
  %t30 = icmp eq i64 %t28, 0
  store i1 %t30, ptr %l15, !tbaa !21
  br label %bb9
bb9:
  %t31 = load i1, ptr %l15, !tbaa !21
  br i1 %t31, label %bb10, label %bb11
bb10:
  br label %bb24
bb11:
  %t32 = load ptr, ptr %l0, !tbaa !29
  store ptr %t32, ptr %l18, !tbaa !29
  store i1 false, ptr %l19, !tbaa !21
  %t33 = load ptr, ptr %l18, !tbaa !29
  %t34 = icmp ne ptr %t33, null
  br i1 %t34, label %bb12, label %bb13
bb12:
  %t36 = load ptr, ptr %l18, !tbaa !29
  %t37 = load i64, ptr %t36, !range !{i64 0, i64 5}
  %t39 = icmp eq i64 %t37, 1
  store i1 %t39, ptr %l19, !tbaa !21
  br label %bb13
bb13:
  %t40 = load i1, ptr %l19, !tbaa !21
  br i1 %t40, label %bb14, label %bb15
bb14:
  br label %bb24
bb15:
  %t41 = load ptr, ptr %l0, !tbaa !29
  store ptr %t41, ptr %l22, !tbaa !29
  store i1 false, ptr %l23, !tbaa !21
  %t42 = load ptr, ptr %l22, !tbaa !29
  %t43 = icmp ne ptr %t42, null
  br i1 %t43, label %bb16, label %bb17
bb16:
  %t45 = load ptr, ptr %l22, !tbaa !29
  %t46 = load i64, ptr %t45, !range !{i64 0, i64 5}
  %t48 = icmp eq i64 %t46, 3
  store i1 %t48, ptr %l23, !tbaa !21
  br label %bb17
bb17:
  %t49 = load i1, ptr %l23, !tbaa !21
  br i1 %t49, label %bb18, label %bb19
bb18:
  br label %bb24
bb19:
  %t50 = load ptr, ptr %l0, !tbaa !29
  store ptr %t50, ptr %l26, !tbaa !29
  store i1 false, ptr %l27, !tbaa !21
  %t51 = load ptr, ptr %l26, !tbaa !29
  %t52 = icmp ne ptr %t51, null
  br i1 %t52, label %bb20, label %bb21
bb20:
  %t54 = load ptr, ptr %l26, !tbaa !29
  %t55 = load i64, ptr %t54, !range !{i64 0, i64 5}
  %t57 = icmp eq i64 %t55, 4
  store i1 %t57, ptr %l27, !tbaa !21
  br label %bb21
bb21:
  %t58 = load i1, ptr %l27, !tbaa !21
  br i1 %t58, label %bb22, label %bb23
bb22:
  br label %bb24
bb23:
  br label %bb25
bb24:
  store i1 false, ptr %l3, !tbaa !21
  br label %bb26
bb25:
  call void @__olang_check_failed(ptr @olang_loc_352016b8dfbaae41_4f83dc304b77dded)
  unreachable
bb26:
  %t59 = load i1, ptr %l3, !tbaa !21
  store i1 %t59, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i64 @compiler_2ftyped_2ecompiler_2ftyped_3aBody_2eInst(ptr %v0, ptr %a0) #0 {
entry:
  %l1 = alloca { i64, [2 x i64] }
  %l2 = alloca i64
  %l5 = alloca i64
  %rv = alloca i64
  br label %start
start:
  br label %bb0
bb0:
  %t3 = getelementptr %"compiler/typed:Body", ptr %a0, i32 0, i32 1
  %t4 = load { i64, [2 x i64] }, ptr %t3
  store { i64, [2 x i64] } %t4, ptr %l1
  %t6 = load { i64, [2 x i64] }, ptr %l1
  %t8 = extractvalue { i64, [2 x i64] } %t6, 0
  %t9 = icmp eq i64 %t8, 0
  br i1 %t9, label %bb1, label %bb2
bb1:
  %t11 = getelementptr { i64, [2 x i64] }, ptr %l1, i32 0, i32 1
  %t12 = getelementptr { i64 }, ptr %t11, i32 0, i32 0
  %t13 = load i64, ptr %t12
  store i64 %t13, ptr %l2, !tbaa !24
  br label %bb3
bb2:
  br label %bb4
bb3:
  %t15 = load i64, ptr %l2, !tbaa !24
  store i64 %t15, ptr %l5, !tbaa !24
  br label %bb9
bb4:
  br i1 true, label %bb5, label %bb6
bb5:
  br label %bb7
bb6:
  br label %bb8
bb7:
  store i64 -1, ptr %l5, !tbaa !24
  br label %bb9
bb8:
  call void @__olang_check_failed(ptr @olang_loc_3a838910fbaaf0b4_28daeb84482f7128)
  unreachable
bb9:
  %t17 = load i64, ptr %l5, !tbaa !24
  store i64 %t17, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local %"compiler/typed:Local" @compiler_2ftyped_2ecompiler_2ftyped_3aBody_2eLocal(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l6 = alloca %"compiler/typed:Local"
  %rv = alloca %"compiler/typed:Local"
  br label %start
start:
  br label %bb0
bb0:
  %t3 = getelementptr %"compiler/typed:Body", ptr %a0, i32 0, i32 7
  %t6 = sext i32 %a1 to i64
  %t9 = call %"compiler/typed:Local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocal_3e_2eAt_3ccompiler_2ftyped_3aLocal_3e(ptr %v0, ptr %t3, i64 %t6)
  store %"compiler/typed:Local" %t9, ptr %l6
  br label %bb1
bb1:
  %t10 = load %"compiler/typed:Local", ptr %l6
  store %"compiler/typed:Local" %t10, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/typed:Local", ptr %rv
  ret %"compiler/typed:Local" %rr
}

define dso_local { i64, ptr } @compiler_2ftyped_2ecompiler_2ftyped_3aBody_2ePrint(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca ptr
  %l4 = alloca %"compiler/typed:printer"
  %l6 = alloca ptr
  %l9 = alloca i64
  %l12 = alloca i64
  %l15 = alloca i64
  %l22 = alloca ptr
  %l30 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t3 = call %"compiler/typed:printer" @compiler_2ftyped_3aprinter_2ector(ptr %v1, ptr %s0, ptr %a1)
  store %"compiler/typed:printer" %t3, ptr %l4
  br label %bb1
bb1:
  %t4 = load %"compiler/typed:printer", ptr %l4
  %t5 = call ptr @__olang_scope_alloc_a(ptr %s0, i64 40, i64 8)
  store %"compiler/typed:printer" %t4, ptr %t5
  store ptr %t5, ptr %l2, !tbaa !29
  %t7 = load ptr, ptr %l2, !tbaa !29
  store ptr %t7, ptr %l6, !tbaa !29
  %t8 = load ptr, ptr %l0, !tbaa !29
  %t10 = getelementptr %"compiler/typed:Body", ptr %t8, i32 0, i32 7
  %t12 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocal_3e_2eLen_3ccompiler_2ftyped_3aLocal_3e(ptr %v0, ptr %t10)
  store i64 %t12, ptr %l9
  br label %bb2
bb2:
  %t13 = load ptr, ptr %l0, !tbaa !29
  %t15 = getelementptr %"compiler/typed:Body", ptr %t13, i32 0, i32 8
  %t17 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aBlockInfo_3e_2eLen__Hdc799a0fe091f8e84d50200d058b631d(ptr %v0, ptr %t15)
  store i64 %t17, ptr %l12
  br label %bb3
bb3:
  %t18 = load ptr, ptr %l0, !tbaa !29
  %t20 = getelementptr %"compiler/typed:Body", ptr %t18, i32 0, i32 9
  %t22 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aSiteInfo_3e_2eLen_3ccompiler_2ftyped_3aSiteInfo_3e(ptr %v0, ptr %t20)
  store i64 %t22, ptr %l15
  br label %bb4
bb4:
  %t23 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d1, i32 0, i32 1) }, 1
  %t24 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d1, i32 0, i32 1) }, 0
  %t25 = load i64, ptr %l9, !tbaa !24
  %t26 = call i64 @__olang_fmt_i64(ptr null, i64 %t25)
  %t27 = add i64 %t24, %t26
  %t28 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d2, i32 0, i32 1) }, 1
  %t29 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d2, i32 0, i32 1) }, 0
  %t30 = add i64 %t27, %t29
  %t31 = load i64, ptr %l12, !tbaa !24
  %t32 = call i64 @__olang_fmt_i64(ptr null, i64 %t31)
  %t33 = add i64 %t30, %t32
  %t34 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d3, i32 0, i32 1) }, 1
  %t35 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d3, i32 0, i32 1) }, 0
  %t36 = add i64 %t33, %t35
  %t37 = load i64, ptr %l15, !tbaa !24
  %t38 = call i64 @__olang_fmt_i64(ptr null, i64 %t37)
  %t39 = add i64 %t36, %t38
  %t40 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d4, i32 0, i32 1) }, 1
  %t41 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d4, i32 0, i32 1) }, 0
  %t42 = add i64 %t39, %t41
  %t43 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t42)
  call void @olang_textcopy(ptr %t43, ptr %t23, i64 %t24)
  %t44 = getelementptr i8, ptr %t43, i64 %t24
  %t45 = call i64 @__olang_fmt_i64(ptr %t44, i64 %t25)
  %t46 = getelementptr i8, ptr %t44, i64 %t26
  call void @olang_textcopy(ptr %t46, ptr %t28, i64 %t29)
  %t47 = getelementptr i8, ptr %t46, i64 %t29
  %t48 = call i64 @__olang_fmt_i64(ptr %t47, i64 %t31)
  %t49 = getelementptr i8, ptr %t47, i64 %t32
  call void @olang_textcopy(ptr %t49, ptr %t34, i64 %t35)
  %t50 = getelementptr i8, ptr %t49, i64 %t35
  %t51 = call i64 @__olang_fmt_i64(ptr %t50, i64 %t37)
  %t52 = getelementptr i8, ptr %t50, i64 %t38
  call void @olang_textcopy(ptr %t52, ptr %t40, i64 %t41)
  %t53 = insertvalue { i64, ptr } undef, i64 %t42, 0
  %t54 = insertvalue { i64, ptr } %t53, ptr %t43, 1
  %t56 = extractvalue { i64, ptr } %t54, 0
  %t57 = extractvalue { i64, ptr } %t54, 1
  %t58 = mul i64 %t56, 1
  %t59 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t58)
  call void @llvm.memcpy.p0.p0.i64(ptr %t59, ptr %t57, i64 %t58, i1 false)
  %t60 = insertvalue { i64, ptr } undef, i64 %t56, 0
  %t61 = insertvalue { i64, ptr } %t60, ptr %t59, 1
  %t62 = load ptr, ptr %l6, !tbaa !29
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aprinter_2eline(ptr %s0, ptr %s0, ptr %t62, i64 0, { i64, ptr } %t61)
  br label %bb5
bb5:
  %t64 = load ptr, ptr %l0, !tbaa !29
  %t66 = getelementptr %"compiler/typed:Body", ptr %t64, i32 0, i32 11
  %t67 = load ptr, ptr %t66, !tbaa !29
  %t69 = icmp eq ptr %t67, null
  %t71 = xor i1 %t69, true
  br i1 %t71, label %bb6, label %bb7
bb6:
  %t73 = load ptr, ptr %l2, !tbaa !29
  store ptr %t73, ptr %l22, !tbaa !29
  %t74 = load ptr, ptr %l0, !tbaa !29
  %t76 = getelementptr %"compiler/typed:Body", ptr %t74, i32 0, i32 11
  %t77 = load ptr, ptr %t76, !tbaa !29
  %t79 = icmp eq ptr %t77, null
  br i1 %t79, label %bb8, label %bb9
bb7:
  br label %bb12
bb8:
  call void @__olang_check_failed(ptr @olang_loc_b47e7a13871964ca_e65b2c3f8690a096)
  unreachable
bb9:
  br label %bb10
bb10:
  %t81 = load ptr, ptr %l0, !tbaa !29
  %t83 = getelementptr %"compiler/typed:Body", ptr %t81, i32 0, i32 11
  %t84 = load ptr, ptr %t83, !tbaa !29
  %t85 = load ptr, ptr %l22, !tbaa !29
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aprinter_2eblock(ptr %s0, ptr %v0, ptr %v1, ptr %t85, ptr %t84, i64 1)
  br label %bb11
bb11:
  br label %bb12
bb12:
  %t87 = load ptr, ptr %l2, !tbaa !29
  %t89 = getelementptr %"compiler/typed:printer", ptr %t87, i32 0, i32 1
  %t91 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %s0, ptr %v2, ptr %t89)
  store { i64, ptr } %t91, ptr %l30
  br label %bb13
bb13:
  call void @__olang_scope_close(ptr %s0)
  %t92 = load { i64, ptr }, ptr %l30, !tbaa !27
  store { i64, ptr } %t92, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local i1 @compiler_2ftyped_2ecompiler_2ftyped_3aDropHolding_2eHolds(ptr %v0, ptr %a0, i64 %a1, i64 %a2) #0 {
entry:
  %l0 = alloca ptr
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
  %l45 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l48 = alloca i1
  %rv = alloca i1
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store i64 0, ptr %l3, !tbaa !24
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/typed:DropHolding", ptr %t1, i32 0, i32 0
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
  %t53 = load ptr, ptr %l0, !tbaa !29
  %t55 = getelementptr %"compiler/typed:DropHolding", ptr %t53, i32 0, i32 0
  %t56 = load i64, ptr %l8, !tbaa !24
  %t59 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t55, i64 %t56)
  store i64 %t59, ptr %l39
  br label %bb12
bb12:
  %t61 = load i64, ptr %l39, !tbaa !24
  %t63 = icmp eq i64 %t61, %a1
  br i1 %t63, label %bb13, label %bb14
bb13:
  %t65 = load ptr, ptr %l0, !tbaa !29
  %t67 = getelementptr %"compiler/typed:DropHolding", ptr %t65, i32 0, i32 2
  %t68 = load i64, ptr %l8, !tbaa !24
  %t71 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2fvec_3aVec_3cI64_3e_3e__H7b6d4eff6fc9c3821aae8b284e12e095(ptr %v0, ptr %v0, ptr %t67, i64 %t68)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t71, ptr %l45
  br label %bb15
bb14:
  br label %bb17
bb15:
  %t75 = call i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eHas_3cI64_3e(ptr %v0, ptr %l45, i64 %a2)
  store i1 %t75, ptr %l48
  br label %bb16
bb16:
  %t76 = load i1, ptr %l48, !tbaa !21
  store i1 %t76, ptr %rv
  br label %ret
bb17:
  br label %bb18
bb18:
  %t77 = load i64, ptr %l7, !tbaa !24
  %t79 = add i64 %t77, 1
  store i64 %t79, ptr %l7, !tbaa !24
  br label %bb8
bb19:
  store i1 false, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local void @compiler_2ftyped_2ecompiler_2ftyped_3aLandings_2eexpr(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca %"compiler/source:Span"
  %l3 = alloca ptr
  %l4 = alloca %"compiler/source:Span"
  %l5 = alloca i32
  %l7 = alloca ptr
  %l8 = alloca ptr
  %l9 = alloca ptr
  %l10 = alloca i64
  %l11 = alloca ptr
  %l12 = alloca ptr
  %l13 = alloca ptr
  %l14 = alloca i64
  %l15 = alloca ptr
  %l16 = alloca i32
  %l17 = alloca { i64, ptr }
  %l18 = alloca ptr
  %l19 = alloca ptr
  %l20 = alloca %"compiler/typed:landState"
  %l21 = alloca %"compiler/typed:landState"
  %l22 = alloca ptr
  %l23 = alloca { i64, ptr }
  %l24 = alloca i64
  %l25 = alloca i64
  %l27 = alloca ptr
  %l28 = alloca ptr
  %l29 = alloca %"compiler/typed:landState"
  %l30 = alloca %"compiler/typed:landState"
  %l31 = alloca { i64, ptr }
  %l32 = alloca i64
  %l33 = alloca i64
  %l34 = alloca ptr
  %l35 = alloca %"compiler/typed:landState"
  %l36 = alloca ptr
  %l37 = alloca { i64, ptr }
  %l38 = alloca { i64, ptr }
  %l39 = alloca i64
  %l40 = alloca i64
  %l42 = alloca ptr
  %l43 = alloca ptr
  %l44 = alloca { i64, ptr }
  %l45 = alloca i64
  %l46 = alloca i64
  %l47 = alloca ptr
  %l49 = alloca ptr
  %l52 = alloca ptr
  %l53 = alloca i1
  %l56 = alloca ptr
  %l57 = alloca i1
  %l60 = alloca ptr
  %l61 = alloca i1
  %l68 = alloca ptr
  %l69 = alloca i1
  %l84 = alloca ptr
  %l85 = alloca i1
  %l90 = alloca ptr
  %l91 = alloca i1
  %l96 = alloca ptr
  %l101 = alloca ptr
  %l104 = alloca ptr
  %l105 = alloca i1
  %l114 = alloca ptr
  %l115 = alloca i1
  %l122 = alloca i64
  %l125 = alloca ptr
  %l126 = alloca i1
  %l141 = alloca ptr
  %l142 = alloca i1
  %l149 = alloca i64
  %l158 = alloca ptr
  %l159 = alloca i1
  %l174 = alloca ptr
  %l175 = alloca i1
  %l187 = alloca ptr
  %l188 = alloca i1
  %l193 = alloca ptr
  %l199 = alloca ptr
  %l210 = alloca ptr
  %l211 = alloca i1
  %l221 = alloca %"compiler/typed:landState"
  %l226 = alloca %"compiler/typed:landState"
  %l235 = alloca ptr
  %l236 = alloca i1
  %l249 = alloca { i64, ptr }
  %l259 = alloca ptr
  %l260 = alloca i1
  %l267 = alloca ptr
  %l268 = alloca i1
  %l274 = alloca %"compiler/typed:landState"
  %l279 = alloca %"compiler/typed:landState"
  %l288 = alloca { i64, ptr }
  %l302 = alloca %"compiler/typed:landState"
  %l308 = alloca %"compiler/typed:landState"
  %l309 = alloca %"compiler/typed:landState"
  %l315 = alloca ptr
  %l316 = alloca i1
  %l321 = alloca ptr
  %l322 = alloca i1
  %l334 = alloca { i64, ptr }
  %l343 = alloca ptr
  %l344 = alloca i1
  %l352 = alloca ptr
  %l353 = alloca i1
  %l356 = alloca ptr
  %l357 = alloca i1
  %l370 = alloca { i64, ptr }
  %l373 = alloca ptr
  %l374 = alloca i1
  %l384 = alloca ptr
  %l385 = alloca i1
  %s12 = alloca %olang.scope
  %s16 = alloca %olang.scope
  %s22 = alloca %olang.scope
  %s24 = alloca %olang.scope
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
  store ptr %t5, ptr %l52, !tbaa !29
  store i1 false, ptr %l53, !tbaa !21
  %t6 = load ptr, ptr %l52, !tbaa !29
  %t7 = icmp ne ptr %t6, null
  br i1 %t7, label %bb4, label %bb5
bb4:
  %t9 = load ptr, ptr %l52, !tbaa !29
  %t10 = load i64, ptr %t9, !range !{i64 0, i64 18}
  %t12 = icmp eq i64 %t10, 0
  store i1 %t12, ptr %l53, !tbaa !21
  br label %bb5
bb5:
  %t13 = load i1, ptr %l53, !tbaa !21
  br i1 %t13, label %bb6, label %bb7
bb6:
  br label %bb12
bb7:
  %t14 = load ptr, ptr %l1, !tbaa !29
  store ptr %t14, ptr %l56, !tbaa !29
  store i1 false, ptr %l57, !tbaa !21
  %t15 = load ptr, ptr %l56, !tbaa !29
  %t16 = icmp ne ptr %t15, null
  br i1 %t16, label %bb8, label %bb9
bb8:
  %t18 = load ptr, ptr %l56, !tbaa !29
  %t19 = load i64, ptr %t18, !range !{i64 0, i64 18}
  %t21 = icmp eq i64 %t19, 1
  store i1 %t21, ptr %l57, !tbaa !21
  br label %bb9
bb9:
  %t22 = load i1, ptr %l57, !tbaa !21
  br i1 %t22, label %bb10, label %bb11
bb10:
  br label %bb12
bb11:
  br label %bb13
bb12:
  br label %bb222
bb13:
  %t23 = load ptr, ptr %l1, !tbaa !29
  store ptr %t23, ptr %l60, !tbaa !29
  store i1 false, ptr %l61, !tbaa !21
  %t24 = load ptr, ptr %l60, !tbaa !29
  %t25 = icmp ne ptr %t24, null
  br i1 %t25, label %bb14, label %bb15
bb14:
  %t27 = load ptr, ptr %l60, !tbaa !29
  %t28 = load i64, ptr %t27, !range !{i64 0, i64 18}
  %t30 = icmp eq i64 %t28, 2
  store i1 %t30, ptr %l61, !tbaa !21
  br label %bb15
bb15:
  %t31 = load i1, ptr %l61, !tbaa !21
  br i1 %t31, label %bb16, label %bb17
bb16:
  %t32 = load ptr, ptr %l1, !tbaa !29
  %t34 = getelementptr { i64, [5 x i64] }, ptr %t32, i32 0, i32 1
  %t35 = getelementptr { %"compiler/source:Span", i32, ptr, i32 }, ptr %t34, i32 0, i32 0
  %t36 = load %"compiler/source:Span", ptr %t35
  store %"compiler/source:Span" %t36, ptr %l2
  %t38 = load ptr, ptr %l1, !tbaa !29
  %t40 = getelementptr { i64, [5 x i64] }, ptr %t38, i32 0, i32 1
  %t41 = getelementptr { %"compiler/source:Span", i32, ptr, i32 }, ptr %t40, i32 0, i32 2
  %t42 = load ptr, ptr %t41
  store ptr %t42, ptr %l3, !tbaa !29
  br label %bb18
bb17:
  br label %bb26
bb18:
  %t44 = load ptr, ptr %l3, !tbaa !29
  store ptr %t44, ptr %l68, !tbaa !29
  store i1 false, ptr %l69, !tbaa !21
  %t45 = load ptr, ptr %l68, !tbaa !29
  %t46 = icmp ne ptr %t45, null
  br i1 %t46, label %bb19, label %bb20
bb19:
  %t48 = load ptr, ptr %l68, !tbaa !29
  %t49 = load i64, ptr %t48, !range !{i64 0, i64 8}
  %t51 = icmp eq i64 %t49, 0
  store i1 %t51, ptr %l69, !tbaa !21
  br label %bb20
bb20:
  %t52 = load i1, ptr %l69, !tbaa !21
  br i1 %t52, label %bb21, label %bb22
bb21:
  %t53 = load ptr, ptr %l3, !tbaa !29
  %t55 = getelementptr { i64, [4 x i64] }, ptr %t53, i32 0, i32 1
  %t56 = getelementptr { %"compiler/source:Span", i32, i32 }, ptr %t55, i32 0, i32 0
  %t57 = load %"compiler/source:Span", ptr %t56
  store %"compiler/source:Span" %t57, ptr %l4
  %t59 = load ptr, ptr %l3, !tbaa !29
  %t61 = getelementptr { i64, [4 x i64] }, ptr %t59, i32 0, i32 1
  %t62 = getelementptr { %"compiler/source:Span", i32, i32 }, ptr %t61, i32 0, i32 1
  %t63 = load i32, ptr %t62
  store i32 %t63, ptr %l5, !tbaa !23
  %t65 = load ptr, ptr %l3, !tbaa !29
  %t67 = getelementptr { i64, [4 x i64] }, ptr %t65, i32 0, i32 1
  %t68 = getelementptr { %"compiler/source:Span", i32, i32 }, ptr %t67, i32 0, i32 2
  %t69 = load i32, ptr %t68
  %t71 = load ptr, ptr %l0, !tbaa !29
  %t73 = getelementptr %"compiler/source:Span", ptr %l2, i32 0, i32 0
  %t74 = load i32, ptr %t73, !tbaa !23
  %t76 = sext i32 %t74 to i64
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aLandings_2emention(ptr %v0, ptr %t71, i32 %t69, i64 %t76, i1 true)
  br label %bb23
bb22:
  %t80 = load ptr, ptr %l0, !tbaa !29
  %t81 = load ptr, ptr %l3, !tbaa !29
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aLandings_2eplace(ptr %v0, ptr %v1, ptr %t80, ptr %t81)
  br label %bb24
bb23:
  br label %bb25
bb24:
  br label %bb25
bb25:
  br label %bb222
bb26:
  %t84 = load ptr, ptr %l1, !tbaa !29
  store ptr %t84, ptr %l84, !tbaa !29
  store i1 false, ptr %l85, !tbaa !21
  %t85 = load ptr, ptr %l84, !tbaa !29
  %t86 = icmp ne ptr %t85, null
  br i1 %t86, label %bb27, label %bb28
bb27:
  %t88 = load ptr, ptr %l84, !tbaa !29
  %t89 = load i64, ptr %t88, !range !{i64 0, i64 18}
  %t91 = icmp eq i64 %t89, 3
  store i1 %t91, ptr %l85, !tbaa !21
  br label %bb28
bb28:
  %t92 = load i1, ptr %l85, !tbaa !21
  br i1 %t92, label %bb29, label %bb30
bb29:
  %t93 = load ptr, ptr %l1, !tbaa !29
  %t95 = getelementptr { i64, [5 x i64] }, ptr %t93, i32 0, i32 1
  %t96 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t95, i32 0, i32 2
  %t97 = load ptr, ptr %t96
  store ptr %t97, ptr %l7, !tbaa !29
  br label %bb35
bb30:
  %t99 = load ptr, ptr %l1, !tbaa !29
  store ptr %t99, ptr %l90, !tbaa !29
  store i1 false, ptr %l91, !tbaa !21
  %t100 = load ptr, ptr %l90, !tbaa !29
  %t101 = icmp ne ptr %t100, null
  br i1 %t101, label %bb31, label %bb32
bb31:
  %t103 = load ptr, ptr %l90, !tbaa !29
  %t104 = load i64, ptr %t103, !range !{i64 0, i64 18}
  %t106 = icmp eq i64 %t104, 4
  store i1 %t106, ptr %l91, !tbaa !21
  br label %bb32
bb32:
  %t107 = load i1, ptr %l91, !tbaa !21
  br i1 %t107, label %bb33, label %bb34
bb33:
  %t108 = load ptr, ptr %l1, !tbaa !29
  %t110 = getelementptr { i64, [5 x i64] }, ptr %t108, i32 0, i32 1
  %t111 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t110, i32 0, i32 2
  %t112 = load ptr, ptr %t111
  store ptr %t112, ptr %l7, !tbaa !29
  br label %bb35
bb34:
  br label %bb37
bb35:
  %t114 = load ptr, ptr %l0, !tbaa !29
  store ptr %t114, ptr %l96, !tbaa !29
  %t115 = load ptr, ptr %l96, !tbaa !29
  %t116 = getelementptr %"compiler/typed:Landings", ptr %t115, i32 0, i32 20
  %t117 = load i64, ptr %t116, !tbaa !24
  %t119 = add i64 %t117, 1
  %t121 = load ptr, ptr %l96, !tbaa !29
  %t122 = getelementptr %"compiler/typed:Landings", ptr %t121, i32 0, i32 20
  store i64 %t119, ptr %t122, !tbaa !24
  %t123 = load ptr, ptr %l0, !tbaa !29
  %t124 = load ptr, ptr %l7, !tbaa !29
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aLandings_2eplace(ptr %v0, ptr %v1, ptr %t123, ptr %t124)
  br label %bb36
bb36:
  %t127 = load ptr, ptr %l0, !tbaa !29
  store ptr %t127, ptr %l101, !tbaa !29
  %t128 = load ptr, ptr %l101, !tbaa !29
  %t129 = getelementptr %"compiler/typed:Landings", ptr %t128, i32 0, i32 20
  %t130 = load i64, ptr %t129, !tbaa !24
  %t132 = sub i64 %t130, 1
  %t134 = load ptr, ptr %l101, !tbaa !29
  %t135 = getelementptr %"compiler/typed:Landings", ptr %t134, i32 0, i32 20
  store i64 %t132, ptr %t135, !tbaa !24
  br label %bb222
bb37:
  %t136 = load ptr, ptr %l1, !tbaa !29
  store ptr %t136, ptr %l104, !tbaa !29
  store i1 false, ptr %l105, !tbaa !21
  %t137 = load ptr, ptr %l104, !tbaa !29
  %t138 = icmp ne ptr %t137, null
  br i1 %t138, label %bb38, label %bb39
bb38:
  %t140 = load ptr, ptr %l104, !tbaa !29
  %t141 = load i64, ptr %t140, !range !{i64 0, i64 18}
  %t143 = icmp eq i64 %t141, 5
  store i1 %t143, ptr %l105, !tbaa !21
  br label %bb39
bb39:
  %t144 = load i1, ptr %l105, !tbaa !21
  br i1 %t144, label %bb40, label %bb41
bb40:
  %t145 = load ptr, ptr %l1, !tbaa !29
  %t147 = getelementptr { i64, [5 x i64] }, ptr %t145, i32 0, i32 1
  %t148 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t147, i32 0, i32 2
  %t149 = load ptr, ptr %t148
  store ptr %t149, ptr %l8, !tbaa !29
  br label %bb42
bb41:
  br label %bb44
bb42:
  %t151 = load ptr, ptr %l0, !tbaa !29
  %t152 = load ptr, ptr %l8, !tbaa !29
  %t154 = getelementptr %"compiler/typed:Promote", ptr %t152, i32 0, i32 0
  %t155 = load ptr, ptr %t154, !tbaa !29
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aLandings_2eexpr(ptr %v0, ptr %v1, ptr %t151, ptr %t155)
  br label %bb43
bb43:
  br label %bb222
bb44:
  %t159 = load ptr, ptr %l1, !tbaa !29
  store ptr %t159, ptr %l114, !tbaa !29
  store i1 false, ptr %l115, !tbaa !21
  %t160 = load ptr, ptr %l114, !tbaa !29
  %t161 = icmp ne ptr %t160, null
  br i1 %t161, label %bb45, label %bb46
bb45:
  %t163 = load ptr, ptr %l114, !tbaa !29
  %t164 = load i64, ptr %t163, !range !{i64 0, i64 18}
  %t166 = icmp eq i64 %t164, 6
  store i1 %t166, ptr %l115, !tbaa !21
  br label %bb46
bb46:
  %t167 = load i1, ptr %l115, !tbaa !21
  br i1 %t167, label %bb47, label %bb48
bb47:
  %t168 = load ptr, ptr %l1, !tbaa !29
  %t170 = getelementptr { i64, [5 x i64] }, ptr %t168, i32 0, i32 1
  %t171 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t170, i32 0, i32 2
  %t172 = load ptr, ptr %t171
  store ptr %t172, ptr %l9, !tbaa !29
  br label %bb49
bb48:
  br label %bb66
bb49:
  %t174 = load ptr, ptr %l0, !tbaa !29
  %t176 = getelementptr %"compiler/typed:Landings", ptr %t174, i32 0, i32 15
  %t178 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %t176)
  store i64 %t178, ptr %l122
  br label %bb50
bb50:
  %t179 = load i64, ptr %l122, !tbaa !24
  store i64 %t179, ptr %l10, !tbaa !24
  %t180 = load ptr, ptr %l9, !tbaa !29
  %t182 = getelementptr %"compiler/typed:Call", ptr %t180, i32 0, i32 0
  %t183 = load ptr, ptr %t182, !tbaa !29
  store ptr %t183, ptr %l11, !tbaa !29
  %t185 = load ptr, ptr %l11, !tbaa !29
  store ptr %t185, ptr %l125, !tbaa !29
  store i1 false, ptr %l126, !tbaa !21
  %t186 = load ptr, ptr %l125, !tbaa !29
  %t187 = icmp ne ptr %t186, null
  br i1 %t187, label %bb51, label %bb52
bb51:
  %t189 = load ptr, ptr %l125, !tbaa !29
  %t190 = load i64, ptr %t189, !range !{i64 0, i64 5}
  %t192 = icmp eq i64 %t190, 2
  store i1 %t192, ptr %l126, !tbaa !21
  br label %bb52
bb52:
  %t193 = load i1, ptr %l126, !tbaa !21
  br i1 %t193, label %bb53, label %bb54
bb53:
  %t194 = load ptr, ptr %l11, !tbaa !29
  %t196 = getelementptr { i64, [3 x i64] }, ptr %t194, i32 0, i32 1
  %t197 = getelementptr { ptr }, ptr %t196, i32 0, i32 0
  %t198 = load ptr, ptr %t197
  store ptr %t198, ptr %l12, !tbaa !29
  br label %bb55
bb54:
  br label %bb57
bb55:
  %t200 = load ptr, ptr %l0, !tbaa !29
  %t201 = load ptr, ptr %l12, !tbaa !29
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aLandings_2eexpr(ptr %v0, ptr %v1, ptr %t200, ptr %t201)
  br label %bb56
bb56:
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
  call void @__olang_check_failed(ptr @olang_loc_9444a0fe500d35e5_4f818c2c3ae57dd9)
  unreachable
bb62:
  %t205 = load ptr, ptr %l0, !tbaa !29
  %t206 = load ptr, ptr %l9, !tbaa !29
  %t208 = getelementptr %"compiler/typed:Call", ptr %t206, i32 0, i32 1
  %t209 = load { i64, ptr }, ptr %t208, !tbaa !27
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aLandings_2eexprs(ptr %v0, ptr %v1, ptr %t205, { i64, ptr } %t209)
  br label %bb63
bb63:
  %t212 = load ptr, ptr %l0, !tbaa !29
  %t213 = load i64, ptr %l10, !tbaa !24
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aLandings_2eapart(ptr %v0, ptr %t212, i64 %t213)
  br label %bb64
bb64:
  %t216 = load ptr, ptr %l0, !tbaa !29
  %t217 = load i64, ptr %l10, !tbaa !24
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aLandings_2ekeptBy(ptr %v0, ptr %t216, i64 %t217)
  br label %bb65
bb65:
  br label %bb222
bb66:
  %t220 = load ptr, ptr %l1, !tbaa !29
  store ptr %t220, ptr %l141, !tbaa !29
  store i1 false, ptr %l142, !tbaa !21
  %t221 = load ptr, ptr %l141, !tbaa !29
  %t222 = icmp ne ptr %t221, null
  br i1 %t222, label %bb67, label %bb68
bb67:
  %t224 = load ptr, ptr %l141, !tbaa !29
  %t225 = load i64, ptr %t224, !range !{i64 0, i64 18}
  %t227 = icmp eq i64 %t225, 7
  store i1 %t227, ptr %l142, !tbaa !21
  br label %bb68
bb68:
  %t228 = load i1, ptr %l142, !tbaa !21
  br i1 %t228, label %bb69, label %bb70
bb69:
  %t229 = load ptr, ptr %l1, !tbaa !29
  %t231 = getelementptr { i64, [5 x i64] }, ptr %t229, i32 0, i32 1
  %t232 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t231, i32 0, i32 2
  %t233 = load ptr, ptr %t232
  store ptr %t233, ptr %l13, !tbaa !29
  br label %bb71
bb70:
  br label %bb76
bb71:
  %t235 = load ptr, ptr %l0, !tbaa !29
  %t237 = getelementptr %"compiler/typed:Landings", ptr %t235, i32 0, i32 15
  %t239 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %t237)
  store i64 %t239, ptr %l149
  br label %bb72
bb72:
  %t240 = load i64, ptr %l149, !tbaa !24
  store i64 %t240, ptr %l14, !tbaa !24
  %t241 = load ptr, ptr %l0, !tbaa !29
  %t242 = load ptr, ptr %l13, !tbaa !29
  %t244 = getelementptr %"compiler/typed:Make", ptr %t242, i32 0, i32 2
  %t245 = load { i64, ptr }, ptr %t244, !tbaa !27
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aLandings_2eexprs(ptr %v0, ptr %v1, ptr %t241, { i64, ptr } %t245)
  br label %bb73
bb73:
  %t248 = load ptr, ptr %l0, !tbaa !29
  %t249 = load ptr, ptr %l13, !tbaa !29
  %t251 = getelementptr %"compiler/typed:Make", ptr %t249, i32 0, i32 3
  %t252 = load ptr, ptr %t251, !tbaa !29
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aLandings_2eexpr(ptr %v0, ptr %v1, ptr %t248, ptr %t252)
  br label %bb74
bb74:
  %t255 = load ptr, ptr %l0, !tbaa !29
  %t256 = load i64, ptr %l14, !tbaa !24
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aLandings_2eapart(ptr %v0, ptr %t255, i64 %t256)
  br label %bb75
bb75:
  br label %bb222
bb76:
  %t259 = load ptr, ptr %l1, !tbaa !29
  store ptr %t259, ptr %l158, !tbaa !29
  store i1 false, ptr %l159, !tbaa !21
  %t260 = load ptr, ptr %l158, !tbaa !29
  %t261 = icmp ne ptr %t260, null
  br i1 %t261, label %bb77, label %bb78
bb77:
  %t263 = load ptr, ptr %l158, !tbaa !29
  %t264 = load i64, ptr %t263, !range !{i64 0, i64 18}
  %t266 = icmp eq i64 %t264, 8
  store i1 %t266, ptr %l159, !tbaa !21
  br label %bb78
bb78:
  %t267 = load i1, ptr %l159, !tbaa !21
  br i1 %t267, label %bb79, label %bb80
bb79:
  %t268 = load ptr, ptr %l1, !tbaa !29
  %t270 = getelementptr { i64, [5 x i64] }, ptr %t268, i32 0, i32 1
  %t271 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t270, i32 0, i32 2
  %t272 = load ptr, ptr %t271
  store ptr %t272, ptr %l15, !tbaa !29
  br label %bb81
bb80:
  br label %bb84
bb81:
  store %olang.scope zeroinitializer, ptr %s12
  %t274 = load ptr, ptr %l0, !tbaa !29
  %t275 = load ptr, ptr %l15, !tbaa !29
  %t277 = getelementptr %"compiler/typed:Collect", ptr %t275, i32 0, i32 0
  %t278 = load ptr, ptr %t277, !tbaa !29
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aLandings_2eexpr(ptr %v0, ptr %v1, ptr %t274, ptr %t278)
  br label %bb82
bb82:
  %t281 = load ptr, ptr %l0, !tbaa !29
  %t282 = load ptr, ptr %l15, !tbaa !29
  %t284 = getelementptr %"compiler/typed:Collect", ptr %t282, i32 0, i32 1
  %t285 = load ptr, ptr %t284, !tbaa !29
  %t287 = getelementptr %"compiler/typed:Block", ptr %t285, i32 0, i32 0
  %t288 = load i32, ptr %t287, !tbaa !23
  %t289 = load ptr, ptr %l15, !tbaa !29
  %t291 = getelementptr %"compiler/typed:Collect", ptr %t289, i32 0, i32 1
  %t292 = load ptr, ptr %t291, !tbaa !29
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aLandings_2eloop(ptr %v0, ptr %v1, ptr %s12, ptr %t281, i32 %t288, ptr %t292, ptr null)
  br label %bb83
bb83:
  %t296 = load ptr, ptr %l0, !tbaa !29
  %t298 = getelementptr %"compiler/typed:Landings", ptr %t296, i32 0, i32 7
  store i1 false, ptr %t298, !tbaa !21
  call void @__olang_scope_close(ptr %s12)
  br label %bb222
bb84:
  %t299 = load ptr, ptr %l1, !tbaa !29
  store ptr %t299, ptr %l174, !tbaa !29
  store i1 false, ptr %l175, !tbaa !21
  %t300 = load ptr, ptr %l174, !tbaa !29
  %t301 = icmp ne ptr %t300, null
  br i1 %t301, label %bb85, label %bb86
bb85:
  %t303 = load ptr, ptr %l174, !tbaa !29
  %t304 = load i64, ptr %t303, !range !{i64 0, i64 18}
  %t306 = icmp eq i64 %t304, 9
  store i1 %t306, ptr %l175, !tbaa !21
  br label %bb86
bb86:
  %t307 = load i1, ptr %l175, !tbaa !21
  br i1 %t307, label %bb87, label %bb88
bb87:
  %t308 = load ptr, ptr %l1, !tbaa !29
  %t310 = getelementptr { i64, [5 x i64] }, ptr %t308, i32 0, i32 1
  %t311 = getelementptr { %"compiler/source:Span", i32, i32, i32, { i64, ptr } }, ptr %t310, i32 0, i32 2
  %t312 = load i32, ptr %t311, !range !{i32 0, i32 52}
  store i32 %t312, ptr %l16
  %t314 = load ptr, ptr %l1, !tbaa !29
  %t316 = getelementptr { i64, [5 x i64] }, ptr %t314, i32 0, i32 1
  %t317 = getelementptr { %"compiler/source:Span", i32, i32, i32, { i64, ptr } }, ptr %t316, i32 0, i32 4
  %t318 = load { i64, ptr }, ptr %t317
  store { i64, ptr } %t318, ptr %l17, !tbaa !27
  br label %bb89
bb88:
  br label %bb94
bb89:
  %t320 = load i32, ptr %l16, !range !{i32 0, i32 52}
  %t322 = trunc i64 30 to i32
  %t323 = icmp eq i32 %t320, %t322
  %t325 = xor i1 %t323, true
  br i1 %t325, label %bb90, label %bb91
bb90:
  %t327 = load ptr, ptr %l0, !tbaa !29
  %t328 = load { i64, ptr }, ptr %l17, !tbaa !27
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aLandings_2eexprs(ptr %v0, ptr %v1, ptr %t327, { i64, ptr } %t328)
  br label %bb92
bb91:
  br label %bb93
bb92:
  br label %bb93
bb93:
  br label %bb222
bb94:
  %t331 = load ptr, ptr %l1, !tbaa !29
  store ptr %t331, ptr %l187, !tbaa !29
  store i1 false, ptr %l188, !tbaa !21
  %t332 = load ptr, ptr %l187, !tbaa !29
  %t333 = icmp ne ptr %t332, null
  br i1 %t333, label %bb95, label %bb96
bb95:
  %t335 = load ptr, ptr %l187, !tbaa !29
  %t336 = load i64, ptr %t335, !range !{i64 0, i64 18}
  %t338 = icmp eq i64 %t336, 10
  store i1 %t338, ptr %l188, !tbaa !21
  br label %bb96
bb96:
  %t339 = load i1, ptr %l188, !tbaa !21
  br i1 %t339, label %bb97, label %bb98
bb97:
  %t340 = load ptr, ptr %l1, !tbaa !29
  %t342 = getelementptr { i64, [5 x i64] }, ptr %t340, i32 0, i32 1
  %t343 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t342, i32 0, i32 2
  %t344 = load ptr, ptr %t343
  store ptr %t344, ptr %l18, !tbaa !29
  br label %bb99
bb98:
  br label %bb103
bb99:
  %t346 = load ptr, ptr %l0, !tbaa !29
  store ptr %t346, ptr %l193, !tbaa !29
  %t347 = load ptr, ptr %l193, !tbaa !29
  %t348 = getelementptr %"compiler/typed:Landings", ptr %t347, i32 0, i32 20
  %t349 = load i64, ptr %t348, !tbaa !24
  %t351 = add i64 %t349, 1
  %t353 = load ptr, ptr %l193, !tbaa !29
  %t354 = getelementptr %"compiler/typed:Landings", ptr %t353, i32 0, i32 20
  store i64 %t351, ptr %t354, !tbaa !24
  %t355 = load ptr, ptr %l0, !tbaa !29
  %t356 = load ptr, ptr %l18, !tbaa !29
  %t358 = getelementptr %"compiler/typed:Slice", ptr %t356, i32 0, i32 0
  %t359 = load ptr, ptr %t358, !tbaa !29
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aLandings_2eplace(ptr %v0, ptr %v1, ptr %t355, ptr %t359)
  br label %bb100
bb100:
  %t362 = load ptr, ptr %l0, !tbaa !29
  store ptr %t362, ptr %l199, !tbaa !29
  %t363 = load ptr, ptr %l199, !tbaa !29
  %t364 = getelementptr %"compiler/typed:Landings", ptr %t363, i32 0, i32 20
  %t365 = load i64, ptr %t364, !tbaa !24
  %t367 = sub i64 %t365, 1
  %t369 = load ptr, ptr %l199, !tbaa !29
  %t370 = getelementptr %"compiler/typed:Landings", ptr %t369, i32 0, i32 20
  store i64 %t367, ptr %t370, !tbaa !24
  %t371 = load ptr, ptr %l0, !tbaa !29
  %t372 = load ptr, ptr %l18, !tbaa !29
  %t374 = getelementptr %"compiler/typed:Slice", ptr %t372, i32 0, i32 1
  %t375 = load ptr, ptr %t374, !tbaa !29
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aLandings_2eexpr(ptr %v0, ptr %v1, ptr %t371, ptr %t375)
  br label %bb101
bb101:
  %t379 = load ptr, ptr %l0, !tbaa !29
  %t380 = load ptr, ptr %l18, !tbaa !29
  %t382 = getelementptr %"compiler/typed:Slice", ptr %t380, i32 0, i32 2
  %t383 = load ptr, ptr %t382, !tbaa !29
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aLandings_2eexpr(ptr %v0, ptr %v1, ptr %t379, ptr %t383)
  br label %bb102
bb102:
  br label %bb222
bb103:
  %t387 = load ptr, ptr %l1, !tbaa !29
  store ptr %t387, ptr %l210, !tbaa !29
  store i1 false, ptr %l211, !tbaa !21
  %t388 = load ptr, ptr %l210, !tbaa !29
  %t389 = icmp ne ptr %t388, null
  br i1 %t389, label %bb104, label %bb105
bb104:
  %t391 = load ptr, ptr %l210, !tbaa !29
  %t392 = load i64, ptr %t391, !range !{i64 0, i64 18}
  %t394 = icmp eq i64 %t392, 11
  store i1 %t394, ptr %l211, !tbaa !21
  br label %bb105
bb105:
  %t395 = load i1, ptr %l211, !tbaa !21
  br i1 %t395, label %bb106, label %bb107
bb106:
  %t396 = load ptr, ptr %l1, !tbaa !29
  %t398 = getelementptr { i64, [5 x i64] }, ptr %t396, i32 0, i32 1
  %t399 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t398, i32 0, i32 2
  %t400 = load ptr, ptr %t399
  store ptr %t400, ptr %l19, !tbaa !29
  br label %bb108
bb107:
  br label %bb116
bb108:
  store %olang.scope zeroinitializer, ptr %s16
  %t402 = load ptr, ptr %l0, !tbaa !29
  %t403 = load ptr, ptr %l19, !tbaa !29
  %t405 = getelementptr %"compiler/typed:Cond", ptr %t403, i32 0, i32 0
  %t406 = load ptr, ptr %t405, !tbaa !29
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aLandings_2eexpr(ptr %v0, ptr %v1, ptr %t402, ptr %t406)
  br label %bb109
bb109:
  %t410 = load ptr, ptr %l0, !tbaa !29
  %t412 = call %"compiler/typed:landState" @compiler_2ftyped_2ecompiler_2ftyped_3aLandings_2esave(ptr %v0, ptr %s16, ptr %t410)
  store %"compiler/typed:landState" %t412, ptr %l221
  br label %bb110
bb110:
  %t413 = load %"compiler/typed:landState", ptr %l221
  store %"compiler/typed:landState" %t413, ptr %l20
  %t414 = load ptr, ptr %l0, !tbaa !29
  %t415 = load ptr, ptr %l19, !tbaa !29
  %t417 = getelementptr %"compiler/typed:Cond", ptr %t415, i32 0, i32 1
  %t418 = load ptr, ptr %t417, !tbaa !29
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aLandings_2eexpr(ptr %v0, ptr %v1, ptr %t414, ptr %t418)
  br label %bb111
bb111:
  %t421 = load ptr, ptr %l0, !tbaa !29
  %t423 = call %"compiler/typed:landState" @compiler_2ftyped_2ecompiler_2ftyped_3aLandings_2esave(ptr %v0, ptr %s16, ptr %t421)
  store %"compiler/typed:landState" %t423, ptr %l226
  br label %bb112
bb112:
  %t424 = load %"compiler/typed:landState", ptr %l226
  store %"compiler/typed:landState" %t424, ptr %l21
  %t425 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aLandings_2erestore(ptr %v0, ptr %s16, ptr %t425, ptr %l20)
  br label %bb113
bb113:
  %t428 = load ptr, ptr %l0, !tbaa !29
  %t429 = load ptr, ptr %l19, !tbaa !29
  %t431 = getelementptr %"compiler/typed:Cond", ptr %t429, i32 0, i32 2
  %t432 = load ptr, ptr %t431, !tbaa !29
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aLandings_2eexpr(ptr %v0, ptr %v1, ptr %t428, ptr %t432)
  br label %bb114
bb114:
  %t436 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aLandings_2emeet(ptr %v0, ptr %s16, ptr %t436, ptr %l21)
  br label %bb115
bb115:
  call void @__olang_scope_close(ptr %s16)
  br label %bb222
bb116:
  %t439 = load ptr, ptr %l1, !tbaa !29
  store ptr %t439, ptr %l235, !tbaa !29
  store i1 false, ptr %l236, !tbaa !21
  %t440 = load ptr, ptr %l235, !tbaa !29
  %t441 = icmp ne ptr %t440, null
  br i1 %t441, label %bb117, label %bb118
bb117:
  %t443 = load ptr, ptr %l235, !tbaa !29
  %t444 = load i64, ptr %t443, !range !{i64 0, i64 18}
  %t446 = icmp eq i64 %t444, 12
  store i1 %t446, ptr %l236, !tbaa !21
  br label %bb118
bb118:
  %t447 = load i1, ptr %l236, !tbaa !21
  br i1 %t447, label %bb119, label %bb120
bb119:
  %t448 = load ptr, ptr %l1, !tbaa !29
  %t450 = getelementptr { i64, [5 x i64] }, ptr %t448, i32 0, i32 1
  %t451 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t450, i32 0, i32 2
  %t452 = load ptr, ptr %t451
  store ptr %t452, ptr %l22, !tbaa !29
  br label %bb121
bb120:
  br label %bb130
bb121:
  %t454 = load ptr, ptr %l22, !tbaa !29
  %t456 = getelementptr %"compiler/typed:Seq", ptr %t454, i32 0, i32 0
  %t457 = load { i64, ptr }, ptr %t456, !tbaa !27
  store { i64, ptr } %t457, ptr %l23, !tbaa !27
  store i64 0, ptr %l24, !tbaa !24
  %t459 = load { i64, ptr }, ptr %l23, !tbaa !27
  %t461 = extractvalue { i64, ptr } %t459, 0
  store i64 %t461, ptr %l25, !tbaa !24
  br label %bb122
bb122:
  %t463 = load i64, ptr %l24, !tbaa !24
  %t464 = load i64, ptr %l25, !tbaa !24
  %t467 = icmp slt i64 %t463, %t464
  %t469 = xor i1 %t467, true
  br i1 %t469, label %bb123, label %bb124
bb123:
  br label %bb128
bb124:
  br label %bb125
bb125:
  %t471 = load { i64, ptr }, ptr %l23, !tbaa !27
  store { i64, ptr } %t471, ptr %l249, !tbaa !27
  %t472 = load i64, ptr %l24, !tbaa !24
  %t474 = getelementptr { i64, ptr }, ptr %l249, i32 0, i32 1
  %t475 = load ptr, ptr %t474, !tbaa !27
  %t476 = getelementptr ptr, ptr %t475, i64 %t472
  %t477 = load ptr, ptr %t476, !tbaa !39
  %t479 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aLandings_2estmt(ptr %v0, ptr %v1, ptr %t479, ptr %t477)
  br label %bb126
bb126:
  br label %bb127
bb127:
  %t483 = load i64, ptr %l24, !tbaa !24
  %t485 = add i64 %t483, 1
  store i64 %t485, ptr %l24, !tbaa !24
  br label %bb122
bb128:
  %t487 = load ptr, ptr %l0, !tbaa !29
  %t488 = load ptr, ptr %l22, !tbaa !29
  %t490 = getelementptr %"compiler/typed:Seq", ptr %t488, i32 0, i32 1
  %t491 = load ptr, ptr %t490, !tbaa !29
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aLandings_2eexpr(ptr %v0, ptr %v1, ptr %t487, ptr %t491)
  br label %bb129
bb129:
  br label %bb222
bb130:
  %t494 = load ptr, ptr %l1, !tbaa !29
  store ptr %t494, ptr %l259, !tbaa !29
  store i1 false, ptr %l260, !tbaa !21
  %t495 = load ptr, ptr %l259, !tbaa !29
  %t496 = icmp ne ptr %t495, null
  br i1 %t496, label %bb131, label %bb132
bb131:
  %t498 = load ptr, ptr %l259, !tbaa !29
  %t499 = load i64, ptr %t498, !range !{i64 0, i64 18}
  %t501 = icmp eq i64 %t499, 13
  store i1 %t501, ptr %l260, !tbaa !21
  br label %bb132
bb132:
  %t502 = load i1, ptr %l260, !tbaa !21
  br i1 %t502, label %bb133, label %bb134
bb133:
  %t503 = load ptr, ptr %l1, !tbaa !29
  %t505 = getelementptr { i64, [5 x i64] }, ptr %t503, i32 0, i32 1
  %t506 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t505, i32 0, i32 2
  %t507 = load ptr, ptr %t506
  store ptr %t507, ptr %l27, !tbaa !29
  br label %bb135
bb134:
  br label %bb137
bb135:
  %t509 = load ptr, ptr %l0, !tbaa !29
  %t510 = load ptr, ptr %l27, !tbaa !29
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aLandings_2ematchExpr(ptr %v0, ptr %v1, ptr %t509, ptr %t510)
  br label %bb136
bb136:
  br label %bb222
bb137:
  %t513 = load ptr, ptr %l1, !tbaa !29
  store ptr %t513, ptr %l267, !tbaa !29
  store i1 false, ptr %l268, !tbaa !21
  %t514 = load ptr, ptr %l267, !tbaa !29
  %t515 = icmp ne ptr %t514, null
  br i1 %t515, label %bb138, label %bb139
bb138:
  %t517 = load ptr, ptr %l267, !tbaa !29
  %t518 = load i64, ptr %t517, !range !{i64 0, i64 18}
  %t520 = icmp eq i64 %t518, 14
  store i1 %t520, ptr %l268, !tbaa !21
  br label %bb139
bb139:
  %t521 = load i1, ptr %l268, !tbaa !21
  br i1 %t521, label %bb140, label %bb141
bb140:
  %t522 = load ptr, ptr %l1, !tbaa !29
  %t524 = getelementptr { i64, [5 x i64] }, ptr %t522, i32 0, i32 1
  %t525 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t524, i32 0, i32 2
  %t526 = load ptr, ptr %t525
  store ptr %t526, ptr %l28, !tbaa !29
  br label %bb142
bb141:
  br label %bb163
bb142:
  store %olang.scope zeroinitializer, ptr %s22
  %t528 = load ptr, ptr %l0, !tbaa !29
  %t530 = call %"compiler/typed:landState" @compiler_2ftyped_2ecompiler_2ftyped_3aLandings_2esave(ptr %v0, ptr %s22, ptr %t528)
  store %"compiler/typed:landState" %t530, ptr %l274
  br label %bb143
bb143:
  %t531 = load %"compiler/typed:landState", ptr %l274
  store %"compiler/typed:landState" %t531, ptr %l29
  %t532 = load ptr, ptr %l0, !tbaa !29
  %t533 = load ptr, ptr %l28, !tbaa !29
  %t535 = getelementptr %"compiler/typed:Try", ptr %t533, i32 0, i32 0
  %t536 = load ptr, ptr %t535, !tbaa !29
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aLandings_2eexpr(ptr %v0, ptr %v1, ptr %t532, ptr %t536)
  br label %bb144
bb144:
  %t539 = load ptr, ptr %l0, !tbaa !29
  %t541 = call %"compiler/typed:landState" @compiler_2ftyped_2ecompiler_2ftyped_3aLandings_2esave(ptr %v0, ptr %s22, ptr %t539)
  store %"compiler/typed:landState" %t541, ptr %l279
  br label %bb145
bb145:
  %t542 = load %"compiler/typed:landState", ptr %l279
  store %"compiler/typed:landState" %t542, ptr %l30
  %t543 = load ptr, ptr %l28, !tbaa !29
  %t545 = getelementptr %"compiler/typed:Try", ptr %t543, i32 0, i32 1
  %t546 = load { i64, ptr }, ptr %t545, !tbaa !27
  store { i64, ptr } %t546, ptr %l31, !tbaa !27
  store i64 0, ptr %l32, !tbaa !24
  %t548 = load { i64, ptr }, ptr %l31, !tbaa !27
  %t550 = extractvalue { i64, ptr } %t548, 0
  store i64 %t550, ptr %l33, !tbaa !24
  br label %bb146
bb146:
  store %olang.scope zeroinitializer, ptr %s24
  %t552 = load i64, ptr %l32, !tbaa !24
  %t553 = load i64, ptr %l33, !tbaa !24
  %t556 = icmp slt i64 %t552, %t553
  %t558 = xor i1 %t556, true
  br i1 %t558, label %bb147, label %bb148
bb147:
  call void @__olang_scope_close(ptr %s24)
  br label %bb161
bb148:
  br label %bb149
bb149:
  %t560 = load { i64, ptr }, ptr %l31, !tbaa !27
  store { i64, ptr } %t560, ptr %l288, !tbaa !27
  %t561 = load i64, ptr %l32, !tbaa !24
  %t563 = getelementptr { i64, ptr }, ptr %l288, i32 0, i32 1
  %t564 = load ptr, ptr %t563, !tbaa !27
  %t565 = getelementptr ptr, ptr %t564, i64 %t561
  %t566 = load ptr, ptr %t565, !tbaa !39
  store ptr %t566, ptr %l34, !tbaa !29
  %t568 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aLandings_2erestore(ptr %v0, ptr %s22, ptr %t568, ptr %l29)
  br label %bb150
bb150:
  %t571 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aLandings_2emeet(ptr %v0, ptr %s22, ptr %t571, ptr %l30)
  br label %bb151
bb151:
  %t574 = load ptr, ptr %l0, !tbaa !29
  %t575 = load ptr, ptr %l34, !tbaa !29
  %t577 = getelementptr %"compiler/typed:Clause", ptr %t575, i32 0, i32 3
  %t578 = load ptr, ptr %t577, !tbaa !29
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aLandings_2eblock(ptr %v0, ptr %v1, ptr %t574, ptr %t578)
  br label %bb152
bb152:
  %t581 = load ptr, ptr %l0, !tbaa !29
  %t582 = load ptr, ptr %l34, !tbaa !29
  %t584 = getelementptr %"compiler/typed:Clause", ptr %t582, i32 0, i32 4
  %t585 = load { i64, ptr }, ptr %t584, !tbaa !27
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aLandings_2eexprs(ptr %v0, ptr %v1, ptr %t581, { i64, ptr } %t585)
  br label %bb153
bb153:
  %t588 = load ptr, ptr %l0, !tbaa !29
  %t590 = call %"compiler/typed:landState" @compiler_2ftyped_2ecompiler_2ftyped_3aLandings_2esave(ptr %v0, ptr %s24, ptr %t588)
  store %"compiler/typed:landState" %t590, ptr %l302
  br label %bb154
bb154:
  %t591 = load %"compiler/typed:landState", ptr %l302
  store %"compiler/typed:landState" %t591, ptr %l35
  %t592 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aLandings_2erestore(ptr %v0, ptr %s22, ptr %t592, ptr %l30)
  br label %bb155
bb155:
  %t595 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aLandings_2emeet(ptr %v0, ptr %s24, ptr %t595, ptr %l35)
  br label %bb156
bb156:
  %t598 = load ptr, ptr %l0, !tbaa !29
  %t600 = call %"compiler/typed:landState" @compiler_2ftyped_2ecompiler_2ftyped_3aLandings_2esave(ptr %v0, ptr %s22, ptr %t598)
  store %"compiler/typed:landState" %t600, ptr %l308
  br label %bb157
bb157:
  %t601 = load %"compiler/typed:landState", ptr %l30
  store %"compiler/typed:landState" %t601, ptr %l309
  %t602 = load %"compiler/typed:landState", ptr %l308
  store %"compiler/typed:landState" %t602, ptr %l30
  %t603 = load i1, ptr @olang_2esole_2ecompiler_2ftyped_3alandState_2e0
  br i1 %t603, label %bb158, label %bb159
bb158:
  %t605 = getelementptr %"compiler/typed:landState", ptr %l309, i32 0, i32 0
  %t606 = load { i64, ptr }, ptr %t605
  %t607 = extractvalue { i64, ptr } %t606, 1
  call void @__olang_region_release(ptr %t607)
  store { i64, ptr } zeroinitializer, ptr %t605
  br label %bb159
bb159:
  call void @__olang_scope_close(ptr %s24)
  br label %bb160
bb160:
  %t608 = load i64, ptr %l32, !tbaa !24
  %t610 = add i64 %t608, 1
  store i64 %t610, ptr %l32, !tbaa !24
  br label %bb146
bb161:
  %t612 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aLandings_2erestore(ptr %v0, ptr %s22, ptr %t612, ptr %l30)
  br label %bb162
bb162:
  call void @__olang_scope_close(ptr %s22)
  br label %bb222
bb163:
  %t615 = load ptr, ptr %l1, !tbaa !29
  store ptr %t615, ptr %l315, !tbaa !29
  store i1 false, ptr %l316, !tbaa !21
  %t616 = load ptr, ptr %l315, !tbaa !29
  %t617 = icmp ne ptr %t616, null
  br i1 %t617, label %bb164, label %bb165
bb164:
  %t619 = load ptr, ptr %l315, !tbaa !29
  %t620 = load i64, ptr %t619, !range !{i64 0, i64 18}
  %t622 = icmp eq i64 %t620, 15
  store i1 %t622, ptr %l316, !tbaa !21
  br label %bb165
bb165:
  %t623 = load i1, ptr %l316, !tbaa !21
  br i1 %t623, label %bb166, label %bb167
bb166:
  %t624 = load ptr, ptr %l1, !tbaa !29
  %t626 = getelementptr { i64, [5 x i64] }, ptr %t624, i32 0, i32 1
  %t627 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t626, i32 0, i32 2
  %t628 = load ptr, ptr %t627
  store ptr %t628, ptr %l36, !tbaa !29
  br label %bb168
bb167:
  br label %bb196
bb168:
  %t630 = load ptr, ptr %l36, !tbaa !29
  store ptr %t630, ptr %l321, !tbaa !29
  store i1 false, ptr %l322, !tbaa !21
  %t631 = load ptr, ptr %l321, !tbaa !29
  %t632 = icmp ne ptr %t631, null
  br i1 %t632, label %bb169, label %bb170
bb169:
  %t634 = load ptr, ptr %l321, !tbaa !29
  %t635 = load i64, ptr %t634, !range !{i64 0, i64 3}
  %t637 = icmp eq i64 %t635, 1
  store i1 %t637, ptr %l322, !tbaa !21
  br label %bb170
bb170:
  %t638 = load i1, ptr %l322, !tbaa !21
  br i1 %t638, label %bb171, label %bb172
bb171:
  %t639 = load ptr, ptr %l36, !tbaa !29
  %t641 = getelementptr { i64, [4 x i64] }, ptr %t639, i32 0, i32 1
  %t642 = getelementptr { i32, { i64, ptr }, i32 }, ptr %t641, i32 0, i32 1
  %t643 = load { i64, ptr }, ptr %t642
  store { i64, ptr } %t643, ptr %l37, !tbaa !27
  br label %bb173
bb172:
  br label %bb181
bb173:
  %t645 = load { i64, ptr }, ptr %l37, !tbaa !27
  store { i64, ptr } %t645, ptr %l38, !tbaa !27
  store i64 0, ptr %l39, !tbaa !24
  %t647 = load { i64, ptr }, ptr %l38, !tbaa !27
  %t649 = extractvalue { i64, ptr } %t647, 0
  store i64 %t649, ptr %l40, !tbaa !24
  br label %bb174
bb174:
  %t651 = load i64, ptr %l39, !tbaa !24
  %t652 = load i64, ptr %l40, !tbaa !24
  %t655 = icmp slt i64 %t651, %t652
  %t657 = xor i1 %t655, true
  br i1 %t657, label %bb175, label %bb176
bb175:
  br label %bb180
bb176:
  br label %bb177
bb177:
  %t659 = load { i64, ptr }, ptr %l38, !tbaa !27
  store { i64, ptr } %t659, ptr %l334, !tbaa !27
  %t660 = load i64, ptr %l39, !tbaa !24
  %t662 = getelementptr { i64, ptr }, ptr %l334, i32 0, i32 1
  %t663 = load ptr, ptr %t662, !tbaa !27
  %t664 = getelementptr ptr, ptr %t663, i64 %t660
  %t665 = load ptr, ptr %t664, !tbaa !39
  %t667 = load ptr, ptr %l0, !tbaa !29
  %t670 = getelementptr %"compiler/typed:Capture", ptr %t665, i32 0, i32 1
  %t671 = load ptr, ptr %t670, !tbaa !29
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aLandings_2eexpr(ptr %v0, ptr %v1, ptr %t667, ptr %t671)
  br label %bb178
bb178:
  br label %bb179
bb179:
  %t675 = load i64, ptr %l39, !tbaa !24
  %t677 = add i64 %t675, 1
  store i64 %t677, ptr %l39, !tbaa !24
  br label %bb174
bb180:
  br label %bb195
bb181:
  %t679 = load ptr, ptr %l36, !tbaa !29
  store ptr %t679, ptr %l343, !tbaa !29
  store i1 false, ptr %l344, !tbaa !21
  %t680 = load ptr, ptr %l343, !tbaa !29
  %t681 = icmp ne ptr %t680, null
  br i1 %t681, label %bb182, label %bb183
bb182:
  %t683 = load ptr, ptr %l343, !tbaa !29
  %t684 = load i64, ptr %t683, !range !{i64 0, i64 3}
  %t686 = icmp eq i64 %t684, 2
  store i1 %t686, ptr %l344, !tbaa !21
  br label %bb183
bb183:
  %t687 = load i1, ptr %l344, !tbaa !21
  br i1 %t687, label %bb184, label %bb185
bb184:
  %t688 = load ptr, ptr %l36, !tbaa !29
  %t690 = getelementptr { i64, [4 x i64] }, ptr %t688, i32 0, i32 1
  %t691 = getelementptr { i32, ptr, i32 }, ptr %t690, i32 0, i32 1
  %t692 = load ptr, ptr %t691
  store ptr %t692, ptr %l42, !tbaa !29
  br label %bb186
bb185:
  br label %bb188
bb186:
  %t694 = load ptr, ptr %l0, !tbaa !29
  %t695 = load ptr, ptr %l42, !tbaa !29
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aLandings_2eexpr(ptr %v0, ptr %v1, ptr %t694, ptr %t695)
  br label %bb187
bb187:
  br label %bb195
bb188:
  %t699 = load ptr, ptr %l36, !tbaa !29
  store ptr %t699, ptr %l352, !tbaa !29
  store i1 false, ptr %l353, !tbaa !21
  %t700 = load ptr, ptr %l352, !tbaa !29
  %t701 = icmp ne ptr %t700, null
  br i1 %t701, label %bb189, label %bb190
bb189:
  %t703 = load ptr, ptr %l352, !tbaa !29
  %t704 = load i64, ptr %t703, !range !{i64 0, i64 3}
  %t706 = icmp eq i64 %t704, 0
  store i1 %t706, ptr %l353, !tbaa !21
  br label %bb190
bb190:
  %t707 = load i1, ptr %l353, !tbaa !21
  br i1 %t707, label %bb191, label %bb192
bb191:
  br label %bb193
bb192:
  br label %bb194
bb193:
  br label %bb195
bb194:
  call void @__olang_check_failed(ptr @olang_loc_3f422f8bccda2eb4_607c7ad0cff40408)
  unreachable
bb195:
  br label %bb222
bb196:
  %t708 = load ptr, ptr %l1, !tbaa !29
  store ptr %t708, ptr %l356, !tbaa !29
  store i1 false, ptr %l357, !tbaa !21
  %t709 = load ptr, ptr %l356, !tbaa !29
  %t710 = icmp ne ptr %t709, null
  br i1 %t710, label %bb197, label %bb198
bb197:
  %t712 = load ptr, ptr %l356, !tbaa !29
  %t713 = load i64, ptr %t712, !range !{i64 0, i64 18}
  %t715 = icmp eq i64 %t713, 16
  store i1 %t715, ptr %l357, !tbaa !21
  br label %bb198
bb198:
  %t716 = load i1, ptr %l357, !tbaa !21
  br i1 %t716, label %bb199, label %bb200
bb199:
  %t717 = load ptr, ptr %l1, !tbaa !29
  %t719 = getelementptr { i64, [5 x i64] }, ptr %t717, i32 0, i32 1
  %t720 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t719, i32 0, i32 2
  %t721 = load ptr, ptr %t720
  store ptr %t721, ptr %l43, !tbaa !29
  br label %bb201
bb200:
  br label %bb214
bb201:
  %t723 = load ptr, ptr %l43, !tbaa !29
  %t725 = getelementptr %"compiler/typed:Text", ptr %t723, i32 0, i32 0
  %t726 = load { i64, ptr }, ptr %t725, !tbaa !27
  store { i64, ptr } %t726, ptr %l44, !tbaa !27
  store i64 0, ptr %l45, !tbaa !24
  %t728 = load { i64, ptr }, ptr %l44, !tbaa !27
  %t730 = extractvalue { i64, ptr } %t728, 0
  store i64 %t730, ptr %l46, !tbaa !24
  br label %bb202
bb202:
  %t732 = load i64, ptr %l45, !tbaa !24
  %t733 = load i64, ptr %l46, !tbaa !24
  %t736 = icmp slt i64 %t732, %t733
  %t738 = xor i1 %t736, true
  br i1 %t738, label %bb203, label %bb204
bb203:
  br label %bb213
bb204:
  br label %bb205
bb205:
  %t740 = load { i64, ptr }, ptr %l44, !tbaa !27
  store { i64, ptr } %t740, ptr %l370, !tbaa !27
  %t741 = load i64, ptr %l45, !tbaa !24
  %t743 = getelementptr { i64, ptr }, ptr %l370, i32 0, i32 1
  %t744 = load ptr, ptr %t743, !tbaa !27
  %t745 = getelementptr ptr, ptr %t744, i64 %t741
  %t746 = load ptr, ptr %t745, !tbaa !39
  store ptr %t746, ptr %l47, !tbaa !29
  %t748 = load ptr, ptr %l47, !tbaa !29
  store ptr %t748, ptr %l373, !tbaa !29
  store i1 false, ptr %l374, !tbaa !21
  %t749 = load ptr, ptr %l373, !tbaa !29
  %t750 = icmp ne ptr %t749, null
  br i1 %t750, label %bb206, label %bb207
bb206:
  %t752 = load ptr, ptr %l373, !tbaa !29
  %t753 = load i64, ptr %t752, !range !{i64 0, i64 2}
  %t755 = icmp eq i64 %t753, 1
  store i1 %t755, ptr %l374, !tbaa !21
  br label %bb207
bb207:
  %t756 = load i1, ptr %l374, !tbaa !21
  br i1 %t756, label %bb208, label %bb209
bb208:
  %t757 = load ptr, ptr %l47, !tbaa !29
  %t759 = getelementptr { i64, [2 x i64] }, ptr %t757, i32 0, i32 1
  %t760 = getelementptr { ptr }, ptr %t759, i32 0, i32 0
  %t761 = load ptr, ptr %t760
  %t763 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aLandings_2eexpr(ptr %v0, ptr %v1, ptr %t763, ptr %t761)
  br label %bb210
bb209:
  br label %bb211
bb210:
  br label %bb211
bb211:
  br label %bb212
bb212:
  %t768 = load i64, ptr %l45, !tbaa !24
  %t770 = add i64 %t768, 1
  store i64 %t770, ptr %l45, !tbaa !24
  br label %bb202
bb213:
  br label %bb222
bb214:
  %t772 = load ptr, ptr %l1, !tbaa !29
  store ptr %t772, ptr %l384, !tbaa !29
  store i1 false, ptr %l385, !tbaa !21
  %t773 = load ptr, ptr %l384, !tbaa !29
  %t774 = icmp ne ptr %t773, null
  br i1 %t774, label %bb215, label %bb216
bb215:
  %t776 = load ptr, ptr %l384, !tbaa !29
  %t777 = load i64, ptr %t776, !range !{i64 0, i64 18}
  %t779 = icmp eq i64 %t777, 17
  store i1 %t779, ptr %l385, !tbaa !21
  br label %bb216
bb216:
  %t780 = load i1, ptr %l385, !tbaa !21
  br i1 %t780, label %bb217, label %bb218
bb217:
  %t781 = load ptr, ptr %l1, !tbaa !29
  %t783 = getelementptr { i64, [5 x i64] }, ptr %t781, i32 0, i32 1
  %t784 = getelementptr { %"compiler/source:Span", i64, ptr }, ptr %t783, i32 0, i32 2
  %t785 = load ptr, ptr %t784
  store ptr %t785, ptr %l49, !tbaa !29
  br label %bb219
bb218:
  br label %bb221
bb219:
  %t787 = load ptr, ptr %l0, !tbaa !29
  %t788 = load ptr, ptr %l49, !tbaa !29
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aLandings_2eexpr(ptr %v0, ptr %v1, ptr %t787, ptr %t788)
  br label %bb220
bb220:
  br label %bb222
bb221:
  call void @__olang_check_failed(ptr @olang_loc_90af12c8bdcc10ef_2ee3a51413a547e3)
  unreachable
bb222:
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2ftyped_2ecompiler_2ftyped_3aLandings_2eholds(ptr %v0, ptr %a0, i64 %a1, i64 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l12 = alloca i1
  %l18 = alloca i1
  %l20 = alloca { i64, ptr }
  %l27 = alloca i64
  %l31 = alloca i64
  %l34 = alloca i64
  %l55 = alloca i64
  %l59 = alloca i1
  %l63 = alloca i1
  %l65 = alloca i1
  %l68 = alloca i1
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
  store i1 true, ptr %l12, !tbaa !21
  br label %bb3
bb2:
  %t5 = load i64, ptr %l1, !tbaa !24
  %t6 = load ptr, ptr %l0, !tbaa !29
  %t8 = getelementptr %"compiler/typed:Landings", ptr %t6, i32 0, i32 2
  %t9 = load { i64, ptr }, ptr %t8, !tbaa !27
  %t11 = extractvalue { i64, ptr } %t9, 0
  %t14 = icmp sge i64 %t5, %t11
  store i1 %t14, ptr %l12, !tbaa !21
  br label %bb3
bb3:
  %t16 = load i1, ptr %l12, !tbaa !21
  br i1 %t16, label %bb4, label %bb5
bb4:
  store i1 true, ptr %l18, !tbaa !21
  br label %bb6
bb5:
  %t17 = load ptr, ptr %l0, !tbaa !29
  %t19 = getelementptr %"compiler/typed:Landings", ptr %t17, i32 0, i32 2
  %t20 = load { i64, ptr }, ptr %t19, !tbaa !27
  store { i64, ptr } %t20, ptr %l20, !tbaa !27
  %t21 = load i64, ptr %l1, !tbaa !24
  %t23 = getelementptr { i64, ptr }, ptr %l20, i32 0, i32 1
  %t24 = load ptr, ptr %t23, !tbaa !27
  %t25 = getelementptr i1, ptr %t24, i64 %t21
  %t26 = load i1, ptr %t25, !tbaa !31
  %t28 = xor i1 %t26, true
  store i1 %t28, ptr %l18, !tbaa !21
  br label %bb6
bb6:
  %t30 = load i1, ptr %l18, !tbaa !21
  br i1 %t30, label %bb7, label %bb8
bb7:
  br label %ret
bb8:
  br label %bb9
bb9:
  store i64 %a2, ptr %l3, !tbaa !24
  %t33 = load ptr, ptr %l0, !tbaa !29
  %t35 = getelementptr %"compiler/typed:Landings", ptr %t33, i32 0, i32 15
  %t37 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %t35)
  store i64 %t37, ptr %l27
  br label %bb10
bb10:
  %t38 = load i64, ptr %l27, !tbaa !24
  store i64 %t38, ptr %l4, !tbaa !24
  store i64 1, ptr %l5, !tbaa !24
  %t39 = load i64, ptr %l4, !tbaa !24
  %t40 = load i64, ptr %l3, !tbaa !24
  %t43 = icmp sgt i64 %t39, %t40
  br i1 %t43, label %bb11, label %bb12
bb11:
  %t45 = load i64, ptr %l5, !tbaa !24
  %t47 = icmp sgt i64 %t45, 0
  br i1 %t47, label %bb13, label %bb14
bb12:
  store i64 0, ptr %l31, !tbaa !24
  br label %bb16
bb13:
  %t49 = load i64, ptr %l4, !tbaa !24
  %t50 = load i64, ptr %l3, !tbaa !24
  %t53 = sub i64 %t49, %t50
  %t54 = load i64, ptr %l5, !tbaa !24
  %t57 = add i64 %t53, %t54
  %t59 = sub i64 %t57, 1
  %t60 = load i64, ptr %l5, !tbaa !24
  %t63 = sdiv i64 %t59, %t60
  store i64 %t63, ptr %l34, !tbaa !24
  br label %bb15
bb14:
  store i64 0, ptr %l34, !tbaa !24
  br label %bb15
bb15:
  %t65 = load i64, ptr %l34, !tbaa !24
  store i64 %t65, ptr %l31, !tbaa !24
  br label %bb16
bb16:
  %t66 = load i64, ptr %l31, !tbaa !24
  store i64 %t66, ptr %l6, !tbaa !24
  store i64 0, ptr %l7, !tbaa !24
  br label %bb17
bb17:
  %t67 = load i64, ptr %l7, !tbaa !24
  %t68 = load i64, ptr %l6, !tbaa !24
  %t71 = icmp slt i64 %t67, %t68
  %t73 = xor i1 %t71, true
  br i1 %t73, label %bb18, label %bb19
bb18:
  br label %bb36
bb19:
  br label %bb20
bb20:
  %t75 = load i64, ptr %l3, !tbaa !24
  %t76 = load i64, ptr %l7, !tbaa !24
  %t77 = load i64, ptr %l5, !tbaa !24
  %t80 = mul i64 %t76, %t77
  %t83 = add i64 %t75, %t80
  store i64 %t83, ptr %l8, !tbaa !24
  %t85 = load ptr, ptr %l0, !tbaa !29
  %t87 = getelementptr %"compiler/typed:Landings", ptr %t85, i32 0, i32 15
  %t88 = load i64, ptr %l8, !tbaa !24
  %t91 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t87, i64 %t88)
  store i64 %t91, ptr %l55
  br label %bb21
bb21:
  %t92 = load i64, ptr %l55, !tbaa !24
  store i64 %t92, ptr %l9, !tbaa !24
  %t93 = load i64, ptr %l9, !tbaa !24
  %t94 = load i64, ptr %l1, !tbaa !24
  %t97 = icmp eq i64 %t93, %t94
  br i1 %t97, label %bb22, label %bb23
bb22:
  store i1 true, ptr %l59, !tbaa !21
  br label %bb25
bb23:
  %t99 = load ptr, ptr %l0, !tbaa !29
  %t101 = getelementptr %"compiler/typed:Landings", ptr %t99, i32 0, i32 19
  %t102 = load i64, ptr %l8, !tbaa !24
  %t105 = call i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eAt_3cBool_3e(ptr %v0, ptr %t101, i64 %t102)
  store i1 %t105, ptr %l63
  br label %bb24
bb24:
  %t106 = load i1, ptr %l63, !tbaa !21
  %t107 = xor i1 %t106, true
  store i1 %t107, ptr %l59, !tbaa !21
  br label %bb25
bb25:
  %t109 = load i1, ptr %l59, !tbaa !21
  br i1 %t109, label %bb26, label %bb27
bb26:
  store i1 true, ptr %l65, !tbaa !21
  br label %bb29
bb27:
  %t110 = load ptr, ptr %l0, !tbaa !29
  %t111 = load i64, ptr %l9, !tbaa !24
  %t114 = call i1 @compiler_2ftyped_2ecompiler_2ftyped_3aLandings_2ewatched(ptr %v0, ptr %t110, i64 %t111)
  store i1 %t114, ptr %l68
  br label %bb28
bb28:
  %t115 = load i1, ptr %l68, !tbaa !21
  %t116 = xor i1 %t115, true
  store i1 %t116, ptr %l65, !tbaa !21
  br label %bb29
bb29:
  %t118 = load i1, ptr %l65, !tbaa !21
  br i1 %t118, label %bb30, label %bb31
bb30:
  br label %bb35
bb31:
  br label %bb32
bb32:
  %t119 = load ptr, ptr %l0, !tbaa !29
  %t121 = getelementptr %"compiler/typed:Landings", ptr %t119, i32 0, i32 21
  %t122 = load i64, ptr %l1, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %t121, i64 %t122)
  br label %bb33
bb33:
  %t125 = load ptr, ptr %l0, !tbaa !29
  %t127 = getelementptr %"compiler/typed:Landings", ptr %t125, i32 0, i32 22
  %t128 = load i64, ptr %l9, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %t127, i64 %t128)
  br label %bb34
bb34:
  br label %bb35
bb35:
  %t131 = load i64, ptr %l7, !tbaa !24
  %t133 = add i64 %t131, 1
  store i64 %t133, ptr %l7, !tbaa !24
  br label %bb17
bb36:
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2ftyped_2ecompiler_2ftyped_3aLandings_2eifStmt(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca %"compiler/typed:landState"
  %l3 = alloca %"compiler/typed:landState"
  %l9 = alloca %"compiler/typed:landState"
  %l15 = alloca %"compiler/typed:landState"
  %s0 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load ptr, ptr %l1, !tbaa !29
  %t4 = getelementptr %"compiler/typed:If", ptr %t2, i32 0, i32 0
  %t5 = load ptr, ptr %t4, !tbaa !29
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aLandings_2eexpr(ptr %v0, ptr %v1, ptr %t1, ptr %t5)
  br label %bb1
bb1:
  %t9 = load ptr, ptr %l0, !tbaa !29
  %t11 = call %"compiler/typed:landState" @compiler_2ftyped_2ecompiler_2ftyped_3aLandings_2esave(ptr %v0, ptr %s0, ptr %t9)
  store %"compiler/typed:landState" %t11, ptr %l9
  br label %bb2
bb2:
  %t12 = load %"compiler/typed:landState", ptr %l9
  store %"compiler/typed:landState" %t12, ptr %l2
  %t13 = load ptr, ptr %l0, !tbaa !29
  %t14 = load ptr, ptr %l1, !tbaa !29
  %t16 = getelementptr %"compiler/typed:If", ptr %t14, i32 0, i32 1
  %t17 = load ptr, ptr %t16, !tbaa !29
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aLandings_2eblock(ptr %v0, ptr %v1, ptr %t13, ptr %t17)
  br label %bb3
bb3:
  %t21 = load ptr, ptr %l0, !tbaa !29
  %t23 = call %"compiler/typed:landState" @compiler_2ftyped_2ecompiler_2ftyped_3aLandings_2esave(ptr %v0, ptr %s0, ptr %t21)
  store %"compiler/typed:landState" %t23, ptr %l15
  br label %bb4
bb4:
  %t24 = load %"compiler/typed:landState", ptr %l15
  store %"compiler/typed:landState" %t24, ptr %l3
  %t25 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aLandings_2erestore(ptr %v0, ptr %s0, ptr %t25, ptr %l2)
  br label %bb5
bb5:
  %t28 = load ptr, ptr %l0, !tbaa !29
  %t29 = load ptr, ptr %l1, !tbaa !29
  %t31 = getelementptr %"compiler/typed:If", ptr %t29, i32 0, i32 2
  %t32 = load ptr, ptr %t31, !tbaa !29
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aLandings_2eblock(ptr %v0, ptr %v1, ptr %t28, ptr %t32)
  br label %bb6
bb6:
  %t35 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aLandings_2emeet(ptr %v0, ptr %s0, ptr %t35, ptr %l3)
  br label %bb7
bb7:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2ftyped_2ecompiler_2ftyped_3aLandings_2ejump(ptr %v0, ptr %a0, i32 %a1, i32 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l3 = alloca i64
  %l4 = alloca %"compiler/typed:landLoop"
  %l9 = alloca i64
  %l17 = alloca %"compiler/typed:landLoop"
  %l24 = alloca %"compiler/typed:landLoop"
  %s3 = alloca %olang.scope
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/typed:Landings", ptr %t1, i32 0, i32 7
  %t4 = load i1, ptr %t3, !tbaa !21
  br i1 %t4, label %bb1, label %bb2
bb1:
  br label %ret
bb2:
  br label %bb3
bb3:
  %t6 = load ptr, ptr %l0, !tbaa !29
  %t8 = getelementptr %"compiler/typed:Landings", ptr %t6, i32 0, i32 8
  %t10 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3alandLoop_3e_2eLen_3ccompiler_2ftyped_3alandLoop_3e(ptr %v0, ptr %t8)
  store i64 %t10, ptr %l9
  br label %bb4
bb4:
  %t11 = load i64, ptr %l9, !tbaa !24
  %t12 = sub i64 %t11, 1
  store i64 %t12, ptr %l3, !tbaa !24
  br label %bb5
bb5:
  store %olang.scope zeroinitializer, ptr %s3
  %t14 = load i64, ptr %l3, !tbaa !24
  %t16 = icmp sge i64 %t14, 0
  %t18 = xor i1 %t16, true
  br i1 %t18, label %bb6, label %bb7
bb6:
  call void @__olang_scope_close(ptr %s3)
  br label %bb21
bb7:
  br label %bb8
bb8:
  %t20 = load ptr, ptr %l0, !tbaa !29
  %t22 = getelementptr %"compiler/typed:Landings", ptr %t20, i32 0, i32 8
  %t23 = load i64, ptr %l3, !tbaa !24
  %t26 = call %"compiler/typed:landLoop" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3alandLoop_3e_2eAt_3ccompiler_2ftyped_3alandLoop_3e(ptr %v0, ptr %s3, ptr %t22, i64 %t23)
  store %"compiler/typed:landLoop" %t26, ptr %l17
  br label %bb9
bb9:
  %t27 = getelementptr %"compiler/typed:landLoop", ptr %l17, i32 0, i32 0
  %t28 = load i32, ptr %t27, !tbaa !23
  %t32 = icmp ne i32 %t28, %a2
  br i1 %t32, label %bb10, label %bb11
bb10:
  call void @__olang_scope_close(ptr %s3)
  br label %bb20
bb11:
  br label %bb12
bb12:
  %t34 = load ptr, ptr %l0, !tbaa !29
  %t36 = getelementptr %"compiler/typed:Landings", ptr %t34, i32 0, i32 8
  %t37 = load i64, ptr %l3, !tbaa !24
  %t40 = call %"compiler/typed:landLoop" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3alandLoop_3e_2eAt_3ccompiler_2ftyped_3alandLoop_3e(ptr %v0, ptr %v0, ptr %t36, i64 %t37)
  store %"compiler/typed:landLoop" %t40, ptr %l24
  br label %bb13
bb13:
  %t41 = load %"compiler/typed:landLoop", ptr %l24
  store %"compiler/typed:landLoop" %t41, ptr %l4
  %t44 = trunc i64 0 to i32
  %t45 = icmp eq i32 %a1, %t44
  br i1 %t45, label %bb14, label %bb15
bb14:
  %t47 = getelementptr %"compiler/typed:landLoop", ptr %l4, i32 0, i32 2
  %t48 = load { i64, ptr }, ptr %t47, !tbaa !27
  %t49 = load ptr, ptr %l0, !tbaa !29
  %t51 = getelementptr %"compiler/typed:Landings", ptr %t49, i32 0, i32 6
  %t52 = load { i64, ptr }, ptr %t51, !tbaa !27
  call void @compiler_2ftyped_2eorInto(ptr %v0, ptr %v0, { i64, ptr } %t48, { i64, ptr } %t52)
  br label %bb16
bb15:
  %t55 = getelementptr %"compiler/typed:landLoop", ptr %l4, i32 0, i32 3
  %t56 = load { i64, ptr }, ptr %t55, !tbaa !27
  %t57 = load ptr, ptr %l0, !tbaa !29
  %t59 = getelementptr %"compiler/typed:Landings", ptr %t57, i32 0, i32 6
  %t60 = load { i64, ptr }, ptr %t59, !tbaa !27
  call void @compiler_2ftyped_2eorInto(ptr %v0, ptr %v0, { i64, ptr } %t56, { i64, ptr } %t60)
  br label %bb17
bb16:
  %t63 = getelementptr %"compiler/typed:landLoop", ptr %l4, i32 0, i32 4
  store i1 true, ptr %t63, !tbaa !21
  br label %bb18
bb17:
  %t64 = getelementptr %"compiler/typed:landLoop", ptr %l4, i32 0, i32 5
  store i1 true, ptr %t64, !tbaa !21
  br label %bb18
bb18:
  %t65 = load ptr, ptr %l0, !tbaa !29
  %t67 = getelementptr %"compiler/typed:Landings", ptr %t65, i32 0, i32 8
  %t68 = load i64, ptr %l3, !tbaa !24
  %t69 = load %"compiler/typed:landLoop", ptr %l4
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3alandLoop_3e_2eSetAt_H5ab2aabe0ae7951e8bb06fbe4ca7219a(ptr %v0, ptr %v0, ptr %t67, i64 %t68, %"compiler/typed:landLoop" %t69)
  br label %bb19
bb19:
  call void @__olang_scope_close(ptr %s3)
  br label %bb21
bb20:
  %t73 = load i64, ptr %l3, !tbaa !24
  %t75 = sub i64 %t73, 1
  store i64 %t75, ptr %l3, !tbaa !24
  br label %bb5
bb21:
  %t77 = load ptr, ptr %l0, !tbaa !29
  %t79 = getelementptr %"compiler/typed:Landings", ptr %t77, i32 0, i32 7
  store i1 true, ptr %t79, !tbaa !21
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2ftyped_2ecompiler_2ftyped_3aLandings_2elaterBlock(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
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
  %t3 = getelementptr %"compiler/typed:Landings", ptr %t2, i32 0, i32 9
  %t4 = load i64, ptr %t3, !tbaa !24
  %t6 = add i64 %t4, 1
  %t8 = load ptr, ptr %l2, !tbaa !29
  %t9 = getelementptr %"compiler/typed:Landings", ptr %t8, i32 0, i32 9
  store i64 %t6, ptr %t9, !tbaa !24
  %t10 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aLandings_2eblock(ptr %v0, ptr %v1, ptr %t10, ptr %a1)
  br label %bb1
bb1:
  %t14 = load ptr, ptr %l0, !tbaa !29
  store ptr %t14, ptr %l7, !tbaa !29
  %t15 = load ptr, ptr %l7, !tbaa !29
  %t16 = getelementptr %"compiler/typed:Landings", ptr %t15, i32 0, i32 9
  %t17 = load i64, ptr %t16, !tbaa !24
  %t19 = sub i64 %t17, 1
  %t21 = load ptr, ptr %l7, !tbaa !29
  %t22 = getelementptr %"compiler/typed:Landings", ptr %t21, i32 0, i32 9
  store i64 %t19, ptr %t22, !tbaa !24
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2ftyped_2ecompiler_2ftyped_3aLandings_2ematchExpr(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca { i64, ptr }
  %l3 = alloca i64
  %l4 = alloca i64
  %l6 = alloca %"compiler/typed:landState"
  %l7 = alloca %"compiler/typed:landState"
  %l8 = alloca { i64, ptr }
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca ptr
  %l20 = alloca { i64, ptr }
  %l28 = alloca %"compiler/typed:landState"
  %l29 = alloca i64
  %l33 = alloca i64
  %l36 = alloca %"compiler/typed:landState"
  %l45 = alloca { i64, ptr }
  %l55 = alloca %"compiler/typed:landState"
  %l56 = alloca %"compiler/typed:landState"
  %l66 = alloca ptr
  %l75 = alloca %"compiler/typed:landState"
  %l76 = alloca %"compiler/typed:landState"
  %s0 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l1, !tbaa !29
  %t3 = getelementptr %"compiler/typed:Match", ptr %t1, i32 0, i32 0
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
  br label %bb7
bb3:
  br label %bb4
bb4:
  %t18 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t18, ptr %l20, !tbaa !27
  %t19 = load i64, ptr %l3, !tbaa !24
  %t21 = getelementptr { i64, ptr }, ptr %l20, i32 0, i32 1
  %t22 = load ptr, ptr %t21, !tbaa !27
  %t23 = getelementptr ptr, ptr %t22, i64 %t19
  %t24 = load ptr, ptr %t23, !tbaa !39
  %t26 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aLandings_2estmt(ptr %v0, ptr %v1, ptr %t26, ptr %t24)
  br label %bb5
bb5:
  br label %bb6
bb6:
  %t30 = load i64, ptr %l3, !tbaa !24
  %t32 = add i64 %t30, 1
  store i64 %t32, ptr %l3, !tbaa !24
  br label %bb1
bb7:
  %t34 = load ptr, ptr %l0, !tbaa !29
  %t36 = call %"compiler/typed:landState" @compiler_2ftyped_2ecompiler_2ftyped_3aLandings_2esave(ptr %v0, ptr %s0, ptr %t34)
  store %"compiler/typed:landState" %t36, ptr %l28
  br label %bb8
bb8:
  %t37 = load %"compiler/typed:landState", ptr %l28
  store %"compiler/typed:landState" %t37, ptr %l6
  %t38 = ptrtoint ptr %s0 to i64
  store i64 %t38, ptr %l29, !tbaa !24
  %t39 = load i1, ptr @olang_2esole_2ecompiler_2ftyped_3alandState_2e0
  br i1 %t39, label %bb9, label %bb10
bb9:
  %t41 = call ptr @__olang_region_make(ptr %s0)
  %t42 = ptrtoint ptr %t41 to i64
  store i64 %t42, ptr %l29, !tbaa !24
  br label %bb10
bb10:
  %t43 = load ptr, ptr %l0, !tbaa !29
  %t45 = getelementptr %"compiler/typed:Landings", ptr %t43, i32 0, i32 6
  %t46 = load { i64, ptr }, ptr %t45, !tbaa !27
  %t48 = extractvalue { i64, ptr } %t46, 0
  store i64 %t48, ptr %l33, !tbaa !24
  %t49 = load i64, ptr %l33, !tbaa !24
  %t50 = icmp sge i64 %t49, 0
  br i1 %t50, label %bb11, label %bb12
bb11:
  %t52 = load i64, ptr %l33, !tbaa !24
  %t53 = mul i64 %t52, 1
  %t54 = load i64, ptr %l29
  %t55 = inttoptr i64 %t54 to ptr
  %t56 = call ptr @__olang_scope_alloc_zeroed(ptr %t55, i64 %t53)
  %t57 = insertvalue { i64, ptr } undef, i64 %t52, 0
  %t58 = insertvalue { i64, ptr } %t57, ptr %t56, 1
  %t60 = call %"compiler/typed:landState" @compiler_2ftyped_3alandState_2ector(ptr %s0, ptr %s0, { i64, ptr } %t58, i1 true)
  store %"compiler/typed:landState" %t60, ptr %l36
  br label %bb13
bb12:
  call void @__olang_check_failed(ptr @olang_loc_17d1ac1d0088a46d_f6898a8fba654071)
  unreachable
bb13:
  %t61 = load %"compiler/typed:landState", ptr %l36
  store %"compiler/typed:landState" %t61, ptr %l7
  %t62 = load ptr, ptr %l1, !tbaa !29
  %t64 = getelementptr %"compiler/typed:Match", ptr %t62, i32 0, i32 1
  %t65 = load { i64, ptr }, ptr %t64, !tbaa !27
  store { i64, ptr } %t65, ptr %l8, !tbaa !27
  store i64 0, ptr %l9, !tbaa !24
  %t67 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t69 = extractvalue { i64, ptr } %t67, 0
  store i64 %t69, ptr %l10, !tbaa !24
  br label %bb14
bb14:
  %t71 = load i64, ptr %l9, !tbaa !24
  %t72 = load i64, ptr %l10, !tbaa !24
  %t75 = icmp slt i64 %t71, %t72
  %t77 = xor i1 %t75, true
  br i1 %t77, label %bb15, label %bb16
bb15:
  br label %bb25
bb16:
  br label %bb17
bb17:
  %t79 = load { i64, ptr }, ptr %l8, !tbaa !27
  store { i64, ptr } %t79, ptr %l45, !tbaa !27
  %t80 = load i64, ptr %l9, !tbaa !24
  %t82 = getelementptr { i64, ptr }, ptr %l45, i32 0, i32 1
  %t83 = load ptr, ptr %t82, !tbaa !27
  %t84 = getelementptr ptr, ptr %t83, i64 %t80
  %t85 = load ptr, ptr %t84, !tbaa !39
  store ptr %t85, ptr %l11, !tbaa !29
  %t87 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aLandings_2erestore(ptr %v0, ptr %s0, ptr %t87, ptr %l6)
  br label %bb18
bb18:
  %t90 = load ptr, ptr %l0, !tbaa !29
  %t91 = load ptr, ptr %l11, !tbaa !29
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aLandings_2earm(ptr %v0, ptr %v1, ptr %t90, ptr %t91)
  br label %bb19
bb19:
  %t94 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aLandings_2emeet(ptr %v0, ptr %s0, ptr %t94, ptr %l7)
  br label %bb20
bb20:
  %t97 = load ptr, ptr %l0, !tbaa !29
  %t99 = call %"compiler/typed:landState" @compiler_2ftyped_2ecompiler_2ftyped_3aLandings_2esave(ptr %v0, ptr %s0, ptr %t97)
  store %"compiler/typed:landState" %t99, ptr %l55
  br label %bb21
bb21:
  %t100 = load %"compiler/typed:landState", ptr %l7
  store %"compiler/typed:landState" %t100, ptr %l56
  %t101 = load %"compiler/typed:landState", ptr %l55
  store %"compiler/typed:landState" %t101, ptr %l7
  %t102 = load i1, ptr @olang_2esole_2ecompiler_2ftyped_3alandState_2e0
  br i1 %t102, label %bb22, label %bb23
bb22:
  %t104 = getelementptr %"compiler/typed:landState", ptr %l56, i32 0, i32 0
  %t105 = load { i64, ptr }, ptr %t104
  %t106 = extractvalue { i64, ptr } %t105, 1
  call void @__olang_region_release(ptr %t106)
  store { i64, ptr } zeroinitializer, ptr %t104
  br label %bb23
bb23:
  br label %bb24
bb24:
  %t107 = load i64, ptr %l9, !tbaa !24
  %t109 = add i64 %t107, 1
  store i64 %t109, ptr %l9, !tbaa !24
  br label %bb14
bb25:
  %t111 = load ptr, ptr %l1, !tbaa !29
  %t113 = getelementptr %"compiler/typed:Match", ptr %t111, i32 0, i32 2
  %t114 = load ptr, ptr %t113, !tbaa !29
  %t116 = icmp eq ptr %t114, null
  %t118 = xor i1 %t116, true
  br i1 %t118, label %bb26, label %bb27
bb26:
  %t120 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aLandings_2erestore(ptr %v0, ptr %s0, ptr %t120, ptr %l6)
  br label %bb28
bb27:
  br label %bb37
bb28:
  %t123 = load ptr, ptr %l0, !tbaa !29
  store ptr %t123, ptr %l66, !tbaa !29
  %t124 = load ptr, ptr %l1, !tbaa !29
  %t126 = getelementptr %"compiler/typed:Match", ptr %t124, i32 0, i32 2
  %t127 = load ptr, ptr %t126, !tbaa !29
  %t129 = icmp eq ptr %t127, null
  br i1 %t129, label %bb29, label %bb30
bb29:
  call void @__olang_check_failed(ptr @olang_loc_53c662fb23aaf808_98195192fab83824)
  unreachable
bb30:
  br label %bb31
bb31:
  %t131 = load ptr, ptr %l1, !tbaa !29
  %t133 = getelementptr %"compiler/typed:Match", ptr %t131, i32 0, i32 2
  %t134 = load ptr, ptr %t133, !tbaa !29
  %t135 = load ptr, ptr %l66, !tbaa !29
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aLandings_2earm(ptr %v0, ptr %v1, ptr %t135, ptr %t134)
  br label %bb32
bb32:
  %t137 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aLandings_2emeet(ptr %v0, ptr %s0, ptr %t137, ptr %l7)
  br label %bb33
bb33:
  %t140 = load ptr, ptr %l0, !tbaa !29
  %t142 = call %"compiler/typed:landState" @compiler_2ftyped_2ecompiler_2ftyped_3aLandings_2esave(ptr %v0, ptr %s0, ptr %t140)
  store %"compiler/typed:landState" %t142, ptr %l75
  br label %bb34
bb34:
  %t143 = load %"compiler/typed:landState", ptr %l7
  store %"compiler/typed:landState" %t143, ptr %l76
  %t144 = load %"compiler/typed:landState", ptr %l75
  store %"compiler/typed:landState" %t144, ptr %l7
  %t145 = load i1, ptr @olang_2esole_2ecompiler_2ftyped_3alandState_2e0
  br i1 %t145, label %bb35, label %bb36
bb35:
  %t147 = getelementptr %"compiler/typed:landState", ptr %l76, i32 0, i32 0
  %t148 = load { i64, ptr }, ptr %t147
  %t149 = extractvalue { i64, ptr } %t148, 1
  call void @__olang_region_release(ptr %t149)
  store { i64, ptr } zeroinitializer, ptr %t147
  br label %bb36
bb36:
  br label %bb37
bb37:
  %t150 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aLandings_2erestore(ptr %v0, ptr %s0, ptr %t150, ptr %l7)
  br label %bb38
bb38:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2ftyped_2ecompiler_2ftyped_3aLandings_2emeet(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i64
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l20 = alloca i64
  %l23 = alloca i64
  %l42 = alloca { i64, ptr }
  %l43 = alloca i64
  %l45 = alloca { i64, ptr }
  %l48 = alloca i1
  %l50 = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/typed:Landings", ptr %t1, i32 0, i32 7
  %t4 = load i1, ptr %t3, !tbaa !21
  br i1 %t4, label %bb1, label %bb2
bb1:
  %t6 = load ptr, ptr %l0, !tbaa !29
  %t7 = load ptr, ptr %l1, !tbaa !29
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aLandings_2erestore(ptr %v0, ptr %v1, ptr %t6, ptr %t7)
  br label %bb3
bb2:
  br label %bb4
bb3:
  br label %ret
bb4:
  %t10 = load ptr, ptr %l1, !tbaa !29
  %t12 = getelementptr %"compiler/typed:landState", ptr %t10, i32 0, i32 1
  %t13 = load i1, ptr %t12, !tbaa !21
  br i1 %t13, label %bb5, label %bb6
bb5:
  br label %ret
bb6:
  br label %bb7
bb7:
  store i64 0, ptr %l2, !tbaa !24
  %t15 = load ptr, ptr %l0, !tbaa !29
  %t17 = getelementptr %"compiler/typed:Landings", ptr %t15, i32 0, i32 6
  %t18 = load { i64, ptr }, ptr %t17, !tbaa !27
  %t20 = extractvalue { i64, ptr } %t18, 0
  store i64 %t20, ptr %l3, !tbaa !24
  store i64 1, ptr %l4, !tbaa !24
  %t22 = load i64, ptr %l3, !tbaa !24
  %t23 = load i64, ptr %l2, !tbaa !24
  %t26 = icmp sgt i64 %t22, %t23
  br i1 %t26, label %bb8, label %bb9
bb8:
  %t28 = load i64, ptr %l4, !tbaa !24
  %t30 = icmp sgt i64 %t28, 0
  br i1 %t30, label %bb10, label %bb11
bb9:
  store i64 0, ptr %l20, !tbaa !24
  br label %bb13
bb10:
  %t32 = load i64, ptr %l3, !tbaa !24
  %t33 = load i64, ptr %l2, !tbaa !24
  %t36 = sub i64 %t32, %t33
  %t37 = load i64, ptr %l4, !tbaa !24
  %t40 = add i64 %t36, %t37
  %t42 = sub i64 %t40, 1
  %t43 = load i64, ptr %l4, !tbaa !24
  %t46 = sdiv i64 %t42, %t43
  store i64 %t46, ptr %l23, !tbaa !24
  br label %bb12
bb11:
  store i64 0, ptr %l23, !tbaa !24
  br label %bb12
bb12:
  %t48 = load i64, ptr %l23, !tbaa !24
  store i64 %t48, ptr %l20, !tbaa !24
  br label %bb13
bb13:
  %t49 = load i64, ptr %l20, !tbaa !24
  store i64 %t49, ptr %l5, !tbaa !24
  store i64 0, ptr %l6, !tbaa !24
  br label %bb14
bb14:
  %t50 = load i64, ptr %l6, !tbaa !24
  %t51 = load i64, ptr %l5, !tbaa !24
  %t54 = icmp slt i64 %t50, %t51
  %t56 = xor i1 %t54, true
  br i1 %t56, label %bb15, label %bb16
bb15:
  br label %bb22
bb16:
  br label %bb17
bb17:
  %t58 = load i64, ptr %l2, !tbaa !24
  %t59 = load i64, ptr %l6, !tbaa !24
  %t60 = load i64, ptr %l4, !tbaa !24
  %t63 = mul i64 %t59, %t60
  %t66 = add i64 %t58, %t63
  store i64 %t66, ptr %l7, !tbaa !24
  %t68 = load ptr, ptr %l0, !tbaa !29
  %t70 = getelementptr %"compiler/typed:Landings", ptr %t68, i32 0, i32 6
  %t71 = load { i64, ptr }, ptr %t70, !tbaa !27
  store { i64, ptr } %t71, ptr %l42, !tbaa !27
  %t72 = load i64, ptr %l7, !tbaa !24
  store i64 %t72, ptr %l43, !tbaa !24
  %t73 = load ptr, ptr %l0, !tbaa !29
  %t75 = getelementptr %"compiler/typed:Landings", ptr %t73, i32 0, i32 6
  %t76 = load { i64, ptr }, ptr %t75, !tbaa !27
  store { i64, ptr } %t76, ptr %l45, !tbaa !27
  %t77 = load i64, ptr %l7, !tbaa !24
  %t79 = getelementptr { i64, ptr }, ptr %l45, i32 0, i32 1
  %t80 = load ptr, ptr %t79, !tbaa !27
  %t81 = getelementptr i1, ptr %t80, i64 %t77
  %t82 = load i1, ptr %t81, !tbaa !31
  br i1 %t82, label %bb18, label %bb19
bb18:
  store i1 true, ptr %l48, !tbaa !21
  br label %bb20
bb19:
  %t84 = load ptr, ptr %l1, !tbaa !29
  %t86 = getelementptr %"compiler/typed:landState", ptr %t84, i32 0, i32 0
  %t87 = load { i64, ptr }, ptr %t86, !tbaa !27
  store { i64, ptr } %t87, ptr %l50, !tbaa !27
  %t88 = load i64, ptr %l7, !tbaa !24
  %t90 = getelementptr { i64, ptr }, ptr %l50, i32 0, i32 1
  %t91 = load ptr, ptr %t90, !tbaa !27
  %t92 = getelementptr i1, ptr %t91, i64 %t88
  %t93 = load i1, ptr %t92, !tbaa !31
  store i1 %t93, ptr %l48, !tbaa !21
  br label %bb20
bb20:
  %t95 = load i1, ptr %l48, !tbaa !21
  %t96 = load i64, ptr %l43, !tbaa !24
  %t97 = getelementptr { i64, ptr }, ptr %l42, i32 0, i32 1
  %t98 = load ptr, ptr %t97, !tbaa !27
  %t99 = getelementptr i1, ptr %t98, i64 %t96
  store i1 %t95, ptr %t99, !tbaa !31
  br label %bb21
bb21:
  %t100 = load i64, ptr %l6, !tbaa !24
  %t102 = add i64 %t100, 1
  store i64 %t102, ptr %l6, !tbaa !24
  br label %bb14
bb22:
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2ftyped_2ecompiler_2ftyped_3aLandings_2erestore(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i64
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l14 = alloca i64
  %l17 = alloca i64
  %l36 = alloca { i64, ptr }
  %l39 = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store i64 0, ptr %l2, !tbaa !24
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/typed:Landings", ptr %t1, i32 0, i32 6
  %t4 = load { i64, ptr }, ptr %t3, !tbaa !27
  %t6 = extractvalue { i64, ptr } %t4, 0
  store i64 %t6, ptr %l3, !tbaa !24
  store i64 1, ptr %l4, !tbaa !24
  %t8 = load i64, ptr %l3, !tbaa !24
  %t9 = load i64, ptr %l2, !tbaa !24
  %t12 = icmp sgt i64 %t8, %t9
  br i1 %t12, label %bb1, label %bb2
bb1:
  %t14 = load i64, ptr %l4, !tbaa !24
  %t16 = icmp sgt i64 %t14, 0
  br i1 %t16, label %bb3, label %bb4
bb2:
  store i64 0, ptr %l14, !tbaa !24
  br label %bb6
bb3:
  %t18 = load i64, ptr %l3, !tbaa !24
  %t19 = load i64, ptr %l2, !tbaa !24
  %t22 = sub i64 %t18, %t19
  %t23 = load i64, ptr %l4, !tbaa !24
  %t26 = add i64 %t22, %t23
  %t28 = sub i64 %t26, 1
  %t29 = load i64, ptr %l4, !tbaa !24
  %t32 = sdiv i64 %t28, %t29
  store i64 %t32, ptr %l17, !tbaa !24
  br label %bb5
bb4:
  store i64 0, ptr %l17, !tbaa !24
  br label %bb5
bb5:
  %t34 = load i64, ptr %l17, !tbaa !24
  store i64 %t34, ptr %l14, !tbaa !24
  br label %bb6
bb6:
  %t35 = load i64, ptr %l14, !tbaa !24
  store i64 %t35, ptr %l5, !tbaa !24
  store i64 0, ptr %l6, !tbaa !24
  br label %bb7
bb7:
  %t36 = load i64, ptr %l6, !tbaa !24
  %t37 = load i64, ptr %l5, !tbaa !24
  %t40 = icmp slt i64 %t36, %t37
  %t42 = xor i1 %t40, true
  br i1 %t42, label %bb8, label %bb9
bb8:
  br label %bb12
bb9:
  br label %bb10
bb10:
  %t44 = load i64, ptr %l2, !tbaa !24
  %t45 = load i64, ptr %l6, !tbaa !24
  %t46 = load i64, ptr %l4, !tbaa !24
  %t49 = mul i64 %t45, %t46
  %t52 = add i64 %t44, %t49
  store i64 %t52, ptr %l7, !tbaa !24
  %t54 = load ptr, ptr %l0, !tbaa !29
  %t56 = getelementptr %"compiler/typed:Landings", ptr %t54, i32 0, i32 6
  %t57 = load { i64, ptr }, ptr %t56, !tbaa !27
  store { i64, ptr } %t57, ptr %l36, !tbaa !27
  %t58 = load i64, ptr %l7, !tbaa !24
  %t59 = load ptr, ptr %l1, !tbaa !29
  %t61 = getelementptr %"compiler/typed:landState", ptr %t59, i32 0, i32 0
  %t62 = load { i64, ptr }, ptr %t61, !tbaa !27
  store { i64, ptr } %t62, ptr %l39, !tbaa !27
  %t63 = load i64, ptr %l7, !tbaa !24
  %t65 = getelementptr { i64, ptr }, ptr %l39, i32 0, i32 1
  %t66 = load ptr, ptr %t65, !tbaa !27
  %t67 = getelementptr i1, ptr %t66, i64 %t63
  %t68 = load i1, ptr %t67, !tbaa !31
  %t71 = getelementptr { i64, ptr }, ptr %l36, i32 0, i32 1
  %t72 = load ptr, ptr %t71, !tbaa !27
  %t73 = getelementptr i1, ptr %t72, i64 %t58
  store i1 %t68, ptr %t73, !tbaa !31
  br label %bb11
bb11:
  %t74 = load i64, ptr %l6, !tbaa !24
  %t76 = add i64 %t74, 1
  store i64 %t76, ptr %l6, !tbaa !24
  br label %bb7
bb12:
  %t78 = load ptr, ptr %l0, !tbaa !29
  %t79 = load ptr, ptr %l1, !tbaa !29
  %t81 = getelementptr %"compiler/typed:landState", ptr %t79, i32 0, i32 1
  %t82 = load i1, ptr %t81, !tbaa !21
  %t85 = getelementptr %"compiler/typed:Landings", ptr %t78, i32 0, i32 7
  store i1 %t82, ptr %t85, !tbaa !21
  br label %ret
ret:
  ret void
}

define dso_local i1 @compiler_2ftyped_2ecompiler_2ftyped_3aLandings_2ewatched(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l2 = alloca { i64, ptr }
  %l3 = alloca i64
  %l4 = alloca i64
  %l14 = alloca { i64, ptr }
  %rv = alloca i1
  br label %start
start:
  br label %bb0
bb0:
  %t3 = getelementptr %"compiler/typed:Landings", ptr %a0, i32 0, i32 0
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
  br label %bb9
bb3:
  br label %bb4
bb4:
  %t18 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t18, ptr %l14, !tbaa !27
  %t19 = load i64, ptr %l3, !tbaa !24
  %t21 = getelementptr { i64, ptr }, ptr %l14, i32 0, i32 1
  %t22 = load ptr, ptr %t21, !tbaa !27
  %t23 = getelementptr i64, ptr %t22, i64 %t19
  %t24 = load i64, ptr %t23, !tbaa !34
  %t30 = icmp eq i64 %t24, %a1
  br i1 %t30, label %bb5, label %bb6
bb5:
  store i1 true, ptr %rv
  br label %ret
bb6:
  br label %bb7
bb7:
  br label %bb8
bb8:
  %t33 = load i64, ptr %l3, !tbaa !24
  %t35 = add i64 %t33, 1
  store i64 %t35, ptr %l3, !tbaa !24
  br label %bb1
bb9:
  store i1 false, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local void @compiler_2ftyped_2ecompiler_2ftyped_3aLastUses_2ecopyOf(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i64
  %l8 = alloca i1
  %l13 = alloca i1
  %l18 = alloca { i64, ptr }
  %l20 = alloca i64
  %l23 = alloca i1
  %l39 = alloca i1
  %l41 = alloca { i64, ptr }
  %l45 = alloca i1
  %l49 = alloca { i64, ptr }
  %l54 = alloca ptr
  %l56 = alloca i64
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l1, !tbaa !29
  %t3 = getelementptr %"compiler/typed:Make", ptr %t1, i32 0, i32 0
  %t4 = load i32, ptr %t3, !range !{i32 0, i32 5}
  %t6 = trunc i64 4 to i32
  %t7 = icmp eq i32 %t4, %t6
  %t9 = xor i1 %t7, true
  br i1 %t9, label %bb1, label %bb2
bb1:
  store i1 true, ptr %l8, !tbaa !21
  br label %bb3
bb2:
  %t11 = load ptr, ptr %l1, !tbaa !29
  %t13 = getelementptr %"compiler/typed:Make", ptr %t11, i32 0, i32 2
  %t14 = load { i64, ptr }, ptr %t13, !tbaa !27
  %t16 = extractvalue { i64, ptr } %t14, 0
  %t18 = icmp ne i64 %t16, 1
  store i1 %t18, ptr %l8, !tbaa !21
  br label %bb3
bb3:
  %t20 = load i1, ptr %l8, !tbaa !21
  br i1 %t20, label %bb4, label %bb5
bb4:
  store i1 true, ptr %l13, !tbaa !21
  br label %bb6
bb5:
  %t21 = load ptr, ptr %l1, !tbaa !29
  %t23 = getelementptr %"compiler/typed:Make", ptr %t21, i32 0, i32 4
  %t24 = load i32, ptr %t23, !tbaa !23
  %t26 = icmp slt i32 %t24, 0
  store i1 %t26, ptr %l13, !tbaa !21
  br label %bb6
bb6:
  %t28 = load i1, ptr %l13, !tbaa !21
  br i1 %t28, label %bb7, label %bb8
bb7:
  br label %ret
bb8:
  br label %bb9
bb9:
  %t29 = load ptr, ptr %l1, !tbaa !29
  %t31 = getelementptr %"compiler/typed:Make", ptr %t29, i32 0, i32 2
  %t32 = load { i64, ptr }, ptr %t31, !tbaa !27
  store { i64, ptr } %t32, ptr %l18, !tbaa !27
  %t33 = getelementptr { i64, ptr }, ptr %l18, i32 0, i32 1
  %t34 = load ptr, ptr %t33, !tbaa !27
  %t35 = getelementptr ptr, ptr %t34, i64 0
  %t36 = load ptr, ptr %t35, !tbaa !39
  %t38 = call i64 @compiler_2ftyped_2ewholeLocal(ptr %v1, ptr %t36)
  store i64 %t38, ptr %l20
  br label %bb10
bb10:
  %t39 = load i64, ptr %l20, !tbaa !24
  store i64 %t39, ptr %l2, !tbaa !24
  %t40 = load i64, ptr %l2, !tbaa !24
  %t42 = icmp slt i64 %t40, 0
  br i1 %t42, label %bb11, label %bb12
bb11:
  store i1 true, ptr %l23, !tbaa !21
  br label %bb13
bb12:
  %t44 = load i64, ptr %l2, !tbaa !24
  %t45 = load ptr, ptr %l0, !tbaa !29
  %t47 = getelementptr %"compiler/typed:LastUses", ptr %t45, i32 0, i32 0
  %t48 = load i64, ptr %t47, !tbaa !24
  %t51 = icmp sge i64 %t44, %t48
  store i1 %t51, ptr %l23, !tbaa !21
  br label %bb13
bb13:
  %t53 = load i1, ptr %l23, !tbaa !21
  br i1 %t53, label %bb14, label %bb15
bb14:
  br label %ret
bb15:
  br label %bb16
bb16:
  %t54 = load ptr, ptr %l0, !tbaa !29
  %t56 = getelementptr %"compiler/typed:LastUses", ptr %t54, i32 0, i32 6
  %t57 = load ptr, ptr %l1, !tbaa !29
  %t59 = getelementptr %"compiler/typed:Make", ptr %t57, i32 0, i32 4
  %t60 = load i32, ptr %t59, !tbaa !23
  %t62 = sext i32 %t60 to i64
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %t56, i64 %t62)
  br label %bb17
bb17:
  %t65 = load ptr, ptr %l0, !tbaa !29
  %t67 = getelementptr %"compiler/typed:LastUses", ptr %t65, i32 0, i32 7
  %t68 = load i64, ptr %l2, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %t67, i64 %t68)
  br label %bb18
bb18:
  %t71 = load ptr, ptr %l0, !tbaa !29
  %t73 = getelementptr %"compiler/typed:LastUses", ptr %t71, i32 0, i32 5
  %t74 = load i64, ptr %t73, !tbaa !24
  %t76 = icmp sgt i64 %t74, 0
  br i1 %t76, label %bb19, label %bb20
bb19:
  store i1 true, ptr %l39, !tbaa !21
  br label %bb24
bb20:
  %t78 = load ptr, ptr %l0, !tbaa !29
  %t80 = getelementptr %"compiler/typed:LastUses", ptr %t78, i32 0, i32 2
  %t81 = load { i64, ptr }, ptr %t80, !tbaa !27
  store { i64, ptr } %t81, ptr %l41, !tbaa !27
  %t82 = load i64, ptr %l2, !tbaa !24
  %t84 = getelementptr { i64, ptr }, ptr %l41, i32 0, i32 1
  %t85 = load ptr, ptr %t84, !tbaa !27
  %t86 = getelementptr i64, ptr %t85, i64 %t82
  %t87 = load i64, ptr %t86, !tbaa !34
  %t89 = icmp sge i64 %t87, 0
  br i1 %t89, label %bb21, label %bb22
bb21:
  %t91 = load ptr, ptr %l0, !tbaa !29
  %t93 = getelementptr %"compiler/typed:LastUses", ptr %t91, i32 0, i32 4
  %t94 = load i64, ptr %t93, !tbaa !24
  %t95 = load ptr, ptr %l0, !tbaa !29
  %t97 = getelementptr %"compiler/typed:LastUses", ptr %t95, i32 0, i32 2
  %t98 = load { i64, ptr }, ptr %t97, !tbaa !27
  store { i64, ptr } %t98, ptr %l49, !tbaa !27
  %t99 = load i64, ptr %l2, !tbaa !24
  %t101 = getelementptr { i64, ptr }, ptr %l49, i32 0, i32 1
  %t102 = load ptr, ptr %t101, !tbaa !27
  %t103 = getelementptr i64, ptr %t102, i64 %t99
  %t104 = load i64, ptr %t103, !tbaa !34
  %t107 = icmp sgt i64 %t94, %t104
  store i1 %t107, ptr %l45, !tbaa !21
  br label %bb23
bb22:
  store i1 false, ptr %l45, !tbaa !21
  br label %bb23
bb23:
  %t109 = load i1, ptr %l45, !tbaa !21
  store i1 %t109, ptr %l39, !tbaa !21
  br label %bb24
bb24:
  %t110 = load i1, ptr %l39, !tbaa !21
  %t111 = load ptr, ptr %l0, !tbaa !29
  %t113 = getelementptr %"compiler/typed:LastUses", ptr %t111, i32 0, i32 8
  store ptr %t113, ptr %l54, !tbaa !29
  br i1 %t110, label %bb25, label %bb26
bb25:
  store i64 -1, ptr %l56, !tbaa !24
  br label %bb27
bb26:
  %t116 = load ptr, ptr %l0, !tbaa !29
  %t118 = getelementptr %"compiler/typed:LastUses", ptr %t116, i32 0, i32 3
  %t119 = load i64, ptr %t118, !tbaa !24
  %t121 = add i64 %t119, 1
  store i64 %t121, ptr %l56, !tbaa !24
  br label %bb27
bb27:
  %t123 = load ptr, ptr %l54, !tbaa !29
  %t124 = load i64, ptr %l56, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %t123, i64 %t124)
  br label %bb28
bb28:
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2ftyped_2ecompiler_2ftyped_3aLastUses_2edeclare(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l5 = alloca i1
  %l11 = alloca i1
  %l13 = alloca { i64, ptr }
  %l19 = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load i32, ptr %l1, !tbaa !23
  %t3 = sext i32 %t1 to i64
  %t5 = icmp sge i64 %t3, 0
  br i1 %t5, label %bb1, label %bb2
bb1:
  %t7 = load i32, ptr %l1, !tbaa !23
  %t9 = sext i32 %t7 to i64
  %t10 = load ptr, ptr %l0, !tbaa !29
  %t12 = getelementptr %"compiler/typed:LastUses", ptr %t10, i32 0, i32 0
  %t13 = load i64, ptr %t12, !tbaa !24
  %t16 = icmp slt i64 %t9, %t13
  store i1 %t16, ptr %l5, !tbaa !21
  br label %bb3
bb2:
  store i1 false, ptr %l5, !tbaa !21
  br label %bb3
bb3:
  %t18 = load i1, ptr %l5, !tbaa !21
  br i1 %t18, label %bb4, label %bb5
bb4:
  %t19 = load ptr, ptr %l0, !tbaa !29
  %t21 = getelementptr %"compiler/typed:LastUses", ptr %t19, i32 0, i32 2
  %t22 = load { i64, ptr }, ptr %t21, !tbaa !27
  store { i64, ptr } %t22, ptr %l13, !tbaa !27
  %t23 = load i32, ptr %l1, !tbaa !23
  %t25 = sext i32 %t23 to i64
  %t27 = getelementptr { i64, ptr }, ptr %l13, i32 0, i32 1
  %t28 = load ptr, ptr %t27, !tbaa !27
  %t29 = getelementptr i64, ptr %t28, i64 %t25
  %t30 = load i64, ptr %t29, !tbaa !34
  %t32 = icmp slt i64 %t30, 0
  store i1 %t32, ptr %l11, !tbaa !21
  br label %bb6
bb5:
  store i1 false, ptr %l11, !tbaa !21
  br label %bb6
bb6:
  %t34 = load i1, ptr %l11, !tbaa !21
  br i1 %t34, label %bb7, label %bb8
bb7:
  %t35 = load ptr, ptr %l0, !tbaa !29
  %t37 = getelementptr %"compiler/typed:LastUses", ptr %t35, i32 0, i32 2
  %t38 = load { i64, ptr }, ptr %t37, !tbaa !27
  store { i64, ptr } %t38, ptr %l19, !tbaa !27
  %t39 = load i32, ptr %l1, !tbaa !23
  %t41 = sext i32 %t39 to i64
  %t42 = load ptr, ptr %l0, !tbaa !29
  %t44 = getelementptr %"compiler/typed:LastUses", ptr %t42, i32 0, i32 4
  %t45 = load i64, ptr %t44, !tbaa !24
  %t48 = getelementptr { i64, ptr }, ptr %l19, i32 0, i32 1
  %t49 = load ptr, ptr %t48, !tbaa !27
  %t50 = getelementptr i64, ptr %t49, i64 %t41
  store i64 %t45, ptr %t50, !tbaa !34
  br label %bb9
bb8:
  br label %bb9
bb9:
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2ftyped_2ecompiler_2ftyped_3aLastUses_2estmt(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i32
  %l3 = alloca ptr
  %l4 = alloca ptr
  %l5 = alloca ptr
  %l6 = alloca %"compiler/source:Span"
  %l7 = alloca i32
  %l8 = alloca i64
  %l9 = alloca i32
  %l10 = alloca i64
  %l11 = alloca ptr
  %l12 = alloca ptr
  %l13 = alloca ptr
  %l14 = alloca ptr
  %l15 = alloca ptr
  %l16 = alloca ptr
  %l17 = alloca ptr
  %l18 = alloca ptr
  %l19 = alloca ptr
  %l20 = alloca ptr
  %l21 = alloca ptr
  %l22 = alloca { i64, ptr }
  %l23 = alloca i64
  %l24 = alloca i64
  %l25 = alloca ptr
  %l26 = alloca { i64, ptr }
  %l27 = alloca i64
  %l28 = alloca i64
  %l30 = alloca ptr
  %l31 = alloca i1
  %l45 = alloca ptr
  %l46 = alloca i1
  %l55 = alloca ptr
  %l56 = alloca i1
  %l68 = alloca i64
  %l77 = alloca ptr
  %l78 = alloca i1
  %l83 = alloca ptr
  %l84 = alloca i1
  %l89 = alloca ptr
  %l90 = alloca i1
  %l98 = alloca ptr
  %l99 = alloca i1
  %l104 = alloca ptr
  %l105 = alloca i1
  %l110 = alloca ptr
  %l111 = alloca i1
  %l118 = alloca ptr
  %l119 = alloca i1
  %l135 = alloca ptr
  %l136 = alloca i1
  %l143 = alloca ptr
  %l151 = alloca ptr
  %l154 = alloca ptr
  %l155 = alloca i1
  %l167 = alloca ptr
  %l168 = alloca i1
  %l176 = alloca ptr
  %l177 = alloca i1
  %l185 = alloca ptr
  %l186 = alloca i1
  %l195 = alloca ptr
  %l201 = alloca ptr
  %l204 = alloca ptr
  %l205 = alloca i1
  %l210 = alloca ptr
  %l221 = alloca { i64, ptr }
  %l243 = alloca { i64, ptr }
  %l251 = alloca ptr
  %l254 = alloca ptr
  %l255 = alloca i1
  %l258 = alloca ptr
  %l259 = alloca i1
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l1, !tbaa !29
  store ptr %t1, ptr %l30, !tbaa !29
  store i1 false, ptr %l31, !tbaa !21
  %t2 = load ptr, ptr %l30, !tbaa !29
  %t3 = icmp ne ptr %t2, null
  br i1 %t3, label %bb1, label %bb2
bb1:
  %t5 = load ptr, ptr %l30, !tbaa !29
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 17}
  %t8 = icmp eq i64 %t6, 0
  store i1 %t8, ptr %l31, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l31, !tbaa !21
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
  br label %bb9
bb5:
  %t22 = load ptr, ptr %l0, !tbaa !29
  %t23 = load i32, ptr %l2, !tbaa !23
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aLastUses_2edeclare(ptr %v0, ptr %t22, i32 %t23)
  br label %bb6
bb6:
  %t26 = load ptr, ptr %l0, !tbaa !29
  %t27 = load ptr, ptr %l3, !tbaa !29
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aLastUses_2eexpr(ptr %v0, ptr %v1, ptr %t26, ptr %t27)
  br label %bb7
bb7:
  %t31 = load ptr, ptr %l0, !tbaa !29
  %t32 = load i32, ptr %l2, !tbaa !23
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aLastUses_2emention(ptr %v0, ptr %t31, i32 %t32)
  br label %bb8
bb8:
  br label %bb139
bb9:
  %t35 = load ptr, ptr %l1, !tbaa !29
  store ptr %t35, ptr %l45, !tbaa !29
  store i1 false, ptr %l46, !tbaa !21
  %t36 = load ptr, ptr %l45, !tbaa !29
  %t37 = icmp ne ptr %t36, null
  br i1 %t37, label %bb10, label %bb11
bb10:
  %t39 = load ptr, ptr %l45, !tbaa !29
  %t40 = load i64, ptr %t39, !range !{i64 0, i64 17}
  %t42 = icmp eq i64 %t40, 1
  store i1 %t42, ptr %l46, !tbaa !21
  br label %bb11
bb11:
  %t43 = load i1, ptr %l46, !tbaa !21
  br i1 %t43, label %bb12, label %bb13
bb12:
  %t44 = load ptr, ptr %l1, !tbaa !29
  %t46 = getelementptr { i64, [3 x i64] }, ptr %t44, i32 0, i32 1
  %t47 = getelementptr { %"compiler/source:Span", ptr, ptr }, ptr %t46, i32 0, i32 1
  %t48 = load ptr, ptr %t47
  store ptr %t48, ptr %l4, !tbaa !29
  %t50 = load ptr, ptr %l1, !tbaa !29
  %t52 = getelementptr { i64, [3 x i64] }, ptr %t50, i32 0, i32 1
  %t53 = getelementptr { %"compiler/source:Span", ptr, ptr }, ptr %t52, i32 0, i32 2
  %t54 = load ptr, ptr %t53
  store ptr %t54, ptr %l5, !tbaa !29
  br label %bb14
bb13:
  br label %bb27
bb14:
  %t56 = load ptr, ptr %l0, !tbaa !29
  %t57 = load ptr, ptr %l4, !tbaa !29
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aLastUses_2eplace(ptr %v0, ptr %v1, ptr %t56, ptr %t57)
  br label %bb15
bb15:
  %t60 = load ptr, ptr %l4, !tbaa !29
  store ptr %t60, ptr %l55, !tbaa !29
  store i1 false, ptr %l56, !tbaa !21
  %t61 = load ptr, ptr %l55, !tbaa !29
  %t62 = icmp ne ptr %t61, null
  br i1 %t62, label %bb16, label %bb17
bb16:
  %t64 = load ptr, ptr %l55, !tbaa !29
  %t65 = load i64, ptr %t64, !range !{i64 0, i64 8}
  %t67 = icmp eq i64 %t65, 1
  store i1 %t67, ptr %l56, !tbaa !21
  br label %bb17
bb17:
  %t68 = load i1, ptr %l56, !tbaa !21
  br i1 %t68, label %bb18, label %bb19
bb18:
  %t69 = load ptr, ptr %l4, !tbaa !29
  %t71 = getelementptr { i64, [4 x i64] }, ptr %t69, i32 0, i32 1
  %t72 = getelementptr { %"compiler/source:Span", i32, i64, i32 }, ptr %t71, i32 0, i32 0
  %t73 = load %"compiler/source:Span", ptr %t72
  store %"compiler/source:Span" %t73, ptr %l6
  %t75 = load ptr, ptr %l4, !tbaa !29
  %t77 = getelementptr { i64, [4 x i64] }, ptr %t75, i32 0, i32 1
  %t78 = getelementptr { %"compiler/source:Span", i32, i64, i32 }, ptr %t77, i32 0, i32 1
  %t79 = load i32, ptr %t78
  store i32 %t79, ptr %l7, !tbaa !23
  %t81 = load ptr, ptr %l4, !tbaa !29
  %t83 = getelementptr { i64, [4 x i64] }, ptr %t81, i32 0, i32 1
  %t84 = getelementptr { %"compiler/source:Span", i32, i64, i32 }, ptr %t83, i32 0, i32 2
  %t85 = load i64, ptr %t84
  store i64 %t85, ptr %l8, !tbaa !24
  %t87 = load ptr, ptr %l4, !tbaa !29
  %t89 = getelementptr { i64, [4 x i64] }, ptr %t87, i32 0, i32 1
  %t90 = getelementptr { %"compiler/source:Span", i32, i64, i32 }, ptr %t89, i32 0, i32 3
  %t91 = load i32, ptr %t90
  store i32 %t91, ptr %l9, !tbaa !23
  %t93 = load ptr, ptr %l5, !tbaa !29
  %t95 = call i64 @compiler_2ftyped_2ecopySite(ptr %v1, ptr %t93)
  store i64 %t95, ptr %l68
  br label %bb20
bb19:
  br label %bb25
bb20:
  %t96 = load i64, ptr %l68, !tbaa !24
  store i64 %t96, ptr %l10, !tbaa !24
  %t97 = load i64, ptr %l10, !tbaa !24
  %t99 = icmp sge i64 %t97, 0
  br i1 %t99, label %bb21, label %bb22
bb21:
  %t101 = load ptr, ptr %l0, !tbaa !29
  %t103 = getelementptr %"compiler/typed:LastUses", ptr %t101, i32 0, i32 10
  %t104 = load i64, ptr %l10, !tbaa !24
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2ePut_3cI64_2c_20Bool_3e(ptr %v0, ptr %t103, i64 %t104, i1 true)
  br label %bb23
bb22:
  br label %bb24
bb23:
  br label %bb24
bb24:
  br label %bb25
bb25:
  %t107 = load ptr, ptr %l0, !tbaa !29
  %t108 = load ptr, ptr %l5, !tbaa !29
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aLastUses_2eexpr(ptr %v0, ptr %v1, ptr %t107, ptr %t108)
  br label %bb26
bb26:
  br label %bb139
bb27:
  %t112 = load ptr, ptr %l1, !tbaa !29
  store ptr %t112, ptr %l77, !tbaa !29
  store i1 false, ptr %l78, !tbaa !21
  %t113 = load ptr, ptr %l77, !tbaa !29
  %t114 = icmp ne ptr %t113, null
  br i1 %t114, label %bb28, label %bb29
bb28:
  %t116 = load ptr, ptr %l77, !tbaa !29
  %t117 = load i64, ptr %t116, !range !{i64 0, i64 17}
  %t119 = icmp eq i64 %t117, 2
  store i1 %t119, ptr %l78, !tbaa !21
  br label %bb29
bb29:
  %t120 = load i1, ptr %l78, !tbaa !21
  br i1 %t120, label %bb30, label %bb31
bb30:
  %t121 = load ptr, ptr %l1, !tbaa !29
  %t123 = getelementptr { i64, [3 x i64] }, ptr %t121, i32 0, i32 1
  %t124 = getelementptr { %"compiler/source:Span", ptr }, ptr %t123, i32 0, i32 1
  %t125 = load ptr, ptr %t124
  store ptr %t125, ptr %l11, !tbaa !29
  br label %bb40
bb31:
  %t127 = load ptr, ptr %l1, !tbaa !29
  store ptr %t127, ptr %l83, !tbaa !29
  store i1 false, ptr %l84, !tbaa !21
  %t128 = load ptr, ptr %l83, !tbaa !29
  %t129 = icmp ne ptr %t128, null
  br i1 %t129, label %bb32, label %bb33
bb32:
  %t131 = load ptr, ptr %l83, !tbaa !29
  %t132 = load i64, ptr %t131, !range !{i64 0, i64 17}
  %t134 = icmp eq i64 %t132, 15
  store i1 %t134, ptr %l84, !tbaa !21
  br label %bb33
bb33:
  %t135 = load i1, ptr %l84, !tbaa !21
  br i1 %t135, label %bb34, label %bb35
bb34:
  %t136 = load ptr, ptr %l1, !tbaa !29
  %t138 = getelementptr { i64, [3 x i64] }, ptr %t136, i32 0, i32 1
  %t139 = getelementptr { %"compiler/source:Span", ptr }, ptr %t138, i32 0, i32 1
  %t140 = load ptr, ptr %t139
  store ptr %t140, ptr %l11, !tbaa !29
  br label %bb40
bb35:
  %t142 = load ptr, ptr %l1, !tbaa !29
  store ptr %t142, ptr %l89, !tbaa !29
  store i1 false, ptr %l90, !tbaa !21
  %t143 = load ptr, ptr %l89, !tbaa !29
  %t144 = icmp ne ptr %t143, null
  br i1 %t144, label %bb36, label %bb37
bb36:
  %t146 = load ptr, ptr %l89, !tbaa !29
  %t147 = load i64, ptr %t146, !range !{i64 0, i64 17}
  %t149 = icmp eq i64 %t147, 8
  store i1 %t149, ptr %l90, !tbaa !21
  br label %bb37
bb37:
  %t150 = load i1, ptr %l90, !tbaa !21
  br i1 %t150, label %bb38, label %bb39
bb38:
  %t151 = load ptr, ptr %l1, !tbaa !29
  %t153 = getelementptr { i64, [3 x i64] }, ptr %t151, i32 0, i32 1
  %t154 = getelementptr { %"compiler/source:Span", ptr, i32 }, ptr %t153, i32 0, i32 1
  %t155 = load ptr, ptr %t154
  store ptr %t155, ptr %l11, !tbaa !29
  br label %bb40
bb39:
  br label %bb42
bb40:
  %t157 = load ptr, ptr %l0, !tbaa !29
  %t158 = load ptr, ptr %l11, !tbaa !29
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aLastUses_2eexpr(ptr %v0, ptr %v1, ptr %t157, ptr %t158)
  br label %bb41
bb41:
  br label %bb139
bb42:
  %t162 = load ptr, ptr %l1, !tbaa !29
  store ptr %t162, ptr %l98, !tbaa !29
  store i1 false, ptr %l99, !tbaa !21
  %t163 = load ptr, ptr %l98, !tbaa !29
  %t164 = icmp ne ptr %t163, null
  br i1 %t164, label %bb43, label %bb44
bb43:
  %t166 = load ptr, ptr %l98, !tbaa !29
  %t167 = load i64, ptr %t166, !range !{i64 0, i64 17}
  %t169 = icmp eq i64 %t167, 6
  store i1 %t169, ptr %l99, !tbaa !21
  br label %bb44
bb44:
  %t170 = load i1, ptr %l99, !tbaa !21
  br i1 %t170, label %bb45, label %bb46
bb45:
  %t171 = load ptr, ptr %l1, !tbaa !29
  %t173 = getelementptr { i64, [3 x i64] }, ptr %t171, i32 0, i32 1
  %t174 = getelementptr { %"compiler/source:Span", ptr }, ptr %t173, i32 0, i32 1
  %t175 = load ptr, ptr %t174
  store ptr %t175, ptr %l12, !tbaa !29
  br label %bb55
bb46:
  %t177 = load ptr, ptr %l1, !tbaa !29
  store ptr %t177, ptr %l104, !tbaa !29
  store i1 false, ptr %l105, !tbaa !21
  %t178 = load ptr, ptr %l104, !tbaa !29
  %t179 = icmp ne ptr %t178, null
  br i1 %t179, label %bb47, label %bb48
bb47:
  %t181 = load ptr, ptr %l104, !tbaa !29
  %t182 = load i64, ptr %t181, !range !{i64 0, i64 17}
  %t184 = icmp eq i64 %t182, 16
  store i1 %t184, ptr %l105, !tbaa !21
  br label %bb48
bb48:
  %t185 = load i1, ptr %l105, !tbaa !21
  br i1 %t185, label %bb49, label %bb50
bb49:
  %t186 = load ptr, ptr %l1, !tbaa !29
  %t188 = getelementptr { i64, [3 x i64] }, ptr %t186, i32 0, i32 1
  %t189 = getelementptr { %"compiler/source:Span", ptr }, ptr %t188, i32 0, i32 1
  %t190 = load ptr, ptr %t189
  store ptr %t190, ptr %l12, !tbaa !29
  br label %bb55
bb50:
  %t192 = load ptr, ptr %l1, !tbaa !29
  store ptr %t192, ptr %l110, !tbaa !29
  store i1 false, ptr %l111, !tbaa !21
  %t193 = load ptr, ptr %l110, !tbaa !29
  %t194 = icmp ne ptr %t193, null
  br i1 %t194, label %bb51, label %bb52
bb51:
  %t196 = load ptr, ptr %l110, !tbaa !29
  %t197 = load i64, ptr %t196, !range !{i64 0, i64 17}
  %t199 = icmp eq i64 %t197, 9
  store i1 %t199, ptr %l111, !tbaa !21
  br label %bb52
bb52:
  %t200 = load i1, ptr %l111, !tbaa !21
  br i1 %t200, label %bb53, label %bb54
bb53:
  %t201 = load ptr, ptr %l1, !tbaa !29
  %t203 = getelementptr { i64, [3 x i64] }, ptr %t201, i32 0, i32 1
  %t204 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t203, i32 0, i32 2
  %t205 = load ptr, ptr %t204
  store ptr %t205, ptr %l12, !tbaa !29
  br label %bb55
bb54:
  br label %bb57
bb55:
  %t207 = load ptr, ptr %l0, !tbaa !29
  %t208 = load ptr, ptr %l12, !tbaa !29
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aLastUses_2eexpr(ptr %v0, ptr %v1, ptr %t207, ptr %t208)
  br label %bb56
bb56:
  br label %bb139
bb57:
  %t211 = load ptr, ptr %l1, !tbaa !29
  store ptr %t211, ptr %l118, !tbaa !29
  store i1 false, ptr %l119, !tbaa !21
  %t212 = load ptr, ptr %l118, !tbaa !29
  %t213 = icmp ne ptr %t212, null
  br i1 %t213, label %bb58, label %bb59
bb58:
  %t215 = load ptr, ptr %l118, !tbaa !29
  %t216 = load i64, ptr %t215, !range !{i64 0, i64 17}
  %t218 = icmp eq i64 %t216, 3
  store i1 %t218, ptr %l119, !tbaa !21
  br label %bb59
bb59:
  %t219 = load i1, ptr %l119, !tbaa !21
  br i1 %t219, label %bb60, label %bb61
bb60:
  %t220 = load ptr, ptr %l1, !tbaa !29
  %t222 = getelementptr { i64, [3 x i64] }, ptr %t220, i32 0, i32 1
  %t223 = getelementptr { %"compiler/source:Span", ptr }, ptr %t222, i32 0, i32 1
  %t224 = load ptr, ptr %t223
  store ptr %t224, ptr %l13, !tbaa !29
  br label %bb62
bb61:
  br label %bb66
bb62:
  %t226 = load ptr, ptr %l0, !tbaa !29
  %t227 = load ptr, ptr %l13, !tbaa !29
  %t229 = getelementptr %"compiler/typed:If", ptr %t227, i32 0, i32 0
  %t230 = load ptr, ptr %t229, !tbaa !29
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aLastUses_2eexpr(ptr %v0, ptr %v1, ptr %t226, ptr %t230)
  br label %bb63
bb63:
  %t234 = load ptr, ptr %l0, !tbaa !29
  %t235 = load ptr, ptr %l13, !tbaa !29
  %t237 = getelementptr %"compiler/typed:If", ptr %t235, i32 0, i32 1
  %t238 = load ptr, ptr %t237, !tbaa !29
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aLastUses_2eBlock(ptr %v0, ptr %v1, ptr %t234, ptr %t238)
  br label %bb64
bb64:
  %t242 = load ptr, ptr %l0, !tbaa !29
  %t243 = load ptr, ptr %l13, !tbaa !29
  %t245 = getelementptr %"compiler/typed:If", ptr %t243, i32 0, i32 2
  %t246 = load ptr, ptr %t245, !tbaa !29
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aLastUses_2eBlock(ptr %v0, ptr %v1, ptr %t242, ptr %t246)
  br label %bb65
bb65:
  br label %bb139
bb66:
  %t249 = load ptr, ptr %l1, !tbaa !29
  store ptr %t249, ptr %l135, !tbaa !29
  store i1 false, ptr %l136, !tbaa !21
  %t250 = load ptr, ptr %l135, !tbaa !29
  %t251 = icmp ne ptr %t250, null
  br i1 %t251, label %bb67, label %bb68
bb67:
  %t253 = load ptr, ptr %l135, !tbaa !29
  %t254 = load i64, ptr %t253, !range !{i64 0, i64 17}
  %t256 = icmp eq i64 %t254, 4
  store i1 %t256, ptr %l136, !tbaa !21
  br label %bb68
bb68:
  %t257 = load i1, ptr %l136, !tbaa !21
  br i1 %t257, label %bb69, label %bb70
bb69:
  %t258 = load ptr, ptr %l1, !tbaa !29
  %t260 = getelementptr { i64, [3 x i64] }, ptr %t258, i32 0, i32 1
  %t261 = getelementptr { %"compiler/source:Span", ptr, ptr }, ptr %t260, i32 0, i32 1
  %t262 = load ptr, ptr %t261
  store ptr %t262, ptr %l14, !tbaa !29
  %t264 = load ptr, ptr %l1, !tbaa !29
  %t266 = getelementptr { i64, [3 x i64] }, ptr %t264, i32 0, i32 1
  %t267 = getelementptr { %"compiler/source:Span", ptr, ptr }, ptr %t266, i32 0, i32 2
  %t268 = load ptr, ptr %t267
  store ptr %t268, ptr %l15, !tbaa !29
  br label %bb71
bb70:
  br label %bb74
bb71:
  %t270 = load ptr, ptr %l0, !tbaa !29
  store ptr %t270, ptr %l143, !tbaa !29
  %t271 = load ptr, ptr %l143, !tbaa !29
  %t272 = getelementptr %"compiler/typed:LastUses", ptr %t271, i32 0, i32 4
  %t273 = load i64, ptr %t272, !tbaa !24
  %t275 = add i64 %t273, 1
  %t277 = load ptr, ptr %l143, !tbaa !29
  %t278 = getelementptr %"compiler/typed:LastUses", ptr %t277, i32 0, i32 4
  store i64 %t275, ptr %t278, !tbaa !24
  %t279 = load ptr, ptr %l0, !tbaa !29
  %t280 = load ptr, ptr %l14, !tbaa !29
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aLastUses_2eBlock(ptr %v0, ptr %v1, ptr %t279, ptr %t280)
  br label %bb72
bb72:
  %t284 = load ptr, ptr %l0, !tbaa !29
  %t285 = load ptr, ptr %l15, !tbaa !29
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aLastUses_2eBlock(ptr %v0, ptr %v1, ptr %t284, ptr %t285)
  br label %bb73
bb73:
  %t288 = load ptr, ptr %l0, !tbaa !29
  store ptr %t288, ptr %l151, !tbaa !29
  %t289 = load ptr, ptr %l151, !tbaa !29
  %t290 = getelementptr %"compiler/typed:LastUses", ptr %t289, i32 0, i32 4
  %t291 = load i64, ptr %t290, !tbaa !24
  %t293 = sub i64 %t291, 1
  %t295 = load ptr, ptr %l151, !tbaa !29
  %t296 = getelementptr %"compiler/typed:LastUses", ptr %t295, i32 0, i32 4
  store i64 %t293, ptr %t296, !tbaa !24
  br label %bb139
bb74:
  %t297 = load ptr, ptr %l1, !tbaa !29
  store ptr %t297, ptr %l154, !tbaa !29
  store i1 false, ptr %l155, !tbaa !21
  %t298 = load ptr, ptr %l154, !tbaa !29
  %t299 = icmp ne ptr %t298, null
  br i1 %t299, label %bb75, label %bb76
bb75:
  %t301 = load ptr, ptr %l154, !tbaa !29
  %t302 = load i64, ptr %t301, !range !{i64 0, i64 17}
  %t304 = icmp eq i64 %t302, 10
  store i1 %t304, ptr %l155, !tbaa !21
  br label %bb76
bb76:
  %t305 = load i1, ptr %l155, !tbaa !21
  br i1 %t305, label %bb77, label %bb78
bb77:
  %t306 = load ptr, ptr %l1, !tbaa !29
  %t308 = getelementptr { i64, [3 x i64] }, ptr %t306, i32 0, i32 1
  %t309 = getelementptr { %"compiler/source:Span", ptr, ptr }, ptr %t308, i32 0, i32 1
  %t310 = load ptr, ptr %t309
  store ptr %t310, ptr %l16, !tbaa !29
  %t312 = load ptr, ptr %l1, !tbaa !29
  %t314 = getelementptr { i64, [3 x i64] }, ptr %t312, i32 0, i32 1
  %t315 = getelementptr { %"compiler/source:Span", ptr, ptr }, ptr %t314, i32 0, i32 2
  %t316 = load ptr, ptr %t315
  store ptr %t316, ptr %l17, !tbaa !29
  br label %bb79
bb78:
  br label %bb82
bb79:
  %t318 = load ptr, ptr %l0, !tbaa !29
  %t319 = load ptr, ptr %l16, !tbaa !29
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aLastUses_2eexpr(ptr %v0, ptr %v1, ptr %t318, ptr %t319)
  br label %bb80
bb80:
  %t323 = load ptr, ptr %l0, !tbaa !29
  %t324 = load ptr, ptr %l17, !tbaa !29
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aLastUses_2eexpr(ptr %v0, ptr %v1, ptr %t323, ptr %t324)
  br label %bb81
bb81:
  br label %bb139
bb82:
  %t327 = load ptr, ptr %l1, !tbaa !29
  store ptr %t327, ptr %l167, !tbaa !29
  store i1 false, ptr %l168, !tbaa !21
  %t328 = load ptr, ptr %l167, !tbaa !29
  %t329 = icmp ne ptr %t328, null
  br i1 %t329, label %bb83, label %bb84
bb83:
  %t331 = load ptr, ptr %l167, !tbaa !29
  %t332 = load i64, ptr %t331, !range !{i64 0, i64 17}
  %t334 = icmp eq i64 %t332, 11
  store i1 %t334, ptr %l168, !tbaa !21
  br label %bb84
bb84:
  %t335 = load i1, ptr %l168, !tbaa !21
  br i1 %t335, label %bb85, label %bb86
bb85:
  %t336 = load ptr, ptr %l1, !tbaa !29
  %t338 = getelementptr { i64, [3 x i64] }, ptr %t336, i32 0, i32 1
  %t339 = getelementptr { %"compiler/source:Span", ptr }, ptr %t338, i32 0, i32 1
  %t340 = load ptr, ptr %t339
  store ptr %t340, ptr %l18, !tbaa !29
  br label %bb87
bb86:
  br label %bb89
bb87:
  %t342 = load ptr, ptr %l0, !tbaa !29
  %t343 = load ptr, ptr %l18, !tbaa !29
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aLastUses_2eBlock(ptr %v0, ptr %v1, ptr %t342, ptr %t343)
  br label %bb88
bb88:
  br label %bb139
bb89:
  %t347 = load ptr, ptr %l1, !tbaa !29
  store ptr %t347, ptr %l176, !tbaa !29
  store i1 false, ptr %l177, !tbaa !21
  %t348 = load ptr, ptr %l176, !tbaa !29
  %t349 = icmp ne ptr %t348, null
  br i1 %t349, label %bb90, label %bb91
bb90:
  %t351 = load ptr, ptr %l176, !tbaa !29
  %t352 = load i64, ptr %t351, !range !{i64 0, i64 17}
  %t354 = icmp eq i64 %t352, 12
  store i1 %t354, ptr %l177, !tbaa !21
  br label %bb91
bb91:
  %t355 = load i1, ptr %l177, !tbaa !21
  br i1 %t355, label %bb92, label %bb93
bb92:
  %t356 = load ptr, ptr %l1, !tbaa !29
  %t358 = getelementptr { i64, [3 x i64] }, ptr %t356, i32 0, i32 1
  %t359 = getelementptr { %"compiler/source:Span", ptr }, ptr %t358, i32 0, i32 1
  %t360 = load ptr, ptr %t359
  store ptr %t360, ptr %l19, !tbaa !29
  br label %bb94
bb93:
  br label %bb96
bb94:
  %t362 = load ptr, ptr %l0, !tbaa !29
  %t363 = load ptr, ptr %l19, !tbaa !29
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aLastUses_2elaterBlock(ptr %v0, ptr %v1, ptr %t362, ptr %t363)
  br label %bb95
bb95:
  br label %bb139
bb96:
  %t367 = load ptr, ptr %l1, !tbaa !29
  store ptr %t367, ptr %l185, !tbaa !29
  store i1 false, ptr %l186, !tbaa !21
  %t368 = load ptr, ptr %l185, !tbaa !29
  %t369 = icmp ne ptr %t368, null
  br i1 %t369, label %bb97, label %bb98
bb97:
  %t371 = load ptr, ptr %l185, !tbaa !29
  %t372 = load i64, ptr %t371, !range !{i64 0, i64 17}
  %t374 = icmp eq i64 %t372, 13
  store i1 %t374, ptr %l186, !tbaa !21
  br label %bb98
bb98:
  %t375 = load i1, ptr %l186, !tbaa !21
  br i1 %t375, label %bb99, label %bb100
bb99:
  %t376 = load ptr, ptr %l1, !tbaa !29
  %t378 = getelementptr { i64, [3 x i64] }, ptr %t376, i32 0, i32 1
  %t379 = getelementptr { %"compiler/source:Span", ptr }, ptr %t378, i32 0, i32 1
  %t380 = load ptr, ptr %t379
  store ptr %t380, ptr %l20, !tbaa !29
  br label %bb101
bb100:
  br label %bb104
bb101:
  %t382 = load ptr, ptr %l0, !tbaa !29
  %t383 = load ptr, ptr %l20, !tbaa !29
  %t385 = getelementptr %"compiler/typed:Join", ptr %t383, i32 0, i32 0
  %t386 = load ptr, ptr %t385, !tbaa !29
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aLastUses_2eBlock(ptr %v0, ptr %v1, ptr %t382, ptr %t386)
  br label %bb102
bb102:
  %t390 = load ptr, ptr %l0, !tbaa !29
  store ptr %t390, ptr %l195, !tbaa !29
  %t391 = load ptr, ptr %l195, !tbaa !29
  %t392 = getelementptr %"compiler/typed:LastUses", ptr %t391, i32 0, i32 5
  %t393 = load i64, ptr %t392, !tbaa !24
  %t395 = add i64 %t393, 1
  %t397 = load ptr, ptr %l195, !tbaa !29
  %t398 = getelementptr %"compiler/typed:LastUses", ptr %t397, i32 0, i32 5
  store i64 %t395, ptr %t398, !tbaa !24
  %t399 = load ptr, ptr %l0, !tbaa !29
  %t400 = load ptr, ptr %l20, !tbaa !29
  %t402 = getelementptr %"compiler/typed:Join", ptr %t400, i32 0, i32 2
  %t403 = load { i64, ptr }, ptr %t402, !tbaa !27
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aLastUses_2eclauses(ptr %v0, ptr %v1, ptr %t399, { i64, ptr } %t403)
  br label %bb103
bb103:
  %t406 = load ptr, ptr %l0, !tbaa !29
  store ptr %t406, ptr %l201, !tbaa !29
  %t407 = load ptr, ptr %l201, !tbaa !29
  %t408 = getelementptr %"compiler/typed:LastUses", ptr %t407, i32 0, i32 5
  %t409 = load i64, ptr %t408, !tbaa !24
  %t411 = sub i64 %t409, 1
  %t413 = load ptr, ptr %l201, !tbaa !29
  %t414 = getelementptr %"compiler/typed:LastUses", ptr %t413, i32 0, i32 5
  store i64 %t411, ptr %t414, !tbaa !24
  br label %bb139
bb104:
  %t415 = load ptr, ptr %l1, !tbaa !29
  store ptr %t415, ptr %l204, !tbaa !29
  store i1 false, ptr %l205, !tbaa !21
  %t416 = load ptr, ptr %l204, !tbaa !29
  %t417 = icmp ne ptr %t416, null
  br i1 %t417, label %bb105, label %bb106
bb105:
  %t419 = load ptr, ptr %l204, !tbaa !29
  %t420 = load i64, ptr %t419, !range !{i64 0, i64 17}
  %t422 = icmp eq i64 %t420, 14
  store i1 %t422, ptr %l205, !tbaa !21
  br label %bb106
bb106:
  %t423 = load i1, ptr %l205, !tbaa !21
  br i1 %t423, label %bb107, label %bb108
bb107:
  %t424 = load ptr, ptr %l1, !tbaa !29
  %t426 = getelementptr { i64, [3 x i64] }, ptr %t424, i32 0, i32 1
  %t427 = getelementptr { %"compiler/source:Span", ptr }, ptr %t426, i32 0, i32 1
  %t428 = load ptr, ptr %t427
  store ptr %t428, ptr %l21, !tbaa !29
  br label %bb109
bb108:
  br label %bb128
bb109:
  %t430 = load ptr, ptr %l0, !tbaa !29
  store ptr %t430, ptr %l210, !tbaa !29
  %t431 = load ptr, ptr %l210, !tbaa !29
  %t432 = getelementptr %"compiler/typed:LastUses", ptr %t431, i32 0, i32 5
  %t433 = load i64, ptr %t432, !tbaa !24
  %t435 = add i64 %t433, 1
  %t437 = load ptr, ptr %l210, !tbaa !29
  %t438 = getelementptr %"compiler/typed:LastUses", ptr %t437, i32 0, i32 5
  store i64 %t435, ptr %t438, !tbaa !24
  %t439 = load ptr, ptr %l21, !tbaa !29
  %t441 = getelementptr %"compiler/typed:Spawn", ptr %t439, i32 0, i32 0
  %t442 = load { i64, ptr }, ptr %t441, !tbaa !27
  store { i64, ptr } %t442, ptr %l22, !tbaa !27
  store i64 0, ptr %l23, !tbaa !24
  %t444 = load { i64, ptr }, ptr %l22, !tbaa !27
  %t446 = extractvalue { i64, ptr } %t444, 0
  store i64 %t446, ptr %l24, !tbaa !24
  br label %bb110
bb110:
  %t448 = load i64, ptr %l23, !tbaa !24
  %t449 = load i64, ptr %l24, !tbaa !24
  %t452 = icmp slt i64 %t448, %t449
  %t454 = xor i1 %t452, true
  br i1 %t454, label %bb111, label %bb112
bb111:
  br label %bb119
bb112:
  br label %bb113
bb113:
  %t456 = load { i64, ptr }, ptr %l22, !tbaa !27
  store { i64, ptr } %t456, ptr %l221, !tbaa !27
  %t457 = load i64, ptr %l23, !tbaa !24
  %t459 = getelementptr { i64, ptr }, ptr %l221, i32 0, i32 1
  %t460 = load ptr, ptr %t459, !tbaa !27
  %t461 = getelementptr ptr, ptr %t460, i64 %t457
  %t462 = load ptr, ptr %t461, !tbaa !39
  store ptr %t462, ptr %l25, !tbaa !29
  %t464 = load ptr, ptr %l25, !tbaa !29
  %t466 = icmp eq ptr %t464, null
  %t468 = xor i1 %t466, true
  br i1 %t468, label %bb114, label %bb115
bb114:
  %t470 = load ptr, ptr %l0, !tbaa !29
  %t471 = load ptr, ptr %l25, !tbaa !29
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aLastUses_2eplace(ptr %v0, ptr %v1, ptr %t470, ptr %t471)
  br label %bb116
bb115:
  br label %bb117
bb116:
  br label %bb117
bb117:
  br label %bb118
bb118:
  %t474 = load i64, ptr %l23, !tbaa !24
  %t476 = add i64 %t474, 1
  store i64 %t476, ptr %l23, !tbaa !24
  br label %bb110
bb119:
  %t478 = load ptr, ptr %l0, !tbaa !29
  %t479 = load ptr, ptr %l21, !tbaa !29
  %t481 = getelementptr %"compiler/typed:Spawn", ptr %t479, i32 0, i32 1
  %t482 = load ptr, ptr %t481, !tbaa !29
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aLastUses_2eexpr(ptr %v0, ptr %v1, ptr %t478, ptr %t482)
  br label %bb120
bb120:
  %t486 = load ptr, ptr %l21, !tbaa !29
  %t488 = getelementptr %"compiler/typed:Spawn", ptr %t486, i32 0, i32 2
  %t489 = load { i64, ptr }, ptr %t488, !tbaa !27
  store { i64, ptr } %t489, ptr %l26, !tbaa !27
  store i64 0, ptr %l27, !tbaa !24
  %t491 = load { i64, ptr }, ptr %l26, !tbaa !27
  %t493 = extractvalue { i64, ptr } %t491, 0
  store i64 %t493, ptr %l28, !tbaa !24
  br label %bb121
bb121:
  %t495 = load i64, ptr %l27, !tbaa !24
  %t496 = load i64, ptr %l28, !tbaa !24
  %t499 = icmp slt i64 %t495, %t496
  %t501 = xor i1 %t499, true
  br i1 %t501, label %bb122, label %bb123
bb122:
  br label %bb127
bb123:
  br label %bb124
bb124:
  %t503 = load { i64, ptr }, ptr %l26, !tbaa !27
  store { i64, ptr } %t503, ptr %l243, !tbaa !27
  %t504 = load i64, ptr %l27, !tbaa !24
  %t506 = getelementptr { i64, ptr }, ptr %l243, i32 0, i32 1
  %t507 = load ptr, ptr %t506, !tbaa !27
  %t508 = getelementptr ptr, ptr %t507, i64 %t504
  %t509 = load ptr, ptr %t508, !tbaa !39
  %t511 = load ptr, ptr %l0, !tbaa !29
  %t514 = getelementptr %"compiler/typed:TaskClause", ptr %t509, i32 0, i32 3
  %t515 = load ptr, ptr %t514, !tbaa !29
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aLastUses_2eexpr(ptr %v0, ptr %v1, ptr %t511, ptr %t515)
  br label %bb125
bb125:
  br label %bb126
bb126:
  %t518 = load i64, ptr %l27, !tbaa !24
  %t520 = add i64 %t518, 1
  store i64 %t520, ptr %l27, !tbaa !24
  br label %bb121
bb127:
  %t522 = load ptr, ptr %l0, !tbaa !29
  store ptr %t522, ptr %l251, !tbaa !29
  %t523 = load ptr, ptr %l251, !tbaa !29
  %t524 = getelementptr %"compiler/typed:LastUses", ptr %t523, i32 0, i32 5
  %t525 = load i64, ptr %t524, !tbaa !24
  %t527 = sub i64 %t525, 1
  %t529 = load ptr, ptr %l251, !tbaa !29
  %t530 = getelementptr %"compiler/typed:LastUses", ptr %t529, i32 0, i32 5
  store i64 %t527, ptr %t530, !tbaa !24
  br label %bb139
bb128:
  %t531 = load ptr, ptr %l1, !tbaa !29
  store ptr %t531, ptr %l254, !tbaa !29
  store i1 false, ptr %l255, !tbaa !21
  %t532 = load ptr, ptr %l254, !tbaa !29
  %t533 = icmp ne ptr %t532, null
  br i1 %t533, label %bb129, label %bb130
bb129:
  %t535 = load ptr, ptr %l254, !tbaa !29
  %t536 = load i64, ptr %t535, !range !{i64 0, i64 17}
  %t538 = icmp eq i64 %t536, 5
  store i1 %t538, ptr %l255, !tbaa !21
  br label %bb130
bb130:
  %t539 = load i1, ptr %l255, !tbaa !21
  br i1 %t539, label %bb131, label %bb132
bb131:
  br label %bb137
bb132:
  %t540 = load ptr, ptr %l1, !tbaa !29
  store ptr %t540, ptr %l258, !tbaa !29
  store i1 false, ptr %l259, !tbaa !21
  %t541 = load ptr, ptr %l258, !tbaa !29
  %t542 = icmp ne ptr %t541, null
  br i1 %t542, label %bb133, label %bb134
bb133:
  %t544 = load ptr, ptr %l258, !tbaa !29
  %t545 = load i64, ptr %t544, !range !{i64 0, i64 17}
  %t547 = icmp eq i64 %t545, 7
  store i1 %t547, ptr %l259, !tbaa !21
  br label %bb134
bb134:
  %t548 = load i1, ptr %l259, !tbaa !21
  br i1 %t548, label %bb135, label %bb136
bb135:
  br label %bb137
bb136:
  br label %bb138
bb137:
  br label %bb139
bb138:
  call void @__olang_check_failed(ptr @olang_loc_b7d0c4ef23cb16fa_bb49bf88955879a6)
  unreachable
bb139:
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2ftyped_2ecompiler_2ftyped_3aLastUses_2estmts(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1) #0 {
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
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aLastUses_2estmt(ptr %v0, ptr %v1, ptr %a0, ptr %t21)
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

define dso_local void @compiler_2ftyped_2ecompiler_2ftyped_3aLocalUses_2eclauses(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, { i64, ptr } %a1, { i64, [1 x i64] } %a2) #0 {
entry:
  %l0 = alloca ptr
  %l3 = alloca { i64, ptr }
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca ptr
  %l7 = alloca { i64, ptr }
  %l8 = alloca i64
  %l9 = alloca i64
  %l18 = alloca { i64, ptr }
  %l32 = alloca { i64, ptr }
  store ptr %a0, ptr %l0
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
  br label %bb14
bb3:
  br label %bb4
bb4:
  %t15 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t15, ptr %l18, !tbaa !27
  %t16 = load i64, ptr %l4, !tbaa !24
  %t18 = getelementptr { i64, ptr }, ptr %l18, i32 0, i32 1
  %t19 = load ptr, ptr %t18, !tbaa !27
  %t20 = getelementptr ptr, ptr %t19, i64 %t16
  %t21 = load ptr, ptr %t20, !tbaa !39
  store ptr %t21, ptr %l6, !tbaa !29
  %t23 = load ptr, ptr %l0, !tbaa !29
  %t24 = load ptr, ptr %l6, !tbaa !29
  %t26 = getelementptr %"compiler/typed:Clause", ptr %t24, i32 0, i32 3
  %t27 = load ptr, ptr %t26, !tbaa !29
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aLocalUses_2eblock(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %t23, ptr %t27)
  br label %bb5
bb5:
  %t30 = load ptr, ptr %l6, !tbaa !29
  %t32 = getelementptr %"compiler/typed:Clause", ptr %t30, i32 0, i32 4
  %t33 = load { i64, ptr }, ptr %t32, !tbaa !27
  store { i64, ptr } %t33, ptr %l7, !tbaa !27
  store i64 0, ptr %l8, !tbaa !24
  %t35 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t37 = extractvalue { i64, ptr } %t35, 0
  store i64 %t37, ptr %l9, !tbaa !24
  br label %bb6
bb6:
  %t39 = load i64, ptr %l8, !tbaa !24
  %t40 = load i64, ptr %l9, !tbaa !24
  %t43 = icmp slt i64 %t39, %t40
  %t45 = xor i1 %t43, true
  br i1 %t45, label %bb7, label %bb8
bb7:
  br label %bb12
bb8:
  br label %bb9
bb9:
  %t47 = load { i64, ptr }, ptr %l7, !tbaa !27
  store { i64, ptr } %t47, ptr %l32, !tbaa !27
  %t48 = load i64, ptr %l8, !tbaa !24
  %t50 = getelementptr { i64, ptr }, ptr %l32, i32 0, i32 1
  %t51 = load ptr, ptr %t50, !tbaa !27
  %t52 = getelementptr ptr, ptr %t51, i64 %t48
  %t53 = load ptr, ptr %t52, !tbaa !39
  %t55 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aLocalUses_2eexpr(ptr %v0, ptr %v1, ptr %v3, ptr %v2, ptr %t55, ptr %t53, { i64, [1 x i64] } %a2)
  br label %bb10
bb10:
  br label %bb11
bb11:
  %t62 = load i64, ptr %l8, !tbaa !24
  %t64 = add i64 %t62, 1
  store i64 %t64, ptr %l8, !tbaa !24
  br label %bb6
bb12:
  br label %bb13
bb13:
  %t66 = load i64, ptr %l4, !tbaa !24
  %t68 = add i64 %t66, 1
  store i64 %t68, ptr %l4, !tbaa !24
  br label %bb1
bb14:
  br label %ret
ret:
  ret void
}

define dso_local i64 @compiler_2ftyped_2ecompiler_2ftyped_3aLocalUses_2eexprRoot(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca ptr
  %l4 = alloca ptr
  %l5 = alloca ptr
  %l6 = alloca i32
  %l7 = alloca { i64, ptr }
  %l8 = alloca i64
  %l9 = alloca ptr
  %l10 = alloca i1
  %l15 = alloca ptr
  %l16 = alloca i1
  %l23 = alloca i64
  %l24 = alloca ptr
  %l25 = alloca i1
  %l33 = alloca i64
  %l34 = alloca ptr
  %l35 = alloca i1
  %l43 = alloca i64
  %l44 = alloca ptr
  %l45 = alloca i1
  %l52 = alloca i64
  %l53 = alloca ptr
  %l54 = alloca i1
  %l63 = alloca i1
  %l67 = alloca i64
  %l69 = alloca { i64, ptr }
  %l71 = alloca i64
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
  %t8 = icmp eq i64 %t6, 2
  store i1 %t8, ptr %l10, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l10, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  %t10 = load ptr, ptr %l1, !tbaa !29
  %t12 = getelementptr { i64, [5 x i64] }, ptr %t10, i32 0, i32 1
  %t13 = getelementptr { %"compiler/source:Span", i32, ptr, i32 }, ptr %t12, i32 0, i32 2
  %t14 = load ptr, ptr %t13
  store ptr %t14, ptr %l2, !tbaa !29
  br label %bb9
bb4:
  %t16 = load ptr, ptr %l1, !tbaa !29
  store ptr %t16, ptr %l15, !tbaa !29
  store i1 false, ptr %l16, !tbaa !21
  %t17 = load ptr, ptr %l15, !tbaa !29
  %t18 = icmp ne ptr %t17, null
  br i1 %t18, label %bb5, label %bb6
bb5:
  %t20 = load ptr, ptr %l15, !tbaa !29
  %t21 = load i64, ptr %t20, !range !{i64 0, i64 18}
  %t23 = icmp eq i64 %t21, 3
  store i1 %t23, ptr %l16, !tbaa !21
  br label %bb6
bb6:
  %t24 = load i1, ptr %l16, !tbaa !21
  br i1 %t24, label %bb7, label %bb8
bb7:
  %t25 = load ptr, ptr %l1, !tbaa !29
  %t27 = getelementptr { i64, [5 x i64] }, ptr %t25, i32 0, i32 1
  %t28 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t27, i32 0, i32 2
  %t29 = load ptr, ptr %t28
  store ptr %t29, ptr %l2, !tbaa !29
  br label %bb9
bb8:
  br label %bb11
bb9:
  %t31 = load ptr, ptr %l0, !tbaa !29
  %t32 = load ptr, ptr %l2, !tbaa !29
  %t35 = call i64 @compiler_2ftyped_2ecompiler_2ftyped_3aLocalUses_2erootOf(ptr %v0, ptr %v1, ptr %t31, ptr %t32)
  store i64 %t35, ptr %l23
  br label %bb10
bb10:
  %t36 = load i64, ptr %l23, !tbaa !24
  store i64 %t36, ptr %l8, !tbaa !24
  br label %bb50
bb11:
  %t37 = load ptr, ptr %l1, !tbaa !29
  store ptr %t37, ptr %l24, !tbaa !29
  store i1 false, ptr %l25, !tbaa !21
  %t38 = load ptr, ptr %l24, !tbaa !29
  %t39 = icmp ne ptr %t38, null
  br i1 %t39, label %bb12, label %bb13
bb12:
  %t41 = load ptr, ptr %l24, !tbaa !29
  %t42 = load i64, ptr %t41, !range !{i64 0, i64 18}
  %t44 = icmp eq i64 %t42, 10
  store i1 %t44, ptr %l25, !tbaa !21
  br label %bb13
bb13:
  %t45 = load i1, ptr %l25, !tbaa !21
  br i1 %t45, label %bb14, label %bb15
bb14:
  %t46 = load ptr, ptr %l1, !tbaa !29
  %t48 = getelementptr { i64, [5 x i64] }, ptr %t46, i32 0, i32 1
  %t49 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t48, i32 0, i32 2
  %t50 = load ptr, ptr %t49
  store ptr %t50, ptr %l3, !tbaa !29
  br label %bb16
bb15:
  br label %bb18
bb16:
  %t52 = load ptr, ptr %l0, !tbaa !29
  %t53 = load ptr, ptr %l3, !tbaa !29
  %t55 = getelementptr %"compiler/typed:Slice", ptr %t53, i32 0, i32 0
  %t56 = load ptr, ptr %t55, !tbaa !29
  %t59 = call i64 @compiler_2ftyped_2ecompiler_2ftyped_3aLocalUses_2erootOf(ptr %v0, ptr %v1, ptr %t52, ptr %t56)
  store i64 %t59, ptr %l33
  br label %bb17
bb17:
  %t60 = load i64, ptr %l33, !tbaa !24
  store i64 %t60, ptr %l8, !tbaa !24
  br label %bb50
bb18:
  %t61 = load ptr, ptr %l1, !tbaa !29
  store ptr %t61, ptr %l34, !tbaa !29
  store i1 false, ptr %l35, !tbaa !21
  %t62 = load ptr, ptr %l34, !tbaa !29
  %t63 = icmp ne ptr %t62, null
  br i1 %t63, label %bb19, label %bb20
bb19:
  %t65 = load ptr, ptr %l34, !tbaa !29
  %t66 = load i64, ptr %t65, !range !{i64 0, i64 18}
  %t68 = icmp eq i64 %t66, 5
  store i1 %t68, ptr %l35, !tbaa !21
  br label %bb20
bb20:
  %t69 = load i1, ptr %l35, !tbaa !21
  br i1 %t69, label %bb21, label %bb22
bb21:
  %t70 = load ptr, ptr %l1, !tbaa !29
  %t72 = getelementptr { i64, [5 x i64] }, ptr %t70, i32 0, i32 1
  %t73 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t72, i32 0, i32 2
  %t74 = load ptr, ptr %t73
  store ptr %t74, ptr %l4, !tbaa !29
  br label %bb23
bb22:
  br label %bb25
bb23:
  %t76 = load ptr, ptr %l0, !tbaa !29
  %t77 = load ptr, ptr %l4, !tbaa !29
  %t79 = getelementptr %"compiler/typed:Promote", ptr %t77, i32 0, i32 0
  %t80 = load ptr, ptr %t79, !tbaa !29
  %t83 = call i64 @compiler_2ftyped_2ecompiler_2ftyped_3aLocalUses_2eexprRoot(ptr %v0, ptr %v1, ptr %t76, ptr %t80)
  store i64 %t83, ptr %l43
  br label %bb24
bb24:
  %t84 = load i64, ptr %l43, !tbaa !24
  store i64 %t84, ptr %l8, !tbaa !24
  br label %bb50
bb25:
  %t85 = load ptr, ptr %l1, !tbaa !29
  store ptr %t85, ptr %l44, !tbaa !29
  store i1 false, ptr %l45, !tbaa !21
  %t86 = load ptr, ptr %l44, !tbaa !29
  %t87 = icmp ne ptr %t86, null
  br i1 %t87, label %bb26, label %bb27
bb26:
  %t89 = load ptr, ptr %l44, !tbaa !29
  %t90 = load i64, ptr %t89, !range !{i64 0, i64 18}
  %t92 = icmp eq i64 %t90, 17
  store i1 %t92, ptr %l45, !tbaa !21
  br label %bb27
bb27:
  %t93 = load i1, ptr %l45, !tbaa !21
  br i1 %t93, label %bb28, label %bb29
bb28:
  %t94 = load ptr, ptr %l1, !tbaa !29
  %t96 = getelementptr { i64, [5 x i64] }, ptr %t94, i32 0, i32 1
  %t97 = getelementptr { %"compiler/source:Span", i64, ptr }, ptr %t96, i32 0, i32 2
  %t98 = load ptr, ptr %t97
  store ptr %t98, ptr %l5, !tbaa !29
  br label %bb30
bb29:
  br label %bb32
bb30:
  %t100 = load ptr, ptr %l0, !tbaa !29
  %t101 = load ptr, ptr %l5, !tbaa !29
  %t104 = call i64 @compiler_2ftyped_2ecompiler_2ftyped_3aLocalUses_2eexprRoot(ptr %v0, ptr %v1, ptr %t100, ptr %t101)
  store i64 %t104, ptr %l52
  br label %bb31
bb31:
  %t105 = load i64, ptr %l52, !tbaa !24
  store i64 %t105, ptr %l8, !tbaa !24
  br label %bb50
bb32:
  %t106 = load ptr, ptr %l1, !tbaa !29
  store ptr %t106, ptr %l53, !tbaa !29
  store i1 false, ptr %l54, !tbaa !21
  %t107 = load ptr, ptr %l53, !tbaa !29
  %t108 = icmp ne ptr %t107, null
  br i1 %t108, label %bb33, label %bb34
bb33:
  %t110 = load ptr, ptr %l53, !tbaa !29
  %t111 = load i64, ptr %t110, !range !{i64 0, i64 18}
  %t113 = icmp eq i64 %t111, 9
  store i1 %t113, ptr %l54, !tbaa !21
  br label %bb34
bb34:
  %t114 = load i1, ptr %l54, !tbaa !21
  br i1 %t114, label %bb35, label %bb36
bb35:
  %t115 = load ptr, ptr %l1, !tbaa !29
  %t117 = getelementptr { i64, [5 x i64] }, ptr %t115, i32 0, i32 1
  %t118 = getelementptr { %"compiler/source:Span", i32, i32, i32, { i64, ptr } }, ptr %t117, i32 0, i32 2
  %t119 = load i32, ptr %t118, !range !{i32 0, i32 52}
  store i32 %t119, ptr %l6
  %t121 = load ptr, ptr %l1, !tbaa !29
  %t123 = getelementptr { i64, [5 x i64] }, ptr %t121, i32 0, i32 1
  %t124 = getelementptr { %"compiler/source:Span", i32, i32, i32, { i64, ptr } }, ptr %t123, i32 0, i32 4
  %t125 = load { i64, ptr }, ptr %t124
  store { i64, ptr } %t125, ptr %l7, !tbaa !27
  br label %bb37
bb36:
  br label %bb45
bb37:
  %t127 = load i32, ptr %l6, !range !{i32 0, i32 52}
  %t129 = trunc i64 20 to i32
  %t130 = icmp eq i32 %t127, %t129
  br i1 %t130, label %bb38, label %bb39
bb38:
  %t132 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t134 = extractvalue { i64, ptr } %t132, 0
  %t136 = icmp eq i64 %t134, 1
  store i1 %t136, ptr %l63, !tbaa !21
  br label %bb40
bb39:
  store i1 false, ptr %l63, !tbaa !21
  br label %bb40
bb40:
  %t138 = load i1, ptr %l63, !tbaa !21
  br i1 %t138, label %bb41, label %bb42
bb41:
  %t139 = load ptr, ptr %l0, !tbaa !29
  %t140 = load { i64, ptr }, ptr %l7, !tbaa !27
  store { i64, ptr } %t140, ptr %l69, !tbaa !27
  %t141 = getelementptr { i64, ptr }, ptr %l69, i32 0, i32 1
  %t142 = load ptr, ptr %t141, !tbaa !27
  %t143 = getelementptr ptr, ptr %t142, i64 0
  %t144 = load ptr, ptr %t143, !tbaa !39
  %t147 = call i64 @compiler_2ftyped_2ecompiler_2ftyped_3aLocalUses_2eexprRoot(ptr %v0, ptr %v1, ptr %t139, ptr %t144)
  store i64 %t147, ptr %l71
  br label %bb43
bb42:
  store i64 -1, ptr %l67, !tbaa !24
  br label %bb44
bb43:
  %t148 = load i64, ptr %l71, !tbaa !24
  store i64 %t148, ptr %l67, !tbaa !24
  br label %bb44
bb44:
  %t149 = load i64, ptr %l67, !tbaa !24
  store i64 %t149, ptr %l8, !tbaa !24
  br label %bb50
bb45:
  br i1 true, label %bb46, label %bb47
bb46:
  br label %bb48
bb47:
  br label %bb49
bb48:
  store i64 -1, ptr %l8, !tbaa !24
  br label %bb50
bb49:
  call void @__olang_check_failed(ptr @olang_loc_ea76fa4e8d5c92b6_ce360b1ee865cf5a)
  unreachable
bb50:
  %t150 = load i64, ptr %l8, !tbaa !24
  store i64 %t150, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local i1 @compiler_2ftyped_2ecompiler_2ftyped_3aLocalUses_2erefArg(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1, i64 %a2, i64 %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l4 = alloca i32
  %l5 = alloca ptr
  %l6 = alloca i32
  %l7 = alloca ptr
  %l8 = alloca ptr
  %l9 = alloca i64
  %l10 = alloca ptr
  %l11 = alloca ptr
  %l12 = alloca i1
  %l20 = alloca ptr
  %l23 = alloca i64
  %l27 = alloca ptr
  %l30 = alloca ptr
  %l31 = alloca i1
  %l39 = alloca ptr
  %l42 = alloca i1
  %l44 = alloca i1
  %l46 = alloca ptr
  %l49 = alloca i64
  %l53 = alloca ptr
  %l61 = alloca i64
  %rv = alloca i1
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
  %t8 = icmp eq i64 %t6, 3
  store i1 %t8, ptr %l12, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l12, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  %t10 = load ptr, ptr %l1, !tbaa !29
  %t12 = getelementptr { i64, [5 x i64] }, ptr %t10, i32 0, i32 1
  %t13 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t12, i32 0, i32 1
  %t14 = load i32, ptr %t13
  store i32 %t14, ptr %l4, !tbaa !23
  %t16 = load ptr, ptr %l1, !tbaa !29
  %t18 = getelementptr { i64, [5 x i64] }, ptr %t16, i32 0, i32 1
  %t19 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t18, i32 0, i32 2
  %t20 = load ptr, ptr %t19
  store ptr %t20, ptr %l5, !tbaa !29
  br label %bb5
bb4:
  br label %bb10
bb5:
  %t22 = load ptr, ptr %l0, !tbaa !29
  %t24 = getelementptr %"compiler/typed:LocalUses", ptr %t22, i32 0, i32 0
  %t25 = load ptr, ptr %t24, !tbaa !29
  store ptr %t25, ptr %l20, !tbaa !29
  %t26 = load i32, ptr %l4, !tbaa !23
  %t27 = load ptr, ptr %l20, !tbaa !29
  %t28 = call ptr @__olang_scope_or(ptr %v2, ptr %t27)
  %t29 = ptrtoint ptr %t28 to i64
  %t31 = inttoptr i64 %t29 to ptr
  %t32 = load ptr, ptr %l20, !tbaa !29
  %t34 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePermOf(ptr %t31, ptr %t32, i32 %t26)
  store i64 %t34, ptr %l23
  br label %bb6
bb6:
  %t35 = load i64, ptr @G_2ecompiler_2ftypes_2eWritable, !tbaa !24
  %t36 = load i64, ptr %l23, !tbaa !24
  %t38 = and i64 %t36, %t35
  %t40 = icmp eq i64 %t38, 0
  br i1 %t40, label %bb7, label %bb8
bb7:
  %t42 = load ptr, ptr %l5, !tbaa !29
  store ptr %t42, ptr %l27, !tbaa !29
  br label %bb9
bb8:
  store ptr null, ptr %l27, !tbaa !29
  br label %bb9
bb9:
  %t45 = load ptr, ptr %l27, !tbaa !29
  store ptr %t45, ptr %l10, !tbaa !29
  br label %bb29
bb10:
  %t46 = load ptr, ptr %l1, !tbaa !29
  store ptr %t46, ptr %l30, !tbaa !29
  store i1 false, ptr %l31, !tbaa !21
  %t47 = load ptr, ptr %l30, !tbaa !29
  %t48 = icmp ne ptr %t47, null
  br i1 %t48, label %bb11, label %bb12
bb11:
  %t50 = load ptr, ptr %l30, !tbaa !29
  %t51 = load i64, ptr %t50, !range !{i64 0, i64 18}
  %t53 = icmp eq i64 %t51, 2
  store i1 %t53, ptr %l31, !tbaa !21
  br label %bb12
bb12:
  %t54 = load i1, ptr %l31, !tbaa !21
  br i1 %t54, label %bb13, label %bb14
bb13:
  %t55 = load ptr, ptr %l1, !tbaa !29
  %t57 = getelementptr { i64, [5 x i64] }, ptr %t55, i32 0, i32 1
  %t58 = getelementptr { %"compiler/source:Span", i32, ptr, i32 }, ptr %t57, i32 0, i32 1
  %t59 = load i32, ptr %t58
  store i32 %t59, ptr %l6, !tbaa !23
  %t61 = load ptr, ptr %l1, !tbaa !29
  %t63 = getelementptr { i64, [5 x i64] }, ptr %t61, i32 0, i32 1
  %t64 = getelementptr { %"compiler/source:Span", i32, ptr, i32 }, ptr %t63, i32 0, i32 2
  %t65 = load ptr, ptr %t64
  store ptr %t65, ptr %l7, !tbaa !29
  br label %bb15
bb14:
  br label %bb24
bb15:
  %t67 = load ptr, ptr %l0, !tbaa !29
  %t69 = getelementptr %"compiler/typed:LocalUses", ptr %t67, i32 0, i32 0
  %t70 = load ptr, ptr %t69, !tbaa !29
  store ptr %t70, ptr %l39, !tbaa !29
  %t71 = load i32, ptr %l6, !tbaa !23
  %t72 = load ptr, ptr %l39, !tbaa !29
  %t73 = call ptr @__olang_scope_or(ptr %v2, ptr %t72)
  %t74 = ptrtoint ptr %t73 to i64
  %t76 = inttoptr i64 %t74 to ptr
  %t77 = load ptr, ptr %l39, !tbaa !29
  %t79 = call i1 @compiler_2ftyped_2escalarType(ptr %t76, ptr %t77, i32 %t71)
  store i1 %t79, ptr %l42
  br label %bb16
bb16:
  %t80 = load i1, ptr %l42, !tbaa !21
  %t81 = xor i1 %t80, true
  br i1 %t81, label %bb17, label %bb18
bb17:
  %t83 = load ptr, ptr %l0, !tbaa !29
  %t85 = getelementptr %"compiler/typed:LocalUses", ptr %t83, i32 0, i32 0
  %t86 = load ptr, ptr %t85, !tbaa !29
  store ptr %t86, ptr %l46, !tbaa !29
  %t87 = load i32, ptr %l6, !tbaa !23
  %t88 = load ptr, ptr %l46, !tbaa !29
  %t89 = call ptr @__olang_scope_or(ptr %v2, ptr %t88)
  %t90 = ptrtoint ptr %t89 to i64
  %t92 = inttoptr i64 %t90 to ptr
  %t93 = load ptr, ptr %l46, !tbaa !29
  %t95 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePermOf(ptr %t92, ptr %t93, i32 %t87)
  store i64 %t95, ptr %l49
  br label %bb19
bb18:
  store i1 false, ptr %l44, !tbaa !21
  br label %bb20
bb19:
  %t96 = load i64, ptr @G_2ecompiler_2ftypes_2eWritable, !tbaa !24
  %t97 = load i64, ptr %l49, !tbaa !24
  %t99 = and i64 %t97, %t96
  %t101 = icmp eq i64 %t99, 0
  store i1 %t101, ptr %l44, !tbaa !21
  br label %bb20
bb20:
  %t103 = load i1, ptr %l44, !tbaa !21
  br i1 %t103, label %bb21, label %bb22
bb21:
  %t104 = load ptr, ptr %l7, !tbaa !29
  store ptr %t104, ptr %l53, !tbaa !29
  br label %bb23
bb22:
  store ptr null, ptr %l53, !tbaa !29
  br label %bb23
bb23:
  %t107 = load ptr, ptr %l53, !tbaa !29
  store ptr %t107, ptr %l10, !tbaa !29
  br label %bb29
bb24:
  br i1 true, label %bb25, label %bb26
bb25:
  br label %bb27
bb26:
  br label %bb28
bb27:
  store ptr null, ptr %l10, !tbaa !29
  br label %bb29
bb28:
  call void @__olang_check_failed(ptr @olang_loc_93af16bb2b9103f6_23d1e52eae2906e2)
  unreachable
bb29:
  %t108 = load ptr, ptr %l10, !tbaa !29
  store ptr %t108, ptr %l8, !tbaa !29
  %t109 = load ptr, ptr %l8, !tbaa !29
  %t111 = icmp eq ptr %t109, null
  br i1 %t111, label %bb30, label %bb31
bb30:
  store i1 false, ptr %rv
  br label %ret
bb31:
  br label %bb32
bb32:
  %t114 = load ptr, ptr %l0, !tbaa !29
  %t115 = load ptr, ptr %l8, !tbaa !29
  %t118 = call i64 @compiler_2ftyped_2ecompiler_2ftyped_3aLocalUses_2erootOf(ptr %v0, ptr %v1, ptr %t114, ptr %t115)
  store i64 %t118, ptr %l61
  br label %bb33
bb33:
  %t119 = load i64, ptr %l61, !tbaa !24
  store i64 %t119, ptr %l9, !tbaa !24
  %t120 = load i64, ptr %l9, !tbaa !24
  %t122 = icmp slt i64 %t120, 0
  br i1 %t122, label %bb34, label %bb35
bb34:
  store i1 false, ptr %rv
  br label %ret
bb35:
  br label %bb36
bb36:
  %t125 = load ptr, ptr %l0, !tbaa !29
  %t126 = load ptr, ptr %l8, !tbaa !29
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aLocalUses_2eplaceExprs(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %t125, ptr %t126)
  br label %bb37
bb37:
  %t129 = load ptr, ptr %l0, !tbaa !29
  %t131 = getelementptr %"compiler/typed:LocalUses", ptr %t129, i32 0, i32 5
  %t132 = load i64, ptr %l9, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eSetAt_3cBool_3e(ptr %v0, ptr %t131, i64 %t132, i1 true)
  br label %bb38
bb38:
  %t135 = load ptr, ptr %l0, !tbaa !29
  %t137 = getelementptr %"compiler/typed:LocalUses", ptr %t135, i32 0, i32 15
  %t138 = load i64, ptr %l9, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %t137, i64 %t138)
  br label %bb39
bb39:
  %t141 = load ptr, ptr %l0, !tbaa !29
  %t143 = getelementptr %"compiler/typed:LocalUses", ptr %t141, i32 0, i32 16
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %t143, i64 %a2)
  br label %bb40
bb40:
  %t147 = load ptr, ptr %l0, !tbaa !29
  %t149 = getelementptr %"compiler/typed:LocalUses", ptr %t147, i32 0, i32 17
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %t149, i64 %a3)
  br label %bb41
bb41:
  store i1 true, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2ftyped_2ecompiler_2ftyped_3aVersions_2eReaching(ptr %v0, ptr %v1, ptr %a0, i64 %a1, i64 %a2) #0 {
entry:
  %lp3 = alloca ptr
  %l4 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %rv = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  br label %start
start:
  br label %bb0
bb0:
  %t1 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %v1, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1, ptr %l4
  br label %bb1
bb1:
  %t2 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 32, i64 8)
  store ptr %t2, ptr %lp3
  %t3 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l4
  %t4 = load ptr, ptr %lp3
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t3, ptr %t4
  %t8 = load ptr, ptr %lp3
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aVersions_2eReachInto(ptr %v0, ptr %v1, ptr %a0, i64 %a1, i64 %a2, ptr %t8)
  br label %bb2
bb2:
  %t13 = load ptr, ptr %lp3
  %t14 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t13
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t14, ptr %rv
  br label %ret
ret:
  %rr = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %rv
  ret %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %rr
}

define dso_local i64 @compiler_2ftyped_2ecompiler_2ftyped_3aVersions_2eRowOf(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l2 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i32
  %rv = alloca i64
  br label %start
start:
  br label %bb0
bb0:
  %t3 = getelementptr %"compiler/typed:Versions", ptr %a0, i32 0, i32 10
  %t7 = call { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2eGet_3cI64_2c_20I64_3e(ptr %v0, ptr %t3, i64 %a1)
  %t8 = extractvalue { i32, i64 } %t7, 1
  %t9 = extractvalue { i32, i64 } %t7, 0
  store i32 %t9, ptr %l7
  %t10 = icmp ne i32 %t9, 0
  br i1 %t10, label %bb2, label %ok.11, !prof !99
ok.11:
  store i64 %t8, ptr %l6
  br label %bb1
bb1:
  %t12 = load i64, ptr %l6, !tbaa !24
  store i64 %t12, ptr %l2, !tbaa !24
  br label %bb4
bb2:
  br label %bb3
bb3:
  store i64 -1, ptr %l2, !tbaa !24
  br label %bb4
bb4:
  %t13 = load i64, ptr %l2, !tbaa !24
  store i64 %t13, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local void @compiler_2ftyped_2ecompiler_2ftyped_3aVersions_2eaddDef(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1, i64 %a2, i32 %a3, ptr %a4, i1 %a5) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/source:Span"
  %l2 = alloca i64
  %l6 = alloca i64
  %l11 = alloca i1
  %l13 = alloca ptr
  %l16 = alloca i64
  %l17 = alloca i1
  %l21 = alloca ptr
  %l24 = alloca i64
  %l27 = alloca i64
  store ptr %a0, ptr %l0
  store %"compiler/source:Span" %a1, ptr %l1
  store i64 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = getelementptr %"compiler/source:Span", ptr %l1, i32 0, i32 0
  %t2 = load i32, ptr %t1, !tbaa !23
  %t4 = sext i32 %t2 to i64
  store i64 %t4, ptr %l6, !tbaa !24
  %t6 = load i64, ptr %l6, !tbaa !24
  %t8 = icmp sge i64 %t6, 0
  br i1 %t8, label %bb1, label %bb2
bb1:
  %t10 = load ptr, ptr %l0, !tbaa !29
  %t12 = getelementptr %"compiler/typed:Versions", ptr %t10, i32 0, i32 8
  store ptr %t12, ptr %l13, !tbaa !29
  %t13 = load i64, ptr %l6, !tbaa !24
  %t14 = load i64, ptr %l2, !tbaa !24
  %t17 = call i64 @compiler_2ftyped_2edefName(i64 %t13, i64 %t14)
  store i64 %t17, ptr %l16
  br label %bb3
bb2:
  store i1 false, ptr %l11, !tbaa !21
  br label %bb5
bb3:
  %t18 = load ptr, ptr %l13, !tbaa !29
  %t19 = load i64, ptr %l16, !tbaa !24
  %t20 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2eHas_3cI64_2c_20I64_3e(ptr %v0, ptr %t18, i64 %t19)
  store i1 %t20, ptr %l17
  br label %bb4
bb4:
  %t21 = load i1, ptr %l17, !tbaa !21
  store i1 %t21, ptr %l11, !tbaa !21
  br label %bb5
bb5:
  %t22 = load i1, ptr %l11, !tbaa !21
  br i1 %t22, label %bb6, label %bb7
bb6:
  br label %ret
bb7:
  br label %bb8
bb8:
  %t23 = load i64, ptr %l6, !tbaa !24
  %t25 = icmp sge i64 %t23, 0
  br i1 %t25, label %bb9, label %bb10
bb9:
  %t27 = load ptr, ptr %l0, !tbaa !29
  %t29 = getelementptr %"compiler/typed:Versions", ptr %t27, i32 0, i32 8
  store ptr %t29, ptr %l21, !tbaa !29
  %t30 = load i64, ptr %l6, !tbaa !24
  %t31 = load i64, ptr %l2, !tbaa !24
  %t34 = call i64 @compiler_2ftyped_2edefName(i64 %t30, i64 %t31)
  store i64 %t34, ptr %l24
  br label %bb11
bb10:
  br label %bb14
bb11:
  %t35 = load ptr, ptr %l0, !tbaa !29
  %t37 = getelementptr %"compiler/typed:Versions", ptr %t35, i32 0, i32 3
  %t39 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %t37)
  store i64 %t39, ptr %l27
  br label %bb12
bb12:
  %t40 = load ptr, ptr %l21, !tbaa !29
  %t41 = load i64, ptr %l24, !tbaa !24
  %t42 = load i64, ptr %l27, !tbaa !24
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2ePut_3cI64_2c_20I64_3e(ptr %v0, ptr %t40, i64 %t41, i64 %t42)
  br label %bb13
bb13:
  br label %bb14
bb14:
  %t43 = load ptr, ptr %l0, !tbaa !29
  %t45 = getelementptr %"compiler/typed:Versions", ptr %t43, i32 0, i32 3
  %t46 = load i64, ptr %l2, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %t45, i64 %t46)
  br label %bb15
bb15:
  %t49 = load ptr, ptr %l0, !tbaa !29
  %t51 = getelementptr %"compiler/typed:Versions", ptr %t49, i32 0, i32 4
  %t52 = load %"compiler/source:Span", ptr %l1
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aSpan_3e_2ePush_3ccompiler_2fsource_3aSpan_3e(ptr %v0, ptr %t51, %"compiler/source:Span" %t52)
  br label %bb16
bb16:
  %t55 = load ptr, ptr %l0, !tbaa !29
  %t57 = getelementptr %"compiler/typed:Versions", ptr %t55, i32 0, i32 5
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aBlockId_3e_2ePush_3ccompiler_2ftyped_3aBlockId_3e(ptr %v0, ptr %t57, i32 %a3)
  br label %bb17
bb17:
  %t61 = load ptr, ptr %l0, !tbaa !29
  %t63 = getelementptr %"compiler/typed:Versions", ptr %t61, i32 0, i32 6
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_3f_26_3e_2ePus_H0c70e9e86794aea54789ff5f3987086b(ptr %v0, ptr %v1, ptr %t63, ptr %a4)
  br label %bb18
bb18:
  %t67 = load ptr, ptr %l0, !tbaa !29
  %t69 = getelementptr %"compiler/typed:Versions", ptr %t67, i32 0, i32 7
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2ePush_3cBool_3e(ptr %v0, ptr %t69, i1 %a5)
  br label %bb19
bb19:
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2ftyped_2ecompiler_2ftyped_3aVersions_2earm(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
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
  %l10 = alloca { i64, ptr }
  %l11 = alloca i64
  %l12 = alloca i64
  %l22 = alloca { i64, ptr }
  %l37 = alloca { i64, ptr }
  %l58 = alloca ptr
  %l79 = alloca { i64, ptr }
  %l89 = alloca i32
  %l92 = alloca i32
  %l93 = alloca i32
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
  br label %bb14
bb3:
  br label %bb4
bb4:
  %t18 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t18, ptr %l22, !tbaa !27
  %t19 = load i64, ptr %l3, !tbaa !24
  %t21 = getelementptr { i64, ptr }, ptr %l22, i32 0, i32 1
  %t22 = load ptr, ptr %t21, !tbaa !27
  %t23 = getelementptr ptr, ptr %t22, i64 %t19
  %t24 = load ptr, ptr %t23, !tbaa !39
  store ptr %t24, ptr %l5, !tbaa !29
  %t26 = load ptr, ptr %l0, !tbaa !29
  %t27 = load ptr, ptr %l5, !tbaa !29
  %t29 = getelementptr %"compiler/typed:Alt", ptr %t27, i32 0, i32 0
  %t30 = load ptr, ptr %t29, !tbaa !29
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aVersions_2eexpr(ptr %v0, ptr %v1, ptr %t26, ptr %t30)
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
  br label %bb12
bb8:
  br label %bb9
bb9:
  %t51 = load { i64, ptr }, ptr %l6, !tbaa !27
  store { i64, ptr } %t51, ptr %l37, !tbaa !27
  %t52 = load i64, ptr %l7, !tbaa !24
  %t54 = getelementptr { i64, ptr }, ptr %l37, i32 0, i32 1
  %t55 = load ptr, ptr %t54, !tbaa !27
  %t56 = getelementptr ptr, ptr %t55, i64 %t52
  %t57 = load ptr, ptr %t56, !tbaa !39
  %t59 = load ptr, ptr %l0, !tbaa !29
  %t62 = getelementptr %"compiler/typed:Bind", ptr %t57, i32 0, i32 1
  %t63 = load ptr, ptr %t62, !tbaa !29
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aVersions_2eexpr(ptr %v0, ptr %v1, ptr %t59, ptr %t63)
  br label %bb10
bb10:
  br label %bb11
bb11:
  %t67 = load i64, ptr %l7, !tbaa !24
  %t69 = add i64 %t67, 1
  store i64 %t69, ptr %l7, !tbaa !24
  br label %bb6
bb12:
  br label %bb13
bb13:
  %t71 = load i64, ptr %l3, !tbaa !24
  %t73 = add i64 %t71, 1
  store i64 %t73, ptr %l3, !tbaa !24
  br label %bb1
bb14:
  %t75 = load ptr, ptr %l0, !tbaa !29
  %t76 = load ptr, ptr %l1, !tbaa !29
  %t78 = getelementptr %"compiler/typed:Arm", ptr %t76, i32 0, i32 2
  %t79 = load ptr, ptr %t78, !tbaa !29
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aVersions_2eexpr(ptr %v0, ptr %v1, ptr %t75, ptr %t79)
  br label %bb15
bb15:
  %t82 = load ptr, ptr %l1, !tbaa !29
  %t84 = getelementptr %"compiler/typed:Arm", ptr %t82, i32 0, i32 3
  %t85 = load ptr, ptr %t84, !tbaa !29
  %t87 = icmp eq ptr %t85, null
  br i1 %t87, label %bb16, label %bb17
bb16:
  %t89 = load ptr, ptr %l0, !tbaa !29
  %t90 = load ptr, ptr %l1, !tbaa !29
  %t92 = getelementptr %"compiler/typed:Arm", ptr %t90, i32 0, i32 4
  %t93 = load ptr, ptr %t92, !tbaa !29
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aVersions_2eexpr(ptr %v0, ptr %v1, ptr %t89, ptr %t93)
  br label %bb18
bb17:
  br label %bb19
bb18:
  br label %ret
bb19:
  %t96 = load ptr, ptr %l0, !tbaa !29
  %t98 = getelementptr %"compiler/typed:Versions", ptr %t96, i32 0, i32 16
  store ptr %t98, ptr %l58, !tbaa !29
  %t99 = load ptr, ptr %l1, !tbaa !29
  %t101 = getelementptr %"compiler/typed:Arm", ptr %t99, i32 0, i32 3
  %t102 = load ptr, ptr %t101, !tbaa !29
  %t104 = icmp eq ptr %t102, null
  br i1 %t104, label %bb20, label %bb21
bb20:
  call void @__olang_check_failed(ptr @olang_loc_43c6edd5f3ea6aa2_25eece1f43523776)
  unreachable
bb21:
  br label %bb22
bb22:
  %t106 = load ptr, ptr %l1, !tbaa !29
  %t108 = getelementptr %"compiler/typed:Arm", ptr %t106, i32 0, i32 3
  %t109 = load ptr, ptr %t108, !tbaa !29
  %t112 = getelementptr %"compiler/typed:Block", ptr %t109, i32 0, i32 0
  %t113 = load i32, ptr %t112, !tbaa !23
  %t114 = load ptr, ptr %l58, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aBlockId_3e_2ePush_3ccompiler_2ftyped_3aBlockId_3e(ptr %v0, ptr %t114, i32 %t113)
  br label %bb23
bb23:
  %t116 = load ptr, ptr %l1, !tbaa !29
  %t118 = getelementptr %"compiler/typed:Arm", ptr %t116, i32 0, i32 3
  %t119 = load ptr, ptr %t118, !tbaa !29
  %t121 = icmp eq ptr %t119, null
  br i1 %t121, label %bb24, label %bb25
bb24:
  call void @__olang_check_failed(ptr @olang_loc_8a2b699ea2f67509_3bce0390ecfabbdd)
  unreachable
bb25:
  br label %bb26
bb26:
  %t123 = load ptr, ptr %l1, !tbaa !29
  %t125 = getelementptr %"compiler/typed:Arm", ptr %t123, i32 0, i32 3
  %t126 = load ptr, ptr %t125, !tbaa !29
  %t129 = getelementptr %"compiler/typed:Block", ptr %t126, i32 0, i32 1
  %t130 = load { i64, ptr }, ptr %t129, !tbaa !27
  store { i64, ptr } %t130, ptr %l10, !tbaa !27
  store i64 0, ptr %l11, !tbaa !24
  %t132 = load { i64, ptr }, ptr %l10, !tbaa !27
  %t134 = extractvalue { i64, ptr } %t132, 0
  store i64 %t134, ptr %l12, !tbaa !24
  br label %bb27
bb27:
  %t136 = load i64, ptr %l11, !tbaa !24
  %t137 = load i64, ptr %l12, !tbaa !24
  %t140 = icmp slt i64 %t136, %t137
  %t142 = xor i1 %t140, true
  br i1 %t142, label %bb28, label %bb29
bb28:
  br label %bb33
bb29:
  br label %bb30
bb30:
  %t144 = load { i64, ptr }, ptr %l10, !tbaa !27
  store { i64, ptr } %t144, ptr %l79, !tbaa !27
  %t145 = load i64, ptr %l11, !tbaa !24
  %t147 = getelementptr { i64, ptr }, ptr %l79, i32 0, i32 1
  %t148 = load ptr, ptr %t147, !tbaa !27
  %t149 = getelementptr ptr, ptr %t148, i64 %t145
  %t150 = load ptr, ptr %t149, !tbaa !39
  %t152 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aVersions_2estmt(ptr %v0, ptr %v1, ptr %t152, ptr %t150)
  br label %bb31
bb31:
  br label %bb32
bb32:
  %t156 = load i64, ptr %l11, !tbaa !24
  %t158 = add i64 %t156, 1
  store i64 %t158, ptr %l11, !tbaa !24
  br label %bb27
bb33:
  %t160 = load ptr, ptr %l0, !tbaa !29
  %t161 = load ptr, ptr %l1, !tbaa !29
  %t163 = getelementptr %"compiler/typed:Arm", ptr %t161, i32 0, i32 4
  %t164 = load ptr, ptr %t163, !tbaa !29
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aVersions_2eexpr(ptr %v0, ptr %v1, ptr %t160, ptr %t164)
  br label %bb34
bb34:
  %t167 = load ptr, ptr %l0, !tbaa !29
  %t169 = getelementptr %"compiler/typed:Versions", ptr %t167, i32 0, i32 16
  %t171 = call { i32, i32 } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aBlockId_3e_2ePop_3ccompiler_2ftyped_3aBlockId_3e(ptr %v0, ptr %t169)
  %t172 = extractvalue { i32, i32 } %t171, 1
  %t173 = extractvalue { i32, i32 } %t171, 0
  store i32 %t173, ptr %l93
  %t174 = icmp ne i32 %t173, 0
  br i1 %t174, label %bb36, label %ok.175, !prof !99
ok.175:
  store i32 %t172, ptr %l92
  br label %bb35
bb35:
  %t176 = load i32, ptr %l92, !tbaa !23
  store i32 %t176, ptr %l89, !tbaa !23
  br label %bb43
bb36:
  %t177 = load i32, ptr %l93, !tbaa !23
  %t178 = icmp eq i32 %t177, 65536
  br i1 %t178, label %bb37, label %bb38
bb37:
  call void @__olang_bang_failed_plain(ptr @olang_loc_a872ad126d8d9744_e4960385d07a8740)
  unreachable
bb38:
  %t180 = load i32, ptr %l93, !tbaa !23
  %t181 = icmp eq i32 %t180, 65537
  br i1 %t181, label %bb39, label %bb40
bb39:
  call void @__olang_bang_failed_plain(ptr @olang_loc_f34031efedf98c99_ae8fa248572091b5)
  unreachable
bb40:
  %t183 = load i32, ptr %l93, !tbaa !23
  %t184 = icmp eq i32 %t183, 65538
  br i1 %t184, label %bb41, label %bb42
bb41:
  call void @__olang_bang_failed_plain(ptr @olang_loc_1baf36c5dd0b9bdd_a2c9e1d98e30c571)
  unreachable
bb42:
  call void @__olang_bang_failed_plain(ptr @olang_loc_49ff4d0dc0b12b63_5e68d9fa98bc7cb7)
  unreachable
bb43:
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2ftyped_2ecompiler_2ftyped_3aVersions_2eblock(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
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
  %t7 = getelementptr %"compiler/typed:Versions", ptr %t5, i32 0, i32 16
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
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aVersions_2estmt(ptr %v0, ptr %v1, ptr %t39, ptr %t37)
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
  %t49 = getelementptr %"compiler/typed:Versions", ptr %t47, i32 0, i32 16
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
  call void @__olang_bang_failed_plain(ptr @olang_loc_1728180708920569_396f77e53f37dbed)
  unreachable
bb15:
  %t60 = load i32, ptr %l31, !tbaa !23
  %t61 = icmp eq i32 %t60, 65537
  br i1 %t61, label %bb16, label %bb17
bb16:
  call void @__olang_bang_failed_plain(ptr @olang_loc_64712ec69db6f686_5286ea6d6f8bc3a)
  unreachable
bb17:
  %t63 = load i32, ptr %l31, !tbaa !23
  %t64 = icmp eq i32 %t63, 65538
  br i1 %t64, label %bb18, label %bb19
bb18:
  call void @__olang_bang_failed_plain(ptr @olang_loc_3937948e4172da86_b4226ee484a284a)
  unreachable
bb19:
  call void @__olang_bang_failed_plain(ptr @olang_loc_e2e1378986f13fd0_6a804f95244a4cf4)
  unreachable
bb20:
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2ftyped_2ecompiler_2ftyped_3aVersions_2eclauses(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1, ptr %a2, i1 %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca { i64, ptr }
  %l4 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l5 = alloca { i64, ptr }
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca ptr
  %l12 = alloca i64
  %l15 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l24 = alloca { i64, ptr }
  %l39 = alloca i64
  %l42 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l44 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %s0 = alloca %olang.scope
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
  %t7 = ptrtoint ptr %s0 to i64
  store i64 %t7, ptr %l12, !tbaa !24
  %t8 = load i1, ptr @olang_2esole_2ecompiler__2ftyped__2ecompiler__2ftyped__3aVersions__2eclauses_2elocal_2e4
  br i1 %t8, label %bb4, label %bb5
bb4:
  %t10 = call ptr @__olang_region_make(ptr %s0)
  %t11 = ptrtoint ptr %t10 to i64
  store i64 %t11, ptr %l12, !tbaa !24
  br label %bb5
bb5:
  %t12 = load ptr, ptr %l0, !tbaa !29
  %t13 = load i64, ptr %l12
  %t14 = inttoptr i64 %t13 to ptr
  %t16 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2ftyped_2ecompiler_2ftyped_3aVersions_2esave(ptr %v0, ptr %t14, ptr %t12)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t16, ptr %l15
  br label %bb6
bb6:
  %t17 = load i1, ptr @olang_2esole_2ecompiler__2ftyped__2ecompiler__2ftyped__3aVersions__2eclauses_2elocal_2e4
  br i1 %t17, label %bb7, label %bb8
bb7:
  %t19 = load i64, ptr %l12
  %t20 = inttoptr i64 %t19 to ptr
  %t21 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l15, i32 0, i32 0
  %t22 = load { i64, ptr }, ptr %t21
  %t23 = extractvalue { i64, ptr } %t22, 1
  %t24 = call ptr @__olang_region_or(ptr %t23, ptr null)
  %t25 = icmp ne ptr %t24, null
  %t26 = select i1 %t25, ptr %t24, ptr null
  %t27 = icmp eq ptr %t26, %t20
  call void @__olang_region_settle(ptr %t20, i1 %t27)
  br label %bb8
bb8:
  %t28 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l15
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t28, ptr %l4
  %t29 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t29, ptr %l5, !tbaa !27
  store i64 0, ptr %l6, !tbaa !24
  %t31 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t33 = extractvalue { i64, ptr } %t31, 0
  store i64 %t33, ptr %l7, !tbaa !24
  br label %bb9
bb9:
  %t35 = load i64, ptr %l6, !tbaa !24
  %t36 = load i64, ptr %l7, !tbaa !24
  %t39 = icmp slt i64 %t35, %t36
  %t41 = xor i1 %t39, true
  br i1 %t41, label %bb10, label %bb11
bb10:
  br label %bb29
bb11:
  br label %bb12
bb12:
  %t43 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t43, ptr %l24, !tbaa !27
  %t44 = load i64, ptr %l6, !tbaa !24
  %t46 = getelementptr { i64, ptr }, ptr %l24, i32 0, i32 1
  %t47 = load ptr, ptr %t46, !tbaa !27
  %t48 = getelementptr ptr, ptr %t47, i64 %t44
  %t49 = load ptr, ptr %t48, !tbaa !39
  store ptr %t49, ptr %l8, !tbaa !29
  br i1 %a3, label %bb13, label %bb14
bb13:
  %t53 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aVersions_2eall(ptr %v0, ptr %t53)
  br label %bb15
bb14:
  %t55 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aVersions_2erestore(ptr %v0, ptr %v2, ptr %t55, ptr %a2)
  br label %bb16
bb15:
  br label %bb17
bb16:
  br label %bb17
bb17:
  %t59 = load ptr, ptr %l0, !tbaa !29
  %t60 = load ptr, ptr %l8, !tbaa !29
  %t62 = getelementptr %"compiler/typed:Clause", ptr %t60, i32 0, i32 3
  %t63 = load ptr, ptr %t62, !tbaa !29
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aVersions_2eblock(ptr %v0, ptr %v1, ptr %t59, ptr %t63)
  br label %bb18
bb18:
  %t66 = load ptr, ptr %l0, !tbaa !29
  %t67 = load ptr, ptr %l8, !tbaa !29
  %t69 = getelementptr %"compiler/typed:Clause", ptr %t67, i32 0, i32 4
  %t70 = load { i64, ptr }, ptr %t69, !tbaa !27
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aVersions_2eexprs(ptr %v0, ptr %v1, ptr %t66, { i64, ptr } %t70)
  br label %bb19
bb19:
  %t73 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aVersions_2emeet(ptr %v0, ptr %s0, ptr %t73, ptr %l4)
  br label %bb20
bb20:
  %t76 = ptrtoint ptr %s0 to i64
  store i64 %t76, ptr %l39, !tbaa !24
  %t77 = load i1, ptr @olang_2esole_2ecompiler__2ftyped__2ecompiler__2ftyped__3aVersions__2eclauses_2elocal_2e4
  br i1 %t77, label %bb21, label %bb22
bb21:
  %t79 = call ptr @__olang_region_make(ptr %s0)
  %t80 = ptrtoint ptr %t79 to i64
  store i64 %t80, ptr %l39, !tbaa !24
  br label %bb22
bb22:
  %t81 = load ptr, ptr %l0, !tbaa !29
  %t82 = load i64, ptr %l39
  %t83 = inttoptr i64 %t82 to ptr
  %t85 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2ftyped_2ecompiler_2ftyped_3aVersions_2esave(ptr %v0, ptr %t83, ptr %t81)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t85, ptr %l42
  br label %bb23
bb23:
  %t86 = load i1, ptr @olang_2esole_2ecompiler__2ftyped__2ecompiler__2ftyped__3aVersions__2eclauses_2elocal_2e4
  br i1 %t86, label %bb24, label %bb25
bb24:
  %t88 = load i64, ptr %l39
  %t89 = inttoptr i64 %t88 to ptr
  %t90 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l42, i32 0, i32 0
  %t91 = load { i64, ptr }, ptr %t90
  %t92 = extractvalue { i64, ptr } %t91, 1
  %t93 = call ptr @__olang_region_or(ptr %t92, ptr null)
  %t94 = icmp ne ptr %t93, null
  %t95 = select i1 %t94, ptr %t93, ptr null
  %t96 = icmp eq ptr %t95, %t89
  call void @__olang_region_settle(ptr %t89, i1 %t96)
  br label %bb25
bb25:
  %t97 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l4
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t97, ptr %l44
  %t98 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l42
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t98, ptr %l4
  %t99 = load i1, ptr @olang_2esole_2ecompiler__2ftyped__2ecompiler__2ftyped__3aVersions__2eclauses_2elocal_2e4
  br i1 %t99, label %bb26, label %bb27
bb26:
  %t101 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l44, i32 0, i32 0
  %t102 = load { i64, ptr }, ptr %t101
  %t103 = extractvalue { i64, ptr } %t102, 1
  %t104 = call ptr @__olang_region_or(ptr %t103, ptr null)
  %t105 = icmp ne ptr %t104, null
  %t106 = select i1 %t105, ptr %t104, ptr null
  call void @__olang_region_drop(ptr %t106)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" zeroinitializer, ptr %l44
  br label %bb27
bb27:
  br label %bb28
bb28:
  %t107 = load i64, ptr %l6, !tbaa !24
  %t109 = add i64 %t107, 1
  store i64 %t109, ptr %l6, !tbaa !24
  br label %bb9
bb29:
  %t111 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aVersions_2erestore(ptr %v0, ptr %s0, ptr %t111, ptr %l4)
  br label %bb30
bb30:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2ftyped_2ecompiler_2ftyped_3aVersions_2edefine(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1, i64 %a2, ptr %a3, i1 %a4) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/source:Span"
  %l2 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca i64
  %l14 = alloca i1
  %l20 = alloca i1
  %l22 = alloca { i64, ptr }
  %l28 = alloca ptr
  %l29 = alloca %"compiler/source:Span"
  %l30 = alloca i64
  %l32 = alloca ptr
  %l35 = alloca i64
  %l37 = alloca i32
  %l44 = alloca i64
  %l47 = alloca i1
  %l49 = alloca i1
  %l52 = alloca i64
  %l56 = alloca i64
  %l59 = alloca i64
  %l80 = alloca i64
  store ptr %a0, ptr %l0
  store %"compiler/source:Span" %a1, ptr %l1
  store i64 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load i64, ptr %l2, !tbaa !24
  %t3 = icmp slt i64 %t1, 0
  br i1 %t3, label %bb1, label %bb2
bb1:
  store i1 true, ptr %l14, !tbaa !21
  br label %bb3
bb2:
  %t5 = load i64, ptr %l2, !tbaa !24
  %t6 = load ptr, ptr %l0, !tbaa !29
  %t8 = getelementptr %"compiler/typed:Versions", ptr %t6, i32 0, i32 2
  %t9 = load { i64, ptr }, ptr %t8, !tbaa !27
  %t11 = extractvalue { i64, ptr } %t9, 0
  %t14 = icmp sge i64 %t5, %t11
  store i1 %t14, ptr %l14, !tbaa !21
  br label %bb3
bb3:
  %t16 = load i1, ptr %l14, !tbaa !21
  br i1 %t16, label %bb4, label %bb5
bb4:
  store i1 true, ptr %l20, !tbaa !21
  br label %bb6
bb5:
  %t17 = load ptr, ptr %l0, !tbaa !29
  %t19 = getelementptr %"compiler/typed:Versions", ptr %t17, i32 0, i32 2
  %t20 = load { i64, ptr }, ptr %t19, !tbaa !27
  store { i64, ptr } %t20, ptr %l22, !tbaa !27
  %t21 = load i64, ptr %l2, !tbaa !24
  %t23 = getelementptr { i64, ptr }, ptr %l22, i32 0, i32 1
  %t24 = load ptr, ptr %t23, !tbaa !27
  %t25 = getelementptr i1, ptr %t24, i64 %t21
  %t26 = load i1, ptr %t25, !tbaa !31
  %t28 = xor i1 %t26, true
  store i1 %t28, ptr %l20, !tbaa !21
  br label %bb6
bb6:
  %t30 = load i1, ptr %l20, !tbaa !21
  br i1 %t30, label %bb7, label %bb8
bb7:
  br label %ret
bb8:
  br label %bb9
bb9:
  %t31 = load ptr, ptr %l0, !tbaa !29
  %t33 = getelementptr %"compiler/typed:Versions", ptr %t31, i32 0, i32 20
  %t34 = load i1, ptr %t33, !tbaa !21
  br i1 %t34, label %bb10, label %bb11
bb10:
  %t36 = load ptr, ptr %l0, !tbaa !29
  store ptr %t36, ptr %l28, !tbaa !29
  %t37 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t37, ptr %l29
  %t38 = load i64, ptr %l2, !tbaa !24
  store i64 %t38, ptr %l30, !tbaa !24
  %t39 = load ptr, ptr %l0, !tbaa !29
  %t41 = getelementptr %"compiler/typed:Versions", ptr %t39, i32 0, i32 16
  store ptr %t41, ptr %l32, !tbaa !29
  %t42 = load ptr, ptr %l0, !tbaa !29
  %t44 = getelementptr %"compiler/typed:Versions", ptr %t42, i32 0, i32 16
  %t46 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aBlockId_3e_2eLen_3ccompiler_2ftyped_3aBlockId_3e(ptr %v0, ptr %t44)
  store i64 %t46, ptr %l35
  br label %bb12
bb11:
  br label %bb15
bb12:
  %t47 = load i64, ptr %l35, !tbaa !24
  %t48 = sub i64 %t47, 1
  %t49 = load ptr, ptr %l32, !tbaa !29
  %t51 = call i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aBlockId_3e_2eAt_3ccompiler_2ftyped_3aBlockId_3e(ptr %v0, ptr %t49, i64 %t48)
  store i32 %t51, ptr %l37
  br label %bb13
bb13:
  %t54 = load ptr, ptr %l28, !tbaa !29
  %t55 = load %"compiler/source:Span", ptr %l29
  %t56 = load i64, ptr %l30, !tbaa !24
  %t57 = load i32, ptr %l37, !tbaa !23
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aVersions_2eaddDef(ptr %v0, ptr %v1, ptr %t54, %"compiler/source:Span" %t55, i64 %t56, i32 %t57, ptr %a3, i1 %a4)
  br label %bb14
bb14:
  br label %ret
bb15:
  %t60 = load ptr, ptr %l0, !tbaa !29
  %t61 = getelementptr %"compiler/source:Span", ptr %l1, i32 0, i32 0
  %t62 = load i32, ptr %t61, !tbaa !23
  %t64 = sext i32 %t62 to i64
  %t65 = load i64, ptr %l2, !tbaa !24
  %t69 = call i64 @compiler_2ftyped_2ecompiler_2ftyped_3aVersions_2eDefOf(ptr %v0, ptr %t60, i64 %t64, i64 %t65)
  store i64 %t69, ptr %l44
  br label %bb16
bb16:
  %t70 = load i64, ptr %l44, !tbaa !24
  store i64 %t70, ptr %l5, !tbaa !24
  %t71 = load i64, ptr %l5, !tbaa !24
  %t73 = icmp slt i64 %t71, 0
  br i1 %t73, label %bb17, label %bb18
bb17:
  store i1 true, ptr %l47, !tbaa !21
  br label %bb20
bb18:
  %t75 = load ptr, ptr %l0, !tbaa !29
  %t77 = call i1 @compiler_2ftyped_2ecompiler_2ftyped_3aVersions_2edead(ptr %v0, ptr %t75)
  store i1 %t77, ptr %l49
  br label %bb19
bb19:
  %t78 = load i1, ptr %l49, !tbaa !21
  store i1 %t78, ptr %l47, !tbaa !21
  br label %bb20
bb20:
  %t79 = load i1, ptr %l47, !tbaa !21
  br i1 %t79, label %bb21, label %bb22
bb21:
  br label %ret
bb22:
  br label %bb23
bb23:
  store i64 0, ptr %l6, !tbaa !24
  %t80 = load ptr, ptr %l0, !tbaa !29
  %t82 = getelementptr %"compiler/typed:Versions", ptr %t80, i32 0, i32 3
  %t84 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %t82)
  store i64 %t84, ptr %l52
  br label %bb24
bb24:
  %t85 = load i64, ptr %l52, !tbaa !24
  store i64 %t85, ptr %l7, !tbaa !24
  store i64 1, ptr %l8, !tbaa !24
  %t86 = load i64, ptr %l7, !tbaa !24
  %t87 = load i64, ptr %l6, !tbaa !24
  %t90 = icmp sgt i64 %t86, %t87
  br i1 %t90, label %bb25, label %bb26
bb25:
  %t92 = load i64, ptr %l8, !tbaa !24
  %t94 = icmp sgt i64 %t92, 0
  br i1 %t94, label %bb27, label %bb28
bb26:
  store i64 0, ptr %l56, !tbaa !24
  br label %bb30
bb27:
  %t96 = load i64, ptr %l7, !tbaa !24
  %t97 = load i64, ptr %l6, !tbaa !24
  %t100 = sub i64 %t96, %t97
  %t101 = load i64, ptr %l8, !tbaa !24
  %t104 = add i64 %t100, %t101
  %t106 = sub i64 %t104, 1
  %t107 = load i64, ptr %l8, !tbaa !24
  %t110 = sdiv i64 %t106, %t107
  store i64 %t110, ptr %l59, !tbaa !24
  br label %bb29
bb28:
  store i64 0, ptr %l59, !tbaa !24
  br label %bb29
bb29:
  %t112 = load i64, ptr %l59, !tbaa !24
  store i64 %t112, ptr %l56, !tbaa !24
  br label %bb30
bb30:
  %t113 = load i64, ptr %l56, !tbaa !24
  store i64 %t113, ptr %l9, !tbaa !24
  store i64 0, ptr %l10, !tbaa !24
  br label %bb31
bb31:
  %t114 = load i64, ptr %l10, !tbaa !24
  %t115 = load i64, ptr %l9, !tbaa !24
  %t118 = icmp slt i64 %t114, %t115
  %t120 = xor i1 %t118, true
  br i1 %t120, label %bb32, label %bb33
bb32:
  br label %bb41
bb33:
  br label %bb34
bb34:
  %t122 = load i64, ptr %l6, !tbaa !24
  %t123 = load i64, ptr %l10, !tbaa !24
  %t124 = load i64, ptr %l8, !tbaa !24
  %t127 = mul i64 %t123, %t124
  %t130 = add i64 %t122, %t127
  store i64 %t130, ptr %l11, !tbaa !24
  %t132 = load ptr, ptr %l0, !tbaa !29
  %t134 = getelementptr %"compiler/typed:Versions", ptr %t132, i32 0, i32 3
  %t135 = load i64, ptr %l11, !tbaa !24
  %t138 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t134, i64 %t135)
  store i64 %t138, ptr %l80
  br label %bb35
bb35:
  %t139 = load i64, ptr %l2, !tbaa !24
  %t140 = load i64, ptr %l80, !tbaa !24
  %t142 = icmp eq i64 %t140, %t139
  br i1 %t142, label %bb36, label %bb37
bb36:
  %t144 = load ptr, ptr %l0, !tbaa !29
  %t146 = getelementptr %"compiler/typed:Versions", ptr %t144, i32 0, i32 14
  %t147 = load i64, ptr %l11, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eSetAt_3cI64_3e(ptr %v0, ptr %t146, i64 %t147, i64 -2)
  br label %bb38
bb37:
  br label %bb39
bb38:
  br label %bb39
bb39:
  br label %bb40
bb40:
  %t150 = load i64, ptr %l10, !tbaa !24
  %t152 = add i64 %t150, 1
  store i64 %t152, ptr %l10, !tbaa !24
  br label %bb31
bb41:
  %t154 = load ptr, ptr %l0, !tbaa !29
  %t156 = getelementptr %"compiler/typed:Versions", ptr %t154, i32 0, i32 14
  %t157 = load i64, ptr %l5, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eSetAt_3cI64_3e(ptr %v0, ptr %t156, i64 %t157, i64 -1)
  br label %bb42
bb42:
  %t160 = load ptr, ptr %l0, !tbaa !29
  %t162 = getelementptr %"compiler/typed:Versions", ptr %t160, i32 0, i32 15
  %t163 = load i64, ptr %l5, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %t162, i64 %t163)
  br label %bb43
bb43:
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2ftyped_2ecompiler_2ftyped_3aVersions_2eexprs(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1) #0 {
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
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aVersions_2eexpr(ptr %v0, ptr %v1, ptr %a0, ptr %t21)
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

define dso_local i64 @compiler_2ftyped_2ecompiler_2ftyped_3aViewWalk_2eRoots(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca ptr
  %l4 = alloca ptr
  %l5 = alloca ptr
  %l6 = alloca ptr
  %l7 = alloca ptr
  %l8 = alloca ptr
  %l9 = alloca ptr
  %l10 = alloca i32
  %l11 = alloca { i64, ptr }
  %l15 = alloca i64
  %l16 = alloca ptr
  %l17 = alloca i1
  %l24 = alloca i64
  %l25 = alloca ptr
  %l26 = alloca i1
  %l34 = alloca i64
  %l35 = alloca ptr
  %l36 = alloca i1
  %l43 = alloca i64
  %l44 = alloca ptr
  %l45 = alloca i1
  %l53 = alloca i64
  %l58 = alloca i64
  %l59 = alloca i64
  %l60 = alloca ptr
  %l61 = alloca i1
  %l68 = alloca i64
  %l69 = alloca ptr
  %l70 = alloca i1
  %l77 = alloca i64
  %l78 = alloca ptr
  %l79 = alloca i1
  %l87 = alloca i64
  %l88 = alloca ptr
  %l89 = alloca i1
  %l97 = alloca i64
  %l98 = alloca ptr
  %l99 = alloca i1
  %l108 = alloca i1
  %l112 = alloca i64
  %l114 = alloca { i64, ptr }
  %l117 = alloca i64
  %l118 = alloca ptr
  %l119 = alloca i1
  %l122 = alloca ptr
  %l123 = alloca i1
  %l126 = alloca ptr
  %l127 = alloca i1
  %l130 = alloca ptr
  %l131 = alloca i1
  %l134 = alloca ptr
  %l135 = alloca i1
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
  %t6 = load ptr, ptr %l1, !tbaa !29
  store ptr %t6, ptr %l16, !tbaa !29
  store i1 false, ptr %l17, !tbaa !21
  %t7 = load ptr, ptr %l16, !tbaa !29
  %t8 = icmp ne ptr %t7, null
  br i1 %t8, label %bb4, label %bb5
bb4:
  %t10 = load ptr, ptr %l16, !tbaa !29
  %t11 = load i64, ptr %t10, !range !{i64 0, i64 18}
  %t13 = icmp eq i64 %t11, 2
  store i1 %t13, ptr %l17, !tbaa !21
  br label %bb5
bb5:
  %t14 = load i1, ptr %l17, !tbaa !21
  br i1 %t14, label %bb6, label %bb7
bb6:
  %t15 = load ptr, ptr %l1, !tbaa !29
  %t17 = getelementptr { i64, [5 x i64] }, ptr %t15, i32 0, i32 1
  %t18 = getelementptr { %"compiler/source:Span", i32, ptr, i32 }, ptr %t17, i32 0, i32 2
  %t19 = load ptr, ptr %t18
  store ptr %t19, ptr %l2, !tbaa !29
  br label %bb8
bb7:
  br label %bb10
bb8:
  %t21 = load ptr, ptr %l0, !tbaa !29
  %t22 = load ptr, ptr %l2, !tbaa !29
  %t25 = call i64 @compiler_2ftyped_2ecompiler_2ftyped_3aViewWalk_2eplaceRoots(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %t21, ptr %t22)
  store i64 %t25, ptr %l24
  br label %bb9
bb9:
  %t26 = load i64, ptr %l24, !tbaa !24
  store i64 %t26, ptr %l15, !tbaa !24
  br label %bb101
bb10:
  %t27 = load ptr, ptr %l1, !tbaa !29
  store ptr %t27, ptr %l25, !tbaa !29
  store i1 false, ptr %l26, !tbaa !21
  %t28 = load ptr, ptr %l25, !tbaa !29
  %t29 = icmp ne ptr %t28, null
  br i1 %t29, label %bb11, label %bb12
bb11:
  %t31 = load ptr, ptr %l25, !tbaa !29
  %t32 = load i64, ptr %t31, !range !{i64 0, i64 18}
  %t34 = icmp eq i64 %t32, 10
  store i1 %t34, ptr %l26, !tbaa !21
  br label %bb12
bb12:
  %t35 = load i1, ptr %l26, !tbaa !21
  br i1 %t35, label %bb13, label %bb14
bb13:
  %t36 = load ptr, ptr %l1, !tbaa !29
  %t38 = getelementptr { i64, [5 x i64] }, ptr %t36, i32 0, i32 1
  %t39 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t38, i32 0, i32 2
  %t40 = load ptr, ptr %t39
  store ptr %t40, ptr %l3, !tbaa !29
  br label %bb15
bb14:
  br label %bb17
bb15:
  %t42 = load ptr, ptr %l0, !tbaa !29
  %t43 = load ptr, ptr %l3, !tbaa !29
  %t45 = getelementptr %"compiler/typed:Slice", ptr %t43, i32 0, i32 0
  %t46 = load ptr, ptr %t45, !tbaa !29
  %t49 = call i64 @compiler_2ftyped_2ecompiler_2ftyped_3aViewWalk_2eplaceRoots(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %t42, ptr %t46)
  store i64 %t49, ptr %l34
  br label %bb16
bb16:
  %t50 = load i64, ptr %l34, !tbaa !24
  store i64 %t50, ptr %l15, !tbaa !24
  br label %bb101
bb17:
  %t51 = load ptr, ptr %l1, !tbaa !29
  store ptr %t51, ptr %l35, !tbaa !29
  store i1 false, ptr %l36, !tbaa !21
  %t52 = load ptr, ptr %l35, !tbaa !29
  %t53 = icmp ne ptr %t52, null
  br i1 %t53, label %bb18, label %bb19
bb18:
  %t55 = load ptr, ptr %l35, !tbaa !29
  %t56 = load i64, ptr %t55, !range !{i64 0, i64 18}
  %t58 = icmp eq i64 %t56, 6
  store i1 %t58, ptr %l36, !tbaa !21
  br label %bb19
bb19:
  %t59 = load i1, ptr %l36, !tbaa !21
  br i1 %t59, label %bb20, label %bb21
bb20:
  %t60 = load ptr, ptr %l1, !tbaa !29
  %t62 = getelementptr { i64, [5 x i64] }, ptr %t60, i32 0, i32 1
  %t63 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t62, i32 0, i32 2
  %t64 = load ptr, ptr %t63
  store ptr %t64, ptr %l4, !tbaa !29
  br label %bb22
bb21:
  br label %bb24
bb22:
  %t66 = load ptr, ptr %l0, !tbaa !29
  %t67 = load ptr, ptr %l4, !tbaa !29
  %t70 = call i64 @compiler_2ftyped_2ecompiler_2ftyped_3aViewWalk_2eCallRoots(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %t66, ptr %t67)
  store i64 %t70, ptr %l43
  br label %bb23
bb23:
  %t71 = load i64, ptr %l43, !tbaa !24
  store i64 %t71, ptr %l15, !tbaa !24
  br label %bb101
bb24:
  %t72 = load ptr, ptr %l1, !tbaa !29
  store ptr %t72, ptr %l44, !tbaa !29
  store i1 false, ptr %l45, !tbaa !21
  %t73 = load ptr, ptr %l44, !tbaa !29
  %t74 = icmp ne ptr %t73, null
  br i1 %t74, label %bb25, label %bb26
bb25:
  %t76 = load ptr, ptr %l44, !tbaa !29
  %t77 = load i64, ptr %t76, !range !{i64 0, i64 18}
  %t79 = icmp eq i64 %t77, 11
  store i1 %t79, ptr %l45, !tbaa !21
  br label %bb26
bb26:
  %t80 = load i1, ptr %l45, !tbaa !21
  br i1 %t80, label %bb27, label %bb28
bb27:
  %t81 = load ptr, ptr %l1, !tbaa !29
  %t83 = getelementptr { i64, [5 x i64] }, ptr %t81, i32 0, i32 1
  %t84 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t83, i32 0, i32 2
  %t85 = load ptr, ptr %t84
  store ptr %t85, ptr %l5, !tbaa !29
  br label %bb29
bb28:
  br label %bb33
bb29:
  %t87 = load ptr, ptr %l0, !tbaa !29
  %t88 = load ptr, ptr %l5, !tbaa !29
  %t90 = getelementptr %"compiler/typed:Cond", ptr %t88, i32 0, i32 1
  %t91 = load ptr, ptr %t90, !tbaa !29
  %t94 = call i64 @compiler_2ftyped_2ecompiler_2ftyped_3aViewWalk_2eRoots(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %t87, ptr %t91)
  store i64 %t94, ptr %l53
  br label %bb30
bb30:
  %t95 = load ptr, ptr %l0, !tbaa !29
  %t96 = load ptr, ptr %l5, !tbaa !29
  %t98 = getelementptr %"compiler/typed:Cond", ptr %t96, i32 0, i32 2
  %t99 = load ptr, ptr %t98, !tbaa !29
  %t103 = call i64 @compiler_2ftyped_2ecompiler_2ftyped_3aViewWalk_2eRoots(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %t95, ptr %t99)
  store i64 %t103, ptr %l58
  br label %bb31
bb31:
  %t104 = load i64, ptr %l53, !tbaa !24
  %t105 = load i64, ptr %l58, !tbaa !24
  %t106 = call i64 @compiler_2ftyped_2emeetRoots(i64 %t104, i64 %t105)
  store i64 %t106, ptr %l59
  br label %bb32
bb32:
  %t107 = load i64, ptr %l59, !tbaa !24
  store i64 %t107, ptr %l15, !tbaa !24
  br label %bb101
bb33:
  %t108 = load ptr, ptr %l1, !tbaa !29
  store ptr %t108, ptr %l60, !tbaa !29
  store i1 false, ptr %l61, !tbaa !21
  %t109 = load ptr, ptr %l60, !tbaa !29
  %t110 = icmp ne ptr %t109, null
  br i1 %t110, label %bb34, label %bb35
bb34:
  %t112 = load ptr, ptr %l60, !tbaa !29
  %t113 = load i64, ptr %t112, !range !{i64 0, i64 18}
  %t115 = icmp eq i64 %t113, 13
  store i1 %t115, ptr %l61, !tbaa !21
  br label %bb35
bb35:
  %t116 = load i1, ptr %l61, !tbaa !21
  br i1 %t116, label %bb36, label %bb37
bb36:
  %t117 = load ptr, ptr %l1, !tbaa !29
  %t119 = getelementptr { i64, [5 x i64] }, ptr %t117, i32 0, i32 1
  %t120 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t119, i32 0, i32 2
  %t121 = load ptr, ptr %t120
  store ptr %t121, ptr %l6, !tbaa !29
  br label %bb38
bb37:
  br label %bb40
bb38:
  %t123 = load ptr, ptr %l0, !tbaa !29
  %t124 = load ptr, ptr %l6, !tbaa !29
  %t127 = call i64 @compiler_2ftyped_2ecompiler_2ftyped_3aViewWalk_2ematchRoots(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %t123, ptr %t124)
  store i64 %t127, ptr %l68
  br label %bb39
bb39:
  %t128 = load i64, ptr %l68, !tbaa !24
  store i64 %t128, ptr %l15, !tbaa !24
  br label %bb101
bb40:
  %t129 = load ptr, ptr %l1, !tbaa !29
  store ptr %t129, ptr %l69, !tbaa !29
  store i1 false, ptr %l70, !tbaa !21
  %t130 = load ptr, ptr %l69, !tbaa !29
  %t131 = icmp ne ptr %t130, null
  br i1 %t131, label %bb41, label %bb42
bb41:
  %t133 = load ptr, ptr %l69, !tbaa !29
  %t134 = load i64, ptr %t133, !range !{i64 0, i64 18}
  %t136 = icmp eq i64 %t134, 14
  store i1 %t136, ptr %l70, !tbaa !21
  br label %bb42
bb42:
  %t137 = load i1, ptr %l70, !tbaa !21
  br i1 %t137, label %bb43, label %bb44
bb43:
  %t138 = load ptr, ptr %l1, !tbaa !29
  %t140 = getelementptr { i64, [5 x i64] }, ptr %t138, i32 0, i32 1
  %t141 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t140, i32 0, i32 2
  %t142 = load ptr, ptr %t141
  store ptr %t142, ptr %l7, !tbaa !29
  br label %bb45
bb44:
  br label %bb47
bb45:
  %t144 = load ptr, ptr %l0, !tbaa !29
  %t145 = load ptr, ptr %l7, !tbaa !29
  %t148 = call i64 @compiler_2ftyped_2ecompiler_2ftyped_3aViewWalk_2etryRoots(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %t144, ptr %t145)
  store i64 %t148, ptr %l77
  br label %bb46
bb46:
  %t149 = load i64, ptr %l77, !tbaa !24
  store i64 %t149, ptr %l15, !tbaa !24
  br label %bb101
bb47:
  %t150 = load ptr, ptr %l1, !tbaa !29
  store ptr %t150, ptr %l78, !tbaa !29
  store i1 false, ptr %l79, !tbaa !21
  %t151 = load ptr, ptr %l78, !tbaa !29
  %t152 = icmp ne ptr %t151, null
  br i1 %t152, label %bb48, label %bb49
bb48:
  %t154 = load ptr, ptr %l78, !tbaa !29
  %t155 = load i64, ptr %t154, !range !{i64 0, i64 18}
  %t157 = icmp eq i64 %t155, 12
  store i1 %t157, ptr %l79, !tbaa !21
  br label %bb49
bb49:
  %t158 = load i1, ptr %l79, !tbaa !21
  br i1 %t158, label %bb50, label %bb51
bb50:
  %t159 = load ptr, ptr %l1, !tbaa !29
  %t161 = getelementptr { i64, [5 x i64] }, ptr %t159, i32 0, i32 1
  %t162 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t161, i32 0, i32 2
  %t163 = load ptr, ptr %t162
  store ptr %t163, ptr %l8, !tbaa !29
  br label %bb52
bb51:
  br label %bb54
bb52:
  %t165 = load ptr, ptr %l0, !tbaa !29
  %t166 = load ptr, ptr %l8, !tbaa !29
  %t168 = getelementptr %"compiler/typed:Seq", ptr %t166, i32 0, i32 1
  %t169 = load ptr, ptr %t168, !tbaa !29
  %t172 = call i64 @compiler_2ftyped_2ecompiler_2ftyped_3aViewWalk_2eRoots(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %t165, ptr %t169)
  store i64 %t172, ptr %l87
  br label %bb53
bb53:
  %t173 = load i64, ptr %l87, !tbaa !24
  store i64 %t173, ptr %l15, !tbaa !24
  br label %bb101
bb54:
  %t174 = load ptr, ptr %l1, !tbaa !29
  store ptr %t174, ptr %l88, !tbaa !29
  store i1 false, ptr %l89, !tbaa !21
  %t175 = load ptr, ptr %l88, !tbaa !29
  %t176 = icmp ne ptr %t175, null
  br i1 %t176, label %bb55, label %bb56
bb55:
  %t178 = load ptr, ptr %l88, !tbaa !29
  %t179 = load i64, ptr %t178, !range !{i64 0, i64 18}
  %t181 = icmp eq i64 %t179, 17
  store i1 %t181, ptr %l89, !tbaa !21
  br label %bb56
bb56:
  %t182 = load i1, ptr %l89, !tbaa !21
  br i1 %t182, label %bb57, label %bb58
bb57:
  %t183 = load ptr, ptr %l1, !tbaa !29
  %t185 = getelementptr { i64, [5 x i64] }, ptr %t183, i32 0, i32 1
  %t186 = getelementptr { %"compiler/source:Span", i64, ptr }, ptr %t185, i32 0, i32 2
  %t187 = load ptr, ptr %t186
  store ptr %t187, ptr %l9, !tbaa !29
  br label %bb59
bb58:
  br label %bb61
bb59:
  %t189 = load ptr, ptr %l0, !tbaa !29
  %t190 = load ptr, ptr %l9, !tbaa !29
  %t194 = call i64 @compiler_2ftyped_2ecompiler_2ftyped_3aViewWalk_2eRoots(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %t189, ptr %t190)
  store i64 %t194, ptr %l97
  br label %bb60
bb60:
  %t195 = load i64, ptr %l97, !tbaa !24
  store i64 %t195, ptr %l15, !tbaa !24
  br label %bb101
bb61:
  %t196 = load ptr, ptr %l1, !tbaa !29
  store ptr %t196, ptr %l98, !tbaa !29
  store i1 false, ptr %l99, !tbaa !21
  %t197 = load ptr, ptr %l98, !tbaa !29
  %t198 = icmp ne ptr %t197, null
  br i1 %t198, label %bb62, label %bb63
bb62:
  %t200 = load ptr, ptr %l98, !tbaa !29
  %t201 = load i64, ptr %t200, !range !{i64 0, i64 18}
  %t203 = icmp eq i64 %t201, 9
  store i1 %t203, ptr %l99, !tbaa !21
  br label %bb63
bb63:
  %t204 = load i1, ptr %l99, !tbaa !21
  br i1 %t204, label %bb64, label %bb65
bb64:
  %t205 = load ptr, ptr %l1, !tbaa !29
  %t207 = getelementptr { i64, [5 x i64] }, ptr %t205, i32 0, i32 1
  %t208 = getelementptr { %"compiler/source:Span", i32, i32, i32, { i64, ptr } }, ptr %t207, i32 0, i32 2
  %t209 = load i32, ptr %t208, !range !{i32 0, i32 52}
  store i32 %t209, ptr %l10
  %t211 = load ptr, ptr %l1, !tbaa !29
  %t213 = getelementptr { i64, [5 x i64] }, ptr %t211, i32 0, i32 1
  %t214 = getelementptr { %"compiler/source:Span", i32, i32, i32, { i64, ptr } }, ptr %t213, i32 0, i32 4
  %t215 = load { i64, ptr }, ptr %t214
  store { i64, ptr } %t215, ptr %l11, !tbaa !27
  br label %bb66
bb65:
  br label %bb74
bb66:
  %t217 = load i32, ptr %l10, !range !{i32 0, i32 52}
  %t219 = trunc i64 20 to i32
  %t220 = icmp eq i32 %t217, %t219
  br i1 %t220, label %bb67, label %bb68
bb67:
  %t222 = load { i64, ptr }, ptr %l11, !tbaa !27
  %t224 = extractvalue { i64, ptr } %t222, 0
  %t226 = icmp eq i64 %t224, 1
  store i1 %t226, ptr %l108, !tbaa !21
  br label %bb69
bb68:
  store i1 false, ptr %l108, !tbaa !21
  br label %bb69
bb69:
  %t228 = load i1, ptr %l108, !tbaa !21
  br i1 %t228, label %bb70, label %bb71
bb70:
  %t229 = load ptr, ptr %l0, !tbaa !29
  %t230 = load { i64, ptr }, ptr %l11, !tbaa !27
  store { i64, ptr } %t230, ptr %l114, !tbaa !27
  %t231 = getelementptr { i64, ptr }, ptr %l114, i32 0, i32 1
  %t232 = load ptr, ptr %t231, !tbaa !27
  %t233 = getelementptr ptr, ptr %t232, i64 0
  %t234 = load ptr, ptr %t233, !tbaa !39
  %t238 = call i64 @compiler_2ftyped_2ecompiler_2ftyped_3aViewWalk_2eRoots(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %t229, ptr %t234)
  store i64 %t238, ptr %l117
  br label %bb72
bb71:
  store i64 0, ptr %l112, !tbaa !24
  br label %bb73
bb72:
  %t239 = load i64, ptr %l117, !tbaa !24
  store i64 %t239, ptr %l112, !tbaa !24
  br label %bb73
bb73:
  %t240 = load i64, ptr %l112, !tbaa !24
  store i64 %t240, ptr %l15, !tbaa !24
  br label %bb101
bb74:
  %t241 = load ptr, ptr %l1, !tbaa !29
  store ptr %t241, ptr %l118, !tbaa !29
  store i1 false, ptr %l119, !tbaa !21
  %t242 = load ptr, ptr %l118, !tbaa !29
  %t243 = icmp ne ptr %t242, null
  br i1 %t243, label %bb75, label %bb76
bb75:
  %t245 = load ptr, ptr %l118, !tbaa !29
  %t246 = load i64, ptr %t245, !range !{i64 0, i64 18}
  %t248 = icmp eq i64 %t246, 7
  store i1 %t248, ptr %l119, !tbaa !21
  br label %bb76
bb76:
  %t249 = load i1, ptr %l119, !tbaa !21
  br i1 %t249, label %bb77, label %bb78
bb77:
  br label %bb95
bb78:
  %t250 = load ptr, ptr %l1, !tbaa !29
  store ptr %t250, ptr %l122, !tbaa !29
  store i1 false, ptr %l123, !tbaa !21
  %t251 = load ptr, ptr %l122, !tbaa !29
  %t252 = icmp ne ptr %t251, null
  br i1 %t252, label %bb79, label %bb80
bb79:
  %t254 = load ptr, ptr %l122, !tbaa !29
  %t255 = load i64, ptr %t254, !range !{i64 0, i64 18}
  %t257 = icmp eq i64 %t255, 8
  store i1 %t257, ptr %l123, !tbaa !21
  br label %bb80
bb80:
  %t258 = load i1, ptr %l123, !tbaa !21
  br i1 %t258, label %bb81, label %bb82
bb81:
  br label %bb95
bb82:
  %t259 = load ptr, ptr %l1, !tbaa !29
  store ptr %t259, ptr %l126, !tbaa !29
  store i1 false, ptr %l127, !tbaa !21
  %t260 = load ptr, ptr %l126, !tbaa !29
  %t261 = icmp ne ptr %t260, null
  br i1 %t261, label %bb83, label %bb84
bb83:
  %t263 = load ptr, ptr %l126, !tbaa !29
  %t264 = load i64, ptr %t263, !range !{i64 0, i64 18}
  %t266 = icmp eq i64 %t264, 16
  store i1 %t266, ptr %l127, !tbaa !21
  br label %bb84
bb84:
  %t267 = load i1, ptr %l127, !tbaa !21
  br i1 %t267, label %bb85, label %bb86
bb85:
  br label %bb95
bb86:
  %t268 = load ptr, ptr %l1, !tbaa !29
  store ptr %t268, ptr %l130, !tbaa !29
  store i1 false, ptr %l131, !tbaa !21
  %t269 = load ptr, ptr %l130, !tbaa !29
  %t270 = icmp ne ptr %t269, null
  br i1 %t270, label %bb87, label %bb88
bb87:
  %t272 = load ptr, ptr %l130, !tbaa !29
  %t273 = load i64, ptr %t272, !range !{i64 0, i64 18}
  %t275 = icmp eq i64 %t273, 0
  store i1 %t275, ptr %l131, !tbaa !21
  br label %bb88
bb88:
  %t276 = load i1, ptr %l131, !tbaa !21
  br i1 %t276, label %bb89, label %bb90
bb89:
  br label %bb95
bb90:
  %t277 = load ptr, ptr %l1, !tbaa !29
  store ptr %t277, ptr %l134, !tbaa !29
  store i1 false, ptr %l135, !tbaa !21
  %t278 = load ptr, ptr %l134, !tbaa !29
  %t279 = icmp ne ptr %t278, null
  br i1 %t279, label %bb91, label %bb92
bb91:
  %t281 = load ptr, ptr %l134, !tbaa !29
  %t282 = load i64, ptr %t281, !range !{i64 0, i64 18}
  %t284 = icmp eq i64 %t282, 15
  store i1 %t284, ptr %l135, !tbaa !21
  br label %bb92
bb92:
  %t285 = load i1, ptr %l135, !tbaa !21
  br i1 %t285, label %bb93, label %bb94
bb93:
  br label %bb95
bb94:
  br label %bb96
bb95:
  store i64 0, ptr %l15, !tbaa !24
  br label %bb101
bb96:
  br i1 true, label %bb97, label %bb98
bb97:
  br label %bb99
bb98:
  br label %bb100
bb99:
  store i64 -1, ptr %l15, !tbaa !24
  br label %bb101
bb100:
  call void @__olang_check_failed(ptr @olang_loc_c8b3a2ed155d5757_c640a14e4e3ad273)
  unreachable
bb101:
  %t286 = load i64, ptr %l15, !tbaa !24
  store i64 %t286, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local i64 @compiler_2ftyped_2ecompiler_2ftyped_3aViewWalk_2eplaceRoots(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1) #0 {
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
  %l25 = alloca i64
  %l26 = alloca ptr
  %l27 = alloca i1
  %l34 = alloca i64
  %l35 = alloca ptr
  %l36 = alloca i1
  %l44 = alloca i64
  %l45 = alloca ptr
  %l46 = alloca i1
  %l54 = alloca i64
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
  %t20 = call i64 @compiler_2ftyped_2ecompiler_2ftyped_3aViewWalk_2elocalRoots(ptr %v0, ptr %v2, ptr %v3, ptr %t16, i32 %t17)
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
  %t29 = icmp eq i64 %t27, 2
  store i1 %t29, ptr %l18, !tbaa !21
  br label %bb9
bb9:
  %t30 = load i1, ptr %l18, !tbaa !21
  br i1 %t30, label %bb10, label %bb11
bb10:
  %t31 = load ptr, ptr %l1, !tbaa !29
  %t33 = getelementptr { i64, [4 x i64] }, ptr %t31, i32 0, i32 1
  %t34 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t33, i32 0, i32 2
  %t35 = load ptr, ptr %t34
  store ptr %t35, ptr %l3, !tbaa !29
  br label %bb12
bb11:
  br label %bb14
bb12:
  %t37 = load ptr, ptr %l0, !tbaa !29
  %t38 = load ptr, ptr %l3, !tbaa !29
  %t41 = call i64 @compiler_2ftyped_2ecompiler_2ftyped_3aViewWalk_2erefRoots(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %t37, ptr %t38)
  store i64 %t41, ptr %l25
  br label %bb13
bb13:
  %t42 = load i64, ptr %l25, !tbaa !24
  store i64 %t42, ptr %l7, !tbaa !24
  br label %bb40
bb14:
  %t43 = load ptr, ptr %l1, !tbaa !29
  store ptr %t43, ptr %l26, !tbaa !29
  store i1 false, ptr %l27, !tbaa !21
  %t44 = load ptr, ptr %l26, !tbaa !29
  %t45 = icmp ne ptr %t44, null
  br i1 %t45, label %bb15, label %bb16
bb15:
  %t47 = load ptr, ptr %l26, !tbaa !29
  %t48 = load i64, ptr %t47, !range !{i64 0, i64 8}
  %t50 = icmp eq i64 %t48, 3
  store i1 %t50, ptr %l27, !tbaa !21
  br label %bb16
bb16:
  %t51 = load i1, ptr %l27, !tbaa !21
  br i1 %t51, label %bb17, label %bb18
bb17:
  %t52 = load ptr, ptr %l1, !tbaa !29
  %t54 = getelementptr { i64, [4 x i64] }, ptr %t52, i32 0, i32 1
  %t55 = getelementptr { %"compiler/source:Span", i32, ptr, i64 }, ptr %t54, i32 0, i32 2
  %t56 = load ptr, ptr %t55
  store ptr %t56, ptr %l4, !tbaa !29
  br label %bb19
bb18:
  br label %bb21
bb19:
  %t58 = load ptr, ptr %l0, !tbaa !29
  %t59 = load ptr, ptr %l4, !tbaa !29
  %t62 = call i64 @compiler_2ftyped_2ecompiler_2ftyped_3aViewWalk_2eplaceRoots(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %t58, ptr %t59)
  store i64 %t62, ptr %l34
  br label %bb20
bb20:
  %t63 = load i64, ptr %l34, !tbaa !24
  store i64 %t63, ptr %l7, !tbaa !24
  br label %bb40
bb21:
  %t64 = load ptr, ptr %l1, !tbaa !29
  store ptr %t64, ptr %l35, !tbaa !29
  store i1 false, ptr %l36, !tbaa !21
  %t65 = load ptr, ptr %l35, !tbaa !29
  %t66 = icmp ne ptr %t65, null
  br i1 %t66, label %bb22, label %bb23
bb22:
  %t68 = load ptr, ptr %l35, !tbaa !29
  %t69 = load i64, ptr %t68, !range !{i64 0, i64 8}
  %t71 = icmp eq i64 %t69, 4
  store i1 %t71, ptr %l36, !tbaa !21
  br label %bb23
bb23:
  %t72 = load i1, ptr %l36, !tbaa !21
  br i1 %t72, label %bb24, label %bb25
bb24:
  %t73 = load ptr, ptr %l1, !tbaa !29
  %t75 = getelementptr { i64, [4 x i64] }, ptr %t73, i32 0, i32 1
  %t76 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t75, i32 0, i32 2
  %t77 = load ptr, ptr %t76
  store ptr %t77, ptr %l5, !tbaa !29
  br label %bb26
bb25:
  br label %bb28
bb26:
  %t79 = load ptr, ptr %l0, !tbaa !29
  %t80 = load ptr, ptr %l5, !tbaa !29
  %t82 = getelementptr %"compiler/typed:Elem", ptr %t80, i32 0, i32 0
  %t83 = load ptr, ptr %t82, !tbaa !29
  %t86 = call i64 @compiler_2ftyped_2ecompiler_2ftyped_3aViewWalk_2eplaceRoots(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %t79, ptr %t83)
  store i64 %t86, ptr %l44
  br label %bb27
bb27:
  %t87 = load i64, ptr %l44, !tbaa !24
  store i64 %t87, ptr %l7, !tbaa !24
  br label %bb40
bb28:
  %t88 = load ptr, ptr %l1, !tbaa !29
  store ptr %t88, ptr %l45, !tbaa !29
  store i1 false, ptr %l46, !tbaa !21
  %t89 = load ptr, ptr %l45, !tbaa !29
  %t90 = icmp ne ptr %t89, null
  br i1 %t90, label %bb29, label %bb30
bb29:
  %t92 = load ptr, ptr %l45, !tbaa !29
  %t93 = load i64, ptr %t92, !range !{i64 0, i64 8}
  %t95 = icmp eq i64 %t93, 5
  store i1 %t95, ptr %l46, !tbaa !21
  br label %bb30
bb30:
  %t96 = load i1, ptr %l46, !tbaa !21
  br i1 %t96, label %bb31, label %bb32
bb31:
  %t97 = load ptr, ptr %l1, !tbaa !29
  %t99 = getelementptr { i64, [4 x i64] }, ptr %t97, i32 0, i32 1
  %t100 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t99, i32 0, i32 2
  %t101 = load ptr, ptr %t100
  store ptr %t101, ptr %l6, !tbaa !29
  br label %bb33
bb32:
  br label %bb35
bb33:
  %t103 = load ptr, ptr %l0, !tbaa !29
  %t104 = load ptr, ptr %l6, !tbaa !29
  %t106 = getelementptr %"compiler/typed:Payload", ptr %t104, i32 0, i32 0
  %t107 = load ptr, ptr %t106, !tbaa !29
  %t110 = call i64 @compiler_2ftyped_2ecompiler_2ftyped_3aViewWalk_2eplaceRoots(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %t103, ptr %t107)
  store i64 %t110, ptr %l54
  br label %bb34
bb34:
  %t111 = load i64, ptr %l54, !tbaa !24
  store i64 %t111, ptr %l7, !tbaa !24
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
  call void @__olang_check_failed(ptr @olang_loc_38f82f633fcbfe78_2a415e18f8868a4c)
  unreachable
bb40:
  %t112 = load i64, ptr %l7, !tbaa !24
  store i64 %t112, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local i64 @compiler_2ftyped_2ecompiler_2ftyped_3aViewWalk_2etryRoots(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i64
  %l3 = alloca { i64, ptr }
  %l4 = alloca i64
  %l5 = alloca i64
  %l7 = alloca { i64, ptr }
  %l8 = alloca i64
  %l9 = alloca i64
  %l14 = alloca i64
  %l23 = alloca { i64, ptr }
  %l34 = alloca { i64, ptr }
  %l37 = alloca i64
  %l41 = alloca i64
  %l42 = alloca i64
  %rv = alloca i64
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load ptr, ptr %l1, !tbaa !29
  %t4 = getelementptr %"compiler/typed:Try", ptr %t2, i32 0, i32 0
  %t5 = load ptr, ptr %t4, !tbaa !29
  %t8 = call i64 @compiler_2ftyped_2ecompiler_2ftyped_3aViewWalk_2eRoots(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %t1, ptr %t5)
  store i64 %t8, ptr %l14
  br label %bb1
bb1:
  %t9 = load i64, ptr %l14, !tbaa !24
  store i64 %t9, ptr %l2, !tbaa !24
  %t10 = load ptr, ptr %l1, !tbaa !29
  %t12 = getelementptr %"compiler/typed:Try", ptr %t10, i32 0, i32 1
  %t13 = load { i64, ptr }, ptr %t12, !tbaa !27
  store { i64, ptr } %t13, ptr %l3, !tbaa !27
  store i64 0, ptr %l4, !tbaa !24
  %t15 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t17 = extractvalue { i64, ptr } %t15, 0
  store i64 %t17, ptr %l5, !tbaa !24
  br label %bb2
bb2:
  %t19 = load i64, ptr %l4, !tbaa !24
  %t20 = load i64, ptr %l5, !tbaa !24
  %t23 = icmp slt i64 %t19, %t20
  %t25 = xor i1 %t23, true
  br i1 %t25, label %bb3, label %bb4
bb3:
  br label %bb15
bb4:
  br label %bb5
bb5:
  %t27 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t27, ptr %l23, !tbaa !27
  %t28 = load i64, ptr %l4, !tbaa !24
  %t30 = getelementptr { i64, ptr }, ptr %l23, i32 0, i32 1
  %t31 = load ptr, ptr %t30, !tbaa !27
  %t32 = getelementptr ptr, ptr %t31, i64 %t28
  %t33 = load ptr, ptr %t32, !tbaa !39
  %t37 = getelementptr %"compiler/typed:Clause", ptr %t33, i32 0, i32 4
  %t38 = load { i64, ptr }, ptr %t37, !tbaa !27
  store { i64, ptr } %t38, ptr %l7, !tbaa !27
  store i64 0, ptr %l8, !tbaa !24
  %t40 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t42 = extractvalue { i64, ptr } %t40, 0
  store i64 %t42, ptr %l9, !tbaa !24
  br label %bb6
bb6:
  %t44 = load i64, ptr %l8, !tbaa !24
  %t45 = load i64, ptr %l9, !tbaa !24
  %t48 = icmp slt i64 %t44, %t45
  %t50 = xor i1 %t48, true
  br i1 %t50, label %bb7, label %bb8
bb7:
  br label %bb13
bb8:
  br label %bb9
bb9:
  %t52 = load { i64, ptr }, ptr %l7, !tbaa !27
  store { i64, ptr } %t52, ptr %l34, !tbaa !27
  %t53 = load i64, ptr %l8, !tbaa !24
  %t55 = getelementptr { i64, ptr }, ptr %l34, i32 0, i32 1
  %t56 = load ptr, ptr %t55, !tbaa !27
  %t57 = getelementptr ptr, ptr %t56, i64 %t53
  %t58 = load ptr, ptr %t57, !tbaa !39
  %t60 = load i64, ptr %l2, !tbaa !24
  store i64 %t60, ptr %l37, !tbaa !24
  %t61 = load ptr, ptr %l0, !tbaa !29
  %t66 = call i64 @compiler_2ftyped_2ecompiler_2ftyped_3aViewWalk_2eRoots(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %t61, ptr %t58)
  store i64 %t66, ptr %l41
  br label %bb10
bb10:
  %t67 = load i64, ptr %l37, !tbaa !24
  %t68 = load i64, ptr %l41, !tbaa !24
  %t69 = call i64 @compiler_2ftyped_2emeetRoots(i64 %t67, i64 %t68)
  store i64 %t69, ptr %l42
  br label %bb11
bb11:
  %t70 = load i64, ptr %l42, !tbaa !24
  store i64 %t70, ptr %l2, !tbaa !24
  br label %bb12
bb12:
  %t71 = load i64, ptr %l8, !tbaa !24
  %t73 = add i64 %t71, 1
  store i64 %t73, ptr %l8, !tbaa !24
  br label %bb6
bb13:
  br label %bb14
bb14:
  %t75 = load i64, ptr %l4, !tbaa !24
  %t77 = add i64 %t75, 1
  store i64 %t77, ptr %l4, !tbaa !24
  br label %bb2
bb15:
  %t79 = load i64, ptr %l2, !tbaa !24
  store i64 %t79, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local void @compiler_2ftyped_2ecompiler_2ftyped_3adropWalk_2eexprs(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1) #0 {
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
  call void @compiler_2ftyped_2ecompiler_2ftyped_3adropWalk_2eexpr(ptr %v0, ptr %v1, ptr %a0, ptr %t21)
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

define dso_local void @compiler_2ftyped_2ecompiler_2ftyped_3adropWalk_2efailHere(ptr %v0, ptr %a0, i1 %a1) #0 {
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
  %l21 = alloca i64
  %l25 = alloca i64
  %l27 = alloca ptr
  %l29 = alloca ptr
  %l32 = alloca i64
  %l34 = alloca i64
  %l37 = alloca i64
  %l41 = alloca i64
  %l44 = alloca i64
  %l70 = alloca i64
  %l73 = alloca i64
  %l92 = alloca ptr
  %l95 = alloca i64
  %l101 = alloca i1
  %l102 = alloca i1
  %l106 = alloca i1
  %l117 = alloca i1
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
  %t6 = load ptr, ptr %l0, !tbaa !29
  %t8 = getelementptr %"compiler/typed:dropWalk", ptr %t6, i32 0, i32 2
  %t10 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eLen_3cBool_3e(ptr %v0, ptr %t8)
  store i64 %t10, ptr %l21
  br label %bb4
bb4:
  %t11 = load i64, ptr %l21, !tbaa !24
  store i64 %t11, ptr %l2, !tbaa !24
  store i1 %a1, ptr %l3, !tbaa !21
  %t14 = load ptr, ptr %l0, !tbaa !29
  %t16 = getelementptr %"compiler/typed:dropWalk", ptr %t14, i32 0, i32 12
  %t18 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %t16)
  store i64 %t18, ptr %l25
  br label %bb5
bb5:
  %t19 = load i64, ptr %l25, !tbaa !24
  %t20 = icmp sgt i64 %t19, 0
  br i1 %t20, label %bb6, label %bb7
bb6:
  %t22 = load ptr, ptr %l0, !tbaa !29
  store ptr %t22, ptr %l27, !tbaa !29
  %t23 = load ptr, ptr %l0, !tbaa !29
  %t25 = getelementptr %"compiler/typed:dropWalk", ptr %t23, i32 0, i32 12
  store ptr %t25, ptr %l29, !tbaa !29
  %t26 = load ptr, ptr %l0, !tbaa !29
  %t28 = getelementptr %"compiler/typed:dropWalk", ptr %t26, i32 0, i32 12
  %t30 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %t28)
  store i64 %t30, ptr %l32
  br label %bb8
bb7:
  br label %bb11
bb8:
  %t31 = load i64, ptr %l32, !tbaa !24
  %t32 = sub i64 %t31, 1
  %t33 = load ptr, ptr %l29, !tbaa !29
  %t35 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t33, i64 %t32)
  store i64 %t35, ptr %l34
  br label %bb9
bb9:
  %t36 = load ptr, ptr %l27, !tbaa !29
  %t37 = load i64, ptr %l34, !tbaa !24
  call void @compiler_2ftyped_2ecompiler_2ftyped_3adropWalk_2eleave(ptr %v0, ptr %t36, i64 %t37)
  br label %bb10
bb10:
  br label %bb11
bb11:
  store i64 0, ptr %l4, !tbaa !24
  %t38 = load ptr, ptr %l0, !tbaa !29
  %t40 = getelementptr %"compiler/typed:dropWalk", ptr %t38, i32 0, i32 11
  %t42 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eLen_3cBool_3e(ptr %v0, ptr %t40)
  store i64 %t42, ptr %l37
  br label %bb12
bb12:
  %t43 = load i64, ptr %l37, !tbaa !24
  store i64 %t43, ptr %l5, !tbaa !24
  store i64 1, ptr %l6, !tbaa !24
  %t44 = load i64, ptr %l5, !tbaa !24
  %t45 = load i64, ptr %l4, !tbaa !24
  %t48 = icmp sgt i64 %t44, %t45
  br i1 %t48, label %bb13, label %bb14
bb13:
  %t50 = load i64, ptr %l6, !tbaa !24
  %t52 = icmp sgt i64 %t50, 0
  br i1 %t52, label %bb15, label %bb16
bb14:
  store i64 0, ptr %l41, !tbaa !24
  br label %bb18
bb15:
  %t54 = load i64, ptr %l5, !tbaa !24
  %t55 = load i64, ptr %l4, !tbaa !24
  %t58 = sub i64 %t54, %t55
  %t59 = load i64, ptr %l6, !tbaa !24
  %t62 = add i64 %t58, %t59
  %t64 = sub i64 %t62, 1
  %t65 = load i64, ptr %l6, !tbaa !24
  %t68 = sdiv i64 %t64, %t65
  store i64 %t68, ptr %l44, !tbaa !24
  br label %bb17
bb16:
  store i64 0, ptr %l44, !tbaa !24
  br label %bb17
bb17:
  %t70 = load i64, ptr %l44, !tbaa !24
  store i64 %t70, ptr %l41, !tbaa !24
  br label %bb18
bb18:
  %t71 = load i64, ptr %l41, !tbaa !24
  store i64 %t71, ptr %l7, !tbaa !24
  store i64 0, ptr %l8, !tbaa !24
  br label %bb19
bb19:
  %t72 = load i64, ptr %l8, !tbaa !24
  %t73 = load i64, ptr %l7, !tbaa !24
  %t76 = icmp slt i64 %t72, %t73
  %t78 = xor i1 %t76, true
  br i1 %t78, label %bb20, label %bb21
bb20:
  br label %bb47
bb21:
  br label %bb22
bb22:
  %t80 = load i64, ptr %l4, !tbaa !24
  %t81 = load i64, ptr %l8, !tbaa !24
  %t82 = load i64, ptr %l6, !tbaa !24
  %t85 = mul i64 %t81, %t82
  %t88 = add i64 %t80, %t85
  store i64 %t88, ptr %l9, !tbaa !24
  %t90 = load i64, ptr %l9, !tbaa !24
  %t91 = load i64, ptr %l2, !tbaa !24
  %t93 = add i64 %t91, 1
  %t96 = mul i64 %t90, %t93
  store i64 %t96, ptr %l10, !tbaa !24
  store i64 0, ptr %l11, !tbaa !24
  %t98 = load i64, ptr %l2, !tbaa !24
  store i64 %t98, ptr %l12, !tbaa !24
  store i64 1, ptr %l13, !tbaa !24
  %t100 = load i64, ptr %l12, !tbaa !24
  %t101 = load i64, ptr %l11, !tbaa !24
  %t104 = icmp sgt i64 %t100, %t101
  br i1 %t104, label %bb23, label %bb24
bb23:
  %t106 = load i64, ptr %l13, !tbaa !24
  %t108 = icmp sgt i64 %t106, 0
  br i1 %t108, label %bb25, label %bb26
bb24:
  store i64 0, ptr %l70, !tbaa !24
  br label %bb28
bb25:
  %t110 = load i64, ptr %l12, !tbaa !24
  %t111 = load i64, ptr %l11, !tbaa !24
  %t114 = sub i64 %t110, %t111
  %t115 = load i64, ptr %l13, !tbaa !24
  %t118 = add i64 %t114, %t115
  %t120 = sub i64 %t118, 1
  %t121 = load i64, ptr %l13, !tbaa !24
  %t124 = sdiv i64 %t120, %t121
  store i64 %t124, ptr %l73, !tbaa !24
  br label %bb27
bb26:
  store i64 0, ptr %l73, !tbaa !24
  br label %bb27
bb27:
  %t126 = load i64, ptr %l73, !tbaa !24
  store i64 %t126, ptr %l70, !tbaa !24
  br label %bb28
bb28:
  %t127 = load i64, ptr %l70, !tbaa !24
  store i64 %t127, ptr %l14, !tbaa !24
  store i64 0, ptr %l15, !tbaa !24
  br label %bb29
bb29:
  %t128 = load i64, ptr %l15, !tbaa !24
  %t129 = load i64, ptr %l14, !tbaa !24
  %t132 = icmp slt i64 %t128, %t129
  %t134 = xor i1 %t132, true
  br i1 %t134, label %bb30, label %bb31
bb30:
  br label %bb40
bb31:
  br label %bb32
bb32:
  %t136 = load i64, ptr %l11, !tbaa !24
  %t137 = load i64, ptr %l15, !tbaa !24
  %t138 = load i64, ptr %l13, !tbaa !24
  %t141 = mul i64 %t137, %t138
  %t144 = add i64 %t136, %t141
  store i64 %t144, ptr %l16, !tbaa !24
  %t146 = load ptr, ptr %l0, !tbaa !29
  %t148 = getelementptr %"compiler/typed:dropWalk", ptr %t146, i32 0, i32 13
  store ptr %t148, ptr %l92, !tbaa !29
  %t149 = load i64, ptr %l10, !tbaa !24
  %t150 = load i64, ptr %l16, !tbaa !24
  %t153 = add i64 %t149, %t150
  store i64 %t153, ptr %l95, !tbaa !24
  %t154 = load ptr, ptr %l0, !tbaa !29
  %t156 = getelementptr %"compiler/typed:dropWalk", ptr %t154, i32 0, i32 13
  %t157 = load i64, ptr %l10, !tbaa !24
  %t158 = load i64, ptr %l16, !tbaa !24
  %t161 = add i64 %t157, %t158
  %t164 = call i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eAt_3cBool_3e(ptr %v0, ptr %t156, i64 %t161)
  store i1 %t164, ptr %l101
  br label %bb33
bb33:
  %t165 = load i1, ptr %l101, !tbaa !21
  br i1 %t165, label %bb34, label %bb35
bb34:
  store i1 true, ptr %l102, !tbaa !21
  br label %bb37
bb35:
  %t166 = load ptr, ptr %l0, !tbaa !29
  %t168 = getelementptr %"compiler/typed:dropWalk", ptr %t166, i32 0, i32 2
  %t169 = load i64, ptr %l16, !tbaa !24
  %t172 = call i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eAt_3cBool_3e(ptr %v0, ptr %t168, i64 %t169)
  store i1 %t172, ptr %l106
  br label %bb36
bb36:
  %t173 = load i1, ptr %l106, !tbaa !21
  store i1 %t173, ptr %l102, !tbaa !21
  br label %bb37
bb37:
  %t174 = load ptr, ptr %l92, !tbaa !29
  %t175 = load i64, ptr %l95, !tbaa !24
  %t176 = load i1, ptr %l102, !tbaa !21
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eSetAt_3cBool_3e(ptr %v0, ptr %t174, i64 %t175, i1 %t176)
  br label %bb38
bb38:
  br label %bb39
bb39:
  %t177 = load i64, ptr %l15, !tbaa !24
  %t179 = add i64 %t177, 1
  store i64 %t179, ptr %l15, !tbaa !24
  br label %bb29
bb40:
  %t181 = load ptr, ptr %l0, !tbaa !29
  %t183 = getelementptr %"compiler/typed:dropWalk", ptr %t181, i32 0, i32 13
  %t184 = load i64, ptr %l10, !tbaa !24
  %t185 = load i64, ptr %l2, !tbaa !24
  %t188 = add i64 %t184, %t185
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eSetAt_3cBool_3e(ptr %v0, ptr %t183, i64 %t188, i1 false)
  br label %bb41
bb41:
  %t191 = load ptr, ptr %l0, !tbaa !29
  %t193 = getelementptr %"compiler/typed:dropWalk", ptr %t191, i32 0, i32 11
  %t194 = load i64, ptr %l9, !tbaa !24
  %t197 = call i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eAt_3cBool_3e(ptr %v0, ptr %t193, i64 %t194)
  store i1 %t197, ptr %l117
  br label %bb42
bb42:
  %t198 = load i1, ptr %l117, !tbaa !21
  br i1 %t198, label %bb43, label %bb44
bb43:
  store i1 true, ptr %l3, !tbaa !21
  br label %bb45
bb44:
  br label %bb45
bb45:
  br label %bb46
bb46:
  %t199 = load i64, ptr %l8, !tbaa !24
  %t201 = add i64 %t199, 1
  store i64 %t201, ptr %l8, !tbaa !24
  br label %bb19
bb47:
  %t203 = load i1, ptr %l3, !tbaa !21
  br i1 %t203, label %bb48, label %bb49
bb48:
  %t205 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2ftyped_2ecompiler_2ftyped_3adropWalk_2eleave(ptr %v0, ptr %t205, i64 -1)
  br label %bb50
bb49:
  br label %bb51
bb50:
  br label %bb51
bb51:
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2ftyped_2ecompiler_2ftyped_3adropWalk_2efind(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca { i64, ptr }
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca ptr
  %l6 = alloca ptr
  %l7 = alloca ptr
  %l8 = alloca ptr
  %l9 = alloca ptr
  %l10 = alloca ptr
  %l11 = alloca ptr
  %l22 = alloca { i64, ptr }
  %l25 = alloca ptr
  %l26 = alloca i1
  %l31 = alloca ptr
  %l34 = alloca i64
  %l35 = alloca ptr
  %l36 = alloca i1
  %l44 = alloca ptr
  %l45 = alloca i1
  %l57 = alloca ptr
  %l58 = alloca i1
  %l70 = alloca ptr
  %l71 = alloca i1
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
  br label %bb52
bb6:
  br label %bb7
bb7:
  %t22 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t22, ptr %l22, !tbaa !27
  %t23 = load i64, ptr %l3, !tbaa !24
  %t25 = getelementptr { i64, ptr }, ptr %l22, i32 0, i32 1
  %t26 = load ptr, ptr %t25, !tbaa !27
  %t27 = getelementptr ptr, ptr %t26, i64 %t23
  %t28 = load ptr, ptr %t27, !tbaa !39
  store ptr %t28, ptr %l5, !tbaa !29
  %t30 = load ptr, ptr %l5, !tbaa !29
  store ptr %t30, ptr %l25, !tbaa !29
  store i1 false, ptr %l26, !tbaa !21
  %t31 = load ptr, ptr %l25, !tbaa !29
  %t32 = icmp ne ptr %t31, null
  br i1 %t32, label %bb8, label %bb9
bb8:
  %t34 = load ptr, ptr %l25, !tbaa !29
  %t35 = load i64, ptr %t34, !range !{i64 0, i64 17}
  %t37 = icmp eq i64 %t35, 12
  store i1 %t37, ptr %l26, !tbaa !21
  br label %bb9
bb9:
  %t38 = load i1, ptr %l26, !tbaa !21
  br i1 %t38, label %bb10, label %bb11
bb10:
  %t39 = load ptr, ptr %l5, !tbaa !29
  %t41 = getelementptr { i64, [3 x i64] }, ptr %t39, i32 0, i32 1
  %t42 = getelementptr { %"compiler/source:Span", ptr }, ptr %t41, i32 0, i32 1
  %t43 = load ptr, ptr %t42
  store ptr %t43, ptr %l6, !tbaa !29
  br label %bb12
bb11:
  br label %bb15
bb12:
  %t45 = load ptr, ptr %l0, !tbaa !29
  store ptr %t45, ptr %l31, !tbaa !29
  %t46 = load ptr, ptr %l0, !tbaa !29
  %t47 = load ptr, ptr %l6, !tbaa !29
  %t50 = call i64 @compiler_2ftyped_2ecompiler_2ftyped_3adropWalk_2eflagOf(ptr %v0, ptr %v1, ptr %t46, ptr %t47)
  store i64 %t50, ptr %l34
  br label %bb13
bb13:
  %t51 = load ptr, ptr %l31, !tbaa !29
  %t52 = load i64, ptr %l34, !tbaa !24
  call void @compiler_2ftyped_2ecompiler_2ftyped_3adropWalk_2enumber(ptr %v0, ptr %t51, i64 %t52)
  br label %bb14
bb14:
  br label %bb50
bb15:
  %t53 = load ptr, ptr %l5, !tbaa !29
  store ptr %t53, ptr %l35, !tbaa !29
  store i1 false, ptr %l36, !tbaa !21
  %t54 = load ptr, ptr %l35, !tbaa !29
  %t55 = icmp ne ptr %t54, null
  br i1 %t55, label %bb16, label %bb17
bb16:
  %t57 = load ptr, ptr %l35, !tbaa !29
  %t58 = load i64, ptr %t57, !range !{i64 0, i64 17}
  %t60 = icmp eq i64 %t58, 11
  store i1 %t60, ptr %l36, !tbaa !21
  br label %bb17
bb17:
  %t61 = load i1, ptr %l36, !tbaa !21
  br i1 %t61, label %bb18, label %bb19
bb18:
  %t62 = load ptr, ptr %l5, !tbaa !29
  %t64 = getelementptr { i64, [3 x i64] }, ptr %t62, i32 0, i32 1
  %t65 = getelementptr { %"compiler/source:Span", ptr }, ptr %t64, i32 0, i32 1
  %t66 = load ptr, ptr %t65
  store ptr %t66, ptr %l7, !tbaa !29
  br label %bb20
bb19:
  br label %bb22
bb20:
  %t68 = load ptr, ptr %l0, !tbaa !29
  %t69 = load ptr, ptr %l7, !tbaa !29
  call void @compiler_2ftyped_2ecompiler_2ftyped_3adropWalk_2efind(ptr %v0, ptr %v1, ptr %t68, ptr %t69)
  br label %bb21
bb21:
  br label %bb50
bb22:
  %t73 = load ptr, ptr %l5, !tbaa !29
  store ptr %t73, ptr %l44, !tbaa !29
  store i1 false, ptr %l45, !tbaa !21
  %t74 = load ptr, ptr %l44, !tbaa !29
  %t75 = icmp ne ptr %t74, null
  br i1 %t75, label %bb23, label %bb24
bb23:
  %t77 = load ptr, ptr %l44, !tbaa !29
  %t78 = load i64, ptr %t77, !range !{i64 0, i64 17}
  %t80 = icmp eq i64 %t78, 3
  store i1 %t80, ptr %l45, !tbaa !21
  br label %bb24
bb24:
  %t81 = load i1, ptr %l45, !tbaa !21
  br i1 %t81, label %bb25, label %bb26
bb25:
  %t82 = load ptr, ptr %l5, !tbaa !29
  %t84 = getelementptr { i64, [3 x i64] }, ptr %t82, i32 0, i32 1
  %t85 = getelementptr { %"compiler/source:Span", ptr }, ptr %t84, i32 0, i32 1
  %t86 = load ptr, ptr %t85
  store ptr %t86, ptr %l8, !tbaa !29
  br label %bb27
bb26:
  br label %bb30
bb27:
  %t88 = load ptr, ptr %l0, !tbaa !29
  %t89 = load ptr, ptr %l8, !tbaa !29
  %t91 = getelementptr %"compiler/typed:If", ptr %t89, i32 0, i32 1
  %t92 = load ptr, ptr %t91, !tbaa !29
  call void @compiler_2ftyped_2ecompiler_2ftyped_3adropWalk_2efind(ptr %v0, ptr %v1, ptr %t88, ptr %t92)
  br label %bb28
bb28:
  %t96 = load ptr, ptr %l0, !tbaa !29
  %t97 = load ptr, ptr %l8, !tbaa !29
  %t99 = getelementptr %"compiler/typed:If", ptr %t97, i32 0, i32 2
  %t100 = load ptr, ptr %t99, !tbaa !29
  call void @compiler_2ftyped_2ecompiler_2ftyped_3adropWalk_2efind(ptr %v0, ptr %v1, ptr %t96, ptr %t100)
  br label %bb29
bb29:
  br label %bb50
bb30:
  %t103 = load ptr, ptr %l5, !tbaa !29
  store ptr %t103, ptr %l57, !tbaa !29
  store i1 false, ptr %l58, !tbaa !21
  %t104 = load ptr, ptr %l57, !tbaa !29
  %t105 = icmp ne ptr %t104, null
  br i1 %t105, label %bb31, label %bb32
bb31:
  %t107 = load ptr, ptr %l57, !tbaa !29
  %t108 = load i64, ptr %t107, !range !{i64 0, i64 17}
  %t110 = icmp eq i64 %t108, 4
  store i1 %t110, ptr %l58, !tbaa !21
  br label %bb32
bb32:
  %t111 = load i1, ptr %l58, !tbaa !21
  br i1 %t111, label %bb33, label %bb34
bb33:
  %t112 = load ptr, ptr %l5, !tbaa !29
  %t114 = getelementptr { i64, [3 x i64] }, ptr %t112, i32 0, i32 1
  %t115 = getelementptr { %"compiler/source:Span", ptr, ptr }, ptr %t114, i32 0, i32 1
  %t116 = load ptr, ptr %t115
  store ptr %t116, ptr %l9, !tbaa !29
  %t118 = load ptr, ptr %l5, !tbaa !29
  %t120 = getelementptr { i64, [3 x i64] }, ptr %t118, i32 0, i32 1
  %t121 = getelementptr { %"compiler/source:Span", ptr, ptr }, ptr %t120, i32 0, i32 2
  %t122 = load ptr, ptr %t121
  store ptr %t122, ptr %l10, !tbaa !29
  br label %bb35
bb34:
  br label %bb38
bb35:
  %t124 = load ptr, ptr %l0, !tbaa !29
  %t125 = load ptr, ptr %l9, !tbaa !29
  call void @compiler_2ftyped_2ecompiler_2ftyped_3adropWalk_2efind(ptr %v0, ptr %v1, ptr %t124, ptr %t125)
  br label %bb36
bb36:
  %t129 = load ptr, ptr %l0, !tbaa !29
  %t130 = load ptr, ptr %l10, !tbaa !29
  call void @compiler_2ftyped_2ecompiler_2ftyped_3adropWalk_2efind(ptr %v0, ptr %v1, ptr %t129, ptr %t130)
  br label %bb37
bb37:
  br label %bb50
bb38:
  %t133 = load ptr, ptr %l5, !tbaa !29
  store ptr %t133, ptr %l70, !tbaa !29
  store i1 false, ptr %l71, !tbaa !21
  %t134 = load ptr, ptr %l70, !tbaa !29
  %t135 = icmp ne ptr %t134, null
  br i1 %t135, label %bb39, label %bb40
bb39:
  %t137 = load ptr, ptr %l70, !tbaa !29
  %t138 = load i64, ptr %t137, !range !{i64 0, i64 17}
  %t140 = icmp eq i64 %t138, 13
  store i1 %t140, ptr %l71, !tbaa !21
  br label %bb40
bb40:
  %t141 = load i1, ptr %l71, !tbaa !21
  br i1 %t141, label %bb41, label %bb42
bb41:
  %t142 = load ptr, ptr %l5, !tbaa !29
  %t144 = getelementptr { i64, [3 x i64] }, ptr %t142, i32 0, i32 1
  %t145 = getelementptr { %"compiler/source:Span", ptr }, ptr %t144, i32 0, i32 1
  %t146 = load ptr, ptr %t145
  store ptr %t146, ptr %l11, !tbaa !29
  br label %bb43
bb42:
  br label %bb45
bb43:
  %t148 = load ptr, ptr %l0, !tbaa !29
  %t149 = load ptr, ptr %l11, !tbaa !29
  %t151 = getelementptr %"compiler/typed:Join", ptr %t149, i32 0, i32 0
  %t152 = load ptr, ptr %t151, !tbaa !29
  call void @compiler_2ftyped_2ecompiler_2ftyped_3adropWalk_2efind(ptr %v0, ptr %v1, ptr %t148, ptr %t152)
  br label %bb44
bb44:
  br label %bb50
bb45:
  br i1 true, label %bb46, label %bb47
bb46:
  br label %bb48
bb47:
  br label %bb49
bb48:
  br label %bb50
bb49:
  call void @__olang_check_failed(ptr @olang_loc_9f9fe097503cda9_c6b719cc2534ac35)
  unreachable
bb50:
  br label %bb51
bb51:
  %t156 = load i64, ptr %l3, !tbaa !24
  %t158 = add i64 %t156, 1
  store i64 %t158, ptr %l3, !tbaa !24
  br label %bb4
bb52:
  br label %ret
ret:
  ret void
}

define dso_local i64 @compiler_2ftyped_2ecompiler_2ftyped_3adropWalk_2eflagOf(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l5 = alloca i64
  %rv = alloca i64
  br label %start
start:
  br label %bb0
bb0:
  %t3 = getelementptr %"compiler/typed:dropWalk", ptr %a0, i32 0, i32 0
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t8 = call i64 @compiler_2ftyped_2eDropFlag(ptr %v0, ptr %v1, ptr %t4, ptr %a1)
  store i64 %t8, ptr %l5
  br label %bb1
bb1:
  %t9 = load i64, ptr %l5, !tbaa !24
  store i64 %t9, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local { i64, ptr } @compiler_2ftyped_2ecompiler_2ftyped_3adropWalk_2esave(ptr %v0, ptr %v1, ptr %a0) #0 {
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
  %l11 = alloca i64
  %l16 = alloca i64
  %l20 = alloca i64
  %l23 = alloca i64
  %l41 = alloca i64
  %l45 = alloca i1
  %l50 = alloca i64
  %rv = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/typed:dropWalk", ptr %t1, i32 0, i32 2
  %t5 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eLen_3cBool_3e(ptr %v0, ptr %t3)
  store i64 %t5, ptr %l10
  br label %bb1
bb1:
  %t6 = load i64, ptr %l10, !tbaa !24
  %t7 = add i64 %t6, 1
  store i64 %t7, ptr %l11, !tbaa !24
  %t8 = load i64, ptr %l11, !tbaa !24
  %t9 = icmp sge i64 %t8, 0
  br i1 %t9, label %bb2, label %bb3
bb2:
  %t11 = load i64, ptr %l11, !tbaa !24
  %t12 = mul i64 %t11, 1
  %t13 = call ptr @__olang_scope_alloc_zeroed(ptr %v1, i64 %t12)
  %t14 = insertvalue { i64, ptr } undef, i64 %t11, 0
  %t15 = insertvalue { i64, ptr } %t14, ptr %t13, 1
  %t16 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 16, i64 8)
  store ptr %t16, ptr %lp1
  %t18 = load ptr, ptr %lp1
  store { i64, ptr } %t15, ptr %t18, !tbaa !27
  store i64 0, ptr %l2, !tbaa !24
  %t19 = load ptr, ptr %l0, !tbaa !29
  %t21 = getelementptr %"compiler/typed:dropWalk", ptr %t19, i32 0, i32 2
  %t23 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eLen_3cBool_3e(ptr %v0, ptr %t21)
  store i64 %t23, ptr %l16
  br label %bb4
bb3:
  call void @__olang_check_failed(ptr @olang_loc_c1faed4ae36d3640_1d7aa47a4727493c)
  unreachable
bb4:
  %t24 = load i64, ptr %l16, !tbaa !24
  store i64 %t24, ptr %l3, !tbaa !24
  store i64 1, ptr %l4, !tbaa !24
  %t25 = load i64, ptr %l3, !tbaa !24
  %t26 = load i64, ptr %l2, !tbaa !24
  %t29 = icmp sgt i64 %t25, %t26
  br i1 %t29, label %bb5, label %bb6
bb5:
  %t31 = load i64, ptr %l4, !tbaa !24
  %t33 = icmp sgt i64 %t31, 0
  br i1 %t33, label %bb7, label %bb8
bb6:
  store i64 0, ptr %l20, !tbaa !24
  br label %bb10
bb7:
  %t35 = load i64, ptr %l3, !tbaa !24
  %t36 = load i64, ptr %l2, !tbaa !24
  %t39 = sub i64 %t35, %t36
  %t40 = load i64, ptr %l4, !tbaa !24
  %t43 = add i64 %t39, %t40
  %t45 = sub i64 %t43, 1
  %t46 = load i64, ptr %l4, !tbaa !24
  %t49 = sdiv i64 %t45, %t46
  store i64 %t49, ptr %l23, !tbaa !24
  br label %bb9
bb8:
  store i64 0, ptr %l23, !tbaa !24
  br label %bb9
bb9:
  %t51 = load i64, ptr %l23, !tbaa !24
  store i64 %t51, ptr %l20, !tbaa !24
  br label %bb10
bb10:
  %t52 = load i64, ptr %l20, !tbaa !24
  store i64 %t52, ptr %l5, !tbaa !24
  store i64 0, ptr %l6, !tbaa !24
  br label %bb11
bb11:
  %t53 = load i64, ptr %l6, !tbaa !24
  %t54 = load i64, ptr %l5, !tbaa !24
  %t57 = icmp slt i64 %t53, %t54
  %t59 = xor i1 %t57, true
  br i1 %t59, label %bb12, label %bb13
bb12:
  br label %bb17
bb13:
  br label %bb14
bb14:
  %t61 = load i64, ptr %l2, !tbaa !24
  %t62 = load i64, ptr %l6, !tbaa !24
  %t63 = load i64, ptr %l4, !tbaa !24
  %t66 = mul i64 %t62, %t63
  %t69 = add i64 %t61, %t66
  store i64 %t69, ptr %l7, !tbaa !24
  %t71 = load i64, ptr %l7, !tbaa !24
  store i64 %t71, ptr %l41, !tbaa !24
  %t72 = load ptr, ptr %l0, !tbaa !29
  %t74 = getelementptr %"compiler/typed:dropWalk", ptr %t72, i32 0, i32 2
  %t75 = load i64, ptr %l7, !tbaa !24
  %t78 = call i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eAt_3cBool_3e(ptr %v0, ptr %t74, i64 %t75)
  store i1 %t78, ptr %l45
  br label %bb15
bb15:
  %t79 = load i1, ptr %l45, !tbaa !21
  %t80 = load ptr, ptr %lp1
  %t81 = load i64, ptr %l41, !tbaa !24
  %t82 = getelementptr { i64, ptr }, ptr %t80, i32 0, i32 1
  %t83 = load ptr, ptr %t82, !tbaa !27
  %t84 = getelementptr i1, ptr %t83, i64 %t81
  store i1 %t79, ptr %t84, !tbaa !31
  br label %bb16
bb16:
  %t85 = load i64, ptr %l6, !tbaa !24
  %t87 = add i64 %t85, 1
  store i64 %t87, ptr %l6, !tbaa !24
  br label %bb11
bb17:
  %t89 = load ptr, ptr %l0, !tbaa !29
  %t91 = getelementptr %"compiler/typed:dropWalk", ptr %t89, i32 0, i32 2
  %t93 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eLen_3cBool_3e(ptr %v0, ptr %t91)
  store i64 %t93, ptr %l50
  br label %bb18
bb18:
  %t94 = load ptr, ptr %l0, !tbaa !29
  %t96 = getelementptr %"compiler/typed:dropWalk", ptr %t94, i32 0, i32 3
  %t97 = load i1, ptr %t96, !tbaa !21
  %t99 = load ptr, ptr %lp1
  %t100 = load i64, ptr %l50, !tbaa !24
  %t101 = getelementptr { i64, ptr }, ptr %t99, i32 0, i32 1
  %t102 = load ptr, ptr %t101, !tbaa !27
  %t103 = getelementptr i1, ptr %t102, i64 %t100
  store i1 %t97, ptr %t103, !tbaa !31
  %t104 = load ptr, ptr %lp1
  %t105 = load { i64, ptr }, ptr %t104, !tbaa !27
  store { i64, ptr } %t105, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local void @compiler_2ftyped_2ecompiler_2ftyped_3adropWalk_2esetLocal(ptr %v0, ptr %v1, ptr %a0, i64 %a1, ptr %a2) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca ptr
  %l4 = alloca %"compiler/source:Span"
  %l5 = alloca i32
  %l7 = alloca i64
  %l11 = alloca i64
  %l12 = alloca i32
  %l14 = alloca ptr
  %l15 = alloca i64
  %l19 = alloca i1
  %l20 = alloca ptr
  %l21 = alloca i1
  %l24 = alloca i1
  store ptr %a0, ptr %l0
  store ptr %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/typed:dropWalk", ptr %t1, i32 0, i32 1
  %t7 = call { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2eGet_3cI64_2c_20I64_3e(ptr %v0, ptr %t3, i64 %a1)
  %t8 = extractvalue { i32, i64 } %t7, 1
  %t9 = extractvalue { i32, i64 } %t7, 0
  store i32 %t9, ptr %l12
  %t10 = icmp ne i32 %t9, 0
  br i1 %t10, label %bb2, label %ok.11, !prof !99
ok.11:
  store i64 %t8, ptr %l11
  br label %bb1
bb1:
  %t12 = load i64, ptr %l11, !tbaa !24
  store i64 %t12, ptr %l7, !tbaa !24
  br label %bb4
bb2:
  br label %bb3
bb3:
  br label %ret
bb4:
  %t13 = load i64, ptr %l7, !tbaa !24
  %t14 = load ptr, ptr %l0, !tbaa !29
  %t16 = getelementptr %"compiler/typed:dropWalk", ptr %t14, i32 0, i32 2
  store ptr %t16, ptr %l14, !tbaa !29
  store i64 %t13, ptr %l15, !tbaa !24
  %t18 = load ptr, ptr %l2, !tbaa !29
  %t20 = icmp eq ptr %t18, null
  %t22 = xor i1 %t20, true
  br i1 %t22, label %bb5, label %bb6
bb5:
  %t24 = load ptr, ptr %l2, !tbaa !29
  store ptr %t24, ptr %l20, !tbaa !29
  store i1 false, ptr %l21, !tbaa !21
  %t25 = load ptr, ptr %l20, !tbaa !29
  %t26 = icmp ne ptr %t25, null
  br i1 %t26, label %bb7, label %bb8
bb6:
  store i1 false, ptr %l19, !tbaa !21
  br label %bb9
bb7:
  %t28 = load ptr, ptr %l20, !tbaa !29
  %t29 = load i64, ptr %t28, !range !{i64 0, i64 18}
  %t31 = icmp eq i64 %t29, 0
  store i1 %t31, ptr %l21, !tbaa !21
  br label %bb8
bb8:
  %t32 = load i1, ptr %l21, !tbaa !21
  store i1 %t32, ptr %l19, !tbaa !21
  br label %bb9
bb9:
  %t33 = load i1, ptr %l19, !tbaa !21
  br i1 %t33, label %bb10, label %bb11
bb10:
  %t34 = load ptr, ptr %l2, !tbaa !29
  %t36 = getelementptr { i64, [5 x i64] }, ptr %t34, i32 0, i32 1
  %t37 = getelementptr { %"compiler/source:Span", i32, i64 }, ptr %t36, i32 0, i32 0
  %t38 = load %"compiler/source:Span", ptr %t37
  store %"compiler/source:Span" %t38, ptr %l4
  %t40 = load ptr, ptr %l2, !tbaa !29
  %t42 = getelementptr { i64, [5 x i64] }, ptr %t40, i32 0, i32 1
  %t43 = getelementptr { %"compiler/source:Span", i32, i64 }, ptr %t42, i32 0, i32 1
  %t44 = load i32, ptr %t43
  store i32 %t44, ptr %l5, !tbaa !23
  %t46 = load ptr, ptr %l2, !tbaa !29
  %t48 = getelementptr { i64, [5 x i64] }, ptr %t46, i32 0, i32 1
  %t49 = getelementptr { %"compiler/source:Span", i32, i64 }, ptr %t48, i32 0, i32 2
  %t50 = load i64, ptr %t49
  %t54 = icmp eq i64 %t50, 0
  store i1 %t54, ptr %l24, !tbaa !21
  br label %bb12
bb11:
  store i1 false, ptr %l24, !tbaa !21
  br label %bb12
bb12:
  %t56 = load i1, ptr %l24, !tbaa !21
  %t57 = xor i1 %t56, true
  %t58 = load ptr, ptr %l14, !tbaa !29
  %t59 = load i64, ptr %l15, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eSetAt_3cBool_3e(ptr %v0, ptr %t58, i64 %t59, i1 %t57)
  br label %bb13
bb13:
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2ftyped_2ecompiler_2ftyped_3adropWalk_2estmt(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i32
  %l3 = alloca ptr
  %l4 = alloca ptr
  %l5 = alloca ptr
  %l6 = alloca %"compiler/source:Span"
  %l7 = alloca i32
  %l9 = alloca ptr
  %l10 = alloca ptr
  %l11 = alloca ptr
  %l12 = alloca ptr
  %l13 = alloca ptr
  %l14 = alloca ptr
  %l15 = alloca ptr
  %l16 = alloca ptr
  %l17 = alloca { i64, ptr }
  %l18 = alloca { i64, ptr }
  %l19 = alloca ptr
  %l20 = alloca ptr
  %l21 = alloca i32
  %l22 = alloca i32
  %l23 = alloca ptr
  %l24 = alloca ptr
  %l25 = alloca i64
  %l26 = alloca ptr
  %l27 = alloca { i64, ptr }
  %l28 = alloca { i64, ptr }
  %l29 = alloca i64
  %l30 = alloca i64
  %l31 = alloca ptr
  %l32 = alloca { i64, ptr }
  %l33 = alloca ptr
  %l34 = alloca { i64, ptr }
  %l35 = alloca i64
  %l36 = alloca i64
  %l40 = alloca ptr
  %l41 = alloca i1
  %l56 = alloca ptr
  %l57 = alloca i1
  %l70 = alloca ptr
  %l71 = alloca i1
  %l85 = alloca ptr
  %l86 = alloca i1
  %l91 = alloca ptr
  %l92 = alloca i1
  %l100 = alloca ptr
  %l101 = alloca i1
  %l108 = alloca ptr
  %l109 = alloca i1
  %l118 = alloca ptr
  %l119 = alloca i1
  %l129 = alloca ptr
  %l130 = alloca i1
  %l135 = alloca ptr
  %l136 = alloca i1
  %l144 = alloca ptr
  %l145 = alloca i1
  %l157 = alloca ptr
  %l158 = alloca i1
  %l168 = alloca { i64, ptr }
  %l169 = alloca i64
  %l170 = alloca { i64, ptr }
  %l176 = alloca { i64, ptr }
  %l177 = alloca i64
  %l178 = alloca { i64, ptr }
  %l186 = alloca ptr
  %l187 = alloca i1
  %l197 = alloca ptr
  %l198 = alloca i1
  %l208 = alloca ptr
  %l209 = alloca i1
  %l217 = alloca ptr
  %l218 = alloca i1
  %l225 = alloca i64
  %l228 = alloca i1
  %l232 = alloca i1
  %l239 = alloca i1
  %l243 = alloca i1
  %l251 = alloca ptr
  %l252 = alloca i1
  %l265 = alloca { i64, ptr }
  %l266 = alloca i64
  %l267 = alloca { i64, ptr }
  %l276 = alloca { i64, ptr }
  %l280 = alloca { i64, ptr }
  %l281 = alloca i64
  %l282 = alloca { i64, ptr }
  %l292 = alloca ptr
  %l293 = alloca i1
  %l306 = alloca { i64, ptr }
  %s12 = alloca %olang.scope
  %s19 = alloca %olang.scope
  %s22 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
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
  %t6 = load ptr, ptr %l1, !tbaa !29
  store ptr %t6, ptr %l40, !tbaa !29
  store i1 false, ptr %l41, !tbaa !21
  %t7 = load ptr, ptr %l40, !tbaa !29
  %t8 = icmp ne ptr %t7, null
  br i1 %t8, label %bb4, label %bb5
bb4:
  %t10 = load ptr, ptr %l40, !tbaa !29
  %t11 = load i64, ptr %t10, !range !{i64 0, i64 17}
  %t13 = icmp eq i64 %t11, 0
  store i1 %t13, ptr %l41, !tbaa !21
  br label %bb5
bb5:
  %t14 = load i1, ptr %l41, !tbaa !21
  br i1 %t14, label %bb6, label %bb7
bb6:
  %t15 = load ptr, ptr %l1, !tbaa !29
  %t17 = getelementptr { i64, [3 x i64] }, ptr %t15, i32 0, i32 1
  %t18 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t17, i32 0, i32 1
  %t19 = load i32, ptr %t18
  store i32 %t19, ptr %l2, !tbaa !23
  %t21 = load ptr, ptr %l1, !tbaa !29
  %t23 = getelementptr { i64, [3 x i64] }, ptr %t21, i32 0, i32 1
  %t24 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t23, i32 0, i32 2
  %t25 = load ptr, ptr %t24
  store ptr %t25, ptr %l3, !tbaa !29
  br label %bb8
bb7:
  br label %bb11
bb8:
  %t27 = load ptr, ptr %l0, !tbaa !29
  %t28 = load ptr, ptr %l3, !tbaa !29
  call void @compiler_2ftyped_2ecompiler_2ftyped_3adropWalk_2eexpr(ptr %v0, ptr %v1, ptr %t27, ptr %t28)
  br label %bb9
bb9:
  %t32 = load ptr, ptr %l0, !tbaa !29
  %t33 = load i32, ptr %l2, !tbaa !23
  %t35 = sext i32 %t33 to i64
  %t36 = load ptr, ptr %l3, !tbaa !29
  call void @compiler_2ftyped_2ecompiler_2ftyped_3adropWalk_2esetLocal(ptr %v0, ptr %v1, ptr %t32, i64 %t35, ptr %t36)
  br label %bb10
bb10:
  br label %bb176
bb11:
  %t41 = load ptr, ptr %l1, !tbaa !29
  store ptr %t41, ptr %l56, !tbaa !29
  store i1 false, ptr %l57, !tbaa !21
  %t42 = load ptr, ptr %l56, !tbaa !29
  %t43 = icmp ne ptr %t42, null
  br i1 %t43, label %bb12, label %bb13
bb12:
  %t45 = load ptr, ptr %l56, !tbaa !29
  %t46 = load i64, ptr %t45, !range !{i64 0, i64 17}
  %t48 = icmp eq i64 %t46, 1
  store i1 %t48, ptr %l57, !tbaa !21
  br label %bb13
bb13:
  %t49 = load i1, ptr %l57, !tbaa !21
  br i1 %t49, label %bb14, label %bb15
bb14:
  %t50 = load ptr, ptr %l1, !tbaa !29
  %t52 = getelementptr { i64, [3 x i64] }, ptr %t50, i32 0, i32 1
  %t53 = getelementptr { %"compiler/source:Span", ptr, ptr }, ptr %t52, i32 0, i32 1
  %t54 = load ptr, ptr %t53
  store ptr %t54, ptr %l4, !tbaa !29
  %t56 = load ptr, ptr %l1, !tbaa !29
  %t58 = getelementptr { i64, [3 x i64] }, ptr %t56, i32 0, i32 1
  %t59 = getelementptr { %"compiler/source:Span", ptr, ptr }, ptr %t58, i32 0, i32 2
  %t60 = load ptr, ptr %t59
  store ptr %t60, ptr %l5, !tbaa !29
  br label %bb16
bb15:
  br label %bb25
bb16:
  %t62 = load ptr, ptr %l0, !tbaa !29
  %t63 = load ptr, ptr %l4, !tbaa !29
  call void @compiler_2ftyped_2ecompiler_2ftyped_3adropWalk_2eplace(ptr %v0, ptr %v1, ptr %t62, ptr %t63)
  br label %bb17
bb17:
  %t67 = load ptr, ptr %l0, !tbaa !29
  %t68 = load ptr, ptr %l5, !tbaa !29
  call void @compiler_2ftyped_2ecompiler_2ftyped_3adropWalk_2eexpr(ptr %v0, ptr %v1, ptr %t67, ptr %t68)
  br label %bb18
bb18:
  %t72 = load ptr, ptr %l4, !tbaa !29
  store ptr %t72, ptr %l70, !tbaa !29
  store i1 false, ptr %l71, !tbaa !21
  %t73 = load ptr, ptr %l70, !tbaa !29
  %t74 = icmp ne ptr %t73, null
  br i1 %t74, label %bb19, label %bb20
bb19:
  %t76 = load ptr, ptr %l70, !tbaa !29
  %t77 = load i64, ptr %t76, !range !{i64 0, i64 8}
  %t79 = icmp eq i64 %t77, 0
  store i1 %t79, ptr %l71, !tbaa !21
  br label %bb20
bb20:
  %t80 = load i1, ptr %l71, !tbaa !21
  br i1 %t80, label %bb21, label %bb22
bb21:
  %t81 = load ptr, ptr %l4, !tbaa !29
  %t83 = getelementptr { i64, [4 x i64] }, ptr %t81, i32 0, i32 1
  %t84 = getelementptr { %"compiler/source:Span", i32, i32 }, ptr %t83, i32 0, i32 0
  %t85 = load %"compiler/source:Span", ptr %t84
  store %"compiler/source:Span" %t85, ptr %l6
  %t87 = load ptr, ptr %l4, !tbaa !29
  %t89 = getelementptr { i64, [4 x i64] }, ptr %t87, i32 0, i32 1
  %t90 = getelementptr { %"compiler/source:Span", i32, i32 }, ptr %t89, i32 0, i32 1
  %t91 = load i32, ptr %t90
  store i32 %t91, ptr %l7, !tbaa !23
  %t93 = load ptr, ptr %l4, !tbaa !29
  %t95 = getelementptr { i64, [4 x i64] }, ptr %t93, i32 0, i32 1
  %t96 = getelementptr { %"compiler/source:Span", i32, i32 }, ptr %t95, i32 0, i32 2
  %t97 = load i32, ptr %t96
  %t99 = load ptr, ptr %l0, !tbaa !29
  %t102 = sext i32 %t97 to i64
  %t103 = load ptr, ptr %l5, !tbaa !29
  call void @compiler_2ftyped_2ecompiler_2ftyped_3adropWalk_2esetLocal(ptr %v0, ptr %v1, ptr %t99, i64 %t102, ptr %t103)
  br label %bb23
bb22:
  br label %bb24
bb23:
  br label %bb24
bb24:
  br label %bb176
bb25:
  %t108 = load ptr, ptr %l1, !tbaa !29
  store ptr %t108, ptr %l85, !tbaa !29
  store i1 false, ptr %l86, !tbaa !21
  %t109 = load ptr, ptr %l85, !tbaa !29
  %t110 = icmp ne ptr %t109, null
  br i1 %t110, label %bb26, label %bb27
bb26:
  %t112 = load ptr, ptr %l85, !tbaa !29
  %t113 = load i64, ptr %t112, !range !{i64 0, i64 17}
  %t115 = icmp eq i64 %t113, 2
  store i1 %t115, ptr %l86, !tbaa !21
  br label %bb27
bb27:
  %t116 = load i1, ptr %l86, !tbaa !21
  br i1 %t116, label %bb28, label %bb29
bb28:
  %t117 = load ptr, ptr %l1, !tbaa !29
  %t119 = getelementptr { i64, [3 x i64] }, ptr %t117, i32 0, i32 1
  %t120 = getelementptr { %"compiler/source:Span", ptr }, ptr %t119, i32 0, i32 1
  %t121 = load ptr, ptr %t120
  store ptr %t121, ptr %l9, !tbaa !29
  br label %bb34
bb29:
  %t123 = load ptr, ptr %l1, !tbaa !29
  store ptr %t123, ptr %l91, !tbaa !29
  store i1 false, ptr %l92, !tbaa !21
  %t124 = load ptr, ptr %l91, !tbaa !29
  %t125 = icmp ne ptr %t124, null
  br i1 %t125, label %bb30, label %bb31
bb30:
  %t127 = load ptr, ptr %l91, !tbaa !29
  %t128 = load i64, ptr %t127, !range !{i64 0, i64 17}
  %t130 = icmp eq i64 %t128, 15
  store i1 %t130, ptr %l92, !tbaa !21
  br label %bb31
bb31:
  %t131 = load i1, ptr %l92, !tbaa !21
  br i1 %t131, label %bb32, label %bb33
bb32:
  %t132 = load ptr, ptr %l1, !tbaa !29
  %t134 = getelementptr { i64, [3 x i64] }, ptr %t132, i32 0, i32 1
  %t135 = getelementptr { %"compiler/source:Span", ptr }, ptr %t134, i32 0, i32 1
  %t136 = load ptr, ptr %t135
  store ptr %t136, ptr %l9, !tbaa !29
  br label %bb34
bb33:
  br label %bb36
bb34:
  %t138 = load ptr, ptr %l0, !tbaa !29
  %t139 = load ptr, ptr %l9, !tbaa !29
  call void @compiler_2ftyped_2ecompiler_2ftyped_3adropWalk_2eexpr(ptr %v0, ptr %v1, ptr %t138, ptr %t139)
  br label %bb35
bb35:
  br label %bb176
bb36:
  %t143 = load ptr, ptr %l1, !tbaa !29
  store ptr %t143, ptr %l100, !tbaa !29
  store i1 false, ptr %l101, !tbaa !21
  %t144 = load ptr, ptr %l100, !tbaa !29
  %t145 = icmp ne ptr %t144, null
  br i1 %t145, label %bb37, label %bb38
bb37:
  %t147 = load ptr, ptr %l100, !tbaa !29
  %t148 = load i64, ptr %t147, !range !{i64 0, i64 17}
  %t150 = icmp eq i64 %t148, 16
  store i1 %t150, ptr %l101, !tbaa !21
  br label %bb38
bb38:
  %t151 = load i1, ptr %l101, !tbaa !21
  br i1 %t151, label %bb39, label %bb40
bb39:
  %t152 = load ptr, ptr %l1, !tbaa !29
  %t154 = getelementptr { i64, [3 x i64] }, ptr %t152, i32 0, i32 1
  %t155 = getelementptr { %"compiler/source:Span", ptr }, ptr %t154, i32 0, i32 1
  %t156 = load ptr, ptr %t155
  store ptr %t156, ptr %l10, !tbaa !29
  br label %bb41
bb40:
  br label %bb43
bb41:
  %t158 = load ptr, ptr %l0, !tbaa !29
  %t159 = load ptr, ptr %l10, !tbaa !29
  call void @compiler_2ftyped_2ecompiler_2ftyped_3adropWalk_2eexpr(ptr %v0, ptr %v1, ptr %t158, ptr %t159)
  br label %bb42
bb42:
  br label %bb176
bb43:
  %t162 = load ptr, ptr %l1, !tbaa !29
  store ptr %t162, ptr %l108, !tbaa !29
  store i1 false, ptr %l109, !tbaa !21
  %t163 = load ptr, ptr %l108, !tbaa !29
  %t164 = icmp ne ptr %t163, null
  br i1 %t164, label %bb44, label %bb45
bb44:
  %t166 = load ptr, ptr %l108, !tbaa !29
  %t167 = load i64, ptr %t166, !range !{i64 0, i64 17}
  %t169 = icmp eq i64 %t167, 6
  store i1 %t169, ptr %l109, !tbaa !21
  br label %bb45
bb45:
  %t170 = load i1, ptr %l109, !tbaa !21
  br i1 %t170, label %bb46, label %bb47
bb46:
  %t171 = load ptr, ptr %l1, !tbaa !29
  %t173 = getelementptr { i64, [3 x i64] }, ptr %t171, i32 0, i32 1
  %t174 = getelementptr { %"compiler/source:Span", ptr }, ptr %t173, i32 0, i32 1
  %t175 = load ptr, ptr %t174
  store ptr %t175, ptr %l11, !tbaa !29
  br label %bb48
bb47:
  br label %bb51
bb48:
  %t177 = load ptr, ptr %l0, !tbaa !29
  %t178 = load ptr, ptr %l11, !tbaa !29
  call void @compiler_2ftyped_2ecompiler_2ftyped_3adropWalk_2eexpr(ptr %v0, ptr %v1, ptr %t177, ptr %t178)
  br label %bb49
bb49:
  %t181 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2ftyped_2ecompiler_2ftyped_3adropWalk_2eleave(ptr %v0, ptr %t181, i64 -1)
  br label %bb50
bb50:
  %t183 = load ptr, ptr %l0, !tbaa !29
  %t185 = getelementptr %"compiler/typed:dropWalk", ptr %t183, i32 0, i32 3
  store i1 true, ptr %t185, !tbaa !21
  br label %bb176
bb51:
  %t186 = load ptr, ptr %l1, !tbaa !29
  store ptr %t186, ptr %l118, !tbaa !29
  store i1 false, ptr %l119, !tbaa !21
  %t187 = load ptr, ptr %l118, !tbaa !29
  %t188 = icmp ne ptr %t187, null
  br i1 %t188, label %bb52, label %bb53
bb52:
  %t190 = load ptr, ptr %l118, !tbaa !29
  %t191 = load i64, ptr %t190, !range !{i64 0, i64 17}
  %t193 = icmp eq i64 %t191, 8
  store i1 %t193, ptr %l119, !tbaa !21
  br label %bb53
bb53:
  %t194 = load i1, ptr %l119, !tbaa !21
  br i1 %t194, label %bb54, label %bb55
bb54:
  %t195 = load ptr, ptr %l1, !tbaa !29
  %t197 = getelementptr { i64, [3 x i64] }, ptr %t195, i32 0, i32 1
  %t198 = getelementptr { %"compiler/source:Span", ptr, i32 }, ptr %t197, i32 0, i32 1
  %t199 = load ptr, ptr %t198
  store ptr %t199, ptr %l12, !tbaa !29
  br label %bb56
bb55:
  br label %bb59
bb56:
  %t201 = load ptr, ptr %l0, !tbaa !29
  %t202 = load ptr, ptr %l12, !tbaa !29
  call void @compiler_2ftyped_2ecompiler_2ftyped_3adropWalk_2eexpr(ptr %v0, ptr %v1, ptr %t201, ptr %t202)
  br label %bb57
bb57:
  %t206 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2ftyped_2ecompiler_2ftyped_3adropWalk_2efailHere(ptr %v0, ptr %t206, i1 true)
  br label %bb58
bb58:
  %t208 = load ptr, ptr %l0, !tbaa !29
  %t210 = getelementptr %"compiler/typed:dropWalk", ptr %t208, i32 0, i32 3
  store i1 true, ptr %t210, !tbaa !21
  br label %bb176
bb59:
  %t211 = load ptr, ptr %l1, !tbaa !29
  store ptr %t211, ptr %l129, !tbaa !29
  store i1 false, ptr %l130, !tbaa !21
  %t212 = load ptr, ptr %l129, !tbaa !29
  %t213 = icmp ne ptr %t212, null
  br i1 %t213, label %bb60, label %bb61
bb60:
  %t215 = load ptr, ptr %l129, !tbaa !29
  %t216 = load i64, ptr %t215, !range !{i64 0, i64 17}
  %t218 = icmp eq i64 %t216, 7
  store i1 %t218, ptr %l130, !tbaa !21
  br label %bb61
bb61:
  %t219 = load i1, ptr %l130, !tbaa !21
  br i1 %t219, label %bb62, label %bb63
bb62:
  br label %bb64
bb63:
  br label %bb66
bb64:
  %t220 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2ftyped_2ecompiler_2ftyped_3adropWalk_2efailHere(ptr %v0, ptr %t220, i1 true)
  br label %bb65
bb65:
  %t222 = load ptr, ptr %l0, !tbaa !29
  %t224 = getelementptr %"compiler/typed:dropWalk", ptr %t222, i32 0, i32 3
  store i1 true, ptr %t224, !tbaa !21
  br label %bb176
bb66:
  %t225 = load ptr, ptr %l1, !tbaa !29
  store ptr %t225, ptr %l135, !tbaa !29
  store i1 false, ptr %l136, !tbaa !21
  %t226 = load ptr, ptr %l135, !tbaa !29
  %t227 = icmp ne ptr %t226, null
  br i1 %t227, label %bb67, label %bb68
bb67:
  %t229 = load ptr, ptr %l135, !tbaa !29
  %t230 = load i64, ptr %t229, !range !{i64 0, i64 17}
  %t232 = icmp eq i64 %t230, 9
  store i1 %t232, ptr %l136, !tbaa !21
  br label %bb68
bb68:
  %t233 = load i1, ptr %l136, !tbaa !21
  br i1 %t233, label %bb69, label %bb70
bb69:
  %t234 = load ptr, ptr %l1, !tbaa !29
  %t236 = getelementptr { i64, [3 x i64] }, ptr %t234, i32 0, i32 1
  %t237 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t236, i32 0, i32 2
  %t238 = load ptr, ptr %t237
  store ptr %t238, ptr %l13, !tbaa !29
  br label %bb71
bb70:
  br label %bb73
bb71:
  %t240 = load ptr, ptr %l0, !tbaa !29
  %t241 = load ptr, ptr %l13, !tbaa !29
  call void @compiler_2ftyped_2ecompiler_2ftyped_3adropWalk_2eexpr(ptr %v0, ptr %v1, ptr %t240, ptr %t241)
  br label %bb72
bb72:
  %t244 = load ptr, ptr %l0, !tbaa !29
  %t246 = getelementptr %"compiler/typed:dropWalk", ptr %t244, i32 0, i32 3
  store i1 true, ptr %t246, !tbaa !21
  br label %bb176
bb73:
  %t247 = load ptr, ptr %l1, !tbaa !29
  store ptr %t247, ptr %l144, !tbaa !29
  store i1 false, ptr %l145, !tbaa !21
  %t248 = load ptr, ptr %l144, !tbaa !29
  %t249 = icmp ne ptr %t248, null
  br i1 %t249, label %bb74, label %bb75
bb74:
  %t251 = load ptr, ptr %l144, !tbaa !29
  %t252 = load i64, ptr %t251, !range !{i64 0, i64 17}
  %t254 = icmp eq i64 %t252, 10
  store i1 %t254, ptr %l145, !tbaa !21
  br label %bb75
bb75:
  %t255 = load i1, ptr %l145, !tbaa !21
  br i1 %t255, label %bb76, label %bb77
bb76:
  %t256 = load ptr, ptr %l1, !tbaa !29
  %t258 = getelementptr { i64, [3 x i64] }, ptr %t256, i32 0, i32 1
  %t259 = getelementptr { %"compiler/source:Span", ptr, ptr }, ptr %t258, i32 0, i32 1
  %t260 = load ptr, ptr %t259
  store ptr %t260, ptr %l14, !tbaa !29
  %t262 = load ptr, ptr %l1, !tbaa !29
  %t264 = getelementptr { i64, [3 x i64] }, ptr %t262, i32 0, i32 1
  %t265 = getelementptr { %"compiler/source:Span", ptr, ptr }, ptr %t264, i32 0, i32 2
  %t266 = load ptr, ptr %t265
  store ptr %t266, ptr %l15, !tbaa !29
  br label %bb78
bb77:
  br label %bb81
bb78:
  %t268 = load ptr, ptr %l0, !tbaa !29
  %t269 = load ptr, ptr %l14, !tbaa !29
  call void @compiler_2ftyped_2ecompiler_2ftyped_3adropWalk_2eexpr(ptr %v0, ptr %v1, ptr %t268, ptr %t269)
  br label %bb79
bb79:
  %t273 = load ptr, ptr %l0, !tbaa !29
  %t274 = load ptr, ptr %l15, !tbaa !29
  call void @compiler_2ftyped_2ecompiler_2ftyped_3adropWalk_2eexpr(ptr %v0, ptr %v1, ptr %t273, ptr %t274)
  br label %bb80
bb80:
  br label %bb176
bb81:
  %t277 = load ptr, ptr %l1, !tbaa !29
  store ptr %t277, ptr %l157, !tbaa !29
  store i1 false, ptr %l158, !tbaa !21
  %t278 = load ptr, ptr %l157, !tbaa !29
  %t279 = icmp ne ptr %t278, null
  br i1 %t279, label %bb82, label %bb83
bb82:
  %t281 = load ptr, ptr %l157, !tbaa !29
  %t282 = load i64, ptr %t281, !range !{i64 0, i64 17}
  %t284 = icmp eq i64 %t282, 3
  store i1 %t284, ptr %l158, !tbaa !21
  br label %bb83
bb83:
  %t285 = load i1, ptr %l158, !tbaa !21
  br i1 %t285, label %bb84, label %bb85
bb84:
  %t286 = load ptr, ptr %l1, !tbaa !29
  %t288 = getelementptr { i64, [3 x i64] }, ptr %t286, i32 0, i32 1
  %t289 = getelementptr { %"compiler/source:Span", ptr }, ptr %t288, i32 0, i32 1
  %t290 = load ptr, ptr %t289
  store ptr %t290, ptr %l16, !tbaa !29
  br label %bb86
bb85:
  br label %bb94
bb86:
  store %olang.scope zeroinitializer, ptr %s12
  %t292 = load ptr, ptr %l0, !tbaa !29
  %t293 = load ptr, ptr %l16, !tbaa !29
  %t295 = getelementptr %"compiler/typed:If", ptr %t293, i32 0, i32 0
  %t296 = load ptr, ptr %t295, !tbaa !29
  call void @compiler_2ftyped_2ecompiler_2ftyped_3adropWalk_2eexpr(ptr %v0, ptr %v1, ptr %t292, ptr %t296)
  br label %bb87
bb87:
  %t300 = load ptr, ptr %l0, !tbaa !29
  %t302 = call { i64, ptr } @compiler_2ftyped_2ecompiler_2ftyped_3adropWalk_2esave(ptr %v0, ptr %s12, ptr %t300)
  store { i64, ptr } %t302, ptr %l168
  br label %bb88
bb88:
  %t303 = load { i64, ptr }, ptr %l168, !tbaa !27
  %t304 = extractvalue { i64, ptr } %t303, 0
  store i64 %t304, ptr %l169, !tbaa !24
  %t305 = load i64, ptr %l169, !tbaa !24
  %t306 = mul i64 %t305, 1
  %t307 = call ptr @__olang_scope_alloc(ptr %s12, i64 %t306)
  %t308 = insertvalue { i64, ptr } undef, i64 %t305, 0
  %t309 = insertvalue { i64, ptr } %t308, ptr %t307, 1
  store { i64, ptr } %t309, ptr %l170, !tbaa !27
  %t310 = getelementptr { i64, ptr }, ptr %l170, i32 0, i32 1
  %t311 = load ptr, ptr %t310, !tbaa !27
  %t312 = getelementptr { i64, ptr }, ptr %l168, i32 0, i32 1
  %t313 = load ptr, ptr %t312, !tbaa !27
  %t314 = load i64, ptr %l169, !tbaa !24
  %t315 = mul i64 %t314, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t311, ptr %t313, i64 %t315, i1 false)
  %t316 = load { i64, ptr }, ptr %l170, !tbaa !27
  store { i64, ptr } %t316, ptr %l17, !tbaa !27
  %t317 = load ptr, ptr %l0, !tbaa !29
  %t318 = load ptr, ptr %l16, !tbaa !29
  %t320 = getelementptr %"compiler/typed:If", ptr %t318, i32 0, i32 1
  %t321 = load ptr, ptr %t320, !tbaa !29
  call void @compiler_2ftyped_2ecompiler_2ftyped_3adropWalk_2eblock(ptr %v0, ptr %v1, ptr %t317, ptr %t321)
  br label %bb89
bb89:
  %t325 = load ptr, ptr %l0, !tbaa !29
  %t327 = call { i64, ptr } @compiler_2ftyped_2ecompiler_2ftyped_3adropWalk_2esave(ptr %v0, ptr %s12, ptr %t325)
  store { i64, ptr } %t327, ptr %l176
  br label %bb90
bb90:
  %t328 = load { i64, ptr }, ptr %l176, !tbaa !27
  %t329 = extractvalue { i64, ptr } %t328, 0
  store i64 %t329, ptr %l177, !tbaa !24
  %t330 = load i64, ptr %l177, !tbaa !24
  %t331 = mul i64 %t330, 1
  %t332 = call ptr @__olang_scope_alloc(ptr %s12, i64 %t331)
  %t333 = insertvalue { i64, ptr } undef, i64 %t330, 0
  %t334 = insertvalue { i64, ptr } %t333, ptr %t332, 1
  store { i64, ptr } %t334, ptr %l178, !tbaa !27
  %t335 = getelementptr { i64, ptr }, ptr %l178, i32 0, i32 1
  %t336 = load ptr, ptr %t335, !tbaa !27
  %t337 = getelementptr { i64, ptr }, ptr %l176, i32 0, i32 1
  %t338 = load ptr, ptr %t337, !tbaa !27
  %t339 = load i64, ptr %l177, !tbaa !24
  %t340 = mul i64 %t339, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t336, ptr %t338, i64 %t340, i1 false)
  %t341 = load { i64, ptr }, ptr %l178, !tbaa !27
  store { i64, ptr } %t341, ptr %l18, !tbaa !27
  %t342 = load ptr, ptr %l0, !tbaa !29
  %t343 = load { i64, ptr }, ptr %l17, !tbaa !27
  call void @compiler_2ftyped_2ecompiler_2ftyped_3adropWalk_2erestore(ptr %v0, ptr %s12, ptr %t342, { i64, ptr } %t343)
  br label %bb91
bb91:
  %t346 = load ptr, ptr %l0, !tbaa !29
  %t347 = load ptr, ptr %l16, !tbaa !29
  %t349 = getelementptr %"compiler/typed:If", ptr %t347, i32 0, i32 2
  %t350 = load ptr, ptr %t349, !tbaa !29
  call void @compiler_2ftyped_2ecompiler_2ftyped_3adropWalk_2eblock(ptr %v0, ptr %v1, ptr %t346, ptr %t350)
  br label %bb92
bb92:
  %t353 = load ptr, ptr %l0, !tbaa !29
  %t354 = load { i64, ptr }, ptr %l18, !tbaa !27
  call void @compiler_2ftyped_2ecompiler_2ftyped_3adropWalk_2ejoin(ptr %v0, ptr %s12, ptr %t353, { i64, ptr } %t354)
  br label %bb93
bb93:
  call void @__olang_scope_close(ptr %s12)
  br label %bb176
bb94:
  %t357 = load ptr, ptr %l1, !tbaa !29
  store ptr %t357, ptr %l186, !tbaa !29
  store i1 false, ptr %l187, !tbaa !21
  %t358 = load ptr, ptr %l186, !tbaa !29
  %t359 = icmp ne ptr %t358, null
  br i1 %t359, label %bb95, label %bb96
bb95:
  %t361 = load ptr, ptr %l186, !tbaa !29
  %t362 = load i64, ptr %t361, !range !{i64 0, i64 17}
  %t364 = icmp eq i64 %t362, 4
  store i1 %t364, ptr %l187, !tbaa !21
  br label %bb96
bb96:
  %t365 = load i1, ptr %l187, !tbaa !21
  br i1 %t365, label %bb97, label %bb98
bb97:
  %t366 = load ptr, ptr %l1, !tbaa !29
  %t368 = getelementptr { i64, [3 x i64] }, ptr %t366, i32 0, i32 1
  %t369 = getelementptr { %"compiler/source:Span", ptr, ptr }, ptr %t368, i32 0, i32 1
  %t370 = load ptr, ptr %t369
  store ptr %t370, ptr %l19, !tbaa !29
  %t372 = load ptr, ptr %l1, !tbaa !29
  %t374 = getelementptr { i64, [3 x i64] }, ptr %t372, i32 0, i32 1
  %t375 = getelementptr { %"compiler/source:Span", ptr, ptr }, ptr %t374, i32 0, i32 2
  %t376 = load ptr, ptr %t375
  store ptr %t376, ptr %l20, !tbaa !29
  br label %bb99
bb98:
  br label %bb101
bb99:
  %t378 = load ptr, ptr %l0, !tbaa !29
  %t379 = load ptr, ptr %l19, !tbaa !29
  %t380 = load ptr, ptr %l20, !tbaa !29
  call void @compiler_2ftyped_2ecompiler_2ftyped_3adropWalk_2eloop(ptr %v0, ptr %v1, ptr %v1, ptr %t378, ptr %t379, ptr %t380)
  br label %bb100
bb100:
  br label %bb176
bb101:
  %t384 = load ptr, ptr %l1, !tbaa !29
  store ptr %t384, ptr %l197, !tbaa !29
  store i1 false, ptr %l198, !tbaa !21
  %t385 = load ptr, ptr %l197, !tbaa !29
  %t386 = icmp ne ptr %t385, null
  br i1 %t386, label %bb102, label %bb103
bb102:
  %t388 = load ptr, ptr %l197, !tbaa !29
  %t389 = load i64, ptr %t388, !range !{i64 0, i64 17}
  %t391 = icmp eq i64 %t389, 5
  store i1 %t391, ptr %l198, !tbaa !21
  br label %bb103
bb103:
  %t392 = load i1, ptr %l198, !tbaa !21
  br i1 %t392, label %bb104, label %bb105
bb104:
  %t393 = load ptr, ptr %l1, !tbaa !29
  %t395 = getelementptr { i64, [3 x i64] }, ptr %t393, i32 0, i32 1
  %t396 = getelementptr { %"compiler/source:Span", i32, i32 }, ptr %t395, i32 0, i32 1
  %t397 = load i32, ptr %t396, !range !{i32 0, i32 2}
  store i32 %t397, ptr %l21
  %t399 = load ptr, ptr %l1, !tbaa !29
  %t401 = getelementptr { i64, [3 x i64] }, ptr %t399, i32 0, i32 1
  %t402 = getelementptr { %"compiler/source:Span", i32, i32 }, ptr %t401, i32 0, i32 2
  %t403 = load i32, ptr %t402
  store i32 %t403, ptr %l22, !tbaa !23
  br label %bb106
bb105:
  br label %bb108
bb106:
  %t405 = load ptr, ptr %l0, !tbaa !29
  %t406 = load i32, ptr %l21, !range !{i32 0, i32 2}
  %t407 = load i32, ptr %l22, !tbaa !23
  call void @compiler_2ftyped_2ecompiler_2ftyped_3adropWalk_2ejump(ptr %v0, ptr %t405, i32 %t406, i32 %t407)
  br label %bb107
bb107:
  br label %bb176
bb108:
  %t411 = load ptr, ptr %l1, !tbaa !29
  store ptr %t411, ptr %l208, !tbaa !29
  store i1 false, ptr %l209, !tbaa !21
  %t412 = load ptr, ptr %l208, !tbaa !29
  %t413 = icmp ne ptr %t412, null
  br i1 %t413, label %bb109, label %bb110
bb109:
  %t415 = load ptr, ptr %l208, !tbaa !29
  %t416 = load i64, ptr %t415, !range !{i64 0, i64 17}
  %t418 = icmp eq i64 %t416, 11
  store i1 %t418, ptr %l209, !tbaa !21
  br label %bb110
bb110:
  %t419 = load i1, ptr %l209, !tbaa !21
  br i1 %t419, label %bb111, label %bb112
bb111:
  %t420 = load ptr, ptr %l1, !tbaa !29
  %t422 = getelementptr { i64, [3 x i64] }, ptr %t420, i32 0, i32 1
  %t423 = getelementptr { %"compiler/source:Span", ptr }, ptr %t422, i32 0, i32 1
  %t424 = load ptr, ptr %t423
  store ptr %t424, ptr %l23, !tbaa !29
  br label %bb113
bb112:
  br label %bb115
bb113:
  %t426 = load ptr, ptr %l0, !tbaa !29
  %t427 = load ptr, ptr %l23, !tbaa !29
  call void @compiler_2ftyped_2ecompiler_2ftyped_3adropWalk_2eblock(ptr %v0, ptr %v1, ptr %t426, ptr %t427)
  br label %bb114
bb114:
  br label %bb176
bb115:
  %t431 = load ptr, ptr %l1, !tbaa !29
  store ptr %t431, ptr %l217, !tbaa !29
  store i1 false, ptr %l218, !tbaa !21
  %t432 = load ptr, ptr %l217, !tbaa !29
  %t433 = icmp ne ptr %t432, null
  br i1 %t433, label %bb116, label %bb117
bb116:
  %t435 = load ptr, ptr %l217, !tbaa !29
  %t436 = load i64, ptr %t435, !range !{i64 0, i64 17}
  %t438 = icmp eq i64 %t436, 12
  store i1 %t438, ptr %l218, !tbaa !21
  br label %bb117
bb117:
  %t439 = load i1, ptr %l218, !tbaa !21
  br i1 %t439, label %bb118, label %bb119
bb118:
  %t440 = load ptr, ptr %l1, !tbaa !29
  %t442 = getelementptr { i64, [3 x i64] }, ptr %t440, i32 0, i32 1
  %t443 = getelementptr { %"compiler/source:Span", ptr }, ptr %t442, i32 0, i32 1
  %t444 = load ptr, ptr %t443
  store ptr %t444, ptr %l24, !tbaa !29
  br label %bb120
bb119:
  br label %bb139
bb120:
  %t446 = load ptr, ptr %l0, !tbaa !29
  %t447 = load ptr, ptr %l24, !tbaa !29
  %t450 = call i64 @compiler_2ftyped_2ecompiler_2ftyped_3adropWalk_2eflagOf(ptr %v0, ptr %v1, ptr %t446, ptr %t447)
  store i64 %t450, ptr %l225
  br label %bb121
bb121:
  %t451 = load i64, ptr %l225, !tbaa !24
  store i64 %t451, ptr %l25, !tbaa !24
  %t452 = load i64, ptr %l25, !tbaa !24
  %t454 = icmp sge i64 %t452, 0
  br i1 %t454, label %bb122, label %bb123
bb122:
  %t456 = load ptr, ptr %l0, !tbaa !29
  %t458 = getelementptr %"compiler/typed:dropWalk", ptr %t456, i32 0, i32 1
  %t459 = load i64, ptr %l25, !tbaa !24
  %t462 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2eHas_3cI64_2c_20I64_3e(ptr %v0, ptr %t458, i64 %t459)
  store i1 %t462, ptr %l232
  br label %bb124
bb123:
  store i1 false, ptr %l228, !tbaa !21
  br label %bb125
bb124:
  %t463 = load i1, ptr %l232, !tbaa !21
  %t464 = xor i1 %t463, true
  store i1 %t464, ptr %l228, !tbaa !21
  br label %bb125
bb125:
  %t466 = load i1, ptr %l228, !tbaa !21
  br i1 %t466, label %bb126, label %bb127
bb126:
  %t467 = load ptr, ptr %l0, !tbaa !29
  %t469 = getelementptr %"compiler/typed:dropWalk", ptr %t467, i32 0, i32 14
  %t470 = load i64, ptr %l25, !tbaa !24
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2ePut_3cI64_2c_20Bool_3e(ptr %v0, ptr %t469, i64 %t470, i1 true)
  br label %bb128
bb127:
  br label %bb129
bb128:
  br label %bb129
bb129:
  %t473 = load i64, ptr %l25, !tbaa !24
  %t475 = icmp sge i64 %t473, 0
  br i1 %t475, label %bb130, label %bb131
bb130:
  %t477 = load ptr, ptr %l0, !tbaa !29
  %t479 = getelementptr %"compiler/typed:dropWalk", ptr %t477, i32 0, i32 1
  %t480 = load i64, ptr %l25, !tbaa !24
  %t483 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2eHas_3cI64_2c_20I64_3e(ptr %v0, ptr %t479, i64 %t480)
  store i1 %t483, ptr %l243
  br label %bb132
bb131:
  store i1 false, ptr %l239, !tbaa !21
  br label %bb133
bb132:
  %t484 = load i1, ptr %l243, !tbaa !21
  store i1 %t484, ptr %l239, !tbaa !21
  br label %bb133
bb133:
  %t485 = load i1, ptr %l239, !tbaa !21
  br i1 %t485, label %bb134, label %bb135
bb134:
  %t486 = load ptr, ptr %l0, !tbaa !29
  %t488 = getelementptr %"compiler/typed:dropWalk", ptr %t486, i32 0, i32 5
  %t489 = load i64, ptr %l25, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %t488, i64 %t489)
  br label %bb136
bb135:
  br label %bb138
bb136:
  %t492 = load ptr, ptr %l0, !tbaa !29
  %t494 = getelementptr %"compiler/typed:dropWalk", ptr %t492, i32 0, i32 6
  %t495 = load ptr, ptr %l0, !tbaa !29
  %t497 = getelementptr %"compiler/typed:dropWalk", ptr %t495, i32 0, i32 4
  %t498 = load i64, ptr %t497, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %t494, i64 %t498)
  br label %bb137
bb137:
  br label %bb138
bb138:
  br label %bb176
bb139:
  %t501 = load ptr, ptr %l1, !tbaa !29
  store ptr %t501, ptr %l251, !tbaa !29
  store i1 false, ptr %l252, !tbaa !21
  %t502 = load ptr, ptr %l251, !tbaa !29
  %t503 = icmp ne ptr %t502, null
  br i1 %t503, label %bb140, label %bb141
bb140:
  %t505 = load ptr, ptr %l251, !tbaa !29
  %t506 = load i64, ptr %t505, !range !{i64 0, i64 17}
  %t508 = icmp eq i64 %t506, 13
  store i1 %t508, ptr %l252, !tbaa !21
  br label %bb141
bb141:
  %t509 = load i1, ptr %l252, !tbaa !21
  br i1 %t509, label %bb142, label %bb143
bb142:
  %t510 = load ptr, ptr %l1, !tbaa !29
  %t512 = getelementptr { i64, [3 x i64] }, ptr %t510, i32 0, i32 1
  %t513 = getelementptr { %"compiler/source:Span", ptr }, ptr %t512, i32 0, i32 1
  %t514 = load ptr, ptr %t513
  store ptr %t514, ptr %l26, !tbaa !29
  br label %bb144
bb143:
  br label %bb161
bb144:
  store %olang.scope zeroinitializer, ptr %s19
  %t516 = load ptr, ptr %l0, !tbaa !29
  %t517 = load ptr, ptr %l26, !tbaa !29
  %t519 = getelementptr %"compiler/typed:Join", ptr %t517, i32 0, i32 0
  %t520 = load ptr, ptr %t519, !tbaa !29
  call void @compiler_2ftyped_2ecompiler_2ftyped_3adropWalk_2eblock(ptr %v0, ptr %v1, ptr %t516, ptr %t520)
  br label %bb145
bb145:
  %t524 = load ptr, ptr %l26, !tbaa !29
  %t526 = getelementptr %"compiler/typed:Join", ptr %t524, i32 0, i32 1
  %t527 = load i1, ptr %t526, !tbaa !21
  br i1 %t527, label %bb146, label %bb147
bb146:
  %t529 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2ftyped_2ecompiler_2ftyped_3adropWalk_2efailHere(ptr %v0, ptr %t529, i1 true)
  br label %bb148
bb147:
  br label %bb149
bb148:
  br label %bb149
bb149:
  %t531 = load ptr, ptr %l0, !tbaa !29
  %t533 = call { i64, ptr } @compiler_2ftyped_2ecompiler_2ftyped_3adropWalk_2esave(ptr %v0, ptr %s19, ptr %t531)
  store { i64, ptr } %t533, ptr %l265
  br label %bb150
bb150:
  %t534 = load { i64, ptr }, ptr %l265, !tbaa !27
  %t535 = extractvalue { i64, ptr } %t534, 0
  store i64 %t535, ptr %l266, !tbaa !24
  %t536 = load i64, ptr %l266, !tbaa !24
  %t537 = mul i64 %t536, 1
  %t538 = call ptr @__olang_scope_alloc(ptr %s19, i64 %t537)
  %t539 = insertvalue { i64, ptr } undef, i64 %t536, 0
  %t540 = insertvalue { i64, ptr } %t539, ptr %t538, 1
  store { i64, ptr } %t540, ptr %l267, !tbaa !27
  %t541 = getelementptr { i64, ptr }, ptr %l267, i32 0, i32 1
  %t542 = load ptr, ptr %t541, !tbaa !27
  %t543 = getelementptr { i64, ptr }, ptr %l265, i32 0, i32 1
  %t544 = load ptr, ptr %t543, !tbaa !27
  %t545 = load i64, ptr %l266, !tbaa !24
  %t546 = mul i64 %t545, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t542, ptr %t544, i64 %t546, i1 false)
  %t547 = load { i64, ptr }, ptr %l267, !tbaa !27
  store { i64, ptr } %t547, ptr %l27, !tbaa !27
  %t548 = load ptr, ptr %l26, !tbaa !29
  %t550 = getelementptr %"compiler/typed:Join", ptr %t548, i32 0, i32 2
  %t551 = load { i64, ptr }, ptr %t550, !tbaa !27
  store { i64, ptr } %t551, ptr %l28, !tbaa !27
  store i64 0, ptr %l29, !tbaa !24
  %t553 = load { i64, ptr }, ptr %l28, !tbaa !27
  %t555 = extractvalue { i64, ptr } %t553, 0
  store i64 %t555, ptr %l30, !tbaa !24
  br label %bb151
bb151:
  store %olang.scope zeroinitializer, ptr %s22
  %t557 = load i64, ptr %l29, !tbaa !24
  %t558 = load i64, ptr %l30, !tbaa !24
  %t561 = icmp slt i64 %t557, %t558
  %t563 = xor i1 %t561, true
  br i1 %t563, label %bb152, label %bb153
bb152:
  call void @__olang_scope_close(ptr %s22)
  br label %bb160
bb153:
  br label %bb154
bb154:
  %t565 = load { i64, ptr }, ptr %l28, !tbaa !27
  store { i64, ptr } %t565, ptr %l276, !tbaa !27
  %t566 = load i64, ptr %l29, !tbaa !24
  %t568 = getelementptr { i64, ptr }, ptr %l276, i32 0, i32 1
  %t569 = load ptr, ptr %t568, !tbaa !27
  %t570 = getelementptr ptr, ptr %t569, i64 %t566
  %t571 = load ptr, ptr %t570, !tbaa !39
  store ptr %t571, ptr %l31, !tbaa !29
  %t573 = load ptr, ptr %l0, !tbaa !29
  %t575 = call { i64, ptr } @compiler_2ftyped_2ecompiler_2ftyped_3adropWalk_2esave(ptr %v0, ptr %s22, ptr %t573)
  store { i64, ptr } %t575, ptr %l280
  br label %bb155
bb155:
  %t576 = load { i64, ptr }, ptr %l280, !tbaa !27
  %t577 = extractvalue { i64, ptr } %t576, 0
  store i64 %t577, ptr %l281, !tbaa !24
  %t578 = load i64, ptr %l281, !tbaa !24
  %t579 = mul i64 %t578, 1
  %t580 = call ptr @__olang_scope_alloc(ptr %s22, i64 %t579)
  %t581 = insertvalue { i64, ptr } undef, i64 %t578, 0
  %t582 = insertvalue { i64, ptr } %t581, ptr %t580, 1
  store { i64, ptr } %t582, ptr %l282, !tbaa !27
  %t583 = getelementptr { i64, ptr }, ptr %l282, i32 0, i32 1
  %t584 = load ptr, ptr %t583, !tbaa !27
  %t585 = getelementptr { i64, ptr }, ptr %l280, i32 0, i32 1
  %t586 = load ptr, ptr %t585, !tbaa !27
  %t587 = load i64, ptr %l281, !tbaa !24
  %t588 = mul i64 %t587, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t584, ptr %t586, i64 %t588, i1 false)
  %t589 = load { i64, ptr }, ptr %l282, !tbaa !27
  store { i64, ptr } %t589, ptr %l32, !tbaa !27
  %t590 = load ptr, ptr %l0, !tbaa !29
  %t591 = load { i64, ptr }, ptr %l27, !tbaa !27
  call void @compiler_2ftyped_2ecompiler_2ftyped_3adropWalk_2erestore(ptr %v0, ptr %s19, ptr %t590, { i64, ptr } %t591)
  br label %bb156
bb156:
  %t594 = load ptr, ptr %l0, !tbaa !29
  %t595 = load ptr, ptr %l31, !tbaa !29
  %t597 = getelementptr %"compiler/typed:Clause", ptr %t595, i32 0, i32 3
  %t598 = load ptr, ptr %t597, !tbaa !29
  call void @compiler_2ftyped_2ecompiler_2ftyped_3adropWalk_2eblock(ptr %v0, ptr %v1, ptr %t594, ptr %t598)
  br label %bb157
bb157:
  %t601 = load ptr, ptr %l0, !tbaa !29
  %t602 = load { i64, ptr }, ptr %l32, !tbaa !27
  call void @compiler_2ftyped_2ecompiler_2ftyped_3adropWalk_2ejoin(ptr %v0, ptr %s22, ptr %t601, { i64, ptr } %t602)
  br label %bb158
bb158:
  call void @__olang_scope_close(ptr %s22)
  br label %bb159
bb159:
  %t605 = load i64, ptr %l29, !tbaa !24
  %t607 = add i64 %t605, 1
  store i64 %t607, ptr %l29, !tbaa !24
  br label %bb151
bb160:
  call void @__olang_scope_close(ptr %s19)
  br label %bb176
bb161:
  %t609 = load ptr, ptr %l1, !tbaa !29
  store ptr %t609, ptr %l292, !tbaa !29
  store i1 false, ptr %l293, !tbaa !21
  %t610 = load ptr, ptr %l292, !tbaa !29
  %t611 = icmp ne ptr %t610, null
  br i1 %t611, label %bb162, label %bb163
bb162:
  %t613 = load ptr, ptr %l292, !tbaa !29
  %t614 = load i64, ptr %t613, !range !{i64 0, i64 17}
  %t616 = icmp eq i64 %t614, 14
  store i1 %t616, ptr %l293, !tbaa !21
  br label %bb163
bb163:
  %t617 = load i1, ptr %l293, !tbaa !21
  br i1 %t617, label %bb164, label %bb165
bb164:
  %t618 = load ptr, ptr %l1, !tbaa !29
  %t620 = getelementptr { i64, [3 x i64] }, ptr %t618, i32 0, i32 1
  %t621 = getelementptr { %"compiler/source:Span", ptr }, ptr %t620, i32 0, i32 1
  %t622 = load ptr, ptr %t621
  store ptr %t622, ptr %l33, !tbaa !29
  br label %bb166
bb165:
  br label %bb175
bb166:
  %t624 = load ptr, ptr %l33, !tbaa !29
  %t626 = getelementptr %"compiler/typed:Spawn", ptr %t624, i32 0, i32 0
  %t627 = load { i64, ptr }, ptr %t626, !tbaa !27
  store { i64, ptr } %t627, ptr %l34, !tbaa !27
  store i64 0, ptr %l35, !tbaa !24
  %t629 = load { i64, ptr }, ptr %l34, !tbaa !27
  %t631 = extractvalue { i64, ptr } %t629, 0
  store i64 %t631, ptr %l36, !tbaa !24
  br label %bb167
bb167:
  %t633 = load i64, ptr %l35, !tbaa !24
  %t634 = load i64, ptr %l36, !tbaa !24
  %t637 = icmp slt i64 %t633, %t634
  %t639 = xor i1 %t637, true
  br i1 %t639, label %bb168, label %bb169
bb168:
  br label %bb173
bb169:
  br label %bb170
bb170:
  %t641 = load { i64, ptr }, ptr %l34, !tbaa !27
  store { i64, ptr } %t641, ptr %l306, !tbaa !27
  %t642 = load i64, ptr %l35, !tbaa !24
  %t644 = getelementptr { i64, ptr }, ptr %l306, i32 0, i32 1
  %t645 = load ptr, ptr %t644, !tbaa !27
  %t646 = getelementptr ptr, ptr %t645, i64 %t642
  %t647 = load ptr, ptr %t646, !tbaa !39
  %t649 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2ftyped_2ecompiler_2ftyped_3adropWalk_2eplace(ptr %v0, ptr %v1, ptr %t649, ptr %t647)
  br label %bb171
bb171:
  br label %bb172
bb172:
  %t653 = load i64, ptr %l35, !tbaa !24
  %t655 = add i64 %t653, 1
  store i64 %t655, ptr %l35, !tbaa !24
  br label %bb167
bb173:
  %t657 = load ptr, ptr %l0, !tbaa !29
  %t658 = load ptr, ptr %l33, !tbaa !29
  %t660 = getelementptr %"compiler/typed:Spawn", ptr %t658, i32 0, i32 1
  %t661 = load ptr, ptr %t660, !tbaa !29
  call void @compiler_2ftyped_2ecompiler_2ftyped_3adropWalk_2eexpr(ptr %v0, ptr %v1, ptr %t657, ptr %t661)
  br label %bb174
bb174:
  br label %bb176
bb175:
  call void @__olang_check_failed(ptr @olang_loc_43e833e67406aee2_76f2107f4f2989fe)
  unreachable
bb176:
  br label %ret
ret:
  ret void
}

define dso_local %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2ftyped_2ecompiler_2ftyped_3aholdWalk_2eelemStorage(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l6 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l10 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %s0 = alloca %olang.scope
  %rv = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load ptr, ptr %l1, !tbaa !29
  %t4 = getelementptr %"compiler/typed:Elem", ptr %t2, i32 0, i32 1
  %t5 = load ptr, ptr %t4, !tbaa !29
  %t9 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2ftyped_2ecompiler_2ftyped_3aholdWalk_2erefs(ptr %v0, ptr %v1, ptr %s0, ptr %v3, ptr %v4, ptr %t1, ptr %t5)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t9, ptr %l6
  br label %bb1
bb1:
  %t10 = load ptr, ptr %l0, !tbaa !29
  %t11 = load ptr, ptr %l1, !tbaa !29
  %t13 = getelementptr %"compiler/typed:Elem", ptr %t11, i32 0, i32 0
  %t14 = load ptr, ptr %t13, !tbaa !29
  %t17 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2ftyped_2ecompiler_2ftyped_3aholdWalk_2estorage(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %t10, ptr %t14)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t17, ptr %l10
  br label %bb2
bb2:
  call void @__olang_scope_close(ptr %s0)
  %t18 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l10
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t18, ptr %rv
  br label %ret
ret:
  %rr = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %rv
  ret %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %rr
}

define dso_local i32 @compiler_2ftyped_2ecompiler_2ftyped_3aholdWalk_2einBlock(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l3 = alloca i64
  %l5 = alloca i32
  %l7 = alloca ptr
  %l10 = alloca i64
  %l12 = alloca i32
  %rv = alloca i32
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/typed:holdWalk", ptr %t1, i32 0, i32 8
  %t5 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aBlockId_3e_2eLen_3ccompiler_2ftyped_3aBlockId_3e(ptr %v0, ptr %t3)
  store i64 %t5, ptr %l3
  br label %bb1
bb1:
  %t6 = load i64, ptr %l3, !tbaa !24
  %t7 = icmp sgt i64 %t6, 0
  br i1 %t7, label %bb2, label %bb3
bb2:
  %t9 = load ptr, ptr %l0, !tbaa !29
  %t11 = getelementptr %"compiler/typed:holdWalk", ptr %t9, i32 0, i32 8
  store ptr %t11, ptr %l7, !tbaa !29
  %t12 = load ptr, ptr %l0, !tbaa !29
  %t14 = getelementptr %"compiler/typed:holdWalk", ptr %t12, i32 0, i32 8
  %t16 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aBlockId_3e_2eLen_3ccompiler_2ftyped_3aBlockId_3e(ptr %v0, ptr %t14)
  store i64 %t16, ptr %l10
  br label %bb4
bb3:
  store i32 -1, ptr %l5, !tbaa !23
  br label %bb6
bb4:
  %t17 = load i64, ptr %l10, !tbaa !24
  %t18 = sub i64 %t17, 1
  %t19 = load ptr, ptr %l7, !tbaa !29
  %t21 = call i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aBlockId_3e_2eAt_3ccompiler_2ftyped_3aBlockId_3e(ptr %v0, ptr %t19, i64 %t18)
  store i32 %t21, ptr %l12
  br label %bb5
bb5:
  %t22 = load i32, ptr %l12, !tbaa !23
  store i32 %t22, ptr %l5, !tbaa !23
  br label %bb6
bb6:
  %t23 = load i32, ptr %l5, !tbaa !23
  store i32 %t23, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local void @compiler_2ftyped_2ecompiler_2ftyped_3aholdWalk_2erefusals(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca ptr
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
  %l15 = alloca i64
  %l17 = alloca i64
  %l22 = alloca i64
  %l25 = alloca i64
  %l32 = alloca ptr
  %l35 = alloca ptr
  %l38 = alloca %"compiler/typed:Local"
  %l44 = alloca ptr
  %l47 = alloca i32
  %l52 = alloca i64
  %l56 = alloca i64
  %l59 = alloca i64
  %l79 = alloca i64
  %l85 = alloca ptr
  %l89 = alloca %"compiler/source:Span"
  %l94 = alloca ptr
  %l98 = alloca i32
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/typed:holdWalk", ptr %t1, i32 0, i32 9
  store ptr %t3, ptr %l2, !tbaa !29
  store i64 0, ptr %l3, !tbaa !24
  br label %bb1
bb1:
  %t5 = load i64, ptr %l3, !tbaa !24
  store i64 %t5, ptr %l15, !tbaa !24
  %t6 = load ptr, ptr %l2, !tbaa !29
  %t8 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %t6)
  store i64 %t8, ptr %l17
  br label %bb2
bb2:
  %t9 = load i64, ptr %l15, !tbaa !24
  %t10 = load i64, ptr %l17, !tbaa !24
  %t11 = icmp slt i64 %t9, %t10
  %t13 = xor i1 %t11, true
  br i1 %t13, label %bb3, label %bb4
bb3:
  br label %bb18
bb4:
  br label %bb5
bb5:
  %t15 = load ptr, ptr %l2, !tbaa !29
  %t16 = load i64, ptr %l3, !tbaa !24
  %t19 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t15, i64 %t16)
  store i64 %t19, ptr %l22
  br label %bb6
bb6:
  %t20 = load i64, ptr %l22, !tbaa !24
  store i64 %t20, ptr %l4, !tbaa !24
  %t21 = load ptr, ptr %l0, !tbaa !29
  %t22 = load i64, ptr %l4, !tbaa !24
  %t25 = call i64 @compiler_2ftyped_2ecompiler_2ftyped_3aholdWalk_2eheldBefore(ptr %v0, ptr %v2, ptr %t21, i64 %t22)
  store i64 %t25, ptr %l25
  br label %bb7
bb7:
  %t26 = load i64, ptr %l25, !tbaa !24
  store i64 %t26, ptr %l5, !tbaa !24
  %t27 = load i64, ptr %l5, !tbaa !24
  %t29 = icmp slt i64 %t27, 0
  br i1 %t29, label %bb8, label %bb9
bb8:
  br label %bb17
bb9:
  br label %bb10
bb10:
  %t31 = load ptr, ptr %l1, !tbaa !29
  %t33 = getelementptr %"compiler/typed:DropHolding", ptr %t31, i32 0, i32 3
  %t34 = load i64, ptr %l4, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v1, ptr %t33, i64 %t34)
  br label %bb11
bb11:
  %t37 = load ptr, ptr %l1, !tbaa !29
  %t39 = getelementptr %"compiler/typed:DropHolding", ptr %t37, i32 0, i32 4
  store ptr %t39, ptr %l32, !tbaa !29
  %t40 = load ptr, ptr %l0, !tbaa !29
  %t42 = getelementptr %"compiler/typed:holdWalk", ptr %t40, i32 0, i32 1
  %t43 = load ptr, ptr %t42, !tbaa !29
  %t45 = getelementptr %"compiler/typed:Body", ptr %t43, i32 0, i32 7
  store ptr %t45, ptr %l35, !tbaa !29
  %t46 = load i64, ptr %l4, !tbaa !24
  %t47 = load ptr, ptr %l35, !tbaa !29
  %t48 = call ptr @__olang_scope_or(ptr %v2, ptr %t47)
  %t49 = ptrtoint ptr %t48 to i64
  %t51 = inttoptr i64 %t49 to ptr
  %t52 = load ptr, ptr %l35, !tbaa !29
  %t54 = call %"compiler/typed:Local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocal_3e_2eAt_3ccompiler_2ftyped_3aLocal_3e(ptr %t51, ptr %t52, i64 %t46)
  store %"compiler/typed:Local" %t54, ptr %l38
  br label %bb12
bb12:
  %t55 = getelementptr %"compiler/typed:Local", ptr %l38, i32 0, i32 1
  %t56 = load %"compiler/source:Span", ptr %t55
  %t57 = load ptr, ptr %l32, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aSpan_3e_2ePush_3ccompiler_2fsource_3aSpan_3e(ptr %v1, ptr %t57, %"compiler/source:Span" %t56)
  br label %bb13
bb13:
  %t59 = load ptr, ptr %l1, !tbaa !29
  %t61 = getelementptr %"compiler/typed:DropHolding", ptr %t59, i32 0, i32 5
  %t62 = load i64, ptr %l5, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v1, ptr %t61, i64 %t62)
  br label %bb14
bb14:
  %t65 = load ptr, ptr %l1, !tbaa !29
  %t67 = getelementptr %"compiler/typed:DropHolding", ptr %t65, i32 0, i32 6
  store ptr %t67, ptr %l44, !tbaa !29
  %t68 = load ptr, ptr %l0, !tbaa !29
  %t69 = load i64, ptr %l4, !tbaa !24
  %t72 = call i32 @compiler_2ftyped_2ecompiler_2ftyped_3aholdWalk_2estTy(ptr %v0, ptr %v2, ptr %v3, ptr %t68, i64 %t69)
  store i32 %t72, ptr %l47
  br label %bb15
bb15:
  %t73 = load ptr, ptr %l44, !tbaa !29
  %t74 = load i32, ptr %l47, !tbaa !23
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2ePush_3ccompiler_2ftypes_3aTypeId_3e(ptr %v1, ptr %t73, i32 %t74)
  br label %bb16
bb16:
  br label %bb17
bb17:
  %t75 = load i64, ptr %l3, !tbaa !24
  %t77 = add i64 %t75, 1
  store i64 %t77, ptr %l3, !tbaa !24
  br label %bb1
bb18:
  store i64 0, ptr %l6, !tbaa !24
  %t79 = load ptr, ptr %l0, !tbaa !29
  %t81 = getelementptr %"compiler/typed:holdWalk", ptr %t79, i32 0, i32 13
  %t83 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aSpan_3e_2eLen_3ccompiler_2fsource_3aSpan_3e(ptr %v0, ptr %t81)
  store i64 %t83, ptr %l52
  br label %bb19
bb19:
  %t84 = load i64, ptr %l52, !tbaa !24
  store i64 %t84, ptr %l7, !tbaa !24
  store i64 1, ptr %l8, !tbaa !24
  %t85 = load i64, ptr %l7, !tbaa !24
  %t86 = load i64, ptr %l6, !tbaa !24
  %t89 = icmp sgt i64 %t85, %t86
  br i1 %t89, label %bb20, label %bb21
bb20:
  %t91 = load i64, ptr %l8, !tbaa !24
  %t93 = icmp sgt i64 %t91, 0
  br i1 %t93, label %bb22, label %bb23
bb21:
  store i64 0, ptr %l56, !tbaa !24
  br label %bb25
bb22:
  %t95 = load i64, ptr %l7, !tbaa !24
  %t96 = load i64, ptr %l6, !tbaa !24
  %t99 = sub i64 %t95, %t96
  %t100 = load i64, ptr %l8, !tbaa !24
  %t103 = add i64 %t99, %t100
  %t105 = sub i64 %t103, 1
  %t106 = load i64, ptr %l8, !tbaa !24
  %t109 = sdiv i64 %t105, %t106
  store i64 %t109, ptr %l59, !tbaa !24
  br label %bb24
bb23:
  store i64 0, ptr %l59, !tbaa !24
  br label %bb24
bb24:
  %t111 = load i64, ptr %l59, !tbaa !24
  store i64 %t111, ptr %l56, !tbaa !24
  br label %bb25
bb25:
  %t112 = load i64, ptr %l56, !tbaa !24
  store i64 %t112, ptr %l9, !tbaa !24
  store i64 0, ptr %l10, !tbaa !24
  br label %bb26
bb26:
  %t113 = load i64, ptr %l10, !tbaa !24
  %t114 = load i64, ptr %l9, !tbaa !24
  %t117 = icmp slt i64 %t113, %t114
  %t119 = xor i1 %t117, true
  br i1 %t119, label %bb27, label %bb28
bb27:
  br label %bb41
bb28:
  br label %bb29
bb29:
  %t121 = load i64, ptr %l6, !tbaa !24
  %t122 = load i64, ptr %l10, !tbaa !24
  %t123 = load i64, ptr %l8, !tbaa !24
  %t126 = mul i64 %t122, %t123
  %t129 = add i64 %t121, %t126
  store i64 %t129, ptr %l11, !tbaa !24
  %t131 = load ptr, ptr %l0, !tbaa !29
  %t132 = load i64, ptr %l11, !tbaa !24
  %t135 = call i64 @compiler_2ftyped_2ecompiler_2ftyped_3aholdWalk_2etempHolds(ptr %v0, ptr %t131, i64 %t132)
  store i64 %t135, ptr %l79
  br label %bb30
bb30:
  %t136 = load i64, ptr %l79, !tbaa !24
  store i64 %t136, ptr %l12, !tbaa !24
  %t137 = load i64, ptr %l12, !tbaa !24
  %t139 = icmp slt i64 %t137, 0
  br i1 %t139, label %bb31, label %bb32
bb31:
  br label %bb40
bb32:
  br label %bb33
bb33:
  %t141 = load ptr, ptr %l1, !tbaa !29
  %t143 = getelementptr %"compiler/typed:DropHolding", ptr %t141, i32 0, i32 3
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v1, ptr %t143, i64 -1)
  br label %bb34
bb34:
  %t145 = load ptr, ptr %l1, !tbaa !29
  %t147 = getelementptr %"compiler/typed:DropHolding", ptr %t145, i32 0, i32 4
  store ptr %t147, ptr %l85, !tbaa !29
  %t148 = load ptr, ptr %l0, !tbaa !29
  %t150 = getelementptr %"compiler/typed:holdWalk", ptr %t148, i32 0, i32 13
  %t151 = load i64, ptr %l11, !tbaa !24
  %t154 = call %"compiler/source:Span" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aSpan_3e_2eAt_3ccompiler_2fsource_3aSpan_3e(ptr %v0, ptr %t150, i64 %t151)
  store %"compiler/source:Span" %t154, ptr %l89
  br label %bb35
bb35:
  %t155 = load ptr, ptr %l85, !tbaa !29
  %t156 = load %"compiler/source:Span", ptr %l89
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aSpan_3e_2ePush_3ccompiler_2fsource_3aSpan_3e(ptr %v1, ptr %t155, %"compiler/source:Span" %t156)
  br label %bb36
bb36:
  %t157 = load ptr, ptr %l1, !tbaa !29
  %t159 = getelementptr %"compiler/typed:DropHolding", ptr %t157, i32 0, i32 5
  %t160 = load i64, ptr %l12, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v1, ptr %t159, i64 %t160)
  br label %bb37
bb37:
  %t163 = load ptr, ptr %l1, !tbaa !29
  %t165 = getelementptr %"compiler/typed:DropHolding", ptr %t163, i32 0, i32 6
  store ptr %t165, ptr %l94, !tbaa !29
  %t166 = load ptr, ptr %l0, !tbaa !29
  %t168 = getelementptr %"compiler/typed:holdWalk", ptr %t166, i32 0, i32 16
  %t169 = load i64, ptr %l11, !tbaa !24
  %t172 = call i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2eAt_3ccompiler_2ftypes_3aTypeId_3e(ptr %v0, ptr %t168, i64 %t169)
  store i32 %t172, ptr %l98
  br label %bb38
bb38:
  %t173 = load ptr, ptr %l94, !tbaa !29
  %t174 = load i32, ptr %l98, !tbaa !23
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2ePush_3ccompiler_2ftypes_3aTypeId_3e(ptr %v1, ptr %t173, i32 %t174)
  br label %bb39
bb39:
  br label %bb40
bb40:
  %t175 = load i64, ptr %l10, !tbaa !24
  %t177 = add i64 %t175, 1
  store i64 %t177, ptr %l10, !tbaa !24
  br label %bb26
bb41:
  br label %ret
ret:
  ret void
}

define dso_local i1 @compiler_2ftyped_2ecompiler_2ftyped_3aholdWalk_2eregistered(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca ptr
  %l4 = alloca ptr
  %l8 = alloca i1
  %l9 = alloca ptr
  %l10 = alloca i1
  %l16 = alloca ptr
  %l19 = alloca i32
  %l21 = alloca i1
  %l22 = alloca ptr
  %l23 = alloca i1
  %l31 = alloca i1
  %l32 = alloca ptr
  %l33 = alloca i1
  %l41 = alloca i1
  %rv = alloca i1
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
  store i1 false, ptr %rv
  br label %ret
bb2:
  br label %bb3
bb3:
  %t6 = load ptr, ptr %l1, !tbaa !29
  store ptr %t6, ptr %l9, !tbaa !29
  store i1 false, ptr %l10, !tbaa !21
  %t7 = load ptr, ptr %l9, !tbaa !29
  %t8 = icmp ne ptr %t7, null
  br i1 %t8, label %bb4, label %bb5
bb4:
  %t10 = load ptr, ptr %l9, !tbaa !29
  %t11 = load i64, ptr %t10, !range !{i64 0, i64 18}
  %t13 = icmp eq i64 %t11, 5
  store i1 %t13, ptr %l10, !tbaa !21
  br label %bb5
bb5:
  %t14 = load i1, ptr %l10, !tbaa !21
  br i1 %t14, label %bb6, label %bb7
bb6:
  %t15 = load ptr, ptr %l1, !tbaa !29
  %t17 = getelementptr { i64, [5 x i64] }, ptr %t15, i32 0, i32 1
  %t18 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t17, i32 0, i32 2
  %t19 = load ptr, ptr %t18
  store ptr %t19, ptr %l2, !tbaa !29
  br label %bb8
bb7:
  br label %bb11
bb8:
  %t21 = load ptr, ptr %l0, !tbaa !29
  %t23 = getelementptr %"compiler/typed:holdWalk", ptr %t21, i32 0, i32 0
  %t24 = load ptr, ptr %t23, !tbaa !29
  store ptr %t24, ptr %l16, !tbaa !29
  %t25 = load ptr, ptr %l2, !tbaa !29
  %t27 = getelementptr %"compiler/typed:Promote", ptr %t25, i32 0, i32 0
  %t28 = load ptr, ptr %t27, !tbaa !29
  %t30 = call i32 @compiler_2ftyped_2ecompiler_2ftyped_3aExpr_2eType(ptr %v1, ptr %t28)
  store i32 %t30, ptr %l19
  br label %bb9
bb9:
  %t31 = load ptr, ptr %l16, !tbaa !29
  %t32 = call ptr @__olang_scope_or(ptr %v2, ptr %t31)
  %t33 = ptrtoint ptr %t32 to i64
  %t35 = inttoptr i64 %t33 to ptr
  %t36 = load ptr, ptr %l16, !tbaa !29
  %t37 = load i32, ptr %l19, !tbaa !23
  %t38 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eNeedsDrop(ptr %t35, ptr %t36, i32 %t37)
  store i1 %t38, ptr %l21
  br label %bb10
bb10:
  %t39 = load i1, ptr %l21, !tbaa !21
  store i1 %t39, ptr %l8, !tbaa !21
  br label %bb30
bb11:
  %t40 = load ptr, ptr %l1, !tbaa !29
  store ptr %t40, ptr %l22, !tbaa !29
  store i1 false, ptr %l23, !tbaa !21
  %t41 = load ptr, ptr %l22, !tbaa !29
  %t42 = icmp ne ptr %t41, null
  br i1 %t42, label %bb12, label %bb13
bb12:
  %t44 = load ptr, ptr %l22, !tbaa !29
  %t45 = load i64, ptr %t44, !range !{i64 0, i64 18}
  %t47 = icmp eq i64 %t45, 14
  store i1 %t47, ptr %l23, !tbaa !21
  br label %bb13
bb13:
  %t48 = load i1, ptr %l23, !tbaa !21
  br i1 %t48, label %bb14, label %bb15
bb14:
  %t49 = load ptr, ptr %l1, !tbaa !29
  %t51 = getelementptr { i64, [5 x i64] }, ptr %t49, i32 0, i32 1
  %t52 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t51, i32 0, i32 2
  %t53 = load ptr, ptr %t52
  store ptr %t53, ptr %l3, !tbaa !29
  br label %bb16
bb15:
  br label %bb18
bb16:
  %t55 = load ptr, ptr %l0, !tbaa !29
  %t56 = load ptr, ptr %l3, !tbaa !29
  %t58 = getelementptr %"compiler/typed:Try", ptr %t56, i32 0, i32 0
  %t59 = load ptr, ptr %t58, !tbaa !29
  %t62 = call i1 @compiler_2ftyped_2ecompiler_2ftyped_3aholdWalk_2eregistered(ptr %v0, ptr %v1, ptr %v2, ptr %t55, ptr %t59)
  store i1 %t62, ptr %l31
  br label %bb17
bb17:
  %t63 = load i1, ptr %l31, !tbaa !21
  store i1 %t63, ptr %l8, !tbaa !21
  br label %bb30
bb18:
  %t64 = load ptr, ptr %l1, !tbaa !29
  store ptr %t64, ptr %l32, !tbaa !29
  store i1 false, ptr %l33, !tbaa !21
  %t65 = load ptr, ptr %l32, !tbaa !29
  %t66 = icmp ne ptr %t65, null
  br i1 %t66, label %bb19, label %bb20
bb19:
  %t68 = load ptr, ptr %l32, !tbaa !29
  %t69 = load i64, ptr %t68, !range !{i64 0, i64 18}
  %t71 = icmp eq i64 %t69, 12
  store i1 %t71, ptr %l33, !tbaa !21
  br label %bb20
bb20:
  %t72 = load i1, ptr %l33, !tbaa !21
  br i1 %t72, label %bb21, label %bb22
bb21:
  %t73 = load ptr, ptr %l1, !tbaa !29
  %t75 = getelementptr { i64, [5 x i64] }, ptr %t73, i32 0, i32 1
  %t76 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t75, i32 0, i32 2
  %t77 = load ptr, ptr %t76
  store ptr %t77, ptr %l4, !tbaa !29
  br label %bb23
bb22:
  br label %bb25
bb23:
  %t79 = load ptr, ptr %l0, !tbaa !29
  %t80 = load ptr, ptr %l4, !tbaa !29
  %t82 = getelementptr %"compiler/typed:Seq", ptr %t80, i32 0, i32 1
  %t83 = load ptr, ptr %t82, !tbaa !29
  %t86 = call i1 @compiler_2ftyped_2ecompiler_2ftyped_3aholdWalk_2eregistered(ptr %v0, ptr %v1, ptr %v2, ptr %t79, ptr %t83)
  store i1 %t86, ptr %l41
  br label %bb24
bb24:
  %t87 = load i1, ptr %l41, !tbaa !21
  store i1 %t87, ptr %l8, !tbaa !21
  br label %bb30
bb25:
  br i1 true, label %bb26, label %bb27
bb26:
  br label %bb28
bb27:
  br label %bb29
bb28:
  store i1 false, ptr %l8, !tbaa !21
  br label %bb30
bb29:
  call void @__olang_check_failed(ptr @olang_loc_77c9af98e9dace58_20acd54f7de13794)
  unreachable
bb30:
  %t88 = load i1, ptr %l8, !tbaa !21
  store i1 %t88, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i1 @compiler_2ftyped_2ecompiler_2ftyped_3aholdWalk_2eregisteredBefore(ptr %v0, ptr %v1, ptr %a0, i64 %a1, i64 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l3 = alloca i64
  %l4 = alloca i32
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
  %l19 = alloca i64
  %l23 = alloca i64
  %l26 = alloca i64
  %l47 = alloca i64
  %l56 = alloca i64
  %l60 = alloca i32
  %l68 = alloca i64
  %l72 = alloca i64
  %l75 = alloca i64
  %l96 = alloca i64
  %l99 = alloca i1
  %l103 = alloca i64
  %l106 = alloca i1
  %l107 = alloca ptr
  %l108 = alloca i32
  %l112 = alloca i32
  %l113 = alloca i1
  %rv = alloca i1
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store i64 -1, ptr %l3, !tbaa !24
  store i32 -1, ptr %l4, !tbaa !23
  store i64 0, ptr %l5, !tbaa !24
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/typed:holdWalk", ptr %t1, i32 0, i32 11
  %t5 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %t3)
  store i64 %t5, ptr %l19
  br label %bb1
bb1:
  %t6 = load i64, ptr %l19, !tbaa !24
  store i64 %t6, ptr %l6, !tbaa !24
  store i64 1, ptr %l7, !tbaa !24
  %t7 = load i64, ptr %l6, !tbaa !24
  %t8 = load i64, ptr %l5, !tbaa !24
  %t11 = icmp sgt i64 %t7, %t8
  br i1 %t11, label %bb2, label %bb3
bb2:
  %t13 = load i64, ptr %l7, !tbaa !24
  %t15 = icmp sgt i64 %t13, 0
  br i1 %t15, label %bb4, label %bb5
bb3:
  store i64 0, ptr %l23, !tbaa !24
  br label %bb7
bb4:
  %t17 = load i64, ptr %l6, !tbaa !24
  %t18 = load i64, ptr %l5, !tbaa !24
  %t21 = sub i64 %t17, %t18
  %t22 = load i64, ptr %l7, !tbaa !24
  %t25 = add i64 %t21, %t22
  %t27 = sub i64 %t25, 1
  %t28 = load i64, ptr %l7, !tbaa !24
  %t31 = sdiv i64 %t27, %t28
  store i64 %t31, ptr %l26, !tbaa !24
  br label %bb6
bb5:
  store i64 0, ptr %l26, !tbaa !24
  br label %bb6
bb6:
  %t33 = load i64, ptr %l26, !tbaa !24
  store i64 %t33, ptr %l23, !tbaa !24
  br label %bb7
bb7:
  %t34 = load i64, ptr %l23, !tbaa !24
  store i64 %t34, ptr %l8, !tbaa !24
  store i64 0, ptr %l9, !tbaa !24
  br label %bb8
bb8:
  %t35 = load i64, ptr %l9, !tbaa !24
  %t36 = load i64, ptr %l8, !tbaa !24
  %t39 = icmp slt i64 %t35, %t36
  %t41 = xor i1 %t39, true
  br i1 %t41, label %bb9, label %bb10
bb9:
  br label %bb22
bb10:
  br label %bb11
bb11:
  %t43 = load i64, ptr %l5, !tbaa !24
  %t44 = load i64, ptr %l9, !tbaa !24
  %t45 = load i64, ptr %l7, !tbaa !24
  %t48 = mul i64 %t44, %t45
  %t51 = add i64 %t43, %t48
  store i64 %t51, ptr %l10, !tbaa !24
  %t53 = load ptr, ptr %l0, !tbaa !29
  %t55 = getelementptr %"compiler/typed:holdWalk", ptr %t53, i32 0, i32 11
  %t56 = load i64, ptr %l10, !tbaa !24
  %t59 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t55, i64 %t56)
  store i64 %t59, ptr %l47
  br label %bb12
bb12:
  %t61 = load i64, ptr %l47, !tbaa !24
  %t63 = icmp ne i64 %t61, %a1
  br i1 %t63, label %bb13, label %bb14
bb13:
  br label %bb21
bb14:
  br label %bb15
bb15:
  %t65 = load i64, ptr %l3, !tbaa !24
  %t67 = icmp sge i64 %t65, 0
  br i1 %t67, label %bb16, label %bb17
bb16:
  store i1 false, ptr %rv
  br label %ret
bb17:
  br label %bb18
bb18:
  %t70 = load ptr, ptr %l0, !tbaa !29
  %t72 = getelementptr %"compiler/typed:holdWalk", ptr %t70, i32 0, i32 10
  %t73 = load i64, ptr %l10, !tbaa !24
  %t76 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t72, i64 %t73)
  store i64 %t76, ptr %l56
  br label %bb19
bb19:
  %t77 = load i64, ptr %l56, !tbaa !24
  store i64 %t77, ptr %l3, !tbaa !24
  %t78 = load ptr, ptr %l0, !tbaa !29
  %t80 = getelementptr %"compiler/typed:holdWalk", ptr %t78, i32 0, i32 12
  %t81 = load i64, ptr %l10, !tbaa !24
  %t84 = call i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aBlockId_3e_2eAt_3ccompiler_2ftyped_3aBlockId_3e(ptr %v0, ptr %t80, i64 %t81)
  store i32 %t84, ptr %l60
  br label %bb20
bb20:
  %t85 = load i32, ptr %l60, !tbaa !23
  store i32 %t85, ptr %l4, !tbaa !23
  br label %bb21
bb21:
  %t86 = load i64, ptr %l9, !tbaa !24
  %t88 = add i64 %t86, 1
  store i64 %t88, ptr %l9, !tbaa !24
  br label %bb8
bb22:
  %t90 = load i64, ptr %l3, !tbaa !24
  %t92 = icmp slt i64 %t90, 0
  br i1 %t92, label %bb23, label %bb24
bb23:
  store i1 false, ptr %rv
  br label %ret
bb24:
  br label %bb25
bb25:
  store i64 0, ptr %l11, !tbaa !24
  %t95 = load ptr, ptr %l0, !tbaa !29
  %t97 = getelementptr %"compiler/typed:holdWalk", ptr %t95, i32 0, i32 11
  %t99 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %t97)
  store i64 %t99, ptr %l68
  br label %bb26
bb26:
  %t100 = load i64, ptr %l68, !tbaa !24
  store i64 %t100, ptr %l12, !tbaa !24
  store i64 1, ptr %l13, !tbaa !24
  %t101 = load i64, ptr %l12, !tbaa !24
  %t102 = load i64, ptr %l11, !tbaa !24
  %t105 = icmp sgt i64 %t101, %t102
  br i1 %t105, label %bb27, label %bb28
bb27:
  %t107 = load i64, ptr %l13, !tbaa !24
  %t109 = icmp sgt i64 %t107, 0
  br i1 %t109, label %bb29, label %bb30
bb28:
  store i64 0, ptr %l72, !tbaa !24
  br label %bb32
bb29:
  %t111 = load i64, ptr %l12, !tbaa !24
  %t112 = load i64, ptr %l11, !tbaa !24
  %t115 = sub i64 %t111, %t112
  %t116 = load i64, ptr %l13, !tbaa !24
  %t119 = add i64 %t115, %t116
  %t121 = sub i64 %t119, 1
  %t122 = load i64, ptr %l13, !tbaa !24
  %t125 = sdiv i64 %t121, %t122
  store i64 %t125, ptr %l75, !tbaa !24
  br label %bb31
bb30:
  store i64 0, ptr %l75, !tbaa !24
  br label %bb31
bb31:
  %t127 = load i64, ptr %l75, !tbaa !24
  store i64 %t127, ptr %l72, !tbaa !24
  br label %bb32
bb32:
  %t128 = load i64, ptr %l72, !tbaa !24
  store i64 %t128, ptr %l14, !tbaa !24
  store i64 0, ptr %l15, !tbaa !24
  br label %bb33
bb33:
  %t129 = load i64, ptr %l15, !tbaa !24
  %t130 = load i64, ptr %l14, !tbaa !24
  %t133 = icmp slt i64 %t129, %t130
  %t135 = xor i1 %t133, true
  br i1 %t135, label %bb34, label %bb35
bb34:
  br label %bb51
bb35:
  br label %bb36
bb36:
  %t137 = load i64, ptr %l11, !tbaa !24
  %t138 = load i64, ptr %l15, !tbaa !24
  %t139 = load i64, ptr %l13, !tbaa !24
  %t142 = mul i64 %t138, %t139
  %t145 = add i64 %t137, %t142
  store i64 %t145, ptr %l16, !tbaa !24
  %t147 = load ptr, ptr %l0, !tbaa !29
  %t149 = getelementptr %"compiler/typed:holdWalk", ptr %t147, i32 0, i32 11
  %t150 = load i64, ptr %l16, !tbaa !24
  %t153 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t149, i64 %t150)
  store i64 %t153, ptr %l96
  br label %bb37
bb37:
  %t155 = load i64, ptr %l96, !tbaa !24
  %t157 = icmp eq i64 %t155, %a2
  br i1 %t157, label %bb38, label %bb39
bb38:
  %t159 = load ptr, ptr %l0, !tbaa !29
  %t161 = getelementptr %"compiler/typed:holdWalk", ptr %t159, i32 0, i32 10
  %t162 = load i64, ptr %l16, !tbaa !24
  %t165 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t161, i64 %t162)
  store i64 %t165, ptr %l103
  br label %bb40
bb39:
  store i1 false, ptr %l99, !tbaa !21
  br label %bb46
bb40:
  %t166 = load i64, ptr %l3, !tbaa !24
  %t167 = load i64, ptr %l103, !tbaa !24
  %t169 = icmp sle i64 %t167, %t166
  br i1 %t169, label %bb41, label %bb42
bb41:
  store i1 true, ptr %l106, !tbaa !21
  br label %bb45
bb42:
  %t171 = load ptr, ptr %l0, !tbaa !29
  store ptr %t171, ptr %l107, !tbaa !29
  %t172 = load i32, ptr %l4, !tbaa !23
  store i32 %t172, ptr %l108, !tbaa !23
  %t173 = load ptr, ptr %l0, !tbaa !29
  %t175 = getelementptr %"compiler/typed:holdWalk", ptr %t173, i32 0, i32 12
  %t176 = load i64, ptr %l16, !tbaa !24
  %t179 = call i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aBlockId_3e_2eAt_3ccompiler_2ftyped_3aBlockId_3e(ptr %v0, ptr %t175, i64 %t176)
  store i32 %t179, ptr %l112
  br label %bb43
bb43:
  %t180 = load ptr, ptr %l107, !tbaa !29
  %t181 = load i32, ptr %l108, !tbaa !23
  %t182 = load i32, ptr %l112, !tbaa !23
  %t183 = call i1 @compiler_2ftyped_2ecompiler_2ftyped_3aholdWalk_2eencloses(ptr %v0, ptr %v1, ptr %t180, i32 %t181, i32 %t182)
  store i1 %t183, ptr %l113
  br label %bb44
bb44:
  %t184 = load i1, ptr %l113, !tbaa !21
  %t185 = xor i1 %t184, true
  store i1 %t185, ptr %l106, !tbaa !21
  br label %bb45
bb45:
  %t187 = load i1, ptr %l106, !tbaa !21
  store i1 %t187, ptr %l99, !tbaa !21
  br label %bb46
bb46:
  %t188 = load i1, ptr %l99, !tbaa !21
  br i1 %t188, label %bb47, label %bb48
bb47:
  store i1 false, ptr %rv
  br label %ret
bb48:
  br label %bb49
bb49:
  br label %bb50
bb50:
  %t190 = load i64, ptr %l15, !tbaa !24
  %t192 = add i64 %t190, 1
  store i64 %t192, ptr %l15, !tbaa !24
  br label %bb33
bb51:
  store i1 true, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i32 @compiler_2ftyped_2ecompiler_2ftyped_3aholdWalk_2estTy(ptr %v0, ptr %v1, ptr %v2, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca i32
  %l5 = alloca ptr
  %l8 = alloca %"compiler/typed:Local"
  %l13 = alloca i1
  %l15 = alloca i1
  %l17 = alloca ptr
  %l20 = alloca i32
  %l26 = alloca ptr
  %l29 = alloca i32
  %rv = alloca i32
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/typed:holdWalk", ptr %t1, i32 0, i32 1
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t6 = getelementptr %"compiler/typed:Body", ptr %t4, i32 0, i32 7
  store ptr %t6, ptr %l5, !tbaa !29
  %t7 = load i64, ptr %l1, !tbaa !24
  %t8 = load ptr, ptr %l5, !tbaa !29
  %t9 = call ptr @__olang_scope_or(ptr %v1, ptr %t8)
  %t10 = ptrtoint ptr %t9 to i64
  %t12 = inttoptr i64 %t10 to ptr
  %t13 = load ptr, ptr %l5, !tbaa !29
  %t15 = call %"compiler/typed:Local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocal_3e_2eAt_3ccompiler_2ftyped_3aLocal_3e(ptr %t12, ptr %t13, i64 %t7)
  store %"compiler/typed:Local" %t15, ptr %l8
  br label %bb1
bb1:
  %t16 = getelementptr %"compiler/typed:Local", ptr %l8, i32 0, i32 2
  %t17 = load i32, ptr %t16, !tbaa !23
  store i32 %t17, ptr %l2, !tbaa !23
  %t19 = load ptr, ptr %l0, !tbaa !29
  %t21 = getelementptr %"compiler/typed:holdWalk", ptr %t19, i32 0, i32 9
  %t22 = load i64, ptr %l1, !tbaa !24
  %t25 = call i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eHas_3cI64_3e(ptr %v0, ptr %t21, i64 %t22)
  store i1 %t25, ptr %l13
  br label %bb2
bb2:
  %t26 = load i1, ptr %l13, !tbaa !21
  %t27 = xor i1 %t26, true
  br i1 %t27, label %bb3, label %bb4
bb3:
  store i1 true, ptr %l15, !tbaa !21
  br label %bb6
bb4:
  %t29 = load ptr, ptr %l0, !tbaa !29
  %t31 = getelementptr %"compiler/typed:holdWalk", ptr %t29, i32 0, i32 0
  %t32 = load ptr, ptr %t31, !tbaa !29
  store ptr %t32, ptr %l17, !tbaa !29
  %t33 = load i32, ptr %l2, !tbaa !23
  %t34 = load ptr, ptr %l17, !tbaa !29
  %t35 = call ptr @__olang_scope_or(ptr %v2, ptr %t34)
  %t36 = ptrtoint ptr %t35 to i64
  %t38 = inttoptr i64 %t36 to ptr
  %t39 = load ptr, ptr %l17, !tbaa !29
  %t41 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %t38, ptr %t39, i32 %t33)
  store i32 %t41, ptr %l20
  br label %bb5
bb5:
  %t42 = load i32, ptr %l20, !range !{i32 0, i32 33}
  %t44 = trunc i64 20 to i32
  %t45 = icmp eq i32 %t42, %t44
  %t47 = xor i1 %t45, true
  store i1 %t47, ptr %l15, !tbaa !21
  br label %bb6
bb6:
  %t49 = load i1, ptr %l15, !tbaa !21
  br i1 %t49, label %bb7, label %bb8
bb7:
  %t50 = load i32, ptr %l2, !tbaa !23
  store i32 %t50, ptr %rv
  br label %ret
bb8:
  br label %bb9
bb9:
  %t52 = load ptr, ptr %l0, !tbaa !29
  %t54 = getelementptr %"compiler/typed:holdWalk", ptr %t52, i32 0, i32 0
  %t55 = load ptr, ptr %t54, !tbaa !29
  store ptr %t55, ptr %l26, !tbaa !29
  %t56 = load i32, ptr %l2, !tbaa !23
  %t57 = load ptr, ptr %l26, !tbaa !29
  %t58 = call ptr @__olang_scope_or(ptr %v2, ptr %t57)
  %t59 = ptrtoint ptr %t58 to i64
  %t61 = inttoptr i64 %t59 to ptr
  %t62 = load ptr, ptr %l26, !tbaa !29
  %t64 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eReferent(ptr %t61, ptr %t62, i32 %t56)
  store i32 %t64, ptr %l29
  br label %bb10
bb10:
  %t65 = load i32, ptr %l29, !tbaa !23
  store i32 %t65, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2ftyped_2ecompiler_2ftyped_3aholdWalk_2etarget(ptr %v0, ptr %v1, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %lp1 = alloca ptr
  %l2 = alloca { i64, ptr }
  %l3 = alloca i64
  %l4 = alloca i64
  %l6 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l9 = alloca i64
  %l12 = alloca ptr
  %l15 = alloca i64
  %l17 = alloca { i64, ptr }
  %l18 = alloca i64
  %l19 = alloca { i64, ptr }
  %l27 = alloca { i64, ptr }
  %s2 = alloca %olang.scope
  %rv = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %v1, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1, ptr %l6
  br label %bb1
bb1:
  %t2 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 32, i64 8)
  store ptr %t2, ptr %lp1
  %t3 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l6
  %t4 = load ptr, ptr %lp1
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t3, ptr %t4
  %t5 = load ptr, ptr %l0, !tbaa !29
  %t7 = getelementptr %"compiler/typed:holdWalk", ptr %t5, i32 0, i32 4
  %t9 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cArray_3cI64_3e_3e_2eLen_3cArray_3cI64_3e_3e(ptr %v0, ptr %t7)
  store i64 %t9, ptr %l9
  br label %bb2
bb2:
  %t10 = load i64, ptr %l9, !tbaa !24
  %t11 = icmp sgt i64 %t10, 0
  br i1 %t11, label %bb3, label %bb4
bb3:
  store %olang.scope zeroinitializer, ptr %s2
  %t13 = load ptr, ptr %l0, !tbaa !29
  %t15 = getelementptr %"compiler/typed:holdWalk", ptr %t13, i32 0, i32 4
  store ptr %t15, ptr %l12, !tbaa !29
  %t16 = load ptr, ptr %l0, !tbaa !29
  %t18 = getelementptr %"compiler/typed:holdWalk", ptr %t16, i32 0, i32 4
  %t20 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cArray_3cI64_3e_3e_2eLen_3cArray_3cI64_3e_3e(ptr %v0, ptr %t18)
  store i64 %t20, ptr %l15
  br label %bb5
bb4:
  br label %bb14
bb5:
  %t21 = load i64, ptr %l15, !tbaa !24
  %t22 = sub i64 %t21, 1
  %t23 = load ptr, ptr %l12, !tbaa !29
  %t25 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cArray_3cI64_3e_3e_2eAt_3cArray_3cI64_3e_3e(ptr %v0, ptr %s2, ptr %t23, i64 %t22)
  store { i64, ptr } %t25, ptr %l17
  br label %bb6
bb6:
  %t26 = load { i64, ptr }, ptr %l17, !tbaa !27
  %t27 = extractvalue { i64, ptr } %t26, 0
  store i64 %t27, ptr %l18, !tbaa !24
  %t28 = load i64, ptr %l18, !tbaa !24
  %t29 = mul i64 %t28, 8
  %t30 = call ptr @__olang_scope_alloc(ptr %s2, i64 %t29)
  %t31 = insertvalue { i64, ptr } undef, i64 %t28, 0
  %t32 = insertvalue { i64, ptr } %t31, ptr %t30, 1
  store { i64, ptr } %t32, ptr %l19, !tbaa !27
  %t33 = getelementptr { i64, ptr }, ptr %l19, i32 0, i32 1
  %t34 = load ptr, ptr %t33, !tbaa !27
  %t35 = getelementptr { i64, ptr }, ptr %l17, i32 0, i32 1
  %t36 = load ptr, ptr %t35, !tbaa !27
  %t37 = load i64, ptr %l18, !tbaa !24
  %t38 = mul i64 %t37, 8
  call void @llvm.memmove.p0.p0.i64(ptr %t34, ptr %t36, i64 %t38, i1 false)
  %t39 = load { i64, ptr }, ptr %l19, !tbaa !27
  %t40 = extractvalue { i64, ptr } %t39, 0
  %t41 = extractvalue { i64, ptr } %t39, 1
  %t42 = mul i64 %t40, 8
  %t43 = call ptr @__olang_scope_alloc(ptr %s2, i64 %t42)
  call void @llvm.memcpy.p0.p0.i64(ptr %t43, ptr %t41, i64 %t42, i1 false)
  %t44 = insertvalue { i64, ptr } undef, i64 %t40, 0
  %t45 = insertvalue { i64, ptr } %t44, ptr %t43, 1
  store { i64, ptr } %t45, ptr %l2, !tbaa !27
  store i64 0, ptr %l3, !tbaa !24
  %t47 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t49 = extractvalue { i64, ptr } %t47, 0
  store i64 %t49, ptr %l4, !tbaa !24
  br label %bb7
bb7:
  %t51 = load i64, ptr %l3, !tbaa !24
  %t52 = load i64, ptr %l4, !tbaa !24
  %t55 = icmp slt i64 %t51, %t52
  %t57 = xor i1 %t55, true
  br i1 %t57, label %bb8, label %bb9
bb8:
  br label %bb13
bb9:
  br label %bb10
bb10:
  %t59 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t59, ptr %l27, !tbaa !27
  %t60 = load i64, ptr %l3, !tbaa !24
  %t62 = getelementptr { i64, ptr }, ptr %l27, i32 0, i32 1
  %t63 = load ptr, ptr %t62, !tbaa !27
  %t64 = getelementptr i64, ptr %t63, i64 %t60
  %t65 = load i64, ptr %t64, !tbaa !34
  %t67 = load ptr, ptr %lp1
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v1, ptr %t67, i64 %t65)
  br label %bb11
bb11:
  br label %bb12
bb12:
  %t71 = load i64, ptr %l3, !tbaa !24
  %t73 = add i64 %t71, 1
  store i64 %t73, ptr %l3, !tbaa !24
  br label %bb7
bb13:
  call void @__olang_scope_close(ptr %s2)
  br label %bb14
bb14:
  %t75 = load ptr, ptr %lp1
  %t76 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t75
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t76, ptr %rv
  br label %ret
ret:
  %rr = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %rv
  ret %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %rr
}

define dso_local i64 @compiler_2ftyped_2ecompiler_2ftyped_3aholdWalk_2etempHolds(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca ptr
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %l14 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l16 = alloca i64
  %l18 = alloca i64
  %l23 = alloca i64
  %l26 = alloca i64
  %l30 = alloca i64
  %l33 = alloca i64
  %l54 = alloca i64
  %l57 = alloca i1
  %l61 = alloca i32
  %l65 = alloca i32
  %s1 = alloca %olang.scope
  %rv = alloca i64
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s1
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/typed:holdWalk", ptr %t1, i32 0, i32 14
  %t4 = load i64, ptr %l1, !tbaa !24
  %t7 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2fvec_3aVec_3cI64_3e_3e__H7b6d4eff6fc9c3821aae8b284e12e095(ptr %v0, ptr %s1, ptr %t3, i64 %t4)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t7, ptr %l14
  br label %bb1
bb1:
  %t8 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l14
  %t9 = call ptr @__olang_scope_alloc_a(ptr %s1, i64 32, i64 8)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t8, ptr %t9
  store ptr %t9, ptr %l2, !tbaa !29
  store i64 0, ptr %l3, !tbaa !24
  br label %bb2
bb2:
  %t11 = load i64, ptr %l3, !tbaa !24
  store i64 %t11, ptr %l16, !tbaa !24
  %t12 = load ptr, ptr %l2, !tbaa !29
  %t14 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %s1, ptr %t12)
  store i64 %t14, ptr %l18
  br label %bb3
bb3:
  %t15 = load i64, ptr %l16, !tbaa !24
  %t16 = load i64, ptr %l18, !tbaa !24
  %t17 = icmp slt i64 %t15, %t16
  %t19 = xor i1 %t17, true
  br i1 %t19, label %bb4, label %bb5
bb4:
  br label %bb31
bb5:
  br label %bb6
bb6:
  %t21 = load ptr, ptr %l2, !tbaa !29
  %t22 = load i64, ptr %l3, !tbaa !24
  %t25 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %s1, ptr %t21, i64 %t22)
  store i64 %t25, ptr %l23
  br label %bb7
bb7:
  %t26 = load i64, ptr %l23, !tbaa !24
  store i64 %t26, ptr %l4, !tbaa !24
  store i64 0, ptr %l5, !tbaa !24
  %t27 = load ptr, ptr %l0, !tbaa !29
  %t29 = getelementptr %"compiler/typed:holdWalk", ptr %t27, i32 0, i32 6
  %t31 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %t29)
  store i64 %t31, ptr %l26
  br label %bb8
bb8:
  %t32 = load i64, ptr %l26, !tbaa !24
  store i64 %t32, ptr %l6, !tbaa !24
  store i64 1, ptr %l7, !tbaa !24
  %t33 = load i64, ptr %l6, !tbaa !24
  %t34 = load i64, ptr %l5, !tbaa !24
  %t37 = icmp sgt i64 %t33, %t34
  br i1 %t37, label %bb9, label %bb10
bb9:
  %t39 = load i64, ptr %l7, !tbaa !24
  %t41 = icmp sgt i64 %t39, 0
  br i1 %t41, label %bb11, label %bb12
bb10:
  store i64 0, ptr %l30, !tbaa !24
  br label %bb14
bb11:
  %t43 = load i64, ptr %l6, !tbaa !24
  %t44 = load i64, ptr %l5, !tbaa !24
  %t47 = sub i64 %t43, %t44
  %t48 = load i64, ptr %l7, !tbaa !24
  %t51 = add i64 %t47, %t48
  %t53 = sub i64 %t51, 1
  %t54 = load i64, ptr %l7, !tbaa !24
  %t57 = sdiv i64 %t53, %t54
  store i64 %t57, ptr %l33, !tbaa !24
  br label %bb13
bb12:
  store i64 0, ptr %l33, !tbaa !24
  br label %bb13
bb13:
  %t59 = load i64, ptr %l33, !tbaa !24
  store i64 %t59, ptr %l30, !tbaa !24
  br label %bb14
bb14:
  %t60 = load i64, ptr %l30, !tbaa !24
  store i64 %t60, ptr %l8, !tbaa !24
  store i64 0, ptr %l9, !tbaa !24
  br label %bb15
bb15:
  %t61 = load i64, ptr %l9, !tbaa !24
  %t62 = load i64, ptr %l8, !tbaa !24
  %t65 = icmp slt i64 %t61, %t62
  %t67 = xor i1 %t65, true
  br i1 %t67, label %bb16, label %bb17
bb16:
  br label %bb29
bb17:
  br label %bb18
bb18:
  %t69 = load i64, ptr %l5, !tbaa !24
  %t70 = load i64, ptr %l9, !tbaa !24
  %t71 = load i64, ptr %l7, !tbaa !24
  %t74 = mul i64 %t70, %t71
  %t77 = add i64 %t69, %t74
  store i64 %t77, ptr %l10, !tbaa !24
  %t79 = load ptr, ptr %l0, !tbaa !29
  %t81 = getelementptr %"compiler/typed:holdWalk", ptr %t79, i32 0, i32 6
  %t82 = load i64, ptr %l10, !tbaa !24
  %t85 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t81, i64 %t82)
  store i64 %t85, ptr %l54
  br label %bb19
bb19:
  %t86 = load i64, ptr %l4, !tbaa !24
  %t87 = load i64, ptr %l54, !tbaa !24
  %t89 = icmp eq i64 %t87, %t86
  br i1 %t89, label %bb20, label %bb21
bb20:
  %t91 = load ptr, ptr %l0, !tbaa !29
  %t93 = getelementptr %"compiler/typed:holdWalk", ptr %t91, i32 0, i32 7
  %t94 = load i64, ptr %l10, !tbaa !24
  %t97 = call i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aBlockId_3e_2eAt_3ccompiler_2ftyped_3aBlockId_3e(ptr %v0, ptr %t93, i64 %t94)
  store i32 %t97, ptr %l61
  br label %bb22
bb21:
  store i1 false, ptr %l57, !tbaa !21
  br label %bb24
bb22:
  %t98 = load ptr, ptr %l0, !tbaa !29
  %t100 = getelementptr %"compiler/typed:holdWalk", ptr %t98, i32 0, i32 15
  %t101 = load i64, ptr %l1, !tbaa !24
  %t104 = call i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aBlockId_3e_2eAt_3ccompiler_2ftyped_3aBlockId_3e(ptr %v0, ptr %t100, i64 %t101)
  store i32 %t104, ptr %l65
  br label %bb23
bb23:
  %t105 = load i32, ptr %l61, !tbaa !23
  %t106 = load i32, ptr %l65, !tbaa !23
  %t107 = icmp eq i32 %t105, %t106
  store i1 %t107, ptr %l57, !tbaa !21
  br label %bb24
bb24:
  %t109 = load i1, ptr %l57, !tbaa !21
  br i1 %t109, label %bb25, label %bb26
bb25:
  %t110 = load i64, ptr %l4, !tbaa !24
  call void @__olang_scope_close(ptr %s1)
  store i64 %t110, ptr %rv
  br label %ret
bb26:
  br label %bb27
bb27:
  br label %bb28
bb28:
  %t112 = load i64, ptr %l9, !tbaa !24
  %t114 = add i64 %t112, 1
  store i64 %t114, ptr %l9, !tbaa !24
  br label %bb15
bb29:
  br label %bb30
bb30:
  %t116 = load i64, ptr %l3, !tbaa !24
  %t118 = add i64 %t116, 1
  store i64 %t118, ptr %l3, !tbaa !24
  br label %bb2
bb31:
  call void @__olang_scope_close(ptr %s1)
  store i64 -1, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2ftyped_2ecompiler_2ftyped_3aholdWalk_2etempStorage(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %a0, ptr %a1) #0 {
entry:
  %l5 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %rv = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  br label %start
start:
  br label %bb0
bb0:
  %t6 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2ftyped_2ecompiler_2ftyped_3aholdWalk_2erefs(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %a0, ptr %a1)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t6, ptr %l5
  br label %bb1
bb1:
  %t7 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l5
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t7, ptr %rv
  br label %ret
ret:
  %rr = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %rv
  ret %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %rr
}

define dso_local i1 @compiler_2ftyped_2ecompiler_2ftyped_3aleaveWalk_2eblockLeaves(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l1 = alloca ptr
  %l8 = alloca i1
  %rv = alloca i1
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l1, !tbaa !29
  %t3 = icmp eq ptr %t1, null
  br i1 %t3, label %bb1, label %bb2
bb1:
  store i1 false, ptr %rv
  br label %ret
bb2:
  br label %bb3
bb3:
  %t7 = load ptr, ptr %l1, !tbaa !29
  %t9 = getelementptr %"compiler/typed:Block", ptr %t7, i32 0, i32 1
  %t10 = load { i64, ptr }, ptr %t9, !tbaa !27
  %t13 = call i1 @compiler_2ftyped_2ecompiler_2ftyped_3aleaveWalk_2estmtsLeave(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %t10)
  store i1 %t13, ptr %l8
  br label %bb4
bb4:
  %t14 = load i1, ptr %l8, !tbaa !21
  store i1 %t14, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i1 @compiler_2ftyped_2ecompiler_2ftyped_3aleaveWalk_2eopenLeaves(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i1
  %l13 = alloca i1
  %l14 = alloca i32
  %l17 = alloca i32
  %l18 = alloca i32
  %rv = alloca i1
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
  store i1 false, ptr %rv
  br label %ret
bb2:
  br label %bb3
bb3:
  %t6 = load ptr, ptr %l0, !tbaa !29
  %t8 = getelementptr %"compiler/typed:leaveWalk", ptr %t6, i32 0, i32 0
  %t9 = load ptr, ptr %l1, !tbaa !29
  %t11 = getelementptr %"compiler/typed:Block", ptr %t9, i32 0, i32 0
  %t12 = load i32, ptr %t11, !tbaa !23
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aBlockId_3e_2ePush_3ccompiler_2ftyped_3aBlockId_3e(ptr %v0, ptr %t8, i32 %t12)
  br label %bb4
bb4:
  %t15 = load ptr, ptr %l0, !tbaa !29
  %t16 = load ptr, ptr %l1, !tbaa !29
  %t18 = getelementptr %"compiler/typed:Block", ptr %t16, i32 0, i32 1
  %t19 = load { i64, ptr }, ptr %t18, !tbaa !27
  %t22 = call i1 @compiler_2ftyped_2ecompiler_2ftyped_3aleaveWalk_2estmtsLeave(ptr %v0, ptr %v1, ptr %t15, { i64, ptr } %t19)
  store i1 %t22, ptr %l13
  br label %bb5
bb5:
  %t23 = load i1, ptr %l13, !tbaa !21
  store i1 %t23, ptr %l2, !tbaa !21
  %t24 = load ptr, ptr %l0, !tbaa !29
  %t26 = getelementptr %"compiler/typed:leaveWalk", ptr %t24, i32 0, i32 0
  %t28 = call { i32, i32 } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aBlockId_3e_2ePop_3ccompiler_2ftyped_3aBlockId_3e(ptr %v0, ptr %t26)
  %t29 = extractvalue { i32, i32 } %t28, 1
  %t30 = extractvalue { i32, i32 } %t28, 0
  store i32 %t30, ptr %l18
  %t31 = icmp ne i32 %t30, 0
  br i1 %t31, label %bb7, label %ok.32, !prof !99
ok.32:
  store i32 %t29, ptr %l17
  br label %bb6
bb6:
  %t33 = load i32, ptr %l17, !tbaa !23
  store i32 %t33, ptr %l14, !tbaa !23
  br label %bb9
bb7:
  br label %bb8
bb8:
  br label %bb9
bb9:
  %t34 = load i1, ptr %l2, !tbaa !21
  store i1 %t34, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local { i64, ptr } @compiler_2ftyped_2ecompiler_2ftyped_3aprinter_2ecallee(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i32
  %l3 = alloca i64
  %l4 = alloca ptr
  %l5 = alloca i32
  %l6 = alloca i32
  %l7 = alloca i32
  %l8 = alloca i64
  %l9 = alloca { i64, ptr }
  %l10 = alloca ptr
  %l11 = alloca i1
  %l18 = alloca ptr
  %l19 = alloca i1
  %l26 = alloca ptr
  %l27 = alloca i1
  %l35 = alloca { i64, ptr }
  %l37 = alloca ptr
  %l38 = alloca i1
  %l45 = alloca i32
  %l47 = alloca { i64, ptr }
  %l49 = alloca { i64, ptr }
  %l51 = alloca ptr
  %l55 = alloca { i64, ptr }
  %l57 = alloca ptr
  %l58 = alloca i1
  %l66 = alloca ptr
  %l70 = alloca { i64, ptr }
  %s5 = alloca %olang.scope
  %s7 = alloca %olang.scope
  %s8 = alloca %olang.builder
  %s8room = alloca [64 x i8], align 8
  %s10 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l1, !tbaa !29
  store ptr %t1, ptr %l10, !tbaa !29
  store i1 false, ptr %l11, !tbaa !21
  %t2 = load ptr, ptr %l10, !tbaa !29
  %t3 = icmp ne ptr %t2, null
  br i1 %t3, label %bb1, label %bb2
bb1:
  %t5 = load ptr, ptr %l10, !tbaa !29
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 5}
  %t8 = icmp eq i64 %t6, 0
  store i1 %t8, ptr %l11, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l11, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  %t10 = load ptr, ptr %l1, !tbaa !29
  %t12 = getelementptr { i64, [3 x i64] }, ptr %t10, i32 0, i32 1
  %t13 = getelementptr { i32 }, ptr %t12, i32 0, i32 0
  %t14 = load i32, ptr %t13
  store i32 %t14, ptr %l2, !tbaa !23
  br label %bb5
bb4:
  br label %bb6
bb5:
  %t16 = load i32, ptr %l2, !tbaa !23
  %t17 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d5, i32 0, i32 1) }, 1
  %t18 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d5, i32 0, i32 1) }, 0
  %t20 = sext i32 %t16 to i64
  %t21 = call i64 @__olang_fmt_i64(ptr null, i64 %t20)
  %t22 = add i64 %t18, %t21
  %t23 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t22)
  call void @olang_textcopy(ptr %t23, ptr %t17, i64 %t18)
  %t24 = getelementptr i8, ptr %t23, i64 %t18
  %t25 = call i64 @__olang_fmt_i64(ptr %t24, i64 %t20)
  %t26 = insertvalue { i64, ptr } undef, i64 %t22, 0
  %t27 = insertvalue { i64, ptr } %t26, ptr %t23, 1
  store { i64, ptr } %t27, ptr %l9, !tbaa !27
  br label %bb36
bb6:
  %t29 = load ptr, ptr %l1, !tbaa !29
  store ptr %t29, ptr %l18, !tbaa !29
  store i1 false, ptr %l19, !tbaa !21
  %t30 = load ptr, ptr %l18, !tbaa !29
  %t31 = icmp ne ptr %t30, null
  br i1 %t31, label %bb7, label %bb8
bb7:
  %t33 = load ptr, ptr %l18, !tbaa !29
  %t34 = load i64, ptr %t33, !range !{i64 0, i64 5}
  %t36 = icmp eq i64 %t34, 1
  store i1 %t36, ptr %l19, !tbaa !21
  br label %bb8
bb8:
  %t37 = load i1, ptr %l19, !tbaa !21
  br i1 %t37, label %bb9, label %bb10
bb9:
  %t38 = load ptr, ptr %l1, !tbaa !29
  %t40 = getelementptr { i64, [3 x i64] }, ptr %t38, i32 0, i32 1
  %t41 = getelementptr { i64 }, ptr %t40, i32 0, i32 0
  %t42 = load i64, ptr %t41
  store i64 %t42, ptr %l3, !tbaa !24
  br label %bb11
bb10:
  br label %bb12
bb11:
  %t44 = load i64, ptr %l3, !tbaa !24
  %t45 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d6, i32 0, i32 1) }, 1
  %t46 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d6, i32 0, i32 1) }, 0
  %t48 = call i64 @__olang_fmt_i64(ptr null, i64 %t44)
  %t49 = add i64 %t46, %t48
  %t50 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t49)
  call void @olang_textcopy(ptr %t50, ptr %t45, i64 %t46)
  %t51 = getelementptr i8, ptr %t50, i64 %t46
  %t52 = call i64 @__olang_fmt_i64(ptr %t51, i64 %t44)
  %t53 = insertvalue { i64, ptr } undef, i64 %t49, 0
  %t54 = insertvalue { i64, ptr } %t53, ptr %t50, 1
  store { i64, ptr } %t54, ptr %l9, !tbaa !27
  br label %bb36
bb12:
  %t56 = load ptr, ptr %l1, !tbaa !29
  store ptr %t56, ptr %l26, !tbaa !29
  store i1 false, ptr %l27, !tbaa !21
  %t57 = load ptr, ptr %l26, !tbaa !29
  %t58 = icmp ne ptr %t57, null
  br i1 %t58, label %bb13, label %bb14
bb13:
  %t60 = load ptr, ptr %l26, !tbaa !29
  %t61 = load i64, ptr %t60, !range !{i64 0, i64 5}
  %t63 = icmp eq i64 %t61, 2
  store i1 %t63, ptr %l27, !tbaa !21
  br label %bb14
bb14:
  %t64 = load i1, ptr %l27, !tbaa !21
  br i1 %t64, label %bb15, label %bb16
bb15:
  %t65 = load ptr, ptr %l1, !tbaa !29
  %t67 = getelementptr { i64, [3 x i64] }, ptr %t65, i32 0, i32 1
  %t68 = getelementptr { ptr }, ptr %t67, i32 0, i32 0
  %t69 = load ptr, ptr %t68
  store ptr %t69, ptr %l4, !tbaa !29
  br label %bb17
bb16:
  br label %bb19
bb17:
  store %olang.scope zeroinitializer, ptr %s5
  %t71 = load ptr, ptr %l0, !tbaa !29
  %t72 = load ptr, ptr %l4, !tbaa !29
  %t76 = call { i64, ptr } @compiler_2ftyped_2ecompiler_2ftyped_3aprinter_2eexpr(ptr %v0, ptr %v1, ptr %s5, ptr %v3, ptr %t71, ptr %t72)
  store { i64, ptr } %t76, ptr %l35
  br label %bb18
bb18:
  %t77 = load { i64, ptr }, ptr %l35, !tbaa !27
  %t78 = extractvalue { i64, ptr } %t77, 1
  %t79 = extractvalue { i64, ptr } %t77, 0
  %t80 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t79)
  call void @olang_textcopy(ptr %t80, ptr %t78, i64 %t79)
  %t81 = insertvalue { i64, ptr } undef, i64 %t79, 0
  %t82 = insertvalue { i64, ptr } %t81, ptr %t80, 1
  store { i64, ptr } %t82, ptr %l9, !tbaa !27
  call void @__olang_scope_close(ptr %s5)
  br label %bb36
bb19:
  %t84 = load ptr, ptr %l1, !tbaa !29
  store ptr %t84, ptr %l37, !tbaa !29
  store i1 false, ptr %l38, !tbaa !21
  %t85 = load ptr, ptr %l37, !tbaa !29
  %t86 = icmp ne ptr %t85, null
  br i1 %t86, label %bb20, label %bb21
bb20:
  %t88 = load ptr, ptr %l37, !tbaa !29
  %t89 = load i64, ptr %t88, !range !{i64 0, i64 5}
  %t91 = icmp eq i64 %t89, 4
  store i1 %t91, ptr %l38, !tbaa !21
  br label %bb21
bb21:
  %t92 = load i1, ptr %l38, !tbaa !21
  br i1 %t92, label %bb22, label %bb23
bb22:
  %t93 = load ptr, ptr %l1, !tbaa !29
  %t95 = getelementptr { i64, [3 x i64] }, ptr %t93, i32 0, i32 1
  %t96 = getelementptr { i32, i32 }, ptr %t95, i32 0, i32 0
  %t97 = load i32, ptr %t96, !range !{i32 0, i32 2}
  store i32 %t97, ptr %l5
  %t99 = load ptr, ptr %l1, !tbaa !29
  %t101 = getelementptr { i64, [3 x i64] }, ptr %t99, i32 0, i32 1
  %t102 = getelementptr { i32, i32 }, ptr %t101, i32 0, i32 1
  %t103 = load i32, ptr %t102
  store i32 %t103, ptr %l6, !tbaa !23
  br label %bb24
bb23:
  br label %bb28
bb24:
  store %olang.scope zeroinitializer, ptr %s7
  %t105 = load i32, ptr %l5, !range !{i32 0, i32 2}
  store i32 %t105, ptr %l45
  store %olang.builder { ptr null, i64 0, i64 64, ptr null, ptr null }, ptr %s8
  store ptr %s8room, ptr %s8
  call void @olang_2emir_2eHelperKind_2eRender_2ecompiler_2ftyped_3aHelper(ptr %s8, ptr %l45, i64 0)
  br label %bb25
bb25:
  %t107 = load ptr, ptr %s8
  %t108 = getelementptr %olang.builder, ptr %s8, i32 0, i32 1
  %t109 = load i64, ptr %t108
  %t110 = call ptr @__olang_scope_alloc(ptr %s7, i64 %t109)
  call void @olang_textcopy(ptr %t110, ptr %t107, i64 %t109)
  %t111 = insertvalue { i64, ptr } undef, i64 %t109, 0
  %t112 = insertvalue { i64, ptr } %t111, ptr %t110, 1
  store { i64, ptr } %t112, ptr %l47, !tbaa !27
  %t113 = getelementptr %olang.builder, ptr %s8, i32 0, i32 3
  %t114 = load ptr, ptr %t113
  %t115 = icmp ne ptr %t114, null
  br i1 %t115, label %sbgrew.116, label %sbdone.117
sbgrew.116:
  call void @__olang_sb_done(ptr %s8)
  br label %sbdone.117
sbdone.117:
  %t118 = load { i64, ptr }, ptr %l47, !tbaa !27
  %t119 = extractvalue { i64, ptr } %t118, 0
  %t120 = extractvalue { i64, ptr } %t118, 1
  %t121 = mul i64 %t119, 1
  %t122 = call ptr @__olang_scope_alloc(ptr %s7, i64 %t121)
  call void @llvm.memcpy.p0.p0.i64(ptr %t122, ptr %t120, i64 %t121, i1 false)
  %t123 = insertvalue { i64, ptr } undef, i64 %t119, 0
  %t124 = insertvalue { i64, ptr } %t123, ptr %t122, 1
  %t126 = call { i64, ptr } @compiler_2ftyped_2eshort(ptr %s7, ptr %s7, { i64, ptr } %t124)
  store { i64, ptr } %t126, ptr %l49
  br label %bb26
bb26:
  %t127 = load ptr, ptr %l0, !tbaa !29
  %t129 = getelementptr %"compiler/typed:printer", ptr %t127, i32 0, i32 0
  %t130 = load ptr, ptr %t129, !tbaa !29
  store ptr %t130, ptr %l51, !tbaa !29
  %t131 = load i32, ptr %l6, !tbaa !23
  %t132 = load ptr, ptr %l51, !tbaa !29
  %t133 = call ptr @__olang_scope_or(ptr %v3, ptr %t132)
  %t134 = ptrtoint ptr %t133 to i64
  %t136 = inttoptr i64 %t134 to ptr
  %t138 = inttoptr i64 0 to ptr
  %t139 = load ptr, ptr %l51, !tbaa !29
  %t141 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eCanon(ptr %t136, ptr %s7, ptr %t138, ptr %t139, i32 %t131)
  store { i64, ptr } %t141, ptr %l55
  br label %bb27
bb27:
  %t142 = load { i64, ptr }, ptr %l49, !tbaa !27
  %t143 = extractvalue { i64, ptr } %t142, 1
  %t144 = extractvalue { i64, ptr } %t142, 0
  %t145 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d7, i32 0, i32 1) }, 1
  %t146 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d7, i32 0, i32 1) }, 0
  %t147 = add i64 %t144, %t146
  %t148 = load { i64, ptr }, ptr %l55, !tbaa !27
  %t149 = extractvalue { i64, ptr } %t148, 1
  %t150 = extractvalue { i64, ptr } %t148, 0
  %t151 = add i64 %t147, %t150
  %t152 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t151)
  call void @olang_textcopy(ptr %t152, ptr %t143, i64 %t144)
  %t153 = getelementptr i8, ptr %t152, i64 %t144
  call void @olang_textcopy(ptr %t153, ptr %t145, i64 %t146)
  %t154 = getelementptr i8, ptr %t153, i64 %t146
  call void @olang_textcopy(ptr %t154, ptr %t149, i64 %t150)
  %t155 = insertvalue { i64, ptr } undef, i64 %t151, 0
  %t156 = insertvalue { i64, ptr } %t155, ptr %t152, 1
  store { i64, ptr } %t156, ptr %l9, !tbaa !27
  call void @__olang_scope_close(ptr %s7)
  br label %bb36
bb28:
  %t158 = load ptr, ptr %l1, !tbaa !29
  store ptr %t158, ptr %l57, !tbaa !29
  store i1 false, ptr %l58, !tbaa !21
  %t159 = load ptr, ptr %l57, !tbaa !29
  %t160 = icmp ne ptr %t159, null
  br i1 %t160, label %bb29, label %bb30
bb29:
  %t162 = load ptr, ptr %l57, !tbaa !29
  %t163 = load i64, ptr %t162, !range !{i64 0, i64 5}
  %t165 = icmp eq i64 %t163, 3
  store i1 %t165, ptr %l58, !tbaa !21
  br label %bb30
bb30:
  %t166 = load i1, ptr %l58, !tbaa !21
  br i1 %t166, label %bb31, label %bb32
bb31:
  %t167 = load ptr, ptr %l1, !tbaa !29
  %t169 = getelementptr { i64, [3 x i64] }, ptr %t167, i32 0, i32 1
  %t170 = getelementptr { i32, i64, i32 }, ptr %t169, i32 0, i32 0
  %t171 = load i32, ptr %t170
  store i32 %t171, ptr %l7, !tbaa !23
  %t173 = load ptr, ptr %l1, !tbaa !29
  %t175 = getelementptr { i64, [3 x i64] }, ptr %t173, i32 0, i32 1
  %t176 = getelementptr { i32, i64, i32 }, ptr %t175, i32 0, i32 1
  %t177 = load i64, ptr %t176
  store i64 %t177, ptr %l8, !tbaa !24
  br label %bb33
bb32:
  br label %bb35
bb33:
  store %olang.scope zeroinitializer, ptr %s10
  %t179 = load ptr, ptr %l0, !tbaa !29
  %t181 = getelementptr %"compiler/typed:printer", ptr %t179, i32 0, i32 0
  %t182 = load ptr, ptr %t181, !tbaa !29
  store ptr %t182, ptr %l66, !tbaa !29
  %t183 = load i32, ptr %l7, !tbaa !23
  %t184 = load ptr, ptr %l66, !tbaa !29
  %t185 = call ptr @__olang_scope_or(ptr %v3, ptr %t184)
  %t186 = ptrtoint ptr %t185 to i64
  %t188 = inttoptr i64 %t186 to ptr
  %t190 = inttoptr i64 0 to ptr
  %t191 = load ptr, ptr %l66, !tbaa !29
  %t193 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eCanon(ptr %t188, ptr %s10, ptr %t190, ptr %t191, i32 %t183)
  store { i64, ptr } %t193, ptr %l70
  br label %bb34
bb34:
  %t194 = load i64, ptr %l8, !tbaa !24
  %t195 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d8, i32 0, i32 1) }, 1
  %t196 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d8, i32 0, i32 1) }, 0
  %t197 = load { i64, ptr }, ptr %l70, !tbaa !27
  %t198 = extractvalue { i64, ptr } %t197, 1
  %t199 = extractvalue { i64, ptr } %t197, 0
  %t200 = add i64 %t196, %t199
  %t201 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d9, i32 0, i32 1) }, 1
  %t202 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d9, i32 0, i32 1) }, 0
  %t203 = add i64 %t200, %t202
  %t205 = call i64 @__olang_fmt_i64(ptr null, i64 %t194)
  %t206 = add i64 %t203, %t205
  %t207 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t206)
  call void @olang_textcopy(ptr %t207, ptr %t195, i64 %t196)
  %t208 = getelementptr i8, ptr %t207, i64 %t196
  call void @olang_textcopy(ptr %t208, ptr %t198, i64 %t199)
  %t209 = getelementptr i8, ptr %t208, i64 %t199
  call void @olang_textcopy(ptr %t209, ptr %t201, i64 %t202)
  %t210 = getelementptr i8, ptr %t209, i64 %t202
  %t211 = call i64 @__olang_fmt_i64(ptr %t210, i64 %t194)
  %t212 = insertvalue { i64, ptr } undef, i64 %t206, 0
  %t213 = insertvalue { i64, ptr } %t212, ptr %t207, 1
  store { i64, ptr } %t213, ptr %l9, !tbaa !27
  call void @__olang_scope_close(ptr %s10)
  br label %bb36
bb35:
  call void @__olang_check_failed(ptr @olang_loc_c13c66c7f09ff87e_38ebe5e5af81f22)
  unreachable
bb36:
  %t215 = load { i64, ptr }, ptr %l9, !tbaa !27
  store { i64, ptr } %t215, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local { i64, ptr } @compiler_2ftyped_2econstItems(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l1 = alloca %"std/prelude/text:StringBuilder"
  %l2 = alloca i64
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca %"std/prelude/text:StringBuilder"
  %l15 = alloca i64
  %l18 = alloca i64
  %l39 = alloca ptr
  %l40 = alloca { i64, ptr }
  %l43 = alloca { i64, ptr }
  %l49 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %s2 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  store { i64, ptr } %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = call %"std/prelude/text:StringBuilder" @std_2fprelude_2ftext_3aStringBuilder_2ector(ptr %s0)
  store %"std/prelude/text:StringBuilder" %t1, ptr %l8
  br label %bb1
bb1:
  %t2 = load %"std/prelude/text:StringBuilder", ptr %l8
  store %"std/prelude/text:StringBuilder" %t2, ptr %l1
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePushChar(ptr %s0, ptr %l1, i8 91)
  br label %bb2
bb2:
  store i64 0, ptr %l2, !tbaa !24
  %t4 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t6 = extractvalue { i64, ptr } %t4, 0
  store i64 %t6, ptr %l3, !tbaa !24
  store i64 1, ptr %l4, !tbaa !24
  %t8 = load i64, ptr %l3, !tbaa !24
  %t9 = load i64, ptr %l2, !tbaa !24
  %t12 = icmp sgt i64 %t8, %t9
  br i1 %t12, label %bb3, label %bb4
bb3:
  %t14 = load i64, ptr %l4, !tbaa !24
  %t16 = icmp sgt i64 %t14, 0
  br i1 %t16, label %bb5, label %bb6
bb4:
  store i64 0, ptr %l15, !tbaa !24
  br label %bb8
bb5:
  %t18 = load i64, ptr %l3, !tbaa !24
  %t19 = load i64, ptr %l2, !tbaa !24
  %t22 = sub i64 %t18, %t19
  %t23 = load i64, ptr %l4, !tbaa !24
  %t26 = add i64 %t22, %t23
  %t28 = sub i64 %t26, 1
  %t29 = load i64, ptr %l4, !tbaa !24
  %t32 = sdiv i64 %t28, %t29
  store i64 %t32, ptr %l18, !tbaa !24
  br label %bb7
bb6:
  store i64 0, ptr %l18, !tbaa !24
  br label %bb7
bb7:
  %t34 = load i64, ptr %l18, !tbaa !24
  store i64 %t34, ptr %l15, !tbaa !24
  br label %bb8
bb8:
  %t35 = load i64, ptr %l15, !tbaa !24
  store i64 %t35, ptr %l5, !tbaa !24
  store i64 0, ptr %l6, !tbaa !24
  br label %bb9
bb9:
  store %olang.scope zeroinitializer, ptr %s2
  %t36 = load i64, ptr %l6, !tbaa !24
  %t37 = load i64, ptr %l5, !tbaa !24
  %t40 = icmp slt i64 %t36, %t37
  %t42 = xor i1 %t40, true
  br i1 %t42, label %bb10, label %bb11
bb10:
  call void @__olang_scope_close(ptr %s2)
  br label %bb20
bb11:
  br label %bb12
bb12:
  %t44 = load i64, ptr %l2, !tbaa !24
  %t45 = load i64, ptr %l6, !tbaa !24
  %t46 = load i64, ptr %l4, !tbaa !24
  %t49 = mul i64 %t45, %t46
  %t52 = add i64 %t44, %t49
  store i64 %t52, ptr %l7, !tbaa !24
  %t54 = load i64, ptr %l7, !tbaa !24
  %t56 = icmp sgt i64 %t54, 0
  br i1 %t56, label %bb13, label %bb14
bb13:
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePushChar(ptr %s0, ptr %l1, i8 32)
  br label %bb15
bb14:
  br label %bb16
bb15:
  br label %bb16
bb16:
  store ptr %l1, ptr %l39, !tbaa !29
  %t59 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t59, ptr %l40, !tbaa !27
  %t60 = load i64, ptr %l7, !tbaa !24
  %t62 = getelementptr { i64, ptr }, ptr %l40, i32 0, i32 1
  %t63 = load ptr, ptr %t62, !tbaa !27
  %t64 = getelementptr ptr, ptr %t63, i64 %t60
  %t65 = load ptr, ptr %t64, !tbaa !39
  %t67 = call { i64, ptr } @compiler_2ftyped_2econstText(ptr %v0, ptr %s2, ptr %t65)
  store { i64, ptr } %t67, ptr %l43
  br label %bb17
bb17:
  %t68 = load { i64, ptr }, ptr %l43, !tbaa !27
  %t69 = extractvalue { i64, ptr } %t68, 0
  %t70 = extractvalue { i64, ptr } %t68, 1
  %t71 = mul i64 %t69, 1
  %t72 = call ptr @__olang_scope_alloc(ptr %s2, i64 %t71)
  call void @llvm.memcpy.p0.p0.i64(ptr %t72, ptr %t70, i64 %t71, i1 false)
  %t73 = insertvalue { i64, ptr } undef, i64 %t69, 0
  %t74 = insertvalue { i64, ptr } %t73, ptr %t72, 1
  %t75 = load ptr, ptr %l39, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s2, ptr %t75, { i64, ptr } %t74)
  br label %bb18
bb18:
  call void @__olang_scope_close(ptr %s2)
  br label %bb19
bb19:
  %t77 = load i64, ptr %l6, !tbaa !24
  %t79 = add i64 %t77, 1
  store i64 %t79, ptr %l6, !tbaa !24
  br label %bb9
bb20:
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePushChar(ptr %s0, ptr %l1, i8 93)
  br label %bb21
bb21:
  %t83 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %s0, ptr %v1, ptr %l1)
  store { i64, ptr } %t83, ptr %l49
  br label %bb22
bb22:
  call void @__olang_scope_close(ptr %s0)
  %t84 = load { i64, ptr }, ptr %l49, !tbaa !27
  store { i64, ptr } %t84, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local i64 @compiler_2ftyped_2edefName(i64 %a0, i64 %a1) #0 {
entry:
  %rv = alloca i64
  br label %start
start:
  br label %bb0
bb0:
  %t3 = mul i64 %a0, 1048576
  %t7 = add i64 %t3, %a1
  store i64 %t7, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local i1 @compiler_2ftyped_2eholdsWritableRef(ptr %v0, ptr %a0, i32 %a1, i64 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca i64
  %l3 = alloca i32
  %l9 = alloca i32
  %l10 = alloca i1
  %l15 = alloca i64
  %l19 = alloca i1
  %l20 = alloca ptr
  %l23 = alloca i32
  %l26 = alloca i1
  %l29 = alloca ptr
  %l32 = alloca i32
  %l35 = alloca i1
  %l40 = alloca ptr
  %l41 = alloca ptr
  %l44 = alloca i64
  %l47 = alloca { i64, ptr }
  %l49 = alloca i1
  %l55 = alloca i1
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  store i64 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load i64, ptr %l2, !tbaa !24
  %t3 = icmp sgt i64 %t1, 6
  br i1 %t3, label %bb1, label %bb2
bb1:
  store i1 true, ptr %rv
  br label %ret
bb2:
  br label %bb3
bb3:
  %t6 = load ptr, ptr %l0, !tbaa !29
  %t7 = load i32, ptr %l1, !tbaa !23
  %t10 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t6, i32 %t7)
  store i32 %t10, ptr %l9
  br label %bb4
bb4:
  %t11 = load i32, ptr %l9, !range !{i32 0, i32 33}
  store i32 %t11, ptr %l3
  %t12 = load i32, ptr %l3, !range !{i32 0, i32 33}
  %t14 = trunc i64 20 to i32
  %t15 = icmp eq i32 %t12, %t14
  br i1 %t15, label %bb5, label %bb6
bb5:
  br label %bb7
bb6:
  br label %bb14
bb7:
  %t17 = load ptr, ptr %l0, !tbaa !29
  %t18 = load i32, ptr %l1, !tbaa !23
  %t21 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePermOf(ptr %v0, ptr %t17, i32 %t18)
  store i64 %t21, ptr %l15
  br label %bb8
bb8:
  %t22 = load i64, ptr @G_2ecompiler_2ftypes_2eWritable, !tbaa !24
  %t23 = load i64, ptr %l15, !tbaa !24
  %t25 = and i64 %t23, %t22
  %t27 = icmp ne i64 %t25, 0
  br i1 %t27, label %bb9, label %bb10
bb9:
  store i1 true, ptr %l19, !tbaa !21
  br label %bb13
bb10:
  %t29 = load ptr, ptr %l0, !tbaa !29
  store ptr %t29, ptr %l20, !tbaa !29
  %t30 = load ptr, ptr %l0, !tbaa !29
  %t31 = load i32, ptr %l1, !tbaa !23
  %t34 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eReferent(ptr %v0, ptr %t30, i32 %t31)
  store i32 %t34, ptr %l23
  br label %bb11
bb11:
  %t35 = load i64, ptr %l2, !tbaa !24
  %t37 = add i64 %t35, 1
  %t38 = load ptr, ptr %l20, !tbaa !29
  %t39 = load i32, ptr %l23, !tbaa !23
  %t41 = call i1 @compiler_2ftyped_2eholdsWritableRef(ptr %v0, ptr %t38, i32 %t39, i64 %t37)
  store i1 %t41, ptr %l26
  br label %bb12
bb12:
  %t42 = load i1, ptr %l26, !tbaa !21
  store i1 %t42, ptr %l19, !tbaa !21
  br label %bb13
bb13:
  %t43 = load i1, ptr %l19, !tbaa !21
  store i1 %t43, ptr %l10, !tbaa !21
  br label %bb49
bb14:
  %t44 = load i32, ptr %l3, !range !{i32 0, i32 33}
  %t46 = trunc i64 19 to i32
  %t47 = icmp eq i32 %t44, %t46
  br i1 %t47, label %bb15, label %bb16
bb15:
  br label %bb17
bb16:
  br label %bb20
bb17:
  %t49 = load ptr, ptr %l0, !tbaa !29
  store ptr %t49, ptr %l29, !tbaa !29
  %t50 = load ptr, ptr %l0, !tbaa !29
  %t51 = load i32, ptr %l1, !tbaa !23
  %t54 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eElem(ptr %v0, ptr %t50, i32 %t51)
  store i32 %t54, ptr %l32
  br label %bb18
bb18:
  %t55 = load i64, ptr %l2, !tbaa !24
  %t57 = add i64 %t55, 1
  %t58 = load ptr, ptr %l29, !tbaa !29
  %t59 = load i32, ptr %l32, !tbaa !23
  %t61 = call i1 @compiler_2ftyped_2eholdsWritableRef(ptr %v0, ptr %t58, i32 %t59, i64 %t57)
  store i1 %t61, ptr %l35
  br label %bb19
bb19:
  %t62 = load i1, ptr %l35, !tbaa !21
  store i1 %t62, ptr %l10, !tbaa !21
  br label %bb49
bb20:
  %t63 = load i32, ptr %l3, !range !{i32 0, i32 33}
  %t65 = trunc i64 22 to i32
  %t66 = icmp eq i32 %t63, %t65
  br i1 %t66, label %bb21, label %bb22
bb21:
  br label %bb25
bb22:
  %t68 = load i32, ptr %l3, !range !{i32 0, i32 33}
  %t70 = trunc i64 23 to i32
  %t71 = icmp eq i32 %t68, %t70
  br i1 %t71, label %bb23, label %bb24
bb23:
  br label %bb25
bb24:
  br label %bb29
bb25:
  %t73 = load ptr, ptr %l0, !tbaa !29
  store ptr %t73, ptr %l40, !tbaa !29
  %t74 = load ptr, ptr %l0, !tbaa !29
  store ptr %t74, ptr %l41, !tbaa !29
  %t75 = load ptr, ptr %l0, !tbaa !29
  %t76 = load i32, ptr %l1, !tbaa !23
  %t79 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eA(ptr %v0, ptr %t75, i32 %t76)
  store i64 %t79, ptr %l44
  br label %bb26
bb26:
  %t80 = load i64, ptr %l44, !tbaa !24
  %t81 = trunc i64 %t80 to i32
  %t83 = load ptr, ptr %l41, !tbaa !29
  %t85 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t83, i32 %t81)
  store { i64, ptr } %t85, ptr %l47
  br label %bb27
bb27:
  %t86 = load i64, ptr %l2, !tbaa !24
  %t87 = load ptr, ptr %l40, !tbaa !29
  %t88 = load { i64, ptr }, ptr %l47, !tbaa !27
  %t90 = call i1 @compiler_2ftyped_2elistHoldsWritable(ptr %v0, ptr %v0, ptr %t87, { i64, ptr } %t88, i64 %t86)
  store i1 %t90, ptr %l49
  br label %bb28
bb28:
  %t91 = load i1, ptr %l49, !tbaa !21
  store i1 %t91, ptr %l10, !tbaa !21
  br label %bb49
bb29:
  %t92 = load i32, ptr %l3, !range !{i32 0, i32 33}
  %t94 = trunc i64 18 to i32
  %t95 = icmp eq i32 %t92, %t94
  br i1 %t95, label %bb30, label %bb31
bb30:
  br label %bb32
bb31:
  br label %bb34
bb32:
  %t97 = load ptr, ptr %l0, !tbaa !29
  %t98 = load i32, ptr %l1, !tbaa !23
  %t99 = load i64, ptr %l2, !tbaa !24
  %t103 = call i1 @compiler_2ftyped_2enamedHoldsWritable(ptr %v0, ptr %t97, i32 %t98, i64 %t99)
  store i1 %t103, ptr %l55
  br label %bb33
bb33:
  %t104 = load i1, ptr %l55, !tbaa !21
  store i1 %t104, ptr %l10, !tbaa !21
  br label %bb49
bb34:
  %t105 = load i32, ptr %l3, !range !{i32 0, i32 33}
  %t107 = trunc i64 21 to i32
  %t108 = icmp eq i32 %t105, %t107
  br i1 %t108, label %bb35, label %bb36
bb35:
  br label %bb43
bb36:
  %t110 = load i32, ptr %l3, !range !{i32 0, i32 33}
  %t112 = trunc i64 29 to i32
  %t113 = icmp eq i32 %t110, %t112
  br i1 %t113, label %bb37, label %bb38
bb37:
  br label %bb43
bb38:
  %t115 = load i32, ptr %l3, !range !{i32 0, i32 33}
  %t117 = trunc i64 25 to i32
  %t118 = icmp eq i32 %t115, %t117
  br i1 %t118, label %bb39, label %bb40
bb39:
  br label %bb43
bb40:
  %t120 = load i32, ptr %l3, !range !{i32 0, i32 33}
  %t122 = trunc i64 24 to i32
  %t123 = icmp eq i32 %t120, %t122
  br i1 %t123, label %bb41, label %bb42
bb41:
  br label %bb43
bb42:
  br label %bb44
bb43:
  store i1 true, ptr %l10, !tbaa !21
  br label %bb49
bb44:
  br i1 true, label %bb45, label %bb46
bb45:
  br label %bb47
bb46:
  br label %bb48
bb47:
  store i1 false, ptr %l10, !tbaa !21
  br label %bb49
bb48:
  call void @__olang_check_failed(ptr @olang_loc_897c6ec4bdb8e7c2_3b49e2eddb87c67e)
  unreachable
bb49:
  %t125 = load i1, ptr %l10, !tbaa !21
  store i1 %t125, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i1 @compiler_2ftyped_2elistOwned(ptr %v0, ptr %a0, i32 %a1, i64 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l3 = alloca { i64, ptr }
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i32
  %l12 = alloca { i64, ptr }
  %l19 = alloca { i64, ptr }
  %l24 = alloca i1
  %l29 = alloca i1
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load i32, ptr %l1, !tbaa !23
  %t3 = icmp eq i32 %t1, 0
  br i1 %t3, label %bb1, label %bb2
bb1:
  store i1 false, ptr %rv
  br label %ret
bb2:
  br label %bb3
bb3:
  %t6 = load ptr, ptr %l0, !tbaa !29
  %t7 = load i32, ptr %l1, !tbaa !23
  %t10 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t6, i32 %t7)
  store { i64, ptr } %t10, ptr %l12
  br label %bb4
bb4:
  %t11 = load { i64, ptr }, ptr %l12, !tbaa !27
  store { i64, ptr } %t11, ptr %l3, !tbaa !27
  store i64 0, ptr %l4, !tbaa !24
  %t12 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t14 = extractvalue { i64, ptr } %t12, 0
  store i64 %t14, ptr %l5, !tbaa !24
  br label %bb5
bb5:
  %t16 = load i64, ptr %l4, !tbaa !24
  %t17 = load i64, ptr %l5, !tbaa !24
  %t20 = icmp slt i64 %t16, %t17
  %t22 = xor i1 %t20, true
  br i1 %t22, label %bb6, label %bb7
bb6:
  br label %bb17
bb7:
  br label %bb8
bb8:
  %t24 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t24, ptr %l19, !tbaa !27
  %t25 = load i64, ptr %l4, !tbaa !24
  %t27 = getelementptr { i64, ptr }, ptr %l19, i32 0, i32 1
  %t28 = load ptr, ptr %t27, !tbaa !27
  %t29 = getelementptr i32, ptr %t28, i64 %t25
  %t30 = load i32, ptr %t29, !tbaa !33
  store i32 %t30, ptr %l6, !tbaa !23
  %t32 = load i32, ptr %l6, !tbaa !23
  %t34 = icmp ne i32 %t32, 0
  br i1 %t34, label %bb9, label %bb10
bb9:
  %t36 = load ptr, ptr %l0, !tbaa !29
  %t37 = load i32, ptr %l6, !tbaa !23
  %t40 = add i64 %a2, 1
  %t44 = call i1 @compiler_2ftyped_2eholdsOwned(ptr %v0, ptr %t36, i32 %t37, i64 %t40)
  store i1 %t44, ptr %l29
  br label %bb11
bb10:
  store i1 false, ptr %l24, !tbaa !21
  br label %bb12
bb11:
  %t45 = load i1, ptr %l29, !tbaa !21
  store i1 %t45, ptr %l24, !tbaa !21
  br label %bb12
bb12:
  %t46 = load i1, ptr %l24, !tbaa !21
  br i1 %t46, label %bb13, label %bb14
bb13:
  store i1 true, ptr %rv
  br label %ret
bb14:
  br label %bb15
bb15:
  br label %bb16
bb16:
  %t48 = load i64, ptr %l4, !tbaa !24
  %t50 = add i64 %t48, 1
  store i64 %t50, ptr %l4, !tbaa !24
  br label %bb5
bb17:
  store i1 false, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i1 @compiler_2ftyped_2enamedHoldsWritable(ptr %v0, ptr %a0, i32 %a1, i64 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca i64
  %l3 = alloca i32
  %l4 = alloca ptr
  %l7 = alloca i32
  %l8 = alloca i32
  %l11 = alloca i1
  %l17 = alloca i1
  %l20 = alloca i1
  %l25 = alloca ptr
  %l28 = alloca i32
  %l31 = alloca i1
  %l32 = alloca ptr
  %l33 = alloca ptr
  %l36 = alloca i32
  %l37 = alloca { i64, ptr }
  %l39 = alloca i1
  %l40 = alloca i1
  %l41 = alloca ptr
  %l42 = alloca ptr
  %l45 = alloca i32
  %l46 = alloca { i64, ptr }
  %l48 = alloca i1
  %l49 = alloca i1
  %l50 = alloca ptr
  %l51 = alloca ptr
  %l54 = alloca i32
  %l55 = alloca { i64, ptr }
  %l57 = alloca i1
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  store i64 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1, ptr %l4, !tbaa !29
  %t2 = load ptr, ptr %l0, !tbaa !29
  %t3 = load i32, ptr %l1, !tbaa !23
  %t6 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %t2, i32 %t3)
  store i32 %t6, ptr %l7
  br label %bb1
bb1:
  %t7 = load ptr, ptr %l4, !tbaa !29
  %t8 = load i32, ptr %l7, !tbaa !23
  %t9 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclKindOf(ptr %v0, ptr %t7, i32 %t8)
  store i32 %t9, ptr %l8
  br label %bb2
bb2:
  %t10 = load i32, ptr %l8, !range !{i32 0, i32 6}
  store i32 %t10, ptr %l3
  %t11 = load i32, ptr %l3, !range !{i32 0, i32 6}
  %t13 = trunc i64 2 to i32
  %t14 = icmp eq i32 %t11, %t13
  br i1 %t14, label %bb3, label %bb4
bb3:
  store i1 true, ptr %l11, !tbaa !21
  br label %bb5
bb4:
  %t16 = load i32, ptr %l3, !range !{i32 0, i32 6}
  %t18 = trunc i64 5 to i32
  %t19 = icmp eq i32 %t16, %t18
  store i1 %t19, ptr %l11, !tbaa !21
  br label %bb5
bb5:
  %t21 = load i1, ptr %l11, !tbaa !21
  br i1 %t21, label %bb6, label %bb7
bb6:
  store i1 false, ptr %rv
  br label %ret
bb7:
  br label %bb8
bb8:
  %t23 = load i32, ptr %l3, !range !{i32 0, i32 6}
  %t25 = trunc i64 3 to i32
  %t26 = icmp eq i32 %t23, %t25
  br i1 %t26, label %bb9, label %bb10
bb9:
  store i1 true, ptr %l17, !tbaa !21
  br label %bb12
bb10:
  %t28 = load ptr, ptr %l0, !tbaa !29
  %t29 = load i32, ptr %l1, !tbaa !23
  %t32 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eHasBody(ptr %v0, ptr %t28, i32 %t29)
  store i1 %t32, ptr %l20
  br label %bb11
bb11:
  %t33 = load i1, ptr %l20, !tbaa !21
  %t34 = xor i1 %t33, true
  store i1 %t34, ptr %l17, !tbaa !21
  br label %bb12
bb12:
  %t36 = load i1, ptr %l17, !tbaa !21
  br i1 %t36, label %bb13, label %bb14
bb13:
  store i1 true, ptr %rv
  br label %ret
bb14:
  br label %bb15
bb15:
  %t38 = load i32, ptr %l3, !range !{i32 0, i32 6}
  %t40 = trunc i64 4 to i32
  %t41 = icmp eq i32 %t38, %t40
  br i1 %t41, label %bb16, label %bb17
bb16:
  %t43 = load ptr, ptr %l0, !tbaa !29
  store ptr %t43, ptr %l25, !tbaa !29
  %t44 = load ptr, ptr %l0, !tbaa !29
  %t45 = load i32, ptr %l1, !tbaa !23
  %t48 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eBase(ptr %v0, ptr %t44, i32 %t45)
  store i32 %t48, ptr %l28
  br label %bb18
bb17:
  br label %bb20
bb18:
  %t49 = load i64, ptr %l2, !tbaa !24
  %t51 = add i64 %t49, 1
  %t52 = load ptr, ptr %l25, !tbaa !29
  %t53 = load i32, ptr %l28, !tbaa !23
  %t55 = call i1 @compiler_2ftyped_2eholdsWritableRef(ptr %v0, ptr %t52, i32 %t53, i64 %t51)
  store i1 %t55, ptr %l31
  br label %bb19
bb19:
  %t56 = load i1, ptr %l31, !tbaa !21
  store i1 %t56, ptr %rv
  br label %ret
bb20:
  %t57 = load ptr, ptr %l0, !tbaa !29
  store ptr %t57, ptr %l32, !tbaa !29
  %t58 = load ptr, ptr %l0, !tbaa !29
  store ptr %t58, ptr %l33, !tbaa !29
  %t59 = load ptr, ptr %l0, !tbaa !29
  %t60 = load i32, ptr %l1, !tbaa !23
  %t63 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eArgs(ptr %v0, ptr %t59, i32 %t60)
  store i32 %t63, ptr %l36
  br label %bb21
bb21:
  %t64 = load ptr, ptr %l33, !tbaa !29
  %t65 = load i32, ptr %l36, !tbaa !23
  %t66 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t64, i32 %t65)
  store { i64, ptr } %t66, ptr %l37
  br label %bb22
bb22:
  %t67 = load i64, ptr %l2, !tbaa !24
  %t68 = load ptr, ptr %l32, !tbaa !29
  %t69 = load { i64, ptr }, ptr %l37, !tbaa !27
  %t71 = call i1 @compiler_2ftyped_2elistHoldsWritable(ptr %v0, ptr %v0, ptr %t68, { i64, ptr } %t69, i64 %t67)
  store i1 %t71, ptr %l39
  br label %bb23
bb23:
  %t72 = load i1, ptr %l39, !tbaa !21
  br i1 %t72, label %bb24, label %bb25
bb24:
  store i1 true, ptr %l40, !tbaa !21
  br label %bb29
bb25:
  %t73 = load ptr, ptr %l0, !tbaa !29
  store ptr %t73, ptr %l41, !tbaa !29
  %t74 = load ptr, ptr %l0, !tbaa !29
  store ptr %t74, ptr %l42, !tbaa !29
  %t75 = load ptr, ptr %l0, !tbaa !29
  %t76 = load i32, ptr %l1, !tbaa !23
  %t79 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eFields(ptr %v0, ptr %t75, i32 %t76)
  store i32 %t79, ptr %l45
  br label %bb26
bb26:
  %t80 = load ptr, ptr %l42, !tbaa !29
  %t81 = load i32, ptr %l45, !tbaa !23
  %t82 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t80, i32 %t81)
  store { i64, ptr } %t82, ptr %l46
  br label %bb27
bb27:
  %t83 = load i64, ptr %l2, !tbaa !24
  %t84 = load ptr, ptr %l41, !tbaa !29
  %t85 = load { i64, ptr }, ptr %l46, !tbaa !27
  %t87 = call i1 @compiler_2ftyped_2elistHoldsWritable(ptr %v0, ptr %v0, ptr %t84, { i64, ptr } %t85, i64 %t83)
  store i1 %t87, ptr %l48
  br label %bb28
bb28:
  %t88 = load i1, ptr %l48, !tbaa !21
  store i1 %t88, ptr %l40, !tbaa !21
  br label %bb29
bb29:
  %t89 = load i1, ptr %l40, !tbaa !21
  br i1 %t89, label %bb30, label %bb31
bb30:
  store i1 true, ptr %l49, !tbaa !21
  br label %bb35
bb31:
  %t90 = load ptr, ptr %l0, !tbaa !29
  store ptr %t90, ptr %l50, !tbaa !29
  %t91 = load ptr, ptr %l0, !tbaa !29
  store ptr %t91, ptr %l51, !tbaa !29
  %t92 = load ptr, ptr %l0, !tbaa !29
  %t93 = load i32, ptr %l1, !tbaa !23
  %t96 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eCases(ptr %v0, ptr %t92, i32 %t93)
  store i32 %t96, ptr %l54
  br label %bb32
bb32:
  %t97 = load ptr, ptr %l51, !tbaa !29
  %t98 = load i32, ptr %l54, !tbaa !23
  %t99 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t97, i32 %t98)
  store { i64, ptr } %t99, ptr %l55
  br label %bb33
bb33:
  %t100 = load i64, ptr %l2, !tbaa !24
  %t101 = load ptr, ptr %l50, !tbaa !29
  %t102 = load { i64, ptr }, ptr %l55, !tbaa !27
  %t104 = call i1 @compiler_2ftyped_2elistHoldsWritable(ptr %v0, ptr %v0, ptr %t101, { i64, ptr } %t102, i64 %t100)
  store i1 %t104, ptr %l57
  br label %bb34
bb34:
  %t105 = load i1, ptr %l57, !tbaa !21
  store i1 %t105, ptr %l49, !tbaa !21
  br label %bb35
bb35:
  %t106 = load i1, ptr %l49, !tbaa !21
  store i1 %t106, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i1 @compiler_2ftyped_2esharedBlock(ptr %v0, ptr %a0) #0 {
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
  %l14 = alloca i64
  %l18 = alloca i64
  %l21 = alloca i64
  %l42 = alloca i64
  %l46 = alloca i64
  %l49 = alloca i64
  %l69 = alloca i32
  %l72 = alloca i32
  %rv = alloca i1
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store i64 0, ptr %l1, !tbaa !24
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aBlockId_3e_2eLen_3ccompiler_2ftyped_3aBlockId_3e(ptr %v0, ptr %t1)
  store i64 %t3, ptr %l14
  br label %bb1
bb1:
  %t4 = load i64, ptr %l14, !tbaa !24
  store i64 %t4, ptr %l2, !tbaa !24
  store i64 1, ptr %l3, !tbaa !24
  %t5 = load i64, ptr %l2, !tbaa !24
  %t6 = load i64, ptr %l1, !tbaa !24
  %t9 = icmp sgt i64 %t5, %t6
  br i1 %t9, label %bb2, label %bb3
bb2:
  %t11 = load i64, ptr %l3, !tbaa !24
  %t13 = icmp sgt i64 %t11, 0
  br i1 %t13, label %bb4, label %bb5
bb3:
  store i64 0, ptr %l18, !tbaa !24
  br label %bb7
bb4:
  %t15 = load i64, ptr %l2, !tbaa !24
  %t16 = load i64, ptr %l1, !tbaa !24
  %t19 = sub i64 %t15, %t16
  %t20 = load i64, ptr %l3, !tbaa !24
  %t23 = add i64 %t19, %t20
  %t25 = sub i64 %t23, 1
  %t26 = load i64, ptr %l3, !tbaa !24
  %t29 = sdiv i64 %t25, %t26
  store i64 %t29, ptr %l21, !tbaa !24
  br label %bb6
bb5:
  store i64 0, ptr %l21, !tbaa !24
  br label %bb6
bb6:
  %t31 = load i64, ptr %l21, !tbaa !24
  store i64 %t31, ptr %l18, !tbaa !24
  br label %bb7
bb7:
  %t32 = load i64, ptr %l18, !tbaa !24
  store i64 %t32, ptr %l4, !tbaa !24
  store i64 0, ptr %l5, !tbaa !24
  br label %bb8
bb8:
  %t33 = load i64, ptr %l5, !tbaa !24
  %t34 = load i64, ptr %l4, !tbaa !24
  %t37 = icmp slt i64 %t33, %t34
  %t39 = xor i1 %t37, true
  br i1 %t39, label %bb9, label %bb10
bb9:
  br label %bb31
bb10:
  br label %bb11
bb11:
  %t41 = load i64, ptr %l1, !tbaa !24
  %t42 = load i64, ptr %l5, !tbaa !24
  %t43 = load i64, ptr %l3, !tbaa !24
  %t46 = mul i64 %t42, %t43
  %t49 = add i64 %t41, %t46
  store i64 %t49, ptr %l6, !tbaa !24
  %t51 = load i64, ptr %l6, !tbaa !24
  %t53 = add i64 %t51, 1
  store i64 %t53, ptr %l7, !tbaa !24
  %t55 = load ptr, ptr %l0, !tbaa !29
  %t57 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aBlockId_3e_2eLen_3ccompiler_2ftyped_3aBlockId_3e(ptr %v0, ptr %t55)
  store i64 %t57, ptr %l42
  br label %bb12
bb12:
  %t58 = load i64, ptr %l42, !tbaa !24
  store i64 %t58, ptr %l8, !tbaa !24
  store i64 1, ptr %l9, !tbaa !24
  %t59 = load i64, ptr %l8, !tbaa !24
  %t60 = load i64, ptr %l7, !tbaa !24
  %t63 = icmp sgt i64 %t59, %t60
  br i1 %t63, label %bb13, label %bb14
bb13:
  %t65 = load i64, ptr %l9, !tbaa !24
  %t67 = icmp sgt i64 %t65, 0
  br i1 %t67, label %bb15, label %bb16
bb14:
  store i64 0, ptr %l46, !tbaa !24
  br label %bb18
bb15:
  %t69 = load i64, ptr %l8, !tbaa !24
  %t70 = load i64, ptr %l7, !tbaa !24
  %t73 = sub i64 %t69, %t70
  %t74 = load i64, ptr %l9, !tbaa !24
  %t77 = add i64 %t73, %t74
  %t79 = sub i64 %t77, 1
  %t80 = load i64, ptr %l9, !tbaa !24
  %t83 = sdiv i64 %t79, %t80
  store i64 %t83, ptr %l49, !tbaa !24
  br label %bb17
bb16:
  store i64 0, ptr %l49, !tbaa !24
  br label %bb17
bb17:
  %t85 = load i64, ptr %l49, !tbaa !24
  store i64 %t85, ptr %l46, !tbaa !24
  br label %bb18
bb18:
  %t86 = load i64, ptr %l46, !tbaa !24
  store i64 %t86, ptr %l10, !tbaa !24
  store i64 0, ptr %l11, !tbaa !24
  br label %bb19
bb19:
  %t87 = load i64, ptr %l11, !tbaa !24
  %t88 = load i64, ptr %l10, !tbaa !24
  %t91 = icmp slt i64 %t87, %t88
  %t93 = xor i1 %t91, true
  br i1 %t93, label %bb20, label %bb21
bb20:
  br label %bb29
bb21:
  br label %bb22
bb22:
  %t95 = load i64, ptr %l7, !tbaa !24
  %t96 = load i64, ptr %l11, !tbaa !24
  %t97 = load i64, ptr %l9, !tbaa !24
  %t100 = mul i64 %t96, %t97
  %t103 = add i64 %t95, %t100
  store i64 %t103, ptr %l12, !tbaa !24
  %t105 = load ptr, ptr %l0, !tbaa !29
  %t106 = load i64, ptr %l6, !tbaa !24
  %t109 = call i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aBlockId_3e_2eAt_3ccompiler_2ftyped_3aBlockId_3e(ptr %v0, ptr %t105, i64 %t106)
  store i32 %t109, ptr %l69
  br label %bb23
bb23:
  %t110 = load ptr, ptr %l0, !tbaa !29
  %t111 = load i64, ptr %l12, !tbaa !24
  %t114 = call i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aBlockId_3e_2eAt_3ccompiler_2ftyped_3aBlockId_3e(ptr %v0, ptr %t110, i64 %t111)
  store i32 %t114, ptr %l72
  br label %bb24
bb24:
  %t115 = load i32, ptr %l69, !tbaa !23
  %t116 = load i32, ptr %l72, !tbaa !23
  %t117 = icmp eq i32 %t115, %t116
  br i1 %t117, label %bb25, label %bb26
bb25:
  store i1 true, ptr %rv
  br label %ret
bb26:
  br label %bb27
bb27:
  br label %bb28
bb28:
  %t120 = load i64, ptr %l11, !tbaa !24
  %t122 = add i64 %t120, 1
  store i64 %t122, ptr %l11, !tbaa !24
  br label %bb19
bb29:
  br label %bb30
bb30:
  %t124 = load i64, ptr %l5, !tbaa !24
  %t126 = add i64 %t124, 1
  store i64 %t126, ptr %l5, !tbaa !24
  br label %bb8
bb31:
  store i1 false, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local %"compiler/typed:Arm" @compiler_2ftyped_3aArm_2ector(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, %"compiler/source:Span" %a0, { i64, ptr } %a1, ptr %a2, ptr %a3, ptr %a4) #0 {
entry:
  %rv = alloca %"compiler/typed:Arm"
  br label %start
start:
  br label %bb0
bb0:
  %t12 = insertvalue %"compiler/typed:Arm" undef, %"compiler/source:Span" %a0, 0
  %t14 = insertvalue %"compiler/typed:Arm" %t12, { i64, ptr } %a1, 1
  %t16 = insertvalue %"compiler/typed:Arm" %t14, ptr %a2, 2
  %t18 = insertvalue %"compiler/typed:Arm" %t16, ptr %a3, 3
  %t20 = insertvalue %"compiler/typed:Arm" %t18, ptr %a4, 4
  store %"compiler/typed:Arm" %t20, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/typed:Arm", ptr %rv
  ret %"compiler/typed:Arm" %rr
}

define dso_local %"compiler/typed:Bind" @compiler_2ftyped_3aBind_2ector(ptr %v0, ptr %v1, i32 %a0, ptr %a1) #0 {
entry:
  %rv = alloca %"compiler/typed:Bind"
  br label %start
start:
  br label %bb0
bb0:
  %t6 = insertvalue %"compiler/typed:Bind" undef, i32 %a0, 0
  %t8 = insertvalue %"compiler/typed:Bind" %t6, ptr %a1, 1
  store %"compiler/typed:Bind" %t8, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/typed:Bind", ptr %rv
  ret %"compiler/typed:Bind" %rr
}

define dso_local %"compiler/typed:Block" @compiler_2ftyped_3aBlock_2ector(ptr %v0, ptr %v1, i32 %a0, { i64, ptr } %a1) #0 {
entry:
  %rv = alloca %"compiler/typed:Block"
  br label %start
start:
  br label %bb0
bb0:
  %t6 = insertvalue %"compiler/typed:Block" undef, i32 %a0, 0
  %t8 = insertvalue %"compiler/typed:Block" %t6, { i64, ptr } %a1, 1
  store %"compiler/typed:Block" %t8, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/typed:Block", ptr %rv
  ret %"compiler/typed:Block" %rr
}

define dso_local %"compiler/typed:Elem" @compiler_2ftyped_3aElem_2ector(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, i32 %a2) #0 {
entry:
  %rv = alloca %"compiler/typed:Elem"
  br label %start
start:
  br label %bb0
bb0:
  %t8 = insertvalue %"compiler/typed:Elem" undef, ptr %a0, 0
  %t10 = insertvalue %"compiler/typed:Elem" %t8, ptr %a1, 1
  %t12 = insertvalue %"compiler/typed:Elem" %t10, i32 %a2, 2
  store %"compiler/typed:Elem" %t12, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/typed:Elem", ptr %rv
  ret %"compiler/typed:Elem" %rr
}

define dso_local %"compiler/typed:If" @compiler_2ftyped_3aIf_2ector(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1, ptr %a2) #0 {
entry:
  %rv = alloca %"compiler/typed:If"
  br label %start
start:
  br label %bb0
bb0:
  %t8 = insertvalue %"compiler/typed:If" undef, ptr %a0, 0
  %t10 = insertvalue %"compiler/typed:If" %t8, ptr %a1, 1
  %t12 = insertvalue %"compiler/typed:If" %t10, ptr %a2, 2
  store %"compiler/typed:If" %t12, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/typed:If", ptr %rv
  ret %"compiler/typed:If" %rr
}

define dso_local void @compiler_2ftyped_3aLandings_2ector(ptr %out, ptr %v0, ptr %v1, ptr %v2, ptr %v3, { i64, ptr } %a0, { i64, ptr } %a1, { i64, ptr } %a2) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l3 = alloca { i64, ptr }
  %l4 = alloca { i64, ptr }
  %l5 = alloca { i64, ptr }
  %l6 = alloca { i64, ptr }
  %l7 = alloca { i64, ptr }
  %l8 = alloca { i64, ptr }
  %l9 = alloca { i64, ptr }
  %l10 = alloca i1
  %l11 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l12 = alloca i64
  %l13 = alloca i64
  %l14 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l15 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l16 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l17 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l18 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l19 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l20 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l21 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l22 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l23 = alloca i64
  %l24 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l30 = alloca i64
  %l33 = alloca i64
  %l36 = alloca i64
  %l39 = alloca i64
  %l43 = alloca i64
  %l46 = alloca i64
  %l49 = alloca i64
  %l52 = alloca i64
  %l55 = alloca i64
  %l57 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l59 = alloca i64
  %l61 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l63 = alloca i64
  %l65 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l67 = alloca i64
  %l69 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l71 = alloca i64
  %l73 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l75 = alloca i64
  %l77 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l79 = alloca i64
  %l81 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l83 = alloca i64
  %l85 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l87 = alloca i64
  %l89 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l91 = alloca i64
  %l93 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l95 = alloca i64
  %l97 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l99 = alloca i64
  %l101 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l103 = alloca %"compiler/typed:Landings"
  %t45 = alloca i64
  store { i64, ptr } %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t1, ptr %l3, !tbaa !27
  store { i64, ptr } %a1, ptr %l4, !tbaa !27
  store { i64, ptr } %a2, ptr %l5, !tbaa !27
  %t7 = ptrtoint ptr %v3 to i64
  store i64 %t7, ptr %l30, !tbaa !24
  %t8 = load i1, ptr @olang_2esole_2ecompiler_2ftyped_3aLandings_2e3
  br i1 %t8, label %bb1, label %bb2
bb1:
  %t10 = call ptr @__olang_region_make(ptr %v3)
  %t11 = ptrtoint ptr %t10 to i64
  store i64 %t11, ptr %l30, !tbaa !24
  br label %bb2
bb2:
  %t12 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t14 = extractvalue { i64, ptr } %t12, 0
  store i64 %t14, ptr %l33, !tbaa !24
  %t15 = load i64, ptr %l33, !tbaa !24
  %t16 = icmp sge i64 %t15, 0
  br i1 %t16, label %bb3, label %bb4
bb3:
  %t18 = load i64, ptr %l33, !tbaa !24
  %t19 = mul i64 %t18, 1
  %t20 = load i64, ptr %l30
  %t21 = inttoptr i64 %t20 to ptr
  %t22 = call ptr @__olang_scope_alloc_zeroed(ptr %t21, i64 %t19)
  %t23 = insertvalue { i64, ptr } undef, i64 %t18, 0
  %t24 = insertvalue { i64, ptr } %t23, ptr %t22, 1
  store { i64, ptr } %t24, ptr %l6, !tbaa !27
  %t26 = ptrtoint ptr %v3 to i64
  store i64 %t26, ptr %l36, !tbaa !24
  %t27 = load i1, ptr @olang_2esole_2ecompiler_2ftyped_3aLandings_2e4
  br i1 %t27, label %bb5, label %bb6
bb4:
  call void @__olang_check_failed(ptr @olang_loc_6cac4c556ee1b7d9_257131421adb63ad)
  unreachable
bb5:
  %t29 = call ptr @__olang_region_make(ptr %v3)
  %t30 = ptrtoint ptr %t29 to i64
  store i64 %t30, ptr %l36, !tbaa !24
  br label %bb6
bb6:
  %t31 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t33 = extractvalue { i64, ptr } %t31, 0
  store i64 %t33, ptr %l39, !tbaa !24
  %t34 = load i64, ptr %l39, !tbaa !24
  %t35 = icmp sge i64 %t34, 0
  br i1 %t35, label %bb7, label %bb8
bb7:
  %t37 = load i64, ptr %l39, !tbaa !24
  %t38 = icmp sle i64 %t37, 1152921504606846975
  br i1 %t38, label %bb9, label %bb10
bb8:
  call void @__olang_check_failed(ptr @olang_loc_52c63b14e30804cc_be8191a117211c80)
  unreachable
bb9:
  %t40 = load i64, ptr %l39, !tbaa !24
  %t41 = mul i64 %t40, 8
  %t42 = load i64, ptr %l36
  %t43 = inttoptr i64 %t42 to ptr
  %t44 = call ptr @__olang_scope_alloc(ptr %t43, i64 %t41)
  store i64 0, ptr %t45
  br label %fill.46
fill.46:
  %t49 = load i64, ptr %t45
  %t50 = icmp slt i64 %t49, %t40
  br i1 %t50, label %fillb.47, label %filld.48
fillb.47:
  %t51 = getelementptr i64, ptr %t44, i64 %t49
  store i64 -1, ptr %t51
  %t52 = add i64 %t49, 1
  store i64 %t52, ptr %t45
  br label %fill.46
filld.48:
  %t53 = insertvalue { i64, ptr } undef, i64 %t40, 0
  %t54 = insertvalue { i64, ptr } %t53, ptr %t44, 1
  store { i64, ptr } %t54, ptr %l7, !tbaa !27
  %t56 = ptrtoint ptr %v3 to i64
  store i64 %t56, ptr %l43, !tbaa !24
  %t57 = load i1, ptr @olang_2esole_2ecompiler_2ftyped_3aLandings_2e5
  br i1 %t57, label %bb11, label %bb12
bb10:
  call void @__olang_check_failed(ptr @olang_loc_52c63b14e30804cc_be8191a117211c80)
  unreachable
bb11:
  %t59 = call ptr @__olang_region_make(ptr %v3)
  %t60 = ptrtoint ptr %t59 to i64
  store i64 %t60, ptr %l43, !tbaa !24
  br label %bb12
bb12:
  %t61 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t63 = extractvalue { i64, ptr } %t61, 0
  store i64 %t63, ptr %l46, !tbaa !24
  %t64 = load i64, ptr %l46, !tbaa !24
  %t65 = icmp sge i64 %t64, 0
  br i1 %t65, label %bb13, label %bb14
bb13:
  %t67 = load i64, ptr %l46, !tbaa !24
  %t68 = mul i64 %t67, 1
  %t69 = load i64, ptr %l43
  %t70 = inttoptr i64 %t69 to ptr
  %t71 = call ptr @__olang_scope_alloc_zeroed(ptr %t70, i64 %t68)
  %t72 = insertvalue { i64, ptr } undef, i64 %t67, 0
  %t73 = insertvalue { i64, ptr } %t72, ptr %t71, 1
  store { i64, ptr } %t73, ptr %l8, !tbaa !27
  %t75 = ptrtoint ptr %v3 to i64
  store i64 %t75, ptr %l49, !tbaa !24
  %t76 = load i1, ptr @olang_2esole_2ecompiler_2ftyped_3aLandings_2e6
  br i1 %t76, label %bb15, label %bb16
bb14:
  call void @__olang_check_failed(ptr @olang_loc_75ea3af438a3ca2f_999b6c305f7ce623)
  unreachable
bb15:
  %t78 = call ptr @__olang_region_make(ptr %v3)
  %t79 = ptrtoint ptr %t78 to i64
  store i64 %t79, ptr %l49, !tbaa !24
  br label %bb16
bb16:
  %t80 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t82 = extractvalue { i64, ptr } %t80, 0
  store i64 %t82, ptr %l52, !tbaa !24
  %t83 = load i64, ptr %l52, !tbaa !24
  %t84 = icmp sge i64 %t83, 0
  br i1 %t84, label %bb17, label %bb18
bb17:
  %t86 = load i64, ptr %l52, !tbaa !24
  %t87 = mul i64 %t86, 1
  %t88 = load i64, ptr %l49
  %t89 = inttoptr i64 %t88 to ptr
  %t90 = call ptr @__olang_scope_alloc_zeroed(ptr %t89, i64 %t87)
  %t91 = insertvalue { i64, ptr } undef, i64 %t86, 0
  %t92 = insertvalue { i64, ptr } %t91, ptr %t90, 1
  store { i64, ptr } %t92, ptr %l9, !tbaa !27
  store i1 false, ptr %l10, !tbaa !21
  %t94 = ptrtoint ptr %v3 to i64
  store i64 %t94, ptr %l55, !tbaa !24
  %t95 = load i1, ptr @olang_2esole_2ecompiler_2ftyped_3aLandings_2e8
  br i1 %t95, label %bb19, label %bb20
bb18:
  call void @__olang_check_failed(ptr @olang_loc_5a80d8a416bdb25a_ede72ef348da89ae)
  unreachable
bb19:
  %t97 = call ptr @__olang_region_make(ptr %v3)
  %t98 = ptrtoint ptr %t97 to i64
  store i64 %t98, ptr %l55, !tbaa !24
  br label %bb20
bb20:
  %t99 = load i64, ptr %l55
  %t100 = inttoptr i64 %t99 to ptr
  %t101 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3alandLoop_3e_2ector(ptr %t100, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t101, ptr %l57
  br label %bb21
bb21:
  %t102 = load i1, ptr @olang_2esole_2ecompiler_2ftyped_3aLandings_2e8
  br i1 %t102, label %bb22, label %bb23
bb22:
  %t104 = load i64, ptr %l55
  %t105 = inttoptr i64 %t104 to ptr
  %t106 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l57, i32 0, i32 0
  %t107 = load { i64, ptr }, ptr %t106
  %t108 = extractvalue { i64, ptr } %t107, 1
  %t109 = call ptr @__olang_region_or(ptr %t108, ptr null)
  %t110 = icmp ne ptr %t109, null
  %t111 = select i1 %t110, ptr %t109, ptr null
  %t112 = icmp eq ptr %t111, %t105
  call void @__olang_region_settle(ptr %t105, i1 %t112)
  br label %bb23
bb23:
  %t113 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l57
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t113, ptr %l11
  store i64 0, ptr %l12, !tbaa !24
  store i64 0, ptr %l13, !tbaa !24
  %t114 = ptrtoint ptr %v3 to i64
  store i64 %t114, ptr %l59, !tbaa !24
  %t115 = load i1, ptr @olang_2esole_2ecompiler_2ftyped_3aLandings_2e11
  br i1 %t115, label %bb24, label %bb25
bb24:
  %t117 = call ptr @__olang_region_make(ptr %v3)
  %t118 = ptrtoint ptr %t117 to i64
  store i64 %t118, ptr %l59, !tbaa !24
  br label %bb25
bb25:
  %t119 = load i64, ptr %l59
  %t120 = inttoptr i64 %t119 to ptr
  %t121 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e(ptr %t120)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t121, ptr %l61
  br label %bb26
bb26:
  %t122 = load i1, ptr @olang_2esole_2ecompiler_2ftyped_3aLandings_2e11
  br i1 %t122, label %bb27, label %bb28
bb27:
  %t124 = load i64, ptr %l59
  %t125 = inttoptr i64 %t124 to ptr
  %t126 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l61, i32 0, i32 2
  %t127 = load { i64, ptr }, ptr %t126
  %t128 = extractvalue { i64, ptr } %t127, 1
  %t129 = call ptr @__olang_region_or(ptr %t128, ptr null)
  %t130 = icmp ne ptr %t129, null
  %t131 = select i1 %t130, ptr %t129, ptr null
  %t132 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l61, i32 0, i32 1
  %t133 = load { i64, ptr }, ptr %t132
  %t134 = extractvalue { i64, ptr } %t133, 1
  %t135 = call ptr @__olang_region_or(ptr %t134, ptr null)
  %t136 = icmp ne ptr %t135, null
  %t137 = select i1 %t136, ptr %t135, ptr %t131
  %t138 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l61, i32 0, i32 0
  %t139 = load { i64, ptr }, ptr %t138
  %t140 = extractvalue { i64, ptr } %t139, 1
  %t141 = call ptr @__olang_region_or(ptr %t140, ptr null)
  %t142 = icmp ne ptr %t141, null
  %t143 = select i1 %t142, ptr %t141, ptr %t137
  %t144 = icmp eq ptr %t143, %t125
  call void @__olang_region_settle(ptr %t125, i1 %t144)
  br label %bb28
bb28:
  %t145 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l61
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t145, ptr %l14
  %t146 = ptrtoint ptr %v3 to i64
  store i64 %t146, ptr %l63, !tbaa !24
  %t147 = load i1, ptr @olang_2esole_2ecompiler_2ftyped_3aLandings_2e12
  br i1 %t147, label %bb29, label %bb30
bb29:
  %t149 = call ptr @__olang_region_make(ptr %v3)
  %t150 = ptrtoint ptr %t149 to i64
  store i64 %t150, ptr %l63, !tbaa !24
  br label %bb30
bb30:
  %t151 = load i64, ptr %l63
  %t152 = inttoptr i64 %t151 to ptr
  %t153 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e(ptr %t152)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t153, ptr %l65
  br label %bb31
bb31:
  %t154 = load i1, ptr @olang_2esole_2ecompiler_2ftyped_3aLandings_2e12
  br i1 %t154, label %bb32, label %bb33
bb32:
  %t156 = load i64, ptr %l63
  %t157 = inttoptr i64 %t156 to ptr
  %t158 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l65, i32 0, i32 2
  %t159 = load { i64, ptr }, ptr %t158
  %t160 = extractvalue { i64, ptr } %t159, 1
  %t161 = call ptr @__olang_region_or(ptr %t160, ptr null)
  %t162 = icmp ne ptr %t161, null
  %t163 = select i1 %t162, ptr %t161, ptr null
  %t164 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l65, i32 0, i32 1
  %t165 = load { i64, ptr }, ptr %t164
  %t166 = extractvalue { i64, ptr } %t165, 1
  %t167 = call ptr @__olang_region_or(ptr %t166, ptr null)
  %t168 = icmp ne ptr %t167, null
  %t169 = select i1 %t168, ptr %t167, ptr %t163
  %t170 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l65, i32 0, i32 0
  %t171 = load { i64, ptr }, ptr %t170
  %t172 = extractvalue { i64, ptr } %t171, 1
  %t173 = call ptr @__olang_region_or(ptr %t172, ptr null)
  %t174 = icmp ne ptr %t173, null
  %t175 = select i1 %t174, ptr %t173, ptr %t169
  %t176 = icmp eq ptr %t175, %t157
  call void @__olang_region_settle(ptr %t157, i1 %t176)
  br label %bb33
bb33:
  %t177 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l65
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t177, ptr %l15
  %t178 = ptrtoint ptr %v3 to i64
  store i64 %t178, ptr %l67, !tbaa !24
  %t179 = load i1, ptr @olang_2esole_2ecompiler_2ftyped_3aLandings_2e13
  br i1 %t179, label %bb34, label %bb35
bb34:
  %t181 = call ptr @__olang_region_make(ptr %v3)
  %t182 = ptrtoint ptr %t181 to i64
  store i64 %t182, ptr %l67, !tbaa !24
  br label %bb35
bb35:
  %t183 = load i64, ptr %l67
  %t184 = inttoptr i64 %t183 to ptr
  %t185 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %t184, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t185, ptr %l69
  br label %bb36
bb36:
  %t186 = load i1, ptr @olang_2esole_2ecompiler_2ftyped_3aLandings_2e13
  br i1 %t186, label %bb37, label %bb38
bb37:
  %t188 = load i64, ptr %l67
  %t189 = inttoptr i64 %t188 to ptr
  %t190 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l69, i32 0, i32 0
  %t191 = load { i64, ptr }, ptr %t190
  %t192 = extractvalue { i64, ptr } %t191, 1
  %t193 = call ptr @__olang_region_or(ptr %t192, ptr null)
  %t194 = icmp ne ptr %t193, null
  %t195 = select i1 %t194, ptr %t193, ptr null
  %t196 = icmp eq ptr %t195, %t189
  call void @__olang_region_settle(ptr %t189, i1 %t196)
  br label %bb38
bb38:
  %t197 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l69
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t197, ptr %l16
  %t198 = ptrtoint ptr %v3 to i64
  store i64 %t198, ptr %l71, !tbaa !24
  %t199 = load i1, ptr @olang_2esole_2ecompiler_2ftyped_3aLandings_2e14
  br i1 %t199, label %bb39, label %bb40
bb39:
  %t201 = call ptr @__olang_region_make(ptr %v3)
  %t202 = ptrtoint ptr %t201 to i64
  store i64 %t202, ptr %l71, !tbaa !24
  br label %bb40
bb40:
  %t203 = load i64, ptr %l71
  %t204 = inttoptr i64 %t203 to ptr
  %t205 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %t204, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t205, ptr %l73
  br label %bb41
bb41:
  %t206 = load i1, ptr @olang_2esole_2ecompiler_2ftyped_3aLandings_2e14
  br i1 %t206, label %bb42, label %bb43
bb42:
  %t208 = load i64, ptr %l71
  %t209 = inttoptr i64 %t208 to ptr
  %t210 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l73, i32 0, i32 0
  %t211 = load { i64, ptr }, ptr %t210
  %t212 = extractvalue { i64, ptr } %t211, 1
  %t213 = call ptr @__olang_region_or(ptr %t212, ptr null)
  %t214 = icmp ne ptr %t213, null
  %t215 = select i1 %t214, ptr %t213, ptr null
  %t216 = icmp eq ptr %t215, %t209
  call void @__olang_region_settle(ptr %t209, i1 %t216)
  br label %bb43
bb43:
  %t217 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l73
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t217, ptr %l17
  %t218 = ptrtoint ptr %v3 to i64
  store i64 %t218, ptr %l75, !tbaa !24
  %t219 = load i1, ptr @olang_2esole_2ecompiler_2ftyped_3aLandings_2e15
  br i1 %t219, label %bb44, label %bb45
bb44:
  %t221 = call ptr @__olang_region_make(ptr %v3)
  %t222 = ptrtoint ptr %t221 to i64
  store i64 %t222, ptr %l75, !tbaa !24
  br label %bb45
bb45:
  %t223 = load i64, ptr %l75
  %t224 = inttoptr i64 %t223 to ptr
  %t225 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %t224, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t225, ptr %l77
  br label %bb46
bb46:
  %t226 = load i1, ptr @olang_2esole_2ecompiler_2ftyped_3aLandings_2e15
  br i1 %t226, label %bb47, label %bb48
bb47:
  %t228 = load i64, ptr %l75
  %t229 = inttoptr i64 %t228 to ptr
  %t230 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l77, i32 0, i32 0
  %t231 = load { i64, ptr }, ptr %t230
  %t232 = extractvalue { i64, ptr } %t231, 1
  %t233 = call ptr @__olang_region_or(ptr %t232, ptr null)
  %t234 = icmp ne ptr %t233, null
  %t235 = select i1 %t234, ptr %t233, ptr null
  %t236 = icmp eq ptr %t235, %t229
  call void @__olang_region_settle(ptr %t229, i1 %t236)
  br label %bb48
bb48:
  %t237 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l77
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t237, ptr %l18
  %t238 = ptrtoint ptr %v3 to i64
  store i64 %t238, ptr %l79, !tbaa !24
  %t239 = load i1, ptr @olang_2esole_2ecompiler_2ftyped_3aLandings_2e16
  br i1 %t239, label %bb49, label %bb50
bb49:
  %t241 = call ptr @__olang_region_make(ptr %v3)
  %t242 = ptrtoint ptr %t241 to i64
  store i64 %t242, ptr %l79, !tbaa !24
  br label %bb50
bb50:
  %t243 = load i64, ptr %l79
  %t244 = inttoptr i64 %t243 to ptr
  %t245 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %t244, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t245, ptr %l81
  br label %bb51
bb51:
  %t246 = load i1, ptr @olang_2esole_2ecompiler_2ftyped_3aLandings_2e16
  br i1 %t246, label %bb52, label %bb53
bb52:
  %t248 = load i64, ptr %l79
  %t249 = inttoptr i64 %t248 to ptr
  %t250 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l81, i32 0, i32 0
  %t251 = load { i64, ptr }, ptr %t250
  %t252 = extractvalue { i64, ptr } %t251, 1
  %t253 = call ptr @__olang_region_or(ptr %t252, ptr null)
  %t254 = icmp ne ptr %t253, null
  %t255 = select i1 %t254, ptr %t253, ptr null
  %t256 = icmp eq ptr %t255, %t249
  call void @__olang_region_settle(ptr %t249, i1 %t256)
  br label %bb53
bb53:
  %t257 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l81
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t257, ptr %l19
  %t258 = ptrtoint ptr %v3 to i64
  store i64 %t258, ptr %l83, !tbaa !24
  %t259 = load i1, ptr @olang_2esole_2ecompiler_2ftyped_3aLandings_2e17
  br i1 %t259, label %bb54, label %bb55
bb54:
  %t261 = call ptr @__olang_region_make(ptr %v3)
  %t262 = ptrtoint ptr %t261 to i64
  store i64 %t262, ptr %l83, !tbaa !24
  br label %bb55
bb55:
  %t263 = load i64, ptr %l83
  %t264 = inttoptr i64 %t263 to ptr
  %t265 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cBool_3e_2ector(ptr %t264, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t265, ptr %l85
  br label %bb56
bb56:
  %t266 = load i1, ptr @olang_2esole_2ecompiler_2ftyped_3aLandings_2e17
  br i1 %t266, label %bb57, label %bb58
bb57:
  %t268 = load i64, ptr %l83
  %t269 = inttoptr i64 %t268 to ptr
  %t270 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l85, i32 0, i32 0
  %t271 = load { i64, ptr }, ptr %t270
  %t272 = extractvalue { i64, ptr } %t271, 1
  %t273 = call ptr @__olang_region_or(ptr %t272, ptr null)
  %t274 = icmp ne ptr %t273, null
  %t275 = select i1 %t274, ptr %t273, ptr null
  %t276 = icmp eq ptr %t275, %t269
  call void @__olang_region_settle(ptr %t269, i1 %t276)
  br label %bb58
bb58:
  %t277 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l85
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t277, ptr %l20
  %t278 = ptrtoint ptr %v3 to i64
  store i64 %t278, ptr %l87, !tbaa !24
  %t279 = load i1, ptr @olang_2esole_2ecompiler_2ftyped_3aLandings_2e18
  br i1 %t279, label %bb59, label %bb60
bb59:
  %t281 = call ptr @__olang_region_make(ptr %v3)
  %t282 = ptrtoint ptr %t281 to i64
  store i64 %t282, ptr %l87, !tbaa !24
  br label %bb60
bb60:
  %t283 = load i64, ptr %l87
  %t284 = inttoptr i64 %t283 to ptr
  %t285 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cBool_3e_2ector(ptr %t284, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t285, ptr %l89
  br label %bb61
bb61:
  %t286 = load i1, ptr @olang_2esole_2ecompiler_2ftyped_3aLandings_2e18
  br i1 %t286, label %bb62, label %bb63
bb62:
  %t288 = load i64, ptr %l87
  %t289 = inttoptr i64 %t288 to ptr
  %t290 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l89, i32 0, i32 0
  %t291 = load { i64, ptr }, ptr %t290
  %t292 = extractvalue { i64, ptr } %t291, 1
  %t293 = call ptr @__olang_region_or(ptr %t292, ptr null)
  %t294 = icmp ne ptr %t293, null
  %t295 = select i1 %t294, ptr %t293, ptr null
  %t296 = icmp eq ptr %t295, %t289
  call void @__olang_region_settle(ptr %t289, i1 %t296)
  br label %bb63
bb63:
  %t297 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l89
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t297, ptr %l21
  %t298 = ptrtoint ptr %v3 to i64
  store i64 %t298, ptr %l91, !tbaa !24
  %t299 = load i1, ptr @olang_2esole_2ecompiler_2ftyped_3aLandings_2e19
  br i1 %t299, label %bb64, label %bb65
bb64:
  %t301 = call ptr @__olang_region_make(ptr %v3)
  %t302 = ptrtoint ptr %t301 to i64
  store i64 %t302, ptr %l91, !tbaa !24
  br label %bb65
bb65:
  %t303 = load i64, ptr %l91
  %t304 = inttoptr i64 %t303 to ptr
  %t305 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cBool_3e_2ector(ptr %t304, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t305, ptr %l93
  br label %bb66
bb66:
  %t306 = load i1, ptr @olang_2esole_2ecompiler_2ftyped_3aLandings_2e19
  br i1 %t306, label %bb67, label %bb68
bb67:
  %t308 = load i64, ptr %l91
  %t309 = inttoptr i64 %t308 to ptr
  %t310 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l93, i32 0, i32 0
  %t311 = load { i64, ptr }, ptr %t310
  %t312 = extractvalue { i64, ptr } %t311, 1
  %t313 = call ptr @__olang_region_or(ptr %t312, ptr null)
  %t314 = icmp ne ptr %t313, null
  %t315 = select i1 %t314, ptr %t313, ptr null
  %t316 = icmp eq ptr %t315, %t309
  call void @__olang_region_settle(ptr %t309, i1 %t316)
  br label %bb68
bb68:
  %t317 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l93
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t317, ptr %l22
  store i64 0, ptr %l23, !tbaa !24
  %t318 = ptrtoint ptr %v3 to i64
  store i64 %t318, ptr %l95, !tbaa !24
  %t319 = load i1, ptr @olang_2esole_2ecompiler_2ftyped_3aLandings_2e21
  br i1 %t319, label %bb69, label %bb70
bb69:
  %t321 = call ptr @__olang_region_make(ptr %v3)
  %t322 = ptrtoint ptr %t321 to i64
  store i64 %t322, ptr %l95, !tbaa !24
  br label %bb70
bb70:
  %t323 = load i64, ptr %l95
  %t324 = inttoptr i64 %t323 to ptr
  %t325 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %t324, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t325, ptr %l97
  br label %bb71
bb71:
  %t326 = load i1, ptr @olang_2esole_2ecompiler_2ftyped_3aLandings_2e21
  br i1 %t326, label %bb72, label %bb73
bb72:
  %t328 = load i64, ptr %l95
  %t329 = inttoptr i64 %t328 to ptr
  %t330 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l97, i32 0, i32 0
  %t331 = load { i64, ptr }, ptr %t330
  %t332 = extractvalue { i64, ptr } %t331, 1
  %t333 = call ptr @__olang_region_or(ptr %t332, ptr null)
  %t334 = icmp ne ptr %t333, null
  %t335 = select i1 %t334, ptr %t333, ptr null
  %t336 = icmp eq ptr %t335, %t329
  call void @__olang_region_settle(ptr %t329, i1 %t336)
  br label %bb73
bb73:
  %t337 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l97
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t337, ptr %l24
  %t338 = ptrtoint ptr %v3 to i64
  store i64 %t338, ptr %l99, !tbaa !24
  %t339 = load i1, ptr @olang_2esole_2ecompiler_2ftyped_3aLandings_2e22
  br i1 %t339, label %bb74, label %bb75
bb74:
  %t341 = call ptr @__olang_region_make(ptr %v3)
  %t342 = ptrtoint ptr %t341 to i64
  store i64 %t342, ptr %l99, !tbaa !24
  br label %bb75
bb75:
  %t343 = load i64, ptr %l99
  %t344 = inttoptr i64 %t343 to ptr
  %t345 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %t344, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t345, ptr %l101
  br label %bb76
bb76:
  %t346 = load i1, ptr @olang_2esole_2ecompiler_2ftyped_3aLandings_2e22
  br i1 %t346, label %bb77, label %bb78
bb77:
  %t348 = load i64, ptr %l99
  %t349 = inttoptr i64 %t348 to ptr
  %t350 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l101, i32 0, i32 0
  %t351 = load { i64, ptr }, ptr %t350
  %t352 = extractvalue { i64, ptr } %t351, 1
  %t353 = call ptr @__olang_region_or(ptr %t352, ptr null)
  %t354 = icmp ne ptr %t353, null
  %t355 = select i1 %t354, ptr %t353, ptr null
  %t356 = icmp eq ptr %t355, %t349
  call void @__olang_region_settle(ptr %t349, i1 %t356)
  br label %bb78
bb78:
  %t357 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l101
  %t358 = getelementptr %"compiler/typed:Landings", ptr %l103, i32 0, i32 0
  %t359 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t359, ptr %t358, !tbaa !27
  %t360 = getelementptr %"compiler/typed:Landings", ptr %l103, i32 0, i32 1
  %t361 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t361, ptr %t360, !tbaa !27
  %t362 = getelementptr %"compiler/typed:Landings", ptr %l103, i32 0, i32 2
  %t363 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t363, ptr %t362, !tbaa !27
  %t364 = getelementptr %"compiler/typed:Landings", ptr %l103, i32 0, i32 3
  %t365 = load { i64, ptr }, ptr %l6, !tbaa !27
  store { i64, ptr } %t365, ptr %t364, !tbaa !27
  %t366 = getelementptr %"compiler/typed:Landings", ptr %l103, i32 0, i32 4
  %t367 = load { i64, ptr }, ptr %l7, !tbaa !27
  store { i64, ptr } %t367, ptr %t366, !tbaa !27
  %t368 = getelementptr %"compiler/typed:Landings", ptr %l103, i32 0, i32 5
  %t369 = load { i64, ptr }, ptr %l8, !tbaa !27
  store { i64, ptr } %t369, ptr %t368, !tbaa !27
  %t370 = getelementptr %"compiler/typed:Landings", ptr %l103, i32 0, i32 6
  %t371 = load { i64, ptr }, ptr %l9, !tbaa !27
  store { i64, ptr } %t371, ptr %t370, !tbaa !27
  %t372 = getelementptr %"compiler/typed:Landings", ptr %l103, i32 0, i32 7
  %t373 = load i1, ptr %l10, !tbaa !21
  store i1 %t373, ptr %t372, !tbaa !21
  %t374 = getelementptr %"compiler/typed:Landings", ptr %l103, i32 0, i32 8
  %t375 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l11
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t375, ptr %t374
  %t376 = getelementptr %"compiler/typed:Landings", ptr %l103, i32 0, i32 9
  %t377 = load i64, ptr %l12, !tbaa !24
  store i64 %t377, ptr %t376, !tbaa !24
  %t378 = getelementptr %"compiler/typed:Landings", ptr %l103, i32 0, i32 10
  %t379 = load i64, ptr %l13, !tbaa !24
  store i64 %t379, ptr %t378, !tbaa !24
  %t380 = getelementptr %"compiler/typed:Landings", ptr %l103, i32 0, i32 11
  %t381 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l14
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t381, ptr %t380
  %t382 = getelementptr %"compiler/typed:Landings", ptr %l103, i32 0, i32 12
  %t383 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l15
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t383, ptr %t382
  %t384 = getelementptr %"compiler/typed:Landings", ptr %l103, i32 0, i32 13
  %t385 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l16
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t385, ptr %t384
  %t386 = getelementptr %"compiler/typed:Landings", ptr %l103, i32 0, i32 14
  %t387 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l17
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t387, ptr %t386
  %t388 = getelementptr %"compiler/typed:Landings", ptr %l103, i32 0, i32 15
  %t389 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l18
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t389, ptr %t388
  %t390 = getelementptr %"compiler/typed:Landings", ptr %l103, i32 0, i32 16
  %t391 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l19
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t391, ptr %t390
  %t392 = getelementptr %"compiler/typed:Landings", ptr %l103, i32 0, i32 17
  %t393 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l20
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t393, ptr %t392
  %t394 = getelementptr %"compiler/typed:Landings", ptr %l103, i32 0, i32 18
  %t395 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l21
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t395, ptr %t394
  %t396 = getelementptr %"compiler/typed:Landings", ptr %l103, i32 0, i32 19
  %t397 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l22
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t397, ptr %t396
  %t398 = getelementptr %"compiler/typed:Landings", ptr %l103, i32 0, i32 20
  %t399 = load i64, ptr %l23, !tbaa !24
  store i64 %t399, ptr %t398, !tbaa !24
  %t400 = getelementptr %"compiler/typed:Landings", ptr %l103, i32 0, i32 21
  %t401 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l24
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t401, ptr %t400
  %t402 = getelementptr %"compiler/typed:Landings", ptr %l103, i32 0, i32 22
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t357, ptr %t402
  %t404 = getelementptr %"compiler/typed:Landings", ptr %l103, i32 0, i32 23
  store i64 -1, ptr %t404, !tbaa !24
  call void @llvm.memmove.p0.p0.i64(ptr %out, ptr %l103, i64 616, i1 false)
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2ftyped_3aLocalUses_2ector(ptr %out, ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1) #0 {
entry:
  %l2 = alloca ptr
  %l3 = alloca ptr
  %l4 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l5 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l6 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l7 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l8 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l9 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l10 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l11 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l12 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l13 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l14 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l15 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l16 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l17 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l18 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l19 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l20 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l21 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l22 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l23 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
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
  %l57 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l58 = alloca i64
  %l60 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l62 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l63 = alloca i64
  %l65 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l67 = alloca i64
  %l69 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l71 = alloca i64
  %l73 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l75 = alloca i64
  %l77 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l79 = alloca i64
  %l81 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l83 = alloca i64
  %l85 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l87 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l88 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l89 = alloca i64
  %l91 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l93 = alloca i64
  %l95 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l97 = alloca i64
  %l99 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l101 = alloca %"compiler/typed:LocalUses"
  br label %start
start:
  br label %bb0
bb0:
  store ptr %a0, ptr %l2, !tbaa !29
  store ptr %a1, ptr %l3, !tbaa !29
  %t5 = ptrtoint ptr %v2 to i64
  store i64 %t5, ptr %l29, !tbaa !24
  %t6 = load i1, ptr @olang_2esole_2ecompiler_2ftyped_3aLocalUses_2e2
  br i1 %t6, label %bb1, label %bb2
bb1:
  %t8 = call ptr @__olang_region_make(ptr %v2)
  %t9 = ptrtoint ptr %t8 to i64
  store i64 %t9, ptr %l29, !tbaa !24
  br label %bb2
bb2:
  %t10 = load i64, ptr %l29
  %t11 = inttoptr i64 %t10 to ptr
  %t12 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cBool_3e_2ector(ptr %t11, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t12, ptr %l31
  br label %bb3
bb3:
  %t13 = load i1, ptr @olang_2esole_2ecompiler_2ftyped_3aLocalUses_2e2
  br i1 %t13, label %bb4, label %bb5
bb4:
  %t15 = load i64, ptr %l29
  %t16 = inttoptr i64 %t15 to ptr
  %t17 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l31, i32 0, i32 0
  %t18 = load { i64, ptr }, ptr %t17
  %t19 = extractvalue { i64, ptr } %t18, 1
  %t20 = call ptr @__olang_region_or(ptr %t19, ptr null)
  %t21 = icmp ne ptr %t20, null
  %t22 = select i1 %t21, ptr %t20, ptr null
  %t23 = icmp eq ptr %t22, %t16
  call void @__olang_region_settle(ptr %t16, i1 %t23)
  br label %bb5
bb5:
  %t24 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l31
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t24, ptr %l4
  %t25 = ptrtoint ptr %v2 to i64
  store i64 %t25, ptr %l33, !tbaa !24
  %t26 = load i1, ptr @olang_2esole_2ecompiler_2ftyped_3aLocalUses_2e3
  br i1 %t26, label %bb6, label %bb7
bb6:
  %t28 = call ptr @__olang_region_make(ptr %v2)
  %t29 = ptrtoint ptr %t28 to i64
  store i64 %t29, ptr %l33, !tbaa !24
  br label %bb7
bb7:
  %t30 = load i64, ptr %l33
  %t31 = inttoptr i64 %t30 to ptr
  %t32 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cBool_3e_2ector(ptr %t31, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t32, ptr %l35
  br label %bb8
bb8:
  %t33 = load i1, ptr @olang_2esole_2ecompiler_2ftyped_3aLocalUses_2e3
  br i1 %t33, label %bb9, label %bb10
bb9:
  %t35 = load i64, ptr %l33
  %t36 = inttoptr i64 %t35 to ptr
  %t37 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l35, i32 0, i32 0
  %t38 = load { i64, ptr }, ptr %t37
  %t39 = extractvalue { i64, ptr } %t38, 1
  %t40 = call ptr @__olang_region_or(ptr %t39, ptr null)
  %t41 = icmp ne ptr %t40, null
  %t42 = select i1 %t41, ptr %t40, ptr null
  %t43 = icmp eq ptr %t42, %t36
  call void @__olang_region_settle(ptr %t36, i1 %t43)
  br label %bb10
bb10:
  %t44 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l35
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t44, ptr %l5
  %t45 = ptrtoint ptr %v2 to i64
  store i64 %t45, ptr %l37, !tbaa !24
  %t46 = load i1, ptr @olang_2esole_2ecompiler_2ftyped_3aLocalUses_2e4
  br i1 %t46, label %bb11, label %bb12
bb11:
  %t48 = call ptr @__olang_region_make(ptr %v2)
  %t49 = ptrtoint ptr %t48 to i64
  store i64 %t49, ptr %l37, !tbaa !24
  br label %bb12
bb12:
  %t50 = load i64, ptr %l37
  %t51 = inttoptr i64 %t50 to ptr
  %t52 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cBool_3e_2ector(ptr %t51, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t52, ptr %l39
  br label %bb13
bb13:
  %t53 = load i1, ptr @olang_2esole_2ecompiler_2ftyped_3aLocalUses_2e4
  br i1 %t53, label %bb14, label %bb15
bb14:
  %t55 = load i64, ptr %l37
  %t56 = inttoptr i64 %t55 to ptr
  %t57 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l39, i32 0, i32 0
  %t58 = load { i64, ptr }, ptr %t57
  %t59 = extractvalue { i64, ptr } %t58, 1
  %t60 = call ptr @__olang_region_or(ptr %t59, ptr null)
  %t61 = icmp ne ptr %t60, null
  %t62 = select i1 %t61, ptr %t60, ptr null
  %t63 = icmp eq ptr %t62, %t56
  call void @__olang_region_settle(ptr %t56, i1 %t63)
  br label %bb15
bb15:
  %t64 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l39
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t64, ptr %l6
  %t65 = ptrtoint ptr %v2 to i64
  store i64 %t65, ptr %l41, !tbaa !24
  %t66 = load i1, ptr @olang_2esole_2ecompiler_2ftyped_3aLocalUses_2e5
  br i1 %t66, label %bb16, label %bb17
bb16:
  %t68 = call ptr @__olang_region_make(ptr %v2)
  %t69 = ptrtoint ptr %t68 to i64
  store i64 %t69, ptr %l41, !tbaa !24
  br label %bb17
bb17:
  %t70 = load i64, ptr %l41
  %t71 = inttoptr i64 %t70 to ptr
  %t72 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cBool_3e_2ector(ptr %t71, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t72, ptr %l43
  br label %bb18
bb18:
  %t73 = load i1, ptr @olang_2esole_2ecompiler_2ftyped_3aLocalUses_2e5
  br i1 %t73, label %bb19, label %bb20
bb19:
  %t75 = load i64, ptr %l41
  %t76 = inttoptr i64 %t75 to ptr
  %t77 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l43, i32 0, i32 0
  %t78 = load { i64, ptr }, ptr %t77
  %t79 = extractvalue { i64, ptr } %t78, 1
  %t80 = call ptr @__olang_region_or(ptr %t79, ptr null)
  %t81 = icmp ne ptr %t80, null
  %t82 = select i1 %t81, ptr %t80, ptr null
  %t83 = icmp eq ptr %t82, %t76
  call void @__olang_region_settle(ptr %t76, i1 %t83)
  br label %bb20
bb20:
  %t84 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l43
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t84, ptr %l7
  %t85 = ptrtoint ptr %v2 to i64
  store i64 %t85, ptr %l45, !tbaa !24
  %t86 = load i1, ptr @olang_2esole_2ecompiler_2ftyped_3aLocalUses_2e6
  br i1 %t86, label %bb21, label %bb22
bb21:
  %t88 = call ptr @__olang_region_make(ptr %v2)
  %t89 = ptrtoint ptr %t88 to i64
  store i64 %t89, ptr %l45, !tbaa !24
  br label %bb22
bb22:
  %t90 = load i64, ptr %l45
  %t91 = inttoptr i64 %t90 to ptr
  %t92 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cBool_3e_2ector(ptr %t91, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t92, ptr %l47
  br label %bb23
bb23:
  %t93 = load i1, ptr @olang_2esole_2ecompiler_2ftyped_3aLocalUses_2e6
  br i1 %t93, label %bb24, label %bb25
bb24:
  %t95 = load i64, ptr %l45
  %t96 = inttoptr i64 %t95 to ptr
  %t97 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l47, i32 0, i32 0
  %t98 = load { i64, ptr }, ptr %t97
  %t99 = extractvalue { i64, ptr } %t98, 1
  %t100 = call ptr @__olang_region_or(ptr %t99, ptr null)
  %t101 = icmp ne ptr %t100, null
  %t102 = select i1 %t101, ptr %t100, ptr null
  %t103 = icmp eq ptr %t102, %t96
  call void @__olang_region_settle(ptr %t96, i1 %t103)
  br label %bb25
bb25:
  %t104 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l47
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t104, ptr %l8
  %t105 = ptrtoint ptr %v2 to i64
  store i64 %t105, ptr %l49, !tbaa !24
  %t106 = load i1, ptr @olang_2esole_2ecompiler_2ftyped_3aLocalUses_2e7
  br i1 %t106, label %bb26, label %bb27
bb26:
  %t108 = call ptr @__olang_region_make(ptr %v2)
  %t109 = ptrtoint ptr %t108 to i64
  store i64 %t109, ptr %l49, !tbaa !24
  br label %bb27
bb27:
  %t110 = load i64, ptr %l49
  %t111 = inttoptr i64 %t110 to ptr
  %t112 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cBool_3e_2ector(ptr %t111, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t112, ptr %l51
  br label %bb28
bb28:
  %t113 = load i1, ptr @olang_2esole_2ecompiler_2ftyped_3aLocalUses_2e7
  br i1 %t113, label %bb29, label %bb30
bb29:
  %t115 = load i64, ptr %l49
  %t116 = inttoptr i64 %t115 to ptr
  %t117 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l51, i32 0, i32 0
  %t118 = load { i64, ptr }, ptr %t117
  %t119 = extractvalue { i64, ptr } %t118, 1
  %t120 = call ptr @__olang_region_or(ptr %t119, ptr null)
  %t121 = icmp ne ptr %t120, null
  %t122 = select i1 %t121, ptr %t120, ptr null
  %t123 = icmp eq ptr %t122, %t116
  call void @__olang_region_settle(ptr %t116, i1 %t123)
  br label %bb30
bb30:
  %t124 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l51
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t124, ptr %l9
  %t125 = ptrtoint ptr %v2 to i64
  store i64 %t125, ptr %l53, !tbaa !24
  %t126 = load i1, ptr @olang_2esole_2ecompiler_2ftyped_3aLocalUses_2e8
  br i1 %t126, label %bb31, label %bb32
bb31:
  %t128 = call ptr @__olang_region_make(ptr %v2)
  %t129 = ptrtoint ptr %t128 to i64
  store i64 %t129, ptr %l53, !tbaa !24
  br label %bb32
bb32:
  %t130 = load i64, ptr %l53
  %t131 = inttoptr i64 %t130 to ptr
  %t132 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %t131, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t132, ptr %l55
  br label %bb33
bb33:
  %t133 = load i1, ptr @olang_2esole_2ecompiler_2ftyped_3aLocalUses_2e8
  br i1 %t133, label %bb34, label %bb35
bb34:
  %t135 = load i64, ptr %l53
  %t136 = inttoptr i64 %t135 to ptr
  %t137 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l55, i32 0, i32 0
  %t138 = load { i64, ptr }, ptr %t137
  %t139 = extractvalue { i64, ptr } %t138, 1
  %t140 = call ptr @__olang_region_or(ptr %t139, ptr null)
  %t141 = icmp ne ptr %t140, null
  %t142 = select i1 %t141, ptr %t140, ptr null
  %t143 = icmp eq ptr %t142, %t136
  call void @__olang_region_settle(ptr %t136, i1 %t143)
  br label %bb35
bb35:
  %t144 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l55
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t144, ptr %l10
  %t145 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_3f_26_3e_2ector(ptr %v2, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t145, ptr %l57
  br label %bb36
bb36:
  %t146 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l57
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t146, ptr %l11
  %t147 = ptrtoint ptr %v2 to i64
  store i64 %t147, ptr %l58, !tbaa !24
  %t148 = load i1, ptr @olang_2esole_2ecompiler_2ftyped_3aLocalUses_2e10
  br i1 %t148, label %bb37, label %bb38
bb37:
  %t150 = call ptr @__olang_region_make(ptr %v2)
  %t151 = ptrtoint ptr %t150 to i64
  store i64 %t151, ptr %l58, !tbaa !24
  br label %bb38
bb38:
  %t152 = load i64, ptr %l58
  %t153 = inttoptr i64 %t152 to ptr
  %t154 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %t153, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t154, ptr %l60
  br label %bb39
bb39:
  %t155 = load i1, ptr @olang_2esole_2ecompiler_2ftyped_3aLocalUses_2e10
  br i1 %t155, label %bb40, label %bb41
bb40:
  %t157 = load i64, ptr %l58
  %t158 = inttoptr i64 %t157 to ptr
  %t159 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l60, i32 0, i32 0
  %t160 = load { i64, ptr }, ptr %t159
  %t161 = extractvalue { i64, ptr } %t160, 1
  %t162 = call ptr @__olang_region_or(ptr %t161, ptr null)
  %t163 = icmp ne ptr %t162, null
  %t164 = select i1 %t163, ptr %t162, ptr null
  %t165 = icmp eq ptr %t164, %t158
  call void @__olang_region_settle(ptr %t158, i1 %t165)
  br label %bb41
bb41:
  %t166 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l60
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t166, ptr %l12
  %t167 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2ector(ptr %v2, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t167, ptr %l62
  br label %bb42
bb42:
  %t168 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l62
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t168, ptr %l13
  %t169 = ptrtoint ptr %v2 to i64
  store i64 %t169, ptr %l63, !tbaa !24
  %t170 = load i1, ptr @olang_2esole_2ecompiler_2ftyped_3aLocalUses_2e12
  br i1 %t170, label %bb43, label %bb44
bb43:
  %t172 = call ptr @__olang_region_make(ptr %v2)
  %t173 = ptrtoint ptr %t172 to i64
  store i64 %t173, ptr %l63, !tbaa !24
  br label %bb44
bb44:
  %t174 = load i64, ptr %l63
  %t175 = inttoptr i64 %t174 to ptr
  %t176 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %t175, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t176, ptr %l65
  br label %bb45
bb45:
  %t177 = load i1, ptr @olang_2esole_2ecompiler_2ftyped_3aLocalUses_2e12
  br i1 %t177, label %bb46, label %bb47
bb46:
  %t179 = load i64, ptr %l63
  %t180 = inttoptr i64 %t179 to ptr
  %t181 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l65, i32 0, i32 0
  %t182 = load { i64, ptr }, ptr %t181
  %t183 = extractvalue { i64, ptr } %t182, 1
  %t184 = call ptr @__olang_region_or(ptr %t183, ptr null)
  %t185 = icmp ne ptr %t184, null
  %t186 = select i1 %t185, ptr %t184, ptr null
  %t187 = icmp eq ptr %t186, %t180
  call void @__olang_region_settle(ptr %t180, i1 %t187)
  br label %bb47
bb47:
  %t188 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l65
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t188, ptr %l14
  %t189 = ptrtoint ptr %v2 to i64
  store i64 %t189, ptr %l67, !tbaa !24
  %t190 = load i1, ptr @olang_2esole_2ecompiler_2ftyped_3aLocalUses_2e13
  br i1 %t190, label %bb48, label %bb49
bb48:
  %t192 = call ptr @__olang_region_make(ptr %v2)
  %t193 = ptrtoint ptr %t192 to i64
  store i64 %t193, ptr %l67, !tbaa !24
  br label %bb49
bb49:
  %t194 = load i64, ptr %l67
  %t195 = inttoptr i64 %t194 to ptr
  %t196 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %t195, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t196, ptr %l69
  br label %bb50
bb50:
  %t197 = load i1, ptr @olang_2esole_2ecompiler_2ftyped_3aLocalUses_2e13
  br i1 %t197, label %bb51, label %bb52
bb51:
  %t199 = load i64, ptr %l67
  %t200 = inttoptr i64 %t199 to ptr
  %t201 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l69, i32 0, i32 0
  %t202 = load { i64, ptr }, ptr %t201
  %t203 = extractvalue { i64, ptr } %t202, 1
  %t204 = call ptr @__olang_region_or(ptr %t203, ptr null)
  %t205 = icmp ne ptr %t204, null
  %t206 = select i1 %t205, ptr %t204, ptr null
  %t207 = icmp eq ptr %t206, %t200
  call void @__olang_region_settle(ptr %t200, i1 %t207)
  br label %bb52
bb52:
  %t208 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l69
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t208, ptr %l15
  %t209 = ptrtoint ptr %v2 to i64
  store i64 %t209, ptr %l71, !tbaa !24
  %t210 = load i1, ptr @olang_2esole_2ecompiler_2ftyped_3aLocalUses_2e14
  br i1 %t210, label %bb53, label %bb54
bb53:
  %t212 = call ptr @__olang_region_make(ptr %v2)
  %t213 = ptrtoint ptr %t212 to i64
  store i64 %t213, ptr %l71, !tbaa !24
  br label %bb54
bb54:
  %t214 = load i64, ptr %l71
  %t215 = inttoptr i64 %t214 to ptr
  %t216 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %t215, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t216, ptr %l73
  br label %bb55
bb55:
  %t217 = load i1, ptr @olang_2esole_2ecompiler_2ftyped_3aLocalUses_2e14
  br i1 %t217, label %bb56, label %bb57
bb56:
  %t219 = load i64, ptr %l71
  %t220 = inttoptr i64 %t219 to ptr
  %t221 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l73, i32 0, i32 0
  %t222 = load { i64, ptr }, ptr %t221
  %t223 = extractvalue { i64, ptr } %t222, 1
  %t224 = call ptr @__olang_region_or(ptr %t223, ptr null)
  %t225 = icmp ne ptr %t224, null
  %t226 = select i1 %t225, ptr %t224, ptr null
  %t227 = icmp eq ptr %t226, %t220
  call void @__olang_region_settle(ptr %t220, i1 %t227)
  br label %bb57
bb57:
  %t228 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l73
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t228, ptr %l16
  %t229 = ptrtoint ptr %v2 to i64
  store i64 %t229, ptr %l75, !tbaa !24
  %t230 = load i1, ptr @olang_2esole_2ecompiler_2ftyped_3aLocalUses_2e15
  br i1 %t230, label %bb58, label %bb59
bb58:
  %t232 = call ptr @__olang_region_make(ptr %v2)
  %t233 = ptrtoint ptr %t232 to i64
  store i64 %t233, ptr %l75, !tbaa !24
  br label %bb59
bb59:
  %t234 = load i64, ptr %l75
  %t235 = inttoptr i64 %t234 to ptr
  %t236 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %t235, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t236, ptr %l77
  br label %bb60
bb60:
  %t237 = load i1, ptr @olang_2esole_2ecompiler_2ftyped_3aLocalUses_2e15
  br i1 %t237, label %bb61, label %bb62
bb61:
  %t239 = load i64, ptr %l75
  %t240 = inttoptr i64 %t239 to ptr
  %t241 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l77, i32 0, i32 0
  %t242 = load { i64, ptr }, ptr %t241
  %t243 = extractvalue { i64, ptr } %t242, 1
  %t244 = call ptr @__olang_region_or(ptr %t243, ptr null)
  %t245 = icmp ne ptr %t244, null
  %t246 = select i1 %t245, ptr %t244, ptr null
  %t247 = icmp eq ptr %t246, %t240
  call void @__olang_region_settle(ptr %t240, i1 %t247)
  br label %bb62
bb62:
  %t248 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l77
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t248, ptr %l17
  %t249 = ptrtoint ptr %v2 to i64
  store i64 %t249, ptr %l79, !tbaa !24
  %t250 = load i1, ptr @olang_2esole_2ecompiler_2ftyped_3aLocalUses_2e16
  br i1 %t250, label %bb63, label %bb64
bb63:
  %t252 = call ptr @__olang_region_make(ptr %v2)
  %t253 = ptrtoint ptr %t252 to i64
  store i64 %t253, ptr %l79, !tbaa !24
  br label %bb64
bb64:
  %t254 = load i64, ptr %l79
  %t255 = inttoptr i64 %t254 to ptr
  %t256 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %t255, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t256, ptr %l81
  br label %bb65
bb65:
  %t257 = load i1, ptr @olang_2esole_2ecompiler_2ftyped_3aLocalUses_2e16
  br i1 %t257, label %bb66, label %bb67
bb66:
  %t259 = load i64, ptr %l79
  %t260 = inttoptr i64 %t259 to ptr
  %t261 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l81, i32 0, i32 0
  %t262 = load { i64, ptr }, ptr %t261
  %t263 = extractvalue { i64, ptr } %t262, 1
  %t264 = call ptr @__olang_region_or(ptr %t263, ptr null)
  %t265 = icmp ne ptr %t264, null
  %t266 = select i1 %t265, ptr %t264, ptr null
  %t267 = icmp eq ptr %t266, %t260
  call void @__olang_region_settle(ptr %t260, i1 %t267)
  br label %bb67
bb67:
  %t268 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l81
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t268, ptr %l18
  %t269 = ptrtoint ptr %v2 to i64
  store i64 %t269, ptr %l83, !tbaa !24
  %t270 = load i1, ptr @olang_2esole_2ecompiler_2ftyped_3aLocalUses_2e17
  br i1 %t270, label %bb68, label %bb69
bb68:
  %t272 = call ptr @__olang_region_make(ptr %v2)
  %t273 = ptrtoint ptr %t272 to i64
  store i64 %t273, ptr %l83, !tbaa !24
  br label %bb69
bb69:
  %t274 = load i64, ptr %l83
  %t275 = inttoptr i64 %t274 to ptr
  %t276 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %t275, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t276, ptr %l85
  br label %bb70
bb70:
  %t277 = load i1, ptr @olang_2esole_2ecompiler_2ftyped_3aLocalUses_2e17
  br i1 %t277, label %bb71, label %bb72
bb71:
  %t279 = load i64, ptr %l83
  %t280 = inttoptr i64 %t279 to ptr
  %t281 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l85, i32 0, i32 0
  %t282 = load { i64, ptr }, ptr %t281
  %t283 = extractvalue { i64, ptr } %t282, 1
  %t284 = call ptr @__olang_region_or(ptr %t283, ptr null)
  %t285 = icmp ne ptr %t284, null
  %t286 = select i1 %t285, ptr %t284, ptr null
  %t287 = icmp eq ptr %t286, %t280
  call void @__olang_region_settle(ptr %t280, i1 %t287)
  br label %bb72
bb72:
  %t288 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l85
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t288, ptr %l19
  %t289 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2ector(ptr %v2, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t289, ptr %l87
  br label %bb73
bb73:
  %t290 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l87
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t290, ptr %l20
  %t291 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2ector(ptr %v2, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t291, ptr %l88
  br label %bb74
bb74:
  %t292 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l88
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t292, ptr %l21
  %t293 = ptrtoint ptr %v2 to i64
  store i64 %t293, ptr %l89, !tbaa !24
  %t294 = load i1, ptr @olang_2esole_2ecompiler_2ftyped_3aLocalUses_2e20
  br i1 %t294, label %bb75, label %bb76
bb75:
  %t296 = call ptr @__olang_region_make(ptr %v2)
  %t297 = ptrtoint ptr %t296 to i64
  store i64 %t297, ptr %l89, !tbaa !24
  br label %bb76
bb76:
  %t298 = load i64, ptr %l89
  %t299 = inttoptr i64 %t298 to ptr
  %t300 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %t299, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t300, ptr %l91
  br label %bb77
bb77:
  %t301 = load i1, ptr @olang_2esole_2ecompiler_2ftyped_3aLocalUses_2e20
  br i1 %t301, label %bb78, label %bb79
bb78:
  %t303 = load i64, ptr %l89
  %t304 = inttoptr i64 %t303 to ptr
  %t305 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l91, i32 0, i32 0
  %t306 = load { i64, ptr }, ptr %t305
  %t307 = extractvalue { i64, ptr } %t306, 1
  %t308 = call ptr @__olang_region_or(ptr %t307, ptr null)
  %t309 = icmp ne ptr %t308, null
  %t310 = select i1 %t309, ptr %t308, ptr null
  %t311 = icmp eq ptr %t310, %t304
  call void @__olang_region_settle(ptr %t304, i1 %t311)
  br label %bb79
bb79:
  %t312 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l91
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t312, ptr %l22
  %t313 = ptrtoint ptr %v2 to i64
  store i64 %t313, ptr %l93, !tbaa !24
  %t314 = load i1, ptr @olang_2esole_2ecompiler_2ftyped_3aLocalUses_2e21
  br i1 %t314, label %bb80, label %bb81
bb80:
  %t316 = call ptr @__olang_region_make(ptr %v2)
  %t317 = ptrtoint ptr %t316 to i64
  store i64 %t317, ptr %l93, !tbaa !24
  br label %bb81
bb81:
  %t318 = load i64, ptr %l93
  %t319 = inttoptr i64 %t318 to ptr
  %t320 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %t319, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t320, ptr %l95
  br label %bb82
bb82:
  %t321 = load i1, ptr @olang_2esole_2ecompiler_2ftyped_3aLocalUses_2e21
  br i1 %t321, label %bb83, label %bb84
bb83:
  %t323 = load i64, ptr %l93
  %t324 = inttoptr i64 %t323 to ptr
  %t325 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l95, i32 0, i32 0
  %t326 = load { i64, ptr }, ptr %t325
  %t327 = extractvalue { i64, ptr } %t326, 1
  %t328 = call ptr @__olang_region_or(ptr %t327, ptr null)
  %t329 = icmp ne ptr %t328, null
  %t330 = select i1 %t329, ptr %t328, ptr null
  %t331 = icmp eq ptr %t330, %t324
  call void @__olang_region_settle(ptr %t324, i1 %t331)
  br label %bb84
bb84:
  %t332 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l95
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t332, ptr %l23
  %t333 = ptrtoint ptr %v2 to i64
  store i64 %t333, ptr %l97, !tbaa !24
  %t334 = load i1, ptr @olang_2esole_2ecompiler_2ftyped_3aLocalUses_2e22
  br i1 %t334, label %bb85, label %bb86
bb85:
  %t336 = call ptr @__olang_region_make(ptr %v2)
  %t337 = ptrtoint ptr %t336 to i64
  store i64 %t337, ptr %l97, !tbaa !24
  br label %bb86
bb86:
  %t338 = load i64, ptr %l97
  %t339 = inttoptr i64 %t338 to ptr
  %t340 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aBlockId_3e_2ector(ptr %t339, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t340, ptr %l99
  br label %bb87
bb87:
  %t341 = load i1, ptr @olang_2esole_2ecompiler_2ftyped_3aLocalUses_2e22
  br i1 %t341, label %bb88, label %bb89
bb88:
  %t343 = load i64, ptr %l97
  %t344 = inttoptr i64 %t343 to ptr
  %t345 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l99, i32 0, i32 0
  %t346 = load { i64, ptr }, ptr %t345
  %t347 = extractvalue { i64, ptr } %t346, 1
  %t348 = call ptr @__olang_region_or(ptr %t347, ptr null)
  %t349 = icmp ne ptr %t348, null
  %t350 = select i1 %t349, ptr %t348, ptr null
  %t351 = icmp eq ptr %t350, %t344
  call void @__olang_region_settle(ptr %t344, i1 %t351)
  br label %bb89
bb89:
  %t352 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l99
  %t353 = getelementptr %"compiler/typed:LocalUses", ptr %l101, i32 0, i32 0
  %t354 = load ptr, ptr %l2, !tbaa !29
  store ptr %t354, ptr %t353, !tbaa !29
  %t355 = getelementptr %"compiler/typed:LocalUses", ptr %l101, i32 0, i32 1
  %t356 = load ptr, ptr %l3, !tbaa !29
  store ptr %t356, ptr %t355, !tbaa !29
  %t357 = getelementptr %"compiler/typed:LocalUses", ptr %l101, i32 0, i32 2
  %t358 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l4
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t358, ptr %t357
  %t359 = getelementptr %"compiler/typed:LocalUses", ptr %l101, i32 0, i32 3
  %t360 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l5
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t360, ptr %t359
  %t361 = getelementptr %"compiler/typed:LocalUses", ptr %l101, i32 0, i32 4
  %t362 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l6
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t362, ptr %t361
  %t363 = getelementptr %"compiler/typed:LocalUses", ptr %l101, i32 0, i32 5
  %t364 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l7
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t364, ptr %t363
  %t365 = getelementptr %"compiler/typed:LocalUses", ptr %l101, i32 0, i32 6
  %t366 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l8
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t366, ptr %t365
  %t367 = getelementptr %"compiler/typed:LocalUses", ptr %l101, i32 0, i32 7
  %t368 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l9
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t368, ptr %t367
  %t369 = getelementptr %"compiler/typed:LocalUses", ptr %l101, i32 0, i32 8
  %t370 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l10
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t370, ptr %t369
  %t371 = getelementptr %"compiler/typed:LocalUses", ptr %l101, i32 0, i32 9
  %t372 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l11
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t372, ptr %t371
  %t373 = getelementptr %"compiler/typed:LocalUses", ptr %l101, i32 0, i32 10
  %t374 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l12
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t374, ptr %t373
  %t375 = getelementptr %"compiler/typed:LocalUses", ptr %l101, i32 0, i32 11
  %t376 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l13
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t376, ptr %t375
  %t377 = getelementptr %"compiler/typed:LocalUses", ptr %l101, i32 0, i32 12
  %t378 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l14
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t378, ptr %t377
  %t379 = getelementptr %"compiler/typed:LocalUses", ptr %l101, i32 0, i32 13
  %t380 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l15
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t380, ptr %t379
  %t381 = getelementptr %"compiler/typed:LocalUses", ptr %l101, i32 0, i32 14
  %t382 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l16
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t382, ptr %t381
  %t383 = getelementptr %"compiler/typed:LocalUses", ptr %l101, i32 0, i32 15
  %t384 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l17
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t384, ptr %t383
  %t385 = getelementptr %"compiler/typed:LocalUses", ptr %l101, i32 0, i32 16
  %t386 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l18
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t386, ptr %t385
  %t387 = getelementptr %"compiler/typed:LocalUses", ptr %l101, i32 0, i32 17
  %t388 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l19
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t388, ptr %t387
  %t389 = getelementptr %"compiler/typed:LocalUses", ptr %l101, i32 0, i32 18
  %t390 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l20
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t390, ptr %t389
  %t391 = getelementptr %"compiler/typed:LocalUses", ptr %l101, i32 0, i32 19
  %t392 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l21
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t392, ptr %t391
  %t393 = getelementptr %"compiler/typed:LocalUses", ptr %l101, i32 0, i32 20
  %t394 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l22
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t394, ptr %t393
  %t395 = getelementptr %"compiler/typed:LocalUses", ptr %l101, i32 0, i32 21
  %t396 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l23
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t396, ptr %t395
  %t397 = getelementptr %"compiler/typed:LocalUses", ptr %l101, i32 0, i32 22
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t352, ptr %t397
  %t399 = getelementptr %"compiler/typed:LocalUses", ptr %l101, i32 0, i32 23
  store i64 0, ptr %t399, !tbaa !24
  %t401 = getelementptr %"compiler/typed:LocalUses", ptr %l101, i32 0, i32 24
  store i32 0, ptr %t401, !tbaa !23
  call void @llvm.memmove.p0.p0.i64(ptr %out, ptr %l101, i64 704, i1 false)
  br label %ret
ret:
  ret void
}

define dso_local %"compiler/typed:Match" @compiler_2ftyped_3aMatch_2ector(ptr %v0, ptr %v1, ptr %v2, ptr %v3, { i64, ptr } %a0, { i64, ptr } %a1, ptr %a2, i1 %a3) #0 {
entry:
  %rv = alloca %"compiler/typed:Match"
  br label %start
start:
  br label %bb0
bb0:
  %t10 = insertvalue %"compiler/typed:Match" undef, { i64, ptr } %a0, 0
  %t12 = insertvalue %"compiler/typed:Match" %t10, { i64, ptr } %a1, 1
  %t14 = insertvalue %"compiler/typed:Match" %t12, ptr %a2, 2
  %t16 = insertvalue %"compiler/typed:Match" %t14, i1 %a3, 3
  store %"compiler/typed:Match" %t16, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/typed:Match", ptr %rv
  ret %"compiler/typed:Match" %rr
}

define dso_local %"compiler/typed:TaskClause" @compiler_2ftyped_3aTaskClause_2ector(ptr %v0, ptr %v1, ptr %v2, %"compiler/source:Span" %a0, { i64, ptr } %a1, i1 %a2, ptr %a3) #0 {
entry:
  %rv = alloca %"compiler/typed:TaskClause"
  br label %start
start:
  br label %bb0
bb0:
  %t10 = insertvalue %"compiler/typed:TaskClause" undef, %"compiler/source:Span" %a0, 0
  %t12 = insertvalue %"compiler/typed:TaskClause" %t10, { i64, ptr } %a1, 1
  %t14 = insertvalue %"compiler/typed:TaskClause" %t12, i1 %a2, 2
  %t16 = insertvalue %"compiler/typed:TaskClause" %t14, ptr %a3, 3
  store %"compiler/typed:TaskClause" %t16, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/typed:TaskClause", ptr %rv
  ret %"compiler/typed:TaskClause" %rr
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
@.d0 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"f" }>, align 8
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
@.d1 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"body " }>, align 8
declare i64 @__olang_fmt_i64(ptr, i64)
@.d2 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c" locals " }>, align 8
@.d3 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c" blocks " }>, align 8
@.d4 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c" sites" }>, align 8
@olang_2esole_2ecompiler_2ftyped_3alandState_2e0 = weak hidden constant i1 false
declare void @__olang_region_release(ptr) noinline
declare ptr @__olang_region_make(ptr) noinline
declare noalias ptr @__olang_scope_alloc_zeroed(ptr, i64)
declare ptr @__olang_scope_or(ptr, ptr)
declare void @__olang_bang_failed_plain(ptr) cold noreturn
@olang_2esole_2ecompiler__2ftyped__2ecompiler__2ftyped__3aVersions__2eclauses_2elocal_2e4 = weak hidden constant i1 false
declare ptr @__olang_region_or(ptr, ptr)
declare void @__olang_region_settle(ptr, i1)
declare void @__olang_region_drop(ptr) noinline
@.d5 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"B" }>, align 8
@.d6 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c"extern " }>, align 8
define linkonce_odr void @olang_2emir_2eHelperKind_2eRender_2ecompiler_2ftyped_3aHelper(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l1 = alloca i64
  store i64 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t2 = load i32, ptr %a0, !range !{i32 0, i32 2}
  %t3 = sext i32 %t2 to i64
  switch i64 %t3, label %bb1 [ i64 0, label %bb2 i64 1, label %bb3 ]
bb1:
  br label %ret
bb2:
  %t5 = extractvalue { i64, ptr } { i64 18, ptr getelementptr inbounds (<{ i64, [18 x i8] }>, ptr @.d10, i32 0, i32 1) }, 1
  %t6 = extractvalue { i64, ptr } { i64 18, ptr getelementptr inbounds (<{ i64, [18 x i8] }>, ptr @.d10, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t5, i64 %t6)
  br label %bb1
bb3:
  %t7 = extractvalue { i64, ptr } { i64 17, ptr getelementptr inbounds (<{ i64, [17 x i8] }>, ptr @.d11, i32 0, i32 1) }, 1
  %t8 = extractvalue { i64, ptr } { i64 17, ptr getelementptr inbounds (<{ i64, [17 x i8] }>, ptr @.d11, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t7, i64 %t8)
  br label %bb1
ret:
  ret void
}

declare void @__olang_sb_done(ptr)
@.d7 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d8 = private constant <{ i64, [9 x i8] }> <{ i64 0, [9 x i8] c"dispatch " }>, align 8
@.d9 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"#" }>, align 8
@olang_2esole_2ecompiler_2ftyped_3aLandings_2e3 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2ftyped_3aLandings_2e4 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2ftyped_3aLandings_2e5 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2ftyped_3aLandings_2e6 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2ftyped_3aLandings_2e8 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2ftyped_3aLandings_2e11 = weak hidden constant i1 false
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

@olang_2esole_2ecompiler_2ftyped_3aLandings_2e12 = weak hidden constant i1 false
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

@olang_2esole_2ecompiler_2ftyped_3aLandings_2e13 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2ftyped_3aLandings_2e14 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2ftyped_3aLandings_2e15 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2ftyped_3aLandings_2e16 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2ftyped_3aLandings_2e17 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2ftyped_3aLandings_2e18 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2ftyped_3aLandings_2e19 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2ftyped_3aLandings_2e21 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2ftyped_3aLandings_2e22 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2ftyped_3aLocalUses_2e2 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2ftyped_3aLocalUses_2e3 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2ftyped_3aLocalUses_2e4 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2ftyped_3aLocalUses_2e5 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2ftyped_3aLocalUses_2e6 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2ftyped_3aLocalUses_2e7 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2ftyped_3aLocalUses_2e8 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2ftyped_3aLocalUses_2e10 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2ftyped_3aLocalUses_2e12 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2ftyped_3aLocalUses_2e13 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2ftyped_3aLocalUses_2e14 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2ftyped_3aLocalUses_2e15 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2ftyped_3aLocalUses_2e16 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2ftyped_3aLocalUses_2e17 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2ftyped_3aLocalUses_2e20 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2ftyped_3aLocalUses_2e21 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2ftyped_3aLocalUses_2e22 = weak hidden constant i1 false
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
@.d10 = private unnamed_addr constant <{ i64, [18 x i8] }> <{ i64 0, [18 x i8] c"typed.Helper.Equal" }>, align 8
declare void @__olang_sb_put(ptr, ptr, i64)
@.d11 = private unnamed_addr constant <{ i64, [17 x i8] }> <{ i64 0, [17 x i8] c"typed.Helper.Hash" }>, align 8
@olang_loc_98ffd35c6a6991db_b4b9a5fbdbb15627 = external constant [0 x i8]
declare i1 @compiler_2ftyped_2estmtsBreak(ptr %v0, { i64, ptr } %a0, i32 %a1)
@olang_loc_831440fdfc819328_dabfa81c01cf773c = external constant [0 x i8]
@olang_loc_7bdf3cb2fb8351f9_389183759a182ed = external constant [0 x i8]
declare void @compiler_2ftyped_3aDropHolding_2ector(ptr %out, ptr %v0)
@olang_loc_1d48dcdc24016ab9_795d1a331a4bc775 = external constant [0 x i8]
declare void @compiler_2ftyped_2efindHolders(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, ptr %a2)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %a0)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %a0, i64 %a1)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %v0, i64 %a0)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2fvec_3aVec_3cI64_3e_3e__H5a6912247a81ac1f46c16a43fcc4c44a(ptr %v0, ptr %v1, ptr %a0, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %a1)
declare void @compiler_2ftyped_3aholdWalk_2ector(ptr %out, ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %a0, i64 %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aBlockId_3e_2eLen_3ccompiler_2ftyped_3aBlockId_3e(ptr %v0, ptr %a0)
declare i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aBlockId_3e_2eAt_3ccompiler_2ftyped_3aBlockId_3e(ptr %v0, ptr %a0, i64 %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aBlockId_3e_2ePush_3ccompiler_2ftyped_3aBlockId_3e(ptr %v0, ptr %a0, i32 %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocal_3e_2eLen_3ccompiler_2ftyped_3aLocal_3e(ptr %v0, ptr %a0)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aSpan_3e_2eClear_3ccompiler_2fsource_3aSpan_3e(ptr %v0, ptr %a0)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2fvec_3aVec_3cI64_3e_3e__H76000d29bd4678bab17d21d786d60caf(ptr %v0, ptr %a0)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aBlockId_3e_2eClear_3ccompiler_2ftyped_3aBlockId_3e(ptr %v0, ptr %a0)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2eClear_3ccompiler_2ftypes_3aTypeId_3e(ptr %v0, ptr %a0)
declare void @compiler_2ftyped_2ecompiler_2ftyped_3aholdWalk_2eblock(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2ftyped_2eone(ptr %v0, i64 %a0)
declare { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eToArray_3cI64_3e(ptr %v0, ptr %v1, ptr %a0)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2ftyped_2ecompiler_2ftyped_3aholdWalk_2eclosure(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1)
declare i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eHas_3cI64_3e(ptr %v0, ptr %a0, i64 %a1)
declare i1 @compiler_2ftyped_2efreshValue(ptr %v0, ptr %a0)
@olang_loc_bf16ba0368763d37_f19ef32b132443ab = external constant [0 x i8]
@olang_loc_af65136929bfae16_48f8be4437d6c6ea = external constant [0 x i8]
@G_2ecompiler_2ftyped_2emathNames = external constant <{ [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr }>
declare i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
@G_2ecompiler_2ftyped_2emathArity = available_externally constant <{ [248 x i8] }> <{ [248 x i8] c"\01\00\00\00\00\00\00\00\03\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\02\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\02\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\02\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\02\00\00\00\00\00\00\00" }>, align 64
@G_2ecompiler_2ftypes_2eResultVar = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\FF\FF\FF\FF\FF\FF\FF\FF" }>, align 8
declare { i64, [2 x i64] } @compiler_2ftyped_2ecompiler_2ftyped_3aPlan_2ePassed(ptr %v0, ptr %a0, i32 %a1, i64 %a2)
@G_2ecompiler_2ftyped_2eViewOther = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\00\00\00\00\00\00\00\40" }>, align 8
@G_2ecompiler_2ftyped_2eViewBits = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\3E\00\00\00\00\00\00\00" }>, align 8
declare i64 @std_2fprelude_2fnumber_2eI64_2eMin_3cI64_3e(i64 %a0, i64 %a1)
declare i1 @compiler_2ftyped_2eMovedArg(ptr %v0, ptr %a0)
declare i1 @compiler_2ftyped_2eexprBreaks(ptr %v0, ptr %a0, i32 %a1)
@olang_loc_352016b8dfbaae41_4f83dc304b77dded = external constant [0 x i8]
@olang_loc_3a838910fbaaf0b4_28daeb84482f7128 = external constant [0 x i8]
declare %"compiler/typed:Local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocal_3e_2eAt_3ccompiler_2ftyped_3aLocal_3e(ptr %v0, ptr %a0, i64 %a1)
declare %"compiler/typed:printer" @compiler_2ftyped_3aprinter_2ector(ptr %v0, ptr %v1, ptr %a0)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aBlockInfo_3e_2eLen__Hdc799a0fe091f8e84d50200d058b631d(ptr %v0, ptr %a0)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aSiteInfo_3e_2eLen_3ccompiler_2ftyped_3aSiteInfo_3e(ptr %v0, ptr %a0)
declare void @compiler_2ftyped_2ecompiler_2ftyped_3aprinter_2eline(ptr %v0, ptr %v1, ptr %a0, i64 %a1, { i64, ptr } %a2)
@olang_loc_b47e7a13871964ca_e65b2c3f8690a096 = external constant [0 x i8]
declare void @compiler_2ftyped_2ecompiler_2ftyped_3aprinter_2eblock(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, i64 %a2)
declare { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %v0, ptr %v1, ptr %a0)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2fvec_3aVec_3cI64_3e_3e__H7b6d4eff6fc9c3821aae8b284e12e095(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare void @compiler_2ftyped_2ecompiler_2ftyped_3aLandings_2emention(ptr %v0, ptr %a0, i32 %a1, i64 %a2, i1 %a3)
declare void @compiler_2ftyped_2ecompiler_2ftyped_3aLandings_2eplace(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
@olang_loc_9444a0fe500d35e5_4f818c2c3ae57dd9 = external constant [0 x i8]
declare void @compiler_2ftyped_2ecompiler_2ftyped_3aLandings_2eexprs(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare void @compiler_2ftyped_2ecompiler_2ftyped_3aLandings_2eapart(ptr %v0, ptr %a0, i64 %a1)
declare void @compiler_2ftyped_2ecompiler_2ftyped_3aLandings_2ekeptBy(ptr %v0, ptr %a0, i64 %a1)
declare void @compiler_2ftyped_2ecompiler_2ftyped_3aLandings_2eloop(ptr %v0, ptr %v1, ptr %v2, ptr %a0, i32 %a1, ptr %a2, ptr %a3)
declare %"compiler/typed:landState" @compiler_2ftyped_2ecompiler_2ftyped_3aLandings_2esave(ptr %v0, ptr %v1, ptr %a0)
declare void @compiler_2ftyped_2ecompiler_2ftyped_3aLandings_2estmt(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare void @compiler_2ftyped_2ecompiler_2ftyped_3aLandings_2eblock(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
@olang_loc_3f422f8bccda2eb4_607c7ad0cff40408 = external constant [0 x i8]
@olang_loc_90af12c8bdcc10ef_2ee3a51413a547e3 = external constant [0 x i8]
declare i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eAt_3cBool_3e(ptr %v0, ptr %a0, i64 %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3alandLoop_3e_2eLen_3ccompiler_2ftyped_3alandLoop_3e(ptr %v0, ptr %a0)
declare %"compiler/typed:landLoop" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3alandLoop_3e_2eAt_3ccompiler_2ftyped_3alandLoop_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare void @compiler_2ftyped_2eorInto(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3alandLoop_3e_2eSetAt_H5ab2aabe0ae7951e8bb06fbe4ca7219a(ptr %v0, ptr %v1, ptr %a0, i64 %a1, %"compiler/typed:landLoop" %a2)
declare %"compiler/typed:landState" @compiler_2ftyped_3alandState_2ector(ptr %v0, ptr %v1, { i64, ptr } %a0, i1 %a1)
@olang_loc_17d1ac1d0088a46d_f6898a8fba654071 = external constant [0 x i8]
declare void @compiler_2ftyped_2ecompiler_2ftyped_3aLandings_2earm(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
@olang_loc_53c662fb23aaf808_98195192fab83824 = external constant [0 x i8]
declare i64 @compiler_2ftyped_2ewholeLocal(ptr %v0, ptr %a0)
declare void @compiler_2ftyped_2ecompiler_2ftyped_3aLastUses_2eexpr(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare void @compiler_2ftyped_2ecompiler_2ftyped_3aLastUses_2emention(ptr %v0, ptr %a0, i32 %a1)
declare void @compiler_2ftyped_2ecompiler_2ftyped_3aLastUses_2eplace(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i64 @compiler_2ftyped_2ecopySite(ptr %v0, ptr %a0)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2ePut_3cI64_2c_20Bool_3e(ptr %v0, ptr %a0, i64 %a1, i1 %a2)
declare void @compiler_2ftyped_2ecompiler_2ftyped_3aLastUses_2eBlock(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare void @compiler_2ftyped_2ecompiler_2ftyped_3aLastUses_2elaterBlock(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare void @compiler_2ftyped_2ecompiler_2ftyped_3aLastUses_2eclauses(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
@olang_loc_b7d0c4ef23cb16fa_bb49bf88955879a6 = external constant [0 x i8]
declare void @compiler_2ftyped_2ecompiler_2ftyped_3aLocalUses_2eblock(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1)
declare void @compiler_2ftyped_2ecompiler_2ftyped_3aLocalUses_2eexpr(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1, { i64, [1 x i64] } %a2)
declare i64 @compiler_2ftyped_2ecompiler_2ftyped_3aLocalUses_2erootOf(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
@olang_loc_ea76fa4e8d5c92b6_ce360b1ee865cf5a = external constant [0 x i8]
declare i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePermOf(ptr %v0, ptr %a0, i32 %a1)
@G_2ecompiler_2ftypes_2eWritable = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\01\00\00\00\00\00\00\00" }>, align 8
declare i1 @compiler_2ftyped_2escalarType(ptr %v0, ptr %a0, i32 %a1)
@olang_loc_93af16bb2b9103f6_23d1e52eae2906e2 = external constant [0 x i8]
declare void @compiler_2ftyped_2ecompiler_2ftyped_3aLocalUses_2eplaceExprs(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eSetAt_3cBool_3e(ptr %v0, ptr %a0, i64 %a1, i1 %a2)
declare void @compiler_2ftyped_2ecompiler_2ftyped_3aVersions_2eReachInto(ptr %v0, ptr %v1, ptr %a0, i64 %a1, i64 %a2, ptr %a3)
declare { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2eGet_3cI64_2c_20I64_3e(ptr %v0, ptr %a0, i64 %a1)
declare i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2eHas_3cI64_2c_20I64_3e(ptr %v0, ptr %a0, i64 %a1)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2ePut_3cI64_2c_20I64_3e(ptr %v0, ptr %a0, i64 %a1, i64 %a2)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aSpan_3e_2ePush_3ccompiler_2fsource_3aSpan_3e(ptr %v0, ptr %a0, %"compiler/source:Span" %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_3f_26_3e_2ePus_H0c70e9e86794aea54789ff5f3987086b(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2ePush_3cBool_3e(ptr %v0, ptr %a0, i1 %a1)
declare void @compiler_2ftyped_2ecompiler_2ftyped_3aVersions_2eexpr(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
@olang_loc_43c6edd5f3ea6aa2_25eece1f43523776 = external constant [0 x i8]
@olang_loc_8a2b699ea2f67509_3bce0390ecfabbdd = external constant [0 x i8]
declare void @compiler_2ftyped_2ecompiler_2ftyped_3aVersions_2estmt(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare { i32, i32 } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aBlockId_3e_2ePop_3ccompiler_2ftyped_3aBlockId_3e(ptr %v0, ptr %a0)
@olang_loc_a872ad126d8d9744_e4960385d07a8740 = external constant [0 x i8]
@olang_loc_f34031efedf98c99_ae8fa248572091b5 = external constant [0 x i8]
@olang_loc_1baf36c5dd0b9bdd_a2c9e1d98e30c571 = external constant [0 x i8]
@olang_loc_49ff4d0dc0b12b63_5e68d9fa98bc7cb7 = external constant [0 x i8]
@olang_loc_1728180708920569_396f77e53f37dbed = external constant [0 x i8]
@olang_loc_64712ec69db6f686_5286ea6d6f8bc3a = external constant [0 x i8]
@olang_loc_3937948e4172da86_b4226ee484a284a = external constant [0 x i8]
@olang_loc_e2e1378986f13fd0_6a804f95244a4cf4 = external constant [0 x i8]
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2ftyped_2ecompiler_2ftyped_3aVersions_2esave(ptr %v0, ptr %v1, ptr %a0)
declare void @compiler_2ftyped_2ecompiler_2ftyped_3aVersions_2eall(ptr %v0, ptr %a0)
declare void @compiler_2ftyped_2ecompiler_2ftyped_3aVersions_2erestore(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare void @compiler_2ftyped_2ecompiler_2ftyped_3aVersions_2emeet(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i64 @compiler_2ftyped_2ecompiler_2ftyped_3aVersions_2eDefOf(ptr %v0, ptr %a0, i64 %a1, i64 %a2)
declare i1 @compiler_2ftyped_2ecompiler_2ftyped_3aVersions_2edead(ptr %v0, ptr %a0)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eSetAt_3cI64_3e(ptr %v0, ptr %a0, i64 %a1, i64 %a2)
declare i64 @compiler_2ftyped_2ecompiler_2ftyped_3aViewWalk_2eCallRoots(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1)
declare i64 @compiler_2ftyped_2emeetRoots(i64 %a0, i64 %a1)
declare i64 @compiler_2ftyped_2ecompiler_2ftyped_3aViewWalk_2ematchRoots(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1)
@olang_loc_c8b3a2ed155d5757_c640a14e4e3ad273 = external constant [0 x i8]
declare i64 @compiler_2ftyped_2ecompiler_2ftyped_3aViewWalk_2elocalRoots(ptr %v0, ptr %v1, ptr %v2, ptr %a0, i32 %a1)
declare i64 @compiler_2ftyped_2ecompiler_2ftyped_3aViewWalk_2erefRoots(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1)
@olang_loc_38f82f633fcbfe78_2a415e18f8868a4c = external constant [0 x i8]
declare void @compiler_2ftyped_2ecompiler_2ftyped_3adropWalk_2eexpr(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eLen_3cBool_3e(ptr %v0, ptr %a0)
declare void @compiler_2ftyped_2ecompiler_2ftyped_3adropWalk_2eleave(ptr %v0, ptr %a0, i64 %a1)
declare void @compiler_2ftyped_2ecompiler_2ftyped_3adropWalk_2enumber(ptr %v0, ptr %a0, i64 %a1)
@olang_loc_9f9fe097503cda9_c6b719cc2534ac35 = external constant [0 x i8]
declare i64 @compiler_2ftyped_2eDropFlag(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
@olang_loc_c1faed4ae36d3640_1d7aa47a4727493c = external constant [0 x i8]
declare void @compiler_2ftyped_2ecompiler_2ftyped_3adropWalk_2eplace(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare void @compiler_2ftyped_2ecompiler_2ftyped_3adropWalk_2eblock(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare void @compiler_2ftyped_2ecompiler_2ftyped_3adropWalk_2erestore(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare void @compiler_2ftyped_2ecompiler_2ftyped_3adropWalk_2ejoin(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare void @compiler_2ftyped_2ecompiler_2ftyped_3adropWalk_2eloop(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, ptr %a2)
declare void @compiler_2ftyped_2ecompiler_2ftyped_3adropWalk_2ejump(ptr %v0, ptr %a0, i32 %a1, i32 %a2)
@olang_loc_43e833e67406aee2_76f2107f4f2989fe = external constant [0 x i8]
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2ftyped_2ecompiler_2ftyped_3aholdWalk_2erefs(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %a0, ptr %a1)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2ftyped_2ecompiler_2ftyped_3aholdWalk_2estorage(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %a0, ptr %a1)
declare i64 @compiler_2ftyped_2ecompiler_2ftyped_3aholdWalk_2eheldBefore(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2ePush_3ccompiler_2ftypes_3aTypeId_3e(ptr %v0, ptr %a0, i32 %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aSpan_3e_2eLen_3ccompiler_2fsource_3aSpan_3e(ptr %v0, ptr %a0)
declare %"compiler/source:Span" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aSpan_3e_2eAt_3ccompiler_2fsource_3aSpan_3e(ptr %v0, ptr %a0, i64 %a1)
declare i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2eAt_3ccompiler_2ftypes_3aTypeId_3e(ptr %v0, ptr %a0, i64 %a1)
declare i32 @compiler_2ftyped_2ecompiler_2ftyped_3aExpr_2eType(ptr %v0, ptr %a0)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eNeedsDrop(ptr %v0, ptr %a0, i32 %a1)
@olang_loc_77c9af98e9dace58_20acd54f7de13794 = external constant [0 x i8]
declare i1 @compiler_2ftyped_2ecompiler_2ftyped_3aholdWalk_2eencloses(ptr %v0, ptr %v1, ptr %a0, i32 %a1, i32 %a2)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eReferent(ptr %v0, ptr %a0, i32 %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cArray_3cI64_3e_3e_2eLen_3cArray_3cI64_3e_3e(ptr %v0, ptr %a0)
declare { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cArray_3cI64_3e_3e_2eAt_3cArray_3cI64_3e_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i1 @compiler_2ftyped_2ecompiler_2ftyped_3aleaveWalk_2estmtsLeave(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare { i64, ptr } @compiler_2ftyped_2ecompiler_2ftyped_3aprinter_2eexpr(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1)
declare { i64, ptr } @compiler_2ftyped_2eshort(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eCanon(ptr %v0, ptr %v1, ptr %v2, ptr %a0, i32 %a1)
@olang_loc_c13c66c7f09ff87e_38ebe5e5af81f22 = external constant [0 x i8]
declare %"std/prelude/text:StringBuilder" @std_2fprelude_2ftext_3aStringBuilder_2ector(ptr %v0)
declare void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePushChar(ptr %v0, ptr %a0, i8 %a1)
declare { i64, ptr } @compiler_2ftyped_2econstText(ptr %v0, ptr %v1, ptr %a0)
declare void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eElem(ptr %v0, ptr %a0, i32 %a1)
declare i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eA(ptr %v0, ptr %a0, i32 %a1)
declare { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare i1 @compiler_2ftyped_2elistHoldsWritable(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1, i64 %a2)
@olang_loc_897c6ec4bdb8e7c2_3b49e2eddb87c67e = external constant [0 x i8]
declare i1 @compiler_2ftyped_2eholdsOwned(ptr %v0, ptr %a0, i32 %a1, i64 %a2)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclKindOf(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eHasBody(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eBase(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eArgs(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eFields(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eCases(ptr %v0, ptr %a0, i32 %a1)
@olang_loc_6cac4c556ee1b7d9_257131421adb63ad = external constant [0 x i8]
@olang_loc_52c63b14e30804cc_be8191a117211c80 = external constant [0 x i8]
@olang_loc_75ea3af438a3ca2f_999b6c305f7ce623 = external constant [0 x i8]
@olang_loc_5a80d8a416bdb25a_ede72ef348da89ae = external constant [0 x i8]
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3alandLoop_3e_2ector(ptr %v0, i64 %a0)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cBool_3e_2ector(ptr %v0, i64 %a0)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_3f_26_3e_2ector(ptr %v0, i64 %a0)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2ector(ptr %v0, i64 %a0)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aBlockId_3e_2ector(ptr %v0, i64 %a0)
declare %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2ector(ptr %v0)
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

attributes #0 = { null_pointer_is_valid "target-cpu"="sapphirerapids" "target-features"="+64bit,+adx,+aes,+amx-bf16,+amx-int8,+amx-tile,+avx,+avx2,-avx512bf16,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512fp16,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+avxvnni,+bmi,+bmi2,+cldemote,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+evex512,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+movdir64b,+movdiri,+pclmul,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+rtm,+sahf,+serialize,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+tsxldtrk,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-complex,-amx-fp16,-avx10.1-256,-avx10.1-512,-avx512er,-avx512pf,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnniint16,-avxvnniint8,-clzero,-cmpccxadd,-enqcmd,-fma4,-hreset,-kl,-lwp,-mwaitx,-pconfig,-pku,-prefetchi,-prefetchwt1,-ptwrite,-raoint,-rdpru,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-uintr,-usermsr,-waitpkg,-widekl,-xop" "prefer-vector-width"="512" nounwind }
