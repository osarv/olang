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
%"compiler/mir:Fn" = type { { i64, [2 x i64] }, i32, i64, %"compiler/source:Span", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/source:Span" = type { i32, i32 }
%"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" = type { { i64, ptr }, i64, i64 }
%"compiler/mir:Local" = type { i32, %"compiler/source:Span", i32, i32, { i64, [1 x i64] } }
%"compiler/mir:Lvalue" = type { { i64, [2 x i64] }, %"compiler/mir:Range" }
%"compiler/mir:Range" = type { i32, i32 }
%"compiler/types:Table" = type { ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" = type { { i64, ptr }, { i64, ptr }, { i64, ptr }, i64, i64, i64 }
%"compiler/mir:Task" = type { { i64, [7 x i64] }, %"compiler/mir:Range", %"compiler/mir:Range", %"compiler/mir:Range", %"compiler/mir:Range", %"compiler/mir:Range", %"compiler/source:Span", %"compiler/mir:Range" }
%"compiler/mir:TaskClause" = type { %"compiler/mir:Range", i1, { i64, [4 x i64] } }
%"compiler/mir:dumper" = type { ptr, ptr, %"std/prelude/text:StringBuilder" }
%"std/prelude/text:StringBuilder" = type { %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/mir:BasicBlock" = type { %"compiler/mir:StmtList", { i64, [8 x i64] } }
%"compiler/mir:StmtList" = type { { i64, ptr }, i64 }
%"compiler/mir:GenInfo" = type { %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64 }
%"compiler/mir:ScopeInfo" = type { i32, i32, i32, %"compiler/source:Span", i32 }
%"compiler/typed:Item" = type { i32, i64 }
%"compiler/mir:verifier" = type { ptr, ptr, %"std/prelude/text:StringBuilder", i64, i64, i1, { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1 }
%"compiler/mir:Case" = type { i64, i32 }
%"compiler/mir:Call" = type { { i64, [7 x i64] }, %"compiler/mir:Range", %"compiler/mir:Range", %"compiler/mir:Lvalue", i1, i32, i32, i32 }
define dso_local { i64, ptr } @compiler_2fmir_2eExitText(ptr %v0, i32 %a0) #0 {
entry:
  %l0 = alloca i32
  %l1 = alloca { i64, ptr }
  %rv = alloca { i64, ptr }
  store i32 %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load i32, ptr %l0, !range !{i32 0, i32 16}
  %t3 = trunc i64 0 to i32
  %t4 = icmp eq i32 %t1, %t3
  br i1 %t4, label %bb1, label %bb2
bb1:
  br label %bb11
bb2:
  %t6 = load i32, ptr %l0, !range !{i32 0, i32 16}
  %t8 = trunc i64 1 to i32
  %t9 = icmp eq i32 %t6, %t8
  br i1 %t9, label %bb3, label %bb4
bb3:
  br label %bb11
bb4:
  %t11 = load i32, ptr %l0, !range !{i32 0, i32 16}
  %t13 = trunc i64 14 to i32
  %t14 = icmp eq i32 %t11, %t13
  br i1 %t14, label %bb5, label %bb6
bb5:
  br label %bb11
bb6:
  %t16 = load i32, ptr %l0, !range !{i32 0, i32 16}
  %t18 = trunc i64 15 to i32
  %t19 = icmp eq i32 %t16, %t18
  br i1 %t19, label %bb7, label %bb8
bb7:
  br label %bb11
bb8:
  %t21 = load i32, ptr %l0, !range !{i32 0, i32 16}
  %t23 = trunc i64 6 to i32
  %t24 = icmp eq i32 %t21, %t23
  br i1 %t24, label %bb9, label %bb10
bb9:
  br label %bb11
bb10:
  br label %bb12
bb11:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d0, i32 0, i32 1) }, ptr %l1, !tbaa !27
  br label %bb57
bb12:
  %t26 = load i32, ptr %l0, !range !{i32 0, i32 16}
  %t28 = trunc i64 2 to i32
  %t29 = icmp eq i32 %t26, %t28
  br i1 %t29, label %bb13, label %bb14
bb13:
  br label %bb15
bb14:
  br label %bb16
bb15:
  store { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d1, i32 0, i32 1) }, ptr %l1, !tbaa !27
  br label %bb57
bb16:
  %t31 = load i32, ptr %l0, !range !{i32 0, i32 16}
  %t33 = trunc i64 3 to i32
  %t34 = icmp eq i32 %t31, %t33
  br i1 %t34, label %bb17, label %bb18
bb17:
  br label %bb19
bb18:
  br label %bb20
bb19:
  store { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d2, i32 0, i32 1) }, ptr %l1, !tbaa !27
  br label %bb57
bb20:
  %t36 = load i32, ptr %l0, !range !{i32 0, i32 16}
  %t38 = trunc i64 4 to i32
  %t39 = icmp eq i32 %t36, %t38
  br i1 %t39, label %bb21, label %bb22
bb21:
  br label %bb23
bb22:
  br label %bb24
bb23:
  store { i64, ptr } { i64 12, ptr getelementptr inbounds (<{ i64, [12 x i8] }>, ptr @.d3, i32 0, i32 1) }, ptr %l1, !tbaa !27
  br label %bb57
bb24:
  %t41 = load i32, ptr %l0, !range !{i32 0, i32 16}
  %t43 = trunc i64 5 to i32
  %t44 = icmp eq i32 %t41, %t43
  br i1 %t44, label %bb25, label %bb26
bb25:
  br label %bb27
bb26:
  br label %bb28
bb27:
  store { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d4, i32 0, i32 1) }, ptr %l1, !tbaa !27
  br label %bb57
bb28:
  %t46 = load i32, ptr %l0, !range !{i32 0, i32 16}
  %t48 = trunc i64 7 to i32
  %t49 = icmp eq i32 %t46, %t48
  br i1 %t49, label %bb29, label %bb30
bb29:
  br label %bb31
bb30:
  br label %bb32
bb31:
  store { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d5, i32 0, i32 1) }, ptr %l1, !tbaa !27
  br label %bb57
bb32:
  %t51 = load i32, ptr %l0, !range !{i32 0, i32 16}
  %t53 = trunc i64 8 to i32
  %t54 = icmp eq i32 %t51, %t53
  br i1 %t54, label %bb33, label %bb34
bb33:
  br label %bb35
bb34:
  br label %bb36
bb35:
  store { i64, ptr } { i64 25, ptr getelementptr inbounds (<{ i64, [25 x i8] }>, ptr @.d6, i32 0, i32 1) }, ptr %l1, !tbaa !27
  br label %bb57
bb36:
  %t56 = load i32, ptr %l0, !range !{i32 0, i32 16}
  %t58 = trunc i64 9 to i32
  %t59 = icmp eq i32 %t56, %t58
  br i1 %t59, label %bb37, label %bb38
bb37:
  br label %bb39
bb38:
  br label %bb40
bb39:
  store { i64, ptr } { i64 25, ptr getelementptr inbounds (<{ i64, [25 x i8] }>, ptr @.d7, i32 0, i32 1) }, ptr %l1, !tbaa !27
  br label %bb57
bb40:
  %t61 = load i32, ptr %l0, !range !{i32 0, i32 16}
  %t63 = trunc i64 10 to i32
  %t64 = icmp eq i32 %t61, %t63
  br i1 %t64, label %bb41, label %bb42
bb41:
  br label %bb43
bb42:
  br label %bb44
bb43:
  store { i64, ptr } { i64 32, ptr getelementptr inbounds (<{ i64, [32 x i8] }>, ptr @.d8, i32 0, i32 1) }, ptr %l1, !tbaa !27
  br label %bb57
bb44:
  %t66 = load i32, ptr %l0, !range !{i32 0, i32 16}
  %t68 = trunc i64 11 to i32
  %t69 = icmp eq i32 %t66, %t68
  br i1 %t69, label %bb45, label %bb46
bb45:
  br label %bb47
bb46:
  br label %bb48
bb47:
  store { i64, ptr } { i64 45, ptr getelementptr inbounds (<{ i64, [45 x i8] }>, ptr @.d9, i32 0, i32 1) }, ptr %l1, !tbaa !27
  br label %bb57
bb48:
  %t71 = load i32, ptr %l0, !range !{i32 0, i32 16}
  %t73 = trunc i64 12 to i32
  %t74 = icmp eq i32 %t71, %t73
  br i1 %t74, label %bb49, label %bb50
bb49:
  br label %bb51
bb50:
  br label %bb52
bb51:
  store { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d10, i32 0, i32 1) }, ptr %l1, !tbaa !27
  br label %bb57
bb52:
  %t76 = load i32, ptr %l0, !range !{i32 0, i32 16}
  %t78 = trunc i64 13 to i32
  %t79 = icmp eq i32 %t76, %t78
  br i1 %t79, label %bb53, label %bb54
bb53:
  br label %bb55
bb54:
  br label %bb56
bb55:
  store { i64, ptr } { i64 56, ptr getelementptr inbounds (<{ i64, [56 x i8] }>, ptr @.d11, i32 0, i32 1) }, ptr %l1, !tbaa !27
  br label %bb57
bb56:
  call void @__olang_check_failed(ptr @olang_loc_84efd3c782aef4d6_8c92393edf5749f2)
  unreachable
bb57:
  %t81 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t81, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local void @compiler_2fmir_2eFn_2eadd(ptr %out, ptr %v0, ptr %v1, ptr %v2, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %lp2 = alloca ptr
  %l3 = alloca i32
  %l4 = alloca i32
  %l6 = alloca i32
  %l7 = alloca ptr
  %l8 = alloca ptr
  %l12 = alloca { i64, ptr }
  %l13 = alloca i32
  %l15 = alloca i32
  %l16 = alloca %"compiler/mir:Fn"
  %l17 = alloca ptr
  %l19 = alloca ptr
  %l21 = alloca i32
  %l26 = alloca %"compiler/mir:Local"
  %l27 = alloca ptr
  %l29 = alloca ptr
  %l31 = alloca i32
  %l36 = alloca %"compiler/mir:Local"
  %l37 = alloca ptr
  %l39 = alloca ptr
  %l41 = alloca i32
  %l46 = alloca %"compiler/mir:Local"
  %l47 = alloca i32
  %l48 = alloca ptr
  %l49 = alloca i32
  %l50 = alloca %"compiler/source:Span"
  %l52 = alloca %"compiler/mir:Lvalue"
  %l53 = alloca i32
  %l54 = alloca i32
  %l55 = alloca ptr
  %l56 = alloca %"compiler/mir:Lvalue"
  %l57 = alloca { i64, [4 x i64] }
  %l58 = alloca %"compiler/mir:Lvalue"
  %l60 = alloca { i64, ptr }
  %l61 = alloca %"compiler/mir:Range"
  %l63 = alloca { i64, [21 x i64] }
  %l68 = alloca { i64, [21 x i64] }
  %l70 = alloca ptr
  %l71 = alloca i32
  %l72 = alloca %"compiler/source:Span"
  %l74 = alloca %"compiler/mir:Lvalue"
  %l77 = alloca %"compiler/mir:Fn"
  %s0 = alloca %olang.scope
  %t30 = alloca %"compiler/mir:Fn", align 8
  %t50 = alloca { i64, [1 x i64] }, align 8
  %t76 = alloca { i64, [1 x i64] }, align 8
  %t101 = alloca { i64, [1 x i64] }, align 8
  %t123 = alloca { i64, [4 x i64] }, align 8
  %t130 = alloca { i64, [4 x i64] }, align 8
  %t151 = alloca { i64, [15 x i64] }, align 8
  %t161 = alloca { i64, [21 x i64] }, align 8
  %t177 = alloca { i64, [21 x i64] }, align 8
  %t193 = alloca { i64, [4 x i64] }, align 8
  %t199 = alloca { i64, [8 x i64] }, align 8
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePrim(ptr %v0, ptr %s0, ptr %t1, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d12, i32 0, i32 1) })
  store i32 %t3, ptr %l6
  br label %bb1
bb1:
  %t4 = load i32, ptr %l6, !tbaa !23
  store i32 %t4, ptr %l1, !tbaa !23
  %t5 = load ptr, ptr %l0, !tbaa !29
  store ptr %t5, ptr %l7, !tbaa !29
  %t6 = load ptr, ptr %l0, !tbaa !29
  store ptr %t6, ptr %l8, !tbaa !29
  %t7 = load ptr, ptr %l0, !tbaa !29
  %t8 = load i32, ptr %l1, !tbaa !23
  %t9 = load i32, ptr %l1, !tbaa !23
  %t10 = mul i64 2, 4
  %t11 = call ptr @__olang_scope_alloc_zeroed(ptr %s0, i64 %t10)
  %t12 = insertvalue { i64, ptr } undef, i64 2, 0
  %t13 = insertvalue { i64, ptr } %t12, ptr %t11, 1
  store { i64, ptr } %t13, ptr %l12, !tbaa !27
  %t15 = getelementptr { i64, ptr }, ptr %l12, i32 0, i32 1
  %t16 = load ptr, ptr %t15, !tbaa !27
  %t17 = getelementptr i32, ptr %t16, i64 0
  store i32 %t8, ptr %t17, !tbaa !33
  %t19 = getelementptr { i64, ptr }, ptr %l12, i32 0, i32 1
  %t20 = load ptr, ptr %t19, !tbaa !27
  %t21 = getelementptr i32, ptr %t20, i64 1
  store i32 %t9, ptr %t21, !tbaa !33
  %t23 = load { i64, ptr }, ptr %l12, !tbaa !27
  %t24 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eList(ptr %v0, ptr %s0, ptr %t7, { i64, ptr } %t23)
  store i32 %t24, ptr %l13
  br label %bb2
bb2:
  %t25 = load i32, ptr %l1, !tbaa !23
  %t26 = load ptr, ptr %l8, !tbaa !29
  %t27 = load i32, ptr %l13, !tbaa !23
  %t29 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eFunc(ptr %v0, ptr %t26, i32 %t27, i32 %t25, i32 0, i32 0, i64 0, i1 false, i32 0, i64 0)
  store i32 %t29, ptr %l15
  br label %bb3
bb3:
  %t31 = load ptr, ptr %l7, !tbaa !29
  %t32 = load i32, ptr %l15, !tbaa !23
  call void @compiler_2fmir_2eFn_2etfn(ptr %t30, ptr %v0, ptr %v1, ptr %t31, i32 %t32)
  call void @llvm.memmove.p0.p0.i64(ptr %l16, ptr %t30, i64 800, i1 false)
  br label %bb4
bb4:
  %t33 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 800, i64 8)
  store ptr %t33, ptr %lp2
  %t34 = load ptr, ptr %lp2
  call void @llvm.memmove.p0.p0.i64(ptr %t34, ptr %l16, i64 800, i1 false)
  %t35 = load ptr, ptr %lp2
  %t36 = getelementptr %"compiler/mir:Fn", ptr %t35, i32 0, i32 7
  store ptr %t36, ptr %l17, !tbaa !29
  %t37 = load ptr, ptr %l0, !tbaa !29
  %t39 = getelementptr %"compiler/types:Table", ptr %t37, i32 0, i32 0
  %t40 = load ptr, ptr %t39, !tbaa !29
  store ptr %t40, ptr %l19, !tbaa !29
  %t41 = load ptr, ptr %l19, !tbaa !29
  %t42 = call ptr @__olang_scope_or(ptr %v2, ptr %t41)
  %t43 = ptrtoint ptr %t42 to i64
  %t45 = inttoptr i64 %t43 to ptr
  %t46 = load ptr, ptr %l19, !tbaa !29
  %t47 = call i32 @compiler_2fsource_2ecompiler_2fsource_3aNames_2eIntern(ptr %t45, ptr %s0, ptr %t46, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d13, i32 0, i32 1) })
  store i32 %t47, ptr %l21
  br label %bb5
bb5:
  %t48 = load %"compiler/source:Span", ptr @G_2ecompiler_2fmir_2eSp0
  %t49 = load i32, ptr %l1, !tbaa !23
  store { i64, [1 x i64] } zeroinitializer, ptr %t50
  %t51 = getelementptr { i64, [1 x i64] }, ptr %t50, i32 0, i32 0
  store i64 3, ptr %t51
  %t52 = load { i64, [1 x i64] }, ptr %t50
  %t53 = load i32, ptr %l21, !tbaa !23
  %t58 = call %"compiler/mir:Local" @compiler_2fmir_3aLocal_2ector(ptr %s0, i32 %t53, %"compiler/source:Span" %t48, i32 %t49, i32 0, { i64, [1 x i64] } %t52)
  store %"compiler/mir:Local" %t58, ptr %l26
  br label %bb6
bb6:
  %t59 = load ptr, ptr %l17, !tbaa !29
  %t60 = load %"compiler/mir:Local", ptr %l26
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aLocal_3e_2eSetAt_3ccompiler_2fmir_3aLocal_3e(ptr %v1, ptr %t59, i64 0, %"compiler/mir:Local" %t60)
  br label %bb7
bb7:
  %t61 = load ptr, ptr %lp2
  %t62 = getelementptr %"compiler/mir:Fn", ptr %t61, i32 0, i32 7
  store ptr %t62, ptr %l27, !tbaa !29
  %t63 = load ptr, ptr %l0, !tbaa !29
  %t65 = getelementptr %"compiler/types:Table", ptr %t63, i32 0, i32 0
  %t66 = load ptr, ptr %t65, !tbaa !29
  store ptr %t66, ptr %l29, !tbaa !29
  %t67 = load ptr, ptr %l29, !tbaa !29
  %t68 = call ptr @__olang_scope_or(ptr %v2, ptr %t67)
  %t69 = ptrtoint ptr %t68 to i64
  %t71 = inttoptr i64 %t69 to ptr
  %t72 = load ptr, ptr %l29, !tbaa !29
  %t73 = call i32 @compiler_2fsource_2ecompiler_2fsource_3aNames_2eIntern(ptr %t71, ptr %s0, ptr %t72, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d14, i32 0, i32 1) })
  store i32 %t73, ptr %l31
  br label %bb8
bb8:
  %t74 = load %"compiler/source:Span", ptr @G_2ecompiler_2fmir_2eSp0
  %t75 = load i32, ptr %l1, !tbaa !23
  store { i64, [1 x i64] } zeroinitializer, ptr %t76
  %t77 = getelementptr { i64, [1 x i64] }, ptr %t76, i32 0, i32 0
  store i64 3, ptr %t77
  %t78 = load { i64, [1 x i64] }, ptr %t76
  %t79 = load i32, ptr %l31, !tbaa !23
  %t84 = call %"compiler/mir:Local" @compiler_2fmir_3aLocal_2ector(ptr %s0, i32 %t79, %"compiler/source:Span" %t74, i32 %t75, i32 0, { i64, [1 x i64] } %t78)
  store %"compiler/mir:Local" %t84, ptr %l36
  br label %bb9
bb9:
  %t85 = load ptr, ptr %l27, !tbaa !29
  %t86 = load %"compiler/mir:Local", ptr %l36
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aLocal_3e_2eSetAt_3ccompiler_2fmir_3aLocal_3e(ptr %v1, ptr %t85, i64 1, %"compiler/mir:Local" %t86)
  br label %bb10
bb10:
  %t87 = load ptr, ptr %lp2
  store ptr %t87, ptr %l37, !tbaa !29
  %t88 = load ptr, ptr %l0, !tbaa !29
  %t90 = getelementptr %"compiler/types:Table", ptr %t88, i32 0, i32 0
  %t91 = load ptr, ptr %t90, !tbaa !29
  store ptr %t91, ptr %l39, !tbaa !29
  %t92 = load ptr, ptr %l39, !tbaa !29
  %t93 = call ptr @__olang_scope_or(ptr %v2, ptr %t92)
  %t94 = ptrtoint ptr %t93 to i64
  %t96 = inttoptr i64 %t94 to ptr
  %t97 = load ptr, ptr %l39, !tbaa !29
  %t98 = call i32 @compiler_2fsource_2ecompiler_2fsource_3aNames_2eIntern(ptr %t96, ptr %s0, ptr %t97, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d15, i32 0, i32 1) })
  store i32 %t98, ptr %l41
  br label %bb11
bb11:
  %t99 = load %"compiler/source:Span", ptr @G_2ecompiler_2fmir_2eSp0
  %t100 = load i32, ptr %l1, !tbaa !23
  store { i64, [1 x i64] } zeroinitializer, ptr %t101
  %t102 = getelementptr { i64, [1 x i64] }, ptr %t101, i32 0, i32 0
  store i64 3, ptr %t102
  %t103 = load { i64, [1 x i64] }, ptr %t101
  %t104 = load i32, ptr %l41, !tbaa !23
  %t109 = call %"compiler/mir:Local" @compiler_2fmir_3aLocal_2ector(ptr %s0, i32 %t104, %"compiler/source:Span" %t99, i32 %t100, i32 2, { i64, [1 x i64] } %t103)
  store %"compiler/mir:Local" %t109, ptr %l46
  br label %bb12
bb12:
  %t110 = load ptr, ptr %l37, !tbaa !29
  %t111 = load %"compiler/mir:Local", ptr %l46
  %t112 = call i32 @compiler_2fmir_2ecompiler_2fmir_3aFn_2eAddLocal(ptr %v1, ptr %t110, %"compiler/mir:Local" %t111)
  store i32 %t112, ptr %l47
  br label %bb13
bb13:
  %t113 = load i32, ptr %l47, !tbaa !23
  store i32 %t113, ptr %l3, !tbaa !23
  store i32 0, ptr %l4, !tbaa !23
  %t114 = load ptr, ptr %lp2
  store ptr %t114, ptr %l48, !tbaa !29
  %t115 = load i32, ptr %l4, !tbaa !23
  store i32 %t115, ptr %l49, !tbaa !23
  %t116 = load %"compiler/source:Span", ptr @G_2ecompiler_2fmir_2eSp0
  store %"compiler/source:Span" %t116, ptr %l50
  %t117 = load i32, ptr %l3, !tbaa !23
  %t119 = call %"compiler/mir:Lvalue" @compiler_2fmir_2eLvalue_2eL(i32 %t117)
  store %"compiler/mir:Lvalue" %t119, ptr %l52
  br label %bb14
bb14:
  store i32 3, ptr %l53
  %t120 = load i32, ptr %l1, !tbaa !23
  store i32 %t120, ptr %l54, !tbaa !23
  %t121 = load ptr, ptr %lp2
  store ptr %t121, ptr %l55, !tbaa !29
  %t122 = call %"compiler/mir:Lvalue" @compiler_2fmir_2eLvalue_2eL(i32 0)
  store %"compiler/mir:Lvalue" %t122, ptr %l56
  br label %bb15
bb15:
  store { i64, [4 x i64] } zeroinitializer, ptr %t123
  %t124 = getelementptr { i64, [4 x i64] }, ptr %t123, i32 0, i32 0
  store i64 1, ptr %t124
  %t125 = load %"compiler/mir:Lvalue", ptr %l56
  %t126 = insertvalue { %"compiler/mir:Lvalue" } undef, %"compiler/mir:Lvalue" %t125, 0
  %t127 = getelementptr { i64, [4 x i64] }, ptr %t123, i32 0, i32 1
  store { %"compiler/mir:Lvalue" } %t126, ptr %t127
  %t128 = load { i64, [4 x i64] }, ptr %t123
  store { i64, [4 x i64] } %t128, ptr %l57
  %t129 = call %"compiler/mir:Lvalue" @compiler_2fmir_2eLvalue_2eL(i32 1)
  store %"compiler/mir:Lvalue" %t129, ptr %l58
  br label %bb16
bb16:
  store { i64, [4 x i64] } zeroinitializer, ptr %t130
  %t131 = getelementptr { i64, [4 x i64] }, ptr %t130, i32 0, i32 0
  store i64 1, ptr %t131
  %t132 = load %"compiler/mir:Lvalue", ptr %l58
  %t133 = insertvalue { %"compiler/mir:Lvalue" } undef, %"compiler/mir:Lvalue" %t132, 0
  %t134 = getelementptr { i64, [4 x i64] }, ptr %t130, i32 0, i32 1
  store { %"compiler/mir:Lvalue" } %t133, ptr %t134
  %t135 = load { i64, [4 x i64] }, ptr %t130
  %t136 = mul i64 2, 40
  %t137 = call ptr @__olang_scope_alloc_zeroed(ptr %s0, i64 %t136)
  %t138 = insertvalue { i64, ptr } undef, i64 2, 0
  %t139 = insertvalue { i64, ptr } %t138, ptr %t137, 1
  store { i64, ptr } %t139, ptr %l60, !tbaa !27
  %t140 = load { i64, [4 x i64] }, ptr %l57
  %t141 = getelementptr { i64, ptr }, ptr %l60, i32 0, i32 1
  %t142 = load ptr, ptr %t141, !tbaa !27
  %t143 = getelementptr { i64, [4 x i64] }, ptr %t142, i64 0
  store { i64, [4 x i64] } %t140, ptr %t143
  %t145 = getelementptr { i64, ptr }, ptr %l60, i32 0, i32 1
  %t146 = load ptr, ptr %t145, !tbaa !27
  %t147 = getelementptr { i64, [4 x i64] }, ptr %t146, i64 1
  store { i64, [4 x i64] } %t135, ptr %t147
  %t148 = load ptr, ptr %l55, !tbaa !29
  %t149 = load { i64, ptr }, ptr %l60, !tbaa !27
  %t150 = call %"compiler/mir:Range" @compiler_2fmir_2ecompiler_2fmir_3aFn_2eArgs(ptr %v1, ptr %s0, ptr %t148, { i64, ptr } %t149)
  store %"compiler/mir:Range" %t150, ptr %l61
  br label %bb17
bb17:
  store { i64, [15 x i64] } zeroinitializer, ptr %t151
  %t152 = getelementptr { i64, [15 x i64] }, ptr %t151, i32 0, i32 0
  store i64 3, ptr %t152
  %t153 = load i32, ptr %l53, !range !{i32 0, i32 52}
  %t154 = insertvalue { i32, i32, %"compiler/mir:Range" } undef, i32 %t153, 0
  %t155 = load i32, ptr %l54, !tbaa !23
  %t156 = insertvalue { i32, i32, %"compiler/mir:Range" } %t154, i32 %t155, 1
  %t157 = load %"compiler/mir:Range", ptr %l61
  %t158 = insertvalue { i32, i32, %"compiler/mir:Range" } %t156, %"compiler/mir:Range" %t157, 2
  %t159 = getelementptr { i64, [15 x i64] }, ptr %t151, i32 0, i32 1
  store { i32, i32, %"compiler/mir:Range" } %t158, ptr %t159
  %t160 = load { i64, [15 x i64] }, ptr %t151
  store { i64, [21 x i64] } zeroinitializer, ptr %t161
  %t162 = getelementptr { i64, [21 x i64] }, ptr %t161, i32 0, i32 0
  store i64 0, ptr %t162
  %t163 = load %"compiler/source:Span", ptr %l50
  %t164 = insertvalue { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } undef, %"compiler/source:Span" %t163, 0
  %t165 = load %"compiler/mir:Lvalue", ptr %l52
  %t166 = insertvalue { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } %t164, %"compiler/mir:Lvalue" %t165, 1
  %t168 = insertvalue { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } %t166, { i64, [15 x i64] } %t160, 2
  %t169 = getelementptr { i64, [21 x i64] }, ptr %t161, i32 0, i32 1
  store { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } %t168, ptr %t169
  %t170 = load { i64, [21 x i64] }, ptr %t161
  store { i64, [21 x i64] } %t170, ptr %l63
  %t171 = load ptr, ptr %l48, !tbaa !29
  %t172 = load i32, ptr %l49, !tbaa !23
  call void @compiler_2fmir_2ecompiler_2fmir_3aFn_2eAdd(ptr %v1, ptr %s0, ptr %t171, i32 %t172, ptr %l63)
  br label %bb18
bb18:
  %t174 = load ptr, ptr %lp2
  %t175 = load i32, ptr %l4, !tbaa !23
  %t176 = load %"compiler/source:Span", ptr @G_2ecompiler_2fmir_2eSp0
  store { i64, [21 x i64] } zeroinitializer, ptr %t177
  %t178 = getelementptr { i64, [21 x i64] }, ptr %t177, i32 0, i32 0
  store i64 4, ptr %t178
  %t180 = insertvalue { %"compiler/source:Span", i32 } undef, %"compiler/source:Span" %t176, 0
  %t181 = insertvalue { %"compiler/source:Span", i32 } %t180, i32 0, 1
  %t182 = getelementptr { i64, [21 x i64] }, ptr %t177, i32 0, i32 1
  store { %"compiler/source:Span", i32 } %t181, ptr %t182
  %t183 = load { i64, [21 x i64] }, ptr %t177
  store { i64, [21 x i64] } %t183, ptr %l68
  call void @compiler_2fmir_2ecompiler_2fmir_3aFn_2eAdd(ptr %v1, ptr %s0, ptr %t174, i32 %t175, ptr %l68)
  br label %bb19
bb19:
  %t187 = load ptr, ptr %lp2
  store ptr %t187, ptr %l70, !tbaa !29
  %t188 = load i32, ptr %l4, !tbaa !23
  store i32 %t188, ptr %l71, !tbaa !23
  %t189 = load %"compiler/source:Span", ptr @G_2ecompiler_2fmir_2eSp0
  store %"compiler/source:Span" %t189, ptr %l72
  %t190 = load i32, ptr %l3, !tbaa !23
  %t192 = call %"compiler/mir:Lvalue" @compiler_2fmir_2eLvalue_2eL(i32 %t190)
  store %"compiler/mir:Lvalue" %t192, ptr %l74
  br label %bb20
bb20:
  store { i64, [4 x i64] } zeroinitializer, ptr %t193
  %t194 = getelementptr { i64, [4 x i64] }, ptr %t193, i32 0, i32 0
  store i64 1, ptr %t194
  %t195 = load %"compiler/mir:Lvalue", ptr %l74
  %t196 = insertvalue { %"compiler/mir:Lvalue" } undef, %"compiler/mir:Lvalue" %t195, 0
  %t197 = getelementptr { i64, [4 x i64] }, ptr %t193, i32 0, i32 1
  store { %"compiler/mir:Lvalue" } %t196, ptr %t197
  %t198 = load { i64, [4 x i64] }, ptr %t193
  store { i64, [8 x i64] } zeroinitializer, ptr %t199
  %t200 = getelementptr { i64, [8 x i64] }, ptr %t199, i32 0, i32 0
  store i64 5, ptr %t200
  %t201 = load %"compiler/source:Span", ptr %l72
  %t202 = insertvalue { %"compiler/source:Span", { i64, [4 x i64] } } undef, %"compiler/source:Span" %t201, 0
  %t204 = insertvalue { %"compiler/source:Span", { i64, [4 x i64] } } %t202, { i64, [4 x i64] } %t198, 1
  %t205 = getelementptr { i64, [8 x i64] }, ptr %t199, i32 0, i32 1
  store { %"compiler/source:Span", { i64, [4 x i64] } } %t204, ptr %t205
  %t206 = load { i64, [8 x i64] }, ptr %t199
  %t207 = load ptr, ptr %l70, !tbaa !29
  %t208 = load i32, ptr %l71, !tbaa !23
  call void @compiler_2fmir_2ecompiler_2fmir_3aFn_2eEnd(ptr %v1, ptr %t207, i32 %t208, { i64, [8 x i64] } %t206)
  br label %bb21
bb21:
  %t210 = load ptr, ptr %lp2
  call void @llvm.memmove.p0.p0.i64(ptr %l77, ptr %t210, i64 800, i1 false)
  call void @__olang_scope_close(ptr %s0)
  call void @llvm.memmove.p0.p0.i64(ptr %out, ptr %l77, i64 800, i1 false)
  br label %ret
ret:
  ret void
}

define dso_local i32 @compiler_2fmir_2eGuardType(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca ptr
  %l7 = alloca i32
  %l11 = alloca i32
  %l12 = alloca { i64, ptr }
  %l13 = alloca i32
  %l14 = alloca i32
  %s0 = alloca %olang.scope
  %rv = alloca i32
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1, ptr %l2, !tbaa !29
  %t2 = load ptr, ptr %l0, !tbaa !29
  store ptr %t2, ptr %l3, !tbaa !29
  %t3 = load ptr, ptr %l0, !tbaa !29
  %t4 = load i32, ptr @G_2ecompiler_2ftypes_2eBoolT, !tbaa !23
  %t5 = load i64, ptr @G_2ecompiler_2ftypes_2eWritable, !tbaa !24
  %t9 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRef(ptr %v0, ptr %t3, i32 %t4, i64 %t5)
  store i32 %t9, ptr %l7
  br label %bb1
bb1:
  %t10 = load ptr, ptr %l0, !tbaa !29
  %t12 = load i64, ptr @G_2ecompiler_2ftypes_2eWritable, !tbaa !24
  %t16 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRef(ptr %v0, ptr %t10, i32 %a1, i64 %t12)
  store i32 %t16, ptr %l11
  br label %bb2
bb2:
  %t17 = mul i64 2, 4
  %t18 = call ptr @__olang_scope_alloc_zeroed(ptr %s0, i64 %t17)
  %t19 = insertvalue { i64, ptr } undef, i64 2, 0
  %t20 = insertvalue { i64, ptr } %t19, ptr %t18, 1
  store { i64, ptr } %t20, ptr %l12, !tbaa !27
  %t21 = load i32, ptr %l7, !tbaa !23
  %t22 = getelementptr { i64, ptr }, ptr %l12, i32 0, i32 1
  %t23 = load ptr, ptr %t22, !tbaa !27
  %t24 = getelementptr i32, ptr %t23, i64 0
  store i32 %t21, ptr %t24, !tbaa !33
  %t25 = load i32, ptr %l11, !tbaa !23
  %t26 = getelementptr { i64, ptr }, ptr %l12, i32 0, i32 1
  %t27 = load ptr, ptr %t26, !tbaa !27
  %t28 = getelementptr i32, ptr %t27, i64 1
  store i32 %t25, ptr %t28, !tbaa !33
  %t29 = load ptr, ptr %l3, !tbaa !29
  %t30 = load { i64, ptr }, ptr %l12, !tbaa !27
  %t31 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eList(ptr %v0, ptr %s0, ptr %t29, { i64, ptr } %t30)
  store i32 %t31, ptr %l13
  br label %bb3
bb3:
  %t32 = load ptr, ptr %l2, !tbaa !29
  %t33 = load i32, ptr %l13, !tbaa !23
  %t34 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eTuple(ptr %v0, ptr %t32, i32 %t33)
  store i32 %t34, ptr %l14
  br label %bb4
bb4:
  call void @__olang_scope_close(ptr %s0)
  %t35 = load i32, ptr %l14, !tbaa !23
  store i32 %t35, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local i1 @compiler_2fmir_2eHasFields(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca i32
  %l3 = alloca i32
  %l6 = alloca i32
  %l9 = alloca i32
  %l12 = alloca i1
  %l15 = alloca i1
  %l18 = alloca i1
  %l19 = alloca ptr
  %l22 = alloca i32
  %l23 = alloca i32
  %l26 = alloca i1
  %l29 = alloca i1
  %rv = alloca i1
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t5 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %v0, ptr %t1, i32 %a1)
  store i32 %t5, ptr %l6
  br label %bb1
bb1:
  %t6 = load i32, ptr %l6, !tbaa !23
  store i32 %t6, ptr %l2, !tbaa !23
  %t7 = load ptr, ptr %l0, !tbaa !29
  %t8 = load i32, ptr %l2, !tbaa !23
  %t11 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t7, i32 %t8)
  store i32 %t11, ptr %l9
  br label %bb2
bb2:
  %t12 = load i32, ptr %l9, !range !{i32 0, i32 33}
  store i32 %t12, ptr %l3
  %t13 = load i32, ptr %l3, !range !{i32 0, i32 33}
  %t15 = trunc i64 22 to i32
  %t16 = icmp eq i32 %t13, %t15
  br i1 %t16, label %bb3, label %bb4
bb3:
  store i1 true, ptr %l12, !tbaa !21
  br label %bb5
bb4:
  %t18 = load i32, ptr %l3, !range !{i32 0, i32 33}
  %t20 = trunc i64 23 to i32
  %t21 = icmp eq i32 %t18, %t20
  store i1 %t21, ptr %l12, !tbaa !21
  br label %bb5
bb5:
  %t23 = load i1, ptr %l12, !tbaa !21
  br i1 %t23, label %bb6, label %bb7
bb6:
  store i1 true, ptr %l15, !tbaa !21
  br label %bb17
bb7:
  %t24 = load i32, ptr %l3, !range !{i32 0, i32 33}
  %t26 = trunc i64 18 to i32
  %t27 = icmp eq i32 %t24, %t26
  br i1 %t27, label %bb8, label %bb9
bb8:
  %t29 = load ptr, ptr %l0, !tbaa !29
  store ptr %t29, ptr %l19, !tbaa !29
  %t30 = load ptr, ptr %l0, !tbaa !29
  %t31 = load i32, ptr %l2, !tbaa !23
  %t34 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %t30, i32 %t31)
  store i32 %t34, ptr %l22
  br label %bb10
bb9:
  store i1 false, ptr %l18, !tbaa !21
  br label %bb12
bb10:
  %t35 = load ptr, ptr %l19, !tbaa !29
  %t36 = load i32, ptr %l22, !tbaa !23
  %t37 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclKindOf(ptr %v0, ptr %t35, i32 %t36)
  store i32 %t37, ptr %l23
  br label %bb11
bb11:
  %t38 = load i32, ptr %l23, !range !{i32 0, i32 6}
  %t40 = trunc i64 0 to i32
  %t41 = icmp eq i32 %t38, %t40
  store i1 %t41, ptr %l18, !tbaa !21
  br label %bb12
bb12:
  %t43 = load i1, ptr %l18, !tbaa !21
  br i1 %t43, label %bb13, label %bb14
bb13:
  %t44 = load ptr, ptr %l0, !tbaa !29
  %t45 = load i32, ptr %l2, !tbaa !23
  %t48 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eHasBody(ptr %v0, ptr %t44, i32 %t45)
  store i1 %t48, ptr %l29
  br label %bb15
bb14:
  store i1 false, ptr %l26, !tbaa !21
  br label %bb16
bb15:
  %t49 = load i1, ptr %l29, !tbaa !21
  store i1 %t49, ptr %l26, !tbaa !21
  br label %bb16
bb16:
  %t50 = load i1, ptr %l26, !tbaa !21
  store i1 %t50, ptr %l15, !tbaa !21
  br label %bb17
bb17:
  %t51 = load i1, ptr %l15, !tbaa !21
  store i1 %t51, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i32 @compiler_2fmir_2ecompiler_2fmir_3aFn_2eAddConst(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i64
  %l3 = alloca { i64, ptr }
  %l4 = alloca { i64, ptr }
  %l6 = alloca { i64, [1 x i64] }
  %l7 = alloca ptr
  %l8 = alloca i1
  %l15 = alloca ptr
  %l16 = alloca i1
  %l23 = alloca %"compiler/mir:Range"
  %l25 = alloca ptr
  %l26 = alloca i1
  %l33 = alloca %"compiler/mir:Range"
  %l40 = alloca i64
  %rv = alloca i32
  %t17 = alloca { i64, [1 x i64] }, align 8
  %t44 = alloca { i64, [1 x i64] }, align 8
  %t71 = alloca { i64, [1 x i64] }, align 8
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
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 3}
  %t8 = icmp eq i64 %t6, 0
  store i1 %t8, ptr %l8, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l8, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  %t10 = load ptr, ptr %l1, !tbaa !29
  %t12 = getelementptr { i64, [2 x i64] }, ptr %t10, i32 0, i32 1
  %t13 = getelementptr { i64 }, ptr %t12, i32 0, i32 0
  %t14 = load i64, ptr %t13
  store i64 %t14, ptr %l2, !tbaa !24
  br label %bb5
bb4:
  br label %bb6
bb5:
  %t16 = load i64, ptr %l2, !tbaa !24
  store { i64, [1 x i64] } zeroinitializer, ptr %t17
  %t18 = getelementptr { i64, [1 x i64] }, ptr %t17, i32 0, i32 0
  store i64 0, ptr %t18
  %t20 = insertvalue { i64 } undef, i64 %t16, 0
  %t21 = getelementptr { i64, [1 x i64] }, ptr %t17, i32 0, i32 1
  store { i64 } %t20, ptr %t21
  %t22 = load { i64, [1 x i64] }, ptr %t17
  store { i64, [1 x i64] } %t22, ptr %l6
  br label %bb21
bb6:
  %t24 = load ptr, ptr %l1, !tbaa !29
  store ptr %t24, ptr %l15, !tbaa !29
  store i1 false, ptr %l16, !tbaa !21
  %t25 = load ptr, ptr %l15, !tbaa !29
  %t26 = icmp ne ptr %t25, null
  br i1 %t26, label %bb7, label %bb8
bb7:
  %t28 = load ptr, ptr %l15, !tbaa !29
  %t29 = load i64, ptr %t28, !range !{i64 0, i64 3}
  %t31 = icmp eq i64 %t29, 1
  store i1 %t31, ptr %l16, !tbaa !21
  br label %bb8
bb8:
  %t32 = load i1, ptr %l16, !tbaa !21
  br i1 %t32, label %bb9, label %bb10
bb9:
  %t33 = load ptr, ptr %l1, !tbaa !29
  %t35 = getelementptr { i64, [2 x i64] }, ptr %t33, i32 0, i32 1
  %t36 = getelementptr { { i64, ptr } }, ptr %t35, i32 0, i32 0
  %t37 = load { i64, ptr }, ptr %t36
  store { i64, ptr } %t37, ptr %l3, !tbaa !27
  br label %bb11
bb10:
  br label %bb13
bb11:
  %t39 = load ptr, ptr %l0, !tbaa !29
  %t40 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t43 = call %"compiler/mir:Range" @compiler_2fmir_2ecompiler_2fmir_3aFn_2eaddBytes(ptr %v0, ptr %v1, ptr %t39, { i64, ptr } %t40)
  store %"compiler/mir:Range" %t43, ptr %l23
  br label %bb12
bb12:
  store { i64, [1 x i64] } zeroinitializer, ptr %t44
  %t45 = getelementptr { i64, [1 x i64] }, ptr %t44, i32 0, i32 0
  store i64 1, ptr %t45
  %t46 = load %"compiler/mir:Range", ptr %l23
  %t47 = insertvalue { %"compiler/mir:Range" } undef, %"compiler/mir:Range" %t46, 0
  %t48 = getelementptr { i64, [1 x i64] }, ptr %t44, i32 0, i32 1
  store { %"compiler/mir:Range" } %t47, ptr %t48
  %t49 = load { i64, [1 x i64] }, ptr %t44
  store { i64, [1 x i64] } %t49, ptr %l6
  br label %bb21
bb13:
  %t51 = load ptr, ptr %l1, !tbaa !29
  store ptr %t51, ptr %l25, !tbaa !29
  store i1 false, ptr %l26, !tbaa !21
  %t52 = load ptr, ptr %l25, !tbaa !29
  %t53 = icmp ne ptr %t52, null
  br i1 %t53, label %bb14, label %bb15
bb14:
  %t55 = load ptr, ptr %l25, !tbaa !29
  %t56 = load i64, ptr %t55, !range !{i64 0, i64 3}
  %t58 = icmp eq i64 %t56, 2
  store i1 %t58, ptr %l26, !tbaa !21
  br label %bb15
bb15:
  %t59 = load i1, ptr %l26, !tbaa !21
  br i1 %t59, label %bb16, label %bb17
bb16:
  %t60 = load ptr, ptr %l1, !tbaa !29
  %t62 = getelementptr { i64, [2 x i64] }, ptr %t60, i32 0, i32 1
  %t63 = getelementptr { { i64, ptr } }, ptr %t62, i32 0, i32 0
  %t64 = load { i64, ptr }, ptr %t63
  store { i64, ptr } %t64, ptr %l4, !tbaa !27
  br label %bb18
bb17:
  br label %bb20
bb18:
  %t66 = load ptr, ptr %l0, !tbaa !29
  %t67 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t70 = call %"compiler/mir:Range" @compiler_2fmir_2ecompiler_2fmir_3aFn_2eaddConstItems(ptr %v0, ptr %v1, ptr %t66, { i64, ptr } %t67)
  store %"compiler/mir:Range" %t70, ptr %l33
  br label %bb19
bb19:
  store { i64, [1 x i64] } zeroinitializer, ptr %t71
  %t72 = getelementptr { i64, [1 x i64] }, ptr %t71, i32 0, i32 0
  store i64 2, ptr %t72
  %t73 = load %"compiler/mir:Range", ptr %l33
  %t74 = insertvalue { %"compiler/mir:Range" } undef, %"compiler/mir:Range" %t73, 0
  %t75 = getelementptr { i64, [1 x i64] }, ptr %t71, i32 0, i32 1
  store { %"compiler/mir:Range" } %t74, ptr %t75
  %t76 = load { i64, [1 x i64] }, ptr %t71
  store { i64, [1 x i64] } %t76, ptr %l6
  br label %bb21
bb20:
  call void @__olang_check_failed(ptr @olang_loc_f17cf97eff0353b6_fea489b4a6f80ab2)
  unreachable
bb21:
  %t78 = load { i64, [1 x i64] }, ptr %l6
  %t79 = load ptr, ptr %l0, !tbaa !29
  %t81 = getelementptr %"compiler/mir:Fn", ptr %t79, i32 0, i32 19
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aConstNode_3e_2ePush_3ccompiler_2fmir_3aConstNode_3e(ptr %v0, ptr %t81, { i64, [1 x i64] } %t78)
  br label %bb22
bb22:
  %t85 = load ptr, ptr %l0, !tbaa !29
  %t87 = getelementptr %"compiler/mir:Fn", ptr %t85, i32 0, i32 19
  %t89 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aConstNode_3e_2eLen_3ccompiler_2fmir_3aConstNode_3e(ptr %v0, ptr %t87)
  store i64 %t89, ptr %l40
  br label %bb23
bb23:
  %t90 = load i64, ptr %l40, !tbaa !24
  %t91 = sub i64 %t90, 1
  %t93 = trunc i64 %t91 to i32
  store i32 %t93, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local i32 @compiler_2fmir_2ecompiler_2fmir_3aFn_2eAddLocal(ptr %v0, ptr %a0, %"compiler/mir:Local" %a1) #0 {
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
  %t3 = getelementptr %"compiler/mir:Fn", ptr %t1, i32 0, i32 7
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aLocal_3e_2ePush_3ccompiler_2fmir_3aLocal_3e(ptr %v0, ptr %t3, %"compiler/mir:Local" %a1)
  br label %bb1
bb1:
  %t7 = load ptr, ptr %l0, !tbaa !29
  %t9 = getelementptr %"compiler/mir:Fn", ptr %t7, i32 0, i32 7
  %t11 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aLocal_3e_2eLen_3ccompiler_2fmir_3aLocal_3e(ptr %v0, ptr %t9)
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

define dso_local i32 @compiler_2fmir_2ecompiler_2fmir_3aFn_2eAddTask(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, [7 x i64] } %a1, %"compiler/mir:Range" %a2, %"compiler/mir:Range" %a3, { i64, ptr } %a4, { i64, ptr } %a5, %"compiler/mir:Range" %a6, %"compiler/source:Span" %a7, %"compiler/mir:Range" %a8) #0 {
entry:
  %l0 = alloca ptr
  %l4 = alloca { i64, ptr }
  %l5 = alloca { i64, ptr }
  %l9 = alloca i64
  %l10 = alloca { i64, ptr }
  %l11 = alloca i64
  %l12 = alloca i64
  %l14 = alloca i64
  %l15 = alloca { i64, ptr }
  %l16 = alloca i64
  %l17 = alloca i64
  %l21 = alloca i64
  %l29 = alloca { i64, ptr }
  %l39 = alloca i64
  %l47 = alloca { i64, ptr }
  %l56 = alloca ptr
  %l57 = alloca { i64, [7 x i64] }
  %l58 = alloca %"compiler/mir:Range"
  %l59 = alloca %"compiler/mir:Range"
  %l65 = alloca %"compiler/mir:Range"
  %l71 = alloca %"compiler/mir:Range"
  %l75 = alloca %"compiler/mir:Task"
  %l78 = alloca i64
  %s0 = alloca %olang.scope
  %rv = alloca i32
  store ptr %a0, ptr %l0
  store { i64, ptr } %a4, ptr %l4
  store { i64, ptr } %a5, ptr %l5
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/mir:Fn", ptr %t1, i32 0, i32 13
  %t5 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aLvalue_3e_2eLen_3ccompiler_2fmir_3aLvalue_3e(ptr %v0, ptr %t3)
  store i64 %t5, ptr %l21
  br label %bb1
bb1:
  %t6 = load i64, ptr %l21, !tbaa !24
  store i64 %t6, ptr %l9, !tbaa !24
  %t7 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t7, ptr %l10, !tbaa !27
  store i64 0, ptr %l11, !tbaa !24
  %t9 = load { i64, ptr }, ptr %l10, !tbaa !27
  %t11 = extractvalue { i64, ptr } %t9, 0
  store i64 %t11, ptr %l12, !tbaa !24
  br label %bb2
bb2:
  %t13 = load i64, ptr %l11, !tbaa !24
  %t14 = load i64, ptr %l12, !tbaa !24
  %t17 = icmp slt i64 %t13, %t14
  %t19 = xor i1 %t17, true
  br i1 %t19, label %bb3, label %bb4
bb3:
  br label %bb8
bb4:
  br label %bb5
bb5:
  %t21 = load { i64, ptr }, ptr %l10, !tbaa !27
  store { i64, ptr } %t21, ptr %l29, !tbaa !27
  %t22 = load i64, ptr %l11, !tbaa !24
  %t24 = getelementptr { i64, ptr }, ptr %l29, i32 0, i32 1
  %t25 = load ptr, ptr %t24, !tbaa !27
  %t26 = getelementptr %"compiler/mir:Lvalue", ptr %t25, i64 %t22
  %t27 = load %"compiler/mir:Lvalue", ptr %t26
  %t29 = load ptr, ptr %l0, !tbaa !29
  %t31 = getelementptr %"compiler/mir:Fn", ptr %t29, i32 0, i32 13
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aLvalue_3e_2ePush_3ccompiler_2fmir_3aLvalue_3e(ptr %v0, ptr %t31, %"compiler/mir:Lvalue" %t27)
  br label %bb6
bb6:
  br label %bb7
bb7:
  %t35 = load i64, ptr %l11, !tbaa !24
  %t37 = add i64 %t35, 1
  store i64 %t37, ptr %l11, !tbaa !24
  br label %bb2
bb8:
  %t39 = load ptr, ptr %l0, !tbaa !29
  %t41 = getelementptr %"compiler/mir:Fn", ptr %t39, i32 0, i32 17
  %t43 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aTaskClause_3e_2eLen_3ccompiler_2fmir_3aTaskClause_3e(ptr %v0, ptr %t41)
  store i64 %t43, ptr %l39
  br label %bb9
bb9:
  %t44 = load i64, ptr %l39, !tbaa !24
  store i64 %t44, ptr %l14, !tbaa !24
  %t45 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t45, ptr %l15, !tbaa !27
  store i64 0, ptr %l16, !tbaa !24
  %t47 = load { i64, ptr }, ptr %l15, !tbaa !27
  %t49 = extractvalue { i64, ptr } %t47, 0
  store i64 %t49, ptr %l17, !tbaa !24
  br label %bb10
bb10:
  %t51 = load i64, ptr %l16, !tbaa !24
  %t52 = load i64, ptr %l17, !tbaa !24
  %t55 = icmp slt i64 %t51, %t52
  %t57 = xor i1 %t55, true
  br i1 %t57, label %bb11, label %bb12
bb11:
  br label %bb16
bb12:
  br label %bb13
bb13:
  %t59 = load { i64, ptr }, ptr %l15, !tbaa !27
  store { i64, ptr } %t59, ptr %l47, !tbaa !27
  %t60 = load i64, ptr %l16, !tbaa !24
  %t62 = getelementptr { i64, ptr }, ptr %l47, i32 0, i32 1
  %t63 = load ptr, ptr %t62, !tbaa !27
  %t64 = getelementptr %"compiler/mir:TaskClause", ptr %t63, i64 %t60
  %t65 = load %"compiler/mir:TaskClause", ptr %t64
  %t67 = load ptr, ptr %l0, !tbaa !29
  %t69 = getelementptr %"compiler/mir:Fn", ptr %t67, i32 0, i32 17
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aTaskClause_3e_2ePush_3ccompiler_2fmir_3aTaskClause_3e(ptr %v0, ptr %t69, %"compiler/mir:TaskClause" %t65)
  br label %bb14
bb14:
  br label %bb15
bb15:
  %t73 = load i64, ptr %l16, !tbaa !24
  %t75 = add i64 %t73, 1
  store i64 %t75, ptr %l16, !tbaa !24
  br label %bb10
bb16:
  %t77 = load ptr, ptr %l0, !tbaa !29
  %t79 = getelementptr %"compiler/mir:Fn", ptr %t77, i32 0, i32 16
  store ptr %t79, ptr %l56, !tbaa !29
  store { i64, [7 x i64] } %a1, ptr %l57
  store %"compiler/mir:Range" %a2, ptr %l58
  store %"compiler/mir:Range" %a3, ptr %l59
  %t83 = load i64, ptr %l9, !tbaa !24
  %t85 = trunc i64 %t83 to i32
  %t86 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t88 = extractvalue { i64, ptr } %t86, 0
  %t90 = trunc i64 %t88 to i32
  %t93 = call %"compiler/mir:Range" @compiler_2fmir_3aRange_2ector(ptr %s0, i32 %t85, i32 %t90)
  store %"compiler/mir:Range" %t93, ptr %l65
  br label %bb17
bb17:
  %t94 = load i64, ptr %l14, !tbaa !24
  %t96 = trunc i64 %t94 to i32
  %t97 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t99 = extractvalue { i64, ptr } %t97, 0
  %t101 = trunc i64 %t99 to i32
  %t104 = call %"compiler/mir:Range" @compiler_2fmir_3aRange_2ector(ptr %s0, i32 %t96, i32 %t101)
  store %"compiler/mir:Range" %t104, ptr %l71
  br label %bb18
bb18:
  %t108 = load { i64, [7 x i64] }, ptr %l57
  %t109 = load %"compiler/mir:Range", ptr %l58
  %t110 = load %"compiler/mir:Range", ptr %l59
  %t111 = load %"compiler/mir:Range", ptr %l65
  %t112 = load %"compiler/mir:Range", ptr %l71
  %t116 = call %"compiler/mir:Task" @compiler_2fmir_3aTask_2ector(ptr %s0, { i64, [7 x i64] } %t108, %"compiler/mir:Range" %t109, %"compiler/mir:Range" %t110, %"compiler/mir:Range" %t111, %"compiler/mir:Range" %t112, %"compiler/mir:Range" %a6, %"compiler/source:Span" %a7, %"compiler/mir:Range" %a8)
  store %"compiler/mir:Task" %t116, ptr %l75
  br label %bb19
bb19:
  %t117 = load ptr, ptr %l56, !tbaa !29
  %t118 = load %"compiler/mir:Task", ptr %l75
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aTask_3e_2ePush_3ccompiler_2fmir_3aTask_3e(ptr %v0, ptr %t117, %"compiler/mir:Task" %t118)
  br label %bb20
bb20:
  %t119 = load ptr, ptr %l0, !tbaa !29
  %t121 = getelementptr %"compiler/mir:Fn", ptr %t119, i32 0, i32 16
  %t123 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aTask_3e_2eLen_3ccompiler_2fmir_3aTask_3e(ptr %v0, ptr %t121)
  store i64 %t123, ptr %l78
  br label %bb21
bb21:
  %t124 = load i64, ptr %l78, !tbaa !24
  %t125 = sub i64 %t124, 1
  %t127 = trunc i64 %t125 to i32
  call void @__olang_scope_close(ptr %s0)
  store i32 %t127, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local { i64, ptr } @compiler_2fmir_2ecompiler_2fmir_3aFn_2eDump(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1) #0 {
entry:
  %l2 = alloca ptr
  %l5 = alloca %"compiler/mir:dumper"
  %l10 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t5 = call %"compiler/mir:dumper" @compiler_2fmir_3adumper_2ector(ptr %v0, ptr %v1, ptr %s0, ptr %a0, ptr %a1)
  store %"compiler/mir:dumper" %t5, ptr %l5
  br label %bb1
bb1:
  %t6 = load %"compiler/mir:dumper", ptr %l5
  %t7 = call ptr @__olang_scope_alloc_a(ptr %s0, i64 48, i64 8)
  store %"compiler/mir:dumper" %t6, ptr %t7
  store ptr %t7, ptr %l2, !tbaa !29
  %t9 = load ptr, ptr %l2, !tbaa !29
  call void @compiler_2fmir_2ecompiler_2fmir_3adumper_2eall(ptr %s0, ptr %v1, ptr %v0, ptr %t9)
  br label %bb2
bb2:
  %t11 = load ptr, ptr %l2, !tbaa !29
  %t13 = getelementptr %"compiler/mir:dumper", ptr %t11, i32 0, i32 2
  %t15 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %s0, ptr %v2, ptr %t13)
  store { i64, ptr } %t15, ptr %l10
  br label %bb3
bb3:
  call void @__olang_scope_close(ptr %s0)
  %t16 = load { i64, ptr }, ptr %l10, !tbaa !27
  store { i64, ptr } %t16, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local %"compiler/mir:Range" @compiler_2fmir_2ecompiler_2fmir_3aFn_2eScopeRefs(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca { i64, ptr }
  %l2 = alloca i64
  %l3 = alloca { i64, ptr }
  %l4 = alloca i64
  %l5 = alloca i64
  %l9 = alloca i64
  %l17 = alloca { i64, ptr }
  %l30 = alloca %"compiler/mir:Range"
  %s0 = alloca %olang.scope
  %rv = alloca %"compiler/mir:Range"
  store ptr %a0, ptr %l0
  store { i64, ptr } %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/mir:Fn", ptr %t1, i32 0, i32 12
  %t5 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aScopeRef_3e_2eLen_3ccompiler_2fmir_3aScopeRef_3e(ptr %v0, ptr %t3)
  store i64 %t5, ptr %l9
  br label %bb1
bb1:
  %t6 = load i64, ptr %l9, !tbaa !24
  store i64 %t6, ptr %l2, !tbaa !24
  %t7 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t7, ptr %l3, !tbaa !27
  store i64 0, ptr %l4, !tbaa !24
  %t9 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t11 = extractvalue { i64, ptr } %t9, 0
  store i64 %t11, ptr %l5, !tbaa !24
  br label %bb2
bb2:
  %t13 = load i64, ptr %l4, !tbaa !24
  %t14 = load i64, ptr %l5, !tbaa !24
  %t17 = icmp slt i64 %t13, %t14
  %t19 = xor i1 %t17, true
  br i1 %t19, label %bb3, label %bb4
bb3:
  br label %bb8
bb4:
  br label %bb5
bb5:
  %t21 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t21, ptr %l17, !tbaa !27
  %t22 = load i64, ptr %l4, !tbaa !24
  %t24 = getelementptr { i64, ptr }, ptr %l17, i32 0, i32 1
  %t25 = load ptr, ptr %t24, !tbaa !27
  %t26 = getelementptr { i64, [1 x i64] }, ptr %t25, i64 %t22
  %t27 = load { i64, [1 x i64] }, ptr %t26
  %t29 = load ptr, ptr %l0, !tbaa !29
  %t31 = getelementptr %"compiler/mir:Fn", ptr %t29, i32 0, i32 12
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aScopeRef_3e_2ePush_3ccompiler_2fmir_3aScopeRef_3e(ptr %v0, ptr %t31, { i64, [1 x i64] } %t27)
  br label %bb6
bb6:
  br label %bb7
bb7:
  %t35 = load i64, ptr %l4, !tbaa !24
  %t37 = add i64 %t35, 1
  store i64 %t37, ptr %l4, !tbaa !24
  br label %bb2
bb8:
  %t39 = load i64, ptr %l2, !tbaa !24
  %t41 = trunc i64 %t39 to i32
  %t42 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t44 = extractvalue { i64, ptr } %t42, 0
  %t46 = trunc i64 %t44 to i32
  %t49 = call %"compiler/mir:Range" @compiler_2fmir_3aRange_2ector(ptr %s0, i32 %t41, i32 %t46)
  store %"compiler/mir:Range" %t49, ptr %l30
  br label %bb9
bb9:
  call void @__olang_scope_close(ptr %s0)
  %t50 = load %"compiler/mir:Range", ptr %l30
  store %"compiler/mir:Range" %t50, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/mir:Range", ptr %rv
  ret %"compiler/mir:Range" %rr
}

define dso_local i1 @compiler_2fmir_2ecompiler_2fmir_3aFn_2eWritesInto(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i32 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l10 = alloca ptr
  %l11 = alloca i64
  %l12 = alloca { i64, [21 x i64] }
  %l15 = alloca i64
  %l19 = alloca i64
  %l22 = alloca i64
  %l43 = alloca ptr
  %l46 = alloca i64
  %l48 = alloca i64
  %l53 = alloca { i64, [21 x i64] }
  %l55 = alloca { i64, [21 x i64] }
  %l57 = alloca i1
  %rv = alloca i1
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store i64 0, ptr %l3, !tbaa !24
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/mir:Fn", ptr %t1, i32 0, i32 9
  %t5 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aBasicBlock_3e_2eLen_3ccompiler_2fmir_3aBasicBlock_3e(ptr %v0, ptr %t3)
  store i64 %t5, ptr %l15
  br label %bb1
bb1:
  %t6 = load i64, ptr %l15, !tbaa !24
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
  store i64 0, ptr %l19, !tbaa !24
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
  store i64 %t31, ptr %l22, !tbaa !24
  br label %bb6
bb5:
  store i64 0, ptr %l22, !tbaa !24
  br label %bb6
bb6:
  %t33 = load i64, ptr %l22, !tbaa !24
  store i64 %t33, ptr %l19, !tbaa !24
  br label %bb7
bb7:
  %t34 = load i64, ptr %l19, !tbaa !24
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
  br label %bb26
bb10:
  br label %bb11
bb11:
  %t43 = load i64, ptr %l3, !tbaa !24
  %t44 = load i64, ptr %l7, !tbaa !24
  %t45 = load i64, ptr %l5, !tbaa !24
  %t48 = mul i64 %t44, %t45
  %t51 = add i64 %t43, %t48
  %t53 = load ptr, ptr %l0, !tbaa !29
  %t55 = getelementptr %"compiler/mir:Fn", ptr %t53, i32 0, i32 9
  %t59 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aBasicBlock_3e_2eRef_3ccompiler_2fmir_3aBasicBlock_3e(ptr %v0, ptr %v0, ptr %t55, i64 %t51)
  store ptr %t59, ptr %l43
  br label %bb12
bb12:
  %t60 = load ptr, ptr %l43, !tbaa !29
  %t63 = getelementptr %"compiler/mir:BasicBlock", ptr %t60, i32 0, i32 0
  store ptr %t63, ptr %l10, !tbaa !29
  store i64 0, ptr %l11, !tbaa !24
  br label %bb13
bb13:
  %t65 = load i64, ptr %l11, !tbaa !24
  store i64 %t65, ptr %l46, !tbaa !24
  %t66 = load ptr, ptr %l10, !tbaa !29
  %t68 = call i64 @compiler_2fmir_2ecompiler_2fmir_3aStmtList_2eLen(ptr %v0, ptr %t66)
  store i64 %t68, ptr %l48
  br label %bb14
bb14:
  %t69 = load i64, ptr %l46, !tbaa !24
  %t70 = load i64, ptr %l48, !tbaa !24
  %t71 = icmp slt i64 %t69, %t70
  %t73 = xor i1 %t71, true
  br i1 %t73, label %bb15, label %bb16
bb15:
  br label %bb24
bb16:
  br label %bb17
bb17:
  %t75 = load ptr, ptr %l10, !tbaa !29
  %t76 = load i64, ptr %l11, !tbaa !24
  %t79 = call { i64, [21 x i64] } @compiler_2fmir_2ecompiler_2fmir_3aStmtList_2eAt(ptr %v0, ptr %t75, i64 %t76)
  store { i64, [21 x i64] } %t79, ptr %l53
  br label %bb18
bb18:
  call void @llvm.memmove.p0.p0.i64(ptr %l12, ptr %l53, i64 176, i1 false)
  call void @llvm.memmove.p0.p0.i64(ptr %l55, ptr %l12, i64 176, i1 false)
  %t83 = load { i64, [21 x i64] }, ptr %l55
  %t85 = call i1 @compiler_2fmir_2ewritesInto(ptr %v1, ptr %a1, { i64, [21 x i64] } %t83, i32 %a2)
  store i1 %t85, ptr %l57
  br label %bb19
bb19:
  %t86 = load i1, ptr %l57, !tbaa !21
  br i1 %t86, label %bb20, label %bb21
bb20:
  store i1 true, ptr %rv
  br label %ret
bb21:
  br label %bb22
bb22:
  br label %bb23
bb23:
  %t88 = load i64, ptr %l11, !tbaa !24
  %t90 = add i64 %t88, 1
  store i64 %t90, ptr %l11, !tbaa !24
  br label %bb13
bb24:
  br label %bb25
bb25:
  %t92 = load i64, ptr %l7, !tbaa !24
  %t94 = add i64 %t92, 1
  store i64 %t94, ptr %l7, !tbaa !24
  br label %bb8
bb26:
  store i1 false, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local %"compiler/mir:Range" @compiler_2fmir_2ecompiler_2fmir_3aFn_2eaddBytes(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca { i64, ptr }
  %l2 = alloca i64
  %l3 = alloca { i64, ptr }
  %l4 = alloca i64
  %l5 = alloca i64
  %l9 = alloca i64
  %l17 = alloca { i64, ptr }
  %l30 = alloca %"compiler/mir:Range"
  %s0 = alloca %olang.scope
  %rv = alloca %"compiler/mir:Range"
  store ptr %a0, ptr %l0
  store { i64, ptr } %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/mir:Fn", ptr %t1, i32 0, i32 21
  %t5 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cU8_3e_2eLen_3cU8_3e(ptr %v0, ptr %t3)
  store i64 %t5, ptr %l9
  br label %bb1
bb1:
  %t6 = load i64, ptr %l9, !tbaa !24
  store i64 %t6, ptr %l2, !tbaa !24
  %t7 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t7, ptr %l3, !tbaa !27
  store i64 0, ptr %l4, !tbaa !24
  %t9 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t11 = extractvalue { i64, ptr } %t9, 0
  store i64 %t11, ptr %l5, !tbaa !24
  br label %bb2
bb2:
  %t13 = load i64, ptr %l4, !tbaa !24
  %t14 = load i64, ptr %l5, !tbaa !24
  %t17 = icmp slt i64 %t13, %t14
  %t19 = xor i1 %t17, true
  br i1 %t19, label %bb3, label %bb4
bb3:
  br label %bb8
bb4:
  br label %bb5
bb5:
  %t21 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t21, ptr %l17, !tbaa !27
  %t22 = load i64, ptr %l4, !tbaa !24
  %t24 = getelementptr { i64, ptr }, ptr %l17, i32 0, i32 1
  %t25 = load ptr, ptr %t24, !tbaa !27
  %t26 = getelementptr i8, ptr %t25, i64 %t22
  %t27 = load i8, ptr %t26, !tbaa !32
  %t29 = load ptr, ptr %l0, !tbaa !29
  %t31 = getelementptr %"compiler/mir:Fn", ptr %t29, i32 0, i32 21
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cU8_3e_2ePush_3cU8_3e(ptr %v0, ptr %t31, i8 %t27)
  br label %bb6
bb6:
  br label %bb7
bb7:
  %t35 = load i64, ptr %l4, !tbaa !24
  %t37 = add i64 %t35, 1
  store i64 %t37, ptr %l4, !tbaa !24
  br label %bb2
bb8:
  %t39 = load i64, ptr %l2, !tbaa !24
  %t41 = trunc i64 %t39 to i32
  %t42 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t44 = extractvalue { i64, ptr } %t42, 0
  %t46 = trunc i64 %t44 to i32
  %t49 = call %"compiler/mir:Range" @compiler_2fmir_3aRange_2ector(ptr %s0, i32 %t41, i32 %t46)
  store %"compiler/mir:Range" %t49, ptr %l30
  br label %bb9
bb9:
  call void @__olang_scope_close(ptr %s0)
  %t50 = load %"compiler/mir:Range", ptr %l30
  store %"compiler/mir:Range" %t50, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/mir:Range", ptr %rv
  ret %"compiler/mir:Range" %rr
}

define dso_local %"compiler/mir:Range" @compiler_2fmir_2ecompiler_2fmir_3aFn_2eaddConstItems(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca { i64, ptr }
  %l2 = alloca { i64, ptr }
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca { i64, ptr }
  %l11 = alloca i64
  %l12 = alloca i64
  %l15 = alloca i64
  %l24 = alloca i64
  %l27 = alloca i64
  %l45 = alloca i64
  %l47 = alloca { i64, ptr }
  %l50 = alloca i32
  %l55 = alloca i64
  %l63 = alloca { i64, ptr }
  %l76 = alloca %"compiler/mir:Range"
  %s0 = alloca %olang.scope
  %rv = alloca %"compiler/mir:Range"
  store ptr %a0, ptr %l0
  store { i64, ptr } %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t3 = extractvalue { i64, ptr } %t1, 0
  store i64 %t3, ptr %l15, !tbaa !24
  %t4 = load i64, ptr %l15, !tbaa !24
  %t5 = icmp sge i64 %t4, 0
  br i1 %t5, label %bb1, label %bb2
bb1:
  %t7 = load i64, ptr %l15, !tbaa !24
  %t8 = icmp sle i64 %t7, 2305843009213693951
  br i1 %t8, label %bb3, label %bb4
bb2:
  call void @__olang_check_failed(ptr @olang_loc_5b04576c3a0c01b1_2f8c01babecc81b5)
  unreachable
bb3:
  %t10 = load i64, ptr %l15, !tbaa !24
  %t11 = mul i64 %t10, 4
  %t12 = call ptr @__olang_scope_alloc_zeroed(ptr %s0, i64 %t11)
  %t13 = insertvalue { i64, ptr } undef, i64 %t10, 0
  %t14 = insertvalue { i64, ptr } %t13, ptr %t12, 1
  store { i64, ptr } %t14, ptr %l2, !tbaa !27
  store i64 0, ptr %l3, !tbaa !24
  %t16 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t18 = extractvalue { i64, ptr } %t16, 0
  store i64 %t18, ptr %l4, !tbaa !24
  store i64 1, ptr %l5, !tbaa !24
  %t20 = load i64, ptr %l4, !tbaa !24
  %t21 = load i64, ptr %l3, !tbaa !24
  %t24 = icmp sgt i64 %t20, %t21
  br i1 %t24, label %bb5, label %bb6
bb4:
  call void @__olang_check_failed(ptr @olang_loc_5b04576c3a0c01b1_2f8c01babecc81b5)
  unreachable
bb5:
  %t26 = load i64, ptr %l5, !tbaa !24
  %t28 = icmp sgt i64 %t26, 0
  br i1 %t28, label %bb7, label %bb8
bb6:
  store i64 0, ptr %l24, !tbaa !24
  br label %bb10
bb7:
  %t30 = load i64, ptr %l4, !tbaa !24
  %t31 = load i64, ptr %l3, !tbaa !24
  %t34 = sub i64 %t30, %t31
  %t35 = load i64, ptr %l5, !tbaa !24
  %t38 = add i64 %t34, %t35
  %t40 = sub i64 %t38, 1
  %t41 = load i64, ptr %l5, !tbaa !24
  %t44 = sdiv i64 %t40, %t41
  store i64 %t44, ptr %l27, !tbaa !24
  br label %bb9
bb8:
  store i64 0, ptr %l27, !tbaa !24
  br label %bb9
bb9:
  %t46 = load i64, ptr %l27, !tbaa !24
  store i64 %t46, ptr %l24, !tbaa !24
  br label %bb10
bb10:
  %t47 = load i64, ptr %l24, !tbaa !24
  store i64 %t47, ptr %l6, !tbaa !24
  store i64 0, ptr %l7, !tbaa !24
  br label %bb11
bb11:
  %t48 = load i64, ptr %l7, !tbaa !24
  %t49 = load i64, ptr %l6, !tbaa !24
  %t52 = icmp slt i64 %t48, %t49
  %t54 = xor i1 %t52, true
  br i1 %t54, label %bb12, label %bb13
bb12:
  br label %bb17
bb13:
  br label %bb14
bb14:
  %t56 = load i64, ptr %l3, !tbaa !24
  %t57 = load i64, ptr %l7, !tbaa !24
  %t58 = load i64, ptr %l5, !tbaa !24
  %t61 = mul i64 %t57, %t58
  %t64 = add i64 %t56, %t61
  store i64 %t64, ptr %l8, !tbaa !24
  %t66 = load i64, ptr %l8, !tbaa !24
  store i64 %t66, ptr %l45, !tbaa !24
  %t67 = load ptr, ptr %l0, !tbaa !29
  %t68 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t68, ptr %l47, !tbaa !27
  %t69 = load i64, ptr %l8, !tbaa !24
  %t71 = getelementptr { i64, ptr }, ptr %l47, i32 0, i32 1
  %t72 = load ptr, ptr %t71, !tbaa !27
  %t73 = getelementptr ptr, ptr %t72, i64 %t69
  %t74 = load ptr, ptr %t73, !tbaa !39
  %t77 = call i32 @compiler_2fmir_2ecompiler_2fmir_3aFn_2eAddConst(ptr %v0, ptr %v1, ptr %t67, ptr %t74)
  store i32 %t77, ptr %l50
  br label %bb15
bb15:
  %t78 = load i32, ptr %l50, !tbaa !23
  %t79 = load i64, ptr %l45, !tbaa !24
  %t80 = getelementptr { i64, ptr }, ptr %l2, i32 0, i32 1
  %t81 = load ptr, ptr %t80, !tbaa !27
  %t82 = getelementptr i32, ptr %t81, i64 %t79
  store i32 %t78, ptr %t82, !tbaa !33
  br label %bb16
bb16:
  %t83 = load i64, ptr %l7, !tbaa !24
  %t85 = add i64 %t83, 1
  store i64 %t85, ptr %l7, !tbaa !24
  br label %bb11
bb17:
  %t87 = load ptr, ptr %l0, !tbaa !29
  %t89 = getelementptr %"compiler/mir:Fn", ptr %t87, i32 0, i32 20
  %t91 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI32_3e_2eLen_3cI32_3e(ptr %v0, ptr %t89)
  store i64 %t91, ptr %l55
  br label %bb18
bb18:
  %t92 = load i64, ptr %l55, !tbaa !24
  store i64 %t92, ptr %l9, !tbaa !24
  %t93 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t93, ptr %l10, !tbaa !27
  store i64 0, ptr %l11, !tbaa !24
  %t95 = load { i64, ptr }, ptr %l10, !tbaa !27
  %t97 = extractvalue { i64, ptr } %t95, 0
  store i64 %t97, ptr %l12, !tbaa !24
  br label %bb19
bb19:
  %t99 = load i64, ptr %l11, !tbaa !24
  %t100 = load i64, ptr %l12, !tbaa !24
  %t103 = icmp slt i64 %t99, %t100
  %t105 = xor i1 %t103, true
  br i1 %t105, label %bb20, label %bb21
bb20:
  br label %bb25
bb21:
  br label %bb22
bb22:
  %t107 = load { i64, ptr }, ptr %l10, !tbaa !27
  store { i64, ptr } %t107, ptr %l63, !tbaa !27
  %t108 = load i64, ptr %l11, !tbaa !24
  %t110 = getelementptr { i64, ptr }, ptr %l63, i32 0, i32 1
  %t111 = load ptr, ptr %t110, !tbaa !27
  %t112 = getelementptr i32, ptr %t111, i64 %t108
  %t113 = load i32, ptr %t112, !tbaa !33
  %t115 = load ptr, ptr %l0, !tbaa !29
  %t117 = getelementptr %"compiler/mir:Fn", ptr %t115, i32 0, i32 20
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI32_3e_2ePush_3cI32_3e(ptr %v0, ptr %t117, i32 %t113)
  br label %bb23
bb23:
  br label %bb24
bb24:
  %t121 = load i64, ptr %l11, !tbaa !24
  %t123 = add i64 %t121, 1
  store i64 %t123, ptr %l11, !tbaa !24
  br label %bb19
bb25:
  %t125 = load i64, ptr %l9, !tbaa !24
  %t127 = trunc i64 %t125 to i32
  %t128 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t130 = extractvalue { i64, ptr } %t128, 0
  %t132 = trunc i64 %t130 to i32
  %t135 = call %"compiler/mir:Range" @compiler_2fmir_3aRange_2ector(ptr %s0, i32 %t127, i32 %t132)
  store %"compiler/mir:Range" %t135, ptr %l76
  br label %bb26
bb26:
  call void @__olang_scope_close(ptr %s0)
  %t136 = load %"compiler/mir:Range", ptr %l76
  store %"compiler/mir:Range" %t136, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/mir:Range", ptr %rv
  ret %"compiler/mir:Range" %rr
}

define dso_local i1 @compiler_2fmir_2ecompiler_2fmir_3aGenInfo_2eHoldsGen(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i32 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l3 = alloca i32
  %l5 = alloca { i64, ptr }
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i1
  %lp11 = alloca ptr
  %l12 = alloca i64
  %l13 = alloca i64
  %l14 = alloca i64
  %l15 = alloca i64
  %l16 = alloca i64
  %l17 = alloca i64
  %l20 = alloca i32
  %l24 = alloca i1
  %l25 = alloca { i64, ptr }
  %l29 = alloca { i64, ptr }
  %l30 = alloca i32
  %l41 = alloca { i64, ptr }
  %l55 = alloca i1
  %l59 = alloca i1
  %l60 = alloca i32
  %l66 = alloca i64
  %l67 = alloca ptr
  %l73 = alloca i1
  %l74 = alloca ptr
  %l83 = alloca i64
  %l85 = alloca i64
  %l94 = alloca i64
  %l97 = alloca i64
  %l115 = alloca i64
  %l121 = alloca i64
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l1, !tbaa !29
  %t5 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %v1, ptr %t1, i32 %a2)
  store i32 %t5, ptr %l20
  br label %bb1
bb1:
  %t6 = load i32, ptr %l20, !tbaa !23
  store i32 %t6, ptr %l3, !tbaa !23
  %t7 = load ptr, ptr %l0, !tbaa !29
  %t9 = getelementptr %"compiler/mir:GenInfo", ptr %t7, i32 0, i32 3
  %t10 = load i32, ptr %l3, !tbaa !23
  %t13 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId_2c_20Bool_3e_Hb3133f486435530b533aaf49461c92b5(ptr %v0, ptr %t9, i32 %t10)
  store i1 %t13, ptr %l24
  br label %bb2
bb2:
  %t14 = load i1, ptr %l24, !tbaa !21
  br i1 %t14, label %bb3, label %bb4
bb3:
  %t15 = load ptr, ptr %l0, !tbaa !29
  %t17 = getelementptr %"compiler/mir:GenInfo", ptr %t15, i32 0, i32 4
  %t18 = load i32, ptr %l3, !tbaa !23
  %t21 = call { i32, { i64, ptr } } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId_2c_20Array_3_H9dd488aeab1c4e3b4eaf3c87952809f7(ptr %v0, ptr %v0, ptr %t17, i32 %t18)
  %t22 = extractvalue { i32, { i64, ptr } } %t21, 1
  %t23 = extractvalue { i32, { i64, ptr } } %t21, 0
  store i32 %t23, ptr %l30
  %t24 = icmp ne i32 %t23, 0
  br i1 %t24, label %bb6, label %ok.25, !prof !99
ok.25:
  store { i64, ptr } %t22, ptr %l29
  br label %bb5
bb4:
  br label %bb28
bb5:
  %t26 = load { i64, ptr }, ptr %l29, !tbaa !27
  store { i64, ptr } %t26, ptr %l25, !tbaa !27
  br label %bb12
bb6:
  br label %bb7
bb7:
  %t27 = icmp sge i64 0, 0
  br i1 %t27, label %bb8, label %bb9
bb8:
  %t29 = icmp sle i64 0, 1152921504606846975
  br i1 %t29, label %bb10, label %bb11
bb9:
  call void @__olang_check_failed(ptr @olang_loc_9e578d4a76e07e29_c5393b38d948487d)
  unreachable
bb10:
  %t31 = mul i64 0, 8
  %t32 = insertvalue { i64, ptr } undef, i64 0, 0
  %t33 = insertvalue { i64, ptr } %t32, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  store { i64, ptr } %t33, ptr %l25, !tbaa !27
  br label %bb12
bb11:
  call void @__olang_check_failed(ptr @olang_loc_9e578d4a76e07e29_c5393b38d948487d)
  unreachable
bb12:
  %t35 = load { i64, ptr }, ptr %l25, !tbaa !27
  store { i64, ptr } %t35, ptr %l5, !tbaa !27
  store i64 0, ptr %l6, !tbaa !24
  %t38 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t40 = extractvalue { i64, ptr } %t38, 0
  store i64 %t40, ptr %l7, !tbaa !24
  br label %bb13
bb13:
  %t42 = load i64, ptr %l6, !tbaa !24
  %t43 = load i64, ptr %l7, !tbaa !24
  %t46 = icmp slt i64 %t42, %t43
  %t48 = xor i1 %t46, true
  br i1 %t48, label %bb14, label %bb15
bb14:
  br label %bb23
bb15:
  br label %bb16
bb16:
  %t50 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t50, ptr %l41, !tbaa !27
  %t51 = load i64, ptr %l6, !tbaa !24
  %t53 = getelementptr { i64, ptr }, ptr %l41, i32 0, i32 1
  %t54 = load ptr, ptr %t53, !tbaa !27
  %t55 = getelementptr i64, ptr %t54, i64 %t51
  %t56 = load i64, ptr %t55, !tbaa !34
  store i64 %t56, ptr %l8, !tbaa !24
  %t58 = load ptr, ptr %l0, !tbaa !29
  %t60 = getelementptr %"compiler/mir:GenInfo", ptr %t58, i32 0, i32 2
  %t61 = load i64, ptr %l8, !tbaa !24
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2ePut_3cI64_2c_20Bool_3e(ptr %v0, ptr %t60, i64 %t61, i1 true)
  br label %bb17
bb17:
  %t64 = load ptr, ptr %l0, !tbaa !29
  %t66 = getelementptr %"compiler/mir:GenInfo", ptr %t64, i32 0, i32 6
  %t67 = load i64, ptr %t66, !tbaa !24
  %t69 = icmp sgt i64 %t67, 0
  br i1 %t69, label %bb18, label %bb19
bb18:
  %t71 = load ptr, ptr %l0, !tbaa !29
  %t73 = getelementptr %"compiler/mir:GenInfo", ptr %t71, i32 0, i32 5
  %t74 = load i64, ptr %l8, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %t73, i64 %t74)
  br label %bb20
bb19:
  br label %bb21
bb20:
  br label %bb21
bb21:
  br label %bb22
bb22:
  %t77 = load i64, ptr %l6, !tbaa !24
  %t79 = add i64 %t77, 1
  store i64 %t79, ptr %l6, !tbaa !24
  br label %bb13
bb23:
  %t81 = load ptr, ptr %l0, !tbaa !29
  %t83 = getelementptr %"compiler/mir:GenInfo", ptr %t81, i32 0, i32 3
  %t84 = load i32, ptr %l3, !tbaa !23
  %t87 = call { i32, i1 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId_2c_20Bool_3e_H257d83b06934604763b32ef91c51c1d2(ptr %v0, ptr %t83, i32 %t84)
  %t88 = extractvalue { i32, i1 } %t87, 1
  %t89 = extractvalue { i32, i1 } %t87, 0
  store i32 %t89, ptr %l60
  %t90 = icmp ne i32 %t89, 0
  br i1 %t90, label %bb25, label %ok.91, !prof !99
ok.91:
  store i1 %t88, ptr %l59
  br label %bb24
bb24:
  %t92 = load i1, ptr %l59, !tbaa !21
  store i1 %t92, ptr %l55, !tbaa !21
  br label %bb27
bb25:
  br label %bb26
bb26:
  store i1 false, ptr %l55, !tbaa !21
  br label %bb27
bb27:
  %t93 = load i1, ptr %l55, !tbaa !21
  store i1 %t93, ptr %rv
  br label %ret
bb28:
  %t94 = load ptr, ptr %l0, !tbaa !29
  %t96 = getelementptr %"compiler/mir:GenInfo", ptr %t94, i32 0, i32 3
  %t97 = load i32, ptr %l3, !tbaa !23
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId_2c_20Bool_3e_H64d9be73b6c9bed004c541bdf7f0ca0a(ptr %v0, ptr %t96, i32 %t97, i1 false)
  br label %bb29
bb29:
  %t100 = load ptr, ptr %l0, !tbaa !29
  %t102 = getelementptr %"compiler/mir:GenInfo", ptr %t100, i32 0, i32 5
  %t104 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %t102)
  store i64 %t104, ptr %l66
  br label %bb30
bb30:
  %t105 = load i64, ptr %l66, !tbaa !24
  store i64 %t105, ptr %l9, !tbaa !24
  %t106 = load ptr, ptr %l0, !tbaa !29
  store ptr %t106, ptr %l67, !tbaa !29
  %t107 = load ptr, ptr %l67, !tbaa !29
  %t108 = getelementptr %"compiler/mir:GenInfo", ptr %t107, i32 0, i32 6
  %t109 = load i64, ptr %t108, !tbaa !24
  %t111 = add i64 %t109, 1
  %t113 = load ptr, ptr %l67, !tbaa !29
  %t114 = getelementptr %"compiler/mir:GenInfo", ptr %t113, i32 0, i32 6
  store i64 %t111, ptr %t114, !tbaa !24
  %t115 = load ptr, ptr %l0, !tbaa !29
  %t116 = load ptr, ptr %l1, !tbaa !29
  %t117 = load i32, ptr %l3, !tbaa !23
  %t121 = call i1 @compiler_2fmir_2ecompiler_2fmir_3aGenInfo_2eholdsGen(ptr %v0, ptr %v1, ptr %t115, ptr %t116, i32 %t117)
  store i1 %t121, ptr %l73
  br label %bb31
bb31:
  %t122 = load i1, ptr %l73, !tbaa !21
  store i1 %t122, ptr %l10, !tbaa !21
  %t123 = load ptr, ptr %l0, !tbaa !29
  store ptr %t123, ptr %l74, !tbaa !29
  %t124 = load ptr, ptr %l74, !tbaa !29
  %t125 = getelementptr %"compiler/mir:GenInfo", ptr %t124, i32 0, i32 6
  %t126 = load i64, ptr %t125, !tbaa !24
  %t128 = sub i64 %t126, 1
  %t130 = load ptr, ptr %l74, !tbaa !29
  %t131 = getelementptr %"compiler/mir:GenInfo", ptr %t130, i32 0, i32 6
  store i64 %t128, ptr %t131, !tbaa !24
  %t132 = load ptr, ptr %l0, !tbaa !29
  %t134 = getelementptr %"compiler/mir:GenInfo", ptr %t132, i32 0, i32 3
  %t135 = load i32, ptr %l3, !tbaa !23
  %t136 = load i1, ptr %l10, !tbaa !21
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId_2c_20Bool_3e_H64d9be73b6c9bed004c541bdf7f0ca0a(ptr %v0, ptr %t134, i32 %t135, i1 %t136)
  br label %bb32
bb32:
  %t140 = load ptr, ptr %l0, !tbaa !29
  %t142 = getelementptr %"compiler/mir:GenInfo", ptr %t140, i32 0, i32 5
  %t144 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %t142)
  store i64 %t144, ptr %l83
  br label %bb33
bb33:
  %t145 = load i64, ptr %l9, !tbaa !24
  %t146 = load i64, ptr %l83, !tbaa !24
  %t148 = sub i64 %t146, %t145
  store i64 %t148, ptr %l85, !tbaa !24
  %t149 = load i64, ptr %l85, !tbaa !24
  %t150 = icmp sge i64 %t149, 0
  br i1 %t150, label %bb34, label %bb35
bb34:
  %t152 = load i64, ptr %l85, !tbaa !24
  %t153 = icmp sle i64 %t152, 1152921504606846975
  br i1 %t153, label %bb36, label %bb37
bb35:
  call void @__olang_check_failed(ptr @olang_loc_c209cb0367c4335c_95d00450bc19b50)
  unreachable
bb36:
  %t155 = load i64, ptr %l85, !tbaa !24
  %t156 = mul i64 %t155, 8
  %t157 = call ptr @__olang_scope_alloc_zeroed(ptr %v0, i64 %t156)
  %t158 = insertvalue { i64, ptr } undef, i64 %t155, 0
  %t159 = insertvalue { i64, ptr } %t158, ptr %t157, 1
  %t160 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 16, i64 8)
  store ptr %t160, ptr %lp11
  %t162 = load ptr, ptr %lp11
  store { i64, ptr } %t159, ptr %t162, !tbaa !27
  store i64 0, ptr %l12, !tbaa !24
  %t163 = load ptr, ptr %lp11
  %t164 = load { i64, ptr }, ptr %t163, !tbaa !27
  %t166 = extractvalue { i64, ptr } %t164, 0
  store i64 %t166, ptr %l13, !tbaa !24
  store i64 1, ptr %l14, !tbaa !24
  %t168 = load i64, ptr %l13, !tbaa !24
  %t169 = load i64, ptr %l12, !tbaa !24
  %t172 = icmp sgt i64 %t168, %t169
  br i1 %t172, label %bb38, label %bb39
bb37:
  call void @__olang_check_failed(ptr @olang_loc_c209cb0367c4335c_95d00450bc19b50)
  unreachable
bb38:
  %t174 = load i64, ptr %l14, !tbaa !24
  %t176 = icmp sgt i64 %t174, 0
  br i1 %t176, label %bb40, label %bb41
bb39:
  store i64 0, ptr %l94, !tbaa !24
  br label %bb43
bb40:
  %t178 = load i64, ptr %l13, !tbaa !24
  %t179 = load i64, ptr %l12, !tbaa !24
  %t182 = sub i64 %t178, %t179
  %t183 = load i64, ptr %l14, !tbaa !24
  %t186 = add i64 %t182, %t183
  %t188 = sub i64 %t186, 1
  %t189 = load i64, ptr %l14, !tbaa !24
  %t192 = sdiv i64 %t188, %t189
  store i64 %t192, ptr %l97, !tbaa !24
  br label %bb42
bb41:
  store i64 0, ptr %l97, !tbaa !24
  br label %bb42
bb42:
  %t194 = load i64, ptr %l97, !tbaa !24
  store i64 %t194, ptr %l94, !tbaa !24
  br label %bb43
bb43:
  %t195 = load i64, ptr %l94, !tbaa !24
  store i64 %t195, ptr %l15, !tbaa !24
  store i64 0, ptr %l16, !tbaa !24
  br label %bb44
bb44:
  %t196 = load i64, ptr %l16, !tbaa !24
  %t197 = load i64, ptr %l15, !tbaa !24
  %t200 = icmp slt i64 %t196, %t197
  %t202 = xor i1 %t200, true
  br i1 %t202, label %bb45, label %bb46
bb45:
  br label %bb50
bb46:
  br label %bb47
bb47:
  %t204 = load i64, ptr %l12, !tbaa !24
  %t205 = load i64, ptr %l16, !tbaa !24
  %t206 = load i64, ptr %l14, !tbaa !24
  %t209 = mul i64 %t205, %t206
  %t212 = add i64 %t204, %t209
  store i64 %t212, ptr %l17, !tbaa !24
  %t214 = load i64, ptr %l17, !tbaa !24
  store i64 %t214, ptr %l115, !tbaa !24
  %t215 = load ptr, ptr %l0, !tbaa !29
  %t217 = getelementptr %"compiler/mir:GenInfo", ptr %t215, i32 0, i32 5
  %t218 = load i64, ptr %l9, !tbaa !24
  %t219 = load i64, ptr %l17, !tbaa !24
  %t222 = add i64 %t218, %t219
  %t225 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t217, i64 %t222)
  store i64 %t225, ptr %l121
  br label %bb48
bb48:
  %t226 = load i64, ptr %l121, !tbaa !24
  %t227 = load ptr, ptr %lp11
  %t228 = load i64, ptr %l115, !tbaa !24
  %t229 = getelementptr { i64, ptr }, ptr %t227, i32 0, i32 1
  %t230 = load ptr, ptr %t229, !tbaa !27
  %t231 = getelementptr i64, ptr %t230, i64 %t228
  store i64 %t226, ptr %t231, !tbaa !34
  br label %bb49
bb49:
  %t232 = load i64, ptr %l16, !tbaa !24
  %t234 = add i64 %t232, 1
  store i64 %t234, ptr %l16, !tbaa !24
  br label %bb44
bb50:
  %t236 = load ptr, ptr %l0, !tbaa !29
  %t238 = getelementptr %"compiler/mir:GenInfo", ptr %t236, i32 0, i32 4
  %t239 = load i32, ptr %l3, !tbaa !23
  %t240 = load ptr, ptr %lp11
  %t241 = load { i64, ptr }, ptr %t240, !tbaa !27
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId_2c_20Array_3_H3267bccc58f311a634d5a63955645239(ptr %v0, ptr %v0, ptr %t238, i32 %t239, { i64, ptr } %t241)
  br label %bb51
bb51:
  %t245 = load ptr, ptr %l0, !tbaa !29
  %t247 = getelementptr %"compiler/mir:GenInfo", ptr %t245, i32 0, i32 6
  %t248 = load i64, ptr %t247, !tbaa !24
  %t250 = icmp eq i64 %t248, 0
  br i1 %t250, label %bb52, label %bb53
bb52:
  %t252 = load ptr, ptr %l0, !tbaa !29
  %t254 = getelementptr %"compiler/mir:GenInfo", ptr %t252, i32 0, i32 5
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eClear_3cI64_3e(ptr %v0, ptr %t254)
  br label %bb54
bb53:
  br label %bb55
bb54:
  br label %bb55
bb55:
  %t256 = load i1, ptr %l10, !tbaa !21
  store i1 %t256, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i1 @compiler_2fmir_2ecompiler_2fmir_3aGenInfo_2eWeakField(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i32 %a2, i64 %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l4 = alloca i32
  %l7 = alloca i32
  %l13 = alloca i32
  %l16 = alloca i1
  %l18 = alloca ptr
  %l21 = alloca i32
  %l25 = alloca i1
  %s0 = alloca %olang.scope
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l1, !tbaa !29
  %t5 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %v1, ptr %t1, i32 %a2)
  store i32 %t5, ptr %l7
  br label %bb1
bb1:
  %t6 = load i32, ptr %l7, !tbaa !23
  store i32 %t6, ptr %l4, !tbaa !23
  %t7 = load ptr, ptr %l0, !tbaa !29
  %t8 = load ptr, ptr %l1, !tbaa !29
  %t9 = load i32, ptr %l4, !tbaa !23
  call void @compiler_2fmir_2ecompiler_2fmir_3aGenInfo_2enote(ptr %v0, ptr %v1, ptr %t7, ptr %t8, i32 %t9)
  br label %bb2
bb2:
  %t13 = load ptr, ptr %l1, !tbaa !29
  %t14 = load i32, ptr %l4, !tbaa !23
  %t17 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v1, ptr %t13, i32 %t14)
  store i32 %t17, ptr %l13
  br label %bb3
bb3:
  %t18 = load i32, ptr %l13, !range !{i32 0, i32 33}
  %t20 = trunc i64 18 to i32
  %t21 = icmp eq i32 %t18, %t20
  br i1 %t21, label %bb4, label %bb5
bb4:
  %t23 = load ptr, ptr %l0, !tbaa !29
  %t25 = getelementptr %"compiler/mir:GenInfo", ptr %t23, i32 0, i32 1
  store ptr %t25, ptr %l18, !tbaa !29
  %t26 = load ptr, ptr %l1, !tbaa !29
  %t27 = load i32, ptr %l4, !tbaa !23
  %t30 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v1, ptr %t26, i32 %t27)
  store i32 %t30, ptr %l21
  br label %bb6
bb5:
  store i1 false, ptr %l16, !tbaa !21
  br label %bb8
bb6:
  %t31 = load i32, ptr %l21, !tbaa !23
  %t32 = sext i32 %t31 to i64
  %t35 = call i64 @__olang_fmt_i64(ptr null, i64 %t32)
  %t36 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d16, i32 0, i32 1) }, 1
  %t37 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d16, i32 0, i32 1) }, 0
  %t38 = add i64 %t35, %t37
  %t40 = call i64 @__olang_fmt_i64(ptr null, i64 %a3)
  %t41 = add i64 %t38, %t40
  %t42 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t41)
  %t43 = call i64 @__olang_fmt_i64(ptr %t42, i64 %t32)
  %t44 = getelementptr i8, ptr %t42, i64 %t35
  call void @olang_textcopy(ptr %t44, ptr %t36, i64 %t37)
  %t45 = getelementptr i8, ptr %t44, i64 %t37
  %t46 = call i64 @__olang_fmt_i64(ptr %t45, i64 %a3)
  %t47 = insertvalue { i64, ptr } undef, i64 %t41, 0
  %t48 = insertvalue { i64, ptr } %t47, ptr %t42, 1
  %t49 = load ptr, ptr %l18, !tbaa !29
  %t51 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_2c_20Boo_Hb38d151ad2865ce380f5e3d42761bdf3(ptr %v0, ptr %t49, { i64, ptr } %t48)
  store i1 %t51, ptr %l25
  br label %bb7
bb7:
  %t52 = load i1, ptr %l25, !tbaa !21
  store i1 %t52, ptr %l16, !tbaa !21
  br label %bb8
bb8:
  call void @__olang_scope_close(ptr %s0)
  %t53 = load i1, ptr %l16, !tbaa !21
  store i1 %t53, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i1 @compiler_2fmir_2ecompiler_2fmir_3aGenInfo_2eholdsGen(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i32 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i32
  %l3 = alloca i32
  %l4 = alloca i1
  %l5 = alloca { i64, ptr }
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca i64
  %l12 = alloca { i64, ptr }
  %l13 = alloca i64
  %l14 = alloca i64
  %l15 = alloca i32
  %l16 = alloca { i64, ptr }
  %l17 = alloca i64
  %l18 = alloca i64
  %l25 = alloca i32
  %l28 = alloca ptr
  %l29 = alloca ptr
  %l32 = alloca i32
  %l33 = alloca i1
  %l36 = alloca ptr
  %l37 = alloca ptr
  %l40 = alloca i32
  %l41 = alloca i1
  %l44 = alloca i1
  %l45 = alloca ptr
  %l48 = alloca i32
  %l49 = alloca { i64, ptr }
  %l55 = alloca i64
  %l58 = alloca i64
  %l80 = alloca i1
  %l82 = alloca i1
  %l85 = alloca { i64, ptr }
  %l88 = alloca i1
  %l94 = alloca i1
  %l97 = alloca ptr
  %l100 = alloca i32
  %l101 = alloca { i64, ptr }
  %l108 = alloca { i64, ptr }
  %l113 = alloca ptr
  %l116 = alloca i32
  %l117 = alloca { i64, ptr }
  %l124 = alloca { i64, ptr }
  %l130 = alloca i1
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store i32 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load ptr, ptr %l1, !tbaa !29
  %t3 = load i32, ptr %l2, !tbaa !23
  call void @compiler_2fmir_2ecompiler_2fmir_3aGenInfo_2enote(ptr %v0, ptr %v1, ptr %t1, ptr %t2, i32 %t3)
  br label %bb1
bb1:
  %t7 = load ptr, ptr %l1, !tbaa !29
  %t8 = load i32, ptr %l2, !tbaa !23
  %t11 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v1, ptr %t7, i32 %t8)
  store i32 %t11, ptr %l25
  br label %bb2
bb2:
  %t12 = load i32, ptr %l25, !range !{i32 0, i32 33}
  store i32 %t12, ptr %l3
  %t13 = load i32, ptr %l3, !range !{i32 0, i32 33}
  %t15 = trunc i64 20 to i32
  %t16 = icmp eq i32 %t13, %t15
  br i1 %t16, label %bb3, label %bb4
bb3:
  %t18 = load ptr, ptr %l0, !tbaa !29
  store ptr %t18, ptr %l28, !tbaa !29
  %t19 = load ptr, ptr %l1, !tbaa !29
  store ptr %t19, ptr %l29, !tbaa !29
  %t20 = load ptr, ptr %l1, !tbaa !29
  %t21 = load i32, ptr %l2, !tbaa !23
  %t24 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eReferent(ptr %v1, ptr %t20, i32 %t21)
  store i32 %t24, ptr %l32
  br label %bb5
bb4:
  br label %bb7
bb5:
  %t25 = load ptr, ptr %l28, !tbaa !29
  %t26 = load ptr, ptr %l29, !tbaa !29
  %t27 = load i32, ptr %l32, !tbaa !23
  %t28 = call i1 @compiler_2fmir_2ecompiler_2fmir_3aGenInfo_2eIsGen(ptr %v0, ptr %v1, ptr %t25, ptr %t26, i32 %t27)
  store i1 %t28, ptr %l33
  br label %bb6
bb6:
  %t29 = load i1, ptr %l33, !tbaa !21
  store i1 %t29, ptr %rv
  br label %ret
bb7:
  %t30 = load i32, ptr %l3, !range !{i32 0, i32 33}
  %t32 = trunc i64 19 to i32
  %t33 = icmp eq i32 %t30, %t32
  br i1 %t33, label %bb8, label %bb9
bb8:
  %t35 = load ptr, ptr %l0, !tbaa !29
  store ptr %t35, ptr %l36, !tbaa !29
  %t36 = load ptr, ptr %l1, !tbaa !29
  store ptr %t36, ptr %l37, !tbaa !29
  %t37 = load ptr, ptr %l1, !tbaa !29
  %t38 = load i32, ptr %l2, !tbaa !23
  %t41 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eElem(ptr %v1, ptr %t37, i32 %t38)
  store i32 %t41, ptr %l40
  br label %bb10
bb9:
  br label %bb12
bb10:
  %t42 = load ptr, ptr %l36, !tbaa !29
  %t43 = load ptr, ptr %l37, !tbaa !29
  %t44 = load i32, ptr %l40, !tbaa !23
  %t45 = call i1 @compiler_2fmir_2ecompiler_2fmir_3aGenInfo_2eHoldsGen(ptr %v0, ptr %v1, ptr %t42, ptr %t43, i32 %t44)
  store i1 %t45, ptr %l41
  br label %bb11
bb11:
  %t46 = load i1, ptr %l41, !tbaa !21
  store i1 %t46, ptr %rv
  br label %ret
bb12:
  store i1 false, ptr %l4, !tbaa !21
  %t47 = load ptr, ptr %l1, !tbaa !29
  %t48 = load i32, ptr %l2, !tbaa !23
  %t51 = call i1 @compiler_2fmir_2eHasFields(ptr %v1, ptr %t47, i32 %t48)
  store i1 %t51, ptr %l44
  br label %bb13
bb13:
  %t52 = load i1, ptr %l44, !tbaa !21
  br i1 %t52, label %bb14, label %bb15
bb14:
  %t53 = load ptr, ptr %l1, !tbaa !29
  store ptr %t53, ptr %l45, !tbaa !29
  %t54 = load ptr, ptr %l1, !tbaa !29
  %t55 = load i32, ptr %l2, !tbaa !23
  %t58 = call i32 @compiler_2fmir_2eFieldsOf(ptr %v1, ptr %t54, i32 %t55)
  store i32 %t58, ptr %l48
  br label %bb16
bb15:
  br label %bb38
bb16:
  %t59 = load ptr, ptr %l45, !tbaa !29
  %t60 = load i32, ptr %l48, !tbaa !23
  %t61 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v1, ptr %v1, ptr %t59, i32 %t60)
  store { i64, ptr } %t61, ptr %l49
  br label %bb17
bb17:
  %t62 = load { i64, ptr }, ptr %l49, !tbaa !27
  store { i64, ptr } %t62, ptr %l5, !tbaa !27
  store i64 0, ptr %l6, !tbaa !24
  %t63 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t65 = extractvalue { i64, ptr } %t63, 0
  store i64 %t65, ptr %l7, !tbaa !24
  store i64 1, ptr %l8, !tbaa !24
  %t67 = load i64, ptr %l7, !tbaa !24
  %t68 = load i64, ptr %l6, !tbaa !24
  %t71 = icmp sgt i64 %t67, %t68
  br i1 %t71, label %bb18, label %bb19
bb18:
  %t73 = load i64, ptr %l8, !tbaa !24
  %t75 = icmp sgt i64 %t73, 0
  br i1 %t75, label %bb20, label %bb21
bb19:
  store i64 0, ptr %l55, !tbaa !24
  br label %bb23
bb20:
  %t77 = load i64, ptr %l7, !tbaa !24
  %t78 = load i64, ptr %l6, !tbaa !24
  %t81 = sub i64 %t77, %t78
  %t82 = load i64, ptr %l8, !tbaa !24
  %t85 = add i64 %t81, %t82
  %t87 = sub i64 %t85, 1
  %t88 = load i64, ptr %l8, !tbaa !24
  %t91 = sdiv i64 %t87, %t88
  store i64 %t91, ptr %l58, !tbaa !24
  br label %bb22
bb21:
  store i64 0, ptr %l58, !tbaa !24
  br label %bb22
bb22:
  %t93 = load i64, ptr %l58, !tbaa !24
  store i64 %t93, ptr %l55, !tbaa !24
  br label %bb23
bb23:
  %t94 = load i64, ptr %l55, !tbaa !24
  store i64 %t94, ptr %l9, !tbaa !24
  store i64 0, ptr %l10, !tbaa !24
  br label %bb24
bb24:
  %t95 = load i64, ptr %l10, !tbaa !24
  %t96 = load i64, ptr %l9, !tbaa !24
  %t99 = icmp slt i64 %t95, %t96
  %t101 = xor i1 %t99, true
  br i1 %t101, label %bb25, label %bb26
bb25:
  br label %bb37
bb26:
  br label %bb27
bb27:
  %t103 = load i64, ptr %l6, !tbaa !24
  %t104 = load i64, ptr %l10, !tbaa !24
  %t105 = load i64, ptr %l8, !tbaa !24
  %t108 = mul i64 %t104, %t105
  %t111 = add i64 %t103, %t108
  store i64 %t111, ptr %l11, !tbaa !24
  %t113 = load ptr, ptr %l0, !tbaa !29
  %t114 = load ptr, ptr %l1, !tbaa !29
  %t115 = load i32, ptr %l2, !tbaa !23
  %t116 = load i64, ptr %l11, !tbaa !24
  %t121 = call i1 @compiler_2fmir_2ecompiler_2fmir_3aGenInfo_2eWeakField(ptr %v0, ptr %v1, ptr %t113, ptr %t114, i32 %t115, i64 %t116)
  store i1 %t121, ptr %l80
  br label %bb28
bb28:
  %t122 = load i1, ptr %l80, !tbaa !21
  %t123 = xor i1 %t122, true
  br i1 %t123, label %bb29, label %bb30
bb29:
  %t125 = load ptr, ptr %l0, !tbaa !29
  %t126 = load ptr, ptr %l1, !tbaa !29
  %t127 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t127, ptr %l85, !tbaa !27
  %t128 = load i64, ptr %l11, !tbaa !24
  %t130 = getelementptr { i64, ptr }, ptr %l85, i32 0, i32 1
  %t131 = load ptr, ptr %t130, !tbaa !27
  %t132 = getelementptr i32, ptr %t131, i64 %t128
  %t133 = load i32, ptr %t132, !tbaa !33
  %t137 = call i1 @compiler_2fmir_2ecompiler_2fmir_3aGenInfo_2eHoldsGen(ptr %v0, ptr %v1, ptr %t125, ptr %t126, i32 %t133)
  store i1 %t137, ptr %l88
  br label %bb31
bb30:
  store i1 false, ptr %l82, !tbaa !21
  br label %bb32
bb31:
  %t138 = load i1, ptr %l88, !tbaa !21
  store i1 %t138, ptr %l82, !tbaa !21
  br label %bb32
bb32:
  %t139 = load i1, ptr %l82, !tbaa !21
  br i1 %t139, label %bb33, label %bb34
bb33:
  store i1 true, ptr %l4, !tbaa !21
  br label %bb35
bb34:
  br label %bb35
bb35:
  br label %bb36
bb36:
  %t140 = load i64, ptr %l10, !tbaa !24
  %t142 = add i64 %t140, 1
  store i64 %t142, ptr %l10, !tbaa !24
  br label %bb24
bb37:
  %t144 = load i1, ptr %l4, !tbaa !21
  store i1 %t144, ptr %rv
  br label %ret
bb38:
  %t146 = load ptr, ptr %l1, !tbaa !29
  %t147 = load i32, ptr %l2, !tbaa !23
  %t150 = call i1 @compiler_2fmir_2eHasCases(ptr %v1, ptr %t146, i32 %t147)
  store i1 %t150, ptr %l94
  br label %bb39
bb39:
  %t151 = load i1, ptr %l94, !tbaa !21
  %t152 = xor i1 %t151, true
  br i1 %t152, label %bb40, label %bb41
bb40:
  store i1 false, ptr %rv
  br label %ret
bb41:
  br label %bb42
bb42:
  %t155 = load ptr, ptr %l1, !tbaa !29
  store ptr %t155, ptr %l97, !tbaa !29
  %t156 = load ptr, ptr %l1, !tbaa !29
  %t157 = load i32, ptr %l2, !tbaa !23
  %t160 = call i32 @compiler_2fmir_2eCasesOf(ptr %v1, ptr %t156, i32 %t157)
  store i32 %t160, ptr %l100
  br label %bb43
bb43:
  %t161 = load ptr, ptr %l97, !tbaa !29
  %t162 = load i32, ptr %l100, !tbaa !23
  %t163 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v1, ptr %v1, ptr %t161, i32 %t162)
  store { i64, ptr } %t163, ptr %l101
  br label %bb44
bb44:
  %t164 = load { i64, ptr }, ptr %l101, !tbaa !27
  store { i64, ptr } %t164, ptr %l12, !tbaa !27
  store i64 0, ptr %l13, !tbaa !24
  %t165 = load { i64, ptr }, ptr %l12, !tbaa !27
  %t167 = extractvalue { i64, ptr } %t165, 0
  store i64 %t167, ptr %l14, !tbaa !24
  br label %bb45
bb45:
  %t169 = load i64, ptr %l13, !tbaa !24
  %t170 = load i64, ptr %l14, !tbaa !24
  %t173 = icmp slt i64 %t169, %t170
  %t175 = xor i1 %t173, true
  br i1 %t175, label %bb46, label %bb47
bb46:
  br label %bb65
bb47:
  br label %bb48
bb48:
  %t177 = load { i64, ptr }, ptr %l12, !tbaa !27
  store { i64, ptr } %t177, ptr %l108, !tbaa !27
  %t178 = load i64, ptr %l13, !tbaa !24
  %t180 = getelementptr { i64, ptr }, ptr %l108, i32 0, i32 1
  %t181 = load ptr, ptr %t180, !tbaa !27
  %t182 = getelementptr i32, ptr %t181, i64 %t178
  %t183 = load i32, ptr %t182, !tbaa !33
  store i32 %t183, ptr %l15, !tbaa !23
  %t185 = load i32, ptr %l15, !tbaa !23
  %t187 = icmp eq i32 %t185, 0
  br i1 %t187, label %bb49, label %bb50
bb49:
  br label %bb64
bb50:
  br label %bb51
bb51:
  %t189 = load ptr, ptr %l1, !tbaa !29
  store ptr %t189, ptr %l113, !tbaa !29
  %t190 = load ptr, ptr %l1, !tbaa !29
  %t191 = load i32, ptr %l15, !tbaa !23
  %t194 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParts(ptr %v1, ptr %t190, i32 %t191)
  store i32 %t194, ptr %l116
  br label %bb52
bb52:
  %t195 = load ptr, ptr %l113, !tbaa !29
  %t196 = load i32, ptr %l116, !tbaa !23
  %t197 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v1, ptr %v1, ptr %t195, i32 %t196)
  store { i64, ptr } %t197, ptr %l117
  br label %bb53
bb53:
  %t198 = load { i64, ptr }, ptr %l117, !tbaa !27
  store { i64, ptr } %t198, ptr %l16, !tbaa !27
  store i64 0, ptr %l17, !tbaa !24
  %t199 = load { i64, ptr }, ptr %l16, !tbaa !27
  %t201 = extractvalue { i64, ptr } %t199, 0
  store i64 %t201, ptr %l18, !tbaa !24
  br label %bb54
bb54:
  %t203 = load i64, ptr %l17, !tbaa !24
  %t204 = load i64, ptr %l18, !tbaa !24
  %t207 = icmp slt i64 %t203, %t204
  %t209 = xor i1 %t207, true
  br i1 %t209, label %bb55, label %bb56
bb55:
  br label %bb63
bb56:
  br label %bb57
bb57:
  %t211 = load { i64, ptr }, ptr %l16, !tbaa !27
  store { i64, ptr } %t211, ptr %l124, !tbaa !27
  %t212 = load i64, ptr %l17, !tbaa !24
  %t214 = getelementptr { i64, ptr }, ptr %l124, i32 0, i32 1
  %t215 = load ptr, ptr %t214, !tbaa !27
  %t216 = getelementptr i32, ptr %t215, i64 %t212
  %t217 = load i32, ptr %t216, !tbaa !33
  %t219 = load ptr, ptr %l0, !tbaa !29
  %t220 = load ptr, ptr %l1, !tbaa !29
  %t225 = call i1 @compiler_2fmir_2ecompiler_2fmir_3aGenInfo_2eHoldsGen(ptr %v0, ptr %v1, ptr %t219, ptr %t220, i32 %t217)
  store i1 %t225, ptr %l130
  br label %bb58
bb58:
  %t226 = load i1, ptr %l130, !tbaa !21
  br i1 %t226, label %bb59, label %bb60
bb59:
  store i1 true, ptr %l4, !tbaa !21
  br label %bb61
bb60:
  br label %bb61
bb61:
  br label %bb62
bb62:
  %t227 = load i64, ptr %l17, !tbaa !24
  %t229 = add i64 %t227, 1
  store i64 %t229, ptr %l17, !tbaa !24
  br label %bb54
bb63:
  br label %bb64
bb64:
  %t231 = load i64, ptr %l13, !tbaa !24
  %t233 = add i64 %t231, 1
  store i64 %t233, ptr %l13, !tbaa !24
  br label %bb45
bb65:
  %t235 = load i1, ptr %l4, !tbaa !21
  store i1 %t235, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local void @compiler_2fmir_2ecompiler_2fmir_3aGenInfo_2enote(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i32 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i32
  %l3 = alloca i64
  %l6 = alloca i32
  %l12 = alloca i32
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store i32 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l1, !tbaa !29
  %t2 = load i32, ptr %l2, !tbaa !23
  %t5 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v1, ptr %t1, i32 %t2)
  store i32 %t5, ptr %l6
  br label %bb1
bb1:
  %t6 = load i32, ptr %l6, !range !{i32 0, i32 33}
  %t8 = trunc i64 18 to i32
  %t9 = icmp eq i32 %t6, %t8
  %t11 = xor i1 %t9, true
  br i1 %t11, label %bb2, label %bb3
bb2:
  br label %ret
bb3:
  br label %bb4
bb4:
  %t13 = load ptr, ptr %l1, !tbaa !29
  %t14 = load i32, ptr %l2, !tbaa !23
  %t17 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v1, ptr %t13, i32 %t14)
  store i32 %t17, ptr %l12
  br label %bb5
bb5:
  %t18 = load i32, ptr %l12, !tbaa !23
  %t19 = sext i32 %t18 to i64
  store i64 %t19, ptr %l3, !tbaa !24
  %t21 = load ptr, ptr %l0, !tbaa !29
  %t23 = getelementptr %"compiler/mir:GenInfo", ptr %t21, i32 0, i32 2
  %t24 = load i64, ptr %l3, !tbaa !24
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2ePut_3cI64_2c_20Bool_3e(ptr %v0, ptr %t23, i64 %t24, i1 true)
  br label %bb6
bb6:
  %t27 = load ptr, ptr %l0, !tbaa !29
  %t29 = getelementptr %"compiler/mir:GenInfo", ptr %t27, i32 0, i32 6
  %t30 = load i64, ptr %t29, !tbaa !24
  %t32 = icmp sgt i64 %t30, 0
  br i1 %t32, label %bb7, label %bb8
bb7:
  %t34 = load ptr, ptr %l0, !tbaa !29
  %t36 = getelementptr %"compiler/mir:GenInfo", ptr %t34, i32 0, i32 5
  %t37 = load i64, ptr %l3, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %t36, i64 %t37)
  br label %bb9
bb8:
  br label %bb10
bb9:
  br label %bb10
bb10:
  br label %ret
ret:
  ret void
}

define dso_local { i64, ptr } @compiler_2fmir_2ecompiler_2fmir_3aKey_2eText(ptr %v0, { i64, [2 x i64] } %a0) #0 {
entry:
  %l0 = alloca { i64, [2 x i64] }
  %l1 = alloca i32
  %l2 = alloca %"compiler/source:Span"
  %l3 = alloca i64
  %l4 = alloca i32
  %l5 = alloca i32
  %l6 = alloca i32
  %l7 = alloca i32
  %l8 = alloca { i64, ptr }
  %rv = alloca { i64, ptr }
  store { i64, [2 x i64] } %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load { i64, [2 x i64] }, ptr %l0
  %t3 = extractvalue { i64, [2 x i64] } %t1, 0
  %t4 = icmp eq i64 %t3, 0
  br i1 %t4, label %bb1, label %bb2
bb1:
  %t6 = getelementptr { i64, [2 x i64] }, ptr %l0, i32 0, i32 1
  %t7 = getelementptr { i32, %"compiler/source:Span" }, ptr %t6, i32 0, i32 0
  %t8 = load i32, ptr %t7
  store i32 %t8, ptr %l1, !tbaa !23
  %t10 = getelementptr { i64, [2 x i64] }, ptr %l0, i32 0, i32 1
  %t11 = getelementptr { i32, %"compiler/source:Span" }, ptr %t10, i32 0, i32 1
  %t12 = load %"compiler/source:Span", ptr %t11
  store %"compiler/source:Span" %t12, ptr %l2
  br label %bb3
bb2:
  br label %bb4
bb3:
  %t14 = load i32, ptr %l1, !tbaa !23
  %t15 = getelementptr %"compiler/source:Span", ptr %l2, i32 0, i32 0
  %t16 = load i32, ptr %t15, !tbaa !23
  %t17 = getelementptr %"compiler/source:Span", ptr %l2, i32 0, i32 1
  %t18 = load i32, ptr %t17, !tbaa !23
  %t19 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d17, i32 0, i32 1) }, 1
  %t20 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d17, i32 0, i32 1) }, 0
  %t22 = sext i32 %t14 to i64
  %t23 = call i64 @__olang_fmt_i64(ptr null, i64 %t22)
  %t24 = add i64 %t20, %t23
  %t25 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d18, i32 0, i32 1) }, 1
  %t26 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d18, i32 0, i32 1) }, 0
  %t27 = add i64 %t24, %t26
  %t29 = sext i32 %t16 to i64
  %t30 = call i64 @__olang_fmt_i64(ptr null, i64 %t29)
  %t31 = add i64 %t27, %t30
  %t32 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d19, i32 0, i32 1) }, 1
  %t33 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d19, i32 0, i32 1) }, 0
  %t34 = add i64 %t31, %t33
  %t36 = sext i32 %t18 to i64
  %t37 = call i64 @__olang_fmt_i64(ptr null, i64 %t36)
  %t38 = add i64 %t34, %t37
  %t39 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t38)
  call void @olang_textcopy(ptr %t39, ptr %t19, i64 %t20)
  %t40 = getelementptr i8, ptr %t39, i64 %t20
  %t41 = call i64 @__olang_fmt_i64(ptr %t40, i64 %t22)
  %t42 = getelementptr i8, ptr %t40, i64 %t23
  call void @olang_textcopy(ptr %t42, ptr %t25, i64 %t26)
  %t43 = getelementptr i8, ptr %t42, i64 %t26
  %t44 = call i64 @__olang_fmt_i64(ptr %t43, i64 %t29)
  %t45 = getelementptr i8, ptr %t43, i64 %t30
  call void @olang_textcopy(ptr %t45, ptr %t32, i64 %t33)
  %t46 = getelementptr i8, ptr %t45, i64 %t33
  %t47 = call i64 @__olang_fmt_i64(ptr %t46, i64 %t36)
  %t48 = insertvalue { i64, ptr } undef, i64 %t38, 0
  %t49 = insertvalue { i64, ptr } %t48, ptr %t39, 1
  store { i64, ptr } %t49, ptr %l8, !tbaa !27
  br label %bb17
bb4:
  %t51 = load { i64, [2 x i64] }, ptr %l0
  %t53 = extractvalue { i64, [2 x i64] } %t51, 0
  %t54 = icmp eq i64 %t53, 1
  br i1 %t54, label %bb5, label %bb6
bb5:
  %t56 = getelementptr { i64, [2 x i64] }, ptr %l0, i32 0, i32 1
  %t57 = getelementptr { i64, i32 }, ptr %t56, i32 0, i32 0
  %t58 = load i64, ptr %t57
  store i64 %t58, ptr %l3, !tbaa !24
  %t60 = getelementptr { i64, [2 x i64] }, ptr %l0, i32 0, i32 1
  %t61 = getelementptr { i64, i32 }, ptr %t60, i32 0, i32 1
  %t62 = load i32, ptr %t61
  store i32 %t62, ptr %l4, !tbaa !23
  br label %bb7
bb6:
  br label %bb8
bb7:
  %t64 = load i64, ptr %l3, !tbaa !24
  %t65 = load i32, ptr %l4, !tbaa !23
  %t66 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d20, i32 0, i32 1) }, 1
  %t67 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d20, i32 0, i32 1) }, 0
  %t69 = call i64 @__olang_fmt_i64(ptr null, i64 %t64)
  %t70 = add i64 %t67, %t69
  %t71 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d21, i32 0, i32 1) }, 1
  %t72 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d21, i32 0, i32 1) }, 0
  %t73 = add i64 %t70, %t72
  %t75 = sext i32 %t65 to i64
  %t76 = call i64 @__olang_fmt_i64(ptr null, i64 %t75)
  %t77 = add i64 %t73, %t76
  %t78 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t77)
  call void @olang_textcopy(ptr %t78, ptr %t66, i64 %t67)
  %t79 = getelementptr i8, ptr %t78, i64 %t67
  %t80 = call i64 @__olang_fmt_i64(ptr %t79, i64 %t64)
  %t81 = getelementptr i8, ptr %t79, i64 %t69
  call void @olang_textcopy(ptr %t81, ptr %t71, i64 %t72)
  %t82 = getelementptr i8, ptr %t81, i64 %t72
  %t83 = call i64 @__olang_fmt_i64(ptr %t82, i64 %t75)
  %t84 = insertvalue { i64, ptr } undef, i64 %t77, 0
  %t85 = insertvalue { i64, ptr } %t84, ptr %t78, 1
  store { i64, ptr } %t85, ptr %l8, !tbaa !27
  br label %bb17
bb8:
  %t87 = load { i64, [2 x i64] }, ptr %l0
  %t89 = extractvalue { i64, [2 x i64] } %t87, 0
  %t90 = icmp eq i64 %t89, 2
  br i1 %t90, label %bb9, label %bb10
bb9:
  %t92 = getelementptr { i64, [2 x i64] }, ptr %l0, i32 0, i32 1
  %t93 = getelementptr { i32, i32 }, ptr %t92, i32 0, i32 0
  %t94 = load i32, ptr %t93
  store i32 %t94, ptr %l5, !tbaa !23
  %t96 = getelementptr { i64, [2 x i64] }, ptr %l0, i32 0, i32 1
  %t97 = getelementptr { i32, i32 }, ptr %t96, i32 0, i32 1
  %t98 = load i32, ptr %t97
  store i32 %t98, ptr %l6, !tbaa !23
  br label %bb11
bb10:
  br label %bb12
bb11:
  %t100 = load i32, ptr %l5, !tbaa !23
  %t101 = load i32, ptr %l6, !tbaa !23
  %t102 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d22, i32 0, i32 1) }, 1
  %t103 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d22, i32 0, i32 1) }, 0
  %t105 = sext i32 %t100 to i64
  %t106 = call i64 @__olang_fmt_i64(ptr null, i64 %t105)
  %t107 = add i64 %t103, %t106
  %t108 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d23, i32 0, i32 1) }, 1
  %t109 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d23, i32 0, i32 1) }, 0
  %t110 = add i64 %t107, %t109
  %t112 = sext i32 %t101 to i64
  %t113 = call i64 @__olang_fmt_i64(ptr null, i64 %t112)
  %t114 = add i64 %t110, %t113
  %t115 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t114)
  call void @olang_textcopy(ptr %t115, ptr %t102, i64 %t103)
  %t116 = getelementptr i8, ptr %t115, i64 %t103
  %t117 = call i64 @__olang_fmt_i64(ptr %t116, i64 %t105)
  %t118 = getelementptr i8, ptr %t116, i64 %t106
  call void @olang_textcopy(ptr %t118, ptr %t108, i64 %t109)
  %t119 = getelementptr i8, ptr %t118, i64 %t109
  %t120 = call i64 @__olang_fmt_i64(ptr %t119, i64 %t112)
  %t121 = insertvalue { i64, ptr } undef, i64 %t114, 0
  %t122 = insertvalue { i64, ptr } %t121, ptr %t115, 1
  store { i64, ptr } %t122, ptr %l8, !tbaa !27
  br label %bb17
bb12:
  %t124 = load { i64, [2 x i64] }, ptr %l0
  %t126 = extractvalue { i64, [2 x i64] } %t124, 0
  %t127 = icmp eq i64 %t126, 3
  br i1 %t127, label %bb13, label %bb14
bb13:
  %t129 = getelementptr { i64, [2 x i64] }, ptr %l0, i32 0, i32 1
  %t130 = getelementptr { i32 }, ptr %t129, i32 0, i32 0
  %t131 = load i32, ptr %t130
  store i32 %t131, ptr %l7, !tbaa !23
  br label %bb15
bb14:
  br label %bb16
bb15:
  %t133 = load i32, ptr %l7, !tbaa !23
  %t134 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d24, i32 0, i32 1) }, 1
  %t135 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d24, i32 0, i32 1) }, 0
  %t137 = sext i32 %t133 to i64
  %t138 = call i64 @__olang_fmt_i64(ptr null, i64 %t137)
  %t139 = add i64 %t135, %t138
  %t140 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t139)
  call void @olang_textcopy(ptr %t140, ptr %t134, i64 %t135)
  %t141 = getelementptr i8, ptr %t140, i64 %t135
  %t142 = call i64 @__olang_fmt_i64(ptr %t141, i64 %t137)
  %t143 = insertvalue { i64, ptr } undef, i64 %t139, 0
  %t144 = insertvalue { i64, ptr } %t143, ptr %t140, 1
  store { i64, ptr } %t144, ptr %l8, !tbaa !27
  br label %bb17
bb16:
  call void @__olang_check_failed(ptr @olang_loc_14ebfa33b1d03356_270fe526a4636ad2)
  unreachable
bb17:
  %t146 = load { i64, ptr }, ptr %l8, !tbaa !27
  store { i64, ptr } %t146, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local i1 @compiler_2fmir_2ecompiler_2fmir_3aLvalue_2eBaseIs(%"compiler/mir:Lvalue" %a0, i32 %a1) #0 {
entry:
  %l0 = alloca %"compiler/mir:Lvalue"
  %l4 = alloca i1
  %rv = alloca i1
  store %"compiler/mir:Lvalue" %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = getelementptr %"compiler/mir:Lvalue", ptr %l0, i32 0, i32 0
  %t2 = load { i64, [2 x i64] }, ptr %t1
  %t4 = extractvalue { i64, [2 x i64] } %t2, 0
  %t5 = icmp eq i64 %t4, 1
  br i1 %t5, label %bb1, label %bb2
bb1:
  %t7 = getelementptr %"compiler/mir:Lvalue", ptr %l0, i32 0, i32 0
  %t8 = getelementptr { i64, [2 x i64] }, ptr %t7, i32 0, i32 1
  %t9 = getelementptr { i32 }, ptr %t8, i32 0, i32 0
  %t10 = load i32, ptr %t9
  %t14 = icmp eq i32 %t10, %a1
  store i1 %t14, ptr %l4, !tbaa !21
  br label %bb3
bb2:
  store i1 false, ptr %l4, !tbaa !21
  br label %bb3
bb3:
  %t16 = load i1, ptr %l4, !tbaa !21
  store i1 %t16, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local void @compiler_2fmir_2ecompiler_2fmir_3aStmtList_2ePush(ptr %v0, ptr %a0, { i64, [21 x i64] } %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca { i64, [21 x i64] }
  %l9 = alloca { i64, [21 x i64] }
  %l13 = alloca { i64, [21 x i64] }
  %l14 = alloca ptr
  store ptr %a0, ptr %l0
  store { i64, [21 x i64] } %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/mir:StmtList", ptr %t1, i32 0, i32 1
  %t4 = load i64, ptr %t3, !tbaa !24
  %t5 = load ptr, ptr %l0, !tbaa !29
  %t7 = getelementptr %"compiler/mir:StmtList", ptr %t5, i32 0, i32 0
  %t8 = load { i64, ptr }, ptr %t7, !tbaa !27
  %t10 = extractvalue { i64, ptr } %t8, 0
  %t13 = icmp eq i64 %t4, %t10
  br i1 %t13, label %bb1, label %bb2
bb1:
  %t15 = load ptr, ptr %l0, !tbaa !29
  call void @llvm.memmove.p0.p0.i64(ptr %l9, ptr %l1, i64 176, i1 false)
  %t17 = load { i64, [21 x i64] }, ptr %l9
  call void @compiler_2fmir_2ecompiler_2fmir_3aStmtList_2eroom(ptr %v0, ptr %t15, { i64, [21 x i64] } %t17)
  br label %bb3
bb2:
  br label %bb4
bb3:
  br label %bb4
bb4:
  %t18 = load ptr, ptr %l0, !tbaa !29
  %t19 = load ptr, ptr %l0, !tbaa !29
  %t21 = getelementptr %"compiler/mir:StmtList", ptr %t19, i32 0, i32 1
  %t22 = load i64, ptr %t21, !tbaa !24
  call void @llvm.memmove.p0.p0.i64(ptr %l13, ptr %l1, i64 176, i1 false)
  %t24 = getelementptr %"compiler/mir:StmtList", ptr %t18, i32 0, i32 0
  %t26 = getelementptr { i64, ptr }, ptr %t24, i32 0, i32 1
  %t27 = load ptr, ptr %t26, !tbaa !27
  %t28 = getelementptr { i64, [21 x i64] }, ptr %t27, i64 %t22
  call void @llvm.memmove.p0.p0.i64(ptr %t28, ptr %l13, i64 176, i1 false)
  %t29 = load ptr, ptr %l0, !tbaa !29
  store ptr %t29, ptr %l14, !tbaa !29
  %t30 = load ptr, ptr %l14, !tbaa !29
  %t31 = getelementptr %"compiler/mir:StmtList", ptr %t30, i32 0, i32 1
  %t32 = load i64, ptr %t31, !tbaa !24
  %t34 = add i64 %t32, 1
  %t36 = load ptr, ptr %l14, !tbaa !29
  %t37 = getelementptr %"compiler/mir:StmtList", ptr %t36, i32 0, i32 1
  store i64 %t34, ptr %t37, !tbaa !24
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2fmir_2ecompiler_2fmir_3adumper_2eall(ptr %v0, ptr %v1, ptr %v2, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca %"std/prelude/text:StringBuilder"
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
  %l15 = alloca %"compiler/mir:Local"
  %l16 = alloca { i64, ptr }
  %l17 = alloca { i64, ptr }
  %l18 = alloca i64
  %l19 = alloca i64
  %l20 = alloca i64
  %l21 = alloca i64
  %l22 = alloca i64
  %l23 = alloca i64
  %l24 = alloca %"compiler/mir:ScopeInfo"
  %l25 = alloca { i64, ptr }
  %l26 = alloca { i64, ptr }
  %l27 = alloca { i64, ptr }
  %l28 = alloca i64
  %l29 = alloca i64
  %l30 = alloca i64
  %l31 = alloca i64
  %l32 = alloca i64
  %l33 = alloca i64
  %l34 = alloca ptr
  %l35 = alloca ptr
  %l36 = alloca i64
  %l37 = alloca { i64, [21 x i64] }
  %l40 = alloca ptr
  %l44 = alloca { i64, ptr }
  %l46 = alloca ptr
  %l51 = alloca { i64, ptr }
  %l55 = alloca ptr
  %l57 = alloca i64
  %l59 = alloca %"std/prelude/text:StringBuilder"
  %l61 = alloca ptr
  %l63 = alloca i64
  %l67 = alloca i64
  %l70 = alloca i64
  %l88 = alloca ptr
  %l91 = alloca { i64, ptr }
  %l92 = alloca i64
  %l93 = alloca ptr
  %l95 = alloca ptr
  %l98 = alloca { i64, [1 x i64] }
  %l99 = alloca { i64, ptr }
  %l104 = alloca ptr
  %l106 = alloca { i64, ptr }
  %l110 = alloca ptr
  %l112 = alloca i64
  %l116 = alloca i64
  %l119 = alloca i64
  %l138 = alloca ptr
  %l141 = alloca %"compiler/mir:Local"
  %l144 = alloca ptr
  %l147 = alloca { i64, ptr }
  %l150 = alloca { i64, ptr }
  %l153 = alloca { i64, ptr }
  %l156 = alloca ptr
  %l157 = alloca i64
  %l158 = alloca i32
  %l160 = alloca { i64, ptr }
  %l162 = alloca { i64, ptr }
  %l166 = alloca { i64, ptr }
  %l171 = alloca ptr
  %l175 = alloca { i64, ptr }
  %l182 = alloca ptr
  %l184 = alloca i64
  %l188 = alloca i64
  %l191 = alloca i64
  %l210 = alloca ptr
  %l213 = alloca %"compiler/mir:ScopeInfo"
  %l217 = alloca { i64, ptr }
  %l223 = alloca { i64, ptr }
  %l229 = alloca { i64, ptr }
  %l232 = alloca { i64, ptr }
  %l235 = alloca ptr
  %l236 = alloca i64
  %l237 = alloca i32
  %l239 = alloca { i64, ptr }
  %l241 = alloca { i64, ptr }
  %l250 = alloca ptr
  %l252 = alloca i64
  %l256 = alloca i64
  %l259 = alloca i64
  %l282 = alloca ptr
  %l285 = alloca ptr
  %l288 = alloca i64
  %l290 = alloca i64
  %l295 = alloca { i64, [21 x i64] }
  %l296 = alloca ptr
  %l299 = alloca { i64, ptr }
  %l303 = alloca ptr
  %l307 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %s2 = alloca %olang.scope
  %s4 = alloca %olang.scope
  %s9 = alloca %olang.scope
  %s11 = alloca %olang.builder
  %s11room = alloca [64 x i8], align 8
  %s16 = alloca %olang.scope
  %s20 = alloca %olang.builder
  %s20room = alloca [64 x i8], align 8
  %s24 = alloca %olang.scope
  %s27 = alloca %olang.scope
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/mir:dumper", ptr %t1, i32 0, i32 0
  %t4 = load ptr, ptr %t3, !tbaa !29
  store ptr %t4, ptr %l1, !tbaa !29
  %t6 = load ptr, ptr %l0, !tbaa !29
  store ptr %t6, ptr %l40, !tbaa !29
  %t7 = load ptr, ptr %l0, !tbaa !29
  %t8 = load ptr, ptr %l1, !tbaa !29
  %t10 = getelementptr %"compiler/mir:Fn", ptr %t8, i32 0, i32 0
  %t11 = load { i64, [2 x i64] }, ptr %t10
  %t14 = call { i64, ptr } @compiler_2fmir_2ecompiler_2fmir_3adumper_2ekey(ptr %v0, ptr %s0, ptr %v1, ptr %t7, { i64, [2 x i64] } %t11)
  store { i64, ptr } %t14, ptr %l44
  br label %bb1
bb1:
  %t15 = load ptr, ptr %l0, !tbaa !29
  %t17 = getelementptr %"compiler/mir:dumper", ptr %t15, i32 0, i32 1
  %t18 = load ptr, ptr %t17, !tbaa !29
  store ptr %t18, ptr %l46, !tbaa !29
  %t19 = load ptr, ptr %l1, !tbaa !29
  %t21 = getelementptr %"compiler/mir:Fn", ptr %t19, i32 0, i32 1
  %t22 = load i32, ptr %t21, !tbaa !23
  %t23 = load ptr, ptr %l46, !tbaa !29
  %t24 = call ptr @__olang_scope_or(ptr %v1, ptr %t23)
  %t25 = ptrtoint ptr %t24 to i64
  %t27 = inttoptr i64 %t25 to ptr
  %t29 = inttoptr i64 0 to ptr
  %t30 = load ptr, ptr %l46, !tbaa !29
  %t32 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eCanon(ptr %t27, ptr %s0, ptr %t29, ptr %t30, i32 %t22)
  store { i64, ptr } %t32, ptr %l51
  br label %bb2
bb2:
  %t33 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d25, i32 0, i32 1) }, 1
  %t34 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d25, i32 0, i32 1) }, 0
  %t35 = load { i64, ptr }, ptr %l44, !tbaa !27
  %t36 = extractvalue { i64, ptr } %t35, 1
  %t37 = extractvalue { i64, ptr } %t35, 0
  %t38 = add i64 %t34, %t37
  %t39 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d26, i32 0, i32 1) }, 1
  %t40 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d26, i32 0, i32 1) }, 0
  %t41 = add i64 %t38, %t40
  %t42 = load { i64, ptr }, ptr %l51, !tbaa !27
  %t43 = extractvalue { i64, ptr } %t42, 1
  %t44 = extractvalue { i64, ptr } %t42, 0
  %t45 = add i64 %t41, %t44
  %t46 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t45)
  call void @olang_textcopy(ptr %t46, ptr %t33, i64 %t34)
  %t47 = getelementptr i8, ptr %t46, i64 %t34
  call void @olang_textcopy(ptr %t47, ptr %t36, i64 %t37)
  %t48 = getelementptr i8, ptr %t47, i64 %t37
  call void @olang_textcopy(ptr %t48, ptr %t39, i64 %t40)
  %t49 = getelementptr i8, ptr %t48, i64 %t40
  call void @olang_textcopy(ptr %t49, ptr %t43, i64 %t44)
  %t50 = insertvalue { i64, ptr } undef, i64 %t45, 0
  %t51 = insertvalue { i64, ptr } %t50, ptr %t46, 1
  %t53 = extractvalue { i64, ptr } %t51, 0
  %t54 = extractvalue { i64, ptr } %t51, 1
  %t55 = mul i64 %t53, 1
  %t56 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t55)
  call void @llvm.memcpy.p0.p0.i64(ptr %t56, ptr %t54, i64 %t55, i1 false)
  %t57 = insertvalue { i64, ptr } undef, i64 %t53, 0
  %t58 = insertvalue { i64, ptr } %t57, ptr %t56, 1
  %t59 = load ptr, ptr %l40, !tbaa !29
  call void @compiler_2fmir_2ecompiler_2fmir_3adumper_2eline(ptr %v0, ptr %s0, ptr %t59, i64 0, { i64, ptr } %t58)
  br label %bb3
bb3:
  %t61 = load ptr, ptr %l1, !tbaa !29
  %t63 = getelementptr %"compiler/mir:Fn", ptr %t61, i32 0, i32 6
  store ptr %t63, ptr %l55, !tbaa !29
  %t64 = load ptr, ptr %l55, !tbaa !29
  %t65 = call ptr @__olang_scope_or(ptr %v2, ptr %t64)
  %t66 = ptrtoint ptr %t65 to i64
  %t68 = inttoptr i64 %t66 to ptr
  %t69 = load ptr, ptr %l55, !tbaa !29
  %t70 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aVarKind_3e_2eLen_3ccompiler_2fmir_3aVarKind_3e(ptr %t68, ptr %t69)
  store i64 %t70, ptr %l57
  br label %bb4
bb4:
  %t71 = load i64, ptr %l57, !tbaa !24
  %t72 = icmp sgt i64 %t71, 0
  br i1 %t72, label %bb5, label %bb6
bb5:
  store %olang.scope zeroinitializer, ptr %s2
  %t74 = call %"std/prelude/text:StringBuilder" @std_2fprelude_2ftext_3aStringBuilder_2ector(ptr %s2)
  store %"std/prelude/text:StringBuilder" %t74, ptr %l59
  br label %bb7
bb6:
  br label %bb29
bb7:
  %t75 = load %"std/prelude/text:StringBuilder", ptr %l59
  store %"std/prelude/text:StringBuilder" %t75, ptr %l2
  store i64 0, ptr %l3, !tbaa !24
  %t76 = load ptr, ptr %l1, !tbaa !29
  %t78 = getelementptr %"compiler/mir:Fn", ptr %t76, i32 0, i32 6
  store ptr %t78, ptr %l61, !tbaa !29
  %t79 = load ptr, ptr %l61, !tbaa !29
  %t80 = call ptr @__olang_scope_or(ptr %v2, ptr %t79)
  %t81 = ptrtoint ptr %t80 to i64
  %t83 = inttoptr i64 %t81 to ptr
  %t84 = load ptr, ptr %l61, !tbaa !29
  %t85 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aVarKind_3e_2eLen_3ccompiler_2fmir_3aVarKind_3e(ptr %t83, ptr %t84)
  store i64 %t85, ptr %l63
  br label %bb8
bb8:
  %t86 = load i64, ptr %l63, !tbaa !24
  store i64 %t86, ptr %l4, !tbaa !24
  store i64 1, ptr %l5, !tbaa !24
  %t87 = load i64, ptr %l4, !tbaa !24
  %t88 = load i64, ptr %l3, !tbaa !24
  %t91 = icmp sgt i64 %t87, %t88
  br i1 %t91, label %bb9, label %bb10
bb9:
  %t93 = load i64, ptr %l5, !tbaa !24
  %t95 = icmp sgt i64 %t93, 0
  br i1 %t95, label %bb11, label %bb12
bb10:
  store i64 0, ptr %l67, !tbaa !24
  br label %bb14
bb11:
  %t97 = load i64, ptr %l4, !tbaa !24
  %t98 = load i64, ptr %l3, !tbaa !24
  %t101 = sub i64 %t97, %t98
  %t102 = load i64, ptr %l5, !tbaa !24
  %t105 = add i64 %t101, %t102
  %t107 = sub i64 %t105, 1
  %t108 = load i64, ptr %l5, !tbaa !24
  %t111 = sdiv i64 %t107, %t108
  store i64 %t111, ptr %l70, !tbaa !24
  br label %bb13
bb12:
  store i64 0, ptr %l70, !tbaa !24
  br label %bb13
bb13:
  %t113 = load i64, ptr %l70, !tbaa !24
  store i64 %t113, ptr %l67, !tbaa !24
  br label %bb14
bb14:
  %t114 = load i64, ptr %l67, !tbaa !24
  store i64 %t114, ptr %l6, !tbaa !24
  store i64 0, ptr %l7, !tbaa !24
  br label %bb15
bb15:
  store %olang.scope zeroinitializer, ptr %s4
  %t115 = load i64, ptr %l7, !tbaa !24
  %t116 = load i64, ptr %l6, !tbaa !24
  %t119 = icmp slt i64 %t115, %t116
  %t121 = xor i1 %t119, true
  br i1 %t121, label %bb16, label %bb17
bb16:
  call void @__olang_scope_close(ptr %s4)
  br label %bb26
bb17:
  br label %bb18
bb18:
  %t123 = load i64, ptr %l3, !tbaa !24
  %t124 = load i64, ptr %l7, !tbaa !24
  %t125 = load i64, ptr %l5, !tbaa !24
  %t128 = mul i64 %t124, %t125
  %t131 = add i64 %t123, %t128
  store i64 %t131, ptr %l8, !tbaa !24
  store ptr %l2, ptr %l88, !tbaa !29
  %t133 = load i64, ptr %l8, !tbaa !24
  %t135 = icmp sgt i64 %t133, 0
  br i1 %t135, label %bb19, label %bb20
bb19:
  store { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d27, i32 0, i32 1) }, ptr %l91, !tbaa !27
  br label %bb21
bb20:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d28, i32 0, i32 1) }, ptr %l91, !tbaa !27
  br label %bb21
bb21:
  %t137 = load i64, ptr %l8, !tbaa !24
  store i64 %t137, ptr %l92, !tbaa !24
  %t138 = load ptr, ptr %l0, !tbaa !29
  store ptr %t138, ptr %l93, !tbaa !29
  %t139 = load ptr, ptr %l1, !tbaa !29
  %t141 = getelementptr %"compiler/mir:Fn", ptr %t139, i32 0, i32 6
  store ptr %t141, ptr %l95, !tbaa !29
  %t142 = load i64, ptr %l8, !tbaa !24
  %t143 = load ptr, ptr %l95, !tbaa !29
  %t144 = call ptr @__olang_scope_or(ptr %v2, ptr %t143)
  %t145 = ptrtoint ptr %t144 to i64
  %t147 = inttoptr i64 %t145 to ptr
  %t148 = load ptr, ptr %l95, !tbaa !29
  %t150 = call { i64, [1 x i64] } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aVarKind_3e_2eAt_3ccompiler_2fmir_3aVarKind_3e(ptr %t147, ptr %t148, i64 %t142)
  store { i64, [1 x i64] } %t150, ptr %l98
  br label %bb22
bb22:
  %t151 = load ptr, ptr %l93, !tbaa !29
  %t152 = load { i64, [1 x i64] }, ptr %l98
  %t153 = call { i64, ptr } @compiler_2fmir_2ecompiler_2fmir_3adumper_2evarKind(ptr %v0, ptr %s4, ptr %t151, { i64, [1 x i64] } %t152)
  store { i64, ptr } %t153, ptr %l99
  br label %bb23
bb23:
  %t154 = load { i64, ptr }, ptr %l91, !tbaa !27
  %t155 = extractvalue { i64, ptr } %t154, 1
  %t156 = extractvalue { i64, ptr } %t154, 0
  %t157 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d29, i32 0, i32 1) }, 1
  %t158 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d29, i32 0, i32 1) }, 0
  %t159 = add i64 %t156, %t158
  %t160 = load i64, ptr %l92, !tbaa !24
  %t161 = call i64 @__olang_fmt_i64(ptr null, i64 %t160)
  %t162 = add i64 %t159, %t161
  %t163 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d30, i32 0, i32 1) }, 1
  %t164 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d30, i32 0, i32 1) }, 0
  %t165 = add i64 %t162, %t164
  %t166 = load { i64, ptr }, ptr %l99, !tbaa !27
  %t167 = extractvalue { i64, ptr } %t166, 1
  %t168 = extractvalue { i64, ptr } %t166, 0
  %t169 = add i64 %t165, %t168
  %t170 = call ptr @__olang_scope_alloc(ptr %s4, i64 %t169)
  call void @olang_textcopy(ptr %t170, ptr %t155, i64 %t156)
  %t171 = getelementptr i8, ptr %t170, i64 %t156
  call void @olang_textcopy(ptr %t171, ptr %t157, i64 %t158)
  %t172 = getelementptr i8, ptr %t171, i64 %t158
  %t173 = call i64 @__olang_fmt_i64(ptr %t172, i64 %t160)
  %t174 = getelementptr i8, ptr %t172, i64 %t161
  call void @olang_textcopy(ptr %t174, ptr %t163, i64 %t164)
  %t175 = getelementptr i8, ptr %t174, i64 %t164
  call void @olang_textcopy(ptr %t175, ptr %t167, i64 %t168)
  %t176 = insertvalue { i64, ptr } undef, i64 %t169, 0
  %t177 = insertvalue { i64, ptr } %t176, ptr %t170, 1
  %t179 = extractvalue { i64, ptr } %t177, 0
  %t180 = extractvalue { i64, ptr } %t177, 1
  %t181 = mul i64 %t179, 1
  %t182 = call ptr @__olang_scope_alloc(ptr %s4, i64 %t181)
  call void @llvm.memcpy.p0.p0.i64(ptr %t182, ptr %t180, i64 %t181, i1 false)
  %t183 = insertvalue { i64, ptr } undef, i64 %t179, 0
  %t184 = insertvalue { i64, ptr } %t183, ptr %t182, 1
  %t185 = load ptr, ptr %l88, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s2, ptr %s4, ptr %t185, { i64, ptr } %t184)
  br label %bb24
bb24:
  call void @__olang_scope_close(ptr %s4)
  br label %bb25
bb25:
  %t187 = load i64, ptr %l7, !tbaa !24
  %t189 = add i64 %t187, 1
  store i64 %t189, ptr %l7, !tbaa !24
  br label %bb15
bb26:
  %t191 = load ptr, ptr %l0, !tbaa !29
  store ptr %t191, ptr %l104, !tbaa !29
  %t193 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %s2, ptr %s2, ptr %l2)
  store { i64, ptr } %t193, ptr %l106
  br label %bb27
bb27:
  %t194 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d31, i32 0, i32 1) }, 1
  %t195 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d31, i32 0, i32 1) }, 0
  %t196 = load { i64, ptr }, ptr %l106, !tbaa !27
  %t197 = extractvalue { i64, ptr } %t196, 1
  %t198 = extractvalue { i64, ptr } %t196, 0
  %t199 = add i64 %t195, %t198
  %t200 = call ptr @__olang_scope_alloc(ptr %s2, i64 %t199)
  call void @olang_textcopy(ptr %t200, ptr %t194, i64 %t195)
  %t201 = getelementptr i8, ptr %t200, i64 %t195
  call void @olang_textcopy(ptr %t201, ptr %t197, i64 %t198)
  %t202 = insertvalue { i64, ptr } undef, i64 %t199, 0
  %t203 = insertvalue { i64, ptr } %t202, ptr %t200, 1
  %t205 = extractvalue { i64, ptr } %t203, 0
  %t206 = extractvalue { i64, ptr } %t203, 1
  %t207 = mul i64 %t205, 1
  %t208 = call ptr @__olang_scope_alloc(ptr %s2, i64 %t207)
  call void @llvm.memcpy.p0.p0.i64(ptr %t208, ptr %t206, i64 %t207, i1 false)
  %t209 = insertvalue { i64, ptr } undef, i64 %t205, 0
  %t210 = insertvalue { i64, ptr } %t209, ptr %t208, 1
  %t211 = load ptr, ptr %l104, !tbaa !29
  call void @compiler_2fmir_2ecompiler_2fmir_3adumper_2eline(ptr %v0, ptr %s2, ptr %t211, i64 1, { i64, ptr } %t210)
  br label %bb28
bb28:
  call void @__olang_scope_close(ptr %s2)
  br label %bb29
bb29:
  store i64 0, ptr %l9, !tbaa !24
  %t213 = load ptr, ptr %l1, !tbaa !29
  %t215 = getelementptr %"compiler/mir:Fn", ptr %t213, i32 0, i32 7
  store ptr %t215, ptr %l110, !tbaa !29
  %t216 = load ptr, ptr %l110, !tbaa !29
  %t217 = call ptr @__olang_scope_or(ptr %v2, ptr %t216)
  %t218 = ptrtoint ptr %t217 to i64
  %t220 = inttoptr i64 %t218 to ptr
  %t221 = load ptr, ptr %l110, !tbaa !29
  %t222 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aLocal_3e_2eLen_3ccompiler_2fmir_3aLocal_3e(ptr %t220, ptr %t221)
  store i64 %t222, ptr %l112
  br label %bb30
bb30:
  %t223 = load i64, ptr %l112, !tbaa !24
  store i64 %t223, ptr %l10, !tbaa !24
  store i64 1, ptr %l11, !tbaa !24
  %t224 = load i64, ptr %l10, !tbaa !24
  %t225 = load i64, ptr %l9, !tbaa !24
  %t228 = icmp sgt i64 %t224, %t225
  br i1 %t228, label %bb31, label %bb32
bb31:
  %t230 = load i64, ptr %l11, !tbaa !24
  %t232 = icmp sgt i64 %t230, 0
  br i1 %t232, label %bb33, label %bb34
bb32:
  store i64 0, ptr %l116, !tbaa !24
  br label %bb36
bb33:
  %t234 = load i64, ptr %l10, !tbaa !24
  %t235 = load i64, ptr %l9, !tbaa !24
  %t238 = sub i64 %t234, %t235
  %t239 = load i64, ptr %l11, !tbaa !24
  %t242 = add i64 %t238, %t239
  %t244 = sub i64 %t242, 1
  %t245 = load i64, ptr %l11, !tbaa !24
  %t248 = sdiv i64 %t244, %t245
  store i64 %t248, ptr %l119, !tbaa !24
  br label %bb35
bb34:
  store i64 0, ptr %l119, !tbaa !24
  br label %bb35
bb35:
  %t250 = load i64, ptr %l119, !tbaa !24
  store i64 %t250, ptr %l116, !tbaa !24
  br label %bb36
bb36:
  %t251 = load i64, ptr %l116, !tbaa !24
  store i64 %t251, ptr %l12, !tbaa !24
  store i64 0, ptr %l13, !tbaa !24
  br label %bb37
bb37:
  store %olang.scope zeroinitializer, ptr %s9
  %t252 = load i64, ptr %l13, !tbaa !24
  %t253 = load i64, ptr %l12, !tbaa !24
  %t256 = icmp slt i64 %t252, %t253
  %t258 = xor i1 %t256, true
  br i1 %t258, label %bb38, label %bb39
bb38:
  call void @__olang_scope_close(ptr %s9)
  br label %bb55
bb39:
  br label %bb40
bb40:
  %t260 = load i64, ptr %l9, !tbaa !24
  %t261 = load i64, ptr %l13, !tbaa !24
  %t262 = load i64, ptr %l11, !tbaa !24
  %t265 = mul i64 %t261, %t262
  %t268 = add i64 %t260, %t265
  store i64 %t268, ptr %l14, !tbaa !24
  %t270 = load ptr, ptr %l1, !tbaa !29
  %t272 = getelementptr %"compiler/mir:Fn", ptr %t270, i32 0, i32 7
  store ptr %t272, ptr %l138, !tbaa !29
  %t273 = load i64, ptr %l14, !tbaa !24
  %t274 = load ptr, ptr %l138, !tbaa !29
  %t275 = call ptr @__olang_scope_or(ptr %v2, ptr %t274)
  %t276 = ptrtoint ptr %t275 to i64
  %t278 = inttoptr i64 %t276 to ptr
  %t279 = load ptr, ptr %l138, !tbaa !29
  %t281 = call %"compiler/mir:Local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aLocal_3e_2eAt_3ccompiler_2fmir_3aLocal_3e(ptr %t278, ptr %t279, i64 %t273)
  store %"compiler/mir:Local" %t281, ptr %l141
  br label %bb41
bb41:
  %t282 = load %"compiler/mir:Local", ptr %l141
  store %"compiler/mir:Local" %t282, ptr %l15
  %t283 = load ptr, ptr %l0, !tbaa !29
  %t285 = getelementptr %"compiler/mir:dumper", ptr %t283, i32 0, i32 1
  %t286 = load ptr, ptr %t285, !tbaa !29
  %t288 = getelementptr %"compiler/types:Table", ptr %t286, i32 0, i32 0
  %t289 = load ptr, ptr %t288, !tbaa !29
  store ptr %t289, ptr %l144, !tbaa !29
  %t290 = getelementptr %"compiler/mir:Local", ptr %l15, i32 0, i32 0
  %t291 = load i32, ptr %t290, !tbaa !23
  %t292 = load ptr, ptr %l144, !tbaa !29
  %t293 = call ptr @__olang_scope_of(ptr %t292, ptr null)
  %t294 = ptrtoint ptr %t293 to i64
  %t296 = inttoptr i64 %t294 to ptr
  %t297 = load ptr, ptr %l144, !tbaa !29
  %t299 = call { i64, ptr } @compiler_2fsource_2ecompiler_2fsource_3aNames_2eText(ptr %t296, ptr %s9, ptr %t297, i32 %t291)
  store { i64, ptr } %t299, ptr %l147
  br label %bb42
bb42:
  %t300 = load { i64, ptr }, ptr %l147, !tbaa !27
  store { i64, ptr } %t300, ptr %l16, !tbaa !27
  %t301 = getelementptr %"compiler/mir:Local", ptr %l15, i32 0, i32 4
  %t302 = load { i64, [1 x i64] }, ptr %t301
  %t304 = extractvalue { i64, [1 x i64] } %t302, 0
  %t305 = icmp eq i64 %t304, 3
  br i1 %t305, label %bb43, label %bb44
bb43:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d32, i32 0, i32 1) }, ptr %l150, !tbaa !27
  br label %bb46
bb44:
  %t307 = load ptr, ptr %l0, !tbaa !29
  %t308 = getelementptr %"compiler/mir:Local", ptr %l15, i32 0, i32 4
  %t309 = load { i64, [1 x i64] }, ptr %t308
  %t312 = call { i64, ptr } @compiler_2fmir_2ecompiler_2fmir_3adumper_2eref(ptr %v0, ptr %s9, ptr %t307, { i64, [1 x i64] } %t309)
  store { i64, ptr } %t312, ptr %l153
  br label %bb45
bb45:
  %t313 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d33, i32 0, i32 1) }, 1
  %t314 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d33, i32 0, i32 1) }, 0
  %t315 = load { i64, ptr }, ptr %l153, !tbaa !27
  %t316 = extractvalue { i64, ptr } %t315, 1
  %t317 = extractvalue { i64, ptr } %t315, 0
  %t318 = add i64 %t314, %t317
  %t319 = call ptr @__olang_scope_alloc(ptr %s9, i64 %t318)
  call void @olang_textcopy(ptr %t319, ptr %t313, i64 %t314)
  %t320 = getelementptr i8, ptr %t319, i64 %t314
  call void @olang_textcopy(ptr %t320, ptr %t316, i64 %t317)
  %t321 = insertvalue { i64, ptr } undef, i64 %t318, 0
  %t322 = insertvalue { i64, ptr } %t321, ptr %t319, 1
  %t324 = extractvalue { i64, ptr } %t322, 0
  %t325 = extractvalue { i64, ptr } %t322, 1
  %t326 = mul i64 %t324, 1
  %t327 = call ptr @__olang_scope_alloc(ptr %s9, i64 %t326)
  call void @llvm.memcpy.p0.p0.i64(ptr %t327, ptr %t325, i64 %t326, i1 false)
  %t328 = insertvalue { i64, ptr } undef, i64 %t324, 0
  %t329 = insertvalue { i64, ptr } %t328, ptr %t327, 1
  store { i64, ptr } %t329, ptr %l150, !tbaa !27
  br label %bb46
bb46:
  %t331 = load { i64, ptr }, ptr %l150, !tbaa !27
  store { i64, ptr } %t331, ptr %l17, !tbaa !27
  %t332 = load ptr, ptr %l0, !tbaa !29
  store ptr %t332, ptr %l156, !tbaa !29
  %t333 = load i64, ptr %l14, !tbaa !24
  store i64 %t333, ptr %l157, !tbaa !24
  %t334 = getelementptr %"compiler/mir:Local", ptr %l15, i32 0, i32 3
  %t335 = load i32, ptr %t334, !range !{i32 0, i32 4}
  store i32 %t335, ptr %l158
  store %olang.builder { ptr null, i64 0, i64 64, ptr null, ptr null }, ptr %s11
  store ptr %s11room, ptr %s11
  call void @olang_2emir_2eHelperKind_2eRender_2ecompiler_2fmir_3aLocalKind(ptr %s11, ptr %l158, i64 0)
  br label %bb47
bb47:
  %t337 = load ptr, ptr %s11
  %t338 = getelementptr %olang.builder, ptr %s11, i32 0, i32 1
  %t339 = load i64, ptr %t338
  %t340 = call ptr @__olang_scope_alloc(ptr %s9, i64 %t339)
  call void @olang_textcopy(ptr %t340, ptr %t337, i64 %t339)
  %t341 = insertvalue { i64, ptr } undef, i64 %t339, 0
  %t342 = insertvalue { i64, ptr } %t341, ptr %t340, 1
  store { i64, ptr } %t342, ptr %l160, !tbaa !27
  %t343 = getelementptr %olang.builder, ptr %s11, i32 0, i32 3
  %t344 = load ptr, ptr %t343
  %t345 = icmp ne ptr %t344, null
  br i1 %t345, label %sbgrew.346, label %sbdone.347
sbgrew.346:
  call void @__olang_sb_done(ptr %s11)
  br label %sbdone.347
sbdone.347:
  %t348 = load { i64, ptr }, ptr %l160, !tbaa !27
  %t349 = extractvalue { i64, ptr } %t348, 0
  %t350 = extractvalue { i64, ptr } %t348, 1
  %t351 = mul i64 %t349, 1
  %t352 = call ptr @__olang_scope_alloc(ptr %s9, i64 %t351)
  call void @llvm.memcpy.p0.p0.i64(ptr %t352, ptr %t350, i64 %t351, i1 false)
  %t353 = insertvalue { i64, ptr } undef, i64 %t349, 0
  %t354 = insertvalue { i64, ptr } %t353, ptr %t352, 1
  %t356 = call { i64, ptr } @compiler_2fmir_2eshort(ptr %s9, ptr %s9, { i64, ptr } %t354)
  store { i64, ptr } %t356, ptr %l162
  br label %bb48
bb48:
  %t357 = load { i64, ptr }, ptr %l16, !tbaa !27
  %t359 = extractvalue { i64, ptr } %t357, 0
  %t361 = icmp sgt i64 %t359, 0
  br i1 %t361, label %bb49, label %bb50
bb49:
  %t363 = load { i64, ptr }, ptr %l16, !tbaa !27
  %t364 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d34, i32 0, i32 1) }, 1
  %t365 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d34, i32 0, i32 1) }, 0
  %t367 = extractvalue { i64, ptr } %t363, 1
  %t368 = extractvalue { i64, ptr } %t363, 0
  %t369 = add i64 %t365, %t368
  %t370 = call ptr @__olang_scope_alloc(ptr %s9, i64 %t369)
  call void @olang_textcopy(ptr %t370, ptr %t364, i64 %t365)
  %t371 = getelementptr i8, ptr %t370, i64 %t365
  call void @olang_textcopy(ptr %t371, ptr %t367, i64 %t368)
  %t372 = insertvalue { i64, ptr } undef, i64 %t369, 0
  %t373 = insertvalue { i64, ptr } %t372, ptr %t370, 1
  %t375 = extractvalue { i64, ptr } %t373, 0
  %t376 = extractvalue { i64, ptr } %t373, 1
  %t377 = mul i64 %t375, 1
  %t378 = call ptr @__olang_scope_alloc(ptr %s9, i64 %t377)
  call void @llvm.memcpy.p0.p0.i64(ptr %t378, ptr %t376, i64 %t377, i1 false)
  %t379 = insertvalue { i64, ptr } undef, i64 %t375, 0
  %t380 = insertvalue { i64, ptr } %t379, ptr %t378, 1
  store { i64, ptr } %t380, ptr %l166, !tbaa !27
  br label %bb51
bb50:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d35, i32 0, i32 1) }, ptr %l166, !tbaa !27
  br label %bb51
bb51:
  %t382 = load ptr, ptr %l0, !tbaa !29
  %t384 = getelementptr %"compiler/mir:dumper", ptr %t382, i32 0, i32 1
  %t385 = load ptr, ptr %t384, !tbaa !29
  store ptr %t385, ptr %l171, !tbaa !29
  %t386 = getelementptr %"compiler/mir:Local", ptr %l15, i32 0, i32 2
  %t387 = load i32, ptr %t386, !tbaa !23
  %t388 = load ptr, ptr %l171, !tbaa !29
  %t389 = call ptr @__olang_scope_or(ptr %v1, ptr %t388)
  %t390 = ptrtoint ptr %t389 to i64
  %t392 = inttoptr i64 %t390 to ptr
  %t394 = inttoptr i64 0 to ptr
  %t395 = load ptr, ptr %l171, !tbaa !29
  %t397 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eCanon(ptr %t392, ptr %s9, ptr %t394, ptr %t395, i32 %t387)
  store { i64, ptr } %t397, ptr %l175
  br label %bb52
bb52:
  %t398 = load { i64, ptr }, ptr %l17, !tbaa !27
  %t399 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d36, i32 0, i32 1) }, 1
  %t400 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d36, i32 0, i32 1) }, 0
  %t401 = load i64, ptr %l157, !tbaa !24
  %t402 = call i64 @__olang_fmt_i64(ptr null, i64 %t401)
  %t403 = add i64 %t400, %t402
  %t404 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d37, i32 0, i32 1) }, 1
  %t405 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d37, i32 0, i32 1) }, 0
  %t406 = add i64 %t403, %t405
  %t407 = load { i64, ptr }, ptr %l162, !tbaa !27
  %t408 = extractvalue { i64, ptr } %t407, 1
  %t409 = extractvalue { i64, ptr } %t407, 0
  %t410 = add i64 %t406, %t409
  %t411 = load { i64, ptr }, ptr %l166, !tbaa !27
  %t412 = extractvalue { i64, ptr } %t411, 1
  %t413 = extractvalue { i64, ptr } %t411, 0
  %t414 = add i64 %t410, %t413
  %t415 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d38, i32 0, i32 1) }, 1
  %t416 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d38, i32 0, i32 1) }, 0
  %t417 = add i64 %t414, %t416
  %t418 = load { i64, ptr }, ptr %l175, !tbaa !27
  %t419 = extractvalue { i64, ptr } %t418, 1
  %t420 = extractvalue { i64, ptr } %t418, 0
  %t421 = add i64 %t417, %t420
  %t423 = extractvalue { i64, ptr } %t398, 1
  %t424 = extractvalue { i64, ptr } %t398, 0
  %t425 = add i64 %t421, %t424
  %t426 = call ptr @__olang_scope_alloc(ptr %s9, i64 %t425)
  call void @olang_textcopy(ptr %t426, ptr %t399, i64 %t400)
  %t427 = getelementptr i8, ptr %t426, i64 %t400
  %t428 = call i64 @__olang_fmt_i64(ptr %t427, i64 %t401)
  %t429 = getelementptr i8, ptr %t427, i64 %t402
  call void @olang_textcopy(ptr %t429, ptr %t404, i64 %t405)
  %t430 = getelementptr i8, ptr %t429, i64 %t405
  call void @olang_textcopy(ptr %t430, ptr %t408, i64 %t409)
  %t431 = getelementptr i8, ptr %t430, i64 %t409
  call void @olang_textcopy(ptr %t431, ptr %t412, i64 %t413)
  %t432 = getelementptr i8, ptr %t431, i64 %t413
  call void @olang_textcopy(ptr %t432, ptr %t415, i64 %t416)
  %t433 = getelementptr i8, ptr %t432, i64 %t416
  call void @olang_textcopy(ptr %t433, ptr %t419, i64 %t420)
  %t434 = getelementptr i8, ptr %t433, i64 %t420
  call void @olang_textcopy(ptr %t434, ptr %t423, i64 %t424)
  %t435 = insertvalue { i64, ptr } undef, i64 %t425, 0
  %t436 = insertvalue { i64, ptr } %t435, ptr %t426, 1
  %t438 = extractvalue { i64, ptr } %t436, 0
  %t439 = extractvalue { i64, ptr } %t436, 1
  %t440 = mul i64 %t438, 1
  %t441 = call ptr @__olang_scope_alloc(ptr %s9, i64 %t440)
  call void @llvm.memcpy.p0.p0.i64(ptr %t441, ptr %t439, i64 %t440, i1 false)
  %t442 = insertvalue { i64, ptr } undef, i64 %t438, 0
  %t443 = insertvalue { i64, ptr } %t442, ptr %t441, 1
  %t444 = load ptr, ptr %l156, !tbaa !29
  call void @compiler_2fmir_2ecompiler_2fmir_3adumper_2eline(ptr %v0, ptr %s9, ptr %t444, i64 1, { i64, ptr } %t443)
  br label %bb53
bb53:
  call void @__olang_scope_close(ptr %s9)
  br label %bb54
bb54:
  %t446 = load i64, ptr %l13, !tbaa !24
  %t448 = add i64 %t446, 1
  store i64 %t448, ptr %l13, !tbaa !24
  br label %bb37
bb55:
  store i64 0, ptr %l18, !tbaa !24
  %t450 = load ptr, ptr %l1, !tbaa !29
  %t452 = getelementptr %"compiler/mir:Fn", ptr %t450, i32 0, i32 8
  store ptr %t452, ptr %l182, !tbaa !29
  %t453 = load ptr, ptr %l182, !tbaa !29
  %t454 = call ptr @__olang_scope_or(ptr %v2, ptr %t453)
  %t455 = ptrtoint ptr %t454 to i64
  %t457 = inttoptr i64 %t455 to ptr
  %t458 = load ptr, ptr %l182, !tbaa !29
  %t459 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aScopeInfo_3e_2eLen_3ccompiler_2fmir_3aScopeInfo_3e(ptr %t457, ptr %t458)
  store i64 %t459, ptr %l184
  br label %bb56
bb56:
  %t460 = load i64, ptr %l184, !tbaa !24
  store i64 %t460, ptr %l19, !tbaa !24
  store i64 1, ptr %l20, !tbaa !24
  %t461 = load i64, ptr %l19, !tbaa !24
  %t462 = load i64, ptr %l18, !tbaa !24
  %t465 = icmp sgt i64 %t461, %t462
  br i1 %t465, label %bb57, label %bb58
bb57:
  %t467 = load i64, ptr %l20, !tbaa !24
  %t469 = icmp sgt i64 %t467, 0
  br i1 %t469, label %bb59, label %bb60
bb58:
  store i64 0, ptr %l188, !tbaa !24
  br label %bb62
bb59:
  %t471 = load i64, ptr %l19, !tbaa !24
  %t472 = load i64, ptr %l18, !tbaa !24
  %t475 = sub i64 %t471, %t472
  %t476 = load i64, ptr %l20, !tbaa !24
  %t479 = add i64 %t475, %t476
  %t481 = sub i64 %t479, 1
  %t482 = load i64, ptr %l20, !tbaa !24
  %t485 = sdiv i64 %t481, %t482
  store i64 %t485, ptr %l191, !tbaa !24
  br label %bb61
bb60:
  store i64 0, ptr %l191, !tbaa !24
  br label %bb61
bb61:
  %t487 = load i64, ptr %l191, !tbaa !24
  store i64 %t487, ptr %l188, !tbaa !24
  br label %bb62
bb62:
  %t488 = load i64, ptr %l188, !tbaa !24
  store i64 %t488, ptr %l21, !tbaa !24
  store i64 0, ptr %l22, !tbaa !24
  br label %bb63
bb63:
  store %olang.scope zeroinitializer, ptr %s16
  %t489 = load i64, ptr %l22, !tbaa !24
  %t490 = load i64, ptr %l21, !tbaa !24
  %t493 = icmp slt i64 %t489, %t490
  %t495 = xor i1 %t493, true
  br i1 %t495, label %bb64, label %bb65
bb64:
  call void @__olang_scope_close(ptr %s16)
  br label %bb82
bb65:
  br label %bb66
bb66:
  %t497 = load i64, ptr %l18, !tbaa !24
  %t498 = load i64, ptr %l22, !tbaa !24
  %t499 = load i64, ptr %l20, !tbaa !24
  %t502 = mul i64 %t498, %t499
  %t505 = add i64 %t497, %t502
  store i64 %t505, ptr %l23, !tbaa !24
  %t507 = load ptr, ptr %l1, !tbaa !29
  %t509 = getelementptr %"compiler/mir:Fn", ptr %t507, i32 0, i32 8
  store ptr %t509, ptr %l210, !tbaa !29
  %t510 = load i64, ptr %l23, !tbaa !24
  %t511 = load ptr, ptr %l210, !tbaa !29
  %t512 = call ptr @__olang_scope_or(ptr %v2, ptr %t511)
  %t513 = ptrtoint ptr %t512 to i64
  %t515 = inttoptr i64 %t513 to ptr
  %t516 = load ptr, ptr %l210, !tbaa !29
  %t518 = call %"compiler/mir:ScopeInfo" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aScopeInfo_3e_2eAt_3ccompiler_2fmir_3aScopeInfo_3e(ptr %t515, ptr %t516, i64 %t510)
  store %"compiler/mir:ScopeInfo" %t518, ptr %l213
  br label %bb67
bb67:
  %t519 = load %"compiler/mir:ScopeInfo", ptr %l213
  store %"compiler/mir:ScopeInfo" %t519, ptr %l24
  %t520 = getelementptr %"compiler/mir:ScopeInfo", ptr %l24, i32 0, i32 1
  %t521 = load i32, ptr %t520, !tbaa !23
  %t522 = load i32, ptr @G_2ecompiler_2fmir_2eNoScope, !tbaa !23
  %t525 = icmp eq i32 %t521, %t522
  br i1 %t525, label %bb68, label %bb69
bb68:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d39, i32 0, i32 1) }, ptr %l217, !tbaa !27
  br label %bb70
bb69:
  %t527 = getelementptr %"compiler/mir:ScopeInfo", ptr %l24, i32 0, i32 1
  %t528 = load i32, ptr %t527, !tbaa !23
  %t529 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d40, i32 0, i32 1) }, 1
  %t530 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d40, i32 0, i32 1) }, 0
  %t532 = sext i32 %t528 to i64
  %t533 = call i64 @__olang_fmt_i64(ptr null, i64 %t532)
  %t534 = add i64 %t530, %t533
  %t535 = call ptr @__olang_scope_alloc(ptr %s16, i64 %t534)
  call void @olang_textcopy(ptr %t535, ptr %t529, i64 %t530)
  %t536 = getelementptr i8, ptr %t535, i64 %t530
  %t537 = call i64 @__olang_fmt_i64(ptr %t536, i64 %t532)
  %t538 = insertvalue { i64, ptr } undef, i64 %t534, 0
  %t539 = insertvalue { i64, ptr } %t538, ptr %t535, 1
  %t541 = extractvalue { i64, ptr } %t539, 0
  %t542 = extractvalue { i64, ptr } %t539, 1
  %t543 = mul i64 %t541, 1
  %t544 = call ptr @__olang_scope_alloc(ptr %s16, i64 %t543)
  call void @llvm.memcpy.p0.p0.i64(ptr %t544, ptr %t542, i64 %t543, i1 false)
  %t545 = insertvalue { i64, ptr } undef, i64 %t541, 0
  %t546 = insertvalue { i64, ptr } %t545, ptr %t544, 1
  store { i64, ptr } %t546, ptr %l217, !tbaa !27
  br label %bb70
bb70:
  %t548 = load { i64, ptr }, ptr %l217, !tbaa !27
  store { i64, ptr } %t548, ptr %l25, !tbaa !27
  %t549 = getelementptr %"compiler/mir:ScopeInfo", ptr %l24, i32 0, i32 2
  %t550 = load i32, ptr %t549, !tbaa !23
  %t552 = icmp slt i32 %t550, 0
  br i1 %t552, label %bb71, label %bb72
bb71:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d41, i32 0, i32 1) }, ptr %l223, !tbaa !27
  br label %bb73
bb72:
  %t554 = getelementptr %"compiler/mir:ScopeInfo", ptr %l24, i32 0, i32 2
  %t555 = load i32, ptr %t554, !tbaa !23
  %t556 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d42, i32 0, i32 1) }, 1
  %t557 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d42, i32 0, i32 1) }, 0
  %t559 = sext i32 %t555 to i64
  %t560 = call i64 @__olang_fmt_i64(ptr null, i64 %t559)
  %t561 = add i64 %t557, %t560
  %t562 = call ptr @__olang_scope_alloc(ptr %s16, i64 %t561)
  call void @olang_textcopy(ptr %t562, ptr %t556, i64 %t557)
  %t563 = getelementptr i8, ptr %t562, i64 %t557
  %t564 = call i64 @__olang_fmt_i64(ptr %t563, i64 %t559)
  %t565 = insertvalue { i64, ptr } undef, i64 %t561, 0
  %t566 = insertvalue { i64, ptr } %t565, ptr %t562, 1
  %t568 = extractvalue { i64, ptr } %t566, 0
  %t569 = extractvalue { i64, ptr } %t566, 1
  %t570 = mul i64 %t568, 1
  %t571 = call ptr @__olang_scope_alloc(ptr %s16, i64 %t570)
  call void @llvm.memcpy.p0.p0.i64(ptr %t571, ptr %t569, i64 %t570, i1 false)
  %t572 = insertvalue { i64, ptr } undef, i64 %t568, 0
  %t573 = insertvalue { i64, ptr } %t572, ptr %t571, 1
  store { i64, ptr } %t573, ptr %l223, !tbaa !27
  br label %bb73
bb73:
  %t575 = load { i64, ptr }, ptr %l223, !tbaa !27
  store { i64, ptr } %t575, ptr %l26, !tbaa !27
  %t576 = getelementptr %"compiler/mir:ScopeInfo", ptr %l24, i32 0, i32 4
  %t577 = load i32, ptr %t576, !tbaa !23
  %t579 = icmp eq i32 %t577, 0
  br i1 %t579, label %bb74, label %bb75
bb74:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d43, i32 0, i32 1) }, ptr %l229, !tbaa !27
  br label %bb77
bb75:
  %t581 = load ptr, ptr %l0, !tbaa !29
  %t582 = getelementptr %"compiler/mir:ScopeInfo", ptr %l24, i32 0, i32 4
  %t583 = load i32, ptr %t582, !tbaa !23
  %t586 = call { i64, ptr } @compiler_2fmir_2ecompiler_2fmir_3adumper_2elist(ptr %v0, ptr %s16, ptr %v1, ptr %t581, i32 %t583)
  store { i64, ptr } %t586, ptr %l232
  br label %bb76
bb76:
  %t587 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d44, i32 0, i32 1) }, 1
  %t588 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d44, i32 0, i32 1) }, 0
  %t589 = load { i64, ptr }, ptr %l232, !tbaa !27
  %t590 = extractvalue { i64, ptr } %t589, 1
  %t591 = extractvalue { i64, ptr } %t589, 0
  %t592 = add i64 %t588, %t591
  %t593 = call ptr @__olang_scope_alloc(ptr %s16, i64 %t592)
  call void @olang_textcopy(ptr %t593, ptr %t587, i64 %t588)
  %t594 = getelementptr i8, ptr %t593, i64 %t588
  call void @olang_textcopy(ptr %t594, ptr %t590, i64 %t591)
  %t595 = insertvalue { i64, ptr } undef, i64 %t592, 0
  %t596 = insertvalue { i64, ptr } %t595, ptr %t593, 1
  %t598 = extractvalue { i64, ptr } %t596, 0
  %t599 = extractvalue { i64, ptr } %t596, 1
  %t600 = mul i64 %t598, 1
  %t601 = call ptr @__olang_scope_alloc(ptr %s16, i64 %t600)
  call void @llvm.memcpy.p0.p0.i64(ptr %t601, ptr %t599, i64 %t600, i1 false)
  %t602 = insertvalue { i64, ptr } undef, i64 %t598, 0
  %t603 = insertvalue { i64, ptr } %t602, ptr %t601, 1
  store { i64, ptr } %t603, ptr %l229, !tbaa !27
  br label %bb77
bb77:
  %t605 = load { i64, ptr }, ptr %l229, !tbaa !27
  store { i64, ptr } %t605, ptr %l27, !tbaa !27
  %t606 = load ptr, ptr %l0, !tbaa !29
  store ptr %t606, ptr %l235, !tbaa !29
  %t607 = load i64, ptr %l23, !tbaa !24
  store i64 %t607, ptr %l236, !tbaa !24
  %t608 = getelementptr %"compiler/mir:ScopeInfo", ptr %l24, i32 0, i32 0
  %t609 = load i32, ptr %t608, !range !{i32 0, i32 7}
  store i32 %t609, ptr %l237
  store %olang.builder { ptr null, i64 0, i64 64, ptr null, ptr null }, ptr %s20
  store ptr %s20room, ptr %s20
  call void @olang_2emir_2eHelperKind_2eRender_2ecompiler_2fmir_3aScopeKind(ptr %s20, ptr %l237, i64 0)
  br label %bb78
bb78:
  %t611 = load ptr, ptr %s20
  %t612 = getelementptr %olang.builder, ptr %s20, i32 0, i32 1
  %t613 = load i64, ptr %t612
  %t614 = call ptr @__olang_scope_alloc(ptr %s16, i64 %t613)
  call void @olang_textcopy(ptr %t614, ptr %t611, i64 %t613)
  %t615 = insertvalue { i64, ptr } undef, i64 %t613, 0
  %t616 = insertvalue { i64, ptr } %t615, ptr %t614, 1
  store { i64, ptr } %t616, ptr %l239, !tbaa !27
  %t617 = getelementptr %olang.builder, ptr %s20, i32 0, i32 3
  %t618 = load ptr, ptr %t617
  %t619 = icmp ne ptr %t618, null
  br i1 %t619, label %sbgrew.620, label %sbdone.621
sbgrew.620:
  call void @__olang_sb_done(ptr %s20)
  br label %sbdone.621
sbdone.621:
  %t622 = load { i64, ptr }, ptr %l239, !tbaa !27
  %t623 = extractvalue { i64, ptr } %t622, 0
  %t624 = extractvalue { i64, ptr } %t622, 1
  %t625 = mul i64 %t623, 1
  %t626 = call ptr @__olang_scope_alloc(ptr %s16, i64 %t625)
  call void @llvm.memcpy.p0.p0.i64(ptr %t626, ptr %t624, i64 %t625, i1 false)
  %t627 = insertvalue { i64, ptr } undef, i64 %t623, 0
  %t628 = insertvalue { i64, ptr } %t627, ptr %t626, 1
  %t630 = call { i64, ptr } @compiler_2fmir_2eshort(ptr %s16, ptr %s16, { i64, ptr } %t628)
  store { i64, ptr } %t630, ptr %l241
  br label %bb79
bb79:
  %t631 = load { i64, ptr }, ptr %l25, !tbaa !27
  %t632 = load { i64, ptr }, ptr %l26, !tbaa !27
  %t633 = load { i64, ptr }, ptr %l27, !tbaa !27
  %t634 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d45, i32 0, i32 1) }, 1
  %t635 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d45, i32 0, i32 1) }, 0
  %t636 = load i64, ptr %l236, !tbaa !24
  %t637 = call i64 @__olang_fmt_i64(ptr null, i64 %t636)
  %t638 = add i64 %t635, %t637
  %t639 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d46, i32 0, i32 1) }, 1
  %t640 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d46, i32 0, i32 1) }, 0
  %t641 = add i64 %t638, %t640
  %t642 = load { i64, ptr }, ptr %l241, !tbaa !27
  %t643 = extractvalue { i64, ptr } %t642, 1
  %t644 = extractvalue { i64, ptr } %t642, 0
  %t645 = add i64 %t641, %t644
  %t647 = extractvalue { i64, ptr } %t631, 1
  %t648 = extractvalue { i64, ptr } %t631, 0
  %t649 = add i64 %t645, %t648
  %t651 = extractvalue { i64, ptr } %t632, 1
  %t652 = extractvalue { i64, ptr } %t632, 0
  %t653 = add i64 %t649, %t652
  %t655 = extractvalue { i64, ptr } %t633, 1
  %t656 = extractvalue { i64, ptr } %t633, 0
  %t657 = add i64 %t653, %t656
  %t658 = call ptr @__olang_scope_alloc(ptr %s16, i64 %t657)
  call void @olang_textcopy(ptr %t658, ptr %t634, i64 %t635)
  %t659 = getelementptr i8, ptr %t658, i64 %t635
  %t660 = call i64 @__olang_fmt_i64(ptr %t659, i64 %t636)
  %t661 = getelementptr i8, ptr %t659, i64 %t637
  call void @olang_textcopy(ptr %t661, ptr %t639, i64 %t640)
  %t662 = getelementptr i8, ptr %t661, i64 %t640
  call void @olang_textcopy(ptr %t662, ptr %t643, i64 %t644)
  %t663 = getelementptr i8, ptr %t662, i64 %t644
  call void @olang_textcopy(ptr %t663, ptr %t647, i64 %t648)
  %t664 = getelementptr i8, ptr %t663, i64 %t648
  call void @olang_textcopy(ptr %t664, ptr %t651, i64 %t652)
  %t665 = getelementptr i8, ptr %t664, i64 %t652
  call void @olang_textcopy(ptr %t665, ptr %t655, i64 %t656)
  %t666 = insertvalue { i64, ptr } undef, i64 %t657, 0
  %t667 = insertvalue { i64, ptr } %t666, ptr %t658, 1
  %t669 = extractvalue { i64, ptr } %t667, 0
  %t670 = extractvalue { i64, ptr } %t667, 1
  %t671 = mul i64 %t669, 1
  %t672 = call ptr @__olang_scope_alloc(ptr %s16, i64 %t671)
  call void @llvm.memcpy.p0.p0.i64(ptr %t672, ptr %t670, i64 %t671, i1 false)
  %t673 = insertvalue { i64, ptr } undef, i64 %t669, 0
  %t674 = insertvalue { i64, ptr } %t673, ptr %t672, 1
  %t675 = load ptr, ptr %l235, !tbaa !29
  call void @compiler_2fmir_2ecompiler_2fmir_3adumper_2eline(ptr %v0, ptr %s16, ptr %t675, i64 1, { i64, ptr } %t674)
  br label %bb80
bb80:
  call void @__olang_scope_close(ptr %s16)
  br label %bb81
bb81:
  %t677 = load i64, ptr %l22, !tbaa !24
  %t679 = add i64 %t677, 1
  store i64 %t679, ptr %l22, !tbaa !24
  br label %bb63
bb82:
  store i64 0, ptr %l28, !tbaa !24
  %t681 = load ptr, ptr %l1, !tbaa !29
  %t683 = getelementptr %"compiler/mir:Fn", ptr %t681, i32 0, i32 9
  store ptr %t683, ptr %l250, !tbaa !29
  %t684 = load ptr, ptr %l250, !tbaa !29
  %t685 = call ptr @__olang_scope_or(ptr %v2, ptr %t684)
  %t686 = ptrtoint ptr %t685 to i64
  %t688 = inttoptr i64 %t686 to ptr
  %t689 = load ptr, ptr %l250, !tbaa !29
  %t690 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aBasicBlock_3e_2eLen_3ccompiler_2fmir_3aBasicBlock_3e(ptr %t688, ptr %t689)
  store i64 %t690, ptr %l252
  br label %bb83
bb83:
  %t691 = load i64, ptr %l252, !tbaa !24
  store i64 %t691, ptr %l29, !tbaa !24
  store i64 1, ptr %l30, !tbaa !24
  %t692 = load i64, ptr %l29, !tbaa !24
  %t693 = load i64, ptr %l28, !tbaa !24
  %t696 = icmp sgt i64 %t692, %t693
  br i1 %t696, label %bb84, label %bb85
bb84:
  %t698 = load i64, ptr %l30, !tbaa !24
  %t700 = icmp sgt i64 %t698, 0
  br i1 %t700, label %bb86, label %bb87
bb85:
  store i64 0, ptr %l256, !tbaa !24
  br label %bb89
bb86:
  %t702 = load i64, ptr %l29, !tbaa !24
  %t703 = load i64, ptr %l28, !tbaa !24
  %t706 = sub i64 %t702, %t703
  %t707 = load i64, ptr %l30, !tbaa !24
  %t710 = add i64 %t706, %t707
  %t712 = sub i64 %t710, 1
  %t713 = load i64, ptr %l30, !tbaa !24
  %t716 = sdiv i64 %t712, %t713
  store i64 %t716, ptr %l259, !tbaa !24
  br label %bb88
bb87:
  store i64 0, ptr %l259, !tbaa !24
  br label %bb88
bb88:
  %t718 = load i64, ptr %l259, !tbaa !24
  store i64 %t718, ptr %l256, !tbaa !24
  br label %bb89
bb89:
  %t719 = load i64, ptr %l256, !tbaa !24
  store i64 %t719, ptr %l31, !tbaa !24
  store i64 0, ptr %l32, !tbaa !24
  br label %bb90
bb90:
  store %olang.scope zeroinitializer, ptr %s24
  %t720 = load i64, ptr %l32, !tbaa !24
  %t721 = load i64, ptr %l31, !tbaa !24
  %t724 = icmp slt i64 %t720, %t721
  %t726 = xor i1 %t724, true
  br i1 %t726, label %bb91, label %bb92
bb91:
  call void @__olang_scope_close(ptr %s24)
  br label %bb109
bb92:
  br label %bb93
bb93:
  %t728 = load i64, ptr %l28, !tbaa !24
  %t729 = load i64, ptr %l32, !tbaa !24
  %t730 = load i64, ptr %l30, !tbaa !24
  %t733 = mul i64 %t729, %t730
  %t736 = add i64 %t728, %t733
  store i64 %t736, ptr %l33, !tbaa !24
  %t738 = load ptr, ptr %l0, !tbaa !29
  %t739 = load i64, ptr %l33, !tbaa !24
  %t740 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d47, i32 0, i32 1) }, 1
  %t741 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d47, i32 0, i32 1) }, 0
  %t743 = call i64 @__olang_fmt_i64(ptr null, i64 %t739)
  %t744 = add i64 %t741, %t743
  %t745 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d48, i32 0, i32 1) }, 1
  %t746 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d48, i32 0, i32 1) }, 0
  %t747 = add i64 %t744, %t746
  %t748 = call ptr @__olang_scope_alloc(ptr %s24, i64 %t747)
  call void @olang_textcopy(ptr %t748, ptr %t740, i64 %t741)
  %t749 = getelementptr i8, ptr %t748, i64 %t741
  %t750 = call i64 @__olang_fmt_i64(ptr %t749, i64 %t739)
  %t751 = getelementptr i8, ptr %t749, i64 %t743
  call void @olang_textcopy(ptr %t751, ptr %t745, i64 %t746)
  %t752 = insertvalue { i64, ptr } undef, i64 %t747, 0
  %t753 = insertvalue { i64, ptr } %t752, ptr %t748, 1
  %t755 = extractvalue { i64, ptr } %t753, 0
  %t756 = extractvalue { i64, ptr } %t753, 1
  %t757 = mul i64 %t755, 1
  %t758 = call ptr @__olang_scope_alloc(ptr %s24, i64 %t757)
  call void @llvm.memcpy.p0.p0.i64(ptr %t758, ptr %t756, i64 %t757, i1 false)
  %t759 = insertvalue { i64, ptr } undef, i64 %t755, 0
  %t760 = insertvalue { i64, ptr } %t759, ptr %t758, 1
  call void @compiler_2fmir_2ecompiler_2fmir_3adumper_2eline(ptr %v0, ptr %s24, ptr %t738, i64 0, { i64, ptr } %t760)
  br label %bb94
bb94:
  %t763 = load ptr, ptr %l1, !tbaa !29
  %t765 = getelementptr %"compiler/mir:Fn", ptr %t763, i32 0, i32 9
  store ptr %t765, ptr %l282, !tbaa !29
  %t766 = load i64, ptr %l33, !tbaa !24
  %t767 = load ptr, ptr %l282, !tbaa !29
  %t768 = call ptr @__olang_scope_or(ptr %v2, ptr %t767)
  %t769 = ptrtoint ptr %t768 to i64
  %t771 = inttoptr i64 %t769 to ptr
  %t772 = load ptr, ptr %l282, !tbaa !29
  %t774 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aBasicBlock_3e_2eRef_3ccompiler_2fmir_3aBasicBlock_3e(ptr %t771, ptr %s24, ptr %t772, i64 %t766)
  store ptr %t774, ptr %l285
  br label %bb95
bb95:
  %t775 = load ptr, ptr %l285, !tbaa !29
  store ptr %t775, ptr %l34, !tbaa !29
  %t776 = load ptr, ptr %l34, !tbaa !29
  %t778 = getelementptr %"compiler/mir:BasicBlock", ptr %t776, i32 0, i32 0
  store ptr %t778, ptr %l35, !tbaa !29
  store i64 0, ptr %l36, !tbaa !24
  br label %bb96
bb96:
  store %olang.scope zeroinitializer, ptr %s27
  %t780 = load i64, ptr %l36, !tbaa !24
  store i64 %t780, ptr %l288, !tbaa !24
  %t781 = load ptr, ptr %l35, !tbaa !29
  %t783 = call i64 @compiler_2fmir_2ecompiler_2fmir_3aStmtList_2eLen(ptr %s24, ptr %t781)
  store i64 %t783, ptr %l290
  br label %bb97
bb97:
  %t784 = load i64, ptr %l288, !tbaa !24
  %t785 = load i64, ptr %l290, !tbaa !24
  %t786 = icmp slt i64 %t784, %t785
  %t788 = xor i1 %t786, true
  br i1 %t788, label %bb98, label %bb99
bb98:
  call void @__olang_scope_close(ptr %s27)
  br label %bb105
bb99:
  br label %bb100
bb100:
  %t790 = load ptr, ptr %l35, !tbaa !29
  %t791 = load i64, ptr %l36, !tbaa !24
  %t794 = call { i64, [21 x i64] } @compiler_2fmir_2ecompiler_2fmir_3aStmtList_2eAt(ptr %s24, ptr %t790, i64 %t791)
  store { i64, [21 x i64] } %t794, ptr %l295
  br label %bb101
bb101:
  call void @llvm.memmove.p0.p0.i64(ptr %l37, ptr %l295, i64 176, i1 false)
  %t795 = load ptr, ptr %l0, !tbaa !29
  store ptr %t795, ptr %l296, !tbaa !29
  %t796 = load ptr, ptr %l0, !tbaa !29
  %t799 = call { i64, ptr } @compiler_2fmir_2ecompiler_2fmir_3adumper_2estmt(ptr %v0, ptr %s27, ptr %s27, ptr %v2, ptr %v1, ptr %t796, ptr %l37)
  store { i64, ptr } %t799, ptr %l299
  br label %bb102
bb102:
  %t800 = load { i64, ptr }, ptr %l299, !tbaa !27
  %t801 = extractvalue { i64, ptr } %t800, 0
  %t802 = extractvalue { i64, ptr } %t800, 1
  %t803 = mul i64 %t801, 1
  %t804 = call ptr @__olang_scope_alloc(ptr %s27, i64 %t803)
  call void @llvm.memcpy.p0.p0.i64(ptr %t804, ptr %t802, i64 %t803, i1 false)
  %t805 = insertvalue { i64, ptr } undef, i64 %t801, 0
  %t806 = insertvalue { i64, ptr } %t805, ptr %t804, 1
  %t807 = load ptr, ptr %l296, !tbaa !29
  call void @compiler_2fmir_2ecompiler_2fmir_3adumper_2eline(ptr %v0, ptr %s27, ptr %t807, i64 1, { i64, ptr } %t806)
  br label %bb103
bb103:
  call void @__olang_scope_close(ptr %s27)
  br label %bb104
bb104:
  %t809 = load i64, ptr %l36, !tbaa !24
  %t811 = add i64 %t809, 1
  store i64 %t811, ptr %l36, !tbaa !24
  br label %bb96
bb105:
  %t813 = load ptr, ptr %l0, !tbaa !29
  store ptr %t813, ptr %l303, !tbaa !29
  %t814 = load ptr, ptr %l0, !tbaa !29
  %t815 = load ptr, ptr %l34, !tbaa !29
  %t817 = getelementptr %"compiler/mir:BasicBlock", ptr %t815, i32 0, i32 1
  %t818 = load { i64, [8 x i64] }, ptr %t817
  %t821 = call { i64, ptr } @compiler_2fmir_2ecompiler_2fmir_3adumper_2eterm(ptr %v0, ptr %s24, ptr %v2, ptr %v1, ptr %t814, { i64, [8 x i64] } %t818)
  store { i64, ptr } %t821, ptr %l307
  br label %bb106
bb106:
  %t822 = load { i64, ptr }, ptr %l307, !tbaa !27
  %t823 = extractvalue { i64, ptr } %t822, 0
  %t824 = extractvalue { i64, ptr } %t822, 1
  %t825 = mul i64 %t823, 1
  %t826 = call ptr @__olang_scope_alloc(ptr %s24, i64 %t825)
  call void @llvm.memcpy.p0.p0.i64(ptr %t826, ptr %t824, i64 %t825, i1 false)
  %t827 = insertvalue { i64, ptr } undef, i64 %t823, 0
  %t828 = insertvalue { i64, ptr } %t827, ptr %t826, 1
  %t829 = load ptr, ptr %l303, !tbaa !29
  call void @compiler_2fmir_2ecompiler_2fmir_3adumper_2eline(ptr %v0, ptr %s24, ptr %t829, i64 1, { i64, ptr } %t828)
  br label %bb107
bb107:
  call void @__olang_scope_close(ptr %s24)
  br label %bb108
bb108:
  %t831 = load i64, ptr %l32, !tbaa !24
  %t833 = add i64 %t831, 1
  store i64 %t833, ptr %l32, !tbaa !24
  br label %bb90
bb109:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local { i64, ptr } @compiler_2fmir_2ecompiler_2fmir_3adumper_2econstItems(ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"compiler/mir:Range" %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/mir:Range"
  %l2 = alloca %"std/prelude/text:StringBuilder"
  %l3 = alloca i32
  %l4 = alloca i32
  %l5 = alloca i32
  %l6 = alloca i32
  %l7 = alloca i32
  %l8 = alloca i32
  %l9 = alloca %"std/prelude/text:StringBuilder"
  %l15 = alloca i32
  %l18 = alloca i32
  %l36 = alloca ptr
  %l39 = alloca { i64, ptr }
  %l40 = alloca ptr
  %l43 = alloca ptr
  %l50 = alloca i32
  %l51 = alloca { i64, ptr }
  %l58 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %s2 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  store %"compiler/mir:Range" %a1, ptr %l1
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
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePushChar(ptr %s0, ptr %l2, i8 91)
  br label %bb2
bb2:
  store i32 0, ptr %l3, !tbaa !23
  %t4 = getelementptr %"compiler/mir:Range", ptr %l1, i32 0, i32 1
  %t5 = load i32, ptr %t4, !tbaa !23
  store i32 %t5, ptr %l4, !tbaa !23
  store i32 1, ptr %l5, !tbaa !23
  %t7 = load i32, ptr %l4, !tbaa !23
  %t8 = load i32, ptr %l3, !tbaa !23
  %t11 = icmp sgt i32 %t7, %t8
  br i1 %t11, label %bb3, label %bb4
bb3:
  %t13 = load i32, ptr %l5, !tbaa !23
  %t15 = icmp sgt i32 %t13, 0
  br i1 %t15, label %bb5, label %bb6
bb4:
  store i32 0, ptr %l15, !tbaa !23
  br label %bb8
bb5:
  %t17 = load i32, ptr %l4, !tbaa !23
  %t18 = load i32, ptr %l3, !tbaa !23
  %t21 = sub i32 %t17, %t18
  %t22 = load i32, ptr %l5, !tbaa !23
  %t25 = add i32 %t21, %t22
  %t27 = sub i32 %t25, 1
  %t28 = load i32, ptr %l5, !tbaa !23
  %t31 = sdiv i32 %t27, %t28
  store i32 %t31, ptr %l18, !tbaa !23
  br label %bb7
bb6:
  store i32 0, ptr %l18, !tbaa !23
  br label %bb7
bb7:
  %t33 = load i32, ptr %l18, !tbaa !23
  store i32 %t33, ptr %l15, !tbaa !23
  br label %bb8
bb8:
  %t34 = load i32, ptr %l15, !tbaa !23
  store i32 %t34, ptr %l6, !tbaa !23
  store i32 0, ptr %l7, !tbaa !23
  br label %bb9
bb9:
  store %olang.scope zeroinitializer, ptr %s2
  %t35 = load i32, ptr %l7, !tbaa !23
  %t36 = load i32, ptr %l6, !tbaa !23
  %t39 = icmp slt i32 %t35, %t36
  %t41 = xor i1 %t39, true
  br i1 %t41, label %bb10, label %bb11
bb10:
  call void @__olang_scope_close(ptr %s2)
  br label %bb20
bb11:
  br label %bb12
bb12:
  %t43 = load i32, ptr %l3, !tbaa !23
  %t44 = load i32, ptr %l7, !tbaa !23
  %t45 = load i32, ptr %l5, !tbaa !23
  %t48 = mul i32 %t44, %t45
  %t51 = add i32 %t43, %t48
  store i32 %t51, ptr %l8, !tbaa !23
  store ptr %l2, ptr %l36, !tbaa !29
  %t53 = load i32, ptr %l8, !tbaa !23
  %t55 = icmp sgt i32 %t53, 0
  br i1 %t55, label %bb13, label %bb14
bb13:
  store { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d49, i32 0, i32 1) }, ptr %l39, !tbaa !27
  br label %bb15
bb14:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d50, i32 0, i32 1) }, ptr %l39, !tbaa !27
  br label %bb15
bb15:
  %t57 = load ptr, ptr %l0, !tbaa !29
  store ptr %t57, ptr %l40, !tbaa !29
  %t58 = load ptr, ptr %l0, !tbaa !29
  %t60 = getelementptr %"compiler/mir:dumper", ptr %t58, i32 0, i32 0
  %t61 = load ptr, ptr %t60, !tbaa !29
  %t63 = getelementptr %"compiler/mir:Fn", ptr %t61, i32 0, i32 20
  store ptr %t63, ptr %l43, !tbaa !29
  %t64 = getelementptr %"compiler/mir:Range", ptr %l1, i32 0, i32 0
  %t65 = load i32, ptr %t64, !tbaa !23
  %t67 = sext i32 %t65 to i64
  %t68 = load i32, ptr %l8, !tbaa !23
  %t70 = sext i32 %t68 to i64
  %t73 = add i64 %t67, %t70
  %t74 = load ptr, ptr %l43, !tbaa !29
  %t75 = call ptr @__olang_scope_or(ptr %v2, ptr %t74)
  %t76 = ptrtoint ptr %t75 to i64
  %t78 = inttoptr i64 %t76 to ptr
  %t79 = load ptr, ptr %l43, !tbaa !29
  %t81 = call i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI32_3e_2eAt_3cI32_3e(ptr %t78, ptr %t79, i64 %t73)
  store i32 %t81, ptr %l50
  br label %bb16
bb16:
  %t82 = load ptr, ptr %l40, !tbaa !29
  %t83 = load i32, ptr %l50, !tbaa !23
  %t84 = call { i64, ptr } @compiler_2fmir_2ecompiler_2fmir_3adumper_2econstant(ptr %v0, ptr %s2, ptr %v2, ptr %t82, i32 %t83)
  store { i64, ptr } %t84, ptr %l51
  br label %bb17
bb17:
  %t85 = load { i64, ptr }, ptr %l39, !tbaa !27
  %t86 = extractvalue { i64, ptr } %t85, 1
  %t87 = extractvalue { i64, ptr } %t85, 0
  %t88 = load { i64, ptr }, ptr %l51, !tbaa !27
  %t89 = extractvalue { i64, ptr } %t88, 1
  %t90 = extractvalue { i64, ptr } %t88, 0
  %t91 = add i64 %t87, %t90
  %t92 = call ptr @__olang_scope_alloc(ptr %s2, i64 %t91)
  call void @olang_textcopy(ptr %t92, ptr %t86, i64 %t87)
  %t93 = getelementptr i8, ptr %t92, i64 %t87
  call void @olang_textcopy(ptr %t93, ptr %t89, i64 %t90)
  %t94 = insertvalue { i64, ptr } undef, i64 %t91, 0
  %t95 = insertvalue { i64, ptr } %t94, ptr %t92, 1
  %t97 = extractvalue { i64, ptr } %t95, 0
  %t98 = extractvalue { i64, ptr } %t95, 1
  %t99 = mul i64 %t97, 1
  %t100 = call ptr @__olang_scope_alloc(ptr %s2, i64 %t99)
  call void @llvm.memcpy.p0.p0.i64(ptr %t100, ptr %t98, i64 %t99, i1 false)
  %t101 = insertvalue { i64, ptr } undef, i64 %t97, 0
  %t102 = insertvalue { i64, ptr } %t101, ptr %t100, 1
  %t103 = load ptr, ptr %l36, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s2, ptr %t103, { i64, ptr } %t102)
  br label %bb18
bb18:
  call void @__olang_scope_close(ptr %s2)
  br label %bb19
bb19:
  %t105 = load i32, ptr %l7, !tbaa !23
  %t107 = add i32 %t105, 1
  store i32 %t107, ptr %l7, !tbaa !23
  br label %bb9
bb20:
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePushChar(ptr %s0, ptr %l2, i8 93)
  br label %bb21
bb21:
  %t111 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %s0, ptr %v1, ptr %l2)
  store { i64, ptr } %t111, ptr %l58
  br label %bb22
bb22:
  call void @__olang_scope_close(ptr %s0)
  %t112 = load { i64, ptr }, ptr %l58, !tbaa !27
  store { i64, ptr } %t112, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local { i64, ptr } @compiler_2fmir_2ecompiler_2fmir_3adumper_2ekey(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, [2 x i64] } %a1) #0 {
entry:
  %l1 = alloca { i64, [2 x i64] }
  %l2 = alloca i32
  %l3 = alloca i32
  %l4 = alloca i32
  %l5 = alloca i32
  %l6 = alloca i64
  %l7 = alloca i32
  %l8 = alloca i32
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca i1
  %l12 = alloca { i64, ptr }
  %l39 = alloca i32
  %l41 = alloca { i64, ptr }
  %l43 = alloca { i64, ptr }
  %l45 = alloca ptr
  %l49 = alloca { i64, ptr }
  %l60 = alloca i64
  %l62 = alloca { i64, ptr }
  %s9 = alloca %olang.scope
  %s10 = alloca %olang.builder
  %s10room = alloca [64 x i8], align 8
  %rv = alloca { i64, ptr }
  store { i64, [2 x i64] } %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load { i64, [2 x i64] }, ptr %l1
  %t3 = extractvalue { i64, [2 x i64] } %t1, 0
  %t4 = icmp eq i64 %t3, 0
  br i1 %t4, label %bb1, label %bb2
bb1:
  %t6 = getelementptr { i64, [2 x i64] }, ptr %l1, i32 0, i32 1
  %t7 = getelementptr { i32 }, ptr %t6, i32 0, i32 0
  %t8 = load i32, ptr %t7
  store i32 %t8, ptr %l2, !tbaa !23
  br label %bb3
bb2:
  br label %bb4
bb3:
  %t10 = load i32, ptr %l2, !tbaa !23
  %t11 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d51, i32 0, i32 1) }, 1
  %t12 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d51, i32 0, i32 1) }, 0
  %t14 = sext i32 %t10 to i64
  %t15 = call i64 @__olang_fmt_i64(ptr null, i64 %t14)
  %t16 = add i64 %t12, %t15
  %t17 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t16)
  call void @olang_textcopy(ptr %t17, ptr %t11, i64 %t12)
  %t18 = getelementptr i8, ptr %t17, i64 %t12
  %t19 = call i64 @__olang_fmt_i64(ptr %t18, i64 %t14)
  %t20 = insertvalue { i64, ptr } undef, i64 %t16, 0
  %t21 = insertvalue { i64, ptr } %t20, ptr %t17, 1
  store { i64, ptr } %t21, ptr %l12, !tbaa !27
  br label %bb35
bb4:
  %t23 = load { i64, [2 x i64] }, ptr %l1
  %t25 = extractvalue { i64, [2 x i64] } %t23, 0
  %t26 = icmp eq i64 %t25, 1
  br i1 %t26, label %bb5, label %bb6
bb5:
  %t28 = getelementptr { i64, [2 x i64] }, ptr %l1, i32 0, i32 1
  %t29 = getelementptr { i32 }, ptr %t28, i32 0, i32 0
  %t30 = load i32, ptr %t29
  store i32 %t30, ptr %l3, !tbaa !23
  br label %bb7
bb6:
  br label %bb8
bb7:
  %t32 = load i32, ptr %l3, !tbaa !23
  %t33 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d52, i32 0, i32 1) }, 1
  %t34 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d52, i32 0, i32 1) }, 0
  %t36 = sext i32 %t32 to i64
  %t37 = call i64 @__olang_fmt_i64(ptr null, i64 %t36)
  %t38 = add i64 %t34, %t37
  %t39 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t38)
  call void @olang_textcopy(ptr %t39, ptr %t33, i64 %t34)
  %t40 = getelementptr i8, ptr %t39, i64 %t34
  %t41 = call i64 @__olang_fmt_i64(ptr %t40, i64 %t36)
  %t42 = insertvalue { i64, ptr } undef, i64 %t38, 0
  %t43 = insertvalue { i64, ptr } %t42, ptr %t39, 1
  store { i64, ptr } %t43, ptr %l12, !tbaa !27
  br label %bb35
bb8:
  %t45 = load { i64, [2 x i64] }, ptr %l1
  %t47 = extractvalue { i64, [2 x i64] } %t45, 0
  %t48 = icmp eq i64 %t47, 2
  br i1 %t48, label %bb9, label %bb10
bb9:
  %t50 = getelementptr { i64, [2 x i64] }, ptr %l1, i32 0, i32 1
  %t51 = getelementptr { i32 }, ptr %t50, i32 0, i32 0
  %t52 = load i32, ptr %t51
  store i32 %t52, ptr %l4, !tbaa !23
  br label %bb11
bb10:
  br label %bb12
bb11:
  %t54 = load i32, ptr %l4, !tbaa !23
  %t55 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d53, i32 0, i32 1) }, 1
  %t56 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d53, i32 0, i32 1) }, 0
  %t58 = sext i32 %t54 to i64
  %t59 = call i64 @__olang_fmt_i64(ptr null, i64 %t58)
  %t60 = add i64 %t56, %t59
  %t61 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t60)
  call void @olang_textcopy(ptr %t61, ptr %t55, i64 %t56)
  %t62 = getelementptr i8, ptr %t61, i64 %t56
  %t63 = call i64 @__olang_fmt_i64(ptr %t62, i64 %t58)
  %t64 = insertvalue { i64, ptr } undef, i64 %t60, 0
  %t65 = insertvalue { i64, ptr } %t64, ptr %t61, 1
  store { i64, ptr } %t65, ptr %l12, !tbaa !27
  br label %bb35
bb12:
  %t67 = load { i64, [2 x i64] }, ptr %l1
  %t69 = extractvalue { i64, [2 x i64] } %t67, 0
  %t70 = icmp eq i64 %t69, 6
  br i1 %t70, label %bb13, label %bb14
bb13:
  %t72 = getelementptr { i64, [2 x i64] }, ptr %l1, i32 0, i32 1
  %t73 = getelementptr { i32, i64 }, ptr %t72, i32 0, i32 0
  %t74 = load i32, ptr %t73
  store i32 %t74, ptr %l5, !tbaa !23
  %t76 = getelementptr { i64, [2 x i64] }, ptr %l1, i32 0, i32 1
  %t77 = getelementptr { i32, i64 }, ptr %t76, i32 0, i32 1
  %t78 = load i64, ptr %t77
  store i64 %t78, ptr %l6, !tbaa !24
  br label %bb15
bb14:
  br label %bb16
bb15:
  %t80 = load i32, ptr %l5, !tbaa !23
  %t81 = load i64, ptr %l6, !tbaa !24
  %t82 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d54, i32 0, i32 1) }, 1
  %t83 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d54, i32 0, i32 1) }, 0
  %t85 = sext i32 %t80 to i64
  %t86 = call i64 @__olang_fmt_i64(ptr null, i64 %t85)
  %t87 = add i64 %t83, %t86
  %t88 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d55, i32 0, i32 1) }, 1
  %t89 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d55, i32 0, i32 1) }, 0
  %t90 = add i64 %t87, %t89
  %t92 = call i64 @__olang_fmt_i64(ptr null, i64 %t81)
  %t93 = add i64 %t90, %t92
  %t94 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t93)
  call void @olang_textcopy(ptr %t94, ptr %t82, i64 %t83)
  %t95 = getelementptr i8, ptr %t94, i64 %t83
  %t96 = call i64 @__olang_fmt_i64(ptr %t95, i64 %t85)
  %t97 = getelementptr i8, ptr %t95, i64 %t86
  call void @olang_textcopy(ptr %t97, ptr %t88, i64 %t89)
  %t98 = getelementptr i8, ptr %t97, i64 %t89
  %t99 = call i64 @__olang_fmt_i64(ptr %t98, i64 %t81)
  %t100 = insertvalue { i64, ptr } undef, i64 %t93, 0
  %t101 = insertvalue { i64, ptr } %t100, ptr %t94, 1
  store { i64, ptr } %t101, ptr %l12, !tbaa !27
  br label %bb35
bb16:
  %t103 = load { i64, [2 x i64] }, ptr %l1
  %t105 = extractvalue { i64, [2 x i64] } %t103, 0
  %t106 = icmp eq i64 %t105, 3
  br i1 %t106, label %bb17, label %bb18
bb17:
  %t108 = getelementptr { i64, [2 x i64] }, ptr %l1, i32 0, i32 1
  %t109 = getelementptr { i32, i32 }, ptr %t108, i32 0, i32 0
  %t110 = load i32, ptr %t109, !range !{i32 0, i32 8}
  store i32 %t110, ptr %l7
  %t112 = getelementptr { i64, [2 x i64] }, ptr %l1, i32 0, i32 1
  %t113 = getelementptr { i32, i32 }, ptr %t112, i32 0, i32 1
  %t114 = load i32, ptr %t113
  store i32 %t114, ptr %l8, !tbaa !23
  br label %bb19
bb18:
  br label %bb23
bb19:
  store %olang.scope zeroinitializer, ptr %s9
  %t116 = load i32, ptr %l7, !range !{i32 0, i32 8}
  store i32 %t116, ptr %l39
  store %olang.builder { ptr null, i64 0, i64 64, ptr null, ptr null }, ptr %s10
  store ptr %s10room, ptr %s10
  call void @olang_2emir_2eHelperKind_2eRender_2ecompiler_2fmir_3aHelperKind(ptr %s10, ptr %l39, i64 0)
  br label %bb20
bb20:
  %t118 = load ptr, ptr %s10
  %t119 = getelementptr %olang.builder, ptr %s10, i32 0, i32 1
  %t120 = load i64, ptr %t119
  %t121 = call ptr @__olang_scope_alloc(ptr %s9, i64 %t120)
  call void @olang_textcopy(ptr %t121, ptr %t118, i64 %t120)
  %t122 = insertvalue { i64, ptr } undef, i64 %t120, 0
  %t123 = insertvalue { i64, ptr } %t122, ptr %t121, 1
  store { i64, ptr } %t123, ptr %l41, !tbaa !27
  %t124 = getelementptr %olang.builder, ptr %s10, i32 0, i32 3
  %t125 = load ptr, ptr %t124
  %t126 = icmp ne ptr %t125, null
  br i1 %t126, label %sbgrew.127, label %sbdone.128
sbgrew.127:
  call void @__olang_sb_done(ptr %s10)
  br label %sbdone.128
sbdone.128:
  %t129 = load { i64, ptr }, ptr %l41, !tbaa !27
  %t130 = extractvalue { i64, ptr } %t129, 0
  %t131 = extractvalue { i64, ptr } %t129, 1
  %t132 = mul i64 %t130, 1
  %t133 = call ptr @__olang_scope_alloc(ptr %s9, i64 %t132)
  call void @llvm.memcpy.p0.p0.i64(ptr %t133, ptr %t131, i64 %t132, i1 false)
  %t134 = insertvalue { i64, ptr } undef, i64 %t130, 0
  %t135 = insertvalue { i64, ptr } %t134, ptr %t133, 1
  %t137 = call { i64, ptr } @compiler_2fmir_2eshort(ptr %s9, ptr %s9, { i64, ptr } %t135)
  store { i64, ptr } %t137, ptr %l43
  br label %bb21
bb21:
  %t140 = getelementptr %"compiler/mir:dumper", ptr %a0, i32 0, i32 1
  %t141 = load ptr, ptr %t140, !tbaa !29
  store ptr %t141, ptr %l45, !tbaa !29
  %t142 = load i32, ptr %l8, !tbaa !23
  %t143 = load ptr, ptr %l45, !tbaa !29
  %t144 = call ptr @__olang_scope_or(ptr %v2, ptr %t143)
  %t145 = ptrtoint ptr %t144 to i64
  %t147 = inttoptr i64 %t145 to ptr
  %t149 = inttoptr i64 0 to ptr
  %t150 = load ptr, ptr %l45, !tbaa !29
  %t152 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eCanon(ptr %t147, ptr %s9, ptr %t149, ptr %t150, i32 %t142)
  store { i64, ptr } %t152, ptr %l49
  br label %bb22
bb22:
  %t153 = load { i64, ptr }, ptr %l43, !tbaa !27
  %t154 = extractvalue { i64, ptr } %t153, 1
  %t155 = extractvalue { i64, ptr } %t153, 0
  %t156 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d56, i32 0, i32 1) }, 1
  %t157 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d56, i32 0, i32 1) }, 0
  %t158 = add i64 %t155, %t157
  %t159 = load { i64, ptr }, ptr %l49, !tbaa !27
  %t160 = extractvalue { i64, ptr } %t159, 1
  %t161 = extractvalue { i64, ptr } %t159, 0
  %t162 = add i64 %t158, %t161
  %t163 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t162)
  call void @olang_textcopy(ptr %t163, ptr %t154, i64 %t155)
  %t164 = getelementptr i8, ptr %t163, i64 %t155
  call void @olang_textcopy(ptr %t164, ptr %t156, i64 %t157)
  %t165 = getelementptr i8, ptr %t164, i64 %t157
  call void @olang_textcopy(ptr %t165, ptr %t160, i64 %t161)
  %t166 = insertvalue { i64, ptr } undef, i64 %t162, 0
  %t167 = insertvalue { i64, ptr } %t166, ptr %t163, 1
  store { i64, ptr } %t167, ptr %l12, !tbaa !27
  call void @__olang_scope_close(ptr %s9)
  br label %bb35
bb23:
  %t169 = load { i64, [2 x i64] }, ptr %l1
  %t171 = extractvalue { i64, [2 x i64] } %t169, 0
  %t172 = icmp eq i64 %t171, 4
  br i1 %t172, label %bb24, label %bb25
bb24:
  %t174 = getelementptr { i64, [2 x i64] }, ptr %l1, i32 0, i32 1
  %t175 = getelementptr { i64 }, ptr %t174, i32 0, i32 0
  %t176 = load i64, ptr %t175
  store i64 %t176, ptr %l9, !tbaa !24
  br label %bb26
bb25:
  br label %bb27
bb26:
  %t178 = load i64, ptr %l9, !tbaa !24
  %t179 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d57, i32 0, i32 1) }, 1
  %t180 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d57, i32 0, i32 1) }, 0
  %t182 = call i64 @__olang_fmt_i64(ptr null, i64 %t178)
  %t183 = add i64 %t180, %t182
  %t184 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t183)
  call void @olang_textcopy(ptr %t184, ptr %t179, i64 %t180)
  %t185 = getelementptr i8, ptr %t184, i64 %t180
  %t186 = call i64 @__olang_fmt_i64(ptr %t185, i64 %t178)
  %t187 = insertvalue { i64, ptr } undef, i64 %t183, 0
  %t188 = insertvalue { i64, ptr } %t187, ptr %t184, 1
  store { i64, ptr } %t188, ptr %l12, !tbaa !27
  br label %bb35
bb27:
  %t190 = load { i64, [2 x i64] }, ptr %l1
  %t192 = extractvalue { i64, [2 x i64] } %t190, 0
  %t193 = icmp eq i64 %t192, 5
  br i1 %t193, label %bb28, label %bb29
bb28:
  %t195 = getelementptr { i64, [2 x i64] }, ptr %l1, i32 0, i32 1
  %t196 = getelementptr { i64, i1 }, ptr %t195, i32 0, i32 0
  %t197 = load i64, ptr %t196
  store i64 %t197, ptr %l10, !tbaa !24
  %t199 = getelementptr { i64, [2 x i64] }, ptr %l1, i32 0, i32 1
  %t200 = getelementptr { i64, i1 }, ptr %t199, i32 0, i32 1
  %t201 = load i1, ptr %t200
  store i1 %t201, ptr %l11, !tbaa !21
  br label %bb30
bb29:
  br label %bb34
bb30:
  %t203 = load i64, ptr %l10, !tbaa !24
  store i64 %t203, ptr %l60, !tbaa !24
  %t204 = load i1, ptr %l11, !tbaa !21
  br i1 %t204, label %bb31, label %bb32
bb31:
  store { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d58, i32 0, i32 1) }, ptr %l62, !tbaa !27
  br label %bb33
bb32:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d59, i32 0, i32 1) }, ptr %l62, !tbaa !27
  br label %bb33
bb33:
  %t206 = extractvalue { i64, ptr } { i64 17, ptr getelementptr inbounds (<{ i64, [17 x i8] }>, ptr @.d60, i32 0, i32 1) }, 1
  %t207 = extractvalue { i64, ptr } { i64 17, ptr getelementptr inbounds (<{ i64, [17 x i8] }>, ptr @.d60, i32 0, i32 1) }, 0
  %t208 = load i64, ptr %l60, !tbaa !24
  %t209 = call i64 @__olang_fmt_i64(ptr null, i64 %t208)
  %t210 = add i64 %t207, %t209
  %t211 = load { i64, ptr }, ptr %l62, !tbaa !27
  %t212 = extractvalue { i64, ptr } %t211, 1
  %t213 = extractvalue { i64, ptr } %t211, 0
  %t214 = add i64 %t210, %t213
  %t215 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t214)
  call void @olang_textcopy(ptr %t215, ptr %t206, i64 %t207)
  %t216 = getelementptr i8, ptr %t215, i64 %t207
  %t217 = call i64 @__olang_fmt_i64(ptr %t216, i64 %t208)
  %t218 = getelementptr i8, ptr %t216, i64 %t209
  call void @olang_textcopy(ptr %t218, ptr %t212, i64 %t213)
  %t219 = insertvalue { i64, ptr } undef, i64 %t214, 0
  %t220 = insertvalue { i64, ptr } %t219, ptr %t215, 1
  store { i64, ptr } %t220, ptr %l12, !tbaa !27
  br label %bb35
bb34:
  call void @__olang_check_failed(ptr @olang_loc_792180efaebdc40a_e488d776d0fba16e)
  unreachable
bb35:
  %t222 = load { i64, ptr }, ptr %l12, !tbaa !27
  store { i64, ptr } %t222, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local { i64, ptr } @compiler_2fmir_2ecompiler_2fmir_3adumper_2eplace(ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"compiler/mir:Lvalue" %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/mir:Lvalue"
  %l2 = alloca %"std/prelude/text:StringBuilder"
  %l3 = alloca { i64, [2 x i64] }
  %l4 = alloca i32
  %l5 = alloca i64
  %l6 = alloca i32
  %l7 = alloca i32
  %l8 = alloca i32
  %l9 = alloca i32
  %l10 = alloca i32
  %l11 = alloca i32
  %l13 = alloca { i64, [1 x i64] }
  %l14 = alloca i64
  %l15 = alloca i32
  %l16 = alloca i64
  %l17 = alloca i64
  %l18 = alloca %"std/prelude/text:StringBuilder"
  %l34 = alloca ptr
  %l35 = alloca i64
  %l38 = alloca ptr
  %l41 = alloca { i64, ptr }
  %l48 = alloca i32
  %l51 = alloca i32
  %l71 = alloca ptr
  %l78 = alloca { i64, [1 x i64] }
  %l113 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %s1 = alloca %olang.scope
  %s2 = alloca %olang.scope
  %s4 = alloca %olang.scope
  %s8 = alloca %olang.scope
  %s10 = alloca %olang.scope
  %s12 = alloca %olang.scope
  %s14 = alloca %olang.scope
  %s15 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  store %"compiler/mir:Lvalue" %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = call %"std/prelude/text:StringBuilder" @std_2fprelude_2ftext_3aStringBuilder_2ector(ptr %s0)
  store %"std/prelude/text:StringBuilder" %t1, ptr %l18
  br label %bb1
bb1:
  %t2 = load %"std/prelude/text:StringBuilder", ptr %l18
  store %"std/prelude/text:StringBuilder" %t2, ptr %l2
  %t3 = getelementptr %"compiler/mir:Lvalue", ptr %l1, i32 0, i32 0
  %t4 = load { i64, [2 x i64] }, ptr %t3
  store { i64, [2 x i64] } %t4, ptr %l3
  %t6 = load { i64, [2 x i64] }, ptr %l3
  %t8 = extractvalue { i64, [2 x i64] } %t6, 0
  %t9 = icmp eq i64 %t8, 0
  br i1 %t9, label %bb2, label %bb3
bb2:
  br label %bb4
bb3:
  br label %bb6
bb4:
  store %olang.scope zeroinitializer, ptr %s1
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s1, ptr %l2, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d61, i32 0, i32 1) })
  br label %bb5
bb5:
  call void @__olang_scope_close(ptr %s1)
  br label %bb18
bb6:
  %t12 = load { i64, [2 x i64] }, ptr %l3
  %t14 = extractvalue { i64, [2 x i64] } %t12, 0
  %t15 = icmp eq i64 %t14, 1
  br i1 %t15, label %bb7, label %bb8
bb7:
  %t17 = getelementptr { i64, [2 x i64] }, ptr %l3, i32 0, i32 1
  %t18 = getelementptr { i32 }, ptr %t17, i32 0, i32 0
  %t19 = load i32, ptr %t18
  store i32 %t19, ptr %l4, !tbaa !23
  br label %bb9
bb8:
  br label %bb11
bb9:
  store %olang.scope zeroinitializer, ptr %s2
  %t21 = load i32, ptr %l4, !tbaa !23
  %t22 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d62, i32 0, i32 1) }, 1
  %t23 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d62, i32 0, i32 1) }, 0
  %t25 = sext i32 %t21 to i64
  %t26 = call i64 @__olang_fmt_i64(ptr null, i64 %t25)
  %t27 = add i64 %t23, %t26
  %t28 = call ptr @__olang_scope_alloc(ptr %s2, i64 %t27)
  call void @olang_textcopy(ptr %t28, ptr %t22, i64 %t23)
  %t29 = getelementptr i8, ptr %t28, i64 %t23
  %t30 = call i64 @__olang_fmt_i64(ptr %t29, i64 %t25)
  %t31 = insertvalue { i64, ptr } undef, i64 %t27, 0
  %t32 = insertvalue { i64, ptr } %t31, ptr %t28, 1
  %t34 = extractvalue { i64, ptr } %t32, 0
  %t35 = extractvalue { i64, ptr } %t32, 1
  %t36 = mul i64 %t34, 1
  %t37 = call ptr @__olang_scope_alloc(ptr %s2, i64 %t36)
  call void @llvm.memcpy.p0.p0.i64(ptr %t37, ptr %t35, i64 %t36, i1 false)
  %t38 = insertvalue { i64, ptr } undef, i64 %t34, 0
  %t39 = insertvalue { i64, ptr } %t38, ptr %t37, 1
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s2, ptr %l2, { i64, ptr } %t39)
  br label %bb10
bb10:
  call void @__olang_scope_close(ptr %s2)
  br label %bb18
bb11:
  %t42 = load { i64, [2 x i64] }, ptr %l3
  %t44 = extractvalue { i64, [2 x i64] } %t42, 0
  %t45 = icmp eq i64 %t44, 2
  br i1 %t45, label %bb12, label %bb13
bb12:
  %t47 = getelementptr { i64, [2 x i64] }, ptr %l3, i32 0, i32 1
  %t48 = getelementptr { i64, i32, i32 }, ptr %t47, i32 0, i32 0
  %t49 = load i64, ptr %t48
  store i64 %t49, ptr %l5, !tbaa !24
  %t51 = getelementptr { i64, [2 x i64] }, ptr %l3, i32 0, i32 1
  %t52 = getelementptr { i64, i32, i32 }, ptr %t51, i32 0, i32 1
  %t53 = load i32, ptr %t52
  store i32 %t53, ptr %l6, !tbaa !23
  br label %bb14
bb13:
  br label %bb17
bb14:
  store %olang.scope zeroinitializer, ptr %s4
  store ptr %l2, ptr %l34, !tbaa !29
  %t55 = load i64, ptr %l5, !tbaa !24
  store i64 %t55, ptr %l35, !tbaa !24
  %t56 = load ptr, ptr %l0, !tbaa !29
  %t58 = getelementptr %"compiler/mir:dumper", ptr %t56, i32 0, i32 1
  %t59 = load ptr, ptr %t58, !tbaa !29
  %t61 = getelementptr %"compiler/types:Table", ptr %t59, i32 0, i32 0
  %t62 = load ptr, ptr %t61, !tbaa !29
  store ptr %t62, ptr %l38, !tbaa !29
  %t63 = load i32, ptr %l6, !tbaa !23
  %t64 = load ptr, ptr %l38, !tbaa !29
  %t65 = call ptr @__olang_scope_of(ptr %t64, ptr null)
  %t66 = ptrtoint ptr %t65 to i64
  %t68 = inttoptr i64 %t66 to ptr
  %t69 = load ptr, ptr %l38, !tbaa !29
  %t71 = call { i64, ptr } @compiler_2fsource_2ecompiler_2fsource_3aNames_2eText(ptr %t68, ptr %s4, ptr %t69, i32 %t63)
  store { i64, ptr } %t71, ptr %l41
  br label %bb15
bb15:
  %t72 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d63, i32 0, i32 1) }, 1
  %t73 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d63, i32 0, i32 1) }, 0
  %t74 = load i64, ptr %l35, !tbaa !24
  %t75 = call i64 @__olang_fmt_i64(ptr null, i64 %t74)
  %t76 = add i64 %t73, %t75
  %t77 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d64, i32 0, i32 1) }, 1
  %t78 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d64, i32 0, i32 1) }, 0
  %t79 = add i64 %t76, %t78
  %t80 = load { i64, ptr }, ptr %l41, !tbaa !27
  %t81 = extractvalue { i64, ptr } %t80, 1
  %t82 = extractvalue { i64, ptr } %t80, 0
  %t83 = add i64 %t79, %t82
  %t84 = call ptr @__olang_scope_alloc(ptr %s4, i64 %t83)
  call void @olang_textcopy(ptr %t84, ptr %t72, i64 %t73)
  %t85 = getelementptr i8, ptr %t84, i64 %t73
  %t86 = call i64 @__olang_fmt_i64(ptr %t85, i64 %t74)
  %t87 = getelementptr i8, ptr %t85, i64 %t75
  call void @olang_textcopy(ptr %t87, ptr %t77, i64 %t78)
  %t88 = getelementptr i8, ptr %t87, i64 %t78
  call void @olang_textcopy(ptr %t88, ptr %t81, i64 %t82)
  %t89 = insertvalue { i64, ptr } undef, i64 %t83, 0
  %t90 = insertvalue { i64, ptr } %t89, ptr %t84, 1
  %t92 = extractvalue { i64, ptr } %t90, 0
  %t93 = extractvalue { i64, ptr } %t90, 1
  %t94 = mul i64 %t92, 1
  %t95 = call ptr @__olang_scope_alloc(ptr %s4, i64 %t94)
  call void @llvm.memcpy.p0.p0.i64(ptr %t95, ptr %t93, i64 %t94, i1 false)
  %t96 = insertvalue { i64, ptr } undef, i64 %t92, 0
  %t97 = insertvalue { i64, ptr } %t96, ptr %t95, 1
  %t98 = load ptr, ptr %l34, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s4, ptr %t98, { i64, ptr } %t97)
  br label %bb16
bb16:
  call void @__olang_scope_close(ptr %s4)
  br label %bb18
bb17:
  call void @__olang_check_failed(ptr @olang_loc_2f605f8b851f9dfa_b0e742a1ba211956)
  unreachable
bb18:
  store i32 0, ptr %l7, !tbaa !23
  %t100 = getelementptr %"compiler/mir:Lvalue", ptr %l1, i32 0, i32 1
  %t101 = getelementptr %"compiler/mir:Range", ptr %t100, i32 0, i32 1
  %t102 = load i32, ptr %t101, !tbaa !23
  store i32 %t102, ptr %l8, !tbaa !23
  store i32 1, ptr %l9, !tbaa !23
  %t104 = load i32, ptr %l8, !tbaa !23
  %t105 = load i32, ptr %l7, !tbaa !23
  %t108 = icmp sgt i32 %t104, %t105
  br i1 %t108, label %bb19, label %bb20
bb19:
  %t110 = load i32, ptr %l9, !tbaa !23
  %t112 = icmp sgt i32 %t110, 0
  br i1 %t112, label %bb21, label %bb22
bb20:
  store i32 0, ptr %l48, !tbaa !23
  br label %bb24
bb21:
  %t114 = load i32, ptr %l8, !tbaa !23
  %t115 = load i32, ptr %l7, !tbaa !23
  %t118 = sub i32 %t114, %t115
  %t119 = load i32, ptr %l9, !tbaa !23
  %t122 = add i32 %t118, %t119
  %t124 = sub i32 %t122, 1
  %t125 = load i32, ptr %l9, !tbaa !23
  %t128 = sdiv i32 %t124, %t125
  store i32 %t128, ptr %l51, !tbaa !23
  br label %bb23
bb22:
  store i32 0, ptr %l51, !tbaa !23
  br label %bb23
bb23:
  %t130 = load i32, ptr %l51, !tbaa !23
  store i32 %t130, ptr %l48, !tbaa !23
  br label %bb24
bb24:
  %t131 = load i32, ptr %l48, !tbaa !23
  store i32 %t131, ptr %l10, !tbaa !23
  store i32 0, ptr %l11, !tbaa !23
  br label %bb25
bb25:
  %t132 = load i32, ptr %l11, !tbaa !23
  %t133 = load i32, ptr %l10, !tbaa !23
  %t136 = icmp slt i32 %t132, %t133
  %t138 = xor i1 %t136, true
  br i1 %t138, label %bb26, label %bb27
bb26:
  br label %bb57
bb27:
  br label %bb28
bb28:
  %t140 = load i32, ptr %l7, !tbaa !23
  %t141 = load i32, ptr %l11, !tbaa !23
  %t142 = load i32, ptr %l9, !tbaa !23
  %t145 = mul i32 %t141, %t142
  %t148 = add i32 %t140, %t145
  %t150 = load ptr, ptr %l0, !tbaa !29
  %t152 = getelementptr %"compiler/mir:dumper", ptr %t150, i32 0, i32 0
  %t153 = load ptr, ptr %t152, !tbaa !29
  %t155 = getelementptr %"compiler/mir:Fn", ptr %t153, i32 0, i32 10
  store ptr %t155, ptr %l71, !tbaa !29
  %t156 = getelementptr %"compiler/mir:Lvalue", ptr %l1, i32 0, i32 1
  %t157 = getelementptr %"compiler/mir:Range", ptr %t156, i32 0, i32 0
  %t158 = load i32, ptr %t157, !tbaa !23
  %t160 = sext i32 %t158 to i64
  %t163 = sext i32 %t148 to i64
  %t166 = add i64 %t160, %t163
  %t167 = load ptr, ptr %l71, !tbaa !29
  %t168 = call ptr @__olang_scope_or(ptr %v2, ptr %t167)
  %t169 = ptrtoint ptr %t168 to i64
  %t171 = inttoptr i64 %t169 to ptr
  %t172 = load ptr, ptr %l71, !tbaa !29
  %t174 = call { i64, [1 x i64] } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aProj_3e_2eAt_3ccompiler_2fmir_3aProj_3e(ptr %t171, ptr %t172, i64 %t166)
  store { i64, [1 x i64] } %t174, ptr %l78
  br label %bb29
bb29:
  %t175 = load { i64, [1 x i64] }, ptr %l78
  store { i64, [1 x i64] } %t175, ptr %l13
  %t176 = load { i64, [1 x i64] }, ptr %l13
  %t178 = extractvalue { i64, [1 x i64] } %t176, 0
  %t179 = icmp eq i64 %t178, 0
  br i1 %t179, label %bb30, label %bb31
bb30:
  %t181 = getelementptr { i64, [1 x i64] }, ptr %l13, i32 0, i32 1
  %t182 = getelementptr { i64 }, ptr %t181, i32 0, i32 0
  %t183 = load i64, ptr %t182
  store i64 %t183, ptr %l14, !tbaa !24
  br label %bb32
bb31:
  br label %bb34
bb32:
  store %olang.scope zeroinitializer, ptr %s8
  %t185 = load i64, ptr %l14, !tbaa !24
  %t186 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d65, i32 0, i32 1) }, 1
  %t187 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d65, i32 0, i32 1) }, 0
  %t189 = call i64 @__olang_fmt_i64(ptr null, i64 %t185)
  %t190 = add i64 %t187, %t189
  %t191 = call ptr @__olang_scope_alloc(ptr %s8, i64 %t190)
  call void @olang_textcopy(ptr %t191, ptr %t186, i64 %t187)
  %t192 = getelementptr i8, ptr %t191, i64 %t187
  %t193 = call i64 @__olang_fmt_i64(ptr %t192, i64 %t185)
  %t194 = insertvalue { i64, ptr } undef, i64 %t190, 0
  %t195 = insertvalue { i64, ptr } %t194, ptr %t191, 1
  %t197 = extractvalue { i64, ptr } %t195, 0
  %t198 = extractvalue { i64, ptr } %t195, 1
  %t199 = mul i64 %t197, 1
  %t200 = call ptr @__olang_scope_alloc(ptr %s8, i64 %t199)
  call void @llvm.memcpy.p0.p0.i64(ptr %t200, ptr %t198, i64 %t199, i1 false)
  %t201 = insertvalue { i64, ptr } undef, i64 %t197, 0
  %t202 = insertvalue { i64, ptr } %t201, ptr %t200, 1
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s8, ptr %l2, { i64, ptr } %t202)
  br label %bb33
bb33:
  call void @__olang_scope_close(ptr %s8)
  br label %bb55
bb34:
  %t205 = load { i64, [1 x i64] }, ptr %l13
  %t207 = extractvalue { i64, [1 x i64] } %t205, 0
  %t208 = icmp eq i64 %t207, 1
  br i1 %t208, label %bb35, label %bb36
bb35:
  %t210 = getelementptr { i64, [1 x i64] }, ptr %l13, i32 0, i32 1
  %t211 = getelementptr { i32 }, ptr %t210, i32 0, i32 0
  %t212 = load i32, ptr %t211
  store i32 %t212, ptr %l15, !tbaa !23
  br label %bb37
bb36:
  br label %bb39
bb37:
  store %olang.scope zeroinitializer, ptr %s10
  %t214 = load i32, ptr %l15, !tbaa !23
  %t215 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d66, i32 0, i32 1) }, 1
  %t216 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d66, i32 0, i32 1) }, 0
  %t218 = sext i32 %t214 to i64
  %t219 = call i64 @__olang_fmt_i64(ptr null, i64 %t218)
  %t220 = add i64 %t216, %t219
  %t221 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d67, i32 0, i32 1) }, 1
  %t222 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d67, i32 0, i32 1) }, 0
  %t223 = add i64 %t220, %t222
  %t224 = call ptr @__olang_scope_alloc(ptr %s10, i64 %t223)
  call void @olang_textcopy(ptr %t224, ptr %t215, i64 %t216)
  %t225 = getelementptr i8, ptr %t224, i64 %t216
  %t226 = call i64 @__olang_fmt_i64(ptr %t225, i64 %t218)
  %t227 = getelementptr i8, ptr %t225, i64 %t219
  call void @olang_textcopy(ptr %t227, ptr %t221, i64 %t222)
  %t228 = insertvalue { i64, ptr } undef, i64 %t223, 0
  %t229 = insertvalue { i64, ptr } %t228, ptr %t224, 1
  %t231 = extractvalue { i64, ptr } %t229, 0
  %t232 = extractvalue { i64, ptr } %t229, 1
  %t233 = mul i64 %t231, 1
  %t234 = call ptr @__olang_scope_alloc(ptr %s10, i64 %t233)
  call void @llvm.memcpy.p0.p0.i64(ptr %t234, ptr %t232, i64 %t233, i1 false)
  %t235 = insertvalue { i64, ptr } undef, i64 %t231, 0
  %t236 = insertvalue { i64, ptr } %t235, ptr %t234, 1
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s10, ptr %l2, { i64, ptr } %t236)
  br label %bb38
bb38:
  call void @__olang_scope_close(ptr %s10)
  br label %bb55
bb39:
  %t239 = load { i64, [1 x i64] }, ptr %l13
  %t241 = extractvalue { i64, [1 x i64] } %t239, 0
  %t242 = icmp eq i64 %t241, 2
  br i1 %t242, label %bb40, label %bb41
bb40:
  %t244 = getelementptr { i64, [1 x i64] }, ptr %l13, i32 0, i32 1
  %t245 = getelementptr { i64 }, ptr %t244, i32 0, i32 0
  %t246 = load i64, ptr %t245
  store i64 %t246, ptr %l16, !tbaa !24
  br label %bb42
bb41:
  br label %bb44
bb42:
  store %olang.scope zeroinitializer, ptr %s12
  %t248 = load i64, ptr %l16, !tbaa !24
  %t249 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d68, i32 0, i32 1) }, 1
  %t250 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d68, i32 0, i32 1) }, 0
  %t252 = call i64 @__olang_fmt_i64(ptr null, i64 %t248)
  %t253 = add i64 %t250, %t252
  %t254 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d69, i32 0, i32 1) }, 1
  %t255 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d69, i32 0, i32 1) }, 0
  %t256 = add i64 %t253, %t255
  %t257 = call ptr @__olang_scope_alloc(ptr %s12, i64 %t256)
  call void @olang_textcopy(ptr %t257, ptr %t249, i64 %t250)
  %t258 = getelementptr i8, ptr %t257, i64 %t250
  %t259 = call i64 @__olang_fmt_i64(ptr %t258, i64 %t248)
  %t260 = getelementptr i8, ptr %t258, i64 %t252
  call void @olang_textcopy(ptr %t260, ptr %t254, i64 %t255)
  %t261 = insertvalue { i64, ptr } undef, i64 %t256, 0
  %t262 = insertvalue { i64, ptr } %t261, ptr %t257, 1
  %t264 = extractvalue { i64, ptr } %t262, 0
  %t265 = extractvalue { i64, ptr } %t262, 1
  %t266 = mul i64 %t264, 1
  %t267 = call ptr @__olang_scope_alloc(ptr %s12, i64 %t266)
  call void @llvm.memcpy.p0.p0.i64(ptr %t267, ptr %t265, i64 %t266, i1 false)
  %t268 = insertvalue { i64, ptr } undef, i64 %t264, 0
  %t269 = insertvalue { i64, ptr } %t268, ptr %t267, 1
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s12, ptr %l2, { i64, ptr } %t269)
  br label %bb43
bb43:
  call void @__olang_scope_close(ptr %s12)
  br label %bb55
bb44:
  %t272 = load { i64, [1 x i64] }, ptr %l13
  %t274 = extractvalue { i64, [1 x i64] } %t272, 0
  %t275 = icmp eq i64 %t274, 3
  br i1 %t275, label %bb45, label %bb46
bb45:
  br label %bb47
bb46:
  br label %bb49
bb47:
  store %olang.scope zeroinitializer, ptr %s14
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s14, ptr %l2, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d70, i32 0, i32 1) })
  br label %bb48
bb48:
  call void @__olang_scope_close(ptr %s14)
  br label %bb55
bb49:
  %t278 = load { i64, [1 x i64] }, ptr %l13
  %t280 = extractvalue { i64, [1 x i64] } %t278, 0
  %t281 = icmp eq i64 %t280, 4
  br i1 %t281, label %bb50, label %bb51
bb50:
  %t283 = getelementptr { i64, [1 x i64] }, ptr %l13, i32 0, i32 1
  %t284 = getelementptr { i64 }, ptr %t283, i32 0, i32 0
  %t285 = load i64, ptr %t284
  store i64 %t285, ptr %l17, !tbaa !24
  br label %bb52
bb51:
  br label %bb54
bb52:
  store %olang.scope zeroinitializer, ptr %s15
  %t287 = load i64, ptr %l17, !tbaa !24
  %t288 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d71, i32 0, i32 1) }, 1
  %t289 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d71, i32 0, i32 1) }, 0
  %t291 = call i64 @__olang_fmt_i64(ptr null, i64 %t287)
  %t292 = add i64 %t289, %t291
  %t293 = call ptr @__olang_scope_alloc(ptr %s15, i64 %t292)
  call void @olang_textcopy(ptr %t293, ptr %t288, i64 %t289)
  %t294 = getelementptr i8, ptr %t293, i64 %t289
  %t295 = call i64 @__olang_fmt_i64(ptr %t294, i64 %t287)
  %t296 = insertvalue { i64, ptr } undef, i64 %t292, 0
  %t297 = insertvalue { i64, ptr } %t296, ptr %t293, 1
  %t299 = extractvalue { i64, ptr } %t297, 0
  %t300 = extractvalue { i64, ptr } %t297, 1
  %t301 = mul i64 %t299, 1
  %t302 = call ptr @__olang_scope_alloc(ptr %s15, i64 %t301)
  call void @llvm.memcpy.p0.p0.i64(ptr %t302, ptr %t300, i64 %t301, i1 false)
  %t303 = insertvalue { i64, ptr } undef, i64 %t299, 0
  %t304 = insertvalue { i64, ptr } %t303, ptr %t302, 1
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s15, ptr %l2, { i64, ptr } %t304)
  br label %bb53
bb53:
  call void @__olang_scope_close(ptr %s15)
  br label %bb55
bb54:
  call void @__olang_check_failed(ptr @olang_loc_ddfec86899b5c27b_91be796056af7d77)
  unreachable
bb55:
  br label %bb56
bb56:
  %t307 = load i32, ptr %l11, !tbaa !23
  %t309 = add i32 %t307, 1
  store i32 %t309, ptr %l11, !tbaa !23
  br label %bb25
bb57:
  %t312 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %s0, ptr %v1, ptr %l2)
  store { i64, ptr } %t312, ptr %l113
  br label %bb58
bb58:
  call void @__olang_scope_close(ptr %s0)
  %t313 = load { i64, ptr }, ptr %l113, !tbaa !27
  store { i64, ptr } %t313, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local { i64, ptr } @compiler_2fmir_2ecompiler_2fmir_3adumper_2etask(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, %"compiler/mir:Task" %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/mir:Task"
  %l2 = alloca %"std/prelude/text:StringBuilder"
  %l3 = alloca i32
  %l4 = alloca i32
  %l5 = alloca i32
  %l6 = alloca i32
  %l7 = alloca i32
  %l8 = alloca i32
  %l9 = alloca i32
  %l10 = alloca i32
  %l11 = alloca i32
  %l12 = alloca i32
  %l13 = alloca i32
  %l15 = alloca %"compiler/mir:TaskClause"
  %l16 = alloca i32
  %l17 = alloca i32
  %l18 = alloca i32
  %l19 = alloca i32
  %l20 = alloca i32
  %l22 = alloca %"compiler/typed:Item"
  %l23 = alloca %"std/prelude/text:StringBuilder"
  %l30 = alloca i32
  %l33 = alloca i32
  %l51 = alloca ptr
  %l54 = alloca { i64, ptr }
  %l55 = alloca ptr
  %l58 = alloca ptr
  %l65 = alloca %"compiler/mir:Lvalue"
  %l66 = alloca { i64, ptr }
  %l72 = alloca ptr
  %l75 = alloca { i64, ptr }
  %l78 = alloca { i64, ptr }
  %l83 = alloca ptr
  %l86 = alloca { i64, ptr }
  %l91 = alloca ptr
  %l94 = alloca { i64, ptr }
  %l101 = alloca i32
  %l104 = alloca i32
  %l124 = alloca ptr
  %l131 = alloca %"compiler/mir:TaskClause"
  %l139 = alloca i32
  %l142 = alloca i32
  %l162 = alloca ptr
  %l169 = alloca %"compiler/typed:Item"
  %l170 = alloca ptr
  %l172 = alloca ptr
  %l176 = alloca { i64, ptr }
  %l179 = alloca { i64, ptr }
  %l190 = alloca ptr
  %l193 = alloca { i64, ptr }
  %l199 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %s1 = alloca %olang.scope
  %s3 = alloca %olang.scope
  %s7 = alloca %olang.scope
  %s9 = alloca %olang.scope
  %s12 = alloca %olang.scope
  %s13 = alloca %olang.scope
  %s15 = alloca %olang.scope
  %s19 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  store %"compiler/mir:Task" %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = call %"std/prelude/text:StringBuilder" @std_2fprelude_2ftext_3aStringBuilder_2ector(ptr %s0)
  store %"std/prelude/text:StringBuilder" %t1, ptr %l23
  br label %bb1
bb1:
  %t2 = load %"std/prelude/text:StringBuilder", ptr %l23
  store %"std/prelude/text:StringBuilder" %t2, ptr %l2
  %t3 = getelementptr %"compiler/mir:Task", ptr %l1, i32 0, i32 3
  %t4 = getelementptr %"compiler/mir:Range", ptr %t3, i32 0, i32 1
  %t5 = load i32, ptr %t4, !tbaa !23
  %t7 = icmp sgt i32 %t5, 0
  br i1 %t7, label %bb2, label %bb3
bb2:
  store %olang.scope zeroinitializer, ptr %s1
  store i32 0, ptr %l3, !tbaa !23
  %t9 = getelementptr %"compiler/mir:Task", ptr %l1, i32 0, i32 3
  %t10 = getelementptr %"compiler/mir:Range", ptr %t9, i32 0, i32 1
  %t11 = load i32, ptr %t10, !tbaa !23
  store i32 %t11, ptr %l4, !tbaa !23
  store i32 1, ptr %l5, !tbaa !23
  %t13 = load i32, ptr %l4, !tbaa !23
  %t14 = load i32, ptr %l3, !tbaa !23
  %t17 = icmp sgt i32 %t13, %t14
  br i1 %t17, label %bb4, label %bb5
bb3:
  br label %bb23
bb4:
  %t19 = load i32, ptr %l5, !tbaa !23
  %t21 = icmp sgt i32 %t19, 0
  br i1 %t21, label %bb6, label %bb7
bb5:
  store i32 0, ptr %l30, !tbaa !23
  br label %bb9
bb6:
  %t23 = load i32, ptr %l4, !tbaa !23
  %t24 = load i32, ptr %l3, !tbaa !23
  %t27 = sub i32 %t23, %t24
  %t28 = load i32, ptr %l5, !tbaa !23
  %t31 = add i32 %t27, %t28
  %t33 = sub i32 %t31, 1
  %t34 = load i32, ptr %l5, !tbaa !23
  %t37 = sdiv i32 %t33, %t34
  store i32 %t37, ptr %l33, !tbaa !23
  br label %bb8
bb7:
  store i32 0, ptr %l33, !tbaa !23
  br label %bb8
bb8:
  %t39 = load i32, ptr %l33, !tbaa !23
  store i32 %t39, ptr %l30, !tbaa !23
  br label %bb9
bb9:
  %t40 = load i32, ptr %l30, !tbaa !23
  store i32 %t40, ptr %l6, !tbaa !23
  store i32 0, ptr %l7, !tbaa !23
  br label %bb10
bb10:
  store %olang.scope zeroinitializer, ptr %s3
  %t41 = load i32, ptr %l7, !tbaa !23
  %t42 = load i32, ptr %l6, !tbaa !23
  %t45 = icmp slt i32 %t41, %t42
  %t47 = xor i1 %t45, true
  br i1 %t47, label %bb11, label %bb12
bb11:
  call void @__olang_scope_close(ptr %s3)
  br label %bb21
bb12:
  br label %bb13
bb13:
  %t49 = load i32, ptr %l3, !tbaa !23
  %t50 = load i32, ptr %l7, !tbaa !23
  %t51 = load i32, ptr %l5, !tbaa !23
  %t54 = mul i32 %t50, %t51
  %t57 = add i32 %t49, %t54
  store i32 %t57, ptr %l8, !tbaa !23
  store ptr %l2, ptr %l51, !tbaa !29
  %t59 = load i32, ptr %l8, !tbaa !23
  %t61 = icmp sgt i32 %t59, 0
  br i1 %t61, label %bb14, label %bb15
bb14:
  store { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d72, i32 0, i32 1) }, ptr %l54, !tbaa !27
  br label %bb16
bb15:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d73, i32 0, i32 1) }, ptr %l54, !tbaa !27
  br label %bb16
bb16:
  %t63 = load ptr, ptr %l0, !tbaa !29
  store ptr %t63, ptr %l55, !tbaa !29
  %t64 = load ptr, ptr %l0, !tbaa !29
  %t66 = getelementptr %"compiler/mir:dumper", ptr %t64, i32 0, i32 0
  %t67 = load ptr, ptr %t66, !tbaa !29
  %t69 = getelementptr %"compiler/mir:Fn", ptr %t67, i32 0, i32 13
  store ptr %t69, ptr %l58, !tbaa !29
  %t70 = getelementptr %"compiler/mir:Task", ptr %l1, i32 0, i32 3
  %t71 = getelementptr %"compiler/mir:Range", ptr %t70, i32 0, i32 0
  %t72 = load i32, ptr %t71, !tbaa !23
  %t74 = sext i32 %t72 to i64
  %t75 = load i32, ptr %l8, !tbaa !23
  %t77 = sext i32 %t75 to i64
  %t80 = add i64 %t74, %t77
  %t81 = load ptr, ptr %l58, !tbaa !29
  %t82 = call ptr @__olang_scope_or(ptr %v2, ptr %t81)
  %t83 = ptrtoint ptr %t82 to i64
  %t85 = inttoptr i64 %t83 to ptr
  %t86 = load ptr, ptr %l58, !tbaa !29
  %t88 = call %"compiler/mir:Lvalue" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aLvalue_3e_2eAt_3ccompiler_2fmir_3aLvalue_3e(ptr %t85, ptr %t86, i64 %t80)
  store %"compiler/mir:Lvalue" %t88, ptr %l65
  br label %bb17
bb17:
  %t89 = load ptr, ptr %l55, !tbaa !29
  %t90 = load %"compiler/mir:Lvalue", ptr %l65
  %t91 = call { i64, ptr } @compiler_2fmir_2ecompiler_2fmir_3adumper_2eplace(ptr %v0, ptr %s3, ptr %v2, ptr %t89, %"compiler/mir:Lvalue" %t90)
  store { i64, ptr } %t91, ptr %l66
  br label %bb18
bb18:
  %t92 = load { i64, ptr }, ptr %l54, !tbaa !27
  %t93 = extractvalue { i64, ptr } %t92, 1
  %t94 = extractvalue { i64, ptr } %t92, 0
  %t95 = load { i64, ptr }, ptr %l66, !tbaa !27
  %t96 = extractvalue { i64, ptr } %t95, 1
  %t97 = extractvalue { i64, ptr } %t95, 0
  %t98 = add i64 %t94, %t97
  %t99 = call ptr @__olang_scope_alloc(ptr %s3, i64 %t98)
  call void @olang_textcopy(ptr %t99, ptr %t93, i64 %t94)
  %t100 = getelementptr i8, ptr %t99, i64 %t94
  call void @olang_textcopy(ptr %t100, ptr %t96, i64 %t97)
  %t101 = insertvalue { i64, ptr } undef, i64 %t98, 0
  %t102 = insertvalue { i64, ptr } %t101, ptr %t99, 1
  %t104 = extractvalue { i64, ptr } %t102, 0
  %t105 = extractvalue { i64, ptr } %t102, 1
  %t106 = mul i64 %t104, 1
  %t107 = call ptr @__olang_scope_alloc(ptr %s3, i64 %t106)
  call void @llvm.memcpy.p0.p0.i64(ptr %t107, ptr %t105, i64 %t106, i1 false)
  %t108 = insertvalue { i64, ptr } undef, i64 %t104, 0
  %t109 = insertvalue { i64, ptr } %t108, ptr %t107, 1
  %t110 = load ptr, ptr %l51, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s3, ptr %t110, { i64, ptr } %t109)
  br label %bb19
bb19:
  call void @__olang_scope_close(ptr %s3)
  br label %bb20
bb20:
  %t112 = load i32, ptr %l7, !tbaa !23
  %t114 = add i32 %t112, 1
  store i32 %t114, ptr %l7, !tbaa !23
  br label %bb10
bb21:
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s1, ptr %l2, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d74, i32 0, i32 1) })
  br label %bb22
bb22:
  call void @__olang_scope_close(ptr %s1)
  br label %bb23
bb23:
  store ptr %l2, ptr %l72, !tbaa !29
  %t117 = load ptr, ptr %l0, !tbaa !29
  %t118 = getelementptr %"compiler/mir:Task", ptr %l1, i32 0, i32 0
  %t119 = load { i64, [7 x i64] }, ptr %t118
  %t122 = call { i64, ptr } @compiler_2fmir_2ecompiler_2fmir_3adumper_2ecallee(ptr %v0, ptr %s0, ptr %v3, ptr %v2, ptr %t117, { i64, [7 x i64] } %t119)
  store { i64, ptr } %t122, ptr %l75
  br label %bb24
bb24:
  %t123 = load ptr, ptr %l0, !tbaa !29
  %t124 = getelementptr %"compiler/mir:Task", ptr %l1, i32 0, i32 1
  %t125 = load %"compiler/mir:Range", ptr %t124
  %t128 = call { i64, ptr } @compiler_2fmir_2ecompiler_2fmir_3adumper_2eoperands(ptr %v0, ptr %s0, ptr %v2, ptr %v3, ptr %t123, %"compiler/mir:Range" %t125)
  store { i64, ptr } %t128, ptr %l78
  br label %bb25
bb25:
  %t129 = load { i64, ptr }, ptr %l75, !tbaa !27
  %t130 = extractvalue { i64, ptr } %t129, 1
  %t131 = extractvalue { i64, ptr } %t129, 0
  %t132 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d75, i32 0, i32 1) }, 1
  %t133 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d75, i32 0, i32 1) }, 0
  %t134 = add i64 %t131, %t133
  %t135 = load { i64, ptr }, ptr %l78, !tbaa !27
  %t136 = extractvalue { i64, ptr } %t135, 1
  %t137 = extractvalue { i64, ptr } %t135, 0
  %t138 = add i64 %t134, %t137
  %t139 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d76, i32 0, i32 1) }, 1
  %t140 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d76, i32 0, i32 1) }, 0
  %t141 = add i64 %t138, %t140
  %t142 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t141)
  call void @olang_textcopy(ptr %t142, ptr %t130, i64 %t131)
  %t143 = getelementptr i8, ptr %t142, i64 %t131
  call void @olang_textcopy(ptr %t143, ptr %t132, i64 %t133)
  %t144 = getelementptr i8, ptr %t143, i64 %t133
  call void @olang_textcopy(ptr %t144, ptr %t136, i64 %t137)
  %t145 = getelementptr i8, ptr %t144, i64 %t137
  call void @olang_textcopy(ptr %t145, ptr %t139, i64 %t140)
  %t146 = insertvalue { i64, ptr } undef, i64 %t141, 0
  %t147 = insertvalue { i64, ptr } %t146, ptr %t142, 1
  %t149 = extractvalue { i64, ptr } %t147, 0
  %t150 = extractvalue { i64, ptr } %t147, 1
  %t151 = mul i64 %t149, 1
  %t152 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t151)
  call void @llvm.memcpy.p0.p0.i64(ptr %t152, ptr %t150, i64 %t151, i1 false)
  %t153 = insertvalue { i64, ptr } undef, i64 %t149, 0
  %t154 = insertvalue { i64, ptr } %t153, ptr %t152, 1
  %t155 = load ptr, ptr %l72, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s0, ptr %t155, { i64, ptr } %t154)
  br label %bb26
bb26:
  %t157 = getelementptr %"compiler/mir:Task", ptr %l1, i32 0, i32 2
  %t158 = getelementptr %"compiler/mir:Range", ptr %t157, i32 0, i32 1
  %t159 = load i32, ptr %t158, !tbaa !23
  %t161 = icmp sgt i32 %t159, 0
  br i1 %t161, label %bb27, label %bb28
bb27:
  store %olang.scope zeroinitializer, ptr %s7
  store ptr %l2, ptr %l83, !tbaa !29
  %t163 = load ptr, ptr %l0, !tbaa !29
  %t164 = getelementptr %"compiler/mir:Task", ptr %l1, i32 0, i32 2
  %t165 = load %"compiler/mir:Range", ptr %t164
  %t168 = call { i64, ptr } @compiler_2fmir_2ecompiler_2fmir_3adumper_2erefs(ptr %v0, ptr %s7, ptr %v2, ptr %t163, %"compiler/mir:Range" %t165)
  store { i64, ptr } %t168, ptr %l86
  br label %bb29
bb28:
  br label %bb31
bb29:
  %t169 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d77, i32 0, i32 1) }, 1
  %t170 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d77, i32 0, i32 1) }, 0
  %t171 = load { i64, ptr }, ptr %l86, !tbaa !27
  %t172 = extractvalue { i64, ptr } %t171, 1
  %t173 = extractvalue { i64, ptr } %t171, 0
  %t174 = add i64 %t170, %t173
  %t175 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d78, i32 0, i32 1) }, 1
  %t176 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d78, i32 0, i32 1) }, 0
  %t177 = add i64 %t174, %t176
  %t178 = call ptr @__olang_scope_alloc(ptr %s7, i64 %t177)
  call void @olang_textcopy(ptr %t178, ptr %t169, i64 %t170)
  %t179 = getelementptr i8, ptr %t178, i64 %t170
  call void @olang_textcopy(ptr %t179, ptr %t172, i64 %t173)
  %t180 = getelementptr i8, ptr %t179, i64 %t173
  call void @olang_textcopy(ptr %t180, ptr %t175, i64 %t176)
  %t181 = insertvalue { i64, ptr } undef, i64 %t177, 0
  %t182 = insertvalue { i64, ptr } %t181, ptr %t178, 1
  %t184 = extractvalue { i64, ptr } %t182, 0
  %t185 = extractvalue { i64, ptr } %t182, 1
  %t186 = mul i64 %t184, 1
  %t187 = call ptr @__olang_scope_alloc(ptr %s7, i64 %t186)
  call void @llvm.memcpy.p0.p0.i64(ptr %t187, ptr %t185, i64 %t186, i1 false)
  %t188 = insertvalue { i64, ptr } undef, i64 %t184, 0
  %t189 = insertvalue { i64, ptr } %t188, ptr %t187, 1
  %t190 = load ptr, ptr %l83, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s7, ptr %t190, { i64, ptr } %t189)
  br label %bb30
bb30:
  call void @__olang_scope_close(ptr %s7)
  br label %bb31
bb31:
  %t192 = getelementptr %"compiler/mir:Task", ptr %l1, i32 0, i32 7
  %t193 = getelementptr %"compiler/mir:Range", ptr %t192, i32 0, i32 1
  %t194 = load i32, ptr %t193, !tbaa !23
  %t196 = icmp sgt i32 %t194, 0
  br i1 %t196, label %bb32, label %bb33
bb32:
  store %olang.scope zeroinitializer, ptr %s9
  store ptr %l2, ptr %l91, !tbaa !29
  %t198 = load ptr, ptr %l0, !tbaa !29
  %t199 = getelementptr %"compiler/mir:Task", ptr %l1, i32 0, i32 7
  %t200 = load %"compiler/mir:Range", ptr %t199
  %t203 = call { i64, ptr } @compiler_2fmir_2ecompiler_2fmir_3adumper_2erefs(ptr %v0, ptr %s9, ptr %v2, ptr %t198, %"compiler/mir:Range" %t200)
  store { i64, ptr } %t203, ptr %l94
  br label %bb34
bb33:
  br label %bb36
bb34:
  %t204 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d79, i32 0, i32 1) }, 1
  %t205 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d79, i32 0, i32 1) }, 0
  %t206 = load { i64, ptr }, ptr %l94, !tbaa !27
  %t207 = extractvalue { i64, ptr } %t206, 1
  %t208 = extractvalue { i64, ptr } %t206, 0
  %t209 = add i64 %t205, %t208
  %t210 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d80, i32 0, i32 1) }, 1
  %t211 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d80, i32 0, i32 1) }, 0
  %t212 = add i64 %t209, %t211
  %t213 = call ptr @__olang_scope_alloc(ptr %s9, i64 %t212)
  call void @olang_textcopy(ptr %t213, ptr %t204, i64 %t205)
  %t214 = getelementptr i8, ptr %t213, i64 %t205
  call void @olang_textcopy(ptr %t214, ptr %t207, i64 %t208)
  %t215 = getelementptr i8, ptr %t214, i64 %t208
  call void @olang_textcopy(ptr %t215, ptr %t210, i64 %t211)
  %t216 = insertvalue { i64, ptr } undef, i64 %t212, 0
  %t217 = insertvalue { i64, ptr } %t216, ptr %t213, 1
  %t219 = extractvalue { i64, ptr } %t217, 0
  %t220 = extractvalue { i64, ptr } %t217, 1
  %t221 = mul i64 %t219, 1
  %t222 = call ptr @__olang_scope_alloc(ptr %s9, i64 %t221)
  call void @llvm.memcpy.p0.p0.i64(ptr %t222, ptr %t220, i64 %t221, i1 false)
  %t223 = insertvalue { i64, ptr } undef, i64 %t219, 0
  %t224 = insertvalue { i64, ptr } %t223, ptr %t222, 1
  %t225 = load ptr, ptr %l91, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s9, ptr %t225, { i64, ptr } %t224)
  br label %bb35
bb35:
  call void @__olang_scope_close(ptr %s9)
  br label %bb36
bb36:
  store i32 0, ptr %l9, !tbaa !23
  %t227 = getelementptr %"compiler/mir:Task", ptr %l1, i32 0, i32 4
  %t228 = getelementptr %"compiler/mir:Range", ptr %t227, i32 0, i32 1
  %t229 = load i32, ptr %t228, !tbaa !23
  store i32 %t229, ptr %l10, !tbaa !23
  store i32 1, ptr %l11, !tbaa !23
  %t231 = load i32, ptr %l10, !tbaa !23
  %t232 = load i32, ptr %l9, !tbaa !23
  %t235 = icmp sgt i32 %t231, %t232
  br i1 %t235, label %bb37, label %bb38
bb37:
  %t237 = load i32, ptr %l11, !tbaa !23
  %t239 = icmp sgt i32 %t237, 0
  br i1 %t239, label %bb39, label %bb40
bb38:
  store i32 0, ptr %l101, !tbaa !23
  br label %bb42
bb39:
  %t241 = load i32, ptr %l10, !tbaa !23
  %t242 = load i32, ptr %l9, !tbaa !23
  %t245 = sub i32 %t241, %t242
  %t246 = load i32, ptr %l11, !tbaa !23
  %t249 = add i32 %t245, %t246
  %t251 = sub i32 %t249, 1
  %t252 = load i32, ptr %l11, !tbaa !23
  %t255 = sdiv i32 %t251, %t252
  store i32 %t255, ptr %l104, !tbaa !23
  br label %bb41
bb40:
  store i32 0, ptr %l104, !tbaa !23
  br label %bb41
bb41:
  %t257 = load i32, ptr %l104, !tbaa !23
  store i32 %t257, ptr %l101, !tbaa !23
  br label %bb42
bb42:
  %t258 = load i32, ptr %l101, !tbaa !23
  store i32 %t258, ptr %l12, !tbaa !23
  store i32 0, ptr %l13, !tbaa !23
  br label %bb43
bb43:
  store %olang.scope zeroinitializer, ptr %s12
  %t259 = load i32, ptr %l13, !tbaa !23
  %t260 = load i32, ptr %l12, !tbaa !23
  %t263 = icmp slt i32 %t259, %t260
  %t265 = xor i1 %t263, true
  br i1 %t265, label %bb44, label %bb45
bb44:
  call void @__olang_scope_close(ptr %s12)
  br label %bb77
bb45:
  br label %bb46
bb46:
  %t267 = load i32, ptr %l9, !tbaa !23
  %t268 = load i32, ptr %l13, !tbaa !23
  %t269 = load i32, ptr %l11, !tbaa !23
  %t272 = mul i32 %t268, %t269
  %t275 = add i32 %t267, %t272
  %t277 = load ptr, ptr %l0, !tbaa !29
  %t279 = getelementptr %"compiler/mir:dumper", ptr %t277, i32 0, i32 0
  %t280 = load ptr, ptr %t279, !tbaa !29
  %t282 = getelementptr %"compiler/mir:Fn", ptr %t280, i32 0, i32 17
  store ptr %t282, ptr %l124, !tbaa !29
  %t283 = getelementptr %"compiler/mir:Task", ptr %l1, i32 0, i32 4
  %t284 = getelementptr %"compiler/mir:Range", ptr %t283, i32 0, i32 0
  %t285 = load i32, ptr %t284, !tbaa !23
  %t287 = sext i32 %t285 to i64
  %t290 = sext i32 %t275 to i64
  %t293 = add i64 %t287, %t290
  %t294 = load ptr, ptr %l124, !tbaa !29
  %t295 = call ptr @__olang_scope_or(ptr %v2, ptr %t294)
  %t296 = ptrtoint ptr %t295 to i64
  %t298 = inttoptr i64 %t296 to ptr
  %t299 = load ptr, ptr %l124, !tbaa !29
  %t301 = call %"compiler/mir:TaskClause" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aTaskClause_3e_2eAt_3ccompiler_2fmir_3aTaskClause_3e(ptr %t298, ptr %t299, i64 %t293)
  store %"compiler/mir:TaskClause" %t301, ptr %l131
  br label %bb47
bb47:
  %t302 = load %"compiler/mir:TaskClause", ptr %l131
  store %"compiler/mir:TaskClause" %t302, ptr %l15
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s12, ptr %l2, { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d81, i32 0, i32 1) })
  br label %bb48
bb48:
  %t304 = getelementptr %"compiler/mir:TaskClause", ptr %l15, i32 0, i32 1
  %t305 = load i1, ptr %t304, !tbaa !21
  br i1 %t305, label %bb49, label %bb50
bb49:
  store %olang.scope zeroinitializer, ptr %s13
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s13, ptr %l2, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d82, i32 0, i32 1) })
  br label %bb51
bb50:
  br label %bb52
bb51:
  call void @__olang_scope_close(ptr %s13)
  br label %bb52
bb52:
  store i32 0, ptr %l16, !tbaa !23
  %t308 = getelementptr %"compiler/mir:TaskClause", ptr %l15, i32 0, i32 0
  %t309 = getelementptr %"compiler/mir:Range", ptr %t308, i32 0, i32 1
  %t310 = load i32, ptr %t309, !tbaa !23
  store i32 %t310, ptr %l17, !tbaa !23
  store i32 1, ptr %l18, !tbaa !23
  %t312 = load i32, ptr %l17, !tbaa !23
  %t313 = load i32, ptr %l16, !tbaa !23
  %t316 = icmp sgt i32 %t312, %t313
  br i1 %t316, label %bb53, label %bb54
bb53:
  %t318 = load i32, ptr %l18, !tbaa !23
  %t320 = icmp sgt i32 %t318, 0
  br i1 %t320, label %bb55, label %bb56
bb54:
  store i32 0, ptr %l139, !tbaa !23
  br label %bb58
bb55:
  %t322 = load i32, ptr %l17, !tbaa !23
  %t323 = load i32, ptr %l16, !tbaa !23
  %t326 = sub i32 %t322, %t323
  %t327 = load i32, ptr %l18, !tbaa !23
  %t330 = add i32 %t326, %t327
  %t332 = sub i32 %t330, 1
  %t333 = load i32, ptr %l18, !tbaa !23
  %t336 = sdiv i32 %t332, %t333
  store i32 %t336, ptr %l142, !tbaa !23
  br label %bb57
bb56:
  store i32 0, ptr %l142, !tbaa !23
  br label %bb57
bb57:
  %t338 = load i32, ptr %l142, !tbaa !23
  store i32 %t338, ptr %l139, !tbaa !23
  br label %bb58
bb58:
  %t339 = load i32, ptr %l139, !tbaa !23
  store i32 %t339, ptr %l19, !tbaa !23
  store i32 0, ptr %l20, !tbaa !23
  br label %bb59
bb59:
  store %olang.scope zeroinitializer, ptr %s15
  %t340 = load i32, ptr %l20, !tbaa !23
  %t341 = load i32, ptr %l19, !tbaa !23
  %t344 = icmp slt i32 %t340, %t341
  %t346 = xor i1 %t344, true
  br i1 %t346, label %bb60, label %bb61
bb60:
  call void @__olang_scope_close(ptr %s15)
  br label %bb70
bb61:
  br label %bb62
bb62:
  %t348 = load i32, ptr %l16, !tbaa !23
  %t349 = load i32, ptr %l20, !tbaa !23
  %t350 = load i32, ptr %l18, !tbaa !23
  %t353 = mul i32 %t349, %t350
  %t356 = add i32 %t348, %t353
  %t358 = load ptr, ptr %l0, !tbaa !29
  %t360 = getelementptr %"compiler/mir:dumper", ptr %t358, i32 0, i32 0
  %t361 = load ptr, ptr %t360, !tbaa !29
  %t363 = getelementptr %"compiler/mir:Fn", ptr %t361, i32 0, i32 18
  store ptr %t363, ptr %l162, !tbaa !29
  %t364 = getelementptr %"compiler/mir:TaskClause", ptr %l15, i32 0, i32 0
  %t365 = getelementptr %"compiler/mir:Range", ptr %t364, i32 0, i32 0
  %t366 = load i32, ptr %t365, !tbaa !23
  %t368 = sext i32 %t366 to i64
  %t371 = sext i32 %t356 to i64
  %t374 = add i64 %t368, %t371
  %t375 = load ptr, ptr %l162, !tbaa !29
  %t376 = call ptr @__olang_scope_or(ptr %v2, ptr %t375)
  %t377 = ptrtoint ptr %t376 to i64
  %t379 = inttoptr i64 %t377 to ptr
  %t380 = load ptr, ptr %l162, !tbaa !29
  %t382 = call %"compiler/typed:Item" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aItem_3e_2eAt_3ccompiler_2ftyped_3aItem_3e(ptr %t379, ptr %t380, i64 %t374)
  store %"compiler/typed:Item" %t382, ptr %l169
  br label %bb63
bb63:
  %t383 = load %"compiler/typed:Item", ptr %l169
  store %"compiler/typed:Item" %t383, ptr %l22
  store ptr %l2, ptr %l170, !tbaa !29
  %t384 = load ptr, ptr %l0, !tbaa !29
  %t386 = getelementptr %"compiler/mir:dumper", ptr %t384, i32 0, i32 1
  %t387 = load ptr, ptr %t386, !tbaa !29
  store ptr %t387, ptr %l172, !tbaa !29
  %t388 = getelementptr %"compiler/typed:Item", ptr %l22, i32 0, i32 0
  %t389 = load i32, ptr %t388, !tbaa !23
  %t390 = load ptr, ptr %l172, !tbaa !29
  %t391 = call ptr @__olang_scope_or(ptr %v3, ptr %t390)
  %t392 = ptrtoint ptr %t391 to i64
  %t394 = inttoptr i64 %t392 to ptr
  %t396 = inttoptr i64 0 to ptr
  %t397 = load ptr, ptr %l172, !tbaa !29
  %t399 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eCanon(ptr %t394, ptr %s15, ptr %t396, ptr %t397, i32 %t389)
  store { i64, ptr } %t399, ptr %l176
  br label %bb64
bb64:
  %t400 = getelementptr %"compiler/typed:Item", ptr %l22, i32 0, i32 1
  %t401 = load i64, ptr %t400, !tbaa !24
  %t403 = icmp slt i64 %t401, 0
  br i1 %t403, label %bb65, label %bb66
bb65:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d83, i32 0, i32 1) }, ptr %l179, !tbaa !27
  br label %bb67
bb66:
  %t405 = getelementptr %"compiler/typed:Item", ptr %l22, i32 0, i32 1
  %t406 = load i64, ptr %t405, !tbaa !24
  %t407 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d84, i32 0, i32 1) }, 1
  %t408 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d84, i32 0, i32 1) }, 0
  %t410 = call i64 @__olang_fmt_i64(ptr null, i64 %t406)
  %t411 = add i64 %t408, %t410
  %t412 = call ptr @__olang_scope_alloc(ptr %s15, i64 %t411)
  call void @olang_textcopy(ptr %t412, ptr %t407, i64 %t408)
  %t413 = getelementptr i8, ptr %t412, i64 %t408
  %t414 = call i64 @__olang_fmt_i64(ptr %t413, i64 %t406)
  %t415 = insertvalue { i64, ptr } undef, i64 %t411, 0
  %t416 = insertvalue { i64, ptr } %t415, ptr %t412, 1
  %t418 = extractvalue { i64, ptr } %t416, 0
  %t419 = extractvalue { i64, ptr } %t416, 1
  %t420 = mul i64 %t418, 1
  %t421 = call ptr @__olang_scope_alloc(ptr %s15, i64 %t420)
  call void @llvm.memcpy.p0.p0.i64(ptr %t421, ptr %t419, i64 %t420, i1 false)
  %t422 = insertvalue { i64, ptr } undef, i64 %t418, 0
  %t423 = insertvalue { i64, ptr } %t422, ptr %t421, 1
  store { i64, ptr } %t423, ptr %l179, !tbaa !27
  br label %bb67
bb67:
  %t425 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d85, i32 0, i32 1) }, 1
  %t426 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d85, i32 0, i32 1) }, 0
  %t427 = load { i64, ptr }, ptr %l176, !tbaa !27
  %t428 = extractvalue { i64, ptr } %t427, 1
  %t429 = extractvalue { i64, ptr } %t427, 0
  %t430 = add i64 %t426, %t429
  %t431 = load { i64, ptr }, ptr %l179, !tbaa !27
  %t432 = extractvalue { i64, ptr } %t431, 1
  %t433 = extractvalue { i64, ptr } %t431, 0
  %t434 = add i64 %t430, %t433
  %t435 = call ptr @__olang_scope_alloc(ptr %s15, i64 %t434)
  call void @olang_textcopy(ptr %t435, ptr %t425, i64 %t426)
  %t436 = getelementptr i8, ptr %t435, i64 %t426
  call void @olang_textcopy(ptr %t436, ptr %t428, i64 %t429)
  %t437 = getelementptr i8, ptr %t436, i64 %t429
  call void @olang_textcopy(ptr %t437, ptr %t432, i64 %t433)
  %t438 = insertvalue { i64, ptr } undef, i64 %t434, 0
  %t439 = insertvalue { i64, ptr } %t438, ptr %t435, 1
  %t441 = extractvalue { i64, ptr } %t439, 0
  %t442 = extractvalue { i64, ptr } %t439, 1
  %t443 = mul i64 %t441, 1
  %t444 = call ptr @__olang_scope_alloc(ptr %s15, i64 %t443)
  call void @llvm.memcpy.p0.p0.i64(ptr %t444, ptr %t442, i64 %t443, i1 false)
  %t445 = insertvalue { i64, ptr } undef, i64 %t441, 0
  %t446 = insertvalue { i64, ptr } %t445, ptr %t444, 1
  %t447 = load ptr, ptr %l170, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s15, ptr %t447, { i64, ptr } %t446)
  br label %bb68
bb68:
  call void @__olang_scope_close(ptr %s15)
  br label %bb69
bb69:
  %t449 = load i32, ptr %l20, !tbaa !23
  %t451 = add i32 %t449, 1
  store i32 %t451, ptr %l20, !tbaa !23
  br label %bb59
bb70:
  %t453 = getelementptr %"compiler/mir:TaskClause", ptr %l15, i32 0, i32 2
  %t454 = load { i64, [4 x i64] }, ptr %t453
  %t456 = extractvalue { i64, [4 x i64] } %t454, 0
  %t457 = icmp eq i64 %t456, 0
  %t459 = xor i1 %t457, true
  br i1 %t459, label %bb71, label %bb72
bb71:
  store %olang.scope zeroinitializer, ptr %s19
  store ptr %l2, ptr %l190, !tbaa !29
  %t461 = load ptr, ptr %l0, !tbaa !29
  %t462 = getelementptr %"compiler/mir:TaskClause", ptr %l15, i32 0, i32 2
  %t463 = load { i64, [4 x i64] }, ptr %t462
  %t466 = call { i64, ptr } @compiler_2fmir_2ecompiler_2fmir_3adumper_2eoperand(ptr %v0, ptr %s19, ptr %v2, ptr %v3, ptr %t461, { i64, [4 x i64] } %t463)
  store { i64, ptr } %t466, ptr %l193
  br label %bb73
bb72:
  br label %bb75
bb73:
  %t467 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d86, i32 0, i32 1) }, 1
  %t468 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d86, i32 0, i32 1) }, 0
  %t469 = load { i64, ptr }, ptr %l193, !tbaa !27
  %t470 = extractvalue { i64, ptr } %t469, 1
  %t471 = extractvalue { i64, ptr } %t469, 0
  %t472 = add i64 %t468, %t471
  %t473 = call ptr @__olang_scope_alloc(ptr %s19, i64 %t472)
  call void @olang_textcopy(ptr %t473, ptr %t467, i64 %t468)
  %t474 = getelementptr i8, ptr %t473, i64 %t468
  call void @olang_textcopy(ptr %t474, ptr %t470, i64 %t471)
  %t475 = insertvalue { i64, ptr } undef, i64 %t472, 0
  %t476 = insertvalue { i64, ptr } %t475, ptr %t473, 1
  %t478 = extractvalue { i64, ptr } %t476, 0
  %t479 = extractvalue { i64, ptr } %t476, 1
  %t480 = mul i64 %t478, 1
  %t481 = call ptr @__olang_scope_alloc(ptr %s19, i64 %t480)
  call void @llvm.memcpy.p0.p0.i64(ptr %t481, ptr %t479, i64 %t480, i1 false)
  %t482 = insertvalue { i64, ptr } undef, i64 %t478, 0
  %t483 = insertvalue { i64, ptr } %t482, ptr %t481, 1
  %t484 = load ptr, ptr %l190, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s19, ptr %t484, { i64, ptr } %t483)
  br label %bb74
bb74:
  call void @__olang_scope_close(ptr %s19)
  br label %bb75
bb75:
  call void @__olang_scope_close(ptr %s12)
  br label %bb76
bb76:
  %t486 = load i32, ptr %l13, !tbaa !23
  %t488 = add i32 %t486, 1
  store i32 %t488, ptr %l13, !tbaa !23
  br label %bb43
bb77:
  %t491 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %s0, ptr %v1, ptr %l2)
  store { i64, ptr } %t491, ptr %l199
  br label %bb78
bb78:
  call void @__olang_scope_close(ptr %s0)
  %t492 = load { i64, ptr }, ptr %l199, !tbaa !27
  store { i64, ptr } %t492, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local { i64, ptr } @compiler_2fmir_2ecompiler_2fmir_3adumper_2evarKind(ptr %v0, ptr %v1, ptr %a0, { i64, [1 x i64] } %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca { i64, [1 x i64] }
  %l2 = alloca i64
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca { i64, ptr }
  %l21 = alloca { i64, [1 x i64] }
  %l23 = alloca { i64, ptr }
  %l25 = alloca { i64, ptr }
  %s7 = alloca %olang.scope
  %s8 = alloca %olang.builder
  %s8room = alloca [64 x i8], align 8
  %rv = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  store { i64, [1 x i64] } %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load { i64, [1 x i64] }, ptr %l1
  %t3 = extractvalue { i64, [1 x i64] } %t1, 0
  %t4 = icmp eq i64 %t3, 0
  br i1 %t4, label %bb1, label %bb2
bb1:
  %t6 = getelementptr { i64, [1 x i64] }, ptr %l1, i32 0, i32 1
  %t7 = getelementptr { i64 }, ptr %t6, i32 0, i32 0
  %t8 = load i64, ptr %t7
  store i64 %t8, ptr %l2, !tbaa !24
  br label %bb3
bb2:
  br label %bb4
bb3:
  %t10 = load i64, ptr %l2, !tbaa !24
  %t11 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d87, i32 0, i32 1) }, 1
  %t12 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d87, i32 0, i32 1) }, 0
  %t14 = call i64 @__olang_fmt_i64(ptr null, i64 %t10)
  %t15 = add i64 %t12, %t14
  %t16 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t15)
  call void @olang_textcopy(ptr %t16, ptr %t11, i64 %t12)
  %t17 = getelementptr i8, ptr %t16, i64 %t12
  %t18 = call i64 @__olang_fmt_i64(ptr %t17, i64 %t10)
  %t19 = insertvalue { i64, ptr } undef, i64 %t15, 0
  %t20 = insertvalue { i64, ptr } %t19, ptr %t16, 1
  store { i64, ptr } %t20, ptr %l5, !tbaa !27
  br label %bb19
bb4:
  %t22 = load { i64, [1 x i64] }, ptr %l1
  %t24 = extractvalue { i64, [1 x i64] } %t22, 0
  %t25 = icmp eq i64 %t24, 4
  br i1 %t25, label %bb5, label %bb6
bb5:
  %t27 = getelementptr { i64, [1 x i64] }, ptr %l1, i32 0, i32 1
  %t28 = getelementptr { i64 }, ptr %t27, i32 0, i32 0
  %t29 = load i64, ptr %t28
  store i64 %t29, ptr %l3, !tbaa !24
  br label %bb7
bb6:
  br label %bb8
bb7:
  %t31 = load i64, ptr %l3, !tbaa !24
  %t32 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d88, i32 0, i32 1) }, 1
  %t33 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d88, i32 0, i32 1) }, 0
  %t35 = call i64 @__olang_fmt_i64(ptr null, i64 %t31)
  %t36 = add i64 %t33, %t35
  %t37 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t36)
  call void @olang_textcopy(ptr %t37, ptr %t32, i64 %t33)
  %t38 = getelementptr i8, ptr %t37, i64 %t33
  %t39 = call i64 @__olang_fmt_i64(ptr %t38, i64 %t31)
  %t40 = insertvalue { i64, ptr } undef, i64 %t36, 0
  %t41 = insertvalue { i64, ptr } %t40, ptr %t37, 1
  store { i64, ptr } %t41, ptr %l5, !tbaa !27
  br label %bb19
bb8:
  %t43 = load { i64, [1 x i64] }, ptr %l1
  %t45 = extractvalue { i64, [1 x i64] } %t43, 0
  %t46 = icmp eq i64 %t45, 5
  br i1 %t46, label %bb9, label %bb10
bb9:
  %t48 = getelementptr { i64, [1 x i64] }, ptr %l1, i32 0, i32 1
  %t49 = getelementptr { i64 }, ptr %t48, i32 0, i32 0
  %t50 = load i64, ptr %t49
  store i64 %t50, ptr %l4, !tbaa !24
  br label %bb11
bb10:
  br label %bb12
bb11:
  %t52 = load i64, ptr %l4, !tbaa !24
  %t53 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d89, i32 0, i32 1) }, 1
  %t54 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d89, i32 0, i32 1) }, 0
  %t56 = call i64 @__olang_fmt_i64(ptr null, i64 %t52)
  %t57 = add i64 %t54, %t56
  %t58 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t57)
  call void @olang_textcopy(ptr %t58, ptr %t53, i64 %t54)
  %t59 = getelementptr i8, ptr %t58, i64 %t54
  %t60 = call i64 @__olang_fmt_i64(ptr %t59, i64 %t52)
  %t61 = insertvalue { i64, ptr } undef, i64 %t57, 0
  %t62 = insertvalue { i64, ptr } %t61, ptr %t58, 1
  store { i64, ptr } %t62, ptr %l5, !tbaa !27
  br label %bb19
bb12:
  br i1 true, label %bb13, label %bb14
bb13:
  br label %bb15
bb14:
  br label %bb18
bb15:
  store %olang.scope zeroinitializer, ptr %s7
  %t64 = load { i64, [1 x i64] }, ptr %l1
  store { i64, [1 x i64] } %t64, ptr %l21
  store %olang.builder { ptr null, i64 0, i64 64, ptr null, ptr null }, ptr %s8
  store ptr %s8room, ptr %s8
  call void @olang_2emir_2eHelperKind_2eRender_2ecompiler_2fmir_3aVarKind(ptr %s8, ptr %l21, i64 0)
  br label %bb16
bb16:
  %t66 = load ptr, ptr %s8
  %t67 = getelementptr %olang.builder, ptr %s8, i32 0, i32 1
  %t68 = load i64, ptr %t67
  %t69 = call ptr @__olang_scope_alloc(ptr %s7, i64 %t68)
  call void @olang_textcopy(ptr %t69, ptr %t66, i64 %t68)
  %t70 = insertvalue { i64, ptr } undef, i64 %t68, 0
  %t71 = insertvalue { i64, ptr } %t70, ptr %t69, 1
  store { i64, ptr } %t71, ptr %l23, !tbaa !27
  %t72 = getelementptr %olang.builder, ptr %s8, i32 0, i32 3
  %t73 = load ptr, ptr %t72
  %t74 = icmp ne ptr %t73, null
  br i1 %t74, label %sbgrew.75, label %sbdone.76
sbgrew.75:
  call void @__olang_sb_done(ptr %s8)
  br label %sbdone.76
sbdone.76:
  %t77 = load { i64, ptr }, ptr %l23, !tbaa !27
  %t78 = extractvalue { i64, ptr } %t77, 0
  %t79 = extractvalue { i64, ptr } %t77, 1
  %t80 = mul i64 %t78, 1
  %t81 = call ptr @__olang_scope_alloc(ptr %s7, i64 %t80)
  call void @llvm.memcpy.p0.p0.i64(ptr %t81, ptr %t79, i64 %t80, i1 false)
  %t82 = insertvalue { i64, ptr } undef, i64 %t78, 0
  %t83 = insertvalue { i64, ptr } %t82, ptr %t81, 1
  %t85 = call { i64, ptr } @compiler_2fmir_2eshort(ptr %s7, ptr %s7, { i64, ptr } %t83)
  store { i64, ptr } %t85, ptr %l25
  br label %bb17
bb17:
  %t86 = load { i64, ptr }, ptr %l25, !tbaa !27
  %t87 = extractvalue { i64, ptr } %t86, 1
  %t88 = extractvalue { i64, ptr } %t86, 0
  %t89 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t88)
  call void @olang_textcopy(ptr %t89, ptr %t87, i64 %t88)
  %t90 = insertvalue { i64, ptr } undef, i64 %t88, 0
  %t91 = insertvalue { i64, ptr } %t90, ptr %t89, 1
  store { i64, ptr } %t91, ptr %l5, !tbaa !27
  call void @__olang_scope_close(ptr %s7)
  br label %bb19
bb18:
  call void @__olang_check_failed(ptr @olang_loc_6326b544498e75fa_e53a2c99f88826ee)
  unreachable
bb19:
  %t93 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t93, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local { i64, [4 x i64] } @compiler_2fmir_2ecompiler_2fmir_3averifier_2earg(ptr %v0, ptr %v1, ptr %a0, %"compiler/mir:Range" %a1, i64 %a2) #0 {
entry:
  %l1 = alloca %"compiler/mir:Range"
  %l5 = alloca ptr
  %l11 = alloca { i64, [4 x i64] }
  %rv = alloca { i64, [4 x i64] }
  store %"compiler/mir:Range" %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t3 = getelementptr %"compiler/mir:verifier", ptr %a0, i32 0, i32 0
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t6 = getelementptr %"compiler/mir:Fn", ptr %t4, i32 0, i32 11
  store ptr %t6, ptr %l5, !tbaa !29
  %t7 = getelementptr %"compiler/mir:Range", ptr %l1, i32 0, i32 0
  %t8 = load i32, ptr %t7, !tbaa !23
  %t10 = sext i32 %t8 to i64
  %t14 = add i64 %t10, %a2
  %t15 = load ptr, ptr %l5, !tbaa !29
  %t16 = call ptr @__olang_scope_or(ptr %v1, ptr %t15)
  %t17 = ptrtoint ptr %t16 to i64
  %t19 = inttoptr i64 %t17 to ptr
  %t20 = load ptr, ptr %l5, !tbaa !29
  %t22 = call { i64, [4 x i64] } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aOperand_3e_2eAt_3ccompiler_2fmir_3aOperand_3e(ptr %t19, ptr %t20, i64 %t14)
  store { i64, [4 x i64] } %t22, ptr %l11
  br label %bb1
bb1:
  %t23 = load { i64, [4 x i64] }, ptr %l11
  store { i64, [4 x i64] } %t23, ptr %rv
  br label %ret
ret:
  %rr = load { i64, [4 x i64] }, ptr %rv
  ret { i64, [4 x i64] } %rr
}

define dso_local i32 @compiler_2fmir_2ecompiler_2fmir_3averifier_2earrayOf(ptr %v0, ptr %v1, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca i32
  %l4 = alloca ptr
  %l7 = alloca i32
  %l9 = alloca ptr
  %l12 = alloca i32
  %l15 = alloca i32
  %rv = alloca i32
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/mir:verifier", ptr %t1, i32 0, i32 1
  %t4 = load ptr, ptr %t3, !tbaa !29
  store ptr %t4, ptr %l4, !tbaa !29
  %t6 = load ptr, ptr %l4, !tbaa !29
  %t7 = call ptr @__olang_scope_or(ptr %v1, ptr %t6)
  %t8 = ptrtoint ptr %t7 to i64
  %t10 = inttoptr i64 %t8 to ptr
  %t11 = load ptr, ptr %l4, !tbaa !29
  %t13 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %t10, ptr %t11, i32 %a1)
  store i32 %t13, ptr %l7
  br label %bb1
bb1:
  %t14 = load i32, ptr %l7, !tbaa !23
  store i32 %t14, ptr %l2, !tbaa !23
  %t15 = load ptr, ptr %l0, !tbaa !29
  %t17 = getelementptr %"compiler/mir:verifier", ptr %t15, i32 0, i32 1
  %t18 = load ptr, ptr %t17, !tbaa !29
  store ptr %t18, ptr %l9, !tbaa !29
  %t19 = load i32, ptr %l2, !tbaa !23
  %t20 = load ptr, ptr %l9, !tbaa !29
  %t21 = call ptr @__olang_scope_or(ptr %v1, ptr %t20)
  %t22 = ptrtoint ptr %t21 to i64
  %t24 = inttoptr i64 %t22 to ptr
  %t25 = load ptr, ptr %l9, !tbaa !29
  %t27 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %t24, ptr %t25, i32 %t19)
  store i32 %t27, ptr %l12
  br label %bb2
bb2:
  %t28 = load i32, ptr %l12, !range !{i32 0, i32 33}
  %t30 = trunc i64 19 to i32
  %t31 = icmp eq i32 %t28, %t30
  br i1 %t31, label %bb3, label %bb4
bb3:
  %t33 = load i32, ptr %l2, !tbaa !23
  store i32 %t33, ptr %l15, !tbaa !23
  br label %bb5
bb4:
  %t35 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  store i32 %t35, ptr %l15, !tbaa !23
  br label %bb5
bb5:
  %t37 = load i32, ptr %l15, !tbaa !23
  store i32 %t37, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local void @compiler_2fmir_2ecompiler_2fmir_3averifier_2ecasesOnce(ptr %v0, ptr %v1, ptr %a0, %"compiler/mir:Range" %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/mir:Range"
  %l2 = alloca ptr
  %l3 = alloca i32
  %l4 = alloca i32
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
  %l21 = alloca i32
  %l24 = alloca i32
  %l46 = alloca i32
  %l49 = alloca i32
  %l68 = alloca ptr
  %l75 = alloca %"compiler/mir:Case"
  %l76 = alloca i64
  %l78 = alloca ptr
  %l85 = alloca %"compiler/mir:Case"
  %l88 = alloca ptr
  %l90 = alloca ptr
  %l97 = alloca %"compiler/mir:Case"
  %s5 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store %"compiler/mir:Range" %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/mir:verifier", ptr %t1, i32 0, i32 0
  %t4 = load ptr, ptr %t3, !tbaa !29
  store ptr %t4, ptr %l2, !tbaa !29
  store i32 0, ptr %l3, !tbaa !23
  %t6 = getelementptr %"compiler/mir:Range", ptr %l1, i32 0, i32 1
  %t7 = load i32, ptr %t6, !tbaa !23
  store i32 %t7, ptr %l4, !tbaa !23
  store i32 1, ptr %l5, !tbaa !23
  %t9 = load i32, ptr %l4, !tbaa !23
  %t10 = load i32, ptr %l3, !tbaa !23
  %t13 = icmp sgt i32 %t9, %t10
  br i1 %t13, label %bb1, label %bb2
bb1:
  %t15 = load i32, ptr %l5, !tbaa !23
  %t17 = icmp sgt i32 %t15, 0
  br i1 %t17, label %bb3, label %bb4
bb2:
  store i32 0, ptr %l21, !tbaa !23
  br label %bb6
bb3:
  %t19 = load i32, ptr %l4, !tbaa !23
  %t20 = load i32, ptr %l3, !tbaa !23
  %t23 = sub i32 %t19, %t20
  %t24 = load i32, ptr %l5, !tbaa !23
  %t27 = add i32 %t23, %t24
  %t29 = sub i32 %t27, 1
  %t30 = load i32, ptr %l5, !tbaa !23
  %t33 = sdiv i32 %t29, %t30
  store i32 %t33, ptr %l24, !tbaa !23
  br label %bb5
bb4:
  store i32 0, ptr %l24, !tbaa !23
  br label %bb5
bb5:
  %t35 = load i32, ptr %l24, !tbaa !23
  store i32 %t35, ptr %l21, !tbaa !23
  br label %bb6
bb6:
  %t36 = load i32, ptr %l21, !tbaa !23
  store i32 %t36, ptr %l6, !tbaa !23
  store i32 0, ptr %l7, !tbaa !23
  br label %bb7
bb7:
  %t37 = load i32, ptr %l7, !tbaa !23
  %t38 = load i32, ptr %l6, !tbaa !23
  %t41 = icmp slt i32 %t37, %t38
  %t43 = xor i1 %t41, true
  br i1 %t43, label %bb8, label %bb9
bb8:
  br label %bb31
bb9:
  br label %bb10
bb10:
  %t45 = load i32, ptr %l3, !tbaa !23
  %t46 = load i32, ptr %l7, !tbaa !23
  %t47 = load i32, ptr %l5, !tbaa !23
  %t50 = mul i32 %t46, %t47
  %t53 = add i32 %t45, %t50
  store i32 %t53, ptr %l8, !tbaa !23
  store i32 0, ptr %l9, !tbaa !23
  %t55 = load i32, ptr %l8, !tbaa !23
  store i32 %t55, ptr %l10, !tbaa !23
  store i32 1, ptr %l11, !tbaa !23
  %t57 = load i32, ptr %l10, !tbaa !23
  %t58 = load i32, ptr %l9, !tbaa !23
  %t61 = icmp sgt i32 %t57, %t58
  br i1 %t61, label %bb11, label %bb12
bb11:
  %t63 = load i32, ptr %l11, !tbaa !23
  %t65 = icmp sgt i32 %t63, 0
  br i1 %t65, label %bb13, label %bb14
bb12:
  store i32 0, ptr %l46, !tbaa !23
  br label %bb16
bb13:
  %t67 = load i32, ptr %l10, !tbaa !23
  %t68 = load i32, ptr %l9, !tbaa !23
  %t71 = sub i32 %t67, %t68
  %t72 = load i32, ptr %l11, !tbaa !23
  %t75 = add i32 %t71, %t72
  %t77 = sub i32 %t75, 1
  %t78 = load i32, ptr %l11, !tbaa !23
  %t81 = sdiv i32 %t77, %t78
  store i32 %t81, ptr %l49, !tbaa !23
  br label %bb15
bb14:
  store i32 0, ptr %l49, !tbaa !23
  br label %bb15
bb15:
  %t83 = load i32, ptr %l49, !tbaa !23
  store i32 %t83, ptr %l46, !tbaa !23
  br label %bb16
bb16:
  %t84 = load i32, ptr %l46, !tbaa !23
  store i32 %t84, ptr %l12, !tbaa !23
  store i32 0, ptr %l13, !tbaa !23
  br label %bb17
bb17:
  %t85 = load i32, ptr %l13, !tbaa !23
  %t86 = load i32, ptr %l12, !tbaa !23
  %t89 = icmp slt i32 %t85, %t86
  %t91 = xor i1 %t89, true
  br i1 %t91, label %bb18, label %bb19
bb18:
  br label %bb29
bb19:
  br label %bb20
bb20:
  %t93 = load i32, ptr %l9, !tbaa !23
  %t94 = load i32, ptr %l13, !tbaa !23
  %t95 = load i32, ptr %l11, !tbaa !23
  %t98 = mul i32 %t94, %t95
  %t101 = add i32 %t93, %t98
  store i32 %t101, ptr %l14, !tbaa !23
  %t103 = load ptr, ptr %l2, !tbaa !29
  %t105 = getelementptr %"compiler/mir:Fn", ptr %t103, i32 0, i32 15
  store ptr %t105, ptr %l68, !tbaa !29
  %t106 = getelementptr %"compiler/mir:Range", ptr %l1, i32 0, i32 0
  %t107 = load i32, ptr %t106, !tbaa !23
  %t109 = sext i32 %t107 to i64
  %t110 = load i32, ptr %l8, !tbaa !23
  %t112 = sext i32 %t110 to i64
  %t115 = add i64 %t109, %t112
  %t116 = load ptr, ptr %l68, !tbaa !29
  %t117 = call ptr @__olang_scope_or(ptr %v1, ptr %t116)
  %t118 = ptrtoint ptr %t117 to i64
  %t120 = inttoptr i64 %t118 to ptr
  %t121 = load ptr, ptr %l68, !tbaa !29
  %t123 = call %"compiler/mir:Case" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aCase_3e_2eAt_3ccompiler_2fmir_3aCase_3e(ptr %t120, ptr %t121, i64 %t115)
  store %"compiler/mir:Case" %t123, ptr %l75
  br label %bb21
bb21:
  %t124 = getelementptr %"compiler/mir:Case", ptr %l75, i32 0, i32 0
  %t125 = load i64, ptr %t124, !tbaa !24
  store i64 %t125, ptr %l76, !tbaa !24
  %t126 = load ptr, ptr %l2, !tbaa !29
  %t128 = getelementptr %"compiler/mir:Fn", ptr %t126, i32 0, i32 15
  store ptr %t128, ptr %l78, !tbaa !29
  %t129 = getelementptr %"compiler/mir:Range", ptr %l1, i32 0, i32 0
  %t130 = load i32, ptr %t129, !tbaa !23
  %t132 = sext i32 %t130 to i64
  %t133 = load i32, ptr %l14, !tbaa !23
  %t135 = sext i32 %t133 to i64
  %t138 = add i64 %t132, %t135
  %t139 = load ptr, ptr %l78, !tbaa !29
  %t140 = call ptr @__olang_scope_or(ptr %v1, ptr %t139)
  %t141 = ptrtoint ptr %t140 to i64
  %t143 = inttoptr i64 %t141 to ptr
  %t144 = load ptr, ptr %l78, !tbaa !29
  %t146 = call %"compiler/mir:Case" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aCase_3e_2eAt_3ccompiler_2fmir_3aCase_3e(ptr %t143, ptr %t144, i64 %t138)
  store %"compiler/mir:Case" %t146, ptr %l85
  br label %bb22
bb22:
  %t147 = getelementptr %"compiler/mir:Case", ptr %l85, i32 0, i32 0
  %t148 = load i64, ptr %t147, !tbaa !24
  %t149 = load i64, ptr %l76, !tbaa !24
  %t151 = icmp eq i64 %t149, %t148
  br i1 %t151, label %bb23, label %bb24
bb23:
  store %olang.scope zeroinitializer, ptr %s5
  %t153 = load ptr, ptr %l0, !tbaa !29
  store ptr %t153, ptr %l88, !tbaa !29
  %t154 = load ptr, ptr %l2, !tbaa !29
  %t156 = getelementptr %"compiler/mir:Fn", ptr %t154, i32 0, i32 15
  store ptr %t156, ptr %l90, !tbaa !29
  %t157 = getelementptr %"compiler/mir:Range", ptr %l1, i32 0, i32 0
  %t158 = load i32, ptr %t157, !tbaa !23
  %t160 = sext i32 %t158 to i64
  %t161 = load i32, ptr %l8, !tbaa !23
  %t163 = sext i32 %t161 to i64
  %t166 = add i64 %t160, %t163
  %t167 = load ptr, ptr %l90, !tbaa !29
  %t168 = call ptr @__olang_scope_or(ptr %v1, ptr %t167)
  %t169 = ptrtoint ptr %t168 to i64
  %t171 = inttoptr i64 %t169 to ptr
  %t172 = load ptr, ptr %l90, !tbaa !29
  %t174 = call %"compiler/mir:Case" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aCase_3e_2eAt_3ccompiler_2fmir_3aCase_3e(ptr %t171, ptr %t172, i64 %t166)
  store %"compiler/mir:Case" %t174, ptr %l97
  br label %bb25
bb24:
  br label %bb27
bb25:
  %t175 = getelementptr %"compiler/mir:Case", ptr %l97, i32 0, i32 0
  %t176 = load i64, ptr %t175, !tbaa !24
  %t177 = extractvalue { i64, ptr } { i64 24, ptr getelementptr inbounds (<{ i64, [24 x i8] }>, ptr @.d90, i32 0, i32 1) }, 1
  %t178 = extractvalue { i64, ptr } { i64 24, ptr getelementptr inbounds (<{ i64, [24 x i8] }>, ptr @.d90, i32 0, i32 1) }, 0
  %t180 = call i64 @__olang_fmt_i64(ptr null, i64 %t176)
  %t181 = add i64 %t178, %t180
  %t182 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d91, i32 0, i32 1) }, 1
  %t183 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d91, i32 0, i32 1) }, 0
  %t184 = add i64 %t181, %t183
  %t185 = call ptr @__olang_scope_alloc(ptr %s5, i64 %t184)
  call void @olang_textcopy(ptr %t185, ptr %t177, i64 %t178)
  %t186 = getelementptr i8, ptr %t185, i64 %t178
  %t187 = call i64 @__olang_fmt_i64(ptr %t186, i64 %t176)
  %t188 = getelementptr i8, ptr %t186, i64 %t180
  call void @olang_textcopy(ptr %t188, ptr %t182, i64 %t183)
  %t189 = insertvalue { i64, ptr } undef, i64 %t184, 0
  %t190 = insertvalue { i64, ptr } %t189, ptr %t185, 1
  %t192 = extractvalue { i64, ptr } %t190, 0
  %t193 = extractvalue { i64, ptr } %t190, 1
  %t194 = mul i64 %t192, 1
  %t195 = call ptr @__olang_scope_alloc(ptr %s5, i64 %t194)
  call void @llvm.memcpy.p0.p0.i64(ptr %t195, ptr %t193, i64 %t194, i1 false)
  %t196 = insertvalue { i64, ptr } undef, i64 %t192, 0
  %t197 = insertvalue { i64, ptr } %t196, ptr %t195, 1
  %t198 = load ptr, ptr %l88, !tbaa !29
  call void @compiler_2fmir_2ecompiler_2fmir_3averifier_2ebad(ptr %v0, ptr %s5, ptr %t198, { i64, ptr } %t197)
  br label %bb26
bb26:
  call void @__olang_scope_close(ptr %s5)
  br label %bb27
bb27:
  br label %bb28
bb28:
  %t200 = load i32, ptr %l13, !tbaa !23
  %t202 = add i32 %t200, 1
  store i32 %t202, ptr %l13, !tbaa !23
  br label %bb17
bb29:
  br label %bb30
bb30:
  %t204 = load i32, ptr %l7, !tbaa !23
  %t206 = add i32 %t204, 1
  store i32 %t206, ptr %l7, !tbaa !23
  br label %bb7
bb31:
  br label %ret
ret:
  ret void
}

define dso_local i1 @compiler_2fmir_2ecompiler_2fmir_3averifier_2efits(ptr %v0, ptr %v1, ptr %a0, i32 %a1, i32 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca i32
  %l3 = alloca ptr
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca { i64, ptr }
  %l7 = alloca { i64, ptr }
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca i64
  %l12 = alloca i64
  %l13 = alloca i64
  %l19 = alloca i1
  %l27 = alloca i1
  %l32 = alloca ptr
  %l35 = alloca i1
  %l36 = alloca i1
  %l37 = alloca ptr
  %l40 = alloca i32
  %l43 = alloca ptr
  %l46 = alloca i32
  %l49 = alloca i1
  %l50 = alloca ptr
  %l53 = alloca i32
  %l56 = alloca ptr
  %l57 = alloca ptr
  %l60 = alloca i32
  %l61 = alloca ptr
  %l64 = alloca i32
  %l66 = alloca i1
  %l67 = alloca ptr
  %l70 = alloca i1
  %l71 = alloca i1
  %l72 = alloca ptr
  %l75 = alloca i1
  %l76 = alloca ptr
  %l79 = alloca i64
  %l82 = alloca ptr
  %l85 = alloca i64
  %l89 = alloca ptr
  %l90 = alloca ptr
  %l93 = alloca i32
  %l94 = alloca ptr
  %l97 = alloca i32
  %l98 = alloca i1
  %l99 = alloca i1
  %l105 = alloca ptr
  %l108 = alloca i32
  %l111 = alloca i1
  %l112 = alloca ptr
  %l115 = alloca i32
  %l118 = alloca ptr
  %l119 = alloca ptr
  %l122 = alloca i32
  %l124 = alloca { i64, ptr }
  %l125 = alloca ptr
  %l126 = alloca ptr
  %l129 = alloca i32
  %l131 = alloca { i64, ptr }
  %l143 = alloca i64
  %l146 = alloca i64
  %l165 = alloca { i64, ptr }
  %l168 = alloca { i64, ptr }
  %l171 = alloca i1
  %s6 = alloca %olang.scope
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  store i32 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/mir:verifier", ptr %t1, i32 0, i32 1
  %t4 = load ptr, ptr %t3, !tbaa !29
  store ptr %t4, ptr %l3, !tbaa !29
  %t6 = load i32, ptr %l1, !tbaa !23
  %t7 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t10 = icmp eq i32 %t6, %t7
  br i1 %t10, label %bb1, label %bb2
bb1:
  store i1 true, ptr %l19, !tbaa !21
  br label %bb3
bb2:
  %t12 = load i32, ptr %l2, !tbaa !23
  %t13 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t16 = icmp eq i32 %t12, %t13
  store i1 %t16, ptr %l19, !tbaa !21
  br label %bb3
bb3:
  %t18 = load i1, ptr %l19, !tbaa !21
  br i1 %t18, label %bb4, label %bb5
bb4:
  store i1 false, ptr %rv
  br label %ret
bb5:
  br label %bb6
bb6:
  %t20 = load ptr, ptr %l0, !tbaa !29
  %t21 = load i32, ptr %l1, !tbaa !23
  %t22 = load i32, ptr %l2, !tbaa !23
  %t26 = call i1 @compiler_2fmir_2ecompiler_2fmir_3averifier_2esameRepr(ptr %v0, ptr %v1, ptr %t20, i32 %t21, i32 %t22)
  store i1 %t26, ptr %l27
  br label %bb7
bb7:
  %t27 = load i1, ptr %l27, !tbaa !21
  br i1 %t27, label %bb8, label %bb9
bb8:
  store i1 true, ptr %rv
  br label %ret
bb9:
  br label %bb10
bb10:
  %t29 = load i32, ptr %l1, !tbaa !23
  %t30 = load i32, ptr @G_2ecompiler_2ftypes_2eNullT, !tbaa !23
  %t33 = icmp eq i32 %t29, %t30
  br i1 %t33, label %bb11, label %bb12
bb11:
  %t35 = load ptr, ptr %l3, !tbaa !29
  store ptr %t35, ptr %l32, !tbaa !29
  %t36 = load i32, ptr %l2, !tbaa !23
  %t37 = load ptr, ptr %l32, !tbaa !29
  %t38 = call ptr @__olang_scope_or(ptr %v1, ptr %t37)
  %t39 = ptrtoint ptr %t38 to i64
  %t41 = inttoptr i64 %t39 to ptr
  %t42 = load ptr, ptr %l32, !tbaa !29
  %t44 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsRef(ptr %t41, ptr %t42, i32 %t36)
  store i1 %t44, ptr %l35
  br label %bb13
bb12:
  br label %bb18
bb13:
  %t45 = load i1, ptr %l35, !tbaa !21
  br i1 %t45, label %bb14, label %bb15
bb14:
  store i1 true, ptr %l36, !tbaa !21
  br label %bb17
bb15:
  %t46 = load ptr, ptr %l3, !tbaa !29
  store ptr %t46, ptr %l37, !tbaa !29
  %t47 = load i32, ptr %l2, !tbaa !23
  %t48 = load ptr, ptr %l37, !tbaa !29
  %t49 = call ptr @__olang_scope_or(ptr %v1, ptr %t48)
  %t50 = ptrtoint ptr %t49 to i64
  %t52 = inttoptr i64 %t50 to ptr
  %t53 = load ptr, ptr %l37, !tbaa !29
  %t55 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %t52, ptr %t53, i32 %t47)
  store i32 %t55, ptr %l40
  br label %bb16
bb16:
  %t56 = load i32, ptr %l40, !range !{i32 0, i32 33}
  %t58 = trunc i64 21 to i32
  %t59 = icmp eq i32 %t56, %t58
  store i1 %t59, ptr %l36, !tbaa !21
  br label %bb17
bb17:
  %t61 = load i1, ptr %l36, !tbaa !21
  store i1 %t61, ptr %rv
  br label %ret
bb18:
  %t62 = load ptr, ptr %l3, !tbaa !29
  store ptr %t62, ptr %l43, !tbaa !29
  %t63 = load i32, ptr %l1, !tbaa !23
  %t64 = load ptr, ptr %l43, !tbaa !29
  %t65 = call ptr @__olang_scope_or(ptr %v1, ptr %t64)
  %t66 = ptrtoint ptr %t65 to i64
  %t68 = inttoptr i64 %t66 to ptr
  %t69 = load ptr, ptr %l43, !tbaa !29
  %t71 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %t68, ptr %t69, i32 %t63)
  store i32 %t71, ptr %l46
  br label %bb19
bb19:
  %t72 = load i32, ptr %l46, !range !{i32 0, i32 33}
  %t74 = trunc i64 21 to i32
  %t75 = icmp eq i32 %t72, %t74
  br i1 %t75, label %bb20, label %bb21
bb20:
  %t77 = load ptr, ptr %l3, !tbaa !29
  store ptr %t77, ptr %l50, !tbaa !29
  %t78 = load i32, ptr %l2, !tbaa !23
  %t79 = load ptr, ptr %l50, !tbaa !29
  %t80 = call ptr @__olang_scope_or(ptr %v1, ptr %t79)
  %t81 = ptrtoint ptr %t80 to i64
  %t83 = inttoptr i64 %t81 to ptr
  %t84 = load ptr, ptr %l50, !tbaa !29
  %t86 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %t83, ptr %t84, i32 %t78)
  store i32 %t86, ptr %l53
  br label %bb22
bb21:
  store i1 false, ptr %l49, !tbaa !21
  br label %bb23
bb22:
  %t87 = load i32, ptr %l53, !range !{i32 0, i32 33}
  %t89 = trunc i64 21 to i32
  %t90 = icmp eq i32 %t87, %t89
  store i1 %t90, ptr %l49, !tbaa !21
  br label %bb23
bb23:
  %t92 = load i1, ptr %l49, !tbaa !21
  br i1 %t92, label %bb24, label %bb25
bb24:
  %t93 = load ptr, ptr %l3, !tbaa !29
  store ptr %t93, ptr %l56, !tbaa !29
  %t94 = load ptr, ptr %l3, !tbaa !29
  store ptr %t94, ptr %l57, !tbaa !29
  %t95 = load i32, ptr %l1, !tbaa !23
  %t96 = load ptr, ptr %l57, !tbaa !29
  %t97 = call ptr @__olang_scope_or(ptr %v1, ptr %t96)
  %t98 = ptrtoint ptr %t97 to i64
  %t100 = inttoptr i64 %t98 to ptr
  %t101 = load ptr, ptr %l57, !tbaa !29
  %t103 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eOrNull(ptr %t100, ptr %t101, i32 %t95)
  store i32 %t103, ptr %l60
  br label %bb26
bb25:
  br label %bb29
bb26:
  %t104 = load ptr, ptr %l3, !tbaa !29
  store ptr %t104, ptr %l61, !tbaa !29
  %t105 = load i32, ptr %l2, !tbaa !23
  %t106 = load ptr, ptr %l61, !tbaa !29
  %t107 = call ptr @__olang_scope_or(ptr %v1, ptr %t106)
  %t108 = ptrtoint ptr %t107 to i64
  %t110 = inttoptr i64 %t108 to ptr
  %t111 = load ptr, ptr %l61, !tbaa !29
  %t113 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eOrNull(ptr %t110, ptr %t111, i32 %t105)
  store i32 %t113, ptr %l64
  br label %bb27
bb27:
  %t114 = load ptr, ptr %l56, !tbaa !29
  %t115 = call ptr @__olang_scope_or(ptr %v1, ptr %t114)
  %t116 = ptrtoint ptr %t115 to i64
  %t118 = inttoptr i64 %t116 to ptr
  %t119 = load ptr, ptr %l56, !tbaa !29
  %t120 = load i32, ptr %l60, !tbaa !23
  %t121 = load i32, ptr %l64, !tbaa !23
  %t122 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eSame(ptr %t118, ptr %t119, i32 %t120, i32 %t121)
  store i1 %t122, ptr %l66
  br label %bb28
bb28:
  %t123 = load i1, ptr %l66, !tbaa !21
  store i1 %t123, ptr %rv
  br label %ret
bb29:
  %t124 = load ptr, ptr %l3, !tbaa !29
  store ptr %t124, ptr %l67, !tbaa !29
  %t125 = load i32, ptr %l1, !tbaa !23
  %t126 = load ptr, ptr %l67, !tbaa !29
  %t127 = call ptr @__olang_scope_or(ptr %v1, ptr %t126)
  %t128 = ptrtoint ptr %t127 to i64
  %t130 = inttoptr i64 %t128 to ptr
  %t131 = load ptr, ptr %l67, !tbaa !29
  %t133 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsRef(ptr %t130, ptr %t131, i32 %t125)
  store i1 %t133, ptr %l70
  br label %bb30
bb30:
  %t134 = load i1, ptr %l70, !tbaa !21
  br i1 %t134, label %bb31, label %bb32
bb31:
  %t135 = load ptr, ptr %l3, !tbaa !29
  store ptr %t135, ptr %l72, !tbaa !29
  %t136 = load i32, ptr %l2, !tbaa !23
  %t137 = load ptr, ptr %l72, !tbaa !29
  %t138 = call ptr @__olang_scope_or(ptr %v1, ptr %t137)
  %t139 = ptrtoint ptr %t138 to i64
  %t141 = inttoptr i64 %t139 to ptr
  %t142 = load ptr, ptr %l72, !tbaa !29
  %t144 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsRef(ptr %t141, ptr %t142, i32 %t136)
  store i1 %t144, ptr %l75
  br label %bb33
bb32:
  store i1 false, ptr %l71, !tbaa !21
  br label %bb34
bb33:
  %t145 = load i1, ptr %l75, !tbaa !21
  store i1 %t145, ptr %l71, !tbaa !21
  br label %bb34
bb34:
  %t146 = load i1, ptr %l71, !tbaa !21
  br i1 %t146, label %bb35, label %bb36
bb35:
  %t147 = load ptr, ptr %l3, !tbaa !29
  store ptr %t147, ptr %l76, !tbaa !29
  %t148 = load i32, ptr %l1, !tbaa !23
  %t149 = load ptr, ptr %l76, !tbaa !29
  %t150 = call ptr @__olang_scope_or(ptr %v1, ptr %t149)
  %t151 = ptrtoint ptr %t150 to i64
  %t153 = inttoptr i64 %t151 to ptr
  %t154 = load ptr, ptr %l76, !tbaa !29
  %t156 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePermOf(ptr %t153, ptr %t154, i32 %t148)
  store i64 %t156, ptr %l79
  br label %bb37
bb36:
  br label %bb45
bb37:
  %t157 = load i64, ptr @G_2ecompiler_2ftypes_2eNullable, !tbaa !24
  %t158 = load i64, ptr %l79, !tbaa !24
  %t160 = or i64 %t158, %t157
  store i64 %t160, ptr %l4, !tbaa !24
  %t162 = load ptr, ptr %l3, !tbaa !29
  store ptr %t162, ptr %l82, !tbaa !29
  %t163 = load i32, ptr %l2, !tbaa !23
  %t164 = load ptr, ptr %l82, !tbaa !29
  %t165 = call ptr @__olang_scope_or(ptr %v1, ptr %t164)
  %t166 = ptrtoint ptr %t165 to i64
  %t168 = inttoptr i64 %t166 to ptr
  %t169 = load ptr, ptr %l82, !tbaa !29
  %t171 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePermOf(ptr %t168, ptr %t169, i32 %t163)
  store i64 %t171, ptr %l85
  br label %bb38
bb38:
  %t172 = load i64, ptr @G_2ecompiler_2ftypes_2eSpread, !tbaa !24
  %t174 = xor i64 %t172, -1
  %t175 = load i64, ptr %l85, !tbaa !24
  %t177 = and i64 %t175, %t174
  store i64 %t177, ptr %l5, !tbaa !24
  %t179 = load ptr, ptr %l0, !tbaa !29
  store ptr %t179, ptr %l89, !tbaa !29
  %t180 = load ptr, ptr %l3, !tbaa !29
  store ptr %t180, ptr %l90, !tbaa !29
  %t181 = load i32, ptr %l1, !tbaa !23
  %t182 = load ptr, ptr %l90, !tbaa !29
  %t183 = call ptr @__olang_scope_or(ptr %v1, ptr %t182)
  %t184 = ptrtoint ptr %t183 to i64
  %t186 = inttoptr i64 %t184 to ptr
  %t187 = load ptr, ptr %l90, !tbaa !29
  %t189 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eReferent(ptr %t186, ptr %t187, i32 %t181)
  store i32 %t189, ptr %l93
  br label %bb39
bb39:
  %t190 = load ptr, ptr %l3, !tbaa !29
  store ptr %t190, ptr %l94, !tbaa !29
  %t191 = load i32, ptr %l2, !tbaa !23
  %t192 = load ptr, ptr %l94, !tbaa !29
  %t193 = call ptr @__olang_scope_or(ptr %v1, ptr %t192)
  %t194 = ptrtoint ptr %t193 to i64
  %t196 = inttoptr i64 %t194 to ptr
  %t197 = load ptr, ptr %l94, !tbaa !29
  %t199 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eReferent(ptr %t196, ptr %t197, i32 %t191)
  store i32 %t199, ptr %l97
  br label %bb40
bb40:
  %t200 = load ptr, ptr %l89, !tbaa !29
  %t201 = load i32, ptr %l93, !tbaa !23
  %t202 = load i32, ptr %l97, !tbaa !23
  %t203 = call i1 @compiler_2fmir_2ecompiler_2fmir_3averifier_2esameRepr(ptr %v0, ptr %v1, ptr %t200, i32 %t201, i32 %t202)
  store i1 %t203, ptr %l98
  br label %bb41
bb41:
  %t204 = load i1, ptr %l98, !tbaa !21
  br i1 %t204, label %bb42, label %bb43
bb42:
  %t205 = load i64, ptr %l4, !tbaa !24
  %t206 = load i64, ptr %l5, !tbaa !24
  %t209 = or i64 %t205, %t206
  %t210 = load i64, ptr %l4, !tbaa !24
  %t213 = icmp eq i64 %t209, %t210
  store i1 %t213, ptr %l99, !tbaa !21
  br label %bb44
bb43:
  store i1 false, ptr %l99, !tbaa !21
  br label %bb44
bb44:
  %t215 = load i1, ptr %l99, !tbaa !21
  store i1 %t215, ptr %rv
  br label %ret
bb45:
  %t216 = load ptr, ptr %l3, !tbaa !29
  store ptr %t216, ptr %l105, !tbaa !29
  %t217 = load i32, ptr %l1, !tbaa !23
  %t218 = load ptr, ptr %l105, !tbaa !29
  %t219 = call ptr @__olang_scope_or(ptr %v1, ptr %t218)
  %t220 = ptrtoint ptr %t219 to i64
  %t222 = inttoptr i64 %t220 to ptr
  %t223 = load ptr, ptr %l105, !tbaa !29
  %t225 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %t222, ptr %t223, i32 %t217)
  store i32 %t225, ptr %l108
  br label %bb46
bb46:
  %t226 = load i32, ptr %l108, !range !{i32 0, i32 33}
  %t228 = trunc i64 22 to i32
  %t229 = icmp eq i32 %t226, %t228
  br i1 %t229, label %bb47, label %bb48
bb47:
  %t231 = load ptr, ptr %l3, !tbaa !29
  store ptr %t231, ptr %l112, !tbaa !29
  %t232 = load i32, ptr %l2, !tbaa !23
  %t233 = load ptr, ptr %l112, !tbaa !29
  %t234 = call ptr @__olang_scope_or(ptr %v1, ptr %t233)
  %t235 = ptrtoint ptr %t234 to i64
  %t237 = inttoptr i64 %t235 to ptr
  %t238 = load ptr, ptr %l112, !tbaa !29
  %t240 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %t237, ptr %t238, i32 %t232)
  store i32 %t240, ptr %l115
  br label %bb49
bb48:
  store i1 false, ptr %l111, !tbaa !21
  br label %bb50
bb49:
  %t241 = load i32, ptr %l115, !range !{i32 0, i32 33}
  %t243 = trunc i64 22 to i32
  %t244 = icmp eq i32 %t241, %t243
  store i1 %t244, ptr %l111, !tbaa !21
  br label %bb50
bb50:
  %t246 = load i1, ptr %l111, !tbaa !21
  br i1 %t246, label %bb51, label %bb52
bb51:
  store %olang.scope zeroinitializer, ptr %s6
  %t247 = load ptr, ptr %l3, !tbaa !29
  store ptr %t247, ptr %l118, !tbaa !29
  %t248 = load ptr, ptr %l3, !tbaa !29
  store ptr %t248, ptr %l119, !tbaa !29
  %t249 = load i32, ptr %l1, !tbaa !23
  %t250 = load ptr, ptr %l119, !tbaa !29
  %t251 = call ptr @__olang_scope_or(ptr %v1, ptr %t250)
  %t252 = ptrtoint ptr %t251 to i64
  %t254 = inttoptr i64 %t252 to ptr
  %t255 = load ptr, ptr %l119, !tbaa !29
  %t257 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParts(ptr %t254, ptr %t255, i32 %t249)
  store i32 %t257, ptr %l122
  br label %bb53
bb52:
  br label %bb76
bb53:
  %t258 = load ptr, ptr %l118, !tbaa !29
  %t259 = call ptr @__olang_scope_or(ptr %v1, ptr %t258)
  %t260 = ptrtoint ptr %t259 to i64
  %t262 = inttoptr i64 %t260 to ptr
  %t263 = load ptr, ptr %l118, !tbaa !29
  %t264 = load i32, ptr %l122, !tbaa !23
  %t265 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %t262, ptr %s6, ptr %t263, i32 %t264)
  store { i64, ptr } %t265, ptr %l124
  br label %bb54
bb54:
  %t266 = load { i64, ptr }, ptr %l124, !tbaa !27
  store { i64, ptr } %t266, ptr %l6, !tbaa !27
  %t267 = load ptr, ptr %l3, !tbaa !29
  store ptr %t267, ptr %l125, !tbaa !29
  %t268 = load ptr, ptr %l3, !tbaa !29
  store ptr %t268, ptr %l126, !tbaa !29
  %t269 = load i32, ptr %l2, !tbaa !23
  %t270 = load ptr, ptr %l126, !tbaa !29
  %t271 = call ptr @__olang_scope_or(ptr %v1, ptr %t270)
  %t272 = ptrtoint ptr %t271 to i64
  %t274 = inttoptr i64 %t272 to ptr
  %t275 = load ptr, ptr %l126, !tbaa !29
  %t277 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParts(ptr %t274, ptr %t275, i32 %t269)
  store i32 %t277, ptr %l129
  br label %bb55
bb55:
  %t278 = load ptr, ptr %l125, !tbaa !29
  %t279 = call ptr @__olang_scope_or(ptr %v1, ptr %t278)
  %t280 = ptrtoint ptr %t279 to i64
  %t282 = inttoptr i64 %t280 to ptr
  %t283 = load ptr, ptr %l125, !tbaa !29
  %t284 = load i32, ptr %l129, !tbaa !23
  %t285 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %t282, ptr %s6, ptr %t283, i32 %t284)
  store { i64, ptr } %t285, ptr %l131
  br label %bb56
bb56:
  %t286 = load { i64, ptr }, ptr %l131, !tbaa !27
  store { i64, ptr } %t286, ptr %l7, !tbaa !27
  %t287 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t289 = extractvalue { i64, ptr } %t287, 0
  %t290 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t292 = extractvalue { i64, ptr } %t290, 0
  %t295 = icmp ne i64 %t289, %t292
  br i1 %t295, label %bb57, label %bb58
bb57:
  call void @__olang_scope_close(ptr %s6)
  store i1 false, ptr %rv
  br label %ret
bb58:
  br label %bb59
bb59:
  store i64 0, ptr %l8, !tbaa !24
  %t298 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t300 = extractvalue { i64, ptr } %t298, 0
  store i64 %t300, ptr %l9, !tbaa !24
  store i64 1, ptr %l10, !tbaa !24
  %t302 = load i64, ptr %l9, !tbaa !24
  %t303 = load i64, ptr %l8, !tbaa !24
  %t306 = icmp sgt i64 %t302, %t303
  br i1 %t306, label %bb60, label %bb61
bb60:
  %t308 = load i64, ptr %l10, !tbaa !24
  %t310 = icmp sgt i64 %t308, 0
  br i1 %t310, label %bb62, label %bb63
bb61:
  store i64 0, ptr %l143, !tbaa !24
  br label %bb65
bb62:
  %t312 = load i64, ptr %l9, !tbaa !24
  %t313 = load i64, ptr %l8, !tbaa !24
  %t316 = sub i64 %t312, %t313
  %t317 = load i64, ptr %l10, !tbaa !24
  %t320 = add i64 %t316, %t317
  %t322 = sub i64 %t320, 1
  %t323 = load i64, ptr %l10, !tbaa !24
  %t326 = sdiv i64 %t322, %t323
  store i64 %t326, ptr %l146, !tbaa !24
  br label %bb64
bb63:
  store i64 0, ptr %l146, !tbaa !24
  br label %bb64
bb64:
  %t328 = load i64, ptr %l146, !tbaa !24
  store i64 %t328, ptr %l143, !tbaa !24
  br label %bb65
bb65:
  %t329 = load i64, ptr %l143, !tbaa !24
  store i64 %t329, ptr %l11, !tbaa !24
  store i64 0, ptr %l12, !tbaa !24
  br label %bb66
bb66:
  %t330 = load i64, ptr %l12, !tbaa !24
  %t331 = load i64, ptr %l11, !tbaa !24
  %t334 = icmp slt i64 %t330, %t331
  %t336 = xor i1 %t334, true
  br i1 %t336, label %bb67, label %bb68
bb67:
  br label %bb75
bb68:
  br label %bb69
bb69:
  %t338 = load i64, ptr %l8, !tbaa !24
  %t339 = load i64, ptr %l12, !tbaa !24
  %t340 = load i64, ptr %l10, !tbaa !24
  %t343 = mul i64 %t339, %t340
  %t346 = add i64 %t338, %t343
  store i64 %t346, ptr %l13, !tbaa !24
  %t348 = load ptr, ptr %l0, !tbaa !29
  %t349 = load { i64, ptr }, ptr %l6, !tbaa !27
  store { i64, ptr } %t349, ptr %l165, !tbaa !27
  %t350 = load i64, ptr %l13, !tbaa !24
  %t352 = getelementptr { i64, ptr }, ptr %l165, i32 0, i32 1
  %t353 = load ptr, ptr %t352, !tbaa !27
  %t354 = getelementptr i32, ptr %t353, i64 %t350
  %t355 = load i32, ptr %t354, !tbaa !33
  %t356 = load { i64, ptr }, ptr %l7, !tbaa !27
  store { i64, ptr } %t356, ptr %l168, !tbaa !27
  %t357 = load i64, ptr %l13, !tbaa !24
  %t359 = getelementptr { i64, ptr }, ptr %l168, i32 0, i32 1
  %t360 = load ptr, ptr %t359, !tbaa !27
  %t361 = getelementptr i32, ptr %t360, i64 %t357
  %t362 = load i32, ptr %t361, !tbaa !33
  %t366 = call i1 @compiler_2fmir_2ecompiler_2fmir_3averifier_2efits(ptr %v0, ptr %v1, ptr %t348, i32 %t355, i32 %t362)
  store i1 %t366, ptr %l171
  br label %bb70
bb70:
  %t367 = load i1, ptr %l171, !tbaa !21
  %t368 = xor i1 %t367, true
  br i1 %t368, label %bb71, label %bb72
bb71:
  call void @__olang_scope_close(ptr %s6)
  store i1 false, ptr %rv
  br label %ret
bb72:
  br label %bb73
bb73:
  br label %bb74
bb74:
  %t371 = load i64, ptr %l12, !tbaa !24
  %t373 = add i64 %t371, 1
  store i64 %t373, ptr %l12, !tbaa !24
  br label %bb66
bb75:
  call void @__olang_scope_close(ptr %s6)
  store i1 true, ptr %rv
  br label %ret
bb76:
  store i1 false, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local void @compiler_2fmir_2ecompiler_2fmir_3averifier_2eflow(ptr %v0, ptr %v1, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i64
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca ptr
  %l6 = alloca i64
  %l8 = alloca ptr
  %l9 = alloca i64
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
  %l24 = alloca i64
  %l25 = alloca i64
  %l26 = alloca i64
  %l27 = alloca i64
  %l28 = alloca i64
  %l34 = alloca ptr
  %l36 = alloca i64
  %l38 = alloca ptr
  %l40 = alloca i64
  %l42 = alloca ptr
  %l44 = alloca i64
  %l45 = alloca ptr
  %l46 = alloca i64
  %l48 = alloca i64
  %l51 = alloca { i64, ptr }
  %l53 = alloca ptr
  %l54 = alloca i64
  %l58 = alloca i64
  %l61 = alloca { i64, ptr }
  %l63 = alloca ptr
  %l64 = alloca i64
  %l68 = alloca i64
  %l71 = alloca { i64, ptr }
  %l73 = alloca ptr
  %l74 = alloca i64
  %l78 = alloca i64
  %l81 = alloca { i64, ptr }
  %l83 = alloca ptr
  %l84 = alloca i64
  %l86 = alloca i64
  %l90 = alloca { i64, ptr }
  %l92 = alloca ptr
  %l93 = alloca i64
  %l95 = alloca i64
  %l99 = alloca { i64, ptr }
  %l101 = alloca ptr
  %l102 = alloca i64
  %l104 = alloca i64
  %l107 = alloca { i64, ptr }
  %l109 = alloca ptr
  %l110 = alloca i64
  %l112 = alloca i64
  %l115 = alloca { i64, ptr }
  %l117 = alloca ptr
  %l118 = alloca i64
  %l120 = alloca i64
  %l123 = alloca { i64, ptr }
  %l127 = alloca i64
  %l128 = alloca ptr
  %l130 = alloca i64
  %l133 = alloca ptr
  %l136 = alloca i32
  %l138 = alloca { i64, ptr }
  %l145 = alloca i64
  %l146 = alloca ptr
  %l148 = alloca i64
  %l151 = alloca ptr
  %l154 = alloca i32
  %l156 = alloca { i64, ptr }
  %l165 = alloca i64
  %l168 = alloca i64
  %l187 = alloca { i64, ptr }
  %l188 = alloca i64
  %l190 = alloca ptr
  %l193 = alloca %"compiler/mir:Local"
  %l205 = alloca i64
  %l208 = alloca i64
  %l227 = alloca { i64, ptr }
  %l244 = alloca i64
  %l247 = alloca i64
  %l266 = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/mir:verifier", ptr %t1, i32 0, i32 0
  %t4 = load ptr, ptr %t3, !tbaa !29
  store ptr %t4, ptr %l1, !tbaa !29
  %t6 = load ptr, ptr %l1, !tbaa !29
  %t8 = getelementptr %"compiler/mir:Fn", ptr %t6, i32 0, i32 9
  store ptr %t8, ptr %l34, !tbaa !29
  %t9 = load ptr, ptr %l34, !tbaa !29
  %t10 = call ptr @__olang_scope_or(ptr %v1, ptr %t9)
  %t11 = ptrtoint ptr %t10 to i64
  %t13 = inttoptr i64 %t11 to ptr
  %t14 = load ptr, ptr %l34, !tbaa !29
  %t15 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aBasicBlock_3e_2eLen_3ccompiler_2fmir_3aBasicBlock_3e(ptr %t13, ptr %t14)
  store i64 %t15, ptr %l36
  br label %bb1
bb1:
  %t16 = load i64, ptr %l36, !tbaa !24
  store i64 %t16, ptr %l2, !tbaa !24
  %t17 = load ptr, ptr %l1, !tbaa !29
  %t19 = getelementptr %"compiler/mir:Fn", ptr %t17, i32 0, i32 7
  store ptr %t19, ptr %l38, !tbaa !29
  %t20 = load ptr, ptr %l38, !tbaa !29
  %t21 = call ptr @__olang_scope_or(ptr %v1, ptr %t20)
  %t22 = ptrtoint ptr %t21 to i64
  %t24 = inttoptr i64 %t22 to ptr
  %t25 = load ptr, ptr %l38, !tbaa !29
  %t26 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aLocal_3e_2eLen_3ccompiler_2fmir_3aLocal_3e(ptr %t24, ptr %t25)
  store i64 %t26, ptr %l40
  br label %bb2
bb2:
  %t27 = load i64, ptr %l40, !tbaa !24
  store i64 %t27, ptr %l3, !tbaa !24
  %t28 = load ptr, ptr %l1, !tbaa !29
  %t30 = getelementptr %"compiler/mir:Fn", ptr %t28, i32 0, i32 8
  store ptr %t30, ptr %l42, !tbaa !29
  %t31 = load ptr, ptr %l42, !tbaa !29
  %t32 = call ptr @__olang_scope_or(ptr %v1, ptr %t31)
  %t33 = ptrtoint ptr %t32 to i64
  %t35 = inttoptr i64 %t33 to ptr
  %t36 = load ptr, ptr %l42, !tbaa !29
  %t37 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aScopeInfo_3e_2eLen_3ccompiler_2fmir_3aScopeInfo_3e(ptr %t35, ptr %t36)
  store i64 %t37, ptr %l44
  br label %bb3
bb3:
  %t38 = load i64, ptr %l44, !tbaa !24
  store i64 %t38, ptr %l4, !tbaa !24
  %t39 = load ptr, ptr %l0, !tbaa !29
  store ptr %t39, ptr %l45, !tbaa !29
  %t40 = ptrtoint ptr %v0 to i64
  store i64 %t40, ptr %l46, !tbaa !24
  %t41 = load i1, ptr @olang_2esole_2ecompiler_2fmir_3averifier_2e6
  br i1 %t41, label %bb4, label %bb5
bb4:
  %t43 = call ptr @__olang_region_make(ptr %v0)
  %t44 = ptrtoint ptr %t43 to i64
  store i64 %t44, ptr %l46, !tbaa !24
  br label %bb5
bb5:
  %t45 = load i64, ptr %l2, !tbaa !24
  store i64 %t45, ptr %l48, !tbaa !24
  %t46 = load i64, ptr %l48, !tbaa !24
  %t47 = icmp sge i64 %t46, 0
  br i1 %t47, label %bb6, label %bb7
bb6:
  %t49 = load i64, ptr %l48, !tbaa !24
  %t50 = mul i64 %t49, 1
  %t51 = load i64, ptr %l46
  %t52 = inttoptr i64 %t51 to ptr
  %t53 = call ptr @__olang_scope_alloc_zeroed(ptr %t52, i64 %t50)
  %t54 = insertvalue { i64, ptr } undef, i64 %t49, 0
  %t55 = insertvalue { i64, ptr } %t54, ptr %t53, 1
  %t56 = load ptr, ptr %l45, !tbaa !29
  %t57 = getelementptr %"compiler/mir:verifier", ptr %t56, i32 0, i32 6
  %t58 = load { i64, ptr }, ptr %t57, !tbaa !27
  store { i64, ptr } %t58, ptr %l51, !tbaa !27
  %t60 = load ptr, ptr %l45, !tbaa !29
  %t61 = getelementptr %"compiler/mir:verifier", ptr %t60, i32 0, i32 6
  store { i64, ptr } %t55, ptr %t61, !tbaa !27
  %t62 = load i1, ptr @olang_2esole_2ecompiler_2fmir_3averifier_2e6
  br i1 %t62, label %bb8, label %bb9
bb7:
  call void @__olang_check_failed(ptr @olang_loc_3fc64ab4d22c7cd1_9c9bbb4060ef765d)
  unreachable
bb8:
  %t64 = load { i64, ptr }, ptr %l51
  %t65 = extractvalue { i64, ptr } %t64, 1
  call void @__olang_region_release(ptr %t65)
  store { i64, ptr } zeroinitializer, ptr %l51
  br label %bb9
bb9:
  %t66 = load ptr, ptr %l0, !tbaa !29
  store ptr %t66, ptr %l53, !tbaa !29
  %t67 = ptrtoint ptr %v0 to i64
  store i64 %t67, ptr %l54, !tbaa !24
  %t68 = load i1, ptr @olang_2esole_2ecompiler_2fmir_3averifier_2e7
  br i1 %t68, label %bb10, label %bb11
bb10:
  %t70 = call ptr @__olang_region_make(ptr %v0)
  %t71 = ptrtoint ptr %t70 to i64
  store i64 %t71, ptr %l54, !tbaa !24
  br label %bb11
bb11:
  %t72 = load i64, ptr %l2, !tbaa !24
  %t73 = load i64, ptr %l3, !tbaa !24
  %t76 = mul i64 %t72, %t73
  store i64 %t76, ptr %l58, !tbaa !24
  %t77 = load i64, ptr %l58, !tbaa !24
  %t78 = icmp sge i64 %t77, 0
  br i1 %t78, label %bb12, label %bb13
bb12:
  %t80 = load i64, ptr %l58, !tbaa !24
  %t81 = mul i64 %t80, 1
  %t82 = load i64, ptr %l54
  %t83 = inttoptr i64 %t82 to ptr
  %t84 = call ptr @__olang_scope_alloc_zeroed(ptr %t83, i64 %t81)
  %t85 = insertvalue { i64, ptr } undef, i64 %t80, 0
  %t86 = insertvalue { i64, ptr } %t85, ptr %t84, 1
  %t87 = load ptr, ptr %l53, !tbaa !29
  %t88 = getelementptr %"compiler/mir:verifier", ptr %t87, i32 0, i32 7
  %t89 = load { i64, ptr }, ptr %t88, !tbaa !27
  store { i64, ptr } %t89, ptr %l61, !tbaa !27
  %t91 = load ptr, ptr %l53, !tbaa !29
  %t92 = getelementptr %"compiler/mir:verifier", ptr %t91, i32 0, i32 7
  store { i64, ptr } %t86, ptr %t92, !tbaa !27
  %t93 = load i1, ptr @olang_2esole_2ecompiler_2fmir_3averifier_2e7
  br i1 %t93, label %bb14, label %bb15
bb13:
  call void @__olang_check_failed(ptr @olang_loc_82a5970c46c34ec4_64144421b638a2b0)
  unreachable
bb14:
  %t95 = load { i64, ptr }, ptr %l61
  %t96 = extractvalue { i64, ptr } %t95, 1
  call void @__olang_region_release(ptr %t96)
  store { i64, ptr } zeroinitializer, ptr %l61
  br label %bb15
bb15:
  %t97 = load ptr, ptr %l0, !tbaa !29
  store ptr %t97, ptr %l63, !tbaa !29
  %t98 = ptrtoint ptr %v0 to i64
  store i64 %t98, ptr %l64, !tbaa !24
  %t99 = load i1, ptr @olang_2esole_2ecompiler_2fmir_3averifier_2e8
  br i1 %t99, label %bb16, label %bb17
bb16:
  %t101 = call ptr @__olang_region_make(ptr %v0)
  %t102 = ptrtoint ptr %t101 to i64
  store i64 %t102, ptr %l64, !tbaa !24
  br label %bb17
bb17:
  %t103 = load i64, ptr %l2, !tbaa !24
  %t104 = load i64, ptr %l3, !tbaa !24
  %t107 = mul i64 %t103, %t104
  store i64 %t107, ptr %l68, !tbaa !24
  %t108 = load i64, ptr %l68, !tbaa !24
  %t109 = icmp sge i64 %t108, 0
  br i1 %t109, label %bb18, label %bb19
bb18:
  %t111 = load i64, ptr %l68, !tbaa !24
  %t112 = mul i64 %t111, 1
  %t113 = load i64, ptr %l64
  %t114 = inttoptr i64 %t113 to ptr
  %t115 = call ptr @__olang_scope_alloc_zeroed(ptr %t114, i64 %t112)
  %t116 = insertvalue { i64, ptr } undef, i64 %t111, 0
  %t117 = insertvalue { i64, ptr } %t116, ptr %t115, 1
  %t118 = load ptr, ptr %l63, !tbaa !29
  %t119 = getelementptr %"compiler/mir:verifier", ptr %t118, i32 0, i32 8
  %t120 = load { i64, ptr }, ptr %t119, !tbaa !27
  store { i64, ptr } %t120, ptr %l71, !tbaa !27
  %t122 = load ptr, ptr %l63, !tbaa !29
  %t123 = getelementptr %"compiler/mir:verifier", ptr %t122, i32 0, i32 8
  store { i64, ptr } %t117, ptr %t123, !tbaa !27
  %t124 = load i1, ptr @olang_2esole_2ecompiler_2fmir_3averifier_2e8
  br i1 %t124, label %bb20, label %bb21
bb19:
  call void @__olang_check_failed(ptr @olang_loc_2ac31f2db6082ba7_5ac69b59325af853)
  unreachable
bb20:
  %t126 = load { i64, ptr }, ptr %l71
  %t127 = extractvalue { i64, ptr } %t126, 1
  call void @__olang_region_release(ptr %t127)
  store { i64, ptr } zeroinitializer, ptr %l71
  br label %bb21
bb21:
  %t128 = load ptr, ptr %l0, !tbaa !29
  store ptr %t128, ptr %l73, !tbaa !29
  %t129 = ptrtoint ptr %v0 to i64
  store i64 %t129, ptr %l74, !tbaa !24
  %t130 = load i1, ptr @olang_2esole_2ecompiler_2fmir_3averifier_2e9
  br i1 %t130, label %bb22, label %bb23
bb22:
  %t132 = call ptr @__olang_region_make(ptr %v0)
  %t133 = ptrtoint ptr %t132 to i64
  store i64 %t133, ptr %l74, !tbaa !24
  br label %bb23
bb23:
  %t134 = load i64, ptr %l2, !tbaa !24
  %t135 = load i64, ptr %l4, !tbaa !24
  %t138 = mul i64 %t134, %t135
  store i64 %t138, ptr %l78, !tbaa !24
  %t139 = load i64, ptr %l78, !tbaa !24
  %t140 = icmp sge i64 %t139, 0
  br i1 %t140, label %bb24, label %bb25
bb24:
  %t142 = load i64, ptr %l78, !tbaa !24
  %t143 = mul i64 %t142, 1
  %t144 = load i64, ptr %l74
  %t145 = inttoptr i64 %t144 to ptr
  %t146 = call ptr @__olang_scope_alloc_zeroed(ptr %t145, i64 %t143)
  %t147 = insertvalue { i64, ptr } undef, i64 %t142, 0
  %t148 = insertvalue { i64, ptr } %t147, ptr %t146, 1
  %t149 = load ptr, ptr %l73, !tbaa !29
  %t150 = getelementptr %"compiler/mir:verifier", ptr %t149, i32 0, i32 9
  %t151 = load { i64, ptr }, ptr %t150, !tbaa !27
  store { i64, ptr } %t151, ptr %l81, !tbaa !27
  %t153 = load ptr, ptr %l73, !tbaa !29
  %t154 = getelementptr %"compiler/mir:verifier", ptr %t153, i32 0, i32 9
  store { i64, ptr } %t148, ptr %t154, !tbaa !27
  %t155 = load i1, ptr @olang_2esole_2ecompiler_2fmir_3averifier_2e9
  br i1 %t155, label %bb26, label %bb27
bb25:
  call void @__olang_check_failed(ptr @olang_loc_397ae699ba890fb2_f6680c8259f4281e)
  unreachable
bb26:
  %t157 = load { i64, ptr }, ptr %l81
  %t158 = extractvalue { i64, ptr } %t157, 1
  call void @__olang_region_release(ptr %t158)
  store { i64, ptr } zeroinitializer, ptr %l81
  br label %bb27
bb27:
  %t159 = load ptr, ptr %l0, !tbaa !29
  store ptr %t159, ptr %l83, !tbaa !29
  %t160 = ptrtoint ptr %v0 to i64
  store i64 %t160, ptr %l84, !tbaa !24
  %t161 = load i1, ptr @olang_2esole_2ecompiler_2fmir_3averifier_2e10
  br i1 %t161, label %bb28, label %bb29
bb28:
  %t163 = call ptr @__olang_region_make(ptr %v0)
  %t164 = ptrtoint ptr %t163 to i64
  store i64 %t164, ptr %l84, !tbaa !24
  br label %bb29
bb29:
  %t165 = load i64, ptr %l2, !tbaa !24
  store i64 %t165, ptr %l86, !tbaa !24
  %t166 = load i64, ptr %l86, !tbaa !24
  %t167 = icmp sge i64 %t166, 0
  br i1 %t167, label %bb30, label %bb31
bb30:
  %t169 = load i64, ptr %l86, !tbaa !24
  %t170 = icmp sle i64 %t169, 1152921504606846975
  br i1 %t170, label %bb32, label %bb33
bb31:
  call void @__olang_check_failed(ptr @olang_loc_2836fb8ea59de3a5_79eeb5d0a68fc1c9)
  unreachable
bb32:
  %t172 = load i64, ptr %l86, !tbaa !24
  %t173 = mul i64 %t172, 8
  %t174 = load i64, ptr %l84
  %t175 = inttoptr i64 %t174 to ptr
  %t176 = call ptr @__olang_scope_alloc_zeroed(ptr %t175, i64 %t173)
  %t177 = insertvalue { i64, ptr } undef, i64 %t172, 0
  %t178 = insertvalue { i64, ptr } %t177, ptr %t176, 1
  %t179 = load ptr, ptr %l83, !tbaa !29
  %t180 = getelementptr %"compiler/mir:verifier", ptr %t179, i32 0, i32 10
  %t181 = load { i64, ptr }, ptr %t180, !tbaa !27
  store { i64, ptr } %t181, ptr %l90, !tbaa !27
  %t183 = load ptr, ptr %l83, !tbaa !29
  %t184 = getelementptr %"compiler/mir:verifier", ptr %t183, i32 0, i32 10
  store { i64, ptr } %t178, ptr %t184, !tbaa !27
  %t185 = load i1, ptr @olang_2esole_2ecompiler_2fmir_3averifier_2e10
  br i1 %t185, label %bb34, label %bb35
bb33:
  call void @__olang_check_failed(ptr @olang_loc_2836fb8ea59de3a5_79eeb5d0a68fc1c9)
  unreachable
bb34:
  %t187 = load { i64, ptr }, ptr %l90
  %t188 = extractvalue { i64, ptr } %t187, 1
  call void @__olang_region_release(ptr %t188)
  store { i64, ptr } zeroinitializer, ptr %l90
  br label %bb35
bb35:
  %t189 = load ptr, ptr %l0, !tbaa !29
  store ptr %t189, ptr %l92, !tbaa !29
  %t190 = ptrtoint ptr %v0 to i64
  store i64 %t190, ptr %l93, !tbaa !24
  %t191 = load i1, ptr @olang_2esole_2ecompiler_2fmir_3averifier_2e11
  br i1 %t191, label %bb36, label %bb37
bb36:
  %t193 = call ptr @__olang_region_make(ptr %v0)
  %t194 = ptrtoint ptr %t193 to i64
  store i64 %t194, ptr %l93, !tbaa !24
  br label %bb37
bb37:
  %t195 = load i64, ptr %l2, !tbaa !24
  store i64 %t195, ptr %l95, !tbaa !24
  %t196 = load i64, ptr %l95, !tbaa !24
  %t197 = icmp sge i64 %t196, 0
  br i1 %t197, label %bb38, label %bb39
bb38:
  %t199 = load i64, ptr %l95, !tbaa !24
  %t200 = icmp sle i64 %t199, 1152921504606846975
  br i1 %t200, label %bb40, label %bb41
bb39:
  call void @__olang_check_failed(ptr @olang_loc_13b0920ad4a1e938_72d556b41507b57c)
  unreachable
bb40:
  %t202 = load i64, ptr %l95, !tbaa !24
  %t203 = mul i64 %t202, 8
  %t204 = load i64, ptr %l93
  %t205 = inttoptr i64 %t204 to ptr
  %t206 = call ptr @__olang_scope_alloc_zeroed(ptr %t205, i64 %t203)
  %t207 = insertvalue { i64, ptr } undef, i64 %t202, 0
  %t208 = insertvalue { i64, ptr } %t207, ptr %t206, 1
  %t209 = load ptr, ptr %l92, !tbaa !29
  %t210 = getelementptr %"compiler/mir:verifier", ptr %t209, i32 0, i32 11
  %t211 = load { i64, ptr }, ptr %t210, !tbaa !27
  store { i64, ptr } %t211, ptr %l99, !tbaa !27
  %t213 = load ptr, ptr %l92, !tbaa !29
  %t214 = getelementptr %"compiler/mir:verifier", ptr %t213, i32 0, i32 11
  store { i64, ptr } %t208, ptr %t214, !tbaa !27
  %t215 = load i1, ptr @olang_2esole_2ecompiler_2fmir_3averifier_2e11
  br i1 %t215, label %bb42, label %bb43
bb41:
  call void @__olang_check_failed(ptr @olang_loc_13b0920ad4a1e938_72d556b41507b57c)
  unreachable
bb42:
  %t217 = load { i64, ptr }, ptr %l99
  %t218 = extractvalue { i64, ptr } %t217, 1
  call void @__olang_region_release(ptr %t218)
  store { i64, ptr } zeroinitializer, ptr %l99
  br label %bb43
bb43:
  %t219 = load ptr, ptr %l0, !tbaa !29
  store ptr %t219, ptr %l101, !tbaa !29
  %t220 = ptrtoint ptr %v0 to i64
  store i64 %t220, ptr %l102, !tbaa !24
  %t221 = load i1, ptr @olang_2esole_2ecompiler_2fmir_3averifier_2e14
  br i1 %t221, label %bb44, label %bb45
bb44:
  %t223 = call ptr @__olang_region_make(ptr %v0)
  %t224 = ptrtoint ptr %t223 to i64
  store i64 %t224, ptr %l102, !tbaa !24
  br label %bb45
bb45:
  %t225 = load i64, ptr %l3, !tbaa !24
  store i64 %t225, ptr %l104, !tbaa !24
  %t226 = load i64, ptr %l104, !tbaa !24
  %t227 = icmp sge i64 %t226, 0
  br i1 %t227, label %bb46, label %bb47
bb46:
  %t229 = load i64, ptr %l104, !tbaa !24
  %t230 = mul i64 %t229, 1
  %t231 = load i64, ptr %l102
  %t232 = inttoptr i64 %t231 to ptr
  %t233 = call ptr @__olang_scope_alloc_zeroed(ptr %t232, i64 %t230)
  %t234 = insertvalue { i64, ptr } undef, i64 %t229, 0
  %t235 = insertvalue { i64, ptr } %t234, ptr %t233, 1
  %t236 = load ptr, ptr %l101, !tbaa !29
  %t237 = getelementptr %"compiler/mir:verifier", ptr %t236, i32 0, i32 14
  %t238 = load { i64, ptr }, ptr %t237, !tbaa !27
  store { i64, ptr } %t238, ptr %l107, !tbaa !27
  %t240 = load ptr, ptr %l101, !tbaa !29
  %t241 = getelementptr %"compiler/mir:verifier", ptr %t240, i32 0, i32 14
  store { i64, ptr } %t235, ptr %t241, !tbaa !27
  %t242 = load i1, ptr @olang_2esole_2ecompiler_2fmir_3averifier_2e14
  br i1 %t242, label %bb48, label %bb49
bb47:
  call void @__olang_check_failed(ptr @olang_loc_f0f79482ff998b1b_575016ccefde52df)
  unreachable
bb48:
  %t244 = load { i64, ptr }, ptr %l107
  %t245 = extractvalue { i64, ptr } %t244, 1
  call void @__olang_region_release(ptr %t245)
  store { i64, ptr } zeroinitializer, ptr %l107
  br label %bb49
bb49:
  %t246 = load ptr, ptr %l0, !tbaa !29
  store ptr %t246, ptr %l109, !tbaa !29
  %t247 = ptrtoint ptr %v0 to i64
  store i64 %t247, ptr %l110, !tbaa !24
  %t248 = load i1, ptr @olang_2esole_2ecompiler_2fmir_3averifier_2e15
  br i1 %t248, label %bb50, label %bb51
bb50:
  %t250 = call ptr @__olang_region_make(ptr %v0)
  %t251 = ptrtoint ptr %t250 to i64
  store i64 %t251, ptr %l110, !tbaa !24
  br label %bb51
bb51:
  %t252 = load i64, ptr %l3, !tbaa !24
  store i64 %t252, ptr %l112, !tbaa !24
  %t253 = load i64, ptr %l112, !tbaa !24
  %t254 = icmp sge i64 %t253, 0
  br i1 %t254, label %bb52, label %bb53
bb52:
  %t256 = load i64, ptr %l112, !tbaa !24
  %t257 = mul i64 %t256, 1
  %t258 = load i64, ptr %l110
  %t259 = inttoptr i64 %t258 to ptr
  %t260 = call ptr @__olang_scope_alloc_zeroed(ptr %t259, i64 %t257)
  %t261 = insertvalue { i64, ptr } undef, i64 %t256, 0
  %t262 = insertvalue { i64, ptr } %t261, ptr %t260, 1
  %t263 = load ptr, ptr %l109, !tbaa !29
  %t264 = getelementptr %"compiler/mir:verifier", ptr %t263, i32 0, i32 15
  %t265 = load { i64, ptr }, ptr %t264, !tbaa !27
  store { i64, ptr } %t265, ptr %l115, !tbaa !27
  %t267 = load ptr, ptr %l109, !tbaa !29
  %t268 = getelementptr %"compiler/mir:verifier", ptr %t267, i32 0, i32 15
  store { i64, ptr } %t262, ptr %t268, !tbaa !27
  %t269 = load i1, ptr @olang_2esole_2ecompiler_2fmir_3averifier_2e15
  br i1 %t269, label %bb54, label %bb55
bb53:
  call void @__olang_check_failed(ptr @olang_loc_a4c79ab2e91ac186_f4797f1baf8f450a)
  unreachable
bb54:
  %t271 = load { i64, ptr }, ptr %l115
  %t272 = extractvalue { i64, ptr } %t271, 1
  call void @__olang_region_release(ptr %t272)
  store { i64, ptr } zeroinitializer, ptr %l115
  br label %bb55
bb55:
  %t273 = load ptr, ptr %l0, !tbaa !29
  store ptr %t273, ptr %l117, !tbaa !29
  %t274 = ptrtoint ptr %v0 to i64
  store i64 %t274, ptr %l118, !tbaa !24
  %t275 = load i1, ptr @olang_2esole_2ecompiler_2fmir_3averifier_2e16
  br i1 %t275, label %bb56, label %bb57
bb56:
  %t277 = call ptr @__olang_region_make(ptr %v0)
  %t278 = ptrtoint ptr %t277 to i64
  store i64 %t278, ptr %l118, !tbaa !24
  br label %bb57
bb57:
  %t279 = load i64, ptr %l4, !tbaa !24
  store i64 %t279, ptr %l120, !tbaa !24
  %t280 = load i64, ptr %l120, !tbaa !24
  %t281 = icmp sge i64 %t280, 0
  br i1 %t281, label %bb58, label %bb59
bb58:
  %t283 = load i64, ptr %l120, !tbaa !24
  %t284 = mul i64 %t283, 1
  %t285 = load i64, ptr %l118
  %t286 = inttoptr i64 %t285 to ptr
  %t287 = call ptr @__olang_scope_alloc_zeroed(ptr %t286, i64 %t284)
  %t288 = insertvalue { i64, ptr } undef, i64 %t283, 0
  %t289 = insertvalue { i64, ptr } %t288, ptr %t287, 1
  %t290 = load ptr, ptr %l117, !tbaa !29
  %t291 = getelementptr %"compiler/mir:verifier", ptr %t290, i32 0, i32 16
  %t292 = load { i64, ptr }, ptr %t291, !tbaa !27
  store { i64, ptr } %t292, ptr %l123, !tbaa !27
  %t294 = load ptr, ptr %l117, !tbaa !29
  %t295 = getelementptr %"compiler/mir:verifier", ptr %t294, i32 0, i32 16
  store { i64, ptr } %t289, ptr %t295, !tbaa !27
  %t296 = load i1, ptr @olang_2esole_2ecompiler_2fmir_3averifier_2e16
  br i1 %t296, label %bb60, label %bb61
bb59:
  call void @__olang_check_failed(ptr @olang_loc_2c486f9205676389_1881cd4b4e7e41e5)
  unreachable
bb60:
  %t298 = load { i64, ptr }, ptr %l123
  %t299 = extractvalue { i64, ptr } %t298, 1
  call void @__olang_region_release(ptr %t299)
  store { i64, ptr } zeroinitializer, ptr %l123
  br label %bb61
bb61:
  %t300 = load ptr, ptr %l1, !tbaa !29
  %t302 = getelementptr %"compiler/mir:Fn", ptr %t300, i32 0, i32 4
  store ptr %t302, ptr %l5, !tbaa !29
  store i64 0, ptr %l6, !tbaa !24
  br label %bb62
bb62:
  %t304 = load i64, ptr %l6, !tbaa !24
  store i64 %t304, ptr %l127, !tbaa !24
  %t305 = load ptr, ptr %l5, !tbaa !29
  store ptr %t305, ptr %l128, !tbaa !29
  %t306 = load ptr, ptr %l128, !tbaa !29
  %t307 = call ptr @__olang_scope_or(ptr %v1, ptr %t306)
  %t308 = ptrtoint ptr %t307 to i64
  %t310 = inttoptr i64 %t308 to ptr
  %t311 = load ptr, ptr %l128, !tbaa !29
  %t312 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aLocalId_3e_2eLen_3ccompiler_2fmir_3aLocalId_3e(ptr %t310, ptr %t311)
  store i64 %t312, ptr %l130
  br label %bb63
bb63:
  %t313 = load i64, ptr %l127, !tbaa !24
  %t314 = load i64, ptr %l130, !tbaa !24
  %t315 = icmp slt i64 %t313, %t314
  %t317 = xor i1 %t315, true
  br i1 %t317, label %bb64, label %bb65
bb64:
  br label %bb69
bb65:
  br label %bb66
bb66:
  %t319 = load ptr, ptr %l5, !tbaa !29
  store ptr %t319, ptr %l133, !tbaa !29
  %t320 = load i64, ptr %l6, !tbaa !24
  %t321 = load ptr, ptr %l133, !tbaa !29
  %t322 = call ptr @__olang_scope_or(ptr %v1, ptr %t321)
  %t323 = ptrtoint ptr %t322 to i64
  %t325 = inttoptr i64 %t323 to ptr
  %t326 = load ptr, ptr %l133, !tbaa !29
  %t328 = call i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aLocalId_3e_2eAt_3ccompiler_2fmir_3aLocalId_3e(ptr %t325, ptr %t326, i64 %t320)
  store i32 %t328, ptr %l136
  br label %bb67
bb67:
  %t329 = load i32, ptr %l136, !tbaa !23
  %t330 = load ptr, ptr %l0, !tbaa !29
  %t332 = getelementptr %"compiler/mir:verifier", ptr %t330, i32 0, i32 14
  %t333 = load { i64, ptr }, ptr %t332, !tbaa !27
  store { i64, ptr } %t333, ptr %l138, !tbaa !27
  %t336 = sext i32 %t329 to i64
  %t338 = getelementptr { i64, ptr }, ptr %l138, i32 0, i32 1
  %t339 = load ptr, ptr %t338, !tbaa !27
  %t340 = getelementptr i1, ptr %t339, i64 %t336
  store i1 true, ptr %t340, !tbaa !31
  br label %bb68
bb68:
  %t341 = load i64, ptr %l6, !tbaa !24
  %t343 = add i64 %t341, 1
  store i64 %t343, ptr %l6, !tbaa !24
  br label %bb62
bb69:
  %t345 = load ptr, ptr %l1, !tbaa !29
  %t347 = getelementptr %"compiler/mir:Fn", ptr %t345, i32 0, i32 5
  store ptr %t347, ptr %l8, !tbaa !29
  store i64 0, ptr %l9, !tbaa !24
  br label %bb70
bb70:
  %t349 = load i64, ptr %l9, !tbaa !24
  store i64 %t349, ptr %l145, !tbaa !24
  %t350 = load ptr, ptr %l8, !tbaa !29
  store ptr %t350, ptr %l146, !tbaa !29
  %t351 = load ptr, ptr %l146, !tbaa !29
  %t352 = call ptr @__olang_scope_or(ptr %v1, ptr %t351)
  %t353 = ptrtoint ptr %t352 to i64
  %t355 = inttoptr i64 %t353 to ptr
  %t356 = load ptr, ptr %l146, !tbaa !29
  %t357 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aLocalId_3e_2eLen_3ccompiler_2fmir_3aLocalId_3e(ptr %t355, ptr %t356)
  store i64 %t357, ptr %l148
  br label %bb71
bb71:
  %t358 = load i64, ptr %l145, !tbaa !24
  %t359 = load i64, ptr %l148, !tbaa !24
  %t360 = icmp slt i64 %t358, %t359
  %t362 = xor i1 %t360, true
  br i1 %t362, label %bb72, label %bb73
bb72:
  br label %bb77
bb73:
  br label %bb74
bb74:
  %t364 = load ptr, ptr %l8, !tbaa !29
  store ptr %t364, ptr %l151, !tbaa !29
  %t365 = load i64, ptr %l9, !tbaa !24
  %t366 = load ptr, ptr %l151, !tbaa !29
  %t367 = call ptr @__olang_scope_or(ptr %v1, ptr %t366)
  %t368 = ptrtoint ptr %t367 to i64
  %t370 = inttoptr i64 %t368 to ptr
  %t371 = load ptr, ptr %l151, !tbaa !29
  %t373 = call i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aLocalId_3e_2eAt_3ccompiler_2fmir_3aLocalId_3e(ptr %t370, ptr %t371, i64 %t365)
  store i32 %t373, ptr %l154
  br label %bb75
bb75:
  %t374 = load i32, ptr %l154, !tbaa !23
  %t375 = load ptr, ptr %l0, !tbaa !29
  %t377 = getelementptr %"compiler/mir:verifier", ptr %t375, i32 0, i32 14
  %t378 = load { i64, ptr }, ptr %t377, !tbaa !27
  store { i64, ptr } %t378, ptr %l156, !tbaa !27
  %t381 = sext i32 %t374 to i64
  %t383 = getelementptr { i64, ptr }, ptr %l156, i32 0, i32 1
  %t384 = load ptr, ptr %t383, !tbaa !27
  %t385 = getelementptr i1, ptr %t384, i64 %t381
  store i1 true, ptr %t385, !tbaa !31
  br label %bb76
bb76:
  %t386 = load i64, ptr %l9, !tbaa !24
  %t388 = add i64 %t386, 1
  store i64 %t388, ptr %l9, !tbaa !24
  br label %bb70
bb77:
  store i64 0, ptr %l11, !tbaa !24
  %t390 = load i64, ptr %l3, !tbaa !24
  store i64 %t390, ptr %l12, !tbaa !24
  store i64 1, ptr %l13, !tbaa !24
  %t392 = load i64, ptr %l12, !tbaa !24
  %t393 = load i64, ptr %l11, !tbaa !24
  %t396 = icmp sgt i64 %t392, %t393
  br i1 %t396, label %bb78, label %bb79
bb78:
  %t398 = load i64, ptr %l13, !tbaa !24
  %t400 = icmp sgt i64 %t398, 0
  br i1 %t400, label %bb80, label %bb81
bb79:
  store i64 0, ptr %l165, !tbaa !24
  br label %bb83
bb80:
  %t402 = load i64, ptr %l12, !tbaa !24
  %t403 = load i64, ptr %l11, !tbaa !24
  %t406 = sub i64 %t402, %t403
  %t407 = load i64, ptr %l13, !tbaa !24
  %t410 = add i64 %t406, %t407
  %t412 = sub i64 %t410, 1
  %t413 = load i64, ptr %l13, !tbaa !24
  %t416 = sdiv i64 %t412, %t413
  store i64 %t416, ptr %l168, !tbaa !24
  br label %bb82
bb81:
  store i64 0, ptr %l168, !tbaa !24
  br label %bb82
bb82:
  %t418 = load i64, ptr %l168, !tbaa !24
  store i64 %t418, ptr %l165, !tbaa !24
  br label %bb83
bb83:
  %t419 = load i64, ptr %l165, !tbaa !24
  store i64 %t419, ptr %l14, !tbaa !24
  store i64 0, ptr %l15, !tbaa !24
  br label %bb84
bb84:
  %t420 = load i64, ptr %l15, !tbaa !24
  %t421 = load i64, ptr %l14, !tbaa !24
  %t424 = icmp slt i64 %t420, %t421
  %t426 = xor i1 %t424, true
  br i1 %t426, label %bb85, label %bb86
bb85:
  br label %bb90
bb86:
  br label %bb87
bb87:
  %t428 = load i64, ptr %l11, !tbaa !24
  %t429 = load i64, ptr %l15, !tbaa !24
  %t430 = load i64, ptr %l13, !tbaa !24
  %t433 = mul i64 %t429, %t430
  %t436 = add i64 %t428, %t433
  store i64 %t436, ptr %l16, !tbaa !24
  %t438 = load ptr, ptr %l0, !tbaa !29
  %t440 = getelementptr %"compiler/mir:verifier", ptr %t438, i32 0, i32 15
  %t441 = load { i64, ptr }, ptr %t440, !tbaa !27
  store { i64, ptr } %t441, ptr %l187, !tbaa !27
  %t442 = load i64, ptr %l16, !tbaa !24
  store i64 %t442, ptr %l188, !tbaa !24
  %t443 = load ptr, ptr %l1, !tbaa !29
  %t445 = getelementptr %"compiler/mir:Fn", ptr %t443, i32 0, i32 7
  store ptr %t445, ptr %l190, !tbaa !29
  %t446 = load i64, ptr %l16, !tbaa !24
  %t447 = load ptr, ptr %l190, !tbaa !29
  %t448 = call ptr @__olang_scope_or(ptr %v1, ptr %t447)
  %t449 = ptrtoint ptr %t448 to i64
  %t451 = inttoptr i64 %t449 to ptr
  %t452 = load ptr, ptr %l190, !tbaa !29
  %t454 = call %"compiler/mir:Local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aLocal_3e_2eAt_3ccompiler_2fmir_3aLocal_3e(ptr %t451, ptr %t452, i64 %t446)
  store %"compiler/mir:Local" %t454, ptr %l193
  br label %bb88
bb88:
  %t455 = getelementptr %"compiler/mir:Local", ptr %l193, i32 0, i32 4
  %t456 = load { i64, [1 x i64] }, ptr %t455
  %t458 = extractvalue { i64, [1 x i64] } %t456, 0
  %t459 = icmp eq i64 %t458, 3
  %t461 = load i64, ptr %l188, !tbaa !24
  %t462 = getelementptr { i64, ptr }, ptr %l187, i32 0, i32 1
  %t463 = load ptr, ptr %t462, !tbaa !27
  %t464 = getelementptr i1, ptr %t463, i64 %t461
  store i1 %t459, ptr %t464, !tbaa !31
  br label %bb89
bb89:
  %t465 = load i64, ptr %l15, !tbaa !24
  %t467 = add i64 %t465, 1
  store i64 %t467, ptr %l15, !tbaa !24
  br label %bb84
bb90:
  %t469 = load ptr, ptr %l0, !tbaa !29
  %t471 = getelementptr %"compiler/mir:verifier", ptr %t469, i32 0, i32 5
  store i1 false, ptr %t471, !tbaa !21
  %t472 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2fmir_2ecompiler_2fmir_3averifier_2eenter(ptr %v0, ptr %v1, ptr %t472, i32 0)
  br label %bb91
bb91:
  br label %bb92
bb92:
  %t474 = load ptr, ptr %l0, !tbaa !29
  %t476 = getelementptr %"compiler/mir:verifier", ptr %t474, i32 0, i32 18
  store i1 false, ptr %t476, !tbaa !21
  store i64 0, ptr %l17, !tbaa !24
  %t477 = load i64, ptr %l2, !tbaa !24
  store i64 %t477, ptr %l18, !tbaa !24
  store i64 1, ptr %l19, !tbaa !24
  %t479 = load i64, ptr %l18, !tbaa !24
  %t480 = load i64, ptr %l17, !tbaa !24
  %t483 = icmp sgt i64 %t479, %t480
  br i1 %t483, label %bb93, label %bb94
bb93:
  %t485 = load i64, ptr %l19, !tbaa !24
  %t487 = icmp sgt i64 %t485, 0
  br i1 %t487, label %bb95, label %bb96
bb94:
  store i64 0, ptr %l205, !tbaa !24
  br label %bb98
bb95:
  %t489 = load i64, ptr %l18, !tbaa !24
  %t490 = load i64, ptr %l17, !tbaa !24
  %t493 = sub i64 %t489, %t490
  %t494 = load i64, ptr %l19, !tbaa !24
  %t497 = add i64 %t493, %t494
  %t499 = sub i64 %t497, 1
  %t500 = load i64, ptr %l19, !tbaa !24
  %t503 = sdiv i64 %t499, %t500
  store i64 %t503, ptr %l208, !tbaa !24
  br label %bb97
bb96:
  store i64 0, ptr %l208, !tbaa !24
  br label %bb97
bb97:
  %t505 = load i64, ptr %l208, !tbaa !24
  store i64 %t505, ptr %l205, !tbaa !24
  br label %bb98
bb98:
  %t506 = load i64, ptr %l205, !tbaa !24
  store i64 %t506, ptr %l20, !tbaa !24
  store i64 0, ptr %l21, !tbaa !24
  br label %bb99
bb99:
  %t507 = load i64, ptr %l21, !tbaa !24
  %t508 = load i64, ptr %l20, !tbaa !24
  %t511 = icmp slt i64 %t507, %t508
  %t513 = xor i1 %t511, true
  br i1 %t513, label %bb100, label %bb101
bb100:
  br label %bb108
bb101:
  br label %bb102
bb102:
  %t515 = load i64, ptr %l17, !tbaa !24
  %t516 = load i64, ptr %l21, !tbaa !24
  %t517 = load i64, ptr %l19, !tbaa !24
  %t520 = mul i64 %t516, %t517
  %t523 = add i64 %t515, %t520
  store i64 %t523, ptr %l22, !tbaa !24
  %t525 = load ptr, ptr %l0, !tbaa !29
  %t527 = getelementptr %"compiler/mir:verifier", ptr %t525, i32 0, i32 6
  %t528 = load { i64, ptr }, ptr %t527, !tbaa !27
  store { i64, ptr } %t528, ptr %l227, !tbaa !27
  %t529 = load i64, ptr %l22, !tbaa !24
  %t531 = getelementptr { i64, ptr }, ptr %l227, i32 0, i32 1
  %t532 = load ptr, ptr %t531, !tbaa !27
  %t533 = getelementptr i1, ptr %t532, i64 %t529
  %t534 = load i1, ptr %t533, !tbaa !31
  br i1 %t534, label %bb103, label %bb104
bb103:
  %t536 = load ptr, ptr %l0, !tbaa !29
  %t537 = load i64, ptr %l22, !tbaa !24
  %t539 = trunc i64 %t537 to i32
  call void @compiler_2fmir_2ecompiler_2fmir_3averifier_2ewalk(ptr %v0, ptr %v1, ptr %t536, i32 %t539)
  br label %bb105
bb104:
  br label %bb106
bb105:
  br label %bb106
bb106:
  br label %bb107
bb107:
  %t543 = load i64, ptr %l21, !tbaa !24
  %t545 = add i64 %t543, 1
  store i64 %t545, ptr %l21, !tbaa !24
  br label %bb99
bb108:
  %t547 = load ptr, ptr %l0, !tbaa !29
  %t549 = getelementptr %"compiler/mir:verifier", ptr %t547, i32 0, i32 18
  %t550 = load i1, ptr %t549, !tbaa !21
  %t552 = xor i1 %t550, true
  br i1 %t552, label %bb109, label %bb110
bb109:
  br label %bb113
bb110:
  br label %bb111
bb111:
  br label %bb112
bb112:
  br label %bb92
bb113:
  %t554 = load ptr, ptr %l0, !tbaa !29
  %t556 = getelementptr %"compiler/mir:verifier", ptr %t554, i32 0, i32 5
  store i1 true, ptr %t556, !tbaa !21
  store i64 0, ptr %l23, !tbaa !24
  %t557 = load i64, ptr %l2, !tbaa !24
  store i64 %t557, ptr %l24, !tbaa !24
  store i64 1, ptr %l25, !tbaa !24
  %t559 = load i64, ptr %l24, !tbaa !24
  %t560 = load i64, ptr %l23, !tbaa !24
  %t563 = icmp sgt i64 %t559, %t560
  br i1 %t563, label %bb114, label %bb115
bb114:
  %t565 = load i64, ptr %l25, !tbaa !24
  %t567 = icmp sgt i64 %t565, 0
  br i1 %t567, label %bb116, label %bb117
bb115:
  store i64 0, ptr %l244, !tbaa !24
  br label %bb119
bb116:
  %t569 = load i64, ptr %l24, !tbaa !24
  %t570 = load i64, ptr %l23, !tbaa !24
  %t573 = sub i64 %t569, %t570
  %t574 = load i64, ptr %l25, !tbaa !24
  %t577 = add i64 %t573, %t574
  %t579 = sub i64 %t577, 1
  %t580 = load i64, ptr %l25, !tbaa !24
  %t583 = sdiv i64 %t579, %t580
  store i64 %t583, ptr %l247, !tbaa !24
  br label %bb118
bb117:
  store i64 0, ptr %l247, !tbaa !24
  br label %bb118
bb118:
  %t585 = load i64, ptr %l247, !tbaa !24
  store i64 %t585, ptr %l244, !tbaa !24
  br label %bb119
bb119:
  %t586 = load i64, ptr %l244, !tbaa !24
  store i64 %t586, ptr %l26, !tbaa !24
  store i64 0, ptr %l27, !tbaa !24
  br label %bb120
bb120:
  %t587 = load i64, ptr %l27, !tbaa !24
  %t588 = load i64, ptr %l26, !tbaa !24
  %t591 = icmp slt i64 %t587, %t588
  %t593 = xor i1 %t591, true
  br i1 %t593, label %bb121, label %bb122
bb121:
  br label %bb129
bb122:
  br label %bb123
bb123:
  %t595 = load i64, ptr %l23, !tbaa !24
  %t596 = load i64, ptr %l27, !tbaa !24
  %t597 = load i64, ptr %l25, !tbaa !24
  %t600 = mul i64 %t596, %t597
  %t603 = add i64 %t595, %t600
  store i64 %t603, ptr %l28, !tbaa !24
  %t605 = load ptr, ptr %l0, !tbaa !29
  %t607 = getelementptr %"compiler/mir:verifier", ptr %t605, i32 0, i32 6
  %t608 = load { i64, ptr }, ptr %t607, !tbaa !27
  store { i64, ptr } %t608, ptr %l266, !tbaa !27
  %t609 = load i64, ptr %l28, !tbaa !24
  %t611 = getelementptr { i64, ptr }, ptr %l266, i32 0, i32 1
  %t612 = load ptr, ptr %t611, !tbaa !27
  %t613 = getelementptr i1, ptr %t612, i64 %t609
  %t614 = load i1, ptr %t613, !tbaa !31
  br i1 %t614, label %bb124, label %bb125
bb124:
  %t616 = load ptr, ptr %l0, !tbaa !29
  %t617 = load i64, ptr %l28, !tbaa !24
  %t619 = trunc i64 %t617 to i32
  call void @compiler_2fmir_2ecompiler_2fmir_3averifier_2ewalk(ptr %v0, ptr %v1, ptr %t616, i32 %t619)
  br label %bb126
bb125:
  br label %bb127
bb126:
  br label %bb127
bb127:
  br label %bb128
bb128:
  %t623 = load i64, ptr %l27, !tbaa !24
  %t625 = add i64 %t623, 1
  store i64 %t625, ptr %l27, !tbaa !24
  br label %bb120
bb129:
  %t627 = load ptr, ptr %l0, !tbaa !29
  %t631 = getelementptr %"compiler/mir:verifier", ptr %t627, i32 0, i32 3
  store i64 -1, ptr %t631, !tbaa !24
  %t632 = load ptr, ptr %l0, !tbaa !29
  %t636 = getelementptr %"compiler/mir:verifier", ptr %t632, i32 0, i32 4
  store i64 -1, ptr %t636, !tbaa !24
  br label %ret
ret:
  ret void
}

define dso_local i32 @compiler_2fmir_2ecompiler_2fmir_3averifier_2eintOf(ptr %v0, ptr %v1, ptr %v2, ptr %a0, i32 %a1, i32 %a2, { i64, ptr } %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca i32
  %l5 = alloca ptr
  %l8 = alloca i32
  %l11 = alloca ptr
  %l12 = alloca { i64, ptr }
  %l15 = alloca { i64, ptr }
  %l18 = alloca { i64, ptr }
  %s1 = alloca %olang.scope
  %rv = alloca i32
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  store i32 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/mir:verifier", ptr %t1, i32 0, i32 1
  %t4 = load ptr, ptr %t3, !tbaa !29
  store ptr %t4, ptr %l5, !tbaa !29
  %t5 = load i32, ptr %l1, !tbaa !23
  %t6 = load ptr, ptr %l5, !tbaa !29
  %t7 = call ptr @__olang_scope_or(ptr %v2, ptr %t6)
  %t8 = ptrtoint ptr %t7 to i64
  %t10 = inttoptr i64 %t8 to ptr
  %t11 = load ptr, ptr %l5, !tbaa !29
  %t13 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %t10, ptr %t11, i32 %t5)
  store i32 %t13, ptr %l8
  br label %bb1
bb1:
  %t14 = load i32, ptr %l2, !tbaa !23
  %t15 = load i32, ptr %l8, !tbaa !23
  %t17 = icmp ne i32 %t15, %t14
  br i1 %t17, label %bb2, label %bb3
bb2:
  store %olang.scope zeroinitializer, ptr %s1
  %t19 = load ptr, ptr %l0, !tbaa !29
  store ptr %t19, ptr %l11, !tbaa !29
  store { i64, ptr } %a3, ptr %l12, !tbaa !27
  %t21 = load ptr, ptr %l0, !tbaa !29
  %t22 = load i32, ptr %l1, !tbaa !23
  %t25 = call { i64, ptr } @compiler_2fmir_2ecompiler_2fmir_3averifier_2ecanon(ptr %v0, ptr %s1, ptr %v2, ptr %t21, i32 %t22)
  store { i64, ptr } %t25, ptr %l15
  br label %bb4
bb3:
  br label %bb7
bb4:
  %t26 = load ptr, ptr %l0, !tbaa !29
  %t27 = load i32, ptr %l2, !tbaa !23
  %t30 = call { i64, ptr } @compiler_2fmir_2ecompiler_2fmir_3averifier_2ecanon(ptr %v0, ptr %s1, ptr %v2, ptr %t26, i32 %t27)
  store { i64, ptr } %t30, ptr %l18
  br label %bb5
bb5:
  %t31 = load { i64, ptr }, ptr %l12, !tbaa !27
  %t32 = extractvalue { i64, ptr } %t31, 1
  %t33 = extractvalue { i64, ptr } %t31, 0
  %t34 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d92, i32 0, i32 1) }, 1
  %t35 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d92, i32 0, i32 1) }, 0
  %t36 = add i64 %t33, %t35
  %t37 = load { i64, ptr }, ptr %l15, !tbaa !27
  %t38 = extractvalue { i64, ptr } %t37, 1
  %t39 = extractvalue { i64, ptr } %t37, 0
  %t40 = add i64 %t36, %t39
  %t41 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d93, i32 0, i32 1) }, 1
  %t42 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d93, i32 0, i32 1) }, 0
  %t43 = add i64 %t40, %t42
  %t44 = load { i64, ptr }, ptr %l18, !tbaa !27
  %t45 = extractvalue { i64, ptr } %t44, 1
  %t46 = extractvalue { i64, ptr } %t44, 0
  %t47 = add i64 %t43, %t46
  %t48 = call ptr @__olang_scope_alloc(ptr %s1, i64 %t47)
  call void @olang_textcopy(ptr %t48, ptr %t32, i64 %t33)
  %t49 = getelementptr i8, ptr %t48, i64 %t33
  call void @olang_textcopy(ptr %t49, ptr %t34, i64 %t35)
  %t50 = getelementptr i8, ptr %t49, i64 %t35
  call void @olang_textcopy(ptr %t50, ptr %t38, i64 %t39)
  %t51 = getelementptr i8, ptr %t50, i64 %t39
  call void @olang_textcopy(ptr %t51, ptr %t41, i64 %t42)
  %t52 = getelementptr i8, ptr %t51, i64 %t42
  call void @olang_textcopy(ptr %t52, ptr %t45, i64 %t46)
  %t53 = insertvalue { i64, ptr } undef, i64 %t47, 0
  %t54 = insertvalue { i64, ptr } %t53, ptr %t48, 1
  %t56 = extractvalue { i64, ptr } %t54, 0
  %t57 = extractvalue { i64, ptr } %t54, 1
  %t58 = mul i64 %t56, 1
  %t59 = call ptr @__olang_scope_alloc(ptr %s1, i64 %t58)
  call void @llvm.memcpy.p0.p0.i64(ptr %t59, ptr %t57, i64 %t58, i1 false)
  %t60 = insertvalue { i64, ptr } undef, i64 %t56, 0
  %t61 = insertvalue { i64, ptr } %t60, ptr %t59, 1
  %t62 = load ptr, ptr %l11, !tbaa !29
  call void @compiler_2fmir_2ecompiler_2fmir_3averifier_2ebad(ptr %v0, ptr %s1, ptr %t62, { i64, ptr } %t61)
  br label %bb6
bb6:
  call void @__olang_scope_close(ptr %s1)
  br label %bb7
bb7:
  %t64 = load i32, ptr %l2, !tbaa !23
  store i32 %t64, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local i1 @compiler_2fmir_2ecompiler_2fmir_3averifier_2eopen(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l2 = alloca ptr
  %l3 = alloca i64
  %l7 = alloca i64
  %l9 = alloca i64
  %l14 = alloca i32
  %rv = alloca i1
  br label %start
start:
  br label %bb0
bb0:
  %t3 = getelementptr %"compiler/mir:verifier", ptr %a0, i32 0, i32 17
  store ptr %t3, ptr %l2, !tbaa !29
  store i64 0, ptr %l3, !tbaa !24
  br label %bb1
bb1:
  %t5 = load i64, ptr %l3, !tbaa !24
  store i64 %t5, ptr %l7, !tbaa !24
  %t6 = load ptr, ptr %l2, !tbaa !29
  %t8 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aScopeId_3e_2eLen_3ccompiler_2fmir_3aScopeId_3e(ptr %v0, ptr %t6)
  store i64 %t8, ptr %l9
  br label %bb2
bb2:
  %t9 = load i64, ptr %l7, !tbaa !24
  %t10 = load i64, ptr %l9, !tbaa !24
  %t11 = icmp slt i64 %t9, %t10
  %t13 = xor i1 %t11, true
  br i1 %t13, label %bb3, label %bb4
bb3:
  br label %bb11
bb4:
  br label %bb5
bb5:
  %t15 = load ptr, ptr %l2, !tbaa !29
  %t16 = load i64, ptr %l3, !tbaa !24
  %t19 = call i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aScopeId_3e_2eAt_3ccompiler_2fmir_3aScopeId_3e(ptr %v0, ptr %t15, i64 %t16)
  store i32 %t19, ptr %l14
  br label %bb6
bb6:
  %t20 = load i32, ptr %l14, !tbaa !23
  %t25 = icmp eq i32 %t20, %a1
  br i1 %t25, label %bb7, label %bb8
bb7:
  store i1 true, ptr %rv
  br label %ret
bb8:
  br label %bb9
bb9:
  br label %bb10
bb10:
  %t28 = load i64, ptr %l3, !tbaa !24
  %t30 = add i64 %t28, 1
  store i64 %t30, ptr %l3, !tbaa !24
  br label %bb1
bb11:
  store i1 false, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local void @compiler_2fmir_2ecompiler_2fmir_3averifier_2eops(ptr %v0, ptr %v1, ptr %a0, %"compiler/mir:Range" %a1) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca %"compiler/mir:Range"
  %l6 = alloca ptr
  %l8 = alloca i64
  %l9 = alloca i1
  %s0 = alloca %olang.scope
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1, ptr %l2, !tbaa !29
  store %"compiler/mir:Range" %a1, ptr %l3
  %t3 = load ptr, ptr %l0, !tbaa !29
  %t5 = getelementptr %"compiler/mir:verifier", ptr %t3, i32 0, i32 0
  %t6 = load ptr, ptr %t5, !tbaa !29
  %t8 = getelementptr %"compiler/mir:Fn", ptr %t6, i32 0, i32 11
  store ptr %t8, ptr %l6, !tbaa !29
  %t9 = load ptr, ptr %l6, !tbaa !29
  %t10 = call ptr @__olang_scope_or(ptr %v1, ptr %t9)
  %t11 = ptrtoint ptr %t10 to i64
  %t13 = inttoptr i64 %t11 to ptr
  %t14 = load ptr, ptr %l6, !tbaa !29
  %t15 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aOperand_3e_2eLen_3ccompiler_2fmir_3aOperand_3e(ptr %t13, ptr %t14)
  store i64 %t15, ptr %l8
  br label %bb1
bb1:
  %t16 = load ptr, ptr %l2, !tbaa !29
  %t17 = load %"compiler/mir:Range", ptr %l3
  %t18 = load i64, ptr %l8, !tbaa !24
  %t19 = call i1 @compiler_2fmir_2ecompiler_2fmir_3averifier_2ewithin(ptr %v0, ptr %s0, ptr %t16, %"compiler/mir:Range" %t17, i64 %t18, { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d94, i32 0, i32 1) })
  store i1 %t19, ptr %l9
  br label %bb2
bb2:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local i32 @compiler_2fmir_2ecompiler_2fmir_3averifier_2eprimType(ptr %v0, ptr %v1, ptr %v2, ptr %a0, i32 %a1, i32 %a2, %"compiler/mir:Range" %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca i32
  %l3 = alloca %"compiler/mir:Range"
  %l4 = alloca ptr
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i32
  %l8 = alloca i32
  %l9 = alloca i32
  %l10 = alloca i32
  %l11 = alloca i32
  %l12 = alloca i32
  %l13 = alloca i1
  %l17 = alloca i32
  %l18 = alloca i64
  %l19 = alloca i64
  %l20 = alloca i64
  %l21 = alloca i64
  %l22 = alloca i64
  %l23 = alloca i64
  %l28 = alloca i64
  %l63 = alloca ptr
  %l64 = alloca i32
  %l66 = alloca { i64, ptr }
  %l68 = alloca { i64, ptr }
  %l75 = alloca ptr
  %l76 = alloca i32
  %l78 = alloca { i64, ptr }
  %l80 = alloca { i64, ptr }
  %l85 = alloca ptr
  %l88 = alloca { i64, [4 x i64] }
  %l89 = alloca i32
  %l94 = alloca ptr
  %l97 = alloca i32
  %l110 = alloca ptr
  %l113 = alloca i1
  %l115 = alloca ptr
  %l116 = alloca i32
  %l118 = alloca { i64, ptr }
  %l120 = alloca { i64, ptr }
  %l123 = alloca { i64, ptr }
  %l138 = alloca ptr
  %l141 = alloca i1
  %l143 = alloca i1
  %l147 = alloca ptr
  %l148 = alloca i32
  %l150 = alloca { i64, ptr }
  %l152 = alloca { i64, ptr }
  %l155 = alloca { i64, ptr }
  %l166 = alloca ptr
  %l169 = alloca i1
  %l171 = alloca i1
  %l172 = alloca ptr
  %l173 = alloca ptr
  %l174 = alloca ptr
  %l177 = alloca { i64, [4 x i64] }
  %l178 = alloca i32
  %l180 = alloca i32
  %l182 = alloca i1
  %l184 = alloca ptr
  %l185 = alloca i32
  %l187 = alloca { i64, ptr }
  %l189 = alloca { i64, ptr }
  %l192 = alloca { i64, ptr }
  %l198 = alloca i1
  %l200 = alloca ptr
  %l201 = alloca i32
  %l203 = alloca { i64, ptr }
  %l205 = alloca { i64, ptr }
  %l208 = alloca { i64, ptr }
  %l211 = alloca { i64, ptr }
  %l219 = alloca ptr
  %l222 = alloca { i64, ptr }
  %l241 = alloca ptr
  %l244 = alloca { i64, [4 x i64] }
  %l245 = alloca i32
  %l246 = alloca ptr
  %l247 = alloca i32
  %l248 = alloca ptr
  %l251 = alloca i32
  %l253 = alloca i1
  %l255 = alloca ptr
  %l256 = alloca i32
  %l258 = alloca { i64, ptr }
  %l260 = alloca { i64, ptr }
  %l263 = alloca { i64, ptr }
  %l266 = alloca { i64, ptr }
  %l269 = alloca ptr
  %l272 = alloca i1
  %l274 = alloca i1
  %l278 = alloca i1
  %l282 = alloca i1
  %l286 = alloca ptr
  %l287 = alloca i32
  %l289 = alloca { i64, ptr }
  %l291 = alloca { i64, ptr }
  %l294 = alloca { i64, ptr }
  %l300 = alloca ptr
  %l301 = alloca i32
  %l303 = alloca { i64, ptr }
  %l305 = alloca { i64, ptr }
  %l308 = alloca { i64, ptr }
  %l313 = alloca ptr
  %l316 = alloca { i64, [4 x i64] }
  %l317 = alloca i32
  %l318 = alloca ptr
  %l321 = alloca i32
  %l322 = alloca ptr
  %l325 = alloca i32
  %l326 = alloca ptr
  %l330 = alloca i1
  %l333 = alloca i1
  %l334 = alloca ptr
  %l337 = alloca i1
  %l338 = alloca ptr
  %l339 = alloca ptr
  %l342 = alloca i32
  %l343 = alloca ptr
  %l346 = alloca i32
  %l347 = alloca i1
  %l351 = alloca i1
  %l355 = alloca i1
  %l358 = alloca ptr
  %l361 = alloca { i64, ptr }
  %l364 = alloca { i64, ptr }
  %l370 = alloca ptr
  %l373 = alloca { i64, ptr }
  %l382 = alloca ptr
  %l385 = alloca i1
  %l386 = alloca i32
  %l387 = alloca ptr
  %l390 = alloca i32
  %l394 = alloca i32
  %l397 = alloca ptr
  %l400 = alloca { i64, ptr }
  %l406 = alloca ptr
  %l409 = alloca { i64, ptr }
  %l418 = alloca ptr
  %l421 = alloca i1
  %l423 = alloca ptr
  %l424 = alloca i32
  %l426 = alloca { i64, ptr }
  %l428 = alloca { i64, ptr }
  %l431 = alloca { i64, ptr }
  %l437 = alloca ptr
  %l438 = alloca i32
  %l440 = alloca { i64, ptr }
  %l442 = alloca { i64, ptr }
  %l445 = alloca { i64, ptr }
  %l450 = alloca ptr
  %l453 = alloca i1
  %l455 = alloca ptr
  %l458 = alloca { i64, ptr }
  %l471 = alloca ptr
  %l474 = alloca i1
  %l476 = alloca ptr
  %l477 = alloca i32
  %l479 = alloca { i64, ptr }
  %l481 = alloca { i64, ptr }
  %l484 = alloca { i64, ptr }
  %l497 = alloca ptr
  %l500 = alloca i1
  %l502 = alloca i1
  %l503 = alloca ptr
  %l504 = alloca ptr
  %l507 = alloca { i64, [4 x i64] }
  %l508 = alloca i32
  %l510 = alloca i32
  %l513 = alloca ptr
  %l514 = alloca i32
  %l516 = alloca { i64, ptr }
  %l518 = alloca { i64, ptr }
  %l521 = alloca { i64, ptr }
  %l527 = alloca i1
  %l529 = alloca ptr
  %l530 = alloca i32
  %l532 = alloca { i64, ptr }
  %l534 = alloca { i64, ptr }
  %l537 = alloca { i64, ptr }
  %l540 = alloca { i64, ptr }
  %l545 = alloca ptr
  %l548 = alloca i1
  %l549 = alloca i32
  %l550 = alloca ptr
  %l553 = alloca i32
  %l557 = alloca i32
  %l560 = alloca ptr
  %l563 = alloca { i64, ptr }
  %l569 = alloca ptr
  %l572 = alloca { i64, ptr }
  %l578 = alloca ptr
  %l581 = alloca i1
  %l584 = alloca ptr
  %l587 = alloca { i64, ptr }
  %l593 = alloca ptr
  %l596 = alloca { i64, ptr }
  %l601 = alloca ptr
  %l604 = alloca i1
  %l606 = alloca i1
  %l607 = alloca ptr
  %l610 = alloca i1
  %l611 = alloca ptr
  %l614 = alloca { i64, ptr }
  %l617 = alloca ptr
  %l618 = alloca ptr
  %l621 = alloca i32
  %l623 = alloca i1
  %l625 = alloca ptr
  %l628 = alloca { i64, ptr }
  %l631 = alloca ptr
  %l632 = alloca ptr
  %l635 = alloca { i64, [4 x i64] }
  %l636 = alloca i32
  %l638 = alloca i32
  %l644 = alloca ptr
  %l647 = alloca i1
  %l649 = alloca ptr
  %l652 = alloca { i64, ptr }
  %l655 = alloca ptr
  %l656 = alloca ptr
  %l659 = alloca i32
  %l661 = alloca i1
  %l663 = alloca ptr
  %l666 = alloca { i64, ptr }
  %l671 = alloca ptr
  %l674 = alloca i1
  %l676 = alloca ptr
  %l679 = alloca { i64, ptr }
  %l685 = alloca ptr
  %l688 = alloca { i64, ptr }
  %l695 = alloca ptr
  %l698 = alloca i1
  %l700 = alloca ptr
  %l701 = alloca i32
  %l703 = alloca { i64, ptr }
  %l705 = alloca { i64, ptr }
  %l708 = alloca { i64, ptr }
  %l711 = alloca ptr
  %l712 = alloca ptr
  %l715 = alloca { i64, [4 x i64] }
  %l716 = alloca i32
  %l718 = alloca i32
  %l721 = alloca ptr
  %l722 = alloca i32
  %l724 = alloca { i64, ptr }
  %l726 = alloca { i64, ptr }
  %l731 = alloca i1
  %l732 = alloca ptr
  %l733 = alloca ptr
  %l736 = alloca i32
  %l739 = alloca i1
  %l741 = alloca ptr
  %l744 = alloca { i64, ptr }
  %l747 = alloca ptr
  %l750 = alloca i1
  %l752 = alloca i1
  %l753 = alloca ptr
  %l754 = alloca ptr
  %l755 = alloca ptr
  %l758 = alloca i32
  %l760 = alloca i32
  %l762 = alloca i1
  %l764 = alloca i1
  %l765 = alloca ptr
  %l768 = alloca i64
  %l772 = alloca ptr
  %l773 = alloca i32
  %l775 = alloca { i64, ptr }
  %l777 = alloca { i64, ptr }
  %l780 = alloca { i64, ptr }
  %l783 = alloca ptr
  %l786 = alloca i32
  %l791 = alloca i64
  %l794 = alloca i64
  %l812 = alloca ptr
  %l813 = alloca ptr
  %l817 = alloca { i64, [4 x i64] }
  %l818 = alloca i32
  %l819 = alloca i32
  %l820 = alloca i32
  %l822 = alloca { i64, ptr }
  %l824 = alloca { i64, ptr }
  %l835 = alloca ptr
  %l838 = alloca { i64, ptr }
  %l844 = alloca i1
  %l846 = alloca ptr
  %l847 = alloca i32
  %l849 = alloca { i64, ptr }
  %l851 = alloca { i64, ptr }
  %l854 = alloca { i64, ptr }
  %s7 = alloca %olang.scope
  %s8 = alloca %olang.builder
  %s8room = alloca [64 x i8], align 8
  %s10 = alloca %olang.scope
  %s11 = alloca %olang.builder
  %s11room = alloca [64 x i8], align 8
  %s15 = alloca %olang.scope
  %s16 = alloca %olang.builder
  %s16room = alloca [64 x i8], align 8
  %s19 = alloca %olang.scope
  %s20 = alloca %olang.builder
  %s20room = alloca [64 x i8], align 8
  %s23 = alloca %olang.scope
  %s24 = alloca %olang.builder
  %s24room = alloca [64 x i8], align 8
  %s26 = alloca %olang.scope
  %s27 = alloca %olang.builder
  %s27room = alloca [64 x i8], align 8
  %s30 = alloca %olang.scope
  %s33 = alloca %olang.scope
  %s34 = alloca %olang.builder
  %s34room = alloca [64 x i8], align 8
  %s36 = alloca %olang.scope
  %s37 = alloca %olang.builder
  %s37room = alloca [64 x i8], align 8
  %s39 = alloca %olang.scope
  %s40 = alloca %olang.builder
  %s40room = alloca [64 x i8], align 8
  %s44 = alloca %olang.scope
  %s46 = alloca %olang.scope
  %s50 = alloca %olang.scope
  %s52 = alloca %olang.scope
  %s55 = alloca %olang.scope
  %s56 = alloca %olang.builder
  %s56room = alloca [64 x i8], align 8
  %s58 = alloca %olang.scope
  %s59 = alloca %olang.builder
  %s59room = alloca [64 x i8], align 8
  %s62 = alloca %olang.scope
  %s65 = alloca %olang.scope
  %s66 = alloca %olang.builder
  %s66room = alloca [64 x i8], align 8
  %s69 = alloca %olang.scope
  %s70 = alloca %olang.builder
  %s70room = alloca [64 x i8], align 8
  %s72 = alloca %olang.scope
  %s73 = alloca %olang.builder
  %s73room = alloca [64 x i8], align 8
  %s76 = alloca %olang.scope
  %s78 = alloca %olang.scope
  %s81 = alloca %olang.scope
  %s83 = alloca %olang.scope
  %s86 = alloca %olang.scope
  %s88 = alloca %olang.scope
  %s90 = alloca %olang.scope
  %s92 = alloca %olang.scope
  %s94 = alloca %olang.scope
  %s97 = alloca %olang.scope
  %s99 = alloca %olang.scope
  %s102 = alloca %olang.scope
  %s103 = alloca %olang.builder
  %s103room = alloca [64 x i8], align 8
  %s105 = alloca %olang.scope
  %s106 = alloca %olang.builder
  %s106room = alloca [64 x i8], align 8
  %s108 = alloca %olang.scope
  %s111 = alloca %olang.scope
  %s112 = alloca %olang.builder
  %s112room = alloca [64 x i8], align 8
  %s116 = alloca %olang.scope
  %s117 = alloca %olang.builder
  %s117room = alloca [64 x i8], align 8
  %s121 = alloca %olang.scope
  %s124 = alloca %olang.scope
  %s125 = alloca %olang.builder
  %s125room = alloca [64 x i8], align 8
  %rv = alloca i32
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  store i32 %a2, ptr %l2
  store %"compiler/mir:Range" %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/mir:verifier", ptr %t1, i32 0, i32 1
  %t4 = load ptr, ptr %t3, !tbaa !29
  store ptr %t4, ptr %l4, !tbaa !29
  %t6 = getelementptr %"compiler/mir:Range", ptr %l3, i32 0, i32 1
  %t7 = load i32, ptr %t6, !tbaa !23
  %t9 = sext i32 %t7 to i64
  store i64 %t9, ptr %l5, !tbaa !24
  %t11 = load i32, ptr %l1, !range !{i32 0, i32 52}
  %t13 = trunc i64 0 to i32
  %t14 = icmp eq i32 %t11, %t13
  br i1 %t14, label %bb1, label %bb2
bb1:
  br label %bb11
bb2:
  %t16 = load i32, ptr %l1, !range !{i32 0, i32 52}
  %t18 = trunc i64 1 to i32
  %t19 = icmp eq i32 %t16, %t18
  br i1 %t19, label %bb3, label %bb4
bb3:
  br label %bb11
bb4:
  %t21 = load i32, ptr %l1, !range !{i32 0, i32 52}
  %t23 = trunc i64 2 to i32
  %t24 = icmp eq i32 %t21, %t23
  br i1 %t24, label %bb5, label %bb6
bb5:
  br label %bb11
bb6:
  %t26 = load i32, ptr %l1, !range !{i32 0, i32 52}
  %t28 = trunc i64 20 to i32
  %t29 = icmp eq i32 %t26, %t28
  br i1 %t29, label %bb7, label %bb8
bb7:
  br label %bb11
bb8:
  %t31 = load i32, ptr %l1, !range !{i32 0, i32 52}
  %t33 = trunc i64 21 to i32
  %t34 = icmp eq i32 %t31, %t33
  br i1 %t34, label %bb9, label %bb10
bb9:
  br label %bb11
bb10:
  br label %bb12
bb11:
  store i64 1, ptr %l28, !tbaa !24
  br label %bb47
bb12:
  %t36 = load i32, ptr %l1, !range !{i32 0, i32 52}
  %t38 = trunc i64 22 to i32
  %t39 = icmp eq i32 %t36, %t38
  br i1 %t39, label %bb13, label %bb14
bb13:
  br label %bb21
bb14:
  %t41 = load i32, ptr %l1, !range !{i32 0, i32 52}
  %t43 = trunc i64 24 to i32
  %t44 = icmp eq i32 %t41, %t43
  br i1 %t44, label %bb15, label %bb16
bb15:
  br label %bb21
bb16:
  %t46 = load i32, ptr %l1, !range !{i32 0, i32 52}
  %t48 = trunc i64 29 to i32
  %t49 = icmp eq i32 %t46, %t48
  br i1 %t49, label %bb17, label %bb18
bb17:
  br label %bb21
bb18:
  %t51 = load i32, ptr %l1, !range !{i32 0, i32 52}
  %t53 = trunc i64 43 to i32
  %t54 = icmp eq i32 %t51, %t53
  br i1 %t54, label %bb19, label %bb20
bb19:
  br label %bb21
bb20:
  br label %bb22
bb21:
  store i64 1, ptr %l28, !tbaa !24
  br label %bb47
bb22:
  %t56 = load i32, ptr %l1, !range !{i32 0, i32 52}
  %t58 = trunc i64 31 to i32
  %t59 = icmp eq i32 %t56, %t58
  br i1 %t59, label %bb23, label %bb24
bb23:
  br label %bb31
bb24:
  %t61 = load i32, ptr %l1, !range !{i32 0, i32 52}
  %t63 = trunc i64 32 to i32
  %t64 = icmp eq i32 %t61, %t63
  br i1 %t64, label %bb25, label %bb26
bb25:
  br label %bb31
bb26:
  %t66 = load i32, ptr %l1, !range !{i32 0, i32 52}
  %t68 = trunc i64 33 to i32
  %t69 = icmp eq i32 %t66, %t68
  br i1 %t69, label %bb27, label %bb28
bb27:
  br label %bb31
bb28:
  %t71 = load i32, ptr %l1, !range !{i32 0, i32 52}
  %t73 = trunc i64 36 to i32
  %t74 = icmp eq i32 %t71, %t73
  br i1 %t74, label %bb29, label %bb30
bb29:
  br label %bb31
bb30:
  br label %bb32
bb31:
  store i64 1, ptr %l28, !tbaa !24
  br label %bb47
bb32:
  %t76 = load i32, ptr %l1, !range !{i32 0, i32 52}
  %t78 = trunc i64 37 to i32
  %t79 = icmp eq i32 %t76, %t78
  br i1 %t79, label %bb33, label %bb34
bb33:
  br label %bb35
bb34:
  br label %bb36
bb35:
  store i64 -1, ptr %l28, !tbaa !24
  br label %bb47
bb36:
  %t81 = load i32, ptr %l1, !range !{i32 0, i32 52}
  %t83 = trunc i64 28 to i32
  %t84 = icmp eq i32 %t81, %t83
  br i1 %t84, label %bb37, label %bb38
bb37:
  br label %bb41
bb38:
  %t86 = load i32, ptr %l1, !range !{i32 0, i32 52}
  %t88 = trunc i64 41 to i32
  %t89 = icmp eq i32 %t86, %t88
  br i1 %t89, label %bb39, label %bb40
bb39:
  br label %bb41
bb40:
  br label %bb42
bb41:
  store i64 3, ptr %l28, !tbaa !24
  br label %bb47
bb42:
  br i1 true, label %bb43, label %bb44
bb43:
  br label %bb45
bb44:
  br label %bb46
bb45:
  store i64 2, ptr %l28, !tbaa !24
  br label %bb47
bb46:
  call void @__olang_check_failed(ptr @olang_loc_d0c28dbd82f4c36a_9dd446291f7ee706)
  unreachable
bb47:
  %t91 = load i64, ptr %l28, !tbaa !24
  store i64 %t91, ptr %l6, !tbaa !24
  %t92 = load i64, ptr %l6, !tbaa !24
  %t94 = icmp slt i64 %t92, 0
  br i1 %t94, label %bb48, label %bb49
bb48:
  store %olang.scope zeroinitializer, ptr %s7
  %t96 = load ptr, ptr %l0, !tbaa !29
  store ptr %t96, ptr %l63, !tbaa !29
  %t97 = load i32, ptr %l1, !range !{i32 0, i32 52}
  store i32 %t97, ptr %l64
  store %olang.builder { ptr null, i64 0, i64 64, ptr null, ptr null }, ptr %s8
  store ptr %s8room, ptr %s8
  call void @olang_2emir_2eHelperKind_2eRender_2ecompiler_2ftyped_3aPrimOp(ptr %s8, ptr %l64, i64 0)
  br label %bb50
bb49:
  br label %bb53
bb50:
  %t99 = load ptr, ptr %s8
  %t100 = getelementptr %olang.builder, ptr %s8, i32 0, i32 1
  %t101 = load i64, ptr %t100
  %t102 = call ptr @__olang_scope_alloc(ptr %s7, i64 %t101)
  call void @olang_textcopy(ptr %t102, ptr %t99, i64 %t101)
  %t103 = insertvalue { i64, ptr } undef, i64 %t101, 0
  %t104 = insertvalue { i64, ptr } %t103, ptr %t102, 1
  store { i64, ptr } %t104, ptr %l66, !tbaa !27
  %t105 = getelementptr %olang.builder, ptr %s8, i32 0, i32 3
  %t106 = load ptr, ptr %t105
  %t107 = icmp ne ptr %t106, null
  br i1 %t107, label %sbgrew.108, label %sbdone.109
sbgrew.108:
  call void @__olang_sb_done(ptr %s8)
  br label %sbdone.109
sbdone.109:
  %t110 = load { i64, ptr }, ptr %l66, !tbaa !27
  %t111 = extractvalue { i64, ptr } %t110, 0
  %t112 = extractvalue { i64, ptr } %t110, 1
  %t113 = mul i64 %t111, 1
  %t114 = call ptr @__olang_scope_alloc(ptr %s7, i64 %t113)
  call void @llvm.memcpy.p0.p0.i64(ptr %t114, ptr %t112, i64 %t113, i1 false)
  %t115 = insertvalue { i64, ptr } undef, i64 %t111, 0
  %t116 = insertvalue { i64, ptr } %t115, ptr %t114, 1
  %t118 = call { i64, ptr } @compiler_2fmir_2eshort(ptr %s7, ptr %s7, { i64, ptr } %t116)
  store { i64, ptr } %t118, ptr %l68
  br label %bb51
bb51:
  %t119 = load { i64, ptr }, ptr %l68, !tbaa !27
  %t120 = extractvalue { i64, ptr } %t119, 1
  %t121 = extractvalue { i64, ptr } %t119, 0
  %t122 = extractvalue { i64, ptr } { i64 39, ptr getelementptr inbounds (<{ i64, [39 x i8] }>, ptr @.d95, i32 0, i32 1) }, 1
  %t123 = extractvalue { i64, ptr } { i64 39, ptr getelementptr inbounds (<{ i64, [39 x i8] }>, ptr @.d95, i32 0, i32 1) }, 0
  %t124 = add i64 %t121, %t123
  %t125 = call ptr @__olang_scope_alloc(ptr %s7, i64 %t124)
  call void @olang_textcopy(ptr %t125, ptr %t120, i64 %t121)
  %t126 = getelementptr i8, ptr %t125, i64 %t121
  call void @olang_textcopy(ptr %t126, ptr %t122, i64 %t123)
  %t127 = insertvalue { i64, ptr } undef, i64 %t124, 0
  %t128 = insertvalue { i64, ptr } %t127, ptr %t125, 1
  %t130 = extractvalue { i64, ptr } %t128, 0
  %t131 = extractvalue { i64, ptr } %t128, 1
  %t132 = mul i64 %t130, 1
  %t133 = call ptr @__olang_scope_alloc(ptr %s7, i64 %t132)
  call void @llvm.memcpy.p0.p0.i64(ptr %t133, ptr %t131, i64 %t132, i1 false)
  %t134 = insertvalue { i64, ptr } undef, i64 %t130, 0
  %t135 = insertvalue { i64, ptr } %t134, ptr %t133, 1
  %t136 = load ptr, ptr %l63, !tbaa !29
  call void @compiler_2fmir_2ecompiler_2fmir_3averifier_2ebad(ptr %v0, ptr %s7, ptr %t136, { i64, ptr } %t135)
  br label %bb52
bb52:
  %t138 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  call void @__olang_scope_close(ptr %s7)
  store i32 %t138, ptr %rv
  br label %ret
bb53:
  %t140 = load i64, ptr %l5, !tbaa !24
  %t141 = load i64, ptr %l6, !tbaa !24
  %t144 = icmp ne i64 %t140, %t141
  br i1 %t144, label %bb54, label %bb55
bb54:
  store %olang.scope zeroinitializer, ptr %s10
  %t146 = load ptr, ptr %l0, !tbaa !29
  store ptr %t146, ptr %l75, !tbaa !29
  %t147 = load i32, ptr %l1, !range !{i32 0, i32 52}
  store i32 %t147, ptr %l76
  store %olang.builder { ptr null, i64 0, i64 64, ptr null, ptr null }, ptr %s11
  store ptr %s11room, ptr %s11
  call void @olang_2emir_2eHelperKind_2eRender_2ecompiler_2ftyped_3aPrimOp(ptr %s11, ptr %l76, i64 0)
  br label %bb56
bb55:
  br label %bb59
bb56:
  %t149 = load ptr, ptr %s11
  %t150 = getelementptr %olang.builder, ptr %s11, i32 0, i32 1
  %t151 = load i64, ptr %t150
  %t152 = call ptr @__olang_scope_alloc(ptr %s10, i64 %t151)
  call void @olang_textcopy(ptr %t152, ptr %t149, i64 %t151)
  %t153 = insertvalue { i64, ptr } undef, i64 %t151, 0
  %t154 = insertvalue { i64, ptr } %t153, ptr %t152, 1
  store { i64, ptr } %t154, ptr %l78, !tbaa !27
  %t155 = getelementptr %olang.builder, ptr %s11, i32 0, i32 3
  %t156 = load ptr, ptr %t155
  %t157 = icmp ne ptr %t156, null
  br i1 %t157, label %sbgrew.158, label %sbdone.159
sbgrew.158:
  call void @__olang_sb_done(ptr %s11)
  br label %sbdone.159
sbdone.159:
  %t160 = load { i64, ptr }, ptr %l78, !tbaa !27
  %t161 = extractvalue { i64, ptr } %t160, 0
  %t162 = extractvalue { i64, ptr } %t160, 1
  %t163 = mul i64 %t161, 1
  %t164 = call ptr @__olang_scope_alloc(ptr %s10, i64 %t163)
  call void @llvm.memcpy.p0.p0.i64(ptr %t164, ptr %t162, i64 %t163, i1 false)
  %t165 = insertvalue { i64, ptr } undef, i64 %t161, 0
  %t166 = insertvalue { i64, ptr } %t165, ptr %t164, 1
  %t168 = call { i64, ptr } @compiler_2fmir_2eshort(ptr %s10, ptr %s10, { i64, ptr } %t166)
  store { i64, ptr } %t168, ptr %l80
  br label %bb57
bb57:
  %t169 = load i64, ptr %l5, !tbaa !24
  %t170 = load { i64, ptr }, ptr %l80, !tbaa !27
  %t171 = extractvalue { i64, ptr } %t170, 1
  %t172 = extractvalue { i64, ptr } %t170, 0
  %t173 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d96, i32 0, i32 1) }, 1
  %t174 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d96, i32 0, i32 1) }, 0
  %t175 = add i64 %t172, %t174
  %t177 = call i64 @__olang_fmt_i64(ptr null, i64 %t169)
  %t178 = add i64 %t175, %t177
  %t179 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d97, i32 0, i32 1) }, 1
  %t180 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d97, i32 0, i32 1) }, 0
  %t181 = add i64 %t178, %t180
  %t182 = call ptr @__olang_scope_alloc(ptr %s10, i64 %t181)
  call void @olang_textcopy(ptr %t182, ptr %t171, i64 %t172)
  %t183 = getelementptr i8, ptr %t182, i64 %t172
  call void @olang_textcopy(ptr %t183, ptr %t173, i64 %t174)
  %t184 = getelementptr i8, ptr %t183, i64 %t174
  %t185 = call i64 @__olang_fmt_i64(ptr %t184, i64 %t169)
  %t186 = getelementptr i8, ptr %t184, i64 %t177
  call void @olang_textcopy(ptr %t186, ptr %t179, i64 %t180)
  %t187 = insertvalue { i64, ptr } undef, i64 %t181, 0
  %t188 = insertvalue { i64, ptr } %t187, ptr %t182, 1
  %t190 = extractvalue { i64, ptr } %t188, 0
  %t191 = extractvalue { i64, ptr } %t188, 1
  %t192 = mul i64 %t190, 1
  %t193 = call ptr @__olang_scope_alloc(ptr %s10, i64 %t192)
  call void @llvm.memcpy.p0.p0.i64(ptr %t193, ptr %t191, i64 %t192, i1 false)
  %t194 = insertvalue { i64, ptr } undef, i64 %t190, 0
  %t195 = insertvalue { i64, ptr } %t194, ptr %t193, 1
  %t196 = load ptr, ptr %l75, !tbaa !29
  call void @compiler_2fmir_2ecompiler_2fmir_3averifier_2ebad(ptr %v0, ptr %s10, ptr %t196, { i64, ptr } %t195)
  br label %bb58
bb58:
  %t198 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  call void @__olang_scope_close(ptr %s10)
  store i32 %t198, ptr %rv
  br label %ret
bb59:
  %t200 = load ptr, ptr %l0, !tbaa !29
  store ptr %t200, ptr %l85, !tbaa !29
  %t201 = load ptr, ptr %l0, !tbaa !29
  %t202 = load %"compiler/mir:Range", ptr %l3
  %t205 = call { i64, [4 x i64] } @compiler_2fmir_2ecompiler_2fmir_3averifier_2earg(ptr %v0, ptr %v1, ptr %t201, %"compiler/mir:Range" %t202, i64 0)
  store { i64, [4 x i64] } %t205, ptr %l88
  br label %bb60
bb60:
  %t206 = load ptr, ptr %l85, !tbaa !29
  %t207 = load { i64, [4 x i64] }, ptr %l88
  %t208 = call i32 @compiler_2fmir_2ecompiler_2fmir_3averifier_2eoperandType(ptr %v0, ptr %v1, ptr %v2, ptr %t206, { i64, [4 x i64] } %t207)
  store i32 %t208, ptr %l89
  br label %bb61
bb61:
  %t209 = load i32, ptr %l89, !tbaa !23
  store i32 %t209, ptr %l7, !tbaa !23
  %t210 = load i32, ptr %l7, !tbaa !23
  %t211 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t214 = icmp eq i32 %t210, %t211
  br i1 %t214, label %bb62, label %bb63
bb62:
  %t216 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  store i32 %t216, ptr %rv
  br label %ret
bb63:
  br label %bb64
bb64:
  %t218 = load ptr, ptr %l4, !tbaa !29
  store ptr %t218, ptr %l94, !tbaa !29
  %t219 = load i32, ptr %l7, !tbaa !23
  %t220 = load ptr, ptr %l94, !tbaa !29
  %t221 = call ptr @__olang_scope_or(ptr %v2, ptr %t220)
  %t222 = ptrtoint ptr %t221 to i64
  %t224 = inttoptr i64 %t222 to ptr
  %t225 = load ptr, ptr %l94, !tbaa !29
  %t227 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %t224, ptr %t225, i32 %t219)
  store i32 %t227, ptr %l97
  br label %bb65
bb65:
  %t228 = load i32, ptr %l97, !tbaa !23
  store i32 %t228, ptr %l8, !tbaa !23
  %t229 = load i32, ptr %l1, !range !{i32 0, i32 52}
  %t231 = trunc i64 0 to i32
  %t232 = icmp eq i32 %t229, %t231
  br i1 %t232, label %bb66, label %bb67
bb66:
  br label %bb78
bb67:
  %t234 = load i32, ptr %l1, !range !{i32 0, i32 52}
  %t236 = trunc i64 3 to i32
  %t237 = icmp eq i32 %t234, %t236
  br i1 %t237, label %bb68, label %bb69
bb68:
  br label %bb78
bb69:
  %t239 = load i32, ptr %l1, !range !{i32 0, i32 52}
  %t241 = trunc i64 4 to i32
  %t242 = icmp eq i32 %t239, %t241
  br i1 %t242, label %bb70, label %bb71
bb70:
  br label %bb78
bb71:
  %t244 = load i32, ptr %l1, !range !{i32 0, i32 52}
  %t246 = trunc i64 5 to i32
  %t247 = icmp eq i32 %t244, %t246
  br i1 %t247, label %bb72, label %bb73
bb72:
  br label %bb78
bb73:
  %t249 = load i32, ptr %l1, !range !{i32 0, i32 52}
  %t251 = trunc i64 6 to i32
  %t252 = icmp eq i32 %t249, %t251
  br i1 %t252, label %bb74, label %bb75
bb74:
  br label %bb78
bb75:
  %t254 = load i32, ptr %l1, !range !{i32 0, i32 52}
  %t256 = trunc i64 7 to i32
  %t257 = icmp eq i32 %t254, %t256
  br i1 %t257, label %bb76, label %bb77
bb76:
  br label %bb78
bb77:
  br label %bb88
bb78:
  %t259 = load ptr, ptr %l4, !tbaa !29
  store ptr %t259, ptr %l110, !tbaa !29
  %t260 = load i32, ptr %l8, !tbaa !23
  %t261 = load ptr, ptr %l110, !tbaa !29
  %t262 = call ptr @__olang_scope_or(ptr %v2, ptr %t261)
  %t263 = ptrtoint ptr %t262 to i64
  %t265 = inttoptr i64 %t263 to ptr
  %t266 = load ptr, ptr %l110, !tbaa !29
  %t268 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsNumber(ptr %t265, ptr %t266, i32 %t260)
  store i1 %t268, ptr %l113
  br label %bb79
bb79:
  %t269 = load i1, ptr %l113, !tbaa !21
  %t270 = xor i1 %t269, true
  br i1 %t270, label %bb80, label %bb81
bb80:
  store %olang.scope zeroinitializer, ptr %s15
  %t272 = load ptr, ptr %l0, !tbaa !29
  store ptr %t272, ptr %l115, !tbaa !29
  %t273 = load i32, ptr %l1, !range !{i32 0, i32 52}
  store i32 %t273, ptr %l116
  store %olang.builder { ptr null, i64 0, i64 64, ptr null, ptr null }, ptr %s16
  store ptr %s16room, ptr %s16
  call void @olang_2emir_2eHelperKind_2eRender_2ecompiler_2ftyped_3aPrimOp(ptr %s16, ptr %l116, i64 0)
  br label %bb82
bb81:
  br label %bb86
bb82:
  %t275 = load ptr, ptr %s16
  %t276 = getelementptr %olang.builder, ptr %s16, i32 0, i32 1
  %t277 = load i64, ptr %t276
  %t278 = call ptr @__olang_scope_alloc(ptr %s15, i64 %t277)
  call void @olang_textcopy(ptr %t278, ptr %t275, i64 %t277)
  %t279 = insertvalue { i64, ptr } undef, i64 %t277, 0
  %t280 = insertvalue { i64, ptr } %t279, ptr %t278, 1
  store { i64, ptr } %t280, ptr %l118, !tbaa !27
  %t281 = getelementptr %olang.builder, ptr %s16, i32 0, i32 3
  %t282 = load ptr, ptr %t281
  %t283 = icmp ne ptr %t282, null
  br i1 %t283, label %sbgrew.284, label %sbdone.285
sbgrew.284:
  call void @__olang_sb_done(ptr %s16)
  br label %sbdone.285
sbdone.285:
  %t286 = load { i64, ptr }, ptr %l118, !tbaa !27
  %t287 = extractvalue { i64, ptr } %t286, 0
  %t288 = extractvalue { i64, ptr } %t286, 1
  %t289 = mul i64 %t287, 1
  %t290 = call ptr @__olang_scope_alloc(ptr %s15, i64 %t289)
  call void @llvm.memcpy.p0.p0.i64(ptr %t290, ptr %t288, i64 %t289, i1 false)
  %t291 = insertvalue { i64, ptr } undef, i64 %t287, 0
  %t292 = insertvalue { i64, ptr } %t291, ptr %t290, 1
  %t294 = call { i64, ptr } @compiler_2fmir_2eshort(ptr %s15, ptr %s15, { i64, ptr } %t292)
  store { i64, ptr } %t294, ptr %l120
  br label %bb83
bb83:
  %t295 = load ptr, ptr %l0, !tbaa !29
  %t296 = load i32, ptr %l7, !tbaa !23
  %t299 = call { i64, ptr } @compiler_2fmir_2ecompiler_2fmir_3averifier_2ecanon(ptr %v0, ptr %s15, ptr %v2, ptr %t295, i32 %t296)
  store { i64, ptr } %t299, ptr %l123
  br label %bb84
bb84:
  %t300 = load { i64, ptr }, ptr %l120, !tbaa !27
  %t301 = extractvalue { i64, ptr } %t300, 1
  %t302 = extractvalue { i64, ptr } %t300, 0
  %t303 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d98, i32 0, i32 1) }, 1
  %t304 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d98, i32 0, i32 1) }, 0
  %t305 = add i64 %t302, %t304
  %t306 = load { i64, ptr }, ptr %l123, !tbaa !27
  %t307 = extractvalue { i64, ptr } %t306, 1
  %t308 = extractvalue { i64, ptr } %t306, 0
  %t309 = add i64 %t305, %t308
  %t310 = call ptr @__olang_scope_alloc(ptr %s15, i64 %t309)
  call void @olang_textcopy(ptr %t310, ptr %t301, i64 %t302)
  %t311 = getelementptr i8, ptr %t310, i64 %t302
  call void @olang_textcopy(ptr %t311, ptr %t303, i64 %t304)
  %t312 = getelementptr i8, ptr %t311, i64 %t304
  call void @olang_textcopy(ptr %t312, ptr %t307, i64 %t308)
  %t313 = insertvalue { i64, ptr } undef, i64 %t309, 0
  %t314 = insertvalue { i64, ptr } %t313, ptr %t310, 1
  %t316 = extractvalue { i64, ptr } %t314, 0
  %t317 = extractvalue { i64, ptr } %t314, 1
  %t318 = mul i64 %t316, 1
  %t319 = call ptr @__olang_scope_alloc(ptr %s15, i64 %t318)
  call void @llvm.memcpy.p0.p0.i64(ptr %t319, ptr %t317, i64 %t318, i1 false)
  %t320 = insertvalue { i64, ptr } undef, i64 %t316, 0
  %t321 = insertvalue { i64, ptr } %t320, ptr %t319, 1
  %t322 = load ptr, ptr %l115, !tbaa !29
  call void @compiler_2fmir_2ecompiler_2fmir_3averifier_2ebad(ptr %v0, ptr %s15, ptr %t322, { i64, ptr } %t321)
  br label %bb85
bb85:
  call void @__olang_scope_close(ptr %s15)
  br label %bb86
bb86:
  %t324 = load ptr, ptr %l0, !tbaa !29
  %t325 = load i32, ptr %l1, !range !{i32 0, i32 52}
  %t326 = load %"compiler/mir:Range", ptr %l3
  %t327 = load i32, ptr %l2, !tbaa !23
  call void @compiler_2fmir_2ecompiler_2fmir_3averifier_2esameArgs(ptr %v0, ptr %v1, ptr %v2, ptr %t324, i32 %t325, %"compiler/mir:Range" %t326, i32 %t327)
  br label %bb87
bb87:
  br label %bb529
bb88:
  %t332 = load i32, ptr %l1, !range !{i32 0, i32 52}
  %t334 = trunc i64 1 to i32
  %t335 = icmp eq i32 %t332, %t334
  br i1 %t335, label %bb89, label %bb90
bb89:
  br label %bb97
bb90:
  %t337 = load i32, ptr %l1, !range !{i32 0, i32 52}
  %t339 = trunc i64 10 to i32
  %t340 = icmp eq i32 %t337, %t339
  br i1 %t340, label %bb91, label %bb92
bb91:
  br label %bb97
bb92:
  %t342 = load i32, ptr %l1, !range !{i32 0, i32 52}
  %t344 = trunc i64 11 to i32
  %t345 = icmp eq i32 %t342, %t344
  br i1 %t345, label %bb93, label %bb94
bb93:
  br label %bb97
bb94:
  %t347 = load i32, ptr %l1, !range !{i32 0, i32 52}
  %t349 = trunc i64 12 to i32
  %t350 = icmp eq i32 %t347, %t349
  br i1 %t350, label %bb95, label %bb96
bb95:
  br label %bb97
bb96:
  br label %bb110
bb97:
  %t352 = load ptr, ptr %l4, !tbaa !29
  store ptr %t352, ptr %l138, !tbaa !29
  %t353 = load i32, ptr %l8, !tbaa !23
  %t354 = load ptr, ptr %l138, !tbaa !29
  %t355 = call ptr @__olang_scope_or(ptr %v2, ptr %t354)
  %t356 = ptrtoint ptr %t355 to i64
  %t358 = inttoptr i64 %t356 to ptr
  %t359 = load ptr, ptr %l138, !tbaa !29
  %t361 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsInt(ptr %t358, ptr %t359, i32 %t353)
  store i1 %t361, ptr %l141
  br label %bb98
bb98:
  %t362 = load i1, ptr %l141, !tbaa !21
  %t363 = xor i1 %t362, true
  br i1 %t363, label %bb99, label %bb100
bb99:
  %t365 = load i32, ptr %l8, !tbaa !23
  %t366 = load i32, ptr @G_2ecompiler_2ftypes_2eBoolT, !tbaa !23
  %t369 = icmp ne i32 %t365, %t366
  store i1 %t369, ptr %l143, !tbaa !21
  br label %bb101
bb100:
  store i1 false, ptr %l143, !tbaa !21
  br label %bb101
bb101:
  %t371 = load i1, ptr %l143, !tbaa !21
  br i1 %t371, label %bb102, label %bb103
bb102:
  store %olang.scope zeroinitializer, ptr %s19
  %t372 = load ptr, ptr %l0, !tbaa !29
  store ptr %t372, ptr %l147, !tbaa !29
  %t373 = load i32, ptr %l1, !range !{i32 0, i32 52}
  store i32 %t373, ptr %l148
  store %olang.builder { ptr null, i64 0, i64 64, ptr null, ptr null }, ptr %s20
  store ptr %s20room, ptr %s20
  call void @olang_2emir_2eHelperKind_2eRender_2ecompiler_2ftyped_3aPrimOp(ptr %s20, ptr %l148, i64 0)
  br label %bb104
bb103:
  br label %bb108
bb104:
  %t375 = load ptr, ptr %s20
  %t376 = getelementptr %olang.builder, ptr %s20, i32 0, i32 1
  %t377 = load i64, ptr %t376
  %t378 = call ptr @__olang_scope_alloc(ptr %s19, i64 %t377)
  call void @olang_textcopy(ptr %t378, ptr %t375, i64 %t377)
  %t379 = insertvalue { i64, ptr } undef, i64 %t377, 0
  %t380 = insertvalue { i64, ptr } %t379, ptr %t378, 1
  store { i64, ptr } %t380, ptr %l150, !tbaa !27
  %t381 = getelementptr %olang.builder, ptr %s20, i32 0, i32 3
  %t382 = load ptr, ptr %t381
  %t383 = icmp ne ptr %t382, null
  br i1 %t383, label %sbgrew.384, label %sbdone.385
sbgrew.384:
  call void @__olang_sb_done(ptr %s20)
  br label %sbdone.385
sbdone.385:
  %t386 = load { i64, ptr }, ptr %l150, !tbaa !27
  %t387 = extractvalue { i64, ptr } %t386, 0
  %t388 = extractvalue { i64, ptr } %t386, 1
  %t389 = mul i64 %t387, 1
  %t390 = call ptr @__olang_scope_alloc(ptr %s19, i64 %t389)
  call void @llvm.memcpy.p0.p0.i64(ptr %t390, ptr %t388, i64 %t389, i1 false)
  %t391 = insertvalue { i64, ptr } undef, i64 %t387, 0
  %t392 = insertvalue { i64, ptr } %t391, ptr %t390, 1
  %t394 = call { i64, ptr } @compiler_2fmir_2eshort(ptr %s19, ptr %s19, { i64, ptr } %t392)
  store { i64, ptr } %t394, ptr %l152
  br label %bb105
bb105:
  %t395 = load ptr, ptr %l0, !tbaa !29
  %t396 = load i32, ptr %l7, !tbaa !23
  %t399 = call { i64, ptr } @compiler_2fmir_2ecompiler_2fmir_3averifier_2ecanon(ptr %v0, ptr %s19, ptr %v2, ptr %t395, i32 %t396)
  store { i64, ptr } %t399, ptr %l155
  br label %bb106
bb106:
  %t400 = load { i64, ptr }, ptr %l152, !tbaa !27
  %t401 = extractvalue { i64, ptr } %t400, 1
  %t402 = extractvalue { i64, ptr } %t400, 0
  %t403 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d99, i32 0, i32 1) }, 1
  %t404 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d99, i32 0, i32 1) }, 0
  %t405 = add i64 %t402, %t404
  %t406 = load { i64, ptr }, ptr %l155, !tbaa !27
  %t407 = extractvalue { i64, ptr } %t406, 1
  %t408 = extractvalue { i64, ptr } %t406, 0
  %t409 = add i64 %t405, %t408
  %t410 = call ptr @__olang_scope_alloc(ptr %s19, i64 %t409)
  call void @olang_textcopy(ptr %t410, ptr %t401, i64 %t402)
  %t411 = getelementptr i8, ptr %t410, i64 %t402
  call void @olang_textcopy(ptr %t411, ptr %t403, i64 %t404)
  %t412 = getelementptr i8, ptr %t411, i64 %t404
  call void @olang_textcopy(ptr %t412, ptr %t407, i64 %t408)
  %t413 = insertvalue { i64, ptr } undef, i64 %t409, 0
  %t414 = insertvalue { i64, ptr } %t413, ptr %t410, 1
  %t416 = extractvalue { i64, ptr } %t414, 0
  %t417 = extractvalue { i64, ptr } %t414, 1
  %t418 = mul i64 %t416, 1
  %t419 = call ptr @__olang_scope_alloc(ptr %s19, i64 %t418)
  call void @llvm.memcpy.p0.p0.i64(ptr %t419, ptr %t417, i64 %t418, i1 false)
  %t420 = insertvalue { i64, ptr } undef, i64 %t416, 0
  %t421 = insertvalue { i64, ptr } %t420, ptr %t419, 1
  %t422 = load ptr, ptr %l147, !tbaa !29
  call void @compiler_2fmir_2ecompiler_2fmir_3averifier_2ebad(ptr %v0, ptr %s19, ptr %t422, { i64, ptr } %t421)
  br label %bb107
bb107:
  call void @__olang_scope_close(ptr %s19)
  br label %bb108
bb108:
  %t424 = load ptr, ptr %l0, !tbaa !29
  %t425 = load i32, ptr %l1, !range !{i32 0, i32 52}
  %t426 = load %"compiler/mir:Range", ptr %l3
  %t427 = load i32, ptr %l2, !tbaa !23
  call void @compiler_2fmir_2ecompiler_2fmir_3averifier_2esameArgs(ptr %v0, ptr %v1, ptr %v2, ptr %t424, i32 %t425, %"compiler/mir:Range" %t426, i32 %t427)
  br label %bb109
bb109:
  br label %bb529
bb110:
  %t432 = load i32, ptr %l1, !range !{i32 0, i32 52}
  %t434 = trunc i64 8 to i32
  %t435 = icmp eq i32 %t432, %t434
  br i1 %t435, label %bb111, label %bb112
bb111:
  br label %bb115
bb112:
  %t437 = load i32, ptr %l1, !range !{i32 0, i32 52}
  %t439 = trunc i64 9 to i32
  %t440 = icmp eq i32 %t437, %t439
  br i1 %t440, label %bb113, label %bb114
bb113:
  br label %bb115
bb114:
  br label %bb140
bb115:
  %t442 = load ptr, ptr %l4, !tbaa !29
  store ptr %t442, ptr %l166, !tbaa !29
  %t443 = load i32, ptr %l8, !tbaa !23
  %t444 = load ptr, ptr %l166, !tbaa !29
  %t445 = call ptr @__olang_scope_or(ptr %v2, ptr %t444)
  %t446 = ptrtoint ptr %t445 to i64
  %t448 = inttoptr i64 %t446 to ptr
  %t449 = load ptr, ptr %l166, !tbaa !29
  %t451 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsInt(ptr %t448, ptr %t449, i32 %t443)
  store i1 %t451, ptr %l169
  br label %bb116
bb116:
  %t452 = load i1, ptr %l169, !tbaa !21
  %t453 = xor i1 %t452, true
  br i1 %t453, label %bb117, label %bb118
bb117:
  store i1 true, ptr %l171, !tbaa !21
  br label %bb123
bb118:
  %t455 = load ptr, ptr %l4, !tbaa !29
  store ptr %t455, ptr %l172, !tbaa !29
  %t456 = load ptr, ptr %l4, !tbaa !29
  store ptr %t456, ptr %l173, !tbaa !29
  %t457 = load ptr, ptr %l0, !tbaa !29
  store ptr %t457, ptr %l174, !tbaa !29
  %t458 = load ptr, ptr %l0, !tbaa !29
  %t459 = load %"compiler/mir:Range", ptr %l3
  %t462 = call { i64, [4 x i64] } @compiler_2fmir_2ecompiler_2fmir_3averifier_2earg(ptr %v0, ptr %v1, ptr %t458, %"compiler/mir:Range" %t459, i64 1)
  store { i64, [4 x i64] } %t462, ptr %l177
  br label %bb119
bb119:
  %t463 = load ptr, ptr %l174, !tbaa !29
  %t464 = load { i64, [4 x i64] }, ptr %l177
  %t465 = call i32 @compiler_2fmir_2ecompiler_2fmir_3averifier_2eoperandType(ptr %v0, ptr %v1, ptr %v2, ptr %t463, { i64, [4 x i64] } %t464)
  store i32 %t465, ptr %l178
  br label %bb120
bb120:
  %t466 = load ptr, ptr %l173, !tbaa !29
  %t467 = call ptr @__olang_scope_or(ptr %v2, ptr %t466)
  %t468 = ptrtoint ptr %t467 to i64
  %t470 = inttoptr i64 %t468 to ptr
  %t471 = load ptr, ptr %l173, !tbaa !29
  %t472 = load i32, ptr %l178, !tbaa !23
  %t473 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %t470, ptr %t471, i32 %t472)
  store i32 %t473, ptr %l180
  br label %bb121
bb121:
  %t474 = load ptr, ptr %l172, !tbaa !29
  %t475 = call ptr @__olang_scope_or(ptr %v2, ptr %t474)
  %t476 = ptrtoint ptr %t475 to i64
  %t478 = inttoptr i64 %t476 to ptr
  %t479 = load ptr, ptr %l172, !tbaa !29
  %t480 = load i32, ptr %l180, !tbaa !23
  %t481 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsInt(ptr %t478, ptr %t479, i32 %t480)
  store i1 %t481, ptr %l182
  br label %bb122
bb122:
  %t482 = load i1, ptr %l182, !tbaa !21
  %t483 = xor i1 %t482, true
  store i1 %t483, ptr %l171, !tbaa !21
  br label %bb123
bb123:
  %t485 = load i1, ptr %l171, !tbaa !21
  br i1 %t485, label %bb124, label %bb125
bb124:
  store %olang.scope zeroinitializer, ptr %s23
  %t486 = load ptr, ptr %l0, !tbaa !29
  store ptr %t486, ptr %l184, !tbaa !29
  %t487 = load i32, ptr %l1, !range !{i32 0, i32 52}
  store i32 %t487, ptr %l185
  store %olang.builder { ptr null, i64 0, i64 64, ptr null, ptr null }, ptr %s24
  store ptr %s24room, ptr %s24
  call void @olang_2emir_2eHelperKind_2eRender_2ecompiler_2ftyped_3aPrimOp(ptr %s24, ptr %l185, i64 0)
  br label %bb126
bb125:
  br label %bb130
bb126:
  %t489 = load ptr, ptr %s24
  %t490 = getelementptr %olang.builder, ptr %s24, i32 0, i32 1
  %t491 = load i64, ptr %t490
  %t492 = call ptr @__olang_scope_alloc(ptr %s23, i64 %t491)
  call void @olang_textcopy(ptr %t492, ptr %t489, i64 %t491)
  %t493 = insertvalue { i64, ptr } undef, i64 %t491, 0
  %t494 = insertvalue { i64, ptr } %t493, ptr %t492, 1
  store { i64, ptr } %t494, ptr %l187, !tbaa !27
  %t495 = getelementptr %olang.builder, ptr %s24, i32 0, i32 3
  %t496 = load ptr, ptr %t495
  %t497 = icmp ne ptr %t496, null
  br i1 %t497, label %sbgrew.498, label %sbdone.499
sbgrew.498:
  call void @__olang_sb_done(ptr %s24)
  br label %sbdone.499
sbdone.499:
  %t500 = load { i64, ptr }, ptr %l187, !tbaa !27
  %t501 = extractvalue { i64, ptr } %t500, 0
  %t502 = extractvalue { i64, ptr } %t500, 1
  %t503 = mul i64 %t501, 1
  %t504 = call ptr @__olang_scope_alloc(ptr %s23, i64 %t503)
  call void @llvm.memcpy.p0.p0.i64(ptr %t504, ptr %t502, i64 %t503, i1 false)
  %t505 = insertvalue { i64, ptr } undef, i64 %t501, 0
  %t506 = insertvalue { i64, ptr } %t505, ptr %t504, 1
  %t508 = call { i64, ptr } @compiler_2fmir_2eshort(ptr %s23, ptr %s23, { i64, ptr } %t506)
  store { i64, ptr } %t508, ptr %l189
  br label %bb127
bb127:
  %t509 = load ptr, ptr %l0, !tbaa !29
  %t510 = load i32, ptr %l7, !tbaa !23
  %t513 = call { i64, ptr } @compiler_2fmir_2ecompiler_2fmir_3averifier_2ecanon(ptr %v0, ptr %s23, ptr %v2, ptr %t509, i32 %t510)
  store { i64, ptr } %t513, ptr %l192
  br label %bb128
bb128:
  %t514 = load { i64, ptr }, ptr %l189, !tbaa !27
  %t515 = extractvalue { i64, ptr } %t514, 1
  %t516 = extractvalue { i64, ptr } %t514, 0
  %t517 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d100, i32 0, i32 1) }, 1
  %t518 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d100, i32 0, i32 1) }, 0
  %t519 = add i64 %t516, %t518
  %t520 = load { i64, ptr }, ptr %l192, !tbaa !27
  %t521 = extractvalue { i64, ptr } %t520, 1
  %t522 = extractvalue { i64, ptr } %t520, 0
  %t523 = add i64 %t519, %t522
  %t524 = call ptr @__olang_scope_alloc(ptr %s23, i64 %t523)
  call void @olang_textcopy(ptr %t524, ptr %t515, i64 %t516)
  %t525 = getelementptr i8, ptr %t524, i64 %t516
  call void @olang_textcopy(ptr %t525, ptr %t517, i64 %t518)
  %t526 = getelementptr i8, ptr %t525, i64 %t518
  call void @olang_textcopy(ptr %t526, ptr %t521, i64 %t522)
  %t527 = insertvalue { i64, ptr } undef, i64 %t523, 0
  %t528 = insertvalue { i64, ptr } %t527, ptr %t524, 1
  %t530 = extractvalue { i64, ptr } %t528, 0
  %t531 = extractvalue { i64, ptr } %t528, 1
  %t532 = mul i64 %t530, 1
  %t533 = call ptr @__olang_scope_alloc(ptr %s23, i64 %t532)
  call void @llvm.memcpy.p0.p0.i64(ptr %t533, ptr %t531, i64 %t532, i1 false)
  %t534 = insertvalue { i64, ptr } undef, i64 %t530, 0
  %t535 = insertvalue { i64, ptr } %t534, ptr %t533, 1
  %t536 = load ptr, ptr %l184, !tbaa !29
  call void @compiler_2fmir_2ecompiler_2fmir_3averifier_2ebad(ptr %v0, ptr %s23, ptr %t536, { i64, ptr } %t535)
  br label %bb129
bb129:
  call void @__olang_scope_close(ptr %s23)
  br label %bb130
bb130:
  %t538 = load ptr, ptr %l0, !tbaa !29
  %t539 = load i32, ptr %l7, !tbaa !23
  %t540 = load i32, ptr %l2, !tbaa !23
  %t544 = call i1 @compiler_2fmir_2ecompiler_2fmir_3averifier_2efits(ptr %v0, ptr %v2, ptr %t538, i32 %t539, i32 %t540)
  store i1 %t544, ptr %l198
  br label %bb131
bb131:
  %t545 = load i1, ptr %l198, !tbaa !21
  %t546 = xor i1 %t545, true
  br i1 %t546, label %bb132, label %bb133
bb132:
  store %olang.scope zeroinitializer, ptr %s26
  %t548 = load ptr, ptr %l0, !tbaa !29
  store ptr %t548, ptr %l200, !tbaa !29
  %t549 = load i32, ptr %l1, !range !{i32 0, i32 52}
  store i32 %t549, ptr %l201
  store %olang.builder { ptr null, i64 0, i64 64, ptr null, ptr null }, ptr %s27
  store ptr %s27room, ptr %s27
  call void @olang_2emir_2eHelperKind_2eRender_2ecompiler_2ftyped_3aPrimOp(ptr %s27, ptr %l201, i64 0)
  br label %bb134
bb133:
  br label %bb139
bb134:
  %t551 = load ptr, ptr %s27
  %t552 = getelementptr %olang.builder, ptr %s27, i32 0, i32 1
  %t553 = load i64, ptr %t552
  %t554 = call ptr @__olang_scope_alloc(ptr %s26, i64 %t553)
  call void @olang_textcopy(ptr %t554, ptr %t551, i64 %t553)
  %t555 = insertvalue { i64, ptr } undef, i64 %t553, 0
  %t556 = insertvalue { i64, ptr } %t555, ptr %t554, 1
  store { i64, ptr } %t556, ptr %l203, !tbaa !27
  %t557 = getelementptr %olang.builder, ptr %s27, i32 0, i32 3
  %t558 = load ptr, ptr %t557
  %t559 = icmp ne ptr %t558, null
  br i1 %t559, label %sbgrew.560, label %sbdone.561
sbgrew.560:
  call void @__olang_sb_done(ptr %s27)
  br label %sbdone.561
sbdone.561:
  %t562 = load { i64, ptr }, ptr %l203, !tbaa !27
  %t563 = extractvalue { i64, ptr } %t562, 0
  %t564 = extractvalue { i64, ptr } %t562, 1
  %t565 = mul i64 %t563, 1
  %t566 = call ptr @__olang_scope_alloc(ptr %s26, i64 %t565)
  call void @llvm.memcpy.p0.p0.i64(ptr %t566, ptr %t564, i64 %t565, i1 false)
  %t567 = insertvalue { i64, ptr } undef, i64 %t563, 0
  %t568 = insertvalue { i64, ptr } %t567, ptr %t566, 1
  %t570 = call { i64, ptr } @compiler_2fmir_2eshort(ptr %s26, ptr %s26, { i64, ptr } %t568)
  store { i64, ptr } %t570, ptr %l205
  br label %bb135
bb135:
  %t571 = load ptr, ptr %l0, !tbaa !29
  %t572 = load i32, ptr %l7, !tbaa !23
  %t575 = call { i64, ptr } @compiler_2fmir_2ecompiler_2fmir_3averifier_2ecanon(ptr %v0, ptr %s26, ptr %v2, ptr %t571, i32 %t572)
  store { i64, ptr } %t575, ptr %l208
  br label %bb136
bb136:
  %t576 = load ptr, ptr %l0, !tbaa !29
  %t577 = load i32, ptr %l2, !tbaa !23
  %t580 = call { i64, ptr } @compiler_2fmir_2ecompiler_2fmir_3averifier_2ecanon(ptr %v0, ptr %s26, ptr %v2, ptr %t576, i32 %t577)
  store { i64, ptr } %t580, ptr %l211
  br label %bb137
bb137:
  %t581 = load { i64, ptr }, ptr %l205, !tbaa !27
  %t582 = extractvalue { i64, ptr } %t581, 1
  %t583 = extractvalue { i64, ptr } %t581, 0
  %t584 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d101, i32 0, i32 1) }, 1
  %t585 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d101, i32 0, i32 1) }, 0
  %t586 = add i64 %t583, %t585
  %t587 = load { i64, ptr }, ptr %l208, !tbaa !27
  %t588 = extractvalue { i64, ptr } %t587, 1
  %t589 = extractvalue { i64, ptr } %t587, 0
  %t590 = add i64 %t586, %t589
  %t591 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d102, i32 0, i32 1) }, 1
  %t592 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d102, i32 0, i32 1) }, 0
  %t593 = add i64 %t590, %t592
  %t594 = load { i64, ptr }, ptr %l211, !tbaa !27
  %t595 = extractvalue { i64, ptr } %t594, 1
  %t596 = extractvalue { i64, ptr } %t594, 0
  %t597 = add i64 %t593, %t596
  %t598 = call ptr @__olang_scope_alloc(ptr %s26, i64 %t597)
  call void @olang_textcopy(ptr %t598, ptr %t582, i64 %t583)
  %t599 = getelementptr i8, ptr %t598, i64 %t583
  call void @olang_textcopy(ptr %t599, ptr %t584, i64 %t585)
  %t600 = getelementptr i8, ptr %t599, i64 %t585
  call void @olang_textcopy(ptr %t600, ptr %t588, i64 %t589)
  %t601 = getelementptr i8, ptr %t600, i64 %t589
  call void @olang_textcopy(ptr %t601, ptr %t591, i64 %t592)
  %t602 = getelementptr i8, ptr %t601, i64 %t592
  call void @olang_textcopy(ptr %t602, ptr %t595, i64 %t596)
  %t603 = insertvalue { i64, ptr } undef, i64 %t597, 0
  %t604 = insertvalue { i64, ptr } %t603, ptr %t598, 1
  %t606 = extractvalue { i64, ptr } %t604, 0
  %t607 = extractvalue { i64, ptr } %t604, 1
  %t608 = mul i64 %t606, 1
  %t609 = call ptr @__olang_scope_alloc(ptr %s26, i64 %t608)
  call void @llvm.memcpy.p0.p0.i64(ptr %t609, ptr %t607, i64 %t608, i1 false)
  %t610 = insertvalue { i64, ptr } undef, i64 %t606, 0
  %t611 = insertvalue { i64, ptr } %t610, ptr %t609, 1
  %t612 = load ptr, ptr %l200, !tbaa !29
  call void @compiler_2fmir_2ecompiler_2fmir_3averifier_2ebad(ptr %v0, ptr %s26, ptr %t612, { i64, ptr } %t611)
  br label %bb138
bb138:
  call void @__olang_scope_close(ptr %s26)
  br label %bb139
bb139:
  br label %bb529
bb140:
  %t614 = load i32, ptr %l1, !range !{i32 0, i32 52}
  %t616 = trunc i64 2 to i32
  %t617 = icmp eq i32 %t614, %t616
  br i1 %t617, label %bb141, label %bb142
bb141:
  br label %bb143
bb142:
  br label %bb150
bb143:
  %t619 = load i32, ptr %l8, !tbaa !23
  %t620 = load i32, ptr @G_2ecompiler_2ftypes_2eBoolT, !tbaa !23
  %t623 = icmp ne i32 %t619, %t620
  br i1 %t623, label %bb144, label %bb145
bb144:
  store %olang.scope zeroinitializer, ptr %s30
  %t625 = load ptr, ptr %l0, !tbaa !29
  store ptr %t625, ptr %l219, !tbaa !29
  %t626 = load ptr, ptr %l0, !tbaa !29
  %t627 = load i32, ptr %l7, !tbaa !23
  %t630 = call { i64, ptr } @compiler_2fmir_2ecompiler_2fmir_3averifier_2ecanon(ptr %v0, ptr %s30, ptr %v2, ptr %t626, i32 %t627)
  store { i64, ptr } %t630, ptr %l222
  br label %bb146
bb145:
  br label %bb148
bb146:
  %t631 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d103, i32 0, i32 1) }, 1
  %t632 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d103, i32 0, i32 1) }, 0
  %t633 = load { i64, ptr }, ptr %l222, !tbaa !27
  %t634 = extractvalue { i64, ptr } %t633, 1
  %t635 = extractvalue { i64, ptr } %t633, 0
  %t636 = add i64 %t632, %t635
  %t637 = call ptr @__olang_scope_alloc(ptr %s30, i64 %t636)
  call void @olang_textcopy(ptr %t637, ptr %t631, i64 %t632)
  %t638 = getelementptr i8, ptr %t637, i64 %t632
  call void @olang_textcopy(ptr %t638, ptr %t634, i64 %t635)
  %t639 = insertvalue { i64, ptr } undef, i64 %t636, 0
  %t640 = insertvalue { i64, ptr } %t639, ptr %t637, 1
  %t642 = extractvalue { i64, ptr } %t640, 0
  %t643 = extractvalue { i64, ptr } %t640, 1
  %t644 = mul i64 %t642, 1
  %t645 = call ptr @__olang_scope_alloc(ptr %s30, i64 %t644)
  call void @llvm.memcpy.p0.p0.i64(ptr %t645, ptr %t643, i64 %t644, i1 false)
  %t646 = insertvalue { i64, ptr } undef, i64 %t642, 0
  %t647 = insertvalue { i64, ptr } %t646, ptr %t645, 1
  %t648 = load ptr, ptr %l219, !tbaa !29
  call void @compiler_2fmir_2ecompiler_2fmir_3averifier_2ebad(ptr %v0, ptr %s30, ptr %t648, { i64, ptr } %t647)
  br label %bb147
bb147:
  call void @__olang_scope_close(ptr %s30)
  br label %bb148
bb148:
  %t650 = load ptr, ptr %l0, !tbaa !29
  %t651 = load i32, ptr %l1, !range !{i32 0, i32 52}
  %t652 = load %"compiler/mir:Range", ptr %l3
  %t653 = load i32, ptr %l2, !tbaa !23
  call void @compiler_2fmir_2ecompiler_2fmir_3averifier_2esameArgs(ptr %v0, ptr %v1, ptr %v2, ptr %t650, i32 %t651, %"compiler/mir:Range" %t652, i32 %t653)
  br label %bb149
bb149:
  br label %bb529
bb150:
  %t658 = load i32, ptr %l1, !range !{i32 0, i32 52}
  %t660 = trunc i64 13 to i32
  %t661 = icmp eq i32 %t658, %t660
  br i1 %t661, label %bb151, label %bb152
bb151:
  br label %bb163
bb152:
  %t663 = load i32, ptr %l1, !range !{i32 0, i32 52}
  %t665 = trunc i64 14 to i32
  %t666 = icmp eq i32 %t663, %t665
  br i1 %t666, label %bb153, label %bb154
bb153:
  br label %bb163
bb154:
  %t668 = load i32, ptr %l1, !range !{i32 0, i32 52}
  %t670 = trunc i64 15 to i32
  %t671 = icmp eq i32 %t668, %t670
  br i1 %t671, label %bb155, label %bb156
bb155:
  br label %bb163
bb156:
  %t673 = load i32, ptr %l1, !range !{i32 0, i32 52}
  %t675 = trunc i64 16 to i32
  %t676 = icmp eq i32 %t673, %t675
  br i1 %t676, label %bb157, label %bb158
bb157:
  br label %bb163
bb158:
  %t678 = load i32, ptr %l1, !range !{i32 0, i32 52}
  %t680 = trunc i64 17 to i32
  %t681 = icmp eq i32 %t678, %t680
  br i1 %t681, label %bb159, label %bb160
bb159:
  br label %bb163
bb160:
  %t683 = load i32, ptr %l1, !range !{i32 0, i32 52}
  %t685 = trunc i64 18 to i32
  %t686 = icmp eq i32 %t683, %t685
  br i1 %t686, label %bb161, label %bb162
bb161:
  br label %bb163
bb162:
  br label %bb200
bb163:
  %t688 = load ptr, ptr %l0, !tbaa !29
  store ptr %t688, ptr %l241, !tbaa !29
  %t689 = load ptr, ptr %l0, !tbaa !29
  %t690 = load %"compiler/mir:Range", ptr %l3
  %t693 = call { i64, [4 x i64] } @compiler_2fmir_2ecompiler_2fmir_3averifier_2earg(ptr %v0, ptr %v1, ptr %t689, %"compiler/mir:Range" %t690, i64 1)
  store { i64, [4 x i64] } %t693, ptr %l244
  br label %bb164
bb164:
  %t694 = load ptr, ptr %l241, !tbaa !29
  %t695 = load { i64, [4 x i64] }, ptr %l244
  %t696 = call i32 @compiler_2fmir_2ecompiler_2fmir_3averifier_2eoperandType(ptr %v0, ptr %v1, ptr %v2, ptr %t694, { i64, [4 x i64] } %t695)
  store i32 %t696, ptr %l245
  br label %bb165
bb165:
  %t697 = load i32, ptr %l245, !tbaa !23
  store i32 %t697, ptr %l9, !tbaa !23
  %t698 = load ptr, ptr %l4, !tbaa !29
  store ptr %t698, ptr %l246, !tbaa !29
  %t699 = load i32, ptr %l8, !tbaa !23
  store i32 %t699, ptr %l247, !tbaa !23
  %t700 = load ptr, ptr %l4, !tbaa !29
  store ptr %t700, ptr %l248, !tbaa !29
  %t701 = load i32, ptr %l9, !tbaa !23
  %t702 = load ptr, ptr %l248, !tbaa !29
  %t703 = call ptr @__olang_scope_or(ptr %v2, ptr %t702)
  %t704 = ptrtoint ptr %t703 to i64
  %t706 = inttoptr i64 %t704 to ptr
  %t707 = load ptr, ptr %l248, !tbaa !29
  %t709 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %t706, ptr %t707, i32 %t701)
  store i32 %t709, ptr %l251
  br label %bb166
bb166:
  %t710 = load ptr, ptr %l246, !tbaa !29
  %t711 = call ptr @__olang_scope_or(ptr %v2, ptr %t710)
  %t712 = ptrtoint ptr %t711 to i64
  %t714 = inttoptr i64 %t712 to ptr
  %t715 = load ptr, ptr %l246, !tbaa !29
  %t716 = load i32, ptr %l247, !tbaa !23
  %t717 = load i32, ptr %l251, !tbaa !23
  %t718 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eSame(ptr %t714, ptr %t715, i32 %t716, i32 %t717)
  store i1 %t718, ptr %l253
  br label %bb167
bb167:
  %t719 = load i1, ptr %l253, !tbaa !21
  %t720 = xor i1 %t719, true
  br i1 %t720, label %bb168, label %bb169
bb168:
  store %olang.scope zeroinitializer, ptr %s33
  %t722 = load ptr, ptr %l0, !tbaa !29
  store ptr %t722, ptr %l255, !tbaa !29
  %t723 = load i32, ptr %l1, !range !{i32 0, i32 52}
  store i32 %t723, ptr %l256
  store %olang.builder { ptr null, i64 0, i64 64, ptr null, ptr null }, ptr %s34
  store ptr %s34room, ptr %s34
  call void @olang_2emir_2eHelperKind_2eRender_2ecompiler_2ftyped_3aPrimOp(ptr %s34, ptr %l256, i64 0)
  br label %bb170
bb169:
  br label %bb175
bb170:
  %t725 = load ptr, ptr %s34
  %t726 = getelementptr %olang.builder, ptr %s34, i32 0, i32 1
  %t727 = load i64, ptr %t726
  %t728 = call ptr @__olang_scope_alloc(ptr %s33, i64 %t727)
  call void @olang_textcopy(ptr %t728, ptr %t725, i64 %t727)
  %t729 = insertvalue { i64, ptr } undef, i64 %t727, 0
  %t730 = insertvalue { i64, ptr } %t729, ptr %t728, 1
  store { i64, ptr } %t730, ptr %l258, !tbaa !27
  %t731 = getelementptr %olang.builder, ptr %s34, i32 0, i32 3
  %t732 = load ptr, ptr %t731
  %t733 = icmp ne ptr %t732, null
  br i1 %t733, label %sbgrew.734, label %sbdone.735
sbgrew.734:
  call void @__olang_sb_done(ptr %s34)
  br label %sbdone.735
sbdone.735:
  %t736 = load { i64, ptr }, ptr %l258, !tbaa !27
  %t737 = extractvalue { i64, ptr } %t736, 0
  %t738 = extractvalue { i64, ptr } %t736, 1
  %t739 = mul i64 %t737, 1
  %t740 = call ptr @__olang_scope_alloc(ptr %s33, i64 %t739)
  call void @llvm.memcpy.p0.p0.i64(ptr %t740, ptr %t738, i64 %t739, i1 false)
  %t741 = insertvalue { i64, ptr } undef, i64 %t737, 0
  %t742 = insertvalue { i64, ptr } %t741, ptr %t740, 1
  %t744 = call { i64, ptr } @compiler_2fmir_2eshort(ptr %s33, ptr %s33, { i64, ptr } %t742)
  store { i64, ptr } %t744, ptr %l260
  br label %bb171
bb171:
  %t745 = load ptr, ptr %l0, !tbaa !29
  %t746 = load i32, ptr %l7, !tbaa !23
  %t749 = call { i64, ptr } @compiler_2fmir_2ecompiler_2fmir_3averifier_2ecanon(ptr %v0, ptr %s33, ptr %v2, ptr %t745, i32 %t746)
  store { i64, ptr } %t749, ptr %l263
  br label %bb172
bb172:
  %t750 = load ptr, ptr %l0, !tbaa !29
  %t751 = load i32, ptr %l9, !tbaa !23
  %t754 = call { i64, ptr } @compiler_2fmir_2ecompiler_2fmir_3averifier_2ecanon(ptr %v0, ptr %s33, ptr %v2, ptr %t750, i32 %t751)
  store { i64, ptr } %t754, ptr %l266
  br label %bb173
bb173:
  %t755 = load { i64, ptr }, ptr %l260, !tbaa !27
  %t756 = extractvalue { i64, ptr } %t755, 1
  %t757 = extractvalue { i64, ptr } %t755, 0
  %t758 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d104, i32 0, i32 1) }, 1
  %t759 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d104, i32 0, i32 1) }, 0
  %t760 = add i64 %t757, %t759
  %t761 = load { i64, ptr }, ptr %l263, !tbaa !27
  %t762 = extractvalue { i64, ptr } %t761, 1
  %t763 = extractvalue { i64, ptr } %t761, 0
  %t764 = add i64 %t760, %t763
  %t765 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d105, i32 0, i32 1) }, 1
  %t766 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d105, i32 0, i32 1) }, 0
  %t767 = add i64 %t764, %t766
  %t768 = load { i64, ptr }, ptr %l266, !tbaa !27
  %t769 = extractvalue { i64, ptr } %t768, 1
  %t770 = extractvalue { i64, ptr } %t768, 0
  %t771 = add i64 %t767, %t770
  %t772 = call ptr @__olang_scope_alloc(ptr %s33, i64 %t771)
  call void @olang_textcopy(ptr %t772, ptr %t756, i64 %t757)
  %t773 = getelementptr i8, ptr %t772, i64 %t757
  call void @olang_textcopy(ptr %t773, ptr %t758, i64 %t759)
  %t774 = getelementptr i8, ptr %t773, i64 %t759
  call void @olang_textcopy(ptr %t774, ptr %t762, i64 %t763)
  %t775 = getelementptr i8, ptr %t774, i64 %t763
  call void @olang_textcopy(ptr %t775, ptr %t765, i64 %t766)
  %t776 = getelementptr i8, ptr %t775, i64 %t766
  call void @olang_textcopy(ptr %t776, ptr %t769, i64 %t770)
  %t777 = insertvalue { i64, ptr } undef, i64 %t771, 0
  %t778 = insertvalue { i64, ptr } %t777, ptr %t772, 1
  %t780 = extractvalue { i64, ptr } %t778, 0
  %t781 = extractvalue { i64, ptr } %t778, 1
  %t782 = mul i64 %t780, 1
  %t783 = call ptr @__olang_scope_alloc(ptr %s33, i64 %t782)
  call void @llvm.memcpy.p0.p0.i64(ptr %t783, ptr %t781, i64 %t782, i1 false)
  %t784 = insertvalue { i64, ptr } undef, i64 %t780, 0
  %t785 = insertvalue { i64, ptr } %t784, ptr %t783, 1
  %t786 = load ptr, ptr %l255, !tbaa !29
  call void @compiler_2fmir_2ecompiler_2fmir_3averifier_2ebad(ptr %v0, ptr %s33, ptr %t786, { i64, ptr } %t785)
  br label %bb174
bb174:
  call void @__olang_scope_close(ptr %s33)
  br label %bb175
bb175:
  %t788 = load ptr, ptr %l4, !tbaa !29
  store ptr %t788, ptr %l269, !tbaa !29
  %t789 = load i32, ptr %l8, !tbaa !23
  %t790 = load ptr, ptr %l269, !tbaa !29
  %t791 = call ptr @__olang_scope_or(ptr %v2, ptr %t790)
  %t792 = ptrtoint ptr %t791 to i64
  %t794 = inttoptr i64 %t792 to ptr
  %t795 = load ptr, ptr %l269, !tbaa !29
  %t797 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsNumber(ptr %t794, ptr %t795, i32 %t789)
  store i1 %t797, ptr %l272
  br label %bb176
bb176:
  %t798 = load i1, ptr %l272, !tbaa !21
  %t799 = xor i1 %t798, true
  br i1 %t799, label %bb177, label %bb178
bb177:
  %t801 = load i32, ptr %l8, !tbaa !23
  %t802 = load i32, ptr @G_2ecompiler_2ftypes_2eBoolT, !tbaa !23
  %t805 = icmp ne i32 %t801, %t802
  store i1 %t805, ptr %l274, !tbaa !21
  br label %bb179
bb178:
  store i1 false, ptr %l274, !tbaa !21
  br label %bb179
bb179:
  %t807 = load i1, ptr %l274, !tbaa !21
  br i1 %t807, label %bb180, label %bb181
bb180:
  %t808 = load i32, ptr %l1, !range !{i32 0, i32 52}
  %t810 = trunc i64 13 to i32
  %t811 = icmp eq i32 %t808, %t810
  %t813 = xor i1 %t811, true
  store i1 %t813, ptr %l278, !tbaa !21
  br label %bb182
bb181:
  store i1 false, ptr %l278, !tbaa !21
  br label %bb182
bb182:
  %t815 = load i1, ptr %l278, !tbaa !21
  br i1 %t815, label %bb183, label %bb184
bb183:
  %t816 = load i32, ptr %l1, !range !{i32 0, i32 52}
  %t818 = trunc i64 14 to i32
  %t819 = icmp eq i32 %t816, %t818
  %t821 = xor i1 %t819, true
  store i1 %t821, ptr %l282, !tbaa !21
  br label %bb185
bb184:
  store i1 false, ptr %l282, !tbaa !21
  br label %bb185
bb185:
  %t823 = load i1, ptr %l282, !tbaa !21
  br i1 %t823, label %bb186, label %bb187
bb186:
  store %olang.scope zeroinitializer, ptr %s36
  %t824 = load ptr, ptr %l0, !tbaa !29
  store ptr %t824, ptr %l286, !tbaa !29
  %t825 = load i32, ptr %l1, !range !{i32 0, i32 52}
  store i32 %t825, ptr %l287
  store %olang.builder { ptr null, i64 0, i64 64, ptr null, ptr null }, ptr %s37
  store ptr %s37room, ptr %s37
  call void @olang_2emir_2eHelperKind_2eRender_2ecompiler_2ftyped_3aPrimOp(ptr %s37, ptr %l287, i64 0)
  br label %bb188
bb187:
  br label %bb192
bb188:
  %t827 = load ptr, ptr %s37
  %t828 = getelementptr %olang.builder, ptr %s37, i32 0, i32 1
  %t829 = load i64, ptr %t828
  %t830 = call ptr @__olang_scope_alloc(ptr %s36, i64 %t829)
  call void @olang_textcopy(ptr %t830, ptr %t827, i64 %t829)
  %t831 = insertvalue { i64, ptr } undef, i64 %t829, 0
  %t832 = insertvalue { i64, ptr } %t831, ptr %t830, 1
  store { i64, ptr } %t832, ptr %l289, !tbaa !27
  %t833 = getelementptr %olang.builder, ptr %s37, i32 0, i32 3
  %t834 = load ptr, ptr %t833
  %t835 = icmp ne ptr %t834, null
  br i1 %t835, label %sbgrew.836, label %sbdone.837
sbgrew.836:
  call void @__olang_sb_done(ptr %s37)
  br label %sbdone.837
sbdone.837:
  %t838 = load { i64, ptr }, ptr %l289, !tbaa !27
  %t839 = extractvalue { i64, ptr } %t838, 0
  %t840 = extractvalue { i64, ptr } %t838, 1
  %t841 = mul i64 %t839, 1
  %t842 = call ptr @__olang_scope_alloc(ptr %s36, i64 %t841)
  call void @llvm.memcpy.p0.p0.i64(ptr %t842, ptr %t840, i64 %t841, i1 false)
  %t843 = insertvalue { i64, ptr } undef, i64 %t839, 0
  %t844 = insertvalue { i64, ptr } %t843, ptr %t842, 1
  %t846 = call { i64, ptr } @compiler_2fmir_2eshort(ptr %s36, ptr %s36, { i64, ptr } %t844)
  store { i64, ptr } %t846, ptr %l291
  br label %bb189
bb189:
  %t847 = load ptr, ptr %l0, !tbaa !29
  %t848 = load i32, ptr %l7, !tbaa !23
  %t851 = call { i64, ptr } @compiler_2fmir_2ecompiler_2fmir_3averifier_2ecanon(ptr %v0, ptr %s36, ptr %v2, ptr %t847, i32 %t848)
  store { i64, ptr } %t851, ptr %l294
  br label %bb190
bb190:
  %t852 = load { i64, ptr }, ptr %l291, !tbaa !27
  %t853 = extractvalue { i64, ptr } %t852, 1
  %t854 = extractvalue { i64, ptr } %t852, 0
  %t855 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d106, i32 0, i32 1) }, 1
  %t856 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d106, i32 0, i32 1) }, 0
  %t857 = add i64 %t854, %t856
  %t858 = load { i64, ptr }, ptr %l294, !tbaa !27
  %t859 = extractvalue { i64, ptr } %t858, 1
  %t860 = extractvalue { i64, ptr } %t858, 0
  %t861 = add i64 %t857, %t860
  %t862 = call ptr @__olang_scope_alloc(ptr %s36, i64 %t861)
  call void @olang_textcopy(ptr %t862, ptr %t853, i64 %t854)
  %t863 = getelementptr i8, ptr %t862, i64 %t854
  call void @olang_textcopy(ptr %t863, ptr %t855, i64 %t856)
  %t864 = getelementptr i8, ptr %t863, i64 %t856
  call void @olang_textcopy(ptr %t864, ptr %t859, i64 %t860)
  %t865 = insertvalue { i64, ptr } undef, i64 %t861, 0
  %t866 = insertvalue { i64, ptr } %t865, ptr %t862, 1
  %t868 = extractvalue { i64, ptr } %t866, 0
  %t869 = extractvalue { i64, ptr } %t866, 1
  %t870 = mul i64 %t868, 1
  %t871 = call ptr @__olang_scope_alloc(ptr %s36, i64 %t870)
  call void @llvm.memcpy.p0.p0.i64(ptr %t871, ptr %t869, i64 %t870, i1 false)
  %t872 = insertvalue { i64, ptr } undef, i64 %t868, 0
  %t873 = insertvalue { i64, ptr } %t872, ptr %t871, 1
  %t874 = load ptr, ptr %l286, !tbaa !29
  call void @compiler_2fmir_2ecompiler_2fmir_3averifier_2ebad(ptr %v0, ptr %s36, ptr %t874, { i64, ptr } %t873)
  br label %bb191
bb191:
  call void @__olang_scope_close(ptr %s36)
  br label %bb192
bb192:
  %t876 = load i32, ptr %l2, !tbaa !23
  %t877 = load i32, ptr @G_2ecompiler_2ftypes_2eBoolT, !tbaa !23
  %t880 = icmp ne i32 %t876, %t877
  br i1 %t880, label %bb193, label %bb194
bb193:
  store %olang.scope zeroinitializer, ptr %s39
  %t882 = load ptr, ptr %l0, !tbaa !29
  store ptr %t882, ptr %l300, !tbaa !29
  %t883 = load i32, ptr %l1, !range !{i32 0, i32 52}
  store i32 %t883, ptr %l301
  store %olang.builder { ptr null, i64 0, i64 64, ptr null, ptr null }, ptr %s40
  store ptr %s40room, ptr %s40
  call void @olang_2emir_2eHelperKind_2eRender_2ecompiler_2ftyped_3aPrimOp(ptr %s40, ptr %l301, i64 0)
  br label %bb195
bb194:
  br label %bb199
bb195:
  %t885 = load ptr, ptr %s40
  %t886 = getelementptr %olang.builder, ptr %s40, i32 0, i32 1
  %t887 = load i64, ptr %t886
  %t888 = call ptr @__olang_scope_alloc(ptr %s39, i64 %t887)
  call void @olang_textcopy(ptr %t888, ptr %t885, i64 %t887)
  %t889 = insertvalue { i64, ptr } undef, i64 %t887, 0
  %t890 = insertvalue { i64, ptr } %t889, ptr %t888, 1
  store { i64, ptr } %t890, ptr %l303, !tbaa !27
  %t891 = getelementptr %olang.builder, ptr %s40, i32 0, i32 3
  %t892 = load ptr, ptr %t891
  %t893 = icmp ne ptr %t892, null
  br i1 %t893, label %sbgrew.894, label %sbdone.895
sbgrew.894:
  call void @__olang_sb_done(ptr %s40)
  br label %sbdone.895
sbdone.895:
  %t896 = load { i64, ptr }, ptr %l303, !tbaa !27
  %t897 = extractvalue { i64, ptr } %t896, 0
  %t898 = extractvalue { i64, ptr } %t896, 1
  %t899 = mul i64 %t897, 1
  %t900 = call ptr @__olang_scope_alloc(ptr %s39, i64 %t899)
  call void @llvm.memcpy.p0.p0.i64(ptr %t900, ptr %t898, i64 %t899, i1 false)
  %t901 = insertvalue { i64, ptr } undef, i64 %t897, 0
  %t902 = insertvalue { i64, ptr } %t901, ptr %t900, 1
  %t904 = call { i64, ptr } @compiler_2fmir_2eshort(ptr %s39, ptr %s39, { i64, ptr } %t902)
  store { i64, ptr } %t904, ptr %l305
  br label %bb196
bb196:
  %t905 = load ptr, ptr %l0, !tbaa !29
  %t906 = load i32, ptr %l2, !tbaa !23
  %t909 = call { i64, ptr } @compiler_2fmir_2ecompiler_2fmir_3averifier_2ecanon(ptr %v0, ptr %s39, ptr %v2, ptr %t905, i32 %t906)
  store { i64, ptr } %t909, ptr %l308
  br label %bb197
bb197:
  %t910 = load { i64, ptr }, ptr %l305, !tbaa !27
  %t911 = extractvalue { i64, ptr } %t910, 1
  %t912 = extractvalue { i64, ptr } %t910, 0
  %t913 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d107, i32 0, i32 1) }, 1
  %t914 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d107, i32 0, i32 1) }, 0
  %t915 = add i64 %t912, %t914
  %t916 = load { i64, ptr }, ptr %l308, !tbaa !27
  %t917 = extractvalue { i64, ptr } %t916, 1
  %t918 = extractvalue { i64, ptr } %t916, 0
  %t919 = add i64 %t915, %t918
  %t920 = call ptr @__olang_scope_alloc(ptr %s39, i64 %t919)
  call void @olang_textcopy(ptr %t920, ptr %t911, i64 %t912)
  %t921 = getelementptr i8, ptr %t920, i64 %t912
  call void @olang_textcopy(ptr %t921, ptr %t913, i64 %t914)
  %t922 = getelementptr i8, ptr %t921, i64 %t914
  call void @olang_textcopy(ptr %t922, ptr %t917, i64 %t918)
  %t923 = insertvalue { i64, ptr } undef, i64 %t919, 0
  %t924 = insertvalue { i64, ptr } %t923, ptr %t920, 1
  %t926 = extractvalue { i64, ptr } %t924, 0
  %t927 = extractvalue { i64, ptr } %t924, 1
  %t928 = mul i64 %t926, 1
  %t929 = call ptr @__olang_scope_alloc(ptr %s39, i64 %t928)
  call void @llvm.memcpy.p0.p0.i64(ptr %t929, ptr %t927, i64 %t928, i1 false)
  %t930 = insertvalue { i64, ptr } undef, i64 %t926, 0
  %t931 = insertvalue { i64, ptr } %t930, ptr %t929, 1
  %t932 = load ptr, ptr %l300, !tbaa !29
  call void @compiler_2fmir_2ecompiler_2fmir_3averifier_2ebad(ptr %v0, ptr %s39, ptr %t932, { i64, ptr } %t931)
  br label %bb198
bb198:
  call void @__olang_scope_close(ptr %s39)
  br label %bb199
bb199:
  br label %bb529
bb200:
  %t934 = load i32, ptr %l1, !range !{i32 0, i32 52}
  %t936 = trunc i64 19 to i32
  %t937 = icmp eq i32 %t934, %t936
  br i1 %t937, label %bb201, label %bb202
bb201:
  br label %bb203
bb202:
  br label %bb236
bb203:
  %t939 = load ptr, ptr %l0, !tbaa !29
  store ptr %t939, ptr %l313, !tbaa !29
  %t940 = load ptr, ptr %l0, !tbaa !29
  %t941 = load %"compiler/mir:Range", ptr %l3
  %t944 = call { i64, [4 x i64] } @compiler_2fmir_2ecompiler_2fmir_3averifier_2earg(ptr %v0, ptr %v1, ptr %t940, %"compiler/mir:Range" %t941, i64 1)
  store { i64, [4 x i64] } %t944, ptr %l316
  br label %bb204
bb204:
  %t945 = load ptr, ptr %l313, !tbaa !29
  %t946 = load { i64, [4 x i64] }, ptr %l316
  %t947 = call i32 @compiler_2fmir_2ecompiler_2fmir_3averifier_2eoperandType(ptr %v0, ptr %v1, ptr %v2, ptr %t945, { i64, [4 x i64] } %t946)
  store i32 %t947, ptr %l317
  br label %bb205
bb205:
  %t948 = load i32, ptr %l317, !tbaa !23
  store i32 %t948, ptr %l10, !tbaa !23
  %t949 = load ptr, ptr %l4, !tbaa !29
  store ptr %t949, ptr %l318, !tbaa !29
  %t950 = load i32, ptr %l8, !tbaa !23
  %t951 = load ptr, ptr %l318, !tbaa !29
  %t952 = call ptr @__olang_scope_or(ptr %v2, ptr %t951)
  %t953 = ptrtoint ptr %t952 to i64
  %t955 = inttoptr i64 %t953 to ptr
  %t956 = load ptr, ptr %l318, !tbaa !29
  %t958 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %t955, ptr %t956, i32 %t950)
  store i32 %t958, ptr %l321
  br label %bb206
bb206:
  %t959 = load i32, ptr %l321, !range !{i32 0, i32 33}
  store i32 %t959, ptr %l11
  %t960 = load ptr, ptr %l4, !tbaa !29
  store ptr %t960, ptr %l322, !tbaa !29
  %t961 = load i32, ptr %l10, !tbaa !23
  %t962 = load ptr, ptr %l322, !tbaa !29
  %t963 = call ptr @__olang_scope_or(ptr %v2, ptr %t962)
  %t964 = ptrtoint ptr %t963 to i64
  %t966 = inttoptr i64 %t964 to ptr
  %t967 = load ptr, ptr %l322, !tbaa !29
  %t969 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %t966, ptr %t967, i32 %t961)
  store i32 %t969, ptr %l325
  br label %bb207
bb207:
  %t970 = load i32, ptr %l325, !tbaa !23
  store i32 %t970, ptr %l12, !tbaa !23
  %t971 = load ptr, ptr %l4, !tbaa !29
  store ptr %t971, ptr %l326, !tbaa !29
  %t972 = load i32, ptr %l12, !tbaa !23
  %t973 = load i32, ptr %l8, !tbaa !23
  %t974 = load ptr, ptr %l326, !tbaa !29
  %t975 = call ptr @__olang_scope_or(ptr %v2, ptr %t974)
  %t976 = ptrtoint ptr %t975 to i64
  %t978 = inttoptr i64 %t976 to ptr
  %t979 = load ptr, ptr %l326, !tbaa !29
  %t982 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eSame(ptr %t978, ptr %t979, i32 %t972, i32 %t973)
  store i1 %t982, ptr %l330
  br label %bb208
bb208:
  %t983 = load i1, ptr %l330, !tbaa !21
  store i1 %t983, ptr %l13, !tbaa !21
  %t984 = load i32, ptr %l11, !range !{i32 0, i32 33}
  %t986 = trunc i64 20 to i32
  %t987 = icmp eq i32 %t984, %t986
  br i1 %t987, label %bb209, label %bb210
bb209:
  %t989 = load ptr, ptr %l4, !tbaa !29
  store ptr %t989, ptr %l334, !tbaa !29
  %t990 = load i32, ptr %l12, !tbaa !23
  %t991 = load ptr, ptr %l334, !tbaa !29
  %t992 = call ptr @__olang_scope_or(ptr %v2, ptr %t991)
  %t993 = ptrtoint ptr %t992 to i64
  %t995 = inttoptr i64 %t993 to ptr
  %t996 = load ptr, ptr %l334, !tbaa !29
  %t998 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsRef(ptr %t995, ptr %t996, i32 %t990)
  store i1 %t998, ptr %l337
  br label %bb211
bb210:
  store i1 false, ptr %l333, !tbaa !21
  br label %bb212
bb211:
  %t999 = load i1, ptr %l337, !tbaa !21
  store i1 %t999, ptr %l333, !tbaa !21
  br label %bb212
bb212:
  %t1000 = load i1, ptr %l333, !tbaa !21
  br i1 %t1000, label %bb213, label %bb214
bb213:
  %t1001 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1001, ptr %l338, !tbaa !29
  %t1002 = load ptr, ptr %l4, !tbaa !29
  store ptr %t1002, ptr %l339, !tbaa !29
  %t1003 = load i32, ptr %l8, !tbaa !23
  %t1004 = load ptr, ptr %l339, !tbaa !29
  %t1005 = call ptr @__olang_scope_or(ptr %v2, ptr %t1004)
  %t1006 = ptrtoint ptr %t1005 to i64
  %t1008 = inttoptr i64 %t1006 to ptr
  %t1009 = load ptr, ptr %l339, !tbaa !29
  %t1011 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eReferent(ptr %t1008, ptr %t1009, i32 %t1003)
  store i32 %t1011, ptr %l342
  br label %bb215
bb214:
  br label %bb218
bb215:
  %t1012 = load ptr, ptr %l4, !tbaa !29
  store ptr %t1012, ptr %l343, !tbaa !29
  %t1013 = load i32, ptr %l12, !tbaa !23
  %t1014 = load ptr, ptr %l343, !tbaa !29
  %t1015 = call ptr @__olang_scope_or(ptr %v2, ptr %t1014)
  %t1016 = ptrtoint ptr %t1015 to i64
  %t1018 = inttoptr i64 %t1016 to ptr
  %t1019 = load ptr, ptr %l343, !tbaa !29
  %t1021 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eReferent(ptr %t1018, ptr %t1019, i32 %t1013)
  store i32 %t1021, ptr %l346
  br label %bb216
bb216:
  %t1022 = load ptr, ptr %l338, !tbaa !29
  %t1023 = load i32, ptr %l342, !tbaa !23
  %t1024 = load i32, ptr %l346, !tbaa !23
  %t1025 = call i1 @compiler_2fmir_2ecompiler_2fmir_3averifier_2esameRepr(ptr %v0, ptr %v2, ptr %t1022, i32 %t1023, i32 %t1024)
  store i1 %t1025, ptr %l347
  br label %bb217
bb217:
  %t1026 = load i1, ptr %l347, !tbaa !21
  store i1 %t1026, ptr %l13, !tbaa !21
  br label %bb218
bb218:
  %t1027 = load i32, ptr %l11, !range !{i32 0, i32 33}
  %t1029 = trunc i64 20 to i32
  %t1030 = icmp eq i32 %t1027, %t1029
  %t1032 = xor i1 %t1030, true
  br i1 %t1032, label %bb219, label %bb220
bb219:
  %t1034 = load i32, ptr %l11, !range !{i32 0, i32 33}
  %t1036 = trunc i64 21 to i32
  %t1037 = icmp eq i32 %t1034, %t1036
  %t1039 = xor i1 %t1037, true
  store i1 %t1039, ptr %l351, !tbaa !21
  br label %bb221
bb220:
  store i1 false, ptr %l351, !tbaa !21
  br label %bb221
bb221:
  %t1041 = load i1, ptr %l351, !tbaa !21
  br i1 %t1041, label %bb222, label %bb223
bb222:
  store i1 true, ptr %l355, !tbaa !21
  br label %bb224
bb223:
  %t1042 = load i1, ptr %l13, !tbaa !21
  %t1044 = xor i1 %t1042, true
  store i1 %t1044, ptr %l355, !tbaa !21
  br label %bb224
bb224:
  %t1046 = load i1, ptr %l355, !tbaa !21
  br i1 %t1046, label %bb225, label %bb226
bb225:
  store %olang.scope zeroinitializer, ptr %s44
  %t1047 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1047, ptr %l358, !tbaa !29
  %t1048 = load ptr, ptr %l0, !tbaa !29
  %t1049 = load i32, ptr %l7, !tbaa !23
  %t1052 = call { i64, ptr } @compiler_2fmir_2ecompiler_2fmir_3averifier_2ecanon(ptr %v0, ptr %s44, ptr %v2, ptr %t1048, i32 %t1049)
  store { i64, ptr } %t1052, ptr %l361
  br label %bb227
bb226:
  br label %bb230
bb227:
  %t1053 = load ptr, ptr %l0, !tbaa !29
  %t1054 = load i32, ptr %l10, !tbaa !23
  %t1057 = call { i64, ptr } @compiler_2fmir_2ecompiler_2fmir_3averifier_2ecanon(ptr %v0, ptr %s44, ptr %v2, ptr %t1053, i32 %t1054)
  store { i64, ptr } %t1057, ptr %l364
  br label %bb228
bb228:
  %t1058 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d108, i32 0, i32 1) }, 1
  %t1059 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d108, i32 0, i32 1) }, 0
  %t1060 = load { i64, ptr }, ptr %l361, !tbaa !27
  %t1061 = extractvalue { i64, ptr } %t1060, 1
  %t1062 = extractvalue { i64, ptr } %t1060, 0
  %t1063 = add i64 %t1059, %t1062
  %t1064 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d109, i32 0, i32 1) }, 1
  %t1065 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d109, i32 0, i32 1) }, 0
  %t1066 = add i64 %t1063, %t1065
  %t1067 = load { i64, ptr }, ptr %l364, !tbaa !27
  %t1068 = extractvalue { i64, ptr } %t1067, 1
  %t1069 = extractvalue { i64, ptr } %t1067, 0
  %t1070 = add i64 %t1066, %t1069
  %t1071 = call ptr @__olang_scope_alloc(ptr %s44, i64 %t1070)
  call void @olang_textcopy(ptr %t1071, ptr %t1058, i64 %t1059)
  %t1072 = getelementptr i8, ptr %t1071, i64 %t1059
  call void @olang_textcopy(ptr %t1072, ptr %t1061, i64 %t1062)
  %t1073 = getelementptr i8, ptr %t1072, i64 %t1062
  call void @olang_textcopy(ptr %t1073, ptr %t1064, i64 %t1065)
  %t1074 = getelementptr i8, ptr %t1073, i64 %t1065
  call void @olang_textcopy(ptr %t1074, ptr %t1068, i64 %t1069)
  %t1075 = insertvalue { i64, ptr } undef, i64 %t1070, 0
  %t1076 = insertvalue { i64, ptr } %t1075, ptr %t1071, 1
  %t1078 = extractvalue { i64, ptr } %t1076, 0
  %t1079 = extractvalue { i64, ptr } %t1076, 1
  %t1080 = mul i64 %t1078, 1
  %t1081 = call ptr @__olang_scope_alloc(ptr %s44, i64 %t1080)
  call void @llvm.memcpy.p0.p0.i64(ptr %t1081, ptr %t1079, i64 %t1080, i1 false)
  %t1082 = insertvalue { i64, ptr } undef, i64 %t1078, 0
  %t1083 = insertvalue { i64, ptr } %t1082, ptr %t1081, 1
  %t1084 = load ptr, ptr %l358, !tbaa !29
  call void @compiler_2fmir_2ecompiler_2fmir_3averifier_2ebad(ptr %v0, ptr %s44, ptr %t1084, { i64, ptr } %t1083)
  br label %bb229
bb229:
  call void @__olang_scope_close(ptr %s44)
  br label %bb230
bb230:
  %t1086 = load i32, ptr %l2, !tbaa !23
  %t1087 = load i32, ptr @G_2ecompiler_2ftypes_2eBoolT, !tbaa !23
  %t1090 = icmp ne i32 %t1086, %t1087
  br i1 %t1090, label %bb231, label %bb232
bb231:
  store %olang.scope zeroinitializer, ptr %s46
  %t1092 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1092, ptr %l370, !tbaa !29
  %t1093 = load ptr, ptr %l0, !tbaa !29
  %t1094 = load i32, ptr %l2, !tbaa !23
  %t1097 = call { i64, ptr } @compiler_2fmir_2ecompiler_2fmir_3averifier_2ecanon(ptr %v0, ptr %s46, ptr %v2, ptr %t1093, i32 %t1094)
  store { i64, ptr } %t1097, ptr %l373
  br label %bb233
bb232:
  br label %bb235
bb233:
  %t1098 = extractvalue { i64, ptr } { i64 11, ptr getelementptr inbounds (<{ i64, [11 x i8] }>, ptr @.d110, i32 0, i32 1) }, 1
  %t1099 = extractvalue { i64, ptr } { i64 11, ptr getelementptr inbounds (<{ i64, [11 x i8] }>, ptr @.d110, i32 0, i32 1) }, 0
  %t1100 = load { i64, ptr }, ptr %l373, !tbaa !27
  %t1101 = extractvalue { i64, ptr } %t1100, 1
  %t1102 = extractvalue { i64, ptr } %t1100, 0
  %t1103 = add i64 %t1099, %t1102
  %t1104 = call ptr @__olang_scope_alloc(ptr %s46, i64 %t1103)
  call void @olang_textcopy(ptr %t1104, ptr %t1098, i64 %t1099)
  %t1105 = getelementptr i8, ptr %t1104, i64 %t1099
  call void @olang_textcopy(ptr %t1105, ptr %t1101, i64 %t1102)
  %t1106 = insertvalue { i64, ptr } undef, i64 %t1103, 0
  %t1107 = insertvalue { i64, ptr } %t1106, ptr %t1104, 1
  %t1109 = extractvalue { i64, ptr } %t1107, 0
  %t1110 = extractvalue { i64, ptr } %t1107, 1
  %t1111 = mul i64 %t1109, 1
  %t1112 = call ptr @__olang_scope_alloc(ptr %s46, i64 %t1111)
  call void @llvm.memcpy.p0.p0.i64(ptr %t1112, ptr %t1110, i64 %t1111, i1 false)
  %t1113 = insertvalue { i64, ptr } undef, i64 %t1109, 0
  %t1114 = insertvalue { i64, ptr } %t1113, ptr %t1112, 1
  %t1115 = load ptr, ptr %l370, !tbaa !29
  call void @compiler_2fmir_2ecompiler_2fmir_3averifier_2ebad(ptr %v0, ptr %s46, ptr %t1115, { i64, ptr } %t1114)
  br label %bb234
bb234:
  call void @__olang_scope_close(ptr %s46)
  br label %bb235
bb235:
  br label %bb529
bb236:
  %t1117 = load i32, ptr %l1, !range !{i32 0, i32 52}
  %t1119 = trunc i64 20 to i32
  %t1120 = icmp eq i32 %t1117, %t1119
  br i1 %t1120, label %bb237, label %bb238
bb237:
  br label %bb241
bb238:
  %t1122 = load i32, ptr %l1, !range !{i32 0, i32 52}
  %t1124 = trunc i64 21 to i32
  %t1125 = icmp eq i32 %t1122, %t1124
  br i1 %t1125, label %bb239, label %bb240
bb239:
  br label %bb241
bb240:
  br label %bb242
bb241:
  br label %bb529
bb242:
  %t1127 = load i32, ptr %l1, !range !{i32 0, i32 52}
  %t1129 = trunc i64 22 to i32
  %t1130 = icmp eq i32 %t1127, %t1129
  br i1 %t1130, label %bb243, label %bb244
bb243:
  br label %bb245
bb244:
  br label %bb262
bb245:
  %t1132 = load ptr, ptr %l4, !tbaa !29
  store ptr %t1132, ptr %l382, !tbaa !29
  %t1133 = load i32, ptr %l8, !tbaa !23
  %t1134 = load ptr, ptr %l382, !tbaa !29
  %t1135 = call ptr @__olang_scope_or(ptr %v2, ptr %t1134)
  %t1136 = ptrtoint ptr %t1135 to i64
  %t1138 = inttoptr i64 %t1136 to ptr
  %t1139 = load ptr, ptr %l382, !tbaa !29
  %t1141 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsRef(ptr %t1138, ptr %t1139, i32 %t1133)
  store i1 %t1141, ptr %l385
  br label %bb246
bb246:
  %t1142 = load i1, ptr %l385, !tbaa !21
  br i1 %t1142, label %bb247, label %bb248
bb247:
  %t1143 = load ptr, ptr %l4, !tbaa !29
  store ptr %t1143, ptr %l387, !tbaa !29
  %t1144 = load i32, ptr %l8, !tbaa !23
  %t1145 = load ptr, ptr %l387, !tbaa !29
  %t1146 = call ptr @__olang_scope_or(ptr %v2, ptr %t1145)
  %t1147 = ptrtoint ptr %t1146 to i64
  %t1149 = inttoptr i64 %t1147 to ptr
  %t1150 = load ptr, ptr %l387, !tbaa !29
  %t1152 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eReferent(ptr %t1149, ptr %t1150, i32 %t1144)
  store i32 %t1152, ptr %l390
  br label %bb249
bb248:
  %t1153 = load i32, ptr %l7, !tbaa !23
  store i32 %t1153, ptr %l386, !tbaa !23
  br label %bb250
bb249:
  %t1155 = load i32, ptr %l390, !tbaa !23
  store i32 %t1155, ptr %l386, !tbaa !23
  br label %bb250
bb250:
  %t1156 = load i32, ptr %l386, !tbaa !23
  %t1157 = load ptr, ptr %l0, !tbaa !29
  %t1161 = call i32 @compiler_2fmir_2ecompiler_2fmir_3averifier_2earrayOf(ptr %v0, ptr %v2, ptr %t1157, i32 %t1156)
  store i32 %t1161, ptr %l394
  br label %bb251
bb251:
  %t1162 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t1163 = load i32, ptr %l394, !tbaa !23
  %t1165 = icmp eq i32 %t1163, %t1162
  br i1 %t1165, label %bb252, label %bb253
bb252:
  store %olang.scope zeroinitializer, ptr %s50
  %t1167 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1167, ptr %l397, !tbaa !29
  %t1168 = load ptr, ptr %l0, !tbaa !29
  %t1169 = load i32, ptr %l7, !tbaa !23
  %t1172 = call { i64, ptr } @compiler_2fmir_2ecompiler_2fmir_3averifier_2ecanon(ptr %v0, ptr %s50, ptr %v2, ptr %t1168, i32 %t1169)
  store { i64, ptr } %t1172, ptr %l400
  br label %bb254
bb253:
  br label %bb256
bb254:
  %t1173 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d111, i32 0, i32 1) }, 1
  %t1174 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d111, i32 0, i32 1) }, 0
  %t1175 = load { i64, ptr }, ptr %l400, !tbaa !27
  %t1176 = extractvalue { i64, ptr } %t1175, 1
  %t1177 = extractvalue { i64, ptr } %t1175, 0
  %t1178 = add i64 %t1174, %t1177
  %t1179 = call ptr @__olang_scope_alloc(ptr %s50, i64 %t1178)
  call void @olang_textcopy(ptr %t1179, ptr %t1173, i64 %t1174)
  %t1180 = getelementptr i8, ptr %t1179, i64 %t1174
  call void @olang_textcopy(ptr %t1180, ptr %t1176, i64 %t1177)
  %t1181 = insertvalue { i64, ptr } undef, i64 %t1178, 0
  %t1182 = insertvalue { i64, ptr } %t1181, ptr %t1179, 1
  %t1184 = extractvalue { i64, ptr } %t1182, 0
  %t1185 = extractvalue { i64, ptr } %t1182, 1
  %t1186 = mul i64 %t1184, 1
  %t1187 = call ptr @__olang_scope_alloc(ptr %s50, i64 %t1186)
  call void @llvm.memcpy.p0.p0.i64(ptr %t1187, ptr %t1185, i64 %t1186, i1 false)
  %t1188 = insertvalue { i64, ptr } undef, i64 %t1184, 0
  %t1189 = insertvalue { i64, ptr } %t1188, ptr %t1187, 1
  %t1190 = load ptr, ptr %l397, !tbaa !29
  call void @compiler_2fmir_2ecompiler_2fmir_3averifier_2ebad(ptr %v0, ptr %s50, ptr %t1190, { i64, ptr } %t1189)
  br label %bb255
bb255:
  call void @__olang_scope_close(ptr %s50)
  br label %bb256
bb256:
  %t1192 = load i32, ptr %l2, !tbaa !23
  %t1193 = load i32, ptr @G_2ecompiler_2fmir_2eI64T, !tbaa !23
  %t1196 = icmp ne i32 %t1192, %t1193
  br i1 %t1196, label %bb257, label %bb258
bb257:
  store %olang.scope zeroinitializer, ptr %s52
  %t1198 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1198, ptr %l406, !tbaa !29
  %t1199 = load ptr, ptr %l0, !tbaa !29
  %t1200 = load i32, ptr %l2, !tbaa !23
  %t1203 = call { i64, ptr } @compiler_2fmir_2ecompiler_2fmir_3averifier_2ecanon(ptr %v0, ptr %s52, ptr %v2, ptr %t1199, i32 %t1200)
  store { i64, ptr } %t1203, ptr %l409
  br label %bb259
bb258:
  br label %bb261
bb259:
  %t1204 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d112, i32 0, i32 1) }, 1
  %t1205 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d112, i32 0, i32 1) }, 0
  %t1206 = load { i64, ptr }, ptr %l409, !tbaa !27
  %t1207 = extractvalue { i64, ptr } %t1206, 1
  %t1208 = extractvalue { i64, ptr } %t1206, 0
  %t1209 = add i64 %t1205, %t1208
  %t1210 = call ptr @__olang_scope_alloc(ptr %s52, i64 %t1209)
  call void @olang_textcopy(ptr %t1210, ptr %t1204, i64 %t1205)
  %t1211 = getelementptr i8, ptr %t1210, i64 %t1205
  call void @olang_textcopy(ptr %t1211, ptr %t1207, i64 %t1208)
  %t1212 = insertvalue { i64, ptr } undef, i64 %t1209, 0
  %t1213 = insertvalue { i64, ptr } %t1212, ptr %t1210, 1
  %t1215 = extractvalue { i64, ptr } %t1213, 0
  %t1216 = extractvalue { i64, ptr } %t1213, 1
  %t1217 = mul i64 %t1215, 1
  %t1218 = call ptr @__olang_scope_alloc(ptr %s52, i64 %t1217)
  call void @llvm.memcpy.p0.p0.i64(ptr %t1218, ptr %t1216, i64 %t1217, i1 false)
  %t1219 = insertvalue { i64, ptr } undef, i64 %t1215, 0
  %t1220 = insertvalue { i64, ptr } %t1219, ptr %t1218, 1
  %t1221 = load ptr, ptr %l406, !tbaa !29
  call void @compiler_2fmir_2ecompiler_2fmir_3averifier_2ebad(ptr %v0, ptr %s52, ptr %t1221, { i64, ptr } %t1220)
  br label %bb260
bb260:
  call void @__olang_scope_close(ptr %s52)
  br label %bb261
bb261:
  br label %bb529
bb262:
  %t1223 = load i32, ptr %l1, !range !{i32 0, i32 52}
  %t1225 = trunc i64 31 to i32
  %t1226 = icmp eq i32 %t1223, %t1225
  br i1 %t1226, label %bb263, label %bb264
bb263:
  br label %bb269
bb264:
  %t1228 = load i32, ptr %l1, !range !{i32 0, i32 52}
  %t1230 = trunc i64 32 to i32
  %t1231 = icmp eq i32 %t1228, %t1230
  br i1 %t1231, label %bb265, label %bb266
bb265:
  br label %bb269
bb266:
  %t1233 = load i32, ptr %l1, !range !{i32 0, i32 52}
  %t1235 = trunc i64 33 to i32
  %t1236 = icmp eq i32 %t1233, %t1235
  br i1 %t1236, label %bb267, label %bb268
bb267:
  br label %bb269
bb268:
  br label %bb285
bb269:
  %t1238 = load ptr, ptr %l4, !tbaa !29
  store ptr %t1238, ptr %l418, !tbaa !29
  %t1239 = load i32, ptr %l8, !tbaa !23
  %t1240 = load ptr, ptr %l418, !tbaa !29
  %t1241 = call ptr @__olang_scope_or(ptr %v2, ptr %t1240)
  %t1242 = ptrtoint ptr %t1241 to i64
  %t1244 = inttoptr i64 %t1242 to ptr
  %t1245 = load ptr, ptr %l418, !tbaa !29
  %t1247 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsInt(ptr %t1244, ptr %t1245, i32 %t1239)
  store i1 %t1247, ptr %l421
  br label %bb270
bb270:
  %t1248 = load i1, ptr %l421, !tbaa !21
  %t1249 = xor i1 %t1248, true
  br i1 %t1249, label %bb271, label %bb272
bb271:
  store %olang.scope zeroinitializer, ptr %s55
  %t1251 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1251, ptr %l423, !tbaa !29
  %t1252 = load i32, ptr %l1, !range !{i32 0, i32 52}
  store i32 %t1252, ptr %l424
  store %olang.builder { ptr null, i64 0, i64 64, ptr null, ptr null }, ptr %s56
  store ptr %s56room, ptr %s56
  call void @olang_2emir_2eHelperKind_2eRender_2ecompiler_2ftyped_3aPrimOp(ptr %s56, ptr %l424, i64 0)
  br label %bb273
bb272:
  br label %bb277
bb273:
  %t1254 = load ptr, ptr %s56
  %t1255 = getelementptr %olang.builder, ptr %s56, i32 0, i32 1
  %t1256 = load i64, ptr %t1255
  %t1257 = call ptr @__olang_scope_alloc(ptr %s55, i64 %t1256)
  call void @olang_textcopy(ptr %t1257, ptr %t1254, i64 %t1256)
  %t1258 = insertvalue { i64, ptr } undef, i64 %t1256, 0
  %t1259 = insertvalue { i64, ptr } %t1258, ptr %t1257, 1
  store { i64, ptr } %t1259, ptr %l426, !tbaa !27
  %t1260 = getelementptr %olang.builder, ptr %s56, i32 0, i32 3
  %t1261 = load ptr, ptr %t1260
  %t1262 = icmp ne ptr %t1261, null
  br i1 %t1262, label %sbgrew.1263, label %sbdone.1264
sbgrew.1263:
  call void @__olang_sb_done(ptr %s56)
  br label %sbdone.1264
sbdone.1264:
  %t1265 = load { i64, ptr }, ptr %l426, !tbaa !27
  %t1266 = extractvalue { i64, ptr } %t1265, 0
  %t1267 = extractvalue { i64, ptr } %t1265, 1
  %t1268 = mul i64 %t1266, 1
  %t1269 = call ptr @__olang_scope_alloc(ptr %s55, i64 %t1268)
  call void @llvm.memcpy.p0.p0.i64(ptr %t1269, ptr %t1267, i64 %t1268, i1 false)
  %t1270 = insertvalue { i64, ptr } undef, i64 %t1266, 0
  %t1271 = insertvalue { i64, ptr } %t1270, ptr %t1269, 1
  %t1273 = call { i64, ptr } @compiler_2fmir_2eshort(ptr %s55, ptr %s55, { i64, ptr } %t1271)
  store { i64, ptr } %t1273, ptr %l428
  br label %bb274
bb274:
  %t1274 = load ptr, ptr %l0, !tbaa !29
  %t1275 = load i32, ptr %l7, !tbaa !23
  %t1278 = call { i64, ptr } @compiler_2fmir_2ecompiler_2fmir_3averifier_2ecanon(ptr %v0, ptr %s55, ptr %v2, ptr %t1274, i32 %t1275)
  store { i64, ptr } %t1278, ptr %l431
  br label %bb275
bb275:
  %t1279 = load { i64, ptr }, ptr %l428, !tbaa !27
  %t1280 = extractvalue { i64, ptr } %t1279, 1
  %t1281 = extractvalue { i64, ptr } %t1279, 0
  %t1282 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d113, i32 0, i32 1) }, 1
  %t1283 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d113, i32 0, i32 1) }, 0
  %t1284 = add i64 %t1281, %t1283
  %t1285 = load { i64, ptr }, ptr %l431, !tbaa !27
  %t1286 = extractvalue { i64, ptr } %t1285, 1
  %t1287 = extractvalue { i64, ptr } %t1285, 0
  %t1288 = add i64 %t1284, %t1287
  %t1289 = call ptr @__olang_scope_alloc(ptr %s55, i64 %t1288)
  call void @olang_textcopy(ptr %t1289, ptr %t1280, i64 %t1281)
  %t1290 = getelementptr i8, ptr %t1289, i64 %t1281
  call void @olang_textcopy(ptr %t1290, ptr %t1282, i64 %t1283)
  %t1291 = getelementptr i8, ptr %t1290, i64 %t1283
  call void @olang_textcopy(ptr %t1291, ptr %t1286, i64 %t1287)
  %t1292 = insertvalue { i64, ptr } undef, i64 %t1288, 0
  %t1293 = insertvalue { i64, ptr } %t1292, ptr %t1289, 1
  %t1295 = extractvalue { i64, ptr } %t1293, 0
  %t1296 = extractvalue { i64, ptr } %t1293, 1
  %t1297 = mul i64 %t1295, 1
  %t1298 = call ptr @__olang_scope_alloc(ptr %s55, i64 %t1297)
  call void @llvm.memcpy.p0.p0.i64(ptr %t1298, ptr %t1296, i64 %t1297, i1 false)
  %t1299 = insertvalue { i64, ptr } undef, i64 %t1295, 0
  %t1300 = insertvalue { i64, ptr } %t1299, ptr %t1298, 1
  %t1301 = load ptr, ptr %l423, !tbaa !29
  call void @compiler_2fmir_2ecompiler_2fmir_3averifier_2ebad(ptr %v0, ptr %s55, ptr %t1301, { i64, ptr } %t1300)
  br label %bb276
bb276:
  call void @__olang_scope_close(ptr %s55)
  br label %bb277
bb277:
  %t1303 = load i32, ptr %l2, !tbaa !23
  %t1304 = load i32, ptr @G_2ecompiler_2fmir_2eI64T, !tbaa !23
  %t1307 = icmp ne i32 %t1303, %t1304
  br i1 %t1307, label %bb278, label %bb279
bb278:
  store %olang.scope zeroinitializer, ptr %s58
  %t1309 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1309, ptr %l437, !tbaa !29
  %t1310 = load i32, ptr %l1, !range !{i32 0, i32 52}
  store i32 %t1310, ptr %l438
  store %olang.builder { ptr null, i64 0, i64 64, ptr null, ptr null }, ptr %s59
  store ptr %s59room, ptr %s59
  call void @olang_2emir_2eHelperKind_2eRender_2ecompiler_2ftyped_3aPrimOp(ptr %s59, ptr %l438, i64 0)
  br label %bb280
bb279:
  br label %bb284
bb280:
  %t1312 = load ptr, ptr %s59
  %t1313 = getelementptr %olang.builder, ptr %s59, i32 0, i32 1
  %t1314 = load i64, ptr %t1313
  %t1315 = call ptr @__olang_scope_alloc(ptr %s58, i64 %t1314)
  call void @olang_textcopy(ptr %t1315, ptr %t1312, i64 %t1314)
  %t1316 = insertvalue { i64, ptr } undef, i64 %t1314, 0
  %t1317 = insertvalue { i64, ptr } %t1316, ptr %t1315, 1
  store { i64, ptr } %t1317, ptr %l440, !tbaa !27
  %t1318 = getelementptr %olang.builder, ptr %s59, i32 0, i32 3
  %t1319 = load ptr, ptr %t1318
  %t1320 = icmp ne ptr %t1319, null
  br i1 %t1320, label %sbgrew.1321, label %sbdone.1322
sbgrew.1321:
  call void @__olang_sb_done(ptr %s59)
  br label %sbdone.1322
sbdone.1322:
  %t1323 = load { i64, ptr }, ptr %l440, !tbaa !27
  %t1324 = extractvalue { i64, ptr } %t1323, 0
  %t1325 = extractvalue { i64, ptr } %t1323, 1
  %t1326 = mul i64 %t1324, 1
  %t1327 = call ptr @__olang_scope_alloc(ptr %s58, i64 %t1326)
  call void @llvm.memcpy.p0.p0.i64(ptr %t1327, ptr %t1325, i64 %t1326, i1 false)
  %t1328 = insertvalue { i64, ptr } undef, i64 %t1324, 0
  %t1329 = insertvalue { i64, ptr } %t1328, ptr %t1327, 1
  %t1331 = call { i64, ptr } @compiler_2fmir_2eshort(ptr %s58, ptr %s58, { i64, ptr } %t1329)
  store { i64, ptr } %t1331, ptr %l442
  br label %bb281
bb281:
  %t1332 = load ptr, ptr %l0, !tbaa !29
  %t1333 = load i32, ptr %l2, !tbaa !23
  %t1336 = call { i64, ptr } @compiler_2fmir_2ecompiler_2fmir_3averifier_2ecanon(ptr %v0, ptr %s58, ptr %v2, ptr %t1332, i32 %t1333)
  store { i64, ptr } %t1336, ptr %l445
  br label %bb282
bb282:
  %t1337 = load { i64, ptr }, ptr %l442, !tbaa !27
  %t1338 = extractvalue { i64, ptr } %t1337, 1
  %t1339 = extractvalue { i64, ptr } %t1337, 0
  %t1340 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d114, i32 0, i32 1) }, 1
  %t1341 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d114, i32 0, i32 1) }, 0
  %t1342 = add i64 %t1339, %t1341
  %t1343 = load { i64, ptr }, ptr %l445, !tbaa !27
  %t1344 = extractvalue { i64, ptr } %t1343, 1
  %t1345 = extractvalue { i64, ptr } %t1343, 0
  %t1346 = add i64 %t1342, %t1345
  %t1347 = call ptr @__olang_scope_alloc(ptr %s58, i64 %t1346)
  call void @olang_textcopy(ptr %t1347, ptr %t1338, i64 %t1339)
  %t1348 = getelementptr i8, ptr %t1347, i64 %t1339
  call void @olang_textcopy(ptr %t1348, ptr %t1340, i64 %t1341)
  %t1349 = getelementptr i8, ptr %t1348, i64 %t1341
  call void @olang_textcopy(ptr %t1349, ptr %t1344, i64 %t1345)
  %t1350 = insertvalue { i64, ptr } undef, i64 %t1346, 0
  %t1351 = insertvalue { i64, ptr } %t1350, ptr %t1347, 1
  %t1353 = extractvalue { i64, ptr } %t1351, 0
  %t1354 = extractvalue { i64, ptr } %t1351, 1
  %t1355 = mul i64 %t1353, 1
  %t1356 = call ptr @__olang_scope_alloc(ptr %s58, i64 %t1355)
  call void @llvm.memcpy.p0.p0.i64(ptr %t1356, ptr %t1354, i64 %t1355, i1 false)
  %t1357 = insertvalue { i64, ptr } undef, i64 %t1353, 0
  %t1358 = insertvalue { i64, ptr } %t1357, ptr %t1356, 1
  %t1359 = load ptr, ptr %l437, !tbaa !29
  call void @compiler_2fmir_2ecompiler_2fmir_3averifier_2ebad(ptr %v0, ptr %s58, ptr %t1359, { i64, ptr } %t1358)
  br label %bb283
bb283:
  call void @__olang_scope_close(ptr %s58)
  br label %bb284
bb284:
  br label %bb529
bb285:
  %t1361 = load i32, ptr %l1, !range !{i32 0, i32 52}
  %t1363 = trunc i64 36 to i32
  %t1364 = icmp eq i32 %t1361, %t1363
  br i1 %t1364, label %bb286, label %bb287
bb286:
  br label %bb288
bb287:
  br label %bb296
bb288:
  %t1366 = load ptr, ptr %l4, !tbaa !29
  store ptr %t1366, ptr %l450, !tbaa !29
  %t1367 = load i32, ptr %l8, !tbaa !23
  %t1368 = load ptr, ptr %l450, !tbaa !29
  %t1369 = call ptr @__olang_scope_or(ptr %v2, ptr %t1368)
  %t1370 = ptrtoint ptr %t1369 to i64
  %t1372 = inttoptr i64 %t1370 to ptr
  %t1373 = load ptr, ptr %l450, !tbaa !29
  %t1375 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsInt(ptr %t1372, ptr %t1373, i32 %t1367)
  store i1 %t1375, ptr %l453
  br label %bb289
bb289:
  %t1376 = load i1, ptr %l453, !tbaa !21
  %t1377 = xor i1 %t1376, true
  br i1 %t1377, label %bb290, label %bb291
bb290:
  store %olang.scope zeroinitializer, ptr %s62
  %t1379 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1379, ptr %l455, !tbaa !29
  %t1380 = load ptr, ptr %l0, !tbaa !29
  %t1381 = load i32, ptr %l7, !tbaa !23
  %t1384 = call { i64, ptr } @compiler_2fmir_2ecompiler_2fmir_3averifier_2ecanon(ptr %v0, ptr %s62, ptr %v2, ptr %t1380, i32 %t1381)
  store { i64, ptr } %t1384, ptr %l458
  br label %bb292
bb291:
  br label %bb294
bb292:
  %t1385 = extractvalue { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d115, i32 0, i32 1) }, 1
  %t1386 = extractvalue { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d115, i32 0, i32 1) }, 0
  %t1387 = load { i64, ptr }, ptr %l458, !tbaa !27
  %t1388 = extractvalue { i64, ptr } %t1387, 1
  %t1389 = extractvalue { i64, ptr } %t1387, 0
  %t1390 = add i64 %t1386, %t1389
  %t1391 = call ptr @__olang_scope_alloc(ptr %s62, i64 %t1390)
  call void @olang_textcopy(ptr %t1391, ptr %t1385, i64 %t1386)
  %t1392 = getelementptr i8, ptr %t1391, i64 %t1386
  call void @olang_textcopy(ptr %t1392, ptr %t1388, i64 %t1389)
  %t1393 = insertvalue { i64, ptr } undef, i64 %t1390, 0
  %t1394 = insertvalue { i64, ptr } %t1393, ptr %t1391, 1
  %t1396 = extractvalue { i64, ptr } %t1394, 0
  %t1397 = extractvalue { i64, ptr } %t1394, 1
  %t1398 = mul i64 %t1396, 1
  %t1399 = call ptr @__olang_scope_alloc(ptr %s62, i64 %t1398)
  call void @llvm.memcpy.p0.p0.i64(ptr %t1399, ptr %t1397, i64 %t1398, i1 false)
  %t1400 = insertvalue { i64, ptr } undef, i64 %t1396, 0
  %t1401 = insertvalue { i64, ptr } %t1400, ptr %t1399, 1
  %t1402 = load ptr, ptr %l455, !tbaa !29
  call void @compiler_2fmir_2ecompiler_2fmir_3averifier_2ebad(ptr %v0, ptr %s62, ptr %t1402, { i64, ptr } %t1401)
  br label %bb293
bb293:
  call void @__olang_scope_close(ptr %s62)
  br label %bb294
bb294:
  %t1404 = load ptr, ptr %l0, !tbaa !29
  %t1405 = load i32, ptr %l1, !range !{i32 0, i32 52}
  %t1406 = load %"compiler/mir:Range", ptr %l3
  %t1407 = load i32, ptr %l2, !tbaa !23
  call void @compiler_2fmir_2ecompiler_2fmir_3averifier_2esameArgs(ptr %v0, ptr %v1, ptr %v2, ptr %t1404, i32 %t1405, %"compiler/mir:Range" %t1406, i32 %t1407)
  br label %bb295
bb295:
  br label %bb529
bb296:
  %t1412 = load i32, ptr %l1, !range !{i32 0, i32 52}
  %t1414 = trunc i64 48 to i32
  %t1415 = icmp eq i32 %t1412, %t1414
  br i1 %t1415, label %bb297, label %bb298
bb297:
  br label %bb303
bb298:
  %t1417 = load i32, ptr %l1, !range !{i32 0, i32 52}
  %t1419 = trunc i64 49 to i32
  %t1420 = icmp eq i32 %t1417, %t1419
  br i1 %t1420, label %bb299, label %bb300
bb299:
  br label %bb303
bb300:
  %t1422 = load i32, ptr %l1, !range !{i32 0, i32 52}
  %t1424 = trunc i64 50 to i32
  %t1425 = icmp eq i32 %t1422, %t1424
  br i1 %t1425, label %bb301, label %bb302
bb301:
  br label %bb303
bb302:
  br label %bb313
bb303:
  %t1427 = load ptr, ptr %l4, !tbaa !29
  store ptr %t1427, ptr %l471, !tbaa !29
  %t1428 = load i32, ptr %l8, !tbaa !23
  %t1429 = load ptr, ptr %l471, !tbaa !29
  %t1430 = call ptr @__olang_scope_or(ptr %v2, ptr %t1429)
  %t1431 = ptrtoint ptr %t1430 to i64
  %t1433 = inttoptr i64 %t1431 to ptr
  %t1434 = load ptr, ptr %l471, !tbaa !29
  %t1436 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsInt(ptr %t1433, ptr %t1434, i32 %t1428)
  store i1 %t1436, ptr %l474
  br label %bb304
bb304:
  %t1437 = load i1, ptr %l474, !tbaa !21
  %t1438 = xor i1 %t1437, true
  br i1 %t1438, label %bb305, label %bb306
bb305:
  store %olang.scope zeroinitializer, ptr %s65
  %t1440 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1440, ptr %l476, !tbaa !29
  %t1441 = load i32, ptr %l1, !range !{i32 0, i32 52}
  store i32 %t1441, ptr %l477
  store %olang.builder { ptr null, i64 0, i64 64, ptr null, ptr null }, ptr %s66
  store ptr %s66room, ptr %s66
  call void @olang_2emir_2eHelperKind_2eRender_2ecompiler_2ftyped_3aPrimOp(ptr %s66, ptr %l477, i64 0)
  br label %bb307
bb306:
  br label %bb311
bb307:
  %t1443 = load ptr, ptr %s66
  %t1444 = getelementptr %olang.builder, ptr %s66, i32 0, i32 1
  %t1445 = load i64, ptr %t1444
  %t1446 = call ptr @__olang_scope_alloc(ptr %s65, i64 %t1445)
  call void @olang_textcopy(ptr %t1446, ptr %t1443, i64 %t1445)
  %t1447 = insertvalue { i64, ptr } undef, i64 %t1445, 0
  %t1448 = insertvalue { i64, ptr } %t1447, ptr %t1446, 1
  store { i64, ptr } %t1448, ptr %l479, !tbaa !27
  %t1449 = getelementptr %olang.builder, ptr %s66, i32 0, i32 3
  %t1450 = load ptr, ptr %t1449
  %t1451 = icmp ne ptr %t1450, null
  br i1 %t1451, label %sbgrew.1452, label %sbdone.1453
sbgrew.1452:
  call void @__olang_sb_done(ptr %s66)
  br label %sbdone.1453
sbdone.1453:
  %t1454 = load { i64, ptr }, ptr %l479, !tbaa !27
  %t1455 = extractvalue { i64, ptr } %t1454, 0
  %t1456 = extractvalue { i64, ptr } %t1454, 1
  %t1457 = mul i64 %t1455, 1
  %t1458 = call ptr @__olang_scope_alloc(ptr %s65, i64 %t1457)
  call void @llvm.memcpy.p0.p0.i64(ptr %t1458, ptr %t1456, i64 %t1457, i1 false)
  %t1459 = insertvalue { i64, ptr } undef, i64 %t1455, 0
  %t1460 = insertvalue { i64, ptr } %t1459, ptr %t1458, 1
  %t1462 = call { i64, ptr } @compiler_2fmir_2eshort(ptr %s65, ptr %s65, { i64, ptr } %t1460)
  store { i64, ptr } %t1462, ptr %l481
  br label %bb308
bb308:
  %t1463 = load ptr, ptr %l0, !tbaa !29
  %t1464 = load i32, ptr %l7, !tbaa !23
  %t1467 = call { i64, ptr } @compiler_2fmir_2ecompiler_2fmir_3averifier_2ecanon(ptr %v0, ptr %s65, ptr %v2, ptr %t1463, i32 %t1464)
  store { i64, ptr } %t1467, ptr %l484
  br label %bb309
bb309:
  %t1468 = load { i64, ptr }, ptr %l481, !tbaa !27
  %t1469 = extractvalue { i64, ptr } %t1468, 1
  %t1470 = extractvalue { i64, ptr } %t1468, 0
  %t1471 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d116, i32 0, i32 1) }, 1
  %t1472 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d116, i32 0, i32 1) }, 0
  %t1473 = add i64 %t1470, %t1472
  %t1474 = load { i64, ptr }, ptr %l484, !tbaa !27
  %t1475 = extractvalue { i64, ptr } %t1474, 1
  %t1476 = extractvalue { i64, ptr } %t1474, 0
  %t1477 = add i64 %t1473, %t1476
  %t1478 = call ptr @__olang_scope_alloc(ptr %s65, i64 %t1477)
  call void @olang_textcopy(ptr %t1478, ptr %t1469, i64 %t1470)
  %t1479 = getelementptr i8, ptr %t1478, i64 %t1470
  call void @olang_textcopy(ptr %t1479, ptr %t1471, i64 %t1472)
  %t1480 = getelementptr i8, ptr %t1479, i64 %t1472
  call void @olang_textcopy(ptr %t1480, ptr %t1475, i64 %t1476)
  %t1481 = insertvalue { i64, ptr } undef, i64 %t1477, 0
  %t1482 = insertvalue { i64, ptr } %t1481, ptr %t1478, 1
  %t1484 = extractvalue { i64, ptr } %t1482, 0
  %t1485 = extractvalue { i64, ptr } %t1482, 1
  %t1486 = mul i64 %t1484, 1
  %t1487 = call ptr @__olang_scope_alloc(ptr %s65, i64 %t1486)
  call void @llvm.memcpy.p0.p0.i64(ptr %t1487, ptr %t1485, i64 %t1486, i1 false)
  %t1488 = insertvalue { i64, ptr } undef, i64 %t1484, 0
  %t1489 = insertvalue { i64, ptr } %t1488, ptr %t1487, 1
  %t1490 = load ptr, ptr %l476, !tbaa !29
  call void @compiler_2fmir_2ecompiler_2fmir_3averifier_2ebad(ptr %v0, ptr %s65, ptr %t1490, { i64, ptr } %t1489)
  br label %bb310
bb310:
  call void @__olang_scope_close(ptr %s65)
  br label %bb311
bb311:
  %t1492 = load ptr, ptr %l0, !tbaa !29
  %t1493 = load i32, ptr %l1, !range !{i32 0, i32 52}
  %t1494 = load %"compiler/mir:Range", ptr %l3
  %t1495 = load i32, ptr %l2, !tbaa !23
  call void @compiler_2fmir_2ecompiler_2fmir_3averifier_2esameArgs(ptr %v0, ptr %v1, ptr %v2, ptr %t1492, i32 %t1493, %"compiler/mir:Range" %t1494, i32 %t1495)
  br label %bb312
bb312:
  br label %bb529
bb313:
  %t1500 = load i32, ptr %l1, !range !{i32 0, i32 52}
  %t1502 = trunc i64 34 to i32
  %t1503 = icmp eq i32 %t1500, %t1502
  br i1 %t1503, label %bb314, label %bb315
bb314:
  br label %bb320
bb315:
  %t1505 = load i32, ptr %l1, !range !{i32 0, i32 52}
  %t1507 = trunc i64 35 to i32
  %t1508 = icmp eq i32 %t1505, %t1507
  br i1 %t1508, label %bb316, label %bb317
bb316:
  br label %bb320
bb317:
  %t1510 = load i32, ptr %l1, !range !{i32 0, i32 52}
  %t1512 = trunc i64 51 to i32
  %t1513 = icmp eq i32 %t1510, %t1512
  br i1 %t1513, label %bb318, label %bb319
bb318:
  br label %bb320
bb319:
  br label %bb344
bb320:
  %t1515 = load ptr, ptr %l4, !tbaa !29
  store ptr %t1515, ptr %l497, !tbaa !29
  %t1516 = load i32, ptr %l8, !tbaa !23
  %t1517 = load ptr, ptr %l497, !tbaa !29
  %t1518 = call ptr @__olang_scope_or(ptr %v2, ptr %t1517)
  %t1519 = ptrtoint ptr %t1518 to i64
  %t1521 = inttoptr i64 %t1519 to ptr
  %t1522 = load ptr, ptr %l497, !tbaa !29
  %t1524 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsInt(ptr %t1521, ptr %t1522, i32 %t1516)
  store i1 %t1524, ptr %l500
  br label %bb321
bb321:
  %t1525 = load i1, ptr %l500, !tbaa !21
  %t1526 = xor i1 %t1525, true
  br i1 %t1526, label %bb322, label %bb323
bb322:
  store i1 true, ptr %l502, !tbaa !21
  br label %bb327
bb323:
  %t1528 = load ptr, ptr %l4, !tbaa !29
  store ptr %t1528, ptr %l503, !tbaa !29
  %t1529 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1529, ptr %l504, !tbaa !29
  %t1530 = load ptr, ptr %l0, !tbaa !29
  %t1531 = load %"compiler/mir:Range", ptr %l3
  %t1534 = call { i64, [4 x i64] } @compiler_2fmir_2ecompiler_2fmir_3averifier_2earg(ptr %v0, ptr %v1, ptr %t1530, %"compiler/mir:Range" %t1531, i64 1)
  store { i64, [4 x i64] } %t1534, ptr %l507
  br label %bb324
bb324:
  %t1535 = load ptr, ptr %l504, !tbaa !29
  %t1536 = load { i64, [4 x i64] }, ptr %l507
  %t1537 = call i32 @compiler_2fmir_2ecompiler_2fmir_3averifier_2eoperandType(ptr %v0, ptr %v1, ptr %v2, ptr %t1535, { i64, [4 x i64] } %t1536)
  store i32 %t1537, ptr %l508
  br label %bb325
bb325:
  %t1538 = load ptr, ptr %l503, !tbaa !29
  %t1539 = call ptr @__olang_scope_or(ptr %v2, ptr %t1538)
  %t1540 = ptrtoint ptr %t1539 to i64
  %t1542 = inttoptr i64 %t1540 to ptr
  %t1543 = load ptr, ptr %l503, !tbaa !29
  %t1544 = load i32, ptr %l508, !tbaa !23
  %t1545 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %t1542, ptr %t1543, i32 %t1544)
  store i32 %t1545, ptr %l510
  br label %bb326
bb326:
  %t1546 = load i32, ptr @G_2ecompiler_2fmir_2eI64T, !tbaa !23
  %t1547 = load i32, ptr %l510, !tbaa !23
  %t1549 = icmp ne i32 %t1547, %t1546
  store i1 %t1549, ptr %l502, !tbaa !21
  br label %bb327
bb327:
  %t1551 = load i1, ptr %l502, !tbaa !21
  br i1 %t1551, label %bb328, label %bb329
bb328:
  store %olang.scope zeroinitializer, ptr %s69
  %t1552 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1552, ptr %l513, !tbaa !29
  %t1553 = load i32, ptr %l1, !range !{i32 0, i32 52}
  store i32 %t1553, ptr %l514
  store %olang.builder { ptr null, i64 0, i64 64, ptr null, ptr null }, ptr %s70
  store ptr %s70room, ptr %s70
  call void @olang_2emir_2eHelperKind_2eRender_2ecompiler_2ftyped_3aPrimOp(ptr %s70, ptr %l514, i64 0)
  br label %bb330
bb329:
  br label %bb334
bb330:
  %t1555 = load ptr, ptr %s70
  %t1556 = getelementptr %olang.builder, ptr %s70, i32 0, i32 1
  %t1557 = load i64, ptr %t1556
  %t1558 = call ptr @__olang_scope_alloc(ptr %s69, i64 %t1557)
  call void @olang_textcopy(ptr %t1558, ptr %t1555, i64 %t1557)
  %t1559 = insertvalue { i64, ptr } undef, i64 %t1557, 0
  %t1560 = insertvalue { i64, ptr } %t1559, ptr %t1558, 1
  store { i64, ptr } %t1560, ptr %l516, !tbaa !27
  %t1561 = getelementptr %olang.builder, ptr %s70, i32 0, i32 3
  %t1562 = load ptr, ptr %t1561
  %t1563 = icmp ne ptr %t1562, null
  br i1 %t1563, label %sbgrew.1564, label %sbdone.1565
sbgrew.1564:
  call void @__olang_sb_done(ptr %s70)
  br label %sbdone.1565
sbdone.1565:
  %t1566 = load { i64, ptr }, ptr %l516, !tbaa !27
  %t1567 = extractvalue { i64, ptr } %t1566, 0
  %t1568 = extractvalue { i64, ptr } %t1566, 1
  %t1569 = mul i64 %t1567, 1
  %t1570 = call ptr @__olang_scope_alloc(ptr %s69, i64 %t1569)
  call void @llvm.memcpy.p0.p0.i64(ptr %t1570, ptr %t1568, i64 %t1569, i1 false)
  %t1571 = insertvalue { i64, ptr } undef, i64 %t1567, 0
  %t1572 = insertvalue { i64, ptr } %t1571, ptr %t1570, 1
  %t1574 = call { i64, ptr } @compiler_2fmir_2eshort(ptr %s69, ptr %s69, { i64, ptr } %t1572)
  store { i64, ptr } %t1574, ptr %l518
  br label %bb331
bb331:
  %t1575 = load ptr, ptr %l0, !tbaa !29
  %t1576 = load i32, ptr %l7, !tbaa !23
  %t1579 = call { i64, ptr } @compiler_2fmir_2ecompiler_2fmir_3averifier_2ecanon(ptr %v0, ptr %s69, ptr %v2, ptr %t1575, i32 %t1576)
  store { i64, ptr } %t1579, ptr %l521
  br label %bb332
bb332:
  %t1580 = load { i64, ptr }, ptr %l518, !tbaa !27
  %t1581 = extractvalue { i64, ptr } %t1580, 1
  %t1582 = extractvalue { i64, ptr } %t1580, 0
  %t1583 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d117, i32 0, i32 1) }, 1
  %t1584 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d117, i32 0, i32 1) }, 0
  %t1585 = add i64 %t1582, %t1584
  %t1586 = load { i64, ptr }, ptr %l521, !tbaa !27
  %t1587 = extractvalue { i64, ptr } %t1586, 1
  %t1588 = extractvalue { i64, ptr } %t1586, 0
  %t1589 = add i64 %t1585, %t1588
  %t1590 = call ptr @__olang_scope_alloc(ptr %s69, i64 %t1589)
  call void @olang_textcopy(ptr %t1590, ptr %t1581, i64 %t1582)
  %t1591 = getelementptr i8, ptr %t1590, i64 %t1582
  call void @olang_textcopy(ptr %t1591, ptr %t1583, i64 %t1584)
  %t1592 = getelementptr i8, ptr %t1591, i64 %t1584
  call void @olang_textcopy(ptr %t1592, ptr %t1587, i64 %t1588)
  %t1593 = insertvalue { i64, ptr } undef, i64 %t1589, 0
  %t1594 = insertvalue { i64, ptr } %t1593, ptr %t1590, 1
  %t1596 = extractvalue { i64, ptr } %t1594, 0
  %t1597 = extractvalue { i64, ptr } %t1594, 1
  %t1598 = mul i64 %t1596, 1
  %t1599 = call ptr @__olang_scope_alloc(ptr %s69, i64 %t1598)
  call void @llvm.memcpy.p0.p0.i64(ptr %t1599, ptr %t1597, i64 %t1598, i1 false)
  %t1600 = insertvalue { i64, ptr } undef, i64 %t1596, 0
  %t1601 = insertvalue { i64, ptr } %t1600, ptr %t1599, 1
  %t1602 = load ptr, ptr %l513, !tbaa !29
  call void @compiler_2fmir_2ecompiler_2fmir_3averifier_2ebad(ptr %v0, ptr %s69, ptr %t1602, { i64, ptr } %t1601)
  br label %bb333
bb333:
  call void @__olang_scope_close(ptr %s69)
  br label %bb334
bb334:
  %t1604 = load ptr, ptr %l0, !tbaa !29
  %t1605 = load i32, ptr %l7, !tbaa !23
  %t1606 = load i32, ptr %l2, !tbaa !23
  %t1610 = call i1 @compiler_2fmir_2ecompiler_2fmir_3averifier_2efits(ptr %v0, ptr %v2, ptr %t1604, i32 %t1605, i32 %t1606)
  store i1 %t1610, ptr %l527
  br label %bb335
bb335:
  %t1611 = load i1, ptr %l527, !tbaa !21
  %t1612 = xor i1 %t1611, true
  br i1 %t1612, label %bb336, label %bb337
bb336:
  store %olang.scope zeroinitializer, ptr %s72
  %t1614 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1614, ptr %l529, !tbaa !29
  %t1615 = load i32, ptr %l1, !range !{i32 0, i32 52}
  store i32 %t1615, ptr %l530
  store %olang.builder { ptr null, i64 0, i64 64, ptr null, ptr null }, ptr %s73
  store ptr %s73room, ptr %s73
  call void @olang_2emir_2eHelperKind_2eRender_2ecompiler_2ftyped_3aPrimOp(ptr %s73, ptr %l530, i64 0)
  br label %bb338
bb337:
  br label %bb343
bb338:
  %t1617 = load ptr, ptr %s73
  %t1618 = getelementptr %olang.builder, ptr %s73, i32 0, i32 1
  %t1619 = load i64, ptr %t1618
  %t1620 = call ptr @__olang_scope_alloc(ptr %s72, i64 %t1619)
  call void @olang_textcopy(ptr %t1620, ptr %t1617, i64 %t1619)
  %t1621 = insertvalue { i64, ptr } undef, i64 %t1619, 0
  %t1622 = insertvalue { i64, ptr } %t1621, ptr %t1620, 1
  store { i64, ptr } %t1622, ptr %l532, !tbaa !27
  %t1623 = getelementptr %olang.builder, ptr %s73, i32 0, i32 3
  %t1624 = load ptr, ptr %t1623
  %t1625 = icmp ne ptr %t1624, null
  br i1 %t1625, label %sbgrew.1626, label %sbdone.1627
sbgrew.1626:
  call void @__olang_sb_done(ptr %s73)
  br label %sbdone.1627
sbdone.1627:
  %t1628 = load { i64, ptr }, ptr %l532, !tbaa !27
  %t1629 = extractvalue { i64, ptr } %t1628, 0
  %t1630 = extractvalue { i64, ptr } %t1628, 1
  %t1631 = mul i64 %t1629, 1
  %t1632 = call ptr @__olang_scope_alloc(ptr %s72, i64 %t1631)
  call void @llvm.memcpy.p0.p0.i64(ptr %t1632, ptr %t1630, i64 %t1631, i1 false)
  %t1633 = insertvalue { i64, ptr } undef, i64 %t1629, 0
  %t1634 = insertvalue { i64, ptr } %t1633, ptr %t1632, 1
  %t1636 = call { i64, ptr } @compiler_2fmir_2eshort(ptr %s72, ptr %s72, { i64, ptr } %t1634)
  store { i64, ptr } %t1636, ptr %l534
  br label %bb339
bb339:
  %t1637 = load ptr, ptr %l0, !tbaa !29
  %t1638 = load i32, ptr %l7, !tbaa !23
  %t1641 = call { i64, ptr } @compiler_2fmir_2ecompiler_2fmir_3averifier_2ecanon(ptr %v0, ptr %s72, ptr %v2, ptr %t1637, i32 %t1638)
  store { i64, ptr } %t1641, ptr %l537
  br label %bb340
bb340:
  %t1642 = load ptr, ptr %l0, !tbaa !29
  %t1643 = load i32, ptr %l2, !tbaa !23
  %t1646 = call { i64, ptr } @compiler_2fmir_2ecompiler_2fmir_3averifier_2ecanon(ptr %v0, ptr %s72, ptr %v2, ptr %t1642, i32 %t1643)
  store { i64, ptr } %t1646, ptr %l540
  br label %bb341
bb341:
  %t1647 = load { i64, ptr }, ptr %l534, !tbaa !27
  %t1648 = extractvalue { i64, ptr } %t1647, 1
  %t1649 = extractvalue { i64, ptr } %t1647, 0
  %t1650 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d118, i32 0, i32 1) }, 1
  %t1651 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d118, i32 0, i32 1) }, 0
  %t1652 = add i64 %t1649, %t1651
  %t1653 = load { i64, ptr }, ptr %l537, !tbaa !27
  %t1654 = extractvalue { i64, ptr } %t1653, 1
  %t1655 = extractvalue { i64, ptr } %t1653, 0
  %t1656 = add i64 %t1652, %t1655
  %t1657 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d119, i32 0, i32 1) }, 1
  %t1658 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d119, i32 0, i32 1) }, 0
  %t1659 = add i64 %t1656, %t1658
  %t1660 = load { i64, ptr }, ptr %l540, !tbaa !27
  %t1661 = extractvalue { i64, ptr } %t1660, 1
  %t1662 = extractvalue { i64, ptr } %t1660, 0
  %t1663 = add i64 %t1659, %t1662
  %t1664 = call ptr @__olang_scope_alloc(ptr %s72, i64 %t1663)
  call void @olang_textcopy(ptr %t1664, ptr %t1648, i64 %t1649)
  %t1665 = getelementptr i8, ptr %t1664, i64 %t1649
  call void @olang_textcopy(ptr %t1665, ptr %t1650, i64 %t1651)
  %t1666 = getelementptr i8, ptr %t1665, i64 %t1651
  call void @olang_textcopy(ptr %t1666, ptr %t1654, i64 %t1655)
  %t1667 = getelementptr i8, ptr %t1666, i64 %t1655
  call void @olang_textcopy(ptr %t1667, ptr %t1657, i64 %t1658)
  %t1668 = getelementptr i8, ptr %t1667, i64 %t1658
  call void @olang_textcopy(ptr %t1668, ptr %t1661, i64 %t1662)
  %t1669 = insertvalue { i64, ptr } undef, i64 %t1663, 0
  %t1670 = insertvalue { i64, ptr } %t1669, ptr %t1664, 1
  %t1672 = extractvalue { i64, ptr } %t1670, 0
  %t1673 = extractvalue { i64, ptr } %t1670, 1
  %t1674 = mul i64 %t1672, 1
  %t1675 = call ptr @__olang_scope_alloc(ptr %s72, i64 %t1674)
  call void @llvm.memcpy.p0.p0.i64(ptr %t1675, ptr %t1673, i64 %t1674, i1 false)
  %t1676 = insertvalue { i64, ptr } undef, i64 %t1672, 0
  %t1677 = insertvalue { i64, ptr } %t1676, ptr %t1675, 1
  %t1678 = load ptr, ptr %l529, !tbaa !29
  call void @compiler_2fmir_2ecompiler_2fmir_3averifier_2ebad(ptr %v0, ptr %s72, ptr %t1678, { i64, ptr } %t1677)
  br label %bb342
bb342:
  call void @__olang_scope_close(ptr %s72)
  br label %bb343
bb343:
  br label %bb529
bb344:
  %t1680 = load i32, ptr %l1, !range !{i32 0, i32 52}
  %t1682 = trunc i64 29 to i32
  %t1683 = icmp eq i32 %t1680, %t1682
  br i1 %t1683, label %bb345, label %bb346
bb345:
  br label %bb347
bb346:
  br label %bb364
bb347:
  %t1685 = load ptr, ptr %l4, !tbaa !29
  store ptr %t1685, ptr %l545, !tbaa !29
  %t1686 = load i32, ptr %l8, !tbaa !23
  %t1687 = load ptr, ptr %l545, !tbaa !29
  %t1688 = call ptr @__olang_scope_or(ptr %v2, ptr %t1687)
  %t1689 = ptrtoint ptr %t1688 to i64
  %t1691 = inttoptr i64 %t1689 to ptr
  %t1692 = load ptr, ptr %l545, !tbaa !29
  %t1694 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsRef(ptr %t1691, ptr %t1692, i32 %t1686)
  store i1 %t1694, ptr %l548
  br label %bb348
bb348:
  %t1695 = load i1, ptr %l548, !tbaa !21
  br i1 %t1695, label %bb349, label %bb350
bb349:
  %t1696 = load ptr, ptr %l4, !tbaa !29
  store ptr %t1696, ptr %l550, !tbaa !29
  %t1697 = load i32, ptr %l8, !tbaa !23
  %t1698 = load ptr, ptr %l550, !tbaa !29
  %t1699 = call ptr @__olang_scope_or(ptr %v2, ptr %t1698)
  %t1700 = ptrtoint ptr %t1699 to i64
  %t1702 = inttoptr i64 %t1700 to ptr
  %t1703 = load ptr, ptr %l550, !tbaa !29
  %t1705 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eReferent(ptr %t1702, ptr %t1703, i32 %t1697)
  store i32 %t1705, ptr %l553
  br label %bb351
bb350:
  %t1706 = load i32, ptr %l7, !tbaa !23
  store i32 %t1706, ptr %l549, !tbaa !23
  br label %bb352
bb351:
  %t1708 = load i32, ptr %l553, !tbaa !23
  store i32 %t1708, ptr %l549, !tbaa !23
  br label %bb352
bb352:
  %t1709 = load i32, ptr %l549, !tbaa !23
  %t1710 = load ptr, ptr %l0, !tbaa !29
  %t1714 = call i32 @compiler_2fmir_2ecompiler_2fmir_3averifier_2earrayOf(ptr %v0, ptr %v2, ptr %t1710, i32 %t1709)
  store i32 %t1714, ptr %l557
  br label %bb353
bb353:
  %t1715 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t1716 = load i32, ptr %l557, !tbaa !23
  %t1718 = icmp eq i32 %t1716, %t1715
  br i1 %t1718, label %bb354, label %bb355
bb354:
  store %olang.scope zeroinitializer, ptr %s76
  %t1720 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1720, ptr %l560, !tbaa !29
  %t1721 = load ptr, ptr %l0, !tbaa !29
  %t1722 = load i32, ptr %l7, !tbaa !23
  %t1725 = call { i64, ptr } @compiler_2fmir_2ecompiler_2fmir_3averifier_2ecanon(ptr %v0, ptr %s76, ptr %v2, ptr %t1721, i32 %t1722)
  store { i64, ptr } %t1725, ptr %l563
  br label %bb356
bb355:
  br label %bb358
bb356:
  %t1726 = extractvalue { i64, ptr } { i64 12, ptr getelementptr inbounds (<{ i64, [12 x i8] }>, ptr @.d120, i32 0, i32 1) }, 1
  %t1727 = extractvalue { i64, ptr } { i64 12, ptr getelementptr inbounds (<{ i64, [12 x i8] }>, ptr @.d120, i32 0, i32 1) }, 0
  %t1728 = load { i64, ptr }, ptr %l563, !tbaa !27
  %t1729 = extractvalue { i64, ptr } %t1728, 1
  %t1730 = extractvalue { i64, ptr } %t1728, 0
  %t1731 = add i64 %t1727, %t1730
  %t1732 = call ptr @__olang_scope_alloc(ptr %s76, i64 %t1731)
  call void @olang_textcopy(ptr %t1732, ptr %t1726, i64 %t1727)
  %t1733 = getelementptr i8, ptr %t1732, i64 %t1727
  call void @olang_textcopy(ptr %t1733, ptr %t1729, i64 %t1730)
  %t1734 = insertvalue { i64, ptr } undef, i64 %t1731, 0
  %t1735 = insertvalue { i64, ptr } %t1734, ptr %t1732, 1
  %t1737 = extractvalue { i64, ptr } %t1735, 0
  %t1738 = extractvalue { i64, ptr } %t1735, 1
  %t1739 = mul i64 %t1737, 1
  %t1740 = call ptr @__olang_scope_alloc(ptr %s76, i64 %t1739)
  call void @llvm.memcpy.p0.p0.i64(ptr %t1740, ptr %t1738, i64 %t1739, i1 false)
  %t1741 = insertvalue { i64, ptr } undef, i64 %t1737, 0
  %t1742 = insertvalue { i64, ptr } %t1741, ptr %t1740, 1
  %t1743 = load ptr, ptr %l560, !tbaa !29
  call void @compiler_2fmir_2ecompiler_2fmir_3averifier_2ebad(ptr %v0, ptr %s76, ptr %t1743, { i64, ptr } %t1742)
  br label %bb357
bb357:
  call void @__olang_scope_close(ptr %s76)
  br label %bb358
bb358:
  %t1745 = load i32, ptr %l2, !tbaa !23
  %t1746 = load i32, ptr @G_2ecompiler_2ftypes_2eVoidT, !tbaa !23
  %t1749 = icmp ne i32 %t1745, %t1746
  br i1 %t1749, label %bb359, label %bb360
bb359:
  store %olang.scope zeroinitializer, ptr %s78
  %t1751 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1751, ptr %l569, !tbaa !29
  %t1752 = load ptr, ptr %l0, !tbaa !29
  %t1753 = load i32, ptr %l2, !tbaa !23
  %t1756 = call { i64, ptr } @compiler_2fmir_2ecompiler_2fmir_3averifier_2ecanon(ptr %v0, ptr %s78, ptr %v2, ptr %t1752, i32 %t1753)
  store { i64, ptr } %t1756, ptr %l572
  br label %bb361
bb360:
  br label %bb363
bb361:
  %t1757 = extractvalue { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d121, i32 0, i32 1) }, 1
  %t1758 = extractvalue { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d121, i32 0, i32 1) }, 0
  %t1759 = load { i64, ptr }, ptr %l572, !tbaa !27
  %t1760 = extractvalue { i64, ptr } %t1759, 1
  %t1761 = extractvalue { i64, ptr } %t1759, 0
  %t1762 = add i64 %t1758, %t1761
  %t1763 = call ptr @__olang_scope_alloc(ptr %s78, i64 %t1762)
  call void @olang_textcopy(ptr %t1763, ptr %t1757, i64 %t1758)
  %t1764 = getelementptr i8, ptr %t1763, i64 %t1758
  call void @olang_textcopy(ptr %t1764, ptr %t1760, i64 %t1761)
  %t1765 = insertvalue { i64, ptr } undef, i64 %t1762, 0
  %t1766 = insertvalue { i64, ptr } %t1765, ptr %t1763, 1
  %t1768 = extractvalue { i64, ptr } %t1766, 0
  %t1769 = extractvalue { i64, ptr } %t1766, 1
  %t1770 = mul i64 %t1768, 1
  %t1771 = call ptr @__olang_scope_alloc(ptr %s78, i64 %t1770)
  call void @llvm.memcpy.p0.p0.i64(ptr %t1771, ptr %t1769, i64 %t1770, i1 false)
  %t1772 = insertvalue { i64, ptr } undef, i64 %t1768, 0
  %t1773 = insertvalue { i64, ptr } %t1772, ptr %t1771, 1
  %t1774 = load ptr, ptr %l569, !tbaa !29
  call void @compiler_2fmir_2ecompiler_2fmir_3averifier_2ebad(ptr %v0, ptr %s78, ptr %t1774, { i64, ptr } %t1773)
  br label %bb362
bb362:
  call void @__olang_scope_close(ptr %s78)
  br label %bb363
bb363:
  br label %bb529
bb364:
  %t1776 = load i32, ptr %l1, !range !{i32 0, i32 52}
  %t1778 = trunc i64 23 to i32
  %t1779 = icmp eq i32 %t1776, %t1778
  br i1 %t1779, label %bb365, label %bb366
bb365:
  br label %bb367
bb366:
  br label %bb379
bb367:
  %t1781 = load ptr, ptr %l0, !tbaa !29
  %t1783 = getelementptr %"compiler/mir:verifier", ptr %t1781, i32 0, i32 1
  %t1784 = load ptr, ptr %t1783, !tbaa !29
  store ptr %t1784, ptr %l578, !tbaa !29
  %t1785 = load i32, ptr %l7, !tbaa !23
  %t1786 = load ptr, ptr %l578, !tbaa !29
  %t1787 = call ptr @__olang_scope_or(ptr %v2, ptr %t1786)
  %t1788 = ptrtoint ptr %t1787 to i64
  %t1790 = inttoptr i64 %t1788 to ptr
  %t1791 = load ptr, ptr %l578, !tbaa !29
  %t1793 = call i1 @compiler_2fmir_2eHasCases(ptr %t1790, ptr %t1791, i32 %t1785)
  store i1 %t1793, ptr %l581
  br label %bb368
bb368:
  %t1794 = load i1, ptr %l581, !tbaa !21
  %t1797 = xor i1 %t1794, true
  br i1 %t1797, label %bb369, label %bb370
bb369:
  store %olang.scope zeroinitializer, ptr %s81
  %t1799 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1799, ptr %l584, !tbaa !29
  %t1800 = load ptr, ptr %l0, !tbaa !29
  %t1801 = load i32, ptr %l7, !tbaa !23
  %t1804 = call { i64, ptr } @compiler_2fmir_2ecompiler_2fmir_3averifier_2ecanon(ptr %v0, ptr %s81, ptr %v2, ptr %t1800, i32 %t1801)
  store { i64, ptr } %t1804, ptr %l587
  br label %bb371
bb370:
  br label %bb373
bb371:
  %t1805 = extractvalue { i64, ptr } { i64 12, ptr getelementptr inbounds (<{ i64, [12 x i8] }>, ptr @.d122, i32 0, i32 1) }, 1
  %t1806 = extractvalue { i64, ptr } { i64 12, ptr getelementptr inbounds (<{ i64, [12 x i8] }>, ptr @.d122, i32 0, i32 1) }, 0
  %t1807 = load { i64, ptr }, ptr %l587, !tbaa !27
  %t1808 = extractvalue { i64, ptr } %t1807, 1
  %t1809 = extractvalue { i64, ptr } %t1807, 0
  %t1810 = add i64 %t1806, %t1809
  %t1811 = call ptr @__olang_scope_alloc(ptr %s81, i64 %t1810)
  call void @olang_textcopy(ptr %t1811, ptr %t1805, i64 %t1806)
  %t1812 = getelementptr i8, ptr %t1811, i64 %t1806
  call void @olang_textcopy(ptr %t1812, ptr %t1808, i64 %t1809)
  %t1813 = insertvalue { i64, ptr } undef, i64 %t1810, 0
  %t1814 = insertvalue { i64, ptr } %t1813, ptr %t1811, 1
  %t1816 = extractvalue { i64, ptr } %t1814, 0
  %t1817 = extractvalue { i64, ptr } %t1814, 1
  %t1818 = mul i64 %t1816, 1
  %t1819 = call ptr @__olang_scope_alloc(ptr %s81, i64 %t1818)
  call void @llvm.memcpy.p0.p0.i64(ptr %t1819, ptr %t1817, i64 %t1818, i1 false)
  %t1820 = insertvalue { i64, ptr } undef, i64 %t1816, 0
  %t1821 = insertvalue { i64, ptr } %t1820, ptr %t1819, 1
  %t1822 = load ptr, ptr %l584, !tbaa !29
  call void @compiler_2fmir_2ecompiler_2fmir_3averifier_2ebad(ptr %v0, ptr %s81, ptr %t1822, { i64, ptr } %t1821)
  br label %bb372
bb372:
  call void @__olang_scope_close(ptr %s81)
  br label %bb373
bb373:
  %t1824 = load i32, ptr %l2, !tbaa !23
  %t1825 = load i32, ptr @G_2ecompiler_2ftypes_2eBoolT, !tbaa !23
  %t1828 = icmp ne i32 %t1824, %t1825
  br i1 %t1828, label %bb374, label %bb375
bb374:
  store %olang.scope zeroinitializer, ptr %s83
  %t1830 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1830, ptr %l593, !tbaa !29
  %t1831 = load ptr, ptr %l0, !tbaa !29
  %t1832 = load i32, ptr %l2, !tbaa !23
  %t1835 = call { i64, ptr } @compiler_2fmir_2ecompiler_2fmir_3averifier_2ecanon(ptr %v0, ptr %s83, ptr %v2, ptr %t1831, i32 %t1832)
  store { i64, ptr } %t1835, ptr %l596
  br label %bb376
bb375:
  br label %bb378
bb376:
  %t1836 = extractvalue { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d123, i32 0, i32 1) }, 1
  %t1837 = extractvalue { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d123, i32 0, i32 1) }, 0
  %t1838 = load { i64, ptr }, ptr %l596, !tbaa !27
  %t1839 = extractvalue { i64, ptr } %t1838, 1
  %t1840 = extractvalue { i64, ptr } %t1838, 0
  %t1841 = add i64 %t1837, %t1840
  %t1842 = call ptr @__olang_scope_alloc(ptr %s83, i64 %t1841)
  call void @olang_textcopy(ptr %t1842, ptr %t1836, i64 %t1837)
  %t1843 = getelementptr i8, ptr %t1842, i64 %t1837
  call void @olang_textcopy(ptr %t1843, ptr %t1839, i64 %t1840)
  %t1844 = insertvalue { i64, ptr } undef, i64 %t1841, 0
  %t1845 = insertvalue { i64, ptr } %t1844, ptr %t1842, 1
  %t1847 = extractvalue { i64, ptr } %t1845, 0
  %t1848 = extractvalue { i64, ptr } %t1845, 1
  %t1849 = mul i64 %t1847, 1
  %t1850 = call ptr @__olang_scope_alloc(ptr %s83, i64 %t1849)
  call void @llvm.memcpy.p0.p0.i64(ptr %t1850, ptr %t1848, i64 %t1849, i1 false)
  %t1851 = insertvalue { i64, ptr } undef, i64 %t1847, 0
  %t1852 = insertvalue { i64, ptr } %t1851, ptr %t1850, 1
  %t1853 = load ptr, ptr %l593, !tbaa !29
  call void @compiler_2fmir_2ecompiler_2fmir_3averifier_2ebad(ptr %v0, ptr %s83, ptr %t1853, { i64, ptr } %t1852)
  br label %bb377
bb377:
  call void @__olang_scope_close(ptr %s83)
  br label %bb378
bb378:
  br label %bb529
bb379:
  %t1855 = load i32, ptr %l1, !range !{i32 0, i32 52}
  %t1857 = trunc i64 42 to i32
  %t1858 = icmp eq i32 %t1855, %t1857
  br i1 %t1858, label %bb380, label %bb381
bb380:
  br label %bb382
bb381:
  br label %bb407
bb382:
  %t1860 = load ptr, ptr %l4, !tbaa !29
  store ptr %t1860, ptr %l601, !tbaa !29
  %t1861 = load i32, ptr %l8, !tbaa !23
  %t1862 = load ptr, ptr %l601, !tbaa !29
  %t1863 = call ptr @__olang_scope_or(ptr %v2, ptr %t1862)
  %t1864 = ptrtoint ptr %t1863 to i64
  %t1866 = inttoptr i64 %t1864 to ptr
  %t1867 = load ptr, ptr %l601, !tbaa !29
  %t1869 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsRef(ptr %t1866, ptr %t1867, i32 %t1861)
  store i1 %t1869, ptr %l604
  br label %bb383
bb383:
  %t1870 = load i1, ptr %l604, !tbaa !21
  %t1871 = xor i1 %t1870, true
  br i1 %t1871, label %bb384, label %bb385
bb384:
  store i1 true, ptr %l606, !tbaa !21
  br label %bb387
bb385:
  %t1873 = load ptr, ptr %l4, !tbaa !29
  store ptr %t1873, ptr %l607, !tbaa !29
  %t1874 = load i32, ptr %l8, !tbaa !23
  %t1875 = load ptr, ptr %l607, !tbaa !29
  %t1876 = call ptr @__olang_scope_or(ptr %v2, ptr %t1875)
  %t1877 = ptrtoint ptr %t1876 to i64
  %t1879 = inttoptr i64 %t1877 to ptr
  %t1880 = load ptr, ptr %l607, !tbaa !29
  %t1882 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsAny(ptr %t1879, ptr %t1880, i32 %t1874)
  store i1 %t1882, ptr %l610
  br label %bb386
bb386:
  %t1883 = load i1, ptr %l610, !tbaa !21
  store i1 %t1883, ptr %l606, !tbaa !21
  br label %bb387
bb387:
  %t1884 = load i1, ptr %l606, !tbaa !21
  br i1 %t1884, label %bb388, label %bb389
bb388:
  store %olang.scope zeroinitializer, ptr %s86
  %t1885 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1885, ptr %l611, !tbaa !29
  %t1886 = load ptr, ptr %l0, !tbaa !29
  %t1887 = load i32, ptr %l7, !tbaa !23
  %t1890 = call { i64, ptr } @compiler_2fmir_2ecompiler_2fmir_3averifier_2ecanon(ptr %v0, ptr %s86, ptr %v2, ptr %t1886, i32 %t1887)
  store { i64, ptr } %t1890, ptr %l614
  br label %bb390
bb389:
  br label %bb392
bb390:
  %t1891 = extractvalue { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d124, i32 0, i32 1) }, 1
  %t1892 = extractvalue { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d124, i32 0, i32 1) }, 0
  %t1893 = load { i64, ptr }, ptr %l614, !tbaa !27
  %t1894 = extractvalue { i64, ptr } %t1893, 1
  %t1895 = extractvalue { i64, ptr } %t1893, 0
  %t1896 = add i64 %t1892, %t1895
  %t1897 = call ptr @__olang_scope_alloc(ptr %s86, i64 %t1896)
  call void @olang_textcopy(ptr %t1897, ptr %t1891, i64 %t1892)
  %t1898 = getelementptr i8, ptr %t1897, i64 %t1892
  call void @olang_textcopy(ptr %t1898, ptr %t1894, i64 %t1895)
  %t1899 = insertvalue { i64, ptr } undef, i64 %t1896, 0
  %t1900 = insertvalue { i64, ptr } %t1899, ptr %t1897, 1
  %t1902 = extractvalue { i64, ptr } %t1900, 0
  %t1903 = extractvalue { i64, ptr } %t1900, 1
  %t1904 = mul i64 %t1902, 1
  %t1905 = call ptr @__olang_scope_alloc(ptr %s86, i64 %t1904)
  call void @llvm.memcpy.p0.p0.i64(ptr %t1905, ptr %t1903, i64 %t1904, i1 false)
  %t1906 = insertvalue { i64, ptr } undef, i64 %t1902, 0
  %t1907 = insertvalue { i64, ptr } %t1906, ptr %t1905, 1
  %t1908 = load ptr, ptr %l611, !tbaa !29
  call void @compiler_2fmir_2ecompiler_2fmir_3averifier_2ebad(ptr %v0, ptr %s86, ptr %t1908, { i64, ptr } %t1907)
  br label %bb391
bb391:
  call void @__olang_scope_close(ptr %s86)
  br label %bb392
bb392:
  %t1910 = load ptr, ptr %l4, !tbaa !29
  store ptr %t1910, ptr %l617, !tbaa !29
  %t1911 = load ptr, ptr %l4, !tbaa !29
  store ptr %t1911, ptr %l618, !tbaa !29
  %t1912 = load i32, ptr %l2, !tbaa !23
  %t1913 = load ptr, ptr %l618, !tbaa !29
  %t1914 = call ptr @__olang_scope_or(ptr %v2, ptr %t1913)
  %t1915 = ptrtoint ptr %t1914 to i64
  %t1917 = inttoptr i64 %t1915 to ptr
  %t1918 = load ptr, ptr %l618, !tbaa !29
  %t1920 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %t1917, ptr %t1918, i32 %t1912)
  store i32 %t1920, ptr %l621
  br label %bb393
bb393:
  %t1921 = load ptr, ptr %l617, !tbaa !29
  %t1922 = call ptr @__olang_scope_or(ptr %v2, ptr %t1921)
  %t1923 = ptrtoint ptr %t1922 to i64
  %t1925 = inttoptr i64 %t1923 to ptr
  %t1926 = load ptr, ptr %l617, !tbaa !29
  %t1927 = load i32, ptr %l621, !tbaa !23
  %t1928 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsAny(ptr %t1925, ptr %t1926, i32 %t1927)
  store i1 %t1928, ptr %l623
  br label %bb394
bb394:
  %t1929 = load i1, ptr %l623, !tbaa !21
  %t1930 = xor i1 %t1929, true
  br i1 %t1930, label %bb395, label %bb396
bb395:
  store %olang.scope zeroinitializer, ptr %s88
  %t1932 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1932, ptr %l625, !tbaa !29
  %t1933 = load ptr, ptr %l0, !tbaa !29
  %t1934 = load i32, ptr %l2, !tbaa !23
  %t1937 = call { i64, ptr } @compiler_2fmir_2ecompiler_2fmir_3averifier_2ecanon(ptr %v0, ptr %s88, ptr %v2, ptr %t1933, i32 %t1934)
  store { i64, ptr } %t1937, ptr %l628
  br label %bb397
bb396:
  br label %bb399
bb397:
  %t1938 = extractvalue { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d125, i32 0, i32 1) }, 1
  %t1939 = extractvalue { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d125, i32 0, i32 1) }, 0
  %t1940 = load { i64, ptr }, ptr %l628, !tbaa !27
  %t1941 = extractvalue { i64, ptr } %t1940, 1
  %t1942 = extractvalue { i64, ptr } %t1940, 0
  %t1943 = add i64 %t1939, %t1942
  %t1944 = call ptr @__olang_scope_alloc(ptr %s88, i64 %t1943)
  call void @olang_textcopy(ptr %t1944, ptr %t1938, i64 %t1939)
  %t1945 = getelementptr i8, ptr %t1944, i64 %t1939
  call void @olang_textcopy(ptr %t1945, ptr %t1941, i64 %t1942)
  %t1946 = insertvalue { i64, ptr } undef, i64 %t1943, 0
  %t1947 = insertvalue { i64, ptr } %t1946, ptr %t1944, 1
  %t1949 = extractvalue { i64, ptr } %t1947, 0
  %t1950 = extractvalue { i64, ptr } %t1947, 1
  %t1951 = mul i64 %t1949, 1
  %t1952 = call ptr @__olang_scope_alloc(ptr %s88, i64 %t1951)
  call void @llvm.memcpy.p0.p0.i64(ptr %t1952, ptr %t1950, i64 %t1951, i1 false)
  %t1953 = insertvalue { i64, ptr } undef, i64 %t1949, 0
  %t1954 = insertvalue { i64, ptr } %t1953, ptr %t1952, 1
  %t1955 = load ptr, ptr %l625, !tbaa !29
  call void @compiler_2fmir_2ecompiler_2fmir_3averifier_2ebad(ptr %v0, ptr %s88, ptr %t1955, { i64, ptr } %t1954)
  br label %bb398
bb398:
  call void @__olang_scope_close(ptr %s88)
  br label %bb399
bb399:
  %t1957 = load ptr, ptr %l4, !tbaa !29
  store ptr %t1957, ptr %l631, !tbaa !29
  %t1958 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1958, ptr %l632, !tbaa !29
  %t1959 = load ptr, ptr %l0, !tbaa !29
  %t1960 = load %"compiler/mir:Range", ptr %l3
  %t1963 = call { i64, [4 x i64] } @compiler_2fmir_2ecompiler_2fmir_3averifier_2earg(ptr %v0, ptr %v1, ptr %t1959, %"compiler/mir:Range" %t1960, i64 1)
  store { i64, [4 x i64] } %t1963, ptr %l635
  br label %bb400
bb400:
  %t1964 = load ptr, ptr %l632, !tbaa !29
  %t1965 = load { i64, [4 x i64] }, ptr %l635
  %t1966 = call i32 @compiler_2fmir_2ecompiler_2fmir_3averifier_2eoperandType(ptr %v0, ptr %v1, ptr %v2, ptr %t1964, { i64, [4 x i64] } %t1965)
  store i32 %t1966, ptr %l636
  br label %bb401
bb401:
  %t1967 = load ptr, ptr %l631, !tbaa !29
  %t1968 = call ptr @__olang_scope_or(ptr %v2, ptr %t1967)
  %t1969 = ptrtoint ptr %t1968 to i64
  %t1971 = inttoptr i64 %t1969 to ptr
  %t1972 = load ptr, ptr %l631, !tbaa !29
  %t1973 = load i32, ptr %l636, !tbaa !23
  %t1974 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %t1971, ptr %t1972, i32 %t1973)
  store i32 %t1974, ptr %l638
  br label %bb402
bb402:
  %t1975 = load i32, ptr @G_2ecompiler_2fmir_2eI64T, !tbaa !23
  %t1976 = load i32, ptr %l638, !tbaa !23
  %t1978 = icmp ne i32 %t1976, %t1975
  br i1 %t1978, label %bb403, label %bb404
bb403:
  store %olang.scope zeroinitializer, ptr %s90
  %t1980 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2fmir_2ecompiler_2fmir_3averifier_2ebad(ptr %v0, ptr %s90, ptr %t1980, { i64, ptr } { i64 26, ptr getelementptr inbounds (<{ i64, [26 x i8] }>, ptr @.d126, i32 0, i32 1) })
  br label %bb405
bb404:
  br label %bb406
bb405:
  call void @__olang_scope_close(ptr %s90)
  br label %bb406
bb406:
  br label %bb529
bb407:
  %t1982 = load i32, ptr %l1, !range !{i32 0, i32 52}
  %t1984 = trunc i64 43 to i32
  %t1985 = icmp eq i32 %t1982, %t1984
  br i1 %t1985, label %bb408, label %bb409
bb408:
  br label %bb410
bb409:
  br label %bb424
bb410:
  %t1987 = load ptr, ptr %l4, !tbaa !29
  store ptr %t1987, ptr %l644, !tbaa !29
  %t1988 = load i32, ptr %l8, !tbaa !23
  %t1989 = load ptr, ptr %l644, !tbaa !29
  %t1990 = call ptr @__olang_scope_or(ptr %v2, ptr %t1989)
  %t1991 = ptrtoint ptr %t1990 to i64
  %t1993 = inttoptr i64 %t1991 to ptr
  %t1994 = load ptr, ptr %l644, !tbaa !29
  %t1996 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsAny(ptr %t1993, ptr %t1994, i32 %t1988)
  store i1 %t1996, ptr %l647
  br label %bb411
bb411:
  %t1997 = load i1, ptr %l647, !tbaa !21
  %t1998 = xor i1 %t1997, true
  br i1 %t1998, label %bb412, label %bb413
bb412:
  store %olang.scope zeroinitializer, ptr %s92
  %t2000 = load ptr, ptr %l0, !tbaa !29
  store ptr %t2000, ptr %l649, !tbaa !29
  %t2001 = load ptr, ptr %l0, !tbaa !29
  %t2002 = load i32, ptr %l7, !tbaa !23
  %t2005 = call { i64, ptr } @compiler_2fmir_2ecompiler_2fmir_3averifier_2ecanon(ptr %v0, ptr %s92, ptr %v2, ptr %t2001, i32 %t2002)
  store { i64, ptr } %t2005, ptr %l652
  br label %bb414
bb413:
  br label %bb416
bb414:
  %t2006 = extractvalue { i64, ptr } { i64 17, ptr getelementptr inbounds (<{ i64, [17 x i8] }>, ptr @.d127, i32 0, i32 1) }, 1
  %t2007 = extractvalue { i64, ptr } { i64 17, ptr getelementptr inbounds (<{ i64, [17 x i8] }>, ptr @.d127, i32 0, i32 1) }, 0
  %t2008 = load { i64, ptr }, ptr %l652, !tbaa !27
  %t2009 = extractvalue { i64, ptr } %t2008, 1
  %t2010 = extractvalue { i64, ptr } %t2008, 0
  %t2011 = add i64 %t2007, %t2010
  %t2012 = call ptr @__olang_scope_alloc(ptr %s92, i64 %t2011)
  call void @olang_textcopy(ptr %t2012, ptr %t2006, i64 %t2007)
  %t2013 = getelementptr i8, ptr %t2012, i64 %t2007
  call void @olang_textcopy(ptr %t2013, ptr %t2009, i64 %t2010)
  %t2014 = insertvalue { i64, ptr } undef, i64 %t2011, 0
  %t2015 = insertvalue { i64, ptr } %t2014, ptr %t2012, 1
  %t2017 = extractvalue { i64, ptr } %t2015, 0
  %t2018 = extractvalue { i64, ptr } %t2015, 1
  %t2019 = mul i64 %t2017, 1
  %t2020 = call ptr @__olang_scope_alloc(ptr %s92, i64 %t2019)
  call void @llvm.memcpy.p0.p0.i64(ptr %t2020, ptr %t2018, i64 %t2019, i1 false)
  %t2021 = insertvalue { i64, ptr } undef, i64 %t2017, 0
  %t2022 = insertvalue { i64, ptr } %t2021, ptr %t2020, 1
  %t2023 = load ptr, ptr %l649, !tbaa !29
  call void @compiler_2fmir_2ecompiler_2fmir_3averifier_2ebad(ptr %v0, ptr %s92, ptr %t2023, { i64, ptr } %t2022)
  br label %bb415
bb415:
  call void @__olang_scope_close(ptr %s92)
  br label %bb416
bb416:
  %t2025 = load ptr, ptr %l4, !tbaa !29
  store ptr %t2025, ptr %l655, !tbaa !29
  %t2026 = load ptr, ptr %l4, !tbaa !29
  store ptr %t2026, ptr %l656, !tbaa !29
  %t2027 = load i32, ptr %l2, !tbaa !23
  %t2028 = load ptr, ptr %l656, !tbaa !29
  %t2029 = call ptr @__olang_scope_or(ptr %v2, ptr %t2028)
  %t2030 = ptrtoint ptr %t2029 to i64
  %t2032 = inttoptr i64 %t2030 to ptr
  %t2033 = load ptr, ptr %l656, !tbaa !29
  %t2035 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %t2032, ptr %t2033, i32 %t2027)
  store i32 %t2035, ptr %l659
  br label %bb417
bb417:
  %t2036 = load ptr, ptr %l655, !tbaa !29
  %t2037 = call ptr @__olang_scope_or(ptr %v2, ptr %t2036)
  %t2038 = ptrtoint ptr %t2037 to i64
  %t2040 = inttoptr i64 %t2038 to ptr
  %t2041 = load ptr, ptr %l655, !tbaa !29
  %t2042 = load i32, ptr %l659, !tbaa !23
  %t2043 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsRef(ptr %t2040, ptr %t2041, i32 %t2042)
  store i1 %t2043, ptr %l661
  br label %bb418
bb418:
  %t2044 = load i1, ptr %l661, !tbaa !21
  %t2045 = xor i1 %t2044, true
  br i1 %t2045, label %bb419, label %bb420
bb419:
  store %olang.scope zeroinitializer, ptr %s94
  %t2047 = load ptr, ptr %l0, !tbaa !29
  store ptr %t2047, ptr %l663, !tbaa !29
  %t2048 = load ptr, ptr %l0, !tbaa !29
  %t2049 = load i32, ptr %l2, !tbaa !23
  %t2052 = call { i64, ptr } @compiler_2fmir_2ecompiler_2fmir_3averifier_2ecanon(ptr %v0, ptr %s94, ptr %v2, ptr %t2048, i32 %t2049)
  store { i64, ptr } %t2052, ptr %l666
  br label %bb421
bb420:
  br label %bb423
bb421:
  %t2053 = extractvalue { i64, ptr } { i64 18, ptr getelementptr inbounds (<{ i64, [18 x i8] }>, ptr @.d128, i32 0, i32 1) }, 1
  %t2054 = extractvalue { i64, ptr } { i64 18, ptr getelementptr inbounds (<{ i64, [18 x i8] }>, ptr @.d128, i32 0, i32 1) }, 0
  %t2055 = load { i64, ptr }, ptr %l666, !tbaa !27
  %t2056 = extractvalue { i64, ptr } %t2055, 1
  %t2057 = extractvalue { i64, ptr } %t2055, 0
  %t2058 = add i64 %t2054, %t2057
  %t2059 = call ptr @__olang_scope_alloc(ptr %s94, i64 %t2058)
  call void @olang_textcopy(ptr %t2059, ptr %t2053, i64 %t2054)
  %t2060 = getelementptr i8, ptr %t2059, i64 %t2054
  call void @olang_textcopy(ptr %t2060, ptr %t2056, i64 %t2057)
  %t2061 = insertvalue { i64, ptr } undef, i64 %t2058, 0
  %t2062 = insertvalue { i64, ptr } %t2061, ptr %t2059, 1
  %t2064 = extractvalue { i64, ptr } %t2062, 0
  %t2065 = extractvalue { i64, ptr } %t2062, 1
  %t2066 = mul i64 %t2064, 1
  %t2067 = call ptr @__olang_scope_alloc(ptr %s94, i64 %t2066)
  call void @llvm.memcpy.p0.p0.i64(ptr %t2067, ptr %t2065, i64 %t2066, i1 false)
  %t2068 = insertvalue { i64, ptr } undef, i64 %t2064, 0
  %t2069 = insertvalue { i64, ptr } %t2068, ptr %t2067, 1
  %t2070 = load ptr, ptr %l663, !tbaa !29
  call void @compiler_2fmir_2ecompiler_2fmir_3averifier_2ebad(ptr %v0, ptr %s94, ptr %t2070, { i64, ptr } %t2069)
  br label %bb422
bb422:
  call void @__olang_scope_close(ptr %s94)
  br label %bb423
bb423:
  br label %bb529
bb424:
  %t2072 = load i32, ptr %l1, !range !{i32 0, i32 52}
  %t2074 = trunc i64 44 to i32
  %t2075 = icmp eq i32 %t2072, %t2074
  br i1 %t2075, label %bb425, label %bb426
bb425:
  br label %bb427
bb426:
  br label %bb439
bb427:
  %t2077 = load ptr, ptr %l4, !tbaa !29
  store ptr %t2077, ptr %l671, !tbaa !29
  %t2078 = load i32, ptr %l8, !tbaa !23
  %t2079 = load ptr, ptr %l671, !tbaa !29
  %t2080 = call ptr @__olang_scope_or(ptr %v2, ptr %t2079)
  %t2081 = ptrtoint ptr %t2080 to i64
  %t2083 = inttoptr i64 %t2081 to ptr
  %t2084 = load ptr, ptr %l671, !tbaa !29
  %t2086 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsAny(ptr %t2083, ptr %t2084, i32 %t2078)
  store i1 %t2086, ptr %l674
  br label %bb428
bb428:
  %t2087 = load i1, ptr %l674, !tbaa !21
  %t2088 = xor i1 %t2087, true
  br i1 %t2088, label %bb429, label %bb430
bb429:
  store %olang.scope zeroinitializer, ptr %s97
  %t2090 = load ptr, ptr %l0, !tbaa !29
  store ptr %t2090, ptr %l676, !tbaa !29
  %t2091 = load ptr, ptr %l0, !tbaa !29
  %t2092 = load i32, ptr %l7, !tbaa !23
  %t2095 = call { i64, ptr } @compiler_2fmir_2ecompiler_2fmir_3averifier_2ecanon(ptr %v0, ptr %s97, ptr %v2, ptr %t2091, i32 %t2092)
  store { i64, ptr } %t2095, ptr %l679
  br label %bb431
bb430:
  br label %bb433
bb431:
  %t2096 = extractvalue { i64, ptr } { i64 11, ptr getelementptr inbounds (<{ i64, [11 x i8] }>, ptr @.d129, i32 0, i32 1) }, 1
  %t2097 = extractvalue { i64, ptr } { i64 11, ptr getelementptr inbounds (<{ i64, [11 x i8] }>, ptr @.d129, i32 0, i32 1) }, 0
  %t2098 = load { i64, ptr }, ptr %l679, !tbaa !27
  %t2099 = extractvalue { i64, ptr } %t2098, 1
  %t2100 = extractvalue { i64, ptr } %t2098, 0
  %t2101 = add i64 %t2097, %t2100
  %t2102 = call ptr @__olang_scope_alloc(ptr %s97, i64 %t2101)
  call void @olang_textcopy(ptr %t2102, ptr %t2096, i64 %t2097)
  %t2103 = getelementptr i8, ptr %t2102, i64 %t2097
  call void @olang_textcopy(ptr %t2103, ptr %t2099, i64 %t2100)
  %t2104 = insertvalue { i64, ptr } undef, i64 %t2101, 0
  %t2105 = insertvalue { i64, ptr } %t2104, ptr %t2102, 1
  %t2107 = extractvalue { i64, ptr } %t2105, 0
  %t2108 = extractvalue { i64, ptr } %t2105, 1
  %t2109 = mul i64 %t2107, 1
  %t2110 = call ptr @__olang_scope_alloc(ptr %s97, i64 %t2109)
  call void @llvm.memcpy.p0.p0.i64(ptr %t2110, ptr %t2108, i64 %t2109, i1 false)
  %t2111 = insertvalue { i64, ptr } undef, i64 %t2107, 0
  %t2112 = insertvalue { i64, ptr } %t2111, ptr %t2110, 1
  %t2113 = load ptr, ptr %l676, !tbaa !29
  call void @compiler_2fmir_2ecompiler_2fmir_3averifier_2ebad(ptr %v0, ptr %s97, ptr %t2113, { i64, ptr } %t2112)
  br label %bb432
bb432:
  call void @__olang_scope_close(ptr %s97)
  br label %bb433
bb433:
  %t2115 = load i32, ptr %l2, !tbaa !23
  %t2116 = load i32, ptr @G_2ecompiler_2ftypes_2eBoolT, !tbaa !23
  %t2119 = icmp ne i32 %t2115, %t2116
  br i1 %t2119, label %bb434, label %bb435
bb434:
  store %olang.scope zeroinitializer, ptr %s99
  %t2121 = load ptr, ptr %l0, !tbaa !29
  store ptr %t2121, ptr %l685, !tbaa !29
  %t2122 = load ptr, ptr %l0, !tbaa !29
  %t2123 = load i32, ptr %l2, !tbaa !23
  %t2126 = call { i64, ptr } @compiler_2fmir_2ecompiler_2fmir_3averifier_2ecanon(ptr %v0, ptr %s99, ptr %v2, ptr %t2122, i32 %t2123)
  store { i64, ptr } %t2126, ptr %l688
  br label %bb436
bb435:
  br label %bb438
bb436:
  %t2127 = extractvalue { i64, ptr } { i64 12, ptr getelementptr inbounds (<{ i64, [12 x i8] }>, ptr @.d130, i32 0, i32 1) }, 1
  %t2128 = extractvalue { i64, ptr } { i64 12, ptr getelementptr inbounds (<{ i64, [12 x i8] }>, ptr @.d130, i32 0, i32 1) }, 0
  %t2129 = load { i64, ptr }, ptr %l688, !tbaa !27
  %t2130 = extractvalue { i64, ptr } %t2129, 1
  %t2131 = extractvalue { i64, ptr } %t2129, 0
  %t2132 = add i64 %t2128, %t2131
  %t2133 = call ptr @__olang_scope_alloc(ptr %s99, i64 %t2132)
  call void @olang_textcopy(ptr %t2133, ptr %t2127, i64 %t2128)
  %t2134 = getelementptr i8, ptr %t2133, i64 %t2128
  call void @olang_textcopy(ptr %t2134, ptr %t2130, i64 %t2131)
  %t2135 = insertvalue { i64, ptr } undef, i64 %t2132, 0
  %t2136 = insertvalue { i64, ptr } %t2135, ptr %t2133, 1
  %t2138 = extractvalue { i64, ptr } %t2136, 0
  %t2139 = extractvalue { i64, ptr } %t2136, 1
  %t2140 = mul i64 %t2138, 1
  %t2141 = call ptr @__olang_scope_alloc(ptr %s99, i64 %t2140)
  call void @llvm.memcpy.p0.p0.i64(ptr %t2141, ptr %t2139, i64 %t2140, i1 false)
  %t2142 = insertvalue { i64, ptr } undef, i64 %t2138, 0
  %t2143 = insertvalue { i64, ptr } %t2142, ptr %t2141, 1
  %t2144 = load ptr, ptr %l685, !tbaa !29
  call void @compiler_2fmir_2ecompiler_2fmir_3averifier_2ebad(ptr %v0, ptr %s99, ptr %t2144, { i64, ptr } %t2143)
  br label %bb437
bb437:
  call void @__olang_scope_close(ptr %s99)
  br label %bb438
bb438:
  br label %bb529
bb439:
  %t2146 = load i32, ptr %l1, !range !{i32 0, i32 52}
  %t2148 = trunc i64 40 to i32
  %t2149 = icmp eq i32 %t2146, %t2148
  br i1 %t2149, label %bb440, label %bb441
bb440:
  br label %bb444
bb441:
  %t2151 = load i32, ptr %l1, !range !{i32 0, i32 52}
  %t2153 = trunc i64 41 to i32
  %t2154 = icmp eq i32 %t2151, %t2153
  br i1 %t2154, label %bb442, label %bb443
bb442:
  br label %bb444
bb443:
  br label %bb472
bb444:
  %t2156 = load ptr, ptr %l4, !tbaa !29
  store ptr %t2156, ptr %l695, !tbaa !29
  %t2157 = load i32, ptr %l8, !tbaa !23
  %t2158 = load ptr, ptr %l695, !tbaa !29
  %t2159 = call ptr @__olang_scope_or(ptr %v2, ptr %t2158)
  %t2160 = ptrtoint ptr %t2159 to i64
  %t2162 = inttoptr i64 %t2160 to ptr
  %t2163 = load ptr, ptr %l695, !tbaa !29
  %t2165 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePacked(ptr %t2162, ptr %t2163, i32 %t2157)
  store i1 %t2165, ptr %l698
  br label %bb445
bb445:
  %t2166 = load i1, ptr %l698, !tbaa !21
  %t2167 = xor i1 %t2166, true
  br i1 %t2167, label %bb446, label %bb447
bb446:
  store %olang.scope zeroinitializer, ptr %s102
  %t2169 = load ptr, ptr %l0, !tbaa !29
  store ptr %t2169, ptr %l700, !tbaa !29
  %t2170 = load i32, ptr %l1, !range !{i32 0, i32 52}
  store i32 %t2170, ptr %l701
  store %olang.builder { ptr null, i64 0, i64 64, ptr null, ptr null }, ptr %s103
  store ptr %s103room, ptr %s103
  call void @olang_2emir_2eHelperKind_2eRender_2ecompiler_2ftyped_3aPrimOp(ptr %s103, ptr %l701, i64 0)
  br label %bb448
bb447:
  br label %bb452
bb448:
  %t2172 = load ptr, ptr %s103
  %t2173 = getelementptr %olang.builder, ptr %s103, i32 0, i32 1
  %t2174 = load i64, ptr %t2173
  %t2175 = call ptr @__olang_scope_alloc(ptr %s102, i64 %t2174)
  call void @olang_textcopy(ptr %t2175, ptr %t2172, i64 %t2174)
  %t2176 = insertvalue { i64, ptr } undef, i64 %t2174, 0
  %t2177 = insertvalue { i64, ptr } %t2176, ptr %t2175, 1
  store { i64, ptr } %t2177, ptr %l703, !tbaa !27
  %t2178 = getelementptr %olang.builder, ptr %s103, i32 0, i32 3
  %t2179 = load ptr, ptr %t2178
  %t2180 = icmp ne ptr %t2179, null
  br i1 %t2180, label %sbgrew.2181, label %sbdone.2182
sbgrew.2181:
  call void @__olang_sb_done(ptr %s103)
  br label %sbdone.2182
sbdone.2182:
  %t2183 = load { i64, ptr }, ptr %l703, !tbaa !27
  %t2184 = extractvalue { i64, ptr } %t2183, 0
  %t2185 = extractvalue { i64, ptr } %t2183, 1
  %t2186 = mul i64 %t2184, 1
  %t2187 = call ptr @__olang_scope_alloc(ptr %s102, i64 %t2186)
  call void @llvm.memcpy.p0.p0.i64(ptr %t2187, ptr %t2185, i64 %t2186, i1 false)
  %t2188 = insertvalue { i64, ptr } undef, i64 %t2184, 0
  %t2189 = insertvalue { i64, ptr } %t2188, ptr %t2187, 1
  %t2191 = call { i64, ptr } @compiler_2fmir_2eshort(ptr %s102, ptr %s102, { i64, ptr } %t2189)
  store { i64, ptr } %t2191, ptr %l705
  br label %bb449
bb449:
  %t2192 = load ptr, ptr %l0, !tbaa !29
  %t2193 = load i32, ptr %l7, !tbaa !23
  %t2196 = call { i64, ptr } @compiler_2fmir_2ecompiler_2fmir_3averifier_2ecanon(ptr %v0, ptr %s102, ptr %v2, ptr %t2192, i32 %t2193)
  store { i64, ptr } %t2196, ptr %l708
  br label %bb450
bb450:
  %t2197 = load { i64, ptr }, ptr %l705, !tbaa !27
  %t2198 = extractvalue { i64, ptr } %t2197, 1
  %t2199 = extractvalue { i64, ptr } %t2197, 0
  %t2200 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d131, i32 0, i32 1) }, 1
  %t2201 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d131, i32 0, i32 1) }, 0
  %t2202 = add i64 %t2199, %t2201
  %t2203 = load { i64, ptr }, ptr %l708, !tbaa !27
  %t2204 = extractvalue { i64, ptr } %t2203, 1
  %t2205 = extractvalue { i64, ptr } %t2203, 0
  %t2206 = add i64 %t2202, %t2205
  %t2207 = call ptr @__olang_scope_alloc(ptr %s102, i64 %t2206)
  call void @olang_textcopy(ptr %t2207, ptr %t2198, i64 %t2199)
  %t2208 = getelementptr i8, ptr %t2207, i64 %t2199
  call void @olang_textcopy(ptr %t2208, ptr %t2200, i64 %t2201)
  %t2209 = getelementptr i8, ptr %t2208, i64 %t2201
  call void @olang_textcopy(ptr %t2209, ptr %t2204, i64 %t2205)
  %t2210 = insertvalue { i64, ptr } undef, i64 %t2206, 0
  %t2211 = insertvalue { i64, ptr } %t2210, ptr %t2207, 1
  %t2213 = extractvalue { i64, ptr } %t2211, 0
  %t2214 = extractvalue { i64, ptr } %t2211, 1
  %t2215 = mul i64 %t2213, 1
  %t2216 = call ptr @__olang_scope_alloc(ptr %s102, i64 %t2215)
  call void @llvm.memcpy.p0.p0.i64(ptr %t2216, ptr %t2214, i64 %t2215, i1 false)
  %t2217 = insertvalue { i64, ptr } undef, i64 %t2213, 0
  %t2218 = insertvalue { i64, ptr } %t2217, ptr %t2216, 1
  %t2219 = load ptr, ptr %l700, !tbaa !29
  call void @compiler_2fmir_2ecompiler_2fmir_3averifier_2ebad(ptr %v0, ptr %s102, ptr %t2219, { i64, ptr } %t2218)
  br label %bb451
bb451:
  call void @__olang_scope_close(ptr %s102)
  br label %bb452
bb452:
  %t2221 = load ptr, ptr %l4, !tbaa !29
  store ptr %t2221, ptr %l711, !tbaa !29
  %t2222 = load ptr, ptr %l0, !tbaa !29
  store ptr %t2222, ptr %l712, !tbaa !29
  %t2223 = load ptr, ptr %l0, !tbaa !29
  %t2224 = load %"compiler/mir:Range", ptr %l3
  %t2227 = call { i64, [4 x i64] } @compiler_2fmir_2ecompiler_2fmir_3averifier_2earg(ptr %v0, ptr %v1, ptr %t2223, %"compiler/mir:Range" %t2224, i64 1)
  store { i64, [4 x i64] } %t2227, ptr %l715
  br label %bb453
bb453:
  %t2228 = load ptr, ptr %l712, !tbaa !29
  %t2229 = load { i64, [4 x i64] }, ptr %l715
  %t2230 = call i32 @compiler_2fmir_2ecompiler_2fmir_3averifier_2eoperandType(ptr %v0, ptr %v1, ptr %v2, ptr %t2228, { i64, [4 x i64] } %t2229)
  store i32 %t2230, ptr %l716
  br label %bb454
bb454:
  %t2231 = load ptr, ptr %l711, !tbaa !29
  %t2232 = call ptr @__olang_scope_or(ptr %v2, ptr %t2231)
  %t2233 = ptrtoint ptr %t2232 to i64
  %t2235 = inttoptr i64 %t2233 to ptr
  %t2236 = load ptr, ptr %l711, !tbaa !29
  %t2237 = load i32, ptr %l716, !tbaa !23
  %t2238 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %t2235, ptr %t2236, i32 %t2237)
  store i32 %t2238, ptr %l718
  br label %bb455
bb455:
  %t2239 = load i32, ptr @G_2ecompiler_2fmir_2eI64T, !tbaa !23
  %t2240 = load i32, ptr %l718, !tbaa !23
  %t2242 = icmp ne i32 %t2240, %t2239
  br i1 %t2242, label %bb456, label %bb457
bb456:
  store %olang.scope zeroinitializer, ptr %s105
  %t2244 = load ptr, ptr %l0, !tbaa !29
  store ptr %t2244, ptr %l721, !tbaa !29
  %t2245 = load i32, ptr %l1, !range !{i32 0, i32 52}
  store i32 %t2245, ptr %l722
  store %olang.builder { ptr null, i64 0, i64 64, ptr null, ptr null }, ptr %s106
  store ptr %s106room, ptr %s106
  call void @olang_2emir_2eHelperKind_2eRender_2ecompiler_2ftyped_3aPrimOp(ptr %s106, ptr %l722, i64 0)
  br label %bb458
bb457:
  br label %bb461
bb458:
  %t2247 = load ptr, ptr %s106
  %t2248 = getelementptr %olang.builder, ptr %s106, i32 0, i32 1
  %t2249 = load i64, ptr %t2248
  %t2250 = call ptr @__olang_scope_alloc(ptr %s105, i64 %t2249)
  call void @olang_textcopy(ptr %t2250, ptr %t2247, i64 %t2249)
  %t2251 = insertvalue { i64, ptr } undef, i64 %t2249, 0
  %t2252 = insertvalue { i64, ptr } %t2251, ptr %t2250, 1
  store { i64, ptr } %t2252, ptr %l724, !tbaa !27
  %t2253 = getelementptr %olang.builder, ptr %s106, i32 0, i32 3
  %t2254 = load ptr, ptr %t2253
  %t2255 = icmp ne ptr %t2254, null
  br i1 %t2255, label %sbgrew.2256, label %sbdone.2257
sbgrew.2256:
  call void @__olang_sb_done(ptr %s106)
  br label %sbdone.2257
sbdone.2257:
  %t2258 = load { i64, ptr }, ptr %l724, !tbaa !27
  %t2259 = extractvalue { i64, ptr } %t2258, 0
  %t2260 = extractvalue { i64, ptr } %t2258, 1
  %t2261 = mul i64 %t2259, 1
  %t2262 = call ptr @__olang_scope_alloc(ptr %s105, i64 %t2261)
  call void @llvm.memcpy.p0.p0.i64(ptr %t2262, ptr %t2260, i64 %t2261, i1 false)
  %t2263 = insertvalue { i64, ptr } undef, i64 %t2259, 0
  %t2264 = insertvalue { i64, ptr } %t2263, ptr %t2262, 1
  %t2266 = call { i64, ptr } @compiler_2fmir_2eshort(ptr %s105, ptr %s105, { i64, ptr } %t2264)
  store { i64, ptr } %t2266, ptr %l726
  br label %bb459
bb459:
  %t2267 = load { i64, ptr }, ptr %l726, !tbaa !27
  %t2268 = extractvalue { i64, ptr } %t2267, 1
  %t2269 = extractvalue { i64, ptr } %t2267, 0
  %t2270 = extractvalue { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d132, i32 0, i32 1) }, 1
  %t2271 = extractvalue { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d132, i32 0, i32 1) }, 0
  %t2272 = add i64 %t2269, %t2271
  %t2273 = call ptr @__olang_scope_alloc(ptr %s105, i64 %t2272)
  call void @olang_textcopy(ptr %t2273, ptr %t2268, i64 %t2269)
  %t2274 = getelementptr i8, ptr %t2273, i64 %t2269
  call void @olang_textcopy(ptr %t2274, ptr %t2270, i64 %t2271)
  %t2275 = insertvalue { i64, ptr } undef, i64 %t2272, 0
  %t2276 = insertvalue { i64, ptr } %t2275, ptr %t2273, 1
  %t2278 = extractvalue { i64, ptr } %t2276, 0
  %t2279 = extractvalue { i64, ptr } %t2276, 1
  %t2280 = mul i64 %t2278, 1
  %t2281 = call ptr @__olang_scope_alloc(ptr %s105, i64 %t2280)
  call void @llvm.memcpy.p0.p0.i64(ptr %t2281, ptr %t2279, i64 %t2280, i1 false)
  %t2282 = insertvalue { i64, ptr } undef, i64 %t2278, 0
  %t2283 = insertvalue { i64, ptr } %t2282, ptr %t2281, 1
  %t2284 = load ptr, ptr %l721, !tbaa !29
  call void @compiler_2fmir_2ecompiler_2fmir_3averifier_2ebad(ptr %v0, ptr %s105, ptr %t2284, { i64, ptr } %t2283)
  br label %bb460
bb460:
  call void @__olang_scope_close(ptr %s105)
  br label %bb461
bb461:
  %t2286 = load i32, ptr %l1, !range !{i32 0, i32 52}
  %t2288 = trunc i64 41 to i32
  %t2289 = icmp eq i32 %t2286, %t2288
  br i1 %t2289, label %bb462, label %bb463
bb462:
  %t2291 = load ptr, ptr %l4, !tbaa !29
  store ptr %t2291, ptr %l732, !tbaa !29
  %t2292 = load ptr, ptr %l4, !tbaa !29
  store ptr %t2292, ptr %l733, !tbaa !29
  %t2293 = load i32, ptr %l2, !tbaa !23
  %t2294 = load ptr, ptr %l733, !tbaa !29
  %t2295 = call ptr @__olang_scope_or(ptr %v2, ptr %t2294)
  %t2296 = ptrtoint ptr %t2295 to i64
  %t2298 = inttoptr i64 %t2296 to ptr
  %t2299 = load ptr, ptr %l733, !tbaa !29
  %t2301 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %t2298, ptr %t2299, i32 %t2293)
  store i32 %t2301, ptr %l736
  br label %bb464
bb463:
  store i1 false, ptr %l731, !tbaa !21
  br label %bb466
bb464:
  %t2302 = load i32, ptr %l8, !tbaa !23
  %t2303 = load ptr, ptr %l732, !tbaa !29
  %t2304 = call ptr @__olang_scope_or(ptr %v2, ptr %t2303)
  %t2305 = ptrtoint ptr %t2304 to i64
  %t2307 = inttoptr i64 %t2305 to ptr
  %t2308 = load ptr, ptr %l732, !tbaa !29
  %t2309 = load i32, ptr %l736, !tbaa !23
  %t2311 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eSame(ptr %t2307, ptr %t2308, i32 %t2309, i32 %t2302)
  store i1 %t2311, ptr %l739
  br label %bb465
bb465:
  %t2312 = load i1, ptr %l739, !tbaa !21
  %t2313 = xor i1 %t2312, true
  store i1 %t2313, ptr %l731, !tbaa !21
  br label %bb466
bb466:
  %t2315 = load i1, ptr %l731, !tbaa !21
  br i1 %t2315, label %bb467, label %bb468
bb467:
  store %olang.scope zeroinitializer, ptr %s108
  %t2316 = load ptr, ptr %l0, !tbaa !29
  store ptr %t2316, ptr %l741, !tbaa !29
  %t2317 = load ptr, ptr %l0, !tbaa !29
  %t2318 = load i32, ptr %l2, !tbaa !23
  %t2321 = call { i64, ptr } @compiler_2fmir_2ecompiler_2fmir_3averifier_2ecanon(ptr %v0, ptr %s108, ptr %v2, ptr %t2317, i32 %t2318)
  store { i64, ptr } %t2321, ptr %l744
  br label %bb469
bb468:
  br label %bb471
bb469:
  %t2322 = extractvalue { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d133, i32 0, i32 1) }, 1
  %t2323 = extractvalue { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d133, i32 0, i32 1) }, 0
  %t2324 = load { i64, ptr }, ptr %l744, !tbaa !27
  %t2325 = extractvalue { i64, ptr } %t2324, 1
  %t2326 = extractvalue { i64, ptr } %t2324, 0
  %t2327 = add i64 %t2323, %t2326
  %t2328 = call ptr @__olang_scope_alloc(ptr %s108, i64 %t2327)
  call void @olang_textcopy(ptr %t2328, ptr %t2322, i64 %t2323)
  %t2329 = getelementptr i8, ptr %t2328, i64 %t2323
  call void @olang_textcopy(ptr %t2329, ptr %t2325, i64 %t2326)
  %t2330 = insertvalue { i64, ptr } undef, i64 %t2327, 0
  %t2331 = insertvalue { i64, ptr } %t2330, ptr %t2328, 1
  %t2333 = extractvalue { i64, ptr } %t2331, 0
  %t2334 = extractvalue { i64, ptr } %t2331, 1
  %t2335 = mul i64 %t2333, 1
  %t2336 = call ptr @__olang_scope_alloc(ptr %s108, i64 %t2335)
  call void @llvm.memcpy.p0.p0.i64(ptr %t2336, ptr %t2334, i64 %t2335, i1 false)
  %t2337 = insertvalue { i64, ptr } undef, i64 %t2333, 0
  %t2338 = insertvalue { i64, ptr } %t2337, ptr %t2336, 1
  %t2339 = load ptr, ptr %l741, !tbaa !29
  call void @compiler_2fmir_2ecompiler_2fmir_3averifier_2ebad(ptr %v0, ptr %s108, ptr %t2339, { i64, ptr } %t2338)
  br label %bb470
bb470:
  call void @__olang_scope_close(ptr %s108)
  br label %bb471
bb471:
  br label %bb529
bb472:
  br i1 true, label %bb473, label %bb474
bb473:
  br label %bb475
bb474:
  br label %bb528
bb475:
  %t2341 = load ptr, ptr %l4, !tbaa !29
  store ptr %t2341, ptr %l747, !tbaa !29
  %t2342 = load i32, ptr %l8, !tbaa !23
  %t2343 = load ptr, ptr %l747, !tbaa !29
  %t2344 = call ptr @__olang_scope_or(ptr %v2, ptr %t2343)
  %t2345 = ptrtoint ptr %t2344 to i64
  %t2347 = inttoptr i64 %t2345 to ptr
  %t2348 = load ptr, ptr %l747, !tbaa !29
  %t2350 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsRef(ptr %t2347, ptr %t2348, i32 %t2342)
  store i1 %t2350, ptr %l750
  br label %bb476
bb476:
  %t2351 = load i1, ptr %l750, !tbaa !21
  %t2352 = xor i1 %t2351, true
  br i1 %t2352, label %bb477, label %bb478
bb477:
  store i1 true, ptr %l752, !tbaa !21
  br label %bb482
bb478:
  %t2354 = load ptr, ptr %l4, !tbaa !29
  store ptr %t2354, ptr %l753, !tbaa !29
  %t2355 = load ptr, ptr %l4, !tbaa !29
  store ptr %t2355, ptr %l754, !tbaa !29
  %t2356 = load ptr, ptr %l4, !tbaa !29
  store ptr %t2356, ptr %l755, !tbaa !29
  %t2357 = load i32, ptr %l8, !tbaa !23
  %t2358 = load ptr, ptr %l755, !tbaa !29
  %t2359 = call ptr @__olang_scope_or(ptr %v2, ptr %t2358)
  %t2360 = ptrtoint ptr %t2359 to i64
  %t2362 = inttoptr i64 %t2360 to ptr
  %t2363 = load ptr, ptr %l755, !tbaa !29
  %t2365 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eReferent(ptr %t2362, ptr %t2363, i32 %t2357)
  store i32 %t2365, ptr %l758
  br label %bb479
bb479:
  %t2366 = load ptr, ptr %l754, !tbaa !29
  %t2367 = call ptr @__olang_scope_or(ptr %v2, ptr %t2366)
  %t2368 = ptrtoint ptr %t2367 to i64
  %t2370 = inttoptr i64 %t2368 to ptr
  %t2371 = load ptr, ptr %l754, !tbaa !29
  %t2372 = load i32, ptr %l758, !tbaa !23
  %t2373 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %t2370, ptr %t2371, i32 %t2372)
  store i32 %t2373, ptr %l760
  br label %bb480
bb480:
  %t2374 = load ptr, ptr %l753, !tbaa !29
  %t2375 = call ptr @__olang_scope_or(ptr %v2, ptr %t2374)
  %t2376 = ptrtoint ptr %t2375 to i64
  %t2378 = inttoptr i64 %t2376 to ptr
  %t2379 = load ptr, ptr %l753, !tbaa !29
  %t2380 = load i32, ptr %l760, !tbaa !23
  %t2381 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsInt(ptr %t2378, ptr %t2379, i32 %t2380)
  store i1 %t2381, ptr %l762
  br label %bb481
bb481:
  %t2382 = load i1, ptr %l762, !tbaa !21
  %t2383 = xor i1 %t2382, true
  store i1 %t2383, ptr %l752, !tbaa !21
  br label %bb482
bb482:
  %t2385 = load i1, ptr %l752, !tbaa !21
  br i1 %t2385, label %bb483, label %bb484
bb483:
  store i1 true, ptr %l764, !tbaa !21
  br label %bb486
bb484:
  %t2386 = load ptr, ptr %l4, !tbaa !29
  store ptr %t2386, ptr %l765, !tbaa !29
  %t2387 = load i32, ptr %l8, !tbaa !23
  %t2388 = load ptr, ptr %l765, !tbaa !29
  %t2389 = call ptr @__olang_scope_or(ptr %v2, ptr %t2388)
  %t2390 = ptrtoint ptr %t2389 to i64
  %t2392 = inttoptr i64 %t2390 to ptr
  %t2393 = load ptr, ptr %l765, !tbaa !29
  %t2395 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePermOf(ptr %t2392, ptr %t2393, i32 %t2387)
  store i64 %t2395, ptr %l768
  br label %bb485
bb485:
  %t2396 = load i64, ptr @G_2ecompiler_2ftypes_2eWritable, !tbaa !24
  %t2397 = load i64, ptr %l768, !tbaa !24
  %t2399 = and i64 %t2397, %t2396
  %t2401 = icmp eq i64 %t2399, 0
  store i1 %t2401, ptr %l764, !tbaa !21
  br label %bb486
bb486:
  %t2403 = load i1, ptr %l764, !tbaa !21
  br i1 %t2403, label %bb487, label %bb488
bb487:
  store %olang.scope zeroinitializer, ptr %s111
  %t2404 = load ptr, ptr %l0, !tbaa !29
  store ptr %t2404, ptr %l772, !tbaa !29
  %t2405 = load i32, ptr %l1, !range !{i32 0, i32 52}
  store i32 %t2405, ptr %l773
  store %olang.builder { ptr null, i64 0, i64 64, ptr null, ptr null }, ptr %s112
  store ptr %s112room, ptr %s112
  call void @olang_2emir_2eHelperKind_2eRender_2ecompiler_2ftyped_3aPrimOp(ptr %s112, ptr %l773, i64 0)
  br label %bb489
bb488:
  %t2407 = load ptr, ptr %l4, !tbaa !29
  store ptr %t2407, ptr %l783, !tbaa !29
  %t2408 = load i32, ptr %l8, !tbaa !23
  %t2409 = load ptr, ptr %l783, !tbaa !29
  %t2410 = call ptr @__olang_scope_or(ptr %v2, ptr %t2409)
  %t2411 = ptrtoint ptr %t2410 to i64
  %t2413 = inttoptr i64 %t2411 to ptr
  %t2414 = load ptr, ptr %l783, !tbaa !29
  %t2416 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eReferent(ptr %t2413, ptr %t2414, i32 %t2408)
  store i32 %t2416, ptr %l786
  br label %bb493
bb489:
  %t2417 = load ptr, ptr %s112
  %t2418 = getelementptr %olang.builder, ptr %s112, i32 0, i32 1
  %t2419 = load i64, ptr %t2418
  %t2420 = call ptr @__olang_scope_alloc(ptr %s111, i64 %t2419)
  call void @olang_textcopy(ptr %t2420, ptr %t2417, i64 %t2419)
  %t2421 = insertvalue { i64, ptr } undef, i64 %t2419, 0
  %t2422 = insertvalue { i64, ptr } %t2421, ptr %t2420, 1
  store { i64, ptr } %t2422, ptr %l775, !tbaa !27
  %t2423 = getelementptr %olang.builder, ptr %s112, i32 0, i32 3
  %t2424 = load ptr, ptr %t2423
  %t2425 = icmp ne ptr %t2424, null
  br i1 %t2425, label %sbgrew.2426, label %sbdone.2427
sbgrew.2426:
  call void @__olang_sb_done(ptr %s112)
  br label %sbdone.2427
sbdone.2427:
  %t2428 = load { i64, ptr }, ptr %l775, !tbaa !27
  %t2429 = extractvalue { i64, ptr } %t2428, 0
  %t2430 = extractvalue { i64, ptr } %t2428, 1
  %t2431 = mul i64 %t2429, 1
  %t2432 = call ptr @__olang_scope_alloc(ptr %s111, i64 %t2431)
  call void @llvm.memcpy.p0.p0.i64(ptr %t2432, ptr %t2430, i64 %t2431, i1 false)
  %t2433 = insertvalue { i64, ptr } undef, i64 %t2429, 0
  %t2434 = insertvalue { i64, ptr } %t2433, ptr %t2432, 1
  %t2436 = call { i64, ptr } @compiler_2fmir_2eshort(ptr %s111, ptr %s111, { i64, ptr } %t2434)
  store { i64, ptr } %t2436, ptr %l777
  br label %bb490
bb490:
  %t2437 = load ptr, ptr %l0, !tbaa !29
  %t2438 = load i32, ptr %l7, !tbaa !23
  %t2441 = call { i64, ptr } @compiler_2fmir_2ecompiler_2fmir_3averifier_2ecanon(ptr %v0, ptr %s111, ptr %v2, ptr %t2437, i32 %t2438)
  store { i64, ptr } %t2441, ptr %l780
  br label %bb491
bb491:
  %t2442 = load { i64, ptr }, ptr %l777, !tbaa !27
  %t2443 = extractvalue { i64, ptr } %t2442, 1
  %t2444 = extractvalue { i64, ptr } %t2442, 0
  %t2445 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d134, i32 0, i32 1) }, 1
  %t2446 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d134, i32 0, i32 1) }, 0
  %t2447 = add i64 %t2444, %t2446
  %t2448 = load { i64, ptr }, ptr %l780, !tbaa !27
  %t2449 = extractvalue { i64, ptr } %t2448, 1
  %t2450 = extractvalue { i64, ptr } %t2448, 0
  %t2451 = add i64 %t2447, %t2450
  %t2452 = extractvalue { i64, ptr } { i64 40, ptr getelementptr inbounds (<{ i64, [40 x i8] }>, ptr @.d135, i32 0, i32 1) }, 1
  %t2453 = extractvalue { i64, ptr } { i64 40, ptr getelementptr inbounds (<{ i64, [40 x i8] }>, ptr @.d135, i32 0, i32 1) }, 0
  %t2454 = add i64 %t2451, %t2453
  %t2455 = call ptr @__olang_scope_alloc(ptr %s111, i64 %t2454)
  call void @olang_textcopy(ptr %t2455, ptr %t2443, i64 %t2444)
  %t2456 = getelementptr i8, ptr %t2455, i64 %t2444
  call void @olang_textcopy(ptr %t2456, ptr %t2445, i64 %t2446)
  %t2457 = getelementptr i8, ptr %t2456, i64 %t2446
  call void @olang_textcopy(ptr %t2457, ptr %t2449, i64 %t2450)
  %t2458 = getelementptr i8, ptr %t2457, i64 %t2450
  call void @olang_textcopy(ptr %t2458, ptr %t2452, i64 %t2453)
  %t2459 = insertvalue { i64, ptr } undef, i64 %t2454, 0
  %t2460 = insertvalue { i64, ptr } %t2459, ptr %t2455, 1
  %t2462 = extractvalue { i64, ptr } %t2460, 0
  %t2463 = extractvalue { i64, ptr } %t2460, 1
  %t2464 = mul i64 %t2462, 1
  %t2465 = call ptr @__olang_scope_alloc(ptr %s111, i64 %t2464)
  call void @llvm.memcpy.p0.p0.i64(ptr %t2465, ptr %t2463, i64 %t2464, i1 false)
  %t2466 = insertvalue { i64, ptr } undef, i64 %t2462, 0
  %t2467 = insertvalue { i64, ptr } %t2466, ptr %t2465, 1
  %t2468 = load ptr, ptr %l772, !tbaa !29
  call void @compiler_2fmir_2ecompiler_2fmir_3averifier_2ebad(ptr %v0, ptr %s111, ptr %t2468, { i64, ptr } %t2467)
  br label %bb492
bb492:
  call void @__olang_scope_close(ptr %s111)
  br label %bb527
bb493:
  %t2470 = load i32, ptr %l786, !tbaa !23
  store i32 %t2470, ptr %l17, !tbaa !23
  store i64 1, ptr %l18, !tbaa !24
  %t2471 = load i64, ptr %l5, !tbaa !24
  store i64 %t2471, ptr %l19, !tbaa !24
  store i64 1, ptr %l20, !tbaa !24
  %t2473 = load i64, ptr %l19, !tbaa !24
  %t2474 = load i64, ptr %l18, !tbaa !24
  %t2477 = icmp sgt i64 %t2473, %t2474
  br i1 %t2477, label %bb494, label %bb495
bb494:
  %t2479 = load i64, ptr %l20, !tbaa !24
  %t2481 = icmp sgt i64 %t2479, 0
  br i1 %t2481, label %bb496, label %bb497
bb495:
  store i64 0, ptr %l791, !tbaa !24
  br label %bb499
bb496:
  %t2483 = load i64, ptr %l19, !tbaa !24
  %t2484 = load i64, ptr %l18, !tbaa !24
  %t2487 = sub i64 %t2483, %t2484
  %t2488 = load i64, ptr %l20, !tbaa !24
  %t2491 = add i64 %t2487, %t2488
  %t2493 = sub i64 %t2491, 1
  %t2494 = load i64, ptr %l20, !tbaa !24
  %t2497 = sdiv i64 %t2493, %t2494
  store i64 %t2497, ptr %l794, !tbaa !24
  br label %bb498
bb497:
  store i64 0, ptr %l794, !tbaa !24
  br label %bb498
bb498:
  %t2499 = load i64, ptr %l794, !tbaa !24
  store i64 %t2499, ptr %l791, !tbaa !24
  br label %bb499
bb499:
  %t2500 = load i64, ptr %l791, !tbaa !24
  store i64 %t2500, ptr %l21, !tbaa !24
  store i64 0, ptr %l22, !tbaa !24
  br label %bb500
bb500:
  store %olang.scope zeroinitializer, ptr %s116
  %t2501 = load i64, ptr %l22, !tbaa !24
  %t2502 = load i64, ptr %l21, !tbaa !24
  %t2505 = icmp slt i64 %t2501, %t2502
  %t2507 = xor i1 %t2505, true
  br i1 %t2507, label %bb501, label %bb502
bb501:
  call void @__olang_scope_close(ptr %s116)
  br label %bb510
bb502:
  br label %bb503
bb503:
  %t2509 = load i64, ptr %l18, !tbaa !24
  %t2510 = load i64, ptr %l22, !tbaa !24
  %t2511 = load i64, ptr %l20, !tbaa !24
  %t2514 = mul i64 %t2510, %t2511
  %t2517 = add i64 %t2509, %t2514
  store i64 %t2517, ptr %l23, !tbaa !24
  %t2519 = load ptr, ptr %l0, !tbaa !29
  store ptr %t2519, ptr %l812, !tbaa !29
  %t2520 = load ptr, ptr %l0, !tbaa !29
  store ptr %t2520, ptr %l813, !tbaa !29
  %t2521 = load ptr, ptr %l0, !tbaa !29
  %t2522 = load %"compiler/mir:Range", ptr %l3
  %t2523 = load i64, ptr %l23, !tbaa !24
  %t2527 = call { i64, [4 x i64] } @compiler_2fmir_2ecompiler_2fmir_3averifier_2earg(ptr %v0, ptr %v1, ptr %t2521, %"compiler/mir:Range" %t2522, i64 %t2523)
  store { i64, [4 x i64] } %t2527, ptr %l817
  br label %bb504
bb504:
  %t2528 = load ptr, ptr %l813, !tbaa !29
  %t2529 = load { i64, [4 x i64] }, ptr %l817
  %t2530 = call i32 @compiler_2fmir_2ecompiler_2fmir_3averifier_2eoperandType(ptr %v0, ptr %v1, ptr %v2, ptr %t2528, { i64, [4 x i64] } %t2529)
  store i32 %t2530, ptr %l818
  br label %bb505
bb505:
  %t2531 = load i32, ptr %l17, !tbaa !23
  store i32 %t2531, ptr %l819, !tbaa !23
  %t2532 = load i32, ptr %l1, !range !{i32 0, i32 52}
  store i32 %t2532, ptr %l820
  store %olang.builder { ptr null, i64 0, i64 64, ptr null, ptr null }, ptr %s117
  store ptr %s117room, ptr %s117
  call void @olang_2emir_2eHelperKind_2eRender_2ecompiler_2ftyped_3aPrimOp(ptr %s117, ptr %l820, i64 0)
  br label %bb506
bb506:
  %t2534 = load ptr, ptr %s117
  %t2535 = getelementptr %olang.builder, ptr %s117, i32 0, i32 1
  %t2536 = load i64, ptr %t2535
  %t2537 = call ptr @__olang_scope_alloc(ptr %s116, i64 %t2536)
  call void @olang_textcopy(ptr %t2537, ptr %t2534, i64 %t2536)
  %t2538 = insertvalue { i64, ptr } undef, i64 %t2536, 0
  %t2539 = insertvalue { i64, ptr } %t2538, ptr %t2537, 1
  store { i64, ptr } %t2539, ptr %l822, !tbaa !27
  %t2540 = getelementptr %olang.builder, ptr %s117, i32 0, i32 3
  %t2541 = load ptr, ptr %t2540
  %t2542 = icmp ne ptr %t2541, null
  br i1 %t2542, label %sbgrew.2543, label %sbdone.2544
sbgrew.2543:
  call void @__olang_sb_done(ptr %s117)
  br label %sbdone.2544
sbdone.2544:
  %t2545 = load { i64, ptr }, ptr %l822, !tbaa !27
  %t2546 = extractvalue { i64, ptr } %t2545, 0
  %t2547 = extractvalue { i64, ptr } %t2545, 1
  %t2548 = mul i64 %t2546, 1
  %t2549 = call ptr @__olang_scope_alloc(ptr %s116, i64 %t2548)
  call void @llvm.memcpy.p0.p0.i64(ptr %t2549, ptr %t2547, i64 %t2548, i1 false)
  %t2550 = insertvalue { i64, ptr } undef, i64 %t2546, 0
  %t2551 = insertvalue { i64, ptr } %t2550, ptr %t2549, 1
  %t2553 = call { i64, ptr } @compiler_2fmir_2eshort(ptr %s116, ptr %s116, { i64, ptr } %t2551)
  store { i64, ptr } %t2553, ptr %l824
  br label %bb507
bb507:
  %t2554 = load i64, ptr %l23, !tbaa !24
  %t2555 = load { i64, ptr }, ptr %l824, !tbaa !27
  %t2556 = extractvalue { i64, ptr } %t2555, 1
  %t2557 = extractvalue { i64, ptr } %t2555, 0
  %t2558 = extractvalue { i64, ptr } { i64 11, ptr getelementptr inbounds (<{ i64, [11 x i8] }>, ptr @.d136, i32 0, i32 1) }, 1
  %t2559 = extractvalue { i64, ptr } { i64 11, ptr getelementptr inbounds (<{ i64, [11 x i8] }>, ptr @.d136, i32 0, i32 1) }, 0
  %t2560 = add i64 %t2557, %t2559
  %t2562 = call i64 @__olang_fmt_i64(ptr null, i64 %t2554)
  %t2563 = add i64 %t2560, %t2562
  %t2564 = call ptr @__olang_scope_alloc(ptr %s116, i64 %t2563)
  call void @olang_textcopy(ptr %t2564, ptr %t2556, i64 %t2557)
  %t2565 = getelementptr i8, ptr %t2564, i64 %t2557
  call void @olang_textcopy(ptr %t2565, ptr %t2558, i64 %t2559)
  %t2566 = getelementptr i8, ptr %t2565, i64 %t2559
  %t2567 = call i64 @__olang_fmt_i64(ptr %t2566, i64 %t2554)
  %t2568 = insertvalue { i64, ptr } undef, i64 %t2563, 0
  %t2569 = insertvalue { i64, ptr } %t2568, ptr %t2564, 1
  %t2571 = extractvalue { i64, ptr } %t2569, 0
  %t2572 = extractvalue { i64, ptr } %t2569, 1
  %t2573 = mul i64 %t2571, 1
  %t2574 = call ptr @__olang_scope_alloc(ptr %s116, i64 %t2573)
  call void @llvm.memcpy.p0.p0.i64(ptr %t2574, ptr %t2572, i64 %t2573, i1 false)
  %t2575 = insertvalue { i64, ptr } undef, i64 %t2571, 0
  %t2576 = insertvalue { i64, ptr } %t2575, ptr %t2574, 1
  %t2577 = load ptr, ptr %l812, !tbaa !29
  %t2578 = load i32, ptr %l818, !tbaa !23
  %t2579 = load i32, ptr %l819, !tbaa !23
  call void @compiler_2fmir_2ecompiler_2fmir_3averifier_2ewant(ptr %v0, ptr %s116, ptr %v2, ptr %t2577, i32 %t2578, i32 %t2579, { i64, ptr } %t2576)
  br label %bb508
bb508:
  call void @__olang_scope_close(ptr %s116)
  br label %bb509
bb509:
  %t2581 = load i64, ptr %l22, !tbaa !24
  %t2583 = add i64 %t2581, 1
  store i64 %t2583, ptr %l22, !tbaa !24
  br label %bb500
bb510:
  %t2585 = load i32, ptr %l1, !range !{i32 0, i32 52}
  %t2587 = trunc i64 25 to i32
  %t2588 = icmp eq i32 %t2585, %t2587
  br i1 %t2588, label %bb511, label %bb512
bb511:
  %t2590 = load i32, ptr %l2, !tbaa !23
  %t2591 = load i32, ptr @G_2ecompiler_2ftypes_2eVoidT, !tbaa !23
  %t2594 = icmp ne i32 %t2590, %t2591
  br i1 %t2594, label %bb513, label %bb514
bb512:
  %t2596 = load ptr, ptr %l0, !tbaa !29
  %t2597 = load i32, ptr %l17, !tbaa !23
  %t2598 = load i32, ptr %l2, !tbaa !23
  %t2602 = call i1 @compiler_2fmir_2ecompiler_2fmir_3averifier_2efits(ptr %v0, ptr %v2, ptr %t2596, i32 %t2597, i32 %t2598)
  store i1 %t2602, ptr %l844
  br label %bb518
bb513:
  store %olang.scope zeroinitializer, ptr %s121
  %t2603 = load ptr, ptr %l0, !tbaa !29
  store ptr %t2603, ptr %l835, !tbaa !29
  %t2604 = load ptr, ptr %l0, !tbaa !29
  %t2605 = load i32, ptr %l2, !tbaa !23
  %t2608 = call { i64, ptr } @compiler_2fmir_2ecompiler_2fmir_3averifier_2ecanon(ptr %v0, ptr %s121, ptr %v2, ptr %t2604, i32 %t2605)
  store { i64, ptr } %t2608, ptr %l838
  br label %bb515
bb514:
  br label %bb517
bb515:
  %t2609 = extractvalue { i64, ptr } { i64 18, ptr getelementptr inbounds (<{ i64, [18 x i8] }>, ptr @.d137, i32 0, i32 1) }, 1
  %t2610 = extractvalue { i64, ptr } { i64 18, ptr getelementptr inbounds (<{ i64, [18 x i8] }>, ptr @.d137, i32 0, i32 1) }, 0
  %t2611 = load { i64, ptr }, ptr %l838, !tbaa !27
  %t2612 = extractvalue { i64, ptr } %t2611, 1
  %t2613 = extractvalue { i64, ptr } %t2611, 0
  %t2614 = add i64 %t2610, %t2613
  %t2615 = call ptr @__olang_scope_alloc(ptr %s121, i64 %t2614)
  call void @olang_textcopy(ptr %t2615, ptr %t2609, i64 %t2610)
  %t2616 = getelementptr i8, ptr %t2615, i64 %t2610
  call void @olang_textcopy(ptr %t2616, ptr %t2612, i64 %t2613)
  %t2617 = insertvalue { i64, ptr } undef, i64 %t2614, 0
  %t2618 = insertvalue { i64, ptr } %t2617, ptr %t2615, 1
  %t2620 = extractvalue { i64, ptr } %t2618, 0
  %t2621 = extractvalue { i64, ptr } %t2618, 1
  %t2622 = mul i64 %t2620, 1
  %t2623 = call ptr @__olang_scope_alloc(ptr %s121, i64 %t2622)
  call void @llvm.memcpy.p0.p0.i64(ptr %t2623, ptr %t2621, i64 %t2622, i1 false)
  %t2624 = insertvalue { i64, ptr } undef, i64 %t2620, 0
  %t2625 = insertvalue { i64, ptr } %t2624, ptr %t2623, 1
  %t2626 = load ptr, ptr %l835, !tbaa !29
  call void @compiler_2fmir_2ecompiler_2fmir_3averifier_2ebad(ptr %v0, ptr %s121, ptr %t2626, { i64, ptr } %t2625)
  br label %bb516
bb516:
  call void @__olang_scope_close(ptr %s121)
  br label %bb517
bb517:
  br label %bb526
bb518:
  %t2628 = load i1, ptr %l844, !tbaa !21
  %t2629 = xor i1 %t2628, true
  br i1 %t2629, label %bb519, label %bb520
bb519:
  store %olang.scope zeroinitializer, ptr %s124
  %t2631 = load ptr, ptr %l0, !tbaa !29
  store ptr %t2631, ptr %l846, !tbaa !29
  %t2632 = load i32, ptr %l1, !range !{i32 0, i32 52}
  store i32 %t2632, ptr %l847
  store %olang.builder { ptr null, i64 0, i64 64, ptr null, ptr null }, ptr %s125
  store ptr %s125room, ptr %s125
  call void @olang_2emir_2eHelperKind_2eRender_2ecompiler_2ftyped_3aPrimOp(ptr %s125, ptr %l847, i64 0)
  br label %bb521
bb520:
  br label %bb525
bb521:
  %t2634 = load ptr, ptr %s125
  %t2635 = getelementptr %olang.builder, ptr %s125, i32 0, i32 1
  %t2636 = load i64, ptr %t2635
  %t2637 = call ptr @__olang_scope_alloc(ptr %s124, i64 %t2636)
  call void @olang_textcopy(ptr %t2637, ptr %t2634, i64 %t2636)
  %t2638 = insertvalue { i64, ptr } undef, i64 %t2636, 0
  %t2639 = insertvalue { i64, ptr } %t2638, ptr %t2637, 1
  store { i64, ptr } %t2639, ptr %l849, !tbaa !27
  %t2640 = getelementptr %olang.builder, ptr %s125, i32 0, i32 3
  %t2641 = load ptr, ptr %t2640
  %t2642 = icmp ne ptr %t2641, null
  br i1 %t2642, label %sbgrew.2643, label %sbdone.2644
sbgrew.2643:
  call void @__olang_sb_done(ptr %s125)
  br label %sbdone.2644
sbdone.2644:
  %t2645 = load { i64, ptr }, ptr %l849, !tbaa !27
  %t2646 = extractvalue { i64, ptr } %t2645, 0
  %t2647 = extractvalue { i64, ptr } %t2645, 1
  %t2648 = mul i64 %t2646, 1
  %t2649 = call ptr @__olang_scope_alloc(ptr %s124, i64 %t2648)
  call void @llvm.memcpy.p0.p0.i64(ptr %t2649, ptr %t2647, i64 %t2648, i1 false)
  %t2650 = insertvalue { i64, ptr } undef, i64 %t2646, 0
  %t2651 = insertvalue { i64, ptr } %t2650, ptr %t2649, 1
  %t2653 = call { i64, ptr } @compiler_2fmir_2eshort(ptr %s124, ptr %s124, { i64, ptr } %t2651)
  store { i64, ptr } %t2653, ptr %l851
  br label %bb522
bb522:
  %t2654 = load ptr, ptr %l0, !tbaa !29
  %t2655 = load i32, ptr %l2, !tbaa !23
  %t2658 = call { i64, ptr } @compiler_2fmir_2ecompiler_2fmir_3averifier_2ecanon(ptr %v0, ptr %s124, ptr %v2, ptr %t2654, i32 %t2655)
  store { i64, ptr } %t2658, ptr %l854
  br label %bb523
bb523:
  %t2659 = load { i64, ptr }, ptr %l851, !tbaa !27
  %t2660 = extractvalue { i64, ptr } %t2659, 1
  %t2661 = extractvalue { i64, ptr } %t2659, 0
  %t2662 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d138, i32 0, i32 1) }, 1
  %t2663 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d138, i32 0, i32 1) }, 0
  %t2664 = add i64 %t2661, %t2663
  %t2665 = load { i64, ptr }, ptr %l854, !tbaa !27
  %t2666 = extractvalue { i64, ptr } %t2665, 1
  %t2667 = extractvalue { i64, ptr } %t2665, 0
  %t2668 = add i64 %t2664, %t2667
  %t2669 = call ptr @__olang_scope_alloc(ptr %s124, i64 %t2668)
  call void @olang_textcopy(ptr %t2669, ptr %t2660, i64 %t2661)
  %t2670 = getelementptr i8, ptr %t2669, i64 %t2661
  call void @olang_textcopy(ptr %t2670, ptr %t2662, i64 %t2663)
  %t2671 = getelementptr i8, ptr %t2670, i64 %t2663
  call void @olang_textcopy(ptr %t2671, ptr %t2666, i64 %t2667)
  %t2672 = insertvalue { i64, ptr } undef, i64 %t2668, 0
  %t2673 = insertvalue { i64, ptr } %t2672, ptr %t2669, 1
  %t2675 = extractvalue { i64, ptr } %t2673, 0
  %t2676 = extractvalue { i64, ptr } %t2673, 1
  %t2677 = mul i64 %t2675, 1
  %t2678 = call ptr @__olang_scope_alloc(ptr %s124, i64 %t2677)
  call void @llvm.memcpy.p0.p0.i64(ptr %t2678, ptr %t2676, i64 %t2677, i1 false)
  %t2679 = insertvalue { i64, ptr } undef, i64 %t2675, 0
  %t2680 = insertvalue { i64, ptr } %t2679, ptr %t2678, 1
  %t2681 = load ptr, ptr %l846, !tbaa !29
  call void @compiler_2fmir_2ecompiler_2fmir_3averifier_2ebad(ptr %v0, ptr %s124, ptr %t2681, { i64, ptr } %t2680)
  br label %bb524
bb524:
  call void @__olang_scope_close(ptr %s124)
  br label %bb525
bb525:
  br label %bb526
bb526:
  br label %bb527
bb527:
  br label %bb529
bb528:
  call void @__olang_check_failed(ptr @olang_loc_7968c2a45e42402b_522993cc8bbef1e7)
  unreachable
bb529:
  %t2683 = load i32, ptr %l2, !tbaa !23
  store i32 %t2683, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local i32 @compiler_2fmir_2ecompiler_2fmir_3averifier_2eprojected(ptr %v0, ptr %v1, ptr %v2, ptr %a0, i32 %a1, { i64, [1 x i64] } %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca { i64, [1 x i64] }
  %l3 = alloca ptr
  %l4 = alloca i64
  %l5 = alloca i32
  %l6 = alloca i1
  %l7 = alloca { i64, ptr }
  %l8 = alloca i32
  %l9 = alloca i32
  %l10 = alloca i64
  %l11 = alloca i32
  %l12 = alloca i32
  %l13 = alloca i64
  %l14 = alloca i32
  %l15 = alloca i1
  %l16 = alloca { i64, ptr }
  %l23 = alloca ptr
  %l26 = alloca i32
  %l28 = alloca ptr
  %l31 = alloca i1
  %l32 = alloca ptr
  %l35 = alloca { i64, ptr }
  %l38 = alloca i1
  %l41 = alloca i1
  %l46 = alloca ptr
  %l47 = alloca i64
  %l50 = alloca { i64, ptr }
  %l54 = alloca { i64, ptr }
  %l60 = alloca ptr
  %l61 = alloca ptr
  %l64 = alloca i32
  %l66 = alloca i32
  %l68 = alloca i1
  %l70 = alloca ptr
  %l71 = alloca i32
  %l72 = alloca ptr
  %l75 = alloca i32
  %l76 = alloca { i64, ptr }
  %l81 = alloca i32
  %l85 = alloca ptr
  %l88 = alloca { i64, ptr }
  %l92 = alloca ptr
  %l95 = alloca i32
  %l101 = alloca i32
  %l105 = alloca ptr
  %l108 = alloca { i64, ptr }
  %l112 = alloca ptr
  %l115 = alloca i32
  %l118 = alloca i1
  %l121 = alloca i1
  %l122 = alloca ptr
  %l125 = alloca i32
  %l128 = alloca i1
  %l129 = alloca i64
  %l130 = alloca ptr
  %l133 = alloca i64
  %l135 = alloca ptr
  %l136 = alloca i64
  %l139 = alloca { i64, ptr }
  %l142 = alloca ptr
  %l145 = alloca i32
  %l148 = alloca ptr
  %l151 = alloca i1
  %l153 = alloca ptr
  %l156 = alloca { i64, ptr }
  %l160 = alloca ptr
  %l163 = alloca i32
  %l168 = alloca ptr
  %l171 = alloca i32
  %l173 = alloca ptr
  %l176 = alloca i1
  %l177 = alloca ptr
  %l180 = alloca { i64, ptr }
  %l183 = alloca i1
  %l186 = alloca i1
  %l191 = alloca ptr
  %l192 = alloca i64
  %l195 = alloca { i64, ptr }
  %l199 = alloca { i64, ptr }
  %l203 = alloca ptr
  %l204 = alloca i64
  %l207 = alloca { i64, ptr }
  %l211 = alloca { i64, ptr }
  %s1 = alloca %olang.scope
  %s2 = alloca %olang.scope
  %s5 = alloca %olang.scope
  %s7 = alloca %olang.scope
  %s10 = alloca %olang.scope
  %s12 = alloca %olang.scope
  %s15 = alloca %olang.scope
  %s17 = alloca %olang.scope
  %s18 = alloca %olang.scope
  %s20 = alloca %olang.scope
  %rv = alloca i32
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  store { i64, [1 x i64] } %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/mir:verifier", ptr %t1, i32 0, i32 1
  %t4 = load ptr, ptr %t3, !tbaa !29
  store ptr %t4, ptr %l3, !tbaa !29
  %t6 = load { i64, [1 x i64] }, ptr %l2
  %t8 = extractvalue { i64, [1 x i64] } %t6, 0
  %t9 = icmp eq i64 %t8, 0
  br i1 %t9, label %bb1, label %bb2
bb1:
  %t11 = getelementptr { i64, [1 x i64] }, ptr %l2, i32 0, i32 1
  %t12 = getelementptr { i64 }, ptr %t11, i32 0, i32 0
  %t13 = load i64, ptr %t12
  store i64 %t13, ptr %l4, !tbaa !24
  br label %bb3
bb2:
  br label %bb18
bb3:
  store %olang.scope zeroinitializer, ptr %s1
  %t15 = load ptr, ptr %l0, !tbaa !29
  %t17 = getelementptr %"compiler/mir:verifier", ptr %t15, i32 0, i32 1
  %t18 = load ptr, ptr %t17, !tbaa !29
  store ptr %t18, ptr %l23, !tbaa !29
  %t19 = load i32, ptr %l1, !tbaa !23
  %t20 = load ptr, ptr %l23, !tbaa !29
  %t21 = call ptr @__olang_scope_or(ptr %v1, ptr %t20)
  %t22 = ptrtoint ptr %t21 to i64
  %t24 = inttoptr i64 %t22 to ptr
  %t25 = load ptr, ptr %l23, !tbaa !29
  %t27 = call i32 @compiler_2fmir_2eFieldsOf(ptr %t24, ptr %t25, i32 %t19)
  store i32 %t27, ptr %l26
  br label %bb4
bb4:
  %t28 = load i32, ptr %l26, !tbaa !23
  store i32 %t28, ptr %l5, !tbaa !23
  %t29 = load ptr, ptr %l0, !tbaa !29
  %t31 = getelementptr %"compiler/mir:verifier", ptr %t29, i32 0, i32 1
  %t32 = load ptr, ptr %t31, !tbaa !29
  store ptr %t32, ptr %l28, !tbaa !29
  %t33 = load i32, ptr %l1, !tbaa !23
  %t34 = load ptr, ptr %l28, !tbaa !29
  %t35 = call ptr @__olang_scope_or(ptr %v1, ptr %t34)
  %t36 = ptrtoint ptr %t35 to i64
  %t38 = inttoptr i64 %t36 to ptr
  %t39 = load ptr, ptr %l28, !tbaa !29
  %t41 = call i1 @compiler_2fmir_2eHasFields(ptr %t38, ptr %t39, i32 %t33)
  store i1 %t41, ptr %l31
  br label %bb5
bb5:
  %t42 = load i1, ptr %l31, !tbaa !21
  store i1 %t42, ptr %l6, !tbaa !21
  %t43 = load ptr, ptr %l3, !tbaa !29
  store ptr %t43, ptr %l32, !tbaa !29
  %t44 = load i32, ptr %l5, !tbaa !23
  %t45 = load ptr, ptr %l32, !tbaa !29
  %t46 = call ptr @__olang_scope_or(ptr %v1, ptr %t45)
  %t47 = ptrtoint ptr %t46 to i64
  %t49 = inttoptr i64 %t47 to ptr
  %t50 = load ptr, ptr %l32, !tbaa !29
  %t52 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %t49, ptr %s1, ptr %t50, i32 %t44)
  store { i64, ptr } %t52, ptr %l35
  br label %bb6
bb6:
  %t53 = load { i64, ptr }, ptr %l35, !tbaa !27
  store { i64, ptr } %t53, ptr %l7, !tbaa !27
  %t54 = load i1, ptr %l6, !tbaa !21
  %t56 = xor i1 %t54, true
  br i1 %t56, label %bb7, label %bb8
bb7:
  store i1 true, ptr %l38, !tbaa !21
  br label %bb9
bb8:
  %t58 = load i64, ptr %l4, !tbaa !24
  %t60 = icmp slt i64 %t58, 0
  store i1 %t60, ptr %l38, !tbaa !21
  br label %bb9
bb9:
  %t62 = load i1, ptr %l38, !tbaa !21
  br i1 %t62, label %bb10, label %bb11
bb10:
  store i1 true, ptr %l41, !tbaa !21
  br label %bb12
bb11:
  %t63 = load i64, ptr %l4, !tbaa !24
  %t64 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t66 = extractvalue { i64, ptr } %t64, 0
  %t69 = icmp sge i64 %t63, %t66
  store i1 %t69, ptr %l41, !tbaa !21
  br label %bb12
bb12:
  %t71 = load i1, ptr %l41, !tbaa !21
  br i1 %t71, label %bb13, label %bb14
bb13:
  store %olang.scope zeroinitializer, ptr %s2
  %t72 = load ptr, ptr %l0, !tbaa !29
  store ptr %t72, ptr %l46, !tbaa !29
  %t73 = load i64, ptr %l4, !tbaa !24
  store i64 %t73, ptr %l47, !tbaa !24
  %t74 = load ptr, ptr %l0, !tbaa !29
  %t75 = load i32, ptr %l1, !tbaa !23
  %t78 = call { i64, ptr } @compiler_2fmir_2ecompiler_2fmir_3averifier_2ecanon(ptr %v0, ptr %s2, ptr %v1, ptr %t74, i32 %t75)
  store { i64, ptr } %t78, ptr %l50
  br label %bb15
bb14:
  br label %bb17
bb15:
  %t79 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d139, i32 0, i32 1) }, 1
  %t80 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d139, i32 0, i32 1) }, 0
  %t81 = load i64, ptr %l47, !tbaa !24
  %t82 = call i64 @__olang_fmt_i64(ptr null, i64 %t81)
  %t83 = add i64 %t80, %t82
  %t84 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d140, i32 0, i32 1) }, 1
  %t85 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d140, i32 0, i32 1) }, 0
  %t86 = add i64 %t83, %t85
  %t87 = load { i64, ptr }, ptr %l50, !tbaa !27
  %t88 = extractvalue { i64, ptr } %t87, 1
  %t89 = extractvalue { i64, ptr } %t87, 0
  %t90 = add i64 %t86, %t89
  %t91 = call ptr @__olang_scope_alloc(ptr %s2, i64 %t90)
  call void @olang_textcopy(ptr %t91, ptr %t79, i64 %t80)
  %t92 = getelementptr i8, ptr %t91, i64 %t80
  %t93 = call i64 @__olang_fmt_i64(ptr %t92, i64 %t81)
  %t94 = getelementptr i8, ptr %t92, i64 %t82
  call void @olang_textcopy(ptr %t94, ptr %t84, i64 %t85)
  %t95 = getelementptr i8, ptr %t94, i64 %t85
  call void @olang_textcopy(ptr %t95, ptr %t88, i64 %t89)
  %t96 = insertvalue { i64, ptr } undef, i64 %t90, 0
  %t97 = insertvalue { i64, ptr } %t96, ptr %t91, 1
  %t99 = extractvalue { i64, ptr } %t97, 0
  %t100 = extractvalue { i64, ptr } %t97, 1
  %t101 = mul i64 %t99, 1
  %t102 = call ptr @__olang_scope_alloc(ptr %s2, i64 %t101)
  call void @llvm.memcpy.p0.p0.i64(ptr %t102, ptr %t100, i64 %t101, i1 false)
  %t103 = insertvalue { i64, ptr } undef, i64 %t99, 0
  %t104 = insertvalue { i64, ptr } %t103, ptr %t102, 1
  %t105 = load ptr, ptr %l46, !tbaa !29
  call void @compiler_2fmir_2ecompiler_2fmir_3averifier_2ebad(ptr %v0, ptr %s2, ptr %t105, { i64, ptr } %t104)
  br label %bb16
bb16:
  %t107 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  call void @__olang_scope_close(ptr %s2)
  call void @__olang_scope_close(ptr %s1)
  store i32 %t107, ptr %rv
  br label %ret
bb17:
  %t109 = load { i64, ptr }, ptr %l7, !tbaa !27
  store { i64, ptr } %t109, ptr %l54, !tbaa !27
  %t110 = load i64, ptr %l4, !tbaa !24
  %t112 = getelementptr { i64, ptr }, ptr %l54, i32 0, i32 1
  %t113 = load ptr, ptr %t112, !tbaa !27
  %t114 = getelementptr i32, ptr %t113, i64 %t110
  %t115 = load i32, ptr %t114, !tbaa !33
  call void @__olang_scope_close(ptr %s1)
  store i32 %t115, ptr %rv
  br label %ret
bb18:
  %t117 = load { i64, [1 x i64] }, ptr %l2
  %t119 = extractvalue { i64, [1 x i64] } %t117, 0
  %t120 = icmp eq i64 %t119, 1
  br i1 %t120, label %bb19, label %bb20
bb19:
  %t122 = getelementptr { i64, [1 x i64] }, ptr %l2, i32 0, i32 1
  %t123 = getelementptr { i32 }, ptr %t122, i32 0, i32 0
  %t124 = load i32, ptr %t123
  store i32 %t124, ptr %l8, !tbaa !23
  br label %bb21
bb20:
  br label %bb38
bb21:
  %t126 = load ptr, ptr %l3, !tbaa !29
  store ptr %t126, ptr %l60, !tbaa !29
  %t127 = load ptr, ptr %l3, !tbaa !29
  store ptr %t127, ptr %l61, !tbaa !29
  %t128 = load ptr, ptr %l0, !tbaa !29
  %t129 = load i32, ptr %l8, !tbaa !23
  %t132 = call i32 @compiler_2fmir_2ecompiler_2fmir_3averifier_2elocalType(ptr %v0, ptr %v2, ptr %t128, i32 %t129)
  store i32 %t132, ptr %l64
  br label %bb22
bb22:
  %t133 = load ptr, ptr %l61, !tbaa !29
  %t134 = call ptr @__olang_scope_or(ptr %v1, ptr %t133)
  %t135 = ptrtoint ptr %t134 to i64
  %t137 = inttoptr i64 %t135 to ptr
  %t138 = load ptr, ptr %l61, !tbaa !29
  %t139 = load i32, ptr %l64, !tbaa !23
  %t140 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %t137, ptr %t138, i32 %t139)
  store i32 %t140, ptr %l66
  br label %bb23
bb23:
  %t141 = load ptr, ptr %l60, !tbaa !29
  %t142 = call ptr @__olang_scope_or(ptr %v1, ptr %t141)
  %t143 = ptrtoint ptr %t142 to i64
  %t145 = inttoptr i64 %t143 to ptr
  %t146 = load ptr, ptr %l60, !tbaa !29
  %t147 = load i32, ptr %l66, !tbaa !23
  %t148 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsInt(ptr %t145, ptr %t146, i32 %t147)
  store i1 %t148, ptr %l68
  br label %bb24
bb24:
  %t149 = load i1, ptr %l68, !tbaa !21
  %t150 = xor i1 %t149, true
  br i1 %t150, label %bb25, label %bb26
bb25:
  store %olang.scope zeroinitializer, ptr %s5
  %t152 = load ptr, ptr %l0, !tbaa !29
  store ptr %t152, ptr %l70, !tbaa !29
  %t153 = load i32, ptr %l8, !tbaa !23
  store i32 %t153, ptr %l71, !tbaa !23
  %t154 = load ptr, ptr %l0, !tbaa !29
  store ptr %t154, ptr %l72, !tbaa !29
  %t155 = load ptr, ptr %l0, !tbaa !29
  %t156 = load i32, ptr %l8, !tbaa !23
  %t159 = call i32 @compiler_2fmir_2ecompiler_2fmir_3averifier_2elocalType(ptr %v0, ptr %v2, ptr %t155, i32 %t156)
  store i32 %t159, ptr %l75
  br label %bb27
bb26:
  br label %bb30
bb27:
  %t160 = load ptr, ptr %l72, !tbaa !29
  %t161 = load i32, ptr %l75, !tbaa !23
  %t162 = call { i64, ptr } @compiler_2fmir_2ecompiler_2fmir_3averifier_2ecanon(ptr %v0, ptr %s5, ptr %v1, ptr %t160, i32 %t161)
  store { i64, ptr } %t162, ptr %l76
  br label %bb28
bb28:
  %t163 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d141, i32 0, i32 1) }, 1
  %t164 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d141, i32 0, i32 1) }, 0
  %t165 = load i32, ptr %l71, !tbaa !23
  %t166 = sext i32 %t165 to i64
  %t167 = call i64 @__olang_fmt_i64(ptr null, i64 %t166)
  %t168 = add i64 %t164, %t167
  %t169 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d142, i32 0, i32 1) }, 1
  %t170 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d142, i32 0, i32 1) }, 0
  %t171 = add i64 %t168, %t170
  %t172 = load { i64, ptr }, ptr %l76, !tbaa !27
  %t173 = extractvalue { i64, ptr } %t172, 1
  %t174 = extractvalue { i64, ptr } %t172, 0
  %t175 = add i64 %t171, %t174
  %t176 = call ptr @__olang_scope_alloc(ptr %s5, i64 %t175)
  call void @olang_textcopy(ptr %t176, ptr %t163, i64 %t164)
  %t177 = getelementptr i8, ptr %t176, i64 %t164
  %t178 = call i64 @__olang_fmt_i64(ptr %t177, i64 %t166)
  %t179 = getelementptr i8, ptr %t177, i64 %t167
  call void @olang_textcopy(ptr %t179, ptr %t169, i64 %t170)
  %t180 = getelementptr i8, ptr %t179, i64 %t170
  call void @olang_textcopy(ptr %t180, ptr %t173, i64 %t174)
  %t181 = insertvalue { i64, ptr } undef, i64 %t175, 0
  %t182 = insertvalue { i64, ptr } %t181, ptr %t176, 1
  %t184 = extractvalue { i64, ptr } %t182, 0
  %t185 = extractvalue { i64, ptr } %t182, 1
  %t186 = mul i64 %t184, 1
  %t187 = call ptr @__olang_scope_alloc(ptr %s5, i64 %t186)
  call void @llvm.memcpy.p0.p0.i64(ptr %t187, ptr %t185, i64 %t186, i1 false)
  %t188 = insertvalue { i64, ptr } undef, i64 %t184, 0
  %t189 = insertvalue { i64, ptr } %t188, ptr %t187, 1
  %t190 = load ptr, ptr %l70, !tbaa !29
  call void @compiler_2fmir_2ecompiler_2fmir_3averifier_2ebad(ptr %v0, ptr %s5, ptr %t190, { i64, ptr } %t189)
  br label %bb29
bb29:
  call void @__olang_scope_close(ptr %s5)
  br label %bb30
bb30:
  %t192 = load ptr, ptr %l0, !tbaa !29
  %t193 = load i32, ptr %l1, !tbaa !23
  %t196 = call i32 @compiler_2fmir_2ecompiler_2fmir_3averifier_2earrayOf(ptr %v0, ptr %v1, ptr %t192, i32 %t193)
  store i32 %t196, ptr %l81
  br label %bb31
bb31:
  %t197 = load i32, ptr %l81, !tbaa !23
  store i32 %t197, ptr %l9, !tbaa !23
  %t198 = load i32, ptr %l9, !tbaa !23
  %t199 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t202 = icmp eq i32 %t198, %t199
  br i1 %t202, label %bb32, label %bb33
bb32:
  store %olang.scope zeroinitializer, ptr %s7
  %t204 = load ptr, ptr %l0, !tbaa !29
  store ptr %t204, ptr %l85, !tbaa !29
  %t205 = load ptr, ptr %l0, !tbaa !29
  %t206 = load i32, ptr %l1, !tbaa !23
  %t209 = call { i64, ptr } @compiler_2fmir_2ecompiler_2fmir_3averifier_2ecanon(ptr %v0, ptr %s7, ptr %v1, ptr %t205, i32 %t206)
  store { i64, ptr } %t209, ptr %l88
  br label %bb34
bb33:
  br label %bb36
bb34:
  %t210 = extractvalue { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d143, i32 0, i32 1) }, 1
  %t211 = extractvalue { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d143, i32 0, i32 1) }, 0
  %t212 = load { i64, ptr }, ptr %l88, !tbaa !27
  %t213 = extractvalue { i64, ptr } %t212, 1
  %t214 = extractvalue { i64, ptr } %t212, 0
  %t215 = add i64 %t211, %t214
  %t216 = extractvalue { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d144, i32 0, i32 1) }, 1
  %t217 = extractvalue { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d144, i32 0, i32 1) }, 0
  %t218 = add i64 %t215, %t217
  %t219 = call ptr @__olang_scope_alloc(ptr %s7, i64 %t218)
  call void @olang_textcopy(ptr %t219, ptr %t210, i64 %t211)
  %t220 = getelementptr i8, ptr %t219, i64 %t211
  call void @olang_textcopy(ptr %t220, ptr %t213, i64 %t214)
  %t221 = getelementptr i8, ptr %t220, i64 %t214
  call void @olang_textcopy(ptr %t221, ptr %t216, i64 %t217)
  %t222 = insertvalue { i64, ptr } undef, i64 %t218, 0
  %t223 = insertvalue { i64, ptr } %t222, ptr %t219, 1
  %t225 = extractvalue { i64, ptr } %t223, 0
  %t226 = extractvalue { i64, ptr } %t223, 1
  %t227 = mul i64 %t225, 1
  %t228 = call ptr @__olang_scope_alloc(ptr %s7, i64 %t227)
  call void @llvm.memcpy.p0.p0.i64(ptr %t228, ptr %t226, i64 %t227, i1 false)
  %t229 = insertvalue { i64, ptr } undef, i64 %t225, 0
  %t230 = insertvalue { i64, ptr } %t229, ptr %t228, 1
  %t231 = load ptr, ptr %l85, !tbaa !29
  call void @compiler_2fmir_2ecompiler_2fmir_3averifier_2ebad(ptr %v0, ptr %s7, ptr %t231, { i64, ptr } %t230)
  br label %bb35
bb35:
  %t233 = load i32, ptr %l9, !tbaa !23
  call void @__olang_scope_close(ptr %s7)
  store i32 %t233, ptr %rv
  br label %ret
bb36:
  %t235 = load ptr, ptr %l3, !tbaa !29
  store ptr %t235, ptr %l92, !tbaa !29
  %t236 = load i32, ptr %l9, !tbaa !23
  %t237 = load ptr, ptr %l92, !tbaa !29
  %t238 = call ptr @__olang_scope_or(ptr %v1, ptr %t237)
  %t239 = ptrtoint ptr %t238 to i64
  %t241 = inttoptr i64 %t239 to ptr
  %t242 = load ptr, ptr %l92, !tbaa !29
  %t244 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eElem(ptr %t241, ptr %t242, i32 %t236)
  store i32 %t244, ptr %l95
  br label %bb37
bb37:
  %t245 = load i32, ptr %l95, !tbaa !23
  store i32 %t245, ptr %rv
  br label %ret
bb38:
  %t246 = load { i64, [1 x i64] }, ptr %l2
  %t248 = extractvalue { i64, [1 x i64] } %t246, 0
  %t249 = icmp eq i64 %t248, 2
  br i1 %t249, label %bb39, label %bb40
bb39:
  %t251 = getelementptr { i64, [1 x i64] }, ptr %l2, i32 0, i32 1
  %t252 = getelementptr { i64 }, ptr %t251, i32 0, i32 0
  %t253 = load i64, ptr %t252
  store i64 %t253, ptr %l10, !tbaa !24
  br label %bb41
bb40:
  br label %bb66
bb41:
  %t255 = load ptr, ptr %l0, !tbaa !29
  %t256 = load i32, ptr %l1, !tbaa !23
  %t259 = call i32 @compiler_2fmir_2ecompiler_2fmir_3averifier_2earrayOf(ptr %v0, ptr %v1, ptr %t255, i32 %t256)
  store i32 %t259, ptr %l101
  br label %bb42
bb42:
  %t260 = load i32, ptr %l101, !tbaa !23
  store i32 %t260, ptr %l11, !tbaa !23
  %t261 = load i32, ptr %l11, !tbaa !23
  %t262 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t265 = icmp eq i32 %t261, %t262
  br i1 %t265, label %bb43, label %bb44
bb43:
  store %olang.scope zeroinitializer, ptr %s10
  %t267 = load ptr, ptr %l0, !tbaa !29
  store ptr %t267, ptr %l105, !tbaa !29
  %t268 = load ptr, ptr %l0, !tbaa !29
  %t269 = load i32, ptr %l1, !tbaa !23
  %t272 = call { i64, ptr } @compiler_2fmir_2ecompiler_2fmir_3averifier_2ecanon(ptr %v0, ptr %s10, ptr %v1, ptr %t268, i32 %t269)
  store { i64, ptr } %t272, ptr %l108
  br label %bb45
bb44:
  br label %bb47
bb45:
  %t273 = extractvalue { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d145, i32 0, i32 1) }, 1
  %t274 = extractvalue { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d145, i32 0, i32 1) }, 0
  %t275 = load { i64, ptr }, ptr %l108, !tbaa !27
  %t276 = extractvalue { i64, ptr } %t275, 1
  %t277 = extractvalue { i64, ptr } %t275, 0
  %t278 = add i64 %t274, %t277
  %t279 = extractvalue { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d146, i32 0, i32 1) }, 1
  %t280 = extractvalue { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d146, i32 0, i32 1) }, 0
  %t281 = add i64 %t278, %t280
  %t282 = call ptr @__olang_scope_alloc(ptr %s10, i64 %t281)
  call void @olang_textcopy(ptr %t282, ptr %t273, i64 %t274)
  %t283 = getelementptr i8, ptr %t282, i64 %t274
  call void @olang_textcopy(ptr %t283, ptr %t276, i64 %t277)
  %t284 = getelementptr i8, ptr %t283, i64 %t277
  call void @olang_textcopy(ptr %t284, ptr %t279, i64 %t280)
  %t285 = insertvalue { i64, ptr } undef, i64 %t281, 0
  %t286 = insertvalue { i64, ptr } %t285, ptr %t282, 1
  %t288 = extractvalue { i64, ptr } %t286, 0
  %t289 = extractvalue { i64, ptr } %t286, 1
  %t290 = mul i64 %t288, 1
  %t291 = call ptr @__olang_scope_alloc(ptr %s10, i64 %t290)
  call void @llvm.memcpy.p0.p0.i64(ptr %t291, ptr %t289, i64 %t290, i1 false)
  %t292 = insertvalue { i64, ptr } undef, i64 %t288, 0
  %t293 = insertvalue { i64, ptr } %t292, ptr %t291, 1
  %t294 = load ptr, ptr %l105, !tbaa !29
  call void @compiler_2fmir_2ecompiler_2fmir_3averifier_2ebad(ptr %v0, ptr %s10, ptr %t294, { i64, ptr } %t293)
  br label %bb46
bb46:
  %t296 = load i32, ptr %l11, !tbaa !23
  call void @__olang_scope_close(ptr %s10)
  store i32 %t296, ptr %rv
  br label %ret
bb47:
  %t298 = load ptr, ptr %l3, !tbaa !29
  store ptr %t298, ptr %l112, !tbaa !29
  %t299 = load i32, ptr %l11, !tbaa !23
  %t300 = load ptr, ptr %l112, !tbaa !29
  %t301 = call ptr @__olang_scope_or(ptr %v1, ptr %t300)
  %t302 = ptrtoint ptr %t301 to i64
  %t304 = inttoptr i64 %t302 to ptr
  %t305 = load ptr, ptr %l112, !tbaa !29
  %t307 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eLength(ptr %t304, ptr %t305, i32 %t299)
  store i32 %t307, ptr %l115
  br label %bb48
bb48:
  %t308 = load i32, ptr %l115, !tbaa !23
  store i32 %t308, ptr %l12, !tbaa !23
  %t309 = load i64, ptr %l10, !tbaa !24
  %t311 = icmp slt i64 %t309, 0
  br i1 %t311, label %bb49, label %bb50
bb49:
  store i1 true, ptr %l118, !tbaa !21
  br label %bb59
bb50:
  %t313 = load i32, ptr %l12, !tbaa !23
  %t315 = icmp ne i32 %t313, 0
  br i1 %t315, label %bb51, label %bb52
bb51:
  %t317 = load ptr, ptr %l3, !tbaa !29
  store ptr %t317, ptr %l122, !tbaa !29
  %t318 = load i32, ptr %l12, !tbaa !23
  %t319 = load ptr, ptr %l122, !tbaa !29
  %t320 = call ptr @__olang_scope_or(ptr %v1, ptr %t319)
  %t321 = ptrtoint ptr %t320 to i64
  %t323 = inttoptr i64 %t321 to ptr
  %t324 = load ptr, ptr %l122, !tbaa !29
  %t326 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %t323, ptr %t324, i32 %t318)
  store i32 %t326, ptr %l125
  br label %bb53
bb52:
  store i1 false, ptr %l121, !tbaa !21
  br label %bb54
bb53:
  %t327 = load i32, ptr %l125, !range !{i32 0, i32 33}
  %t329 = trunc i64 26 to i32
  %t330 = icmp eq i32 %t327, %t329
  store i1 %t330, ptr %l121, !tbaa !21
  br label %bb54
bb54:
  %t332 = load i1, ptr %l121, !tbaa !21
  br i1 %t332, label %bb55, label %bb56
bb55:
  %t333 = load i64, ptr %l10, !tbaa !24
  store i64 %t333, ptr %l129, !tbaa !24
  %t334 = load ptr, ptr %l3, !tbaa !29
  store ptr %t334, ptr %l130, !tbaa !29
  %t335 = load i32, ptr %l12, !tbaa !23
  %t336 = load ptr, ptr %l130, !tbaa !29
  %t337 = call ptr @__olang_scope_or(ptr %v1, ptr %t336)
  %t338 = ptrtoint ptr %t337 to i64
  %t340 = inttoptr i64 %t338 to ptr
  %t341 = load ptr, ptr %l130, !tbaa !29
  %t343 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eConstValue(ptr %t340, ptr %t341, i32 %t335)
  store i64 %t343, ptr %l133
  br label %bb57
bb56:
  store i1 false, ptr %l128, !tbaa !21
  br label %bb58
bb57:
  %t344 = load i64, ptr %l129, !tbaa !24
  %t345 = load i64, ptr %l133, !tbaa !24
  %t346 = icmp sge i64 %t344, %t345
  store i1 %t346, ptr %l128, !tbaa !21
  br label %bb58
bb58:
  %t348 = load i1, ptr %l128, !tbaa !21
  store i1 %t348, ptr %l118, !tbaa !21
  br label %bb59
bb59:
  %t349 = load i1, ptr %l118, !tbaa !21
  br i1 %t349, label %bb60, label %bb61
bb60:
  store %olang.scope zeroinitializer, ptr %s12
  %t350 = load ptr, ptr %l0, !tbaa !29
  store ptr %t350, ptr %l135, !tbaa !29
  %t351 = load i64, ptr %l10, !tbaa !24
  store i64 %t351, ptr %l136, !tbaa !24
  %t352 = load ptr, ptr %l0, !tbaa !29
  %t353 = load i32, ptr %l1, !tbaa !23
  %t356 = call { i64, ptr } @compiler_2fmir_2ecompiler_2fmir_3averifier_2ecanon(ptr %v0, ptr %s12, ptr %v1, ptr %t352, i32 %t353)
  store { i64, ptr } %t356, ptr %l139
  br label %bb62
bb61:
  br label %bb64
bb62:
  %t357 = extractvalue { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d147, i32 0, i32 1) }, 1
  %t358 = extractvalue { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d147, i32 0, i32 1) }, 0
  %t359 = load i64, ptr %l136, !tbaa !24
  %t360 = call i64 @__olang_fmt_i64(ptr null, i64 %t359)
  %t361 = add i64 %t358, %t360
  %t362 = extractvalue { i64, ptr } { i64 11, ptr getelementptr inbounds (<{ i64, [11 x i8] }>, ptr @.d148, i32 0, i32 1) }, 1
  %t363 = extractvalue { i64, ptr } { i64 11, ptr getelementptr inbounds (<{ i64, [11 x i8] }>, ptr @.d148, i32 0, i32 1) }, 0
  %t364 = add i64 %t361, %t363
  %t365 = load { i64, ptr }, ptr %l139, !tbaa !27
  %t366 = extractvalue { i64, ptr } %t365, 1
  %t367 = extractvalue { i64, ptr } %t365, 0
  %t368 = add i64 %t364, %t367
  %t369 = call ptr @__olang_scope_alloc(ptr %s12, i64 %t368)
  call void @olang_textcopy(ptr %t369, ptr %t357, i64 %t358)
  %t370 = getelementptr i8, ptr %t369, i64 %t358
  %t371 = call i64 @__olang_fmt_i64(ptr %t370, i64 %t359)
  %t372 = getelementptr i8, ptr %t370, i64 %t360
  call void @olang_textcopy(ptr %t372, ptr %t362, i64 %t363)
  %t373 = getelementptr i8, ptr %t372, i64 %t363
  call void @olang_textcopy(ptr %t373, ptr %t366, i64 %t367)
  %t374 = insertvalue { i64, ptr } undef, i64 %t368, 0
  %t375 = insertvalue { i64, ptr } %t374, ptr %t369, 1
  %t377 = extractvalue { i64, ptr } %t375, 0
  %t378 = extractvalue { i64, ptr } %t375, 1
  %t379 = mul i64 %t377, 1
  %t380 = call ptr @__olang_scope_alloc(ptr %s12, i64 %t379)
  call void @llvm.memcpy.p0.p0.i64(ptr %t380, ptr %t378, i64 %t379, i1 false)
  %t381 = insertvalue { i64, ptr } undef, i64 %t377, 0
  %t382 = insertvalue { i64, ptr } %t381, ptr %t380, 1
  %t383 = load ptr, ptr %l135, !tbaa !29
  call void @compiler_2fmir_2ecompiler_2fmir_3averifier_2ebad(ptr %v0, ptr %s12, ptr %t383, { i64, ptr } %t382)
  br label %bb63
bb63:
  call void @__olang_scope_close(ptr %s12)
  br label %bb64
bb64:
  %t385 = load ptr, ptr %l3, !tbaa !29
  store ptr %t385, ptr %l142, !tbaa !29
  %t386 = load i32, ptr %l11, !tbaa !23
  %t387 = load ptr, ptr %l142, !tbaa !29
  %t388 = call ptr @__olang_scope_or(ptr %v1, ptr %t387)
  %t389 = ptrtoint ptr %t388 to i64
  %t391 = inttoptr i64 %t389 to ptr
  %t392 = load ptr, ptr %l142, !tbaa !29
  %t394 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eElem(ptr %t391, ptr %t392, i32 %t386)
  store i32 %t394, ptr %l145
  br label %bb65
bb65:
  %t395 = load i32, ptr %l145, !tbaa !23
  store i32 %t395, ptr %rv
  br label %ret
bb66:
  %t396 = load { i64, [1 x i64] }, ptr %l2
  %t398 = extractvalue { i64, [1 x i64] } %t396, 0
  %t399 = icmp eq i64 %t398, 3
  br i1 %t399, label %bb67, label %bb68
bb67:
  br label %bb69
bb68:
  br label %bb77
bb69:
  %t401 = load ptr, ptr %l3, !tbaa !29
  store ptr %t401, ptr %l148, !tbaa !29
  %t402 = load i32, ptr %l1, !tbaa !23
  %t403 = load ptr, ptr %l148, !tbaa !29
  %t404 = call ptr @__olang_scope_or(ptr %v1, ptr %t403)
  %t405 = ptrtoint ptr %t404 to i64
  %t407 = inttoptr i64 %t405 to ptr
  %t408 = load ptr, ptr %l148, !tbaa !29
  %t410 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsRef(ptr %t407, ptr %t408, i32 %t402)
  store i1 %t410, ptr %l151
  br label %bb70
bb70:
  %t411 = load i1, ptr %l151, !tbaa !21
  %t412 = xor i1 %t411, true
  br i1 %t412, label %bb71, label %bb72
bb71:
  store %olang.scope zeroinitializer, ptr %s15
  %t414 = load ptr, ptr %l0, !tbaa !29
  store ptr %t414, ptr %l153, !tbaa !29
  %t415 = load ptr, ptr %l0, !tbaa !29
  %t416 = load i32, ptr %l1, !tbaa !23
  %t419 = call { i64, ptr } @compiler_2fmir_2ecompiler_2fmir_3averifier_2ecanon(ptr %v0, ptr %s15, ptr %v1, ptr %t415, i32 %t416)
  store { i64, ptr } %t419, ptr %l156
  br label %bb73
bb72:
  br label %bb75
bb73:
  %t420 = extractvalue { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d149, i32 0, i32 1) }, 1
  %t421 = extractvalue { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d149, i32 0, i32 1) }, 0
  %t422 = load { i64, ptr }, ptr %l156, !tbaa !27
  %t423 = extractvalue { i64, ptr } %t422, 1
  %t424 = extractvalue { i64, ptr } %t422, 0
  %t425 = add i64 %t421, %t424
  %t426 = extractvalue { i64, ptr } { i64 17, ptr getelementptr inbounds (<{ i64, [17 x i8] }>, ptr @.d150, i32 0, i32 1) }, 1
  %t427 = extractvalue { i64, ptr } { i64 17, ptr getelementptr inbounds (<{ i64, [17 x i8] }>, ptr @.d150, i32 0, i32 1) }, 0
  %t428 = add i64 %t425, %t427
  %t429 = call ptr @__olang_scope_alloc(ptr %s15, i64 %t428)
  call void @olang_textcopy(ptr %t429, ptr %t420, i64 %t421)
  %t430 = getelementptr i8, ptr %t429, i64 %t421
  call void @olang_textcopy(ptr %t430, ptr %t423, i64 %t424)
  %t431 = getelementptr i8, ptr %t430, i64 %t424
  call void @olang_textcopy(ptr %t431, ptr %t426, i64 %t427)
  %t432 = insertvalue { i64, ptr } undef, i64 %t428, 0
  %t433 = insertvalue { i64, ptr } %t432, ptr %t429, 1
  %t435 = extractvalue { i64, ptr } %t433, 0
  %t436 = extractvalue { i64, ptr } %t433, 1
  %t437 = mul i64 %t435, 1
  %t438 = call ptr @__olang_scope_alloc(ptr %s15, i64 %t437)
  call void @llvm.memcpy.p0.p0.i64(ptr %t438, ptr %t436, i64 %t437, i1 false)
  %t439 = insertvalue { i64, ptr } undef, i64 %t435, 0
  %t440 = insertvalue { i64, ptr } %t439, ptr %t438, 1
  %t441 = load ptr, ptr %l153, !tbaa !29
  call void @compiler_2fmir_2ecompiler_2fmir_3averifier_2ebad(ptr %v0, ptr %s15, ptr %t441, { i64, ptr } %t440)
  br label %bb74
bb74:
  %t443 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  call void @__olang_scope_close(ptr %s15)
  store i32 %t443, ptr %rv
  br label %ret
bb75:
  %t445 = load ptr, ptr %l3, !tbaa !29
  store ptr %t445, ptr %l160, !tbaa !29
  %t446 = load i32, ptr %l1, !tbaa !23
  %t447 = load ptr, ptr %l160, !tbaa !29
  %t448 = call ptr @__olang_scope_or(ptr %v1, ptr %t447)
  %t449 = ptrtoint ptr %t448 to i64
  %t451 = inttoptr i64 %t449 to ptr
  %t452 = load ptr, ptr %l160, !tbaa !29
  %t454 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eReferent(ptr %t451, ptr %t452, i32 %t446)
  store i32 %t454, ptr %l163
  br label %bb76
bb76:
  %t455 = load i32, ptr %l163, !tbaa !23
  store i32 %t455, ptr %rv
  br label %ret
bb77:
  %t456 = load { i64, [1 x i64] }, ptr %l2
  %t458 = extractvalue { i64, [1 x i64] } %t456, 0
  %t459 = icmp eq i64 %t458, 4
  br i1 %t459, label %bb78, label %bb79
bb78:
  %t461 = getelementptr { i64, [1 x i64] }, ptr %l2, i32 0, i32 1
  %t462 = getelementptr { i64 }, ptr %t461, i32 0, i32 0
  %t463 = load i64, ptr %t462
  store i64 %t463, ptr %l13, !tbaa !24
  br label %bb80
bb79:
  br label %bb100
bb80:
  store %olang.scope zeroinitializer, ptr %s17
  %t465 = load ptr, ptr %l0, !tbaa !29
  %t467 = getelementptr %"compiler/mir:verifier", ptr %t465, i32 0, i32 1
  %t468 = load ptr, ptr %t467, !tbaa !29
  store ptr %t468, ptr %l168, !tbaa !29
  %t469 = load i32, ptr %l1, !tbaa !23
  %t470 = load ptr, ptr %l168, !tbaa !29
  %t471 = call ptr @__olang_scope_or(ptr %v1, ptr %t470)
  %t472 = ptrtoint ptr %t471 to i64
  %t474 = inttoptr i64 %t472 to ptr
  %t475 = load ptr, ptr %l168, !tbaa !29
  %t477 = call i32 @compiler_2fmir_2eCasesOf(ptr %t474, ptr %t475, i32 %t469)
  store i32 %t477, ptr %l171
  br label %bb81
bb81:
  %t478 = load i32, ptr %l171, !tbaa !23
  store i32 %t478, ptr %l14, !tbaa !23
  %t479 = load ptr, ptr %l0, !tbaa !29
  %t481 = getelementptr %"compiler/mir:verifier", ptr %t479, i32 0, i32 1
  %t482 = load ptr, ptr %t481, !tbaa !29
  store ptr %t482, ptr %l173, !tbaa !29
  %t483 = load i32, ptr %l1, !tbaa !23
  %t484 = load ptr, ptr %l173, !tbaa !29
  %t485 = call ptr @__olang_scope_or(ptr %v1, ptr %t484)
  %t486 = ptrtoint ptr %t485 to i64
  %t488 = inttoptr i64 %t486 to ptr
  %t489 = load ptr, ptr %l173, !tbaa !29
  %t491 = call i1 @compiler_2fmir_2eHasCases(ptr %t488, ptr %t489, i32 %t483)
  store i1 %t491, ptr %l176
  br label %bb82
bb82:
  %t492 = load i1, ptr %l176, !tbaa !21
  store i1 %t492, ptr %l15, !tbaa !21
  %t493 = load ptr, ptr %l3, !tbaa !29
  store ptr %t493, ptr %l177, !tbaa !29
  %t494 = load i32, ptr %l14, !tbaa !23
  %t495 = load ptr, ptr %l177, !tbaa !29
  %t496 = call ptr @__olang_scope_or(ptr %v1, ptr %t495)
  %t497 = ptrtoint ptr %t496 to i64
  %t499 = inttoptr i64 %t497 to ptr
  %t500 = load ptr, ptr %l177, !tbaa !29
  %t502 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %t499, ptr %s17, ptr %t500, i32 %t494)
  store { i64, ptr } %t502, ptr %l180
  br label %bb83
bb83:
  %t503 = load { i64, ptr }, ptr %l180, !tbaa !27
  store { i64, ptr } %t503, ptr %l16, !tbaa !27
  %t504 = load i1, ptr %l15, !tbaa !21
  %t506 = xor i1 %t504, true
  br i1 %t506, label %bb84, label %bb85
bb84:
  store i1 true, ptr %l183, !tbaa !21
  br label %bb86
bb85:
  %t508 = load i64, ptr %l13, !tbaa !24
  %t510 = icmp slt i64 %t508, 0
  store i1 %t510, ptr %l183, !tbaa !21
  br label %bb86
bb86:
  %t512 = load i1, ptr %l183, !tbaa !21
  br i1 %t512, label %bb87, label %bb88
bb87:
  store i1 true, ptr %l186, !tbaa !21
  br label %bb89
bb88:
  %t513 = load i64, ptr %l13, !tbaa !24
  %t514 = load { i64, ptr }, ptr %l16, !tbaa !27
  %t516 = extractvalue { i64, ptr } %t514, 0
  %t519 = icmp sge i64 %t513, %t516
  store i1 %t519, ptr %l186, !tbaa !21
  br label %bb89
bb89:
  %t521 = load i1, ptr %l186, !tbaa !21
  br i1 %t521, label %bb90, label %bb91
bb90:
  store %olang.scope zeroinitializer, ptr %s18
  %t522 = load ptr, ptr %l0, !tbaa !29
  store ptr %t522, ptr %l191, !tbaa !29
  %t523 = load i64, ptr %l13, !tbaa !24
  store i64 %t523, ptr %l192, !tbaa !24
  %t524 = load ptr, ptr %l0, !tbaa !29
  %t525 = load i32, ptr %l1, !tbaa !23
  %t528 = call { i64, ptr } @compiler_2fmir_2ecompiler_2fmir_3averifier_2ecanon(ptr %v0, ptr %s18, ptr %v1, ptr %t524, i32 %t525)
  store { i64, ptr } %t528, ptr %l195
  br label %bb92
bb91:
  br label %bb94
bb92:
  %t529 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d151, i32 0, i32 1) }, 1
  %t530 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d151, i32 0, i32 1) }, 0
  %t531 = load i64, ptr %l192, !tbaa !24
  %t532 = call i64 @__olang_fmt_i64(ptr null, i64 %t531)
  %t533 = add i64 %t530, %t532
  %t534 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d152, i32 0, i32 1) }, 1
  %t535 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d152, i32 0, i32 1) }, 0
  %t536 = add i64 %t533, %t535
  %t537 = load { i64, ptr }, ptr %l195, !tbaa !27
  %t538 = extractvalue { i64, ptr } %t537, 1
  %t539 = extractvalue { i64, ptr } %t537, 0
  %t540 = add i64 %t536, %t539
  %t541 = call ptr @__olang_scope_alloc(ptr %s18, i64 %t540)
  call void @olang_textcopy(ptr %t541, ptr %t529, i64 %t530)
  %t542 = getelementptr i8, ptr %t541, i64 %t530
  %t543 = call i64 @__olang_fmt_i64(ptr %t542, i64 %t531)
  %t544 = getelementptr i8, ptr %t542, i64 %t532
  call void @olang_textcopy(ptr %t544, ptr %t534, i64 %t535)
  %t545 = getelementptr i8, ptr %t544, i64 %t535
  call void @olang_textcopy(ptr %t545, ptr %t538, i64 %t539)
  %t546 = insertvalue { i64, ptr } undef, i64 %t540, 0
  %t547 = insertvalue { i64, ptr } %t546, ptr %t541, 1
  %t549 = extractvalue { i64, ptr } %t547, 0
  %t550 = extractvalue { i64, ptr } %t547, 1
  %t551 = mul i64 %t549, 1
  %t552 = call ptr @__olang_scope_alloc(ptr %s18, i64 %t551)
  call void @llvm.memcpy.p0.p0.i64(ptr %t552, ptr %t550, i64 %t551, i1 false)
  %t553 = insertvalue { i64, ptr } undef, i64 %t549, 0
  %t554 = insertvalue { i64, ptr } %t553, ptr %t552, 1
  %t555 = load ptr, ptr %l191, !tbaa !29
  call void @compiler_2fmir_2ecompiler_2fmir_3averifier_2ebad(ptr %v0, ptr %s18, ptr %t555, { i64, ptr } %t554)
  br label %bb93
bb93:
  %t557 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  call void @__olang_scope_close(ptr %s18)
  call void @__olang_scope_close(ptr %s17)
  store i32 %t557, ptr %rv
  br label %ret
bb94:
  %t559 = load { i64, ptr }, ptr %l16, !tbaa !27
  store { i64, ptr } %t559, ptr %l199, !tbaa !27
  %t560 = load i64, ptr %l13, !tbaa !24
  %t562 = getelementptr { i64, ptr }, ptr %l199, i32 0, i32 1
  %t563 = load ptr, ptr %t562, !tbaa !27
  %t564 = getelementptr i32, ptr %t563, i64 %t560
  %t565 = load i32, ptr %t564, !tbaa !33
  %t567 = icmp eq i32 %t565, 0
  br i1 %t567, label %bb95, label %bb96
bb95:
  store %olang.scope zeroinitializer, ptr %s20
  %t569 = load ptr, ptr %l0, !tbaa !29
  store ptr %t569, ptr %l203, !tbaa !29
  %t570 = load i64, ptr %l13, !tbaa !24
  store i64 %t570, ptr %l204, !tbaa !24
  %t571 = load ptr, ptr %l0, !tbaa !29
  %t572 = load i32, ptr %l1, !tbaa !23
  %t575 = call { i64, ptr } @compiler_2fmir_2ecompiler_2fmir_3averifier_2ecanon(ptr %v0, ptr %s20, ptr %v1, ptr %t571, i32 %t572)
  store { i64, ptr } %t575, ptr %l207
  br label %bb97
bb96:
  br label %bb99
bb97:
  %t576 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d153, i32 0, i32 1) }, 1
  %t577 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d153, i32 0, i32 1) }, 0
  %t578 = load i64, ptr %l204, !tbaa !24
  %t579 = call i64 @__olang_fmt_i64(ptr null, i64 %t578)
  %t580 = add i64 %t577, %t579
  %t581 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d154, i32 0, i32 1) }, 1
  %t582 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d154, i32 0, i32 1) }, 0
  %t583 = add i64 %t580, %t582
  %t584 = load { i64, ptr }, ptr %l207, !tbaa !27
  %t585 = extractvalue { i64, ptr } %t584, 1
  %t586 = extractvalue { i64, ptr } %t584, 0
  %t587 = add i64 %t583, %t586
  %t588 = extractvalue { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d155, i32 0, i32 1) }, 1
  %t589 = extractvalue { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d155, i32 0, i32 1) }, 0
  %t590 = add i64 %t587, %t589
  %t591 = call ptr @__olang_scope_alloc(ptr %s20, i64 %t590)
  call void @olang_textcopy(ptr %t591, ptr %t576, i64 %t577)
  %t592 = getelementptr i8, ptr %t591, i64 %t577
  %t593 = call i64 @__olang_fmt_i64(ptr %t592, i64 %t578)
  %t594 = getelementptr i8, ptr %t592, i64 %t579
  call void @olang_textcopy(ptr %t594, ptr %t581, i64 %t582)
  %t595 = getelementptr i8, ptr %t594, i64 %t582
  call void @olang_textcopy(ptr %t595, ptr %t585, i64 %t586)
  %t596 = getelementptr i8, ptr %t595, i64 %t586
  call void @olang_textcopy(ptr %t596, ptr %t588, i64 %t589)
  %t597 = insertvalue { i64, ptr } undef, i64 %t590, 0
  %t598 = insertvalue { i64, ptr } %t597, ptr %t591, 1
  %t600 = extractvalue { i64, ptr } %t598, 0
  %t601 = extractvalue { i64, ptr } %t598, 1
  %t602 = mul i64 %t600, 1
  %t603 = call ptr @__olang_scope_alloc(ptr %s20, i64 %t602)
  call void @llvm.memcpy.p0.p0.i64(ptr %t603, ptr %t601, i64 %t602, i1 false)
  %t604 = insertvalue { i64, ptr } undef, i64 %t600, 0
  %t605 = insertvalue { i64, ptr } %t604, ptr %t603, 1
  %t606 = load ptr, ptr %l203, !tbaa !29
  call void @compiler_2fmir_2ecompiler_2fmir_3averifier_2ebad(ptr %v0, ptr %s20, ptr %t606, { i64, ptr } %t605)
  br label %bb98
bb98:
  %t608 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  call void @__olang_scope_close(ptr %s20)
  call void @__olang_scope_close(ptr %s17)
  store i32 %t608, ptr %rv
  br label %ret
bb99:
  %t610 = load { i64, ptr }, ptr %l16, !tbaa !27
  store { i64, ptr } %t610, ptr %l211, !tbaa !27
  %t611 = load i64, ptr %l13, !tbaa !24
  %t613 = getelementptr { i64, ptr }, ptr %l211, i32 0, i32 1
  %t614 = load ptr, ptr %t613, !tbaa !27
  %t615 = getelementptr i32, ptr %t614, i64 %t611
  %t616 = load i32, ptr %t615, !tbaa !33
  call void @__olang_scope_close(ptr %s17)
  store i32 %t616, ptr %rv
  br label %ret
bb100:
  call void @__olang_check_failed(ptr @olang_loc_5e1988e97d308376_f66bcffef950dfda)
  unreachable
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local void @compiler_2fmir_2ecompiler_2fmir_3averifier_2ervalueShape(ptr %v0, ptr %v1, ptr %a0, { i64, [15 x i64] } %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca { i64, [15 x i64] }
  %l2 = alloca { i64, [4 x i64] }
  %l3 = alloca %"compiler/mir:Lvalue"
  %l4 = alloca %"compiler/mir:Range"
  %l5 = alloca { i64, [1 x i64] }
  %l6 = alloca { i64, [4 x i64] }
  %l7 = alloca { i64, [1 x i64] }
  %l8 = alloca { i64, [4 x i64] }
  %l9 = alloca { i64, [4 x i64] }
  %l10 = alloca %"compiler/mir:Lvalue"
  %l11 = alloca { i64, [4 x i64] }
  %l12 = alloca { i64, [4 x i64] }
  %l13 = alloca { i64, [1 x i64] }
  %l14 = alloca %"compiler/mir:Range"
  %l15 = alloca %"compiler/mir:Range"
  %l16 = alloca { i64, [4 x i64] }
  %l17 = alloca { i64, [1 x i64] }
  %l18 = alloca { i64, [1 x i64] }
  %l19 = alloca { i64, [1 x i64] }
  %l20 = alloca { i64, [4 x i64] }
  %l21 = alloca { i64, [1 x i64] }
  %l22 = alloca { i64, [4 x i64] }
  %l23 = alloca { i64, [1 x i64] }
  %l24 = alloca { i64, [4 x i64] }
  %l25 = alloca { i64, [1 x i64] }
  store ptr %a0, ptr %l0
  store { i64, [15 x i64] } %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load { i64, [15 x i64] }, ptr %l1
  %t3 = extractvalue { i64, [15 x i64] } %t1, 0
  %t4 = icmp eq i64 %t3, 0
  br i1 %t4, label %bb1, label %bb2
bb1:
  %t6 = getelementptr { i64, [15 x i64] }, ptr %l1, i32 0, i32 1
  %t7 = getelementptr { { i64, [4 x i64] } }, ptr %t6, i32 0, i32 0
  %t8 = load { i64, [4 x i64] }, ptr %t7
  store { i64, [4 x i64] } %t8, ptr %l2
  br label %bb3
bb2:
  br label %bb5
bb3:
  %t10 = load ptr, ptr %l0, !tbaa !29
  %t11 = load { i64, [4 x i64] }, ptr %l2
  call void @compiler_2fmir_2ecompiler_2fmir_3averifier_2eoperand(ptr %v0, ptr %v1, ptr %t10, { i64, [4 x i64] } %t11)
  br label %bb4
bb4:
  br label %bb104
bb5:
  %t14 = load { i64, [15 x i64] }, ptr %l1
  %t16 = extractvalue { i64, [15 x i64] } %t14, 0
  %t17 = icmp eq i64 %t16, 1
  br i1 %t17, label %bb6, label %bb7
bb6:
  %t19 = getelementptr { i64, [15 x i64] }, ptr %l1, i32 0, i32 1
  %t20 = getelementptr { %"compiler/mir:Lvalue", i32 }, ptr %t19, i32 0, i32 0
  %t21 = load %"compiler/mir:Lvalue", ptr %t20
  store %"compiler/mir:Lvalue" %t21, ptr %l3
  br label %bb14
bb7:
  %t23 = load { i64, [15 x i64] }, ptr %l1
  %t25 = extractvalue { i64, [15 x i64] } %t23, 0
  %t26 = icmp eq i64 %t25, 2
  br i1 %t26, label %bb8, label %bb9
bb8:
  %t28 = getelementptr { i64, [15 x i64] }, ptr %l1, i32 0, i32 1
  %t29 = getelementptr { %"compiler/mir:Lvalue" }, ptr %t28, i32 0, i32 0
  %t30 = load %"compiler/mir:Lvalue", ptr %t29
  store %"compiler/mir:Lvalue" %t30, ptr %l3
  br label %bb14
bb9:
  %t32 = load { i64, [15 x i64] }, ptr %l1
  %t34 = extractvalue { i64, [15 x i64] } %t32, 0
  %t35 = icmp eq i64 %t34, 5
  br i1 %t35, label %bb10, label %bb11
bb10:
  %t37 = getelementptr { i64, [15 x i64] }, ptr %l1, i32 0, i32 1
  %t38 = getelementptr { %"compiler/mir:Lvalue" }, ptr %t37, i32 0, i32 0
  %t39 = load %"compiler/mir:Lvalue", ptr %t38
  store %"compiler/mir:Lvalue" %t39, ptr %l3
  br label %bb14
bb11:
  %t41 = load { i64, [15 x i64] }, ptr %l1
  %t43 = extractvalue { i64, [15 x i64] } %t41, 0
  %t44 = icmp eq i64 %t43, 21
  br i1 %t44, label %bb12, label %bb13
bb12:
  %t46 = getelementptr { i64, [15 x i64] }, ptr %l1, i32 0, i32 1
  %t47 = getelementptr { %"compiler/mir:Lvalue", i32 }, ptr %t46, i32 0, i32 0
  %t48 = load %"compiler/mir:Lvalue", ptr %t47
  store %"compiler/mir:Lvalue" %t48, ptr %l3
  br label %bb14
bb13:
  br label %bb16
bb14:
  %t50 = load ptr, ptr %l0, !tbaa !29
  %t51 = load %"compiler/mir:Lvalue", ptr %l3
  call void @compiler_2fmir_2ecompiler_2fmir_3averifier_2eplace(ptr %v0, ptr %v1, ptr %t50, %"compiler/mir:Lvalue" %t51)
  br label %bb15
bb15:
  br label %bb104
bb16:
  %t54 = load { i64, [15 x i64] }, ptr %l1
  %t56 = extractvalue { i64, [15 x i64] } %t54, 0
  %t57 = icmp eq i64 %t56, 3
  br i1 %t57, label %bb17, label %bb18
bb17:
  %t59 = getelementptr { i64, [15 x i64] }, ptr %l1, i32 0, i32 1
  %t60 = getelementptr { i32, i32, %"compiler/mir:Range" }, ptr %t59, i32 0, i32 2
  %t61 = load %"compiler/mir:Range", ptr %t60
  store %"compiler/mir:Range" %t61, ptr %l4
  br label %bb23
bb18:
  %t63 = load { i64, [15 x i64] }, ptr %l1
  %t65 = extractvalue { i64, [15 x i64] } %t63, 0
  %t66 = icmp eq i64 %t65, 4
  br i1 %t66, label %bb19, label %bb20
bb19:
  %t68 = getelementptr { i64, [15 x i64] }, ptr %l1, i32 0, i32 1
  %t69 = getelementptr { i32, i32, %"compiler/mir:Range" }, ptr %t68, i32 0, i32 2
  %t70 = load %"compiler/mir:Range", ptr %t69
  store %"compiler/mir:Range" %t70, ptr %l4
  br label %bb23
bb20:
  %t72 = load { i64, [15 x i64] }, ptr %l1
  %t74 = extractvalue { i64, [15 x i64] } %t72, 0
  %t75 = icmp eq i64 %t74, 6
  br i1 %t75, label %bb21, label %bb22
bb21:
  %t77 = getelementptr { i64, [15 x i64] }, ptr %l1, i32 0, i32 1
  %t78 = getelementptr { i32, i64, %"compiler/mir:Range" }, ptr %t77, i32 0, i32 2
  %t79 = load %"compiler/mir:Range", ptr %t78
  store %"compiler/mir:Range" %t79, ptr %l4
  br label %bb23
bb22:
  br label %bb25
bb23:
  %t81 = load ptr, ptr %l0, !tbaa !29
  %t82 = load %"compiler/mir:Range", ptr %l4
  call void @compiler_2fmir_2ecompiler_2fmir_3averifier_2eops(ptr %v0, ptr %v1, ptr %t81, %"compiler/mir:Range" %t82)
  br label %bb24
bb24:
  br label %bb104
bb25:
  %t85 = load { i64, [15 x i64] }, ptr %l1
  %t87 = extractvalue { i64, [15 x i64] } %t85, 0
  %t88 = icmp eq i64 %t87, 7
  br i1 %t88, label %bb26, label %bb27
bb26:
  %t90 = getelementptr { i64, [15 x i64] }, ptr %l1, i32 0, i32 1
  %t91 = getelementptr { { i64, [1 x i64] }, { i64, [4 x i64] }, i32 }, ptr %t90, i32 0, i32 0
  %t92 = load { i64, [1 x i64] }, ptr %t91
  store { i64, [1 x i64] } %t92, ptr %l5
  %t94 = getelementptr { i64, [15 x i64] }, ptr %l1, i32 0, i32 1
  %t95 = getelementptr { { i64, [1 x i64] }, { i64, [4 x i64] }, i32 }, ptr %t94, i32 0, i32 1
  %t96 = load { i64, [4 x i64] }, ptr %t95
  store { i64, [4 x i64] } %t96, ptr %l6
  br label %bb28
bb27:
  br label %bb31
bb28:
  %t98 = load ptr, ptr %l0, !tbaa !29
  %t99 = load { i64, [1 x i64] }, ptr %l5
  call void @compiler_2fmir_2ecompiler_2fmir_3averifier_2eref(ptr %v0, ptr %v1, ptr %t98, { i64, [1 x i64] } %t99)
  br label %bb29
bb29:
  %t102 = load ptr, ptr %l0, !tbaa !29
  %t103 = load { i64, [4 x i64] }, ptr %l6
  call void @compiler_2fmir_2ecompiler_2fmir_3averifier_2eoperand(ptr %v0, ptr %v1, ptr %t102, { i64, [4 x i64] } %t103)
  br label %bb30
bb30:
  br label %bb104
bb31:
  %t106 = load { i64, [15 x i64] }, ptr %l1
  %t108 = extractvalue { i64, [15 x i64] } %t106, 0
  %t109 = icmp eq i64 %t108, 8
  br i1 %t109, label %bb32, label %bb33
bb32:
  %t111 = getelementptr { i64, [15 x i64] }, ptr %l1, i32 0, i32 1
  %t112 = getelementptr { { i64, [1 x i64] }, i32, { i64, [4 x i64] }, { i64, [4 x i64] } }, ptr %t111, i32 0, i32 0
  %t113 = load { i64, [1 x i64] }, ptr %t112
  store { i64, [1 x i64] } %t113, ptr %l7
  %t115 = getelementptr { i64, [15 x i64] }, ptr %l1, i32 0, i32 1
  %t116 = getelementptr { { i64, [1 x i64] }, i32, { i64, [4 x i64] }, { i64, [4 x i64] } }, ptr %t115, i32 0, i32 2
  %t117 = load { i64, [4 x i64] }, ptr %t116
  store { i64, [4 x i64] } %t117, ptr %l8
  %t119 = getelementptr { i64, [15 x i64] }, ptr %l1, i32 0, i32 1
  %t120 = getelementptr { { i64, [1 x i64] }, i32, { i64, [4 x i64] }, { i64, [4 x i64] } }, ptr %t119, i32 0, i32 3
  %t121 = load { i64, [4 x i64] }, ptr %t120
  store { i64, [4 x i64] } %t121, ptr %l9
  br label %bb34
bb33:
  br label %bb38
bb34:
  %t123 = load ptr, ptr %l0, !tbaa !29
  %t124 = load { i64, [1 x i64] }, ptr %l7
  call void @compiler_2fmir_2ecompiler_2fmir_3averifier_2eref(ptr %v0, ptr %v1, ptr %t123, { i64, [1 x i64] } %t124)
  br label %bb35
bb35:
  %t127 = load ptr, ptr %l0, !tbaa !29
  %t128 = load { i64, [4 x i64] }, ptr %l8
  call void @compiler_2fmir_2ecompiler_2fmir_3averifier_2eoperand(ptr %v0, ptr %v1, ptr %t127, { i64, [4 x i64] } %t128)
  br label %bb36
bb36:
  %t131 = load ptr, ptr %l0, !tbaa !29
  %t132 = load { i64, [4 x i64] }, ptr %l9
  call void @compiler_2fmir_2ecompiler_2fmir_3averifier_2eoperand(ptr %v0, ptr %v1, ptr %t131, { i64, [4 x i64] } %t132)
  br label %bb37
bb37:
  br label %bb104
bb38:
  %t135 = load { i64, [15 x i64] }, ptr %l1
  %t137 = extractvalue { i64, [15 x i64] } %t135, 0
  %t138 = icmp eq i64 %t137, 9
  br i1 %t138, label %bb39, label %bb40
bb39:
  %t140 = getelementptr { i64, [15 x i64] }, ptr %l1, i32 0, i32 1
  %t141 = getelementptr { %"compiler/mir:Lvalue", { i64, [4 x i64] }, { i64, [4 x i64] }, i32 }, ptr %t140, i32 0, i32 0
  %t142 = load %"compiler/mir:Lvalue", ptr %t141
  store %"compiler/mir:Lvalue" %t142, ptr %l10
  %t144 = getelementptr { i64, [15 x i64] }, ptr %l1, i32 0, i32 1
  %t145 = getelementptr { %"compiler/mir:Lvalue", { i64, [4 x i64] }, { i64, [4 x i64] }, i32 }, ptr %t144, i32 0, i32 1
  %t146 = load { i64, [4 x i64] }, ptr %t145
  store { i64, [4 x i64] } %t146, ptr %l11
  %t148 = getelementptr { i64, [15 x i64] }, ptr %l1, i32 0, i32 1
  %t149 = getelementptr { %"compiler/mir:Lvalue", { i64, [4 x i64] }, { i64, [4 x i64] }, i32 }, ptr %t148, i32 0, i32 2
  %t150 = load { i64, [4 x i64] }, ptr %t149
  store { i64, [4 x i64] } %t150, ptr %l12
  br label %bb41
bb40:
  br label %bb45
bb41:
  %t152 = load ptr, ptr %l0, !tbaa !29
  %t153 = load %"compiler/mir:Lvalue", ptr %l10
  call void @compiler_2fmir_2ecompiler_2fmir_3averifier_2eplace(ptr %v0, ptr %v1, ptr %t152, %"compiler/mir:Lvalue" %t153)
  br label %bb42
bb42:
  %t156 = load ptr, ptr %l0, !tbaa !29
  %t157 = load { i64, [4 x i64] }, ptr %l11
  call void @compiler_2fmir_2ecompiler_2fmir_3averifier_2eoperand(ptr %v0, ptr %v1, ptr %t156, { i64, [4 x i64] } %t157)
  br label %bb43
bb43:
  %t160 = load ptr, ptr %l0, !tbaa !29
  %t161 = load { i64, [4 x i64] }, ptr %l12
  call void @compiler_2fmir_2ecompiler_2fmir_3averifier_2eoperand(ptr %v0, ptr %v1, ptr %t160, { i64, [4 x i64] } %t161)
  br label %bb44
bb44:
  br label %bb104
bb45:
  %t164 = load { i64, [15 x i64] }, ptr %l1
  %t166 = extractvalue { i64, [15 x i64] } %t164, 0
  %t167 = icmp eq i64 %t166, 10
  br i1 %t167, label %bb46, label %bb47
bb46:
  %t169 = getelementptr { i64, [15 x i64] }, ptr %l1, i32 0, i32 1
  %t170 = getelementptr { { i64, [2 x i64] }, i32, { i64, [1 x i64] }, %"compiler/mir:Range", %"compiler/mir:Range" }, ptr %t169, i32 0, i32 2
  %t171 = load { i64, [1 x i64] }, ptr %t170
  store { i64, [1 x i64] } %t171, ptr %l13
  %t173 = getelementptr { i64, [15 x i64] }, ptr %l1, i32 0, i32 1
  %t174 = getelementptr { { i64, [2 x i64] }, i32, { i64, [1 x i64] }, %"compiler/mir:Range", %"compiler/mir:Range" }, ptr %t173, i32 0, i32 3
  %t175 = load %"compiler/mir:Range", ptr %t174
  store %"compiler/mir:Range" %t175, ptr %l14
  %t177 = getelementptr { i64, [15 x i64] }, ptr %l1, i32 0, i32 1
  %t178 = getelementptr { { i64, [2 x i64] }, i32, { i64, [1 x i64] }, %"compiler/mir:Range", %"compiler/mir:Range" }, ptr %t177, i32 0, i32 4
  %t179 = load %"compiler/mir:Range", ptr %t178
  store %"compiler/mir:Range" %t179, ptr %l15
  br label %bb48
bb47:
  br label %bb52
bb48:
  %t181 = load ptr, ptr %l0, !tbaa !29
  %t182 = load { i64, [1 x i64] }, ptr %l13
  call void @compiler_2fmir_2ecompiler_2fmir_3averifier_2eref(ptr %v0, ptr %v1, ptr %t181, { i64, [1 x i64] } %t182)
  br label %bb49
bb49:
  %t185 = load ptr, ptr %l0, !tbaa !29
  %t186 = load %"compiler/mir:Range", ptr %l14
  call void @compiler_2fmir_2ecompiler_2fmir_3averifier_2eops(ptr %v0, ptr %v1, ptr %t185, %"compiler/mir:Range" %t186)
  br label %bb50
bb50:
  %t189 = load ptr, ptr %l0, !tbaa !29
  %t190 = load %"compiler/mir:Range", ptr %l15
  call void @compiler_2fmir_2ecompiler_2fmir_3averifier_2erefs(ptr %v0, ptr %v1, ptr %t189, %"compiler/mir:Range" %t190)
  br label %bb51
bb51:
  br label %bb104
bb52:
  %t193 = load { i64, [15 x i64] }, ptr %l1
  %t195 = extractvalue { i64, [15 x i64] } %t193, 0
  %t196 = icmp eq i64 %t195, 11
  br i1 %t196, label %bb53, label %bb54
bb53:
  %t198 = getelementptr { i64, [15 x i64] }, ptr %l1, i32 0, i32 1
  %t199 = getelementptr { { i64, [4 x i64] }, i32, i32 }, ptr %t198, i32 0, i32 0
  %t200 = load { i64, [4 x i64] }, ptr %t199
  store { i64, [4 x i64] } %t200, ptr %l16
  br label %bb57
bb54:
  %t202 = load { i64, [15 x i64] }, ptr %l1
  %t204 = extractvalue { i64, [15 x i64] } %t202, 0
  %t205 = icmp eq i64 %t204, 22
  br i1 %t205, label %bb55, label %bb56
bb55:
  %t207 = getelementptr { i64, [15 x i64] }, ptr %l1, i32 0, i32 1
  %t208 = getelementptr { { i64, [4 x i64] } }, ptr %t207, i32 0, i32 0
  %t209 = load { i64, [4 x i64] }, ptr %t208
  store { i64, [4 x i64] } %t209, ptr %l16
  br label %bb57
bb56:
  br label %bb59
bb57:
  %t211 = load ptr, ptr %l0, !tbaa !29
  %t212 = load { i64, [4 x i64] }, ptr %l16
  call void @compiler_2fmir_2ecompiler_2fmir_3averifier_2eoperand(ptr %v0, ptr %v1, ptr %t211, { i64, [4 x i64] } %t212)
  br label %bb58
bb58:
  br label %bb104
bb59:
  %t215 = load { i64, [15 x i64] }, ptr %l1
  %t217 = extractvalue { i64, [15 x i64] } %t215, 0
  %t218 = icmp eq i64 %t217, 12
  br i1 %t218, label %bb60, label %bb61
bb60:
  %t220 = getelementptr { i64, [15 x i64] }, ptr %l1, i32 0, i32 1
  %t221 = getelementptr { { i64, [1 x i64] }, { i64, [1 x i64] }, i32 }, ptr %t220, i32 0, i32 0
  %t222 = load { i64, [1 x i64] }, ptr %t221
  store { i64, [1 x i64] } %t222, ptr %l17
  %t224 = getelementptr { i64, [15 x i64] }, ptr %l1, i32 0, i32 1
  %t225 = getelementptr { { i64, [1 x i64] }, { i64, [1 x i64] }, i32 }, ptr %t224, i32 0, i32 1
  %t226 = load { i64, [1 x i64] }, ptr %t225
  store { i64, [1 x i64] } %t226, ptr %l18
  br label %bb62
bb61:
  br label %bb65
bb62:
  %t228 = load ptr, ptr %l0, !tbaa !29
  %t229 = load { i64, [1 x i64] }, ptr %l17
  call void @compiler_2fmir_2ecompiler_2fmir_3averifier_2eref(ptr %v0, ptr %v1, ptr %t228, { i64, [1 x i64] } %t229)
  br label %bb63
bb63:
  %t232 = load ptr, ptr %l0, !tbaa !29
  %t233 = load { i64, [1 x i64] }, ptr %l18
  call void @compiler_2fmir_2ecompiler_2fmir_3averifier_2eref(ptr %v0, ptr %v1, ptr %t232, { i64, [1 x i64] } %t233)
  br label %bb64
bb64:
  br label %bb104
bb65:
  %t236 = load { i64, [15 x i64] }, ptr %l1
  %t238 = extractvalue { i64, [15 x i64] } %t236, 0
  %t239 = icmp eq i64 %t238, 13
  br i1 %t239, label %bb66, label %bb67
bb66:
  %t241 = getelementptr { i64, [15 x i64] }, ptr %l1, i32 0, i32 1
  %t242 = getelementptr { { i64, [1 x i64] } }, ptr %t241, i32 0, i32 0
  %t243 = load { i64, [1 x i64] }, ptr %t242
  store { i64, [1 x i64] } %t243, ptr %l19
  br label %bb68
bb67:
  br label %bb70
bb68:
  %t245 = load ptr, ptr %l0, !tbaa !29
  %t246 = load { i64, [1 x i64] }, ptr %l19
  call void @compiler_2fmir_2ecompiler_2fmir_3averifier_2eref(ptr %v0, ptr %v1, ptr %t245, { i64, [1 x i64] } %t246)
  br label %bb69
bb69:
  br label %bb104
bb70:
  %t249 = load { i64, [15 x i64] }, ptr %l1
  %t251 = extractvalue { i64, [15 x i64] } %t249, 0
  %t252 = icmp eq i64 %t251, 14
  br i1 %t252, label %bb71, label %bb72
bb71:
  %t254 = getelementptr { i64, [15 x i64] }, ptr %l1, i32 0, i32 1
  %t255 = getelementptr { { i64, [4 x i64] }, { i64, [1 x i64] } }, ptr %t254, i32 0, i32 0
  %t256 = load { i64, [4 x i64] }, ptr %t255
  store { i64, [4 x i64] } %t256, ptr %l20
  %t258 = getelementptr { i64, [15 x i64] }, ptr %l1, i32 0, i32 1
  %t259 = getelementptr { { i64, [4 x i64] }, { i64, [1 x i64] } }, ptr %t258, i32 0, i32 1
  %t260 = load { i64, [1 x i64] }, ptr %t259
  store { i64, [1 x i64] } %t260, ptr %l21
  br label %bb73
bb72:
  br label %bb76
bb73:
  %t262 = load ptr, ptr %l0, !tbaa !29
  %t263 = load { i64, [4 x i64] }, ptr %l20
  call void @compiler_2fmir_2ecompiler_2fmir_3averifier_2eoperand(ptr %v0, ptr %v1, ptr %t262, { i64, [4 x i64] } %t263)
  br label %bb74
bb74:
  %t266 = load ptr, ptr %l0, !tbaa !29
  %t267 = load { i64, [1 x i64] }, ptr %l21
  call void @compiler_2fmir_2ecompiler_2fmir_3averifier_2eref(ptr %v0, ptr %v1, ptr %t266, { i64, [1 x i64] } %t267)
  br label %bb75
bb75:
  br label %bb104
bb76:
  %t270 = load { i64, [15 x i64] }, ptr %l1
  %t272 = extractvalue { i64, [15 x i64] } %t270, 0
  %t273 = icmp eq i64 %t272, 15
  br i1 %t273, label %bb77, label %bb78
bb77:
  %t275 = getelementptr { i64, [15 x i64] }, ptr %l1, i32 0, i32 1
  %t276 = getelementptr { { i64, [4 x i64] } }, ptr %t275, i32 0, i32 0
  %t277 = load { i64, [4 x i64] }, ptr %t276
  store { i64, [4 x i64] } %t277, ptr %l22
  br label %bb79
bb78:
  br label %bb81
bb79:
  %t279 = load ptr, ptr %l0, !tbaa !29
  %t280 = load { i64, [4 x i64] }, ptr %l22
  call void @compiler_2fmir_2ecompiler_2fmir_3averifier_2eoperand(ptr %v0, ptr %v1, ptr %t279, { i64, [4 x i64] } %t280)
  br label %bb80
bb80:
  br label %bb104
bb81:
  %t283 = load { i64, [15 x i64] }, ptr %l1
  %t285 = extractvalue { i64, [15 x i64] } %t283, 0
  %t286 = icmp eq i64 %t285, 16
  br i1 %t286, label %bb82, label %bb83
bb82:
  %t288 = getelementptr { i64, [15 x i64] }, ptr %l1, i32 0, i32 1
  %t289 = getelementptr { { i64, [1 x i64] }, { i64, [4 x i64] } }, ptr %t288, i32 0, i32 0
  %t290 = load { i64, [1 x i64] }, ptr %t289
  store { i64, [1 x i64] } %t290, ptr %l23
  %t292 = getelementptr { i64, [15 x i64] }, ptr %l1, i32 0, i32 1
  %t293 = getelementptr { { i64, [1 x i64] }, { i64, [4 x i64] } }, ptr %t292, i32 0, i32 1
  %t294 = load { i64, [4 x i64] }, ptr %t293
  store { i64, [4 x i64] } %t294, ptr %l24
  br label %bb84
bb83:
  br label %bb90
bb84:
  %t296 = load ptr, ptr %l0, !tbaa !29
  %t297 = load { i64, [1 x i64] }, ptr %l23
  call void @compiler_2fmir_2ecompiler_2fmir_3averifier_2eref(ptr %v0, ptr %v1, ptr %t296, { i64, [1 x i64] } %t297)
  br label %bb85
bb85:
  %t300 = load { i64, [4 x i64] }, ptr %l24
  %t302 = extractvalue { i64, [4 x i64] } %t300, 0
  %t303 = icmp eq i64 %t302, 0
  %t305 = xor i1 %t303, true
  br i1 %t305, label %bb86, label %bb87
bb86:
  %t307 = load ptr, ptr %l0, !tbaa !29
  %t308 = load { i64, [4 x i64] }, ptr %l24
  call void @compiler_2fmir_2ecompiler_2fmir_3averifier_2eoperand(ptr %v0, ptr %v1, ptr %t307, { i64, [4 x i64] } %t308)
  br label %bb88
bb87:
  br label %bb89
bb88:
  br label %bb89
bb89:
  br label %bb104
bb90:
  %t311 = load { i64, [15 x i64] }, ptr %l1
  %t313 = extractvalue { i64, [15 x i64] } %t311, 0
  %t314 = icmp eq i64 %t313, 19
  br i1 %t314, label %bb91, label %bb92
bb91:
  br label %bb97
bb92:
  %t316 = load { i64, [15 x i64] }, ptr %l1
  %t318 = extractvalue { i64, [15 x i64] } %t316, 0
  %t319 = icmp eq i64 %t318, 20
  br i1 %t319, label %bb93, label %bb94
bb93:
  br label %bb97
bb94:
  %t321 = load { i64, [15 x i64] }, ptr %l1
  %t323 = extractvalue { i64, [15 x i64] } %t321, 0
  %t324 = icmp eq i64 %t323, 17
  br i1 %t324, label %bb95, label %bb96
bb95:
  br label %bb97
bb96:
  br label %bb98
bb97:
  br label %bb104
bb98:
  %t326 = load { i64, [15 x i64] }, ptr %l1
  %t328 = extractvalue { i64, [15 x i64] } %t326, 0
  %t329 = icmp eq i64 %t328, 18
  br i1 %t329, label %bb99, label %bb100
bb99:
  %t331 = getelementptr { i64, [15 x i64] }, ptr %l1, i32 0, i32 1
  %t332 = getelementptr { { i64, [1 x i64] } }, ptr %t331, i32 0, i32 0
  %t333 = load { i64, [1 x i64] }, ptr %t332
  store { i64, [1 x i64] } %t333, ptr %l25
  br label %bb101
bb100:
  br label %bb103
bb101:
  %t335 = load ptr, ptr %l0, !tbaa !29
  %t336 = load { i64, [1 x i64] }, ptr %l25
  call void @compiler_2fmir_2ecompiler_2fmir_3averifier_2eref(ptr %v0, ptr %v1, ptr %t335, { i64, [1 x i64] } %t336)
  br label %bb102
bb102:
  br label %bb104
bb103:
  call void @__olang_check_failed(ptr @olang_loc_d06e38c3720099d6_401a7f863dec038a)
  unreachable
bb104:
  br label %ret
ret:
  ret void
}

define dso_local i1 @compiler_2fmir_2ecompiler_2fmir_3averifier_2escope(ptr %v0, ptr %v1, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l4 = alloca i1
  %l6 = alloca i64
  %l9 = alloca ptr
  %l11 = alloca i64
  %s1 = alloca %olang.scope
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load i32, ptr %l1, !tbaa !23
  %t3 = icmp slt i32 %t1, 0
  br i1 %t3, label %bb1, label %bb2
bb1:
  store i1 true, ptr %l4, !tbaa !21
  br label %bb4
bb2:
  %t5 = load i32, ptr %l1, !tbaa !23
  %t7 = sext i32 %t5 to i64
  store i64 %t7, ptr %l6, !tbaa !24
  %t8 = load ptr, ptr %l0, !tbaa !29
  %t10 = getelementptr %"compiler/mir:verifier", ptr %t8, i32 0, i32 0
  %t11 = load ptr, ptr %t10, !tbaa !29
  %t13 = getelementptr %"compiler/mir:Fn", ptr %t11, i32 0, i32 8
  store ptr %t13, ptr %l9, !tbaa !29
  %t14 = load ptr, ptr %l9, !tbaa !29
  %t15 = call ptr @__olang_scope_or(ptr %v1, ptr %t14)
  %t16 = ptrtoint ptr %t15 to i64
  %t18 = inttoptr i64 %t16 to ptr
  %t19 = load ptr, ptr %l9, !tbaa !29
  %t20 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aScopeInfo_3e_2eLen_3ccompiler_2fmir_3aScopeInfo_3e(ptr %t18, ptr %t19)
  store i64 %t20, ptr %l11
  br label %bb3
bb3:
  %t21 = load i64, ptr %l6, !tbaa !24
  %t22 = load i64, ptr %l11, !tbaa !24
  %t23 = icmp sge i64 %t21, %t22
  store i1 %t23, ptr %l4, !tbaa !21
  br label %bb4
bb4:
  %t25 = load i1, ptr %l4, !tbaa !21
  br i1 %t25, label %bb5, label %bb6
bb5:
  store %olang.scope zeroinitializer, ptr %s1
  %t26 = load ptr, ptr %l0, !tbaa !29
  %t27 = load i32, ptr %l1, !tbaa !23
  %t28 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d156, i32 0, i32 1) }, 1
  %t29 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d156, i32 0, i32 1) }, 0
  %t31 = sext i32 %t27 to i64
  %t32 = call i64 @__olang_fmt_i64(ptr null, i64 %t31)
  %t33 = add i64 %t29, %t32
  %t34 = call ptr @__olang_scope_alloc(ptr %s1, i64 %t33)
  call void @olang_textcopy(ptr %t34, ptr %t28, i64 %t29)
  %t35 = getelementptr i8, ptr %t34, i64 %t29
  %t36 = call i64 @__olang_fmt_i64(ptr %t35, i64 %t31)
  %t37 = insertvalue { i64, ptr } undef, i64 %t33, 0
  %t38 = insertvalue { i64, ptr } %t37, ptr %t34, 1
  %t40 = extractvalue { i64, ptr } %t38, 0
  %t41 = extractvalue { i64, ptr } %t38, 1
  %t42 = mul i64 %t40, 1
  %t43 = call ptr @__olang_scope_alloc(ptr %s1, i64 %t42)
  call void @llvm.memcpy.p0.p0.i64(ptr %t43, ptr %t41, i64 %t42, i1 false)
  %t44 = insertvalue { i64, ptr } undef, i64 %t40, 0
  %t45 = insertvalue { i64, ptr } %t44, ptr %t43, 1
  call void @compiler_2fmir_2ecompiler_2fmir_3averifier_2ebad(ptr %v0, ptr %s1, ptr %t26, { i64, ptr } %t45)
  br label %bb7
bb6:
  br label %bb8
bb7:
  call void @__olang_scope_close(ptr %s1)
  store i1 false, ptr %rv
  br label %ret
bb8:
  store i1 true, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i32 @compiler_2fmir_2ecompiler_2fmir_3averifier_2etagType(ptr %v0, ptr %v1, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca i1
  %l4 = alloca ptr
  %l7 = alloca i1
  %l11 = alloca i1
  %l14 = alloca ptr
  %l17 = alloca { i64, ptr }
  %s1 = alloca %olang.scope
  %rv = alloca i32
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/mir:verifier", ptr %t1, i32 0, i32 1
  %t4 = load ptr, ptr %t3, !tbaa !29
  store ptr %t4, ptr %l4, !tbaa !29
  %t5 = load i32, ptr %l1, !tbaa !23
  %t6 = load ptr, ptr %l4, !tbaa !29
  %t7 = call ptr @__olang_scope_or(ptr %v1, ptr %t6)
  %t8 = ptrtoint ptr %t7 to i64
  %t10 = inttoptr i64 %t8 to ptr
  %t11 = load ptr, ptr %l4, !tbaa !29
  %t13 = call i1 @compiler_2fmir_2eHasCases(ptr %t10, ptr %t11, i32 %t5)
  store i1 %t13, ptr %l7
  br label %bb1
bb1:
  %t14 = load i1, ptr %l7, !tbaa !21
  store i1 %t14, ptr %l2, !tbaa !21
  %t15 = load i32, ptr %l1, !tbaa !23
  %t16 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t19 = icmp ne i32 %t15, %t16
  br i1 %t19, label %bb2, label %bb3
bb2:
  %t21 = load i1, ptr %l2, !tbaa !21
  %t23 = xor i1 %t21, true
  store i1 %t23, ptr %l11, !tbaa !21
  br label %bb4
bb3:
  store i1 false, ptr %l11, !tbaa !21
  br label %bb4
bb4:
  %t25 = load i1, ptr %l11, !tbaa !21
  br i1 %t25, label %bb5, label %bb6
bb5:
  store %olang.scope zeroinitializer, ptr %s1
  %t26 = load ptr, ptr %l0, !tbaa !29
  store ptr %t26, ptr %l14, !tbaa !29
  %t27 = load ptr, ptr %l0, !tbaa !29
  %t28 = load i32, ptr %l1, !tbaa !23
  %t31 = call { i64, ptr } @compiler_2fmir_2ecompiler_2fmir_3averifier_2ecanon(ptr %v0, ptr %s1, ptr %v1, ptr %t27, i32 %t28)
  store { i64, ptr } %t31, ptr %l17
  br label %bb7
bb6:
  br label %bb9
bb7:
  %t32 = extractvalue { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d157, i32 0, i32 1) }, 1
  %t33 = extractvalue { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d157, i32 0, i32 1) }, 0
  %t34 = load { i64, ptr }, ptr %l17, !tbaa !27
  %t35 = extractvalue { i64, ptr } %t34, 1
  %t36 = extractvalue { i64, ptr } %t34, 0
  %t37 = add i64 %t33, %t36
  %t38 = extractvalue { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d158, i32 0, i32 1) }, 1
  %t39 = extractvalue { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d158, i32 0, i32 1) }, 0
  %t40 = add i64 %t37, %t39
  %t41 = call ptr @__olang_scope_alloc(ptr %s1, i64 %t40)
  call void @olang_textcopy(ptr %t41, ptr %t32, i64 %t33)
  %t42 = getelementptr i8, ptr %t41, i64 %t33
  call void @olang_textcopy(ptr %t42, ptr %t35, i64 %t36)
  %t43 = getelementptr i8, ptr %t42, i64 %t36
  call void @olang_textcopy(ptr %t43, ptr %t38, i64 %t39)
  %t44 = insertvalue { i64, ptr } undef, i64 %t40, 0
  %t45 = insertvalue { i64, ptr } %t44, ptr %t41, 1
  %t47 = extractvalue { i64, ptr } %t45, 0
  %t48 = extractvalue { i64, ptr } %t45, 1
  %t49 = mul i64 %t47, 1
  %t50 = call ptr @__olang_scope_alloc(ptr %s1, i64 %t49)
  call void @llvm.memcpy.p0.p0.i64(ptr %t50, ptr %t48, i64 %t49, i1 false)
  %t51 = insertvalue { i64, ptr } undef, i64 %t47, 0
  %t52 = insertvalue { i64, ptr } %t51, ptr %t50, 1
  %t53 = load ptr, ptr %l14, !tbaa !29
  call void @compiler_2fmir_2ecompiler_2fmir_3averifier_2ebad(ptr %v0, ptr %s1, ptr %t53, { i64, ptr } %t52)
  br label %bb8
bb8:
  call void @__olang_scope_close(ptr %s1)
  br label %bb9
bb9:
  %t55 = load i32, ptr @G_2ecompiler_2fmir_2eI64T, !tbaa !23
  store i32 %t55, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local void @compiler_2fmir_2ecompiler_2fmir_3averifier_2eusesScope(ptr %v0, ptr %a0, { i64, [1 x i64] } %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca { i64, [1 x i64] }
  %l2 = alloca i32
  %l3 = alloca i32
  %l9 = alloca i1
  %s2 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store { i64, [1 x i64] } %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load { i64, [1 x i64] }, ptr %l1
  %t3 = extractvalue { i64, [1 x i64] } %t1, 0
  %t4 = icmp eq i64 %t3, 0
  br i1 %t4, label %bb1, label %bb2
bb1:
  %t6 = getelementptr { i64, [1 x i64] }, ptr %l1, i32 0, i32 1
  %t7 = getelementptr { i32 }, ptr %t6, i32 0, i32 0
  %t8 = load i32, ptr %t7
  store i32 %t8, ptr %l2, !tbaa !23
  br label %bb3
bb2:
  br label %bb9
bb3:
  %t10 = load ptr, ptr %l0, !tbaa !29
  %t11 = load i32, ptr %l2, !tbaa !23
  %t14 = call i1 @compiler_2fmir_2ecompiler_2fmir_3averifier_2eopen(ptr %v0, ptr %t10, i32 %t11)
  store i1 %t14, ptr %l9
  br label %bb4
bb4:
  %t15 = load i1, ptr %l9, !tbaa !21
  %t16 = xor i1 %t15, true
  br i1 %t16, label %bb5, label %bb6
bb5:
  store %olang.scope zeroinitializer, ptr %s2
  %t18 = load ptr, ptr %l0, !tbaa !29
  %t19 = load i32, ptr %l2, !tbaa !23
  %t20 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d159, i32 0, i32 1) }, 1
  %t21 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d159, i32 0, i32 1) }, 0
  %t23 = sext i32 %t19 to i64
  %t24 = call i64 @__olang_fmt_i64(ptr null, i64 %t23)
  %t25 = add i64 %t21, %t24
  %t26 = extractvalue { i64, ptr } { i64 26, ptr getelementptr inbounds (<{ i64, [26 x i8] }>, ptr @.d160, i32 0, i32 1) }, 1
  %t27 = extractvalue { i64, ptr } { i64 26, ptr getelementptr inbounds (<{ i64, [26 x i8] }>, ptr @.d160, i32 0, i32 1) }, 0
  %t28 = add i64 %t25, %t27
  %t29 = call ptr @__olang_scope_alloc(ptr %s2, i64 %t28)
  call void @olang_textcopy(ptr %t29, ptr %t20, i64 %t21)
  %t30 = getelementptr i8, ptr %t29, i64 %t21
  %t31 = call i64 @__olang_fmt_i64(ptr %t30, i64 %t23)
  %t32 = getelementptr i8, ptr %t30, i64 %t24
  call void @olang_textcopy(ptr %t32, ptr %t26, i64 %t27)
  %t33 = insertvalue { i64, ptr } undef, i64 %t28, 0
  %t34 = insertvalue { i64, ptr } %t33, ptr %t29, 1
  %t36 = extractvalue { i64, ptr } %t34, 0
  %t37 = extractvalue { i64, ptr } %t34, 1
  %t38 = mul i64 %t36, 1
  %t39 = call ptr @__olang_scope_alloc(ptr %s2, i64 %t38)
  call void @llvm.memcpy.p0.p0.i64(ptr %t39, ptr %t37, i64 %t38, i1 false)
  %t40 = insertvalue { i64, ptr } undef, i64 %t36, 0
  %t41 = insertvalue { i64, ptr } %t40, ptr %t39, 1
  call void @compiler_2fmir_2ecompiler_2fmir_3averifier_2ebad(ptr %v0, ptr %s2, ptr %t18, { i64, ptr } %t41)
  br label %bb7
bb6:
  br label %bb8
bb7:
  call void @__olang_scope_close(ptr %s2)
  br label %bb8
bb8:
  br label %bb19
bb9:
  %t44 = load { i64, [1 x i64] }, ptr %l1
  %t46 = extractvalue { i64, [1 x i64] } %t44, 0
  %t47 = icmp eq i64 %t46, 4
  br i1 %t47, label %bb10, label %bb11
bb10:
  %t49 = getelementptr { i64, [1 x i64] }, ptr %l1, i32 0, i32 1
  %t50 = getelementptr { i32 }, ptr %t49, i32 0, i32 0
  %t51 = load i32, ptr %t50
  store i32 %t51, ptr %l3, !tbaa !23
  br label %bb12
bb11:
  br label %bb14
bb12:
  %t53 = load ptr, ptr %l0, !tbaa !29
  %t54 = load i32, ptr %l3, !tbaa !23
  call void @compiler_2fmir_2ecompiler_2fmir_3averifier_2eused(ptr %v0, ptr %t53, i32 %t54)
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
  call void @__olang_check_failed(ptr @olang_loc_587900af1cc61a9a_48225b2d2b7d46c6)
  unreachable
bb19:
  br label %ret
ret:
  ret void
}

define dso_local %"compiler/mir:Call" @compiler_2fmir_3aCall_2ector(ptr %v0, { i64, [7 x i64] } %a0, %"compiler/mir:Range" %a1, %"compiler/mir:Range" %a2, %"compiler/mir:Lvalue" %a3, i1 %a4, i32 %a5, i32 %a6, i32 %a7) #0 {
entry:
  %rv = alloca %"compiler/mir:Call"
  br label %start
start:
  br label %bb0
bb0:
  %t18 = insertvalue %"compiler/mir:Call" undef, { i64, [7 x i64] } %a0, 0
  %t20 = insertvalue %"compiler/mir:Call" %t18, %"compiler/mir:Range" %a1, 1
  %t22 = insertvalue %"compiler/mir:Call" %t20, %"compiler/mir:Range" %a2, 2
  %t24 = insertvalue %"compiler/mir:Call" %t22, %"compiler/mir:Lvalue" %a3, 3
  %t26 = insertvalue %"compiler/mir:Call" %t24, i1 %a4, 4
  %t28 = insertvalue %"compiler/mir:Call" %t26, i32 %a5, 5
  %t30 = insertvalue %"compiler/mir:Call" %t28, i32 %a6, 6
  %t32 = insertvalue %"compiler/mir:Call" %t30, i32 %a7, 7
  store %"compiler/mir:Call" %t32, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/mir:Call", ptr %rv
  ret %"compiler/mir:Call" %rr
}

define dso_local %"compiler/mir:Case" @compiler_2fmir_3aCase_2ector(ptr %v0, i64 %a0, i32 %a1) #0 {
entry:
  %rv = alloca %"compiler/mir:Case"
  br label %start
start:
  br label %bb0
bb0:
  %t6 = insertvalue %"compiler/mir:Case" undef, i64 %a0, 0
  %t8 = insertvalue %"compiler/mir:Case" %t6, i32 %a1, 1
  store %"compiler/mir:Case" %t8, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/mir:Case", ptr %rv
  ret %"compiler/mir:Case" %rr
}

define dso_local void @compiler_2fmir_3aFn_2ector(ptr %out, ptr %v0, { i64, [2 x i64] } %a0, i32 %a1, i64 %a2, %"compiler/source:Span" %a3) #0 {
entry:
  %l4 = alloca { i64, [2 x i64] }
  %l5 = alloca i32
  %l6 = alloca i64
  %l7 = alloca %"compiler/source:Span"
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
  %l24 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l25 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l26 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l27 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l28 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l29 = alloca i1
  %l30 = alloca i64
  %l31 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l37 = alloca i64
  %l39 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l41 = alloca i64
  %l43 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l45 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l46 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l47 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l48 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l49 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l50 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l51 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l52 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l53 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l54 = alloca i64
  %l56 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l58 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l59 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
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
  %l92 = alloca i64
  %l94 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l96 = alloca %"compiler/mir:Fn"
  br label %start
start:
  br label %bb0
bb0:
  store { i64, [2 x i64] } %a0, ptr %l4
  store i32 %a1, ptr %l5, !tbaa !23
  store i64 %a2, ptr %l6, !tbaa !24
  store %"compiler/source:Span" %a3, ptr %l7
  %t9 = ptrtoint ptr %v0 to i64
  store i64 %t9, ptr %l37, !tbaa !24
  %t10 = load i1, ptr @olang_2esole_2ecompiler_2fmir_3aFn_2e4
  br i1 %t10, label %bb1, label %bb2
bb1:
  %t12 = call ptr @__olang_region_make(ptr %v0)
  %t13 = ptrtoint ptr %t12 to i64
  store i64 %t13, ptr %l37, !tbaa !24
  br label %bb2
bb2:
  %t14 = load i64, ptr %l37
  %t15 = inttoptr i64 %t14 to ptr
  %t16 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aLocalId_3e_2ector(ptr %t15, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t16, ptr %l39
  br label %bb3
bb3:
  %t17 = load i1, ptr @olang_2esole_2ecompiler_2fmir_3aFn_2e4
  br i1 %t17, label %bb4, label %bb5
bb4:
  %t19 = load i64, ptr %l37
  %t20 = inttoptr i64 %t19 to ptr
  %t21 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l39, i32 0, i32 0
  %t22 = load { i64, ptr }, ptr %t21
  %t23 = extractvalue { i64, ptr } %t22, 1
  %t24 = call ptr @__olang_region_or(ptr %t23, ptr null)
  %t25 = icmp ne ptr %t24, null
  %t26 = select i1 %t25, ptr %t24, ptr null
  %t27 = icmp eq ptr %t26, %t20
  call void @__olang_region_settle(ptr %t20, i1 %t27)
  br label %bb5
bb5:
  %t28 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l39
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t28, ptr %l8
  %t29 = ptrtoint ptr %v0 to i64
  store i64 %t29, ptr %l41, !tbaa !24
  %t30 = load i1, ptr @olang_2esole_2ecompiler_2fmir_3aFn_2e5
  br i1 %t30, label %bb6, label %bb7
bb6:
  %t32 = call ptr @__olang_region_make(ptr %v0)
  %t33 = ptrtoint ptr %t32 to i64
  store i64 %t33, ptr %l41, !tbaa !24
  br label %bb7
bb7:
  %t34 = load i64, ptr %l41
  %t35 = inttoptr i64 %t34 to ptr
  %t36 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aLocalId_3e_2ector(ptr %t35, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t36, ptr %l43
  br label %bb8
bb8:
  %t37 = load i1, ptr @olang_2esole_2ecompiler_2fmir_3aFn_2e5
  br i1 %t37, label %bb9, label %bb10
bb9:
  %t39 = load i64, ptr %l41
  %t40 = inttoptr i64 %t39 to ptr
  %t41 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l43, i32 0, i32 0
  %t42 = load { i64, ptr }, ptr %t41
  %t43 = extractvalue { i64, ptr } %t42, 1
  %t44 = call ptr @__olang_region_or(ptr %t43, ptr null)
  %t45 = icmp ne ptr %t44, null
  %t46 = select i1 %t45, ptr %t44, ptr null
  %t47 = icmp eq ptr %t46, %t40
  call void @__olang_region_settle(ptr %t40, i1 %t47)
  br label %bb10
bb10:
  %t48 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l43
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t48, ptr %l9
  %t49 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aVarKind_3e_2ector(ptr %v0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t49, ptr %l45
  br label %bb11
bb11:
  %t50 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l45
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t50, ptr %l10
  %t51 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aLocal_3e_2ector(ptr %v0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t51, ptr %l46
  br label %bb12
bb12:
  %t52 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l46
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t52, ptr %l11
  %t53 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aScopeInfo_3e_2ector(ptr %v0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t53, ptr %l47
  br label %bb13
bb13:
  %t54 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l47
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t54, ptr %l12
  %t55 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aBasicBlock_3e_2ector(ptr %v0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t55, ptr %l48
  br label %bb14
bb14:
  %t56 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l48
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t56, ptr %l13
  %t57 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aProj_3e_2ector(ptr %v0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t57, ptr %l49
  br label %bb15
bb15:
  %t58 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l49
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t58, ptr %l14
  %t59 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aOperand_3e_2ector(ptr %v0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t59, ptr %l50
  br label %bb16
bb16:
  %t60 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l50
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t60, ptr %l15
  %t61 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aScopeRef_3e_2ector(ptr %v0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t61, ptr %l51
  br label %bb17
bb17:
  %t62 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l51
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t62, ptr %l16
  %t63 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aLvalue_3e_2ector(ptr %v0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t63, ptr %l52
  br label %bb18
bb18:
  %t64 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l52
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t64, ptr %l17
  %t65 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aCall_3e_2ector(ptr %v0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t65, ptr %l53
  br label %bb19
bb19:
  %t66 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l53
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t66, ptr %l18
  %t67 = ptrtoint ptr %v0 to i64
  store i64 %t67, ptr %l54, !tbaa !24
  %t68 = load i1, ptr @olang_2esole_2ecompiler_2fmir_3aFn_2e15
  br i1 %t68, label %bb20, label %bb21
bb20:
  %t70 = call ptr @__olang_region_make(ptr %v0)
  %t71 = ptrtoint ptr %t70 to i64
  store i64 %t71, ptr %l54, !tbaa !24
  br label %bb21
bb21:
  %t72 = load i64, ptr %l54
  %t73 = inttoptr i64 %t72 to ptr
  %t74 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aCase_3e_2ector(ptr %t73, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t74, ptr %l56
  br label %bb22
bb22:
  %t75 = load i1, ptr @olang_2esole_2ecompiler_2fmir_3aFn_2e15
  br i1 %t75, label %bb23, label %bb24
bb23:
  %t77 = load i64, ptr %l54
  %t78 = inttoptr i64 %t77 to ptr
  %t79 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l56, i32 0, i32 0
  %t80 = load { i64, ptr }, ptr %t79
  %t81 = extractvalue { i64, ptr } %t80, 1
  %t82 = call ptr @__olang_region_or(ptr %t81, ptr null)
  %t83 = icmp ne ptr %t82, null
  %t84 = select i1 %t83, ptr %t82, ptr null
  %t85 = icmp eq ptr %t84, %t78
  call void @__olang_region_settle(ptr %t78, i1 %t85)
  br label %bb24
bb24:
  %t86 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l56
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t86, ptr %l19
  %t87 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aTask_3e_2ector(ptr %v0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t87, ptr %l58
  br label %bb25
bb25:
  %t88 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l58
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t88, ptr %l20
  %t89 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aTaskClause_3e_2ector(ptr %v0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t89, ptr %l59
  br label %bb26
bb26:
  %t90 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l59
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t90, ptr %l21
  %t91 = ptrtoint ptr %v0 to i64
  store i64 %t91, ptr %l60, !tbaa !24
  %t92 = load i1, ptr @olang_2esole_2ecompiler_2fmir_3aFn_2e18
  br i1 %t92, label %bb27, label %bb28
bb27:
  %t94 = call ptr @__olang_region_make(ptr %v0)
  %t95 = ptrtoint ptr %t94 to i64
  store i64 %t95, ptr %l60, !tbaa !24
  br label %bb28
bb28:
  %t96 = load i64, ptr %l60
  %t97 = inttoptr i64 %t96 to ptr
  %t98 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aItem_3e_2ector(ptr %t97, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t98, ptr %l62
  br label %bb29
bb29:
  %t99 = load i1, ptr @olang_2esole_2ecompiler_2fmir_3aFn_2e18
  br i1 %t99, label %bb30, label %bb31
bb30:
  %t101 = load i64, ptr %l60
  %t102 = inttoptr i64 %t101 to ptr
  %t103 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l62, i32 0, i32 0
  %t104 = load { i64, ptr }, ptr %t103
  %t105 = extractvalue { i64, ptr } %t104, 1
  %t106 = call ptr @__olang_region_or(ptr %t105, ptr null)
  %t107 = icmp ne ptr %t106, null
  %t108 = select i1 %t107, ptr %t106, ptr null
  %t109 = icmp eq ptr %t108, %t102
  call void @__olang_region_settle(ptr %t102, i1 %t109)
  br label %bb31
bb31:
  %t110 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l62
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t110, ptr %l22
  %t111 = ptrtoint ptr %v0 to i64
  store i64 %t111, ptr %l64, !tbaa !24
  %t112 = load i1, ptr @olang_2esole_2ecompiler_2fmir_3aFn_2e19
  br i1 %t112, label %bb32, label %bb33
bb32:
  %t114 = call ptr @__olang_region_make(ptr %v0)
  %t115 = ptrtoint ptr %t114 to i64
  store i64 %t115, ptr %l64, !tbaa !24
  br label %bb33
bb33:
  %t116 = load i64, ptr %l64
  %t117 = inttoptr i64 %t116 to ptr
  %t118 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aConstNode_3e_2ector(ptr %t117, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t118, ptr %l66
  br label %bb34
bb34:
  %t119 = load i1, ptr @olang_2esole_2ecompiler_2fmir_3aFn_2e19
  br i1 %t119, label %bb35, label %bb36
bb35:
  %t121 = load i64, ptr %l64
  %t122 = inttoptr i64 %t121 to ptr
  %t123 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l66, i32 0, i32 0
  %t124 = load { i64, ptr }, ptr %t123
  %t125 = extractvalue { i64, ptr } %t124, 1
  %t126 = call ptr @__olang_region_or(ptr %t125, ptr null)
  %t127 = icmp ne ptr %t126, null
  %t128 = select i1 %t127, ptr %t126, ptr null
  %t129 = icmp eq ptr %t128, %t122
  call void @__olang_region_settle(ptr %t122, i1 %t129)
  br label %bb36
bb36:
  %t130 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l66
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t130, ptr %l23
  %t131 = ptrtoint ptr %v0 to i64
  store i64 %t131, ptr %l68, !tbaa !24
  %t132 = load i1, ptr @olang_2esole_2ecompiler_2fmir_3aFn_2e20
  br i1 %t132, label %bb37, label %bb38
bb37:
  %t134 = call ptr @__olang_region_make(ptr %v0)
  %t135 = ptrtoint ptr %t134 to i64
  store i64 %t135, ptr %l68, !tbaa !24
  br label %bb38
bb38:
  %t136 = load i64, ptr %l68
  %t137 = inttoptr i64 %t136 to ptr
  %t138 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI32_3e_2ector(ptr %t137, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t138, ptr %l70
  br label %bb39
bb39:
  %t139 = load i1, ptr @olang_2esole_2ecompiler_2fmir_3aFn_2e20
  br i1 %t139, label %bb40, label %bb41
bb40:
  %t141 = load i64, ptr %l68
  %t142 = inttoptr i64 %t141 to ptr
  %t143 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l70, i32 0, i32 0
  %t144 = load { i64, ptr }, ptr %t143
  %t145 = extractvalue { i64, ptr } %t144, 1
  %t146 = call ptr @__olang_region_or(ptr %t145, ptr null)
  %t147 = icmp ne ptr %t146, null
  %t148 = select i1 %t147, ptr %t146, ptr null
  %t149 = icmp eq ptr %t148, %t142
  call void @__olang_region_settle(ptr %t142, i1 %t149)
  br label %bb41
bb41:
  %t150 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l70
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t150, ptr %l24
  %t151 = ptrtoint ptr %v0 to i64
  store i64 %t151, ptr %l72, !tbaa !24
  %t152 = load i1, ptr @olang_2esole_2ecompiler_2fmir_3aFn_2e21
  br i1 %t152, label %bb42, label %bb43
bb42:
  %t154 = call ptr @__olang_region_make(ptr %v0)
  %t155 = ptrtoint ptr %t154 to i64
  store i64 %t155, ptr %l72, !tbaa !24
  br label %bb43
bb43:
  %t156 = load i64, ptr %l72
  %t157 = inttoptr i64 %t156 to ptr
  %t158 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cU8_3e_2ector(ptr %t157, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t158, ptr %l74
  br label %bb44
bb44:
  %t159 = load i1, ptr @olang_2esole_2ecompiler_2fmir_3aFn_2e21
  br i1 %t159, label %bb45, label %bb46
bb45:
  %t161 = load i64, ptr %l72
  %t162 = inttoptr i64 %t161 to ptr
  %t163 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l74, i32 0, i32 0
  %t164 = load { i64, ptr }, ptr %t163
  %t165 = extractvalue { i64, ptr } %t164, 1
  %t166 = call ptr @__olang_region_or(ptr %t165, ptr null)
  %t167 = icmp ne ptr %t166, null
  %t168 = select i1 %t167, ptr %t166, ptr null
  %t169 = icmp eq ptr %t168, %t162
  call void @__olang_region_settle(ptr %t162, i1 %t169)
  br label %bb46
bb46:
  %t170 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l74
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t170, ptr %l25
  %t171 = ptrtoint ptr %v0 to i64
  store i64 %t171, ptr %l76, !tbaa !24
  %t172 = load i1, ptr @olang_2esole_2ecompiler_2fmir_3aFn_2e22
  br i1 %t172, label %bb47, label %bb48
bb47:
  %t174 = call ptr @__olang_region_make(ptr %v0)
  %t175 = ptrtoint ptr %t174 to i64
  store i64 %t175, ptr %l76, !tbaa !24
  br label %bb48
bb48:
  %t176 = load i64, ptr %l76
  %t177 = inttoptr i64 %t176 to ptr
  %t178 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aBlockId_3e_2ector(ptr %t177, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t178, ptr %l78
  br label %bb49
bb49:
  %t179 = load i1, ptr @olang_2esole_2ecompiler_2fmir_3aFn_2e22
  br i1 %t179, label %bb50, label %bb51
bb50:
  %t181 = load i64, ptr %l76
  %t182 = inttoptr i64 %t181 to ptr
  %t183 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l78, i32 0, i32 0
  %t184 = load { i64, ptr }, ptr %t183
  %t185 = extractvalue { i64, ptr } %t184, 1
  %t186 = call ptr @__olang_region_or(ptr %t185, ptr null)
  %t187 = icmp ne ptr %t186, null
  %t188 = select i1 %t187, ptr %t186, ptr null
  %t189 = icmp eq ptr %t188, %t182
  call void @__olang_region_settle(ptr %t182, i1 %t189)
  br label %bb51
bb51:
  %t190 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l78
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t190, ptr %l26
  %t191 = ptrtoint ptr %v0 to i64
  store i64 %t191, ptr %l80, !tbaa !24
  %t192 = load i1, ptr @olang_2esole_2ecompiler_2fmir_3aFn_2e23
  br i1 %t192, label %bb52, label %bb53
bb52:
  %t194 = call ptr @__olang_region_make(ptr %v0)
  %t195 = ptrtoint ptr %t194 to i64
  store i64 %t195, ptr %l80, !tbaa !24
  br label %bb53
bb53:
  %t196 = load i64, ptr %l80
  %t197 = inttoptr i64 %t196 to ptr
  %t198 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI32_3e_2ector(ptr %t197, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t198, ptr %l82
  br label %bb54
bb54:
  %t199 = load i1, ptr @olang_2esole_2ecompiler_2fmir_3aFn_2e23
  br i1 %t199, label %bb55, label %bb56
bb55:
  %t201 = load i64, ptr %l80
  %t202 = inttoptr i64 %t201 to ptr
  %t203 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l82, i32 0, i32 0
  %t204 = load { i64, ptr }, ptr %t203
  %t205 = extractvalue { i64, ptr } %t204, 1
  %t206 = call ptr @__olang_region_or(ptr %t205, ptr null)
  %t207 = icmp ne ptr %t206, null
  %t208 = select i1 %t207, ptr %t206, ptr null
  %t209 = icmp eq ptr %t208, %t202
  call void @__olang_region_settle(ptr %t202, i1 %t209)
  br label %bb56
bb56:
  %t210 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l82
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t210, ptr %l27
  %t211 = ptrtoint ptr %v0 to i64
  store i64 %t211, ptr %l84, !tbaa !24
  %t212 = load i1, ptr @olang_2esole_2ecompiler_2fmir_3aFn_2e24
  br i1 %t212, label %bb57, label %bb58
bb57:
  %t214 = call ptr @__olang_region_make(ptr %v0)
  %t215 = ptrtoint ptr %t214 to i64
  store i64 %t215, ptr %l84, !tbaa !24
  br label %bb58
bb58:
  %t216 = load i64, ptr %l84
  %t217 = inttoptr i64 %t216 to ptr
  %t218 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2ector(ptr %t217, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t218, ptr %l86
  br label %bb59
bb59:
  %t219 = load i1, ptr @olang_2esole_2ecompiler_2fmir_3aFn_2e24
  br i1 %t219, label %bb60, label %bb61
bb60:
  %t221 = load i64, ptr %l84
  %t222 = inttoptr i64 %t221 to ptr
  %t223 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l86, i32 0, i32 0
  %t224 = load { i64, ptr }, ptr %t223
  %t225 = extractvalue { i64, ptr } %t224, 1
  %t226 = call ptr @__olang_region_or(ptr %t225, ptr null)
  %t227 = icmp ne ptr %t226, null
  %t228 = select i1 %t227, ptr %t226, ptr null
  %t229 = icmp eq ptr %t228, %t222
  call void @__olang_region_settle(ptr %t222, i1 %t229)
  br label %bb61
bb61:
  %t230 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l86
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t230, ptr %l28
  store i1 false, ptr %l29, !tbaa !21
  store i64 0, ptr %l30, !tbaa !24
  %t231 = ptrtoint ptr %v0 to i64
  store i64 %t231, ptr %l88, !tbaa !24
  %t232 = load i1, ptr @olang_2esole_2ecompiler_2fmir_3aFn_2e27
  br i1 %t232, label %bb62, label %bb63
bb62:
  %t234 = call ptr @__olang_region_make(ptr %v0)
  %t235 = ptrtoint ptr %t234 to i64
  store i64 %t235, ptr %l88, !tbaa !24
  br label %bb63
bb63:
  %t236 = load i64, ptr %l88
  %t237 = inttoptr i64 %t236 to ptr
  %t238 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI32_3e_2ector(ptr %t237, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t238, ptr %l90
  br label %bb64
bb64:
  %t239 = load i1, ptr @olang_2esole_2ecompiler_2fmir_3aFn_2e27
  br i1 %t239, label %bb65, label %bb66
bb65:
  %t241 = load i64, ptr %l88
  %t242 = inttoptr i64 %t241 to ptr
  %t243 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l90, i32 0, i32 0
  %t244 = load { i64, ptr }, ptr %t243
  %t245 = extractvalue { i64, ptr } %t244, 1
  %t246 = call ptr @__olang_region_or(ptr %t245, ptr null)
  %t247 = icmp ne ptr %t246, null
  %t248 = select i1 %t247, ptr %t246, ptr null
  %t249 = icmp eq ptr %t248, %t242
  call void @__olang_region_settle(ptr %t242, i1 %t249)
  br label %bb66
bb66:
  %t250 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l90
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t250, ptr %l31
  %t251 = ptrtoint ptr %v0 to i64
  store i64 %t251, ptr %l92, !tbaa !24
  %t252 = load i1, ptr @olang_2esole_2ecompiler_2fmir_3aFn_2e28
  br i1 %t252, label %bb67, label %bb68
bb67:
  %t254 = call ptr @__olang_region_make(ptr %v0)
  %t255 = ptrtoint ptr %t254 to i64
  store i64 %t255, ptr %l92, !tbaa !24
  br label %bb68
bb68:
  %t256 = load i64, ptr %l92
  %t257 = inttoptr i64 %t256 to ptr
  %t258 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aScopeId_3e_2ector(ptr %t257, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t258, ptr %l94
  br label %bb69
bb69:
  %t259 = load i1, ptr @olang_2esole_2ecompiler_2fmir_3aFn_2e28
  br i1 %t259, label %bb70, label %bb71
bb70:
  %t261 = load i64, ptr %l92
  %t262 = inttoptr i64 %t261 to ptr
  %t263 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l94, i32 0, i32 0
  %t264 = load { i64, ptr }, ptr %t263
  %t265 = extractvalue { i64, ptr } %t264, 1
  %t266 = call ptr @__olang_region_or(ptr %t265, ptr null)
  %t267 = icmp ne ptr %t266, null
  %t268 = select i1 %t267, ptr %t266, ptr null
  %t269 = icmp eq ptr %t268, %t262
  call void @__olang_region_settle(ptr %t262, i1 %t269)
  br label %bb71
bb71:
  %t270 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l94
  %t271 = getelementptr %"compiler/mir:Fn", ptr %l96, i32 0, i32 0
  %t272 = load { i64, [2 x i64] }, ptr %l4
  store { i64, [2 x i64] } %t272, ptr %t271
  %t273 = getelementptr %"compiler/mir:Fn", ptr %l96, i32 0, i32 1
  %t274 = load i32, ptr %l5, !tbaa !23
  store i32 %t274, ptr %t273, !tbaa !23
  %t275 = getelementptr %"compiler/mir:Fn", ptr %l96, i32 0, i32 2
  %t276 = load i64, ptr %l6, !tbaa !24
  store i64 %t276, ptr %t275, !tbaa !24
  %t277 = getelementptr %"compiler/mir:Fn", ptr %l96, i32 0, i32 3
  %t278 = load %"compiler/source:Span", ptr %l7
  store %"compiler/source:Span" %t278, ptr %t277
  %t279 = getelementptr %"compiler/mir:Fn", ptr %l96, i32 0, i32 4
  %t280 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l8
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t280, ptr %t279
  %t281 = getelementptr %"compiler/mir:Fn", ptr %l96, i32 0, i32 5
  %t282 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l9
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t282, ptr %t281
  %t283 = getelementptr %"compiler/mir:Fn", ptr %l96, i32 0, i32 6
  %t284 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l10
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t284, ptr %t283
  %t285 = getelementptr %"compiler/mir:Fn", ptr %l96, i32 0, i32 7
  %t286 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l11
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t286, ptr %t285
  %t287 = getelementptr %"compiler/mir:Fn", ptr %l96, i32 0, i32 8
  %t288 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l12
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t288, ptr %t287
  %t289 = getelementptr %"compiler/mir:Fn", ptr %l96, i32 0, i32 9
  %t290 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l13
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t290, ptr %t289
  %t291 = getelementptr %"compiler/mir:Fn", ptr %l96, i32 0, i32 10
  %t292 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l14
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t292, ptr %t291
  %t293 = getelementptr %"compiler/mir:Fn", ptr %l96, i32 0, i32 11
  %t294 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l15
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t294, ptr %t293
  %t295 = getelementptr %"compiler/mir:Fn", ptr %l96, i32 0, i32 12
  %t296 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l16
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t296, ptr %t295
  %t297 = getelementptr %"compiler/mir:Fn", ptr %l96, i32 0, i32 13
  %t298 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l17
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t298, ptr %t297
  %t299 = getelementptr %"compiler/mir:Fn", ptr %l96, i32 0, i32 14
  %t300 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l18
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t300, ptr %t299
  %t301 = getelementptr %"compiler/mir:Fn", ptr %l96, i32 0, i32 15
  %t302 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l19
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t302, ptr %t301
  %t303 = getelementptr %"compiler/mir:Fn", ptr %l96, i32 0, i32 16
  %t304 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l20
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t304, ptr %t303
  %t305 = getelementptr %"compiler/mir:Fn", ptr %l96, i32 0, i32 17
  %t306 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l21
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t306, ptr %t305
  %t307 = getelementptr %"compiler/mir:Fn", ptr %l96, i32 0, i32 18
  %t308 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l22
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t308, ptr %t307
  %t309 = getelementptr %"compiler/mir:Fn", ptr %l96, i32 0, i32 19
  %t310 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l23
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t310, ptr %t309
  %t311 = getelementptr %"compiler/mir:Fn", ptr %l96, i32 0, i32 20
  %t312 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l24
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t312, ptr %t311
  %t313 = getelementptr %"compiler/mir:Fn", ptr %l96, i32 0, i32 21
  %t314 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l25
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t314, ptr %t313
  %t315 = getelementptr %"compiler/mir:Fn", ptr %l96, i32 0, i32 22
  %t316 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l26
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t316, ptr %t315
  %t317 = getelementptr %"compiler/mir:Fn", ptr %l96, i32 0, i32 23
  %t318 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l27
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t318, ptr %t317
  %t319 = getelementptr %"compiler/mir:Fn", ptr %l96, i32 0, i32 24
  %t320 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l28
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t320, ptr %t319
  %t321 = getelementptr %"compiler/mir:Fn", ptr %l96, i32 0, i32 25
  %t322 = load i1, ptr %l29, !tbaa !21
  store i1 %t322, ptr %t321, !tbaa !21
  %t323 = getelementptr %"compiler/mir:Fn", ptr %l96, i32 0, i32 26
  %t324 = load i64, ptr %l30, !tbaa !24
  store i64 %t324, ptr %t323, !tbaa !24
  %t325 = getelementptr %"compiler/mir:Fn", ptr %l96, i32 0, i32 27
  %t326 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l31
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t326, ptr %t325
  %t327 = getelementptr %"compiler/mir:Fn", ptr %l96, i32 0, i32 28
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t270, ptr %t327
  call void @llvm.memmove.p0.p0.i64(ptr %out, ptr %l96, i64 800, i1 false)
  br label %ret
ret:
  ret void
}

define dso_local %"compiler/mir:ScopeInfo" @compiler_2fmir_3aScopeInfo_2ector(ptr %v0, i32 %a0, i32 %a1, i32 %a2, %"compiler/source:Span" %a3, i32 %a4) #0 {
entry:
  %rv = alloca %"compiler/mir:ScopeInfo"
  br label %start
start:
  br label %bb0
bb0:
  %t12 = insertvalue %"compiler/mir:ScopeInfo" undef, i32 %a0, 0
  %t14 = insertvalue %"compiler/mir:ScopeInfo" %t12, i32 %a1, 1
  %t16 = insertvalue %"compiler/mir:ScopeInfo" %t14, i32 %a2, 2
  %t18 = insertvalue %"compiler/mir:ScopeInfo" %t16, %"compiler/source:Span" %a3, 3
  %t20 = insertvalue %"compiler/mir:ScopeInfo" %t18, i32 %a4, 4
  store %"compiler/mir:ScopeInfo" %t20, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/mir:ScopeInfo", ptr %rv
  ret %"compiler/mir:ScopeInfo" %rr
}

define dso_local %"compiler/mir:TaskClause" @compiler_2fmir_3aTaskClause_2ector(ptr %v0, %"compiler/mir:Range" %a0, i1 %a1, { i64, [4 x i64] } %a2) #0 {
entry:
  %rv = alloca %"compiler/mir:TaskClause"
  br label %start
start:
  br label %bb0
bb0:
  %t8 = insertvalue %"compiler/mir:TaskClause" undef, %"compiler/mir:Range" %a0, 0
  %t10 = insertvalue %"compiler/mir:TaskClause" %t8, i1 %a1, 1
  %t12 = insertvalue %"compiler/mir:TaskClause" %t10, { i64, [4 x i64] } %a2, 2
  store %"compiler/mir:TaskClause" %t12, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/mir:TaskClause", ptr %rv
  ret %"compiler/mir:TaskClause" %rr
}

@.d0 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d1 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c"aborted" }>, align 8
@.d2 = private constant <{ i64, [19 x i8] }> <{ i64 0, [19 x i8] c"unreachable reached" }>, align 8
@.d3 = private constant <{ i64, [12 x i8] }> <{ i64 0, [12 x i8] c"null reached" }>, align 8
@.d4 = private constant <{ i64, [19 x i8] }> <{ i64 0, [19 x i8] c"raised a null error" }>, align 8
@.d5 = private constant <{ i64, [16 x i8] }> <{ i64 0, [16 x i8] c"assertion failed" }>, align 8
@.d6 = private constant <{ i64, [25 x i8] }> <{ i64 0, [25 x i8] c"slice bounds out of range" }>, align 8
@.d7 = private constant <{ i64, [25 x i8] }> <{ i64 0, [25 x i8] c"array length out of range" }>, align 8
@.d8 = private constant <{ i64, [32 x i8] }> <{ i64 0, [32 x i8] c"'as' named what the value is not" }>, align 8
@.d9 = private constant <{ i64, [45 x i8] }> <{ i64 0, [45 x i8] c"array length does not match its fixed storage" }>, align 8
@.d10 = private constant <{ i64, [19 x i8] }> <{ i64 0, [19 x i8] c"lane lengths differ" }>, align 8
@.d11 = private constant <{ i64, [56 x i8] }> <{ i64 0, [56 x i8] c"a generator asked for its next value inside its own walk" }>, align 8
declare void @__olang_check_failed(ptr) cold noreturn
@.d12 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"I32" }>, align 8
declare noalias ptr @__olang_scope_alloc_zeroed(ptr, i64)
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
declare ptr @__olang_scope_or(ptr, ptr)
@.d13 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"a" }>, align 8
@.d14 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"b" }>, align 8
@.d15 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"s" }>, align 8
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
@__olang_empty_array = external constant [16 x i64]
declare i64 @__olang_fmt_i64(ptr, i64)
@.d16 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
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
@.d17 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c"assert B" }>, align 8
@.d18 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d19 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c":" }>, align 8
@.d20 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c"global " }>, align 8
@.d21 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c":" }>, align 8
@.d22 = private constant <{ i64, [9 x i8] }> <{ i64 0, [9 x i8] c"literal B" }>, align 8
@.d23 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c" site " }>, align 8
@.d24 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"zero T" }>, align 8
@.d25 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"fn " }>, align 8
@.d26 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c": " }>, align 8
declare void @llvm.memcpy.p0.p0.i64(ptr, ptr, i64, i1)
@.d27 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c", " }>, align 8
@.d28 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d29 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"V" }>, align 8
@.d30 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d31 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"vars " }>, align 8
declare ptr @__olang_scope_of(ptr, ptr) noinline
@.d32 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d33 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c" in " }>, align 8
define linkonce_odr void @olang_2emir_2eHelperKind_2eRender_2ecompiler_2fmir_3aLocalKind(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l1 = alloca i64
  store i64 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t2 = load i32, ptr %a0, !range !{i32 0, i32 4}
  %t3 = sext i32 %t2 to i64
  switch i64 %t3, label %bb1 [ i64 0, label %bb2 i64 1, label %bb3 i64 2, label %bb4 i64 3, label %bb5 ]
bb1:
  br label %ret
bb2:
  %t5 = extractvalue { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d161, i32 0, i32 1) }, 1
  %t6 = extractvalue { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d161, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t5, i64 %t6)
  br label %bb1
bb3:
  %t7 = extractvalue { i64, ptr } { i64 21, ptr getelementptr inbounds (<{ i64, [21 x i8] }>, ptr @.d162, i32 0, i32 1) }, 1
  %t8 = extractvalue { i64, ptr } { i64 21, ptr getelementptr inbounds (<{ i64, [21 x i8] }>, ptr @.d162, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t7, i64 %t8)
  br label %bb1
bb4:
  %t9 = extractvalue { i64, ptr } { i64 17, ptr getelementptr inbounds (<{ i64, [17 x i8] }>, ptr @.d163, i32 0, i32 1) }, 1
  %t10 = extractvalue { i64, ptr } { i64 17, ptr getelementptr inbounds (<{ i64, [17 x i8] }>, ptr @.d163, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t9, i64 %t10)
  br label %bb1
bb5:
  %t11 = extractvalue { i64, ptr } { i64 18, ptr getelementptr inbounds (<{ i64, [18 x i8] }>, ptr @.d164, i32 0, i32 1) }, 1
  %t12 = extractvalue { i64, ptr } { i64 18, ptr getelementptr inbounds (<{ i64, [18 x i8] }>, ptr @.d164, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t11, i64 %t12)
  br label %bb1
ret:
  ret void
}

declare void @__olang_sb_done(ptr)
@.d34 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d35 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d36 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"L" }>, align 8
@.d37 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d38 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c": " }>, align 8
@.d39 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d40 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c" in S" }>, align 8
@.d41 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d42 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c" block " }>, align 8
@.d43 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d44 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c" fails " }>, align 8
define linkonce_odr void @olang_2emir_2eHelperKind_2eRender_2ecompiler_2fmir_3aScopeKind(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l1 = alloca i64
  store i64 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t2 = load i32, ptr %a0, !range !{i32 0, i32 7}
  %t3 = sext i32 %t2 to i64
  switch i64 %t3, label %bb1 [ i64 0, label %bb2 i64 1, label %bb3 i64 2, label %bb4 i64 3, label %bb5 i64 4, label %bb6 i64 5, label %bb7 i64 6, label %bb8 ]
bb1:
  br label %ret
bb2:
  %t5 = extractvalue { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d165, i32 0, i32 1) }, 1
  %t6 = extractvalue { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d165, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t5, i64 %t6)
  br label %bb1
bb3:
  %t7 = extractvalue { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d166, i32 0, i32 1) }, 1
  %t8 = extractvalue { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d166, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t7, i64 %t8)
  br label %bb1
bb4:
  %t9 = extractvalue { i64, ptr } { i64 18, ptr getelementptr inbounds (<{ i64, [18 x i8] }>, ptr @.d167, i32 0, i32 1) }, 1
  %t10 = extractvalue { i64, ptr } { i64 18, ptr getelementptr inbounds (<{ i64, [18 x i8] }>, ptr @.d167, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t9, i64 %t10)
  br label %bb1
bb5:
  %t11 = extractvalue { i64, ptr } { i64 18, ptr getelementptr inbounds (<{ i64, [18 x i8] }>, ptr @.d168, i32 0, i32 1) }, 1
  %t12 = extractvalue { i64, ptr } { i64 18, ptr getelementptr inbounds (<{ i64, [18 x i8] }>, ptr @.d168, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t11, i64 %t12)
  br label %bb1
bb6:
  %t13 = extractvalue { i64, ptr } { i64 20, ptr getelementptr inbounds (<{ i64, [20 x i8] }>, ptr @.d169, i32 0, i32 1) }, 1
  %t14 = extractvalue { i64, ptr } { i64 20, ptr getelementptr inbounds (<{ i64, [20 x i8] }>, ptr @.d169, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t13, i64 %t14)
  br label %bb1
bb7:
  %t15 = extractvalue { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d170, i32 0, i32 1) }, 1
  %t16 = extractvalue { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d170, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t15, i64 %t16)
  br label %bb1
bb8:
  %t17 = extractvalue { i64, ptr } { i64 21, ptr getelementptr inbounds (<{ i64, [21 x i8] }>, ptr @.d171, i32 0, i32 1) }, 1
  %t18 = extractvalue { i64, ptr } { i64 21, ptr getelementptr inbounds (<{ i64, [21 x i8] }>, ptr @.d171, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t17, i64 %t18)
  br label %bb1
ret:
  ret void
}

@.d45 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"S" }>, align 8
@.d46 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d47 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"bb" }>, align 8
@.d48 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c":" }>, align 8
@.d49 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d50 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d51 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"B" }>, align 8
@.d52 = private constant <{ i64, [9 x i8] }> <{ i64 0, [9 x i8] c"adapter B" }>, align 8
@.d53 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c"copied B" }>, align 8
@.d54 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"B" }>, align 8
@.d55 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c" twin " }>, align 8
define linkonce_odr void @olang_2emir_2eHelperKind_2eRender_2ecompiler_2fmir_3aHelperKind(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l1 = alloca i64
  store i64 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t2 = load i32, ptr %a0, !range !{i32 0, i32 8}
  %t3 = sext i32 %t2 to i64
  switch i64 %t3, label %bb1 [ i64 0, label %bb2 i64 1, label %bb3 i64 2, label %bb4 i64 3, label %bb5 i64 4, label %bb6 i64 5, label %bb7 i64 6, label %bb8 i64 7, label %bb9 ]
bb1:
  br label %ret
bb2:
  %t5 = extractvalue { i64, ptr } { i64 21, ptr getelementptr inbounds (<{ i64, [21 x i8] }>, ptr @.d172, i32 0, i32 1) }, 1
  %t6 = extractvalue { i64, ptr } { i64 21, ptr getelementptr inbounds (<{ i64, [21 x i8] }>, ptr @.d172, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t5, i64 %t6)
  br label %bb1
bb3:
  %t7 = extractvalue { i64, ptr } { i64 20, ptr getelementptr inbounds (<{ i64, [20 x i8] }>, ptr @.d173, i32 0, i32 1) }, 1
  %t8 = extractvalue { i64, ptr } { i64 20, ptr getelementptr inbounds (<{ i64, [20 x i8] }>, ptr @.d173, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t7, i64 %t8)
  br label %bb1
bb4:
  %t9 = extractvalue { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d174, i32 0, i32 1) }, 1
  %t10 = extractvalue { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d174, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t9, i64 %t10)
  br label %bb1
bb5:
  %t11 = extractvalue { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d175, i32 0, i32 1) }, 1
  %t12 = extractvalue { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d175, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t11, i64 %t12)
  br label %bb1
bb6:
  %t13 = extractvalue { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d176, i32 0, i32 1) }, 1
  %t14 = extractvalue { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d176, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t13, i64 %t14)
  br label %bb1
bb7:
  %t15 = extractvalue { i64, ptr } { i64 20, ptr getelementptr inbounds (<{ i64, [20 x i8] }>, ptr @.d177, i32 0, i32 1) }, 1
  %t16 = extractvalue { i64, ptr } { i64 20, ptr getelementptr inbounds (<{ i64, [20 x i8] }>, ptr @.d177, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t15, i64 %t16)
  br label %bb1
bb8:
  %t17 = extractvalue { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d178, i32 0, i32 1) }, 1
  %t18 = extractvalue { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d178, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t17, i64 %t18)
  br label %bb1
bb9:
  %t19 = extractvalue { i64, ptr } { i64 20, ptr getelementptr inbounds (<{ i64, [20 x i8] }>, ptr @.d179, i32 0, i32 1) }, 1
  %t20 = extractvalue { i64, ptr } { i64 20, ptr getelementptr inbounds (<{ i64, [20 x i8] }>, ptr @.d179, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t19, i64 %t20)
  br label %bb1
ret:
  ret void
}

@.d56 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d57 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"init " }>, align 8
@.d58 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c" top" }>, align 8
@.d59 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d60 = private constant <{ i64, [17 x i8] }> <{ i64 0, [17 x i8] c"any render table " }>, align 8
@.d61 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"_" }>, align 8
@.d62 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"L" }>, align 8
@.d63 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"G" }>, align 8
@.d64 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c":" }>, align 8
@.d65 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"." }>, align 8
@.d66 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"[L" }>, align 8
@.d67 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"]" }>, align 8
@.d68 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"[" }>, align 8
@.d69 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"]" }>, align 8
@.d70 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c".*" }>, align 8
@.d71 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c" as " }>, align 8
@.d72 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c", " }>, align 8
@.d73 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d74 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c" = " }>, align 8
@.d75 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"(" }>, align 8
@.d76 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c")" }>, align 8
@.d77 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c" [" }>, align 8
@.d78 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"]" }>, align 8
@.d79 = private constant <{ i64, [9 x i8] }> <{ i64 0, [9 x i8] c" copies [" }>, align 8
@.d80 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"]" }>, align 8
@.d81 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c" catch" }>, align 8
@.d82 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c" all" }>, align 8
@.d83 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d84 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"." }>, align 8
@.d85 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d86 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c" -> " }>, align 8
@.d87 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"param " }>, align 8
@.d88 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c"capture " }>, align 8
@.d89 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c"derived " }>, align 8
define linkonce_odr void @olang_2emir_2eHelperKind_2eRender_2ecompiler_2fmir_3aVarKind(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load i64, ptr %t1, !range !{i64 0, i64 7}
  switch i64 %t2, label %bb1 [ i64 0, label %bb2 i64 1, label %bb3 i64 2, label %bb4 i64 3, label %bb5 i64 4, label %bb6 i64 5, label %bb7 i64 6, label %bb8 ]
bb1:
  br label %ret
bb2:
  %t4 = extractvalue { i64, ptr } { i64 17, ptr getelementptr inbounds (<{ i64, [17 x i8] }>, ptr @.d180, i32 0, i32 1) }, 1
  %t5 = extractvalue { i64, ptr } { i64 17, ptr getelementptr inbounds (<{ i64, [17 x i8] }>, ptr @.d180, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t4, i64 %t5)
  %t6 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d181, i32 0, i32 1) }, 1
  %t7 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d181, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t6, i64 %t7)
  %t8 = load ptr, ptr %l0, !tbaa !29
  %t9 = getelementptr { i64, [1 x i64] }, ptr %t8, i32 0, i32 1
  %t10 = getelementptr { i64 }, ptr %t9, i32 0, i32 0
  %t11 = load i64, ptr %t10
  %t13 = call ptr @__olang_sb_room(ptr %v0, i64 24)
  %t14 = call i64 @__olang_fmt_i64(ptr %t13, i64 %t11)
  call void @__olang_sb_add(ptr %v0, i64 %t14)
  %t15 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d182, i32 0, i32 1) }, 1
  %t16 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d182, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t15, i64 %t16)
  br label %bb1
bb3:
  %t17 = extractvalue { i64, ptr } { i64 18, ptr getelementptr inbounds (<{ i64, [18 x i8] }>, ptr @.d183, i32 0, i32 1) }, 1
  %t18 = extractvalue { i64, ptr } { i64 18, ptr getelementptr inbounds (<{ i64, [18 x i8] }>, ptr @.d183, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t17, i64 %t18)
  br label %bb1
bb4:
  %t19 = extractvalue { i64, ptr } { i64 20, ptr getelementptr inbounds (<{ i64, [20 x i8] }>, ptr @.d184, i32 0, i32 1) }, 1
  %t20 = extractvalue { i64, ptr } { i64 20, ptr getelementptr inbounds (<{ i64, [20 x i8] }>, ptr @.d184, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t19, i64 %t20)
  br label %bb1
bb5:
  %t21 = extractvalue { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d185, i32 0, i32 1) }, 1
  %t22 = extractvalue { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d185, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t21, i64 %t22)
  br label %bb1
bb6:
  %t23 = extractvalue { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d186, i32 0, i32 1) }, 1
  %t24 = extractvalue { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d186, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t23, i64 %t24)
  %t25 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d181, i32 0, i32 1) }, 1
  %t26 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d181, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t25, i64 %t26)
  %t27 = load ptr, ptr %l0, !tbaa !29
  %t28 = getelementptr { i64, [1 x i64] }, ptr %t27, i32 0, i32 1
  %t29 = getelementptr { i64 }, ptr %t28, i32 0, i32 0
  %t30 = load i64, ptr %t29
  %t32 = call ptr @__olang_sb_room(ptr %v0, i64 24)
  %t33 = call i64 @__olang_fmt_i64(ptr %t32, i64 %t30)
  call void @__olang_sb_add(ptr %v0, i64 %t33)
  %t34 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d182, i32 0, i32 1) }, 1
  %t35 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d182, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t34, i64 %t35)
  br label %bb1
bb7:
  %t36 = extractvalue { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d187, i32 0, i32 1) }, 1
  %t37 = extractvalue { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d187, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t36, i64 %t37)
  %t38 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d181, i32 0, i32 1) }, 1
  %t39 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d181, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t38, i64 %t39)
  %t40 = load ptr, ptr %l0, !tbaa !29
  %t41 = getelementptr { i64, [1 x i64] }, ptr %t40, i32 0, i32 1
  %t42 = getelementptr { i64 }, ptr %t41, i32 0, i32 0
  %t43 = load i64, ptr %t42
  %t45 = call ptr @__olang_sb_room(ptr %v0, i64 24)
  %t46 = call i64 @__olang_fmt_i64(ptr %t45, i64 %t43)
  call void @__olang_sb_add(ptr %v0, i64 %t46)
  %t47 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d182, i32 0, i32 1) }, 1
  %t48 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d182, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t47, i64 %t48)
  br label %bb1
bb8:
  %t49 = extractvalue { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d188, i32 0, i32 1) }, 1
  %t50 = extractvalue { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d188, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t49, i64 %t50)
  br label %bb1
ret:
  ret void
}

@.d90 = private constant <{ i64, [24 x i8] }> <{ i64 0, [24 x i8] c"a switch with the value " }>, align 8
@.d91 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c" twice" }>, align 8
@olang_2esole_2ecompiler_2fmir_3averifier_2e6 = weak hidden constant i1 false
declare ptr @__olang_region_make(ptr) noinline
declare void @__olang_region_release(ptr) noinline
@olang_2esole_2ecompiler_2fmir_3averifier_2e7 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2fmir_3averifier_2e8 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2fmir_3averifier_2e9 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2fmir_3averifier_2e10 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2fmir_3averifier_2e11 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2fmir_3averifier_2e14 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2fmir_3averifier_2e15 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2fmir_3averifier_2e16 = weak hidden constant i1 false
@.d92 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c" is a " }>, align 8
@.d93 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c", not a " }>, align 8
@.d94 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c"operands" }>, align 8
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
  %t5 = extractvalue { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d189, i32 0, i32 1) }, 1
  %t6 = extractvalue { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d189, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t5, i64 %t6)
  br label %bb1
bb3:
  %t7 = extractvalue { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d190, i32 0, i32 1) }, 1
  %t8 = extractvalue { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d190, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t7, i64 %t8)
  br label %bb1
bb4:
  %t9 = extractvalue { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d191, i32 0, i32 1) }, 1
  %t10 = extractvalue { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d191, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t9, i64 %t10)
  br label %bb1
bb5:
  %t11 = extractvalue { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d192, i32 0, i32 1) }, 1
  %t12 = extractvalue { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d192, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t11, i64 %t12)
  br label %bb1
bb6:
  %t13 = extractvalue { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d193, i32 0, i32 1) }, 1
  %t14 = extractvalue { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d193, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t13, i64 %t14)
  br label %bb1
bb7:
  %t15 = extractvalue { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d194, i32 0, i32 1) }, 1
  %t16 = extractvalue { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d194, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t15, i64 %t16)
  br label %bb1
bb8:
  %t17 = extractvalue { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d195, i32 0, i32 1) }, 1
  %t18 = extractvalue { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d195, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t17, i64 %t18)
  br label %bb1
bb9:
  %t19 = extractvalue { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d196, i32 0, i32 1) }, 1
  %t20 = extractvalue { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d196, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t19, i64 %t20)
  br label %bb1
bb10:
  %t21 = extractvalue { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d197, i32 0, i32 1) }, 1
  %t22 = extractvalue { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d197, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t21, i64 %t22)
  br label %bb1
bb11:
  %t23 = extractvalue { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d198, i32 0, i32 1) }, 1
  %t24 = extractvalue { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d198, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t23, i64 %t24)
  br label %bb1
bb12:
  %t25 = extractvalue { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d199, i32 0, i32 1) }, 1
  %t26 = extractvalue { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d199, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t25, i64 %t26)
  br label %bb1
bb13:
  %t27 = extractvalue { i64, ptr } { i64 18, ptr getelementptr inbounds (<{ i64, [18 x i8] }>, ptr @.d200, i32 0, i32 1) }, 1
  %t28 = extractvalue { i64, ptr } { i64 18, ptr getelementptr inbounds (<{ i64, [18 x i8] }>, ptr @.d200, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t27, i64 %t28)
  br label %bb1
bb14:
  %t29 = extractvalue { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d201, i32 0, i32 1) }, 1
  %t30 = extractvalue { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d201, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t29, i64 %t30)
  br label %bb1
bb15:
  %t31 = extractvalue { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d202, i32 0, i32 1) }, 1
  %t32 = extractvalue { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d202, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t31, i64 %t32)
  br label %bb1
bb16:
  %t33 = extractvalue { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d203, i32 0, i32 1) }, 1
  %t34 = extractvalue { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d203, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t33, i64 %t34)
  br label %bb1
bb17:
  %t35 = extractvalue { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d204, i32 0, i32 1) }, 1
  %t36 = extractvalue { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d204, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t35, i64 %t36)
  br label %bb1
bb18:
  %t37 = extractvalue { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d205, i32 0, i32 1) }, 1
  %t38 = extractvalue { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d205, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t37, i64 %t38)
  br label %bb1
bb19:
  %t39 = extractvalue { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d206, i32 0, i32 1) }, 1
  %t40 = extractvalue { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d206, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t39, i64 %t40)
  br label %bb1
bb20:
  %t41 = extractvalue { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d207, i32 0, i32 1) }, 1
  %t42 = extractvalue { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d207, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t41, i64 %t42)
  br label %bb1
bb21:
  %t43 = extractvalue { i64, ptr } { i64 17, ptr getelementptr inbounds (<{ i64, [17 x i8] }>, ptr @.d208, i32 0, i32 1) }, 1
  %t44 = extractvalue { i64, ptr } { i64 17, ptr getelementptr inbounds (<{ i64, [17 x i8] }>, ptr @.d208, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t43, i64 %t44)
  br label %bb1
bb22:
  %t45 = extractvalue { i64, ptr } { i64 20, ptr getelementptr inbounds (<{ i64, [20 x i8] }>, ptr @.d209, i32 0, i32 1) }, 1
  %t46 = extractvalue { i64, ptr } { i64 20, ptr getelementptr inbounds (<{ i64, [20 x i8] }>, ptr @.d209, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t45, i64 %t46)
  br label %bb1
bb23:
  %t47 = extractvalue { i64, ptr } { i64 20, ptr getelementptr inbounds (<{ i64, [20 x i8] }>, ptr @.d210, i32 0, i32 1) }, 1
  %t48 = extractvalue { i64, ptr } { i64 20, ptr getelementptr inbounds (<{ i64, [20 x i8] }>, ptr @.d210, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t47, i64 %t48)
  br label %bb1
bb24:
  %t49 = extractvalue { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d211, i32 0, i32 1) }, 1
  %t50 = extractvalue { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d211, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t49, i64 %t50)
  br label %bb1
bb25:
  %t51 = extractvalue { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d212, i32 0, i32 1) }, 1
  %t52 = extractvalue { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d212, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t51, i64 %t52)
  br label %bb1
bb26:
  %t53 = extractvalue { i64, ptr } { i64 23, ptr getelementptr inbounds (<{ i64, [23 x i8] }>, ptr @.d213, i32 0, i32 1) }, 1
  %t54 = extractvalue { i64, ptr } { i64 23, ptr getelementptr inbounds (<{ i64, [23 x i8] }>, ptr @.d213, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t53, i64 %t54)
  br label %bb1
bb27:
  %t55 = extractvalue { i64, ptr } { i64 24, ptr getelementptr inbounds (<{ i64, [24 x i8] }>, ptr @.d214, i32 0, i32 1) }, 1
  %t56 = extractvalue { i64, ptr } { i64 24, ptr getelementptr inbounds (<{ i64, [24 x i8] }>, ptr @.d214, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t55, i64 %t56)
  br label %bb1
bb28:
  %t57 = extractvalue { i64, ptr } { i64 22, ptr getelementptr inbounds (<{ i64, [22 x i8] }>, ptr @.d215, i32 0, i32 1) }, 1
  %t58 = extractvalue { i64, ptr } { i64 22, ptr getelementptr inbounds (<{ i64, [22 x i8] }>, ptr @.d215, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t57, i64 %t58)
  br label %bb1
bb29:
  %t59 = extractvalue { i64, ptr } { i64 23, ptr getelementptr inbounds (<{ i64, [23 x i8] }>, ptr @.d216, i32 0, i32 1) }, 1
  %t60 = extractvalue { i64, ptr } { i64 23, ptr getelementptr inbounds (<{ i64, [23 x i8] }>, ptr @.d216, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t59, i64 %t60)
  br label %bb1
bb30:
  %t61 = extractvalue { i64, ptr } { i64 30, ptr getelementptr inbounds (<{ i64, [30 x i8] }>, ptr @.d217, i32 0, i32 1) }, 1
  %t62 = extractvalue { i64, ptr } { i64 30, ptr getelementptr inbounds (<{ i64, [30 x i8] }>, ptr @.d217, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t61, i64 %t62)
  br label %bb1
bb31:
  %t63 = extractvalue { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d218, i32 0, i32 1) }, 1
  %t64 = extractvalue { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d218, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t63, i64 %t64)
  br label %bb1
bb32:
  %t65 = extractvalue { i64, ptr } { i64 17, ptr getelementptr inbounds (<{ i64, [17 x i8] }>, ptr @.d219, i32 0, i32 1) }, 1
  %t66 = extractvalue { i64, ptr } { i64 17, ptr getelementptr inbounds (<{ i64, [17 x i8] }>, ptr @.d219, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t65, i64 %t66)
  br label %bb1
bb33:
  %t67 = extractvalue { i64, ptr } { i64 25, ptr getelementptr inbounds (<{ i64, [25 x i8] }>, ptr @.d220, i32 0, i32 1) }, 1
  %t68 = extractvalue { i64, ptr } { i64 25, ptr getelementptr inbounds (<{ i64, [25 x i8] }>, ptr @.d220, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t67, i64 %t68)
  br label %bb1
bb34:
  %t69 = extractvalue { i64, ptr } { i64 26, ptr getelementptr inbounds (<{ i64, [26 x i8] }>, ptr @.d221, i32 0, i32 1) }, 1
  %t70 = extractvalue { i64, ptr } { i64 26, ptr getelementptr inbounds (<{ i64, [26 x i8] }>, ptr @.d221, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t69, i64 %t70)
  br label %bb1
bb35:
  %t71 = extractvalue { i64, ptr } { i64 21, ptr getelementptr inbounds (<{ i64, [21 x i8] }>, ptr @.d222, i32 0, i32 1) }, 1
  %t72 = extractvalue { i64, ptr } { i64 21, ptr getelementptr inbounds (<{ i64, [21 x i8] }>, ptr @.d222, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t71, i64 %t72)
  br label %bb1
bb36:
  %t73 = extractvalue { i64, ptr } { i64 23, ptr getelementptr inbounds (<{ i64, [23 x i8] }>, ptr @.d223, i32 0, i32 1) }, 1
  %t74 = extractvalue { i64, ptr } { i64 23, ptr getelementptr inbounds (<{ i64, [23 x i8] }>, ptr @.d223, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t73, i64 %t74)
  br label %bb1
bb37:
  %t75 = extractvalue { i64, ptr } { i64 24, ptr getelementptr inbounds (<{ i64, [24 x i8] }>, ptr @.d224, i32 0, i32 1) }, 1
  %t76 = extractvalue { i64, ptr } { i64 24, ptr getelementptr inbounds (<{ i64, [24 x i8] }>, ptr @.d224, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t75, i64 %t76)
  br label %bb1
bb38:
  %t77 = extractvalue { i64, ptr } { i64 21, ptr getelementptr inbounds (<{ i64, [21 x i8] }>, ptr @.d225, i32 0, i32 1) }, 1
  %t78 = extractvalue { i64, ptr } { i64 21, ptr getelementptr inbounds (<{ i64, [21 x i8] }>, ptr @.d225, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t77, i64 %t78)
  br label %bb1
bb39:
  %t79 = extractvalue { i64, ptr } { i64 18, ptr getelementptr inbounds (<{ i64, [18 x i8] }>, ptr @.d226, i32 0, i32 1) }, 1
  %t80 = extractvalue { i64, ptr } { i64 18, ptr getelementptr inbounds (<{ i64, [18 x i8] }>, ptr @.d226, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t79, i64 %t80)
  br label %bb1
bb40:
  %t81 = extractvalue { i64, ptr } { i64 20, ptr getelementptr inbounds (<{ i64, [20 x i8] }>, ptr @.d227, i32 0, i32 1) }, 1
  %t82 = extractvalue { i64, ptr } { i64 20, ptr getelementptr inbounds (<{ i64, [20 x i8] }>, ptr @.d227, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t81, i64 %t82)
  br label %bb1
bb41:
  %t83 = extractvalue { i64, ptr } { i64 21, ptr getelementptr inbounds (<{ i64, [21 x i8] }>, ptr @.d228, i32 0, i32 1) }, 1
  %t84 = extractvalue { i64, ptr } { i64 21, ptr getelementptr inbounds (<{ i64, [21 x i8] }>, ptr @.d228, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t83, i64 %t84)
  br label %bb1
bb42:
  %t85 = extractvalue { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d229, i32 0, i32 1) }, 1
  %t86 = extractvalue { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d229, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t85, i64 %t86)
  br label %bb1
bb43:
  %t87 = extractvalue { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d230, i32 0, i32 1) }, 1
  %t88 = extractvalue { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d230, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t87, i64 %t88)
  br label %bb1
bb44:
  %t89 = extractvalue { i64, ptr } { i64 20, ptr getelementptr inbounds (<{ i64, [20 x i8] }>, ptr @.d231, i32 0, i32 1) }, 1
  %t90 = extractvalue { i64, ptr } { i64 20, ptr getelementptr inbounds (<{ i64, [20 x i8] }>, ptr @.d231, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t89, i64 %t90)
  br label %bb1
bb45:
  %t91 = extractvalue { i64, ptr } { i64 24, ptr getelementptr inbounds (<{ i64, [24 x i8] }>, ptr @.d232, i32 0, i32 1) }, 1
  %t92 = extractvalue { i64, ptr } { i64 24, ptr getelementptr inbounds (<{ i64, [24 x i8] }>, ptr @.d232, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t91, i64 %t92)
  br label %bb1
bb46:
  %t93 = extractvalue { i64, ptr } { i64 18, ptr getelementptr inbounds (<{ i64, [18 x i8] }>, ptr @.d233, i32 0, i32 1) }, 1
  %t94 = extractvalue { i64, ptr } { i64 18, ptr getelementptr inbounds (<{ i64, [18 x i8] }>, ptr @.d233, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t93, i64 %t94)
  br label %bb1
bb47:
  %t95 = extractvalue { i64, ptr } { i64 20, ptr getelementptr inbounds (<{ i64, [20 x i8] }>, ptr @.d234, i32 0, i32 1) }, 1
  %t96 = extractvalue { i64, ptr } { i64 20, ptr getelementptr inbounds (<{ i64, [20 x i8] }>, ptr @.d234, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t95, i64 %t96)
  br label %bb1
bb48:
  %t97 = extractvalue { i64, ptr } { i64 22, ptr getelementptr inbounds (<{ i64, [22 x i8] }>, ptr @.d235, i32 0, i32 1) }, 1
  %t98 = extractvalue { i64, ptr } { i64 22, ptr getelementptr inbounds (<{ i64, [22 x i8] }>, ptr @.d235, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t97, i64 %t98)
  br label %bb1
bb49:
  %t99 = extractvalue { i64, ptr } { i64 21, ptr getelementptr inbounds (<{ i64, [21 x i8] }>, ptr @.d236, i32 0, i32 1) }, 1
  %t100 = extractvalue { i64, ptr } { i64 21, ptr getelementptr inbounds (<{ i64, [21 x i8] }>, ptr @.d236, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t99, i64 %t100)
  br label %bb1
bb50:
  %t101 = extractvalue { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d237, i32 0, i32 1) }, 1
  %t102 = extractvalue { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d237, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t101, i64 %t102)
  br label %bb1
bb51:
  %t103 = extractvalue { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d238, i32 0, i32 1) }, 1
  %t104 = extractvalue { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d238, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t103, i64 %t104)
  br label %bb1
bb52:
  %t105 = extractvalue { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d239, i32 0, i32 1) }, 1
  %t106 = extractvalue { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d239, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t105, i64 %t106)
  br label %bb1
bb53:
  %t107 = extractvalue { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d240, i32 0, i32 1) }, 1
  %t108 = extractvalue { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d240, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t107, i64 %t108)
  br label %bb1
ret:
  ret void
}

@.d95 = private constant <{ i64, [39 x i8] }> <{ i64 0, [39 x i8] c" is a check: a test and a branch in MIR" }>, align 8
@.d96 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c" of " }>, align 8
@.d97 = private constant <{ i64, [9 x i8] }> <{ i64 0, [9 x i8] c" operands" }>, align 8
@.d98 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c" of a " }>, align 8
@.d99 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c" of a " }>, align 8
@.d100 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c" of a " }>, align 8
@.d101 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c" of a " }>, align 8
@.d102 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c" typed " }>, align 8
@.d103 = private constant <{ i64, [9 x i8] }> <{ i64 0, [9 x i8] c"Not of a " }>, align 8
@.d104 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c" of a " }>, align 8
@.d105 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c" and a " }>, align 8
@.d106 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c" of a " }>, align 8
@.d107 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c" typed " }>, align 8
@.d108 = private constant <{ i64, [10 x i8] }> <{ i64 0, [10 x i8] c"Same of a " }>, align 8
@.d109 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c" and a " }>, align 8
@.d110 = private constant <{ i64, [11 x i8] }> <{ i64 0, [11 x i8] c"Same typed " }>, align 8
@.d111 = private constant <{ i64, [9 x i8] }> <{ i64 0, [9 x i8] c"Len of a " }>, align 8
@.d112 = private constant <{ i64, [10 x i8] }> <{ i64 0, [10 x i8] c"Len typed " }>, align 8
@.d113 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c" of a " }>, align 8
@.d114 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c" typed " }>, align 8
@.d115 = private constant <{ i64, [14 x i8] }> <{ i64 0, [14 x i8] c"ByteSwap of a " }>, align 8
@.d116 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c" of a " }>, align 8
@.d117 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c" of a " }>, align 8
@.d118 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c" of a " }>, align 8
@.d119 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c" typed " }>, align 8
@.d120 = private constant <{ i64, [12 x i8] }> <{ i64 0, [12 x i8] c"Retire of a " }>, align 8
@.d121 = private constant <{ i64, [13 x i8] }> <{ i64 0, [13 x i8] c"Retire typed " }>, align 8
@.d122 = private constant <{ i64, [12 x i8] }> <{ i64 0, [12 x i8] c"IsCase of a " }>, align 8
@.d123 = private constant <{ i64, [13 x i8] }> <{ i64 0, [13 x i8] c"IsCase typed " }>, align 8
@.d124 = private constant <{ i64, [13 x i8] }> <{ i64 0, [13 x i8] c"AnyMake of a " }>, align 8
@.d125 = private constant <{ i64, [14 x i8] }> <{ i64 0, [14 x i8] c"AnyMake typed " }>, align 8
@.d126 = private constant <{ i64, [26 x i8] }> <{ i64 0, [26 x i8] c"AnyMake's table not an I64" }>, align 8
@.d127 = private constant <{ i64, [17 x i8] }> <{ i64 0, [17 x i8] c"AnyInstance of a " }>, align 8
@.d128 = private constant <{ i64, [18 x i8] }> <{ i64 0, [18 x i8] c"AnyInstance typed " }>, align 8
@.d129 = private constant <{ i64, [11 x i8] }> <{ i64 0, [11 x i8] c"AnyIs of a " }>, align 8
@.d130 = private constant <{ i64, [12 x i8] }> <{ i64 0, [12 x i8] c"AnyIs typed " }>, align 8
@.d131 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c" of a " }>, align 8
@.d132 = private constant <{ i64, [19 x i8] }> <{ i64 0, [19 x i8] c"'s field not an I64" }>, align 8
@.d133 = private constant <{ i64, [13 x i8] }> <{ i64 0, [13 x i8] c"Repack typed " }>, align 8
@.d134 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c" of a " }>, align 8
@.d135 = private constant <{ i64, [40 x i8] }> <{ i64 0, [40 x i8] c", not a writable reference to an integer" }>, align 8
@.d136 = private constant <{ i64, [11 x i8] }> <{ i64 0, [11 x i8] c"'s operand " }>, align 8
@.d137 = private constant <{ i64, [18 x i8] }> <{ i64 0, [18 x i8] c"AtomicStore typed " }>, align 8
@.d138 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c" typed " }>, align 8
@.d139 = private constant <{ i64, [9 x i8] }> <{ i64 0, [9 x i8] c"no field " }>, align 8
@.d140 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c" in a " }>, align 8
@.d141 = private constant <{ i64, [10 x i8] }> <{ i64 0, [10 x i8] c"an index L" }>, align 8
@.d142 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c" is a " }>, align 8
@.d143 = private constant <{ i64, [16 x i8] }> <{ i64 0, [16 x i8] c"an index into a " }>, align 8
@.d144 = private constant <{ i64, [14 x i8] }> <{ i64 0, [14 x i8] c", not an array" }>, align 8
@.d145 = private constant <{ i64, [16 x i8] }> <{ i64 0, [16 x i8] c"an index into a " }>, align 8
@.d146 = private constant <{ i64, [14 x i8] }> <{ i64 0, [14 x i8] c", not an array" }>, align 8
@.d147 = private constant <{ i64, [15 x i8] }> <{ i64 0, [15 x i8] c"constant index " }>, align 8
@.d148 = private constant <{ i64, [11 x i8] }> <{ i64 0, [11 x i8] c" outside a " }>, align 8
@.d149 = private constant <{ i64, [13 x i8] }> <{ i64 0, [13 x i8] c"a deref of a " }>, align 8
@.d150 = private constant <{ i64, [17 x i8] }> <{ i64 0, [17 x i8] c", not a reference" }>, align 8
@.d151 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c"no case " }>, align 8
@.d152 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c" in a " }>, align 8
@.d153 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"case " }>, align 8
@.d154 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c" of a " }>, align 8
@.d155 = private constant <{ i64, [15 x i8] }> <{ i64 0, [15 x i8] c" has no payload" }>, align 8
@.d156 = private constant <{ i64, [10 x i8] }> <{ i64 0, [10 x i8] c"no scope S" }>, align 8
@.d157 = private constant <{ i64, [14 x i8] }> <{ i64 0, [14 x i8] c"the case of a " }>, align 8
@.d158 = private constant <{ i64, [13 x i8] }> <{ i64 0, [13 x i8] c", not an enum" }>, align 8
@.d159 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"S" }>, align 8
@.d160 = private constant <{ i64, [26 x i8] }> <{ i64 0, [26 x i8] c" used where it is not open" }>, align 8
@olang_2esole_2ecompiler_2fmir_3aFn_2e4 = weak hidden constant i1 false
declare ptr @__olang_region_or(ptr, ptr)
declare void @__olang_region_settle(ptr, i1)
@olang_2esole_2ecompiler_2fmir_3aFn_2e5 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2fmir_3aFn_2e15 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2fmir_3aFn_2e18 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2fmir_3aFn_2e19 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2fmir_3aFn_2e20 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2fmir_3aFn_2e21 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2fmir_3aFn_2e22 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2fmir_3aFn_2e23 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2fmir_3aFn_2e24 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2fmir_3aFn_2e27 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2fmir_3aFn_2e28 = weak hidden constant i1 false
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
@.d161 = private unnamed_addr constant <{ i64, [19 x i8] }> <{ i64 0, [19 x i8] c"mir.LocalKind.Param" }>, align 8
declare void @__olang_sb_put(ptr, ptr, i64)
@.d162 = private unnamed_addr constant <{ i64, [21 x i8] }> <{ i64 0, [21 x i8] c"mir.LocalKind.Capture" }>, align 8
@.d163 = private unnamed_addr constant <{ i64, [17 x i8] }> <{ i64 0, [17 x i8] c"mir.LocalKind.Var" }>, align 8
@.d164 = private unnamed_addr constant <{ i64, [18 x i8] }> <{ i64 0, [18 x i8] c"mir.LocalKind.Temp" }>, align 8
@.d165 = private unnamed_addr constant <{ i64, [19 x i8] }> <{ i64 0, [19 x i8] c"mir.ScopeKind.Frame" }>, align 8
@.d166 = private unnamed_addr constant <{ i64, [19 x i8] }> <{ i64 0, [19 x i8] c"mir.ScopeKind.Block" }>, align 8
@.d167 = private unnamed_addr constant <{ i64, [18 x i8] }> <{ i64 0, [18 x i8] c"mir.ScopeKind.Loop" }>, align 8
@.d168 = private unnamed_addr constant <{ i64, [18 x i8] }> <{ i64 0, [18 x i8] c"mir.ScopeKind.Join" }>, align 8
@.d169 = private unnamed_addr constant <{ i64, [20 x i8] }> <{ i64 0, [20 x i8] c"mir.ScopeKind.Region" }>, align 8
@.d170 = private unnamed_addr constant <{ i64, [19 x i8] }> <{ i64 0, [19 x i8] c"mir.ScopeKind.Inert" }>, align 8
@.d171 = private unnamed_addr constant <{ i64, [21 x i8] }> <{ i64 0, [21 x i8] c"mir.ScopeKind.Builder" }>, align 8
@.d172 = private unnamed_addr constant <{ i64, [21 x i8] }> <{ i64 0, [21 x i8] c"mir.HelperKind.Render" }>, align 8
@.d173 = private unnamed_addr constant <{ i64, [20 x i8] }> <{ i64 0, [20 x i8] c"mir.HelperKind.Equal" }>, align 8
@.d174 = private unnamed_addr constant <{ i64, [19 x i8] }> <{ i64 0, [19 x i8] c"mir.HelperKind.Hash" }>, align 8
@.d175 = private unnamed_addr constant <{ i64, [19 x i8] }> <{ i64 0, [19 x i8] c"mir.HelperKind.Zero" }>, align 8
@.d176 = private unnamed_addr constant <{ i64, [19 x i8] }> <{ i64 0, [19 x i8] c"mir.HelperKind.Copy" }>, align 8
@.d177 = private unnamed_addr constant <{ i64, [20 x i8] }> <{ i64 0, [20 x i8] c"mir.HelperKind.Parts" }>, align 8
@.d178 = private unnamed_addr constant <{ i64, [19 x i8] }> <{ i64 0, [19 x i8] c"mir.HelperKind.Drop" }>, align 8
@.d179 = private unnamed_addr constant <{ i64, [20 x i8] }> <{ i64 0, [20 x i8] c"mir.HelperKind.Guard" }>, align 8
@.d180 = private unnamed_addr constant <{ i64, [17 x i8] }> <{ i64 0, [17 x i8] c"mir.VarKind.Param" }>, align 8
@.d181 = private unnamed_addr constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"(" }>, align 8
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
declare void @__olang_sb_add(ptr, i64)
@.d182 = private unnamed_addr constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c")" }>, align 8
@.d183 = private unnamed_addr constant <{ i64, [18 x i8] }> <{ i64 0, [18 x i8] c"mir.VarKind.Result" }>, align 8
@.d184 = private unnamed_addr constant <{ i64, [20 x i8] }> <{ i64 0, [20 x i8] c"mir.VarKind.Instance" }>, align 8
@.d185 = private unnamed_addr constant <{ i64, [19 x i8] }> <{ i64 0, [19 x i8] c"mir.VarKind.Closing" }>, align 8
@.d186 = private unnamed_addr constant <{ i64, [19 x i8] }> <{ i64 0, [19 x i8] c"mir.VarKind.Capture" }>, align 8
@.d187 = private unnamed_addr constant <{ i64, [19 x i8] }> <{ i64 0, [19 x i8] c"mir.VarKind.Derived" }>, align 8
@.d188 = private unnamed_addr constant <{ i64, [19 x i8] }> <{ i64 0, [19 x i8] c"mir.VarKind.Builder" }>, align 8
@.d189 = private unnamed_addr constant <{ i64, [16 x i8] }> <{ i64 0, [16 x i8] c"typed.PrimOp.Neg" }>, align 8
@.d190 = private unnamed_addr constant <{ i64, [19 x i8] }> <{ i64 0, [19 x i8] c"typed.PrimOp.BitNot" }>, align 8
@.d191 = private unnamed_addr constant <{ i64, [16 x i8] }> <{ i64 0, [16 x i8] c"typed.PrimOp.Not" }>, align 8
@.d192 = private unnamed_addr constant <{ i64, [16 x i8] }> <{ i64 0, [16 x i8] c"typed.PrimOp.Add" }>, align 8
@.d193 = private unnamed_addr constant <{ i64, [16 x i8] }> <{ i64 0, [16 x i8] c"typed.PrimOp.Sub" }>, align 8
@.d194 = private unnamed_addr constant <{ i64, [16 x i8] }> <{ i64 0, [16 x i8] c"typed.PrimOp.Mul" }>, align 8
@.d195 = private unnamed_addr constant <{ i64, [16 x i8] }> <{ i64 0, [16 x i8] c"typed.PrimOp.Div" }>, align 8
@.d196 = private unnamed_addr constant <{ i64, [16 x i8] }> <{ i64 0, [16 x i8] c"typed.PrimOp.Rem" }>, align 8
@.d197 = private unnamed_addr constant <{ i64, [16 x i8] }> <{ i64 0, [16 x i8] c"typed.PrimOp.Shl" }>, align 8
@.d198 = private unnamed_addr constant <{ i64, [16 x i8] }> <{ i64 0, [16 x i8] c"typed.PrimOp.Shr" }>, align 8
@.d199 = private unnamed_addr constant <{ i64, [19 x i8] }> <{ i64 0, [19 x i8] c"typed.PrimOp.BitAnd" }>, align 8
@.d200 = private unnamed_addr constant <{ i64, [18 x i8] }> <{ i64 0, [18 x i8] c"typed.PrimOp.BitOr" }>, align 8
@.d201 = private unnamed_addr constant <{ i64, [19 x i8] }> <{ i64 0, [19 x i8] c"typed.PrimOp.BitXor" }>, align 8
@.d202 = private unnamed_addr constant <{ i64, [15 x i8] }> <{ i64 0, [15 x i8] c"typed.PrimOp.Eq" }>, align 8
@.d203 = private unnamed_addr constant <{ i64, [15 x i8] }> <{ i64 0, [15 x i8] c"typed.PrimOp.Ne" }>, align 8
@.d204 = private unnamed_addr constant <{ i64, [15 x i8] }> <{ i64 0, [15 x i8] c"typed.PrimOp.Lt" }>, align 8
@.d205 = private unnamed_addr constant <{ i64, [15 x i8] }> <{ i64 0, [15 x i8] c"typed.PrimOp.Le" }>, align 8
@.d206 = private unnamed_addr constant <{ i64, [15 x i8] }> <{ i64 0, [15 x i8] c"typed.PrimOp.Gt" }>, align 8
@.d207 = private unnamed_addr constant <{ i64, [15 x i8] }> <{ i64 0, [15 x i8] c"typed.PrimOp.Ge" }>, align 8
@.d208 = private unnamed_addr constant <{ i64, [17 x i8] }> <{ i64 0, [17 x i8] c"typed.PrimOp.Same" }>, align 8
@.d209 = private unnamed_addr constant <{ i64, [20 x i8] }> <{ i64 0, [20 x i8] c"typed.PrimOp.Convert" }>, align 8
@.d210 = private unnamed_addr constant <{ i64, [20 x i8] }> <{ i64 0, [20 x i8] c"typed.PrimOp.Bitcast" }>, align 8
@.d211 = private unnamed_addr constant <{ i64, [16 x i8] }> <{ i64 0, [16 x i8] c"typed.PrimOp.Len" }>, align 8
@.d212 = private unnamed_addr constant <{ i64, [19 x i8] }> <{ i64 0, [19 x i8] c"typed.PrimOp.IsCase" }>, align 8
@.d213 = private unnamed_addr constant <{ i64, [23 x i8] }> <{ i64 0, [23 x i8] c"typed.PrimOp.AtomicLoad" }>, align 8
@.d214 = private unnamed_addr constant <{ i64, [24 x i8] }> <{ i64 0, [24 x i8] c"typed.PrimOp.AtomicStore" }>, align 8
@.d215 = private unnamed_addr constant <{ i64, [22 x i8] }> <{ i64 0, [22 x i8] c"typed.PrimOp.AtomicAdd" }>, align 8
@.d216 = private unnamed_addr constant <{ i64, [23 x i8] }> <{ i64 0, [23 x i8] c"typed.PrimOp.AtomicSwap" }>, align 8
@.d217 = private unnamed_addr constant <{ i64, [30 x i8] }> <{ i64 0, [30 x i8] c"typed.PrimOp.AtomicCompareSwap" }>, align 8
@.d218 = private unnamed_addr constant <{ i64, [19 x i8] }> <{ i64 0, [19 x i8] c"typed.PrimOp.Retire" }>, align 8
@.d219 = private unnamed_addr constant <{ i64, [17 x i8] }> <{ i64 0, [17 x i8] c"typed.PrimOp.Drop" }>, align 8
@.d220 = private unnamed_addr constant <{ i64, [25 x i8] }> <{ i64 0, [25 x i8] c"typed.PrimOp.LeadingZeros" }>, align 8
@.d221 = private unnamed_addr constant <{ i64, [26 x i8] }> <{ i64 0, [26 x i8] c"typed.PrimOp.TrailingZeros" }>, align 8
@.d222 = private unnamed_addr constant <{ i64, [21 x i8] }> <{ i64 0, [21 x i8] c"typed.PrimOp.PopCount" }>, align 8
@.d223 = private unnamed_addr constant <{ i64, [23 x i8] }> <{ i64 0, [23 x i8] c"typed.PrimOp.RotateLeft" }>, align 8
@.d224 = private unnamed_addr constant <{ i64, [24 x i8] }> <{ i64 0, [24 x i8] c"typed.PrimOp.RotateRight" }>, align 8
@.d225 = private unnamed_addr constant <{ i64, [21 x i8] }> <{ i64 0, [21 x i8] c"typed.PrimOp.ByteSwap" }>, align 8
@.d226 = private unnamed_addr constant <{ i64, [18 x i8] }> <{ i64 0, [18 x i8] c"typed.PrimOp.Holds" }>, align 8
@.d227 = private unnamed_addr constant <{ i64, [20 x i8] }> <{ i64 0, [20 x i8] c"typed.PrimOp.LaneLen" }>, align 8
@.d228 = private unnamed_addr constant <{ i64, [21 x i8] }> <{ i64 0, [21 x i8] c"typed.PrimOp.NonEmpty" }>, align 8
@.d229 = private unnamed_addr constant <{ i64, [19 x i8] }> <{ i64 0, [19 x i8] c"typed.PrimOp.Unpack" }>, align 8
@.d230 = private unnamed_addr constant <{ i64, [19 x i8] }> <{ i64 0, [19 x i8] c"typed.PrimOp.Repack" }>, align 8
@.d231 = private unnamed_addr constant <{ i64, [20 x i8] }> <{ i64 0, [20 x i8] c"typed.PrimOp.AnyMake" }>, align 8
@.d232 = private unnamed_addr constant <{ i64, [24 x i8] }> <{ i64 0, [24 x i8] c"typed.PrimOp.AnyInstance" }>, align 8
@.d233 = private unnamed_addr constant <{ i64, [18 x i8] }> <{ i64 0, [18 x i8] c"typed.PrimOp.AnyIs" }>, align 8
@.d234 = private unnamed_addr constant <{ i64, [20 x i8] }> <{ i64 0, [20 x i8] c"typed.PrimOp.ErrPush" }>, align 8
@.d235 = private unnamed_addr constant <{ i64, [22 x i8] }> <{ i64 0, [22 x i8] c"typed.PrimOp.ErrCaught" }>, align 8
@.d236 = private unnamed_addr constant <{ i64, [21 x i8] }> <{ i64 0, [21 x i8] c"typed.PrimOp.ErrTaken" }>, align 8
@.d237 = private unnamed_addr constant <{ i64, [19 x i8] }> <{ i64 0, [19 x i8] c"typed.PrimOp.SatAdd" }>, align 8
@.d238 = private unnamed_addr constant <{ i64, [19 x i8] }> <{ i64 0, [19 x i8] c"typed.PrimOp.SatSub" }>, align 8
@.d239 = private unnamed_addr constant <{ i64, [19 x i8] }> <{ i64 0, [19 x i8] c"typed.PrimOp.SatMul" }>, align 8
@.d240 = private unnamed_addr constant <{ i64, [19 x i8] }> <{ i64 0, [19 x i8] c"typed.PrimOp.SatShl" }>, align 8
declare ptr @__olang_sb_grow(ptr, i64) noinline
@olang_loc_84efd3c782aef4d6_8c92393edf5749f2 = external constant [0 x i8]
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePrim(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eList(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eFunc(ptr %v0, ptr %a0, i32 %a1, i32 %a2, i32 %a3, i32 %a4, i64 %a5, i1 %a6, i32 %a7, i64 %a8)
declare void @compiler_2fmir_2eFn_2etfn(ptr %out, ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare i32 @compiler_2fsource_2ecompiler_2fsource_3aNames_2eIntern(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
@G_2ecompiler_2fmir_2eSp0 = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>, align 8
declare %"compiler/mir:Local" @compiler_2fmir_3aLocal_2ector(ptr %v0, i32 %a0, %"compiler/source:Span" %a1, i32 %a2, i32 %a3, { i64, [1 x i64] } %a4)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aLocal_3e_2eSetAt_3ccompiler_2fmir_3aLocal_3e(ptr %v0, ptr %a0, i64 %a1, %"compiler/mir:Local" %a2)
declare %"compiler/mir:Lvalue" @compiler_2fmir_2eLvalue_2eL(i32 %a0)
declare %"compiler/mir:Range" @compiler_2fmir_2ecompiler_2fmir_3aFn_2eArgs(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare void @compiler_2fmir_2ecompiler_2fmir_3aFn_2eAdd(ptr %v0, ptr %v1, ptr %a0, i32 %a1, ptr %a2)
declare void @compiler_2fmir_2ecompiler_2fmir_3aFn_2eEnd(ptr %v0, ptr %a0, i32 %a1, { i64, [8 x i64] } %a2)
@G_2ecompiler_2ftypes_2eBoolT = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\02\00\00\00" }>, align 8
@G_2ecompiler_2ftypes_2eWritable = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\01\00\00\00\00\00\00\00" }>, align 8
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRef(ptr %v0, ptr %a0, i32 %a1, i64 %a2)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eTuple(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclKindOf(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eHasBody(ptr %v0, ptr %a0, i32 %a1)
@olang_loc_f17cf97eff0353b6_fea489b4a6f80ab2 = external constant [0 x i8]
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aConstNode_3e_2ePush_3ccompiler_2fmir_3aConstNode_3e(ptr %v0, ptr %a0, { i64, [1 x i64] } %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aConstNode_3e_2eLen_3ccompiler_2fmir_3aConstNode_3e(ptr %v0, ptr %a0)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aLocal_3e_2ePush_3ccompiler_2fmir_3aLocal_3e(ptr %v0, ptr %a0, %"compiler/mir:Local" %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aLocal_3e_2eLen_3ccompiler_2fmir_3aLocal_3e(ptr %v0, ptr %a0)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aLvalue_3e_2eLen_3ccompiler_2fmir_3aLvalue_3e(ptr %v0, ptr %a0)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aLvalue_3e_2ePush_3ccompiler_2fmir_3aLvalue_3e(ptr %v0, ptr %a0, %"compiler/mir:Lvalue" %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aTaskClause_3e_2eLen_3ccompiler_2fmir_3aTaskClause_3e(ptr %v0, ptr %a0)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aTaskClause_3e_2ePush_3ccompiler_2fmir_3aTaskClause_3e(ptr %v0, ptr %a0, %"compiler/mir:TaskClause" %a1)
declare %"compiler/mir:Range" @compiler_2fmir_3aRange_2ector(ptr %v0, i32 %a0, i32 %a1)
declare %"compiler/mir:Task" @compiler_2fmir_3aTask_2ector(ptr %v0, { i64, [7 x i64] } %a0, %"compiler/mir:Range" %a1, %"compiler/mir:Range" %a2, %"compiler/mir:Range" %a3, %"compiler/mir:Range" %a4, %"compiler/mir:Range" %a5, %"compiler/source:Span" %a6, %"compiler/mir:Range" %a7)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aTask_3e_2ePush_3ccompiler_2fmir_3aTask_3e(ptr %v0, ptr %a0, %"compiler/mir:Task" %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aTask_3e_2eLen_3ccompiler_2fmir_3aTask_3e(ptr %v0, ptr %a0)
declare %"compiler/mir:dumper" @compiler_2fmir_3adumper_2ector(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1)
declare { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %v0, ptr %v1, ptr %a0)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aScopeRef_3e_2eLen_3ccompiler_2fmir_3aScopeRef_3e(ptr %v0, ptr %a0)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aScopeRef_3e_2ePush_3ccompiler_2fmir_3aScopeRef_3e(ptr %v0, ptr %a0, { i64, [1 x i64] } %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aBasicBlock_3e_2eLen_3ccompiler_2fmir_3aBasicBlock_3e(ptr %v0, ptr %a0)
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aBasicBlock_3e_2eRef_3ccompiler_2fmir_3aBasicBlock_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i64 @compiler_2fmir_2ecompiler_2fmir_3aStmtList_2eLen(ptr %v0, ptr %a0)
declare { i64, [21 x i64] } @compiler_2fmir_2ecompiler_2fmir_3aStmtList_2eAt(ptr %v0, ptr %a0, i64 %a1)
declare i1 @compiler_2fmir_2ewritesInto(ptr %v0, ptr %a0, { i64, [21 x i64] } %a1, i32 %a2)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cU8_3e_2eLen_3cU8_3e(ptr %v0, ptr %a0)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cU8_3e_2ePush_3cU8_3e(ptr %v0, ptr %a0, i8 %a1)
@olang_loc_5b04576c3a0c01b1_2f8c01babecc81b5 = external constant [0 x i8]
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI32_3e_2eLen_3cI32_3e(ptr %v0, ptr %a0)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI32_3e_2ePush_3cI32_3e(ptr %v0, ptr %a0, i32 %a1)
declare i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId_2c_20Bool_3e_Hb3133f486435530b533aaf49461c92b5(ptr %v0, ptr %a0, i32 %a1)
declare { i32, { i64, ptr } } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId_2c_20Array_3_H9dd488aeab1c4e3b4eaf3c87952809f7(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
@olang_loc_9e578d4a76e07e29_c5393b38d948487d = external constant [0 x i8]
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2ePut_3cI64_2c_20Bool_3e(ptr %v0, ptr %a0, i64 %a1, i1 %a2)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %a0, i64 %a1)
declare { i32, i1 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId_2c_20Bool_3e_H257d83b06934604763b32ef91c51c1d2(ptr %v0, ptr %a0, i32 %a1)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId_2c_20Bool_3e_H64d9be73b6c9bed004c541bdf7f0ca0a(ptr %v0, ptr %a0, i32 %a1, i1 %a2)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %a0)
@olang_loc_c209cb0367c4335c_95d00450bc19b50 = external constant [0 x i8]
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %a0, i64 %a1)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId_2c_20Array_3_H3267bccc58f311a634d5a63955645239(ptr %v0, ptr %v1, ptr %a0, i32 %a1, { i64, ptr } %a2)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eClear_3cI64_3e(ptr %v0, ptr %a0)
declare i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_2c_20Boo_Hb38d151ad2865ce380f5e3d42761bdf3(ptr %v0, ptr %a0, { i64, ptr } %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eReferent(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2fmir_2ecompiler_2fmir_3aGenInfo_2eIsGen(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i32 %a2)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eElem(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2fmir_2eFieldsOf(ptr %v0, ptr %a0, i32 %a1)
declare { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare i1 @compiler_2fmir_2eHasCases(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2fmir_2eCasesOf(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParts(ptr %v0, ptr %a0, i32 %a1)
@olang_loc_14ebfa33b1d03356_270fe526a4636ad2 = external constant [0 x i8]
declare void @compiler_2fmir_2ecompiler_2fmir_3aStmtList_2eroom(ptr %v0, ptr %a0, { i64, [21 x i64] } %a1)
declare { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eCanon(ptr %v0, ptr %v1, ptr %v2, ptr %a0, i32 %a1)
declare void @compiler_2fmir_2ecompiler_2fmir_3adumper_2eline(ptr %v0, ptr %v1, ptr %a0, i64 %a1, { i64, ptr } %a2)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aVarKind_3e_2eLen_3ccompiler_2fmir_3aVarKind_3e(ptr %v0, ptr %a0)
declare %"std/prelude/text:StringBuilder" @std_2fprelude_2ftext_3aStringBuilder_2ector(ptr %v0)
declare { i64, [1 x i64] } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aVarKind_3e_2eAt_3ccompiler_2fmir_3aVarKind_3e(ptr %v0, ptr %a0, i64 %a1)
declare void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare %"compiler/mir:Local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aLocal_3e_2eAt_3ccompiler_2fmir_3aLocal_3e(ptr %v0, ptr %a0, i64 %a1)
declare { i64, ptr } @compiler_2fsource_2ecompiler_2fsource_3aNames_2eText(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare { i64, ptr } @compiler_2fmir_2ecompiler_2fmir_3adumper_2eref(ptr %v0, ptr %v1, ptr %a0, { i64, [1 x i64] } %a1)
declare { i64, ptr } @compiler_2fmir_2eshort(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aScopeInfo_3e_2eLen_3ccompiler_2fmir_3aScopeInfo_3e(ptr %v0, ptr %a0)
declare %"compiler/mir:ScopeInfo" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aScopeInfo_3e_2eAt_3ccompiler_2fmir_3aScopeInfo_3e(ptr %v0, ptr %a0, i64 %a1)
@G_2ecompiler_2fmir_2eNoScope = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\FF\FF\FF\FF" }>, align 8
declare { i64, ptr } @compiler_2fmir_2ecompiler_2fmir_3adumper_2elist(ptr %v0, ptr %v1, ptr %v2, ptr %a0, i32 %a1)
declare { i64, ptr } @compiler_2fmir_2ecompiler_2fmir_3adumper_2estmt(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %a0, ptr %a1)
declare { i64, ptr } @compiler_2fmir_2ecompiler_2fmir_3adumper_2eterm(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, { i64, [8 x i64] } %a1)
declare void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePushChar(ptr %v0, ptr %a0, i8 %a1)
declare i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI32_3e_2eAt_3cI32_3e(ptr %v0, ptr %a0, i64 %a1)
declare { i64, ptr } @compiler_2fmir_2ecompiler_2fmir_3adumper_2econstant(ptr %v0, ptr %v1, ptr %v2, ptr %a0, i32 %a1)
@olang_loc_792180efaebdc40a_e488d776d0fba16e = external constant [0 x i8]
@olang_loc_2f605f8b851f9dfa_b0e742a1ba211956 = external constant [0 x i8]
declare { i64, [1 x i64] } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aProj_3e_2eAt_3ccompiler_2fmir_3aProj_3e(ptr %v0, ptr %a0, i64 %a1)
@olang_loc_ddfec86899b5c27b_91be796056af7d77 = external constant [0 x i8]
declare %"compiler/mir:Lvalue" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aLvalue_3e_2eAt_3ccompiler_2fmir_3aLvalue_3e(ptr %v0, ptr %a0, i64 %a1)
declare { i64, ptr } @compiler_2fmir_2ecompiler_2fmir_3adumper_2ecallee(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, { i64, [7 x i64] } %a1)
declare { i64, ptr } @compiler_2fmir_2ecompiler_2fmir_3adumper_2eoperands(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, %"compiler/mir:Range" %a1)
declare { i64, ptr } @compiler_2fmir_2ecompiler_2fmir_3adumper_2erefs(ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"compiler/mir:Range" %a1)
declare %"compiler/mir:TaskClause" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aTaskClause_3e_2eAt_3ccompiler_2fmir_3aTaskClause_3e(ptr %v0, ptr %a0, i64 %a1)
declare %"compiler/typed:Item" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aItem_3e_2eAt_3ccompiler_2ftyped_3aItem_3e(ptr %v0, ptr %a0, i64 %a1)
declare { i64, ptr } @compiler_2fmir_2ecompiler_2fmir_3adumper_2eoperand(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, { i64, [4 x i64] } %a1)
@olang_loc_6326b544498e75fa_e53a2c99f88826ee = external constant [0 x i8]
declare { i64, [4 x i64] } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aOperand_3e_2eAt_3ccompiler_2fmir_3aOperand_3e(ptr %v0, ptr %a0, i64 %a1)
@G_2ecompiler_2ftypes_2eUnknownT = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\00\00\00\00" }>, align 8
declare %"compiler/mir:Case" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aCase_3e_2eAt_3ccompiler_2fmir_3aCase_3e(ptr %v0, ptr %a0, i64 %a1)
declare void @compiler_2fmir_2ecompiler_2fmir_3averifier_2ebad(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare i1 @compiler_2fmir_2ecompiler_2fmir_3averifier_2esameRepr(ptr %v0, ptr %v1, ptr %a0, i32 %a1, i32 %a2)
@G_2ecompiler_2ftypes_2eNullT = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\0F\00\00\00" }>, align 8
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsRef(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eOrNull(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eSame(ptr %v0, ptr %a0, i32 %a1, i32 %a2)
declare i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePermOf(ptr %v0, ptr %a0, i32 %a1)
@G_2ecompiler_2ftypes_2eNullable = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\04\00\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2ftypes_2eSpread = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\08\00\00\00\00\00\00\00" }>, align 8
@olang_loc_3fc64ab4d22c7cd1_9c9bbb4060ef765d = external constant [0 x i8]
@olang_loc_82a5970c46c34ec4_64144421b638a2b0 = external constant [0 x i8]
@olang_loc_2ac31f2db6082ba7_5ac69b59325af853 = external constant [0 x i8]
@olang_loc_397ae699ba890fb2_f6680c8259f4281e = external constant [0 x i8]
@olang_loc_2836fb8ea59de3a5_79eeb5d0a68fc1c9 = external constant [0 x i8]
@olang_loc_13b0920ad4a1e938_72d556b41507b57c = external constant [0 x i8]
@olang_loc_f0f79482ff998b1b_575016ccefde52df = external constant [0 x i8]
@olang_loc_a4c79ab2e91ac186_f4797f1baf8f450a = external constant [0 x i8]
@olang_loc_2c486f9205676389_1881cd4b4e7e41e5 = external constant [0 x i8]
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aLocalId_3e_2eLen_3ccompiler_2fmir_3aLocalId_3e(ptr %v0, ptr %a0)
declare i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aLocalId_3e_2eAt_3ccompiler_2fmir_3aLocalId_3e(ptr %v0, ptr %a0, i64 %a1)
declare void @compiler_2fmir_2ecompiler_2fmir_3averifier_2eenter(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare void @compiler_2fmir_2ecompiler_2fmir_3averifier_2ewalk(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare { i64, ptr } @compiler_2fmir_2ecompiler_2fmir_3averifier_2ecanon(ptr %v0, ptr %v1, ptr %v2, ptr %a0, i32 %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aScopeId_3e_2eLen_3ccompiler_2fmir_3aScopeId_3e(ptr %v0, ptr %a0)
declare i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aScopeId_3e_2eAt_3ccompiler_2fmir_3aScopeId_3e(ptr %v0, ptr %a0, i64 %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aOperand_3e_2eLen_3ccompiler_2fmir_3aOperand_3e(ptr %v0, ptr %a0)
declare i1 @compiler_2fmir_2ecompiler_2fmir_3averifier_2ewithin(ptr %v0, ptr %v1, ptr %a0, %"compiler/mir:Range" %a1, i64 %a2, { i64, ptr } %a3)
@olang_loc_d0c28dbd82f4c36a_9dd446291f7ee706 = external constant [0 x i8]
declare i32 @compiler_2fmir_2ecompiler_2fmir_3averifier_2eoperandType(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, [4 x i64] } %a1)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsNumber(ptr %v0, ptr %a0, i32 %a1)
declare void @compiler_2fmir_2ecompiler_2fmir_3averifier_2esameArgs(ptr %v0, ptr %v1, ptr %v2, ptr %a0, i32 %a1, %"compiler/mir:Range" %a2, i32 %a3)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsInt(ptr %v0, ptr %a0, i32 %a1)
@G_2ecompiler_2fmir_2eI64T = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\06\00\00\00" }>, align 8
@G_2ecompiler_2ftypes_2eVoidT = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\01\00\00\00" }>, align 8
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsAny(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePacked(ptr %v0, ptr %a0, i32 %a1)
declare void @compiler_2fmir_2ecompiler_2fmir_3averifier_2ewant(ptr %v0, ptr %v1, ptr %v2, ptr %a0, i32 %a1, i32 %a2, { i64, ptr } %a3)
@olang_loc_7968c2a45e42402b_522993cc8bbef1e7 = external constant [0 x i8]
declare i32 @compiler_2fmir_2ecompiler_2fmir_3averifier_2elocalType(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eLength(ptr %v0, ptr %a0, i32 %a1)
declare i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eConstValue(ptr %v0, ptr %a0, i32 %a1)
@olang_loc_5e1988e97d308376_f66bcffef950dfda = external constant [0 x i8]
declare void @compiler_2fmir_2ecompiler_2fmir_3averifier_2eoperand(ptr %v0, ptr %v1, ptr %a0, { i64, [4 x i64] } %a1)
declare void @compiler_2fmir_2ecompiler_2fmir_3averifier_2eplace(ptr %v0, ptr %v1, ptr %a0, %"compiler/mir:Lvalue" %a1)
declare void @compiler_2fmir_2ecompiler_2fmir_3averifier_2eref(ptr %v0, ptr %v1, ptr %a0, { i64, [1 x i64] } %a1)
declare void @compiler_2fmir_2ecompiler_2fmir_3averifier_2erefs(ptr %v0, ptr %v1, ptr %a0, %"compiler/mir:Range" %a1)
@olang_loc_d06e38c3720099d6_401a7f863dec038a = external constant [0 x i8]
declare void @compiler_2fmir_2ecompiler_2fmir_3averifier_2eused(ptr %v0, ptr %a0, i32 %a1)
@olang_loc_587900af1cc61a9a_48225b2d2b7d46c6 = external constant [0 x i8]
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aLocalId_3e_2ector(ptr %v0, i64 %a0)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aVarKind_3e_2ector(ptr %v0, i64 %a0)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aLocal_3e_2ector(ptr %v0, i64 %a0)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aScopeInfo_3e_2ector(ptr %v0, i64 %a0)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aBasicBlock_3e_2ector(ptr %v0, i64 %a0)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aProj_3e_2ector(ptr %v0, i64 %a0)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aOperand_3e_2ector(ptr %v0, i64 %a0)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aScopeRef_3e_2ector(ptr %v0, i64 %a0)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aLvalue_3e_2ector(ptr %v0, i64 %a0)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aCall_3e_2ector(ptr %v0, i64 %a0)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aCase_3e_2ector(ptr %v0, i64 %a0)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aTask_3e_2ector(ptr %v0, i64 %a0)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aTaskClause_3e_2ector(ptr %v0, i64 %a0)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aItem_3e_2ector(ptr %v0, i64 %a0)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aConstNode_3e_2ector(ptr %v0, i64 %a0)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI32_3e_2ector(ptr %v0, i64 %a0)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cU8_3e_2ector(ptr %v0, i64 %a0)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aBlockId_3e_2ector(ptr %v0, i64 %a0)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2ector(ptr %v0, i64 %a0)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aScopeId_3e_2ector(ptr %v0, i64 %a0)

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
