source_filename = "compiler_mir-1.quick.ll"
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
%"compiler/mir:Call" = type { { i64, [7 x i64] }, %"compiler/mir:Range", %"compiler/mir:Range", %"compiler/mir:Lvalue", i1, i32, i32, i32 }
%"compiler/typed:Item" = type { i32, i64 }
%"compiler/mir:ScopeInfo" = type { i32, i32, i32, %"compiler/source:Span", i32 }
%"compiler/mir:BasicBlock" = type { %"compiler/mir:StmtList", { i64, [8 x i64] } }
%"compiler/mir:StmtList" = type { { i64, ptr }, i64 }
%"compiler/mir:verifier" = type { ptr, ptr, %"std/prelude/text:StringBuilder", i64, i64, i1, { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1 }
%"std/prelude/text:StringBuilder" = type { %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/mir:dumper" = type { ptr, ptr, %"std/prelude/text:StringBuilder" }
%"compiler/mir:Task" = type { { i64, [7 x i64] }, %"compiler/mir:Range", %"compiler/mir:Range", %"compiler/mir:Range", %"compiler/mir:Range", %"compiler/mir:Range", %"compiler/source:Span", %"compiler/mir:Range" }
%"compiler/mir:Case" = type { i64, i32 }
define dso_local i1 @compiler_2fmir_2eDropsParts(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca { i64, ptr }
  %l3 = alloca i64
  %l4 = alloca i64
  %l6 = alloca { i64, ptr }
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i32
  %l10 = alloca { i64, ptr }
  %l11 = alloca i64
  %l12 = alloca i64
  %l13 = alloca i32
  %l14 = alloca ptr
  %l17 = alloca i32
  %l18 = alloca { i64, ptr }
  %l25 = alloca { i64, ptr }
  %l31 = alloca i1
  %l35 = alloca ptr
  %l38 = alloca i32
  %l39 = alloca { i64, ptr }
  %l46 = alloca { i64, ptr }
  %l51 = alloca ptr
  %l54 = alloca i32
  %l55 = alloca { i64, ptr }
  %l62 = alloca { i64, ptr }
  %l67 = alloca i1
  %l69 = alloca i1
  %l72 = alloca i1
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1, ptr %l14, !tbaa !29
  %t2 = load ptr, ptr %l0, !tbaa !29
  %t3 = load i32, ptr %l1, !tbaa !23
  %t6 = call i32 @compiler_2fmir_2eFieldsOf(ptr %v0, ptr %t2, i32 %t3)
  store i32 %t6, ptr %l17
  br label %bb1
bb1:
  %t7 = load ptr, ptr %l14, !tbaa !29
  %t8 = load i32, ptr %l17, !tbaa !23
  %t9 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t7, i32 %t8)
  store { i64, ptr } %t9, ptr %l18
  br label %bb2
bb2:
  %t10 = load { i64, ptr }, ptr %l18, !tbaa !27
  store { i64, ptr } %t10, ptr %l2, !tbaa !27
  store i64 0, ptr %l3, !tbaa !24
  %t11 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t13 = extractvalue { i64, ptr } %t11, 0
  store i64 %t13, ptr %l4, !tbaa !24
  br label %bb3
bb3:
  %t15 = load i64, ptr %l3, !tbaa !24
  %t16 = load i64, ptr %l4, !tbaa !24
  %t19 = icmp slt i64 %t15, %t16
  %t21 = xor i1 %t19, true
  br i1 %t21, label %bb4, label %bb5
bb4:
  br label %bb12
bb5:
  br label %bb6
bb6:
  %t23 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t23, ptr %l25, !tbaa !27
  %t24 = load i64, ptr %l3, !tbaa !24
  %t26 = getelementptr { i64, ptr }, ptr %l25, i32 0, i32 1
  %t27 = load ptr, ptr %t26, !tbaa !27
  %t28 = getelementptr i32, ptr %t27, i64 %t24
  %t29 = load i32, ptr %t28, !tbaa !33
  %t31 = load ptr, ptr %l0, !tbaa !29
  %t32 = load i32, ptr %l1, !tbaa !23
  %t37 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eFieldHolds(ptr %v0, ptr %t31, i32 %t32, i32 %t29)
  store i1 %t37, ptr %l31
  br label %bb7
bb7:
  %t38 = load i1, ptr %l31, !tbaa !21
  br i1 %t38, label %bb8, label %bb9
bb8:
  store i1 true, ptr %rv
  br label %ret
bb9:
  br label %bb10
bb10:
  br label %bb11
bb11:
  %t40 = load i64, ptr %l3, !tbaa !24
  %t42 = add i64 %t40, 1
  store i64 %t42, ptr %l3, !tbaa !24
  br label %bb3
bb12:
  %t44 = load ptr, ptr %l0, !tbaa !29
  store ptr %t44, ptr %l35, !tbaa !29
  %t45 = load ptr, ptr %l0, !tbaa !29
  %t46 = load i32, ptr %l1, !tbaa !23
  %t49 = call i32 @compiler_2fmir_2eCasesOf(ptr %v0, ptr %t45, i32 %t46)
  store i32 %t49, ptr %l38
  br label %bb13
bb13:
  %t50 = load ptr, ptr %l35, !tbaa !29
  %t51 = load i32, ptr %l38, !tbaa !23
  %t52 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t50, i32 %t51)
  store { i64, ptr } %t52, ptr %l39
  br label %bb14
bb14:
  %t53 = load { i64, ptr }, ptr %l39, !tbaa !27
  store { i64, ptr } %t53, ptr %l6, !tbaa !27
  store i64 0, ptr %l7, !tbaa !24
  %t54 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t56 = extractvalue { i64, ptr } %t54, 0
  store i64 %t56, ptr %l8, !tbaa !24
  br label %bb15
bb15:
  %t58 = load i64, ptr %l7, !tbaa !24
  %t59 = load i64, ptr %l8, !tbaa !24
  %t62 = icmp slt i64 %t58, %t59
  %t64 = xor i1 %t62, true
  br i1 %t64, label %bb16, label %bb17
bb16:
  br label %bb39
bb17:
  br label %bb18
bb18:
  %t66 = load { i64, ptr }, ptr %l6, !tbaa !27
  store { i64, ptr } %t66, ptr %l46, !tbaa !27
  %t67 = load i64, ptr %l7, !tbaa !24
  %t69 = getelementptr { i64, ptr }, ptr %l46, i32 0, i32 1
  %t70 = load ptr, ptr %t69, !tbaa !27
  %t71 = getelementptr i32, ptr %t70, i64 %t67
  %t72 = load i32, ptr %t71, !tbaa !33
  store i32 %t72, ptr %l9, !tbaa !23
  %t74 = load i32, ptr %l9, !tbaa !23
  %t76 = icmp eq i32 %t74, 0
  br i1 %t76, label %bb19, label %bb20
bb19:
  br label %bb38
bb20:
  br label %bb21
bb21:
  %t78 = load ptr, ptr %l0, !tbaa !29
  store ptr %t78, ptr %l51, !tbaa !29
  %t79 = load ptr, ptr %l0, !tbaa !29
  %t80 = load i32, ptr %l9, !tbaa !23
  %t83 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParts(ptr %v0, ptr %t79, i32 %t80)
  store i32 %t83, ptr %l54
  br label %bb22
bb22:
  %t84 = load ptr, ptr %l51, !tbaa !29
  %t85 = load i32, ptr %l54, !tbaa !23
  %t86 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t84, i32 %t85)
  store { i64, ptr } %t86, ptr %l55
  br label %bb23
bb23:
  %t87 = load { i64, ptr }, ptr %l55, !tbaa !27
  store { i64, ptr } %t87, ptr %l10, !tbaa !27
  store i64 0, ptr %l11, !tbaa !24
  %t88 = load { i64, ptr }, ptr %l10, !tbaa !27
  %t90 = extractvalue { i64, ptr } %t88, 0
  store i64 %t90, ptr %l12, !tbaa !24
  br label %bb24
bb24:
  %t92 = load i64, ptr %l11, !tbaa !24
  %t93 = load i64, ptr %l12, !tbaa !24
  %t96 = icmp slt i64 %t92, %t93
  %t98 = xor i1 %t96, true
  br i1 %t98, label %bb25, label %bb26
bb25:
  br label %bb37
bb26:
  br label %bb27
bb27:
  %t100 = load { i64, ptr }, ptr %l10, !tbaa !27
  store { i64, ptr } %t100, ptr %l62, !tbaa !27
  %t101 = load i64, ptr %l11, !tbaa !24
  %t103 = getelementptr { i64, ptr }, ptr %l62, i32 0, i32 1
  %t104 = load ptr, ptr %t103, !tbaa !27
  %t105 = getelementptr i32, ptr %t104, i64 %t101
  %t106 = load i32, ptr %t105, !tbaa !33
  store i32 %t106, ptr %l13, !tbaa !23
  %t108 = load ptr, ptr %l0, !tbaa !29
  %t109 = load i32, ptr %l13, !tbaa !23
  %t112 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsRef(ptr %v0, ptr %t108, i32 %t109)
  store i1 %t112, ptr %l67
  br label %bb28
bb28:
  %t113 = load i1, ptr %l67, !tbaa !21
  %t114 = xor i1 %t113, true
  br i1 %t114, label %bb29, label %bb30
bb29:
  %t116 = load ptr, ptr %l0, !tbaa !29
  %t117 = load i32, ptr %l13, !tbaa !23
  %t120 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eNeedsDrop(ptr %v0, ptr %t116, i32 %t117)
  store i1 %t120, ptr %l72
  br label %bb31
bb30:
  store i1 false, ptr %l69, !tbaa !21
  br label %bb32
bb31:
  %t121 = load i1, ptr %l72, !tbaa !21
  store i1 %t121, ptr %l69, !tbaa !21
  br label %bb32
bb32:
  %t122 = load i1, ptr %l69, !tbaa !21
  br i1 %t122, label %bb33, label %bb34
bb33:
  store i1 true, ptr %rv
  br label %ret
bb34:
  br label %bb35
bb35:
  br label %bb36
bb36:
  %t124 = load i64, ptr %l11, !tbaa !24
  %t126 = add i64 %t124, 1
  store i64 %t126, ptr %l11, !tbaa !24
  br label %bb24
bb37:
  br label %bb38
bb38:
  %t128 = load i64, ptr %l7, !tbaa !24
  %t130 = add i64 %t128, 1
  store i64 %t130, ptr %l7, !tbaa !24
  br label %bb15
bb39:
  store i1 false, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i32 @compiler_2fmir_2eFieldsOf(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca i32
  %l5 = alloca i1
  %l10 = alloca i32
  %l13 = alloca i32
  %l17 = alloca i32
  %l20 = alloca i32
  %l23 = alloca i32
  %rv = alloca i32
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load i32, ptr %l1, !tbaa !23
  %t5 = call i1 @compiler_2fmir_2eHasFields(ptr %v0, ptr %t1, i32 %t2)
  store i1 %t5, ptr %l5
  br label %bb1
bb1:
  %t6 = load i1, ptr %l5, !tbaa !21
  %t7 = xor i1 %t6, true
  br i1 %t7, label %bb2, label %bb3
bb2:
  store i32 0, ptr %rv
  br label %ret
bb3:
  br label %bb4
bb4:
  %t10 = load ptr, ptr %l0, !tbaa !29
  %t11 = load i32, ptr %l1, !tbaa !23
  %t14 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %v0, ptr %t10, i32 %t11)
  store i32 %t14, ptr %l10
  br label %bb5
bb5:
  %t15 = load i32, ptr %l10, !tbaa !23
  store i32 %t15, ptr %l2, !tbaa !23
  %t16 = load ptr, ptr %l0, !tbaa !29
  %t17 = load i32, ptr %l2, !tbaa !23
  %t20 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t16, i32 %t17)
  store i32 %t20, ptr %l13
  br label %bb6
bb6:
  %t21 = load i32, ptr %l13, !range !{i32 0, i32 33}
  %t23 = trunc i64 18 to i32
  %t24 = icmp eq i32 %t21, %t23
  %t26 = xor i1 %t24, true
  br i1 %t26, label %bb7, label %bb8
bb7:
  %t28 = load ptr, ptr %l0, !tbaa !29
  %t29 = load i32, ptr %l2, !tbaa !23
  %t32 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParts(ptr %v0, ptr %t28, i32 %t29)
  store i32 %t32, ptr %l20
  br label %bb9
bb8:
  %t33 = load ptr, ptr %l0, !tbaa !29
  %t34 = load i32, ptr %l2, !tbaa !23
  %t37 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eFields(ptr %v0, ptr %t33, i32 %t34)
  store i32 %t37, ptr %l23
  br label %bb10
bb9:
  %t38 = load i32, ptr %l20, !tbaa !23
  store i32 %t38, ptr %l17, !tbaa !23
  br label %bb11
bb10:
  %t39 = load i32, ptr %l23, !tbaa !23
  store i32 %t39, ptr %l17, !tbaa !23
  br label %bb11
bb11:
  %t40 = load i32, ptr %l17, !tbaa !23
  store i32 %t40, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local { i32, { i64, [2 x i64] } } @compiler_2fmir_2eFnKey_2eDropFn(ptr %v0, ptr %a0, i32 %a1, i64 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca i64
  %l5 = alloca i32
  %l13 = alloca i1
  %l16 = alloca i1
  %l24 = alloca i1
  %rv = alloca { i32, { i64, [2 x i64] } }
  %t12 = alloca { i64, [2 x i64] }, align 8
  %t39 = alloca { i64, [2 x i64] }, align 8
  %t58 = alloca { i64, [2 x i64] }, align 8
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  store i64 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load i32, ptr %l1, !tbaa !23
  %t5 = call i32 @compiler_2fmir_2eGuardOf(ptr %v0, ptr %t1, i32 %t2)
  store i32 %t5, ptr %l5
  br label %bb1
bb1:
  %t6 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t7 = load i32, ptr %l5, !tbaa !23
  %t9 = icmp ne i32 %t7, %t6
  br i1 %t9, label %bb2, label %bb3
bb2:
  %t11 = load i32, ptr %l1, !tbaa !23
  store { i64, [2 x i64] } zeroinitializer, ptr %t12
  %t13 = getelementptr { i64, [2 x i64] }, ptr %t12, i32 0, i32 0
  store i64 3, ptr %t13
  %t15 = insertvalue { i32, i32 } undef, i32 7, 0
  %t17 = insertvalue { i32, i32 } %t15, i32 %t11, 1
  %t18 = getelementptr { i64, [2 x i64] }, ptr %t12, i32 0, i32 1
  store { i32, i32 } %t17, ptr %t18
  %t19 = load { i64, [2 x i64] }, ptr %t12
  %t21 = insertvalue { i32, { i64, [2 x i64] } } zeroinitializer, { i64, [2 x i64] } %t19, 1
  store { i32, { i64, [2 x i64] } } %t21, ptr %rv
  br label %ret
bb3:
  br label %bb4
bb4:
  %t22 = load i64, ptr %l2, !tbaa !24
  %t24 = icmp sge i64 %t22, 0
  br i1 %t24, label %bb5, label %bb6
bb5:
  %t26 = load ptr, ptr %l0, !tbaa !29
  %t27 = load i32, ptr %l1, !tbaa !23
  %t30 = call i1 @compiler_2fmir_2eDropsParts(ptr %v0, ptr %t26, i32 %t27)
  store i1 %t30, ptr %l16
  br label %bb7
bb6:
  store i1 false, ptr %l13, !tbaa !21
  br label %bb8
bb7:
  %t31 = load i1, ptr %l16, !tbaa !21
  %t32 = xor i1 %t31, true
  store i1 %t32, ptr %l13, !tbaa !21
  br label %bb8
bb8:
  %t34 = load i1, ptr %l13, !tbaa !21
  br i1 %t34, label %bb9, label %bb10
bb9:
  %t35 = load i64, ptr %l2, !tbaa !24
  %t37 = trunc i64 %t35 to i32
  store { i64, [2 x i64] } zeroinitializer, ptr %t39
  %t40 = getelementptr { i64, [2 x i64] }, ptr %t39, i32 0, i32 0
  store i64 0, ptr %t40
  %t42 = insertvalue { i32 } undef, i32 %t37, 0
  %t43 = getelementptr { i64, [2 x i64] }, ptr %t39, i32 0, i32 1
  store { i32 } %t42, ptr %t43
  %t44 = load { i64, [2 x i64] }, ptr %t39
  %t46 = insertvalue { i32, { i64, [2 x i64] } } zeroinitializer, { i64, [2 x i64] } %t44, 1
  store { i32, { i64, [2 x i64] } } %t46, ptr %rv
  br label %ret
bb10:
  br label %bb11
bb11:
  %t47 = load ptr, ptr %l0, !tbaa !29
  %t48 = load i32, ptr %l1, !tbaa !23
  %t51 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eNeedsDrop(ptr %v0, ptr %t47, i32 %t48)
  store i1 %t51, ptr %l24
  br label %bb12
bb12:
  %t52 = load i1, ptr %l24, !tbaa !21
  %t53 = xor i1 %t52, true
  br i1 %t53, label %bb13, label %bb14
bb13:
  %t56 = insertvalue { i32, { i64, [2 x i64] } } zeroinitializer, i32 65536, 0
  store { i32, { i64, [2 x i64] } } %t56, ptr %rv
  br label %ret
bb14:
  br label %bb15
bb15:
  %t57 = load i32, ptr %l1, !tbaa !23
  store { i64, [2 x i64] } zeroinitializer, ptr %t58
  %t59 = getelementptr { i64, [2 x i64] }, ptr %t58, i32 0, i32 0
  store i64 3, ptr %t59
  %t61 = insertvalue { i32, i32 } undef, i32 6, 0
  %t63 = insertvalue { i32, i32 } %t61, i32 %t57, 1
  %t64 = getelementptr { i64, [2 x i64] }, ptr %t58, i32 0, i32 1
  store { i32, i32 } %t63, ptr %t64
  %t65 = load { i64, [2 x i64] }, ptr %t58
  %t67 = insertvalue { i32, { i64, [2 x i64] } } zeroinitializer, { i64, [2 x i64] } %t65, 1
  store { i32, { i64, [2 x i64] } } %t67, ptr %rv
  br label %ret
ret:
  %rr = load { i32, { i64, [2 x i64] } }, ptr %rv
  ret { i32, { i64, [2 x i64] } } %rr
}

define dso_local void @compiler_2fmir_2eFn_2edefer(ptr %out, ptr %v0, ptr %v1, ptr %v2, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %lp2 = alloca ptr
  %l3 = alloca i32
  %l4 = alloca i32
  %l5 = alloca i32
  %l7 = alloca i32
  %l8 = alloca ptr
  %l11 = alloca i32
  %l12 = alloca %"compiler/mir:Fn"
  %l13 = alloca ptr
  %l15 = alloca ptr
  %l17 = alloca i32
  %l22 = alloca %"compiler/mir:Local"
  %l23 = alloca i32
  %l25 = alloca i32
  %l26 = alloca ptr
  %l27 = alloca i32
  %l28 = alloca %"compiler/source:Span"
  %l30 = alloca %"compiler/mir:Lvalue"
  %l34 = alloca { i64, [21 x i64] }
  %l40 = alloca { i64, [21 x i64] }
  %l42 = alloca ptr
  %l43 = alloca i32
  %l44 = alloca %"compiler/source:Span"
  %l46 = alloca %"compiler/mir:Lvalue"
  %l50 = alloca { i64, [21 x i64] }
  %l56 = alloca ptr
  %l57 = alloca i32
  %l58 = alloca %"compiler/source:Span"
  %l60 = alloca %"compiler/mir:Lvalue"
  %l64 = alloca { i64, [21 x i64] }
  %l70 = alloca { i64, [21 x i64] }
  %l72 = alloca ptr
  %l73 = alloca i32
  %l74 = alloca %"compiler/source:Span"
  %l76 = alloca %"compiler/mir:Lvalue"
  %l80 = alloca { i64, [21 x i64] }
  %l85 = alloca { i64, [21 x i64] }
  %l92 = alloca %"compiler/mir:Fn"
  %s0 = alloca %olang.scope
  %t11 = alloca %"compiler/mir:Fn", align 8
  %t30 = alloca { i64, [1 x i64] }, align 8
  %t54 = alloca { i64, [4 x i64] }, align 8
  %t61 = alloca { i64, [15 x i64] }, align 8
  %t67 = alloca { i64, [21 x i64] }, align 8
  %t84 = alloca { i64, [21 x i64] }, align 8
  %t103 = alloca { i64, [4 x i64] }, align 8
  %t110 = alloca { i64, [15 x i64] }, align 8
  %t116 = alloca { i64, [21 x i64] }, align 8
  %t132 = alloca { i64, [8 x i64] }, align 8
  %t148 = alloca { i64, [4 x i64] }, align 8
  %t155 = alloca { i64, [15 x i64] }, align 8
  %t161 = alloca { i64, [21 x i64] }, align 8
  %t178 = alloca { i64, [21 x i64] }, align 8
  %t197 = alloca { i64, [4 x i64] }, align 8
  %t204 = alloca { i64, [15 x i64] }, align 8
  %t210 = alloca { i64, [21 x i64] }, align 8
  %t226 = alloca { i64, [21 x i64] }, align 8
  %t239 = alloca { i64, [4 x i64] }, align 8
  %t242 = alloca { i64, [8 x i64] }, align 8
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePrim(ptr %v0, ptr %s0, ptr %t1, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d0, i32 0, i32 1) })
  store i32 %t3, ptr %l7
  br label %bb1
bb1:
  %t4 = load i32, ptr %l7, !tbaa !23
  store i32 %t4, ptr %l1, !tbaa !23
  %t5 = load ptr, ptr %l0, !tbaa !29
  store ptr %t5, ptr %l8, !tbaa !29
  %t6 = load ptr, ptr %l0, !tbaa !29
  %t7 = load i32, ptr @G_2ecompiler_2ftypes_2eVoidT, !tbaa !23
  %t10 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eFunc(ptr %v0, ptr %t6, i32 0, i32 %t7, i32 0, i32 0, i64 0, i1 false, i32 0, i64 0)
  store i32 %t10, ptr %l11
  br label %bb2
bb2:
  %t12 = load ptr, ptr %l8, !tbaa !29
  %t13 = load i32, ptr %l11, !tbaa !23
  call void @compiler_2fmir_2eFn_2etfn(ptr %t11, ptr %v0, ptr %v1, ptr %t12, i32 %t13)
  call void @llvm.memmove.p0.p0.i64(ptr %l12, ptr %t11, i64 800, i1 false)
  br label %bb3
bb3:
  %t14 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 800, i64 8)
  store ptr %t14, ptr %lp2
  %t15 = load ptr, ptr %lp2
  call void @llvm.memmove.p0.p0.i64(ptr %t15, ptr %l12, i64 800, i1 false)
  %t16 = load ptr, ptr %lp2
  store ptr %t16, ptr %l13, !tbaa !29
  %t17 = load ptr, ptr %l0, !tbaa !29
  %t19 = getelementptr %"compiler/types:Table", ptr %t17, i32 0, i32 0
  %t20 = load ptr, ptr %t19, !tbaa !29
  store ptr %t20, ptr %l15, !tbaa !29
  %t21 = load ptr, ptr %l15, !tbaa !29
  %t22 = call ptr @__olang_scope_or(ptr %v2, ptr %t21)
  %t23 = ptrtoint ptr %t22 to i64
  %t25 = inttoptr i64 %t23 to ptr
  %t26 = load ptr, ptr %l15, !tbaa !29
  %t27 = call i32 @compiler_2fsource_2ecompiler_2fsource_3aNames_2eIntern(ptr %t25, ptr %s0, ptr %t26, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d1, i32 0, i32 1) })
  store i32 %t27, ptr %l17
  br label %bb4
bb4:
  %t28 = load %"compiler/source:Span", ptr @G_2ecompiler_2fmir_2eSp0
  %t29 = load i32, ptr %l1, !tbaa !23
  store { i64, [1 x i64] } zeroinitializer, ptr %t30
  %t31 = getelementptr { i64, [1 x i64] }, ptr %t30, i32 0, i32 0
  store i64 3, ptr %t31
  %t32 = load { i64, [1 x i64] }, ptr %t30
  %t33 = load i32, ptr %l17, !tbaa !23
  %t38 = call %"compiler/mir:Local" @compiler_2fmir_3aLocal_2ector(ptr %s0, i32 %t33, %"compiler/source:Span" %t28, i32 %t29, i32 2, { i64, [1 x i64] } %t32)
  store %"compiler/mir:Local" %t38, ptr %l22
  br label %bb5
bb5:
  %t39 = load ptr, ptr %l13, !tbaa !29
  %t40 = load %"compiler/mir:Local", ptr %l22
  %t41 = call i32 @compiler_2fmir_2ecompiler_2fmir_3aFn_2eAddLocal(ptr %v1, ptr %t39, %"compiler/mir:Local" %t40)
  store i32 %t41, ptr %l23
  br label %bb6
bb6:
  %t42 = load i32, ptr %l23, !tbaa !23
  store i32 %t42, ptr %l3, !tbaa !23
  store i32 0, ptr %l4, !tbaa !23
  %t43 = load ptr, ptr %lp2
  %t45 = call i32 @compiler_2fmir_2ecompiler_2fmir_3aFn_2eNewBlock(ptr %v1, ptr %t43)
  store i32 %t45, ptr %l25
  br label %bb7
bb7:
  %t46 = load i32, ptr %l25, !tbaa !23
  store i32 %t46, ptr %l5, !tbaa !23
  %t47 = load ptr, ptr %lp2
  store ptr %t47, ptr %l26, !tbaa !29
  %t48 = load i32, ptr %l4, !tbaa !23
  store i32 %t48, ptr %l27, !tbaa !23
  %t49 = load %"compiler/source:Span", ptr @G_2ecompiler_2fmir_2eSp0
  store %"compiler/source:Span" %t49, ptr %l28
  %t50 = load i32, ptr %l3, !tbaa !23
  %t52 = call %"compiler/mir:Lvalue" @compiler_2fmir_2eLvalue_2eL(i32 %t50)
  store %"compiler/mir:Lvalue" %t52, ptr %l30
  br label %bb8
bb8:
  %t53 = load i32, ptr %l1, !tbaa !23
  store { i64, [4 x i64] } zeroinitializer, ptr %t54
  %t55 = getelementptr { i64, [4 x i64] }, ptr %t54, i32 0, i32 0
  store i64 2, ptr %t55
  %t57 = insertvalue { i32, i64 } undef, i32 %t53, 0
  %t58 = insertvalue { i32, i64 } %t57, i64 1, 1
  %t59 = getelementptr { i64, [4 x i64] }, ptr %t54, i32 0, i32 1
  store { i32, i64 } %t58, ptr %t59
  %t60 = load { i64, [4 x i64] }, ptr %t54
  store { i64, [15 x i64] } zeroinitializer, ptr %t61
  %t62 = getelementptr { i64, [15 x i64] }, ptr %t61, i32 0, i32 0
  store i64 0, ptr %t62
  %t64 = insertvalue { { i64, [4 x i64] } } undef, { i64, [4 x i64] } %t60, 0
  %t65 = getelementptr { i64, [15 x i64] }, ptr %t61, i32 0, i32 1
  store { { i64, [4 x i64] } } %t64, ptr %t65
  %t66 = load { i64, [15 x i64] }, ptr %t61
  store { i64, [21 x i64] } zeroinitializer, ptr %t67
  %t68 = getelementptr { i64, [21 x i64] }, ptr %t67, i32 0, i32 0
  store i64 0, ptr %t68
  %t69 = load %"compiler/source:Span", ptr %l28
  %t70 = insertvalue { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } undef, %"compiler/source:Span" %t69, 0
  %t71 = load %"compiler/mir:Lvalue", ptr %l30
  %t72 = insertvalue { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } %t70, %"compiler/mir:Lvalue" %t71, 1
  %t74 = insertvalue { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } %t72, { i64, [15 x i64] } %t66, 2
  %t75 = getelementptr { i64, [21 x i64] }, ptr %t67, i32 0, i32 1
  store { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } %t74, ptr %t75
  %t76 = load { i64, [21 x i64] }, ptr %t67
  store { i64, [21 x i64] } %t76, ptr %l34
  %t77 = load ptr, ptr %l26, !tbaa !29
  %t78 = load i32, ptr %l27, !tbaa !23
  call void @compiler_2fmir_2ecompiler_2fmir_3aFn_2eAdd(ptr %v1, ptr %s0, ptr %t77, i32 %t78, ptr %l34)
  br label %bb9
bb9:
  %t80 = load ptr, ptr %lp2
  %t81 = load i32, ptr %l4, !tbaa !23
  %t82 = load %"compiler/source:Span", ptr @G_2ecompiler_2fmir_2eSp0
  %t83 = load i32, ptr %l5, !tbaa !23
  store { i64, [21 x i64] } zeroinitializer, ptr %t84
  %t85 = getelementptr { i64, [21 x i64] }, ptr %t84, i32 0, i32 0
  store i64 15, ptr %t85
  %t87 = insertvalue { %"compiler/source:Span", i32, i32 } undef, %"compiler/source:Span" %t82, 0
  %t88 = insertvalue { %"compiler/source:Span", i32, i32 } %t87, i32 0, 1
  %t90 = insertvalue { %"compiler/source:Span", i32, i32 } %t88, i32 %t83, 2
  %t91 = getelementptr { i64, [21 x i64] }, ptr %t84, i32 0, i32 1
  store { %"compiler/source:Span", i32, i32 } %t90, ptr %t91
  %t92 = load { i64, [21 x i64] }, ptr %t84
  store { i64, [21 x i64] } %t92, ptr %l40
  call void @compiler_2fmir_2ecompiler_2fmir_3aFn_2eAdd(ptr %v1, ptr %s0, ptr %t80, i32 %t81, ptr %l40)
  br label %bb10
bb10:
  %t96 = load ptr, ptr %lp2
  store ptr %t96, ptr %l42, !tbaa !29
  %t97 = load i32, ptr %l5, !tbaa !23
  store i32 %t97, ptr %l43, !tbaa !23
  %t98 = load %"compiler/source:Span", ptr @G_2ecompiler_2fmir_2eSp0
  store %"compiler/source:Span" %t98, ptr %l44
  %t99 = load i32, ptr %l3, !tbaa !23
  %t101 = call %"compiler/mir:Lvalue" @compiler_2fmir_2eLvalue_2eL(i32 %t99)
  store %"compiler/mir:Lvalue" %t101, ptr %l46
  br label %bb11
bb11:
  %t102 = load i32, ptr %l1, !tbaa !23
  store { i64, [4 x i64] } zeroinitializer, ptr %t103
  %t104 = getelementptr { i64, [4 x i64] }, ptr %t103, i32 0, i32 0
  store i64 2, ptr %t104
  %t106 = insertvalue { i32, i64 } undef, i32 %t102, 0
  %t107 = insertvalue { i32, i64 } %t106, i64 2, 1
  %t108 = getelementptr { i64, [4 x i64] }, ptr %t103, i32 0, i32 1
  store { i32, i64 } %t107, ptr %t108
  %t109 = load { i64, [4 x i64] }, ptr %t103
  store { i64, [15 x i64] } zeroinitializer, ptr %t110
  %t111 = getelementptr { i64, [15 x i64] }, ptr %t110, i32 0, i32 0
  store i64 0, ptr %t111
  %t113 = insertvalue { { i64, [4 x i64] } } undef, { i64, [4 x i64] } %t109, 0
  %t114 = getelementptr { i64, [15 x i64] }, ptr %t110, i32 0, i32 1
  store { { i64, [4 x i64] } } %t113, ptr %t114
  %t115 = load { i64, [15 x i64] }, ptr %t110
  store { i64, [21 x i64] } zeroinitializer, ptr %t116
  %t117 = getelementptr { i64, [21 x i64] }, ptr %t116, i32 0, i32 0
  store i64 0, ptr %t117
  %t118 = load %"compiler/source:Span", ptr %l44
  %t119 = insertvalue { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } undef, %"compiler/source:Span" %t118, 0
  %t120 = load %"compiler/mir:Lvalue", ptr %l46
  %t121 = insertvalue { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } %t119, %"compiler/mir:Lvalue" %t120, 1
  %t123 = insertvalue { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } %t121, { i64, [15 x i64] } %t115, 2
  %t124 = getelementptr { i64, [21 x i64] }, ptr %t116, i32 0, i32 1
  store { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } %t123, ptr %t124
  %t125 = load { i64, [21 x i64] }, ptr %t116
  store { i64, [21 x i64] } %t125, ptr %l50
  %t126 = load ptr, ptr %l42, !tbaa !29
  %t127 = load i32, ptr %l43, !tbaa !23
  call void @compiler_2fmir_2ecompiler_2fmir_3aFn_2eAdd(ptr %v1, ptr %s0, ptr %t126, i32 %t127, ptr %l50)
  br label %bb12
bb12:
  %t129 = load ptr, ptr %lp2
  %t130 = load i32, ptr %l5, !tbaa !23
  %t131 = load %"compiler/source:Span", ptr @G_2ecompiler_2fmir_2eSp0
  store { i64, [8 x i64] } zeroinitializer, ptr %t132
  %t133 = getelementptr { i64, [8 x i64] }, ptr %t132, i32 0, i32 0
  store i64 10, ptr %t133
  %t135 = insertvalue { %"compiler/source:Span" } undef, %"compiler/source:Span" %t131, 0
  %t136 = getelementptr { i64, [8 x i64] }, ptr %t132, i32 0, i32 1
  store { %"compiler/source:Span" } %t135, ptr %t136
  %t137 = load { i64, [8 x i64] }, ptr %t132
  call void @compiler_2fmir_2ecompiler_2fmir_3aFn_2eEnd(ptr %v1, ptr %t129, i32 %t130, { i64, [8 x i64] } %t137)
  br label %bb13
bb13:
  %t141 = load ptr, ptr %lp2
  store ptr %t141, ptr %l56, !tbaa !29
  %t142 = load i32, ptr %l4, !tbaa !23
  store i32 %t142, ptr %l57, !tbaa !23
  %t143 = load %"compiler/source:Span", ptr @G_2ecompiler_2fmir_2eSp0
  store %"compiler/source:Span" %t143, ptr %l58
  %t144 = load i32, ptr %l3, !tbaa !23
  %t146 = call %"compiler/mir:Lvalue" @compiler_2fmir_2eLvalue_2eL(i32 %t144)
  store %"compiler/mir:Lvalue" %t146, ptr %l60
  br label %bb14
bb14:
  %t147 = load i32, ptr %l1, !tbaa !23
  store { i64, [4 x i64] } zeroinitializer, ptr %t148
  %t149 = getelementptr { i64, [4 x i64] }, ptr %t148, i32 0, i32 0
  store i64 2, ptr %t149
  %t151 = insertvalue { i32, i64 } undef, i32 %t147, 0
  %t152 = insertvalue { i32, i64 } %t151, i64 3, 1
  %t153 = getelementptr { i64, [4 x i64] }, ptr %t148, i32 0, i32 1
  store { i32, i64 } %t152, ptr %t153
  %t154 = load { i64, [4 x i64] }, ptr %t148
  store { i64, [15 x i64] } zeroinitializer, ptr %t155
  %t156 = getelementptr { i64, [15 x i64] }, ptr %t155, i32 0, i32 0
  store i64 0, ptr %t156
  %t158 = insertvalue { { i64, [4 x i64] } } undef, { i64, [4 x i64] } %t154, 0
  %t159 = getelementptr { i64, [15 x i64] }, ptr %t155, i32 0, i32 1
  store { { i64, [4 x i64] } } %t158, ptr %t159
  %t160 = load { i64, [15 x i64] }, ptr %t155
  store { i64, [21 x i64] } zeroinitializer, ptr %t161
  %t162 = getelementptr { i64, [21 x i64] }, ptr %t161, i32 0, i32 0
  store i64 0, ptr %t162
  %t163 = load %"compiler/source:Span", ptr %l58
  %t164 = insertvalue { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } undef, %"compiler/source:Span" %t163, 0
  %t165 = load %"compiler/mir:Lvalue", ptr %l60
  %t166 = insertvalue { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } %t164, %"compiler/mir:Lvalue" %t165, 1
  %t168 = insertvalue { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } %t166, { i64, [15 x i64] } %t160, 2
  %t169 = getelementptr { i64, [21 x i64] }, ptr %t161, i32 0, i32 1
  store { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } %t168, ptr %t169
  %t170 = load { i64, [21 x i64] }, ptr %t161
  store { i64, [21 x i64] } %t170, ptr %l64
  %t171 = load ptr, ptr %l56, !tbaa !29
  %t172 = load i32, ptr %l57, !tbaa !23
  call void @compiler_2fmir_2ecompiler_2fmir_3aFn_2eAdd(ptr %v1, ptr %s0, ptr %t171, i32 %t172, ptr %l64)
  br label %bb15
bb15:
  %t174 = load ptr, ptr %lp2
  %t175 = load i32, ptr %l4, !tbaa !23
  %t176 = load %"compiler/source:Span", ptr @G_2ecompiler_2fmir_2eSp0
  %t177 = load i32, ptr @G_2ecompiler_2fmir_2eNoBlock, !tbaa !23
  store { i64, [21 x i64] } zeroinitializer, ptr %t178
  %t179 = getelementptr { i64, [21 x i64] }, ptr %t178, i32 0, i32 0
  store i64 15, ptr %t179
  %t181 = insertvalue { %"compiler/source:Span", i32, i32 } undef, %"compiler/source:Span" %t176, 0
  %t182 = insertvalue { %"compiler/source:Span", i32, i32 } %t181, i32 0, 1
  %t184 = insertvalue { %"compiler/source:Span", i32, i32 } %t182, i32 %t177, 2
  %t185 = getelementptr { i64, [21 x i64] }, ptr %t178, i32 0, i32 1
  store { %"compiler/source:Span", i32, i32 } %t184, ptr %t185
  %t186 = load { i64, [21 x i64] }, ptr %t178
  store { i64, [21 x i64] } %t186, ptr %l70
  call void @compiler_2fmir_2ecompiler_2fmir_3aFn_2eAdd(ptr %v1, ptr %s0, ptr %t174, i32 %t175, ptr %l70)
  br label %bb16
bb16:
  %t190 = load ptr, ptr %lp2
  store ptr %t190, ptr %l72, !tbaa !29
  %t191 = load i32, ptr %l4, !tbaa !23
  store i32 %t191, ptr %l73, !tbaa !23
  %t192 = load %"compiler/source:Span", ptr @G_2ecompiler_2fmir_2eSp0
  store %"compiler/source:Span" %t192, ptr %l74
  %t193 = load i32, ptr %l3, !tbaa !23
  %t195 = call %"compiler/mir:Lvalue" @compiler_2fmir_2eLvalue_2eL(i32 %t193)
  store %"compiler/mir:Lvalue" %t195, ptr %l76
  br label %bb17
bb17:
  %t196 = load i32, ptr %l1, !tbaa !23
  store { i64, [4 x i64] } zeroinitializer, ptr %t197
  %t198 = getelementptr { i64, [4 x i64] }, ptr %t197, i32 0, i32 0
  store i64 2, ptr %t198
  %t200 = insertvalue { i32, i64 } undef, i32 %t196, 0
  %t201 = insertvalue { i32, i64 } %t200, i64 2, 1
  %t202 = getelementptr { i64, [4 x i64] }, ptr %t197, i32 0, i32 1
  store { i32, i64 } %t201, ptr %t202
  %t203 = load { i64, [4 x i64] }, ptr %t197
  store { i64, [15 x i64] } zeroinitializer, ptr %t204
  %t205 = getelementptr { i64, [15 x i64] }, ptr %t204, i32 0, i32 0
  store i64 0, ptr %t205
  %t207 = insertvalue { { i64, [4 x i64] } } undef, { i64, [4 x i64] } %t203, 0
  %t208 = getelementptr { i64, [15 x i64] }, ptr %t204, i32 0, i32 1
  store { { i64, [4 x i64] } } %t207, ptr %t208
  %t209 = load { i64, [15 x i64] }, ptr %t204
  store { i64, [21 x i64] } zeroinitializer, ptr %t210
  %t211 = getelementptr { i64, [21 x i64] }, ptr %t210, i32 0, i32 0
  store i64 0, ptr %t211
  %t212 = load %"compiler/source:Span", ptr %l74
  %t213 = insertvalue { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } undef, %"compiler/source:Span" %t212, 0
  %t214 = load %"compiler/mir:Lvalue", ptr %l76
  %t215 = insertvalue { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } %t213, %"compiler/mir:Lvalue" %t214, 1
  %t217 = insertvalue { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } %t215, { i64, [15 x i64] } %t209, 2
  %t218 = getelementptr { i64, [21 x i64] }, ptr %t210, i32 0, i32 1
  store { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } %t217, ptr %t218
  %t219 = load { i64, [21 x i64] }, ptr %t210
  store { i64, [21 x i64] } %t219, ptr %l80
  %t220 = load ptr, ptr %l72, !tbaa !29
  %t221 = load i32, ptr %l73, !tbaa !23
  call void @compiler_2fmir_2ecompiler_2fmir_3aFn_2eAdd(ptr %v1, ptr %s0, ptr %t220, i32 %t221, ptr %l80)
  br label %bb18
bb18:
  %t223 = load ptr, ptr %lp2
  %t224 = load i32, ptr %l4, !tbaa !23
  %t225 = load %"compiler/source:Span", ptr @G_2ecompiler_2fmir_2eSp0
  store { i64, [21 x i64] } zeroinitializer, ptr %t226
  %t227 = getelementptr { i64, [21 x i64] }, ptr %t226, i32 0, i32 0
  store i64 4, ptr %t227
  %t229 = insertvalue { %"compiler/source:Span", i32 } undef, %"compiler/source:Span" %t225, 0
  %t230 = insertvalue { %"compiler/source:Span", i32 } %t229, i32 0, 1
  %t231 = getelementptr { i64, [21 x i64] }, ptr %t226, i32 0, i32 1
  store { %"compiler/source:Span", i32 } %t230, ptr %t231
  %t232 = load { i64, [21 x i64] }, ptr %t226
  store { i64, [21 x i64] } %t232, ptr %l85
  call void @compiler_2fmir_2ecompiler_2fmir_3aFn_2eAdd(ptr %v1, ptr %s0, ptr %t223, i32 %t224, ptr %l85)
  br label %bb19
bb19:
  %t236 = load ptr, ptr %lp2
  %t237 = load i32, ptr %l4, !tbaa !23
  %t238 = load %"compiler/source:Span", ptr @G_2ecompiler_2fmir_2eSp0
  store { i64, [4 x i64] } zeroinitializer, ptr %t239
  %t240 = getelementptr { i64, [4 x i64] }, ptr %t239, i32 0, i32 0
  store i64 0, ptr %t240
  %t241 = load { i64, [4 x i64] }, ptr %t239
  store { i64, [8 x i64] } zeroinitializer, ptr %t242
  %t243 = getelementptr { i64, [8 x i64] }, ptr %t242, i32 0, i32 0
  store i64 5, ptr %t243
  %t245 = insertvalue { %"compiler/source:Span", { i64, [4 x i64] } } undef, %"compiler/source:Span" %t238, 0
  %t247 = insertvalue { %"compiler/source:Span", { i64, [4 x i64] } } %t245, { i64, [4 x i64] } %t241, 1
  %t248 = getelementptr { i64, [8 x i64] }, ptr %t242, i32 0, i32 1
  store { %"compiler/source:Span", { i64, [4 x i64] } } %t247, ptr %t248
  %t249 = load { i64, [8 x i64] }, ptr %t242
  call void @compiler_2fmir_2ecompiler_2fmir_3aFn_2eEnd(ptr %v1, ptr %t236, i32 %t237, { i64, [8 x i64] } %t249)
  br label %bb20
bb20:
  %t253 = load ptr, ptr %lp2
  call void @llvm.memmove.p0.p0.i64(ptr %l92, ptr %t253, i64 800, i1 false)
  call void @__olang_scope_close(ptr %s0)
  call void @llvm.memmove.p0.p0.i64(ptr %out, ptr %l92, i64 800, i1 false)
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2fmir_2eFn_2eloop(ptr %out, ptr %v0, ptr %v1, ptr %v2, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca i32
  %lp3 = alloca ptr
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
  %l15 = alloca i32
  %l16 = alloca i32
  %l19 = alloca i32
  %l22 = alloca i32
  %l23 = alloca ptr
  %l24 = alloca ptr
  %l27 = alloca i32
  %l30 = alloca i32
  %l31 = alloca %"compiler/mir:Fn"
  %l32 = alloca ptr
  %l35 = alloca i32
  %l38 = alloca i32
  %l39 = alloca ptr
  %l41 = alloca ptr
  %l43 = alloca i32
  %l48 = alloca %"compiler/mir:Local"
  %l49 = alloca i32
  %l53 = alloca i32
  %l57 = alloca i32
  %l61 = alloca i32
  %l65 = alloca i32
  %l69 = alloca i32
  %l71 = alloca i32
  %l73 = alloca i32
  %l75 = alloca i32
  %l77 = alloca i32
  %l79 = alloca i32
  %l80 = alloca ptr
  %l81 = alloca %"compiler/source:Span"
  %l83 = alloca %"compiler/mir:Lvalue"
  %l87 = alloca { i64, [21 x i64] }
  %l92 = alloca ptr
  %l93 = alloca i32
  %l94 = alloca %"compiler/source:Span"
  %l96 = alloca %"compiler/mir:Lvalue"
  %l97 = alloca i32
  %l98 = alloca i32
  %l99 = alloca ptr
  %l101 = alloca %"compiler/mir:Lvalue"
  %l102 = alloca { i64, [4 x i64] }
  %l104 = alloca %"compiler/mir:Lvalue"
  %l106 = alloca { i64, ptr }
  %l107 = alloca %"compiler/mir:Range"
  %l109 = alloca { i64, [21 x i64] }
  %l111 = alloca ptr
  %l112 = alloca i32
  %l114 = alloca %"compiler/mir:Lvalue"
  %l123 = alloca { i64, [21 x i64] }
  %l125 = alloca ptr
  %l128 = alloca { i64, [7 x i64] }
  %l129 = alloca ptr
  %l131 = alloca %"compiler/mir:Lvalue"
  %l133 = alloca { i64, ptr }
  %l134 = alloca %"compiler/mir:Range"
  %l135 = alloca %"compiler/mir:Range"
  %l137 = alloca %"compiler/mir:Lvalue"
  %l141 = alloca %"compiler/mir:Call"
  %l142 = alloca i32
  %l148 = alloca ptr
  %l149 = alloca i32
  %l150 = alloca %"compiler/source:Span"
  %l152 = alloca %"compiler/mir:Lvalue"
  %l153 = alloca i32
  %l154 = alloca i32
  %l155 = alloca ptr
  %l157 = alloca %"compiler/mir:Lvalue"
  %l161 = alloca { i64, ptr }
  %l162 = alloca %"compiler/mir:Range"
  %l164 = alloca { i64, [21 x i64] }
  %l170 = alloca { i64, [21 x i64] }
  %l179 = alloca { i64, [21 x i64] }
  %l181 = alloca ptr
  %l182 = alloca i32
  %l183 = alloca %"compiler/source:Span"
  %l185 = alloca %"compiler/mir:Lvalue"
  %l188 = alloca ptr
  %l189 = alloca i32
  %l190 = alloca %"compiler/source:Span"
  %l192 = alloca %"compiler/mir:Lvalue"
  %l194 = alloca %"compiler/mir:Lvalue"
  %l199 = alloca { i64, [21 x i64] }
  %l205 = alloca { i64, [21 x i64] }
  %l210 = alloca { i64, [21 x i64] }
  %l212 = alloca ptr
  %l213 = alloca i32
  %l214 = alloca %"compiler/source:Span"
  %l216 = alloca %"compiler/mir:Lvalue"
  %l219 = alloca %"compiler/mir:Fn"
  %s0 = alloca %olang.scope
  %t25 = alloca %"compiler/mir:Fn", align 8
  %t58 = alloca { i64, [1 x i64] }, align 8
  %t136 = alloca { i64, [4 x i64] }, align 8
  %t143 = alloca { i64, [15 x i64] }, align 8
  %t149 = alloca { i64, [21 x i64] }, align 8
  %t163 = alloca { i64, [8 x i64] }, align 8
  %t182 = alloca { i64, [4 x i64] }, align 8
  %t191 = alloca { i64, [4 x i64] }, align 8
  %t212 = alloca { i64, [15 x i64] }, align 8
  %t222 = alloca { i64, [21 x i64] }, align 8
  %t240 = alloca { i64, [4 x i64] }, align 8
  %t248 = alloca { i64, [8 x i64] }, align 8
  %t265 = alloca { i64, [21 x i64] }, align 8
  %t277 = alloca { i64, [2 x i64] }, align 8
  %t283 = alloca { i64, [7 x i64] }, align 8
  %t295 = alloca { i64, [4 x i64] }, align 8
  %t335 = alloca { i64, [8 x i64] }, align 8
  %t357 = alloca { i64, [4 x i64] }, align 8
  %t364 = alloca { i64, [4 x i64] }, align 8
  %t386 = alloca { i64, [15 x i64] }, align 8
  %t396 = alloca { i64, [21 x i64] }, align 8
  %t413 = alloca { i64, [21 x i64] }, align 8
  %t427 = alloca { i64, [8 x i64] }, align 8
  %t439 = alloca { i64, [21 x i64] }, align 8
  %t455 = alloca { i64, [4 x i64] }, align 8
  %t461 = alloca { i64, [8 x i64] }, align 8
  %t481 = alloca { i64, [4 x i64] }, align 8
  %t489 = alloca { i64, [15 x i64] }, align 8
  %t499 = alloca { i64, [21 x i64] }, align 8
  %t516 = alloca { i64, [21 x i64] }, align 8
  %t530 = alloca { i64, [21 x i64] }, align 8
  %t546 = alloca { i64, [4 x i64] }, align 8
  %t552 = alloca { i64, [8 x i64] }, align 8
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePrim(ptr %v0, ptr %s0, ptr %t1, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d2, i32 0, i32 1) })
  store i32 %t3, ptr %l19
  br label %bb1
bb1:
  %t4 = load i32, ptr %l19, !tbaa !23
  store i32 %t4, ptr %l1, !tbaa !23
  %t5 = load ptr, ptr %l0, !tbaa !29
  %t6 = load i32, ptr @G_2ecompiler_2ftypes_2eDefaultErrT, !tbaa !23
  %t9 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eList1(ptr %v0, ptr %t5, i32 %t6)
  store i32 %t9, ptr %l22
  br label %bb2
bb2:
  %t10 = load i32, ptr %l22, !tbaa !23
  store i32 %t10, ptr %l2, !tbaa !23
  %t11 = load ptr, ptr %l0, !tbaa !29
  store ptr %t11, ptr %l23, !tbaa !29
  %t12 = load ptr, ptr %l0, !tbaa !29
  store ptr %t12, ptr %l24, !tbaa !29
  %t13 = load ptr, ptr %l0, !tbaa !29
  %t14 = load i32, ptr %l1, !tbaa !23
  %t17 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eList1(ptr %v0, ptr %t13, i32 %t14)
  store i32 %t17, ptr %l27
  br label %bb3
bb3:
  %t18 = load i32, ptr %l1, !tbaa !23
  %t19 = load i32, ptr %l2, !tbaa !23
  %t20 = load ptr, ptr %l24, !tbaa !29
  %t21 = load i32, ptr %l27, !tbaa !23
  %t24 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eFunc(ptr %v0, ptr %t20, i32 %t21, i32 %t18, i32 %t19, i32 0, i64 0, i1 false, i32 0, i64 0)
  store i32 %t24, ptr %l30
  br label %bb4
bb4:
  %t26 = load ptr, ptr %l23, !tbaa !29
  %t27 = load i32, ptr %l30, !tbaa !23
  call void @compiler_2fmir_2eFn_2etfn(ptr %t25, ptr %v0, ptr %v1, ptr %t26, i32 %t27)
  call void @llvm.memmove.p0.p0.i64(ptr %l31, ptr %t25, i64 800, i1 false)
  br label %bb5
bb5:
  %t28 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 800, i64 8)
  store ptr %t28, ptr %lp3
  %t29 = load ptr, ptr %lp3
  call void @llvm.memmove.p0.p0.i64(ptr %t29, ptr %l31, i64 800, i1 false)
  %t30 = load ptr, ptr %l0, !tbaa !29
  store ptr %t30, ptr %l32, !tbaa !29
  %t31 = load ptr, ptr %l0, !tbaa !29
  %t32 = load i32, ptr %l1, !tbaa !23
  %t35 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eList1(ptr %v0, ptr %t31, i32 %t32)
  store i32 %t35, ptr %l35
  br label %bb6
bb6:
  %t36 = load i32, ptr %l1, !tbaa !23
  %t37 = load i32, ptr %l2, !tbaa !23
  %t38 = load ptr, ptr %l32, !tbaa !29
  %t39 = load i32, ptr %l35, !tbaa !23
  %t42 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eFunc(ptr %v0, ptr %t38, i32 %t39, i32 %t36, i32 %t37, i32 0, i64 0, i1 false, i32 0, i64 0)
  store i32 %t42, ptr %l38
  br label %bb7
bb7:
  %t43 = load i32, ptr %l38, !tbaa !23
  store i32 %t43, ptr %l4, !tbaa !23
  store i32 0, ptr %l5, !tbaa !23
  %t44 = load ptr, ptr %lp3
  store ptr %t44, ptr %l39, !tbaa !29
  %t45 = load ptr, ptr %l0, !tbaa !29
  %t47 = getelementptr %"compiler/types:Table", ptr %t45, i32 0, i32 0
  %t48 = load ptr, ptr %t47, !tbaa !29
  store ptr %t48, ptr %l41, !tbaa !29
  %t49 = load ptr, ptr %l41, !tbaa !29
  %t50 = call ptr @__olang_scope_or(ptr %v2, ptr %t49)
  %t51 = ptrtoint ptr %t50 to i64
  %t53 = inttoptr i64 %t51 to ptr
  %t54 = load ptr, ptr %l41, !tbaa !29
  %t55 = call i32 @compiler_2fsource_2ecompiler_2fsource_3aNames_2eIntern(ptr %t53, ptr %s0, ptr %t54, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d3, i32 0, i32 1) })
  store i32 %t55, ptr %l43
  br label %bb8
bb8:
  %t56 = load %"compiler/source:Span", ptr @G_2ecompiler_2fmir_2eSp0
  %t57 = load i32, ptr %l1, !tbaa !23
  store { i64, [1 x i64] } zeroinitializer, ptr %t58
  %t59 = getelementptr { i64, [1 x i64] }, ptr %t58, i32 0, i32 0
  store i64 3, ptr %t59
  %t60 = load { i64, [1 x i64] }, ptr %t58
  %t61 = load i32, ptr %l43, !tbaa !23
  %t66 = call %"compiler/mir:Local" @compiler_2fmir_3aLocal_2ector(ptr %s0, i32 %t61, %"compiler/source:Span" %t56, i32 %t57, i32 2, { i64, [1 x i64] } %t60)
  store %"compiler/mir:Local" %t66, ptr %l48
  br label %bb9
bb9:
  %t67 = load ptr, ptr %l39, !tbaa !29
  %t68 = load %"compiler/mir:Local", ptr %l48
  %t69 = call i32 @compiler_2fmir_2ecompiler_2fmir_3aFn_2eAddLocal(ptr %v1, ptr %t67, %"compiler/mir:Local" %t68)
  store i32 %t69, ptr %l49
  br label %bb10
bb10:
  %t70 = load i32, ptr %l49, !tbaa !23
  store i32 %t70, ptr %l6, !tbaa !23
  %t71 = load ptr, ptr %lp3
  %t72 = load i32, ptr @G_2ecompiler_2ftypes_2eBoolT, !tbaa !23
  %t73 = load %"compiler/source:Span", ptr @G_2ecompiler_2fmir_2eSp0
  %t77 = call i32 @compiler_2fmir_2ecompiler_2fmir_3aFn_2eAddTemp(ptr %v1, ptr %t71, i32 %t72, %"compiler/source:Span" %t73)
  store i32 %t77, ptr %l53
  br label %bb11
bb11:
  %t78 = load i32, ptr %l53, !tbaa !23
  store i32 %t78, ptr %l7, !tbaa !23
  %t79 = load ptr, ptr %lp3
  %t80 = load i32, ptr %l1, !tbaa !23
  %t81 = load %"compiler/source:Span", ptr @G_2ecompiler_2fmir_2eSp0
  %t85 = call i32 @compiler_2fmir_2ecompiler_2fmir_3aFn_2eAddTemp(ptr %v1, ptr %t79, i32 %t80, %"compiler/source:Span" %t81)
  store i32 %t85, ptr %l57
  br label %bb12
bb12:
  %t86 = load i32, ptr %l57, !tbaa !23
  store i32 %t86, ptr %l8, !tbaa !23
  %t87 = load ptr, ptr %lp3
  %t88 = load i32, ptr @G_2ecompiler_2fmir_2eI32T, !tbaa !23
  %t89 = load %"compiler/source:Span", ptr @G_2ecompiler_2fmir_2eSp0
  %t93 = call i32 @compiler_2fmir_2ecompiler_2fmir_3aFn_2eAddTemp(ptr %v1, ptr %t87, i32 %t88, %"compiler/source:Span" %t89)
  store i32 %t93, ptr %l61
  br label %bb13
bb13:
  %t94 = load i32, ptr %l61, !tbaa !23
  store i32 %t94, ptr %l9, !tbaa !23
  %t95 = load ptr, ptr %lp3
  %t96 = load i32, ptr @G_2ecompiler_2fmir_2eI32T, !tbaa !23
  %t97 = load %"compiler/source:Span", ptr @G_2ecompiler_2fmir_2eSp0
  %t101 = call i32 @compiler_2fmir_2ecompiler_2fmir_3aFn_2eAddTemp(ptr %v1, ptr %t95, i32 %t96, %"compiler/source:Span" %t97)
  store i32 %t101, ptr %l65
  br label %bb14
bb14:
  %t102 = load i32, ptr %l65, !tbaa !23
  store i32 %t102, ptr %l10, !tbaa !23
  %t103 = load ptr, ptr %lp3
  %t104 = load %"compiler/source:Span", ptr @G_2ecompiler_2fmir_2eSp0
  %t108 = call i32 @compiler_2fmir_2ecompiler_2fmir_3aFn_2eAddScope(ptr %v1, ptr %t103, i32 2, i32 0, i32 1, %"compiler/source:Span" %t104, i32 0)
  store i32 %t108, ptr %l69
  br label %bb15
bb15:
  %t109 = load i32, ptr %l69, !tbaa !23
  store i32 %t109, ptr %l11, !tbaa !23
  %t110 = load ptr, ptr %lp3
  %t112 = call i32 @compiler_2fmir_2ecompiler_2fmir_3aFn_2eNewBlock(ptr %v1, ptr %t110)
  store i32 %t112, ptr %l71
  br label %bb16
bb16:
  %t113 = load i32, ptr %l71, !tbaa !23
  store i32 %t113, ptr %l12, !tbaa !23
  %t114 = load ptr, ptr %lp3
  %t116 = call i32 @compiler_2fmir_2ecompiler_2fmir_3aFn_2eNewBlock(ptr %v1, ptr %t114)
  store i32 %t116, ptr %l73
  br label %bb17
bb17:
  %t117 = load i32, ptr %l73, !tbaa !23
  store i32 %t117, ptr %l13, !tbaa !23
  %t118 = load ptr, ptr %lp3
  %t120 = call i32 @compiler_2fmir_2ecompiler_2fmir_3aFn_2eNewBlock(ptr %v1, ptr %t118)
  store i32 %t120, ptr %l75
  br label %bb18
bb18:
  %t121 = load i32, ptr %l75, !tbaa !23
  store i32 %t121, ptr %l14, !tbaa !23
  %t122 = load ptr, ptr %lp3
  %t124 = call i32 @compiler_2fmir_2ecompiler_2fmir_3aFn_2eNewBlock(ptr %v1, ptr %t122)
  store i32 %t124, ptr %l77
  br label %bb19
bb19:
  %t125 = load i32, ptr %l77, !tbaa !23
  store i32 %t125, ptr %l15, !tbaa !23
  %t126 = load ptr, ptr %lp3
  %t128 = call i32 @compiler_2fmir_2ecompiler_2fmir_3aFn_2eNewBlock(ptr %v1, ptr %t126)
  store i32 %t128, ptr %l79
  br label %bb20
bb20:
  %t129 = load i32, ptr %l79, !tbaa !23
  store i32 %t129, ptr %l16, !tbaa !23
  %t130 = load ptr, ptr %lp3
  store ptr %t130, ptr %l80, !tbaa !29
  %t131 = load %"compiler/source:Span", ptr @G_2ecompiler_2fmir_2eSp0
  store %"compiler/source:Span" %t131, ptr %l81
  %t132 = load i32, ptr %l6, !tbaa !23
  %t134 = call %"compiler/mir:Lvalue" @compiler_2fmir_2eLvalue_2eL(i32 %t132)
  store %"compiler/mir:Lvalue" %t134, ptr %l83
  br label %bb21
bb21:
  %t135 = load i32, ptr %l1, !tbaa !23
  store { i64, [4 x i64] } zeroinitializer, ptr %t136
  %t137 = getelementptr { i64, [4 x i64] }, ptr %t136, i32 0, i32 0
  store i64 2, ptr %t137
  %t139 = insertvalue { i32, i64 } undef, i32 %t135, 0
  %t140 = insertvalue { i32, i64 } %t139, i64 0, 1
  %t141 = getelementptr { i64, [4 x i64] }, ptr %t136, i32 0, i32 1
  store { i32, i64 } %t140, ptr %t141
  %t142 = load { i64, [4 x i64] }, ptr %t136
  store { i64, [15 x i64] } zeroinitializer, ptr %t143
  %t144 = getelementptr { i64, [15 x i64] }, ptr %t143, i32 0, i32 0
  store i64 0, ptr %t144
  %t146 = insertvalue { { i64, [4 x i64] } } undef, { i64, [4 x i64] } %t142, 0
  %t147 = getelementptr { i64, [15 x i64] }, ptr %t143, i32 0, i32 1
  store { { i64, [4 x i64] } } %t146, ptr %t147
  %t148 = load { i64, [15 x i64] }, ptr %t143
  store { i64, [21 x i64] } zeroinitializer, ptr %t149
  %t150 = getelementptr { i64, [21 x i64] }, ptr %t149, i32 0, i32 0
  store i64 0, ptr %t150
  %t151 = load %"compiler/source:Span", ptr %l81
  %t152 = insertvalue { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } undef, %"compiler/source:Span" %t151, 0
  %t153 = load %"compiler/mir:Lvalue", ptr %l83
  %t154 = insertvalue { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } %t152, %"compiler/mir:Lvalue" %t153, 1
  %t156 = insertvalue { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } %t154, { i64, [15 x i64] } %t148, 2
  %t157 = getelementptr { i64, [21 x i64] }, ptr %t149, i32 0, i32 1
  store { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } %t156, ptr %t157
  %t158 = load { i64, [21 x i64] }, ptr %t149
  store { i64, [21 x i64] } %t158, ptr %l87
  %t159 = load ptr, ptr %l80, !tbaa !29
  call void @compiler_2fmir_2ecompiler_2fmir_3aFn_2eAdd(ptr %v1, ptr %s0, ptr %t159, i32 0, ptr %l87)
  br label %bb22
bb22:
  %t161 = load ptr, ptr %lp3
  %t162 = load i32, ptr %l12, !tbaa !23
  store { i64, [8 x i64] } zeroinitializer, ptr %t163
  %t164 = getelementptr { i64, [8 x i64] }, ptr %t163, i32 0, i32 0
  store i64 1, ptr %t164
  %t166 = insertvalue { i32 } undef, i32 %t162, 0
  %t167 = getelementptr { i64, [8 x i64] }, ptr %t163, i32 0, i32 1
  store { i32 } %t166, ptr %t167
  %t168 = load { i64, [8 x i64] }, ptr %t163
  call void @compiler_2fmir_2ecompiler_2fmir_3aFn_2eEnd(ptr %v1, ptr %t161, i32 0, { i64, [8 x i64] } %t168)
  br label %bb23
bb23:
  %t171 = load ptr, ptr %lp3
  store ptr %t171, ptr %l92, !tbaa !29
  %t172 = load i32, ptr %l12, !tbaa !23
  store i32 %t172, ptr %l93, !tbaa !23
  %t173 = load %"compiler/source:Span", ptr @G_2ecompiler_2fmir_2eSp0
  store %"compiler/source:Span" %t173, ptr %l94
  %t174 = load i32, ptr %l7, !tbaa !23
  %t176 = call %"compiler/mir:Lvalue" @compiler_2fmir_2eLvalue_2eL(i32 %t174)
  store %"compiler/mir:Lvalue" %t176, ptr %l96
  br label %bb24
bb24:
  store i32 15, ptr %l97
  %t177 = load i32, ptr @G_2ecompiler_2ftypes_2eBoolT, !tbaa !23
  store i32 %t177, ptr %l98, !tbaa !23
  %t178 = load ptr, ptr %lp3
  store ptr %t178, ptr %l99, !tbaa !29
  %t179 = load i32, ptr %l6, !tbaa !23
  %t181 = call %"compiler/mir:Lvalue" @compiler_2fmir_2eLvalue_2eL(i32 %t179)
  store %"compiler/mir:Lvalue" %t181, ptr %l101
  br label %bb25
bb25:
  store { i64, [4 x i64] } zeroinitializer, ptr %t182
  %t183 = getelementptr { i64, [4 x i64] }, ptr %t182, i32 0, i32 0
  store i64 1, ptr %t183
  %t184 = load %"compiler/mir:Lvalue", ptr %l101
  %t185 = insertvalue { %"compiler/mir:Lvalue" } undef, %"compiler/mir:Lvalue" %t184, 0
  %t186 = getelementptr { i64, [4 x i64] }, ptr %t182, i32 0, i32 1
  store { %"compiler/mir:Lvalue" } %t185, ptr %t186
  %t187 = load { i64, [4 x i64] }, ptr %t182
  store { i64, [4 x i64] } %t187, ptr %l102
  %t188 = load i32, ptr %l5, !tbaa !23
  %t190 = call %"compiler/mir:Lvalue" @compiler_2fmir_2eLvalue_2eL(i32 %t188)
  store %"compiler/mir:Lvalue" %t190, ptr %l104
  br label %bb26
bb26:
  store { i64, [4 x i64] } zeroinitializer, ptr %t191
  %t192 = getelementptr { i64, [4 x i64] }, ptr %t191, i32 0, i32 0
  store i64 1, ptr %t192
  %t193 = load %"compiler/mir:Lvalue", ptr %l104
  %t194 = insertvalue { %"compiler/mir:Lvalue" } undef, %"compiler/mir:Lvalue" %t193, 0
  %t195 = getelementptr { i64, [4 x i64] }, ptr %t191, i32 0, i32 1
  store { %"compiler/mir:Lvalue" } %t194, ptr %t195
  %t196 = load { i64, [4 x i64] }, ptr %t191
  %t197 = mul i64 2, 40
  %t198 = call ptr @__olang_scope_alloc_zeroed(ptr %s0, i64 %t197)
  %t199 = insertvalue { i64, ptr } undef, i64 2, 0
  %t200 = insertvalue { i64, ptr } %t199, ptr %t198, 1
  store { i64, ptr } %t200, ptr %l106, !tbaa !27
  %t201 = load { i64, [4 x i64] }, ptr %l102
  %t202 = getelementptr { i64, ptr }, ptr %l106, i32 0, i32 1
  %t203 = load ptr, ptr %t202, !tbaa !27
  %t204 = getelementptr { i64, [4 x i64] }, ptr %t203, i64 0
  store { i64, [4 x i64] } %t201, ptr %t204
  %t206 = getelementptr { i64, ptr }, ptr %l106, i32 0, i32 1
  %t207 = load ptr, ptr %t206, !tbaa !27
  %t208 = getelementptr { i64, [4 x i64] }, ptr %t207, i64 1
  store { i64, [4 x i64] } %t196, ptr %t208
  %t209 = load ptr, ptr %l99, !tbaa !29
  %t210 = load { i64, ptr }, ptr %l106, !tbaa !27
  %t211 = call %"compiler/mir:Range" @compiler_2fmir_2ecompiler_2fmir_3aFn_2eArgs(ptr %v1, ptr %s0, ptr %t209, { i64, ptr } %t210)
  store %"compiler/mir:Range" %t211, ptr %l107
  br label %bb27
bb27:
  store { i64, [15 x i64] } zeroinitializer, ptr %t212
  %t213 = getelementptr { i64, [15 x i64] }, ptr %t212, i32 0, i32 0
  store i64 3, ptr %t213
  %t214 = load i32, ptr %l97, !range !{i32 0, i32 52}
  %t215 = insertvalue { i32, i32, %"compiler/mir:Range" } undef, i32 %t214, 0
  %t216 = load i32, ptr %l98, !tbaa !23
  %t217 = insertvalue { i32, i32, %"compiler/mir:Range" } %t215, i32 %t216, 1
  %t218 = load %"compiler/mir:Range", ptr %l107
  %t219 = insertvalue { i32, i32, %"compiler/mir:Range" } %t217, %"compiler/mir:Range" %t218, 2
  %t220 = getelementptr { i64, [15 x i64] }, ptr %t212, i32 0, i32 1
  store { i32, i32, %"compiler/mir:Range" } %t219, ptr %t220
  %t221 = load { i64, [15 x i64] }, ptr %t212
  store { i64, [21 x i64] } zeroinitializer, ptr %t222
  %t223 = getelementptr { i64, [21 x i64] }, ptr %t222, i32 0, i32 0
  store i64 0, ptr %t223
  %t224 = load %"compiler/source:Span", ptr %l94
  %t225 = insertvalue { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } undef, %"compiler/source:Span" %t224, 0
  %t226 = load %"compiler/mir:Lvalue", ptr %l96
  %t227 = insertvalue { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } %t225, %"compiler/mir:Lvalue" %t226, 1
  %t229 = insertvalue { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } %t227, { i64, [15 x i64] } %t221, 2
  %t230 = getelementptr { i64, [21 x i64] }, ptr %t222, i32 0, i32 1
  store { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } %t229, ptr %t230
  %t231 = load { i64, [21 x i64] }, ptr %t222
  store { i64, [21 x i64] } %t231, ptr %l109
  %t232 = load ptr, ptr %l92, !tbaa !29
  %t233 = load i32, ptr %l93, !tbaa !23
  call void @compiler_2fmir_2ecompiler_2fmir_3aFn_2eAdd(ptr %v1, ptr %s0, ptr %t232, i32 %t233, ptr %l109)
  br label %bb28
bb28:
  %t235 = load ptr, ptr %lp3
  store ptr %t235, ptr %l111, !tbaa !29
  %t236 = load i32, ptr %l12, !tbaa !23
  store i32 %t236, ptr %l112, !tbaa !23
  %t237 = load i32, ptr %l7, !tbaa !23
  %t239 = call %"compiler/mir:Lvalue" @compiler_2fmir_2eLvalue_2eL(i32 %t237)
  store %"compiler/mir:Lvalue" %t239, ptr %l114
  br label %bb29
bb29:
  store { i64, [4 x i64] } zeroinitializer, ptr %t240
  %t241 = getelementptr { i64, [4 x i64] }, ptr %t240, i32 0, i32 0
  store i64 1, ptr %t241
  %t242 = load %"compiler/mir:Lvalue", ptr %l114
  %t243 = insertvalue { %"compiler/mir:Lvalue" } undef, %"compiler/mir:Lvalue" %t242, 0
  %t244 = getelementptr { i64, [4 x i64] }, ptr %t240, i32 0, i32 1
  store { %"compiler/mir:Lvalue" } %t243, ptr %t244
  %t245 = load { i64, [4 x i64] }, ptr %t240
  %t246 = load i32, ptr %l13, !tbaa !23
  %t247 = load i32, ptr %l15, !tbaa !23
  store { i64, [8 x i64] } zeroinitializer, ptr %t248
  %t249 = getelementptr { i64, [8 x i64] }, ptr %t248, i32 0, i32 0
  store i64 2, ptr %t249
  %t251 = insertvalue { { i64, [4 x i64] }, i32, i32 } undef, { i64, [4 x i64] } %t245, 0
  %t253 = insertvalue { { i64, [4 x i64] }, i32, i32 } %t251, i32 %t246, 1
  %t255 = insertvalue { { i64, [4 x i64] }, i32, i32 } %t253, i32 %t247, 2
  %t256 = getelementptr { i64, [8 x i64] }, ptr %t248, i32 0, i32 1
  store { { i64, [4 x i64] }, i32, i32 } %t255, ptr %t256
  %t257 = load { i64, [8 x i64] }, ptr %t248
  %t258 = load ptr, ptr %l111, !tbaa !29
  %t259 = load i32, ptr %l112, !tbaa !23
  call void @compiler_2fmir_2ecompiler_2fmir_3aFn_2eEnd(ptr %v1, ptr %t258, i32 %t259, { i64, [8 x i64] } %t257)
  br label %bb30
bb30:
  %t261 = load ptr, ptr %lp3
  %t262 = load i32, ptr %l13, !tbaa !23
  %t263 = load %"compiler/source:Span", ptr @G_2ecompiler_2fmir_2eSp0
  %t264 = load i32, ptr %l11, !tbaa !23
  store { i64, [21 x i64] } zeroinitializer, ptr %t265
  %t266 = getelementptr { i64, [21 x i64] }, ptr %t265, i32 0, i32 0
  store i64 3, ptr %t266
  %t268 = insertvalue { %"compiler/source:Span", i32 } undef, %"compiler/source:Span" %t263, 0
  %t270 = insertvalue { %"compiler/source:Span", i32 } %t268, i32 %t264, 1
  %t271 = getelementptr { i64, [21 x i64] }, ptr %t265, i32 0, i32 1
  store { %"compiler/source:Span", i32 } %t270, ptr %t271
  %t272 = load { i64, [21 x i64] }, ptr %t265
  store { i64, [21 x i64] } %t272, ptr %l123
  call void @compiler_2fmir_2ecompiler_2fmir_3aFn_2eAdd(ptr %v1, ptr %s0, ptr %t261, i32 %t262, ptr %l123)
  br label %bb31
bb31:
  %t276 = load ptr, ptr %lp3
  store ptr %t276, ptr %l125, !tbaa !29
  store { i64, [2 x i64] } zeroinitializer, ptr %t277
  %t278 = getelementptr { i64, [2 x i64] }, ptr %t277, i32 0, i32 0
  store i64 0, ptr %t278
  %t279 = insertvalue { i32 } undef, i32 1, 0
  %t280 = getelementptr { i64, [2 x i64] }, ptr %t277, i32 0, i32 1
  store { i32 } %t279, ptr %t280
  %t281 = load { i64, [2 x i64] }, ptr %t277
  %t282 = load i32, ptr %l4, !tbaa !23
  store { i64, [7 x i64] } zeroinitializer, ptr %t283
  %t284 = getelementptr { i64, [7 x i64] }, ptr %t283, i32 0, i32 0
  store i64 0, ptr %t284
  %t286 = insertvalue { { i64, [2 x i64] }, i32 } undef, { i64, [2 x i64] } %t281, 0
  %t288 = insertvalue { { i64, [2 x i64] }, i32 } %t286, i32 %t282, 1
  %t289 = getelementptr { i64, [7 x i64] }, ptr %t283, i32 0, i32 1
  store { { i64, [2 x i64] }, i32 } %t288, ptr %t289
  %t290 = load { i64, [7 x i64] }, ptr %t283
  store { i64, [7 x i64] } %t290, ptr %l128
  %t291 = load ptr, ptr %lp3
  store ptr %t291, ptr %l129, !tbaa !29
  %t292 = load i32, ptr %l6, !tbaa !23
  %t294 = call %"compiler/mir:Lvalue" @compiler_2fmir_2eLvalue_2eL(i32 %t292)
  store %"compiler/mir:Lvalue" %t294, ptr %l131
  br label %bb32
bb32:
  store { i64, [4 x i64] } zeroinitializer, ptr %t295
  %t296 = getelementptr { i64, [4 x i64] }, ptr %t295, i32 0, i32 0
  store i64 1, ptr %t296
  %t297 = load %"compiler/mir:Lvalue", ptr %l131
  %t298 = insertvalue { %"compiler/mir:Lvalue" } undef, %"compiler/mir:Lvalue" %t297, 0
  %t299 = getelementptr { i64, [4 x i64] }, ptr %t295, i32 0, i32 1
  store { %"compiler/mir:Lvalue" } %t298, ptr %t299
  %t300 = load { i64, [4 x i64] }, ptr %t295
  %t301 = mul i64 1, 40
  %t302 = call ptr @__olang_scope_alloc_zeroed(ptr %s0, i64 %t301)
  %t303 = insertvalue { i64, ptr } undef, i64 1, 0
  %t304 = insertvalue { i64, ptr } %t303, ptr %t302, 1
  store { i64, ptr } %t304, ptr %l133, !tbaa !27
  %t306 = getelementptr { i64, ptr }, ptr %l133, i32 0, i32 1
  %t307 = load ptr, ptr %t306, !tbaa !27
  %t308 = getelementptr { i64, [4 x i64] }, ptr %t307, i64 0
  store { i64, [4 x i64] } %t300, ptr %t308
  %t309 = load ptr, ptr %l129, !tbaa !29
  %t310 = load { i64, ptr }, ptr %l133, !tbaa !27
  %t311 = call %"compiler/mir:Range" @compiler_2fmir_2ecompiler_2fmir_3aFn_2eArgs(ptr %v1, ptr %s0, ptr %t309, { i64, ptr } %t310)
  store %"compiler/mir:Range" %t311, ptr %l134
  br label %bb33
bb33:
  %t312 = load %"compiler/mir:Range", ptr @G_2ecompiler_2fmir_2eEmpty
  store %"compiler/mir:Range" %t312, ptr %l135
  %t313 = load i32, ptr %l8, !tbaa !23
  %t315 = call %"compiler/mir:Lvalue" @compiler_2fmir_2eLvalue_2eL(i32 %t313)
  store %"compiler/mir:Lvalue" %t315, ptr %l137
  br label %bb34
bb34:
  %t316 = load i32, ptr %l14, !tbaa !23
  %t317 = load i32, ptr %l9, !tbaa !23
  %t318 = load i32, ptr %l16, !tbaa !23
  %t319 = load { i64, [7 x i64] }, ptr %l128
  %t320 = load %"compiler/mir:Range", ptr %l134
  %t321 = load %"compiler/mir:Range", ptr %l135
  %t322 = load %"compiler/mir:Lvalue", ptr %l137
  %t326 = call %"compiler/mir:Call" @compiler_2fmir_3aCall_2ector(ptr %s0, { i64, [7 x i64] } %t319, %"compiler/mir:Range" %t320, %"compiler/mir:Range" %t321, %"compiler/mir:Lvalue" %t322, i1 true, i32 %t316, i32 %t317, i32 %t318)
  store %"compiler/mir:Call" %t326, ptr %l141
  br label %bb35
bb35:
  %t327 = load ptr, ptr %l125, !tbaa !29
  %t328 = load %"compiler/mir:Call", ptr %l141
  %t329 = call i32 @compiler_2fmir_2ecompiler_2fmir_3aFn_2eAddCall(ptr %v1, ptr %t327, %"compiler/mir:Call" %t328)
  store i32 %t329, ptr %l142
  br label %bb36
bb36:
  %t330 = load i32, ptr %l142, !tbaa !23
  %t331 = load ptr, ptr %lp3
  %t332 = load i32, ptr %l13, !tbaa !23
  %t333 = load %"compiler/source:Span", ptr @G_2ecompiler_2fmir_2eSp0
  store { i64, [8 x i64] } zeroinitializer, ptr %t335
  %t336 = getelementptr { i64, [8 x i64] }, ptr %t335, i32 0, i32 0
  store i64 4, ptr %t336
  %t338 = insertvalue { %"compiler/source:Span", i32 } undef, %"compiler/source:Span" %t333, 0
  %t340 = insertvalue { %"compiler/source:Span", i32 } %t338, i32 %t330, 1
  %t341 = getelementptr { i64, [8 x i64] }, ptr %t335, i32 0, i32 1
  store { %"compiler/source:Span", i32 } %t340, ptr %t341
  %t342 = load { i64, [8 x i64] }, ptr %t335
  call void @compiler_2fmir_2ecompiler_2fmir_3aFn_2eEnd(ptr %v1, ptr %t331, i32 %t332, { i64, [8 x i64] } %t342)
  br label %bb37
bb37:
  %t346 = load ptr, ptr %lp3
  store ptr %t346, ptr %l148, !tbaa !29
  %t347 = load i32, ptr %l14, !tbaa !23
  store i32 %t347, ptr %l149, !tbaa !23
  %t348 = load %"compiler/source:Span", ptr @G_2ecompiler_2fmir_2eSp0
  store %"compiler/source:Span" %t348, ptr %l150
  %t349 = load i32, ptr %l6, !tbaa !23
  %t351 = call %"compiler/mir:Lvalue" @compiler_2fmir_2eLvalue_2eL(i32 %t349)
  store %"compiler/mir:Lvalue" %t351, ptr %l152
  br label %bb38
bb38:
  store i32 3, ptr %l153
  %t352 = load i32, ptr %l1, !tbaa !23
  store i32 %t352, ptr %l154, !tbaa !23
  %t353 = load ptr, ptr %lp3
  store ptr %t353, ptr %l155, !tbaa !29
  %t354 = load i32, ptr %l6, !tbaa !23
  %t356 = call %"compiler/mir:Lvalue" @compiler_2fmir_2eLvalue_2eL(i32 %t354)
  store %"compiler/mir:Lvalue" %t356, ptr %l157
  br label %bb39
bb39:
  store { i64, [4 x i64] } zeroinitializer, ptr %t357
  %t358 = getelementptr { i64, [4 x i64] }, ptr %t357, i32 0, i32 0
  store i64 1, ptr %t358
  %t359 = load %"compiler/mir:Lvalue", ptr %l157
  %t360 = insertvalue { %"compiler/mir:Lvalue" } undef, %"compiler/mir:Lvalue" %t359, 0
  %t361 = getelementptr { i64, [4 x i64] }, ptr %t357, i32 0, i32 1
  store { %"compiler/mir:Lvalue" } %t360, ptr %t361
  %t362 = load { i64, [4 x i64] }, ptr %t357
  %t363 = load i32, ptr %l1, !tbaa !23
  store { i64, [4 x i64] } zeroinitializer, ptr %t364
  %t365 = getelementptr { i64, [4 x i64] }, ptr %t364, i32 0, i32 0
  store i64 2, ptr %t365
  %t367 = insertvalue { i32, i64 } undef, i32 %t363, 0
  %t368 = insertvalue { i32, i64 } %t367, i64 1, 1
  %t369 = getelementptr { i64, [4 x i64] }, ptr %t364, i32 0, i32 1
  store { i32, i64 } %t368, ptr %t369
  %t370 = load { i64, [4 x i64] }, ptr %t364
  %t371 = mul i64 2, 40
  %t372 = call ptr @__olang_scope_alloc_zeroed(ptr %s0, i64 %t371)
  %t373 = insertvalue { i64, ptr } undef, i64 2, 0
  %t374 = insertvalue { i64, ptr } %t373, ptr %t372, 1
  store { i64, ptr } %t374, ptr %l161, !tbaa !27
  %t376 = getelementptr { i64, ptr }, ptr %l161, i32 0, i32 1
  %t377 = load ptr, ptr %t376, !tbaa !27
  %t378 = getelementptr { i64, [4 x i64] }, ptr %t377, i64 0
  store { i64, [4 x i64] } %t362, ptr %t378
  %t380 = getelementptr { i64, ptr }, ptr %l161, i32 0, i32 1
  %t381 = load ptr, ptr %t380, !tbaa !27
  %t382 = getelementptr { i64, [4 x i64] }, ptr %t381, i64 1
  store { i64, [4 x i64] } %t370, ptr %t382
  %t383 = load ptr, ptr %l155, !tbaa !29
  %t384 = load { i64, ptr }, ptr %l161, !tbaa !27
  %t385 = call %"compiler/mir:Range" @compiler_2fmir_2ecompiler_2fmir_3aFn_2eArgs(ptr %v1, ptr %s0, ptr %t383, { i64, ptr } %t384)
  store %"compiler/mir:Range" %t385, ptr %l162
  br label %bb40
bb40:
  store { i64, [15 x i64] } zeroinitializer, ptr %t386
  %t387 = getelementptr { i64, [15 x i64] }, ptr %t386, i32 0, i32 0
  store i64 3, ptr %t387
  %t388 = load i32, ptr %l153, !range !{i32 0, i32 52}
  %t389 = insertvalue { i32, i32, %"compiler/mir:Range" } undef, i32 %t388, 0
  %t390 = load i32, ptr %l154, !tbaa !23
  %t391 = insertvalue { i32, i32, %"compiler/mir:Range" } %t389, i32 %t390, 1
  %t392 = load %"compiler/mir:Range", ptr %l162
  %t393 = insertvalue { i32, i32, %"compiler/mir:Range" } %t391, %"compiler/mir:Range" %t392, 2
  %t394 = getelementptr { i64, [15 x i64] }, ptr %t386, i32 0, i32 1
  store { i32, i32, %"compiler/mir:Range" } %t393, ptr %t394
  %t395 = load { i64, [15 x i64] }, ptr %t386
  store { i64, [21 x i64] } zeroinitializer, ptr %t396
  %t397 = getelementptr { i64, [21 x i64] }, ptr %t396, i32 0, i32 0
  store i64 0, ptr %t397
  %t398 = load %"compiler/source:Span", ptr %l150
  %t399 = insertvalue { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } undef, %"compiler/source:Span" %t398, 0
  %t400 = load %"compiler/mir:Lvalue", ptr %l152
  %t401 = insertvalue { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } %t399, %"compiler/mir:Lvalue" %t400, 1
  %t403 = insertvalue { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } %t401, { i64, [15 x i64] } %t395, 2
  %t404 = getelementptr { i64, [21 x i64] }, ptr %t396, i32 0, i32 1
  store { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } %t403, ptr %t404
  %t405 = load { i64, [21 x i64] }, ptr %t396
  store { i64, [21 x i64] } %t405, ptr %l164
  %t406 = load ptr, ptr %l148, !tbaa !29
  %t407 = load i32, ptr %l149, !tbaa !23
  call void @compiler_2fmir_2ecompiler_2fmir_3aFn_2eAdd(ptr %v1, ptr %s0, ptr %t406, i32 %t407, ptr %l164)
  br label %bb41
bb41:
  %t409 = load ptr, ptr %lp3
  %t410 = load i32, ptr %l14, !tbaa !23
  %t411 = load %"compiler/source:Span", ptr @G_2ecompiler_2fmir_2eSp0
  %t412 = load i32, ptr %l11, !tbaa !23
  store { i64, [21 x i64] } zeroinitializer, ptr %t413
  %t414 = getelementptr { i64, [21 x i64] }, ptr %t413, i32 0, i32 0
  store i64 4, ptr %t414
  %t416 = insertvalue { %"compiler/source:Span", i32 } undef, %"compiler/source:Span" %t411, 0
  %t418 = insertvalue { %"compiler/source:Span", i32 } %t416, i32 %t412, 1
  %t419 = getelementptr { i64, [21 x i64] }, ptr %t413, i32 0, i32 1
  store { %"compiler/source:Span", i32 } %t418, ptr %t419
  %t420 = load { i64, [21 x i64] }, ptr %t413
  store { i64, [21 x i64] } %t420, ptr %l170
  call void @compiler_2fmir_2ecompiler_2fmir_3aFn_2eAdd(ptr %v1, ptr %s0, ptr %t409, i32 %t410, ptr %l170)
  br label %bb42
bb42:
  %t424 = load ptr, ptr %lp3
  %t425 = load i32, ptr %l14, !tbaa !23
  %t426 = load i32, ptr %l12, !tbaa !23
  store { i64, [8 x i64] } zeroinitializer, ptr %t427
  %t428 = getelementptr { i64, [8 x i64] }, ptr %t427, i32 0, i32 0
  store i64 1, ptr %t428
  %t430 = insertvalue { i32 } undef, i32 %t426, 0
  %t431 = getelementptr { i64, [8 x i64] }, ptr %t427, i32 0, i32 1
  store { i32 } %t430, ptr %t431
  %t432 = load { i64, [8 x i64] }, ptr %t427
  call void @compiler_2fmir_2ecompiler_2fmir_3aFn_2eEnd(ptr %v1, ptr %t424, i32 %t425, { i64, [8 x i64] } %t432)
  br label %bb43
bb43:
  %t436 = load ptr, ptr %lp3
  %t437 = load i32, ptr %l15, !tbaa !23
  %t438 = load %"compiler/source:Span", ptr @G_2ecompiler_2fmir_2eSp0
  store { i64, [21 x i64] } zeroinitializer, ptr %t439
  %t440 = getelementptr { i64, [21 x i64] }, ptr %t439, i32 0, i32 0
  store i64 4, ptr %t440
  %t442 = insertvalue { %"compiler/source:Span", i32 } undef, %"compiler/source:Span" %t438, 0
  %t443 = insertvalue { %"compiler/source:Span", i32 } %t442, i32 0, 1
  %t444 = getelementptr { i64, [21 x i64] }, ptr %t439, i32 0, i32 1
  store { %"compiler/source:Span", i32 } %t443, ptr %t444
  %t445 = load { i64, [21 x i64] }, ptr %t439
  store { i64, [21 x i64] } %t445, ptr %l179
  call void @compiler_2fmir_2ecompiler_2fmir_3aFn_2eAdd(ptr %v1, ptr %s0, ptr %t436, i32 %t437, ptr %l179)
  br label %bb44
bb44:
  %t449 = load ptr, ptr %lp3
  store ptr %t449, ptr %l181, !tbaa !29
  %t450 = load i32, ptr %l15, !tbaa !23
  store i32 %t450, ptr %l182, !tbaa !23
  %t451 = load %"compiler/source:Span", ptr @G_2ecompiler_2fmir_2eSp0
  store %"compiler/source:Span" %t451, ptr %l183
  %t452 = load i32, ptr %l6, !tbaa !23
  %t454 = call %"compiler/mir:Lvalue" @compiler_2fmir_2eLvalue_2eL(i32 %t452)
  store %"compiler/mir:Lvalue" %t454, ptr %l185
  br label %bb45
bb45:
  store { i64, [4 x i64] } zeroinitializer, ptr %t455
  %t456 = getelementptr { i64, [4 x i64] }, ptr %t455, i32 0, i32 0
  store i64 1, ptr %t456
  %t457 = load %"compiler/mir:Lvalue", ptr %l185
  %t458 = insertvalue { %"compiler/mir:Lvalue" } undef, %"compiler/mir:Lvalue" %t457, 0
  %t459 = getelementptr { i64, [4 x i64] }, ptr %t455, i32 0, i32 1
  store { %"compiler/mir:Lvalue" } %t458, ptr %t459
  %t460 = load { i64, [4 x i64] }, ptr %t455
  store { i64, [8 x i64] } zeroinitializer, ptr %t461
  %t462 = getelementptr { i64, [8 x i64] }, ptr %t461, i32 0, i32 0
  store i64 5, ptr %t462
  %t463 = load %"compiler/source:Span", ptr %l183
  %t464 = insertvalue { %"compiler/source:Span", { i64, [4 x i64] } } undef, %"compiler/source:Span" %t463, 0
  %t466 = insertvalue { %"compiler/source:Span", { i64, [4 x i64] } } %t464, { i64, [4 x i64] } %t460, 1
  %t467 = getelementptr { i64, [8 x i64] }, ptr %t461, i32 0, i32 1
  store { %"compiler/source:Span", { i64, [4 x i64] } } %t466, ptr %t467
  %t468 = load { i64, [8 x i64] }, ptr %t461
  %t469 = load ptr, ptr %l181, !tbaa !29
  %t470 = load i32, ptr %l182, !tbaa !23
  call void @compiler_2fmir_2ecompiler_2fmir_3aFn_2eEnd(ptr %v1, ptr %t469, i32 %t470, { i64, [8 x i64] } %t468)
  br label %bb46
bb46:
  %t472 = load ptr, ptr %lp3
  store ptr %t472, ptr %l188, !tbaa !29
  %t473 = load i32, ptr %l16, !tbaa !23
  store i32 %t473, ptr %l189, !tbaa !23
  %t474 = load %"compiler/source:Span", ptr @G_2ecompiler_2fmir_2eSp0
  store %"compiler/source:Span" %t474, ptr %l190
  %t475 = load i32, ptr %l10, !tbaa !23
  %t477 = call %"compiler/mir:Lvalue" @compiler_2fmir_2eLvalue_2eL(i32 %t475)
  store %"compiler/mir:Lvalue" %t477, ptr %l192
  br label %bb47
bb47:
  %t478 = load i32, ptr %l9, !tbaa !23
  %t480 = call %"compiler/mir:Lvalue" @compiler_2fmir_2eLvalue_2eL(i32 %t478)
  store %"compiler/mir:Lvalue" %t480, ptr %l194
  br label %bb48
bb48:
  store { i64, [4 x i64] } zeroinitializer, ptr %t481
  %t482 = getelementptr { i64, [4 x i64] }, ptr %t481, i32 0, i32 0
  store i64 1, ptr %t482
  %t483 = load %"compiler/mir:Lvalue", ptr %l194
  %t484 = insertvalue { %"compiler/mir:Lvalue" } undef, %"compiler/mir:Lvalue" %t483, 0
  %t485 = getelementptr { i64, [4 x i64] }, ptr %t481, i32 0, i32 1
  store { %"compiler/mir:Lvalue" } %t484, ptr %t485
  %t486 = load { i64, [4 x i64] }, ptr %t481
  %t487 = load i32, ptr %l2, !tbaa !23
  %t488 = load i32, ptr %l2, !tbaa !23
  store { i64, [15 x i64] } zeroinitializer, ptr %t489
  %t490 = getelementptr { i64, [15 x i64] }, ptr %t489, i32 0, i32 0
  store i64 11, ptr %t490
  %t492 = insertvalue { { i64, [4 x i64] }, i32, i32 } undef, { i64, [4 x i64] } %t486, 0
  %t494 = insertvalue { { i64, [4 x i64] }, i32, i32 } %t492, i32 %t487, 1
  %t496 = insertvalue { { i64, [4 x i64] }, i32, i32 } %t494, i32 %t488, 2
  %t497 = getelementptr { i64, [15 x i64] }, ptr %t489, i32 0, i32 1
  store { { i64, [4 x i64] }, i32, i32 } %t496, ptr %t497
  %t498 = load { i64, [15 x i64] }, ptr %t489
  store { i64, [21 x i64] } zeroinitializer, ptr %t499
  %t500 = getelementptr { i64, [21 x i64] }, ptr %t499, i32 0, i32 0
  store i64 0, ptr %t500
  %t501 = load %"compiler/source:Span", ptr %l190
  %t502 = insertvalue { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } undef, %"compiler/source:Span" %t501, 0
  %t503 = load %"compiler/mir:Lvalue", ptr %l192
  %t504 = insertvalue { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } %t502, %"compiler/mir:Lvalue" %t503, 1
  %t506 = insertvalue { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } %t504, { i64, [15 x i64] } %t498, 2
  %t507 = getelementptr { i64, [21 x i64] }, ptr %t499, i32 0, i32 1
  store { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } %t506, ptr %t507
  %t508 = load { i64, [21 x i64] }, ptr %t499
  store { i64, [21 x i64] } %t508, ptr %l199
  %t509 = load ptr, ptr %l188, !tbaa !29
  %t510 = load i32, ptr %l189, !tbaa !23
  call void @compiler_2fmir_2ecompiler_2fmir_3aFn_2eAdd(ptr %v1, ptr %s0, ptr %t509, i32 %t510, ptr %l199)
  br label %bb49
bb49:
  %t512 = load ptr, ptr %lp3
  %t513 = load i32, ptr %l16, !tbaa !23
  %t514 = load %"compiler/source:Span", ptr @G_2ecompiler_2fmir_2eSp0
  %t515 = load i32, ptr %l11, !tbaa !23
  store { i64, [21 x i64] } zeroinitializer, ptr %t516
  %t517 = getelementptr { i64, [21 x i64] }, ptr %t516, i32 0, i32 0
  store i64 4, ptr %t517
  %t519 = insertvalue { %"compiler/source:Span", i32 } undef, %"compiler/source:Span" %t514, 0
  %t521 = insertvalue { %"compiler/source:Span", i32 } %t519, i32 %t515, 1
  %t522 = getelementptr { i64, [21 x i64] }, ptr %t516, i32 0, i32 1
  store { %"compiler/source:Span", i32 } %t521, ptr %t522
  %t523 = load { i64, [21 x i64] }, ptr %t516
  store { i64, [21 x i64] } %t523, ptr %l205
  call void @compiler_2fmir_2ecompiler_2fmir_3aFn_2eAdd(ptr %v1, ptr %s0, ptr %t512, i32 %t513, ptr %l205)
  br label %bb50
bb50:
  %t527 = load ptr, ptr %lp3
  %t528 = load i32, ptr %l16, !tbaa !23
  %t529 = load %"compiler/source:Span", ptr @G_2ecompiler_2fmir_2eSp0
  store { i64, [21 x i64] } zeroinitializer, ptr %t530
  %t531 = getelementptr { i64, [21 x i64] }, ptr %t530, i32 0, i32 0
  store i64 4, ptr %t531
  %t533 = insertvalue { %"compiler/source:Span", i32 } undef, %"compiler/source:Span" %t529, 0
  %t534 = insertvalue { %"compiler/source:Span", i32 } %t533, i32 0, 1
  %t535 = getelementptr { i64, [21 x i64] }, ptr %t530, i32 0, i32 1
  store { %"compiler/source:Span", i32 } %t534, ptr %t535
  %t536 = load { i64, [21 x i64] }, ptr %t530
  store { i64, [21 x i64] } %t536, ptr %l210
  call void @compiler_2fmir_2ecompiler_2fmir_3aFn_2eAdd(ptr %v1, ptr %s0, ptr %t527, i32 %t528, ptr %l210)
  br label %bb51
bb51:
  %t540 = load ptr, ptr %lp3
  store ptr %t540, ptr %l212, !tbaa !29
  %t541 = load i32, ptr %l16, !tbaa !23
  store i32 %t541, ptr %l213, !tbaa !23
  %t542 = load %"compiler/source:Span", ptr @G_2ecompiler_2fmir_2eSp0
  store %"compiler/source:Span" %t542, ptr %l214
  %t543 = load i32, ptr %l10, !tbaa !23
  %t545 = call %"compiler/mir:Lvalue" @compiler_2fmir_2eLvalue_2eL(i32 %t543)
  store %"compiler/mir:Lvalue" %t545, ptr %l216
  br label %bb52
bb52:
  store { i64, [4 x i64] } zeroinitializer, ptr %t546
  %t547 = getelementptr { i64, [4 x i64] }, ptr %t546, i32 0, i32 0
  store i64 1, ptr %t547
  %t548 = load %"compiler/mir:Lvalue", ptr %l216
  %t549 = insertvalue { %"compiler/mir:Lvalue" } undef, %"compiler/mir:Lvalue" %t548, 0
  %t550 = getelementptr { i64, [4 x i64] }, ptr %t546, i32 0, i32 1
  store { %"compiler/mir:Lvalue" } %t549, ptr %t550
  %t551 = load { i64, [4 x i64] }, ptr %t546
  store { i64, [8 x i64] } zeroinitializer, ptr %t552
  %t553 = getelementptr { i64, [8 x i64] }, ptr %t552, i32 0, i32 0
  store i64 7, ptr %t553
  %t554 = load %"compiler/source:Span", ptr %l214
  %t555 = insertvalue { %"compiler/source:Span", { i64, [4 x i64] } } undef, %"compiler/source:Span" %t554, 0
  %t557 = insertvalue { %"compiler/source:Span", { i64, [4 x i64] } } %t555, { i64, [4 x i64] } %t551, 1
  %t558 = getelementptr { i64, [8 x i64] }, ptr %t552, i32 0, i32 1
  store { %"compiler/source:Span", { i64, [4 x i64] } } %t557, ptr %t558
  %t559 = load { i64, [8 x i64] }, ptr %t552
  %t560 = load ptr, ptr %l212, !tbaa !29
  %t561 = load i32, ptr %l213, !tbaa !23
  call void @compiler_2fmir_2ecompiler_2fmir_3aFn_2eEnd(ptr %v1, ptr %t560, i32 %t561, { i64, [8 x i64] } %t559)
  br label %bb53
bb53:
  %t563 = load ptr, ptr %lp3
  call void @llvm.memmove.p0.p0.i64(ptr %l219, ptr %t563, i64 800, i1 false)
  call void @__olang_scope_close(ptr %s0)
  call void @llvm.memmove.p0.p0.i64(ptr %out, ptr %l219, i64 800, i1 false)
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2fmir_2eFn_2etfn(ptr %out, ptr %v0, ptr %v1, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %lp2 = alloca ptr
  %l3 = alloca { i64, ptr }
  %l4 = alloca i64
  %l5 = alloca i64
  %l10 = alloca %"compiler/mir:Fn"
  %l11 = alloca ptr
  %l14 = alloca i32
  %l15 = alloca { i64, ptr }
  %l22 = alloca { i64, ptr }
  %l28 = alloca i32
  %l35 = alloca i32
  %l37 = alloca i32
  %l40 = alloca { i64, [21 x i64] }
  %l42 = alloca %"compiler/mir:Fn"
  %s0 = alloca %olang.scope
  %t1 = alloca { i64, [2 x i64] }, align 8
  %t8 = alloca %"compiler/mir:Fn", align 8
  %t68 = alloca { i64, [21 x i64] }, align 8
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  store { i64, [2 x i64] } zeroinitializer, ptr %t1
  %t2 = getelementptr { i64, [2 x i64] }, ptr %t1, i32 0, i32 0
  store i64 0, ptr %t2
  %t3 = insertvalue { i32 } undef, i32 9, 0
  %t4 = getelementptr { i64, [2 x i64] }, ptr %t1, i32 0, i32 1
  store { i32 } %t3, ptr %t4
  %t5 = load { i64, [2 x i64] }, ptr %t1
  %t6 = load i32, ptr %l1, !tbaa !23
  %t7 = load %"compiler/source:Span", ptr @G_2ecompiler_2fmir_2eSp0
  call void @compiler_2fmir_3aFn_2ector(ptr %t8, ptr %v1, { i64, [2 x i64] } %t5, i32 %t6, i64 0, %"compiler/source:Span" %t7)
  call void @llvm.memmove.p0.p0.i64(ptr %l10, ptr %t8, i64 800, i1 false)
  br label %bb1
bb1:
  %t12 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 800, i64 8)
  store ptr %t12, ptr %lp2
  %t13 = load ptr, ptr %lp2
  call void @llvm.memmove.p0.p0.i64(ptr %t13, ptr %l10, i64 800, i1 false)
  %t14 = load ptr, ptr %l0, !tbaa !29
  store ptr %t14, ptr %l11, !tbaa !29
  %t15 = load ptr, ptr %l0, !tbaa !29
  %t16 = load i32, ptr %l1, !tbaa !23
  %t19 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParams(ptr %v0, ptr %t15, i32 %t16)
  store i32 %t19, ptr %l14
  br label %bb2
bb2:
  %t20 = load ptr, ptr %l11, !tbaa !29
  %t21 = load i32, ptr %l14, !tbaa !23
  %t22 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t20, i32 %t21)
  store { i64, ptr } %t22, ptr %l15
  br label %bb3
bb3:
  %t23 = load { i64, ptr }, ptr %l15, !tbaa !27
  store { i64, ptr } %t23, ptr %l3, !tbaa !27
  store i64 0, ptr %l4, !tbaa !24
  %t24 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t26 = extractvalue { i64, ptr } %t24, 0
  store i64 %t26, ptr %l5, !tbaa !24
  br label %bb4
bb4:
  %t28 = load i64, ptr %l4, !tbaa !24
  %t29 = load i64, ptr %l5, !tbaa !24
  %t32 = icmp slt i64 %t28, %t29
  %t34 = xor i1 %t32, true
  br i1 %t34, label %bb5, label %bb6
bb5:
  br label %bb10
bb6:
  br label %bb7
bb7:
  %t36 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t36, ptr %l22, !tbaa !27
  %t37 = load i64, ptr %l4, !tbaa !24
  %t39 = getelementptr { i64, ptr }, ptr %l22, i32 0, i32 1
  %t40 = load ptr, ptr %t39, !tbaa !27
  %t41 = getelementptr i32, ptr %t40, i64 %t37
  %t42 = load i32, ptr %t41, !tbaa !33
  %t44 = load ptr, ptr %lp2
  %t45 = load %"compiler/source:Span", ptr @G_2ecompiler_2fmir_2eSp0
  %t50 = call i32 @compiler_2fmir_2ecompiler_2fmir_3aFn_2eAddParam(ptr %v1, ptr %t44, i32 0, %"compiler/source:Span" %t45, i32 %t42)
  store i32 %t50, ptr %l28
  br label %bb8
bb8:
  br label %bb9
bb9:
  %t51 = load i64, ptr %l4, !tbaa !24
  %t53 = add i64 %t51, 1
  store i64 %t53, ptr %l4, !tbaa !24
  br label %bb4
bb10:
  %t55 = load ptr, ptr %lp2
  %t56 = load i32, ptr @G_2ecompiler_2fmir_2eNoScope, !tbaa !23
  %t57 = load %"compiler/source:Span", ptr @G_2ecompiler_2fmir_2eSp0
  %t62 = call i32 @compiler_2fmir_2ecompiler_2fmir_3aFn_2eAddScope(ptr %v1, ptr %t55, i32 0, i32 %t56, i32 0, %"compiler/source:Span" %t57, i32 0)
  store i32 %t62, ptr %l35
  br label %bb11
bb11:
  %t63 = load ptr, ptr %lp2
  %t65 = call i32 @compiler_2fmir_2ecompiler_2fmir_3aFn_2eNewBlock(ptr %v1, ptr %t63)
  store i32 %t65, ptr %l37
  br label %bb12
bb12:
  %t66 = load ptr, ptr %lp2
  %t67 = load %"compiler/source:Span", ptr @G_2ecompiler_2fmir_2eSp0
  store { i64, [21 x i64] } zeroinitializer, ptr %t68
  %t69 = getelementptr { i64, [21 x i64] }, ptr %t68, i32 0, i32 0
  store i64 3, ptr %t69
  %t71 = insertvalue { %"compiler/source:Span", i32 } undef, %"compiler/source:Span" %t67, 0
  %t72 = insertvalue { %"compiler/source:Span", i32 } %t71, i32 0, 1
  %t73 = getelementptr { i64, [21 x i64] }, ptr %t68, i32 0, i32 1
  store { %"compiler/source:Span", i32 } %t72, ptr %t73
  %t74 = load { i64, [21 x i64] }, ptr %t68
  store { i64, [21 x i64] } %t74, ptr %l40
  call void @compiler_2fmir_2ecompiler_2fmir_3aFn_2eAdd(ptr %v1, ptr %s0, ptr %t66, i32 0, ptr %l40)
  br label %bb13
bb13:
  %t77 = load ptr, ptr %lp2
  call void @llvm.memmove.p0.p0.i64(ptr %l42, ptr %t77, i64 800, i1 false)
  call void @__olang_scope_close(ptr %s0)
  call void @llvm.memmove.p0.p0.i64(ptr %out, ptr %l42, i64 800, i1 false)
  br label %ret
ret:
  ret void
}

define dso_local i32 @compiler_2fmir_2eHelperType(ptr %v0, ptr %a0, i32 %a1, i32 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca i32
  %l3 = alloca i32
  %l7 = alloca i32
  %l8 = alloca i32
  %l11 = alloca ptr
  %l15 = alloca { i64, ptr }
  %l16 = alloca i32
  %l18 = alloca i32
  %l21 = alloca ptr
  %l25 = alloca { i64, ptr }
  %l26 = alloca i32
  %l28 = alloca i32
  %l31 = alloca ptr
  %l34 = alloca i32
  %l36 = alloca i32
  %l41 = alloca i32
  %l46 = alloca ptr
  %l49 = alloca i32
  %l51 = alloca i32
  %l56 = alloca ptr
  %l57 = alloca ptr
  %l61 = alloca i32
  %l62 = alloca i32
  %l64 = alloca i32
  %s1 = alloca %olang.scope
  %s2 = alloca %olang.scope
  %rv = alloca i32
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  store i32 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load i32, ptr %l2, !tbaa !23
  %t3 = load i64, ptr @G_2ecompiler_2ftypes_2eReadOnly, !tbaa !24
  %t7 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRef(ptr %v0, ptr %t1, i32 %t2, i64 %t3)
  store i32 %t7, ptr %l7
  br label %bb1
bb1:
  %t8 = load i32, ptr %l7, !tbaa !23
  store i32 %t8, ptr %l3, !tbaa !23
  %t9 = load i32, ptr %l1, !range !{i32 0, i32 8}
  %t11 = trunc i64 0 to i32
  %t12 = icmp eq i32 %t9, %t11
  br i1 %t12, label %bb2, label %bb3
bb2:
  br label %bb4
bb3:
  br label %bb7
bb4:
  store %olang.scope zeroinitializer, ptr %s1
  %t14 = load ptr, ptr %l0, !tbaa !29
  store ptr %t14, ptr %l11, !tbaa !29
  %t15 = load ptr, ptr %l0, !tbaa !29
  %t16 = load i32, ptr %l3, !tbaa !23
  %t17 = load i32, ptr @G_2ecompiler_2fmir_2eI64T, !tbaa !23
  %t18 = mul i64 2, 4
  %t19 = call ptr @__olang_scope_alloc_zeroed(ptr %s1, i64 %t18)
  %t20 = insertvalue { i64, ptr } undef, i64 2, 0
  %t21 = insertvalue { i64, ptr } %t20, ptr %t19, 1
  store { i64, ptr } %t21, ptr %l15, !tbaa !27
  %t23 = getelementptr { i64, ptr }, ptr %l15, i32 0, i32 1
  %t24 = load ptr, ptr %t23, !tbaa !27
  %t25 = getelementptr i32, ptr %t24, i64 0
  store i32 %t16, ptr %t25, !tbaa !33
  %t27 = getelementptr { i64, ptr }, ptr %l15, i32 0, i32 1
  %t28 = load ptr, ptr %t27, !tbaa !27
  %t29 = getelementptr i32, ptr %t28, i64 1
  store i32 %t17, ptr %t29, !tbaa !33
  %t31 = load { i64, ptr }, ptr %l15, !tbaa !27
  %t32 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eList(ptr %v0, ptr %s1, ptr %t15, { i64, ptr } %t31)
  store i32 %t32, ptr %l16
  br label %bb5
bb5:
  %t33 = load i32, ptr @G_2ecompiler_2ftypes_2eVoidT, !tbaa !23
  %t34 = load ptr, ptr %l11, !tbaa !29
  %t35 = load i32, ptr %l16, !tbaa !23
  %t37 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eFunc(ptr %v0, ptr %t34, i32 %t35, i32 %t33, i32 0, i32 0, i64 0, i1 false, i32 0, i64 0)
  store i32 %t37, ptr %l18
  br label %bb6
bb6:
  %t38 = load i32, ptr %l18, !tbaa !23
  store i32 %t38, ptr %l8, !tbaa !23
  call void @__olang_scope_close(ptr %s1)
  br label %bb42
bb7:
  %t39 = load i32, ptr %l1, !range !{i32 0, i32 8}
  %t41 = trunc i64 1 to i32
  %t42 = icmp eq i32 %t39, %t41
  br i1 %t42, label %bb8, label %bb9
bb8:
  br label %bb10
bb9:
  br label %bb13
bb10:
  store %olang.scope zeroinitializer, ptr %s2
  %t44 = load ptr, ptr %l0, !tbaa !29
  store ptr %t44, ptr %l21, !tbaa !29
  %t45 = load ptr, ptr %l0, !tbaa !29
  %t46 = load i32, ptr %l3, !tbaa !23
  %t47 = load i32, ptr %l3, !tbaa !23
  %t48 = mul i64 2, 4
  %t49 = call ptr @__olang_scope_alloc_zeroed(ptr %s2, i64 %t48)
  %t50 = insertvalue { i64, ptr } undef, i64 2, 0
  %t51 = insertvalue { i64, ptr } %t50, ptr %t49, 1
  store { i64, ptr } %t51, ptr %l25, !tbaa !27
  %t53 = getelementptr { i64, ptr }, ptr %l25, i32 0, i32 1
  %t54 = load ptr, ptr %t53, !tbaa !27
  %t55 = getelementptr i32, ptr %t54, i64 0
  store i32 %t46, ptr %t55, !tbaa !33
  %t57 = getelementptr { i64, ptr }, ptr %l25, i32 0, i32 1
  %t58 = load ptr, ptr %t57, !tbaa !27
  %t59 = getelementptr i32, ptr %t58, i64 1
  store i32 %t47, ptr %t59, !tbaa !33
  %t61 = load { i64, ptr }, ptr %l25, !tbaa !27
  %t62 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eList(ptr %v0, ptr %s2, ptr %t45, { i64, ptr } %t61)
  store i32 %t62, ptr %l26
  br label %bb11
bb11:
  %t63 = load i32, ptr @G_2ecompiler_2ftypes_2eBoolT, !tbaa !23
  %t64 = load ptr, ptr %l21, !tbaa !29
  %t65 = load i32, ptr %l26, !tbaa !23
  %t67 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eFunc(ptr %v0, ptr %t64, i32 %t65, i32 %t63, i32 0, i32 0, i64 0, i1 false, i32 0, i64 0)
  store i32 %t67, ptr %l28
  br label %bb12
bb12:
  %t68 = load i32, ptr %l28, !tbaa !23
  store i32 %t68, ptr %l8, !tbaa !23
  call void @__olang_scope_close(ptr %s2)
  br label %bb42
bb13:
  %t69 = load i32, ptr %l1, !range !{i32 0, i32 8}
  %t71 = trunc i64 2 to i32
  %t72 = icmp eq i32 %t69, %t71
  br i1 %t72, label %bb14, label %bb15
bb14:
  br label %bb16
bb15:
  br label %bb19
bb16:
  %t74 = load ptr, ptr %l0, !tbaa !29
  store ptr %t74, ptr %l31, !tbaa !29
  %t75 = load ptr, ptr %l0, !tbaa !29
  %t76 = load i32, ptr %l3, !tbaa !23
  %t79 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eList1(ptr %v0, ptr %t75, i32 %t76)
  store i32 %t79, ptr %l34
  br label %bb17
bb17:
  %t80 = load i32, ptr @G_2ecompiler_2fmir_2eI64T, !tbaa !23
  %t81 = load ptr, ptr %l31, !tbaa !29
  %t82 = load i32, ptr %l34, !tbaa !23
  %t84 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eFunc(ptr %v0, ptr %t81, i32 %t82, i32 %t80, i32 0, i32 0, i64 0, i1 false, i32 0, i64 0)
  store i32 %t84, ptr %l36
  br label %bb18
bb18:
  %t85 = load i32, ptr %l36, !tbaa !23
  store i32 %t85, ptr %l8, !tbaa !23
  br label %bb42
bb19:
  %t86 = load i32, ptr %l1, !range !{i32 0, i32 8}
  %t88 = trunc i64 3 to i32
  %t89 = icmp eq i32 %t86, %t88
  br i1 %t89, label %bb20, label %bb21
bb20:
  br label %bb22
bb21:
  br label %bb24
bb22:
  %t91 = load ptr, ptr %l0, !tbaa !29
  %t92 = load i32, ptr %l2, !tbaa !23
  %t95 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eFunc(ptr %v0, ptr %t91, i32 0, i32 %t92, i32 0, i32 0, i64 0, i1 false, i32 0, i64 0)
  store i32 %t95, ptr %l41
  br label %bb23
bb23:
  %t96 = load i32, ptr %l41, !tbaa !23
  store i32 %t96, ptr %l8, !tbaa !23
  br label %bb42
bb24:
  %t97 = load i32, ptr %l1, !range !{i32 0, i32 8}
  %t99 = trunc i64 4 to i32
  %t100 = icmp eq i32 %t97, %t99
  br i1 %t100, label %bb25, label %bb26
bb25:
  br label %bb29
bb26:
  %t102 = load i32, ptr %l1, !range !{i32 0, i32 8}
  %t104 = trunc i64 5 to i32
  %t105 = icmp eq i32 %t102, %t104
  br i1 %t105, label %bb27, label %bb28
bb27:
  br label %bb29
bb28:
  br label %bb32
bb29:
  %t107 = load ptr, ptr %l0, !tbaa !29
  store ptr %t107, ptr %l46, !tbaa !29
  %t108 = load ptr, ptr %l0, !tbaa !29
  %t109 = load i32, ptr %l3, !tbaa !23
  %t112 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eList1(ptr %v0, ptr %t108, i32 %t109)
  store i32 %t112, ptr %l49
  br label %bb30
bb30:
  %t113 = load i32, ptr %l2, !tbaa !23
  %t114 = load ptr, ptr %l46, !tbaa !29
  %t115 = load i32, ptr %l49, !tbaa !23
  %t117 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eFunc(ptr %v0, ptr %t114, i32 %t115, i32 %t113, i32 0, i32 0, i64 0, i1 false, i32 0, i64 0)
  store i32 %t117, ptr %l51
  br label %bb31
bb31:
  %t118 = load i32, ptr %l51, !tbaa !23
  store i32 %t118, ptr %l8, !tbaa !23
  br label %bb42
bb32:
  %t119 = load i32, ptr %l1, !range !{i32 0, i32 8}
  %t121 = trunc i64 6 to i32
  %t122 = icmp eq i32 %t119, %t121
  br i1 %t122, label %bb33, label %bb34
bb33:
  br label %bb37
bb34:
  %t124 = load i32, ptr %l1, !range !{i32 0, i32 8}
  %t126 = trunc i64 7 to i32
  %t127 = icmp eq i32 %t124, %t126
  br i1 %t127, label %bb35, label %bb36
bb35:
  br label %bb37
bb36:
  br label %bb41
bb37:
  %t129 = load ptr, ptr %l0, !tbaa !29
  store ptr %t129, ptr %l56, !tbaa !29
  %t130 = load ptr, ptr %l0, !tbaa !29
  store ptr %t130, ptr %l57, !tbaa !29
  %t131 = load ptr, ptr %l0, !tbaa !29
  %t132 = load i32, ptr %l2, !tbaa !23
  %t133 = load i64, ptr @G_2ecompiler_2ftypes_2eWritable, !tbaa !24
  %t137 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRef(ptr %v0, ptr %t131, i32 %t132, i64 %t133)
  store i32 %t137, ptr %l61
  br label %bb38
bb38:
  %t138 = load ptr, ptr %l57, !tbaa !29
  %t139 = load i32, ptr %l61, !tbaa !23
  %t140 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eList1(ptr %v0, ptr %t138, i32 %t139)
  store i32 %t140, ptr %l62
  br label %bb39
bb39:
  %t141 = load i32, ptr @G_2ecompiler_2ftypes_2eVoidT, !tbaa !23
  %t142 = load ptr, ptr %l56, !tbaa !29
  %t143 = load i32, ptr %l62, !tbaa !23
  %t145 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eFunc(ptr %v0, ptr %t142, i32 %t143, i32 %t141, i32 0, i32 0, i64 0, i1 false, i32 0, i64 0)
  store i32 %t145, ptr %l64
  br label %bb40
bb40:
  %t146 = load i32, ptr %l64, !tbaa !23
  store i32 %t146, ptr %l8, !tbaa !23
  br label %bb42
bb41:
  call void @__olang_check_failed(ptr @olang_loc_f3abe41a98405543_7d26227a2bded35f)
  unreachable
bb42:
  %t147 = load i32, ptr %l8, !tbaa !23
  store i32 %t147, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local %"compiler/mir:Range" @compiler_2fmir_2ecompiler_2fmir_3aFn_2eAddItems(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1) #0 {
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
  %t3 = getelementptr %"compiler/mir:Fn", ptr %t1, i32 0, i32 18
  %t5 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aItem_3e_2eLen_3ccompiler_2ftyped_3aItem_3e(ptr %v0, ptr %t3)
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
  %t26 = getelementptr %"compiler/typed:Item", ptr %t25, i64 %t22
  %t27 = load %"compiler/typed:Item", ptr %t26
  %t29 = load ptr, ptr %l0, !tbaa !29
  %t31 = getelementptr %"compiler/mir:Fn", ptr %t29, i32 0, i32 18
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aItem_3e_2ePush_3ccompiler_2ftyped_3aItem_3e(ptr %v0, ptr %t31, %"compiler/typed:Item" %t27)
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

define dso_local i32 @compiler_2fmir_2ecompiler_2fmir_3aFn_2eAddScope(ptr %v0, ptr %a0, i32 %a1, i32 %a2, i32 %a3, %"compiler/source:Span" %a4, i32 %a5) #0 {
entry:
  %l0 = alloca ptr
  %l7 = alloca ptr
  %l13 = alloca %"compiler/mir:ScopeInfo"
  %l16 = alloca i64
  %s0 = alloca %olang.scope
  %rv = alloca i32
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/mir:Fn", ptr %t1, i32 0, i32 8
  store ptr %t3, ptr %l7, !tbaa !29
  %t14 = call %"compiler/mir:ScopeInfo" @compiler_2fmir_3aScopeInfo_2ector(ptr %s0, i32 %a1, i32 %a2, i32 %a3, %"compiler/source:Span" %a4, i32 %a5)
  store %"compiler/mir:ScopeInfo" %t14, ptr %l13
  br label %bb1
bb1:
  %t15 = load ptr, ptr %l7, !tbaa !29
  %t16 = load %"compiler/mir:ScopeInfo", ptr %l13
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aScopeInfo_3e_2ePush_3ccompiler_2fmir_3aScopeInfo_3e(ptr %v0, ptr %t15, %"compiler/mir:ScopeInfo" %t16)
  br label %bb2
bb2:
  %t17 = load ptr, ptr %l0, !tbaa !29
  %t19 = getelementptr %"compiler/mir:Fn", ptr %t17, i32 0, i32 8
  %t21 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aScopeInfo_3e_2eLen_3ccompiler_2fmir_3aScopeInfo_3e(ptr %v0, ptr %t19)
  store i64 %t21, ptr %l16
  br label %bb3
bb3:
  %t22 = load i64, ptr %l16, !tbaa !24
  %t23 = sub i64 %t22, 1
  %t25 = trunc i64 %t23 to i32
  call void @__olang_scope_close(ptr %s0)
  store i32 %t25, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local i32 @compiler_2fmir_2ecompiler_2fmir_3aFn_2eAddTemp(ptr %v0, ptr %a0, i32 %a1, %"compiler/source:Span" %a2) #0 {
entry:
  %l3 = alloca ptr
  %l8 = alloca %"compiler/mir:Local"
  %l9 = alloca i32
  %s0 = alloca %olang.scope
  %rv = alloca i32
  %t4 = alloca { i64, [1 x i64] }, align 8
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  store ptr %a0, ptr %l3, !tbaa !29
  store { i64, [1 x i64] } zeroinitializer, ptr %t4
  %t5 = getelementptr { i64, [1 x i64] }, ptr %t4, i32 0, i32 0
  store i64 3, ptr %t5
  %t6 = load { i64, [1 x i64] }, ptr %t4
  %t11 = call %"compiler/mir:Local" @compiler_2fmir_3aLocal_2ector(ptr %s0, i32 0, %"compiler/source:Span" %a2, i32 %a1, i32 3, { i64, [1 x i64] } %t6)
  store %"compiler/mir:Local" %t11, ptr %l8
  br label %bb1
bb1:
  %t12 = load ptr, ptr %l3, !tbaa !29
  %t13 = load %"compiler/mir:Local", ptr %l8
  %t14 = call i32 @compiler_2fmir_2ecompiler_2fmir_3aFn_2eAddLocal(ptr %v0, ptr %t12, %"compiler/mir:Local" %t13)
  store i32 %t14, ptr %l9
  br label %bb2
bb2:
  call void @__olang_scope_close(ptr %s0)
  %t15 = load i32, ptr %l9, !tbaa !23
  store i32 %t15, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local %"compiler/mir:Range" @compiler_2fmir_2ecompiler_2fmir_3aFn_2eArgs(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1) #0 {
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
  %t3 = getelementptr %"compiler/mir:Fn", ptr %t1, i32 0, i32 11
  %t5 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aOperand_3e_2eLen_3ccompiler_2fmir_3aOperand_3e(ptr %v0, ptr %t3)
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
  %t26 = getelementptr { i64, [4 x i64] }, ptr %t25, i64 %t22
  %t27 = load { i64, [4 x i64] }, ptr %t26
  %t29 = load ptr, ptr %l0, !tbaa !29
  %t31 = getelementptr %"compiler/mir:Fn", ptr %t29, i32 0, i32 11
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aOperand_3e_2ePush_3ccompiler_2fmir_3aOperand_3e(ptr %v0, ptr %t31, { i64, [4 x i64] } %t27)
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

define dso_local void @compiler_2fmir_2ecompiler_2fmir_3aFn_2eEnd(ptr %v0, ptr %a0, i32 %a1, { i64, [8 x i64] } %a2) #0 {
entry:
  %l10 = alloca ptr
  br label %start
start:
  br label %bb0
bb0:
  %t3 = sext i32 %a1 to i64
  %t7 = getelementptr %"compiler/mir:Fn", ptr %a0, i32 0, i32 9
  %t11 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aBasicBlock_3e_2eRefMu_Hfcf461293be5a40629d8d6a3cbc76320(ptr %v0, ptr %v0, ptr %t7, i64 %t3)
  store ptr %t11, ptr %l10
  br label %bb1
bb1:
  %t12 = load ptr, ptr %l10, !tbaa !29
  %t17 = getelementptr %"compiler/mir:BasicBlock", ptr %t12, i32 0, i32 1
  store { i64, [8 x i64] } %a2, ptr %t17
  br label %ret
ret:
  ret void
}

define dso_local { i64, ptr } @compiler_2fmir_2ecompiler_2fmir_3aFn_2eVerify(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1) #0 {
entry:
  %l2 = alloca ptr
  %l5 = alloca %"compiler/mir:verifier"
  %l10 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  %t3 = alloca %"compiler/mir:verifier", align 8
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  call void @compiler_2fmir_3averifier_2ector(ptr %t3, ptr %v0, ptr %v1, ptr %s0, ptr %a0, ptr %a1)
  call void @llvm.memmove.p0.p0.i64(ptr %l5, ptr %t3, i64 304, i1 false)
  br label %bb1
bb1:
  %t6 = call ptr @__olang_scope_alloc_a(ptr %s0, i64 304, i64 8)
  call void @llvm.memmove.p0.p0.i64(ptr %t6, ptr %l5, i64 304, i1 false)
  store ptr %t6, ptr %l2, !tbaa !29
  %t8 = load ptr, ptr %l2, !tbaa !29
  call void @compiler_2fmir_2ecompiler_2fmir_3averifier_2erun(ptr %s0, ptr %v0, ptr %v1, ptr %t8)
  br label %bb2
bb2:
  %t10 = load ptr, ptr %l2, !tbaa !29
  %t12 = getelementptr %"compiler/mir:verifier", ptr %t10, i32 0, i32 2
  %t14 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %s0, ptr %v2, ptr %t12)
  store { i64, ptr } %t14, ptr %l10
  br label %bb3
bb3:
  call void @__olang_scope_close(ptr %s0)
  %t15 = load { i64, ptr }, ptr %l10, !tbaa !27
  store { i64, ptr } %t15, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local i1 @compiler_2fmir_2ecompiler_2fmir_3aGenInfo_2eGenRef(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i32 %a2) #0 {
entry:
  %l1 = alloca ptr
  %l3 = alloca i32
  %l6 = alloca i32
  %l9 = alloca i32
  %l12 = alloca i1
  %l13 = alloca ptr
  %l14 = alloca ptr
  %l17 = alloca i32
  %l18 = alloca i1
  %rv = alloca i1
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l1, !tbaa !29
  %t5 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %v1, ptr %t1, i32 %a2)
  store i32 %t5, ptr %l6
  br label %bb1
bb1:
  %t6 = load i32, ptr %l6, !tbaa !23
  store i32 %t6, ptr %l3, !tbaa !23
  %t7 = load ptr, ptr %l1, !tbaa !29
  %t8 = load i32, ptr %l3, !tbaa !23
  %t11 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v1, ptr %t7, i32 %t8)
  store i32 %t11, ptr %l9
  br label %bb2
bb2:
  %t12 = load i32, ptr %l9, !range !{i32 0, i32 33}
  %t14 = trunc i64 20 to i32
  %t15 = icmp eq i32 %t12, %t14
  br i1 %t15, label %bb3, label %bb4
bb3:
  store ptr %a0, ptr %l13, !tbaa !29
  %t18 = load ptr, ptr %l1, !tbaa !29
  store ptr %t18, ptr %l14, !tbaa !29
  %t19 = load ptr, ptr %l1, !tbaa !29
  %t20 = load i32, ptr %l3, !tbaa !23
  %t23 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eReferent(ptr %v1, ptr %t19, i32 %t20)
  store i32 %t23, ptr %l17
  br label %bb5
bb4:
  store i1 false, ptr %l12, !tbaa !21
  br label %bb7
bb5:
  %t24 = load ptr, ptr %l13, !tbaa !29
  %t25 = load ptr, ptr %l14, !tbaa !29
  %t26 = load i32, ptr %l17, !tbaa !23
  %t27 = call i1 @compiler_2fmir_2ecompiler_2fmir_3aGenInfo_2eIsGen(ptr %v0, ptr %v1, ptr %t24, ptr %t25, i32 %t26)
  store i1 %t27, ptr %l18
  br label %bb6
bb6:
  %t28 = load i1, ptr %l18, !tbaa !21
  store i1 %t28, ptr %l12, !tbaa !21
  br label %bb7
bb7:
  %t29 = load i1, ptr %l12, !tbaa !21
  store i1 %t29, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i64 @compiler_2fmir_2ecompiler_2fmir_3aStmtList_2eLen(ptr %v0, ptr %a0) #0 {
entry:
  %rv = alloca i64
  br label %start
start:
  br label %bb0
bb0:
  %t3 = getelementptr %"compiler/mir:StmtList", ptr %a0, i32 0, i32 1
  %t4 = load i64, ptr %t3, !tbaa !24
  store i64 %t4, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local void @compiler_2fmir_2ecompiler_2fmir_3aStmtList_2eroom(ptr %v0, ptr %a0, { i64, [21 x i64] } %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca { i64, [21 x i64] }
  %lp2 = alloca ptr
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l13 = alloca i64
  %l18 = alloca { i64, [21 x i64] }
  %l27 = alloca i64
  %l30 = alloca i64
  %l51 = alloca { i64, [21 x i64] }
  %t29 = alloca i64
  store ptr %a0, ptr %l0
  store { i64, [21 x i64] } %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/mir:StmtList", ptr %t1, i32 0, i32 0
  %t4 = load { i64, ptr }, ptr %t3, !tbaa !27
  %t6 = extractvalue { i64, ptr } %t4, 0
  %t8 = icmp eq i64 %t6, 0
  br i1 %t8, label %bb1, label %bb2
bb1:
  store i64 1, ptr %l13, !tbaa !24
  br label %bb3
bb2:
  %t10 = load ptr, ptr %l0, !tbaa !29
  %t12 = getelementptr %"compiler/mir:StmtList", ptr %t10, i32 0, i32 0
  %t13 = load { i64, ptr }, ptr %t12, !tbaa !27
  %t15 = extractvalue { i64, ptr } %t13, 0
  %t17 = mul i64 2, %t15
  store i64 %t17, ptr %l13, !tbaa !24
  br label %bb3
bb3:
  call void @llvm.memmove.p0.p0.i64(ptr %l18, ptr %l1, i64 176, i1 false)
  %t19 = load i64, ptr %l13, !tbaa !24
  %t20 = icmp sge i64 %t19, 0
  br i1 %t20, label %bb4, label %bb5
bb4:
  %t22 = load i64, ptr %l13, !tbaa !24
  %t23 = icmp sle i64 %t22, 52405522936674862
  br i1 %t23, label %bb6, label %bb7
bb5:
  call void @__olang_check_failed(ptr @olang_loc_5d1a0e3daf6888c0_94c904987320cf3c)
  unreachable
bb6:
  %t25 = load i64, ptr %l13, !tbaa !24
  %t26 = mul i64 %t25, 176
  %t27 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t26)
  %t28 = load { i64, [21 x i64] }, ptr %l18
  store i64 0, ptr %t29
  br label %fill.30
fill.30:
  %t33 = load i64, ptr %t29
  %t34 = icmp slt i64 %t33, %t25
  br i1 %t34, label %fillb.31, label %filld.32
fillb.31:
  %t35 = getelementptr { i64, [21 x i64] }, ptr %t27, i64 %t33
  store { i64, [21 x i64] } %t28, ptr %t35
  %t36 = add i64 %t33, 1
  store i64 %t36, ptr %t29
  br label %fill.30
filld.32:
  %t37 = insertvalue { i64, ptr } undef, i64 %t25, 0
  %t38 = insertvalue { i64, ptr } %t37, ptr %t27, 1
  %t39 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 16, i64 8)
  store ptr %t39, ptr %lp2
  %t41 = load ptr, ptr %lp2
  store { i64, ptr } %t38, ptr %t41, !tbaa !27
  store i64 0, ptr %l3, !tbaa !24
  %t42 = load ptr, ptr %l0, !tbaa !29
  %t44 = getelementptr %"compiler/mir:StmtList", ptr %t42, i32 0, i32 1
  %t45 = load i64, ptr %t44, !tbaa !24
  store i64 %t45, ptr %l4, !tbaa !24
  store i64 1, ptr %l5, !tbaa !24
  %t47 = load i64, ptr %l4, !tbaa !24
  %t48 = load i64, ptr %l3, !tbaa !24
  %t51 = icmp sgt i64 %t47, %t48
  br i1 %t51, label %bb8, label %bb9
bb7:
  call void @__olang_check_failed(ptr @olang_loc_5d1a0e3daf6888c0_94c904987320cf3c)
  unreachable
bb8:
  %t53 = load i64, ptr %l5, !tbaa !24
  %t55 = icmp sgt i64 %t53, 0
  br i1 %t55, label %bb10, label %bb11
bb9:
  store i64 0, ptr %l27, !tbaa !24
  br label %bb13
bb10:
  %t57 = load i64, ptr %l4, !tbaa !24
  %t58 = load i64, ptr %l3, !tbaa !24
  %t61 = sub i64 %t57, %t58
  %t62 = load i64, ptr %l5, !tbaa !24
  %t65 = add i64 %t61, %t62
  %t67 = sub i64 %t65, 1
  %t68 = load i64, ptr %l5, !tbaa !24
  %t71 = sdiv i64 %t67, %t68
  store i64 %t71, ptr %l30, !tbaa !24
  br label %bb12
bb11:
  store i64 0, ptr %l30, !tbaa !24
  br label %bb12
bb12:
  %t73 = load i64, ptr %l30, !tbaa !24
  store i64 %t73, ptr %l27, !tbaa !24
  br label %bb13
bb13:
  %t74 = load i64, ptr %l27, !tbaa !24
  store i64 %t74, ptr %l6, !tbaa !24
  store i64 0, ptr %l7, !tbaa !24
  br label %bb14
bb14:
  %t75 = load i64, ptr %l7, !tbaa !24
  %t76 = load i64, ptr %l6, !tbaa !24
  %t79 = icmp slt i64 %t75, %t76
  %t81 = xor i1 %t79, true
  br i1 %t81, label %bb15, label %bb16
bb15:
  br label %bb19
bb16:
  br label %bb17
bb17:
  %t83 = load i64, ptr %l3, !tbaa !24
  %t84 = load i64, ptr %l7, !tbaa !24
  %t85 = load i64, ptr %l5, !tbaa !24
  %t88 = mul i64 %t84, %t85
  %t91 = add i64 %t83, %t88
  store i64 %t91, ptr %l8, !tbaa !24
  %t93 = load i64, ptr %l8, !tbaa !24
  %t94 = load ptr, ptr %l0, !tbaa !29
  %t95 = load i64, ptr %l8, !tbaa !24
  %t97 = getelementptr %"compiler/mir:StmtList", ptr %t94, i32 0, i32 0
  %t99 = getelementptr { i64, ptr }, ptr %t97, i32 0, i32 1
  %t100 = load ptr, ptr %t99, !tbaa !27
  %t101 = getelementptr { i64, [21 x i64] }, ptr %t100, i64 %t95
  call void @llvm.memmove.p0.p0.i64(ptr %l51, ptr %t101, i64 176, i1 false)
  %t102 = load ptr, ptr %lp2
  %t104 = getelementptr { i64, ptr }, ptr %t102, i32 0, i32 1
  %t105 = load ptr, ptr %t104, !tbaa !27
  %t106 = getelementptr { i64, [21 x i64] }, ptr %t105, i64 %t93
  call void @llvm.memmove.p0.p0.i64(ptr %t106, ptr %l51, i64 176, i1 false)
  br label %bb18
bb18:
  %t107 = load i64, ptr %l7, !tbaa !24
  %t109 = add i64 %t107, 1
  store i64 %t109, ptr %l7, !tbaa !24
  br label %bb14
bb19:
  %t111 = load ptr, ptr %l0, !tbaa !29
  %t112 = load ptr, ptr %lp2
  %t113 = load { i64, ptr }, ptr %t112, !tbaa !27
  %t116 = getelementptr %"compiler/mir:StmtList", ptr %t111, i32 0, i32 0
  store { i64, ptr } %t113, ptr %t116, !tbaa !27
  br label %ret
ret:
  ret void
}

define dso_local { i64, ptr } @compiler_2fmir_2ecompiler_2fmir_3adumper_2ecallee(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, { i64, [7 x i64] } %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca { i64, [7 x i64] }
  %l2 = alloca { i64, [2 x i64] }
  %l3 = alloca i64
  %l4 = alloca { i64, [4 x i64] }
  %l5 = alloca { i64, [4 x i64] }
  %l6 = alloca i64
  %l7 = alloca { i64, ptr }
  %l13 = alloca { i64, ptr }
  %l24 = alloca { i64, ptr }
  %l30 = alloca i64
  %l33 = alloca { i64, ptr }
  %s4 = alloca %olang.scope
  %s6 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  store { i64, [7 x i64] } %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load { i64, [7 x i64] }, ptr %l1
  %t3 = extractvalue { i64, [7 x i64] } %t1, 0
  %t4 = icmp eq i64 %t3, 0
  br i1 %t4, label %bb1, label %bb2
bb1:
  %t6 = getelementptr { i64, [7 x i64] }, ptr %l1, i32 0, i32 1
  %t7 = getelementptr { { i64, [2 x i64] }, i32 }, ptr %t6, i32 0, i32 0
  %t8 = load { i64, [2 x i64] }, ptr %t7
  store { i64, [2 x i64] } %t8, ptr %l2
  br label %bb3
bb2:
  br label %bb5
bb3:
  %t10 = load ptr, ptr %l0, !tbaa !29
  %t11 = load { i64, [2 x i64] }, ptr %l2
  %t14 = call { i64, ptr } @compiler_2fmir_2ecompiler_2fmir_3adumper_2ekey(ptr %v0, ptr %v1, ptr %v2, ptr %t10, { i64, [2 x i64] } %t11)
  store { i64, ptr } %t14, ptr %l13
  br label %bb4
bb4:
  %t15 = load { i64, ptr }, ptr %l13, !tbaa !27
  store { i64, ptr } %t15, ptr %l7, !tbaa !27
  br label %bb20
bb5:
  %t16 = load { i64, [7 x i64] }, ptr %l1
  %t18 = extractvalue { i64, [7 x i64] } %t16, 0
  %t19 = icmp eq i64 %t18, 1
  br i1 %t19, label %bb6, label %bb7
bb6:
  %t21 = getelementptr { i64, [7 x i64] }, ptr %l1, i32 0, i32 1
  %t22 = getelementptr { i64, i32 }, ptr %t21, i32 0, i32 0
  %t23 = load i64, ptr %t22
  store i64 %t23, ptr %l3, !tbaa !24
  br label %bb8
bb7:
  br label %bb9
bb8:
  %t25 = load i64, ptr %l3, !tbaa !24
  %t26 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d4, i32 0, i32 1) }, 1
  %t27 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d4, i32 0, i32 1) }, 0
  %t29 = call i64 @__olang_fmt_i64(ptr null, i64 %t25)
  %t30 = add i64 %t27, %t29
  %t31 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t30)
  call void @olang_textcopy(ptr %t31, ptr %t26, i64 %t27)
  %t32 = getelementptr i8, ptr %t31, i64 %t27
  %t33 = call i64 @__olang_fmt_i64(ptr %t32, i64 %t25)
  %t34 = insertvalue { i64, ptr } undef, i64 %t30, 0
  %t35 = insertvalue { i64, ptr } %t34, ptr %t31, 1
  store { i64, ptr } %t35, ptr %l7, !tbaa !27
  br label %bb20
bb9:
  %t37 = load { i64, [7 x i64] }, ptr %l1
  %t39 = extractvalue { i64, [7 x i64] } %t37, 0
  %t40 = icmp eq i64 %t39, 2
  br i1 %t40, label %bb10, label %bb11
bb10:
  %t42 = getelementptr { i64, [7 x i64] }, ptr %l1, i32 0, i32 1
  %t43 = getelementptr { { i64, [4 x i64] } }, ptr %t42, i32 0, i32 0
  %t44 = load { i64, [4 x i64] }, ptr %t43
  store { i64, [4 x i64] } %t44, ptr %l4
  br label %bb12
bb11:
  br label %bb14
bb12:
  store %olang.scope zeroinitializer, ptr %s4
  %t46 = load ptr, ptr %l0, !tbaa !29
  %t47 = load { i64, [4 x i64] }, ptr %l4
  %t50 = call { i64, ptr } @compiler_2fmir_2ecompiler_2fmir_3adumper_2eoperand(ptr %v0, ptr %s4, ptr %v3, ptr %v2, ptr %t46, { i64, [4 x i64] } %t47)
  store { i64, ptr } %t50, ptr %l24
  br label %bb13
bb13:
  %t51 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d5, i32 0, i32 1) }, 1
  %t52 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d5, i32 0, i32 1) }, 0
  %t53 = load { i64, ptr }, ptr %l24, !tbaa !27
  %t54 = extractvalue { i64, ptr } %t53, 1
  %t55 = extractvalue { i64, ptr } %t53, 0
  %t56 = add i64 %t52, %t55
  %t57 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d6, i32 0, i32 1) }, 1
  %t58 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d6, i32 0, i32 1) }, 0
  %t59 = add i64 %t56, %t58
  %t60 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t59)
  call void @olang_textcopy(ptr %t60, ptr %t51, i64 %t52)
  %t61 = getelementptr i8, ptr %t60, i64 %t52
  call void @olang_textcopy(ptr %t61, ptr %t54, i64 %t55)
  %t62 = getelementptr i8, ptr %t61, i64 %t55
  call void @olang_textcopy(ptr %t62, ptr %t57, i64 %t58)
  %t63 = insertvalue { i64, ptr } undef, i64 %t59, 0
  %t64 = insertvalue { i64, ptr } %t63, ptr %t60, 1
  store { i64, ptr } %t64, ptr %l7, !tbaa !27
  call void @__olang_scope_close(ptr %s4)
  br label %bb20
bb14:
  %t66 = load { i64, [7 x i64] }, ptr %l1
  %t68 = extractvalue { i64, [7 x i64] } %t66, 0
  %t69 = icmp eq i64 %t68, 3
  br i1 %t69, label %bb15, label %bb16
bb15:
  %t71 = getelementptr { i64, [7 x i64] }, ptr %l1, i32 0, i32 1
  %t72 = getelementptr { { i64, [4 x i64] }, i64, i32 }, ptr %t71, i32 0, i32 0
  %t73 = load { i64, [4 x i64] }, ptr %t72
  store { i64, [4 x i64] } %t73, ptr %l5
  %t75 = getelementptr { i64, [7 x i64] }, ptr %l1, i32 0, i32 1
  %t76 = getelementptr { { i64, [4 x i64] }, i64, i32 }, ptr %t75, i32 0, i32 1
  %t77 = load i64, ptr %t76
  store i64 %t77, ptr %l6, !tbaa !24
  br label %bb17
bb16:
  br label %bb19
bb17:
  store %olang.scope zeroinitializer, ptr %s6
  %t79 = load i64, ptr %l6, !tbaa !24
  store i64 %t79, ptr %l30, !tbaa !24
  %t80 = load ptr, ptr %l0, !tbaa !29
  %t81 = load { i64, [4 x i64] }, ptr %l5
  %t84 = call { i64, ptr } @compiler_2fmir_2ecompiler_2fmir_3adumper_2eoperand(ptr %v0, ptr %s6, ptr %v3, ptr %v2, ptr %t80, { i64, [4 x i64] } %t81)
  store { i64, ptr } %t84, ptr %l33
  br label %bb18
bb18:
  %t85 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d7, i32 0, i32 1) }, 1
  %t86 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d7, i32 0, i32 1) }, 0
  %t87 = load i64, ptr %l30, !tbaa !24
  %t88 = call i64 @__olang_fmt_i64(ptr null, i64 %t87)
  %t89 = add i64 %t86, %t88
  %t90 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d8, i32 0, i32 1) }, 1
  %t91 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d8, i32 0, i32 1) }, 0
  %t92 = add i64 %t89, %t91
  %t93 = load { i64, ptr }, ptr %l33, !tbaa !27
  %t94 = extractvalue { i64, ptr } %t93, 1
  %t95 = extractvalue { i64, ptr } %t93, 0
  %t96 = add i64 %t92, %t95
  %t97 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d9, i32 0, i32 1) }, 1
  %t98 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d9, i32 0, i32 1) }, 0
  %t99 = add i64 %t96, %t98
  %t100 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t99)
  call void @olang_textcopy(ptr %t100, ptr %t85, i64 %t86)
  %t101 = getelementptr i8, ptr %t100, i64 %t86
  %t102 = call i64 @__olang_fmt_i64(ptr %t101, i64 %t87)
  %t103 = getelementptr i8, ptr %t101, i64 %t88
  call void @olang_textcopy(ptr %t103, ptr %t90, i64 %t91)
  %t104 = getelementptr i8, ptr %t103, i64 %t91
  call void @olang_textcopy(ptr %t104, ptr %t94, i64 %t95)
  %t105 = getelementptr i8, ptr %t104, i64 %t95
  call void @olang_textcopy(ptr %t105, ptr %t97, i64 %t98)
  %t106 = insertvalue { i64, ptr } undef, i64 %t99, 0
  %t107 = insertvalue { i64, ptr } %t106, ptr %t100, 1
  store { i64, ptr } %t107, ptr %l7, !tbaa !27
  call void @__olang_scope_close(ptr %s6)
  br label %bb20
bb19:
  call void @__olang_check_failed(ptr @olang_loc_1b99bf8ee4d105f3_d9e42d16d8895267)
  unreachable
bb20:
  %t109 = load { i64, ptr }, ptr %l7, !tbaa !27
  store { i64, ptr } %t109, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local void @compiler_2fmir_2ecompiler_2fmir_3adumper_2eline(ptr %v0, ptr %v1, ptr %a0, i64 %a1, { i64, ptr } %a2) #0 {
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
  %t51 = getelementptr %"compiler/mir:dumper", ptr %t49, i32 0, i32 2
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v0, ptr %s2, ptr %t51, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d10, i32 0, i32 1) })
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
  %t59 = getelementptr %"compiler/mir:dumper", ptr %t57, i32 0, i32 2
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v0, ptr %v1, ptr %t59, { i64, ptr } %a2)
  br label %bb14
bb14:
  %t63 = load ptr, ptr %l0, !tbaa !29
  %t65 = getelementptr %"compiler/mir:dumper", ptr %t63, i32 0, i32 2
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePushChar(ptr %v0, ptr %t65, i8 10)
  br label %bb15
bb15:
  br label %ret
ret:
  ret void
}

define dso_local { i64, ptr } @compiler_2fmir_2ecompiler_2fmir_3adumper_2eoperands(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, %"compiler/mir:Range" %a1) #0 {
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
  %l14 = alloca i32
  %l17 = alloca i32
  %l35 = alloca ptr
  %l38 = alloca { i64, ptr }
  %l39 = alloca ptr
  %l42 = alloca ptr
  %l49 = alloca { i64, [4 x i64] }
  %l50 = alloca { i64, ptr }
  %l56 = alloca { i64, ptr }
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
  store i32 0, ptr %l3, !tbaa !23
  %t3 = getelementptr %"compiler/mir:Range", ptr %l1, i32 0, i32 1
  %t4 = load i32, ptr %t3, !tbaa !23
  store i32 %t4, ptr %l4, !tbaa !23
  store i32 1, ptr %l5, !tbaa !23
  %t6 = load i32, ptr %l4, !tbaa !23
  %t7 = load i32, ptr %l3, !tbaa !23
  %t10 = icmp sgt i32 %t6, %t7
  br i1 %t10, label %bb2, label %bb3
bb2:
  %t12 = load i32, ptr %l5, !tbaa !23
  %t14 = icmp sgt i32 %t12, 0
  br i1 %t14, label %bb4, label %bb5
bb3:
  store i32 0, ptr %l14, !tbaa !23
  br label %bb7
bb4:
  %t16 = load i32, ptr %l4, !tbaa !23
  %t17 = load i32, ptr %l3, !tbaa !23
  %t20 = sub i32 %t16, %t17
  %t21 = load i32, ptr %l5, !tbaa !23
  %t24 = add i32 %t20, %t21
  %t26 = sub i32 %t24, 1
  %t27 = load i32, ptr %l5, !tbaa !23
  %t30 = sdiv i32 %t26, %t27
  store i32 %t30, ptr %l17, !tbaa !23
  br label %bb6
bb5:
  store i32 0, ptr %l17, !tbaa !23
  br label %bb6
bb6:
  %t32 = load i32, ptr %l17, !tbaa !23
  store i32 %t32, ptr %l14, !tbaa !23
  br label %bb7
bb7:
  %t33 = load i32, ptr %l14, !tbaa !23
  store i32 %t33, ptr %l6, !tbaa !23
  store i32 0, ptr %l7, !tbaa !23
  br label %bb8
bb8:
  store %olang.scope zeroinitializer, ptr %s2
  %t34 = load i32, ptr %l7, !tbaa !23
  %t35 = load i32, ptr %l6, !tbaa !23
  %t38 = icmp slt i32 %t34, %t35
  %t40 = xor i1 %t38, true
  br i1 %t40, label %bb9, label %bb10
bb9:
  call void @__olang_scope_close(ptr %s2)
  br label %bb19
bb10:
  br label %bb11
bb11:
  %t42 = load i32, ptr %l3, !tbaa !23
  %t43 = load i32, ptr %l7, !tbaa !23
  %t44 = load i32, ptr %l5, !tbaa !23
  %t47 = mul i32 %t43, %t44
  %t50 = add i32 %t42, %t47
  store i32 %t50, ptr %l8, !tbaa !23
  store ptr %l2, ptr %l35, !tbaa !29
  %t52 = load i32, ptr %l8, !tbaa !23
  %t54 = icmp sgt i32 %t52, 0
  br i1 %t54, label %bb12, label %bb13
bb12:
  store { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d11, i32 0, i32 1) }, ptr %l38, !tbaa !27
  br label %bb14
bb13:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d12, i32 0, i32 1) }, ptr %l38, !tbaa !27
  br label %bb14
bb14:
  %t56 = load ptr, ptr %l0, !tbaa !29
  store ptr %t56, ptr %l39, !tbaa !29
  %t57 = load ptr, ptr %l0, !tbaa !29
  %t59 = getelementptr %"compiler/mir:dumper", ptr %t57, i32 0, i32 0
  %t60 = load ptr, ptr %t59, !tbaa !29
  %t62 = getelementptr %"compiler/mir:Fn", ptr %t60, i32 0, i32 11
  store ptr %t62, ptr %l42, !tbaa !29
  %t63 = getelementptr %"compiler/mir:Range", ptr %l1, i32 0, i32 0
  %t64 = load i32, ptr %t63, !tbaa !23
  %t66 = sext i32 %t64 to i64
  %t67 = load i32, ptr %l8, !tbaa !23
  %t69 = sext i32 %t67 to i64
  %t72 = add i64 %t66, %t69
  %t73 = load ptr, ptr %l42, !tbaa !29
  %t74 = call ptr @__olang_scope_or(ptr %v2, ptr %t73)
  %t75 = ptrtoint ptr %t74 to i64
  %t77 = inttoptr i64 %t75 to ptr
  %t78 = load ptr, ptr %l42, !tbaa !29
  %t80 = call { i64, [4 x i64] } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aOperand_3e_2eAt_3ccompiler_2fmir_3aOperand_3e(ptr %t77, ptr %t78, i64 %t72)
  store { i64, [4 x i64] } %t80, ptr %l49
  br label %bb15
bb15:
  %t81 = load ptr, ptr %l39, !tbaa !29
  %t82 = load { i64, [4 x i64] }, ptr %l49
  %t83 = call { i64, ptr } @compiler_2fmir_2ecompiler_2fmir_3adumper_2eoperand(ptr %v0, ptr %s2, ptr %v2, ptr %v3, ptr %t81, { i64, [4 x i64] } %t82)
  store { i64, ptr } %t83, ptr %l50
  br label %bb16
bb16:
  %t84 = load { i64, ptr }, ptr %l38, !tbaa !27
  %t85 = extractvalue { i64, ptr } %t84, 1
  %t86 = extractvalue { i64, ptr } %t84, 0
  %t87 = load { i64, ptr }, ptr %l50, !tbaa !27
  %t88 = extractvalue { i64, ptr } %t87, 1
  %t89 = extractvalue { i64, ptr } %t87, 0
  %t90 = add i64 %t86, %t89
  %t91 = call ptr @__olang_scope_alloc(ptr %s2, i64 %t90)
  call void @olang_textcopy(ptr %t91, ptr %t85, i64 %t86)
  %t92 = getelementptr i8, ptr %t91, i64 %t86
  call void @olang_textcopy(ptr %t92, ptr %t88, i64 %t89)
  %t93 = insertvalue { i64, ptr } undef, i64 %t90, 0
  %t94 = insertvalue { i64, ptr } %t93, ptr %t91, 1
  %t96 = extractvalue { i64, ptr } %t94, 0
  %t97 = extractvalue { i64, ptr } %t94, 1
  %t98 = mul i64 %t96, 1
  %t99 = call ptr @__olang_scope_alloc(ptr %s2, i64 %t98)
  call void @llvm.memcpy.p0.p0.i64(ptr %t99, ptr %t97, i64 %t98, i1 false)
  %t100 = insertvalue { i64, ptr } undef, i64 %t96, 0
  %t101 = insertvalue { i64, ptr } %t100, ptr %t99, 1
  %t102 = load ptr, ptr %l35, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s2, ptr %t102, { i64, ptr } %t101)
  br label %bb17
bb17:
  call void @__olang_scope_close(ptr %s2)
  br label %bb18
bb18:
  %t104 = load i32, ptr %l7, !tbaa !23
  %t106 = add i32 %t104, 1
  store i32 %t106, ptr %l7, !tbaa !23
  br label %bb8
bb19:
  %t109 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %s0, ptr %v1, ptr %l2)
  store { i64, ptr } %t109, ptr %l56
  br label %bb20
bb20:
  call void @__olang_scope_close(ptr %s0)
  %t110 = load { i64, ptr }, ptr %l56, !tbaa !27
  store { i64, ptr } %t110, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local { i64, ptr } @compiler_2fmir_2ecompiler_2fmir_3adumper_2erefs(ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"compiler/mir:Range" %a1) #0 {
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
  %l14 = alloca i32
  %l17 = alloca i32
  %l35 = alloca ptr
  %l38 = alloca { i64, ptr }
  %l39 = alloca ptr
  %l42 = alloca ptr
  %l49 = alloca { i64, [1 x i64] }
  %l50 = alloca { i64, ptr }
  %l56 = alloca { i64, ptr }
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
  store i32 0, ptr %l3, !tbaa !23
  %t3 = getelementptr %"compiler/mir:Range", ptr %l1, i32 0, i32 1
  %t4 = load i32, ptr %t3, !tbaa !23
  store i32 %t4, ptr %l4, !tbaa !23
  store i32 1, ptr %l5, !tbaa !23
  %t6 = load i32, ptr %l4, !tbaa !23
  %t7 = load i32, ptr %l3, !tbaa !23
  %t10 = icmp sgt i32 %t6, %t7
  br i1 %t10, label %bb2, label %bb3
bb2:
  %t12 = load i32, ptr %l5, !tbaa !23
  %t14 = icmp sgt i32 %t12, 0
  br i1 %t14, label %bb4, label %bb5
bb3:
  store i32 0, ptr %l14, !tbaa !23
  br label %bb7
bb4:
  %t16 = load i32, ptr %l4, !tbaa !23
  %t17 = load i32, ptr %l3, !tbaa !23
  %t20 = sub i32 %t16, %t17
  %t21 = load i32, ptr %l5, !tbaa !23
  %t24 = add i32 %t20, %t21
  %t26 = sub i32 %t24, 1
  %t27 = load i32, ptr %l5, !tbaa !23
  %t30 = sdiv i32 %t26, %t27
  store i32 %t30, ptr %l17, !tbaa !23
  br label %bb6
bb5:
  store i32 0, ptr %l17, !tbaa !23
  br label %bb6
bb6:
  %t32 = load i32, ptr %l17, !tbaa !23
  store i32 %t32, ptr %l14, !tbaa !23
  br label %bb7
bb7:
  %t33 = load i32, ptr %l14, !tbaa !23
  store i32 %t33, ptr %l6, !tbaa !23
  store i32 0, ptr %l7, !tbaa !23
  br label %bb8
bb8:
  store %olang.scope zeroinitializer, ptr %s2
  %t34 = load i32, ptr %l7, !tbaa !23
  %t35 = load i32, ptr %l6, !tbaa !23
  %t38 = icmp slt i32 %t34, %t35
  %t40 = xor i1 %t38, true
  br i1 %t40, label %bb9, label %bb10
bb9:
  call void @__olang_scope_close(ptr %s2)
  br label %bb19
bb10:
  br label %bb11
bb11:
  %t42 = load i32, ptr %l3, !tbaa !23
  %t43 = load i32, ptr %l7, !tbaa !23
  %t44 = load i32, ptr %l5, !tbaa !23
  %t47 = mul i32 %t43, %t44
  %t50 = add i32 %t42, %t47
  store i32 %t50, ptr %l8, !tbaa !23
  store ptr %l2, ptr %l35, !tbaa !29
  %t52 = load i32, ptr %l8, !tbaa !23
  %t54 = icmp sgt i32 %t52, 0
  br i1 %t54, label %bb12, label %bb13
bb12:
  store { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d13, i32 0, i32 1) }, ptr %l38, !tbaa !27
  br label %bb14
bb13:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d14, i32 0, i32 1) }, ptr %l38, !tbaa !27
  br label %bb14
bb14:
  %t56 = load ptr, ptr %l0, !tbaa !29
  store ptr %t56, ptr %l39, !tbaa !29
  %t57 = load ptr, ptr %l0, !tbaa !29
  %t59 = getelementptr %"compiler/mir:dumper", ptr %t57, i32 0, i32 0
  %t60 = load ptr, ptr %t59, !tbaa !29
  %t62 = getelementptr %"compiler/mir:Fn", ptr %t60, i32 0, i32 12
  store ptr %t62, ptr %l42, !tbaa !29
  %t63 = getelementptr %"compiler/mir:Range", ptr %l1, i32 0, i32 0
  %t64 = load i32, ptr %t63, !tbaa !23
  %t66 = sext i32 %t64 to i64
  %t67 = load i32, ptr %l8, !tbaa !23
  %t69 = sext i32 %t67 to i64
  %t72 = add i64 %t66, %t69
  %t73 = load ptr, ptr %l42, !tbaa !29
  %t74 = call ptr @__olang_scope_or(ptr %v2, ptr %t73)
  %t75 = ptrtoint ptr %t74 to i64
  %t77 = inttoptr i64 %t75 to ptr
  %t78 = load ptr, ptr %l42, !tbaa !29
  %t80 = call { i64, [1 x i64] } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aScopeRef_3e_2eAt_3ccompiler_2fmir_3aScopeRef_3e(ptr %t77, ptr %t78, i64 %t72)
  store { i64, [1 x i64] } %t80, ptr %l49
  br label %bb15
bb15:
  %t81 = load ptr, ptr %l39, !tbaa !29
  %t82 = load { i64, [1 x i64] }, ptr %l49
  %t83 = call { i64, ptr } @compiler_2fmir_2ecompiler_2fmir_3adumper_2eref(ptr %v0, ptr %s2, ptr %t81, { i64, [1 x i64] } %t82)
  store { i64, ptr } %t83, ptr %l50
  br label %bb16
bb16:
  %t84 = load { i64, ptr }, ptr %l38, !tbaa !27
  %t85 = extractvalue { i64, ptr } %t84, 1
  %t86 = extractvalue { i64, ptr } %t84, 0
  %t87 = load { i64, ptr }, ptr %l50, !tbaa !27
  %t88 = extractvalue { i64, ptr } %t87, 1
  %t89 = extractvalue { i64, ptr } %t87, 0
  %t90 = add i64 %t86, %t89
  %t91 = call ptr @__olang_scope_alloc(ptr %s2, i64 %t90)
  call void @olang_textcopy(ptr %t91, ptr %t85, i64 %t86)
  %t92 = getelementptr i8, ptr %t91, i64 %t86
  call void @olang_textcopy(ptr %t92, ptr %t88, i64 %t89)
  %t93 = insertvalue { i64, ptr } undef, i64 %t90, 0
  %t94 = insertvalue { i64, ptr } %t93, ptr %t91, 1
  %t96 = extractvalue { i64, ptr } %t94, 0
  %t97 = extractvalue { i64, ptr } %t94, 1
  %t98 = mul i64 %t96, 1
  %t99 = call ptr @__olang_scope_alloc(ptr %s2, i64 %t98)
  call void @llvm.memcpy.p0.p0.i64(ptr %t99, ptr %t97, i64 %t98, i1 false)
  %t100 = insertvalue { i64, ptr } undef, i64 %t96, 0
  %t101 = insertvalue { i64, ptr } %t100, ptr %t99, 1
  %t102 = load ptr, ptr %l35, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s2, ptr %t102, { i64, ptr } %t101)
  br label %bb17
bb17:
  call void @__olang_scope_close(ptr %s2)
  br label %bb18
bb18:
  %t104 = load i32, ptr %l7, !tbaa !23
  %t106 = add i32 %t104, 1
  store i32 %t106, ptr %l7, !tbaa !23
  br label %bb8
bb19:
  %t109 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %s0, ptr %v1, ptr %l2)
  store { i64, ptr } %t109, ptr %l56
  br label %bb20
bb20:
  call void @__olang_scope_close(ptr %s0)
  %t110 = load { i64, ptr }, ptr %l56, !tbaa !27
  store { i64, ptr } %t110, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local { i64, ptr } @compiler_2fmir_2ecompiler_2fmir_3adumper_2estmt(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca %"compiler/mir:Lvalue"
  %l3 = alloca { i64, [15 x i64] }
  %l4 = alloca i32
  %l5 = alloca i32
  %l6 = alloca i32
  %l7 = alloca i32
  %l8 = alloca { i64, [1 x i64] }
  %l9 = alloca i32
  %l10 = alloca { i64, [4 x i64] }
  %l11 = alloca %"compiler/mir:Lvalue"
  %l12 = alloca i32
  %l13 = alloca %"compiler/mir:Lvalue"
  %l14 = alloca { i64, [1 x i64] }
  %l15 = alloca i32
  %l16 = alloca { i64, [4 x i64] }
  %l17 = alloca %"compiler/mir:Lvalue"
  %l18 = alloca %"compiler/mir:Lvalue"
  %l19 = alloca { i64, [4 x i64] }
  %l20 = alloca i32
  %l21 = alloca i32
  %l22 = alloca { i64, [4 x i64] }
  %l23 = alloca { i64, [4 x i64] }
  %l24 = alloca { i64, [4 x i64] }
  %l25 = alloca i32
  %l26 = alloca i32
  %l27 = alloca { i64, ptr }
  %l28 = alloca ptr
  %l29 = alloca i1
  %l38 = alloca { i64, ptr }
  %l41 = alloca { i64, ptr }
  %l43 = alloca ptr
  %l44 = alloca i1
  %l51 = alloca ptr
  %l52 = alloca i1
  %l59 = alloca ptr
  %l60 = alloca i1
  %l67 = alloca ptr
  %l68 = alloca i1
  %l75 = alloca ptr
  %l76 = alloca i1
  %l86 = alloca ptr
  %l90 = alloca { i64, ptr }
  %l93 = alloca { i64, ptr }
  %l96 = alloca { i64, ptr }
  %l98 = alloca ptr
  %l99 = alloca i1
  %l106 = alloca { i64, ptr }
  %l108 = alloca ptr
  %l109 = alloca i1
  %l117 = alloca i64
  %l120 = alloca { i64, ptr }
  %l122 = alloca ptr
  %l123 = alloca i1
  %l132 = alloca i32
  %l134 = alloca { i64, ptr }
  %l136 = alloca { i64, ptr }
  %l139 = alloca { i64, ptr }
  %l142 = alloca { i64, ptr }
  %l144 = alloca ptr
  %l145 = alloca i1
  %l156 = alloca { i64, ptr }
  %l159 = alloca { i64, ptr }
  %l162 = alloca { i64, ptr }
  %l164 = alloca ptr
  %l165 = alloca i1
  %l172 = alloca i32
  %l173 = alloca ptr
  %l176 = alloca ptr
  %l180 = alloca %"compiler/mir:Task"
  %l181 = alloca { i64, ptr }
  %l183 = alloca ptr
  %l184 = alloca i1
  %l187 = alloca { i64, ptr }
  %l189 = alloca ptr
  %l190 = alloca i1
  %l197 = alloca { i64, ptr }
  %l199 = alloca ptr
  %l200 = alloca i1
  %l203 = alloca { i64, ptr }
  %l205 = alloca ptr
  %l206 = alloca i1
  %l215 = alloca { i64, ptr }
  %l218 = alloca { i64, ptr }
  %l220 = alloca ptr
  %l221 = alloca i1
  %l228 = alloca i32
  %l232 = alloca { i64, ptr }
  %l237 = alloca i64
  %l238 = alloca { i64, ptr }
  %s1 = alloca %olang.scope
  %s11 = alloca %olang.scope
  %s13 = alloca %olang.scope
  %s15 = alloca %olang.scope
  %s17 = alloca %olang.scope
  %s18 = alloca %olang.builder
  %s18room = alloca [64 x i8], align 8
  %s20 = alloca %olang.scope
  %s22 = alloca %olang.scope
  %s25 = alloca %olang.scope
  %s28 = alloca %olang.scope
  %s30 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l1, !tbaa !29
  store ptr %t1, ptr %l28, !tbaa !29
  store i1 false, ptr %l29, !tbaa !21
  %t2 = load ptr, ptr %l28, !tbaa !29
  %t3 = icmp ne ptr %t2, null
  br i1 %t3, label %bb1, label %bb2
bb1:
  %t5 = load ptr, ptr %l28, !tbaa !29
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 16}
  %t8 = icmp eq i64 %t6, 0
  store i1 %t8, ptr %l29, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l29, !tbaa !21
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
  br label %bb8
bb5:
  store %olang.scope zeroinitializer, ptr %s1
  %t22 = load ptr, ptr %l0, !tbaa !29
  %t23 = load %"compiler/mir:Lvalue", ptr %l2
  %t26 = call { i64, ptr } @compiler_2fmir_2ecompiler_2fmir_3adumper_2eplace(ptr %v0, ptr %s1, ptr %v3, ptr %t22, %"compiler/mir:Lvalue" %t23)
  store { i64, ptr } %t26, ptr %l38
  br label %bb6
bb6:
  %t27 = load ptr, ptr %l0, !tbaa !29
  %t28 = load { i64, [15 x i64] }, ptr %l3
  %t31 = call { i64, ptr } @compiler_2fmir_2ecompiler_2fmir_3adumper_2ervalue(ptr %v0, ptr %s1, ptr %v3, ptr %v4, ptr %t27, { i64, [15 x i64] } %t28)
  store { i64, ptr } %t31, ptr %l41
  br label %bb7
bb7:
  %t32 = load { i64, ptr }, ptr %l38, !tbaa !27
  %t33 = extractvalue { i64, ptr } %t32, 1
  %t34 = extractvalue { i64, ptr } %t32, 0
  %t35 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d15, i32 0, i32 1) }, 1
  %t36 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d15, i32 0, i32 1) }, 0
  %t37 = add i64 %t34, %t36
  %t38 = load { i64, ptr }, ptr %l41, !tbaa !27
  %t39 = extractvalue { i64, ptr } %t38, 1
  %t40 = extractvalue { i64, ptr } %t38, 0
  %t41 = add i64 %t37, %t40
  %t42 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t41)
  call void @olang_textcopy(ptr %t42, ptr %t33, i64 %t34)
  %t43 = getelementptr i8, ptr %t42, i64 %t34
  call void @olang_textcopy(ptr %t43, ptr %t35, i64 %t36)
  %t44 = getelementptr i8, ptr %t43, i64 %t36
  call void @olang_textcopy(ptr %t44, ptr %t39, i64 %t40)
  %t45 = insertvalue { i64, ptr } undef, i64 %t41, 0
  %t46 = insertvalue { i64, ptr } %t45, ptr %t42, 1
  store { i64, ptr } %t46, ptr %l27, !tbaa !27
  call void @__olang_scope_close(ptr %s1)
  br label %bb119
bb8:
  %t48 = load ptr, ptr %l1, !tbaa !29
  store ptr %t48, ptr %l43, !tbaa !29
  store i1 false, ptr %l44, !tbaa !21
  %t49 = load ptr, ptr %l43, !tbaa !29
  %t50 = icmp ne ptr %t49, null
  br i1 %t50, label %bb9, label %bb10
bb9:
  %t52 = load ptr, ptr %l43, !tbaa !29
  %t53 = load i64, ptr %t52, !range !{i64 0, i64 16}
  %t55 = icmp eq i64 %t53, 1
  store i1 %t55, ptr %l44, !tbaa !21
  br label %bb10
bb10:
  %t56 = load i1, ptr %l44, !tbaa !21
  br i1 %t56, label %bb11, label %bb12
bb11:
  %t57 = load ptr, ptr %l1, !tbaa !29
  %t59 = getelementptr { i64, [21 x i64] }, ptr %t57, i32 0, i32 1
  %t60 = getelementptr { %"compiler/source:Span", i32 }, ptr %t59, i32 0, i32 1
  %t61 = load i32, ptr %t60
  store i32 %t61, ptr %l4, !tbaa !23
  br label %bb13
bb12:
  br label %bb14
bb13:
  %t63 = load i32, ptr %l4, !tbaa !23
  %t64 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d16, i32 0, i32 1) }, 1
  %t65 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d16, i32 0, i32 1) }, 0
  %t67 = sext i32 %t63 to i64
  %t68 = call i64 @__olang_fmt_i64(ptr null, i64 %t67)
  %t69 = add i64 %t65, %t68
  %t70 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t69)
  call void @olang_textcopy(ptr %t70, ptr %t64, i64 %t65)
  %t71 = getelementptr i8, ptr %t70, i64 %t65
  %t72 = call i64 @__olang_fmt_i64(ptr %t71, i64 %t67)
  %t73 = insertvalue { i64, ptr } undef, i64 %t69, 0
  %t74 = insertvalue { i64, ptr } %t73, ptr %t70, 1
  store { i64, ptr } %t74, ptr %l27, !tbaa !27
  br label %bb119
bb14:
  %t76 = load ptr, ptr %l1, !tbaa !29
  store ptr %t76, ptr %l51, !tbaa !29
  store i1 false, ptr %l52, !tbaa !21
  %t77 = load ptr, ptr %l51, !tbaa !29
  %t78 = icmp ne ptr %t77, null
  br i1 %t78, label %bb15, label %bb16
bb15:
  %t80 = load ptr, ptr %l51, !tbaa !29
  %t81 = load i64, ptr %t80, !range !{i64 0, i64 16}
  %t83 = icmp eq i64 %t81, 2
  store i1 %t83, ptr %l52, !tbaa !21
  br label %bb16
bb16:
  %t84 = load i1, ptr %l52, !tbaa !21
  br i1 %t84, label %bb17, label %bb18
bb17:
  %t85 = load ptr, ptr %l1, !tbaa !29
  %t87 = getelementptr { i64, [21 x i64] }, ptr %t85, i32 0, i32 1
  %t88 = getelementptr { %"compiler/source:Span", i32 }, ptr %t87, i32 0, i32 1
  %t89 = load i32, ptr %t88
  store i32 %t89, ptr %l5, !tbaa !23
  br label %bb19
bb18:
  br label %bb20
bb19:
  %t91 = load i32, ptr %l5, !tbaa !23
  %t92 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d17, i32 0, i32 1) }, 1
  %t93 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d17, i32 0, i32 1) }, 0
  %t95 = sext i32 %t91 to i64
  %t96 = call i64 @__olang_fmt_i64(ptr null, i64 %t95)
  %t97 = add i64 %t93, %t96
  %t98 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t97)
  call void @olang_textcopy(ptr %t98, ptr %t92, i64 %t93)
  %t99 = getelementptr i8, ptr %t98, i64 %t93
  %t100 = call i64 @__olang_fmt_i64(ptr %t99, i64 %t95)
  %t101 = insertvalue { i64, ptr } undef, i64 %t97, 0
  %t102 = insertvalue { i64, ptr } %t101, ptr %t98, 1
  store { i64, ptr } %t102, ptr %l27, !tbaa !27
  br label %bb119
bb20:
  %t104 = load ptr, ptr %l1, !tbaa !29
  store ptr %t104, ptr %l59, !tbaa !29
  store i1 false, ptr %l60, !tbaa !21
  %t105 = load ptr, ptr %l59, !tbaa !29
  %t106 = icmp ne ptr %t105, null
  br i1 %t106, label %bb21, label %bb22
bb21:
  %t108 = load ptr, ptr %l59, !tbaa !29
  %t109 = load i64, ptr %t108, !range !{i64 0, i64 16}
  %t111 = icmp eq i64 %t109, 3
  store i1 %t111, ptr %l60, !tbaa !21
  br label %bb22
bb22:
  %t112 = load i1, ptr %l60, !tbaa !21
  br i1 %t112, label %bb23, label %bb24
bb23:
  %t113 = load ptr, ptr %l1, !tbaa !29
  %t115 = getelementptr { i64, [21 x i64] }, ptr %t113, i32 0, i32 1
  %t116 = getelementptr { %"compiler/source:Span", i32 }, ptr %t115, i32 0, i32 1
  %t117 = load i32, ptr %t116
  store i32 %t117, ptr %l6, !tbaa !23
  br label %bb25
bb24:
  br label %bb26
bb25:
  %t119 = load i32, ptr %l6, !tbaa !23
  %t120 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d18, i32 0, i32 1) }, 1
  %t121 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d18, i32 0, i32 1) }, 0
  %t123 = sext i32 %t119 to i64
  %t124 = call i64 @__olang_fmt_i64(ptr null, i64 %t123)
  %t125 = add i64 %t121, %t124
  %t126 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t125)
  call void @olang_textcopy(ptr %t126, ptr %t120, i64 %t121)
  %t127 = getelementptr i8, ptr %t126, i64 %t121
  %t128 = call i64 @__olang_fmt_i64(ptr %t127, i64 %t123)
  %t129 = insertvalue { i64, ptr } undef, i64 %t125, 0
  %t130 = insertvalue { i64, ptr } %t129, ptr %t126, 1
  store { i64, ptr } %t130, ptr %l27, !tbaa !27
  br label %bb119
bb26:
  %t132 = load ptr, ptr %l1, !tbaa !29
  store ptr %t132, ptr %l67, !tbaa !29
  store i1 false, ptr %l68, !tbaa !21
  %t133 = load ptr, ptr %l67, !tbaa !29
  %t134 = icmp ne ptr %t133, null
  br i1 %t134, label %bb27, label %bb28
bb27:
  %t136 = load ptr, ptr %l67, !tbaa !29
  %t137 = load i64, ptr %t136, !range !{i64 0, i64 16}
  %t139 = icmp eq i64 %t137, 4
  store i1 %t139, ptr %l68, !tbaa !21
  br label %bb28
bb28:
  %t140 = load i1, ptr %l68, !tbaa !21
  br i1 %t140, label %bb29, label %bb30
bb29:
  %t141 = load ptr, ptr %l1, !tbaa !29
  %t143 = getelementptr { i64, [21 x i64] }, ptr %t141, i32 0, i32 1
  %t144 = getelementptr { %"compiler/source:Span", i32 }, ptr %t143, i32 0, i32 1
  %t145 = load i32, ptr %t144
  store i32 %t145, ptr %l7, !tbaa !23
  br label %bb31
bb30:
  br label %bb32
bb31:
  %t147 = load i32, ptr %l7, !tbaa !23
  %t148 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d19, i32 0, i32 1) }, 1
  %t149 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d19, i32 0, i32 1) }, 0
  %t151 = sext i32 %t147 to i64
  %t152 = call i64 @__olang_fmt_i64(ptr null, i64 %t151)
  %t153 = add i64 %t149, %t152
  %t154 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t153)
  call void @olang_textcopy(ptr %t154, ptr %t148, i64 %t149)
  %t155 = getelementptr i8, ptr %t154, i64 %t149
  %t156 = call i64 @__olang_fmt_i64(ptr %t155, i64 %t151)
  %t157 = insertvalue { i64, ptr } undef, i64 %t153, 0
  %t158 = insertvalue { i64, ptr } %t157, ptr %t154, 1
  store { i64, ptr } %t158, ptr %l27, !tbaa !27
  br label %bb119
bb32:
  %t160 = load ptr, ptr %l1, !tbaa !29
  store ptr %t160, ptr %l75, !tbaa !29
  store i1 false, ptr %l76, !tbaa !21
  %t161 = load ptr, ptr %l75, !tbaa !29
  %t162 = icmp ne ptr %t161, null
  br i1 %t162, label %bb33, label %bb34
bb33:
  %t164 = load ptr, ptr %l75, !tbaa !29
  %t165 = load i64, ptr %t164, !range !{i64 0, i64 16}
  %t167 = icmp eq i64 %t165, 5
  store i1 %t167, ptr %l76, !tbaa !21
  br label %bb34
bb34:
  %t168 = load i1, ptr %l76, !tbaa !21
  br i1 %t168, label %bb35, label %bb36
bb35:
  %t169 = load ptr, ptr %l1, !tbaa !29
  %t171 = getelementptr { i64, [21 x i64] }, ptr %t169, i32 0, i32 1
  %t172 = getelementptr { %"compiler/source:Span", { i64, [1 x i64] }, i32, { i64, [4 x i64] } }, ptr %t171, i32 0, i32 1
  %t173 = load { i64, [1 x i64] }, ptr %t172
  store { i64, [1 x i64] } %t173, ptr %l8
  %t175 = load ptr, ptr %l1, !tbaa !29
  %t177 = getelementptr { i64, [21 x i64] }, ptr %t175, i32 0, i32 1
  %t178 = getelementptr { %"compiler/source:Span", { i64, [1 x i64] }, i32, { i64, [4 x i64] } }, ptr %t177, i32 0, i32 2
  %t179 = load i32, ptr %t178
  store i32 %t179, ptr %l9, !tbaa !23
  %t181 = load ptr, ptr %l1, !tbaa !29
  %t183 = getelementptr { i64, [21 x i64] }, ptr %t181, i32 0, i32 1
  %t184 = getelementptr { %"compiler/source:Span", { i64, [1 x i64] }, i32, { i64, [4 x i64] } }, ptr %t183, i32 0, i32 3
  %t185 = load { i64, [4 x i64] }, ptr %t184
  store { i64, [4 x i64] } %t185, ptr %l10
  br label %bb37
bb36:
  br label %bb41
bb37:
  store %olang.scope zeroinitializer, ptr %s11
  %t187 = load ptr, ptr %l0, !tbaa !29
  %t189 = getelementptr %"compiler/mir:dumper", ptr %t187, i32 0, i32 1
  %t190 = load ptr, ptr %t189, !tbaa !29
  store ptr %t190, ptr %l86, !tbaa !29
  %t191 = load i32, ptr %l9, !tbaa !23
  %t192 = load ptr, ptr %l86, !tbaa !29
  %t193 = call ptr @__olang_scope_or(ptr %v4, ptr %t192)
  %t194 = ptrtoint ptr %t193 to i64
  %t196 = inttoptr i64 %t194 to ptr
  %t198 = inttoptr i64 0 to ptr
  %t199 = load ptr, ptr %l86, !tbaa !29
  %t201 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eCanon(ptr %t196, ptr %s11, ptr %t198, ptr %t199, i32 %t191)
  store { i64, ptr } %t201, ptr %l90
  br label %bb38
bb38:
  %t202 = load ptr, ptr %l0, !tbaa !29
  %t203 = load { i64, [4 x i64] }, ptr %l10
  %t206 = call { i64, ptr } @compiler_2fmir_2ecompiler_2fmir_3adumper_2eoperand(ptr %v0, ptr %s11, ptr %v3, ptr %v4, ptr %t202, { i64, [4 x i64] } %t203)
  store { i64, ptr } %t206, ptr %l93
  br label %bb39
bb39:
  %t207 = load ptr, ptr %l0, !tbaa !29
  %t208 = load { i64, [1 x i64] }, ptr %l8
  %t211 = call { i64, ptr } @compiler_2fmir_2ecompiler_2fmir_3adumper_2eref(ptr %v0, ptr %s11, ptr %t207, { i64, [1 x i64] } %t208)
  store { i64, ptr } %t211, ptr %l96
  br label %bb40
bb40:
  %t212 = extractvalue { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d20, i32 0, i32 1) }, 1
  %t213 = extractvalue { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d20, i32 0, i32 1) }, 0
  %t214 = load { i64, ptr }, ptr %l90, !tbaa !27
  %t215 = extractvalue { i64, ptr } %t214, 1
  %t216 = extractvalue { i64, ptr } %t214, 0
  %t217 = add i64 %t213, %t216
  %t218 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d21, i32 0, i32 1) }, 1
  %t219 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d21, i32 0, i32 1) }, 0
  %t220 = add i64 %t217, %t219
  %t221 = load { i64, ptr }, ptr %l93, !tbaa !27
  %t222 = extractvalue { i64, ptr } %t221, 1
  %t223 = extractvalue { i64, ptr } %t221, 0
  %t224 = add i64 %t220, %t223
  %t225 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d22, i32 0, i32 1) }, 1
  %t226 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d22, i32 0, i32 1) }, 0
  %t227 = add i64 %t224, %t226
  %t228 = load { i64, ptr }, ptr %l96, !tbaa !27
  %t229 = extractvalue { i64, ptr } %t228, 1
  %t230 = extractvalue { i64, ptr } %t228, 0
  %t231 = add i64 %t227, %t230
  %t232 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t231)
  call void @olang_textcopy(ptr %t232, ptr %t212, i64 %t213)
  %t233 = getelementptr i8, ptr %t232, i64 %t213
  call void @olang_textcopy(ptr %t233, ptr %t215, i64 %t216)
  %t234 = getelementptr i8, ptr %t233, i64 %t216
  call void @olang_textcopy(ptr %t234, ptr %t218, i64 %t219)
  %t235 = getelementptr i8, ptr %t234, i64 %t219
  call void @olang_textcopy(ptr %t235, ptr %t222, i64 %t223)
  %t236 = getelementptr i8, ptr %t235, i64 %t223
  call void @olang_textcopy(ptr %t236, ptr %t225, i64 %t226)
  %t237 = getelementptr i8, ptr %t236, i64 %t226
  call void @olang_textcopy(ptr %t237, ptr %t229, i64 %t230)
  %t238 = insertvalue { i64, ptr } undef, i64 %t231, 0
  %t239 = insertvalue { i64, ptr } %t238, ptr %t232, 1
  store { i64, ptr } %t239, ptr %l27, !tbaa !27
  call void @__olang_scope_close(ptr %s11)
  br label %bb119
bb41:
  %t241 = load ptr, ptr %l1, !tbaa !29
  store ptr %t241, ptr %l98, !tbaa !29
  store i1 false, ptr %l99, !tbaa !21
  %t242 = load ptr, ptr %l98, !tbaa !29
  %t243 = icmp ne ptr %t242, null
  br i1 %t243, label %bb42, label %bb43
bb42:
  %t245 = load ptr, ptr %l98, !tbaa !29
  %t246 = load i64, ptr %t245, !range !{i64 0, i64 16}
  %t248 = icmp eq i64 %t246, 6
  store i1 %t248, ptr %l99, !tbaa !21
  br label %bb43
bb43:
  %t249 = load i1, ptr %l99, !tbaa !21
  br i1 %t249, label %bb44, label %bb45
bb44:
  %t250 = load ptr, ptr %l1, !tbaa !29
  %t252 = getelementptr { i64, [21 x i64] }, ptr %t250, i32 0, i32 1
  %t253 = getelementptr { %"compiler/source:Span", %"compiler/mir:Lvalue" }, ptr %t252, i32 0, i32 1
  %t254 = load %"compiler/mir:Lvalue", ptr %t253
  store %"compiler/mir:Lvalue" %t254, ptr %l11
  br label %bb46
bb45:
  br label %bb48
bb46:
  store %olang.scope zeroinitializer, ptr %s13
  %t256 = load ptr, ptr %l0, !tbaa !29
  %t257 = load %"compiler/mir:Lvalue", ptr %l11
  %t260 = call { i64, ptr } @compiler_2fmir_2ecompiler_2fmir_3adumper_2eplace(ptr %v0, ptr %s13, ptr %v3, ptr %t256, %"compiler/mir:Lvalue" %t257)
  store { i64, ptr } %t260, ptr %l106
  br label %bb47
bb47:
  %t261 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d23, i32 0, i32 1) }, 1
  %t262 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d23, i32 0, i32 1) }, 0
  %t263 = load { i64, ptr }, ptr %l106, !tbaa !27
  %t264 = extractvalue { i64, ptr } %t263, 1
  %t265 = extractvalue { i64, ptr } %t263, 0
  %t266 = add i64 %t262, %t265
  %t267 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t266)
  call void @olang_textcopy(ptr %t267, ptr %t261, i64 %t262)
  %t268 = getelementptr i8, ptr %t267, i64 %t262
  call void @olang_textcopy(ptr %t268, ptr %t264, i64 %t265)
  %t269 = insertvalue { i64, ptr } undef, i64 %t266, 0
  %t270 = insertvalue { i64, ptr } %t269, ptr %t267, 1
  store { i64, ptr } %t270, ptr %l27, !tbaa !27
  call void @__olang_scope_close(ptr %s13)
  br label %bb119
bb48:
  %t272 = load ptr, ptr %l1, !tbaa !29
  store ptr %t272, ptr %l108, !tbaa !29
  store i1 false, ptr %l109, !tbaa !21
  %t273 = load ptr, ptr %l108, !tbaa !29
  %t274 = icmp ne ptr %t273, null
  br i1 %t274, label %bb49, label %bb50
bb49:
  %t276 = load ptr, ptr %l108, !tbaa !29
  %t277 = load i64, ptr %t276, !range !{i64 0, i64 16}
  %t279 = icmp eq i64 %t277, 7
  store i1 %t279, ptr %l109, !tbaa !21
  br label %bb50
bb50:
  %t280 = load i1, ptr %l109, !tbaa !21
  br i1 %t280, label %bb51, label %bb52
bb51:
  %t281 = load ptr, ptr %l1, !tbaa !29
  %t283 = getelementptr { i64, [21 x i64] }, ptr %t281, i32 0, i32 1
  %t284 = getelementptr { %"compiler/source:Span", i32, %"compiler/mir:Lvalue" }, ptr %t283, i32 0, i32 1
  %t285 = load i32, ptr %t284
  store i32 %t285, ptr %l12, !tbaa !23
  %t287 = load ptr, ptr %l1, !tbaa !29
  %t289 = getelementptr { i64, [21 x i64] }, ptr %t287, i32 0, i32 1
  %t290 = getelementptr { %"compiler/source:Span", i32, %"compiler/mir:Lvalue" }, ptr %t289, i32 0, i32 2
  %t291 = load %"compiler/mir:Lvalue", ptr %t290
  store %"compiler/mir:Lvalue" %t291, ptr %l13
  br label %bb53
bb52:
  br label %bb55
bb53:
  store %olang.scope zeroinitializer, ptr %s15
  %t293 = load i32, ptr %l12, !tbaa !23
  %t295 = sext i32 %t293 to i64
  store i64 %t295, ptr %l117, !tbaa !24
  %t296 = load ptr, ptr %l0, !tbaa !29
  %t297 = load %"compiler/mir:Lvalue", ptr %l13
  %t300 = call { i64, ptr } @compiler_2fmir_2ecompiler_2fmir_3adumper_2eplace(ptr %v0, ptr %s15, ptr %v3, ptr %t296, %"compiler/mir:Lvalue" %t297)
  store { i64, ptr } %t300, ptr %l120
  br label %bb54
bb54:
  %t301 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d24, i32 0, i32 1) }, 1
  %t302 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d24, i32 0, i32 1) }, 0
  %t303 = load i64, ptr %l117, !tbaa !24
  %t304 = call i64 @__olang_fmt_i64(ptr null, i64 %t303)
  %t305 = add i64 %t302, %t304
  %t306 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d25, i32 0, i32 1) }, 1
  %t307 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d25, i32 0, i32 1) }, 0
  %t308 = add i64 %t305, %t307
  %t309 = load { i64, ptr }, ptr %l120, !tbaa !27
  %t310 = extractvalue { i64, ptr } %t309, 1
  %t311 = extractvalue { i64, ptr } %t309, 0
  %t312 = add i64 %t308, %t311
  %t313 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t312)
  call void @olang_textcopy(ptr %t313, ptr %t301, i64 %t302)
  %t314 = getelementptr i8, ptr %t313, i64 %t302
  %t315 = call i64 @__olang_fmt_i64(ptr %t314, i64 %t303)
  %t316 = getelementptr i8, ptr %t314, i64 %t304
  call void @olang_textcopy(ptr %t316, ptr %t306, i64 %t307)
  %t317 = getelementptr i8, ptr %t316, i64 %t307
  call void @olang_textcopy(ptr %t317, ptr %t310, i64 %t311)
  %t318 = insertvalue { i64, ptr } undef, i64 %t312, 0
  %t319 = insertvalue { i64, ptr } %t318, ptr %t313, 1
  store { i64, ptr } %t319, ptr %l27, !tbaa !27
  call void @__olang_scope_close(ptr %s15)
  br label %bb119
bb55:
  %t321 = load ptr, ptr %l1, !tbaa !29
  store ptr %t321, ptr %l122, !tbaa !29
  store i1 false, ptr %l123, !tbaa !21
  %t322 = load ptr, ptr %l122, !tbaa !29
  %t323 = icmp ne ptr %t322, null
  br i1 %t323, label %bb56, label %bb57
bb56:
  %t325 = load ptr, ptr %l122, !tbaa !29
  %t326 = load i64, ptr %t325, !range !{i64 0, i64 16}
  %t328 = icmp eq i64 %t326, 8
  store i1 %t328, ptr %l123, !tbaa !21
  br label %bb57
bb57:
  %t329 = load i1, ptr %l123, !tbaa !21
  br i1 %t329, label %bb58, label %bb59
bb58:
  %t330 = load ptr, ptr %l1, !tbaa !29
  %t332 = getelementptr { i64, [21 x i64] }, ptr %t330, i32 0, i32 1
  %t333 = getelementptr { %"compiler/source:Span", { i64, [1 x i64] }, i32, { i64, [4 x i64] } }, ptr %t332, i32 0, i32 1
  %t334 = load { i64, [1 x i64] }, ptr %t333
  store { i64, [1 x i64] } %t334, ptr %l14
  %t336 = load ptr, ptr %l1, !tbaa !29
  %t338 = getelementptr { i64, [21 x i64] }, ptr %t336, i32 0, i32 1
  %t339 = getelementptr { %"compiler/source:Span", { i64, [1 x i64] }, i32, { i64, [4 x i64] } }, ptr %t338, i32 0, i32 2
  %t340 = load i32, ptr %t339, !range !{i32 0, i32 8}
  store i32 %t340, ptr %l15
  %t342 = load ptr, ptr %l1, !tbaa !29
  %t344 = getelementptr { i64, [21 x i64] }, ptr %t342, i32 0, i32 1
  %t345 = getelementptr { %"compiler/source:Span", { i64, [1 x i64] }, i32, { i64, [4 x i64] } }, ptr %t344, i32 0, i32 3
  %t346 = load { i64, [4 x i64] }, ptr %t345
  store { i64, [4 x i64] } %t346, ptr %l16
  br label %bb60
bb59:
  br label %bb65
bb60:
  store %olang.scope zeroinitializer, ptr %s17
  %t348 = load i32, ptr %l15, !range !{i32 0, i32 8}
  store i32 %t348, ptr %l132
  store %olang.builder { ptr null, i64 0, i64 64, ptr null, ptr null }, ptr %s18
  store ptr %s18room, ptr %s18
  call void @olang_2emir_2eHelperKind_2eRender_2ecompiler_2fmir_3aWriteKind(ptr %s18, ptr %l132, i64 0)
  br label %bb61
bb61:
  %t350 = load ptr, ptr %s18
  %t351 = getelementptr %olang.builder, ptr %s18, i32 0, i32 1
  %t352 = load i64, ptr %t351
  %t353 = call ptr @__olang_scope_alloc(ptr %s17, i64 %t352)
  call void @olang_textcopy(ptr %t353, ptr %t350, i64 %t352)
  %t354 = insertvalue { i64, ptr } undef, i64 %t352, 0
  %t355 = insertvalue { i64, ptr } %t354, ptr %t353, 1
  store { i64, ptr } %t355, ptr %l134, !tbaa !27
  %t356 = getelementptr %olang.builder, ptr %s18, i32 0, i32 3
  %t357 = load ptr, ptr %t356
  %t358 = icmp ne ptr %t357, null
  br i1 %t358, label %sbgrew.359, label %sbdone.360
sbgrew.359:
  call void @__olang_sb_done(ptr %s18)
  br label %sbdone.360
sbdone.360:
  %t361 = load { i64, ptr }, ptr %l134, !tbaa !27
  %t362 = extractvalue { i64, ptr } %t361, 0
  %t363 = extractvalue { i64, ptr } %t361, 1
  %t364 = mul i64 %t362, 1
  %t365 = call ptr @__olang_scope_alloc(ptr %s17, i64 %t364)
  call void @llvm.memcpy.p0.p0.i64(ptr %t365, ptr %t363, i64 %t364, i1 false)
  %t366 = insertvalue { i64, ptr } undef, i64 %t362, 0
  %t367 = insertvalue { i64, ptr } %t366, ptr %t365, 1
  %t369 = call { i64, ptr } @compiler_2fmir_2eshort(ptr %s17, ptr %s17, { i64, ptr } %t367)
  store { i64, ptr } %t369, ptr %l136
  br label %bb62
bb62:
  %t370 = load ptr, ptr %l0, !tbaa !29
  %t371 = load { i64, [4 x i64] }, ptr %l16
  %t374 = call { i64, ptr } @compiler_2fmir_2ecompiler_2fmir_3adumper_2eoperand(ptr %v0, ptr %s17, ptr %v3, ptr %v4, ptr %t370, { i64, [4 x i64] } %t371)
  store { i64, ptr } %t374, ptr %l139
  br label %bb63
bb63:
  %t375 = load ptr, ptr %l0, !tbaa !29
  %t376 = load { i64, [1 x i64] }, ptr %l14
  %t379 = call { i64, ptr } @compiler_2fmir_2ecompiler_2fmir_3adumper_2eref(ptr %v0, ptr %s17, ptr %t375, { i64, [1 x i64] } %t376)
  store { i64, ptr } %t379, ptr %l142
  br label %bb64
bb64:
  %t380 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d26, i32 0, i32 1) }, 1
  %t381 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d26, i32 0, i32 1) }, 0
  %t382 = load { i64, ptr }, ptr %l136, !tbaa !27
  %t383 = extractvalue { i64, ptr } %t382, 1
  %t384 = extractvalue { i64, ptr } %t382, 0
  %t385 = add i64 %t381, %t384
  %t386 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d27, i32 0, i32 1) }, 1
  %t387 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d27, i32 0, i32 1) }, 0
  %t388 = add i64 %t385, %t387
  %t389 = load { i64, ptr }, ptr %l139, !tbaa !27
  %t390 = extractvalue { i64, ptr } %t389, 1
  %t391 = extractvalue { i64, ptr } %t389, 0
  %t392 = add i64 %t388, %t391
  %t393 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d28, i32 0, i32 1) }, 1
  %t394 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d28, i32 0, i32 1) }, 0
  %t395 = add i64 %t392, %t394
  %t396 = load { i64, ptr }, ptr %l142, !tbaa !27
  %t397 = extractvalue { i64, ptr } %t396, 1
  %t398 = extractvalue { i64, ptr } %t396, 0
  %t399 = add i64 %t395, %t398
  %t400 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t399)
  call void @olang_textcopy(ptr %t400, ptr %t380, i64 %t381)
  %t401 = getelementptr i8, ptr %t400, i64 %t381
  call void @olang_textcopy(ptr %t401, ptr %t383, i64 %t384)
  %t402 = getelementptr i8, ptr %t401, i64 %t384
  call void @olang_textcopy(ptr %t402, ptr %t386, i64 %t387)
  %t403 = getelementptr i8, ptr %t402, i64 %t387
  call void @olang_textcopy(ptr %t403, ptr %t390, i64 %t391)
  %t404 = getelementptr i8, ptr %t403, i64 %t391
  call void @olang_textcopy(ptr %t404, ptr %t393, i64 %t394)
  %t405 = getelementptr i8, ptr %t404, i64 %t394
  call void @olang_textcopy(ptr %t405, ptr %t397, i64 %t398)
  %t406 = insertvalue { i64, ptr } undef, i64 %t399, 0
  %t407 = insertvalue { i64, ptr } %t406, ptr %t400, 1
  store { i64, ptr } %t407, ptr %l27, !tbaa !27
  call void @__olang_scope_close(ptr %s17)
  br label %bb119
bb65:
  %t409 = load ptr, ptr %l1, !tbaa !29
  store ptr %t409, ptr %l144, !tbaa !29
  store i1 false, ptr %l145, !tbaa !21
  %t410 = load ptr, ptr %l144, !tbaa !29
  %t411 = icmp ne ptr %t410, null
  br i1 %t411, label %bb66, label %bb67
bb66:
  %t413 = load ptr, ptr %l144, !tbaa !29
  %t414 = load i64, ptr %t413, !range !{i64 0, i64 16}
  %t416 = icmp eq i64 %t414, 9
  store i1 %t416, ptr %l145, !tbaa !21
  br label %bb67
bb67:
  %t417 = load i1, ptr %l145, !tbaa !21
  br i1 %t417, label %bb68, label %bb69
bb68:
  %t418 = load ptr, ptr %l1, !tbaa !29
  %t420 = getelementptr { i64, [21 x i64] }, ptr %t418, i32 0, i32 1
  %t421 = getelementptr { %"compiler/source:Span", %"compiler/mir:Lvalue", %"compiler/mir:Lvalue", { i64, [4 x i64] } }, ptr %t420, i32 0, i32 1
  %t422 = load %"compiler/mir:Lvalue", ptr %t421
  store %"compiler/mir:Lvalue" %t422, ptr %l17
  %t424 = load ptr, ptr %l1, !tbaa !29
  %t426 = getelementptr { i64, [21 x i64] }, ptr %t424, i32 0, i32 1
  %t427 = getelementptr { %"compiler/source:Span", %"compiler/mir:Lvalue", %"compiler/mir:Lvalue", { i64, [4 x i64] } }, ptr %t426, i32 0, i32 2
  %t428 = load %"compiler/mir:Lvalue", ptr %t427
  store %"compiler/mir:Lvalue" %t428, ptr %l18
  %t430 = load ptr, ptr %l1, !tbaa !29
  %t432 = getelementptr { i64, [21 x i64] }, ptr %t430, i32 0, i32 1
  %t433 = getelementptr { %"compiler/source:Span", %"compiler/mir:Lvalue", %"compiler/mir:Lvalue", { i64, [4 x i64] } }, ptr %t432, i32 0, i32 3
  %t434 = load { i64, [4 x i64] }, ptr %t433
  store { i64, [4 x i64] } %t434, ptr %l19
  br label %bb70
bb69:
  br label %bb74
bb70:
  store %olang.scope zeroinitializer, ptr %s20
  %t436 = load ptr, ptr %l0, !tbaa !29
  %t437 = load { i64, [4 x i64] }, ptr %l19
  %t440 = call { i64, ptr } @compiler_2fmir_2ecompiler_2fmir_3adumper_2eoperand(ptr %v0, ptr %s20, ptr %v3, ptr %v4, ptr %t436, { i64, [4 x i64] } %t437)
  store { i64, ptr } %t440, ptr %l156
  br label %bb71
bb71:
  %t441 = load ptr, ptr %l0, !tbaa !29
  %t442 = load %"compiler/mir:Lvalue", ptr %l18
  %t445 = call { i64, ptr } @compiler_2fmir_2ecompiler_2fmir_3adumper_2eplace(ptr %v0, ptr %s20, ptr %v3, ptr %t441, %"compiler/mir:Lvalue" %t442)
  store { i64, ptr } %t445, ptr %l159
  br label %bb72
bb72:
  %t446 = load ptr, ptr %l0, !tbaa !29
  %t447 = load %"compiler/mir:Lvalue", ptr %l17
  %t450 = call { i64, ptr } @compiler_2fmir_2ecompiler_2fmir_3adumper_2eplace(ptr %v0, ptr %s20, ptr %v3, ptr %t446, %"compiler/mir:Lvalue" %t447)
  store { i64, ptr } %t450, ptr %l162
  br label %bb73
bb73:
  %t451 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d29, i32 0, i32 1) }, 1
  %t452 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d29, i32 0, i32 1) }, 0
  %t453 = load { i64, ptr }, ptr %l156, !tbaa !27
  %t454 = extractvalue { i64, ptr } %t453, 1
  %t455 = extractvalue { i64, ptr } %t453, 0
  %t456 = add i64 %t452, %t455
  %t457 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d30, i32 0, i32 1) }, 1
  %t458 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d30, i32 0, i32 1) }, 0
  %t459 = add i64 %t456, %t458
  %t460 = load { i64, ptr }, ptr %l159, !tbaa !27
  %t461 = extractvalue { i64, ptr } %t460, 1
  %t462 = extractvalue { i64, ptr } %t460, 0
  %t463 = add i64 %t459, %t462
  %t464 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d31, i32 0, i32 1) }, 1
  %t465 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d31, i32 0, i32 1) }, 0
  %t466 = add i64 %t463, %t465
  %t467 = load { i64, ptr }, ptr %l162, !tbaa !27
  %t468 = extractvalue { i64, ptr } %t467, 1
  %t469 = extractvalue { i64, ptr } %t467, 0
  %t470 = add i64 %t466, %t469
  %t471 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t470)
  call void @olang_textcopy(ptr %t471, ptr %t451, i64 %t452)
  %t472 = getelementptr i8, ptr %t471, i64 %t452
  call void @olang_textcopy(ptr %t472, ptr %t454, i64 %t455)
  %t473 = getelementptr i8, ptr %t472, i64 %t455
  call void @olang_textcopy(ptr %t473, ptr %t457, i64 %t458)
  %t474 = getelementptr i8, ptr %t473, i64 %t458
  call void @olang_textcopy(ptr %t474, ptr %t461, i64 %t462)
  %t475 = getelementptr i8, ptr %t474, i64 %t462
  call void @olang_textcopy(ptr %t475, ptr %t464, i64 %t465)
  %t476 = getelementptr i8, ptr %t475, i64 %t465
  call void @olang_textcopy(ptr %t476, ptr %t468, i64 %t469)
  %t477 = insertvalue { i64, ptr } undef, i64 %t470, 0
  %t478 = insertvalue { i64, ptr } %t477, ptr %t471, 1
  store { i64, ptr } %t478, ptr %l27, !tbaa !27
  call void @__olang_scope_close(ptr %s20)
  br label %bb119
bb74:
  %t480 = load ptr, ptr %l1, !tbaa !29
  store ptr %t480, ptr %l164, !tbaa !29
  store i1 false, ptr %l165, !tbaa !21
  %t481 = load ptr, ptr %l164, !tbaa !29
  %t482 = icmp ne ptr %t481, null
  br i1 %t482, label %bb75, label %bb76
bb75:
  %t484 = load ptr, ptr %l164, !tbaa !29
  %t485 = load i64, ptr %t484, !range !{i64 0, i64 16}
  %t487 = icmp eq i64 %t485, 10
  store i1 %t487, ptr %l165, !tbaa !21
  br label %bb76
bb76:
  %t488 = load i1, ptr %l165, !tbaa !21
  br i1 %t488, label %bb77, label %bb78
bb77:
  %t489 = load ptr, ptr %l1, !tbaa !29
  %t491 = getelementptr { i64, [21 x i64] }, ptr %t489, i32 0, i32 1
  %t492 = getelementptr { %"compiler/source:Span", i32, i32 }, ptr %t491, i32 0, i32 1
  %t493 = load i32, ptr %t492
  store i32 %t493, ptr %l20, !tbaa !23
  %t495 = load ptr, ptr %l1, !tbaa !29
  %t497 = getelementptr { i64, [21 x i64] }, ptr %t495, i32 0, i32 1
  %t498 = getelementptr { %"compiler/source:Span", i32, i32 }, ptr %t497, i32 0, i32 2
  %t499 = load i32, ptr %t498
  store i32 %t499, ptr %l21, !tbaa !23
  br label %bb79
bb78:
  br label %bb82
bb79:
  store %olang.scope zeroinitializer, ptr %s22
  %t501 = load i32, ptr %l20, !tbaa !23
  store i32 %t501, ptr %l172, !tbaa !23
  %t502 = load ptr, ptr %l0, !tbaa !29
  store ptr %t502, ptr %l173, !tbaa !29
  %t503 = load ptr, ptr %l0, !tbaa !29
  %t505 = getelementptr %"compiler/mir:dumper", ptr %t503, i32 0, i32 0
  %t506 = load ptr, ptr %t505, !tbaa !29
  %t508 = getelementptr %"compiler/mir:Fn", ptr %t506, i32 0, i32 16
  store ptr %t508, ptr %l176, !tbaa !29
  %t509 = load i32, ptr %l21, !tbaa !23
  %t511 = sext i32 %t509 to i64
  %t512 = load ptr, ptr %l176, !tbaa !29
  %t513 = call ptr @__olang_scope_or(ptr %v3, ptr %t512)
  %t514 = ptrtoint ptr %t513 to i64
  %t516 = inttoptr i64 %t514 to ptr
  %t517 = load ptr, ptr %l176, !tbaa !29
  %t519 = call %"compiler/mir:Task" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aTask_3e_2eAt_3ccompiler_2fmir_3aTask_3e(ptr %t516, ptr %t517, i64 %t511)
  store %"compiler/mir:Task" %t519, ptr %l180
  br label %bb80
bb80:
  %t520 = load ptr, ptr %l173, !tbaa !29
  %t521 = load %"compiler/mir:Task", ptr %l180
  %t522 = call { i64, ptr } @compiler_2fmir_2ecompiler_2fmir_3adumper_2etask(ptr %v0, ptr %s22, ptr %v3, ptr %v4, ptr %t520, %"compiler/mir:Task" %t521)
  store { i64, ptr } %t522, ptr %l181
  br label %bb81
bb81:
  %t523 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d32, i32 0, i32 1) }, 1
  %t524 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d32, i32 0, i32 1) }, 0
  %t525 = load i32, ptr %l172, !tbaa !23
  %t526 = sext i32 %t525 to i64
  %t527 = call i64 @__olang_fmt_i64(ptr null, i64 %t526)
  %t528 = add i64 %t524, %t527
  %t529 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d33, i32 0, i32 1) }, 1
  %t530 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d33, i32 0, i32 1) }, 0
  %t531 = add i64 %t528, %t530
  %t532 = load { i64, ptr }, ptr %l181, !tbaa !27
  %t533 = extractvalue { i64, ptr } %t532, 1
  %t534 = extractvalue { i64, ptr } %t532, 0
  %t535 = add i64 %t531, %t534
  %t536 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t535)
  call void @olang_textcopy(ptr %t536, ptr %t523, i64 %t524)
  %t537 = getelementptr i8, ptr %t536, i64 %t524
  %t538 = call i64 @__olang_fmt_i64(ptr %t537, i64 %t526)
  %t539 = getelementptr i8, ptr %t537, i64 %t527
  call void @olang_textcopy(ptr %t539, ptr %t529, i64 %t530)
  %t540 = getelementptr i8, ptr %t539, i64 %t530
  call void @olang_textcopy(ptr %t540, ptr %t533, i64 %t534)
  %t541 = insertvalue { i64, ptr } undef, i64 %t535, 0
  %t542 = insertvalue { i64, ptr } %t541, ptr %t536, 1
  store { i64, ptr } %t542, ptr %l27, !tbaa !27
  call void @__olang_scope_close(ptr %s22)
  br label %bb119
bb82:
  %t544 = load ptr, ptr %l1, !tbaa !29
  store ptr %t544, ptr %l183, !tbaa !29
  store i1 false, ptr %l184, !tbaa !21
  %t545 = load ptr, ptr %l183, !tbaa !29
  %t546 = icmp ne ptr %t545, null
  br i1 %t546, label %bb83, label %bb84
bb83:
  %t548 = load ptr, ptr %l183, !tbaa !29
  %t549 = load i64, ptr %t548, !range !{i64 0, i64 16}
  %t551 = icmp eq i64 %t549, 11
  store i1 %t551, ptr %l184, !tbaa !21
  br label %bb84
bb84:
  %t552 = load i1, ptr %l184, !tbaa !21
  br i1 %t552, label %bb85, label %bb86
bb85:
  br label %bb87
bb86:
  br label %bb88
bb87:
  store { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d34, i32 0, i32 1) }, ptr %l187, !tbaa !27
  %t553 = load { i64, ptr }, ptr %l187, !tbaa !27
  store { i64, ptr } %t553, ptr %l27, !tbaa !27
  br label %bb119
bb88:
  %t555 = load ptr, ptr %l1, !tbaa !29
  store ptr %t555, ptr %l189, !tbaa !29
  store i1 false, ptr %l190, !tbaa !21
  %t556 = load ptr, ptr %l189, !tbaa !29
  %t557 = icmp ne ptr %t556, null
  br i1 %t557, label %bb89, label %bb90
bb89:
  %t559 = load ptr, ptr %l189, !tbaa !29
  %t560 = load i64, ptr %t559, !range !{i64 0, i64 16}
  %t562 = icmp eq i64 %t560, 12
  store i1 %t562, ptr %l190, !tbaa !21
  br label %bb90
bb90:
  %t563 = load i1, ptr %l190, !tbaa !21
  br i1 %t563, label %bb91, label %bb92
bb91:
  %t564 = load ptr, ptr %l1, !tbaa !29
  %t566 = getelementptr { i64, [21 x i64] }, ptr %t564, i32 0, i32 1
  %t567 = getelementptr { %"compiler/source:Span", { i64, [4 x i64] } }, ptr %t566, i32 0, i32 1
  %t568 = load { i64, [4 x i64] }, ptr %t567
  store { i64, [4 x i64] } %t568, ptr %l22
  br label %bb93
bb92:
  br label %bb95
bb93:
  store %olang.scope zeroinitializer, ptr %s25
  %t570 = load ptr, ptr %l0, !tbaa !29
  %t571 = load { i64, [4 x i64] }, ptr %l22
  %t574 = call { i64, ptr } @compiler_2fmir_2ecompiler_2fmir_3adumper_2eoperand(ptr %v0, ptr %s25, ptr %v3, ptr %v4, ptr %t570, { i64, [4 x i64] } %t571)
  store { i64, ptr } %t574, ptr %l197
  br label %bb94
bb94:
  %t575 = extractvalue { i64, ptr } { i64 12, ptr getelementptr inbounds (<{ i64, [12 x i8] }>, ptr @.d35, i32 0, i32 1) }, 1
  %t576 = extractvalue { i64, ptr } { i64 12, ptr getelementptr inbounds (<{ i64, [12 x i8] }>, ptr @.d35, i32 0, i32 1) }, 0
  %t577 = load { i64, ptr }, ptr %l197, !tbaa !27
  %t578 = extractvalue { i64, ptr } %t577, 1
  %t579 = extractvalue { i64, ptr } %t577, 0
  %t580 = add i64 %t576, %t579
  %t581 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t580)
  call void @olang_textcopy(ptr %t581, ptr %t575, i64 %t576)
  %t582 = getelementptr i8, ptr %t581, i64 %t576
  call void @olang_textcopy(ptr %t582, ptr %t578, i64 %t579)
  %t583 = insertvalue { i64, ptr } undef, i64 %t580, 0
  %t584 = insertvalue { i64, ptr } %t583, ptr %t581, 1
  store { i64, ptr } %t584, ptr %l27, !tbaa !27
  call void @__olang_scope_close(ptr %s25)
  br label %bb119
bb95:
  %t586 = load ptr, ptr %l1, !tbaa !29
  store ptr %t586, ptr %l199, !tbaa !29
  store i1 false, ptr %l200, !tbaa !21
  %t587 = load ptr, ptr %l199, !tbaa !29
  %t588 = icmp ne ptr %t587, null
  br i1 %t588, label %bb96, label %bb97
bb96:
  %t590 = load ptr, ptr %l199, !tbaa !29
  %t591 = load i64, ptr %t590, !range !{i64 0, i64 16}
  %t593 = icmp eq i64 %t591, 13
  store i1 %t593, ptr %l200, !tbaa !21
  br label %bb97
bb97:
  %t594 = load i1, ptr %l200, !tbaa !21
  br i1 %t594, label %bb98, label %bb99
bb98:
  br label %bb100
bb99:
  br label %bb101
bb100:
  store { i64, ptr } { i64 11, ptr getelementptr inbounds (<{ i64, [11 x i8] }>, ptr @.d36, i32 0, i32 1) }, ptr %l203, !tbaa !27
  %t595 = load { i64, ptr }, ptr %l203, !tbaa !27
  store { i64, ptr } %t595, ptr %l27, !tbaa !27
  br label %bb119
bb101:
  %t597 = load ptr, ptr %l1, !tbaa !29
  store ptr %t597, ptr %l205, !tbaa !29
  store i1 false, ptr %l206, !tbaa !21
  %t598 = load ptr, ptr %l205, !tbaa !29
  %t599 = icmp ne ptr %t598, null
  br i1 %t599, label %bb102, label %bb103
bb102:
  %t601 = load ptr, ptr %l205, !tbaa !29
  %t602 = load i64, ptr %t601, !range !{i64 0, i64 16}
  %t604 = icmp eq i64 %t602, 14
  store i1 %t604, ptr %l206, !tbaa !21
  br label %bb103
bb103:
  %t605 = load i1, ptr %l206, !tbaa !21
  br i1 %t605, label %bb104, label %bb105
bb104:
  %t606 = load ptr, ptr %l1, !tbaa !29
  %t608 = getelementptr { i64, [21 x i64] }, ptr %t606, i32 0, i32 1
  %t609 = getelementptr { %"compiler/source:Span", { i64, [4 x i64] }, { i64, [4 x i64] } }, ptr %t608, i32 0, i32 1
  %t610 = load { i64, [4 x i64] }, ptr %t609
  store { i64, [4 x i64] } %t610, ptr %l23
  %t612 = load ptr, ptr %l1, !tbaa !29
  %t614 = getelementptr { i64, [21 x i64] }, ptr %t612, i32 0, i32 1
  %t615 = getelementptr { %"compiler/source:Span", { i64, [4 x i64] }, { i64, [4 x i64] } }, ptr %t614, i32 0, i32 2
  %t616 = load { i64, [4 x i64] }, ptr %t615
  store { i64, [4 x i64] } %t616, ptr %l24
  br label %bb106
bb105:
  br label %bb109
bb106:
  store %olang.scope zeroinitializer, ptr %s28
  %t618 = load ptr, ptr %l0, !tbaa !29
  %t619 = load { i64, [4 x i64] }, ptr %l23
  %t622 = call { i64, ptr } @compiler_2fmir_2ecompiler_2fmir_3adumper_2eoperand(ptr %v0, ptr %s28, ptr %v3, ptr %v4, ptr %t618, { i64, [4 x i64] } %t619)
  store { i64, ptr } %t622, ptr %l215
  br label %bb107
bb107:
  %t623 = load ptr, ptr %l0, !tbaa !29
  %t624 = load { i64, [4 x i64] }, ptr %l24
  %t627 = call { i64, ptr } @compiler_2fmir_2ecompiler_2fmir_3adumper_2eoperand(ptr %v0, ptr %s28, ptr %v3, ptr %v4, ptr %t623, { i64, [4 x i64] } %t624)
  store { i64, ptr } %t627, ptr %l218
  br label %bb108
bb108:
  %t628 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d37, i32 0, i32 1) }, 1
  %t629 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d37, i32 0, i32 1) }, 0
  %t630 = load { i64, ptr }, ptr %l215, !tbaa !27
  %t631 = extractvalue { i64, ptr } %t630, 1
  %t632 = extractvalue { i64, ptr } %t630, 0
  %t633 = add i64 %t629, %t632
  %t634 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d38, i32 0, i32 1) }, 1
  %t635 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d38, i32 0, i32 1) }, 0
  %t636 = add i64 %t633, %t635
  %t637 = load { i64, ptr }, ptr %l218, !tbaa !27
  %t638 = extractvalue { i64, ptr } %t637, 1
  %t639 = extractvalue { i64, ptr } %t637, 0
  %t640 = add i64 %t636, %t639
  %t641 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t640)
  call void @olang_textcopy(ptr %t641, ptr %t628, i64 %t629)
  %t642 = getelementptr i8, ptr %t641, i64 %t629
  call void @olang_textcopy(ptr %t642, ptr %t631, i64 %t632)
  %t643 = getelementptr i8, ptr %t642, i64 %t632
  call void @olang_textcopy(ptr %t643, ptr %t634, i64 %t635)
  %t644 = getelementptr i8, ptr %t643, i64 %t635
  call void @olang_textcopy(ptr %t644, ptr %t638, i64 %t639)
  %t645 = insertvalue { i64, ptr } undef, i64 %t640, 0
  %t646 = insertvalue { i64, ptr } %t645, ptr %t641, 1
  store { i64, ptr } %t646, ptr %l27, !tbaa !27
  call void @__olang_scope_close(ptr %s28)
  br label %bb119
bb109:
  %t648 = load ptr, ptr %l1, !tbaa !29
  store ptr %t648, ptr %l220, !tbaa !29
  store i1 false, ptr %l221, !tbaa !21
  %t649 = load ptr, ptr %l220, !tbaa !29
  %t650 = icmp ne ptr %t649, null
  br i1 %t650, label %bb110, label %bb111
bb110:
  %t652 = load ptr, ptr %l220, !tbaa !29
  %t653 = load i64, ptr %t652, !range !{i64 0, i64 16}
  %t655 = icmp eq i64 %t653, 15
  store i1 %t655, ptr %l221, !tbaa !21
  br label %bb111
bb111:
  %t656 = load i1, ptr %l221, !tbaa !21
  br i1 %t656, label %bb112, label %bb113
bb112:
  %t657 = load ptr, ptr %l1, !tbaa !29
  %t659 = getelementptr { i64, [21 x i64] }, ptr %t657, i32 0, i32 1
  %t660 = getelementptr { %"compiler/source:Span", i32, i32 }, ptr %t659, i32 0, i32 1
  %t661 = load i32, ptr %t660
  store i32 %t661, ptr %l25, !tbaa !23
  %t663 = load ptr, ptr %l1, !tbaa !29
  %t665 = getelementptr { i64, [21 x i64] }, ptr %t663, i32 0, i32 1
  %t666 = getelementptr { %"compiler/source:Span", i32, i32 }, ptr %t665, i32 0, i32 2
  %t667 = load i32, ptr %t666
  store i32 %t667, ptr %l26, !tbaa !23
  br label %bb114
bb113:
  br label %bb118
bb114:
  store %olang.scope zeroinitializer, ptr %s30
  %t669 = load i32, ptr %l25, !tbaa !23
  store i32 %t669, ptr %l228, !tbaa !23
  %t670 = load i32, ptr %l26, !tbaa !23
  %t671 = load i32, ptr @G_2ecompiler_2fmir_2eNoBlock, !tbaa !23
  %t674 = icmp ne i32 %t670, %t671
  br i1 %t674, label %bb115, label %bb116
bb115:
  %t676 = load i32, ptr %l26, !tbaa !23
  %t677 = extractvalue { i64, ptr } { i64 11, ptr getelementptr inbounds (<{ i64, [11 x i8] }>, ptr @.d39, i32 0, i32 1) }, 1
  %t678 = extractvalue { i64, ptr } { i64 11, ptr getelementptr inbounds (<{ i64, [11 x i8] }>, ptr @.d39, i32 0, i32 1) }, 0
  %t680 = sext i32 %t676 to i64
  %t681 = call i64 @__olang_fmt_i64(ptr null, i64 %t680)
  %t682 = add i64 %t678, %t681
  %t683 = call ptr @__olang_scope_alloc(ptr %s30, i64 %t682)
  call void @olang_textcopy(ptr %t683, ptr %t677, i64 %t678)
  %t684 = getelementptr i8, ptr %t683, i64 %t678
  %t685 = call i64 @__olang_fmt_i64(ptr %t684, i64 %t680)
  %t686 = insertvalue { i64, ptr } undef, i64 %t682, 0
  %t687 = insertvalue { i64, ptr } %t686, ptr %t683, 1
  %t689 = extractvalue { i64, ptr } %t687, 0
  %t690 = extractvalue { i64, ptr } %t687, 1
  %t691 = mul i64 %t689, 1
  %t692 = call ptr @__olang_scope_alloc(ptr %s30, i64 %t691)
  call void @llvm.memcpy.p0.p0.i64(ptr %t692, ptr %t690, i64 %t691, i1 false)
  %t693 = insertvalue { i64, ptr } undef, i64 %t689, 0
  %t694 = insertvalue { i64, ptr } %t693, ptr %t692, 1
  store { i64, ptr } %t694, ptr %l232, !tbaa !27
  br label %bb117
bb116:
  store { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d40, i32 0, i32 1) }, ptr %l232, !tbaa !27
  br label %bb117
bb117:
  %t696 = extractvalue { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d41, i32 0, i32 1) }, 1
  %t697 = extractvalue { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d41, i32 0, i32 1) }, 0
  %t698 = load i32, ptr %l228, !tbaa !23
  %t699 = sext i32 %t698 to i64
  %t700 = call i64 @__olang_fmt_i64(ptr null, i64 %t699)
  %t701 = add i64 %t697, %t700
  %t702 = load { i64, ptr }, ptr %l232, !tbaa !27
  %t703 = extractvalue { i64, ptr } %t702, 1
  %t704 = extractvalue { i64, ptr } %t702, 0
  %t705 = add i64 %t701, %t704
  %t706 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t705)
  call void @olang_textcopy(ptr %t706, ptr %t696, i64 %t697)
  %t707 = getelementptr i8, ptr %t706, i64 %t697
  %t708 = call i64 @__olang_fmt_i64(ptr %t707, i64 %t699)
  %t709 = getelementptr i8, ptr %t707, i64 %t700
  call void @olang_textcopy(ptr %t709, ptr %t703, i64 %t704)
  %t710 = insertvalue { i64, ptr } undef, i64 %t705, 0
  %t711 = insertvalue { i64, ptr } %t710, ptr %t706, 1
  store { i64, ptr } %t711, ptr %l27, !tbaa !27
  call void @__olang_scope_close(ptr %s30)
  br label %bb119
bb118:
  call void @__olang_check_failed(ptr @olang_loc_63d4bc85d5a0ee63_941776bd89ba250f)
  unreachable
bb119:
  %t713 = load { i64, ptr }, ptr %l27, !tbaa !27
  %t714 = extractvalue { i64, ptr } %t713, 0
  store i64 %t714, ptr %l237, !tbaa !24
  %t715 = load i64, ptr %l237, !tbaa !24
  %t716 = mul i64 %t715, 1
  %t717 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t716)
  %t718 = insertvalue { i64, ptr } undef, i64 %t715, 0
  %t719 = insertvalue { i64, ptr } %t718, ptr %t717, 1
  store { i64, ptr } %t719, ptr %l238, !tbaa !27
  %t720 = getelementptr { i64, ptr }, ptr %l238, i32 0, i32 1
  %t721 = load ptr, ptr %t720, !tbaa !27
  %t722 = getelementptr { i64, ptr }, ptr %l27, i32 0, i32 1
  %t723 = load ptr, ptr %t722, !tbaa !27
  %t724 = load i64, ptr %l237, !tbaa !24
  %t725 = mul i64 %t724, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t721, ptr %t723, i64 %t725, i1 false)
  %t726 = load { i64, ptr }, ptr %l238, !tbaa !27
  store { i64, ptr } %t726, ptr %l27, !tbaa !27
  %t727 = load { i64, ptr }, ptr %l27, !tbaa !27
  store { i64, ptr } %t727, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local { i64, ptr } @compiler_2fmir_2ecompiler_2fmir_3adumper_2eterm(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, { i64, [8 x i64] } %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca { i64, [8 x i64] }
  %l2 = alloca ptr
  %l3 = alloca i32
  %l4 = alloca { i64, [4 x i64] }
  %l5 = alloca i32
  %l6 = alloca i32
  %l7 = alloca { i64, [4 x i64] }
  %l8 = alloca %"compiler/mir:Range"
  %l9 = alloca i32
  %l10 = alloca i32
  %l11 = alloca i32
  %l12 = alloca { i64, [4 x i64] }
  %l13 = alloca { i64, [4 x i64] }
  %l14 = alloca { i64, [4 x i64] }
  %l15 = alloca i32
  %l16 = alloca %"compiler/mir:Range"
  %l17 = alloca i32
  %l18 = alloca i32
  %l19 = alloca i32
  %l20 = alloca i32
  %l21 = alloca i32
  %l22 = alloca i32
  %l23 = alloca { i64, [4 x i64] }
  %l26 = alloca { i64, ptr }
  %l29 = alloca { i64, ptr }
  %l43 = alloca { i64, ptr }
  %l54 = alloca { i64, ptr }
  %l57 = alloca { i64, ptr }
  %l63 = alloca ptr
  %l65 = alloca ptr
  %l69 = alloca %"compiler/mir:Call"
  %l70 = alloca { i64, ptr }
  %l74 = alloca ptr
  %l76 = alloca ptr
  %l80 = alloca %"compiler/mir:Call"
  %l81 = alloca { i64, ptr }
  %l89 = alloca { i64, ptr }
  %l92 = alloca { i64, ptr }
  %l101 = alloca { i64, ptr }
  %l111 = alloca { i64, ptr }
  %l118 = alloca { i64, ptr }
  %l126 = alloca i32
  %l127 = alloca i32
  %l131 = alloca { i64, ptr }
  %l141 = alloca i32
  %l143 = alloca { i64, ptr }
  %l145 = alloca { i64, ptr }
  %l149 = alloca { i64, ptr }
  %l152 = alloca { i64, ptr }
  %l158 = alloca { i64, ptr }
  %l160 = alloca i64
  %l161 = alloca { i64, ptr }
  %s4 = alloca %olang.scope
  %s6 = alloca %olang.scope
  %s9 = alloca %olang.scope
  %s11 = alloca %olang.scope
  %s14 = alloca %olang.scope
  %s16 = alloca %olang.scope
  %s19 = alloca %olang.scope
  %s22 = alloca %olang.scope
  %s23 = alloca %olang.builder
  %s23room = alloca [64 x i8], align 8
  %rv = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  store { i64, [8 x i64] } %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/mir:dumper", ptr %t1, i32 0, i32 0
  %t4 = load ptr, ptr %t3, !tbaa !29
  store ptr %t4, ptr %l2, !tbaa !29
  %t6 = load { i64, [8 x i64] }, ptr %l1
  %t8 = extractvalue { i64, [8 x i64] } %t6, 0
  %t9 = icmp eq i64 %t8, 0
  br i1 %t9, label %bb1, label %bb2
bb1:
  br label %bb3
bb2:
  br label %bb4
bb3:
  store { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d42, i32 0, i32 1) }, ptr %l29, !tbaa !27
  %t11 = load { i64, ptr }, ptr %l29, !tbaa !27
  store { i64, ptr } %t11, ptr %l26, !tbaa !27
  br label %bb75
bb4:
  %t13 = load { i64, [8 x i64] }, ptr %l1
  %t15 = extractvalue { i64, [8 x i64] } %t13, 0
  %t16 = icmp eq i64 %t15, 1
  br i1 %t16, label %bb5, label %bb6
bb5:
  %t18 = getelementptr { i64, [8 x i64] }, ptr %l1, i32 0, i32 1
  %t19 = getelementptr { i32 }, ptr %t18, i32 0, i32 0
  %t20 = load i32, ptr %t19
  store i32 %t20, ptr %l3, !tbaa !23
  br label %bb7
bb6:
  br label %bb8
bb7:
  %t22 = load i32, ptr %l3, !tbaa !23
  %t23 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d43, i32 0, i32 1) }, 1
  %t24 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d43, i32 0, i32 1) }, 0
  %t26 = sext i32 %t22 to i64
  %t27 = call i64 @__olang_fmt_i64(ptr null, i64 %t26)
  %t28 = add i64 %t24, %t27
  %t29 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t28)
  call void @olang_textcopy(ptr %t29, ptr %t23, i64 %t24)
  %t30 = getelementptr i8, ptr %t29, i64 %t24
  %t31 = call i64 @__olang_fmt_i64(ptr %t30, i64 %t26)
  %t32 = insertvalue { i64, ptr } undef, i64 %t28, 0
  %t33 = insertvalue { i64, ptr } %t32, ptr %t29, 1
  store { i64, ptr } %t33, ptr %l26, !tbaa !27
  br label %bb75
bb8:
  %t35 = load { i64, [8 x i64] }, ptr %l1
  %t37 = extractvalue { i64, [8 x i64] } %t35, 0
  %t38 = icmp eq i64 %t37, 2
  br i1 %t38, label %bb9, label %bb10
bb9:
  %t40 = getelementptr { i64, [8 x i64] }, ptr %l1, i32 0, i32 1
  %t41 = getelementptr { { i64, [4 x i64] }, i32, i32 }, ptr %t40, i32 0, i32 0
  %t42 = load { i64, [4 x i64] }, ptr %t41
  store { i64, [4 x i64] } %t42, ptr %l4
  %t44 = getelementptr { i64, [8 x i64] }, ptr %l1, i32 0, i32 1
  %t45 = getelementptr { { i64, [4 x i64] }, i32, i32 }, ptr %t44, i32 0, i32 1
  %t46 = load i32, ptr %t45
  store i32 %t46, ptr %l5, !tbaa !23
  %t48 = getelementptr { i64, [8 x i64] }, ptr %l1, i32 0, i32 1
  %t49 = getelementptr { { i64, [4 x i64] }, i32, i32 }, ptr %t48, i32 0, i32 2
  %t50 = load i32, ptr %t49
  store i32 %t50, ptr %l6, !tbaa !23
  br label %bb11
bb10:
  br label %bb13
bb11:
  store %olang.scope zeroinitializer, ptr %s4
  %t52 = load ptr, ptr %l0, !tbaa !29
  %t53 = load { i64, [4 x i64] }, ptr %l4
  %t56 = call { i64, ptr } @compiler_2fmir_2ecompiler_2fmir_3adumper_2eoperand(ptr %v0, ptr %s4, ptr %v2, ptr %v3, ptr %t52, { i64, [4 x i64] } %t53)
  store { i64, ptr } %t56, ptr %l43
  br label %bb12
bb12:
  %t57 = load i32, ptr %l5, !tbaa !23
  %t58 = load i32, ptr %l6, !tbaa !23
  %t59 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d44, i32 0, i32 1) }, 1
  %t60 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d44, i32 0, i32 1) }, 0
  %t61 = load { i64, ptr }, ptr %l43, !tbaa !27
  %t62 = extractvalue { i64, ptr } %t61, 1
  %t63 = extractvalue { i64, ptr } %t61, 0
  %t64 = add i64 %t60, %t63
  %t65 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d45, i32 0, i32 1) }, 1
  %t66 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d45, i32 0, i32 1) }, 0
  %t67 = add i64 %t64, %t66
  %t69 = sext i32 %t57 to i64
  %t70 = call i64 @__olang_fmt_i64(ptr null, i64 %t69)
  %t71 = add i64 %t67, %t70
  %t72 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d45, i32 0, i32 1) }, 1
  %t73 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d45, i32 0, i32 1) }, 0
  %t74 = add i64 %t71, %t73
  %t76 = sext i32 %t58 to i64
  %t77 = call i64 @__olang_fmt_i64(ptr null, i64 %t76)
  %t78 = add i64 %t74, %t77
  %t79 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t78)
  call void @olang_textcopy(ptr %t79, ptr %t59, i64 %t60)
  %t80 = getelementptr i8, ptr %t79, i64 %t60
  call void @olang_textcopy(ptr %t80, ptr %t62, i64 %t63)
  %t81 = getelementptr i8, ptr %t80, i64 %t63
  call void @olang_textcopy(ptr %t81, ptr %t65, i64 %t66)
  %t82 = getelementptr i8, ptr %t81, i64 %t66
  %t83 = call i64 @__olang_fmt_i64(ptr %t82, i64 %t69)
  %t84 = getelementptr i8, ptr %t82, i64 %t70
  call void @olang_textcopy(ptr %t84, ptr %t72, i64 %t73)
  %t85 = getelementptr i8, ptr %t84, i64 %t73
  %t86 = call i64 @__olang_fmt_i64(ptr %t85, i64 %t76)
  %t87 = insertvalue { i64, ptr } undef, i64 %t78, 0
  %t88 = insertvalue { i64, ptr } %t87, ptr %t79, 1
  store { i64, ptr } %t88, ptr %l26, !tbaa !27
  call void @__olang_scope_close(ptr %s4)
  br label %bb75
bb13:
  %t90 = load { i64, [8 x i64] }, ptr %l1
  %t92 = extractvalue { i64, [8 x i64] } %t90, 0
  %t93 = icmp eq i64 %t92, 3
  br i1 %t93, label %bb14, label %bb15
bb14:
  %t95 = getelementptr { i64, [8 x i64] }, ptr %l1, i32 0, i32 1
  %t96 = getelementptr { { i64, [4 x i64] }, %"compiler/mir:Range", i32 }, ptr %t95, i32 0, i32 0
  %t97 = load { i64, [4 x i64] }, ptr %t96
  store { i64, [4 x i64] } %t97, ptr %l7
  %t99 = getelementptr { i64, [8 x i64] }, ptr %l1, i32 0, i32 1
  %t100 = getelementptr { { i64, [4 x i64] }, %"compiler/mir:Range", i32 }, ptr %t99, i32 0, i32 1
  %t101 = load %"compiler/mir:Range", ptr %t100
  store %"compiler/mir:Range" %t101, ptr %l8
  %t103 = getelementptr { i64, [8 x i64] }, ptr %l1, i32 0, i32 1
  %t104 = getelementptr { { i64, [4 x i64] }, %"compiler/mir:Range", i32 }, ptr %t103, i32 0, i32 2
  %t105 = load i32, ptr %t104
  store i32 %t105, ptr %l9, !tbaa !23
  br label %bb16
bb15:
  br label %bb19
bb16:
  store %olang.scope zeroinitializer, ptr %s6
  %t107 = load ptr, ptr %l0, !tbaa !29
  %t108 = load { i64, [4 x i64] }, ptr %l7
  %t111 = call { i64, ptr } @compiler_2fmir_2ecompiler_2fmir_3adumper_2eoperand(ptr %v0, ptr %s6, ptr %v2, ptr %v3, ptr %t107, { i64, [4 x i64] } %t108)
  store { i64, ptr } %t111, ptr %l54
  br label %bb17
bb17:
  %t112 = load ptr, ptr %l0, !tbaa !29
  %t113 = load %"compiler/mir:Range", ptr %l8
  %t116 = call { i64, ptr } @compiler_2fmir_2ecompiler_2fmir_3adumper_2ecases(ptr %v0, ptr %s6, ptr %v2, ptr %t112, %"compiler/mir:Range" %t113)
  store { i64, ptr } %t116, ptr %l57
  br label %bb18
bb18:
  %t117 = load i32, ptr %l9, !tbaa !23
  %t118 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d46, i32 0, i32 1) }, 1
  %t119 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d46, i32 0, i32 1) }, 0
  %t120 = load { i64, ptr }, ptr %l54, !tbaa !27
  %t121 = extractvalue { i64, ptr } %t120, 1
  %t122 = extractvalue { i64, ptr } %t120, 0
  %t123 = add i64 %t119, %t122
  %t124 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d47, i32 0, i32 1) }, 1
  %t125 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d47, i32 0, i32 1) }, 0
  %t126 = add i64 %t123, %t125
  %t127 = load { i64, ptr }, ptr %l57, !tbaa !27
  %t128 = extractvalue { i64, ptr } %t127, 1
  %t129 = extractvalue { i64, ptr } %t127, 0
  %t130 = add i64 %t126, %t129
  %t131 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d48, i32 0, i32 1) }, 1
  %t132 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d48, i32 0, i32 1) }, 0
  %t133 = add i64 %t130, %t132
  %t135 = sext i32 %t117 to i64
  %t136 = call i64 @__olang_fmt_i64(ptr null, i64 %t135)
  %t137 = add i64 %t133, %t136
  %t138 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t137)
  call void @olang_textcopy(ptr %t138, ptr %t118, i64 %t119)
  %t139 = getelementptr i8, ptr %t138, i64 %t119
  call void @olang_textcopy(ptr %t139, ptr %t121, i64 %t122)
  %t140 = getelementptr i8, ptr %t139, i64 %t122
  call void @olang_textcopy(ptr %t140, ptr %t124, i64 %t125)
  %t141 = getelementptr i8, ptr %t140, i64 %t125
  call void @olang_textcopy(ptr %t141, ptr %t128, i64 %t129)
  %t142 = getelementptr i8, ptr %t141, i64 %t129
  call void @olang_textcopy(ptr %t142, ptr %t131, i64 %t132)
  %t143 = getelementptr i8, ptr %t142, i64 %t132
  %t144 = call i64 @__olang_fmt_i64(ptr %t143, i64 %t135)
  %t145 = insertvalue { i64, ptr } undef, i64 %t137, 0
  %t146 = insertvalue { i64, ptr } %t145, ptr %t138, 1
  store { i64, ptr } %t146, ptr %l26, !tbaa !27
  call void @__olang_scope_close(ptr %s6)
  br label %bb75
bb19:
  %t148 = load { i64, [8 x i64] }, ptr %l1
  %t150 = extractvalue { i64, [8 x i64] } %t148, 0
  %t151 = icmp eq i64 %t150, 4
  br i1 %t151, label %bb20, label %bb21
bb20:
  %t153 = getelementptr { i64, [8 x i64] }, ptr %l1, i32 0, i32 1
  %t154 = getelementptr { %"compiler/source:Span", i32 }, ptr %t153, i32 0, i32 1
  %t155 = load i32, ptr %t154
  store i32 %t155, ptr %l10, !tbaa !23
  br label %bb22
bb21:
  br label %bb25
bb22:
  %t157 = load ptr, ptr %l0, !tbaa !29
  store ptr %t157, ptr %l63, !tbaa !29
  %t158 = load ptr, ptr %l2, !tbaa !29
  %t160 = getelementptr %"compiler/mir:Fn", ptr %t158, i32 0, i32 14
  store ptr %t160, ptr %l65, !tbaa !29
  %t161 = load i32, ptr %l10, !tbaa !23
  %t163 = sext i32 %t161 to i64
  %t164 = load ptr, ptr %l65, !tbaa !29
  %t165 = call ptr @__olang_scope_or(ptr %v2, ptr %t164)
  %t166 = ptrtoint ptr %t165 to i64
  %t168 = inttoptr i64 %t166 to ptr
  %t169 = load ptr, ptr %l65, !tbaa !29
  %t171 = call %"compiler/mir:Call" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aCall_3e_2eAt_3ccompiler_2fmir_3aCall_3e(ptr %t168, ptr %t169, i64 %t163)
  store %"compiler/mir:Call" %t171, ptr %l69
  br label %bb23
bb23:
  %t172 = load ptr, ptr %l63, !tbaa !29
  %t173 = load %"compiler/mir:Call", ptr %l69
  %t174 = call { i64, ptr } @compiler_2fmir_2ecompiler_2fmir_3adumper_2ecall(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %t172, %"compiler/mir:Call" %t173)
  store { i64, ptr } %t174, ptr %l70
  br label %bb24
bb24:
  %t175 = load { i64, ptr }, ptr %l70, !tbaa !27
  store { i64, ptr } %t175, ptr %l26, !tbaa !27
  br label %bb75
bb25:
  %t176 = load { i64, [8 x i64] }, ptr %l1
  %t178 = extractvalue { i64, [8 x i64] } %t176, 0
  %t179 = icmp eq i64 %t178, 6
  br i1 %t179, label %bb26, label %bb27
bb26:
  %t181 = getelementptr { i64, [8 x i64] }, ptr %l1, i32 0, i32 1
  %t182 = getelementptr { %"compiler/source:Span", i32 }, ptr %t181, i32 0, i32 1
  %t183 = load i32, ptr %t182
  store i32 %t183, ptr %l11, !tbaa !23
  br label %bb28
bb27:
  br label %bb31
bb28:
  store %olang.scope zeroinitializer, ptr %s9
  %t185 = load ptr, ptr %l0, !tbaa !29
  store ptr %t185, ptr %l74, !tbaa !29
  %t186 = load ptr, ptr %l2, !tbaa !29
  %t188 = getelementptr %"compiler/mir:Fn", ptr %t186, i32 0, i32 14
  store ptr %t188, ptr %l76, !tbaa !29
  %t189 = load i32, ptr %l11, !tbaa !23
  %t191 = sext i32 %t189 to i64
  %t192 = load ptr, ptr %l76, !tbaa !29
  %t193 = call ptr @__olang_scope_or(ptr %v2, ptr %t192)
  %t194 = ptrtoint ptr %t193 to i64
  %t196 = inttoptr i64 %t194 to ptr
  %t197 = load ptr, ptr %l76, !tbaa !29
  %t199 = call %"compiler/mir:Call" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aCall_3e_2eAt_3ccompiler_2fmir_3aCall_3e(ptr %t196, ptr %t197, i64 %t191)
  store %"compiler/mir:Call" %t199, ptr %l80
  br label %bb29
bb29:
  %t200 = load ptr, ptr %l74, !tbaa !29
  %t201 = load %"compiler/mir:Call", ptr %l80
  %t202 = call { i64, ptr } @compiler_2fmir_2ecompiler_2fmir_3adumper_2ecall(ptr %v0, ptr %s9, ptr %v2, ptr %v3, ptr %t200, %"compiler/mir:Call" %t201)
  store { i64, ptr } %t202, ptr %l81
  br label %bb30
bb30:
  %t203 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d49, i32 0, i32 1) }, 1
  %t204 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d49, i32 0, i32 1) }, 0
  %t205 = load { i64, ptr }, ptr %l81, !tbaa !27
  %t206 = extractvalue { i64, ptr } %t205, 1
  %t207 = extractvalue { i64, ptr } %t205, 0
  %t208 = add i64 %t204, %t207
  %t209 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t208)
  call void @olang_textcopy(ptr %t209, ptr %t203, i64 %t204)
  %t210 = getelementptr i8, ptr %t209, i64 %t204
  call void @olang_textcopy(ptr %t210, ptr %t206, i64 %t207)
  %t211 = insertvalue { i64, ptr } undef, i64 %t208, 0
  %t212 = insertvalue { i64, ptr } %t211, ptr %t209, 1
  store { i64, ptr } %t212, ptr %l26, !tbaa !27
  call void @__olang_scope_close(ptr %s9)
  br label %bb75
bb31:
  %t214 = load { i64, [8 x i64] }, ptr %l1
  %t216 = extractvalue { i64, [8 x i64] } %t214, 0
  %t217 = icmp eq i64 %t216, 5
  br i1 %t217, label %bb32, label %bb33
bb32:
  %t219 = getelementptr { i64, [8 x i64] }, ptr %l1, i32 0, i32 1
  %t220 = getelementptr { %"compiler/source:Span", { i64, [4 x i64] } }, ptr %t219, i32 0, i32 1
  %t221 = load { i64, [4 x i64] }, ptr %t220
  store { i64, [4 x i64] } %t221, ptr %l12
  br label %bb34
bb33:
  br label %bb39
bb34:
  store %olang.scope zeroinitializer, ptr %s11
  %t223 = load { i64, [4 x i64] }, ptr %l12
  %t225 = extractvalue { i64, [4 x i64] } %t223, 0
  %t226 = icmp eq i64 %t225, 0
  %t228 = xor i1 %t226, true
  br i1 %t228, label %bb35, label %bb36
bb35:
  %t230 = load ptr, ptr %l0, !tbaa !29
  %t231 = load { i64, [4 x i64] }, ptr %l12
  %t234 = call { i64, ptr } @compiler_2fmir_2ecompiler_2fmir_3adumper_2eoperand(ptr %v0, ptr %s11, ptr %v2, ptr %v3, ptr %t230, { i64, [4 x i64] } %t231)
  store { i64, ptr } %t234, ptr %l92
  br label %bb37
bb36:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d50, i32 0, i32 1) }, ptr %l89, !tbaa !27
  br label %bb38
bb37:
  %t235 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d51, i32 0, i32 1) }, 1
  %t236 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d51, i32 0, i32 1) }, 0
  %t237 = load { i64, ptr }, ptr %l92, !tbaa !27
  %t238 = extractvalue { i64, ptr } %t237, 1
  %t239 = extractvalue { i64, ptr } %t237, 0
  %t240 = add i64 %t236, %t239
  %t241 = call ptr @__olang_scope_alloc(ptr %s11, i64 %t240)
  call void @olang_textcopy(ptr %t241, ptr %t235, i64 %t236)
  %t242 = getelementptr i8, ptr %t241, i64 %t236
  call void @olang_textcopy(ptr %t242, ptr %t238, i64 %t239)
  %t243 = insertvalue { i64, ptr } undef, i64 %t240, 0
  %t244 = insertvalue { i64, ptr } %t243, ptr %t241, 1
  %t246 = extractvalue { i64, ptr } %t244, 0
  %t247 = extractvalue { i64, ptr } %t244, 1
  %t248 = mul i64 %t246, 1
  %t249 = call ptr @__olang_scope_alloc(ptr %s11, i64 %t248)
  call void @llvm.memcpy.p0.p0.i64(ptr %t249, ptr %t247, i64 %t248, i1 false)
  %t250 = insertvalue { i64, ptr } undef, i64 %t246, 0
  %t251 = insertvalue { i64, ptr } %t250, ptr %t249, 1
  store { i64, ptr } %t251, ptr %l89, !tbaa !27
  br label %bb38
bb38:
  %t253 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d52, i32 0, i32 1) }, 1
  %t254 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d52, i32 0, i32 1) }, 0
  %t255 = load { i64, ptr }, ptr %l89, !tbaa !27
  %t256 = extractvalue { i64, ptr } %t255, 1
  %t257 = extractvalue { i64, ptr } %t255, 0
  %t258 = add i64 %t254, %t257
  %t259 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t258)
  call void @olang_textcopy(ptr %t259, ptr %t253, i64 %t254)
  %t260 = getelementptr i8, ptr %t259, i64 %t254
  call void @olang_textcopy(ptr %t260, ptr %t256, i64 %t257)
  %t261 = insertvalue { i64, ptr } undef, i64 %t258, 0
  %t262 = insertvalue { i64, ptr } %t261, ptr %t259, 1
  store { i64, ptr } %t262, ptr %l26, !tbaa !27
  call void @__olang_scope_close(ptr %s11)
  br label %bb75
bb39:
  %t264 = load { i64, [8 x i64] }, ptr %l1
  %t266 = extractvalue { i64, [8 x i64] } %t264, 0
  %t267 = icmp eq i64 %t266, 7
  br i1 %t267, label %bb40, label %bb41
bb40:
  %t269 = getelementptr { i64, [8 x i64] }, ptr %l1, i32 0, i32 1
  %t270 = getelementptr { %"compiler/source:Span", { i64, [4 x i64] } }, ptr %t269, i32 0, i32 1
  %t271 = load { i64, [4 x i64] }, ptr %t270
  store { i64, [4 x i64] } %t271, ptr %l13
  br label %bb42
bb41:
  br label %bb44
bb42:
  store %olang.scope zeroinitializer, ptr %s14
  %t273 = load ptr, ptr %l0, !tbaa !29
  %t274 = load { i64, [4 x i64] }, ptr %l13
  %t277 = call { i64, ptr } @compiler_2fmir_2ecompiler_2fmir_3adumper_2eoperand(ptr %v0, ptr %s14, ptr %v2, ptr %v3, ptr %t273, { i64, [4 x i64] } %t274)
  store { i64, ptr } %t277, ptr %l101
  br label %bb43
bb43:
  %t278 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d53, i32 0, i32 1) }, 1
  %t279 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d53, i32 0, i32 1) }, 0
  %t280 = load { i64, ptr }, ptr %l101, !tbaa !27
  %t281 = extractvalue { i64, ptr } %t280, 1
  %t282 = extractvalue { i64, ptr } %t280, 0
  %t283 = add i64 %t279, %t282
  %t284 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t283)
  call void @olang_textcopy(ptr %t284, ptr %t278, i64 %t279)
  %t285 = getelementptr i8, ptr %t284, i64 %t279
  call void @olang_textcopy(ptr %t285, ptr %t281, i64 %t282)
  %t286 = insertvalue { i64, ptr } undef, i64 %t283, 0
  %t287 = insertvalue { i64, ptr } %t286, ptr %t284, 1
  store { i64, ptr } %t287, ptr %l26, !tbaa !27
  call void @__olang_scope_close(ptr %s14)
  br label %bb75
bb44:
  %t289 = load { i64, [8 x i64] }, ptr %l1
  %t291 = extractvalue { i64, [8 x i64] } %t289, 0
  %t292 = icmp eq i64 %t291, 11
  br i1 %t292, label %bb45, label %bb46
bb45:
  %t294 = getelementptr { i64, [8 x i64] }, ptr %l1, i32 0, i32 1
  %t295 = getelementptr { %"compiler/source:Span", { i64, [4 x i64] }, i32, %"compiler/mir:Range", i32 }, ptr %t294, i32 0, i32 1
  %t296 = load { i64, [4 x i64] }, ptr %t295
  store { i64, [4 x i64] } %t296, ptr %l14
  %t298 = getelementptr { i64, [8 x i64] }, ptr %l1, i32 0, i32 1
  %t299 = getelementptr { %"compiler/source:Span", { i64, [4 x i64] }, i32, %"compiler/mir:Range", i32 }, ptr %t298, i32 0, i32 2
  %t300 = load i32, ptr %t299
  store i32 %t300, ptr %l15, !tbaa !23
  %t302 = getelementptr { i64, [8 x i64] }, ptr %l1, i32 0, i32 1
  %t303 = getelementptr { %"compiler/source:Span", { i64, [4 x i64] }, i32, %"compiler/mir:Range", i32 }, ptr %t302, i32 0, i32 3
  %t304 = load %"compiler/mir:Range", ptr %t303
  store %"compiler/mir:Range" %t304, ptr %l16
  %t306 = getelementptr { i64, [8 x i64] }, ptr %l1, i32 0, i32 1
  %t307 = getelementptr { %"compiler/source:Span", { i64, [4 x i64] }, i32, %"compiler/mir:Range", i32 }, ptr %t306, i32 0, i32 4
  %t308 = load i32, ptr %t307
  store i32 %t308, ptr %l17, !tbaa !23
  br label %bb47
bb46:
  br label %bb49
bb47:
  store %olang.scope zeroinitializer, ptr %s16
  %t310 = load ptr, ptr %l0, !tbaa !29
  %t311 = load { i64, [4 x i64] }, ptr %l14
  %t314 = call { i64, ptr } @compiler_2fmir_2ecompiler_2fmir_3adumper_2eoperand(ptr %v0, ptr %s16, ptr %v2, ptr %v3, ptr %t310, { i64, [4 x i64] } %t311)
  store { i64, ptr } %t314, ptr %l111
  br label %bb48
bb48:
  %t315 = load i32, ptr %l15, !tbaa !23
  %t316 = getelementptr %"compiler/mir:Range", ptr %l16, i32 0, i32 1
  %t317 = load i32, ptr %t316, !tbaa !23
  %t318 = load i32, ptr %l17, !tbaa !23
  %t319 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d54, i32 0, i32 1) }, 1
  %t320 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d54, i32 0, i32 1) }, 0
  %t321 = load { i64, ptr }, ptr %l111, !tbaa !27
  %t322 = extractvalue { i64, ptr } %t321, 1
  %t323 = extractvalue { i64, ptr } %t321, 0
  %t324 = add i64 %t320, %t323
  %t325 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d55, i32 0, i32 1) }, 1
  %t326 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d55, i32 0, i32 1) }, 0
  %t327 = add i64 %t324, %t326
  %t329 = sext i32 %t315 to i64
  %t330 = call i64 @__olang_fmt_i64(ptr null, i64 %t329)
  %t331 = add i64 %t327, %t330
  %t332 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d56, i32 0, i32 1) }, 1
  %t333 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d56, i32 0, i32 1) }, 0
  %t334 = add i64 %t331, %t333
  %t336 = sext i32 %t317 to i64
  %t337 = call i64 @__olang_fmt_i64(ptr null, i64 %t336)
  %t338 = add i64 %t334, %t337
  %t339 = extractvalue { i64, ptr } { i64 11, ptr getelementptr inbounds (<{ i64, [11 x i8] }>, ptr @.d57, i32 0, i32 1) }, 1
  %t340 = extractvalue { i64, ptr } { i64 11, ptr getelementptr inbounds (<{ i64, [11 x i8] }>, ptr @.d57, i32 0, i32 1) }, 0
  %t341 = add i64 %t338, %t340
  %t343 = sext i32 %t318 to i64
  %t344 = call i64 @__olang_fmt_i64(ptr null, i64 %t343)
  %t345 = add i64 %t341, %t344
  %t346 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t345)
  call void @olang_textcopy(ptr %t346, ptr %t319, i64 %t320)
  %t347 = getelementptr i8, ptr %t346, i64 %t320
  call void @olang_textcopy(ptr %t347, ptr %t322, i64 %t323)
  %t348 = getelementptr i8, ptr %t347, i64 %t323
  call void @olang_textcopy(ptr %t348, ptr %t325, i64 %t326)
  %t349 = getelementptr i8, ptr %t348, i64 %t326
  %t350 = call i64 @__olang_fmt_i64(ptr %t349, i64 %t329)
  %t351 = getelementptr i8, ptr %t349, i64 %t330
  call void @olang_textcopy(ptr %t351, ptr %t332, i64 %t333)
  %t352 = getelementptr i8, ptr %t351, i64 %t333
  %t353 = call i64 @__olang_fmt_i64(ptr %t352, i64 %t336)
  %t354 = getelementptr i8, ptr %t352, i64 %t337
  call void @olang_textcopy(ptr %t354, ptr %t339, i64 %t340)
  %t355 = getelementptr i8, ptr %t354, i64 %t340
  %t356 = call i64 @__olang_fmt_i64(ptr %t355, i64 %t343)
  %t357 = insertvalue { i64, ptr } undef, i64 %t345, 0
  %t358 = insertvalue { i64, ptr } %t357, ptr %t346, 1
  store { i64, ptr } %t358, ptr %l26, !tbaa !27
  call void @__olang_scope_close(ptr %s16)
  br label %bb75
bb49:
  %t360 = load { i64, [8 x i64] }, ptr %l1
  %t362 = extractvalue { i64, [8 x i64] } %t360, 0
  %t363 = icmp eq i64 %t362, 12
  br i1 %t363, label %bb50, label %bb51
bb50:
  br label %bb52
bb51:
  br label %bb53
bb52:
  store { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d58, i32 0, i32 1) }, ptr %l118, !tbaa !27
  %t365 = load { i64, ptr }, ptr %l118, !tbaa !27
  store { i64, ptr } %t365, ptr %l26, !tbaa !27
  br label %bb75
bb53:
  %t367 = load { i64, [8 x i64] }, ptr %l1
  %t369 = extractvalue { i64, [8 x i64] } %t367, 0
  %t370 = icmp eq i64 %t369, 8
  br i1 %t370, label %bb54, label %bb55
bb54:
  %t372 = getelementptr { i64, [8 x i64] }, ptr %l1, i32 0, i32 1
  %t373 = getelementptr { %"compiler/source:Span", i32, i32, i32, i32 }, ptr %t372, i32 0, i32 1
  %t374 = load i32, ptr %t373
  store i32 %t374, ptr %l18, !tbaa !23
  %t376 = getelementptr { i64, [8 x i64] }, ptr %l1, i32 0, i32 1
  %t377 = getelementptr { %"compiler/source:Span", i32, i32, i32, i32 }, ptr %t376, i32 0, i32 2
  %t378 = load i32, ptr %t377
  store i32 %t378, ptr %l19, !tbaa !23
  %t380 = getelementptr { i64, [8 x i64] }, ptr %l1, i32 0, i32 1
  %t381 = getelementptr { %"compiler/source:Span", i32, i32, i32, i32 }, ptr %t380, i32 0, i32 3
  %t382 = load i32, ptr %t381
  store i32 %t382, ptr %l20, !tbaa !23
  %t384 = getelementptr { i64, [8 x i64] }, ptr %l1, i32 0, i32 1
  %t385 = getelementptr { %"compiler/source:Span", i32, i32, i32, i32 }, ptr %t384, i32 0, i32 4
  %t386 = load i32, ptr %t385
  store i32 %t386, ptr %l21, !tbaa !23
  br label %bb56
bb55:
  br label %bb60
bb56:
  store %olang.scope zeroinitializer, ptr %s19
  %t388 = load i32, ptr %l18, !tbaa !23
  store i32 %t388, ptr %l126, !tbaa !23
  %t389 = load i32, ptr %l19, !tbaa !23
  store i32 %t389, ptr %l127, !tbaa !23
  %t390 = load i32, ptr %l21, !tbaa !23
  %t391 = load i32, ptr @G_2ecompiler_2fmir_2eNoBlock, !tbaa !23
  %t394 = icmp ne i32 %t390, %t391
  br i1 %t394, label %bb57, label %bb58
bb57:
  %t396 = load i32, ptr %l20, !tbaa !23
  %t397 = load i32, ptr %l21, !tbaa !23
  %t398 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d59, i32 0, i32 1) }, 1
  %t399 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d59, i32 0, i32 1) }, 0
  %t401 = sext i32 %t396 to i64
  %t402 = call i64 @__olang_fmt_i64(ptr null, i64 %t401)
  %t403 = add i64 %t399, %t402
  %t404 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d60, i32 0, i32 1) }, 1
  %t405 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d60, i32 0, i32 1) }, 0
  %t406 = add i64 %t403, %t405
  %t408 = sext i32 %t397 to i64
  %t409 = call i64 @__olang_fmt_i64(ptr null, i64 %t408)
  %t410 = add i64 %t406, %t409
  %t411 = call ptr @__olang_scope_alloc(ptr %s19, i64 %t410)
  call void @olang_textcopy(ptr %t411, ptr %t398, i64 %t399)
  %t412 = getelementptr i8, ptr %t411, i64 %t399
  %t413 = call i64 @__olang_fmt_i64(ptr %t412, i64 %t401)
  %t414 = getelementptr i8, ptr %t412, i64 %t402
  call void @olang_textcopy(ptr %t414, ptr %t404, i64 %t405)
  %t415 = getelementptr i8, ptr %t414, i64 %t405
  %t416 = call i64 @__olang_fmt_i64(ptr %t415, i64 %t408)
  %t417 = insertvalue { i64, ptr } undef, i64 %t410, 0
  %t418 = insertvalue { i64, ptr } %t417, ptr %t411, 1
  %t420 = extractvalue { i64, ptr } %t418, 0
  %t421 = extractvalue { i64, ptr } %t418, 1
  %t422 = mul i64 %t420, 1
  %t423 = call ptr @__olang_scope_alloc(ptr %s19, i64 %t422)
  call void @llvm.memcpy.p0.p0.i64(ptr %t423, ptr %t421, i64 %t422, i1 false)
  %t424 = insertvalue { i64, ptr } undef, i64 %t420, 0
  %t425 = insertvalue { i64, ptr } %t424, ptr %t423, 1
  store { i64, ptr } %t425, ptr %l131, !tbaa !27
  br label %bb59
bb58:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d61, i32 0, i32 1) }, ptr %l131, !tbaa !27
  br label %bb59
bb59:
  %t427 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d62, i32 0, i32 1) }, 1
  %t428 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d62, i32 0, i32 1) }, 0
  %t429 = load i32, ptr %l126, !tbaa !23
  %t430 = sext i32 %t429 to i64
  %t431 = call i64 @__olang_fmt_i64(ptr null, i64 %t430)
  %t432 = add i64 %t428, %t431
  %t433 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d63, i32 0, i32 1) }, 1
  %t434 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d63, i32 0, i32 1) }, 0
  %t435 = add i64 %t432, %t434
  %t436 = load i32, ptr %l127, !tbaa !23
  %t437 = sext i32 %t436 to i64
  %t438 = call i64 @__olang_fmt_i64(ptr null, i64 %t437)
  %t439 = add i64 %t435, %t438
  %t440 = load { i64, ptr }, ptr %l131, !tbaa !27
  %t441 = extractvalue { i64, ptr } %t440, 1
  %t442 = extractvalue { i64, ptr } %t440, 0
  %t443 = add i64 %t439, %t442
  %t444 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t443)
  call void @olang_textcopy(ptr %t444, ptr %t427, i64 %t428)
  %t445 = getelementptr i8, ptr %t444, i64 %t428
  %t446 = call i64 @__olang_fmt_i64(ptr %t445, i64 %t430)
  %t447 = getelementptr i8, ptr %t445, i64 %t431
  call void @olang_textcopy(ptr %t447, ptr %t433, i64 %t434)
  %t448 = getelementptr i8, ptr %t447, i64 %t434
  %t449 = call i64 @__olang_fmt_i64(ptr %t448, i64 %t437)
  %t450 = getelementptr i8, ptr %t448, i64 %t438
  call void @olang_textcopy(ptr %t450, ptr %t441, i64 %t442)
  %t451 = insertvalue { i64, ptr } undef, i64 %t443, 0
  %t452 = insertvalue { i64, ptr } %t451, ptr %t444, 1
  store { i64, ptr } %t452, ptr %l26, !tbaa !27
  call void @__olang_scope_close(ptr %s19)
  br label %bb75
bb60:
  %t454 = load { i64, [8 x i64] }, ptr %l1
  %t456 = extractvalue { i64, [8 x i64] } %t454, 0
  %t457 = icmp eq i64 %t456, 9
  br i1 %t457, label %bb61, label %bb62
bb61:
  %t459 = getelementptr { i64, [8 x i64] }, ptr %l1, i32 0, i32 1
  %t460 = getelementptr { %"compiler/source:Span", i32, { i64, [4 x i64] } }, ptr %t459, i32 0, i32 1
  %t461 = load i32, ptr %t460, !range !{i32 0, i32 16}
  store i32 %t461, ptr %l22
  %t463 = getelementptr { i64, [8 x i64] }, ptr %l1, i32 0, i32 1
  %t464 = getelementptr { %"compiler/source:Span", i32, { i64, [4 x i64] } }, ptr %t463, i32 0, i32 2
  %t465 = load { i64, [4 x i64] }, ptr %t464
  store { i64, [4 x i64] } %t465, ptr %l23
  br label %bb63
bb62:
  br label %bb70
bb63:
  store %olang.scope zeroinitializer, ptr %s22
  %t467 = load i32, ptr %l22, !range !{i32 0, i32 16}
  store i32 %t467, ptr %l141
  store %olang.builder { ptr null, i64 0, i64 64, ptr null, ptr null }, ptr %s23
  store ptr %s23room, ptr %s23
  call void @olang_2emir_2eHelperKind_2eRender_2ecompiler_2fmir_3aExitKind(ptr %s23, ptr %l141, i64 0)
  br label %bb64
bb64:
  %t469 = load ptr, ptr %s23
  %t470 = getelementptr %olang.builder, ptr %s23, i32 0, i32 1
  %t471 = load i64, ptr %t470
  %t472 = call ptr @__olang_scope_alloc(ptr %s22, i64 %t471)
  call void @olang_textcopy(ptr %t472, ptr %t469, i64 %t471)
  %t473 = insertvalue { i64, ptr } undef, i64 %t471, 0
  %t474 = insertvalue { i64, ptr } %t473, ptr %t472, 1
  store { i64, ptr } %t474, ptr %l143, !tbaa !27
  %t475 = getelementptr %olang.builder, ptr %s23, i32 0, i32 3
  %t476 = load ptr, ptr %t475
  %t477 = icmp ne ptr %t476, null
  br i1 %t477, label %sbgrew.478, label %sbdone.479
sbgrew.478:
  call void @__olang_sb_done(ptr %s23)
  br label %sbdone.479
sbdone.479:
  %t480 = load { i64, ptr }, ptr %l143, !tbaa !27
  %t481 = extractvalue { i64, ptr } %t480, 0
  %t482 = extractvalue { i64, ptr } %t480, 1
  %t483 = mul i64 %t481, 1
  %t484 = call ptr @__olang_scope_alloc(ptr %s22, i64 %t483)
  call void @llvm.memcpy.p0.p0.i64(ptr %t484, ptr %t482, i64 %t483, i1 false)
  %t485 = insertvalue { i64, ptr } undef, i64 %t481, 0
  %t486 = insertvalue { i64, ptr } %t485, ptr %t484, 1
  %t488 = call { i64, ptr } @compiler_2fmir_2eshort(ptr %s22, ptr %s22, { i64, ptr } %t486)
  store { i64, ptr } %t488, ptr %l145
  br label %bb65
bb65:
  %t489 = load { i64, [4 x i64] }, ptr %l23
  %t491 = extractvalue { i64, [4 x i64] } %t489, 0
  %t492 = icmp eq i64 %t491, 0
  %t494 = xor i1 %t492, true
  br i1 %t494, label %bb66, label %bb67
bb66:
  %t496 = load ptr, ptr %l0, !tbaa !29
  %t497 = load { i64, [4 x i64] }, ptr %l23
  %t500 = call { i64, ptr } @compiler_2fmir_2ecompiler_2fmir_3adumper_2eoperand(ptr %v0, ptr %s22, ptr %v2, ptr %v3, ptr %t496, { i64, [4 x i64] } %t497)
  store { i64, ptr } %t500, ptr %l152
  br label %bb68
bb67:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d64, i32 0, i32 1) }, ptr %l149, !tbaa !27
  br label %bb69
bb68:
  %t501 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d65, i32 0, i32 1) }, 1
  %t502 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d65, i32 0, i32 1) }, 0
  %t503 = load { i64, ptr }, ptr %l152, !tbaa !27
  %t504 = extractvalue { i64, ptr } %t503, 1
  %t505 = extractvalue { i64, ptr } %t503, 0
  %t506 = add i64 %t502, %t505
  %t507 = call ptr @__olang_scope_alloc(ptr %s22, i64 %t506)
  call void @olang_textcopy(ptr %t507, ptr %t501, i64 %t502)
  %t508 = getelementptr i8, ptr %t507, i64 %t502
  call void @olang_textcopy(ptr %t508, ptr %t504, i64 %t505)
  %t509 = insertvalue { i64, ptr } undef, i64 %t506, 0
  %t510 = insertvalue { i64, ptr } %t509, ptr %t507, 1
  %t512 = extractvalue { i64, ptr } %t510, 0
  %t513 = extractvalue { i64, ptr } %t510, 1
  %t514 = mul i64 %t512, 1
  %t515 = call ptr @__olang_scope_alloc(ptr %s22, i64 %t514)
  call void @llvm.memcpy.p0.p0.i64(ptr %t515, ptr %t513, i64 %t514, i1 false)
  %t516 = insertvalue { i64, ptr } undef, i64 %t512, 0
  %t517 = insertvalue { i64, ptr } %t516, ptr %t515, 1
  store { i64, ptr } %t517, ptr %l149, !tbaa !27
  br label %bb69
bb69:
  %t519 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d66, i32 0, i32 1) }, 1
  %t520 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d66, i32 0, i32 1) }, 0
  %t521 = load { i64, ptr }, ptr %l145, !tbaa !27
  %t522 = extractvalue { i64, ptr } %t521, 1
  %t523 = extractvalue { i64, ptr } %t521, 0
  %t524 = add i64 %t520, %t523
  %t525 = load { i64, ptr }, ptr %l149, !tbaa !27
  %t526 = extractvalue { i64, ptr } %t525, 1
  %t527 = extractvalue { i64, ptr } %t525, 0
  %t528 = add i64 %t524, %t527
  %t529 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t528)
  call void @olang_textcopy(ptr %t529, ptr %t519, i64 %t520)
  %t530 = getelementptr i8, ptr %t529, i64 %t520
  call void @olang_textcopy(ptr %t530, ptr %t522, i64 %t523)
  %t531 = getelementptr i8, ptr %t530, i64 %t523
  call void @olang_textcopy(ptr %t531, ptr %t526, i64 %t527)
  %t532 = insertvalue { i64, ptr } undef, i64 %t528, 0
  %t533 = insertvalue { i64, ptr } %t532, ptr %t529, 1
  store { i64, ptr } %t533, ptr %l26, !tbaa !27
  call void @__olang_scope_close(ptr %s22)
  br label %bb75
bb70:
  %t535 = load { i64, [8 x i64] }, ptr %l1
  %t537 = extractvalue { i64, [8 x i64] } %t535, 0
  %t538 = icmp eq i64 %t537, 10
  br i1 %t538, label %bb71, label %bb72
bb71:
  br label %bb73
bb72:
  br label %bb74
bb73:
  store { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d67, i32 0, i32 1) }, ptr %l158, !tbaa !27
  %t540 = load { i64, ptr }, ptr %l158, !tbaa !27
  store { i64, ptr } %t540, ptr %l26, !tbaa !27
  br label %bb75
bb74:
  call void @__olang_check_failed(ptr @olang_loc_8b20d2ead933ce67_842549c98b36ec43)
  unreachable
bb75:
  %t542 = load { i64, ptr }, ptr %l26, !tbaa !27
  %t543 = extractvalue { i64, ptr } %t542, 0
  store i64 %t543, ptr %l160, !tbaa !24
  %t544 = load i64, ptr %l160, !tbaa !24
  %t545 = mul i64 %t544, 1
  %t546 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t545)
  %t547 = insertvalue { i64, ptr } undef, i64 %t544, 0
  %t548 = insertvalue { i64, ptr } %t547, ptr %t546, 1
  store { i64, ptr } %t548, ptr %l161, !tbaa !27
  %t549 = getelementptr { i64, ptr }, ptr %l161, i32 0, i32 1
  %t550 = load ptr, ptr %t549, !tbaa !27
  %t551 = getelementptr { i64, ptr }, ptr %l26, i32 0, i32 1
  %t552 = load ptr, ptr %t551, !tbaa !27
  %t553 = load i64, ptr %l160, !tbaa !24
  %t554 = mul i64 %t553, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t550, ptr %t552, i64 %t554, i1 false)
  %t555 = load { i64, ptr }, ptr %l161, !tbaa !27
  store { i64, ptr } %t555, ptr %l26, !tbaa !27
  %t556 = load { i64, ptr }, ptr %l26, !tbaa !27
  store { i64, ptr } %t556, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local i32 @compiler_2fmir_2ecompiler_2fmir_3averifier_2eaggregateType(ptr %v0, ptr %v1, ptr %v2, ptr %a0, i32 %a1, i64 %a2, %"compiler/mir:Range" %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca i64
  %l3 = alloca %"compiler/mir:Range"
  %l4 = alloca ptr
  %l5 = alloca i64
  %l6 = alloca i32
  %l7 = alloca i32
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca i64
  %l12 = alloca i64
  %l13 = alloca i64
  %l14 = alloca i32
  %l15 = alloca i1
  %l16 = alloca { i64, ptr }
  %l17 = alloca i32
  %l25 = alloca i32
  %l29 = alloca ptr
  %l32 = alloca i32
  %l35 = alloca i1
  %l36 = alloca ptr
  %l39 = alloca i32
  %l43 = alloca i1
  %l44 = alloca ptr
  %l47 = alloca i64
  %l50 = alloca ptr
  %l53 = alloca { i64, ptr }
  %l61 = alloca i64
  %l64 = alloca i64
  %l82 = alloca ptr
  %l83 = alloca ptr
  %l87 = alloca { i64, [4 x i64] }
  %l88 = alloca i32
  %l89 = alloca ptr
  %l92 = alloca i32
  %l100 = alloca ptr
  %l103 = alloca i32
  %l105 = alloca ptr
  %l108 = alloca i1
  %l109 = alloca ptr
  %l112 = alloca { i64, ptr }
  %l116 = alloca i1
  %l121 = alloca ptr
  %l122 = alloca i64
  %l125 = alloca { i64, ptr }
  %l129 = alloca ptr
  %l130 = alloca i32
  %l131 = alloca { i64, ptr }
  %l135 = alloca i32
  %l136 = alloca ptr
  %l137 = alloca { i64, ptr }
  %l141 = alloca i32
  %l145 = alloca ptr
  %l148 = alloca i32
  %l150 = alloca ptr
  %l153 = alloca i1
  %l156 = alloca ptr
  %l159 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %s2 = alloca %olang.scope
  %s5 = alloca %olang.scope
  %s9 = alloca %olang.scope
  %s11 = alloca %olang.scope
  %rv = alloca i32
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  store i64 %a2, ptr %l2
  store %"compiler/mir:Range" %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/mir:verifier", ptr %t1, i32 0, i32 1
  %t4 = load ptr, ptr %t3, !tbaa !29
  store ptr %t4, ptr %l4, !tbaa !29
  %t6 = getelementptr %"compiler/mir:Range", ptr %l3, i32 0, i32 1
  %t7 = load i32, ptr %t6, !tbaa !23
  %t9 = sext i32 %t7 to i64
  store i64 %t9, ptr %l5, !tbaa !24
  %t11 = load ptr, ptr %l0, !tbaa !29
  %t12 = load i32, ptr %l1, !tbaa !23
  %t15 = call i32 @compiler_2fmir_2ecompiler_2fmir_3averifier_2earrayOf(ptr %v0, ptr %v1, ptr %t11, i32 %t12)
  store i32 %t15, ptr %l25
  br label %bb1
bb1:
  %t16 = load i32, ptr %l25, !tbaa !23
  store i32 %t16, ptr %l6, !tbaa !23
  %t17 = load i32, ptr %l6, !tbaa !23
  %t18 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t21 = icmp ne i32 %t17, %t18
  br i1 %t21, label %bb2, label %bb3
bb2:
  %t23 = load ptr, ptr %l4, !tbaa !29
  store ptr %t23, ptr %l29, !tbaa !29
  %t24 = load i32, ptr %l6, !tbaa !23
  %t25 = load ptr, ptr %l29, !tbaa !29
  %t26 = call ptr @__olang_scope_or(ptr %v1, ptr %t25)
  %t27 = ptrtoint ptr %t26 to i64
  %t29 = inttoptr i64 %t27 to ptr
  %t30 = load ptr, ptr %l29, !tbaa !29
  %t32 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eLength(ptr %t29, ptr %t30, i32 %t24)
  store i32 %t32, ptr %l32
  br label %bb4
bb3:
  br label %bb34
bb4:
  %t33 = load i32, ptr %l32, !tbaa !23
  store i32 %t33, ptr %l7, !tbaa !23
  %t34 = load i32, ptr %l7, !tbaa !23
  %t36 = icmp eq i32 %t34, 0
  br i1 %t36, label %bb5, label %bb6
bb5:
  store i1 true, ptr %l35, !tbaa !21
  br label %bb8
bb6:
  %t38 = load ptr, ptr %l4, !tbaa !29
  store ptr %t38, ptr %l36, !tbaa !29
  %t39 = load i32, ptr %l7, !tbaa !23
  %t40 = load ptr, ptr %l36, !tbaa !29
  %t41 = call ptr @__olang_scope_or(ptr %v1, ptr %t40)
  %t42 = ptrtoint ptr %t41 to i64
  %t44 = inttoptr i64 %t42 to ptr
  %t45 = load ptr, ptr %l36, !tbaa !29
  %t47 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %t44, ptr %t45, i32 %t39)
  store i32 %t47, ptr %l39
  br label %bb7
bb7:
  %t48 = load i32, ptr %l39, !range !{i32 0, i32 33}
  %t50 = trunc i64 26 to i32
  %t51 = icmp eq i32 %t48, %t50
  %t53 = xor i1 %t51, true
  store i1 %t53, ptr %l35, !tbaa !21
  br label %bb8
bb8:
  %t55 = load i1, ptr %l35, !tbaa !21
  br i1 %t55, label %bb9, label %bb10
bb9:
  store i1 true, ptr %l43, !tbaa !21
  br label %bb12
bb10:
  %t56 = load ptr, ptr %l4, !tbaa !29
  store ptr %t56, ptr %l44, !tbaa !29
  %t57 = load i32, ptr %l7, !tbaa !23
  %t58 = load ptr, ptr %l44, !tbaa !29
  %t59 = call ptr @__olang_scope_or(ptr %v1, ptr %t58)
  %t60 = ptrtoint ptr %t59 to i64
  %t62 = inttoptr i64 %t60 to ptr
  %t63 = load ptr, ptr %l44, !tbaa !29
  %t65 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eConstValue(ptr %t62, ptr %t63, i32 %t57)
  store i64 %t65, ptr %l47
  br label %bb11
bb11:
  %t66 = load i64, ptr %l5, !tbaa !24
  %t67 = load i64, ptr %l47, !tbaa !24
  %t69 = icmp ne i64 %t67, %t66
  store i1 %t69, ptr %l43, !tbaa !21
  br label %bb12
bb12:
  %t71 = load i1, ptr %l43, !tbaa !21
  br i1 %t71, label %bb13, label %bb14
bb13:
  store %olang.scope zeroinitializer, ptr %s2
  %t72 = load ptr, ptr %l0, !tbaa !29
  store ptr %t72, ptr %l50, !tbaa !29
  %t73 = load ptr, ptr %l0, !tbaa !29
  %t74 = load i32, ptr %l1, !tbaa !23
  %t77 = call { i64, ptr } @compiler_2fmir_2ecompiler_2fmir_3averifier_2ecanon(ptr %v0, ptr %s2, ptr %v1, ptr %t73, i32 %t74)
  store { i64, ptr } %t77, ptr %l53
  br label %bb15
bb14:
  br label %bb17
bb15:
  %t78 = load i64, ptr %l5, !tbaa !24
  %t79 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d68, i32 0, i32 1) }, 1
  %t80 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d68, i32 0, i32 1) }, 0
  %t81 = load { i64, ptr }, ptr %l53, !tbaa !27
  %t82 = extractvalue { i64, ptr } %t81, 1
  %t83 = extractvalue { i64, ptr } %t81, 0
  %t84 = add i64 %t80, %t83
  %t85 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d69, i32 0, i32 1) }, 1
  %t86 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d69, i32 0, i32 1) }, 0
  %t87 = add i64 %t84, %t86
  %t89 = call i64 @__olang_fmt_i64(ptr null, i64 %t78)
  %t90 = add i64 %t87, %t89
  %t91 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d70, i32 0, i32 1) }, 1
  %t92 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d70, i32 0, i32 1) }, 0
  %t93 = add i64 %t90, %t92
  %t94 = call ptr @__olang_scope_alloc(ptr %s2, i64 %t93)
  call void @olang_textcopy(ptr %t94, ptr %t79, i64 %t80)
  %t95 = getelementptr i8, ptr %t94, i64 %t80
  call void @olang_textcopy(ptr %t95, ptr %t82, i64 %t83)
  %t96 = getelementptr i8, ptr %t95, i64 %t83
  call void @olang_textcopy(ptr %t96, ptr %t85, i64 %t86)
  %t97 = getelementptr i8, ptr %t96, i64 %t86
  %t98 = call i64 @__olang_fmt_i64(ptr %t97, i64 %t78)
  %t99 = getelementptr i8, ptr %t97, i64 %t89
  call void @olang_textcopy(ptr %t99, ptr %t91, i64 %t92)
  %t100 = insertvalue { i64, ptr } undef, i64 %t93, 0
  %t101 = insertvalue { i64, ptr } %t100, ptr %t94, 1
  %t103 = extractvalue { i64, ptr } %t101, 0
  %t104 = extractvalue { i64, ptr } %t101, 1
  %t105 = mul i64 %t103, 1
  %t106 = call ptr @__olang_scope_alloc(ptr %s2, i64 %t105)
  call void @llvm.memcpy.p0.p0.i64(ptr %t106, ptr %t104, i64 %t105, i1 false)
  %t107 = insertvalue { i64, ptr } undef, i64 %t103, 0
  %t108 = insertvalue { i64, ptr } %t107, ptr %t106, 1
  %t109 = load ptr, ptr %l50, !tbaa !29
  call void @compiler_2fmir_2ecompiler_2fmir_3averifier_2ebad(ptr %v0, ptr %s2, ptr %t109, { i64, ptr } %t108)
  br label %bb16
bb16:
  call void @__olang_scope_close(ptr %s2)
  br label %bb17
bb17:
  store i64 0, ptr %l8, !tbaa !24
  %t111 = load i64, ptr %l5, !tbaa !24
  store i64 %t111, ptr %l9, !tbaa !24
  store i64 1, ptr %l10, !tbaa !24
  %t113 = load i64, ptr %l9, !tbaa !24
  %t114 = load i64, ptr %l8, !tbaa !24
  %t117 = icmp sgt i64 %t113, %t114
  br i1 %t117, label %bb18, label %bb19
bb18:
  %t119 = load i64, ptr %l10, !tbaa !24
  %t121 = icmp sgt i64 %t119, 0
  br i1 %t121, label %bb20, label %bb21
bb19:
  store i64 0, ptr %l61, !tbaa !24
  br label %bb23
bb20:
  %t123 = load i64, ptr %l9, !tbaa !24
  %t124 = load i64, ptr %l8, !tbaa !24
  %t127 = sub i64 %t123, %t124
  %t128 = load i64, ptr %l10, !tbaa !24
  %t131 = add i64 %t127, %t128
  %t133 = sub i64 %t131, 1
  %t134 = load i64, ptr %l10, !tbaa !24
  %t137 = sdiv i64 %t133, %t134
  store i64 %t137, ptr %l64, !tbaa !24
  br label %bb22
bb21:
  store i64 0, ptr %l64, !tbaa !24
  br label %bb22
bb22:
  %t139 = load i64, ptr %l64, !tbaa !24
  store i64 %t139, ptr %l61, !tbaa !24
  br label %bb23
bb23:
  %t140 = load i64, ptr %l61, !tbaa !24
  store i64 %t140, ptr %l11, !tbaa !24
  store i64 0, ptr %l12, !tbaa !24
  br label %bb24
bb24:
  store %olang.scope zeroinitializer, ptr %s5
  %t141 = load i64, ptr %l12, !tbaa !24
  %t142 = load i64, ptr %l11, !tbaa !24
  %t145 = icmp slt i64 %t141, %t142
  %t147 = xor i1 %t145, true
  br i1 %t147, label %bb25, label %bb26
bb25:
  call void @__olang_scope_close(ptr %s5)
  br label %bb33
bb26:
  br label %bb27
bb27:
  %t149 = load i64, ptr %l8, !tbaa !24
  %t150 = load i64, ptr %l12, !tbaa !24
  %t151 = load i64, ptr %l10, !tbaa !24
  %t154 = mul i64 %t150, %t151
  %t157 = add i64 %t149, %t154
  store i64 %t157, ptr %l13, !tbaa !24
  %t159 = load ptr, ptr %l0, !tbaa !29
  store ptr %t159, ptr %l82, !tbaa !29
  %t160 = load ptr, ptr %l0, !tbaa !29
  store ptr %t160, ptr %l83, !tbaa !29
  %t161 = load ptr, ptr %l0, !tbaa !29
  %t162 = load %"compiler/mir:Range", ptr %l3
  %t163 = load i64, ptr %l13, !tbaa !24
  %t167 = call { i64, [4 x i64] } @compiler_2fmir_2ecompiler_2fmir_3averifier_2earg(ptr %v0, ptr %v2, ptr %t161, %"compiler/mir:Range" %t162, i64 %t163)
  store { i64, [4 x i64] } %t167, ptr %l87
  br label %bb28
bb28:
  %t168 = load ptr, ptr %l83, !tbaa !29
  %t169 = load { i64, [4 x i64] }, ptr %l87
  %t170 = call i32 @compiler_2fmir_2ecompiler_2fmir_3averifier_2eoperandType(ptr %v0, ptr %v2, ptr %v1, ptr %t168, { i64, [4 x i64] } %t169)
  store i32 %t170, ptr %l88
  br label %bb29
bb29:
  %t171 = load ptr, ptr %l4, !tbaa !29
  store ptr %t171, ptr %l89, !tbaa !29
  %t172 = load i32, ptr %l6, !tbaa !23
  %t173 = load ptr, ptr %l89, !tbaa !29
  %t174 = call ptr @__olang_scope_or(ptr %v1, ptr %t173)
  %t175 = ptrtoint ptr %t174 to i64
  %t177 = inttoptr i64 %t175 to ptr
  %t178 = load ptr, ptr %l89, !tbaa !29
  %t180 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eElem(ptr %t177, ptr %t178, i32 %t172)
  store i32 %t180, ptr %l92
  br label %bb30
bb30:
  %t181 = load i64, ptr %l13, !tbaa !24
  %t182 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d71, i32 0, i32 1) }, 1
  %t183 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d71, i32 0, i32 1) }, 0
  %t185 = call i64 @__olang_fmt_i64(ptr null, i64 %t181)
  %t186 = add i64 %t183, %t185
  %t187 = call ptr @__olang_scope_alloc(ptr %s5, i64 %t186)
  call void @olang_textcopy(ptr %t187, ptr %t182, i64 %t183)
  %t188 = getelementptr i8, ptr %t187, i64 %t183
  %t189 = call i64 @__olang_fmt_i64(ptr %t188, i64 %t181)
  %t190 = insertvalue { i64, ptr } undef, i64 %t186, 0
  %t191 = insertvalue { i64, ptr } %t190, ptr %t187, 1
  %t193 = extractvalue { i64, ptr } %t191, 0
  %t194 = extractvalue { i64, ptr } %t191, 1
  %t195 = mul i64 %t193, 1
  %t196 = call ptr @__olang_scope_alloc(ptr %s5, i64 %t195)
  call void @llvm.memcpy.p0.p0.i64(ptr %t196, ptr %t194, i64 %t195, i1 false)
  %t197 = insertvalue { i64, ptr } undef, i64 %t193, 0
  %t198 = insertvalue { i64, ptr } %t197, ptr %t196, 1
  %t199 = load ptr, ptr %l82, !tbaa !29
  %t200 = load i32, ptr %l88, !tbaa !23
  %t201 = load i32, ptr %l92, !tbaa !23
  call void @compiler_2fmir_2ecompiler_2fmir_3averifier_2ewant(ptr %v0, ptr %s5, ptr %v1, ptr %t199, i32 %t200, i32 %t201, { i64, ptr } %t198)
  br label %bb31
bb31:
  call void @__olang_scope_close(ptr %s5)
  br label %bb32
bb32:
  %t203 = load i64, ptr %l12, !tbaa !24
  %t205 = add i64 %t203, 1
  store i64 %t205, ptr %l12, !tbaa !24
  br label %bb24
bb33:
  %t207 = load i32, ptr %l1, !tbaa !23
  call void @__olang_scope_close(ptr %s0)
  store i32 %t207, ptr %rv
  br label %ret
bb34:
  %t209 = load ptr, ptr %l0, !tbaa !29
  %t211 = getelementptr %"compiler/mir:verifier", ptr %t209, i32 0, i32 1
  %t212 = load ptr, ptr %t211, !tbaa !29
  store ptr %t212, ptr %l100, !tbaa !29
  %t213 = load i32, ptr %l1, !tbaa !23
  %t214 = load ptr, ptr %l100, !tbaa !29
  %t215 = call ptr @__olang_scope_or(ptr %v1, ptr %t214)
  %t216 = ptrtoint ptr %t215 to i64
  %t218 = inttoptr i64 %t216 to ptr
  %t219 = load ptr, ptr %l100, !tbaa !29
  %t221 = call i32 @compiler_2fmir_2eCasesOf(ptr %t218, ptr %t219, i32 %t213)
  store i32 %t221, ptr %l103
  br label %bb35
bb35:
  %t222 = load i32, ptr %l103, !tbaa !23
  store i32 %t222, ptr %l14, !tbaa !23
  %t223 = load ptr, ptr %l0, !tbaa !29
  %t225 = getelementptr %"compiler/mir:verifier", ptr %t223, i32 0, i32 1
  %t226 = load ptr, ptr %t225, !tbaa !29
  store ptr %t226, ptr %l105, !tbaa !29
  %t227 = load i32, ptr %l1, !tbaa !23
  %t228 = load ptr, ptr %l105, !tbaa !29
  %t229 = call ptr @__olang_scope_or(ptr %v1, ptr %t228)
  %t230 = ptrtoint ptr %t229 to i64
  %t232 = inttoptr i64 %t230 to ptr
  %t233 = load ptr, ptr %l105, !tbaa !29
  %t235 = call i1 @compiler_2fmir_2eHasCases(ptr %t232, ptr %t233, i32 %t227)
  store i1 %t235, ptr %l108
  br label %bb36
bb36:
  %t236 = load i1, ptr %l108, !tbaa !21
  store i1 %t236, ptr %l15, !tbaa !21
  %t237 = load ptr, ptr %l4, !tbaa !29
  store ptr %t237, ptr %l109, !tbaa !29
  %t238 = load i32, ptr %l14, !tbaa !23
  %t239 = load ptr, ptr %l109, !tbaa !29
  %t240 = call ptr @__olang_scope_or(ptr %v1, ptr %t239)
  %t241 = ptrtoint ptr %t240 to i64
  %t243 = inttoptr i64 %t241 to ptr
  %t244 = load ptr, ptr %l109, !tbaa !29
  %t246 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %t243, ptr %s0, ptr %t244, i32 %t238)
  store { i64, ptr } %t246, ptr %l112
  br label %bb37
bb37:
  %t247 = load { i64, ptr }, ptr %l112, !tbaa !27
  store { i64, ptr } %t247, ptr %l16, !tbaa !27
  %t248 = load i1, ptr %l15, !tbaa !21
  br i1 %t248, label %bb38, label %bb39
bb38:
  %t250 = load i64, ptr %l2, !tbaa !24
  %t252 = icmp slt i64 %t250, 0
  br i1 %t252, label %bb40, label %bb41
bb39:
  br label %bb53
bb40:
  store i1 true, ptr %l116, !tbaa !21
  br label %bb42
bb41:
  %t254 = load i64, ptr %l2, !tbaa !24
  %t255 = load { i64, ptr }, ptr %l16, !tbaa !27
  %t257 = extractvalue { i64, ptr } %t255, 0
  %t260 = icmp sge i64 %t254, %t257
  store i1 %t260, ptr %l116, !tbaa !21
  br label %bb42
bb42:
  %t262 = load i1, ptr %l116, !tbaa !21
  br i1 %t262, label %bb43, label %bb44
bb43:
  store %olang.scope zeroinitializer, ptr %s9
  %t263 = load ptr, ptr %l0, !tbaa !29
  store ptr %t263, ptr %l121, !tbaa !29
  %t264 = load i64, ptr %l2, !tbaa !24
  store i64 %t264, ptr %l122, !tbaa !24
  %t265 = load ptr, ptr %l0, !tbaa !29
  %t266 = load i32, ptr %l1, !tbaa !23
  %t269 = call { i64, ptr } @compiler_2fmir_2ecompiler_2fmir_3averifier_2ecanon(ptr %v0, ptr %s9, ptr %v1, ptr %t265, i32 %t266)
  store { i64, ptr } %t269, ptr %l125
  br label %bb45
bb44:
  br label %bb47
bb45:
  %t270 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d72, i32 0, i32 1) }, 1
  %t271 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d72, i32 0, i32 1) }, 0
  %t272 = load i64, ptr %l122, !tbaa !24
  %t273 = call i64 @__olang_fmt_i64(ptr null, i64 %t272)
  %t274 = add i64 %t271, %t273
  %t275 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d73, i32 0, i32 1) }, 1
  %t276 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d73, i32 0, i32 1) }, 0
  %t277 = add i64 %t274, %t276
  %t278 = load { i64, ptr }, ptr %l125, !tbaa !27
  %t279 = extractvalue { i64, ptr } %t278, 1
  %t280 = extractvalue { i64, ptr } %t278, 0
  %t281 = add i64 %t277, %t280
  %t282 = call ptr @__olang_scope_alloc(ptr %s9, i64 %t281)
  call void @olang_textcopy(ptr %t282, ptr %t270, i64 %t271)
  %t283 = getelementptr i8, ptr %t282, i64 %t271
  %t284 = call i64 @__olang_fmt_i64(ptr %t283, i64 %t272)
  %t285 = getelementptr i8, ptr %t283, i64 %t273
  call void @olang_textcopy(ptr %t285, ptr %t275, i64 %t276)
  %t286 = getelementptr i8, ptr %t285, i64 %t276
  call void @olang_textcopy(ptr %t286, ptr %t279, i64 %t280)
  %t287 = insertvalue { i64, ptr } undef, i64 %t281, 0
  %t288 = insertvalue { i64, ptr } %t287, ptr %t282, 1
  %t290 = extractvalue { i64, ptr } %t288, 0
  %t291 = extractvalue { i64, ptr } %t288, 1
  %t292 = mul i64 %t290, 1
  %t293 = call ptr @__olang_scope_alloc(ptr %s9, i64 %t292)
  call void @llvm.memcpy.p0.p0.i64(ptr %t293, ptr %t291, i64 %t292, i1 false)
  %t294 = insertvalue { i64, ptr } undef, i64 %t290, 0
  %t295 = insertvalue { i64, ptr } %t294, ptr %t293, 1
  %t296 = load ptr, ptr %l121, !tbaa !29
  call void @compiler_2fmir_2ecompiler_2fmir_3averifier_2ebad(ptr %v0, ptr %s9, ptr %t296, { i64, ptr } %t295)
  br label %bb46
bb46:
  %t298 = load i32, ptr %l1, !tbaa !23
  call void @__olang_scope_close(ptr %s9)
  call void @__olang_scope_close(ptr %s0)
  store i32 %t298, ptr %rv
  br label %ret
bb47:
  %t300 = load ptr, ptr %l0, !tbaa !29
  store ptr %t300, ptr %l129, !tbaa !29
  %t301 = load i32, ptr %l1, !tbaa !23
  store i32 %t301, ptr %l130, !tbaa !23
  %t302 = load { i64, ptr }, ptr %l16, !tbaa !27
  store { i64, ptr } %t302, ptr %l131, !tbaa !27
  %t303 = load i64, ptr %l2, !tbaa !24
  %t305 = getelementptr { i64, ptr }, ptr %l131, i32 0, i32 1
  %t306 = load ptr, ptr %t305, !tbaa !27
  %t307 = getelementptr i32, ptr %t306, i64 %t303
  %t308 = load i32, ptr %t307, !tbaa !33
  %t310 = icmp ne i32 %t308, 0
  br i1 %t310, label %bb48, label %bb49
bb48:
  %t312 = load ptr, ptr %l4, !tbaa !29
  store ptr %t312, ptr %l136, !tbaa !29
  %t313 = load { i64, ptr }, ptr %l16, !tbaa !27
  store { i64, ptr } %t313, ptr %l137, !tbaa !27
  %t314 = load i64, ptr %l2, !tbaa !24
  %t316 = getelementptr { i64, ptr }, ptr %l137, i32 0, i32 1
  %t317 = load ptr, ptr %t316, !tbaa !27
  %t318 = getelementptr i32, ptr %t317, i64 %t314
  %t319 = load i32, ptr %t318, !tbaa !33
  %t320 = load ptr, ptr %l136, !tbaa !29
  %t321 = call ptr @__olang_scope_or(ptr %v1, ptr %t320)
  %t322 = ptrtoint ptr %t321 to i64
  %t324 = inttoptr i64 %t322 to ptr
  %t325 = load ptr, ptr %l136, !tbaa !29
  %t327 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParts(ptr %t324, ptr %t325, i32 %t319)
  store i32 %t327, ptr %l141
  br label %bb50
bb49:
  store i32 0, ptr %l135, !tbaa !23
  br label %bb51
bb50:
  %t328 = load i32, ptr %l141, !tbaa !23
  store i32 %t328, ptr %l135, !tbaa !23
  br label %bb51
bb51:
  %t329 = load %"compiler/mir:Range", ptr %l3
  %t330 = load ptr, ptr %l129, !tbaa !29
  %t331 = load i32, ptr %l130, !tbaa !23
  %t332 = load i32, ptr %l135, !tbaa !23
  call void @compiler_2fmir_2ecompiler_2fmir_3averifier_2eparts(ptr %v0, ptr %v1, ptr %v2, ptr %t330, i32 %t331, i32 %t332, %"compiler/mir:Range" %t329)
  br label %bb52
bb52:
  %t334 = load i32, ptr %l1, !tbaa !23
  call void @__olang_scope_close(ptr %s0)
  store i32 %t334, ptr %rv
  br label %ret
bb53:
  %t336 = load ptr, ptr %l0, !tbaa !29
  %t338 = getelementptr %"compiler/mir:verifier", ptr %t336, i32 0, i32 1
  %t339 = load ptr, ptr %t338, !tbaa !29
  store ptr %t339, ptr %l145, !tbaa !29
  %t340 = load i32, ptr %l1, !tbaa !23
  %t341 = load ptr, ptr %l145, !tbaa !29
  %t342 = call ptr @__olang_scope_or(ptr %v1, ptr %t341)
  %t343 = ptrtoint ptr %t342 to i64
  %t345 = inttoptr i64 %t343 to ptr
  %t346 = load ptr, ptr %l145, !tbaa !29
  %t348 = call i32 @compiler_2fmir_2eFieldsOf(ptr %t345, ptr %t346, i32 %t340)
  store i32 %t348, ptr %l148
  br label %bb54
bb54:
  %t349 = load i32, ptr %l148, !tbaa !23
  store i32 %t349, ptr %l17, !tbaa !23
  %t350 = load ptr, ptr %l0, !tbaa !29
  %t352 = getelementptr %"compiler/mir:verifier", ptr %t350, i32 0, i32 1
  %t353 = load ptr, ptr %t352, !tbaa !29
  store ptr %t353, ptr %l150, !tbaa !29
  %t354 = load i32, ptr %l1, !tbaa !23
  %t355 = load ptr, ptr %l150, !tbaa !29
  %t356 = call ptr @__olang_scope_or(ptr %v1, ptr %t355)
  %t357 = ptrtoint ptr %t356 to i64
  %t359 = inttoptr i64 %t357 to ptr
  %t360 = load ptr, ptr %l150, !tbaa !29
  %t362 = call i1 @compiler_2fmir_2eHasFields(ptr %t359, ptr %t360, i32 %t354)
  store i1 %t362, ptr %l153
  br label %bb55
bb55:
  %t363 = load i1, ptr %l153, !tbaa !21
  %t366 = xor i1 %t363, true
  br i1 %t366, label %bb56, label %bb57
bb56:
  store %olang.scope zeroinitializer, ptr %s11
  %t368 = load ptr, ptr %l0, !tbaa !29
  store ptr %t368, ptr %l156, !tbaa !29
  %t369 = load ptr, ptr %l0, !tbaa !29
  %t370 = load i32, ptr %l1, !tbaa !23
  %t373 = call { i64, ptr } @compiler_2fmir_2ecompiler_2fmir_3averifier_2ecanon(ptr %v0, ptr %s11, ptr %v1, ptr %t369, i32 %t370)
  store { i64, ptr } %t373, ptr %l159
  br label %bb58
bb57:
  br label %bb60
bb58:
  %t374 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d74, i32 0, i32 1) }, 1
  %t375 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d74, i32 0, i32 1) }, 0
  %t376 = load { i64, ptr }, ptr %l159, !tbaa !27
  %t377 = extractvalue { i64, ptr } %t376, 1
  %t378 = extractvalue { i64, ptr } %t376, 0
  %t379 = add i64 %t375, %t378
  %t380 = extractvalue { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d75, i32 0, i32 1) }, 1
  %t381 = extractvalue { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d75, i32 0, i32 1) }, 0
  %t382 = add i64 %t379, %t381
  %t383 = call ptr @__olang_scope_alloc(ptr %s11, i64 %t382)
  call void @olang_textcopy(ptr %t383, ptr %t374, i64 %t375)
  %t384 = getelementptr i8, ptr %t383, i64 %t375
  call void @olang_textcopy(ptr %t384, ptr %t377, i64 %t378)
  %t385 = getelementptr i8, ptr %t384, i64 %t378
  call void @olang_textcopy(ptr %t385, ptr %t380, i64 %t381)
  %t386 = insertvalue { i64, ptr } undef, i64 %t382, 0
  %t387 = insertvalue { i64, ptr } %t386, ptr %t383, 1
  %t389 = extractvalue { i64, ptr } %t387, 0
  %t390 = extractvalue { i64, ptr } %t387, 1
  %t391 = mul i64 %t389, 1
  %t392 = call ptr @__olang_scope_alloc(ptr %s11, i64 %t391)
  call void @llvm.memcpy.p0.p0.i64(ptr %t392, ptr %t390, i64 %t391, i1 false)
  %t393 = insertvalue { i64, ptr } undef, i64 %t389, 0
  %t394 = insertvalue { i64, ptr } %t393, ptr %t392, 1
  %t395 = load ptr, ptr %l156, !tbaa !29
  call void @compiler_2fmir_2ecompiler_2fmir_3averifier_2ebad(ptr %v0, ptr %s11, ptr %t395, { i64, ptr } %t394)
  br label %bb59
bb59:
  %t397 = load i32, ptr %l1, !tbaa !23
  call void @__olang_scope_close(ptr %s11)
  call void @__olang_scope_close(ptr %s0)
  store i32 %t397, ptr %rv
  br label %ret
bb60:
  %t399 = load ptr, ptr %l0, !tbaa !29
  %t400 = load i32, ptr %l1, !tbaa !23
  %t401 = load i32, ptr %l17, !tbaa !23
  %t402 = load %"compiler/mir:Range", ptr %l3
  call void @compiler_2fmir_2ecompiler_2fmir_3averifier_2eparts(ptr %v0, ptr %v1, ptr %v2, ptr %t399, i32 %t400, i32 %t401, %"compiler/mir:Range" %t402)
  br label %bb61
bb61:
  %t407 = load i32, ptr %l1, !tbaa !23
  call void @__olang_scope_close(ptr %s0)
  store i32 %t407, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local void @compiler_2fmir_2ecompiler_2fmir_3averifier_2ebad(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1) #0 {
entry:
  %l0 = alloca ptr
  %s2 = alloca %olang.scope
  %s4 = alloca %olang.scope
  %s6 = alloca %olang.scope
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/mir:verifier", ptr %t1, i32 0, i32 5
  %t4 = load i1, ptr %t3, !tbaa !21
  %t6 = xor i1 %t4, true
  br i1 %t6, label %bb1, label %bb2
bb1:
  br label %ret
bb2:
  br label %bb3
bb3:
  %t8 = load ptr, ptr %l0, !tbaa !29
  %t10 = getelementptr %"compiler/mir:verifier", ptr %t8, i32 0, i32 3
  %t11 = load i64, ptr %t10, !tbaa !24
  %t13 = icmp slt i64 %t11, 0
  br i1 %t13, label %bb4, label %bb5
bb4:
  store %olang.scope zeroinitializer, ptr %s2
  %t15 = load ptr, ptr %l0, !tbaa !29
  %t17 = getelementptr %"compiler/mir:verifier", ptr %t15, i32 0, i32 2
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v0, ptr %s2, ptr %t17, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d76, i32 0, i32 1) })
  br label %bb6
bb5:
  %t19 = load ptr, ptr %l0, !tbaa !29
  %t21 = getelementptr %"compiler/mir:verifier", ptr %t19, i32 0, i32 4
  %t22 = load i64, ptr %t21, !tbaa !24
  %t24 = icmp slt i64 %t22, 0
  br i1 %t24, label %bb7, label %bb8
bb6:
  call void @__olang_scope_close(ptr %s2)
  br label %bb12
bb7:
  store %olang.scope zeroinitializer, ptr %s4
  %t26 = load ptr, ptr %l0, !tbaa !29
  %t28 = getelementptr %"compiler/mir:verifier", ptr %t26, i32 0, i32 2
  %t29 = load ptr, ptr %l0, !tbaa !29
  %t31 = getelementptr %"compiler/mir:verifier", ptr %t29, i32 0, i32 3
  %t32 = load i64, ptr %t31, !tbaa !24
  %t33 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d77, i32 0, i32 1) }, 1
  %t34 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d77, i32 0, i32 1) }, 0
  %t36 = call i64 @__olang_fmt_i64(ptr null, i64 %t32)
  %t37 = add i64 %t34, %t36
  %t38 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d78, i32 0, i32 1) }, 1
  %t39 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d78, i32 0, i32 1) }, 0
  %t40 = add i64 %t37, %t39
  %t41 = call ptr @__olang_scope_alloc(ptr %s4, i64 %t40)
  call void @olang_textcopy(ptr %t41, ptr %t33, i64 %t34)
  %t42 = getelementptr i8, ptr %t41, i64 %t34
  %t43 = call i64 @__olang_fmt_i64(ptr %t42, i64 %t32)
  %t44 = getelementptr i8, ptr %t42, i64 %t36
  call void @olang_textcopy(ptr %t44, ptr %t38, i64 %t39)
  %t45 = insertvalue { i64, ptr } undef, i64 %t40, 0
  %t46 = insertvalue { i64, ptr } %t45, ptr %t41, 1
  %t48 = extractvalue { i64, ptr } %t46, 0
  %t49 = extractvalue { i64, ptr } %t46, 1
  %t50 = mul i64 %t48, 1
  %t51 = call ptr @__olang_scope_alloc(ptr %s4, i64 %t50)
  call void @llvm.memcpy.p0.p0.i64(ptr %t51, ptr %t49, i64 %t50, i1 false)
  %t52 = insertvalue { i64, ptr } undef, i64 %t48, 0
  %t53 = insertvalue { i64, ptr } %t52, ptr %t51, 1
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v0, ptr %s4, ptr %t28, { i64, ptr } %t53)
  br label %bb9
bb8:
  store %olang.scope zeroinitializer, ptr %s6
  %t56 = load ptr, ptr %l0, !tbaa !29
  %t58 = getelementptr %"compiler/mir:verifier", ptr %t56, i32 0, i32 2
  %t59 = load ptr, ptr %l0, !tbaa !29
  %t61 = getelementptr %"compiler/mir:verifier", ptr %t59, i32 0, i32 3
  %t62 = load i64, ptr %t61, !tbaa !24
  %t63 = load ptr, ptr %l0, !tbaa !29
  %t65 = getelementptr %"compiler/mir:verifier", ptr %t63, i32 0, i32 4
  %t66 = load i64, ptr %t65, !tbaa !24
  %t67 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d79, i32 0, i32 1) }, 1
  %t68 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d79, i32 0, i32 1) }, 0
  %t70 = call i64 @__olang_fmt_i64(ptr null, i64 %t62)
  %t71 = add i64 %t68, %t70
  %t72 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d80, i32 0, i32 1) }, 1
  %t73 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d80, i32 0, i32 1) }, 0
  %t74 = add i64 %t71, %t73
  %t76 = call i64 @__olang_fmt_i64(ptr null, i64 %t66)
  %t77 = add i64 %t74, %t76
  %t78 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d81, i32 0, i32 1) }, 1
  %t79 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d81, i32 0, i32 1) }, 0
  %t80 = add i64 %t77, %t79
  %t81 = call ptr @__olang_scope_alloc(ptr %s6, i64 %t80)
  call void @olang_textcopy(ptr %t81, ptr %t67, i64 %t68)
  %t82 = getelementptr i8, ptr %t81, i64 %t68
  %t83 = call i64 @__olang_fmt_i64(ptr %t82, i64 %t62)
  %t84 = getelementptr i8, ptr %t82, i64 %t70
  call void @olang_textcopy(ptr %t84, ptr %t72, i64 %t73)
  %t85 = getelementptr i8, ptr %t84, i64 %t73
  %t86 = call i64 @__olang_fmt_i64(ptr %t85, i64 %t66)
  %t87 = getelementptr i8, ptr %t85, i64 %t76
  call void @olang_textcopy(ptr %t87, ptr %t78, i64 %t79)
  %t88 = insertvalue { i64, ptr } undef, i64 %t80, 0
  %t89 = insertvalue { i64, ptr } %t88, ptr %t81, 1
  %t91 = extractvalue { i64, ptr } %t89, 0
  %t92 = extractvalue { i64, ptr } %t89, 1
  %t93 = mul i64 %t91, 1
  %t94 = call ptr @__olang_scope_alloc(ptr %s6, i64 %t93)
  call void @llvm.memcpy.p0.p0.i64(ptr %t94, ptr %t92, i64 %t93, i1 false)
  %t95 = insertvalue { i64, ptr } undef, i64 %t91, 0
  %t96 = insertvalue { i64, ptr } %t95, ptr %t94, 1
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v0, ptr %s6, ptr %t58, { i64, ptr } %t96)
  br label %bb10
bb9:
  call void @__olang_scope_close(ptr %s4)
  br label %bb11
bb10:
  call void @__olang_scope_close(ptr %s6)
  br label %bb11
bb11:
  br label %bb12
bb12:
  %t99 = load ptr, ptr %l0, !tbaa !29
  %t101 = getelementptr %"compiler/mir:verifier", ptr %t99, i32 0, i32 2
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v0, ptr %v1, ptr %t101, { i64, ptr } %a1)
  br label %bb13
bb13:
  %t105 = load ptr, ptr %l0, !tbaa !29
  %t107 = getelementptr %"compiler/mir:verifier", ptr %t105, i32 0, i32 2
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePushChar(ptr %v0, ptr %t107, i8 10)
  br label %bb14
bb14:
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2fmir_2ecompiler_2fmir_3averifier_2ebuilder(ptr %v0, ptr %v1, ptr %a0, { i64, [1 x i64] } %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca { i64, [1 x i64] }
  %l2 = alloca i32
  %l3 = alloca i64
  %l5 = alloca i1
  %l11 = alloca ptr
  %l15 = alloca %"compiler/mir:ScopeInfo"
  %l23 = alloca ptr
  %l26 = alloca { i64, [1 x i64] }
  %s4 = alloca %olang.scope
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
  br label %bb5
bb3:
  %t10 = load ptr, ptr %l0, !tbaa !29
  %t12 = getelementptr %"compiler/mir:verifier", ptr %t10, i32 0, i32 0
  %t13 = load ptr, ptr %t12, !tbaa !29
  %t15 = getelementptr %"compiler/mir:Fn", ptr %t13, i32 0, i32 8
  store ptr %t15, ptr %l11, !tbaa !29
  %t16 = load i32, ptr %l2, !tbaa !23
  %t18 = sext i32 %t16 to i64
  %t19 = load ptr, ptr %l11, !tbaa !29
  %t20 = call ptr @__olang_scope_or(ptr %v1, ptr %t19)
  %t21 = ptrtoint ptr %t20 to i64
  %t23 = inttoptr i64 %t21 to ptr
  %t24 = load ptr, ptr %l11, !tbaa !29
  %t26 = call %"compiler/mir:ScopeInfo" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aScopeInfo_3e_2eAt_3ccompiler_2fmir_3aScopeInfo_3e(ptr %t23, ptr %t24, i64 %t18)
  store %"compiler/mir:ScopeInfo" %t26, ptr %l15
  br label %bb4
bb4:
  %t27 = getelementptr %"compiler/mir:ScopeInfo", ptr %l15, i32 0, i32 0
  %t28 = load i32, ptr %t27, !range !{i32 0, i32 7}
  %t30 = trunc i64 6 to i32
  %t31 = icmp eq i32 %t28, %t30
  store i1 %t31, ptr %l5, !tbaa !21
  br label %bb15
bb5:
  %t33 = load { i64, [1 x i64] }, ptr %l1
  %t35 = extractvalue { i64, [1 x i64] } %t33, 0
  %t36 = icmp eq i64 %t35, 1
  br i1 %t36, label %bb6, label %bb7
bb6:
  %t38 = getelementptr { i64, [1 x i64] }, ptr %l1, i32 0, i32 1
  %t39 = getelementptr { i64 }, ptr %t38, i32 0, i32 0
  %t40 = load i64, ptr %t39
  store i64 %t40, ptr %l3, !tbaa !24
  br label %bb8
bb7:
  br label %bb10
bb8:
  %t42 = load ptr, ptr %l0, !tbaa !29
  %t44 = getelementptr %"compiler/mir:verifier", ptr %t42, i32 0, i32 0
  %t45 = load ptr, ptr %t44, !tbaa !29
  %t47 = getelementptr %"compiler/mir:Fn", ptr %t45, i32 0, i32 6
  store ptr %t47, ptr %l23, !tbaa !29
  %t48 = load i64, ptr %l3, !tbaa !24
  %t49 = load ptr, ptr %l23, !tbaa !29
  %t50 = call ptr @__olang_scope_or(ptr %v1, ptr %t49)
  %t51 = ptrtoint ptr %t50 to i64
  %t53 = inttoptr i64 %t51 to ptr
  %t54 = load ptr, ptr %l23, !tbaa !29
  %t56 = call { i64, [1 x i64] } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aVarKind_3e_2eAt_3ccompiler_2fmir_3aVarKind_3e(ptr %t53, ptr %t54, i64 %t48)
  store { i64, [1 x i64] } %t56, ptr %l26
  br label %bb9
bb9:
  %t57 = load { i64, [1 x i64] }, ptr %l26
  %t59 = extractvalue { i64, [1 x i64] } %t57, 0
  %t60 = icmp eq i64 %t59, 6
  store i1 %t60, ptr %l5, !tbaa !21
  br label %bb15
bb10:
  br i1 true, label %bb11, label %bb12
bb11:
  br label %bb13
bb12:
  br label %bb14
bb13:
  store i1 false, ptr %l5, !tbaa !21
  br label %bb15
bb14:
  call void @__olang_check_failed(ptr @olang_loc_9c289c76542078e7_53d9d4aa9af07973)
  unreachable
bb15:
  %t62 = load i1, ptr %l5, !tbaa !21
  %t65 = xor i1 %t62, true
  br i1 %t65, label %bb16, label %bb17
bb16:
  store %olang.scope zeroinitializer, ptr %s4
  %t67 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2fmir_2ecompiler_2fmir_3averifier_2ebad(ptr %v0, ptr %s4, ptr %t67, { i64, ptr } { i64 27, ptr getelementptr inbounds (<{ i64, [27 x i8] }>, ptr @.d82, i32 0, i32 1) })
  br label %bb18
bb17:
  br label %bb19
bb18:
  call void @__olang_scope_close(ptr %s4)
  br label %bb19
bb19:
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2fmir_2ecompiler_2fmir_3averifier_2ecalleeReads(ptr %v0, ptr %v1, ptr %a0, { i64, [7 x i64] } %a1) #0 {
entry:
  %l1 = alloca { i64, [7 x i64] }
  %l2 = alloca { i64, [4 x i64] }
  store { i64, [7 x i64] } %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load { i64, [7 x i64] }, ptr %l1
  %t3 = extractvalue { i64, [7 x i64] } %t1, 0
  %t4 = icmp eq i64 %t3, 2
  br i1 %t4, label %bb1, label %bb2
bb1:
  %t6 = getelementptr { i64, [7 x i64] }, ptr %l1, i32 0, i32 1
  %t7 = getelementptr { { i64, [4 x i64] } }, ptr %t6, i32 0, i32 0
  %t8 = load { i64, [4 x i64] }, ptr %t7
  store { i64, [4 x i64] } %t8, ptr %l2
  br label %bb3
bb2:
  br label %bb5
bb3:
  %t11 = load { i64, [4 x i64] }, ptr %l2
  call void @compiler_2fmir_2ecompiler_2fmir_3averifier_2ereads(ptr %v0, ptr %v1, ptr %a0, { i64, [4 x i64] } %t11)
  br label %bb4
bb4:
  br label %bb10
bb5:
  br i1 true, label %bb6, label %bb7
bb6:
  br label %bb8
bb7:
  br label %bb9
bb8:
  br label %bb10
bb9:
  call void @__olang_check_failed(ptr @olang_loc_62f33ceaa6d0d243_a40627fd170062cf)
  unreachable
bb10:
  br label %ret
ret:
  ret void
}

define dso_local { i64, ptr } @compiler_2fmir_2ecompiler_2fmir_3averifier_2ecanon(ptr %v0, ptr %v1, ptr %v2, ptr %a0, i32 %a1) #0 {
entry:
  %l3 = alloca ptr
  %l7 = alloca { i64, ptr }
  %rv = alloca { i64, ptr }
  br label %start
start:
  br label %bb0
bb0:
  %t3 = getelementptr %"compiler/mir:verifier", ptr %a0, i32 0, i32 1
  %t4 = load ptr, ptr %t3, !tbaa !29
  store ptr %t4, ptr %l3, !tbaa !29
  %t6 = load ptr, ptr %l3, !tbaa !29
  %t7 = call ptr @__olang_scope_or(ptr %v2, ptr %t6)
  %t8 = ptrtoint ptr %t7 to i64
  %t10 = inttoptr i64 %t8 to ptr
  %t12 = inttoptr i64 0 to ptr
  %t13 = load ptr, ptr %l3, !tbaa !29
  %t15 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eCanon(ptr %t10, ptr %v1, ptr %t12, ptr %t13, i32 %a1)
  store { i64, ptr } %t15, ptr %l7
  br label %bb1
bb1:
  %t16 = load { i64, ptr }, ptr %l7, !tbaa !27
  store { i64, ptr } %t16, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local i32 @compiler_2fmir_2ecompiler_2fmir_3averifier_2eheld(ptr %v0, ptr %v1, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca ptr
  %l3 = alloca i32
  %l4 = alloca { i64, ptr }
  %l5 = alloca { i64, ptr }
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca i64
  %l14 = alloca ptr
  %l17 = alloca i32
  %l18 = alloca ptr
  %l21 = alloca i32
  %l24 = alloca ptr
  %l25 = alloca ptr
  %l28 = alloca i32
  %l30 = alloca { i64, ptr }
  %l32 = alloca i64
  %l41 = alloca i64
  %l44 = alloca i64
  %l62 = alloca i64
  %l66 = alloca { i64, ptr }
  %l69 = alloca i32
  %l72 = alloca ptr
  %l73 = alloca ptr
  %l76 = alloca i32
  %l78 = alloca i32
  %l82 = alloca i32
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
  store ptr %t4, ptr %l2, !tbaa !29
  %t6 = load ptr, ptr %l2, !tbaa !29
  store ptr %t6, ptr %l14, !tbaa !29
  %t7 = load i32, ptr %l1, !tbaa !23
  %t8 = load ptr, ptr %l14, !tbaa !29
  %t9 = call ptr @__olang_scope_or(ptr %v1, ptr %t8)
  %t10 = ptrtoint ptr %t9 to i64
  %t12 = inttoptr i64 %t10 to ptr
  %t13 = load ptr, ptr %l14, !tbaa !29
  %t15 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eResult(ptr %t12, ptr %t13, i32 %t7)
  store i32 %t15, ptr %l17
  br label %bb1
bb1:
  %t16 = load i32, ptr %l17, !tbaa !23
  store i32 %t16, ptr %l3, !tbaa !23
  %t17 = load ptr, ptr %l2, !tbaa !29
  store ptr %t17, ptr %l18, !tbaa !29
  %t18 = load i32, ptr %l3, !tbaa !23
  %t19 = load ptr, ptr %l18, !tbaa !29
  %t20 = call ptr @__olang_scope_or(ptr %v1, ptr %t19)
  %t21 = ptrtoint ptr %t20 to i64
  %t23 = inttoptr i64 %t21 to ptr
  %t24 = load ptr, ptr %l18, !tbaa !29
  %t26 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %t23, ptr %t24, i32 %t18)
  store i32 %t26, ptr %l21
  br label %bb2
bb2:
  %t27 = load i32, ptr %l21, !range !{i32 0, i32 33}
  %t29 = trunc i64 22 to i32
  %t30 = icmp eq i32 %t27, %t29
  br i1 %t30, label %bb3, label %bb4
bb3:
  store %olang.scope zeroinitializer, ptr %s1
  %t32 = load ptr, ptr %l2, !tbaa !29
  store ptr %t32, ptr %l24, !tbaa !29
  %t33 = load ptr, ptr %l2, !tbaa !29
  store ptr %t33, ptr %l25, !tbaa !29
  %t34 = load i32, ptr %l3, !tbaa !23
  %t35 = load ptr, ptr %l25, !tbaa !29
  %t36 = call ptr @__olang_scope_or(ptr %v1, ptr %t35)
  %t37 = ptrtoint ptr %t36 to i64
  %t39 = inttoptr i64 %t37 to ptr
  %t40 = load ptr, ptr %l25, !tbaa !29
  %t42 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParts(ptr %t39, ptr %t40, i32 %t34)
  store i32 %t42, ptr %l28
  br label %bb5
bb4:
  br label %bb26
bb5:
  %t43 = load ptr, ptr %l24, !tbaa !29
  %t44 = call ptr @__olang_scope_or(ptr %v1, ptr %t43)
  %t45 = ptrtoint ptr %t44 to i64
  %t47 = inttoptr i64 %t45 to ptr
  %t48 = load ptr, ptr %l24, !tbaa !29
  %t49 = load i32, ptr %l28, !tbaa !23
  %t50 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %t47, ptr %s1, ptr %t48, i32 %t49)
  store { i64, ptr } %t50, ptr %l30
  br label %bb6
bb6:
  %t51 = load { i64, ptr }, ptr %l30, !tbaa !27
  store { i64, ptr } %t51, ptr %l4, !tbaa !27
  %t52 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t54 = extractvalue { i64, ptr } %t52, 0
  store i64 %t54, ptr %l32, !tbaa !24
  %t55 = load i64, ptr %l32, !tbaa !24
  %t56 = icmp sge i64 %t55, 0
  br i1 %t56, label %bb7, label %bb8
bb7:
  %t58 = load i64, ptr %l32, !tbaa !24
  %t59 = icmp sle i64 %t58, 2305843009213693951
  br i1 %t59, label %bb9, label %bb10
bb8:
  call void @__olang_check_failed(ptr @olang_loc_f7be8aa76db69854_ffaa205b85e46cd8)
  unreachable
bb9:
  %t61 = load i64, ptr %l32, !tbaa !24
  %t62 = mul i64 %t61, 4
  %t63 = call ptr @__olang_scope_alloc_zeroed(ptr %s1, i64 %t62)
  %t64 = insertvalue { i64, ptr } undef, i64 %t61, 0
  %t65 = insertvalue { i64, ptr } %t64, ptr %t63, 1
  store { i64, ptr } %t65, ptr %l5, !tbaa !27
  store i64 0, ptr %l6, !tbaa !24
  %t67 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t69 = extractvalue { i64, ptr } %t67, 0
  store i64 %t69, ptr %l7, !tbaa !24
  store i64 1, ptr %l8, !tbaa !24
  %t71 = load i64, ptr %l7, !tbaa !24
  %t72 = load i64, ptr %l6, !tbaa !24
  %t75 = icmp sgt i64 %t71, %t72
  br i1 %t75, label %bb11, label %bb12
bb10:
  call void @__olang_check_failed(ptr @olang_loc_f7be8aa76db69854_ffaa205b85e46cd8)
  unreachable
bb11:
  %t77 = load i64, ptr %l8, !tbaa !24
  %t79 = icmp sgt i64 %t77, 0
  br i1 %t79, label %bb13, label %bb14
bb12:
  store i64 0, ptr %l41, !tbaa !24
  br label %bb16
bb13:
  %t81 = load i64, ptr %l7, !tbaa !24
  %t82 = load i64, ptr %l6, !tbaa !24
  %t85 = sub i64 %t81, %t82
  %t86 = load i64, ptr %l8, !tbaa !24
  %t89 = add i64 %t85, %t86
  %t91 = sub i64 %t89, 1
  %t92 = load i64, ptr %l8, !tbaa !24
  %t95 = sdiv i64 %t91, %t92
  store i64 %t95, ptr %l44, !tbaa !24
  br label %bb15
bb14:
  store i64 0, ptr %l44, !tbaa !24
  br label %bb15
bb15:
  %t97 = load i64, ptr %l44, !tbaa !24
  store i64 %t97, ptr %l41, !tbaa !24
  br label %bb16
bb16:
  %t98 = load i64, ptr %l41, !tbaa !24
  store i64 %t98, ptr %l9, !tbaa !24
  store i64 0, ptr %l10, !tbaa !24
  br label %bb17
bb17:
  %t99 = load i64, ptr %l10, !tbaa !24
  %t100 = load i64, ptr %l9, !tbaa !24
  %t103 = icmp slt i64 %t99, %t100
  %t105 = xor i1 %t103, true
  br i1 %t105, label %bb18, label %bb19
bb18:
  br label %bb23
bb19:
  br label %bb20
bb20:
  %t107 = load i64, ptr %l6, !tbaa !24
  %t108 = load i64, ptr %l10, !tbaa !24
  %t109 = load i64, ptr %l8, !tbaa !24
  %t112 = mul i64 %t108, %t109
  %t115 = add i64 %t107, %t112
  store i64 %t115, ptr %l11, !tbaa !24
  %t117 = load i64, ptr %l11, !tbaa !24
  store i64 %t117, ptr %l62, !tbaa !24
  %t118 = load ptr, ptr %l0, !tbaa !29
  %t119 = load i32, ptr %l1, !tbaa !23
  %t120 = load i64, ptr %l11, !tbaa !24
  %t121 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t121, ptr %l66, !tbaa !27
  %t122 = load i64, ptr %l11, !tbaa !24
  %t124 = getelementptr { i64, ptr }, ptr %l66, i32 0, i32 1
  %t125 = load ptr, ptr %t124, !tbaa !27
  %t126 = getelementptr i32, ptr %t125, i64 %t122
  %t127 = load i32, ptr %t126, !tbaa !33
  %t132 = call i32 @compiler_2fmir_2ecompiler_2fmir_3averifier_2ebuiltPart(ptr %v0, ptr %v1, ptr %t118, i32 %t119, i64 %t120, i32 %t127)
  store i32 %t132, ptr %l69
  br label %bb21
bb21:
  %t133 = load i32, ptr %l69, !tbaa !23
  %t134 = load i64, ptr %l62, !tbaa !24
  %t135 = getelementptr { i64, ptr }, ptr %l5, i32 0, i32 1
  %t136 = load ptr, ptr %t135, !tbaa !27
  %t137 = getelementptr i32, ptr %t136, i64 %t134
  store i32 %t133, ptr %t137, !tbaa !33
  br label %bb22
bb22:
  %t138 = load i64, ptr %l10, !tbaa !24
  %t140 = add i64 %t138, 1
  store i64 %t140, ptr %l10, !tbaa !24
  br label %bb17
bb23:
  %t142 = load ptr, ptr %l2, !tbaa !29
  store ptr %t142, ptr %l72, !tbaa !29
  %t143 = load ptr, ptr %l2, !tbaa !29
  store ptr %t143, ptr %l73, !tbaa !29
  %t144 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t145 = load ptr, ptr %l73, !tbaa !29
  %t146 = call ptr @__olang_scope_or(ptr %v1, ptr %t145)
  %t147 = ptrtoint ptr %t146 to i64
  %t149 = inttoptr i64 %t147 to ptr
  %t150 = load ptr, ptr %l73, !tbaa !29
  %t152 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eList(ptr %t149, ptr %s1, ptr %t150, { i64, ptr } %t144)
  store i32 %t152, ptr %l76
  br label %bb24
bb24:
  %t153 = load ptr, ptr %l72, !tbaa !29
  %t154 = call ptr @__olang_scope_or(ptr %v1, ptr %t153)
  %t155 = ptrtoint ptr %t154 to i64
  %t157 = inttoptr i64 %t155 to ptr
  %t158 = load ptr, ptr %l72, !tbaa !29
  %t159 = load i32, ptr %l76, !tbaa !23
  %t160 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eTuple(ptr %t157, ptr %t158, i32 %t159)
  store i32 %t160, ptr %l78
  br label %bb25
bb25:
  call void @__olang_scope_close(ptr %s1)
  %t161 = load i32, ptr %l78, !tbaa !23
  store i32 %t161, ptr %rv
  br label %ret
bb26:
  %t162 = load ptr, ptr %l0, !tbaa !29
  %t163 = load i32, ptr %l1, !tbaa !23
  %t164 = load i32, ptr %l3, !tbaa !23
  %t168 = call i32 @compiler_2fmir_2ecompiler_2fmir_3averifier_2ebuiltPart(ptr %v0, ptr %v1, ptr %t162, i32 %t163, i64 0, i32 %t164)
  store i32 %t168, ptr %l82
  br label %bb27
bb27:
  %t169 = load i32, ptr %l82, !tbaa !23
  store i32 %t169, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local i1 @compiler_2fmir_2ecompiler_2fmir_3averifier_2eisText(ptr %v0, ptr %v1, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca ptr
  %l4 = alloca i32
  %l7 = alloca ptr
  %l8 = alloca ptr
  %l11 = alloca i32
  %l13 = alloca i1
  %l14 = alloca i32
  %l15 = alloca ptr
  %l16 = alloca ptr
  %l19 = alloca i32
  %l21 = alloca i32
  %l25 = alloca i32
  %l29 = alloca i1
  %l30 = alloca ptr
  %l31 = alloca ptr
  %l34 = alloca i32
  %l36 = alloca i32
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/mir:verifier", ptr %t1, i32 0, i32 1
  %t4 = load ptr, ptr %t3, !tbaa !29
  store ptr %t4, ptr %l2, !tbaa !29
  %t6 = load ptr, ptr %l2, !tbaa !29
  store ptr %t6, ptr %l7, !tbaa !29
  %t7 = load ptr, ptr %l2, !tbaa !29
  store ptr %t7, ptr %l8, !tbaa !29
  %t8 = load i32, ptr %l1, !tbaa !23
  %t9 = load ptr, ptr %l8, !tbaa !29
  %t10 = call ptr @__olang_scope_or(ptr %v1, ptr %t9)
  %t11 = ptrtoint ptr %t10 to i64
  %t13 = inttoptr i64 %t11 to ptr
  %t14 = load ptr, ptr %l8, !tbaa !29
  %t16 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %t13, ptr %t14, i32 %t8)
  store i32 %t16, ptr %l11
  br label %bb1
bb1:
  %t17 = load ptr, ptr %l7, !tbaa !29
  %t18 = call ptr @__olang_scope_or(ptr %v1, ptr %t17)
  %t19 = ptrtoint ptr %t18 to i64
  %t21 = inttoptr i64 %t19 to ptr
  %t22 = load ptr, ptr %l7, !tbaa !29
  %t23 = load i32, ptr %l11, !tbaa !23
  %t24 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsRef(ptr %t21, ptr %t22, i32 %t23)
  store i1 %t24, ptr %l13
  br label %bb2
bb2:
  %t25 = load i1, ptr %l13, !tbaa !21
  br i1 %t25, label %bb3, label %bb4
bb3:
  %t26 = load ptr, ptr %l2, !tbaa !29
  store ptr %t26, ptr %l15, !tbaa !29
  %t27 = load ptr, ptr %l2, !tbaa !29
  store ptr %t27, ptr %l16, !tbaa !29
  %t28 = load i32, ptr %l1, !tbaa !23
  %t29 = load ptr, ptr %l16, !tbaa !29
  %t30 = call ptr @__olang_scope_or(ptr %v1, ptr %t29)
  %t31 = ptrtoint ptr %t30 to i64
  %t33 = inttoptr i64 %t31 to ptr
  %t34 = load ptr, ptr %l16, !tbaa !29
  %t36 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %t33, ptr %t34, i32 %t28)
  store i32 %t36, ptr %l19
  br label %bb5
bb4:
  %t37 = load i32, ptr %l1, !tbaa !23
  store i32 %t37, ptr %l14, !tbaa !23
  br label %bb7
bb5:
  %t39 = load ptr, ptr %l15, !tbaa !29
  %t40 = call ptr @__olang_scope_or(ptr %v1, ptr %t39)
  %t41 = ptrtoint ptr %t40 to i64
  %t43 = inttoptr i64 %t41 to ptr
  %t44 = load ptr, ptr %l15, !tbaa !29
  %t45 = load i32, ptr %l19, !tbaa !23
  %t46 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eReferent(ptr %t43, ptr %t44, i32 %t45)
  store i32 %t46, ptr %l21
  br label %bb6
bb6:
  %t47 = load i32, ptr %l21, !tbaa !23
  store i32 %t47, ptr %l14, !tbaa !23
  br label %bb7
bb7:
  %t48 = load i32, ptr %l14, !tbaa !23
  %t49 = load ptr, ptr %l0, !tbaa !29
  %t53 = call i32 @compiler_2fmir_2ecompiler_2fmir_3averifier_2earrayOf(ptr %v0, ptr %v1, ptr %t49, i32 %t48)
  store i32 %t53, ptr %l25
  br label %bb8
bb8:
  %t54 = load i32, ptr %l25, !tbaa !23
  store i32 %t54, ptr %l4, !tbaa !23
  %t55 = load i32, ptr %l4, !tbaa !23
  %t56 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t59 = icmp ne i32 %t55, %t56
  br i1 %t59, label %bb9, label %bb10
bb9:
  %t61 = load ptr, ptr %l2, !tbaa !29
  store ptr %t61, ptr %l30, !tbaa !29
  %t62 = load ptr, ptr %l2, !tbaa !29
  store ptr %t62, ptr %l31, !tbaa !29
  %t63 = load i32, ptr %l4, !tbaa !23
  %t64 = load ptr, ptr %l31, !tbaa !29
  %t65 = call ptr @__olang_scope_or(ptr %v1, ptr %t64)
  %t66 = ptrtoint ptr %t65 to i64
  %t68 = inttoptr i64 %t66 to ptr
  %t69 = load ptr, ptr %l31, !tbaa !29
  %t71 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eElem(ptr %t68, ptr %t69, i32 %t63)
  store i32 %t71, ptr %l34
  br label %bb11
bb10:
  store i1 false, ptr %l29, !tbaa !21
  br label %bb13
bb11:
  %t72 = load ptr, ptr %l30, !tbaa !29
  %t73 = call ptr @__olang_scope_or(ptr %v1, ptr %t72)
  %t74 = ptrtoint ptr %t73 to i64
  %t76 = inttoptr i64 %t74 to ptr
  %t77 = load ptr, ptr %l30, !tbaa !29
  %t78 = load i32, ptr %l34, !tbaa !23
  %t79 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %t76, ptr %t77, i32 %t78)
  store i32 %t79, ptr %l36
  br label %bb12
bb12:
  %t80 = load i32, ptr %l36, !tbaa !23
  %t81 = icmp eq i32 %t80, 7
  store i1 %t81, ptr %l29, !tbaa !21
  br label %bb13
bb13:
  %t83 = load i1, ptr %l29, !tbaa !21
  store i1 %t83, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local void @compiler_2fmir_2ecompiler_2fmir_3averifier_2eitemsBefore(ptr %v0, ptr %v1, ptr %a0, %"compiler/mir:Range" %a1, i64 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/mir:Range"
  %l2 = alloca i64
  %l3 = alloca i32
  %l4 = alloca i32
  %l5 = alloca i32
  %l6 = alloca i32
  %l7 = alloca i32
  %l9 = alloca i32
  %l14 = alloca i32
  %l17 = alloca i32
  %l37 = alloca ptr
  %l44 = alloca i32
  %l47 = alloca i1
  %s3 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store %"compiler/mir:Range" %a1, ptr %l1
  store i64 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  store i32 0, ptr %l3, !tbaa !23
  %t1 = getelementptr %"compiler/mir:Range", ptr %l1, i32 0, i32 1
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
  store i32 0, ptr %l14, !tbaa !23
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
  store i32 %t28, ptr %l17, !tbaa !23
  br label %bb5
bb4:
  store i32 0, ptr %l17, !tbaa !23
  br label %bb5
bb5:
  %t30 = load i32, ptr %l17, !tbaa !23
  store i32 %t30, ptr %l14, !tbaa !23
  br label %bb6
bb6:
  %t31 = load i32, ptr %l14, !tbaa !23
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
  br label %bb20
bb9:
  br label %bb10
bb10:
  %t40 = load i32, ptr %l3, !tbaa !23
  %t41 = load i32, ptr %l7, !tbaa !23
  %t42 = load i32, ptr %l5, !tbaa !23
  %t45 = mul i32 %t41, %t42
  %t48 = add i32 %t40, %t45
  %t50 = load ptr, ptr %l0, !tbaa !29
  %t52 = getelementptr %"compiler/mir:verifier", ptr %t50, i32 0, i32 0
  %t53 = load ptr, ptr %t52, !tbaa !29
  %t55 = getelementptr %"compiler/mir:Fn", ptr %t53, i32 0, i32 20
  store ptr %t55, ptr %l37, !tbaa !29
  %t56 = getelementptr %"compiler/mir:Range", ptr %l1, i32 0, i32 0
  %t57 = load i32, ptr %t56, !tbaa !23
  %t59 = sext i32 %t57 to i64
  %t62 = sext i32 %t48 to i64
  %t65 = add i64 %t59, %t62
  %t66 = load ptr, ptr %l37, !tbaa !29
  %t67 = call ptr @__olang_scope_or(ptr %v1, ptr %t66)
  %t68 = ptrtoint ptr %t67 to i64
  %t70 = inttoptr i64 %t68 to ptr
  %t71 = load ptr, ptr %l37, !tbaa !29
  %t73 = call i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI32_3e_2eAt_3cI32_3e(ptr %t70, ptr %t71, i64 %t65)
  store i32 %t73, ptr %l44
  br label %bb11
bb11:
  %t74 = load i32, ptr %l44, !tbaa !23
  store i32 %t74, ptr %l9, !tbaa !23
  %t75 = load i32, ptr %l9, !tbaa !23
  %t77 = icmp slt i32 %t75, 0
  br i1 %t77, label %bb12, label %bb13
bb12:
  store i1 true, ptr %l47, !tbaa !21
  br label %bb14
bb13:
  %t79 = load i32, ptr %l9, !tbaa !23
  %t80 = load i64, ptr %l2, !tbaa !24
  %t82 = trunc i64 %t80 to i32
  %t85 = icmp sge i32 %t79, %t82
  store i1 %t85, ptr %l47, !tbaa !21
  br label %bb14
bb14:
  %t87 = load i1, ptr %l47, !tbaa !21
  br i1 %t87, label %bb15, label %bb16
bb15:
  store %olang.scope zeroinitializer, ptr %s3
  %t88 = load ptr, ptr %l0, !tbaa !29
  %t89 = load i64, ptr %l2, !tbaa !24
  %t90 = load i32, ptr %l9, !tbaa !23
  %t91 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d83, i32 0, i32 1) }, 1
  %t92 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d83, i32 0, i32 1) }, 0
  %t94 = call i64 @__olang_fmt_i64(ptr null, i64 %t89)
  %t95 = add i64 %t92, %t94
  %t96 = extractvalue { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d84, i32 0, i32 1) }, 1
  %t97 = extractvalue { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d84, i32 0, i32 1) }, 0
  %t98 = add i64 %t95, %t97
  %t100 = sext i32 %t90 to i64
  %t101 = call i64 @__olang_fmt_i64(ptr null, i64 %t100)
  %t102 = add i64 %t98, %t101
  %t103 = extractvalue { i64, ptr } { i64 20, ptr getelementptr inbounds (<{ i64, [20 x i8] }>, ptr @.d85, i32 0, i32 1) }, 1
  %t104 = extractvalue { i64, ptr } { i64 20, ptr getelementptr inbounds (<{ i64, [20 x i8] }>, ptr @.d85, i32 0, i32 1) }, 0
  %t105 = add i64 %t102, %t104
  %t106 = call ptr @__olang_scope_alloc(ptr %s3, i64 %t105)
  call void @olang_textcopy(ptr %t106, ptr %t91, i64 %t92)
  %t107 = getelementptr i8, ptr %t106, i64 %t92
  %t108 = call i64 @__olang_fmt_i64(ptr %t107, i64 %t89)
  %t109 = getelementptr i8, ptr %t107, i64 %t94
  call void @olang_textcopy(ptr %t109, ptr %t96, i64 %t97)
  %t110 = getelementptr i8, ptr %t109, i64 %t97
  %t111 = call i64 @__olang_fmt_i64(ptr %t110, i64 %t100)
  %t112 = getelementptr i8, ptr %t110, i64 %t101
  call void @olang_textcopy(ptr %t112, ptr %t103, i64 %t104)
  %t113 = insertvalue { i64, ptr } undef, i64 %t105, 0
  %t114 = insertvalue { i64, ptr } %t113, ptr %t106, 1
  %t116 = extractvalue { i64, ptr } %t114, 0
  %t117 = extractvalue { i64, ptr } %t114, 1
  %t118 = mul i64 %t116, 1
  %t119 = call ptr @__olang_scope_alloc(ptr %s3, i64 %t118)
  call void @llvm.memcpy.p0.p0.i64(ptr %t119, ptr %t117, i64 %t118, i1 false)
  %t120 = insertvalue { i64, ptr } undef, i64 %t116, 0
  %t121 = insertvalue { i64, ptr } %t120, ptr %t119, 1
  call void @compiler_2fmir_2ecompiler_2fmir_3averifier_2ebad(ptr %v0, ptr %s3, ptr %t88, { i64, ptr } %t121)
  br label %bb17
bb16:
  br label %bb18
bb17:
  call void @__olang_scope_close(ptr %s3)
  br label %bb18
bb18:
  br label %bb19
bb19:
  %t124 = load i32, ptr %l7, !tbaa !23
  %t126 = add i32 %t124, 1
  store i32 %t126, ptr %l7, !tbaa !23
  br label %bb7
bb20:
  br label %ret
ret:
  ret void
}

define dso_local i1 @compiler_2fmir_2ecompiler_2fmir_3averifier_2elocal(ptr %v0, ptr %v1, ptr %a0, i32 %a1) #0 {
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
  %t13 = getelementptr %"compiler/mir:Fn", ptr %t11, i32 0, i32 7
  store ptr %t13, ptr %l9, !tbaa !29
  %t14 = load ptr, ptr %l9, !tbaa !29
  %t15 = call ptr @__olang_scope_or(ptr %v1, ptr %t14)
  %t16 = ptrtoint ptr %t15 to i64
  %t18 = inttoptr i64 %t16 to ptr
  %t19 = load ptr, ptr %l9, !tbaa !29
  %t20 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aLocal_3e_2eLen_3ccompiler_2fmir_3aLocal_3e(ptr %t18, ptr %t19)
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
  %t28 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d86, i32 0, i32 1) }, 1
  %t29 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d86, i32 0, i32 1) }, 0
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

define dso_local i32 @compiler_2fmir_2ecompiler_2fmir_3averifier_2elocalType(ptr %v0, ptr %v1, ptr %a0, i32 %a1) #0 {
entry:
  %l4 = alloca ptr
  %l8 = alloca %"compiler/mir:Local"
  %rv = alloca i32
  br label %start
start:
  br label %bb0
bb0:
  %t3 = getelementptr %"compiler/mir:verifier", ptr %a0, i32 0, i32 0
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t6 = getelementptr %"compiler/mir:Fn", ptr %t4, i32 0, i32 7
  store ptr %t6, ptr %l4, !tbaa !29
  %t9 = sext i32 %a1 to i64
  %t10 = load ptr, ptr %l4, !tbaa !29
  %t11 = call ptr @__olang_scope_or(ptr %v1, ptr %t10)
  %t12 = ptrtoint ptr %t11 to i64
  %t14 = inttoptr i64 %t12 to ptr
  %t15 = load ptr, ptr %l4, !tbaa !29
  %t17 = call %"compiler/mir:Local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aLocal_3e_2eAt_3ccompiler_2fmir_3aLocal_3e(ptr %t14, ptr %t15, i64 %t9)
  store %"compiler/mir:Local" %t17, ptr %l8
  br label %bb1
bb1:
  %t18 = getelementptr %"compiler/mir:Local", ptr %l8, i32 0, i32 2
  %t19 = load i32, ptr %t18, !tbaa !23
  store i32 %t19, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local { i64, ptr } @compiler_2fmir_2ecompiler_2fmir_3averifier_2ename(ptr %v0, ptr %v1, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l5 = alloca { i64, ptr }
  %l6 = alloca { i64, ptr }
  %l10 = alloca i64
  %l11 = alloca { i64, ptr }
  %rv = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load i32, ptr %l1, !tbaa !23
  %t2 = load i32, ptr @G_2ecompiler_2fmir_2eNoScope, !tbaa !23
  %t5 = icmp eq i32 %t1, %t2
  br i1 %t5, label %bb1, label %bb2
bb1:
  store { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d87, i32 0, i32 1) }, ptr %l6, !tbaa !27
  %t7 = load { i64, ptr }, ptr %l6, !tbaa !27
  store { i64, ptr } %t7, ptr %l5, !tbaa !27
  br label %bb3
bb2:
  %t9 = load i32, ptr %l1, !tbaa !23
  %t10 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d88, i32 0, i32 1) }, 1
  %t11 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d88, i32 0, i32 1) }, 0
  %t13 = sext i32 %t9 to i64
  %t14 = call i64 @__olang_fmt_i64(ptr null, i64 %t13)
  %t15 = add i64 %t11, %t14
  %t16 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t15)
  call void @olang_textcopy(ptr %t16, ptr %t10, i64 %t11)
  %t17 = getelementptr i8, ptr %t16, i64 %t11
  %t18 = call i64 @__olang_fmt_i64(ptr %t17, i64 %t13)
  %t19 = insertvalue { i64, ptr } undef, i64 %t15, 0
  %t20 = insertvalue { i64, ptr } %t19, ptr %t16, 1
  store { i64, ptr } %t20, ptr %l5, !tbaa !27
  br label %bb3
bb3:
  %t22 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t23 = extractvalue { i64, ptr } %t22, 0
  store i64 %t23, ptr %l10, !tbaa !24
  %t24 = load i64, ptr %l10, !tbaa !24
  %t25 = mul i64 %t24, 1
  %t26 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t25)
  %t27 = insertvalue { i64, ptr } undef, i64 %t24, 0
  %t28 = insertvalue { i64, ptr } %t27, ptr %t26, 1
  store { i64, ptr } %t28, ptr %l11, !tbaa !27
  %t29 = getelementptr { i64, ptr }, ptr %l11, i32 0, i32 1
  %t30 = load ptr, ptr %t29, !tbaa !27
  %t31 = getelementptr { i64, ptr }, ptr %l5, i32 0, i32 1
  %t32 = load ptr, ptr %t31, !tbaa !27
  %t33 = load i64, ptr %l10, !tbaa !24
  %t34 = mul i64 %t33, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t30, ptr %t32, i64 %t34, i1 false)
  %t35 = load { i64, ptr }, ptr %l11, !tbaa !27
  store { i64, ptr } %t35, ptr %l5, !tbaa !27
  %t36 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t36, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local i32 @compiler_2fmir_2ecompiler_2fmir_3averifier_2enewArrayType(ptr %v0, ptr %v1, ptr %v2, ptr %a0, i32 %a1, { i64, [4 x i64] } %a2, { i64, [4 x i64] } %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l3 = alloca { i64, [4 x i64] }
  %l4 = alloca ptr
  %l6 = alloca i32
  %l9 = alloca ptr
  %l10 = alloca ptr
  %l13 = alloca i32
  %l15 = alloca i1
  %l16 = alloca i32
  %l17 = alloca ptr
  %l18 = alloca ptr
  %l21 = alloca i32
  %l23 = alloca i32
  %l27 = alloca i32
  %l31 = alloca i1
  %l32 = alloca ptr
  %l35 = alloca i32
  %l37 = alloca ptr
  %l40 = alloca { i64, ptr }
  %l44 = alloca ptr
  %l45 = alloca ptr
  %l48 = alloca i32
  %l50 = alloca i32
  %l52 = alloca i1
  %l58 = alloca ptr
  %l61 = alloca i32
  %l62 = alloca ptr
  %l65 = alloca i32
  %s1 = alloca %olang.scope
  %s3 = alloca %olang.scope
  %s4 = alloca %olang.scope
  %rv = alloca i32
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  store { i64, [4 x i64] } %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/mir:verifier", ptr %t1, i32 0, i32 1
  %t4 = load ptr, ptr %t3, !tbaa !29
  store ptr %t4, ptr %l4, !tbaa !29
  %t6 = load ptr, ptr %l4, !tbaa !29
  store ptr %t6, ptr %l9, !tbaa !29
  %t7 = load ptr, ptr %l4, !tbaa !29
  store ptr %t7, ptr %l10, !tbaa !29
  %t8 = load i32, ptr %l1, !tbaa !23
  %t9 = load ptr, ptr %l10, !tbaa !29
  %t10 = call ptr @__olang_scope_or(ptr %v1, ptr %t9)
  %t11 = ptrtoint ptr %t10 to i64
  %t13 = inttoptr i64 %t11 to ptr
  %t14 = load ptr, ptr %l10, !tbaa !29
  %t16 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %t13, ptr %t14, i32 %t8)
  store i32 %t16, ptr %l13
  br label %bb1
bb1:
  %t17 = load ptr, ptr %l9, !tbaa !29
  %t18 = call ptr @__olang_scope_or(ptr %v1, ptr %t17)
  %t19 = ptrtoint ptr %t18 to i64
  %t21 = inttoptr i64 %t19 to ptr
  %t22 = load ptr, ptr %l9, !tbaa !29
  %t23 = load i32, ptr %l13, !tbaa !23
  %t24 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsRef(ptr %t21, ptr %t22, i32 %t23)
  store i1 %t24, ptr %l15
  br label %bb2
bb2:
  %t25 = load i1, ptr %l15, !tbaa !21
  br i1 %t25, label %bb3, label %bb4
bb3:
  %t26 = load ptr, ptr %l4, !tbaa !29
  store ptr %t26, ptr %l17, !tbaa !29
  %t27 = load ptr, ptr %l4, !tbaa !29
  store ptr %t27, ptr %l18, !tbaa !29
  %t28 = load i32, ptr %l1, !tbaa !23
  %t29 = load ptr, ptr %l18, !tbaa !29
  %t30 = call ptr @__olang_scope_or(ptr %v1, ptr %t29)
  %t31 = ptrtoint ptr %t30 to i64
  %t33 = inttoptr i64 %t31 to ptr
  %t34 = load ptr, ptr %l18, !tbaa !29
  %t36 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %t33, ptr %t34, i32 %t28)
  store i32 %t36, ptr %l21
  br label %bb5
bb4:
  %t37 = load i32, ptr %l1, !tbaa !23
  store i32 %t37, ptr %l16, !tbaa !23
  br label %bb7
bb5:
  %t39 = load ptr, ptr %l17, !tbaa !29
  %t40 = call ptr @__olang_scope_or(ptr %v1, ptr %t39)
  %t41 = ptrtoint ptr %t40 to i64
  %t43 = inttoptr i64 %t41 to ptr
  %t44 = load ptr, ptr %l17, !tbaa !29
  %t45 = load i32, ptr %l21, !tbaa !23
  %t46 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eReferent(ptr %t43, ptr %t44, i32 %t45)
  store i32 %t46, ptr %l23
  br label %bb6
bb6:
  %t47 = load i32, ptr %l23, !tbaa !23
  store i32 %t47, ptr %l16, !tbaa !23
  br label %bb7
bb7:
  %t48 = load i32, ptr %l16, !tbaa !23
  %t49 = load ptr, ptr %l0, !tbaa !29
  %t53 = call i32 @compiler_2fmir_2ecompiler_2fmir_3averifier_2earrayOf(ptr %v0, ptr %v1, ptr %t49, i32 %t48)
  store i32 %t53, ptr %l27
  br label %bb8
bb8:
  %t54 = load i32, ptr %l27, !tbaa !23
  store i32 %t54, ptr %l6, !tbaa !23
  %t55 = load i32, ptr %l6, !tbaa !23
  %t56 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t59 = icmp eq i32 %t55, %t56
  br i1 %t59, label %bb9, label %bb10
bb9:
  store i1 true, ptr %l31, !tbaa !21
  br label %bb12
bb10:
  %t61 = load ptr, ptr %l4, !tbaa !29
  store ptr %t61, ptr %l32, !tbaa !29
  %t62 = load i32, ptr %l6, !tbaa !23
  %t63 = load ptr, ptr %l32, !tbaa !29
  %t64 = call ptr @__olang_scope_or(ptr %v1, ptr %t63)
  %t65 = ptrtoint ptr %t64 to i64
  %t67 = inttoptr i64 %t65 to ptr
  %t68 = load ptr, ptr %l32, !tbaa !29
  %t70 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eLength(ptr %t67, ptr %t68, i32 %t62)
  store i32 %t70, ptr %l35
  br label %bb11
bb11:
  %t71 = load i32, ptr %l35, !tbaa !23
  %t72 = icmp ne i32 %t71, 0
  store i1 %t72, ptr %l31, !tbaa !21
  br label %bb12
bb12:
  %t74 = load i1, ptr %l31, !tbaa !21
  br i1 %t74, label %bb13, label %bb14
bb13:
  store %olang.scope zeroinitializer, ptr %s1
  %t75 = load ptr, ptr %l0, !tbaa !29
  store ptr %t75, ptr %l37, !tbaa !29
  %t76 = load ptr, ptr %l0, !tbaa !29
  %t77 = load i32, ptr %l1, !tbaa !23
  %t80 = call { i64, ptr } @compiler_2fmir_2ecompiler_2fmir_3averifier_2ecanon(ptr %v0, ptr %s1, ptr %v1, ptr %t76, i32 %t77)
  store { i64, ptr } %t80, ptr %l40
  br label %bb15
bb14:
  br label %bb17
bb15:
  %t81 = extractvalue { i64, ptr } { i64 18, ptr getelementptr inbounds (<{ i64, [18 x i8] }>, ptr @.d89, i32 0, i32 1) }, 1
  %t82 = extractvalue { i64, ptr } { i64 18, ptr getelementptr inbounds (<{ i64, [18 x i8] }>, ptr @.d89, i32 0, i32 1) }, 0
  %t83 = load { i64, ptr }, ptr %l40, !tbaa !27
  %t84 = extractvalue { i64, ptr } %t83, 1
  %t85 = extractvalue { i64, ptr } %t83, 0
  %t86 = add i64 %t82, %t85
  %t87 = extractvalue { i64, ptr } { i64 29, ptr getelementptr inbounds (<{ i64, [29 x i8] }>, ptr @.d90, i32 0, i32 1) }, 1
  %t88 = extractvalue { i64, ptr } { i64 29, ptr getelementptr inbounds (<{ i64, [29 x i8] }>, ptr @.d90, i32 0, i32 1) }, 0
  %t89 = add i64 %t86, %t88
  %t90 = call ptr @__olang_scope_alloc(ptr %s1, i64 %t89)
  call void @olang_textcopy(ptr %t90, ptr %t81, i64 %t82)
  %t91 = getelementptr i8, ptr %t90, i64 %t82
  call void @olang_textcopy(ptr %t91, ptr %t84, i64 %t85)
  %t92 = getelementptr i8, ptr %t91, i64 %t85
  call void @olang_textcopy(ptr %t92, ptr %t87, i64 %t88)
  %t93 = insertvalue { i64, ptr } undef, i64 %t89, 0
  %t94 = insertvalue { i64, ptr } %t93, ptr %t90, 1
  %t96 = extractvalue { i64, ptr } %t94, 0
  %t97 = extractvalue { i64, ptr } %t94, 1
  %t98 = mul i64 %t96, 1
  %t99 = call ptr @__olang_scope_alloc(ptr %s1, i64 %t98)
  call void @llvm.memcpy.p0.p0.i64(ptr %t99, ptr %t97, i64 %t98, i1 false)
  %t100 = insertvalue { i64, ptr } undef, i64 %t96, 0
  %t101 = insertvalue { i64, ptr } %t100, ptr %t99, 1
  %t102 = load ptr, ptr %l37, !tbaa !29
  call void @compiler_2fmir_2ecompiler_2fmir_3averifier_2ebad(ptr %v0, ptr %s1, ptr %t102, { i64, ptr } %t101)
  br label %bb16
bb16:
  %t104 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  call void @__olang_scope_close(ptr %s1)
  store i32 %t104, ptr %rv
  br label %ret
bb17:
  %t106 = load ptr, ptr %l4, !tbaa !29
  store ptr %t106, ptr %l44, !tbaa !29
  %t107 = load ptr, ptr %l4, !tbaa !29
  store ptr %t107, ptr %l45, !tbaa !29
  %t108 = load ptr, ptr %l0, !tbaa !29
  %t112 = call i32 @compiler_2fmir_2ecompiler_2fmir_3averifier_2eoperandType(ptr %v0, ptr %v2, ptr %v1, ptr %t108, { i64, [4 x i64] } %a2)
  store i32 %t112, ptr %l48
  br label %bb18
bb18:
  %t113 = load ptr, ptr %l45, !tbaa !29
  %t114 = call ptr @__olang_scope_or(ptr %v1, ptr %t113)
  %t115 = ptrtoint ptr %t114 to i64
  %t117 = inttoptr i64 %t115 to ptr
  %t118 = load ptr, ptr %l45, !tbaa !29
  %t119 = load i32, ptr %l48, !tbaa !23
  %t120 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %t117, ptr %t118, i32 %t119)
  store i32 %t120, ptr %l50
  br label %bb19
bb19:
  %t121 = load ptr, ptr %l44, !tbaa !29
  %t122 = call ptr @__olang_scope_or(ptr %v1, ptr %t121)
  %t123 = ptrtoint ptr %t122 to i64
  %t125 = inttoptr i64 %t123 to ptr
  %t126 = load ptr, ptr %l44, !tbaa !29
  %t127 = load i32, ptr %l50, !tbaa !23
  %t128 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsInt(ptr %t125, ptr %t126, i32 %t127)
  store i1 %t128, ptr %l52
  br label %bb20
bb20:
  %t129 = load i1, ptr %l52, !tbaa !21
  %t130 = xor i1 %t129, true
  br i1 %t130, label %bb21, label %bb22
bb21:
  store %olang.scope zeroinitializer, ptr %s3
  %t132 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2fmir_2ecompiler_2fmir_3averifier_2ebad(ptr %v0, ptr %s3, ptr %t132, { i64, ptr } { i64 39, ptr getelementptr inbounds (<{ i64, [39 x i8] }>, ptr @.d91, i32 0, i32 1) })
  br label %bb23
bb22:
  br label %bb24
bb23:
  call void @__olang_scope_close(ptr %s3)
  br label %bb24
bb24:
  %t134 = load { i64, [4 x i64] }, ptr %l3
  %t136 = extractvalue { i64, [4 x i64] } %t134, 0
  %t137 = icmp eq i64 %t136, 0
  %t139 = xor i1 %t137, true
  br i1 %t139, label %bb25, label %bb26
bb25:
  store %olang.scope zeroinitializer, ptr %s4
  %t141 = load ptr, ptr %l0, !tbaa !29
  store ptr %t141, ptr %l58, !tbaa !29
  %t142 = load ptr, ptr %l0, !tbaa !29
  %t143 = load { i64, [4 x i64] }, ptr %l3
  %t146 = call i32 @compiler_2fmir_2ecompiler_2fmir_3averifier_2eoperandType(ptr %v0, ptr %v2, ptr %v1, ptr %t142, { i64, [4 x i64] } %t143)
  store i32 %t146, ptr %l61
  br label %bb27
bb26:
  br label %bb30
bb27:
  %t147 = load ptr, ptr %l4, !tbaa !29
  store ptr %t147, ptr %l62, !tbaa !29
  %t148 = load i32, ptr %l6, !tbaa !23
  %t149 = load ptr, ptr %l62, !tbaa !29
  %t150 = call ptr @__olang_scope_or(ptr %v1, ptr %t149)
  %t151 = ptrtoint ptr %t150 to i64
  %t153 = inttoptr i64 %t151 to ptr
  %t154 = load ptr, ptr %l62, !tbaa !29
  %t156 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eElem(ptr %t153, ptr %t154, i32 %t148)
  store i32 %t156, ptr %l65
  br label %bb28
bb28:
  %t157 = load ptr, ptr %l58, !tbaa !29
  %t158 = load i32, ptr %l61, !tbaa !23
  %t159 = load i32, ptr %l65, !tbaa !23
  call void @compiler_2fmir_2ecompiler_2fmir_3averifier_2ewant(ptr %v0, ptr %s4, ptr %v1, ptr %t157, i32 %t158, i32 %t159, { i64, ptr } { i64 18, ptr getelementptr inbounds (<{ i64, [18 x i8] }>, ptr @.d92, i32 0, i32 1) })
  br label %bb29
bb29:
  call void @__olang_scope_close(ptr %s4)
  br label %bb30
bb30:
  %t160 = load i32, ptr %l1, !tbaa !23
  store i32 %t160, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local i32 @compiler_2fmir_2ecompiler_2fmir_3averifier_2eoverflowsType(ptr %v0, ptr %v1, ptr %a0, i32 %a1, i32 %a2, %"compiler/mir:Range" %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca i32
  %l3 = alloca %"compiler/mir:Range"
  %l4 = alloca ptr
  %l8 = alloca i1
  %l27 = alloca ptr
  %l28 = alloca i32
  %l30 = alloca { i64, ptr }
  %l32 = alloca { i64, ptr }
  %l37 = alloca ptr
  %l38 = alloca ptr
  %l41 = alloca i32
  %l43 = alloca i1
  %l45 = alloca ptr
  %l46 = alloca i32
  %l48 = alloca { i64, ptr }
  %l50 = alloca { i64, ptr }
  %l53 = alloca { i64, ptr }
  %s4 = alloca %olang.scope
  %s5 = alloca %olang.builder
  %s5room = alloca [64 x i8], align 8
  %s7 = alloca %olang.scope
  %s8 = alloca %olang.builder
  %s8room = alloca [64 x i8], align 8
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
  %t6 = load i32, ptr %l1, !range !{i32 0, i32 52}
  %t8 = trunc i64 3 to i32
  %t9 = icmp eq i32 %t6, %t8
  br i1 %t9, label %bb1, label %bb2
bb1:
  br label %bb9
bb2:
  %t11 = load i32, ptr %l1, !range !{i32 0, i32 52}
  %t13 = trunc i64 4 to i32
  %t14 = icmp eq i32 %t11, %t13
  br i1 %t14, label %bb3, label %bb4
bb3:
  br label %bb9
bb4:
  %t16 = load i32, ptr %l1, !range !{i32 0, i32 52}
  %t18 = trunc i64 5 to i32
  %t19 = icmp eq i32 %t16, %t18
  br i1 %t19, label %bb5, label %bb6
bb5:
  br label %bb9
bb6:
  %t21 = load i32, ptr %l1, !range !{i32 0, i32 52}
  %t23 = trunc i64 6 to i32
  %t24 = icmp eq i32 %t21, %t23
  br i1 %t24, label %bb7, label %bb8
bb7:
  br label %bb9
bb8:
  br label %bb10
bb9:
  %t26 = getelementptr %"compiler/mir:Range", ptr %l3, i32 0, i32 1
  %t27 = load i32, ptr %t26, !tbaa !23
  %t29 = icmp eq i32 %t27, 2
  store i1 %t29, ptr %l8, !tbaa !21
  br label %bb21
bb10:
  %t31 = load i32, ptr %l1, !range !{i32 0, i32 52}
  %t33 = trunc i64 0 to i32
  %t34 = icmp eq i32 %t31, %t33
  br i1 %t34, label %bb11, label %bb12
bb11:
  br label %bb15
bb12:
  %t36 = load i32, ptr %l1, !range !{i32 0, i32 52}
  %t38 = trunc i64 20 to i32
  %t39 = icmp eq i32 %t36, %t38
  br i1 %t39, label %bb13, label %bb14
bb13:
  br label %bb15
bb14:
  br label %bb16
bb15:
  %t41 = getelementptr %"compiler/mir:Range", ptr %l3, i32 0, i32 1
  %t42 = load i32, ptr %t41, !tbaa !23
  %t44 = icmp eq i32 %t42, 1
  store i1 %t44, ptr %l8, !tbaa !21
  br label %bb21
bb16:
  br i1 true, label %bb17, label %bb18
bb17:
  br label %bb19
bb18:
  br label %bb20
bb19:
  store i1 false, ptr %l8, !tbaa !21
  br label %bb21
bb20:
  call void @__olang_check_failed(ptr @olang_loc_bb9dfa8ddf3d51d3_a6a63b61a4411c97)
  unreachable
bb21:
  %t46 = load i1, ptr %l8, !tbaa !21
  %t49 = xor i1 %t46, true
  br i1 %t49, label %bb22, label %bb23
bb22:
  store %olang.scope zeroinitializer, ptr %s4
  %t51 = load ptr, ptr %l0, !tbaa !29
  store ptr %t51, ptr %l27, !tbaa !29
  %t52 = load i32, ptr %l1, !range !{i32 0, i32 52}
  store i32 %t52, ptr %l28
  store %olang.builder { ptr null, i64 0, i64 64, ptr null, ptr null }, ptr %s5
  store ptr %s5room, ptr %s5
  call void @olang_2emir_2eHelperKind_2eRender_2ecompiler_2ftyped_3aPrimOp(ptr %s5, ptr %l28, i64 0)
  br label %bb24
bb23:
  br label %bb27
bb24:
  %t54 = load ptr, ptr %s5
  %t55 = getelementptr %olang.builder, ptr %s5, i32 0, i32 1
  %t56 = load i64, ptr %t55
  %t57 = call ptr @__olang_scope_alloc(ptr %s4, i64 %t56)
  call void @olang_textcopy(ptr %t57, ptr %t54, i64 %t56)
  %t58 = insertvalue { i64, ptr } undef, i64 %t56, 0
  %t59 = insertvalue { i64, ptr } %t58, ptr %t57, 1
  store { i64, ptr } %t59, ptr %l30, !tbaa !27
  %t60 = getelementptr %olang.builder, ptr %s5, i32 0, i32 3
  %t61 = load ptr, ptr %t60
  %t62 = icmp ne ptr %t61, null
  br i1 %t62, label %sbgrew.63, label %sbdone.64
sbgrew.63:
  call void @__olang_sb_done(ptr %s5)
  br label %sbdone.64
sbdone.64:
  %t65 = load { i64, ptr }, ptr %l30, !tbaa !27
  %t66 = extractvalue { i64, ptr } %t65, 0
  %t67 = extractvalue { i64, ptr } %t65, 1
  %t68 = mul i64 %t66, 1
  %t69 = call ptr @__olang_scope_alloc(ptr %s4, i64 %t68)
  call void @llvm.memcpy.p0.p0.i64(ptr %t69, ptr %t67, i64 %t68, i1 false)
  %t70 = insertvalue { i64, ptr } undef, i64 %t66, 0
  %t71 = insertvalue { i64, ptr } %t70, ptr %t69, 1
  %t73 = call { i64, ptr } @compiler_2fmir_2eshort(ptr %s4, ptr %s4, { i64, ptr } %t71)
  store { i64, ptr } %t73, ptr %l32
  br label %bb25
bb25:
  %t74 = getelementptr %"compiler/mir:Range", ptr %l3, i32 0, i32 1
  %t75 = load i32, ptr %t74, !tbaa !23
  %t76 = extractvalue { i64, ptr } { i64 21, ptr getelementptr inbounds (<{ i64, [21 x i8] }>, ptr @.d93, i32 0, i32 1) }, 1
  %t77 = extractvalue { i64, ptr } { i64 21, ptr getelementptr inbounds (<{ i64, [21 x i8] }>, ptr @.d93, i32 0, i32 1) }, 0
  %t78 = load { i64, ptr }, ptr %l32, !tbaa !27
  %t79 = extractvalue { i64, ptr } %t78, 1
  %t80 = extractvalue { i64, ptr } %t78, 0
  %t81 = add i64 %t77, %t80
  %t82 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d94, i32 0, i32 1) }, 1
  %t83 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d94, i32 0, i32 1) }, 0
  %t84 = add i64 %t81, %t83
  %t86 = sext i32 %t75 to i64
  %t87 = call i64 @__olang_fmt_i64(ptr null, i64 %t86)
  %t88 = add i64 %t84, %t87
  %t89 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d95, i32 0, i32 1) }, 1
  %t90 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d95, i32 0, i32 1) }, 0
  %t91 = add i64 %t88, %t90
  %t92 = call ptr @__olang_scope_alloc(ptr %s4, i64 %t91)
  call void @olang_textcopy(ptr %t92, ptr %t76, i64 %t77)
  %t93 = getelementptr i8, ptr %t92, i64 %t77
  call void @olang_textcopy(ptr %t93, ptr %t79, i64 %t80)
  %t94 = getelementptr i8, ptr %t93, i64 %t80
  call void @olang_textcopy(ptr %t94, ptr %t82, i64 %t83)
  %t95 = getelementptr i8, ptr %t94, i64 %t83
  %t96 = call i64 @__olang_fmt_i64(ptr %t95, i64 %t86)
  %t97 = getelementptr i8, ptr %t95, i64 %t87
  call void @olang_textcopy(ptr %t97, ptr %t89, i64 %t90)
  %t98 = insertvalue { i64, ptr } undef, i64 %t91, 0
  %t99 = insertvalue { i64, ptr } %t98, ptr %t92, 1
  %t101 = extractvalue { i64, ptr } %t99, 0
  %t102 = extractvalue { i64, ptr } %t99, 1
  %t103 = mul i64 %t101, 1
  %t104 = call ptr @__olang_scope_alloc(ptr %s4, i64 %t103)
  call void @llvm.memcpy.p0.p0.i64(ptr %t104, ptr %t102, i64 %t103, i1 false)
  %t105 = insertvalue { i64, ptr } undef, i64 %t101, 0
  %t106 = insertvalue { i64, ptr } %t105, ptr %t104, 1
  %t107 = load ptr, ptr %l27, !tbaa !29
  call void @compiler_2fmir_2ecompiler_2fmir_3averifier_2ebad(ptr %v0, ptr %s4, ptr %t107, { i64, ptr } %t106)
  br label %bb26
bb26:
  %t109 = load i32, ptr @G_2ecompiler_2ftypes_2eBoolT, !tbaa !23
  call void @__olang_scope_close(ptr %s4)
  store i32 %t109, ptr %rv
  br label %ret
bb27:
  %t111 = load ptr, ptr %l4, !tbaa !29
  store ptr %t111, ptr %l37, !tbaa !29
  %t112 = load ptr, ptr %l4, !tbaa !29
  store ptr %t112, ptr %l38, !tbaa !29
  %t113 = load i32, ptr %l2, !tbaa !23
  %t114 = load ptr, ptr %l38, !tbaa !29
  %t115 = call ptr @__olang_scope_or(ptr %v1, ptr %t114)
  %t116 = ptrtoint ptr %t115 to i64
  %t118 = inttoptr i64 %t116 to ptr
  %t119 = load ptr, ptr %l38, !tbaa !29
  %t121 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %t118, ptr %t119, i32 %t113)
  store i32 %t121, ptr %l41
  br label %bb28
bb28:
  %t122 = load ptr, ptr %l37, !tbaa !29
  %t123 = call ptr @__olang_scope_or(ptr %v1, ptr %t122)
  %t124 = ptrtoint ptr %t123 to i64
  %t126 = inttoptr i64 %t124 to ptr
  %t127 = load ptr, ptr %l37, !tbaa !29
  %t128 = load i32, ptr %l41, !tbaa !23
  %t129 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsInt(ptr %t126, ptr %t127, i32 %t128)
  store i1 %t129, ptr %l43
  br label %bb29
bb29:
  %t130 = load i1, ptr %l43, !tbaa !21
  %t131 = xor i1 %t130, true
  br i1 %t131, label %bb30, label %bb31
bb30:
  store %olang.scope zeroinitializer, ptr %s7
  %t133 = load ptr, ptr %l0, !tbaa !29
  store ptr %t133, ptr %l45, !tbaa !29
  %t134 = load i32, ptr %l1, !range !{i32 0, i32 52}
  store i32 %t134, ptr %l46
  store %olang.builder { ptr null, i64 0, i64 64, ptr null, ptr null }, ptr %s8
  store ptr %s8room, ptr %s8
  call void @olang_2emir_2eHelperKind_2eRender_2ecompiler_2ftyped_3aPrimOp(ptr %s8, ptr %l46, i64 0)
  br label %bb32
bb31:
  br label %bb36
bb32:
  %t136 = load ptr, ptr %s8
  %t137 = getelementptr %olang.builder, ptr %s8, i32 0, i32 1
  %t138 = load i64, ptr %t137
  %t139 = call ptr @__olang_scope_alloc(ptr %s7, i64 %t138)
  call void @olang_textcopy(ptr %t139, ptr %t136, i64 %t138)
  %t140 = insertvalue { i64, ptr } undef, i64 %t138, 0
  %t141 = insertvalue { i64, ptr } %t140, ptr %t139, 1
  store { i64, ptr } %t141, ptr %l48, !tbaa !27
  %t142 = getelementptr %olang.builder, ptr %s8, i32 0, i32 3
  %t143 = load ptr, ptr %t142
  %t144 = icmp ne ptr %t143, null
  br i1 %t144, label %sbgrew.145, label %sbdone.146
sbgrew.145:
  call void @__olang_sb_done(ptr %s8)
  br label %sbdone.146
sbdone.146:
  %t147 = load { i64, ptr }, ptr %l48, !tbaa !27
  %t148 = extractvalue { i64, ptr } %t147, 0
  %t149 = extractvalue { i64, ptr } %t147, 1
  %t150 = mul i64 %t148, 1
  %t151 = call ptr @__olang_scope_alloc(ptr %s7, i64 %t150)
  call void @llvm.memcpy.p0.p0.i64(ptr %t151, ptr %t149, i64 %t150, i1 false)
  %t152 = insertvalue { i64, ptr } undef, i64 %t148, 0
  %t153 = insertvalue { i64, ptr } %t152, ptr %t151, 1
  %t155 = call { i64, ptr } @compiler_2fmir_2eshort(ptr %s7, ptr %s7, { i64, ptr } %t153)
  store { i64, ptr } %t155, ptr %l50
  br label %bb33
bb33:
  %t156 = load ptr, ptr %l0, !tbaa !29
  %t157 = load i32, ptr %l2, !tbaa !23
  %t160 = call { i64, ptr } @compiler_2fmir_2ecompiler_2fmir_3averifier_2ecanon(ptr %v0, ptr %s7, ptr %v1, ptr %t156, i32 %t157)
  store { i64, ptr } %t160, ptr %l53
  br label %bb34
bb34:
  %t161 = extractvalue { i64, ptr } { i64 20, ptr getelementptr inbounds (<{ i64, [20 x i8] }>, ptr @.d96, i32 0, i32 1) }, 1
  %t162 = extractvalue { i64, ptr } { i64 20, ptr getelementptr inbounds (<{ i64, [20 x i8] }>, ptr @.d96, i32 0, i32 1) }, 0
  %t163 = load { i64, ptr }, ptr %l50, !tbaa !27
  %t164 = extractvalue { i64, ptr } %t163, 1
  %t165 = extractvalue { i64, ptr } %t163, 0
  %t166 = add i64 %t162, %t165
  %t167 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d97, i32 0, i32 1) }, 1
  %t168 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d97, i32 0, i32 1) }, 0
  %t169 = add i64 %t166, %t168
  %t170 = load { i64, ptr }, ptr %l53, !tbaa !27
  %t171 = extractvalue { i64, ptr } %t170, 1
  %t172 = extractvalue { i64, ptr } %t170, 0
  %t173 = add i64 %t169, %t172
  %t174 = extractvalue { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d98, i32 0, i32 1) }, 1
  %t175 = extractvalue { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d98, i32 0, i32 1) }, 0
  %t176 = add i64 %t173, %t175
  %t177 = call ptr @__olang_scope_alloc(ptr %s7, i64 %t176)
  call void @olang_textcopy(ptr %t177, ptr %t161, i64 %t162)
  %t178 = getelementptr i8, ptr %t177, i64 %t162
  call void @olang_textcopy(ptr %t178, ptr %t164, i64 %t165)
  %t179 = getelementptr i8, ptr %t178, i64 %t165
  call void @olang_textcopy(ptr %t179, ptr %t167, i64 %t168)
  %t180 = getelementptr i8, ptr %t179, i64 %t168
  call void @olang_textcopy(ptr %t180, ptr %t171, i64 %t172)
  %t181 = getelementptr i8, ptr %t180, i64 %t172
  call void @olang_textcopy(ptr %t181, ptr %t174, i64 %t175)
  %t182 = insertvalue { i64, ptr } undef, i64 %t176, 0
  %t183 = insertvalue { i64, ptr } %t182, ptr %t177, 1
  %t185 = extractvalue { i64, ptr } %t183, 0
  %t186 = extractvalue { i64, ptr } %t183, 1
  %t187 = mul i64 %t185, 1
  %t188 = call ptr @__olang_scope_alloc(ptr %s7, i64 %t187)
  call void @llvm.memcpy.p0.p0.i64(ptr %t188, ptr %t186, i64 %t187, i1 false)
  %t189 = insertvalue { i64, ptr } undef, i64 %t185, 0
  %t190 = insertvalue { i64, ptr } %t189, ptr %t188, 1
  %t191 = load ptr, ptr %l45, !tbaa !29
  call void @compiler_2fmir_2ecompiler_2fmir_3averifier_2ebad(ptr %v0, ptr %s7, ptr %t191, { i64, ptr } %t190)
  br label %bb35
bb35:
  call void @__olang_scope_close(ptr %s7)
  br label %bb36
bb36:
  %t193 = load i32, ptr @G_2ecompiler_2ftypes_2eBoolT, !tbaa !23
  store i32 %t193, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local void @compiler_2fmir_2ecompiler_2fmir_3averifier_2eplace(ptr %v0, ptr %v1, ptr %a0, %"compiler/mir:Lvalue" %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/mir:Lvalue"
  %l2 = alloca { i64, [2 x i64] }
  %l3 = alloca i32
  %l10 = alloca i1
  %l14 = alloca ptr
  %l15 = alloca %"compiler/mir:Range"
  %l18 = alloca ptr
  %l20 = alloca i64
  %l21 = alloca i1
  %s0 = alloca %olang.scope
  %s2 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store %"compiler/mir:Lvalue" %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = getelementptr %"compiler/mir:Lvalue", ptr %l1, i32 0, i32 0
  %t2 = load { i64, [2 x i64] }, ptr %t1
  store { i64, [2 x i64] } %t2, ptr %l2
  %t4 = load { i64, [2 x i64] }, ptr %l2
  %t6 = extractvalue { i64, [2 x i64] } %t4, 0
  %t7 = icmp eq i64 %t6, 1
  br i1 %t7, label %bb1, label %bb2
bb1:
  %t9 = getelementptr { i64, [2 x i64] }, ptr %l2, i32 0, i32 1
  %t10 = getelementptr { i32 }, ptr %t9, i32 0, i32 0
  %t11 = load i32, ptr %t10
  store i32 %t11, ptr %l3, !tbaa !23
  br label %bb3
bb2:
  br label %bb5
bb3:
  %t13 = load ptr, ptr %l0, !tbaa !29
  %t14 = load i32, ptr %l3, !tbaa !23
  %t17 = call i1 @compiler_2fmir_2ecompiler_2fmir_3averifier_2elocal(ptr %v0, ptr %v1, ptr %t13, i32 %t14)
  store i1 %t17, ptr %l10
  br label %bb4
bb4:
  br label %bb15
bb5:
  %t18 = load { i64, [2 x i64] }, ptr %l2
  %t20 = extractvalue { i64, [2 x i64] } %t18, 0
  %t21 = icmp eq i64 %t20, 0
  br i1 %t21, label %bb6, label %bb7
bb6:
  br label %bb8
bb7:
  br label %bb10
bb8:
  store %olang.scope zeroinitializer, ptr %s2
  %t23 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2fmir_2ecompiler_2fmir_3averifier_2ebad(ptr %v0, ptr %s2, ptr %t23, { i64, ptr } { i64 20, ptr getelementptr inbounds (<{ i64, [20 x i8] }>, ptr @.d99, i32 0, i32 1) })
  br label %bb9
bb9:
  call void @__olang_scope_close(ptr %s2)
  br label %bb15
bb10:
  br i1 true, label %bb11, label %bb12
bb11:
  br label %bb13
bb12:
  br label %bb14
bb13:
  br label %bb15
bb14:
  call void @__olang_check_failed(ptr @olang_loc_70d66502dd431e07_8b33d36aabf56353)
  unreachable
bb15:
  %t25 = load ptr, ptr %l0, !tbaa !29
  store ptr %t25, ptr %l14, !tbaa !29
  %t26 = getelementptr %"compiler/mir:Lvalue", ptr %l1, i32 0, i32 1
  %t27 = load %"compiler/mir:Range", ptr %t26
  store %"compiler/mir:Range" %t27, ptr %l15
  %t28 = load ptr, ptr %l0, !tbaa !29
  %t30 = getelementptr %"compiler/mir:verifier", ptr %t28, i32 0, i32 0
  %t31 = load ptr, ptr %t30, !tbaa !29
  %t33 = getelementptr %"compiler/mir:Fn", ptr %t31, i32 0, i32 10
  store ptr %t33, ptr %l18, !tbaa !29
  %t34 = load ptr, ptr %l18, !tbaa !29
  %t35 = call ptr @__olang_scope_or(ptr %v1, ptr %t34)
  %t36 = ptrtoint ptr %t35 to i64
  %t38 = inttoptr i64 %t36 to ptr
  %t39 = load ptr, ptr %l18, !tbaa !29
  %t40 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aProj_3e_2eLen_3ccompiler_2fmir_3aProj_3e(ptr %t38, ptr %t39)
  store i64 %t40, ptr %l20
  br label %bb16
bb16:
  %t41 = load ptr, ptr %l14, !tbaa !29
  %t42 = load %"compiler/mir:Range", ptr %l15
  %t43 = load i64, ptr %l20, !tbaa !24
  %t44 = call i1 @compiler_2fmir_2ecompiler_2fmir_3averifier_2ewithin(ptr %v0, ptr %s0, ptr %t41, %"compiler/mir:Range" %t42, i64 %t43, { i64, ptr } { i64 11, ptr getelementptr inbounds (<{ i64, [11 x i8] }>, ptr @.d100, i32 0, i32 1) })
  store i1 %t44, ptr %l21
  br label %bb17
bb17:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local i32 @compiler_2fmir_2ecompiler_2fmir_3averifier_2eplaceType(ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"compiler/mir:Lvalue" %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/mir:Lvalue"
  %l2 = alloca { i64, [2 x i64] }
  %l3 = alloca i32
  %l4 = alloca i32
  %l5 = alloca i32
  %l6 = alloca i32
  %l7 = alloca i32
  %l8 = alloca i32
  %l9 = alloca i32
  %l10 = alloca i32
  %l11 = alloca i32
  %l13 = alloca i32
  %l19 = alloca i32
  %l31 = alloca i32
  %l34 = alloca i32
  %l56 = alloca ptr
  %l57 = alloca i32
  %l60 = alloca ptr
  %l67 = alloca { i64, [1 x i64] }
  %l68 = alloca i32
  %rv = alloca i32
  store ptr %a0, ptr %l0
  store %"compiler/mir:Lvalue" %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = getelementptr %"compiler/mir:Lvalue", ptr %l1, i32 0, i32 0
  %t2 = load { i64, [2 x i64] }, ptr %t1
  store { i64, [2 x i64] } %t2, ptr %l2
  %t4 = load { i64, [2 x i64] }, ptr %l2
  %t6 = extractvalue { i64, [2 x i64] } %t4, 0
  %t7 = icmp eq i64 %t6, 1
  br i1 %t7, label %bb1, label %bb2
bb1:
  %t9 = getelementptr { i64, [2 x i64] }, ptr %l2, i32 0, i32 1
  %t10 = getelementptr { i32 }, ptr %t9, i32 0, i32 0
  %t11 = load i32, ptr %t10
  store i32 %t11, ptr %l3, !tbaa !23
  br label %bb3
bb2:
  br label %bb5
bb3:
  %t13 = load ptr, ptr %l0, !tbaa !29
  %t14 = load i32, ptr %l3, !tbaa !23
  %t17 = call i32 @compiler_2fmir_2ecompiler_2fmir_3averifier_2elocalType(ptr %v0, ptr %v1, ptr %t13, i32 %t14)
  store i32 %t17, ptr %l19
  br label %bb4
bb4:
  %t18 = load i32, ptr %l19, !tbaa !23
  store i32 %t18, ptr %l13, !tbaa !23
  br label %bb14
bb5:
  %t19 = load { i64, [2 x i64] }, ptr %l2
  %t21 = extractvalue { i64, [2 x i64] } %t19, 0
  %t22 = icmp eq i64 %t21, 2
  br i1 %t22, label %bb6, label %bb7
bb6:
  %t24 = getelementptr { i64, [2 x i64] }, ptr %l2, i32 0, i32 1
  %t25 = getelementptr { i64, i32, i32 }, ptr %t24, i32 0, i32 2
  %t26 = load i32, ptr %t25
  store i32 %t26, ptr %l4, !tbaa !23
  br label %bb8
bb7:
  br label %bb9
bb8:
  %t28 = load i32, ptr %l4, !tbaa !23
  store i32 %t28, ptr %l13, !tbaa !23
  br label %bb14
bb9:
  %t30 = load { i64, [2 x i64] }, ptr %l2
  %t32 = extractvalue { i64, [2 x i64] } %t30, 0
  %t33 = icmp eq i64 %t32, 0
  br i1 %t33, label %bb10, label %bb11
bb10:
  br label %bb12
bb11:
  br label %bb13
bb12:
  %t35 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  store i32 %t35, ptr %l13, !tbaa !23
  br label %bb14
bb13:
  call void @__olang_check_failed(ptr @olang_loc_2986d82de8391aaf_d61db5ce8081183b)
  unreachable
bb14:
  %t37 = load i32, ptr %l13, !tbaa !23
  store i32 %t37, ptr %l5, !tbaa !23
  store i32 0, ptr %l6, !tbaa !23
  %t38 = getelementptr %"compiler/mir:Lvalue", ptr %l1, i32 0, i32 1
  %t39 = getelementptr %"compiler/mir:Range", ptr %t38, i32 0, i32 1
  %t40 = load i32, ptr %t39, !tbaa !23
  store i32 %t40, ptr %l7, !tbaa !23
  store i32 1, ptr %l8, !tbaa !23
  %t42 = load i32, ptr %l7, !tbaa !23
  %t43 = load i32, ptr %l6, !tbaa !23
  %t46 = icmp sgt i32 %t42, %t43
  br i1 %t46, label %bb15, label %bb16
bb15:
  %t48 = load i32, ptr %l8, !tbaa !23
  %t50 = icmp sgt i32 %t48, 0
  br i1 %t50, label %bb17, label %bb18
bb16:
  store i32 0, ptr %l31, !tbaa !23
  br label %bb20
bb17:
  %t52 = load i32, ptr %l7, !tbaa !23
  %t53 = load i32, ptr %l6, !tbaa !23
  %t56 = sub i32 %t52, %t53
  %t57 = load i32, ptr %l8, !tbaa !23
  %t60 = add i32 %t56, %t57
  %t62 = sub i32 %t60, 1
  %t63 = load i32, ptr %l8, !tbaa !23
  %t66 = sdiv i32 %t62, %t63
  store i32 %t66, ptr %l34, !tbaa !23
  br label %bb19
bb18:
  store i32 0, ptr %l34, !tbaa !23
  br label %bb19
bb19:
  %t68 = load i32, ptr %l34, !tbaa !23
  store i32 %t68, ptr %l31, !tbaa !23
  br label %bb20
bb20:
  %t69 = load i32, ptr %l31, !tbaa !23
  store i32 %t69, ptr %l9, !tbaa !23
  store i32 0, ptr %l10, !tbaa !23
  br label %bb21
bb21:
  %t70 = load i32, ptr %l10, !tbaa !23
  %t71 = load i32, ptr %l9, !tbaa !23
  %t74 = icmp slt i32 %t70, %t71
  %t76 = xor i1 %t74, true
  br i1 %t76, label %bb22, label %bb23
bb22:
  br label %bb31
bb23:
  br label %bb24
bb24:
  %t78 = load i32, ptr %l6, !tbaa !23
  %t79 = load i32, ptr %l10, !tbaa !23
  %t80 = load i32, ptr %l8, !tbaa !23
  %t83 = mul i32 %t79, %t80
  %t86 = add i32 %t78, %t83
  store i32 %t86, ptr %l11, !tbaa !23
  %t88 = load i32, ptr %l5, !tbaa !23
  %t89 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t92 = icmp eq i32 %t88, %t89
  br i1 %t92, label %bb25, label %bb26
bb25:
  %t94 = load i32, ptr %l5, !tbaa !23
  store i32 %t94, ptr %rv
  br label %ret
bb26:
  br label %bb27
bb27:
  %t96 = load ptr, ptr %l0, !tbaa !29
  store ptr %t96, ptr %l56, !tbaa !29
  %t97 = load i32, ptr %l5, !tbaa !23
  store i32 %t97, ptr %l57, !tbaa !23
  %t98 = load ptr, ptr %l0, !tbaa !29
  %t100 = getelementptr %"compiler/mir:verifier", ptr %t98, i32 0, i32 0
  %t101 = load ptr, ptr %t100, !tbaa !29
  %t103 = getelementptr %"compiler/mir:Fn", ptr %t101, i32 0, i32 10
  store ptr %t103, ptr %l60, !tbaa !29
  %t104 = getelementptr %"compiler/mir:Lvalue", ptr %l1, i32 0, i32 1
  %t105 = getelementptr %"compiler/mir:Range", ptr %t104, i32 0, i32 0
  %t106 = load i32, ptr %t105, !tbaa !23
  %t108 = sext i32 %t106 to i64
  %t109 = load i32, ptr %l11, !tbaa !23
  %t111 = sext i32 %t109 to i64
  %t114 = add i64 %t108, %t111
  %t115 = load ptr, ptr %l60, !tbaa !29
  %t116 = call ptr @__olang_scope_or(ptr %v1, ptr %t115)
  %t117 = ptrtoint ptr %t116 to i64
  %t119 = inttoptr i64 %t117 to ptr
  %t120 = load ptr, ptr %l60, !tbaa !29
  %t122 = call { i64, [1 x i64] } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aProj_3e_2eAt_3ccompiler_2fmir_3aProj_3e(ptr %t119, ptr %t120, i64 %t114)
  store { i64, [1 x i64] } %t122, ptr %l67
  br label %bb28
bb28:
  %t123 = load ptr, ptr %l56, !tbaa !29
  %t124 = load i32, ptr %l57, !tbaa !23
  %t125 = load { i64, [1 x i64] }, ptr %l67
  %t126 = call i32 @compiler_2fmir_2ecompiler_2fmir_3averifier_2eprojected(ptr %v0, ptr %v2, ptr %v1, ptr %t123, i32 %t124, { i64, [1 x i64] } %t125)
  store i32 %t126, ptr %l68
  br label %bb29
bb29:
  %t127 = load i32, ptr %l68, !tbaa !23
  store i32 %t127, ptr %l5, !tbaa !23
  br label %bb30
bb30:
  %t128 = load i32, ptr %l10, !tbaa !23
  %t130 = add i32 %t128, 1
  store i32 %t130, ptr %l10, !tbaa !23
  br label %bb21
bb31:
  %t132 = load i32, ptr %l5, !tbaa !23
  store i32 %t132, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local void @compiler_2fmir_2ecompiler_2fmir_3averifier_2epop(ptr %v0, ptr %v1, ptr %a0, i32 %a1, { i64, ptr } %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca { i64, ptr }
  %l5 = alloca i64
  %l7 = alloca i1
  %l9 = alloca ptr
  %l12 = alloca i64
  %l14 = alloca i32
  %l19 = alloca i1
  %l20 = alloca ptr
  %l21 = alloca i32
  %l22 = alloca { i64, ptr }
  %l24 = alloca ptr
  %l27 = alloca i64
  %l29 = alloca i32
  %l37 = alloca i32
  %l40 = alloca i32
  %l41 = alloca i32
  %s2 = alloca %olang.scope
  %s4 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  store { i64, ptr } %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/mir:verifier", ptr %t1, i32 0, i32 17
  %t5 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aScopeId_3e_2eLen_3ccompiler_2fmir_3aScopeId_3e(ptr %v0, ptr %t3)
  store i64 %t5, ptr %l5
  br label %bb1
bb1:
  %t6 = load i64, ptr %l5, !tbaa !24
  %t7 = icmp eq i64 %t6, 0
  br i1 %t7, label %bb2, label %bb3
bb2:
  store i1 true, ptr %l7, !tbaa !21
  br label %bb6
bb3:
  %t9 = load ptr, ptr %l0, !tbaa !29
  %t11 = getelementptr %"compiler/mir:verifier", ptr %t9, i32 0, i32 17
  store ptr %t11, ptr %l9, !tbaa !29
  %t12 = load ptr, ptr %l0, !tbaa !29
  %t14 = getelementptr %"compiler/mir:verifier", ptr %t12, i32 0, i32 17
  %t16 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aScopeId_3e_2eLen_3ccompiler_2fmir_3aScopeId_3e(ptr %v0, ptr %t14)
  store i64 %t16, ptr %l12
  br label %bb4
bb4:
  %t17 = load i64, ptr %l12, !tbaa !24
  %t18 = sub i64 %t17, 1
  %t19 = load ptr, ptr %l9, !tbaa !29
  %t21 = call i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aScopeId_3e_2eAt_3ccompiler_2fmir_3aScopeId_3e(ptr %v0, ptr %t19, i64 %t18)
  store i32 %t21, ptr %l14
  br label %bb5
bb5:
  %t22 = load i32, ptr %l1, !tbaa !23
  %t23 = load i32, ptr %l14, !tbaa !23
  %t25 = icmp ne i32 %t23, %t22
  store i1 %t25, ptr %l7, !tbaa !21
  br label %bb6
bb6:
  %t27 = load i1, ptr %l7, !tbaa !21
  br i1 %t27, label %bb7, label %bb8
bb7:
  %t28 = load ptr, ptr %l0, !tbaa !29
  %t29 = load i32, ptr %l1, !tbaa !23
  %t32 = call i1 @compiler_2fmir_2ecompiler_2fmir_3averifier_2eopen(ptr %v0, ptr %t28, i32 %t29)
  store i1 %t32, ptr %l19
  br label %bb9
bb8:
  br label %bb17
bb9:
  %t33 = load i1, ptr %l19, !tbaa !21
  br i1 %t33, label %bb10, label %bb11
bb10:
  store %olang.scope zeroinitializer, ptr %s2
  %t34 = load ptr, ptr %l0, !tbaa !29
  store ptr %t34, ptr %l20, !tbaa !29
  %t35 = load i32, ptr %l1, !tbaa !23
  store i32 %t35, ptr %l21, !tbaa !23
  %t36 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t36, ptr %l22, !tbaa !27
  %t37 = load ptr, ptr %l0, !tbaa !29
  %t39 = getelementptr %"compiler/mir:verifier", ptr %t37, i32 0, i32 17
  store ptr %t39, ptr %l24, !tbaa !29
  %t40 = load ptr, ptr %l0, !tbaa !29
  %t42 = getelementptr %"compiler/mir:verifier", ptr %t40, i32 0, i32 17
  %t44 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aScopeId_3e_2eLen_3ccompiler_2fmir_3aScopeId_3e(ptr %v0, ptr %t42)
  store i64 %t44, ptr %l27
  br label %bb12
bb11:
  store %olang.scope zeroinitializer, ptr %s4
  %t45 = load ptr, ptr %l0, !tbaa !29
  %t46 = load i32, ptr %l1, !tbaa !23
  %t47 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t48 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d101, i32 0, i32 1) }, 1
  %t49 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d101, i32 0, i32 1) }, 0
  %t51 = sext i32 %t46 to i64
  %t52 = call i64 @__olang_fmt_i64(ptr null, i64 %t51)
  %t53 = add i64 %t49, %t52
  %t54 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d102, i32 0, i32 1) }, 1
  %t55 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d102, i32 0, i32 1) }, 0
  %t56 = add i64 %t53, %t55
  %t58 = extractvalue { i64, ptr } %t47, 1
  %t59 = extractvalue { i64, ptr } %t47, 0
  %t60 = add i64 %t56, %t59
  %t61 = extractvalue { i64, ptr } { i64 20, ptr getelementptr inbounds (<{ i64, [20 x i8] }>, ptr @.d103, i32 0, i32 1) }, 1
  %t62 = extractvalue { i64, ptr } { i64 20, ptr getelementptr inbounds (<{ i64, [20 x i8] }>, ptr @.d103, i32 0, i32 1) }, 0
  %t63 = add i64 %t60, %t62
  %t64 = call ptr @__olang_scope_alloc(ptr %s4, i64 %t63)
  call void @olang_textcopy(ptr %t64, ptr %t48, i64 %t49)
  %t65 = getelementptr i8, ptr %t64, i64 %t49
  %t66 = call i64 @__olang_fmt_i64(ptr %t65, i64 %t51)
  %t67 = getelementptr i8, ptr %t65, i64 %t52
  call void @olang_textcopy(ptr %t67, ptr %t54, i64 %t55)
  %t68 = getelementptr i8, ptr %t67, i64 %t55
  call void @olang_textcopy(ptr %t68, ptr %t58, i64 %t59)
  %t69 = getelementptr i8, ptr %t68, i64 %t59
  call void @olang_textcopy(ptr %t69, ptr %t61, i64 %t62)
  %t70 = insertvalue { i64, ptr } undef, i64 %t63, 0
  %t71 = insertvalue { i64, ptr } %t70, ptr %t64, 1
  %t73 = extractvalue { i64, ptr } %t71, 0
  %t74 = extractvalue { i64, ptr } %t71, 1
  %t75 = mul i64 %t73, 1
  %t76 = call ptr @__olang_scope_alloc(ptr %s4, i64 %t75)
  call void @llvm.memcpy.p0.p0.i64(ptr %t76, ptr %t74, i64 %t75, i1 false)
  %t77 = insertvalue { i64, ptr } undef, i64 %t73, 0
  %t78 = insertvalue { i64, ptr } %t77, ptr %t76, 1
  call void @compiler_2fmir_2ecompiler_2fmir_3averifier_2ebad(ptr %v0, ptr %s4, ptr %t45, { i64, ptr } %t78)
  br label %bb15
bb12:
  %t81 = load i64, ptr %l27, !tbaa !24
  %t82 = sub i64 %t81, 1
  %t83 = load ptr, ptr %l24, !tbaa !29
  %t85 = call i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aScopeId_3e_2eAt_3ccompiler_2fmir_3aScopeId_3e(ptr %v0, ptr %t83, i64 %t82)
  store i32 %t85, ptr %l29
  br label %bb13
bb13:
  %t86 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d104, i32 0, i32 1) }, 1
  %t87 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d104, i32 0, i32 1) }, 0
  %t88 = load i32, ptr %l21, !tbaa !23
  %t89 = sext i32 %t88 to i64
  %t90 = call i64 @__olang_fmt_i64(ptr null, i64 %t89)
  %t91 = add i64 %t87, %t90
  %t92 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d105, i32 0, i32 1) }, 1
  %t93 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d105, i32 0, i32 1) }, 0
  %t94 = add i64 %t91, %t93
  %t95 = load { i64, ptr }, ptr %l22, !tbaa !27
  %t96 = extractvalue { i64, ptr } %t95, 1
  %t97 = extractvalue { i64, ptr } %t95, 0
  %t98 = add i64 %t94, %t97
  %t99 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d106, i32 0, i32 1) }, 1
  %t100 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d106, i32 0, i32 1) }, 0
  %t101 = add i64 %t98, %t100
  %t102 = load i32, ptr %l29, !tbaa !23
  %t103 = sext i32 %t102 to i64
  %t104 = call i64 @__olang_fmt_i64(ptr null, i64 %t103)
  %t105 = add i64 %t101, %t104
  %t106 = extractvalue { i64, ptr } { i64 23, ptr getelementptr inbounds (<{ i64, [23 x i8] }>, ptr @.d107, i32 0, i32 1) }, 1
  %t107 = extractvalue { i64, ptr } { i64 23, ptr getelementptr inbounds (<{ i64, [23 x i8] }>, ptr @.d107, i32 0, i32 1) }, 0
  %t108 = add i64 %t105, %t107
  %t109 = call ptr @__olang_scope_alloc(ptr %s2, i64 %t108)
  call void @olang_textcopy(ptr %t109, ptr %t86, i64 %t87)
  %t110 = getelementptr i8, ptr %t109, i64 %t87
  %t111 = call i64 @__olang_fmt_i64(ptr %t110, i64 %t89)
  %t112 = getelementptr i8, ptr %t110, i64 %t90
  call void @olang_textcopy(ptr %t112, ptr %t92, i64 %t93)
  %t113 = getelementptr i8, ptr %t112, i64 %t93
  call void @olang_textcopy(ptr %t113, ptr %t96, i64 %t97)
  %t114 = getelementptr i8, ptr %t113, i64 %t97
  call void @olang_textcopy(ptr %t114, ptr %t99, i64 %t100)
  %t115 = getelementptr i8, ptr %t114, i64 %t100
  %t116 = call i64 @__olang_fmt_i64(ptr %t115, i64 %t103)
  %t117 = getelementptr i8, ptr %t115, i64 %t104
  call void @olang_textcopy(ptr %t117, ptr %t106, i64 %t107)
  %t118 = insertvalue { i64, ptr } undef, i64 %t108, 0
  %t119 = insertvalue { i64, ptr } %t118, ptr %t109, 1
  %t121 = extractvalue { i64, ptr } %t119, 0
  %t122 = extractvalue { i64, ptr } %t119, 1
  %t123 = mul i64 %t121, 1
  %t124 = call ptr @__olang_scope_alloc(ptr %s2, i64 %t123)
  call void @llvm.memcpy.p0.p0.i64(ptr %t124, ptr %t122, i64 %t123, i1 false)
  %t125 = insertvalue { i64, ptr } undef, i64 %t121, 0
  %t126 = insertvalue { i64, ptr } %t125, ptr %t124, 1
  %t127 = load ptr, ptr %l20, !tbaa !29
  call void @compiler_2fmir_2ecompiler_2fmir_3averifier_2ebad(ptr %v0, ptr %s2, ptr %t127, { i64, ptr } %t126)
  br label %bb14
bb14:
  call void @__olang_scope_close(ptr %s2)
  br label %bb16
bb15:
  call void @__olang_scope_close(ptr %s4)
  br label %bb16
bb16:
  br label %ret
bb17:
  %t129 = load ptr, ptr %l0, !tbaa !29
  %t131 = getelementptr %"compiler/mir:verifier", ptr %t129, i32 0, i32 17
  %t133 = call { i32, i32 } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aScopeId_3e_2ePop_3ccompiler_2fmir_3aScopeId_3e(ptr %v0, ptr %t131)
  %t134 = extractvalue { i32, i32 } %t133, 1
  %t135 = extractvalue { i32, i32 } %t133, 0
  store i32 %t135, ptr %l41
  %t136 = icmp ne i32 %t135, 0
  br i1 %t136, label %bb19, label %ok.137, !prof !99
ok.137:
  store i32 %t134, ptr %l40
  br label %bb18
bb18:
  %t138 = load i32, ptr %l40, !tbaa !23
  store i32 %t138, ptr %l37, !tbaa !23
  br label %bb21
bb19:
  br label %bb20
bb20:
  call void @__olang_check_failed(ptr @olang_loc_525ae97147cf6b9b_c46e40fbd793c77f)
  unreachable
bb21:
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2fmir_2ecompiler_2fmir_3averifier_2ereach(ptr %v0, ptr %v1, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l3 = alloca i32
  %l4 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l5 = alloca { i64, ptr }
  %l6 = alloca i64
  %l7 = alloca i64
  %l9 = alloca ptr
  %l10 = alloca i64
  %l11 = alloca { i64, [21 x i64] }
  %l12 = alloca i32
  %l13 = alloca ptr
  %l14 = alloca i64
  %l15 = alloca i32
  %l16 = alloca i64
  %l17 = alloca i64
  %l18 = alloca i64
  %l19 = alloca i64
  %l20 = alloca i64
  %l21 = alloca i64
  %l24 = alloca ptr
  %l26 = alloca i64
  %l27 = alloca ptr
  %l28 = alloca i64
  %l30 = alloca i64
  %l33 = alloca { i64, ptr }
  %l35 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l38 = alloca { i64, ptr }
  %l40 = alloca i64
  %l43 = alloca i32
  %l45 = alloca i32
  %l46 = alloca i32
  %l47 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l48 = alloca ptr
  %l51 = alloca ptr
  %l55 = alloca %"compiler/mir:BasicBlock"
  %l57 = alloca { i64, ptr }
  %l65 = alloca { i64, ptr }
  %l74 = alloca ptr
  %l78 = alloca %"compiler/mir:BasicBlock"
  %l80 = alloca %"compiler/mir:BasicBlock"
  %l82 = alloca i64
  %l84 = alloca i64
  %l89 = alloca { i64, [21 x i64] }
  %l90 = alloca { i64, [21 x i64] }
  %l101 = alloca i64
  %l103 = alloca i64
  %l108 = alloca i32
  %l110 = alloca { i64, ptr }
  %l116 = alloca { i64, ptr }
  %l128 = alloca i64
  %l131 = alloca i64
  %l150 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %s1 = alloca %olang.scope
  %s3 = alloca %olang.scope
  %s6 = alloca %olang.scope
  %s18 = alloca %olang.scope
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/mir:verifier", ptr %t1, i32 0, i32 0
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t6 = getelementptr %"compiler/mir:Fn", ptr %t4, i32 0, i32 9
  store ptr %t6, ptr %l24, !tbaa !29
  %t7 = load ptr, ptr %l24, !tbaa !29
  %t8 = call ptr @__olang_scope_or(ptr %v1, ptr %t7)
  %t9 = ptrtoint ptr %t8 to i64
  %t11 = inttoptr i64 %t9 to ptr
  %t12 = load ptr, ptr %l24, !tbaa !29
  %t13 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aBasicBlock_3e_2eLen_3ccompiler_2fmir_3aBasicBlock_3e(ptr %t11, ptr %t12)
  store i64 %t13, ptr %l26
  br label %bb1
bb1:
  %t14 = load i64, ptr %l26, !tbaa !24
  store i64 %t14, ptr %l1, !tbaa !24
  %t15 = load ptr, ptr %l0, !tbaa !29
  store ptr %t15, ptr %l27, !tbaa !29
  %t16 = ptrtoint ptr %v0 to i64
  store i64 %t16, ptr %l28, !tbaa !24
  %t17 = load i1, ptr @olang_2esole_2ecompiler_2fmir_3averifier_2e13
  br i1 %t17, label %bb2, label %bb3
bb2:
  %t19 = call ptr @__olang_region_make(ptr %v0)
  %t20 = ptrtoint ptr %t19 to i64
  store i64 %t20, ptr %l28, !tbaa !24
  br label %bb3
bb3:
  %t21 = load i64, ptr %l1, !tbaa !24
  store i64 %t21, ptr %l30, !tbaa !24
  %t22 = load i64, ptr %l30, !tbaa !24
  %t23 = icmp sge i64 %t22, 0
  br i1 %t23, label %bb4, label %bb5
bb4:
  %t25 = load i64, ptr %l30, !tbaa !24
  %t26 = mul i64 %t25, 1
  %t27 = load i64, ptr %l28
  %t28 = inttoptr i64 %t27 to ptr
  %t29 = call ptr @__olang_scope_alloc_zeroed(ptr %t28, i64 %t26)
  %t30 = insertvalue { i64, ptr } undef, i64 %t25, 0
  %t31 = insertvalue { i64, ptr } %t30, ptr %t29, 1
  %t32 = load ptr, ptr %l27, !tbaa !29
  %t33 = getelementptr %"compiler/mir:verifier", ptr %t32, i32 0, i32 13
  %t34 = load { i64, ptr }, ptr %t33, !tbaa !27
  store { i64, ptr } %t34, ptr %l33, !tbaa !27
  %t36 = load ptr, ptr %l27, !tbaa !29
  %t37 = getelementptr %"compiler/mir:verifier", ptr %t36, i32 0, i32 13
  store { i64, ptr } %t31, ptr %t37, !tbaa !27
  %t38 = load i1, ptr @olang_2esole_2ecompiler_2fmir_3averifier_2e13
  br i1 %t38, label %bb6, label %bb7
bb5:
  call void @__olang_check_failed(ptr @olang_loc_1ab0dfa533b17ebc_4a4130204b0a3608)
  unreachable
bb6:
  %t40 = load { i64, ptr }, ptr %l33
  %t41 = extractvalue { i64, ptr } %t40, 1
  call void @__olang_region_release(ptr %t41)
  store { i64, ptr } zeroinitializer, ptr %l33
  br label %bb7
bb7:
  %t42 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aBlockId_3e_2ector(ptr %s0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t42, ptr %l35
  br label %bb8
bb8:
  %t43 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l35
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t43, ptr %l2
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aBlockId_3e_2ePush_3ccompiler_2fmir_3aBlockId_3e(ptr %s0, ptr %l2, i32 0)
  br label %bb9
bb9:
  %t45 = load ptr, ptr %l0, !tbaa !29
  %t47 = getelementptr %"compiler/mir:verifier", ptr %t45, i32 0, i32 13
  %t48 = load { i64, ptr }, ptr %t47, !tbaa !27
  store { i64, ptr } %t48, ptr %l38, !tbaa !27
  %t49 = getelementptr { i64, ptr }, ptr %l38, i32 0, i32 1
  %t50 = load ptr, ptr %t49, !tbaa !27
  %t51 = getelementptr i1, ptr %t50, i64 0
  store i1 true, ptr %t51, !tbaa !31
  br label %bb10
bb10:
  store %olang.scope zeroinitializer, ptr %s1
  %t53 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aBlockId_3e_2eLen_3ccompiler_2fmir_3aBlockId_3e(ptr %s0, ptr %l2)
  store i64 %t53, ptr %l40
  br label %bb11
bb11:
  %t54 = load i64, ptr %l40, !tbaa !24
  %t55 = icmp sgt i64 %t54, 0
  %t57 = xor i1 %t55, true
  br i1 %t57, label %bb12, label %bb13
bb12:
  call void @__olang_scope_close(ptr %s1)
  br label %bb65
bb13:
  br label %bb14
bb14:
  %t60 = call { i32, i32 } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aBlockId_3e_2ePop_3ccompiler_2fmir_3aBlockId_3e(ptr %s0, ptr %l2)
  %t61 = extractvalue { i32, i32 } %t60, 1
  %t62 = extractvalue { i32, i32 } %t60, 0
  store i32 %t62, ptr %l46
  %t63 = icmp ne i32 %t62, 0
  br i1 %t63, label %bb16, label %ok.64, !prof !99
ok.64:
  store i32 %t61, ptr %l45
  br label %bb15
bb15:
  %t65 = load i32, ptr %l45, !tbaa !23
  store i32 %t65, ptr %l43, !tbaa !23
  br label %bb18
bb16:
  br label %bb17
bb17:
  call void @__olang_check_failed(ptr @olang_loc_21ecf2a36b4d7692_5e1d5f90bd4192b6)
  unreachable
bb18:
  %t66 = load i32, ptr %l43, !tbaa !23
  store i32 %t66, ptr %l3, !tbaa !23
  %t67 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aBlockId_3e_2ector(ptr %s1, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t67, ptr %l47
  br label %bb19
bb19:
  %t68 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l47
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t68, ptr %l4
  store %olang.scope zeroinitializer, ptr %s3
  %t69 = load ptr, ptr %l0, !tbaa !29
  store ptr %t69, ptr %l48, !tbaa !29
  %t70 = load ptr, ptr %l0, !tbaa !29
  %t72 = getelementptr %"compiler/mir:verifier", ptr %t70, i32 0, i32 0
  %t73 = load ptr, ptr %t72, !tbaa !29
  %t75 = getelementptr %"compiler/mir:Fn", ptr %t73, i32 0, i32 9
  store ptr %t75, ptr %l51, !tbaa !29
  %t76 = load i32, ptr %l3, !tbaa !23
  %t78 = sext i32 %t76 to i64
  %t79 = load ptr, ptr %l51, !tbaa !29
  %t80 = call ptr @__olang_scope_or(ptr %v1, ptr %t79)
  %t81 = ptrtoint ptr %t80 to i64
  %t83 = inttoptr i64 %t81 to ptr
  %t84 = load ptr, ptr %l51, !tbaa !29
  %t86 = call %"compiler/mir:BasicBlock" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aBasicBlock_3e_2eAt_3ccompiler_2fmir_3aBasicBlock_3e(ptr %t83, ptr %s3, ptr %t84, i64 %t78)
  store %"compiler/mir:BasicBlock" %t86, ptr %l55
  br label %bb20
bb20:
  %t87 = getelementptr %"compiler/mir:BasicBlock", ptr %l55, i32 0, i32 1
  %t88 = load { i64, [8 x i64] }, ptr %t87
  %t89 = load ptr, ptr %l48, !tbaa !29
  %t91 = call { i64, ptr } @compiler_2fmir_2ecompiler_2fmir_3averifier_2esuccs(ptr %v0, ptr %s3, ptr %v1, ptr %t89, { i64, [8 x i64] } %t88)
  store { i64, ptr } %t91, ptr %l57
  br label %bb21
bb21:
  %t92 = load { i64, ptr }, ptr %l57, !tbaa !27
  %t93 = extractvalue { i64, ptr } %t92, 0
  %t94 = extractvalue { i64, ptr } %t92, 1
  %t95 = mul i64 %t93, 4
  %t96 = call ptr @__olang_scope_alloc(ptr %s3, i64 %t95)
  call void @llvm.memcpy.p0.p0.i64(ptr %t96, ptr %t94, i64 %t95, i1 false)
  %t97 = insertvalue { i64, ptr } undef, i64 %t93, 0
  %t98 = insertvalue { i64, ptr } %t97, ptr %t96, 1
  store { i64, ptr } %t98, ptr %l5, !tbaa !27
  store i64 0, ptr %l6, !tbaa !24
  %t100 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t102 = extractvalue { i64, ptr } %t100, 0
  store i64 %t102, ptr %l7, !tbaa !24
  br label %bb22
bb22:
  %t104 = load i64, ptr %l6, !tbaa !24
  %t105 = load i64, ptr %l7, !tbaa !24
  %t108 = icmp slt i64 %t104, %t105
  %t110 = xor i1 %t108, true
  br i1 %t110, label %bb23, label %bb24
bb23:
  br label %bb28
bb24:
  br label %bb25
bb25:
  %t112 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t112, ptr %l65, !tbaa !27
  %t113 = load i64, ptr %l6, !tbaa !24
  %t115 = getelementptr { i64, ptr }, ptr %l65, i32 0, i32 1
  %t116 = load ptr, ptr %t115, !tbaa !27
  %t117 = getelementptr i32, ptr %t116, i64 %t113
  %t118 = load i32, ptr %t117, !tbaa !33
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aBlockId_3e_2ePush_3ccompiler_2fmir_3aBlockId_3e(ptr %s1, ptr %l4, i32 %t118)
  br label %bb26
bb26:
  br label %bb27
bb27:
  %t123 = load i64, ptr %l6, !tbaa !24
  %t125 = add i64 %t123, 1
  store i64 %t125, ptr %l6, !tbaa !24
  br label %bb22
bb28:
  call void @__olang_scope_close(ptr %s3)
  store %olang.scope zeroinitializer, ptr %s6
  %t127 = load ptr, ptr %l0, !tbaa !29
  %t129 = getelementptr %"compiler/mir:verifier", ptr %t127, i32 0, i32 0
  %t130 = load ptr, ptr %t129, !tbaa !29
  %t132 = getelementptr %"compiler/mir:Fn", ptr %t130, i32 0, i32 9
  store ptr %t132, ptr %l74, !tbaa !29
  %t133 = load i32, ptr %l3, !tbaa !23
  %t135 = sext i32 %t133 to i64
  %t136 = load ptr, ptr %l74, !tbaa !29
  %t137 = call ptr @__olang_scope_or(ptr %v1, ptr %t136)
  %t138 = ptrtoint ptr %t137 to i64
  %t140 = inttoptr i64 %t138 to ptr
  %t141 = load ptr, ptr %l74, !tbaa !29
  %t143 = call %"compiler/mir:BasicBlock" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aBasicBlock_3e_2eAt_3ccompiler_2fmir_3aBasicBlock_3e(ptr %t140, ptr %s6, ptr %t141, i64 %t135)
  store %"compiler/mir:BasicBlock" %t143, ptr %l78
  br label %bb29
bb29:
  %t145 = call %"compiler/mir:BasicBlock" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2fmir_3aBasicBlock(ptr %s6, ptr %l78)
  store %"compiler/mir:BasicBlock" %t145, ptr %l80
  br label %bb30
bb30:
  %t146 = getelementptr %"compiler/mir:BasicBlock", ptr %l80, i32 0, i32 0
  store ptr %t146, ptr %l9, !tbaa !29
  store i64 0, ptr %l10, !tbaa !24
  br label %bb31
bb31:
  %t148 = load i64, ptr %l10, !tbaa !24
  store i64 %t148, ptr %l82, !tbaa !24
  %t149 = load ptr, ptr %l9, !tbaa !29
  %t151 = call i64 @compiler_2fmir_2ecompiler_2fmir_3aStmtList_2eLen(ptr %s6, ptr %t149)
  store i64 %t151, ptr %l84
  br label %bb32
bb32:
  %t152 = load i64, ptr %l82, !tbaa !24
  %t153 = load i64, ptr %l84, !tbaa !24
  %t154 = icmp slt i64 %t152, %t153
  %t156 = xor i1 %t154, true
  br i1 %t156, label %bb33, label %bb34
bb33:
  br label %bb51
bb34:
  br label %bb35
bb35:
  %t158 = load ptr, ptr %l9, !tbaa !29
  %t159 = load i64, ptr %l10, !tbaa !24
  %t162 = call { i64, [21 x i64] } @compiler_2fmir_2ecompiler_2fmir_3aStmtList_2eAt(ptr %s6, ptr %t158, i64 %t159)
  store { i64, [21 x i64] } %t162, ptr %l89
  br label %bb36
bb36:
  call void @llvm.memmove.p0.p0.i64(ptr %l11, ptr %l89, i64 176, i1 false)
  call void @llvm.memmove.p0.p0.i64(ptr %l90, ptr %l11, i64 176, i1 false)
  %t163 = load { i64, [21 x i64] }, ptr %l90
  %t164 = extractvalue { i64, [21 x i64] } %t163, 0
  %t165 = icmp eq i64 %t164, 15
  br i1 %t165, label %bb37, label %bb38
bb37:
  %t167 = getelementptr { i64, [21 x i64] }, ptr %l11, i32 0, i32 1
  %t168 = getelementptr { %"compiler/source:Span", i32, i32 }, ptr %t167, i32 0, i32 2
  %t169 = load i32, ptr %t168
  store i32 %t169, ptr %l12, !tbaa !23
  br label %bb39
bb38:
  br label %bb44
bb39:
  %t171 = load i32, ptr %l12, !tbaa !23
  %t172 = load i32, ptr @G_2ecompiler_2fmir_2eNoBlock, !tbaa !23
  %t175 = icmp ne i32 %t171, %t172
  br i1 %t175, label %bb40, label %bb41
bb40:
  %t177 = load i32, ptr %l12, !tbaa !23
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aBlockId_3e_2ePush_3ccompiler_2fmir_3aBlockId_3e(ptr %s1, ptr %l4, i32 %t177)
  br label %bb42
bb41:
  br label %bb43
bb42:
  br label %bb43
bb43:
  br label %bb49
bb44:
  br i1 true, label %bb45, label %bb46
bb45:
  br label %bb47
bb46:
  br label %bb48
bb47:
  br label %bb49
bb48:
  call void @__olang_check_failed(ptr @olang_loc_7127dab5ce57c749_b077692428e4994d)
  unreachable
bb49:
  br label %bb50
bb50:
  %t180 = load i64, ptr %l10, !tbaa !24
  %t182 = add i64 %t180, 1
  store i64 %t182, ptr %l10, !tbaa !24
  br label %bb31
bb51:
  call void @__olang_scope_close(ptr %s6)
  store ptr %l4, ptr %l13, !tbaa !29
  store i64 0, ptr %l14, !tbaa !24
  br label %bb52
bb52:
  %t185 = load i64, ptr %l14, !tbaa !24
  store i64 %t185, ptr %l101, !tbaa !24
  %t186 = load ptr, ptr %l13, !tbaa !29
  %t188 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aBlockId_3e_2eLen_3ccompiler_2fmir_3aBlockId_3e(ptr %s1, ptr %t186)
  store i64 %t188, ptr %l103
  br label %bb53
bb53:
  %t189 = load i64, ptr %l101, !tbaa !24
  %t190 = load i64, ptr %l103, !tbaa !24
  %t191 = icmp slt i64 %t189, %t190
  %t193 = xor i1 %t191, true
  br i1 %t193, label %bb54, label %bb55
bb54:
  br label %bb63
bb55:
  br label %bb56
bb56:
  %t195 = load ptr, ptr %l13, !tbaa !29
  %t196 = load i64, ptr %l14, !tbaa !24
  %t199 = call i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aBlockId_3e_2eAt_3ccompiler_2fmir_3aBlockId_3e(ptr %s1, ptr %t195, i64 %t196)
  store i32 %t199, ptr %l108
  br label %bb57
bb57:
  %t200 = load i32, ptr %l108, !tbaa !23
  store i32 %t200, ptr %l15, !tbaa !23
  %t201 = load ptr, ptr %l0, !tbaa !29
  %t203 = getelementptr %"compiler/mir:verifier", ptr %t201, i32 0, i32 13
  %t204 = load { i64, ptr }, ptr %t203, !tbaa !27
  store { i64, ptr } %t204, ptr %l110, !tbaa !27
  %t205 = load i32, ptr %l15, !tbaa !23
  %t207 = sext i32 %t205 to i64
  %t209 = getelementptr { i64, ptr }, ptr %l110, i32 0, i32 1
  %t210 = load ptr, ptr %t209, !tbaa !27
  %t211 = getelementptr i1, ptr %t210, i64 %t207
  %t212 = load i1, ptr %t211, !tbaa !31
  %t214 = xor i1 %t212, true
  br i1 %t214, label %bb58, label %bb59
bb58:
  %t216 = load ptr, ptr %l0, !tbaa !29
  %t218 = getelementptr %"compiler/mir:verifier", ptr %t216, i32 0, i32 13
  %t219 = load { i64, ptr }, ptr %t218, !tbaa !27
  store { i64, ptr } %t219, ptr %l116, !tbaa !27
  %t220 = load i32, ptr %l15, !tbaa !23
  %t222 = sext i32 %t220 to i64
  %t224 = getelementptr { i64, ptr }, ptr %l116, i32 0, i32 1
  %t225 = load ptr, ptr %t224, !tbaa !27
  %t226 = getelementptr i1, ptr %t225, i64 %t222
  store i1 true, ptr %t226, !tbaa !31
  %t227 = load i32, ptr %l15, !tbaa !23
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aBlockId_3e_2ePush_3ccompiler_2fmir_3aBlockId_3e(ptr %s0, ptr %l2, i32 %t227)
  br label %bb60
bb59:
  br label %bb61
bb60:
  br label %bb61
bb61:
  br label %bb62
bb62:
  %t230 = load i64, ptr %l14, !tbaa !24
  %t232 = add i64 %t230, 1
  store i64 %t232, ptr %l14, !tbaa !24
  br label %bb52
bb63:
  call void @__olang_scope_close(ptr %s1)
  br label %bb64
bb64:
  br label %bb10
bb65:
  %t234 = load ptr, ptr %l0, !tbaa !29
  %t236 = getelementptr %"compiler/mir:verifier", ptr %t234, i32 0, i32 4
  store i64 -1, ptr %t236, !tbaa !24
  store i64 0, ptr %l16, !tbaa !24
  %t237 = load i64, ptr %l1, !tbaa !24
  store i64 %t237, ptr %l17, !tbaa !24
  store i64 1, ptr %l18, !tbaa !24
  %t239 = load i64, ptr %l17, !tbaa !24
  %t240 = load i64, ptr %l16, !tbaa !24
  %t243 = icmp sgt i64 %t239, %t240
  br i1 %t243, label %bb66, label %bb67
bb66:
  %t245 = load i64, ptr %l18, !tbaa !24
  %t247 = icmp sgt i64 %t245, 0
  br i1 %t247, label %bb68, label %bb69
bb67:
  store i64 0, ptr %l128, !tbaa !24
  br label %bb71
bb68:
  %t249 = load i64, ptr %l17, !tbaa !24
  %t250 = load i64, ptr %l16, !tbaa !24
  %t253 = sub i64 %t249, %t250
  %t254 = load i64, ptr %l18, !tbaa !24
  %t257 = add i64 %t253, %t254
  %t259 = sub i64 %t257, 1
  %t260 = load i64, ptr %l18, !tbaa !24
  %t263 = sdiv i64 %t259, %t260
  store i64 %t263, ptr %l131, !tbaa !24
  br label %bb70
bb69:
  store i64 0, ptr %l131, !tbaa !24
  br label %bb70
bb70:
  %t265 = load i64, ptr %l131, !tbaa !24
  store i64 %t265, ptr %l128, !tbaa !24
  br label %bb71
bb71:
  %t266 = load i64, ptr %l128, !tbaa !24
  store i64 %t266, ptr %l19, !tbaa !24
  store i64 0, ptr %l20, !tbaa !24
  br label %bb72
bb72:
  %t267 = load i64, ptr %l20, !tbaa !24
  %t268 = load i64, ptr %l19, !tbaa !24
  %t271 = icmp slt i64 %t267, %t268
  %t273 = xor i1 %t271, true
  br i1 %t273, label %bb73, label %bb74
bb73:
  br label %bb81
bb74:
  br label %bb75
bb75:
  %t275 = load i64, ptr %l16, !tbaa !24
  %t276 = load i64, ptr %l20, !tbaa !24
  %t277 = load i64, ptr %l18, !tbaa !24
  %t280 = mul i64 %t276, %t277
  %t283 = add i64 %t275, %t280
  store i64 %t283, ptr %l21, !tbaa !24
  %t285 = load ptr, ptr %l0, !tbaa !29
  %t287 = getelementptr %"compiler/mir:verifier", ptr %t285, i32 0, i32 13
  %t288 = load { i64, ptr }, ptr %t287, !tbaa !27
  store { i64, ptr } %t288, ptr %l150, !tbaa !27
  %t289 = load i64, ptr %l21, !tbaa !24
  %t291 = getelementptr { i64, ptr }, ptr %l150, i32 0, i32 1
  %t292 = load ptr, ptr %t291, !tbaa !27
  %t293 = getelementptr i1, ptr %t292, i64 %t289
  %t294 = load i1, ptr %t293, !tbaa !31
  %t296 = xor i1 %t294, true
  br i1 %t296, label %bb76, label %bb77
bb76:
  store %olang.scope zeroinitializer, ptr %s18
  %t298 = load ptr, ptr %l0, !tbaa !29
  %t299 = load i64, ptr %l21, !tbaa !24
  %t302 = getelementptr %"compiler/mir:verifier", ptr %t298, i32 0, i32 3
  store i64 %t299, ptr %t302, !tbaa !24
  %t303 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2fmir_2ecompiler_2fmir_3averifier_2ebad(ptr %v0, ptr %s18, ptr %t303, { i64, ptr } { i64 35, ptr getelementptr inbounds (<{ i64, [35 x i8] }>, ptr @.d108, i32 0, i32 1) })
  br label %bb78
bb77:
  br label %bb79
bb78:
  call void @__olang_scope_close(ptr %s18)
  br label %bb79
bb79:
  br label %bb80
bb80:
  %t305 = load i64, ptr %l20, !tbaa !24
  %t307 = add i64 %t305, 1
  store i64 %t307, ptr %l20, !tbaa !24
  br label %bb72
bb81:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2fmir_2ecompiler_2fmir_3averifier_2ereadPlace(ptr %v0, ptr %v1, ptr %a0, %"compiler/mir:Lvalue" %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/mir:Lvalue"
  %l2 = alloca { i64, [2 x i64] }
  %l3 = alloca i32
  %l4 = alloca i32
  %l5 = alloca i32
  %l6 = alloca i32
  %l7 = alloca i32
  %l8 = alloca i32
  %l10 = alloca { i64, [1 x i64] }
  %l11 = alloca i32
  %l22 = alloca i32
  %l25 = alloca i32
  %l45 = alloca ptr
  %l52 = alloca { i64, [1 x i64] }
  store ptr %a0, ptr %l0
  store %"compiler/mir:Lvalue" %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = getelementptr %"compiler/mir:Lvalue", ptr %l1, i32 0, i32 0
  %t2 = load { i64, [2 x i64] }, ptr %t1
  store { i64, [2 x i64] } %t2, ptr %l2
  %t4 = load { i64, [2 x i64] }, ptr %l2
  %t6 = extractvalue { i64, [2 x i64] } %t4, 0
  %t7 = icmp eq i64 %t6, 1
  br i1 %t7, label %bb1, label %bb2
bb1:
  %t9 = getelementptr { i64, [2 x i64] }, ptr %l2, i32 0, i32 1
  %t10 = getelementptr { i32 }, ptr %t9, i32 0, i32 0
  %t11 = load i32, ptr %t10
  store i32 %t11, ptr %l3, !tbaa !23
  br label %bb3
bb2:
  br label %bb5
bb3:
  %t13 = load ptr, ptr %l0, !tbaa !29
  %t14 = load i32, ptr %l3, !tbaa !23
  call void @compiler_2fmir_2ecompiler_2fmir_3averifier_2eused(ptr %v0, ptr %t13, i32 %t14)
  br label %bb4
bb4:
  br label %bb10
bb5:
  br i1 true, label %bb6, label %bb7
bb6:
  br label %bb8
bb7:
  br label %bb9
bb8:
  br label %bb10
bb9:
  call void @__olang_check_failed(ptr @olang_loc_82c1dfc51032d1af_585fe42c43fa9d8b)
  unreachable
bb10:
  store i32 0, ptr %l4, !tbaa !23
  %t17 = getelementptr %"compiler/mir:Lvalue", ptr %l1, i32 0, i32 1
  %t18 = getelementptr %"compiler/mir:Range", ptr %t17, i32 0, i32 1
  %t19 = load i32, ptr %t18, !tbaa !23
  store i32 %t19, ptr %l5, !tbaa !23
  store i32 1, ptr %l6, !tbaa !23
  %t21 = load i32, ptr %l5, !tbaa !23
  %t22 = load i32, ptr %l4, !tbaa !23
  %t25 = icmp sgt i32 %t21, %t22
  br i1 %t25, label %bb11, label %bb12
bb11:
  %t27 = load i32, ptr %l6, !tbaa !23
  %t29 = icmp sgt i32 %t27, 0
  br i1 %t29, label %bb13, label %bb14
bb12:
  store i32 0, ptr %l22, !tbaa !23
  br label %bb16
bb13:
  %t31 = load i32, ptr %l5, !tbaa !23
  %t32 = load i32, ptr %l4, !tbaa !23
  %t35 = sub i32 %t31, %t32
  %t36 = load i32, ptr %l6, !tbaa !23
  %t39 = add i32 %t35, %t36
  %t41 = sub i32 %t39, 1
  %t42 = load i32, ptr %l6, !tbaa !23
  %t45 = sdiv i32 %t41, %t42
  store i32 %t45, ptr %l25, !tbaa !23
  br label %bb15
bb14:
  store i32 0, ptr %l25, !tbaa !23
  br label %bb15
bb15:
  %t47 = load i32, ptr %l25, !tbaa !23
  store i32 %t47, ptr %l22, !tbaa !23
  br label %bb16
bb16:
  %t48 = load i32, ptr %l22, !tbaa !23
  store i32 %t48, ptr %l7, !tbaa !23
  store i32 0, ptr %l8, !tbaa !23
  br label %bb17
bb17:
  %t49 = load i32, ptr %l8, !tbaa !23
  %t50 = load i32, ptr %l7, !tbaa !23
  %t53 = icmp slt i32 %t49, %t50
  %t55 = xor i1 %t53, true
  br i1 %t55, label %bb18, label %bb19
bb18:
  br label %bb33
bb19:
  br label %bb20
bb20:
  %t57 = load i32, ptr %l4, !tbaa !23
  %t58 = load i32, ptr %l8, !tbaa !23
  %t59 = load i32, ptr %l6, !tbaa !23
  %t62 = mul i32 %t58, %t59
  %t65 = add i32 %t57, %t62
  %t67 = load ptr, ptr %l0, !tbaa !29
  %t69 = getelementptr %"compiler/mir:verifier", ptr %t67, i32 0, i32 0
  %t70 = load ptr, ptr %t69, !tbaa !29
  %t72 = getelementptr %"compiler/mir:Fn", ptr %t70, i32 0, i32 10
  store ptr %t72, ptr %l45, !tbaa !29
  %t73 = getelementptr %"compiler/mir:Lvalue", ptr %l1, i32 0, i32 1
  %t74 = getelementptr %"compiler/mir:Range", ptr %t73, i32 0, i32 0
  %t75 = load i32, ptr %t74, !tbaa !23
  %t77 = sext i32 %t75 to i64
  %t80 = sext i32 %t65 to i64
  %t83 = add i64 %t77, %t80
  %t84 = load ptr, ptr %l45, !tbaa !29
  %t85 = call ptr @__olang_scope_or(ptr %v1, ptr %t84)
  %t86 = ptrtoint ptr %t85 to i64
  %t88 = inttoptr i64 %t86 to ptr
  %t89 = load ptr, ptr %l45, !tbaa !29
  %t91 = call { i64, [1 x i64] } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aProj_3e_2eAt_3ccompiler_2fmir_3aProj_3e(ptr %t88, ptr %t89, i64 %t83)
  store { i64, [1 x i64] } %t91, ptr %l52
  br label %bb21
bb21:
  %t92 = load { i64, [1 x i64] }, ptr %l52
  store { i64, [1 x i64] } %t92, ptr %l10
  %t93 = load { i64, [1 x i64] }, ptr %l10
  %t95 = extractvalue { i64, [1 x i64] } %t93, 0
  %t96 = icmp eq i64 %t95, 1
  br i1 %t96, label %bb22, label %bb23
bb22:
  %t98 = getelementptr { i64, [1 x i64] }, ptr %l10, i32 0, i32 1
  %t99 = getelementptr { i32 }, ptr %t98, i32 0, i32 0
  %t100 = load i32, ptr %t99
  store i32 %t100, ptr %l11, !tbaa !23
  br label %bb24
bb23:
  br label %bb26
bb24:
  %t102 = load ptr, ptr %l0, !tbaa !29
  %t103 = load i32, ptr %l11, !tbaa !23
  call void @compiler_2fmir_2ecompiler_2fmir_3averifier_2eused(ptr %v0, ptr %t102, i32 %t103)
  br label %bb25
bb25:
  br label %bb31
bb26:
  br i1 true, label %bb27, label %bb28
bb27:
  br label %bb29
bb28:
  br label %bb30
bb29:
  br label %bb31
bb30:
  call void @__olang_check_failed(ptr @olang_loc_d0fb5c63af130ee_9fb6b0b43bcc334a)
  unreachable
bb31:
  br label %bb32
bb32:
  %t106 = load i32, ptr %l8, !tbaa !23
  %t108 = add i32 %t106, 1
  store i32 %t108, ptr %l8, !tbaa !23
  br label %bb17
bb33:
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2fmir_2ecompiler_2fmir_3averifier_2ervalueFlow(ptr %v0, ptr %v1, ptr %a0, { i64, [15 x i64] } %a1) #0 {
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
  %l16 = alloca i32
  %l17 = alloca i32
  %l18 = alloca i32
  %l19 = alloca i32
  %l20 = alloca i32
  %l22 = alloca { i64, [1 x i64] }
  %l23 = alloca { i64, [1 x i64] }
  %l24 = alloca { i64, [1 x i64] }
  %l25 = alloca { i64, [4 x i64] }
  %l26 = alloca { i64, [1 x i64] }
  %l27 = alloca { i64, [4 x i64] }
  %l28 = alloca { i64, [1 x i64] }
  %l29 = alloca { i64, [4 x i64] }
  %l30 = alloca { i64, [1 x i64] }
  %l112 = alloca i32
  %l115 = alloca i32
  %l133 = alloca ptr
  %l136 = alloca ptr
  %l143 = alloca { i64, [1 x i64] }
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
  br label %bb7
bb2:
  %t10 = load { i64, [15 x i64] }, ptr %l1
  %t12 = extractvalue { i64, [15 x i64] } %t10, 0
  %t13 = icmp eq i64 %t12, 11
  br i1 %t13, label %bb3, label %bb4
bb3:
  %t15 = getelementptr { i64, [15 x i64] }, ptr %l1, i32 0, i32 1
  %t16 = getelementptr { { i64, [4 x i64] }, i32, i32 }, ptr %t15, i32 0, i32 0
  %t17 = load { i64, [4 x i64] }, ptr %t16
  store { i64, [4 x i64] } %t17, ptr %l2
  br label %bb7
bb4:
  %t19 = load { i64, [15 x i64] }, ptr %l1
  %t21 = extractvalue { i64, [15 x i64] } %t19, 0
  %t22 = icmp eq i64 %t21, 22
  br i1 %t22, label %bb5, label %bb6
bb5:
  %t24 = getelementptr { i64, [15 x i64] }, ptr %l1, i32 0, i32 1
  %t25 = getelementptr { { i64, [4 x i64] } }, ptr %t24, i32 0, i32 0
  %t26 = load { i64, [4 x i64] }, ptr %t25
  store { i64, [4 x i64] } %t26, ptr %l2
  br label %bb7
bb6:
  br label %bb9
bb7:
  %t28 = load ptr, ptr %l0, !tbaa !29
  %t29 = load { i64, [4 x i64] }, ptr %l2
  call void @compiler_2fmir_2ecompiler_2fmir_3averifier_2ereads(ptr %v0, ptr %v1, ptr %t28, { i64, [4 x i64] } %t29)
  br label %bb8
bb8:
  br label %bb117
bb9:
  %t32 = load { i64, [15 x i64] }, ptr %l1
  %t34 = extractvalue { i64, [15 x i64] } %t32, 0
  %t35 = icmp eq i64 %t34, 1
  br i1 %t35, label %bb10, label %bb11
bb10:
  %t37 = getelementptr { i64, [15 x i64] }, ptr %l1, i32 0, i32 1
  %t38 = getelementptr { %"compiler/mir:Lvalue", i32 }, ptr %t37, i32 0, i32 0
  %t39 = load %"compiler/mir:Lvalue", ptr %t38
  store %"compiler/mir:Lvalue" %t39, ptr %l3
  br label %bb18
bb11:
  %t41 = load { i64, [15 x i64] }, ptr %l1
  %t43 = extractvalue { i64, [15 x i64] } %t41, 0
  %t44 = icmp eq i64 %t43, 2
  br i1 %t44, label %bb12, label %bb13
bb12:
  %t46 = getelementptr { i64, [15 x i64] }, ptr %l1, i32 0, i32 1
  %t47 = getelementptr { %"compiler/mir:Lvalue" }, ptr %t46, i32 0, i32 0
  %t48 = load %"compiler/mir:Lvalue", ptr %t47
  store %"compiler/mir:Lvalue" %t48, ptr %l3
  br label %bb18
bb13:
  %t50 = load { i64, [15 x i64] }, ptr %l1
  %t52 = extractvalue { i64, [15 x i64] } %t50, 0
  %t53 = icmp eq i64 %t52, 5
  br i1 %t53, label %bb14, label %bb15
bb14:
  %t55 = getelementptr { i64, [15 x i64] }, ptr %l1, i32 0, i32 1
  %t56 = getelementptr { %"compiler/mir:Lvalue" }, ptr %t55, i32 0, i32 0
  %t57 = load %"compiler/mir:Lvalue", ptr %t56
  store %"compiler/mir:Lvalue" %t57, ptr %l3
  br label %bb18
bb15:
  %t59 = load { i64, [15 x i64] }, ptr %l1
  %t61 = extractvalue { i64, [15 x i64] } %t59, 0
  %t62 = icmp eq i64 %t61, 21
  br i1 %t62, label %bb16, label %bb17
bb16:
  %t64 = getelementptr { i64, [15 x i64] }, ptr %l1, i32 0, i32 1
  %t65 = getelementptr { %"compiler/mir:Lvalue", i32 }, ptr %t64, i32 0, i32 0
  %t66 = load %"compiler/mir:Lvalue", ptr %t65
  store %"compiler/mir:Lvalue" %t66, ptr %l3
  br label %bb18
bb17:
  br label %bb20
bb18:
  %t68 = load ptr, ptr %l0, !tbaa !29
  %t69 = load %"compiler/mir:Lvalue", ptr %l3
  call void @compiler_2fmir_2ecompiler_2fmir_3averifier_2ereadPlace(ptr %v0, ptr %v1, ptr %t68, %"compiler/mir:Lvalue" %t69)
  br label %bb19
bb19:
  br label %bb117
bb20:
  %t72 = load { i64, [15 x i64] }, ptr %l1
  %t74 = extractvalue { i64, [15 x i64] } %t72, 0
  %t75 = icmp eq i64 %t74, 3
  br i1 %t75, label %bb21, label %bb22
bb21:
  %t77 = getelementptr { i64, [15 x i64] }, ptr %l1, i32 0, i32 1
  %t78 = getelementptr { i32, i32, %"compiler/mir:Range" }, ptr %t77, i32 0, i32 2
  %t79 = load %"compiler/mir:Range", ptr %t78
  store %"compiler/mir:Range" %t79, ptr %l4
  br label %bb27
bb22:
  %t81 = load { i64, [15 x i64] }, ptr %l1
  %t83 = extractvalue { i64, [15 x i64] } %t81, 0
  %t84 = icmp eq i64 %t83, 4
  br i1 %t84, label %bb23, label %bb24
bb23:
  %t86 = getelementptr { i64, [15 x i64] }, ptr %l1, i32 0, i32 1
  %t87 = getelementptr { i32, i32, %"compiler/mir:Range" }, ptr %t86, i32 0, i32 2
  %t88 = load %"compiler/mir:Range", ptr %t87
  store %"compiler/mir:Range" %t88, ptr %l4
  br label %bb27
bb24:
  %t90 = load { i64, [15 x i64] }, ptr %l1
  %t92 = extractvalue { i64, [15 x i64] } %t90, 0
  %t93 = icmp eq i64 %t92, 6
  br i1 %t93, label %bb25, label %bb26
bb25:
  %t95 = getelementptr { i64, [15 x i64] }, ptr %l1, i32 0, i32 1
  %t96 = getelementptr { i32, i64, %"compiler/mir:Range" }, ptr %t95, i32 0, i32 2
  %t97 = load %"compiler/mir:Range", ptr %t96
  store %"compiler/mir:Range" %t97, ptr %l4
  br label %bb27
bb26:
  br label %bb29
bb27:
  %t99 = load ptr, ptr %l0, !tbaa !29
  %t100 = load %"compiler/mir:Range", ptr %l4
  call void @compiler_2fmir_2ecompiler_2fmir_3averifier_2ereadArgs(ptr %v0, ptr %v1, ptr %t99, %"compiler/mir:Range" %t100)
  br label %bb28
bb28:
  br label %bb117
bb29:
  %t103 = load { i64, [15 x i64] }, ptr %l1
  %t105 = extractvalue { i64, [15 x i64] } %t103, 0
  %t106 = icmp eq i64 %t105, 7
  br i1 %t106, label %bb30, label %bb31
bb30:
  %t108 = getelementptr { i64, [15 x i64] }, ptr %l1, i32 0, i32 1
  %t109 = getelementptr { { i64, [1 x i64] }, { i64, [4 x i64] }, i32 }, ptr %t108, i32 0, i32 0
  %t110 = load { i64, [1 x i64] }, ptr %t109
  store { i64, [1 x i64] } %t110, ptr %l5
  %t112 = getelementptr { i64, [15 x i64] }, ptr %l1, i32 0, i32 1
  %t113 = getelementptr { { i64, [1 x i64] }, { i64, [4 x i64] }, i32 }, ptr %t112, i32 0, i32 1
  %t114 = load { i64, [4 x i64] }, ptr %t113
  store { i64, [4 x i64] } %t114, ptr %l6
  br label %bb32
bb31:
  br label %bb35
bb32:
  %t116 = load ptr, ptr %l0, !tbaa !29
  %t117 = load { i64, [4 x i64] }, ptr %l6
  call void @compiler_2fmir_2ecompiler_2fmir_3averifier_2ereads(ptr %v0, ptr %v1, ptr %t116, { i64, [4 x i64] } %t117)
  br label %bb33
bb33:
  %t120 = load ptr, ptr %l0, !tbaa !29
  %t121 = load { i64, [1 x i64] }, ptr %l5
  call void @compiler_2fmir_2ecompiler_2fmir_3averifier_2ebuildsIn(ptr %v0, ptr %v1, ptr %t120, { i64, [1 x i64] } %t121)
  br label %bb34
bb34:
  br label %bb117
bb35:
  %t124 = load { i64, [15 x i64] }, ptr %l1
  %t126 = extractvalue { i64, [15 x i64] } %t124, 0
  %t127 = icmp eq i64 %t126, 8
  br i1 %t127, label %bb36, label %bb37
bb36:
  %t129 = getelementptr { i64, [15 x i64] }, ptr %l1, i32 0, i32 1
  %t130 = getelementptr { { i64, [1 x i64] }, i32, { i64, [4 x i64] }, { i64, [4 x i64] } }, ptr %t129, i32 0, i32 0
  %t131 = load { i64, [1 x i64] }, ptr %t130
  store { i64, [1 x i64] } %t131, ptr %l7
  %t133 = getelementptr { i64, [15 x i64] }, ptr %l1, i32 0, i32 1
  %t134 = getelementptr { { i64, [1 x i64] }, i32, { i64, [4 x i64] }, { i64, [4 x i64] } }, ptr %t133, i32 0, i32 2
  %t135 = load { i64, [4 x i64] }, ptr %t134
  store { i64, [4 x i64] } %t135, ptr %l8
  %t137 = getelementptr { i64, [15 x i64] }, ptr %l1, i32 0, i32 1
  %t138 = getelementptr { { i64, [1 x i64] }, i32, { i64, [4 x i64] }, { i64, [4 x i64] } }, ptr %t137, i32 0, i32 3
  %t139 = load { i64, [4 x i64] }, ptr %t138
  store { i64, [4 x i64] } %t139, ptr %l9
  br label %bb38
bb37:
  br label %bb42
bb38:
  %t141 = load ptr, ptr %l0, !tbaa !29
  %t142 = load { i64, [4 x i64] }, ptr %l8
  call void @compiler_2fmir_2ecompiler_2fmir_3averifier_2ereads(ptr %v0, ptr %v1, ptr %t141, { i64, [4 x i64] } %t142)
  br label %bb39
bb39:
  %t145 = load ptr, ptr %l0, !tbaa !29
  %t146 = load { i64, [4 x i64] }, ptr %l9
  call void @compiler_2fmir_2ecompiler_2fmir_3averifier_2ereads(ptr %v0, ptr %v1, ptr %t145, { i64, [4 x i64] } %t146)
  br label %bb40
bb40:
  %t149 = load ptr, ptr %l0, !tbaa !29
  %t150 = load { i64, [1 x i64] }, ptr %l7
  call void @compiler_2fmir_2ecompiler_2fmir_3averifier_2ebuildsIn(ptr %v0, ptr %v1, ptr %t149, { i64, [1 x i64] } %t150)
  br label %bb41
bb41:
  br label %bb117
bb42:
  %t153 = load { i64, [15 x i64] }, ptr %l1
  %t155 = extractvalue { i64, [15 x i64] } %t153, 0
  %t156 = icmp eq i64 %t155, 9
  br i1 %t156, label %bb43, label %bb44
bb43:
  %t158 = getelementptr { i64, [15 x i64] }, ptr %l1, i32 0, i32 1
  %t159 = getelementptr { %"compiler/mir:Lvalue", { i64, [4 x i64] }, { i64, [4 x i64] }, i32 }, ptr %t158, i32 0, i32 0
  %t160 = load %"compiler/mir:Lvalue", ptr %t159
  store %"compiler/mir:Lvalue" %t160, ptr %l10
  %t162 = getelementptr { i64, [15 x i64] }, ptr %l1, i32 0, i32 1
  %t163 = getelementptr { %"compiler/mir:Lvalue", { i64, [4 x i64] }, { i64, [4 x i64] }, i32 }, ptr %t162, i32 0, i32 1
  %t164 = load { i64, [4 x i64] }, ptr %t163
  store { i64, [4 x i64] } %t164, ptr %l11
  %t166 = getelementptr { i64, [15 x i64] }, ptr %l1, i32 0, i32 1
  %t167 = getelementptr { %"compiler/mir:Lvalue", { i64, [4 x i64] }, { i64, [4 x i64] }, i32 }, ptr %t166, i32 0, i32 2
  %t168 = load { i64, [4 x i64] }, ptr %t167
  store { i64, [4 x i64] } %t168, ptr %l12
  br label %bb45
bb44:
  br label %bb49
bb45:
  %t170 = load ptr, ptr %l0, !tbaa !29
  %t171 = load %"compiler/mir:Lvalue", ptr %l10
  call void @compiler_2fmir_2ecompiler_2fmir_3averifier_2ereadPlace(ptr %v0, ptr %v1, ptr %t170, %"compiler/mir:Lvalue" %t171)
  br label %bb46
bb46:
  %t174 = load ptr, ptr %l0, !tbaa !29
  %t175 = load { i64, [4 x i64] }, ptr %l11
  call void @compiler_2fmir_2ecompiler_2fmir_3averifier_2ereads(ptr %v0, ptr %v1, ptr %t174, { i64, [4 x i64] } %t175)
  br label %bb47
bb47:
  %t178 = load ptr, ptr %l0, !tbaa !29
  %t179 = load { i64, [4 x i64] }, ptr %l12
  call void @compiler_2fmir_2ecompiler_2fmir_3averifier_2ereads(ptr %v0, ptr %v1, ptr %t178, { i64, [4 x i64] } %t179)
  br label %bb48
bb48:
  br label %bb117
bb49:
  %t182 = load { i64, [15 x i64] }, ptr %l1
  %t184 = extractvalue { i64, [15 x i64] } %t182, 0
  %t185 = icmp eq i64 %t184, 10
  br i1 %t185, label %bb50, label %bb51
bb50:
  %t187 = getelementptr { i64, [15 x i64] }, ptr %l1, i32 0, i32 1
  %t188 = getelementptr { { i64, [2 x i64] }, i32, { i64, [1 x i64] }, %"compiler/mir:Range", %"compiler/mir:Range" }, ptr %t187, i32 0, i32 2
  %t189 = load { i64, [1 x i64] }, ptr %t188
  store { i64, [1 x i64] } %t189, ptr %l13
  %t191 = getelementptr { i64, [15 x i64] }, ptr %l1, i32 0, i32 1
  %t192 = getelementptr { { i64, [2 x i64] }, i32, { i64, [1 x i64] }, %"compiler/mir:Range", %"compiler/mir:Range" }, ptr %t191, i32 0, i32 3
  %t193 = load %"compiler/mir:Range", ptr %t192
  store %"compiler/mir:Range" %t193, ptr %l14
  %t195 = getelementptr { i64, [15 x i64] }, ptr %l1, i32 0, i32 1
  %t196 = getelementptr { { i64, [2 x i64] }, i32, { i64, [1 x i64] }, %"compiler/mir:Range", %"compiler/mir:Range" }, ptr %t195, i32 0, i32 4
  %t197 = load %"compiler/mir:Range", ptr %t196
  store %"compiler/mir:Range" %t197, ptr %l15
  br label %bb52
bb51:
  br label %bb72
bb52:
  %t199 = load ptr, ptr %l0, !tbaa !29
  %t200 = load %"compiler/mir:Range", ptr %l14
  call void @compiler_2fmir_2ecompiler_2fmir_3averifier_2ereadArgs(ptr %v0, ptr %v1, ptr %t199, %"compiler/mir:Range" %t200)
  br label %bb53
bb53:
  %t203 = getelementptr %"compiler/mir:Range", ptr %l14, i32 0, i32 1
  %t204 = load i32, ptr %t203, !tbaa !23
  %t206 = icmp sgt i32 %t204, 0
  br i1 %t206, label %bb54, label %bb55
bb54:
  %t208 = load ptr, ptr %l0, !tbaa !29
  %t209 = load { i64, [1 x i64] }, ptr %l13
  call void @compiler_2fmir_2ecompiler_2fmir_3averifier_2ebuildsIn(ptr %v0, ptr %v1, ptr %t208, { i64, [1 x i64] } %t209)
  br label %bb56
bb55:
  br label %bb57
bb56:
  br label %bb57
bb57:
  store i32 0, ptr %l16, !tbaa !23
  %t212 = getelementptr %"compiler/mir:Range", ptr %l15, i32 0, i32 1
  %t213 = load i32, ptr %t212, !tbaa !23
  store i32 %t213, ptr %l17, !tbaa !23
  store i32 1, ptr %l18, !tbaa !23
  %t215 = load i32, ptr %l17, !tbaa !23
  %t216 = load i32, ptr %l16, !tbaa !23
  %t219 = icmp sgt i32 %t215, %t216
  br i1 %t219, label %bb58, label %bb59
bb58:
  %t221 = load i32, ptr %l18, !tbaa !23
  %t223 = icmp sgt i32 %t221, 0
  br i1 %t223, label %bb60, label %bb61
bb59:
  store i32 0, ptr %l112, !tbaa !23
  br label %bb63
bb60:
  %t225 = load i32, ptr %l17, !tbaa !23
  %t226 = load i32, ptr %l16, !tbaa !23
  %t229 = sub i32 %t225, %t226
  %t230 = load i32, ptr %l18, !tbaa !23
  %t233 = add i32 %t229, %t230
  %t235 = sub i32 %t233, 1
  %t236 = load i32, ptr %l18, !tbaa !23
  %t239 = sdiv i32 %t235, %t236
  store i32 %t239, ptr %l115, !tbaa !23
  br label %bb62
bb61:
  store i32 0, ptr %l115, !tbaa !23
  br label %bb62
bb62:
  %t241 = load i32, ptr %l115, !tbaa !23
  store i32 %t241, ptr %l112, !tbaa !23
  br label %bb63
bb63:
  %t242 = load i32, ptr %l112, !tbaa !23
  store i32 %t242, ptr %l19, !tbaa !23
  store i32 0, ptr %l20, !tbaa !23
  br label %bb64
bb64:
  %t243 = load i32, ptr %l20, !tbaa !23
  %t244 = load i32, ptr %l19, !tbaa !23
  %t247 = icmp slt i32 %t243, %t244
  %t249 = xor i1 %t247, true
  br i1 %t249, label %bb65, label %bb66
bb65:
  br label %bb71
bb66:
  br label %bb67
bb67:
  %t251 = load i32, ptr %l16, !tbaa !23
  %t252 = load i32, ptr %l20, !tbaa !23
  %t253 = load i32, ptr %l18, !tbaa !23
  %t256 = mul i32 %t252, %t253
  %t259 = add i32 %t251, %t256
  %t261 = load ptr, ptr %l0, !tbaa !29
  store ptr %t261, ptr %l133, !tbaa !29
  %t262 = load ptr, ptr %l0, !tbaa !29
  %t264 = getelementptr %"compiler/mir:verifier", ptr %t262, i32 0, i32 0
  %t265 = load ptr, ptr %t264, !tbaa !29
  %t267 = getelementptr %"compiler/mir:Fn", ptr %t265, i32 0, i32 12
  store ptr %t267, ptr %l136, !tbaa !29
  %t268 = getelementptr %"compiler/mir:Range", ptr %l15, i32 0, i32 0
  %t269 = load i32, ptr %t268, !tbaa !23
  %t271 = sext i32 %t269 to i64
  %t274 = sext i32 %t259 to i64
  %t277 = add i64 %t271, %t274
  %t278 = load ptr, ptr %l136, !tbaa !29
  %t279 = call ptr @__olang_scope_or(ptr %v1, ptr %t278)
  %t280 = ptrtoint ptr %t279 to i64
  %t282 = inttoptr i64 %t280 to ptr
  %t283 = load ptr, ptr %l136, !tbaa !29
  %t285 = call { i64, [1 x i64] } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aScopeRef_3e_2eAt_3ccompiler_2fmir_3aScopeRef_3e(ptr %t282, ptr %t283, i64 %t277)
  store { i64, [1 x i64] } %t285, ptr %l143
  br label %bb68
bb68:
  %t286 = load ptr, ptr %l133, !tbaa !29
  %t287 = load { i64, [1 x i64] }, ptr %l143
  call void @compiler_2fmir_2ecompiler_2fmir_3averifier_2eusesScope(ptr %v0, ptr %t286, { i64, [1 x i64] } %t287)
  br label %bb69
bb69:
  br label %bb70
bb70:
  %t288 = load i32, ptr %l20, !tbaa !23
  %t290 = add i32 %t288, 1
  store i32 %t290, ptr %l20, !tbaa !23
  br label %bb64
bb71:
  br label %bb117
bb72:
  %t292 = load { i64, [15 x i64] }, ptr %l1
  %t294 = extractvalue { i64, [15 x i64] } %t292, 0
  %t295 = icmp eq i64 %t294, 12
  br i1 %t295, label %bb73, label %bb74
bb73:
  %t297 = getelementptr { i64, [15 x i64] }, ptr %l1, i32 0, i32 1
  %t298 = getelementptr { { i64, [1 x i64] }, { i64, [1 x i64] }, i32 }, ptr %t297, i32 0, i32 0
  %t299 = load { i64, [1 x i64] }, ptr %t298
  store { i64, [1 x i64] } %t299, ptr %l22
  %t301 = getelementptr { i64, [15 x i64] }, ptr %l1, i32 0, i32 1
  %t302 = getelementptr { { i64, [1 x i64] }, { i64, [1 x i64] }, i32 }, ptr %t301, i32 0, i32 1
  %t303 = load { i64, [1 x i64] }, ptr %t302
  store { i64, [1 x i64] } %t303, ptr %l23
  br label %bb75
bb74:
  br label %bb78
bb75:
  %t305 = load ptr, ptr %l0, !tbaa !29
  %t306 = load { i64, [1 x i64] }, ptr %l22
  call void @compiler_2fmir_2ecompiler_2fmir_3averifier_2eusesScope(ptr %v0, ptr %t305, { i64, [1 x i64] } %t306)
  br label %bb76
bb76:
  %t309 = load ptr, ptr %l0, !tbaa !29
  %t310 = load { i64, [1 x i64] }, ptr %l23
  call void @compiler_2fmir_2ecompiler_2fmir_3averifier_2ebuildsIn(ptr %v0, ptr %v1, ptr %t309, { i64, [1 x i64] } %t310)
  br label %bb77
bb77:
  br label %bb117
bb78:
  %t313 = load { i64, [15 x i64] }, ptr %l1
  %t315 = extractvalue { i64, [15 x i64] } %t313, 0
  %t316 = icmp eq i64 %t315, 13
  br i1 %t316, label %bb79, label %bb80
bb79:
  %t318 = getelementptr { i64, [15 x i64] }, ptr %l1, i32 0, i32 1
  %t319 = getelementptr { { i64, [1 x i64] } }, ptr %t318, i32 0, i32 0
  %t320 = load { i64, [1 x i64] }, ptr %t319
  store { i64, [1 x i64] } %t320, ptr %l24
  br label %bb81
bb80:
  br label %bb83
bb81:
  %t322 = load ptr, ptr %l0, !tbaa !29
  %t323 = load { i64, [1 x i64] }, ptr %l24
  call void @compiler_2fmir_2ecompiler_2fmir_3averifier_2ebuildsIn(ptr %v0, ptr %v1, ptr %t322, { i64, [1 x i64] } %t323)
  br label %bb82
bb82:
  br label %bb117
bb83:
  %t326 = load { i64, [15 x i64] }, ptr %l1
  %t328 = extractvalue { i64, [15 x i64] } %t326, 0
  %t329 = icmp eq i64 %t328, 14
  br i1 %t329, label %bb84, label %bb85
bb84:
  %t331 = getelementptr { i64, [15 x i64] }, ptr %l1, i32 0, i32 1
  %t332 = getelementptr { { i64, [4 x i64] }, { i64, [1 x i64] } }, ptr %t331, i32 0, i32 0
  %t333 = load { i64, [4 x i64] }, ptr %t332
  store { i64, [4 x i64] } %t333, ptr %l25
  %t335 = getelementptr { i64, [15 x i64] }, ptr %l1, i32 0, i32 1
  %t336 = getelementptr { { i64, [4 x i64] }, { i64, [1 x i64] } }, ptr %t335, i32 0, i32 1
  %t337 = load { i64, [1 x i64] }, ptr %t336
  store { i64, [1 x i64] } %t337, ptr %l26
  br label %bb86
bb85:
  br label %bb89
bb86:
  %t339 = load ptr, ptr %l0, !tbaa !29
  %t340 = load { i64, [4 x i64] }, ptr %l25
  call void @compiler_2fmir_2ecompiler_2fmir_3averifier_2ereads(ptr %v0, ptr %v1, ptr %t339, { i64, [4 x i64] } %t340)
  br label %bb87
bb87:
  %t343 = load ptr, ptr %l0, !tbaa !29
  %t344 = load { i64, [1 x i64] }, ptr %l26
  call void @compiler_2fmir_2ecompiler_2fmir_3averifier_2eusesScope(ptr %v0, ptr %t343, { i64, [1 x i64] } %t344)
  br label %bb88
bb88:
  br label %bb117
bb89:
  %t347 = load { i64, [15 x i64] }, ptr %l1
  %t349 = extractvalue { i64, [15 x i64] } %t347, 0
  %t350 = icmp eq i64 %t349, 15
  br i1 %t350, label %bb90, label %bb91
bb90:
  %t352 = getelementptr { i64, [15 x i64] }, ptr %l1, i32 0, i32 1
  %t353 = getelementptr { { i64, [4 x i64] } }, ptr %t352, i32 0, i32 0
  %t354 = load { i64, [4 x i64] }, ptr %t353
  store { i64, [4 x i64] } %t354, ptr %l27
  br label %bb92
bb91:
  br label %bb94
bb92:
  %t356 = load ptr, ptr %l0, !tbaa !29
  %t357 = load { i64, [4 x i64] }, ptr %l27
  call void @compiler_2fmir_2ecompiler_2fmir_3averifier_2ereads(ptr %v0, ptr %v1, ptr %t356, { i64, [4 x i64] } %t357)
  br label %bb93
bb93:
  br label %bb117
bb94:
  %t360 = load { i64, [15 x i64] }, ptr %l1
  %t362 = extractvalue { i64, [15 x i64] } %t360, 0
  %t363 = icmp eq i64 %t362, 16
  br i1 %t363, label %bb95, label %bb96
bb95:
  %t365 = getelementptr { i64, [15 x i64] }, ptr %l1, i32 0, i32 1
  %t366 = getelementptr { { i64, [1 x i64] }, { i64, [4 x i64] } }, ptr %t365, i32 0, i32 0
  %t367 = load { i64, [1 x i64] }, ptr %t366
  store { i64, [1 x i64] } %t367, ptr %l28
  %t369 = getelementptr { i64, [15 x i64] }, ptr %l1, i32 0, i32 1
  %t370 = getelementptr { { i64, [1 x i64] }, { i64, [4 x i64] } }, ptr %t369, i32 0, i32 1
  %t371 = load { i64, [4 x i64] }, ptr %t370
  store { i64, [4 x i64] } %t371, ptr %l29
  br label %bb97
bb96:
  br label %bb103
bb97:
  %t373 = load ptr, ptr %l0, !tbaa !29
  %t374 = load { i64, [1 x i64] }, ptr %l28
  call void @compiler_2fmir_2ecompiler_2fmir_3averifier_2eusesScope(ptr %v0, ptr %t373, { i64, [1 x i64] } %t374)
  br label %bb98
bb98:
  %t377 = load { i64, [4 x i64] }, ptr %l29
  %t379 = extractvalue { i64, [4 x i64] } %t377, 0
  %t380 = icmp eq i64 %t379, 0
  %t382 = xor i1 %t380, true
  br i1 %t382, label %bb99, label %bb100
bb99:
  %t384 = load ptr, ptr %l0, !tbaa !29
  %t385 = load { i64, [4 x i64] }, ptr %l29
  call void @compiler_2fmir_2ecompiler_2fmir_3averifier_2ereads(ptr %v0, ptr %v1, ptr %t384, { i64, [4 x i64] } %t385)
  br label %bb101
bb100:
  br label %bb102
bb101:
  br label %bb102
bb102:
  br label %bb117
bb103:
  %t388 = load { i64, [15 x i64] }, ptr %l1
  %t390 = extractvalue { i64, [15 x i64] } %t388, 0
  %t391 = icmp eq i64 %t390, 19
  br i1 %t391, label %bb104, label %bb105
bb104:
  br label %bb110
bb105:
  %t393 = load { i64, [15 x i64] }, ptr %l1
  %t395 = extractvalue { i64, [15 x i64] } %t393, 0
  %t396 = icmp eq i64 %t395, 20
  br i1 %t396, label %bb106, label %bb107
bb106:
  br label %bb110
bb107:
  %t398 = load { i64, [15 x i64] }, ptr %l1
  %t400 = extractvalue { i64, [15 x i64] } %t398, 0
  %t401 = icmp eq i64 %t400, 17
  br i1 %t401, label %bb108, label %bb109
bb108:
  br label %bb110
bb109:
  br label %bb111
bb110:
  br label %bb117
bb111:
  %t403 = load { i64, [15 x i64] }, ptr %l1
  %t405 = extractvalue { i64, [15 x i64] } %t403, 0
  %t406 = icmp eq i64 %t405, 18
  br i1 %t406, label %bb112, label %bb113
bb112:
  %t408 = getelementptr { i64, [15 x i64] }, ptr %l1, i32 0, i32 1
  %t409 = getelementptr { { i64, [1 x i64] } }, ptr %t408, i32 0, i32 0
  %t410 = load { i64, [1 x i64] }, ptr %t409
  store { i64, [1 x i64] } %t410, ptr %l30
  br label %bb114
bb113:
  br label %bb116
bb114:
  %t412 = load ptr, ptr %l0, !tbaa !29
  %t413 = load { i64, [1 x i64] }, ptr %l30
  call void @compiler_2fmir_2ecompiler_2fmir_3averifier_2eusesScope(ptr %v0, ptr %t412, { i64, [1 x i64] } %t413)
  br label %bb115
bb115:
  br label %bb117
bb116:
  call void @__olang_check_failed(ptr @olang_loc_238ad76e6aec07bb_c5e46c61d4e3452f)
  unreachable
bb117:
  br label %ret
ret:
  ret void
}

define dso_local i32 @compiler_2fmir_2ecompiler_2fmir_3averifier_2ervalueType(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, [15 x i64] } %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca { i64, [15 x i64] }
  %l2 = alloca { i64, [4 x i64] }
  %l3 = alloca %"compiler/mir:Lvalue"
  %l4 = alloca i32
  %l5 = alloca %"compiler/mir:Lvalue"
  %l6 = alloca i32
  %l7 = alloca i32
  %l8 = alloca %"compiler/mir:Range"
  %l9 = alloca i32
  %l10 = alloca i32
  %l11 = alloca %"compiler/mir:Range"
  %l12 = alloca %"compiler/mir:Lvalue"
  %l13 = alloca i32
  %l14 = alloca i64
  %l15 = alloca %"compiler/mir:Range"
  %l16 = alloca { i64, [4 x i64] }
  %l17 = alloca i32
  %l18 = alloca i32
  %l19 = alloca { i64, [4 x i64] }
  %l20 = alloca { i64, [4 x i64] }
  %l21 = alloca %"compiler/mir:Lvalue"
  %l22 = alloca { i64, [4 x i64] }
  %l23 = alloca { i64, [4 x i64] }
  %l24 = alloca i32
  %l25 = alloca i32
  %l26 = alloca { i64, [4 x i64] }
  %l27 = alloca { i64, [1 x i64] }
  %l28 = alloca i32
  %l29 = alloca { i64, [4 x i64] }
  %l30 = alloca { i64, [4 x i64] }
  %l31 = alloca { i64, [4 x i64] }
  %l32 = alloca i32
  %l33 = alloca i32
  %l42 = alloca i32
  %l47 = alloca ptr
  %l50 = alloca i32
  %l52 = alloca i32
  %l56 = alloca ptr
  %l59 = alloca i32
  %l60 = alloca i32
  %l70 = alloca i32
  %l80 = alloca i32
  %l84 = alloca ptr
  %l87 = alloca i32
  %l88 = alloca i32
  %l98 = alloca i32
  %l103 = alloca ptr
  %l106 = alloca i32
  %l108 = alloca i32
  %l118 = alloca i32
  %l125 = alloca ptr
  %l128 = alloca i32
  %l132 = alloca i32
  %l138 = alloca i32
  %l142 = alloca ptr
  %l145 = alloca i32
  %l147 = alloca i32
  %l155 = alloca i32
  %l162 = alloca ptr
  %l165 = alloca i32
  %l166 = alloca i32
  %l170 = alloca ptr
  %l173 = alloca i32
  %l174 = alloca i32
  %l180 = alloca i32
  %l182 = alloca ptr
  %l185 = alloca i32
  %l186 = alloca i32
  %s12 = alloca %olang.scope
  %rv = alloca i32
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
  br label %bb5
bb2:
  %t10 = load { i64, [15 x i64] }, ptr %l1
  %t12 = extractvalue { i64, [15 x i64] } %t10, 0
  %t13 = icmp eq i64 %t12, 22
  br i1 %t13, label %bb3, label %bb4
bb3:
  %t15 = getelementptr { i64, [15 x i64] }, ptr %l1, i32 0, i32 1
  %t16 = getelementptr { { i64, [4 x i64] } }, ptr %t15, i32 0, i32 0
  %t17 = load { i64, [4 x i64] }, ptr %t16
  store { i64, [4 x i64] } %t17, ptr %l2
  br label %bb5
bb4:
  br label %bb7
bb5:
  %t19 = load ptr, ptr %l0, !tbaa !29
  %t20 = load { i64, [4 x i64] }, ptr %l2
  %t23 = call i32 @compiler_2fmir_2ecompiler_2fmir_3averifier_2eoperandType(ptr %v0, ptr %v1, ptr %v2, ptr %t19, { i64, [4 x i64] } %t20)
  store i32 %t23, ptr %l42
  br label %bb6
bb6:
  %t24 = load i32, ptr %l42, !tbaa !23
  store i32 %t24, ptr %l33, !tbaa !23
  br label %bb117
bb7:
  %t25 = load { i64, [15 x i64] }, ptr %l1
  %t27 = extractvalue { i64, [15 x i64] } %t25, 0
  %t28 = icmp eq i64 %t27, 1
  br i1 %t28, label %bb8, label %bb9
bb8:
  %t30 = getelementptr { i64, [15 x i64] }, ptr %l1, i32 0, i32 1
  %t31 = getelementptr { %"compiler/mir:Lvalue", i32 }, ptr %t30, i32 0, i32 0
  %t32 = load %"compiler/mir:Lvalue", ptr %t31
  store %"compiler/mir:Lvalue" %t32, ptr %l3
  %t34 = getelementptr { i64, [15 x i64] }, ptr %l1, i32 0, i32 1
  %t35 = getelementptr { %"compiler/mir:Lvalue", i32 }, ptr %t34, i32 0, i32 1
  %t36 = load i32, ptr %t35
  store i32 %t36, ptr %l4, !tbaa !23
  br label %bb10
bb9:
  br label %bb13
bb10:
  %t38 = load ptr, ptr %l0, !tbaa !29
  store ptr %t38, ptr %l47, !tbaa !29
  %t39 = load ptr, ptr %l0, !tbaa !29
  %t40 = load %"compiler/mir:Lvalue", ptr %l3
  %t43 = call i32 @compiler_2fmir_2ecompiler_2fmir_3averifier_2eplaceType(ptr %v0, ptr %v1, ptr %v2, ptr %t39, %"compiler/mir:Lvalue" %t40)
  store i32 %t43, ptr %l50
  br label %bb11
bb11:
  %t44 = load i32, ptr %l4, !tbaa !23
  %t45 = load ptr, ptr %l47, !tbaa !29
  %t46 = load i32, ptr %l50, !tbaa !23
  %t48 = call i32 @compiler_2fmir_2ecompiler_2fmir_3averifier_2erefType(ptr %v0, ptr %v2, ptr %t45, i32 %t46, i32 %t44)
  store i32 %t48, ptr %l52
  br label %bb12
bb12:
  %t49 = load i32, ptr %l52, !tbaa !23
  store i32 %t49, ptr %l33, !tbaa !23
  br label %bb117
bb13:
  %t50 = load { i64, [15 x i64] }, ptr %l1
  %t52 = extractvalue { i64, [15 x i64] } %t50, 0
  %t53 = icmp eq i64 %t52, 2
  br i1 %t53, label %bb14, label %bb15
bb14:
  %t55 = getelementptr { i64, [15 x i64] }, ptr %l1, i32 0, i32 1
  %t56 = getelementptr { %"compiler/mir:Lvalue" }, ptr %t55, i32 0, i32 0
  %t57 = load %"compiler/mir:Lvalue", ptr %t56
  store %"compiler/mir:Lvalue" %t57, ptr %l5
  br label %bb16
bb15:
  br label %bb19
bb16:
  %t59 = load ptr, ptr %l0, !tbaa !29
  store ptr %t59, ptr %l56, !tbaa !29
  %t60 = load ptr, ptr %l0, !tbaa !29
  %t61 = load %"compiler/mir:Lvalue", ptr %l5
  %t64 = call i32 @compiler_2fmir_2ecompiler_2fmir_3averifier_2eplaceType(ptr %v0, ptr %v1, ptr %v2, ptr %t60, %"compiler/mir:Lvalue" %t61)
  store i32 %t64, ptr %l59
  br label %bb17
bb17:
  %t65 = load ptr, ptr %l56, !tbaa !29
  %t66 = load i32, ptr %l59, !tbaa !23
  %t67 = call i32 @compiler_2fmir_2ecompiler_2fmir_3averifier_2etakeType(ptr %v0, ptr %t65, i32 %t66)
  store i32 %t67, ptr %l60
  br label %bb18
bb18:
  %t68 = load i32, ptr %l60, !tbaa !23
  store i32 %t68, ptr %l33, !tbaa !23
  br label %bb117
bb19:
  %t69 = load { i64, [15 x i64] }, ptr %l1
  %t71 = extractvalue { i64, [15 x i64] } %t69, 0
  %t72 = icmp eq i64 %t71, 3
  br i1 %t72, label %bb20, label %bb21
bb20:
  %t74 = getelementptr { i64, [15 x i64] }, ptr %l1, i32 0, i32 1
  %t75 = getelementptr { i32, i32, %"compiler/mir:Range" }, ptr %t74, i32 0, i32 0
  %t76 = load i32, ptr %t75, !range !{i32 0, i32 52}
  store i32 %t76, ptr %l6
  %t78 = getelementptr { i64, [15 x i64] }, ptr %l1, i32 0, i32 1
  %t79 = getelementptr { i32, i32, %"compiler/mir:Range" }, ptr %t78, i32 0, i32 1
  %t80 = load i32, ptr %t79
  store i32 %t80, ptr %l7, !tbaa !23
  %t82 = getelementptr { i64, [15 x i64] }, ptr %l1, i32 0, i32 1
  %t83 = getelementptr { i32, i32, %"compiler/mir:Range" }, ptr %t82, i32 0, i32 2
  %t84 = load %"compiler/mir:Range", ptr %t83
  store %"compiler/mir:Range" %t84, ptr %l8
  br label %bb22
bb21:
  br label %bb24
bb22:
  %t86 = load ptr, ptr %l0, !tbaa !29
  %t87 = load i32, ptr %l6, !range !{i32 0, i32 52}
  %t88 = load i32, ptr %l7, !tbaa !23
  %t89 = load %"compiler/mir:Range", ptr %l8
  %t94 = call i32 @compiler_2fmir_2ecompiler_2fmir_3averifier_2eprimType(ptr %v0, ptr %v1, ptr %v2, ptr %t86, i32 %t87, i32 %t88, %"compiler/mir:Range" %t89)
  store i32 %t94, ptr %l70
  br label %bb23
bb23:
  %t95 = load i32, ptr %l70, !tbaa !23
  store i32 %t95, ptr %l33, !tbaa !23
  br label %bb117
bb24:
  %t96 = load { i64, [15 x i64] }, ptr %l1
  %t98 = extractvalue { i64, [15 x i64] } %t96, 0
  %t99 = icmp eq i64 %t98, 4
  br i1 %t99, label %bb25, label %bb26
bb25:
  %t101 = getelementptr { i64, [15 x i64] }, ptr %l1, i32 0, i32 1
  %t102 = getelementptr { i32, i32, %"compiler/mir:Range" }, ptr %t101, i32 0, i32 0
  %t103 = load i32, ptr %t102, !range !{i32 0, i32 52}
  store i32 %t103, ptr %l9
  %t105 = getelementptr { i64, [15 x i64] }, ptr %l1, i32 0, i32 1
  %t106 = getelementptr { i32, i32, %"compiler/mir:Range" }, ptr %t105, i32 0, i32 1
  %t107 = load i32, ptr %t106
  store i32 %t107, ptr %l10, !tbaa !23
  %t109 = getelementptr { i64, [15 x i64] }, ptr %l1, i32 0, i32 1
  %t110 = getelementptr { i32, i32, %"compiler/mir:Range" }, ptr %t109, i32 0, i32 2
  %t111 = load %"compiler/mir:Range", ptr %t110
  store %"compiler/mir:Range" %t111, ptr %l11
  br label %bb27
bb26:
  br label %bb29
bb27:
  %t113 = load ptr, ptr %l0, !tbaa !29
  %t114 = load i32, ptr %l9, !range !{i32 0, i32 52}
  %t115 = load i32, ptr %l10, !tbaa !23
  %t116 = load %"compiler/mir:Range", ptr %l11
  %t121 = call i32 @compiler_2fmir_2ecompiler_2fmir_3averifier_2eoverflowsType(ptr %v0, ptr %v2, ptr %t113, i32 %t114, i32 %t115, %"compiler/mir:Range" %t116)
  store i32 %t121, ptr %l80
  br label %bb28
bb28:
  %t122 = load i32, ptr %l80, !tbaa !23
  store i32 %t122, ptr %l33, !tbaa !23
  br label %bb117
bb29:
  %t123 = load { i64, [15 x i64] }, ptr %l1
  %t125 = extractvalue { i64, [15 x i64] } %t123, 0
  %t126 = icmp eq i64 %t125, 5
  br i1 %t126, label %bb30, label %bb31
bb30:
  %t128 = getelementptr { i64, [15 x i64] }, ptr %l1, i32 0, i32 1
  %t129 = getelementptr { %"compiler/mir:Lvalue" }, ptr %t128, i32 0, i32 0
  %t130 = load %"compiler/mir:Lvalue", ptr %t129
  store %"compiler/mir:Lvalue" %t130, ptr %l12
  br label %bb32
bb31:
  br label %bb35
bb32:
  %t132 = load ptr, ptr %l0, !tbaa !29
  store ptr %t132, ptr %l84, !tbaa !29
  %t133 = load ptr, ptr %l0, !tbaa !29
  %t134 = load %"compiler/mir:Lvalue", ptr %l12
  %t137 = call i32 @compiler_2fmir_2ecompiler_2fmir_3averifier_2eplaceType(ptr %v0, ptr %v1, ptr %v2, ptr %t133, %"compiler/mir:Lvalue" %t134)
  store i32 %t137, ptr %l87
  br label %bb33
bb33:
  %t138 = load ptr, ptr %l84, !tbaa !29
  %t139 = load i32, ptr %l87, !tbaa !23
  %t140 = call i32 @compiler_2fmir_2ecompiler_2fmir_3averifier_2etagType(ptr %v0, ptr %v2, ptr %t138, i32 %t139)
  store i32 %t140, ptr %l88
  br label %bb34
bb34:
  %t141 = load i32, ptr %l88, !tbaa !23
  store i32 %t141, ptr %l33, !tbaa !23
  br label %bb117
bb35:
  %t142 = load { i64, [15 x i64] }, ptr %l1
  %t144 = extractvalue { i64, [15 x i64] } %t142, 0
  %t145 = icmp eq i64 %t144, 6
  br i1 %t145, label %bb36, label %bb37
bb36:
  %t147 = getelementptr { i64, [15 x i64] }, ptr %l1, i32 0, i32 1
  %t148 = getelementptr { i32, i64, %"compiler/mir:Range" }, ptr %t147, i32 0, i32 0
  %t149 = load i32, ptr %t148
  store i32 %t149, ptr %l13, !tbaa !23
  %t151 = getelementptr { i64, [15 x i64] }, ptr %l1, i32 0, i32 1
  %t152 = getelementptr { i32, i64, %"compiler/mir:Range" }, ptr %t151, i32 0, i32 1
  %t153 = load i64, ptr %t152
  store i64 %t153, ptr %l14, !tbaa !24
  %t155 = getelementptr { i64, [15 x i64] }, ptr %l1, i32 0, i32 1
  %t156 = getelementptr { i32, i64, %"compiler/mir:Range" }, ptr %t155, i32 0, i32 2
  %t157 = load %"compiler/mir:Range", ptr %t156
  store %"compiler/mir:Range" %t157, ptr %l15
  br label %bb38
bb37:
  br label %bb40
bb38:
  %t159 = load ptr, ptr %l0, !tbaa !29
  %t160 = load i32, ptr %l13, !tbaa !23
  %t161 = load i64, ptr %l14, !tbaa !24
  %t162 = load %"compiler/mir:Range", ptr %l15
  %t167 = call i32 @compiler_2fmir_2ecompiler_2fmir_3averifier_2eaggregateType(ptr %v0, ptr %v2, ptr %v1, ptr %t159, i32 %t160, i64 %t161, %"compiler/mir:Range" %t162)
  store i32 %t167, ptr %l98
  br label %bb39
bb39:
  %t168 = load i32, ptr %l98, !tbaa !23
  store i32 %t168, ptr %l33, !tbaa !23
  br label %bb117
bb40:
  %t169 = load { i64, [15 x i64] }, ptr %l1
  %t171 = extractvalue { i64, [15 x i64] } %t169, 0
  %t172 = icmp eq i64 %t171, 7
  br i1 %t172, label %bb41, label %bb42
bb41:
  %t174 = getelementptr { i64, [15 x i64] }, ptr %l1, i32 0, i32 1
  %t175 = getelementptr { { i64, [1 x i64] }, { i64, [4 x i64] }, i32 }, ptr %t174, i32 0, i32 1
  %t176 = load { i64, [4 x i64] }, ptr %t175
  store { i64, [4 x i64] } %t176, ptr %l16
  %t178 = getelementptr { i64, [15 x i64] }, ptr %l1, i32 0, i32 1
  %t179 = getelementptr { { i64, [1 x i64] }, { i64, [4 x i64] }, i32 }, ptr %t178, i32 0, i32 2
  %t180 = load i32, ptr %t179
  store i32 %t180, ptr %l17, !tbaa !23
  br label %bb43
bb42:
  br label %bb46
bb43:
  %t182 = load ptr, ptr %l0, !tbaa !29
  store ptr %t182, ptr %l103, !tbaa !29
  %t183 = load ptr, ptr %l0, !tbaa !29
  %t184 = load { i64, [4 x i64] }, ptr %l16
  %t187 = call i32 @compiler_2fmir_2ecompiler_2fmir_3averifier_2eoperandType(ptr %v0, ptr %v1, ptr %v2, ptr %t183, { i64, [4 x i64] } %t184)
  store i32 %t187, ptr %l106
  br label %bb44
bb44:
  %t188 = load i32, ptr %l17, !tbaa !23
  %t189 = load ptr, ptr %l103, !tbaa !29
  %t190 = load i32, ptr %l106, !tbaa !23
  %t192 = call i32 @compiler_2fmir_2ecompiler_2fmir_3averifier_2erefType(ptr %v0, ptr %v2, ptr %t189, i32 %t190, i32 %t188)
  store i32 %t192, ptr %l108
  br label %bb45
bb45:
  %t193 = load i32, ptr %l108, !tbaa !23
  store i32 %t193, ptr %l33, !tbaa !23
  br label %bb117
bb46:
  %t194 = load { i64, [15 x i64] }, ptr %l1
  %t196 = extractvalue { i64, [15 x i64] } %t194, 0
  %t197 = icmp eq i64 %t196, 8
  br i1 %t197, label %bb47, label %bb48
bb47:
  %t199 = getelementptr { i64, [15 x i64] }, ptr %l1, i32 0, i32 1
  %t200 = getelementptr { { i64, [1 x i64] }, i32, { i64, [4 x i64] }, { i64, [4 x i64] } }, ptr %t199, i32 0, i32 1
  %t201 = load i32, ptr %t200
  store i32 %t201, ptr %l18, !tbaa !23
  %t203 = getelementptr { i64, [15 x i64] }, ptr %l1, i32 0, i32 1
  %t204 = getelementptr { { i64, [1 x i64] }, i32, { i64, [4 x i64] }, { i64, [4 x i64] } }, ptr %t203, i32 0, i32 2
  %t205 = load { i64, [4 x i64] }, ptr %t204
  store { i64, [4 x i64] } %t205, ptr %l19
  %t207 = getelementptr { i64, [15 x i64] }, ptr %l1, i32 0, i32 1
  %t208 = getelementptr { { i64, [1 x i64] }, i32, { i64, [4 x i64] }, { i64, [4 x i64] } }, ptr %t207, i32 0, i32 3
  %t209 = load { i64, [4 x i64] }, ptr %t208
  store { i64, [4 x i64] } %t209, ptr %l20
  br label %bb49
bb48:
  br label %bb51
bb49:
  %t211 = load ptr, ptr %l0, !tbaa !29
  %t212 = load i32, ptr %l18, !tbaa !23
  %t213 = load { i64, [4 x i64] }, ptr %l19
  %t214 = load { i64, [4 x i64] }, ptr %l20
  %t219 = call i32 @compiler_2fmir_2ecompiler_2fmir_3averifier_2enewArrayType(ptr %v0, ptr %v2, ptr %v1, ptr %t211, i32 %t212, { i64, [4 x i64] } %t213, { i64, [4 x i64] } %t214)
  store i32 %t219, ptr %l118
  br label %bb50
bb50:
  %t220 = load i32, ptr %l118, !tbaa !23
  store i32 %t220, ptr %l33, !tbaa !23
  br label %bb117
bb51:
  %t221 = load { i64, [15 x i64] }, ptr %l1
  %t223 = extractvalue { i64, [15 x i64] } %t221, 0
  %t224 = icmp eq i64 %t223, 9
  br i1 %t224, label %bb52, label %bb53
bb52:
  %t226 = getelementptr { i64, [15 x i64] }, ptr %l1, i32 0, i32 1
  %t227 = getelementptr { %"compiler/mir:Lvalue", { i64, [4 x i64] }, { i64, [4 x i64] }, i32 }, ptr %t226, i32 0, i32 0
  %t228 = load %"compiler/mir:Lvalue", ptr %t227
  store %"compiler/mir:Lvalue" %t228, ptr %l21
  %t230 = getelementptr { i64, [15 x i64] }, ptr %l1, i32 0, i32 1
  %t231 = getelementptr { %"compiler/mir:Lvalue", { i64, [4 x i64] }, { i64, [4 x i64] }, i32 }, ptr %t230, i32 0, i32 1
  %t232 = load { i64, [4 x i64] }, ptr %t231
  store { i64, [4 x i64] } %t232, ptr %l22
  %t234 = getelementptr { i64, [15 x i64] }, ptr %l1, i32 0, i32 1
  %t235 = getelementptr { %"compiler/mir:Lvalue", { i64, [4 x i64] }, { i64, [4 x i64] }, i32 }, ptr %t234, i32 0, i32 2
  %t236 = load { i64, [4 x i64] }, ptr %t235
  store { i64, [4 x i64] } %t236, ptr %l23
  %t238 = getelementptr { i64, [15 x i64] }, ptr %l1, i32 0, i32 1
  %t239 = getelementptr { %"compiler/mir:Lvalue", { i64, [4 x i64] }, { i64, [4 x i64] }, i32 }, ptr %t238, i32 0, i32 3
  %t240 = load i32, ptr %t239
  store i32 %t240, ptr %l24, !tbaa !23
  br label %bb54
bb53:
  br label %bb57
bb54:
  %t242 = load ptr, ptr %l0, !tbaa !29
  store ptr %t242, ptr %l125, !tbaa !29
  %t243 = load ptr, ptr %l0, !tbaa !29
  %t244 = load %"compiler/mir:Lvalue", ptr %l21
  %t247 = call i32 @compiler_2fmir_2ecompiler_2fmir_3averifier_2eplaceType(ptr %v0, ptr %v1, ptr %v2, ptr %t243, %"compiler/mir:Lvalue" %t244)
  store i32 %t247, ptr %l128
  br label %bb55
bb55:
  %t248 = load { i64, [4 x i64] }, ptr %l22
  %t249 = load { i64, [4 x i64] }, ptr %l23
  %t250 = load i32, ptr %l24, !tbaa !23
  %t251 = load ptr, ptr %l125, !tbaa !29
  %t252 = load i32, ptr %l128, !tbaa !23
  %t256 = call i32 @compiler_2fmir_2ecompiler_2fmir_3averifier_2esliceType(ptr %v0, ptr %v2, ptr %v1, ptr %t251, i32 %t252, { i64, [4 x i64] } %t248, { i64, [4 x i64] } %t249, i32 %t250)
  store i32 %t256, ptr %l132
  br label %bb56
bb56:
  %t257 = load i32, ptr %l132, !tbaa !23
  store i32 %t257, ptr %l33, !tbaa !23
  br label %bb117
bb57:
  %t258 = load { i64, [15 x i64] }, ptr %l1
  %t260 = extractvalue { i64, [15 x i64] } %t258, 0
  %t261 = icmp eq i64 %t260, 10
  br i1 %t261, label %bb58, label %bb59
bb58:
  %t263 = getelementptr { i64, [15 x i64] }, ptr %l1, i32 0, i32 1
  %t264 = getelementptr { { i64, [2 x i64] }, i32, { i64, [1 x i64] }, %"compiler/mir:Range", %"compiler/mir:Range" }, ptr %t263, i32 0, i32 1
  %t265 = load i32, ptr %t264
  store i32 %t265, ptr %l25, !tbaa !23
  br label %bb60
bb59:
  br label %bb62
bb60:
  %t267 = load ptr, ptr %l0, !tbaa !29
  %t268 = load i32, ptr %l25, !tbaa !23
  %t271 = call i32 @compiler_2fmir_2ecompiler_2fmir_3averifier_2eclosureType(ptr %v0, ptr %v2, ptr %t267, i32 %t268)
  store i32 %t271, ptr %l138
  br label %bb61
bb61:
  %t272 = load i32, ptr %l138, !tbaa !23
  store i32 %t272, ptr %l33, !tbaa !23
  br label %bb117
bb62:
  %t273 = load { i64, [15 x i64] }, ptr %l1
  %t275 = extractvalue { i64, [15 x i64] } %t273, 0
  %t276 = icmp eq i64 %t275, 11
  br i1 %t276, label %bb63, label %bb64
bb63:
  %t278 = getelementptr { i64, [15 x i64] }, ptr %l1, i32 0, i32 1
  %t279 = getelementptr { { i64, [4 x i64] }, i32, i32 }, ptr %t278, i32 0, i32 0
  %t280 = load { i64, [4 x i64] }, ptr %t279
  store { i64, [4 x i64] } %t280, ptr %l26
  br label %bb65
bb64:
  br label %bb68
bb65:
  store %olang.scope zeroinitializer, ptr %s12
  %t282 = load ptr, ptr %l0, !tbaa !29
  store ptr %t282, ptr %l142, !tbaa !29
  %t283 = load ptr, ptr %l0, !tbaa !29
  %t284 = load { i64, [4 x i64] }, ptr %l26
  %t287 = call i32 @compiler_2fmir_2ecompiler_2fmir_3averifier_2eoperandType(ptr %v0, ptr %v1, ptr %v2, ptr %t283, { i64, [4 x i64] } %t284)
  store i32 %t287, ptr %l145
  br label %bb66
bb66:
  %t288 = load i32, ptr @G_2ecompiler_2fmir_2eI32T, !tbaa !23
  %t289 = load ptr, ptr %l142, !tbaa !29
  %t290 = load i32, ptr %l145, !tbaa !23
  %t292 = call i32 @compiler_2fmir_2ecompiler_2fmir_3averifier_2eintOf(ptr %v0, ptr %s12, ptr %v2, ptr %t289, i32 %t290, i32 %t288, { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d109, i32 0, i32 1) })
  store i32 %t292, ptr %l147
  br label %bb67
bb67:
  %t293 = load i32, ptr %l147, !tbaa !23
  store i32 %t293, ptr %l33, !tbaa !23
  call void @__olang_scope_close(ptr %s12)
  br label %bb117
bb68:
  %t294 = load { i64, [15 x i64] }, ptr %l1
  %t296 = extractvalue { i64, [15 x i64] } %t294, 0
  %t297 = icmp eq i64 %t296, 12
  br i1 %t297, label %bb69, label %bb70
bb69:
  %t299 = getelementptr { i64, [15 x i64] }, ptr %l1, i32 0, i32 1
  %t300 = getelementptr { { i64, [1 x i64] }, { i64, [1 x i64] }, i32 }, ptr %t299, i32 0, i32 0
  %t301 = load { i64, [1 x i64] }, ptr %t300
  store { i64, [1 x i64] } %t301, ptr %l27
  %t303 = getelementptr { i64, [15 x i64] }, ptr %l1, i32 0, i32 1
  %t304 = getelementptr { { i64, [1 x i64] }, { i64, [1 x i64] }, i32 }, ptr %t303, i32 0, i32 2
  %t305 = load i32, ptr %t304
  store i32 %t305, ptr %l28, !tbaa !23
  br label %bb71
bb70:
  br label %bb73
bb71:
  %t307 = load ptr, ptr %l0, !tbaa !29
  %t308 = load { i64, [1 x i64] }, ptr %l27
  %t309 = load i32, ptr %l28, !tbaa !23
  %t313 = call i32 @compiler_2fmir_2ecompiler_2fmir_3averifier_2etextType(ptr %v0, ptr %v1, ptr %v2, ptr %t307, { i64, [1 x i64] } %t308, i32 %t309)
  store i32 %t313, ptr %l155
  br label %bb72
bb72:
  %t314 = load i32, ptr %l155, !tbaa !23
  store i32 %t314, ptr %l33, !tbaa !23
  br label %bb117
bb73:
  %t315 = load { i64, [15 x i64] }, ptr %l1
  %t317 = extractvalue { i64, [15 x i64] } %t315, 0
  %t318 = icmp eq i64 %t317, 13
  br i1 %t318, label %bb74, label %bb75
bb74:
  br label %bb76
bb75:
  br label %bb77
bb76:
  %t320 = load i32, ptr @G_2ecompiler_2fmir_2eI64T, !tbaa !23
  store i32 %t320, ptr %l33, !tbaa !23
  br label %bb117
bb77:
  %t322 = load { i64, [15 x i64] }, ptr %l1
  %t324 = extractvalue { i64, [15 x i64] } %t322, 0
  %t325 = icmp eq i64 %t324, 14
  br i1 %t325, label %bb78, label %bb79
bb78:
  %t327 = getelementptr { i64, [15 x i64] }, ptr %l1, i32 0, i32 1
  %t328 = getelementptr { { i64, [4 x i64] }, { i64, [1 x i64] } }, ptr %t327, i32 0, i32 0
  %t329 = load { i64, [4 x i64] }, ptr %t328
  store { i64, [4 x i64] } %t329, ptr %l29
  br label %bb80
bb79:
  br label %bb83
bb80:
  %t331 = load ptr, ptr %l0, !tbaa !29
  store ptr %t331, ptr %l162, !tbaa !29
  %t332 = load ptr, ptr %l0, !tbaa !29
  %t333 = load { i64, [4 x i64] }, ptr %l29
  %t336 = call i32 @compiler_2fmir_2ecompiler_2fmir_3averifier_2eoperandType(ptr %v0, ptr %v1, ptr %v2, ptr %t332, { i64, [4 x i64] } %t333)
  store i32 %t336, ptr %l165
  br label %bb81
bb81:
  %t337 = load ptr, ptr %l162, !tbaa !29
  %t338 = load i32, ptr %l165, !tbaa !23
  %t339 = call i32 @compiler_2fmir_2ecompiler_2fmir_3averifier_2eregionOrType(ptr %v0, ptr %v2, ptr %t337, i32 %t338)
  store i32 %t339, ptr %l166
  br label %bb82
bb82:
  %t340 = load i32, ptr %l166, !tbaa !23
  store i32 %t340, ptr %l33, !tbaa !23
  br label %bb117
bb83:
  %t341 = load { i64, [15 x i64] }, ptr %l1
  %t343 = extractvalue { i64, [15 x i64] } %t341, 0
  %t344 = icmp eq i64 %t343, 15
  br i1 %t344, label %bb84, label %bb85
bb84:
  %t346 = getelementptr { i64, [15 x i64] }, ptr %l1, i32 0, i32 1
  %t347 = getelementptr { { i64, [4 x i64] } }, ptr %t346, i32 0, i32 0
  %t348 = load { i64, [4 x i64] }, ptr %t347
  store { i64, [4 x i64] } %t348, ptr %l30
  br label %bb86
bb85:
  br label %bb89
bb86:
  %t350 = load ptr, ptr %l0, !tbaa !29
  store ptr %t350, ptr %l170, !tbaa !29
  %t351 = load ptr, ptr %l0, !tbaa !29
  %t352 = load { i64, [4 x i64] }, ptr %l30
  %t355 = call i32 @compiler_2fmir_2ecompiler_2fmir_3averifier_2eoperandType(ptr %v0, ptr %v1, ptr %v2, ptr %t351, { i64, [4 x i64] } %t352)
  store i32 %t355, ptr %l173
  br label %bb87
bb87:
  %t356 = load ptr, ptr %l170, !tbaa !29
  %t357 = load i32, ptr %l173, !tbaa !23
  %t358 = call i32 @compiler_2fmir_2ecompiler_2fmir_3averifier_2eregionOrType(ptr %v0, ptr %v2, ptr %t356, i32 %t357)
  store i32 %t358, ptr %l174
  br label %bb88
bb88:
  %t359 = load i32, ptr %l174, !tbaa !23
  store i32 %t359, ptr %l33, !tbaa !23
  br label %bb117
bb89:
  %t360 = load { i64, [15 x i64] }, ptr %l1
  %t362 = extractvalue { i64, [15 x i64] } %t360, 0
  %t363 = icmp eq i64 %t362, 16
  br i1 %t363, label %bb90, label %bb91
bb90:
  %t365 = getelementptr { i64, [15 x i64] }, ptr %l1, i32 0, i32 1
  %t366 = getelementptr { { i64, [1 x i64] }, { i64, [4 x i64] } }, ptr %t365, i32 0, i32 1
  %t367 = load { i64, [4 x i64] }, ptr %t366
  store { i64, [4 x i64] } %t367, ptr %l31
  br label %bb92
bb91:
  br label %bb98
bb92:
  %t369 = load { i64, [4 x i64] }, ptr %l31
  %t371 = extractvalue { i64, [4 x i64] } %t369, 0
  %t372 = icmp eq i64 %t371, 0
  br i1 %t372, label %bb93, label %bb94
bb93:
  %t374 = load i32, ptr @G_2ecompiler_2fmir_2eI64T, !tbaa !23
  store i32 %t374, ptr %l180, !tbaa !23
  br label %bb97
bb94:
  %t376 = load ptr, ptr %l0, !tbaa !29
  store ptr %t376, ptr %l182, !tbaa !29
  %t377 = load ptr, ptr %l0, !tbaa !29
  %t378 = load { i64, [4 x i64] }, ptr %l31
  %t381 = call i32 @compiler_2fmir_2ecompiler_2fmir_3averifier_2eoperandType(ptr %v0, ptr %v1, ptr %v2, ptr %t377, { i64, [4 x i64] } %t378)
  store i32 %t381, ptr %l185
  br label %bb95
bb95:
  %t382 = load ptr, ptr %l182, !tbaa !29
  %t383 = load i32, ptr %l185, !tbaa !23
  %t384 = call i32 @compiler_2fmir_2ecompiler_2fmir_3averifier_2eregionOrType(ptr %v0, ptr %v2, ptr %t382, i32 %t383)
  store i32 %t384, ptr %l186
  br label %bb96
bb96:
  %t385 = load i32, ptr %l186, !tbaa !23
  store i32 %t385, ptr %l180, !tbaa !23
  br label %bb97
bb97:
  %t386 = load i32, ptr %l180, !tbaa !23
  store i32 %t386, ptr %l33, !tbaa !23
  br label %bb117
bb98:
  %t387 = load { i64, [15 x i64] }, ptr %l1
  %t389 = extractvalue { i64, [15 x i64] } %t387, 0
  %t390 = icmp eq i64 %t389, 19
  br i1 %t390, label %bb99, label %bb100
bb99:
  br label %bb101
bb100:
  br label %bb102
bb101:
  %t392 = load i32, ptr @G_2ecompiler_2fmir_2eI64T, !tbaa !23
  store i32 %t392, ptr %l33, !tbaa !23
  br label %bb117
bb102:
  %t394 = load { i64, [15 x i64] }, ptr %l1
  %t396 = extractvalue { i64, [15 x i64] } %t394, 0
  %t397 = icmp eq i64 %t396, 20
  br i1 %t397, label %bb103, label %bb104
bb103:
  %t399 = getelementptr { i64, [15 x i64] }, ptr %l1, i32 0, i32 1
  %t400 = getelementptr { i32 }, ptr %t399, i32 0, i32 0
  %t401 = load i32, ptr %t400
  store i32 %t401, ptr %l32, !tbaa !23
  br label %bb107
bb104:
  %t403 = load { i64, [15 x i64] }, ptr %l1
  %t405 = extractvalue { i64, [15 x i64] } %t403, 0
  %t406 = icmp eq i64 %t405, 21
  br i1 %t406, label %bb105, label %bb106
bb105:
  %t408 = getelementptr { i64, [15 x i64] }, ptr %l1, i32 0, i32 1
  %t409 = getelementptr { %"compiler/mir:Lvalue", i32 }, ptr %t408, i32 0, i32 1
  %t410 = load i32, ptr %t409
  store i32 %t410, ptr %l32, !tbaa !23
  br label %bb107
bb106:
  br label %bb108
bb107:
  %t412 = load i32, ptr %l32, !tbaa !23
  store i32 %t412, ptr %l33, !tbaa !23
  br label %bb117
bb108:
  %t414 = load { i64, [15 x i64] }, ptr %l1
  %t416 = extractvalue { i64, [15 x i64] } %t414, 0
  %t417 = icmp eq i64 %t416, 17
  br i1 %t417, label %bb109, label %bb110
bb109:
  br label %bb111
bb110:
  br label %bb112
bb111:
  %t419 = load i32, ptr @G_2ecompiler_2ftypes_2eBoolT, !tbaa !23
  store i32 %t419, ptr %l33, !tbaa !23
  br label %bb117
bb112:
  %t421 = load { i64, [15 x i64] }, ptr %l1
  %t423 = extractvalue { i64, [15 x i64] } %t421, 0
  %t424 = icmp eq i64 %t423, 18
  br i1 %t424, label %bb113, label %bb114
bb113:
  br label %bb115
bb114:
  br label %bb116
bb115:
  %t426 = load i32, ptr @G_2ecompiler_2fmir_2eI64T, !tbaa !23
  store i32 %t426, ptr %l33, !tbaa !23
  br label %bb117
bb116:
  call void @__olang_check_failed(ptr @olang_loc_3d9554dfcf1aeb63_1386be72809b2127)
  unreachable
bb117:
  %t428 = load i32, ptr %l33, !tbaa !23
  store i32 %t428, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local void @compiler_2fmir_2ecompiler_2fmir_3averifier_2esameArgs(ptr %v0, ptr %v1, ptr %v2, ptr %a0, i32 %a1, %"compiler/mir:Range" %a2, i32 %a3) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca %"compiler/mir:Range"
  %l3 = alloca i32
  %l4 = alloca i32
  %l5 = alloca i32
  %l6 = alloca i32
  %l7 = alloca i32
  %l8 = alloca i32
  %l10 = alloca i32
  %l15 = alloca i32
  %l18 = alloca i32
  %l36 = alloca ptr
  %l41 = alloca { i64, [4 x i64] }
  %l42 = alloca i32
  %l44 = alloca ptr
  %l46 = alloca ptr
  %l49 = alloca i32
  %l51 = alloca ptr
  %l54 = alloca i32
  %l56 = alloca i1
  %l58 = alloca ptr
  %l59 = alloca i32
  %l61 = alloca { i64, ptr }
  %l63 = alloca { i64, ptr }
  %l66 = alloca { i64, ptr }
  %l69 = alloca { i64, ptr }
  %s3 = alloca %olang.scope
  %s4 = alloca %olang.builder
  %s4room = alloca [64 x i8], align 8
  store ptr %a0, ptr %l0
  store %"compiler/mir:Range" %a2, ptr %l2
  store i32 %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  store i32 0, ptr %l4, !tbaa !23
  %t1 = getelementptr %"compiler/mir:Range", ptr %l2, i32 0, i32 1
  %t2 = load i32, ptr %t1, !tbaa !23
  store i32 %t2, ptr %l5, !tbaa !23
  store i32 1, ptr %l6, !tbaa !23
  %t4 = load i32, ptr %l5, !tbaa !23
  %t5 = load i32, ptr %l4, !tbaa !23
  %t8 = icmp sgt i32 %t4, %t5
  br i1 %t8, label %bb1, label %bb2
bb1:
  %t10 = load i32, ptr %l6, !tbaa !23
  %t12 = icmp sgt i32 %t10, 0
  br i1 %t12, label %bb3, label %bb4
bb2:
  store i32 0, ptr %l15, !tbaa !23
  br label %bb6
bb3:
  %t14 = load i32, ptr %l5, !tbaa !23
  %t15 = load i32, ptr %l4, !tbaa !23
  %t18 = sub i32 %t14, %t15
  %t19 = load i32, ptr %l6, !tbaa !23
  %t22 = add i32 %t18, %t19
  %t24 = sub i32 %t22, 1
  %t25 = load i32, ptr %l6, !tbaa !23
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
  store i32 %t31, ptr %l7, !tbaa !23
  store i32 0, ptr %l8, !tbaa !23
  br label %bb7
bb7:
  %t32 = load i32, ptr %l8, !tbaa !23
  %t33 = load i32, ptr %l7, !tbaa !23
  %t36 = icmp slt i32 %t32, %t33
  %t38 = xor i1 %t36, true
  br i1 %t38, label %bb8, label %bb9
bb8:
  br label %bb25
bb9:
  br label %bb10
bb10:
  %t40 = load i32, ptr %l4, !tbaa !23
  %t41 = load i32, ptr %l8, !tbaa !23
  %t42 = load i32, ptr %l6, !tbaa !23
  %t45 = mul i32 %t41, %t42
  %t48 = add i32 %t40, %t45
  %t50 = load ptr, ptr %l0, !tbaa !29
  store ptr %t50, ptr %l36, !tbaa !29
  %t51 = load ptr, ptr %l0, !tbaa !29
  %t52 = load %"compiler/mir:Range", ptr %l2
  %t55 = sext i32 %t48 to i64
  %t59 = call { i64, [4 x i64] } @compiler_2fmir_2ecompiler_2fmir_3averifier_2earg(ptr %v0, ptr %v1, ptr %t51, %"compiler/mir:Range" %t52, i64 %t55)
  store { i64, [4 x i64] } %t59, ptr %l41
  br label %bb11
bb11:
  %t60 = load ptr, ptr %l36, !tbaa !29
  %t61 = load { i64, [4 x i64] }, ptr %l41
  %t62 = call i32 @compiler_2fmir_2ecompiler_2fmir_3averifier_2eoperandType(ptr %v0, ptr %v1, ptr %v2, ptr %t60, { i64, [4 x i64] } %t61)
  store i32 %t62, ptr %l42
  br label %bb12
bb12:
  %t63 = load i32, ptr %l42, !tbaa !23
  store i32 %t63, ptr %l10, !tbaa !23
  %t64 = load ptr, ptr %l0, !tbaa !29
  %t66 = getelementptr %"compiler/mir:verifier", ptr %t64, i32 0, i32 1
  %t67 = load ptr, ptr %t66, !tbaa !29
  store ptr %t67, ptr %l44, !tbaa !29
  %t68 = load ptr, ptr %l0, !tbaa !29
  %t70 = getelementptr %"compiler/mir:verifier", ptr %t68, i32 0, i32 1
  %t71 = load ptr, ptr %t70, !tbaa !29
  store ptr %t71, ptr %l46, !tbaa !29
  %t72 = load i32, ptr %l10, !tbaa !23
  %t73 = load ptr, ptr %l46, !tbaa !29
  %t74 = call ptr @__olang_scope_or(ptr %v2, ptr %t73)
  %t75 = ptrtoint ptr %t74 to i64
  %t77 = inttoptr i64 %t75 to ptr
  %t78 = load ptr, ptr %l46, !tbaa !29
  %t80 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %t77, ptr %t78, i32 %t72)
  store i32 %t80, ptr %l49
  br label %bb13
bb13:
  %t81 = load ptr, ptr %l0, !tbaa !29
  %t83 = getelementptr %"compiler/mir:verifier", ptr %t81, i32 0, i32 1
  %t84 = load ptr, ptr %t83, !tbaa !29
  store ptr %t84, ptr %l51, !tbaa !29
  %t85 = load i32, ptr %l3, !tbaa !23
  %t86 = load ptr, ptr %l51, !tbaa !29
  %t87 = call ptr @__olang_scope_or(ptr %v2, ptr %t86)
  %t88 = ptrtoint ptr %t87 to i64
  %t90 = inttoptr i64 %t88 to ptr
  %t91 = load ptr, ptr %l51, !tbaa !29
  %t93 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %t90, ptr %t91, i32 %t85)
  store i32 %t93, ptr %l54
  br label %bb14
bb14:
  %t94 = load ptr, ptr %l44, !tbaa !29
  %t95 = call ptr @__olang_scope_or(ptr %v2, ptr %t94)
  %t96 = ptrtoint ptr %t95 to i64
  %t98 = inttoptr i64 %t96 to ptr
  %t99 = load ptr, ptr %l44, !tbaa !29
  %t100 = load i32, ptr %l49, !tbaa !23
  %t101 = load i32, ptr %l54, !tbaa !23
  %t102 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eSame(ptr %t98, ptr %t99, i32 %t100, i32 %t101)
  store i1 %t102, ptr %l56
  br label %bb15
bb15:
  %t103 = load i1, ptr %l56, !tbaa !21
  %t104 = xor i1 %t103, true
  br i1 %t104, label %bb16, label %bb17
bb16:
  store %olang.scope zeroinitializer, ptr %s3
  %t106 = load ptr, ptr %l0, !tbaa !29
  store ptr %t106, ptr %l58, !tbaa !29
  store i32 %a1, ptr %l59
  store %olang.builder { ptr null, i64 0, i64 64, ptr null, ptr null }, ptr %s4
  store ptr %s4room, ptr %s4
  call void @olang_2emir_2eHelperKind_2eRender_2ecompiler_2ftyped_3aPrimOp(ptr %s4, ptr %l59, i64 0)
  br label %bb18
bb17:
  br label %bb23
bb18:
  %t109 = load ptr, ptr %s4
  %t110 = getelementptr %olang.builder, ptr %s4, i32 0, i32 1
  %t111 = load i64, ptr %t110
  %t112 = call ptr @__olang_scope_alloc(ptr %s3, i64 %t111)
  call void @olang_textcopy(ptr %t112, ptr %t109, i64 %t111)
  %t113 = insertvalue { i64, ptr } undef, i64 %t111, 0
  %t114 = insertvalue { i64, ptr } %t113, ptr %t112, 1
  store { i64, ptr } %t114, ptr %l61, !tbaa !27
  %t115 = getelementptr %olang.builder, ptr %s4, i32 0, i32 3
  %t116 = load ptr, ptr %t115
  %t117 = icmp ne ptr %t116, null
  br i1 %t117, label %sbgrew.118, label %sbdone.119
sbgrew.118:
  call void @__olang_sb_done(ptr %s4)
  br label %sbdone.119
sbdone.119:
  %t120 = load { i64, ptr }, ptr %l61, !tbaa !27
  %t121 = extractvalue { i64, ptr } %t120, 0
  %t122 = extractvalue { i64, ptr } %t120, 1
  %t123 = mul i64 %t121, 1
  %t124 = call ptr @__olang_scope_alloc(ptr %s3, i64 %t123)
  call void @llvm.memcpy.p0.p0.i64(ptr %t124, ptr %t122, i64 %t123, i1 false)
  %t125 = insertvalue { i64, ptr } undef, i64 %t121, 0
  %t126 = insertvalue { i64, ptr } %t125, ptr %t124, 1
  %t128 = call { i64, ptr } @compiler_2fmir_2eshort(ptr %s3, ptr %s3, { i64, ptr } %t126)
  store { i64, ptr } %t128, ptr %l63
  br label %bb19
bb19:
  %t129 = load ptr, ptr %l0, !tbaa !29
  %t130 = load i32, ptr %l3, !tbaa !23
  %t133 = call { i64, ptr } @compiler_2fmir_2ecompiler_2fmir_3averifier_2ecanon(ptr %v0, ptr %s3, ptr %v2, ptr %t129, i32 %t130)
  store { i64, ptr } %t133, ptr %l66
  br label %bb20
bb20:
  %t134 = load ptr, ptr %l0, !tbaa !29
  %t135 = load i32, ptr %l10, !tbaa !23
  %t138 = call { i64, ptr } @compiler_2fmir_2ecompiler_2fmir_3averifier_2ecanon(ptr %v0, ptr %s3, ptr %v2, ptr %t134, i32 %t135)
  store { i64, ptr } %t138, ptr %l69
  br label %bb21
bb21:
  %t139 = load { i64, ptr }, ptr %l63, !tbaa !27
  %t140 = extractvalue { i64, ptr } %t139, 1
  %t141 = extractvalue { i64, ptr } %t139, 0
  %t142 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d110, i32 0, i32 1) }, 1
  %t143 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d110, i32 0, i32 1) }, 0
  %t144 = add i64 %t141, %t143
  %t145 = load { i64, ptr }, ptr %l66, !tbaa !27
  %t146 = extractvalue { i64, ptr } %t145, 1
  %t147 = extractvalue { i64, ptr } %t145, 0
  %t148 = add i64 %t144, %t147
  %t149 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d111, i32 0, i32 1) }, 1
  %t150 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d111, i32 0, i32 1) }, 0
  %t151 = add i64 %t148, %t150
  %t152 = load { i64, ptr }, ptr %l69, !tbaa !27
  %t153 = extractvalue { i64, ptr } %t152, 1
  %t154 = extractvalue { i64, ptr } %t152, 0
  %t155 = add i64 %t151, %t154
  %t156 = call ptr @__olang_scope_alloc(ptr %s3, i64 %t155)
  call void @olang_textcopy(ptr %t156, ptr %t140, i64 %t141)
  %t157 = getelementptr i8, ptr %t156, i64 %t141
  call void @olang_textcopy(ptr %t157, ptr %t142, i64 %t143)
  %t158 = getelementptr i8, ptr %t157, i64 %t143
  call void @olang_textcopy(ptr %t158, ptr %t146, i64 %t147)
  %t159 = getelementptr i8, ptr %t158, i64 %t147
  call void @olang_textcopy(ptr %t159, ptr %t149, i64 %t150)
  %t160 = getelementptr i8, ptr %t159, i64 %t150
  call void @olang_textcopy(ptr %t160, ptr %t153, i64 %t154)
  %t161 = insertvalue { i64, ptr } undef, i64 %t155, 0
  %t162 = insertvalue { i64, ptr } %t161, ptr %t156, 1
  %t164 = extractvalue { i64, ptr } %t162, 0
  %t165 = extractvalue { i64, ptr } %t162, 1
  %t166 = mul i64 %t164, 1
  %t167 = call ptr @__olang_scope_alloc(ptr %s3, i64 %t166)
  call void @llvm.memcpy.p0.p0.i64(ptr %t167, ptr %t165, i64 %t166, i1 false)
  %t168 = insertvalue { i64, ptr } undef, i64 %t164, 0
  %t169 = insertvalue { i64, ptr } %t168, ptr %t167, 1
  %t170 = load ptr, ptr %l58, !tbaa !29
  call void @compiler_2fmir_2ecompiler_2fmir_3averifier_2ebad(ptr %v0, ptr %s3, ptr %t170, { i64, ptr } %t169)
  br label %bb22
bb22:
  call void @__olang_scope_close(ptr %s3)
  br label %bb23
bb23:
  br label %bb24
bb24:
  %t172 = load i32, ptr %l8, !tbaa !23
  %t174 = add i32 %t172, 1
  store i32 %t174, ptr %l8, !tbaa !23
  br label %bb7
bb25:
  br label %ret
ret:
  ret void
}

define dso_local { i64, ptr } @compiler_2fmir_2ecompiler_2fmir_3averifier_2estackText(ptr %v0, ptr %v1, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"std/prelude/text:StringBuilder"
  %l2 = alloca i64
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca %"std/prelude/text:StringBuilder"
  %l12 = alloca i64
  %l16 = alloca i64
  %l19 = alloca i64
  %l37 = alloca ptr
  %l40 = alloca { i64, ptr }
  %l44 = alloca i32
  %l51 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %s2 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  store ptr %a0, ptr %l0
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
  %t4 = load ptr, ptr %l0, !tbaa !29
  %t6 = getelementptr %"compiler/mir:verifier", ptr %t4, i32 0, i32 17
  %t8 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aScopeId_3e_2eLen_3ccompiler_2fmir_3aScopeId_3e(ptr %v0, ptr %t6)
  store i64 %t8, ptr %l12
  br label %bb3
bb3:
  %t9 = load i64, ptr %l12, !tbaa !24
  store i64 %t9, ptr %l3, !tbaa !24
  store i64 1, ptr %l4, !tbaa !24
  %t10 = load i64, ptr %l3, !tbaa !24
  %t11 = load i64, ptr %l2, !tbaa !24
  %t14 = icmp sgt i64 %t10, %t11
  br i1 %t14, label %bb4, label %bb5
bb4:
  %t16 = load i64, ptr %l4, !tbaa !24
  %t18 = icmp sgt i64 %t16, 0
  br i1 %t18, label %bb6, label %bb7
bb5:
  store i64 0, ptr %l16, !tbaa !24
  br label %bb9
bb6:
  %t20 = load i64, ptr %l3, !tbaa !24
  %t21 = load i64, ptr %l2, !tbaa !24
  %t24 = sub i64 %t20, %t21
  %t25 = load i64, ptr %l4, !tbaa !24
  %t28 = add i64 %t24, %t25
  %t30 = sub i64 %t28, 1
  %t31 = load i64, ptr %l4, !tbaa !24
  %t34 = sdiv i64 %t30, %t31
  store i64 %t34, ptr %l19, !tbaa !24
  br label %bb8
bb7:
  store i64 0, ptr %l19, !tbaa !24
  br label %bb8
bb8:
  %t36 = load i64, ptr %l19, !tbaa !24
  store i64 %t36, ptr %l16, !tbaa !24
  br label %bb9
bb9:
  %t37 = load i64, ptr %l16, !tbaa !24
  store i64 %t37, ptr %l5, !tbaa !24
  store i64 0, ptr %l6, !tbaa !24
  br label %bb10
bb10:
  store %olang.scope zeroinitializer, ptr %s2
  %t38 = load i64, ptr %l6, !tbaa !24
  %t39 = load i64, ptr %l5, !tbaa !24
  %t42 = icmp slt i64 %t38, %t39
  %t44 = xor i1 %t42, true
  br i1 %t44, label %bb11, label %bb12
bb11:
  call void @__olang_scope_close(ptr %s2)
  br label %bb20
bb12:
  br label %bb13
bb13:
  %t46 = load i64, ptr %l2, !tbaa !24
  %t47 = load i64, ptr %l6, !tbaa !24
  %t48 = load i64, ptr %l4, !tbaa !24
  %t51 = mul i64 %t47, %t48
  %t54 = add i64 %t46, %t51
  store i64 %t54, ptr %l7, !tbaa !24
  store ptr %l1, ptr %l37, !tbaa !29
  %t56 = load i64, ptr %l7, !tbaa !24
  %t58 = icmp sgt i64 %t56, 0
  br i1 %t58, label %bb14, label %bb15
bb14:
  store { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d112, i32 0, i32 1) }, ptr %l40, !tbaa !27
  br label %bb16
bb15:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d113, i32 0, i32 1) }, ptr %l40, !tbaa !27
  br label %bb16
bb16:
  %t60 = load ptr, ptr %l0, !tbaa !29
  %t62 = getelementptr %"compiler/mir:verifier", ptr %t60, i32 0, i32 17
  %t63 = load i64, ptr %l7, !tbaa !24
  %t66 = call i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aScopeId_3e_2eAt_3ccompiler_2fmir_3aScopeId_3e(ptr %v0, ptr %t62, i64 %t63)
  store i32 %t66, ptr %l44
  br label %bb17
bb17:
  %t67 = load { i64, ptr }, ptr %l40, !tbaa !27
  %t68 = extractvalue { i64, ptr } %t67, 1
  %t69 = extractvalue { i64, ptr } %t67, 0
  %t70 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d114, i32 0, i32 1) }, 1
  %t71 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d114, i32 0, i32 1) }, 0
  %t72 = add i64 %t69, %t71
  %t73 = load i32, ptr %l44, !tbaa !23
  %t74 = sext i32 %t73 to i64
  %t75 = call i64 @__olang_fmt_i64(ptr null, i64 %t74)
  %t76 = add i64 %t72, %t75
  %t77 = call ptr @__olang_scope_alloc(ptr %s2, i64 %t76)
  call void @olang_textcopy(ptr %t77, ptr %t68, i64 %t69)
  %t78 = getelementptr i8, ptr %t77, i64 %t69
  call void @olang_textcopy(ptr %t78, ptr %t70, i64 %t71)
  %t79 = getelementptr i8, ptr %t78, i64 %t71
  %t80 = call i64 @__olang_fmt_i64(ptr %t79, i64 %t74)
  %t81 = insertvalue { i64, ptr } undef, i64 %t76, 0
  %t82 = insertvalue { i64, ptr } %t81, ptr %t77, 1
  %t84 = extractvalue { i64, ptr } %t82, 0
  %t85 = extractvalue { i64, ptr } %t82, 1
  %t86 = mul i64 %t84, 1
  %t87 = call ptr @__olang_scope_alloc(ptr %s2, i64 %t86)
  call void @llvm.memcpy.p0.p0.i64(ptr %t87, ptr %t85, i64 %t86, i1 false)
  %t88 = insertvalue { i64, ptr } undef, i64 %t84, 0
  %t89 = insertvalue { i64, ptr } %t88, ptr %t87, 1
  %t90 = load ptr, ptr %l37, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s2, ptr %t90, { i64, ptr } %t89)
  br label %bb18
bb18:
  call void @__olang_scope_close(ptr %s2)
  br label %bb19
bb19:
  %t92 = load i64, ptr %l6, !tbaa !24
  %t94 = add i64 %t92, 1
  store i64 %t94, ptr %l6, !tbaa !24
  br label %bb10
bb20:
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePushChar(ptr %s0, ptr %l1, i8 93)
  br label %bb21
bb21:
  %t98 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %s0, ptr %v1, ptr %l1)
  store { i64, ptr } %t98, ptr %l51
  br label %bb22
bb22:
  call void @__olang_scope_close(ptr %s0)
  %t99 = load { i64, ptr }, ptr %l51, !tbaa !27
  store { i64, ptr } %t99, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local void @compiler_2fmir_2ecompiler_2fmir_3averifier_2estmtShape(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca %"compiler/mir:Lvalue"
  %l3 = alloca { i64, [15 x i64] }
  %l4 = alloca i32
  %l5 = alloca i32
  %l6 = alloca { i64, [1 x i64] }
  %l7 = alloca { i64, [4 x i64] }
  %l8 = alloca %"compiler/mir:Lvalue"
  %l9 = alloca i32
  %l10 = alloca %"compiler/mir:Lvalue"
  %l11 = alloca { i64, [1 x i64] }
  %l12 = alloca { i64, [4 x i64] }
  %l13 = alloca %"compiler/mir:Lvalue"
  %l14 = alloca %"compiler/mir:Lvalue"
  %l15 = alloca { i64, [4 x i64] }
  %l16 = alloca i32
  %l17 = alloca i32
  %l18 = alloca { i64, [4 x i64] }
  %l19 = alloca { i64, [4 x i64] }
  %l20 = alloca { i64, [4 x i64] }
  %l21 = alloca i32
  %l22 = alloca i32
  %l23 = alloca ptr
  %l24 = alloca i1
  %l35 = alloca ptr
  %l36 = alloca i1
  %l41 = alloca ptr
  %l42 = alloca i1
  %l49 = alloca i1
  %l50 = alloca ptr
  %l51 = alloca i1
  %l56 = alloca ptr
  %l57 = alloca i1
  %l64 = alloca i1
  %l65 = alloca ptr
  %l66 = alloca i1
  %l77 = alloca ptr
  %l78 = alloca i1
  %l85 = alloca ptr
  %l86 = alloca i1
  %l95 = alloca i1
  %l98 = alloca ptr
  %l99 = alloca i1
  %l110 = alloca ptr
  %l111 = alloca i1
  %l126 = alloca ptr
  %l127 = alloca i1
  %l136 = alloca i1
  %l139 = alloca i1
  %l141 = alloca i64
  %l144 = alloca ptr
  %l146 = alloca i64
  %l152 = alloca ptr
  %l153 = alloca i1
  %l156 = alloca ptr
  %l157 = alloca i1
  %l160 = alloca ptr
  %l161 = alloca i1
  %l168 = alloca ptr
  %l169 = alloca i1
  %l180 = alloca ptr
  %l181 = alloca i1
  %l190 = alloca i1
  %l196 = alloca i1
  %s10 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l1, !tbaa !29
  store ptr %t1, ptr %l23, !tbaa !29
  store i1 false, ptr %l24, !tbaa !21
  %t2 = load ptr, ptr %l23, !tbaa !29
  %t3 = icmp ne ptr %t2, null
  br i1 %t3, label %bb1, label %bb2
bb1:
  %t5 = load ptr, ptr %l23, !tbaa !29
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 16}
  %t8 = icmp eq i64 %t6, 0
  store i1 %t8, ptr %l24, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l24, !tbaa !21
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
  br label %bb8
bb5:
  %t22 = load ptr, ptr %l0, !tbaa !29
  %t23 = load %"compiler/mir:Lvalue", ptr %l2
  call void @compiler_2fmir_2ecompiler_2fmir_3averifier_2eplace(ptr %v0, ptr %v2, ptr %t22, %"compiler/mir:Lvalue" %t23)
  br label %bb6
bb6:
  %t26 = load ptr, ptr %l0, !tbaa !29
  %t27 = load { i64, [15 x i64] }, ptr %l3
  call void @compiler_2fmir_2ecompiler_2fmir_3averifier_2ervalueShape(ptr %v0, ptr %v2, ptr %t26, { i64, [15 x i64] } %t27)
  br label %bb7
bb7:
  br label %bb122
bb8:
  %t30 = load ptr, ptr %l1, !tbaa !29
  store ptr %t30, ptr %l35, !tbaa !29
  store i1 false, ptr %l36, !tbaa !21
  %t31 = load ptr, ptr %l35, !tbaa !29
  %t32 = icmp ne ptr %t31, null
  br i1 %t32, label %bb9, label %bb10
bb9:
  %t34 = load ptr, ptr %l35, !tbaa !29
  %t35 = load i64, ptr %t34, !range !{i64 0, i64 16}
  %t37 = icmp eq i64 %t35, 1
  store i1 %t37, ptr %l36, !tbaa !21
  br label %bb10
bb10:
  %t38 = load i1, ptr %l36, !tbaa !21
  br i1 %t38, label %bb11, label %bb12
bb11:
  %t39 = load ptr, ptr %l1, !tbaa !29
  %t41 = getelementptr { i64, [21 x i64] }, ptr %t39, i32 0, i32 1
  %t42 = getelementptr { %"compiler/source:Span", i32 }, ptr %t41, i32 0, i32 1
  %t43 = load i32, ptr %t42
  store i32 %t43, ptr %l4, !tbaa !23
  br label %bb17
bb12:
  %t45 = load ptr, ptr %l1, !tbaa !29
  store ptr %t45, ptr %l41, !tbaa !29
  store i1 false, ptr %l42, !tbaa !21
  %t46 = load ptr, ptr %l41, !tbaa !29
  %t47 = icmp ne ptr %t46, null
  br i1 %t47, label %bb13, label %bb14
bb13:
  %t49 = load ptr, ptr %l41, !tbaa !29
  %t50 = load i64, ptr %t49, !range !{i64 0, i64 16}
  %t52 = icmp eq i64 %t50, 2
  store i1 %t52, ptr %l42, !tbaa !21
  br label %bb14
bb14:
  %t53 = load i1, ptr %l42, !tbaa !21
  br i1 %t53, label %bb15, label %bb16
bb15:
  %t54 = load ptr, ptr %l1, !tbaa !29
  %t56 = getelementptr { i64, [21 x i64] }, ptr %t54, i32 0, i32 1
  %t57 = getelementptr { %"compiler/source:Span", i32 }, ptr %t56, i32 0, i32 1
  %t58 = load i32, ptr %t57
  store i32 %t58, ptr %l4, !tbaa !23
  br label %bb17
bb16:
  br label %bb19
bb17:
  %t60 = load ptr, ptr %l0, !tbaa !29
  %t61 = load i32, ptr %l4, !tbaa !23
  %t64 = call i1 @compiler_2fmir_2ecompiler_2fmir_3averifier_2elocal(ptr %v0, ptr %v2, ptr %t60, i32 %t61)
  store i1 %t64, ptr %l49
  br label %bb18
bb18:
  br label %bb122
bb19:
  %t65 = load ptr, ptr %l1, !tbaa !29
  store ptr %t65, ptr %l50, !tbaa !29
  store i1 false, ptr %l51, !tbaa !21
  %t66 = load ptr, ptr %l50, !tbaa !29
  %t67 = icmp ne ptr %t66, null
  br i1 %t67, label %bb20, label %bb21
bb20:
  %t69 = load ptr, ptr %l50, !tbaa !29
  %t70 = load i64, ptr %t69, !range !{i64 0, i64 16}
  %t72 = icmp eq i64 %t70, 3
  store i1 %t72, ptr %l51, !tbaa !21
  br label %bb21
bb21:
  %t73 = load i1, ptr %l51, !tbaa !21
  br i1 %t73, label %bb22, label %bb23
bb22:
  %t74 = load ptr, ptr %l1, !tbaa !29
  %t76 = getelementptr { i64, [21 x i64] }, ptr %t74, i32 0, i32 1
  %t77 = getelementptr { %"compiler/source:Span", i32 }, ptr %t76, i32 0, i32 1
  %t78 = load i32, ptr %t77
  store i32 %t78, ptr %l5, !tbaa !23
  br label %bb28
bb23:
  %t80 = load ptr, ptr %l1, !tbaa !29
  store ptr %t80, ptr %l56, !tbaa !29
  store i1 false, ptr %l57, !tbaa !21
  %t81 = load ptr, ptr %l56, !tbaa !29
  %t82 = icmp ne ptr %t81, null
  br i1 %t82, label %bb24, label %bb25
bb24:
  %t84 = load ptr, ptr %l56, !tbaa !29
  %t85 = load i64, ptr %t84, !range !{i64 0, i64 16}
  %t87 = icmp eq i64 %t85, 4
  store i1 %t87, ptr %l57, !tbaa !21
  br label %bb25
bb25:
  %t88 = load i1, ptr %l57, !tbaa !21
  br i1 %t88, label %bb26, label %bb27
bb26:
  %t89 = load ptr, ptr %l1, !tbaa !29
  %t91 = getelementptr { i64, [21 x i64] }, ptr %t89, i32 0, i32 1
  %t92 = getelementptr { %"compiler/source:Span", i32 }, ptr %t91, i32 0, i32 1
  %t93 = load i32, ptr %t92
  store i32 %t93, ptr %l5, !tbaa !23
  br label %bb28
bb27:
  br label %bb30
bb28:
  %t95 = load ptr, ptr %l0, !tbaa !29
  %t96 = load i32, ptr %l5, !tbaa !23
  %t99 = call i1 @compiler_2fmir_2ecompiler_2fmir_3averifier_2escope(ptr %v0, ptr %v2, ptr %t95, i32 %t96)
  store i1 %t99, ptr %l64
  br label %bb29
bb29:
  br label %bb122
bb30:
  %t100 = load ptr, ptr %l1, !tbaa !29
  store ptr %t100, ptr %l65, !tbaa !29
  store i1 false, ptr %l66, !tbaa !21
  %t101 = load ptr, ptr %l65, !tbaa !29
  %t102 = icmp ne ptr %t101, null
  br i1 %t102, label %bb31, label %bb32
bb31:
  %t104 = load ptr, ptr %l65, !tbaa !29
  %t105 = load i64, ptr %t104, !range !{i64 0, i64 16}
  %t107 = icmp eq i64 %t105, 5
  store i1 %t107, ptr %l66, !tbaa !21
  br label %bb32
bb32:
  %t108 = load i1, ptr %l66, !tbaa !21
  br i1 %t108, label %bb33, label %bb34
bb33:
  %t109 = load ptr, ptr %l1, !tbaa !29
  %t111 = getelementptr { i64, [21 x i64] }, ptr %t109, i32 0, i32 1
  %t112 = getelementptr { %"compiler/source:Span", { i64, [1 x i64] }, i32, { i64, [4 x i64] } }, ptr %t111, i32 0, i32 1
  %t113 = load { i64, [1 x i64] }, ptr %t112
  store { i64, [1 x i64] } %t113, ptr %l6
  %t115 = load ptr, ptr %l1, !tbaa !29
  %t117 = getelementptr { i64, [21 x i64] }, ptr %t115, i32 0, i32 1
  %t118 = getelementptr { %"compiler/source:Span", { i64, [1 x i64] }, i32, { i64, [4 x i64] } }, ptr %t117, i32 0, i32 3
  %t119 = load { i64, [4 x i64] }, ptr %t118
  store { i64, [4 x i64] } %t119, ptr %l7
  br label %bb35
bb34:
  br label %bb38
bb35:
  %t121 = load ptr, ptr %l0, !tbaa !29
  %t122 = load { i64, [1 x i64] }, ptr %l6
  call void @compiler_2fmir_2ecompiler_2fmir_3averifier_2eref(ptr %v0, ptr %v2, ptr %t121, { i64, [1 x i64] } %t122)
  br label %bb36
bb36:
  %t125 = load ptr, ptr %l0, !tbaa !29
  %t126 = load { i64, [4 x i64] }, ptr %l7
  call void @compiler_2fmir_2ecompiler_2fmir_3averifier_2eoperand(ptr %v0, ptr %v2, ptr %t125, { i64, [4 x i64] } %t126)
  br label %bb37
bb37:
  br label %bb122
bb38:
  %t129 = load ptr, ptr %l1, !tbaa !29
  store ptr %t129, ptr %l77, !tbaa !29
  store i1 false, ptr %l78, !tbaa !21
  %t130 = load ptr, ptr %l77, !tbaa !29
  %t131 = icmp ne ptr %t130, null
  br i1 %t131, label %bb39, label %bb40
bb39:
  %t133 = load ptr, ptr %l77, !tbaa !29
  %t134 = load i64, ptr %t133, !range !{i64 0, i64 16}
  %t136 = icmp eq i64 %t134, 6
  store i1 %t136, ptr %l78, !tbaa !21
  br label %bb40
bb40:
  %t137 = load i1, ptr %l78, !tbaa !21
  br i1 %t137, label %bb41, label %bb42
bb41:
  %t138 = load ptr, ptr %l1, !tbaa !29
  %t140 = getelementptr { i64, [21 x i64] }, ptr %t138, i32 0, i32 1
  %t141 = getelementptr { %"compiler/source:Span", %"compiler/mir:Lvalue" }, ptr %t140, i32 0, i32 1
  %t142 = load %"compiler/mir:Lvalue", ptr %t141
  store %"compiler/mir:Lvalue" %t142, ptr %l8
  br label %bb43
bb42:
  br label %bb45
bb43:
  %t144 = load ptr, ptr %l0, !tbaa !29
  %t145 = load %"compiler/mir:Lvalue", ptr %l8
  call void @compiler_2fmir_2ecompiler_2fmir_3averifier_2eplace(ptr %v0, ptr %v2, ptr %t144, %"compiler/mir:Lvalue" %t145)
  br label %bb44
bb44:
  br label %bb122
bb45:
  %t148 = load ptr, ptr %l1, !tbaa !29
  store ptr %t148, ptr %l85, !tbaa !29
  store i1 false, ptr %l86, !tbaa !21
  %t149 = load ptr, ptr %l85, !tbaa !29
  %t150 = icmp ne ptr %t149, null
  br i1 %t150, label %bb46, label %bb47
bb46:
  %t152 = load ptr, ptr %l85, !tbaa !29
  %t153 = load i64, ptr %t152, !range !{i64 0, i64 16}
  %t155 = icmp eq i64 %t153, 7
  store i1 %t155, ptr %l86, !tbaa !21
  br label %bb47
bb47:
  %t156 = load i1, ptr %l86, !tbaa !21
  br i1 %t156, label %bb48, label %bb49
bb48:
  %t157 = load ptr, ptr %l1, !tbaa !29
  %t159 = getelementptr { i64, [21 x i64] }, ptr %t157, i32 0, i32 1
  %t160 = getelementptr { %"compiler/source:Span", i32, %"compiler/mir:Lvalue" }, ptr %t159, i32 0, i32 1
  %t161 = load i32, ptr %t160
  store i32 %t161, ptr %l9, !tbaa !23
  %t163 = load ptr, ptr %l1, !tbaa !29
  %t165 = getelementptr { i64, [21 x i64] }, ptr %t163, i32 0, i32 1
  %t166 = getelementptr { %"compiler/source:Span", i32, %"compiler/mir:Lvalue" }, ptr %t165, i32 0, i32 2
  %t167 = load %"compiler/mir:Lvalue", ptr %t166
  store %"compiler/mir:Lvalue" %t167, ptr %l10
  br label %bb50
bb49:
  br label %bb53
bb50:
  %t169 = load ptr, ptr %l0, !tbaa !29
  %t170 = load i32, ptr %l9, !tbaa !23
  %t173 = call i1 @compiler_2fmir_2ecompiler_2fmir_3averifier_2elocal(ptr %v0, ptr %v2, ptr %t169, i32 %t170)
  store i1 %t173, ptr %l95
  br label %bb51
bb51:
  %t174 = load ptr, ptr %l0, !tbaa !29
  %t175 = load %"compiler/mir:Lvalue", ptr %l10
  call void @compiler_2fmir_2ecompiler_2fmir_3averifier_2eplace(ptr %v0, ptr %v2, ptr %t174, %"compiler/mir:Lvalue" %t175)
  br label %bb52
bb52:
  br label %bb122
bb53:
  %t178 = load ptr, ptr %l1, !tbaa !29
  store ptr %t178, ptr %l98, !tbaa !29
  store i1 false, ptr %l99, !tbaa !21
  %t179 = load ptr, ptr %l98, !tbaa !29
  %t180 = icmp ne ptr %t179, null
  br i1 %t180, label %bb54, label %bb55
bb54:
  %t182 = load ptr, ptr %l98, !tbaa !29
  %t183 = load i64, ptr %t182, !range !{i64 0, i64 16}
  %t185 = icmp eq i64 %t183, 8
  store i1 %t185, ptr %l99, !tbaa !21
  br label %bb55
bb55:
  %t186 = load i1, ptr %l99, !tbaa !21
  br i1 %t186, label %bb56, label %bb57
bb56:
  %t187 = load ptr, ptr %l1, !tbaa !29
  %t189 = getelementptr { i64, [21 x i64] }, ptr %t187, i32 0, i32 1
  %t190 = getelementptr { %"compiler/source:Span", { i64, [1 x i64] }, i32, { i64, [4 x i64] } }, ptr %t189, i32 0, i32 1
  %t191 = load { i64, [1 x i64] }, ptr %t190
  store { i64, [1 x i64] } %t191, ptr %l11
  %t193 = load ptr, ptr %l1, !tbaa !29
  %t195 = getelementptr { i64, [21 x i64] }, ptr %t193, i32 0, i32 1
  %t196 = getelementptr { %"compiler/source:Span", { i64, [1 x i64] }, i32, { i64, [4 x i64] } }, ptr %t195, i32 0, i32 3
  %t197 = load { i64, [4 x i64] }, ptr %t196
  store { i64, [4 x i64] } %t197, ptr %l12
  br label %bb58
bb57:
  br label %bb61
bb58:
  %t199 = load ptr, ptr %l0, !tbaa !29
  %t200 = load { i64, [1 x i64] }, ptr %l11
  call void @compiler_2fmir_2ecompiler_2fmir_3averifier_2eref(ptr %v0, ptr %v2, ptr %t199, { i64, [1 x i64] } %t200)
  br label %bb59
bb59:
  %t203 = load ptr, ptr %l0, !tbaa !29
  %t204 = load { i64, [4 x i64] }, ptr %l12
  call void @compiler_2fmir_2ecompiler_2fmir_3averifier_2eoperand(ptr %v0, ptr %v2, ptr %t203, { i64, [4 x i64] } %t204)
  br label %bb60
bb60:
  br label %bb122
bb61:
  %t207 = load ptr, ptr %l1, !tbaa !29
  store ptr %t207, ptr %l110, !tbaa !29
  store i1 false, ptr %l111, !tbaa !21
  %t208 = load ptr, ptr %l110, !tbaa !29
  %t209 = icmp ne ptr %t208, null
  br i1 %t209, label %bb62, label %bb63
bb62:
  %t211 = load ptr, ptr %l110, !tbaa !29
  %t212 = load i64, ptr %t211, !range !{i64 0, i64 16}
  %t214 = icmp eq i64 %t212, 9
  store i1 %t214, ptr %l111, !tbaa !21
  br label %bb63
bb63:
  %t215 = load i1, ptr %l111, !tbaa !21
  br i1 %t215, label %bb64, label %bb65
bb64:
  %t216 = load ptr, ptr %l1, !tbaa !29
  %t218 = getelementptr { i64, [21 x i64] }, ptr %t216, i32 0, i32 1
  %t219 = getelementptr { %"compiler/source:Span", %"compiler/mir:Lvalue", %"compiler/mir:Lvalue", { i64, [4 x i64] } }, ptr %t218, i32 0, i32 1
  %t220 = load %"compiler/mir:Lvalue", ptr %t219
  store %"compiler/mir:Lvalue" %t220, ptr %l13
  %t222 = load ptr, ptr %l1, !tbaa !29
  %t224 = getelementptr { i64, [21 x i64] }, ptr %t222, i32 0, i32 1
  %t225 = getelementptr { %"compiler/source:Span", %"compiler/mir:Lvalue", %"compiler/mir:Lvalue", { i64, [4 x i64] } }, ptr %t224, i32 0, i32 2
  %t226 = load %"compiler/mir:Lvalue", ptr %t225
  store %"compiler/mir:Lvalue" %t226, ptr %l14
  %t228 = load ptr, ptr %l1, !tbaa !29
  %t230 = getelementptr { i64, [21 x i64] }, ptr %t228, i32 0, i32 1
  %t231 = getelementptr { %"compiler/source:Span", %"compiler/mir:Lvalue", %"compiler/mir:Lvalue", { i64, [4 x i64] } }, ptr %t230, i32 0, i32 3
  %t232 = load { i64, [4 x i64] }, ptr %t231
  store { i64, [4 x i64] } %t232, ptr %l15
  br label %bb66
bb65:
  br label %bb70
bb66:
  %t234 = load ptr, ptr %l0, !tbaa !29
  %t235 = load %"compiler/mir:Lvalue", ptr %l13
  call void @compiler_2fmir_2ecompiler_2fmir_3averifier_2eplace(ptr %v0, ptr %v2, ptr %t234, %"compiler/mir:Lvalue" %t235)
  br label %bb67
bb67:
  %t238 = load ptr, ptr %l0, !tbaa !29
  %t239 = load %"compiler/mir:Lvalue", ptr %l14
  call void @compiler_2fmir_2ecompiler_2fmir_3averifier_2eplace(ptr %v0, ptr %v2, ptr %t238, %"compiler/mir:Lvalue" %t239)
  br label %bb68
bb68:
  %t242 = load ptr, ptr %l0, !tbaa !29
  %t243 = load { i64, [4 x i64] }, ptr %l15
  call void @compiler_2fmir_2ecompiler_2fmir_3averifier_2eoperand(ptr %v0, ptr %v2, ptr %t242, { i64, [4 x i64] } %t243)
  br label %bb69
bb69:
  br label %bb122
bb70:
  %t246 = load ptr, ptr %l1, !tbaa !29
  store ptr %t246, ptr %l126, !tbaa !29
  store i1 false, ptr %l127, !tbaa !21
  %t247 = load ptr, ptr %l126, !tbaa !29
  %t248 = icmp ne ptr %t247, null
  br i1 %t248, label %bb71, label %bb72
bb71:
  %t250 = load ptr, ptr %l126, !tbaa !29
  %t251 = load i64, ptr %t250, !range !{i64 0, i64 16}
  %t253 = icmp eq i64 %t251, 10
  store i1 %t253, ptr %l127, !tbaa !21
  br label %bb72
bb72:
  %t254 = load i1, ptr %l127, !tbaa !21
  br i1 %t254, label %bb73, label %bb74
bb73:
  %t255 = load ptr, ptr %l1, !tbaa !29
  %t257 = getelementptr { i64, [21 x i64] }, ptr %t255, i32 0, i32 1
  %t258 = getelementptr { %"compiler/source:Span", i32, i32 }, ptr %t257, i32 0, i32 1
  %t259 = load i32, ptr %t258
  store i32 %t259, ptr %l16, !tbaa !23
  %t261 = load ptr, ptr %l1, !tbaa !29
  %t263 = getelementptr { i64, [21 x i64] }, ptr %t261, i32 0, i32 1
  %t264 = getelementptr { %"compiler/source:Span", i32, i32 }, ptr %t263, i32 0, i32 2
  %t265 = load i32, ptr %t264
  store i32 %t265, ptr %l17, !tbaa !23
  br label %bb75
bb74:
  br label %bb85
bb75:
  %t267 = load ptr, ptr %l0, !tbaa !29
  %t268 = load i32, ptr %l16, !tbaa !23
  %t271 = call i1 @compiler_2fmir_2ecompiler_2fmir_3averifier_2escope(ptr %v0, ptr %v2, ptr %t267, i32 %t268)
  store i1 %t271, ptr %l136
  br label %bb76
bb76:
  %t272 = load i32, ptr %l17, !tbaa !23
  %t274 = icmp slt i32 %t272, 0
  br i1 %t274, label %bb77, label %bb78
bb77:
  store i1 true, ptr %l139, !tbaa !21
  br label %bb80
bb78:
  %t276 = load i32, ptr %l17, !tbaa !23
  %t278 = sext i32 %t276 to i64
  store i64 %t278, ptr %l141, !tbaa !24
  %t279 = load ptr, ptr %l0, !tbaa !29
  %t281 = getelementptr %"compiler/mir:verifier", ptr %t279, i32 0, i32 0
  %t282 = load ptr, ptr %t281, !tbaa !29
  %t284 = getelementptr %"compiler/mir:Fn", ptr %t282, i32 0, i32 16
  store ptr %t284, ptr %l144, !tbaa !29
  %t285 = load ptr, ptr %l144, !tbaa !29
  %t286 = call ptr @__olang_scope_or(ptr %v2, ptr %t285)
  %t287 = ptrtoint ptr %t286 to i64
  %t289 = inttoptr i64 %t287 to ptr
  %t290 = load ptr, ptr %l144, !tbaa !29
  %t291 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aTask_3e_2eLen_3ccompiler_2fmir_3aTask_3e(ptr %t289, ptr %t290)
  store i64 %t291, ptr %l146
  br label %bb79
bb79:
  %t292 = load i64, ptr %l141, !tbaa !24
  %t293 = load i64, ptr %l146, !tbaa !24
  %t294 = icmp sge i64 %t292, %t293
  store i1 %t294, ptr %l139, !tbaa !21
  br label %bb80
bb80:
  %t296 = load i1, ptr %l139, !tbaa !21
  br i1 %t296, label %bb81, label %bb82
bb81:
  store %olang.scope zeroinitializer, ptr %s10
  %t297 = load ptr, ptr %l0, !tbaa !29
  %t298 = load i32, ptr %l17, !tbaa !23
  %t299 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d115, i32 0, i32 1) }, 1
  %t300 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d115, i32 0, i32 1) }, 0
  %t302 = sext i32 %t298 to i64
  %t303 = call i64 @__olang_fmt_i64(ptr null, i64 %t302)
  %t304 = add i64 %t300, %t303
  %t305 = call ptr @__olang_scope_alloc(ptr %s10, i64 %t304)
  call void @olang_textcopy(ptr %t305, ptr %t299, i64 %t300)
  %t306 = getelementptr i8, ptr %t305, i64 %t300
  %t307 = call i64 @__olang_fmt_i64(ptr %t306, i64 %t302)
  %t308 = insertvalue { i64, ptr } undef, i64 %t304, 0
  %t309 = insertvalue { i64, ptr } %t308, ptr %t305, 1
  %t311 = extractvalue { i64, ptr } %t309, 0
  %t312 = extractvalue { i64, ptr } %t309, 1
  %t313 = mul i64 %t311, 1
  %t314 = call ptr @__olang_scope_alloc(ptr %s10, i64 %t313)
  call void @llvm.memcpy.p0.p0.i64(ptr %t314, ptr %t312, i64 %t313, i1 false)
  %t315 = insertvalue { i64, ptr } undef, i64 %t311, 0
  %t316 = insertvalue { i64, ptr } %t315, ptr %t314, 1
  call void @compiler_2fmir_2ecompiler_2fmir_3averifier_2ebad(ptr %v0, ptr %s10, ptr %t297, { i64, ptr } %t316)
  br label %bb83
bb82:
  br label %bb84
bb83:
  call void @__olang_scope_close(ptr %s10)
  br label %bb84
bb84:
  br label %bb122
bb85:
  %t319 = load ptr, ptr %l1, !tbaa !29
  store ptr %t319, ptr %l152, !tbaa !29
  store i1 false, ptr %l153, !tbaa !21
  %t320 = load ptr, ptr %l152, !tbaa !29
  %t321 = icmp ne ptr %t320, null
  br i1 %t321, label %bb86, label %bb87
bb86:
  %t323 = load ptr, ptr %l152, !tbaa !29
  %t324 = load i64, ptr %t323, !range !{i64 0, i64 16}
  %t326 = icmp eq i64 %t324, 11
  store i1 %t326, ptr %l153, !tbaa !21
  br label %bb87
bb87:
  %t327 = load i1, ptr %l153, !tbaa !21
  br i1 %t327, label %bb88, label %bb89
bb88:
  br label %bb94
bb89:
  %t328 = load ptr, ptr %l1, !tbaa !29
  store ptr %t328, ptr %l156, !tbaa !29
  store i1 false, ptr %l157, !tbaa !21
  %t329 = load ptr, ptr %l156, !tbaa !29
  %t330 = icmp ne ptr %t329, null
  br i1 %t330, label %bb90, label %bb91
bb90:
  %t332 = load ptr, ptr %l156, !tbaa !29
  %t333 = load i64, ptr %t332, !range !{i64 0, i64 16}
  %t335 = icmp eq i64 %t333, 13
  store i1 %t335, ptr %l157, !tbaa !21
  br label %bb91
bb91:
  %t336 = load i1, ptr %l157, !tbaa !21
  br i1 %t336, label %bb92, label %bb93
bb92:
  br label %bb94
bb93:
  br label %bb95
bb94:
  br label %bb122
bb95:
  %t337 = load ptr, ptr %l1, !tbaa !29
  store ptr %t337, ptr %l160, !tbaa !29
  store i1 false, ptr %l161, !tbaa !21
  %t338 = load ptr, ptr %l160, !tbaa !29
  %t339 = icmp ne ptr %t338, null
  br i1 %t339, label %bb96, label %bb97
bb96:
  %t341 = load ptr, ptr %l160, !tbaa !29
  %t342 = load i64, ptr %t341, !range !{i64 0, i64 16}
  %t344 = icmp eq i64 %t342, 12
  store i1 %t344, ptr %l161, !tbaa !21
  br label %bb97
bb97:
  %t345 = load i1, ptr %l161, !tbaa !21
  br i1 %t345, label %bb98, label %bb99
bb98:
  %t346 = load ptr, ptr %l1, !tbaa !29
  %t348 = getelementptr { i64, [21 x i64] }, ptr %t346, i32 0, i32 1
  %t349 = getelementptr { %"compiler/source:Span", { i64, [4 x i64] } }, ptr %t348, i32 0, i32 1
  %t350 = load { i64, [4 x i64] }, ptr %t349
  store { i64, [4 x i64] } %t350, ptr %l18
  br label %bb100
bb99:
  br label %bb102
bb100:
  %t352 = load ptr, ptr %l0, !tbaa !29
  %t353 = load { i64, [4 x i64] }, ptr %l18
  call void @compiler_2fmir_2ecompiler_2fmir_3averifier_2eoperand(ptr %v0, ptr %v2, ptr %t352, { i64, [4 x i64] } %t353)
  br label %bb101
bb101:
  br label %bb122
bb102:
  %t356 = load ptr, ptr %l1, !tbaa !29
  store ptr %t356, ptr %l168, !tbaa !29
  store i1 false, ptr %l169, !tbaa !21
  %t357 = load ptr, ptr %l168, !tbaa !29
  %t358 = icmp ne ptr %t357, null
  br i1 %t358, label %bb103, label %bb104
bb103:
  %t360 = load ptr, ptr %l168, !tbaa !29
  %t361 = load i64, ptr %t360, !range !{i64 0, i64 16}
  %t363 = icmp eq i64 %t361, 14
  store i1 %t363, ptr %l169, !tbaa !21
  br label %bb104
bb104:
  %t364 = load i1, ptr %l169, !tbaa !21
  br i1 %t364, label %bb105, label %bb106
bb105:
  %t365 = load ptr, ptr %l1, !tbaa !29
  %t367 = getelementptr { i64, [21 x i64] }, ptr %t365, i32 0, i32 1
  %t368 = getelementptr { %"compiler/source:Span", { i64, [4 x i64] }, { i64, [4 x i64] } }, ptr %t367, i32 0, i32 1
  %t369 = load { i64, [4 x i64] }, ptr %t368
  store { i64, [4 x i64] } %t369, ptr %l19
  %t371 = load ptr, ptr %l1, !tbaa !29
  %t373 = getelementptr { i64, [21 x i64] }, ptr %t371, i32 0, i32 1
  %t374 = getelementptr { %"compiler/source:Span", { i64, [4 x i64] }, { i64, [4 x i64] } }, ptr %t373, i32 0, i32 2
  %t375 = load { i64, [4 x i64] }, ptr %t374
  store { i64, [4 x i64] } %t375, ptr %l20
  br label %bb107
bb106:
  br label %bb110
bb107:
  %t377 = load ptr, ptr %l0, !tbaa !29
  %t378 = load { i64, [4 x i64] }, ptr %l19
  call void @compiler_2fmir_2ecompiler_2fmir_3averifier_2eoperand(ptr %v0, ptr %v2, ptr %t377, { i64, [4 x i64] } %t378)
  br label %bb108
bb108:
  %t381 = load ptr, ptr %l0, !tbaa !29
  %t382 = load { i64, [4 x i64] }, ptr %l20
  call void @compiler_2fmir_2ecompiler_2fmir_3averifier_2eoperand(ptr %v0, ptr %v2, ptr %t381, { i64, [4 x i64] } %t382)
  br label %bb109
bb109:
  br label %bb122
bb110:
  %t385 = load ptr, ptr %l1, !tbaa !29
  store ptr %t385, ptr %l180, !tbaa !29
  store i1 false, ptr %l181, !tbaa !21
  %t386 = load ptr, ptr %l180, !tbaa !29
  %t387 = icmp ne ptr %t386, null
  br i1 %t387, label %bb111, label %bb112
bb111:
  %t389 = load ptr, ptr %l180, !tbaa !29
  %t390 = load i64, ptr %t389, !range !{i64 0, i64 16}
  %t392 = icmp eq i64 %t390, 15
  store i1 %t392, ptr %l181, !tbaa !21
  br label %bb112
bb112:
  %t393 = load i1, ptr %l181, !tbaa !21
  br i1 %t393, label %bb113, label %bb114
bb113:
  %t394 = load ptr, ptr %l1, !tbaa !29
  %t396 = getelementptr { i64, [21 x i64] }, ptr %t394, i32 0, i32 1
  %t397 = getelementptr { %"compiler/source:Span", i32, i32 }, ptr %t396, i32 0, i32 1
  %t398 = load i32, ptr %t397
  store i32 %t398, ptr %l21, !tbaa !23
  %t400 = load ptr, ptr %l1, !tbaa !29
  %t402 = getelementptr { i64, [21 x i64] }, ptr %t400, i32 0, i32 1
  %t403 = getelementptr { %"compiler/source:Span", i32, i32 }, ptr %t402, i32 0, i32 2
  %t404 = load i32, ptr %t403
  store i32 %t404, ptr %l22, !tbaa !23
  br label %bb115
bb114:
  br label %bb121
bb115:
  %t406 = load ptr, ptr %l0, !tbaa !29
  %t407 = load i32, ptr %l21, !tbaa !23
  %t410 = call i1 @compiler_2fmir_2ecompiler_2fmir_3averifier_2escope(ptr %v0, ptr %v2, ptr %t406, i32 %t407)
  store i1 %t410, ptr %l190
  br label %bb116
bb116:
  %t411 = load i32, ptr %l22, !tbaa !23
  %t412 = load i32, ptr @G_2ecompiler_2fmir_2eNoBlock, !tbaa !23
  %t415 = icmp ne i32 %t411, %t412
  br i1 %t415, label %bb117, label %bb118
bb117:
  %t417 = load ptr, ptr %l0, !tbaa !29
  %t418 = load i32, ptr %l22, !tbaa !23
  %t421 = call i1 @compiler_2fmir_2ecompiler_2fmir_3averifier_2eblock(ptr %v0, ptr %v2, ptr %t417, i32 %t418)
  store i1 %t421, ptr %l196
  br label %bb119
bb118:
  br label %bb120
bb119:
  br label %bb120
bb120:
  br label %bb122
bb121:
  call void @__olang_check_failed(ptr @olang_loc_145fd452f8e36c9b_ff9c6902187c9987)
  unreachable
bb122:
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2fmir_2ecompiler_2fmir_3averifier_2estmtTypes(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca %"compiler/mir:Lvalue"
  %l4 = alloca { i64, [15 x i64] }
  %l5 = alloca i32
  %l6 = alloca i32
  %l7 = alloca { i64, [4 x i64] }
  %l8 = alloca i32
  %l9 = alloca { i64, [4 x i64] }
  %l10 = alloca i32
  %l11 = alloca %"compiler/mir:Lvalue"
  %l12 = alloca i32
  %l13 = alloca %"compiler/mir:Lvalue"
  %l14 = alloca i32
  %l15 = alloca { i64, [1 x i64] }
  %l16 = alloca i32
  %l17 = alloca { i64, [4 x i64] }
  %l18 = alloca i32
  %l19 = alloca i32
  %l21 = alloca %"compiler/mir:Lvalue"
  %l22 = alloca %"compiler/mir:Lvalue"
  %l23 = alloca { i64, [4 x i64] }
  %l24 = alloca i32
  %l25 = alloca i32
  %l26 = alloca i32
  %l27 = alloca i32
  %l28 = alloca %"compiler/mir:Task"
  %l29 = alloca i32
  %l30 = alloca { i64, ptr }
  %l33 = alloca ptr
  %l34 = alloca i1
  %l43 = alloca i32
  %l46 = alloca i32
  %l49 = alloca i1
  %l57 = alloca i1
  %l64 = alloca ptr
  %l65 = alloca i1
  %l74 = alloca i32
  %l75 = alloca ptr
  %l78 = alloca i1
  %l80 = alloca i1
  %l81 = alloca ptr
  %l82 = alloca ptr
  %l85 = alloca i32
  %l88 = alloca i1
  %l90 = alloca ptr
  %l93 = alloca { i64, ptr }
  %l96 = alloca { i64, ptr }
  %l99 = alloca ptr
  %l102 = alloca i1
  %l104 = alloca i1
  %l105 = alloca ptr
  %l108 = alloca i32
  %l111 = alloca ptr
  %l114 = alloca { i64, ptr }
  %l117 = alloca ptr
  %l118 = alloca i1
  %l125 = alloca i32
  %l129 = alloca i1
  %l130 = alloca ptr
  %l133 = alloca i1
  %l135 = alloca i1
  %l136 = alloca ptr
  %l139 = alloca i1
  %l141 = alloca i1
  %l142 = alloca ptr
  %l145 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l147 = alloca i64
  %l149 = alloca ptr
  %l152 = alloca { i64, ptr }
  %l155 = alloca ptr
  %l156 = alloca i1
  %l163 = alloca i32
  %l167 = alloca i1
  %l168 = alloca ptr
  %l171 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l173 = alloca i64
  %l175 = alloca i1
  %l176 = alloca ptr
  %l179 = alloca i1
  %l181 = alloca ptr
  %l184 = alloca { i64, ptr }
  %l187 = alloca ptr
  %l188 = alloca i1
  %l201 = alloca i32
  %l202 = alloca ptr
  %l205 = alloca i32
  %l206 = alloca i1
  %l213 = alloca i1
  %l222 = alloca ptr
  %l225 = alloca i1
  %l226 = alloca i1
  %l227 = alloca ptr
  %l230 = alloca i1
  %l234 = alloca ptr
  %l237 = alloca i1
  %l240 = alloca ptr
  %l243 = alloca i1
  %l251 = alloca ptr
  %l252 = alloca i32
  %l254 = alloca { i64, ptr }
  %l256 = alloca { i64, ptr }
  %l259 = alloca { i64, ptr }
  %l262 = alloca ptr
  %l263 = alloca i1
  %l272 = alloca ptr
  %l275 = alloca i32
  %l276 = alloca i32
  %l277 = alloca ptr
  %l280 = alloca i32
  %l281 = alloca i32
  %l285 = alloca i1
  %l290 = alloca ptr
  %l291 = alloca ptr
  %l292 = alloca ptr
  %l295 = alloca i32
  %l297 = alloca i32
  %l298 = alloca ptr
  %l299 = alloca ptr
  %l302 = alloca i32
  %l304 = alloca i32
  %l306 = alloca i1
  %l308 = alloca ptr
  %l311 = alloca { i64, ptr }
  %l314 = alloca { i64, ptr }
  %l317 = alloca ptr
  %l318 = alloca ptr
  %l321 = alloca i32
  %l323 = alloca i32
  %l325 = alloca i1
  %l328 = alloca ptr
  %l329 = alloca i1
  %l338 = alloca ptr
  %l342 = alloca %"compiler/mir:ScopeInfo"
  %l352 = alloca ptr
  %l356 = alloca %"compiler/mir:Task"
  %l359 = alloca i32
  %l368 = alloca ptr
  %l369 = alloca ptr
  %l370 = alloca ptr
  %l373 = alloca i32
  %l376 = alloca i32
  %l377 = alloca ptr
  %l380 = alloca i32
  %l382 = alloca i32
  %l384 = alloca { i64, ptr }
  %l387 = alloca i1
  %l404 = alloca i1
  %l405 = alloca ptr
  %l406 = alloca ptr
  %l409 = alloca i32
  %l411 = alloca { i64, ptr }
  %s3 = alloca %olang.scope
  %s5 = alloca %olang.scope
  %s8 = alloca %olang.scope
  %s10 = alloca %olang.scope
  %s11 = alloca %olang.scope
  %s13 = alloca %olang.scope
  %s14 = alloca %olang.scope
  %s23 = alloca %olang.scope
  %s24 = alloca %olang.builder
  %s24room = alloca [64 x i8], align 8
  %s27 = alloca %olang.scope
  %s29 = alloca %olang.scope
  %s31 = alloca %olang.scope
  %s32 = alloca %olang.scope
  %s33 = alloca %olang.scope
  %s35 = alloca %olang.scope
  %s36 = alloca %olang.scope
  %s39 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/mir:verifier", ptr %t1, i32 0, i32 1
  %t4 = load ptr, ptr %t3, !tbaa !29
  store ptr %t4, ptr %l2, !tbaa !29
  %t6 = load ptr, ptr %l1, !tbaa !29
  store ptr %t6, ptr %l33, !tbaa !29
  store i1 false, ptr %l34, !tbaa !21
  %t7 = load ptr, ptr %l33, !tbaa !29
  %t8 = icmp ne ptr %t7, null
  br i1 %t8, label %bb1, label %bb2
bb1:
  %t10 = load ptr, ptr %l33, !tbaa !29
  %t11 = load i64, ptr %t10, !range !{i64 0, i64 16}
  %t13 = icmp eq i64 %t11, 0
  store i1 %t13, ptr %l34, !tbaa !21
  br label %bb2
bb2:
  %t14 = load i1, ptr %l34, !tbaa !21
  br i1 %t14, label %bb3, label %bb4
bb3:
  %t15 = load ptr, ptr %l1, !tbaa !29
  %t17 = getelementptr { i64, [21 x i64] }, ptr %t15, i32 0, i32 1
  %t18 = getelementptr { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } }, ptr %t17, i32 0, i32 1
  %t19 = load %"compiler/mir:Lvalue", ptr %t18
  store %"compiler/mir:Lvalue" %t19, ptr %l3
  %t21 = load ptr, ptr %l1, !tbaa !29
  %t23 = getelementptr { i64, [21 x i64] }, ptr %t21, i32 0, i32 1
  %t24 = getelementptr { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } }, ptr %t23, i32 0, i32 2
  %t25 = load { i64, [15 x i64] }, ptr %t24
  store { i64, [15 x i64] } %t25, ptr %l4
  br label %bb5
bb4:
  br label %bb21
bb5:
  %t27 = load ptr, ptr %l0, !tbaa !29
  %t28 = load %"compiler/mir:Lvalue", ptr %l3
  %t31 = call i32 @compiler_2fmir_2ecompiler_2fmir_3averifier_2eplaceType(ptr %v0, ptr %v2, ptr %v3, ptr %t27, %"compiler/mir:Lvalue" %t28)
  store i32 %t31, ptr %l43
  br label %bb6
bb6:
  %t32 = load i32, ptr %l43, !tbaa !23
  store i32 %t32, ptr %l5, !tbaa !23
  %t33 = load ptr, ptr %l0, !tbaa !29
  %t34 = load { i64, [15 x i64] }, ptr %l4
  %t37 = call i32 @compiler_2fmir_2ecompiler_2fmir_3averifier_2ervalueType(ptr %v0, ptr %v2, ptr %v3, ptr %t33, { i64, [15 x i64] } %t34)
  store i32 %t37, ptr %l46
  br label %bb7
bb7:
  %t38 = load i32, ptr %l46, !tbaa !23
  store i32 %t38, ptr %l6, !tbaa !23
  %t39 = load { i64, [15 x i64] }, ptr %l4
  %t41 = extractvalue { i64, [15 x i64] } %t39, 0
  %t42 = icmp eq i64 %t41, 0
  br i1 %t42, label %bb8, label %bb9
bb8:
  %t44 = getelementptr { i64, [15 x i64] }, ptr %l4, i32 0, i32 1
  %t45 = getelementptr { { i64, [4 x i64] } }, ptr %t44, i32 0, i32 0
  %t46 = load { i64, [4 x i64] }, ptr %t45
  %t48 = extractvalue { i64, [4 x i64] } %t46, 0
  %t49 = icmp eq i64 %t48, 0
  store i1 %t49, ptr %l49, !tbaa !21
  br label %bb10
bb9:
  store i1 false, ptr %l49, !tbaa !21
  br label %bb10
bb10:
  %t51 = load i1, ptr %l49, !tbaa !21
  br i1 %t51, label %bb11, label %bb12
bb11:
  %t52 = getelementptr { i64, [15 x i64] }, ptr %l4, i32 0, i32 1
  %t53 = getelementptr { { i64, [4 x i64] } }, ptr %t52, i32 0, i32 0
  %t54 = load { i64, [4 x i64] }, ptr %t53
  store { i64, [4 x i64] } %t54, ptr %l7
  %t56 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  store i32 %t56, ptr %l6, !tbaa !23
  br label %bb13
bb12:
  br label %bb13
bb13:
  %t58 = load i32, ptr %l5, !tbaa !23
  %t59 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t62 = icmp ne i32 %t58, %t59
  br i1 %t62, label %bb14, label %bb15
bb14:
  %t64 = load i32, ptr %l6, !tbaa !23
  %t65 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t68 = icmp ne i32 %t64, %t65
  store i1 %t68, ptr %l57, !tbaa !21
  br label %bb16
bb15:
  store i1 false, ptr %l57, !tbaa !21
  br label %bb16
bb16:
  %t70 = load i1, ptr %l57, !tbaa !21
  br i1 %t70, label %bb17, label %bb18
bb17:
  store %olang.scope zeroinitializer, ptr %s3
  %t71 = load ptr, ptr %l0, !tbaa !29
  %t72 = load i32, ptr %l6, !tbaa !23
  %t73 = load i32, ptr %l5, !tbaa !23
  call void @compiler_2fmir_2ecompiler_2fmir_3averifier_2ewant(ptr %v0, ptr %s3, ptr %v3, ptr %t71, i32 %t72, i32 %t73, { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d116, i32 0, i32 1) })
  br label %bb19
bb18:
  br label %bb20
bb19:
  call void @__olang_scope_close(ptr %s3)
  br label %bb20
bb20:
  br label %bb228
bb21:
  %t77 = load ptr, ptr %l1, !tbaa !29
  store ptr %t77, ptr %l64, !tbaa !29
  store i1 false, ptr %l65, !tbaa !21
  %t78 = load ptr, ptr %l64, !tbaa !29
  %t79 = icmp ne ptr %t78, null
  br i1 %t79, label %bb22, label %bb23
bb22:
  %t81 = load ptr, ptr %l64, !tbaa !29
  %t82 = load i64, ptr %t81, !range !{i64 0, i64 16}
  %t84 = icmp eq i64 %t82, 5
  store i1 %t84, ptr %l65, !tbaa !21
  br label %bb23
bb23:
  %t85 = load i1, ptr %l65, !tbaa !21
  br i1 %t85, label %bb24, label %bb25
bb24:
  %t86 = load ptr, ptr %l1, !tbaa !29
  %t88 = getelementptr { i64, [21 x i64] }, ptr %t86, i32 0, i32 1
  %t89 = getelementptr { %"compiler/source:Span", { i64, [1 x i64] }, i32, { i64, [4 x i64] } }, ptr %t88, i32 0, i32 2
  %t90 = load i32, ptr %t89
  store i32 %t90, ptr %l8, !tbaa !23
  %t92 = load ptr, ptr %l1, !tbaa !29
  %t94 = getelementptr { i64, [21 x i64] }, ptr %t92, i32 0, i32 1
  %t95 = getelementptr { %"compiler/source:Span", { i64, [1 x i64] }, i32, { i64, [4 x i64] } }, ptr %t94, i32 0, i32 3
  %t96 = load { i64, [4 x i64] }, ptr %t95
  store { i64, [4 x i64] } %t96, ptr %l9
  br label %bb26
bb25:
  br label %bb50
bb26:
  %t98 = load ptr, ptr %l0, !tbaa !29
  %t99 = load { i64, [4 x i64] }, ptr %l9
  %t102 = call i32 @compiler_2fmir_2ecompiler_2fmir_3averifier_2eoperandType(ptr %v0, ptr %v2, ptr %v3, ptr %t98, { i64, [4 x i64] } %t99)
  store i32 %t102, ptr %l74
  br label %bb27
bb27:
  %t103 = load i32, ptr %l74, !tbaa !23
  store i32 %t103, ptr %l10, !tbaa !23
  %t104 = load ptr, ptr %l2, !tbaa !29
  store ptr %t104, ptr %l75, !tbaa !29
  %t105 = load i32, ptr %l10, !tbaa !23
  %t106 = load ptr, ptr %l75, !tbaa !29
  %t107 = call ptr @__olang_scope_or(ptr %v3, ptr %t106)
  %t108 = ptrtoint ptr %t107 to i64
  %t110 = inttoptr i64 %t108 to ptr
  %t111 = load ptr, ptr %l75, !tbaa !29
  %t113 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsRef(ptr %t110, ptr %t111, i32 %t105)
  store i1 %t113, ptr %l78
  br label %bb28
bb28:
  %t114 = load i1, ptr %l78, !tbaa !21
  %t115 = xor i1 %t114, true
  br i1 %t115, label %bb29, label %bb30
bb29:
  store i1 true, ptr %l80, !tbaa !21
  br label %bb33
bb30:
  %t117 = load ptr, ptr %l2, !tbaa !29
  store ptr %t117, ptr %l81, !tbaa !29
  %t118 = load ptr, ptr %l2, !tbaa !29
  store ptr %t118, ptr %l82, !tbaa !29
  %t119 = load i32, ptr %l10, !tbaa !23
  %t120 = load ptr, ptr %l82, !tbaa !29
  %t121 = call ptr @__olang_scope_or(ptr %v3, ptr %t120)
  %t122 = ptrtoint ptr %t121 to i64
  %t124 = inttoptr i64 %t122 to ptr
  %t125 = load ptr, ptr %l82, !tbaa !29
  %t127 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eReferent(ptr %t124, ptr %t125, i32 %t119)
  store i32 %t127, ptr %l85
  br label %bb31
bb31:
  %t128 = load i32, ptr %l8, !tbaa !23
  %t129 = load ptr, ptr %l81, !tbaa !29
  %t130 = call ptr @__olang_scope_or(ptr %v3, ptr %t129)
  %t131 = ptrtoint ptr %t130 to i64
  %t133 = inttoptr i64 %t131 to ptr
  %t134 = load ptr, ptr %l81, !tbaa !29
  %t135 = load i32, ptr %l85, !tbaa !23
  %t137 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eSame(ptr %t133, ptr %t134, i32 %t135, i32 %t128)
  store i1 %t137, ptr %l88
  br label %bb32
bb32:
  %t138 = load i1, ptr %l88, !tbaa !21
  %t139 = xor i1 %t138, true
  store i1 %t139, ptr %l80, !tbaa !21
  br label %bb33
bb33:
  %t141 = load i1, ptr %l80, !tbaa !21
  br i1 %t141, label %bb34, label %bb35
bb34:
  store %olang.scope zeroinitializer, ptr %s5
  %t142 = load ptr, ptr %l0, !tbaa !29
  store ptr %t142, ptr %l90, !tbaa !29
  %t143 = load ptr, ptr %l0, !tbaa !29
  %t144 = load i32, ptr %l10, !tbaa !23
  %t147 = call { i64, ptr } @compiler_2fmir_2ecompiler_2fmir_3averifier_2ecanon(ptr %v0, ptr %s5, ptr %v3, ptr %t143, i32 %t144)
  store { i64, ptr } %t147, ptr %l93
  br label %bb36
bb35:
  %t148 = load ptr, ptr %l2, !tbaa !29
  store ptr %t148, ptr %l99, !tbaa !29
  %t149 = load i32, ptr %l8, !tbaa !23
  %t150 = load ptr, ptr %l99, !tbaa !29
  %t151 = call ptr @__olang_scope_or(ptr %v3, ptr %t150)
  %t152 = ptrtoint ptr %t151 to i64
  %t154 = inttoptr i64 %t152 to ptr
  %t155 = load ptr, ptr %l99, !tbaa !29
  %t157 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eNeedsDrop(ptr %t154, ptr %t155, i32 %t149)
  store i1 %t157, ptr %l102
  br label %bb39
bb36:
  %t158 = load ptr, ptr %l0, !tbaa !29
  %t159 = load i32, ptr %l8, !tbaa !23
  %t162 = call { i64, ptr } @compiler_2fmir_2ecompiler_2fmir_3averifier_2ecanon(ptr %v0, ptr %s5, ptr %v3, ptr %t158, i32 %t159)
  store { i64, ptr } %t162, ptr %l96
  br label %bb37
bb37:
  %t163 = extractvalue { i64, ptr } { i64 30, ptr getelementptr inbounds (<{ i64, [30 x i8] }>, ptr @.d117, i32 0, i32 1) }, 1
  %t164 = extractvalue { i64, ptr } { i64 30, ptr getelementptr inbounds (<{ i64, [30 x i8] }>, ptr @.d117, i32 0, i32 1) }, 0
  %t165 = load { i64, ptr }, ptr %l93, !tbaa !27
  %t166 = extractvalue { i64, ptr } %t165, 1
  %t167 = extractvalue { i64, ptr } %t165, 0
  %t168 = add i64 %t164, %t167
  %t169 = extractvalue { i64, ptr } { i64 23, ptr getelementptr inbounds (<{ i64, [23 x i8] }>, ptr @.d118, i32 0, i32 1) }, 1
  %t170 = extractvalue { i64, ptr } { i64 23, ptr getelementptr inbounds (<{ i64, [23 x i8] }>, ptr @.d118, i32 0, i32 1) }, 0
  %t171 = add i64 %t168, %t170
  %t172 = load { i64, ptr }, ptr %l96, !tbaa !27
  %t173 = extractvalue { i64, ptr } %t172, 1
  %t174 = extractvalue { i64, ptr } %t172, 0
  %t175 = add i64 %t171, %t174
  %t176 = call ptr @__olang_scope_alloc(ptr %s5, i64 %t175)
  call void @olang_textcopy(ptr %t176, ptr %t163, i64 %t164)
  %t177 = getelementptr i8, ptr %t176, i64 %t164
  call void @olang_textcopy(ptr %t177, ptr %t166, i64 %t167)
  %t178 = getelementptr i8, ptr %t177, i64 %t167
  call void @olang_textcopy(ptr %t178, ptr %t169, i64 %t170)
  %t179 = getelementptr i8, ptr %t178, i64 %t170
  call void @olang_textcopy(ptr %t179, ptr %t173, i64 %t174)
  %t180 = insertvalue { i64, ptr } undef, i64 %t175, 0
  %t181 = insertvalue { i64, ptr } %t180, ptr %t176, 1
  %t183 = extractvalue { i64, ptr } %t181, 0
  %t184 = extractvalue { i64, ptr } %t181, 1
  %t185 = mul i64 %t183, 1
  %t186 = call ptr @__olang_scope_alloc(ptr %s5, i64 %t185)
  call void @llvm.memcpy.p0.p0.i64(ptr %t186, ptr %t184, i64 %t185, i1 false)
  %t187 = insertvalue { i64, ptr } undef, i64 %t183, 0
  %t188 = insertvalue { i64, ptr } %t187, ptr %t186, 1
  %t189 = load ptr, ptr %l90, !tbaa !29
  call void @compiler_2fmir_2ecompiler_2fmir_3averifier_2ebad(ptr %v0, ptr %s5, ptr %t189, { i64, ptr } %t188)
  br label %bb38
bb38:
  call void @__olang_scope_close(ptr %s5)
  br label %bb49
bb39:
  %t191 = load i1, ptr %l102, !tbaa !21
  %t192 = xor i1 %t191, true
  br i1 %t192, label %bb40, label %bb41
bb40:
  %t194 = load ptr, ptr %l2, !tbaa !29
  store ptr %t194, ptr %l105, !tbaa !29
  %t195 = load i32, ptr %l8, !tbaa !23
  %t196 = load ptr, ptr %l105, !tbaa !29
  %t197 = call ptr @__olang_scope_or(ptr %v3, ptr %t196)
  %t198 = ptrtoint ptr %t197 to i64
  %t200 = inttoptr i64 %t198 to ptr
  %t201 = load ptr, ptr %l105, !tbaa !29
  %t203 = call i32 @compiler_2fmir_2eGuardOf(ptr %t200, ptr %t201, i32 %t195)
  store i32 %t203, ptr %l108
  br label %bb42
bb41:
  store i1 false, ptr %l104, !tbaa !21
  br label %bb43
bb42:
  %t204 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t205 = load i32, ptr %l108, !tbaa !23
  %t207 = icmp eq i32 %t205, %t204
  store i1 %t207, ptr %l104, !tbaa !21
  br label %bb43
bb43:
  %t209 = load i1, ptr %l104, !tbaa !21
  br i1 %t209, label %bb44, label %bb45
bb44:
  store %olang.scope zeroinitializer, ptr %s8
  %t210 = load ptr, ptr %l0, !tbaa !29
  store ptr %t210, ptr %l111, !tbaa !29
  %t211 = load ptr, ptr %l0, !tbaa !29
  %t212 = load i32, ptr %l8, !tbaa !23
  %t215 = call { i64, ptr } @compiler_2fmir_2ecompiler_2fmir_3averifier_2ecanon(ptr %v0, ptr %s8, ptr %v3, ptr %t211, i32 %t212)
  store { i64, ptr } %t215, ptr %l114
  br label %bb46
bb45:
  br label %bb48
bb46:
  %t216 = extractvalue { i64, ptr } { i64 30, ptr getelementptr inbounds (<{ i64, [30 x i8] }>, ptr @.d119, i32 0, i32 1) }, 1
  %t217 = extractvalue { i64, ptr } { i64 30, ptr getelementptr inbounds (<{ i64, [30 x i8] }>, ptr @.d119, i32 0, i32 1) }, 0
  %t218 = load { i64, ptr }, ptr %l114, !tbaa !27
  %t219 = extractvalue { i64, ptr } %t218, 1
  %t220 = extractvalue { i64, ptr } %t218, 0
  %t221 = add i64 %t217, %t220
  %t222 = extractvalue { i64, ptr } { i64 23, ptr getelementptr inbounds (<{ i64, [23 x i8] }>, ptr @.d120, i32 0, i32 1) }, 1
  %t223 = extractvalue { i64, ptr } { i64 23, ptr getelementptr inbounds (<{ i64, [23 x i8] }>, ptr @.d120, i32 0, i32 1) }, 0
  %t224 = add i64 %t221, %t223
  %t225 = call ptr @__olang_scope_alloc(ptr %s8, i64 %t224)
  call void @olang_textcopy(ptr %t225, ptr %t216, i64 %t217)
  %t226 = getelementptr i8, ptr %t225, i64 %t217
  call void @olang_textcopy(ptr %t226, ptr %t219, i64 %t220)
  %t227 = getelementptr i8, ptr %t226, i64 %t220
  call void @olang_textcopy(ptr %t227, ptr %t222, i64 %t223)
  %t228 = insertvalue { i64, ptr } undef, i64 %t224, 0
  %t229 = insertvalue { i64, ptr } %t228, ptr %t225, 1
  %t231 = extractvalue { i64, ptr } %t229, 0
  %t232 = extractvalue { i64, ptr } %t229, 1
  %t233 = mul i64 %t231, 1
  %t234 = call ptr @__olang_scope_alloc(ptr %s8, i64 %t233)
  call void @llvm.memcpy.p0.p0.i64(ptr %t234, ptr %t232, i64 %t233, i1 false)
  %t235 = insertvalue { i64, ptr } undef, i64 %t231, 0
  %t236 = insertvalue { i64, ptr } %t235, ptr %t234, 1
  %t237 = load ptr, ptr %l111, !tbaa !29
  call void @compiler_2fmir_2ecompiler_2fmir_3averifier_2ebad(ptr %v0, ptr %s8, ptr %t237, { i64, ptr } %t236)
  br label %bb47
bb47:
  call void @__olang_scope_close(ptr %s8)
  br label %bb48
bb48:
  br label %bb49
bb49:
  br label %bb228
bb50:
  %t239 = load ptr, ptr %l1, !tbaa !29
  store ptr %t239, ptr %l117, !tbaa !29
  store i1 false, ptr %l118, !tbaa !21
  %t240 = load ptr, ptr %l117, !tbaa !29
  %t241 = icmp ne ptr %t240, null
  br i1 %t241, label %bb51, label %bb52
bb51:
  %t243 = load ptr, ptr %l117, !tbaa !29
  %t244 = load i64, ptr %t243, !range !{i64 0, i64 16}
  %t246 = icmp eq i64 %t244, 6
  store i1 %t246, ptr %l118, !tbaa !21
  br label %bb52
bb52:
  %t247 = load i1, ptr %l118, !tbaa !21
  br i1 %t247, label %bb53, label %bb54
bb53:
  %t248 = load ptr, ptr %l1, !tbaa !29
  %t250 = getelementptr { i64, [21 x i64] }, ptr %t248, i32 0, i32 1
  %t251 = getelementptr { %"compiler/source:Span", %"compiler/mir:Lvalue" }, ptr %t250, i32 0, i32 1
  %t252 = load %"compiler/mir:Lvalue", ptr %t251
  store %"compiler/mir:Lvalue" %t252, ptr %l11
  br label %bb55
bb54:
  br label %bb75
bb55:
  store %olang.scope zeroinitializer, ptr %s10
  %t254 = load ptr, ptr %l0, !tbaa !29
  %t255 = load %"compiler/mir:Lvalue", ptr %l11
  %t258 = call i32 @compiler_2fmir_2ecompiler_2fmir_3averifier_2eplaceType(ptr %v0, ptr %v2, ptr %v3, ptr %t254, %"compiler/mir:Lvalue" %t255)
  store i32 %t258, ptr %l125
  br label %bb56
bb56:
  %t259 = load i32, ptr %l125, !tbaa !23
  store i32 %t259, ptr %l12, !tbaa !23
  %t260 = load i32, ptr %l12, !tbaa !23
  %t261 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t264 = icmp ne i32 %t260, %t261
  br i1 %t264, label %bb57, label %bb58
bb57:
  %t266 = load ptr, ptr %l2, !tbaa !29
  store ptr %t266, ptr %l130, !tbaa !29
  %t267 = load i32, ptr %l12, !tbaa !23
  %t268 = load ptr, ptr %l130, !tbaa !29
  %t269 = call ptr @__olang_scope_or(ptr %v3, ptr %t268)
  %t270 = ptrtoint ptr %t269 to i64
  %t272 = inttoptr i64 %t270 to ptr
  %t273 = load ptr, ptr %l130, !tbaa !29
  %t275 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsRef(ptr %t272, ptr %t273, i32 %t267)
  store i1 %t275, ptr %l133
  br label %bb59
bb58:
  store i1 false, ptr %l129, !tbaa !21
  br label %bb60
bb59:
  %t276 = load i1, ptr %l133, !tbaa !21
  %t277 = xor i1 %t276, true
  store i1 %t277, ptr %l129, !tbaa !21
  br label %bb60
bb60:
  %t279 = load i1, ptr %l129, !tbaa !21
  br i1 %t279, label %bb61, label %bb62
bb61:
  %t280 = load ptr, ptr %l2, !tbaa !29
  store ptr %t280, ptr %l136, !tbaa !29
  %t281 = load i32, ptr %l12, !tbaa !23
  %t282 = load ptr, ptr %l136, !tbaa !29
  %t283 = call ptr @__olang_scope_or(ptr %v3, ptr %t282)
  %t284 = ptrtoint ptr %t283 to i64
  %t286 = inttoptr i64 %t284 to ptr
  %t287 = load ptr, ptr %l136, !tbaa !29
  %t289 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eOwnedPart(ptr %t286, ptr %t287, i32 %t281)
  store i1 %t289, ptr %l139
  br label %bb63
bb62:
  store i1 false, ptr %l135, !tbaa !21
  br label %bb64
bb63:
  %t290 = load i1, ptr %l139, !tbaa !21
  %t291 = xor i1 %t290, true
  store i1 %t291, ptr %l135, !tbaa !21
  br label %bb64
bb64:
  %t293 = load i1, ptr %l135, !tbaa !21
  br i1 %t293, label %bb65, label %bb66
bb65:
  %t294 = load ptr, ptr %l2, !tbaa !29
  store ptr %t294, ptr %l142, !tbaa !29
  %t295 = load i32, ptr %l12, !tbaa !23
  %t296 = load ptr, ptr %l142, !tbaa !29
  %t297 = call ptr @__olang_scope_or(ptr %v3, ptr %t296)
  %t298 = ptrtoint ptr %t297 to i64
  %t300 = inttoptr i64 %t298 to ptr
  %t301 = load ptr, ptr %l142, !tbaa !29
  %t303 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eAnchors(ptr %t300, ptr %s10, ptr %t301, i32 %t295)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t303, ptr %l145
  br label %bb67
bb66:
  store i1 false, ptr %l141, !tbaa !21
  br label %bb69
bb67:
  %t305 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cArray_3cI64_3e_3e_2eLen_3cArray_3cI64_3e_3e(ptr %s10, ptr %l145)
  store i64 %t305, ptr %l147
  br label %bb68
bb68:
  %t306 = load i64, ptr %l147, !tbaa !24
  %t307 = icmp eq i64 %t306, 0
  store i1 %t307, ptr %l141, !tbaa !21
  br label %bb69
bb69:
  %t309 = load i1, ptr %l141, !tbaa !21
  br i1 %t309, label %bb70, label %bb71
bb70:
  store %olang.scope zeroinitializer, ptr %s11
  %t310 = load ptr, ptr %l0, !tbaa !29
  store ptr %t310, ptr %l149, !tbaa !29
  %t311 = load ptr, ptr %l0, !tbaa !29
  %t312 = load i32, ptr %l12, !tbaa !23
  %t315 = call { i64, ptr } @compiler_2fmir_2ecompiler_2fmir_3averifier_2ecanon(ptr %v0, ptr %s11, ptr %v3, ptr %t311, i32 %t312)
  store { i64, ptr } %t315, ptr %l152
  br label %bb72
bb71:
  br label %bb74
bb72:
  %t316 = extractvalue { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d121, i32 0, i32 1) }, 1
  %t317 = extractvalue { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d121, i32 0, i32 1) }, 0
  %t318 = load { i64, ptr }, ptr %l152, !tbaa !27
  %t319 = extractvalue { i64, ptr } %t318, 1
  %t320 = extractvalue { i64, ptr } %t318, 0
  %t321 = add i64 %t317, %t320
  %t322 = extractvalue { i64, ptr } { i64 29, ptr getelementptr inbounds (<{ i64, [29 x i8] }>, ptr @.d122, i32 0, i32 1) }, 1
  %t323 = extractvalue { i64, ptr } { i64 29, ptr getelementptr inbounds (<{ i64, [29 x i8] }>, ptr @.d122, i32 0, i32 1) }, 0
  %t324 = add i64 %t321, %t323
  %t325 = call ptr @__olang_scope_alloc(ptr %s11, i64 %t324)
  call void @olang_textcopy(ptr %t325, ptr %t316, i64 %t317)
  %t326 = getelementptr i8, ptr %t325, i64 %t317
  call void @olang_textcopy(ptr %t326, ptr %t319, i64 %t320)
  %t327 = getelementptr i8, ptr %t326, i64 %t320
  call void @olang_textcopy(ptr %t327, ptr %t322, i64 %t323)
  %t328 = insertvalue { i64, ptr } undef, i64 %t324, 0
  %t329 = insertvalue { i64, ptr } %t328, ptr %t325, 1
  %t331 = extractvalue { i64, ptr } %t329, 0
  %t332 = extractvalue { i64, ptr } %t329, 1
  %t333 = mul i64 %t331, 1
  %t334 = call ptr @__olang_scope_alloc(ptr %s11, i64 %t333)
  call void @llvm.memcpy.p0.p0.i64(ptr %t334, ptr %t332, i64 %t333, i1 false)
  %t335 = insertvalue { i64, ptr } undef, i64 %t331, 0
  %t336 = insertvalue { i64, ptr } %t335, ptr %t334, 1
  %t337 = load ptr, ptr %l149, !tbaa !29
  call void @compiler_2fmir_2ecompiler_2fmir_3averifier_2ebad(ptr %v0, ptr %s11, ptr %t337, { i64, ptr } %t336)
  br label %bb73
bb73:
  call void @__olang_scope_close(ptr %s11)
  br label %bb74
bb74:
  call void @__olang_scope_close(ptr %s10)
  br label %bb228
bb75:
  %t339 = load ptr, ptr %l1, !tbaa !29
  store ptr %t339, ptr %l155, !tbaa !29
  store i1 false, ptr %l156, !tbaa !21
  %t340 = load ptr, ptr %l155, !tbaa !29
  %t341 = icmp ne ptr %t340, null
  br i1 %t341, label %bb76, label %bb77
bb76:
  %t343 = load ptr, ptr %l155, !tbaa !29
  %t344 = load i64, ptr %t343, !range !{i64 0, i64 16}
  %t346 = icmp eq i64 %t344, 7
  store i1 %t346, ptr %l156, !tbaa !21
  br label %bb77
bb77:
  %t347 = load i1, ptr %l156, !tbaa !21
  br i1 %t347, label %bb78, label %bb79
bb78:
  %t348 = load ptr, ptr %l1, !tbaa !29
  %t350 = getelementptr { i64, [21 x i64] }, ptr %t348, i32 0, i32 1
  %t351 = getelementptr { %"compiler/source:Span", i32, %"compiler/mir:Lvalue" }, ptr %t350, i32 0, i32 2
  %t352 = load %"compiler/mir:Lvalue", ptr %t351
  store %"compiler/mir:Lvalue" %t352, ptr %l13
  br label %bb80
bb79:
  br label %bb96
bb80:
  store %olang.scope zeroinitializer, ptr %s13
  %t354 = load ptr, ptr %l0, !tbaa !29
  %t355 = load %"compiler/mir:Lvalue", ptr %l13
  %t358 = call i32 @compiler_2fmir_2ecompiler_2fmir_3averifier_2eplaceType(ptr %v0, ptr %v2, ptr %v3, ptr %t354, %"compiler/mir:Lvalue" %t355)
  store i32 %t358, ptr %l163
  br label %bb81
bb81:
  %t359 = load i32, ptr %l163, !tbaa !23
  store i32 %t359, ptr %l14, !tbaa !23
  %t360 = load i32, ptr %l14, !tbaa !23
  %t361 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t364 = icmp ne i32 %t360, %t361
  br i1 %t364, label %bb82, label %bb83
bb82:
  %t366 = load ptr, ptr %l2, !tbaa !29
  store ptr %t366, ptr %l168, !tbaa !29
  %t367 = load i32, ptr %l14, !tbaa !23
  %t368 = load ptr, ptr %l168, !tbaa !29
  %t369 = call ptr @__olang_scope_or(ptr %v3, ptr %t368)
  %t370 = ptrtoint ptr %t369 to i64
  %t372 = inttoptr i64 %t370 to ptr
  %t373 = load ptr, ptr %l168, !tbaa !29
  %t375 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eAnchors(ptr %t372, ptr %s13, ptr %t373, i32 %t367)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t375, ptr %l171
  br label %bb84
bb83:
  store i1 false, ptr %l167, !tbaa !21
  br label %bb86
bb84:
  %t377 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cArray_3cI64_3e_3e_2eLen_3cArray_3cI64_3e_3e(ptr %s13, ptr %l171)
  store i64 %t377, ptr %l173
  br label %bb85
bb85:
  %t378 = load i64, ptr %l173, !tbaa !24
  %t379 = icmp eq i64 %t378, 0
  store i1 %t379, ptr %l167, !tbaa !21
  br label %bb86
bb86:
  %t381 = load i1, ptr %l167, !tbaa !21
  br i1 %t381, label %bb87, label %bb88
bb87:
  %t382 = load ptr, ptr %l2, !tbaa !29
  store ptr %t382, ptr %l176, !tbaa !29
  %t383 = load i32, ptr %l14, !tbaa !23
  %t384 = load ptr, ptr %l176, !tbaa !29
  %t385 = call ptr @__olang_scope_or(ptr %v3, ptr %t384)
  %t386 = ptrtoint ptr %t385 to i64
  %t388 = inttoptr i64 %t386 to ptr
  %t389 = load ptr, ptr %l176, !tbaa !29
  %t391 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eOwnedPart(ptr %t388, ptr %t389, i32 %t383)
  store i1 %t391, ptr %l179
  br label %bb89
bb88:
  store i1 false, ptr %l175, !tbaa !21
  br label %bb90
bb89:
  %t392 = load i1, ptr %l179, !tbaa !21
  %t393 = xor i1 %t392, true
  store i1 %t393, ptr %l175, !tbaa !21
  br label %bb90
bb90:
  %t395 = load i1, ptr %l175, !tbaa !21
  br i1 %t395, label %bb91, label %bb92
bb91:
  store %olang.scope zeroinitializer, ptr %s14
  %t396 = load ptr, ptr %l0, !tbaa !29
  store ptr %t396, ptr %l181, !tbaa !29
  %t397 = load ptr, ptr %l0, !tbaa !29
  %t398 = load i32, ptr %l14, !tbaa !23
  %t401 = call { i64, ptr } @compiler_2fmir_2ecompiler_2fmir_3averifier_2ecanon(ptr %v0, ptr %s14, ptr %v3, ptr %t397, i32 %t398)
  store { i64, ptr } %t401, ptr %l184
  br label %bb93
bb92:
  br label %bb95
bb93:
  %t402 = extractvalue { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d123, i32 0, i32 1) }, 1
  %t403 = extractvalue { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d123, i32 0, i32 1) }, 0
  %t404 = load { i64, ptr }, ptr %l184, !tbaa !27
  %t405 = extractvalue { i64, ptr } %t404, 1
  %t406 = extractvalue { i64, ptr } %t404, 0
  %t407 = add i64 %t403, %t406
  %t408 = extractvalue { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d124, i32 0, i32 1) }, 1
  %t409 = extractvalue { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d124, i32 0, i32 1) }, 0
  %t410 = add i64 %t407, %t409
  %t411 = call ptr @__olang_scope_alloc(ptr %s14, i64 %t410)
  call void @olang_textcopy(ptr %t411, ptr %t402, i64 %t403)
  %t412 = getelementptr i8, ptr %t411, i64 %t403
  call void @olang_textcopy(ptr %t412, ptr %t405, i64 %t406)
  %t413 = getelementptr i8, ptr %t412, i64 %t406
  call void @olang_textcopy(ptr %t413, ptr %t408, i64 %t409)
  %t414 = insertvalue { i64, ptr } undef, i64 %t410, 0
  %t415 = insertvalue { i64, ptr } %t414, ptr %t411, 1
  %t417 = extractvalue { i64, ptr } %t415, 0
  %t418 = extractvalue { i64, ptr } %t415, 1
  %t419 = mul i64 %t417, 1
  %t420 = call ptr @__olang_scope_alloc(ptr %s14, i64 %t419)
  call void @llvm.memcpy.p0.p0.i64(ptr %t420, ptr %t418, i64 %t419, i1 false)
  %t421 = insertvalue { i64, ptr } undef, i64 %t417, 0
  %t422 = insertvalue { i64, ptr } %t421, ptr %t420, 1
  %t423 = load ptr, ptr %l181, !tbaa !29
  call void @compiler_2fmir_2ecompiler_2fmir_3averifier_2ebad(ptr %v0, ptr %s14, ptr %t423, { i64, ptr } %t422)
  br label %bb94
bb94:
  call void @__olang_scope_close(ptr %s14)
  br label %bb95
bb95:
  call void @__olang_scope_close(ptr %s13)
  br label %bb228
bb96:
  %t425 = load ptr, ptr %l1, !tbaa !29
  store ptr %t425, ptr %l187, !tbaa !29
  store i1 false, ptr %l188, !tbaa !21
  %t426 = load ptr, ptr %l187, !tbaa !29
  %t427 = icmp ne ptr %t426, null
  br i1 %t427, label %bb97, label %bb98
bb97:
  %t429 = load ptr, ptr %l187, !tbaa !29
  %t430 = load i64, ptr %t429, !range !{i64 0, i64 16}
  %t432 = icmp eq i64 %t430, 8
  store i1 %t432, ptr %l188, !tbaa !21
  br label %bb98
bb98:
  %t433 = load i1, ptr %l188, !tbaa !21
  br i1 %t433, label %bb99, label %bb100
bb99:
  %t434 = load ptr, ptr %l1, !tbaa !29
  %t436 = getelementptr { i64, [21 x i64] }, ptr %t434, i32 0, i32 1
  %t437 = getelementptr { %"compiler/source:Span", { i64, [1 x i64] }, i32, { i64, [4 x i64] } }, ptr %t436, i32 0, i32 1
  %t438 = load { i64, [1 x i64] }, ptr %t437
  store { i64, [1 x i64] } %t438, ptr %l15
  %t440 = load ptr, ptr %l1, !tbaa !29
  %t442 = getelementptr { i64, [21 x i64] }, ptr %t440, i32 0, i32 1
  %t443 = getelementptr { %"compiler/source:Span", { i64, [1 x i64] }, i32, { i64, [4 x i64] } }, ptr %t442, i32 0, i32 2
  %t444 = load i32, ptr %t443, !range !{i32 0, i32 8}
  store i32 %t444, ptr %l16
  %t446 = load ptr, ptr %l1, !tbaa !29
  %t448 = getelementptr { i64, [21 x i64] }, ptr %t446, i32 0, i32 1
  %t449 = getelementptr { %"compiler/source:Span", { i64, [1 x i64] }, i32, { i64, [4 x i64] } }, ptr %t448, i32 0, i32 3
  %t450 = load { i64, [4 x i64] }, ptr %t449
  store { i64, [4 x i64] } %t450, ptr %l17
  br label %bb101
bb100:
  br label %bb149
bb101:
  %t452 = load ptr, ptr %l0, !tbaa !29
  %t453 = load { i64, [1 x i64] }, ptr %l15
  call void @compiler_2fmir_2ecompiler_2fmir_3averifier_2ebuilder(ptr %v0, ptr %v2, ptr %t452, { i64, [1 x i64] } %t453)
  br label %bb102
bb102:
  %t456 = load ptr, ptr %l0, !tbaa !29
  %t457 = load { i64, [4 x i64] }, ptr %l17
  %t460 = call i32 @compiler_2fmir_2ecompiler_2fmir_3averifier_2eoperandType(ptr %v0, ptr %v2, ptr %v3, ptr %t456, { i64, [4 x i64] } %t457)
  store i32 %t460, ptr %l201
  br label %bb103
bb103:
  %t461 = load i32, ptr %l201, !tbaa !23
  store i32 %t461, ptr %l18, !tbaa !23
  %t462 = load ptr, ptr %l2, !tbaa !29
  store ptr %t462, ptr %l202, !tbaa !29
  %t463 = load i32, ptr %l18, !tbaa !23
  %t464 = load ptr, ptr %l202, !tbaa !29
  %t465 = call ptr @__olang_scope_or(ptr %v3, ptr %t464)
  %t466 = ptrtoint ptr %t465 to i64
  %t468 = inttoptr i64 %t466 to ptr
  %t469 = load ptr, ptr %l202, !tbaa !29
  %t471 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %t468, ptr %t469, i32 %t463)
  store i32 %t471, ptr %l205
  br label %bb104
bb104:
  %t472 = load i32, ptr %l205, !tbaa !23
  store i32 %t472, ptr %l19, !tbaa !23
  %t473 = load i32, ptr %l16, !range !{i32 0, i32 8}
  %t475 = trunc i64 0 to i32
  %t476 = icmp eq i32 %t473, %t475
  br i1 %t476, label %bb105, label %bb106
bb105:
  br label %bb109
bb106:
  %t478 = load i32, ptr %l16, !range !{i32 0, i32 8}
  %t480 = trunc i64 1 to i32
  %t481 = icmp eq i32 %t478, %t480
  br i1 %t481, label %bb107, label %bb108
bb107:
  br label %bb109
bb108:
  br label %bb111
bb109:
  %t483 = load ptr, ptr %l0, !tbaa !29
  %t484 = load i32, ptr %l18, !tbaa !23
  %t487 = call i1 @compiler_2fmir_2ecompiler_2fmir_3averifier_2eisText(ptr %v0, ptr %v3, ptr %t483, i32 %t484)
  store i1 %t487, ptr %l213
  br label %bb110
bb110:
  %t488 = load i1, ptr %l213, !tbaa !21
  store i1 %t488, ptr %l206, !tbaa !21
  br label %bb141
bb111:
  %t489 = load i32, ptr %l16, !range !{i32 0, i32 8}
  %t491 = trunc i64 2 to i32
  %t492 = icmp eq i32 %t489, %t491
  br i1 %t492, label %bb112, label %bb113
bb112:
  br label %bb116
bb113:
  %t494 = load i32, ptr %l16, !range !{i32 0, i32 8}
  %t496 = trunc i64 3 to i32
  %t497 = icmp eq i32 %t494, %t496
  br i1 %t497, label %bb114, label %bb115
bb114:
  br label %bb116
bb115:
  br label %bb117
bb116:
  %t499 = load i32, ptr %l19, !tbaa !23
  %t501 = icmp eq i32 %t499, 7
  store i1 %t501, ptr %l206, !tbaa !21
  br label %bb141
bb117:
  %t503 = load i32, ptr %l16, !range !{i32 0, i32 8}
  %t505 = trunc i64 4 to i32
  %t506 = icmp eq i32 %t503, %t505
  br i1 %t506, label %bb118, label %bb119
bb118:
  br label %bb120
bb119:
  br label %bb126
bb120:
  %t508 = load ptr, ptr %l2, !tbaa !29
  store ptr %t508, ptr %l222, !tbaa !29
  %t509 = load i32, ptr %l19, !tbaa !23
  %t510 = load ptr, ptr %l222, !tbaa !29
  %t511 = call ptr @__olang_scope_or(ptr %v3, ptr %t510)
  %t512 = ptrtoint ptr %t511 to i64
  %t514 = inttoptr i64 %t512 to ptr
  %t515 = load ptr, ptr %l222, !tbaa !29
  %t517 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsInt(ptr %t514, ptr %t515, i32 %t509)
  store i1 %t517, ptr %l225
  br label %bb121
bb121:
  %t518 = load i1, ptr %l225, !tbaa !21
  br i1 %t518, label %bb122, label %bb123
bb122:
  %t519 = load ptr, ptr %l2, !tbaa !29
  store ptr %t519, ptr %l227, !tbaa !29
  %t520 = load i32, ptr %l19, !tbaa !23
  %t521 = load ptr, ptr %l227, !tbaa !29
  %t522 = call ptr @__olang_scope_or(ptr %v3, ptr %t521)
  %t523 = ptrtoint ptr %t522 to i64
  %t525 = inttoptr i64 %t523 to ptr
  %t526 = load ptr, ptr %l227, !tbaa !29
  %t528 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsUnsigned(ptr %t525, ptr %t526, i32 %t520)
  store i1 %t528, ptr %l230
  br label %bb124
bb123:
  store i1 false, ptr %l226, !tbaa !21
  br label %bb125
bb124:
  %t529 = load i1, ptr %l230, !tbaa !21
  %t530 = xor i1 %t529, true
  store i1 %t530, ptr %l226, !tbaa !21
  br label %bb125
bb125:
  %t532 = load i1, ptr %l226, !tbaa !21
  store i1 %t532, ptr %l206, !tbaa !21
  br label %bb141
bb126:
  %t533 = load i32, ptr %l16, !range !{i32 0, i32 8}
  %t535 = trunc i64 5 to i32
  %t536 = icmp eq i32 %t533, %t535
  br i1 %t536, label %bb127, label %bb128
bb127:
  br label %bb129
bb128:
  br label %bb131
bb129:
  %t538 = load ptr, ptr %l2, !tbaa !29
  store ptr %t538, ptr %l234, !tbaa !29
  %t539 = load i32, ptr %l19, !tbaa !23
  %t540 = load ptr, ptr %l234, !tbaa !29
  %t541 = call ptr @__olang_scope_or(ptr %v3, ptr %t540)
  %t542 = ptrtoint ptr %t541 to i64
  %t544 = inttoptr i64 %t542 to ptr
  %t545 = load ptr, ptr %l234, !tbaa !29
  %t547 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsUnsigned(ptr %t544, ptr %t545, i32 %t539)
  store i1 %t547, ptr %l237
  br label %bb130
bb130:
  %t548 = load i1, ptr %l237, !tbaa !21
  store i1 %t548, ptr %l206, !tbaa !21
  br label %bb141
bb131:
  %t549 = load i32, ptr %l16, !range !{i32 0, i32 8}
  %t551 = trunc i64 6 to i32
  %t552 = icmp eq i32 %t549, %t551
  br i1 %t552, label %bb132, label %bb133
bb132:
  br label %bb134
bb133:
  br label %bb136
bb134:
  %t554 = load ptr, ptr %l2, !tbaa !29
  store ptr %t554, ptr %l240, !tbaa !29
  %t555 = load i32, ptr %l19, !tbaa !23
  %t556 = load ptr, ptr %l240, !tbaa !29
  %t557 = call ptr @__olang_scope_or(ptr %v3, ptr %t556)
  %t558 = ptrtoint ptr %t557 to i64
  %t560 = inttoptr i64 %t558 to ptr
  %t561 = load ptr, ptr %l240, !tbaa !29
  %t563 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsFloat(ptr %t560, ptr %t561, i32 %t555)
  store i1 %t563, ptr %l243
  br label %bb135
bb135:
  %t564 = load i1, ptr %l243, !tbaa !21
  store i1 %t564, ptr %l206, !tbaa !21
  br label %bb141
bb136:
  %t565 = load i32, ptr %l16, !range !{i32 0, i32 8}
  %t567 = trunc i64 7 to i32
  %t568 = icmp eq i32 %t565, %t567
  br i1 %t568, label %bb137, label %bb138
bb137:
  br label %bb139
bb138:
  br label %bb140
bb139:
  %t570 = load i32, ptr %l19, !tbaa !23
  %t571 = load i32, ptr @G_2ecompiler_2ftypes_2eBoolT, !tbaa !23
  %t574 = icmp eq i32 %t570, %t571
  store i1 %t574, ptr %l206, !tbaa !21
  br label %bb141
bb140:
  call void @__olang_check_failed(ptr @olang_loc_299ef5e2a9c9a69f_7fc69ac68ccb4c23)
  unreachable
bb141:
  %t576 = load i1, ptr %l206, !tbaa !21
  %t579 = xor i1 %t576, true
  br i1 %t579, label %bb142, label %bb143
bb142:
  store %olang.scope zeroinitializer, ptr %s23
  %t581 = load ptr, ptr %l0, !tbaa !29
  store ptr %t581, ptr %l251, !tbaa !29
  %t582 = load i32, ptr %l16, !range !{i32 0, i32 8}
  store i32 %t582, ptr %l252
  store %olang.builder { ptr null, i64 0, i64 64, ptr null, ptr null }, ptr %s24
  store ptr %s24room, ptr %s24
  call void @olang_2emir_2eHelperKind_2eRender_2ecompiler_2fmir_3aWriteKind(ptr %s24, ptr %l252, i64 0)
  br label %bb144
bb143:
  br label %bb148
bb144:
  %t584 = load ptr, ptr %s24
  %t585 = getelementptr %olang.builder, ptr %s24, i32 0, i32 1
  %t586 = load i64, ptr %t585
  %t587 = call ptr @__olang_scope_alloc(ptr %s23, i64 %t586)
  call void @olang_textcopy(ptr %t587, ptr %t584, i64 %t586)
  %t588 = insertvalue { i64, ptr } undef, i64 %t586, 0
  %t589 = insertvalue { i64, ptr } %t588, ptr %t587, 1
  store { i64, ptr } %t589, ptr %l254, !tbaa !27
  %t590 = getelementptr %olang.builder, ptr %s24, i32 0, i32 3
  %t591 = load ptr, ptr %t590
  %t592 = icmp ne ptr %t591, null
  br i1 %t592, label %sbgrew.593, label %sbdone.594
sbgrew.593:
  call void @__olang_sb_done(ptr %s24)
  br label %sbdone.594
sbdone.594:
  %t595 = load { i64, ptr }, ptr %l254, !tbaa !27
  %t596 = extractvalue { i64, ptr } %t595, 0
  %t597 = extractvalue { i64, ptr } %t595, 1
  %t598 = mul i64 %t596, 1
  %t599 = call ptr @__olang_scope_alloc(ptr %s23, i64 %t598)
  call void @llvm.memcpy.p0.p0.i64(ptr %t599, ptr %t597, i64 %t598, i1 false)
  %t600 = insertvalue { i64, ptr } undef, i64 %t596, 0
  %t601 = insertvalue { i64, ptr } %t600, ptr %t599, 1
  %t603 = call { i64, ptr } @compiler_2fmir_2eshort(ptr %s23, ptr %s23, { i64, ptr } %t601)
  store { i64, ptr } %t603, ptr %l256
  br label %bb145
bb145:
  %t604 = load ptr, ptr %l0, !tbaa !29
  %t605 = load i32, ptr %l18, !tbaa !23
  %t608 = call { i64, ptr } @compiler_2fmir_2ecompiler_2fmir_3averifier_2ecanon(ptr %v0, ptr %s23, ptr %v3, ptr %t604, i32 %t605)
  store { i64, ptr } %t608, ptr %l259
  br label %bb146
bb146:
  %t609 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d125, i32 0, i32 1) }, 1
  %t610 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d125, i32 0, i32 1) }, 0
  %t611 = load { i64, ptr }, ptr %l256, !tbaa !27
  %t612 = extractvalue { i64, ptr } %t611, 1
  %t613 = extractvalue { i64, ptr } %t611, 0
  %t614 = add i64 %t610, %t613
  %t615 = extractvalue { i64, ptr } { i64 12, ptr getelementptr inbounds (<{ i64, [12 x i8] }>, ptr @.d126, i32 0, i32 1) }, 1
  %t616 = extractvalue { i64, ptr } { i64 12, ptr getelementptr inbounds (<{ i64, [12 x i8] }>, ptr @.d126, i32 0, i32 1) }, 0
  %t617 = add i64 %t614, %t616
  %t618 = load { i64, ptr }, ptr %l259, !tbaa !27
  %t619 = extractvalue { i64, ptr } %t618, 1
  %t620 = extractvalue { i64, ptr } %t618, 0
  %t621 = add i64 %t617, %t620
  %t622 = call ptr @__olang_scope_alloc(ptr %s23, i64 %t621)
  call void @olang_textcopy(ptr %t622, ptr %t609, i64 %t610)
  %t623 = getelementptr i8, ptr %t622, i64 %t610
  call void @olang_textcopy(ptr %t623, ptr %t612, i64 %t613)
  %t624 = getelementptr i8, ptr %t623, i64 %t613
  call void @olang_textcopy(ptr %t624, ptr %t615, i64 %t616)
  %t625 = getelementptr i8, ptr %t624, i64 %t616
  call void @olang_textcopy(ptr %t625, ptr %t619, i64 %t620)
  %t626 = insertvalue { i64, ptr } undef, i64 %t621, 0
  %t627 = insertvalue { i64, ptr } %t626, ptr %t622, 1
  %t629 = extractvalue { i64, ptr } %t627, 0
  %t630 = extractvalue { i64, ptr } %t627, 1
  %t631 = mul i64 %t629, 1
  %t632 = call ptr @__olang_scope_alloc(ptr %s23, i64 %t631)
  call void @llvm.memcpy.p0.p0.i64(ptr %t632, ptr %t630, i64 %t631, i1 false)
  %t633 = insertvalue { i64, ptr } undef, i64 %t629, 0
  %t634 = insertvalue { i64, ptr } %t633, ptr %t632, 1
  %t635 = load ptr, ptr %l251, !tbaa !29
  call void @compiler_2fmir_2ecompiler_2fmir_3averifier_2ebad(ptr %v0, ptr %s23, ptr %t635, { i64, ptr } %t634)
  br label %bb147
bb147:
  call void @__olang_scope_close(ptr %s23)
  br label %bb148
bb148:
  br label %bb228
bb149:
  %t637 = load ptr, ptr %l1, !tbaa !29
  store ptr %t637, ptr %l262, !tbaa !29
  store i1 false, ptr %l263, !tbaa !21
  %t638 = load ptr, ptr %l262, !tbaa !29
  %t639 = icmp ne ptr %t638, null
  br i1 %t639, label %bb150, label %bb151
bb150:
  %t641 = load ptr, ptr %l262, !tbaa !29
  %t642 = load i64, ptr %t641, !range !{i64 0, i64 16}
  %t644 = icmp eq i64 %t642, 9
  store i1 %t644, ptr %l263, !tbaa !21
  br label %bb151
bb151:
  %t645 = load i1, ptr %l263, !tbaa !21
  br i1 %t645, label %bb152, label %bb153
bb152:
  %t646 = load ptr, ptr %l1, !tbaa !29
  %t648 = getelementptr { i64, [21 x i64] }, ptr %t646, i32 0, i32 1
  %t649 = getelementptr { %"compiler/source:Span", %"compiler/mir:Lvalue", %"compiler/mir:Lvalue", { i64, [4 x i64] } }, ptr %t648, i32 0, i32 1
  %t650 = load %"compiler/mir:Lvalue", ptr %t649
  store %"compiler/mir:Lvalue" %t650, ptr %l21
  %t652 = load ptr, ptr %l1, !tbaa !29
  %t654 = getelementptr { i64, [21 x i64] }, ptr %t652, i32 0, i32 1
  %t655 = getelementptr { %"compiler/source:Span", %"compiler/mir:Lvalue", %"compiler/mir:Lvalue", { i64, [4 x i64] } }, ptr %t654, i32 0, i32 2
  %t656 = load %"compiler/mir:Lvalue", ptr %t655
  store %"compiler/mir:Lvalue" %t656, ptr %l22
  %t658 = load ptr, ptr %l1, !tbaa !29
  %t660 = getelementptr { i64, [21 x i64] }, ptr %t658, i32 0, i32 1
  %t661 = getelementptr { %"compiler/source:Span", %"compiler/mir:Lvalue", %"compiler/mir:Lvalue", { i64, [4 x i64] } }, ptr %t660, i32 0, i32 3
  %t662 = load { i64, [4 x i64] }, ptr %t661
  store { i64, [4 x i64] } %t662, ptr %l23
  br label %bb154
bb153:
  br label %bb184
bb154:
  %t664 = load ptr, ptr %l0, !tbaa !29
  store ptr %t664, ptr %l272, !tbaa !29
  %t665 = load ptr, ptr %l0, !tbaa !29
  %t666 = load %"compiler/mir:Lvalue", ptr %l21
  %t669 = call i32 @compiler_2fmir_2ecompiler_2fmir_3averifier_2eplaceType(ptr %v0, ptr %v2, ptr %v3, ptr %t665, %"compiler/mir:Lvalue" %t666)
  store i32 %t669, ptr %l275
  br label %bb155
bb155:
  %t670 = load ptr, ptr %l272, !tbaa !29
  %t671 = load i32, ptr %l275, !tbaa !23
  %t672 = call i32 @compiler_2fmir_2ecompiler_2fmir_3averifier_2earrayOf(ptr %v0, ptr %v3, ptr %t670, i32 %t671)
  store i32 %t672, ptr %l276
  br label %bb156
bb156:
  %t673 = load i32, ptr %l276, !tbaa !23
  store i32 %t673, ptr %l24, !tbaa !23
  %t674 = load ptr, ptr %l0, !tbaa !29
  store ptr %t674, ptr %l277, !tbaa !29
  %t675 = load ptr, ptr %l0, !tbaa !29
  %t676 = load %"compiler/mir:Lvalue", ptr %l22
  %t679 = call i32 @compiler_2fmir_2ecompiler_2fmir_3averifier_2eplaceType(ptr %v0, ptr %v2, ptr %v3, ptr %t675, %"compiler/mir:Lvalue" %t676)
  store i32 %t679, ptr %l280
  br label %bb157
bb157:
  %t680 = load ptr, ptr %l277, !tbaa !29
  %t681 = load i32, ptr %l280, !tbaa !23
  %t682 = call i32 @compiler_2fmir_2ecompiler_2fmir_3averifier_2earrayOf(ptr %v0, ptr %v3, ptr %t680, i32 %t681)
  store i32 %t682, ptr %l281
  br label %bb158
bb158:
  %t683 = load i32, ptr %l281, !tbaa !23
  store i32 %t683, ptr %l25, !tbaa !23
  %t684 = load i32, ptr %l24, !tbaa !23
  %t685 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t688 = icmp eq i32 %t684, %t685
  br i1 %t688, label %bb159, label %bb160
bb159:
  store i1 true, ptr %l285, !tbaa !21
  br label %bb161
bb160:
  %t690 = load i32, ptr %l25, !tbaa !23
  %t691 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t694 = icmp eq i32 %t690, %t691
  store i1 %t694, ptr %l285, !tbaa !21
  br label %bb161
bb161:
  %t696 = load i1, ptr %l285, !tbaa !21
  br i1 %t696, label %bb162, label %bb163
bb162:
  store %olang.scope zeroinitializer, ptr %s27
  %t697 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2fmir_2ecompiler_2fmir_3averifier_2ebad(ptr %v0, ptr %s27, ptr %t697, { i64, ptr } { i64 55, ptr getelementptr inbounds (<{ i64, [55 x i8] }>, ptr @.d127, i32 0, i32 1) })
  br label %bb164
bb163:
  %t699 = load ptr, ptr %l2, !tbaa !29
  store ptr %t699, ptr %l290, !tbaa !29
  %t700 = load ptr, ptr %l2, !tbaa !29
  store ptr %t700, ptr %l291, !tbaa !29
  %t701 = load ptr, ptr %l2, !tbaa !29
  store ptr %t701, ptr %l292, !tbaa !29
  %t702 = load i32, ptr %l24, !tbaa !23
  %t703 = load ptr, ptr %l292, !tbaa !29
  %t704 = call ptr @__olang_scope_or(ptr %v3, ptr %t703)
  %t705 = ptrtoint ptr %t704 to i64
  %t707 = inttoptr i64 %t705 to ptr
  %t708 = load ptr, ptr %l292, !tbaa !29
  %t710 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eElem(ptr %t707, ptr %t708, i32 %t702)
  store i32 %t710, ptr %l295
  br label %bb165
bb164:
  call void @__olang_scope_close(ptr %s27)
  br label %bb176
bb165:
  %t711 = load ptr, ptr %l291, !tbaa !29
  %t712 = call ptr @__olang_scope_or(ptr %v3, ptr %t711)
  %t713 = ptrtoint ptr %t712 to i64
  %t715 = inttoptr i64 %t713 to ptr
  %t716 = load ptr, ptr %l291, !tbaa !29
  %t717 = load i32, ptr %l295, !tbaa !23
  %t718 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %t715, ptr %t716, i32 %t717)
  store i32 %t718, ptr %l297
  br label %bb166
bb166:
  %t719 = load ptr, ptr %l2, !tbaa !29
  store ptr %t719, ptr %l298, !tbaa !29
  %t720 = load ptr, ptr %l2, !tbaa !29
  store ptr %t720, ptr %l299, !tbaa !29
  %t721 = load i32, ptr %l25, !tbaa !23
  %t722 = load ptr, ptr %l299, !tbaa !29
  %t723 = call ptr @__olang_scope_or(ptr %v3, ptr %t722)
  %t724 = ptrtoint ptr %t723 to i64
  %t726 = inttoptr i64 %t724 to ptr
  %t727 = load ptr, ptr %l299, !tbaa !29
  %t729 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eElem(ptr %t726, ptr %t727, i32 %t721)
  store i32 %t729, ptr %l302
  br label %bb167
bb167:
  %t730 = load ptr, ptr %l298, !tbaa !29
  %t731 = call ptr @__olang_scope_or(ptr %v3, ptr %t730)
  %t732 = ptrtoint ptr %t731 to i64
  %t734 = inttoptr i64 %t732 to ptr
  %t735 = load ptr, ptr %l298, !tbaa !29
  %t736 = load i32, ptr %l302, !tbaa !23
  %t737 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %t734, ptr %t735, i32 %t736)
  store i32 %t737, ptr %l304
  br label %bb168
bb168:
  %t738 = load ptr, ptr %l290, !tbaa !29
  %t739 = call ptr @__olang_scope_or(ptr %v3, ptr %t738)
  %t740 = ptrtoint ptr %t739 to i64
  %t742 = inttoptr i64 %t740 to ptr
  %t743 = load ptr, ptr %l290, !tbaa !29
  %t744 = load i32, ptr %l297, !tbaa !23
  %t745 = load i32, ptr %l304, !tbaa !23
  %t746 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eSame(ptr %t742, ptr %t743, i32 %t744, i32 %t745)
  store i1 %t746, ptr %l306
  br label %bb169
bb169:
  %t747 = load i1, ptr %l306, !tbaa !21
  %t748 = xor i1 %t747, true
  br i1 %t748, label %bb170, label %bb171
bb170:
  store %olang.scope zeroinitializer, ptr %s29
  %t750 = load ptr, ptr %l0, !tbaa !29
  store ptr %t750, ptr %l308, !tbaa !29
  %t751 = load ptr, ptr %l0, !tbaa !29
  %t752 = load i32, ptr %l25, !tbaa !23
  %t755 = call { i64, ptr } @compiler_2fmir_2ecompiler_2fmir_3averifier_2ecanon(ptr %v0, ptr %s29, ptr %v3, ptr %t751, i32 %t752)
  store { i64, ptr } %t755, ptr %l311
  br label %bb172
bb171:
  br label %bb175
bb172:
  %t756 = load ptr, ptr %l0, !tbaa !29
  %t757 = load i32, ptr %l24, !tbaa !23
  %t760 = call { i64, ptr } @compiler_2fmir_2ecompiler_2fmir_3averifier_2ecanon(ptr %v0, ptr %s29, ptr %v3, ptr %t756, i32 %t757)
  store { i64, ptr } %t760, ptr %l314
  br label %bb173
bb173:
  %t761 = extractvalue { i64, ptr } { i64 26, ptr getelementptr inbounds (<{ i64, [26 x i8] }>, ptr @.d128, i32 0, i32 1) }, 1
  %t762 = extractvalue { i64, ptr } { i64 26, ptr getelementptr inbounds (<{ i64, [26 x i8] }>, ptr @.d128, i32 0, i32 1) }, 0
  %t763 = load { i64, ptr }, ptr %l311, !tbaa !27
  %t764 = extractvalue { i64, ptr } %t763, 1
  %t765 = extractvalue { i64, ptr } %t763, 0
  %t766 = add i64 %t762, %t765
  %t767 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d129, i32 0, i32 1) }, 1
  %t768 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d129, i32 0, i32 1) }, 0
  %t769 = add i64 %t766, %t768
  %t770 = load { i64, ptr }, ptr %l314, !tbaa !27
  %t771 = extractvalue { i64, ptr } %t770, 1
  %t772 = extractvalue { i64, ptr } %t770, 0
  %t773 = add i64 %t769, %t772
  %t774 = call ptr @__olang_scope_alloc(ptr %s29, i64 %t773)
  call void @olang_textcopy(ptr %t774, ptr %t761, i64 %t762)
  %t775 = getelementptr i8, ptr %t774, i64 %t762
  call void @olang_textcopy(ptr %t775, ptr %t764, i64 %t765)
  %t776 = getelementptr i8, ptr %t775, i64 %t765
  call void @olang_textcopy(ptr %t776, ptr %t767, i64 %t768)
  %t777 = getelementptr i8, ptr %t776, i64 %t768
  call void @olang_textcopy(ptr %t777, ptr %t771, i64 %t772)
  %t778 = insertvalue { i64, ptr } undef, i64 %t773, 0
  %t779 = insertvalue { i64, ptr } %t778, ptr %t774, 1
  %t781 = extractvalue { i64, ptr } %t779, 0
  %t782 = extractvalue { i64, ptr } %t779, 1
  %t783 = mul i64 %t781, 1
  %t784 = call ptr @__olang_scope_alloc(ptr %s29, i64 %t783)
  call void @llvm.memcpy.p0.p0.i64(ptr %t784, ptr %t782, i64 %t783, i1 false)
  %t785 = insertvalue { i64, ptr } undef, i64 %t781, 0
  %t786 = insertvalue { i64, ptr } %t785, ptr %t784, 1
  %t787 = load ptr, ptr %l308, !tbaa !29
  call void @compiler_2fmir_2ecompiler_2fmir_3averifier_2ebad(ptr %v0, ptr %s29, ptr %t787, { i64, ptr } %t786)
  br label %bb174
bb174:
  call void @__olang_scope_close(ptr %s29)
  br label %bb175
bb175:
  br label %bb176
bb176:
  %t789 = load ptr, ptr %l2, !tbaa !29
  store ptr %t789, ptr %l317, !tbaa !29
  %t790 = load ptr, ptr %l2, !tbaa !29
  store ptr %t790, ptr %l318, !tbaa !29
  %t791 = load ptr, ptr %l0, !tbaa !29
  %t792 = load { i64, [4 x i64] }, ptr %l23
  %t795 = call i32 @compiler_2fmir_2ecompiler_2fmir_3averifier_2eoperandType(ptr %v0, ptr %v2, ptr %v3, ptr %t791, { i64, [4 x i64] } %t792)
  store i32 %t795, ptr %l321
  br label %bb177
bb177:
  %t796 = load ptr, ptr %l318, !tbaa !29
  %t797 = call ptr @__olang_scope_or(ptr %v3, ptr %t796)
  %t798 = ptrtoint ptr %t797 to i64
  %t800 = inttoptr i64 %t798 to ptr
  %t801 = load ptr, ptr %l318, !tbaa !29
  %t802 = load i32, ptr %l321, !tbaa !23
  %t803 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %t800, ptr %t801, i32 %t802)
  store i32 %t803, ptr %l323
  br label %bb178
bb178:
  %t804 = load ptr, ptr %l317, !tbaa !29
  %t805 = call ptr @__olang_scope_or(ptr %v3, ptr %t804)
  %t806 = ptrtoint ptr %t805 to i64
  %t808 = inttoptr i64 %t806 to ptr
  %t809 = load ptr, ptr %l317, !tbaa !29
  %t810 = load i32, ptr %l323, !tbaa !23
  %t811 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsInt(ptr %t808, ptr %t809, i32 %t810)
  store i1 %t811, ptr %l325
  br label %bb179
bb179:
  %t812 = load i1, ptr %l325, !tbaa !21
  %t813 = xor i1 %t812, true
  br i1 %t813, label %bb180, label %bb181
bb180:
  store %olang.scope zeroinitializer, ptr %s31
  %t815 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2fmir_2ecompiler_2fmir_3averifier_2ebad(ptr %v0, ptr %s31, ptr %t815, { i64, ptr } { i64 45, ptr getelementptr inbounds (<{ i64, [45 x i8] }>, ptr @.d130, i32 0, i32 1) })
  br label %bb182
bb181:
  br label %bb183
bb182:
  call void @__olang_scope_close(ptr %s31)
  br label %bb183
bb183:
  br label %bb228
bb184:
  %t817 = load ptr, ptr %l1, !tbaa !29
  store ptr %t817, ptr %l328, !tbaa !29
  store i1 false, ptr %l329, !tbaa !21
  %t818 = load ptr, ptr %l328, !tbaa !29
  %t819 = icmp ne ptr %t818, null
  br i1 %t819, label %bb185, label %bb186
bb185:
  %t821 = load ptr, ptr %l328, !tbaa !29
  %t822 = load i64, ptr %t821, !range !{i64 0, i64 16}
  %t824 = icmp eq i64 %t822, 10
  store i1 %t824, ptr %l329, !tbaa !21
  br label %bb186
bb186:
  %t825 = load i1, ptr %l329, !tbaa !21
  br i1 %t825, label %bb187, label %bb188
bb187:
  %t826 = load ptr, ptr %l1, !tbaa !29
  %t828 = getelementptr { i64, [21 x i64] }, ptr %t826, i32 0, i32 1
  %t829 = getelementptr { %"compiler/source:Span", i32, i32 }, ptr %t828, i32 0, i32 1
  %t830 = load i32, ptr %t829
  store i32 %t830, ptr %l26, !tbaa !23
  %t832 = load ptr, ptr %l1, !tbaa !29
  %t834 = getelementptr { i64, [21 x i64] }, ptr %t832, i32 0, i32 1
  %t835 = getelementptr { %"compiler/source:Span", i32, i32 }, ptr %t834, i32 0, i32 2
  %t836 = load i32, ptr %t835
  store i32 %t836, ptr %l27, !tbaa !23
  br label %bb189
bb188:
  br label %bb223
bb189:
  store %olang.scope zeroinitializer, ptr %s32
  %t838 = load ptr, ptr %l0, !tbaa !29
  %t840 = getelementptr %"compiler/mir:verifier", ptr %t838, i32 0, i32 0
  %t841 = load ptr, ptr %t840, !tbaa !29
  %t843 = getelementptr %"compiler/mir:Fn", ptr %t841, i32 0, i32 8
  store ptr %t843, ptr %l338, !tbaa !29
  %t844 = load i32, ptr %l26, !tbaa !23
  %t846 = sext i32 %t844 to i64
  %t847 = load ptr, ptr %l338, !tbaa !29
  %t848 = call ptr @__olang_scope_or(ptr %v2, ptr %t847)
  %t849 = ptrtoint ptr %t848 to i64
  %t851 = inttoptr i64 %t849 to ptr
  %t852 = load ptr, ptr %l338, !tbaa !29
  %t854 = call %"compiler/mir:ScopeInfo" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aScopeInfo_3e_2eAt_3ccompiler_2fmir_3aScopeInfo_3e(ptr %t851, ptr %t852, i64 %t846)
  store %"compiler/mir:ScopeInfo" %t854, ptr %l342
  br label %bb190
bb190:
  %t855 = getelementptr %"compiler/mir:ScopeInfo", ptr %l342, i32 0, i32 0
  %t856 = load i32, ptr %t855, !range !{i32 0, i32 7}
  %t858 = trunc i64 3 to i32
  %t859 = icmp eq i32 %t856, %t858
  %t861 = xor i1 %t859, true
  br i1 %t861, label %bb191, label %bb192
bb191:
  store %olang.scope zeroinitializer, ptr %s33
  %t863 = load ptr, ptr %l0, !tbaa !29
  %t864 = load i32, ptr %l26, !tbaa !23
  %t865 = extractvalue { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d131, i32 0, i32 1) }, 1
  %t866 = extractvalue { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d131, i32 0, i32 1) }, 0
  %t868 = sext i32 %t864 to i64
  %t869 = call i64 @__olang_fmt_i64(ptr null, i64 %t868)
  %t870 = add i64 %t866, %t869
  %t871 = extractvalue { i64, ptr } { i64 18, ptr getelementptr inbounds (<{ i64, [18 x i8] }>, ptr @.d132, i32 0, i32 1) }, 1
  %t872 = extractvalue { i64, ptr } { i64 18, ptr getelementptr inbounds (<{ i64, [18 x i8] }>, ptr @.d132, i32 0, i32 1) }, 0
  %t873 = add i64 %t870, %t872
  %t874 = call ptr @__olang_scope_alloc(ptr %s33, i64 %t873)
  call void @olang_textcopy(ptr %t874, ptr %t865, i64 %t866)
  %t875 = getelementptr i8, ptr %t874, i64 %t866
  %t876 = call i64 @__olang_fmt_i64(ptr %t875, i64 %t868)
  %t877 = getelementptr i8, ptr %t875, i64 %t869
  call void @olang_textcopy(ptr %t877, ptr %t871, i64 %t872)
  %t878 = insertvalue { i64, ptr } undef, i64 %t873, 0
  %t879 = insertvalue { i64, ptr } %t878, ptr %t874, 1
  %t881 = extractvalue { i64, ptr } %t879, 0
  %t882 = extractvalue { i64, ptr } %t879, 1
  %t883 = mul i64 %t881, 1
  %t884 = call ptr @__olang_scope_alloc(ptr %s33, i64 %t883)
  call void @llvm.memcpy.p0.p0.i64(ptr %t884, ptr %t882, i64 %t883, i1 false)
  %t885 = insertvalue { i64, ptr } undef, i64 %t881, 0
  %t886 = insertvalue { i64, ptr } %t885, ptr %t884, 1
  call void @compiler_2fmir_2ecompiler_2fmir_3averifier_2ebad(ptr %v0, ptr %s33, ptr %t863, { i64, ptr } %t886)
  br label %bb193
bb192:
  br label %bb194
bb193:
  call void @__olang_scope_close(ptr %s33)
  br label %bb194
bb194:
  %t889 = load ptr, ptr %l0, !tbaa !29
  %t891 = getelementptr %"compiler/mir:verifier", ptr %t889, i32 0, i32 0
  %t892 = load ptr, ptr %t891, !tbaa !29
  %t894 = getelementptr %"compiler/mir:Fn", ptr %t892, i32 0, i32 16
  store ptr %t894, ptr %l352, !tbaa !29
  %t895 = load i32, ptr %l27, !tbaa !23
  %t897 = sext i32 %t895 to i64
  %t898 = load ptr, ptr %l352, !tbaa !29
  %t899 = call ptr @__olang_scope_or(ptr %v2, ptr %t898)
  %t900 = ptrtoint ptr %t899 to i64
  %t902 = inttoptr i64 %t900 to ptr
  %t903 = load ptr, ptr %l352, !tbaa !29
  %t905 = call %"compiler/mir:Task" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aTask_3e_2eAt_3ccompiler_2fmir_3aTask_3e(ptr %t902, ptr %t903, i64 %t897)
  store %"compiler/mir:Task" %t905, ptr %l356
  br label %bb195
bb195:
  %t906 = load %"compiler/mir:Task", ptr %l356
  store %"compiler/mir:Task" %t906, ptr %l28
  %t907 = load ptr, ptr %l0, !tbaa !29
  %t908 = getelementptr %"compiler/mir:Task", ptr %l28, i32 0, i32 0
  %t909 = load { i64, [7 x i64] }, ptr %t908
  %t912 = call i32 @compiler_2fmir_2ecompiler_2fmir_3averifier_2ecalleeType(ptr %v0, ptr %v2, ptr %v3, ptr %t907, { i64, [7 x i64] } %t909)
  store i32 %t912, ptr %l359
  br label %bb196
bb196:
  %t913 = load i32, ptr %l359, !tbaa !23
  store i32 %t913, ptr %l29, !tbaa !23
  %t914 = load i32, ptr %l29, !tbaa !23
  %t915 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t918 = icmp ne i32 %t914, %t915
  br i1 %t918, label %bb197, label %bb198
bb197:
  store %olang.scope zeroinitializer, ptr %s35
  %t920 = load ptr, ptr %l0, !tbaa !29
  %t921 = getelementptr %"compiler/mir:Task", ptr %l28, i32 0, i32 0
  %t922 = load { i64, [7 x i64] }, ptr %t921
  %t923 = load i32, ptr %l29, !tbaa !23
  %t924 = getelementptr %"compiler/mir:Task", ptr %l28, i32 0, i32 1
  %t925 = load %"compiler/mir:Range", ptr %t924
  %t926 = getelementptr %"compiler/mir:Task", ptr %l28, i32 0, i32 2
  %t927 = load %"compiler/mir:Range", ptr %t926
  call void @compiler_2fmir_2ecompiler_2fmir_3averifier_2eargs(ptr %v0, ptr %v3, ptr %v2, ptr %t920, { i64, [7 x i64] } %t922, i32 %t923, %"compiler/mir:Range" %t925, %"compiler/mir:Range" %t927)
  br label %bb199
bb198:
  br label %bb222
bb199:
  %t933 = load ptr, ptr %l2, !tbaa !29
  store ptr %t933, ptr %l368, !tbaa !29
  %t934 = load ptr, ptr %l2, !tbaa !29
  store ptr %t934, ptr %l369, !tbaa !29
  %t935 = load ptr, ptr %l2, !tbaa !29
  store ptr %t935, ptr %l370, !tbaa !29
  %t936 = load i32, ptr %l29, !tbaa !23
  %t937 = load ptr, ptr %l370, !tbaa !29
  %t938 = call ptr @__olang_scope_or(ptr %v3, ptr %t937)
  %t939 = ptrtoint ptr %t938 to i64
  %t941 = inttoptr i64 %t939 to ptr
  %t942 = load ptr, ptr %l370, !tbaa !29
  %t944 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParams(ptr %t941, ptr %t942, i32 %t936)
  store i32 %t944, ptr %l373
  br label %bb200
bb200:
  %t945 = load ptr, ptr %l0, !tbaa !29
  %t946 = load i32, ptr %l29, !tbaa !23
  %t949 = call i32 @compiler_2fmir_2ecompiler_2fmir_3averifier_2eheld(ptr %v0, ptr %v3, ptr %t945, i32 %t946)
  store i32 %t949, ptr %l376
  br label %bb201
bb201:
  %t950 = load ptr, ptr %l2, !tbaa !29
  store ptr %t950, ptr %l377, !tbaa !29
  %t951 = load i32, ptr %l29, !tbaa !23
  %t952 = load ptr, ptr %l377, !tbaa !29
  %t953 = call ptr @__olang_scope_or(ptr %v3, ptr %t952)
  %t954 = ptrtoint ptr %t953 to i64
  %t956 = inttoptr i64 %t954 to ptr
  %t957 = load ptr, ptr %l377, !tbaa !29
  %t959 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrors(ptr %t956, ptr %t957, i32 %t951)
  store i32 %t959, ptr %l380
  br label %bb202
bb202:
  %t960 = load ptr, ptr %l369, !tbaa !29
  %t961 = call ptr @__olang_scope_or(ptr %v3, ptr %t960)
  %t962 = ptrtoint ptr %t961 to i64
  %t964 = inttoptr i64 %t962 to ptr
  %t965 = load ptr, ptr %l369, !tbaa !29
  %t966 = load i32, ptr %l373, !tbaa !23
  %t967 = load i32, ptr %l376, !tbaa !23
  %t968 = load i32, ptr %l380, !tbaa !23
  %t969 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eFunc(ptr %t964, ptr %t965, i32 %t966, i32 %t967, i32 %t968, i32 0, i64 0, i1 false, i32 0, i64 0)
  store i32 %t969, ptr %l382
  br label %bb203
bb203:
  %t970 = load ptr, ptr %l368, !tbaa !29
  %t971 = call ptr @__olang_scope_or(ptr %v3, ptr %t970)
  %t972 = ptrtoint ptr %t971 to i64
  %t974 = inttoptr i64 %t972 to ptr
  %t975 = load ptr, ptr %l368, !tbaa !29
  %t976 = load i32, ptr %l382, !tbaa !23
  %t977 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eResults(ptr %t974, ptr %s35, ptr %t975, i32 %t976)
  store { i64, ptr } %t977, ptr %l384
  br label %bb204
bb204:
  %t978 = load { i64, ptr }, ptr %l384, !tbaa !27
  store { i64, ptr } %t978, ptr %l30, !tbaa !27
  %t979 = getelementptr %"compiler/mir:Task", ptr %l28, i32 0, i32 3
  %t980 = getelementptr %"compiler/mir:Range", ptr %t979, i32 0, i32 1
  %t981 = load i32, ptr %t980, !tbaa !23
  %t983 = icmp sgt i32 %t981, 0
  br i1 %t983, label %bb205, label %bb206
bb205:
  %t985 = getelementptr %"compiler/mir:Task", ptr %l28, i32 0, i32 3
  %t986 = getelementptr %"compiler/mir:Range", ptr %t985, i32 0, i32 1
  %t987 = load i32, ptr %t986, !tbaa !23
  %t989 = sext i32 %t987 to i64
  %t990 = load { i64, ptr }, ptr %l30, !tbaa !27
  %t992 = extractvalue { i64, ptr } %t990, 0
  %t995 = icmp ne i64 %t989, %t992
  store i1 %t995, ptr %l387, !tbaa !21
  br label %bb207
bb206:
  store i1 false, ptr %l387, !tbaa !21
  br label %bb207
bb207:
  %t997 = load i1, ptr %l387, !tbaa !21
  br i1 %t997, label %bb208, label %bb209
bb208:
  store %olang.scope zeroinitializer, ptr %s36
  %t998 = load ptr, ptr %l0, !tbaa !29
  %t999 = getelementptr %"compiler/mir:Task", ptr %l28, i32 0, i32 3
  %t1000 = getelementptr %"compiler/mir:Range", ptr %t999, i32 0, i32 1
  %t1001 = load i32, ptr %t1000, !tbaa !23
  %t1002 = load { i64, ptr }, ptr %l30, !tbaa !27
  %t1004 = extractvalue { i64, ptr } %t1002, 0
  %t1005 = extractvalue { i64, ptr } { i64 12, ptr getelementptr inbounds (<{ i64, [12 x i8] }>, ptr @.d133, i32 0, i32 1) }, 1
  %t1006 = extractvalue { i64, ptr } { i64 12, ptr getelementptr inbounds (<{ i64, [12 x i8] }>, ptr @.d133, i32 0, i32 1) }, 0
  %t1008 = sext i32 %t1001 to i64
  %t1009 = call i64 @__olang_fmt_i64(ptr null, i64 %t1008)
  %t1010 = add i64 %t1006, %t1009
  %t1011 = extractvalue { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d134, i32 0, i32 1) }, 1
  %t1012 = extractvalue { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d134, i32 0, i32 1) }, 0
  %t1013 = add i64 %t1010, %t1012
  %t1015 = call i64 @__olang_fmt_i64(ptr null, i64 %t1004)
  %t1016 = add i64 %t1013, %t1015
  %t1017 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d135, i32 0, i32 1) }, 1
  %t1018 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d135, i32 0, i32 1) }, 0
  %t1019 = add i64 %t1016, %t1018
  %t1020 = call ptr @__olang_scope_alloc(ptr %s36, i64 %t1019)
  call void @olang_textcopy(ptr %t1020, ptr %t1005, i64 %t1006)
  %t1021 = getelementptr i8, ptr %t1020, i64 %t1006
  %t1022 = call i64 @__olang_fmt_i64(ptr %t1021, i64 %t1008)
  %t1023 = getelementptr i8, ptr %t1021, i64 %t1009
  call void @olang_textcopy(ptr %t1023, ptr %t1011, i64 %t1012)
  %t1024 = getelementptr i8, ptr %t1023, i64 %t1012
  %t1025 = call i64 @__olang_fmt_i64(ptr %t1024, i64 %t1004)
  %t1026 = getelementptr i8, ptr %t1024, i64 %t1015
  call void @olang_textcopy(ptr %t1026, ptr %t1017, i64 %t1018)
  %t1027 = insertvalue { i64, ptr } undef, i64 %t1019, 0
  %t1028 = insertvalue { i64, ptr } %t1027, ptr %t1020, 1
  %t1030 = extractvalue { i64, ptr } %t1028, 0
  %t1031 = extractvalue { i64, ptr } %t1028, 1
  %t1032 = mul i64 %t1030, 1
  %t1033 = call ptr @__olang_scope_alloc(ptr %s36, i64 %t1032)
  call void @llvm.memcpy.p0.p0.i64(ptr %t1033, ptr %t1031, i64 %t1032, i1 false)
  %t1034 = insertvalue { i64, ptr } undef, i64 %t1030, 0
  %t1035 = insertvalue { i64, ptr } %t1034, ptr %t1033, 1
  call void @compiler_2fmir_2ecompiler_2fmir_3averifier_2ebad(ptr %v0, ptr %s36, ptr %t998, { i64, ptr } %t1035)
  br label %bb210
bb209:
  %t1038 = load ptr, ptr %l0, !tbaa !29
  %t1039 = load { i64, ptr }, ptr %l30, !tbaa !27
  call void @compiler_2fmir_2ecompiler_2fmir_3averifier_2etaskTargets(ptr %v0, ptr %s32, ptr %s35, ptr %v2, ptr %v3, ptr %t1038, ptr %l28, { i64, ptr } %t1039)
  br label %bb211
bb210:
  call void @__olang_scope_close(ptr %s36)
  br label %bb212
bb211:
  br label %bb212
bb212:
  %t1043 = getelementptr %"compiler/mir:Task", ptr %l28, i32 0, i32 4
  %t1044 = getelementptr %"compiler/mir:Range", ptr %t1043, i32 0, i32 1
  %t1045 = load i32, ptr %t1044, !tbaa !23
  %t1047 = icmp sgt i32 %t1045, 0
  br i1 %t1047, label %bb213, label %bb214
bb213:
  %t1049 = load ptr, ptr %l2, !tbaa !29
  store ptr %t1049, ptr %l405, !tbaa !29
  %t1050 = load ptr, ptr %l2, !tbaa !29
  store ptr %t1050, ptr %l406, !tbaa !29
  %t1051 = load i32, ptr %l29, !tbaa !23
  %t1052 = load ptr, ptr %l406, !tbaa !29
  %t1053 = call ptr @__olang_scope_or(ptr %v3, ptr %t1052)
  %t1054 = ptrtoint ptr %t1053 to i64
  %t1056 = inttoptr i64 %t1054 to ptr
  %t1057 = load ptr, ptr %l406, !tbaa !29
  %t1059 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrors(ptr %t1056, ptr %t1057, i32 %t1051)
  store i32 %t1059, ptr %l409
  br label %bb215
bb214:
  store i1 false, ptr %l404, !tbaa !21
  br label %bb217
bb215:
  %t1060 = load ptr, ptr %l405, !tbaa !29
  %t1061 = call ptr @__olang_scope_or(ptr %v3, ptr %t1060)
  %t1062 = ptrtoint ptr %t1061 to i64
  %t1064 = inttoptr i64 %t1062 to ptr
  %t1065 = load ptr, ptr %l405, !tbaa !29
  %t1066 = load i32, ptr %l409, !tbaa !23
  %t1067 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %t1064, ptr %s35, ptr %t1065, i32 %t1066)
  store { i64, ptr } %t1067, ptr %l411
  br label %bb216
bb216:
  %t1068 = load { i64, ptr }, ptr %l411, !tbaa !27
  %t1069 = extractvalue { i64, ptr } %t1068, 0
  %t1071 = icmp eq i64 %t1069, 0
  store i1 %t1071, ptr %l404, !tbaa !21
  br label %bb217
bb217:
  %t1073 = load i1, ptr %l404, !tbaa !21
  br i1 %t1073, label %bb218, label %bb219
bb218:
  store %olang.scope zeroinitializer, ptr %s39
  %t1074 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2fmir_2ecompiler_2fmir_3averifier_2ebad(ptr %v0, ptr %s39, ptr %t1074, { i64, ptr } { i64 44, ptr getelementptr inbounds (<{ i64, [44 x i8] }>, ptr @.d136, i32 0, i32 1) })
  br label %bb220
bb219:
  br label %bb221
bb220:
  call void @__olang_scope_close(ptr %s39)
  br label %bb221
bb221:
  call void @__olang_scope_close(ptr %s35)
  br label %bb222
bb222:
  call void @__olang_scope_close(ptr %s32)
  br label %bb228
bb223:
  br i1 true, label %bb224, label %bb225
bb224:
  br label %bb226
bb225:
  br label %bb227
bb226:
  br label %bb228
bb227:
  call void @__olang_check_failed(ptr @olang_loc_c13ff54b5c1d3c1e_cc5c8d48f26f2b22)
  unreachable
bb228:
  br label %ret
ret:
  ret void
}

define dso_local { i64, ptr } @compiler_2fmir_2ecompiler_2fmir_3averifier_2esuccs(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, [8 x i64] } %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca { i64, [8 x i64] }
  %l2 = alloca ptr
  %l3 = alloca i32
  %l4 = alloca i32
  %l5 = alloca i32
  %l6 = alloca %"compiler/mir:Range"
  %l7 = alloca i32
  %l8 = alloca i32
  %l9 = alloca i32
  %l10 = alloca i32
  %l11 = alloca i32
  %l12 = alloca i32
  %l15 = alloca { i64, ptr }
  %l20 = alloca { i64, ptr }
  %l27 = alloca { i64, ptr }
  %l35 = alloca { i64, ptr }
  %l40 = alloca ptr
  %l44 = alloca %"compiler/mir:Call"
  %l48 = alloca { i64, ptr }
  %l50 = alloca ptr
  %l54 = alloca %"compiler/mir:Call"
  %l56 = alloca { i64, ptr }
  %l58 = alloca ptr
  %l62 = alloca %"compiler/mir:Call"
  %l63 = alloca i32
  %l65 = alloca ptr
  %l69 = alloca %"compiler/mir:Call"
  %l71 = alloca { i64, ptr }
  %l79 = alloca { i64, ptr }
  %l81 = alloca { i64, ptr }
  %l84 = alloca { i64, ptr }
  %l91 = alloca { i64, ptr }
  %l93 = alloca i64
  %l94 = alloca { i64, ptr }
  %rv = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  store { i64, [8 x i64] } %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/mir:verifier", ptr %t1, i32 0, i32 0
  %t4 = load ptr, ptr %t3, !tbaa !29
  store ptr %t4, ptr %l2, !tbaa !29
  %t6 = load { i64, [8 x i64] }, ptr %l1
  %t8 = extractvalue { i64, [8 x i64] } %t6, 0
  %t9 = icmp eq i64 %t8, 1
  br i1 %t9, label %bb1, label %bb2
bb1:
  %t11 = getelementptr { i64, [8 x i64] }, ptr %l1, i32 0, i32 1
  %t12 = getelementptr { i32 }, ptr %t11, i32 0, i32 0
  %t13 = load i32, ptr %t12
  store i32 %t13, ptr %l3, !tbaa !23
  br label %bb3
bb2:
  br label %bb4
bb3:
  %t15 = load i32, ptr %l3, !tbaa !23
  %t16 = mul i64 1, 4
  %t17 = call ptr @__olang_scope_alloc_zeroed(ptr %v1, i64 %t16)
  %t18 = insertvalue { i64, ptr } undef, i64 1, 0
  %t19 = insertvalue { i64, ptr } %t18, ptr %t17, 1
  store { i64, ptr } %t19, ptr %l20, !tbaa !27
  %t21 = getelementptr { i64, ptr }, ptr %l20, i32 0, i32 1
  %t22 = load ptr, ptr %t21, !tbaa !27
  %t23 = getelementptr i32, ptr %t22, i64 0
  store i32 %t15, ptr %t23, !tbaa !33
  %t24 = load { i64, ptr }, ptr %l20, !tbaa !27
  store { i64, ptr } %t24, ptr %l15, !tbaa !27
  br label %bb40
bb4:
  %t25 = load { i64, [8 x i64] }, ptr %l1
  %t27 = extractvalue { i64, [8 x i64] } %t25, 0
  %t28 = icmp eq i64 %t27, 2
  br i1 %t28, label %bb5, label %bb6
bb5:
  %t30 = getelementptr { i64, [8 x i64] }, ptr %l1, i32 0, i32 1
  %t31 = getelementptr { { i64, [4 x i64] }, i32, i32 }, ptr %t30, i32 0, i32 1
  %t32 = load i32, ptr %t31
  store i32 %t32, ptr %l4, !tbaa !23
  %t34 = getelementptr { i64, [8 x i64] }, ptr %l1, i32 0, i32 1
  %t35 = getelementptr { { i64, [4 x i64] }, i32, i32 }, ptr %t34, i32 0, i32 2
  %t36 = load i32, ptr %t35
  store i32 %t36, ptr %l5, !tbaa !23
  br label %bb7
bb6:
  br label %bb8
bb7:
  %t38 = load i32, ptr %l4, !tbaa !23
  %t39 = load i32, ptr %l5, !tbaa !23
  %t40 = mul i64 2, 4
  %t41 = call ptr @__olang_scope_alloc_zeroed(ptr %v1, i64 %t40)
  %t42 = insertvalue { i64, ptr } undef, i64 2, 0
  %t43 = insertvalue { i64, ptr } %t42, ptr %t41, 1
  store { i64, ptr } %t43, ptr %l27, !tbaa !27
  %t45 = getelementptr { i64, ptr }, ptr %l27, i32 0, i32 1
  %t46 = load ptr, ptr %t45, !tbaa !27
  %t47 = getelementptr i32, ptr %t46, i64 0
  store i32 %t38, ptr %t47, !tbaa !33
  %t49 = getelementptr { i64, ptr }, ptr %l27, i32 0, i32 1
  %t50 = load ptr, ptr %t49, !tbaa !27
  %t51 = getelementptr i32, ptr %t50, i64 1
  store i32 %t39, ptr %t51, !tbaa !33
  %t52 = load { i64, ptr }, ptr %l27, !tbaa !27
  store { i64, ptr } %t52, ptr %l15, !tbaa !27
  br label %bb40
bb8:
  %t53 = load { i64, [8 x i64] }, ptr %l1
  %t55 = extractvalue { i64, [8 x i64] } %t53, 0
  %t56 = icmp eq i64 %t55, 3
  br i1 %t56, label %bb9, label %bb10
bb9:
  %t58 = getelementptr { i64, [8 x i64] }, ptr %l1, i32 0, i32 1
  %t59 = getelementptr { { i64, [4 x i64] }, %"compiler/mir:Range", i32 }, ptr %t58, i32 0, i32 1
  %t60 = load %"compiler/mir:Range", ptr %t59
  store %"compiler/mir:Range" %t60, ptr %l6
  %t62 = getelementptr { i64, [8 x i64] }, ptr %l1, i32 0, i32 1
  %t63 = getelementptr { { i64, [4 x i64] }, %"compiler/mir:Range", i32 }, ptr %t62, i32 0, i32 2
  %t64 = load i32, ptr %t63
  store i32 %t64, ptr %l7, !tbaa !23
  br label %bb11
bb10:
  br label %bb13
bb11:
  %t66 = load ptr, ptr %l0, !tbaa !29
  %t67 = load %"compiler/mir:Range", ptr %l6
  %t68 = load i32, ptr %l7, !tbaa !23
  %t72 = call { i64, ptr } @compiler_2fmir_2ecompiler_2fmir_3averifier_2eswitchSuccs(ptr %v0, ptr %v1, ptr %v2, ptr %t66, %"compiler/mir:Range" %t67, i32 %t68)
  store { i64, ptr } %t72, ptr %l35
  br label %bb12
bb12:
  %t73 = load { i64, ptr }, ptr %l35, !tbaa !27
  store { i64, ptr } %t73, ptr %l15, !tbaa !27
  br label %bb40
bb13:
  %t74 = load { i64, [8 x i64] }, ptr %l1
  %t76 = extractvalue { i64, [8 x i64] } %t74, 0
  %t77 = icmp eq i64 %t76, 4
  br i1 %t77, label %bb14, label %bb15
bb14:
  %t79 = getelementptr { i64, [8 x i64] }, ptr %l1, i32 0, i32 1
  %t80 = getelementptr { %"compiler/source:Span", i32 }, ptr %t79, i32 0, i32 1
  %t81 = load i32, ptr %t80
  store i32 %t81, ptr %l8, !tbaa !23
  br label %bb16
bb15:
  br label %bb24
bb16:
  %t83 = load ptr, ptr %l2, !tbaa !29
  %t85 = getelementptr %"compiler/mir:Fn", ptr %t83, i32 0, i32 14
  store ptr %t85, ptr %l40, !tbaa !29
  %t86 = load i32, ptr %l8, !tbaa !23
  %t88 = sext i32 %t86 to i64
  %t89 = load ptr, ptr %l40, !tbaa !29
  %t90 = call ptr @__olang_scope_or(ptr %v2, ptr %t89)
  %t91 = ptrtoint ptr %t90 to i64
  %t93 = inttoptr i64 %t91 to ptr
  %t94 = load ptr, ptr %l40, !tbaa !29
  %t96 = call %"compiler/mir:Call" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aCall_3e_2eAt_3ccompiler_2fmir_3aCall_3e(ptr %t93, ptr %t94, i64 %t88)
  store %"compiler/mir:Call" %t96, ptr %l44
  br label %bb17
bb17:
  %t97 = getelementptr %"compiler/mir:Call", ptr %l44, i32 0, i32 7
  %t98 = load i32, ptr %t97, !tbaa !23
  %t99 = load i32, ptr @G_2ecompiler_2fmir_2eNoBlock, !tbaa !23
  %t102 = icmp eq i32 %t98, %t99
  br i1 %t102, label %bb18, label %bb19
bb18:
  %t104 = load ptr, ptr %l2, !tbaa !29
  %t106 = getelementptr %"compiler/mir:Fn", ptr %t104, i32 0, i32 14
  store ptr %t106, ptr %l50, !tbaa !29
  %t107 = load i32, ptr %l8, !tbaa !23
  %t109 = sext i32 %t107 to i64
  %t110 = load ptr, ptr %l50, !tbaa !29
  %t111 = call ptr @__olang_scope_or(ptr %v2, ptr %t110)
  %t112 = ptrtoint ptr %t111 to i64
  %t114 = inttoptr i64 %t112 to ptr
  %t115 = load ptr, ptr %l50, !tbaa !29
  %t117 = call %"compiler/mir:Call" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aCall_3e_2eAt_3ccompiler_2fmir_3aCall_3e(ptr %t114, ptr %t115, i64 %t109)
  store %"compiler/mir:Call" %t117, ptr %l54
  br label %bb20
bb19:
  %t118 = load ptr, ptr %l2, !tbaa !29
  %t120 = getelementptr %"compiler/mir:Fn", ptr %t118, i32 0, i32 14
  store ptr %t120, ptr %l58, !tbaa !29
  %t121 = load i32, ptr %l8, !tbaa !23
  %t123 = sext i32 %t121 to i64
  %t124 = load ptr, ptr %l58, !tbaa !29
  %t125 = call ptr @__olang_scope_or(ptr %v2, ptr %t124)
  %t126 = ptrtoint ptr %t125 to i64
  %t128 = inttoptr i64 %t126 to ptr
  %t129 = load ptr, ptr %l58, !tbaa !29
  %t131 = call %"compiler/mir:Call" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aCall_3e_2eAt_3ccompiler_2fmir_3aCall_3e(ptr %t128, ptr %t129, i64 %t123)
  store %"compiler/mir:Call" %t131, ptr %l62
  br label %bb21
bb20:
  %t132 = getelementptr %"compiler/mir:Call", ptr %l54, i32 0, i32 5
  %t133 = load i32, ptr %t132, !tbaa !23
  %t134 = mul i64 1, 4
  %t135 = call ptr @__olang_scope_alloc_zeroed(ptr %v1, i64 %t134)
  %t136 = insertvalue { i64, ptr } undef, i64 1, 0
  %t137 = insertvalue { i64, ptr } %t136, ptr %t135, 1
  store { i64, ptr } %t137, ptr %l56, !tbaa !27
  %t139 = getelementptr { i64, ptr }, ptr %l56, i32 0, i32 1
  %t140 = load ptr, ptr %t139, !tbaa !27
  %t141 = getelementptr i32, ptr %t140, i64 0
  store i32 %t133, ptr %t141, !tbaa !33
  %t142 = load { i64, ptr }, ptr %l56, !tbaa !27
  store { i64, ptr } %t142, ptr %l48, !tbaa !27
  br label %bb23
bb21:
  %t143 = getelementptr %"compiler/mir:Call", ptr %l62, i32 0, i32 5
  %t144 = load i32, ptr %t143, !tbaa !23
  store i32 %t144, ptr %l63, !tbaa !23
  %t145 = load ptr, ptr %l2, !tbaa !29
  %t147 = getelementptr %"compiler/mir:Fn", ptr %t145, i32 0, i32 14
  store ptr %t147, ptr %l65, !tbaa !29
  %t148 = load i32, ptr %l8, !tbaa !23
  %t150 = sext i32 %t148 to i64
  %t151 = load ptr, ptr %l65, !tbaa !29
  %t152 = call ptr @__olang_scope_or(ptr %v2, ptr %t151)
  %t153 = ptrtoint ptr %t152 to i64
  %t155 = inttoptr i64 %t153 to ptr
  %t156 = load ptr, ptr %l65, !tbaa !29
  %t158 = call %"compiler/mir:Call" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aCall_3e_2eAt_3ccompiler_2fmir_3aCall_3e(ptr %t155, ptr %t156, i64 %t150)
  store %"compiler/mir:Call" %t158, ptr %l69
  br label %bb22
bb22:
  %t159 = getelementptr %"compiler/mir:Call", ptr %l69, i32 0, i32 7
  %t160 = load i32, ptr %t159, !tbaa !23
  %t161 = mul i64 2, 4
  %t162 = call ptr @__olang_scope_alloc_zeroed(ptr %v1, i64 %t161)
  %t163 = insertvalue { i64, ptr } undef, i64 2, 0
  %t164 = insertvalue { i64, ptr } %t163, ptr %t162, 1
  store { i64, ptr } %t164, ptr %l71, !tbaa !27
  %t165 = load i32, ptr %l63, !tbaa !23
  %t166 = getelementptr { i64, ptr }, ptr %l71, i32 0, i32 1
  %t167 = load ptr, ptr %t166, !tbaa !27
  %t168 = getelementptr i32, ptr %t167, i64 0
  store i32 %t165, ptr %t168, !tbaa !33
  %t170 = getelementptr { i64, ptr }, ptr %l71, i32 0, i32 1
  %t171 = load ptr, ptr %t170, !tbaa !27
  %t172 = getelementptr i32, ptr %t171, i64 1
  store i32 %t160, ptr %t172, !tbaa !33
  %t173 = load { i64, ptr }, ptr %l71, !tbaa !27
  store { i64, ptr } %t173, ptr %l48, !tbaa !27
  br label %bb23
bb23:
  %t174 = load { i64, ptr }, ptr %l48, !tbaa !27
  store { i64, ptr } %t174, ptr %l15, !tbaa !27
  br label %bb40
bb24:
  %t175 = load { i64, [8 x i64] }, ptr %l1
  %t177 = extractvalue { i64, [8 x i64] } %t175, 0
  %t178 = icmp eq i64 %t177, 8
  br i1 %t178, label %bb25, label %bb26
bb25:
  %t180 = getelementptr { i64, [8 x i64] }, ptr %l1, i32 0, i32 1
  %t181 = getelementptr { %"compiler/source:Span", i32, i32, i32, i32 }, ptr %t180, i32 0, i32 2
  %t182 = load i32, ptr %t181
  store i32 %t182, ptr %l9, !tbaa !23
  %t184 = getelementptr { i64, [8 x i64] }, ptr %l1, i32 0, i32 1
  %t185 = getelementptr { %"compiler/source:Span", i32, i32, i32, i32 }, ptr %t184, i32 0, i32 4
  %t186 = load i32, ptr %t185
  store i32 %t186, ptr %l10, !tbaa !23
  br label %bb27
bb26:
  br label %bb31
bb27:
  %t188 = load i32, ptr %l10, !tbaa !23
  %t189 = load i32, ptr @G_2ecompiler_2fmir_2eNoBlock, !tbaa !23
  %t192 = icmp eq i32 %t188, %t189
  br i1 %t192, label %bb28, label %bb29
bb28:
  %t194 = load i32, ptr %l9, !tbaa !23
  %t195 = mul i64 1, 4
  %t196 = call ptr @__olang_scope_alloc_zeroed(ptr %v1, i64 %t195)
  %t197 = insertvalue { i64, ptr } undef, i64 1, 0
  %t198 = insertvalue { i64, ptr } %t197, ptr %t196, 1
  store { i64, ptr } %t198, ptr %l81, !tbaa !27
  %t200 = getelementptr { i64, ptr }, ptr %l81, i32 0, i32 1
  %t201 = load ptr, ptr %t200, !tbaa !27
  %t202 = getelementptr i32, ptr %t201, i64 0
  store i32 %t194, ptr %t202, !tbaa !33
  %t203 = load { i64, ptr }, ptr %l81, !tbaa !27
  store { i64, ptr } %t203, ptr %l79, !tbaa !27
  br label %bb30
bb29:
  %t204 = load i32, ptr %l9, !tbaa !23
  %t205 = load i32, ptr %l10, !tbaa !23
  %t206 = mul i64 2, 4
  %t207 = call ptr @__olang_scope_alloc_zeroed(ptr %v1, i64 %t206)
  %t208 = insertvalue { i64, ptr } undef, i64 2, 0
  %t209 = insertvalue { i64, ptr } %t208, ptr %t207, 1
  store { i64, ptr } %t209, ptr %l84, !tbaa !27
  %t211 = getelementptr { i64, ptr }, ptr %l84, i32 0, i32 1
  %t212 = load ptr, ptr %t211, !tbaa !27
  %t213 = getelementptr i32, ptr %t212, i64 0
  store i32 %t204, ptr %t213, !tbaa !33
  %t215 = getelementptr { i64, ptr }, ptr %l84, i32 0, i32 1
  %t216 = load ptr, ptr %t215, !tbaa !27
  %t217 = getelementptr i32, ptr %t216, i64 1
  store i32 %t205, ptr %t217, !tbaa !33
  %t218 = load { i64, ptr }, ptr %l84, !tbaa !27
  store { i64, ptr } %t218, ptr %l79, !tbaa !27
  br label %bb30
bb30:
  %t219 = load { i64, ptr }, ptr %l79, !tbaa !27
  store { i64, ptr } %t219, ptr %l15, !tbaa !27
  br label %bb40
bb31:
  %t220 = load { i64, [8 x i64] }, ptr %l1
  %t222 = extractvalue { i64, [8 x i64] } %t220, 0
  %t223 = icmp eq i64 %t222, 11
  br i1 %t223, label %bb32, label %bb33
bb32:
  %t225 = getelementptr { i64, [8 x i64] }, ptr %l1, i32 0, i32 1
  %t226 = getelementptr { %"compiler/source:Span", { i64, [4 x i64] }, i32, %"compiler/mir:Range", i32 }, ptr %t225, i32 0, i32 2
  %t227 = load i32, ptr %t226
  store i32 %t227, ptr %l11, !tbaa !23
  %t229 = getelementptr { i64, [8 x i64] }, ptr %l1, i32 0, i32 1
  %t230 = getelementptr { %"compiler/source:Span", { i64, [4 x i64] }, i32, %"compiler/mir:Range", i32 }, ptr %t229, i32 0, i32 4
  %t231 = load i32, ptr %t230
  store i32 %t231, ptr %l12, !tbaa !23
  br label %bb34
bb33:
  br label %bb35
bb34:
  %t233 = load i32, ptr %l11, !tbaa !23
  %t234 = load i32, ptr %l12, !tbaa !23
  %t235 = mul i64 2, 4
  %t236 = call ptr @__olang_scope_alloc_zeroed(ptr %v1, i64 %t235)
  %t237 = insertvalue { i64, ptr } undef, i64 2, 0
  %t238 = insertvalue { i64, ptr } %t237, ptr %t236, 1
  store { i64, ptr } %t238, ptr %l91, !tbaa !27
  %t240 = getelementptr { i64, ptr }, ptr %l91, i32 0, i32 1
  %t241 = load ptr, ptr %t240, !tbaa !27
  %t242 = getelementptr i32, ptr %t241, i64 0
  store i32 %t233, ptr %t242, !tbaa !33
  %t244 = getelementptr { i64, ptr }, ptr %l91, i32 0, i32 1
  %t245 = load ptr, ptr %t244, !tbaa !27
  %t246 = getelementptr i32, ptr %t245, i64 1
  store i32 %t234, ptr %t246, !tbaa !33
  %t247 = load { i64, ptr }, ptr %l91, !tbaa !27
  store { i64, ptr } %t247, ptr %l15, !tbaa !27
  br label %bb40
bb35:
  br i1 true, label %bb36, label %bb37
bb36:
  br label %bb38
bb37:
  br label %bb39
bb38:
  %t248 = mul i64 0, 4
  %t249 = insertvalue { i64, ptr } undef, i64 0, 0
  %t250 = insertvalue { i64, ptr } %t249, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  store { i64, ptr } %t250, ptr %l15, !tbaa !27
  br label %bb40
bb39:
  call void @__olang_check_failed(ptr @olang_loc_49b1b3021a029ae3_d2d6f71dc554b2d7)
  unreachable
bb40:
  %t252 = load { i64, ptr }, ptr %l15, !tbaa !27
  %t253 = extractvalue { i64, ptr } %t252, 0
  store i64 %t253, ptr %l93, !tbaa !24
  %t254 = load i64, ptr %l93, !tbaa !24
  %t255 = mul i64 %t254, 4
  %t256 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t255)
  %t257 = insertvalue { i64, ptr } undef, i64 %t254, 0
  %t258 = insertvalue { i64, ptr } %t257, ptr %t256, 1
  store { i64, ptr } %t258, ptr %l94, !tbaa !27
  %t259 = getelementptr { i64, ptr }, ptr %l94, i32 0, i32 1
  %t260 = load ptr, ptr %t259, !tbaa !27
  %t261 = getelementptr { i64, ptr }, ptr %l15, i32 0, i32 1
  %t262 = load ptr, ptr %t261, !tbaa !27
  %t263 = load i64, ptr %l93, !tbaa !24
  %t264 = mul i64 %t263, 4
  call void @llvm.memmove.p0.p0.i64(ptr %t260, ptr %t262, i64 %t264, i1 false)
  %t265 = load { i64, ptr }, ptr %l94, !tbaa !27
  store { i64, ptr } %t265, ptr %l15, !tbaa !27
  %t266 = load { i64, ptr }, ptr %l15, !tbaa !27
  store { i64, ptr } %t266, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local { i64, ptr } @compiler_2fmir_2ecompiler_2fmir_3averifier_2eswitchSuccs(ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"compiler/mir:Range" %a1, i32 %a2) #0 {
entry:
  %l1 = alloca %"compiler/mir:Range"
  %lp3 = alloca ptr
  %l4 = alloca i32
  %l5 = alloca i32
  %l6 = alloca i32
  %l7 = alloca i32
  %l8 = alloca i32
  %l9 = alloca i32
  %l12 = alloca i64
  %l20 = alloca i32
  %l23 = alloca i32
  %l41 = alloca i32
  %l44 = alloca ptr
  %l51 = alloca %"compiler/mir:Case"
  %rv = alloca { i64, ptr }
  store %"compiler/mir:Range" %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = getelementptr %"compiler/mir:Range", ptr %l1, i32 0, i32 1
  %t2 = load i32, ptr %t1, !tbaa !23
  %t4 = sext i32 %t2 to i64
  %t6 = add i64 %t4, 1
  store i64 %t6, ptr %l12, !tbaa !24
  %t7 = load i64, ptr %l12, !tbaa !24
  %t8 = icmp sge i64 %t7, 0
  br i1 %t8, label %bb1, label %bb2
bb1:
  %t10 = load i64, ptr %l12, !tbaa !24
  %t11 = icmp sle i64 %t10, 2305843009213693951
  br i1 %t11, label %bb3, label %bb4
bb2:
  call void @__olang_check_failed(ptr @olang_loc_4f65b4158cb36c84_7aab915b507980)
  unreachable
bb3:
  %t13 = load i64, ptr %l12, !tbaa !24
  %t14 = mul i64 %t13, 4
  %t15 = call ptr @__olang_scope_alloc_zeroed(ptr %v1, i64 %t14)
  %t16 = insertvalue { i64, ptr } undef, i64 %t13, 0
  %t17 = insertvalue { i64, ptr } %t16, ptr %t15, 1
  %t18 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 16, i64 8)
  store ptr %t18, ptr %lp3
  %t20 = load ptr, ptr %lp3
  store { i64, ptr } %t17, ptr %t20, !tbaa !27
  store i32 0, ptr %l4, !tbaa !23
  %t21 = getelementptr %"compiler/mir:Range", ptr %l1, i32 0, i32 1
  %t22 = load i32, ptr %t21, !tbaa !23
  store i32 %t22, ptr %l5, !tbaa !23
  store i32 1, ptr %l6, !tbaa !23
  %t24 = load i32, ptr %l5, !tbaa !23
  %t25 = load i32, ptr %l4, !tbaa !23
  %t28 = icmp sgt i32 %t24, %t25
  br i1 %t28, label %bb5, label %bb6
bb4:
  call void @__olang_check_failed(ptr @olang_loc_4f65b4158cb36c84_7aab915b507980)
  unreachable
bb5:
  %t30 = load i32, ptr %l6, !tbaa !23
  %t32 = icmp sgt i32 %t30, 0
  br i1 %t32, label %bb7, label %bb8
bb6:
  store i32 0, ptr %l20, !tbaa !23
  br label %bb10
bb7:
  %t34 = load i32, ptr %l5, !tbaa !23
  %t35 = load i32, ptr %l4, !tbaa !23
  %t38 = sub i32 %t34, %t35
  %t39 = load i32, ptr %l6, !tbaa !23
  %t42 = add i32 %t38, %t39
  %t44 = sub i32 %t42, 1
  %t45 = load i32, ptr %l6, !tbaa !23
  %t48 = sdiv i32 %t44, %t45
  store i32 %t48, ptr %l23, !tbaa !23
  br label %bb9
bb8:
  store i32 0, ptr %l23, !tbaa !23
  br label %bb9
bb9:
  %t50 = load i32, ptr %l23, !tbaa !23
  store i32 %t50, ptr %l20, !tbaa !23
  br label %bb10
bb10:
  %t51 = load i32, ptr %l20, !tbaa !23
  store i32 %t51, ptr %l7, !tbaa !23
  store i32 0, ptr %l8, !tbaa !23
  br label %bb11
bb11:
  %t52 = load i32, ptr %l8, !tbaa !23
  %t53 = load i32, ptr %l7, !tbaa !23
  %t56 = icmp slt i32 %t52, %t53
  %t58 = xor i1 %t56, true
  br i1 %t58, label %bb12, label %bb13
bb12:
  br label %bb17
bb13:
  br label %bb14
bb14:
  %t60 = load i32, ptr %l4, !tbaa !23
  %t61 = load i32, ptr %l8, !tbaa !23
  %t62 = load i32, ptr %l6, !tbaa !23
  %t65 = mul i32 %t61, %t62
  %t68 = add i32 %t60, %t65
  store i32 %t68, ptr %l9, !tbaa !23
  %t70 = load i32, ptr %l9, !tbaa !23
  store i32 %t70, ptr %l41, !tbaa !23
  %t73 = getelementptr %"compiler/mir:verifier", ptr %a0, i32 0, i32 0
  %t74 = load ptr, ptr %t73, !tbaa !29
  %t76 = getelementptr %"compiler/mir:Fn", ptr %t74, i32 0, i32 15
  store ptr %t76, ptr %l44, !tbaa !29
  %t77 = getelementptr %"compiler/mir:Range", ptr %l1, i32 0, i32 0
  %t78 = load i32, ptr %t77, !tbaa !23
  %t80 = sext i32 %t78 to i64
  %t81 = load i32, ptr %l9, !tbaa !23
  %t83 = sext i32 %t81 to i64
  %t86 = add i64 %t80, %t83
  %t87 = load ptr, ptr %l44, !tbaa !29
  %t88 = call ptr @__olang_scope_or(ptr %v2, ptr %t87)
  %t89 = ptrtoint ptr %t88 to i64
  %t91 = inttoptr i64 %t89 to ptr
  %t92 = load ptr, ptr %l44, !tbaa !29
  %t94 = call %"compiler/mir:Case" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aCase_3e_2eAt_3ccompiler_2fmir_3aCase_3e(ptr %t91, ptr %t92, i64 %t86)
  store %"compiler/mir:Case" %t94, ptr %l51
  br label %bb15
bb15:
  %t95 = getelementptr %"compiler/mir:Case", ptr %l51, i32 0, i32 1
  %t96 = load i32, ptr %t95, !tbaa !23
  %t98 = load ptr, ptr %lp3
  %t99 = load i32, ptr %l41, !tbaa !23
  %t100 = sext i32 %t99 to i64
  %t101 = getelementptr { i64, ptr }, ptr %t98, i32 0, i32 1
  %t102 = load ptr, ptr %t101, !tbaa !27
  %t103 = getelementptr i32, ptr %t102, i64 %t100
  store i32 %t96, ptr %t103, !tbaa !33
  br label %bb16
bb16:
  %t104 = load i32, ptr %l8, !tbaa !23
  %t106 = add i32 %t104, 1
  store i32 %t106, ptr %l8, !tbaa !23
  br label %bb11
bb17:
  %t108 = getelementptr %"compiler/mir:Range", ptr %l1, i32 0, i32 1
  %t109 = load i32, ptr %t108, !tbaa !23
  %t111 = sext i32 %t109 to i64
  %t114 = load ptr, ptr %lp3
  %t116 = getelementptr { i64, ptr }, ptr %t114, i32 0, i32 1
  %t117 = load ptr, ptr %t116, !tbaa !27
  %t118 = getelementptr i32, ptr %t117, i64 %t111
  store i32 %a2, ptr %t118, !tbaa !33
  %t119 = load ptr, ptr %lp3
  %t120 = load { i64, ptr }, ptr %t119, !tbaa !27
  store { i64, ptr } %t120, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local i32 @compiler_2fmir_2ecompiler_2fmir_3averifier_2etakeType(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %rv = alloca i32
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store i32 %a1, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local void @compiler_2fmir_2ecompiler_2fmir_3averifier_2etermShape(ptr %v0, ptr %v1, ptr %a0, { i64, [8 x i64] } %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca { i64, [8 x i64] }
  %l2 = alloca i32
  %l3 = alloca { i64, [4 x i64] }
  %l4 = alloca i32
  %l5 = alloca i32
  %l6 = alloca { i64, [4 x i64] }
  %l7 = alloca %"compiler/mir:Range"
  %l8 = alloca i32
  %l9 = alloca i32
  %l10 = alloca { i64, [4 x i64] }
  %l11 = alloca { i64, [4 x i64] }
  %l12 = alloca i32
  %l13 = alloca %"compiler/mir:Range"
  %l14 = alloca i32
  %l15 = alloca i32
  %l16 = alloca i32
  %l17 = alloca i32
  %l18 = alloca i32
  %l27 = alloca i1
  %l37 = alloca i1
  %l40 = alloca i1
  %l48 = alloca ptr
  %l49 = alloca %"compiler/mir:Range"
  %l52 = alloca ptr
  %l54 = alloca i64
  %l55 = alloca i1
  %l58 = alloca i1
  %l67 = alloca i1
  %l69 = alloca i64
  %l72 = alloca ptr
  %l74 = alloca i64
  %l101 = alloca i1
  %l104 = alloca i1
  %l105 = alloca ptr
  %l106 = alloca %"compiler/mir:Range"
  %l109 = alloca ptr
  %l111 = alloca i64
  %l112 = alloca i1
  %l128 = alloca i1
  %l131 = alloca i1
  %l137 = alloca i1
  %l140 = alloca i1
  %s1 = alloca %olang.scope
  %s4 = alloca %olang.scope
  %s6 = alloca %olang.scope
  %s9 = alloca %olang.scope
  %s11 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store { i64, [8 x i64] } %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load { i64, [8 x i64] }, ptr %l1
  %t3 = extractvalue { i64, [8 x i64] } %t1, 0
  %t4 = icmp eq i64 %t3, 0
  br i1 %t4, label %bb1, label %bb2
bb1:
  br label %bb3
bb2:
  br label %bb5
bb3:
  store %olang.scope zeroinitializer, ptr %s1
  %t6 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2fmir_2ecompiler_2fmir_3averifier_2ebad(ptr %v0, ptr %s1, ptr %t6, { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d137, i32 0, i32 1) })
  br label %bb4
bb4:
  call void @__olang_scope_close(ptr %s1)
  br label %bb81
bb5:
  %t8 = load { i64, [8 x i64] }, ptr %l1
  %t10 = extractvalue { i64, [8 x i64] } %t8, 0
  %t11 = icmp eq i64 %t10, 1
  br i1 %t11, label %bb6, label %bb7
bb6:
  %t13 = getelementptr { i64, [8 x i64] }, ptr %l1, i32 0, i32 1
  %t14 = getelementptr { i32 }, ptr %t13, i32 0, i32 0
  %t15 = load i32, ptr %t14
  store i32 %t15, ptr %l2, !tbaa !23
  br label %bb8
bb7:
  br label %bb10
bb8:
  %t17 = load ptr, ptr %l0, !tbaa !29
  %t18 = load i32, ptr %l2, !tbaa !23
  %t21 = call i1 @compiler_2fmir_2ecompiler_2fmir_3averifier_2eblock(ptr %v0, ptr %v1, ptr %t17, i32 %t18)
  store i1 %t21, ptr %l27
  br label %bb9
bb9:
  br label %bb81
bb10:
  %t22 = load { i64, [8 x i64] }, ptr %l1
  %t24 = extractvalue { i64, [8 x i64] } %t22, 0
  %t25 = icmp eq i64 %t24, 2
  br i1 %t25, label %bb11, label %bb12
bb11:
  %t27 = getelementptr { i64, [8 x i64] }, ptr %l1, i32 0, i32 1
  %t28 = getelementptr { { i64, [4 x i64] }, i32, i32 }, ptr %t27, i32 0, i32 0
  %t29 = load { i64, [4 x i64] }, ptr %t28
  store { i64, [4 x i64] } %t29, ptr %l3
  %t31 = getelementptr { i64, [8 x i64] }, ptr %l1, i32 0, i32 1
  %t32 = getelementptr { { i64, [4 x i64] }, i32, i32 }, ptr %t31, i32 0, i32 1
  %t33 = load i32, ptr %t32
  store i32 %t33, ptr %l4, !tbaa !23
  %t35 = getelementptr { i64, [8 x i64] }, ptr %l1, i32 0, i32 1
  %t36 = getelementptr { { i64, [4 x i64] }, i32, i32 }, ptr %t35, i32 0, i32 2
  %t37 = load i32, ptr %t36
  store i32 %t37, ptr %l5, !tbaa !23
  br label %bb13
bb12:
  br label %bb17
bb13:
  %t39 = load ptr, ptr %l0, !tbaa !29
  %t40 = load { i64, [4 x i64] }, ptr %l3
  call void @compiler_2fmir_2ecompiler_2fmir_3averifier_2eoperand(ptr %v0, ptr %v1, ptr %t39, { i64, [4 x i64] } %t40)
  br label %bb14
bb14:
  %t43 = load ptr, ptr %l0, !tbaa !29
  %t44 = load i32, ptr %l4, !tbaa !23
  %t47 = call i1 @compiler_2fmir_2ecompiler_2fmir_3averifier_2eblock(ptr %v0, ptr %v1, ptr %t43, i32 %t44)
  store i1 %t47, ptr %l37
  br label %bb15
bb15:
  %t48 = load ptr, ptr %l0, !tbaa !29
  %t49 = load i32, ptr %l5, !tbaa !23
  %t52 = call i1 @compiler_2fmir_2ecompiler_2fmir_3averifier_2eblock(ptr %v0, ptr %v1, ptr %t48, i32 %t49)
  store i1 %t52, ptr %l40
  br label %bb16
bb16:
  br label %bb81
bb17:
  %t53 = load { i64, [8 x i64] }, ptr %l1
  %t55 = extractvalue { i64, [8 x i64] } %t53, 0
  %t56 = icmp eq i64 %t55, 3
  br i1 %t56, label %bb18, label %bb19
bb18:
  %t58 = getelementptr { i64, [8 x i64] }, ptr %l1, i32 0, i32 1
  %t59 = getelementptr { { i64, [4 x i64] }, %"compiler/mir:Range", i32 }, ptr %t58, i32 0, i32 0
  %t60 = load { i64, [4 x i64] }, ptr %t59
  store { i64, [4 x i64] } %t60, ptr %l6
  %t62 = getelementptr { i64, [8 x i64] }, ptr %l1, i32 0, i32 1
  %t63 = getelementptr { { i64, [4 x i64] }, %"compiler/mir:Range", i32 }, ptr %t62, i32 0, i32 1
  %t64 = load %"compiler/mir:Range", ptr %t63
  store %"compiler/mir:Range" %t64, ptr %l7
  %t66 = getelementptr { i64, [8 x i64] }, ptr %l1, i32 0, i32 1
  %t67 = getelementptr { { i64, [4 x i64] }, %"compiler/mir:Range", i32 }, ptr %t66, i32 0, i32 2
  %t68 = load i32, ptr %t67
  store i32 %t68, ptr %l8, !tbaa !23
  br label %bb20
bb19:
  br label %bb25
bb20:
  store %olang.scope zeroinitializer, ptr %s4
  %t70 = load ptr, ptr %l0, !tbaa !29
  %t71 = load { i64, [4 x i64] }, ptr %l6
  call void @compiler_2fmir_2ecompiler_2fmir_3averifier_2eoperand(ptr %v0, ptr %v1, ptr %t70, { i64, [4 x i64] } %t71)
  br label %bb21
bb21:
  %t74 = load ptr, ptr %l0, !tbaa !29
  store ptr %t74, ptr %l48, !tbaa !29
  %t75 = load %"compiler/mir:Range", ptr %l7
  store %"compiler/mir:Range" %t75, ptr %l49
  %t76 = load ptr, ptr %l0, !tbaa !29
  %t78 = getelementptr %"compiler/mir:verifier", ptr %t76, i32 0, i32 0
  %t79 = load ptr, ptr %t78, !tbaa !29
  %t81 = getelementptr %"compiler/mir:Fn", ptr %t79, i32 0, i32 15
  store ptr %t81, ptr %l52, !tbaa !29
  %t82 = load ptr, ptr %l52, !tbaa !29
  %t83 = call ptr @__olang_scope_or(ptr %v1, ptr %t82)
  %t84 = ptrtoint ptr %t83 to i64
  %t86 = inttoptr i64 %t84 to ptr
  %t87 = load ptr, ptr %l52, !tbaa !29
  %t88 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aCase_3e_2eLen_3ccompiler_2fmir_3aCase_3e(ptr %t86, ptr %t87)
  store i64 %t88, ptr %l54
  br label %bb22
bb22:
  %t89 = load ptr, ptr %l48, !tbaa !29
  %t90 = load %"compiler/mir:Range", ptr %l49
  %t91 = load i64, ptr %l54, !tbaa !24
  %t92 = call i1 @compiler_2fmir_2ecompiler_2fmir_3averifier_2ewithin(ptr %v0, ptr %s4, ptr %t89, %"compiler/mir:Range" %t90, i64 %t91, { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d138, i32 0, i32 1) })
  store i1 %t92, ptr %l55
  br label %bb23
bb23:
  %t93 = load ptr, ptr %l0, !tbaa !29
  %t94 = load i32, ptr %l8, !tbaa !23
  %t97 = call i1 @compiler_2fmir_2ecompiler_2fmir_3averifier_2eblock(ptr %v0, ptr %v1, ptr %t93, i32 %t94)
  store i1 %t97, ptr %l58
  br label %bb24
bb24:
  call void @__olang_scope_close(ptr %s4)
  br label %bb81
bb25:
  %t98 = load { i64, [8 x i64] }, ptr %l1
  %t100 = extractvalue { i64, [8 x i64] } %t98, 0
  %t101 = icmp eq i64 %t100, 4
  br i1 %t101, label %bb26, label %bb27
bb26:
  %t103 = getelementptr { i64, [8 x i64] }, ptr %l1, i32 0, i32 1
  %t104 = getelementptr { %"compiler/source:Span", i32 }, ptr %t103, i32 0, i32 1
  %t105 = load i32, ptr %t104
  store i32 %t105, ptr %l9, !tbaa !23
  br label %bb30
bb27:
  %t107 = load { i64, [8 x i64] }, ptr %l1
  %t109 = extractvalue { i64, [8 x i64] } %t107, 0
  %t110 = icmp eq i64 %t109, 6
  br i1 %t110, label %bb28, label %bb29
bb28:
  %t112 = getelementptr { i64, [8 x i64] }, ptr %l1, i32 0, i32 1
  %t113 = getelementptr { %"compiler/source:Span", i32 }, ptr %t112, i32 0, i32 1
  %t114 = load i32, ptr %t113
  store i32 %t114, ptr %l9, !tbaa !23
  br label %bb30
bb29:
  br label %bb39
bb30:
  %t116 = load i32, ptr %l9, !tbaa !23
  %t118 = icmp slt i32 %t116, 0
  br i1 %t118, label %bb31, label %bb32
bb31:
  store i1 true, ptr %l67, !tbaa !21
  br label %bb34
bb32:
  %t120 = load i32, ptr %l9, !tbaa !23
  %t122 = sext i32 %t120 to i64
  store i64 %t122, ptr %l69, !tbaa !24
  %t123 = load ptr, ptr %l0, !tbaa !29
  %t125 = getelementptr %"compiler/mir:verifier", ptr %t123, i32 0, i32 0
  %t126 = load ptr, ptr %t125, !tbaa !29
  %t128 = getelementptr %"compiler/mir:Fn", ptr %t126, i32 0, i32 14
  store ptr %t128, ptr %l72, !tbaa !29
  %t129 = load ptr, ptr %l72, !tbaa !29
  %t130 = call ptr @__olang_scope_or(ptr %v1, ptr %t129)
  %t131 = ptrtoint ptr %t130 to i64
  %t133 = inttoptr i64 %t131 to ptr
  %t134 = load ptr, ptr %l72, !tbaa !29
  %t135 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aCall_3e_2eLen_3ccompiler_2fmir_3aCall_3e(ptr %t133, ptr %t134)
  store i64 %t135, ptr %l74
  br label %bb33
bb33:
  %t136 = load i64, ptr %l69, !tbaa !24
  %t137 = load i64, ptr %l74, !tbaa !24
  %t138 = icmp sge i64 %t136, %t137
  store i1 %t138, ptr %l67, !tbaa !21
  br label %bb34
bb34:
  %t140 = load i1, ptr %l67, !tbaa !21
  br i1 %t140, label %bb35, label %bb36
bb35:
  store %olang.scope zeroinitializer, ptr %s6
  %t141 = load ptr, ptr %l0, !tbaa !29
  %t142 = load i32, ptr %l9, !tbaa !23
  %t143 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d139, i32 0, i32 1) }, 1
  %t144 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d139, i32 0, i32 1) }, 0
  %t146 = sext i32 %t142 to i64
  %t147 = call i64 @__olang_fmt_i64(ptr null, i64 %t146)
  %t148 = add i64 %t144, %t147
  %t149 = call ptr @__olang_scope_alloc(ptr %s6, i64 %t148)
  call void @olang_textcopy(ptr %t149, ptr %t143, i64 %t144)
  %t150 = getelementptr i8, ptr %t149, i64 %t144
  %t151 = call i64 @__olang_fmt_i64(ptr %t150, i64 %t146)
  %t152 = insertvalue { i64, ptr } undef, i64 %t148, 0
  %t153 = insertvalue { i64, ptr } %t152, ptr %t149, 1
  %t155 = extractvalue { i64, ptr } %t153, 0
  %t156 = extractvalue { i64, ptr } %t153, 1
  %t157 = mul i64 %t155, 1
  %t158 = call ptr @__olang_scope_alloc(ptr %s6, i64 %t157)
  call void @llvm.memcpy.p0.p0.i64(ptr %t158, ptr %t156, i64 %t157, i1 false)
  %t159 = insertvalue { i64, ptr } undef, i64 %t155, 0
  %t160 = insertvalue { i64, ptr } %t159, ptr %t158, 1
  call void @compiler_2fmir_2ecompiler_2fmir_3averifier_2ebad(ptr %v0, ptr %s6, ptr %t141, { i64, ptr } %t160)
  br label %bb37
bb36:
  br label %bb38
bb37:
  call void @__olang_scope_close(ptr %s6)
  br label %bb38
bb38:
  br label %bb81
bb39:
  %t163 = load { i64, [8 x i64] }, ptr %l1
  %t165 = extractvalue { i64, [8 x i64] } %t163, 0
  %t166 = icmp eq i64 %t165, 5
  br i1 %t166, label %bb40, label %bb41
bb40:
  %t168 = getelementptr { i64, [8 x i64] }, ptr %l1, i32 0, i32 1
  %t169 = getelementptr { %"compiler/source:Span", { i64, [4 x i64] } }, ptr %t168, i32 0, i32 1
  %t170 = load { i64, [4 x i64] }, ptr %t169
  store { i64, [4 x i64] } %t170, ptr %l10
  br label %bb46
bb41:
  %t172 = load { i64, [8 x i64] }, ptr %l1
  %t174 = extractvalue { i64, [8 x i64] } %t172, 0
  %t175 = icmp eq i64 %t174, 7
  br i1 %t175, label %bb42, label %bb43
bb42:
  %t177 = getelementptr { i64, [8 x i64] }, ptr %l1, i32 0, i32 1
  %t178 = getelementptr { %"compiler/source:Span", { i64, [4 x i64] } }, ptr %t177, i32 0, i32 1
  %t179 = load { i64, [4 x i64] }, ptr %t178
  store { i64, [4 x i64] } %t179, ptr %l10
  br label %bb46
bb43:
  %t181 = load { i64, [8 x i64] }, ptr %l1
  %t183 = extractvalue { i64, [8 x i64] } %t181, 0
  %t184 = icmp eq i64 %t183, 9
  br i1 %t184, label %bb44, label %bb45
bb44:
  %t186 = getelementptr { i64, [8 x i64] }, ptr %l1, i32 0, i32 1
  %t187 = getelementptr { %"compiler/source:Span", i32, { i64, [4 x i64] } }, ptr %t186, i32 0, i32 2
  %t188 = load { i64, [4 x i64] }, ptr %t187
  store { i64, [4 x i64] } %t188, ptr %l10
  br label %bb46
bb45:
  br label %bb48
bb46:
  %t190 = load ptr, ptr %l0, !tbaa !29
  %t191 = load { i64, [4 x i64] }, ptr %l10
  call void @compiler_2fmir_2ecompiler_2fmir_3averifier_2eoperand(ptr %v0, ptr %v1, ptr %t190, { i64, [4 x i64] } %t191)
  br label %bb47
bb47:
  br label %bb81
bb48:
  %t194 = load { i64, [8 x i64] }, ptr %l1
  %t196 = extractvalue { i64, [8 x i64] } %t194, 0
  %t197 = icmp eq i64 %t196, 11
  br i1 %t197, label %bb49, label %bb50
bb49:
  %t199 = getelementptr { i64, [8 x i64] }, ptr %l1, i32 0, i32 1
  %t200 = getelementptr { %"compiler/source:Span", { i64, [4 x i64] }, i32, %"compiler/mir:Range", i32 }, ptr %t199, i32 0, i32 1
  %t201 = load { i64, [4 x i64] }, ptr %t200
  store { i64, [4 x i64] } %t201, ptr %l11
  %t203 = getelementptr { i64, [8 x i64] }, ptr %l1, i32 0, i32 1
  %t204 = getelementptr { %"compiler/source:Span", { i64, [4 x i64] }, i32, %"compiler/mir:Range", i32 }, ptr %t203, i32 0, i32 2
  %t205 = load i32, ptr %t204
  store i32 %t205, ptr %l12, !tbaa !23
  %t207 = getelementptr { i64, [8 x i64] }, ptr %l1, i32 0, i32 1
  %t208 = getelementptr { %"compiler/source:Span", { i64, [4 x i64] }, i32, %"compiler/mir:Range", i32 }, ptr %t207, i32 0, i32 3
  %t209 = load %"compiler/mir:Range", ptr %t208
  store %"compiler/mir:Range" %t209, ptr %l13
  %t211 = getelementptr { i64, [8 x i64] }, ptr %l1, i32 0, i32 1
  %t212 = getelementptr { %"compiler/source:Span", { i64, [4 x i64] }, i32, %"compiler/mir:Range", i32 }, ptr %t211, i32 0, i32 4
  %t213 = load i32, ptr %t212
  store i32 %t213, ptr %l14, !tbaa !23
  br label %bb51
bb50:
  br label %bb57
bb51:
  store %olang.scope zeroinitializer, ptr %s9
  %t215 = load ptr, ptr %l0, !tbaa !29
  %t216 = load { i64, [4 x i64] }, ptr %l11
  call void @compiler_2fmir_2ecompiler_2fmir_3averifier_2eoperand(ptr %v0, ptr %v1, ptr %t215, { i64, [4 x i64] } %t216)
  br label %bb52
bb52:
  %t219 = load ptr, ptr %l0, !tbaa !29
  %t220 = load i32, ptr %l12, !tbaa !23
  %t223 = call i1 @compiler_2fmir_2ecompiler_2fmir_3averifier_2eblock(ptr %v0, ptr %v1, ptr %t219, i32 %t220)
  store i1 %t223, ptr %l101
  br label %bb53
bb53:
  %t224 = load ptr, ptr %l0, !tbaa !29
  %t225 = load i32, ptr %l14, !tbaa !23
  %t228 = call i1 @compiler_2fmir_2ecompiler_2fmir_3averifier_2eblock(ptr %v0, ptr %v1, ptr %t224, i32 %t225)
  store i1 %t228, ptr %l104
  br label %bb54
bb54:
  %t229 = load ptr, ptr %l0, !tbaa !29
  store ptr %t229, ptr %l105, !tbaa !29
  %t230 = load %"compiler/mir:Range", ptr %l13
  store %"compiler/mir:Range" %t230, ptr %l106
  %t231 = load ptr, ptr %l0, !tbaa !29
  %t233 = getelementptr %"compiler/mir:verifier", ptr %t231, i32 0, i32 0
  %t234 = load ptr, ptr %t233, !tbaa !29
  %t236 = getelementptr %"compiler/mir:Fn", ptr %t234, i32 0, i32 12
  store ptr %t236, ptr %l109, !tbaa !29
  %t237 = load ptr, ptr %l109, !tbaa !29
  %t238 = call ptr @__olang_scope_or(ptr %v1, ptr %t237)
  %t239 = ptrtoint ptr %t238 to i64
  %t241 = inttoptr i64 %t239 to ptr
  %t242 = load ptr, ptr %l109, !tbaa !29
  %t243 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aScopeRef_3e_2eLen_3ccompiler_2fmir_3aScopeRef_3e(ptr %t241, ptr %t242)
  store i64 %t243, ptr %l111
  br label %bb55
bb55:
  %t244 = load ptr, ptr %l105, !tbaa !29
  %t245 = load %"compiler/mir:Range", ptr %l106
  %t246 = load i64, ptr %l111, !tbaa !24
  %t247 = call i1 @compiler_2fmir_2ecompiler_2fmir_3averifier_2ewithin(ptr %v0, ptr %s9, ptr %t244, %"compiler/mir:Range" %t245, i64 %t246, { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d140, i32 0, i32 1) })
  store i1 %t247, ptr %l112
  br label %bb56
bb56:
  call void @__olang_scope_close(ptr %s9)
  br label %bb81
bb57:
  %t248 = load { i64, [8 x i64] }, ptr %l1
  %t250 = extractvalue { i64, [8 x i64] } %t248, 0
  %t251 = icmp eq i64 %t250, 12
  br i1 %t251, label %bb58, label %bb59
bb58:
  br label %bb60
bb59:
  br label %bb65
bb60:
  %t253 = load ptr, ptr %l0, !tbaa !29
  %t255 = getelementptr %"compiler/mir:verifier", ptr %t253, i32 0, i32 0
  %t256 = load ptr, ptr %t255, !tbaa !29
  %t258 = getelementptr %"compiler/mir:Fn", ptr %t256, i32 0, i32 25
  %t259 = load i1, ptr %t258, !tbaa !21
  %t261 = xor i1 %t259, true
  br i1 %t261, label %bb61, label %bb62
bb61:
  store %olang.scope zeroinitializer, ptr %s11
  %t263 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2fmir_2ecompiler_2fmir_3averifier_2ebad(ptr %v0, ptr %s11, ptr %t263, { i64, ptr } { i64 56, ptr getelementptr inbounds (<{ i64, [56 x i8] }>, ptr @.d141, i32 0, i32 1) })
  br label %bb63
bb62:
  br label %bb64
bb63:
  call void @__olang_scope_close(ptr %s11)
  br label %bb64
bb64:
  br label %bb81
bb65:
  %t265 = load { i64, [8 x i64] }, ptr %l1
  %t267 = extractvalue { i64, [8 x i64] } %t265, 0
  %t268 = icmp eq i64 %t267, 8
  br i1 %t268, label %bb66, label %bb67
bb66:
  %t270 = getelementptr { i64, [8 x i64] }, ptr %l1, i32 0, i32 1
  %t271 = getelementptr { %"compiler/source:Span", i32, i32, i32, i32 }, ptr %t270, i32 0, i32 1
  %t272 = load i32, ptr %t271
  store i32 %t272, ptr %l15, !tbaa !23
  %t274 = getelementptr { i64, [8 x i64] }, ptr %l1, i32 0, i32 1
  %t275 = getelementptr { %"compiler/source:Span", i32, i32, i32, i32 }, ptr %t274, i32 0, i32 2
  %t276 = load i32, ptr %t275
  store i32 %t276, ptr %l16, !tbaa !23
  %t278 = getelementptr { i64, [8 x i64] }, ptr %l1, i32 0, i32 1
  %t279 = getelementptr { %"compiler/source:Span", i32, i32, i32, i32 }, ptr %t278, i32 0, i32 3
  %t280 = load i32, ptr %t279
  store i32 %t280, ptr %l17, !tbaa !23
  %t282 = getelementptr { i64, [8 x i64] }, ptr %l1, i32 0, i32 1
  %t283 = getelementptr { %"compiler/source:Span", i32, i32, i32, i32 }, ptr %t282, i32 0, i32 4
  %t284 = load i32, ptr %t283
  store i32 %t284, ptr %l18, !tbaa !23
  br label %bb68
bb67:
  br label %bb76
bb68:
  %t286 = load ptr, ptr %l0, !tbaa !29
  %t287 = load i32, ptr %l15, !tbaa !23
  %t290 = call i1 @compiler_2fmir_2ecompiler_2fmir_3averifier_2escope(ptr %v0, ptr %v1, ptr %t286, i32 %t287)
  store i1 %t290, ptr %l128
  br label %bb69
bb69:
  %t291 = load ptr, ptr %l0, !tbaa !29
  %t292 = load i32, ptr %l16, !tbaa !23
  %t295 = call i1 @compiler_2fmir_2ecompiler_2fmir_3averifier_2eblock(ptr %v0, ptr %v1, ptr %t291, i32 %t292)
  store i1 %t295, ptr %l131
  br label %bb70
bb70:
  %t296 = load i32, ptr %l18, !tbaa !23
  %t297 = load i32, ptr @G_2ecompiler_2fmir_2eNoBlock, !tbaa !23
  %t300 = icmp ne i32 %t296, %t297
  br i1 %t300, label %bb71, label %bb72
bb71:
  %t302 = load ptr, ptr %l0, !tbaa !29
  %t303 = load i32, ptr %l18, !tbaa !23
  %t306 = call i1 @compiler_2fmir_2ecompiler_2fmir_3averifier_2eblock(ptr %v0, ptr %v1, ptr %t302, i32 %t303)
  store i1 %t306, ptr %l137
  br label %bb73
bb72:
  br label %bb75
bb73:
  %t307 = load ptr, ptr %l0, !tbaa !29
  %t308 = load i32, ptr %l17, !tbaa !23
  %t311 = call i1 @compiler_2fmir_2ecompiler_2fmir_3averifier_2elocal(ptr %v0, ptr %v1, ptr %t307, i32 %t308)
  store i1 %t311, ptr %l140
  br label %bb74
bb74:
  br label %bb75
bb75:
  br label %bb81
bb76:
  %t312 = load { i64, [8 x i64] }, ptr %l1
  %t314 = extractvalue { i64, [8 x i64] } %t312, 0
  %t315 = icmp eq i64 %t314, 10
  br i1 %t315, label %bb77, label %bb78
bb77:
  br label %bb79
bb78:
  br label %bb80
bb79:
  br label %bb81
bb80:
  call void @__olang_check_failed(ptr @olang_loc_4fdb0c87eb50ced7_f9856407ece22343)
  unreachable
bb81:
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2fmir_2ecompiler_2fmir_3averifier_2etermTypes(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, [8 x i64] } %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca { i64, [8 x i64] }
  %l2 = alloca ptr
  %l3 = alloca ptr
  %l4 = alloca { i64, [4 x i64] }
  %l5 = alloca i32
  %l6 = alloca { i64, [4 x i64] }
  %l7 = alloca %"compiler/mir:Range"
  %l8 = alloca i32
  %l9 = alloca i32
  %l10 = alloca %"compiler/mir:Call"
  %l11 = alloca i32
  %l12 = alloca i32
  %l13 = alloca i1
  %l14 = alloca i32
  %l15 = alloca %"compiler/mir:Call"
  %l16 = alloca i32
  %l17 = alloca { i64, [4 x i64] }
  %l18 = alloca i32
  %l19 = alloca { i64, [4 x i64] }
  %l20 = alloca { i64, [4 x i64] }
  %l21 = alloca i32
  %l22 = alloca i32
  %l23 = alloca i32
  %l24 = alloca %"compiler/mir:ScopeInfo"
  %l25 = alloca i1
  %l26 = alloca i32
  %l27 = alloca { i64, [4 x i64] }
  %l37 = alloca i32
  %l38 = alloca ptr
  %l41 = alloca i32
  %l44 = alloca ptr
  %l47 = alloca { i64, ptr }
  %l56 = alloca i32
  %l57 = alloca ptr
  %l58 = alloca ptr
  %l61 = alloca i32
  %l63 = alloca i1
  %l65 = alloca ptr
  %l68 = alloca { i64, ptr }
  %l77 = alloca ptr
  %l81 = alloca %"compiler/mir:Call"
  %l84 = alloca i32
  %l95 = alloca i32
  %l101 = alloca ptr
  %l102 = alloca i32
  %l105 = alloca i32
  %l106 = alloca ptr
  %l107 = alloca ptr
  %l110 = alloca i32
  %l112 = alloca { i64, ptr }
  %l116 = alloca i1
  %l123 = alloca i1
  %l131 = alloca ptr
  %l134 = alloca i32
  %l136 = alloca i32
  %l141 = alloca ptr
  %l145 = alloca %"compiler/mir:Call"
  %l148 = alloca i32
  %l158 = alloca i1
  %l162 = alloca i1
  %l167 = alloca ptr
  %l168 = alloca ptr
  %l171 = alloca i32
  %l172 = alloca ptr
  %l176 = alloca i32
  %l178 = alloca i1
  %l184 = alloca ptr
  %l188 = alloca i32
  %l194 = alloca ptr
  %l197 = alloca { i64, ptr }
  %l204 = alloca ptr
  %l207 = alloca i32
  %l216 = alloca ptr
  %l219 = alloca i32
  %l220 = alloca ptr
  %l224 = alloca i32
  %l228 = alloca ptr
  %l229 = alloca ptr
  %l233 = alloca i32
  %l235 = alloca { i64, ptr }
  %l239 = alloca ptr
  %l242 = alloca i32
  %l244 = alloca i32
  %l251 = alloca ptr
  %l255 = alloca %"compiler/mir:ScopeInfo"
  %l263 = alloca ptr
  %l266 = alloca { i64, ptr }
  %l270 = alloca i1
  %l277 = alloca i1
  %l285 = alloca ptr
  %l288 = alloca i32
  %l290 = alloca i32
  %l301 = alloca i1
  %l305 = alloca i1
  %l309 = alloca i1
  %l313 = alloca ptr
  %l314 = alloca i32
  %l316 = alloca { i64, ptr }
  %l318 = alloca { i64, ptr }
  %l321 = alloca ptr
  %l324 = alloca i32
  %l325 = alloca i1
  %s2 = alloca %olang.scope
  %s5 = alloca %olang.scope
  %s7 = alloca %olang.scope
  %s10 = alloca %olang.scope
  %s11 = alloca %olang.scope
  %s12 = alloca %olang.scope
  %s13 = alloca %olang.scope
  %s14 = alloca %olang.scope
  %s17 = alloca %olang.scope
  %s18 = alloca %olang.scope
  %s21 = alloca %olang.scope
  %s24 = alloca %olang.scope
  %s25 = alloca %olang.scope
  %s26 = alloca %olang.scope
  %s27 = alloca %olang.scope
  %s28 = alloca %olang.scope
  %s29 = alloca %olang.scope
  %s30 = alloca %olang.scope
  %s31 = alloca %olang.scope
  %s33 = alloca %olang.scope
  %s34 = alloca %olang.scope
  %s35 = alloca %olang.scope
  %s38 = alloca %olang.scope
  %s39 = alloca %olang.builder
  %s39room = alloca [64 x i8], align 8
  %s41 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store { i64, [8 x i64] } %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/mir:verifier", ptr %t1, i32 0, i32 1
  %t4 = load ptr, ptr %t3, !tbaa !29
  store ptr %t4, ptr %l2, !tbaa !29
  %t6 = load ptr, ptr %l0, !tbaa !29
  %t8 = getelementptr %"compiler/mir:verifier", ptr %t6, i32 0, i32 0
  %t9 = load ptr, ptr %t8, !tbaa !29
  store ptr %t9, ptr %l3, !tbaa !29
  %t11 = load { i64, [8 x i64] }, ptr %l1
  %t13 = extractvalue { i64, [8 x i64] } %t11, 0
  %t14 = icmp eq i64 %t13, 2
  br i1 %t14, label %bb1, label %bb2
bb1:
  %t16 = getelementptr { i64, [8 x i64] }, ptr %l1, i32 0, i32 1
  %t17 = getelementptr { { i64, [4 x i64] }, i32, i32 }, ptr %t16, i32 0, i32 0
  %t18 = load { i64, [4 x i64] }, ptr %t17
  store { i64, [4 x i64] } %t18, ptr %l4
  br label %bb3
bb2:
  br label %bb11
bb3:
  %t20 = load ptr, ptr %l0, !tbaa !29
  %t21 = load { i64, [4 x i64] }, ptr %l4
  %t24 = call i32 @compiler_2fmir_2ecompiler_2fmir_3averifier_2eoperandType(ptr %v0, ptr %v1, ptr %v2, ptr %t20, { i64, [4 x i64] } %t21)
  store i32 %t24, ptr %l37
  br label %bb4
bb4:
  %t25 = load i32, ptr %l37, !tbaa !23
  store i32 %t25, ptr %l5, !tbaa !23
  %t26 = load ptr, ptr %l2, !tbaa !29
  store ptr %t26, ptr %l38, !tbaa !29
  %t27 = load i32, ptr %l5, !tbaa !23
  %t28 = load ptr, ptr %l38, !tbaa !29
  %t29 = call ptr @__olang_scope_or(ptr %v2, ptr %t28)
  %t30 = ptrtoint ptr %t29 to i64
  %t32 = inttoptr i64 %t30 to ptr
  %t33 = load ptr, ptr %l38, !tbaa !29
  %t35 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %t32, ptr %t33, i32 %t27)
  store i32 %t35, ptr %l41
  br label %bb5
bb5:
  %t36 = load i32, ptr @G_2ecompiler_2ftypes_2eBoolT, !tbaa !23
  %t37 = load i32, ptr %l41, !tbaa !23
  %t39 = icmp ne i32 %t37, %t36
  br i1 %t39, label %bb6, label %bb7
bb6:
  store %olang.scope zeroinitializer, ptr %s2
  %t41 = load ptr, ptr %l0, !tbaa !29
  store ptr %t41, ptr %l44, !tbaa !29
  %t42 = load ptr, ptr %l0, !tbaa !29
  %t43 = load i32, ptr %l5, !tbaa !23
  %t46 = call { i64, ptr } @compiler_2fmir_2ecompiler_2fmir_3averifier_2ecanon(ptr %v0, ptr %s2, ptr %v2, ptr %t42, i32 %t43)
  store { i64, ptr } %t46, ptr %l47
  br label %bb8
bb7:
  br label %bb10
bb8:
  %t47 = extractvalue { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d142, i32 0, i32 1) }, 1
  %t48 = extractvalue { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d142, i32 0, i32 1) }, 0
  %t49 = load { i64, ptr }, ptr %l47, !tbaa !27
  %t50 = extractvalue { i64, ptr } %t49, 1
  %t51 = extractvalue { i64, ptr } %t49, 0
  %t52 = add i64 %t48, %t51
  %t53 = call ptr @__olang_scope_alloc(ptr %s2, i64 %t52)
  call void @olang_textcopy(ptr %t53, ptr %t47, i64 %t48)
  %t54 = getelementptr i8, ptr %t53, i64 %t48
  call void @olang_textcopy(ptr %t54, ptr %t50, i64 %t51)
  %t55 = insertvalue { i64, ptr } undef, i64 %t52, 0
  %t56 = insertvalue { i64, ptr } %t55, ptr %t53, 1
  %t58 = extractvalue { i64, ptr } %t56, 0
  %t59 = extractvalue { i64, ptr } %t56, 1
  %t60 = mul i64 %t58, 1
  %t61 = call ptr @__olang_scope_alloc(ptr %s2, i64 %t60)
  call void @llvm.memcpy.p0.p0.i64(ptr %t61, ptr %t59, i64 %t60, i1 false)
  %t62 = insertvalue { i64, ptr } undef, i64 %t58, 0
  %t63 = insertvalue { i64, ptr } %t62, ptr %t61, 1
  %t64 = load ptr, ptr %l44, !tbaa !29
  call void @compiler_2fmir_2ecompiler_2fmir_3averifier_2ebad(ptr %v0, ptr %s2, ptr %t64, { i64, ptr } %t63)
  br label %bb9
bb9:
  call void @__olang_scope_close(ptr %s2)
  br label %bb10
bb10:
  br label %bb196
bb11:
  %t66 = load { i64, [8 x i64] }, ptr %l1
  %t68 = extractvalue { i64, [8 x i64] } %t66, 0
  %t69 = icmp eq i64 %t68, 3
  br i1 %t69, label %bb12, label %bb13
bb12:
  %t71 = getelementptr { i64, [8 x i64] }, ptr %l1, i32 0, i32 1
  %t72 = getelementptr { { i64, [4 x i64] }, %"compiler/mir:Range", i32 }, ptr %t71, i32 0, i32 0
  %t73 = load { i64, [4 x i64] }, ptr %t72
  store { i64, [4 x i64] } %t73, ptr %l6
  %t75 = getelementptr { i64, [8 x i64] }, ptr %l1, i32 0, i32 1
  %t76 = getelementptr { { i64, [4 x i64] }, %"compiler/mir:Range", i32 }, ptr %t75, i32 0, i32 1
  %t77 = load %"compiler/mir:Range", ptr %t76
  store %"compiler/mir:Range" %t77, ptr %l7
  br label %bb14
bb13:
  br label %bb24
bb14:
  %t79 = load ptr, ptr %l0, !tbaa !29
  %t80 = load { i64, [4 x i64] }, ptr %l6
  %t83 = call i32 @compiler_2fmir_2ecompiler_2fmir_3averifier_2eoperandType(ptr %v0, ptr %v1, ptr %v2, ptr %t79, { i64, [4 x i64] } %t80)
  store i32 %t83, ptr %l56
  br label %bb15
bb15:
  %t84 = load i32, ptr %l56, !tbaa !23
  store i32 %t84, ptr %l8, !tbaa !23
  %t85 = load ptr, ptr %l2, !tbaa !29
  store ptr %t85, ptr %l57, !tbaa !29
  %t86 = load ptr, ptr %l2, !tbaa !29
  store ptr %t86, ptr %l58, !tbaa !29
  %t87 = load i32, ptr %l8, !tbaa !23
  %t88 = load ptr, ptr %l58, !tbaa !29
  %t89 = call ptr @__olang_scope_or(ptr %v2, ptr %t88)
  %t90 = ptrtoint ptr %t89 to i64
  %t92 = inttoptr i64 %t90 to ptr
  %t93 = load ptr, ptr %l58, !tbaa !29
  %t95 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %t92, ptr %t93, i32 %t87)
  store i32 %t95, ptr %l61
  br label %bb16
bb16:
  %t96 = load ptr, ptr %l57, !tbaa !29
  %t97 = call ptr @__olang_scope_or(ptr %v2, ptr %t96)
  %t98 = ptrtoint ptr %t97 to i64
  %t100 = inttoptr i64 %t98 to ptr
  %t101 = load ptr, ptr %l57, !tbaa !29
  %t102 = load i32, ptr %l61, !tbaa !23
  %t103 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsInt(ptr %t100, ptr %t101, i32 %t102)
  store i1 %t103, ptr %l63
  br label %bb17
bb17:
  %t104 = load i1, ptr %l63, !tbaa !21
  %t105 = xor i1 %t104, true
  br i1 %t105, label %bb18, label %bb19
bb18:
  store %olang.scope zeroinitializer, ptr %s5
  %t107 = load ptr, ptr %l0, !tbaa !29
  store ptr %t107, ptr %l65, !tbaa !29
  %t108 = load ptr, ptr %l0, !tbaa !29
  %t109 = load i32, ptr %l8, !tbaa !23
  %t112 = call { i64, ptr } @compiler_2fmir_2ecompiler_2fmir_3averifier_2ecanon(ptr %v0, ptr %s5, ptr %v2, ptr %t108, i32 %t109)
  store { i64, ptr } %t112, ptr %l68
  br label %bb20
bb19:
  br label %bb22
bb20:
  %t113 = extractvalue { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d143, i32 0, i32 1) }, 1
  %t114 = extractvalue { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d143, i32 0, i32 1) }, 0
  %t115 = load { i64, ptr }, ptr %l68, !tbaa !27
  %t116 = extractvalue { i64, ptr } %t115, 1
  %t117 = extractvalue { i64, ptr } %t115, 0
  %t118 = add i64 %t114, %t117
  %t119 = call ptr @__olang_scope_alloc(ptr %s5, i64 %t118)
  call void @olang_textcopy(ptr %t119, ptr %t113, i64 %t114)
  %t120 = getelementptr i8, ptr %t119, i64 %t114
  call void @olang_textcopy(ptr %t120, ptr %t116, i64 %t117)
  %t121 = insertvalue { i64, ptr } undef, i64 %t118, 0
  %t122 = insertvalue { i64, ptr } %t121, ptr %t119, 1
  %t124 = extractvalue { i64, ptr } %t122, 0
  %t125 = extractvalue { i64, ptr } %t122, 1
  %t126 = mul i64 %t124, 1
  %t127 = call ptr @__olang_scope_alloc(ptr %s5, i64 %t126)
  call void @llvm.memcpy.p0.p0.i64(ptr %t127, ptr %t125, i64 %t126, i1 false)
  %t128 = insertvalue { i64, ptr } undef, i64 %t124, 0
  %t129 = insertvalue { i64, ptr } %t128, ptr %t127, 1
  %t130 = load ptr, ptr %l65, !tbaa !29
  call void @compiler_2fmir_2ecompiler_2fmir_3averifier_2ebad(ptr %v0, ptr %s5, ptr %t130, { i64, ptr } %t129)
  br label %bb21
bb21:
  call void @__olang_scope_close(ptr %s5)
  br label %bb22
bb22:
  %t132 = load ptr, ptr %l0, !tbaa !29
  %t133 = load %"compiler/mir:Range", ptr %l7
  call void @compiler_2fmir_2ecompiler_2fmir_3averifier_2ecasesOnce(ptr %v0, ptr %v1, ptr %t132, %"compiler/mir:Range" %t133)
  br label %bb23
bb23:
  br label %bb196
bb24:
  %t136 = load { i64, [8 x i64] }, ptr %l1
  %t138 = extractvalue { i64, [8 x i64] } %t136, 0
  %t139 = icmp eq i64 %t138, 4
  br i1 %t139, label %bb25, label %bb26
bb25:
  %t141 = getelementptr { i64, [8 x i64] }, ptr %l1, i32 0, i32 1
  %t142 = getelementptr { %"compiler/source:Span", i32 }, ptr %t141, i32 0, i32 1
  %t143 = load i32, ptr %t142
  store i32 %t143, ptr %l9, !tbaa !23
  br label %bb27
bb26:
  br label %bb65
bb27:
  store %olang.scope zeroinitializer, ptr %s7
  %t145 = load ptr, ptr %l3, !tbaa !29
  %t147 = getelementptr %"compiler/mir:Fn", ptr %t145, i32 0, i32 14
  store ptr %t147, ptr %l77, !tbaa !29
  %t148 = load i32, ptr %l9, !tbaa !23
  %t150 = sext i32 %t148 to i64
  %t151 = load ptr, ptr %l77, !tbaa !29
  %t152 = call ptr @__olang_scope_or(ptr %v1, ptr %t151)
  %t153 = ptrtoint ptr %t152 to i64
  %t155 = inttoptr i64 %t153 to ptr
  %t156 = load ptr, ptr %l77, !tbaa !29
  %t158 = call %"compiler/mir:Call" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aCall_3e_2eAt_3ccompiler_2fmir_3aCall_3e(ptr %t155, ptr %t156, i64 %t150)
  store %"compiler/mir:Call" %t158, ptr %l81
  br label %bb28
bb28:
  %t159 = load %"compiler/mir:Call", ptr %l81
  store %"compiler/mir:Call" %t159, ptr %l10
  %t160 = load ptr, ptr %l0, !tbaa !29
  %t161 = getelementptr %"compiler/mir:Call", ptr %l10, i32 0, i32 0
  %t162 = load { i64, [7 x i64] }, ptr %t161
  %t165 = call i32 @compiler_2fmir_2ecompiler_2fmir_3averifier_2ecalleeType(ptr %v0, ptr %v1, ptr %v2, ptr %t160, { i64, [7 x i64] } %t162)
  store i32 %t165, ptr %l84
  br label %bb29
bb29:
  %t166 = load i32, ptr %l84, !tbaa !23
  store i32 %t166, ptr %l11, !tbaa !23
  %t167 = load i32, ptr %l11, !tbaa !23
  %t168 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t171 = icmp eq i32 %t167, %t168
  br i1 %t171, label %bb30, label %bb31
bb30:
  call void @__olang_scope_close(ptr %s7)
  br label %ret
bb31:
  br label %bb32
bb32:
  %t173 = load ptr, ptr %l0, !tbaa !29
  %t174 = getelementptr %"compiler/mir:Call", ptr %l10, i32 0, i32 0
  %t175 = load { i64, [7 x i64] }, ptr %t174
  %t176 = load i32, ptr %l11, !tbaa !23
  %t177 = getelementptr %"compiler/mir:Call", ptr %l10, i32 0, i32 1
  %t178 = load %"compiler/mir:Range", ptr %t177
  %t179 = getelementptr %"compiler/mir:Call", ptr %l10, i32 0, i32 2
  %t180 = load %"compiler/mir:Range", ptr %t179
  call void @compiler_2fmir_2ecompiler_2fmir_3averifier_2eargs(ptr %v0, ptr %v2, ptr %v1, ptr %t173, { i64, [7 x i64] } %t175, i32 %t176, %"compiler/mir:Range" %t178, %"compiler/mir:Range" %t180)
  br label %bb33
bb33:
  %t186 = load ptr, ptr %l0, !tbaa !29
  %t187 = load i32, ptr %l11, !tbaa !23
  %t190 = call i32 @compiler_2fmir_2ecompiler_2fmir_3averifier_2eheld(ptr %v0, ptr %v2, ptr %t186, i32 %t187)
  store i32 %t190, ptr %l95
  br label %bb34
bb34:
  %t191 = load i32, ptr %l95, !tbaa !23
  store i32 %t191, ptr %l12, !tbaa !23
  %t192 = getelementptr %"compiler/mir:Call", ptr %l10, i32 0, i32 4
  %t193 = load i1, ptr %t192, !tbaa !21
  br i1 %t193, label %bb35, label %bb36
bb35:
  %t195 = load i32, ptr %l12, !tbaa !23
  %t196 = load i32, ptr @G_2ecompiler_2ftypes_2eVoidT, !tbaa !23
  %t199 = icmp eq i32 %t195, %t196
  br i1 %t199, label %bb37, label %bb38
bb36:
  br label %bb43
bb37:
  store %olang.scope zeroinitializer, ptr %s10
  %t201 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2fmir_2ecompiler_2fmir_3averifier_2ebad(ptr %v0, ptr %s10, ptr %t201, { i64, ptr } { i64 32, ptr getelementptr inbounds (<{ i64, [32 x i8] }>, ptr @.d144, i32 0, i32 1) })
  br label %bb39
bb38:
  store %olang.scope zeroinitializer, ptr %s11
  %t203 = load ptr, ptr %l0, !tbaa !29
  store ptr %t203, ptr %l101, !tbaa !29
  %t204 = load i32, ptr %l12, !tbaa !23
  store i32 %t204, ptr %l102, !tbaa !23
  %t205 = load ptr, ptr %l0, !tbaa !29
  %t206 = getelementptr %"compiler/mir:Call", ptr %l10, i32 0, i32 3
  %t207 = load %"compiler/mir:Lvalue", ptr %t206
  %t210 = call i32 @compiler_2fmir_2ecompiler_2fmir_3averifier_2eplaceType(ptr %v0, ptr %v1, ptr %v2, ptr %t205, %"compiler/mir:Lvalue" %t207)
  store i32 %t210, ptr %l105
  br label %bb40
bb39:
  call void @__olang_scope_close(ptr %s10)
  br label %bb42
bb40:
  %t211 = load ptr, ptr %l101, !tbaa !29
  %t212 = load i32, ptr %l102, !tbaa !23
  %t213 = load i32, ptr %l105, !tbaa !23
  call void @compiler_2fmir_2ecompiler_2fmir_3averifier_2ewant(ptr %v0, ptr %s11, ptr %v2, ptr %t211, i32 %t212, i32 %t213, { i64, ptr } { i64 17, ptr getelementptr inbounds (<{ i64, [17 x i8] }>, ptr @.d145, i32 0, i32 1) })
  br label %bb41
bb41:
  call void @__olang_scope_close(ptr %s11)
  br label %bb42
bb42:
  br label %bb43
bb43:
  %t214 = load ptr, ptr %l2, !tbaa !29
  store ptr %t214, ptr %l106, !tbaa !29
  %t215 = load ptr, ptr %l2, !tbaa !29
  store ptr %t215, ptr %l107, !tbaa !29
  %t216 = load i32, ptr %l11, !tbaa !23
  %t217 = load ptr, ptr %l107, !tbaa !29
  %t218 = call ptr @__olang_scope_or(ptr %v2, ptr %t217)
  %t219 = ptrtoint ptr %t218 to i64
  %t221 = inttoptr i64 %t219 to ptr
  %t222 = load ptr, ptr %l107, !tbaa !29
  %t224 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrors(ptr %t221, ptr %t222, i32 %t216)
  store i32 %t224, ptr %l110
  br label %bb44
bb44:
  %t225 = load ptr, ptr %l106, !tbaa !29
  %t226 = call ptr @__olang_scope_or(ptr %v2, ptr %t225)
  %t227 = ptrtoint ptr %t226 to i64
  %t229 = inttoptr i64 %t227 to ptr
  %t230 = load ptr, ptr %l106, !tbaa !29
  %t231 = load i32, ptr %l110, !tbaa !23
  %t232 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %t229, ptr %s7, ptr %t230, i32 %t231)
  store { i64, ptr } %t232, ptr %l112
  br label %bb45
bb45:
  %t233 = load { i64, ptr }, ptr %l112, !tbaa !27
  %t234 = extractvalue { i64, ptr } %t233, 0
  %t236 = icmp sgt i64 %t234, 0
  store i1 %t236, ptr %l13, !tbaa !21
  %t238 = load i1, ptr %l13, !tbaa !21
  br i1 %t238, label %bb46, label %bb47
bb46:
  %t240 = getelementptr %"compiler/mir:Call", ptr %l10, i32 0, i32 7
  %t241 = load i32, ptr %t240, !tbaa !23
  %t242 = load i32, ptr @G_2ecompiler_2fmir_2eNoBlock, !tbaa !23
  %t245 = icmp eq i32 %t241, %t242
  store i1 %t245, ptr %l116, !tbaa !21
  br label %bb48
bb47:
  store i1 false, ptr %l116, !tbaa !21
  br label %bb48
bb48:
  %t247 = load i1, ptr %l116, !tbaa !21
  br i1 %t247, label %bb49, label %bb50
bb49:
  store %olang.scope zeroinitializer, ptr %s12
  %t248 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2fmir_2ecompiler_2fmir_3averifier_2ebad(ptr %v0, ptr %s12, ptr %t248, { i64, ptr } { i64 39, ptr getelementptr inbounds (<{ i64, [39 x i8] }>, ptr @.d146, i32 0, i32 1) })
  br label %bb51
bb50:
  br label %bb52
bb51:
  call void @__olang_scope_close(ptr %s12)
  br label %bb52
bb52:
  %t250 = load i1, ptr %l13, !tbaa !21
  %t252 = xor i1 %t250, true
  br i1 %t252, label %bb53, label %bb54
bb53:
  %t254 = getelementptr %"compiler/mir:Call", ptr %l10, i32 0, i32 7
  %t255 = load i32, ptr %t254, !tbaa !23
  %t256 = load i32, ptr @G_2ecompiler_2fmir_2eNoBlock, !tbaa !23
  %t259 = icmp ne i32 %t255, %t256
  store i1 %t259, ptr %l123, !tbaa !21
  br label %bb55
bb54:
  store i1 false, ptr %l123, !tbaa !21
  br label %bb55
bb55:
  %t261 = load i1, ptr %l123, !tbaa !21
  br i1 %t261, label %bb56, label %bb57
bb56:
  store %olang.scope zeroinitializer, ptr %s13
  %t262 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2fmir_2ecompiler_2fmir_3averifier_2ebad(ptr %v0, ptr %s13, ptr %t262, { i64, ptr } { i64 41, ptr getelementptr inbounds (<{ i64, [41 x i8] }>, ptr @.d147, i32 0, i32 1) })
  br label %bb58
bb57:
  br label %bb59
bb58:
  call void @__olang_scope_close(ptr %s13)
  br label %bb59
bb59:
  %t264 = getelementptr %"compiler/mir:Call", ptr %l10, i32 0, i32 7
  %t265 = load i32, ptr %t264, !tbaa !23
  %t266 = load i32, ptr @G_2ecompiler_2fmir_2eNoBlock, !tbaa !23
  %t269 = icmp ne i32 %t265, %t266
  br i1 %t269, label %bb60, label %bb61
bb60:
  store %olang.scope zeroinitializer, ptr %s14
  %t271 = load ptr, ptr %l0, !tbaa !29
  store ptr %t271, ptr %l131, !tbaa !29
  %t272 = load ptr, ptr %l0, !tbaa !29
  %t273 = getelementptr %"compiler/mir:Call", ptr %l10, i32 0, i32 6
  %t274 = load i32, ptr %t273, !tbaa !23
  %t277 = call i32 @compiler_2fmir_2ecompiler_2fmir_3averifier_2elocalType(ptr %v0, ptr %v1, ptr %t272, i32 %t274)
  store i32 %t277, ptr %l134
  br label %bb62
bb61:
  br label %bb64
bb62:
  %t278 = load i32, ptr @G_2ecompiler_2fmir_2eI32T, !tbaa !23
  %t279 = load ptr, ptr %l131, !tbaa !29
  %t280 = load i32, ptr %l134, !tbaa !23
  %t282 = call i32 @compiler_2fmir_2ecompiler_2fmir_3averifier_2eintOf(ptr %v0, ptr %s14, ptr %v2, ptr %t279, i32 %t280, i32 %t278, { i64, ptr } { i64 21, ptr getelementptr inbounds (<{ i64, [21 x i8] }>, ptr @.d148, i32 0, i32 1) })
  store i32 %t282, ptr %l136
  br label %bb63
bb63:
  call void @__olang_scope_close(ptr %s14)
  br label %bb64
bb64:
  call void @__olang_scope_close(ptr %s7)
  br label %bb196
bb65:
  %t283 = load { i64, [8 x i64] }, ptr %l1
  %t285 = extractvalue { i64, [8 x i64] } %t283, 0
  %t286 = icmp eq i64 %t285, 6
  br i1 %t286, label %bb66, label %bb67
bb66:
  %t288 = getelementptr { i64, [8 x i64] }, ptr %l1, i32 0, i32 1
  %t289 = getelementptr { %"compiler/source:Span", i32 }, ptr %t288, i32 0, i32 1
  %t290 = load i32, ptr %t289
  store i32 %t290, ptr %l14, !tbaa !23
  br label %bb68
bb67:
  br label %bb92
bb68:
  %t292 = load ptr, ptr %l3, !tbaa !29
  %t294 = getelementptr %"compiler/mir:Fn", ptr %t292, i32 0, i32 14
  store ptr %t294, ptr %l141, !tbaa !29
  %t295 = load i32, ptr %l14, !tbaa !23
  %t297 = sext i32 %t295 to i64
  %t298 = load ptr, ptr %l141, !tbaa !29
  %t299 = call ptr @__olang_scope_or(ptr %v1, ptr %t298)
  %t300 = ptrtoint ptr %t299 to i64
  %t302 = inttoptr i64 %t300 to ptr
  %t303 = load ptr, ptr %l141, !tbaa !29
  %t305 = call %"compiler/mir:Call" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aCall_3e_2eAt_3ccompiler_2fmir_3aCall_3e(ptr %t302, ptr %t303, i64 %t297)
  store %"compiler/mir:Call" %t305, ptr %l145
  br label %bb69
bb69:
  %t306 = load %"compiler/mir:Call", ptr %l145
  store %"compiler/mir:Call" %t306, ptr %l15
  %t307 = load ptr, ptr %l0, !tbaa !29
  %t308 = getelementptr %"compiler/mir:Call", ptr %l15, i32 0, i32 0
  %t309 = load { i64, [7 x i64] }, ptr %t308
  %t312 = call i32 @compiler_2fmir_2ecompiler_2fmir_3averifier_2ecalleeType(ptr %v0, ptr %v1, ptr %v2, ptr %t307, { i64, [7 x i64] } %t309)
  store i32 %t312, ptr %l148
  br label %bb70
bb70:
  %t313 = load i32, ptr %l148, !tbaa !23
  store i32 %t313, ptr %l16, !tbaa !23
  %t314 = load i32, ptr %l16, !tbaa !23
  %t315 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t318 = icmp eq i32 %t314, %t315
  br i1 %t318, label %bb71, label %bb72
bb71:
  br label %ret
bb72:
  br label %bb73
bb73:
  %t320 = load ptr, ptr %l0, !tbaa !29
  %t321 = getelementptr %"compiler/mir:Call", ptr %l15, i32 0, i32 0
  %t322 = load { i64, [7 x i64] }, ptr %t321
  %t323 = load i32, ptr %l16, !tbaa !23
  %t324 = getelementptr %"compiler/mir:Call", ptr %l15, i32 0, i32 1
  %t325 = load %"compiler/mir:Range", ptr %t324
  %t326 = getelementptr %"compiler/mir:Call", ptr %l15, i32 0, i32 2
  %t327 = load %"compiler/mir:Range", ptr %t326
  call void @compiler_2fmir_2ecompiler_2fmir_3averifier_2eargs(ptr %v0, ptr %v2, ptr %v1, ptr %t320, { i64, [7 x i64] } %t322, i32 %t323, %"compiler/mir:Range" %t325, %"compiler/mir:Range" %t327)
  br label %bb74
bb74:
  %t333 = getelementptr %"compiler/mir:Call", ptr %l15, i32 0, i32 4
  %t334 = load i1, ptr %t333, !tbaa !21
  br i1 %t334, label %bb75, label %bb76
bb75:
  store i1 true, ptr %l158, !tbaa !21
  br label %bb77
bb76:
  %t336 = getelementptr %"compiler/mir:Call", ptr %l15, i32 0, i32 5
  %t337 = load i32, ptr %t336, !tbaa !23
  %t338 = load i32, ptr @G_2ecompiler_2fmir_2eNoBlock, !tbaa !23
  %t341 = icmp ne i32 %t337, %t338
  store i1 %t341, ptr %l158, !tbaa !21
  br label %bb77
bb77:
  %t343 = load i1, ptr %l158, !tbaa !21
  br i1 %t343, label %bb78, label %bb79
bb78:
  store i1 true, ptr %l162, !tbaa !21
  br label %bb80
bb79:
  %t344 = getelementptr %"compiler/mir:Call", ptr %l15, i32 0, i32 7
  %t345 = load i32, ptr %t344, !tbaa !23
  %t346 = load i32, ptr @G_2ecompiler_2fmir_2eNoBlock, !tbaa !23
  %t349 = icmp ne i32 %t345, %t346
  store i1 %t349, ptr %l162, !tbaa !21
  br label %bb80
bb80:
  %t351 = load i1, ptr %l162, !tbaa !21
  br i1 %t351, label %bb81, label %bb82
bb81:
  store %olang.scope zeroinitializer, ptr %s17
  %t352 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2fmir_2ecompiler_2fmir_3averifier_2ebad(ptr %v0, ptr %s17, ptr %t352, { i64, ptr } { i64 41, ptr getelementptr inbounds (<{ i64, [41 x i8] }>, ptr @.d149, i32 0, i32 1) })
  br label %bb83
bb82:
  br label %bb84
bb83:
  call void @__olang_scope_close(ptr %s17)
  br label %bb84
bb84:
  %t354 = load ptr, ptr %l2, !tbaa !29
  store ptr %t354, ptr %l167, !tbaa !29
  %t355 = load ptr, ptr %l2, !tbaa !29
  store ptr %t355, ptr %l168, !tbaa !29
  %t356 = load i32, ptr %l16, !tbaa !23
  %t357 = load ptr, ptr %l168, !tbaa !29
  %t358 = call ptr @__olang_scope_or(ptr %v2, ptr %t357)
  %t359 = ptrtoint ptr %t358 to i64
  %t361 = inttoptr i64 %t359 to ptr
  %t362 = load ptr, ptr %l168, !tbaa !29
  %t364 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eResult(ptr %t361, ptr %t362, i32 %t356)
  store i32 %t364, ptr %l171
  br label %bb85
bb85:
  %t365 = load ptr, ptr %l2, !tbaa !29
  store ptr %t365, ptr %l172, !tbaa !29
  %t366 = load ptr, ptr %l3, !tbaa !29
  %t368 = getelementptr %"compiler/mir:Fn", ptr %t366, i32 0, i32 1
  %t369 = load i32, ptr %t368, !tbaa !23
  %t370 = load ptr, ptr %l172, !tbaa !29
  %t371 = call ptr @__olang_scope_or(ptr %v2, ptr %t370)
  %t372 = ptrtoint ptr %t371 to i64
  %t374 = inttoptr i64 %t372 to ptr
  %t375 = load ptr, ptr %l172, !tbaa !29
  %t377 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eResult(ptr %t374, ptr %t375, i32 %t369)
  store i32 %t377, ptr %l176
  br label %bb86
bb86:
  %t378 = load ptr, ptr %l167, !tbaa !29
  %t379 = call ptr @__olang_scope_or(ptr %v2, ptr %t378)
  %t380 = ptrtoint ptr %t379 to i64
  %t382 = inttoptr i64 %t380 to ptr
  %t383 = load ptr, ptr %l167, !tbaa !29
  %t384 = load i32, ptr %l171, !tbaa !23
  %t385 = load i32, ptr %l176, !tbaa !23
  %t386 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eSame(ptr %t382, ptr %t383, i32 %t384, i32 %t385)
  store i1 %t386, ptr %l178
  br label %bb87
bb87:
  %t387 = load i1, ptr %l178, !tbaa !21
  %t388 = xor i1 %t387, true
  br i1 %t388, label %bb88, label %bb89
bb88:
  store %olang.scope zeroinitializer, ptr %s18
  %t390 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2fmir_2ecompiler_2fmir_3averifier_2ebad(ptr %v0, ptr %s18, ptr %t390, { i64, ptr } { i64 53, ptr getelementptr inbounds (<{ i64, [53 x i8] }>, ptr @.d150, i32 0, i32 1) })
  br label %bb90
bb89:
  br label %bb91
bb90:
  call void @__olang_scope_close(ptr %s18)
  br label %bb91
bb91:
  br label %bb196
bb92:
  %t392 = load { i64, [8 x i64] }, ptr %l1
  %t394 = extractvalue { i64, [8 x i64] } %t392, 0
  %t395 = icmp eq i64 %t394, 5
  br i1 %t395, label %bb93, label %bb94
bb93:
  %t397 = getelementptr { i64, [8 x i64] }, ptr %l1, i32 0, i32 1
  %t398 = getelementptr { %"compiler/source:Span", { i64, [4 x i64] } }, ptr %t397, i32 0, i32 1
  %t399 = load { i64, [4 x i64] }, ptr %t398
  store { i64, [4 x i64] } %t399, ptr %l17
  br label %bb95
bb94:
  br label %bb111
bb95:
  %t401 = load ptr, ptr %l2, !tbaa !29
  store ptr %t401, ptr %l184, !tbaa !29
  %t402 = load ptr, ptr %l3, !tbaa !29
  %t404 = getelementptr %"compiler/mir:Fn", ptr %t402, i32 0, i32 1
  %t405 = load i32, ptr %t404, !tbaa !23
  %t406 = load ptr, ptr %l184, !tbaa !29
  %t407 = call ptr @__olang_scope_or(ptr %v2, ptr %t406)
  %t408 = ptrtoint ptr %t407 to i64
  %t410 = inttoptr i64 %t408 to ptr
  %t411 = load ptr, ptr %l184, !tbaa !29
  %t413 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eResult(ptr %t410, ptr %t411, i32 %t405)
  store i32 %t413, ptr %l188
  br label %bb96
bb96:
  %t414 = load i32, ptr %l188, !tbaa !23
  store i32 %t414, ptr %l18, !tbaa !23
  %t415 = load { i64, [4 x i64] }, ptr %l17
  %t417 = extractvalue { i64, [4 x i64] } %t415, 0
  %t418 = icmp eq i64 %t417, 0
  br i1 %t418, label %bb97, label %bb98
bb97:
  %t420 = load i32, ptr %l18, !tbaa !23
  %t421 = load i32, ptr @G_2ecompiler_2ftypes_2eVoidT, !tbaa !23
  %t424 = icmp ne i32 %t420, %t421
  br i1 %t424, label %bb99, label %bb100
bb98:
  %t426 = load i32, ptr %l18, !tbaa !23
  %t427 = load i32, ptr @G_2ecompiler_2ftypes_2eVoidT, !tbaa !23
  %t430 = icmp eq i32 %t426, %t427
  br i1 %t430, label %bb104, label %bb105
bb99:
  store %olang.scope zeroinitializer, ptr %s21
  %t432 = load ptr, ptr %l0, !tbaa !29
  store ptr %t432, ptr %l194, !tbaa !29
  %t433 = load ptr, ptr %l0, !tbaa !29
  %t434 = load i32, ptr %l18, !tbaa !23
  %t437 = call { i64, ptr } @compiler_2fmir_2ecompiler_2fmir_3averifier_2ecanon(ptr %v0, ptr %s21, ptr %v2, ptr %t433, i32 %t434)
  store { i64, ptr } %t437, ptr %l197
  br label %bb101
bb100:
  br label %bb103
bb101:
  %t438 = extractvalue { i64, ptr } { i64 48, ptr getelementptr inbounds (<{ i64, [48 x i8] }>, ptr @.d151, i32 0, i32 1) }, 1
  %t439 = extractvalue { i64, ptr } { i64 48, ptr getelementptr inbounds (<{ i64, [48 x i8] }>, ptr @.d151, i32 0, i32 1) }, 0
  %t440 = load { i64, ptr }, ptr %l197, !tbaa !27
  %t441 = extractvalue { i64, ptr } %t440, 1
  %t442 = extractvalue { i64, ptr } %t440, 0
  %t443 = add i64 %t439, %t442
  %t444 = call ptr @__olang_scope_alloc(ptr %s21, i64 %t443)
  call void @olang_textcopy(ptr %t444, ptr %t438, i64 %t439)
  %t445 = getelementptr i8, ptr %t444, i64 %t439
  call void @olang_textcopy(ptr %t445, ptr %t441, i64 %t442)
  %t446 = insertvalue { i64, ptr } undef, i64 %t443, 0
  %t447 = insertvalue { i64, ptr } %t446, ptr %t444, 1
  %t449 = extractvalue { i64, ptr } %t447, 0
  %t450 = extractvalue { i64, ptr } %t447, 1
  %t451 = mul i64 %t449, 1
  %t452 = call ptr @__olang_scope_alloc(ptr %s21, i64 %t451)
  call void @llvm.memcpy.p0.p0.i64(ptr %t452, ptr %t450, i64 %t451, i1 false)
  %t453 = insertvalue { i64, ptr } undef, i64 %t449, 0
  %t454 = insertvalue { i64, ptr } %t453, ptr %t452, 1
  %t455 = load ptr, ptr %l194, !tbaa !29
  call void @compiler_2fmir_2ecompiler_2fmir_3averifier_2ebad(ptr %v0, ptr %s21, ptr %t455, { i64, ptr } %t454)
  br label %bb102
bb102:
  call void @__olang_scope_close(ptr %s21)
  br label %bb103
bb103:
  br label %bb110
bb104:
  store %olang.scope zeroinitializer, ptr %s24
  %t457 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2fmir_2ecompiler_2fmir_3averifier_2ebad(ptr %v0, ptr %s24, ptr %t457, { i64, ptr } { i64 49, ptr getelementptr inbounds (<{ i64, [49 x i8] }>, ptr @.d152, i32 0, i32 1) })
  br label %bb106
bb105:
  store %olang.scope zeroinitializer, ptr %s25
  %t459 = load ptr, ptr %l0, !tbaa !29
  store ptr %t459, ptr %l204, !tbaa !29
  %t460 = load ptr, ptr %l0, !tbaa !29
  %t461 = load { i64, [4 x i64] }, ptr %l17
  %t464 = call i32 @compiler_2fmir_2ecompiler_2fmir_3averifier_2eoperandType(ptr %v0, ptr %v1, ptr %v2, ptr %t460, { i64, [4 x i64] } %t461)
  store i32 %t464, ptr %l207
  br label %bb107
bb106:
  call void @__olang_scope_close(ptr %s24)
  br label %bb109
bb107:
  %t465 = load i32, ptr %l18, !tbaa !23
  %t466 = load ptr, ptr %l204, !tbaa !29
  %t467 = load i32, ptr %l207, !tbaa !23
  call void @compiler_2fmir_2ecompiler_2fmir_3averifier_2ewant(ptr %v0, ptr %s25, ptr %v2, ptr %t466, i32 %t467, i32 %t465, { i64, ptr } { i64 18, ptr getelementptr inbounds (<{ i64, [18 x i8] }>, ptr @.d153, i32 0, i32 1) })
  br label %bb108
bb108:
  call void @__olang_scope_close(ptr %s25)
  br label %bb109
bb109:
  br label %bb110
bb110:
  br label %bb196
bb111:
  %t469 = load { i64, [8 x i64] }, ptr %l1
  %t471 = extractvalue { i64, [8 x i64] } %t469, 0
  %t472 = icmp eq i64 %t471, 11
  br i1 %t472, label %bb112, label %bb113
bb112:
  %t474 = getelementptr { i64, [8 x i64] }, ptr %l1, i32 0, i32 1
  %t475 = getelementptr { %"compiler/source:Span", { i64, [4 x i64] }, i32, %"compiler/mir:Range", i32 }, ptr %t474, i32 0, i32 1
  %t476 = load { i64, [4 x i64] }, ptr %t475
  store { i64, [4 x i64] } %t476, ptr %l19
  br label %bb114
bb113:
  br label %bb122
bb114:
  store %olang.scope zeroinitializer, ptr %s26
  %t478 = load ptr, ptr %l3, !tbaa !29
  %t480 = getelementptr %"compiler/mir:Fn", ptr %t478, i32 0, i32 25
  %t481 = load i1, ptr %t480, !tbaa !21
  %t483 = xor i1 %t481, true
  br i1 %t483, label %bb115, label %bb116
bb115:
  store %olang.scope zeroinitializer, ptr %s27
  %t485 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2fmir_2ecompiler_2fmir_3averifier_2ebad(ptr %v0, ptr %s27, ptr %t485, { i64, ptr } { i64 46, ptr getelementptr inbounds (<{ i64, [46 x i8] }>, ptr @.d154, i32 0, i32 1) })
  br label %bb117
bb116:
  br label %bb118
bb117:
  call void @__olang_scope_close(ptr %s27)
  br label %bb118
bb118:
  %t487 = load ptr, ptr %l0, !tbaa !29
  store ptr %t487, ptr %l216, !tbaa !29
  %t488 = load ptr, ptr %l0, !tbaa !29
  %t489 = load { i64, [4 x i64] }, ptr %l19
  %t492 = call i32 @compiler_2fmir_2ecompiler_2fmir_3averifier_2eoperandType(ptr %v0, ptr %v1, ptr %v2, ptr %t488, { i64, [4 x i64] } %t489)
  store i32 %t492, ptr %l219
  br label %bb119
bb119:
  %t493 = load ptr, ptr %l2, !tbaa !29
  store ptr %t493, ptr %l220, !tbaa !29
  %t494 = load ptr, ptr %l3, !tbaa !29
  %t496 = getelementptr %"compiler/mir:Fn", ptr %t494, i32 0, i32 1
  %t497 = load i32, ptr %t496, !tbaa !23
  %t498 = load ptr, ptr %l220, !tbaa !29
  %t499 = call ptr @__olang_scope_or(ptr %v2, ptr %t498)
  %t500 = ptrtoint ptr %t499 to i64
  %t502 = inttoptr i64 %t500 to ptr
  %t503 = load ptr, ptr %l220, !tbaa !29
  %t505 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eResult(ptr %t502, ptr %t503, i32 %t497)
  store i32 %t505, ptr %l224
  br label %bb120
bb120:
  %t506 = load ptr, ptr %l216, !tbaa !29
  %t507 = load i32, ptr %l219, !tbaa !23
  %t508 = load i32, ptr %l224, !tbaa !23
  call void @compiler_2fmir_2ecompiler_2fmir_3averifier_2ewant(ptr %v0, ptr %s26, ptr %v2, ptr %t506, i32 %t507, i32 %t508, { i64, ptr } { i64 17, ptr getelementptr inbounds (<{ i64, [17 x i8] }>, ptr @.d155, i32 0, i32 1) })
  br label %bb121
bb121:
  call void @__olang_scope_close(ptr %s26)
  br label %bb196
bb122:
  %t509 = load { i64, [8 x i64] }, ptr %l1
  %t511 = extractvalue { i64, [8 x i64] } %t509, 0
  %t512 = icmp eq i64 %t511, 7
  br i1 %t512, label %bb123, label %bb124
bb123:
  %t514 = getelementptr { i64, [8 x i64] }, ptr %l1, i32 0, i32 1
  %t515 = getelementptr { %"compiler/source:Span", { i64, [4 x i64] } }, ptr %t514, i32 0, i32 1
  %t516 = load { i64, [4 x i64] }, ptr %t515
  store { i64, [4 x i64] } %t516, ptr %l20
  br label %bb125
bb124:
  br label %bb134
bb125:
  store %olang.scope zeroinitializer, ptr %s28
  %t518 = load ptr, ptr %l2, !tbaa !29
  store ptr %t518, ptr %l228, !tbaa !29
  %t519 = load ptr, ptr %l2, !tbaa !29
  store ptr %t519, ptr %l229, !tbaa !29
  %t520 = load ptr, ptr %l3, !tbaa !29
  %t522 = getelementptr %"compiler/mir:Fn", ptr %t520, i32 0, i32 1
  %t523 = load i32, ptr %t522, !tbaa !23
  %t524 = load ptr, ptr %l229, !tbaa !29
  %t525 = call ptr @__olang_scope_or(ptr %v2, ptr %t524)
  %t526 = ptrtoint ptr %t525 to i64
  %t528 = inttoptr i64 %t526 to ptr
  %t529 = load ptr, ptr %l229, !tbaa !29
  %t531 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrors(ptr %t528, ptr %t529, i32 %t523)
  store i32 %t531, ptr %l233
  br label %bb126
bb126:
  %t532 = load ptr, ptr %l228, !tbaa !29
  %t533 = call ptr @__olang_scope_or(ptr %v2, ptr %t532)
  %t534 = ptrtoint ptr %t533 to i64
  %t536 = inttoptr i64 %t534 to ptr
  %t537 = load ptr, ptr %l228, !tbaa !29
  %t538 = load i32, ptr %l233, !tbaa !23
  %t539 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %t536, ptr %s28, ptr %t537, i32 %t538)
  store { i64, ptr } %t539, ptr %l235
  br label %bb127
bb127:
  %t540 = load { i64, ptr }, ptr %l235, !tbaa !27
  %t541 = extractvalue { i64, ptr } %t540, 0
  %t543 = icmp eq i64 %t541, 0
  br i1 %t543, label %bb128, label %bb129
bb128:
  store %olang.scope zeroinitializer, ptr %s29
  %t545 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2fmir_2ecompiler_2fmir_3averifier_2ebad(ptr %v0, ptr %s29, ptr %t545, { i64, ptr } { i64 38, ptr getelementptr inbounds (<{ i64, [38 x i8] }>, ptr @.d156, i32 0, i32 1) })
  br label %bb130
bb129:
  br label %bb131
bb130:
  call void @__olang_scope_close(ptr %s29)
  br label %bb131
bb131:
  %t547 = load ptr, ptr %l0, !tbaa !29
  store ptr %t547, ptr %l239, !tbaa !29
  %t548 = load ptr, ptr %l0, !tbaa !29
  %t549 = load { i64, [4 x i64] }, ptr %l20
  %t552 = call i32 @compiler_2fmir_2ecompiler_2fmir_3averifier_2eoperandType(ptr %v0, ptr %v1, ptr %v2, ptr %t548, { i64, [4 x i64] } %t549)
  store i32 %t552, ptr %l242
  br label %bb132
bb132:
  %t553 = load i32, ptr @G_2ecompiler_2fmir_2eI32T, !tbaa !23
  %t554 = load ptr, ptr %l239, !tbaa !29
  %t555 = load i32, ptr %l242, !tbaa !23
  %t557 = call i32 @compiler_2fmir_2ecompiler_2fmir_3averifier_2eintOf(ptr %v0, ptr %s28, ptr %v2, ptr %t554, i32 %t555, i32 %t553, { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d157, i32 0, i32 1) })
  store i32 %t557, ptr %l244
  br label %bb133
bb133:
  call void @__olang_scope_close(ptr %s28)
  br label %bb196
bb134:
  %t558 = load { i64, [8 x i64] }, ptr %l1
  %t560 = extractvalue { i64, [8 x i64] } %t558, 0
  %t561 = icmp eq i64 %t560, 8
  br i1 %t561, label %bb135, label %bb136
bb135:
  %t563 = getelementptr { i64, [8 x i64] }, ptr %l1, i32 0, i32 1
  %t564 = getelementptr { %"compiler/source:Span", i32, i32, i32, i32 }, ptr %t563, i32 0, i32 1
  %t565 = load i32, ptr %t564
  store i32 %t565, ptr %l21, !tbaa !23
  %t567 = getelementptr { i64, [8 x i64] }, ptr %l1, i32 0, i32 1
  %t568 = getelementptr { %"compiler/source:Span", i32, i32, i32, i32 }, ptr %t567, i32 0, i32 3
  %t569 = load i32, ptr %t568
  store i32 %t569, ptr %l22, !tbaa !23
  %t571 = getelementptr { i64, [8 x i64] }, ptr %l1, i32 0, i32 1
  %t572 = getelementptr { %"compiler/source:Span", i32, i32, i32, i32 }, ptr %t571, i32 0, i32 4
  %t573 = load i32, ptr %t572
  store i32 %t573, ptr %l23, !tbaa !23
  br label %bb137
bb136:
  br label %bb163
bb137:
  store %olang.scope zeroinitializer, ptr %s30
  %t575 = load ptr, ptr %l3, !tbaa !29
  %t577 = getelementptr %"compiler/mir:Fn", ptr %t575, i32 0, i32 8
  store ptr %t577, ptr %l251, !tbaa !29
  %t578 = load i32, ptr %l21, !tbaa !23
  %t580 = sext i32 %t578 to i64
  %t581 = load ptr, ptr %l251, !tbaa !29
  %t582 = call ptr @__olang_scope_or(ptr %v1, ptr %t581)
  %t583 = ptrtoint ptr %t582 to i64
  %t585 = inttoptr i64 %t583 to ptr
  %t586 = load ptr, ptr %l251, !tbaa !29
  %t588 = call %"compiler/mir:ScopeInfo" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aScopeInfo_3e_2eAt_3ccompiler_2fmir_3aScopeInfo_3e(ptr %t585, ptr %t586, i64 %t580)
  store %"compiler/mir:ScopeInfo" %t588, ptr %l255
  br label %bb138
bb138:
  %t589 = load %"compiler/mir:ScopeInfo", ptr %l255
  store %"compiler/mir:ScopeInfo" %t589, ptr %l24
  %t590 = getelementptr %"compiler/mir:ScopeInfo", ptr %l24, i32 0, i32 0
  %t591 = load i32, ptr %t590, !range !{i32 0, i32 7}
  %t593 = trunc i64 3 to i32
  %t594 = icmp eq i32 %t591, %t593
  %t596 = xor i1 %t594, true
  br i1 %t596, label %bb139, label %bb140
bb139:
  store %olang.scope zeroinitializer, ptr %s31
  %t598 = load ptr, ptr %l0, !tbaa !29
  %t599 = load i32, ptr %l21, !tbaa !23
  %t600 = extractvalue { i64, ptr } { i64 12, ptr getelementptr inbounds (<{ i64, [12 x i8] }>, ptr @.d158, i32 0, i32 1) }, 1
  %t601 = extractvalue { i64, ptr } { i64 12, ptr getelementptr inbounds (<{ i64, [12 x i8] }>, ptr @.d158, i32 0, i32 1) }, 0
  %t603 = sext i32 %t599 to i64
  %t604 = call i64 @__olang_fmt_i64(ptr null, i64 %t603)
  %t605 = add i64 %t601, %t604
  %t606 = extractvalue { i64, ptr } { i64 18, ptr getelementptr inbounds (<{ i64, [18 x i8] }>, ptr @.d159, i32 0, i32 1) }, 1
  %t607 = extractvalue { i64, ptr } { i64 18, ptr getelementptr inbounds (<{ i64, [18 x i8] }>, ptr @.d159, i32 0, i32 1) }, 0
  %t608 = add i64 %t605, %t607
  %t609 = call ptr @__olang_scope_alloc(ptr %s31, i64 %t608)
  call void @olang_textcopy(ptr %t609, ptr %t600, i64 %t601)
  %t610 = getelementptr i8, ptr %t609, i64 %t601
  %t611 = call i64 @__olang_fmt_i64(ptr %t610, i64 %t603)
  %t612 = getelementptr i8, ptr %t610, i64 %t604
  call void @olang_textcopy(ptr %t612, ptr %t606, i64 %t607)
  %t613 = insertvalue { i64, ptr } undef, i64 %t608, 0
  %t614 = insertvalue { i64, ptr } %t613, ptr %t609, 1
  %t616 = extractvalue { i64, ptr } %t614, 0
  %t617 = extractvalue { i64, ptr } %t614, 1
  %t618 = mul i64 %t616, 1
  %t619 = call ptr @__olang_scope_alloc(ptr %s31, i64 %t618)
  call void @llvm.memcpy.p0.p0.i64(ptr %t619, ptr %t617, i64 %t618, i1 false)
  %t620 = insertvalue { i64, ptr } undef, i64 %t616, 0
  %t621 = insertvalue { i64, ptr } %t620, ptr %t619, 1
  call void @compiler_2fmir_2ecompiler_2fmir_3averifier_2ebad(ptr %v0, ptr %s31, ptr %t598, { i64, ptr } %t621)
  br label %bb141
bb140:
  br label %bb142
bb141:
  call void @__olang_scope_close(ptr %s31)
  br label %bb142
bb142:
  %t624 = load ptr, ptr %l2, !tbaa !29
  store ptr %t624, ptr %l263, !tbaa !29
  %t625 = getelementptr %"compiler/mir:ScopeInfo", ptr %l24, i32 0, i32 4
  %t626 = load i32, ptr %t625, !tbaa !23
  %t627 = load ptr, ptr %l263, !tbaa !29
  %t628 = call ptr @__olang_scope_or(ptr %v2, ptr %t627)
  %t629 = ptrtoint ptr %t628 to i64
  %t631 = inttoptr i64 %t629 to ptr
  %t632 = load ptr, ptr %l263, !tbaa !29
  %t634 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %t631, ptr %s30, ptr %t632, i32 %t626)
  store { i64, ptr } %t634, ptr %l266
  br label %bb143
bb143:
  %t635 = load { i64, ptr }, ptr %l266, !tbaa !27
  %t636 = extractvalue { i64, ptr } %t635, 0
  %t638 = icmp sgt i64 %t636, 0
  store i1 %t638, ptr %l25, !tbaa !21
  %t640 = load i1, ptr %l25, !tbaa !21
  br i1 %t640, label %bb144, label %bb145
bb144:
  %t642 = load i32, ptr %l23, !tbaa !23
  %t643 = load i32, ptr @G_2ecompiler_2fmir_2eNoBlock, !tbaa !23
  %t646 = icmp eq i32 %t642, %t643
  store i1 %t646, ptr %l270, !tbaa !21
  br label %bb146
bb145:
  store i1 false, ptr %l270, !tbaa !21
  br label %bb146
bb146:
  %t648 = load i1, ptr %l270, !tbaa !21
  br i1 %t648, label %bb147, label %bb148
bb147:
  store %olang.scope zeroinitializer, ptr %s33
  %t649 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2fmir_2ecompiler_2fmir_3averifier_2ebad(ptr %v0, ptr %s33, ptr %t649, { i64, ptr } { i64 51, ptr getelementptr inbounds (<{ i64, [51 x i8] }>, ptr @.d160, i32 0, i32 1) })
  br label %bb149
bb148:
  br label %bb150
bb149:
  call void @__olang_scope_close(ptr %s33)
  br label %bb150
bb150:
  %t651 = load i1, ptr %l25, !tbaa !21
  %t653 = xor i1 %t651, true
  br i1 %t653, label %bb151, label %bb152
bb151:
  %t655 = load i32, ptr %l23, !tbaa !23
  %t656 = load i32, ptr @G_2ecompiler_2fmir_2eNoBlock, !tbaa !23
  %t659 = icmp ne i32 %t655, %t656
  store i1 %t659, ptr %l277, !tbaa !21
  br label %bb153
bb152:
  store i1 false, ptr %l277, !tbaa !21
  br label %bb153
bb153:
  %t661 = load i1, ptr %l277, !tbaa !21
  br i1 %t661, label %bb154, label %bb155
bb154:
  store %olang.scope zeroinitializer, ptr %s34
  %t662 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2fmir_2ecompiler_2fmir_3averifier_2ebad(ptr %v0, ptr %s34, ptr %t662, { i64, ptr } { i64 41, ptr getelementptr inbounds (<{ i64, [41 x i8] }>, ptr @.d161, i32 0, i32 1) })
  br label %bb156
bb155:
  br label %bb157
bb156:
  call void @__olang_scope_close(ptr %s34)
  br label %bb157
bb157:
  %t664 = load i32, ptr %l23, !tbaa !23
  %t665 = load i32, ptr @G_2ecompiler_2fmir_2eNoBlock, !tbaa !23
  %t668 = icmp ne i32 %t664, %t665
  br i1 %t668, label %bb158, label %bb159
bb158:
  store %olang.scope zeroinitializer, ptr %s35
  %t670 = load ptr, ptr %l0, !tbaa !29
  store ptr %t670, ptr %l285, !tbaa !29
  %t671 = load ptr, ptr %l0, !tbaa !29
  %t672 = load i32, ptr %l22, !tbaa !23
  %t675 = call i32 @compiler_2fmir_2ecompiler_2fmir_3averifier_2elocalType(ptr %v0, ptr %v1, ptr %t671, i32 %t672)
  store i32 %t675, ptr %l288
  br label %bb160
bb159:
  br label %bb162
bb160:
  %t676 = load i32, ptr @G_2ecompiler_2fmir_2eI32T, !tbaa !23
  %t677 = load ptr, ptr %l285, !tbaa !29
  %t678 = load i32, ptr %l288, !tbaa !23
  %t680 = call i32 @compiler_2fmir_2ecompiler_2fmir_3averifier_2eintOf(ptr %v0, ptr %s35, ptr %v2, ptr %t677, i32 %t678, i32 %t676, { i64, ptr } { i64 21, ptr getelementptr inbounds (<{ i64, [21 x i8] }>, ptr @.d162, i32 0, i32 1) })
  store i32 %t680, ptr %l290
  br label %bb161
bb161:
  call void @__olang_scope_close(ptr %s35)
  br label %bb162
bb162:
  call void @__olang_scope_close(ptr %s30)
  br label %bb196
bb163:
  %t681 = load { i64, [8 x i64] }, ptr %l1
  %t683 = extractvalue { i64, [8 x i64] } %t681, 0
  %t684 = icmp eq i64 %t683, 9
  br i1 %t684, label %bb164, label %bb165
bb164:
  %t686 = getelementptr { i64, [8 x i64] }, ptr %l1, i32 0, i32 1
  %t687 = getelementptr { %"compiler/source:Span", i32, { i64, [4 x i64] } }, ptr %t686, i32 0, i32 1
  %t688 = load i32, ptr %t687, !range !{i32 0, i32 16}
  store i32 %t688, ptr %l26
  %t690 = getelementptr { i64, [8 x i64] }, ptr %l1, i32 0, i32 1
  %t691 = getelementptr { %"compiler/source:Span", i32, { i64, [4 x i64] } }, ptr %t690, i32 0, i32 2
  %t692 = load { i64, [4 x i64] }, ptr %t691
  store { i64, [4 x i64] } %t692, ptr %l27
  br label %bb166
bb165:
  br label %bb191
bb166:
  %t694 = load { i64, [4 x i64] }, ptr %l27
  %t696 = extractvalue { i64, [4 x i64] } %t694, 0
  %t697 = icmp eq i64 %t696, 0
  %t699 = xor i1 %t697, true
  br i1 %t699, label %bb167, label %bb168
bb167:
  %t701 = load i32, ptr %l26, !range !{i32 0, i32 16}
  %t703 = trunc i64 7 to i32
  %t704 = icmp eq i32 %t701, %t703
  %t706 = xor i1 %t704, true
  br i1 %t706, label %bb169, label %bb170
bb168:
  br label %bb190
bb169:
  %t708 = load i32, ptr %l26, !range !{i32 0, i32 16}
  %t710 = trunc i64 3 to i32
  %t711 = icmp eq i32 %t708, %t710
  %t713 = xor i1 %t711, true
  store i1 %t713, ptr %l301, !tbaa !21
  br label %bb171
bb170:
  store i1 false, ptr %l301, !tbaa !21
  br label %bb171
bb171:
  %t715 = load i1, ptr %l301, !tbaa !21
  br i1 %t715, label %bb172, label %bb173
bb172:
  %t716 = load i32, ptr %l26, !range !{i32 0, i32 16}
  %t718 = trunc i64 14 to i32
  %t719 = icmp eq i32 %t716, %t718
  %t721 = xor i1 %t719, true
  store i1 %t721, ptr %l305, !tbaa !21
  br label %bb174
bb173:
  store i1 false, ptr %l305, !tbaa !21
  br label %bb174
bb174:
  %t723 = load i1, ptr %l305, !tbaa !21
  br i1 %t723, label %bb175, label %bb176
bb175:
  %t724 = load i32, ptr %l26, !range !{i32 0, i32 16}
  %t726 = trunc i64 15 to i32
  %t727 = icmp eq i32 %t724, %t726
  %t729 = xor i1 %t727, true
  store i1 %t729, ptr %l309, !tbaa !21
  br label %bb177
bb176:
  store i1 false, ptr %l309, !tbaa !21
  br label %bb177
bb177:
  %t731 = load i1, ptr %l309, !tbaa !21
  br i1 %t731, label %bb178, label %bb179
bb178:
  store %olang.scope zeroinitializer, ptr %s38
  %t732 = load ptr, ptr %l0, !tbaa !29
  store ptr %t732, ptr %l313, !tbaa !29
  %t733 = load i32, ptr %l26, !range !{i32 0, i32 16}
  store i32 %t733, ptr %l314
  store %olang.builder { ptr null, i64 0, i64 64, ptr null, ptr null }, ptr %s39
  store ptr %s39room, ptr %s39
  call void @olang_2emir_2eHelperKind_2eRender_2ecompiler_2fmir_3aExitKind(ptr %s39, ptr %l314, i64 0)
  br label %bb180
bb179:
  br label %bb183
bb180:
  %t735 = load ptr, ptr %s39
  %t736 = getelementptr %olang.builder, ptr %s39, i32 0, i32 1
  %t737 = load i64, ptr %t736
  %t738 = call ptr @__olang_scope_alloc(ptr %s38, i64 %t737)
  call void @olang_textcopy(ptr %t738, ptr %t735, i64 %t737)
  %t739 = insertvalue { i64, ptr } undef, i64 %t737, 0
  %t740 = insertvalue { i64, ptr } %t739, ptr %t738, 1
  store { i64, ptr } %t740, ptr %l316, !tbaa !27
  %t741 = getelementptr %olang.builder, ptr %s39, i32 0, i32 3
  %t742 = load ptr, ptr %t741
  %t743 = icmp ne ptr %t742, null
  br i1 %t743, label %sbgrew.744, label %sbdone.745
sbgrew.744:
  call void @__olang_sb_done(ptr %s39)
  br label %sbdone.745
sbdone.745:
  %t746 = load { i64, ptr }, ptr %l316, !tbaa !27
  %t747 = extractvalue { i64, ptr } %t746, 0
  %t748 = extractvalue { i64, ptr } %t746, 1
  %t749 = mul i64 %t747, 1
  %t750 = call ptr @__olang_scope_alloc(ptr %s38, i64 %t749)
  call void @llvm.memcpy.p0.p0.i64(ptr %t750, ptr %t748, i64 %t749, i1 false)
  %t751 = insertvalue { i64, ptr } undef, i64 %t747, 0
  %t752 = insertvalue { i64, ptr } %t751, ptr %t750, 1
  %t754 = call { i64, ptr } @compiler_2fmir_2eshort(ptr %s38, ptr %s38, { i64, ptr } %t752)
  store { i64, ptr } %t754, ptr %l318
  br label %bb181
bb181:
  %t755 = extractvalue { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d163, i32 0, i32 1) }, 1
  %t756 = extractvalue { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d163, i32 0, i32 1) }, 0
  %t757 = load { i64, ptr }, ptr %l318, !tbaa !27
  %t758 = extractvalue { i64, ptr } %t757, 1
  %t759 = extractvalue { i64, ptr } %t757, 0
  %t760 = add i64 %t756, %t759
  %t761 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d164, i32 0, i32 1) }, 1
  %t762 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d164, i32 0, i32 1) }, 0
  %t763 = add i64 %t760, %t762
  %t764 = call ptr @__olang_scope_alloc(ptr %s38, i64 %t763)
  call void @olang_textcopy(ptr %t764, ptr %t755, i64 %t756)
  %t765 = getelementptr i8, ptr %t764, i64 %t756
  call void @olang_textcopy(ptr %t765, ptr %t758, i64 %t759)
  %t766 = getelementptr i8, ptr %t765, i64 %t759
  call void @olang_textcopy(ptr %t766, ptr %t761, i64 %t762)
  %t767 = insertvalue { i64, ptr } undef, i64 %t763, 0
  %t768 = insertvalue { i64, ptr } %t767, ptr %t764, 1
  %t770 = extractvalue { i64, ptr } %t768, 0
  %t771 = extractvalue { i64, ptr } %t768, 1
  %t772 = mul i64 %t770, 1
  %t773 = call ptr @__olang_scope_alloc(ptr %s38, i64 %t772)
  call void @llvm.memcpy.p0.p0.i64(ptr %t773, ptr %t771, i64 %t772, i1 false)
  %t774 = insertvalue { i64, ptr } undef, i64 %t770, 0
  %t775 = insertvalue { i64, ptr } %t774, ptr %t773, 1
  %t776 = load ptr, ptr %l313, !tbaa !29
  call void @compiler_2fmir_2ecompiler_2fmir_3averifier_2ebad(ptr %v0, ptr %s38, ptr %t776, { i64, ptr } %t775)
  br label %bb182
bb182:
  call void @__olang_scope_close(ptr %s38)
  br label %bb183
bb183:
  %t778 = load ptr, ptr %l0, !tbaa !29
  store ptr %t778, ptr %l321, !tbaa !29
  %t779 = load ptr, ptr %l0, !tbaa !29
  %t780 = load { i64, [4 x i64] }, ptr %l27
  %t783 = call i32 @compiler_2fmir_2ecompiler_2fmir_3averifier_2eoperandType(ptr %v0, ptr %v1, ptr %v2, ptr %t779, { i64, [4 x i64] } %t780)
  store i32 %t783, ptr %l324
  br label %bb184
bb184:
  %t784 = load ptr, ptr %l321, !tbaa !29
  %t785 = load i32, ptr %l324, !tbaa !23
  %t786 = call i1 @compiler_2fmir_2ecompiler_2fmir_3averifier_2eisText(ptr %v0, ptr %v2, ptr %t784, i32 %t785)
  store i1 %t786, ptr %l325
  br label %bb185
bb185:
  %t787 = load i1, ptr %l325, !tbaa !21
  %t788 = xor i1 %t787, true
  br i1 %t788, label %bb186, label %bb187
bb186:
  store %olang.scope zeroinitializer, ptr %s41
  %t790 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2fmir_2ecompiler_2fmir_3averifier_2ebad(ptr %v0, ptr %s41, ptr %t790, { i64, ptr } { i64 35, ptr getelementptr inbounds (<{ i64, [35 x i8] }>, ptr @.d165, i32 0, i32 1) })
  br label %bb188
bb187:
  br label %bb189
bb188:
  call void @__olang_scope_close(ptr %s41)
  br label %bb189
bb189:
  br label %bb190
bb190:
  br label %bb196
bb191:
  br i1 true, label %bb192, label %bb193
bb192:
  br label %bb194
bb193:
  br label %bb195
bb194:
  br label %bb196
bb195:
  call void @__olang_check_failed(ptr @olang_loc_37d613313db5ccb3_d9dd3d9ece558aa7)
  unreachable
bb196:
  br label %ret
ret:
  ret void
}

define dso_local i32 @compiler_2fmir_2ecompiler_2fmir_3averifier_2etextType(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, [1 x i64] } %a1, i32 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca i32
  %l7 = alloca i1
  %l9 = alloca ptr
  %l12 = alloca { i64, ptr }
  %s1 = alloca %olang.scope
  %rv = alloca i32
  store ptr %a0, ptr %l0
  store i32 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2fmir_2ecompiler_2fmir_3averifier_2ebuilder(ptr %v0, ptr %v1, ptr %t1, { i64, [1 x i64] } %a1)
  br label %bb1
bb1:
  %t5 = load ptr, ptr %l0, !tbaa !29
  %t6 = load i32, ptr %l2, !tbaa !23
  %t9 = call i1 @compiler_2fmir_2ecompiler_2fmir_3averifier_2eisText(ptr %v0, ptr %v2, ptr %t5, i32 %t6)
  store i1 %t9, ptr %l7
  br label %bb2
bb2:
  %t10 = load i1, ptr %l7, !tbaa !21
  %t11 = xor i1 %t10, true
  br i1 %t11, label %bb3, label %bb4
bb3:
  store %olang.scope zeroinitializer, ptr %s1
  %t13 = load ptr, ptr %l0, !tbaa !29
  store ptr %t13, ptr %l9, !tbaa !29
  %t14 = load ptr, ptr %l0, !tbaa !29
  %t15 = load i32, ptr %l2, !tbaa !23
  %t18 = call { i64, ptr } @compiler_2fmir_2ecompiler_2fmir_3averifier_2ecanon(ptr %v0, ptr %s1, ptr %v2, ptr %t14, i32 %t15)
  store { i64, ptr } %t18, ptr %l12
  br label %bb5
bb4:
  br label %bb7
bb5:
  %t19 = extractvalue { i64, ptr } { i64 11, ptr getelementptr inbounds (<{ i64, [11 x i8] }>, ptr @.d166, i32 0, i32 1) }, 1
  %t20 = extractvalue { i64, ptr } { i64 11, ptr getelementptr inbounds (<{ i64, [11 x i8] }>, ptr @.d166, i32 0, i32 1) }, 0
  %t21 = load { i64, ptr }, ptr %l12, !tbaa !27
  %t22 = extractvalue { i64, ptr } %t21, 1
  %t23 = extractvalue { i64, ptr } %t21, 0
  %t24 = add i64 %t20, %t23
  %t25 = call ptr @__olang_scope_alloc(ptr %s1, i64 %t24)
  call void @olang_textcopy(ptr %t25, ptr %t19, i64 %t20)
  %t26 = getelementptr i8, ptr %t25, i64 %t20
  call void @olang_textcopy(ptr %t26, ptr %t22, i64 %t23)
  %t27 = insertvalue { i64, ptr } undef, i64 %t24, 0
  %t28 = insertvalue { i64, ptr } %t27, ptr %t25, 1
  %t30 = extractvalue { i64, ptr } %t28, 0
  %t31 = extractvalue { i64, ptr } %t28, 1
  %t32 = mul i64 %t30, 1
  %t33 = call ptr @__olang_scope_alloc(ptr %s1, i64 %t32)
  call void @llvm.memcpy.p0.p0.i64(ptr %t33, ptr %t31, i64 %t32, i1 false)
  %t34 = insertvalue { i64, ptr } undef, i64 %t30, 0
  %t35 = insertvalue { i64, ptr } %t34, ptr %t33, 1
  %t36 = load ptr, ptr %l9, !tbaa !29
  call void @compiler_2fmir_2ecompiler_2fmir_3averifier_2ebad(ptr %v0, ptr %s1, ptr %t36, { i64, ptr } %t35)
  br label %bb6
bb6:
  call void @__olang_scope_close(ptr %s1)
  br label %bb7
bb7:
  %t38 = load i32, ptr %l2, !tbaa !23
  store i32 %t38, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local i1 @compiler_2fmir_2ecompiler_2fmir_3averifier_2ewithin(ptr %v0, ptr %v1, ptr %a0, %"compiler/mir:Range" %a1, i64 %a2, { i64, ptr } %a3) #0 {
entry:
  %l1 = alloca %"compiler/mir:Range"
  %l6 = alloca i1
  %l9 = alloca i1
  %s1 = alloca %olang.scope
  %rv = alloca i1
  store %"compiler/mir:Range" %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = getelementptr %"compiler/mir:Range", ptr %l1, i32 0, i32 0
  %t2 = load i32, ptr %t1, !tbaa !23
  %t4 = icmp slt i32 %t2, 0
  br i1 %t4, label %bb1, label %bb2
bb1:
  store i1 true, ptr %l6, !tbaa !21
  br label %bb3
bb2:
  %t6 = getelementptr %"compiler/mir:Range", ptr %l1, i32 0, i32 1
  %t7 = load i32, ptr %t6, !tbaa !23
  %t9 = icmp slt i32 %t7, 0
  store i1 %t9, ptr %l6, !tbaa !21
  br label %bb3
bb3:
  %t11 = load i1, ptr %l6, !tbaa !21
  br i1 %t11, label %bb4, label %bb5
bb4:
  store i1 true, ptr %l9, !tbaa !21
  br label %bb6
bb5:
  %t12 = getelementptr %"compiler/mir:Range", ptr %l1, i32 0, i32 0
  %t13 = load i32, ptr %t12, !tbaa !23
  %t15 = sext i32 %t13 to i64
  %t16 = getelementptr %"compiler/mir:Range", ptr %l1, i32 0, i32 1
  %t17 = load i32, ptr %t16, !tbaa !23
  %t19 = sext i32 %t17 to i64
  %t22 = add i64 %t15, %t19
  %t26 = icmp sgt i64 %t22, %a2
  store i1 %t26, ptr %l9, !tbaa !21
  br label %bb6
bb6:
  %t28 = load i1, ptr %l9, !tbaa !21
  br i1 %t28, label %bb7, label %bb8
bb7:
  store %olang.scope zeroinitializer, ptr %s1
  %t31 = extractvalue { i64, ptr } { i64 11, ptr getelementptr inbounds (<{ i64, [11 x i8] }>, ptr @.d167, i32 0, i32 1) }, 1
  %t32 = extractvalue { i64, ptr } { i64 11, ptr getelementptr inbounds (<{ i64, [11 x i8] }>, ptr @.d167, i32 0, i32 1) }, 0
  %t34 = extractvalue { i64, ptr } %a3, 1
  %t35 = extractvalue { i64, ptr } %a3, 0
  %t36 = add i64 %t32, %t35
  %t37 = extractvalue { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d168, i32 0, i32 1) }, 1
  %t38 = extractvalue { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d168, i32 0, i32 1) }, 0
  %t39 = add i64 %t36, %t38
  %t40 = call ptr @__olang_scope_alloc(ptr %s1, i64 %t39)
  call void @olang_textcopy(ptr %t40, ptr %t31, i64 %t32)
  %t41 = getelementptr i8, ptr %t40, i64 %t32
  call void @olang_textcopy(ptr %t41, ptr %t34, i64 %t35)
  %t42 = getelementptr i8, ptr %t41, i64 %t35
  call void @olang_textcopy(ptr %t42, ptr %t37, i64 %t38)
  %t43 = insertvalue { i64, ptr } undef, i64 %t39, 0
  %t44 = insertvalue { i64, ptr } %t43, ptr %t40, 1
  %t46 = extractvalue { i64, ptr } %t44, 0
  %t47 = extractvalue { i64, ptr } %t44, 1
  %t48 = mul i64 %t46, 1
  %t49 = call ptr @__olang_scope_alloc(ptr %s1, i64 %t48)
  call void @llvm.memcpy.p0.p0.i64(ptr %t49, ptr %t47, i64 %t48, i1 false)
  %t50 = insertvalue { i64, ptr } undef, i64 %t46, 0
  %t51 = insertvalue { i64, ptr } %t50, ptr %t49, 1
  call void @compiler_2fmir_2ecompiler_2fmir_3averifier_2ebad(ptr %v0, ptr %s1, ptr %a0, { i64, ptr } %t51)
  br label %bb9
bb8:
  br label %bb10
bb9:
  call void @__olang_scope_close(ptr %s1)
  store i1 false, ptr %rv
  br label %ret
bb10:
  store i1 true, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local { i64, ptr } @compiler_2fmir_2eshort(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l2 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i32
  %l7 = alloca { i64, ptr }
  %l9 = alloca i64
  %l12 = alloca i64
  %l13 = alloca i64
  %s0 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  store { i64, ptr } %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t3 = call { i32, i64 } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eFindLast(ptr %v0, ptr %s0, { i64, ptr } %t1, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d169, i32 0, i32 1) })
  %t4 = extractvalue { i32, i64 } %t3, 1
  %t5 = extractvalue { i32, i64 } %t3, 0
  store i32 %t5, ptr %l5
  %t6 = icmp ne i32 %t5, 0
  br i1 %t6, label %bb2, label %ok.7, !prof !99
ok.7:
  store i64 %t4, ptr %l4
  br label %bb1
bb1:
  %t8 = load i64, ptr %l4, !tbaa !24
  store i64 %t8, ptr %l2, !tbaa !24
  br label %bb4
bb2:
  br label %bb3
bb3:
  %t9 = load { i64, ptr }, ptr %l0, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  store { i64, ptr } %t9, ptr %rv
  br label %ret
bb4:
  %t11 = load i64, ptr %l2, !tbaa !24
  %t12 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t12, ptr %l7, !tbaa !27
  %t15 = add i64 %t11, 1
  store i64 %t15, ptr %l9, !tbaa !24
  %t16 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t19 = extractvalue { i64, ptr } %t16, 0
  store i64 %t19, ptr %l12, !tbaa !24
  %t20 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t21 = extractvalue { i64, ptr } %t20, 0
  store i64 %t21, ptr %l13, !tbaa !24
  %t22 = load i64, ptr %l9, !tbaa !24
  %t23 = icmp sge i64 %t22, 0
  br i1 %t23, label %bb5, label %bb6
bb5:
  %t25 = load i64, ptr %l9, !tbaa !24
  %t26 = load i64, ptr %l12, !tbaa !24
  %t27 = icmp sle i64 %t25, %t26
  br i1 %t27, label %bb7, label %bb8
bb6:
  call void @__olang_check_failed(ptr @olang_loc_91402ead91eecd74_d65ac3d6c8116e0)
  unreachable
bb7:
  %t29 = load i64, ptr %l12, !tbaa !24
  %t30 = load i64, ptr %l13, !tbaa !24
  %t31 = icmp sle i64 %t29, %t30
  br i1 %t31, label %bb9, label %bb10
bb8:
  call void @__olang_check_failed(ptr @olang_loc_91402ead91eecd74_d65ac3d6c8116e0)
  unreachable
bb9:
  %t33 = getelementptr { i64, ptr }, ptr %l7, i32 0, i32 1
  %t34 = load ptr, ptr %t33, !tbaa !27
  %t35 = load i64, ptr %l9, !tbaa !24
  %t36 = load i64, ptr %l12, !tbaa !24
  %t37 = getelementptr i8, ptr %t34, i64 %t35
  %t38 = sub i64 %t36, %t35
  %t39 = insertvalue { i64, ptr } undef, i64 %t38, 0
  %t40 = insertvalue { i64, ptr } %t39, ptr %t37, 1
  call void @__olang_scope_close(ptr %s0)
  store { i64, ptr } %t40, ptr %rv
  br label %ret
bb10:
  call void @__olang_check_failed(ptr @olang_loc_91402ead91eecd74_d65ac3d6c8116e0)
  unreachable
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local %"compiler/mir:Lvalue" @compiler_2fmir_3aLvalue_2ector(ptr %v0, { i64, [2 x i64] } %a0, %"compiler/mir:Range" %a1) #0 {
entry:
  %rv = alloca %"compiler/mir:Lvalue"
  br label %start
start:
  br label %bb0
bb0:
  %t6 = insertvalue %"compiler/mir:Lvalue" undef, { i64, [2 x i64] } %a0, 0
  %t8 = insertvalue %"compiler/mir:Lvalue" %t6, %"compiler/mir:Range" %a1, 1
  store %"compiler/mir:Lvalue" %t8, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/mir:Lvalue", ptr %rv
  ret %"compiler/mir:Lvalue" %rr
}

define dso_local %"compiler/mir:Range" @compiler_2fmir_3aRange_2ector(ptr %v0, i32 %a0, i32 %a1) #0 {
entry:
  %rv = alloca %"compiler/mir:Range"
  br label %start
start:
  br label %bb0
bb0:
  %t6 = insertvalue %"compiler/mir:Range" undef, i32 %a0, 0
  %t8 = insertvalue %"compiler/mir:Range" %t6, i32 %a1, 1
  store %"compiler/mir:Range" %t8, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/mir:Range", ptr %rv
  ret %"compiler/mir:Range" %rr
}

define dso_local %"compiler/mir:Task" @compiler_2fmir_3aTask_2ector(ptr %v0, { i64, [7 x i64] } %a0, %"compiler/mir:Range" %a1, %"compiler/mir:Range" %a2, %"compiler/mir:Range" %a3, %"compiler/mir:Range" %a4, %"compiler/mir:Range" %a5, %"compiler/source:Span" %a6, %"compiler/mir:Range" %a7) #0 {
entry:
  %rv = alloca %"compiler/mir:Task"
  br label %start
start:
  br label %bb0
bb0:
  %t18 = insertvalue %"compiler/mir:Task" undef, { i64, [7 x i64] } %a0, 0
  %t20 = insertvalue %"compiler/mir:Task" %t18, %"compiler/mir:Range" %a1, 1
  %t22 = insertvalue %"compiler/mir:Task" %t20, %"compiler/mir:Range" %a2, 2
  %t24 = insertvalue %"compiler/mir:Task" %t22, %"compiler/mir:Range" %a3, 3
  %t26 = insertvalue %"compiler/mir:Task" %t24, %"compiler/mir:Range" %a4, 4
  %t28 = insertvalue %"compiler/mir:Task" %t26, %"compiler/mir:Range" %a5, 5
  %t30 = insertvalue %"compiler/mir:Task" %t28, %"compiler/source:Span" %a6, 6
  %t32 = insertvalue %"compiler/mir:Task" %t30, %"compiler/mir:Range" %a7, 7
  store %"compiler/mir:Task" %t32, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/mir:Task", ptr %rv
  ret %"compiler/mir:Task" %rr
}

define dso_local %"compiler/mir:dumper" @compiler_2fmir_3adumper_2ector(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1) #0 {
entry:
  %l2 = alloca ptr
  %l3 = alloca ptr
  %l7 = alloca i64
  %l9 = alloca %"std/prelude/text:StringBuilder"
  %rv = alloca %"compiler/mir:dumper"
  br label %start
start:
  br label %bb0
bb0:
  store ptr %a0, ptr %l2, !tbaa !29
  store ptr %a1, ptr %l3, !tbaa !29
  %t5 = ptrtoint ptr %v2 to i64
  store i64 %t5, ptr %l7, !tbaa !24
  %t6 = load i1, ptr @olang_2esole_2ecompiler_2fmir_3adumper_2e2
  br i1 %t6, label %bb1, label %bb2
bb1:
  %t8 = call ptr @__olang_region_make(ptr %v2)
  %t9 = ptrtoint ptr %t8 to i64
  store i64 %t9, ptr %l7, !tbaa !24
  br label %bb2
bb2:
  %t10 = load i64, ptr %l7
  %t11 = inttoptr i64 %t10 to ptr
  %t12 = call %"std/prelude/text:StringBuilder" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2ftext_3aStringBuilder(ptr %t11)
  store %"std/prelude/text:StringBuilder" %t12, ptr %l9
  br label %bb3
bb3:
  %t13 = load i1, ptr @olang_2esole_2ecompiler_2fmir_3adumper_2e2
  br i1 %t13, label %bb4, label %bb5
bb4:
  %t15 = load i64, ptr %l7
  %t16 = inttoptr i64 %t15 to ptr
  %t17 = getelementptr %"std/prelude/text:StringBuilder", ptr %l9, i32 0, i32 0
  %t18 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t17, i32 0, i32 0
  %t19 = load { i64, ptr }, ptr %t18
  %t20 = extractvalue { i64, ptr } %t19, 1
  %t21 = call ptr @__olang_region_or(ptr %t20, ptr null)
  %t22 = icmp ne ptr %t21, null
  %t23 = select i1 %t22, ptr %t21, ptr null
  %t24 = icmp eq ptr %t23, %t16
  call void @__olang_region_settle(ptr %t16, i1 %t24)
  br label %bb5
bb5:
  %t25 = load %"std/prelude/text:StringBuilder", ptr %l9
  %t26 = load ptr, ptr %l2, !tbaa !29
  %t27 = insertvalue %"compiler/mir:dumper" undef, ptr %t26, 0
  %t28 = load ptr, ptr %l3, !tbaa !29
  %t29 = insertvalue %"compiler/mir:dumper" %t27, ptr %t28, 1
  %t31 = insertvalue %"compiler/mir:dumper" %t29, %"std/prelude/text:StringBuilder" %t25, 2
  store %"compiler/mir:dumper" %t31, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/mir:dumper", ptr %rv
  ret %"compiler/mir:dumper" %rr
}

@.d0 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"I32" }>, align 8
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
@.d1 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"x" }>, align 8
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
@.d2 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"I64" }>, align 8
@.d3 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"i" }>, align 8
declare noalias ptr @__olang_scope_alloc_zeroed(ptr, i64)
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
@.d4 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c"extern " }>, align 8
declare i64 @__olang_fmt_i64(ptr, i64)
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
@.d5 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"(" }>, align 8
@.d6 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c")" }>, align 8
@.d7 = private constant <{ i64, [9 x i8] }> <{ i64 0, [9 x i8] c"dispatch#" }>, align 8
@.d8 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c" (" }>, align 8
@.d9 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c")" }>, align 8
@.d10 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"  " }>, align 8
@.d11 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c", " }>, align 8
@.d12 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
declare void @llvm.memcpy.p0.p0.i64(ptr, ptr, i64, i1)
@.d13 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c", " }>, align 8
@.d14 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d15 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c" = " }>, align 8
@.d16 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"live L" }>, align 8
@.d17 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"dead L" }>, align 8
@.d18 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"open S" }>, align 8
@.d19 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c"close S" }>, align 8
@.d20 = private constant <{ i64, [14 x i8] }> <{ i64 0, [14 x i8] c"register dtor " }>, align 8
@.d21 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d22 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c" in " }>, align 8
@.d23 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c"release " }>, align 8
@.d24 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c"settle L" }>, align 8
@.d25 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c" by " }>, align 8
define linkonce_odr void @olang_2emir_2eHelperKind_2eRender_2ecompiler_2fmir_3aWriteKind(ptr %v0, ptr %a0, i64 %a1) #0 {
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
  %t5 = extractvalue { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d170, i32 0, i32 1) }, 1
  %t6 = extractvalue { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d170, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t5, i64 %t6)
  br label %bb1
bb3:
  %t7 = extractvalue { i64, ptr } { i64 20, ptr getelementptr inbounds (<{ i64, [20 x i8] }>, ptr @.d171, i32 0, i32 1) }, 1
  %t8 = extractvalue { i64, ptr } { i64 20, ptr getelementptr inbounds (<{ i64, [20 x i8] }>, ptr @.d171, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t7, i64 %t8)
  br label %bb1
bb4:
  %t9 = extractvalue { i64, ptr } { i64 18, ptr getelementptr inbounds (<{ i64, [18 x i8] }>, ptr @.d172, i32 0, i32 1) }, 1
  %t10 = extractvalue { i64, ptr } { i64 18, ptr getelementptr inbounds (<{ i64, [18 x i8] }>, ptr @.d172, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t9, i64 %t10)
  br label %bb1
bb5:
  %t11 = extractvalue { i64, ptr } { i64 24, ptr getelementptr inbounds (<{ i64, [24 x i8] }>, ptr @.d173, i32 0, i32 1) }, 1
  %t12 = extractvalue { i64, ptr } { i64 24, ptr getelementptr inbounds (<{ i64, [24 x i8] }>, ptr @.d173, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t11, i64 %t12)
  br label %bb1
bb6:
  %t13 = extractvalue { i64, ptr } { i64 17, ptr getelementptr inbounds (<{ i64, [17 x i8] }>, ptr @.d174, i32 0, i32 1) }, 1
  %t14 = extractvalue { i64, ptr } { i64 17, ptr getelementptr inbounds (<{ i64, [17 x i8] }>, ptr @.d174, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t13, i64 %t14)
  br label %bb1
bb7:
  %t15 = extractvalue { i64, ptr } { i64 18, ptr getelementptr inbounds (<{ i64, [18 x i8] }>, ptr @.d175, i32 0, i32 1) }, 1
  %t16 = extractvalue { i64, ptr } { i64 18, ptr getelementptr inbounds (<{ i64, [18 x i8] }>, ptr @.d175, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t15, i64 %t16)
  br label %bb1
bb8:
  %t17 = extractvalue { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d176, i32 0, i32 1) }, 1
  %t18 = extractvalue { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d176, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t17, i64 %t18)
  br label %bb1
bb9:
  %t19 = extractvalue { i64, ptr } { i64 18, ptr getelementptr inbounds (<{ i64, [18 x i8] }>, ptr @.d177, i32 0, i32 1) }, 1
  %t20 = extractvalue { i64, ptr } { i64 18, ptr getelementptr inbounds (<{ i64, [18 x i8] }>, ptr @.d177, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t19, i64 %t20)
  br label %bb1
ret:
  ret void
}

declare void @__olang_sb_done(ptr)
@.d26 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"write " }>, align 8
@.d27 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d28 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c" to " }>, align 8
@.d29 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"copy " }>, align 8
@.d30 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c" from " }>, align 8
@.d31 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c" to " }>, align 8
@.d32 = private constant <{ i64, [10 x i8] }> <{ i64 0, [10 x i8] c"spawn in S" }>, align 8
@.d33 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d34 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"raised" }>, align 8
@.d35 = private constant <{ i64, [12 x i8] }> <{ i64 0, [12 x i8] c"payload set " }>, align 8
@.d36 = private constant <{ i64, [11 x i8] }> <{ i64 0, [11 x i8] c"payload pop" }>, align 8
@.d37 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c"holders " }>, align 8
@.d38 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c" by " }>, align 8
@.d39 = private constant <{ i64, [11 x i8] }> <{ i64 0, [11 x i8] c" cleanup bb" }>, align 8
@.d40 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c" runs" }>, align 8
@.d41 = private constant <{ i64, [13 x i8] }> <{ i64 0, [13 x i8] c"deferred at S" }>, align 8
@.d42 = private constant <{ i64, [15 x i8] }> <{ i64 0, [15 x i8] c"(no terminator)" }>, align 8
@.d43 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c"goto bb" }>, align 8
@.d44 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c"branch " }>, align 8
@.d45 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c" bb" }>, align 8
@.d46 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c"switch " }>, align 8
@.d47 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c" [" }>, align 8
@.d48 = private constant <{ i64, [9 x i8] }> <{ i64 0, [9 x i8] c"] else bb" }>, align 8
@.d49 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c"become " }>, align 8
@.d50 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d51 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d52 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"return" }>, align 8
@.d53 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"raise " }>, align 8
@.d54 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c"suspend " }>, align 8
@.d55 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c" then bb" }>, align 8
@.d56 = private constant <{ i64, [9 x i8] }> <{ i64 0, [9 x i8] c" holding " }>, align 8
@.d57 = private constant <{ i64, [11 x i8] }> <{ i64 0, [11 x i8] c" dropped bb" }>, align 8
@.d58 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c"dropped" }>, align 8
@.d59 = private constant <{ i64, [9 x i8] }> <{ i64 0, [9 x i8] c" failed L" }>, align 8
@.d60 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c" bb" }>, align 8
@.d61 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d62 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"wait S" }>, align 8
@.d63 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c" then bb" }>, align 8
define linkonce_odr void @olang_2emir_2eHelperKind_2eRender_2ecompiler_2fmir_3aExitKind(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l1 = alloca i64
  store i64 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t2 = load i32, ptr %a0, !range !{i32 0, i32 16}
  %t3 = sext i32 %t2 to i64
  switch i64 %t3, label %bb1 [ i64 0, label %bb2 i64 1, label %bb3 i64 2, label %bb4 i64 3, label %bb5 i64 4, label %bb6 i64 5, label %bb7 i64 6, label %bb8 i64 7, label %bb9 i64 8, label %bb10 i64 9, label %bb11 i64 10, label %bb12 i64 11, label %bb13 i64 12, label %bb14 i64 13, label %bb15 i64 14, label %bb16 i64 15, label %bb17 ]
bb1:
  br label %ret
bb2:
  %t5 = extractvalue { i64, ptr } { i64 17, ptr getelementptr inbounds (<{ i64, [17 x i8] }>, ptr @.d178, i32 0, i32 1) }, 1
  %t6 = extractvalue { i64, ptr } { i64 17, ptr getelementptr inbounds (<{ i64, [17 x i8] }>, ptr @.d178, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t5, i64 %t6)
  br label %bb1
bb3:
  %t7 = extractvalue { i64, ptr } { i64 17, ptr getelementptr inbounds (<{ i64, [17 x i8] }>, ptr @.d179, i32 0, i32 1) }, 1
  %t8 = extractvalue { i64, ptr } { i64 17, ptr getelementptr inbounds (<{ i64, [17 x i8] }>, ptr @.d179, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t7, i64 %t8)
  br label %bb1
bb4:
  %t9 = extractvalue { i64, ptr } { i64 18, ptr getelementptr inbounds (<{ i64, [18 x i8] }>, ptr @.d180, i32 0, i32 1) }, 1
  %t10 = extractvalue { i64, ptr } { i64 18, ptr getelementptr inbounds (<{ i64, [18 x i8] }>, ptr @.d180, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t9, i64 %t10)
  br label %bb1
bb5:
  %t11 = extractvalue { i64, ptr } { i64 24, ptr getelementptr inbounds (<{ i64, [24 x i8] }>, ptr @.d181, i32 0, i32 1) }, 1
  %t12 = extractvalue { i64, ptr } { i64 24, ptr getelementptr inbounds (<{ i64, [24 x i8] }>, ptr @.d181, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t11, i64 %t12)
  br label %bb1
bb6:
  %t13 = extractvalue { i64, ptr } { i64 24, ptr getelementptr inbounds (<{ i64, [24 x i8] }>, ptr @.d182, i32 0, i32 1) }, 1
  %t14 = extractvalue { i64, ptr } { i64 24, ptr getelementptr inbounds (<{ i64, [24 x i8] }>, ptr @.d182, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t13, i64 %t14)
  br label %bb1
bb7:
  %t15 = extractvalue { i64, ptr } { i64 22, ptr getelementptr inbounds (<{ i64, [22 x i8] }>, ptr @.d183, i32 0, i32 1) }, 1
  %t16 = extractvalue { i64, ptr } { i64 22, ptr getelementptr inbounds (<{ i64, [22 x i8] }>, ptr @.d183, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t15, i64 %t16)
  br label %bb1
bb8:
  %t17 = extractvalue { i64, ptr } { i64 22, ptr getelementptr inbounds (<{ i64, [22 x i8] }>, ptr @.d184, i32 0, i32 1) }, 1
  %t18 = extractvalue { i64, ptr } { i64 22, ptr getelementptr inbounds (<{ i64, [22 x i8] }>, ptr @.d184, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t17, i64 %t18)
  br label %bb1
bb9:
  %t19 = extractvalue { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d185, i32 0, i32 1) }, 1
  %t20 = extractvalue { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d185, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t19, i64 %t20)
  br label %bb1
bb10:
  %t21 = extractvalue { i64, ptr } { i64 24, ptr getelementptr inbounds (<{ i64, [24 x i8] }>, ptr @.d186, i32 0, i32 1) }, 1
  %t22 = extractvalue { i64, ptr } { i64 24, ptr getelementptr inbounds (<{ i64, [24 x i8] }>, ptr @.d186, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t21, i64 %t22)
  br label %bb1
bb11:
  %t23 = extractvalue { i64, ptr } { i64 24, ptr getelementptr inbounds (<{ i64, [24 x i8] }>, ptr @.d187, i32 0, i32 1) }, 1
  %t24 = extractvalue { i64, ptr } { i64 24, ptr getelementptr inbounds (<{ i64, [24 x i8] }>, ptr @.d187, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t23, i64 %t24)
  br label %bb1
bb12:
  %t25 = extractvalue { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d188, i32 0, i32 1) }, 1
  %t26 = extractvalue { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d188, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t25, i64 %t26)
  br label %bb1
bb13:
  %t27 = extractvalue { i64, ptr } { i64 24, ptr getelementptr inbounds (<{ i64, [24 x i8] }>, ptr @.d189, i32 0, i32 1) }, 1
  %t28 = extractvalue { i64, ptr } { i64 24, ptr getelementptr inbounds (<{ i64, [24 x i8] }>, ptr @.d189, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t27, i64 %t28)
  br label %bb1
bb14:
  %t29 = extractvalue { i64, ptr } { i64 23, ptr getelementptr inbounds (<{ i64, [23 x i8] }>, ptr @.d190, i32 0, i32 1) }, 1
  %t30 = extractvalue { i64, ptr } { i64 23, ptr getelementptr inbounds (<{ i64, [23 x i8] }>, ptr @.d190, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t29, i64 %t30)
  br label %bb1
bb15:
  %t31 = extractvalue { i64, ptr } { i64 23, ptr getelementptr inbounds (<{ i64, [23 x i8] }>, ptr @.d191, i32 0, i32 1) }, 1
  %t32 = extractvalue { i64, ptr } { i64 23, ptr getelementptr inbounds (<{ i64, [23 x i8] }>, ptr @.d191, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t31, i64 %t32)
  br label %bb1
bb16:
  %t33 = extractvalue { i64, ptr } { i64 18, ptr getelementptr inbounds (<{ i64, [18 x i8] }>, ptr @.d192, i32 0, i32 1) }, 1
  %t34 = extractvalue { i64, ptr } { i64 18, ptr getelementptr inbounds (<{ i64, [18 x i8] }>, ptr @.d192, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t33, i64 %t34)
  br label %bb1
bb17:
  %t35 = extractvalue { i64, ptr } { i64 20, ptr getelementptr inbounds (<{ i64, [20 x i8] }>, ptr @.d193, i32 0, i32 1) }, 1
  %t36 = extractvalue { i64, ptr } { i64 20, ptr getelementptr inbounds (<{ i64, [20 x i8] }>, ptr @.d193, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t35, i64 %t36)
  br label %bb1
ret:
  ret void
}

@.d64 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d65 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d66 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"exit " }>, align 8
@.d67 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"resume" }>, align 8
@.d68 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"a " }>, align 8
@.d69 = private constant <{ i64, [9 x i8] }> <{ i64 0, [9 x i8] c" made of " }>, align 8
@.d70 = private constant <{ i64, [9 x i8] }> <{ i64 0, [9 x i8] c" elements" }>, align 8
@.d71 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c"element " }>, align 8
@.d72 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c"no case " }>, align 8
@.d73 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c" in a " }>, align 8
@.d74 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"a " }>, align 8
@.d75 = private constant <{ i64, [14 x i8] }> <{ i64 0, [14 x i8] c" made of parts" }>, align 8
@.d76 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"fn: " }>, align 8
@.d77 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"bb" }>, align 8
@.d78 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c"[term]: " }>, align 8
@.d79 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"bb" }>, align 8
@.d80 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"[" }>, align 8
@.d81 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"]: " }>, align 8
@.d82 = private constant <{ i64, [27 x i8] }> <{ i64 0, [27 x i8] c"a text builder that is none" }>, align 8
@.d83 = private constant <{ i64, [9 x i8] }> <{ i64 0, [9 x i8] c"constant " }>, align 8
@.d84 = private constant <{ i64, [16 x i8] }> <{ i64 0, [16 x i8] c" holds constant " }>, align 8
@.d85 = private constant <{ i64, [20 x i8] }> <{ i64 0, [20 x i8] c", not made before it" }>, align 8
@.d86 = private constant <{ i64, [10 x i8] }> <{ i64 0, [10 x i8] c"no local L" }>, align 8
@.d87 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"none" }>, align 8
@.d88 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"S" }>, align 8
@.d89 = private constant <{ i64, [18 x i8] }> <{ i64 0, [18 x i8] c"a new array typed " }>, align 8
@.d90 = private constant <{ i64, [29 x i8] }> <{ i64 0, [29 x i8] c", not a run-time-length array" }>, align 8
@.d91 = private constant <{ i64, [39 x i8] }> <{ i64 0, [39 x i8] c"a new array's length that is no integer" }>, align 8
@.d92 = private constant <{ i64, [18 x i8] }> <{ i64 0, [18 x i8] c"a new array's fill" }>, align 8
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
  %t5 = extractvalue { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d194, i32 0, i32 1) }, 1
  %t6 = extractvalue { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d194, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t5, i64 %t6)
  br label %bb1
bb3:
  %t7 = extractvalue { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d195, i32 0, i32 1) }, 1
  %t8 = extractvalue { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d195, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t7, i64 %t8)
  br label %bb1
bb4:
  %t9 = extractvalue { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d196, i32 0, i32 1) }, 1
  %t10 = extractvalue { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d196, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t9, i64 %t10)
  br label %bb1
bb5:
  %t11 = extractvalue { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d197, i32 0, i32 1) }, 1
  %t12 = extractvalue { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d197, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t11, i64 %t12)
  br label %bb1
bb6:
  %t13 = extractvalue { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d198, i32 0, i32 1) }, 1
  %t14 = extractvalue { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d198, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t13, i64 %t14)
  br label %bb1
bb7:
  %t15 = extractvalue { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d199, i32 0, i32 1) }, 1
  %t16 = extractvalue { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d199, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t15, i64 %t16)
  br label %bb1
bb8:
  %t17 = extractvalue { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d200, i32 0, i32 1) }, 1
  %t18 = extractvalue { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d200, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t17, i64 %t18)
  br label %bb1
bb9:
  %t19 = extractvalue { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d201, i32 0, i32 1) }, 1
  %t20 = extractvalue { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d201, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t19, i64 %t20)
  br label %bb1
bb10:
  %t21 = extractvalue { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d202, i32 0, i32 1) }, 1
  %t22 = extractvalue { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d202, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t21, i64 %t22)
  br label %bb1
bb11:
  %t23 = extractvalue { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d203, i32 0, i32 1) }, 1
  %t24 = extractvalue { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d203, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t23, i64 %t24)
  br label %bb1
bb12:
  %t25 = extractvalue { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d204, i32 0, i32 1) }, 1
  %t26 = extractvalue { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d204, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t25, i64 %t26)
  br label %bb1
bb13:
  %t27 = extractvalue { i64, ptr } { i64 18, ptr getelementptr inbounds (<{ i64, [18 x i8] }>, ptr @.d205, i32 0, i32 1) }, 1
  %t28 = extractvalue { i64, ptr } { i64 18, ptr getelementptr inbounds (<{ i64, [18 x i8] }>, ptr @.d205, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t27, i64 %t28)
  br label %bb1
bb14:
  %t29 = extractvalue { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d206, i32 0, i32 1) }, 1
  %t30 = extractvalue { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d206, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t29, i64 %t30)
  br label %bb1
bb15:
  %t31 = extractvalue { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d207, i32 0, i32 1) }, 1
  %t32 = extractvalue { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d207, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t31, i64 %t32)
  br label %bb1
bb16:
  %t33 = extractvalue { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d208, i32 0, i32 1) }, 1
  %t34 = extractvalue { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d208, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t33, i64 %t34)
  br label %bb1
bb17:
  %t35 = extractvalue { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d209, i32 0, i32 1) }, 1
  %t36 = extractvalue { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d209, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t35, i64 %t36)
  br label %bb1
bb18:
  %t37 = extractvalue { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d210, i32 0, i32 1) }, 1
  %t38 = extractvalue { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d210, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t37, i64 %t38)
  br label %bb1
bb19:
  %t39 = extractvalue { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d211, i32 0, i32 1) }, 1
  %t40 = extractvalue { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d211, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t39, i64 %t40)
  br label %bb1
bb20:
  %t41 = extractvalue { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d212, i32 0, i32 1) }, 1
  %t42 = extractvalue { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d212, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t41, i64 %t42)
  br label %bb1
bb21:
  %t43 = extractvalue { i64, ptr } { i64 17, ptr getelementptr inbounds (<{ i64, [17 x i8] }>, ptr @.d213, i32 0, i32 1) }, 1
  %t44 = extractvalue { i64, ptr } { i64 17, ptr getelementptr inbounds (<{ i64, [17 x i8] }>, ptr @.d213, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t43, i64 %t44)
  br label %bb1
bb22:
  %t45 = extractvalue { i64, ptr } { i64 20, ptr getelementptr inbounds (<{ i64, [20 x i8] }>, ptr @.d214, i32 0, i32 1) }, 1
  %t46 = extractvalue { i64, ptr } { i64 20, ptr getelementptr inbounds (<{ i64, [20 x i8] }>, ptr @.d214, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t45, i64 %t46)
  br label %bb1
bb23:
  %t47 = extractvalue { i64, ptr } { i64 20, ptr getelementptr inbounds (<{ i64, [20 x i8] }>, ptr @.d215, i32 0, i32 1) }, 1
  %t48 = extractvalue { i64, ptr } { i64 20, ptr getelementptr inbounds (<{ i64, [20 x i8] }>, ptr @.d215, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t47, i64 %t48)
  br label %bb1
bb24:
  %t49 = extractvalue { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d216, i32 0, i32 1) }, 1
  %t50 = extractvalue { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d216, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t49, i64 %t50)
  br label %bb1
bb25:
  %t51 = extractvalue { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d217, i32 0, i32 1) }, 1
  %t52 = extractvalue { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d217, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t51, i64 %t52)
  br label %bb1
bb26:
  %t53 = extractvalue { i64, ptr } { i64 23, ptr getelementptr inbounds (<{ i64, [23 x i8] }>, ptr @.d218, i32 0, i32 1) }, 1
  %t54 = extractvalue { i64, ptr } { i64 23, ptr getelementptr inbounds (<{ i64, [23 x i8] }>, ptr @.d218, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t53, i64 %t54)
  br label %bb1
bb27:
  %t55 = extractvalue { i64, ptr } { i64 24, ptr getelementptr inbounds (<{ i64, [24 x i8] }>, ptr @.d219, i32 0, i32 1) }, 1
  %t56 = extractvalue { i64, ptr } { i64 24, ptr getelementptr inbounds (<{ i64, [24 x i8] }>, ptr @.d219, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t55, i64 %t56)
  br label %bb1
bb28:
  %t57 = extractvalue { i64, ptr } { i64 22, ptr getelementptr inbounds (<{ i64, [22 x i8] }>, ptr @.d220, i32 0, i32 1) }, 1
  %t58 = extractvalue { i64, ptr } { i64 22, ptr getelementptr inbounds (<{ i64, [22 x i8] }>, ptr @.d220, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t57, i64 %t58)
  br label %bb1
bb29:
  %t59 = extractvalue { i64, ptr } { i64 23, ptr getelementptr inbounds (<{ i64, [23 x i8] }>, ptr @.d221, i32 0, i32 1) }, 1
  %t60 = extractvalue { i64, ptr } { i64 23, ptr getelementptr inbounds (<{ i64, [23 x i8] }>, ptr @.d221, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t59, i64 %t60)
  br label %bb1
bb30:
  %t61 = extractvalue { i64, ptr } { i64 30, ptr getelementptr inbounds (<{ i64, [30 x i8] }>, ptr @.d222, i32 0, i32 1) }, 1
  %t62 = extractvalue { i64, ptr } { i64 30, ptr getelementptr inbounds (<{ i64, [30 x i8] }>, ptr @.d222, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t61, i64 %t62)
  br label %bb1
bb31:
  %t63 = extractvalue { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d223, i32 0, i32 1) }, 1
  %t64 = extractvalue { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d223, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t63, i64 %t64)
  br label %bb1
bb32:
  %t65 = extractvalue { i64, ptr } { i64 17, ptr getelementptr inbounds (<{ i64, [17 x i8] }>, ptr @.d224, i32 0, i32 1) }, 1
  %t66 = extractvalue { i64, ptr } { i64 17, ptr getelementptr inbounds (<{ i64, [17 x i8] }>, ptr @.d224, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t65, i64 %t66)
  br label %bb1
bb33:
  %t67 = extractvalue { i64, ptr } { i64 25, ptr getelementptr inbounds (<{ i64, [25 x i8] }>, ptr @.d225, i32 0, i32 1) }, 1
  %t68 = extractvalue { i64, ptr } { i64 25, ptr getelementptr inbounds (<{ i64, [25 x i8] }>, ptr @.d225, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t67, i64 %t68)
  br label %bb1
bb34:
  %t69 = extractvalue { i64, ptr } { i64 26, ptr getelementptr inbounds (<{ i64, [26 x i8] }>, ptr @.d226, i32 0, i32 1) }, 1
  %t70 = extractvalue { i64, ptr } { i64 26, ptr getelementptr inbounds (<{ i64, [26 x i8] }>, ptr @.d226, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t69, i64 %t70)
  br label %bb1
bb35:
  %t71 = extractvalue { i64, ptr } { i64 21, ptr getelementptr inbounds (<{ i64, [21 x i8] }>, ptr @.d227, i32 0, i32 1) }, 1
  %t72 = extractvalue { i64, ptr } { i64 21, ptr getelementptr inbounds (<{ i64, [21 x i8] }>, ptr @.d227, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t71, i64 %t72)
  br label %bb1
bb36:
  %t73 = extractvalue { i64, ptr } { i64 23, ptr getelementptr inbounds (<{ i64, [23 x i8] }>, ptr @.d228, i32 0, i32 1) }, 1
  %t74 = extractvalue { i64, ptr } { i64 23, ptr getelementptr inbounds (<{ i64, [23 x i8] }>, ptr @.d228, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t73, i64 %t74)
  br label %bb1
bb37:
  %t75 = extractvalue { i64, ptr } { i64 24, ptr getelementptr inbounds (<{ i64, [24 x i8] }>, ptr @.d229, i32 0, i32 1) }, 1
  %t76 = extractvalue { i64, ptr } { i64 24, ptr getelementptr inbounds (<{ i64, [24 x i8] }>, ptr @.d229, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t75, i64 %t76)
  br label %bb1
bb38:
  %t77 = extractvalue { i64, ptr } { i64 21, ptr getelementptr inbounds (<{ i64, [21 x i8] }>, ptr @.d230, i32 0, i32 1) }, 1
  %t78 = extractvalue { i64, ptr } { i64 21, ptr getelementptr inbounds (<{ i64, [21 x i8] }>, ptr @.d230, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t77, i64 %t78)
  br label %bb1
bb39:
  %t79 = extractvalue { i64, ptr } { i64 18, ptr getelementptr inbounds (<{ i64, [18 x i8] }>, ptr @.d231, i32 0, i32 1) }, 1
  %t80 = extractvalue { i64, ptr } { i64 18, ptr getelementptr inbounds (<{ i64, [18 x i8] }>, ptr @.d231, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t79, i64 %t80)
  br label %bb1
bb40:
  %t81 = extractvalue { i64, ptr } { i64 20, ptr getelementptr inbounds (<{ i64, [20 x i8] }>, ptr @.d232, i32 0, i32 1) }, 1
  %t82 = extractvalue { i64, ptr } { i64 20, ptr getelementptr inbounds (<{ i64, [20 x i8] }>, ptr @.d232, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t81, i64 %t82)
  br label %bb1
bb41:
  %t83 = extractvalue { i64, ptr } { i64 21, ptr getelementptr inbounds (<{ i64, [21 x i8] }>, ptr @.d233, i32 0, i32 1) }, 1
  %t84 = extractvalue { i64, ptr } { i64 21, ptr getelementptr inbounds (<{ i64, [21 x i8] }>, ptr @.d233, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t83, i64 %t84)
  br label %bb1
bb42:
  %t85 = extractvalue { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d234, i32 0, i32 1) }, 1
  %t86 = extractvalue { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d234, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t85, i64 %t86)
  br label %bb1
bb43:
  %t87 = extractvalue { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d235, i32 0, i32 1) }, 1
  %t88 = extractvalue { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d235, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t87, i64 %t88)
  br label %bb1
bb44:
  %t89 = extractvalue { i64, ptr } { i64 20, ptr getelementptr inbounds (<{ i64, [20 x i8] }>, ptr @.d236, i32 0, i32 1) }, 1
  %t90 = extractvalue { i64, ptr } { i64 20, ptr getelementptr inbounds (<{ i64, [20 x i8] }>, ptr @.d236, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t89, i64 %t90)
  br label %bb1
bb45:
  %t91 = extractvalue { i64, ptr } { i64 24, ptr getelementptr inbounds (<{ i64, [24 x i8] }>, ptr @.d237, i32 0, i32 1) }, 1
  %t92 = extractvalue { i64, ptr } { i64 24, ptr getelementptr inbounds (<{ i64, [24 x i8] }>, ptr @.d237, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t91, i64 %t92)
  br label %bb1
bb46:
  %t93 = extractvalue { i64, ptr } { i64 18, ptr getelementptr inbounds (<{ i64, [18 x i8] }>, ptr @.d238, i32 0, i32 1) }, 1
  %t94 = extractvalue { i64, ptr } { i64 18, ptr getelementptr inbounds (<{ i64, [18 x i8] }>, ptr @.d238, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t93, i64 %t94)
  br label %bb1
bb47:
  %t95 = extractvalue { i64, ptr } { i64 20, ptr getelementptr inbounds (<{ i64, [20 x i8] }>, ptr @.d239, i32 0, i32 1) }, 1
  %t96 = extractvalue { i64, ptr } { i64 20, ptr getelementptr inbounds (<{ i64, [20 x i8] }>, ptr @.d239, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t95, i64 %t96)
  br label %bb1
bb48:
  %t97 = extractvalue { i64, ptr } { i64 22, ptr getelementptr inbounds (<{ i64, [22 x i8] }>, ptr @.d240, i32 0, i32 1) }, 1
  %t98 = extractvalue { i64, ptr } { i64 22, ptr getelementptr inbounds (<{ i64, [22 x i8] }>, ptr @.d240, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t97, i64 %t98)
  br label %bb1
bb49:
  %t99 = extractvalue { i64, ptr } { i64 21, ptr getelementptr inbounds (<{ i64, [21 x i8] }>, ptr @.d241, i32 0, i32 1) }, 1
  %t100 = extractvalue { i64, ptr } { i64 21, ptr getelementptr inbounds (<{ i64, [21 x i8] }>, ptr @.d241, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t99, i64 %t100)
  br label %bb1
bb50:
  %t101 = extractvalue { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d242, i32 0, i32 1) }, 1
  %t102 = extractvalue { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d242, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t101, i64 %t102)
  br label %bb1
bb51:
  %t103 = extractvalue { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d243, i32 0, i32 1) }, 1
  %t104 = extractvalue { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d243, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t103, i64 %t104)
  br label %bb1
bb52:
  %t105 = extractvalue { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d244, i32 0, i32 1) }, 1
  %t106 = extractvalue { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d244, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t105, i64 %t106)
  br label %bb1
bb53:
  %t107 = extractvalue { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d245, i32 0, i32 1) }, 1
  %t108 = extractvalue { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d245, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t107, i64 %t108)
  br label %bb1
ret:
  ret void
}

@.d93 = private constant <{ i64, [21 x i8] }> <{ i64 0, [21 x i8] c"no overflow test for " }>, align 8
@.d94 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c" of " }>, align 8
@.d95 = private constant <{ i64, [9 x i8] }> <{ i64 0, [9 x i8] c" operands" }>, align 8
@.d96 = private constant <{ i64, [20 x i8] }> <{ i64 0, [20 x i8] c"an overflow test of " }>, align 8
@.d97 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c" to a " }>, align 8
@.d98 = private constant <{ i64, [16 x i8] }> <{ i64 0, [16 x i8] c", not an integer" }>, align 8
@.d99 = private constant <{ i64, [20 x i8] }> <{ i64 0, [20 x i8] c"a place with no base" }>, align 8
@.d100 = private constant <{ i64, [11 x i8] }> <{ i64 0, [11 x i8] c"projections" }>, align 8
@.d101 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"S" }>, align 8
@.d102 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d103 = private constant <{ i64, [20 x i8] }> <{ i64 0, [20 x i8] c", but it is not open" }>, align 8
@.d104 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"S" }>, align 8
@.d105 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d106 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c" while S" }>, align 8
@.d107 = private constant <{ i64, [23 x i8] }> <{ i64 0, [23 x i8] c", opened in it, is open" }>, align 8
@olang_2esole_2ecompiler_2fmir_3averifier_2e13 = weak hidden constant i1 false
declare ptr @__olang_region_make(ptr) noinline
declare void @__olang_region_release(ptr) noinline
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

@.d108 = private constant <{ i64, [35 x i8] }> <{ i64 0, [35 x i8] c"unreachable: no path from the entry" }>, align 8
@.d109 = private constant <{ i64, [13 x i8] }> <{ i64 0, [13 x i8] c"an error code" }>, align 8
@.d110 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c" typed " }>, align 8
@.d111 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c" of a " }>, align 8
@.d112 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d113 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d114 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"S" }>, align 8
@.d115 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c"no task " }>, align 8
@.d116 = private constant <{ i64, [16 x i8] }> <{ i64 0, [16 x i8] c"the value stored" }>, align 8
@.d117 = private constant <{ i64, [30 x i8] }> <{ i64 0, [30 x i8] c"a destructor registered for a " }>, align 8
@.d118 = private constant <{ i64, [23 x i8] }> <{ i64 0, [23 x i8] c", not a reference to a " }>, align 8
@.d119 = private constant <{ i64, [30 x i8] }> <{ i64 0, [30 x i8] c"a destructor registered for a " }>, align 8
@.d120 = private constant <{ i64, [23 x i8] }> <{ i64 0, [23 x i8] c", which has none to run" }>, align 8
@.d121 = private constant <{ i64, [15 x i8] }> <{ i64 0, [15 x i8] c"a release of a " }>, align 8
@.d122 = private constant <{ i64, [29 x i8] }> <{ i64 0, [29 x i8] c", not a reference or an owner" }>, align 8
@.d123 = private constant <{ i64, [14 x i8] }> <{ i64 0, [14 x i8] c"a settle of a " }>, align 8
@.d124 = private constant <{ i64, [14 x i8] }> <{ i64 0, [14 x i8] c", not an owner" }>, align 8
@.d125 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"a " }>, align 8
@.d126 = private constant <{ i64, [12 x i8] }> <{ i64 0, [12 x i8] c" write of a " }>, align 8
@.d127 = private constant <{ i64, [55 x i8] }> <{ i64 0, [55 x i8] c"elements copied between places that are not both arrays" }>, align 8
@.d128 = private constant <{ i64, [26 x i8] }> <{ i64 0, [26 x i8] c"elements copied between a " }>, align 8
@.d129 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c" and a " }>, align 8
@.d130 = private constant <{ i64, [45 x i8] }> <{ i64 0, [45 x i8] c"a count of copied elements that is no integer" }>, align 8
@.d131 = private constant <{ i64, [14 x i8] }> <{ i64 0, [14 x i8] c"a spawn into S" }>, align 8
@.d132 = private constant <{ i64, [18 x i8] }> <{ i64 0, [18 x i8] c", which is no join" }>, align 8
@.d133 = private constant <{ i64, [12 x i8] }> <{ i64 0, [12 x i8] c"a task with " }>, align 8
@.d134 = private constant <{ i64, [13 x i8] }> <{ i64 0, [13 x i8] c" targets for " }>, align 8
@.d135 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c" results" }>, align 8
@.d136 = private constant <{ i64, [44 x i8] }> <{ i64 0, [44 x i8] c"a task's clauses for a call that cannot fail" }>, align 8
@__olang_empty_array = external constant [16 x i64]
@.d137 = private constant <{ i64, [13 x i8] }> <{ i64 0, [13 x i8] c"no terminator" }>, align 8
@.d138 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"cases" }>, align 8
@.d139 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c"no call " }>, align 8
@.d140 = private constant <{ i64, [10 x i8] }> <{ i64 0, [10 x i8] c"scope refs" }>, align 8
@.d141 = private constant <{ i64, [56 x i8] }> <{ i64 0, [56 x i8] c"a walk's drop ended in a function that is no generator's" }>, align 8
@.d142 = private constant <{ i64, [14 x i8] }> <{ i64 0, [14 x i8] c"a branch on a " }>, align 8
@.d143 = private constant <{ i64, [14 x i8] }> <{ i64 0, [14 x i8] c"a switch on a " }>, align 8
@.d144 = private constant <{ i64, [32 x i8] }> <{ i64 0, [32 x i8] c"a call with no result stores one" }>, align 8
@.d145 = private constant <{ i64, [17 x i8] }> <{ i64 0, [17 x i8] c"the call's result" }>, align 8
@.d146 = private constant <{ i64, [39 x i8] }> <{ i64 0, [39 x i8] c"a call that can fail with no error edge" }>, align 8
@.d147 = private constant <{ i64, [41 x i8] }> <{ i64 0, [41 x i8] c"an error edge for a call that cannot fail" }>, align 8
@.d148 = private constant <{ i64, [21 x i8] }> <{ i64 0, [21 x i8] c"the call's error code" }>, align 8
@.d149 = private constant <{ i64, [41 x i8] }> <{ i64 0, [41 x i8] c"a tail call with somewhere to go after it" }>, align 8
@.d150 = private constant <{ i64, [53 x i8] }> <{ i64 0, [53 x i8] c"a tail call giving another result than the function's" }>, align 8
@.d151 = private constant <{ i64, [48 x i8] }> <{ i64 0, [48 x i8] c"a return with no value from a function giving a " }>, align 8
@.d152 = private constant <{ i64, [49 x i8] }> <{ i64 0, [49 x i8] c"a return with a value from a function giving none" }>, align 8
@.d153 = private constant <{ i64, [18 x i8] }> <{ i64 0, [18 x i8] c"the value returned" }>, align 8
@.d154 = private constant <{ i64, [46 x i8] }> <{ i64 0, [46 x i8] c"a suspend in a function that is no generator's" }>, align 8
@.d155 = private constant <{ i64, [17 x i8] }> <{ i64 0, [17 x i8] c"the value yielded" }>, align 8
@.d156 = private constant <{ i64, [38 x i8] }> <{ i64 0, [38 x i8] c"a raise in a function that cannot fail" }>, align 8
@.d157 = private constant <{ i64, [16 x i8] }> <{ i64 0, [16 x i8] c"the error raised" }>, align 8
@.d158 = private constant <{ i64, [12 x i8] }> <{ i64 0, [12 x i8] c"a wait for S" }>, align 8
@.d159 = private constant <{ i64, [18 x i8] }> <{ i64 0, [18 x i8] c", which is no join" }>, align 8
@.d160 = private constant <{ i64, [51 x i8] }> <{ i64 0, [51 x i8] c"a wait for a join that can fail with no failed edge" }>, align 8
@.d161 = private constant <{ i64, [41 x i8] }> <{ i64 0, [41 x i8] c"a failed edge for a join that cannot fail" }>, align 8
@.d162 = private constant <{ i64, [21 x i8] }> <{ i64 0, [21 x i8] c"the join's error code" }>, align 8
@.d163 = private constant <{ i64, [16 x i8] }> <{ i64 0, [16 x i8] c"a message for a " }>, align 8
@.d164 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c" exit" }>, align 8
@.d165 = private constant <{ i64, [35 x i8] }> <{ i64 0, [35 x i8] c"an assert's message that is no text" }>, align 8
@.d166 = private constant <{ i64, [11 x i8] }> <{ i64 0, [11 x i8] c"text typed " }>, align 8
@.d167 = private constant <{ i64, [11 x i8] }> <{ i64 0, [11 x i8] c"a range of " }>, align 8
@.d168 = private constant <{ i64, [14 x i8] }> <{ i64 0, [14 x i8] c" out of bounds" }>, align 8
@.d169 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"." }>, align 8
@olang_2esole_2ecompiler_2fmir_3adumper_2e2 = weak hidden constant i1 false
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

declare ptr @__olang_region_or(ptr, ptr)
declare void @__olang_region_settle(ptr, i1)
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
@.d170 = private unnamed_addr constant <{ i64, [19 x i8] }> <{ i64 0, [19 x i8] c"mir.WriteKind.Bytes" }>, align 8
declare void @__olang_sb_put(ptr, ptr, i64)
@.d171 = private unnamed_addr constant <{ i64, [20 x i8] }> <{ i64 0, [20 x i8] c"mir.WriteKind.Quoted" }>, align 8
@.d172 = private unnamed_addr constant <{ i64, [18 x i8] }> <{ i64 0, [18 x i8] c"mir.WriteKind.Char" }>, align 8
@.d173 = private unnamed_addr constant <{ i64, [24 x i8] }> <{ i64 0, [24 x i8] c"mir.WriteKind.QuotedChar" }>, align 8
@.d174 = private unnamed_addr constant <{ i64, [17 x i8] }> <{ i64 0, [17 x i8] c"mir.WriteKind.Int" }>, align 8
@.d175 = private unnamed_addr constant <{ i64, [18 x i8] }> <{ i64 0, [18 x i8] c"mir.WriteKind.Uint" }>, align 8
@.d176 = private unnamed_addr constant <{ i64, [19 x i8] }> <{ i64 0, [19 x i8] c"mir.WriteKind.Float" }>, align 8
@.d177 = private unnamed_addr constant <{ i64, [18 x i8] }> <{ i64 0, [18 x i8] c"mir.WriteKind.Bool" }>, align 8
@.d178 = private unnamed_addr constant <{ i64, [17 x i8] }> <{ i64 0, [17 x i8] c"mir.ExitKind.Done" }>, align 8
@.d179 = private unnamed_addr constant <{ i64, [17 x i8] }> <{ i64 0, [17 x i8] c"mir.ExitKind.Fail" }>, align 8
@.d180 = private unnamed_addr constant <{ i64, [18 x i8] }> <{ i64 0, [18 x i8] c"mir.ExitKind.Abort" }>, align 8
@.d181 = private unnamed_addr constant <{ i64, [24 x i8] }> <{ i64 0, [24 x i8] c"mir.ExitKind.Unreachable" }>, align 8
@.d182 = private unnamed_addr constant <{ i64, [24 x i8] }> <{ i64 0, [24 x i8] c"mir.ExitKind.NullReached" }>, align 8
@.d183 = private unnamed_addr constant <{ i64, [22 x i8] }> <{ i64 0, [22 x i8] c"mir.ExitKind.NullError" }>, align 8
@.d184 = private unnamed_addr constant <{ i64, [22 x i8] }> <{ i64 0, [22 x i8] c"mir.ExitKind.Unhandled" }>, align 8
@.d185 = private unnamed_addr constant <{ i64, [19 x i8] }> <{ i64 0, [19 x i8] c"mir.ExitKind.Assert" }>, align 8
@.d186 = private unnamed_addr constant <{ i64, [24 x i8] }> <{ i64 0, [24 x i8] c"mir.ExitKind.SliceBounds" }>, align 8
@.d187 = private unnamed_addr constant <{ i64, [24 x i8] }> <{ i64 0, [24 x i8] c"mir.ExitKind.ArrayLength" }>, align 8
@.d188 = private unnamed_addr constant <{ i64, [15 x i8] }> <{ i64 0, [15 x i8] c"mir.ExitKind.As" }>, align 8
@.d189 = private unnamed_addr constant <{ i64, [24 x i8] }> <{ i64 0, [24 x i8] c"mir.ExitKind.FixedLength" }>, align 8
@.d190 = private unnamed_addr constant <{ i64, [23 x i8] }> <{ i64 0, [23 x i8] c"mir.ExitKind.LaneLength" }>, align 8
@.d191 = private unnamed_addr constant <{ i64, [23 x i8] }> <{ i64 0, [23 x i8] c"mir.ExitKind.GenRunning" }>, align 8
@.d192 = private unnamed_addr constant <{ i64, [18 x i8] }> <{ i64 0, [18 x i8] c"mir.ExitKind.Error" }>, align 8
@.d193 = private unnamed_addr constant <{ i64, [20 x i8] }> <{ i64 0, [20 x i8] c"mir.ExitKind.Escaped" }>, align 8
@.d194 = private unnamed_addr constant <{ i64, [16 x i8] }> <{ i64 0, [16 x i8] c"typed.PrimOp.Neg" }>, align 8
@.d195 = private unnamed_addr constant <{ i64, [19 x i8] }> <{ i64 0, [19 x i8] c"typed.PrimOp.BitNot" }>, align 8
@.d196 = private unnamed_addr constant <{ i64, [16 x i8] }> <{ i64 0, [16 x i8] c"typed.PrimOp.Not" }>, align 8
@.d197 = private unnamed_addr constant <{ i64, [16 x i8] }> <{ i64 0, [16 x i8] c"typed.PrimOp.Add" }>, align 8
@.d198 = private unnamed_addr constant <{ i64, [16 x i8] }> <{ i64 0, [16 x i8] c"typed.PrimOp.Sub" }>, align 8
@.d199 = private unnamed_addr constant <{ i64, [16 x i8] }> <{ i64 0, [16 x i8] c"typed.PrimOp.Mul" }>, align 8
@.d200 = private unnamed_addr constant <{ i64, [16 x i8] }> <{ i64 0, [16 x i8] c"typed.PrimOp.Div" }>, align 8
@.d201 = private unnamed_addr constant <{ i64, [16 x i8] }> <{ i64 0, [16 x i8] c"typed.PrimOp.Rem" }>, align 8
@.d202 = private unnamed_addr constant <{ i64, [16 x i8] }> <{ i64 0, [16 x i8] c"typed.PrimOp.Shl" }>, align 8
@.d203 = private unnamed_addr constant <{ i64, [16 x i8] }> <{ i64 0, [16 x i8] c"typed.PrimOp.Shr" }>, align 8
@.d204 = private unnamed_addr constant <{ i64, [19 x i8] }> <{ i64 0, [19 x i8] c"typed.PrimOp.BitAnd" }>, align 8
@.d205 = private unnamed_addr constant <{ i64, [18 x i8] }> <{ i64 0, [18 x i8] c"typed.PrimOp.BitOr" }>, align 8
@.d206 = private unnamed_addr constant <{ i64, [19 x i8] }> <{ i64 0, [19 x i8] c"typed.PrimOp.BitXor" }>, align 8
@.d207 = private unnamed_addr constant <{ i64, [15 x i8] }> <{ i64 0, [15 x i8] c"typed.PrimOp.Eq" }>, align 8
@.d208 = private unnamed_addr constant <{ i64, [15 x i8] }> <{ i64 0, [15 x i8] c"typed.PrimOp.Ne" }>, align 8
@.d209 = private unnamed_addr constant <{ i64, [15 x i8] }> <{ i64 0, [15 x i8] c"typed.PrimOp.Lt" }>, align 8
@.d210 = private unnamed_addr constant <{ i64, [15 x i8] }> <{ i64 0, [15 x i8] c"typed.PrimOp.Le" }>, align 8
@.d211 = private unnamed_addr constant <{ i64, [15 x i8] }> <{ i64 0, [15 x i8] c"typed.PrimOp.Gt" }>, align 8
@.d212 = private unnamed_addr constant <{ i64, [15 x i8] }> <{ i64 0, [15 x i8] c"typed.PrimOp.Ge" }>, align 8
@.d213 = private unnamed_addr constant <{ i64, [17 x i8] }> <{ i64 0, [17 x i8] c"typed.PrimOp.Same" }>, align 8
@.d214 = private unnamed_addr constant <{ i64, [20 x i8] }> <{ i64 0, [20 x i8] c"typed.PrimOp.Convert" }>, align 8
@.d215 = private unnamed_addr constant <{ i64, [20 x i8] }> <{ i64 0, [20 x i8] c"typed.PrimOp.Bitcast" }>, align 8
@.d216 = private unnamed_addr constant <{ i64, [16 x i8] }> <{ i64 0, [16 x i8] c"typed.PrimOp.Len" }>, align 8
@.d217 = private unnamed_addr constant <{ i64, [19 x i8] }> <{ i64 0, [19 x i8] c"typed.PrimOp.IsCase" }>, align 8
@.d218 = private unnamed_addr constant <{ i64, [23 x i8] }> <{ i64 0, [23 x i8] c"typed.PrimOp.AtomicLoad" }>, align 8
@.d219 = private unnamed_addr constant <{ i64, [24 x i8] }> <{ i64 0, [24 x i8] c"typed.PrimOp.AtomicStore" }>, align 8
@.d220 = private unnamed_addr constant <{ i64, [22 x i8] }> <{ i64 0, [22 x i8] c"typed.PrimOp.AtomicAdd" }>, align 8
@.d221 = private unnamed_addr constant <{ i64, [23 x i8] }> <{ i64 0, [23 x i8] c"typed.PrimOp.AtomicSwap" }>, align 8
@.d222 = private unnamed_addr constant <{ i64, [30 x i8] }> <{ i64 0, [30 x i8] c"typed.PrimOp.AtomicCompareSwap" }>, align 8
@.d223 = private unnamed_addr constant <{ i64, [19 x i8] }> <{ i64 0, [19 x i8] c"typed.PrimOp.Retire" }>, align 8
@.d224 = private unnamed_addr constant <{ i64, [17 x i8] }> <{ i64 0, [17 x i8] c"typed.PrimOp.Drop" }>, align 8
@.d225 = private unnamed_addr constant <{ i64, [25 x i8] }> <{ i64 0, [25 x i8] c"typed.PrimOp.LeadingZeros" }>, align 8
@.d226 = private unnamed_addr constant <{ i64, [26 x i8] }> <{ i64 0, [26 x i8] c"typed.PrimOp.TrailingZeros" }>, align 8
@.d227 = private unnamed_addr constant <{ i64, [21 x i8] }> <{ i64 0, [21 x i8] c"typed.PrimOp.PopCount" }>, align 8
@.d228 = private unnamed_addr constant <{ i64, [23 x i8] }> <{ i64 0, [23 x i8] c"typed.PrimOp.RotateLeft" }>, align 8
@.d229 = private unnamed_addr constant <{ i64, [24 x i8] }> <{ i64 0, [24 x i8] c"typed.PrimOp.RotateRight" }>, align 8
@.d230 = private unnamed_addr constant <{ i64, [21 x i8] }> <{ i64 0, [21 x i8] c"typed.PrimOp.ByteSwap" }>, align 8
@.d231 = private unnamed_addr constant <{ i64, [18 x i8] }> <{ i64 0, [18 x i8] c"typed.PrimOp.Holds" }>, align 8
@.d232 = private unnamed_addr constant <{ i64, [20 x i8] }> <{ i64 0, [20 x i8] c"typed.PrimOp.LaneLen" }>, align 8
@.d233 = private unnamed_addr constant <{ i64, [21 x i8] }> <{ i64 0, [21 x i8] c"typed.PrimOp.NonEmpty" }>, align 8
@.d234 = private unnamed_addr constant <{ i64, [19 x i8] }> <{ i64 0, [19 x i8] c"typed.PrimOp.Unpack" }>, align 8
@.d235 = private unnamed_addr constant <{ i64, [19 x i8] }> <{ i64 0, [19 x i8] c"typed.PrimOp.Repack" }>, align 8
@.d236 = private unnamed_addr constant <{ i64, [20 x i8] }> <{ i64 0, [20 x i8] c"typed.PrimOp.AnyMake" }>, align 8
@.d237 = private unnamed_addr constant <{ i64, [24 x i8] }> <{ i64 0, [24 x i8] c"typed.PrimOp.AnyInstance" }>, align 8
@.d238 = private unnamed_addr constant <{ i64, [18 x i8] }> <{ i64 0, [18 x i8] c"typed.PrimOp.AnyIs" }>, align 8
@.d239 = private unnamed_addr constant <{ i64, [20 x i8] }> <{ i64 0, [20 x i8] c"typed.PrimOp.ErrPush" }>, align 8
@.d240 = private unnamed_addr constant <{ i64, [22 x i8] }> <{ i64 0, [22 x i8] c"typed.PrimOp.ErrCaught" }>, align 8
@.d241 = private unnamed_addr constant <{ i64, [21 x i8] }> <{ i64 0, [21 x i8] c"typed.PrimOp.ErrTaken" }>, align 8
@.d242 = private unnamed_addr constant <{ i64, [19 x i8] }> <{ i64 0, [19 x i8] c"typed.PrimOp.SatAdd" }>, align 8
@.d243 = private unnamed_addr constant <{ i64, [19 x i8] }> <{ i64 0, [19 x i8] c"typed.PrimOp.SatSub" }>, align 8
@.d244 = private unnamed_addr constant <{ i64, [19 x i8] }> <{ i64 0, [19 x i8] c"typed.PrimOp.SatMul" }>, align 8
@.d245 = private unnamed_addr constant <{ i64, [19 x i8] }> <{ i64 0, [19 x i8] c"typed.PrimOp.SatShl" }>, align 8
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

declare { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eFieldHolds(ptr %v0, ptr %a0, i32 %a1, i32 %a2)
declare i32 @compiler_2fmir_2eCasesOf(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParts(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsRef(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eNeedsDrop(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2fmir_2eHasFields(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eFields(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2fmir_2eGuardOf(ptr %v0, ptr %a0, i32 %a1)
@G_2ecompiler_2ftypes_2eUnknownT = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\00\00\00\00" }>, align 8
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePrim(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
@G_2ecompiler_2ftypes_2eVoidT = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\01\00\00\00" }>, align 8
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eFunc(ptr %v0, ptr %a0, i32 %a1, i32 %a2, i32 %a3, i32 %a4, i64 %a5, i1 %a6, i32 %a7, i64 %a8)
declare i32 @compiler_2fsource_2ecompiler_2fsource_3aNames_2eIntern(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
@G_2ecompiler_2fmir_2eSp0 = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>, align 8
declare %"compiler/mir:Local" @compiler_2fmir_3aLocal_2ector(ptr %v0, i32 %a0, %"compiler/source:Span" %a1, i32 %a2, i32 %a3, { i64, [1 x i64] } %a4)
declare i32 @compiler_2fmir_2ecompiler_2fmir_3aFn_2eAddLocal(ptr %v0, ptr %a0, %"compiler/mir:Local" %a1)
declare i32 @compiler_2fmir_2ecompiler_2fmir_3aFn_2eNewBlock(ptr %v0, ptr %a0)
declare %"compiler/mir:Lvalue" @compiler_2fmir_2eLvalue_2eL(i32 %a0)
declare void @compiler_2fmir_2ecompiler_2fmir_3aFn_2eAdd(ptr %v0, ptr %v1, ptr %a0, i32 %a1, ptr %a2)
@G_2ecompiler_2fmir_2eNoBlock = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\FF\FF\FF\FF" }>, align 8
@G_2ecompiler_2ftypes_2eDefaultErrT = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\10\00\00\00" }>, align 8
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eList1(ptr %v0, ptr %a0, i32 %a1)
@G_2ecompiler_2ftypes_2eBoolT = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\02\00\00\00" }>, align 8
@G_2ecompiler_2fmir_2eI32T = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\05\00\00\00" }>, align 8
@G_2ecompiler_2fmir_2eEmpty = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>, align 8
declare %"compiler/mir:Call" @compiler_2fmir_3aCall_2ector(ptr %v0, { i64, [7 x i64] } %a0, %"compiler/mir:Range" %a1, %"compiler/mir:Range" %a2, %"compiler/mir:Lvalue" %a3, i1 %a4, i32 %a5, i32 %a6, i32 %a7)
declare i32 @compiler_2fmir_2ecompiler_2fmir_3aFn_2eAddCall(ptr %v0, ptr %a0, %"compiler/mir:Call" %a1)
declare void @compiler_2fmir_3aFn_2ector(ptr %out, ptr %v0, { i64, [2 x i64] } %a0, i32 %a1, i64 %a2, %"compiler/source:Span" %a3)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParams(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2fmir_2ecompiler_2fmir_3aFn_2eAddParam(ptr %v0, ptr %a0, i32 %a1, %"compiler/source:Span" %a2, i32 %a3)
@G_2ecompiler_2fmir_2eNoScope = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\FF\FF\FF\FF" }>, align 8
@G_2ecompiler_2ftypes_2eReadOnly = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>, align 8
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRef(ptr %v0, ptr %a0, i32 %a1, i64 %a2)
@G_2ecompiler_2fmir_2eI64T = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\06\00\00\00" }>, align 8
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eList(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
@G_2ecompiler_2ftypes_2eWritable = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\01\00\00\00\00\00\00\00" }>, align 8
@olang_loc_f3abe41a98405543_7d26227a2bded35f = external constant [0 x i8]
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aItem_3e_2eLen_3ccompiler_2ftyped_3aItem_3e(ptr %v0, ptr %a0)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aItem_3e_2ePush_3ccompiler_2ftyped_3aItem_3e(ptr %v0, ptr %a0, %"compiler/typed:Item" %a1)
declare %"compiler/mir:ScopeInfo" @compiler_2fmir_3aScopeInfo_2ector(ptr %v0, i32 %a0, i32 %a1, i32 %a2, %"compiler/source:Span" %a3, i32 %a4)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aScopeInfo_3e_2ePush_3ccompiler_2fmir_3aScopeInfo_3e(ptr %v0, ptr %a0, %"compiler/mir:ScopeInfo" %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aScopeInfo_3e_2eLen_3ccompiler_2fmir_3aScopeInfo_3e(ptr %v0, ptr %a0)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aOperand_3e_2eLen_3ccompiler_2fmir_3aOperand_3e(ptr %v0, ptr %a0)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aOperand_3e_2ePush_3ccompiler_2fmir_3aOperand_3e(ptr %v0, ptr %a0, { i64, [4 x i64] } %a1)
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aBasicBlock_3e_2eRefMu_Hfcf461293be5a40629d8d6a3cbc76320(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare void @compiler_2fmir_3averifier_2ector(ptr %out, ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1)
declare void @compiler_2fmir_2ecompiler_2fmir_3averifier_2erun(ptr %v0, ptr %v1, ptr %v2, ptr %a0)
declare { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %v0, ptr %v1, ptr %a0)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eReferent(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2fmir_2ecompiler_2fmir_3aGenInfo_2eIsGen(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i32 %a2)
@olang_loc_5d1a0e3daf6888c0_94c904987320cf3c = external constant [0 x i8]
declare { i64, ptr } @compiler_2fmir_2ecompiler_2fmir_3adumper_2ekey(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, [2 x i64] } %a1)
declare { i64, ptr } @compiler_2fmir_2ecompiler_2fmir_3adumper_2eoperand(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, { i64, [4 x i64] } %a1)
@olang_loc_1b99bf8ee4d105f3_d9e42d16d8895267 = external constant [0 x i8]
declare void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePushChar(ptr %v0, ptr %a0, i8 %a1)
declare %"std/prelude/text:StringBuilder" @std_2fprelude_2ftext_3aStringBuilder_2ector(ptr %v0)
declare { i64, [4 x i64] } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aOperand_3e_2eAt_3ccompiler_2fmir_3aOperand_3e(ptr %v0, ptr %a0, i64 %a1)
declare { i64, [1 x i64] } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aScopeRef_3e_2eAt_3ccompiler_2fmir_3aScopeRef_3e(ptr %v0, ptr %a0, i64 %a1)
declare { i64, ptr } @compiler_2fmir_2ecompiler_2fmir_3adumper_2eref(ptr %v0, ptr %v1, ptr %a0, { i64, [1 x i64] } %a1)
declare { i64, ptr } @compiler_2fmir_2ecompiler_2fmir_3adumper_2eplace(ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"compiler/mir:Lvalue" %a1)
declare { i64, ptr } @compiler_2fmir_2ecompiler_2fmir_3adumper_2ervalue(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, { i64, [15 x i64] } %a1)
declare { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eCanon(ptr %v0, ptr %v1, ptr %v2, ptr %a0, i32 %a1)
declare %"compiler/mir:Task" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aTask_3e_2eAt_3ccompiler_2fmir_3aTask_3e(ptr %v0, ptr %a0, i64 %a1)
declare { i64, ptr } @compiler_2fmir_2ecompiler_2fmir_3adumper_2etask(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, %"compiler/mir:Task" %a1)
@olang_loc_63d4bc85d5a0ee63_941776bd89ba250f = external constant [0 x i8]
declare { i64, ptr } @compiler_2fmir_2ecompiler_2fmir_3adumper_2ecases(ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"compiler/mir:Range" %a1)
declare %"compiler/mir:Call" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aCall_3e_2eAt_3ccompiler_2fmir_3aCall_3e(ptr %v0, ptr %a0, i64 %a1)
declare { i64, ptr } @compiler_2fmir_2ecompiler_2fmir_3adumper_2ecall(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, %"compiler/mir:Call" %a1)
@olang_loc_8b20d2ead933ce67_842549c98b36ec43 = external constant [0 x i8]
declare i32 @compiler_2fmir_2ecompiler_2fmir_3averifier_2earrayOf(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eLength(ptr %v0, ptr %a0, i32 %a1)
declare i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eConstValue(ptr %v0, ptr %a0, i32 %a1)
declare { i64, [4 x i64] } @compiler_2fmir_2ecompiler_2fmir_3averifier_2earg(ptr %v0, ptr %v1, ptr %a0, %"compiler/mir:Range" %a1, i64 %a2)
declare i32 @compiler_2fmir_2ecompiler_2fmir_3averifier_2eoperandType(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, [4 x i64] } %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eElem(ptr %v0, ptr %a0, i32 %a1)
declare void @compiler_2fmir_2ecompiler_2fmir_3averifier_2ewant(ptr %v0, ptr %v1, ptr %v2, ptr %a0, i32 %a1, i32 %a2, { i64, ptr } %a3)
declare i1 @compiler_2fmir_2eHasCases(ptr %v0, ptr %a0, i32 %a1)
declare void @compiler_2fmir_2ecompiler_2fmir_3averifier_2eparts(ptr %v0, ptr %v1, ptr %v2, ptr %a0, i32 %a1, i32 %a2, %"compiler/mir:Range" %a3)
declare %"compiler/mir:ScopeInfo" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aScopeInfo_3e_2eAt_3ccompiler_2fmir_3aScopeInfo_3e(ptr %v0, ptr %a0, i64 %a1)
declare { i64, [1 x i64] } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aVarKind_3e_2eAt_3ccompiler_2fmir_3aVarKind_3e(ptr %v0, ptr %a0, i64 %a1)
@olang_loc_9c289c76542078e7_53d9d4aa9af07973 = external constant [0 x i8]
declare void @compiler_2fmir_2ecompiler_2fmir_3averifier_2ereads(ptr %v0, ptr %v1, ptr %a0, { i64, [4 x i64] } %a1)
@olang_loc_62f33ceaa6d0d243_a40627fd170062cf = external constant [0 x i8]
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eResult(ptr %v0, ptr %a0, i32 %a1)
@olang_loc_f7be8aa76db69854_ffaa205b85e46cd8 = external constant [0 x i8]
declare i32 @compiler_2fmir_2ecompiler_2fmir_3averifier_2ebuiltPart(ptr %v0, ptr %v1, ptr %a0, i32 %a1, i64 %a2, i32 %a3)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eTuple(ptr %v0, ptr %a0, i32 %a1)
declare i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI32_3e_2eAt_3cI32_3e(ptr %v0, ptr %a0, i64 %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aLocal_3e_2eLen_3ccompiler_2fmir_3aLocal_3e(ptr %v0, ptr %a0)
declare %"compiler/mir:Local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aLocal_3e_2eAt_3ccompiler_2fmir_3aLocal_3e(ptr %v0, ptr %a0, i64 %a1)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsInt(ptr %v0, ptr %a0, i32 %a1)
@olang_loc_bb9dfa8ddf3d51d3_a6a63b61a4411c97 = external constant [0 x i8]
@olang_loc_70d66502dd431e07_8b33d36aabf56353 = external constant [0 x i8]
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aProj_3e_2eLen_3ccompiler_2fmir_3aProj_3e(ptr %v0, ptr %a0)
@olang_loc_2986d82de8391aaf_d61db5ce8081183b = external constant [0 x i8]
declare { i64, [1 x i64] } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aProj_3e_2eAt_3ccompiler_2fmir_3aProj_3e(ptr %v0, ptr %a0, i64 %a1)
declare i32 @compiler_2fmir_2ecompiler_2fmir_3averifier_2eprojected(ptr %v0, ptr %v1, ptr %v2, ptr %a0, i32 %a1, { i64, [1 x i64] } %a2)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aScopeId_3e_2eLen_3ccompiler_2fmir_3aScopeId_3e(ptr %v0, ptr %a0)
declare i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aScopeId_3e_2eAt_3ccompiler_2fmir_3aScopeId_3e(ptr %v0, ptr %a0, i64 %a1)
declare i1 @compiler_2fmir_2ecompiler_2fmir_3averifier_2eopen(ptr %v0, ptr %a0, i32 %a1)
declare { i32, i32 } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aScopeId_3e_2ePop_3ccompiler_2fmir_3aScopeId_3e(ptr %v0, ptr %a0)
@olang_loc_525ae97147cf6b9b_c46e40fbd793c77f = external constant [0 x i8]
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aBasicBlock_3e_2eLen_3ccompiler_2fmir_3aBasicBlock_3e(ptr %v0, ptr %a0)
@olang_loc_1ab0dfa533b17ebc_4a4130204b0a3608 = external constant [0 x i8]
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aBlockId_3e_2ector(ptr %v0, i64 %a0)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aBlockId_3e_2ePush_3ccompiler_2fmir_3aBlockId_3e(ptr %v0, ptr %a0, i32 %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aBlockId_3e_2eLen_3ccompiler_2fmir_3aBlockId_3e(ptr %v0, ptr %a0)
declare { i32, i32 } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aBlockId_3e_2ePop_3ccompiler_2fmir_3aBlockId_3e(ptr %v0, ptr %a0)
@olang_loc_21ecf2a36b4d7692_5e1d5f90bd4192b6 = external constant [0 x i8]
declare %"compiler/mir:BasicBlock" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aBasicBlock_3e_2eAt_3ccompiler_2fmir_3aBasicBlock_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare { i64, [21 x i64] } @compiler_2fmir_2ecompiler_2fmir_3aStmtList_2eAt(ptr %v0, ptr %a0, i64 %a1)
@olang_loc_7127dab5ce57c749_b077692428e4994d = external constant [0 x i8]
declare i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aBlockId_3e_2eAt_3ccompiler_2fmir_3aBlockId_3e(ptr %v0, ptr %a0, i64 %a1)
declare void @compiler_2fmir_2ecompiler_2fmir_3averifier_2eused(ptr %v0, ptr %a0, i32 %a1)
@olang_loc_82c1dfc51032d1af_585fe42c43fa9d8b = external constant [0 x i8]
@olang_loc_d0fb5c63af130ee_9fb6b0b43bcc334a = external constant [0 x i8]
declare void @compiler_2fmir_2ecompiler_2fmir_3averifier_2ereadArgs(ptr %v0, ptr %v1, ptr %a0, %"compiler/mir:Range" %a1)
declare void @compiler_2fmir_2ecompiler_2fmir_3averifier_2ebuildsIn(ptr %v0, ptr %v1, ptr %a0, { i64, [1 x i64] } %a1)
declare void @compiler_2fmir_2ecompiler_2fmir_3averifier_2eusesScope(ptr %v0, ptr %a0, { i64, [1 x i64] } %a1)
@olang_loc_238ad76e6aec07bb_c5e46c61d4e3452f = external constant [0 x i8]
declare i32 @compiler_2fmir_2ecompiler_2fmir_3averifier_2erefType(ptr %v0, ptr %v1, ptr %a0, i32 %a1, i32 %a2)
declare i32 @compiler_2fmir_2ecompiler_2fmir_3averifier_2eprimType(ptr %v0, ptr %v1, ptr %v2, ptr %a0, i32 %a1, i32 %a2, %"compiler/mir:Range" %a3)
declare i32 @compiler_2fmir_2ecompiler_2fmir_3averifier_2etagType(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare i32 @compiler_2fmir_2ecompiler_2fmir_3averifier_2esliceType(ptr %v0, ptr %v1, ptr %v2, ptr %a0, i32 %a1, { i64, [4 x i64] } %a2, { i64, [4 x i64] } %a3, i32 %a4)
declare i32 @compiler_2fmir_2ecompiler_2fmir_3averifier_2eclosureType(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare i32 @compiler_2fmir_2ecompiler_2fmir_3averifier_2eintOf(ptr %v0, ptr %v1, ptr %v2, ptr %a0, i32 %a1, i32 %a2, { i64, ptr } %a3)
declare i32 @compiler_2fmir_2ecompiler_2fmir_3averifier_2eregionOrType(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
@olang_loc_3d9554dfcf1aeb63_1386be72809b2127 = external constant [0 x i8]
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eSame(ptr %v0, ptr %a0, i32 %a1, i32 %a2)
declare void @compiler_2fmir_2ecompiler_2fmir_3averifier_2ervalueShape(ptr %v0, ptr %v1, ptr %a0, { i64, [15 x i64] } %a1)
declare i1 @compiler_2fmir_2ecompiler_2fmir_3averifier_2escope(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare void @compiler_2fmir_2ecompiler_2fmir_3averifier_2eref(ptr %v0, ptr %v1, ptr %a0, { i64, [1 x i64] } %a1)
declare void @compiler_2fmir_2ecompiler_2fmir_3averifier_2eoperand(ptr %v0, ptr %v1, ptr %a0, { i64, [4 x i64] } %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aTask_3e_2eLen_3ccompiler_2fmir_3aTask_3e(ptr %v0, ptr %a0)
declare i1 @compiler_2fmir_2ecompiler_2fmir_3averifier_2eblock(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
@olang_loc_145fd452f8e36c9b_ff9c6902187c9987 = external constant [0 x i8]
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eOwnedPart(ptr %v0, ptr %a0, i32 %a1)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eAnchors(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cArray_3cI64_3e_3e_2eLen_3cArray_3cI64_3e_3e(ptr %v0, ptr %a0)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsUnsigned(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsFloat(ptr %v0, ptr %a0, i32 %a1)
@olang_loc_299ef5e2a9c9a69f_7fc69ac68ccb4c23 = external constant [0 x i8]
declare i32 @compiler_2fmir_2ecompiler_2fmir_3averifier_2ecalleeType(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, [7 x i64] } %a1)
declare void @compiler_2fmir_2ecompiler_2fmir_3averifier_2eargs(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, [7 x i64] } %a1, i32 %a2, %"compiler/mir:Range" %a3, %"compiler/mir:Range" %a4)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrors(ptr %v0, ptr %a0, i32 %a1)
declare { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eResults(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare void @compiler_2fmir_2ecompiler_2fmir_3averifier_2etaskTargets(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %a0, ptr %a1, { i64, ptr } %a2)
@olang_loc_c13ff54b5c1d3c1e_cc5c8d48f26f2b22 = external constant [0 x i8]
@olang_loc_49b1b3021a029ae3_d2d6f71dc554b2d7 = external constant [0 x i8]
@olang_loc_4f65b4158cb36c84_7aab915b507980 = external constant [0 x i8]
declare %"compiler/mir:Case" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aCase_3e_2eAt_3ccompiler_2fmir_3aCase_3e(ptr %v0, ptr %a0, i64 %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aCase_3e_2eLen_3ccompiler_2fmir_3aCase_3e(ptr %v0, ptr %a0)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aCall_3e_2eLen_3ccompiler_2fmir_3aCall_3e(ptr %v0, ptr %a0)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aScopeRef_3e_2eLen_3ccompiler_2fmir_3aScopeRef_3e(ptr %v0, ptr %a0)
@olang_loc_4fdb0c87eb50ced7_f9856407ece22343 = external constant [0 x i8]
declare void @compiler_2fmir_2ecompiler_2fmir_3averifier_2ecasesOnce(ptr %v0, ptr %v1, ptr %a0, %"compiler/mir:Range" %a1)
@olang_loc_37d613313db5ccb3_d9dd3d9ece558aa7 = external constant [0 x i8]
declare { i32, i64 } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eFindLast(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
@olang_loc_91402ead91eecd74_d65ac3d6c8116e0 = external constant [0 x i8]

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
