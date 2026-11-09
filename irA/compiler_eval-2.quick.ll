source_filename = "compiler_eval-2.quick.ll"
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
%"compiler/mir:Range" = type { i32, i32 }
%"compiler/mir:Lvalue" = type { { i64, [2 x i64] }, %"compiler/mir:Range" }
%"compiler/mir:Call" = type { { i64, [7 x i64] }, %"compiler/mir:Range", %"compiler/mir:Range", %"compiler/mir:Lvalue", i1, i32, i32, i32 }
%"compiler/mir:Case" = type { i64, i32 }
%"compiler/eval:Machine" = type { ptr, i32, i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"compiler/mir:GenInfo", i1, i64, i64, i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, i64, i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"compiler/eval:Ptr", i32, { i64, [5 x i64] }, i64, i1, i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", { i64, ptr }, { i64, ptr }, i64, { i64, ptr }, { i64, ptr }, i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", { i64, ptr }, i64, { i64, ptr }, i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i64, i64, { i64, ptr }, i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"compiler/source:Span", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", { i64, ptr }, { i64, ptr }, i1, i1, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, %"compiler/source:Span", i32 }
%"compiler/mir:GenInfo" = type { %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64 }
%"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" = type { { i64, ptr }, { i64, ptr }, { i64, ptr }, i64, i64, i64 }
%"compiler/eval:Ptr" = type { i64, i64 }
%"compiler/eval:gkey" = type { i64, i32 }
%"compiler/eval:global" = type { i64, i1, i64, i64, i64, i1, i1, i1 }
%"std/pair:Pair.9f40551e0d6019a8e678d8f53048b6ba" = type { i64, %"compiler/source:Span" }
%"compiler/eval:alloc" = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32, i64, i1, i64, i1 }
%"compiler/eval:scope" = type { i64, i1, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i1, i64, i64 }
%"compiler/eval:frame" = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i1, i1, i1, i64, i64, i1, i64, i32, i32, i64 }
%"compiler/eval:genRec" = type { i64, i64, %"compiler/eval:frame", i64, %"compiler/eval:Ptr", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, i64, i64, i64 }
%"compiler/mir:Local" = type { i32, %"compiler/source:Span", i32, i32, { i64, [1 x i64] } }
%"compiler/eval:task" = type { i64, i64, i64, i64, i64 }
%"compiler/mir:Task" = type { { i64, [7 x i64] }, %"compiler/mir:Range", %"compiler/mir:Range", %"compiler/mir:Range", %"compiler/mir:Range", %"compiler/mir:Range", %"compiler/source:Span", %"compiler/mir:Range" }
%"compiler/mir:TaskClause" = type { %"compiler/mir:Range", i1, { i64, [4 x i64] } }
%"compiler/typed:Item" = type { i32, i64 }
%"compiler/mir:BasicBlock" = type { %"compiler/mir:StmtList", { i64, [8 x i64] } }
%"compiler/mir:StmtList" = type { { i64, ptr }, i64 }
%"compiler/eval:cfn" = type { i64, { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, i64, i1, i1, { i64, ptr } }
define dso_local void @compiler_2feval_2ecatchFn(ptr %out, ptr %v0, ptr %v1, ptr %a0, i64 %a1, i64 %a2, i32 %a3, i64 %a4) #0 {
entry:
  %l0 = alloca ptr
  %l5 = alloca i32
  %lp6 = alloca ptr
  %l7 = alloca i32
  %l8 = alloca i32
  %l9 = alloca i32
  %l10 = alloca i32
  %l11 = alloca i32
  %l12 = alloca i32
  %l15 = alloca i32
  %l16 = alloca ptr
  %l17 = alloca i64
  %l18 = alloca ptr
  %l21 = alloca i32
  %l23 = alloca i32
  %l24 = alloca %"compiler/mir:Fn"
  %l28 = alloca i32
  %l32 = alloca i32
  %l34 = alloca i32
  %l36 = alloca i32
  %l38 = alloca i32
  %l40 = alloca i32
  %l41 = alloca ptr
  %l43 = alloca { i64, [2 x i64] }
  %l45 = alloca { i64, [7 x i64] }
  %l46 = alloca ptr
  %l47 = alloca { i64, [4 x i64] }
  %l48 = alloca { i64, ptr }
  %l49 = alloca %"compiler/mir:Range"
  %l50 = alloca %"compiler/mir:Range"
  %l52 = alloca %"compiler/mir:Lvalue"
  %l56 = alloca %"compiler/mir:Call"
  %l57 = alloca i32
  %l67 = alloca { i64, [21 x i64] }
  %l69 = alloca ptr
  %l70 = alloca i32
  %l71 = alloca %"compiler/source:Span"
  %l73 = alloca %"compiler/mir:Lvalue"
  %l76 = alloca ptr
  %l77 = alloca i32
  %l79 = alloca %"compiler/mir:Lvalue"
  %l80 = alloca { i64, [4 x i64] }
  %l81 = alloca ptr
  %l84 = alloca %"compiler/mir:Case"
  %l85 = alloca { i64, ptr }
  %l86 = alloca %"compiler/mir:Range"
  %l93 = alloca { i64, [21 x i64] }
  %l105 = alloca { i64, [21 x i64] }
  %l113 = alloca %"compiler/mir:Fn"
  %s0 = alloca %olang.scope
  %t18 = alloca %"compiler/mir:Fn", align 8
  %t61 = alloca { i64, [7 x i64] }, align 8
  %t105 = alloca { i64, [8 x i64] }, align 8
  %t120 = alloca { i64, [21 x i64] }, align 8
  %t137 = alloca { i64, [4 x i64] }, align 8
  %t143 = alloca { i64, [8 x i64] }, align 8
  %t159 = alloca { i64, [4 x i64] }, align 8
  %t183 = alloca { i64, [8 x i64] }, align 8
  %t200 = alloca { i64, [21 x i64] }, align 8
  %t215 = alloca { i64, [4 x i64] }, align 8
  %t222 = alloca { i64, [8 x i64] }, align 8
  %t237 = alloca { i64, [21 x i64] }, align 8
  %t252 = alloca { i64, [4 x i64] }, align 8
  %t259 = alloca { i64, [8 x i64] }, align 8
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePrim(ptr %v0, ptr %s0, ptr %t1, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d0, i32 0, i32 1) })
  store i32 %t3, ptr %l15
  br label %bb1
bb1:
  %t4 = load i32, ptr %l15, !tbaa !23
  store i32 %t4, ptr %l5, !tbaa !23
  %t5 = load ptr, ptr %l0, !tbaa !29
  store ptr %t5, ptr %l16, !tbaa !29
  store i64 %a1, ptr %l17, !tbaa !24
  %t7 = load ptr, ptr %l0, !tbaa !29
  store ptr %t7, ptr %l18, !tbaa !29
  %t8 = load ptr, ptr %l0, !tbaa !29
  %t9 = load i32, ptr %l5, !tbaa !23
  %t12 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eList1(ptr %v0, ptr %t8, i32 %t9)
  store i32 %t12, ptr %l21
  br label %bb2
bb2:
  %t13 = load i32, ptr %l5, !tbaa !23
  %t14 = load ptr, ptr %l18, !tbaa !29
  %t15 = load i32, ptr %l21, !tbaa !23
  %t17 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eFunc(ptr %v0, ptr %t14, i32 %t15, i32 %t13, i32 0, i32 0, i64 0, i1 false, i32 0, i64 0)
  store i32 %t17, ptr %l23
  br label %bb3
bb3:
  %t19 = load ptr, ptr %l16, !tbaa !29
  %t20 = load i64, ptr %l17, !tbaa !24
  %t21 = load i32, ptr %l23, !tbaa !23
  call void @compiler_2feval_2etfn(ptr %t18, ptr %v0, ptr %v1, ptr %t19, i64 %t20, i32 %t21)
  call void @llvm.memmove.p0.p0.i64(ptr %l24, ptr %t18, i64 800, i1 false)
  br label %bb4
bb4:
  %t22 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 800, i64 8)
  store ptr %t22, ptr %lp6
  %t23 = load ptr, ptr %lp6
  call void @llvm.memmove.p0.p0.i64(ptr %t23, ptr %l24, i64 800, i1 false)
  %t24 = load ptr, ptr %lp6
  %t25 = load i32, ptr %l5, !tbaa !23
  %t26 = load %"compiler/source:Span", ptr @G_2ecompiler_2feval_2eSp0
  %t30 = call i32 @compiler_2fmir_2ecompiler_2fmir_3aFn_2eAddTemp(ptr %v1, ptr %t24, i32 %t25, %"compiler/source:Span" %t26)
  store i32 %t30, ptr %l28
  br label %bb5
bb5:
  %t31 = load i32, ptr %l28, !tbaa !23
  store i32 %t31, ptr %l7, !tbaa !23
  %t32 = load ptr, ptr %lp6
  %t33 = load i32, ptr @G_2ecompiler_2fmir_2eI32T, !tbaa !23
  %t34 = load %"compiler/source:Span", ptr @G_2ecompiler_2feval_2eSp0
  %t38 = call i32 @compiler_2fmir_2ecompiler_2fmir_3aFn_2eAddTemp(ptr %v1, ptr %t32, i32 %t33, %"compiler/source:Span" %t34)
  store i32 %t38, ptr %l32
  br label %bb6
bb6:
  %t39 = load i32, ptr %l32, !tbaa !23
  store i32 %t39, ptr %l8, !tbaa !23
  %t40 = load ptr, ptr %lp6
  %t42 = call i32 @compiler_2fmir_2ecompiler_2fmir_3aFn_2eNewBlock(ptr %v1, ptr %t40)
  store i32 %t42, ptr %l34
  br label %bb7
bb7:
  %t43 = load i32, ptr %l34, !tbaa !23
  store i32 %t43, ptr %l9, !tbaa !23
  %t44 = load ptr, ptr %lp6
  %t46 = call i32 @compiler_2fmir_2ecompiler_2fmir_3aFn_2eNewBlock(ptr %v1, ptr %t44)
  store i32 %t46, ptr %l36
  br label %bb8
bb8:
  %t47 = load i32, ptr %l36, !tbaa !23
  store i32 %t47, ptr %l10, !tbaa !23
  %t48 = load ptr, ptr %lp6
  %t50 = call i32 @compiler_2fmir_2ecompiler_2fmir_3aFn_2eNewBlock(ptr %v1, ptr %t48)
  store i32 %t50, ptr %l38
  br label %bb9
bb9:
  %t51 = load i32, ptr %l38, !tbaa !23
  store i32 %t51, ptr %l11, !tbaa !23
  %t52 = load ptr, ptr %lp6
  %t54 = call i32 @compiler_2fmir_2ecompiler_2fmir_3aFn_2eNewBlock(ptr %v1, ptr %t52)
  store i32 %t54, ptr %l40
  br label %bb10
bb10:
  %t55 = load i32, ptr %l40, !tbaa !23
  store i32 %t55, ptr %l12, !tbaa !23
  %t56 = load ptr, ptr %lp6
  store ptr %t56, ptr %l41, !tbaa !29
  %t59 = call { i64, [2 x i64] } @compiler_2feval_2etkey(i64 %a2)
  store { i64, [2 x i64] } %t59, ptr %l43
  br label %bb11
bb11:
  store { i64, [7 x i64] } zeroinitializer, ptr %t61
  %t62 = getelementptr { i64, [7 x i64] }, ptr %t61, i32 0, i32 0
  store i64 0, ptr %t62
  %t63 = load { i64, [2 x i64] }, ptr %l43
  %t64 = insertvalue { { i64, [2 x i64] }, i32 } undef, { i64, [2 x i64] } %t63, 0
  %t66 = insertvalue { { i64, [2 x i64] }, i32 } %t64, i32 %a3, 1
  %t67 = getelementptr { i64, [7 x i64] }, ptr %t61, i32 0, i32 1
  store { { i64, [2 x i64] }, i32 } %t66, ptr %t67
  %t68 = load { i64, [7 x i64] }, ptr %t61
  store { i64, [7 x i64] } %t68, ptr %l45
  %t69 = load ptr, ptr %lp6
  store ptr %t69, ptr %l46, !tbaa !29
  %t70 = call { i64, [4 x i64] } @compiler_2feval_2etcopy(i64 0)
  store { i64, [4 x i64] } %t70, ptr %l47
  br label %bb12
bb12:
  %t71 = mul i64 1, 40
  %t72 = call ptr @__olang_scope_alloc_zeroed(ptr %s0, i64 %t71)
  %t73 = insertvalue { i64, ptr } undef, i64 1, 0
  %t74 = insertvalue { i64, ptr } %t73, ptr %t72, 1
  store { i64, ptr } %t74, ptr %l48, !tbaa !27
  %t75 = load { i64, [4 x i64] }, ptr %l47
  %t76 = getelementptr { i64, ptr }, ptr %l48, i32 0, i32 1
  %t77 = load ptr, ptr %t76, !tbaa !27
  %t78 = getelementptr { i64, [4 x i64] }, ptr %t77, i64 0
  store { i64, [4 x i64] } %t75, ptr %t78
  %t79 = load ptr, ptr %l46, !tbaa !29
  %t80 = load { i64, ptr }, ptr %l48, !tbaa !27
  %t81 = call %"compiler/mir:Range" @compiler_2fmir_2ecompiler_2fmir_3aFn_2eArgs(ptr %v1, ptr %s0, ptr %t79, { i64, ptr } %t80)
  store %"compiler/mir:Range" %t81, ptr %l49
  br label %bb13
bb13:
  %t82 = load %"compiler/mir:Range", ptr @G_2ecompiler_2fmir_2eEmpty
  store %"compiler/mir:Range" %t82, ptr %l50
  %t83 = load i32, ptr %l7, !tbaa !23
  %t85 = call %"compiler/mir:Lvalue" @compiler_2fmir_2eLvalue_2eL(i32 %t83)
  store %"compiler/mir:Lvalue" %t85, ptr %l52
  br label %bb14
bb14:
  %t86 = load i32, ptr %l9, !tbaa !23
  %t87 = load i32, ptr %l8, !tbaa !23
  %t88 = load i32, ptr %l10, !tbaa !23
  %t89 = load { i64, [7 x i64] }, ptr %l45
  %t90 = load %"compiler/mir:Range", ptr %l49
  %t91 = load %"compiler/mir:Range", ptr %l50
  %t92 = load %"compiler/mir:Lvalue", ptr %l52
  %t96 = call %"compiler/mir:Call" @compiler_2fmir_3aCall_2ector(ptr %s0, { i64, [7 x i64] } %t89, %"compiler/mir:Range" %t90, %"compiler/mir:Range" %t91, %"compiler/mir:Lvalue" %t92, i1 true, i32 %t86, i32 %t87, i32 %t88)
  store %"compiler/mir:Call" %t96, ptr %l56
  br label %bb15
bb15:
  %t97 = load ptr, ptr %l41, !tbaa !29
  %t98 = load %"compiler/mir:Call", ptr %l56
  %t99 = call i32 @compiler_2fmir_2ecompiler_2fmir_3aFn_2eAddCall(ptr %v1, ptr %t97, %"compiler/mir:Call" %t98)
  store i32 %t99, ptr %l57
  br label %bb16
bb16:
  %t100 = load i32, ptr %l57, !tbaa !23
  %t101 = load ptr, ptr %lp6
  %t102 = load i32, ptr @G_2ecompiler_2feval_2eB0, !tbaa !23
  %t103 = load %"compiler/source:Span", ptr @G_2ecompiler_2feval_2eSp0
  store { i64, [8 x i64] } zeroinitializer, ptr %t105
  %t106 = getelementptr { i64, [8 x i64] }, ptr %t105, i32 0, i32 0
  store i64 4, ptr %t106
  %t108 = insertvalue { %"compiler/source:Span", i32 } undef, %"compiler/source:Span" %t103, 0
  %t110 = insertvalue { %"compiler/source:Span", i32 } %t108, i32 %t100, 1
  %t111 = getelementptr { i64, [8 x i64] }, ptr %t105, i32 0, i32 1
  store { %"compiler/source:Span", i32 } %t110, ptr %t111
  %t112 = load { i64, [8 x i64] }, ptr %t105
  call void @compiler_2fmir_2ecompiler_2fmir_3aFn_2eEnd(ptr %v1, ptr %t101, i32 %t102, { i64, [8 x i64] } %t112)
  br label %bb17
bb17:
  %t116 = load ptr, ptr %lp6
  %t117 = load i32, ptr %l9, !tbaa !23
  %t118 = load %"compiler/source:Span", ptr @G_2ecompiler_2feval_2eSp0
  %t119 = load i32, ptr @G_2ecompiler_2feval_2eS0, !tbaa !23
  store { i64, [21 x i64] } zeroinitializer, ptr %t120
  %t121 = getelementptr { i64, [21 x i64] }, ptr %t120, i32 0, i32 0
  store i64 4, ptr %t121
  %t123 = insertvalue { %"compiler/source:Span", i32 } undef, %"compiler/source:Span" %t118, 0
  %t125 = insertvalue { %"compiler/source:Span", i32 } %t123, i32 %t119, 1
  %t126 = getelementptr { i64, [21 x i64] }, ptr %t120, i32 0, i32 1
  store { %"compiler/source:Span", i32 } %t125, ptr %t126
  %t127 = load { i64, [21 x i64] }, ptr %t120
  store { i64, [21 x i64] } %t127, ptr %l67
  call void @compiler_2fmir_2ecompiler_2fmir_3aFn_2eAdd(ptr %v1, ptr %s0, ptr %t116, i32 %t117, ptr %l67)
  br label %bb18
bb18:
  %t131 = load ptr, ptr %lp6
  store ptr %t131, ptr %l69, !tbaa !29
  %t132 = load i32, ptr %l9, !tbaa !23
  store i32 %t132, ptr %l70, !tbaa !23
  %t133 = load %"compiler/source:Span", ptr @G_2ecompiler_2feval_2eSp0
  store %"compiler/source:Span" %t133, ptr %l71
  %t134 = load i32, ptr %l7, !tbaa !23
  %t136 = call %"compiler/mir:Lvalue" @compiler_2fmir_2eLvalue_2eL(i32 %t134)
  store %"compiler/mir:Lvalue" %t136, ptr %l73
  br label %bb19
bb19:
  store { i64, [4 x i64] } zeroinitializer, ptr %t137
  %t138 = getelementptr { i64, [4 x i64] }, ptr %t137, i32 0, i32 0
  store i64 1, ptr %t138
  %t139 = load %"compiler/mir:Lvalue", ptr %l73
  %t140 = insertvalue { %"compiler/mir:Lvalue" } undef, %"compiler/mir:Lvalue" %t139, 0
  %t141 = getelementptr { i64, [4 x i64] }, ptr %t137, i32 0, i32 1
  store { %"compiler/mir:Lvalue" } %t140, ptr %t141
  %t142 = load { i64, [4 x i64] }, ptr %t137
  store { i64, [8 x i64] } zeroinitializer, ptr %t143
  %t144 = getelementptr { i64, [8 x i64] }, ptr %t143, i32 0, i32 0
  store i64 5, ptr %t144
  %t145 = load %"compiler/source:Span", ptr %l71
  %t146 = insertvalue { %"compiler/source:Span", { i64, [4 x i64] } } undef, %"compiler/source:Span" %t145, 0
  %t148 = insertvalue { %"compiler/source:Span", { i64, [4 x i64] } } %t146, { i64, [4 x i64] } %t142, 1
  %t149 = getelementptr { i64, [8 x i64] }, ptr %t143, i32 0, i32 1
  store { %"compiler/source:Span", { i64, [4 x i64] } } %t148, ptr %t149
  %t150 = load { i64, [8 x i64] }, ptr %t143
  %t151 = load ptr, ptr %l69, !tbaa !29
  %t152 = load i32, ptr %l70, !tbaa !23
  call void @compiler_2fmir_2ecompiler_2fmir_3aFn_2eEnd(ptr %v1, ptr %t151, i32 %t152, { i64, [8 x i64] } %t150)
  br label %bb20
bb20:
  %t154 = load ptr, ptr %lp6
  store ptr %t154, ptr %l76, !tbaa !29
  %t155 = load i32, ptr %l10, !tbaa !23
  store i32 %t155, ptr %l77, !tbaa !23
  %t156 = load i32, ptr %l8, !tbaa !23
  %t158 = call %"compiler/mir:Lvalue" @compiler_2fmir_2eLvalue_2eL(i32 %t156)
  store %"compiler/mir:Lvalue" %t158, ptr %l79
  br label %bb21
bb21:
  store { i64, [4 x i64] } zeroinitializer, ptr %t159
  %t160 = getelementptr { i64, [4 x i64] }, ptr %t159, i32 0, i32 0
  store i64 1, ptr %t160
  %t161 = load %"compiler/mir:Lvalue", ptr %l79
  %t162 = insertvalue { %"compiler/mir:Lvalue" } undef, %"compiler/mir:Lvalue" %t161, 0
  %t163 = getelementptr { i64, [4 x i64] }, ptr %t159, i32 0, i32 1
  store { %"compiler/mir:Lvalue" } %t162, ptr %t163
  %t164 = load { i64, [4 x i64] }, ptr %t159
  store { i64, [4 x i64] } %t164, ptr %l80
  %t165 = load ptr, ptr %lp6
  store ptr %t165, ptr %l81, !tbaa !29
  %t167 = load i32, ptr %l11, !tbaa !23
  %t170 = call %"compiler/mir:Case" @compiler_2fmir_3aCase_2ector(ptr %s0, i64 %a4, i32 %t167)
  store %"compiler/mir:Case" %t170, ptr %l84
  br label %bb22
bb22:
  %t171 = mul i64 1, 16
  %t172 = call ptr @__olang_scope_alloc_zeroed(ptr %s0, i64 %t171)
  %t173 = insertvalue { i64, ptr } undef, i64 1, 0
  %t174 = insertvalue { i64, ptr } %t173, ptr %t172, 1
  store { i64, ptr } %t174, ptr %l85, !tbaa !27
  %t175 = load %"compiler/mir:Case", ptr %l84
  %t176 = getelementptr { i64, ptr }, ptr %l85, i32 0, i32 1
  %t177 = load ptr, ptr %t176, !tbaa !27
  %t178 = getelementptr %"compiler/mir:Case", ptr %t177, i64 0
  store %"compiler/mir:Case" %t175, ptr %t178
  %t179 = load ptr, ptr %l81, !tbaa !29
  %t180 = load { i64, ptr }, ptr %l85, !tbaa !27
  %t181 = call %"compiler/mir:Range" @compiler_2fmir_2ecompiler_2fmir_3aFn_2eAddCases(ptr %v1, ptr %s0, ptr %t179, { i64, ptr } %t180)
  store %"compiler/mir:Range" %t181, ptr %l86
  br label %bb23
bb23:
  %t182 = load i32, ptr %l12, !tbaa !23
  store { i64, [8 x i64] } zeroinitializer, ptr %t183
  %t184 = getelementptr { i64, [8 x i64] }, ptr %t183, i32 0, i32 0
  store i64 3, ptr %t184
  %t185 = load { i64, [4 x i64] }, ptr %l80
  %t186 = insertvalue { { i64, [4 x i64] }, %"compiler/mir:Range", i32 } undef, { i64, [4 x i64] } %t185, 0
  %t187 = load %"compiler/mir:Range", ptr %l86
  %t188 = insertvalue { { i64, [4 x i64] }, %"compiler/mir:Range", i32 } %t186, %"compiler/mir:Range" %t187, 1
  %t190 = insertvalue { { i64, [4 x i64] }, %"compiler/mir:Range", i32 } %t188, i32 %t182, 2
  %t191 = getelementptr { i64, [8 x i64] }, ptr %t183, i32 0, i32 1
  store { { i64, [4 x i64] }, %"compiler/mir:Range", i32 } %t190, ptr %t191
  %t192 = load { i64, [8 x i64] }, ptr %t183
  %t193 = load ptr, ptr %l76, !tbaa !29
  %t194 = load i32, ptr %l77, !tbaa !23
  call void @compiler_2fmir_2ecompiler_2fmir_3aFn_2eEnd(ptr %v1, ptr %t193, i32 %t194, { i64, [8 x i64] } %t192)
  br label %bb24
bb24:
  %t196 = load ptr, ptr %lp6
  %t197 = load i32, ptr %l11, !tbaa !23
  %t198 = load %"compiler/source:Span", ptr @G_2ecompiler_2feval_2eSp0
  %t199 = load i32, ptr @G_2ecompiler_2feval_2eS0, !tbaa !23
  store { i64, [21 x i64] } zeroinitializer, ptr %t200
  %t201 = getelementptr { i64, [21 x i64] }, ptr %t200, i32 0, i32 0
  store i64 4, ptr %t201
  %t203 = insertvalue { %"compiler/source:Span", i32 } undef, %"compiler/source:Span" %t198, 0
  %t205 = insertvalue { %"compiler/source:Span", i32 } %t203, i32 %t199, 1
  %t206 = getelementptr { i64, [21 x i64] }, ptr %t200, i32 0, i32 1
  store { %"compiler/source:Span", i32 } %t205, ptr %t206
  %t207 = load { i64, [21 x i64] }, ptr %t200
  store { i64, [21 x i64] } %t207, ptr %l93
  call void @compiler_2fmir_2ecompiler_2fmir_3aFn_2eAdd(ptr %v1, ptr %s0, ptr %t196, i32 %t197, ptr %l93)
  br label %bb25
bb25:
  %t211 = load ptr, ptr %lp6
  %t212 = load i32, ptr %l11, !tbaa !23
  %t213 = load %"compiler/source:Span", ptr @G_2ecompiler_2feval_2eSp0
  %t214 = load i32, ptr %l5, !tbaa !23
  store { i64, [4 x i64] } zeroinitializer, ptr %t215
  %t216 = getelementptr { i64, [4 x i64] }, ptr %t215, i32 0, i32 0
  store i64 2, ptr %t216
  %t218 = insertvalue { i32, i64 } undef, i32 %t214, 0
  %t219 = insertvalue { i32, i64 } %t218, i64 -1, 1
  %t220 = getelementptr { i64, [4 x i64] }, ptr %t215, i32 0, i32 1
  store { i32, i64 } %t219, ptr %t220
  %t221 = load { i64, [4 x i64] }, ptr %t215
  store { i64, [8 x i64] } zeroinitializer, ptr %t222
  %t223 = getelementptr { i64, [8 x i64] }, ptr %t222, i32 0, i32 0
  store i64 5, ptr %t223
  %t225 = insertvalue { %"compiler/source:Span", { i64, [4 x i64] } } undef, %"compiler/source:Span" %t213, 0
  %t227 = insertvalue { %"compiler/source:Span", { i64, [4 x i64] } } %t225, { i64, [4 x i64] } %t221, 1
  %t228 = getelementptr { i64, [8 x i64] }, ptr %t222, i32 0, i32 1
  store { %"compiler/source:Span", { i64, [4 x i64] } } %t227, ptr %t228
  %t229 = load { i64, [8 x i64] }, ptr %t222
  call void @compiler_2fmir_2ecompiler_2fmir_3aFn_2eEnd(ptr %v1, ptr %t211, i32 %t212, { i64, [8 x i64] } %t229)
  br label %bb26
bb26:
  %t233 = load ptr, ptr %lp6
  %t234 = load i32, ptr %l12, !tbaa !23
  %t235 = load %"compiler/source:Span", ptr @G_2ecompiler_2feval_2eSp0
  %t236 = load i32, ptr @G_2ecompiler_2feval_2eS0, !tbaa !23
  store { i64, [21 x i64] } zeroinitializer, ptr %t237
  %t238 = getelementptr { i64, [21 x i64] }, ptr %t237, i32 0, i32 0
  store i64 4, ptr %t238
  %t240 = insertvalue { %"compiler/source:Span", i32 } undef, %"compiler/source:Span" %t235, 0
  %t242 = insertvalue { %"compiler/source:Span", i32 } %t240, i32 %t236, 1
  %t243 = getelementptr { i64, [21 x i64] }, ptr %t237, i32 0, i32 1
  store { %"compiler/source:Span", i32 } %t242, ptr %t243
  %t244 = load { i64, [21 x i64] }, ptr %t237
  store { i64, [21 x i64] } %t244, ptr %l105
  call void @compiler_2fmir_2ecompiler_2fmir_3aFn_2eAdd(ptr %v1, ptr %s0, ptr %t233, i32 %t234, ptr %l105)
  br label %bb27
bb27:
  %t248 = load ptr, ptr %lp6
  %t249 = load i32, ptr %l12, !tbaa !23
  %t250 = load %"compiler/source:Span", ptr @G_2ecompiler_2feval_2eSp0
  %t251 = load i32, ptr %l5, !tbaa !23
  store { i64, [4 x i64] } zeroinitializer, ptr %t252
  %t253 = getelementptr { i64, [4 x i64] }, ptr %t252, i32 0, i32 0
  store i64 2, ptr %t253
  %t255 = insertvalue { i32, i64 } undef, i32 %t251, 0
  %t256 = insertvalue { i32, i64 } %t255, i64 -2, 1
  %t257 = getelementptr { i64, [4 x i64] }, ptr %t252, i32 0, i32 1
  store { i32, i64 } %t256, ptr %t257
  %t258 = load { i64, [4 x i64] }, ptr %t252
  store { i64, [8 x i64] } zeroinitializer, ptr %t259
  %t260 = getelementptr { i64, [8 x i64] }, ptr %t259, i32 0, i32 0
  store i64 5, ptr %t260
  %t262 = insertvalue { %"compiler/source:Span", { i64, [4 x i64] } } undef, %"compiler/source:Span" %t250, 0
  %t264 = insertvalue { %"compiler/source:Span", { i64, [4 x i64] } } %t262, { i64, [4 x i64] } %t258, 1
  %t265 = getelementptr { i64, [8 x i64] }, ptr %t259, i32 0, i32 1
  store { %"compiler/source:Span", { i64, [4 x i64] } } %t264, ptr %t265
  %t266 = load { i64, [8 x i64] }, ptr %t259
  call void @compiler_2fmir_2ecompiler_2fmir_3aFn_2eEnd(ptr %v1, ptr %t248, i32 %t249, { i64, [8 x i64] } %t266)
  br label %bb28
bb28:
  %t270 = load ptr, ptr %lp6
  call void @llvm.memmove.p0.p0.i64(ptr %l113, ptr %t270, i64 800, i1 false)
  call void @__olang_scope_close(ptr %s0)
  call void @llvm.memmove.p0.p0.i64(ptr %out, ptr %l113, i64 800, i1 false)
  br label %ret
ret:
  ret void
}

define dso_local i64 @compiler_2feval_2ecmp128(i64 %a0, i64 %a1, i64 %a2, i64 %a3, i1 %a4) #0 {
entry:
  %l0 = alloca i64
  %l1 = alloca i64
  %l2 = alloca i64
  %l3 = alloca i64
  %l12 = alloca i64
  %l15 = alloca i1
  %l16 = alloca i64
  %l23 = alloca i1
  %l24 = alloca i64
  %rv = alloca i64
  store i64 %a0, ptr %l0
  store i64 %a1, ptr %l1
  store i64 %a2, ptr %l2
  store i64 %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load i64, ptr %l1, !tbaa !24
  %t2 = load i64, ptr %l3, !tbaa !24
  %t5 = icmp ne i64 %t1, %t2
  br i1 %t5, label %bb1, label %bb2
bb1:
  br i1 %a4, label %bb3, label %bb4
bb2:
  br label %bb13
bb3:
  %t9 = load i64, ptr %l1, !tbaa !24
  %t10 = load i64, ptr %l3, !tbaa !24
  %t13 = icmp slt i64 %t9, %t10
  br i1 %t13, label %bb5, label %bb6
bb4:
  br label %bb8
bb5:
  store i64 -1, ptr %l12, !tbaa !24
  br label %bb7
bb6:
  store i64 1, ptr %l12, !tbaa !24
  br label %bb7
bb7:
  %t15 = load i64, ptr %l12, !tbaa !24
  store i64 %t15, ptr %rv
  br label %ret
bb8:
  %t16 = load i64, ptr %l1, !tbaa !24
  %t17 = load i64, ptr %l3, !tbaa !24
  %t20 = call i1 @compiler_2feval_2eult64(i64 %t16, i64 %t17)
  store i1 %t20, ptr %l15
  br label %bb9
bb9:
  %t21 = load i1, ptr %l15, !tbaa !21
  br i1 %t21, label %bb10, label %bb11
bb10:
  store i64 -1, ptr %l16, !tbaa !24
  br label %bb12
bb11:
  store i64 1, ptr %l16, !tbaa !24
  br label %bb12
bb12:
  %t22 = load i64, ptr %l16, !tbaa !24
  store i64 %t22, ptr %rv
  br label %ret
bb13:
  %t23 = load i64, ptr %l0, !tbaa !24
  %t24 = load i64, ptr %l2, !tbaa !24
  %t27 = icmp eq i64 %t23, %t24
  br i1 %t27, label %bb14, label %bb15
bb14:
  store i64 0, ptr %rv
  br label %ret
bb15:
  br label %bb16
bb16:
  %t30 = load i64, ptr %l0, !tbaa !24
  %t31 = load i64, ptr %l2, !tbaa !24
  %t34 = call i1 @compiler_2feval_2eult64(i64 %t30, i64 %t31)
  store i1 %t34, ptr %l23
  br label %bb17
bb17:
  %t35 = load i1, ptr %l23, !tbaa !21
  br i1 %t35, label %bb18, label %bb19
bb18:
  store i64 -1, ptr %l24, !tbaa !24
  br label %bb20
bb19:
  store i64 1, ptr %l24, !tbaa !24
  br label %bb20
bb20:
  %t36 = load i64, ptr %l24, !tbaa !24
  store i64 %t36, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local void @compiler_2feval_2ecompiler_2feval_3aMachine_2eDefineExtern(ptr %v0, ptr %v1, ptr %a0, i64 %a1, { i64, ptr } %a2, i64 %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l3 = alloca i64
  %l5 = alloca ptr
  %l6 = alloca i64
  %l7 = alloca i64
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  store i64 %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/eval:Machine", ptr %t1, i32 0, i32 31
  store ptr %t3, ptr %l5, !tbaa !29
  %t4 = load i64, ptr %l1, !tbaa !24
  store i64 %t4, ptr %l6, !tbaa !24
  %t5 = ptrtoint ptr %v0 to i64
  store i64 %t5, ptr %l7, !tbaa !24
  %t6 = load i1, ptr @olang_2esole_2estd_2fprelude_2fmap_3aMapEntry_3cI64_2c_20std_2fprelude_2ftext_3aString_26_3e_2e1
  br i1 %t6, label %bb1, label %bb2
bb1:
  %t8 = call ptr @__olang_region_make(ptr %v0)
  %t9 = ptrtoint ptr %t8 to i64
  store i64 %t9, ptr %l7, !tbaa !24
  br label %bb2
bb2:
  %t12 = extractvalue { i64, ptr } %a2, 1
  %t13 = extractvalue { i64, ptr } %a2, 0
  %t14 = load i64, ptr %l7
  %t15 = inttoptr i64 %t14 to ptr
  %t16 = call ptr @__olang_scope_alloc(ptr %t15, i64 %t13)
  call void @olang_textcopy(ptr %t16, ptr %t12, i64 %t13)
  %t17 = insertvalue { i64, ptr } undef, i64 %t13, 0
  %t18 = insertvalue { i64, ptr } %t17, ptr %t16, 1
  %t20 = load i64, ptr %l7
  %t21 = inttoptr i64 %t20 to ptr
  %t22 = extractvalue { i64, ptr } %t18, 0
  %t23 = extractvalue { i64, ptr } %t18, 1
  %t24 = mul i64 %t22, 1
  %t25 = call ptr @__olang_scope_alloc(ptr %t21, i64 %t24)
  call void @llvm.memcpy.p0.p0.i64(ptr %t25, ptr %t23, i64 %t24, i1 false)
  %t26 = insertvalue { i64, ptr } undef, i64 %t22, 0
  %t27 = insertvalue { i64, ptr } %t26, ptr %t25, 1
  %t28 = load ptr, ptr %l5, !tbaa !29
  %t29 = load i64, ptr %l6, !tbaa !24
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2ftext_3aString_Hc3dff1927e5c626a9d95abfdf4e9a462(ptr %v0, ptr %v0, ptr %t28, i64 %t29, { i64, ptr } %t27)
  br label %bb3
bb3:
  %t31 = load i64, ptr %l3, !tbaa !24
  %t33 = icmp sge i64 %t31, 0
  br i1 %t33, label %bb4, label %bb5
bb4:
  %t35 = load ptr, ptr %l0, !tbaa !29
  %t37 = getelementptr %"compiler/eval:Machine", ptr %t35, i32 0, i32 32
  %t38 = load i64, ptr %l1, !tbaa !24
  %t39 = load i64, ptr %l3, !tbaa !24
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2ePut_3cI64_2c_20I64_3e(ptr %v0, ptr %t37, i64 %t38, i64 %t39)
  br label %bb6
bb5:
  br label %bb7
bb6:
  br label %bb7
bb7:
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2feval_2ecompiler_2feval_3aMachine_2eDefineTable(ptr %v0, ptr %v1, ptr %a0, i64 %a1, i32 %a2, { i64, ptr } %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l7 = alloca i1
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/eval:Machine", ptr %t1, i32 0, i32 36
  %t4 = load i64, ptr %l1, !tbaa !24
  %t7 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Array_3ccompiler_2fmir_3aFnKe_H6f34e373626f6b99bb5e62c0fd8bd7a4(ptr %v0, ptr %t3, i64 %t4)
  store i1 %t7, ptr %l7
  br label %bb1
bb1:
  %t8 = load i1, ptr %l7, !tbaa !21
  br i1 %t8, label %bb2, label %bb3
bb2:
  br label %ret
bb3:
  br label %bb4
bb4:
  %t9 = load ptr, ptr %l0, !tbaa !29
  %t11 = getelementptr %"compiler/eval:Machine", ptr %t9, i32 0, i32 35
  %t12 = load i64, ptr %l1, !tbaa !24
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2ftypes_3aTypeId_3e__Hbdd7c5068e376aa260a62181a9f99429(ptr %v0, ptr %t11, i64 %t12, i32 %a2)
  br label %bb5
bb5:
  %t17 = load ptr, ptr %l0, !tbaa !29
  %t19 = getelementptr %"compiler/eval:Machine", ptr %t17, i32 0, i32 36
  %t20 = load i64, ptr %l1, !tbaa !24
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Array_3ccompiler_2fmir_3aFnKe_Hd8d89e440939766a34c786789c5d3b97(ptr %v0, ptr %v1, ptr %t19, i64 %t20, { i64, ptr } %a3)
  br label %bb6
bb6:
  br label %ret
ret:
  ret void
}

define dso_local { i64, [5 x i64] } @compiler_2feval_2ecompiler_2feval_3aMachine_2eEndProgram(ptr %v0, ptr %v1, ptr %a0, { i64, [2 x i64] } %a1) #0 {
entry:
  %l0 = alloca ptr
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l9 = alloca i64
  %l13 = alloca i64
  %l14 = alloca i32
  %l21 = alloca i64
  %l28 = alloca i64
  %l35 = alloca i64
  %l38 = alloca i1
  %rv = alloca { i64, [5 x i64] }
  %t5 = alloca { i64, [5 x i64] }, align 8
  %t23 = alloca { i64, [5 x i64] }, align 8
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/eval:Machine", ptr %t1, i32 0, i32 19
  store i1 false, ptr %t3, !tbaa !21
  %t4 = load ptr, ptr %l0, !tbaa !29
  store { i64, [5 x i64] } zeroinitializer, ptr %t5
  %t6 = getelementptr { i64, [5 x i64] }, ptr %t5, i32 0, i32 0
  store i64 0, ptr %t6
  %t7 = load { i64, [5 x i64] }, ptr %t5
  %t10 = getelementptr %"compiler/eval:Machine", ptr %t4, i32 0, i32 17
  store { i64, [5 x i64] } %t7, ptr %t10
  %t11 = load ptr, ptr %l0, !tbaa !29
  %t13 = getelementptr %"compiler/eval:Machine", ptr %t11, i32 0, i32 27
  %t17 = call { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fmir_3aFnKey_2c_20I64_3e_2eG_H6ffe2eb17daa971b2c9d564ad72358b1(ptr %v0, ptr %t13, { i64, [2 x i64] } %a1)
  %t18 = extractvalue { i32, i64 } %t17, 1
  %t19 = extractvalue { i32, i64 } %t17, 0
  store i32 %t19, ptr %l14
  %t20 = icmp ne i32 %t19, 0
  br i1 %t20, label %bb2, label %ok.21, !prof !99
ok.21:
  store i64 %t18, ptr %l13
  br label %bb1
bb1:
  %t22 = load i64, ptr %l13, !tbaa !24
  store i64 %t22, ptr %l9, !tbaa !24
  br label %bb4
bb2:
  br label %bb3
bb3:
  store { i64, [5 x i64] } zeroinitializer, ptr %t23
  %t24 = getelementptr { i64, [5 x i64] }, ptr %t23, i32 0, i32 0
  store i64 0, ptr %t24
  %t25 = load { i64, [5 x i64] }, ptr %t23
  store { i64, [5 x i64] } %t25, ptr %rv
  br label %ret
bb4:
  %t27 = load i64, ptr %l9, !tbaa !24
  %t28 = load ptr, ptr %l0, !tbaa !29
  %t30 = getelementptr %"compiler/eval:Machine", ptr %t28, i32 0, i32 56
  %t31 = load i64, ptr %t30, !tbaa !24
  store i64 %t31, ptr %l3, !tbaa !24
  %t33 = load ptr, ptr %l0, !tbaa !29
  %t35 = load i64, ptr @G_2ecompiler_2feval_2erRequest, !tbaa !24
  %t39 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2epushFrame(ptr %v0, ptr %t33, i64 %t27, i64 %t35, i64 0)
  store i64 %t39, ptr %l21
  br label %bb5
bb5:
  %t40 = load i64, ptr %l21, !tbaa !24
  store i64 %t40, ptr %l4, !tbaa !24
  %t41 = load i64, ptr %l4, !tbaa !24
  %t43 = icmp slt i64 %t41, 0
  br i1 %t43, label %bb6, label %bb7
bb6:
  %t45 = load ptr, ptr %l0, !tbaa !29
  %t47 = getelementptr %"compiler/eval:Machine", ptr %t45, i32 0, i32 17
  %t48 = load { i64, [5 x i64] }, ptr %t47
  store { i64, [5 x i64] } %t48, ptr %rv
  br label %ret
bb7:
  br label %bb8
bb8:
  %t50 = load ptr, ptr %l0, !tbaa !29
  %t52 = getelementptr %"compiler/eval:Machine", ptr %t50, i32 0, i32 59
  %t54 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %t52)
  store i64 %t54, ptr %l28
  br label %bb9
bb9:
  %t55 = load i64, ptr %l28, !tbaa !24
  store i64 %t55, ptr %l5, !tbaa !24
  %t56 = load ptr, ptr %l0, !tbaa !29
  %t58 = getelementptr %"compiler/eval:Machine", ptr %t56, i32 0, i32 59
  %t59 = load ptr, ptr %l0, !tbaa !29
  %t61 = getelementptr %"compiler/eval:Machine", ptr %t59, i32 0, i32 67
  %t62 = load i64, ptr %t61, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %t58, i64 %t62)
  br label %bb10
bb10:
  br label %bb11
bb11:
  %t65 = load ptr, ptr %l0, !tbaa !29
  %t67 = getelementptr %"compiler/eval:Machine", ptr %t65, i32 0, i32 59
  %t69 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %t67)
  store i64 %t69, ptr %l35
  br label %bb12
bb12:
  %t70 = load i64, ptr %l5, !tbaa !24
  %t71 = load i64, ptr %l35, !tbaa !24
  %t73 = icmp sgt i64 %t71, %t70
  br i1 %t73, label %bb13, label %bb14
bb13:
  %t75 = load ptr, ptr %l0, !tbaa !29
  %t77 = getelementptr %"compiler/eval:Machine", ptr %t75, i32 0, i32 19
  %t78 = load i1, ptr %t77, !tbaa !21
  %t80 = xor i1 %t78, true
  store i1 %t80, ptr %l38, !tbaa !21
  br label %bb15
bb14:
  store i1 false, ptr %l38, !tbaa !21
  br label %bb15
bb15:
  %t82 = load i1, ptr %l38, !tbaa !21
  %t83 = xor i1 %t82, true
  br i1 %t83, label %bb16, label %bb17
bb16:
  br label %bb22
bb17:
  br label %bb18
bb18:
  %t85 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2estepClose(ptr %v0, ptr %t85)
  br label %bb19
bb19:
  %t87 = load ptr, ptr %l0, !tbaa !29
  %t88 = load i64, ptr %l4, !tbaa !24
  %t90 = add i64 %t88, 1
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2eloop(ptr %v0, ptr %t87, i64 %t90)
  br label %bb20
bb20:
  br label %bb21
bb21:
  br label %bb11
bb22:
  %t93 = load ptr, ptr %l0, !tbaa !29
  %t94 = load i64, ptr %l3, !tbaa !24
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2eunwind(ptr %v0, ptr %t93, i64 %t94)
  br label %bb23
bb23:
  %t97 = load ptr, ptr %l0, !tbaa !29
  %t99 = getelementptr %"compiler/eval:Machine", ptr %t97, i32 0, i32 17
  %t100 = load { i64, [5 x i64] }, ptr %t99
  store { i64, [5 x i64] } %t100, ptr %rv
  br label %ret
ret:
  %rr = load { i64, [5 x i64] }, ptr %rv
  ret { i64, [5 x i64] } %rr
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
  %t3 = getelementptr %"compiler/eval:Machine", ptr %t1, i32 0, i32 19
  store i1 false, ptr %t3, !tbaa !21
  %t4 = load ptr, ptr %l0, !tbaa !29
  store { i64, [5 x i64] } zeroinitializer, ptr %t5
  %t6 = getelementptr { i64, [5 x i64] }, ptr %t5, i32 0, i32 0
  store i64 0, ptr %t6
  %t7 = load { i64, [5 x i64] }, ptr %t5
  %t10 = getelementptr %"compiler/eval:Machine", ptr %t4, i32 0, i32 17
  store { i64, [5 x i64] } %t7, ptr %t10
  %t11 = load ptr, ptr %l0, !tbaa !29
  %t13 = getelementptr %"compiler/eval:Machine", ptr %t11, i32 0, i32 11
  store i64 0, ptr %t13, !tbaa !24
  %t14 = load ptr, ptr %l0, !tbaa !29
  %t16 = getelementptr %"compiler/eval:Machine", ptr %t14, i32 0, i32 40
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
  %t37 = getelementptr %"compiler/eval:Machine", ptr %t35, i32 0, i32 17
  %t38 = load { i64, [5 x i64] }, ptr %t37
  call void @__olang_scope_close(ptr %s0)
  store { i64, [5 x i64] } %t38, ptr %rv
  br label %ret
bb6:
  %t40 = load i64, ptr %l9, !tbaa !24
  store i64 %t40, ptr %l3, !tbaa !24
  %t41 = load ptr, ptr %l0, !tbaa !29
  %t43 = getelementptr %"compiler/eval:Machine", ptr %t41, i32 0, i32 39
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
  %t55 = getelementptr %"compiler/eval:Machine", ptr %t53, i32 0, i32 56
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
  %t72 = getelementptr %"compiler/eval:Machine", ptr %t70, i32 0, i32 17
  %t73 = load { i64, [5 x i64] }, ptr %t72
  call void @__olang_scope_close(ptr %s0)
  store { i64, [5 x i64] } %t73, ptr %rv
  br label %ret
ret:
  %rr = load { i64, [5 x i64] }, ptr %rv
  ret { i64, [5 x i64] } %rr
}

define dso_local { i64, %"compiler/source:Span" } @compiler_2feval_2ecompiler_2feval_3aMachine_2eStaleGrewAt(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"std/pair:Pair.9f40551e0d6019a8e678d8f53048b6ba"
  %l5 = alloca i1
  %l7 = alloca i64
  %l10 = alloca i64
  %l12 = alloca %"compiler/source:Span"
  %l18 = alloca %"std/pair:Pair.9f40551e0d6019a8e678d8f53048b6ba"
  %s1 = alloca %olang.scope
  %rv = alloca { i64, %"compiler/source:Span" }
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/eval:Machine", ptr %t1, i32 0, i32 77
  %t4 = load i64, ptr %t3, !tbaa !24
  %t6 = icmp slt i64 %t4, 0
  br i1 %t6, label %bb1, label %bb2
bb1:
  store i1 true, ptr %l5, !tbaa !21
  br label %bb4
bb2:
  %t8 = load ptr, ptr %l0, !tbaa !29
  %t10 = getelementptr %"compiler/eval:Machine", ptr %t8, i32 0, i32 77
  %t11 = load i64, ptr %t10, !tbaa !24
  store i64 %t11, ptr %l7, !tbaa !24
  %t12 = load ptr, ptr %l0, !tbaa !29
  %t14 = getelementptr %"compiler/eval:Machine", ptr %t12, i32 0, i32 76
  %t16 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fpair_3aPair_3cI64_2c_20compiler__H5ec116bb82f5a234bb19cb32db1efc81(ptr %v0, ptr %t14)
  store i64 %t16, ptr %l10
  br label %bb3
bb3:
  %t17 = load i64, ptr %l7, !tbaa !24
  %t18 = load i64, ptr %l10, !tbaa !24
  %t19 = icmp sge i64 %t17, %t18
  store i1 %t19, ptr %l5, !tbaa !21
  br label %bb4
bb4:
  %t21 = load i1, ptr %l5, !tbaa !21
  br i1 %t21, label %bb5, label %bb6
bb5:
  store %olang.scope zeroinitializer, ptr %s1
  %t22 = call %"compiler/source:Span" @compiler_2fsource_3aSpan_2ector(ptr %s1, i32 0, i32 0)
  store %"compiler/source:Span" %t22, ptr %l12
  br label %bb7
bb6:
  br label %bb8
bb7:
  %t23 = insertvalue { i64, %"compiler/source:Span" } undef, i64 -1, 0
  %t24 = load %"compiler/source:Span", ptr %l12
  %t25 = insertvalue { i64, %"compiler/source:Span" } %t23, %"compiler/source:Span" %t24, 1
  call void @__olang_scope_close(ptr %s1)
  store { i64, %"compiler/source:Span" } %t25, ptr %rv
  br label %ret
bb8:
  %t27 = load ptr, ptr %l0, !tbaa !29
  %t29 = getelementptr %"compiler/eval:Machine", ptr %t27, i32 0, i32 76
  %t30 = load ptr, ptr %l0, !tbaa !29
  %t32 = getelementptr %"compiler/eval:Machine", ptr %t30, i32 0, i32 77
  %t33 = load i64, ptr %t32, !tbaa !24
  %t36 = call %"std/pair:Pair.9f40551e0d6019a8e678d8f53048b6ba" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fpair_3aPair_3cI64_2c_20compiler__H1a77801a5ab3ea58cbf0ff15b43ff2de(ptr %v0, ptr %t29, i64 %t33)
  store %"std/pair:Pair.9f40551e0d6019a8e678d8f53048b6ba" %t36, ptr %l18
  br label %bb9
bb9:
  %t37 = load %"std/pair:Pair.9f40551e0d6019a8e678d8f53048b6ba", ptr %l18
  store %"std/pair:Pair.9f40551e0d6019a8e678d8f53048b6ba" %t37, ptr %l1
  %t38 = getelementptr %"std/pair:Pair.9f40551e0d6019a8e678d8f53048b6ba", ptr %l1, i32 0, i32 0
  %t39 = load i64, ptr %t38, !tbaa !24
  %t40 = getelementptr %"std/pair:Pair.9f40551e0d6019a8e678d8f53048b6ba", ptr %l1, i32 0, i32 1
  %t41 = load %"compiler/source:Span", ptr %t40
  %t43 = insertvalue { i64, %"compiler/source:Span" } undef, i64 %t39, 0
  %t45 = insertvalue { i64, %"compiler/source:Span" } %t43, %"compiler/source:Span" %t41, 1
  store { i64, %"compiler/source:Span" } %t45, ptr %rv
  br label %ret
ret:
  %rr = load { i64, %"compiler/source:Span" }, ptr %rv
  ret { i64, %"compiler/source:Span" } %rr
}

define dso_local %"compiler/eval:Ptr" @compiler_2feval_2ecompiler_2feval_3aMachine_2eallocate(ptr %v0, ptr %a0, i64 %a1, i64 %a2, i64 %a3) #0 {
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
  %l10 = alloca i64
  %l11 = alloca i64
  %l12 = alloca i64
  %l13 = alloca %"compiler/eval:alloc"
  %l28 = alloca i64
  %l29 = alloca i64
  %l37 = alloca i1
  %l46 = alloca i1
  %l58 = alloca i64
  %l60 = alloca { i64, ptr }
  %l66 = alloca { i64, ptr }
  %l67 = alloca i64
  %l70 = alloca i64
  %l77 = alloca i64
  %l80 = alloca i64
  %l99 = alloca { i64, ptr }
  %l105 = alloca { i64, ptr }
  %l117 = alloca i64
  %l120 = alloca ptr
  %l122 = alloca i64
  %l125 = alloca i64
  %l128 = alloca i64
  %l129 = alloca i32
  %l131 = alloca i64
  %l133 = alloca { i64, ptr }
  %l163 = alloca %"compiler/eval:scope"
  %l169 = alloca { i64, ptr }
  %l176 = alloca ptr
  %l182 = alloca i1
  %l187 = alloca i1
  %l194 = alloca { i64, ptr }
  %l197 = alloca ptr
  %l202 = alloca i64
  %l206 = alloca %"compiler/eval:Ptr"
  %s0 = alloca %olang.scope
  %rv = alloca %"compiler/eval:Ptr"
  %t301 = alloca %"compiler/eval:scope", align 8
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  store i64 %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/eval:Machine", ptr %t1, i32 0, i32 19
  %t4 = load i1, ptr %t3, !tbaa !21
  br i1 %t4, label %bb1, label %bb2
bb1:
  %t6 = load %"compiler/eval:Ptr", ptr @G_2ecompiler_2feval_2eNullPtr
  call void @__olang_scope_close(ptr %s0)
  store %"compiler/eval:Ptr" %t6, ptr %rv
  br label %ret
bb2:
  br label %bb3
bb3:
  %t8 = load i64, ptr %l1, !tbaa !24
  %t10 = icmp slt i64 %t8, 0
  br i1 %t10, label %bb4, label %bb5
bb4:
  store i1 true, ptr %l37, !tbaa !21
  br label %bb6
bb5:
  %t12 = load i64, ptr %l1, !tbaa !24
  %t14 = icmp sgt i64 %t12, 1099511627776
  store i1 %t14, ptr %l37, !tbaa !21
  br label %bb6
bb6:
  %t16 = load i1, ptr %l37, !tbaa !21
  br i1 %t16, label %bb7, label %bb8
bb7:
  %t17 = load ptr, ptr %l0, !tbaa !29
  %t18 = load { i64, ptr }, ptr @G_2ecompiler_2feval_2eWhyLong, !tbaa !27
  %t19 = load ptr, ptr @__olang_prog_scope
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2erefuse(ptr %v0, ptr %t19, ptr %t17, { i64, ptr } %t18)
  br label %bb9
bb8:
  br label %bb10
bb9:
  %t22 = load %"compiler/eval:Ptr", ptr @G_2ecompiler_2feval_2eNullPtr
  call void @__olang_scope_close(ptr %s0)
  store %"compiler/eval:Ptr" %t22, ptr %rv
  br label %ret
bb10:
  %t24 = load ptr, ptr %l0, !tbaa !29
  %t26 = getelementptr %"compiler/eval:Machine", ptr %t24, i32 0, i32 6
  %t27 = load i64, ptr %t26, !tbaa !24
  %t29 = icmp sge i64 %t27, 0
  br i1 %t29, label %bb11, label %bb12
bb11:
  %t31 = load ptr, ptr %l0, !tbaa !29
  %t33 = getelementptr %"compiler/eval:Machine", ptr %t31, i32 0, i32 12
  %t34 = load i64, ptr %t33, !tbaa !24
  %t35 = load i64, ptr %l1, !tbaa !24
  %t38 = add i64 %t34, %t35
  %t39 = load ptr, ptr %l0, !tbaa !29
  %t41 = getelementptr %"compiler/eval:Machine", ptr %t39, i32 0, i32 6
  %t42 = load i64, ptr %t41, !tbaa !24
  %t45 = icmp sgt i64 %t38, %t42
  store i1 %t45, ptr %l46, !tbaa !21
  br label %bb13
bb12:
  store i1 false, ptr %l46, !tbaa !21
  br label %bb13
bb13:
  %t47 = load i1, ptr %l46, !tbaa !21
  br i1 %t47, label %bb14, label %bb15
bb14:
  %t48 = load ptr, ptr %l0, !tbaa !29
  %t49 = load { i64, ptr }, ptr @G_2ecompiler_2feval_2eWhyMemory, !tbaa !27
  %t50 = load ptr, ptr @__olang_prog_scope
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2erefuse(ptr %v0, ptr %t50, ptr %t48, { i64, ptr } %t49)
  br label %bb16
bb15:
  br label %bb17
bb16:
  %t53 = load %"compiler/eval:Ptr", ptr @G_2ecompiler_2feval_2eNullPtr
  call void @__olang_scope_close(ptr %s0)
  store %"compiler/eval:Ptr" %t53, ptr %rv
  br label %ret
bb17:
  %t55 = load i64, ptr %l1, !tbaa !24
  %t57 = call i64 @compiler_2feval_2eclassOf(i64 %t55)
  store i64 %t57, ptr %l58
  br label %bb18
bb18:
  %t58 = load i64, ptr %l58, !tbaa !24
  store i64 %t58, ptr %l4, !tbaa !24
  %t59 = load ptr, ptr %l0, !tbaa !29
  %t61 = getelementptr %"compiler/eval:Machine", ptr %t59, i32 0, i32 45
  %t62 = load { i64, ptr }, ptr %t61, !tbaa !27
  store { i64, ptr } %t62, ptr %l60, !tbaa !27
  %t63 = load i64, ptr %l4, !tbaa !24
  %t65 = getelementptr { i64, ptr }, ptr %l60, i32 0, i32 1
  %t66 = load ptr, ptr %t65, !tbaa !27
  %t67 = getelementptr i64, ptr %t66, i64 %t63
  %t68 = load i64, ptr %t67, !tbaa !34
  store i64 %t68, ptr %l5, !tbaa !24
  %t70 = load i64, ptr %l5, !tbaa !24
  %t72 = icmp ne i64 %t70, 0
  br i1 %t72, label %bb19, label %bb20
bb19:
  %t74 = load ptr, ptr %l0, !tbaa !29
  %t76 = getelementptr %"compiler/eval:Machine", ptr %t74, i32 0, i32 45
  %t77 = load { i64, ptr }, ptr %t76, !tbaa !27
  store { i64, ptr } %t77, ptr %l66, !tbaa !27
  %t78 = load i64, ptr %l4, !tbaa !24
  store i64 %t78, ptr %l67, !tbaa !24
  %t79 = load ptr, ptr %l0, !tbaa !29
  %t80 = load i64, ptr %l5, !tbaa !24
  %t83 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2erdRaw(ptr %v0, ptr %t79, i64 %t80, i64 8)
  store i64 %t83, ptr %l70
  br label %bb21
bb20:
  %t84 = load ptr, ptr %l0, !tbaa !29
  %t86 = getelementptr %"compiler/eval:Machine", ptr %t84, i32 0, i32 44
  %t87 = load i64, ptr %t86, !tbaa !24
  store i64 %t87, ptr %l5, !tbaa !24
  %t89 = load ptr, ptr %l0, !tbaa !29
  %t90 = load ptr, ptr %l0, !tbaa !29
  %t92 = getelementptr %"compiler/eval:Machine", ptr %t90, i32 0, i32 44
  %t93 = load i64, ptr %t92, !tbaa !24
  %t94 = load i64, ptr %l4, !tbaa !24
  store i64 %t94, ptr %l117, !tbaa !24
  %t95 = load i64, ptr %l117, !tbaa !24
  %t96 = load i64, ptr %l117, !tbaa !24
  %t97 = shl i64 1, %t96
  %t100 = add i64 %t93, %t97
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2egrow(ptr %v0, ptr %t89, i64 %t100)
  br label %bb34
bb21:
  %t103 = load i64, ptr %l70, !tbaa !24
  %t104 = load i64, ptr %l67, !tbaa !24
  %t105 = getelementptr { i64, ptr }, ptr %l66, i32 0, i32 1
  %t106 = load ptr, ptr %t105, !tbaa !27
  %t107 = getelementptr i64, ptr %t106, i64 %t104
  store i64 %t103, ptr %t107, !tbaa !34
  store i64 0, ptr %l6, !tbaa !24
  %t108 = load i64, ptr %l1, !tbaa !24
  %t110 = add i64 %t108, 7
  %t112 = sdiv i64 %t110, 8
  store i64 %t112, ptr %l7, !tbaa !24
  store i64 1, ptr %l8, !tbaa !24
  %t114 = load i64, ptr %l7, !tbaa !24
  %t115 = load i64, ptr %l6, !tbaa !24
  %t118 = icmp sgt i64 %t114, %t115
  br i1 %t118, label %bb22, label %bb23
bb22:
  %t120 = load i64, ptr %l8, !tbaa !24
  %t122 = icmp sgt i64 %t120, 0
  br i1 %t122, label %bb24, label %bb25
bb23:
  store i64 0, ptr %l77, !tbaa !24
  br label %bb27
bb24:
  %t124 = load i64, ptr %l7, !tbaa !24
  %t125 = load i64, ptr %l6, !tbaa !24
  %t128 = sub i64 %t124, %t125
  %t129 = load i64, ptr %l8, !tbaa !24
  %t132 = add i64 %t128, %t129
  %t134 = sub i64 %t132, 1
  %t135 = load i64, ptr %l8, !tbaa !24
  %t138 = sdiv i64 %t134, %t135
  store i64 %t138, ptr %l80, !tbaa !24
  br label %bb26
bb25:
  store i64 0, ptr %l80, !tbaa !24
  br label %bb26
bb26:
  %t140 = load i64, ptr %l80, !tbaa !24
  store i64 %t140, ptr %l77, !tbaa !24
  br label %bb27
bb27:
  %t141 = load i64, ptr %l77, !tbaa !24
  store i64 %t141, ptr %l9, !tbaa !24
  store i64 0, ptr %l10, !tbaa !24
  br label %bb28
bb28:
  %t142 = load i64, ptr %l10, !tbaa !24
  %t143 = load i64, ptr %l9, !tbaa !24
  %t146 = icmp slt i64 %t142, %t143
  %t148 = xor i1 %t146, true
  br i1 %t148, label %bb29, label %bb30
bb29:
  br label %bb33
bb30:
  br label %bb31
bb31:
  %t150 = load i64, ptr %l6, !tbaa !24
  %t151 = load i64, ptr %l10, !tbaa !24
  %t152 = load i64, ptr %l8, !tbaa !24
  %t155 = mul i64 %t151, %t152
  %t158 = add i64 %t150, %t155
  store i64 %t158, ptr %l11, !tbaa !24
  %t160 = load ptr, ptr %l0, !tbaa !29
  %t162 = getelementptr %"compiler/eval:Machine", ptr %t160, i32 0, i32 42
  %t163 = load { i64, ptr }, ptr %t162, !tbaa !27
  store { i64, ptr } %t163, ptr %l99, !tbaa !27
  %t164 = load i64, ptr %l5, !tbaa !24
  %t166 = sdiv i64 %t164, 8
  %t167 = load i64, ptr %l11, !tbaa !24
  %t170 = add i64 %t166, %t167
  %t172 = getelementptr { i64, ptr }, ptr %l99, i32 0, i32 1
  %t173 = load ptr, ptr %t172, !tbaa !27
  %t174 = getelementptr i64, ptr %t173, i64 %t170
  store i64 0, ptr %t174, !tbaa !34
  %t175 = load ptr, ptr %l0, !tbaa !29
  %t177 = getelementptr %"compiler/eval:Machine", ptr %t175, i32 0, i32 43
  %t178 = load { i64, ptr }, ptr %t177, !tbaa !27
  store { i64, ptr } %t178, ptr %l105, !tbaa !27
  %t179 = load i64, ptr %l5, !tbaa !24
  %t181 = sdiv i64 %t179, 8
  %t182 = load i64, ptr %l11, !tbaa !24
  %t185 = add i64 %t181, %t182
  %t187 = getelementptr { i64, ptr }, ptr %l105, i32 0, i32 1
  %t188 = load ptr, ptr %t187, !tbaa !27
  %t189 = getelementptr i64, ptr %t188, i64 %t185
  store i64 0, ptr %t189, !tbaa !34
  br label %bb32
bb32:
  %t190 = load i64, ptr %l10, !tbaa !24
  %t192 = add i64 %t190, 1
  store i64 %t192, ptr %l10, !tbaa !24
  br label %bb28
bb33:
  br label %bb35
bb34:
  %t194 = load ptr, ptr %l0, !tbaa !29
  store ptr %t194, ptr %l120, !tbaa !29
  %t195 = load ptr, ptr %l120, !tbaa !29
  %t196 = getelementptr %"compiler/eval:Machine", ptr %t195, i32 0, i32 44
  %t197 = load i64, ptr %t196, !tbaa !24
  %t198 = load i64, ptr %l4, !tbaa !24
  store i64 %t198, ptr %l122, !tbaa !24
  %t199 = load i64, ptr %l122, !tbaa !24
  %t200 = load i64, ptr %l122, !tbaa !24
  %t201 = shl i64 1, %t200
  %t204 = add i64 %t197, %t201
  %t206 = load ptr, ptr %l120, !tbaa !29
  %t207 = getelementptr %"compiler/eval:Machine", ptr %t206, i32 0, i32 44
  store i64 %t204, ptr %t207, !tbaa !24
  br label %bb35
bb35:
  %t208 = load ptr, ptr %l0, !tbaa !29
  %t210 = getelementptr %"compiler/eval:Machine", ptr %t208, i32 0, i32 48
  %t212 = call { i32, i64 } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePop_3cI64_3e(ptr %v0, ptr %t210)
  %t213 = extractvalue { i32, i64 } %t212, 1
  %t214 = extractvalue { i32, i64 } %t212, 0
  store i32 %t214, ptr %l129
  %t215 = icmp ne i32 %t214, 0
  br i1 %t215, label %bb37, label %ok.216, !prof !99
ok.216:
  store i64 %t213, ptr %l128
  br label %bb36
bb36:
  %t217 = load i64, ptr %l128, !tbaa !24
  store i64 %t217, ptr %l125, !tbaa !24
  br label %bb40
bb37:
  br label %bb38
bb38:
  %t218 = load ptr, ptr %l0, !tbaa !29
  %t220 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2enewSlot(ptr %v0, ptr %t218)
  store i64 %t220, ptr %l131
  br label %bb39
bb39:
  %t221 = load i64, ptr %l131, !tbaa !24
  store i64 %t221, ptr %l125, !tbaa !24
  br label %bb40
bb40:
  %t222 = load i64, ptr %l125, !tbaa !24
  store i64 %t222, ptr %l12, !tbaa !24
  %t223 = load ptr, ptr %l0, !tbaa !29
  %t225 = getelementptr %"compiler/eval:Machine", ptr %t223, i32 0, i32 46
  %t226 = load { i64, ptr }, ptr %t225, !tbaa !27
  store { i64, ptr } %t226, ptr %l133, !tbaa !27
  %t227 = load i64, ptr %l12, !tbaa !24
  %t229 = getelementptr { i64, ptr }, ptr %l133, i32 0, i32 1
  %t230 = load ptr, ptr %t229, !tbaa !27
  %t231 = getelementptr %"compiler/eval:alloc", ptr %t230, i64 %t227
  %t232 = load %"compiler/eval:alloc", ptr %t231
  store %"compiler/eval:alloc" %t232, ptr %l13
  %t234 = load i64, ptr %l5, !tbaa !24
  %t236 = load i64, ptr %l1, !tbaa !24
  %t238 = load i64, ptr %l4, !tbaa !24
  %t242 = load i64, ptr %l3, !tbaa !24
  %t246 = getelementptr %"compiler/eval:alloc", ptr %l13, i32 0, i32 0
  store i64 %t234, ptr %t246, !tbaa !24
  %t249 = getelementptr %"compiler/eval:alloc", ptr %l13, i32 0, i32 1
  store i64 %t236, ptr %t249, !tbaa !24
  %t252 = getelementptr %"compiler/eval:alloc", ptr %l13, i32 0, i32 2
  store i64 %t238, ptr %t252, !tbaa !24
  %t255 = getelementptr %"compiler/eval:alloc", ptr %l13, i32 0, i32 4
  store i64 %a2, ptr %t255, !tbaa !24
  %t258 = getelementptr %"compiler/eval:alloc", ptr %l13, i32 0, i32 5
  store i64 %t242, ptr %t258, !tbaa !24
  %t261 = getelementptr %"compiler/eval:alloc", ptr %l13, i32 0, i32 8
  store i64 -1, ptr %t261, !tbaa !24
  %t264 = getelementptr %"compiler/eval:alloc", ptr %l13, i32 0, i32 13
  store i1 false, ptr %t264, !tbaa !21
  %t267 = getelementptr %"compiler/eval:alloc", ptr %l13, i32 0, i32 14
  store i64 -1, ptr %t267, !tbaa !24
  %t270 = getelementptr %"compiler/eval:alloc", ptr %l13, i32 0, i32 15
  store i1 false, ptr %t270, !tbaa !21
  %t271 = getelementptr %"compiler/eval:alloc", ptr %l13, i32 0, i32 9
  store i64 -1, ptr %t271, !tbaa !24
  %t274 = getelementptr %"compiler/eval:alloc", ptr %l13, i32 0, i32 10
  store i64 0, ptr %t274, !tbaa !24
  %t277 = getelementptr %"compiler/eval:alloc", ptr %l13, i32 0, i32 11
  store i32 0, ptr %t277, !tbaa !23
  %t280 = getelementptr %"compiler/eval:alloc", ptr %l13, i32 0, i32 12
  store i64 -1, ptr %t280, !tbaa !24
  %t283 = getelementptr %"compiler/eval:alloc", ptr %l13, i32 0, i32 6
  store i64 0, ptr %t283, !tbaa !24
  %t286 = getelementptr %"compiler/eval:alloc", ptr %l13, i32 0, i32 7
  store i64 0, ptr %t286, !tbaa !24
  %t287 = load i64, ptr %l3, !tbaa !24
  %t289 = icmp ne i64 %t287, 0
  br i1 %t289, label %bb41, label %bb42
bb41:
  %t291 = load i64, ptr %l3, !tbaa !24
  %t292 = load i64, ptr @G_2ecompiler_2feval_2eslotMask, !tbaa !24
  %t295 = and i64 %t291, %t292
  store i64 %t295, ptr %l28, !tbaa !24
  %t297 = load ptr, ptr %l0, !tbaa !29
  %t299 = getelementptr %"compiler/eval:Machine", ptr %t297, i32 0, i32 49
  %t300 = load i64, ptr %l28, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3ascope_3e_2eAt_3ccompiler_2feval_3ascope_3e(ptr %t301, ptr %v0, ptr %t299, i64 %t300)
  call void @llvm.memmove.p0.p0.i64(ptr %l163, ptr %t301, i64 144, i1 false)
  br label %bb43
bb42:
  br label %bb57
bb43:
  %t304 = getelementptr %"compiler/eval:scope", ptr %l163, i32 0, i32 3
  %t305 = load i64, ptr %t304, !tbaa !24
  store i64 %t305, ptr %l29, !tbaa !24
  %t307 = load i64, ptr %l29, !tbaa !24
  %t309 = getelementptr %"compiler/eval:alloc", ptr %l13, i32 0, i32 7
  store i64 %t307, ptr %t309, !tbaa !24
  %t310 = load i64, ptr %l29, !tbaa !24
  %t312 = icmp ne i64 %t310, 0
  br i1 %t312, label %bb44, label %bb45
bb44:
  %t314 = load ptr, ptr %l0, !tbaa !29
  %t316 = getelementptr %"compiler/eval:Machine", ptr %t314, i32 0, i32 46
  %t317 = load { i64, ptr }, ptr %t316, !tbaa !27
  store { i64, ptr } %t317, ptr %l169, !tbaa !27
  %t318 = load i64, ptr %l29, !tbaa !24
  %t319 = load i64, ptr %l12, !tbaa !24
  %t322 = getelementptr { i64, ptr }, ptr %l169, i32 0, i32 1
  %t323 = load ptr, ptr %t322, !tbaa !27
  %t324 = getelementptr %"compiler/eval:alloc", ptr %t323, i64 %t318
  %t325 = getelementptr %"compiler/eval:alloc", ptr %t324, i32 0, i32 6
  store i64 %t319, ptr %t325, !tbaa !24
  br label %bb46
bb45:
  br label %bb46
bb46:
  %t326 = load i64, ptr %l28, !tbaa !24
  %t328 = load ptr, ptr %l0, !tbaa !29
  %t330 = getelementptr %"compiler/eval:Machine", ptr %t328, i32 0, i32 49
  %t334 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3ascope_3e_2eRefMut_3ccompiler_2feval_3ascope_3e(ptr %v0, ptr %v0, ptr %t330, i64 %t326)
  store ptr %t334, ptr %l176
  br label %bb47
bb47:
  %t335 = load ptr, ptr %l176, !tbaa !29
  %t337 = load i64, ptr %l12, !tbaa !24
  %t340 = getelementptr %"compiler/eval:scope", ptr %t335, i32 0, i32 3
  store i64 %t337, ptr %t340, !tbaa !24
  %t341 = load ptr, ptr %l0, !tbaa !29
  %t343 = getelementptr %"compiler/eval:Machine", ptr %t341, i32 0, i32 1
  %t344 = load i32, ptr %t343, !range !{i32 0, i32 2}
  %t346 = trunc i64 0 to i32
  %t347 = icmp eq i32 %t344, %t346
  br i1 %t347, label %bb48, label %bb49
bb48:
  %t349 = load i64, ptr %l3, !tbaa !24
  %t350 = load ptr, ptr %l0, !tbaa !29
  %t352 = getelementptr %"compiler/eval:Machine", ptr %t350, i32 0, i32 67
  %t353 = load i64, ptr %t352, !tbaa !24
  %t356 = icmp eq i64 %t349, %t353
  store i1 %t356, ptr %l182, !tbaa !21
  br label %bb50
bb49:
  store i1 false, ptr %l182, !tbaa !21
  br label %bb50
bb50:
  %t358 = load i1, ptr %l182, !tbaa !21
  br i1 %t358, label %bb51, label %bb52
bb51:
  %t359 = load ptr, ptr %l0, !tbaa !29
  %t361 = getelementptr %"compiler/eval:Machine", ptr %t359, i32 0, i32 70
  %t362 = load i64, ptr %t361, !tbaa !24
  %t364 = icmp sge i64 %t362, 0
  store i1 %t364, ptr %l187, !tbaa !21
  br label %bb53
bb52:
  store i1 false, ptr %l187, !tbaa !21
  br label %bb53
bb53:
  %t366 = load i1, ptr %l187, !tbaa !21
  br i1 %t366, label %bb54, label %bb55
bb54:
  %t367 = load ptr, ptr %l0, !tbaa !29
  %t369 = getelementptr %"compiler/eval:Machine", ptr %t367, i32 0, i32 70
  %t370 = load i64, ptr %t369, !tbaa !24
  %t372 = getelementptr %"compiler/eval:alloc", ptr %l13, i32 0, i32 8
  store i64 %t370, ptr %t372, !tbaa !24
  br label %bb56
bb55:
  br label %bb56
bb56:
  br label %bb57
bb57:
  %t373 = load ptr, ptr %l0, !tbaa !29
  %t375 = getelementptr %"compiler/eval:Machine", ptr %t373, i32 0, i32 46
  %t376 = load { i64, ptr }, ptr %t375, !tbaa !27
  store { i64, ptr } %t376, ptr %l194, !tbaa !27
  %t377 = load i64, ptr %l12, !tbaa !24
  %t378 = load %"compiler/eval:alloc", ptr %l13
  %t381 = getelementptr { i64, ptr }, ptr %l194, i32 0, i32 1
  %t382 = load ptr, ptr %t381, !tbaa !27
  %t383 = getelementptr %"compiler/eval:alloc", ptr %t382, i64 %t377
  store %"compiler/eval:alloc" %t378, ptr %t383
  %t384 = load ptr, ptr %l0, !tbaa !29
  store ptr %t384, ptr %l197, !tbaa !29
  %t385 = load ptr, ptr %l197, !tbaa !29
  %t386 = getelementptr %"compiler/eval:Machine", ptr %t385, i32 0, i32 12
  %t387 = load i64, ptr %t386, !tbaa !24
  %t388 = load i64, ptr %l1, !tbaa !24
  %t391 = add i64 %t387, %t388
  %t393 = load ptr, ptr %l197, !tbaa !29
  %t394 = getelementptr %"compiler/eval:Machine", ptr %t393, i32 0, i32 12
  store i64 %t391, ptr %t394, !tbaa !24
  %t395 = getelementptr %"compiler/eval:alloc", ptr %l13, i32 0, i32 3
  %t396 = load i64, ptr %t395, !tbaa !24
  %t397 = load i64, ptr @G_2ecompiler_2feval_2eslotBits, !tbaa !24
  store i64 %t397, ptr %l202, !tbaa !24
  %t399 = load i64, ptr %l202, !tbaa !24
  %t400 = load i64, ptr %l202, !tbaa !24
  %t401 = shl i64 %t396, %t400
  %t402 = load i64, ptr %l12, !tbaa !24
  %t405 = or i64 %t401, %t402
  %t407 = call %"compiler/eval:Ptr" @compiler_2feval_3aPtr_2ector(ptr %s0, i64 %t405, i64 0)
  store %"compiler/eval:Ptr" %t407, ptr %l206
  br label %bb58
bb58:
  call void @__olang_scope_close(ptr %s0)
  %t408 = load %"compiler/eval:Ptr", ptr %l206
  store %"compiler/eval:Ptr" %t408, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/eval:Ptr", ptr %rv
  ret %"compiler/eval:Ptr" %rr
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
  %l56 = alloca { i64, [4 x i64] }
  %l57 = alloca { i64, [1 x i64] }
  %l58 = alloca i64
  %l59 = alloca { i64, [4 x i64] }
  %l60 = alloca { i64, [1 x i64] }
  %l61 = alloca { i64, [4 x i64] }
  %l62 = alloca i64
  %l63 = alloca { i64, [1 x i64] }
  %l64 = alloca i64
  %l65 = alloca i64
  %l66 = alloca %"compiler/mir:Lvalue"
  %l67 = alloca { i64, [4 x i64] }
  %l71 = alloca { %"compiler/eval:Ptr", i32 }
  %l99 = alloca { %"compiler/eval:Ptr", i32 }
  %l104 = alloca i64
  %l107 = alloca %"compiler/eval:Ptr"
  %l126 = alloca i1
  %l136 = alloca i1
  %l139 = alloca i32
  %l142 = alloca ptr
  %l143 = alloca i64
  %l144 = alloca %"compiler/eval:Ptr"
  %l148 = alloca { i64, [4 x i64] }
  %l152 = alloca i1
  %l154 = alloca ptr
  %l158 = alloca i32
  %l159 = alloca i32
  %l162 = alloca ptr
  %l163 = alloca i64
  %l164 = alloca %"compiler/eval:Ptr"
  %l165 = alloca i32
  %l169 = alloca { i64, [4 x i64] }
  %l172 = alloca i1
  %l174 = alloca ptr
  %l178 = alloca i32
  %l179 = alloca i32
  %l182 = alloca ptr
  %l183 = alloca i64
  %l184 = alloca %"compiler/eval:Ptr"
  %l185 = alloca i32
  %l189 = alloca { i64, [4 x i64] }
  %l192 = alloca i1
  %l195 = alloca i64
  %l198 = alloca i1
  %l201 = alloca i64
  %l204 = alloca ptr
  %l205 = alloca i64
  %l206 = alloca %"compiler/eval:Ptr"
  %l207 = alloca i32
  %l211 = alloca { i64, [4 x i64] }
  %l214 = alloca ptr
  %l215 = alloca ptr
  %l216 = alloca i64
  %l220 = alloca { i64, [4 x i64] }
  %l221 = alloca %"compiler/eval:Ptr"
  %l222 = alloca %"compiler/eval:Ptr"
  %l223 = alloca ptr
  %l224 = alloca i64
  %l228 = alloca { i64, [4 x i64] }
  %l229 = alloca i64
  %l233 = alloca ptr
  %l237 = alloca %"compiler/eval:Ptr"
  %l240 = alloca %"compiler/eval:Ptr"
  %l244 = alloca %"compiler/eval:Ptr"
  %l247 = alloca ptr
  %l248 = alloca %"compiler/eval:Ptr"
  %l249 = alloca ptr
  %l250 = alloca ptr
  %l251 = alloca i64
  %l255 = alloca { i64, [4 x i64] }
  %l256 = alloca %"compiler/eval:Ptr"
  %l257 = alloca %"compiler/eval:Ptr"
  %l259 = alloca i1
  %l270 = alloca i1
  %l277 = alloca ptr
  %l278 = alloca %"compiler/eval:Ptr"
  %l281 = alloca i64
  %l287 = alloca i64
  %l297 = alloca i1
  %l298 = alloca i1
  %l304 = alloca i1
  %l310 = alloca i1
  %l311 = alloca ptr
  %l312 = alloca %"compiler/eval:Ptr"
  %l314 = alloca i64
  %l321 = alloca { %"compiler/eval:Ptr", i32 }
  %l324 = alloca ptr
  %l325 = alloca %"compiler/eval:Ptr"
  %l329 = alloca i64
  %l394 = alloca ptr
  %l395 = alloca %"compiler/eval:Ptr"
  %l396 = alloca ptr
  %l397 = alloca ptr
  %l401 = alloca i64
  %l403 = alloca i64
  %l406 = alloca i64
  %l422 = alloca i64
  %l427 = alloca i64
  %l436 = alloca %"compiler/eval:scope"
  %l446 = alloca ptr
  %l456 = alloca ptr
  %l460 = alloca %"compiler/eval:Ptr"
  %l461 = alloca i64
  %l467 = alloca i64
  %l474 = alloca ptr
  %l475 = alloca %"compiler/eval:Ptr"
  %l476 = alloca ptr
  %l480 = alloca %"compiler/eval:Ptr"
  %l481 = alloca i64
  %l489 = alloca i64
  %l494 = alloca i64
  %l497 = alloca ptr
  %l501 = alloca %"compiler/eval:Ptr"
  %l502 = alloca i64
  %l509 = alloca ptr
  %l510 = alloca %"compiler/eval:Ptr"
  %l514 = alloca i64
  %l518 = alloca ptr
  %l519 = alloca %"compiler/eval:Ptr"
  %l522 = alloca i1
  %l523 = alloca i64
  %l526 = alloca i64
  %l528 = alloca i1
  %l532 = alloca i1
  %l533 = alloca i64
  %l538 = alloca i64
  %l552 = alloca i64
  %l556 = alloca ptr
  %l557 = alloca %"compiler/eval:Ptr"
  %l559 = alloca ptr
  %l562 = alloca i64
  %l564 = alloca %"compiler/eval:Ptr"
  %s11 = alloca %olang.scope
  %t831 = alloca %"compiler/eval:scope", align 8
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
  store { %"compiler/eval:Ptr", i32 } %t7, ptr %l71
  br label %bb1
bb1:
  %t8 = load { %"compiler/eval:Ptr", i32 }, ptr %l71
  store { %"compiler/eval:Ptr", i32 } %t8, ptr %l4
  %t9 = getelementptr { %"compiler/eval:Ptr", i32 }, ptr %l4, i32 0, i32 0
  %t10 = load %"compiler/eval:Ptr", ptr %t9
  store %"compiler/eval:Ptr" %t10, ptr %l5
  %t12 = getelementptr { %"compiler/eval:Ptr", i32 }, ptr %l4, i32 0, i32 1
  %t13 = load i32, ptr %t12, !tbaa !23
  store i32 %t13, ptr %l6, !tbaa !23
  %t15 = load ptr, ptr %l0, !tbaa !29
  %t17 = getelementptr %"compiler/eval:Machine", ptr %t15, i32 0, i32 19
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
  store { %"compiler/eval:Ptr", i32 } %t77, ptr %l99
  br label %bb18
bb18:
  %t78 = load { %"compiler/eval:Ptr", i32 }, ptr %l99
  store { %"compiler/eval:Ptr", i32 } %t78, ptr %l11
  %t79 = getelementptr { %"compiler/eval:Ptr", i32 }, ptr %l11, i32 0, i32 0
  %t80 = load %"compiler/eval:Ptr", ptr %t79
  store %"compiler/eval:Ptr" %t80, ptr %l12
  %t82 = getelementptr { %"compiler/eval:Ptr", i32 }, ptr %l11, i32 0, i32 1
  %t83 = load i32, ptr %t82, !tbaa !23
  %t85 = load ptr, ptr %l0, !tbaa !29
  %t89 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2esize(ptr %v0, ptr %t85, i32 %t83)
  store i64 %t89, ptr %l104
  br label %bb19
bb19:
  %t90 = load i64, ptr %l104, !tbaa !24
  store i64 %t90, ptr %l14, !tbaa !24
  %t91 = load ptr, ptr %l0, !tbaa !29
  %t92 = load i64, ptr %l14, !tbaa !24
  %t95 = call %"compiler/eval:Ptr" @compiler_2feval_2ecompiler_2feval_3aMachine_2escratchFor(ptr %v0, ptr %t91, i64 0, i64 %t92)
  store %"compiler/eval:Ptr" %t95, ptr %l107
  br label %bb20
bb20:
  %t96 = load %"compiler/eval:Ptr", ptr %l107
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
  %t126 = load i32, ptr %t125, !range !{i32 0, i32 52}
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
  %t136 = load i32, ptr %l16, !range !{i32 0, i32 52}
  %t138 = trunc i64 40 to i32
  %t139 = icmp eq i32 %t136, %t138
  br i1 %t139, label %bb28, label %bb29
bb28:
  store i1 true, ptr %l126, !tbaa !21
  br label %bb30
bb29:
  %t141 = load i32, ptr %l16, !range !{i32 0, i32 52}
  %t143 = trunc i64 41 to i32
  %t144 = icmp eq i32 %t141, %t143
  store i1 %t144, ptr %l126, !tbaa !21
  br label %bb30
bb30:
  %t146 = load i1, ptr %l126, !tbaa !21
  br i1 %t146, label %bb31, label %bb32
bb31:
  %t147 = load ptr, ptr %l0, !tbaa !29
  %t148 = load i64, ptr %l1, !tbaa !24
  %t149 = load %"compiler/eval:Ptr", ptr %l5
  %t150 = load i32, ptr %l16, !range !{i32 0, i32 52}
  %t151 = load %"compiler/mir:Range", ptr %l18
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2epackedOp(ptr %v0, ptr %t147, i64 %t148, %"compiler/eval:Ptr" %t149, i32 %t150, %"compiler/mir:Range" %t151)
  br label %bb33
bb32:
  br label %bb34
bb33:
  br label %ret
bb34:
  %t157 = load i32, ptr %l16, !range !{i32 0, i32 52}
  %t159 = trunc i64 20 to i32
  %t160 = icmp eq i32 %t157, %t159
  br i1 %t160, label %bb35, label %bb36
bb35:
  %t162 = load ptr, ptr %l0, !tbaa !29
  %t163 = load i32, ptr %l17, !tbaa !23
  %t166 = call i32 @compiler_2feval_2ecompiler_2feval_3aMachine_2earrayOf(ptr %v0, ptr %t162, i32 %t163)
  store i32 %t166, ptr %l139
  br label %bb37
bb36:
  store i1 false, ptr %l136, !tbaa !21
  br label %bb38
bb37:
  %t167 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t168 = load i32, ptr %l139, !tbaa !23
  %t170 = icmp ne i32 %t168, %t167
  store i1 %t170, ptr %l136, !tbaa !21
  br label %bb38
bb38:
  %t172 = load i1, ptr %l136, !tbaa !21
  br i1 %t172, label %bb39, label %bb40
bb39:
  %t173 = load ptr, ptr %l0, !tbaa !29
  store ptr %t173, ptr %l142, !tbaa !29
  %t174 = load i64, ptr %l1, !tbaa !24
  store i64 %t174, ptr %l143, !tbaa !24
  %t175 = load %"compiler/eval:Ptr", ptr %l5
  store %"compiler/eval:Ptr" %t175, ptr %l144
  %t176 = load ptr, ptr %l0, !tbaa !29
  %t177 = load i64, ptr %l1, !tbaa !24
  %t178 = load %"compiler/mir:Range", ptr %l18
  %t182 = call { i64, [4 x i64] } @compiler_2feval_2ecompiler_2feval_3aMachine_2earg(ptr %v0, ptr %t176, i64 %t177, %"compiler/mir:Range" %t178, i64 0)
  store { i64, [4 x i64] } %t182, ptr %l148
  br label %bb41
bb40:
  br label %bb43
bb41:
  %t183 = load i32, ptr %l17, !tbaa !23
  %t184 = load ptr, ptr %l142, !tbaa !29
  %t185 = load i64, ptr %l143, !tbaa !24
  %t186 = load %"compiler/eval:Ptr", ptr %l144
  %t187 = load { i64, [4 x i64] }, ptr %l148
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2econvertArray(ptr %v0, ptr %t184, i64 %t185, %"compiler/eval:Ptr" %t186, { i64, [4 x i64] } %t187, i32 %t183)
  br label %bb42
bb42:
  br label %ret
bb43:
  %t189 = load i32, ptr %l16, !range !{i32 0, i32 52}
  %t191 = trunc i64 20 to i32
  %t192 = icmp eq i32 %t189, %t191
  br i1 %t192, label %bb44, label %bb45
bb44:
  %t194 = load ptr, ptr %l0, !tbaa !29
  %t196 = getelementptr %"compiler/eval:Machine", ptr %t194, i32 0, i32 0
  %t197 = load ptr, ptr %t196, !tbaa !29
  store ptr %t197, ptr %l154, !tbaa !29
  %t198 = load ptr, ptr %l0, !tbaa !29
  %t200 = getelementptr %"compiler/eval:Machine", ptr %t198, i32 0, i32 0
  %t201 = load ptr, ptr %t200, !tbaa !29
  %t202 = load i32, ptr %l17, !tbaa !23
  %t205 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %v0, ptr %t201, i32 %t202)
  store i32 %t205, ptr %l158
  br label %bb46
bb45:
  store i1 false, ptr %l152, !tbaa !21
  br label %bb48
bb46:
  %t206 = load ptr, ptr %l154, !tbaa !29
  %t207 = load i32, ptr %l158, !tbaa !23
  %t208 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t206, i32 %t207)
  store i32 %t208, ptr %l159
  br label %bb47
bb47:
  %t209 = load i32, ptr %l159, !range !{i32 0, i32 33}
  %t211 = trunc i64 20 to i32
  %t212 = icmp eq i32 %t209, %t211
  store i1 %t212, ptr %l152, !tbaa !21
  br label %bb48
bb48:
  %t214 = load i1, ptr %l152, !tbaa !21
  br i1 %t214, label %bb49, label %bb50
bb49:
  %t215 = load ptr, ptr %l0, !tbaa !29
  store ptr %t215, ptr %l162, !tbaa !29
  %t216 = load i64, ptr %l1, !tbaa !24
  store i64 %t216, ptr %l163, !tbaa !24
  %t217 = load %"compiler/eval:Ptr", ptr %l5
  store %"compiler/eval:Ptr" %t217, ptr %l164
  %t218 = load i32, ptr %l17, !tbaa !23
  store i32 %t218, ptr %l165, !tbaa !23
  %t219 = load ptr, ptr %l0, !tbaa !29
  %t220 = load i64, ptr %l1, !tbaa !24
  %t221 = load %"compiler/mir:Range", ptr %l18
  %t225 = call { i64, [4 x i64] } @compiler_2feval_2ecompiler_2feval_3aMachine_2earg(ptr %v0, ptr %t219, i64 %t220, %"compiler/mir:Range" %t221, i64 0)
  store { i64, [4 x i64] } %t225, ptr %l169
  br label %bb51
bb50:
  br label %bb53
bb51:
  %t226 = load ptr, ptr %l162, !tbaa !29
  %t227 = load i64, ptr %l163, !tbaa !24
  %t228 = load %"compiler/eval:Ptr", ptr %l164
  %t229 = load i32, ptr %l165, !tbaa !23
  %t230 = load { i64, [4 x i64] }, ptr %l169
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2eput(ptr %v0, ptr %t226, i64 %t227, %"compiler/eval:Ptr" %t228, i32 %t229, { i64, [4 x i64] } %t230)
  br label %bb52
bb52:
  br label %ret
bb53:
  %t231 = load i32, ptr %l16, !range !{i32 0, i32 52}
  %t233 = trunc i64 20 to i32
  %t234 = icmp eq i32 %t231, %t233
  br i1 %t234, label %bb54, label %bb55
bb54:
  %t236 = load ptr, ptr %l0, !tbaa !29
  %t238 = getelementptr %"compiler/eval:Machine", ptr %t236, i32 0, i32 0
  %t239 = load ptr, ptr %t238, !tbaa !29
  store ptr %t239, ptr %l174, !tbaa !29
  %t240 = load ptr, ptr %l0, !tbaa !29
  %t242 = getelementptr %"compiler/eval:Machine", ptr %t240, i32 0, i32 0
  %t243 = load ptr, ptr %t242, !tbaa !29
  %t244 = load i32, ptr %l17, !tbaa !23
  %t247 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %v0, ptr %t243, i32 %t244)
  store i32 %t247, ptr %l178
  br label %bb56
bb55:
  store i1 false, ptr %l172, !tbaa !21
  br label %bb58
bb56:
  %t248 = load ptr, ptr %l174, !tbaa !29
  %t249 = load i32, ptr %l178, !tbaa !23
  %t250 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t248, i32 %t249)
  store i32 %t250, ptr %l179
  br label %bb57
bb57:
  %t251 = load i32, ptr %l179, !range !{i32 0, i32 33}
  %t253 = trunc i64 21 to i32
  %t254 = icmp eq i32 %t251, %t253
  store i1 %t254, ptr %l172, !tbaa !21
  br label %bb58
bb58:
  %t256 = load i1, ptr %l172, !tbaa !21
  br i1 %t256, label %bb59, label %bb60
bb59:
  %t257 = load ptr, ptr %l0, !tbaa !29
  store ptr %t257, ptr %l182, !tbaa !29
  %t258 = load i64, ptr %l1, !tbaa !24
  store i64 %t258, ptr %l183, !tbaa !24
  %t259 = load %"compiler/eval:Ptr", ptr %l5
  store %"compiler/eval:Ptr" %t259, ptr %l184
  %t260 = load i32, ptr %l17, !tbaa !23
  store i32 %t260, ptr %l185, !tbaa !23
  %t261 = load ptr, ptr %l0, !tbaa !29
  %t262 = load i64, ptr %l1, !tbaa !24
  %t263 = load %"compiler/mir:Range", ptr %l18
  %t267 = call { i64, [4 x i64] } @compiler_2feval_2ecompiler_2feval_3aMachine_2earg(ptr %v0, ptr %t261, i64 %t262, %"compiler/mir:Range" %t263, i64 0)
  store { i64, [4 x i64] } %t267, ptr %l189
  br label %bb61
bb60:
  br label %bb63
bb61:
  %t268 = load ptr, ptr %l182, !tbaa !29
  %t269 = load i64, ptr %l183, !tbaa !24
  %t270 = load %"compiler/eval:Ptr", ptr %l184
  %t271 = load i32, ptr %l185, !tbaa !23
  %t272 = load { i64, [4 x i64] }, ptr %l189
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2eput(ptr %v0, ptr %t268, i64 %t269, %"compiler/eval:Ptr" %t270, i32 %t271, { i64, [4 x i64] } %t272)
  br label %bb62
bb62:
  br label %ret
bb63:
  %t273 = load i32, ptr %l16, !range !{i32 0, i32 52}
  %t275 = trunc i64 20 to i32
  %t276 = icmp eq i32 %t273, %t275
  br i1 %t276, label %bb64, label %bb65
bb64:
  %t278 = load ptr, ptr %l0, !tbaa !29
  %t279 = load i32, ptr %l17, !tbaa !23
  %t282 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2eshape(ptr %v0, ptr %t278, i32 %t279)
  store i64 %t282, ptr %l195
  br label %bb66
bb65:
  store i1 false, ptr %l192, !tbaa !21
  br label %bb71
bb66:
  %t283 = load i64, ptr @G_2ecompiler_2feval_2evAgg, !tbaa !24
  %t284 = load i64, ptr %l195, !tbaa !24
  %t286 = icmp eq i64 %t284, %t283
  br i1 %t286, label %bb67, label %bb68
bb67:
  store i1 true, ptr %l198, !tbaa !21
  br label %bb70
bb68:
  %t288 = load ptr, ptr %l0, !tbaa !29
  %t289 = load i32, ptr %l17, !tbaa !23
  %t292 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2eshape(ptr %v0, ptr %t288, i32 %t289)
  store i64 %t292, ptr %l201
  br label %bb69
bb69:
  %t293 = load i64, ptr @G_2ecompiler_2feval_2evEnum, !tbaa !24
  %t294 = load i64, ptr %l201, !tbaa !24
  %t296 = icmp eq i64 %t294, %t293
  store i1 %t296, ptr %l198, !tbaa !21
  br label %bb70
bb70:
  %t298 = load i1, ptr %l198, !tbaa !21
  store i1 %t298, ptr %l192, !tbaa !21
  br label %bb71
bb71:
  %t299 = load i1, ptr %l192, !tbaa !21
  br i1 %t299, label %bb72, label %bb73
bb72:
  %t300 = load ptr, ptr %l0, !tbaa !29
  store ptr %t300, ptr %l204, !tbaa !29
  %t301 = load i64, ptr %l1, !tbaa !24
  store i64 %t301, ptr %l205, !tbaa !24
  %t302 = load %"compiler/eval:Ptr", ptr %l5
  store %"compiler/eval:Ptr" %t302, ptr %l206
  %t303 = load i32, ptr %l17, !tbaa !23
  store i32 %t303, ptr %l207, !tbaa !23
  %t304 = load ptr, ptr %l0, !tbaa !29
  %t305 = load i64, ptr %l1, !tbaa !24
  %t306 = load %"compiler/mir:Range", ptr %l18
  %t310 = call { i64, [4 x i64] } @compiler_2feval_2ecompiler_2feval_3aMachine_2earg(ptr %v0, ptr %t304, i64 %t305, %"compiler/mir:Range" %t306, i64 0)
  store { i64, [4 x i64] } %t310, ptr %l211
  br label %bb74
bb73:
  br label %bb76
bb74:
  %t311 = load ptr, ptr %l204, !tbaa !29
  %t312 = load i64, ptr %l205, !tbaa !24
  %t313 = load %"compiler/eval:Ptr", ptr %l206
  %t314 = load i32, ptr %l207, !tbaa !23
  %t315 = load { i64, [4 x i64] }, ptr %l211
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2eput(ptr %v0, ptr %t311, i64 %t312, %"compiler/eval:Ptr" %t313, i32 %t314, { i64, [4 x i64] } %t315)
  br label %bb75
bb75:
  br label %ret
bb76:
  %t316 = load i32, ptr %l16, !range !{i32 0, i32 52}
  %t318 = trunc i64 42 to i32
  %t319 = icmp eq i32 %t316, %t318
  br i1 %t319, label %bb77, label %bb78
bb77:
  store %olang.scope zeroinitializer, ptr %s11
  %t321 = load ptr, ptr %l0, !tbaa !29
  store ptr %t321, ptr %l214, !tbaa !29
  %t322 = load ptr, ptr %l0, !tbaa !29
  store ptr %t322, ptr %l215, !tbaa !29
  %t323 = load i64, ptr %l1, !tbaa !24
  store i64 %t323, ptr %l216, !tbaa !24
  %t324 = load ptr, ptr %l0, !tbaa !29
  %t325 = load i64, ptr %l1, !tbaa !24
  %t326 = load %"compiler/mir:Range", ptr %l18
  %t330 = call { i64, [4 x i64] } @compiler_2feval_2ecompiler_2feval_3aMachine_2earg(ptr %v0, ptr %t324, i64 %t325, %"compiler/mir:Range" %t326, i64 0)
  store { i64, [4 x i64] } %t330, ptr %l220
  br label %bb79
bb78:
  br label %bb91
bb79:
  %t331 = load ptr, ptr %l215, !tbaa !29
  %t332 = load i64, ptr %l216, !tbaa !24
  %t333 = load { i64, [4 x i64] }, ptr %l220
  %t334 = call %"compiler/eval:Ptr" @compiler_2feval_2ecompiler_2feval_3aMachine_2eaddr(ptr %v0, ptr %t331, i64 %t332, { i64, [4 x i64] } %t333, i64 1)
  store %"compiler/eval:Ptr" %t334, ptr %l221
  br label %bb80
bb80:
  %t335 = load ptr, ptr %l214, !tbaa !29
  %t336 = load %"compiler/eval:Ptr", ptr %l221
  %t337 = call %"compiler/eval:Ptr" @compiler_2feval_2ecompiler_2feval_3aMachine_2erdPtr(ptr %v0, ptr %t335, %"compiler/eval:Ptr" %t336)
  store %"compiler/eval:Ptr" %t337, ptr %l222
  br label %bb81
bb81:
  %t338 = load %"compiler/eval:Ptr", ptr %l222
  store %"compiler/eval:Ptr" %t338, ptr %l19
  %t339 = load ptr, ptr %l0, !tbaa !29
  store ptr %t339, ptr %l223, !tbaa !29
  %t340 = load i64, ptr %l1, !tbaa !24
  store i64 %t340, ptr %l224, !tbaa !24
  %t341 = load ptr, ptr %l0, !tbaa !29
  %t342 = load i64, ptr %l1, !tbaa !24
  %t343 = load %"compiler/mir:Range", ptr %l18
  %t347 = call { i64, [4 x i64] } @compiler_2feval_2ecompiler_2feval_3aMachine_2earg(ptr %v0, ptr %t341, i64 %t342, %"compiler/mir:Range" %t343, i64 1)
  store { i64, [4 x i64] } %t347, ptr %l228
  br label %bb82
bb82:
  %t348 = load ptr, ptr %l223, !tbaa !29
  %t349 = load i64, ptr %l224, !tbaa !24
  %t350 = load { i64, [4 x i64] }, ptr %l228
  %t351 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2escalar(ptr %v0, ptr %t348, i64 %t349, { i64, [4 x i64] } %t350)
  store i64 %t351, ptr %l229
  br label %bb83
bb83:
  %t352 = load i64, ptr %l229, !tbaa !24
  store i64 %t352, ptr %l20, !tbaa !24
  %t353 = load ptr, ptr %l0, !tbaa !29
  %t354 = load %"compiler/eval:Ptr", ptr %l5
  %t355 = load %"compiler/eval:Ptr", ptr %l19
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2ewrPtr(ptr %v0, ptr %t353, %"compiler/eval:Ptr" %t354, %"compiler/eval:Ptr" %t355)
  br label %bb84
bb84:
  %t359 = load ptr, ptr %l0, !tbaa !29
  store ptr %t359, ptr %l233, !tbaa !29
  %t360 = getelementptr %"compiler/eval:Ptr", ptr %l5, i32 0, i32 0
  %t361 = load i64, ptr %t360, !tbaa !24
  %t362 = getelementptr %"compiler/eval:Ptr", ptr %l5, i32 0, i32 1
  %t363 = load i64, ptr %t362, !tbaa !24
  %t365 = add i64 %t363, 8
  %t368 = call %"compiler/eval:Ptr" @compiler_2feval_3aPtr_2ector(ptr %s11, i64 %t361, i64 %t365)
  store %"compiler/eval:Ptr" %t368, ptr %l237
  br label %bb85
bb85:
  %t369 = getelementptr %"compiler/eval:Ptr", ptr %l19, i32 0, i32 0
  %t370 = load i64, ptr %t369, !tbaa !24
  %t372 = icmp eq i64 %t370, 0
  br i1 %t372, label %bb86, label %bb87
bb86:
  %t374 = load %"compiler/eval:Ptr", ptr @G_2ecompiler_2feval_2eNullPtr
  store %"compiler/eval:Ptr" %t374, ptr %l240
  br label %bb89
bb87:
  %t376 = load ptr, ptr %l0, !tbaa !29
  %t377 = load i64, ptr %l20, !tbaa !24
  %t380 = call %"compiler/eval:Ptr" @compiler_2feval_2ecompiler_2feval_3aMachine_2etable(ptr %v0, ptr %t376, i64 %t377)
  store %"compiler/eval:Ptr" %t380, ptr %l244
  br label %bb88
bb88:
  %t381 = load %"compiler/eval:Ptr", ptr %l244
  store %"compiler/eval:Ptr" %t381, ptr %l240
  br label %bb89
bb89:
  %t382 = load ptr, ptr %l233, !tbaa !29
  %t383 = load %"compiler/eval:Ptr", ptr %l237
  %t384 = load %"compiler/eval:Ptr", ptr %l240
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2ewrPtr(ptr %v0, ptr %t382, %"compiler/eval:Ptr" %t383, %"compiler/eval:Ptr" %t384)
  br label %bb90
bb90:
  call void @__olang_scope_close(ptr %s11)
  br label %ret
bb91:
  %t385 = load i32, ptr %l16, !range !{i32 0, i32 52}
  %t387 = trunc i64 43 to i32
  %t388 = icmp eq i32 %t385, %t387
  br i1 %t388, label %bb92, label %bb93
bb92:
  %t390 = load ptr, ptr %l0, !tbaa !29
  store ptr %t390, ptr %l247, !tbaa !29
  %t391 = load %"compiler/eval:Ptr", ptr %l5
  store %"compiler/eval:Ptr" %t391, ptr %l248
  %t392 = load ptr, ptr %l0, !tbaa !29
  store ptr %t392, ptr %l249, !tbaa !29
  %t393 = load ptr, ptr %l0, !tbaa !29
  store ptr %t393, ptr %l250, !tbaa !29
  %t394 = load i64, ptr %l1, !tbaa !24
  store i64 %t394, ptr %l251, !tbaa !24
  %t395 = load ptr, ptr %l0, !tbaa !29
  %t396 = load i64, ptr %l1, !tbaa !24
  %t397 = load %"compiler/mir:Range", ptr %l18
  %t401 = call { i64, [4 x i64] } @compiler_2feval_2ecompiler_2feval_3aMachine_2earg(ptr %v0, ptr %t395, i64 %t396, %"compiler/mir:Range" %t397, i64 0)
  store { i64, [4 x i64] } %t401, ptr %l255
  br label %bb94
bb93:
  br label %bb98
bb94:
  %t402 = load ptr, ptr %l250, !tbaa !29
  %t403 = load i64, ptr %l251, !tbaa !24
  %t404 = load { i64, [4 x i64] }, ptr %l255
  %t405 = call %"compiler/eval:Ptr" @compiler_2feval_2ecompiler_2feval_3aMachine_2eaddr(ptr %v0, ptr %t402, i64 %t403, { i64, [4 x i64] } %t404, i64 1)
  store %"compiler/eval:Ptr" %t405, ptr %l256
  br label %bb95
bb95:
  %t406 = load ptr, ptr %l249, !tbaa !29
  %t407 = load %"compiler/eval:Ptr", ptr %l256
  %t408 = call %"compiler/eval:Ptr" @compiler_2feval_2ecompiler_2feval_3aMachine_2erdPtr(ptr %v0, ptr %t406, %"compiler/eval:Ptr" %t407)
  store %"compiler/eval:Ptr" %t408, ptr %l257
  br label %bb96
bb96:
  %t409 = load ptr, ptr %l247, !tbaa !29
  %t410 = load %"compiler/eval:Ptr", ptr %l248
  %t411 = load %"compiler/eval:Ptr", ptr %l257
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2ewrPtr(ptr %v0, ptr %t409, %"compiler/eval:Ptr" %t410, %"compiler/eval:Ptr" %t411)
  br label %bb97
bb97:
  br label %ret
bb98:
  %t412 = load i32, ptr %l16, !range !{i32 0, i32 52}
  %t414 = call i1 @compiler_2feval_2esatOp(i32 %t412)
  store i1 %t414, ptr %l259
  br label %bb99
bb99:
  %t415 = load i1, ptr %l259, !tbaa !21
  br i1 %t415, label %bb100, label %bb101
bb100:
  %t416 = load ptr, ptr %l0, !tbaa !29
  %t417 = load i64, ptr %l1, !tbaa !24
  %t418 = load %"compiler/eval:Ptr", ptr %l5
  %t419 = load i32, ptr %l16, !range !{i32 0, i32 52}
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
  store i1 %t436, ptr %l270
  br label %bb104
bb104:
  %t437 = load i1, ptr %l270, !tbaa !21
  br i1 %t437, label %bb105, label %bb106
bb105:
  %t438 = load ptr, ptr %l0, !tbaa !29
  %t439 = load i64, ptr %l1, !tbaa !24
  %t440 = load %"compiler/eval:Ptr", ptr %l5
  %t441 = load i32, ptr %l16, !range !{i32 0, i32 52}
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
  store ptr %t450, ptr %l277, !tbaa !29
  %t451 = load %"compiler/eval:Ptr", ptr %l5
  store %"compiler/eval:Ptr" %t451, ptr %l278
  %t452 = load ptr, ptr %l0, !tbaa !29
  %t453 = load i32, ptr %l17, !tbaa !23
  %t456 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2ewidth(ptr %v0, ptr %t452, i32 %t453)
  store i64 %t456, ptr %l281
  br label %bb109
bb109:
  %t457 = load ptr, ptr %l0, !tbaa !29
  %t458 = load i64, ptr %l1, !tbaa !24
  %t459 = load i32, ptr %l16, !range !{i32 0, i32 52}
  %t460 = load i32, ptr %l17, !tbaa !23
  %t461 = load %"compiler/mir:Range", ptr %l18
  %t467 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2eprim(ptr %v0, ptr %t457, i64 %t458, i32 %t459, i32 %t460, %"compiler/mir:Range" %t461)
  store i64 %t467, ptr %l287
  br label %bb110
bb110:
  %t468 = load ptr, ptr %l277, !tbaa !29
  %t469 = load %"compiler/eval:Ptr", ptr %l278
  %t470 = load i64, ptr %l281, !tbaa !24
  %t471 = load i64, ptr %l287, !tbaa !24
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
  %t479 = load i32, ptr %t478, !range !{i32 0, i32 52}
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
  store i1 %t497, ptr %l297
  br label %bb116
bb116:
  %t498 = load i1, ptr %l297, !tbaa !21
  br i1 %t498, label %bb117, label %bb118
bb117:
  %t499 = load ptr, ptr %l0, !tbaa !29
  %t500 = load i64, ptr %l1, !tbaa !24
  %t501 = load i32, ptr %l21, !range !{i32 0, i32 52}
  %t502 = load i32, ptr %l22, !tbaa !23
  %t503 = load %"compiler/mir:Range", ptr %l23
  %t509 = call i1 @compiler_2feval_2ecompiler_2feval_3aMachine_2eoverflowsWide(ptr %v0, ptr %t499, i64 %t500, i32 %t501, i32 %t502, %"compiler/mir:Range" %t503)
  store i1 %t509, ptr %l304
  br label %bb119
bb118:
  %t510 = load ptr, ptr %l0, !tbaa !29
  %t511 = load i64, ptr %l1, !tbaa !24
  %t512 = load i32, ptr %l21, !range !{i32 0, i32 52}
  %t513 = load i32, ptr %l22, !tbaa !23
  %t514 = load %"compiler/mir:Range", ptr %l23
  %t520 = call i1 @compiler_2feval_2ecompiler_2feval_3aMachine_2eoverflows(ptr %v0, ptr %t510, i64 %t511, i32 %t512, i32 %t513, %"compiler/mir:Range" %t514)
  store i1 %t520, ptr %l310
  br label %bb120
bb119:
  %t521 = load i1, ptr %l304, !tbaa !21
  store i1 %t521, ptr %l298, !tbaa !21
  br label %bb121
bb120:
  %t522 = load i1, ptr %l310, !tbaa !21
  store i1 %t522, ptr %l298, !tbaa !21
  br label %bb121
bb121:
  %t523 = load i1, ptr %l298, !tbaa !21
  %t524 = load ptr, ptr %l0, !tbaa !29
  store ptr %t524, ptr %l311, !tbaa !29
  %t525 = load %"compiler/eval:Ptr", ptr %l5
  store %"compiler/eval:Ptr" %t525, ptr %l312
  br i1 %t523, label %bb122, label %bb123
bb122:
  store i64 1, ptr %l314, !tbaa !24
  br label %bb124
bb123:
  store i64 0, ptr %l314, !tbaa !24
  br label %bb124
bb124:
  %t528 = load ptr, ptr %l311, !tbaa !29
  %t529 = load %"compiler/eval:Ptr", ptr %l312
  %t530 = load i64, ptr %l314, !tbaa !24
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
  store { %"compiler/eval:Ptr", i32 } %t546, ptr %l321
  br label %bb130
bb130:
  %t547 = load { %"compiler/eval:Ptr", i32 }, ptr %l321
  store { %"compiler/eval:Ptr", i32 } %t547, ptr %l26
  %t548 = getelementptr { %"compiler/eval:Ptr", i32 }, ptr %l26, i32 0, i32 0
  %t549 = load %"compiler/eval:Ptr", ptr %t548
  %t551 = getelementptr { %"compiler/eval:Ptr", i32 }, ptr %l26, i32 0, i32 1
  %t552 = load i32, ptr %t551, !tbaa !23
  %t554 = load ptr, ptr %l0, !tbaa !29
  store ptr %t554, ptr %l324, !tbaa !29
  %t555 = load %"compiler/eval:Ptr", ptr %l5
  store %"compiler/eval:Ptr" %t555, ptr %l325
  %t556 = load ptr, ptr %l0, !tbaa !29
  %t562 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2etagOf(ptr %v0, ptr %t556, %"compiler/eval:Ptr" %t549, i32 %t552)
  store i64 %t562, ptr %l329
  br label %bb131
bb131:
  %t563 = load ptr, ptr %l324, !tbaa !29
  %t564 = load %"compiler/eval:Ptr", ptr %l325
  %t565 = load i64, ptr %l329, !tbaa !24
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
  store ptr %t740, ptr %l394, !tbaa !29
  %t741 = load %"compiler/eval:Ptr", ptr %l5
  store %"compiler/eval:Ptr" %t741, ptr %l395
  %t742 = load ptr, ptr %l0, !tbaa !29
  store ptr %t742, ptr %l396, !tbaa !29
  %t743 = load ptr, ptr %l0, !tbaa !29
  store ptr %t743, ptr %l397, !tbaa !29
  %t744 = load ptr, ptr %l0, !tbaa !29
  %t745 = load i64, ptr %l1, !tbaa !24
  %t746 = load { i64, [4 x i64] }, ptr %l46
  %t750 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2escalar(ptr %v0, ptr %t744, i64 %t745, { i64, [4 x i64] } %t746)
  store i64 %t750, ptr %l401
  br label %bb162
bb162:
  %t751 = load i32, ptr @G_2ecompiler_2fmir_2eI32T, !tbaa !23
  %t752 = load ptr, ptr %l397, !tbaa !29
  %t753 = load i64, ptr %l401, !tbaa !24
  %t755 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2eintValue(ptr %v0, ptr %t752, i64 %t753, i32 %t751)
  store i64 %t755, ptr %l403
  br label %bb163
bb163:
  %t756 = load i32, ptr %l47, !tbaa !23
  %t757 = load i32, ptr %l48, !tbaa !23
  %t758 = load ptr, ptr %l396, !tbaa !29
  %t759 = load i64, ptr %l403, !tbaa !24
  %t762 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2erecode(ptr %v0, ptr %t758, i64 %t759, i32 %t756, i32 %t757)
  store i64 %t762, ptr %l406
  br label %bb164
bb164:
  %t763 = load ptr, ptr %l394, !tbaa !29
  %t764 = load %"compiler/eval:Ptr", ptr %l395
  %t765 = load i64, ptr %l406, !tbaa !24
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
  br label %bb174
bb173:
  br label %bb187
bb174:
  %t798 = load ptr, ptr %l0, !tbaa !29
  %t799 = load i64, ptr %l1, !tbaa !24
  %t800 = load { i64, [1 x i64] }, ptr %l51
  %t804 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2ebuildScope(ptr %v0, ptr %t798, i64 %t799, { i64, [1 x i64] } %t800)
  store i64 %t804, ptr %l422
  br label %bb175
bb175:
  %t805 = load i64, ptr %l422, !tbaa !24
  store i64 %t805, ptr %l52, !tbaa !24
  %t806 = load ptr, ptr %l0, !tbaa !29
  %t808 = getelementptr %"compiler/eval:Machine", ptr %t806, i32 0, i32 19
  %t809 = load i1, ptr %t808, !tbaa !21
  br i1 %t809, label %bb176, label %bb177
bb176:
  br label %ret
bb177:
  br label %bb178
bb178:
  %t811 = load ptr, ptr %l0, !tbaa !29
  %t812 = load i64, ptr @G_2ecompiler_2feval_2esRegion, !tbaa !24
  %t815 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2enewScope(ptr %v0, ptr %t811, i64 %t812)
  store i64 %t815, ptr %l427
  br label %bb179
bb179:
  %t816 = load i64, ptr %l427, !tbaa !24
  store i64 %t816, ptr %l53, !tbaa !24
  %t817 = load ptr, ptr %l0, !tbaa !29
  %t818 = load i64, ptr %l53, !tbaa !24
  %t819 = load i64, ptr %l52, !tbaa !24
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2eadopt(ptr %v0, ptr %t817, i64 %t818, i64 %t819)
  br label %bb180
bb180:
  %t823 = load ptr, ptr %l0, !tbaa !29
  %t825 = getelementptr %"compiler/eval:Machine", ptr %t823, i32 0, i32 49
  %t826 = load i64, ptr %l52, !tbaa !24
  %t827 = load i64, ptr @G_2ecompiler_2feval_2eslotMask, !tbaa !24
  %t830 = and i64 %t826, %t827
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3ascope_3e_2eAt_3ccompiler_2feval_3ascope_3e(ptr %t831, ptr %v0, ptr %t825, i64 %t830)
  call void @llvm.memmove.p0.p0.i64(ptr %l436, ptr %t831, i64 144, i1 false)
  br label %bb181
bb181:
  %t834 = getelementptr %"compiler/eval:scope", ptr %l436, i32 0, i32 2
  %t835 = load i64, ptr %t834, !tbaa !24
  %t836 = load i64, ptr @G_2ecompiler_2feval_2esRegion, !tbaa !24
  %t839 = icmp ne i64 %t835, %t836
  br i1 %t839, label %bb182, label %bb183
bb182:
  %t841 = load i64, ptr %l53, !tbaa !24
  %t842 = load i64, ptr @G_2ecompiler_2feval_2eslotMask, !tbaa !24
  %t845 = and i64 %t841, %t842
  %t847 = load ptr, ptr %l0, !tbaa !29
  %t849 = getelementptr %"compiler/eval:Machine", ptr %t847, i32 0, i32 49
  %t853 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3ascope_3e_2eRefMut_3ccompiler_2feval_3ascope_3e(ptr %v0, ptr %v0, ptr %t849, i64 %t845)
  store ptr %t853, ptr %l446
  br label %bb184
bb183:
  br label %bb185
bb184:
  %t854 = load ptr, ptr %l446, !tbaa !29
  %t856 = load i64, ptr %l52, !tbaa !24
  %t859 = getelementptr %"compiler/eval:scope", ptr %t854, i32 0, i32 16
  store i64 %t856, ptr %t859, !tbaa !24
  br label %bb185
bb185:
  %t860 = load ptr, ptr %l0, !tbaa !29
  %t861 = load %"compiler/eval:Ptr", ptr %l5
  %t862 = load i64, ptr %l53, !tbaa !24
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2ewr(ptr %v0, ptr %t860, %"compiler/eval:Ptr" %t861, i64 8, i64 %t862)
  br label %bb186
bb186:
  br label %bb272
bb187:
  %t866 = load { i64, [15 x i64] }, ptr %l3
  %t868 = extractvalue { i64, [15 x i64] } %t866, 0
  %t869 = icmp eq i64 %t868, 14
  br i1 %t869, label %bb188, label %bb189
bb188:
  %t871 = getelementptr { i64, [15 x i64] }, ptr %l3, i32 0, i32 1
  %t872 = getelementptr { { i64, [4 x i64] }, { i64, [1 x i64] } }, ptr %t871, i32 0, i32 0
  %t873 = load { i64, [4 x i64] }, ptr %t872
  store { i64, [4 x i64] } %t873, ptr %l56
  %t875 = getelementptr { i64, [15 x i64] }, ptr %l3, i32 0, i32 1
  %t876 = getelementptr { { i64, [4 x i64] }, { i64, [1 x i64] } }, ptr %t875, i32 0, i32 1
  %t877 = load { i64, [1 x i64] }, ptr %t876
  store { i64, [1 x i64] } %t877, ptr %l57
  br label %bb190
bb189:
  br label %bb198
bb190:
  %t879 = load ptr, ptr %l0, !tbaa !29
  store ptr %t879, ptr %l456, !tbaa !29
  %t880 = load ptr, ptr %l0, !tbaa !29
  %t881 = load i64, ptr %l1, !tbaa !24
  %t882 = load { i64, [4 x i64] }, ptr %l56
  %t886 = call %"compiler/eval:Ptr" @compiler_2feval_2ecompiler_2feval_3aMachine_2eobjectOf(ptr %v0, ptr %t880, i64 %t881, { i64, [4 x i64] } %t882)
  store %"compiler/eval:Ptr" %t886, ptr %l460
  br label %bb191
bb191:
  %t887 = load ptr, ptr %l456, !tbaa !29
  %t888 = load %"compiler/eval:Ptr", ptr %l460
  %t889 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2eregionOfObject(ptr %v0, ptr %t887, %"compiler/eval:Ptr" %t888)
  store i64 %t889, ptr %l461
  br label %bb192
bb192:
  %t890 = load i64, ptr %l461, !tbaa !24
  store i64 %t890, ptr %l58, !tbaa !24
  %t891 = load i64, ptr %l58, !tbaa !24
  %t893 = icmp eq i64 %t891, 0
  br i1 %t893, label %bb193, label %bb194
bb193:
  %t895 = load ptr, ptr %l0, !tbaa !29
  %t896 = load i64, ptr %l1, !tbaa !24
  %t897 = load { i64, [1 x i64] }, ptr %l57
  %t901 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2escopeOf(ptr %v0, ptr %t895, i64 %t896, { i64, [1 x i64] } %t897)
  store i64 %t901, ptr %l467
  br label %bb195
bb194:
  br label %bb196
bb195:
  %t902 = load i64, ptr %l467, !tbaa !24
  store i64 %t902, ptr %l58, !tbaa !24
  br label %bb196
bb196:
  %t903 = load ptr, ptr %l0, !tbaa !29
  %t904 = load %"compiler/eval:Ptr", ptr %l5
  %t905 = load i64, ptr %l58, !tbaa !24
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2ewr(ptr %v0, ptr %t903, %"compiler/eval:Ptr" %t904, i64 8, i64 %t905)
  br label %bb197
bb197:
  br label %bb272
bb198:
  %t909 = load { i64, [15 x i64] }, ptr %l3
  %t911 = extractvalue { i64, [15 x i64] } %t909, 0
  %t912 = icmp eq i64 %t911, 15
  br i1 %t912, label %bb199, label %bb200
bb199:
  %t914 = getelementptr { i64, [15 x i64] }, ptr %l3, i32 0, i32 1
  %t915 = getelementptr { { i64, [4 x i64] } }, ptr %t914, i32 0, i32 0
  %t916 = load { i64, [4 x i64] }, ptr %t915
  store { i64, [4 x i64] } %t916, ptr %l59
  br label %bb201
bb200:
  br label %bb205
bb201:
  %t918 = load ptr, ptr %l0, !tbaa !29
  store ptr %t918, ptr %l474, !tbaa !29
  %t919 = load %"compiler/eval:Ptr", ptr %l5
  store %"compiler/eval:Ptr" %t919, ptr %l475
  %t920 = load ptr, ptr %l0, !tbaa !29
  store ptr %t920, ptr %l476, !tbaa !29
  %t921 = load ptr, ptr %l0, !tbaa !29
  %t922 = load i64, ptr %l1, !tbaa !24
  %t923 = load { i64, [4 x i64] }, ptr %l59
  %t927 = call %"compiler/eval:Ptr" @compiler_2feval_2ecompiler_2feval_3aMachine_2eobjectOf(ptr %v0, ptr %t921, i64 %t922, { i64, [4 x i64] } %t923)
  store %"compiler/eval:Ptr" %t927, ptr %l480
  br label %bb202
bb202:
  %t928 = load ptr, ptr %l476, !tbaa !29
  %t929 = load %"compiler/eval:Ptr", ptr %l480
  %t930 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2efoundScope(ptr %v0, ptr %t928, %"compiler/eval:Ptr" %t929)
  store i64 %t930, ptr %l481
  br label %bb203
bb203:
  %t931 = load ptr, ptr %l474, !tbaa !29
  %t932 = load %"compiler/eval:Ptr", ptr %l475
  %t933 = load i64, ptr %l481, !tbaa !24
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2ewr(ptr %v0, ptr %t931, %"compiler/eval:Ptr" %t932, i64 8, i64 %t933)
  br label %bb204
bb204:
  br label %bb272
bb205:
  %t934 = load { i64, [15 x i64] }, ptr %l3
  %t936 = extractvalue { i64, [15 x i64] } %t934, 0
  %t937 = icmp eq i64 %t936, 16
  br i1 %t937, label %bb206, label %bb207
bb206:
  %t939 = getelementptr { i64, [15 x i64] }, ptr %l3, i32 0, i32 1
  %t940 = getelementptr { { i64, [1 x i64] }, { i64, [4 x i64] } }, ptr %t939, i32 0, i32 0
  %t941 = load { i64, [1 x i64] }, ptr %t940
  store { i64, [1 x i64] } %t941, ptr %l60
  %t943 = getelementptr { i64, [15 x i64] }, ptr %l3, i32 0, i32 1
  %t944 = getelementptr { { i64, [1 x i64] }, { i64, [4 x i64] } }, ptr %t943, i32 0, i32 1
  %t945 = load { i64, [4 x i64] }, ptr %t944
  store { i64, [4 x i64] } %t945, ptr %l61
  br label %bb208
bb207:
  br label %bb219
bb208:
  %t947 = load ptr, ptr %l0, !tbaa !29
  %t948 = load i64, ptr %l1, !tbaa !24
  %t949 = load { i64, [1 x i64] }, ptr %l60
  %t953 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2escopeOf(ptr %v0, ptr %t947, i64 %t948, { i64, [1 x i64] } %t949)
  store i64 %t953, ptr %l489
  br label %bb209
bb209:
  %t954 = load i64, ptr %l489, !tbaa !24
  store i64 %t954, ptr %l62, !tbaa !24
  %t955 = load i64, ptr %l62, !tbaa !24
  %t957 = icmp eq i64 %t955, 0
  br i1 %t957, label %bb210, label %bb211
bb210:
  %t959 = load { i64, [4 x i64] }, ptr %l61
  %t961 = extractvalue { i64, [4 x i64] } %t959, 0
  %t962 = icmp eq i64 %t961, 0
  br i1 %t962, label %bb212, label %bb213
bb211:
  br label %bb217
bb212:
  %t964 = load ptr, ptr %l0, !tbaa !29
  %t966 = getelementptr %"compiler/eval:Machine", ptr %t964, i32 0, i32 67
  %t967 = load i64, ptr %t966, !tbaa !24
  store i64 %t967, ptr %l494, !tbaa !24
  br label %bb216
bb213:
  %t969 = load ptr, ptr %l0, !tbaa !29
  store ptr %t969, ptr %l497, !tbaa !29
  %t970 = load ptr, ptr %l0, !tbaa !29
  %t971 = load i64, ptr %l1, !tbaa !24
  %t972 = load { i64, [4 x i64] }, ptr %l61
  %t976 = call %"compiler/eval:Ptr" @compiler_2feval_2ecompiler_2feval_3aMachine_2eobjectOf(ptr %v0, ptr %t970, i64 %t971, { i64, [4 x i64] } %t972)
  store %"compiler/eval:Ptr" %t976, ptr %l501
  br label %bb214
bb214:
  %t977 = load ptr, ptr %l497, !tbaa !29
  %t978 = load %"compiler/eval:Ptr", ptr %l501
  %t979 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2efoundScope(ptr %v0, ptr %t977, %"compiler/eval:Ptr" %t978)
  store i64 %t979, ptr %l502
  br label %bb215
bb215:
  %t980 = load i64, ptr %l502, !tbaa !24
  store i64 %t980, ptr %l494, !tbaa !24
  br label %bb216
bb216:
  %t981 = load i64, ptr %l494, !tbaa !24
  store i64 %t981, ptr %l62, !tbaa !24
  br label %bb217
bb217:
  %t982 = load ptr, ptr %l0, !tbaa !29
  %t983 = load %"compiler/eval:Ptr", ptr %l5
  %t984 = load i64, ptr %l62, !tbaa !24
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2ewr(ptr %v0, ptr %t982, %"compiler/eval:Ptr" %t983, i64 8, i64 %t984)
  br label %bb218
bb218:
  br label %bb272
bb219:
  %t988 = load { i64, [15 x i64] }, ptr %l3
  %t990 = extractvalue { i64, [15 x i64] } %t988, 0
  %t991 = icmp eq i64 %t990, 18
  br i1 %t991, label %bb220, label %bb221
bb220:
  %t993 = getelementptr { i64, [15 x i64] }, ptr %l3, i32 0, i32 1
  %t994 = getelementptr { { i64, [1 x i64] } }, ptr %t993, i32 0, i32 0
  %t995 = load { i64, [1 x i64] }, ptr %t994
  store { i64, [1 x i64] } %t995, ptr %l63
  br label %bb222
bb221:
  br label %bb225
bb222:
  %t997 = load ptr, ptr %l0, !tbaa !29
  store ptr %t997, ptr %l509, !tbaa !29
  %t998 = load %"compiler/eval:Ptr", ptr %l5
  store %"compiler/eval:Ptr" %t998, ptr %l510
  %t999 = load ptr, ptr %l0, !tbaa !29
  %t1000 = load i64, ptr %l1, !tbaa !24
  %t1001 = load { i64, [1 x i64] }, ptr %l63
  %t1005 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2escopeOf(ptr %v0, ptr %t999, i64 %t1000, { i64, [1 x i64] } %t1001)
  store i64 %t1005, ptr %l514
  br label %bb223
bb223:
  %t1006 = load ptr, ptr %l509, !tbaa !29
  %t1007 = load %"compiler/eval:Ptr", ptr %l510
  %t1008 = load i64, ptr %l514, !tbaa !24
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2ewr(ptr %v0, ptr %t1006, %"compiler/eval:Ptr" %t1007, i64 8, i64 %t1008)
  br label %bb224
bb224:
  br label %bb272
bb225:
  %t1009 = load { i64, [15 x i64] }, ptr %l3
  %t1011 = extractvalue { i64, [15 x i64] } %t1009, 0
  %t1012 = icmp eq i64 %t1011, 17
  br i1 %t1012, label %bb226, label %bb227
bb226:
  %t1014 = getelementptr { i64, [15 x i64] }, ptr %l3, i32 0, i32 1
  %t1015 = getelementptr { i64 }, ptr %t1014, i32 0, i32 0
  %t1016 = load i64, ptr %t1015
  store i64 %t1016, ptr %l64, !tbaa !24
  br label %bb228
bb227:
  br label %bb241
bb228:
  %t1018 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1018, ptr %l518, !tbaa !29
  %t1019 = load %"compiler/eval:Ptr", ptr %l5
  store %"compiler/eval:Ptr" %t1019, ptr %l519
  %t1020 = load i64, ptr %l64, !tbaa !24
  %t1022 = icmp sge i64 %t1020, 0
  br i1 %t1022, label %bb229, label %bb230
bb229:
  %t1024 = load i64, ptr %l64, !tbaa !24
  store i64 %t1024, ptr %l523, !tbaa !24
  %t1025 = load ptr, ptr %l0, !tbaa !29
  %t1027 = getelementptr %"compiler/eval:Machine", ptr %t1025, i32 0, i32 3
  %t1029 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eLen_3cBool_3e(ptr %v0, ptr %t1027)
  store i64 %t1029, ptr %l526
  br label %bb231
bb230:
  store i1 false, ptr %l522, !tbaa !21
  br label %bb232
bb231:
  %t1030 = load i64, ptr %l523, !tbaa !24
  %t1031 = load i64, ptr %l526, !tbaa !24
  %t1032 = icmp slt i64 %t1030, %t1031
  store i1 %t1032, ptr %l522, !tbaa !21
  br label %bb232
bb232:
  %t1034 = load i1, ptr %l522, !tbaa !21
  br i1 %t1034, label %bb233, label %bb234
bb233:
  %t1035 = load ptr, ptr %l0, !tbaa !29
  %t1037 = getelementptr %"compiler/eval:Machine", ptr %t1035, i32 0, i32 3
  %t1038 = load i64, ptr %l64, !tbaa !24
  %t1041 = call i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eAt_3cBool_3e(ptr %v0, ptr %t1037, i64 %t1038)
  store i1 %t1041, ptr %l532
  br label %bb235
bb234:
  store i1 false, ptr %l528, !tbaa !21
  br label %bb236
bb235:
  %t1042 = load i1, ptr %l532, !tbaa !21
  store i1 %t1042, ptr %l528, !tbaa !21
  br label %bb236
bb236:
  %t1043 = load i1, ptr %l528, !tbaa !21
  br i1 %t1043, label %bb237, label %bb238
bb237:
  store i64 1, ptr %l533, !tbaa !24
  br label %bb239
bb238:
  store i64 0, ptr %l533, !tbaa !24
  br label %bb239
bb239:
  %t1044 = load ptr, ptr %l518, !tbaa !29
  %t1045 = load %"compiler/eval:Ptr", ptr %l519
  %t1046 = load i64, ptr %l533, !tbaa !24
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2ewr(ptr %v0, ptr %t1044, %"compiler/eval:Ptr" %t1045, i64 1, i64 %t1046)
  br label %bb240
bb240:
  br label %bb272
bb241:
  %t1047 = load { i64, [15 x i64] }, ptr %l3
  %t1049 = extractvalue { i64, [15 x i64] } %t1047, 0
  %t1050 = icmp eq i64 %t1049, 19
  br i1 %t1050, label %bb242, label %bb243
bb242:
  br label %bb244
bb243:
  br label %bb249
bb244:
  %t1052 = load ptr, ptr %l0, !tbaa !29
  %t1053 = load i64, ptr @G_2ecompiler_2feval_2esRegion, !tbaa !24
  %t1056 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2enewScope(ptr %v0, ptr %t1052, i64 %t1053)
  store i64 %t1056, ptr %l538
  br label %bb245
bb245:
  %t1057 = load i64, ptr %l538, !tbaa !24
  store i64 %t1057, ptr %l65, !tbaa !24
  %t1058 = load ptr, ptr %l0, !tbaa !29
  %t1060 = getelementptr %"compiler/eval:Machine", ptr %t1058, i32 0, i32 9
  %t1061 = load i64, ptr %l65, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %t1060, i64 %t1061)
  br label %bb246
bb246:
  %t1064 = load ptr, ptr %l0, !tbaa !29
  %t1066 = getelementptr %"compiler/eval:Machine", ptr %t1064, i32 0, i32 10
  %t1067 = load %"compiler/eval:Ptr", ptr @G_2ecompiler_2feval_2eNullPtr
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3aPtr_3e_2ePush_3ccompiler_2feval_3aPtr_3e(ptr %v0, ptr %t1066, %"compiler/eval:Ptr" %t1067)
  br label %bb247
bb247:
  %t1070 = load ptr, ptr %l0, !tbaa !29
  %t1071 = load %"compiler/eval:Ptr", ptr %l5
  %t1072 = load i64, ptr %l65, !tbaa !24
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2ewr(ptr %v0, ptr %t1070, %"compiler/eval:Ptr" %t1071, i64 8, i64 %t1072)
  br label %bb248
bb248:
  br label %bb272
bb249:
  %t1076 = load { i64, [15 x i64] }, ptr %l3
  %t1078 = extractvalue { i64, [15 x i64] } %t1076, 0
  %t1079 = icmp eq i64 %t1078, 20
  br i1 %t1079, label %bb250, label %bb251
bb250:
  br label %bb252
bb251:
  br label %bb261
bb252:
  %t1081 = load ptr, ptr %l0, !tbaa !29
  %t1083 = getelementptr %"compiler/eval:Machine", ptr %t1081, i32 0, i32 10
  %t1085 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3aPtr_3e_2eLen_3ccompiler_2feval_3aPtr_3e(ptr %v0, ptr %t1083)
  store i64 %t1085, ptr %l552
  br label %bb253
bb253:
  %t1086 = load i64, ptr %l552, !tbaa !24
  %t1087 = icmp eq i64 %t1086, 0
  br i1 %t1087, label %bb254, label %bb255
bb254:
  %t1089 = load ptr, ptr %l0, !tbaa !29
  %t1090 = load { i64, ptr }, ptr @G_2ecompiler_2feval_2eWhyNotModelled, !tbaa !27
  %t1091 = load ptr, ptr @__olang_prog_scope
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2erefuse(ptr %v0, ptr %t1091, ptr %t1089, { i64, ptr } %t1090)
  br label %bb256
bb255:
  br label %bb257
bb256:
  br label %ret
bb257:
  %t1094 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1094, ptr %l556, !tbaa !29
  %t1095 = load %"compiler/eval:Ptr", ptr %l5
  store %"compiler/eval:Ptr" %t1095, ptr %l557
  %t1096 = load ptr, ptr %l0, !tbaa !29
  %t1098 = getelementptr %"compiler/eval:Machine", ptr %t1096, i32 0, i32 10
  store ptr %t1098, ptr %l559, !tbaa !29
  %t1099 = load ptr, ptr %l0, !tbaa !29
  %t1101 = getelementptr %"compiler/eval:Machine", ptr %t1099, i32 0, i32 10
  %t1103 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3aPtr_3e_2eLen_3ccompiler_2feval_3aPtr_3e(ptr %v0, ptr %t1101)
  store i64 %t1103, ptr %l562
  br label %bb258
bb258:
  %t1104 = load i64, ptr %l562, !tbaa !24
  %t1105 = sub i64 %t1104, 1
  %t1106 = load ptr, ptr %l559, !tbaa !29
  %t1108 = call %"compiler/eval:Ptr" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3aPtr_3e_2eAt_3ccompiler_2feval_3aPtr_3e(ptr %v0, ptr %t1106, i64 %t1105)
  store %"compiler/eval:Ptr" %t1108, ptr %l564
  br label %bb259
bb259:
  %t1109 = load ptr, ptr %l556, !tbaa !29
  %t1110 = load %"compiler/eval:Ptr", ptr %l557
  %t1111 = load %"compiler/eval:Ptr", ptr %l564
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2ewrPtr(ptr %v0, ptr %t1109, %"compiler/eval:Ptr" %t1110, %"compiler/eval:Ptr" %t1111)
  br label %bb260
bb260:
  br label %bb272
bb261:
  %t1112 = load { i64, [15 x i64] }, ptr %l3
  %t1114 = extractvalue { i64, [15 x i64] } %t1112, 0
  %t1115 = icmp eq i64 %t1114, 21
  br i1 %t1115, label %bb262, label %bb263
bb262:
  %t1117 = getelementptr { i64, [15 x i64] }, ptr %l3, i32 0, i32 1
  %t1118 = getelementptr { %"compiler/mir:Lvalue", i32 }, ptr %t1117, i32 0, i32 0
  %t1119 = load %"compiler/mir:Lvalue", ptr %t1118
  store %"compiler/mir:Lvalue" %t1119, ptr %l66
  br label %bb264
bb263:
  br label %bb266
bb264:
  %t1121 = load ptr, ptr %l0, !tbaa !29
  %t1122 = load i64, ptr %l1, !tbaa !24
  %t1123 = load %"compiler/eval:Ptr", ptr %l5
  %t1124 = load %"compiler/mir:Lvalue", ptr %l66
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2eweakRead(ptr %v0, ptr %t1121, i64 %t1122, %"compiler/eval:Ptr" %t1123, %"compiler/mir:Lvalue" %t1124)
  br label %bb265
bb265:
  br label %bb272
bb266:
  %t1129 = load { i64, [15 x i64] }, ptr %l3
  %t1131 = extractvalue { i64, [15 x i64] } %t1129, 0
  %t1132 = icmp eq i64 %t1131, 22
  br i1 %t1132, label %bb267, label %bb268
bb267:
  %t1134 = getelementptr { i64, [15 x i64] }, ptr %l3, i32 0, i32 1
  %t1135 = getelementptr { { i64, [4 x i64] } }, ptr %t1134, i32 0, i32 0
  %t1136 = load { i64, [4 x i64] }, ptr %t1135
  store { i64, [4 x i64] } %t1136, ptr %l67
  br label %bb269
bb268:
  br label %bb271
bb269:
  %t1138 = load ptr, ptr %l0, !tbaa !29
  %t1139 = load i64, ptr %l1, !tbaa !24
  %t1140 = load %"compiler/eval:Ptr", ptr %l5
  %t1141 = load i32, ptr %l6, !tbaa !23
  %t1142 = load { i64, [4 x i64] }, ptr %l67
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2eput(ptr %v0, ptr %t1138, i64 %t1139, %"compiler/eval:Ptr" %t1140, i32 %t1141, { i64, [4 x i64] } %t1142)
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

define dso_local void @compiler_2feval_2ecompiler_2feval_3aMachine_2edeliver(ptr %v0, ptr %a0, i64 %a1, { i64, [4 x i64] } %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca { i64, [4 x i64] }
  %l3 = alloca %"compiler/eval:frame"
  %l4 = alloca i32
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca %"compiler/mir:Call"
  %l8 = alloca { %"compiler/eval:Ptr", i32 }
  %l12 = alloca %"compiler/eval:Ptr"
  %l15 = alloca %"compiler/eval:global"
  %l17 = alloca { i64, ptr }
  %l19 = alloca %"compiler/eval:frame"
  %l25 = alloca i32
  %l34 = alloca ptr
  %l38 = alloca %"compiler/mir:Call"
  %l43 = alloca { %"compiler/eval:Ptr", i32 }
  %l56 = alloca i64
  %l62 = alloca %"compiler/eval:Ptr"
  %l80 = alloca %"compiler/eval:global"
  %l81 = alloca ptr
  %l82 = alloca i64
  %l84 = alloca %"compiler/eval:Ptr"
  %s5 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  store { i64, [4 x i64] } %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/eval:Machine", ptr %t1, i32 0, i32 55
  %t4 = load { i64, ptr }, ptr %t3, !tbaa !27
  store { i64, ptr } %t4, ptr %l17, !tbaa !27
  %t5 = load i64, ptr %l1, !tbaa !24
  %t7 = getelementptr { i64, ptr }, ptr %l17, i32 0, i32 1
  %t8 = load ptr, ptr %t7, !tbaa !27
  %t9 = getelementptr %"compiler/eval:frame", ptr %t8, i64 %t5
  call void @llvm.memmove.p0.p0.i64(ptr %l19, ptr %t9, i64 136, i1 false)
  call void @llvm.memmove.p0.p0.i64(ptr %l3, ptr %l19, i64 136, i1 false)
  %t10 = load { i64, [4 x i64] }, ptr %l2
  %t12 = extractvalue { i64, [4 x i64] } %t10, 0
  %t13 = icmp eq i64 %t12, 0
  br i1 %t13, label %bb1, label %bb2
bb1:
  br label %ret
bb2:
  br label %bb3
bb3:
  %t15 = load ptr, ptr %l0, !tbaa !29
  %t16 = load i64, ptr %l1, !tbaa !24
  %t17 = load { i64, [4 x i64] }, ptr %l2
  %t21 = call i32 @compiler_2feval_2ecompiler_2feval_3aMachine_2eopType(ptr %v0, ptr %t15, i64 %t16, { i64, [4 x i64] } %t17)
  store i32 %t21, ptr %l25
  br label %bb4
bb4:
  %t22 = load i32, ptr %l25, !tbaa !23
  store i32 %t22, ptr %l4, !tbaa !23
  %t23 = getelementptr %"compiler/eval:frame", ptr %l3, i32 0, i32 7
  %t24 = load i64, ptr %t23, !tbaa !24
  store i64 %t24, ptr %l5, !tbaa !24
  %t26 = load i64, ptr %l5, !tbaa !24
  %t27 = load i64, ptr @G_2ecompiler_2feval_2erCall, !tbaa !24
  %t30 = icmp eq i64 %t26, %t27
  br i1 %t30, label %bb5, label %bb6
bb5:
  br label %bb7
bb6:
  br label %bb15
bb7:
  %t32 = load i64, ptr %l1, !tbaa !24
  %t34 = sub i64 %t32, 1
  store i64 %t34, ptr %l6, !tbaa !24
  %t36 = load ptr, ptr %l0, !tbaa !29
  %t37 = load i64, ptr %l6, !tbaa !24
  %t40 = call ptr @compiler_2feval_2ecompiler_2feval_3aMachine_2efnOfFrame(ptr %v0, ptr %v0, ptr %t36, i64 %t37)
  store ptr %t40, ptr %l34
  br label %bb8
bb8:
  %t41 = load ptr, ptr %l34, !tbaa !29
  %t43 = getelementptr %"compiler/mir:Fn", ptr %t41, i32 0, i32 14
  %t44 = getelementptr %"compiler/eval:frame", ptr %l3, i32 0, i32 8
  %t45 = load i64, ptr %t44, !tbaa !24
  %t48 = call %"compiler/mir:Call" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aCall_3e_2eAt_3ccompiler_2fmir_3aCall_3e(ptr %v0, ptr %t43, i64 %t45)
  store %"compiler/mir:Call" %t48, ptr %l38
  br label %bb9
bb9:
  %t49 = load %"compiler/mir:Call", ptr %l38
  store %"compiler/mir:Call" %t49, ptr %l7
  %t50 = getelementptr %"compiler/mir:Call", ptr %l7, i32 0, i32 4
  %t51 = load i1, ptr %t50, !tbaa !21
  br i1 %t51, label %bb10, label %bb11
bb10:
  %t53 = load ptr, ptr %l0, !tbaa !29
  %t54 = load i64, ptr %l6, !tbaa !24
  %t55 = getelementptr %"compiler/mir:Call", ptr %l7, i32 0, i32 3
  %t56 = load %"compiler/mir:Lvalue", ptr %t55
  %t60 = call { %"compiler/eval:Ptr", i32 } @compiler_2feval_2ecompiler_2feval_3aMachine_2eplace(ptr %v0, ptr %t53, i64 %t54, %"compiler/mir:Lvalue" %t56)
  store { %"compiler/eval:Ptr", i32 } %t60, ptr %l43
  br label %bb12
bb11:
  br label %bb14
bb12:
  %t61 = load { %"compiler/eval:Ptr", i32 }, ptr %l43
  store { %"compiler/eval:Ptr", i32 } %t61, ptr %l8
  %t62 = getelementptr { %"compiler/eval:Ptr", i32 }, ptr %l8, i32 0, i32 0
  %t63 = load %"compiler/eval:Ptr", ptr %t62
  %t65 = getelementptr { %"compiler/eval:Ptr", i32 }, ptr %l8, i32 0, i32 1
  %t66 = load i32, ptr %t65, !tbaa !23
  %t68 = load ptr, ptr %l0, !tbaa !29
  %t69 = load i64, ptr %l1, !tbaa !24
  %t72 = load { i64, [4 x i64] }, ptr %l2
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2eput(ptr %v0, ptr %t68, i64 %t69, %"compiler/eval:Ptr" %t63, i32 %t66, { i64, [4 x i64] } %t72)
  br label %bb13
bb13:
  br label %bb14
bb14:
  br label %bb41
bb15:
  %t78 = load i64, ptr %l5, !tbaa !24
  %t79 = load i64, ptr @G_2ecompiler_2feval_2erRequest, !tbaa !24
  %t82 = icmp eq i64 %t78, %t79
  br i1 %t82, label %bb16, label %bb17
bb16:
  br label %bb18
bb17:
  br label %bb22
bb18:
  %t84 = load ptr, ptr %l0, !tbaa !29
  %t85 = load i32, ptr %l4, !tbaa !23
  %t88 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2esize(ptr %v0, ptr %t84, i32 %t85)
  store i64 %t88, ptr %l56
  br label %bb19
bb19:
  %t89 = load i64, ptr %l56, !tbaa !24
  %t90 = load ptr, ptr %l0, !tbaa !29
  %t92 = load i64, ptr @G_2ecompiler_2feval_2eaValue, !tbaa !24
  %t93 = load ptr, ptr %l0, !tbaa !29
  %t95 = getelementptr %"compiler/eval:Machine", ptr %t93, i32 0, i32 67
  %t96 = load i64, ptr %t95, !tbaa !24
  %t101 = call %"compiler/eval:Ptr" @compiler_2feval_2ecompiler_2feval_3aMachine_2eallocate(ptr %v0, ptr %t90, i64 %t89, i64 %t92, i64 %t96)
  store %"compiler/eval:Ptr" %t101, ptr %l62
  br label %bb20
bb20:
  %t102 = load %"compiler/eval:Ptr", ptr %l62
  store %"compiler/eval:Ptr" %t102, ptr %l12
  %t103 = load ptr, ptr %l0, !tbaa !29
  %t104 = load i64, ptr %l1, !tbaa !24
  %t105 = load %"compiler/eval:Ptr", ptr %l12
  %t106 = load i32, ptr %l4, !tbaa !23
  %t107 = load { i64, [4 x i64] }, ptr %l2
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2eput(ptr %v0, ptr %t103, i64 %t104, %"compiler/eval:Ptr" %t105, i32 %t106, { i64, [4 x i64] } %t107)
  br label %bb21
bb21:
  %t113 = load %"compiler/eval:Ptr", ptr %l12
  %t115 = load i32, ptr %l4, !tbaa !23
  %t117 = load ptr, ptr %l0, !tbaa !29
  %t121 = getelementptr %"compiler/eval:Machine", ptr %t117, i32 0, i32 15
  store %"compiler/eval:Ptr" %t113, ptr %t121
  %t122 = load ptr, ptr %l0, !tbaa !29
  %t126 = getelementptr %"compiler/eval:Machine", ptr %t122, i32 0, i32 16
  store i32 %t115, ptr %t126, !tbaa !23
  br label %bb41
bb22:
  %t127 = load i64, ptr %l5, !tbaa !24
  %t128 = load i64, ptr @G_2ecompiler_2feval_2erGlobal, !tbaa !24
  %t131 = icmp eq i64 %t127, %t128
  br i1 %t131, label %bb23, label %bb24
bb23:
  br label %bb25
bb24:
  br label %bb29
bb25:
  store %olang.scope zeroinitializer, ptr %s5
  %t133 = load ptr, ptr %l0, !tbaa !29
  %t135 = getelementptr %"compiler/eval:Machine", ptr %t133, i32 0, i32 39
  %t136 = getelementptr %"compiler/eval:frame", ptr %l3, i32 0, i32 8
  %t137 = load i64, ptr %t136, !tbaa !24
  %t140 = call %"compiler/eval:global" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3aglobal_3e_2eAt_3ccompiler_2feval_3aglobal_3e(ptr %v0, ptr %t135, i64 %t137)
  store %"compiler/eval:global" %t140, ptr %l80
  br label %bb26
bb26:
  %t141 = load %"compiler/eval:global", ptr %l80
  store %"compiler/eval:global" %t141, ptr %l15
  %t142 = load ptr, ptr %l0, !tbaa !29
  store ptr %t142, ptr %l81, !tbaa !29
  %t143 = load i64, ptr %l1, !tbaa !24
  store i64 %t143, ptr %l82, !tbaa !24
  %t144 = getelementptr %"compiler/eval:global", ptr %l15, i32 0, i32 3
  %t145 = load i64, ptr %t144, !tbaa !24
  %t147 = call %"compiler/eval:Ptr" @compiler_2feval_3aPtr_2ector(ptr %s5, i64 %t145, i64 0)
  store %"compiler/eval:Ptr" %t147, ptr %l84
  br label %bb27
bb27:
  %t148 = getelementptr %"compiler/eval:global", ptr %l15, i32 0, i32 0
  %t149 = load i64, ptr %t148, !tbaa !24
  %t151 = trunc i64 %t149 to i32
  %t153 = load { i64, [4 x i64] }, ptr %l2
  %t154 = load ptr, ptr %l81, !tbaa !29
  %t155 = load i64, ptr %l82, !tbaa !24
  %t156 = load %"compiler/eval:Ptr", ptr %l84
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2eput(ptr %v0, ptr %t154, i64 %t155, %"compiler/eval:Ptr" %t156, i32 %t151, { i64, [4 x i64] } %t153)
  br label %bb28
bb28:
  call void @__olang_scope_close(ptr %s5)
  br label %bb41
bb29:
  %t159 = load i64, ptr %l5, !tbaa !24
  %t160 = load i64, ptr @G_2ecompiler_2feval_2erTask, !tbaa !24
  %t163 = icmp eq i64 %t159, %t160
  br i1 %t163, label %bb30, label %bb31
bb30:
  br label %bb34
bb31:
  %t165 = load i64, ptr %l5, !tbaa !24
  %t166 = load i64, ptr @G_2ecompiler_2feval_2erClause, !tbaa !24
  %t169 = icmp eq i64 %t165, %t166
  br i1 %t169, label %bb32, label %bb33
bb32:
  br label %bb34
bb33:
  br label %bb36
bb34:
  %t171 = load ptr, ptr %l0, !tbaa !29
  %t172 = load i64, ptr %l1, !tbaa !24
  %t173 = getelementptr %"compiler/eval:frame", ptr %l3, i32 0, i32 8
  %t174 = load i64, ptr %t173, !tbaa !24
  %t175 = load { i64, [4 x i64] }, ptr %l2
  %t176 = load i32, ptr %l4, !tbaa !23
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2etoTargets(ptr %v0, ptr %t171, i64 %t172, i64 %t174, { i64, [4 x i64] } %t175, i32 %t176)
  br label %bb35
bb35:
  br label %bb41
bb36:
  br i1 true, label %bb37, label %bb38
bb37:
  br label %bb39
bb38:
  br label %bb40
bb39:
  br label %bb41
bb40:
  call void @__olang_check_failed(ptr @olang_loc_17d12c125f58d820_35ade4b878109a14)
  unreachable
bb41:
  br label %ret
ret:
  ret void
}

define dso_local i32 @compiler_2feval_2ecompiler_2feval_3aMachine_2effiKind(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l2 = alloca i32
  %l6 = alloca i32
  %l7 = alloca i32
  %rv = alloca i32
  br label %start
start:
  br label %bb0
bb0:
  %t3 = getelementptr %"compiler/eval:Machine", ptr %a0, i32 0, i32 0
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t8 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %v0, ptr %t4, i32 %a1)
  store i32 %t8, ptr %l6
  br label %bb1
bb1:
  %t9 = load i32, ptr %l6, !tbaa !23
  store i32 %t9, ptr %l2, !tbaa !23
  %t10 = load i32, ptr %l2, !tbaa !23
  %t12 = icmp eq i32 %t10, 3
  br i1 %t12, label %bb2, label %bb3
bb2:
  br label %bb4
bb3:
  br label %bb5
bb4:
  store i32 0, ptr %l7
  br label %bb54
bb5:
  %t15 = load i32, ptr %l2, !tbaa !23
  %t17 = icmp eq i32 %t15, 4
  br i1 %t17, label %bb6, label %bb7
bb6:
  br label %bb8
bb7:
  br label %bb9
bb8:
  store i32 1, ptr %l7
  br label %bb54
bb9:
  %t20 = load i32, ptr %l2, !tbaa !23
  %t22 = icmp eq i32 %t20, 5
  br i1 %t22, label %bb10, label %bb11
bb10:
  br label %bb12
bb11:
  br label %bb13
bb12:
  store i32 2, ptr %l7
  br label %bb54
bb13:
  %t25 = load i32, ptr %l2, !tbaa !23
  %t27 = icmp eq i32 %t25, 7
  br i1 %t27, label %bb14, label %bb15
bb14:
  br label %bb16
bb15:
  br label %bb17
bb16:
  store i32 4, ptr %l7
  br label %bb54
bb17:
  %t30 = load i32, ptr %l2, !tbaa !23
  %t32 = icmp eq i32 %t30, 8
  br i1 %t32, label %bb18, label %bb19
bb18:
  br label %bb20
bb19:
  br label %bb21
bb20:
  store i32 5, ptr %l7
  br label %bb54
bb21:
  %t35 = load i32, ptr %l2, !tbaa !23
  %t37 = icmp eq i32 %t35, 9
  br i1 %t37, label %bb22, label %bb23
bb22:
  br label %bb24
bb23:
  br label %bb25
bb24:
  store i32 6, ptr %l7
  br label %bb54
bb25:
  %t40 = load i32, ptr %l2, !tbaa !23
  %t42 = icmp eq i32 %t40, 10
  br i1 %t42, label %bb26, label %bb27
bb26:
  br label %bb28
bb27:
  br label %bb29
bb28:
  store i32 7, ptr %l7
  br label %bb54
bb29:
  %t45 = load i32, ptr %l2, !tbaa !23
  %t47 = icmp eq i32 %t45, 11
  br i1 %t47, label %bb30, label %bb31
bb30:
  br label %bb32
bb31:
  br label %bb33
bb32:
  store i32 8, ptr %l7
  br label %bb54
bb33:
  %t50 = load i32, ptr %l2, !tbaa !23
  %t52 = icmp eq i32 %t50, 12
  br i1 %t52, label %bb34, label %bb35
bb34:
  br label %bb36
bb35:
  br label %bb37
bb36:
  store i32 9, ptr %l7
  br label %bb54
bb37:
  %t55 = load i32, ptr %l2, !tbaa !23
  %t57 = icmp eq i32 %t55, 13
  br i1 %t57, label %bb38, label %bb39
bb38:
  br label %bb40
bb39:
  br label %bb41
bb40:
  store i32 10, ptr %l7
  br label %bb54
bb41:
  %t60 = load i32, ptr %l2, !tbaa !23
  %t62 = icmp eq i32 %t60, 14
  br i1 %t62, label %bb42, label %bb43
bb42:
  br label %bb44
bb43:
  br label %bb45
bb44:
  store i32 11, ptr %l7
  br label %bb54
bb45:
  %t65 = load i32, ptr %l2, !tbaa !23
  %t66 = load i32, ptr @G_2ecompiler_2ftypes_2eBoolT, !tbaa !23
  %t69 = icmp eq i32 %t65, %t66
  br i1 %t69, label %bb46, label %bb47
bb46:
  br label %bb48
bb47:
  br label %bb49
bb48:
  store i32 4, ptr %l7
  br label %bb54
bb49:
  br i1 true, label %bb50, label %bb51
bb50:
  br label %bb52
bb51:
  br label %bb53
bb52:
  store i32 3, ptr %l7
  br label %bb54
bb53:
  call void @__olang_check_failed(ptr @olang_loc_b477747d616f01f0_6d4a3c12dca1cf4c)
  unreachable
bb54:
  %t73 = load i32, ptr %l7, !range !{i32 0, i32 12}
  store i32 %t73, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
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

define dso_local i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2eflatIndex(ptr %v0, ptr %v1, ptr %a0, i64 %a1, { i64, ptr } %a2, i64 %a3) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca { i64, ptr }
  %l3 = alloca i64
  %l4 = alloca i32
  %l5 = alloca { i64, ptr }
  %l11 = alloca ptr
  %l12 = alloca ptr
  %l15 = alloca { i64, ptr }
  %l21 = alloca %"compiler/eval:Ptr"
  %l24 = alloca i64
  %l25 = alloca i64
  %l27 = alloca i64
  %rv = alloca i64
  store ptr %a0, ptr %l0
  store { i64, ptr } %a2, ptr %l2
  store i64 %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t1, ptr %l5, !tbaa !27
  %t2 = load i64, ptr %l3, !tbaa !24
  %t4 = add i64 %t2, 8
  %t6 = getelementptr { i64, ptr }, ptr %l5, i32 0, i32 1
  %t7 = load ptr, ptr %t6, !tbaa !27
  %t8 = getelementptr i64, ptr %t7, i64 %t4
  %t9 = load i64, ptr %t8, !tbaa !34
  %t11 = trunc i64 %t9 to i32
  store i32 %t11, ptr %l4, !tbaa !23
  %t14 = load ptr, ptr %l0, !tbaa !29
  store ptr %t14, ptr %l11, !tbaa !29
  %t15 = load ptr, ptr %l0, !tbaa !29
  store ptr %t15, ptr %l12, !tbaa !29
  %t16 = load ptr, ptr %l0, !tbaa !29
  %t18 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t18, ptr %l15, !tbaa !27
  %t19 = load i64, ptr %l3, !tbaa !24
  %t21 = add i64 %t19, 5
  %t23 = getelementptr { i64, ptr }, ptr %l15, i32 0, i32 1
  %t24 = load ptr, ptr %t23, !tbaa !27
  %t25 = getelementptr i64, ptr %t24, i64 %t21
  %t26 = load i64, ptr %t25, !tbaa !34
  %t28 = trunc i64 %t26 to i32
  %t33 = call %"compiler/eval:Ptr" @compiler_2feval_2ecompiler_2feval_3aMachine_2elocalPtr(ptr %v0, ptr %t16, i64 %a1, i32 %t28)
  store %"compiler/eval:Ptr" %t33, ptr %l21
  br label %bb1
bb1:
  %t34 = load ptr, ptr %l0, !tbaa !29
  %t35 = load i32, ptr %l4, !tbaa !23
  %t38 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2ewidth(ptr %v0, ptr %t34, i32 %t35)
  store i64 %t38, ptr %l24
  br label %bb2
bb2:
  %t39 = load ptr, ptr %l12, !tbaa !29
  %t40 = load %"compiler/eval:Ptr", ptr %l21
  %t41 = load i64, ptr %l24, !tbaa !24
  %t42 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2erd(ptr %v0, ptr %t39, %"compiler/eval:Ptr" %t40, i64 %t41)
  store i64 %t42, ptr %l25
  br label %bb3
bb3:
  %t43 = load i32, ptr %l4, !tbaa !23
  %t44 = load ptr, ptr %l11, !tbaa !29
  %t45 = load i64, ptr %l25, !tbaa !24
  %t47 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2eintValue(ptr %v0, ptr %t44, i64 %t45, i32 %t43)
  store i64 %t47, ptr %l27
  br label %bb4
bb4:
  %t48 = load i64, ptr %l27, !tbaa !24
  store i64 %t48, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2efloatOp(ptr %v0, ptr %a0, i32 %a1, i64 %a2, i64 %a3, i32 %a4) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca i64
  %l3 = alloca i64
  %l4 = alloca i32
  %l5 = alloca i32
  %l6 = alloca double
  %l7 = alloca double
  %l8 = alloca float
  %l9 = alloca float
  %l10 = alloca float
  %l14 = alloca i32
  %l23 = alloca i64
  %l56 = alloca i64
  %l60 = alloca double
  %l65 = alloca double
  %l67 = alloca float
  %l102 = alloca i64
  %l112 = alloca i64
  %rv = alloca i64
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  store i64 %a2, ptr %l2
  store i64 %a3, ptr %l3
  store i32 %a4, ptr %l4
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/eval:Machine", ptr %t1, i32 0, i32 0
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t5 = load i32, ptr %l4, !tbaa !23
  %t8 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %v0, ptr %t4, i32 %t5)
  store i32 %t8, ptr %l14
  br label %bb1
bb1:
  %t9 = load i32, ptr %l14, !tbaa !23
  store i32 %t9, ptr %l5, !tbaa !23
  %t10 = load i32, ptr %l5, !tbaa !23
  %t12 = icmp eq i32 %t10, 14
  br i1 %t12, label %bb2, label %bb3
bb2:
  %t14 = load i64, ptr %l2, !tbaa !24
  %t17 = bitcast i64 %t14 to double
  store double %t17, ptr %l6, !tbaa !26
  %t19 = load i64, ptr %l3, !tbaa !24
  %t22 = bitcast i64 %t19 to double
  store double %t22, ptr %l7, !tbaa !26
  %t24 = load i32, ptr %l1, !range !{i32 0, i32 52}
  %t26 = trunc i64 3 to i32
  %t27 = icmp eq i32 %t24, %t26
  br i1 %t27, label %bb4, label %bb5
bb3:
  br label %bb26
bb4:
  br label %bb6
bb5:
  br label %bb7
bb6:
  %t29 = load double, ptr %l6, !tbaa !26
  %t30 = load double, ptr %l7, !tbaa !26
  %t33 = fadd double %t29, %t30
  %t35 = bitcast double %t33 to i64
  store i64 %t35, ptr %l23, !tbaa !24
  br label %bb25
bb7:
  %t38 = load i32, ptr %l1, !range !{i32 0, i32 52}
  %t40 = trunc i64 4 to i32
  %t41 = icmp eq i32 %t38, %t40
  br i1 %t41, label %bb8, label %bb9
bb8:
  br label %bb10
bb9:
  br label %bb11
bb10:
  %t43 = load double, ptr %l6, !tbaa !26
  %t44 = load double, ptr %l7, !tbaa !26
  %t47 = fsub double %t43, %t44
  %t49 = bitcast double %t47 to i64
  store i64 %t49, ptr %l23, !tbaa !24
  br label %bb25
bb11:
  %t52 = load i32, ptr %l1, !range !{i32 0, i32 52}
  %t54 = trunc i64 5 to i32
  %t55 = icmp eq i32 %t52, %t54
  br i1 %t55, label %bb12, label %bb13
bb12:
  br label %bb14
bb13:
  br label %bb15
bb14:
  %t57 = load double, ptr %l6, !tbaa !26
  %t58 = load double, ptr %l7, !tbaa !26
  %t61 = fmul double %t57, %t58
  %t63 = bitcast double %t61 to i64
  store i64 %t63, ptr %l23, !tbaa !24
  br label %bb25
bb15:
  %t66 = load i32, ptr %l1, !range !{i32 0, i32 52}
  %t68 = trunc i64 6 to i32
  %t69 = icmp eq i32 %t66, %t68
  br i1 %t69, label %bb16, label %bb17
bb16:
  br label %bb18
bb17:
  br label %bb19
bb18:
  %t71 = load double, ptr %l6, !tbaa !26
  %t72 = load double, ptr %l7, !tbaa !26
  %t75 = fdiv double %t71, %t72
  %t77 = bitcast double %t75 to i64
  store i64 %t77, ptr %l23, !tbaa !24
  br label %bb25
bb19:
  br i1 true, label %bb20, label %bb21
bb20:
  br label %bb22
bb21:
  br label %bb24
bb22:
  %t80 = load ptr, ptr %l0, !tbaa !29
  %t81 = load i32, ptr %l1, !range !{i32 0, i32 52}
  %t82 = load double, ptr %l6, !tbaa !26
  %t83 = load double, ptr %l7, !tbaa !26
  %t88 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2efloatCompare(ptr %v0, ptr %t80, i32 %t81, double %t82, double %t83)
  store i64 %t88, ptr %l56
  br label %bb23
bb23:
  %t89 = load i64, ptr %l56, !tbaa !24
  store i64 %t89, ptr %l23, !tbaa !24
  br label %bb25
bb24:
  call void @__olang_check_failed(ptr @olang_loc_d784dcd9713515f8_b9d041eddaa630c)
  unreachable
bb25:
  %t90 = load i64, ptr %l23, !tbaa !24
  store i64 %t90, ptr %rv
  br label %ret
bb26:
  %t91 = load ptr, ptr %l0, !tbaa !29
  %t92 = load i64, ptr %l2, !tbaa !24
  %t93 = load i32, ptr %l4, !tbaa !23
  %t97 = call double @compiler_2feval_2ecompiler_2feval_3aMachine_2etoF64(ptr %v0, ptr %t91, i64 %t92, i32 %t93)
  store double %t97, ptr %l60
  br label %bb27
bb27:
  %t98 = load double, ptr %l60, !tbaa !26
  %t99 = fptrunc double %t98 to float
  store float %t99, ptr %l8, !tbaa !25
  %t101 = load ptr, ptr %l0, !tbaa !29
  %t102 = load i64, ptr %l3, !tbaa !24
  %t103 = load i32, ptr %l4, !tbaa !23
  %t107 = call double @compiler_2feval_2ecompiler_2feval_3aMachine_2etoF64(ptr %v0, ptr %t101, i64 %t102, i32 %t103)
  store double %t107, ptr %l65
  br label %bb28
bb28:
  %t108 = load double, ptr %l65, !tbaa !26
  %t109 = fptrunc double %t108 to float
  store float %t109, ptr %l9, !tbaa !25
  %t111 = load i32, ptr %l1, !range !{i32 0, i32 52}
  %t113 = trunc i64 3 to i32
  %t114 = icmp eq i32 %t111, %t113
  br i1 %t114, label %bb29, label %bb30
bb29:
  br label %bb31
bb30:
  br label %bb32
bb31:
  %t116 = load float, ptr %l8, !tbaa !25
  %t117 = load float, ptr %l9, !tbaa !25
  %t120 = fadd float %t116, %t117
  store float %t120, ptr %l67, !tbaa !25
  br label %bb49
bb32:
  %t122 = load i32, ptr %l1, !range !{i32 0, i32 52}
  %t124 = trunc i64 4 to i32
  %t125 = icmp eq i32 %t122, %t124
  br i1 %t125, label %bb33, label %bb34
bb33:
  br label %bb35
bb34:
  br label %bb36
bb35:
  %t127 = load float, ptr %l8, !tbaa !25
  %t128 = load float, ptr %l9, !tbaa !25
  %t131 = fsub float %t127, %t128
  store float %t131, ptr %l67, !tbaa !25
  br label %bb49
bb36:
  %t133 = load i32, ptr %l1, !range !{i32 0, i32 52}
  %t135 = trunc i64 5 to i32
  %t136 = icmp eq i32 %t133, %t135
  br i1 %t136, label %bb37, label %bb38
bb37:
  br label %bb39
bb38:
  br label %bb40
bb39:
  %t138 = load float, ptr %l8, !tbaa !25
  %t139 = load float, ptr %l9, !tbaa !25
  %t142 = fmul float %t138, %t139
  store float %t142, ptr %l67, !tbaa !25
  br label %bb49
bb40:
  %t144 = load i32, ptr %l1, !range !{i32 0, i32 52}
  %t146 = trunc i64 6 to i32
  %t147 = icmp eq i32 %t144, %t146
  br i1 %t147, label %bb41, label %bb42
bb41:
  br label %bb43
bb42:
  br label %bb44
bb43:
  %t149 = load float, ptr %l8, !tbaa !25
  %t150 = load float, ptr %l9, !tbaa !25
  %t153 = fdiv float %t149, %t150
  store float %t153, ptr %l67, !tbaa !25
  br label %bb49
bb44:
  br i1 true, label %bb45, label %bb46
bb45:
  br label %bb47
bb46:
  br label %bb48
bb47:
  store float 0x0000000000000000, ptr %l67, !tbaa !25
  br label %bb49
bb48:
  call void @__olang_check_failed(ptr @olang_loc_d2031ca5bdc3c0c9_c1504039d0cd1a3d)
  unreachable
bb49:
  %t155 = load float, ptr %l67, !tbaa !25
  store float %t155, ptr %l10, !tbaa !25
  %t156 = load i32, ptr %l1, !range !{i32 0, i32 52}
  %t158 = trunc i64 3 to i32
  %t159 = icmp eq i32 %t156, %t158
  br i1 %t159, label %bb50, label %bb51
bb50:
  br label %bb58
bb51:
  %t161 = load i32, ptr %l1, !range !{i32 0, i32 52}
  %t163 = trunc i64 4 to i32
  %t164 = icmp eq i32 %t161, %t163
  br i1 %t164, label %bb52, label %bb53
bb52:
  br label %bb58
bb53:
  %t166 = load i32, ptr %l1, !range !{i32 0, i32 52}
  %t168 = trunc i64 5 to i32
  %t169 = icmp eq i32 %t166, %t168
  br i1 %t169, label %bb54, label %bb55
bb54:
  br label %bb58
bb55:
  %t171 = load i32, ptr %l1, !range !{i32 0, i32 52}
  %t173 = trunc i64 6 to i32
  %t174 = icmp eq i32 %t171, %t173
  br i1 %t174, label %bb56, label %bb57
bb56:
  br label %bb58
bb57:
  br label %bb59
bb58:
  br label %bb65
bb59:
  br i1 true, label %bb60, label %bb61
bb60:
  br label %bb62
bb61:
  br label %bb64
bb62:
  %t176 = load ptr, ptr %l0, !tbaa !29
  %t177 = load i32, ptr %l1, !range !{i32 0, i32 52}
  %t178 = load float, ptr %l8, !tbaa !25
  %t180 = fpext float %t178 to double
  %t181 = load float, ptr %l9, !tbaa !25
  %t183 = fpext float %t181 to double
  %t188 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2efloatCompare(ptr %v0, ptr %t176, i32 %t177, double %t180, double %t183)
  store i64 %t188, ptr %l102
  br label %bb63
bb63:
  %t189 = load i64, ptr %l102, !tbaa !24
  store i64 %t189, ptr %rv
  br label %ret
bb64:
  call void @__olang_check_failed(ptr @olang_loc_82c834935ab97012_8fe8672257be0a6)
  unreachable
bb65:
  %t190 = load i32, ptr %l5, !tbaa !23
  %t192 = icmp eq i32 %t190, 13
  br i1 %t192, label %bb66, label %bb67
bb66:
  %t194 = load float, ptr %l10, !tbaa !25
  %t196 = bitcast float %t194 to i32
  %t198 = zext i32 %t196 to i64
  store i64 %t198, ptr %rv
  br label %ret
bb67:
  br label %bb68
bb68:
  %t200 = load ptr, ptr %l0, !tbaa !29
  %t201 = load float, ptr %l10, !tbaa !25
  %t203 = fpext float %t201 to double
  %t204 = load i32, ptr %l4, !tbaa !23
  %t208 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2efromF64(ptr %v0, ptr %t200, double %t203, i32 %t204)
  store i64 %t208, ptr %l112
  br label %bb69
bb69:
  %t209 = load i64, ptr %l112, !tbaa !24
  store i64 %t209, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local i1 @compiler_2feval_2ecompiler_2feval_3aMachine_2efreshWork(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/eval:genRec"
  %l2 = alloca ptr
  %l3 = alloca ptr
  %l4 = alloca i64
  %l6 = alloca i32
  %l10 = alloca ptr
  %l13 = alloca i64
  %l15 = alloca i64
  %l20 = alloca i32
  %l25 = alloca %"compiler/mir:Local"
  %l30 = alloca i1
  %l32 = alloca i1
  %l36 = alloca i1
  %rv = alloca i1
  store ptr %a0, ptr %l0
  call void @llvm.memmove.p0.p0.i64(ptr %l1, ptr %a1, i64 280, i1 false)
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/eval:Machine", ptr %t1, i32 0, i32 22
  %t4 = getelementptr %"compiler/eval:genRec", ptr %l1, i32 0, i32 1
  %t5 = load i64, ptr %t4, !tbaa !24
  %t8 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aFn_26_3e_2eAt_3ccompiler_2fmir_3aFn_26_3e(ptr %v0, ptr %v0, ptr %t3, i64 %t5)
  store ptr %t8, ptr %l10
  br label %bb1
bb1:
  %t9 = load ptr, ptr %l10, !tbaa !29
  store ptr %t9, ptr %l2, !tbaa !29
  %t10 = load ptr, ptr %l2, !tbaa !29
  %t12 = getelementptr %"compiler/mir:Fn", ptr %t10, i32 0, i32 5
  store ptr %t12, ptr %l3, !tbaa !29
  store i64 0, ptr %l4, !tbaa !24
  br label %bb2
bb2:
  %t14 = load i64, ptr %l4, !tbaa !24
  store i64 %t14, ptr %l13, !tbaa !24
  %t15 = load ptr, ptr %l3, !tbaa !29
  %t17 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aLocalId_3e_2eLen_3ccompiler_2fmir_3aLocalId_3e(ptr %v0, ptr %t15)
  store i64 %t17, ptr %l15
  br label %bb3
bb3:
  %t18 = load i64, ptr %l13, !tbaa !24
  %t19 = load i64, ptr %l15, !tbaa !24
  %t20 = icmp slt i64 %t18, %t19
  %t22 = xor i1 %t20, true
  br i1 %t22, label %bb4, label %bb5
bb4:
  br label %bb18
bb5:
  br label %bb6
bb6:
  %t24 = load ptr, ptr %l3, !tbaa !29
  %t25 = load i64, ptr %l4, !tbaa !24
  %t28 = call i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aLocalId_3e_2eAt_3ccompiler_2fmir_3aLocalId_3e(ptr %v0, ptr %t24, i64 %t25)
  store i32 %t28, ptr %l20
  br label %bb7
bb7:
  %t29 = load i32, ptr %l20, !tbaa !23
  %t30 = load ptr, ptr %l2, !tbaa !29
  %t32 = getelementptr %"compiler/mir:Fn", ptr %t30, i32 0, i32 7
  %t35 = sext i32 %t29 to i64
  %t38 = call %"compiler/mir:Local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aLocal_3e_2eAt_3ccompiler_2fmir_3aLocal_3e(ptr %v0, ptr %t32, i64 %t35)
  store %"compiler/mir:Local" %t38, ptr %l25
  br label %bb8
bb8:
  %t39 = getelementptr %"compiler/mir:Local", ptr %l25, i32 0, i32 2
  %t40 = load i32, ptr %t39, !tbaa !23
  store i32 %t40, ptr %l6, !tbaa !23
  %t42 = load ptr, ptr %l0, !tbaa !29
  %t44 = getelementptr %"compiler/eval:Machine", ptr %t42, i32 0, i32 0
  %t45 = load ptr, ptr %t44, !tbaa !29
  %t46 = load i32, ptr %l6, !tbaa !23
  %t49 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsRef(ptr %v0, ptr %t45, i32 %t46)
  store i1 %t49, ptr %l30
  br label %bb9
bb9:
  %t50 = load i1, ptr %l30, !tbaa !21
  %t51 = xor i1 %t50, true
  br i1 %t51, label %bb10, label %bb11
bb10:
  %t53 = load ptr, ptr %l0, !tbaa !29
  %t55 = getelementptr %"compiler/eval:Machine", ptr %t53, i32 0, i32 0
  %t56 = load ptr, ptr %t55, !tbaa !29
  %t57 = load i32, ptr %l6, !tbaa !23
  %t60 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eNeedsDrop(ptr %v0, ptr %t56, i32 %t57)
  store i1 %t60, ptr %l36
  br label %bb12
bb11:
  store i1 false, ptr %l32, !tbaa !21
  br label %bb13
bb12:
  %t61 = load i1, ptr %l36, !tbaa !21
  store i1 %t61, ptr %l32, !tbaa !21
  br label %bb13
bb13:
  %t62 = load i1, ptr %l32, !tbaa !21
  br i1 %t62, label %bb14, label %bb15
bb14:
  store i1 true, ptr %rv
  br label %ret
bb15:
  br label %bb16
bb16:
  br label %bb17
bb17:
  %t64 = load i64, ptr %l4, !tbaa !24
  %t66 = add i64 %t64, 1
  store i64 %t66, ptr %l4, !tbaa !24
  br label %bb2
bb18:
  store i1 false, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local void @compiler_2feval_2ecompiler_2feval_3aMachine_2egrow(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca i64
  %l3 = alloca { i64, ptr }
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca { i64, ptr }
  %l11 = alloca i64
  %l12 = alloca i64
  %l13 = alloca i64
  %l14 = alloca i64
  %l15 = alloca i64
  %l16 = alloca i64
  %l35 = alloca ptr
  %l36 = alloca i64
  %l39 = alloca i64
  %l43 = alloca { i64, ptr }
  %l52 = alloca i64
  %l55 = alloca i64
  %l74 = alloca { i64, ptr }
  %l76 = alloca { i64, ptr }
  %l83 = alloca ptr
  %l84 = alloca i64
  %l87 = alloca i64
  %l91 = alloca { i64, ptr }
  %l100 = alloca i64
  %l103 = alloca i64
  %l122 = alloca { i64, ptr }
  %l124 = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load i64, ptr %l1, !tbaa !24
  %t2 = load ptr, ptr %l0, !tbaa !29
  %t4 = getelementptr %"compiler/eval:Machine", ptr %t2, i32 0, i32 42
  %t5 = load { i64, ptr }, ptr %t4, !tbaa !27
  %t7 = extractvalue { i64, ptr } %t5, 0
  %t9 = mul i64 8, %t7
  %t12 = icmp sle i64 %t1, %t9
  br i1 %t12, label %bb1, label %bb2
bb1:
  br label %ret
bb2:
  br label %bb3
bb3:
  %t14 = load ptr, ptr %l0, !tbaa !29
  %t16 = getelementptr %"compiler/eval:Machine", ptr %t14, i32 0, i32 42
  %t17 = load { i64, ptr }, ptr %t16, !tbaa !27
  %t19 = extractvalue { i64, ptr } %t17, 0
  %t21 = mul i64 8, %t19
  store i64 %t21, ptr %l2, !tbaa !24
  br label %bb4
bb4:
  %t23 = load i64, ptr %l2, !tbaa !24
  %t24 = load i64, ptr %l1, !tbaa !24
  %t27 = icmp slt i64 %t23, %t24
  %t29 = xor i1 %t27, true
  br i1 %t29, label %bb5, label %bb6
bb5:
  br label %bb9
bb6:
  br label %bb7
bb7:
  %t31 = load i64, ptr %l2, !tbaa !24
  %t33 = mul i64 %t31, 2
  store i64 %t33, ptr %l2, !tbaa !24
  br label %bb8
bb8:
  br label %bb4
bb9:
  %t35 = load ptr, ptr %l0, !tbaa !29
  %t37 = getelementptr %"compiler/eval:Machine", ptr %t35, i32 0, i32 42
  %t38 = load { i64, ptr }, ptr %t37, !tbaa !27
  store { i64, ptr } %t38, ptr %l3, !tbaa !27
  %t40 = load ptr, ptr %l0, !tbaa !29
  store ptr %t40, ptr %l35, !tbaa !29
  %t41 = ptrtoint ptr %v0 to i64
  store i64 %t41, ptr %l36, !tbaa !24
  %t42 = load i1, ptr @olang_2esole_2ecompiler_2feval_3aMachine_2e42
  br i1 %t42, label %bb10, label %bb11
bb10:
  %t44 = call ptr @__olang_region_make(ptr %v0)
  %t45 = ptrtoint ptr %t44 to i64
  store i64 %t45, ptr %l36, !tbaa !24
  br label %bb11
bb11:
  %t46 = load i64, ptr %l2, !tbaa !24
  %t48 = sdiv i64 %t46, 8
  store i64 %t48, ptr %l39, !tbaa !24
  %t49 = load i64, ptr %l39, !tbaa !24
  %t50 = icmp sge i64 %t49, 0
  br i1 %t50, label %bb12, label %bb13
bb12:
  %t52 = load i64, ptr %l39, !tbaa !24
  %t53 = icmp sle i64 %t52, 1152921504606846975
  br i1 %t53, label %bb14, label %bb15
bb13:
  call void @__olang_check_failed(ptr @olang_loc_8ee299e344af3927_1a30263e89afea2b)
  unreachable
bb14:
  %t55 = load i64, ptr %l39, !tbaa !24
  %t56 = mul i64 %t55, 8
  %t57 = load i64, ptr %l36
  %t58 = inttoptr i64 %t57 to ptr
  %t59 = call ptr @__olang_scope_alloc_zeroed(ptr %t58, i64 %t56)
  %t60 = insertvalue { i64, ptr } undef, i64 %t55, 0
  %t61 = insertvalue { i64, ptr } %t60, ptr %t59, 1
  %t62 = load ptr, ptr %l35, !tbaa !29
  %t63 = getelementptr %"compiler/eval:Machine", ptr %t62, i32 0, i32 42
  %t64 = load { i64, ptr }, ptr %t63, !tbaa !27
  store { i64, ptr } %t64, ptr %l43, !tbaa !27
  %t66 = load ptr, ptr %l35, !tbaa !29
  %t67 = getelementptr %"compiler/eval:Machine", ptr %t66, i32 0, i32 42
  store { i64, ptr } %t61, ptr %t67, !tbaa !27
  %t68 = load i1, ptr @olang_2esole_2ecompiler_2feval_3aMachine_2e42
  br i1 %t68, label %bb16, label %bb17
bb15:
  call void @__olang_check_failed(ptr @olang_loc_8ee299e344af3927_1a30263e89afea2b)
  unreachable
bb16:
  %t70 = load { i64, ptr }, ptr %l43
  %t71 = extractvalue { i64, ptr } %t70, 1
  call void @__olang_region_release(ptr %t71)
  store { i64, ptr } zeroinitializer, ptr %l43
  br label %bb17
bb17:
  store i64 0, ptr %l4, !tbaa !24
  %t72 = load ptr, ptr %l0, !tbaa !29
  %t74 = getelementptr %"compiler/eval:Machine", ptr %t72, i32 0, i32 44
  %t75 = load i64, ptr %t74, !tbaa !24
  %t77 = add i64 %t75, 7
  %t79 = sdiv i64 %t77, 8
  store i64 %t79, ptr %l5, !tbaa !24
  store i64 1, ptr %l6, !tbaa !24
  %t81 = load i64, ptr %l5, !tbaa !24
  %t82 = load i64, ptr %l4, !tbaa !24
  %t85 = icmp sgt i64 %t81, %t82
  br i1 %t85, label %bb18, label %bb19
bb18:
  %t87 = load i64, ptr %l6, !tbaa !24
  %t89 = icmp sgt i64 %t87, 0
  br i1 %t89, label %bb20, label %bb21
bb19:
  store i64 0, ptr %l52, !tbaa !24
  br label %bb23
bb20:
  %t91 = load i64, ptr %l5, !tbaa !24
  %t92 = load i64, ptr %l4, !tbaa !24
  %t95 = sub i64 %t91, %t92
  %t96 = load i64, ptr %l6, !tbaa !24
  %t99 = add i64 %t95, %t96
  %t101 = sub i64 %t99, 1
  %t102 = load i64, ptr %l6, !tbaa !24
  %t105 = sdiv i64 %t101, %t102
  store i64 %t105, ptr %l55, !tbaa !24
  br label %bb22
bb21:
  store i64 0, ptr %l55, !tbaa !24
  br label %bb22
bb22:
  %t107 = load i64, ptr %l55, !tbaa !24
  store i64 %t107, ptr %l52, !tbaa !24
  br label %bb23
bb23:
  %t108 = load i64, ptr %l52, !tbaa !24
  store i64 %t108, ptr %l7, !tbaa !24
  store i64 0, ptr %l8, !tbaa !24
  br label %bb24
bb24:
  %t109 = load i64, ptr %l8, !tbaa !24
  %t110 = load i64, ptr %l7, !tbaa !24
  %t113 = icmp slt i64 %t109, %t110
  %t115 = xor i1 %t113, true
  br i1 %t115, label %bb25, label %bb26
bb25:
  br label %bb29
bb26:
  br label %bb27
bb27:
  %t117 = load i64, ptr %l4, !tbaa !24
  %t118 = load i64, ptr %l8, !tbaa !24
  %t119 = load i64, ptr %l6, !tbaa !24
  %t122 = mul i64 %t118, %t119
  %t125 = add i64 %t117, %t122
  store i64 %t125, ptr %l9, !tbaa !24
  %t127 = load ptr, ptr %l0, !tbaa !29
  %t129 = getelementptr %"compiler/eval:Machine", ptr %t127, i32 0, i32 42
  %t130 = load { i64, ptr }, ptr %t129, !tbaa !27
  store { i64, ptr } %t130, ptr %l74, !tbaa !27
  %t131 = load i64, ptr %l9, !tbaa !24
  %t132 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t132, ptr %l76, !tbaa !27
  %t133 = load i64, ptr %l9, !tbaa !24
  %t135 = getelementptr { i64, ptr }, ptr %l76, i32 0, i32 1
  %t136 = load ptr, ptr %t135, !tbaa !27
  %t137 = getelementptr i64, ptr %t136, i64 %t133
  %t138 = load i64, ptr %t137, !tbaa !34
  %t141 = getelementptr { i64, ptr }, ptr %l74, i32 0, i32 1
  %t142 = load ptr, ptr %t141, !tbaa !27
  %t143 = getelementptr i64, ptr %t142, i64 %t131
  store i64 %t138, ptr %t143, !tbaa !34
  br label %bb28
bb28:
  %t144 = load i64, ptr %l8, !tbaa !24
  %t146 = add i64 %t144, 1
  store i64 %t146, ptr %l8, !tbaa !24
  br label %bb24
bb29:
  %t148 = load ptr, ptr %l0, !tbaa !29
  %t150 = getelementptr %"compiler/eval:Machine", ptr %t148, i32 0, i32 43
  %t151 = load { i64, ptr }, ptr %t150, !tbaa !27
  store { i64, ptr } %t151, ptr %l10, !tbaa !27
  %t153 = load ptr, ptr %l0, !tbaa !29
  store ptr %t153, ptr %l83, !tbaa !29
  %t154 = ptrtoint ptr %v0 to i64
  store i64 %t154, ptr %l84, !tbaa !24
  %t155 = load i1, ptr @olang_2esole_2ecompiler_2feval_3aMachine_2e43
  br i1 %t155, label %bb30, label %bb31
bb30:
  %t157 = call ptr @__olang_region_make(ptr %v0)
  %t158 = ptrtoint ptr %t157 to i64
  store i64 %t158, ptr %l84, !tbaa !24
  br label %bb31
bb31:
  %t159 = load i64, ptr %l2, !tbaa !24
  %t161 = sdiv i64 %t159, 8
  store i64 %t161, ptr %l87, !tbaa !24
  %t162 = load i64, ptr %l87, !tbaa !24
  %t163 = icmp sge i64 %t162, 0
  br i1 %t163, label %bb32, label %bb33
bb32:
  %t165 = load i64, ptr %l87, !tbaa !24
  %t166 = icmp sle i64 %t165, 1152921504606846975
  br i1 %t166, label %bb34, label %bb35
bb33:
  call void @__olang_check_failed(ptr @olang_loc_9d9a614f49301d32_780986365d0a3a16)
  unreachable
bb34:
  %t168 = load i64, ptr %l87, !tbaa !24
  %t169 = mul i64 %t168, 8
  %t170 = load i64, ptr %l84
  %t171 = inttoptr i64 %t170 to ptr
  %t172 = call ptr @__olang_scope_alloc_zeroed(ptr %t171, i64 %t169)
  %t173 = insertvalue { i64, ptr } undef, i64 %t168, 0
  %t174 = insertvalue { i64, ptr } %t173, ptr %t172, 1
  %t175 = load ptr, ptr %l83, !tbaa !29
  %t176 = getelementptr %"compiler/eval:Machine", ptr %t175, i32 0, i32 43
  %t177 = load { i64, ptr }, ptr %t176, !tbaa !27
  store { i64, ptr } %t177, ptr %l91, !tbaa !27
  %t179 = load ptr, ptr %l83, !tbaa !29
  %t180 = getelementptr %"compiler/eval:Machine", ptr %t179, i32 0, i32 43
  store { i64, ptr } %t174, ptr %t180, !tbaa !27
  %t181 = load i1, ptr @olang_2esole_2ecompiler_2feval_3aMachine_2e43
  br i1 %t181, label %bb36, label %bb37
bb35:
  call void @__olang_check_failed(ptr @olang_loc_9d9a614f49301d32_780986365d0a3a16)
  unreachable
bb36:
  %t183 = load { i64, ptr }, ptr %l91
  %t184 = extractvalue { i64, ptr } %t183, 1
  call void @__olang_region_release(ptr %t184)
  store { i64, ptr } zeroinitializer, ptr %l91
  br label %bb37
bb37:
  store i64 0, ptr %l11, !tbaa !24
  %t185 = load ptr, ptr %l0, !tbaa !29
  %t187 = getelementptr %"compiler/eval:Machine", ptr %t185, i32 0, i32 44
  %t188 = load i64, ptr %t187, !tbaa !24
  %t190 = add i64 %t188, 7
  %t192 = sdiv i64 %t190, 8
  store i64 %t192, ptr %l12, !tbaa !24
  store i64 1, ptr %l13, !tbaa !24
  %t194 = load i64, ptr %l12, !tbaa !24
  %t195 = load i64, ptr %l11, !tbaa !24
  %t198 = icmp sgt i64 %t194, %t195
  br i1 %t198, label %bb38, label %bb39
bb38:
  %t200 = load i64, ptr %l13, !tbaa !24
  %t202 = icmp sgt i64 %t200, 0
  br i1 %t202, label %bb40, label %bb41
bb39:
  store i64 0, ptr %l100, !tbaa !24
  br label %bb43
bb40:
  %t204 = load i64, ptr %l12, !tbaa !24
  %t205 = load i64, ptr %l11, !tbaa !24
  %t208 = sub i64 %t204, %t205
  %t209 = load i64, ptr %l13, !tbaa !24
  %t212 = add i64 %t208, %t209
  %t214 = sub i64 %t212, 1
  %t215 = load i64, ptr %l13, !tbaa !24
  %t218 = sdiv i64 %t214, %t215
  store i64 %t218, ptr %l103, !tbaa !24
  br label %bb42
bb41:
  store i64 0, ptr %l103, !tbaa !24
  br label %bb42
bb42:
  %t220 = load i64, ptr %l103, !tbaa !24
  store i64 %t220, ptr %l100, !tbaa !24
  br label %bb43
bb43:
  %t221 = load i64, ptr %l100, !tbaa !24
  store i64 %t221, ptr %l14, !tbaa !24
  store i64 0, ptr %l15, !tbaa !24
  br label %bb44
bb44:
  %t222 = load i64, ptr %l15, !tbaa !24
  %t223 = load i64, ptr %l14, !tbaa !24
  %t226 = icmp slt i64 %t222, %t223
  %t228 = xor i1 %t226, true
  br i1 %t228, label %bb45, label %bb46
bb45:
  br label %bb49
bb46:
  br label %bb47
bb47:
  %t230 = load i64, ptr %l11, !tbaa !24
  %t231 = load i64, ptr %l15, !tbaa !24
  %t232 = load i64, ptr %l13, !tbaa !24
  %t235 = mul i64 %t231, %t232
  %t238 = add i64 %t230, %t235
  store i64 %t238, ptr %l16, !tbaa !24
  %t240 = load ptr, ptr %l0, !tbaa !29
  %t242 = getelementptr %"compiler/eval:Machine", ptr %t240, i32 0, i32 43
  %t243 = load { i64, ptr }, ptr %t242, !tbaa !27
  store { i64, ptr } %t243, ptr %l122, !tbaa !27
  %t244 = load i64, ptr %l16, !tbaa !24
  %t245 = load { i64, ptr }, ptr %l10, !tbaa !27
  store { i64, ptr } %t245, ptr %l124, !tbaa !27
  %t246 = load i64, ptr %l16, !tbaa !24
  %t248 = getelementptr { i64, ptr }, ptr %l124, i32 0, i32 1
  %t249 = load ptr, ptr %t248, !tbaa !27
  %t250 = getelementptr i64, ptr %t249, i64 %t246
  %t251 = load i64, ptr %t250, !tbaa !34
  %t254 = getelementptr { i64, ptr }, ptr %l122, i32 0, i32 1
  %t255 = load ptr, ptr %t254, !tbaa !27
  %t256 = getelementptr i64, ptr %t255, i64 %t244
  store i64 %t251, ptr %t256, !tbaa !34
  br label %bb48
bb48:
  %t257 = load i64, ptr %l15, !tbaa !24
  %t259 = add i64 %t257, 1
  store i64 %t259, ptr %l15, !tbaa !24
  br label %bb44
bb49:
  br label %ret
ret:
  ret void
}

define dso_local i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2eheldScope(ptr %v0, ptr %a0, i64 %a1, i32 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l3 = alloca ptr
  %l4 = alloca ptr
  %l8 = alloca %"compiler/eval:Ptr"
  %l9 = alloca i64
  %l11 = alloca i64
  %rv = alloca i64
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1, ptr %l3, !tbaa !29
  %t2 = load ptr, ptr %l0, !tbaa !29
  store ptr %t2, ptr %l4, !tbaa !29
  %t3 = load ptr, ptr %l0, !tbaa !29
  %t9 = call %"compiler/eval:Ptr" @compiler_2feval_2ecompiler_2feval_3aMachine_2elocalPtr(ptr %v0, ptr %t3, i64 %a1, i32 %a2)
  store %"compiler/eval:Ptr" %t9, ptr %l8
  br label %bb1
bb1:
  %t10 = load ptr, ptr %l4, !tbaa !29
  %t11 = load %"compiler/eval:Ptr", ptr %l8
  %t12 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2erd(ptr %v0, ptr %t10, %"compiler/eval:Ptr" %t11, i64 8)
  store i64 %t12, ptr %l9
  br label %bb2
bb2:
  %t13 = load i32, ptr @G_2ecompiler_2fmir_2eI64T, !tbaa !23
  %t14 = load ptr, ptr %l3, !tbaa !29
  %t15 = load i64, ptr %l9, !tbaa !24
  %t17 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2eintValue(ptr %v0, ptr %t14, i64 %t15, i32 %t13)
  store i64 %t17, ptr %l11
  br label %bb3
bb3:
  %t18 = load i64, ptr %l11, !tbaa !24
  store i64 %t18, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local i1 @compiler_2feval_2ecompiler_2feval_3aMachine_2ei64(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l4 = alloca i64
  %l7 = alloca i1
  %l10 = alloca i64
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load i32, ptr %l1, !tbaa !23
  %t5 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2eshape(ptr %v0, ptr %t1, i32 %t2)
  store i64 %t5, ptr %l4
  br label %bb1
bb1:
  %t6 = load i64, ptr @G_2ecompiler_2feval_2evInt, !tbaa !24
  %t7 = load i64, ptr %l4, !tbaa !24
  %t9 = icmp eq i64 %t7, %t6
  br i1 %t9, label %bb2, label %bb3
bb2:
  %t11 = load ptr, ptr %l0, !tbaa !29
  %t12 = load i32, ptr %l1, !tbaa !23
  %t15 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2eibits(ptr %v0, ptr %t11, i32 %t12)
  store i64 %t15, ptr %l10
  br label %bb4
bb3:
  store i1 false, ptr %l7, !tbaa !21
  br label %bb5
bb4:
  %t16 = load i64, ptr %l10, !tbaa !24
  %t17 = icmp eq i64 %t16, 64
  store i1 %t17, ptr %l7, !tbaa !21
  br label %bb5
bb5:
  %t19 = load i1, ptr %l7, !tbaa !21
  store i1 %t19, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local void @compiler_2feval_2ecompiler_2feval_3aMachine_2eloadCaptures(ptr %v0, ptr %v1, ptr %a0, i64 %a1, ptr %a2, %"compiler/eval:Ptr" %a3, i64 %a4) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca ptr
  %l3 = alloca %"compiler/eval:Ptr"
  %l5 = alloca { i64, ptr }
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca i64
  %l12 = alloca { { i64, ptr }, i64 }
  %l13 = alloca { i64, ptr }
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
  %l27 = alloca { i64, [1 x i64] }
  %l28 = alloca i64
  %l29 = alloca i64
  %l32 = alloca i64
  %l40 = alloca i64
  %l46 = alloca i64
  %l50 = alloca i64
  %l53 = alloca i64
  %l71 = alloca i64
  %l73 = alloca ptr
  %l77 = alloca i32
  %l79 = alloca %"compiler/mir:Local"
  %l85 = alloca { { i64, ptr }, i64 }
  %l90 = alloca i64
  %l94 = alloca i64
  %l97 = alloca i64
  %l115 = alloca ptr
  %l116 = alloca ptr
  %l117 = alloca i64
  %l121 = alloca i32
  %l122 = alloca %"compiler/eval:Ptr"
  %l128 = alloca %"compiler/eval:Ptr"
  %l132 = alloca i64
  %l138 = alloca i64
  %l142 = alloca i64
  %l145 = alloca i64
  %l166 = alloca { i64, [1 x i64] }
  %l167 = alloca i64
  %l174 = alloca i1
  %l175 = alloca i64
  %l178 = alloca i64
  %l181 = alloca { i64, ptr }
  %l183 = alloca { i64, ptr }
  %l187 = alloca i64
  %l188 = alloca ptr
  %l196 = alloca %"compiler/eval:Ptr"
  %l197 = alloca i64
  %s0 = alloca %olang.scope
  %s7 = alloca %olang.scope
  %s13 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  store ptr %a2, ptr %l2
  store %"compiler/eval:Ptr" %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l2, !tbaa !29
  %t3 = getelementptr %"compiler/mir:Fn", ptr %t1, i32 0, i32 5
  %t5 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aLocalId_3e_2eLen_3ccompiler_2fmir_3aLocalId_3e(ptr %v1, ptr %t3)
  store i64 %t5, ptr %l32
  br label %bb1
bb1:
  %t6 = load i64, ptr %l32, !tbaa !24
  %t7 = icmp eq i64 %t6, 0
  br i1 %t7, label %bb2, label %bb3
bb2:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb3:
  br label %bb4
bb4:
  %t9 = getelementptr %"compiler/eval:Ptr", ptr %l3, i32 0, i32 0
  %t10 = load i64, ptr %t9, !tbaa !24
  %t12 = icmp eq i64 %t10, 0
  br i1 %t12, label %bb5, label %bb6
bb5:
  %t14 = load ptr, ptr %l0, !tbaa !29
  %t15 = load { i64, ptr }, ptr @G_2ecompiler_2feval_2eWhyNullCall, !tbaa !27
  %t16 = load ptr, ptr @__olang_prog_scope
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2erefuse(ptr %v0, ptr %t16, ptr %t14, { i64, ptr } %t15)
  br label %bb7
bb6:
  br label %bb8
bb7:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb8:
  %t19 = load ptr, ptr %l2, !tbaa !29
  %t21 = getelementptr %"compiler/mir:Fn", ptr %t19, i32 0, i32 5
  %t23 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aLocalId_3e_2eLen_3ccompiler_2fmir_3aLocalId_3e(ptr %v1, ptr %t21)
  store i64 %t23, ptr %l40
  br label %bb9
bb9:
  %t24 = load i64, ptr %l40, !tbaa !24
  %t25 = icmp sge i64 %t24, 0
  br i1 %t25, label %bb10, label %bb11
bb10:
  %t27 = load i64, ptr %l40, !tbaa !24
  %t28 = icmp sle i64 %t27, 2305843009213693951
  br i1 %t28, label %bb12, label %bb13
bb11:
  call void @__olang_check_failed(ptr @olang_loc_d3df02eef027536f_dc15be465081b3fb)
  unreachable
bb12:
  %t30 = load i64, ptr %l40, !tbaa !24
  %t31 = mul i64 %t30, 4
  %t32 = call ptr @__olang_scope_alloc_zeroed(ptr %s0, i64 %t31)
  %t33 = insertvalue { i64, ptr } undef, i64 %t30, 0
  %t34 = insertvalue { i64, ptr } %t33, ptr %t32, 1
  store { i64, ptr } %t34, ptr %l5, !tbaa !27
  store i64 0, ptr %l6, !tbaa !24
  %t36 = load ptr, ptr %l2, !tbaa !29
  %t38 = getelementptr %"compiler/mir:Fn", ptr %t36, i32 0, i32 5
  %t40 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aLocalId_3e_2eLen_3ccompiler_2fmir_3aLocalId_3e(ptr %v1, ptr %t38)
  store i64 %t40, ptr %l46
  br label %bb14
bb13:
  call void @__olang_check_failed(ptr @olang_loc_d3df02eef027536f_dc15be465081b3fb)
  unreachable
bb14:
  %t41 = load i64, ptr %l46, !tbaa !24
  store i64 %t41, ptr %l7, !tbaa !24
  store i64 1, ptr %l8, !tbaa !24
  %t42 = load i64, ptr %l7, !tbaa !24
  %t43 = load i64, ptr %l6, !tbaa !24
  %t46 = icmp sgt i64 %t42, %t43
  br i1 %t46, label %bb15, label %bb16
bb15:
  %t48 = load i64, ptr %l8, !tbaa !24
  %t50 = icmp sgt i64 %t48, 0
  br i1 %t50, label %bb17, label %bb18
bb16:
  store i64 0, ptr %l50, !tbaa !24
  br label %bb20
bb17:
  %t52 = load i64, ptr %l7, !tbaa !24
  %t53 = load i64, ptr %l6, !tbaa !24
  %t56 = sub i64 %t52, %t53
  %t57 = load i64, ptr %l8, !tbaa !24
  %t60 = add i64 %t56, %t57
  %t62 = sub i64 %t60, 1
  %t63 = load i64, ptr %l8, !tbaa !24
  %t66 = sdiv i64 %t62, %t63
  store i64 %t66, ptr %l53, !tbaa !24
  br label %bb19
bb18:
  store i64 0, ptr %l53, !tbaa !24
  br label %bb19
bb19:
  %t68 = load i64, ptr %l53, !tbaa !24
  store i64 %t68, ptr %l50, !tbaa !24
  br label %bb20
bb20:
  %t69 = load i64, ptr %l50, !tbaa !24
  store i64 %t69, ptr %l9, !tbaa !24
  store i64 0, ptr %l10, !tbaa !24
  br label %bb21
bb21:
  %t70 = load i64, ptr %l10, !tbaa !24
  %t71 = load i64, ptr %l9, !tbaa !24
  %t74 = icmp slt i64 %t70, %t71
  %t76 = xor i1 %t74, true
  br i1 %t76, label %bb22, label %bb23
bb22:
  br label %bb28
bb23:
  br label %bb24
bb24:
  %t78 = load i64, ptr %l6, !tbaa !24
  %t79 = load i64, ptr %l10, !tbaa !24
  %t80 = load i64, ptr %l8, !tbaa !24
  %t83 = mul i64 %t79, %t80
  %t86 = add i64 %t78, %t83
  store i64 %t86, ptr %l11, !tbaa !24
  %t88 = load i64, ptr %l11, !tbaa !24
  store i64 %t88, ptr %l71, !tbaa !24
  %t89 = load ptr, ptr %l2, !tbaa !29
  %t91 = getelementptr %"compiler/mir:Fn", ptr %t89, i32 0, i32 7
  store ptr %t91, ptr %l73, !tbaa !29
  %t92 = load ptr, ptr %l2, !tbaa !29
  %t94 = getelementptr %"compiler/mir:Fn", ptr %t92, i32 0, i32 5
  %t95 = load i64, ptr %l11, !tbaa !24
  %t98 = call i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aLocalId_3e_2eAt_3ccompiler_2fmir_3aLocalId_3e(ptr %v1, ptr %t94, i64 %t95)
  store i32 %t98, ptr %l77
  br label %bb25
bb25:
  %t99 = load i32, ptr %l77, !tbaa !23
  %t100 = sext i32 %t99 to i64
  %t101 = load ptr, ptr %l73, !tbaa !29
  %t103 = call %"compiler/mir:Local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aLocal_3e_2eAt_3ccompiler_2fmir_3aLocal_3e(ptr %v1, ptr %t101, i64 %t100)
  store %"compiler/mir:Local" %t103, ptr %l79
  br label %bb26
bb26:
  %t104 = getelementptr %"compiler/mir:Local", ptr %l79, i32 0, i32 2
  %t105 = load i32, ptr %t104, !tbaa !23
  %t107 = load i64, ptr %l71, !tbaa !24
  %t108 = getelementptr { i64, ptr }, ptr %l5, i32 0, i32 1
  %t109 = load ptr, ptr %t108, !tbaa !27
  %t110 = getelementptr i32, ptr %t109, i64 %t107
  store i32 %t105, ptr %t110, !tbaa !33
  br label %bb27
bb27:
  %t111 = load i64, ptr %l10, !tbaa !24
  %t113 = add i64 %t111, 1
  store i64 %t113, ptr %l10, !tbaa !24
  br label %bb21
bb28:
  %t115 = load ptr, ptr %l0, !tbaa !29
  %t116 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t119 = call { { i64, ptr }, i64 } @compiler_2feval_2ecompiler_2feval_3aMachine_2epack(ptr %v0, ptr %s0, ptr %s0, ptr %t115, { i64, ptr } %t116)
  store { { i64, ptr }, i64 } %t119, ptr %l85
  br label %bb29
bb29:
  %t120 = load { { i64, ptr }, i64 }, ptr %l85
  store { { i64, ptr }, i64 } %t120, ptr %l12
  %t121 = getelementptr { { i64, ptr }, i64 }, ptr %l12, i32 0, i32 0
  %t122 = load { i64, ptr }, ptr %t121, !tbaa !27
  store { i64, ptr } %t122, ptr %l13, !tbaa !27
  %t124 = getelementptr { { i64, ptr }, i64 }, ptr %l12, i32 0, i32 1
  %t125 = load i64, ptr %t124, !tbaa !24
  store i64 %t125, ptr %l14, !tbaa !24
  store i64 0, ptr %l15, !tbaa !24
  %t127 = load ptr, ptr %l2, !tbaa !29
  %t129 = getelementptr %"compiler/mir:Fn", ptr %t127, i32 0, i32 5
  %t131 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aLocalId_3e_2eLen_3ccompiler_2fmir_3aLocalId_3e(ptr %v1, ptr %t129)
  store i64 %t131, ptr %l90
  br label %bb30
bb30:
  %t132 = load i64, ptr %l90, !tbaa !24
  store i64 %t132, ptr %l16, !tbaa !24
  store i64 1, ptr %l17, !tbaa !24
  %t133 = load i64, ptr %l16, !tbaa !24
  %t134 = load i64, ptr %l15, !tbaa !24
  %t137 = icmp sgt i64 %t133, %t134
  br i1 %t137, label %bb31, label %bb32
bb31:
  %t139 = load i64, ptr %l17, !tbaa !24
  %t141 = icmp sgt i64 %t139, 0
  br i1 %t141, label %bb33, label %bb34
bb32:
  store i64 0, ptr %l94, !tbaa !24
  br label %bb36
bb33:
  %t143 = load i64, ptr %l16, !tbaa !24
  %t144 = load i64, ptr %l15, !tbaa !24
  %t147 = sub i64 %t143, %t144
  %t148 = load i64, ptr %l17, !tbaa !24
  %t151 = add i64 %t147, %t148
  %t153 = sub i64 %t151, 1
  %t154 = load i64, ptr %l17, !tbaa !24
  %t157 = sdiv i64 %t153, %t154
  store i64 %t157, ptr %l97, !tbaa !24
  br label %bb35
bb34:
  store i64 0, ptr %l97, !tbaa !24
  br label %bb35
bb35:
  %t159 = load i64, ptr %l97, !tbaa !24
  store i64 %t159, ptr %l94, !tbaa !24
  br label %bb36
bb36:
  %t160 = load i64, ptr %l94, !tbaa !24
  store i64 %t160, ptr %l18, !tbaa !24
  store i64 0, ptr %l19, !tbaa !24
  br label %bb37
bb37:
  store %olang.scope zeroinitializer, ptr %s7
  %t161 = load i64, ptr %l19, !tbaa !24
  %t162 = load i64, ptr %l18, !tbaa !24
  %t165 = icmp slt i64 %t161, %t162
  %t167 = xor i1 %t165, true
  br i1 %t167, label %bb38, label %bb39
bb38:
  call void @__olang_scope_close(ptr %s7)
  br label %bb47
bb39:
  br label %bb40
bb40:
  %t169 = load i64, ptr %l15, !tbaa !24
  %t170 = load i64, ptr %l19, !tbaa !24
  %t171 = load i64, ptr %l17, !tbaa !24
  %t174 = mul i64 %t170, %t171
  %t177 = add i64 %t169, %t174
  store i64 %t177, ptr %l20, !tbaa !24
  %t179 = load ptr, ptr %l0, !tbaa !29
  store ptr %t179, ptr %l115, !tbaa !29
  %t180 = load ptr, ptr %l0, !tbaa !29
  store ptr %t180, ptr %l116, !tbaa !29
  %t181 = load i64, ptr %l1, !tbaa !24
  store i64 %t181, ptr %l117, !tbaa !24
  %t182 = load ptr, ptr %l2, !tbaa !29
  %t184 = getelementptr %"compiler/mir:Fn", ptr %t182, i32 0, i32 5
  %t185 = load i64, ptr %l20, !tbaa !24
  %t188 = call i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aLocalId_3e_2eAt_3ccompiler_2fmir_3aLocalId_3e(ptr %v1, ptr %t184, i64 %t185)
  store i32 %t188, ptr %l121
  br label %bb41
bb41:
  %t189 = load ptr, ptr %l116, !tbaa !29
  %t190 = load i64, ptr %l117, !tbaa !24
  %t191 = load i32, ptr %l121, !tbaa !23
  %t192 = call %"compiler/eval:Ptr" @compiler_2feval_2ecompiler_2feval_3aMachine_2elocalPtr(ptr %v0, ptr %t189, i64 %t190, i32 %t191)
  store %"compiler/eval:Ptr" %t192, ptr %l122
  br label %bb42
bb42:
  %t193 = getelementptr %"compiler/eval:Ptr", ptr %l3, i32 0, i32 0
  %t194 = load i64, ptr %t193, !tbaa !24
  %t195 = getelementptr %"compiler/eval:Ptr", ptr %l3, i32 0, i32 1
  %t196 = load i64, ptr %t195, !tbaa !24
  %t197 = load i64, ptr %l20, !tbaa !24
  %t199 = getelementptr { i64, ptr }, ptr %l13, i32 0, i32 1
  %t200 = load ptr, ptr %t199, !tbaa !27
  %t201 = getelementptr i64, ptr %t200, i64 %t197
  %t202 = load i64, ptr %t201, !tbaa !34
  %t205 = add i64 %t196, %t202
  %t208 = call %"compiler/eval:Ptr" @compiler_2feval_3aPtr_2ector(ptr %s7, i64 %t194, i64 %t205)
  store %"compiler/eval:Ptr" %t208, ptr %l128
  br label %bb43
bb43:
  %t209 = load ptr, ptr %l0, !tbaa !29
  %t210 = load i64, ptr %l20, !tbaa !24
  %t212 = getelementptr { i64, ptr }, ptr %l5, i32 0, i32 1
  %t213 = load ptr, ptr %t212, !tbaa !27
  %t214 = getelementptr i32, ptr %t213, i64 %t210
  %t215 = load i32, ptr %t214, !tbaa !33
  %t218 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2esize(ptr %v0, ptr %t209, i32 %t215)
  store i64 %t218, ptr %l132
  br label %bb44
bb44:
  %t219 = load ptr, ptr %l115, !tbaa !29
  %t220 = load %"compiler/eval:Ptr", ptr %l122
  %t221 = load %"compiler/eval:Ptr", ptr %l128
  %t222 = load i64, ptr %l132, !tbaa !24
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2ecopy(ptr %v0, ptr %t219, %"compiler/eval:Ptr" %t220, %"compiler/eval:Ptr" %t221, i64 %t222)
  br label %bb45
bb45:
  call void @__olang_scope_close(ptr %s7)
  br label %bb46
bb46:
  %t223 = load i64, ptr %l19, !tbaa !24
  %t225 = add i64 %t223, 1
  store i64 %t225, ptr %l19, !tbaa !24
  br label %bb37
bb47:
  store i64 %a4, ptr %l21, !tbaa !24
  %t229 = load ptr, ptr %l2, !tbaa !29
  %t231 = getelementptr %"compiler/mir:Fn", ptr %t229, i32 0, i32 6
  %t233 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aVarKind_3e_2eLen_3ccompiler_2fmir_3aVarKind_3e(ptr %v1, ptr %t231)
  store i64 %t233, ptr %l138
  br label %bb48
bb48:
  %t234 = load i64, ptr %l138, !tbaa !24
  store i64 %t234, ptr %l22, !tbaa !24
  store i64 1, ptr %l23, !tbaa !24
  %t235 = load i64, ptr %l22, !tbaa !24
  %t236 = load i64, ptr %l21, !tbaa !24
  %t239 = icmp sgt i64 %t235, %t236
  br i1 %t239, label %bb49, label %bb50
bb49:
  %t241 = load i64, ptr %l23, !tbaa !24
  %t243 = icmp sgt i64 %t241, 0
  br i1 %t243, label %bb51, label %bb52
bb50:
  store i64 0, ptr %l142, !tbaa !24
  br label %bb54
bb51:
  %t245 = load i64, ptr %l22, !tbaa !24
  %t246 = load i64, ptr %l21, !tbaa !24
  %t249 = sub i64 %t245, %t246
  %t250 = load i64, ptr %l23, !tbaa !24
  %t253 = add i64 %t249, %t250
  %t255 = sub i64 %t253, 1
  %t256 = load i64, ptr %l23, !tbaa !24
  %t259 = sdiv i64 %t255, %t256
  store i64 %t259, ptr %l145, !tbaa !24
  br label %bb53
bb52:
  store i64 0, ptr %l145, !tbaa !24
  br label %bb53
bb53:
  %t261 = load i64, ptr %l145, !tbaa !24
  store i64 %t261, ptr %l142, !tbaa !24
  br label %bb54
bb54:
  %t262 = load i64, ptr %l142, !tbaa !24
  store i64 %t262, ptr %l24, !tbaa !24
  store i64 0, ptr %l25, !tbaa !24
  br label %bb55
bb55:
  %t263 = load i64, ptr %l25, !tbaa !24
  %t264 = load i64, ptr %l24, !tbaa !24
  %t267 = icmp slt i64 %t263, %t264
  %t269 = xor i1 %t267, true
  br i1 %t269, label %bb56, label %bb57
bb56:
  br label %bb79
bb57:
  br label %bb58
bb58:
  %t271 = load i64, ptr %l21, !tbaa !24
  %t272 = load i64, ptr %l25, !tbaa !24
  %t273 = load i64, ptr %l23, !tbaa !24
  %t276 = mul i64 %t272, %t273
  %t279 = add i64 %t271, %t276
  store i64 %t279, ptr %l26, !tbaa !24
  %t281 = load ptr, ptr %l2, !tbaa !29
  %t283 = getelementptr %"compiler/mir:Fn", ptr %t281, i32 0, i32 6
  %t284 = load i64, ptr %l26, !tbaa !24
  %t287 = call { i64, [1 x i64] } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aVarKind_3e_2eAt_3ccompiler_2fmir_3aVarKind_3e(ptr %v1, ptr %t283, i64 %t284)
  store { i64, [1 x i64] } %t287, ptr %l166
  br label %bb59
bb59:
  %t288 = load { i64, [1 x i64] }, ptr %l166
  store { i64, [1 x i64] } %t288, ptr %l27
  %t289 = load { i64, [1 x i64] }, ptr %l27
  %t291 = extractvalue { i64, [1 x i64] } %t289, 0
  %t292 = icmp eq i64 %t291, 4
  br i1 %t292, label %bb60, label %bb61
bb60:
  %t294 = getelementptr { i64, [1 x i64] }, ptr %l27, i32 0, i32 1
  %t295 = getelementptr { i64 }, ptr %t294, i32 0, i32 0
  %t296 = load i64, ptr %t295
  store i64 %t296, ptr %l28, !tbaa !24
  br label %bb62
bb61:
  br label %bb63
bb62:
  %t298 = load i64, ptr %l28, !tbaa !24
  store i64 %t298, ptr %l167, !tbaa !24
  br label %bb68
bb63:
  br i1 true, label %bb64, label %bb65
bb64:
  br label %bb66
bb65:
  br label %bb67
bb66:
  store i64 -1, ptr %l167, !tbaa !24
  br label %bb68
bb67:
  call void @__olang_check_failed(ptr @olang_loc_7e96cd508c5b7919_900f150eebe6671d)
  unreachable
bb68:
  %t300 = load i64, ptr %l167, !tbaa !24
  store i64 %t300, ptr %l29, !tbaa !24
  %t301 = load i64, ptr %l29, !tbaa !24
  %t303 = icmp sge i64 %t301, 0
  br i1 %t303, label %bb69, label %bb70
bb69:
  %t305 = load i64, ptr %l29, !tbaa !24
  store i64 %t305, ptr %l175, !tbaa !24
  %t306 = load ptr, ptr %l2, !tbaa !29
  %t308 = getelementptr %"compiler/mir:Fn", ptr %t306, i32 0, i32 5
  %t310 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aLocalId_3e_2eLen_3ccompiler_2fmir_3aLocalId_3e(ptr %v1, ptr %t308)
  store i64 %t310, ptr %l178
  br label %bb71
bb70:
  store i1 false, ptr %l174, !tbaa !21
  br label %bb72
bb71:
  %t311 = load i64, ptr %l175, !tbaa !24
  %t312 = load i64, ptr %l178, !tbaa !24
  %t313 = icmp slt i64 %t311, %t312
  store i1 %t313, ptr %l174, !tbaa !21
  br label %bb72
bb72:
  %t315 = load i1, ptr %l174, !tbaa !21
  br i1 %t315, label %bb73, label %bb74
bb73:
  store %olang.scope zeroinitializer, ptr %s13
  %t316 = load ptr, ptr %l0, !tbaa !29
  %t318 = getelementptr %"compiler/eval:Machine", ptr %t316, i32 0, i32 57
  %t319 = load { i64, ptr }, ptr %t318, !tbaa !27
  store { i64, ptr } %t319, ptr %l181, !tbaa !27
  %t320 = load ptr, ptr %l0, !tbaa !29
  %t322 = getelementptr %"compiler/eval:Machine", ptr %t320, i32 0, i32 55
  %t323 = load { i64, ptr }, ptr %t322, !tbaa !27
  store { i64, ptr } %t323, ptr %l183, !tbaa !27
  %t324 = load i64, ptr %l1, !tbaa !24
  %t326 = getelementptr { i64, ptr }, ptr %l183, i32 0, i32 1
  %t327 = load ptr, ptr %t326, !tbaa !27
  %t328 = getelementptr %"compiler/eval:frame", ptr %t327, i64 %t324
  %t329 = getelementptr %"compiler/eval:frame", ptr %t328, i32 0, i32 5
  %t330 = load i64, ptr %t329, !tbaa !24
  %t331 = load i64, ptr %l26, !tbaa !24
  %t334 = add i64 %t330, %t331
  store i64 %t334, ptr %l187, !tbaa !24
  %t335 = load ptr, ptr %l0, !tbaa !29
  store ptr %t335, ptr %l188, !tbaa !29
  %t336 = getelementptr %"compiler/eval:Ptr", ptr %l3, i32 0, i32 0
  %t337 = load i64, ptr %t336, !tbaa !24
  %t338 = getelementptr %"compiler/eval:Ptr", ptr %l3, i32 0, i32 1
  %t339 = load i64, ptr %t338, !tbaa !24
  %t340 = load i64, ptr %l14, !tbaa !24
  %t343 = add i64 %t339, %t340
  %t344 = load i64, ptr %l29, !tbaa !24
  %t346 = mul i64 8, %t344
  %t349 = add i64 %t343, %t346
  %t352 = call %"compiler/eval:Ptr" @compiler_2feval_3aPtr_2ector(ptr %s13, i64 %t337, i64 %t349)
  store %"compiler/eval:Ptr" %t352, ptr %l196
  br label %bb75
bb74:
  br label %bb77
bb75:
  %t353 = load ptr, ptr %l188, !tbaa !29
  %t354 = load %"compiler/eval:Ptr", ptr %l196
  %t355 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2erd(ptr %v0, ptr %t353, %"compiler/eval:Ptr" %t354, i64 8)
  store i64 %t355, ptr %l197
  br label %bb76
bb76:
  %t356 = load i64, ptr %l197, !tbaa !24
  %t357 = load i64, ptr %l187, !tbaa !24
  %t358 = getelementptr { i64, ptr }, ptr %l181, i32 0, i32 1
  %t359 = load ptr, ptr %t358, !tbaa !27
  %t360 = getelementptr i64, ptr %t359, i64 %t357
  store i64 %t356, ptr %t360, !tbaa !34
  call void @__olang_scope_close(ptr %s13)
  br label %bb77
bb77:
  br label %bb78
bb78:
  %t361 = load i64, ptr %l25, !tbaa !24
  %t363 = add i64 %t361, 1
  store i64 %t363, ptr %l25, !tbaa !24
  br label %bb55
bb79:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local i1 @compiler_2feval_2ecompiler_2feval_3aMachine_2emutableGlobal(ptr %v0, ptr %a0, %"compiler/mir:Lvalue" %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/mir:Lvalue"
  %l2 = alloca { i64, [2 x i64] }
  %l3 = alloca i64
  %l4 = alloca i32
  %l5 = alloca i64
  %l11 = alloca i64
  %l13 = alloca ptr
  %l16 = alloca %"compiler/eval:gkey"
  %l17 = alloca i64
  %l18 = alloca i32
  %l21 = alloca i1
  %l25 = alloca %"compiler/eval:global"
  %s1 = alloca %olang.scope
  %rv = alloca i1
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
  %t7 = icmp eq i64 %t6, 2
  br i1 %t7, label %bb1, label %bb2
bb1:
  %t9 = getelementptr { i64, [2 x i64] }, ptr %l2, i32 0, i32 1
  %t10 = getelementptr { i64, i32, i32 }, ptr %t9, i32 0, i32 0
  %t11 = load i64, ptr %t10
  store i64 %t11, ptr %l3, !tbaa !24
  %t13 = getelementptr { i64, [2 x i64] }, ptr %l2, i32 0, i32 1
  %t14 = getelementptr { i64, i32, i32 }, ptr %t13, i32 0, i32 1
  %t15 = load i32, ptr %t14
  store i32 %t15, ptr %l4, !tbaa !23
  br label %bb3
bb2:
  br label %bb13
bb3:
  store %olang.scope zeroinitializer, ptr %s1
  %t17 = load ptr, ptr %l0, !tbaa !29
  %t19 = getelementptr %"compiler/eval:Machine", ptr %t17, i32 0, i32 40
  store ptr %t19, ptr %l13, !tbaa !29
  %t20 = load i64, ptr %l3, !tbaa !24
  %t21 = load i32, ptr %l4, !tbaa !23
  %t24 = call %"compiler/eval:gkey" @compiler_2feval_3agkey_2ector(ptr %s1, i64 %t20, i32 %t21)
  store %"compiler/eval:gkey" %t24, ptr %l16
  br label %bb4
bb4:
  %t25 = load ptr, ptr %l13, !tbaa !29
  %t26 = load %"compiler/eval:gkey", ptr %l16
  %t27 = call { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2feval_3agkey_2c_20I64_3e_2eG_H841bd46d30f67641fdfac3080f15aea1(ptr %v0, ptr %t25, %"compiler/eval:gkey" %t26)
  %t28 = extractvalue { i32, i64 } %t27, 1
  %t29 = extractvalue { i32, i64 } %t27, 0
  store i32 %t29, ptr %l18
  %t30 = icmp ne i32 %t29, 0
  br i1 %t30, label %bb6, label %ok.31, !prof !99
ok.31:
  store i64 %t28, ptr %l17
  br label %bb5
bb5:
  %t32 = load i64, ptr %l17, !tbaa !24
  store i64 %t32, ptr %l11, !tbaa !24
  br label %bb8
bb6:
  br label %bb7
bb7:
  store i64 -1, ptr %l11, !tbaa !24
  br label %bb8
bb8:
  %t33 = load i64, ptr %l11, !tbaa !24
  store i64 %t33, ptr %l5, !tbaa !24
  %t34 = load i64, ptr %l5, !tbaa !24
  %t36 = icmp sge i64 %t34, 0
  br i1 %t36, label %bb9, label %bb10
bb9:
  %t38 = load ptr, ptr %l0, !tbaa !29
  %t40 = getelementptr %"compiler/eval:Machine", ptr %t38, i32 0, i32 39
  %t41 = load i64, ptr %l5, !tbaa !24
  %t44 = call %"compiler/eval:global" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3aglobal_3e_2eAt_3ccompiler_2feval_3aglobal_3e(ptr %v0, ptr %t40, i64 %t41)
  store %"compiler/eval:global" %t44, ptr %l25
  br label %bb11
bb10:
  store i1 false, ptr %l21, !tbaa !21
  br label %bb12
bb11:
  %t45 = getelementptr %"compiler/eval:global", ptr %l25, i32 0, i32 1
  %t46 = load i1, ptr %t45, !tbaa !21
  store i1 %t46, ptr %l21, !tbaa !21
  br label %bb12
bb12:
  call void @__olang_scope_close(ptr %s1)
  %t48 = load i1, ptr %l21, !tbaa !21
  store i1 %t48, ptr %rv
  br label %ret
bb13:
  br i1 true, label %bb14, label %bb15
bb14:
  br label %bb16
bb15:
  br label %bb17
bb16:
  store i1 false, ptr %rv
  br label %ret
bb17:
  call void @__olang_check_failed(ptr @olang_loc_b24244fd0a11c914_466201095dcd7a18)
  unreachable
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local void @compiler_2feval_2ecompiler_2feval_3aMachine_2enewArray(ptr %v0, ptr %a0, i64 %a1, %"compiler/eval:Ptr" %a2, { i64, [1 x i64] } %a3, i32 %a4, { i64, [4 x i64] } %a5, { i64, [4 x i64] } %a6) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca %"compiler/eval:Ptr"
  %l5 = alloca { i64, [4 x i64] }
  %l6 = alloca { i64, [4 x i64] }
  %l7 = alloca i32
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca %"compiler/eval:Ptr"
  %l14 = alloca i64
  %l15 = alloca i64
  %l16 = alloca i64
  %l17 = alloca i64
  %l18 = alloca i64
  %l22 = alloca i32
  %l23 = alloca ptr
  %l27 = alloca i64
  %l31 = alloca i32
  %l32 = alloca i64
  %l35 = alloca i64
  %l38 = alloca i1
  %l41 = alloca i1
  %l51 = alloca i64
  %l60 = alloca %"compiler/eval:Ptr"
  %l65 = alloca i64
  %l70 = alloca { i64, ptr }
  %l76 = alloca { i64, ptr }
  %l84 = alloca i1
  %l96 = alloca i64
  %l99 = alloca i64
  %l117 = alloca ptr
  %l122 = alloca %"compiler/eval:Ptr"
  %l130 = alloca ptr
  %l134 = alloca %"compiler/eval:Ptr"
  %s0 = alloca %olang.scope
  %s7 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  store %"compiler/eval:Ptr" %a2, ptr %l2
  store { i64, [4 x i64] } %a5, ptr %l5
  store { i64, [4 x i64] } %a6, ptr %l6
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t5 = call i32 @compiler_2feval_2ecompiler_2feval_3aMachine_2eelemOf(ptr %v0, ptr %t1, i32 %a4)
  store i32 %t5, ptr %l22
  br label %bb1
bb1:
  %t6 = load i32, ptr %l22, !tbaa !23
  store i32 %t6, ptr %l7, !tbaa !23
  %t7 = load ptr, ptr %l0, !tbaa !29
  store ptr %t7, ptr %l23, !tbaa !29
  %t8 = load ptr, ptr %l0, !tbaa !29
  %t9 = load i64, ptr %l1, !tbaa !24
  %t10 = load { i64, [4 x i64] }, ptr %l5
  %t14 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2escalar(ptr %v0, ptr %t8, i64 %t9, { i64, [4 x i64] } %t10)
  store i64 %t14, ptr %l27
  br label %bb2
bb2:
  %t15 = load ptr, ptr %l0, !tbaa !29
  %t16 = load i64, ptr %l1, !tbaa !24
  %t17 = load { i64, [4 x i64] }, ptr %l5
  %t21 = call i32 @compiler_2feval_2ecompiler_2feval_3aMachine_2eopType(ptr %v0, ptr %t15, i64 %t16, { i64, [4 x i64] } %t17)
  store i32 %t21, ptr %l31
  br label %bb3
bb3:
  %t22 = load ptr, ptr %l23, !tbaa !29
  %t23 = load i64, ptr %l27, !tbaa !24
  %t24 = load i32, ptr %l31, !tbaa !23
  %t25 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2eintValue(ptr %v0, ptr %t22, i64 %t23, i32 %t24)
  store i64 %t25, ptr %l32
  br label %bb4
bb4:
  %t26 = load i64, ptr %l32, !tbaa !24
  store i64 %t26, ptr %l8, !tbaa !24
  %t27 = load ptr, ptr %l0, !tbaa !29
  %t28 = load i32, ptr %l7, !tbaa !23
  %t31 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2esize(ptr %v0, ptr %t27, i32 %t28)
  store i64 %t31, ptr %l35
  br label %bb5
bb5:
  %t32 = load i64, ptr %l35, !tbaa !24
  store i64 %t32, ptr %l9, !tbaa !24
  %t33 = load i64, ptr %l8, !tbaa !24
  %t35 = icmp slt i64 %t33, 0
  br i1 %t35, label %bb6, label %bb7
bb6:
  store i1 true, ptr %l38, !tbaa !21
  br label %bb11
bb7:
  %t37 = load i64, ptr %l9, !tbaa !24
  %t39 = icmp sgt i64 %t37, 0
  br i1 %t39, label %bb8, label %bb9
bb8:
  %t41 = load i64, ptr %l8, !tbaa !24
  %t42 = load i64, ptr %l9, !tbaa !24
  %t44 = sdiv i64 1099511627776, %t42
  %t47 = icmp sgt i64 %t41, %t44
  store i1 %t47, ptr %l41, !tbaa !21
  br label %bb10
bb9:
  store i1 false, ptr %l41, !tbaa !21
  br label %bb10
bb10:
  %t49 = load i1, ptr %l41, !tbaa !21
  store i1 %t49, ptr %l38, !tbaa !21
  br label %bb11
bb11:
  %t50 = load i1, ptr %l38, !tbaa !21
  br i1 %t50, label %bb12, label %bb13
bb12:
  %t51 = load ptr, ptr %l0, !tbaa !29
  %t52 = load { i64, ptr }, ptr @G_2ecompiler_2feval_2eWhyLong, !tbaa !27
  %t53 = load ptr, ptr @__olang_prog_scope
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2erefuse(ptr %v0, ptr %t53, ptr %t51, { i64, ptr } %t52)
  br label %bb14
bb13:
  br label %bb15
bb14:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb15:
  %t56 = load ptr, ptr %l0, !tbaa !29
  %t57 = load i64, ptr %l1, !tbaa !24
  %t62 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2ebuildScope(ptr %v0, ptr %t56, i64 %t57, { i64, [1 x i64] } %a3)
  store i64 %t62, ptr %l51
  br label %bb16
bb16:
  %t63 = load i64, ptr %l51, !tbaa !24
  store i64 %t63, ptr %l10, !tbaa !24
  %t64 = load ptr, ptr %l0, !tbaa !29
  %t66 = getelementptr %"compiler/eval:Machine", ptr %t64, i32 0, i32 19
  %t67 = load i1, ptr %t66, !tbaa !21
  br i1 %t67, label %bb17, label %bb18
bb17:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb18:
  br label %bb19
bb19:
  %t69 = load ptr, ptr %l0, !tbaa !29
  %t70 = load i64, ptr %l8, !tbaa !24
  %t71 = load i64, ptr %l9, !tbaa !24
  %t74 = mul i64 %t70, %t71
  %t75 = load i64, ptr @G_2ecompiler_2feval_2eaValue, !tbaa !24
  %t76 = load i64, ptr %l10, !tbaa !24
  %t81 = call %"compiler/eval:Ptr" @compiler_2feval_2ecompiler_2feval_3aMachine_2eallocate(ptr %v0, ptr %t69, i64 %t74, i64 %t75, i64 %t76)
  store %"compiler/eval:Ptr" %t81, ptr %l60
  br label %bb20
bb20:
  %t82 = load %"compiler/eval:Ptr", ptr %l60
  store %"compiler/eval:Ptr" %t82, ptr %l11
  %t83 = load ptr, ptr %l0, !tbaa !29
  %t85 = getelementptr %"compiler/eval:Machine", ptr %t83, i32 0, i32 19
  %t86 = load i1, ptr %t85, !tbaa !21
  br i1 %t86, label %bb21, label %bb22
bb21:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb22:
  br label %bb23
bb23:
  %t88 = load ptr, ptr %l0, !tbaa !29
  %t90 = getelementptr %"compiler/eval:Machine", ptr %t88, i32 0, i32 4
  %t91 = getelementptr %"compiler/mir:GenInfo", ptr %t90, i32 0, i32 0
  %t93 = call i64 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2eLen_3cI64_2c_20Bool_3e(ptr %v0, ptr %t91)
  store i64 %t93, ptr %l65
  br label %bb24
bb24:
  %t94 = load i64, ptr %l65, !tbaa !24
  %t95 = icmp sgt i64 %t94, 0
  br i1 %t95, label %bb25, label %bb26
bb25:
  %t97 = load i32, ptr %l7, !tbaa !23
  %t99 = load i64, ptr %l8, !tbaa !24
  %t101 = load ptr, ptr %l0, !tbaa !29
  %t103 = getelementptr %"compiler/eval:Machine", ptr %t101, i32 0, i32 46
  %t104 = load { i64, ptr }, ptr %t103, !tbaa !27
  store { i64, ptr } %t104, ptr %l70, !tbaa !27
  %t105 = getelementptr %"compiler/eval:Ptr", ptr %l11, i32 0, i32 0
  %t106 = load i64, ptr %t105, !tbaa !24
  %t107 = load i64, ptr @G_2ecompiler_2feval_2eslotMask, !tbaa !24
  %t110 = and i64 %t106, %t107
  %t114 = getelementptr { i64, ptr }, ptr %l70, i32 0, i32 1
  %t115 = load ptr, ptr %t114, !tbaa !27
  %t116 = getelementptr %"compiler/eval:alloc", ptr %t115, i64 %t110
  %t117 = getelementptr %"compiler/eval:alloc", ptr %t116, i32 0, i32 11
  store i32 %t97, ptr %t117, !tbaa !23
  %t118 = load ptr, ptr %l0, !tbaa !29
  %t120 = getelementptr %"compiler/eval:Machine", ptr %t118, i32 0, i32 46
  %t121 = load { i64, ptr }, ptr %t120, !tbaa !27
  store { i64, ptr } %t121, ptr %l76, !tbaa !27
  %t122 = getelementptr %"compiler/eval:Ptr", ptr %l11, i32 0, i32 0
  %t123 = load i64, ptr %t122, !tbaa !24
  %t124 = load i64, ptr @G_2ecompiler_2feval_2eslotMask, !tbaa !24
  %t127 = and i64 %t123, %t124
  %t131 = getelementptr { i64, ptr }, ptr %l76, i32 0, i32 1
  %t132 = load ptr, ptr %t131, !tbaa !27
  %t133 = getelementptr %"compiler/eval:alloc", ptr %t132, i64 %t127
  %t134 = getelementptr %"compiler/eval:alloc", ptr %t133, i32 0, i32 12
  store i64 %t99, ptr %t134, !tbaa !24
  br label %bb27
bb26:
  br label %bb27
bb27:
  %t135 = load { i64, [4 x i64] }, ptr %l6
  %t137 = extractvalue { i64, [4 x i64] } %t135, 0
  %t138 = icmp eq i64 %t137, 0
  %t140 = xor i1 %t138, true
  br i1 %t140, label %bb28, label %bb29
bb28:
  %t142 = load i64, ptr %l8, !tbaa !24
  %t144 = icmp sgt i64 %t142, 0
  store i1 %t144, ptr %l84, !tbaa !21
  br label %bb30
bb29:
  store i1 false, ptr %l84, !tbaa !21
  br label %bb30
bb30:
  %t146 = load i1, ptr %l84, !tbaa !21
  br i1 %t146, label %bb31, label %bb32
bb31:
  %t147 = load ptr, ptr %l0, !tbaa !29
  %t148 = load i64, ptr %l1, !tbaa !24
  %t149 = load %"compiler/eval:Ptr", ptr %l11
  %t150 = load i32, ptr %l7, !tbaa !23
  %t151 = load { i64, [4 x i64] }, ptr %l6
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2eput(ptr %v0, ptr %t147, i64 %t148, %"compiler/eval:Ptr" %t149, i32 %t150, { i64, [4 x i64] } %t151)
  br label %bb33
bb32:
  br label %bb48
bb33:
  store i64 1, ptr %l14, !tbaa !24
  %t157 = load i64, ptr %l8, !tbaa !24
  store i64 %t157, ptr %l15, !tbaa !24
  store i64 1, ptr %l16, !tbaa !24
  %t159 = load i64, ptr %l15, !tbaa !24
  %t160 = load i64, ptr %l14, !tbaa !24
  %t163 = icmp sgt i64 %t159, %t160
  br i1 %t163, label %bb34, label %bb35
bb34:
  %t165 = load i64, ptr %l16, !tbaa !24
  %t167 = icmp sgt i64 %t165, 0
  br i1 %t167, label %bb36, label %bb37
bb35:
  store i64 0, ptr %l96, !tbaa !24
  br label %bb39
bb36:
  %t169 = load i64, ptr %l15, !tbaa !24
  %t170 = load i64, ptr %l14, !tbaa !24
  %t173 = sub i64 %t169, %t170
  %t174 = load i64, ptr %l16, !tbaa !24
  %t177 = add i64 %t173, %t174
  %t179 = sub i64 %t177, 1
  %t180 = load i64, ptr %l16, !tbaa !24
  %t183 = sdiv i64 %t179, %t180
  store i64 %t183, ptr %l99, !tbaa !24
  br label %bb38
bb37:
  store i64 0, ptr %l99, !tbaa !24
  br label %bb38
bb38:
  %t185 = load i64, ptr %l99, !tbaa !24
  store i64 %t185, ptr %l96, !tbaa !24
  br label %bb39
bb39:
  %t186 = load i64, ptr %l96, !tbaa !24
  store i64 %t186, ptr %l17, !tbaa !24
  store i64 0, ptr %l18, !tbaa !24
  br label %bb40
bb40:
  store %olang.scope zeroinitializer, ptr %s7
  %t187 = load i64, ptr %l18, !tbaa !24
  %t188 = load i64, ptr %l17, !tbaa !24
  %t191 = icmp slt i64 %t187, %t188
  %t193 = xor i1 %t191, true
  br i1 %t193, label %bb41, label %bb42
bb41:
  call void @__olang_scope_close(ptr %s7)
  br label %bb47
bb42:
  br label %bb43
bb43:
  %t195 = load i64, ptr %l14, !tbaa !24
  %t196 = load i64, ptr %l18, !tbaa !24
  %t197 = load i64, ptr %l16, !tbaa !24
  %t200 = mul i64 %t196, %t197
  %t203 = add i64 %t195, %t200
  %t205 = load ptr, ptr %l0, !tbaa !29
  store ptr %t205, ptr %l117, !tbaa !29
  %t206 = getelementptr %"compiler/eval:Ptr", ptr %l11, i32 0, i32 0
  %t207 = load i64, ptr %t206, !tbaa !24
  %t209 = load i64, ptr %l9, !tbaa !24
  %t212 = mul i64 %t203, %t209
  %t215 = call %"compiler/eval:Ptr" @compiler_2feval_3aPtr_2ector(ptr %s7, i64 %t207, i64 %t212)
  store %"compiler/eval:Ptr" %t215, ptr %l122
  br label %bb44
bb44:
  %t216 = load %"compiler/eval:Ptr", ptr %l11
  %t217 = load i64, ptr %l9, !tbaa !24
  %t218 = load ptr, ptr %l117, !tbaa !29
  %t219 = load %"compiler/eval:Ptr", ptr %l122
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2ecopy(ptr %v0, ptr %t218, %"compiler/eval:Ptr" %t219, %"compiler/eval:Ptr" %t216, i64 %t217)
  br label %bb45
bb45:
  call void @__olang_scope_close(ptr %s7)
  br label %bb46
bb46:
  %t222 = load i64, ptr %l18, !tbaa !24
  %t224 = add i64 %t222, 1
  store i64 %t224, ptr %l18, !tbaa !24
  br label %bb40
bb47:
  br label %bb48
bb48:
  %t226 = load ptr, ptr %l0, !tbaa !29
  %t227 = load %"compiler/eval:Ptr", ptr %l2
  %t228 = load i64, ptr %l8, !tbaa !24
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2ewr(ptr %v0, ptr %t226, %"compiler/eval:Ptr" %t227, i64 8, i64 %t228)
  br label %bb49
bb49:
  %t232 = load ptr, ptr %l0, !tbaa !29
  store ptr %t232, ptr %l130, !tbaa !29
  %t233 = getelementptr %"compiler/eval:Ptr", ptr %l2, i32 0, i32 0
  %t234 = load i64, ptr %t233, !tbaa !24
  %t235 = getelementptr %"compiler/eval:Ptr", ptr %l2, i32 0, i32 1
  %t236 = load i64, ptr %t235, !tbaa !24
  %t238 = add i64 %t236, 8
  %t241 = call %"compiler/eval:Ptr" @compiler_2feval_3aPtr_2ector(ptr %s0, i64 %t234, i64 %t238)
  store %"compiler/eval:Ptr" %t241, ptr %l134
  br label %bb50
bb50:
  %t242 = load %"compiler/eval:Ptr", ptr %l11
  %t243 = load ptr, ptr %l130, !tbaa !29
  %t244 = load %"compiler/eval:Ptr", ptr %l134
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2ewrPtr(ptr %v0, ptr %t243, %"compiler/eval:Ptr" %t244, %"compiler/eval:Ptr" %t242)
  br label %bb51
bb51:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2feval_2ecompiler_2feval_3aMachine_2enewRef(ptr %v0, ptr %a0, i64 %a1, %"compiler/eval:Ptr" %a2, { i64, [1 x i64] } %a3, { i64, [4 x i64] } %a4, i32 %a5) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca %"compiler/eval:Ptr"
  %l3 = alloca { i64, [1 x i64] }
  %l4 = alloca { i64, [4 x i64] }
  %l6 = alloca i32
  %l7 = alloca %"compiler/eval:Ptr"
  %l8 = alloca { %"compiler/eval:Ptr", i64 }
  %l9 = alloca %"compiler/eval:Ptr"
  %l10 = alloca i64
  %l11 = alloca i64
  %l12 = alloca i64
  %l13 = alloca %"compiler/eval:Ptr"
  %l14 = alloca i64
  %l15 = alloca %"compiler/eval:Ptr"
  %l17 = alloca ptr
  %l21 = alloca i32
  %l22 = alloca i32
  %l25 = alloca i1
  %l29 = alloca %"compiler/eval:Ptr"
  %l35 = alloca { %"compiler/eval:Ptr", i64 }
  %l43 = alloca i64
  %l46 = alloca i64
  %l47 = alloca ptr
  %l50 = alloca i32
  %l51 = alloca i64
  %l57 = alloca %"compiler/eval:Ptr"
  %l67 = alloca ptr
  %l71 = alloca %"compiler/eval:Ptr"
  %l76 = alloca i64
  %l84 = alloca i1
  %l85 = alloca ptr
  %l86 = alloca %"compiler/eval:Ptr"
  %l92 = alloca %"compiler/eval:Ptr"
  %l93 = alloca ptr
  %l96 = alloca i64
  %l99 = alloca %"compiler/eval:Ptr"
  %l102 = alloca i64
  %l105 = alloca { i64, ptr }
  %s1 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  store %"compiler/eval:Ptr" %a2, ptr %l2
  store { i64, [1 x i64] } %a3, ptr %l3
  store { i64, [4 x i64] } %a4, ptr %l4
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/eval:Machine", ptr %t1, i32 0, i32 0
  %t4 = load ptr, ptr %t3, !tbaa !29
  store ptr %t4, ptr %l17, !tbaa !29
  %t5 = load ptr, ptr %l0, !tbaa !29
  %t7 = getelementptr %"compiler/eval:Machine", ptr %t5, i32 0, i32 0
  %t8 = load ptr, ptr %t7, !tbaa !29
  %t12 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %v0, ptr %t8, i32 %a5)
  store i32 %t12, ptr %l21
  br label %bb1
bb1:
  %t13 = load ptr, ptr %l17, !tbaa !29
  %t14 = load i32, ptr %l21, !tbaa !23
  %t15 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eReferent(ptr %v0, ptr %t13, i32 %t14)
  store i32 %t15, ptr %l22
  br label %bb2
bb2:
  %t16 = load i32, ptr %l22, !tbaa !23
  store i32 %t16, ptr %l6, !tbaa !23
  %t17 = load ptr, ptr %l0, !tbaa !29
  %t18 = load i32, ptr %l6, !tbaa !23
  %t21 = call i1 @compiler_2feval_2ecompiler_2feval_3aMachine_2ertArray(ptr %v0, ptr %t17, i32 %t18)
  store i1 %t21, ptr %l25
  br label %bb3
bb3:
  %t22 = load i1, ptr %l25, !tbaa !21
  br i1 %t22, label %bb4, label %bb5
bb4:
  store %olang.scope zeroinitializer, ptr %s1
  %t23 = load ptr, ptr %l0, !tbaa !29
  %t24 = load i64, ptr %l1, !tbaa !24
  %t25 = load { i64, [4 x i64] }, ptr %l4
  %t29 = call %"compiler/eval:Ptr" @compiler_2feval_2ecompiler_2feval_3aMachine_2eaddr(ptr %v0, ptr %t23, i64 %t24, { i64, [4 x i64] } %t25, i64 1)
  store %"compiler/eval:Ptr" %t29, ptr %l29
  br label %bb6
bb5:
  br label %bb28
bb6:
  %t30 = load %"compiler/eval:Ptr", ptr %l29
  store %"compiler/eval:Ptr" %t30, ptr %l7
  %t31 = load ptr, ptr %l0, !tbaa !29
  %t33 = getelementptr %"compiler/eval:Machine", ptr %t31, i32 0, i32 19
  %t34 = load i1, ptr %t33, !tbaa !21
  br i1 %t34, label %bb7, label %bb8
bb7:
  call void @__olang_scope_close(ptr %s1)
  br label %ret
bb8:
  br label %bb9
bb9:
  %t36 = load ptr, ptr %l0, !tbaa !29
  %t37 = load %"compiler/eval:Ptr", ptr %l7
  %t38 = load i32, ptr %l6, !tbaa !23
  %t42 = call { %"compiler/eval:Ptr", i64 } @compiler_2feval_2ecompiler_2feval_3aMachine_2earrayView(ptr %v0, ptr %t36, %"compiler/eval:Ptr" %t37, i32 %t38)
  store { %"compiler/eval:Ptr", i64 } %t42, ptr %l35
  br label %bb10
bb10:
  %t43 = load { %"compiler/eval:Ptr", i64 }, ptr %l35
  store { %"compiler/eval:Ptr", i64 } %t43, ptr %l8
  %t44 = getelementptr { %"compiler/eval:Ptr", i64 }, ptr %l8, i32 0, i32 0
  %t45 = load %"compiler/eval:Ptr", ptr %t44
  store %"compiler/eval:Ptr" %t45, ptr %l9
  %t47 = getelementptr { %"compiler/eval:Ptr", i64 }, ptr %l8, i32 0, i32 1
  %t48 = load i64, ptr %t47, !tbaa !24
  store i64 %t48, ptr %l10, !tbaa !24
  %t50 = load ptr, ptr %l0, !tbaa !29
  %t52 = getelementptr %"compiler/eval:Machine", ptr %t50, i32 0, i32 19
  %t53 = load i1, ptr %t52, !tbaa !21
  br i1 %t53, label %bb11, label %bb12
bb11:
  call void @__olang_scope_close(ptr %s1)
  br label %ret
bb12:
  br label %bb13
bb13:
  %t55 = load ptr, ptr %l0, !tbaa !29
  %t56 = load i64, ptr %l1, !tbaa !24
  %t57 = load { i64, [1 x i64] }, ptr %l3
  %t61 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2ebuildScope(ptr %v0, ptr %t55, i64 %t56, { i64, [1 x i64] } %t57)
  store i64 %t61, ptr %l43
  br label %bb14
bb14:
  %t62 = load i64, ptr %l43, !tbaa !24
  store i64 %t62, ptr %l11, !tbaa !24
  %t63 = load ptr, ptr %l0, !tbaa !29
  %t65 = getelementptr %"compiler/eval:Machine", ptr %t63, i32 0, i32 19
  %t66 = load i1, ptr %t65, !tbaa !21
  br i1 %t66, label %bb15, label %bb16
bb15:
  call void @__olang_scope_close(ptr %s1)
  br label %ret
bb16:
  br label %bb17
bb17:
  %t68 = load i64, ptr %l10, !tbaa !24
  store i64 %t68, ptr %l46, !tbaa !24
  %t69 = load ptr, ptr %l0, !tbaa !29
  store ptr %t69, ptr %l47, !tbaa !29
  %t70 = load ptr, ptr %l0, !tbaa !29
  %t71 = load i32, ptr %l6, !tbaa !23
  %t74 = call i32 @compiler_2feval_2ecompiler_2feval_3aMachine_2eelemOf(ptr %v0, ptr %t70, i32 %t71)
  store i32 %t74, ptr %l50
  br label %bb18
bb18:
  %t75 = load ptr, ptr %l47, !tbaa !29
  %t76 = load i32, ptr %l50, !tbaa !23
  %t77 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2esize(ptr %v0, ptr %t75, i32 %t76)
  store i64 %t77, ptr %l51
  br label %bb19
bb19:
  %t78 = load i64, ptr %l46, !tbaa !24
  %t79 = load i64, ptr %l51, !tbaa !24
  %t80 = mul i64 %t78, %t79
  store i64 %t80, ptr %l12, !tbaa !24
  %t82 = load ptr, ptr %l0, !tbaa !29
  %t83 = load i64, ptr %l12, !tbaa !24
  %t84 = load i64, ptr @G_2ecompiler_2feval_2eaValue, !tbaa !24
  %t85 = load i64, ptr %l11, !tbaa !24
  %t90 = call %"compiler/eval:Ptr" @compiler_2feval_2ecompiler_2feval_3aMachine_2eallocate(ptr %v0, ptr %t82, i64 %t83, i64 %t84, i64 %t85)
  store %"compiler/eval:Ptr" %t90, ptr %l57
  br label %bb20
bb20:
  %t91 = load %"compiler/eval:Ptr", ptr %l57
  store %"compiler/eval:Ptr" %t91, ptr %l13
  %t92 = load ptr, ptr %l0, !tbaa !29
  %t94 = getelementptr %"compiler/eval:Machine", ptr %t92, i32 0, i32 19
  %t95 = load i1, ptr %t94, !tbaa !21
  br i1 %t95, label %bb21, label %bb22
bb21:
  call void @__olang_scope_close(ptr %s1)
  br label %ret
bb22:
  br label %bb23
bb23:
  %t97 = load ptr, ptr %l0, !tbaa !29
  %t98 = load %"compiler/eval:Ptr", ptr %l13
  %t99 = load %"compiler/eval:Ptr", ptr %l9
  %t100 = load i64, ptr %l12, !tbaa !24
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2ecopy(ptr %v0, ptr %t97, %"compiler/eval:Ptr" %t98, %"compiler/eval:Ptr" %t99, i64 %t100)
  br label %bb24
bb24:
  %t105 = load ptr, ptr %l0, !tbaa !29
  %t106 = load %"compiler/eval:Ptr", ptr %l2
  %t107 = load i64, ptr %l10, !tbaa !24
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2ewr(ptr %v0, ptr %t105, %"compiler/eval:Ptr" %t106, i64 8, i64 %t107)
  br label %bb25
bb25:
  %t111 = load ptr, ptr %l0, !tbaa !29
  store ptr %t111, ptr %l67, !tbaa !29
  %t112 = getelementptr %"compiler/eval:Ptr", ptr %l2, i32 0, i32 0
  %t113 = load i64, ptr %t112, !tbaa !24
  %t114 = getelementptr %"compiler/eval:Ptr", ptr %l2, i32 0, i32 1
  %t115 = load i64, ptr %t114, !tbaa !24
  %t117 = add i64 %t115, 8
  %t120 = call %"compiler/eval:Ptr" @compiler_2feval_3aPtr_2ector(ptr %s1, i64 %t113, i64 %t117)
  store %"compiler/eval:Ptr" %t120, ptr %l71
  br label %bb26
bb26:
  %t121 = load %"compiler/eval:Ptr", ptr %l13
  %t122 = load ptr, ptr %l67, !tbaa !29
  %t123 = load %"compiler/eval:Ptr", ptr %l71
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2ewrPtr(ptr %v0, ptr %t122, %"compiler/eval:Ptr" %t123, %"compiler/eval:Ptr" %t121)
  br label %bb27
bb27:
  call void @__olang_scope_close(ptr %s1)
  br label %ret
bb28:
  %t125 = load ptr, ptr %l0, !tbaa !29
  %t126 = load i64, ptr %l1, !tbaa !24
  %t127 = load { i64, [1 x i64] }, ptr %l3
  %t131 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2ebuildScope(ptr %v0, ptr %t125, i64 %t126, { i64, [1 x i64] } %t127)
  store i64 %t131, ptr %l76
  br label %bb29
bb29:
  %t132 = load i64, ptr %l76, !tbaa !24
  store i64 %t132, ptr %l14, !tbaa !24
  %t133 = load ptr, ptr %l0, !tbaa !29
  %t135 = getelementptr %"compiler/eval:Machine", ptr %t133, i32 0, i32 19
  %t136 = load i1, ptr %t135, !tbaa !21
  br i1 %t136, label %bb30, label %bb31
bb30:
  br label %ret
bb31:
  br label %bb32
bb32:
  %t138 = load ptr, ptr %l0, !tbaa !29
  %t140 = getelementptr %"compiler/eval:Machine", ptr %t138, i32 0, i32 4
  %t141 = load ptr, ptr %l0, !tbaa !29
  %t143 = getelementptr %"compiler/eval:Machine", ptr %t141, i32 0, i32 0
  %t144 = load ptr, ptr %t143, !tbaa !29
  %t145 = load i32, ptr %l6, !tbaa !23
  %t149 = call i1 @compiler_2fmir_2ecompiler_2fmir_3aGenInfo_2eIsGen(ptr %v0, ptr %v0, ptr %t140, ptr %t144, i32 %t145)
  store i1 %t149, ptr %l84
  br label %bb33
bb33:
  %t150 = load i1, ptr %l84, !tbaa !21
  br i1 %t150, label %bb34, label %bb35
bb34:
  %t151 = load ptr, ptr %l0, !tbaa !29
  store ptr %t151, ptr %l85, !tbaa !29
  %t152 = load %"compiler/eval:Ptr", ptr %l2
  store %"compiler/eval:Ptr" %t152, ptr %l86
  %t153 = load ptr, ptr %l0, !tbaa !29
  %t154 = load i64, ptr %l1, !tbaa !24
  %t155 = load i64, ptr %l14, !tbaa !24
  %t156 = load i32, ptr %l6, !tbaa !23
  %t157 = load { i64, [4 x i64] }, ptr %l4
  %t163 = call %"compiler/eval:Ptr" @compiler_2feval_2ecompiler_2feval_3aMachine_2egenNew(ptr %v0, ptr %t153, i64 %t154, i64 %t155, i32 %t156, { i64, [4 x i64] } %t157)
  store %"compiler/eval:Ptr" %t163, ptr %l92
  br label %bb36
bb35:
  br label %bb38
bb36:
  %t164 = load ptr, ptr %l85, !tbaa !29
  %t165 = load %"compiler/eval:Ptr", ptr %l86
  %t166 = load %"compiler/eval:Ptr", ptr %l92
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2ewrPtr(ptr %v0, ptr %t164, %"compiler/eval:Ptr" %t165, %"compiler/eval:Ptr" %t166)
  br label %bb37
bb37:
  br label %ret
bb38:
  %t167 = load ptr, ptr %l0, !tbaa !29
  store ptr %t167, ptr %l93, !tbaa !29
  %t168 = load ptr, ptr %l0, !tbaa !29
  %t169 = load i32, ptr %l6, !tbaa !23
  %t172 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2esize(ptr %v0, ptr %t168, i32 %t169)
  store i64 %t172, ptr %l96
  br label %bb39
bb39:
  %t173 = load i64, ptr @G_2ecompiler_2feval_2eaValue, !tbaa !24
  %t174 = load i64, ptr %l14, !tbaa !24
  %t175 = load ptr, ptr %l93, !tbaa !29
  %t176 = load i64, ptr %l96, !tbaa !24
  %t179 = call %"compiler/eval:Ptr" @compiler_2feval_2ecompiler_2feval_3aMachine_2eallocate(ptr %v0, ptr %t175, i64 %t176, i64 %t173, i64 %t174)
  store %"compiler/eval:Ptr" %t179, ptr %l99
  br label %bb40
bb40:
  %t180 = load %"compiler/eval:Ptr", ptr %l99
  store %"compiler/eval:Ptr" %t180, ptr %l15
  %t181 = load ptr, ptr %l0, !tbaa !29
  %t183 = getelementptr %"compiler/eval:Machine", ptr %t181, i32 0, i32 4
  %t184 = getelementptr %"compiler/mir:GenInfo", ptr %t183, i32 0, i32 0
  %t186 = call i64 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2eLen_3cI64_2c_20Bool_3e(ptr %v0, ptr %t184)
  store i64 %t186, ptr %l102
  br label %bb41
bb41:
  %t187 = load i64, ptr %l102, !tbaa !24
  %t188 = icmp sgt i64 %t187, 0
  br i1 %t188, label %bb42, label %bb43
bb42:
  %t190 = load ptr, ptr %l0, !tbaa !29
  %t192 = getelementptr %"compiler/eval:Machine", ptr %t190, i32 0, i32 46
  %t193 = load { i64, ptr }, ptr %t192, !tbaa !27
  store { i64, ptr } %t193, ptr %l105, !tbaa !27
  %t194 = getelementptr %"compiler/eval:Ptr", ptr %l15, i32 0, i32 0
  %t195 = load i64, ptr %t194, !tbaa !24
  %t196 = load i64, ptr @G_2ecompiler_2feval_2eslotMask, !tbaa !24
  %t199 = and i64 %t195, %t196
  %t200 = load i32, ptr %l6, !tbaa !23
  %t203 = getelementptr { i64, ptr }, ptr %l105, i32 0, i32 1
  %t204 = load ptr, ptr %t203, !tbaa !27
  %t205 = getelementptr %"compiler/eval:alloc", ptr %t204, i64 %t199
  %t206 = getelementptr %"compiler/eval:alloc", ptr %t205, i32 0, i32 11
  store i32 %t200, ptr %t206, !tbaa !23
  br label %bb44
bb43:
  br label %bb44
bb44:
  %t207 = load ptr, ptr %l0, !tbaa !29
  %t208 = load i64, ptr %l1, !tbaa !24
  %t209 = load %"compiler/eval:Ptr", ptr %l15
  %t210 = load i32, ptr %l6, !tbaa !23
  %t211 = load { i64, [4 x i64] }, ptr %l4
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2eput(ptr %v0, ptr %t207, i64 %t208, %"compiler/eval:Ptr" %t209, i32 %t210, { i64, [4 x i64] } %t211)
  br label %bb45
bb45:
  %t217 = load ptr, ptr %l0, !tbaa !29
  %t218 = load %"compiler/eval:Ptr", ptr %l2
  %t219 = load %"compiler/eval:Ptr", ptr %l15
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2ewrPtr(ptr %v0, ptr %t217, %"compiler/eval:Ptr" %t218, %"compiler/eval:Ptr" %t219)
  br label %bb46
bb46:
  br label %ret
ret:
  ret void
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
  %t8 = load i32, ptr %l1, !range !{i32 0, i32 52}
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
  %t33 = load i32, ptr %l1, !range !{i32 0, i32 52}
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
  %t52 = load i32, ptr %l1, !range !{i32 0, i32 52}
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
  %t63 = load i32, ptr %l1, !range !{i32 0, i32 52}
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
  %t74 = load i32, ptr %l1, !range !{i32 0, i32 52}
  %t76 = trunc i64 12 to i32
  %t77 = icmp eq i32 %t74, %t76
  br i1 %t77, label %bb22, label %bb23
bb22:
  br label %bb26
bb23:
  %t79 = load i32, ptr %l1, !range !{i32 0, i32 52}
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
  %t90 = load i32, ptr %l1, !range !{i32 0, i32 52}
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
  %t102 = load i32, ptr %l1, !range !{i32 0, i32 52}
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
  %t114 = load i32, ptr %l1, !range !{i32 0, i32 52}
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
  %t126 = load i32, ptr %l1, !range !{i32 0, i32 52}
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
  %t138 = load i32, ptr %l1, !range !{i32 0, i32 52}
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

define dso_local void @compiler_2feval_2ecompiler_2feval_3aMachine_2epackedOp(ptr %v0, ptr %a0, i64 %a1, %"compiler/eval:Ptr" %a2, i32 %a3, %"compiler/mir:Range" %a4) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca %"compiler/eval:Ptr"
  %l4 = alloca %"compiler/mir:Range"
  %l5 = alloca { i64, [4 x i64] }
  %l6 = alloca i32
  %l7 = alloca i64
  %l8 = alloca i32
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca %"compiler/eval:Ptr"
  %l12 = alloca %"compiler/eval:Ptr"
  %l16 = alloca { i64, [4 x i64] }
  %l18 = alloca ptr
  %l22 = alloca i32
  %l23 = alloca i32
  %l24 = alloca ptr
  %l25 = alloca i64
  %l29 = alloca { i64, [4 x i64] }
  %l30 = alloca i64
  %l32 = alloca ptr
  %l36 = alloca i32
  %l37 = alloca { i64, ptr }
  %l38 = alloca { i64, ptr }
  %l44 = alloca { i64, ptr }
  %l49 = alloca i64
  %l50 = alloca ptr
  %l51 = alloca i64
  %l54 = alloca i64
  %l56 = alloca %"compiler/eval:Ptr"
  %l57 = alloca ptr
  %l58 = alloca %"compiler/eval:Ptr"
  %l62 = alloca %"compiler/eval:Ptr"
  %l70 = alloca %"compiler/eval:Ptr"
  %l76 = alloca ptr
  %l77 = alloca %"compiler/eval:Ptr"
  %l78 = alloca %"compiler/eval:Ptr"
  %l81 = alloca i64
  %l82 = alloca ptr
  %l83 = alloca %"compiler/eval:Ptr"
  %l84 = alloca i64
  %l85 = alloca i32
  %l86 = alloca ptr
  %l87 = alloca i64
  %l91 = alloca { i64, [4 x i64] }
  %l92 = alloca %"compiler/eval:Ptr"
  %s0 = alloca %olang.scope
  %s2 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  store %"compiler/eval:Ptr" %a2, ptr %l2
  store %"compiler/mir:Range" %a4, ptr %l4
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load i64, ptr %l1, !tbaa !24
  %t3 = load %"compiler/mir:Range", ptr %l4
  %t7 = call { i64, [4 x i64] } @compiler_2feval_2ecompiler_2feval_3aMachine_2earg(ptr %v0, ptr %t1, i64 %t2, %"compiler/mir:Range" %t3, i64 0)
  store { i64, [4 x i64] } %t7, ptr %l16
  br label %bb1
bb1:
  %t8 = load { i64, [4 x i64] }, ptr %l16
  store { i64, [4 x i64] } %t8, ptr %l5
  %t9 = load ptr, ptr %l0, !tbaa !29
  %t11 = getelementptr %"compiler/eval:Machine", ptr %t9, i32 0, i32 0
  %t12 = load ptr, ptr %t11, !tbaa !29
  store ptr %t12, ptr %l18, !tbaa !29
  %t13 = load ptr, ptr %l0, !tbaa !29
  %t14 = load i64, ptr %l1, !tbaa !24
  %t15 = load { i64, [4 x i64] }, ptr %l5
  %t19 = call i32 @compiler_2feval_2ecompiler_2feval_3aMachine_2eopType(ptr %v0, ptr %t13, i64 %t14, { i64, [4 x i64] } %t15)
  store i32 %t19, ptr %l22
  br label %bb2
bb2:
  %t20 = load ptr, ptr %l18, !tbaa !29
  %t21 = load i32, ptr %l22, !tbaa !23
  %t22 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %v0, ptr %t20, i32 %t21)
  store i32 %t22, ptr %l23
  br label %bb3
bb3:
  %t23 = load i32, ptr %l23, !tbaa !23
  store i32 %t23, ptr %l6, !tbaa !23
  %t24 = load ptr, ptr %l0, !tbaa !29
  store ptr %t24, ptr %l24, !tbaa !29
  %t25 = load i64, ptr %l1, !tbaa !24
  store i64 %t25, ptr %l25, !tbaa !24
  %t26 = load ptr, ptr %l0, !tbaa !29
  %t27 = load i64, ptr %l1, !tbaa !24
  %t28 = load %"compiler/mir:Range", ptr %l4
  %t32 = call { i64, [4 x i64] } @compiler_2feval_2ecompiler_2feval_3aMachine_2earg(ptr %v0, ptr %t26, i64 %t27, %"compiler/mir:Range" %t28, i64 1)
  store { i64, [4 x i64] } %t32, ptr %l29
  br label %bb4
bb4:
  %t33 = load ptr, ptr %l24, !tbaa !29
  %t34 = load i64, ptr %l25, !tbaa !24
  %t35 = load { i64, [4 x i64] }, ptr %l29
  %t36 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2escalar(ptr %v0, ptr %t33, i64 %t34, { i64, [4 x i64] } %t35)
  store i64 %t36, ptr %l30
  br label %bb5
bb5:
  %t37 = load i64, ptr %l30, !tbaa !24
  store i64 %t37, ptr %l7, !tbaa !24
  %t38 = load ptr, ptr %l0, !tbaa !29
  %t40 = getelementptr %"compiler/eval:Machine", ptr %t38, i32 0, i32 0
  %t41 = load ptr, ptr %t40, !tbaa !29
  store ptr %t41, ptr %l32, !tbaa !29
  %t42 = load ptr, ptr %l0, !tbaa !29
  %t44 = getelementptr %"compiler/eval:Machine", ptr %t42, i32 0, i32 0
  %t45 = load ptr, ptr %t44, !tbaa !29
  %t46 = load i32, ptr %l6, !tbaa !23
  %t49 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eFields(ptr %v0, ptr %t45, i32 %t46)
  store i32 %t49, ptr %l36
  br label %bb6
bb6:
  %t50 = load ptr, ptr %l32, !tbaa !29
  %t51 = load i32, ptr %l36, !tbaa !23
  %t52 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %s0, ptr %t50, i32 %t51)
  store { i64, ptr } %t52, ptr %l37
  br label %bb7
bb7:
  %t53 = load { i64, ptr }, ptr %l37, !tbaa !27
  store { i64, ptr } %t53, ptr %l38, !tbaa !27
  %t54 = load i64, ptr %l7, !tbaa !24
  %t56 = getelementptr { i64, ptr }, ptr %l38, i32 0, i32 1
  %t57 = load ptr, ptr %t56, !tbaa !27
  %t58 = getelementptr i32, ptr %t57, i64 %t54
  %t59 = load i32, ptr %t58, !tbaa !33
  store i32 %t59, ptr %l8, !tbaa !23
  %t61 = load ptr, ptr %l0, !tbaa !29
  %t63 = getelementptr %"compiler/eval:Machine", ptr %t61, i32 0, i32 0
  %t64 = load ptr, ptr %t63, !tbaa !29
  %t65 = load i32, ptr %l6, !tbaa !23
  %t68 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eBitOffsets(ptr %v0, ptr %s0, ptr %t64, i32 %t65)
  store { i64, ptr } %t68, ptr %l44
  br label %bb8
bb8:
  %t69 = load i64, ptr %l7, !tbaa !24
  %t71 = getelementptr { i64, ptr }, ptr %l44, i32 0, i32 1
  %t72 = load ptr, ptr %t71, !tbaa !27
  %t73 = getelementptr i64, ptr %t72, i64 %t69
  %t74 = load i64, ptr %t73, !tbaa !34
  store i64 %t74, ptr %l9, !tbaa !24
  %t76 = load ptr, ptr %l0, !tbaa !29
  %t77 = load i32, ptr %l6, !tbaa !23
  %t80 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2esize(ptr %v0, ptr %t76, i32 %t77)
  store i64 %t80, ptr %l49
  br label %bb9
bb9:
  %t81 = load i64, ptr %l49, !tbaa !24
  store i64 %t81, ptr %l10, !tbaa !24
  %t82 = load ptr, ptr %l0, !tbaa !29
  store ptr %t82, ptr %l50, !tbaa !29
  %t83 = load i64, ptr %l10, !tbaa !24
  store i64 %t83, ptr %l51, !tbaa !24
  %t84 = load ptr, ptr %l0, !tbaa !29
  %t85 = load i32, ptr %l8, !tbaa !23
  %t88 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2esize(ptr %v0, ptr %t84, i32 %t85)
  store i64 %t88, ptr %l54
  br label %bb10
bb10:
  %t89 = load i64, ptr %l51, !tbaa !24
  %t90 = load i64, ptr %l54, !tbaa !24
  %t91 = add i64 %t89, %t90
  %t92 = load ptr, ptr %l50, !tbaa !29
  %t94 = call %"compiler/eval:Ptr" @compiler_2feval_2ecompiler_2feval_3aMachine_2escratchFor(ptr %v0, ptr %t92, i64 0, i64 %t91)
  store %"compiler/eval:Ptr" %t94, ptr %l56
  br label %bb11
bb11:
  %t95 = load %"compiler/eval:Ptr", ptr %l56
  store %"compiler/eval:Ptr" %t95, ptr %l11
  %t96 = load ptr, ptr %l0, !tbaa !29
  store ptr %t96, ptr %l57, !tbaa !29
  %t97 = load %"compiler/eval:Ptr", ptr %l11
  store %"compiler/eval:Ptr" %t97, ptr %l58
  %t98 = load ptr, ptr %l0, !tbaa !29
  %t99 = load i64, ptr %l1, !tbaa !24
  %t100 = load { i64, [4 x i64] }, ptr %l5
  %t104 = call %"compiler/eval:Ptr" @compiler_2feval_2ecompiler_2feval_3aMachine_2eaddr(ptr %v0, ptr %t98, i64 %t99, { i64, [4 x i64] } %t100, i64 1)
  store %"compiler/eval:Ptr" %t104, ptr %l62
  br label %bb12
bb12:
  %t105 = load i64, ptr %l10, !tbaa !24
  %t106 = load ptr, ptr %l57, !tbaa !29
  %t107 = load %"compiler/eval:Ptr", ptr %l58
  %t108 = load %"compiler/eval:Ptr", ptr %l62
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2ecopy(ptr %v0, ptr %t106, %"compiler/eval:Ptr" %t107, %"compiler/eval:Ptr" %t108, i64 %t105)
  br label %bb13
bb13:
  %t110 = load ptr, ptr %l0, !tbaa !29
  %t112 = getelementptr %"compiler/eval:Machine", ptr %t110, i32 0, i32 19
  %t113 = load i1, ptr %t112, !tbaa !21
  br i1 %t113, label %bb14, label %bb15
bb14:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb15:
  br label %bb16
bb16:
  %t117 = trunc i64 40 to i32
  %t118 = icmp eq i32 %a3, %t117
  br i1 %t118, label %bb17, label %bb18
bb17:
  store %olang.scope zeroinitializer, ptr %s2
  %t120 = getelementptr %"compiler/eval:Ptr", ptr %l11, i32 0, i32 0
  %t121 = load i64, ptr %t120, !tbaa !24
  %t122 = load i64, ptr %l10, !tbaa !24
  %t125 = call %"compiler/eval:Ptr" @compiler_2feval_3aPtr_2ector(ptr %s2, i64 %t121, i64 %t122)
  store %"compiler/eval:Ptr" %t125, ptr %l70
  br label %bb19
bb18:
  br label %bb23
bb19:
  %t126 = load %"compiler/eval:Ptr", ptr %l70
  store %"compiler/eval:Ptr" %t126, ptr %l12
  %t127 = load ptr, ptr %l0, !tbaa !29
  %t128 = load %"compiler/eval:Ptr", ptr %l12
  %t129 = load i32, ptr %l8, !tbaa !23
  %t130 = load %"compiler/eval:Ptr", ptr %l11
  %t131 = load i64, ptr %l9, !tbaa !24
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2eunpackInto(ptr %v0, ptr %t127, %"compiler/eval:Ptr" %t128, i32 %t129, %"compiler/eval:Ptr" %t130, i64 %t131)
  br label %bb20
bb20:
  %t137 = load ptr, ptr %l0, !tbaa !29
  store ptr %t137, ptr %l76, !tbaa !29
  %t138 = load %"compiler/eval:Ptr", ptr %l2
  store %"compiler/eval:Ptr" %t138, ptr %l77
  %t139 = load %"compiler/eval:Ptr", ptr %l12
  store %"compiler/eval:Ptr" %t139, ptr %l78
  %t140 = load ptr, ptr %l0, !tbaa !29
  %t141 = load i32, ptr %l8, !tbaa !23
  %t144 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2esize(ptr %v0, ptr %t140, i32 %t141)
  store i64 %t144, ptr %l81
  br label %bb21
bb21:
  %t145 = load ptr, ptr %l76, !tbaa !29
  %t146 = load %"compiler/eval:Ptr", ptr %l77
  %t147 = load %"compiler/eval:Ptr", ptr %l78
  %t148 = load i64, ptr %l81, !tbaa !24
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2ecopy(ptr %v0, ptr %t145, %"compiler/eval:Ptr" %t146, %"compiler/eval:Ptr" %t147, i64 %t148)
  br label %bb22
bb22:
  call void @__olang_scope_close(ptr %s2)
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb23:
  %t149 = load ptr, ptr %l0, !tbaa !29
  store ptr %t149, ptr %l82, !tbaa !29
  %t150 = load %"compiler/eval:Ptr", ptr %l11
  store %"compiler/eval:Ptr" %t150, ptr %l83
  %t151 = load i64, ptr %l9, !tbaa !24
  store i64 %t151, ptr %l84, !tbaa !24
  %t152 = load i32, ptr %l8, !tbaa !23
  store i32 %t152, ptr %l85, !tbaa !23
  %t153 = load ptr, ptr %l0, !tbaa !29
  store ptr %t153, ptr %l86, !tbaa !29
  %t154 = load i64, ptr %l1, !tbaa !24
  store i64 %t154, ptr %l87, !tbaa !24
  %t155 = load ptr, ptr %l0, !tbaa !29
  %t156 = load i64, ptr %l1, !tbaa !24
  %t157 = load %"compiler/mir:Range", ptr %l4
  %t161 = call { i64, [4 x i64] } @compiler_2feval_2ecompiler_2feval_3aMachine_2earg(ptr %v0, ptr %t155, i64 %t156, %"compiler/mir:Range" %t157, i64 2)
  store { i64, [4 x i64] } %t161, ptr %l91
  br label %bb24
bb24:
  %t162 = load ptr, ptr %l86, !tbaa !29
  %t163 = load i64, ptr %l87, !tbaa !24
  %t164 = load { i64, [4 x i64] }, ptr %l91
  %t165 = call %"compiler/eval:Ptr" @compiler_2feval_2ecompiler_2feval_3aMachine_2eaddr(ptr %v0, ptr %t162, i64 %t163, { i64, [4 x i64] } %t164, i64 2)
  store %"compiler/eval:Ptr" %t165, ptr %l92
  br label %bb25
bb25:
  %t166 = load ptr, ptr %l82, !tbaa !29
  %t167 = load %"compiler/eval:Ptr", ptr %l83
  %t168 = load i64, ptr %l84, !tbaa !24
  %t169 = load i32, ptr %l85, !tbaa !23
  %t170 = load %"compiler/eval:Ptr", ptr %l92
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2epackInto(ptr %v0, ptr %t166, %"compiler/eval:Ptr" %t167, i64 %t168, i32 %t169, %"compiler/eval:Ptr" %t170)
  br label %bb26
bb26:
  %t171 = load ptr, ptr %l0, !tbaa !29
  %t172 = load %"compiler/eval:Ptr", ptr %l2
  %t173 = load %"compiler/eval:Ptr", ptr %l11
  %t174 = load i64, ptr %l10, !tbaa !24
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2ecopy(ptr %v0, ptr %t171, %"compiler/eval:Ptr" %t172, %"compiler/eval:Ptr" %t173, i64 %t174)
  br label %bb27
bb27:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
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

define dso_local void @compiler_2feval_2ecompiler_2feval_3aMachine_2eput(ptr %v0, ptr %a0, i64 %a1, %"compiler/eval:Ptr" %a2, i32 %a3, { i64, [4 x i64] } %a4) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca %"compiler/eval:Ptr"
  %l4 = alloca { i64, [4 x i64] }
  %l5 = alloca %"compiler/mir:Lvalue"
  %l6 = alloca { %"compiler/eval:Ptr", i32 }
  %l9 = alloca i32
  %l10 = alloca i64
  %l11 = alloca i64
  %l12 = alloca { i64, i64 }
  %l15 = alloca i32
  %l16 = alloca i32
  %l17 = alloca i64
  %l18 = alloca %"compiler/source:Span"
  %l27 = alloca { %"compiler/eval:Ptr", i32 }
  %l30 = alloca ptr
  %l31 = alloca %"compiler/eval:Ptr"
  %l32 = alloca %"compiler/eval:Ptr"
  %l35 = alloca i64
  %l42 = alloca i64
  %l45 = alloca i1
  %l48 = alloca i64
  %l59 = alloca i1
  %l62 = alloca i64
  %l65 = alloca i1
  %l68 = alloca i64
  %l76 = alloca i64
  %l82 = alloca { i64, i64 }
  %l90 = alloca ptr
  %l91 = alloca %"compiler/eval:Ptr"
  %l94 = alloca i64
  %l98 = alloca i64
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  store %"compiler/eval:Ptr" %a2, ptr %l2
  store { i64, [4 x i64] } %a4, ptr %l4
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load { i64, [4 x i64] }, ptr %l4
  %t3 = extractvalue { i64, [4 x i64] } %t1, 0
  %t4 = icmp eq i64 %t3, 0
  br i1 %t4, label %bb1, label %bb2
bb1:
  br label %bb3
bb2:
  br label %bb4
bb3:
  br label %bb52
bb4:
  %t6 = load { i64, [4 x i64] }, ptr %l4
  %t8 = extractvalue { i64, [4 x i64] } %t6, 0
  %t9 = icmp eq i64 %t8, 1
  br i1 %t9, label %bb5, label %bb6
bb5:
  %t11 = getelementptr { i64, [4 x i64] }, ptr %l4, i32 0, i32 1
  %t12 = getelementptr { %"compiler/mir:Lvalue" }, ptr %t11, i32 0, i32 0
  %t13 = load %"compiler/mir:Lvalue", ptr %t12
  store %"compiler/mir:Lvalue" %t13, ptr %l5
  br label %bb7
bb6:
  br label %bb11
bb7:
  %t15 = load ptr, ptr %l0, !tbaa !29
  %t16 = load i64, ptr %l1, !tbaa !24
  %t17 = load %"compiler/mir:Lvalue", ptr %l5
  %t21 = call { %"compiler/eval:Ptr", i32 } @compiler_2feval_2ecompiler_2feval_3aMachine_2eplace(ptr %v0, ptr %t15, i64 %t16, %"compiler/mir:Lvalue" %t17)
  store { %"compiler/eval:Ptr", i32 } %t21, ptr %l27
  br label %bb8
bb8:
  %t22 = load { %"compiler/eval:Ptr", i32 }, ptr %l27
  store { %"compiler/eval:Ptr", i32 } %t22, ptr %l6
  %t23 = getelementptr { %"compiler/eval:Ptr", i32 }, ptr %l6, i32 0, i32 0
  %t24 = load %"compiler/eval:Ptr", ptr %t23
  %t26 = getelementptr { %"compiler/eval:Ptr", i32 }, ptr %l6, i32 0, i32 1
  %t27 = load i32, ptr %t26, !tbaa !23
  %t29 = load ptr, ptr %l0, !tbaa !29
  store ptr %t29, ptr %l30, !tbaa !29
  %t30 = load %"compiler/eval:Ptr", ptr %l2
  store %"compiler/eval:Ptr" %t30, ptr %l31
  store %"compiler/eval:Ptr" %t24, ptr %l32
  %t32 = load ptr, ptr %l0, !tbaa !29
  %t36 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2esize(ptr %v0, ptr %t32, i32 %t27)
  store i64 %t36, ptr %l35
  br label %bb9
bb9:
  %t37 = load ptr, ptr %l30, !tbaa !29
  %t38 = load %"compiler/eval:Ptr", ptr %l31
  %t39 = load %"compiler/eval:Ptr", ptr %l32
  %t40 = load i64, ptr %l35, !tbaa !24
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2ecopy(ptr %v0, ptr %t37, %"compiler/eval:Ptr" %t38, %"compiler/eval:Ptr" %t39, i64 %t40)
  br label %bb10
bb10:
  br label %bb52
bb11:
  %t41 = load { i64, [4 x i64] }, ptr %l4
  %t43 = extractvalue { i64, [4 x i64] } %t41, 0
  %t44 = icmp eq i64 %t43, 2
  br i1 %t44, label %bb12, label %bb13
bb12:
  %t46 = getelementptr { i64, [4 x i64] }, ptr %l4, i32 0, i32 1
  %t47 = getelementptr { i32, i64 }, ptr %t46, i32 0, i32 0
  %t48 = load i32, ptr %t47
  store i32 %t48, ptr %l9, !tbaa !23
  %t50 = getelementptr { i64, [4 x i64] }, ptr %l4, i32 0, i32 1
  %t51 = getelementptr { i32, i64 }, ptr %t50, i32 0, i32 1
  %t52 = load i64, ptr %t51
  store i64 %t52, ptr %l10, !tbaa !24
  br label %bb14
bb13:
  br label %bb46
bb14:
  %t54 = load ptr, ptr %l0, !tbaa !29
  %t58 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2esize(ptr %v0, ptr %t54, i32 %a3)
  store i64 %t58, ptr %l42
  br label %bb15
bb15:
  %t59 = load i64, ptr %l42, !tbaa !24
  store i64 %t59, ptr %l11, !tbaa !24
  %t60 = load i64, ptr %l10, !tbaa !24
  %t62 = icmp ne i64 %t60, 0
  br i1 %t62, label %bb16, label %bb17
bb16:
  %t64 = load ptr, ptr %l0, !tbaa !29
  %t65 = load i32, ptr %l9, !tbaa !23
  %t68 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2eshape(ptr %v0, ptr %t64, i32 %t65)
  store i64 %t68, ptr %l48
  br label %bb18
bb17:
  store i1 false, ptr %l45, !tbaa !21
  br label %bb19
bb18:
  %t69 = load i64, ptr @G_2ecompiler_2feval_2evPair, !tbaa !24
  %t70 = load i64, ptr %l48, !tbaa !24
  %t72 = icmp eq i64 %t70, %t69
  store i1 %t72, ptr %l45, !tbaa !21
  br label %bb19
bb19:
  %t74 = load i1, ptr %l45, !tbaa !21
  br i1 %t74, label %bb20, label %bb21
bb20:
  %t75 = load ptr, ptr %l0, !tbaa !29
  %t76 = load %"compiler/eval:Ptr", ptr %l2
  %t77 = load i64, ptr %l11, !tbaa !24
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2ezero(ptr %v0, ptr %t75, %"compiler/eval:Ptr" %t76, i64 %t77)
  br label %bb22
bb21:
  %t81 = load i64, ptr %l10, !tbaa !24
  %t83 = icmp eq i64 %t81, 0
  br i1 %t83, label %bb24, label %bb25
bb22:
  %t85 = load ptr, ptr %l0, !tbaa !29
  %t86 = load %"compiler/eval:Ptr", ptr %l2
  %t87 = load i64, ptr %l10, !tbaa !24
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2ewr(ptr %v0, ptr %t85, %"compiler/eval:Ptr" %t86, i64 8, i64 %t87)
  br label %bb23
bb23:
  br label %bb45
bb24:
  store i1 true, ptr %l59, !tbaa !21
  br label %bb27
bb25:
  %t91 = load ptr, ptr %l0, !tbaa !29
  %t92 = load i32, ptr %l9, !tbaa !23
  %t95 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2eshape(ptr %v0, ptr %t91, i32 %t92)
  store i64 %t95, ptr %l62
  br label %bb26
bb26:
  %t96 = load i64, ptr @G_2ecompiler_2feval_2evAgg, !tbaa !24
  %t97 = load i64, ptr %l62, !tbaa !24
  %t99 = icmp eq i64 %t97, %t96
  store i1 %t99, ptr %l59, !tbaa !21
  br label %bb27
bb27:
  %t101 = load i1, ptr %l59, !tbaa !21
  br i1 %t101, label %bb28, label %bb29
bb28:
  store i1 true, ptr %l65, !tbaa !21
  br label %bb31
bb29:
  %t102 = load ptr, ptr %l0, !tbaa !29
  %t103 = load i32, ptr %l9, !tbaa !23
  %t106 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2eshape(ptr %v0, ptr %t102, i32 %t103)
  store i64 %t106, ptr %l68
  br label %bb30
bb30:
  %t107 = load i64, ptr @G_2ecompiler_2feval_2evFixed, !tbaa !24
  %t108 = load i64, ptr %l68, !tbaa !24
  %t110 = icmp eq i64 %t108, %t107
  store i1 %t110, ptr %l65, !tbaa !21
  br label %bb31
bb31:
  %t112 = load i1, ptr %l65, !tbaa !21
  br i1 %t112, label %bb32, label %bb33
bb32:
  %t113 = load ptr, ptr %l0, !tbaa !29
  %t114 = load %"compiler/eval:Ptr", ptr %l2
  %t115 = load i64, ptr %l11, !tbaa !24
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2ezero(ptr %v0, ptr %t113, %"compiler/eval:Ptr" %t114, i64 %t115)
  br label %bb34
bb33:
  %t119 = load ptr, ptr %l0, !tbaa !29
  %t120 = load i32, ptr %l9, !tbaa !23
  %t123 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2eshape(ptr %v0, ptr %t119, i32 %t120)
  store i64 %t123, ptr %l76
  br label %bb35
bb34:
  br label %bb44
bb35:
  %t124 = load i64, ptr @G_2ecompiler_2feval_2evWide, !tbaa !24
  %t125 = load i64, ptr %l76, !tbaa !24
  %t127 = icmp eq i64 %t125, %t124
  br i1 %t127, label %bb36, label %bb37
bb36:
  %t129 = load ptr, ptr %l0, !tbaa !29
  %t130 = load i32, ptr %l9, !tbaa !23
  %t131 = load i64, ptr %l10, !tbaa !24
  %t135 = call { i64, i64 } @compiler_2feval_2ecompiler_2feval_3aMachine_2ewideConst(ptr %v0, ptr %t129, i32 %t130, i64 %t131)
  store { i64, i64 } %t135, ptr %l82
  br label %bb38
bb37:
  %t136 = load ptr, ptr %l0, !tbaa !29
  store ptr %t136, ptr %l90, !tbaa !29
  %t137 = load %"compiler/eval:Ptr", ptr %l2
  store %"compiler/eval:Ptr" %t137, ptr %l91
  %t138 = load ptr, ptr %l0, !tbaa !29
  %t139 = load i32, ptr %l9, !tbaa !23
  %t142 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2ewidth(ptr %v0, ptr %t138, i32 %t139)
  store i64 %t142, ptr %l94
  br label %bb40
bb38:
  %t143 = load { i64, i64 }, ptr %l82
  store { i64, i64 } %t143, ptr %l12
  %t144 = getelementptr { i64, i64 }, ptr %l12, i32 0, i32 0
  %t145 = load i64, ptr %t144, !tbaa !24
  %t147 = getelementptr { i64, i64 }, ptr %l12, i32 0, i32 1
  %t148 = load i64, ptr %t147, !tbaa !24
  %t150 = load ptr, ptr %l0, !tbaa !29
  %t151 = load %"compiler/eval:Ptr", ptr %l2
  %t152 = load i32, ptr %l9, !tbaa !23
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2ewrWide(ptr %v0, ptr %t150, %"compiler/eval:Ptr" %t151, i32 %t152, i64 %t145, i64 %t148)
  br label %bb39
bb39:
  br label %bb43
bb40:
  %t160 = load ptr, ptr %l0, !tbaa !29
  %t161 = load i32, ptr %l9, !tbaa !23
  %t162 = load i64, ptr %l10, !tbaa !24
  %t166 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2ecanonBits(ptr %v0, ptr %t160, i32 %t161, i64 %t162)
  store i64 %t166, ptr %l98
  br label %bb41
bb41:
  %t167 = load ptr, ptr %l90, !tbaa !29
  %t168 = load %"compiler/eval:Ptr", ptr %l91
  %t169 = load i64, ptr %l94, !tbaa !24
  %t170 = load i64, ptr %l98, !tbaa !24
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2ewr(ptr %v0, ptr %t167, %"compiler/eval:Ptr" %t168, i64 %t169, i64 %t170)
  br label %bb42
bb42:
  br label %bb43
bb43:
  br label %bb44
bb44:
  br label %bb45
bb45:
  br label %bb52
bb46:
  %t171 = load { i64, [4 x i64] }, ptr %l4
  %t173 = extractvalue { i64, [4 x i64] } %t171, 0
  %t174 = icmp eq i64 %t173, 3
  br i1 %t174, label %bb47, label %bb48
bb47:
  %t176 = getelementptr { i64, [4 x i64] }, ptr %l4, i32 0, i32 1
  %t177 = getelementptr { i32, i32, i64, %"compiler/source:Span" }, ptr %t176, i32 0, i32 0
  %t178 = load i32, ptr %t177
  store i32 %t178, ptr %l15, !tbaa !23
  %t180 = getelementptr { i64, [4 x i64] }, ptr %l4, i32 0, i32 1
  %t181 = getelementptr { i32, i32, i64, %"compiler/source:Span" }, ptr %t180, i32 0, i32 1
  %t182 = load i32, ptr %t181
  store i32 %t182, ptr %l16, !tbaa !23
  %t184 = getelementptr { i64, [4 x i64] }, ptr %l4, i32 0, i32 1
  %t185 = getelementptr { i32, i32, i64, %"compiler/source:Span" }, ptr %t184, i32 0, i32 2
  %t186 = load i64, ptr %t185
  store i64 %t186, ptr %l17, !tbaa !24
  %t188 = getelementptr { i64, [4 x i64] }, ptr %l4, i32 0, i32 1
  %t189 = getelementptr { i32, i32, i64, %"compiler/source:Span" }, ptr %t188, i32 0, i32 3
  %t190 = load %"compiler/source:Span", ptr %t189
  store %"compiler/source:Span" %t190, ptr %l18
  br label %bb49
bb48:
  br label %bb51
bb49:
  %t192 = load ptr, ptr %l0, !tbaa !29
  %t193 = load i64, ptr %l1, !tbaa !24
  %t194 = load %"compiler/eval:Ptr", ptr %l2
  %t195 = load i32, ptr %l15, !tbaa !23
  %t196 = load i32, ptr %l16, !tbaa !23
  %t197 = load i64, ptr %l17, !tbaa !24
  %t198 = load %"compiler/source:Span", ptr %l18
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2eputData(ptr %v0, ptr %t192, i64 %t193, %"compiler/eval:Ptr" %t194, i32 %t195, i32 %t196, i64 %t197, %"compiler/source:Span" %t198)
  br label %bb50
bb50:
  br label %bb52
bb51:
  call void @__olang_check_failed(ptr @olang_loc_af1f9cfaa1609478_d5c4fc0e8d836404)
  unreachable
bb52:
  br label %ret
ret:
  ret void
}

define dso_local %"compiler/eval:Ptr" @compiler_2feval_2ecompiler_2feval_3aMachine_2erdPtrOrBits(ptr %v0, ptr %a0, %"compiler/eval:Ptr" %a1) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca i64
  %l5 = alloca i64
  %l12 = alloca i64
  %l14 = alloca { i64, ptr }
  %l20 = alloca i64
  %l21 = alloca %"compiler/eval:Ptr"
  %s0 = alloca %olang.scope
  %rv = alloca %"compiler/eval:Ptr"
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t5 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2eat(ptr %v0, ptr %t1, %"compiler/eval:Ptr" %a1, i64 8, i1 false)
  store i64 %t5, ptr %l5
  br label %bb1
bb1:
  %t6 = load i64, ptr %l5, !tbaa !24
  store i64 %t6, ptr %l2, !tbaa !24
  %t7 = load i64, ptr %l2, !tbaa !24
  %t9 = icmp slt i64 %t7, 0
  br i1 %t9, label %bb2, label %bb3
bb2:
  %t11 = load %"compiler/eval:Ptr", ptr @G_2ecompiler_2feval_2eNullPtr
  call void @__olang_scope_close(ptr %s0)
  store %"compiler/eval:Ptr" %t11, ptr %rv
  br label %ret
bb3:
  br label %bb4
bb4:
  %t13 = load i64, ptr %l2, !tbaa !24
  %t15 = srem i64 %t13, 8
  %t17 = icmp eq i64 %t15, 0
  br i1 %t17, label %bb5, label %bb6
bb5:
  %t19 = load ptr, ptr %l0, !tbaa !29
  %t21 = getelementptr %"compiler/eval:Machine", ptr %t19, i32 0, i32 43
  %t22 = load { i64, ptr }, ptr %t21, !tbaa !27
  store { i64, ptr } %t22, ptr %l14, !tbaa !27
  %t23 = load i64, ptr %l2, !tbaa !24
  %t25 = sdiv i64 %t23, 8
  %t27 = getelementptr { i64, ptr }, ptr %l14, i32 0, i32 1
  %t28 = load ptr, ptr %t27, !tbaa !27
  %t29 = getelementptr i64, ptr %t28, i64 %t25
  %t30 = load i64, ptr %t29, !tbaa !34
  store i64 %t30, ptr %l12, !tbaa !24
  br label %bb7
bb6:
  store i64 0, ptr %l12, !tbaa !24
  br label %bb7
bb7:
  %t32 = load ptr, ptr %l0, !tbaa !29
  %t33 = load i64, ptr %l2, !tbaa !24
  %t36 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2erdRaw(ptr %v0, ptr %t32, i64 %t33, i64 8)
  store i64 %t36, ptr %l20
  br label %bb8
bb8:
  %t37 = load i64, ptr %l12, !tbaa !24
  %t38 = load i64, ptr %l20, !tbaa !24
  %t39 = call %"compiler/eval:Ptr" @compiler_2feval_3aPtr_2ector(ptr %s0, i64 %t37, i64 %t38)
  store %"compiler/eval:Ptr" %t39, ptr %l21
  br label %bb9
bb9:
  call void @__olang_scope_close(ptr %s0)
  %t40 = load %"compiler/eval:Ptr", ptr %l21
  store %"compiler/eval:Ptr" %t40, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/eval:Ptr", ptr %rv
  ret %"compiler/eval:Ptr" %rr
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

define dso_local void @compiler_2feval_2ecompiler_2feval_3aMachine_2eref(ptr %v0, ptr %a0, i64 %a1, %"compiler/eval:Ptr" %a2, %"compiler/mir:Lvalue" %a3, i32 %a4) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca %"compiler/eval:Ptr"
  %l5 = alloca { %"compiler/eval:Ptr", i32 }
  %l6 = alloca %"compiler/eval:Ptr"
  %l7 = alloca i32
  %l11 = alloca { %"compiler/eval:Ptr", i32 }
  %l18 = alloca i64
  %l26 = alloca i64
  %l32 = alloca ptr
  %l33 = alloca %"compiler/eval:Ptr"
  %l36 = alloca i64
  %l37 = alloca ptr
  %l41 = alloca %"compiler/eval:Ptr"
  %s0 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store %"compiler/eval:Ptr" %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t7 = call { %"compiler/eval:Ptr", i32 } @compiler_2feval_2ecompiler_2feval_3aMachine_2eplace(ptr %v0, ptr %t1, i64 %a1, %"compiler/mir:Lvalue" %a3)
  store { %"compiler/eval:Ptr", i32 } %t7, ptr %l11
  br label %bb1
bb1:
  %t8 = load { %"compiler/eval:Ptr", i32 }, ptr %l11
  store { %"compiler/eval:Ptr", i32 } %t8, ptr %l5
  %t9 = getelementptr { %"compiler/eval:Ptr", i32 }, ptr %l5, i32 0, i32 0
  %t10 = load %"compiler/eval:Ptr", ptr %t9
  store %"compiler/eval:Ptr" %t10, ptr %l6
  %t12 = getelementptr { %"compiler/eval:Ptr", i32 }, ptr %l5, i32 0, i32 1
  %t13 = load i32, ptr %t12, !tbaa !23
  store i32 %t13, ptr %l7, !tbaa !23
  %t15 = load ptr, ptr %l0, !tbaa !29
  %t17 = getelementptr %"compiler/eval:Machine", ptr %t15, i32 0, i32 19
  %t18 = load i1, ptr %t17, !tbaa !21
  br i1 %t18, label %bb2, label %bb3
bb2:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb3:
  br label %bb4
bb4:
  %t20 = load ptr, ptr %l0, !tbaa !29
  %t24 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2eshape(ptr %v0, ptr %t20, i32 %a4)
  store i64 %t24, ptr %l18
  br label %bb5
bb5:
  %t25 = load i64, ptr @G_2ecompiler_2feval_2evPair, !tbaa !24
  %t26 = load i64, ptr %l18, !tbaa !24
  %t28 = icmp ne i64 %t26, %t25
  br i1 %t28, label %bb6, label %bb7
bb6:
  %t30 = load ptr, ptr %l0, !tbaa !29
  %t31 = load %"compiler/eval:Ptr", ptr %l2
  %t32 = load %"compiler/eval:Ptr", ptr %l6
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2ewrPtr(ptr %v0, ptr %t30, %"compiler/eval:Ptr" %t31, %"compiler/eval:Ptr" %t32)
  br label %bb8
bb7:
  br label %bb9
bb8:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb9:
  %t36 = load ptr, ptr %l0, !tbaa !29
  %t37 = load i32, ptr %l7, !tbaa !23
  %t40 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2eshape(ptr %v0, ptr %t36, i32 %t37)
  store i64 %t40, ptr %l26
  br label %bb10
bb10:
  %t41 = load i64, ptr @G_2ecompiler_2feval_2evPair, !tbaa !24
  %t42 = load i64, ptr %l26, !tbaa !24
  %t44 = icmp eq i64 %t42, %t41
  br i1 %t44, label %bb11, label %bb12
bb11:
  %t46 = load ptr, ptr %l0, !tbaa !29
  %t47 = load %"compiler/eval:Ptr", ptr %l2
  %t48 = load %"compiler/eval:Ptr", ptr %l6
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2ecopy(ptr %v0, ptr %t46, %"compiler/eval:Ptr" %t47, %"compiler/eval:Ptr" %t48, i64 16)
  br label %bb13
bb12:
  br label %bb14
bb13:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb14:
  %t52 = load ptr, ptr %l0, !tbaa !29
  store ptr %t52, ptr %l32, !tbaa !29
  %t53 = load %"compiler/eval:Ptr", ptr %l2
  store %"compiler/eval:Ptr" %t53, ptr %l33
  %t54 = load ptr, ptr %l0, !tbaa !29
  %t55 = load i32, ptr %l7, !tbaa !23
  %t58 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2efixedLen(ptr %v0, ptr %t54, i32 %t55)
  store i64 %t58, ptr %l36
  br label %bb15
bb15:
  %t59 = load ptr, ptr %l32, !tbaa !29
  %t60 = load %"compiler/eval:Ptr", ptr %l33
  %t61 = load i64, ptr %l36, !tbaa !24
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2ewr(ptr %v0, ptr %t59, %"compiler/eval:Ptr" %t60, i64 8, i64 %t61)
  br label %bb16
bb16:
  %t62 = load ptr, ptr %l0, !tbaa !29
  store ptr %t62, ptr %l37, !tbaa !29
  %t63 = getelementptr %"compiler/eval:Ptr", ptr %l2, i32 0, i32 0
  %t64 = load i64, ptr %t63, !tbaa !24
  %t65 = getelementptr %"compiler/eval:Ptr", ptr %l2, i32 0, i32 1
  %t66 = load i64, ptr %t65, !tbaa !24
  %t68 = add i64 %t66, 8
  %t71 = call %"compiler/eval:Ptr" @compiler_2feval_3aPtr_2ector(ptr %s0, i64 %t64, i64 %t68)
  store %"compiler/eval:Ptr" %t71, ptr %l41
  br label %bb17
bb17:
  %t72 = load %"compiler/eval:Ptr", ptr %l6
  %t73 = load ptr, ptr %l37, !tbaa !29
  %t74 = load %"compiler/eval:Ptr", ptr %l41
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2ewrPtr(ptr %v0, ptr %t73, %"compiler/eval:Ptr" %t74, %"compiler/eval:Ptr" %t72)
  br label %bb18
bb18:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2eregionHome(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l2 = alloca %"compiler/eval:scope"
  %l8 = alloca %"compiler/eval:scope"
  %l11 = alloca i64
  %rv = alloca i64
  %t9 = alloca %"compiler/eval:scope", align 8
  br label %start
start:
  br label %bb0
bb0:
  %t3 = getelementptr %"compiler/eval:Machine", ptr %a0, i32 0, i32 49
  %t5 = load i64, ptr @G_2ecompiler_2feval_2eslotMask, !tbaa !24
  %t8 = and i64 %a1, %t5
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3ascope_3e_2eAt_3ccompiler_2feval_3ascope_3e(ptr %t9, ptr %v0, ptr %t3, i64 %t8)
  call void @llvm.memmove.p0.p0.i64(ptr %l8, ptr %t9, i64 144, i1 false)
  br label %bb1
bb1:
  call void @llvm.memmove.p0.p0.i64(ptr %l2, ptr %l8, i64 144, i1 false)
  %t12 = getelementptr %"compiler/eval:scope", ptr %l2, i32 0, i32 16
  %t13 = load i64, ptr %t12, !tbaa !24
  %t15 = icmp ne i64 %t13, 0
  br i1 %t15, label %bb2, label %bb3
bb2:
  %t17 = getelementptr %"compiler/eval:scope", ptr %l2, i32 0, i32 16
  %t18 = load i64, ptr %t17, !tbaa !24
  store i64 %t18, ptr %l11, !tbaa !24
  br label %bb4
bb3:
  %t20 = getelementptr %"compiler/eval:scope", ptr %l2, i32 0, i32 5
  %t21 = load i64, ptr %t20, !tbaa !24
  store i64 %t21, ptr %l11, !tbaa !24
  br label %bb4
bb4:
  %t23 = load i64, ptr %l11, !tbaa !24
  store i64 %t23, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
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
  %t67 = getelementptr %"compiler/eval:Machine", ptr %t65, i32 0, i32 19
  %t68 = load i1, ptr %t67, !tbaa !21
  br i1 %t68, label %bb8, label %bb9
bb8:
  br label %ret
bb9:
  br label %bb10
bb10:
  %t70 = load i32, ptr %l3, !range !{i32 0, i32 52}
  %t72 = trunc i64 51 to i32
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
  %t181 = load i32, ptr %l3, !range !{i32 0, i32 52}
  %t183 = trunc i64 48 to i32
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
  %t187 = load i32, ptr %l3, !range !{i32 0, i32 52}
  %t189 = trunc i64 49 to i32
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
  %t194 = load i32, ptr %l114, !range !{i32 0, i32 52}
  store i32 %t194, ptr %l23
  %t195 = load ptr, ptr %l0, !tbaa !29
  %t196 = load i64, ptr %l1, !tbaa !24
  %t197 = load i32, ptr %l23, !range !{i32 0, i32 52}
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
  %t225 = load i32, ptr %l23, !range !{i32 0, i32 52}
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
  %t246 = load i32, ptr %l23, !range !{i32 0, i32 52}
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
  %t277 = load i32, ptr %l23, !range !{i32 0, i32 52}
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
  %t291 = load i32, ptr %l23, !range !{i32 0, i32 52}
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

define dso_local i1 @compiler_2feval_2ecompiler_2feval_3aMachine_2esettled(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca i64
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca { i64, ptr }
  %l6 = alloca { i64, ptr }
  %l7 = alloca { i64, ptr }
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca i64
  %l12 = alloca i64
  %l13 = alloca i64
  %l17 = alloca i64
  %l21 = alloca i1
  %l49 = alloca ptr
  %l50 = alloca i64
  %l52 = alloca i64
  %l56 = alloca { i64, ptr }
  %l58 = alloca ptr
  %l59 = alloca i64
  %l61 = alloca i64
  %l65 = alloca { i64, ptr }
  %l67 = alloca ptr
  %l68 = alloca i64
  %l70 = alloca i64
  %l74 = alloca { i64, ptr }
  %l81 = alloca i64
  %l84 = alloca i64
  %l103 = alloca { i64, ptr }
  %l105 = alloca { i64, ptr }
  %l109 = alloca { i64, ptr }
  %l111 = alloca { i64, ptr }
  %l115 = alloca { i64, ptr }
  %l117 = alloca { i64, ptr }
  %rv = alloca i1
  %t93 = alloca i64
  %t131 = alloca i64
  %t169 = alloca i64
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
  %t8 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eLayoutState(ptr %v0, ptr %t4, i32 %t5)
  store i64 %t8, ptr %l17
  br label %bb1
bb1:
  %t9 = load i64, ptr %l17, !tbaa !24
  store i64 %t9, ptr %l2, !tbaa !24
  %t10 = load i64, ptr %l2, !tbaa !24
  %t11 = load i64, ptr @G_2ecompiler_2ftypes_2eLaidOut, !tbaa !24
  %t14 = icmp ne i64 %t10, %t11
  br i1 %t14, label %bb2, label %bb3
bb2:
  %t16 = load i64, ptr %l2, !tbaa !24
  %t17 = load i64, ptr @G_2ecompiler_2ftypes_2eNoLayout, !tbaa !24
  %t20 = icmp ne i64 %t16, %t17
  store i1 %t20, ptr %l21, !tbaa !21
  br label %bb4
bb3:
  store i1 false, ptr %l21, !tbaa !21
  br label %bb4
bb4:
  %t22 = load i1, ptr %l21, !tbaa !21
  br i1 %t22, label %bb5, label %bb6
bb5:
  store i1 false, ptr %rv
  br label %ret
bb6:
  br label %bb7
bb7:
  %t24 = load i32, ptr %l1, !tbaa !23
  %t26 = sext i32 %t24 to i64
  store i64 %t26, ptr %l3, !tbaa !24
  %t28 = load i64, ptr %l3, !tbaa !24
  %t29 = load ptr, ptr %l0, !tbaa !29
  %t31 = getelementptr %"compiler/eval:Machine", ptr %t29, i32 0, i32 24
  %t32 = load { i64, ptr }, ptr %t31, !tbaa !27
  %t34 = extractvalue { i64, ptr } %t32, 0
  %t37 = icmp sge i64 %t28, %t34
  br i1 %t37, label %bb8, label %bb9
bb8:
  %t39 = load ptr, ptr %l0, !tbaa !29
  %t41 = getelementptr %"compiler/eval:Machine", ptr %t39, i32 0, i32 24
  %t42 = load { i64, ptr }, ptr %t41, !tbaa !27
  %t44 = extractvalue { i64, ptr } %t42, 0
  %t46 = mul i64 2, %t44
  store i64 %t46, ptr %l4, !tbaa !24
  br label %bb10
bb9:
  br label %bb52
bb10:
  %t48 = load i64, ptr %l4, !tbaa !24
  %t49 = load i64, ptr %l3, !tbaa !24
  %t52 = icmp sle i64 %t48, %t49
  %t54 = xor i1 %t52, true
  br i1 %t54, label %bb11, label %bb12
bb11:
  br label %bb15
bb12:
  br label %bb13
bb13:
  %t56 = load i64, ptr %l4, !tbaa !24
  %t58 = mul i64 %t56, 2
  store i64 %t58, ptr %l4, !tbaa !24
  br label %bb14
bb14:
  br label %bb10
bb15:
  %t60 = load ptr, ptr %l0, !tbaa !29
  %t62 = getelementptr %"compiler/eval:Machine", ptr %t60, i32 0, i32 24
  %t63 = load { i64, ptr }, ptr %t62, !tbaa !27
  store { i64, ptr } %t63, ptr %l5, !tbaa !27
  %t65 = load ptr, ptr %l0, !tbaa !29
  %t67 = getelementptr %"compiler/eval:Machine", ptr %t65, i32 0, i32 25
  %t68 = load { i64, ptr }, ptr %t67, !tbaa !27
  store { i64, ptr } %t68, ptr %l6, !tbaa !27
  %t70 = load ptr, ptr %l0, !tbaa !29
  %t72 = getelementptr %"compiler/eval:Machine", ptr %t70, i32 0, i32 26
  %t73 = load { i64, ptr }, ptr %t72, !tbaa !27
  store { i64, ptr } %t73, ptr %l7, !tbaa !27
  %t75 = load ptr, ptr %l0, !tbaa !29
  store ptr %t75, ptr %l49, !tbaa !29
  %t76 = ptrtoint ptr %v0 to i64
  store i64 %t76, ptr %l50, !tbaa !24
  %t77 = load i1, ptr @olang_2esole_2ecompiler_2feval_3aMachine_2e24
  br i1 %t77, label %bb16, label %bb17
bb16:
  %t79 = call ptr @__olang_region_make(ptr %v0)
  %t80 = ptrtoint ptr %t79 to i64
  store i64 %t80, ptr %l50, !tbaa !24
  br label %bb17
bb17:
  %t81 = load i64, ptr %l4, !tbaa !24
  store i64 %t81, ptr %l52, !tbaa !24
  %t82 = load i64, ptr %l52, !tbaa !24
  %t83 = icmp sge i64 %t82, 0
  br i1 %t83, label %bb18, label %bb19
bb18:
  %t85 = load i64, ptr %l52, !tbaa !24
  %t86 = icmp sle i64 %t85, 1152921504606846975
  br i1 %t86, label %bb20, label %bb21
bb19:
  call void @__olang_check_failed(ptr @olang_loc_a19345797ce3092f_df897154cd0b0613)
  unreachable
bb20:
  %t88 = load i64, ptr %l52, !tbaa !24
  %t89 = mul i64 %t88, 8
  %t90 = load i64, ptr %l50
  %t91 = inttoptr i64 %t90 to ptr
  %t92 = call ptr @__olang_scope_alloc(ptr %t91, i64 %t89)
  store i64 0, ptr %t93
  br label %fill.94
fill.94:
  %t97 = load i64, ptr %t93
  %t98 = icmp slt i64 %t97, %t88
  br i1 %t98, label %fillb.95, label %filld.96
fillb.95:
  %t99 = getelementptr i64, ptr %t92, i64 %t97
  store i64 -1, ptr %t99
  %t100 = add i64 %t97, 1
  store i64 %t100, ptr %t93
  br label %fill.94
filld.96:
  %t101 = insertvalue { i64, ptr } undef, i64 %t88, 0
  %t102 = insertvalue { i64, ptr } %t101, ptr %t92, 1
  %t103 = load ptr, ptr %l49, !tbaa !29
  %t104 = getelementptr %"compiler/eval:Machine", ptr %t103, i32 0, i32 24
  %t105 = load { i64, ptr }, ptr %t104, !tbaa !27
  store { i64, ptr } %t105, ptr %l56, !tbaa !27
  %t107 = load ptr, ptr %l49, !tbaa !29
  %t108 = getelementptr %"compiler/eval:Machine", ptr %t107, i32 0, i32 24
  store { i64, ptr } %t102, ptr %t108, !tbaa !27
  %t109 = load i1, ptr @olang_2esole_2ecompiler_2feval_3aMachine_2e24
  br i1 %t109, label %bb22, label %bb23
bb21:
  call void @__olang_check_failed(ptr @olang_loc_a19345797ce3092f_df897154cd0b0613)
  unreachable
bb22:
  %t111 = load { i64, ptr }, ptr %l56
  %t112 = extractvalue { i64, ptr } %t111, 1
  call void @__olang_region_release(ptr %t112)
  store { i64, ptr } zeroinitializer, ptr %l56
  br label %bb23
bb23:
  %t113 = load ptr, ptr %l0, !tbaa !29
  store ptr %t113, ptr %l58, !tbaa !29
  %t114 = ptrtoint ptr %v0 to i64
  store i64 %t114, ptr %l59, !tbaa !24
  %t115 = load i1, ptr @olang_2esole_2ecompiler_2feval_3aMachine_2e25
  br i1 %t115, label %bb24, label %bb25
bb24:
  %t117 = call ptr @__olang_region_make(ptr %v0)
  %t118 = ptrtoint ptr %t117 to i64
  store i64 %t118, ptr %l59, !tbaa !24
  br label %bb25
bb25:
  %t119 = load i64, ptr %l4, !tbaa !24
  store i64 %t119, ptr %l61, !tbaa !24
  %t120 = load i64, ptr %l61, !tbaa !24
  %t121 = icmp sge i64 %t120, 0
  br i1 %t121, label %bb26, label %bb27
bb26:
  %t123 = load i64, ptr %l61, !tbaa !24
  %t124 = icmp sle i64 %t123, 1152921504606846975
  br i1 %t124, label %bb28, label %bb29
bb27:
  call void @__olang_check_failed(ptr @olang_loc_8629e3295afcf15a_58f771f6fdbc30de)
  unreachable
bb28:
  %t126 = load i64, ptr %l61, !tbaa !24
  %t127 = mul i64 %t126, 8
  %t128 = load i64, ptr %l59
  %t129 = inttoptr i64 %t128 to ptr
  %t130 = call ptr @__olang_scope_alloc(ptr %t129, i64 %t127)
  store i64 0, ptr %t131
  br label %fill.132
fill.132:
  %t135 = load i64, ptr %t131
  %t136 = icmp slt i64 %t135, %t126
  br i1 %t136, label %fillb.133, label %filld.134
fillb.133:
  %t137 = getelementptr i64, ptr %t130, i64 %t135
  store i64 -1, ptr %t137
  %t138 = add i64 %t135, 1
  store i64 %t138, ptr %t131
  br label %fill.132
filld.134:
  %t139 = insertvalue { i64, ptr } undef, i64 %t126, 0
  %t140 = insertvalue { i64, ptr } %t139, ptr %t130, 1
  %t141 = load ptr, ptr %l58, !tbaa !29
  %t142 = getelementptr %"compiler/eval:Machine", ptr %t141, i32 0, i32 25
  %t143 = load { i64, ptr }, ptr %t142, !tbaa !27
  store { i64, ptr } %t143, ptr %l65, !tbaa !27
  %t145 = load ptr, ptr %l58, !tbaa !29
  %t146 = getelementptr %"compiler/eval:Machine", ptr %t145, i32 0, i32 25
  store { i64, ptr } %t140, ptr %t146, !tbaa !27
  %t147 = load i1, ptr @olang_2esole_2ecompiler_2feval_3aMachine_2e25
  br i1 %t147, label %bb30, label %bb31
bb29:
  call void @__olang_check_failed(ptr @olang_loc_8629e3295afcf15a_58f771f6fdbc30de)
  unreachable
bb30:
  %t149 = load { i64, ptr }, ptr %l65
  %t150 = extractvalue { i64, ptr } %t149, 1
  call void @__olang_region_release(ptr %t150)
  store { i64, ptr } zeroinitializer, ptr %l65
  br label %bb31
bb31:
  %t151 = load ptr, ptr %l0, !tbaa !29
  store ptr %t151, ptr %l67, !tbaa !29
  %t152 = ptrtoint ptr %v0 to i64
  store i64 %t152, ptr %l68, !tbaa !24
  %t153 = load i1, ptr @olang_2esole_2ecompiler_2feval_3aMachine_2e26
  br i1 %t153, label %bb32, label %bb33
bb32:
  %t155 = call ptr @__olang_region_make(ptr %v0)
  %t156 = ptrtoint ptr %t155 to i64
  store i64 %t156, ptr %l68, !tbaa !24
  br label %bb33
bb33:
  %t157 = load i64, ptr %l4, !tbaa !24
  store i64 %t157, ptr %l70, !tbaa !24
  %t158 = load i64, ptr %l70, !tbaa !24
  %t159 = icmp sge i64 %t158, 0
  br i1 %t159, label %bb34, label %bb35
bb34:
  %t161 = load i64, ptr %l70, !tbaa !24
  %t162 = icmp sle i64 %t161, 1152921504606846975
  br i1 %t162, label %bb36, label %bb37
bb35:
  call void @__olang_check_failed(ptr @olang_loc_985556dab320f6d9_efe4e1681fb7461d)
  unreachable
bb36:
  %t164 = load i64, ptr %l70, !tbaa !24
  %t165 = mul i64 %t164, 8
  %t166 = load i64, ptr %l68
  %t167 = inttoptr i64 %t166 to ptr
  %t168 = call ptr @__olang_scope_alloc(ptr %t167, i64 %t165)
  store i64 0, ptr %t169
  br label %fill.170
fill.170:
  %t173 = load i64, ptr %t169
  %t174 = icmp slt i64 %t173, %t164
  br i1 %t174, label %fillb.171, label %filld.172
fillb.171:
  %t175 = getelementptr i64, ptr %t168, i64 %t173
  store i64 -1, ptr %t175
  %t176 = add i64 %t173, 1
  store i64 %t176, ptr %t169
  br label %fill.170
filld.172:
  %t177 = insertvalue { i64, ptr } undef, i64 %t164, 0
  %t178 = insertvalue { i64, ptr } %t177, ptr %t168, 1
  %t179 = load ptr, ptr %l67, !tbaa !29
  %t180 = getelementptr %"compiler/eval:Machine", ptr %t179, i32 0, i32 26
  %t181 = load { i64, ptr }, ptr %t180, !tbaa !27
  store { i64, ptr } %t181, ptr %l74, !tbaa !27
  %t183 = load ptr, ptr %l67, !tbaa !29
  %t184 = getelementptr %"compiler/eval:Machine", ptr %t183, i32 0, i32 26
  store { i64, ptr } %t178, ptr %t184, !tbaa !27
  %t185 = load i1, ptr @olang_2esole_2ecompiler_2feval_3aMachine_2e26
  br i1 %t185, label %bb38, label %bb39
bb37:
  call void @__olang_check_failed(ptr @olang_loc_985556dab320f6d9_efe4e1681fb7461d)
  unreachable
bb38:
  %t187 = load { i64, ptr }, ptr %l74
  %t188 = extractvalue { i64, ptr } %t187, 1
  call void @__olang_region_release(ptr %t188)
  store { i64, ptr } zeroinitializer, ptr %l74
  br label %bb39
bb39:
  store i64 0, ptr %l8, !tbaa !24
  %t189 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t191 = extractvalue { i64, ptr } %t189, 0
  store i64 %t191, ptr %l9, !tbaa !24
  store i64 1, ptr %l10, !tbaa !24
  %t193 = load i64, ptr %l9, !tbaa !24
  %t194 = load i64, ptr %l8, !tbaa !24
  %t197 = icmp sgt i64 %t193, %t194
  br i1 %t197, label %bb40, label %bb41
bb40:
  %t199 = load i64, ptr %l10, !tbaa !24
  %t201 = icmp sgt i64 %t199, 0
  br i1 %t201, label %bb42, label %bb43
bb41:
  store i64 0, ptr %l81, !tbaa !24
  br label %bb45
bb42:
  %t203 = load i64, ptr %l9, !tbaa !24
  %t204 = load i64, ptr %l8, !tbaa !24
  %t207 = sub i64 %t203, %t204
  %t208 = load i64, ptr %l10, !tbaa !24
  %t211 = add i64 %t207, %t208
  %t213 = sub i64 %t211, 1
  %t214 = load i64, ptr %l10, !tbaa !24
  %t217 = sdiv i64 %t213, %t214
  store i64 %t217, ptr %l84, !tbaa !24
  br label %bb44
bb43:
  store i64 0, ptr %l84, !tbaa !24
  br label %bb44
bb44:
  %t219 = load i64, ptr %l84, !tbaa !24
  store i64 %t219, ptr %l81, !tbaa !24
  br label %bb45
bb45:
  %t220 = load i64, ptr %l81, !tbaa !24
  store i64 %t220, ptr %l11, !tbaa !24
  store i64 0, ptr %l12, !tbaa !24
  br label %bb46
bb46:
  %t221 = load i64, ptr %l12, !tbaa !24
  %t222 = load i64, ptr %l11, !tbaa !24
  %t225 = icmp slt i64 %t221, %t222
  %t227 = xor i1 %t225, true
  br i1 %t227, label %bb47, label %bb48
bb47:
  br label %bb51
bb48:
  br label %bb49
bb49:
  %t229 = load i64, ptr %l8, !tbaa !24
  %t230 = load i64, ptr %l12, !tbaa !24
  %t231 = load i64, ptr %l10, !tbaa !24
  %t234 = mul i64 %t230, %t231
  %t237 = add i64 %t229, %t234
  store i64 %t237, ptr %l13, !tbaa !24
  %t239 = load ptr, ptr %l0, !tbaa !29
  %t241 = getelementptr %"compiler/eval:Machine", ptr %t239, i32 0, i32 24
  %t242 = load { i64, ptr }, ptr %t241, !tbaa !27
  store { i64, ptr } %t242, ptr %l103, !tbaa !27
  %t243 = load i64, ptr %l13, !tbaa !24
  %t244 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t244, ptr %l105, !tbaa !27
  %t245 = load i64, ptr %l13, !tbaa !24
  %t247 = getelementptr { i64, ptr }, ptr %l105, i32 0, i32 1
  %t248 = load ptr, ptr %t247, !tbaa !27
  %t249 = getelementptr i64, ptr %t248, i64 %t245
  %t250 = load i64, ptr %t249, !tbaa !34
  %t253 = getelementptr { i64, ptr }, ptr %l103, i32 0, i32 1
  %t254 = load ptr, ptr %t253, !tbaa !27
  %t255 = getelementptr i64, ptr %t254, i64 %t243
  store i64 %t250, ptr %t255, !tbaa !34
  %t256 = load ptr, ptr %l0, !tbaa !29
  %t258 = getelementptr %"compiler/eval:Machine", ptr %t256, i32 0, i32 25
  %t259 = load { i64, ptr }, ptr %t258, !tbaa !27
  store { i64, ptr } %t259, ptr %l109, !tbaa !27
  %t260 = load i64, ptr %l13, !tbaa !24
  %t261 = load { i64, ptr }, ptr %l6, !tbaa !27
  store { i64, ptr } %t261, ptr %l111, !tbaa !27
  %t262 = load i64, ptr %l13, !tbaa !24
  %t264 = getelementptr { i64, ptr }, ptr %l111, i32 0, i32 1
  %t265 = load ptr, ptr %t264, !tbaa !27
  %t266 = getelementptr i64, ptr %t265, i64 %t262
  %t267 = load i64, ptr %t266, !tbaa !34
  %t270 = getelementptr { i64, ptr }, ptr %l109, i32 0, i32 1
  %t271 = load ptr, ptr %t270, !tbaa !27
  %t272 = getelementptr i64, ptr %t271, i64 %t260
  store i64 %t267, ptr %t272, !tbaa !34
  %t273 = load ptr, ptr %l0, !tbaa !29
  %t275 = getelementptr %"compiler/eval:Machine", ptr %t273, i32 0, i32 26
  %t276 = load { i64, ptr }, ptr %t275, !tbaa !27
  store { i64, ptr } %t276, ptr %l115, !tbaa !27
  %t277 = load i64, ptr %l13, !tbaa !24
  %t278 = load { i64, ptr }, ptr %l7, !tbaa !27
  store { i64, ptr } %t278, ptr %l117, !tbaa !27
  %t279 = load i64, ptr %l13, !tbaa !24
  %t281 = getelementptr { i64, ptr }, ptr %l117, i32 0, i32 1
  %t282 = load ptr, ptr %t281, !tbaa !27
  %t283 = getelementptr i64, ptr %t282, i64 %t279
  %t284 = load i64, ptr %t283, !tbaa !34
  %t287 = getelementptr { i64, ptr }, ptr %l115, i32 0, i32 1
  %t288 = load ptr, ptr %t287, !tbaa !27
  %t289 = getelementptr i64, ptr %t288, i64 %t277
  store i64 %t284, ptr %t289, !tbaa !34
  br label %bb50
bb50:
  %t290 = load i64, ptr %l12, !tbaa !24
  %t292 = add i64 %t290, 1
  store i64 %t292, ptr %l12, !tbaa !24
  br label %bb46
bb51:
  br label %bb52
bb52:
  store i1 true, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2eshape(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca i64
  %l3 = alloca i64
  %l11 = alloca i1
  %l13 = alloca { i64, ptr }
  %l18 = alloca { i64, ptr }
  %l23 = alloca i64
  %l26 = alloca i1
  %l28 = alloca { i64, ptr }
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
  %t8 = getelementptr %"compiler/eval:Machine", ptr %t6, i32 0, i32 25
  %t9 = load { i64, ptr }, ptr %t8, !tbaa !27
  %t11 = extractvalue { i64, ptr } %t9, 0
  %t14 = icmp slt i64 %t5, %t11
  br i1 %t14, label %bb1, label %bb2
bb1:
  %t16 = load ptr, ptr %l0, !tbaa !29
  %t18 = getelementptr %"compiler/eval:Machine", ptr %t16, i32 0, i32 25
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
  %t32 = getelementptr %"compiler/eval:Machine", ptr %t30, i32 0, i32 25
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
  %t41 = load ptr, ptr %l0, !tbaa !29
  %t42 = load i32, ptr %l1, !tbaa !23
  %t45 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2eshapeOf(ptr %v0, ptr %t41, i32 %t42)
  store i64 %t45, ptr %l23
  br label %bb7
bb7:
  %t46 = load i64, ptr %l23, !tbaa !24
  store i64 %t46, ptr %l3, !tbaa !24
  %t47 = load ptr, ptr %l0, !tbaa !29
  %t48 = load i32, ptr %l1, !tbaa !23
  %t51 = call i1 @compiler_2feval_2ecompiler_2feval_3aMachine_2esettled(ptr %v0, ptr %t47, i32 %t48)
  store i1 %t51, ptr %l26
  br label %bb8
bb8:
  %t52 = load i1, ptr %l26, !tbaa !21
  br i1 %t52, label %bb9, label %bb10
bb9:
  %t53 = load ptr, ptr %l0, !tbaa !29
  %t55 = getelementptr %"compiler/eval:Machine", ptr %t53, i32 0, i32 25
  %t56 = load { i64, ptr }, ptr %t55, !tbaa !27
  store { i64, ptr } %t56, ptr %l28, !tbaa !27
  %t57 = load i64, ptr %l2, !tbaa !24
  %t58 = load i64, ptr %l3, !tbaa !24
  %t61 = getelementptr { i64, ptr }, ptr %l28, i32 0, i32 1
  %t62 = load ptr, ptr %t61, !tbaa !27
  %t63 = getelementptr i64, ptr %t62, i64 %t57
  store i64 %t58, ptr %t63, !tbaa !34
  br label %bb11
bb10:
  br label %bb11
bb11:
  %t64 = load i64, ptr %l3, !tbaa !24
  store i64 %t64, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
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
  %t8 = getelementptr %"compiler/eval:Machine", ptr %t6, i32 0, i32 24
  %t9 = load { i64, ptr }, ptr %t8, !tbaa !27
  %t11 = extractvalue { i64, ptr } %t9, 0
  %t14 = icmp slt i64 %t5, %t11
  br i1 %t14, label %bb1, label %bb2
bb1:
  %t16 = load ptr, ptr %l0, !tbaa !29
  %t18 = getelementptr %"compiler/eval:Machine", ptr %t16, i32 0, i32 24
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
  %t32 = getelementptr %"compiler/eval:Machine", ptr %t30, i32 0, i32 24
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
  %t81 = getelementptr %"compiler/eval:Machine", ptr %t79, i32 0, i32 24
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
  %l433 = alloca { i64, ptr }
  %l435 = alloca { i64, ptr }
  %l448 = alloca %"compiler/eval:scope"
  %l452 = alloca ptr
  %l453 = alloca i64
  %l454 = alloca i32
  %l458 = alloca %"compiler/eval:scope"
  %l462 = alloca i64
  %l466 = alloca ptr
  %l474 = alloca ptr
  %s0 = alloca %olang.scope
  %s5 = alloca %olang.scope
  %t630 = alloca { i64, [4 x i64] }, align 8
  %t752 = alloca { i64, [5 x i64] }, align 8
  %t852 = alloca %"compiler/eval:scope", align 8
  %t870 = alloca %"compiler/eval:scope", align 8
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
  %t16 = getelementptr %"compiler/eval:Machine", ptr %t14, i32 0, i32 53
  %t17 = load i64, ptr %l2, !tbaa !24
  %t20 = call %"compiler/eval:task" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3atask_3e_2eAt_3ccompiler_2feval_3atask_3e(ptr %v0, ptr %t16, i64 %t17)
  store %"compiler/eval:task" %t20, ptr %l77
  br label %bb5
bb5:
  %t21 = load %"compiler/eval:task", ptr %l77
  store %"compiler/eval:task" %t21, ptr %l3
  %t22 = load ptr, ptr %l0, !tbaa !29
  %t24 = getelementptr %"compiler/eval:Machine", ptr %t22, i32 0, i32 22
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
  %t42 = getelementptr %"compiler/eval:Machine", ptr %t40, i32 0, i32 56
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
  %t411 = getelementptr %"compiler/eval:Machine", ptr %t409, i32 0, i32 46
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
  %t438 = getelementptr %"compiler/eval:Machine", ptr %t436, i32 0, i32 27
  store ptr %t438, ptr %l266, !tbaa !29
  %t439 = load ptr, ptr %l0, !tbaa !29
  %t441 = getelementptr %"compiler/eval:Machine", ptr %t439, i32 0, i32 28
  %t442 = load ptr, ptr %l0, !tbaa !29
  %t444 = getelementptr %"compiler/eval:Machine", ptr %t442, i32 0, i32 46
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
  %t491 = getelementptr %"compiler/eval:Machine", ptr %t489, i32 0, i32 22
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
  %t580 = getelementptr %"compiler/eval:Machine", ptr %t578, i32 0, i32 57
  %t581 = load { i64, ptr }, ptr %t580, !tbaa !27
  store { i64, ptr } %t581, ptr %l333, !tbaa !27
  %t582 = load ptr, ptr %l0, !tbaa !29
  %t584 = getelementptr %"compiler/eval:Machine", ptr %t582, i32 0, i32 55
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
  %t599 = getelementptr %"compiler/eval:Machine", ptr %t597, i32 0, i32 67
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
  %t760 = insertvalue { i32, i64, %"compiler/source:Span", { i64, ptr } } %t759, { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d1, i32 0, i32 1) }, 3
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
  %t791 = getelementptr %"compiler/eval:Machine", ptr %t789, i32 0, i32 55
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
  %t803 = getelementptr %"compiler/mir:BasicBlock", ptr %l427, i32 0, i32 1
  %t804 = load { i64, [8 x i64] }, ptr %t803
  store { i64, [8 x i64] } %t804, ptr %l59
  %t806 = load { i64, [8 x i64] }, ptr %l59
  %t808 = extractvalue { i64, [8 x i64] } %t806, 0
  %t809 = icmp eq i64 %t808, 8
  br i1 %t809, label %bb163, label %bb164
bb163:
  %t811 = getelementptr { i64, [8 x i64] }, ptr %l59, i32 0, i32 1
  %t812 = getelementptr { %"compiler/source:Span", i32, i32, i32, i32 }, ptr %t811, i32 0, i32 1
  %t813 = load i32, ptr %t812
  store i32 %t813, ptr %l60, !tbaa !23
  br label %bb165
bb164:
  br label %bb175
bb165:
  %t815 = load ptr, ptr %l0, !tbaa !29
  %t817 = getelementptr %"compiler/eval:Machine", ptr %t815, i32 0, i32 57
  %t818 = load { i64, ptr }, ptr %t817, !tbaa !27
  store { i64, ptr } %t818, ptr %l433, !tbaa !27
  %t819 = load ptr, ptr %l0, !tbaa !29
  %t821 = getelementptr %"compiler/eval:Machine", ptr %t819, i32 0, i32 55
  %t822 = load { i64, ptr }, ptr %t821, !tbaa !27
  store { i64, ptr } %t822, ptr %l435, !tbaa !27
  %t823 = load i64, ptr %l6, !tbaa !24
  %t825 = getelementptr { i64, ptr }, ptr %l435, i32 0, i32 1
  %t826 = load ptr, ptr %t825, !tbaa !27
  %t827 = getelementptr %"compiler/eval:frame", ptr %t826, i64 %t823
  %t828 = getelementptr %"compiler/eval:frame", ptr %t827, i32 0, i32 4
  %t829 = load i64, ptr %t828, !tbaa !24
  %t830 = load i32, ptr %l60, !tbaa !23
  %t832 = sext i32 %t830 to i64
  %t835 = add i64 %t829, %t832
  %t837 = getelementptr { i64, ptr }, ptr %l433, i32 0, i32 1
  %t838 = load ptr, ptr %t837, !tbaa !27
  %t839 = getelementptr i64, ptr %t838, i64 %t835
  %t840 = load i64, ptr %t839, !tbaa !34
  %t843 = load i64, ptr @G_2ecompiler_2feval_2eslotMask, !tbaa !24
  %t846 = and i64 %t840, %t843
  store i64 %t846, ptr %l62, !tbaa !24
  %t848 = load ptr, ptr %l0, !tbaa !29
  %t850 = getelementptr %"compiler/eval:Machine", ptr %t848, i32 0, i32 49
  %t851 = load i64, ptr %l62, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3ascope_3e_2eAt_3ccompiler_2feval_3ascope_3e(ptr %t852, ptr %v0, ptr %t850, i64 %t851)
  call void @llvm.memmove.p0.p0.i64(ptr %l448, ptr %t852, i64 144, i1 false)
  br label %bb166
bb166:
  %t855 = getelementptr %"compiler/eval:scope", ptr %l448, i32 0, i32 12
  %t856 = load i64, ptr %t855, !tbaa !24
  %t858 = icmp eq i64 %t856, 0
  br i1 %t858, label %bb167, label %bb168
bb167:
  %t860 = load i64, ptr %l62, !tbaa !24
  store i64 %t860, ptr %l63, !tbaa !24
  %t862 = load ptr, ptr %l0, !tbaa !29
  store ptr %t862, ptr %l452, !tbaa !29
  %t863 = getelementptr %"compiler/eval:frame", ptr %l1, i32 0, i32 13
  %t864 = load i64, ptr %t863, !tbaa !24
  store i64 %t864, ptr %l453, !tbaa !24
  %t865 = load i32, ptr %l11, !tbaa !23
  store i32 %t865, ptr %l454, !tbaa !23
  %t866 = load ptr, ptr %l0, !tbaa !29
  %t868 = getelementptr %"compiler/eval:Machine", ptr %t866, i32 0, i32 49
  %t869 = load i64, ptr %l62, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3ascope_3e_2eAt_3ccompiler_2feval_3ascope_3e(ptr %t870, ptr %v0, ptr %t868, i64 %t869)
  call void @llvm.memmove.p0.p0.i64(ptr %l458, ptr %t870, i64 144, i1 false)
  br label %bb169
bb168:
  %t873 = load ptr, ptr %l0, !tbaa !29
  %t874 = getelementptr %"compiler/eval:task", ptr %l3, i32 0, i32 4
  %t875 = load i64, ptr %t874, !tbaa !24
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2epayDrop(ptr %v0, ptr %t873, i64 %t875)
  br label %bb173
bb169:
  %t878 = getelementptr %"compiler/eval:scope", ptr %l458, i32 0, i32 14
  %t879 = load i64, ptr %t878, !tbaa !24
  %t881 = trunc i64 %t879 to i32
  %t883 = load ptr, ptr %l452, !tbaa !29
  %t884 = load i64, ptr %l453, !tbaa !24
  %t885 = load i32, ptr %l454, !tbaa !23
  %t887 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2erecode(ptr %v0, ptr %t883, i64 %t884, i32 %t885, i32 %t881)
  store i64 %t887, ptr %l462
  br label %bb170
bb170:
  %t888 = load i64, ptr %l462, !tbaa !24
  store i64 %t888, ptr %l64, !tbaa !24
  %t889 = load ptr, ptr %l0, !tbaa !29
  %t891 = getelementptr %"compiler/eval:Machine", ptr %t889, i32 0, i32 49
  %t892 = load i64, ptr %l63, !tbaa !24
  %t895 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3ascope_3e_2eRefMut_3ccompiler_2feval_3ascope_3e(ptr %v0, ptr %v0, ptr %t891, i64 %t892)
  store ptr %t895, ptr %l466
  br label %bb171
bb171:
  %t896 = load ptr, ptr %l466, !tbaa !29
  %t898 = load i64, ptr %l64, !tbaa !24
  %t901 = getelementptr %"compiler/eval:scope", ptr %t896, i32 0, i32 12
  store i64 %t898, ptr %t901, !tbaa !24
  %t902 = load i64, ptr %l62, !tbaa !24
  %t904 = getelementptr %"compiler/eval:task", ptr %l3, i32 0, i32 4
  %t905 = load i64, ptr %t904, !tbaa !24
  store i64 %t905, ptr %l67, !tbaa !24
  %t907 = load ptr, ptr %l0, !tbaa !29
  %t909 = getelementptr %"compiler/eval:Machine", ptr %t907, i32 0, i32 49
  %t913 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3ascope_3e_2eRefMut_3ccompiler_2feval_3ascope_3e(ptr %v0, ptr %v0, ptr %t909, i64 %t902)
  store ptr %t913, ptr %l474
  br label %bb172
bb172:
  %t914 = load ptr, ptr %l474, !tbaa !29
  %t916 = load i64, ptr %l67, !tbaa !24
  %t919 = getelementptr %"compiler/eval:scope", ptr %t914, i32 0, i32 13
  store i64 %t916, ptr %t919, !tbaa !24
  br label %bb174
bb173:
  br label %bb174
bb174:
  br label %bb185
bb175:
  br i1 true, label %bb176, label %bb177
bb176:
  br label %bb178
bb177:
  br label %bb184
bb178:
  %t920 = load ptr, ptr %l0, !tbaa !29
  %t922 = getelementptr %"compiler/eval:Machine", ptr %t920, i32 0, i32 84
  %t923 = load i1, ptr %t922, !tbaa !21
  br i1 %t923, label %bb179, label %bb180
bb179:
  %t925 = load ptr, ptr %l0, !tbaa !29
  %t926 = getelementptr %"compiler/eval:task", ptr %l3, i32 0, i32 4
  %t927 = load i64, ptr %t926, !tbaa !24
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2epayDrop(ptr %v0, ptr %t925, i64 %t927)
  br label %bb181
bb180:
  %t930 = load ptr, ptr %l0, !tbaa !29
  %t931 = load { i64, ptr }, ptr @G_2ecompiler_2feval_2eWhyNoClause, !tbaa !27
  %t932 = load ptr, ptr @__olang_prog_scope
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2erefuse(ptr %v0, ptr %t932, ptr %t930, { i64, ptr } %t931)
  br label %bb182
bb181:
  br label %bb183
bb182:
  br label %bb183
bb183:
  br label %bb185
bb184:
  call void @__olang_check_failed(ptr @olang_loc_295f7f77f101c149_2aa6184739b6cdf5)
  unreachable
bb185:
  %t935 = load ptr, ptr %l0, !tbaa !29
  %t936 = load i64, ptr %l2, !tbaa !24
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2efreeTask(ptr %v0, ptr %t935, i64 %t936)
  br label %bb186
bb186:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2feval_2ecompiler_2feval_3aMachine_2etext(ptr %v0, ptr %a0, i64 %a1, %"compiler/eval:Ptr" %a2, { i64, [1 x i64] } %a3, { i64, [1 x i64] } %a4) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca %"compiler/eval:Ptr"
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca %"compiler/eval:Ptr"
  %l12 = alloca i64
  %l16 = alloca i64
  %l19 = alloca i1
  %l22 = alloca i1
  %l29 = alloca %"compiler/eval:scope"
  %l35 = alloca %"compiler/eval:Ptr"
  %l40 = alloca ptr
  %l41 = alloca %"compiler/eval:Ptr"
  %l47 = alloca %"compiler/eval:scope"
  %l49 = alloca %"compiler/eval:Ptr"
  %l54 = alloca ptr
  %l58 = alloca %"compiler/eval:Ptr"
  %s0 = alloca %olang.scope
  %s3 = alloca %olang.scope
  %t39 = alloca %"compiler/eval:scope", align 8
  %t74 = alloca %"compiler/eval:scope", align 8
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  store %"compiler/eval:Ptr" %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load i64, ptr %l1, !tbaa !24
  %t7 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2escopeOf(ptr %v0, ptr %t1, i64 %t2, { i64, [1 x i64] } %a3)
  store i64 %t7, ptr %l12
  br label %bb1
bb1:
  %t8 = load i64, ptr %l12, !tbaa !24
  store i64 %t8, ptr %l5, !tbaa !24
  %t9 = load ptr, ptr %l0, !tbaa !29
  %t10 = load i64, ptr %l1, !tbaa !24
  %t15 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2ebuildScope(ptr %v0, ptr %t9, i64 %t10, { i64, [1 x i64] } %a4)
  store i64 %t15, ptr %l16
  br label %bb2
bb2:
  %t16 = load i64, ptr %l16, !tbaa !24
  store i64 %t16, ptr %l6, !tbaa !24
  %t17 = load ptr, ptr %l0, !tbaa !29
  %t19 = getelementptr %"compiler/eval:Machine", ptr %t17, i32 0, i32 19
  %t20 = load i1, ptr %t19, !tbaa !21
  br i1 %t20, label %bb3, label %bb4
bb3:
  store i1 true, ptr %l19, !tbaa !21
  br label %bb6
bb4:
  %t22 = load ptr, ptr %l0, !tbaa !29
  %t23 = load i64, ptr %l5, !tbaa !24
  %t26 = call i1 @compiler_2feval_2ecompiler_2feval_3aMachine_2elive(ptr %v0, ptr %t22, i64 %t23)
  store i1 %t26, ptr %l22
  br label %bb5
bb5:
  %t27 = load i1, ptr %l22, !tbaa !21
  %t28 = xor i1 %t27, true
  store i1 %t28, ptr %l19, !tbaa !21
  br label %bb6
bb6:
  %t30 = load i1, ptr %l19, !tbaa !21
  br i1 %t30, label %bb7, label %bb8
bb7:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb8:
  br label %bb9
bb9:
  %t31 = load ptr, ptr %l0, !tbaa !29
  %t33 = getelementptr %"compiler/eval:Machine", ptr %t31, i32 0, i32 49
  %t34 = load i64, ptr %l5, !tbaa !24
  %t35 = load i64, ptr @G_2ecompiler_2feval_2eslotMask, !tbaa !24
  %t38 = and i64 %t34, %t35
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3ascope_3e_2eAt_3ccompiler_2feval_3ascope_3e(ptr %t39, ptr %v0, ptr %t33, i64 %t38)
  call void @llvm.memmove.p0.p0.i64(ptr %l29, ptr %t39, i64 144, i1 false)
  br label %bb10
bb10:
  %t42 = getelementptr %"compiler/eval:scope", ptr %l29, i32 0, i32 9
  %t43 = load i64, ptr %t42, !tbaa !24
  store i64 %t43, ptr %l7, !tbaa !24
  %t45 = load ptr, ptr %l0, !tbaa !29
  %t46 = load i64, ptr %l7, !tbaa !24
  %t47 = load i64, ptr @G_2ecompiler_2feval_2eaValue, !tbaa !24
  %t48 = load i64, ptr %l6, !tbaa !24
  %t53 = call %"compiler/eval:Ptr" @compiler_2feval_2ecompiler_2feval_3aMachine_2eallocate(ptr %v0, ptr %t45, i64 %t46, i64 %t47, i64 %t48)
  store %"compiler/eval:Ptr" %t53, ptr %l35
  br label %bb11
bb11:
  %t54 = load %"compiler/eval:Ptr", ptr %l35
  store %"compiler/eval:Ptr" %t54, ptr %l8
  %t55 = load ptr, ptr %l0, !tbaa !29
  %t57 = getelementptr %"compiler/eval:Machine", ptr %t55, i32 0, i32 19
  %t58 = load i1, ptr %t57, !tbaa !21
  br i1 %t58, label %bb12, label %bb13
bb12:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb13:
  br label %bb14
bb14:
  %t60 = load i64, ptr %l7, !tbaa !24
  %t62 = icmp sgt i64 %t60, 0
  br i1 %t62, label %bb15, label %bb16
bb15:
  store %olang.scope zeroinitializer, ptr %s3
  %t64 = load ptr, ptr %l0, !tbaa !29
  store ptr %t64, ptr %l40, !tbaa !29
  %t65 = load %"compiler/eval:Ptr", ptr %l8
  store %"compiler/eval:Ptr" %t65, ptr %l41
  %t66 = load ptr, ptr %l0, !tbaa !29
  %t68 = getelementptr %"compiler/eval:Machine", ptr %t66, i32 0, i32 49
  %t69 = load i64, ptr %l5, !tbaa !24
  %t70 = load i64, ptr @G_2ecompiler_2feval_2eslotMask, !tbaa !24
  %t73 = and i64 %t69, %t70
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3ascope_3e_2eAt_3ccompiler_2feval_3ascope_3e(ptr %t74, ptr %v0, ptr %t68, i64 %t73)
  call void @llvm.memmove.p0.p0.i64(ptr %l47, ptr %t74, i64 144, i1 false)
  br label %bb17
bb16:
  br label %bb20
bb17:
  %t77 = getelementptr %"compiler/eval:scope", ptr %l47, i32 0, i32 8
  %t78 = load i64, ptr %t77, !tbaa !24
  %t80 = call %"compiler/eval:Ptr" @compiler_2feval_3aPtr_2ector(ptr %s3, i64 %t78, i64 0)
  store %"compiler/eval:Ptr" %t80, ptr %l49
  br label %bb18
bb18:
  %t81 = load i64, ptr %l7, !tbaa !24
  %t82 = load ptr, ptr %l40, !tbaa !29
  %t83 = load %"compiler/eval:Ptr", ptr %l41
  %t84 = load %"compiler/eval:Ptr", ptr %l49
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2ecopy(ptr %v0, ptr %t82, %"compiler/eval:Ptr" %t83, %"compiler/eval:Ptr" %t84, i64 %t81)
  br label %bb19
bb19:
  call void @__olang_scope_close(ptr %s3)
  br label %bb20
bb20:
  %t86 = load ptr, ptr %l0, !tbaa !29
  %t87 = load %"compiler/eval:Ptr", ptr %l2
  %t88 = load i64, ptr %l7, !tbaa !24
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2ewr(ptr %v0, ptr %t86, %"compiler/eval:Ptr" %t87, i64 8, i64 %t88)
  br label %bb21
bb21:
  %t92 = load ptr, ptr %l0, !tbaa !29
  store ptr %t92, ptr %l54, !tbaa !29
  %t93 = getelementptr %"compiler/eval:Ptr", ptr %l2, i32 0, i32 0
  %t94 = load i64, ptr %t93, !tbaa !24
  %t95 = getelementptr %"compiler/eval:Ptr", ptr %l2, i32 0, i32 1
  %t96 = load i64, ptr %t95, !tbaa !24
  %t98 = add i64 %t96, 8
  %t101 = call %"compiler/eval:Ptr" @compiler_2feval_3aPtr_2ector(ptr %s0, i64 %t94, i64 %t98)
  store %"compiler/eval:Ptr" %t101, ptr %l58
  br label %bb22
bb22:
  %t102 = load %"compiler/eval:Ptr", ptr %l8
  %t103 = load ptr, ptr %l54, !tbaa !29
  %t104 = load %"compiler/eval:Ptr", ptr %l58
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2ewrPtr(ptr %v0, ptr %t103, %"compiler/eval:Ptr" %t104, %"compiler/eval:Ptr" %t102)
  br label %bb23
bb23:
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

define dso_local void @compiler_2feval_2ecompiler_2feval_3aMachine_2etraced(ptr %v0, ptr %a0, i64 %a1, i64 %a2, %"compiler/source:Span" %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l3 = alloca %"compiler/source:Span"
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca { i64, ptr }
  %l13 = alloca { i64, ptr }
  %l18 = alloca i1
  %l20 = alloca { i64, ptr }
  %l33 = alloca { i64, ptr }
  %l37 = alloca i64
  %l44 = alloca i64
  %l47 = alloca i64
  %l67 = alloca i32
  %l70 = alloca ptr
  %l76 = alloca { i64, ptr }
  %l89 = alloca { i64, ptr }
  %l93 = alloca { i64, ptr }
  %l96 = alloca ptr
  %l98 = alloca { i64, ptr }
  %l103 = alloca ptr
  %l106 = alloca i64
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  store %"compiler/source:Span" %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/eval:Machine", ptr %t1, i32 0, i32 55
  %t4 = load { i64, ptr }, ptr %t3, !tbaa !27
  store { i64, ptr } %t4, ptr %l13, !tbaa !27
  %t5 = load i64, ptr %l1, !tbaa !24
  %t7 = getelementptr { i64, ptr }, ptr %l13, i32 0, i32 1
  %t8 = load ptr, ptr %t7, !tbaa !27
  %t9 = getelementptr %"compiler/eval:frame", ptr %t8, i64 %t5
  %t10 = getelementptr %"compiler/eval:frame", ptr %t9, i32 0, i32 16
  %t11 = load i64, ptr %t10, !tbaa !24
  store i64 %t11, ptr %l4, !tbaa !24
  %t13 = load i64, ptr %l4, !tbaa !24
  %t15 = icmp slt i64 %t13, 0
  br i1 %t15, label %bb1, label %bb2
bb1:
  store i1 true, ptr %l18, !tbaa !21
  br label %bb3
bb2:
  %t17 = load ptr, ptr %l0, !tbaa !29
  %t19 = getelementptr %"compiler/eval:Machine", ptr %t17, i32 0, i32 55
  %t20 = load { i64, ptr }, ptr %t19, !tbaa !27
  store { i64, ptr } %t20, ptr %l20, !tbaa !27
  %t21 = load i64, ptr %l1, !tbaa !24
  %t23 = getelementptr { i64, ptr }, ptr %l20, i32 0, i32 1
  %t24 = load ptr, ptr %t23, !tbaa !27
  %t25 = getelementptr %"compiler/eval:frame", ptr %t24, i64 %t21
  %t26 = getelementptr %"compiler/eval:frame", ptr %t25, i32 0, i32 17
  %t27 = load i32, ptr %t26, !tbaa !23
  %t28 = getelementptr %"compiler/source:Span", ptr %l3, i32 0, i32 0
  %t29 = load i32, ptr %t28, !tbaa !23
  %t32 = icmp ne i32 %t27, %t29
  store i1 %t32, ptr %l18, !tbaa !21
  br label %bb3
bb3:
  %t34 = load i1, ptr %l18, !tbaa !21
  br i1 %t34, label %bb4, label %bb5
bb4:
  %t35 = load i64, ptr @G_2ecompiler_2feval_2etRaised, !tbaa !24
  store i64 %t35, ptr %l4, !tbaa !24
  br label %bb6
bb5:
  br label %bb6
bb6:
  %t37 = load i64, ptr %l4, !tbaa !24
  %t38 = load i64, ptr @G_2ecompiler_2feval_2etCall, !tbaa !24
  %t41 = icmp ne i64 %t37, %t38
  br i1 %t41, label %bb7, label %bb8
bb7:
  %t43 = load ptr, ptr %l0, !tbaa !29
  %t45 = getelementptr %"compiler/eval:Machine", ptr %t43, i32 0, i32 85
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eClear_3cI64_3e(ptr %v0, ptr %t45)
  br label %bb9
bb8:
  br label %bb10
bb9:
  %t47 = load ptr, ptr %l0, !tbaa !29
  %t49 = getelementptr %"compiler/eval:Machine", ptr %t47, i32 0, i32 87
  store i64 0, ptr %t49, !tbaa !24
  br label %bb10
bb10:
  %t50 = load ptr, ptr %l0, !tbaa !29
  %t52 = getelementptr %"compiler/eval:Machine", ptr %t50, i32 0, i32 55
  %t53 = load { i64, ptr }, ptr %t52, !tbaa !27
  store { i64, ptr } %t53, ptr %l33, !tbaa !27
  %t54 = load i64, ptr %l1, !tbaa !24
  %t56 = getelementptr { i64, ptr }, ptr %l33, i32 0, i32 1
  %t57 = load ptr, ptr %t56, !tbaa !27
  %t58 = getelementptr %"compiler/eval:frame", ptr %t57, i64 %t54
  %t59 = getelementptr %"compiler/eval:frame", ptr %t58, i32 0, i32 16
  store i64 -1, ptr %t59, !tbaa !24
  %t60 = load ptr, ptr %l0, !tbaa !29
  %t62 = getelementptr %"compiler/eval:Machine", ptr %t60, i32 0, i32 85
  %t64 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %t62)
  store i64 %t64, ptr %l37
  br label %bb11
bb11:
  %t65 = load i64, ptr @G_2ecompiler_2feval_2etraceKept, !tbaa !24
  %t67 = mul i64 4, %t65
  %t68 = load i64, ptr %l37, !tbaa !24
  %t70 = icmp sge i64 %t68, %t67
  br i1 %t70, label %bb12, label %bb13
bb12:
  store i64 0, ptr %l5, !tbaa !24
  store i64 4, ptr %l6, !tbaa !24
  store i64 1, ptr %l7, !tbaa !24
  %t72 = load i64, ptr %l6, !tbaa !24
  %t73 = load i64, ptr %l5, !tbaa !24
  %t76 = icmp sgt i64 %t72, %t73
  br i1 %t76, label %bb14, label %bb15
bb13:
  br label %bb30
bb14:
  %t78 = load i64, ptr %l7, !tbaa !24
  %t80 = icmp sgt i64 %t78, 0
  br i1 %t80, label %bb16, label %bb17
bb15:
  store i64 0, ptr %l44, !tbaa !24
  br label %bb19
bb16:
  %t82 = load i64, ptr %l6, !tbaa !24
  %t83 = load i64, ptr %l5, !tbaa !24
  %t86 = sub i64 %t82, %t83
  %t87 = load i64, ptr %l7, !tbaa !24
  %t90 = add i64 %t86, %t87
  %t92 = sub i64 %t90, 1
  %t93 = load i64, ptr %l7, !tbaa !24
  %t96 = sdiv i64 %t92, %t93
  store i64 %t96, ptr %l47, !tbaa !24
  br label %bb18
bb17:
  store i64 0, ptr %l47, !tbaa !24
  br label %bb18
bb18:
  %t98 = load i64, ptr %l47, !tbaa !24
  store i64 %t98, ptr %l44, !tbaa !24
  br label %bb19
bb19:
  %t99 = load i64, ptr %l44, !tbaa !24
  store i64 %t99, ptr %l8, !tbaa !24
  store i64 0, ptr %l9, !tbaa !24
  br label %bb20
bb20:
  %t100 = load i64, ptr %l9, !tbaa !24
  %t101 = load i64, ptr %l8, !tbaa !24
  %t104 = icmp slt i64 %t100, %t101
  %t106 = xor i1 %t104, true
  br i1 %t106, label %bb21, label %bb22
bb21:
  br label %bb29
bb22:
  br label %bb23
bb23:
  %t108 = load i64, ptr %l5, !tbaa !24
  %t109 = load i64, ptr %l9, !tbaa !24
  %t110 = load i64, ptr %l7, !tbaa !24
  %t113 = mul i64 %t109, %t110
  %t116 = add i64 %t108, %t113
  store i64 %t116, ptr %l10, !tbaa !24
  %t118 = load ptr, ptr %l0, !tbaa !29
  %t120 = getelementptr %"compiler/eval:Machine", ptr %t118, i32 0, i32 85
  %t122 = call i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eRemoveAt_3cI64_3e(ptr %v0, ptr %t120, i64 0)
  store i32 %t122, ptr %l67
  %t123 = icmp ne i32 %t122, 0
  br i1 %t123, label %bb25, label %ok.124, !prof !99
ok.124:
  br label %bb24
bb24:
  br label %bb27
bb25:
  br label %bb26
bb26:
  br label %bb27
bb27:
  br label %bb28
bb28:
  %t125 = load i64, ptr %l9, !tbaa !24
  %t127 = add i64 %t125, 1
  store i64 %t127, ptr %l9, !tbaa !24
  br label %bb20
bb29:
  %t129 = load ptr, ptr %l0, !tbaa !29
  store ptr %t129, ptr %l70, !tbaa !29
  %t130 = load ptr, ptr %l70, !tbaa !29
  %t131 = getelementptr %"compiler/eval:Machine", ptr %t130, i32 0, i32 87
  %t132 = load i64, ptr %t131, !tbaa !24
  %t134 = add i64 %t132, 1
  %t136 = load ptr, ptr %l70, !tbaa !29
  %t137 = getelementptr %"compiler/eval:Machine", ptr %t136, i32 0, i32 87
  store i64 %t134, ptr %t137, !tbaa !24
  br label %bb30
bb30:
  %t138 = load ptr, ptr %l0, !tbaa !29
  %t140 = getelementptr %"compiler/eval:Machine", ptr %t138, i32 0, i32 85
  %t141 = load ptr, ptr %l0, !tbaa !29
  %t143 = getelementptr %"compiler/eval:Machine", ptr %t141, i32 0, i32 23
  %t144 = load { i64, ptr }, ptr %t143, !tbaa !27
  store { i64, ptr } %t144, ptr %l76, !tbaa !27
  %t147 = getelementptr { i64, ptr }, ptr %l76, i32 0, i32 1
  %t148 = load ptr, ptr %t147, !tbaa !27
  %t149 = getelementptr %"compiler/eval:cfn", ptr %t148, i64 %a2
  %t150 = getelementptr %"compiler/eval:cfn", ptr %t149, i32 0, i32 0
  %t151 = load i64, ptr %t150, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %t140, i64 %t151)
  br label %bb31
bb31:
  %t154 = load ptr, ptr %l0, !tbaa !29
  %t156 = getelementptr %"compiler/eval:Machine", ptr %t154, i32 0, i32 85
  %t157 = getelementptr %"compiler/source:Span", ptr %l3, i32 0, i32 0
  %t158 = load i32, ptr %t157, !tbaa !23
  %t160 = sext i32 %t158 to i64
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %t156, i64 %t160)
  br label %bb32
bb32:
  %t163 = load ptr, ptr %l0, !tbaa !29
  %t165 = getelementptr %"compiler/eval:Machine", ptr %t163, i32 0, i32 85
  %t166 = load i64, ptr %l4, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %t165, i64 %t166)
  br label %bb33
bb33:
  %t169 = load i64, ptr %l4, !tbaa !24
  %t170 = load i64, ptr @G_2ecompiler_2feval_2etRaised, !tbaa !24
  %t173 = icmp eq i64 %t169, %t170
  br i1 %t173, label %bb34, label %bb35
bb34:
  %t175 = load ptr, ptr %l0, !tbaa !29
  %t177 = getelementptr %"compiler/eval:Machine", ptr %t175, i32 0, i32 22
  %t178 = load ptr, ptr %l0, !tbaa !29
  %t180 = getelementptr %"compiler/eval:Machine", ptr %t178, i32 0, i32 55
  %t181 = load { i64, ptr }, ptr %t180, !tbaa !27
  store { i64, ptr } %t181, ptr %l93, !tbaa !27
  %t182 = load i64, ptr %l1, !tbaa !24
  %t184 = getelementptr { i64, ptr }, ptr %l93, i32 0, i32 1
  %t185 = load ptr, ptr %t184, !tbaa !27
  %t186 = getelementptr %"compiler/eval:frame", ptr %t185, i64 %t182
  %t187 = getelementptr %"compiler/eval:frame", ptr %t186, i32 0, i32 0
  %t188 = load i64, ptr %t187, !tbaa !24
  %t191 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aFn_26_3e_2eAt_3ccompiler_2fmir_3aFn_26_3e(ptr %v0, ptr %v0, ptr %t177, i64 %t188)
  store ptr %t191, ptr %l96
  br label %bb36
bb35:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d2, i32 0, i32 1) }, ptr %l89, !tbaa !27
  br label %bb38
bb36:
  %t192 = load %"compiler/source:Span", ptr %l3
  %t193 = load ptr, ptr %l96, !tbaa !29
  %t195 = call { i64, ptr } @compiler_2fmir_2ecompiler_2fmir_3aFn_2eRaiseText(ptr %v0, ptr %v0, ptr %t193, %"compiler/source:Span" %t192)
  store { i64, ptr } %t195, ptr %l98
  br label %bb37
bb37:
  %t196 = load { i64, ptr }, ptr %l98, !tbaa !27
  store { i64, ptr } %t196, ptr %l89, !tbaa !27
  br label %bb38
bb38:
  %t197 = load { i64, ptr }, ptr %l89, !tbaa !27
  store { i64, ptr } %t197, ptr %l11, !tbaa !27
  %t198 = load { i64, ptr }, ptr %l11, !tbaa !27
  %t200 = extractvalue { i64, ptr } %t198, 0
  %t202 = icmp sgt i64 %t200, 0
  br i1 %t202, label %bb39, label %bb40
bb39:
  %t204 = load ptr, ptr %l0, !tbaa !29
  %t206 = getelementptr %"compiler/eval:Machine", ptr %t204, i32 0, i32 85
  store ptr %t206, ptr %l103, !tbaa !29
  %t207 = load ptr, ptr %l0, !tbaa !29
  %t209 = getelementptr %"compiler/eval:Machine", ptr %t207, i32 0, i32 86
  %t211 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %v0, ptr %t209)
  store i64 %t211, ptr %l106
  br label %bb41
bb40:
  %t212 = load ptr, ptr %l0, !tbaa !29
  %t214 = getelementptr %"compiler/eval:Machine", ptr %t212, i32 0, i32 85
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %t214, i64 -1)
  br label %bb44
bb41:
  %t216 = load ptr, ptr %l103, !tbaa !29
  %t217 = load i64, ptr %l106, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %t216, i64 %t217)
  br label %bb42
bb42:
  %t218 = load ptr, ptr %l0, !tbaa !29
  %t220 = getelementptr %"compiler/eval:Machine", ptr %t218, i32 0, i32 86
  %t221 = load { i64, ptr }, ptr %l11, !tbaa !27
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v0, ptr %v0, ptr %t220, { i64, ptr } %t221)
  br label %bb43
bb43:
  br label %bb45
bb44:
  br label %bb45
bb45:
  br label %ret
ret:
  ret void
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
  %t12 = getelementptr %"compiler/eval:Machine", ptr %t10, i32 0, i32 38
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
  %t35 = getelementptr %"compiler/eval:Machine", ptr %t33, i32 0, i32 67
  %t36 = load i64, ptr %t35, !tbaa !24
  %t40 = call %"compiler/eval:Ptr" @compiler_2feval_2ecompiler_2feval_3aMachine_2eallocate(ptr %v0, ptr %t31, i64 8, i64 %t32, i64 %t36)
  store %"compiler/eval:Ptr" %t40, ptr %l23
  br label %bb10
bb10:
  %t41 = load %"compiler/eval:Ptr", ptr %l23
  store %"compiler/eval:Ptr" %t41, ptr %l4
  %t42 = load ptr, ptr %l0, !tbaa !29
  %t44 = getelementptr %"compiler/eval:Machine", ptr %t42, i32 0, i32 38
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
  %t15 = load i32, ptr %l1, !range !{i32 0, i32 52}
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
  %t24 = load i32, ptr %l1, !range !{i32 0, i32 52}
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
  %t3 = getelementptr %"compiler/eval:Machine", ptr %t1, i32 0, i32 57
  %t4 = load { i64, ptr }, ptr %t3, !tbaa !27
  store { i64, ptr } %t4, ptr %l20, !tbaa !27
  %t5 = load ptr, ptr %l0, !tbaa !29
  %t7 = getelementptr %"compiler/eval:Machine", ptr %t5, i32 0, i32 55
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
  %t49 = getelementptr %"compiler/eval:Machine", ptr %t47, i32 0, i32 49
  %t50 = load i64, ptr %l7, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3ascope_3e_2eAt_3ccompiler_2feval_3ascope_3e(ptr %t51, ptr %v0, ptr %t49, i64 %t50)
  call void @llvm.memmove.p0.p0.i64(ptr %l41, ptr %t51, i64 144, i1 false)
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
  %t65 = getelementptr %"compiler/eval:Machine", ptr %t63, i32 0, i32 53
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
  %t75 = getelementptr %"compiler/eval:Machine", ptr %t73, i32 0, i32 49
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
  %t88 = getelementptr %"compiler/eval:Machine", ptr %t86, i32 0, i32 49
  %t89 = load i64, ptr %l7, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3ascope_3e_2eAt_3ccompiler_2feval_3ascope_3e(ptr %t90, ptr %v0, ptr %t88, i64 %t89)
  call void @llvm.memmove.p0.p0.i64(ptr %l60, ptr %t90, i64 144, i1 false)
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
  %t102 = getelementptr %"compiler/eval:Machine", ptr %t100, i32 0, i32 49
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
  %t121 = getelementptr %"compiler/eval:Machine", ptr %t119, i32 0, i32 49
  %t122 = load i64, ptr %l7, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3ascope_3e_2eAt_3ccompiler_2feval_3ascope_3e(ptr %t123, ptr %v0, ptr %t121, i64 %t122)
  call void @llvm.memmove.p0.p0.i64(ptr %l76, ptr %t123, i64 144, i1 false)
  br label %bb18
bb18:
  %t126 = getelementptr %"compiler/eval:scope", ptr %l76, i32 0, i32 12
  %t127 = load i64, ptr %t126, !tbaa !24
  store i64 %t127, ptr %l15, !tbaa !24
  %t129 = load i64, ptr %l7, !tbaa !24
  store i64 0, ptr %l17, !tbaa !24
  %t131 = load ptr, ptr %l0, !tbaa !29
  %t133 = getelementptr %"compiler/eval:Machine", ptr %t131, i32 0, i32 49
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
  %t158 = getelementptr %"compiler/eval:Machine", ptr %t156, i32 0, i32 49
  %t159 = load i64, ptr %l7, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3ascope_3e_2eAt_3ccompiler_2feval_3ascope_3e(ptr %t160, ptr %v0, ptr %t158, i64 %t159)
  call void @llvm.memmove.p0.p0.i64(ptr %l95, ptr %t160, i64 144, i1 false)
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
  %l48 = alloca ptr
  %l54 = alloca %"compiler/eval:genRec"
  %l56 = alloca %"compiler/eval:genRec"
  %l59 = alloca i1
  %l60 = alloca ptr
  %l61 = alloca %"compiler/eval:genRec"
  %l63 = alloca %"compiler/eval:genRec"
  %l64 = alloca i1
  %l65 = alloca i1
  %l68 = alloca i1
  %l72 = alloca i1
  %s2 = alloca %olang.scope
  %rv = alloca i1
  %t57 = alloca %"compiler/eval:genRec", align 8
  %t82 = alloca %"compiler/eval:genRec", align 8
  %t85 = alloca %"compiler/eval:genRec", align 8
  %t93 = alloca %"compiler/eval:genRec", align 8
  %t96 = alloca %"compiler/eval:genRec", align 8
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store i1 false, ptr %l1, !tbaa !21
  store i64 0, ptr %l2, !tbaa !24
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/eval:Machine", ptr %t1, i32 0, i32 60
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
  br label %bb35
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
  %t55 = getelementptr %"compiler/eval:Machine", ptr %t53, i32 0, i32 60
  %t56 = load i64, ptr %l7, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3agenRec_3e_2eAt_3ccompiler_2feval_3agenRec_3e(ptr %t57, ptr %v0, ptr %s2, ptr %t55, i64 %t56)
  call void @llvm.memmove.p0.p0.i64(ptr %l42, ptr %t57, i64 280, i1 false)
  br label %bb12
bb12:
  %t60 = getelementptr %"compiler/eval:genRec", ptr %l42, i32 0, i32 5
  %t61 = load i1, ptr %t60, !tbaa !21
  br i1 %t61, label %bb13, label %bb14
bb13:
  call void @__olang_scope_close(ptr %s2)
  br label %bb34
bb14:
  br label %bb15
bb15:
  %t63 = load i64, ptr %l7, !tbaa !24
  store i1 true, ptr %l9, !tbaa !21
  %t65 = load ptr, ptr %l0, !tbaa !29
  %t67 = getelementptr %"compiler/eval:Machine", ptr %t65, i32 0, i32 60
  %t71 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3agenRec_3e_2eRefMut_3ccompiler_2feval_3agenRec_3e(ptr %v0, ptr %v0, ptr %t67, i64 %t63)
  store ptr %t71, ptr %l48
  br label %bb16
bb16:
  %t72 = load ptr, ptr %l48, !tbaa !29
  %t74 = load i1, ptr %l9, !tbaa !21
  %t77 = getelementptr %"compiler/eval:genRec", ptr %t72, i32 0, i32 5
  store i1 %t74, ptr %t77, !tbaa !21
  %t78 = load ptr, ptr %l0, !tbaa !29
  %t80 = getelementptr %"compiler/eval:Machine", ptr %t78, i32 0, i32 60
  %t81 = load i64, ptr %l7, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3agenRec_3e_2eAt_3ccompiler_2feval_3agenRec_3e(ptr %t82, ptr %v0, ptr %v0, ptr %t80, i64 %t81)
  call void @llvm.memmove.p0.p0.i64(ptr %l54, ptr %t82, i64 280, i1 false)
  br label %bb17
bb17:
  call void @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2feval_3agenRec(ptr %t85, ptr %s2, ptr %l54)
  call void @llvm.memmove.p0.p0.i64(ptr %l56, ptr %t85, i64 280, i1 false)
  br label %bb18
bb18:
  call void @llvm.memmove.p0.p0.i64(ptr %l11, ptr %l56, i64 280, i1 false)
  %t87 = getelementptr %"compiler/eval:genRec", ptr %l11, i32 0, i32 0
  %t88 = load i64, ptr %t87, !tbaa !24
  %t90 = icmp eq i64 %t88, 0
  br i1 %t90, label %bb19, label %bb20
bb19:
  %t92 = load ptr, ptr %l0, !tbaa !29
  store ptr %t92, ptr %l60, !tbaa !29
  call void @llvm.memmove.p0.p0.i64(ptr %l61, ptr %l11, i64 280, i1 false)
  call void @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2feval_3agenRec(ptr %t93, ptr %s2, ptr %l61)
  call void @llvm.memmove.p0.p0.i64(ptr %l63, ptr %t93, i64 280, i1 false)
  br label %bb21
bb20:
  store i1 false, ptr %l59, !tbaa !21
  br label %bb23
bb21:
  %t95 = load ptr, ptr %l60, !tbaa !29
  call void @llvm.memmove.p0.p0.i64(ptr %t96, ptr %l63, i64 280, i1 false)
  %t97 = call i1 @compiler_2feval_2ecompiler_2feval_3aMachine_2efreshWork(ptr %v0, ptr %s2, ptr %t95, ptr %t96)
  store i1 %t97, ptr %l64
  br label %bb22
bb22:
  %t98 = load i1, ptr %l64, !tbaa !21
  store i1 %t98, ptr %l59, !tbaa !21
  br label %bb23
bb23:
  %t99 = load i1, ptr %l59, !tbaa !21
  br i1 %t99, label %bb24, label %bb25
bb24:
  store i1 true, ptr %l65, !tbaa !21
  br label %bb30
bb25:
  %t100 = getelementptr %"compiler/eval:genRec", ptr %l11, i32 0, i32 0
  %t101 = load i64, ptr %t100, !tbaa !24
  %t103 = icmp eq i64 %t101, 1
  br i1 %t103, label %bb26, label %bb27
bb26:
  %t105 = load ptr, ptr %l0, !tbaa !29
  %t106 = getelementptr %"compiler/eval:genRec", ptr %l11, i32 0, i32 1
  %t107 = load i64, ptr %t106, !tbaa !24
  %t108 = getelementptr %"compiler/eval:genRec", ptr %l11, i32 0, i32 3
  %t109 = load i64, ptr %t108, !tbaa !24
  %t113 = call i1 @compiler_2feval_2ecompiler_2feval_3aMachine_2edropWork(ptr %v0, ptr %t105, i64 %t107, i64 %t109)
  store i1 %t113, ptr %l72
  br label %bb28
bb27:
  store i1 false, ptr %l68, !tbaa !21
  br label %bb29
bb28:
  %t114 = load i1, ptr %l72, !tbaa !21
  store i1 %t114, ptr %l68, !tbaa !21
  br label %bb29
bb29:
  %t115 = load i1, ptr %l68, !tbaa !21
  store i1 %t115, ptr %l65, !tbaa !21
  br label %bb30
bb30:
  %t116 = load i1, ptr %l65, !tbaa !21
  br i1 %t116, label %bb31, label %bb32
bb31:
  store i1 true, ptr %l1, !tbaa !21
  br label %bb33
bb32:
  br label %bb33
bb33:
  call void @__olang_scope_close(ptr %s2)
  br label %bb34
bb34:
  %t117 = load i64, ptr %l6, !tbaa !24
  %t119 = add i64 %t117, 1
  store i64 %t119, ptr %l6, !tbaa !24
  br label %bb8
bb35:
  %t121 = load i1, ptr %l1, !tbaa !21
  store i1 %t121, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local void @compiler_2feval_2ecompiler_2feval_3aMachine_2ewrPtr(ptr %v0, ptr %a0, %"compiler/eval:Ptr" %a1, %"compiler/eval:Ptr" %a2) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca %"compiler/eval:Ptr"
  %l3 = alloca i64
  %l6 = alloca i64
  %l22 = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  store %"compiler/eval:Ptr" %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t5 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2eat(ptr %v0, ptr %t1, %"compiler/eval:Ptr" %a1, i64 8, i1 true)
  store i64 %t5, ptr %l6
  br label %bb1
bb1:
  %t6 = load i64, ptr %l6, !tbaa !24
  store i64 %t6, ptr %l3, !tbaa !24
  %t7 = load i64, ptr %l3, !tbaa !24
  %t9 = icmp slt i64 %t7, 0
  br i1 %t9, label %bb2, label %bb3
bb2:
  br label %ret
bb3:
  br label %bb4
bb4:
  %t11 = load ptr, ptr %l0, !tbaa !29
  %t12 = load i64, ptr %l3, !tbaa !24
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2eunmark(ptr %v0, ptr %t11, i64 %t12, i64 8)
  br label %bb5
bb5:
  %t15 = load ptr, ptr %l0, !tbaa !29
  %t16 = load i64, ptr %l3, !tbaa !24
  %t17 = getelementptr %"compiler/eval:Ptr", ptr %l2, i32 0, i32 1
  %t18 = load i64, ptr %t17, !tbaa !24
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2ewrRaw(ptr %v0, ptr %t15, i64 %t16, i64 8, i64 %t18)
  br label %bb6
bb6:
  %t22 = getelementptr %"compiler/eval:Ptr", ptr %l2, i32 0, i32 0
  %t23 = load i64, ptr %t22, !tbaa !24
  %t25 = icmp ne i64 %t23, 0
  br i1 %t25, label %bb7, label %bb8
bb7:
  %t27 = load i64, ptr %l3, !tbaa !24
  %t29 = srem i64 %t27, 8
  %t31 = icmp ne i64 %t29, 0
  br i1 %t31, label %bb9, label %bb10
bb8:
  br label %bb13
bb9:
  %t33 = load ptr, ptr %l0, !tbaa !29
  %t34 = load { i64, ptr }, ptr @G_2ecompiler_2feval_2eWhyNotModelled, !tbaa !27
  %t35 = load ptr, ptr @__olang_prog_scope
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2erefuse(ptr %v0, ptr %t35, ptr %t33, { i64, ptr } %t34)
  br label %bb11
bb10:
  br label %bb12
bb11:
  br label %ret
bb12:
  %t38 = load ptr, ptr %l0, !tbaa !29
  %t40 = getelementptr %"compiler/eval:Machine", ptr %t38, i32 0, i32 43
  %t41 = load { i64, ptr }, ptr %t40, !tbaa !27
  store { i64, ptr } %t41, ptr %l22, !tbaa !27
  %t42 = load i64, ptr %l3, !tbaa !24
  %t44 = sdiv i64 %t42, 8
  %t45 = getelementptr %"compiler/eval:Ptr", ptr %l2, i32 0, i32 0
  %t46 = load i64, ptr %t45, !tbaa !24
  %t49 = getelementptr { i64, ptr }, ptr %l22, i32 0, i32 1
  %t50 = load ptr, ptr %t49, !tbaa !27
  %t51 = getelementptr i64, ptr %t50, i64 %t44
  store i64 %t46, ptr %t51, !tbaa !34
  br label %bb13
bb13:
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

define dso_local i64 @compiler_2feval_2elz128(i64 %a0, i64 %a1, i64 %a2) #0 {
entry:
  %l2 = alloca i64
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l10 = alloca i64
  %l16 = alloca i64
  %l19 = alloca i64
  %l43 = alloca i64
  %l46 = alloca i64
  %l50 = alloca i64
  %rv = alloca i64
  store i64 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  store i64 0, ptr %l3, !tbaa !24
  store i64 0, ptr %l4, !tbaa !24
  %t1 = load i64, ptr %l2, !tbaa !24
  store i64 %t1, ptr %l5, !tbaa !24
  store i64 1, ptr %l6, !tbaa !24
  %t3 = load i64, ptr %l5, !tbaa !24
  %t4 = load i64, ptr %l4, !tbaa !24
  %t7 = icmp sgt i64 %t3, %t4
  br i1 %t7, label %bb1, label %bb2
bb1:
  %t9 = load i64, ptr %l6, !tbaa !24
  %t11 = icmp sgt i64 %t9, 0
  br i1 %t11, label %bb3, label %bb4
bb2:
  store i64 0, ptr %l16, !tbaa !24
  br label %bb6
bb3:
  %t13 = load i64, ptr %l5, !tbaa !24
  %t14 = load i64, ptr %l4, !tbaa !24
  %t17 = sub i64 %t13, %t14
  %t18 = load i64, ptr %l6, !tbaa !24
  %t21 = add i64 %t17, %t18
  %t23 = sub i64 %t21, 1
  %t24 = load i64, ptr %l6, !tbaa !24
  %t27 = sdiv i64 %t23, %t24
  store i64 %t27, ptr %l19, !tbaa !24
  br label %bb5
bb4:
  store i64 0, ptr %l19, !tbaa !24
  br label %bb5
bb5:
  %t29 = load i64, ptr %l19, !tbaa !24
  store i64 %t29, ptr %l16, !tbaa !24
  br label %bb6
bb6:
  %t30 = load i64, ptr %l16, !tbaa !24
  store i64 %t30, ptr %l7, !tbaa !24
  store i64 0, ptr %l8, !tbaa !24
  br label %bb7
bb7:
  %t31 = load i64, ptr %l8, !tbaa !24
  %t32 = load i64, ptr %l7, !tbaa !24
  %t35 = icmp slt i64 %t31, %t32
  %t37 = xor i1 %t35, true
  br i1 %t37, label %bb8, label %bb9
bb8:
  br label %bb18
bb9:
  br label %bb10
bb10:
  %t39 = load i64, ptr %l4, !tbaa !24
  %t40 = load i64, ptr %l8, !tbaa !24
  %t41 = load i64, ptr %l6, !tbaa !24
  %t44 = mul i64 %t40, %t41
  %t47 = add i64 %t39, %t44
  %t49 = load i64, ptr %l2, !tbaa !24
  %t51 = sub i64 %t49, 1
  %t55 = sub i64 %t51, %t47
  store i64 %t55, ptr %l10, !tbaa !24
  %t57 = load i64, ptr %l10, !tbaa !24
  %t59 = icmp sge i64 %t57, 64
  br i1 %t59, label %bb11, label %bb12
bb11:
  %t62 = load i64, ptr %l10, !tbaa !24
  %t64 = sub i64 %t62, 64
  store i64 %t64, ptr %l46, !tbaa !24
  %t66 = load i64, ptr %l46, !tbaa !24
  %t67 = load i64, ptr %l46, !tbaa !24
  %t68 = ashr i64 %a1, %t67
  %t70 = and i64 %t68, 1
  store i64 %t70, ptr %l43, !tbaa !24
  br label %bb13
bb12:
  %t73 = load i64, ptr %l10, !tbaa !24
  store i64 %t73, ptr %l50, !tbaa !24
  %t75 = load i64, ptr %l50, !tbaa !24
  %t76 = load i64, ptr %l50, !tbaa !24
  %t77 = ashr i64 %a0, %t76
  %t79 = and i64 %t77, 1
  store i64 %t79, ptr %l43, !tbaa !24
  br label %bb13
bb13:
  %t81 = load i64, ptr %l43, !tbaa !24
  %t84 = icmp eq i64 %t81, 1
  br i1 %t84, label %bb14, label %bb15
bb14:
  %t86 = load i64, ptr %l3, !tbaa !24
  store i64 %t86, ptr %rv
  br label %ret
bb15:
  br label %bb16
bb16:
  %t88 = load i64, ptr %l3, !tbaa !24
  %t90 = add i64 %t88, 1
  store i64 %t90, ptr %l3, !tbaa !24
  br label %bb17
bb17:
  %t92 = load i64, ptr %l8, !tbaa !24
  %t94 = add i64 %t92, 1
  store i64 %t94, ptr %l8, !tbaa !24
  br label %bb7
bb18:
  %t96 = load i64, ptr %l3, !tbaa !24
  store i64 %t96, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local void @compiler_2feval_2epassFn(ptr %out, ptr %v0, ptr %v1, ptr %a0, i64 %a1, i64 %a2, i32 %a3, i32 %a4, i32 %a5) #0 {
entry:
  %l0 = alloca ptr
  %l5 = alloca i32
  %l6 = alloca i32
  %lp7 = alloca ptr
  %l8 = alloca i32
  %l9 = alloca i32
  %l10 = alloca i32
  %l11 = alloca i32
  %l12 = alloca i32
  %l15 = alloca i32
  %l16 = alloca ptr
  %l17 = alloca i64
  %l18 = alloca ptr
  %l21 = alloca i32
  %l24 = alloca i32
  %l25 = alloca %"compiler/mir:Fn"
  %l29 = alloca i32
  %l33 = alloca i32
  %l37 = alloca i32
  %l39 = alloca i32
  %l41 = alloca i32
  %l42 = alloca ptr
  %l44 = alloca { i64, [2 x i64] }
  %l46 = alloca { i64, [7 x i64] }
  %l47 = alloca ptr
  %l48 = alloca { i64, [4 x i64] }
  %l49 = alloca { i64, ptr }
  %l50 = alloca %"compiler/mir:Range"
  %l51 = alloca %"compiler/mir:Range"
  %l53 = alloca %"compiler/mir:Lvalue"
  %l57 = alloca %"compiler/mir:Call"
  %l58 = alloca i32
  %l68 = alloca { i64, [21 x i64] }
  %l70 = alloca ptr
  %l71 = alloca i32
  %l72 = alloca %"compiler/source:Span"
  %l74 = alloca %"compiler/mir:Lvalue"
  %l77 = alloca ptr
  %l78 = alloca i32
  %l79 = alloca %"compiler/source:Span"
  %l81 = alloca %"compiler/mir:Lvalue"
  %l83 = alloca %"compiler/mir:Lvalue"
  %l88 = alloca { i64, [21 x i64] }
  %l94 = alloca { i64, [21 x i64] }
  %l96 = alloca ptr
  %l97 = alloca i32
  %l98 = alloca %"compiler/source:Span"
  %l100 = alloca %"compiler/mir:Lvalue"
  %l103 = alloca %"compiler/mir:Fn"
  %s0 = alloca %olang.scope
  %t20 = alloca %"compiler/mir:Fn", align 8
  %t63 = alloca { i64, [7 x i64] }, align 8
  %t107 = alloca { i64, [8 x i64] }, align 8
  %t122 = alloca { i64, [21 x i64] }, align 8
  %t139 = alloca { i64, [4 x i64] }, align 8
  %t145 = alloca { i64, [8 x i64] }, align 8
  %t165 = alloca { i64, [4 x i64] }, align 8
  %t173 = alloca { i64, [15 x i64] }, align 8
  %t183 = alloca { i64, [21 x i64] }, align 8
  %t200 = alloca { i64, [21 x i64] }, align 8
  %t217 = alloca { i64, [4 x i64] }, align 8
  %t223 = alloca { i64, [8 x i64] }, align 8
  store ptr %a0, ptr %l0
  store i32 %a5, ptr %l5
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePrim(ptr %v0, ptr %s0, ptr %t1, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d3, i32 0, i32 1) })
  store i32 %t3, ptr %l15
  br label %bb1
bb1:
  %t4 = load i32, ptr %l15, !tbaa !23
  store i32 %t4, ptr %l6, !tbaa !23
  %t5 = load ptr, ptr %l0, !tbaa !29
  store ptr %t5, ptr %l16, !tbaa !29
  store i64 %a1, ptr %l17, !tbaa !24
  %t7 = load ptr, ptr %l0, !tbaa !29
  store ptr %t7, ptr %l18, !tbaa !29
  %t8 = load ptr, ptr %l0, !tbaa !29
  %t9 = load i32, ptr %l6, !tbaa !23
  %t12 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eList1(ptr %v0, ptr %t8, i32 %t9)
  store i32 %t12, ptr %l21
  br label %bb2
bb2:
  %t13 = load i32, ptr %l6, !tbaa !23
  %t14 = load i32, ptr %l5, !tbaa !23
  %t15 = load ptr, ptr %l18, !tbaa !29
  %t16 = load i32, ptr %l21, !tbaa !23
  %t19 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eFunc(ptr %v0, ptr %t15, i32 %t16, i32 %t13, i32 %t14, i32 0, i64 0, i1 false, i32 0, i64 0)
  store i32 %t19, ptr %l24
  br label %bb3
bb3:
  %t21 = load ptr, ptr %l16, !tbaa !29
  %t22 = load i64, ptr %l17, !tbaa !24
  %t23 = load i32, ptr %l24, !tbaa !23
  call void @compiler_2feval_2etfn(ptr %t20, ptr %v0, ptr %v1, ptr %t21, i64 %t22, i32 %t23)
  call void @llvm.memmove.p0.p0.i64(ptr %l25, ptr %t20, i64 800, i1 false)
  br label %bb4
bb4:
  %t24 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 800, i64 8)
  store ptr %t24, ptr %lp7
  %t25 = load ptr, ptr %lp7
  call void @llvm.memmove.p0.p0.i64(ptr %t25, ptr %l25, i64 800, i1 false)
  %t26 = load ptr, ptr %lp7
  %t27 = load i32, ptr %l6, !tbaa !23
  %t28 = load %"compiler/source:Span", ptr @G_2ecompiler_2feval_2eSp0
  %t32 = call i32 @compiler_2fmir_2ecompiler_2fmir_3aFn_2eAddTemp(ptr %v1, ptr %t26, i32 %t27, %"compiler/source:Span" %t28)
  store i32 %t32, ptr %l29
  br label %bb5
bb5:
  %t33 = load i32, ptr %l29, !tbaa !23
  store i32 %t33, ptr %l8, !tbaa !23
  %t34 = load ptr, ptr %lp7
  %t35 = load i32, ptr @G_2ecompiler_2fmir_2eI32T, !tbaa !23
  %t36 = load %"compiler/source:Span", ptr @G_2ecompiler_2feval_2eSp0
  %t40 = call i32 @compiler_2fmir_2ecompiler_2fmir_3aFn_2eAddTemp(ptr %v1, ptr %t34, i32 %t35, %"compiler/source:Span" %t36)
  store i32 %t40, ptr %l33
  br label %bb6
bb6:
  %t41 = load i32, ptr %l33, !tbaa !23
  store i32 %t41, ptr %l9, !tbaa !23
  %t42 = load ptr, ptr %lp7
  %t43 = load i32, ptr @G_2ecompiler_2fmir_2eI32T, !tbaa !23
  %t44 = load %"compiler/source:Span", ptr @G_2ecompiler_2feval_2eSp0
  %t48 = call i32 @compiler_2fmir_2ecompiler_2fmir_3aFn_2eAddTemp(ptr %v1, ptr %t42, i32 %t43, %"compiler/source:Span" %t44)
  store i32 %t48, ptr %l37
  br label %bb7
bb7:
  %t49 = load i32, ptr %l37, !tbaa !23
  store i32 %t49, ptr %l10, !tbaa !23
  %t50 = load ptr, ptr %lp7
  %t52 = call i32 @compiler_2fmir_2ecompiler_2fmir_3aFn_2eNewBlock(ptr %v1, ptr %t50)
  store i32 %t52, ptr %l39
  br label %bb8
bb8:
  %t53 = load i32, ptr %l39, !tbaa !23
  store i32 %t53, ptr %l11, !tbaa !23
  %t54 = load ptr, ptr %lp7
  %t56 = call i32 @compiler_2fmir_2ecompiler_2fmir_3aFn_2eNewBlock(ptr %v1, ptr %t54)
  store i32 %t56, ptr %l41
  br label %bb9
bb9:
  %t57 = load i32, ptr %l41, !tbaa !23
  store i32 %t57, ptr %l12, !tbaa !23
  %t58 = load ptr, ptr %lp7
  store ptr %t58, ptr %l42, !tbaa !29
  %t61 = call { i64, [2 x i64] } @compiler_2feval_2etkey(i64 %a2)
  store { i64, [2 x i64] } %t61, ptr %l44
  br label %bb10
bb10:
  store { i64, [7 x i64] } zeroinitializer, ptr %t63
  %t64 = getelementptr { i64, [7 x i64] }, ptr %t63, i32 0, i32 0
  store i64 0, ptr %t64
  %t65 = load { i64, [2 x i64] }, ptr %l44
  %t66 = insertvalue { { i64, [2 x i64] }, i32 } undef, { i64, [2 x i64] } %t65, 0
  %t68 = insertvalue { { i64, [2 x i64] }, i32 } %t66, i32 %a3, 1
  %t69 = getelementptr { i64, [7 x i64] }, ptr %t63, i32 0, i32 1
  store { { i64, [2 x i64] }, i32 } %t68, ptr %t69
  %t70 = load { i64, [7 x i64] }, ptr %t63
  store { i64, [7 x i64] } %t70, ptr %l46
  %t71 = load ptr, ptr %lp7
  store ptr %t71, ptr %l47, !tbaa !29
  %t72 = call { i64, [4 x i64] } @compiler_2feval_2etcopy(i64 0)
  store { i64, [4 x i64] } %t72, ptr %l48
  br label %bb11
bb11:
  %t73 = mul i64 1, 40
  %t74 = call ptr @__olang_scope_alloc_zeroed(ptr %s0, i64 %t73)
  %t75 = insertvalue { i64, ptr } undef, i64 1, 0
  %t76 = insertvalue { i64, ptr } %t75, ptr %t74, 1
  store { i64, ptr } %t76, ptr %l49, !tbaa !27
  %t77 = load { i64, [4 x i64] }, ptr %l48
  %t78 = getelementptr { i64, ptr }, ptr %l49, i32 0, i32 1
  %t79 = load ptr, ptr %t78, !tbaa !27
  %t80 = getelementptr { i64, [4 x i64] }, ptr %t79, i64 0
  store { i64, [4 x i64] } %t77, ptr %t80
  %t81 = load ptr, ptr %l47, !tbaa !29
  %t82 = load { i64, ptr }, ptr %l49, !tbaa !27
  %t83 = call %"compiler/mir:Range" @compiler_2fmir_2ecompiler_2fmir_3aFn_2eArgs(ptr %v1, ptr %s0, ptr %t81, { i64, ptr } %t82)
  store %"compiler/mir:Range" %t83, ptr %l50
  br label %bb12
bb12:
  %t84 = load %"compiler/mir:Range", ptr @G_2ecompiler_2fmir_2eEmpty
  store %"compiler/mir:Range" %t84, ptr %l51
  %t85 = load i32, ptr %l8, !tbaa !23
  %t87 = call %"compiler/mir:Lvalue" @compiler_2fmir_2eLvalue_2eL(i32 %t85)
  store %"compiler/mir:Lvalue" %t87, ptr %l53
  br label %bb13
bb13:
  %t88 = load i32, ptr %l11, !tbaa !23
  %t89 = load i32, ptr %l9, !tbaa !23
  %t90 = load i32, ptr %l12, !tbaa !23
  %t91 = load { i64, [7 x i64] }, ptr %l46
  %t92 = load %"compiler/mir:Range", ptr %l50
  %t93 = load %"compiler/mir:Range", ptr %l51
  %t94 = load %"compiler/mir:Lvalue", ptr %l53
  %t98 = call %"compiler/mir:Call" @compiler_2fmir_3aCall_2ector(ptr %s0, { i64, [7 x i64] } %t91, %"compiler/mir:Range" %t92, %"compiler/mir:Range" %t93, %"compiler/mir:Lvalue" %t94, i1 true, i32 %t88, i32 %t89, i32 %t90)
  store %"compiler/mir:Call" %t98, ptr %l57
  br label %bb14
bb14:
  %t99 = load ptr, ptr %l42, !tbaa !29
  %t100 = load %"compiler/mir:Call", ptr %l57
  %t101 = call i32 @compiler_2fmir_2ecompiler_2fmir_3aFn_2eAddCall(ptr %v1, ptr %t99, %"compiler/mir:Call" %t100)
  store i32 %t101, ptr %l58
  br label %bb15
bb15:
  %t102 = load i32, ptr %l58, !tbaa !23
  %t103 = load ptr, ptr %lp7
  %t104 = load i32, ptr @G_2ecompiler_2feval_2eB0, !tbaa !23
  %t105 = load %"compiler/source:Span", ptr @G_2ecompiler_2feval_2eSp0
  store { i64, [8 x i64] } zeroinitializer, ptr %t107
  %t108 = getelementptr { i64, [8 x i64] }, ptr %t107, i32 0, i32 0
  store i64 4, ptr %t108
  %t110 = insertvalue { %"compiler/source:Span", i32 } undef, %"compiler/source:Span" %t105, 0
  %t112 = insertvalue { %"compiler/source:Span", i32 } %t110, i32 %t102, 1
  %t113 = getelementptr { i64, [8 x i64] }, ptr %t107, i32 0, i32 1
  store { %"compiler/source:Span", i32 } %t112, ptr %t113
  %t114 = load { i64, [8 x i64] }, ptr %t107
  call void @compiler_2fmir_2ecompiler_2fmir_3aFn_2eEnd(ptr %v1, ptr %t103, i32 %t104, { i64, [8 x i64] } %t114)
  br label %bb16
bb16:
  %t118 = load ptr, ptr %lp7
  %t119 = load i32, ptr %l11, !tbaa !23
  %t120 = load %"compiler/source:Span", ptr @G_2ecompiler_2feval_2eSp0
  %t121 = load i32, ptr @G_2ecompiler_2feval_2eS0, !tbaa !23
  store { i64, [21 x i64] } zeroinitializer, ptr %t122
  %t123 = getelementptr { i64, [21 x i64] }, ptr %t122, i32 0, i32 0
  store i64 4, ptr %t123
  %t125 = insertvalue { %"compiler/source:Span", i32 } undef, %"compiler/source:Span" %t120, 0
  %t127 = insertvalue { %"compiler/source:Span", i32 } %t125, i32 %t121, 1
  %t128 = getelementptr { i64, [21 x i64] }, ptr %t122, i32 0, i32 1
  store { %"compiler/source:Span", i32 } %t127, ptr %t128
  %t129 = load { i64, [21 x i64] }, ptr %t122
  store { i64, [21 x i64] } %t129, ptr %l68
  call void @compiler_2fmir_2ecompiler_2fmir_3aFn_2eAdd(ptr %v1, ptr %s0, ptr %t118, i32 %t119, ptr %l68)
  br label %bb17
bb17:
  %t133 = load ptr, ptr %lp7
  store ptr %t133, ptr %l70, !tbaa !29
  %t134 = load i32, ptr %l11, !tbaa !23
  store i32 %t134, ptr %l71, !tbaa !23
  %t135 = load %"compiler/source:Span", ptr @G_2ecompiler_2feval_2eSp0
  store %"compiler/source:Span" %t135, ptr %l72
  %t136 = load i32, ptr %l8, !tbaa !23
  %t138 = call %"compiler/mir:Lvalue" @compiler_2fmir_2eLvalue_2eL(i32 %t136)
  store %"compiler/mir:Lvalue" %t138, ptr %l74
  br label %bb18
bb18:
  store { i64, [4 x i64] } zeroinitializer, ptr %t139
  %t140 = getelementptr { i64, [4 x i64] }, ptr %t139, i32 0, i32 0
  store i64 1, ptr %t140
  %t141 = load %"compiler/mir:Lvalue", ptr %l74
  %t142 = insertvalue { %"compiler/mir:Lvalue" } undef, %"compiler/mir:Lvalue" %t141, 0
  %t143 = getelementptr { i64, [4 x i64] }, ptr %t139, i32 0, i32 1
  store { %"compiler/mir:Lvalue" } %t142, ptr %t143
  %t144 = load { i64, [4 x i64] }, ptr %t139
  store { i64, [8 x i64] } zeroinitializer, ptr %t145
  %t146 = getelementptr { i64, [8 x i64] }, ptr %t145, i32 0, i32 0
  store i64 5, ptr %t146
  %t147 = load %"compiler/source:Span", ptr %l72
  %t148 = insertvalue { %"compiler/source:Span", { i64, [4 x i64] } } undef, %"compiler/source:Span" %t147, 0
  %t150 = insertvalue { %"compiler/source:Span", { i64, [4 x i64] } } %t148, { i64, [4 x i64] } %t144, 1
  %t151 = getelementptr { i64, [8 x i64] }, ptr %t145, i32 0, i32 1
  store { %"compiler/source:Span", { i64, [4 x i64] } } %t150, ptr %t151
  %t152 = load { i64, [8 x i64] }, ptr %t145
  %t153 = load ptr, ptr %l70, !tbaa !29
  %t154 = load i32, ptr %l71, !tbaa !23
  call void @compiler_2fmir_2ecompiler_2fmir_3aFn_2eEnd(ptr %v1, ptr %t153, i32 %t154, { i64, [8 x i64] } %t152)
  br label %bb19
bb19:
  %t156 = load ptr, ptr %lp7
  store ptr %t156, ptr %l77, !tbaa !29
  %t157 = load i32, ptr %l12, !tbaa !23
  store i32 %t157, ptr %l78, !tbaa !23
  %t158 = load %"compiler/source:Span", ptr @G_2ecompiler_2feval_2eSp0
  store %"compiler/source:Span" %t158, ptr %l79
  %t159 = load i32, ptr %l10, !tbaa !23
  %t161 = call %"compiler/mir:Lvalue" @compiler_2fmir_2eLvalue_2eL(i32 %t159)
  store %"compiler/mir:Lvalue" %t161, ptr %l81
  br label %bb20
bb20:
  %t162 = load i32, ptr %l9, !tbaa !23
  %t164 = call %"compiler/mir:Lvalue" @compiler_2fmir_2eLvalue_2eL(i32 %t162)
  store %"compiler/mir:Lvalue" %t164, ptr %l83
  br label %bb21
bb21:
  store { i64, [4 x i64] } zeroinitializer, ptr %t165
  %t166 = getelementptr { i64, [4 x i64] }, ptr %t165, i32 0, i32 0
  store i64 1, ptr %t166
  %t167 = load %"compiler/mir:Lvalue", ptr %l83
  %t168 = insertvalue { %"compiler/mir:Lvalue" } undef, %"compiler/mir:Lvalue" %t167, 0
  %t169 = getelementptr { i64, [4 x i64] }, ptr %t165, i32 0, i32 1
  store { %"compiler/mir:Lvalue" } %t168, ptr %t169
  %t170 = load { i64, [4 x i64] }, ptr %t165
  %t172 = load i32, ptr %l5, !tbaa !23
  store { i64, [15 x i64] } zeroinitializer, ptr %t173
  %t174 = getelementptr { i64, [15 x i64] }, ptr %t173, i32 0, i32 0
  store i64 11, ptr %t174
  %t176 = insertvalue { { i64, [4 x i64] }, i32, i32 } undef, { i64, [4 x i64] } %t170, 0
  %t178 = insertvalue { { i64, [4 x i64] }, i32, i32 } %t176, i32 %a4, 1
  %t180 = insertvalue { { i64, [4 x i64] }, i32, i32 } %t178, i32 %t172, 2
  %t181 = getelementptr { i64, [15 x i64] }, ptr %t173, i32 0, i32 1
  store { { i64, [4 x i64] }, i32, i32 } %t180, ptr %t181
  %t182 = load { i64, [15 x i64] }, ptr %t173
  store { i64, [21 x i64] } zeroinitializer, ptr %t183
  %t184 = getelementptr { i64, [21 x i64] }, ptr %t183, i32 0, i32 0
  store i64 0, ptr %t184
  %t185 = load %"compiler/source:Span", ptr %l79
  %t186 = insertvalue { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } undef, %"compiler/source:Span" %t185, 0
  %t187 = load %"compiler/mir:Lvalue", ptr %l81
  %t188 = insertvalue { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } %t186, %"compiler/mir:Lvalue" %t187, 1
  %t190 = insertvalue { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } %t188, { i64, [15 x i64] } %t182, 2
  %t191 = getelementptr { i64, [21 x i64] }, ptr %t183, i32 0, i32 1
  store { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } %t190, ptr %t191
  %t192 = load { i64, [21 x i64] }, ptr %t183
  store { i64, [21 x i64] } %t192, ptr %l88
  %t193 = load ptr, ptr %l77, !tbaa !29
  %t194 = load i32, ptr %l78, !tbaa !23
  call void @compiler_2fmir_2ecompiler_2fmir_3aFn_2eAdd(ptr %v1, ptr %s0, ptr %t193, i32 %t194, ptr %l88)
  br label %bb22
bb22:
  %t196 = load ptr, ptr %lp7
  %t197 = load i32, ptr %l12, !tbaa !23
  %t198 = load %"compiler/source:Span", ptr @G_2ecompiler_2feval_2eSp0
  %t199 = load i32, ptr @G_2ecompiler_2feval_2eS0, !tbaa !23
  store { i64, [21 x i64] } zeroinitializer, ptr %t200
  %t201 = getelementptr { i64, [21 x i64] }, ptr %t200, i32 0, i32 0
  store i64 4, ptr %t201
  %t203 = insertvalue { %"compiler/source:Span", i32 } undef, %"compiler/source:Span" %t198, 0
  %t205 = insertvalue { %"compiler/source:Span", i32 } %t203, i32 %t199, 1
  %t206 = getelementptr { i64, [21 x i64] }, ptr %t200, i32 0, i32 1
  store { %"compiler/source:Span", i32 } %t205, ptr %t206
  %t207 = load { i64, [21 x i64] }, ptr %t200
  store { i64, [21 x i64] } %t207, ptr %l94
  call void @compiler_2fmir_2ecompiler_2fmir_3aFn_2eAdd(ptr %v1, ptr %s0, ptr %t196, i32 %t197, ptr %l94)
  br label %bb23
bb23:
  %t211 = load ptr, ptr %lp7
  store ptr %t211, ptr %l96, !tbaa !29
  %t212 = load i32, ptr %l12, !tbaa !23
  store i32 %t212, ptr %l97, !tbaa !23
  %t213 = load %"compiler/source:Span", ptr @G_2ecompiler_2feval_2eSp0
  store %"compiler/source:Span" %t213, ptr %l98
  %t214 = load i32, ptr %l10, !tbaa !23
  %t216 = call %"compiler/mir:Lvalue" @compiler_2fmir_2eLvalue_2eL(i32 %t214)
  store %"compiler/mir:Lvalue" %t216, ptr %l100
  br label %bb24
bb24:
  store { i64, [4 x i64] } zeroinitializer, ptr %t217
  %t218 = getelementptr { i64, [4 x i64] }, ptr %t217, i32 0, i32 0
  store i64 1, ptr %t218
  %t219 = load %"compiler/mir:Lvalue", ptr %l100
  %t220 = insertvalue { %"compiler/mir:Lvalue" } undef, %"compiler/mir:Lvalue" %t219, 0
  %t221 = getelementptr { i64, [4 x i64] }, ptr %t217, i32 0, i32 1
  store { %"compiler/mir:Lvalue" } %t220, ptr %t221
  %t222 = load { i64, [4 x i64] }, ptr %t217
  store { i64, [8 x i64] } zeroinitializer, ptr %t223
  %t224 = getelementptr { i64, [8 x i64] }, ptr %t223, i32 0, i32 0
  store i64 7, ptr %t224
  %t225 = load %"compiler/source:Span", ptr %l98
  %t226 = insertvalue { %"compiler/source:Span", { i64, [4 x i64] } } undef, %"compiler/source:Span" %t225, 0
  %t228 = insertvalue { %"compiler/source:Span", { i64, [4 x i64] } } %t226, { i64, [4 x i64] } %t222, 1
  %t229 = getelementptr { i64, [8 x i64] }, ptr %t223, i32 0, i32 1
  store { %"compiler/source:Span", { i64, [4 x i64] } } %t228, ptr %t229
  %t230 = load { i64, [8 x i64] }, ptr %t223
  %t231 = load ptr, ptr %l96, !tbaa !29
  %t232 = load i32, ptr %l97, !tbaa !23
  call void @compiler_2fmir_2ecompiler_2fmir_3aFn_2eEnd(ptr %v1, ptr %t231, i32 %t232, { i64, [8 x i64] } %t230)
  br label %bb25
bb25:
  %t234 = load ptr, ptr %lp7
  call void @llvm.memmove.p0.p0.i64(ptr %l103, ptr %t234, i64 800, i1 false)
  call void @__olang_scope_close(ptr %s0)
  call void @llvm.memmove.p0.p0.i64(ptr %out, ptr %l103, i64 800, i1 false)
  br label %ret
ret:
  ret void
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
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 16}
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

define dso_local void @compiler_2feval_2esumFn(ptr %out, ptr %v0, ptr %v1, ptr %a0, i64 %a1, i1 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l3 = alloca i32
  %l4 = alloca i32
  %lp5 = alloca ptr
  %l6 = alloca i32
  %l7 = alloca i32
  %l8 = alloca i32
  %l9 = alloca i32
  %l10 = alloca i32
  %l11 = alloca i32
  %l12 = alloca i32
  %l13 = alloca i32
  %l15 = alloca i32
  %l18 = alloca i32
  %l19 = alloca ptr
  %l20 = alloca i64
  %l21 = alloca ptr
  %l24 = alloca i32
  %l26 = alloca i32
  %l27 = alloca %"compiler/mir:Fn"
  %l31 = alloca i32
  %l35 = alloca i32
  %l39 = alloca i32
  %l43 = alloca i32
  %l48 = alloca i32
  %l50 = alloca i32
  %l52 = alloca i32
  %l54 = alloca i32
  %l55 = alloca ptr
  %l56 = alloca i32
  %l57 = alloca %"compiler/source:Span"
  %l59 = alloca %"compiler/mir:Lvalue"
  %l63 = alloca { i64, [21 x i64] }
  %l65 = alloca ptr
  %l66 = alloca i32
  %l67 = alloca %"compiler/source:Span"
  %l69 = alloca %"compiler/mir:Lvalue"
  %l73 = alloca { i64, [21 x i64] }
  %l79 = alloca ptr
  %l80 = alloca i32
  %l82 = alloca i64
  %l83 = alloca i32
  %l84 = alloca i32
  %l86 = alloca %"compiler/mir:Lvalue"
  %l87 = alloca { i64, [4 x i64] }
  %l88 = alloca { i64, [4 x i64] }
  %l89 = alloca ptr
  %l90 = alloca i32
  %l92 = alloca %"compiler/mir:Lvalue"
  %l101 = alloca { i64, [21 x i64] }
  %l104 = alloca ptr
  %l105 = alloca i32
  %l106 = alloca %"compiler/source:Span"
  %l108 = alloca %"compiler/mir:Lvalue"
  %l117 = alloca { i64, [21 x i64] }
  %l119 = alloca ptr
  %l120 = alloca i32
  %l122 = alloca i64
  %l123 = alloca i32
  %l124 = alloca i32
  %l126 = alloca %"compiler/mir:Lvalue"
  %l127 = alloca { i64, [4 x i64] }
  %l129 = alloca %"compiler/mir:Lvalue"
  %l131 = alloca ptr
  %l132 = alloca i32
  %l134 = alloca i64
  %l135 = alloca i32
  %l136 = alloca i32
  %l138 = alloca %"compiler/mir:Lvalue"
  %l146 = alloca { i64, [21 x i64] }
  %l156 = alloca { i64, [21 x i64] }
  %l158 = alloca ptr
  %l159 = alloca i32
  %l160 = alloca %"compiler/source:Span"
  %l162 = alloca %"compiler/mir:Lvalue"
  %l165 = alloca %"compiler/mir:Fn"
  %s0 = alloca %olang.scope
  %s1 = alloca %olang.scope
  %t24 = alloca %"compiler/mir:Fn", align 8
  %t90 = alloca { i64, [4 x i64] }, align 8
  %t97 = alloca { i64, [15 x i64] }, align 8
  %t103 = alloca { i64, [21 x i64] }, align 8
  %t123 = alloca { i64, [4 x i64] }, align 8
  %t130 = alloca { i64, [15 x i64] }, align 8
  %t136 = alloca { i64, [21 x i64] }, align 8
  %t152 = alloca { i64, [8 x i64] }, align 8
  %t170 = alloca { i64, [4 x i64] }, align 8
  %t189 = alloca { i64, [4 x i64] }, align 8
  %t197 = alloca { i64, [8 x i64] }, align 8
  %t214 = alloca { i64, [21 x i64] }, align 8
  %t234 = alloca { i64, [1 x i64] }, align 8
  %t242 = alloca { i64, [4 x i64] }, align 8
  %t250 = alloca { i64, [4 x i64] }, align 8
  %t257 = alloca { i64, [15 x i64] }, align 8
  %t269 = alloca { i64, [21 x i64] }, align 8
  %t291 = alloca { i64, [4 x i64] }, align 8
  %t300 = alloca { i64, [4 x i64] }, align 8
  %t322 = alloca { i64, [4 x i64] }, align 8
  %t329 = alloca { i64, [4 x i64] }, align 8
  %t347 = alloca { i64, [21 x i64] }, align 8
  %t361 = alloca { i64, [8 x i64] }, align 8
  %t374 = alloca { i64, [21 x i64] }, align 8
  %t391 = alloca { i64, [4 x i64] }, align 8
  %t397 = alloca { i64, [8 x i64] }, align 8
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePrim(ptr %v0, ptr %s0, ptr %t1, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d4, i32 0, i32 1) })
  store i32 %t3, ptr %l15
  br label %bb1
bb1:
  %t4 = load i32, ptr %l15, !tbaa !23
  store i32 %t4, ptr %l3, !tbaa !23
  %t5 = load ptr, ptr %l0, !tbaa !29
  %t6 = load i32, ptr %l3, !tbaa !23
  %t9 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eArray(ptr %v0, ptr %t5, i32 %t6, i32 0)
  store i32 %t9, ptr %l18
  br label %bb2
bb2:
  %t10 = load i32, ptr %l18, !tbaa !23
  store i32 %t10, ptr %l4, !tbaa !23
  %t11 = load ptr, ptr %l0, !tbaa !29
  store ptr %t11, ptr %l19, !tbaa !29
  store i64 %a1, ptr %l20, !tbaa !24
  %t13 = load ptr, ptr %l0, !tbaa !29
  store ptr %t13, ptr %l21, !tbaa !29
  %t14 = load ptr, ptr %l0, !tbaa !29
  %t15 = load i32, ptr %l3, !tbaa !23
  %t18 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eList1(ptr %v0, ptr %t14, i32 %t15)
  store i32 %t18, ptr %l24
  br label %bb3
bb3:
  %t19 = load i32, ptr %l3, !tbaa !23
  %t20 = load ptr, ptr %l21, !tbaa !29
  %t21 = load i32, ptr %l24, !tbaa !23
  %t23 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eFunc(ptr %v0, ptr %t20, i32 %t21, i32 %t19, i32 0, i32 0, i64 0, i1 false, i32 0, i64 0)
  store i32 %t23, ptr %l26
  br label %bb4
bb4:
  %t25 = load ptr, ptr %l19, !tbaa !29
  %t26 = load i64, ptr %l20, !tbaa !24
  %t27 = load i32, ptr %l26, !tbaa !23
  call void @compiler_2feval_2etfn(ptr %t24, ptr %v0, ptr %v1, ptr %t25, i64 %t26, i32 %t27)
  call void @llvm.memmove.p0.p0.i64(ptr %l27, ptr %t24, i64 800, i1 false)
  br label %bb5
bb5:
  %t28 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 800, i64 8)
  store ptr %t28, ptr %lp5
  %t29 = load ptr, ptr %lp5
  call void @llvm.memmove.p0.p0.i64(ptr %t29, ptr %l27, i64 800, i1 false)
  %t30 = load ptr, ptr %lp5
  %t31 = load i32, ptr %l3, !tbaa !23
  %t32 = load %"compiler/source:Span", ptr @G_2ecompiler_2feval_2eSp0
  %t36 = call i32 @compiler_2fmir_2ecompiler_2fmir_3aFn_2eAddTemp(ptr %v1, ptr %t30, i32 %t31, %"compiler/source:Span" %t32)
  store i32 %t36, ptr %l31
  br label %bb6
bb6:
  %t37 = load i32, ptr %l31, !tbaa !23
  store i32 %t37, ptr %l6, !tbaa !23
  %t38 = load ptr, ptr %lp5
  %t39 = load i32, ptr %l3, !tbaa !23
  %t40 = load %"compiler/source:Span", ptr @G_2ecompiler_2feval_2eSp0
  %t44 = call i32 @compiler_2fmir_2ecompiler_2fmir_3aFn_2eAddTemp(ptr %v1, ptr %t38, i32 %t39, %"compiler/source:Span" %t40)
  store i32 %t44, ptr %l35
  br label %bb7
bb7:
  %t45 = load i32, ptr %l35, !tbaa !23
  store i32 %t45, ptr %l7, !tbaa !23
  %t46 = load ptr, ptr %lp5
  %t47 = load i32, ptr @G_2ecompiler_2ftypes_2eBoolT, !tbaa !23
  %t48 = load %"compiler/source:Span", ptr @G_2ecompiler_2feval_2eSp0
  %t52 = call i32 @compiler_2fmir_2ecompiler_2fmir_3aFn_2eAddTemp(ptr %v1, ptr %t46, i32 %t47, %"compiler/source:Span" %t48)
  store i32 %t52, ptr %l39
  br label %bb8
bb8:
  %t53 = load i32, ptr %l39, !tbaa !23
  store i32 %t53, ptr %l8, !tbaa !23
  %t54 = load ptr, ptr %lp5
  %t55 = load i32, ptr %l4, !tbaa !23
  %t56 = load %"compiler/source:Span", ptr @G_2ecompiler_2feval_2eSp0
  %t60 = call i32 @compiler_2fmir_2ecompiler_2fmir_3aFn_2eAddTemp(ptr %v1, ptr %t54, i32 %t55, %"compiler/source:Span" %t56)
  store i32 %t60, ptr %l43
  br label %bb9
bb9:
  %t61 = load i32, ptr %l43, !tbaa !23
  store i32 %t61, ptr %l9, !tbaa !23
  %t62 = load ptr, ptr %lp5
  %t63 = load i32, ptr @G_2ecompiler_2feval_2eS0, !tbaa !23
  %t64 = load %"compiler/source:Span", ptr @G_2ecompiler_2feval_2eSp0
  %t69 = call i32 @compiler_2fmir_2ecompiler_2fmir_3aFn_2eAddScope(ptr %v1, ptr %t62, i32 2, i32 %t63, i32 1, %"compiler/source:Span" %t64, i32 0)
  store i32 %t69, ptr %l48
  br label %bb10
bb10:
  %t70 = load i32, ptr %l48, !tbaa !23
  store i32 %t70, ptr %l10, !tbaa !23
  %t71 = load ptr, ptr %lp5
  %t73 = call i32 @compiler_2fmir_2ecompiler_2fmir_3aFn_2eNewBlock(ptr %v1, ptr %t71)
  store i32 %t73, ptr %l50
  br label %bb11
bb11:
  %t74 = load i32, ptr %l50, !tbaa !23
  store i32 %t74, ptr %l11, !tbaa !23
  %t75 = load ptr, ptr %lp5
  %t77 = call i32 @compiler_2fmir_2ecompiler_2fmir_3aFn_2eNewBlock(ptr %v1, ptr %t75)
  store i32 %t77, ptr %l52
  br label %bb12
bb12:
  %t78 = load i32, ptr %l52, !tbaa !23
  store i32 %t78, ptr %l12, !tbaa !23
  %t79 = load ptr, ptr %lp5
  %t81 = call i32 @compiler_2fmir_2ecompiler_2fmir_3aFn_2eNewBlock(ptr %v1, ptr %t79)
  store i32 %t81, ptr %l54
  br label %bb13
bb13:
  %t82 = load i32, ptr %l54, !tbaa !23
  store i32 %t82, ptr %l13, !tbaa !23
  %t83 = load ptr, ptr %lp5
  store ptr %t83, ptr %l55, !tbaa !29
  %t84 = load i32, ptr @G_2ecompiler_2feval_2eB0, !tbaa !23
  store i32 %t84, ptr %l56, !tbaa !23
  %t85 = load %"compiler/source:Span", ptr @G_2ecompiler_2feval_2eSp0
  store %"compiler/source:Span" %t85, ptr %l57
  %t86 = load i32, ptr %l6, !tbaa !23
  %t88 = call %"compiler/mir:Lvalue" @compiler_2fmir_2eLvalue_2eL(i32 %t86)
  store %"compiler/mir:Lvalue" %t88, ptr %l59
  br label %bb14
bb14:
  %t89 = load i32, ptr %l3, !tbaa !23
  store { i64, [4 x i64] } zeroinitializer, ptr %t90
  %t91 = getelementptr { i64, [4 x i64] }, ptr %t90, i32 0, i32 0
  store i64 2, ptr %t91
  %t93 = insertvalue { i32, i64 } undef, i32 %t89, 0
  %t94 = insertvalue { i32, i64 } %t93, i64 0, 1
  %t95 = getelementptr { i64, [4 x i64] }, ptr %t90, i32 0, i32 1
  store { i32, i64 } %t94, ptr %t95
  %t96 = load { i64, [4 x i64] }, ptr %t90
  store { i64, [15 x i64] } zeroinitializer, ptr %t97
  %t98 = getelementptr { i64, [15 x i64] }, ptr %t97, i32 0, i32 0
  store i64 0, ptr %t98
  %t100 = insertvalue { { i64, [4 x i64] } } undef, { i64, [4 x i64] } %t96, 0
  %t101 = getelementptr { i64, [15 x i64] }, ptr %t97, i32 0, i32 1
  store { { i64, [4 x i64] } } %t100, ptr %t101
  %t102 = load { i64, [15 x i64] }, ptr %t97
  store { i64, [21 x i64] } zeroinitializer, ptr %t103
  %t104 = getelementptr { i64, [21 x i64] }, ptr %t103, i32 0, i32 0
  store i64 0, ptr %t104
  %t105 = load %"compiler/source:Span", ptr %l57
  %t106 = insertvalue { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } undef, %"compiler/source:Span" %t105, 0
  %t107 = load %"compiler/mir:Lvalue", ptr %l59
  %t108 = insertvalue { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } %t106, %"compiler/mir:Lvalue" %t107, 1
  %t110 = insertvalue { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } %t108, { i64, [15 x i64] } %t102, 2
  %t111 = getelementptr { i64, [21 x i64] }, ptr %t103, i32 0, i32 1
  store { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } %t110, ptr %t111
  %t112 = load { i64, [21 x i64] }, ptr %t103
  store { i64, [21 x i64] } %t112, ptr %l63
  %t113 = load ptr, ptr %l55, !tbaa !29
  %t114 = load i32, ptr %l56, !tbaa !23
  call void @compiler_2fmir_2ecompiler_2fmir_3aFn_2eAdd(ptr %v1, ptr %s0, ptr %t113, i32 %t114, ptr %l63)
  br label %bb15
bb15:
  %t116 = load ptr, ptr %lp5
  store ptr %t116, ptr %l65, !tbaa !29
  %t117 = load i32, ptr @G_2ecompiler_2feval_2eB0, !tbaa !23
  store i32 %t117, ptr %l66, !tbaa !23
  %t118 = load %"compiler/source:Span", ptr @G_2ecompiler_2feval_2eSp0
  store %"compiler/source:Span" %t118, ptr %l67
  %t119 = load i32, ptr %l7, !tbaa !23
  %t121 = call %"compiler/mir:Lvalue" @compiler_2fmir_2eLvalue_2eL(i32 %t119)
  store %"compiler/mir:Lvalue" %t121, ptr %l69
  br label %bb16
bb16:
  %t122 = load i32, ptr %l3, !tbaa !23
  store { i64, [4 x i64] } zeroinitializer, ptr %t123
  %t124 = getelementptr { i64, [4 x i64] }, ptr %t123, i32 0, i32 0
  store i64 2, ptr %t124
  %t126 = insertvalue { i32, i64 } undef, i32 %t122, 0
  %t127 = insertvalue { i32, i64 } %t126, i64 0, 1
  %t128 = getelementptr { i64, [4 x i64] }, ptr %t123, i32 0, i32 1
  store { i32, i64 } %t127, ptr %t128
  %t129 = load { i64, [4 x i64] }, ptr %t123
  store { i64, [15 x i64] } zeroinitializer, ptr %t130
  %t131 = getelementptr { i64, [15 x i64] }, ptr %t130, i32 0, i32 0
  store i64 0, ptr %t131
  %t133 = insertvalue { { i64, [4 x i64] } } undef, { i64, [4 x i64] } %t129, 0
  %t134 = getelementptr { i64, [15 x i64] }, ptr %t130, i32 0, i32 1
  store { { i64, [4 x i64] } } %t133, ptr %t134
  %t135 = load { i64, [15 x i64] }, ptr %t130
  store { i64, [21 x i64] } zeroinitializer, ptr %t136
  %t137 = getelementptr { i64, [21 x i64] }, ptr %t136, i32 0, i32 0
  store i64 0, ptr %t137
  %t138 = load %"compiler/source:Span", ptr %l67
  %t139 = insertvalue { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } undef, %"compiler/source:Span" %t138, 0
  %t140 = load %"compiler/mir:Lvalue", ptr %l69
  %t141 = insertvalue { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } %t139, %"compiler/mir:Lvalue" %t140, 1
  %t143 = insertvalue { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } %t141, { i64, [15 x i64] } %t135, 2
  %t144 = getelementptr { i64, [21 x i64] }, ptr %t136, i32 0, i32 1
  store { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } %t143, ptr %t144
  %t145 = load { i64, [21 x i64] }, ptr %t136
  store { i64, [21 x i64] } %t145, ptr %l73
  %t146 = load ptr, ptr %l65, !tbaa !29
  %t147 = load i32, ptr %l66, !tbaa !23
  call void @compiler_2fmir_2ecompiler_2fmir_3aFn_2eAdd(ptr %v1, ptr %s0, ptr %t146, i32 %t147, ptr %l73)
  br label %bb17
bb17:
  %t149 = load ptr, ptr %lp5
  %t150 = load i32, ptr @G_2ecompiler_2feval_2eB0, !tbaa !23
  %t151 = load i32, ptr %l11, !tbaa !23
  store { i64, [8 x i64] } zeroinitializer, ptr %t152
  %t153 = getelementptr { i64, [8 x i64] }, ptr %t152, i32 0, i32 0
  store i64 1, ptr %t153
  %t155 = insertvalue { i32 } undef, i32 %t151, 0
  %t156 = getelementptr { i64, [8 x i64] }, ptr %t152, i32 0, i32 1
  store { i32 } %t155, ptr %t156
  %t157 = load { i64, [8 x i64] }, ptr %t152
  call void @compiler_2fmir_2ecompiler_2fmir_3aFn_2eEnd(ptr %v1, ptr %t149, i32 %t150, { i64, [8 x i64] } %t157)
  br label %bb18
bb18:
  %t161 = load ptr, ptr %lp5
  store ptr %t161, ptr %l79, !tbaa !29
  %t162 = load i32, ptr %l11, !tbaa !23
  store i32 %t162, ptr %l80, !tbaa !23
  %t163 = load i32, ptr %l8, !tbaa !23
  %t165 = sext i32 %t163 to i64
  store i64 %t165, ptr %l82, !tbaa !24
  store i32 15, ptr %l83
  %t166 = load i32, ptr @G_2ecompiler_2ftypes_2eBoolT, !tbaa !23
  store i32 %t166, ptr %l84, !tbaa !23
  %t167 = load i32, ptr %l6, !tbaa !23
  %t169 = call %"compiler/mir:Lvalue" @compiler_2fmir_2eLvalue_2eL(i32 %t167)
  store %"compiler/mir:Lvalue" %t169, ptr %l86
  br label %bb19
bb19:
  store { i64, [4 x i64] } zeroinitializer, ptr %t170
  %t171 = getelementptr { i64, [4 x i64] }, ptr %t170, i32 0, i32 0
  store i64 1, ptr %t171
  %t172 = load %"compiler/mir:Lvalue", ptr %l86
  %t173 = insertvalue { %"compiler/mir:Lvalue" } undef, %"compiler/mir:Lvalue" %t172, 0
  %t174 = getelementptr { i64, [4 x i64] }, ptr %t170, i32 0, i32 1
  store { %"compiler/mir:Lvalue" } %t173, ptr %t174
  %t175 = load { i64, [4 x i64] }, ptr %t170
  store { i64, [4 x i64] } %t175, ptr %l87
  %t176 = call { i64, [4 x i64] } @compiler_2feval_2etcopy(i64 0)
  store { i64, [4 x i64] } %t176, ptr %l88
  br label %bb20
bb20:
  %t177 = load ptr, ptr %l79, !tbaa !29
  %t178 = load i32, ptr %l80, !tbaa !23
  %t179 = load i64, ptr %l82, !tbaa !24
  %t180 = load i32, ptr %l83, !range !{i32 0, i32 52}
  %t181 = load i32, ptr %l84, !tbaa !23
  %t182 = load { i64, [4 x i64] }, ptr %l87
  %t183 = load { i64, [4 x i64] }, ptr %l88
  call void @compiler_2feval_2etprim(ptr %v1, ptr %t177, i32 %t178, i64 %t179, i32 %t180, i32 %t181, { i64, [4 x i64] } %t182, { i64, [4 x i64] } %t183)
  br label %bb21
bb21:
  %t184 = load ptr, ptr %lp5
  store ptr %t184, ptr %l89, !tbaa !29
  %t185 = load i32, ptr %l11, !tbaa !23
  store i32 %t185, ptr %l90, !tbaa !23
  %t186 = load i32, ptr %l8, !tbaa !23
  %t188 = call %"compiler/mir:Lvalue" @compiler_2fmir_2eLvalue_2eL(i32 %t186)
  store %"compiler/mir:Lvalue" %t188, ptr %l92
  br label %bb22
bb22:
  store { i64, [4 x i64] } zeroinitializer, ptr %t189
  %t190 = getelementptr { i64, [4 x i64] }, ptr %t189, i32 0, i32 0
  store i64 1, ptr %t190
  %t191 = load %"compiler/mir:Lvalue", ptr %l92
  %t192 = insertvalue { %"compiler/mir:Lvalue" } undef, %"compiler/mir:Lvalue" %t191, 0
  %t193 = getelementptr { i64, [4 x i64] }, ptr %t189, i32 0, i32 1
  store { %"compiler/mir:Lvalue" } %t192, ptr %t193
  %t194 = load { i64, [4 x i64] }, ptr %t189
  %t195 = load i32, ptr %l12, !tbaa !23
  %t196 = load i32, ptr %l13, !tbaa !23
  store { i64, [8 x i64] } zeroinitializer, ptr %t197
  %t198 = getelementptr { i64, [8 x i64] }, ptr %t197, i32 0, i32 0
  store i64 2, ptr %t198
  %t200 = insertvalue { { i64, [4 x i64] }, i32, i32 } undef, { i64, [4 x i64] } %t194, 0
  %t202 = insertvalue { { i64, [4 x i64] }, i32, i32 } %t200, i32 %t195, 1
  %t204 = insertvalue { { i64, [4 x i64] }, i32, i32 } %t202, i32 %t196, 2
  %t205 = getelementptr { i64, [8 x i64] }, ptr %t197, i32 0, i32 1
  store { { i64, [4 x i64] }, i32, i32 } %t204, ptr %t205
  %t206 = load { i64, [8 x i64] }, ptr %t197
  %t207 = load ptr, ptr %l89, !tbaa !29
  %t208 = load i32, ptr %l90, !tbaa !23
  call void @compiler_2fmir_2ecompiler_2fmir_3aFn_2eEnd(ptr %v1, ptr %t207, i32 %t208, { i64, [8 x i64] } %t206)
  br label %bb23
bb23:
  %t210 = load ptr, ptr %lp5
  %t211 = load i32, ptr %l12, !tbaa !23
  %t212 = load %"compiler/source:Span", ptr @G_2ecompiler_2feval_2eSp0
  %t213 = load i32, ptr %l10, !tbaa !23
  store { i64, [21 x i64] } zeroinitializer, ptr %t214
  %t215 = getelementptr { i64, [21 x i64] }, ptr %t214, i32 0, i32 0
  store i64 3, ptr %t215
  %t217 = insertvalue { %"compiler/source:Span", i32 } undef, %"compiler/source:Span" %t212, 0
  %t219 = insertvalue { %"compiler/source:Span", i32 } %t217, i32 %t213, 1
  %t220 = getelementptr { i64, [21 x i64] }, ptr %t214, i32 0, i32 1
  store { %"compiler/source:Span", i32 } %t219, ptr %t220
  %t221 = load { i64, [21 x i64] }, ptr %t214
  store { i64, [21 x i64] } %t221, ptr %l101
  call void @compiler_2fmir_2ecompiler_2fmir_3aFn_2eAdd(ptr %v1, ptr %s0, ptr %t210, i32 %t211, ptr %l101)
  br label %bb24
bb24:
  br i1 %a2, label %bb25, label %bb26
bb25:
  store %olang.scope zeroinitializer, ptr %s1
  %t227 = load ptr, ptr %lp5
  store ptr %t227, ptr %l104, !tbaa !29
  %t228 = load i32, ptr %l12, !tbaa !23
  store i32 %t228, ptr %l105, !tbaa !23
  %t229 = load %"compiler/source:Span", ptr @G_2ecompiler_2feval_2eSp0
  store %"compiler/source:Span" %t229, ptr %l106
  %t230 = load i32, ptr %l9, !tbaa !23
  %t232 = call %"compiler/mir:Lvalue" @compiler_2fmir_2eLvalue_2eL(i32 %t230)
  store %"compiler/mir:Lvalue" %t232, ptr %l108
  br label %bb27
bb26:
  br label %bb29
bb27:
  %t233 = load i32, ptr %l10, !tbaa !23
  store { i64, [1 x i64] } zeroinitializer, ptr %t234
  %t235 = getelementptr { i64, [1 x i64] }, ptr %t234, i32 0, i32 0
  store i64 0, ptr %t235
  %t237 = insertvalue { i32 } undef, i32 %t233, 0
  %t238 = getelementptr { i64, [1 x i64] }, ptr %t234, i32 0, i32 1
  store { i32 } %t237, ptr %t238
  %t239 = load { i64, [1 x i64] }, ptr %t234
  %t240 = load i32, ptr %l4, !tbaa !23
  %t241 = load i32, ptr %l3, !tbaa !23
  store { i64, [4 x i64] } zeroinitializer, ptr %t242
  %t243 = getelementptr { i64, [4 x i64] }, ptr %t242, i32 0, i32 0
  store i64 2, ptr %t243
  %t245 = insertvalue { i32, i64 } undef, i32 %t241, 0
  %t246 = insertvalue { i32, i64 } %t245, i64 4, 1
  %t247 = getelementptr { i64, [4 x i64] }, ptr %t242, i32 0, i32 1
  store { i32, i64 } %t246, ptr %t247
  %t248 = load { i64, [4 x i64] }, ptr %t242
  %t249 = load i32, ptr %l3, !tbaa !23
  store { i64, [4 x i64] } zeroinitializer, ptr %t250
  %t251 = getelementptr { i64, [4 x i64] }, ptr %t250, i32 0, i32 0
  store i64 2, ptr %t251
  %t253 = insertvalue { i32, i64 } undef, i32 %t249, 0
  %t254 = insertvalue { i32, i64 } %t253, i64 7, 1
  %t255 = getelementptr { i64, [4 x i64] }, ptr %t250, i32 0, i32 1
  store { i32, i64 } %t254, ptr %t255
  %t256 = load { i64, [4 x i64] }, ptr %t250
  store { i64, [15 x i64] } zeroinitializer, ptr %t257
  %t258 = getelementptr { i64, [15 x i64] }, ptr %t257, i32 0, i32 0
  store i64 8, ptr %t258
  %t260 = insertvalue { { i64, [1 x i64] }, i32, { i64, [4 x i64] }, { i64, [4 x i64] } } undef, { i64, [1 x i64] } %t239, 0
  %t262 = insertvalue { { i64, [1 x i64] }, i32, { i64, [4 x i64] }, { i64, [4 x i64] } } %t260, i32 %t240, 1
  %t264 = insertvalue { { i64, [1 x i64] }, i32, { i64, [4 x i64] }, { i64, [4 x i64] } } %t262, { i64, [4 x i64] } %t248, 2
  %t266 = insertvalue { { i64, [1 x i64] }, i32, { i64, [4 x i64] }, { i64, [4 x i64] } } %t264, { i64, [4 x i64] } %t256, 3
  %t267 = getelementptr { i64, [15 x i64] }, ptr %t257, i32 0, i32 1
  store { { i64, [1 x i64] }, i32, { i64, [4 x i64] }, { i64, [4 x i64] } } %t266, ptr %t267
  %t268 = load { i64, [15 x i64] }, ptr %t257
  store { i64, [21 x i64] } zeroinitializer, ptr %t269
  %t270 = getelementptr { i64, [21 x i64] }, ptr %t269, i32 0, i32 0
  store i64 0, ptr %t270
  %t271 = load %"compiler/source:Span", ptr %l106
  %t272 = insertvalue { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } undef, %"compiler/source:Span" %t271, 0
  %t273 = load %"compiler/mir:Lvalue", ptr %l108
  %t274 = insertvalue { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } %t272, %"compiler/mir:Lvalue" %t273, 1
  %t276 = insertvalue { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } %t274, { i64, [15 x i64] } %t268, 2
  %t277 = getelementptr { i64, [21 x i64] }, ptr %t269, i32 0, i32 1
  store { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } %t276, ptr %t277
  %t278 = load { i64, [21 x i64] }, ptr %t269
  store { i64, [21 x i64] } %t278, ptr %l117
  %t279 = load ptr, ptr %l104, !tbaa !29
  %t280 = load i32, ptr %l105, !tbaa !23
  call void @compiler_2fmir_2ecompiler_2fmir_3aFn_2eAdd(ptr %v1, ptr %s1, ptr %t279, i32 %t280, ptr %l117)
  br label %bb28
bb28:
  call void @__olang_scope_close(ptr %s1)
  br label %bb29
bb29:
  %t282 = load ptr, ptr %lp5
  store ptr %t282, ptr %l119, !tbaa !29
  %t283 = load i32, ptr %l12, !tbaa !23
  store i32 %t283, ptr %l120, !tbaa !23
  %t284 = load i32, ptr %l7, !tbaa !23
  %t286 = sext i32 %t284 to i64
  store i64 %t286, ptr %l122, !tbaa !24
  store i32 3, ptr %l123
  %t287 = load i32, ptr %l3, !tbaa !23
  store i32 %t287, ptr %l124, !tbaa !23
  %t288 = load i32, ptr %l7, !tbaa !23
  %t290 = call %"compiler/mir:Lvalue" @compiler_2fmir_2eLvalue_2eL(i32 %t288)
  store %"compiler/mir:Lvalue" %t290, ptr %l126
  br label %bb30
bb30:
  store { i64, [4 x i64] } zeroinitializer, ptr %t291
  %t292 = getelementptr { i64, [4 x i64] }, ptr %t291, i32 0, i32 0
  store i64 1, ptr %t292
  %t293 = load %"compiler/mir:Lvalue", ptr %l126
  %t294 = insertvalue { %"compiler/mir:Lvalue" } undef, %"compiler/mir:Lvalue" %t293, 0
  %t295 = getelementptr { i64, [4 x i64] }, ptr %t291, i32 0, i32 1
  store { %"compiler/mir:Lvalue" } %t294, ptr %t295
  %t296 = load { i64, [4 x i64] }, ptr %t291
  store { i64, [4 x i64] } %t296, ptr %l127
  %t297 = load i32, ptr %l6, !tbaa !23
  %t299 = call %"compiler/mir:Lvalue" @compiler_2fmir_2eLvalue_2eL(i32 %t297)
  store %"compiler/mir:Lvalue" %t299, ptr %l129
  br label %bb31
bb31:
  store { i64, [4 x i64] } zeroinitializer, ptr %t300
  %t301 = getelementptr { i64, [4 x i64] }, ptr %t300, i32 0, i32 0
  store i64 1, ptr %t301
  %t302 = load %"compiler/mir:Lvalue", ptr %l129
  %t303 = insertvalue { %"compiler/mir:Lvalue" } undef, %"compiler/mir:Lvalue" %t302, 0
  %t304 = getelementptr { i64, [4 x i64] }, ptr %t300, i32 0, i32 1
  store { %"compiler/mir:Lvalue" } %t303, ptr %t304
  %t305 = load { i64, [4 x i64] }, ptr %t300
  %t306 = load ptr, ptr %l119, !tbaa !29
  %t307 = load i32, ptr %l120, !tbaa !23
  %t308 = load i64, ptr %l122, !tbaa !24
  %t309 = load i32, ptr %l123, !range !{i32 0, i32 52}
  %t310 = load i32, ptr %l124, !tbaa !23
  %t311 = load { i64, [4 x i64] }, ptr %l127
  call void @compiler_2feval_2etprim(ptr %v1, ptr %t306, i32 %t307, i64 %t308, i32 %t309, i32 %t310, { i64, [4 x i64] } %t311, { i64, [4 x i64] } %t305)
  br label %bb32
bb32:
  %t313 = load ptr, ptr %lp5
  store ptr %t313, ptr %l131, !tbaa !29
  %t314 = load i32, ptr %l12, !tbaa !23
  store i32 %t314, ptr %l132, !tbaa !23
  %t315 = load i32, ptr %l6, !tbaa !23
  %t317 = sext i32 %t315 to i64
  store i64 %t317, ptr %l134, !tbaa !24
  store i32 3, ptr %l135
  %t318 = load i32, ptr %l3, !tbaa !23
  store i32 %t318, ptr %l136, !tbaa !23
  %t319 = load i32, ptr %l6, !tbaa !23
  %t321 = call %"compiler/mir:Lvalue" @compiler_2fmir_2eLvalue_2eL(i32 %t319)
  store %"compiler/mir:Lvalue" %t321, ptr %l138
  br label %bb33
bb33:
  store { i64, [4 x i64] } zeroinitializer, ptr %t322
  %t323 = getelementptr { i64, [4 x i64] }, ptr %t322, i32 0, i32 0
  store i64 1, ptr %t323
  %t324 = load %"compiler/mir:Lvalue", ptr %l138
  %t325 = insertvalue { %"compiler/mir:Lvalue" } undef, %"compiler/mir:Lvalue" %t324, 0
  %t326 = getelementptr { i64, [4 x i64] }, ptr %t322, i32 0, i32 1
  store { %"compiler/mir:Lvalue" } %t325, ptr %t326
  %t327 = load { i64, [4 x i64] }, ptr %t322
  %t328 = load i32, ptr %l3, !tbaa !23
  store { i64, [4 x i64] } zeroinitializer, ptr %t329
  %t330 = getelementptr { i64, [4 x i64] }, ptr %t329, i32 0, i32 0
  store i64 2, ptr %t330
  %t332 = insertvalue { i32, i64 } undef, i32 %t328, 0
  %t333 = insertvalue { i32, i64 } %t332, i64 1, 1
  %t334 = getelementptr { i64, [4 x i64] }, ptr %t329, i32 0, i32 1
  store { i32, i64 } %t333, ptr %t334
  %t335 = load { i64, [4 x i64] }, ptr %t329
  %t336 = load ptr, ptr %l131, !tbaa !29
  %t337 = load i32, ptr %l132, !tbaa !23
  %t338 = load i64, ptr %l134, !tbaa !24
  %t339 = load i32, ptr %l135, !range !{i32 0, i32 52}
  %t340 = load i32, ptr %l136, !tbaa !23
  call void @compiler_2feval_2etprim(ptr %v1, ptr %t336, i32 %t337, i64 %t338, i32 %t339, i32 %t340, { i64, [4 x i64] } %t327, { i64, [4 x i64] } %t335)
  br label %bb34
bb34:
  %t343 = load ptr, ptr %lp5
  %t344 = load i32, ptr %l12, !tbaa !23
  %t345 = load %"compiler/source:Span", ptr @G_2ecompiler_2feval_2eSp0
  %t346 = load i32, ptr %l10, !tbaa !23
  store { i64, [21 x i64] } zeroinitializer, ptr %t347
  %t348 = getelementptr { i64, [21 x i64] }, ptr %t347, i32 0, i32 0
  store i64 4, ptr %t348
  %t350 = insertvalue { %"compiler/source:Span", i32 } undef, %"compiler/source:Span" %t345, 0
  %t352 = insertvalue { %"compiler/source:Span", i32 } %t350, i32 %t346, 1
  %t353 = getelementptr { i64, [21 x i64] }, ptr %t347, i32 0, i32 1
  store { %"compiler/source:Span", i32 } %t352, ptr %t353
  %t354 = load { i64, [21 x i64] }, ptr %t347
  store { i64, [21 x i64] } %t354, ptr %l146
  call void @compiler_2fmir_2ecompiler_2fmir_3aFn_2eAdd(ptr %v1, ptr %s0, ptr %t343, i32 %t344, ptr %l146)
  br label %bb35
bb35:
  %t358 = load ptr, ptr %lp5
  %t359 = load i32, ptr %l12, !tbaa !23
  %t360 = load i32, ptr %l11, !tbaa !23
  store { i64, [8 x i64] } zeroinitializer, ptr %t361
  %t362 = getelementptr { i64, [8 x i64] }, ptr %t361, i32 0, i32 0
  store i64 1, ptr %t362
  %t364 = insertvalue { i32 } undef, i32 %t360, 0
  %t365 = getelementptr { i64, [8 x i64] }, ptr %t361, i32 0, i32 1
  store { i32 } %t364, ptr %t365
  %t366 = load { i64, [8 x i64] }, ptr %t361
  call void @compiler_2fmir_2ecompiler_2fmir_3aFn_2eEnd(ptr %v1, ptr %t358, i32 %t359, { i64, [8 x i64] } %t366)
  br label %bb36
bb36:
  %t370 = load ptr, ptr %lp5
  %t371 = load i32, ptr %l13, !tbaa !23
  %t372 = load %"compiler/source:Span", ptr @G_2ecompiler_2feval_2eSp0
  %t373 = load i32, ptr @G_2ecompiler_2feval_2eS0, !tbaa !23
  store { i64, [21 x i64] } zeroinitializer, ptr %t374
  %t375 = getelementptr { i64, [21 x i64] }, ptr %t374, i32 0, i32 0
  store i64 4, ptr %t375
  %t377 = insertvalue { %"compiler/source:Span", i32 } undef, %"compiler/source:Span" %t372, 0
  %t379 = insertvalue { %"compiler/source:Span", i32 } %t377, i32 %t373, 1
  %t380 = getelementptr { i64, [21 x i64] }, ptr %t374, i32 0, i32 1
  store { %"compiler/source:Span", i32 } %t379, ptr %t380
  %t381 = load { i64, [21 x i64] }, ptr %t374
  store { i64, [21 x i64] } %t381, ptr %l156
  call void @compiler_2fmir_2ecompiler_2fmir_3aFn_2eAdd(ptr %v1, ptr %s0, ptr %t370, i32 %t371, ptr %l156)
  br label %bb37
bb37:
  %t385 = load ptr, ptr %lp5
  store ptr %t385, ptr %l158, !tbaa !29
  %t386 = load i32, ptr %l13, !tbaa !23
  store i32 %t386, ptr %l159, !tbaa !23
  %t387 = load %"compiler/source:Span", ptr @G_2ecompiler_2feval_2eSp0
  store %"compiler/source:Span" %t387, ptr %l160
  %t388 = load i32, ptr %l7, !tbaa !23
  %t390 = call %"compiler/mir:Lvalue" @compiler_2fmir_2eLvalue_2eL(i32 %t388)
  store %"compiler/mir:Lvalue" %t390, ptr %l162
  br label %bb38
bb38:
  store { i64, [4 x i64] } zeroinitializer, ptr %t391
  %t392 = getelementptr { i64, [4 x i64] }, ptr %t391, i32 0, i32 0
  store i64 1, ptr %t392
  %t393 = load %"compiler/mir:Lvalue", ptr %l162
  %t394 = insertvalue { %"compiler/mir:Lvalue" } undef, %"compiler/mir:Lvalue" %t393, 0
  %t395 = getelementptr { i64, [4 x i64] }, ptr %t391, i32 0, i32 1
  store { %"compiler/mir:Lvalue" } %t394, ptr %t395
  %t396 = load { i64, [4 x i64] }, ptr %t391
  store { i64, [8 x i64] } zeroinitializer, ptr %t397
  %t398 = getelementptr { i64, [8 x i64] }, ptr %t397, i32 0, i32 0
  store i64 5, ptr %t398
  %t399 = load %"compiler/source:Span", ptr %l160
  %t400 = insertvalue { %"compiler/source:Span", { i64, [4 x i64] } } undef, %"compiler/source:Span" %t399, 0
  %t402 = insertvalue { %"compiler/source:Span", { i64, [4 x i64] } } %t400, { i64, [4 x i64] } %t396, 1
  %t403 = getelementptr { i64, [8 x i64] }, ptr %t397, i32 0, i32 1
  store { %"compiler/source:Span", { i64, [4 x i64] } } %t402, ptr %t403
  %t404 = load { i64, [8 x i64] }, ptr %t397
  %t405 = load ptr, ptr %l158, !tbaa !29
  %t406 = load i32, ptr %l159, !tbaa !23
  call void @compiler_2fmir_2ecompiler_2fmir_3aFn_2eEnd(ptr %v1, ptr %t405, i32 %t406, { i64, [8 x i64] } %t404)
  br label %bb39
bb39:
  %t408 = load ptr, ptr %lp5
  call void @llvm.memmove.p0.p0.i64(ptr %l165, ptr %t408, i64 800, i1 false)
  call void @__olang_scope_close(ptr %s0)
  call void @llvm.memmove.p0.p0.i64(ptr %out, ptr %l165, i64 800, i1 false)
  br label %ret
ret:
  ret void
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

define dso_local i32 @compiler_2feval_2eterr(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1, { i64, ptr } %a2) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca { i64, ptr }
  %l8 = alloca i64
  %l9 = alloca ptr
  %l10 = alloca ptr
  %l11 = alloca i64
  %l14 = alloca i32
  %l16 = alloca i32
  %l17 = alloca i32
  %s0 = alloca %olang.scope
  %rv = alloca i32
  store ptr %a0, ptr %l0
  store { i64, ptr } %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t3 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d5, i32 0, i32 1) }, 1
  %t4 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d5, i32 0, i32 1) }, 0
  %t6 = extractvalue { i64, ptr } %t2, 1
  %t7 = extractvalue { i64, ptr } %t2, 0
  %t8 = add i64 %t4, %t7
  %t9 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t8)
  call void @olang_textcopy(ptr %t9, ptr %t3, i64 %t4)
  %t10 = getelementptr i8, ptr %t9, i64 %t4
  call void @olang_textcopy(ptr %t10, ptr %t6, i64 %t7)
  %t11 = insertvalue { i64, ptr } undef, i64 %t8, 0
  %t12 = insertvalue { i64, ptr } %t11, ptr %t9, 1
  %t14 = extractvalue { i64, ptr } %t12, 0
  %t15 = extractvalue { i64, ptr } %t12, 1
  %t16 = mul i64 %t14, 1
  %t17 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t16)
  call void @llvm.memcpy.p0.p0.i64(ptr %t17, ptr %t15, i64 %t16, i1 false)
  %t18 = insertvalue { i64, ptr } undef, i64 %t14, 0
  %t19 = insertvalue { i64, ptr } %t18, ptr %t17, 1
  %t22 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eAddModule(ptr %v0, ptr %s0, ptr %t1, { i64, ptr } %t19)
  store i64 %t22, ptr %l8
  br label %bb1
bb1:
  %t23 = load i64, ptr %l8, !tbaa !24
  %t24 = load ptr, ptr %l0, !tbaa !29
  store ptr %t24, ptr %l9, !tbaa !29
  %t25 = load ptr, ptr %l0, !tbaa !29
  store ptr %t25, ptr %l10, !tbaa !29
  store i64 %t23, ptr %l11, !tbaa !24
  %t28 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t31 = call i32 @compiler_2fsource_2ecompiler_2fsource_3aNames_2eIntern(ptr %v1, ptr %v2, ptr %a1, { i64, ptr } %t28)
  store i32 %t31, ptr %l14
  br label %bb2
bb2:
  %t32 = load ptr, ptr %l10, !tbaa !29
  %t33 = load i64, ptr %l11, !tbaa !24
  %t34 = load i32, ptr %l14, !tbaa !23
  %t36 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eAddDecl(ptr %v0, ptr %v3, ptr %t32, i64 %t33, i32 %t34, i32 2, i32 0)
  store i32 %t36, ptr %l16
  br label %bb3
bb3:
  %t37 = load ptr, ptr %l9, !tbaa !29
  %t38 = load i32, ptr %l16, !tbaa !23
  %t39 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eNamed(ptr %v0, ptr %t37, i32 %t38, i32 0)
  store i32 %t39, ptr %l17
  br label %bb4
bb4:
  call void @__olang_scope_close(ptr %s0)
  %t40 = load i32, ptr %l17, !tbaa !23
  store i32 %t40, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
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

define dso_local { i64, i64 } @compiler_2feval_2ewideMax(i64 %a0, i1 %a1) #0 {
entry:
  %l0 = alloca i64
  %l2 = alloca i64
  %l3 = alloca { i64, i64 }
  %l7 = alloca i64
  %l15 = alloca { i64, i64 }
  %l20 = alloca { i64, i64 }
  %rv = alloca { i64, i64 }
  store i64 %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  br i1 %a1, label %bb1, label %bb2
bb1:
  %t3 = load i64, ptr %l0, !tbaa !24
  %t5 = sub i64 %t3, 1
  store i64 %t5, ptr %l7, !tbaa !24
  br label %bb3
bb2:
  %t7 = load i64, ptr %l0, !tbaa !24
  store i64 %t7, ptr %l7, !tbaa !24
  br label %bb3
bb3:
  %t9 = load i64, ptr %l7, !tbaa !24
  store i64 %t9, ptr %l2, !tbaa !24
  %t10 = load i64, ptr %l2, !tbaa !24
  %t12 = icmp sge i64 %t10, 128
  br i1 %t12, label %bb4, label %bb5
bb4:
  %t14 = insertvalue { i64, i64 } undef, i64 -1, 0
  %t15 = insertvalue { i64, i64 } %t14, i64 -1, 1
  store { i64, i64 } %t15, ptr %rv
  br label %ret
bb5:
  br label %bb6
bb6:
  %t17 = load i64, ptr %l2, !tbaa !24
  %t19 = call { i64, i64 } @compiler_2feval_2eshl128(i64 1, i64 0, i64 %t17)
  store { i64, i64 } %t19, ptr %l15
  br label %bb7
bb7:
  %t20 = load { i64, i64 }, ptr %l15
  store { i64, i64 } %t20, ptr %l3
  %t21 = getelementptr { i64, i64 }, ptr %l3, i32 0, i32 0
  %t22 = load i64, ptr %t21, !tbaa !24
  %t24 = getelementptr { i64, i64 }, ptr %l3, i32 0, i32 1
  %t25 = load i64, ptr %t24, !tbaa !24
  %t31 = call { i64, i64 } @compiler_2feval_2esub128(i64 %t22, i64 %t25, i64 1, i64 0)
  store { i64, i64 } %t31, ptr %l20
  br label %bb8
bb8:
  %t32 = load { i64, i64 }, ptr %l20
  store { i64, i64 } %t32, ptr %rv
  br label %ret
ret:
  %rr = load { i64, i64 }, ptr %rv
  ret { i64, i64 } %rr
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
  %t1 = load i32, ptr %l0, !range !{i32 0, i32 52}
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
  %t12 = load i32, ptr %l0, !range !{i32 0, i32 52}
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
  %t23 = load i32, ptr %l0, !range !{i32 0, i32 52}
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
  %t34 = load i32, ptr %l0, !range !{i32 0, i32 52}
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
  %t45 = load i32, ptr %l0, !range !{i32 0, i32 52}
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
  %t56 = load i32, ptr %l0, !range !{i32 0, i32 52}
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
  %t67 = load i32, ptr %l0, !range !{i32 0, i32 52}
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
  %t79 = load i32, ptr %l0, !range !{i32 0, i32 52}
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
  %t91 = load i32, ptr %l0, !range !{i32 0, i32 52}
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
  %t103 = load i32, ptr %l0, !range !{i32 0, i32 52}
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
  %t115 = load i32, ptr %l0, !range !{i32 0, i32 52}
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

@.d0 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"I64" }>, align 8
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
declare noalias ptr @__olang_scope_alloc_zeroed(ptr, i64)
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
@olang_2esole_2estd_2fprelude_2fmap_3aMapEntry_3cI64_2c_20std_2fprelude_2ftext_3aString_26_3e_2e1 = weak hidden constant i1 false
declare ptr @__olang_region_make(ptr) noinline
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
@__olang_prog_scope = external thread_local(initialexec) global ptr
declare void @__olang_check_failed(ptr) cold noreturn
@olang_2esole_2ecompiler_2feval_3aMachine_2e42 = weak hidden constant i1 false
declare void @__olang_region_release(ptr) noinline
@olang_2esole_2ecompiler_2feval_3aMachine_2e43 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2feval_3aMachine_2e24 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2feval_3aMachine_2e25 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2feval_3aMachine_2e26 = weak hidden constant i1 false
@.d1 = private constant <{ i64, [15 x i8] }> <{ i64 0, [15 x i8] c"unhandled error" }>, align 8
@.d2 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
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

@.d3 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"I64" }>, align 8
@.d4 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"I64" }>, align 8
@.d5 = private constant <{ i64, [10 x i8] }> <{ i64 0, [10 x i8] c"eval_test_" }>, align 8
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

declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePrim(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eList1(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eFunc(ptr %v0, ptr %a0, i32 %a1, i32 %a2, i32 %a3, i32 %a4, i64 %a5, i1 %a6, i32 %a7, i64 %a8)
declare void @compiler_2feval_2etfn(ptr %out, ptr %v0, ptr %v1, ptr %a0, i64 %a1, i32 %a2)
@G_2ecompiler_2feval_2eSp0 = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>, align 8
declare i32 @compiler_2fmir_2ecompiler_2fmir_3aFn_2eAddTemp(ptr %v0, ptr %a0, i32 %a1, %"compiler/source:Span" %a2)
@G_2ecompiler_2fmir_2eI32T = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\05\00\00\00" }>, align 8
declare i32 @compiler_2fmir_2ecompiler_2fmir_3aFn_2eNewBlock(ptr %v0, ptr %a0)
declare { i64, [2 x i64] } @compiler_2feval_2etkey(i64 %a0)
declare %"compiler/mir:Range" @compiler_2fmir_2ecompiler_2fmir_3aFn_2eArgs(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
@G_2ecompiler_2fmir_2eEmpty = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>, align 8
declare %"compiler/mir:Lvalue" @compiler_2fmir_2eLvalue_2eL(i32 %a0)
declare %"compiler/mir:Call" @compiler_2fmir_3aCall_2ector(ptr %v0, { i64, [7 x i64] } %a0, %"compiler/mir:Range" %a1, %"compiler/mir:Range" %a2, %"compiler/mir:Lvalue" %a3, i1 %a4, i32 %a5, i32 %a6, i32 %a7)
declare i32 @compiler_2fmir_2ecompiler_2fmir_3aFn_2eAddCall(ptr %v0, ptr %a0, %"compiler/mir:Call" %a1)
@G_2ecompiler_2feval_2eB0 = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\00\00\00\00" }>, align 8
declare void @compiler_2fmir_2ecompiler_2fmir_3aFn_2eEnd(ptr %v0, ptr %a0, i32 %a1, { i64, [8 x i64] } %a2)
@G_2ecompiler_2feval_2eS0 = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\00\00\00\00" }>, align 8
declare void @compiler_2fmir_2ecompiler_2fmir_3aFn_2eAdd(ptr %v0, ptr %v1, ptr %a0, i32 %a1, ptr %a2)
declare %"compiler/mir:Case" @compiler_2fmir_3aCase_2ector(ptr %v0, i64 %a0, i32 %a1)
declare %"compiler/mir:Range" @compiler_2fmir_2ecompiler_2fmir_3aFn_2eAddCases(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare i1 @compiler_2feval_2eult64(i64 %a0, i64 %a1)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2ftext_3aString_Hc3dff1927e5c626a9d95abfdf4e9a462(ptr %v0, ptr %v1, ptr %a0, i64 %a1, { i64, ptr } %a2)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2ePut_3cI64_2c_20I64_3e(ptr %v0, ptr %a0, i64 %a1, i64 %a2)
declare i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Array_3ccompiler_2fmir_3aFnKe_H6f34e373626f6b99bb5e62c0fd8bd7a4(ptr %v0, ptr %a0, i64 %a1)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2ftypes_3aTypeId_3e__Hbdd7c5068e376aa260a62181a9f99429(ptr %v0, ptr %a0, i64 %a1, i32 %a2)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Array_3ccompiler_2fmir_3aFnKe_Hd8d89e440939766a34c786789c5d3b97(ptr %v0, ptr %v1, ptr %a0, i64 %a1, { i64, ptr } %a2)
declare { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fmir_3aFnKey_2c_20I64_3e_2eG_H6ffe2eb17daa971b2c9d564ad72358b1(ptr %v0, ptr %a0, { i64, [2 x i64] } %a1)
@G_2ecompiler_2feval_2erRequest = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>, align 8
declare i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2epushFrame(ptr %v0, ptr %a0, i64 %a1, i64 %a2, i64 %a3)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %a0)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %a0, i64 %a1)
declare void @compiler_2feval_2ecompiler_2feval_3aMachine_2estepClose(ptr %v0, ptr %a0)
declare void @compiler_2feval_2ecompiler_2feval_3aMachine_2eloop(ptr %v0, ptr %a0, i64 %a1)
declare void @compiler_2feval_2ecompiler_2feval_3aMachine_2eunwind(ptr %v0, ptr %a0, i64 %a1)
declare %"compiler/eval:gkey" @compiler_2feval_3agkey_2ector(ptr %v0, i64 %a0, i32 %a1)
declare { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2feval_3agkey_2c_20I64_3e_2eG_H841bd46d30f67641fdfac3080f15aea1(ptr %v0, ptr %a0, %"compiler/eval:gkey" %a1)
@G_2ecompiler_2feval_2eWhyNoBody = external constant <{ [8 x i8], ptr }>
declare void @compiler_2feval_2ecompiler_2feval_3aMachine_2erefuse(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare %"compiler/eval:global" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3aglobal_3e_2eAt_3ccompiler_2feval_3aglobal_3e(ptr %v0, ptr %a0, i64 %a1)
declare void @compiler_2feval_2ecompiler_2feval_3aMachine_2estartGlobal(ptr %v0, ptr %a0, i64 %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fpair_3aPair_3cI64_2c_20compiler__H5ec116bb82f5a234bb19cb32db1efc81(ptr %v0, ptr %a0)
declare %"compiler/source:Span" @compiler_2fsource_3aSpan_2ector(ptr %v0, i32 %a0, i32 %a1)
declare %"std/pair:Pair.9f40551e0d6019a8e678d8f53048b6ba" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fpair_3aPair_3cI64_2c_20compiler__H1a77801a5ab3ea58cbf0ff15b43ff2de(ptr %v0, ptr %a0, i64 %a1)
@G_2ecompiler_2feval_2eNullPtr = available_externally constant <{ [16 x i8] }> <{ [16 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2feval_2eWhyLong = external constant <{ [8 x i8], ptr }>
@G_2ecompiler_2feval_2eWhyMemory = external constant <{ [8 x i8], ptr }>
declare i64 @compiler_2feval_2eclassOf(i64 %a0)
declare i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2erdRaw(ptr %v0, ptr %a0, i64 %a1, i64 %a2)
declare { i32, i64 } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePop_3cI64_3e(ptr %v0, ptr %a0)
declare i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2enewSlot(ptr %v0, ptr %a0)
@G_2ecompiler_2feval_2eslotMask = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\FF\FF\FF\00\00\00\00\00" }>, align 8
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3ascope_3e_2eAt_3ccompiler_2feval_3ascope_3e(ptr %out, ptr %v0, ptr %a0, i64 %a1)
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3ascope_3e_2eRefMut_3ccompiler_2feval_3ascope_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
@G_2ecompiler_2feval_2eslotBits = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\18\00\00\00\00\00\00\00" }>, align 8
declare %"compiler/eval:Ptr" @compiler_2feval_3aPtr_2ector(ptr %v0, i64 %a0, i64 %a1)
declare { %"compiler/eval:Ptr", i32 } @compiler_2feval_2ecompiler_2feval_3aMachine_2eplace(ptr %v0, ptr %a0, i64 %a1, %"compiler/mir:Lvalue" %a2)
declare %"compiler/eval:Ptr" @compiler_2feval_2ecompiler_2feval_3aMachine_2escratchFor(ptr %v0, ptr %a0, i64 %a1, i64 %a2)
declare void @compiler_2feval_2ecompiler_2feval_3aMachine_2ecopy(ptr %v0, ptr %a0, %"compiler/eval:Ptr" %a1, %"compiler/eval:Ptr" %a2, i64 %a3)
declare void @compiler_2feval_2ecompiler_2feval_3aMachine_2ezero(ptr %v0, ptr %a0, %"compiler/eval:Ptr" %a1, i64 %a2)
declare i32 @compiler_2feval_2ecompiler_2feval_3aMachine_2earrayOf(ptr %v0, ptr %a0, i32 %a1)
@G_2ecompiler_2ftypes_2eUnknownT = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\00\00\00\00" }>, align 8
declare { i64, [4 x i64] } @compiler_2feval_2ecompiler_2feval_3aMachine_2earg(ptr %v0, ptr %a0, i64 %a1, %"compiler/mir:Range" %a2, i64 %a3)
declare void @compiler_2feval_2ecompiler_2feval_3aMachine_2econvertArray(ptr %v0, ptr %a0, i64 %a1, %"compiler/eval:Ptr" %a2, { i64, [4 x i64] } %a3, i32 %a4)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %a0, i32 %a1)
@G_2ecompiler_2feval_2evAgg = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\0A\00\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2feval_2evEnum = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\08\00\00\00\00\00\00\00" }>, align 8
declare %"compiler/eval:Ptr" @compiler_2feval_2ecompiler_2feval_3aMachine_2eaddr(ptr %v0, ptr %a0, i64 %a1, { i64, [4 x i64] } %a2, i64 %a3)
declare %"compiler/eval:Ptr" @compiler_2feval_2ecompiler_2feval_3aMachine_2erdPtr(ptr %v0, ptr %a0, %"compiler/eval:Ptr" %a1)
declare i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2escalar(ptr %v0, ptr %a0, i64 %a1, { i64, [4 x i64] } %a2)
declare %"compiler/eval:Ptr" @compiler_2feval_2ecompiler_2feval_3aMachine_2etable(ptr %v0, ptr %a0, i64 %a1)
declare i1 @compiler_2feval_2esatOp(i32 %a0)
declare i1 @compiler_2feval_2ecompiler_2feval_3aMachine_2ewideOp(ptr %v0, ptr %a0, i64 %a1, i32 %a2, %"compiler/mir:Range" %a3)
declare void @compiler_2feval_2ecompiler_2feval_3aMachine_2eprimWide(ptr %v0, ptr %a0, i64 %a1, %"compiler/eval:Ptr" %a2, i32 %a3, i32 %a4, %"compiler/mir:Range" %a5)
declare i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2ewidth(ptr %v0, ptr %a0, i32 %a1)
declare i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2eprim(ptr %v0, ptr %a0, i64 %a1, i32 %a2, i32 %a3, %"compiler/mir:Range" %a4)
declare void @compiler_2feval_2ecompiler_2feval_3aMachine_2ewr(ptr %v0, ptr %a0, %"compiler/eval:Ptr" %a1, i64 %a2, i64 %a3)
declare i1 @compiler_2feval_2ecompiler_2feval_3aMachine_2eoverflowsWide(ptr %v0, ptr %a0, i64 %a1, i32 %a2, i32 %a3, %"compiler/mir:Range" %a4)
declare i1 @compiler_2feval_2ecompiler_2feval_3aMachine_2eoverflows(ptr %v0, ptr %a0, i64 %a1, i32 %a2, i32 %a3, %"compiler/mir:Range" %a4)
declare i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2etagOf(ptr %v0, ptr %a0, %"compiler/eval:Ptr" %a1, i32 %a2)
declare void @compiler_2feval_2ecompiler_2feval_3aMachine_2eaggregate(ptr %v0, ptr %a0, i64 %a1, %"compiler/eval:Ptr" %a2, i32 %a3, i64 %a4, %"compiler/mir:Range" %a5)
declare void @compiler_2feval_2ecompiler_2feval_3aMachine_2eslice(ptr %v0, ptr %a0, i64 %a1, %"compiler/eval:Ptr" %a2, %"compiler/mir:Lvalue" %a3, { i64, [4 x i64] } %a4, { i64, [4 x i64] } %a5, i32 %a6)
declare void @compiler_2feval_2ecompiler_2feval_3aMachine_2eclosure(ptr %v0, ptr %a0, i64 %a1, %"compiler/eval:Ptr" %a2, { i64, [2 x i64] } %a3, { i64, [1 x i64] } %a4, %"compiler/mir:Range" %a5)
declare i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2eintValue(ptr %v0, ptr %a0, i64 %a1, i32 %a2)
declare i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2erecode(ptr %v0, ptr %a0, i64 %a1, i32 %a2, i32 %a3)
declare i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2ebuildScope(ptr %v0, ptr %a0, i64 %a1, { i64, [1 x i64] } %a2)
@G_2ecompiler_2feval_2esRegion = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\05\00\00\00\00\00\00\00" }>, align 8
declare i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2enewScope(ptr %v0, ptr %a0, i64 %a1)
declare void @compiler_2feval_2ecompiler_2feval_3aMachine_2eadopt(ptr %v0, ptr %a0, i64 %a1, i64 %a2)
declare %"compiler/eval:Ptr" @compiler_2feval_2ecompiler_2feval_3aMachine_2eobjectOf(ptr %v0, ptr %a0, i64 %a1, { i64, [4 x i64] } %a2)
declare i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2eregionOfObject(ptr %v0, ptr %a0, %"compiler/eval:Ptr" %a1)
declare i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2escopeOf(ptr %v0, ptr %a0, i64 %a1, { i64, [1 x i64] } %a2)
declare i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2efoundScope(ptr %v0, ptr %a0, %"compiler/eval:Ptr" %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eLen_3cBool_3e(ptr %v0, ptr %a0)
declare i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eAt_3cBool_3e(ptr %v0, ptr %a0, i64 %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3aPtr_3e_2ePush_3ccompiler_2feval_3aPtr_3e(ptr %v0, ptr %a0, %"compiler/eval:Ptr" %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3aPtr_3e_2eLen_3ccompiler_2feval_3aPtr_3e(ptr %v0, ptr %a0)
@G_2ecompiler_2feval_2eWhyNotModelled = external constant <{ [8 x i8], ptr }>
declare %"compiler/eval:Ptr" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3aPtr_3e_2eAt_3ccompiler_2feval_3aPtr_3e(ptr %v0, ptr %a0, i64 %a1)
declare void @compiler_2feval_2ecompiler_2feval_3aMachine_2eweakRead(ptr %v0, ptr %a0, i64 %a1, %"compiler/eval:Ptr" %a2, %"compiler/mir:Lvalue" %a3)
@olang_loc_140721f2aee0298e_beee5014d741f7d2 = external constant [0 x i8]
@G_2ecompiler_2feval_2evInt = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\02\00\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2feval_2evUint = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\03\00\00\00\00\00\00\00" }>, align 8
declare i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2eibits(ptr %v0, ptr %a0, i32 %a1)
declare i64 @compiler_2feval_2ebmask(i64 %a0)
@G_2ecompiler_2feval_2evWide = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\0D\00\00\00\00\00\00\00" }>, align 8
declare i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2emask(ptr %v0, ptr %a0, i64 %a1)
declare i32 @compiler_2feval_2ecompiler_2feval_3aMachine_2eopType(ptr %v0, ptr %a0, i64 %a1, { i64, [4 x i64] } %a2)
@G_2ecompiler_2feval_2erCall = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\01\00\00\00\00\00\00\00" }>, align 8
declare ptr @compiler_2feval_2ecompiler_2feval_3aMachine_2efnOfFrame(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare %"compiler/mir:Call" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aCall_3e_2eAt_3ccompiler_2fmir_3aCall_3e(ptr %v0, ptr %a0, i64 %a1)
@G_2ecompiler_2feval_2eaValue = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\01\00\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2feval_2erGlobal = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\05\00\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2feval_2erTask = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\03\00\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2feval_2erClause = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\04\00\00\00\00\00\00\00" }>, align 8
declare void @compiler_2feval_2ecompiler_2feval_3aMachine_2etoTargets(ptr %v0, ptr %a0, i64 %a1, i64 %a2, { i64, [4 x i64] } %a3, i32 %a4)
@olang_loc_17d12c125f58d820_35ade4b878109a14 = external constant [0 x i8]
@G_2ecompiler_2ftypes_2eBoolT = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\02\00\00\00" }>, align 8
@olang_loc_b477747d616f01f0_6d4a3c12dca1cf4c = external constant [0 x i8]
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsNumber(ptr %v0, ptr %a0, i32 %a1)
@G_2ecompiler_2ftypes_2eVoidT = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\01\00\00\00" }>, align 8
@G_2ecompiler_2ftypes_2eNoreturnT = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\11\00\00\00" }>, align 8
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eLength(ptr %v0, ptr %a0, i32 %a1)
declare i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eConstValue(ptr %v0, ptr %a0, i32 %a1)
declare %"compiler/eval:Ptr" @compiler_2feval_2ecompiler_2feval_3aMachine_2elocalPtr(ptr %v0, ptr %a0, i64 %a1, i32 %a2)
declare i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2erd(ptr %v0, ptr %a0, %"compiler/eval:Ptr" %a1, i64 %a2)
declare i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2efloatCompare(ptr %v0, ptr %a0, i32 %a1, double %a2, double %a3)
@olang_loc_d784dcd9713515f8_b9d041eddaa630c = external constant [0 x i8]
@olang_loc_d2031ca5bdc3c0c9_c1504039d0cd1a3d = external constant [0 x i8]
@olang_loc_82c834935ab97012_8fe8672257be0a6 = external constant [0 x i8]
declare i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2efromF64(ptr %v0, ptr %a0, double %a1, i32 %a2)
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aFn_26_3e_2eAt_3ccompiler_2fmir_3aFn_26_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aLocalId_3e_2eLen_3ccompiler_2fmir_3aLocalId_3e(ptr %v0, ptr %a0)
declare i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aLocalId_3e_2eAt_3ccompiler_2fmir_3aLocalId_3e(ptr %v0, ptr %a0, i64 %a1)
declare %"compiler/mir:Local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aLocal_3e_2eAt_3ccompiler_2fmir_3aLocal_3e(ptr %v0, ptr %a0, i64 %a1)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsRef(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eNeedsDrop(ptr %v0, ptr %a0, i32 %a1)
@olang_loc_8ee299e344af3927_1a30263e89afea2b = external constant [0 x i8]
@olang_loc_9d9a614f49301d32_780986365d0a3a16 = external constant [0 x i8]
@G_2ecompiler_2fmir_2eI64T = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\06\00\00\00" }>, align 8
@G_2ecompiler_2feval_2eWhyNullCall = external constant <{ [8 x i8], ptr }>
@olang_loc_d3df02eef027536f_dc15be465081b3fb = external constant [0 x i8]
declare { { i64, ptr }, i64 } @compiler_2feval_2ecompiler_2feval_3aMachine_2epack(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aVarKind_3e_2eLen_3ccompiler_2fmir_3aVarKind_3e(ptr %v0, ptr %a0)
declare { i64, [1 x i64] } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aVarKind_3e_2eAt_3ccompiler_2fmir_3aVarKind_3e(ptr %v0, ptr %a0, i64 %a1)
@olang_loc_7e96cd508c5b7919_900f150eebe6671d = external constant [0 x i8]
@olang_loc_b24244fd0a11c914_466201095dcd7a18 = external constant [0 x i8]
declare i32 @compiler_2feval_2ecompiler_2feval_3aMachine_2eelemOf(ptr %v0, ptr %a0, i32 %a1)
declare i64 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2eLen_3cI64_2c_20Bool_3e(ptr %v0, ptr %a0)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eReferent(ptr %v0, ptr %a0, i32 %a1)
declare { %"compiler/eval:Ptr", i64 } @compiler_2feval_2ecompiler_2feval_3aMachine_2earrayView(ptr %v0, ptr %a0, %"compiler/eval:Ptr" %a1, i32 %a2)
declare i1 @compiler_2fmir_2ecompiler_2fmir_3aGenInfo_2eIsGen(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i32 %a2)
declare %"compiler/eval:Ptr" @compiler_2feval_2ecompiler_2feval_3aMachine_2egenNew(ptr %v0, ptr %a0, i64 %a1, i64 %a2, i32 %a3, { i64, [4 x i64] } %a4)
@G_2ecompiler_2feval_2evFloat = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\04\00\00\00\00\00\00\00" }>, align 8
declare i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2eintOp(ptr %v0, ptr %a0, i32 %a1, i64 %a2, i64 %a3, i32 %a4, i32 %a5)
@G_2ecompiler_2feval_2evBool = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\01\00\00\00\00\00\00\00" }>, align 8
@olang_loc_590198b1bba6f342_437268d8e9153c4e = external constant [0 x i8]
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eFields(ptr %v0, ptr %a0, i32 %a1)
declare { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eBitOffsets(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare void @compiler_2feval_2ecompiler_2feval_3aMachine_2eunpackInto(ptr %v0, ptr %a0, %"compiler/eval:Ptr" %a1, i32 %a2, %"compiler/eval:Ptr" %a3, i64 %a4)
declare void @compiler_2feval_2ecompiler_2feval_3aMachine_2epackInto(ptr %v0, ptr %a0, %"compiler/eval:Ptr" %a1, i64 %a2, i32 %a3, %"compiler/eval:Ptr" %a4)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParts(ptr %v0, ptr %a0, i32 %a1)
@olang_loc_d4aeb51afef739b6_d573fd1fa5ffe912 = external constant [0 x i8]
@G_2ecompiler_2feval_2evPair = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\06\00\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2feval_2evFixed = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\0B\00\00\00\00\00\00\00" }>, align 8
declare { i64, i64 } @compiler_2feval_2ecompiler_2feval_3aMachine_2ewideConst(ptr %v0, ptr %a0, i32 %a1, i64 %a2)
declare void @compiler_2feval_2ecompiler_2feval_3aMachine_2ewrWide(ptr %v0, ptr %a0, %"compiler/eval:Ptr" %a1, i32 %a2, i64 %a3, i64 %a4)
declare void @compiler_2feval_2ecompiler_2feval_3aMachine_2eputData(ptr %v0, ptr %a0, i64 %a1, %"compiler/eval:Ptr" %a2, i32 %a3, i32 %a4, i64 %a5, %"compiler/source:Span" %a6)
@olang_loc_af1f9cfaa1609478_d5c4fc0e8d836404 = external constant [0 x i8]
declare i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2eat(ptr %v0, ptr %a0, %"compiler/eval:Ptr" %a1, i64 %a2, i1 %a3)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsUnsigned(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2feval_2ecompiler_2feval_3aMachine_2erangeMutable(ptr %v0, ptr %v1, ptr %a0, ptr %a1, %"compiler/mir:Range" %a2)
@olang_loc_5132488ea4d5a24a_c872bd4e98b932a6 = external constant [0 x i8]
declare { i64, i64 } @compiler_2feval_2ecompiler_2feval_3aMachine_2ewideOf(ptr %v0, ptr %a0, i64 %a1, { i64, [4 x i64] } %a2)
@G_2ecompiler_2feval_2eWhyShift = external constant <{ [8 x i8], ptr }>
declare { i64, i64 } @compiler_2feval_2eshl128(i64 %a0, i64 %a1, i64 %a2)
declare { i64, i64 } @compiler_2feval_2eshr128(i64 %a0, i64 %a1, i64 %a2, i1 %a3)
declare void @compiler_2feval_2ecompiler_2feval_3aMachine_2eputInt(ptr %v0, ptr %a0, %"compiler/eval:Ptr" %a1, i32 %a2, i64 %a3, i64 %a4)
declare void @compiler_2feval_2ecompiler_2feval_3aMachine_2eputLimit(ptr %v0, ptr %a0, %"compiler/eval:Ptr" %a1, i32 %a2, i64 %a3, i1 %a4, i1 %a5)
@olang_loc_29dd04e5370cce06_39cab22b02d0561a = external constant [0 x i8]
declare { i64, i64 } @compiler_2feval_2emul128(i64 %a0, i64 %a1, i64 %a2, i64 %a3)
declare { i64, i64 } @compiler_2feval_2eadd128(i64 %a0, i64 %a1, i64 %a2, i64 %a3)
declare { i64, i64 } @compiler_2feval_2esub128(i64 %a0, i64 %a1, i64 %a2, i64 %a3)
@olang_loc_de325288a34cd8e7_764dd51059cd701b = external constant [0 x i8]
declare i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eLayoutState(ptr %v0, ptr %a0, i32 %a1)
@G_2ecompiler_2ftypes_2eLaidOut = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\02\00\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2ftypes_2eNoLayout = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\03\00\00\00\00\00\00\00" }>, align 8
@olang_loc_a19345797ce3092f_df897154cd0b0613 = external constant [0 x i8]
@olang_loc_8629e3295afcf15a_58f771f6fdbc30de = external constant [0 x i8]
@olang_loc_985556dab320f6d9_efe4e1681fb7461d = external constant [0 x i8]
declare i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2eshapeOf(ptr %v0, ptr %a0, i32 %a1)
@G_2ecompiler_2ftypes_2eNullT = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\0F\00\00\00" }>, align 8
declare i1 @compiler_2feval_2ecompiler_2feval_3aMachine_2elay(ptr %v0, ptr %a0, i32 %a1)
declare i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eSize(ptr %v0, ptr %a0, i32 %a1)
declare void @compiler_2feval_2ecompiler_2feval_3aMachine_2efreeTask(ptr %v0, ptr %a0, i64 %a1)
declare %"compiler/eval:task" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3atask_3e_2eAt_3ccompiler_2feval_3atask_3e(ptr %v0, ptr %a0, i64 %a1)
declare %"compiler/mir:Task" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aTask_3e_2eAt_3ccompiler_2fmir_3aTask_3e(ptr %v0, ptr %a0, i64 %a1)
@olang_loc_da2497658df77092_f2a1f3138ef6e43e = external constant [0 x i8]
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrors(ptr %v0, ptr %a0, i32 %a1)
@G_2ecompiler_2ftypes_2eDefaultErrT = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\10\00\00\00" }>, align 8
declare { { i64, ptr }, i64 } @compiler_2feval_2ecompiler_2feval_3aMachine_2etaskLayout(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, %"compiler/mir:Task" %a2, i64 %a3)
declare %"compiler/mir:TaskClause" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aTaskClause_3e_2eAt_3ccompiler_2fmir_3aTaskClause_3e(ptr %v0, ptr %a0, i64 %a1)
declare %"compiler/typed:Item" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aItem_3e_2eAt_3ccompiler_2ftyped_3aItem_3e(ptr %v0, ptr %a0, i64 %a1)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eSame(ptr %v0, ptr %a0, i32 %a1, i32 %a2)
declare void @compiler_2feval_2ecompiler_2feval_3aMachine_2epayDrop(ptr %v0, ptr %a0, i64 %a1)
@G_2ecompiler_2feval_2eaCode = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\04\00\00\00\00\00\00\00" }>, align 8
declare { i64, [2 x i64] } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aFnKey_3e_2eAt_3ccompiler_2fmir_3aFnKey_3e(ptr %v0, ptr %a0, i64 %a1)
@olang_loc_1763d3aa4dbf9a93_91ae1790a76dd73f = external constant [0 x i8]
declare { i64, [4 x i64] } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aOperand_3e_2eAt_3ccompiler_2fmir_3aOperand_3e(ptr %v0, ptr %a0, i64 %a1)
@olang_loc_2ee13faba4731678_f9595c1938ce6204 = external constant [0 x i8]
declare void @compiler_2feval_2ecompiler_2feval_3aMachine_2estop(ptr %v0, ptr %v1, ptr %a0, { i64, [5 x i64] } %a1)
declare void @compiler_2feval_2ecompiler_2feval_3aMachine_2eexit(ptr %v0, ptr %a0, i64 %a1, i64 %a2, %"compiler/source:Span" %a3, i32 %a4, { i64, [4 x i64] } %a5)
declare %"compiler/mir:BasicBlock" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aBasicBlock_3e_2eAt_3ccompiler_2fmir_3aBasicBlock_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
@G_2ecompiler_2feval_2eWhyNoClause = external constant <{ [8 x i8], ptr }>
@olang_loc_295f7f77f101c149_2aa6184739b6cdf5 = external constant [0 x i8]
declare i1 @compiler_2feval_2ecompiler_2feval_3aMachine_2elive(ptr %v0, ptr %a0, i64 %a1)
@olang_loc_176c1f0c53cca04e_ded73198e701b2e2 = external constant [0 x i8]
@G_2ecompiler_2feval_2etRaised = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2feval_2etCall = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\01\00\00\00\00\00\00\00" }>, align 8
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eClear_3cI64_3e(ptr %v0, ptr %a0)
@G_2ecompiler_2feval_2etraceKept = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\20\00\00\00\00\00\00\00" }>, align 8
declare i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eRemoveAt_3cI64_3e(ptr %v0, ptr %a0, i64 %a1)
declare { i64, ptr } @compiler_2fmir_2ecompiler_2fmir_3aFn_2eRaiseText(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %v0, ptr %a0)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePlain(ptr %v0, ptr %a0, i32 %a1)
declare { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId_2c_20I64_3e__H165e1ff795edcbb725e28dde18fd1dc2(ptr %v0, ptr %a0, i32 %a1)
@G_2ecompiler_2feval_2eaData = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\02\00\00\00\00\00\00\00" }>, align 8
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId_2c_20I64_3e__Hccd9659a44f570da1fa06b019882a84d(ptr %v0, ptr %a0, i32 %a1, i64 %a2)
@olang_loc_bb58ffa16789d1e6_53f99027aa0e2dd2 = external constant [0 x i8]
@G_2ecompiler_2feval_2eWhyClosed = external constant <{ [8 x i8], ptr }>
declare void @compiler_2feval_2ecompiler_2feval_3aMachine_2estartTask(ptr %v0, ptr %a0, i64 %a1, i64 %a2)
@G_2ecompiler_2fmir_2eNoBlock = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\FF\FF\FF\FF" }>, align 8
@G_2ecompiler_2feval_2etJoin = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\02\00\00\00\00\00\00\00" }>, align 8
declare void @compiler_2feval_2ecompiler_2feval_3aMachine_2efailedHere(ptr %v0, ptr %a0, i64 %a1, i64 %a2)
declare void @compiler_2feval_2ecompiler_2feval_3aMachine_2ejump(ptr %v0, ptr %a0, i64 %a1, i32 %a2)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3agenRec_3e_2eLen_3ccompiler_2feval_3agenRec_3e(ptr %v0, ptr %a0)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3agenRec_3e_2eAt_3ccompiler_2feval_3agenRec_3e(ptr %out, ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3agenRec_3e_2eRefMut_3ccompiler_2feval_3agenRec_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i1 @compiler_2feval_2ecompiler_2feval_3aMachine_2edropWork(ptr %v0, ptr %a0, i64 %a1, i64 %a2)
declare void @compiler_2feval_2ecompiler_2feval_3aMachine_2eunmark(ptr %v0, ptr %a0, i64 %a1, i64 %a2)
declare void @compiler_2feval_2ecompiler_2feval_3aMachine_2ewrRaw(ptr %v0, ptr %a0, i64 %a1, i64 %a2, i64 %a3)
@olang_loc_c25b9553ef801192_ed4b8566966f1316 = external constant [0 x i8]
declare i1 @compiler_2feval_2eplaceNamesGlobal(%"compiler/mir:Lvalue" %a0)
declare i1 @compiler_2feval_2eopNamesGlobal({ i64, [4 x i64] } %a0)
declare i1 @compiler_2feval_2erangeNamesGlobal(ptr %v0, ptr %a0, %"compiler/mir:Range" %a1)
@olang_loc_5c3972130c0b0906_e6fe5489c867bc1a = external constant [0 x i8]
@olang_loc_108ebfb6784b13e7_2381776f1f64d61b = external constant [0 x i8]
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eArray(ptr %v0, ptr %a0, i32 %a1, i32 %a2)
declare i32 @compiler_2fmir_2ecompiler_2fmir_3aFn_2eAddScope(ptr %v0, ptr %a0, i32 %a1, i32 %a2, i32 %a3, %"compiler/source:Span" %a4, i32 %a5)
declare void @compiler_2feval_2etprim(ptr %v0, ptr %a0, i32 %a1, i64 %a2, i32 %a3, i32 %a4, { i64, [4 x i64] } %a5, { i64, [4 x i64] } %a6)
declare %"compiler/mir:Lvalue" @compiler_2feval_2etl(i64 %a0)
declare i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eAddModule(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare i32 @compiler_2fsource_2ecompiler_2fsource_3aNames_2eIntern(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eAddDecl(ptr %v0, ptr %v1, ptr %a0, i64 %a1, i32 %a2, i32 %a3, i32 %a4)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eNamed(ptr %v0, ptr %a0, i32 %a1, i32 %a2)
@olang_loc_fe51c7873558f7ce_2759982fc28bb82a = external constant [0 x i8]

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
