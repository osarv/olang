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
%"compiler/eval:global" = type { i64, i1, i64, i64, i64, i1, i1, i1 }
%"compiler/eval:Ptr" = type { i64, i64 }
%"compiler/eval:gkey" = type { i64, i32 }
%"compiler/eval:Machine" = type { ptr, i32, i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"compiler/mir:GenInfo", i1, i64, i64, i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, i64, i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"compiler/eval:Ptr", i32, { i64, [5 x i64] }, i64, i1, i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", { i64, ptr }, { i64, ptr }, i64, { i64, ptr }, { i64, ptr }, i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", { i64, ptr }, i64, { i64, ptr }, i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i64, i64, { i64, ptr }, i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"compiler/source:Span", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", { i64, ptr }, { i64, ptr }, i1, i1, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, %"compiler/source:Span", i32 }
%"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" = type { { i64, ptr }, i64, i64 }
%"compiler/mir:GenInfo" = type { %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64 }
%"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" = type { { i64, ptr }, { i64, ptr }, { i64, ptr }, i64, i64, i64 }
%"compiler/source:Span" = type { i32, i32 }
%"compiler/eval:alloc" = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32, i64, i1, i64, i1 }
%"compiler/mir:Local" = type { i32, %"compiler/source:Span", i32, i32, { i64, [1 x i64] } }
%"compiler/mir:Fn" = type { { i64, [2 x i64] }, i32, i64, %"compiler/source:Span", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/eval:frame" = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i1, i1, i1, i64, i64, i1, i64, i32, i32, i64 }
%"compiler/eval:scope" = type { i64, i1, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i1, i64, i64 }
%"compiler/mir:Range" = type { i32, i32 }
%"compiler/eval:task" = type { i64, i64, i64, i64, i64 }
%"compiler/mir:Task" = type { { i64, [7 x i64] }, %"compiler/mir:Range", %"compiler/mir:Range", %"compiler/mir:Range", %"compiler/mir:Range", %"compiler/mir:Range", %"compiler/source:Span", %"compiler/mir:Range" }
%"compiler/eval:genRec" = type { i64, i64, %"compiler/eval:frame", i64, %"compiler/eval:Ptr", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, i64, i64, i64 }
%"compiler/mir:Lvalue" = type { { i64, [2 x i64] }, %"compiler/mir:Range" }
%"compiler/eval:cfn" = type { i64, { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, i64, i1, i1, { i64, ptr } }
%"std/prelude/text:StringBuilder" = type { %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/mir:Call" = type { { i64, [7 x i64] }, %"compiler/mir:Range", %"compiler/mir:Range", %"compiler/mir:Lvalue", i1, i32, i32, i32 }
%"compiler/eval:Image" = type { %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1 }
%"compiler/eval:dkey" = type { i64, i32, i32, i32, i32, i64 }
define dso_local void @compiler_2feval_2ecompiler_2feval_3aMachine_2eDefineGlobal(ptr %v0, ptr %a0, i64 %a1, i32 %a2, i32 %a3, i1 %a4, { i64, [2 x i64] } %a5) #0 {
entry:
  %l0 = alloca ptr
  %l3 = alloca i32
  %l6 = alloca %"compiler/eval:global"
  %l7 = alloca %"compiler/eval:Ptr"
  %l10 = alloca i1
  %l11 = alloca %"compiler/eval:global"
  %l17 = alloca i64
  %l18 = alloca ptr
  %l21 = alloca i64
  %l25 = alloca %"compiler/eval:Ptr"
  %l28 = alloca ptr
  %l31 = alloca %"compiler/eval:gkey"
  %l34 = alloca i64
  %l36 = alloca { i64, ptr }
  %l39 = alloca i64
  %l42 = alloca i64
  %s0 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store i32 %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load i32, ptr %l3, !tbaa !23
  %t5 = call i1 @compiler_2feval_2ecompiler_2feval_3aMachine_2elay(ptr %v0, ptr %t1, i32 %t2)
  store i1 %t5, ptr %l10
  br label %bb1
bb1:
  %t6 = call %"compiler/eval:global" @compiler_2feval_3aglobal_2ector(ptr %s0)
  store %"compiler/eval:global" %t6, ptr %l11
  br label %bb2
bb2:
  %t7 = load %"compiler/eval:global", ptr %l11
  store %"compiler/eval:global" %t7, ptr %l6
  %t8 = load i32, ptr %l3, !tbaa !23
  %t10 = sext i32 %t8 to i64
  %t12 = getelementptr %"compiler/eval:global", ptr %l6, i32 0, i32 0
  store i64 %t10, ptr %t12, !tbaa !24
  %t15 = getelementptr %"compiler/eval:global", ptr %l6, i32 0, i32 1
  store i1 %a4, ptr %t15, !tbaa !21
  %t16 = load ptr, ptr %l0, !tbaa !29
  %t20 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2ecodeIndex(ptr %v0, ptr %t16, { i64, [2 x i64] } %a5)
  store i64 %t20, ptr %l17
  br label %bb3
bb3:
  %t21 = load i64, ptr %l17, !tbaa !24
  %t22 = getelementptr %"compiler/eval:global", ptr %l6, i32 0, i32 2
  store i64 %t21, ptr %t22, !tbaa !24
  %t23 = load ptr, ptr %l0, !tbaa !29
  store ptr %t23, ptr %l18, !tbaa !29
  %t24 = load ptr, ptr %l0, !tbaa !29
  %t25 = load i32, ptr %l3, !tbaa !23
  %t28 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2esize(ptr %v0, ptr %t24, i32 %t25)
  store i64 %t28, ptr %l21
  br label %bb4
bb4:
  %t29 = load i64, ptr @G_2ecompiler_2feval_2eaGlobal, !tbaa !24
  %t30 = load ptr, ptr %l0, !tbaa !29
  %t32 = getelementptr %"compiler/eval:Machine", ptr %t30, i32 0, i32 67
  %t33 = load i64, ptr %t32, !tbaa !24
  %t34 = load ptr, ptr %l18, !tbaa !29
  %t35 = load i64, ptr %l21, !tbaa !24
  %t38 = call %"compiler/eval:Ptr" @compiler_2feval_2ecompiler_2feval_3aMachine_2eallocate(ptr %v0, ptr %t34, i64 %t35, i64 %t29, i64 %t33)
  store %"compiler/eval:Ptr" %t38, ptr %l25
  br label %bb5
bb5:
  %t39 = load %"compiler/eval:Ptr", ptr %l25
  store %"compiler/eval:Ptr" %t39, ptr %l7
  %t40 = getelementptr %"compiler/eval:Ptr", ptr %l7, i32 0, i32 0
  %t41 = load i64, ptr %t40, !tbaa !24
  %t43 = getelementptr %"compiler/eval:global", ptr %l6, i32 0, i32 3
  store i64 %t41, ptr %t43, !tbaa !24
  %t44 = load ptr, ptr %l0, !tbaa !29
  %t46 = getelementptr %"compiler/eval:Machine", ptr %t44, i32 0, i32 40
  store ptr %t46, ptr %l28, !tbaa !29
  %t51 = call %"compiler/eval:gkey" @compiler_2feval_3agkey_2ector(ptr %s0, i64 %a1, i32 %a2)
  store %"compiler/eval:gkey" %t51, ptr %l31
  br label %bb6
bb6:
  %t52 = load ptr, ptr %l0, !tbaa !29
  %t54 = getelementptr %"compiler/eval:Machine", ptr %t52, i32 0, i32 39
  %t56 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3aglobal_3e_2eLen_3ccompiler_2feval_3aglobal_3e(ptr %v0, ptr %t54)
  store i64 %t56, ptr %l34
  br label %bb7
bb7:
  %t57 = load ptr, ptr %l28, !tbaa !29
  %t58 = load %"compiler/eval:gkey", ptr %l31
  %t59 = load i64, ptr %l34, !tbaa !24
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2feval_3agkey_2c_20I64_3e_2eP_Hdbb1ec214f67f51e9ea8789b3bf075dc(ptr %v0, ptr %t57, %"compiler/eval:gkey" %t58, i64 %t59)
  br label %bb8
bb8:
  %t60 = load ptr, ptr %l0, !tbaa !29
  %t62 = getelementptr %"compiler/eval:Machine", ptr %t60, i32 0, i32 46
  %t63 = load { i64, ptr }, ptr %t62, !tbaa !27
  store { i64, ptr } %t63, ptr %l36, !tbaa !27
  %t64 = getelementptr %"compiler/eval:Ptr", ptr %l7, i32 0, i32 0
  %t65 = load i64, ptr %t64, !tbaa !24
  %t66 = load i64, ptr @G_2ecompiler_2feval_2eslotMask, !tbaa !24
  %t69 = and i64 %t65, %t66
  store i64 %t69, ptr %l39, !tbaa !24
  %t70 = load ptr, ptr %l0, !tbaa !29
  %t72 = getelementptr %"compiler/eval:Machine", ptr %t70, i32 0, i32 39
  %t74 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3aglobal_3e_2eLen_3ccompiler_2feval_3aglobal_3e(ptr %v0, ptr %t72)
  store i64 %t74, ptr %l42
  br label %bb9
bb9:
  %t75 = load i64, ptr %l42, !tbaa !24
  %t76 = load i64, ptr %l39, !tbaa !24
  %t77 = getelementptr { i64, ptr }, ptr %l36, i32 0, i32 1
  %t78 = load ptr, ptr %t77, !tbaa !27
  %t79 = getelementptr %"compiler/eval:alloc", ptr %t78, i64 %t76
  %t80 = getelementptr %"compiler/eval:alloc", ptr %t79, i32 0, i32 8
  store i64 %t75, ptr %t80, !tbaa !24
  %t81 = load ptr, ptr %l0, !tbaa !29
  %t83 = getelementptr %"compiler/eval:Machine", ptr %t81, i32 0, i32 39
  %t84 = load %"compiler/eval:global", ptr %l6
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3aglobal_3e_2ePush_3ccompiler_2feval_3aglobal_3e(ptr %v0, ptr %t83, %"compiler/eval:global" %t84)
  br label %bb10
bb10:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local { i64, [5 x i64] } @compiler_2feval_2ecompiler_2feval_3aMachine_2eEval(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, [2 x i64] } %a1, { i64, ptr } %a2) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca { i64, ptr }
  %l5 = alloca i64
  %l6 = alloca ptr
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca i64
  %l12 = alloca i64
  %l13 = alloca i64
  %l14 = alloca i64
  %l15 = alloca i64
  %l16 = alloca i64
  %l17 = alloca i32
  %l18 = alloca i32
  %l19 = alloca i64
  %l20 = alloca i64
  %l21 = alloca i64
  %l22 = alloca i64
  %l23 = alloca i64
  %l39 = alloca i1
  %l41 = alloca { i64, ptr }
  %l60 = alloca i64
  %l64 = alloca i64
  %l65 = alloca i32
  %l73 = alloca ptr
  %l87 = alloca i64
  %l97 = alloca i64
  %l100 = alloca i64
  %l118 = alloca i64
  %l121 = alloca i64
  %l126 = alloca i32
  %l131 = alloca %"compiler/mir:Local"
  %l133 = alloca ptr
  %l137 = alloca %"compiler/eval:Ptr"
  %l140 = alloca i64
  %l141 = alloca { i64, ptr }
  %l148 = alloca i64
  %l152 = alloca i64
  %l155 = alloca i64
  %l174 = alloca { i64, ptr }
  %l176 = alloca { i64, ptr }
  %rv = alloca { i64, [5 x i64] }
  %t8 = alloca { i64, [5 x i64] }, align 8
  store ptr %a0, ptr %l0
  store { i64, ptr } %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/eval:Machine", ptr %t1, i32 0, i32 19
  store i1 false, ptr %t3, !tbaa !21
  %t4 = load ptr, ptr %l0, !tbaa !29
  %t6 = getelementptr %"compiler/eval:Machine", ptr %t4, i32 0, i32 20
  store i1 false, ptr %t6, !tbaa !21
  %t7 = load ptr, ptr %l0, !tbaa !29
  store { i64, [5 x i64] } zeroinitializer, ptr %t8
  %t9 = getelementptr { i64, [5 x i64] }, ptr %t8, i32 0, i32 0
  store i64 0, ptr %t9
  %t10 = load { i64, [5 x i64] }, ptr %t8
  %t13 = getelementptr %"compiler/eval:Machine", ptr %t7, i32 0, i32 17
  store { i64, [5 x i64] } %t10, ptr %t13
  %t14 = load ptr, ptr %l0, !tbaa !29
  %t16 = getelementptr %"compiler/eval:Machine", ptr %t14, i32 0, i32 18
  store i64 -1, ptr %t16, !tbaa !24
  %t17 = load ptr, ptr %l0, !tbaa !29
  %t19 = getelementptr %"compiler/eval:Machine", ptr %t17, i32 0, i32 11
  store i64 0, ptr %t19, !tbaa !24
  %t20 = load ptr, ptr %l0, !tbaa !29
  %t22 = getelementptr %"compiler/eval:Machine", ptr %t20, i32 0, i32 85
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eClear_3cI64_3e(ptr %v0, ptr %t22)
  br label %bb1
bb1:
  %t24 = load ptr, ptr %l0, !tbaa !29
  %t26 = getelementptr %"compiler/eval:Machine", ptr %t24, i32 0, i32 88
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eClear_3cI64_3e(ptr %v0, ptr %t26)
  br label %bb2
bb2:
  %t28 = load ptr, ptr %l0, !tbaa !29
  %t30 = getelementptr %"compiler/eval:Machine", ptr %t28, i32 0, i32 87
  store i64 0, ptr %t30, !tbaa !24
  %t31 = load ptr, ptr %l0, !tbaa !29
  %t33 = getelementptr %"compiler/eval:Machine", ptr %t31, i32 0, i32 15
  %t34 = getelementptr %"compiler/eval:Ptr", ptr %t33, i32 0, i32 0
  %t35 = load i64, ptr %t34, !tbaa !24
  %t37 = icmp ne i64 %t35, 0
  br i1 %t37, label %bb3, label %bb4
bb3:
  %t39 = load ptr, ptr %l0, !tbaa !29
  %t41 = getelementptr %"compiler/eval:Machine", ptr %t39, i32 0, i32 46
  %t42 = load { i64, ptr }, ptr %t41, !tbaa !27
  store { i64, ptr } %t42, ptr %l41, !tbaa !27
  %t43 = load ptr, ptr %l0, !tbaa !29
  %t45 = getelementptr %"compiler/eval:Machine", ptr %t43, i32 0, i32 15
  %t46 = getelementptr %"compiler/eval:Ptr", ptr %t45, i32 0, i32 0
  %t47 = load i64, ptr %t46, !tbaa !24
  %t48 = load i64, ptr @G_2ecompiler_2feval_2eslotMask, !tbaa !24
  %t51 = and i64 %t47, %t48
  %t53 = getelementptr { i64, ptr }, ptr %l41, i32 0, i32 1
  %t54 = load ptr, ptr %t53, !tbaa !27
  %t55 = getelementptr %"compiler/eval:alloc", ptr %t54, i64 %t51
  %t56 = getelementptr %"compiler/eval:alloc", ptr %t55, i32 0, i32 4
  %t57 = load i64, ptr %t56, !tbaa !24
  %t58 = load i64, ptr @G_2ecompiler_2feval_2eaFree, !tbaa !24
  %t61 = icmp ne i64 %t57, %t58
  store i1 %t61, ptr %l39, !tbaa !21
  br label %bb5
bb4:
  store i1 false, ptr %l39, !tbaa !21
  br label %bb5
bb5:
  %t63 = load i1, ptr %l39, !tbaa !21
  br i1 %t63, label %bb6, label %bb7
bb6:
  %t64 = load ptr, ptr %l0, !tbaa !29
  %t65 = load ptr, ptr %l0, !tbaa !29
  %t67 = getelementptr %"compiler/eval:Machine", ptr %t65, i32 0, i32 15
  %t68 = getelementptr %"compiler/eval:Ptr", ptr %t67, i32 0, i32 0
  %t69 = load i64, ptr %t68, !tbaa !24
  %t70 = load i64, ptr @G_2ecompiler_2feval_2eslotMask, !tbaa !24
  %t73 = and i64 %t69, %t70
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2erelease(ptr %v0, ptr %t64, i64 %t73)
  br label %bb8
bb7:
  br label %bb9
bb8:
  br label %bb9
bb9:
  %t76 = load %"compiler/eval:Ptr", ptr @G_2ecompiler_2feval_2eNullPtr
  %t78 = load i32, ptr @G_2ecompiler_2ftypes_2eVoidT, !tbaa !23
  %t80 = load ptr, ptr %l0, !tbaa !29
  %t84 = getelementptr %"compiler/eval:Machine", ptr %t80, i32 0, i32 15
  store %"compiler/eval:Ptr" %t76, ptr %t84
  %t85 = load ptr, ptr %l0, !tbaa !29
  %t89 = getelementptr %"compiler/eval:Machine", ptr %t85, i32 0, i32 16
  store i32 %t78, ptr %t89, !tbaa !23
  %t90 = load ptr, ptr %l0, !tbaa !29
  %t92 = getelementptr %"compiler/eval:Machine", ptr %t90, i32 0, i32 27
  %t96 = call { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fmir_3aFnKey_2c_20I64_3e_2eG_H6ffe2eb17daa971b2c9d564ad72358b1(ptr %v0, ptr %t92, { i64, [2 x i64] } %a1)
  %t97 = extractvalue { i32, i64 } %t96, 1
  %t98 = extractvalue { i32, i64 } %t96, 0
  store i32 %t98, ptr %l65
  %t99 = icmp ne i32 %t98, 0
  br i1 %t99, label %bb11, label %ok.100, !prof !99
ok.100:
  store i64 %t97, ptr %l64
  br label %bb10
bb10:
  %t101 = load i64, ptr %l64, !tbaa !24
  store i64 %t101, ptr %l60, !tbaa !24
  br label %bb14
bb11:
  br label %bb12
bb12:
  %t102 = load ptr, ptr %l0, !tbaa !29
  %t103 = load { i64, ptr }, ptr @G_2ecompiler_2feval_2eWhyNoBody, !tbaa !27
  %t104 = load ptr, ptr @__olang_prog_scope
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2erefuse(ptr %v0, ptr %t104, ptr %t102, { i64, ptr } %t103)
  br label %bb13
bb13:
  %t107 = load ptr, ptr %l0, !tbaa !29
  %t109 = getelementptr %"compiler/eval:Machine", ptr %t107, i32 0, i32 17
  %t110 = load { i64, [5 x i64] }, ptr %t109
  store { i64, [5 x i64] } %t110, ptr %rv
  br label %ret
bb14:
  %t112 = load i64, ptr %l60, !tbaa !24
  store i64 %t112, ptr %l5, !tbaa !24
  %t113 = load ptr, ptr %l0, !tbaa !29
  %t115 = getelementptr %"compiler/eval:Machine", ptr %t113, i32 0, i32 22
  %t116 = load i64, ptr %l5, !tbaa !24
  %t119 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aFn_26_3e_2eAt_3ccompiler_2fmir_3aFn_26_3e(ptr %v0, ptr %v0, ptr %t115, i64 %t116)
  store ptr %t119, ptr %l73
  br label %bb15
bb15:
  %t120 = load ptr, ptr %l73, !tbaa !29
  store ptr %t120, ptr %l6, !tbaa !29
  %t121 = load ptr, ptr %l6, !tbaa !29
  %t123 = getelementptr %"compiler/mir:Fn", ptr %t121, i32 0, i32 2
  %t124 = load i64, ptr %t123, !tbaa !24
  %t126 = load ptr, ptr %l6, !tbaa !29
  %t128 = getelementptr %"compiler/mir:Fn", ptr %t126, i32 0, i32 3
  %t129 = load %"compiler/source:Span", ptr %t128
  %t131 = load ptr, ptr %l0, !tbaa !29
  %t135 = getelementptr %"compiler/eval:Machine", ptr %t131, i32 0, i32 74
  store i64 %t124, ptr %t135, !tbaa !24
  %t136 = load ptr, ptr %l0, !tbaa !29
  %t140 = getelementptr %"compiler/eval:Machine", ptr %t136, i32 0, i32 75
  store %"compiler/source:Span" %t129, ptr %t140
  %t141 = load ptr, ptr %l0, !tbaa !29
  %t143 = getelementptr %"compiler/eval:Machine", ptr %t141, i32 0, i32 56
  %t144 = load i64, ptr %t143, !tbaa !24
  store i64 %t144, ptr %l9, !tbaa !24
  %t146 = load ptr, ptr %l0, !tbaa !29
  %t147 = load i64, ptr %l5, !tbaa !24
  %t148 = load i64, ptr @G_2ecompiler_2feval_2erRequest, !tbaa !24
  %t152 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2epushFrame(ptr %v0, ptr %t146, i64 %t147, i64 %t148, i64 0)
  store i64 %t152, ptr %l87
  br label %bb16
bb16:
  %t153 = load i64, ptr %l87, !tbaa !24
  store i64 %t153, ptr %l10, !tbaa !24
  %t154 = load i64, ptr %l10, !tbaa !24
  %t156 = icmp slt i64 %t154, 0
  br i1 %t156, label %bb17, label %bb18
bb17:
  %t158 = load ptr, ptr %l0, !tbaa !29
  %t160 = getelementptr %"compiler/eval:Machine", ptr %t158, i32 0, i32 17
  %t161 = load { i64, [5 x i64] }, ptr %t160
  store { i64, [5 x i64] } %t161, ptr %rv
  br label %ret
bb18:
  br label %bb19
bb19:
  store i64 0, ptr %l11, !tbaa !24
  %t163 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t165 = extractvalue { i64, ptr } %t163, 0
  store i64 %t165, ptr %l12, !tbaa !24
  store i64 1, ptr %l13, !tbaa !24
  %t167 = load i64, ptr %l12, !tbaa !24
  %t168 = load i64, ptr %l11, !tbaa !24
  %t171 = icmp sgt i64 %t167, %t168
  br i1 %t171, label %bb20, label %bb21
bb20:
  %t173 = load i64, ptr %l13, !tbaa !24
  %t175 = icmp sgt i64 %t173, 0
  br i1 %t175, label %bb22, label %bb23
bb21:
  store i64 0, ptr %l97, !tbaa !24
  br label %bb25
bb22:
  %t177 = load i64, ptr %l12, !tbaa !24
  %t178 = load i64, ptr %l11, !tbaa !24
  %t181 = sub i64 %t177, %t178
  %t182 = load i64, ptr %l13, !tbaa !24
  %t185 = add i64 %t181, %t182
  %t187 = sub i64 %t185, 1
  %t188 = load i64, ptr %l13, !tbaa !24
  %t191 = sdiv i64 %t187, %t188
  store i64 %t191, ptr %l100, !tbaa !24
  br label %bb24
bb23:
  store i64 0, ptr %l100, !tbaa !24
  br label %bb24
bb24:
  %t193 = load i64, ptr %l100, !tbaa !24
  store i64 %t193, ptr %l97, !tbaa !24
  br label %bb25
bb25:
  %t194 = load i64, ptr %l97, !tbaa !24
  store i64 %t194, ptr %l14, !tbaa !24
  store i64 0, ptr %l15, !tbaa !24
  br label %bb26
bb26:
  %t195 = load i64, ptr %l15, !tbaa !24
  %t196 = load i64, ptr %l14, !tbaa !24
  %t199 = icmp slt i64 %t195, %t196
  %t201 = xor i1 %t199, true
  br i1 %t201, label %bb27, label %bb28
bb27:
  br label %bb40
bb28:
  br label %bb29
bb29:
  %t203 = load i64, ptr %l11, !tbaa !24
  %t204 = load i64, ptr %l15, !tbaa !24
  %t205 = load i64, ptr %l13, !tbaa !24
  %t208 = mul i64 %t204, %t205
  %t211 = add i64 %t203, %t208
  store i64 %t211, ptr %l16, !tbaa !24
  %t213 = load i64, ptr %l16, !tbaa !24
  store i64 %t213, ptr %l118, !tbaa !24
  %t214 = load ptr, ptr %l6, !tbaa !29
  %t216 = getelementptr %"compiler/mir:Fn", ptr %t214, i32 0, i32 4
  %t218 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aLocalId_3e_2eLen_3ccompiler_2fmir_3aLocalId_3e(ptr %v0, ptr %t216)
  store i64 %t218, ptr %l121
  br label %bb30
bb30:
  %t219 = load i64, ptr %l118, !tbaa !24
  %t220 = load i64, ptr %l121, !tbaa !24
  %t221 = icmp slt i64 %t219, %t220
  br i1 %t221, label %bb31, label %bb32
bb31:
  %t223 = load ptr, ptr %l6, !tbaa !29
  %t225 = getelementptr %"compiler/mir:Fn", ptr %t223, i32 0, i32 4
  %t226 = load i64, ptr %l16, !tbaa !24
  %t229 = call i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aLocalId_3e_2eAt_3ccompiler_2fmir_3aLocalId_3e(ptr %v0, ptr %t225, i64 %t226)
  store i32 %t229, ptr %l126
  br label %bb33
bb32:
  br label %bb38
bb33:
  %t230 = load i32, ptr %l126, !tbaa !23
  store i32 %t230, ptr %l17, !tbaa !23
  %t231 = load ptr, ptr %l6, !tbaa !29
  %t233 = getelementptr %"compiler/mir:Fn", ptr %t231, i32 0, i32 7
  %t234 = load i32, ptr %l17, !tbaa !23
  %t236 = sext i32 %t234 to i64
  %t239 = call %"compiler/mir:Local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aLocal_3e_2eAt_3ccompiler_2fmir_3aLocal_3e(ptr %v0, ptr %t233, i64 %t236)
  store %"compiler/mir:Local" %t239, ptr %l131
  br label %bb34
bb34:
  %t240 = getelementptr %"compiler/mir:Local", ptr %l131, i32 0, i32 2
  %t241 = load i32, ptr %t240, !tbaa !23
  store i32 %t241, ptr %l18, !tbaa !23
  %t243 = load ptr, ptr %l0, !tbaa !29
  store ptr %t243, ptr %l133, !tbaa !29
  %t244 = load ptr, ptr %l0, !tbaa !29
  %t245 = load i64, ptr %l10, !tbaa !24
  %t246 = load i32, ptr %l17, !tbaa !23
  %t250 = call %"compiler/eval:Ptr" @compiler_2feval_2ecompiler_2feval_3aMachine_2elocalPtr(ptr %v0, ptr %t244, i64 %t245, i32 %t246)
  store %"compiler/eval:Ptr" %t250, ptr %l137
  br label %bb35
bb35:
  %t251 = load ptr, ptr %l0, !tbaa !29
  %t252 = load i32, ptr %l18, !tbaa !23
  %t255 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2ewidth(ptr %v0, ptr %t251, i32 %t252)
  store i64 %t255, ptr %l140
  br label %bb36
bb36:
  %t256 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t256, ptr %l141, !tbaa !27
  %t257 = load i64, ptr %l16, !tbaa !24
  %t259 = getelementptr { i64, ptr }, ptr %l141, i32 0, i32 1
  %t260 = load ptr, ptr %t259, !tbaa !27
  %t261 = getelementptr i64, ptr %t260, i64 %t257
  %t262 = load i64, ptr %t261, !tbaa !34
  %t263 = load ptr, ptr %l133, !tbaa !29
  %t264 = load %"compiler/eval:Ptr", ptr %l137
  %t265 = load i64, ptr %l140, !tbaa !24
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2ewr(ptr %v0, ptr %t263, %"compiler/eval:Ptr" %t264, i64 %t265, i64 %t262)
  br label %bb37
bb37:
  br label %bb38
bb38:
  br label %bb39
bb39:
  %t267 = load i64, ptr %l15, !tbaa !24
  %t269 = add i64 %t267, 1
  store i64 %t269, ptr %l15, !tbaa !24
  br label %bb26
bb40:
  store i64 0, ptr %l19, !tbaa !24
  %t271 = load ptr, ptr %l6, !tbaa !29
  %t273 = getelementptr %"compiler/mir:Fn", ptr %t271, i32 0, i32 6
  %t275 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aVarKind_3e_2eLen_3ccompiler_2fmir_3aVarKind_3e(ptr %v0, ptr %t273)
  store i64 %t275, ptr %l148
  br label %bb41
bb41:
  %t276 = load i64, ptr %l148, !tbaa !24
  store i64 %t276, ptr %l20, !tbaa !24
  store i64 1, ptr %l21, !tbaa !24
  %t277 = load i64, ptr %l20, !tbaa !24
  %t278 = load i64, ptr %l19, !tbaa !24
  %t281 = icmp sgt i64 %t277, %t278
  br i1 %t281, label %bb42, label %bb43
bb42:
  %t283 = load i64, ptr %l21, !tbaa !24
  %t285 = icmp sgt i64 %t283, 0
  br i1 %t285, label %bb44, label %bb45
bb43:
  store i64 0, ptr %l152, !tbaa !24
  br label %bb47
bb44:
  %t287 = load i64, ptr %l20, !tbaa !24
  %t288 = load i64, ptr %l19, !tbaa !24
  %t291 = sub i64 %t287, %t288
  %t292 = load i64, ptr %l21, !tbaa !24
  %t295 = add i64 %t291, %t292
  %t297 = sub i64 %t295, 1
  %t298 = load i64, ptr %l21, !tbaa !24
  %t301 = sdiv i64 %t297, %t298
  store i64 %t301, ptr %l155, !tbaa !24
  br label %bb46
bb45:
  store i64 0, ptr %l155, !tbaa !24
  br label %bb46
bb46:
  %t303 = load i64, ptr %l155, !tbaa !24
  store i64 %t303, ptr %l152, !tbaa !24
  br label %bb47
bb47:
  %t304 = load i64, ptr %l152, !tbaa !24
  store i64 %t304, ptr %l22, !tbaa !24
  store i64 0, ptr %l23, !tbaa !24
  br label %bb48
bb48:
  %t305 = load i64, ptr %l23, !tbaa !24
  %t306 = load i64, ptr %l22, !tbaa !24
  %t309 = icmp slt i64 %t305, %t306
  %t311 = xor i1 %t309, true
  br i1 %t311, label %bb49, label %bb50
bb49:
  br label %bb53
bb50:
  br label %bb51
bb51:
  %t313 = load i64, ptr %l19, !tbaa !24
  %t314 = load i64, ptr %l23, !tbaa !24
  %t315 = load i64, ptr %l21, !tbaa !24
  %t318 = mul i64 %t314, %t315
  %t321 = add i64 %t313, %t318
  %t323 = load ptr, ptr %l0, !tbaa !29
  %t325 = getelementptr %"compiler/eval:Machine", ptr %t323, i32 0, i32 57
  %t326 = load { i64, ptr }, ptr %t325, !tbaa !27
  store { i64, ptr } %t326, ptr %l174, !tbaa !27
  %t327 = load ptr, ptr %l0, !tbaa !29
  %t329 = getelementptr %"compiler/eval:Machine", ptr %t327, i32 0, i32 55
  %t330 = load { i64, ptr }, ptr %t329, !tbaa !27
  store { i64, ptr } %t330, ptr %l176, !tbaa !27
  %t331 = load i64, ptr %l10, !tbaa !24
  %t333 = getelementptr { i64, ptr }, ptr %l176, i32 0, i32 1
  %t334 = load ptr, ptr %t333, !tbaa !27
  %t335 = getelementptr %"compiler/eval:frame", ptr %t334, i64 %t331
  %t336 = getelementptr %"compiler/eval:frame", ptr %t335, i32 0, i32 5
  %t337 = load i64, ptr %t336, !tbaa !24
  %t341 = add i64 %t337, %t321
  %t342 = load ptr, ptr %l0, !tbaa !29
  %t344 = getelementptr %"compiler/eval:Machine", ptr %t342, i32 0, i32 67
  %t345 = load i64, ptr %t344, !tbaa !24
  %t348 = getelementptr { i64, ptr }, ptr %l174, i32 0, i32 1
  %t349 = load ptr, ptr %t348, !tbaa !27
  %t350 = getelementptr i64, ptr %t349, i64 %t341
  store i64 %t345, ptr %t350, !tbaa !34
  br label %bb52
bb52:
  %t351 = load i64, ptr %l23, !tbaa !24
  %t353 = add i64 %t351, 1
  store i64 %t353, ptr %l23, !tbaa !24
  br label %bb48
bb53:
  %t355 = load ptr, ptr %l0, !tbaa !29
  %t356 = load i64, ptr %l9, !tbaa !24
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2eloop(ptr %v0, ptr %t355, i64 %t356)
  br label %bb54
bb54:
  %t359 = load ptr, ptr %l0, !tbaa !29
  %t360 = load i64, ptr %l9, !tbaa !24
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2eunwind(ptr %v0, ptr %t359, i64 %t360)
  br label %bb55
bb55:
  %t363 = load ptr, ptr %l0, !tbaa !29
  %t365 = getelementptr %"compiler/eval:Machine", ptr %t363, i32 0, i32 17
  %t366 = load { i64, [5 x i64] }, ptr %t365
  store { i64, [5 x i64] } %t366, ptr %rv
  br label %ret
ret:
  %rr = load { i64, [5 x i64] }, ptr %rv
  ret { i64, [5 x i64] } %rr
}

define dso_local %"compiler/eval:Ptr" @compiler_2feval_2ecompiler_2feval_3aMachine_2eRefAt(ptr %v0, ptr %a0, %"compiler/eval:Ptr" %a1) #0 {
entry:
  %l4 = alloca %"compiler/eval:Ptr"
  %rv = alloca %"compiler/eval:Ptr"
  br label %start
start:
  br label %bb0
bb0:
  %t5 = call %"compiler/eval:Ptr" @compiler_2feval_2ecompiler_2feval_3aMachine_2erdPtr(ptr %v0, ptr %a0, %"compiler/eval:Ptr" %a1)
  store %"compiler/eval:Ptr" %t5, ptr %l4
  br label %bb1
bb1:
  %t6 = load %"compiler/eval:Ptr", ptr %l4
  store %"compiler/eval:Ptr" %t6, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/eval:Ptr", ptr %rv
  ret %"compiler/eval:Ptr" %rr
}

define dso_local { i64, i64, i64 } @compiler_2feval_2ecompiler_2feval_3aMachine_2eTraceAt(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l6 = alloca i64
  %l12 = alloca i64
  %l18 = alloca i64
  %rv = alloca { i64, i64, i64 }
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/eval:Machine", ptr %t1, i32 0, i32 85
  %t4 = load i64, ptr %l1, !tbaa !24
  %t6 = mul i64 4, %t4
  %t9 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t3, i64 %t6)
  store i64 %t9, ptr %l6
  br label %bb1
bb1:
  %t10 = load ptr, ptr %l0, !tbaa !29
  %t12 = getelementptr %"compiler/eval:Machine", ptr %t10, i32 0, i32 85
  %t13 = load i64, ptr %l1, !tbaa !24
  %t15 = mul i64 4, %t13
  %t17 = add i64 %t15, 1
  %t20 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t12, i64 %t17)
  store i64 %t20, ptr %l12
  br label %bb2
bb2:
  %t21 = load ptr, ptr %l0, !tbaa !29
  %t23 = getelementptr %"compiler/eval:Machine", ptr %t21, i32 0, i32 85
  %t24 = load i64, ptr %l1, !tbaa !24
  %t26 = mul i64 4, %t24
  %t28 = add i64 %t26, 2
  %t31 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t23, i64 %t28)
  store i64 %t31, ptr %l18
  br label %bb3
bb3:
  %t32 = load i64, ptr %l6, !tbaa !24
  %t33 = insertvalue { i64, i64, i64 } undef, i64 %t32, 0
  %t34 = load i64, ptr %l12, !tbaa !24
  %t35 = insertvalue { i64, i64, i64 } %t33, i64 %t34, 1
  %t36 = load i64, ptr %l18, !tbaa !24
  %t37 = insertvalue { i64, i64, i64 } %t35, i64 %t36, 2
  store { i64, i64, i64 } %t37, ptr %rv
  br label %ret
ret:
  %rr = load { i64, i64, i64 }, ptr %rv
  ret { i64, i64, i64 } %rr
}

define dso_local void @compiler_2feval_2ecompiler_2feval_3aMachine_2eadopt(ptr %v0, ptr %a0, i64 %a1, i64 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca i64
  %l3 = alloca i64
  %l4 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l14 = alloca i1
  %l16 = alloca i1
  %l19 = alloca i1
  %l31 = alloca ptr
  %l38 = alloca %"compiler/eval:scope"
  %l43 = alloca ptr
  %l50 = alloca ptr
  %t51 = alloca %"compiler/eval:scope", align 8
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  store i64 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load i64, ptr %l2, !tbaa !24
  %t5 = call i1 @compiler_2feval_2ecompiler_2feval_3aMachine_2elive(ptr %v0, ptr %t1, i64 %t2)
  store i1 %t5, ptr %l14
  br label %bb1
bb1:
  %t6 = load i1, ptr %l14, !tbaa !21
  %t7 = xor i1 %t6, true
  br i1 %t7, label %bb2, label %bb3
bb2:
  store i1 true, ptr %l16, !tbaa !21
  br label %bb5
bb3:
  %t9 = load ptr, ptr %l0, !tbaa !29
  %t10 = load i64, ptr %l1, !tbaa !24
  %t13 = call i1 @compiler_2feval_2ecompiler_2feval_3aMachine_2elive(ptr %v0, ptr %t9, i64 %t10)
  store i1 %t13, ptr %l19
  br label %bb4
bb4:
  %t14 = load i1, ptr %l19, !tbaa !21
  %t15 = xor i1 %t14, true
  store i1 %t15, ptr %l16, !tbaa !21
  br label %bb5
bb5:
  %t17 = load i1, ptr %l16, !tbaa !21
  br i1 %t17, label %bb6, label %bb7
bb6:
  br label %ret
bb7:
  br label %bb8
bb8:
  %t18 = load i64, ptr %l1, !tbaa !24
  %t19 = load i64, ptr @G_2ecompiler_2feval_2eslotMask, !tbaa !24
  %t22 = and i64 %t18, %t19
  store i64 %t22, ptr %l3, !tbaa !24
  %t24 = load i64, ptr %l2, !tbaa !24
  %t25 = load i64, ptr @G_2ecompiler_2feval_2eslotMask, !tbaa !24
  %t28 = and i64 %t24, %t25
  store i64 %t28, ptr %l4, !tbaa !24
  %t30 = load i64, ptr %l3, !tbaa !24
  %t32 = load ptr, ptr %l0, !tbaa !29
  %t34 = getelementptr %"compiler/eval:Machine", ptr %t32, i32 0, i32 49
  %t38 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3ascope_3e_2eRefMut_3ccompiler_2feval_3ascope_3e(ptr %v0, ptr %v0, ptr %t34, i64 %t30)
  store ptr %t38, ptr %l31
  br label %bb9
bb9:
  %t39 = load ptr, ptr %l31, !tbaa !29
  %t41 = load i64, ptr %l2, !tbaa !24
  %t44 = getelementptr %"compiler/eval:scope", ptr %t39, i32 0, i32 5
  store i64 %t41, ptr %t44, !tbaa !24
  %t45 = load i64, ptr %l3, !tbaa !24
  store i64 %t45, ptr %l7, !tbaa !24
  %t47 = load ptr, ptr %l0, !tbaa !29
  %t49 = getelementptr %"compiler/eval:Machine", ptr %t47, i32 0, i32 49
  %t50 = load i64, ptr %l4, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3ascope_3e_2eAt_3ccompiler_2feval_3ascope_3e(ptr %t51, ptr %v0, ptr %t49, i64 %t50)
  call void @llvm.memmove.p0.p0.i64(ptr %l38, ptr %t51, i64 144, i1 false)
  br label %bb10
bb10:
  %t54 = getelementptr %"compiler/eval:scope", ptr %l38, i32 0, i32 6
  %t55 = load i64, ptr %t54, !tbaa !24
  store i64 %t55, ptr %l8, !tbaa !24
  %t57 = load ptr, ptr %l0, !tbaa !29
  %t59 = getelementptr %"compiler/eval:Machine", ptr %t57, i32 0, i32 49
  %t60 = load i64, ptr %l7, !tbaa !24
  %t63 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3ascope_3e_2eRefMut_3ccompiler_2feval_3ascope_3e(ptr %v0, ptr %v0, ptr %t59, i64 %t60)
  store ptr %t63, ptr %l43
  br label %bb11
bb11:
  %t64 = load ptr, ptr %l43, !tbaa !29
  %t66 = load i64, ptr %l8, !tbaa !24
  %t69 = getelementptr %"compiler/eval:scope", ptr %t64, i32 0, i32 7
  store i64 %t66, ptr %t69, !tbaa !24
  %t70 = load i64, ptr %l4, !tbaa !24
  %t72 = load ptr, ptr %l0, !tbaa !29
  %t74 = getelementptr %"compiler/eval:Machine", ptr %t72, i32 0, i32 49
  %t78 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3ascope_3e_2eRefMut_3ccompiler_2feval_3ascope_3e(ptr %v0, ptr %v0, ptr %t74, i64 %t70)
  store ptr %t78, ptr %l50
  br label %bb12
bb12:
  %t79 = load ptr, ptr %l50, !tbaa !29
  %t81 = load i64, ptr %l1, !tbaa !24
  %t84 = getelementptr %"compiler/eval:scope", ptr %t79, i32 0, i32 6
  store i64 %t81, ptr %t84, !tbaa !24
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2feval_2ecompiler_2feval_3aMachine_2eappendByte(ptr %v0, ptr %a0, i64 %a1, i64 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca %"compiler/eval:Ptr"
  %l8 = alloca i64
  %l11 = alloca i64
  %l19 = alloca %"compiler/eval:scope"
  %l24 = alloca %"compiler/eval:scope"
  %l28 = alloca { i64, ptr }
  %l39 = alloca %"compiler/eval:Ptr"
  %l42 = alloca ptr
  %l43 = alloca %"compiler/eval:Ptr"
  %l45 = alloca %"compiler/eval:Ptr"
  %l56 = alloca ptr
  %l60 = alloca ptr
  %l63 = alloca %"compiler/eval:Ptr"
  %l71 = alloca ptr
  %s0 = alloca %olang.scope
  %s1 = alloca %olang.scope
  %t11 = alloca %"compiler/eval:scope", align 8
  %t21 = alloca %"compiler/eval:scope", align 8
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load i64, ptr %l1, !tbaa !24
  %t2 = load i64, ptr @G_2ecompiler_2feval_2eslotMask, !tbaa !24
  %t5 = and i64 %t1, %t2
  store i64 %t5, ptr %l3, !tbaa !24
  %t7 = load ptr, ptr %l0, !tbaa !29
  %t9 = getelementptr %"compiler/eval:Machine", ptr %t7, i32 0, i32 49
  %t10 = load i64, ptr %l3, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3ascope_3e_2eAt_3ccompiler_2feval_3ascope_3e(ptr %t11, ptr %v0, ptr %t9, i64 %t10)
  call void @llvm.memmove.p0.p0.i64(ptr %l19, ptr %t11, i64 144, i1 false)
  br label %bb1
bb1:
  %t14 = getelementptr %"compiler/eval:scope", ptr %l19, i32 0, i32 8
  %t15 = load i64, ptr %t14, !tbaa !24
  store i64 %t15, ptr %l4, !tbaa !24
  %t17 = load ptr, ptr %l0, !tbaa !29
  %t19 = getelementptr %"compiler/eval:Machine", ptr %t17, i32 0, i32 49
  %t20 = load i64, ptr %l3, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3ascope_3e_2eAt_3ccompiler_2feval_3ascope_3e(ptr %t21, ptr %v0, ptr %t19, i64 %t20)
  call void @llvm.memmove.p0.p0.i64(ptr %l24, ptr %t21, i64 144, i1 false)
  br label %bb2
bb2:
  %t24 = getelementptr %"compiler/eval:scope", ptr %l24, i32 0, i32 9
  %t25 = load i64, ptr %t24, !tbaa !24
  store i64 %t25, ptr %l5, !tbaa !24
  %t27 = load i64, ptr %l5, !tbaa !24
  %t28 = load ptr, ptr %l0, !tbaa !29
  %t30 = getelementptr %"compiler/eval:Machine", ptr %t28, i32 0, i32 46
  %t31 = load { i64, ptr }, ptr %t30, !tbaa !27
  store { i64, ptr } %t31, ptr %l28, !tbaa !27
  %t32 = load i64, ptr %l4, !tbaa !24
  %t33 = load i64, ptr @G_2ecompiler_2feval_2eslotMask, !tbaa !24
  %t36 = and i64 %t32, %t33
  %t38 = getelementptr { i64, ptr }, ptr %l28, i32 0, i32 1
  %t39 = load ptr, ptr %t38, !tbaa !27
  %t40 = getelementptr %"compiler/eval:alloc", ptr %t39, i64 %t36
  %t41 = getelementptr %"compiler/eval:alloc", ptr %t40, i32 0, i32 1
  %t42 = load i64, ptr %t41, !tbaa !24
  %t45 = icmp sge i64 %t27, %t42
  br i1 %t45, label %bb3, label %bb4
bb3:
  store %olang.scope zeroinitializer, ptr %s1
  %t47 = load ptr, ptr %l0, !tbaa !29
  %t48 = load i64, ptr %l5, !tbaa !24
  %t50 = mul i64 2, %t48
  %t51 = load i64, ptr @G_2ecompiler_2feval_2eaValue, !tbaa !24
  %t52 = load i64, ptr %l1, !tbaa !24
  %t57 = call %"compiler/eval:Ptr" @compiler_2feval_2ecompiler_2feval_3aMachine_2eallocate(ptr %v0, ptr %t47, i64 %t50, i64 %t51, i64 %t52)
  store %"compiler/eval:Ptr" %t57, ptr %l39
  br label %bb5
bb4:
  br label %bb13
bb5:
  %t58 = load %"compiler/eval:Ptr", ptr %l39
  store %"compiler/eval:Ptr" %t58, ptr %l6
  %t59 = load ptr, ptr %l0, !tbaa !29
  %t61 = getelementptr %"compiler/eval:Machine", ptr %t59, i32 0, i32 19
  %t62 = load i1, ptr %t61, !tbaa !21
  br i1 %t62, label %bb6, label %bb7
bb6:
  call void @__olang_scope_close(ptr %s1)
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb7:
  br label %bb8
bb8:
  %t64 = load ptr, ptr %l0, !tbaa !29
  store ptr %t64, ptr %l42, !tbaa !29
  %t65 = load %"compiler/eval:Ptr", ptr %l6
  store %"compiler/eval:Ptr" %t65, ptr %l43
  %t66 = load i64, ptr %l4, !tbaa !24
  %t68 = call %"compiler/eval:Ptr" @compiler_2feval_3aPtr_2ector(ptr %s1, i64 %t66, i64 0)
  store %"compiler/eval:Ptr" %t68, ptr %l45
  br label %bb9
bb9:
  %t69 = load i64, ptr %l5, !tbaa !24
  %t70 = load ptr, ptr %l42, !tbaa !29
  %t71 = load %"compiler/eval:Ptr", ptr %l43
  %t72 = load %"compiler/eval:Ptr", ptr %l45
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2ecopy(ptr %v0, ptr %t70, %"compiler/eval:Ptr" %t71, %"compiler/eval:Ptr" %t72, i64 %t69)
  br label %bb10
bb10:
  %t74 = load ptr, ptr %l0, !tbaa !29
  %t75 = load i64, ptr %l4, !tbaa !24
  %t76 = load i64, ptr @G_2ecompiler_2feval_2eslotMask, !tbaa !24
  %t79 = and i64 %t75, %t76
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2erelease(ptr %v0, ptr %t74, i64 %t79)
  br label %bb11
bb11:
  %t82 = load i64, ptr %l3, !tbaa !24
  %t84 = getelementptr %"compiler/eval:Ptr", ptr %l6, i32 0, i32 0
  %t85 = load i64, ptr %t84, !tbaa !24
  store i64 %t85, ptr %l8, !tbaa !24
  %t87 = load ptr, ptr %l0, !tbaa !29
  %t89 = getelementptr %"compiler/eval:Machine", ptr %t87, i32 0, i32 49
  %t93 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3ascope_3e_2eRefMut_3ccompiler_2feval_3ascope_3e(ptr %v0, ptr %v0, ptr %t89, i64 %t82)
  store ptr %t93, ptr %l56
  br label %bb12
bb12:
  %t94 = load ptr, ptr %l56, !tbaa !29
  %t96 = load i64, ptr %l8, !tbaa !24
  %t99 = getelementptr %"compiler/eval:scope", ptr %t94, i32 0, i32 8
  store i64 %t96, ptr %t99, !tbaa !24
  %t100 = getelementptr %"compiler/eval:Ptr", ptr %l6, i32 0, i32 0
  %t101 = load i64, ptr %t100, !tbaa !24
  store i64 %t101, ptr %l4, !tbaa !24
  call void @__olang_scope_close(ptr %s1)
  br label %bb13
bb13:
  %t103 = load ptr, ptr %l0, !tbaa !29
  store ptr %t103, ptr %l60, !tbaa !29
  %t104 = load i64, ptr %l4, !tbaa !24
  %t105 = load i64, ptr %l5, !tbaa !24
  %t108 = call %"compiler/eval:Ptr" @compiler_2feval_3aPtr_2ector(ptr %s0, i64 %t104, i64 %t105)
  store %"compiler/eval:Ptr" %t108, ptr %l63
  br label %bb14
bb14:
  %t110 = load ptr, ptr %l60, !tbaa !29
  %t111 = load %"compiler/eval:Ptr", ptr %l63
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2ewr(ptr %v0, ptr %t110, %"compiler/eval:Ptr" %t111, i64 1, i64 %a2)
  br label %bb15
bb15:
  %t113 = load i64, ptr %l3, !tbaa !24
  %t115 = load i64, ptr %l5, !tbaa !24
  %t117 = add i64 %t115, 1
  store i64 %t117, ptr %l11, !tbaa !24
  %t119 = load ptr, ptr %l0, !tbaa !29
  %t121 = getelementptr %"compiler/eval:Machine", ptr %t119, i32 0, i32 49
  %t125 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3ascope_3e_2eRefMut_3ccompiler_2feval_3ascope_3e(ptr %v0, ptr %v0, ptr %t121, i64 %t113)
  store ptr %t125, ptr %l71
  br label %bb16
bb16:
  %t126 = load ptr, ptr %l71, !tbaa !29
  %t128 = load i64, ptr %l11, !tbaa !24
  %t131 = getelementptr %"compiler/eval:scope", ptr %t126, i32 0, i32 9
  store i64 %t128, ptr %t131, !tbaa !24
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local i32 @compiler_2feval_2ecompiler_2feval_3aMachine_2earrayOf(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l2 = alloca ptr
  %l3 = alloca i32
  %l8 = alloca i32
  %l11 = alloca i32
  %l14 = alloca ptr
  %l17 = alloca i32
  %l18 = alloca i32
  %l21 = alloca i32
  %l24 = alloca i32
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
  store i32 %t10, ptr %l8
  br label %bb1
bb1:
  %t11 = load i32, ptr %l8, !tbaa !23
  store i32 %t11, ptr %l3, !tbaa !23
  %t12 = load ptr, ptr %l2, !tbaa !29
  %t13 = load i32, ptr %l3, !tbaa !23
  %t16 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t12, i32 %t13)
  store i32 %t16, ptr %l11
  br label %bb2
bb2:
  %t17 = load i32, ptr %l11, !range !{i32 0, i32 33}
  %t19 = trunc i64 20 to i32
  %t20 = icmp eq i32 %t17, %t19
  br i1 %t20, label %bb3, label %bb4
bb3:
  %t22 = load ptr, ptr %l2, !tbaa !29
  store ptr %t22, ptr %l14, !tbaa !29
  %t23 = load ptr, ptr %l2, !tbaa !29
  %t24 = load i32, ptr %l3, !tbaa !23
  %t27 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eReferent(ptr %v0, ptr %t23, i32 %t24)
  store i32 %t27, ptr %l17
  br label %bb5
bb4:
  br label %bb7
bb5:
  %t28 = load ptr, ptr %l14, !tbaa !29
  %t29 = load i32, ptr %l17, !tbaa !23
  %t30 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %v0, ptr %t28, i32 %t29)
  store i32 %t30, ptr %l18
  br label %bb6
bb6:
  %t31 = load i32, ptr %l18, !tbaa !23
  store i32 %t31, ptr %l3, !tbaa !23
  br label %bb7
bb7:
  %t32 = load ptr, ptr %l2, !tbaa !29
  %t33 = load i32, ptr %l3, !tbaa !23
  %t36 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t32, i32 %t33)
  store i32 %t36, ptr %l21
  br label %bb8
bb8:
  %t37 = load i32, ptr %l21, !range !{i32 0, i32 33}
  %t39 = trunc i64 19 to i32
  %t40 = icmp eq i32 %t37, %t39
  br i1 %t40, label %bb9, label %bb10
bb9:
  %t42 = load i32, ptr %l3, !tbaa !23
  store i32 %t42, ptr %l24, !tbaa !23
  br label %bb11
bb10:
  %t44 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  store i32 %t44, ptr %l24, !tbaa !23
  br label %bb11
bb11:
  %t46 = load i32, ptr %l24, !tbaa !23
  store i32 %t46, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local { %"compiler/eval:Ptr", i64 } @compiler_2feval_2ecompiler_2feval_3aMachine_2earrayView(ptr %v0, ptr %a0, %"compiler/eval:Ptr" %a1, i32 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/eval:Ptr"
  %l3 = alloca ptr
  %l4 = alloca i32
  %l5 = alloca i32
  %l6 = alloca i64
  %l7 = alloca %"compiler/eval:Ptr"
  %l12 = alloca i32
  %l15 = alloca i32
  %l18 = alloca ptr
  %l21 = alloca i32
  %l22 = alloca i32
  %l25 = alloca i32
  %l29 = alloca %"compiler/eval:Ptr"
  %l32 = alloca i64
  %l36 = alloca i32
  %l38 = alloca %"compiler/eval:Ptr"
  %l41 = alloca i64
  %l45 = alloca i64
  %l46 = alloca ptr
  %l50 = alloca %"compiler/eval:Ptr"
  %l51 = alloca %"compiler/eval:Ptr"
  %l54 = alloca i1
  %s0 = alloca %olang.scope
  %rv = alloca { %"compiler/eval:Ptr", i64 }
  store ptr %a0, ptr %l0
  store %"compiler/eval:Ptr" %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/eval:Machine", ptr %t1, i32 0, i32 0
  %t4 = load ptr, ptr %t3, !tbaa !29
  store ptr %t4, ptr %l3, !tbaa !29
  %t6 = load ptr, ptr %l3, !tbaa !29
  %t10 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %v0, ptr %t6, i32 %a2)
  store i32 %t10, ptr %l12
  br label %bb1
bb1:
  %t11 = load i32, ptr %l12, !tbaa !23
  store i32 %t11, ptr %l4, !tbaa !23
  %t12 = load ptr, ptr %l3, !tbaa !29
  %t13 = load i32, ptr %l4, !tbaa !23
  %t16 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t12, i32 %t13)
  store i32 %t16, ptr %l15
  br label %bb2
bb2:
  %t17 = load i32, ptr %l15, !range !{i32 0, i32 33}
  %t19 = trunc i64 20 to i32
  %t20 = icmp eq i32 %t17, %t19
  br i1 %t20, label %bb3, label %bb4
bb3:
  %t22 = load ptr, ptr %l3, !tbaa !29
  store ptr %t22, ptr %l18, !tbaa !29
  %t23 = load ptr, ptr %l3, !tbaa !29
  %t24 = load i32, ptr %l4, !tbaa !23
  %t27 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eReferent(ptr %v0, ptr %t23, i32 %t24)
  store i32 %t27, ptr %l21
  br label %bb5
bb4:
  %t28 = load ptr, ptr %l3, !tbaa !29
  %t29 = load i32, ptr %l4, !tbaa !23
  %t32 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eLength(ptr %v0, ptr %t28, i32 %t29)
  store i32 %t32, ptr %l36
  br label %bb13
bb5:
  %t33 = load ptr, ptr %l18, !tbaa !29
  %t34 = load i32, ptr %l21, !tbaa !23
  %t35 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %v0, ptr %t33, i32 %t34)
  store i32 %t35, ptr %l22
  br label %bb6
bb6:
  %t36 = load i32, ptr %l22, !tbaa !23
  store i32 %t36, ptr %l5, !tbaa !23
  %t37 = load ptr, ptr %l3, !tbaa !29
  %t38 = load i32, ptr %l5, !tbaa !23
  %t41 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eLength(ptr %v0, ptr %t37, i32 %t38)
  store i32 %t41, ptr %l25
  br label %bb7
bb7:
  %t42 = load i32, ptr %l25, !tbaa !23
  %t43 = icmp ne i32 %t42, 0
  br i1 %t43, label %bb8, label %bb9
bb8:
  %t45 = load ptr, ptr %l0, !tbaa !29
  %t46 = load %"compiler/eval:Ptr", ptr %l1
  %t49 = call %"compiler/eval:Ptr" @compiler_2feval_2ecompiler_2feval_3aMachine_2erdPtr(ptr %v0, ptr %t45, %"compiler/eval:Ptr" %t46)
  store %"compiler/eval:Ptr" %t49, ptr %l29
  br label %bb10
bb9:
  br label %bb12
bb10:
  %t50 = load ptr, ptr %l0, !tbaa !29
  %t51 = load i32, ptr %l5, !tbaa !23
  %t54 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2efixedLen(ptr %v0, ptr %t50, i32 %t51)
  store i64 %t54, ptr %l32
  br label %bb11
bb11:
  %t55 = load %"compiler/eval:Ptr", ptr %l29
  %t56 = insertvalue { %"compiler/eval:Ptr", i64 } undef, %"compiler/eval:Ptr" %t55, 0
  %t57 = load i64, ptr %l32, !tbaa !24
  %t58 = insertvalue { %"compiler/eval:Ptr", i64 } %t56, i64 %t57, 1
  call void @__olang_scope_close(ptr %s0)
  store { %"compiler/eval:Ptr", i64 } %t58, ptr %rv
  br label %ret
bb12:
  br label %bb18
bb13:
  %t60 = load i32, ptr %l36, !tbaa !23
  %t61 = icmp ne i32 %t60, 0
  br i1 %t61, label %bb14, label %bb15
bb14:
  %t63 = load %"compiler/eval:Ptr", ptr %l1
  store %"compiler/eval:Ptr" %t63, ptr %l38
  %t64 = load ptr, ptr %l0, !tbaa !29
  %t65 = load i32, ptr %l4, !tbaa !23
  %t68 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2efixedLen(ptr %v0, ptr %t64, i32 %t65)
  store i64 %t68, ptr %l41
  br label %bb16
bb15:
  br label %bb17
bb16:
  %t69 = load %"compiler/eval:Ptr", ptr %l38
  %t70 = insertvalue { %"compiler/eval:Ptr", i64 } undef, %"compiler/eval:Ptr" %t69, 0
  %t71 = load i64, ptr %l41, !tbaa !24
  %t72 = insertvalue { %"compiler/eval:Ptr", i64 } %t70, i64 %t71, 1
  call void @__olang_scope_close(ptr %s0)
  store { %"compiler/eval:Ptr", i64 } %t72, ptr %rv
  br label %ret
bb17:
  br label %bb18
bb18:
  %t74 = load ptr, ptr %l0, !tbaa !29
  %t75 = load %"compiler/eval:Ptr", ptr %l1
  %t78 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2erd(ptr %v0, ptr %t74, %"compiler/eval:Ptr" %t75, i64 8)
  store i64 %t78, ptr %l45
  br label %bb19
bb19:
  %t79 = load i64, ptr %l45, !tbaa !24
  store i64 %t79, ptr %l6, !tbaa !24
  %t80 = load ptr, ptr %l0, !tbaa !29
  store ptr %t80, ptr %l46, !tbaa !29
  %t81 = getelementptr %"compiler/eval:Ptr", ptr %l1, i32 0, i32 0
  %t82 = load i64, ptr %t81, !tbaa !24
  %t83 = getelementptr %"compiler/eval:Ptr", ptr %l1, i32 0, i32 1
  %t84 = load i64, ptr %t83, !tbaa !24
  %t86 = add i64 %t84, 8
  %t89 = call %"compiler/eval:Ptr" @compiler_2feval_3aPtr_2ector(ptr %s0, i64 %t82, i64 %t86)
  store %"compiler/eval:Ptr" %t89, ptr %l50
  br label %bb20
bb20:
  %t90 = load ptr, ptr %l46, !tbaa !29
  %t91 = load %"compiler/eval:Ptr", ptr %l50
  %t92 = call %"compiler/eval:Ptr" @compiler_2feval_2ecompiler_2feval_3aMachine_2erdPtr(ptr %v0, ptr %t90, %"compiler/eval:Ptr" %t91)
  store %"compiler/eval:Ptr" %t92, ptr %l51
  br label %bb21
bb21:
  %t93 = load %"compiler/eval:Ptr", ptr %l51
  store %"compiler/eval:Ptr" %t93, ptr %l7
  %t94 = load i64, ptr %l6, !tbaa !24
  %t96 = icmp sgt i64 %t94, 0
  br i1 %t96, label %bb22, label %bb23
bb22:
  %t98 = getelementptr %"compiler/eval:Ptr", ptr %l7, i32 0, i32 0
  %t99 = load i64, ptr %t98, !tbaa !24
  %t101 = icmp eq i64 %t99, 0
  store i1 %t101, ptr %l54, !tbaa !21
  br label %bb24
bb23:
  store i1 false, ptr %l54, !tbaa !21
  br label %bb24
bb24:
  %t103 = load i1, ptr %l54, !tbaa !21
  br i1 %t103, label %bb25, label %bb26
bb25:
  %t104 = load ptr, ptr %l0, !tbaa !29
  %t105 = load { i64, ptr }, ptr @G_2ecompiler_2feval_2eWhyNull, !tbaa !27
  %t106 = load ptr, ptr @__olang_prog_scope
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2erefuse(ptr %v0, ptr %t106, ptr %t104, { i64, ptr } %t105)
  br label %bb27
bb26:
  br label %bb28
bb27:
  br label %bb28
bb28:
  %t109 = load %"compiler/eval:Ptr", ptr %l7
  %t110 = load i64, ptr %l6, !tbaa !24
  %t112 = insertvalue { %"compiler/eval:Ptr", i64 } undef, %"compiler/eval:Ptr" %t109, 0
  %t114 = insertvalue { %"compiler/eval:Ptr", i64 } %t112, i64 %t110, 1
  call void @__olang_scope_close(ptr %s0)
  store { %"compiler/eval:Ptr", i64 } %t114, ptr %rv
  br label %ret
ret:
  %rr = load { %"compiler/eval:Ptr", i64 }, ptr %rv
  ret { %"compiler/eval:Ptr", i64 } %rr
}

define dso_local { i64, ptr } @compiler_2feval_2ecompiler_2feval_3aMachine_2ebytesOf(ptr %v0, ptr %v1, ptr %a0, i64 %a1, { i64, [4 x i64] } %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca { i64, [4 x i64] }
  %l3 = alloca i32
  %l4 = alloca { %"compiler/eval:Ptr", i64 }
  %l5 = alloca %"compiler/eval:Ptr"
  %l6 = alloca i64
  %l7 = alloca i64
  %lp8 = alloca ptr
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca i64
  %l12 = alloca i64
  %l13 = alloca i64
  %l14 = alloca i64
  %l18 = alloca i32
  %l19 = alloca ptr
  %l23 = alloca %"compiler/eval:Ptr"
  %l25 = alloca { %"compiler/eval:Ptr", i64 }
  %l32 = alloca i64
  %l33 = alloca ptr
  %l36 = alloca i32
  %l37 = alloca i64
  %l39 = alloca i64
  %l46 = alloca i64
  %l49 = alloca i64
  %l67 = alloca i64
  %l68 = alloca ptr
  %l73 = alloca %"compiler/eval:Ptr"
  %l74 = alloca i64
  %s3 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  store { i64, [4 x i64] } %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load i64, ptr %l1, !tbaa !24
  %t3 = load { i64, [4 x i64] }, ptr %l2
  %t7 = call i32 @compiler_2feval_2ecompiler_2feval_3aMachine_2eopType(ptr %v0, ptr %t1, i64 %t2, { i64, [4 x i64] } %t3)
  store i32 %t7, ptr %l18
  br label %bb1
bb1:
  %t8 = load i32, ptr %l18, !tbaa !23
  store i32 %t8, ptr %l3, !tbaa !23
  %t9 = load ptr, ptr %l0, !tbaa !29
  store ptr %t9, ptr %l19, !tbaa !29
  %t10 = load ptr, ptr %l0, !tbaa !29
  %t11 = load i64, ptr %l1, !tbaa !24
  %t12 = load { i64, [4 x i64] }, ptr %l2
  %t16 = call %"compiler/eval:Ptr" @compiler_2feval_2ecompiler_2feval_3aMachine_2eaddr(ptr %v0, ptr %t10, i64 %t11, { i64, [4 x i64] } %t12, i64 1)
  store %"compiler/eval:Ptr" %t16, ptr %l23
  br label %bb2
bb2:
  %t17 = load i32, ptr %l3, !tbaa !23
  %t18 = load ptr, ptr %l19, !tbaa !29
  %t19 = load %"compiler/eval:Ptr", ptr %l23
  %t21 = call { %"compiler/eval:Ptr", i64 } @compiler_2feval_2ecompiler_2feval_3aMachine_2earrayView(ptr %v0, ptr %t18, %"compiler/eval:Ptr" %t19, i32 %t17)
  store { %"compiler/eval:Ptr", i64 } %t21, ptr %l25
  br label %bb3
bb3:
  %t22 = load { %"compiler/eval:Ptr", i64 }, ptr %l25
  store { %"compiler/eval:Ptr", i64 } %t22, ptr %l4
  %t23 = getelementptr { %"compiler/eval:Ptr", i64 }, ptr %l4, i32 0, i32 0
  %t24 = load %"compiler/eval:Ptr", ptr %t23
  store %"compiler/eval:Ptr" %t24, ptr %l5
  %t26 = getelementptr { %"compiler/eval:Ptr", i64 }, ptr %l4, i32 0, i32 1
  %t27 = load i64, ptr %t26, !tbaa !24
  store i64 %t27, ptr %l6, !tbaa !24
  %t29 = load ptr, ptr %l0, !tbaa !29
  %t31 = getelementptr %"compiler/eval:Machine", ptr %t29, i32 0, i32 19
  %t32 = load i1, ptr %t31, !tbaa !21
  br i1 %t32, label %bb4, label %bb5
bb4:
  %t34 = icmp sge i64 0, 0
  br i1 %t34, label %bb6, label %bb7
bb5:
  br label %bb8
bb6:
  %t36 = mul i64 0, 1
  %t37 = insertvalue { i64, ptr } undef, i64 0, 0
  %t38 = insertvalue { i64, ptr } %t37, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  store { i64, ptr } %t38, ptr %rv
  br label %ret
bb7:
  call void @__olang_check_failed(ptr @olang_loc_9c6d2d38b14ece16_85850a0ccdf8ec6a)
  unreachable
bb8:
  %t40 = load i64, ptr %l6, !tbaa !24
  store i64 %t40, ptr %l32, !tbaa !24
  %t41 = load ptr, ptr %l0, !tbaa !29
  store ptr %t41, ptr %l33, !tbaa !29
  %t42 = load ptr, ptr %l0, !tbaa !29
  %t43 = load i32, ptr %l3, !tbaa !23
  %t46 = call i32 @compiler_2feval_2ecompiler_2feval_3aMachine_2eelemOf(ptr %v0, ptr %t42, i32 %t43)
  store i32 %t46, ptr %l36
  br label %bb9
bb9:
  %t47 = load ptr, ptr %l33, !tbaa !29
  %t48 = load i32, ptr %l36, !tbaa !23
  %t49 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2esize(ptr %v0, ptr %t47, i32 %t48)
  store i64 %t49, ptr %l37
  br label %bb10
bb10:
  %t50 = load i64, ptr %l32, !tbaa !24
  %t51 = load i64, ptr %l37, !tbaa !24
  %t52 = mul i64 %t50, %t51
  store i64 %t52, ptr %l7, !tbaa !24
  %t54 = load i64, ptr %l7, !tbaa !24
  store i64 %t54, ptr %l39, !tbaa !24
  %t55 = load i64, ptr %l39, !tbaa !24
  %t56 = icmp sge i64 %t55, 0
  br i1 %t56, label %bb11, label %bb12
bb11:
  %t58 = load i64, ptr %l39, !tbaa !24
  %t59 = mul i64 %t58, 1
  %t60 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t59)
  %t61 = insertvalue { i64, ptr } undef, i64 %t58, 0
  %t62 = insertvalue { i64, ptr } %t61, ptr %t60, 1
  %t63 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 16, i64 8)
  store ptr %t63, ptr %lp8
  %t65 = load ptr, ptr %lp8
  store { i64, ptr } %t62, ptr %t65, !tbaa !27
  store i64 0, ptr %l9, !tbaa !24
  %t66 = load i64, ptr %l7, !tbaa !24
  store i64 %t66, ptr %l10, !tbaa !24
  store i64 1, ptr %l11, !tbaa !24
  %t68 = load i64, ptr %l10, !tbaa !24
  %t69 = load i64, ptr %l9, !tbaa !24
  %t72 = icmp sgt i64 %t68, %t69
  br i1 %t72, label %bb13, label %bb14
bb12:
  call void @__olang_check_failed(ptr @olang_loc_3e93cd40ddf47e2b_3ba0afa8b25b773f)
  unreachable
bb13:
  %t74 = load i64, ptr %l11, !tbaa !24
  %t76 = icmp sgt i64 %t74, 0
  br i1 %t76, label %bb15, label %bb16
bb14:
  store i64 0, ptr %l46, !tbaa !24
  br label %bb18
bb15:
  %t78 = load i64, ptr %l10, !tbaa !24
  %t79 = load i64, ptr %l9, !tbaa !24
  %t82 = sub i64 %t78, %t79
  %t83 = load i64, ptr %l11, !tbaa !24
  %t86 = add i64 %t82, %t83
  %t88 = sub i64 %t86, 1
  %t89 = load i64, ptr %l11, !tbaa !24
  %t92 = sdiv i64 %t88, %t89
  store i64 %t92, ptr %l49, !tbaa !24
  br label %bb17
bb16:
  store i64 0, ptr %l49, !tbaa !24
  br label %bb17
bb17:
  %t94 = load i64, ptr %l49, !tbaa !24
  store i64 %t94, ptr %l46, !tbaa !24
  br label %bb18
bb18:
  %t95 = load i64, ptr %l46, !tbaa !24
  store i64 %t95, ptr %l12, !tbaa !24
  store i64 0, ptr %l13, !tbaa !24
  br label %bb19
bb19:
  store %olang.scope zeroinitializer, ptr %s3
  %t96 = load i64, ptr %l13, !tbaa !24
  %t97 = load i64, ptr %l12, !tbaa !24
  %t100 = icmp slt i64 %t96, %t97
  %t102 = xor i1 %t100, true
  br i1 %t102, label %bb20, label %bb21
bb20:
  call void @__olang_scope_close(ptr %s3)
  br label %bb26
bb21:
  br label %bb22
bb22:
  %t104 = load i64, ptr %l9, !tbaa !24
  %t105 = load i64, ptr %l13, !tbaa !24
  %t106 = load i64, ptr %l11, !tbaa !24
  %t109 = mul i64 %t105, %t106
  %t112 = add i64 %t104, %t109
  store i64 %t112, ptr %l14, !tbaa !24
  %t114 = load i64, ptr %l14, !tbaa !24
  store i64 %t114, ptr %l67, !tbaa !24
  %t115 = load ptr, ptr %l0, !tbaa !29
  store ptr %t115, ptr %l68, !tbaa !29
  %t116 = getelementptr %"compiler/eval:Ptr", ptr %l5, i32 0, i32 0
  %t117 = load i64, ptr %t116, !tbaa !24
  %t118 = getelementptr %"compiler/eval:Ptr", ptr %l5, i32 0, i32 1
  %t119 = load i64, ptr %t118, !tbaa !24
  %t120 = load i64, ptr %l14, !tbaa !24
  %t123 = add i64 %t119, %t120
  %t126 = call %"compiler/eval:Ptr" @compiler_2feval_3aPtr_2ector(ptr %s3, i64 %t117, i64 %t123)
  store %"compiler/eval:Ptr" %t126, ptr %l73
  br label %bb23
bb23:
  %t127 = load ptr, ptr %l68, !tbaa !29
  %t128 = load %"compiler/eval:Ptr", ptr %l73
  %t129 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2erd(ptr %v0, ptr %t127, %"compiler/eval:Ptr" %t128, i64 1)
  store i64 %t129, ptr %l74
  br label %bb24
bb24:
  %t130 = load i64, ptr %l74, !tbaa !24
  %t131 = trunc i64 %t130 to i8
  %t133 = load ptr, ptr %lp8
  %t134 = load i64, ptr %l67, !tbaa !24
  %t135 = getelementptr { i64, ptr }, ptr %t133, i32 0, i32 1
  %t136 = load ptr, ptr %t135, !tbaa !27
  %t137 = getelementptr i8, ptr %t136, i64 %t134
  store i8 %t131, ptr %t137, !tbaa !32
  call void @__olang_scope_close(ptr %s3)
  br label %bb25
bb25:
  %t138 = load i64, ptr %l13, !tbaa !24
  %t140 = add i64 %t138, 1
  store i64 %t140, ptr %l13, !tbaa !24
  br label %bb19
bb26:
  %t142 = load ptr, ptr %lp8
  %t143 = load { i64, ptr }, ptr %t142, !tbaa !27
  store { i64, ptr } %t143, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local i1 @compiler_2feval_2ecompiler_2feval_3aMachine_2ecallExtern(ptr %v0, ptr %a0, i64 %a1, i64 %a2, i32 %a3, %"compiler/mir:Range" %a4, %"compiler/eval:Ptr" %a5, i1 %a6) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca i64
  %l3 = alloca i32
  %l4 = alloca %"compiler/mir:Range"
  %l5 = alloca %"compiler/eval:Ptr"
  %l6 = alloca i1
  %l7 = alloca ptr
  %l8 = alloca { i64, ptr }
  %l9 = alloca ptr
  %l10 = alloca { i64, ptr }
  %l11 = alloca i32
  %l12 = alloca i1
  %l13 = alloca i64
  %l14 = alloca { i64, ptr }
  %l15 = alloca { i64, ptr }
  %l16 = alloca { i64, ptr }
  %l17 = alloca { i64, ptr }
  %l18 = alloca i64
  %l19 = alloca i64
  %l20 = alloca i64
  %l21 = alloca i64
  %l22 = alloca i64
  %l23 = alloca i64
  %l24 = alloca i64
  %l25 = alloca { i64, [4 x i64] }
  %l26 = alloca i32
  %l27 = alloca i64
  %l28 = alloca i32
  %l29 = alloca i64
  %l30 = alloca { %"compiler/eval:Ptr", i64 }
  %l31 = alloca %"compiler/eval:Ptr"
  %l32 = alloca i64
  %l33 = alloca i32
  %l34 = alloca %"compiler/eval:Ptr"
  %l35 = alloca i32
  %l36 = alloca { i64, ptr }
  %l37 = alloca i64
  %l38 = alloca i64
  %l39 = alloca i64
  %l40 = alloca i64
  %l41 = alloca i64
  %l42 = alloca i64
  %l43 = alloca i64
  %l44 = alloca %"compiler/eval:Ptr"
  %l45 = alloca i64
  %l46 = alloca i64
  %l47 = alloca i64
  %l48 = alloca i64
  %l49 = alloca i64
  %l50 = alloca i64
  %l51 = alloca i64
  %l53 = alloca i8
  %l55 = alloca i64
  %l56 = alloca i64
  %l57 = alloca i64
  %l58 = alloca i64
  %l59 = alloca i64
  %l60 = alloca i64
  %l61 = alloca i64
  %l62 = alloca %"compiler/eval:Ptr"
  %l63 = alloca i64
  %l64 = alloca i64
  %l65 = alloca i64
  %l66 = alloca i64
  %l67 = alloca i64
  %l68 = alloca i64
  %l69 = alloca i64
  %l72 = alloca ptr
  %l73 = alloca { i64, ptr }
  %l77 = alloca { i64, ptr }
  %l78 = alloca i32
  %l84 = alloca ptr
  %l87 = alloca i32
  %l88 = alloca { i64, ptr }
  %l91 = alloca i32
  %l95 = alloca i1
  %l99 = alloca i1
  %l101 = alloca i1
  %l103 = alloca i1
  %l109 = alloca i1
  %l117 = alloca i1
  %l121 = alloca i1
  %l124 = alloca i1
  %l128 = alloca i1
  %l131 = alloca i1
  %l133 = alloca i1
  %l141 = alloca i64
  %l144 = alloca i64
  %l145 = alloca %"compiler/eval:Ptr"
  %l147 = alloca %"compiler/eval:Ptr"
  %l151 = alloca i64
  %l155 = alloca i64
  %l163 = alloca i64
  %l166 = alloca i64
  %l190 = alloca { i64, [4 x i64] }
  %l195 = alloca i32
  %l196 = alloca { i64, ptr }
  %l202 = alloca i32
  %l206 = alloca i1
  %l207 = alloca i64
  %l210 = alloca i32
  %l211 = alloca i8
  %l215 = alloca i64
  %l219 = alloca i64
  %l226 = alloca i64
  %l235 = alloca i32
  %l238 = alloca i64
  %l242 = alloca i1
  %l246 = alloca ptr
  %l250 = alloca %"compiler/eval:Ptr"
  %l252 = alloca { %"compiler/eval:Ptr", i64 }
  %l257 = alloca i32
  %l260 = alloca i64
  %l262 = alloca i8
  %l267 = alloca i1
  %l268 = alloca i64
  %l271 = alloca i32
  %l272 = alloca i8
  %l275 = alloca i1
  %l276 = alloca i64
  %l278 = alloca i8
  %l284 = alloca i64
  %l285 = alloca i64
  %l288 = alloca i64
  %l290 = alloca i64
  %l293 = alloca i64
  %l299 = alloca ptr
  %l303 = alloca %"compiler/eval:Ptr"
  %l304 = alloca %"compiler/eval:Ptr"
  %l305 = alloca i64
  %l307 = alloca i8
  %l310 = alloca i1
  %l324 = alloca ptr
  %l327 = alloca i32
  %l328 = alloca i32
  %l331 = alloca i1
  %l334 = alloca i1
  %l335 = alloca i64
  %l337 = alloca i8
  %l340 = alloca i64
  %l343 = alloca i64
  %l344 = alloca i64
  %l347 = alloca i64
  %l358 = alloca i64
  %l366 = alloca i64
  %l369 = alloca i64
  %l394 = alloca i64
  %l396 = alloca i8
  %l398 = alloca i8
  %l400 = alloca i64
  %l403 = alloca i64
  %l407 = alloca i64
  %l414 = alloca i64
  %l417 = alloca i64
  %l435 = alloca ptr
  %l440 = alloca %"compiler/eval:Ptr"
  %l441 = alloca i64
  %l458 = alloca i64
  %l463 = alloca i64
  %l465 = alloca i64
  %l478 = alloca i1
  %l482 = alloca i8
  %l484 = alloca i8
  %l486 = alloca i8
  %l489 = alloca i32
  %l490 = alloca i8
  %l491 = alloca i64
  %l495 = alloca i64
  %l496 = alloca i32
  %l497 = alloca i64
  %l503 = alloca i64
  %l504 = alloca i32
  %l512 = alloca ptr
  %l513 = alloca i32
  %l518 = alloca i64
  %l521 = alloca i64
  %l547 = alloca { i64, ptr }
  %l557 = alloca i64
  %l560 = alloca i64
  %l578 = alloca ptr
  %l583 = alloca %"compiler/eval:Ptr"
  %l593 = alloca i64
  %l599 = alloca i64
  %l601 = alloca i64
  %l609 = alloca i1
  %l611 = alloca ptr
  %l612 = alloca %"compiler/eval:Ptr"
  %l615 = alloca %"compiler/eval:Ptr"
  %l620 = alloca %"compiler/eval:Ptr"
  %l622 = alloca i1
  %l626 = alloca i1
  %l630 = alloca ptr
  %l631 = alloca %"compiler/eval:Ptr"
  %l634 = alloca i64
  %s0 = alloca %olang.scope
  %s26 = alloca %olang.scope
  %s37 = alloca %olang.scope
  %s41 = alloca %olang.scope
  %rv = alloca i1
  %t171 = alloca i64
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  store i64 %a2, ptr %l2
  store i32 %a3, ptr %l3
  store %"compiler/mir:Range" %a4, ptr %l4
  store %"compiler/eval:Ptr" %a5, ptr %l5
  store i1 %a6, ptr %l6
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load i64, ptr %l1, !tbaa !24
  %t5 = call ptr @compiler_2feval_2ecompiler_2feval_3aMachine_2efnOfFrame(ptr %v0, ptr %v0, ptr %t1, i64 %t2)
  store ptr %t5, ptr %l72
  br label %bb1
bb1:
  %t6 = load ptr, ptr %l72, !tbaa !29
  store ptr %t6, ptr %l7, !tbaa !29
  %t7 = load ptr, ptr %l0, !tbaa !29
  %t9 = getelementptr %"compiler/eval:Machine", ptr %t7, i32 0, i32 31
  %t10 = load i64, ptr %l2, !tbaa !24
  %t13 = call { i32, { i64, ptr } } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2ftext_3aString_He9bc6cfad7ef603960b4717f3121b8e8(ptr %v0, ptr %v0, ptr %t9, i64 %t10)
  %t14 = extractvalue { i32, { i64, ptr } } %t13, 1
  %t15 = extractvalue { i32, { i64, ptr } } %t13, 0
  store i32 %t15, ptr %l78
  %t16 = icmp ne i32 %t15, 0
  br i1 %t16, label %bb3, label %ok.17, !prof !99
ok.17:
  store { i64, ptr } %t14, ptr %l77
  br label %bb2
bb2:
  %t18 = load { i64, ptr }, ptr %l77, !tbaa !27
  store { i64, ptr } %t18, ptr %l73, !tbaa !27
  br label %bb6
bb3:
  br label %bb4
bb4:
  %t19 = load ptr, ptr %l0, !tbaa !29
  %t20 = load { i64, ptr }, ptr @G_2ecompiler_2feval_2eWhyNoBody, !tbaa !27
  %t21 = load ptr, ptr @__olang_prog_scope
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2erefuse(ptr %v0, ptr %t21, ptr %t19, { i64, ptr } %t20)
  br label %bb5
bb5:
  call void @__olang_scope_close(ptr %s0)
  store i1 false, ptr %rv
  br label %ret
bb6:
  %t25 = load { i64, ptr }, ptr %l73, !tbaa !27
  store { i64, ptr } %t25, ptr %l8, !tbaa !27
  %t26 = load ptr, ptr %l0, !tbaa !29
  %t28 = getelementptr %"compiler/eval:Machine", ptr %t26, i32 0, i32 0
  %t29 = load ptr, ptr %t28, !tbaa !29
  store ptr %t29, ptr %l9, !tbaa !29
  %t31 = load ptr, ptr %l9, !tbaa !29
  store ptr %t31, ptr %l84, !tbaa !29
  %t32 = load ptr, ptr %l9, !tbaa !29
  %t33 = load i32, ptr %l3, !tbaa !23
  %t36 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParams(ptr %v0, ptr %t32, i32 %t33)
  store i32 %t36, ptr %l87
  br label %bb7
bb7:
  %t37 = load ptr, ptr %l84, !tbaa !29
  %t38 = load i32, ptr %l87, !tbaa !23
  %t39 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t37, i32 %t38)
  store { i64, ptr } %t39, ptr %l88
  br label %bb8
bb8:
  %t40 = load { i64, ptr }, ptr %l88, !tbaa !27
  store { i64, ptr } %t40, ptr %l10, !tbaa !27
  %t41 = load ptr, ptr %l9, !tbaa !29
  %t42 = load i32, ptr %l3, !tbaa !23
  %t45 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eResult(ptr %v0, ptr %t41, i32 %t42)
  store i32 %t45, ptr %l91
  br label %bb9
bb9:
  %t46 = load i32, ptr %l91, !tbaa !23
  store i32 %t46, ptr %l11, !tbaa !23
  %t47 = load ptr, ptr %l0, !tbaa !29
  %t49 = getelementptr %"compiler/eval:Machine", ptr %t47, i32 0, i32 1
  %t50 = load i32, ptr %t49, !range !{i32 0, i32 2}
  %t52 = trunc i64 0 to i32
  %t53 = icmp eq i32 %t50, %t52
  br i1 %t53, label %bb10, label %bb11
bb10:
  %t55 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t56 = load { i64, ptr }, ptr %l10, !tbaa !27
  %t58 = extractvalue { i64, ptr } %t56, 0
  %t61 = call i1 @compiler_2ftyped_2eMathExtern(ptr %v0, { i64, ptr } %t55, i64 %t58)
  store i1 %t61, ptr %l99
  br label %bb12
bb11:
  store i1 false, ptr %l95, !tbaa !21
  br label %bb13
bb12:
  %t62 = load i1, ptr %l99, !tbaa !21
  %t63 = xor i1 %t62, true
  store i1 %t63, ptr %l95, !tbaa !21
  br label %bb13
bb13:
  %t65 = load i1, ptr %l95, !tbaa !21
  br i1 %t65, label %bb14, label %bb15
bb14:
  %t66 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t68 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %v0, ptr %s0, { i64, ptr } %t66, { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d0, i32 0, i32 1) })
  store i1 %t68, ptr %l103
  br label %bb16
bb15:
  store i1 false, ptr %l101, !tbaa !21
  br label %bb17
bb16:
  %t69 = load i1, ptr %l103, !tbaa !21
  %t70 = xor i1 %t69, true
  store i1 %t70, ptr %l101, !tbaa !21
  br label %bb17
bb17:
  %t72 = load i1, ptr %l101, !tbaa !21
  br i1 %t72, label %bb18, label %bb19
bb18:
  %t73 = load ptr, ptr %l0, !tbaa !29
  %t74 = load { i64, ptr }, ptr @G_2ecompiler_2feval_2eWhyExtern, !tbaa !27
  %t75 = load ptr, ptr @__olang_prog_scope
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2erefuse(ptr %v0, ptr %t75, ptr %t73, { i64, ptr } %t74)
  br label %bb20
bb19:
  br label %bb21
bb20:
  call void @__olang_scope_close(ptr %s0)
  store i1 false, ptr %rv
  br label %ret
bb21:
  %t79 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t81 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %v0, ptr %s0, { i64, ptr } %t79, { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d1, i32 0, i32 1) })
  store i1 %t81, ptr %l109
  br label %bb22
bb22:
  %t82 = load i1, ptr %l109, !tbaa !21
  br i1 %t82, label %bb23, label %bb24
bb23:
  %t83 = load ptr, ptr %l0, !tbaa !29
  %t84 = load i64, ptr %l1, !tbaa !24
  %t85 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t86 = load %"compiler/mir:Range", ptr %l4
  %t87 = load i32, ptr %l3, !tbaa !23
  %t88 = load %"compiler/eval:Ptr", ptr %l5
  %t89 = load i1, ptr %l6, !tbaa !21
  %t97 = call i1 @compiler_2feval_2ecompiler_2feval_3aMachine_2eruntimeFn(ptr %v0, ptr %v0, ptr %t83, i64 %t84, { i64, ptr } %t85, %"compiler/mir:Range" %t86, i32 %t87, %"compiler/eval:Ptr" %t88, i1 %t89)
  store i1 %t97, ptr %l117
  br label %bb25
bb24:
  br label %bb26
bb25:
  call void @__olang_scope_close(ptr %s0)
  %t98 = load i1, ptr %l117, !tbaa !21
  store i1 %t98, ptr %rv
  br label %ret
bb26:
  %t99 = load ptr, ptr %l0, !tbaa !29
  %t101 = getelementptr %"compiler/eval:Machine", ptr %t99, i32 0, i32 1
  %t102 = load i32, ptr %t101, !range !{i32 0, i32 2}
  %t104 = trunc i64 1 to i32
  %t105 = icmp eq i32 %t102, %t104
  br i1 %t105, label %bb27, label %bb28
bb27:
  %t107 = load ptr, ptr %l0, !tbaa !29
  %t108 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t111 = call i1 @compiler_2feval_2ecompiler_2feval_3aMachine_2ewaitsForTask(ptr %v0, ptr %v0, ptr %t107, { i64, ptr } %t108)
  store i1 %t111, ptr %l124
  br label %bb29
bb28:
  store i1 false, ptr %l121, !tbaa !21
  br label %bb30
bb29:
  %t112 = load i1, ptr %l124, !tbaa !21
  store i1 %t112, ptr %l121, !tbaa !21
  br label %bb30
bb30:
  %t113 = load i1, ptr %l121, !tbaa !21
  br i1 %t113, label %bb31, label %bb32
bb31:
  call void @__olang_scope_close(ptr %s0)
  store i1 false, ptr %rv
  br label %ret
bb32:
  br label %bb33
bb33:
  %t115 = load ptr, ptr %l0, !tbaa !29
  %t116 = load i32, ptr %l11, !tbaa !23
  %t119 = call i1 @compiler_2feval_2ecompiler_2feval_3aMachine_2eforeignRef(ptr %v0, ptr %t115, i32 %t116)
  store i1 %t119, ptr %l128
  br label %bb34
bb34:
  %t120 = load i1, ptr %l128, !tbaa !21
  store i1 %t120, ptr %l12, !tbaa !21
  %t121 = load ptr, ptr %l0, !tbaa !29
  %t122 = load i32, ptr %l11, !tbaa !23
  %t125 = call i1 @compiler_2feval_2ecompiler_2feval_3aMachine_2effiScalar(ptr %v0, ptr %t121, i32 %t122, i1 true)
  store i1 %t125, ptr %l131
  br label %bb35
bb35:
  %t126 = load i1, ptr %l131, !tbaa !21
  %t127 = xor i1 %t126, true
  br i1 %t127, label %bb36, label %bb37
bb36:
  %t129 = load i1, ptr %l12, !tbaa !21
  %t131 = xor i1 %t129, true
  store i1 %t131, ptr %l133, !tbaa !21
  br label %bb38
bb37:
  store i1 false, ptr %l133, !tbaa !21
  br label %bb38
bb38:
  %t133 = load i1, ptr %l133, !tbaa !21
  br i1 %t133, label %bb39, label %bb40
bb39:
  %t134 = load ptr, ptr %l0, !tbaa !29
  %t135 = load { i64, ptr }, ptr @G_2ecompiler_2feval_2eWhyFfiPass, !tbaa !27
  %t136 = load ptr, ptr @__olang_prog_scope
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2erefuse(ptr %v0, ptr %t136, ptr %t134, { i64, ptr } %t135)
  br label %bb41
bb40:
  br label %bb42
bb41:
  call void @__olang_scope_close(ptr %s0)
  store i1 false, ptr %rv
  br label %ret
bb42:
  %t140 = getelementptr %"compiler/mir:Range", ptr %l4, i32 0, i32 1
  %t141 = load i32, ptr %t140, !tbaa !23
  %t143 = sext i32 %t141 to i64
  store i64 %t143, ptr %l13, !tbaa !24
  %t145 = load i64, ptr %l13, !tbaa !24
  store i64 %t145, ptr %l141, !tbaa !24
  %t146 = load i64, ptr %l141, !tbaa !24
  %t147 = icmp sge i64 %t146, 0
  br i1 %t147, label %bb43, label %bb44
bb43:
  %t149 = load i64, ptr %l141, !tbaa !24
  %t150 = mul i64 %t149, 1
  %t151 = call ptr @__olang_scope_alloc_zeroed(ptr %s0, i64 %t150)
  %t152 = insertvalue { i64, ptr } undef, i64 %t149, 0
  %t153 = insertvalue { i64, ptr } %t152, ptr %t151, 1
  store { i64, ptr } %t153, ptr %l14, !tbaa !27
  %t155 = load i64, ptr %l13, !tbaa !24
  store i64 %t155, ptr %l144, !tbaa !24
  store %"compiler/eval:Ptr" zeroinitializer, ptr %l145
  %t156 = load i64, ptr %l144, !tbaa !24
  %t157 = icmp sgt i64 %t156, 0
  br i1 %t157, label %bb45, label %bb46
bb44:
  call void @__olang_check_failed(ptr @olang_loc_8455ed81fb66a668_e2c955a612231684)
  unreachable
bb45:
  %t159 = call %"compiler/eval:Ptr" @compiler_2feval_3aPtr_2ector(ptr %s0, i64 0, i64 0)
  store %"compiler/eval:Ptr" %t159, ptr %l147
  br label %bb47
bb46:
  %t160 = load i64, ptr %l144, !tbaa !24
  %t161 = icmp sge i64 %t160, 0
  br i1 %t161, label %bb48, label %bb49
bb47:
  %t163 = load %"compiler/eval:Ptr", ptr %l147
  store %"compiler/eval:Ptr" %t163, ptr %l145
  br label %bb46
bb48:
  %t164 = load i64, ptr %l144, !tbaa !24
  %t165 = icmp sle i64 %t164, 576460752303423487
  br i1 %t165, label %bb50, label %bb51
bb49:
  call void @__olang_check_failed(ptr @olang_loc_e6f2fd943c115655_f5638f66c9629791)
  unreachable
bb50:
  %t167 = load i64, ptr %l144, !tbaa !24
  %t168 = mul i64 %t167, 16
  %t169 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t168)
  %t170 = load %"compiler/eval:Ptr", ptr %l145
  store i64 0, ptr %t171
  br label %fill.172
fill.172:
  %t175 = load i64, ptr %t171
  %t176 = icmp slt i64 %t175, %t167
  br i1 %t176, label %fillb.173, label %filld.174
fillb.173:
  %t177 = getelementptr %"compiler/eval:Ptr", ptr %t169, i64 %t175
  store %"compiler/eval:Ptr" %t170, ptr %t177
  %t178 = add i64 %t175, 1
  store i64 %t178, ptr %t171
  br label %fill.172
filld.174:
  %t179 = insertvalue { i64, ptr } undef, i64 %t167, 0
  %t180 = insertvalue { i64, ptr } %t179, ptr %t169, 1
  store { i64, ptr } %t180, ptr %l15, !tbaa !27
  %t182 = load i64, ptr %l13, !tbaa !24
  store i64 %t182, ptr %l151, !tbaa !24
  %t183 = load i64, ptr %l151, !tbaa !24
  %t184 = icmp sge i64 %t183, 0
  br i1 %t184, label %bb52, label %bb53
bb51:
  call void @__olang_check_failed(ptr @olang_loc_e6f2fd943c115655_f5638f66c9629791)
  unreachable
bb52:
  %t186 = load i64, ptr %l151, !tbaa !24
  %t187 = icmp sle i64 %t186, 1152921504606846975
  br i1 %t187, label %bb54, label %bb55
bb53:
  call void @__olang_check_failed(ptr @olang_loc_24365dba12301136_85ae2e45ea64b572)
  unreachable
bb54:
  %t189 = load i64, ptr %l151, !tbaa !24
  %t190 = mul i64 %t189, 8
  %t191 = call ptr @__olang_scope_alloc_zeroed(ptr %s0, i64 %t190)
  %t192 = insertvalue { i64, ptr } undef, i64 %t189, 0
  %t193 = insertvalue { i64, ptr } %t192, ptr %t191, 1
  store { i64, ptr } %t193, ptr %l16, !tbaa !27
  %t195 = load i64, ptr %l13, !tbaa !24
  store i64 %t195, ptr %l155, !tbaa !24
  %t196 = load i64, ptr %l155, !tbaa !24
  %t197 = icmp sge i64 %t196, 0
  br i1 %t197, label %bb56, label %bb57
bb55:
  call void @__olang_check_failed(ptr @olang_loc_24365dba12301136_85ae2e45ea64b572)
  unreachable
bb56:
  %t199 = load i64, ptr %l155, !tbaa !24
  %t200 = icmp sle i64 %t199, 1152921504606846975
  br i1 %t200, label %bb58, label %bb59
bb57:
  call void @__olang_check_failed(ptr @olang_loc_e79146937ca231cb_dd9a37031fe8e967)
  unreachable
bb58:
  %t202 = load i64, ptr %l155, !tbaa !24
  %t203 = mul i64 %t202, 8
  %t204 = call ptr @__olang_scope_alloc_zeroed(ptr %s0, i64 %t203)
  %t205 = insertvalue { i64, ptr } undef, i64 %t202, 0
  %t206 = insertvalue { i64, ptr } %t205, ptr %t204, 1
  store { i64, ptr } %t206, ptr %l17, !tbaa !27
  store i64 0, ptr %l18, !tbaa !24
  store i64 0, ptr %l19, !tbaa !24
  %t208 = load i64, ptr %l13, !tbaa !24
  store i64 %t208, ptr %l20, !tbaa !24
  store i64 1, ptr %l21, !tbaa !24
  %t210 = load i64, ptr %l20, !tbaa !24
  %t211 = load i64, ptr %l19, !tbaa !24
  %t214 = icmp sgt i64 %t210, %t211
  br i1 %t214, label %bb60, label %bb61
bb59:
  call void @__olang_check_failed(ptr @olang_loc_e79146937ca231cb_dd9a37031fe8e967)
  unreachable
bb60:
  %t216 = load i64, ptr %l21, !tbaa !24
  %t218 = icmp sgt i64 %t216, 0
  br i1 %t218, label %bb62, label %bb63
bb61:
  store i64 0, ptr %l163, !tbaa !24
  br label %bb65
bb62:
  %t220 = load i64, ptr %l20, !tbaa !24
  %t221 = load i64, ptr %l19, !tbaa !24
  %t224 = sub i64 %t220, %t221
  %t225 = load i64, ptr %l21, !tbaa !24
  %t228 = add i64 %t224, %t225
  %t230 = sub i64 %t228, 1
  %t231 = load i64, ptr %l21, !tbaa !24
  %t234 = sdiv i64 %t230, %t231
  store i64 %t234, ptr %l166, !tbaa !24
  br label %bb64
bb63:
  store i64 0, ptr %l166, !tbaa !24
  br label %bb64
bb64:
  %t236 = load i64, ptr %l166, !tbaa !24
  store i64 %t236, ptr %l163, !tbaa !24
  br label %bb65
bb65:
  %t237 = load i64, ptr %l163, !tbaa !24
  store i64 %t237, ptr %l22, !tbaa !24
  store i64 0, ptr %l23, !tbaa !24
  br label %bb66
bb66:
  %t238 = load i64, ptr %l23, !tbaa !24
  %t239 = load i64, ptr %l22, !tbaa !24
  %t242 = icmp slt i64 %t238, %t239
  %t244 = xor i1 %t242, true
  br i1 %t244, label %bb67, label %bb68
bb67:
  br label %bb145
bb68:
  br label %bb69
bb69:
  %t246 = load i64, ptr %l19, !tbaa !24
  %t247 = load i64, ptr %l23, !tbaa !24
  %t248 = load i64, ptr %l21, !tbaa !24
  %t251 = mul i64 %t247, %t248
  %t254 = add i64 %t246, %t251
  store i64 %t254, ptr %l24, !tbaa !24
  %t256 = load ptr, ptr %l7, !tbaa !29
  %t258 = getelementptr %"compiler/mir:Fn", ptr %t256, i32 0, i32 11
  %t259 = getelementptr %"compiler/mir:Range", ptr %l4, i32 0, i32 0
  %t260 = load i32, ptr %t259, !tbaa !23
  %t262 = sext i32 %t260 to i64
  %t263 = load i64, ptr %l24, !tbaa !24
  %t266 = add i64 %t262, %t263
  %t269 = call { i64, [4 x i64] } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aOperand_3e_2eAt_3ccompiler_2fmir_3aOperand_3e(ptr %v0, ptr %t258, i64 %t266)
  store { i64, [4 x i64] } %t269, ptr %l190
  br label %bb70
bb70:
  %t270 = load { i64, [4 x i64] }, ptr %l190
  store { i64, [4 x i64] } %t270, ptr %l25
  %t271 = load i64, ptr %l24, !tbaa !24
  %t272 = load { i64, ptr }, ptr %l10, !tbaa !27
  %t274 = extractvalue { i64, ptr } %t272, 0
  %t277 = icmp slt i64 %t271, %t274
  br i1 %t277, label %bb71, label %bb72
bb71:
  %t279 = load { i64, ptr }, ptr %l10, !tbaa !27
  store { i64, ptr } %t279, ptr %l196, !tbaa !27
  %t280 = load i64, ptr %l24, !tbaa !24
  %t282 = getelementptr { i64, ptr }, ptr %l196, i32 0, i32 1
  %t283 = load ptr, ptr %t282, !tbaa !27
  %t284 = getelementptr i32, ptr %t283, i64 %t280
  %t285 = load i32, ptr %t284, !tbaa !33
  store i32 %t285, ptr %l195, !tbaa !23
  br label %bb74
bb72:
  %t287 = load ptr, ptr %l0, !tbaa !29
  %t288 = load i64, ptr %l1, !tbaa !24
  %t289 = load { i64, [4 x i64] }, ptr %l25
  %t293 = call i32 @compiler_2feval_2ecompiler_2feval_3aMachine_2eopType(ptr %v0, ptr %t287, i64 %t288, { i64, [4 x i64] } %t289)
  store i32 %t293, ptr %l202
  br label %bb73
bb73:
  %t294 = load i32, ptr %l202, !tbaa !23
  store i32 %t294, ptr %l195, !tbaa !23
  br label %bb74
bb74:
  %t295 = load i32, ptr %l195, !tbaa !23
  store i32 %t295, ptr %l26, !tbaa !23
  %t296 = load i64, ptr %l24, !tbaa !24
  %t298 = getelementptr { i64, ptr }, ptr %l16, i32 0, i32 1
  %t299 = load ptr, ptr %t298, !tbaa !27
  %t300 = getelementptr i64, ptr %t299, i64 %t296
  store i64 -1, ptr %t300, !tbaa !34
  %t301 = load ptr, ptr %l0, !tbaa !29
  %t302 = load i32, ptr %l26, !tbaa !23
  %t305 = call i1 @compiler_2feval_2ecompiler_2feval_3aMachine_2effiScalar(ptr %v0, ptr %t301, i32 %t302, i1 false)
  store i1 %t305, ptr %l206
  br label %bb75
bb75:
  %t306 = load i1, ptr %l206, !tbaa !21
  br i1 %t306, label %bb76, label %bb77
bb76:
  %t307 = load i64, ptr %l24, !tbaa !24
  store i64 %t307, ptr %l207, !tbaa !24
  %t308 = load ptr, ptr %l0, !tbaa !29
  %t309 = load i32, ptr %l26, !tbaa !23
  %t312 = call i32 @compiler_2feval_2ecompiler_2feval_3aMachine_2effiKind(ptr %v0, ptr %t308, i32 %t309)
  store i32 %t312, ptr %l210
  br label %bb78
bb77:
  br label %bb86
bb78:
  %t313 = load i32, ptr %l210, !range !{i32 0, i32 12}
  %t314 = call i8 @std_2fffi_2eCode(i32 %t313)
  store i8 %t314, ptr %l211
  br label %bb79
bb79:
  %t315 = load i8, ptr %l211, !tbaa !22
  %t316 = load i64, ptr %l207, !tbaa !24
  %t317 = getelementptr { i64, ptr }, ptr %l14, i32 0, i32 1
  %t318 = load ptr, ptr %t317, !tbaa !27
  %t319 = getelementptr i8, ptr %t318, i64 %t316
  store i8 %t315, ptr %t319, !tbaa !32
  %t320 = load ptr, ptr %l0, !tbaa !29
  %t321 = load i64, ptr %l1, !tbaa !24
  %t322 = load { i64, [4 x i64] }, ptr %l25
  %t326 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2escalar(ptr %v0, ptr %t320, i64 %t321, { i64, [4 x i64] } %t322)
  store i64 %t326, ptr %l215
  br label %bb80
bb80:
  %t327 = load i64, ptr %l215, !tbaa !24
  store i64 %t327, ptr %l27, !tbaa !65
  %t329 = load ptr, ptr %l0, !tbaa !29
  %t330 = load i32, ptr %l26, !tbaa !23
  %t333 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2eshape(ptr %v0, ptr %t329, i32 %t330)
  store i64 %t333, ptr %l219
  br label %bb81
bb81:
  %t334 = load i64, ptr @G_2ecompiler_2feval_2evInt, !tbaa !24
  %t335 = load i64, ptr %l219, !tbaa !24
  %t337 = icmp eq i64 %t335, %t334
  br i1 %t337, label %bb82, label %bb83
bb82:
  %t339 = load ptr, ptr %l0, !tbaa !29
  %t340 = load i64, ptr %l27, !tbaa !65
  %t342 = load i32, ptr %l26, !tbaa !23
  %t346 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2eintValue(ptr %v0, ptr %t339, i64 %t340, i32 %t342)
  store i64 %t346, ptr %l226
  br label %bb84
bb83:
  br label %bb85
bb84:
  %t347 = load i64, ptr %l226, !tbaa !24
  store i64 %t347, ptr %l27, !tbaa !65
  br label %bb85
bb85:
  %t349 = load i64, ptr %l24, !tbaa !24
  %t350 = load i64, ptr %l27, !tbaa !65
  %t353 = getelementptr { i64, ptr }, ptr %l17, i32 0, i32 1
  %t354 = load ptr, ptr %t353, !tbaa !27
  %t355 = getelementptr i64, ptr %t354, i64 %t349
  store i64 %t350, ptr %t355, !tbaa !85
  %t356 = load i64, ptr %l18, !tbaa !24
  %t358 = add i64 %t356, 1
  store i64 %t358, ptr %l18, !tbaa !24
  br label %bb144
bb86:
  %t360 = load ptr, ptr %l0, !tbaa !29
  %t361 = load i64, ptr %l1, !tbaa !24
  %t362 = load { i64, [4 x i64] }, ptr %l25
  %t366 = call i32 @compiler_2feval_2ecompiler_2feval_3aMachine_2eopType(ptr %v0, ptr %t360, i64 %t361, { i64, [4 x i64] } %t362)
  store i32 %t366, ptr %l235
  br label %bb87
bb87:
  %t367 = load i32, ptr %l235, !tbaa !23
  store i32 %t367, ptr %l28, !tbaa !23
  %t368 = load ptr, ptr %l0, !tbaa !29
  %t369 = load i32, ptr %l28, !tbaa !23
  %t372 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2eshape(ptr %v0, ptr %t368, i32 %t369)
  store i64 %t372, ptr %l238
  br label %bb88
bb88:
  %t373 = load i64, ptr %l238, !tbaa !24
  store i64 %t373, ptr %l29, !tbaa !24
  %t374 = load i64, ptr %l29, !tbaa !24
  %t375 = load i64, ptr @G_2ecompiler_2feval_2evPair, !tbaa !24
  %t378 = icmp eq i64 %t374, %t375
  br i1 %t378, label %bb89, label %bb90
bb89:
  store i1 true, ptr %l242, !tbaa !21
  br label %bb91
bb90:
  %t380 = load i64, ptr %l29, !tbaa !24
  %t381 = load i64, ptr @G_2ecompiler_2feval_2evFixed, !tbaa !24
  %t384 = icmp eq i64 %t380, %t381
  store i1 %t384, ptr %l242, !tbaa !21
  br label %bb91
bb91:
  %t386 = load i1, ptr %l242, !tbaa !21
  br i1 %t386, label %bb92, label %bb93
bb92:
  %t387 = load ptr, ptr %l0, !tbaa !29
  store ptr %t387, ptr %l246, !tbaa !29
  %t388 = load ptr, ptr %l0, !tbaa !29
  %t389 = load i64, ptr %l1, !tbaa !24
  %t390 = load { i64, [4 x i64] }, ptr %l25
  %t394 = call %"compiler/eval:Ptr" @compiler_2feval_2ecompiler_2feval_3aMachine_2eaddr(ptr %v0, ptr %t388, i64 %t389, { i64, [4 x i64] } %t390, i64 1)
  store %"compiler/eval:Ptr" %t394, ptr %l250
  br label %bb94
bb93:
  br label %bb115
bb94:
  %t395 = load i32, ptr %l28, !tbaa !23
  %t396 = load ptr, ptr %l246, !tbaa !29
  %t397 = load %"compiler/eval:Ptr", ptr %l250
  %t399 = call { %"compiler/eval:Ptr", i64 } @compiler_2feval_2ecompiler_2feval_3aMachine_2earrayView(ptr %v0, ptr %t396, %"compiler/eval:Ptr" %t397, i32 %t395)
  store { %"compiler/eval:Ptr", i64 } %t399, ptr %l252
  br label %bb95
bb95:
  %t400 = load { %"compiler/eval:Ptr", i64 }, ptr %l252
  store { %"compiler/eval:Ptr", i64 } %t400, ptr %l30
  %t401 = getelementptr { %"compiler/eval:Ptr", i64 }, ptr %l30, i32 0, i32 0
  %t402 = load %"compiler/eval:Ptr", ptr %t401
  store %"compiler/eval:Ptr" %t402, ptr %l31
  %t404 = getelementptr { %"compiler/eval:Ptr", i64 }, ptr %l30, i32 0, i32 1
  %t405 = load i64, ptr %t404, !tbaa !24
  store i64 %t405, ptr %l32, !tbaa !24
  %t407 = load ptr, ptr %l0, !tbaa !29
  %t408 = load i32, ptr %l28, !tbaa !23
  %t411 = call i32 @compiler_2feval_2ecompiler_2feval_3aMachine_2eelemOf(ptr %v0, ptr %t407, i32 %t408)
  store i32 %t411, ptr %l257
  br label %bb96
bb96:
  %t412 = load i32, ptr %l257, !tbaa !23
  store i32 %t412, ptr %l33, !tbaa !23
  %t413 = getelementptr %"compiler/eval:Ptr", ptr %l31, i32 0, i32 0
  %t414 = load i64, ptr %t413, !tbaa !24
  %t416 = icmp eq i64 %t414, 0
  br i1 %t416, label %bb97, label %bb98
bb97:
  %t418 = load i64, ptr %l24, !tbaa !24
  store i64 %t418, ptr %l260, !tbaa !24
  %t420 = call i8 @std_2fffi_2eCode(i32 7)
  store i8 %t420, ptr %l262
  br label %bb99
bb98:
  br label %bb100
bb99:
  %t421 = load i8, ptr %l262, !tbaa !22
  %t422 = load i64, ptr %l260, !tbaa !24
  %t423 = getelementptr { i64, ptr }, ptr %l14, i32 0, i32 1
  %t424 = load ptr, ptr %t423, !tbaa !27
  %t425 = getelementptr i8, ptr %t424, i64 %t422
  store i8 %t421, ptr %t425, !tbaa !32
  %t426 = load i64, ptr %l18, !tbaa !24
  %t428 = add i64 %t426, 1
  store i64 %t428, ptr %l18, !tbaa !24
  br label %bb144
bb100:
  %t430 = load ptr, ptr %l0, !tbaa !29
  %t431 = load i32, ptr %l33, !tbaa !23
  %t434 = call i1 @compiler_2feval_2ecompiler_2feval_3aMachine_2effiScalar(ptr %v0, ptr %t430, i32 %t431, i1 false)
  store i1 %t434, ptr %l267
  br label %bb101
bb101:
  %t435 = load i1, ptr %l267, !tbaa !21
  br i1 %t435, label %bb102, label %bb103
bb102:
  %t436 = load i64, ptr %l24, !tbaa !24
  store i64 %t436, ptr %l268, !tbaa !24
  %t437 = load ptr, ptr %l0, !tbaa !29
  %t438 = load i32, ptr %l33, !tbaa !23
  %t441 = call i32 @compiler_2feval_2ecompiler_2feval_3aMachine_2effiKind(ptr %v0, ptr %t437, i32 %t438)
  store i32 %t441, ptr %l271
  br label %bb104
bb103:
  %t442 = load ptr, ptr %l0, !tbaa !29
  %t443 = load i32, ptr %l33, !tbaa !23
  %t446 = call i1 @compiler_2feval_2ecompiler_2feval_3aMachine_2enumbersOnly(ptr %v0, ptr %t442, i32 %t443)
  store i1 %t446, ptr %l275
  br label %bb106
bb104:
  %t447 = load i32, ptr %l271, !range !{i32 0, i32 12}
  %t448 = call i8 @std_2fffi_2eArrayOf(i32 %t447)
  store i8 %t448, ptr %l272
  br label %bb105
bb105:
  %t449 = load i8, ptr %l272, !tbaa !22
  %t450 = load i64, ptr %l268, !tbaa !24
  %t451 = getelementptr { i64, ptr }, ptr %l14, i32 0, i32 1
  %t452 = load ptr, ptr %t451, !tbaa !27
  %t453 = getelementptr i8, ptr %t452, i64 %t450
  store i8 %t449, ptr %t453, !tbaa !32
  br label %bb112
bb106:
  %t454 = load i1, ptr %l275, !tbaa !21
  br i1 %t454, label %bb107, label %bb108
bb107:
  %t455 = load i64, ptr %l24, !tbaa !24
  store i64 %t455, ptr %l276, !tbaa !24
  %t457 = call i8 @std_2fffi_2eArrayOf(i32 4)
  store i8 %t457, ptr %l278
  br label %bb109
bb108:
  %t458 = load ptr, ptr %l0, !tbaa !29
  %t459 = load { i64, ptr }, ptr @G_2ecompiler_2feval_2eWhyFfiPass, !tbaa !27
  %t460 = load ptr, ptr @__olang_prog_scope
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2erefuse(ptr %v0, ptr %t460, ptr %t458, { i64, ptr } %t459)
  br label %bb110
bb109:
  %t463 = load i8, ptr %l278, !tbaa !22
  %t464 = load i64, ptr %l276, !tbaa !24
  %t465 = getelementptr { i64, ptr }, ptr %l14, i32 0, i32 1
  %t466 = load ptr, ptr %t465, !tbaa !27
  %t467 = getelementptr i8, ptr %t466, i64 %t464
  store i8 %t463, ptr %t467, !tbaa !32
  br label %bb111
bb110:
  call void @__olang_scope_close(ptr %s0)
  store i1 false, ptr %rv
  br label %ret
bb111:
  br label %bb112
bb112:
  %t469 = load i64, ptr %l24, !tbaa !24
  %t470 = load %"compiler/eval:Ptr", ptr %l31
  %t473 = getelementptr { i64, ptr }, ptr %l15, i32 0, i32 1
  %t474 = load ptr, ptr %t473, !tbaa !27
  %t475 = getelementptr %"compiler/eval:Ptr", ptr %t474, i64 %t469
  store %"compiler/eval:Ptr" %t470, ptr %t475
  %t476 = load i64, ptr %l24, !tbaa !24
  store i64 %t476, ptr %l284, !tbaa !24
  %t477 = load i64, ptr %l32, !tbaa !24
  store i64 %t477, ptr %l285, !tbaa !24
  %t478 = load ptr, ptr %l0, !tbaa !29
  %t479 = load i32, ptr %l33, !tbaa !23
  %t482 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2esize(ptr %v0, ptr %t478, i32 %t479)
  store i64 %t482, ptr %l288
  br label %bb113
bb113:
  %t483 = load i64, ptr %l285, !tbaa !24
  %t484 = load i64, ptr %l288, !tbaa !24
  %t485 = mul i64 %t483, %t484
  %t487 = load i64, ptr %l284, !tbaa !24
  %t488 = getelementptr { i64, ptr }, ptr %l16, i32 0, i32 1
  %t489 = load ptr, ptr %t488, !tbaa !27
  %t490 = getelementptr i64, ptr %t489, i64 %t487
  store i64 %t485, ptr %t490, !tbaa !34
  %t491 = load i64, ptr %l18, !tbaa !24
  store i64 %t491, ptr %l290, !tbaa !24
  %t492 = load i64, ptr %l24, !tbaa !24
  %t494 = getelementptr { i64, ptr }, ptr %l16, i32 0, i32 1
  %t495 = load ptr, ptr %t494, !tbaa !27
  %t496 = getelementptr i64, ptr %t495, i64 %t492
  %t497 = load i64, ptr %t496, !tbaa !34
  %t499 = call i64 @std_2fffi_2eWordsFor(i64 %t497)
  store i64 %t499, ptr %l293
  br label %bb114
bb114:
  %t500 = load i64, ptr %l293, !tbaa !24
  %t501 = add i64 1, %t500
  %t502 = load i64, ptr %l290, !tbaa !24
  %t504 = add i64 %t502, %t501
  store i64 %t504, ptr %l18, !tbaa !24
  br label %bb144
bb115:
  %t506 = load i64, ptr %l29, !tbaa !24
  %t507 = load i64, ptr @G_2ecompiler_2feval_2evPtr, !tbaa !24
  %t510 = icmp eq i64 %t506, %t507
  br i1 %t510, label %bb116, label %bb117
bb116:
  %t512 = load ptr, ptr %l0, !tbaa !29
  store ptr %t512, ptr %l299, !tbaa !29
  %t513 = load ptr, ptr %l0, !tbaa !29
  %t514 = load i64, ptr %l1, !tbaa !24
  %t515 = load { i64, [4 x i64] }, ptr %l25
  %t519 = call %"compiler/eval:Ptr" @compiler_2feval_2ecompiler_2feval_3aMachine_2eaddr(ptr %v0, ptr %t513, i64 %t514, { i64, [4 x i64] } %t515, i64 1)
  store %"compiler/eval:Ptr" %t519, ptr %l303
  br label %bb118
bb117:
  br label %bb142
bb118:
  %t520 = load ptr, ptr %l299, !tbaa !29
  %t521 = load %"compiler/eval:Ptr", ptr %l303
  %t522 = call %"compiler/eval:Ptr" @compiler_2feval_2ecompiler_2feval_3aMachine_2erdPtrOrBits(ptr %v0, ptr %t520, %"compiler/eval:Ptr" %t521)
  store %"compiler/eval:Ptr" %t522, ptr %l304
  br label %bb119
bb119:
  %t523 = load %"compiler/eval:Ptr", ptr %l304
  store %"compiler/eval:Ptr" %t523, ptr %l34
  %t524 = load i64, ptr %l24, !tbaa !24
  store i64 %t524, ptr %l305, !tbaa !24
  %t526 = call i8 @std_2fffi_2eCode(i32 7)
  store i8 %t526, ptr %l307
  br label %bb120
bb120:
  %t527 = load i8, ptr %l307, !tbaa !22
  %t528 = load i64, ptr %l305, !tbaa !24
  %t529 = getelementptr { i64, ptr }, ptr %l14, i32 0, i32 1
  %t530 = load ptr, ptr %t529, !tbaa !27
  %t531 = getelementptr i8, ptr %t530, i64 %t528
  store i8 %t527, ptr %t531, !tbaa !32
  %t532 = getelementptr %"compiler/eval:Ptr", ptr %l34, i32 0, i32 0
  %t533 = load i64, ptr %t532, !tbaa !24
  %t535 = icmp eq i64 %t533, 0
  br i1 %t535, label %bb121, label %bb122
bb121:
  %t537 = getelementptr %"compiler/eval:Ptr", ptr %l34, i32 0, i32 1
  %t538 = load i64, ptr %t537, !tbaa !24
  %t540 = icmp eq i64 %t538, 0
  store i1 %t540, ptr %l310, !tbaa !21
  br label %bb123
bb122:
  store i1 false, ptr %l310, !tbaa !21
  br label %bb123
bb123:
  %t542 = load i1, ptr %l310, !tbaa !21
  br i1 %t542, label %bb124, label %bb125
bb124:
  %t543 = load i64, ptr %l24, !tbaa !24
  %t545 = getelementptr { i64, ptr }, ptr %l17, i32 0, i32 1
  %t546 = load ptr, ptr %t545, !tbaa !27
  %t547 = getelementptr i64, ptr %t546, i64 %t543
  store i64 0, ptr %t547, !tbaa !85
  %t548 = load i64, ptr %l18, !tbaa !24
  %t550 = add i64 %t548, 1
  store i64 %t550, ptr %l18, !tbaa !24
  br label %bb144
bb125:
  br label %bb126
bb126:
  %t552 = getelementptr %"compiler/eval:Ptr", ptr %l34, i32 0, i32 0
  %t553 = load i64, ptr %t552, !tbaa !24
  %t554 = load i64, ptr @G_2ecompiler_2feval_2eForeignId, !tbaa !24
  %t557 = icmp eq i64 %t553, %t554
  br i1 %t557, label %bb127, label %bb128
bb127:
  %t559 = load i64, ptr %l24, !tbaa !24
  %t560 = getelementptr %"compiler/eval:Ptr", ptr %l34, i32 0, i32 1
  %t561 = load i64, ptr %t560, !tbaa !24
  %t565 = getelementptr { i64, ptr }, ptr %l17, i32 0, i32 1
  %t566 = load ptr, ptr %t565, !tbaa !27
  %t567 = getelementptr i64, ptr %t566, i64 %t559
  store i64 %t561, ptr %t567, !tbaa !85
  %t568 = load i64, ptr %l18, !tbaa !24
  %t570 = add i64 %t568, 1
  store i64 %t570, ptr %l18, !tbaa !24
  br label %bb144
bb128:
  br label %bb129
bb129:
  %t572 = load ptr, ptr %l9, !tbaa !29
  store ptr %t572, ptr %l324, !tbaa !29
  %t573 = load ptr, ptr %l9, !tbaa !29
  %t574 = load i32, ptr %l28, !tbaa !23
  %t577 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %v0, ptr %t573, i32 %t574)
  store i32 %t577, ptr %l327
  br label %bb130
bb130:
  %t578 = load ptr, ptr %l324, !tbaa !29
  %t579 = load i32, ptr %l327, !tbaa !23
  %t580 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eReferent(ptr %v0, ptr %t578, i32 %t579)
  store i32 %t580, ptr %l328
  br label %bb131
bb131:
  %t581 = load i32, ptr %l328, !tbaa !23
  store i32 %t581, ptr %l35, !tbaa !23
  %t582 = getelementptr %"compiler/eval:Ptr", ptr %l34, i32 0, i32 0
  %t583 = load i64, ptr %t582, !tbaa !24
  %t585 = icmp ne i64 %t583, 0
  br i1 %t585, label %bb132, label %bb133
bb132:
  %t587 = load ptr, ptr %l0, !tbaa !29
  %t588 = load i32, ptr %l35, !tbaa !23
  %t591 = call i1 @compiler_2feval_2ecompiler_2feval_3aMachine_2enumbersOnly(ptr %v0, ptr %t587, i32 %t588)
  store i1 %t591, ptr %l334
  br label %bb134
bb133:
  store i1 false, ptr %l331, !tbaa !21
  br label %bb135
bb134:
  %t592 = load i1, ptr %l334, !tbaa !21
  store i1 %t592, ptr %l331, !tbaa !21
  br label %bb135
bb135:
  %t593 = load i1, ptr %l331, !tbaa !21
  br i1 %t593, label %bb136, label %bb137
bb136:
  %t594 = load i64, ptr %l24, !tbaa !24
  store i64 %t594, ptr %l335, !tbaa !24
  %t596 = call i8 @std_2fffi_2eArrayOf(i32 4)
  store i8 %t596, ptr %l337
  br label %bb138
bb137:
  br label %bb141
bb138:
  %t597 = load i8, ptr %l337, !tbaa !22
  %t598 = load i64, ptr %l335, !tbaa !24
  %t599 = getelementptr { i64, ptr }, ptr %l14, i32 0, i32 1
  %t600 = load ptr, ptr %t599, !tbaa !27
  %t601 = getelementptr i8, ptr %t600, i64 %t598
  store i8 %t597, ptr %t601, !tbaa !32
  %t602 = load i64, ptr %l24, !tbaa !24
  %t603 = load %"compiler/eval:Ptr", ptr %l34
  %t606 = getelementptr { i64, ptr }, ptr %l15, i32 0, i32 1
  %t607 = load ptr, ptr %t606, !tbaa !27
  %t608 = getelementptr %"compiler/eval:Ptr", ptr %t607, i64 %t602
  store %"compiler/eval:Ptr" %t603, ptr %t608
  %t609 = load i64, ptr %l24, !tbaa !24
  store i64 %t609, ptr %l340, !tbaa !24
  %t610 = load ptr, ptr %l0, !tbaa !29
  %t611 = load i32, ptr %l35, !tbaa !23
  %t614 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2esize(ptr %v0, ptr %t610, i32 %t611)
  store i64 %t614, ptr %l343
  br label %bb139
bb139:
  %t615 = load i64, ptr %l343, !tbaa !24
  %t616 = load i64, ptr %l340, !tbaa !24
  %t617 = getelementptr { i64, ptr }, ptr %l16, i32 0, i32 1
  %t618 = load ptr, ptr %t617, !tbaa !27
  %t619 = getelementptr i64, ptr %t618, i64 %t616
  store i64 %t615, ptr %t619, !tbaa !34
  %t620 = load i64, ptr %l18, !tbaa !24
  store i64 %t620, ptr %l344, !tbaa !24
  %t621 = load i64, ptr %l24, !tbaa !24
  %t623 = getelementptr { i64, ptr }, ptr %l16, i32 0, i32 1
  %t624 = load ptr, ptr %t623, !tbaa !27
  %t625 = getelementptr i64, ptr %t624, i64 %t621
  %t626 = load i64, ptr %t625, !tbaa !34
  %t628 = call i64 @std_2fffi_2eWordsFor(i64 %t626)
  store i64 %t628, ptr %l347
  br label %bb140
bb140:
  %t629 = load i64, ptr %l347, !tbaa !24
  %t630 = add i64 1, %t629
  %t631 = load i64, ptr %l344, !tbaa !24
  %t633 = add i64 %t631, %t630
  store i64 %t633, ptr %l18, !tbaa !24
  br label %bb144
bb141:
  br label %bb142
bb142:
  %t635 = load ptr, ptr %l0, !tbaa !29
  %t636 = load { i64, ptr }, ptr @G_2ecompiler_2feval_2eWhyFfiPass, !tbaa !27
  %t637 = load ptr, ptr @__olang_prog_scope
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2erefuse(ptr %v0, ptr %t637, ptr %t635, { i64, ptr } %t636)
  br label %bb143
bb143:
  call void @__olang_scope_close(ptr %s0)
  store i1 false, ptr %rv
  br label %ret
bb144:
  %t641 = load i64, ptr %l23, !tbaa !24
  %t643 = add i64 %t641, 1
  store i64 %t643, ptr %l23, !tbaa !24
  br label %bb66
bb145:
  %t645 = load ptr, ptr %l0, !tbaa !29
  %t647 = getelementptr %"compiler/eval:Machine", ptr %t645, i32 0, i32 19
  %t648 = load i1, ptr %t647, !tbaa !21
  br i1 %t648, label %bb146, label %bb147
bb146:
  call void @__olang_scope_close(ptr %s0)
  store i1 false, ptr %rv
  br label %ret
bb147:
  br label %bb148
bb148:
  %t651 = load i64, ptr %l18, !tbaa !24
  store i64 %t651, ptr %l358, !tbaa !24
  %t652 = load i64, ptr %l358, !tbaa !24
  %t653 = icmp sge i64 %t652, 0
  br i1 %t653, label %bb149, label %bb150
bb149:
  %t655 = load i64, ptr %l358, !tbaa !24
  %t656 = icmp sle i64 %t655, 1152921504606846975
  br i1 %t656, label %bb151, label %bb152
bb150:
  call void @__olang_check_failed(ptr @olang_loc_84b043302e365534_8c4896c766887f8)
  unreachable
bb151:
  %t658 = load i64, ptr %l358, !tbaa !24
  %t659 = mul i64 %t658, 8
  %t660 = call ptr @__olang_scope_alloc_zeroed(ptr %s0, i64 %t659)
  %t661 = insertvalue { i64, ptr } undef, i64 %t658, 0
  %t662 = insertvalue { i64, ptr } %t661, ptr %t660, 1
  store { i64, ptr } %t662, ptr %l36, !tbaa !27
  store i64 0, ptr %l37, !tbaa !24
  store i64 0, ptr %l38, !tbaa !24
  %t664 = load i64, ptr %l13, !tbaa !24
  store i64 %t664, ptr %l39, !tbaa !24
  store i64 1, ptr %l40, !tbaa !24
  %t666 = load i64, ptr %l39, !tbaa !24
  %t667 = load i64, ptr %l38, !tbaa !24
  %t670 = icmp sgt i64 %t666, %t667
  br i1 %t670, label %bb153, label %bb154
bb152:
  call void @__olang_check_failed(ptr @olang_loc_84b043302e365534_8c4896c766887f8)
  unreachable
bb153:
  %t672 = load i64, ptr %l40, !tbaa !24
  %t674 = icmp sgt i64 %t672, 0
  br i1 %t674, label %bb155, label %bb156
bb154:
  store i64 0, ptr %l366, !tbaa !24
  br label %bb158
bb155:
  %t676 = load i64, ptr %l39, !tbaa !24
  %t677 = load i64, ptr %l38, !tbaa !24
  %t680 = sub i64 %t676, %t677
  %t681 = load i64, ptr %l40, !tbaa !24
  %t684 = add i64 %t680, %t681
  %t686 = sub i64 %t684, 1
  %t687 = load i64, ptr %l40, !tbaa !24
  %t690 = sdiv i64 %t686, %t687
  store i64 %t690, ptr %l369, !tbaa !24
  br label %bb157
bb156:
  store i64 0, ptr %l369, !tbaa !24
  br label %bb157
bb157:
  %t692 = load i64, ptr %l369, !tbaa !24
  store i64 %t692, ptr %l366, !tbaa !24
  br label %bb158
bb158:
  %t693 = load i64, ptr %l366, !tbaa !24
  store i64 %t693, ptr %l41, !tbaa !24
  store i64 0, ptr %l42, !tbaa !24
  br label %bb159
bb159:
  %t694 = load i64, ptr %l42, !tbaa !24
  %t695 = load i64, ptr %l41, !tbaa !24
  %t698 = icmp slt i64 %t694, %t695
  %t700 = xor i1 %t698, true
  br i1 %t700, label %bb160, label %bb161
bb160:
  br label %bb187
bb161:
  br label %bb162
bb162:
  %t702 = load i64, ptr %l38, !tbaa !24
  %t703 = load i64, ptr %l42, !tbaa !24
  %t704 = load i64, ptr %l40, !tbaa !24
  %t707 = mul i64 %t703, %t704
  %t710 = add i64 %t702, %t707
  store i64 %t710, ptr %l43, !tbaa !24
  %t712 = load i64, ptr %l43, !tbaa !24
  %t714 = getelementptr { i64, ptr }, ptr %l16, i32 0, i32 1
  %t715 = load ptr, ptr %t714, !tbaa !27
  %t716 = getelementptr i64, ptr %t715, i64 %t712
  %t717 = load i64, ptr %t716, !tbaa !34
  %t719 = icmp sge i64 %t717, 0
  br i1 %t719, label %bb163, label %bb164
bb163:
  %t721 = load i64, ptr %l43, !tbaa !24
  %t723 = getelementptr { i64, ptr }, ptr %l15, i32 0, i32 1
  %t724 = load ptr, ptr %t723, !tbaa !27
  %t725 = getelementptr %"compiler/eval:Ptr", ptr %t724, i64 %t721
  %t726 = load %"compiler/eval:Ptr", ptr %t725
  store %"compiler/eval:Ptr" %t726, ptr %l44
  %t728 = load i64, ptr %l43, !tbaa !24
  %t730 = getelementptr { i64, ptr }, ptr %l16, i32 0, i32 1
  %t731 = load ptr, ptr %t730, !tbaa !27
  %t732 = getelementptr i64, ptr %t731, i64 %t728
  %t733 = load i64, ptr %t732, !tbaa !34
  store i64 %t733, ptr %l45, !tbaa !24
  %t735 = load i64, ptr %l37, !tbaa !24
  store i64 %t735, ptr %l394, !tbaa !24
  %t736 = load i64, ptr %l43, !tbaa !24
  %t738 = getelementptr { i64, ptr }, ptr %l14, i32 0, i32 1
  %t739 = load ptr, ptr %t738, !tbaa !27
  %t740 = getelementptr i8, ptr %t739, i64 %t736
  %t741 = load i8, ptr %t740, !tbaa !32
  store i8 %t741, ptr %l396, !tbaa !22
  %t743 = call i8 @std_2fffi_2eArrayOf(i32 4)
  store i8 %t743, ptr %l398
  br label %bb165
bb164:
  %t744 = load i64, ptr %l37, !tbaa !24
  %t745 = load i64, ptr %l43, !tbaa !24
  %t747 = getelementptr { i64, ptr }, ptr %l17, i32 0, i32 1
  %t748 = load ptr, ptr %t747, !tbaa !27
  %t749 = getelementptr i64, ptr %t748, i64 %t745
  %t750 = load i64, ptr %t749, !tbaa !85
  %t753 = getelementptr { i64, ptr }, ptr %l36, i32 0, i32 1
  %t754 = load ptr, ptr %t753, !tbaa !27
  %t755 = getelementptr i64, ptr %t754, i64 %t744
  store i64 %t750, ptr %t755, !tbaa !85
  %t756 = load i64, ptr %l37, !tbaa !24
  %t758 = add i64 %t756, 1
  store i64 %t758, ptr %l37, !tbaa !24
  br label %bb185
bb165:
  %t760 = load i8, ptr %l396, !tbaa !22
  %t761 = load i8, ptr %l398, !tbaa !22
  %t762 = icmp eq i8 %t760, %t761
  br i1 %t762, label %bb166, label %bb167
bb166:
  %t764 = load i64, ptr %l45, !tbaa !24
  store i64 %t764, ptr %l400, !tbaa !65
  br label %bb169
bb167:
  %t767 = load i64, ptr %l45, !tbaa !24
  store i64 %t767, ptr %l403, !tbaa !24
  %t768 = load ptr, ptr %l0, !tbaa !29
  %t769 = load i64, ptr %l43, !tbaa !24
  %t771 = getelementptr { i64, ptr }, ptr %l14, i32 0, i32 1
  %t772 = load ptr, ptr %t771, !tbaa !27
  %t773 = getelementptr i8, ptr %t772, i64 %t769
  %t774 = load i8, ptr %t773, !tbaa !32
  %t777 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2ekindWidth(ptr %v0, ptr %t768, i8 %t774)
  store i64 %t777, ptr %l407
  br label %bb168
bb168:
  %t778 = load i64, ptr %l403, !tbaa !24
  %t779 = load i64, ptr %l407, !tbaa !24
  %t780 = sdiv i64 %t778, %t779
  store i64 %t780, ptr %l400, !tbaa !65
  br label %bb169
bb169:
  %t783 = load i64, ptr %l400, !tbaa !65
  %t784 = load i64, ptr %l394, !tbaa !24
  %t785 = getelementptr { i64, ptr }, ptr %l36, i32 0, i32 1
  %t786 = load ptr, ptr %t785, !tbaa !27
  %t787 = getelementptr i64, ptr %t786, i64 %t784
  store i64 %t783, ptr %t787, !tbaa !85
  store i64 0, ptr %l46, !tbaa !24
  %t788 = load i64, ptr %l45, !tbaa !24
  store i64 %t788, ptr %l47, !tbaa !24
  store i64 1, ptr %l48, !tbaa !24
  %t790 = load i64, ptr %l47, !tbaa !24
  %t791 = load i64, ptr %l46, !tbaa !24
  %t794 = icmp sgt i64 %t790, %t791
  br i1 %t794, label %bb170, label %bb171
bb170:
  %t796 = load i64, ptr %l48, !tbaa !24
  %t798 = icmp sgt i64 %t796, 0
  br i1 %t798, label %bb172, label %bb173
bb171:
  store i64 0, ptr %l414, !tbaa !24
  br label %bb175
bb172:
  %t800 = load i64, ptr %l47, !tbaa !24
  %t801 = load i64, ptr %l46, !tbaa !24
  %t804 = sub i64 %t800, %t801
  %t805 = load i64, ptr %l48, !tbaa !24
  %t808 = add i64 %t804, %t805
  %t810 = sub i64 %t808, 1
  %t811 = load i64, ptr %l48, !tbaa !24
  %t814 = sdiv i64 %t810, %t811
  store i64 %t814, ptr %l417, !tbaa !24
  br label %bb174
bb173:
  store i64 0, ptr %l417, !tbaa !24
  br label %bb174
bb174:
  %t816 = load i64, ptr %l417, !tbaa !24
  store i64 %t816, ptr %l414, !tbaa !24
  br label %bb175
bb175:
  %t817 = load i64, ptr %l414, !tbaa !24
  store i64 %t817, ptr %l49, !tbaa !24
  store i64 0, ptr %l50, !tbaa !24
  br label %bb176
bb176:
  store %olang.scope zeroinitializer, ptr %s26
  %t818 = load i64, ptr %l50, !tbaa !24
  %t819 = load i64, ptr %l49, !tbaa !24
  %t822 = icmp slt i64 %t818, %t819
  %t824 = xor i1 %t822, true
  br i1 %t824, label %bb177, label %bb178
bb177:
  call void @__olang_scope_close(ptr %s26)
  br label %bb183
bb178:
  br label %bb179
bb179:
  %t826 = load i64, ptr %l46, !tbaa !24
  %t827 = load i64, ptr %l50, !tbaa !24
  %t828 = load i64, ptr %l48, !tbaa !24
  %t831 = mul i64 %t827, %t828
  %t834 = add i64 %t826, %t831
  store i64 %t834, ptr %l51, !tbaa !24
  %t836 = load ptr, ptr %l0, !tbaa !29
  store ptr %t836, ptr %l435, !tbaa !29
  %t837 = getelementptr %"compiler/eval:Ptr", ptr %l44, i32 0, i32 0
  %t838 = load i64, ptr %t837, !tbaa !24
  %t839 = getelementptr %"compiler/eval:Ptr", ptr %l44, i32 0, i32 1
  %t840 = load i64, ptr %t839, !tbaa !24
  %t841 = load i64, ptr %l51, !tbaa !24
  %t844 = add i64 %t840, %t841
  %t847 = call %"compiler/eval:Ptr" @compiler_2feval_3aPtr_2ector(ptr %s26, i64 %t838, i64 %t844)
  store %"compiler/eval:Ptr" %t847, ptr %l440
  br label %bb180
bb180:
  %t848 = load ptr, ptr %l435, !tbaa !29
  %t849 = load %"compiler/eval:Ptr", ptr %l440
  %t850 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2erd(ptr %v0, ptr %t848, %"compiler/eval:Ptr" %t849, i64 1)
  store i64 %t850, ptr %l441
  br label %bb181
bb181:
  %t851 = load i64, ptr %l441, !tbaa !24
  %t853 = load i64, ptr %l37, !tbaa !24
  %t855 = add i64 %t853, 1
  %t856 = load i64, ptr %l51, !tbaa !24
  %t858 = sdiv i64 %t856, 8
  %t861 = add i64 %t855, %t858
  %t862 = load i64, ptr %l37, !tbaa !24
  %t864 = add i64 %t862, 1
  %t865 = load i64, ptr %l51, !tbaa !24
  %t867 = sdiv i64 %t865, 8
  %t870 = add i64 %t864, %t867
  %t872 = getelementptr { i64, ptr }, ptr %l36, i32 0, i32 1
  %t873 = load ptr, ptr %t872, !tbaa !27
  %t874 = getelementptr i64, ptr %t873, i64 %t870
  %t875 = load i64, ptr %t874, !tbaa !85
  %t877 = load i64, ptr %l51, !tbaa !24
  %t879 = srem i64 %t877, 8
  %t882 = mul i64 %t879, 8
  store i64 %t882, ptr %l458, !tbaa !65
  %t884 = load i64, ptr %l458, !tbaa !65
  %t885 = load i64, ptr %l458, !tbaa !65
  %t886 = shl i64 %t851, %t885
  %t889 = or i64 %t875, %t886
  %t892 = getelementptr { i64, ptr }, ptr %l36, i32 0, i32 1
  %t893 = load ptr, ptr %t892, !tbaa !27
  %t894 = getelementptr i64, ptr %t893, i64 %t861
  store i64 %t889, ptr %t894, !tbaa !85
  call void @__olang_scope_close(ptr %s26)
  br label %bb182
bb182:
  %t895 = load i64, ptr %l50, !tbaa !24
  %t897 = add i64 %t895, 1
  store i64 %t897, ptr %l50, !tbaa !24
  br label %bb176
bb183:
  %t899 = load i64, ptr %l37, !tbaa !24
  store i64 %t899, ptr %l463, !tbaa !24
  %t900 = load i64, ptr %l45, !tbaa !24
  %t902 = call i64 @std_2fffi_2eWordsFor(i64 %t900)
  store i64 %t902, ptr %l465
  br label %bb184
bb184:
  %t903 = load i64, ptr %l465, !tbaa !24
  %t904 = add i64 1, %t903
  %t905 = load i64, ptr %l463, !tbaa !24
  %t907 = add i64 %t905, %t904
  store i64 %t907, ptr %l37, !tbaa !24
  br label %bb185
bb185:
  br label %bb186
bb186:
  %t909 = load i64, ptr %l42, !tbaa !24
  %t911 = add i64 %t909, 1
  store i64 %t911, ptr %l42, !tbaa !24
  br label %bb159
bb187:
  %t913 = load i32, ptr %l11, !tbaa !23
  %t914 = load i32, ptr @G_2ecompiler_2ftypes_2eVoidT, !tbaa !23
  %t917 = icmp eq i32 %t913, %t914
  br i1 %t917, label %bb188, label %bb189
bb188:
  store i1 true, ptr %l478, !tbaa !21
  br label %bb190
bb189:
  %t919 = load i32, ptr %l11, !tbaa !23
  %t920 = load i32, ptr @G_2ecompiler_2ftypes_2eNoreturnT, !tbaa !23
  %t923 = icmp eq i32 %t919, %t920
  store i1 %t923, ptr %l478, !tbaa !21
  br label %bb190
bb190:
  %t925 = load i1, ptr %l478, !tbaa !21
  br i1 %t925, label %bb191, label %bb192
bb191:
  store i8 0, ptr %l482, !tbaa !22
  br label %bb199
bb192:
  %t926 = load i1, ptr %l12, !tbaa !21
  br i1 %t926, label %bb193, label %bb194
bb193:
  %t929 = call i8 @std_2fffi_2eCode(i32 7)
  store i8 %t929, ptr %l486
  br label %bb195
bb194:
  %t930 = load ptr, ptr %l0, !tbaa !29
  %t931 = load i32, ptr %l11, !tbaa !23
  %t934 = call i32 @compiler_2feval_2ecompiler_2feval_3aMachine_2effiKind(ptr %v0, ptr %t930, i32 %t931)
  store i32 %t934, ptr %l489
  br label %bb196
bb195:
  %t935 = load i8, ptr %l486, !tbaa !22
  store i8 %t935, ptr %l484, !tbaa !22
  br label %bb198
bb196:
  %t936 = load i32, ptr %l489, !range !{i32 0, i32 12}
  %t937 = call i8 @std_2fffi_2eCode(i32 %t936)
  store i8 %t937, ptr %l490
  br label %bb197
bb197:
  %t938 = load i8, ptr %l490, !tbaa !22
  store i8 %t938, ptr %l484, !tbaa !22
  br label %bb198
bb198:
  %t939 = load i8, ptr %l484, !tbaa !22
  store i8 %t939, ptr %l482, !tbaa !22
  br label %bb199
bb199:
  %t940 = load i8, ptr %l482, !tbaa !22
  store i8 %t940, ptr %l53, !tbaa !22
  %t941 = load ptr, ptr %l0, !tbaa !29
  %t943 = getelementptr %"compiler/eval:Machine", ptr %t941, i32 0, i32 32
  %t944 = load i64, ptr %l2, !tbaa !24
  %t947 = call { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2eGet_3cI64_2c_20I64_3e(ptr %v0, ptr %t943, i64 %t944)
  %t948 = extractvalue { i32, i64 } %t947, 1
  %t949 = extractvalue { i32, i64 } %t947, 0
  store i32 %t949, ptr %l496
  %t950 = icmp ne i32 %t949, 0
  br i1 %t950, label %bb201, label %ok.951, !prof !99
ok.951:
  store i64 %t948, ptr %l495
  br label %bb200
bb200:
  %t952 = load i64, ptr %l495, !tbaa !24
  store i64 %t952, ptr %l491, !tbaa !24
  br label %bb203
bb201:
  br label %bb202
bb202:
  store i64 -1, ptr %l491, !tbaa !24
  br label %bb203
bb203:
  %t953 = load i64, ptr %l491, !tbaa !24
  %t954 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t955 = load { i64, ptr }, ptr %l14, !tbaa !27
  %t956 = load { i64, ptr }, ptr %l36, !tbaa !27
  %t957 = load i8, ptr %l53, !tbaa !22
  %t964 = call { i32, i64 } @std_2fffi_2eCall(ptr %v0, ptr %s0, ptr %s0, { i64, ptr } %t954, { i64, ptr } %t955, { i64, ptr } %t956, i8 %t957, i64 %t953)
  %t965 = extractvalue { i32, i64 } %t964, 1
  %t966 = extractvalue { i32, i64 } %t964, 0
  store i32 %t966, ptr %l504
  %t967 = icmp ne i32 %t966, 0
  br i1 %t967, label %bb205, label %ok.968, !prof !99
ok.968:
  store i64 %t965, ptr %l503
  br label %bb204
bb204:
  %t969 = load i64, ptr %l503, !tbaa !65
  store i64 %t969, ptr %l497, !tbaa !65
  br label %bb212
bb205:
  %t970 = load i32, ptr %l504, !tbaa !23
  %t971 = icmp eq i32 %t970, 65536
  br i1 %t971, label %bb206, label %bb207
bb206:
  br label %bb208
bb207:
  br label %bb209
bb208:
  %t973 = load ptr, ptr %l0, !tbaa !29
  %t974 = load { i64, ptr }, ptr @G_2ecompiler_2feval_2eWhyFfiFind, !tbaa !27
  %t975 = load ptr, ptr @__olang_prog_scope
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2erefuse(ptr %v0, ptr %t975, ptr %t973, { i64, ptr } %t974)
  br label %bb210
bb209:
  %t978 = load ptr, ptr %l0, !tbaa !29
  %t979 = load { i64, ptr }, ptr @G_2ecompiler_2feval_2eWhyFfiPass, !tbaa !27
  %t980 = load ptr, ptr @__olang_prog_scope
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2erefuse(ptr %v0, ptr %t980, ptr %t978, { i64, ptr } %t979)
  br label %bb211
bb210:
  call void @__olang_scope_close(ptr %s0)
  store i1 false, ptr %rv
  br label %ret
bb211:
  call void @__olang_scope_close(ptr %s0)
  store i1 false, ptr %rv
  br label %ret
bb212:
  %t985 = load i64, ptr %l497, !tbaa !65
  store i64 %t985, ptr %l55, !tbaa !65
  %t986 = load ptr, ptr %l0, !tbaa !29
  store ptr %t986, ptr %l512, !tbaa !29
  %t987 = call i32 @__olang_err()
  store i32 %t987, ptr %l513
  br label %bb213
bb213:
  %t988 = load i32, ptr %l513, !tbaa !23
  %t989 = load ptr, ptr %l512, !tbaa !29
  %t990 = getelementptr %"compiler/eval:Machine", ptr %t989, i32 0, i32 91
  store i32 %t988, ptr %t990, !tbaa !23
  store i64 0, ptr %l37, !tbaa !24
  store i64 0, ptr %l56, !tbaa !24
  %t991 = load i64, ptr %l13, !tbaa !24
  store i64 %t991, ptr %l57, !tbaa !24
  store i64 1, ptr %l58, !tbaa !24
  %t993 = load i64, ptr %l57, !tbaa !24
  %t994 = load i64, ptr %l56, !tbaa !24
  %t997 = icmp sgt i64 %t993, %t994
  br i1 %t997, label %bb214, label %bb215
bb214:
  %t999 = load i64, ptr %l58, !tbaa !24
  %t1001 = icmp sgt i64 %t999, 0
  br i1 %t1001, label %bb216, label %bb217
bb215:
  store i64 0, ptr %l518, !tbaa !24
  br label %bb219
bb216:
  %t1003 = load i64, ptr %l57, !tbaa !24
  %t1004 = load i64, ptr %l56, !tbaa !24
  %t1007 = sub i64 %t1003, %t1004
  %t1008 = load i64, ptr %l58, !tbaa !24
  %t1011 = add i64 %t1007, %t1008
  %t1013 = sub i64 %t1011, 1
  %t1014 = load i64, ptr %l58, !tbaa !24
  %t1017 = sdiv i64 %t1013, %t1014
  store i64 %t1017, ptr %l521, !tbaa !24
  br label %bb218
bb217:
  store i64 0, ptr %l521, !tbaa !24
  br label %bb218
bb218:
  %t1019 = load i64, ptr %l521, !tbaa !24
  store i64 %t1019, ptr %l518, !tbaa !24
  br label %bb219
bb219:
  %t1020 = load i64, ptr %l518, !tbaa !24
  store i64 %t1020, ptr %l59, !tbaa !24
  store i64 0, ptr %l60, !tbaa !24
  br label %bb220
bb220:
  %t1021 = load i64, ptr %l60, !tbaa !24
  %t1022 = load i64, ptr %l59, !tbaa !24
  %t1025 = icmp slt i64 %t1021, %t1022
  %t1027 = xor i1 %t1025, true
  br i1 %t1027, label %bb221, label %bb222
bb221:
  br label %bb246
bb222:
  br label %bb223
bb223:
  %t1029 = load i64, ptr %l56, !tbaa !24
  %t1030 = load i64, ptr %l60, !tbaa !24
  %t1031 = load i64, ptr %l58, !tbaa !24
  %t1034 = mul i64 %t1030, %t1031
  %t1037 = add i64 %t1029, %t1034
  store i64 %t1037, ptr %l61, !tbaa !24
  %t1039 = load i64, ptr %l61, !tbaa !24
  %t1041 = getelementptr { i64, ptr }, ptr %l16, i32 0, i32 1
  %t1042 = load ptr, ptr %t1041, !tbaa !27
  %t1043 = getelementptr i64, ptr %t1042, i64 %t1039
  %t1044 = load i64, ptr %t1043, !tbaa !34
  %t1046 = icmp sge i64 %t1044, 0
  br i1 %t1046, label %bb224, label %bb225
bb224:
  %t1048 = load i64, ptr %l61, !tbaa !24
  %t1050 = getelementptr { i64, ptr }, ptr %l15, i32 0, i32 1
  %t1051 = load ptr, ptr %t1050, !tbaa !27
  %t1052 = getelementptr %"compiler/eval:Ptr", ptr %t1051, i64 %t1048
  %t1053 = load %"compiler/eval:Ptr", ptr %t1052
  store %"compiler/eval:Ptr" %t1053, ptr %l62
  %t1055 = load i64, ptr %l61, !tbaa !24
  %t1057 = getelementptr { i64, ptr }, ptr %l16, i32 0, i32 1
  %t1058 = load ptr, ptr %t1057, !tbaa !27
  %t1059 = getelementptr i64, ptr %t1058, i64 %t1055
  %t1060 = load i64, ptr %t1059, !tbaa !34
  store i64 %t1060, ptr %l63, !tbaa !24
  %t1062 = load ptr, ptr %l0, !tbaa !29
  %t1064 = getelementptr %"compiler/eval:Machine", ptr %t1062, i32 0, i32 46
  %t1065 = load { i64, ptr }, ptr %t1064, !tbaa !27
  store { i64, ptr } %t1065, ptr %l547, !tbaa !27
  %t1066 = getelementptr %"compiler/eval:Ptr", ptr %l62, i32 0, i32 0
  %t1067 = load i64, ptr %t1066, !tbaa !24
  %t1068 = load i64, ptr @G_2ecompiler_2feval_2eslotMask, !tbaa !24
  %t1071 = and i64 %t1067, %t1068
  %t1073 = getelementptr { i64, ptr }, ptr %l547, i32 0, i32 1
  %t1074 = load ptr, ptr %t1073, !tbaa !27
  %t1075 = getelementptr %"compiler/eval:alloc", ptr %t1074, i64 %t1071
  %t1076 = getelementptr %"compiler/eval:alloc", ptr %t1075, i32 0, i32 13
  %t1077 = load i1, ptr %t1076, !tbaa !21
  %t1079 = icmp eq i1 %t1077, false
  br i1 %t1079, label %bb226, label %bb227
bb225:
  %t1081 = load i64, ptr %l37, !tbaa !24
  %t1083 = add i64 %t1081, 1
  store i64 %t1083, ptr %l37, !tbaa !24
  br label %bb244
bb226:
  store i64 0, ptr %l64, !tbaa !24
  %t1085 = load i64, ptr %l63, !tbaa !24
  store i64 %t1085, ptr %l65, !tbaa !24
  store i64 1, ptr %l66, !tbaa !24
  %t1087 = load i64, ptr %l65, !tbaa !24
  %t1088 = load i64, ptr %l64, !tbaa !24
  %t1091 = icmp sgt i64 %t1087, %t1088
  br i1 %t1091, label %bb228, label %bb229
bb227:
  br label %bb242
bb228:
  %t1093 = load i64, ptr %l66, !tbaa !24
  %t1095 = icmp sgt i64 %t1093, 0
  br i1 %t1095, label %bb230, label %bb231
bb229:
  store i64 0, ptr %l557, !tbaa !24
  br label %bb233
bb230:
  %t1097 = load i64, ptr %l65, !tbaa !24
  %t1098 = load i64, ptr %l64, !tbaa !24
  %t1101 = sub i64 %t1097, %t1098
  %t1102 = load i64, ptr %l66, !tbaa !24
  %t1105 = add i64 %t1101, %t1102
  %t1107 = sub i64 %t1105, 1
  %t1108 = load i64, ptr %l66, !tbaa !24
  %t1111 = sdiv i64 %t1107, %t1108
  store i64 %t1111, ptr %l560, !tbaa !24
  br label %bb232
bb231:
  store i64 0, ptr %l560, !tbaa !24
  br label %bb232
bb232:
  %t1113 = load i64, ptr %l560, !tbaa !24
  store i64 %t1113, ptr %l557, !tbaa !24
  br label %bb233
bb233:
  %t1114 = load i64, ptr %l557, !tbaa !24
  store i64 %t1114, ptr %l67, !tbaa !24
  store i64 0, ptr %l68, !tbaa !24
  br label %bb234
bb234:
  store %olang.scope zeroinitializer, ptr %s37
  %t1115 = load i64, ptr %l68, !tbaa !24
  %t1116 = load i64, ptr %l67, !tbaa !24
  %t1119 = icmp slt i64 %t1115, %t1116
  %t1121 = xor i1 %t1119, true
  br i1 %t1121, label %bb235, label %bb236
bb235:
  call void @__olang_scope_close(ptr %s37)
  br label %bb241
bb236:
  br label %bb237
bb237:
  %t1123 = load i64, ptr %l64, !tbaa !24
  %t1124 = load i64, ptr %l68, !tbaa !24
  %t1125 = load i64, ptr %l66, !tbaa !24
  %t1128 = mul i64 %t1124, %t1125
  %t1131 = add i64 %t1123, %t1128
  store i64 %t1131, ptr %l69, !tbaa !24
  %t1133 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1133, ptr %l578, !tbaa !29
  %t1134 = getelementptr %"compiler/eval:Ptr", ptr %l62, i32 0, i32 0
  %t1135 = load i64, ptr %t1134, !tbaa !24
  %t1136 = getelementptr %"compiler/eval:Ptr", ptr %l62, i32 0, i32 1
  %t1137 = load i64, ptr %t1136, !tbaa !24
  %t1138 = load i64, ptr %l69, !tbaa !24
  %t1141 = add i64 %t1137, %t1138
  %t1144 = call %"compiler/eval:Ptr" @compiler_2feval_3aPtr_2ector(ptr %s37, i64 %t1135, i64 %t1141)
  store %"compiler/eval:Ptr" %t1144, ptr %l583
  br label %bb238
bb238:
  %t1145 = load i64, ptr %l37, !tbaa !24
  %t1147 = add i64 %t1145, 1
  %t1148 = load i64, ptr %l69, !tbaa !24
  %t1150 = sdiv i64 %t1148, 8
  %t1153 = add i64 %t1147, %t1150
  %t1155 = getelementptr { i64, ptr }, ptr %l36, i32 0, i32 1
  %t1156 = load ptr, ptr %t1155, !tbaa !27
  %t1157 = getelementptr i64, ptr %t1156, i64 %t1153
  %t1158 = load i64, ptr %t1157, !tbaa !85
  %t1159 = load i64, ptr %l69, !tbaa !24
  %t1161 = srem i64 %t1159, 8
  %t1164 = mul i64 %t1161, 8
  store i64 %t1164, ptr %l593, !tbaa !65
  %t1166 = load i64, ptr %l593, !tbaa !65
  %t1167 = load i64, ptr %l593, !tbaa !65
  %t1168 = lshr i64 %t1158, %t1167
  %t1170 = and i64 %t1168, 255
  %t1172 = load ptr, ptr %l578, !tbaa !29
  %t1173 = load %"compiler/eval:Ptr", ptr %l583
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2ewr(ptr %v0, ptr %t1172, %"compiler/eval:Ptr" %t1173, i64 1, i64 %t1170)
  br label %bb239
bb239:
  call void @__olang_scope_close(ptr %s37)
  br label %bb240
bb240:
  %t1175 = load i64, ptr %l68, !tbaa !24
  %t1177 = add i64 %t1175, 1
  store i64 %t1177, ptr %l68, !tbaa !24
  br label %bb234
bb241:
  br label %bb242
bb242:
  %t1179 = load i64, ptr %l37, !tbaa !24
  store i64 %t1179, ptr %l599, !tbaa !24
  %t1180 = load i64, ptr %l63, !tbaa !24
  %t1182 = call i64 @std_2fffi_2eWordsFor(i64 %t1180)
  store i64 %t1182, ptr %l601
  br label %bb243
bb243:
  %t1183 = load i64, ptr %l601, !tbaa !24
  %t1184 = add i64 1, %t1183
  %t1185 = load i64, ptr %l599, !tbaa !24
  %t1187 = add i64 %t1185, %t1184
  store i64 %t1187, ptr %l37, !tbaa !24
  br label %bb244
bb244:
  br label %bb245
bb245:
  %t1189 = load i64, ptr %l60, !tbaa !24
  %t1191 = add i64 %t1189, 1
  store i64 %t1191, ptr %l60, !tbaa !24
  br label %bb220
bb246:
  %t1193 = load i1, ptr %l6, !tbaa !21
  br i1 %t1193, label %bb247, label %bb248
bb247:
  %t1195 = load i1, ptr %l12, !tbaa !21
  store i1 %t1195, ptr %l609, !tbaa !21
  br label %bb249
bb248:
  store i1 false, ptr %l609, !tbaa !21
  br label %bb249
bb249:
  %t1197 = load i1, ptr %l609, !tbaa !21
  br i1 %t1197, label %bb250, label %bb251
bb250:
  store %olang.scope zeroinitializer, ptr %s41
  %t1198 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1198, ptr %l611, !tbaa !29
  %t1199 = load %"compiler/eval:Ptr", ptr %l5
  store %"compiler/eval:Ptr" %t1199, ptr %l612
  %t1200 = load i64, ptr %l55, !tbaa !65
  %t1202 = icmp eq i64 %t1200, 0
  br i1 %t1202, label %bb252, label %bb253
bb251:
  %t1204 = load i1, ptr %l6, !tbaa !21
  br i1 %t1204, label %bb257, label %bb258
bb252:
  %t1206 = load %"compiler/eval:Ptr", ptr @G_2ecompiler_2feval_2eNullPtr
  store %"compiler/eval:Ptr" %t1206, ptr %l615
  br label %bb255
bb253:
  %t1208 = load i64, ptr @G_2ecompiler_2feval_2eForeignId, !tbaa !24
  %t1209 = load i64, ptr %l55, !tbaa !65
  %t1213 = call %"compiler/eval:Ptr" @compiler_2feval_3aPtr_2ector(ptr %s41, i64 %t1208, i64 %t1209)
  store %"compiler/eval:Ptr" %t1213, ptr %l620
  br label %bb254
bb254:
  %t1214 = load %"compiler/eval:Ptr", ptr %l620
  store %"compiler/eval:Ptr" %t1214, ptr %l615
  br label %bb255
bb255:
  %t1215 = load ptr, ptr %l611, !tbaa !29
  %t1216 = load %"compiler/eval:Ptr", ptr %l612
  %t1217 = load %"compiler/eval:Ptr", ptr %l615
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2ewrPtr(ptr %v0, ptr %t1215, %"compiler/eval:Ptr" %t1216, %"compiler/eval:Ptr" %t1217)
  br label %bb256
bb256:
  call void @__olang_scope_close(ptr %s41)
  br label %bb268
bb257:
  %t1218 = load i32, ptr %l11, !tbaa !23
  %t1219 = load i32, ptr @G_2ecompiler_2ftypes_2eVoidT, !tbaa !23
  %t1222 = icmp ne i32 %t1218, %t1219
  store i1 %t1222, ptr %l622, !tbaa !21
  br label %bb259
bb258:
  store i1 false, ptr %l622, !tbaa !21
  br label %bb259
bb259:
  %t1224 = load i1, ptr %l622, !tbaa !21
  br i1 %t1224, label %bb260, label %bb261
bb260:
  %t1225 = load i32, ptr %l11, !tbaa !23
  %t1226 = load i32, ptr @G_2ecompiler_2ftypes_2eNoreturnT, !tbaa !23
  %t1229 = icmp ne i32 %t1225, %t1226
  store i1 %t1229, ptr %l626, !tbaa !21
  br label %bb262
bb261:
  store i1 false, ptr %l626, !tbaa !21
  br label %bb262
bb262:
  %t1231 = load i1, ptr %l626, !tbaa !21
  br i1 %t1231, label %bb263, label %bb264
bb263:
  %t1232 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1232, ptr %l630, !tbaa !29
  %t1233 = load %"compiler/eval:Ptr", ptr %l5
  store %"compiler/eval:Ptr" %t1233, ptr %l631
  %t1234 = load ptr, ptr %l0, !tbaa !29
  %t1235 = load i32, ptr %l11, !tbaa !23
  %t1238 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2ewidth(ptr %v0, ptr %t1234, i32 %t1235)
  store i64 %t1238, ptr %l634
  br label %bb265
bb264:
  br label %bb267
bb265:
  %t1239 = load i64, ptr %l55, !tbaa !65
  %t1241 = load ptr, ptr %l630, !tbaa !29
  %t1242 = load %"compiler/eval:Ptr", ptr %l631
  %t1243 = load i64, ptr %l634, !tbaa !24
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2ewr(ptr %v0, ptr %t1241, %"compiler/eval:Ptr" %t1242, i64 %t1243, i64 %t1239)
  br label %bb266
bb266:
  br label %bb267
bb267:
  br label %bb268
bb268:
  %t1245 = load ptr, ptr %l0, !tbaa !29
  %t1247 = getelementptr %"compiler/eval:Machine", ptr %t1245, i32 0, i32 19
  %t1248 = load i1, ptr %t1247, !tbaa !21
  %t1250 = xor i1 %t1248, true
  call void @__olang_scope_close(ptr %s0)
  store i1 %t1250, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local { i64, %"compiler/eval:Ptr", i64 } @compiler_2feval_2ecompiler_2feval_3aMachine_2ecallee(ptr %v0, ptr %a0, i64 %a1, { i64, [7 x i64] } %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca { i64, [7 x i64] }
  %l3 = alloca { i64, [2 x i64] }
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca { i64, [4 x i64] }
  %l7 = alloca %"compiler/eval:Ptr"
  %l8 = alloca %"compiler/eval:Ptr"
  %l9 = alloca %"compiler/eval:Ptr"
  %l10 = alloca %"compiler/eval:alloc"
  %l11 = alloca i64
  %l12 = alloca { i64, [4 x i64] }
  %l13 = alloca i64
  %l14 = alloca %"compiler/eval:Ptr"
  %l15 = alloca %"compiler/eval:Ptr"
  %l16 = alloca %"compiler/eval:Ptr"
  %l17 = alloca i64
  %l21 = alloca i64
  %l25 = alloca i64
  %l26 = alloca i32
  %l46 = alloca %"compiler/eval:Ptr"
  %l49 = alloca %"compiler/eval:Ptr"
  %l50 = alloca ptr
  %l54 = alloca %"compiler/eval:Ptr"
  %l55 = alloca %"compiler/eval:Ptr"
  %l68 = alloca %"compiler/eval:alloc"
  %l80 = alloca i64
  %l82 = alloca ptr
  %l86 = alloca { i64, [2 x i64] }
  %l87 = alloca i64
  %l88 = alloca i32
  %l103 = alloca %"compiler/eval:Ptr"
  %l104 = alloca ptr
  %l108 = alloca %"compiler/eval:Ptr"
  %l109 = alloca %"compiler/eval:Ptr"
  %l120 = alloca ptr
  %l128 = alloca %"compiler/eval:Ptr"
  %l129 = alloca %"compiler/eval:Ptr"
  %l136 = alloca i1
  %l139 = alloca %"compiler/eval:alloc"
  %l147 = alloca i64
  %l149 = alloca ptr
  %l151 = alloca ptr
  %l154 = alloca %"compiler/eval:alloc"
  %l156 = alloca { i64, [2 x i64] }
  %l157 = alloca i64
  %l158 = alloca i32
  %s4 = alloca %olang.scope
  %s10 = alloca %olang.scope
  %rv = alloca { i64, %"compiler/eval:Ptr", i64 }
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  store { i64, [7 x i64] } %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load { i64, [7 x i64] }, ptr %l2
  %t3 = extractvalue { i64, [7 x i64] } %t1, 0
  %t4 = icmp eq i64 %t3, 0
  br i1 %t4, label %bb1, label %bb2
bb1:
  %t6 = getelementptr { i64, [7 x i64] }, ptr %l2, i32 0, i32 1
  %t7 = getelementptr { { i64, [2 x i64] }, i32 }, ptr %t6, i32 0, i32 0
  %t8 = load { i64, [2 x i64] }, ptr %t7
  store { i64, [2 x i64] } %t8, ptr %l3
  br label %bb3
bb2:
  br label %bb12
bb3:
  %t10 = load ptr, ptr %l0, !tbaa !29
  %t12 = getelementptr %"compiler/eval:Machine", ptr %t10, i32 0, i32 27
  %t13 = load { i64, [2 x i64] }, ptr %l3
  %t16 = call { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fmir_3aFnKey_2c_20I64_3e_2eG_H6ffe2eb17daa971b2c9d564ad72358b1(ptr %v0, ptr %t12, { i64, [2 x i64] } %t13)
  %t17 = extractvalue { i32, i64 } %t16, 1
  %t18 = extractvalue { i32, i64 } %t16, 0
  store i32 %t18, ptr %l26
  %t19 = icmp ne i32 %t18, 0
  br i1 %t19, label %bb5, label %ok.20, !prof !99
ok.20:
  store i64 %t17, ptr %l25
  br label %bb4
bb4:
  %t21 = load i64, ptr %l25, !tbaa !24
  store i64 %t21, ptr %l21, !tbaa !24
  br label %bb7
bb5:
  br label %bb6
bb6:
  store i64 -1, ptr %l21, !tbaa !24
  br label %bb7
bb7:
  %t22 = load i64, ptr %l21, !tbaa !24
  store i64 %t22, ptr %l4, !tbaa !24
  %t23 = load i64, ptr %l4, !tbaa !24
  %t25 = icmp slt i64 %t23, 0
  br i1 %t25, label %bb8, label %bb9
bb8:
  %t27 = load ptr, ptr %l0, !tbaa !29
  %t28 = load { i64, ptr }, ptr @G_2ecompiler_2feval_2eWhyNoBody, !tbaa !27
  %t29 = load ptr, ptr @__olang_prog_scope
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2erefuse(ptr %v0, ptr %t29, ptr %t27, { i64, ptr } %t28)
  br label %bb10
bb9:
  br label %bb11
bb10:
  br label %bb11
bb11:
  %t32 = load i64, ptr %l4, !tbaa !24
  %t33 = load %"compiler/eval:Ptr", ptr @G_2ecompiler_2feval_2eNullPtr
  %t35 = insertvalue { i64, %"compiler/eval:Ptr", i64 } undef, i64 %t32, 0
  %t37 = insertvalue { i64, %"compiler/eval:Ptr", i64 } %t35, %"compiler/eval:Ptr" %t33, 1
  %t38 = insertvalue { i64, %"compiler/eval:Ptr", i64 } %t37, i64 -1, 2
  store { i64, %"compiler/eval:Ptr", i64 } %t38, ptr %rv
  br label %ret
bb12:
  %t40 = load { i64, [7 x i64] }, ptr %l2
  %t42 = extractvalue { i64, [7 x i64] } %t40, 0
  %t43 = icmp eq i64 %t42, 1
  br i1 %t43, label %bb13, label %bb14
bb13:
  %t45 = getelementptr { i64, [7 x i64] }, ptr %l2, i32 0, i32 1
  %t46 = getelementptr { i64, i32 }, ptr %t45, i32 0, i32 0
  %t47 = load i64, ptr %t46
  store i64 %t47, ptr %l5, !tbaa !24
  br label %bb15
bb14:
  br label %bb16
bb15:
  %t49 = load %"compiler/eval:Ptr", ptr @G_2ecompiler_2feval_2eNullPtr
  %t50 = load i64, ptr %l5, !tbaa !24
  %t51 = insertvalue { i64, %"compiler/eval:Ptr", i64 } undef, i64 -1, 0
  %t53 = insertvalue { i64, %"compiler/eval:Ptr", i64 } %t51, %"compiler/eval:Ptr" %t49, 1
  %t55 = insertvalue { i64, %"compiler/eval:Ptr", i64 } %t53, i64 %t50, 2
  store { i64, %"compiler/eval:Ptr", i64 } %t55, ptr %rv
  br label %ret
bb16:
  %t57 = load { i64, [7 x i64] }, ptr %l2
  %t59 = extractvalue { i64, [7 x i64] } %t57, 0
  %t60 = icmp eq i64 %t59, 2
  br i1 %t60, label %bb17, label %bb18
bb17:
  %t62 = getelementptr { i64, [7 x i64] }, ptr %l2, i32 0, i32 1
  %t63 = getelementptr { { i64, [4 x i64] } }, ptr %t62, i32 0, i32 0
  %t64 = load { i64, [4 x i64] }, ptr %t63
  store { i64, [4 x i64] } %t64, ptr %l6
  br label %bb19
bb18:
  br label %bb48
bb19:
  store %olang.scope zeroinitializer, ptr %s4
  %t66 = load ptr, ptr %l0, !tbaa !29
  %t67 = load i64, ptr %l1, !tbaa !24
  %t68 = load { i64, [4 x i64] }, ptr %l6
  %t72 = call %"compiler/eval:Ptr" @compiler_2feval_2ecompiler_2feval_3aMachine_2eaddr(ptr %v0, ptr %t66, i64 %t67, { i64, [4 x i64] } %t68, i64 3)
  store %"compiler/eval:Ptr" %t72, ptr %l46
  br label %bb20
bb20:
  %t73 = load %"compiler/eval:Ptr", ptr %l46
  store %"compiler/eval:Ptr" %t73, ptr %l7
  %t74 = load ptr, ptr %l0, !tbaa !29
  %t75 = load %"compiler/eval:Ptr", ptr %l7
  %t78 = call %"compiler/eval:Ptr" @compiler_2feval_2ecompiler_2feval_3aMachine_2erdPtr(ptr %v0, ptr %t74, %"compiler/eval:Ptr" %t75)
  store %"compiler/eval:Ptr" %t78, ptr %l49
  br label %bb21
bb21:
  %t79 = load %"compiler/eval:Ptr", ptr %l49
  store %"compiler/eval:Ptr" %t79, ptr %l8
  %t80 = load ptr, ptr %l0, !tbaa !29
  store ptr %t80, ptr %l50, !tbaa !29
  %t81 = getelementptr %"compiler/eval:Ptr", ptr %l7, i32 0, i32 0
  %t82 = load i64, ptr %t81, !tbaa !24
  %t83 = getelementptr %"compiler/eval:Ptr", ptr %l7, i32 0, i32 1
  %t84 = load i64, ptr %t83, !tbaa !24
  %t86 = add i64 %t84, 8
  %t89 = call %"compiler/eval:Ptr" @compiler_2feval_3aPtr_2ector(ptr %s4, i64 %t82, i64 %t86)
  store %"compiler/eval:Ptr" %t89, ptr %l54
  br label %bb22
bb22:
  %t90 = load ptr, ptr %l50, !tbaa !29
  %t91 = load %"compiler/eval:Ptr", ptr %l54
  %t92 = call %"compiler/eval:Ptr" @compiler_2feval_2ecompiler_2feval_3aMachine_2erdPtr(ptr %v0, ptr %t90, %"compiler/eval:Ptr" %t91)
  store %"compiler/eval:Ptr" %t92, ptr %l55
  br label %bb23
bb23:
  %t93 = load %"compiler/eval:Ptr", ptr %l55
  store %"compiler/eval:Ptr" %t93, ptr %l9
  %t94 = load ptr, ptr %l0, !tbaa !29
  %t96 = getelementptr %"compiler/eval:Machine", ptr %t94, i32 0, i32 19
  %t97 = load i1, ptr %t96, !tbaa !21
  br i1 %t97, label %bb24, label %bb25
bb24:
  %t99 = load %"compiler/eval:Ptr", ptr @G_2ecompiler_2feval_2eNullPtr
  %t100 = insertvalue { i64, %"compiler/eval:Ptr", i64 } undef, i64 -1, 0
  %t102 = insertvalue { i64, %"compiler/eval:Ptr", i64 } %t100, %"compiler/eval:Ptr" %t99, 1
  %t103 = insertvalue { i64, %"compiler/eval:Ptr", i64 } %t102, i64 -1, 2
  call void @__olang_scope_close(ptr %s4)
  store { i64, %"compiler/eval:Ptr", i64 } %t103, ptr %rv
  br label %ret
bb25:
  br label %bb26
bb26:
  %t105 = getelementptr %"compiler/eval:Ptr", ptr %l8, i32 0, i32 0
  %t106 = load i64, ptr %t105, !tbaa !24
  %t108 = icmp eq i64 %t106, 0
  br i1 %t108, label %bb27, label %bb28
bb27:
  %t110 = load ptr, ptr %l0, !tbaa !29
  %t111 = load { i64, ptr }, ptr @G_2ecompiler_2feval_2eWhyNullCall, !tbaa !27
  %t112 = load ptr, ptr @__olang_prog_scope
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2erefuse(ptr %v0, ptr %t112, ptr %t110, { i64, ptr } %t111)
  br label %bb29
bb28:
  br label %bb30
bb29:
  %t115 = load %"compiler/eval:Ptr", ptr @G_2ecompiler_2feval_2eNullPtr
  %t116 = insertvalue { i64, %"compiler/eval:Ptr", i64 } undef, i64 -1, 0
  %t118 = insertvalue { i64, %"compiler/eval:Ptr", i64 } %t116, %"compiler/eval:Ptr" %t115, 1
  %t119 = insertvalue { i64, %"compiler/eval:Ptr", i64 } %t118, i64 -1, 2
  call void @__olang_scope_close(ptr %s4)
  store { i64, %"compiler/eval:Ptr", i64 } %t119, ptr %rv
  br label %ret
bb30:
  %t121 = load ptr, ptr %l0, !tbaa !29
  %t122 = getelementptr %"compiler/eval:Ptr", ptr %l8, i32 0, i32 0
  %t123 = load i64, ptr %t122, !tbaa !24
  %t126 = call %"compiler/eval:alloc" @compiler_2feval_2ecompiler_2feval_3aMachine_2eallocOf(ptr %v0, ptr %t121, i64 %t123)
  store %"compiler/eval:alloc" %t126, ptr %l68
  br label %bb31
bb31:
  %t127 = load %"compiler/eval:alloc", ptr %l68
  store %"compiler/eval:alloc" %t127, ptr %l10
  %t128 = getelementptr %"compiler/eval:alloc", ptr %l10, i32 0, i32 4
  %t129 = load i64, ptr %t128, !tbaa !24
  %t130 = load i64, ptr @G_2ecompiler_2feval_2eaCode, !tbaa !24
  %t133 = icmp ne i64 %t129, %t130
  br i1 %t133, label %bb32, label %bb33
bb32:
  %t135 = load ptr, ptr %l0, !tbaa !29
  %t136 = load { i64, ptr }, ptr @G_2ecompiler_2feval_2eWhyNotModelled, !tbaa !27
  %t137 = load ptr, ptr @__olang_prog_scope
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2erefuse(ptr %v0, ptr %t137, ptr %t135, { i64, ptr } %t136)
  br label %bb34
bb33:
  br label %bb35
bb34:
  %t140 = load %"compiler/eval:Ptr", ptr @G_2ecompiler_2feval_2eNullPtr
  %t141 = insertvalue { i64, %"compiler/eval:Ptr", i64 } undef, i64 -1, 0
  %t143 = insertvalue { i64, %"compiler/eval:Ptr", i64 } %t141, %"compiler/eval:Ptr" %t140, 1
  %t144 = insertvalue { i64, %"compiler/eval:Ptr", i64 } %t143, i64 -1, 2
  call void @__olang_scope_close(ptr %s4)
  store { i64, %"compiler/eval:Ptr", i64 } %t144, ptr %rv
  br label %ret
bb35:
  %t146 = getelementptr %"compiler/eval:alloc", ptr %l10, i32 0, i32 15
  %t147 = load i1, ptr %t146, !tbaa !21
  br i1 %t147, label %bb36, label %bb37
bb36:
  %t149 = load %"compiler/eval:Ptr", ptr %l9
  %t150 = getelementptr %"compiler/eval:alloc", ptr %l10, i32 0, i32 14
  %t151 = load i64, ptr %t150, !tbaa !24
  %t152 = insertvalue { i64, %"compiler/eval:Ptr", i64 } undef, i64 -1, 0
  %t154 = insertvalue { i64, %"compiler/eval:Ptr", i64 } %t152, %"compiler/eval:Ptr" %t149, 1
  %t156 = insertvalue { i64, %"compiler/eval:Ptr", i64 } %t154, i64 %t151, 2
  call void @__olang_scope_close(ptr %s4)
  store { i64, %"compiler/eval:Ptr", i64 } %t156, ptr %rv
  br label %ret
bb37:
  br label %bb38
bb38:
  %t158 = load ptr, ptr %l0, !tbaa !29
  %t160 = getelementptr %"compiler/eval:Machine", ptr %t158, i32 0, i32 27
  store ptr %t160, ptr %l82, !tbaa !29
  %t161 = load ptr, ptr %l0, !tbaa !29
  %t163 = getelementptr %"compiler/eval:Machine", ptr %t161, i32 0, i32 28
  %t164 = getelementptr %"compiler/eval:alloc", ptr %l10, i32 0, i32 14
  %t165 = load i64, ptr %t164, !tbaa !24
  %t168 = call { i64, [2 x i64] } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aFnKey_3e_2eAt_3ccompiler_2fmir_3aFnKey_3e(ptr %v0, ptr %t163, i64 %t165)
  store { i64, [2 x i64] } %t168, ptr %l86
  br label %bb39
bb39:
  %t169 = load ptr, ptr %l82, !tbaa !29
  %t170 = load { i64, [2 x i64] }, ptr %l86
  %t171 = call { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fmir_3aFnKey_2c_20I64_3e_2eG_H6ffe2eb17daa971b2c9d564ad72358b1(ptr %v0, ptr %t169, { i64, [2 x i64] } %t170)
  %t172 = extractvalue { i32, i64 } %t171, 1
  %t173 = extractvalue { i32, i64 } %t171, 0
  store i32 %t173, ptr %l88
  %t174 = icmp ne i32 %t173, 0
  br i1 %t174, label %bb41, label %ok.175, !prof !99
ok.175:
  store i64 %t172, ptr %l87
  br label %bb40
bb40:
  %t176 = load i64, ptr %l87, !tbaa !24
  store i64 %t176, ptr %l80, !tbaa !24
  br label %bb43
bb41:
  br label %bb42
bb42:
  store i64 -1, ptr %l80, !tbaa !24
  br label %bb43
bb43:
  %t177 = load i64, ptr %l80, !tbaa !24
  store i64 %t177, ptr %l11, !tbaa !24
  %t178 = load i64, ptr %l11, !tbaa !24
  %t180 = icmp slt i64 %t178, 0
  br i1 %t180, label %bb44, label %bb45
bb44:
  %t182 = load ptr, ptr %l0, !tbaa !29
  %t183 = load { i64, ptr }, ptr @G_2ecompiler_2feval_2eWhyNoBody, !tbaa !27
  %t184 = load ptr, ptr @__olang_prog_scope
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2erefuse(ptr %v0, ptr %t184, ptr %t182, { i64, ptr } %t183)
  br label %bb46
bb45:
  br label %bb47
bb46:
  br label %bb47
bb47:
  %t187 = load i64, ptr %l11, !tbaa !24
  %t188 = load %"compiler/eval:Ptr", ptr %l9
  %t190 = insertvalue { i64, %"compiler/eval:Ptr", i64 } undef, i64 %t187, 0
  %t192 = insertvalue { i64, %"compiler/eval:Ptr", i64 } %t190, %"compiler/eval:Ptr" %t188, 1
  %t193 = insertvalue { i64, %"compiler/eval:Ptr", i64 } %t192, i64 -1, 2
  call void @__olang_scope_close(ptr %s4)
  store { i64, %"compiler/eval:Ptr", i64 } %t193, ptr %rv
  br label %ret
bb48:
  %t195 = load { i64, [7 x i64] }, ptr %l2
  %t197 = extractvalue { i64, [7 x i64] } %t195, 0
  %t198 = icmp eq i64 %t197, 3
  br i1 %t198, label %bb49, label %bb50
bb49:
  %t200 = getelementptr { i64, [7 x i64] }, ptr %l2, i32 0, i32 1
  %t201 = getelementptr { { i64, [4 x i64] }, i64, i32 }, ptr %t200, i32 0, i32 0
  %t202 = load { i64, [4 x i64] }, ptr %t201
  store { i64, [4 x i64] } %t202, ptr %l12
  %t204 = getelementptr { i64, [7 x i64] }, ptr %l2, i32 0, i32 1
  %t205 = getelementptr { { i64, [4 x i64] }, i64, i32 }, ptr %t204, i32 0, i32 1
  %t206 = load i64, ptr %t205
  store i64 %t206, ptr %l13, !tbaa !24
  br label %bb51
bb50:
  br label %bb85
bb51:
  store %olang.scope zeroinitializer, ptr %s10
  %t208 = load ptr, ptr %l0, !tbaa !29
  %t209 = load i64, ptr %l1, !tbaa !24
  %t210 = load { i64, [4 x i64] }, ptr %l12
  %t214 = call %"compiler/eval:Ptr" @compiler_2feval_2ecompiler_2feval_3aMachine_2eaddr(ptr %v0, ptr %t208, i64 %t209, { i64, [4 x i64] } %t210, i64 3)
  store %"compiler/eval:Ptr" %t214, ptr %l103
  br label %bb52
bb52:
  %t215 = load %"compiler/eval:Ptr", ptr %l103
  store %"compiler/eval:Ptr" %t215, ptr %l14
  %t216 = load ptr, ptr %l0, !tbaa !29
  store ptr %t216, ptr %l104, !tbaa !29
  %t217 = getelementptr %"compiler/eval:Ptr", ptr %l14, i32 0, i32 0
  %t218 = load i64, ptr %t217, !tbaa !24
  %t219 = getelementptr %"compiler/eval:Ptr", ptr %l14, i32 0, i32 1
  %t220 = load i64, ptr %t219, !tbaa !24
  %t222 = add i64 %t220, 8
  %t225 = call %"compiler/eval:Ptr" @compiler_2feval_3aPtr_2ector(ptr %s10, i64 %t218, i64 %t222)
  store %"compiler/eval:Ptr" %t225, ptr %l108
  br label %bb53
bb53:
  %t226 = load ptr, ptr %l104, !tbaa !29
  %t227 = load %"compiler/eval:Ptr", ptr %l108
  %t228 = call %"compiler/eval:Ptr" @compiler_2feval_2ecompiler_2feval_3aMachine_2erdPtr(ptr %v0, ptr %t226, %"compiler/eval:Ptr" %t227)
  store %"compiler/eval:Ptr" %t228, ptr %l109
  br label %bb54
bb54:
  %t229 = load %"compiler/eval:Ptr", ptr %l109
  store %"compiler/eval:Ptr" %t229, ptr %l15
  %t230 = load ptr, ptr %l0, !tbaa !29
  %t232 = getelementptr %"compiler/eval:Machine", ptr %t230, i32 0, i32 19
  %t233 = load i1, ptr %t232, !tbaa !21
  br i1 %t233, label %bb55, label %bb56
bb55:
  %t235 = load %"compiler/eval:Ptr", ptr @G_2ecompiler_2feval_2eNullPtr
  %t236 = insertvalue { i64, %"compiler/eval:Ptr", i64 } undef, i64 -1, 0
  %t238 = insertvalue { i64, %"compiler/eval:Ptr", i64 } %t236, %"compiler/eval:Ptr" %t235, 1
  %t239 = insertvalue { i64, %"compiler/eval:Ptr", i64 } %t238, i64 -1, 2
  call void @__olang_scope_close(ptr %s10)
  store { i64, %"compiler/eval:Ptr", i64 } %t239, ptr %rv
  br label %ret
bb56:
  br label %bb57
bb57:
  %t241 = getelementptr %"compiler/eval:Ptr", ptr %l15, i32 0, i32 0
  %t242 = load i64, ptr %t241, !tbaa !24
  %t244 = icmp eq i64 %t242, 0
  br i1 %t244, label %bb58, label %bb59
bb58:
  %t246 = load ptr, ptr %l0, !tbaa !29
  %t247 = load { i64, ptr }, ptr @G_2ecompiler_2feval_2eWhyNullCall, !tbaa !27
  %t248 = load ptr, ptr @__olang_prog_scope
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2erefuse(ptr %v0, ptr %t248, ptr %t246, { i64, ptr } %t247)
  br label %bb60
bb59:
  br label %bb61
bb60:
  %t251 = load %"compiler/eval:Ptr", ptr @G_2ecompiler_2feval_2eNullPtr
  %t252 = insertvalue { i64, %"compiler/eval:Ptr", i64 } undef, i64 -1, 0
  %t254 = insertvalue { i64, %"compiler/eval:Ptr", i64 } %t252, %"compiler/eval:Ptr" %t251, 1
  %t255 = insertvalue { i64, %"compiler/eval:Ptr", i64 } %t254, i64 -1, 2
  call void @__olang_scope_close(ptr %s10)
  store { i64, %"compiler/eval:Ptr", i64 } %t255, ptr %rv
  br label %ret
bb61:
  %t257 = load ptr, ptr %l0, !tbaa !29
  store ptr %t257, ptr %l120, !tbaa !29
  %t258 = getelementptr %"compiler/eval:Ptr", ptr %l15, i32 0, i32 0
  %t259 = load i64, ptr %t258, !tbaa !24
  %t260 = getelementptr %"compiler/eval:Ptr", ptr %l15, i32 0, i32 1
  %t261 = load i64, ptr %t260, !tbaa !24
  %t262 = load i64, ptr @G_2ecompiler_2ftypes_2eAnySlotBase, !tbaa !24
  %t263 = load i64, ptr %l13, !tbaa !24
  %t266 = add i64 %t262, %t263
  %t268 = mul i64 8, %t266
  %t271 = add i64 %t261, %t268
  %t274 = call %"compiler/eval:Ptr" @compiler_2feval_3aPtr_2ector(ptr %s10, i64 %t259, i64 %t271)
  store %"compiler/eval:Ptr" %t274, ptr %l128
  br label %bb62
bb62:
  %t275 = load ptr, ptr %l120, !tbaa !29
  %t276 = load %"compiler/eval:Ptr", ptr %l128
  %t277 = call %"compiler/eval:Ptr" @compiler_2feval_2ecompiler_2feval_3aMachine_2erdPtr(ptr %v0, ptr %t275, %"compiler/eval:Ptr" %t276)
  store %"compiler/eval:Ptr" %t277, ptr %l129
  br label %bb63
bb63:
  %t278 = load %"compiler/eval:Ptr", ptr %l129
  store %"compiler/eval:Ptr" %t278, ptr %l16
  %t279 = load ptr, ptr %l0, !tbaa !29
  %t281 = getelementptr %"compiler/eval:Machine", ptr %t279, i32 0, i32 19
  %t282 = load i1, ptr %t281, !tbaa !21
  br i1 %t282, label %bb64, label %bb65
bb64:
  %t284 = load %"compiler/eval:Ptr", ptr @G_2ecompiler_2feval_2eNullPtr
  %t285 = insertvalue { i64, %"compiler/eval:Ptr", i64 } undef, i64 -1, 0
  %t287 = insertvalue { i64, %"compiler/eval:Ptr", i64 } %t285, %"compiler/eval:Ptr" %t284, 1
  %t288 = insertvalue { i64, %"compiler/eval:Ptr", i64 } %t287, i64 -1, 2
  call void @__olang_scope_close(ptr %s10)
  store { i64, %"compiler/eval:Ptr", i64 } %t288, ptr %rv
  br label %ret
bb65:
  br label %bb66
bb66:
  %t290 = getelementptr %"compiler/eval:Ptr", ptr %l16, i32 0, i32 0
  %t291 = load i64, ptr %t290, !tbaa !24
  %t293 = icmp eq i64 %t291, 0
  br i1 %t293, label %bb67, label %bb68
bb67:
  store i1 true, ptr %l136, !tbaa !21
  br label %bb70
bb68:
  %t295 = load ptr, ptr %l0, !tbaa !29
  %t296 = getelementptr %"compiler/eval:Ptr", ptr %l16, i32 0, i32 0
  %t297 = load i64, ptr %t296, !tbaa !24
  %t300 = call %"compiler/eval:alloc" @compiler_2feval_2ecompiler_2feval_3aMachine_2eallocOf(ptr %v0, ptr %t295, i64 %t297)
  store %"compiler/eval:alloc" %t300, ptr %l139
  br label %bb69
bb69:
  %t301 = getelementptr %"compiler/eval:alloc", ptr %l139, i32 0, i32 4
  %t302 = load i64, ptr %t301, !tbaa !24
  %t303 = load i64, ptr @G_2ecompiler_2feval_2eaCode, !tbaa !24
  %t306 = icmp ne i64 %t302, %t303
  store i1 %t306, ptr %l136, !tbaa !21
  br label %bb70
bb70:
  %t308 = load i1, ptr %l136, !tbaa !21
  br i1 %t308, label %bb71, label %bb72
bb71:
  %t309 = load ptr, ptr %l0, !tbaa !29
  %t310 = load { i64, ptr }, ptr @G_2ecompiler_2feval_2eWhyNotModelled, !tbaa !27
  %t311 = load ptr, ptr @__olang_prog_scope
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2erefuse(ptr %v0, ptr %t311, ptr %t309, { i64, ptr } %t310)
  br label %bb73
bb72:
  br label %bb74
bb73:
  %t314 = load %"compiler/eval:Ptr", ptr @G_2ecompiler_2feval_2eNullPtr
  %t315 = insertvalue { i64, %"compiler/eval:Ptr", i64 } undef, i64 -1, 0
  %t317 = insertvalue { i64, %"compiler/eval:Ptr", i64 } %t315, %"compiler/eval:Ptr" %t314, 1
  %t318 = insertvalue { i64, %"compiler/eval:Ptr", i64 } %t317, i64 -1, 2
  call void @__olang_scope_close(ptr %s10)
  store { i64, %"compiler/eval:Ptr", i64 } %t318, ptr %rv
  br label %ret
bb74:
  %t320 = load ptr, ptr %l0, !tbaa !29
  %t322 = getelementptr %"compiler/eval:Machine", ptr %t320, i32 0, i32 27
  store ptr %t322, ptr %l149, !tbaa !29
  %t323 = load ptr, ptr %l0, !tbaa !29
  %t325 = getelementptr %"compiler/eval:Machine", ptr %t323, i32 0, i32 28
  store ptr %t325, ptr %l151, !tbaa !29
  %t326 = load ptr, ptr %l0, !tbaa !29
  %t327 = getelementptr %"compiler/eval:Ptr", ptr %l16, i32 0, i32 0
  %t328 = load i64, ptr %t327, !tbaa !24
  %t331 = call %"compiler/eval:alloc" @compiler_2feval_2ecompiler_2feval_3aMachine_2eallocOf(ptr %v0, ptr %t326, i64 %t328)
  store %"compiler/eval:alloc" %t331, ptr %l154
  br label %bb75
bb75:
  %t332 = getelementptr %"compiler/eval:alloc", ptr %l154, i32 0, i32 14
  %t333 = load i64, ptr %t332, !tbaa !24
  %t334 = load ptr, ptr %l151, !tbaa !29
  %t336 = call { i64, [2 x i64] } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aFnKey_3e_2eAt_3ccompiler_2fmir_3aFnKey_3e(ptr %v0, ptr %t334, i64 %t333)
  store { i64, [2 x i64] } %t336, ptr %l156
  br label %bb76
bb76:
  %t337 = load ptr, ptr %l149, !tbaa !29
  %t338 = load { i64, [2 x i64] }, ptr %l156
  %t339 = call { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fmir_3aFnKey_2c_20I64_3e_2eG_H6ffe2eb17daa971b2c9d564ad72358b1(ptr %v0, ptr %t337, { i64, [2 x i64] } %t338)
  %t340 = extractvalue { i32, i64 } %t339, 1
  %t341 = extractvalue { i32, i64 } %t339, 0
  store i32 %t341, ptr %l158
  %t342 = icmp ne i32 %t341, 0
  br i1 %t342, label %bb78, label %ok.343, !prof !99
ok.343:
  store i64 %t340, ptr %l157
  br label %bb77
bb77:
  %t344 = load i64, ptr %l157, !tbaa !24
  store i64 %t344, ptr %l147, !tbaa !24
  br label %bb80
bb78:
  br label %bb79
bb79:
  store i64 -1, ptr %l147, !tbaa !24
  br label %bb80
bb80:
  %t345 = load i64, ptr %l147, !tbaa !24
  store i64 %t345, ptr %l17, !tbaa !24
  %t346 = load i64, ptr %l17, !tbaa !24
  %t348 = icmp slt i64 %t346, 0
  br i1 %t348, label %bb81, label %bb82
bb81:
  %t350 = load ptr, ptr %l0, !tbaa !29
  %t351 = load { i64, ptr }, ptr @G_2ecompiler_2feval_2eWhyNoBody, !tbaa !27
  %t352 = load ptr, ptr @__olang_prog_scope
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2erefuse(ptr %v0, ptr %t352, ptr %t350, { i64, ptr } %t351)
  br label %bb83
bb82:
  br label %bb84
bb83:
  br label %bb84
bb84:
  %t355 = load i64, ptr %l17, !tbaa !24
  %t356 = load %"compiler/eval:Ptr", ptr @G_2ecompiler_2feval_2eNullPtr
  %t358 = insertvalue { i64, %"compiler/eval:Ptr", i64 } undef, i64 %t355, 0
  %t360 = insertvalue { i64, %"compiler/eval:Ptr", i64 } %t358, %"compiler/eval:Ptr" %t356, 1
  %t361 = insertvalue { i64, %"compiler/eval:Ptr", i64 } %t360, i64 -1, 2
  call void @__olang_scope_close(ptr %s10)
  store { i64, %"compiler/eval:Ptr", i64 } %t361, ptr %rv
  br label %ret
bb85:
  call void @__olang_check_failed(ptr @olang_loc_bde43f50f3dd47_4bb44709ac02dbdb)
  unreachable
ret:
  %rr = load { i64, %"compiler/eval:Ptr", i64 }, ptr %rv
  ret { i64, %"compiler/eval:Ptr", i64 } %rr
}

define dso_local void @compiler_2feval_2ecompiler_2feval_3aMachine_2ecloseOpen(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca { i64, [5 x i64] }
  %l5 = alloca i64
  %l6 = alloca %"compiler/eval:frame"
  %l7 = alloca i64
  %l8 = alloca i64
  %l23 = alloca i1
  %l34 = alloca { i64, ptr }
  %l36 = alloca %"compiler/eval:frame"
  %l43 = alloca i1
  %l49 = alloca { i64, ptr }
  %l55 = alloca { i64, ptr }
  %l61 = alloca i1
  %l70 = alloca i1
  %l73 = alloca i1
  %t9 = alloca { i64, [5 x i64] }, align 8
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/eval:Machine", ptr %t1, i32 0, i32 17
  %t4 = load { i64, [5 x i64] }, ptr %t3
  store { i64, [5 x i64] } %t4, ptr %l2
  %t6 = load ptr, ptr %l0, !tbaa !29
  %t8 = getelementptr %"compiler/eval:Machine", ptr %t6, i32 0, i32 84
  store i1 true, ptr %t8, !tbaa !21
  store { i64, [5 x i64] } zeroinitializer, ptr %t9
  %t10 = getelementptr { i64, [5 x i64] }, ptr %t9, i32 0, i32 0
  store i64 0, ptr %t10
  %t11 = load { i64, [5 x i64] }, ptr %t9
  %t13 = load ptr, ptr %l0, !tbaa !29
  %t17 = getelementptr %"compiler/eval:Machine", ptr %t13, i32 0, i32 19
  store i1 false, ptr %t17, !tbaa !21
  %t18 = load ptr, ptr %l0, !tbaa !29
  %t22 = getelementptr %"compiler/eval:Machine", ptr %t18, i32 0, i32 17
  store { i64, [5 x i64] } %t11, ptr %t22
  br label %bb1
bb1:
  %t23 = load ptr, ptr %l0, !tbaa !29
  %t25 = getelementptr %"compiler/eval:Machine", ptr %t23, i32 0, i32 56
  %t26 = load i64, ptr %t25, !tbaa !24
  %t30 = icmp sgt i64 %t26, %a1
  br i1 %t30, label %bb2, label %bb3
bb2:
  %t32 = load ptr, ptr %l0, !tbaa !29
  %t34 = getelementptr %"compiler/eval:Machine", ptr %t32, i32 0, i32 19
  %t35 = load i1, ptr %t34, !tbaa !21
  %t37 = xor i1 %t35, true
  store i1 %t37, ptr %l23, !tbaa !21
  br label %bb4
bb3:
  store i1 false, ptr %l23, !tbaa !21
  br label %bb4
bb4:
  %t39 = load i1, ptr %l23, !tbaa !21
  %t40 = xor i1 %t39, true
  br i1 %t40, label %bb5, label %bb6
bb5:
  br label %bb36
bb6:
  br label %bb7
bb7:
  %t42 = load ptr, ptr %l0, !tbaa !29
  %t44 = getelementptr %"compiler/eval:Machine", ptr %t42, i32 0, i32 56
  %t45 = load i64, ptr %t44, !tbaa !24
  %t47 = sub i64 %t45, 1
  store i64 %t47, ptr %l5, !tbaa !24
  %t49 = load ptr, ptr %l0, !tbaa !29
  %t50 = load i64, ptr %l5, !tbaa !24
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2edropOwnDefers(ptr %v0, ptr %t49, i64 %t50)
  br label %bb8
bb8:
  %t53 = load ptr, ptr %l0, !tbaa !29
  %t55 = getelementptr %"compiler/eval:Machine", ptr %t53, i32 0, i32 55
  %t56 = load { i64, ptr }, ptr %t55, !tbaa !27
  store { i64, ptr } %t56, ptr %l34, !tbaa !27
  %t57 = load i64, ptr %l5, !tbaa !24
  %t59 = getelementptr { i64, ptr }, ptr %l34, i32 0, i32 1
  %t60 = load ptr, ptr %t59, !tbaa !27
  %t61 = getelementptr %"compiler/eval:frame", ptr %t60, i64 %t57
  call void @llvm.memmove.p0.p0.i64(ptr %l36, ptr %t61, i64 136, i1 false)
  call void @llvm.memmove.p0.p0.i64(ptr %l6, ptr %l36, i64 136, i1 false)
  %t62 = getelementptr %"compiler/eval:frame", ptr %l6, i32 0, i32 5
  %t63 = load i64, ptr %t62, !tbaa !24
  %t64 = getelementptr %"compiler/eval:frame", ptr %l6, i32 0, i32 4
  %t65 = load i64, ptr %t64, !tbaa !24
  %t68 = sub i64 %t63, %t65
  %t70 = sub i64 %t68, 1
  store i64 %t70, ptr %l7, !tbaa !24
  br label %bb9
bb9:
  %t72 = load i64, ptr %l7, !tbaa !24
  %t74 = icmp sge i64 %t72, 0
  br i1 %t74, label %bb10, label %bb11
bb10:
  %t76 = load ptr, ptr %l0, !tbaa !29
  %t78 = getelementptr %"compiler/eval:Machine", ptr %t76, i32 0, i32 19
  %t79 = load i1, ptr %t78, !tbaa !21
  %t81 = xor i1 %t79, true
  store i1 %t81, ptr %l43, !tbaa !21
  br label %bb12
bb11:
  store i1 false, ptr %l43, !tbaa !21
  br label %bb12
bb12:
  %t83 = load i1, ptr %l43, !tbaa !21
  %t84 = xor i1 %t83, true
  br i1 %t84, label %bb13, label %bb14
bb13:
  br label %bb22
bb14:
  br label %bb15
bb15:
  %t86 = load ptr, ptr %l0, !tbaa !29
  %t88 = getelementptr %"compiler/eval:Machine", ptr %t86, i32 0, i32 57
  %t89 = load { i64, ptr }, ptr %t88, !tbaa !27
  store { i64, ptr } %t89, ptr %l49, !tbaa !27
  %t90 = getelementptr %"compiler/eval:frame", ptr %l6, i32 0, i32 4
  %t91 = load i64, ptr %t90, !tbaa !24
  %t92 = load i64, ptr %l7, !tbaa !24
  %t95 = add i64 %t91, %t92
  %t97 = getelementptr { i64, ptr }, ptr %l49, i32 0, i32 1
  %t98 = load ptr, ptr %t97, !tbaa !27
  %t99 = getelementptr i64, ptr %t98, i64 %t95
  %t100 = load i64, ptr %t99, !tbaa !34
  store i64 %t100, ptr %l8, !tbaa !24
  %t102 = load ptr, ptr %l0, !tbaa !29
  %t104 = getelementptr %"compiler/eval:Machine", ptr %t102, i32 0, i32 57
  %t105 = load { i64, ptr }, ptr %t104, !tbaa !27
  store { i64, ptr } %t105, ptr %l55, !tbaa !27
  %t106 = getelementptr %"compiler/eval:frame", ptr %l6, i32 0, i32 4
  %t107 = load i64, ptr %t106, !tbaa !24
  %t108 = load i64, ptr %l7, !tbaa !24
  %t111 = add i64 %t107, %t108
  %t113 = getelementptr { i64, ptr }, ptr %l55, i32 0, i32 1
  %t114 = load ptr, ptr %t113, !tbaa !27
  %t115 = getelementptr i64, ptr %t114, i64 %t111
  store i64 0, ptr %t115, !tbaa !34
  %t116 = load ptr, ptr %l0, !tbaa !29
  %t117 = load i64, ptr %l8, !tbaa !24
  %t120 = call i1 @compiler_2feval_2ecompiler_2feval_3aMachine_2elive(ptr %v0, ptr %t116, i64 %t117)
  store i1 %t120, ptr %l61
  br label %bb16
bb16:
  %t121 = load i1, ptr %l61, !tbaa !21
  br i1 %t121, label %bb17, label %bb18
bb17:
  %t122 = load ptr, ptr %l0, !tbaa !29
  %t123 = load i64, ptr %l5, !tbaa !24
  %t124 = load i64, ptr %l8, !tbaa !24
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2ecloseNow(ptr %v0, ptr %t122, i64 %t123, i64 %t124)
  br label %bb19
bb18:
  br label %bb20
bb19:
  br label %bb20
bb20:
  br label %bb21
bb21:
  %t128 = load i64, ptr %l7, !tbaa !24
  %t130 = sub i64 %t128, 1
  store i64 %t130, ptr %l7, !tbaa !24
  br label %bb9
bb22:
  %t132 = load ptr, ptr %l0, !tbaa !29
  %t134 = getelementptr %"compiler/eval:Machine", ptr %t132, i32 0, i32 19
  %t135 = load i1, ptr %t134, !tbaa !21
  %t137 = xor i1 %t135, true
  br i1 %t137, label %bb23, label %bb24
bb23:
  %t139 = load ptr, ptr %l0, !tbaa !29
  %t140 = getelementptr %"compiler/eval:frame", ptr %l6, i32 0, i32 6
  %t141 = load i64, ptr %t140, !tbaa !24
  %t144 = call i1 @compiler_2feval_2ecompiler_2feval_3aMachine_2elive(ptr %v0, ptr %t139, i64 %t141)
  store i1 %t144, ptr %l73
  br label %bb25
bb24:
  store i1 false, ptr %l70, !tbaa !21
  br label %bb26
bb25:
  %t145 = load i1, ptr %l73, !tbaa !21
  store i1 %t145, ptr %l70, !tbaa !21
  br label %bb26
bb26:
  %t146 = load i1, ptr %l70, !tbaa !21
  br i1 %t146, label %bb27, label %bb28
bb27:
  %t147 = load ptr, ptr %l0, !tbaa !29
  %t148 = load i64, ptr %l5, !tbaa !24
  %t149 = getelementptr %"compiler/eval:frame", ptr %l6, i32 0, i32 6
  %t150 = load i64, ptr %t149, !tbaa !24
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2ecloseNow(ptr %v0, ptr %t147, i64 %t148, i64 %t150)
  br label %bb29
bb28:
  br label %bb30
bb29:
  br label %bb30
bb30:
  %t154 = load ptr, ptr %l0, !tbaa !29
  %t156 = getelementptr %"compiler/eval:Machine", ptr %t154, i32 0, i32 19
  %t157 = load i1, ptr %t156, !tbaa !21
  %t159 = xor i1 %t157, true
  br i1 %t159, label %bb31, label %bb32
bb31:
  %t161 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2edropFrame(ptr %v0, ptr %t161)
  br label %bb33
bb32:
  br label %bb34
bb33:
  br label %bb34
bb34:
  br label %bb35
bb35:
  br label %bb1
bb36:
  %t163 = load ptr, ptr %l0, !tbaa !29
  %t165 = getelementptr %"compiler/eval:Machine", ptr %t163, i32 0, i32 84
  store i1 false, ptr %t165, !tbaa !21
  %t166 = load { i64, [5 x i64] }, ptr %l2
  %t168 = load ptr, ptr %l0, !tbaa !29
  %t172 = getelementptr %"compiler/eval:Machine", ptr %t168, i32 0, i32 19
  store i1 true, ptr %t172, !tbaa !21
  %t173 = load ptr, ptr %l0, !tbaa !29
  %t177 = getelementptr %"compiler/eval:Machine", ptr %t173, i32 0, i32 17
  store { i64, [5 x i64] } %t166, ptr %t177
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2feval_2ecompiler_2feval_3aMachine_2ecloseRegion(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l3 = alloca i1
  %l13 = alloca ptr
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load i64, ptr %l1, !tbaa !24
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2edisown(ptr %v0, ptr %t1, i64 %t2)
  br label %bb1
bb1:
  %t5 = load i64, ptr %l1, !tbaa !24
  %t6 = load i64, ptr @G_2ecompiler_2feval_2eslotMask, !tbaa !24
  %t9 = and i64 %t5, %t6
  store i1 true, ptr %l3, !tbaa !21
  %t11 = load ptr, ptr %l0, !tbaa !29
  %t13 = getelementptr %"compiler/eval:Machine", ptr %t11, i32 0, i32 49
  %t17 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3ascope_3e_2eRefMut_3ccompiler_2feval_3ascope_3e(ptr %v0, ptr %v0, ptr %t13, i64 %t9)
  store ptr %t17, ptr %l13
  br label %bb2
bb2:
  %t18 = load ptr, ptr %l13, !tbaa !29
  %t20 = load i1, ptr %l3, !tbaa !21
  %t23 = getelementptr %"compiler/eval:scope", ptr %t18, i32 0, i32 15
  store i1 %t20, ptr %t23, !tbaa !21
  %t24 = load ptr, ptr %l0, !tbaa !29
  %t26 = getelementptr %"compiler/eval:Machine", ptr %t24, i32 0, i32 59
  %t27 = load i64, ptr %l1, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %t26, i64 %t27)
  br label %bb3
bb3:
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2feval_2ecompiler_2feval_3aMachine_2econvertArray(ptr %v0, ptr %a0, i64 %a1, %"compiler/eval:Ptr" %a2, { i64, [4 x i64] } %a3, i32 %a4) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca %"compiler/eval:Ptr"
  %l3 = alloca { i64, [4 x i64] }
  %l4 = alloca i32
  %l5 = alloca ptr
  %l6 = alloca i32
  %l7 = alloca i32
  %l8 = alloca i32
  %l9 = alloca %"compiler/eval:Ptr"
  %l10 = alloca i1
  %l11 = alloca i1
  %l12 = alloca i64
  %l13 = alloca i64
  %l14 = alloca %"compiler/eval:Ptr"
  %l15 = alloca { %"compiler/eval:Ptr", i64 }
  %l16 = alloca %"compiler/eval:Ptr"
  %l17 = alloca i64
  %l23 = alloca i32
  %l26 = alloca i32
  %l29 = alloca i32
  %l33 = alloca %"compiler/eval:Ptr"
  %l38 = alloca i32
  %l42 = alloca i32
  %l45 = alloca i1
  %l46 = alloca ptr
  %l49 = alloca i32
  %l50 = alloca i1
  %l52 = alloca i1
  %l57 = alloca i64
  %l58 = alloca i64
  %l59 = alloca ptr
  %l62 = alloca i32
  %l63 = alloca i64
  %l70 = alloca %"compiler/eval:Ptr"
  %l80 = alloca ptr
  %l84 = alloca %"compiler/eval:Ptr"
  %l89 = alloca { %"compiler/eval:Ptr", i64 }
  %l95 = alloca ptr
  %l98 = alloca i32
  %l99 = alloca i1
  %l103 = alloca ptr
  %l104 = alloca %"compiler/eval:Ptr"
  %l105 = alloca %"compiler/eval:Ptr"
  %l108 = alloca i64
  %l112 = alloca ptr
  %l116 = alloca %"compiler/eval:Ptr"
  %s0 = alloca %olang.scope
  %s2 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  store %"compiler/eval:Ptr" %a2, ptr %l2
  store { i64, [4 x i64] } %a3, ptr %l3
  store i32 %a4, ptr %l4
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/eval:Machine", ptr %t1, i32 0, i32 0
  %t4 = load ptr, ptr %t3, !tbaa !29
  store ptr %t4, ptr %l5, !tbaa !29
  %t6 = load ptr, ptr %l0, !tbaa !29
  %t7 = load i64, ptr %l1, !tbaa !24
  %t8 = load { i64, [4 x i64] }, ptr %l3
  %t12 = call i32 @compiler_2feval_2ecompiler_2feval_3aMachine_2eopType(ptr %v0, ptr %t6, i64 %t7, { i64, [4 x i64] } %t8)
  store i32 %t12, ptr %l23
  br label %bb1
bb1:
  %t13 = load i32, ptr %l23, !tbaa !23
  store i32 %t13, ptr %l6, !tbaa !23
  %t14 = load ptr, ptr %l0, !tbaa !29
  %t15 = load i32, ptr %l6, !tbaa !23
  %t18 = call i32 @compiler_2feval_2ecompiler_2feval_3aMachine_2earrayOf(ptr %v0, ptr %t14, i32 %t15)
  store i32 %t18, ptr %l26
  br label %bb2
bb2:
  %t19 = load i32, ptr %l26, !tbaa !23
  store i32 %t19, ptr %l7, !tbaa !23
  %t20 = load ptr, ptr %l0, !tbaa !29
  %t21 = load i32, ptr %l4, !tbaa !23
  %t24 = call i32 @compiler_2feval_2ecompiler_2feval_3aMachine_2earrayOf(ptr %v0, ptr %t20, i32 %t21)
  store i32 %t24, ptr %l29
  br label %bb3
bb3:
  %t25 = load i32, ptr %l29, !tbaa !23
  store i32 %t25, ptr %l8, !tbaa !23
  %t26 = load ptr, ptr %l0, !tbaa !29
  %t27 = load i64, ptr %l1, !tbaa !24
  %t28 = load { i64, [4 x i64] }, ptr %l3
  %t32 = call %"compiler/eval:Ptr" @compiler_2feval_2ecompiler_2feval_3aMachine_2eaddr(ptr %v0, ptr %t26, i64 %t27, { i64, [4 x i64] } %t28, i64 1)
  store %"compiler/eval:Ptr" %t32, ptr %l33
  br label %bb4
bb4:
  %t33 = load %"compiler/eval:Ptr", ptr %l33
  store %"compiler/eval:Ptr" %t33, ptr %l9
  %t34 = load ptr, ptr %l0, !tbaa !29
  %t36 = getelementptr %"compiler/eval:Machine", ptr %t34, i32 0, i32 19
  %t37 = load i1, ptr %t36, !tbaa !21
  br i1 %t37, label %bb5, label %bb6
bb5:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb6:
  br label %bb7
bb7:
  %t39 = load ptr, ptr %l5, !tbaa !29
  %t40 = load i32, ptr %l7, !tbaa !23
  %t43 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eLength(ptr %v0, ptr %t39, i32 %t40)
  store i32 %t43, ptr %l38
  br label %bb8
bb8:
  %t44 = load i32, ptr %l38, !tbaa !23
  %t45 = icmp ne i32 %t44, 0
  store i1 %t45, ptr %l10, !tbaa !21
  %t47 = load ptr, ptr %l5, !tbaa !29
  %t48 = load i32, ptr %l8, !tbaa !23
  %t51 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eLength(ptr %v0, ptr %t47, i32 %t48)
  store i32 %t51, ptr %l42
  br label %bb9
bb9:
  %t52 = load i32, ptr %l42, !tbaa !23
  %t53 = icmp ne i32 %t52, 0
  store i1 %t53, ptr %l11, !tbaa !21
  %t55 = load i1, ptr %l10, !tbaa !21
  br i1 %t55, label %bb10, label %bb11
bb10:
  %t57 = load ptr, ptr %l5, !tbaa !29
  store ptr %t57, ptr %l46, !tbaa !29
  %t58 = load ptr, ptr %l5, !tbaa !29
  %t59 = load i32, ptr %l6, !tbaa !23
  %t62 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %v0, ptr %t58, i32 %t59)
  store i32 %t62, ptr %l49
  br label %bb12
bb11:
  store i1 false, ptr %l45, !tbaa !21
  br label %bb14
bb12:
  %t63 = load ptr, ptr %l46, !tbaa !29
  %t64 = load i32, ptr %l49, !tbaa !23
  %t65 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsRef(ptr %v0, ptr %t63, i32 %t64)
  store i1 %t65, ptr %l50
  br label %bb13
bb13:
  %t66 = load i1, ptr %l50, !tbaa !21
  %t67 = xor i1 %t66, true
  store i1 %t67, ptr %l45, !tbaa !21
  br label %bb14
bb14:
  %t69 = load i1, ptr %l45, !tbaa !21
  br i1 %t69, label %bb15, label %bb16
bb15:
  %t70 = load i1, ptr %l11, !tbaa !21
  %t72 = xor i1 %t70, true
  store i1 %t72, ptr %l52, !tbaa !21
  br label %bb17
bb16:
  store i1 false, ptr %l52, !tbaa !21
  br label %bb17
bb17:
  %t74 = load i1, ptr %l52, !tbaa !21
  br i1 %t74, label %bb18, label %bb19
bb18:
  store %olang.scope zeroinitializer, ptr %s2
  %t75 = load ptr, ptr %l0, !tbaa !29
  %t76 = load i32, ptr %l7, !tbaa !23
  %t79 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2efixedLen(ptr %v0, ptr %t75, i32 %t76)
  store i64 %t79, ptr %l57
  br label %bb20
bb19:
  br label %bb31
bb20:
  %t80 = load i64, ptr %l57, !tbaa !24
  store i64 %t80, ptr %l12, !tbaa !24
  %t81 = load i64, ptr %l12, !tbaa !24
  store i64 %t81, ptr %l58, !tbaa !24
  %t82 = load ptr, ptr %l0, !tbaa !29
  store ptr %t82, ptr %l59, !tbaa !29
  %t83 = load ptr, ptr %l5, !tbaa !29
  %t84 = load i32, ptr %l7, !tbaa !23
  %t87 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eElem(ptr %v0, ptr %t83, i32 %t84)
  store i32 %t87, ptr %l62
  br label %bb21
bb21:
  %t88 = load ptr, ptr %l59, !tbaa !29
  %t89 = load i32, ptr %l62, !tbaa !23
  %t90 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2esize(ptr %v0, ptr %t88, i32 %t89)
  store i64 %t90, ptr %l63
  br label %bb22
bb22:
  %t91 = load i64, ptr %l58, !tbaa !24
  %t92 = load i64, ptr %l63, !tbaa !24
  %t93 = mul i64 %t91, %t92
  store i64 %t93, ptr %l13, !tbaa !24
  %t95 = load ptr, ptr %l0, !tbaa !29
  %t96 = load i64, ptr %l13, !tbaa !24
  %t97 = load i64, ptr @G_2ecompiler_2feval_2eaValue, !tbaa !24
  %t98 = load ptr, ptr %l0, !tbaa !29
  %t100 = getelementptr %"compiler/eval:Machine", ptr %t98, i32 0, i32 67
  %t101 = load i64, ptr %t100, !tbaa !24
  %t106 = call %"compiler/eval:Ptr" @compiler_2feval_2ecompiler_2feval_3aMachine_2eallocate(ptr %v0, ptr %t95, i64 %t96, i64 %t97, i64 %t101)
  store %"compiler/eval:Ptr" %t106, ptr %l70
  br label %bb23
bb23:
  %t107 = load %"compiler/eval:Ptr", ptr %l70
  store %"compiler/eval:Ptr" %t107, ptr %l14
  %t108 = load ptr, ptr %l0, !tbaa !29
  %t110 = getelementptr %"compiler/eval:Machine", ptr %t108, i32 0, i32 19
  %t111 = load i1, ptr %t110, !tbaa !21
  br i1 %t111, label %bb24, label %bb25
bb24:
  call void @__olang_scope_close(ptr %s2)
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb25:
  br label %bb26
bb26:
  %t113 = load ptr, ptr %l0, !tbaa !29
  %t114 = load %"compiler/eval:Ptr", ptr %l14
  %t115 = load %"compiler/eval:Ptr", ptr %l9
  %t116 = load i64, ptr %l13, !tbaa !24
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2ecopy(ptr %v0, ptr %t113, %"compiler/eval:Ptr" %t114, %"compiler/eval:Ptr" %t115, i64 %t116)
  br label %bb27
bb27:
  %t121 = load ptr, ptr %l0, !tbaa !29
  %t122 = load %"compiler/eval:Ptr", ptr %l2
  %t123 = load i64, ptr %l12, !tbaa !24
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2ewr(ptr %v0, ptr %t121, %"compiler/eval:Ptr" %t122, i64 8, i64 %t123)
  br label %bb28
bb28:
  %t127 = load ptr, ptr %l0, !tbaa !29
  store ptr %t127, ptr %l80, !tbaa !29
  %t128 = getelementptr %"compiler/eval:Ptr", ptr %l2, i32 0, i32 0
  %t129 = load i64, ptr %t128, !tbaa !24
  %t130 = getelementptr %"compiler/eval:Ptr", ptr %l2, i32 0, i32 1
  %t131 = load i64, ptr %t130, !tbaa !24
  %t133 = add i64 %t131, 8
  %t136 = call %"compiler/eval:Ptr" @compiler_2feval_3aPtr_2ector(ptr %s2, i64 %t129, i64 %t133)
  store %"compiler/eval:Ptr" %t136, ptr %l84
  br label %bb29
bb29:
  %t137 = load %"compiler/eval:Ptr", ptr %l14
  %t138 = load ptr, ptr %l80, !tbaa !29
  %t139 = load %"compiler/eval:Ptr", ptr %l84
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2ewrPtr(ptr %v0, ptr %t138, %"compiler/eval:Ptr" %t139, %"compiler/eval:Ptr" %t137)
  br label %bb30
bb30:
  call void @__olang_scope_close(ptr %s2)
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb31:
  %t141 = load ptr, ptr %l0, !tbaa !29
  %t142 = load %"compiler/eval:Ptr", ptr %l9
  %t143 = load i32, ptr %l6, !tbaa !23
  %t147 = call { %"compiler/eval:Ptr", i64 } @compiler_2feval_2ecompiler_2feval_3aMachine_2earrayView(ptr %v0, ptr %t141, %"compiler/eval:Ptr" %t142, i32 %t143)
  store { %"compiler/eval:Ptr", i64 } %t147, ptr %l89
  br label %bb32
bb32:
  %t148 = load { %"compiler/eval:Ptr", i64 }, ptr %l89
  store { %"compiler/eval:Ptr", i64 } %t148, ptr %l15
  %t149 = getelementptr { %"compiler/eval:Ptr", i64 }, ptr %l15, i32 0, i32 0
  %t150 = load %"compiler/eval:Ptr", ptr %t149
  store %"compiler/eval:Ptr" %t150, ptr %l16
  %t152 = getelementptr { %"compiler/eval:Ptr", i64 }, ptr %l15, i32 0, i32 1
  %t153 = load i64, ptr %t152, !tbaa !24
  store i64 %t153, ptr %l17, !tbaa !24
  %t155 = load ptr, ptr %l0, !tbaa !29
  %t157 = getelementptr %"compiler/eval:Machine", ptr %t155, i32 0, i32 19
  %t158 = load i1, ptr %t157, !tbaa !21
  br i1 %t158, label %bb33, label %bb34
bb33:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb34:
  br label %bb35
bb35:
  %t160 = load i1, ptr %l11, !tbaa !21
  br i1 %t160, label %bb36, label %bb37
bb36:
  %t162 = load ptr, ptr %l5, !tbaa !29
  store ptr %t162, ptr %l95, !tbaa !29
  %t163 = load ptr, ptr %l5, !tbaa !29
  %t164 = load i32, ptr %l4, !tbaa !23
  %t167 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %v0, ptr %t163, i32 %t164)
  store i32 %t167, ptr %l98
  br label %bb38
bb37:
  br label %bb46
bb38:
  %t168 = load ptr, ptr %l95, !tbaa !29
  %t169 = load i32, ptr %l98, !tbaa !23
  %t170 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsRef(ptr %v0, ptr %t168, i32 %t169)
  store i1 %t170, ptr %l99
  br label %bb39
bb39:
  %t171 = load i1, ptr %l99, !tbaa !21
  br i1 %t171, label %bb40, label %bb41
bb40:
  %t172 = load ptr, ptr %l0, !tbaa !29
  %t173 = load %"compiler/eval:Ptr", ptr %l2
  %t174 = load %"compiler/eval:Ptr", ptr %l16
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2ewrPtr(ptr %v0, ptr %t172, %"compiler/eval:Ptr" %t173, %"compiler/eval:Ptr" %t174)
  br label %bb42
bb41:
  %t178 = load ptr, ptr %l0, !tbaa !29
  store ptr %t178, ptr %l103, !tbaa !29
  %t179 = load %"compiler/eval:Ptr", ptr %l2
  store %"compiler/eval:Ptr" %t179, ptr %l104
  %t180 = load %"compiler/eval:Ptr", ptr %l16
  store %"compiler/eval:Ptr" %t180, ptr %l105
  %t181 = load ptr, ptr %l0, !tbaa !29
  %t182 = load i32, ptr %l8, !tbaa !23
  %t185 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2esize(ptr %v0, ptr %t181, i32 %t182)
  store i64 %t185, ptr %l108
  br label %bb43
bb42:
  br label %bb45
bb43:
  %t186 = load ptr, ptr %l103, !tbaa !29
  %t187 = load %"compiler/eval:Ptr", ptr %l104
  %t188 = load %"compiler/eval:Ptr", ptr %l105
  %t189 = load i64, ptr %l108, !tbaa !24
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2ecopy(ptr %v0, ptr %t186, %"compiler/eval:Ptr" %t187, %"compiler/eval:Ptr" %t188, i64 %t189)
  br label %bb44
bb44:
  br label %bb45
bb45:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb46:
  %t190 = load ptr, ptr %l0, !tbaa !29
  %t191 = load %"compiler/eval:Ptr", ptr %l2
  %t192 = load i64, ptr %l17, !tbaa !24
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2ewr(ptr %v0, ptr %t190, %"compiler/eval:Ptr" %t191, i64 8, i64 %t192)
  br label %bb47
bb47:
  %t196 = load ptr, ptr %l0, !tbaa !29
  store ptr %t196, ptr %l112, !tbaa !29
  %t197 = getelementptr %"compiler/eval:Ptr", ptr %l2, i32 0, i32 0
  %t198 = load i64, ptr %t197, !tbaa !24
  %t199 = getelementptr %"compiler/eval:Ptr", ptr %l2, i32 0, i32 1
  %t200 = load i64, ptr %t199, !tbaa !24
  %t202 = add i64 %t200, 8
  %t205 = call %"compiler/eval:Ptr" @compiler_2feval_3aPtr_2ector(ptr %s0, i64 %t198, i64 %t202)
  store %"compiler/eval:Ptr" %t205, ptr %l116
  br label %bb48
bb48:
  %t206 = load %"compiler/eval:Ptr", ptr %l16
  %t207 = load ptr, ptr %l112, !tbaa !29
  %t208 = load %"compiler/eval:Ptr", ptr %l116
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2ewrPtr(ptr %v0, ptr %t207, %"compiler/eval:Ptr" %t208, %"compiler/eval:Ptr" %t206)
  br label %bb49
bb49:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2feval_2ecompiler_2feval_3aMachine_2edropFrame(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca %"compiler/eval:frame"
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l9 = alloca i64
  %l14 = alloca { i64, ptr }
  %l16 = alloca %"compiler/eval:frame"
  %l23 = alloca i64
  %l26 = alloca i64
  %l45 = alloca { i64, ptr }
  %l52 = alloca i1
  %l59 = alloca i1
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/eval:Machine", ptr %t1, i32 0, i32 56
  %t4 = load i64, ptr %t3, !tbaa !24
  %t6 = sub i64 %t4, 1
  %t8 = load ptr, ptr %l0, !tbaa !29
  %t10 = getelementptr %"compiler/eval:Machine", ptr %t8, i32 0, i32 55
  %t11 = load { i64, ptr }, ptr %t10, !tbaa !27
  store { i64, ptr } %t11, ptr %l14, !tbaa !27
  %t14 = getelementptr { i64, ptr }, ptr %l14, i32 0, i32 1
  %t15 = load ptr, ptr %t14, !tbaa !27
  %t16 = getelementptr %"compiler/eval:frame", ptr %t15, i64 %t6
  call void @llvm.memmove.p0.p0.i64(ptr %l16, ptr %t16, i64 136, i1 false)
  call void @llvm.memmove.p0.p0.i64(ptr %l2, ptr %l16, i64 136, i1 false)
  store i64 0, ptr %l3, !tbaa !24
  %t17 = getelementptr %"compiler/eval:frame", ptr %l2, i32 0, i32 5
  %t18 = load i64, ptr %t17, !tbaa !24
  %t19 = getelementptr %"compiler/eval:frame", ptr %l2, i32 0, i32 4
  %t20 = load i64, ptr %t19, !tbaa !24
  %t23 = sub i64 %t18, %t20
  store i64 %t23, ptr %l4, !tbaa !24
  store i64 1, ptr %l5, !tbaa !24
  %t25 = load i64, ptr %l4, !tbaa !24
  %t26 = load i64, ptr %l3, !tbaa !24
  %t29 = icmp sgt i64 %t25, %t26
  br i1 %t29, label %bb1, label %bb2
bb1:
  %t31 = load i64, ptr %l5, !tbaa !24
  %t33 = icmp sgt i64 %t31, 0
  br i1 %t33, label %bb3, label %bb4
bb2:
  store i64 0, ptr %l23, !tbaa !24
  br label %bb6
bb3:
  %t35 = load i64, ptr %l4, !tbaa !24
  %t36 = load i64, ptr %l3, !tbaa !24
  %t39 = sub i64 %t35, %t36
  %t40 = load i64, ptr %l5, !tbaa !24
  %t43 = add i64 %t39, %t40
  %t45 = sub i64 %t43, 1
  %t46 = load i64, ptr %l5, !tbaa !24
  %t49 = sdiv i64 %t45, %t46
  store i64 %t49, ptr %l26, !tbaa !24
  br label %bb5
bb4:
  store i64 0, ptr %l26, !tbaa !24
  br label %bb5
bb5:
  %t51 = load i64, ptr %l26, !tbaa !24
  store i64 %t51, ptr %l23, !tbaa !24
  br label %bb6
bb6:
  %t52 = load i64, ptr %l23, !tbaa !24
  store i64 %t52, ptr %l6, !tbaa !24
  store i64 0, ptr %l7, !tbaa !24
  br label %bb7
bb7:
  %t53 = load i64, ptr %l7, !tbaa !24
  %t54 = load i64, ptr %l6, !tbaa !24
  %t57 = icmp slt i64 %t53, %t54
  %t59 = xor i1 %t57, true
  br i1 %t59, label %bb8, label %bb9
bb8:
  br label %bb17
bb9:
  br label %bb10
bb10:
  %t61 = load i64, ptr %l3, !tbaa !24
  %t62 = load i64, ptr %l7, !tbaa !24
  %t63 = load i64, ptr %l5, !tbaa !24
  %t66 = mul i64 %t62, %t63
  %t69 = add i64 %t61, %t66
  %t71 = load ptr, ptr %l0, !tbaa !29
  %t73 = getelementptr %"compiler/eval:Machine", ptr %t71, i32 0, i32 57
  %t74 = load { i64, ptr }, ptr %t73, !tbaa !27
  store { i64, ptr } %t74, ptr %l45, !tbaa !27
  %t75 = getelementptr %"compiler/eval:frame", ptr %l2, i32 0, i32 4
  %t76 = load i64, ptr %t75, !tbaa !24
  %t80 = add i64 %t76, %t69
  %t82 = getelementptr { i64, ptr }, ptr %l45, i32 0, i32 1
  %t83 = load ptr, ptr %t82, !tbaa !27
  %t84 = getelementptr i64, ptr %t83, i64 %t80
  %t85 = load i64, ptr %t84, !tbaa !34
  store i64 %t85, ptr %l9, !tbaa !24
  %t87 = load ptr, ptr %l0, !tbaa !29
  %t88 = load i64, ptr %l9, !tbaa !24
  %t91 = call i1 @compiler_2feval_2ecompiler_2feval_3aMachine_2elive(ptr %v0, ptr %t87, i64 %t88)
  store i1 %t91, ptr %l52
  br label %bb11
bb11:
  %t92 = load i1, ptr %l52, !tbaa !21
  br i1 %t92, label %bb12, label %bb13
bb12:
  %t93 = load ptr, ptr %l0, !tbaa !29
  %t94 = load i64, ptr %l9, !tbaa !24
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2edropScope(ptr %v0, ptr %t93, i64 %t94)
  br label %bb14
bb13:
  br label %bb15
bb14:
  br label %bb15
bb15:
  br label %bb16
bb16:
  %t97 = load i64, ptr %l7, !tbaa !24
  %t99 = add i64 %t97, 1
  store i64 %t99, ptr %l7, !tbaa !24
  br label %bb7
bb17:
  %t101 = load ptr, ptr %l0, !tbaa !29
  %t102 = getelementptr %"compiler/eval:frame", ptr %l2, i32 0, i32 6
  %t103 = load i64, ptr %t102, !tbaa !24
  %t106 = call i1 @compiler_2feval_2ecompiler_2feval_3aMachine_2elive(ptr %v0, ptr %t101, i64 %t103)
  store i1 %t106, ptr %l59
  br label %bb18
bb18:
  %t107 = load i1, ptr %l59, !tbaa !21
  br i1 %t107, label %bb19, label %bb20
bb19:
  %t108 = load ptr, ptr %l0, !tbaa !29
  %t109 = getelementptr %"compiler/eval:frame", ptr %l2, i32 0, i32 6
  %t110 = load i64, ptr %t109, !tbaa !24
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2edropScope(ptr %v0, ptr %t108, i64 %t110)
  br label %bb21
bb20:
  br label %bb22
bb21:
  br label %bb22
bb22:
  %t113 = load ptr, ptr %l0, !tbaa !29
  %t115 = getelementptr %"compiler/eval:Machine", ptr %t113, i32 0, i32 59
  %t116 = getelementptr %"compiler/eval:frame", ptr %l2, i32 0, i32 9
  %t117 = load i64, ptr %t116, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eTruncate_3cI64_3e(ptr %v0, ptr %t115, i64 %t117)
  br label %bb23
bb23:
  %t120 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2epopFrame(ptr %v0, ptr %t120)
  br label %bb24
bb24:
  br label %ret
ret:
  ret void
}

define dso_local i32 @compiler_2feval_2ecompiler_2feval_3aMachine_2eelemOf(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l2 = alloca ptr
  %l3 = alloca i32
  %l8 = alloca i32
  %l11 = alloca i32
  %l14 = alloca ptr
  %l17 = alloca i32
  %l18 = alloca i32
  %l21 = alloca i32
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
  store i32 %t10, ptr %l8
  br label %bb1
bb1:
  %t11 = load i32, ptr %l8, !tbaa !23
  store i32 %t11, ptr %l3, !tbaa !23
  %t12 = load ptr, ptr %l2, !tbaa !29
  %t13 = load i32, ptr %l3, !tbaa !23
  %t16 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t12, i32 %t13)
  store i32 %t16, ptr %l11
  br label %bb2
bb2:
  %t17 = load i32, ptr %l11, !range !{i32 0, i32 33}
  %t19 = trunc i64 20 to i32
  %t20 = icmp eq i32 %t17, %t19
  br i1 %t20, label %bb3, label %bb4
bb3:
  %t22 = load ptr, ptr %l2, !tbaa !29
  store ptr %t22, ptr %l14, !tbaa !29
  %t23 = load ptr, ptr %l2, !tbaa !29
  %t24 = load i32, ptr %l3, !tbaa !23
  %t27 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eReferent(ptr %v0, ptr %t23, i32 %t24)
  store i32 %t27, ptr %l17
  br label %bb5
bb4:
  br label %bb7
bb5:
  %t28 = load ptr, ptr %l14, !tbaa !29
  %t29 = load i32, ptr %l17, !tbaa !23
  %t30 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %v0, ptr %t28, i32 %t29)
  store i32 %t30, ptr %l18
  br label %bb6
bb6:
  %t31 = load i32, ptr %l18, !tbaa !23
  store i32 %t31, ptr %l3, !tbaa !23
  br label %bb7
bb7:
  %t32 = load ptr, ptr %l2, !tbaa !29
  %t33 = load i32, ptr %l3, !tbaa !23
  %t36 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eElem(ptr %v0, ptr %t32, i32 %t33)
  store i32 %t36, ptr %l21
  br label %bb8
bb8:
  %t37 = load i32, ptr %l21, !tbaa !23
  store i32 %t37, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local { %"compiler/eval:Ptr", i32 } @compiler_2feval_2ecompiler_2feval_3aMachine_2eelement(ptr %v0, ptr %a0, %"compiler/eval:Ptr" %a1, i32 %a2, i64 %a3) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca i32
  %l3 = alloca i64
  %l4 = alloca i32
  %l5 = alloca { %"compiler/eval:Ptr", i64 }
  %l6 = alloca %"compiler/eval:Ptr"
  %l7 = alloca i64
  %l10 = alloca i32
  %l14 = alloca { %"compiler/eval:Ptr", i64 }
  %l24 = alloca i1
  %l33 = alloca i64
  %l34 = alloca i64
  %l35 = alloca i64
  %l38 = alloca i64
  %l41 = alloca %"compiler/eval:Ptr"
  %s0 = alloca %olang.scope
  %rv = alloca { %"compiler/eval:Ptr", i32 }
  store ptr %a0, ptr %l0
  store i32 %a2, ptr %l2
  store i64 %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load i32, ptr %l2, !tbaa !23
  %t5 = call i32 @compiler_2feval_2ecompiler_2feval_3aMachine_2eelemOf(ptr %v0, ptr %t1, i32 %t2)
  store i32 %t5, ptr %l10
  br label %bb1
bb1:
  %t6 = load i32, ptr %l10, !tbaa !23
  store i32 %t6, ptr %l4, !tbaa !23
  %t7 = load ptr, ptr %l0, !tbaa !29
  %t9 = load i32, ptr %l2, !tbaa !23
  %t13 = call { %"compiler/eval:Ptr", i64 } @compiler_2feval_2ecompiler_2feval_3aMachine_2earrayView(ptr %v0, ptr %t7, %"compiler/eval:Ptr" %a1, i32 %t9)
  store { %"compiler/eval:Ptr", i64 } %t13, ptr %l14
  br label %bb2
bb2:
  %t14 = load { %"compiler/eval:Ptr", i64 }, ptr %l14
  store { %"compiler/eval:Ptr", i64 } %t14, ptr %l5
  %t15 = getelementptr { %"compiler/eval:Ptr", i64 }, ptr %l5, i32 0, i32 0
  %t16 = load %"compiler/eval:Ptr", ptr %t15
  store %"compiler/eval:Ptr" %t16, ptr %l6
  %t18 = getelementptr { %"compiler/eval:Ptr", i64 }, ptr %l5, i32 0, i32 1
  %t19 = load i64, ptr %t18, !tbaa !24
  store i64 %t19, ptr %l7, !tbaa !24
  %t21 = load ptr, ptr %l0, !tbaa !29
  %t23 = getelementptr %"compiler/eval:Machine", ptr %t21, i32 0, i32 19
  %t24 = load i1, ptr %t23, !tbaa !21
  br i1 %t24, label %bb3, label %bb4
bb3:
  %t26 = load %"compiler/eval:Ptr", ptr @G_2ecompiler_2feval_2eNullPtr
  %t27 = load i32, ptr %l4, !tbaa !23
  %t29 = insertvalue { %"compiler/eval:Ptr", i32 } undef, %"compiler/eval:Ptr" %t26, 0
  %t31 = insertvalue { %"compiler/eval:Ptr", i32 } %t29, i32 %t27, 1
  call void @__olang_scope_close(ptr %s0)
  store { %"compiler/eval:Ptr", i32 } %t31, ptr %rv
  br label %ret
bb4:
  br label %bb5
bb5:
  %t33 = load i64, ptr %l3, !tbaa !24
  %t35 = icmp slt i64 %t33, 0
  br i1 %t35, label %bb6, label %bb7
bb6:
  store i1 true, ptr %l24, !tbaa !21
  br label %bb8
bb7:
  %t37 = load i64, ptr %l3, !tbaa !24
  %t38 = load i64, ptr %l7, !tbaa !24
  %t41 = icmp sge i64 %t37, %t38
  store i1 %t41, ptr %l24, !tbaa !21
  br label %bb8
bb8:
  %t43 = load i1, ptr %l24, !tbaa !21
  br i1 %t43, label %bb9, label %bb10
bb9:
  %t44 = load ptr, ptr %l0, !tbaa !29
  %t45 = load { i64, ptr }, ptr @G_2ecompiler_2feval_2eWhyOutside, !tbaa !27
  %t46 = load ptr, ptr @__olang_prog_scope
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2erefuse(ptr %v0, ptr %t46, ptr %t44, { i64, ptr } %t45)
  br label %bb11
bb10:
  br label %bb12
bb11:
  %t49 = load %"compiler/eval:Ptr", ptr @G_2ecompiler_2feval_2eNullPtr
  %t50 = load i32, ptr %l4, !tbaa !23
  %t52 = insertvalue { %"compiler/eval:Ptr", i32 } undef, %"compiler/eval:Ptr" %t49, 0
  %t54 = insertvalue { %"compiler/eval:Ptr", i32 } %t52, i32 %t50, 1
  call void @__olang_scope_close(ptr %s0)
  store { %"compiler/eval:Ptr", i32 } %t54, ptr %rv
  br label %ret
bb12:
  %t56 = getelementptr %"compiler/eval:Ptr", ptr %l6, i32 0, i32 0
  %t57 = load i64, ptr %t56, !tbaa !24
  store i64 %t57, ptr %l33, !tbaa !24
  %t58 = getelementptr %"compiler/eval:Ptr", ptr %l6, i32 0, i32 1
  %t59 = load i64, ptr %t58, !tbaa !24
  store i64 %t59, ptr %l34, !tbaa !24
  %t60 = load i64, ptr %l3, !tbaa !24
  store i64 %t60, ptr %l35, !tbaa !24
  %t61 = load ptr, ptr %l0, !tbaa !29
  %t62 = load i32, ptr %l4, !tbaa !23
  %t65 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2esize(ptr %v0, ptr %t61, i32 %t62)
  store i64 %t65, ptr %l38
  br label %bb13
bb13:
  %t66 = load i64, ptr %l35, !tbaa !24
  %t67 = load i64, ptr %l38, !tbaa !24
  %t68 = mul i64 %t66, %t67
  %t69 = load i64, ptr %l34, !tbaa !24
  %t71 = add i64 %t69, %t68
  %t72 = load i64, ptr %l33, !tbaa !24
  %t74 = call %"compiler/eval:Ptr" @compiler_2feval_3aPtr_2ector(ptr %s0, i64 %t72, i64 %t71)
  store %"compiler/eval:Ptr" %t74, ptr %l41
  br label %bb14
bb14:
  %t75 = load i32, ptr %l4, !tbaa !23
  %t76 = load %"compiler/eval:Ptr", ptr %l41
  %t77 = insertvalue { %"compiler/eval:Ptr", i32 } undef, %"compiler/eval:Ptr" %t76, 0
  %t79 = insertvalue { %"compiler/eval:Ptr", i32 } %t77, i32 %t75, 1
  call void @__olang_scope_close(ptr %s0)
  store { %"compiler/eval:Ptr", i32 } %t79, ptr %rv
  br label %ret
ret:
  %rr = load { %"compiler/eval:Ptr", i32 }, ptr %rv
  ret { %"compiler/eval:Ptr", i32 } %rr
}

define dso_local i1 @compiler_2feval_2ecompiler_2feval_3aMachine_2eendsProgram(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca %"compiler/eval:task"
  %l6 = alloca %"compiler/eval:task"
  %l10 = alloca ptr
  %l14 = alloca %"compiler/mir:Task"
  %rv = alloca i1
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/eval:Machine", ptr %t1, i32 0, i32 53
  %t7 = call %"compiler/eval:task" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3atask_3e_2eAt_3ccompiler_2feval_3atask_3e(ptr %v0, ptr %t3, i64 %a1)
  store %"compiler/eval:task" %t7, ptr %l6
  br label %bb1
bb1:
  %t8 = load %"compiler/eval:task", ptr %l6
  store %"compiler/eval:task" %t8, ptr %l2
  %t9 = load ptr, ptr %l0, !tbaa !29
  %t11 = getelementptr %"compiler/eval:Machine", ptr %t9, i32 0, i32 22
  %t12 = getelementptr %"compiler/eval:task", ptr %l2, i32 0, i32 0
  %t13 = load i64, ptr %t12, !tbaa !24
  %t16 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aFn_26_3e_2eAt_3ccompiler_2fmir_3aFn_26_3e(ptr %v0, ptr %v0, ptr %t11, i64 %t13)
  store ptr %t16, ptr %l10
  br label %bb2
bb2:
  %t17 = load ptr, ptr %l10, !tbaa !29
  %t19 = getelementptr %"compiler/mir:Fn", ptr %t17, i32 0, i32 16
  %t20 = getelementptr %"compiler/eval:task", ptr %l2, i32 0, i32 1
  %t21 = load i64, ptr %t20, !tbaa !24
  %t24 = call %"compiler/mir:Task" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aTask_3e_2eAt_3ccompiler_2fmir_3aTask_3e(ptr %v0, ptr %t19, i64 %t21)
  store %"compiler/mir:Task" %t24, ptr %l14
  br label %bb3
bb3:
  %t25 = getelementptr %"compiler/mir:Task", ptr %l14, i32 0, i32 5
  %t26 = getelementptr %"compiler/mir:Range", ptr %t25, i32 0, i32 1
  %t27 = load i32, ptr %t26, !tbaa !23
  %t29 = icmp sgt i32 %t27, 0
  store i1 %t29, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2eenter(ptr %v0, ptr %a0, i64 %a1, { i64, [7 x i64] } %a2, %"compiler/mir:Range" %a3, %"compiler/mir:Range" %a4, i64 %a5, i64 %a6) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca { i64, [7 x i64] }
  %l3 = alloca %"compiler/mir:Range"
  %l4 = alloca %"compiler/mir:Range"
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca ptr
  %l8 = alloca { i64, %"compiler/eval:Ptr", i64 }
  %l9 = alloca i64
  %l10 = alloca %"compiler/eval:Ptr"
  %l12 = alloca i1
  %l13 = alloca i32
  %l14 = alloca i64
  %l15 = alloca i1
  %l16 = alloca i64
  %l17 = alloca i64
  %l18 = alloca ptr
  %l19 = alloca i1
  %l20 = alloca i32
  %l21 = alloca i32
  %l22 = alloca i32
  %l23 = alloca i32
  %l24 = alloca i32
  %l25 = alloca i32
  %l26 = alloca i32
  %l27 = alloca i64
  %l28 = alloca ptr
  %l29 = alloca i64
  %l31 = alloca i1
  %l32 = alloca { i64, ptr }
  %l33 = alloca i64
  %l34 = alloca i64
  %l35 = alloca i64
  %l36 = alloca i64
  %l37 = alloca i64
  %l38 = alloca i64
  %l39 = alloca i64
  %l40 = alloca { i64, [1 x i64] }
  %l41 = alloca i64
  %l42 = alloca i64
  %l43 = alloca i1
  %l44 = alloca i64
  %l45 = alloca i64
  %l46 = alloca i64
  %l47 = alloca i64
  %l48 = alloca i64
  %l49 = alloca i64
  %l51 = alloca i64
  %l55 = alloca ptr
  %l59 = alloca { i64, %"compiler/eval:Ptr", i64 }
  %l71 = alloca i32
  %l77 = alloca ptr
  %l85 = alloca ptr
  %l89 = alloca ptr
  %l91 = alloca i64
  %l95 = alloca %"compiler/eval:genRec"
  %l119 = alloca i64
  %l124 = alloca i64
  %l129 = alloca i64
  %l136 = alloca ptr
  %l137 = alloca i1
  %l144 = alloca i32
  %l147 = alloca i32
  %l166 = alloca i64
  %l169 = alloca i64
  %l175 = alloca i32
  %l178 = alloca i1
  %l180 = alloca ptr
  %l184 = alloca %"compiler/eval:Ptr"
  %l185 = alloca ptr
  %l186 = alloca ptr
  %l187 = alloca i64
  %l192 = alloca { i64, [4 x i64] }
  %l193 = alloca %"compiler/eval:Ptr"
  %l194 = alloca %"compiler/eval:Ptr"
  %l195 = alloca ptr
  %l196 = alloca i64
  %l200 = alloca %"compiler/eval:Ptr"
  %l205 = alloca %"compiler/mir:Local"
  %l206 = alloca i32
  %l214 = alloca { i64, [4 x i64] }
  %l224 = alloca i64
  %l226 = alloca i64
  %l231 = alloca { i64, [1 x i64] }
  %l238 = alloca i1
  %l244 = alloca { i64, ptr }
  %l249 = alloca i64
  %l252 = alloca i64
  %l273 = alloca { i64, [1 x i64] }
  %l276 = alloca i64
  %l280 = alloca i1
  %l289 = alloca ptr
  %l290 = alloca i64
  %l297 = alloca { i64, [1 x i64] }
  %l298 = alloca i64
  %l302 = alloca { i64, [1 x i64] }
  %l303 = alloca i64
  %l321 = alloca i64
  %l324 = alloca i64
  %l346 = alloca i1
  %l351 = alloca ptr
  %l352 = alloca i64
  %l359 = alloca { i64, [1 x i64] }
  %l360 = alloca i64
  %l365 = alloca i1
  %l369 = alloca i1
  %l374 = alloca i64
  %l379 = alloca i64
  %l381 = alloca { i64, ptr }
  %l385 = alloca { i64, ptr }
  %l387 = alloca { i64, ptr }
  %l398 = alloca { i64, ptr }
  %l406 = alloca ptr
  %s0 = alloca %olang.scope
  %s3 = alloca %olang.scope
  %rv = alloca i64
  %t86 = alloca %"compiler/eval:genRec", align 8
  %t105 = alloca { i64, [5 x i64] }, align 8
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  store { i64, [7 x i64] } %a2, ptr %l2
  store %"compiler/mir:Range" %a3, ptr %l3
  store %"compiler/mir:Range" %a4, ptr %l4
  store i64 %a5, ptr %l5
  store i64 %a6, ptr %l6
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load i64, ptr %l1, !tbaa !24
  %t5 = call ptr @compiler_2feval_2ecompiler_2feval_3aMachine_2efnOfFrame(ptr %v0, ptr %v0, ptr %t1, i64 %t2)
  store ptr %t5, ptr %l55
  br label %bb1
bb1:
  %t6 = load ptr, ptr %l55, !tbaa !29
  store ptr %t6, ptr %l7, !tbaa !29
  %t7 = load ptr, ptr %l0, !tbaa !29
  %t8 = load i64, ptr %l1, !tbaa !24
  %t9 = load { i64, [7 x i64] }, ptr %l2
  %t13 = call { i64, %"compiler/eval:Ptr", i64 } @compiler_2feval_2ecompiler_2feval_3aMachine_2ecallee(ptr %v0, ptr %t7, i64 %t8, { i64, [7 x i64] } %t9)
  store { i64, %"compiler/eval:Ptr", i64 } %t13, ptr %l59
  br label %bb2
bb2:
  %t14 = load { i64, %"compiler/eval:Ptr", i64 }, ptr %l59
  store { i64, %"compiler/eval:Ptr", i64 } %t14, ptr %l8
  %t15 = getelementptr { i64, %"compiler/eval:Ptr", i64 }, ptr %l8, i32 0, i32 0
  %t16 = load i64, ptr %t15, !tbaa !24
  store i64 %t16, ptr %l9, !tbaa !24
  %t18 = getelementptr { i64, %"compiler/eval:Ptr", i64 }, ptr %l8, i32 0, i32 1
  %t19 = load %"compiler/eval:Ptr", ptr %t18
  store %"compiler/eval:Ptr" %t19, ptr %l10
  %t21 = getelementptr { i64, %"compiler/eval:Ptr", i64 }, ptr %l8, i32 0, i32 2
  %t22 = load i64, ptr %t21, !tbaa !24
  %t26 = icmp sge i64 %t22, 0
  store i1 %t26, ptr %l12, !tbaa !21
  %t28 = load ptr, ptr %l0, !tbaa !29
  %t30 = getelementptr %"compiler/eval:Machine", ptr %t28, i32 0, i32 19
  %t31 = load i1, ptr %t30, !tbaa !21
  br i1 %t31, label %bb3, label %bb4
bb3:
  call void @__olang_scope_close(ptr %s0)
  store i64 -2, ptr %rv
  br label %ret
bb4:
  br label %bb5
bb5:
  %t34 = load ptr, ptr %l0, !tbaa !29
  %t35 = load i64, ptr %l1, !tbaa !24
  %t36 = load { i64, [7 x i64] }, ptr %l2
  %t40 = call i32 @compiler_2feval_2ecompiler_2feval_3aMachine_2ecalleeType(ptr %v0, ptr %t34, i64 %t35, { i64, [7 x i64] } %t36)
  store i32 %t40, ptr %l71
  br label %bb6
bb6:
  %t41 = load i32, ptr %l71, !tbaa !23
  store i32 %t41, ptr %l13, !tbaa !23
  %t42 = load i1, ptr %l12, !tbaa !21
  br i1 %t42, label %bb7, label %bb8
bb7:
  call void @__olang_scope_close(ptr %s0)
  store i64 -2, ptr %rv
  br label %ret
bb8:
  br label %bb9
bb9:
  store i64 -1, ptr %l14, !tbaa !24
  store i1 false, ptr %l15, !tbaa !21
  %t45 = load ptr, ptr %l0, !tbaa !29
  %t47 = getelementptr %"compiler/eval:Machine", ptr %t45, i32 0, i32 22
  %t48 = load i64, ptr %l9, !tbaa !24
  %t51 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aFn_26_3e_2eAt_3ccompiler_2fmir_3aFn_26_3e(ptr %v0, ptr %s0, ptr %t47, i64 %t48)
  store ptr %t51, ptr %l77
  br label %bb10
bb10:
  %t52 = load ptr, ptr %l77, !tbaa !29
  %t54 = getelementptr %"compiler/mir:Fn", ptr %t52, i32 0, i32 25
  %t55 = load i1, ptr %t54, !tbaa !21
  br i1 %t55, label %bb11, label %bb12
bb11:
  store %olang.scope zeroinitializer, ptr %s3
  %t57 = getelementptr %"compiler/eval:Ptr", ptr %l10, i32 0, i32 0
  %t58 = load i64, ptr %t57, !tbaa !24
  %t60 = icmp eq i64 %t58, 0
  br i1 %t60, label %bb13, label %bb14
bb12:
  br label %bb28
bb13:
  %t62 = load ptr, ptr %l0, !tbaa !29
  %t63 = load { i64, ptr }, ptr @G_2ecompiler_2feval_2eWhyNullCall, !tbaa !27
  %t64 = load ptr, ptr @__olang_prog_scope
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2erefuse(ptr %v0, ptr %t64, ptr %t62, { i64, ptr } %t63)
  br label %bb15
bb14:
  br label %bb16
bb15:
  call void @__olang_scope_close(ptr %s3)
  call void @__olang_scope_close(ptr %s0)
  store i64 -2, ptr %rv
  br label %ret
bb16:
  %t68 = load ptr, ptr %l0, !tbaa !29
  store ptr %t68, ptr %l85, !tbaa !29
  %t69 = load ptr, ptr %l0, !tbaa !29
  %t71 = getelementptr %"compiler/eval:Machine", ptr %t69, i32 0, i32 22
  %t72 = load i64, ptr %l9, !tbaa !24
  %t75 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aFn_26_3e_2eAt_3ccompiler_2fmir_3aFn_26_3e(ptr %v0, ptr %v0, ptr %t71, i64 %t72)
  store ptr %t75, ptr %l89
  br label %bb17
bb17:
  %t76 = load %"compiler/eval:Ptr", ptr %l10
  %t77 = load ptr, ptr %l85, !tbaa !29
  %t78 = load ptr, ptr %l89, !tbaa !29
  %t80 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2egenIndex(ptr %v0, ptr %v0, ptr %t77, ptr %t78, %"compiler/eval:Ptr" %t76)
  store i64 %t80, ptr %l91
  br label %bb18
bb18:
  %t81 = load i64, ptr %l91, !tbaa !24
  store i64 %t81, ptr %l14, !tbaa !24
  %t82 = load ptr, ptr %l0, !tbaa !29
  %t84 = getelementptr %"compiler/eval:Machine", ptr %t82, i32 0, i32 60
  %t85 = load i64, ptr %l14, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3agenRec_3e_2eAt_3ccompiler_2feval_3agenRec_3e(ptr %t86, ptr %v0, ptr %s3, ptr %t84, i64 %t85)
  call void @llvm.memmove.p0.p0.i64(ptr %l95, ptr %t86, i64 280, i1 false)
  br label %bb19
bb19:
  %t89 = getelementptr %"compiler/eval:genRec", ptr %l95, i32 0, i32 0
  %t90 = load i64, ptr %t89, !tbaa !24
  store i64 %t90, ptr %l16, !tbaa !24
  %t92 = load i64, ptr %l16, !tbaa !24
  %t94 = icmp eq i64 %t92, 2
  br i1 %t94, label %bb20, label %bb21
bb20:
  %t96 = load ptr, ptr %l0, !tbaa !29
  %t97 = load ptr, ptr %l0, !tbaa !29
  %t99 = getelementptr %"compiler/eval:Machine", ptr %t97, i32 0, i32 74
  %t100 = load i64, ptr %t99, !tbaa !24
  %t101 = load ptr, ptr %l0, !tbaa !29
  %t103 = getelementptr %"compiler/eval:Machine", ptr %t101, i32 0, i32 75
  %t104 = load %"compiler/source:Span", ptr %t103
  store { i64, [5 x i64] } zeroinitializer, ptr %t105
  %t106 = getelementptr { i64, [5 x i64] }, ptr %t105, i32 0, i32 0
  store i64 2, ptr %t106
  %t108 = insertvalue { i32, i64, %"compiler/source:Span", { i64, ptr } } undef, i32 13, 0
  %t110 = insertvalue { i32, i64, %"compiler/source:Span", { i64, ptr } } %t108, i64 %t100, 1
  %t112 = insertvalue { i32, i64, %"compiler/source:Span", { i64, ptr } } %t110, %"compiler/source:Span" %t104, 2
  %t113 = insertvalue { i32, i64, %"compiler/source:Span", { i64, ptr } } %t112, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d2, i32 0, i32 1) }, 3
  %t114 = getelementptr { i64, [5 x i64] }, ptr %t105, i32 0, i32 1
  store { i32, i64, %"compiler/source:Span", { i64, ptr } } %t113, ptr %t114
  %t115 = load { i64, [5 x i64] }, ptr %t105
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2estop(ptr %v0, ptr %v0, ptr %t96, { i64, [5 x i64] } %t115)
  br label %bb22
bb21:
  br label %bb23
bb22:
  call void @__olang_scope_close(ptr %s3)
  call void @__olang_scope_close(ptr %s0)
  store i64 -2, ptr %rv
  br label %ret
bb23:
  %t119 = load i64, ptr %l16, !tbaa !24
  %t121 = icmp eq i64 %t119, 3
  br i1 %t121, label %bb24, label %bb25
bb24:
  %t123 = load ptr, ptr %l0, !tbaa !29
  %t124 = load i64, ptr %l1, !tbaa !24
  %t125 = load i64, ptr %l9, !tbaa !24
  %t126 = load { i64, [7 x i64] }, ptr %l2
  %t127 = load i64, ptr %l5, !tbaa !24
  %t128 = load i64, ptr %l6, !tbaa !24
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2egenOver(ptr %v0, ptr %t123, i64 %t124, i64 %t125, { i64, [7 x i64] } %t126, i64 %t127, i64 %t128)
  br label %bb26
bb25:
  br label %bb27
bb26:
  call void @__olang_scope_close(ptr %s3)
  call void @__olang_scope_close(ptr %s0)
  store i64 -2, ptr %rv
  br label %ret
bb27:
  %t136 = load i64, ptr %l16, !tbaa !24
  %t138 = icmp eq i64 %t136, 1
  store i1 %t138, ptr %l15, !tbaa !21
  call void @__olang_scope_close(ptr %s3)
  br label %bb28
bb28:
  %t140 = load i1, ptr %l15, !tbaa !21
  br i1 %t140, label %bb29, label %bb30
bb29:
  %t142 = load ptr, ptr %l0, !tbaa !29
  %t143 = load i64, ptr %l14, !tbaa !24
  %t144 = load i64, ptr %l5, !tbaa !24
  %t145 = load i64, ptr %l6, !tbaa !24
  %t150 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2erestoreGen(ptr %v0, ptr %t142, i64 %t143, i64 %t144, i64 %t145)
  store i64 %t150, ptr %l124
  br label %bb31
bb30:
  %t151 = load ptr, ptr %l0, !tbaa !29
  %t152 = load i64, ptr %l9, !tbaa !24
  %t153 = load i64, ptr %l5, !tbaa !24
  %t154 = load i64, ptr %l6, !tbaa !24
  %t159 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2epushFrame(ptr %v0, ptr %t151, i64 %t152, i64 %t153, i64 %t154)
  store i64 %t159, ptr %l129
  br label %bb32
bb31:
  %t160 = load i64, ptr %l124, !tbaa !24
  store i64 %t160, ptr %l119, !tbaa !24
  br label %bb33
bb32:
  %t161 = load i64, ptr %l129, !tbaa !24
  store i64 %t161, ptr %l119, !tbaa !24
  br label %bb33
bb33:
  %t162 = load i64, ptr %l119, !tbaa !24
  store i64 %t162, ptr %l17, !tbaa !24
  %t163 = load i64, ptr %l17, !tbaa !24
  %t165 = icmp slt i64 %t163, 0
  br i1 %t165, label %bb34, label %bb35
bb34:
  call void @__olang_scope_close(ptr %s0)
  store i64 -2, ptr %rv
  br label %ret
bb35:
  br label %bb36
bb36:
  %t168 = load ptr, ptr %l0, !tbaa !29
  %t170 = getelementptr %"compiler/eval:Machine", ptr %t168, i32 0, i32 22
  %t171 = load i64, ptr %l9, !tbaa !24
  %t174 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aFn_26_3e_2eAt_3ccompiler_2fmir_3aFn_26_3e(ptr %v0, ptr %v0, ptr %t170, i64 %t171)
  store ptr %t174, ptr %l136
  br label %bb37
bb37:
  %t175 = load ptr, ptr %l136, !tbaa !29
  store ptr %t175, ptr %l18, !tbaa !29
  %t176 = load { i64, [7 x i64] }, ptr %l2
  %t178 = extractvalue { i64, [7 x i64] } %t176, 0
  %t179 = icmp eq i64 %t178, 3
  br i1 %t179, label %bb38, label %bb39
bb38:
  br label %bb40
bb39:
  br label %bb41
bb40:
  store i1 true, ptr %l137, !tbaa !21
  br label %bb46
bb41:
  br i1 true, label %bb42, label %bb43
bb42:
  br label %bb44
bb43:
  br label %bb45
bb44:
  store i1 false, ptr %l137, !tbaa !21
  br label %bb46
bb45:
  call void @__olang_check_failed(ptr @olang_loc_11a19fcb84a16e6d_1ab7f06eb0f74619)
  unreachable
bb46:
  %t181 = load i1, ptr %l137, !tbaa !21
  store i1 %t181, ptr %l19, !tbaa !21
  store i32 0, ptr %l20, !tbaa !23
  %t182 = getelementptr %"compiler/mir:Range", ptr %l3, i32 0, i32 1
  %t183 = load i32, ptr %t182, !tbaa !23
  store i32 %t183, ptr %l21, !tbaa !23
  store i32 1, ptr %l22, !tbaa !23
  %t185 = load i32, ptr %l21, !tbaa !23
  %t186 = load i32, ptr %l20, !tbaa !23
  %t189 = icmp sgt i32 %t185, %t186
  br i1 %t189, label %bb47, label %bb48
bb47:
  %t191 = load i32, ptr %l22, !tbaa !23
  %t193 = icmp sgt i32 %t191, 0
  br i1 %t193, label %bb49, label %bb50
bb48:
  store i32 0, ptr %l144, !tbaa !23
  br label %bb52
bb49:
  %t195 = load i32, ptr %l21, !tbaa !23
  %t196 = load i32, ptr %l20, !tbaa !23
  %t199 = sub i32 %t195, %t196
  %t200 = load i32, ptr %l22, !tbaa !23
  %t203 = add i32 %t199, %t200
  %t205 = sub i32 %t203, 1
  %t206 = load i32, ptr %l22, !tbaa !23
  %t209 = sdiv i32 %t205, %t206
  store i32 %t209, ptr %l147, !tbaa !23
  br label %bb51
bb50:
  store i32 0, ptr %l147, !tbaa !23
  br label %bb51
bb51:
  %t211 = load i32, ptr %l147, !tbaa !23
  store i32 %t211, ptr %l144, !tbaa !23
  br label %bb52
bb52:
  %t212 = load i32, ptr %l144, !tbaa !23
  store i32 %t212, ptr %l23, !tbaa !23
  store i32 0, ptr %l24, !tbaa !23
  br label %bb53
bb53:
  %t213 = load i32, ptr %l24, !tbaa !23
  %t214 = load i32, ptr %l23, !tbaa !23
  %t217 = icmp slt i32 %t213, %t214
  %t219 = xor i1 %t217, true
  br i1 %t219, label %bb54, label %bb55
bb54:
  br label %bb78
bb55:
  br label %bb56
bb56:
  %t221 = load i32, ptr %l20, !tbaa !23
  %t222 = load i32, ptr %l24, !tbaa !23
  %t223 = load i32, ptr %l22, !tbaa !23
  %t226 = mul i32 %t222, %t223
  %t229 = add i32 %t221, %t226
  store i32 %t229, ptr %l25, !tbaa !23
  %t231 = load i32, ptr %l25, !tbaa !23
  %t233 = sext i32 %t231 to i64
  store i64 %t233, ptr %l166, !tbaa !24
  %t234 = load ptr, ptr %l18, !tbaa !29
  %t236 = getelementptr %"compiler/mir:Fn", ptr %t234, i32 0, i32 4
  %t238 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aLocalId_3e_2eLen_3ccompiler_2fmir_3aLocalId_3e(ptr %v0, ptr %t236)
  store i64 %t238, ptr %l169
  br label %bb57
bb57:
  %t239 = load i64, ptr %l166, !tbaa !24
  %t240 = load i64, ptr %l169, !tbaa !24
  %t241 = icmp slt i64 %t239, %t240
  br i1 %t241, label %bb58, label %bb59
bb58:
  %t243 = load ptr, ptr %l18, !tbaa !29
  %t245 = getelementptr %"compiler/mir:Fn", ptr %t243, i32 0, i32 4
  %t246 = load i32, ptr %l25, !tbaa !23
  %t248 = sext i32 %t246 to i64
  %t251 = call i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aLocalId_3e_2eAt_3ccompiler_2fmir_3aLocalId_3e(ptr %v0, ptr %t245, i64 %t248)
  store i32 %t251, ptr %l175
  br label %bb60
bb59:
  br label %bb76
bb60:
  %t252 = load i32, ptr %l175, !tbaa !23
  store i32 %t252, ptr %l26, !tbaa !23
  %t253 = load i32, ptr %l25, !tbaa !23
  %t255 = icmp eq i32 %t253, 0
  br i1 %t255, label %bb61, label %bb62
bb61:
  %t257 = load i1, ptr %l19, !tbaa !21
  store i1 %t257, ptr %l178, !tbaa !21
  br label %bb63
bb62:
  store i1 false, ptr %l178, !tbaa !21
  br label %bb63
bb63:
  %t259 = load i1, ptr %l178, !tbaa !21
  br i1 %t259, label %bb64, label %bb65
bb64:
  %t260 = load ptr, ptr %l0, !tbaa !29
  store ptr %t260, ptr %l180, !tbaa !29
  %t261 = load ptr, ptr %l0, !tbaa !29
  %t262 = load i64, ptr %l17, !tbaa !24
  %t263 = load i32, ptr %l26, !tbaa !23
  %t267 = call %"compiler/eval:Ptr" @compiler_2feval_2ecompiler_2feval_3aMachine_2elocalPtr(ptr %v0, ptr %t261, i64 %t262, i32 %t263)
  store %"compiler/eval:Ptr" %t267, ptr %l184
  br label %bb66
bb65:
  br label %bb71
bb66:
  %t268 = load ptr, ptr %l0, !tbaa !29
  store ptr %t268, ptr %l185, !tbaa !29
  %t269 = load ptr, ptr %l0, !tbaa !29
  store ptr %t269, ptr %l186, !tbaa !29
  %t270 = load i64, ptr %l1, !tbaa !24
  store i64 %t270, ptr %l187, !tbaa !24
  %t271 = load ptr, ptr %l7, !tbaa !29
  %t273 = getelementptr %"compiler/mir:Fn", ptr %t271, i32 0, i32 11
  %t274 = getelementptr %"compiler/mir:Range", ptr %l3, i32 0, i32 0
  %t275 = load i32, ptr %t274, !tbaa !23
  %t277 = sext i32 %t275 to i64
  %t280 = call { i64, [4 x i64] } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aOperand_3e_2eAt_3ccompiler_2fmir_3aOperand_3e(ptr %v0, ptr %t273, i64 %t277)
  store { i64, [4 x i64] } %t280, ptr %l192
  br label %bb67
bb67:
  %t281 = load ptr, ptr %l186, !tbaa !29
  %t282 = load i64, ptr %l187, !tbaa !24
  %t283 = load { i64, [4 x i64] }, ptr %l192
  %t284 = call %"compiler/eval:Ptr" @compiler_2feval_2ecompiler_2feval_3aMachine_2eaddr(ptr %v0, ptr %t281, i64 %t282, { i64, [4 x i64] } %t283, i64 1)
  store %"compiler/eval:Ptr" %t284, ptr %l193
  br label %bb68
bb68:
  %t285 = load ptr, ptr %l185, !tbaa !29
  %t286 = load %"compiler/eval:Ptr", ptr %l193
  %t287 = call %"compiler/eval:Ptr" @compiler_2feval_2ecompiler_2feval_3aMachine_2erdPtr(ptr %v0, ptr %t285, %"compiler/eval:Ptr" %t286)
  store %"compiler/eval:Ptr" %t287, ptr %l194
  br label %bb69
bb69:
  %t288 = load ptr, ptr %l180, !tbaa !29
  %t289 = load %"compiler/eval:Ptr", ptr %l184
  %t290 = load %"compiler/eval:Ptr", ptr %l194
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2ewrPtr(ptr %v0, ptr %t288, %"compiler/eval:Ptr" %t289, %"compiler/eval:Ptr" %t290)
  br label %bb70
bb70:
  br label %bb77
bb71:
  %t291 = load ptr, ptr %l0, !tbaa !29
  store ptr %t291, ptr %l195, !tbaa !29
  %t292 = load i64, ptr %l1, !tbaa !24
  store i64 %t292, ptr %l196, !tbaa !24
  %t293 = load ptr, ptr %l0, !tbaa !29
  %t294 = load i64, ptr %l17, !tbaa !24
  %t295 = load i32, ptr %l26, !tbaa !23
  %t299 = call %"compiler/eval:Ptr" @compiler_2feval_2ecompiler_2feval_3aMachine_2elocalPtr(ptr %v0, ptr %t293, i64 %t294, i32 %t295)
  store %"compiler/eval:Ptr" %t299, ptr %l200
  br label %bb72
bb72:
  %t300 = load ptr, ptr %l18, !tbaa !29
  %t302 = getelementptr %"compiler/mir:Fn", ptr %t300, i32 0, i32 7
  %t303 = load i32, ptr %l26, !tbaa !23
  %t305 = sext i32 %t303 to i64
  %t308 = call %"compiler/mir:Local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aLocal_3e_2eAt_3ccompiler_2fmir_3aLocal_3e(ptr %v0, ptr %t302, i64 %t305)
  store %"compiler/mir:Local" %t308, ptr %l205
  br label %bb73
bb73:
  %t309 = getelementptr %"compiler/mir:Local", ptr %l205, i32 0, i32 2
  %t310 = load i32, ptr %t309, !tbaa !23
  store i32 %t310, ptr %l206, !tbaa !23
  %t311 = load ptr, ptr %l7, !tbaa !29
  %t313 = getelementptr %"compiler/mir:Fn", ptr %t311, i32 0, i32 11
  %t314 = getelementptr %"compiler/mir:Range", ptr %l3, i32 0, i32 0
  %t315 = load i32, ptr %t314, !tbaa !23
  %t317 = sext i32 %t315 to i64
  %t318 = load i32, ptr %l25, !tbaa !23
  %t320 = sext i32 %t318 to i64
  %t323 = add i64 %t317, %t320
  %t326 = call { i64, [4 x i64] } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aOperand_3e_2eAt_3ccompiler_2fmir_3aOperand_3e(ptr %v0, ptr %t313, i64 %t323)
  store { i64, [4 x i64] } %t326, ptr %l214
  br label %bb74
bb74:
  %t327 = load ptr, ptr %l195, !tbaa !29
  %t328 = load i64, ptr %l196, !tbaa !24
  %t329 = load %"compiler/eval:Ptr", ptr %l200
  %t330 = load i32, ptr %l206, !tbaa !23
  %t331 = load { i64, [4 x i64] }, ptr %l214
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2eput(ptr %v0, ptr %t327, i64 %t328, %"compiler/eval:Ptr" %t329, i32 %t330, { i64, [4 x i64] } %t331)
  br label %bb75
bb75:
  br label %bb76
bb76:
  br label %bb77
bb77:
  %t332 = load i32, ptr %l24, !tbaa !23
  %t334 = add i32 %t332, 1
  store i32 %t334, ptr %l24, !tbaa !23
  br label %bb53
bb78:
  %t336 = load i1, ptr %l15, !tbaa !21
  %t338 = xor i1 %t336, true
  br i1 %t338, label %bb79, label %bb80
bb79:
  %t340 = load ptr, ptr %l0, !tbaa !29
  %t341 = load i64, ptr %l17, !tbaa !24
  %t342 = load i64, ptr %l9, !tbaa !24
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2eownParams(ptr %v0, ptr %t340, i64 %t341, i64 %t342)
  br label %bb81
bb80:
  br label %bb82
bb81:
  br label %bb82
bb82:
  store i64 0, ptr %l27, !tbaa !24
  %t346 = load ptr, ptr %l18, !tbaa !29
  %t348 = getelementptr %"compiler/mir:Fn", ptr %t346, i32 0, i32 6
  store ptr %t348, ptr %l28, !tbaa !29
  store i64 0, ptr %l29, !tbaa !24
  br label %bb83
bb83:
  %t350 = load i64, ptr %l29, !tbaa !24
  store i64 %t350, ptr %l224, !tbaa !24
  %t351 = load ptr, ptr %l28, !tbaa !29
  %t353 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aVarKind_3e_2eLen_3ccompiler_2fmir_3aVarKind_3e(ptr %v0, ptr %t351)
  store i64 %t353, ptr %l226
  br label %bb84
bb84:
  %t354 = load i64, ptr %l224, !tbaa !24
  %t355 = load i64, ptr %l226, !tbaa !24
  %t356 = icmp slt i64 %t354, %t355
  %t358 = xor i1 %t356, true
  br i1 %t358, label %bb85, label %bb86
bb85:
  br label %bb99
bb86:
  br label %bb87
bb87:
  %t360 = load ptr, ptr %l28, !tbaa !29
  %t361 = load i64, ptr %l29, !tbaa !24
  %t364 = call { i64, [1 x i64] } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aVarKind_3e_2eAt_3ccompiler_2fmir_3aVarKind_3e(ptr %v0, ptr %t360, i64 %t361)
  store { i64, [1 x i64] } %t364, ptr %l231
  br label %bb88
bb88:
  %t365 = load { i64, [1 x i64] }, ptr %l231
  %t368 = extractvalue { i64, [1 x i64] } %t365, 0
  %t369 = icmp eq i64 %t368, 4
  br i1 %t369, label %bb89, label %bb90
bb89:
  br label %bb91
bb90:
  br label %bb92
bb91:
  br label %bb97
bb92:
  br i1 true, label %bb93, label %bb94
bb93:
  br label %bb95
bb94:
  br label %bb96
bb95:
  %t371 = load i64, ptr %l27, !tbaa !24
  %t373 = add i64 %t371, 1
  store i64 %t373, ptr %l27, !tbaa !24
  br label %bb97
bb96:
  call void @__olang_check_failed(ptr @olang_loc_e8d82fb02ccf62bc_44b724ba703ff148)
  unreachable
bb97:
  br label %bb98
bb98:
  %t375 = load i64, ptr %l29, !tbaa !24
  %t377 = add i64 %t375, 1
  store i64 %t377, ptr %l29, !tbaa !24
  br label %bb83
bb99:
  %t379 = load { i64, [7 x i64] }, ptr %l2
  %t381 = extractvalue { i64, [7 x i64] } %t379, 0
  %t382 = icmp eq i64 %t381, 0
  br i1 %t382, label %bb100, label %bb101
bb100:
  br label %bb102
bb101:
  br label %bb103
bb102:
  store i1 true, ptr %l238, !tbaa !21
  br label %bb108
bb103:
  br i1 true, label %bb104, label %bb105
bb104:
  br label %bb106
bb105:
  br label %bb107
bb106:
  store i1 false, ptr %l238, !tbaa !21
  br label %bb108
bb107:
  call void @__olang_check_failed(ptr @olang_loc_36e0ec838c111677_372a612bd7b0a623)
  unreachable
bb108:
  %t384 = load i1, ptr %l238, !tbaa !21
  store i1 %t384, ptr %l31, !tbaa !21
  %t385 = load ptr, ptr %l0, !tbaa !29
  %t387 = getelementptr %"compiler/eval:Machine", ptr %t385, i32 0, i32 0
  %t388 = load ptr, ptr %t387, !tbaa !29
  %t389 = load i32, ptr %l13, !tbaa !23
  %t392 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eScopeVarsOf(ptr %v0, ptr %s0, ptr %t388, i32 %t389)
  store { i64, ptr } %t392, ptr %l244
  br label %bb109
bb109:
  %t393 = load { i64, ptr }, ptr %l244, !tbaa !27
  store { i64, ptr } %t393, ptr %l32, !tbaa !27
  store i64 0, ptr %l33, !tbaa !24
  %t394 = load i64, ptr %l27, !tbaa !24
  store i64 %t394, ptr %l34, !tbaa !24
  store i64 1, ptr %l35, !tbaa !24
  %t396 = load i64, ptr %l34, !tbaa !24
  %t397 = load i64, ptr %l33, !tbaa !24
  %t400 = icmp sgt i64 %t396, %t397
  br i1 %t400, label %bb110, label %bb111
bb110:
  %t402 = load i64, ptr %l35, !tbaa !24
  %t404 = icmp sgt i64 %t402, 0
  br i1 %t404, label %bb112, label %bb113
bb111:
  store i64 0, ptr %l249, !tbaa !24
  br label %bb115
bb112:
  %t406 = load i64, ptr %l34, !tbaa !24
  %t407 = load i64, ptr %l33, !tbaa !24
  %t410 = sub i64 %t406, %t407
  %t411 = load i64, ptr %l35, !tbaa !24
  %t414 = add i64 %t410, %t411
  %t416 = sub i64 %t414, 1
  %t417 = load i64, ptr %l35, !tbaa !24
  %t420 = sdiv i64 %t416, %t417
  store i64 %t420, ptr %l252, !tbaa !24
  br label %bb114
bb113:
  store i64 0, ptr %l252, !tbaa !24
  br label %bb114
bb114:
  %t422 = load i64, ptr %l252, !tbaa !24
  store i64 %t422, ptr %l249, !tbaa !24
  br label %bb115
bb115:
  %t423 = load i64, ptr %l249, !tbaa !24
  store i64 %t423, ptr %l36, !tbaa !24
  store i64 0, ptr %l37, !tbaa !24
  br label %bb116
bb116:
  %t424 = load i64, ptr %l37, !tbaa !24
  %t425 = load i64, ptr %l36, !tbaa !24
  %t428 = icmp slt i64 %t424, %t425
  %t430 = xor i1 %t428, true
  br i1 %t430, label %bb117, label %bb118
bb117:
  br label %bb187
bb118:
  br label %bb119
bb119:
  %t432 = load i64, ptr %l33, !tbaa !24
  %t433 = load i64, ptr %l37, !tbaa !24
  %t434 = load i64, ptr %l35, !tbaa !24
  %t437 = mul i64 %t433, %t434
  %t440 = add i64 %t432, %t437
  store i64 %t440, ptr %l38, !tbaa !24
  %t442 = load ptr, ptr %l18, !tbaa !29
  %t444 = getelementptr %"compiler/mir:Fn", ptr %t442, i32 0, i32 6
  %t445 = load i64, ptr %l38, !tbaa !24
  %t448 = call { i64, [1 x i64] } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aVarKind_3e_2eAt_3ccompiler_2fmir_3aVarKind_3e(ptr %v0, ptr %t444, i64 %t445)
  store { i64, [1 x i64] } %t448, ptr %l273
  br label %bb120
bb120:
  %t449 = load { i64, [1 x i64] }, ptr %l273
  %t451 = extractvalue { i64, [1 x i64] } %t449, 0
  %t452 = icmp eq i64 %t451, 5
  br i1 %t452, label %bb121, label %bb122
bb121:
  store i64 0, ptr %l276, !tbaa !24
  br label %bb123
bb122:
  %t454 = load ptr, ptr %l0, !tbaa !29
  %t456 = getelementptr %"compiler/eval:Machine", ptr %t454, i32 0, i32 67
  %t457 = load i64, ptr %t456, !tbaa !24
  store i64 %t457, ptr %l276, !tbaa !24
  br label %bb123
bb123:
  %t459 = load i64, ptr %l276, !tbaa !24
  store i64 %t459, ptr %l39, !tbaa !24
  %t460 = load i1, ptr %l31, !tbaa !21
  br i1 %t460, label %bb124, label %bb125
bb124:
  store i1 true, ptr %l280, !tbaa !21
  br label %bb126
bb125:
  %t462 = load { i64, ptr }, ptr %l32, !tbaa !27
  %t464 = extractvalue { i64, ptr } %t462, 0
  %t465 = load i64, ptr %l27, !tbaa !24
  %t468 = icmp eq i64 %t464, %t465
  store i1 %t468, ptr %l280, !tbaa !21
  br label %bb126
bb126:
  %t470 = load i1, ptr %l280, !tbaa !21
  br i1 %t470, label %bb127, label %bb128
bb127:
  %t471 = load i64, ptr %l38, !tbaa !24
  %t472 = getelementptr %"compiler/mir:Range", ptr %l4, i32 0, i32 1
  %t473 = load i32, ptr %t472, !tbaa !23
  %t475 = sext i32 %t473 to i64
  %t478 = icmp slt i64 %t471, %t475
  br i1 %t478, label %bb129, label %bb130
bb128:
  %t480 = load ptr, ptr %l18, !tbaa !29
  %t482 = getelementptr %"compiler/mir:Fn", ptr %t480, i32 0, i32 6
  %t483 = load i64, ptr %l38, !tbaa !24
  %t486 = call { i64, [1 x i64] } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aVarKind_3e_2eAt_3ccompiler_2fmir_3aVarKind_3e(ptr %v0, ptr %t482, i64 %t483)
  store { i64, [1 x i64] } %t486, ptr %l302
  br label %bb134
bb129:
  %t487 = load ptr, ptr %l0, !tbaa !29
  store ptr %t487, ptr %l289, !tbaa !29
  %t488 = load i64, ptr %l1, !tbaa !24
  store i64 %t488, ptr %l290, !tbaa !24
  %t489 = load ptr, ptr %l7, !tbaa !29
  %t491 = getelementptr %"compiler/mir:Fn", ptr %t489, i32 0, i32 12
  %t492 = getelementptr %"compiler/mir:Range", ptr %l4, i32 0, i32 0
  %t493 = load i32, ptr %t492, !tbaa !23
  %t495 = sext i32 %t493 to i64
  %t496 = load i64, ptr %l38, !tbaa !24
  %t499 = add i64 %t495, %t496
  %t502 = call { i64, [1 x i64] } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aScopeRef_3e_2eAt_3ccompiler_2fmir_3aScopeRef_3e(ptr %v0, ptr %t491, i64 %t499)
  store { i64, [1 x i64] } %t502, ptr %l297
  br label %bb131
bb130:
  br label %bb133
bb131:
  %t503 = load ptr, ptr %l289, !tbaa !29
  %t504 = load i64, ptr %l290, !tbaa !24
  %t505 = load { i64, [1 x i64] }, ptr %l297
  %t506 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2escopeOf(ptr %v0, ptr %t503, i64 %t504, { i64, [1 x i64] } %t505)
  store i64 %t506, ptr %l298
  br label %bb132
bb132:
  %t507 = load i64, ptr %l298, !tbaa !24
  store i64 %t507, ptr %l39, !tbaa !24
  br label %bb133
bb133:
  br label %bb185
bb134:
  %t508 = load { i64, [1 x i64] }, ptr %l302
  store { i64, [1 x i64] } %t508, ptr %l40
  %t509 = load { i64, [1 x i64] }, ptr %l40
  %t511 = extractvalue { i64, [1 x i64] } %t509, 0
  %t512 = icmp eq i64 %t511, 0
  br i1 %t512, label %bb135, label %bb136
bb135:
  %t514 = getelementptr { i64, [1 x i64] }, ptr %l40, i32 0, i32 1
  %t515 = getelementptr { i64 }, ptr %t514, i32 0, i32 0
  %t516 = load i64, ptr %t515
  store i64 %t516, ptr %l41, !tbaa !24
  br label %bb137
bb136:
  br label %bb138
bb137:
  %t518 = load i64, ptr %l41, !tbaa !24
  store i64 %t518, ptr %l303, !tbaa !24
  br label %bb153
bb138:
  %t520 = load { i64, [1 x i64] }, ptr %l40
  %t522 = extractvalue { i64, [1 x i64] } %t520, 0
  %t523 = icmp eq i64 %t522, 1
  br i1 %t523, label %bb139, label %bb140
bb139:
  br label %bb143
bb140:
  %t525 = load { i64, [1 x i64] }, ptr %l40
  %t527 = extractvalue { i64, [1 x i64] } %t525, 0
  %t528 = icmp eq i64 %t527, 2
  br i1 %t528, label %bb141, label %bb142
bb141:
  br label %bb143
bb142:
  br label %bb144
bb143:
  %t530 = load i64, ptr @G_2ecompiler_2ftypes_2eResultVar, !tbaa !24
  store i64 %t530, ptr %l303, !tbaa !24
  br label %bb153
bb144:
  %t532 = load { i64, [1 x i64] }, ptr %l40
  %t534 = extractvalue { i64, [1 x i64] } %t532, 0
  %t535 = icmp eq i64 %t534, 3
  br i1 %t535, label %bb145, label %bb146
bb145:
  br label %bb147
bb146:
  br label %bb148
bb147:
  %t537 = load i64, ptr @G_2ecompiler_2ftypes_2eClosingVar, !tbaa !24
  store i64 %t537, ptr %l303, !tbaa !24
  br label %bb153
bb148:
  br i1 true, label %bb149, label %bb150
bb149:
  br label %bb151
bb150:
  br label %bb152
bb151:
  store i64 -9, ptr %l303, !tbaa !24
  br label %bb153
bb152:
  call void @__olang_check_failed(ptr @olang_loc_5609b5c4ef82b256_83c053ae3d548522)
  unreachable
bb153:
  %t539 = load i64, ptr %l303, !tbaa !24
  store i64 %t539, ptr %l42, !tbaa !24
  store i1 false, ptr %l43, !tbaa !21
  store i64 0, ptr %l44, !tbaa !24
  %t540 = load { i64, ptr }, ptr %l32, !tbaa !27
  %t542 = extractvalue { i64, ptr } %t540, 0
  store i64 %t542, ptr %l45, !tbaa !24
  store i64 1, ptr %l46, !tbaa !24
  %t544 = load i64, ptr %l45, !tbaa !24
  %t545 = load i64, ptr %l44, !tbaa !24
  %t548 = icmp sgt i64 %t544, %t545
  br i1 %t548, label %bb154, label %bb155
bb154:
  %t550 = load i64, ptr %l46, !tbaa !24
  %t552 = icmp sgt i64 %t550, 0
  br i1 %t552, label %bb156, label %bb157
bb155:
  store i64 0, ptr %l321, !tbaa !24
  br label %bb159
bb156:
  %t554 = load i64, ptr %l45, !tbaa !24
  %t555 = load i64, ptr %l44, !tbaa !24
  %t558 = sub i64 %t554, %t555
  %t559 = load i64, ptr %l46, !tbaa !24
  %t562 = add i64 %t558, %t559
  %t564 = sub i64 %t562, 1
  %t565 = load i64, ptr %l46, !tbaa !24
  %t568 = sdiv i64 %t564, %t565
  store i64 %t568, ptr %l324, !tbaa !24
  br label %bb158
bb157:
  store i64 0, ptr %l324, !tbaa !24
  br label %bb158
bb158:
  %t570 = load i64, ptr %l324, !tbaa !24
  store i64 %t570, ptr %l321, !tbaa !24
  br label %bb159
bb159:
  %t571 = load i64, ptr %l321, !tbaa !24
  store i64 %t571, ptr %l47, !tbaa !24
  store i64 0, ptr %l48, !tbaa !24
  br label %bb160
bb160:
  %t572 = load i64, ptr %l48, !tbaa !24
  %t573 = load i64, ptr %l47, !tbaa !24
  %t576 = icmp slt i64 %t572, %t573
  %t578 = xor i1 %t576, true
  br i1 %t578, label %bb161, label %bb162
bb161:
  br label %bb173
bb162:
  br label %bb163
bb163:
  %t580 = load i64, ptr %l44, !tbaa !24
  %t581 = load i64, ptr %l48, !tbaa !24
  %t582 = load i64, ptr %l46, !tbaa !24
  %t585 = mul i64 %t581, %t582
  %t588 = add i64 %t580, %t585
  store i64 %t588, ptr %l49, !tbaa !24
  %t590 = load i64, ptr %l49, !tbaa !24
  %t592 = getelementptr { i64, ptr }, ptr %l32, i32 0, i32 1
  %t593 = load ptr, ptr %t592, !tbaa !27
  %t594 = getelementptr i64, ptr %t593, i64 %t590
  %t595 = load i64, ptr %t594, !tbaa !34
  %t596 = load i64, ptr %l42, !tbaa !24
  %t599 = icmp eq i64 %t595, %t596
  br i1 %t599, label %bb164, label %bb165
bb164:
  %t601 = load i64, ptr %l49, !tbaa !24
  %t602 = getelementptr %"compiler/mir:Range", ptr %l4, i32 0, i32 1
  %t603 = load i32, ptr %t602, !tbaa !23
  %t605 = sext i32 %t603 to i64
  %t608 = icmp slt i64 %t601, %t605
  store i1 %t608, ptr %l346, !tbaa !21
  br label %bb166
bb165:
  store i1 false, ptr %l346, !tbaa !21
  br label %bb166
bb166:
  %t610 = load i1, ptr %l346, !tbaa !21
  br i1 %t610, label %bb167, label %bb168
bb167:
  %t611 = load ptr, ptr %l0, !tbaa !29
  store ptr %t611, ptr %l351, !tbaa !29
  %t612 = load i64, ptr %l1, !tbaa !24
  store i64 %t612, ptr %l352, !tbaa !24
  %t613 = load ptr, ptr %l7, !tbaa !29
  %t615 = getelementptr %"compiler/mir:Fn", ptr %t613, i32 0, i32 12
  %t616 = getelementptr %"compiler/mir:Range", ptr %l4, i32 0, i32 0
  %t617 = load i32, ptr %t616, !tbaa !23
  %t619 = sext i32 %t617 to i64
  %t620 = load i64, ptr %l49, !tbaa !24
  %t623 = add i64 %t619, %t620
  %t626 = call { i64, [1 x i64] } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aScopeRef_3e_2eAt_3ccompiler_2fmir_3aScopeRef_3e(ptr %v0, ptr %t615, i64 %t623)
  store { i64, [1 x i64] } %t626, ptr %l359
  br label %bb169
bb168:
  br label %bb171
bb169:
  %t627 = load ptr, ptr %l351, !tbaa !29
  %t628 = load i64, ptr %l352, !tbaa !24
  %t629 = load { i64, [1 x i64] }, ptr %l359
  %t630 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2escopeOf(ptr %v0, ptr %t627, i64 %t628, { i64, [1 x i64] } %t629)
  store i64 %t630, ptr %l360
  br label %bb170
bb170:
  %t631 = load i64, ptr %l360, !tbaa !24
  store i64 %t631, ptr %l39, !tbaa !24
  store i1 true, ptr %l43, !tbaa !21
  br label %bb171
bb171:
  br label %bb172
bb172:
  %t632 = load i64, ptr %l48, !tbaa !24
  %t634 = add i64 %t632, 1
  store i64 %t634, ptr %l48, !tbaa !24
  br label %bb160
bb173:
  %t636 = load i1, ptr %l43, !tbaa !21
  %t638 = xor i1 %t636, true
  br i1 %t638, label %bb174, label %bb175
bb174:
  %t640 = load i64, ptr %l42, !tbaa !24
  %t641 = load i64, ptr @G_2ecompiler_2ftypes_2eResultVar, !tbaa !24
  %t644 = icmp eq i64 %t640, %t641
  store i1 %t644, ptr %l365, !tbaa !21
  br label %bb176
bb175:
  store i1 false, ptr %l365, !tbaa !21
  br label %bb176
bb176:
  %t646 = load i1, ptr %l365, !tbaa !21
  br i1 %t646, label %bb177, label %bb178
bb177:
  %t647 = load ptr, ptr %l0, !tbaa !29
  %t649 = getelementptr %"compiler/eval:Machine", ptr %t647, i32 0, i32 0
  %t650 = load ptr, ptr %t649, !tbaa !29
  %t651 = load ptr, ptr %l18, !tbaa !29
  %t653 = getelementptr %"compiler/mir:Fn", ptr %t651, i32 0, i32 1
  %t654 = load i32, ptr %t653, !tbaa !23
  %t657 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRole(ptr %v0, ptr %t650, i32 %t654)
  store i64 %t657, ptr %l374
  br label %bb179
bb178:
  store i1 false, ptr %l369, !tbaa !21
  br label %bb180
bb179:
  %t658 = load i64, ptr @G_2ecompiler_2ftypes_2eRoleTail, !tbaa !24
  %t659 = load i64, ptr %l374, !tbaa !24
  %t661 = icmp eq i64 %t659, %t658
  store i1 %t661, ptr %l369, !tbaa !21
  br label %bb180
bb180:
  %t663 = load i1, ptr %l369, !tbaa !21
  br i1 %t663, label %bb181, label %bb182
bb181:
  %t664 = load ptr, ptr %l0, !tbaa !29
  %t665 = load i64, ptr @G_2ecompiler_2feval_2esBlock, !tbaa !24
  %t668 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2enewScope(ptr %v0, ptr %t664, i64 %t665)
  store i64 %t668, ptr %l379
  br label %bb183
bb182:
  br label %bb184
bb183:
  %t669 = load i64, ptr %l379, !tbaa !24
  store i64 %t669, ptr %l39, !tbaa !24
  %t670 = load ptr, ptr %l0, !tbaa !29
  %t672 = getelementptr %"compiler/eval:Machine", ptr %t670, i32 0, i32 55
  %t673 = load { i64, ptr }, ptr %t672, !tbaa !27
  store { i64, ptr } %t673, ptr %l381, !tbaa !27
  %t674 = load i64, ptr %l17, !tbaa !24
  %t675 = load i64, ptr %l39, !tbaa !24
  %t678 = getelementptr { i64, ptr }, ptr %l381, i32 0, i32 1
  %t679 = load ptr, ptr %t678, !tbaa !27
  %t680 = getelementptr %"compiler/eval:frame", ptr %t679, i64 %t674
  %t681 = getelementptr %"compiler/eval:frame", ptr %t680, i32 0, i32 19
  store i64 %t675, ptr %t681, !tbaa !24
  br label %bb184
bb184:
  br label %bb185
bb185:
  %t682 = load ptr, ptr %l0, !tbaa !29
  %t684 = getelementptr %"compiler/eval:Machine", ptr %t682, i32 0, i32 57
  %t685 = load { i64, ptr }, ptr %t684, !tbaa !27
  store { i64, ptr } %t685, ptr %l385, !tbaa !27
  %t686 = load ptr, ptr %l0, !tbaa !29
  %t688 = getelementptr %"compiler/eval:Machine", ptr %t686, i32 0, i32 55
  %t689 = load { i64, ptr }, ptr %t688, !tbaa !27
  store { i64, ptr } %t689, ptr %l387, !tbaa !27
  %t690 = load i64, ptr %l17, !tbaa !24
  %t692 = getelementptr { i64, ptr }, ptr %l387, i32 0, i32 1
  %t693 = load ptr, ptr %t692, !tbaa !27
  %t694 = getelementptr %"compiler/eval:frame", ptr %t693, i64 %t690
  %t695 = getelementptr %"compiler/eval:frame", ptr %t694, i32 0, i32 5
  %t696 = load i64, ptr %t695, !tbaa !24
  %t697 = load i64, ptr %l38, !tbaa !24
  %t700 = add i64 %t696, %t697
  %t701 = load i64, ptr %l39, !tbaa !24
  %t704 = getelementptr { i64, ptr }, ptr %l385, i32 0, i32 1
  %t705 = load ptr, ptr %t704, !tbaa !27
  %t706 = getelementptr i64, ptr %t705, i64 %t700
  store i64 %t701, ptr %t706, !tbaa !34
  br label %bb186
bb186:
  %t707 = load i64, ptr %l37, !tbaa !24
  %t709 = add i64 %t707, 1
  store i64 %t709, ptr %l37, !tbaa !24
  br label %bb116
bb187:
  %t711 = load i64, ptr %l14, !tbaa !24
  %t713 = icmp sge i64 %t711, 0
  br i1 %t713, label %bb188, label %bb189
bb188:
  %t715 = load ptr, ptr %l0, !tbaa !29
  %t717 = getelementptr %"compiler/eval:Machine", ptr %t715, i32 0, i32 55
  %t718 = load { i64, ptr }, ptr %t717, !tbaa !27
  store { i64, ptr } %t718, ptr %l398, !tbaa !27
  %t719 = load i64, ptr %l17, !tbaa !24
  %t720 = load i64, ptr %l14, !tbaa !24
  %t722 = trunc i64 %t720 to i32
  %t725 = getelementptr { i64, ptr }, ptr %l398, i32 0, i32 1
  %t726 = load ptr, ptr %t725, !tbaa !27
  %t727 = getelementptr %"compiler/eval:frame", ptr %t726, i64 %t719
  %t728 = getelementptr %"compiler/eval:frame", ptr %t727, i32 0, i32 18
  store i32 %t722, ptr %t728, !tbaa !23
  %t729 = load i64, ptr %l14, !tbaa !24
  store i64 2, ptr %l51, !tbaa !24
  %t731 = load ptr, ptr %l0, !tbaa !29
  %t733 = getelementptr %"compiler/eval:Machine", ptr %t731, i32 0, i32 60
  %t737 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3agenRec_3e_2eRefMut_3ccompiler_2feval_3agenRec_3e(ptr %v0, ptr %v0, ptr %t733, i64 %t729)
  store ptr %t737, ptr %l406
  br label %bb190
bb189:
  br label %bb191
bb190:
  %t738 = load ptr, ptr %l406, !tbaa !29
  %t740 = load i64, ptr %l51, !tbaa !24
  %t743 = getelementptr %"compiler/eval:genRec", ptr %t738, i32 0, i32 0
  store i64 %t740, ptr %t743, !tbaa !24
  br label %bb191
bb191:
  %t744 = load i1, ptr %l15, !tbaa !21
  %t746 = xor i1 %t744, true
  br i1 %t746, label %bb192, label %bb193
bb192:
  %t748 = load ptr, ptr %l0, !tbaa !29
  %t749 = load i64, ptr %l17, !tbaa !24
  %t750 = load ptr, ptr %l18, !tbaa !29
  %t751 = load %"compiler/eval:Ptr", ptr %l10
  %t752 = load i64, ptr %l27, !tbaa !24
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2eloadCaptures(ptr %v0, ptr %v0, ptr %t748, i64 %t749, ptr %t750, %"compiler/eval:Ptr" %t751, i64 %t752)
  br label %bb194
bb193:
  br label %bb195
bb194:
  br label %bb195
bb195:
  %t758 = load ptr, ptr %l0, !tbaa !29
  %t760 = getelementptr %"compiler/eval:Machine", ptr %t758, i32 0, i32 19
  %t761 = load i1, ptr %t760, !tbaa !21
  br i1 %t761, label %bb196, label %bb197
bb196:
  call void @__olang_scope_close(ptr %s0)
  store i64 -2, ptr %rv
  br label %ret
bb197:
  br label %bb198
bb198:
  %t764 = load i64, ptr %l17, !tbaa !24
  call void @__olang_scope_close(ptr %s0)
  store i64 %t764, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local i32 @compiler_2feval_2ecompiler_2feval_3aMachine_2eflatOperand(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, { i64, [4 x i64] } %a2, ptr %a3, i64 %a4, i64 %a5) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca { i64, [4 x i64] }
  %l3 = alloca ptr
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i32
  %l7 = alloca i64
  %l8 = alloca i64
  %l11 = alloca %"compiler/mir:Lvalue"
  %l12 = alloca i64
  %l13 = alloca i64
  %l14 = alloca i64
  %l22 = alloca i1
  %l28 = alloca i64
  %l32 = alloca { i64, ptr }
  %l36 = alloca { i64, ptr }
  %l41 = alloca { i64, ptr }
  %l51 = alloca i64
  %l54 = alloca i1
  %l55 = alloca ptr
  %l59 = alloca %"compiler/mir:Local"
  %l61 = alloca i1
  %l65 = alloca ptr
  %l69 = alloca %"compiler/mir:Local"
  %l71 = alloca i64
  %l75 = alloca %"compiler/mir:Local"
  %l79 = alloca { i64, ptr }
  %l83 = alloca { i64, ptr }
  %l88 = alloca { i64, ptr }
  %rv = alloca i32
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store { i64, [4 x i64] } %a2, ptr %l2
  store ptr %a3, ptr %l3
  store i64 %a4, ptr %l4
  store i64 %a5, ptr %l5
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load { i64, [4 x i64] }, ptr %l2
  %t3 = extractvalue { i64, [4 x i64] } %t1, 0
  %t4 = icmp eq i64 %t3, 2
  br i1 %t4, label %bb1, label %bb2
bb1:
  %t6 = getelementptr { i64, [4 x i64] }, ptr %l2, i32 0, i32 1
  %t7 = getelementptr { i32, i64 }, ptr %t6, i32 0, i32 0
  %t8 = load i32, ptr %t7
  store i32 %t8, ptr %l6, !tbaa !23
  %t10 = getelementptr { i64, [4 x i64] }, ptr %l2, i32 0, i32 1
  %t11 = getelementptr { i32, i64 }, ptr %t10, i32 0, i32 1
  %t12 = load i64, ptr %t11
  store i64 %t12, ptr %l7, !tbaa !24
  br label %bb3
bb2:
  br label %bb9
bb3:
  %t14 = load ptr, ptr %l0, !tbaa !29
  %t15 = load i32, ptr %l6, !tbaa !23
  %t18 = call i1 @compiler_2feval_2ecompiler_2feval_3aMachine_2enumber(ptr %v0, ptr %t14, i32 %t15)
  store i1 %t18, ptr %l22
  br label %bb4
bb4:
  %t19 = load i1, ptr %l22, !tbaa !21
  %t20 = xor i1 %t19, true
  br i1 %t20, label %bb5, label %bb6
bb5:
  store i32 65536, ptr %rv
  br label %ret
bb6:
  br label %bb7
bb7:
  store i64 -1, ptr %l8, !tbaa !24
  %t23 = load ptr, ptr %l0, !tbaa !29
  %t24 = load i32, ptr %l6, !tbaa !23
  %t25 = load i64, ptr %l7, !tbaa !24
  %t29 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2ecanonBits(ptr %v0, ptr %t23, i32 %t24, i64 %t25)
  store i64 %t29, ptr %l28
  br label %bb8
bb8:
  %t30 = load i64, ptr %l28, !tbaa !24
  %t31 = load i32, ptr %l6, !tbaa !23
  %t33 = sext i32 %t31 to i64
  %t35 = load ptr, ptr %l3, !tbaa !29
  %t37 = getelementptr %"compiler/eval:cfn", ptr %t35, i32 0, i32 13
  %t38 = load { i64, ptr }, ptr %t37, !tbaa !27
  store { i64, ptr } %t38, ptr %l32, !tbaa !27
  %t39 = load i64, ptr %l4, !tbaa !24
  %t40 = load i64, ptr %l8, !tbaa !24
  %t43 = getelementptr { i64, ptr }, ptr %l32, i32 0, i32 1
  %t44 = load ptr, ptr %t43, !tbaa !27
  %t45 = getelementptr i64, ptr %t44, i64 %t39
  store i64 %t40, ptr %t45, !tbaa !34
  %t46 = load ptr, ptr %l3, !tbaa !29
  %t48 = getelementptr %"compiler/eval:cfn", ptr %t46, i32 0, i32 13
  %t49 = load { i64, ptr }, ptr %t48, !tbaa !27
  store { i64, ptr } %t49, ptr %l36, !tbaa !27
  %t50 = load i64, ptr %l4, !tbaa !24
  %t52 = add i64 %t50, 1
  %t56 = getelementptr { i64, ptr }, ptr %l36, i32 0, i32 1
  %t57 = load ptr, ptr %t56, !tbaa !27
  %t58 = getelementptr i64, ptr %t57, i64 %t52
  store i64 %t30, ptr %t58, !tbaa !34
  %t59 = load ptr, ptr %l3, !tbaa !29
  %t61 = getelementptr %"compiler/eval:cfn", ptr %t59, i32 0, i32 13
  %t62 = load { i64, ptr }, ptr %t61, !tbaa !27
  store { i64, ptr } %t62, ptr %l41, !tbaa !27
  %t63 = load i64, ptr %l5, !tbaa !24
  %t67 = getelementptr { i64, ptr }, ptr %l41, i32 0, i32 1
  %t68 = load ptr, ptr %t67, !tbaa !27
  %t69 = getelementptr i64, ptr %t68, i64 %t63
  store i64 %t33, ptr %t69, !tbaa !34
  br label %bb33
bb9:
  %t70 = load { i64, [4 x i64] }, ptr %l2
  %t72 = extractvalue { i64, [4 x i64] } %t70, 0
  %t73 = icmp eq i64 %t72, 1
  br i1 %t73, label %bb10, label %bb11
bb10:
  %t75 = getelementptr { i64, [4 x i64] }, ptr %l2, i32 0, i32 1
  %t76 = getelementptr { %"compiler/mir:Lvalue" }, ptr %t75, i32 0, i32 0
  %t77 = load %"compiler/mir:Lvalue", ptr %t76
  store %"compiler/mir:Lvalue" %t77, ptr %l11
  br label %bb12
bb11:
  br label %bb28
bb12:
  %t79 = getelementptr %"compiler/mir:Lvalue", ptr %l11, i32 0, i32 1
  %t80 = getelementptr %"compiler/mir:Range", ptr %t79, i32 0, i32 1
  %t81 = load i32, ptr %t80, !tbaa !23
  %t83 = icmp ne i32 %t81, 0
  br i1 %t83, label %bb13, label %bb14
bb13:
  store i32 65536, ptr %rv
  br label %ret
bb14:
  br label %bb15
bb15:
  %t86 = load %"compiler/mir:Lvalue", ptr %l11
  %t88 = call i64 @compiler_2feval_2eplainLocal(%"compiler/mir:Lvalue" %t86)
  store i64 %t88, ptr %l51
  br label %bb16
bb16:
  %t89 = load i64, ptr %l51, !tbaa !24
  store i64 %t89, ptr %l12, !tbaa !24
  %t90 = load i64, ptr %l12, !tbaa !24
  %t92 = icmp slt i64 %t90, 0
  br i1 %t92, label %bb17, label %bb18
bb17:
  store i1 true, ptr %l54, !tbaa !21
  br label %bb21
bb18:
  %t94 = load ptr, ptr %l0, !tbaa !29
  store ptr %t94, ptr %l55, !tbaa !29
  %t95 = load ptr, ptr %l1, !tbaa !29
  %t97 = getelementptr %"compiler/mir:Fn", ptr %t95, i32 0, i32 7
  %t98 = load i64, ptr %l12, !tbaa !24
  %t101 = call %"compiler/mir:Local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aLocal_3e_2eAt_3ccompiler_2fmir_3aLocal_3e(ptr %v1, ptr %t97, i64 %t98)
  store %"compiler/mir:Local" %t101, ptr %l59
  br label %bb19
bb19:
  %t102 = getelementptr %"compiler/mir:Local", ptr %l59, i32 0, i32 2
  %t103 = load i32, ptr %t102, !tbaa !23
  %t104 = load ptr, ptr %l55, !tbaa !29
  %t106 = call i1 @compiler_2feval_2ecompiler_2feval_3aMachine_2enumber(ptr %v0, ptr %t104, i32 %t103)
  store i1 %t106, ptr %l61
  br label %bb20
bb20:
  %t107 = load i1, ptr %l61, !tbaa !21
  %t108 = xor i1 %t107, true
  store i1 %t108, ptr %l54, !tbaa !21
  br label %bb21
bb21:
  %t110 = load i1, ptr %l54, !tbaa !21
  br i1 %t110, label %bb22, label %bb23
bb22:
  store i32 65536, ptr %rv
  br label %ret
bb23:
  br label %bb24
bb24:
  %t112 = load i64, ptr %l12, !tbaa !24
  store i64 %t112, ptr %l13, !tbaa !24
  %t114 = load ptr, ptr %l0, !tbaa !29
  store ptr %t114, ptr %l65, !tbaa !29
  %t115 = load ptr, ptr %l1, !tbaa !29
  %t117 = getelementptr %"compiler/mir:Fn", ptr %t115, i32 0, i32 7
  %t118 = load i64, ptr %l12, !tbaa !24
  %t121 = call %"compiler/mir:Local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aLocal_3e_2eAt_3ccompiler_2fmir_3aLocal_3e(ptr %v1, ptr %t117, i64 %t118)
  store %"compiler/mir:Local" %t121, ptr %l69
  br label %bb25
bb25:
  %t122 = getelementptr %"compiler/mir:Local", ptr %l69, i32 0, i32 2
  %t123 = load i32, ptr %t122, !tbaa !23
  %t124 = load ptr, ptr %l65, !tbaa !29
  %t126 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2ewidth(ptr %v0, ptr %t124, i32 %t123)
  store i64 %t126, ptr %l71
  br label %bb26
bb26:
  %t127 = load i64, ptr %l71, !tbaa !24
  store i64 %t127, ptr %l14, !tbaa !24
  %t128 = load ptr, ptr %l1, !tbaa !29
  %t130 = getelementptr %"compiler/mir:Fn", ptr %t128, i32 0, i32 7
  %t131 = load i64, ptr %l12, !tbaa !24
  %t134 = call %"compiler/mir:Local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aLocal_3e_2eAt_3ccompiler_2fmir_3aLocal_3e(ptr %v1, ptr %t130, i64 %t131)
  store %"compiler/mir:Local" %t134, ptr %l75
  br label %bb27
bb27:
  %t135 = getelementptr %"compiler/mir:Local", ptr %l75, i32 0, i32 2
  %t136 = load i32, ptr %t135, !tbaa !23
  %t138 = sext i32 %t136 to i64
  %t140 = load ptr, ptr %l3, !tbaa !29
  %t142 = getelementptr %"compiler/eval:cfn", ptr %t140, i32 0, i32 13
  %t143 = load { i64, ptr }, ptr %t142, !tbaa !27
  store { i64, ptr } %t143, ptr %l79, !tbaa !27
  %t144 = load i64, ptr %l4, !tbaa !24
  %t145 = load i64, ptr %l13, !tbaa !24
  %t148 = getelementptr { i64, ptr }, ptr %l79, i32 0, i32 1
  %t149 = load ptr, ptr %t148, !tbaa !27
  %t150 = getelementptr i64, ptr %t149, i64 %t144
  store i64 %t145, ptr %t150, !tbaa !34
  %t151 = load ptr, ptr %l3, !tbaa !29
  %t153 = getelementptr %"compiler/eval:cfn", ptr %t151, i32 0, i32 13
  %t154 = load { i64, ptr }, ptr %t153, !tbaa !27
  store { i64, ptr } %t154, ptr %l83, !tbaa !27
  %t155 = load i64, ptr %l4, !tbaa !24
  %t157 = add i64 %t155, 1
  %t158 = load i64, ptr %l14, !tbaa !24
  %t161 = getelementptr { i64, ptr }, ptr %l83, i32 0, i32 1
  %t162 = load ptr, ptr %t161, !tbaa !27
  %t163 = getelementptr i64, ptr %t162, i64 %t157
  store i64 %t158, ptr %t163, !tbaa !34
  %t164 = load ptr, ptr %l3, !tbaa !29
  %t166 = getelementptr %"compiler/eval:cfn", ptr %t164, i32 0, i32 13
  %t167 = load { i64, ptr }, ptr %t166, !tbaa !27
  store { i64, ptr } %t167, ptr %l88, !tbaa !27
  %t168 = load i64, ptr %l5, !tbaa !24
  %t172 = getelementptr { i64, ptr }, ptr %l88, i32 0, i32 1
  %t173 = load ptr, ptr %t172, !tbaa !27
  %t174 = getelementptr i64, ptr %t173, i64 %t168
  store i64 %t138, ptr %t174, !tbaa !34
  br label %bb33
bb28:
  br i1 true, label %bb29, label %bb30
bb29:
  br label %bb31
bb30:
  br label %bb32
bb31:
  store i32 65536, ptr %rv
  br label %ret
bb32:
  call void @__olang_check_failed(ptr @olang_loc_e07540d555d7dc03_f134256d7232b767)
  unreachable
bb33:
  store i32 0, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local ptr @compiler_2feval_2ecompiler_2feval_3aMachine_2efnOfFrame(ptr %v0, ptr %v1, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l5 = alloca { i64, ptr }
  %l8 = alloca ptr
  %rv = alloca ptr
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/eval:Machine", ptr %t1, i32 0, i32 22
  %t4 = load ptr, ptr %l0, !tbaa !29
  %t6 = getelementptr %"compiler/eval:Machine", ptr %t4, i32 0, i32 55
  %t7 = load { i64, ptr }, ptr %t6, !tbaa !27
  store { i64, ptr } %t7, ptr %l5, !tbaa !27
  %t10 = getelementptr { i64, ptr }, ptr %l5, i32 0, i32 1
  %t11 = load ptr, ptr %t10, !tbaa !27
  %t12 = getelementptr %"compiler/eval:frame", ptr %t11, i64 %a1
  %t13 = getelementptr %"compiler/eval:frame", ptr %t12, i32 0, i32 0
  %t14 = load i64, ptr %t13, !tbaa !24
  %t17 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aFn_26_3e_2eAt_3ccompiler_2fmir_3aFn_26_3e(ptr %v0, ptr %v1, ptr %t3, i64 %t14)
  store ptr %t17, ptr %l8
  br label %bb1
bb1:
  %t18 = load ptr, ptr %l8, !tbaa !29
  store ptr %t18, ptr %rv
  br label %ret
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

define dso_local i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2efoundScope(ptr %v0, ptr %a0, %"compiler/eval:Ptr" %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/eval:Ptr"
  %l2 = alloca i64
  %l3 = alloca i64
  %l4 = alloca i64
  %l16 = alloca i1
  %l18 = alloca { i64, ptr }
  %l22 = alloca i64
  %l28 = alloca { i64, ptr }
  %l33 = alloca i1
  %l34 = alloca i1
  %l40 = alloca %"compiler/eval:scope"
  %l47 = alloca i64
  %l50 = alloca i1
  %l59 = alloca %"compiler/eval:scope"
  %l64 = alloca i1
  %l68 = alloca i1
  %l72 = alloca i64
  %rv = alloca i64
  %t81 = alloca %"compiler/eval:scope", align 8
  %t121 = alloca %"compiler/eval:scope", align 8
  store ptr %a0, ptr %l0
  store %"compiler/eval:Ptr" %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = getelementptr %"compiler/eval:Ptr", ptr %l1, i32 0, i32 0
  %t2 = load i64, ptr %t1, !tbaa !24
  %t4 = icmp eq i64 %t2, 0
  br i1 %t4, label %bb1, label %bb2
bb1:
  %t6 = load ptr, ptr %l0, !tbaa !29
  %t8 = getelementptr %"compiler/eval:Machine", ptr %t6, i32 0, i32 67
  %t9 = load i64, ptr %t8, !tbaa !24
  store i64 %t9, ptr %rv
  br label %ret
bb2:
  br label %bb3
bb3:
  %t11 = getelementptr %"compiler/eval:Ptr", ptr %l1, i32 0, i32 0
  %t12 = load i64, ptr %t11, !tbaa !24
  %t13 = load i64, ptr @G_2ecompiler_2feval_2eslotMask, !tbaa !24
  %t16 = and i64 %t12, %t13
  store i64 %t16, ptr %l2, !tbaa !24
  %t18 = load i64, ptr %l2, !tbaa !24
  %t19 = load ptr, ptr %l0, !tbaa !29
  %t21 = getelementptr %"compiler/eval:Machine", ptr %t19, i32 0, i32 47
  %t22 = load i64, ptr %t21, !tbaa !24
  %t25 = icmp sge i64 %t18, %t22
  br i1 %t25, label %bb4, label %bb5
bb4:
  store i1 true, ptr %l16, !tbaa !21
  br label %bb6
bb5:
  %t27 = load ptr, ptr %l0, !tbaa !29
  %t29 = getelementptr %"compiler/eval:Machine", ptr %t27, i32 0, i32 46
  %t30 = load { i64, ptr }, ptr %t29, !tbaa !27
  store { i64, ptr } %t30, ptr %l18, !tbaa !27
  %t31 = load i64, ptr %l2, !tbaa !24
  %t33 = getelementptr { i64, ptr }, ptr %l18, i32 0, i32 1
  %t34 = load ptr, ptr %t33, !tbaa !27
  %t35 = getelementptr %"compiler/eval:alloc", ptr %t34, i64 %t31
  %t36 = getelementptr %"compiler/eval:alloc", ptr %t35, i32 0, i32 3
  %t37 = load i64, ptr %t36, !tbaa !24
  %t38 = getelementptr %"compiler/eval:Ptr", ptr %l1, i32 0, i32 0
  %t39 = load i64, ptr %t38, !tbaa !24
  %t40 = load i64, ptr @G_2ecompiler_2feval_2eslotBits, !tbaa !24
  store i64 %t40, ptr %l22, !tbaa !24
  %t42 = load i64, ptr %l22, !tbaa !24
  %t43 = load i64, ptr %l22, !tbaa !24
  %t44 = ashr i64 %t39, %t43
  %t47 = icmp ne i64 %t37, %t44
  store i1 %t47, ptr %l16, !tbaa !21
  br label %bb6
bb6:
  %t49 = load i1, ptr %l16, !tbaa !21
  br i1 %t49, label %bb7, label %bb8
bb7:
  %t50 = load ptr, ptr %l0, !tbaa !29
  %t52 = getelementptr %"compiler/eval:Machine", ptr %t50, i32 0, i32 67
  %t53 = load i64, ptr %t52, !tbaa !24
  store i64 %t53, ptr %rv
  br label %ret
bb8:
  br label %bb9
bb9:
  %t55 = load ptr, ptr %l0, !tbaa !29
  %t57 = getelementptr %"compiler/eval:Machine", ptr %t55, i32 0, i32 46
  %t58 = load { i64, ptr }, ptr %t57, !tbaa !27
  store { i64, ptr } %t58, ptr %l28, !tbaa !27
  %t59 = load i64, ptr %l2, !tbaa !24
  %t61 = getelementptr { i64, ptr }, ptr %l28, i32 0, i32 1
  %t62 = load ptr, ptr %t61, !tbaa !27
  %t63 = getelementptr %"compiler/eval:alloc", ptr %t62, i64 %t59
  %t64 = getelementptr %"compiler/eval:alloc", ptr %t63, i32 0, i32 5
  %t65 = load i64, ptr %t64, !tbaa !24
  store i64 %t65, ptr %l3, !tbaa !24
  br label %bb10
bb10:
  %t67 = load ptr, ptr %l0, !tbaa !29
  %t68 = load i64, ptr %l3, !tbaa !24
  %t71 = call i1 @compiler_2feval_2ecompiler_2feval_3aMachine_2elive(ptr %v0, ptr %t67, i64 %t68)
  store i1 %t71, ptr %l33
  br label %bb11
bb11:
  %t72 = load i1, ptr %l33, !tbaa !21
  br i1 %t72, label %bb12, label %bb13
bb12:
  %t73 = load ptr, ptr %l0, !tbaa !29
  %t75 = getelementptr %"compiler/eval:Machine", ptr %t73, i32 0, i32 49
  %t76 = load i64, ptr %l3, !tbaa !24
  %t77 = load i64, ptr @G_2ecompiler_2feval_2eslotMask, !tbaa !24
  %t80 = and i64 %t76, %t77
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3ascope_3e_2eAt_3ccompiler_2feval_3ascope_3e(ptr %t81, ptr %v0, ptr %t75, i64 %t80)
  call void @llvm.memmove.p0.p0.i64(ptr %l40, ptr %t81, i64 144, i1 false)
  br label %bb14
bb13:
  store i1 false, ptr %l34, !tbaa !21
  br label %bb15
bb14:
  %t84 = getelementptr %"compiler/eval:scope", ptr %l40, i32 0, i32 2
  %t85 = load i64, ptr %t84, !tbaa !24
  %t86 = load i64, ptr @G_2ecompiler_2feval_2esRegion, !tbaa !24
  %t89 = icmp eq i64 %t85, %t86
  store i1 %t89, ptr %l34, !tbaa !21
  br label %bb15
bb15:
  %t91 = load i1, ptr %l34, !tbaa !21
  %t92 = xor i1 %t91, true
  br i1 %t92, label %bb16, label %bb17
bb16:
  br label %bb21
bb17:
  br label %bb18
bb18:
  %t94 = load ptr, ptr %l0, !tbaa !29
  %t95 = load i64, ptr %l3, !tbaa !24
  %t98 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2eregionHome(ptr %v0, ptr %t94, i64 %t95)
  store i64 %t98, ptr %l47
  br label %bb19
bb19:
  %t99 = load i64, ptr %l47, !tbaa !24
  store i64 %t99, ptr %l3, !tbaa !24
  br label %bb20
bb20:
  br label %bb10
bb21:
  %t100 = load ptr, ptr %l0, !tbaa !29
  %t101 = load i64, ptr %l3, !tbaa !24
  %t104 = call i1 @compiler_2feval_2ecompiler_2feval_3aMachine_2elive(ptr %v0, ptr %t100, i64 %t101)
  store i1 %t104, ptr %l50
  br label %bb22
bb22:
  %t105 = load i1, ptr %l50, !tbaa !21
  %t106 = xor i1 %t105, true
  br i1 %t106, label %bb23, label %bb24
bb23:
  %t108 = load ptr, ptr %l0, !tbaa !29
  %t110 = getelementptr %"compiler/eval:Machine", ptr %t108, i32 0, i32 67
  %t111 = load i64, ptr %t110, !tbaa !24
  store i64 %t111, ptr %rv
  br label %ret
bb24:
  br label %bb25
bb25:
  %t113 = load ptr, ptr %l0, !tbaa !29
  %t115 = getelementptr %"compiler/eval:Machine", ptr %t113, i32 0, i32 49
  %t116 = load i64, ptr %l3, !tbaa !24
  %t117 = load i64, ptr @G_2ecompiler_2feval_2eslotMask, !tbaa !24
  %t120 = and i64 %t116, %t117
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3ascope_3e_2eAt_3ccompiler_2feval_3ascope_3e(ptr %t121, ptr %v0, ptr %t115, i64 %t120)
  call void @llvm.memmove.p0.p0.i64(ptr %l59, ptr %t121, i64 144, i1 false)
  br label %bb26
bb26:
  %t124 = getelementptr %"compiler/eval:scope", ptr %l59, i32 0, i32 2
  %t125 = load i64, ptr %t124, !tbaa !24
  store i64 %t125, ptr %l4, !tbaa !24
  %t127 = load i64, ptr %l4, !tbaa !24
  %t128 = load i64, ptr @G_2ecompiler_2feval_2esStore, !tbaa !24
  %t131 = icmp eq i64 %t127, %t128
  br i1 %t131, label %bb27, label %bb28
bb27:
  store i1 true, ptr %l64, !tbaa !21
  br label %bb29
bb28:
  %t133 = load i64, ptr %l4, !tbaa !24
  %t134 = load i64, ptr @G_2ecompiler_2feval_2esInert, !tbaa !24
  %t137 = icmp eq i64 %t133, %t134
  store i1 %t137, ptr %l64, !tbaa !21
  br label %bb29
bb29:
  %t139 = load i1, ptr %l64, !tbaa !21
  br i1 %t139, label %bb30, label %bb31
bb30:
  store i1 true, ptr %l68, !tbaa !21
  br label %bb32
bb31:
  %t140 = load i64, ptr %l4, !tbaa !24
  %t141 = load i64, ptr @G_2ecompiler_2feval_2esBuilder, !tbaa !24
  %t144 = icmp eq i64 %t140, %t141
  store i1 %t144, ptr %l68, !tbaa !21
  br label %bb32
bb32:
  %t146 = load i1, ptr %l68, !tbaa !21
  br i1 %t146, label %bb33, label %bb34
bb33:
  %t147 = load ptr, ptr %l0, !tbaa !29
  %t149 = getelementptr %"compiler/eval:Machine", ptr %t147, i32 0, i32 67
  %t150 = load i64, ptr %t149, !tbaa !24
  store i64 %t150, ptr %l72, !tbaa !24
  br label %bb35
bb34:
  %t152 = load i64, ptr %l3, !tbaa !24
  store i64 %t152, ptr %l72, !tbaa !24
  br label %bb35
bb35:
  %t154 = load i64, ptr %l72, !tbaa !24
  store i64 %t154, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local i1 @compiler_2feval_2ecompiler_2feval_3aMachine_2eglobalWritten(ptr %v0, ptr %a0, %"compiler/mir:Lvalue" %a1) #0 {
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
  br label %bb16
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
  %t38 = load i64, ptr %l5, !tbaa !24
  %t39 = load ptr, ptr %l0, !tbaa !29
  %t41 = getelementptr %"compiler/eval:Machine", ptr %t39, i32 0, i32 70
  %t42 = load i64, ptr %t41, !tbaa !24
  %t45 = icmp ne i64 %t38, %t42
  store i1 %t45, ptr %l21, !tbaa !21
  br label %bb11
bb10:
  store i1 false, ptr %l21, !tbaa !21
  br label %bb11
bb11:
  %t47 = load i1, ptr %l21, !tbaa !21
  br i1 %t47, label %bb12, label %bb13
bb12:
  %t48 = load ptr, ptr %l0, !tbaa !29
  %t49 = load { i64, ptr }, ptr @G_2ecompiler_2feval_2eWhyWritesGlobalVar, !tbaa !27
  %t50 = load ptr, ptr @__olang_prog_scope
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2erefuse(ptr %v0, ptr %t50, ptr %t48, { i64, ptr } %t49)
  br label %bb14
bb13:
  br label %bb15
bb14:
  call void @__olang_scope_close(ptr %s1)
  store i1 false, ptr %rv
  br label %ret
bb15:
  call void @__olang_scope_close(ptr %s1)
  br label %bb21
bb16:
  br i1 true, label %bb17, label %bb18
bb17:
  br label %bb19
bb18:
  br label %bb20
bb19:
  br label %bb21
bb20:
  call void @__olang_check_failed(ptr @olang_loc_cdcdbab6c5a00ca5_1566754bdc1f9529)
  unreachable
bb21:
  store i1 true, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2eintToFloat(ptr %v0, ptr %a0, i64 %a1, i1 %a2, i32 %a3) #0 {
entry:
  %l1 = alloca i64
  %l4 = alloca i32
  %l5 = alloca i64
  %l9 = alloca i32
  %l13 = alloca i64
  %l36 = alloca i64
  %rv = alloca i64
  store i64 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t3 = getelementptr %"compiler/eval:Machine", ptr %a0, i32 0, i32 0
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t8 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %v0, ptr %t4, i32 %a3)
  store i32 %t8, ptr %l9
  br label %bb1
bb1:
  %t9 = load i32, ptr %l9, !tbaa !23
  store i32 %t9, ptr %l4, !tbaa !23
  br i1 %a2, label %bb2, label %bb3
bb2:
  %t12 = load i64, ptr %l1, !tbaa !24
  store i64 %t12, ptr %l5, !tbaa !65
  %t15 = load i32, ptr %l4, !tbaa !23
  %t17 = icmp eq i32 %t15, 11
  br i1 %t17, label %bb4, label %bb5
bb3:
  br label %bb21
bb4:
  br label %bb6
bb5:
  br label %bb7
bb6:
  %t19 = load i64, ptr %l5, !tbaa !65
  %t21 = uitofp i64 %t19 to double
  %t22 = call double @llvm.arithmetic.fence.f64(double %t21)
  %t23 = fptrunc double %t22 to half
  %t25 = bitcast half %t23 to i16
  %t26 = call i16 asm "", "=r,0"(i16 %t25)
  %t28 = zext i16 %t26 to i64
  store i64 %t28, ptr %l13, !tbaa !24
  br label %bb20
bb7:
  %t30 = load i32, ptr %l4, !tbaa !23
  %t32 = icmp eq i32 %t30, 12
  br i1 %t32, label %bb8, label %bb9
bb8:
  br label %bb10
bb9:
  br label %bb11
bb10:
  %t34 = load i64, ptr %l5, !tbaa !65
  %t36 = call bfloat @__olang_int_bf16(i64 %t34, i1 false)
  %t38 = bitcast bfloat %t36 to i16
  %t39 = call i16 asm "", "=r,0"(i16 %t38)
  %t41 = zext i16 %t39 to i64
  store i64 %t41, ptr %l13, !tbaa !24
  br label %bb20
bb11:
  %t43 = load i32, ptr %l4, !tbaa !23
  %t45 = icmp eq i32 %t43, 13
  br i1 %t45, label %bb12, label %bb13
bb12:
  br label %bb14
bb13:
  br label %bb15
bb14:
  %t47 = load i64, ptr %l5, !tbaa !65
  %t49 = uitofp i64 %t47 to float
  %t51 = bitcast float %t49 to i32
  %t53 = zext i32 %t51 to i64
  store i64 %t53, ptr %l13, !tbaa !24
  br label %bb20
bb15:
  br i1 true, label %bb16, label %bb17
bb16:
  br label %bb18
bb17:
  br label %bb19
bb18:
  %t55 = load i64, ptr %l5, !tbaa !65
  %t57 = uitofp i64 %t55 to double
  %t59 = bitcast double %t57 to i64
  store i64 %t59, ptr %l13, !tbaa !24
  br label %bb20
bb19:
  call void @__olang_check_failed(ptr @olang_loc_20cdf2bac11b5657_20b8fcdfbd19fb1b)
  unreachable
bb20:
  %t62 = load i64, ptr %l13, !tbaa !24
  store i64 %t62, ptr %rv
  br label %ret
bb21:
  %t63 = load i32, ptr %l4, !tbaa !23
  %t65 = icmp eq i32 %t63, 11
  br i1 %t65, label %bb22, label %bb23
bb22:
  br label %bb24
bb23:
  br label %bb25
bb24:
  %t67 = load i64, ptr %l1, !tbaa !24
  %t69 = sitofp i64 %t67 to double
  %t70 = call double @llvm.arithmetic.fence.f64(double %t69)
  %t71 = fptrunc double %t70 to half
  %t73 = bitcast half %t71 to i16
  %t74 = call i16 asm "", "=r,0"(i16 %t73)
  %t76 = zext i16 %t74 to i64
  store i64 %t76, ptr %l36, !tbaa !24
  br label %bb38
bb25:
  %t78 = load i32, ptr %l4, !tbaa !23
  %t80 = icmp eq i32 %t78, 12
  br i1 %t80, label %bb26, label %bb27
bb26:
  br label %bb28
bb27:
  br label %bb29
bb28:
  %t82 = load i64, ptr %l1, !tbaa !24
  %t84 = icmp slt i64 %t82, 0
  %t85 = sub i64 0, %t82
  %t86 = select i1 %t84, i64 %t85, i64 %t82
  %t87 = call bfloat @__olang_int_bf16(i64 %t86, i1 %t84)
  %t89 = bitcast bfloat %t87 to i16
  %t90 = call i16 asm "", "=r,0"(i16 %t89)
  %t92 = zext i16 %t90 to i64
  store i64 %t92, ptr %l36, !tbaa !24
  br label %bb38
bb29:
  %t94 = load i32, ptr %l4, !tbaa !23
  %t96 = icmp eq i32 %t94, 13
  br i1 %t96, label %bb30, label %bb31
bb30:
  br label %bb32
bb31:
  br label %bb33
bb32:
  %t98 = load i64, ptr %l1, !tbaa !24
  %t100 = sitofp i64 %t98 to float
  %t102 = bitcast float %t100 to i32
  %t104 = zext i32 %t102 to i64
  store i64 %t104, ptr %l36, !tbaa !24
  br label %bb38
bb33:
  br i1 true, label %bb34, label %bb35
bb34:
  br label %bb36
bb35:
  br label %bb37
bb36:
  %t106 = load i64, ptr %l1, !tbaa !24
  %t108 = sitofp i64 %t106 to double
  %t110 = bitcast double %t108 to i64
  store i64 %t110, ptr %l36, !tbaa !24
  br label %bb38
bb37:
  call void @__olang_check_failed(ptr @olang_loc_3dd741f2ac40c2b6_e435d9fa661ce11a)
  unreachable
bb38:
  %t113 = load i64, ptr %l36, !tbaa !24
  store i64 %t113, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2eintValue(ptr %v0, ptr %a0, i64 %a1, i32 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca i32
  %l3 = alloca i64
  %l4 = alloca i64
  %l7 = alloca i64
  %l11 = alloca i64
  %l13 = alloca i64
  %l17 = alloca i64
  %l20 = alloca i1
  %l23 = alloca i64
  %l27 = alloca i64
  %l29 = alloca i64
  %rv = alloca i64
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  store i32 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load i32, ptr %l2, !tbaa !23
  %t5 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2eibits(ptr %v0, ptr %t1, i32 %t2)
  store i64 %t5, ptr %l7
  br label %bb1
bb1:
  %t6 = load i64, ptr %l7, !tbaa !24
  store i64 %t6, ptr %l3, !tbaa !24
  %t7 = load i64, ptr %l3, !tbaa !24
  %t9 = icmp sge i64 %t7, 64
  br i1 %t9, label %bb2, label %bb3
bb2:
  %t11 = load i64, ptr %l1, !tbaa !24
  store i64 %t11, ptr %rv
  br label %ret
bb3:
  br label %bb4
bb4:
  %t13 = load i64, ptr %l1, !tbaa !24
  store i64 %t13, ptr %l11, !tbaa !24
  %t14 = load i64, ptr %l3, !tbaa !24
  %t16 = call i64 @compiler_2feval_2ebmask(i64 %t14)
  store i64 %t16, ptr %l13
  br label %bb5
bb5:
  %t17 = load i64, ptr %l11, !tbaa !24
  %t18 = load i64, ptr %l13, !tbaa !24
  %t19 = and i64 %t17, %t18
  store i64 %t19, ptr %l4, !tbaa !24
  %t21 = load ptr, ptr %l0, !tbaa !29
  %t22 = load i32, ptr %l2, !tbaa !23
  %t25 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2eshape(ptr %v0, ptr %t21, i32 %t22)
  store i64 %t25, ptr %l17
  br label %bb6
bb6:
  %t26 = load i64, ptr @G_2ecompiler_2feval_2evInt, !tbaa !24
  %t27 = load i64, ptr %l17, !tbaa !24
  %t29 = icmp eq i64 %t27, %t26
  br i1 %t29, label %bb7, label %bb8
bb7:
  %t31 = load i64, ptr %l4, !tbaa !24
  %t32 = load i64, ptr %l3, !tbaa !24
  %t34 = sub i64 %t32, 1
  store i64 %t34, ptr %l23, !tbaa !24
  %t36 = load i64, ptr %l23, !tbaa !24
  %t37 = load i64, ptr %l23, !tbaa !24
  %t38 = ashr i64 %t31, %t37
  %t40 = and i64 %t38, 1
  %t42 = icmp eq i64 %t40, 1
  store i1 %t42, ptr %l20, !tbaa !21
  br label %bb9
bb8:
  store i1 false, ptr %l20, !tbaa !21
  br label %bb9
bb9:
  %t44 = load i1, ptr %l20, !tbaa !21
  br i1 %t44, label %bb10, label %bb11
bb10:
  %t45 = load i64, ptr %l4, !tbaa !24
  store i64 %t45, ptr %l27, !tbaa !24
  %t46 = load i64, ptr %l3, !tbaa !24
  %t48 = call i64 @compiler_2feval_2ebmask(i64 %t46)
  store i64 %t48, ptr %l29
  br label %bb12
bb11:
  br label %bb13
bb12:
  %t49 = load i64, ptr %l29, !tbaa !24
  %t50 = xor i64 %t49, -1
  %t51 = load i64, ptr %l27, !tbaa !24
  %t53 = or i64 %t51, %t50
  store i64 %t53, ptr %rv
  br label %ret
bb13:
  %t55 = load i64, ptr %l4, !tbaa !24
  store i64 %t55, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2elenOf(ptr %v0, ptr %a0, i64 %a1, { i64, [4 x i64] } %a2, i32 %a3) #0 {
entry:
  %l0 = alloca ptr
  %l4 = alloca ptr
  %l5 = alloca i32
  %l10 = alloca i32
  %l13 = alloca i32
  %l16 = alloca ptr
  %l19 = alloca i32
  %l20 = alloca i32
  %l23 = alloca i32
  %l27 = alloca i64
  %l28 = alloca ptr
  %l32 = alloca %"compiler/eval:Ptr"
  %l33 = alloca i64
  %rv = alloca i64
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/eval:Machine", ptr %t1, i32 0, i32 0
  %t4 = load ptr, ptr %t3, !tbaa !29
  store ptr %t4, ptr %l4, !tbaa !29
  %t6 = load ptr, ptr %l4, !tbaa !29
  %t10 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %v0, ptr %t6, i32 %a3)
  store i32 %t10, ptr %l10
  br label %bb1
bb1:
  %t11 = load i32, ptr %l10, !tbaa !23
  store i32 %t11, ptr %l5, !tbaa !23
  %t12 = load ptr, ptr %l4, !tbaa !29
  %t13 = load i32, ptr %l5, !tbaa !23
  %t16 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t12, i32 %t13)
  store i32 %t16, ptr %l13
  br label %bb2
bb2:
  %t17 = load i32, ptr %l13, !range !{i32 0, i32 33}
  %t19 = trunc i64 20 to i32
  %t20 = icmp eq i32 %t17, %t19
  br i1 %t20, label %bb3, label %bb4
bb3:
  %t22 = load ptr, ptr %l4, !tbaa !29
  store ptr %t22, ptr %l16, !tbaa !29
  %t23 = load ptr, ptr %l4, !tbaa !29
  %t24 = load i32, ptr %l5, !tbaa !23
  %t27 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eReferent(ptr %v0, ptr %t23, i32 %t24)
  store i32 %t27, ptr %l19
  br label %bb5
bb4:
  br label %bb7
bb5:
  %t28 = load ptr, ptr %l16, !tbaa !29
  %t29 = load i32, ptr %l19, !tbaa !23
  %t30 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %v0, ptr %t28, i32 %t29)
  store i32 %t30, ptr %l20
  br label %bb6
bb6:
  %t31 = load i32, ptr %l20, !tbaa !23
  store i32 %t31, ptr %l5, !tbaa !23
  br label %bb7
bb7:
  %t32 = load ptr, ptr %l4, !tbaa !29
  %t33 = load i32, ptr %l5, !tbaa !23
  %t36 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eLength(ptr %v0, ptr %t32, i32 %t33)
  store i32 %t36, ptr %l23
  br label %bb8
bb8:
  %t37 = load i32, ptr %l23, !tbaa !23
  %t38 = icmp ne i32 %t37, 0
  br i1 %t38, label %bb9, label %bb10
bb9:
  %t40 = load ptr, ptr %l0, !tbaa !29
  %t41 = load i32, ptr %l5, !tbaa !23
  %t44 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2efixedLen(ptr %v0, ptr %t40, i32 %t41)
  store i64 %t44, ptr %l27
  br label %bb11
bb10:
  br label %bb12
bb11:
  %t45 = load i64, ptr %l27, !tbaa !24
  store i64 %t45, ptr %rv
  br label %ret
bb12:
  %t46 = load ptr, ptr %l0, !tbaa !29
  store ptr %t46, ptr %l28, !tbaa !29
  %t47 = load ptr, ptr %l0, !tbaa !29
  %t53 = call %"compiler/eval:Ptr" @compiler_2feval_2ecompiler_2feval_3aMachine_2eaddr(ptr %v0, ptr %t47, i64 %a1, { i64, [4 x i64] } %a2, i64 1)
  store %"compiler/eval:Ptr" %t53, ptr %l32
  br label %bb13
bb13:
  %t54 = load ptr, ptr %l28, !tbaa !29
  %t55 = load %"compiler/eval:Ptr", ptr %l32
  %t56 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2erd(ptr %v0, ptr %t54, %"compiler/eval:Ptr" %t55, i64 8)
  store i64 %t56, ptr %l33
  br label %bb14
bb14:
  %t57 = load i64, ptr %l33, !tbaa !24
  store i64 %t57, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local i1 @compiler_2feval_2ecompiler_2feval_3aMachine_2elive(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca i64
  %l8 = alloca i1
  %l9 = alloca i64
  %l12 = alloca i64
  %l14 = alloca i1
  %l18 = alloca %"compiler/eval:scope"
  %l20 = alloca i1
  %l24 = alloca %"compiler/eval:scope"
  %l27 = alloca i64
  %rv = alloca i1
  %t26 = alloca %"compiler/eval:scope", align 8
  %t37 = alloca %"compiler/eval:scope", align 8
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load i64, ptr %l1, !tbaa !24
  %t2 = load i64, ptr @G_2ecompiler_2feval_2eslotMask, !tbaa !24
  %t5 = and i64 %t1, %t2
  store i64 %t5, ptr %l2, !tbaa !24
  %t7 = load i64, ptr %l1, !tbaa !24
  %t9 = icmp ne i64 %t7, 0
  br i1 %t9, label %bb1, label %bb2
bb1:
  %t11 = load i64, ptr %l2, !tbaa !24
  store i64 %t11, ptr %l9, !tbaa !24
  %t12 = load ptr, ptr %l0, !tbaa !29
  %t14 = getelementptr %"compiler/eval:Machine", ptr %t12, i32 0, i32 49
  %t16 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3ascope_3e_2eLen_3ccompiler_2feval_3ascope_3e(ptr %v0, ptr %t14)
  store i64 %t16, ptr %l12
  br label %bb3
bb2:
  store i1 false, ptr %l8, !tbaa !21
  br label %bb4
bb3:
  %t17 = load i64, ptr %l9, !tbaa !24
  %t18 = load i64, ptr %l12, !tbaa !24
  %t19 = icmp slt i64 %t17, %t18
  store i1 %t19, ptr %l8, !tbaa !21
  br label %bb4
bb4:
  %t21 = load i1, ptr %l8, !tbaa !21
  br i1 %t21, label %bb5, label %bb6
bb5:
  %t22 = load ptr, ptr %l0, !tbaa !29
  %t24 = getelementptr %"compiler/eval:Machine", ptr %t22, i32 0, i32 49
  %t25 = load i64, ptr %l2, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3ascope_3e_2eAt_3ccompiler_2feval_3ascope_3e(ptr %t26, ptr %v0, ptr %t24, i64 %t25)
  call void @llvm.memmove.p0.p0.i64(ptr %l18, ptr %t26, i64 144, i1 false)
  br label %bb7
bb6:
  store i1 false, ptr %l14, !tbaa !21
  br label %bb8
bb7:
  %t29 = getelementptr %"compiler/eval:scope", ptr %l18, i32 0, i32 1
  %t30 = load i1, ptr %t29, !tbaa !21
  store i1 %t30, ptr %l14, !tbaa !21
  br label %bb8
bb8:
  %t32 = load i1, ptr %l14, !tbaa !21
  br i1 %t32, label %bb9, label %bb10
bb9:
  %t33 = load ptr, ptr %l0, !tbaa !29
  %t35 = getelementptr %"compiler/eval:Machine", ptr %t33, i32 0, i32 49
  %t36 = load i64, ptr %l2, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3ascope_3e_2eAt_3ccompiler_2feval_3ascope_3e(ptr %t37, ptr %v0, ptr %t35, i64 %t36)
  call void @llvm.memmove.p0.p0.i64(ptr %l24, ptr %t37, i64 144, i1 false)
  br label %bb11
bb10:
  store i1 false, ptr %l20, !tbaa !21
  br label %bb12
bb11:
  %t40 = getelementptr %"compiler/eval:scope", ptr %l24, i32 0, i32 0
  %t41 = load i64, ptr %t40, !tbaa !24
  %t42 = load i64, ptr %l1, !tbaa !24
  %t43 = load i64, ptr @G_2ecompiler_2feval_2eslotBits, !tbaa !24
  store i64 %t43, ptr %l27, !tbaa !24
  %t45 = load i64, ptr %l27, !tbaa !24
  %t46 = load i64, ptr %l27, !tbaa !24
  %t47 = ashr i64 %t42, %t46
  %t50 = icmp eq i64 %t41, %t47
  store i1 %t50, ptr %l20, !tbaa !21
  br label %bb12
bb12:
  %t52 = load i1, ptr %l20, !tbaa !21
  store i1 %t52, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local void @compiler_2feval_2ecompiler_2feval_3aMachine_2eloop(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca i64
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca { i64, ptr }
  %l12 = alloca i1
  %l17 = alloca ptr
  %l23 = alloca i1
  %l36 = alloca i64
  %l38 = alloca { i64, ptr }
  %l44 = alloca { i64, ptr }
  %l48 = alloca { i64, ptr }
  %l52 = alloca { i64, ptr }
  %l54 = alloca { i64, ptr }
  %l58 = alloca { i64, ptr }
  %l63 = alloca { i64, ptr }
  %l67 = alloca { i64, ptr }
  %l71 = alloca { i64, ptr }
  %l73 = alloca { i64, ptr }
  %l79 = alloca { i64, ptr }
  %l80 = alloca i64
  %l86 = alloca { i64, ptr }
  %l88 = alloca { i64, ptr }
  %l92 = alloca { i64, ptr }
  %l94 = alloca { i64, ptr }
  %l98 = alloca { i64, ptr }
  %l100 = alloca { i64, ptr }
  %l107 = alloca i1
  %l109 = alloca { i64, ptr }
  %l111 = alloca { i64, ptr }
  %l118 = alloca { i64, ptr }
  %l125 = alloca { i64, ptr }
  %l133 = alloca { i64, ptr }
  %l134 = alloca i64
  %l142 = alloca i1
  %l143 = alloca { i64, ptr }
  %l149 = alloca ptr
  %l155 = alloca i1
  %l173 = alloca { i64, ptr }
  %l175 = alloca { i64, ptr }
  %l179 = alloca { i64, ptr }
  %l181 = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  br label %bb1
bb1:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/eval:Machine", ptr %t1, i32 0, i32 56
  %t4 = load i64, ptr %t3, !tbaa !24
  %t8 = icmp sgt i64 %t4, %a1
  br i1 %t8, label %bb2, label %bb3
bb2:
  %t10 = load ptr, ptr %l0, !tbaa !29
  %t12 = getelementptr %"compiler/eval:Machine", ptr %t10, i32 0, i32 19
  %t13 = load i1, ptr %t12, !tbaa !21
  %t15 = xor i1 %t13, true
  store i1 %t15, ptr %l12, !tbaa !21
  br label %bb4
bb3:
  store i1 false, ptr %l12, !tbaa !21
  br label %bb4
bb4:
  %t17 = load i1, ptr %l12, !tbaa !21
  %t18 = xor i1 %t17, true
  br i1 %t18, label %bb5, label %bb6
bb5:
  br label %bb59
bb6:
  br label %bb7
bb7:
  %t20 = load ptr, ptr %l0, !tbaa !29
  store ptr %t20, ptr %l17, !tbaa !29
  %t21 = load ptr, ptr %l17, !tbaa !29
  %t22 = getelementptr %"compiler/eval:Machine", ptr %t21, i32 0, i32 11
  %t23 = load i64, ptr %t22, !tbaa !24
  %t25 = add i64 %t23, 1
  %t27 = load ptr, ptr %l17, !tbaa !29
  %t28 = getelementptr %"compiler/eval:Machine", ptr %t27, i32 0, i32 11
  store i64 %t25, ptr %t28, !tbaa !24
  %t29 = load ptr, ptr %l0, !tbaa !29
  %t31 = getelementptr %"compiler/eval:Machine", ptr %t29, i32 0, i32 2
  %t32 = load i64, ptr %t31, !tbaa !24
  %t34 = icmp sge i64 %t32, 0
  br i1 %t34, label %bb8, label %bb9
bb8:
  %t36 = load ptr, ptr %l0, !tbaa !29
  %t38 = getelementptr %"compiler/eval:Machine", ptr %t36, i32 0, i32 11
  %t39 = load i64, ptr %t38, !tbaa !24
  %t40 = load ptr, ptr %l0, !tbaa !29
  %t42 = getelementptr %"compiler/eval:Machine", ptr %t40, i32 0, i32 2
  %t43 = load i64, ptr %t42, !tbaa !24
  %t46 = icmp sgt i64 %t39, %t43
  store i1 %t46, ptr %l23, !tbaa !21
  br label %bb10
bb9:
  store i1 false, ptr %l23, !tbaa !21
  br label %bb10
bb10:
  %t48 = load i1, ptr %l23, !tbaa !21
  br i1 %t48, label %bb11, label %bb12
bb11:
  %t49 = load ptr, ptr %l0, !tbaa !29
  %t50 = load { i64, ptr }, ptr @G_2ecompiler_2feval_2eWhySteps, !tbaa !27
  %t51 = load ptr, ptr @__olang_prog_scope
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2erefuse(ptr %v0, ptr %t51, ptr %t49, { i64, ptr } %t50)
  br label %bb13
bb12:
  br label %bb14
bb13:
  br label %ret
bb14:
  %t54 = load ptr, ptr %l0, !tbaa !29
  %t56 = getelementptr %"compiler/eval:Machine", ptr %t54, i32 0, i32 56
  %t57 = load i64, ptr %t56, !tbaa !24
  %t59 = sub i64 %t57, 1
  store i64 %t59, ptr %l2, !tbaa !24
  %t61 = load ptr, ptr %l0, !tbaa !29
  %t63 = getelementptr %"compiler/eval:Machine", ptr %t61, i32 0, i32 59
  %t65 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %t63)
  store i64 %t65, ptr %l36
  br label %bb15
bb15:
  %t66 = load ptr, ptr %l0, !tbaa !29
  %t68 = getelementptr %"compiler/eval:Machine", ptr %t66, i32 0, i32 55
  %t69 = load { i64, ptr }, ptr %t68, !tbaa !27
  store { i64, ptr } %t69, ptr %l38, !tbaa !27
  %t70 = load i64, ptr %l2, !tbaa !24
  %t72 = getelementptr { i64, ptr }, ptr %l38, i32 0, i32 1
  %t73 = load ptr, ptr %t72, !tbaa !27
  %t74 = getelementptr %"compiler/eval:frame", ptr %t73, i64 %t70
  %t75 = getelementptr %"compiler/eval:frame", ptr %t74, i32 0, i32 9
  %t76 = load i64, ptr %t75, !tbaa !24
  %t77 = load i64, ptr %l36, !tbaa !24
  %t79 = icmp sgt i64 %t77, %t76
  br i1 %t79, label %bb16, label %bb17
bb16:
  %t81 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2estepClose(ptr %v0, ptr %t81)
  br label %bb18
bb17:
  br label %bb19
bb18:
  br label %bb58
bb19:
  %t83 = load ptr, ptr %l0, !tbaa !29
  %t85 = getelementptr %"compiler/eval:Machine", ptr %t83, i32 0, i32 55
  %t86 = load { i64, ptr }, ptr %t85, !tbaa !27
  store { i64, ptr } %t86, ptr %l44, !tbaa !27
  %t87 = load i64, ptr %l2, !tbaa !24
  %t89 = getelementptr { i64, ptr }, ptr %l44, i32 0, i32 1
  %t90 = load ptr, ptr %t89, !tbaa !27
  %t91 = getelementptr %"compiler/eval:frame", ptr %t90, i64 %t87
  %t92 = getelementptr %"compiler/eval:frame", ptr %t91, i32 0, i32 0
  %t93 = load i64, ptr %t92, !tbaa !24
  store i64 %t93, ptr %l3, !tbaa !24
  %t95 = load ptr, ptr %l0, !tbaa !29
  %t97 = getelementptr %"compiler/eval:Machine", ptr %t95, i32 0, i32 55
  %t98 = load { i64, ptr }, ptr %t97, !tbaa !27
  store { i64, ptr } %t98, ptr %l48, !tbaa !27
  %t99 = load i64, ptr %l2, !tbaa !24
  %t101 = getelementptr { i64, ptr }, ptr %l48, i32 0, i32 1
  %t102 = load ptr, ptr %t101, !tbaa !27
  %t103 = getelementptr %"compiler/eval:frame", ptr %t102, i64 %t99
  %t104 = getelementptr %"compiler/eval:frame", ptr %t103, i32 0, i32 1
  %t105 = load i64, ptr %t104, !tbaa !24
  store i64 %t105, ptr %l4, !tbaa !24
  %t107 = load ptr, ptr %l0, !tbaa !29
  %t109 = getelementptr %"compiler/eval:Machine", ptr %t107, i32 0, i32 23
  %t110 = load { i64, ptr }, ptr %t109, !tbaa !27
  store { i64, ptr } %t110, ptr %l52, !tbaa !27
  %t111 = load i64, ptr %l3, !tbaa !24
  %t113 = getelementptr { i64, ptr }, ptr %l52, i32 0, i32 1
  %t114 = load ptr, ptr %t113, !tbaa !27
  %t115 = getelementptr %"compiler/eval:cfn", ptr %t114, i64 %t111
  %t116 = getelementptr %"compiler/eval:cfn", ptr %t115, i32 0, i32 8
  %t117 = load { i64, ptr }, ptr %t116, !tbaa !27
  store { i64, ptr } %t117, ptr %l54, !tbaa !27
  %t118 = load i64, ptr %l4, !tbaa !24
  %t120 = getelementptr { i64, ptr }, ptr %l54, i32 0, i32 1
  %t121 = load ptr, ptr %t120, !tbaa !27
  %t122 = getelementptr i64, ptr %t121, i64 %t118
  %t123 = load i64, ptr %t122, !tbaa !34
  %t124 = load ptr, ptr %l0, !tbaa !29
  %t126 = getelementptr %"compiler/eval:Machine", ptr %t124, i32 0, i32 55
  %t127 = load { i64, ptr }, ptr %t126, !tbaa !27
  store { i64, ptr } %t127, ptr %l58, !tbaa !27
  %t128 = load i64, ptr %l2, !tbaa !24
  %t130 = getelementptr { i64, ptr }, ptr %l58, i32 0, i32 1
  %t131 = load ptr, ptr %t130, !tbaa !27
  %t132 = getelementptr %"compiler/eval:frame", ptr %t131, i64 %t128
  %t133 = getelementptr %"compiler/eval:frame", ptr %t132, i32 0, i32 2
  %t134 = load i64, ptr %t133, !tbaa !24
  %t137 = add i64 %t123, %t134
  store i64 %t137, ptr %l5, !tbaa !24
  %t139 = load ptr, ptr %l0, !tbaa !29
  %t141 = getelementptr %"compiler/eval:Machine", ptr %t139, i32 0, i32 55
  %t142 = load { i64, ptr }, ptr %t141, !tbaa !27
  store { i64, ptr } %t142, ptr %l63, !tbaa !27
  %t143 = load i64, ptr %l2, !tbaa !24
  %t145 = getelementptr { i64, ptr }, ptr %l63, i32 0, i32 1
  %t146 = load ptr, ptr %t145, !tbaa !27
  %t147 = getelementptr %"compiler/eval:frame", ptr %t146, i64 %t143
  %t148 = getelementptr %"compiler/eval:frame", ptr %t147, i32 0, i32 10
  %t149 = load i1, ptr %t148, !tbaa !21
  br i1 %t149, label %bb20, label %bb21
bb20:
  %t151 = load ptr, ptr %l0, !tbaa !29
  %t153 = getelementptr %"compiler/eval:Machine", ptr %t151, i32 0, i32 55
  %t154 = load { i64, ptr }, ptr %t153, !tbaa !27
  store { i64, ptr } %t154, ptr %l67, !tbaa !27
  %t155 = load i64, ptr %l2, !tbaa !24
  %t157 = getelementptr { i64, ptr }, ptr %l67, i32 0, i32 1
  %t158 = load ptr, ptr %t157, !tbaa !27
  %t159 = getelementptr %"compiler/eval:frame", ptr %t158, i64 %t155
  %t160 = getelementptr %"compiler/eval:frame", ptr %t159, i32 0, i32 10
  store i1 false, ptr %t160, !tbaa !21
  %t161 = load i64, ptr %l5, !tbaa !24
  %t162 = load ptr, ptr %l0, !tbaa !29
  %t164 = getelementptr %"compiler/eval:Machine", ptr %t162, i32 0, i32 23
  %t165 = load { i64, ptr }, ptr %t164, !tbaa !27
  store { i64, ptr } %t165, ptr %l71, !tbaa !27
  %t166 = load i64, ptr %l3, !tbaa !24
  %t168 = getelementptr { i64, ptr }, ptr %l71, i32 0, i32 1
  %t169 = load ptr, ptr %t168, !tbaa !27
  %t170 = getelementptr %"compiler/eval:cfn", ptr %t169, i64 %t166
  %t171 = getelementptr %"compiler/eval:cfn", ptr %t170, i32 0, i32 8
  %t172 = load { i64, ptr }, ptr %t171, !tbaa !27
  store { i64, ptr } %t172, ptr %l73, !tbaa !27
  %t173 = load i64, ptr %l4, !tbaa !24
  %t175 = add i64 %t173, 1
  %t177 = getelementptr { i64, ptr }, ptr %l73, i32 0, i32 1
  %t178 = load ptr, ptr %t177, !tbaa !27
  %t179 = getelementptr i64, ptr %t178, i64 %t175
  %t180 = load i64, ptr %t179, !tbaa !34
  %t183 = icmp slt i64 %t161, %t180
  br i1 %t183, label %bb22, label %bb23
bb21:
  br label %bb26
bb22:
  %t185 = load ptr, ptr %l0, !tbaa !29
  %t187 = getelementptr %"compiler/eval:Machine", ptr %t185, i32 0, i32 55
  %t188 = load { i64, ptr }, ptr %t187, !tbaa !27
  store { i64, ptr } %t188, ptr %l79, !tbaa !27
  %t189 = load i64, ptr %l2, !tbaa !24
  store i64 %t189, ptr %l80, !tbaa !24
  %t190 = load i64, ptr %l80, !tbaa !24
  %t191 = getelementptr { i64, ptr }, ptr %l79, i32 0, i32 1
  %t192 = load ptr, ptr %t191, !tbaa !27
  %t193 = getelementptr %"compiler/eval:frame", ptr %t192, i64 %t190
  %t194 = getelementptr %"compiler/eval:frame", ptr %t193, i32 0, i32 2
  %t195 = load i64, ptr %t194, !tbaa !24
  %t197 = add i64 %t195, 1
  %t199 = load i64, ptr %l80, !tbaa !24
  %t200 = getelementptr { i64, ptr }, ptr %l79, i32 0, i32 1
  %t201 = load ptr, ptr %t200, !tbaa !27
  %t202 = getelementptr %"compiler/eval:frame", ptr %t201, i64 %t199
  %t203 = getelementptr %"compiler/eval:frame", ptr %t202, i32 0, i32 2
  store i64 %t197, ptr %t203, !tbaa !24
  br label %bb25
bb23:
  %t204 = load ptr, ptr %l0, !tbaa !29
  %t205 = load i64, ptr %l2, !tbaa !24
  %t206 = load ptr, ptr %l0, !tbaa !29
  %t208 = getelementptr %"compiler/eval:Machine", ptr %t206, i32 0, i32 23
  %t209 = load { i64, ptr }, ptr %t208, !tbaa !27
  store { i64, ptr } %t209, ptr %l86, !tbaa !27
  %t210 = load i64, ptr %l3, !tbaa !24
  %t212 = getelementptr { i64, ptr }, ptr %l86, i32 0, i32 1
  %t213 = load ptr, ptr %t212, !tbaa !27
  %t214 = getelementptr %"compiler/eval:cfn", ptr %t213, i64 %t210
  %t215 = getelementptr %"compiler/eval:cfn", ptr %t214, i32 0, i32 9
  %t216 = load { i64, ptr }, ptr %t215, !tbaa !27
  store { i64, ptr } %t216, ptr %l88, !tbaa !27
  %t217 = load i64, ptr %l4, !tbaa !24
  %t219 = getelementptr { i64, ptr }, ptr %l88, i32 0, i32 1
  %t220 = load ptr, ptr %t219, !tbaa !27
  %t221 = getelementptr { i64, [8 x i64] }, ptr %t220, i64 %t217
  %t222 = load { i64, [8 x i64] }, ptr %t221
  %t223 = load ptr, ptr %l0, !tbaa !29
  %t225 = getelementptr %"compiler/eval:Machine", ptr %t223, i32 0, i32 23
  %t226 = load { i64, ptr }, ptr %t225, !tbaa !27
  store { i64, ptr } %t226, ptr %l92, !tbaa !27
  %t227 = load i64, ptr %l3, !tbaa !24
  %t229 = getelementptr { i64, ptr }, ptr %l92, i32 0, i32 1
  %t230 = load ptr, ptr %t229, !tbaa !27
  %t231 = getelementptr %"compiler/eval:cfn", ptr %t230, i64 %t227
  %t232 = getelementptr %"compiler/eval:cfn", ptr %t231, i32 0, i32 11
  %t233 = load { i64, ptr }, ptr %t232, !tbaa !27
  store { i64, ptr } %t233, ptr %l94, !tbaa !27
  %t234 = load i64, ptr %l4, !tbaa !24
  %t236 = getelementptr { i64, ptr }, ptr %l94, i32 0, i32 1
  %t237 = load ptr, ptr %t236, !tbaa !27
  %t238 = getelementptr i1, ptr %t237, i64 %t234
  %t239 = load i1, ptr %t238, !tbaa !31
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2eterm(ptr %v0, ptr %t204, i64 %t205, { i64, [8 x i64] } %t222, i1 %t239)
  br label %bb24
bb24:
  br label %bb25
bb25:
  br label %bb58
bb26:
  %t244 = load ptr, ptr %l0, !tbaa !29
  %t246 = getelementptr %"compiler/eval:Machine", ptr %t244, i32 0, i32 23
  %t247 = load { i64, ptr }, ptr %t246, !tbaa !27
  store { i64, ptr } %t247, ptr %l98, !tbaa !27
  %t248 = load i64, ptr %l3, !tbaa !24
  %t250 = getelementptr { i64, ptr }, ptr %l98, i32 0, i32 1
  %t251 = load ptr, ptr %t250, !tbaa !27
  %t252 = getelementptr %"compiler/eval:cfn", ptr %t251, i64 %t248
  %t253 = getelementptr %"compiler/eval:cfn", ptr %t252, i32 0, i32 8
  %t254 = load { i64, ptr }, ptr %t253, !tbaa !27
  store { i64, ptr } %t254, ptr %l100, !tbaa !27
  %t255 = load i64, ptr %l4, !tbaa !24
  %t257 = add i64 %t255, 1
  %t259 = getelementptr { i64, ptr }, ptr %l100, i32 0, i32 1
  %t260 = load ptr, ptr %t259, !tbaa !27
  %t261 = getelementptr i64, ptr %t260, i64 %t257
  %t262 = load i64, ptr %t261, !tbaa !34
  store i64 %t262, ptr %l6, !tbaa !24
  %t264 = load i64, ptr %l5, !tbaa !24
  %t265 = load i64, ptr %l6, !tbaa !24
  %t268 = icmp slt i64 %t264, %t265
  br i1 %t268, label %bb27, label %bb28
bb27:
  %t270 = load ptr, ptr %l0, !tbaa !29
  %t272 = getelementptr %"compiler/eval:Machine", ptr %t270, i32 0, i32 23
  %t273 = load { i64, ptr }, ptr %t272, !tbaa !27
  store { i64, ptr } %t273, ptr %l109, !tbaa !27
  %t274 = load i64, ptr %l3, !tbaa !24
  %t276 = getelementptr { i64, ptr }, ptr %l109, i32 0, i32 1
  %t277 = load ptr, ptr %t276, !tbaa !27
  %t278 = getelementptr %"compiler/eval:cfn", ptr %t277, i64 %t274
  %t279 = getelementptr %"compiler/eval:cfn", ptr %t278, i32 0, i32 13
  %t280 = load { i64, ptr }, ptr %t279, !tbaa !27
  store { i64, ptr } %t280, ptr %l111, !tbaa !27
  %t281 = load i64, ptr %l5, !tbaa !24
  %t282 = load i64, ptr @G_2ecompiler_2feval_2efastStride, !tbaa !24
  %t285 = mul i64 %t281, %t282
  %t287 = getelementptr { i64, ptr }, ptr %l111, i32 0, i32 1
  %t288 = load ptr, ptr %t287, !tbaa !27
  %t289 = getelementptr i64, ptr %t288, i64 %t285
  %t290 = load i64, ptr %t289, !tbaa !34
  %t292 = icmp ne i64 %t290, 0
  store i1 %t292, ptr %l107, !tbaa !21
  br label %bb29
bb28:
  store i1 false, ptr %l107, !tbaa !21
  br label %bb29
bb29:
  %t294 = load i1, ptr %l107, !tbaa !21
  br i1 %t294, label %bb30, label %bb31
bb30:
  %t295 = load ptr, ptr %l0, !tbaa !29
  %t297 = getelementptr %"compiler/eval:Machine", ptr %t295, i32 0, i32 23
  %t298 = load { i64, ptr }, ptr %t297, !tbaa !27
  store { i64, ptr } %t298, ptr %l118, !tbaa !27
  %t299 = load i64, ptr %l3, !tbaa !24
  %t301 = getelementptr { i64, ptr }, ptr %l118, i32 0, i32 1
  %t302 = load ptr, ptr %t301, !tbaa !27
  %t303 = getelementptr %"compiler/eval:cfn", ptr %t302, i64 %t299
  %t304 = getelementptr %"compiler/eval:cfn", ptr %t303, i32 0, i32 13
  %t305 = load { i64, ptr }, ptr %t304, !tbaa !27
  store { i64, ptr } %t305, ptr %l7, !tbaa !27
  br label %bb32
bb31:
  br label %bb52
bb32:
  %t307 = load ptr, ptr %l0, !tbaa !29
  %t308 = load i64, ptr %l2, !tbaa !24
  %t309 = load i64, ptr %l3, !tbaa !24
  %t310 = load i64, ptr %l5, !tbaa !24
  %t311 = load { i64, ptr }, ptr %l7, !tbaa !27
  store { i64, ptr } %t311, ptr %l125, !tbaa !27
  %t312 = load i64, ptr %l5, !tbaa !24
  %t313 = load i64, ptr @G_2ecompiler_2feval_2efastStride, !tbaa !24
  %t316 = mul i64 %t312, %t313
  %t318 = getelementptr { i64, ptr }, ptr %l125, i32 0, i32 1
  %t319 = load ptr, ptr %t318, !tbaa !27
  %t320 = getelementptr i64, ptr %t319, i64 %t316
  %t321 = load i64, ptr %t320, !tbaa !34
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2eflat(ptr %v0, ptr %t307, i64 %t308, i64 %t309, i64 %t310, i64 %t321)
  br label %bb33
bb33:
  %t327 = load ptr, ptr %l0, !tbaa !29
  %t329 = getelementptr %"compiler/eval:Machine", ptr %t327, i32 0, i32 19
  %t330 = load i1, ptr %t329, !tbaa !21
  br i1 %t330, label %bb34, label %bb35
bb34:
  br label %ret
bb35:
  br label %bb36
bb36:
  %t332 = load ptr, ptr %l0, !tbaa !29
  %t334 = getelementptr %"compiler/eval:Machine", ptr %t332, i32 0, i32 55
  %t335 = load { i64, ptr }, ptr %t334, !tbaa !27
  store { i64, ptr } %t335, ptr %l133, !tbaa !27
  %t336 = load i64, ptr %l2, !tbaa !24
  store i64 %t336, ptr %l134, !tbaa !24
  %t337 = load i64, ptr %l134, !tbaa !24
  %t338 = getelementptr { i64, ptr }, ptr %l133, i32 0, i32 1
  %t339 = load ptr, ptr %t338, !tbaa !27
  %t340 = getelementptr %"compiler/eval:frame", ptr %t339, i64 %t337
  %t341 = getelementptr %"compiler/eval:frame", ptr %t340, i32 0, i32 2
  %t342 = load i64, ptr %t341, !tbaa !24
  %t344 = add i64 %t342, 1
  %t346 = load i64, ptr %l134, !tbaa !24
  %t347 = getelementptr { i64, ptr }, ptr %l133, i32 0, i32 1
  %t348 = load ptr, ptr %t347, !tbaa !27
  %t349 = getelementptr %"compiler/eval:frame", ptr %t348, i64 %t346
  %t350 = getelementptr %"compiler/eval:frame", ptr %t349, i32 0, i32 2
  store i64 %t344, ptr %t350, !tbaa !24
  %t351 = load i64, ptr %l5, !tbaa !24
  %t353 = add i64 %t351, 1
  store i64 %t353, ptr %l5, !tbaa !24
  %t355 = load i64, ptr %l5, !tbaa !24
  %t356 = load i64, ptr %l6, !tbaa !24
  %t359 = icmp sge i64 %t355, %t356
  br i1 %t359, label %bb37, label %bb38
bb37:
  store i1 true, ptr %l142, !tbaa !21
  br label %bb39
bb38:
  %t361 = load { i64, ptr }, ptr %l7, !tbaa !27
  store { i64, ptr } %t361, ptr %l143, !tbaa !27
  %t362 = load i64, ptr %l5, !tbaa !24
  %t363 = load i64, ptr @G_2ecompiler_2feval_2efastStride, !tbaa !24
  %t366 = mul i64 %t362, %t363
  %t368 = getelementptr { i64, ptr }, ptr %l143, i32 0, i32 1
  %t369 = load ptr, ptr %t368, !tbaa !27
  %t370 = getelementptr i64, ptr %t369, i64 %t366
  %t371 = load i64, ptr %t370, !tbaa !34
  %t373 = icmp eq i64 %t371, 0
  store i1 %t373, ptr %l142, !tbaa !21
  br label %bb39
bb39:
  %t375 = load i1, ptr %l142, !tbaa !21
  br i1 %t375, label %bb40, label %bb41
bb40:
  br label %bb51
bb41:
  br label %bb42
bb42:
  %t376 = load ptr, ptr %l0, !tbaa !29
  store ptr %t376, ptr %l149, !tbaa !29
  %t377 = load ptr, ptr %l149, !tbaa !29
  %t378 = getelementptr %"compiler/eval:Machine", ptr %t377, i32 0, i32 11
  %t379 = load i64, ptr %t378, !tbaa !24
  %t381 = add i64 %t379, 1
  %t383 = load ptr, ptr %l149, !tbaa !29
  %t384 = getelementptr %"compiler/eval:Machine", ptr %t383, i32 0, i32 11
  store i64 %t381, ptr %t384, !tbaa !24
  %t385 = load ptr, ptr %l0, !tbaa !29
  %t387 = getelementptr %"compiler/eval:Machine", ptr %t385, i32 0, i32 2
  %t388 = load i64, ptr %t387, !tbaa !24
  %t390 = icmp sge i64 %t388, 0
  br i1 %t390, label %bb43, label %bb44
bb43:
  %t392 = load ptr, ptr %l0, !tbaa !29
  %t394 = getelementptr %"compiler/eval:Machine", ptr %t392, i32 0, i32 11
  %t395 = load i64, ptr %t394, !tbaa !24
  %t396 = load ptr, ptr %l0, !tbaa !29
  %t398 = getelementptr %"compiler/eval:Machine", ptr %t396, i32 0, i32 2
  %t399 = load i64, ptr %t398, !tbaa !24
  %t402 = icmp sgt i64 %t395, %t399
  store i1 %t402, ptr %l155, !tbaa !21
  br label %bb45
bb44:
  store i1 false, ptr %l155, !tbaa !21
  br label %bb45
bb45:
  %t404 = load i1, ptr %l155, !tbaa !21
  br i1 %t404, label %bb46, label %bb47
bb46:
  %t405 = load ptr, ptr %l0, !tbaa !29
  %t406 = load { i64, ptr }, ptr @G_2ecompiler_2feval_2eWhySteps, !tbaa !27
  %t407 = load ptr, ptr @__olang_prog_scope
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2erefuse(ptr %v0, ptr %t407, ptr %t405, { i64, ptr } %t406)
  br label %bb48
bb47:
  br label %bb49
bb48:
  br label %ret
bb49:
  br label %bb50
bb50:
  br label %bb32
bb51:
  br label %bb58
bb52:
  %t410 = load i64, ptr %l5, !tbaa !24
  %t411 = load i64, ptr %l6, !tbaa !24
  %t414 = icmp slt i64 %t410, %t411
  br i1 %t414, label %bb53, label %bb54
bb53:
  %t416 = load ptr, ptr %l0, !tbaa !29
  %t417 = load i64, ptr %l2, !tbaa !24
  %t418 = load i64, ptr %l3, !tbaa !24
  %t419 = load i64, ptr %l5, !tbaa !24
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2estmtAt(ptr %v0, ptr %t416, i64 %t417, i64 %t418, i64 %t419)
  br label %bb55
bb54:
  %t424 = load ptr, ptr %l0, !tbaa !29
  %t425 = load i64, ptr %l2, !tbaa !24
  %t426 = load ptr, ptr %l0, !tbaa !29
  %t428 = getelementptr %"compiler/eval:Machine", ptr %t426, i32 0, i32 23
  %t429 = load { i64, ptr }, ptr %t428, !tbaa !27
  store { i64, ptr } %t429, ptr %l173, !tbaa !27
  %t430 = load i64, ptr %l3, !tbaa !24
  %t432 = getelementptr { i64, ptr }, ptr %l173, i32 0, i32 1
  %t433 = load ptr, ptr %t432, !tbaa !27
  %t434 = getelementptr %"compiler/eval:cfn", ptr %t433, i64 %t430
  %t435 = getelementptr %"compiler/eval:cfn", ptr %t434, i32 0, i32 9
  %t436 = load { i64, ptr }, ptr %t435, !tbaa !27
  store { i64, ptr } %t436, ptr %l175, !tbaa !27
  %t437 = load i64, ptr %l4, !tbaa !24
  %t439 = getelementptr { i64, ptr }, ptr %l175, i32 0, i32 1
  %t440 = load ptr, ptr %t439, !tbaa !27
  %t441 = getelementptr { i64, [8 x i64] }, ptr %t440, i64 %t437
  %t442 = load { i64, [8 x i64] }, ptr %t441
  %t443 = load ptr, ptr %l0, !tbaa !29
  %t445 = getelementptr %"compiler/eval:Machine", ptr %t443, i32 0, i32 23
  %t446 = load { i64, ptr }, ptr %t445, !tbaa !27
  store { i64, ptr } %t446, ptr %l179, !tbaa !27
  %t447 = load i64, ptr %l3, !tbaa !24
  %t449 = getelementptr { i64, ptr }, ptr %l179, i32 0, i32 1
  %t450 = load ptr, ptr %t449, !tbaa !27
  %t451 = getelementptr %"compiler/eval:cfn", ptr %t450, i64 %t447
  %t452 = getelementptr %"compiler/eval:cfn", ptr %t451, i32 0, i32 11
  %t453 = load { i64, ptr }, ptr %t452, !tbaa !27
  store { i64, ptr } %t453, ptr %l181, !tbaa !27
  %t454 = load i64, ptr %l4, !tbaa !24
  %t456 = getelementptr { i64, ptr }, ptr %l181, i32 0, i32 1
  %t457 = load ptr, ptr %t456, !tbaa !27
  %t458 = getelementptr i1, ptr %t457, i64 %t454
  %t459 = load i1, ptr %t458, !tbaa !31
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2eterm(ptr %v0, ptr %t424, i64 %t425, { i64, [8 x i64] } %t442, i1 %t459)
  br label %bb56
bb55:
  br label %bb57
bb56:
  br label %bb57
bb57:
  br label %bb58
bb58:
  br label %bb1
bb59:
  br label %ret
ret:
  ret void
}

define dso_local i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2emask(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l4 = alloca i64
  %l6 = alloca i64
  %rv = alloca i64
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load i64, ptr %l1, !tbaa !24
  %t3 = icmp sge i64 %t1, 8
  br i1 %t3, label %bb1, label %bb2
bb1:
  store i64 -1, ptr %l4, !tbaa !24
  br label %bb3
bb2:
  %t5 = load i64, ptr %l1, !tbaa !24
  %t7 = mul i64 8, %t5
  store i64 %t7, ptr %l6, !tbaa !24
  %t8 = load i64, ptr %l6, !tbaa !24
  %t9 = load i64, ptr %l6, !tbaa !24
  %t10 = shl i64 1, %t9
  %t12 = sub i64 %t10, 1
  store i64 %t12, ptr %l4, !tbaa !24
  br label %bb3
bb3:
  %t14 = load i64, ptr %l4, !tbaa !24
  store i64 %t14, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2enewScope(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca i64
  %l3 = alloca %"compiler/eval:scope"
  %l19 = alloca i64
  %l22 = alloca i64
  %l23 = alloca i32
  %l25 = alloca i64
  %l29 = alloca %"compiler/eval:scope"
  %l49 = alloca %"compiler/eval:scope"
  %l51 = alloca i64
  %rv = alloca i64
  %t20 = alloca %"compiler/eval:scope", align 8
  %t76 = alloca %"compiler/eval:scope", align 8
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/eval:Machine", ptr %t1, i32 0, i32 50
  %t5 = call { i32, i64 } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePop_3cI64_3e(ptr %v0, ptr %t3)
  %t6 = extractvalue { i32, i64 } %t5, 1
  %t7 = extractvalue { i32, i64 } %t5, 0
  store i32 %t7, ptr %l23
  %t8 = icmp ne i32 %t7, 0
  br i1 %t8, label %bb2, label %ok.9, !prof !99
ok.9:
  store i64 %t6, ptr %l22
  br label %bb1
bb1:
  %t10 = load i64, ptr %l22, !tbaa !24
  store i64 %t10, ptr %l19, !tbaa !24
  br label %bb5
bb2:
  br label %bb3
bb3:
  %t11 = load ptr, ptr %l0, !tbaa !29
  %t13 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2enewScopeSlot(ptr %v0, ptr %t11)
  store i64 %t13, ptr %l25
  br label %bb4
bb4:
  %t14 = load i64, ptr %l25, !tbaa !24
  store i64 %t14, ptr %l19, !tbaa !24
  br label %bb5
bb5:
  %t15 = load i64, ptr %l19, !tbaa !24
  store i64 %t15, ptr %l2, !tbaa !24
  %t16 = load ptr, ptr %l0, !tbaa !29
  %t18 = getelementptr %"compiler/eval:Machine", ptr %t16, i32 0, i32 49
  %t19 = load i64, ptr %l2, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3ascope_3e_2eAt_3ccompiler_2feval_3ascope_3e(ptr %t20, ptr %v0, ptr %t18, i64 %t19)
  call void @llvm.memmove.p0.p0.i64(ptr %l29, ptr %t20, i64 144, i1 false)
  br label %bb6
bb6:
  call void @llvm.memmove.p0.p0.i64(ptr %l3, ptr %l29, i64 144, i1 false)
  %t27 = getelementptr %"compiler/eval:scope", ptr %l3, i32 0, i32 1
  store i1 true, ptr %t27, !tbaa !21
  %t30 = getelementptr %"compiler/eval:scope", ptr %l3, i32 0, i32 2
  store i64 %a1, ptr %t30, !tbaa !24
  %t33 = getelementptr %"compiler/eval:scope", ptr %l3, i32 0, i32 3
  store i64 0, ptr %t33, !tbaa !24
  %t36 = getelementptr %"compiler/eval:scope", ptr %l3, i32 0, i32 4
  store i64 -1, ptr %t36, !tbaa !24
  %t39 = getelementptr %"compiler/eval:scope", ptr %l3, i32 0, i32 5
  store i64 0, ptr %t39, !tbaa !24
  %t42 = getelementptr %"compiler/eval:scope", ptr %l3, i32 0, i32 6
  store i64 0, ptr %t42, !tbaa !24
  %t45 = getelementptr %"compiler/eval:scope", ptr %l3, i32 0, i32 7
  store i64 0, ptr %t45, !tbaa !24
  %t48 = getelementptr %"compiler/eval:scope", ptr %l3, i32 0, i32 8
  store i64 0, ptr %t48, !tbaa !24
  %t51 = getelementptr %"compiler/eval:scope", ptr %l3, i32 0, i32 9
  store i64 0, ptr %t51, !tbaa !24
  %t54 = getelementptr %"compiler/eval:scope", ptr %l3, i32 0, i32 10
  store i64 -1, ptr %t54, !tbaa !24
  %t57 = getelementptr %"compiler/eval:scope", ptr %l3, i32 0, i32 11
  store i64 -1, ptr %t57, !tbaa !24
  %t60 = getelementptr %"compiler/eval:scope", ptr %l3, i32 0, i32 12
  store i64 0, ptr %t60, !tbaa !24
  %t63 = getelementptr %"compiler/eval:scope", ptr %l3, i32 0, i32 14
  store i64 0, ptr %t63, !tbaa !24
  %t66 = getelementptr %"compiler/eval:scope", ptr %l3, i32 0, i32 16
  store i64 0, ptr %t66, !tbaa !24
  %t69 = getelementptr %"compiler/eval:scope", ptr %l3, i32 0, i32 17
  store i64 -1, ptr %t69, !tbaa !24
  %t70 = load ptr, ptr %l0, !tbaa !29
  %t72 = getelementptr %"compiler/eval:Machine", ptr %t70, i32 0, i32 49
  %t73 = load i64, ptr %l2, !tbaa !24
  call void @llvm.memmove.p0.p0.i64(ptr %l49, ptr %l3, i64 144, i1 false)
  call void @llvm.memmove.p0.p0.i64(ptr %t76, ptr %l49, i64 144, i1 false)
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3ascope_3e_2eSetAt_3ccompiler_2feval_3ascope_3e(ptr %v0, ptr %t72, i64 %t73, ptr %t76)
  br label %bb7
bb7:
  %t77 = getelementptr %"compiler/eval:scope", ptr %l3, i32 0, i32 0
  %t78 = load i64, ptr %t77, !tbaa !24
  %t79 = load i64, ptr @G_2ecompiler_2feval_2eslotBits, !tbaa !24
  store i64 %t79, ptr %l51, !tbaa !24
  %t81 = load i64, ptr %l51, !tbaa !24
  %t82 = load i64, ptr %l51, !tbaa !24
  %t83 = shl i64 %t78, %t82
  %t84 = load i64, ptr %l2, !tbaa !24
  %t87 = or i64 %t83, %t84
  store i64 %t87, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2enewSlot(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca { i64, ptr }
  %l2 = alloca i64
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l16 = alloca ptr
  %l17 = alloca i64
  %l21 = alloca i64
  %l22 = alloca %"compiler/eval:alloc"
  %l24 = alloca %"compiler/eval:alloc"
  %l28 = alloca { i64, ptr }
  %l35 = alloca i64
  %l38 = alloca i64
  %l57 = alloca { i64, ptr }
  %l59 = alloca { i64, ptr }
  %l64 = alloca ptr
  %rv = alloca i64
  %t48 = alloca i64
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/eval:Machine", ptr %t1, i32 0, i32 47
  %t4 = load i64, ptr %t3, !tbaa !24
  %t5 = load ptr, ptr %l0, !tbaa !29
  %t7 = getelementptr %"compiler/eval:Machine", ptr %t5, i32 0, i32 46
  %t8 = load { i64, ptr }, ptr %t7, !tbaa !27
  %t10 = extractvalue { i64, ptr } %t8, 0
  %t13 = icmp sge i64 %t4, %t10
  br i1 %t13, label %bb1, label %bb2
bb1:
  %t15 = load ptr, ptr %l0, !tbaa !29
  %t17 = getelementptr %"compiler/eval:Machine", ptr %t15, i32 0, i32 46
  %t18 = load { i64, ptr }, ptr %t17, !tbaa !27
  store { i64, ptr } %t18, ptr %l1, !tbaa !27
  %t20 = load ptr, ptr %l0, !tbaa !29
  store ptr %t20, ptr %l16, !tbaa !29
  %t21 = ptrtoint ptr %v0 to i64
  store i64 %t21, ptr %l17, !tbaa !24
  %t22 = load i1, ptr @olang_2esole_2ecompiler_2feval_3aMachine_2e46
  br i1 %t22, label %bb3, label %bb4
bb2:
  br label %bb26
bb3:
  %t24 = call ptr @__olang_region_make(ptr %v0)
  %t25 = ptrtoint ptr %t24 to i64
  store i64 %t25, ptr %l17, !tbaa !24
  br label %bb4
bb4:
  %t26 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t28 = extractvalue { i64, ptr } %t26, 0
  %t30 = mul i64 2, %t28
  store i64 %t30, ptr %l21, !tbaa !24
  store %"compiler/eval:alloc" zeroinitializer, ptr %l22
  %t31 = load i64, ptr %l21, !tbaa !24
  %t32 = icmp sgt i64 %t31, 0
  br i1 %t32, label %bb5, label %bb6
bb5:
  %t34 = call %"compiler/eval:alloc" @olang_2emir_2eHelperKind_2eZero_2ecompiler_2feval_3aalloc()
  store %"compiler/eval:alloc" %t34, ptr %l24
  br label %bb7
bb6:
  %t35 = load i64, ptr %l21, !tbaa !24
  %t36 = icmp sge i64 %t35, 0
  br i1 %t36, label %bb8, label %bb9
bb7:
  %t38 = load %"compiler/eval:alloc", ptr %l24
  store %"compiler/eval:alloc" %t38, ptr %l22
  br label %bb6
bb8:
  %t39 = load i64, ptr %l21, !tbaa !24
  %t40 = icmp sle i64 %t39, 72057594037927935
  br i1 %t40, label %bb10, label %bb11
bb9:
  call void @__olang_check_failed(ptr @olang_loc_1aa148087c58143e_12c49f79ebc6dae2)
  unreachable
bb10:
  %t42 = load i64, ptr %l21, !tbaa !24
  %t43 = mul i64 %t42, 128
  %t44 = load i64, ptr %l17
  %t45 = inttoptr i64 %t44 to ptr
  %t46 = call ptr @__olang_scope_alloc(ptr %t45, i64 %t43)
  %t47 = load %"compiler/eval:alloc", ptr %l22
  store i64 0, ptr %t48
  br label %fill.49
fill.49:
  %t52 = load i64, ptr %t48
  %t53 = icmp slt i64 %t52, %t42
  br i1 %t53, label %fillb.50, label %filld.51
fillb.50:
  %t54 = getelementptr %"compiler/eval:alloc", ptr %t46, i64 %t52
  store %"compiler/eval:alloc" %t47, ptr %t54
  %t55 = add i64 %t52, 1
  store i64 %t55, ptr %t48
  br label %fill.49
filld.51:
  %t56 = insertvalue { i64, ptr } undef, i64 %t42, 0
  %t57 = insertvalue { i64, ptr } %t56, ptr %t46, 1
  %t58 = load ptr, ptr %l16, !tbaa !29
  %t59 = getelementptr %"compiler/eval:Machine", ptr %t58, i32 0, i32 46
  %t60 = load { i64, ptr }, ptr %t59, !tbaa !27
  store { i64, ptr } %t60, ptr %l28, !tbaa !27
  %t62 = load ptr, ptr %l16, !tbaa !29
  %t63 = getelementptr %"compiler/eval:Machine", ptr %t62, i32 0, i32 46
  store { i64, ptr } %t57, ptr %t63, !tbaa !27
  %t64 = load i1, ptr @olang_2esole_2ecompiler_2feval_3aMachine_2e46
  br i1 %t64, label %bb12, label %bb13
bb11:
  call void @__olang_check_failed(ptr @olang_loc_1aa148087c58143e_12c49f79ebc6dae2)
  unreachable
bb12:
  %t66 = load { i64, ptr }, ptr %l28
  %t67 = extractvalue { i64, ptr } %t66, 1
  call void @__olang_region_release(ptr %t67)
  store { i64, ptr } zeroinitializer, ptr %l28
  br label %bb13
bb13:
  store i64 0, ptr %l2, !tbaa !24
  %t68 = load ptr, ptr %l0, !tbaa !29
  %t70 = getelementptr %"compiler/eval:Machine", ptr %t68, i32 0, i32 47
  %t71 = load i64, ptr %t70, !tbaa !24
  store i64 %t71, ptr %l3, !tbaa !24
  store i64 1, ptr %l4, !tbaa !24
  %t73 = load i64, ptr %l3, !tbaa !24
  %t74 = load i64, ptr %l2, !tbaa !24
  %t77 = icmp sgt i64 %t73, %t74
  br i1 %t77, label %bb14, label %bb15
bb14:
  %t79 = load i64, ptr %l4, !tbaa !24
  %t81 = icmp sgt i64 %t79, 0
  br i1 %t81, label %bb16, label %bb17
bb15:
  store i64 0, ptr %l35, !tbaa !24
  br label %bb19
bb16:
  %t83 = load i64, ptr %l3, !tbaa !24
  %t84 = load i64, ptr %l2, !tbaa !24
  %t87 = sub i64 %t83, %t84
  %t88 = load i64, ptr %l4, !tbaa !24
  %t91 = add i64 %t87, %t88
  %t93 = sub i64 %t91, 1
  %t94 = load i64, ptr %l4, !tbaa !24
  %t97 = sdiv i64 %t93, %t94
  store i64 %t97, ptr %l38, !tbaa !24
  br label %bb18
bb17:
  store i64 0, ptr %l38, !tbaa !24
  br label %bb18
bb18:
  %t99 = load i64, ptr %l38, !tbaa !24
  store i64 %t99, ptr %l35, !tbaa !24
  br label %bb19
bb19:
  %t100 = load i64, ptr %l35, !tbaa !24
  store i64 %t100, ptr %l5, !tbaa !24
  store i64 0, ptr %l6, !tbaa !24
  br label %bb20
bb20:
  %t101 = load i64, ptr %l6, !tbaa !24
  %t102 = load i64, ptr %l5, !tbaa !24
  %t105 = icmp slt i64 %t101, %t102
  %t107 = xor i1 %t105, true
  br i1 %t107, label %bb21, label %bb22
bb21:
  br label %bb25
bb22:
  br label %bb23
bb23:
  %t109 = load i64, ptr %l2, !tbaa !24
  %t110 = load i64, ptr %l6, !tbaa !24
  %t111 = load i64, ptr %l4, !tbaa !24
  %t114 = mul i64 %t110, %t111
  %t117 = add i64 %t109, %t114
  store i64 %t117, ptr %l7, !tbaa !24
  %t119 = load ptr, ptr %l0, !tbaa !29
  %t121 = getelementptr %"compiler/eval:Machine", ptr %t119, i32 0, i32 46
  %t122 = load { i64, ptr }, ptr %t121, !tbaa !27
  store { i64, ptr } %t122, ptr %l57, !tbaa !27
  %t123 = load i64, ptr %l7, !tbaa !24
  %t124 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t124, ptr %l59, !tbaa !27
  %t125 = load i64, ptr %l7, !tbaa !24
  %t127 = getelementptr { i64, ptr }, ptr %l59, i32 0, i32 1
  %t128 = load ptr, ptr %t127, !tbaa !27
  %t129 = getelementptr %"compiler/eval:alloc", ptr %t128, i64 %t125
  %t130 = load %"compiler/eval:alloc", ptr %t129
  %t133 = getelementptr { i64, ptr }, ptr %l57, i32 0, i32 1
  %t134 = load ptr, ptr %t133, !tbaa !27
  %t135 = getelementptr %"compiler/eval:alloc", ptr %t134, i64 %t123
  store %"compiler/eval:alloc" %t130, ptr %t135
  br label %bb24
bb24:
  %t136 = load i64, ptr %l6, !tbaa !24
  %t138 = add i64 %t136, 1
  store i64 %t138, ptr %l6, !tbaa !24
  br label %bb20
bb25:
  br label %bb26
bb26:
  %t140 = load ptr, ptr %l0, !tbaa !29
  store ptr %t140, ptr %l64, !tbaa !29
  %t141 = load ptr, ptr %l64, !tbaa !29
  %t142 = getelementptr %"compiler/eval:Machine", ptr %t141, i32 0, i32 47
  %t143 = load i64, ptr %t142, !tbaa !24
  %t145 = add i64 %t143, 1
  %t147 = load ptr, ptr %l64, !tbaa !29
  %t148 = getelementptr %"compiler/eval:Machine", ptr %t147, i32 0, i32 47
  store i64 %t145, ptr %t148, !tbaa !24
  %t149 = load ptr, ptr %l0, !tbaa !29
  %t151 = getelementptr %"compiler/eval:Machine", ptr %t149, i32 0, i32 47
  %t152 = load i64, ptr %t151, !tbaa !24
  %t154 = sub i64 %t152, 1
  store i64 %t154, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local %"compiler/eval:Ptr" @compiler_2feval_2ecompiler_2feval_3aMachine_2eobjectAt(ptr %v0, ptr %a0, %"compiler/eval:Ptr" %a1, i32 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/eval:Ptr"
  %l3 = alloca i32
  %l6 = alloca i32
  %l10 = alloca i1
  %l14 = alloca i32
  %l16 = alloca ptr
  %l20 = alloca %"compiler/eval:Ptr"
  %l21 = alloca %"compiler/eval:Ptr"
  %l24 = alloca %"compiler/eval:Ptr"
  %s1 = alloca %olang.scope
  %rv = alloca %"compiler/eval:Ptr"
  store ptr %a0, ptr %l0
  store %"compiler/eval:Ptr" %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t5 = call i32 @compiler_2feval_2ecompiler_2feval_3aMachine_2earrayOf(ptr %v0, ptr %t1, i32 %a2)
  store i32 %t5, ptr %l6
  br label %bb1
bb1:
  %t6 = load i32, ptr %l6, !tbaa !23
  store i32 %t6, ptr %l3, !tbaa !23
  %t7 = load i32, ptr %l3, !tbaa !23
  %t8 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t11 = icmp ne i32 %t7, %t8
  br i1 %t11, label %bb2, label %bb3
bb2:
  %t13 = load ptr, ptr %l0, !tbaa !29
  %t15 = getelementptr %"compiler/eval:Machine", ptr %t13, i32 0, i32 0
  %t16 = load ptr, ptr %t15, !tbaa !29
  %t17 = load i32, ptr %l3, !tbaa !23
  %t20 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eLength(ptr %v0, ptr %t16, i32 %t17)
  store i32 %t20, ptr %l14
  br label %bb4
bb3:
  store i1 false, ptr %l10, !tbaa !21
  br label %bb5
bb4:
  %t21 = load i32, ptr %l14, !tbaa !23
  %t22 = icmp eq i32 %t21, 0
  store i1 %t22, ptr %l10, !tbaa !21
  br label %bb5
bb5:
  %t24 = load i1, ptr %l10, !tbaa !21
  br i1 %t24, label %bb6, label %bb7
bb6:
  store %olang.scope zeroinitializer, ptr %s1
  %t25 = load ptr, ptr %l0, !tbaa !29
  store ptr %t25, ptr %l16, !tbaa !29
  %t26 = getelementptr %"compiler/eval:Ptr", ptr %l1, i32 0, i32 0
  %t27 = load i64, ptr %t26, !tbaa !24
  %t28 = getelementptr %"compiler/eval:Ptr", ptr %l1, i32 0, i32 1
  %t29 = load i64, ptr %t28, !tbaa !24
  %t31 = add i64 %t29, 8
  %t34 = call %"compiler/eval:Ptr" @compiler_2feval_3aPtr_2ector(ptr %s1, i64 %t27, i64 %t31)
  store %"compiler/eval:Ptr" %t34, ptr %l20
  br label %bb8
bb7:
  br label %bb10
bb8:
  %t35 = load ptr, ptr %l16, !tbaa !29
  %t36 = load %"compiler/eval:Ptr", ptr %l20
  %t37 = call %"compiler/eval:Ptr" @compiler_2feval_2ecompiler_2feval_3aMachine_2erdPtr(ptr %v0, ptr %t35, %"compiler/eval:Ptr" %t36)
  store %"compiler/eval:Ptr" %t37, ptr %l21
  br label %bb9
bb9:
  call void @__olang_scope_close(ptr %s1)
  %t38 = load %"compiler/eval:Ptr", ptr %l21
  store %"compiler/eval:Ptr" %t38, ptr %rv
  br label %ret
bb10:
  %t39 = load ptr, ptr %l0, !tbaa !29
  %t40 = load %"compiler/eval:Ptr", ptr %l1
  %t43 = call %"compiler/eval:Ptr" @compiler_2feval_2ecompiler_2feval_3aMachine_2erdPtr(ptr %v0, ptr %t39, %"compiler/eval:Ptr" %t40)
  store %"compiler/eval:Ptr" %t43, ptr %l24
  br label %bb11
bb11:
  %t44 = load %"compiler/eval:Ptr", ptr %l24
  store %"compiler/eval:Ptr" %t44, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/eval:Ptr", ptr %rv
  ret %"compiler/eval:Ptr" %rr
}

define dso_local i1 @compiler_2feval_2ecompiler_2feval_3aMachine_2eoperandReady(ptr %v0, ptr %a0, i64 %a1, { i64, [4 x i64] } %a2) #0 {
entry:
  %l2 = alloca { i64, [4 x i64] }
  %l3 = alloca %"compiler/mir:Lvalue"
  %l4 = alloca i1
  %l11 = alloca i1
  %rv = alloca i1
  store { i64, [4 x i64] } %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load { i64, [4 x i64] }, ptr %l2
  %t3 = extractvalue { i64, [4 x i64] } %t1, 0
  %t4 = icmp eq i64 %t3, 1
  br i1 %t4, label %bb1, label %bb2
bb1:
  %t6 = getelementptr { i64, [4 x i64] }, ptr %l2, i32 0, i32 1
  %t7 = getelementptr { %"compiler/mir:Lvalue" }, ptr %t6, i32 0, i32 0
  %t8 = load %"compiler/mir:Lvalue", ptr %t7
  store %"compiler/mir:Lvalue" %t8, ptr %l3
  br label %bb3
bb2:
  br label %bb5
bb3:
  %t12 = load %"compiler/mir:Lvalue", ptr %l3
  %t16 = call i1 @compiler_2feval_2ecompiler_2feval_3aMachine_2eplaceReady(ptr %v0, ptr %a0, i64 %a1, %"compiler/mir:Lvalue" %t12)
  store i1 %t16, ptr %l11
  br label %bb4
bb4:
  %t17 = load i1, ptr %l11, !tbaa !21
  store i1 %t17, ptr %l4, !tbaa !21
  br label %bb10
bb5:
  br i1 true, label %bb6, label %bb7
bb6:
  br label %bb8
bb7:
  br label %bb9
bb8:
  store i1 true, ptr %l4, !tbaa !21
  br label %bb10
bb9:
  call void @__olang_check_failed(ptr @olang_loc_ad3bfe70499dbe21_2daaaf2a9e405db5)
  unreachable
bb10:
  %t18 = load i1, ptr %l4, !tbaa !21
  store i1 %t18, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i1 @compiler_2feval_2ecompiler_2feval_3aMachine_2eoverflowsWide(ptr %v0, ptr %a0, i64 %a1, i32 %a2, i32 %a3, %"compiler/mir:Range" %a4) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca i32
  %l3 = alloca i32
  %l4 = alloca %"compiler/mir:Range"
  %l5 = alloca { i64, [4 x i64] }
  %l6 = alloca i32
  %l7 = alloca i64
  %l8 = alloca i1
  %l9 = alloca { i64, i64 }
  %l12 = alloca { i64, i64 }
  %l13 = alloca i64
  %l14 = alloca i64
  %l15 = alloca { i64, i64 }
  %l17 = alloca i64
  %l18 = alloca { i64, i64 }
  %l19 = alloca i64
  %l20 = alloca i64
  %l21 = alloca { i64, i64 }
  %l22 = alloca i64
  %l23 = alloca i64
  %l24 = alloca i1
  %l25 = alloca i64
  %l26 = alloca i64
  %l27 = alloca { i64, i64 }
  %l28 = alloca i64
  %l29 = alloca i64
  %l30 = alloca { i64, i64 }
  %l31 = alloca { i64, i64 }
  %l32 = alloca i64
  %l33 = alloca i64
  %l34 = alloca { i64, i64, i64, i64 }
  %l36 = alloca i64
  %l37 = alloca { i64, i64 }
  %l38 = alloca i64
  %l39 = alloca i64
  %l40 = alloca { i64, i64 }
  %l41 = alloca { i64, i64 }
  %l42 = alloca i64
  %l43 = alloca i64
  %l44 = alloca { i64, i64 }
  %l48 = alloca { i64, [4 x i64] }
  %l52 = alloca i32
  %l55 = alloca i64
  %l57 = alloca ptr
  %l61 = alloca i32
  %l62 = alloca i1
  %l68 = alloca i64
  %l71 = alloca ptr
  %l75 = alloca i64
  %l77 = alloca double
  %l80 = alloca i1
  %l85 = alloca { i64, i64 }
  %l88 = alloca i64
  %l89 = alloca i64
  %l92 = alloca i64
  %l95 = alloca i1
  %l97 = alloca ptr
  %l101 = alloca i32
  %l102 = alloca i1
  %l106 = alloca i1
  %l111 = alloca { i64, i64 }
  %l120 = alloca i1
  %l124 = alloca { i64, i64 }
  %l130 = alloca i1
  %l134 = alloca ptr
  %l135 = alloca i64
  %l139 = alloca { i64, [4 x i64] }
  %l140 = alloca { i64, i64 }
  %l146 = alloca { i64, i64 }
  %l150 = alloca i1
  %l154 = alloca i1
  %l158 = alloca i1
  %l161 = alloca i1
  %l167 = alloca i1
  %l176 = alloca i1
  %l181 = alloca { i64, i64 }
  %l187 = alloca i1
  %l192 = alloca { i64, i64 }
  %l197 = alloca i1
  %l200 = alloca i1
  %l203 = alloca i1
  %l211 = alloca { i64, i64 }
  %l218 = alloca { i64, i64, i64, i64 }
  %l224 = alloca i1
  %l231 = alloca { i64, i64 }
  %l237 = alloca { i64, i64 }
  %l244 = alloca i64
  %l250 = alloca { i64, i64 }
  %l259 = alloca { i64, i64 }
  %l268 = alloca i1
  %l278 = alloca i64
  %l284 = alloca i64
  %l293 = alloca i1
  %l304 = alloca i1
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  store i32 %a2, ptr %l2
  store i32 %a3, ptr %l3
  store %"compiler/mir:Range" %a4, ptr %l4
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load i64, ptr %l1, !tbaa !24
  %t3 = load %"compiler/mir:Range", ptr %l4
  %t7 = call { i64, [4 x i64] } @compiler_2feval_2ecompiler_2feval_3aMachine_2earg(ptr %v0, ptr %t1, i64 %t2, %"compiler/mir:Range" %t3, i64 0)
  store { i64, [4 x i64] } %t7, ptr %l48
  br label %bb1
bb1:
  %t8 = load { i64, [4 x i64] }, ptr %l48
  store { i64, [4 x i64] } %t8, ptr %l5
  %t9 = load ptr, ptr %l0, !tbaa !29
  %t10 = load i64, ptr %l1, !tbaa !24
  %t11 = load { i64, [4 x i64] }, ptr %l5
  %t15 = call i32 @compiler_2feval_2ecompiler_2feval_3aMachine_2eopType(ptr %v0, ptr %t9, i64 %t10, { i64, [4 x i64] } %t11)
  store i32 %t15, ptr %l52
  br label %bb2
bb2:
  %t16 = load i32, ptr %l52, !tbaa !23
  store i32 %t16, ptr %l6, !tbaa !23
  %t17 = load ptr, ptr %l0, !tbaa !29
  %t18 = load i32, ptr %l3, !tbaa !23
  %t21 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2eibits(ptr %v0, ptr %t17, i32 %t18)
  store i64 %t21, ptr %l55
  br label %bb3
bb3:
  %t22 = load i64, ptr %l55, !tbaa !24
  store i64 %t22, ptr %l7, !tbaa !24
  %t23 = load ptr, ptr %l0, !tbaa !29
  %t25 = getelementptr %"compiler/eval:Machine", ptr %t23, i32 0, i32 0
  %t26 = load ptr, ptr %t25, !tbaa !29
  store ptr %t26, ptr %l57, !tbaa !29
  %t27 = load ptr, ptr %l0, !tbaa !29
  %t29 = getelementptr %"compiler/eval:Machine", ptr %t27, i32 0, i32 0
  %t30 = load ptr, ptr %t29, !tbaa !29
  %t31 = load i32, ptr %l3, !tbaa !23
  %t34 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %v0, ptr %t30, i32 %t31)
  store i32 %t34, ptr %l61
  br label %bb4
bb4:
  %t35 = load ptr, ptr %l57, !tbaa !29
  %t36 = load i32, ptr %l61, !tbaa !23
  %t37 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsUnsigned(ptr %v0, ptr %t35, i32 %t36)
  store i1 %t37, ptr %l62
  br label %bb5
bb5:
  %t38 = load i1, ptr %l62, !tbaa !21
  %t39 = xor i1 %t38, true
  store i1 %t39, ptr %l8, !tbaa !21
  %t41 = load i32, ptr %l2, !range !{i32 0, i32 52}
  %t43 = trunc i64 20 to i32
  %t44 = icmp eq i32 %t41, %t43
  br i1 %t44, label %bb6, label %bb7
bb6:
  %t46 = load ptr, ptr %l0, !tbaa !29
  %t47 = load i32, ptr %l6, !tbaa !23
  %t50 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2eshape(ptr %v0, ptr %t46, i32 %t47)
  store i64 %t50, ptr %l68
  br label %bb8
bb7:
  br label %bb23
bb8:
  %t51 = load i64, ptr @G_2ecompiler_2feval_2evFloat, !tbaa !24
  %t52 = load i64, ptr %l68, !tbaa !24
  %t54 = icmp eq i64 %t52, %t51
  br i1 %t54, label %bb9, label %bb10
bb9:
  %t56 = load ptr, ptr %l0, !tbaa !29
  store ptr %t56, ptr %l71, !tbaa !29
  %t57 = load ptr, ptr %l0, !tbaa !29
  %t58 = load i64, ptr %l1, !tbaa !24
  %t59 = load { i64, [4 x i64] }, ptr %l5
  %t63 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2escalar(ptr %v0, ptr %t57, i64 %t58, { i64, [4 x i64] } %t59)
  store i64 %t63, ptr %l75
  br label %bb11
bb10:
  br label %bb14
bb11:
  %t64 = load i32, ptr %l6, !tbaa !23
  %t65 = load ptr, ptr %l71, !tbaa !29
  %t66 = load i64, ptr %l75, !tbaa !24
  %t68 = call double @compiler_2feval_2ecompiler_2feval_3aMachine_2etoF64(ptr %v0, ptr %t65, i64 %t66, i32 %t64)
  store double %t68, ptr %l77
  br label %bb12
bb12:
  %t69 = load i64, ptr %l7, !tbaa !24
  %t70 = load i1, ptr %l8, !tbaa !21
  %t71 = load double, ptr %l77, !tbaa !26
  %t74 = call i1 @compiler_2feval_2efloatFits(double %t71, i64 %t69, i1 %t70)
  store i1 %t74, ptr %l80
  br label %bb13
bb13:
  %t75 = load i1, ptr %l80, !tbaa !21
  %t76 = xor i1 %t75, true
  store i1 %t76, ptr %rv
  br label %ret
bb14:
  %t78 = load ptr, ptr %l0, !tbaa !29
  %t79 = load i64, ptr %l1, !tbaa !24
  %t80 = load { i64, [4 x i64] }, ptr %l5
  %t84 = call { i64, i64 } @compiler_2feval_2ecompiler_2feval_3aMachine_2ewideOf(ptr %v0, ptr %t78, i64 %t79, { i64, [4 x i64] } %t80)
  store { i64, i64 } %t84, ptr %l85
  br label %bb15
bb15:
  %t85 = load { i64, i64 }, ptr %l85
  store { i64, i64 } %t85, ptr %l9
  %t86 = getelementptr { i64, i64 }, ptr %l9, i32 0, i32 0
  %t87 = load i64, ptr %t86, !tbaa !24
  %t89 = getelementptr { i64, i64 }, ptr %l9, i32 0, i32 1
  %t90 = load i64, ptr %t89, !tbaa !24
  store i64 %t87, ptr %l88, !tbaa !24
  store i64 %t90, ptr %l89, !tbaa !24
  %t94 = load ptr, ptr %l0, !tbaa !29
  %t95 = load i32, ptr %l6, !tbaa !23
  %t98 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2eshape(ptr %v0, ptr %t94, i32 %t95)
  store i64 %t98, ptr %l92
  br label %bb16
bb16:
  %t99 = load i64, ptr @G_2ecompiler_2feval_2evUint, !tbaa !24
  %t100 = load i64, ptr %l92, !tbaa !24
  %t102 = icmp ne i64 %t100, %t99
  br i1 %t102, label %bb17, label %bb18
bb17:
  %t104 = load ptr, ptr %l0, !tbaa !29
  %t106 = getelementptr %"compiler/eval:Machine", ptr %t104, i32 0, i32 0
  %t107 = load ptr, ptr %t106, !tbaa !29
  store ptr %t107, ptr %l97, !tbaa !29
  %t108 = load ptr, ptr %l0, !tbaa !29
  %t110 = getelementptr %"compiler/eval:Machine", ptr %t108, i32 0, i32 0
  %t111 = load ptr, ptr %t110, !tbaa !29
  %t112 = load i32, ptr %l6, !tbaa !23
  %t115 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %v0, ptr %t111, i32 %t112)
  store i32 %t115, ptr %l101
  br label %bb19
bb18:
  store i1 false, ptr %l95, !tbaa !21
  br label %bb21
bb19:
  %t116 = load ptr, ptr %l97, !tbaa !29
  %t117 = load i32, ptr %l101, !tbaa !23
  %t118 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsUnsigned(ptr %v0, ptr %t116, i32 %t117)
  store i1 %t118, ptr %l102
  br label %bb20
bb20:
  %t119 = load i1, ptr %l102, !tbaa !21
  %t120 = xor i1 %t119, true
  store i1 %t120, ptr %l95, !tbaa !21
  br label %bb21
bb21:
  %t122 = load i64, ptr %l7, !tbaa !24
  %t123 = load i1, ptr %l8, !tbaa !21
  %t124 = load i64, ptr %l88, !tbaa !24
  %t125 = load i64, ptr %l89, !tbaa !24
  %t126 = load i1, ptr %l95, !tbaa !21
  %t129 = call i1 @compiler_2feval_2efits128(i64 %t124, i64 %t125, i1 %t126, i64 %t122, i1 %t123)
  store i1 %t129, ptr %l106
  br label %bb22
bb22:
  %t130 = load i1, ptr %l106, !tbaa !21
  %t131 = xor i1 %t130, true
  store i1 %t131, ptr %rv
  br label %ret
bb23:
  %t133 = load ptr, ptr %l0, !tbaa !29
  %t134 = load i64, ptr %l1, !tbaa !24
  %t135 = load { i64, [4 x i64] }, ptr %l5
  %t139 = call { i64, i64 } @compiler_2feval_2ecompiler_2feval_3aMachine_2ewideOf(ptr %v0, ptr %t133, i64 %t134, { i64, [4 x i64] } %t135)
  store { i64, i64 } %t139, ptr %l111
  br label %bb24
bb24:
  %t140 = load { i64, i64 }, ptr %l111
  store { i64, i64 } %t140, ptr %l12
  %t141 = getelementptr { i64, i64 }, ptr %l12, i32 0, i32 0
  %t142 = load i64, ptr %t141, !tbaa !24
  store i64 %t142, ptr %l13, !tbaa !24
  %t144 = getelementptr { i64, i64 }, ptr %l12, i32 0, i32 1
  %t145 = load i64, ptr %t144, !tbaa !24
  store i64 %t145, ptr %l14, !tbaa !24
  %t147 = load i32, ptr %l2, !range !{i32 0, i32 52}
  %t149 = trunc i64 0 to i32
  %t150 = icmp eq i32 %t147, %t149
  br i1 %t150, label %bb25, label %bb26
bb25:
  %t152 = load i1, ptr %l8, !tbaa !21
  %t154 = xor i1 %t152, true
  br i1 %t154, label %bb27, label %bb28
bb26:
  br label %bb37
bb27:
  %t156 = load i64, ptr %l13, !tbaa !24
  %t158 = icmp ne i64 %t156, 0
  br i1 %t158, label %bb29, label %bb30
bb28:
  br label %bb32
bb29:
  store i1 true, ptr %l120, !tbaa !21
  br label %bb31
bb30:
  %t160 = load i64, ptr %l14, !tbaa !24
  %t162 = icmp ne i64 %t160, 0
  store i1 %t162, ptr %l120, !tbaa !21
  br label %bb31
bb31:
  %t164 = load i1, ptr %l120, !tbaa !21
  store i1 %t164, ptr %rv
  br label %ret
bb32:
  %t165 = load i64, ptr %l7, !tbaa !24
  %t167 = call { i64, i64 } @compiler_2feval_2ewideMin(i64 %t165)
  store { i64, i64 } %t167, ptr %l124
  br label %bb33
bb33:
  %t168 = load { i64, i64 }, ptr %l124
  store { i64, i64 } %t168, ptr %l15
  %t169 = getelementptr { i64, i64 }, ptr %l15, i32 0, i32 0
  %t170 = load i64, ptr %t169, !tbaa !24
  %t172 = getelementptr { i64, i64 }, ptr %l15, i32 0, i32 1
  %t173 = load i64, ptr %t172, !tbaa !24
  store i64 %t173, ptr %l17, !tbaa !24
  %t175 = load i64, ptr %l13, !tbaa !24
  %t179 = icmp eq i64 %t175, %t170
  br i1 %t179, label %bb34, label %bb35
bb34:
  %t181 = load i64, ptr %l14, !tbaa !24
  %t182 = load i64, ptr %l17, !tbaa !24
  %t185 = icmp eq i64 %t181, %t182
  store i1 %t185, ptr %l130, !tbaa !21
  br label %bb36
bb35:
  store i1 false, ptr %l130, !tbaa !21
  br label %bb36
bb36:
  %t187 = load i1, ptr %l130, !tbaa !21
  store i1 %t187, ptr %rv
  br label %ret
bb37:
  %t188 = load ptr, ptr %l0, !tbaa !29
  store ptr %t188, ptr %l134, !tbaa !29
  %t189 = load i64, ptr %l1, !tbaa !24
  store i64 %t189, ptr %l135, !tbaa !24
  %t190 = load ptr, ptr %l0, !tbaa !29
  %t191 = load i64, ptr %l1, !tbaa !24
  %t192 = load %"compiler/mir:Range", ptr %l4
  %t196 = call { i64, [4 x i64] } @compiler_2feval_2ecompiler_2feval_3aMachine_2earg(ptr %v0, ptr %t190, i64 %t191, %"compiler/mir:Range" %t192, i64 1)
  store { i64, [4 x i64] } %t196, ptr %l139
  br label %bb38
bb38:
  %t197 = load ptr, ptr %l134, !tbaa !29
  %t198 = load i64, ptr %l135, !tbaa !24
  %t199 = load { i64, [4 x i64] }, ptr %l139
  %t200 = call { i64, i64 } @compiler_2feval_2ecompiler_2feval_3aMachine_2ewideOf(ptr %v0, ptr %t197, i64 %t198, { i64, [4 x i64] } %t199)
  store { i64, i64 } %t200, ptr %l140
  br label %bb39
bb39:
  %t201 = load { i64, i64 }, ptr %l140
  store { i64, i64 } %t201, ptr %l18
  %t202 = getelementptr { i64, i64 }, ptr %l18, i32 0, i32 0
  %t203 = load i64, ptr %t202, !tbaa !24
  store i64 %t203, ptr %l19, !tbaa !24
  %t205 = getelementptr { i64, i64 }, ptr %l18, i32 0, i32 1
  %t206 = load i64, ptr %t205, !tbaa !24
  store i64 %t206, ptr %l20, !tbaa !24
  %t208 = load i32, ptr %l2, !range !{i32 0, i32 52}
  %t210 = trunc i64 6 to i32
  %t211 = icmp eq i32 %t208, %t210
  br i1 %t211, label %bb40, label %bb41
bb40:
  %t213 = load i64, ptr %l7, !tbaa !24
  %t215 = call { i64, i64 } @compiler_2feval_2ewideMin(i64 %t213)
  store { i64, i64 } %t215, ptr %l146
  br label %bb42
bb41:
  br label %bb55
bb42:
  %t216 = load { i64, i64 }, ptr %l146
  store { i64, i64 } %t216, ptr %l21
  %t217 = getelementptr { i64, i64 }, ptr %l21, i32 0, i32 0
  %t218 = load i64, ptr %t217, !tbaa !24
  store i64 %t218, ptr %l22, !tbaa !24
  %t220 = getelementptr { i64, i64 }, ptr %l21, i32 0, i32 1
  %t221 = load i64, ptr %t220, !tbaa !24
  store i64 %t221, ptr %l23, !tbaa !24
  %t223 = load i1, ptr %l8, !tbaa !21
  br i1 %t223, label %bb43, label %bb44
bb43:
  %t225 = load i64, ptr %l13, !tbaa !24
  %t226 = load i64, ptr %l22, !tbaa !24
  %t229 = icmp eq i64 %t225, %t226
  store i1 %t229, ptr %l150, !tbaa !21
  br label %bb45
bb44:
  store i1 false, ptr %l150, !tbaa !21
  br label %bb45
bb45:
  %t231 = load i1, ptr %l150, !tbaa !21
  br i1 %t231, label %bb46, label %bb47
bb46:
  %t232 = load i64, ptr %l14, !tbaa !24
  %t233 = load i64, ptr %l23, !tbaa !24
  %t236 = icmp eq i64 %t232, %t233
  store i1 %t236, ptr %l154, !tbaa !21
  br label %bb48
bb47:
  store i1 false, ptr %l154, !tbaa !21
  br label %bb48
bb48:
  %t238 = load i1, ptr %l154, !tbaa !21
  br i1 %t238, label %bb49, label %bb50
bb49:
  %t239 = load i64, ptr %l19, !tbaa !24
  %t241 = icmp eq i64 %t239, -1
  store i1 %t241, ptr %l158, !tbaa !21
  br label %bb51
bb50:
  store i1 false, ptr %l158, !tbaa !21
  br label %bb51
bb51:
  %t243 = load i1, ptr %l158, !tbaa !21
  br i1 %t243, label %bb52, label %bb53
bb52:
  %t244 = load i64, ptr %l20, !tbaa !24
  %t246 = icmp eq i64 %t244, -1
  store i1 %t246, ptr %l161, !tbaa !21
  br label %bb54
bb53:
  store i1 false, ptr %l161, !tbaa !21
  br label %bb54
bb54:
  %t248 = load i1, ptr %l161, !tbaa !21
  store i1 %t248, ptr %rv
  br label %ret
bb55:
  %t249 = load i32, ptr %l2, !range !{i32 0, i32 52}
  %t251 = trunc i64 5 to i32
  %t252 = icmp eq i32 %t249, %t251
  br i1 %t252, label %bb56, label %bb57
bb56:
  %t254 = load i1, ptr %l8, !tbaa !21
  br i1 %t254, label %bb58, label %bb59
bb57:
  br label %bb101
bb58:
  %t256 = load i64, ptr %l14, !tbaa !24
  %t258 = icmp slt i64 %t256, 0
  %t259 = load i64, ptr %l20, !tbaa !24
  %t261 = icmp slt i64 %t259, 0
  %t264 = icmp ne i1 %t258, %t261
  store i1 %t264, ptr %l167, !tbaa !21
  br label %bb60
bb59:
  store i1 false, ptr %l167, !tbaa !21
  br label %bb60
bb60:
  %t266 = load i1, ptr %l167, !tbaa !21
  store i1 %t266, ptr %l24, !tbaa !21
  %t267 = load i64, ptr %l13, !tbaa !24
  store i64 %t267, ptr %l25, !tbaa !24
  %t269 = load i64, ptr %l14, !tbaa !24
  store i64 %t269, ptr %l26, !tbaa !24
  %t271 = load i1, ptr %l8, !tbaa !21
  br i1 %t271, label %bb61, label %bb62
bb61:
  %t273 = load i64, ptr %l14, !tbaa !24
  %t275 = icmp slt i64 %t273, 0
  store i1 %t275, ptr %l176, !tbaa !21
  br label %bb63
bb62:
  store i1 false, ptr %l176, !tbaa !21
  br label %bb63
bb63:
  %t277 = load i1, ptr %l176, !tbaa !21
  br i1 %t277, label %bb64, label %bb65
bb64:
  %t278 = load i64, ptr %l13, !tbaa !24
  %t279 = load i64, ptr %l14, !tbaa !24
  %t282 = call { i64, i64 } @compiler_2feval_2eneg128(i64 %t278, i64 %t279)
  store { i64, i64 } %t282, ptr %l181
  br label %bb66
bb65:
  br label %bb67
bb66:
  %t283 = load { i64, i64 }, ptr %l181
  store { i64, i64 } %t283, ptr %l27
  %t284 = getelementptr { i64, i64 }, ptr %l27, i32 0, i32 0
  %t285 = load i64, ptr %t284, !tbaa !24
  store i64 %t285, ptr %l25, !tbaa !24
  %t287 = getelementptr { i64, i64 }, ptr %l27, i32 0, i32 1
  %t288 = load i64, ptr %t287, !tbaa !24
  store i64 %t288, ptr %l26, !tbaa !24
  br label %bb67
bb67:
  %t290 = load i64, ptr %l19, !tbaa !24
  store i64 %t290, ptr %l28, !tbaa !24
  %t292 = load i64, ptr %l20, !tbaa !24
  store i64 %t292, ptr %l29, !tbaa !24
  %t294 = load i1, ptr %l8, !tbaa !21
  br i1 %t294, label %bb68, label %bb69
bb68:
  %t296 = load i64, ptr %l20, !tbaa !24
  %t298 = icmp slt i64 %t296, 0
  store i1 %t298, ptr %l187, !tbaa !21
  br label %bb70
bb69:
  store i1 false, ptr %l187, !tbaa !21
  br label %bb70
bb70:
  %t300 = load i1, ptr %l187, !tbaa !21
  br i1 %t300, label %bb71, label %bb72
bb71:
  %t301 = load i64, ptr %l19, !tbaa !24
  %t302 = load i64, ptr %l20, !tbaa !24
  %t305 = call { i64, i64 } @compiler_2feval_2eneg128(i64 %t301, i64 %t302)
  store { i64, i64 } %t305, ptr %l192
  br label %bb73
bb72:
  br label %bb74
bb73:
  %t306 = load { i64, i64 }, ptr %l192
  store { i64, i64 } %t306, ptr %l30
  %t307 = getelementptr { i64, i64 }, ptr %l30, i32 0, i32 0
  %t308 = load i64, ptr %t307, !tbaa !24
  store i64 %t308, ptr %l28, !tbaa !24
  %t310 = getelementptr { i64, i64 }, ptr %l30, i32 0, i32 1
  %t311 = load i64, ptr %t310, !tbaa !24
  store i64 %t311, ptr %l29, !tbaa !24
  br label %bb74
bb74:
  %t313 = load i64, ptr %l25, !tbaa !24
  %t315 = icmp eq i64 %t313, 0
  br i1 %t315, label %bb75, label %bb76
bb75:
  %t317 = load i64, ptr %l26, !tbaa !24
  %t319 = icmp eq i64 %t317, 0
  store i1 %t319, ptr %l197, !tbaa !21
  br label %bb77
bb76:
  store i1 false, ptr %l197, !tbaa !21
  br label %bb77
bb77:
  %t321 = load i1, ptr %l197, !tbaa !21
  br i1 %t321, label %bb78, label %bb79
bb78:
  store i1 true, ptr %l200, !tbaa !21
  br label %bb83
bb79:
  %t322 = load i64, ptr %l28, !tbaa !24
  %t324 = icmp eq i64 %t322, 0
  br i1 %t324, label %bb80, label %bb81
bb80:
  %t326 = load i64, ptr %l29, !tbaa !24
  %t328 = icmp eq i64 %t326, 0
  store i1 %t328, ptr %l203, !tbaa !21
  br label %bb82
bb81:
  store i1 false, ptr %l203, !tbaa !21
  br label %bb82
bb82:
  %t330 = load i1, ptr %l203, !tbaa !21
  store i1 %t330, ptr %l200, !tbaa !21
  br label %bb83
bb83:
  %t331 = load i1, ptr %l200, !tbaa !21
  br i1 %t331, label %bb84, label %bb85
bb84:
  store i1 false, ptr %rv
  br label %ret
bb85:
  br label %bb86
bb86:
  %t333 = load i64, ptr %l25, !tbaa !24
  %t334 = load i64, ptr %l26, !tbaa !24
  %t335 = load i64, ptr %l28, !tbaa !24
  %t336 = load i64, ptr %l29, !tbaa !24
  %t341 = call { i64, i64 } @compiler_2feval_2emul128(i64 %t333, i64 %t334, i64 %t335, i64 %t336)
  store { i64, i64 } %t341, ptr %l211
  br label %bb87
bb87:
  %t342 = load { i64, i64 }, ptr %l211
  store { i64, i64 } %t342, ptr %l31
  %t343 = getelementptr { i64, i64 }, ptr %l31, i32 0, i32 0
  %t344 = load i64, ptr %t343, !tbaa !24
  store i64 %t344, ptr %l32, !tbaa !24
  %t346 = getelementptr { i64, i64 }, ptr %l31, i32 0, i32 1
  %t347 = load i64, ptr %t346, !tbaa !24
  store i64 %t347, ptr %l33, !tbaa !24
  %t349 = load i64, ptr %l32, !tbaa !24
  %t350 = load i64, ptr %l33, !tbaa !24
  %t351 = load i64, ptr %l25, !tbaa !24
  %t352 = load i64, ptr %l26, !tbaa !24
  %t357 = call { i64, i64, i64, i64 } @compiler_2feval_2eudivmod128(i64 %t349, i64 %t350, i64 %t351, i64 %t352)
  store { i64, i64, i64, i64 } %t357, ptr %l218
  br label %bb88
bb88:
  %t358 = load { i64, i64, i64, i64 }, ptr %l218
  store { i64, i64, i64, i64 } %t358, ptr %l34
  %t359 = getelementptr { i64, i64, i64, i64 }, ptr %l34, i32 0, i32 0
  %t360 = load i64, ptr %t359, !tbaa !24
  %t362 = getelementptr { i64, i64, i64, i64 }, ptr %l34, i32 0, i32 1
  %t363 = load i64, ptr %t362, !tbaa !24
  store i64 %t363, ptr %l36, !tbaa !24
  %t366 = load i64, ptr %l28, !tbaa !24
  %t369 = icmp ne i64 %t360, %t366
  br i1 %t369, label %bb89, label %bb90
bb89:
  store i1 true, ptr %l224, !tbaa !21
  br label %bb91
bb90:
  %t371 = load i64, ptr %l36, !tbaa !24
  %t372 = load i64, ptr %l29, !tbaa !24
  %t375 = icmp ne i64 %t371, %t372
  store i1 %t375, ptr %l224, !tbaa !21
  br label %bb91
bb91:
  %t377 = load i1, ptr %l224, !tbaa !21
  br i1 %t377, label %bb92, label %bb93
bb92:
  store i1 true, ptr %rv
  br label %ret
bb93:
  br label %bb94
bb94:
  %t379 = load i64, ptr %l7, !tbaa !24
  %t380 = load i1, ptr %l8, !tbaa !21
  %t383 = call { i64, i64 } @compiler_2feval_2ewideMax(i64 %t379, i1 %t380)
  store { i64, i64 } %t383, ptr %l231
  br label %bb95
bb95:
  %t384 = load { i64, i64 }, ptr %l231
  store { i64, i64 } %t384, ptr %l37
  %t385 = getelementptr { i64, i64 }, ptr %l37, i32 0, i32 0
  %t386 = load i64, ptr %t385, !tbaa !24
  store i64 %t386, ptr %l38, !tbaa !24
  %t388 = getelementptr { i64, i64 }, ptr %l37, i32 0, i32 1
  %t389 = load i64, ptr %t388, !tbaa !24
  store i64 %t389, ptr %l39, !tbaa !24
  %t391 = load i1, ptr %l24, !tbaa !21
  br i1 %t391, label %bb96, label %bb97
bb96:
  %t393 = load i64, ptr %l38, !tbaa !24
  %t394 = load i64, ptr %l39, !tbaa !24
  %t397 = call { i64, i64 } @compiler_2feval_2eadd128(i64 %t393, i64 %t394, i64 1, i64 0)
  store { i64, i64 } %t397, ptr %l237
  br label %bb98
bb97:
  br label %bb99
bb98:
  %t398 = load { i64, i64 }, ptr %l237
  store { i64, i64 } %t398, ptr %l40
  %t399 = getelementptr { i64, i64 }, ptr %l40, i32 0, i32 0
  %t400 = load i64, ptr %t399, !tbaa !24
  store i64 %t400, ptr %l38, !tbaa !24
  %t402 = getelementptr { i64, i64 }, ptr %l40, i32 0, i32 1
  %t403 = load i64, ptr %t402, !tbaa !24
  store i64 %t403, ptr %l39, !tbaa !24
  br label %bb99
bb99:
  %t405 = load i64, ptr %l32, !tbaa !24
  %t406 = load i64, ptr %l33, !tbaa !24
  %t407 = load i64, ptr %l38, !tbaa !24
  %t408 = load i64, ptr %l39, !tbaa !24
  %t413 = call i64 @compiler_2feval_2ecmp128(i64 %t405, i64 %t406, i64 %t407, i64 %t408, i1 false)
  store i64 %t413, ptr %l244
  br label %bb100
bb100:
  %t414 = load i64, ptr %l244, !tbaa !24
  %t415 = icmp sgt i64 %t414, 0
  store i1 %t415, ptr %rv
  br label %ret
bb101:
  %t417 = load i64, ptr %l13, !tbaa !24
  %t418 = load i64, ptr %l14, !tbaa !24
  %t419 = load i64, ptr %l19, !tbaa !24
  %t420 = load i64, ptr %l20, !tbaa !24
  %t425 = call { i64, i64 } @compiler_2feval_2esub128(i64 %t417, i64 %t418, i64 %t419, i64 %t420)
  store { i64, i64 } %t425, ptr %l250
  br label %bb102
bb102:
  %t426 = load { i64, i64 }, ptr %l250
  store { i64, i64 } %t426, ptr %l41
  %t427 = getelementptr { i64, i64 }, ptr %l41, i32 0, i32 0
  %t428 = load i64, ptr %t427, !tbaa !24
  store i64 %t428, ptr %l42, !tbaa !24
  %t430 = getelementptr { i64, i64 }, ptr %l41, i32 0, i32 1
  %t431 = load i64, ptr %t430, !tbaa !24
  store i64 %t431, ptr %l43, !tbaa !24
  %t433 = load i32, ptr %l2, !range !{i32 0, i32 52}
  %t435 = trunc i64 3 to i32
  %t436 = icmp eq i32 %t433, %t435
  br i1 %t436, label %bb103, label %bb104
bb103:
  %t438 = load i64, ptr %l13, !tbaa !24
  %t439 = load i64, ptr %l14, !tbaa !24
  %t440 = load i64, ptr %l19, !tbaa !24
  %t441 = load i64, ptr %l20, !tbaa !24
  %t446 = call { i64, i64 } @compiler_2feval_2eadd128(i64 %t438, i64 %t439, i64 %t440, i64 %t441)
  store { i64, i64 } %t446, ptr %l259
  br label %bb105
bb104:
  br label %bb106
bb105:
  %t447 = load { i64, i64 }, ptr %l259
  store { i64, i64 } %t447, ptr %l44
  %t448 = getelementptr { i64, i64 }, ptr %l44, i32 0, i32 0
  %t449 = load i64, ptr %t448, !tbaa !24
  store i64 %t449, ptr %l42, !tbaa !24
  %t451 = getelementptr { i64, i64 }, ptr %l44, i32 0, i32 1
  %t452 = load i64, ptr %t451, !tbaa !24
  store i64 %t452, ptr %l43, !tbaa !24
  br label %bb106
bb106:
  %t454 = load i64, ptr %l7, !tbaa !24
  %t456 = icmp slt i64 %t454, 128
  br i1 %t456, label %bb107, label %bb108
bb107:
  %t458 = load i64, ptr %l42, !tbaa !24
  %t459 = load i64, ptr %l43, !tbaa !24
  %t460 = load i64, ptr %l7, !tbaa !24
  %t461 = load i1, ptr %l8, !tbaa !21
  %t466 = call i1 @compiler_2feval_2efits128(i64 %t458, i64 %t459, i1 true, i64 %t460, i1 %t461)
  store i1 %t466, ptr %l268
  br label %bb109
bb108:
  br label %bb110
bb109:
  %t467 = load i1, ptr %l268, !tbaa !21
  %t468 = xor i1 %t467, true
  store i1 %t468, ptr %rv
  br label %ret
bb110:
  %t470 = load i1, ptr %l8, !tbaa !21
  %t472 = xor i1 %t470, true
  br i1 %t472, label %bb111, label %bb112
bb111:
  %t474 = load i32, ptr %l2, !range !{i32 0, i32 52}
  %t476 = trunc i64 3 to i32
  %t477 = icmp eq i32 %t474, %t476
  br i1 %t477, label %bb113, label %bb114
bb112:
  br label %bb118
bb113:
  %t479 = load i64, ptr %l42, !tbaa !24
  %t480 = load i64, ptr %l43, !tbaa !24
  %t481 = load i64, ptr %l13, !tbaa !24
  %t482 = load i64, ptr %l14, !tbaa !24
  %t487 = call i64 @compiler_2feval_2ecmp128(i64 %t479, i64 %t480, i64 %t481, i64 %t482, i1 false)
  store i64 %t487, ptr %l278
  br label %bb115
bb114:
  br label %bb116
bb115:
  %t488 = load i64, ptr %l278, !tbaa !24
  %t489 = icmp slt i64 %t488, 0
  store i1 %t489, ptr %rv
  br label %ret
bb116:
  %t491 = load i64, ptr %l13, !tbaa !24
  %t492 = load i64, ptr %l14, !tbaa !24
  %t493 = load i64, ptr %l19, !tbaa !24
  %t494 = load i64, ptr %l20, !tbaa !24
  %t499 = call i64 @compiler_2feval_2ecmp128(i64 %t491, i64 %t492, i64 %t493, i64 %t494, i1 false)
  store i64 %t499, ptr %l284
  br label %bb117
bb117:
  %t500 = load i64, ptr %l284, !tbaa !24
  %t501 = icmp slt i64 %t500, 0
  store i1 %t501, ptr %rv
  br label %ret
bb118:
  %t503 = load i32, ptr %l2, !range !{i32 0, i32 52}
  %t505 = trunc i64 3 to i32
  %t506 = icmp eq i32 %t503, %t505
  br i1 %t506, label %bb119, label %bb120
bb119:
  %t508 = load i64, ptr %l14, !tbaa !24
  %t510 = icmp slt i64 %t508, 0
  %t511 = load i64, ptr %l20, !tbaa !24
  %t513 = icmp slt i64 %t511, 0
  %t516 = icmp eq i1 %t510, %t513
  br i1 %t516, label %bb121, label %bb122
bb120:
  br label %bb124
bb121:
  %t518 = load i64, ptr %l43, !tbaa !24
  %t520 = icmp slt i64 %t518, 0
  %t521 = load i64, ptr %l14, !tbaa !24
  %t523 = icmp slt i64 %t521, 0
  %t526 = icmp ne i1 %t520, %t523
  store i1 %t526, ptr %l293, !tbaa !21
  br label %bb123
bb122:
  store i1 false, ptr %l293, !tbaa !21
  br label %bb123
bb123:
  %t528 = load i1, ptr %l293, !tbaa !21
  store i1 %t528, ptr %rv
  br label %ret
bb124:
  %t529 = load i64, ptr %l14, !tbaa !24
  %t531 = icmp slt i64 %t529, 0
  %t532 = load i64, ptr %l20, !tbaa !24
  %t534 = icmp slt i64 %t532, 0
  %t537 = icmp ne i1 %t531, %t534
  br i1 %t537, label %bb125, label %bb126
bb125:
  %t539 = load i64, ptr %l43, !tbaa !24
  %t541 = icmp slt i64 %t539, 0
  %t542 = load i64, ptr %l14, !tbaa !24
  %t544 = icmp slt i64 %t542, 0
  %t547 = icmp ne i1 %t541, %t544
  store i1 %t547, ptr %l304, !tbaa !21
  br label %bb127
bb126:
  store i1 false, ptr %l304, !tbaa !21
  br label %bb127
bb127:
  %t549 = load i1, ptr %l304, !tbaa !21
  store i1 %t549, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i32 @compiler_2feval_2ecompiler_2feval_3aMachine_2epayloadType(ptr %v0, ptr %a0, i32 %a1, i64 %a2) #0 {
entry:
  %l2 = alloca i64
  %l3 = alloca ptr
  %l4 = alloca i32
  %l6 = alloca { i64, ptr }
  %l11 = alloca i32
  %l14 = alloca i32
  %l17 = alloca i32
  %l20 = alloca i32
  %l23 = alloca i32
  %l26 = alloca { i64, ptr }
  %l29 = alloca i1
  %l34 = alloca i32
  %l35 = alloca { i64, ptr }
  %rv = alloca i32
  store i64 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t3 = getelementptr %"compiler/eval:Machine", ptr %a0, i32 0, i32 0
  %t4 = load ptr, ptr %t3, !tbaa !29
  store ptr %t4, ptr %l3, !tbaa !29
  %t6 = load ptr, ptr %l3, !tbaa !29
  %t10 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %v0, ptr %t6, i32 %a1)
  store i32 %t10, ptr %l11
  br label %bb1
bb1:
  %t11 = load i32, ptr %l11, !tbaa !23
  store i32 %t11, ptr %l4, !tbaa !23
  %t12 = load ptr, ptr %l3, !tbaa !29
  %t13 = load i32, ptr %l4, !tbaa !23
  %t16 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t12, i32 %t13)
  store i32 %t16, ptr %l14
  br label %bb2
bb2:
  %t17 = load i32, ptr %l14, !range !{i32 0, i32 33}
  %t19 = trunc i64 24 to i32
  %t20 = icmp eq i32 %t17, %t19
  br i1 %t20, label %bb3, label %bb4
bb3:
  %t22 = load ptr, ptr %l3, !tbaa !29
  %t23 = load i32, ptr %l4, !tbaa !23
  %t26 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eShapeCases(ptr %v0, ptr %t22, i32 %t23)
  store i32 %t26, ptr %l20
  br label %bb5
bb4:
  %t27 = load ptr, ptr %l3, !tbaa !29
  %t28 = load i32, ptr %l4, !tbaa !23
  %t31 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eCases(ptr %v0, ptr %t27, i32 %t28)
  store i32 %t31, ptr %l23
  br label %bb6
bb5:
  %t32 = load i32, ptr %l20, !tbaa !23
  store i32 %t32, ptr %l17, !tbaa !23
  br label %bb7
bb6:
  %t33 = load i32, ptr %l23, !tbaa !23
  store i32 %t33, ptr %l17, !tbaa !23
  br label %bb7
bb7:
  %t34 = load i32, ptr %l17, !tbaa !23
  %t35 = load ptr, ptr %l3, !tbaa !29
  %t39 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t35, i32 %t34)
  store { i64, ptr } %t39, ptr %l26
  br label %bb8
bb8:
  %t40 = load { i64, ptr }, ptr %l26, !tbaa !27
  store { i64, ptr } %t40, ptr %l6, !tbaa !27
  %t41 = load i64, ptr %l2, !tbaa !24
  %t43 = icmp sge i64 %t41, 0
  br i1 %t43, label %bb9, label %bb10
bb9:
  %t45 = load i64, ptr %l2, !tbaa !24
  %t46 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t48 = extractvalue { i64, ptr } %t46, 0
  %t51 = icmp slt i64 %t45, %t48
  store i1 %t51, ptr %l29, !tbaa !21
  br label %bb11
bb10:
  store i1 false, ptr %l29, !tbaa !21
  br label %bb11
bb11:
  %t53 = load i1, ptr %l29, !tbaa !21
  br i1 %t53, label %bb12, label %bb13
bb12:
  %t54 = load { i64, ptr }, ptr %l6, !tbaa !27
  store { i64, ptr } %t54, ptr %l35, !tbaa !27
  %t55 = load i64, ptr %l2, !tbaa !24
  %t57 = getelementptr { i64, ptr }, ptr %l35, i32 0, i32 1
  %t58 = load ptr, ptr %t57, !tbaa !27
  %t59 = getelementptr i32, ptr %t58, i64 %t55
  %t60 = load i32, ptr %t59, !tbaa !33
  store i32 %t60, ptr %l34, !tbaa !23
  br label %bb14
bb13:
  store i32 0, ptr %l34, !tbaa !23
  br label %bb14
bb14:
  %t62 = load i32, ptr %l34, !tbaa !23
  store i32 %t62, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local i1 @compiler_2feval_2ecompiler_2feval_3aMachine_2eplaceReady(ptr %v0, ptr %a0, i64 %a1, %"compiler/mir:Lvalue" %a2) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca %"compiler/mir:Lvalue"
  %l3 = alloca { i64, [2 x i64] }
  %l4 = alloca i64
  %l5 = alloca i32
  %l6 = alloca i64
  %l7 = alloca %"compiler/eval:global"
  %l13 = alloca i64
  %l15 = alloca ptr
  %l18 = alloca %"compiler/eval:gkey"
  %l19 = alloca i64
  %l20 = alloca i32
  %l23 = alloca i1
  %l32 = alloca %"compiler/eval:global"
  %l34 = alloca i1
  %l42 = alloca i1
  %l50 = alloca ptr
  %l55 = alloca i1
  %l56 = alloca { i64, ptr }
  %l64 = alloca i1
  %s1 = alloca %olang.scope
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store %"compiler/mir:Lvalue" %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = getelementptr %"compiler/mir:Lvalue", ptr %l2, i32 0, i32 0
  %t2 = load { i64, [2 x i64] }, ptr %t1
  store { i64, [2 x i64] } %t2, ptr %l3
  %t4 = load { i64, [2 x i64] }, ptr %l3
  %t6 = extractvalue { i64, [2 x i64] } %t4, 0
  %t7 = icmp eq i64 %t6, 2
  br i1 %t7, label %bb1, label %bb2
bb1:
  %t9 = getelementptr { i64, [2 x i64] }, ptr %l3, i32 0, i32 1
  %t10 = getelementptr { i64, i32, i32 }, ptr %t9, i32 0, i32 0
  %t11 = load i64, ptr %t10
  store i64 %t11, ptr %l4, !tbaa !24
  %t13 = getelementptr { i64, [2 x i64] }, ptr %l3, i32 0, i32 1
  %t14 = getelementptr { i64, i32, i32 }, ptr %t13, i32 0, i32 1
  %t15 = load i32, ptr %t14
  store i32 %t15, ptr %l5, !tbaa !23
  br label %bb3
bb2:
  br label %bb53
bb3:
  store %olang.scope zeroinitializer, ptr %s1
  %t17 = load ptr, ptr %l0, !tbaa !29
  %t19 = getelementptr %"compiler/eval:Machine", ptr %t17, i32 0, i32 40
  store ptr %t19, ptr %l15, !tbaa !29
  %t20 = load i64, ptr %l4, !tbaa !24
  %t21 = load i32, ptr %l5, !tbaa !23
  %t24 = call %"compiler/eval:gkey" @compiler_2feval_3agkey_2ector(ptr %s1, i64 %t20, i32 %t21)
  store %"compiler/eval:gkey" %t24, ptr %l18
  br label %bb4
bb4:
  %t25 = load ptr, ptr %l15, !tbaa !29
  %t26 = load %"compiler/eval:gkey", ptr %l18
  %t27 = call { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2feval_3agkey_2c_20I64_3e_2eG_H841bd46d30f67641fdfac3080f15aea1(ptr %v0, ptr %t25, %"compiler/eval:gkey" %t26)
  %t28 = extractvalue { i32, i64 } %t27, 1
  %t29 = extractvalue { i32, i64 } %t27, 0
  store i32 %t29, ptr %l20
  %t30 = icmp ne i32 %t29, 0
  br i1 %t30, label %bb6, label %ok.31, !prof !99
ok.31:
  store i64 %t28, ptr %l19
  br label %bb5
bb5:
  %t32 = load i64, ptr %l19, !tbaa !24
  store i64 %t32, ptr %l13, !tbaa !24
  br label %bb8
bb6:
  br label %bb7
bb7:
  store i64 -1, ptr %l13, !tbaa !24
  br label %bb8
bb8:
  %t33 = load i64, ptr %l13, !tbaa !24
  store i64 %t33, ptr %l6, !tbaa !24
  %t34 = load i64, ptr %l6, !tbaa !24
  %t36 = icmp slt i64 %t34, 0
  br i1 %t36, label %bb9, label %bb10
bb9:
  store i1 true, ptr %l23, !tbaa !21
  br label %bb11
bb10:
  %t38 = load i64, ptr %l6, !tbaa !24
  %t39 = load ptr, ptr %l0, !tbaa !29
  %t41 = getelementptr %"compiler/eval:Machine", ptr %t39, i32 0, i32 70
  %t42 = load i64, ptr %t41, !tbaa !24
  %t45 = icmp eq i64 %t38, %t42
  store i1 %t45, ptr %l23, !tbaa !21
  br label %bb11
bb11:
  %t47 = load i1, ptr %l23, !tbaa !21
  br i1 %t47, label %bb12, label %bb13
bb12:
  call void @__olang_scope_close(ptr %s1)
  store i1 true, ptr %rv
  br label %ret
bb13:
  br label %bb14
bb14:
  %t49 = load ptr, ptr %l0, !tbaa !29
  %t51 = getelementptr %"compiler/eval:Machine", ptr %t49, i32 0, i32 39
  %t52 = load i64, ptr %l6, !tbaa !24
  %t55 = call %"compiler/eval:global" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3aglobal_3e_2eAt_3ccompiler_2feval_3aglobal_3e(ptr %v0, ptr %t51, i64 %t52)
  store %"compiler/eval:global" %t55, ptr %l32
  br label %bb15
bb15:
  %t56 = load %"compiler/eval:global", ptr %l32
  store %"compiler/eval:global" %t56, ptr %l7
  %t57 = getelementptr %"compiler/eval:global", ptr %l7, i32 0, i32 5
  %t58 = load i1, ptr %t57, !tbaa !21
  br i1 %t58, label %bb16, label %bb17
bb16:
  store i1 true, ptr %l34, !tbaa !21
  br label %bb18
bb17:
  %t60 = getelementptr %"compiler/eval:global", ptr %l7, i32 0, i32 6
  %t61 = load i1, ptr %t60, !tbaa !21
  store i1 %t61, ptr %l34, !tbaa !21
  br label %bb18
bb18:
  %t63 = load i1, ptr %l34, !tbaa !21
  br i1 %t63, label %bb19, label %bb20
bb19:
  %t64 = load ptr, ptr %l0, !tbaa !29
  %t66 = getelementptr %"compiler/eval:Machine", ptr %t64, i32 0, i32 20
  store i1 true, ptr %t66, !tbaa !21
  br label %bb21
bb20:
  br label %bb21
bb21:
  %t67 = load ptr, ptr %l0, !tbaa !29
  %t69 = getelementptr %"compiler/eval:Machine", ptr %t67, i32 0, i32 1
  %t70 = load i32, ptr %t69, !range !{i32 0, i32 2}
  %t72 = trunc i64 1 to i32
  %t73 = icmp eq i32 %t70, %t72
  br i1 %t73, label %bb22, label %bb23
bb22:
  %t75 = getelementptr %"compiler/eval:global", ptr %l7, i32 0, i32 4
  %t76 = load i64, ptr %t75, !tbaa !24
  %t78 = icmp ne i64 %t76, 0
  br i1 %t78, label %bb24, label %bb25
bb23:
  br label %bb31
bb24:
  store i1 true, ptr %l42, !tbaa !21
  br label %bb26
bb25:
  %t80 = getelementptr %"compiler/eval:global", ptr %l7, i32 0, i32 2
  %t81 = load i64, ptr %t80, !tbaa !24
  %t83 = icmp slt i64 %t81, 0
  store i1 %t83, ptr %l42, !tbaa !21
  br label %bb26
bb26:
  %t85 = load i1, ptr %l42, !tbaa !21
  br i1 %t85, label %bb27, label %bb28
bb27:
  call void @__olang_scope_close(ptr %s1)
  store i1 true, ptr %rv
  br label %ret
bb28:
  br label %bb29
bb29:
  %t87 = load ptr, ptr %l0, !tbaa !29
  %t88 = load i64, ptr %l6, !tbaa !24
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2estartGlobal(ptr %v0, ptr %t87, i64 %t88)
  br label %bb30
bb30:
  call void @__olang_scope_close(ptr %s1)
  store i1 false, ptr %rv
  br label %ret
bb31:
  %t92 = getelementptr %"compiler/eval:global", ptr %l7, i32 0, i32 1
  %t93 = load i1, ptr %t92, !tbaa !21
  br i1 %t93, label %bb32, label %bb33
bb32:
  %t95 = load ptr, ptr %l0, !tbaa !29
  store ptr %t95, ptr %l50, !tbaa !29
  %t96 = load ptr, ptr %l0, !tbaa !29
  %t98 = load i64, ptr %l4, !tbaa !24
  %t99 = load i32, ptr %l5, !tbaa !23
  %t104 = call i1 @compiler_2feval_2ecompiler_2feval_3aMachine_2ewritesAfter(ptr %v0, ptr %t96, i64 %a1, i64 %t98, i32 %t99)
  store i1 %t104, ptr %l55
  br label %bb34
bb33:
  br label %bb39
bb34:
  %t105 = load i1, ptr %l55, !tbaa !21
  br i1 %t105, label %bb35, label %bb36
bb35:
  %t106 = load { i64, ptr }, ptr @G_2ecompiler_2feval_2eWhyWritesGlobalVar, !tbaa !27
  store { i64, ptr } %t106, ptr %l56, !tbaa !27
  br label %bb37
bb36:
  %t108 = load { i64, ptr }, ptr @G_2ecompiler_2feval_2eWhyMutableGlobal, !tbaa !27
  store { i64, ptr } %t108, ptr %l56, !tbaa !27
  br label %bb37
bb37:
  %t110 = load ptr, ptr @__olang_prog_scope
  %t111 = load ptr, ptr %l50, !tbaa !29
  %t112 = load { i64, ptr }, ptr %l56, !tbaa !27
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2erefuse(ptr %v0, ptr %t110, ptr %t111, { i64, ptr } %t112)
  br label %bb38
bb38:
  call void @__olang_scope_close(ptr %s1)
  store i1 false, ptr %rv
  br label %ret
bb39:
  %t114 = load ptr, ptr %l0, !tbaa !29
  %t115 = getelementptr %"compiler/eval:global", ptr %l7, i32 0, i32 0
  %t116 = load i64, ptr %t115, !tbaa !24
  %t118 = trunc i64 %t116 to i32
  %t122 = call i1 @compiler_2feval_2ecompiler_2feval_3aMachine_2ereachesWritable(ptr %v0, ptr %t114, i32 %t118)
  store i1 %t122, ptr %l64
  br label %bb40
bb40:
  %t123 = load i1, ptr %l64, !tbaa !21
  br i1 %t123, label %bb41, label %bb42
bb41:
  %t124 = load ptr, ptr %l0, !tbaa !29
  %t125 = load { i64, ptr }, ptr @G_2ecompiler_2feval_2eWhyChangeable, !tbaa !27
  %t126 = load ptr, ptr @__olang_prog_scope
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2erefuse(ptr %v0, ptr %t126, ptr %t124, { i64, ptr } %t125)
  br label %bb43
bb42:
  br label %bb44
bb43:
  call void @__olang_scope_close(ptr %s1)
  store i1 false, ptr %rv
  br label %ret
bb44:
  %t130 = getelementptr %"compiler/eval:global", ptr %l7, i32 0, i32 4
  %t131 = load i64, ptr %t130, !tbaa !24
  %t133 = icmp eq i64 %t131, 2
  br i1 %t133, label %bb45, label %bb46
bb45:
  call void @__olang_scope_close(ptr %s1)
  store i1 true, ptr %rv
  br label %ret
bb46:
  br label %bb47
bb47:
  %t136 = getelementptr %"compiler/eval:global", ptr %l7, i32 0, i32 4
  %t137 = load i64, ptr %t136, !tbaa !24
  %t139 = icmp eq i64 %t137, 1
  br i1 %t139, label %bb48, label %bb49
bb48:
  %t141 = load ptr, ptr %l0, !tbaa !29
  %t142 = load { i64, ptr }, ptr @G_2ecompiler_2feval_2eWhyCycle, !tbaa !27
  %t143 = load ptr, ptr @__olang_prog_scope
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2erefuse(ptr %v0, ptr %t143, ptr %t141, { i64, ptr } %t142)
  br label %bb50
bb49:
  br label %bb51
bb50:
  call void @__olang_scope_close(ptr %s1)
  store i1 false, ptr %rv
  br label %ret
bb51:
  %t147 = load ptr, ptr %l0, !tbaa !29
  %t148 = load i64, ptr %l6, !tbaa !24
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2estartGlobal(ptr %v0, ptr %t147, i64 %t148)
  br label %bb52
bb52:
  call void @__olang_scope_close(ptr %s1)
  store i1 false, ptr %rv
  br label %ret
bb53:
  br i1 true, label %bb54, label %bb55
bb54:
  br label %bb56
bb55:
  br label %bb57
bb56:
  store i1 true, ptr %rv
  br label %ret
bb57:
  call void @__olang_check_failed(ptr @olang_loc_a7714af53687ff6b_1e8ca3031727412f)
  unreachable
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local void @compiler_2feval_2ecompiler_2feval_3aMachine_2epopFrame(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l4 = alloca ptr
  %l8 = alloca { i64, ptr }
  %l10 = alloca { i64, ptr }
  %l15 = alloca ptr
  %l20 = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/eval:Machine", ptr %t1, i32 0, i32 56
  %t4 = load i64, ptr %t3, !tbaa !24
  %t6 = icmp eq i64 %t4, 0
  br i1 %t6, label %bb1, label %bb2
bb1:
  br label %ret
bb2:
  br label %bb3
bb3:
  %t8 = load ptr, ptr %l0, !tbaa !29
  store ptr %t8, ptr %l4, !tbaa !29
  %t9 = load ptr, ptr %l4, !tbaa !29
  %t10 = getelementptr %"compiler/eval:Machine", ptr %t9, i32 0, i32 56
  %t11 = load i64, ptr %t10, !tbaa !24
  %t13 = sub i64 %t11, 1
  %t15 = load ptr, ptr %l4, !tbaa !29
  %t16 = getelementptr %"compiler/eval:Machine", ptr %t15, i32 0, i32 56
  store i64 %t13, ptr %t16, !tbaa !24
  %t17 = load ptr, ptr %l0, !tbaa !29
  %t19 = getelementptr %"compiler/eval:Machine", ptr %t17, i32 0, i32 23
  %t20 = load { i64, ptr }, ptr %t19, !tbaa !27
  store { i64, ptr } %t20, ptr %l8, !tbaa !27
  %t21 = load ptr, ptr %l0, !tbaa !29
  %t23 = getelementptr %"compiler/eval:Machine", ptr %t21, i32 0, i32 55
  %t24 = load { i64, ptr }, ptr %t23, !tbaa !27
  store { i64, ptr } %t24, ptr %l10, !tbaa !27
  %t25 = load ptr, ptr %l0, !tbaa !29
  %t27 = getelementptr %"compiler/eval:Machine", ptr %t25, i32 0, i32 56
  %t28 = load i64, ptr %t27, !tbaa !24
  %t30 = getelementptr { i64, ptr }, ptr %l10, i32 0, i32 1
  %t31 = load ptr, ptr %t30, !tbaa !27
  %t32 = getelementptr %"compiler/eval:frame", ptr %t31, i64 %t28
  %t33 = getelementptr %"compiler/eval:frame", ptr %t32, i32 0, i32 0
  %t34 = load i64, ptr %t33, !tbaa !24
  %t36 = getelementptr { i64, ptr }, ptr %l8, i32 0, i32 1
  %t37 = load ptr, ptr %t36, !tbaa !27
  %t38 = getelementptr %"compiler/eval:cfn", ptr %t37, i64 %t34
  %t39 = getelementptr %"compiler/eval:cfn", ptr %t38, i32 0, i32 17
  %t40 = load i1, ptr %t39, !tbaa !21
  br i1 %t40, label %bb4, label %bb5
bb4:
  %t42 = load ptr, ptr %l0, !tbaa !29
  store ptr %t42, ptr %l15, !tbaa !29
  %t43 = load ptr, ptr %l15, !tbaa !29
  %t44 = getelementptr %"compiler/eval:Machine", ptr %t43, i32 0, i32 8
  %t45 = load i64, ptr %t44, !tbaa !24
  %t47 = sub i64 %t45, 1
  %t49 = load ptr, ptr %l15, !tbaa !29
  %t50 = getelementptr %"compiler/eval:Machine", ptr %t49, i32 0, i32 8
  store i64 %t47, ptr %t50, !tbaa !24
  br label %bb6
bb5:
  br label %bb6
bb6:
  %t51 = load ptr, ptr %l0, !tbaa !29
  %t52 = load ptr, ptr %l0, !tbaa !29
  %t54 = getelementptr %"compiler/eval:Machine", ptr %t52, i32 0, i32 55
  %t55 = load { i64, ptr }, ptr %t54, !tbaa !27
  store { i64, ptr } %t55, ptr %l20, !tbaa !27
  %t56 = load ptr, ptr %l0, !tbaa !29
  %t58 = getelementptr %"compiler/eval:Machine", ptr %t56, i32 0, i32 56
  %t59 = load i64, ptr %t58, !tbaa !24
  %t61 = getelementptr { i64, ptr }, ptr %l20, i32 0, i32 1
  %t62 = load ptr, ptr %t61, !tbaa !27
  %t63 = getelementptr %"compiler/eval:frame", ptr %t62, i64 %t59
  %t64 = getelementptr %"compiler/eval:frame", ptr %t63, i32 0, i32 3
  %t65 = load i64, ptr %t64, !tbaa !24
  %t68 = getelementptr %"compiler/eval:Machine", ptr %t51, i32 0, i32 58
  store i64 %t65, ptr %t68, !tbaa !24
  %t69 = load ptr, ptr %l0, !tbaa !29
  %t70 = load ptr, ptr %l0, !tbaa !29
  %t72 = getelementptr %"compiler/eval:Machine", ptr %t70, i32 0, i32 56
  %t73 = load i64, ptr %t72, !tbaa !24
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2edropOwnDefers(ptr %v0, ptr %t69, i64 %t73)
  br label %bb7
bb7:
  br label %ret
ret:
  ret void
}

define dso_local i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2eprim(ptr %v0, ptr %a0, i64 %a1, i32 %a2, i32 %a3, %"compiler/mir:Range" %a4) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca i32
  %l4 = alloca %"compiler/mir:Range"
  %l5 = alloca { i64, [4 x i64] }
  %l6 = alloca i32
  %l7 = alloca %"compiler/eval:Ptr"
  %l8 = alloca %"compiler/eval:Ptr"
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca i64
  %l12 = alloca i64
  %l13 = alloca i64
  %l14 = alloca i64
  %l15 = alloca i64
  %l16 = alloca %"compiler/eval:Ptr"
  %l17 = alloca %"compiler/eval:Ptr"
  %l18 = alloca %"compiler/eval:Ptr"
  %l19 = alloca %"compiler/eval:Ptr"
  %l20 = alloca %"compiler/eval:Ptr"
  %l21 = alloca i64
  %l22 = alloca i64
  %l23 = alloca i64
  %l24 = alloca i64
  %l25 = alloca i32
  %l26 = alloca i64
  %l27 = alloca %"compiler/eval:Ptr"
  %l28 = alloca %"compiler/eval:Ptr"
  %l29 = alloca i1
  %l30 = alloca i64
  %l31 = alloca i64
  %l32 = alloca i64
  %l33 = alloca i64
  %l34 = alloca i64
  %l35 = alloca i64
  %l36 = alloca i64
  %l37 = alloca i64
  %l38 = alloca %"compiler/eval:Ptr"
  %l39 = alloca %"compiler/eval:Ptr"
  %l43 = alloca { i64, [4 x i64] }
  %l47 = alloca i32
  %l54 = alloca i64
  %l60 = alloca %"compiler/eval:Ptr"
  %l61 = alloca ptr
  %l62 = alloca i64
  %l66 = alloca { i64, [4 x i64] }
  %l67 = alloca %"compiler/eval:Ptr"
  %l70 = alloca i64
  %l80 = alloca i64
  %l83 = alloca i64
  %l101 = alloca ptr
  %l107 = alloca %"compiler/eval:Ptr"
  %l108 = alloca %"compiler/eval:Ptr"
  %l109 = alloca ptr
  %l115 = alloca %"compiler/eval:Ptr"
  %l116 = alloca %"compiler/eval:Ptr"
  %l120 = alloca i1
  %l130 = alloca ptr
  %l134 = alloca %"compiler/eval:Ptr"
  %l136 = alloca i64
  %l137 = alloca ptr
  %l138 = alloca i64
  %l142 = alloca { i64, [4 x i64] }
  %l143 = alloca i64
  %l145 = alloca i64
  %l148 = alloca ptr
  %l152 = alloca i64
  %l155 = alloca i64
  %l158 = alloca ptr
  %l162 = alloca i64
  %l164 = alloca i64
  %l170 = alloca %"compiler/eval:Ptr"
  %l171 = alloca ptr
  %l175 = alloca %"compiler/eval:Ptr"
  %l176 = alloca %"compiler/eval:Ptr"
  %l179 = alloca i1
  %l185 = alloca %"compiler/eval:Ptr"
  %l186 = alloca i64
  %l187 = alloca ptr
  %l188 = alloca ptr
  %l189 = alloca i64
  %l193 = alloca { i64, [4 x i64] }
  %l194 = alloca i32
  %l195 = alloca %"compiler/eval:Ptr"
  %l198 = alloca i64
  %l201 = alloca ptr
  %l202 = alloca i64
  %l206 = alloca %"compiler/eval:Ptr"
  %l224 = alloca i64
  %l244 = alloca i1
  %l247 = alloca ptr
  %l248 = alloca i64
  %l252 = alloca { i64, [4 x i64] }
  %l253 = alloca i64
  %l257 = alloca i64
  %l261 = alloca i32
  %l262 = alloca i64
  %l265 = alloca i64
  %l266 = alloca i64
  %l268 = alloca i64
  %l271 = alloca i64
  %l273 = alloca i64
  %l276 = alloca i64
  %l280 = alloca i64
  %l283 = alloca i1
  %l286 = alloca i1
  %l294 = alloca i64
  %l295 = alloca ptr
  %l296 = alloca i64
  %l300 = alloca { i64, [4 x i64] }
  %l301 = alloca i32
  %l302 = alloca ptr
  %l303 = alloca i64
  %l307 = alloca { i64, [4 x i64] }
  %l308 = alloca i64
  %l315 = alloca i1
  %l319 = alloca i1
  %l323 = alloca i1
  %l334 = alloca i64
  %l337 = alloca i1
  %l343 = alloca %"compiler/eval:Ptr"
  %l344 = alloca ptr
  %l345 = alloca i64
  %l349 = alloca { i64, [4 x i64] }
  %l350 = alloca %"compiler/eval:Ptr"
  %l353 = alloca i64
  %l360 = alloca i64
  %l363 = alloca i64
  %l386 = alloca i64
  %l393 = alloca %"compiler/eval:Ptr"
  %l394 = alloca ptr
  %l400 = alloca %"compiler/eval:Ptr"
  %l401 = alloca %"compiler/eval:Ptr"
  %l402 = alloca ptr
  %l408 = alloca %"compiler/eval:Ptr"
  %l410 = alloca i64
  %l411 = alloca %"compiler/eval:Ptr"
  %l414 = alloca %"compiler/eval:Ptr"
  %l415 = alloca ptr
  %l421 = alloca %"compiler/eval:Ptr"
  %l422 = alloca %"compiler/eval:Ptr"
  %l423 = alloca ptr
  %l429 = alloca %"compiler/eval:Ptr"
  %l431 = alloca i64
  %l432 = alloca %"compiler/eval:Ptr"
  %l436 = alloca i1
  %l446 = alloca i64
  %l448 = alloca i64
  %s5 = alloca %olang.scope
  %s11 = alloca %olang.scope
  %s25 = alloca %olang.scope
  %rv = alloca i64
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  store i32 %a2, ptr %l2
  store %"compiler/mir:Range" %a4, ptr %l4
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load i64, ptr %l1, !tbaa !24
  %t3 = load %"compiler/mir:Range", ptr %l4
  %t7 = call { i64, [4 x i64] } @compiler_2feval_2ecompiler_2feval_3aMachine_2earg(ptr %v0, ptr %t1, i64 %t2, %"compiler/mir:Range" %t3, i64 0)
  store { i64, [4 x i64] } %t7, ptr %l43
  br label %bb1
bb1:
  %t8 = load { i64, [4 x i64] }, ptr %l43
  store { i64, [4 x i64] } %t8, ptr %l5
  %t9 = load ptr, ptr %l0, !tbaa !29
  %t10 = load i64, ptr %l1, !tbaa !24
  %t11 = load { i64, [4 x i64] }, ptr %l5
  %t15 = call i32 @compiler_2feval_2ecompiler_2feval_3aMachine_2eopType(ptr %v0, ptr %t9, i64 %t10, { i64, [4 x i64] } %t11)
  store i32 %t15, ptr %l47
  br label %bb2
bb2:
  %t16 = load i32, ptr %l47, !tbaa !23
  store i32 %t16, ptr %l6, !tbaa !23
  %t17 = load i32, ptr %l2, !range !{i32 0, i32 52}
  %t19 = trunc i64 22 to i32
  %t20 = icmp eq i32 %t17, %t19
  br i1 %t20, label %bb3, label %bb4
bb3:
  br label %bb5
bb4:
  br label %bb7
bb5:
  %t22 = load ptr, ptr %l0, !tbaa !29
  %t23 = load i64, ptr %l1, !tbaa !24
  %t24 = load { i64, [4 x i64] }, ptr %l5
  %t25 = load i32, ptr %l6, !tbaa !23
  %t30 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2elenOf(ptr %v0, ptr %t22, i64 %t23, { i64, [4 x i64] } %t24, i32 %t25)
  store i64 %t30, ptr %l54
  br label %bb6
bb6:
  %t31 = load i64, ptr %l54, !tbaa !24
  store i64 %t31, ptr %rv
  br label %ret
bb7:
  %t32 = load i32, ptr %l2, !range !{i32 0, i32 52}
  %t34 = trunc i64 19 to i32
  %t35 = icmp eq i32 %t32, %t34
  br i1 %t35, label %bb8, label %bb9
bb8:
  br label %bb10
bb9:
  br label %bb40
bb10:
  %t37 = load ptr, ptr %l0, !tbaa !29
  %t38 = load i64, ptr %l1, !tbaa !24
  %t39 = load { i64, [4 x i64] }, ptr %l5
  %t43 = call %"compiler/eval:Ptr" @compiler_2feval_2ecompiler_2feval_3aMachine_2eaddr(ptr %v0, ptr %t37, i64 %t38, { i64, [4 x i64] } %t39, i64 1)
  store %"compiler/eval:Ptr" %t43, ptr %l60
  br label %bb11
bb11:
  %t44 = load %"compiler/eval:Ptr", ptr %l60
  store %"compiler/eval:Ptr" %t44, ptr %l7
  %t45 = load ptr, ptr %l0, !tbaa !29
  store ptr %t45, ptr %l61, !tbaa !29
  %t46 = load i64, ptr %l1, !tbaa !24
  store i64 %t46, ptr %l62, !tbaa !24
  %t47 = load ptr, ptr %l0, !tbaa !29
  %t48 = load i64, ptr %l1, !tbaa !24
  %t49 = load %"compiler/mir:Range", ptr %l4
  %t53 = call { i64, [4 x i64] } @compiler_2feval_2ecompiler_2feval_3aMachine_2earg(ptr %v0, ptr %t47, i64 %t48, %"compiler/mir:Range" %t49, i64 1)
  store { i64, [4 x i64] } %t53, ptr %l66
  br label %bb12
bb12:
  %t54 = load ptr, ptr %l61, !tbaa !29
  %t55 = load i64, ptr %l62, !tbaa !24
  %t56 = load { i64, [4 x i64] }, ptr %l66
  %t57 = call %"compiler/eval:Ptr" @compiler_2feval_2ecompiler_2feval_3aMachine_2eaddr(ptr %v0, ptr %t54, i64 %t55, { i64, [4 x i64] } %t56, i64 2)
  store %"compiler/eval:Ptr" %t57, ptr %l67
  br label %bb13
bb13:
  %t58 = load %"compiler/eval:Ptr", ptr %l67
  store %"compiler/eval:Ptr" %t58, ptr %l8
  %t59 = load ptr, ptr %l0, !tbaa !29
  %t60 = load i32, ptr %l6, !tbaa !23
  %t63 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2esize(ptr %v0, ptr %t59, i32 %t60)
  store i64 %t63, ptr %l70
  br label %bb14
bb14:
  %t64 = load i64, ptr %l70, !tbaa !24
  store i64 %t64, ptr %l9, !tbaa !24
  %t65 = load ptr, ptr %l0, !tbaa !29
  %t67 = getelementptr %"compiler/eval:Machine", ptr %t65, i32 0, i32 19
  %t68 = load i1, ptr %t67, !tbaa !21
  br i1 %t68, label %bb15, label %bb16
bb15:
  store i64 0, ptr %rv
  br label %ret
bb16:
  br label %bb17
bb17:
  store i64 0, ptr %l10, !tbaa !24
  %t71 = load i64, ptr %l9, !tbaa !24
  %t73 = add i64 %t71, 7
  %t75 = sdiv i64 %t73, 8
  store i64 %t75, ptr %l11, !tbaa !24
  store i64 1, ptr %l12, !tbaa !24
  %t77 = load i64, ptr %l11, !tbaa !24
  %t78 = load i64, ptr %l10, !tbaa !24
  %t81 = icmp sgt i64 %t77, %t78
  br i1 %t81, label %bb18, label %bb19
bb18:
  %t83 = load i64, ptr %l12, !tbaa !24
  %t85 = icmp sgt i64 %t83, 0
  br i1 %t85, label %bb20, label %bb21
bb19:
  store i64 0, ptr %l80, !tbaa !24
  br label %bb23
bb20:
  %t87 = load i64, ptr %l11, !tbaa !24
  %t88 = load i64, ptr %l10, !tbaa !24
  %t91 = sub i64 %t87, %t88
  %t92 = load i64, ptr %l12, !tbaa !24
  %t95 = add i64 %t91, %t92
  %t97 = sub i64 %t95, 1
  %t98 = load i64, ptr %l12, !tbaa !24
  %t101 = sdiv i64 %t97, %t98
  store i64 %t101, ptr %l83, !tbaa !24
  br label %bb22
bb21:
  store i64 0, ptr %l83, !tbaa !24
  br label %bb22
bb22:
  %t103 = load i64, ptr %l83, !tbaa !24
  store i64 %t103, ptr %l80, !tbaa !24
  br label %bb23
bb23:
  %t104 = load i64, ptr %l80, !tbaa !24
  store i64 %t104, ptr %l13, !tbaa !24
  store i64 0, ptr %l14, !tbaa !24
  br label %bb24
bb24:
  store %olang.scope zeroinitializer, ptr %s5
  %t105 = load i64, ptr %l14, !tbaa !24
  %t106 = load i64, ptr %l13, !tbaa !24
  %t109 = icmp slt i64 %t105, %t106
  %t111 = xor i1 %t109, true
  br i1 %t111, label %bb25, label %bb26
bb25:
  call void @__olang_scope_close(ptr %s5)
  br label %bb39
bb26:
  br label %bb27
bb27:
  %t113 = load i64, ptr %l10, !tbaa !24
  %t114 = load i64, ptr %l14, !tbaa !24
  %t115 = load i64, ptr %l12, !tbaa !24
  %t118 = mul i64 %t114, %t115
  %t121 = add i64 %t113, %t118
  store i64 %t121, ptr %l15, !tbaa !24
  %t123 = load ptr, ptr %l0, !tbaa !29
  store ptr %t123, ptr %l101, !tbaa !29
  %t124 = getelementptr %"compiler/eval:Ptr", ptr %l7, i32 0, i32 0
  %t125 = load i64, ptr %t124, !tbaa !24
  %t126 = getelementptr %"compiler/eval:Ptr", ptr %l7, i32 0, i32 1
  %t127 = load i64, ptr %t126, !tbaa !24
  %t128 = load i64, ptr %l15, !tbaa !24
  %t130 = mul i64 8, %t128
  %t133 = add i64 %t127, %t130
  %t136 = call %"compiler/eval:Ptr" @compiler_2feval_3aPtr_2ector(ptr %s5, i64 %t125, i64 %t133)
  store %"compiler/eval:Ptr" %t136, ptr %l107
  br label %bb28
bb28:
  %t137 = load ptr, ptr %l101, !tbaa !29
  %t138 = load %"compiler/eval:Ptr", ptr %l107
  %t139 = call %"compiler/eval:Ptr" @compiler_2feval_2ecompiler_2feval_3aMachine_2erdPtrOrBits(ptr %v0, ptr %t137, %"compiler/eval:Ptr" %t138)
  store %"compiler/eval:Ptr" %t139, ptr %l108
  br label %bb29
bb29:
  %t140 = load %"compiler/eval:Ptr", ptr %l108
  store %"compiler/eval:Ptr" %t140, ptr %l16
  %t141 = load ptr, ptr %l0, !tbaa !29
  store ptr %t141, ptr %l109, !tbaa !29
  %t142 = getelementptr %"compiler/eval:Ptr", ptr %l8, i32 0, i32 0
  %t143 = load i64, ptr %t142, !tbaa !24
  %t144 = getelementptr %"compiler/eval:Ptr", ptr %l8, i32 0, i32 1
  %t145 = load i64, ptr %t144, !tbaa !24
  %t146 = load i64, ptr %l15, !tbaa !24
  %t148 = mul i64 8, %t146
  %t151 = add i64 %t145, %t148
  %t154 = call %"compiler/eval:Ptr" @compiler_2feval_3aPtr_2ector(ptr %s5, i64 %t143, i64 %t151)
  store %"compiler/eval:Ptr" %t154, ptr %l115
  br label %bb30
bb30:
  %t155 = load ptr, ptr %l109, !tbaa !29
  %t156 = load %"compiler/eval:Ptr", ptr %l115
  %t157 = call %"compiler/eval:Ptr" @compiler_2feval_2ecompiler_2feval_3aMachine_2erdPtrOrBits(ptr %v0, ptr %t155, %"compiler/eval:Ptr" %t156)
  store %"compiler/eval:Ptr" %t157, ptr %l116
  br label %bb31
bb31:
  %t158 = load %"compiler/eval:Ptr", ptr %l116
  store %"compiler/eval:Ptr" %t158, ptr %l17
  %t159 = getelementptr %"compiler/eval:Ptr", ptr %l16, i32 0, i32 0
  %t160 = load i64, ptr %t159, !tbaa !24
  %t161 = getelementptr %"compiler/eval:Ptr", ptr %l17, i32 0, i32 0
  %t162 = load i64, ptr %t161, !tbaa !24
  %t165 = icmp ne i64 %t160, %t162
  br i1 %t165, label %bb32, label %bb33
bb32:
  store i1 true, ptr %l120, !tbaa !21
  br label %bb34
bb33:
  %t167 = getelementptr %"compiler/eval:Ptr", ptr %l16, i32 0, i32 1
  %t168 = load i64, ptr %t167, !tbaa !24
  %t169 = getelementptr %"compiler/eval:Ptr", ptr %l17, i32 0, i32 1
  %t170 = load i64, ptr %t169, !tbaa !24
  %t173 = icmp ne i64 %t168, %t170
  store i1 %t173, ptr %l120, !tbaa !21
  br label %bb34
bb34:
  %t175 = load i1, ptr %l120, !tbaa !21
  br i1 %t175, label %bb35, label %bb36
bb35:
  call void @__olang_scope_close(ptr %s5)
  store i64 0, ptr %rv
  br label %ret
bb36:
  br label %bb37
bb37:
  call void @__olang_scope_close(ptr %s5)
  br label %bb38
bb38:
  %t177 = load i64, ptr %l14, !tbaa !24
  %t179 = add i64 %t177, 1
  store i64 %t179, ptr %l14, !tbaa !24
  br label %bb24
bb39:
  store i64 1, ptr %rv
  br label %ret
bb40:
  %t182 = load i32, ptr %l2, !range !{i32 0, i32 52}
  %t184 = trunc i64 23 to i32
  %t185 = icmp eq i32 %t182, %t184
  br i1 %t185, label %bb41, label %bb42
bb41:
  br label %bb43
bb42:
  br label %bb51
bb43:
  %t187 = load ptr, ptr %l0, !tbaa !29
  store ptr %t187, ptr %l130, !tbaa !29
  %t188 = load ptr, ptr %l0, !tbaa !29
  %t189 = load i64, ptr %l1, !tbaa !24
  %t190 = load { i64, [4 x i64] }, ptr %l5
  %t194 = call %"compiler/eval:Ptr" @compiler_2feval_2ecompiler_2feval_3aMachine_2eaddr(ptr %v0, ptr %t188, i64 %t189, { i64, [4 x i64] } %t190, i64 1)
  store %"compiler/eval:Ptr" %t194, ptr %l134
  br label %bb44
bb44:
  %t195 = load i32, ptr %l6, !tbaa !23
  %t196 = load ptr, ptr %l130, !tbaa !29
  %t197 = load %"compiler/eval:Ptr", ptr %l134
  %t199 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2etagOf(ptr %v0, ptr %t196, %"compiler/eval:Ptr" %t197, i32 %t195)
  store i64 %t199, ptr %l136
  br label %bb45
bb45:
  %t200 = load ptr, ptr %l0, !tbaa !29
  store ptr %t200, ptr %l137, !tbaa !29
  %t201 = load i64, ptr %l1, !tbaa !24
  store i64 %t201, ptr %l138, !tbaa !24
  %t202 = load ptr, ptr %l0, !tbaa !29
  %t203 = load i64, ptr %l1, !tbaa !24
  %t204 = load %"compiler/mir:Range", ptr %l4
  %t208 = call { i64, [4 x i64] } @compiler_2feval_2ecompiler_2feval_3aMachine_2earg(ptr %v0, ptr %t202, i64 %t203, %"compiler/mir:Range" %t204, i64 1)
  store { i64, [4 x i64] } %t208, ptr %l142
  br label %bb46
bb46:
  %t209 = load ptr, ptr %l137, !tbaa !29
  %t210 = load i64, ptr %l138, !tbaa !24
  %t211 = load { i64, [4 x i64] }, ptr %l142
  %t212 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2escalar(ptr %v0, ptr %t209, i64 %t210, { i64, [4 x i64] } %t211)
  store i64 %t212, ptr %l143
  br label %bb47
bb47:
  %t213 = load i64, ptr %l136, !tbaa !24
  %t214 = load i64, ptr %l143, !tbaa !24
  %t215 = icmp eq i64 %t213, %t214
  br i1 %t215, label %bb48, label %bb49
bb48:
  store i64 1, ptr %l145, !tbaa !24
  br label %bb50
bb49:
  store i64 0, ptr %l145, !tbaa !24
  br label %bb50
bb50:
  %t217 = load i64, ptr %l145, !tbaa !24
  store i64 %t217, ptr %rv
  br label %ret
bb51:
  %t218 = load i32, ptr %l2, !range !{i32 0, i32 52}
  %t220 = trunc i64 20 to i32
  %t221 = icmp eq i32 %t218, %t220
  br i1 %t221, label %bb52, label %bb53
bb52:
  br label %bb54
bb53:
  br label %bb57
bb54:
  %t223 = load ptr, ptr %l0, !tbaa !29
  store ptr %t223, ptr %l148, !tbaa !29
  %t224 = load ptr, ptr %l0, !tbaa !29
  %t225 = load i64, ptr %l1, !tbaa !24
  %t226 = load { i64, [4 x i64] }, ptr %l5
  %t230 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2escalar(ptr %v0, ptr %t224, i64 %t225, { i64, [4 x i64] } %t226)
  store i64 %t230, ptr %l152
  br label %bb55
bb55:
  %t231 = load i32, ptr %l6, !tbaa !23
  %t233 = load ptr, ptr %l148, !tbaa !29
  %t234 = load i64, ptr %l152, !tbaa !24
  %t237 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2econvert(ptr %v0, ptr %t233, i64 %t234, i32 %t231, i32 %a3)
  store i64 %t237, ptr %l155
  br label %bb56
bb56:
  %t238 = load i64, ptr %l155, !tbaa !24
  store i64 %t238, ptr %rv
  br label %ret
bb57:
  %t239 = load i32, ptr %l2, !range !{i32 0, i32 52}
  %t241 = trunc i64 21 to i32
  %t242 = icmp eq i32 %t239, %t241
  br i1 %t242, label %bb58, label %bb59
bb58:
  br label %bb60
bb59:
  br label %bb63
bb60:
  %t244 = load ptr, ptr %l0, !tbaa !29
  store ptr %t244, ptr %l158, !tbaa !29
  %t245 = load ptr, ptr %l0, !tbaa !29
  %t246 = load i64, ptr %l1, !tbaa !24
  %t247 = load { i64, [4 x i64] }, ptr %l5
  %t251 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2escalar(ptr %v0, ptr %t245, i64 %t246, { i64, [4 x i64] } %t247)
  store i64 %t251, ptr %l162
  br label %bb61
bb61:
  %t252 = load i32, ptr %l6, !tbaa !23
  %t253 = load ptr, ptr %l158, !tbaa !29
  %t254 = load i64, ptr %l162, !tbaa !24
  %t256 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2ebitcast(ptr %v0, ptr %t253, i64 %t254, i32 %t252)
  store i64 %t256, ptr %l164
  br label %bb62
bb62:
  %t257 = load i64, ptr %l164, !tbaa !24
  store i64 %t257, ptr %rv
  br label %ret
bb63:
  %t258 = load i32, ptr %l2, !range !{i32 0, i32 52}
  %t260 = trunc i64 44 to i32
  %t261 = icmp eq i32 %t258, %t260
  br i1 %t261, label %bb64, label %bb65
bb64:
  br label %bb66
bb65:
  br label %bb83
bb66:
  store %olang.scope zeroinitializer, ptr %s11
  %t263 = load ptr, ptr %l0, !tbaa !29
  %t264 = load i64, ptr %l1, !tbaa !24
  %t265 = load { i64, [4 x i64] }, ptr %l5
  %t269 = call %"compiler/eval:Ptr" @compiler_2feval_2ecompiler_2feval_3aMachine_2eaddr(ptr %v0, ptr %t263, i64 %t264, { i64, [4 x i64] } %t265, i64 1)
  store %"compiler/eval:Ptr" %t269, ptr %l170
  br label %bb67
bb67:
  %t270 = load %"compiler/eval:Ptr", ptr %l170
  store %"compiler/eval:Ptr" %t270, ptr %l18
  %t271 = load ptr, ptr %l0, !tbaa !29
  store ptr %t271, ptr %l171, !tbaa !29
  %t272 = getelementptr %"compiler/eval:Ptr", ptr %l18, i32 0, i32 0
  %t273 = load i64, ptr %t272, !tbaa !24
  %t274 = getelementptr %"compiler/eval:Ptr", ptr %l18, i32 0, i32 1
  %t275 = load i64, ptr %t274, !tbaa !24
  %t277 = add i64 %t275, 8
  %t280 = call %"compiler/eval:Ptr" @compiler_2feval_3aPtr_2ector(ptr %s11, i64 %t273, i64 %t277)
  store %"compiler/eval:Ptr" %t280, ptr %l175
  br label %bb68
bb68:
  %t281 = load ptr, ptr %l171, !tbaa !29
  %t282 = load %"compiler/eval:Ptr", ptr %l175
  %t283 = call %"compiler/eval:Ptr" @compiler_2feval_2ecompiler_2feval_3aMachine_2erdPtr(ptr %v0, ptr %t281, %"compiler/eval:Ptr" %t282)
  store %"compiler/eval:Ptr" %t283, ptr %l176
  br label %bb69
bb69:
  %t284 = load %"compiler/eval:Ptr", ptr %l176
  store %"compiler/eval:Ptr" %t284, ptr %l19
  %t285 = load ptr, ptr %l0, !tbaa !29
  %t287 = getelementptr %"compiler/eval:Machine", ptr %t285, i32 0, i32 19
  %t288 = load i1, ptr %t287, !tbaa !21
  br i1 %t288, label %bb70, label %bb71
bb70:
  store i1 true, ptr %l179, !tbaa !21
  br label %bb72
bb71:
  %t290 = getelementptr %"compiler/eval:Ptr", ptr %l19, i32 0, i32 0
  %t291 = load i64, ptr %t290, !tbaa !24
  %t293 = icmp eq i64 %t291, 0
  store i1 %t293, ptr %l179, !tbaa !21
  br label %bb72
bb72:
  %t295 = load i1, ptr %l179, !tbaa !21
  br i1 %t295, label %bb73, label %bb74
bb73:
  call void @__olang_scope_close(ptr %s11)
  store i64 0, ptr %rv
  br label %ret
bb74:
  br label %bb75
bb75:
  %t297 = load ptr, ptr %l0, !tbaa !29
  %t298 = load %"compiler/eval:Ptr", ptr %l19
  %t301 = call %"compiler/eval:Ptr" @compiler_2feval_2ecompiler_2feval_3aMachine_2erdPtr(ptr %v0, ptr %t297, %"compiler/eval:Ptr" %t298)
  store %"compiler/eval:Ptr" %t301, ptr %l185
  br label %bb76
bb76:
  %t302 = load %"compiler/eval:Ptr", ptr %l185
  store %"compiler/eval:Ptr" %t302, ptr %l20
  %t303 = getelementptr %"compiler/eval:Ptr", ptr %l20, i32 0, i32 0
  %t304 = load i64, ptr %t303, !tbaa !24
  store i64 %t304, ptr %l186, !tbaa !24
  %t305 = load ptr, ptr %l0, !tbaa !29
  store ptr %t305, ptr %l187, !tbaa !29
  %t306 = load ptr, ptr %l0, !tbaa !29
  store ptr %t306, ptr %l188, !tbaa !29
  %t307 = load i64, ptr %l1, !tbaa !24
  store i64 %t307, ptr %l189, !tbaa !24
  %t308 = load ptr, ptr %l0, !tbaa !29
  %t309 = load i64, ptr %l1, !tbaa !24
  %t310 = load %"compiler/mir:Range", ptr %l4
  %t314 = call { i64, [4 x i64] } @compiler_2feval_2ecompiler_2feval_3aMachine_2earg(ptr %v0, ptr %t308, i64 %t309, %"compiler/mir:Range" %t310, i64 1)
  store { i64, [4 x i64] } %t314, ptr %l193
  br label %bb77
bb77:
  %t315 = load ptr, ptr %l188, !tbaa !29
  %t316 = load i64, ptr %l189, !tbaa !24
  %t317 = load { i64, [4 x i64] }, ptr %l193
  %t318 = call i32 @compiler_2feval_2ecompiler_2feval_3aMachine_2eopType(ptr %v0, ptr %t315, i64 %t316, { i64, [4 x i64] } %t317)
  store i32 %t318, ptr %l194
  br label %bb78
bb78:
  %t319 = load ptr, ptr %l187, !tbaa !29
  %t320 = load i32, ptr %l194, !tbaa !23
  %t321 = call %"compiler/eval:Ptr" @compiler_2feval_2ecompiler_2feval_3aMachine_2etypeid(ptr %v0, ptr %t319, i32 %t320)
  store %"compiler/eval:Ptr" %t321, ptr %l195
  br label %bb79
bb79:
  %t322 = getelementptr %"compiler/eval:Ptr", ptr %l195, i32 0, i32 0
  %t323 = load i64, ptr %t322, !tbaa !24
  %t324 = load i64, ptr %l186, !tbaa !24
  %t326 = icmp eq i64 %t324, %t323
  br i1 %t326, label %bb80, label %bb81
bb80:
  store i64 1, ptr %l198, !tbaa !24
  br label %bb82
bb81:
  store i64 0, ptr %l198, !tbaa !24
  br label %bb82
bb82:
  call void @__olang_scope_close(ptr %s11)
  %t328 = load i64, ptr %l198, !tbaa !24
  store i64 %t328, ptr %rv
  br label %ret
bb83:
  %t329 = load i32, ptr %l2, !range !{i32 0, i32 52}
  %t331 = trunc i64 29 to i32
  %t332 = icmp eq i32 %t329, %t331
  br i1 %t332, label %bb84, label %bb85
bb84:
  br label %bb86
bb85:
  br label %bb89
bb86:
  %t334 = load ptr, ptr %l0, !tbaa !29
  store ptr %t334, ptr %l201, !tbaa !29
  %t335 = load i64, ptr %l1, !tbaa !24
  store i64 %t335, ptr %l202, !tbaa !24
  %t336 = load ptr, ptr %l0, !tbaa !29
  %t337 = load i64, ptr %l1, !tbaa !24
  %t338 = load { i64, [4 x i64] }, ptr %l5
  %t342 = call %"compiler/eval:Ptr" @compiler_2feval_2ecompiler_2feval_3aMachine_2eaddr(ptr %v0, ptr %t336, i64 %t337, { i64, [4 x i64] } %t338, i64 1)
  store %"compiler/eval:Ptr" %t342, ptr %l206
  br label %bb87
bb87:
  %t343 = load i32, ptr %l6, !tbaa !23
  %t344 = load ptr, ptr %l201, !tbaa !29
  %t345 = load i64, ptr %l202, !tbaa !24
  %t346 = load %"compiler/eval:Ptr", ptr %l206
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2eretire(ptr %v0, ptr %t344, i64 %t345, %"compiler/eval:Ptr" %t346, i32 %t343)
  br label %bb88
bb88:
  store i64 0, ptr %rv
  br label %ret
bb89:
  %t349 = load i32, ptr %l2, !range !{i32 0, i32 52}
  %t351 = trunc i64 24 to i32
  %t352 = icmp eq i32 %t349, %t351
  br i1 %t352, label %bb90, label %bb91
bb90:
  br label %bb100
bb91:
  %t354 = load i32, ptr %l2, !range !{i32 0, i32 52}
  %t356 = trunc i64 25 to i32
  %t357 = icmp eq i32 %t354, %t356
  br i1 %t357, label %bb92, label %bb93
bb92:
  br label %bb100
bb93:
  %t359 = load i32, ptr %l2, !range !{i32 0, i32 52}
  %t361 = trunc i64 26 to i32
  %t362 = icmp eq i32 %t359, %t361
  br i1 %t362, label %bb94, label %bb95
bb94:
  br label %bb100
bb95:
  %t364 = load i32, ptr %l2, !range !{i32 0, i32 52}
  %t366 = trunc i64 27 to i32
  %t367 = icmp eq i32 %t364, %t366
  br i1 %t367, label %bb96, label %bb97
bb96:
  br label %bb100
bb97:
  %t369 = load i32, ptr %l2, !range !{i32 0, i32 52}
  %t371 = trunc i64 28 to i32
  %t372 = icmp eq i32 %t369, %t371
  br i1 %t372, label %bb98, label %bb99
bb98:
  br label %bb100
bb99:
  br label %bb102
bb100:
  %t374 = load ptr, ptr %l0, !tbaa !29
  %t375 = load i64, ptr %l1, !tbaa !24
  %t376 = load i32, ptr %l2, !range !{i32 0, i32 52}
  %t377 = load %"compiler/mir:Range", ptr %l4
  %t378 = load i32, ptr %l6, !tbaa !23
  %t384 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2eatomic(ptr %v0, ptr %t374, i64 %t375, i32 %t376, %"compiler/mir:Range" %t377, i32 %t378)
  store i64 %t384, ptr %l224
  br label %bb101
bb101:
  %t385 = load i64, ptr %l224, !tbaa !24
  store i64 %t385, ptr %rv
  br label %ret
bb102:
  %t386 = load i32, ptr %l2, !range !{i32 0, i32 52}
  %t388 = trunc i64 37 to i32
  %t389 = icmp eq i32 %t386, %t388
  br i1 %t389, label %bb103, label %bb104
bb103:
  br label %bb105
bb104:
  br label %bb107
bb105:
  %t391 = load ptr, ptr %l0, !tbaa !29
  %t392 = load { i64, ptr }, ptr @G_2ecompiler_2feval_2eWhyNotModelled, !tbaa !27
  %t393 = load ptr, ptr @__olang_prog_scope
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2erefuse(ptr %v0, ptr %t393, ptr %t391, { i64, ptr } %t392)
  br label %bb106
bb106:
  store i64 0, ptr %rv
  br label %ret
bb107:
  %t397 = load i32, ptr %l2, !range !{i32 0, i32 52}
  %t399 = trunc i64 31 to i32
  %t400 = icmp eq i32 %t397, %t399
  br i1 %t400, label %bb108, label %bb109
bb108:
  br label %bb120
bb109:
  %t402 = load i32, ptr %l2, !range !{i32 0, i32 52}
  %t404 = trunc i64 32 to i32
  %t405 = icmp eq i32 %t402, %t404
  br i1 %t405, label %bb110, label %bb111
bb110:
  br label %bb120
bb111:
  %t407 = load i32, ptr %l2, !range !{i32 0, i32 52}
  %t409 = trunc i64 33 to i32
  %t410 = icmp eq i32 %t407, %t409
  br i1 %t410, label %bb112, label %bb113
bb112:
  br label %bb120
bb113:
  %t412 = load i32, ptr %l2, !range !{i32 0, i32 52}
  %t414 = trunc i64 36 to i32
  %t415 = icmp eq i32 %t412, %t414
  br i1 %t415, label %bb114, label %bb115
bb114:
  br label %bb120
bb115:
  %t417 = load i32, ptr %l2, !range !{i32 0, i32 52}
  %t419 = trunc i64 34 to i32
  %t420 = icmp eq i32 %t417, %t419
  br i1 %t420, label %bb116, label %bb117
bb116:
  br label %bb120
bb117:
  %t422 = load i32, ptr %l2, !range !{i32 0, i32 52}
  %t424 = trunc i64 35 to i32
  %t425 = icmp eq i32 %t422, %t424
  br i1 %t425, label %bb118, label %bb119
bb118:
  br label %bb120
bb119:
  br label %bb137
bb120:
  store i64 0, ptr %l21, !tbaa !24
  %t427 = load i32, ptr %l2, !range !{i32 0, i32 52}
  %t429 = trunc i64 34 to i32
  %t430 = icmp eq i32 %t427, %t429
  br i1 %t430, label %bb121, label %bb122
bb121:
  store i1 true, ptr %l244, !tbaa !21
  br label %bb123
bb122:
  %t432 = load i32, ptr %l2, !range !{i32 0, i32 52}
  %t434 = trunc i64 35 to i32
  %t435 = icmp eq i32 %t432, %t434
  store i1 %t435, ptr %l244, !tbaa !21
  br label %bb123
bb123:
  %t437 = load i1, ptr %l244, !tbaa !21
  br i1 %t437, label %bb124, label %bb125
bb124:
  %t438 = load ptr, ptr %l0, !tbaa !29
  store ptr %t438, ptr %l247, !tbaa !29
  %t439 = load i64, ptr %l1, !tbaa !24
  store i64 %t439, ptr %l248, !tbaa !24
  %t440 = load ptr, ptr %l0, !tbaa !29
  %t441 = load i64, ptr %l1, !tbaa !24
  %t442 = load %"compiler/mir:Range", ptr %l4
  %t446 = call { i64, [4 x i64] } @compiler_2feval_2ecompiler_2feval_3aMachine_2earg(ptr %v0, ptr %t440, i64 %t441, %"compiler/mir:Range" %t442, i64 1)
  store { i64, [4 x i64] } %t446, ptr %l252
  br label %bb126
bb125:
  br label %bb128
bb126:
  %t447 = load ptr, ptr %l247, !tbaa !29
  %t448 = load i64, ptr %l248, !tbaa !24
  %t449 = load { i64, [4 x i64] }, ptr %l252
  %t450 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2escalar(ptr %v0, ptr %t447, i64 %t448, { i64, [4 x i64] } %t449)
  store i64 %t450, ptr %l253
  br label %bb127
bb127:
  %t451 = load i64, ptr %l253, !tbaa !24
  store i64 %t451, ptr %l21, !tbaa !24
  br label %bb128
bb128:
  %t452 = load ptr, ptr %l0, !tbaa !29
  %t453 = load i64, ptr %l1, !tbaa !24
  %t454 = load { i64, [4 x i64] }, ptr %l5
  %t458 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2escalar(ptr %v0, ptr %t452, i64 %t453, { i64, [4 x i64] } %t454)
  store i64 %t458, ptr %l257
  br label %bb129
bb129:
  %t459 = load i64, ptr %l257, !tbaa !24
  store i64 %t459, ptr %l22, !tbaa !24
  %t460 = load ptr, ptr %l0, !tbaa !29
  %t462 = getelementptr %"compiler/eval:Machine", ptr %t460, i32 0, i32 19
  %t463 = load i1, ptr %t462, !tbaa !21
  br i1 %t463, label %bb130, label %bb131
bb130:
  store i64 0, ptr %rv
  br label %ret
bb131:
  br label %bb132
bb132:
  %t466 = load i32, ptr %l2, !range !{i32 0, i32 52}
  store i32 %t466, ptr %l261
  %t467 = load i64, ptr %l22, !tbaa !24
  store i64 %t467, ptr %l262, !tbaa !24
  %t468 = load ptr, ptr %l0, !tbaa !29
  %t469 = load i32, ptr %l6, !tbaa !23
  %t472 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2eibits(ptr %v0, ptr %t468, i32 %t469)
  store i64 %t472, ptr %l265
  br label %bb133
bb133:
  %t473 = load i64, ptr %l265, !tbaa !24
  %t474 = call i64 @compiler_2feval_2ebmask(i64 %t473)
  store i64 %t474, ptr %l266
  br label %bb134
bb134:
  %t475 = load i64, ptr %l262, !tbaa !24
  %t476 = load i64, ptr %l266, !tbaa !24
  %t477 = and i64 %t475, %t476
  store i64 %t477, ptr %l268, !tbaa !65
  %t479 = load ptr, ptr %l0, !tbaa !29
  %t480 = load i32, ptr %l6, !tbaa !23
  %t483 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2eibits(ptr %v0, ptr %t479, i32 %t480)
  store i64 %t483, ptr %l271
  br label %bb135
bb135:
  %t484 = load i64, ptr %l21, !tbaa !24
  %t485 = load i32, ptr %l261, !range !{i32 0, i32 52}
  %t486 = load i64, ptr %l268, !tbaa !65
  %t487 = load i64, ptr %l271, !tbaa !24
  %t489 = call i64 @compiler_2feval_2ebitOp(i32 %t485, i64 %t486, i64 %t487, i64 %t484)
  store i64 %t489, ptr %l273
  br label %bb136
bb136:
  %t490 = load i64, ptr %l273, !tbaa !24
  store i64 %t490, ptr %rv
  br label %ret
bb137:
  br i1 true, label %bb138, label %bb139
bb138:
  br label %bb140
bb139:
  br label %bb141
bb140:
  br label %bb142
bb141:
  call void @__olang_check_failed(ptr @olang_loc_c5a1577ee3e22d75_549c323efc9636a1)
  unreachable
bb142:
  %t491 = load ptr, ptr %l0, !tbaa !29
  %t492 = load i32, ptr %l6, !tbaa !23
  %t495 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2eshape(ptr %v0, ptr %t491, i32 %t492)
  store i64 %t495, ptr %l276
  br label %bb143
bb143:
  %t496 = load i64, ptr %l276, !tbaa !24
  store i64 %t496, ptr %l23, !tbaa !24
  %t497 = load ptr, ptr %l0, !tbaa !29
  %t498 = load i64, ptr %l1, !tbaa !24
  %t499 = load { i64, [4 x i64] }, ptr %l5
  %t503 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2escalar(ptr %v0, ptr %t497, i64 %t498, { i64, [4 x i64] } %t499)
  store i64 %t503, ptr %l280
  br label %bb144
bb144:
  %t504 = load i64, ptr %l280, !tbaa !24
  store i64 %t504, ptr %l24, !tbaa !24
  %t505 = load i32, ptr %l2, !range !{i32 0, i32 52}
  %t507 = trunc i64 0 to i32
  %t508 = icmp eq i32 %t505, %t507
  br i1 %t508, label %bb145, label %bb146
bb145:
  store i1 true, ptr %l283, !tbaa !21
  br label %bb147
bb146:
  %t510 = load i32, ptr %l2, !range !{i32 0, i32 52}
  %t512 = trunc i64 1 to i32
  %t513 = icmp eq i32 %t510, %t512
  store i1 %t513, ptr %l283, !tbaa !21
  br label %bb147
bb147:
  %t515 = load i1, ptr %l283, !tbaa !21
  br i1 %t515, label %bb148, label %bb149
bb148:
  store i1 true, ptr %l286, !tbaa !21
  br label %bb150
bb149:
  %t516 = load i32, ptr %l2, !range !{i32 0, i32 52}
  %t518 = trunc i64 2 to i32
  %t519 = icmp eq i32 %t516, %t518
  store i1 %t519, ptr %l286, !tbaa !21
  br label %bb150
bb150:
  %t521 = load i1, ptr %l286, !tbaa !21
  br i1 %t521, label %bb151, label %bb152
bb151:
  %t522 = load ptr, ptr %l0, !tbaa !29
  %t523 = load i32, ptr %l2, !range !{i32 0, i32 52}
  %t524 = load i64, ptr %l24, !tbaa !24
  %t525 = load i32, ptr %l6, !tbaa !23
  %t526 = load i64, ptr %l23, !tbaa !24
  %t532 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2eunary(ptr %v0, ptr %t522, i32 %t523, i64 %t524, i32 %t525, i64 %t526)
  store i64 %t532, ptr %l294
  br label %bb153
bb152:
  br label %bb154
bb153:
  %t533 = load i64, ptr %l294, !tbaa !24
  store i64 %t533, ptr %rv
  br label %ret
bb154:
  %t534 = load ptr, ptr %l0, !tbaa !29
  store ptr %t534, ptr %l295, !tbaa !29
  %t535 = load i64, ptr %l1, !tbaa !24
  store i64 %t535, ptr %l296, !tbaa !24
  %t536 = load ptr, ptr %l0, !tbaa !29
  %t537 = load i64, ptr %l1, !tbaa !24
  %t538 = load %"compiler/mir:Range", ptr %l4
  %t542 = call { i64, [4 x i64] } @compiler_2feval_2ecompiler_2feval_3aMachine_2earg(ptr %v0, ptr %t536, i64 %t537, %"compiler/mir:Range" %t538, i64 1)
  store { i64, [4 x i64] } %t542, ptr %l300
  br label %bb155
bb155:
  %t543 = load ptr, ptr %l295, !tbaa !29
  %t544 = load i64, ptr %l296, !tbaa !24
  %t545 = load { i64, [4 x i64] }, ptr %l300
  %t546 = call i32 @compiler_2feval_2ecompiler_2feval_3aMachine_2eopType(ptr %v0, ptr %t543, i64 %t544, { i64, [4 x i64] } %t545)
  store i32 %t546, ptr %l301
  br label %bb156
bb156:
  %t547 = load i32, ptr %l301, !tbaa !23
  store i32 %t547, ptr %l25, !tbaa !23
  %t548 = load ptr, ptr %l0, !tbaa !29
  store ptr %t548, ptr %l302, !tbaa !29
  %t549 = load i64, ptr %l1, !tbaa !24
  store i64 %t549, ptr %l303, !tbaa !24
  %t550 = load ptr, ptr %l0, !tbaa !29
  %t551 = load i64, ptr %l1, !tbaa !24
  %t552 = load %"compiler/mir:Range", ptr %l4
  %t556 = call { i64, [4 x i64] } @compiler_2feval_2ecompiler_2feval_3aMachine_2earg(ptr %v0, ptr %t550, i64 %t551, %"compiler/mir:Range" %t552, i64 1)
  store { i64, [4 x i64] } %t556, ptr %l307
  br label %bb157
bb157:
  %t557 = load ptr, ptr %l302, !tbaa !29
  %t558 = load i64, ptr %l303, !tbaa !24
  %t559 = load { i64, [4 x i64] }, ptr %l307
  %t560 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2escalar(ptr %v0, ptr %t557, i64 %t558, { i64, [4 x i64] } %t559)
  store i64 %t560, ptr %l308
  br label %bb158
bb158:
  %t561 = load i64, ptr %l308, !tbaa !24
  store i64 %t561, ptr %l26, !tbaa !24
  %t562 = load ptr, ptr %l0, !tbaa !29
  %t564 = getelementptr %"compiler/eval:Machine", ptr %t562, i32 0, i32 19
  %t565 = load i1, ptr %t564, !tbaa !21
  br i1 %t565, label %bb159, label %bb160
bb159:
  store i64 0, ptr %rv
  br label %ret
bb160:
  br label %bb161
bb161:
  %t568 = load i64, ptr %l23, !tbaa !24
  %t569 = load i64, ptr @G_2ecompiler_2feval_2evFloat, !tbaa !24
  %t572 = icmp eq i64 %t568, %t569
  br i1 %t572, label %bb162, label %bb163
bb162:
  store i1 true, ptr %l315, !tbaa !21
  br label %bb164
bb163:
  %t574 = load i64, ptr %l23, !tbaa !24
  %t575 = load i64, ptr @G_2ecompiler_2feval_2evInt, !tbaa !24
  %t578 = icmp eq i64 %t574, %t575
  store i1 %t578, ptr %l315, !tbaa !21
  br label %bb164
bb164:
  %t580 = load i1, ptr %l315, !tbaa !21
  br i1 %t580, label %bb165, label %bb166
bb165:
  store i1 true, ptr %l319, !tbaa !21
  br label %bb167
bb166:
  %t581 = load i64, ptr %l23, !tbaa !24
  %t582 = load i64, ptr @G_2ecompiler_2feval_2evUint, !tbaa !24
  %t585 = icmp eq i64 %t581, %t582
  store i1 %t585, ptr %l319, !tbaa !21
  br label %bb167
bb167:
  %t587 = load i1, ptr %l319, !tbaa !21
  br i1 %t587, label %bb168, label %bb169
bb168:
  store i1 true, ptr %l323, !tbaa !21
  br label %bb170
bb169:
  %t588 = load i64, ptr %l23, !tbaa !24
  %t589 = load i64, ptr @G_2ecompiler_2feval_2evBool, !tbaa !24
  %t592 = icmp eq i64 %t588, %t589
  store i1 %t592, ptr %l323, !tbaa !21
  br label %bb170
bb170:
  %t594 = load i1, ptr %l323, !tbaa !21
  br i1 %t594, label %bb171, label %bb172
bb171:
  %t595 = load ptr, ptr %l0, !tbaa !29
  %t596 = load i32, ptr %l2, !range !{i32 0, i32 52}
  %t597 = load i64, ptr %l24, !tbaa !24
  %t598 = load i64, ptr %l26, !tbaa !24
  %t599 = load i32, ptr %l6, !tbaa !23
  %t600 = load i32, ptr %l25, !tbaa !23
  %t601 = load i64, ptr %l23, !tbaa !24
  %t609 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2enumOp(ptr %v0, ptr %t595, i32 %t596, i64 %t597, i64 %t598, i32 %t599, i32 %t600, i64 %t601)
  store i64 %t609, ptr %l334
  br label %bb173
bb172:
  br label %bb174
bb173:
  %t610 = load i64, ptr %l334, !tbaa !24
  store i64 %t610, ptr %rv
  br label %ret
bb174:
  %t611 = load i32, ptr %l2, !range !{i32 0, i32 52}
  %t613 = trunc i64 13 to i32
  %t614 = icmp eq i32 %t611, %t613
  br i1 %t614, label %bb175, label %bb176
bb175:
  store i1 true, ptr %l337, !tbaa !21
  br label %bb177
bb176:
  %t616 = load i32, ptr %l2, !range !{i32 0, i32 52}
  %t618 = trunc i64 14 to i32
  %t619 = icmp eq i32 %t616, %t618
  store i1 %t619, ptr %l337, !tbaa !21
  br label %bb177
bb177:
  %t621 = load i1, ptr %l337, !tbaa !21
  br i1 %t621, label %bb178, label %bb179
bb178:
  %t622 = load ptr, ptr %l0, !tbaa !29
  %t623 = load i64, ptr %l1, !tbaa !24
  %t624 = load { i64, [4 x i64] }, ptr %l5
  %t628 = call %"compiler/eval:Ptr" @compiler_2feval_2ecompiler_2feval_3aMachine_2eaddr(ptr %v0, ptr %t622, i64 %t623, { i64, [4 x i64] } %t624, i64 1)
  store %"compiler/eval:Ptr" %t628, ptr %l343
  br label %bb180
bb179:
  br label %bb224
bb180:
  %t629 = load %"compiler/eval:Ptr", ptr %l343
  store %"compiler/eval:Ptr" %t629, ptr %l27
  %t630 = load ptr, ptr %l0, !tbaa !29
  store ptr %t630, ptr %l344, !tbaa !29
  %t631 = load i64, ptr %l1, !tbaa !24
  store i64 %t631, ptr %l345, !tbaa !24
  %t632 = load ptr, ptr %l0, !tbaa !29
  %t633 = load i64, ptr %l1, !tbaa !24
  %t634 = load %"compiler/mir:Range", ptr %l4
  %t638 = call { i64, [4 x i64] } @compiler_2feval_2ecompiler_2feval_3aMachine_2earg(ptr %v0, ptr %t632, i64 %t633, %"compiler/mir:Range" %t634, i64 1)
  store { i64, [4 x i64] } %t638, ptr %l349
  br label %bb181
bb181:
  %t639 = load ptr, ptr %l344, !tbaa !29
  %t640 = load i64, ptr %l345, !tbaa !24
  %t641 = load { i64, [4 x i64] }, ptr %l349
  %t642 = call %"compiler/eval:Ptr" @compiler_2feval_2ecompiler_2feval_3aMachine_2eaddr(ptr %v0, ptr %t639, i64 %t640, { i64, [4 x i64] } %t641, i64 2)
  store %"compiler/eval:Ptr" %t642, ptr %l350
  br label %bb182
bb182:
  %t643 = load %"compiler/eval:Ptr", ptr %l350
  store %"compiler/eval:Ptr" %t643, ptr %l28
  store i1 true, ptr %l29, !tbaa !21
  %t644 = load ptr, ptr %l0, !tbaa !29
  %t645 = load i32, ptr %l6, !tbaa !23
  %t648 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2esize(ptr %v0, ptr %t644, i32 %t645)
  store i64 %t648, ptr %l353
  br label %bb183
bb183:
  %t649 = load i64, ptr %l353, !tbaa !24
  store i64 %t649, ptr %l30, !tbaa !24
  store i64 0, ptr %l31, !tbaa !24
  %t650 = load i64, ptr %l30, !tbaa !24
  %t652 = add i64 %t650, 7
  %t654 = sdiv i64 %t652, 8
  store i64 %t654, ptr %l32, !tbaa !24
  store i64 1, ptr %l33, !tbaa !24
  %t656 = load i64, ptr %l32, !tbaa !24
  %t657 = load i64, ptr %l31, !tbaa !24
  %t660 = icmp sgt i64 %t656, %t657
  br i1 %t660, label %bb184, label %bb185
bb184:
  %t662 = load i64, ptr %l33, !tbaa !24
  %t664 = icmp sgt i64 %t662, 0
  br i1 %t664, label %bb186, label %bb187
bb185:
  store i64 0, ptr %l360, !tbaa !24
  br label %bb189
bb186:
  %t666 = load i64, ptr %l32, !tbaa !24
  %t667 = load i64, ptr %l31, !tbaa !24
  %t670 = sub i64 %t666, %t667
  %t671 = load i64, ptr %l33, !tbaa !24
  %t674 = add i64 %t670, %t671
  %t676 = sub i64 %t674, 1
  %t677 = load i64, ptr %l33, !tbaa !24
  %t680 = sdiv i64 %t676, %t677
  store i64 %t680, ptr %l363, !tbaa !24
  br label %bb188
bb187:
  store i64 0, ptr %l363, !tbaa !24
  br label %bb188
bb188:
  %t682 = load i64, ptr %l363, !tbaa !24
  store i64 %t682, ptr %l360, !tbaa !24
  br label %bb189
bb189:
  %t683 = load i64, ptr %l360, !tbaa !24
  store i64 %t683, ptr %l34, !tbaa !24
  store i64 0, ptr %l35, !tbaa !24
  br label %bb190
bb190:
  store %olang.scope zeroinitializer, ptr %s25
  %t684 = load i64, ptr %l35, !tbaa !24
  %t685 = load i64, ptr %l34, !tbaa !24
  %t688 = icmp slt i64 %t684, %t685
  %t690 = xor i1 %t688, true
  br i1 %t690, label %bb191, label %bb192
bb191:
  call void @__olang_scope_close(ptr %s25)
  br label %bb220
bb192:
  br label %bb193
bb193:
  %t692 = load i64, ptr %l31, !tbaa !24
  %t693 = load i64, ptr %l35, !tbaa !24
  %t694 = load i64, ptr %l33, !tbaa !24
  %t697 = mul i64 %t693, %t694
  %t700 = add i64 %t692, %t697
  store i64 %t700, ptr %l36, !tbaa !24
  %t702 = load i64, ptr %l30, !tbaa !24
  %t703 = load i64, ptr %l36, !tbaa !24
  %t705 = mul i64 8, %t703
  %t708 = sub i64 %t702, %t705
  %t710 = icmp sge i64 %t708, 8
  br i1 %t710, label %bb194, label %bb195
bb194:
  store i64 8, ptr %l386, !tbaa !24
  br label %bb196
bb195:
  %t712 = load i64, ptr %l30, !tbaa !24
  %t713 = load i64, ptr %l36, !tbaa !24
  %t715 = mul i64 8, %t713
  %t718 = sub i64 %t712, %t715
  store i64 %t718, ptr %l386, !tbaa !24
  br label %bb196
bb196:
  %t720 = load i64, ptr %l386, !tbaa !24
  store i64 %t720, ptr %l37, !tbaa !24
  %t721 = load i64, ptr %l37, !tbaa !24
  %t723 = icmp eq i64 %t721, 8
  br i1 %t723, label %bb197, label %bb198
bb197:
  %t725 = load ptr, ptr %l0, !tbaa !29
  store ptr %t725, ptr %l394, !tbaa !29
  %t726 = getelementptr %"compiler/eval:Ptr", ptr %l27, i32 0, i32 0
  %t727 = load i64, ptr %t726, !tbaa !24
  %t728 = getelementptr %"compiler/eval:Ptr", ptr %l27, i32 0, i32 1
  %t729 = load i64, ptr %t728, !tbaa !24
  %t730 = load i64, ptr %l36, !tbaa !24
  %t732 = mul i64 8, %t730
  %t735 = add i64 %t729, %t732
  %t738 = call %"compiler/eval:Ptr" @compiler_2feval_3aPtr_2ector(ptr %s25, i64 %t727, i64 %t735)
  store %"compiler/eval:Ptr" %t738, ptr %l400
  br label %bb199
bb198:
  %t739 = load ptr, ptr %l0, !tbaa !29
  store ptr %t739, ptr %l402, !tbaa !29
  %t740 = getelementptr %"compiler/eval:Ptr", ptr %l27, i32 0, i32 0
  %t741 = load i64, ptr %t740, !tbaa !24
  %t742 = getelementptr %"compiler/eval:Ptr", ptr %l27, i32 0, i32 1
  %t743 = load i64, ptr %t742, !tbaa !24
  %t744 = load i64, ptr %l36, !tbaa !24
  %t746 = mul i64 8, %t744
  %t749 = add i64 %t743, %t746
  %t752 = call %"compiler/eval:Ptr" @compiler_2feval_3aPtr_2ector(ptr %s25, i64 %t741, i64 %t749)
  store %"compiler/eval:Ptr" %t752, ptr %l408
  br label %bb201
bb199:
  %t753 = load ptr, ptr %l394, !tbaa !29
  %t754 = load %"compiler/eval:Ptr", ptr %l400
  %t755 = call %"compiler/eval:Ptr" @compiler_2feval_2ecompiler_2feval_3aMachine_2erdPtrOrBits(ptr %v0, ptr %t753, %"compiler/eval:Ptr" %t754)
  store %"compiler/eval:Ptr" %t755, ptr %l401
  br label %bb200
bb200:
  %t756 = load %"compiler/eval:Ptr", ptr %l401
  store %"compiler/eval:Ptr" %t756, ptr %l393
  br label %bb204
bb201:
  %t757 = load i64, ptr %l37, !tbaa !24
  %t758 = load ptr, ptr %l402, !tbaa !29
  %t759 = load %"compiler/eval:Ptr", ptr %l408
  %t761 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2erd(ptr %v0, ptr %t758, %"compiler/eval:Ptr" %t759, i64 %t757)
  store i64 %t761, ptr %l410
  br label %bb202
bb202:
  %t762 = load i64, ptr %l410, !tbaa !24
  %t763 = call %"compiler/eval:Ptr" @compiler_2feval_3aPtr_2ector(ptr %s25, i64 0, i64 %t762)
  store %"compiler/eval:Ptr" %t763, ptr %l411
  br label %bb203
bb203:
  %t764 = load %"compiler/eval:Ptr", ptr %l411
  store %"compiler/eval:Ptr" %t764, ptr %l393
  br label %bb204
bb204:
  %t765 = load %"compiler/eval:Ptr", ptr %l393
  store %"compiler/eval:Ptr" %t765, ptr %l38
  %t766 = load i64, ptr %l37, !tbaa !24
  %t768 = icmp eq i64 %t766, 8
  br i1 %t768, label %bb205, label %bb206
bb205:
  %t770 = load ptr, ptr %l0, !tbaa !29
  store ptr %t770, ptr %l415, !tbaa !29
  %t771 = getelementptr %"compiler/eval:Ptr", ptr %l28, i32 0, i32 0
  %t772 = load i64, ptr %t771, !tbaa !24
  %t773 = getelementptr %"compiler/eval:Ptr", ptr %l28, i32 0, i32 1
  %t774 = load i64, ptr %t773, !tbaa !24
  %t775 = load i64, ptr %l36, !tbaa !24
  %t777 = mul i64 8, %t775
  %t780 = add i64 %t774, %t777
  %t783 = call %"compiler/eval:Ptr" @compiler_2feval_3aPtr_2ector(ptr %s25, i64 %t772, i64 %t780)
  store %"compiler/eval:Ptr" %t783, ptr %l421
  br label %bb207
bb206:
  %t784 = load ptr, ptr %l0, !tbaa !29
  store ptr %t784, ptr %l423, !tbaa !29
  %t785 = getelementptr %"compiler/eval:Ptr", ptr %l28, i32 0, i32 0
  %t786 = load i64, ptr %t785, !tbaa !24
  %t787 = getelementptr %"compiler/eval:Ptr", ptr %l28, i32 0, i32 1
  %t788 = load i64, ptr %t787, !tbaa !24
  %t789 = load i64, ptr %l36, !tbaa !24
  %t791 = mul i64 8, %t789
  %t794 = add i64 %t788, %t791
  %t797 = call %"compiler/eval:Ptr" @compiler_2feval_3aPtr_2ector(ptr %s25, i64 %t786, i64 %t794)
  store %"compiler/eval:Ptr" %t797, ptr %l429
  br label %bb209
bb207:
  %t798 = load ptr, ptr %l415, !tbaa !29
  %t799 = load %"compiler/eval:Ptr", ptr %l421
  %t800 = call %"compiler/eval:Ptr" @compiler_2feval_2ecompiler_2feval_3aMachine_2erdPtrOrBits(ptr %v0, ptr %t798, %"compiler/eval:Ptr" %t799)
  store %"compiler/eval:Ptr" %t800, ptr %l422
  br label %bb208
bb208:
  %t801 = load %"compiler/eval:Ptr", ptr %l422
  store %"compiler/eval:Ptr" %t801, ptr %l414
  br label %bb212
bb209:
  %t802 = load i64, ptr %l37, !tbaa !24
  %t803 = load ptr, ptr %l423, !tbaa !29
  %t804 = load %"compiler/eval:Ptr", ptr %l429
  %t806 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2erd(ptr %v0, ptr %t803, %"compiler/eval:Ptr" %t804, i64 %t802)
  store i64 %t806, ptr %l431
  br label %bb210
bb210:
  %t807 = load i64, ptr %l431, !tbaa !24
  %t808 = call %"compiler/eval:Ptr" @compiler_2feval_3aPtr_2ector(ptr %s25, i64 0, i64 %t807)
  store %"compiler/eval:Ptr" %t808, ptr %l432
  br label %bb211
bb211:
  %t809 = load %"compiler/eval:Ptr", ptr %l432
  store %"compiler/eval:Ptr" %t809, ptr %l414
  br label %bb212
bb212:
  %t810 = load %"compiler/eval:Ptr", ptr %l414
  store %"compiler/eval:Ptr" %t810, ptr %l39
  %t811 = getelementptr %"compiler/eval:Ptr", ptr %l38, i32 0, i32 0
  %t812 = load i64, ptr %t811, !tbaa !24
  %t813 = getelementptr %"compiler/eval:Ptr", ptr %l39, i32 0, i32 0
  %t814 = load i64, ptr %t813, !tbaa !24
  %t817 = icmp ne i64 %t812, %t814
  br i1 %t817, label %bb213, label %bb214
bb213:
  store i1 true, ptr %l436, !tbaa !21
  br label %bb215
bb214:
  %t819 = getelementptr %"compiler/eval:Ptr", ptr %l38, i32 0, i32 1
  %t820 = load i64, ptr %t819, !tbaa !24
  %t821 = getelementptr %"compiler/eval:Ptr", ptr %l39, i32 0, i32 1
  %t822 = load i64, ptr %t821, !tbaa !24
  %t825 = icmp ne i64 %t820, %t822
  store i1 %t825, ptr %l436, !tbaa !21
  br label %bb215
bb215:
  %t827 = load i1, ptr %l436, !tbaa !21
  br i1 %t827, label %bb216, label %bb217
bb216:
  store i1 false, ptr %l29, !tbaa !21
  br label %bb218
bb217:
  br label %bb218
bb218:
  call void @__olang_scope_close(ptr %s25)
  br label %bb219
bb219:
  %t828 = load i64, ptr %l35, !tbaa !24
  %t830 = add i64 %t828, 1
  store i64 %t830, ptr %l35, !tbaa !24
  br label %bb190
bb220:
  %t832 = load i1, ptr %l29, !tbaa !21
  %t833 = load i32, ptr %l2, !range !{i32 0, i32 52}
  %t835 = trunc i64 13 to i32
  %t836 = icmp eq i32 %t833, %t835
  %t839 = icmp eq i1 %t832, %t836
  br i1 %t839, label %bb221, label %bb222
bb221:
  store i64 1, ptr %l446, !tbaa !24
  br label %bb223
bb222:
  store i64 0, ptr %l446, !tbaa !24
  br label %bb223
bb223:
  %t841 = load i64, ptr %l446, !tbaa !24
  store i64 %t841, ptr %rv
  br label %ret
bb224:
  %t842 = load ptr, ptr %l0, !tbaa !29
  %t844 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2enotModelled(ptr %v0, ptr %t842)
  store i64 %t844, ptr %l448
  br label %bb225
bb225:
  %t845 = load i64, ptr %l448, !tbaa !24
  store i64 %t845, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local void @compiler_2feval_2ecompiler_2feval_3aMachine_2erunCleanups(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca { i64, [5 x i64] }
  %l3 = alloca i64
  %l4 = alloca %"compiler/source:Span"
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l35 = alloca i64
  %l39 = alloca i1
  %l43 = alloca i64
  %l50 = alloca i64
  %l63 = alloca { i64, ptr }
  %l68 = alloca { i64, ptr }
  %l72 = alloca { i64, ptr }
  %l76 = alloca { i64, ptr }
  %t141 = alloca { i64, [5 x i64] }, align 8
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/eval:Machine", ptr %t1, i32 0, i32 17
  %t4 = load { i64, [5 x i64] }, ptr %t3
  store { i64, [5 x i64] } %t4, ptr %l2
  %t6 = load ptr, ptr %l0, !tbaa !29
  %t8 = getelementptr %"compiler/eval:Machine", ptr %t6, i32 0, i32 89
  %t9 = load i64, ptr %t8, !tbaa !24
  store i64 %t9, ptr %l3, !tbaa !24
  %t11 = load ptr, ptr %l0, !tbaa !29
  %t13 = getelementptr %"compiler/eval:Machine", ptr %t11, i32 0, i32 90
  %t14 = load %"compiler/source:Span", ptr %t13
  store %"compiler/source:Span" %t14, ptr %l4
  br label %bb1
bb1:
  %t16 = load ptr, ptr %l0, !tbaa !29
  %t18 = getelementptr %"compiler/eval:Machine", ptr %t16, i32 0, i32 56
  %t19 = load i64, ptr %t18, !tbaa !24
  %t23 = icmp sgt i64 %t19, %a1
  %t25 = xor i1 %t23, true
  br i1 %t25, label %bb2, label %bb3
bb2:
  br label %bb33
bb3:
  br label %bb4
bb4:
  %t27 = load ptr, ptr %l0, !tbaa !29
  %t29 = getelementptr %"compiler/eval:Machine", ptr %t27, i32 0, i32 56
  %t30 = load i64, ptr %t29, !tbaa !24
  %t32 = sub i64 %t30, 1
  store i64 %t32, ptr %l5, !tbaa !24
  %t34 = load ptr, ptr %l0, !tbaa !29
  %t36 = getelementptr %"compiler/eval:Machine", ptr %t34, i32 0, i32 63
  %t38 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %t36)
  store i64 %t38, ptr %l35
  br label %bb5
bb5:
  %t39 = load i64, ptr %l35, !tbaa !24
  %t40 = sub i64 %t39, 1
  store i64 %t40, ptr %l6, !tbaa !24
  %t42 = load i64, ptr %l6, !tbaa !24
  %t44 = icmp slt i64 %t42, 0
  br i1 %t44, label %bb6, label %bb7
bb6:
  store i1 true, ptr %l39, !tbaa !21
  br label %bb9
bb7:
  %t46 = load ptr, ptr %l0, !tbaa !29
  %t48 = getelementptr %"compiler/eval:Machine", ptr %t46, i32 0, i32 63
  %t49 = load i64, ptr %l6, !tbaa !24
  %t52 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t48, i64 %t49)
  store i64 %t52, ptr %l43
  br label %bb8
bb8:
  %t53 = load i64, ptr %l5, !tbaa !24
  %t54 = load i64, ptr %l43, !tbaa !24
  %t56 = icmp ne i64 %t54, %t53
  store i1 %t56, ptr %l39, !tbaa !21
  br label %bb9
bb9:
  %t58 = load i1, ptr %l39, !tbaa !21
  br i1 %t58, label %bb10, label %bb11
bb10:
  %t59 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2edropFrame(ptr %v0, ptr %t59)
  br label %bb12
bb11:
  br label %bb13
bb12:
  br label %bb32
bb13:
  %t61 = load ptr, ptr %l0, !tbaa !29
  %t63 = getelementptr %"compiler/eval:Machine", ptr %t61, i32 0, i32 65
  %t64 = load i64, ptr %l6, !tbaa !24
  %t67 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t63, i64 %t64)
  store i64 %t67, ptr %l50
  br label %bb14
bb14:
  %t68 = load i64, ptr %l50, !tbaa !24
  store i64 %t68, ptr %l7, !tbaa !24
  %t69 = load ptr, ptr %l0, !tbaa !29
  %t71 = getelementptr %"compiler/eval:Machine", ptr %t69, i32 0, i32 63
  %t72 = load i64, ptr %l6, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eTruncate_3cI64_3e(ptr %v0, ptr %t71, i64 %t72)
  br label %bb15
bb15:
  %t75 = load ptr, ptr %l0, !tbaa !29
  %t77 = getelementptr %"compiler/eval:Machine", ptr %t75, i32 0, i32 64
  %t78 = load i64, ptr %l6, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eTruncate_3cI64_3e(ptr %v0, ptr %t77, i64 %t78)
  br label %bb16
bb16:
  %t81 = load ptr, ptr %l0, !tbaa !29
  %t83 = getelementptr %"compiler/eval:Machine", ptr %t81, i32 0, i32 65
  %t84 = load i64, ptr %l6, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eTruncate_3cI64_3e(ptr %v0, ptr %t83, i64 %t84)
  br label %bb17
bb17:
  %t87 = load ptr, ptr %l0, !tbaa !29
  %t89 = getelementptr %"compiler/eval:Machine", ptr %t87, i32 0, i32 59
  %t90 = load ptr, ptr %l0, !tbaa !29
  %t92 = getelementptr %"compiler/eval:Machine", ptr %t90, i32 0, i32 55
  %t93 = load { i64, ptr }, ptr %t92, !tbaa !27
  store { i64, ptr } %t93, ptr %l63, !tbaa !27
  %t94 = load i64, ptr %l5, !tbaa !24
  %t96 = getelementptr { i64, ptr }, ptr %l63, i32 0, i32 1
  %t97 = load ptr, ptr %t96, !tbaa !27
  %t98 = getelementptr %"compiler/eval:frame", ptr %t97, i64 %t94
  %t99 = getelementptr %"compiler/eval:frame", ptr %t98, i32 0, i32 9
  %t100 = load i64, ptr %t99, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eTruncate_3cI64_3e(ptr %v0, ptr %t89, i64 %t100)
  br label %bb18
bb18:
  %t103 = load i64, ptr %l7, !tbaa !24
  %t105 = load ptr, ptr %l0, !tbaa !29
  %t107 = getelementptr %"compiler/eval:Machine", ptr %t105, i32 0, i32 55
  %t108 = load { i64, ptr }, ptr %t107, !tbaa !27
  store { i64, ptr } %t108, ptr %l68, !tbaa !27
  %t109 = load i64, ptr %l5, !tbaa !24
  %t113 = getelementptr { i64, ptr }, ptr %l68, i32 0, i32 1
  %t114 = load ptr, ptr %t113, !tbaa !27
  %t115 = getelementptr %"compiler/eval:frame", ptr %t114, i64 %t109
  %t116 = getelementptr %"compiler/eval:frame", ptr %t115, i32 0, i32 1
  store i64 %t103, ptr %t116, !tbaa !24
  %t117 = load ptr, ptr %l0, !tbaa !29
  %t119 = getelementptr %"compiler/eval:Machine", ptr %t117, i32 0, i32 55
  %t120 = load { i64, ptr }, ptr %t119, !tbaa !27
  store { i64, ptr } %t120, ptr %l72, !tbaa !27
  %t121 = load i64, ptr %l5, !tbaa !24
  %t125 = getelementptr { i64, ptr }, ptr %l72, i32 0, i32 1
  %t126 = load ptr, ptr %t125, !tbaa !27
  %t127 = getelementptr %"compiler/eval:frame", ptr %t126, i64 %t121
  %t128 = getelementptr %"compiler/eval:frame", ptr %t127, i32 0, i32 2
  store i64 0, ptr %t128, !tbaa !24
  %t129 = load ptr, ptr %l0, !tbaa !29
  %t131 = getelementptr %"compiler/eval:Machine", ptr %t129, i32 0, i32 55
  %t132 = load { i64, ptr }, ptr %t131, !tbaa !27
  store { i64, ptr } %t132, ptr %l76, !tbaa !27
  %t133 = load i64, ptr %l5, !tbaa !24
  %t137 = getelementptr { i64, ptr }, ptr %l76, i32 0, i32 1
  %t138 = load ptr, ptr %t137, !tbaa !27
  %t139 = getelementptr %"compiler/eval:frame", ptr %t138, i64 %t133
  %t140 = getelementptr %"compiler/eval:frame", ptr %t139, i32 0, i32 10
  store i1 false, ptr %t140, !tbaa !21
  store { i64, [5 x i64] } zeroinitializer, ptr %t141
  %t142 = getelementptr { i64, [5 x i64] }, ptr %t141, i32 0, i32 0
  store i64 0, ptr %t142
  %t143 = load { i64, [5 x i64] }, ptr %t141
  %t145 = load ptr, ptr %l0, !tbaa !29
  %t149 = getelementptr %"compiler/eval:Machine", ptr %t145, i32 0, i32 19
  store i1 false, ptr %t149, !tbaa !21
  %t150 = load ptr, ptr %l0, !tbaa !29
  %t154 = getelementptr %"compiler/eval:Machine", ptr %t150, i32 0, i32 66
  store i1 false, ptr %t154, !tbaa !21
  %t155 = load ptr, ptr %l0, !tbaa !29
  %t159 = getelementptr %"compiler/eval:Machine", ptr %t155, i32 0, i32 17
  store { i64, [5 x i64] } %t143, ptr %t159
  %t160 = load ptr, ptr %l0, !tbaa !29
  %t161 = load i64, ptr %l5, !tbaa !24
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2eloop(ptr %v0, ptr %t160, i64 %t161)
  br label %bb19
bb19:
  %t164 = load ptr, ptr %l0, !tbaa !29
  %t166 = getelementptr %"compiler/eval:Machine", ptr %t164, i32 0, i32 66
  %t167 = load i1, ptr %t166, !tbaa !21
  %t169 = xor i1 %t167, true
  br i1 %t169, label %bb20, label %bb21
bb20:
  %t171 = load ptr, ptr %l0, !tbaa !29
  %t173 = getelementptr %"compiler/eval:Machine", ptr %t171, i32 0, i32 17
  %t174 = load { i64, [5 x i64] }, ptr %t173
  %t178 = extractvalue { i64, [5 x i64] } %t174, 0
  %t179 = icmp eq i64 %t178, 2
  br i1 %t179, label %bb22, label %bb23
bb21:
  br label %bb31
bb22:
  br label %bb24
bb23:
  br label %bb25
bb24:
  %t181 = load ptr, ptr %l0, !tbaa !29
  %t183 = getelementptr %"compiler/eval:Machine", ptr %t181, i32 0, i32 17
  %t184 = load { i64, [5 x i64] }, ptr %t183
  store { i64, [5 x i64] } %t184, ptr %l2
  br label %bb33
bb25:
  br i1 true, label %bb26, label %bb27
bb26:
  br label %bb28
bb27:
  br label %bb29
bb28:
  br label %bb30
bb29:
  call void @__olang_check_failed(ptr @olang_loc_26a77dbb944b4c43_3cbd97c51474f5af)
  unreachable
bb30:
  br label %bb31
bb31:
  %t186 = load ptr, ptr %l0, !tbaa !29
  %t188 = getelementptr %"compiler/eval:Machine", ptr %t186, i32 0, i32 66
  store i1 false, ptr %t188, !tbaa !21
  br label %bb32
bb32:
  br label %bb1
bb33:
  %t189 = load { i64, [5 x i64] }, ptr %l2
  %t191 = load ptr, ptr %l0, !tbaa !29
  %t195 = getelementptr %"compiler/eval:Machine", ptr %t191, i32 0, i32 19
  store i1 true, ptr %t195, !tbaa !21
  %t196 = load ptr, ptr %l0, !tbaa !29
  %t200 = getelementptr %"compiler/eval:Machine", ptr %t196, i32 0, i32 17
  store { i64, [5 x i64] } %t189, ptr %t200
  %t201 = load i64, ptr %l3, !tbaa !24
  %t203 = load %"compiler/source:Span", ptr %l4
  %t205 = load ptr, ptr %l0, !tbaa !29
  %t209 = getelementptr %"compiler/eval:Machine", ptr %t205, i32 0, i32 89
  store i64 %t201, ptr %t209, !tbaa !24
  %t210 = load ptr, ptr %l0, !tbaa !29
  %t214 = getelementptr %"compiler/eval:Machine", ptr %t210, i32 0, i32 90
  store %"compiler/source:Span" %t203, ptr %t214
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2feval_2ecompiler_2feval_3aMachine_2erunDtor(ptr %v0, ptr %a0, i64 %a1, i32 %a2, %"compiler/eval:Ptr" %a3) #0 {
entry:
  %l0 = alloca ptr
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca ptr
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca i64
  %l12 = alloca i64
  %l13 = alloca i64
  %l14 = alloca { i64, [2 x i64] }
  %l18 = alloca { i64, [2 x i64] }
  %l19 = alloca i32
  %l22 = alloca i64
  %l26 = alloca i64
  %l27 = alloca i32
  %l33 = alloca i64
  %l39 = alloca ptr
  %l42 = alloca i64
  %l44 = alloca ptr
  %l45 = alloca ptr
  %l46 = alloca i64
  %l49 = alloca i32
  %l50 = alloca %"compiler/eval:Ptr"
  %l54 = alloca i64
  %l58 = alloca i64
  %l61 = alloca i64
  %l80 = alloca { i64, ptr }
  %l82 = alloca { i64, ptr }
  %l86 = alloca i64
  %l90 = alloca { i64, [1 x i64] }
  %l93 = alloca i64
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/eval:Machine", ptr %t1, i32 0, i32 34
  %t7 = call { i32, { i64, [2 x i64] } } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId_2c_20compile_Ha5986096190b27059e1b255ecbd90571(ptr %v0, ptr %t3, i32 %a2)
  %t8 = extractvalue { i32, { i64, [2 x i64] } } %t7, 1
  %t9 = extractvalue { i32, { i64, [2 x i64] } } %t7, 0
  store i32 %t9, ptr %l19
  %t10 = icmp ne i32 %t9, 0
  br i1 %t10, label %bb2, label %ok.11, !prof !99
ok.11:
  store { i64, [2 x i64] } %t8, ptr %l18
  br label %bb1
bb1:
  %t12 = load { i64, [2 x i64] }, ptr %l18
  store { i64, [2 x i64] } %t12, ptr %l14
  br label %bb5
bb2:
  br label %bb3
bb3:
  %t13 = load ptr, ptr %l0, !tbaa !29
  %t14 = load { i64, ptr }, ptr @G_2ecompiler_2feval_2eWhyNoBody, !tbaa !27
  %t15 = load ptr, ptr @__olang_prog_scope
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2erefuse(ptr %v0, ptr %t15, ptr %t13, { i64, ptr } %t14)
  br label %bb4
bb4:
  br label %ret
bb5:
  %t18 = load { i64, [2 x i64] }, ptr %l14
  %t19 = load ptr, ptr %l0, !tbaa !29
  %t21 = getelementptr %"compiler/eval:Machine", ptr %t19, i32 0, i32 27
  %t25 = call { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fmir_3aFnKey_2c_20I64_3e_2eG_H6ffe2eb17daa971b2c9d564ad72358b1(ptr %v0, ptr %t21, { i64, [2 x i64] } %t18)
  %t26 = extractvalue { i32, i64 } %t25, 1
  %t27 = extractvalue { i32, i64 } %t25, 0
  store i32 %t27, ptr %l27
  %t28 = icmp ne i32 %t27, 0
  br i1 %t28, label %bb7, label %ok.29, !prof !99
ok.29:
  store i64 %t26, ptr %l26
  br label %bb6
bb6:
  %t30 = load i64, ptr %l26, !tbaa !24
  store i64 %t30, ptr %l22, !tbaa !24
  br label %bb10
bb7:
  br label %bb8
bb8:
  %t31 = load ptr, ptr %l0, !tbaa !29
  %t32 = load { i64, ptr }, ptr @G_2ecompiler_2feval_2eWhyNoBody, !tbaa !27
  %t33 = load ptr, ptr @__olang_prog_scope
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2erefuse(ptr %v0, ptr %t33, ptr %t31, { i64, ptr } %t32)
  br label %bb9
bb9:
  br label %ret
bb10:
  %t36 = load i64, ptr %l22, !tbaa !24
  store i64 %t36, ptr %l5, !tbaa !24
  %t37 = load ptr, ptr %l0, !tbaa !29
  %t38 = load i64, ptr %l5, !tbaa !24
  %t39 = load i64, ptr @G_2ecompiler_2feval_2erDtor, !tbaa !24
  %t43 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2epushFrame(ptr %v0, ptr %t37, i64 %t38, i64 %t39, i64 0)
  store i64 %t43, ptr %l33
  br label %bb11
bb11:
  %t44 = load i64, ptr %l33, !tbaa !24
  store i64 %t44, ptr %l6, !tbaa !24
  %t45 = load i64, ptr %l6, !tbaa !24
  %t47 = icmp slt i64 %t45, 0
  br i1 %t47, label %bb12, label %bb13
bb12:
  br label %ret
bb13:
  br label %bb14
bb14:
  %t49 = load ptr, ptr %l0, !tbaa !29
  %t51 = getelementptr %"compiler/eval:Machine", ptr %t49, i32 0, i32 22
  %t52 = load i64, ptr %l5, !tbaa !24
  %t55 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aFn_26_3e_2eAt_3ccompiler_2fmir_3aFn_26_3e(ptr %v0, ptr %v0, ptr %t51, i64 %t52)
  store ptr %t55, ptr %l39
  br label %bb15
bb15:
  %t56 = load ptr, ptr %l39, !tbaa !29
  store ptr %t56, ptr %l7, !tbaa !29
  %t57 = load ptr, ptr %l7, !tbaa !29
  %t59 = getelementptr %"compiler/mir:Fn", ptr %t57, i32 0, i32 4
  %t61 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aLocalId_3e_2eLen_3ccompiler_2fmir_3aLocalId_3e(ptr %v0, ptr %t59)
  store i64 %t61, ptr %l42
  br label %bb16
bb16:
  %t62 = load i64, ptr %l42, !tbaa !24
  %t63 = icmp sgt i64 %t62, 0
  br i1 %t63, label %bb17, label %bb18
bb17:
  %t65 = load ptr, ptr %l0, !tbaa !29
  store ptr %t65, ptr %l44, !tbaa !29
  %t66 = load ptr, ptr %l0, !tbaa !29
  store ptr %t66, ptr %l45, !tbaa !29
  %t67 = load i64, ptr %l6, !tbaa !24
  store i64 %t67, ptr %l46, !tbaa !24
  %t68 = load ptr, ptr %l7, !tbaa !29
  %t70 = getelementptr %"compiler/mir:Fn", ptr %t68, i32 0, i32 4
  %t72 = call i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aLocalId_3e_2eAt_3ccompiler_2fmir_3aLocalId_3e(ptr %v0, ptr %t70, i64 0)
  store i32 %t72, ptr %l49
  br label %bb19
bb18:
  br label %bb22
bb19:
  %t73 = load ptr, ptr %l45, !tbaa !29
  %t74 = load i64, ptr %l46, !tbaa !24
  %t75 = load i32, ptr %l49, !tbaa !23
  %t76 = call %"compiler/eval:Ptr" @compiler_2feval_2ecompiler_2feval_3aMachine_2elocalPtr(ptr %v0, ptr %t73, i64 %t74, i32 %t75)
  store %"compiler/eval:Ptr" %t76, ptr %l50
  br label %bb20
bb20:
  %t78 = load ptr, ptr %l44, !tbaa !29
  %t79 = load %"compiler/eval:Ptr", ptr %l50
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2ewrPtr(ptr %v0, ptr %t78, %"compiler/eval:Ptr" %t79, %"compiler/eval:Ptr" %a3)
  br label %bb21
bb21:
  br label %bb22
bb22:
  store i64 0, ptr %l8, !tbaa !24
  %t81 = load ptr, ptr %l7, !tbaa !29
  %t83 = getelementptr %"compiler/mir:Fn", ptr %t81, i32 0, i32 6
  %t85 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aVarKind_3e_2eLen_3ccompiler_2fmir_3aVarKind_3e(ptr %v0, ptr %t83)
  store i64 %t85, ptr %l54
  br label %bb23
bb23:
  %t86 = load i64, ptr %l54, !tbaa !24
  store i64 %t86, ptr %l9, !tbaa !24
  store i64 1, ptr %l10, !tbaa !24
  %t87 = load i64, ptr %l9, !tbaa !24
  %t88 = load i64, ptr %l8, !tbaa !24
  %t91 = icmp sgt i64 %t87, %t88
  br i1 %t91, label %bb24, label %bb25
bb24:
  %t93 = load i64, ptr %l10, !tbaa !24
  %t95 = icmp sgt i64 %t93, 0
  br i1 %t95, label %bb26, label %bb27
bb25:
  store i64 0, ptr %l58, !tbaa !24
  br label %bb29
bb26:
  %t97 = load i64, ptr %l9, !tbaa !24
  %t98 = load i64, ptr %l8, !tbaa !24
  %t101 = sub i64 %t97, %t98
  %t102 = load i64, ptr %l10, !tbaa !24
  %t105 = add i64 %t101, %t102
  %t107 = sub i64 %t105, 1
  %t108 = load i64, ptr %l10, !tbaa !24
  %t111 = sdiv i64 %t107, %t108
  store i64 %t111, ptr %l61, !tbaa !24
  br label %bb28
bb27:
  store i64 0, ptr %l61, !tbaa !24
  br label %bb28
bb28:
  %t113 = load i64, ptr %l61, !tbaa !24
  store i64 %t113, ptr %l58, !tbaa !24
  br label %bb29
bb29:
  %t114 = load i64, ptr %l58, !tbaa !24
  store i64 %t114, ptr %l11, !tbaa !24
  store i64 0, ptr %l12, !tbaa !24
  br label %bb30
bb30:
  %t115 = load i64, ptr %l12, !tbaa !24
  %t116 = load i64, ptr %l11, !tbaa !24
  %t119 = icmp slt i64 %t115, %t116
  %t121 = xor i1 %t119, true
  br i1 %t121, label %bb31, label %bb32
bb31:
  br label %bb39
bb32:
  br label %bb33
bb33:
  %t123 = load i64, ptr %l8, !tbaa !24
  %t124 = load i64, ptr %l12, !tbaa !24
  %t125 = load i64, ptr %l10, !tbaa !24
  %t128 = mul i64 %t124, %t125
  %t131 = add i64 %t123, %t128
  store i64 %t131, ptr %l13, !tbaa !24
  %t133 = load ptr, ptr %l0, !tbaa !29
  %t135 = getelementptr %"compiler/eval:Machine", ptr %t133, i32 0, i32 57
  %t136 = load { i64, ptr }, ptr %t135, !tbaa !27
  store { i64, ptr } %t136, ptr %l80, !tbaa !27
  %t137 = load ptr, ptr %l0, !tbaa !29
  %t139 = getelementptr %"compiler/eval:Machine", ptr %t137, i32 0, i32 55
  %t140 = load { i64, ptr }, ptr %t139, !tbaa !27
  store { i64, ptr } %t140, ptr %l82, !tbaa !27
  %t141 = load i64, ptr %l6, !tbaa !24
  %t143 = getelementptr { i64, ptr }, ptr %l82, i32 0, i32 1
  %t144 = load ptr, ptr %t143, !tbaa !27
  %t145 = getelementptr %"compiler/eval:frame", ptr %t144, i64 %t141
  %t146 = getelementptr %"compiler/eval:frame", ptr %t145, i32 0, i32 5
  %t147 = load i64, ptr %t146, !tbaa !24
  %t148 = load i64, ptr %l13, !tbaa !24
  %t151 = add i64 %t147, %t148
  store i64 %t151, ptr %l86, !tbaa !24
  %t152 = load ptr, ptr %l7, !tbaa !29
  %t154 = getelementptr %"compiler/mir:Fn", ptr %t152, i32 0, i32 6
  %t155 = load i64, ptr %l13, !tbaa !24
  %t158 = call { i64, [1 x i64] } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aVarKind_3e_2eAt_3ccompiler_2fmir_3aVarKind_3e(ptr %v0, ptr %t154, i64 %t155)
  store { i64, [1 x i64] } %t158, ptr %l90
  br label %bb34
bb34:
  %t159 = load { i64, [1 x i64] }, ptr %l90
  %t161 = extractvalue { i64, [1 x i64] } %t159, 0
  %t162 = icmp eq i64 %t161, 5
  br i1 %t162, label %bb35, label %bb36
bb35:
  store i64 0, ptr %l93, !tbaa !24
  br label %bb37
bb36:
  store i64 %a1, ptr %l93, !tbaa !24
  br label %bb37
bb37:
  %t166 = load i64, ptr %l93, !tbaa !24
  %t167 = load i64, ptr %l86, !tbaa !24
  %t168 = getelementptr { i64, ptr }, ptr %l80, i32 0, i32 1
  %t169 = load ptr, ptr %t168, !tbaa !27
  %t170 = getelementptr i64, ptr %t169, i64 %t167
  store i64 %t166, ptr %t170, !tbaa !34
  br label %bb38
bb38:
  %t171 = load i64, ptr %l12, !tbaa !24
  %t173 = add i64 %t171, 1
  store i64 %t173, ptr %l12, !tbaa !24
  br label %bb30
bb39:
  br label %ret
ret:
  ret void
}

define dso_local i1 @compiler_2feval_2ecompiler_2feval_3aMachine_2eruntimeFn(ptr %v0, ptr %v1, ptr %a0, i64 %a1, { i64, ptr } %a2, %"compiler/mir:Range" %a3, i32 %a4, %"compiler/eval:Ptr" %a5, i1 %a6) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca { i64, ptr }
  %l8 = alloca { ptr, ptr }
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca { i64, ptr }
  %l12 = alloca { i64, ptr }
  %l13 = alloca i64
  %l14 = alloca i64
  %l15 = alloca i64
  %l16 = alloca i64
  %l17 = alloca i64
  %l18 = alloca i64
  %l19 = alloca { i64, ptr }
  %l20 = alloca [3 x i64]
  %l21 = alloca [24 x i8]
  %l22 = alloca i64
  %l23 = alloca i64
  %l24 = alloca i64
  %l25 = alloca i64
  %l26 = alloca i64
  %l27 = alloca i64
  %l28 = alloca { i64, ptr }
  %l29 = alloca { i64, ptr }
  %l30 = alloca { i64, ptr }
  %l31 = alloca { i64, ptr }
  %l32 = alloca { i64, ptr }
  %l33 = alloca i64
  %l34 = alloca i64
  %l35 = alloca i64
  %l36 = alloca i64
  %l37 = alloca i64
  %l38 = alloca i64
  %l39 = alloca { i64, ptr }
  %l40 = alloca { i64, ptr }
  %l41 = alloca i8
  %l42 = alloca i64
  %l43 = alloca i64
  %l44 = alloca i64
  %l45 = alloca i64
  %l46 = alloca i64
  %l47 = alloca i64
  %l48 = alloca { i64, ptr }
  %l49 = alloca { i64, ptr }
  %l50 = alloca i64
  %l51 = alloca i64
  %l52 = alloca i64
  %l53 = alloca i64
  %l54 = alloca i64
  %l55 = alloca i64
  %l56 = alloca { i64, ptr }
  %l57 = alloca i64
  %l58 = alloca %"std/prelude/text:StringBuilder"
  %l59 = alloca i64
  %l60 = alloca i64
  %l61 = alloca i64
  %l62 = alloca i64
  %l63 = alloca i64
  %l65 = alloca i32
  %l68 = alloca ptr
  %l73 = alloca i1
  %l76 = alloca i64
  %l78 = alloca i1
  %l79 = alloca ptr
  %l80 = alloca i64
  %l82 = alloca { i64, [4 x i64] }
  %l83 = alloca i64
  %l86 = alloca i1
  %l87 = alloca i64
  %l90 = alloca i64
  %l95 = alloca { i64, ptr }
  %l97 = alloca i64
  %l105 = alloca i64
  %l108 = alloca i64
  %l127 = alloca { i64, ptr }
  %l133 = alloca ptr
  %l134 = alloca i64
  %l136 = alloca { i64, [4 x i64] }
  %l137 = alloca { i64, ptr }
  %l138 = alloca ptr
  %l139 = alloca i64
  %l141 = alloca { i64, [4 x i64] }
  %l142 = alloca i64
  %l146 = alloca i1
  %l147 = alloca ptr
  %l148 = alloca i64
  %l150 = alloca { i64, [4 x i64] }
  %l151 = alloca i64
  %l154 = alloca ptr
  %l155 = alloca i64
  %l157 = alloca { i64, [4 x i64] }
  %l158 = alloca { i64, ptr }
  %l162 = alloca i64
  %l163 = alloca ptr
  %l164 = alloca i64
  %l166 = alloca { i64, [4 x i64] }
  %l171 = alloca i1
  %l176 = alloca i1
  %l178 = alloca ptr
  %l179 = alloca i64
  %l181 = alloca { i64, [4 x i64] }
  %l182 = alloca { i64, ptr }
  %l186 = alloca i32
  %l191 = alloca i64
  %l194 = alloca i64
  %l218 = alloca i64
  %l224 = alloca ptr
  %l225 = alloca i64
  %l227 = alloca { i64, [4 x i64] }
  %l231 = alloca i1
  %l233 = alloca i1
  %l234 = alloca ptr
  %l235 = alloca i64
  %l237 = alloca { i64, [4 x i64] }
  %l238 = alloca i64
  %l241 = alloca ptr
  %l242 = alloca i64
  %l244 = alloca { i64, [4 x i64] }
  %l245 = alloca { i64, ptr }
  %l247 = alloca i1
  %l248 = alloca i64
  %l253 = alloca i64
  %l258 = alloca i64
  %l259 = alloca ptr
  %l260 = alloca i64
  %l262 = alloca { i64, [4 x i64] }
  %l267 = alloca i1
  %l268 = alloca ptr
  %l269 = alloca i64
  %l271 = alloca { i64, [4 x i64] }
  %l272 = alloca { i64, ptr }
  %l273 = alloca ptr
  %l274 = alloca i64
  %l276 = alloca { i64, [4 x i64] }
  %l277 = alloca i64
  %l278 = alloca ptr
  %l279 = alloca i64
  %l281 = alloca { i64, [4 x i64] }
  %l282 = alloca i64
  %l283 = alloca i32
  %l284 = alloca ptr
  %l285 = alloca i64
  %l287 = alloca { i64, [4 x i64] }
  %l288 = alloca i64
  %l289 = alloca i32
  %l290 = alloca ptr
  %l291 = alloca i64
  %l293 = alloca { i64, [4 x i64] }
  %l294 = alloca i64
  %l295 = alloca i32
  %l296 = alloca ptr
  %l297 = alloca i64
  %l299 = alloca { i64, [4 x i64] }
  %l300 = alloca { i64, ptr }
  %l301 = alloca i32
  %l304 = alloca i1
  %l305 = alloca ptr
  %l306 = alloca i64
  %l308 = alloca { i64, [4 x i64] }
  %l309 = alloca { i64, ptr }
  %l310 = alloca ptr
  %l311 = alloca i64
  %l313 = alloca { i64, [4 x i64] }
  %l314 = alloca { i64, ptr }
  %l315 = alloca ptr
  %l316 = alloca i64
  %l318 = alloca { i64, [4 x i64] }
  %l319 = alloca i64
  %l320 = alloca i32
  %l323 = alloca i1
  %l324 = alloca ptr
  %l325 = alloca i64
  %l327 = alloca { i64, [4 x i64] }
  %l328 = alloca { i64, ptr }
  %l330 = alloca i32
  %l332 = alloca ptr
  %l333 = alloca i64
  %l335 = alloca { i64, [4 x i64] }
  %l340 = alloca i1
  %l342 = alloca i1
  %l343 = alloca ptr
  %l344 = alloca i64
  %l346 = alloca { i64, [4 x i64] }
  %l347 = alloca { i64, ptr }
  %l350 = alloca i64
  %l359 = alloca i64
  %l362 = alloca i64
  %l391 = alloca i64
  %l396 = alloca ptr
  %l397 = alloca i64
  %l399 = alloca { i64, [4 x i64] }
  %l400 = alloca { i64, ptr }
  %l401 = alloca ptr
  %l402 = alloca i64
  %l404 = alloca { i64, [4 x i64] }
  %l405 = alloca { i64, ptr }
  %l406 = alloca ptr
  %l407 = alloca i64
  %l409 = alloca { i64, [4 x i64] }
  %l410 = alloca i64
  %l413 = alloca i1
  %l414 = alloca i64
  %l415 = alloca { i64, ptr }
  %l416 = alloca { i64, ptr }
  %l417 = alloca { i64, ptr }
  %l418 = alloca i8
  %l419 = alloca ptr
  %l420 = alloca i64
  %l422 = alloca { i64, [4 x i64] }
  %l423 = alloca i64
  %l424 = alloca i64
  %l430 = alloca i64
  %l437 = alloca i64
  %l440 = alloca i64
  %l465 = alloca i64
  %l471 = alloca ptr
  %l472 = alloca i64
  %l474 = alloca { i64, [4 x i64] }
  %l479 = alloca i1
  %l480 = alloca ptr
  %l481 = alloca i64
  %l483 = alloca { i64, [4 x i64] }
  %l484 = alloca { i64, ptr }
  %l485 = alloca ptr
  %l486 = alloca i64
  %l488 = alloca { i64, [4 x i64] }
  %l489 = alloca { i64, ptr }
  %l490 = alloca ptr
  %l491 = alloca i64
  %l493 = alloca { i64, [4 x i64] }
  %l494 = alloca i64
  %l496 = alloca i32
  %l499 = alloca i1
  %l500 = alloca ptr
  %l501 = alloca i64
  %l503 = alloca { i64, [4 x i64] }
  %l504 = alloca { i64, ptr }
  %l505 = alloca ptr
  %l506 = alloca i64
  %l508 = alloca { i64, [4 x i64] }
  %l509 = alloca { i64, ptr }
  %l510 = alloca ptr
  %l511 = alloca i64
  %l513 = alloca { i64, [4 x i64] }
  %l514 = alloca i64
  %l515 = alloca i8
  %l516 = alloca ptr
  %l517 = alloca i64
  %l519 = alloca { i64, [4 x i64] }
  %l520 = alloca i64
  %l521 = alloca i32
  %l524 = alloca i1
  %l526 = alloca i1
  %l528 = alloca i1
  %l529 = alloca { i64, ptr }
  %l535 = alloca i1
  %l538 = alloca i64
  %l546 = alloca i64
  %l549 = alloca i64
  %l568 = alloca { i64, ptr }
  %l574 = alloca ptr
  %l575 = alloca i64
  %l577 = alloca { i64, [4 x i64] }
  %l578 = alloca { i64, ptr }
  %l579 = alloca ptr
  %l580 = alloca i64
  %l582 = alloca { i64, [4 x i64] }
  %l583 = alloca i64
  %l587 = alloca i1
  %l589 = alloca i1
  %l591 = alloca i1
  %l593 = alloca i1
  %l595 = alloca i1
  %l597 = alloca i1
  %l599 = alloca i1
  %l602 = alloca i1
  %l606 = alloca ptr
  %l607 = alloca i64
  %l609 = alloca { i64, [4 x i64] }
  %l610 = alloca { i64, ptr }
  %l611 = alloca ptr
  %l612 = alloca i64
  %l614 = alloca { i64, [4 x i64] }
  %l615 = alloca i64
  %l616 = alloca %"std/prelude/text:StringBuilder"
  %l621 = alloca i64
  %l624 = alloca i64
  %l651 = alloca { i64, ptr }
  %l660 = alloca i1
  %l662 = alloca i1
  %l664 = alloca i1
  %l666 = alloca i1
  %l668 = alloca i1
  %l670 = alloca ptr
  %l671 = alloca i32
  %l675 = alloca i32
  %l677 = alloca i1
  %l681 = alloca ptr
  %l682 = alloca %"compiler/eval:Ptr"
  %l685 = alloca i64
  %s0 = alloca %olang.scope
  %s4 = alloca %olang.scope
  %s8 = alloca %olang.scope
  %s10 = alloca %olang.scope
  %s14 = alloca %olang.scope
  %s15 = alloca %olang.scope
  %s16 = alloca %olang.scope
  %s17 = alloca %olang.scope
  %s18 = alloca %olang.scope
  %s25 = alloca %olang.scope
  %s26 = alloca %olang.scope
  %s27 = alloca %olang.scope
  %s28 = alloca %olang.scope
  %s38 = alloca %olang.scope
  %rv = alloca i1
  %t11 = alloca { ptr, %"compiler/mir:Range", ptr }, align 8
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  store { i64, ptr } %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load i64, ptr %l1, !tbaa !24
  %t5 = call ptr @compiler_2feval_2ecompiler_2feval_3aMachine_2efnOfFrame(ptr %v0, ptr %v0, ptr %t1, i64 %t2)
  store ptr %t5, ptr %l68
  br label %bb1
bb1:
  %t6 = load ptr, ptr %l68, !tbaa !29
  %t9 = getelementptr { ptr, %"compiler/mir:Range", ptr }, ptr null, i32 1
  %t10 = ptrtoint ptr %t9 to i64
  %t12 = getelementptr { ptr, %"compiler/mir:Range", ptr }, ptr %t11, i32 0, i32 0
  store ptr %t6, ptr %t12, !tbaa !28
  %t14 = getelementptr { ptr, %"compiler/mir:Range", ptr }, ptr %t11, i32 0, i32 1
  store %"compiler/mir:Range" %a3, ptr %t14, !tbaa !28
  call void @__olang_scope_escape(ptr %v0)
  %t16 = getelementptr { ptr, %"compiler/mir:Range", ptr }, ptr %t11, i32 0, i32 2
  store ptr %v0, ptr %t16, !tbaa !28
  %t17 = insertvalue { ptr, ptr } undef, ptr @olang_lambda_3, 0
  %t18 = insertvalue { ptr, ptr } %t17, ptr %t11, 1
  store { ptr, ptr } %t18, ptr %l8
  store i64 0, ptr %l9, !tbaa !24
  %t20 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t22 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v1, ptr %s0, { i64, ptr } %t20, { i64, ptr } { i64 17, ptr getelementptr inbounds (<{ i64, [17 x i8] }>, ptr @.d4, i32 0, i32 1) })
  store i1 %t22, ptr %l73
  br label %bb2
bb2:
  %t23 = load i1, ptr %l73, !tbaa !21
  br i1 %t23, label %bb3, label %bb4
bb3:
  br label %bb5
bb4:
  br label %bb7
bb5:
  %t24 = load ptr, ptr %l0, !tbaa !29
  %t26 = getelementptr %"compiler/eval:Machine", ptr %t24, i32 0, i32 79
  %t28 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %v0, ptr %t26)
  store i64 %t28, ptr %l76
  br label %bb6
bb6:
  %t29 = load i64, ptr %l76, !tbaa !24
  store i64 %t29, ptr %l9, !tbaa !24
  br label %bb323
bb7:
  %t30 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t32 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v1, ptr %s0, { i64, ptr } %t30, { i64, ptr } { i64 11, ptr getelementptr inbounds (<{ i64, [11 x i8] }>, ptr @.d5, i32 0, i32 1) })
  store i1 %t32, ptr %l78
  br label %bb8
bb8:
  %t33 = load i1, ptr %l78, !tbaa !21
  br i1 %t33, label %bb9, label %bb10
bb9:
  br label %bb11
bb10:
  br label %bb40
bb11:
  %t34 = load ptr, ptr %l0, !tbaa !29
  store ptr %t34, ptr %l79, !tbaa !29
  %t35 = load i64, ptr %l1, !tbaa !24
  store i64 %t35, ptr %l80, !tbaa !24
  %t36 = load { ptr, ptr }, ptr %l8
  %t38 = extractvalue { ptr, ptr } %t36, 0
  %t39 = extractvalue { ptr, ptr } %t36, 1
  %t40 = call { i64, [4 x i64] } %t38(ptr %t39, i64 0)
  store { i64, [4 x i64] } %t40, ptr %l82
  br label %bb12
bb12:
  %t41 = load ptr, ptr %l79, !tbaa !29
  %t42 = load i64, ptr %l80, !tbaa !24
  %t43 = load { i64, [4 x i64] }, ptr %l82
  %t44 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2eintArg(ptr %v0, ptr %t41, i64 %t42, { i64, [4 x i64] } %t43)
  store i64 %t44, ptr %l83
  br label %bb13
bb13:
  %t45 = load i64, ptr %l83, !tbaa !24
  store i64 %t45, ptr %l10, !tbaa !24
  %t46 = load i64, ptr %l10, !tbaa !24
  %t48 = icmp slt i64 %t46, 0
  br i1 %t48, label %bb14, label %bb15
bb14:
  store i1 true, ptr %l86, !tbaa !21
  br label %bb17
bb15:
  %t50 = load i64, ptr %l10, !tbaa !24
  store i64 %t50, ptr %l87, !tbaa !24
  %t51 = load ptr, ptr %l0, !tbaa !29
  %t53 = getelementptr %"compiler/eval:Machine", ptr %t51, i32 0, i32 79
  %t55 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %v0, ptr %t53)
  store i64 %t55, ptr %l90
  br label %bb16
bb16:
  %t56 = load i64, ptr %l87, !tbaa !24
  %t57 = load i64, ptr %l90, !tbaa !24
  %t58 = icmp sge i64 %t56, %t57
  store i1 %t58, ptr %l86, !tbaa !21
  br label %bb17
bb17:
  %t60 = load i1, ptr %l86, !tbaa !21
  br i1 %t60, label %bb18, label %bb19
bb18:
  store i64 -1, ptr %l9, !tbaa !24
  br label %bb39
bb19:
  store %olang.scope zeroinitializer, ptr %s4
  %t61 = load ptr, ptr %l0, !tbaa !29
  %t63 = getelementptr %"compiler/eval:Machine", ptr %t61, i32 0, i32 79
  %t64 = load i64, ptr %l10, !tbaa !24
  %t67 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %v0, ptr %v0, ptr %t63, i64 %t64)
  store { i64, ptr } %t67, ptr %l95
  br label %bb20
bb20:
  %t68 = load { i64, ptr }, ptr %l95, !tbaa !27
  store { i64, ptr } %t68, ptr %l11, !tbaa !27
  %t69 = load { i64, ptr }, ptr %l11, !tbaa !27
  %t71 = extractvalue { i64, ptr } %t69, 0
  store i64 %t71, ptr %l97, !tbaa !24
  %t72 = load i64, ptr %l97, !tbaa !24
  %t73 = icmp sge i64 %t72, 0
  br i1 %t73, label %bb21, label %bb22
bb21:
  %t75 = load i64, ptr %l97, !tbaa !24
  %t76 = mul i64 %t75, 1
  %t77 = call ptr @__olang_scope_alloc_zeroed(ptr %s4, i64 %t76)
  %t78 = insertvalue { i64, ptr } undef, i64 %t75, 0
  %t79 = insertvalue { i64, ptr } %t78, ptr %t77, 1
  store { i64, ptr } %t79, ptr %l12, !tbaa !27
  store i64 0, ptr %l13, !tbaa !24
  %t81 = load { i64, ptr }, ptr %l11, !tbaa !27
  %t83 = extractvalue { i64, ptr } %t81, 0
  store i64 %t83, ptr %l14, !tbaa !24
  store i64 1, ptr %l15, !tbaa !24
  %t85 = load i64, ptr %l14, !tbaa !24
  %t86 = load i64, ptr %l13, !tbaa !24
  %t89 = icmp sgt i64 %t85, %t86
  br i1 %t89, label %bb23, label %bb24
bb22:
  call void @__olang_check_failed(ptr @olang_loc_7289625dc306da68_1bb592dfdbe27504)
  unreachable
bb23:
  %t91 = load i64, ptr %l15, !tbaa !24
  %t93 = icmp sgt i64 %t91, 0
  br i1 %t93, label %bb25, label %bb26
bb24:
  store i64 0, ptr %l105, !tbaa !24
  br label %bb28
bb25:
  %t95 = load i64, ptr %l14, !tbaa !24
  %t96 = load i64, ptr %l13, !tbaa !24
  %t99 = sub i64 %t95, %t96
  %t100 = load i64, ptr %l15, !tbaa !24
  %t103 = add i64 %t99, %t100
  %t105 = sub i64 %t103, 1
  %t106 = load i64, ptr %l15, !tbaa !24
  %t109 = sdiv i64 %t105, %t106
  store i64 %t109, ptr %l108, !tbaa !24
  br label %bb27
bb26:
  store i64 0, ptr %l108, !tbaa !24
  br label %bb27
bb27:
  %t111 = load i64, ptr %l108, !tbaa !24
  store i64 %t111, ptr %l105, !tbaa !24
  br label %bb28
bb28:
  %t112 = load i64, ptr %l105, !tbaa !24
  store i64 %t112, ptr %l16, !tbaa !24
  store i64 0, ptr %l17, !tbaa !24
  br label %bb29
bb29:
  %t113 = load i64, ptr %l17, !tbaa !24
  %t114 = load i64, ptr %l16, !tbaa !24
  %t117 = icmp slt i64 %t113, %t114
  %t119 = xor i1 %t117, true
  br i1 %t119, label %bb30, label %bb31
bb30:
  br label %bb34
bb31:
  br label %bb32
bb32:
  %t121 = load i64, ptr %l13, !tbaa !24
  %t122 = load i64, ptr %l17, !tbaa !24
  %t123 = load i64, ptr %l15, !tbaa !24
  %t126 = mul i64 %t122, %t123
  %t129 = add i64 %t121, %t126
  store i64 %t129, ptr %l18, !tbaa !24
  %t131 = load i64, ptr %l18, !tbaa !24
  %t132 = load { i64, ptr }, ptr %l11, !tbaa !27
  store { i64, ptr } %t132, ptr %l127, !tbaa !27
  %t133 = load i64, ptr %l18, !tbaa !24
  %t135 = getelementptr { i64, ptr }, ptr %l127, i32 0, i32 1
  %t136 = load ptr, ptr %t135, !tbaa !27
  %t137 = getelementptr i8, ptr %t136, i64 %t133
  %t138 = load i8, ptr %t137, !tbaa !32
  %t142 = getelementptr { i64, ptr }, ptr %l12, i32 0, i32 1
  %t143 = load ptr, ptr %t142, !tbaa !27
  %t144 = getelementptr i8, ptr %t143, i64 %t131
  store i8 %t138, ptr %t144, !tbaa !32
  br label %bb33
bb33:
  %t145 = load i64, ptr %l17, !tbaa !24
  %t147 = add i64 %t145, 1
  store i64 %t147, ptr %l17, !tbaa !24
  br label %bb29
bb34:
  %t149 = load ptr, ptr %l0, !tbaa !29
  store ptr %t149, ptr %l133, !tbaa !29
  %t150 = load i64, ptr %l1, !tbaa !24
  store i64 %t150, ptr %l134, !tbaa !24
  %t151 = load { ptr, ptr }, ptr %l8
  %t153 = extractvalue { ptr, ptr } %t151, 0
  %t154 = extractvalue { ptr, ptr } %t151, 1
  %t155 = call { i64, [4 x i64] } %t153(ptr %t154, i64 1)
  store { i64, [4 x i64] } %t155, ptr %l136
  br label %bb35
bb35:
  %t156 = load { i64, ptr }, ptr %l12, !tbaa !27
  store { i64, ptr } %t156, ptr %l137, !tbaa !27
  %t157 = load ptr, ptr %l0, !tbaa !29
  store ptr %t157, ptr %l138, !tbaa !29
  %t158 = load i64, ptr %l1, !tbaa !24
  store i64 %t158, ptr %l139, !tbaa !24
  %t159 = load { ptr, ptr }, ptr %l8
  %t161 = extractvalue { ptr, ptr } %t159, 0
  %t162 = extractvalue { ptr, ptr } %t159, 1
  %t163 = call { i64, [4 x i64] } %t161(ptr %t162, i64 2)
  store { i64, [4 x i64] } %t163, ptr %l141
  br label %bb36
bb36:
  %t164 = load ptr, ptr %l138, !tbaa !29
  %t165 = load i64, ptr %l139, !tbaa !24
  %t166 = load { i64, [4 x i64] }, ptr %l141
  %t167 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2eintArg(ptr %v0, ptr %t164, i64 %t165, { i64, [4 x i64] } %t166)
  store i64 %t167, ptr %l142
  br label %bb37
bb37:
  %t168 = load ptr, ptr %l133, !tbaa !29
  %t169 = load i64, ptr %l134, !tbaa !24
  %t170 = load { i64, [4 x i64] }, ptr %l136
  %t171 = load { i64, ptr }, ptr %l137, !tbaa !27
  %t172 = load i64, ptr %l142, !tbaa !24
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2eputBytes(ptr %v0, ptr %s4, ptr %t168, i64 %t169, { i64, [4 x i64] } %t170, { i64, ptr } %t171, i64 %t172)
  br label %bb38
bb38:
  %t173 = load { i64, ptr }, ptr %l11, !tbaa !27
  %t175 = extractvalue { i64, ptr } %t173, 0
  store i64 %t175, ptr %l9, !tbaa !24
  call void @__olang_scope_close(ptr %s4)
  br label %bb39
bb39:
  br label %bb323
bb40:
  %t177 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t179 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v1, ptr %s0, { i64, ptr } %t177, { i64, ptr } { i64 11, ptr getelementptr inbounds (<{ i64, [11 x i8] }>, ptr @.d6, i32 0, i32 1) })
  store i1 %t179, ptr %l146
  br label %bb41
bb41:
  %t180 = load i1, ptr %l146, !tbaa !21
  br i1 %t180, label %bb42, label %bb43
bb42:
  br label %bb44
bb43:
  br label %bb54
bb44:
  store %olang.scope zeroinitializer, ptr %s8
  %t181 = load ptr, ptr %l0, !tbaa !29
  store ptr %t181, ptr %l147, !tbaa !29
  %t182 = load i64, ptr %l1, !tbaa !24
  store i64 %t182, ptr %l148, !tbaa !24
  %t183 = load { ptr, ptr }, ptr %l8
  %t185 = extractvalue { ptr, ptr } %t183, 0
  %t186 = extractvalue { ptr, ptr } %t183, 1
  %t187 = call { i64, [4 x i64] } %t185(ptr %t186, i64 2)
  store { i64, [4 x i64] } %t187, ptr %l150
  br label %bb45
bb45:
  %t188 = load ptr, ptr %l147, !tbaa !29
  %t189 = load i64, ptr %l148, !tbaa !24
  %t190 = load { i64, [4 x i64] }, ptr %l150
  %t191 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2eintArg(ptr %v0, ptr %t188, i64 %t189, { i64, [4 x i64] } %t190)
  store i64 %t191, ptr %l151
  br label %bb46
bb46:
  %t192 = load i64, ptr %l151, !tbaa !24
  %t193 = icmp sge i64 %t192, 0
  br i1 %t193, label %bb47, label %bb48
bb47:
  %t195 = load i64, ptr %l151, !tbaa !24
  %t196 = mul i64 %t195, 1
  %t197 = call ptr @__olang_scope_alloc_zeroed(ptr %s8, i64 %t196)
  %t198 = insertvalue { i64, ptr } undef, i64 %t195, 0
  %t199 = insertvalue { i64, ptr } %t198, ptr %t197, 1
  store { i64, ptr } %t199, ptr %l19, !tbaa !27
  %t201 = load ptr, ptr %l0, !tbaa !29
  store ptr %t201, ptr %l154, !tbaa !29
  %t202 = load i64, ptr %l1, !tbaa !24
  store i64 %t202, ptr %l155, !tbaa !24
  %t203 = load { ptr, ptr }, ptr %l8
  %t205 = extractvalue { ptr, ptr } %t203, 0
  %t206 = extractvalue { ptr, ptr } %t203, 1
  %t207 = call { i64, [4 x i64] } %t205(ptr %t206, i64 0)
  store { i64, [4 x i64] } %t207, ptr %l157
  br label %bb49
bb48:
  call void @__olang_check_failed(ptr @olang_loc_d526727003b18a55_2e4fcca09321f611)
  unreachable
bb49:
  %t208 = load ptr, ptr %l154, !tbaa !29
  %t209 = load i64, ptr %l155, !tbaa !24
  %t210 = load { i64, [4 x i64] }, ptr %l157
  %t211 = call { i64, ptr } @compiler_2feval_2ecompiler_2feval_3aMachine_2ebytesOf(ptr %v0, ptr %s8, ptr %t208, i64 %t209, { i64, [4 x i64] } %t210)
  store { i64, ptr } %t211, ptr %l158
  br label %bb50
bb50:
  %t212 = load { i64, ptr }, ptr %l19, !tbaa !27
  %t213 = load { i64, ptr }, ptr %l19, !tbaa !27
  %t215 = extractvalue { i64, ptr } %t213, 0
  %t216 = load { i64, ptr }, ptr %l158, !tbaa !27
  %t217 = extractvalue { i64, ptr } %t216, 1
  %t218 = extractvalue { i64, ptr } %t216, 0
  %t220 = extractvalue { i64, ptr } %t212, 1
  %t221 = extractvalue { i64, ptr } %t212, 0
  %t223 = call i64 @__olang_env(ptr %t217, ptr %t220, i64 %t215)
  store i64 %t223, ptr %l162
  br label %bb51
bb51:
  %t224 = load i64, ptr %l162, !tbaa !24
  store i64 %t224, ptr %l9, !tbaa !24
  %t225 = load ptr, ptr %l0, !tbaa !29
  store ptr %t225, ptr %l163, !tbaa !29
  %t226 = load i64, ptr %l1, !tbaa !24
  store i64 %t226, ptr %l164, !tbaa !24
  %t227 = load { ptr, ptr }, ptr %l8
  %t229 = extractvalue { ptr, ptr } %t227, 0
  %t230 = extractvalue { ptr, ptr } %t227, 1
  %t231 = call { i64, [4 x i64] } %t229(ptr %t230, i64 1)
  store { i64, [4 x i64] } %t231, ptr %l166
  br label %bb52
bb52:
  %t232 = load { i64, ptr }, ptr %l19, !tbaa !27
  %t233 = load { i64, ptr }, ptr %l19, !tbaa !27
  %t235 = extractvalue { i64, ptr } %t233, 0
  %t236 = load ptr, ptr %l163, !tbaa !29
  %t237 = load i64, ptr %l164, !tbaa !24
  %t238 = load { i64, [4 x i64] }, ptr %l166
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2eputBytes(ptr %v0, ptr %s8, ptr %t236, i64 %t237, { i64, [4 x i64] } %t238, { i64, ptr } %t232, i64 %t235)
  br label %bb53
bb53:
  call void @__olang_scope_close(ptr %s8)
  br label %bb323
bb54:
  %t241 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t243 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v1, ptr %s0, { i64, ptr } %t241, { i64, ptr } { i64 11, ptr getelementptr inbounds (<{ i64, [11 x i8] }>, ptr @.d7, i32 0, i32 1) })
  store i1 %t243, ptr %l171
  br label %bb55
bb55:
  %t244 = load i1, ptr %l171, !tbaa !21
  br i1 %t244, label %bb56, label %bb57
bb56:
  br label %bb58
bb57:
  br label %bb59
bb58:
  %t245 = load ptr, ptr %l0, !tbaa !29
  %t247 = getelementptr %"compiler/eval:Machine", ptr %t245, i32 0, i32 91
  %t248 = load i32, ptr %t247, !tbaa !23
  %t250 = sext i32 %t248 to i64
  store i64 %t250, ptr %l9, !tbaa !24
  br label %bb323
bb59:
  %t252 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t254 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v1, ptr %s0, { i64, ptr } %t252, { i64, ptr } { i64 12, ptr getelementptr inbounds (<{ i64, [12 x i8] }>, ptr @.d8, i32 0, i32 1) })
  store i1 %t254, ptr %l176
  br label %bb60
bb60:
  %t255 = load i1, ptr %l176, !tbaa !21
  br i1 %t255, label %bb61, label %bb62
bb61:
  br label %bb63
bb62:
  br label %bb81
bb63:
  store %olang.scope zeroinitializer, ptr %s10
  %t256 = insertvalue [3 x i64] undef, i64 0, 0
  %t257 = insertvalue [3 x i64] %t256, i64 0, 1
  %t258 = insertvalue [3 x i64] %t257, i64 0, 2
  store [3 x i64] %t258, ptr %l20
  %t260 = load ptr, ptr %l0, !tbaa !29
  store ptr %t260, ptr %l178, !tbaa !29
  %t261 = load i64, ptr %l1, !tbaa !24
  store i64 %t261, ptr %l179, !tbaa !24
  %t262 = load { ptr, ptr }, ptr %l8
  %t264 = extractvalue { ptr, ptr } %t262, 0
  %t265 = extractvalue { ptr, ptr } %t262, 1
  %t266 = call { i64, [4 x i64] } %t264(ptr %t265, i64 0)
  store { i64, [4 x i64] } %t266, ptr %l181
  br label %bb64
bb64:
  %t267 = load ptr, ptr %l178, !tbaa !29
  %t268 = load i64, ptr %l179, !tbaa !24
  %t269 = load { i64, [4 x i64] }, ptr %l181
  %t270 = call { i64, ptr } @compiler_2feval_2ecompiler_2feval_3aMachine_2ebytesOf(ptr %v0, ptr %s10, ptr %t267, i64 %t268, { i64, [4 x i64] } %t269)
  store { i64, ptr } %t270, ptr %l182
  br label %bb65
bb65:
  %t272 = insertvalue { i64, ptr } undef, i64 3, 0
  %t273 = insertvalue { i64, ptr } %t272, ptr %l20, 1
  %t275 = load { i64, ptr }, ptr %l182, !tbaa !27
  %t276 = extractvalue { i64, ptr } %t275, 1
  %t277 = extractvalue { i64, ptr } %t275, 0
  %t279 = extractvalue { i64, ptr } %t273, 1
  %t280 = extractvalue { i64, ptr } %t273, 0
  %t281 = call i32 @__olang_stat(ptr %t276, ptr %t279)
  store i32 %t281, ptr %l186
  br label %bb66
bb66:
  %t282 = load i32, ptr %l186, !tbaa !23
  %t283 = sext i32 %t282 to i64
  store i64 %t283, ptr %l9, !tbaa !24
  store i64 0, ptr %l22, !tbaa !24
  store i64 24, ptr %l23, !tbaa !24
  store i64 1, ptr %l24, !tbaa !24
  %t285 = load i64, ptr %l23, !tbaa !24
  %t286 = load i64, ptr %l22, !tbaa !24
  %t289 = icmp sgt i64 %t285, %t286
  br i1 %t289, label %bb67, label %bb68
bb67:
  %t291 = load i64, ptr %l24, !tbaa !24
  %t293 = icmp sgt i64 %t291, 0
  br i1 %t293, label %bb69, label %bb70
bb68:
  store i64 0, ptr %l191, !tbaa !24
  br label %bb72
bb69:
  %t295 = load i64, ptr %l23, !tbaa !24
  %t296 = load i64, ptr %l22, !tbaa !24
  %t299 = sub i64 %t295, %t296
  %t300 = load i64, ptr %l24, !tbaa !24
  %t303 = add i64 %t299, %t300
  %t305 = sub i64 %t303, 1
  %t306 = load i64, ptr %l24, !tbaa !24
  %t309 = sdiv i64 %t305, %t306
  store i64 %t309, ptr %l194, !tbaa !24
  br label %bb71
bb70:
  store i64 0, ptr %l194, !tbaa !24
  br label %bb71
bb71:
  %t311 = load i64, ptr %l194, !tbaa !24
  store i64 %t311, ptr %l191, !tbaa !24
  br label %bb72
bb72:
  %t312 = load i64, ptr %l191, !tbaa !24
  store i64 %t312, ptr %l25, !tbaa !24
  store i64 0, ptr %l26, !tbaa !24
  br label %bb73
bb73:
  %t313 = load i64, ptr %l26, !tbaa !24
  %t314 = load i64, ptr %l25, !tbaa !24
  %t317 = icmp slt i64 %t313, %t314
  %t319 = xor i1 %t317, true
  br i1 %t319, label %bb74, label %bb75
bb74:
  br label %bb78
bb75:
  br label %bb76
bb76:
  %t321 = load i64, ptr %l22, !tbaa !24
  %t322 = load i64, ptr %l26, !tbaa !24
  %t323 = load i64, ptr %l24, !tbaa !24
  %t326 = mul i64 %t322, %t323
  %t329 = add i64 %t321, %t326
  store i64 %t329, ptr %l27, !tbaa !24
  %t331 = load i64, ptr %l27, !tbaa !24
  %t332 = load i64, ptr %l27, !tbaa !24
  %t334 = sdiv i64 %t332, 8
  %t336 = getelementptr [3 x i64], ptr %l20, i64 0, i64 %t334
  %t337 = load i64, ptr %t336, !tbaa !34
  %t338 = load i64, ptr %l27, !tbaa !24
  %t340 = srem i64 %t338, 8
  %t342 = mul i64 8, %t340
  store i64 %t342, ptr %l218, !tbaa !24
  %t344 = load i64, ptr %l218, !tbaa !24
  %t345 = load i64, ptr %l218, !tbaa !24
  %t346 = ashr i64 %t337, %t345
  %t348 = and i64 %t346, 255
  %t350 = trunc i64 %t348 to i8
  %t353 = getelementptr [24 x i8], ptr %l21, i64 0, i64 %t331
  store i8 %t350, ptr %t353, !tbaa !32
  br label %bb77
bb77:
  %t354 = load i64, ptr %l26, !tbaa !24
  %t356 = add i64 %t354, 1
  store i64 %t356, ptr %l26, !tbaa !24
  br label %bb73
bb78:
  %t358 = load ptr, ptr %l0, !tbaa !29
  store ptr %t358, ptr %l224, !tbaa !29
  %t359 = load i64, ptr %l1, !tbaa !24
  store i64 %t359, ptr %l225, !tbaa !24
  %t360 = load { ptr, ptr }, ptr %l8
  %t362 = extractvalue { ptr, ptr } %t360, 0
  %t363 = extractvalue { ptr, ptr } %t360, 1
  %t364 = call { i64, [4 x i64] } %t362(ptr %t363, i64 1)
  store { i64, [4 x i64] } %t364, ptr %l227
  br label %bb79
bb79:
  %t366 = insertvalue { i64, ptr } undef, i64 24, 0
  %t367 = insertvalue { i64, ptr } %t366, ptr %l21, 1
  %t368 = load ptr, ptr %l224, !tbaa !29
  %t369 = load i64, ptr %l225, !tbaa !24
  %t370 = load { i64, [4 x i64] }, ptr %l227
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2eputBytes(ptr %v0, ptr %s10, ptr %t368, i64 %t369, { i64, [4 x i64] } %t370, { i64, ptr } %t367, i64 24)
  br label %bb80
bb80:
  call void @__olang_scope_close(ptr %s10)
  br label %bb323
bb81:
  %t372 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t374 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v1, ptr %s0, { i64, ptr } %t372, { i64, ptr } { i64 11, ptr getelementptr inbounds (<{ i64, [11 x i8] }>, ptr @.d9, i32 0, i32 1) })
  store i1 %t374, ptr %l231
  br label %bb82
bb82:
  %t375 = load i1, ptr %l231, !tbaa !21
  br i1 %t375, label %bb83, label %bb84
bb83:
  br label %bb88
bb84:
  %t376 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t378 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v1, ptr %s0, { i64, ptr } %t376, { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d10, i32 0, i32 1) })
  store i1 %t378, ptr %l233
  br label %bb85
bb85:
  %t379 = load i1, ptr %l233, !tbaa !21
  br i1 %t379, label %bb86, label %bb87
bb86:
  br label %bb88
bb87:
  br label %bb103
bb88:
  store %olang.scope zeroinitializer, ptr %s14
  %t380 = load ptr, ptr %l0, !tbaa !29
  store ptr %t380, ptr %l234, !tbaa !29
  %t381 = load i64, ptr %l1, !tbaa !24
  store i64 %t381, ptr %l235, !tbaa !24
  %t382 = load { ptr, ptr }, ptr %l8
  %t384 = extractvalue { ptr, ptr } %t382, 0
  %t385 = extractvalue { ptr, ptr } %t382, 1
  %t386 = call { i64, [4 x i64] } %t384(ptr %t385, i64 2)
  store { i64, [4 x i64] } %t386, ptr %l237
  br label %bb89
bb89:
  %t387 = load ptr, ptr %l234, !tbaa !29
  %t388 = load i64, ptr %l235, !tbaa !24
  %t389 = load { i64, [4 x i64] }, ptr %l237
  %t390 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2eintArg(ptr %v0, ptr %t387, i64 %t388, { i64, [4 x i64] } %t389)
  store i64 %t390, ptr %l238
  br label %bb90
bb90:
  %t391 = load i64, ptr %l238, !tbaa !24
  %t392 = icmp sge i64 %t391, 0
  br i1 %t392, label %bb91, label %bb92
bb91:
  %t394 = load i64, ptr %l238, !tbaa !24
  %t395 = mul i64 %t394, 1
  %t396 = call ptr @__olang_scope_alloc_zeroed(ptr %s14, i64 %t395)
  %t397 = insertvalue { i64, ptr } undef, i64 %t394, 0
  %t398 = insertvalue { i64, ptr } %t397, ptr %t396, 1
  store { i64, ptr } %t398, ptr %l28, !tbaa !27
  %t400 = load ptr, ptr %l0, !tbaa !29
  store ptr %t400, ptr %l241, !tbaa !29
  %t401 = load i64, ptr %l1, !tbaa !24
  store i64 %t401, ptr %l242, !tbaa !24
  %t402 = load { ptr, ptr }, ptr %l8
  %t404 = extractvalue { ptr, ptr } %t402, 0
  %t405 = extractvalue { ptr, ptr } %t402, 1
  %t406 = call { i64, [4 x i64] } %t404(ptr %t405, i64 0)
  store { i64, [4 x i64] } %t406, ptr %l244
  br label %bb93
bb92:
  call void @__olang_check_failed(ptr @olang_loc_1269d295d9d04536_be9a6b7fb42413f2)
  unreachable
bb93:
  %t407 = load ptr, ptr %l241, !tbaa !29
  %t408 = load i64, ptr %l242, !tbaa !24
  %t409 = load { i64, [4 x i64] }, ptr %l244
  %t410 = call { i64, ptr } @compiler_2feval_2ecompiler_2feval_3aMachine_2ebytesOf(ptr %v0, ptr %s14, ptr %t407, i64 %t408, { i64, [4 x i64] } %t409)
  store { i64, ptr } %t410, ptr %l245
  br label %bb94
bb94:
  %t411 = load { i64, ptr }, ptr %l245, !tbaa !27
  store { i64, ptr } %t411, ptr %l29, !tbaa !27
  %t412 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t414 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v1, ptr %s14, { i64, ptr } %t412, { i64, ptr } { i64 11, ptr getelementptr inbounds (<{ i64, [11 x i8] }>, ptr @.d11, i32 0, i32 1) })
  store i1 %t414, ptr %l247
  br label %bb95
bb95:
  %t415 = load i1, ptr %l247, !tbaa !21
  br i1 %t415, label %bb96, label %bb97
bb96:
  %t416 = load { i64, ptr }, ptr %l29, !tbaa !27
  %t417 = load { i64, ptr }, ptr %l28, !tbaa !27
  %t418 = load { i64, ptr }, ptr %l28, !tbaa !27
  %t420 = extractvalue { i64, ptr } %t418, 0
  %t422 = extractvalue { i64, ptr } %t416, 1
  %t423 = extractvalue { i64, ptr } %t416, 0
  %t425 = extractvalue { i64, ptr } %t417, 1
  %t426 = extractvalue { i64, ptr } %t417, 0
  %t428 = call i64 @__olang_dir(ptr %t422, ptr %t425, i64 %t420)
  store i64 %t428, ptr %l253
  br label %bb98
bb97:
  %t429 = load { i64, ptr }, ptr %l29, !tbaa !27
  %t430 = load { i64, ptr }, ptr %l28, !tbaa !27
  %t431 = load { i64, ptr }, ptr %l28, !tbaa !27
  %t433 = extractvalue { i64, ptr } %t431, 0
  %t435 = extractvalue { i64, ptr } %t429, 1
  %t436 = extractvalue { i64, ptr } %t429, 0
  %t438 = extractvalue { i64, ptr } %t430, 1
  %t439 = extractvalue { i64, ptr } %t430, 0
  %t441 = call i64 @__olang_realpath(ptr %t435, ptr %t438, i64 %t433)
  store i64 %t441, ptr %l258
  br label %bb99
bb98:
  %t442 = load i64, ptr %l253, !tbaa !24
  store i64 %t442, ptr %l248, !tbaa !24
  br label %bb100
bb99:
  %t443 = load i64, ptr %l258, !tbaa !24
  store i64 %t443, ptr %l248, !tbaa !24
  br label %bb100
bb100:
  %t444 = load i64, ptr %l248, !tbaa !24
  store i64 %t444, ptr %l9, !tbaa !24
  %t445 = load ptr, ptr %l0, !tbaa !29
  store ptr %t445, ptr %l259, !tbaa !29
  %t446 = load i64, ptr %l1, !tbaa !24
  store i64 %t446, ptr %l260, !tbaa !24
  %t447 = load { ptr, ptr }, ptr %l8
  %t449 = extractvalue { ptr, ptr } %t447, 0
  %t450 = extractvalue { ptr, ptr } %t447, 1
  %t451 = call { i64, [4 x i64] } %t449(ptr %t450, i64 1)
  store { i64, [4 x i64] } %t451, ptr %l262
  br label %bb101
bb101:
  %t452 = load { i64, ptr }, ptr %l28, !tbaa !27
  %t453 = load { i64, ptr }, ptr %l28, !tbaa !27
  %t455 = extractvalue { i64, ptr } %t453, 0
  %t456 = load ptr, ptr %l259, !tbaa !29
  %t457 = load i64, ptr %l260, !tbaa !24
  %t458 = load { i64, [4 x i64] }, ptr %l262
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2eputBytes(ptr %v0, ptr %s14, ptr %t456, i64 %t457, { i64, [4 x i64] } %t458, { i64, ptr } %t452, i64 %t455)
  br label %bb102
bb102:
  call void @__olang_scope_close(ptr %s14)
  br label %bb323
bb103:
  %t461 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t463 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v1, ptr %s0, { i64, ptr } %t461, { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d12, i32 0, i32 1) })
  store i1 %t463, ptr %l267
  br label %bb104
bb104:
  %t464 = load i1, ptr %l267, !tbaa !21
  br i1 %t464, label %bb105, label %bb106
bb105:
  br label %bb107
bb106:
  br label %bb121
bb107:
  store %olang.scope zeroinitializer, ptr %s15
  %t465 = load ptr, ptr %l0, !tbaa !29
  store ptr %t465, ptr %l268, !tbaa !29
  %t466 = load i64, ptr %l1, !tbaa !24
  store i64 %t466, ptr %l269, !tbaa !24
  %t467 = load { ptr, ptr }, ptr %l8
  %t469 = extractvalue { ptr, ptr } %t467, 0
  %t470 = extractvalue { ptr, ptr } %t467, 1
  %t471 = call { i64, [4 x i64] } %t469(ptr %t470, i64 0)
  store { i64, [4 x i64] } %t471, ptr %l271
  br label %bb108
bb108:
  %t472 = load ptr, ptr %l268, !tbaa !29
  %t473 = load i64, ptr %l269, !tbaa !24
  %t474 = load { i64, [4 x i64] }, ptr %l271
  %t475 = call { i64, ptr } @compiler_2feval_2ecompiler_2feval_3aMachine_2ebytesOf(ptr %v0, ptr %s15, ptr %t472, i64 %t473, { i64, [4 x i64] } %t474)
  store { i64, ptr } %t475, ptr %l272
  br label %bb109
bb109:
  %t476 = load ptr, ptr %l0, !tbaa !29
  store ptr %t476, ptr %l273, !tbaa !29
  %t477 = load i64, ptr %l1, !tbaa !24
  store i64 %t477, ptr %l274, !tbaa !24
  %t478 = load { ptr, ptr }, ptr %l8
  %t480 = extractvalue { ptr, ptr } %t478, 0
  %t481 = extractvalue { ptr, ptr } %t478, 1
  %t482 = call { i64, [4 x i64] } %t480(ptr %t481, i64 1)
  store { i64, [4 x i64] } %t482, ptr %l276
  br label %bb110
bb110:
  %t483 = load ptr, ptr %l273, !tbaa !29
  %t484 = load i64, ptr %l274, !tbaa !24
  %t485 = load { i64, [4 x i64] }, ptr %l276
  %t486 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2eintArg(ptr %v0, ptr %t483, i64 %t484, { i64, [4 x i64] } %t485)
  store i64 %t486, ptr %l277
  br label %bb111
bb111:
  %t487 = load ptr, ptr %l0, !tbaa !29
  store ptr %t487, ptr %l278, !tbaa !29
  %t488 = load i64, ptr %l1, !tbaa !24
  store i64 %t488, ptr %l279, !tbaa !24
  %t489 = load { ptr, ptr }, ptr %l8
  %t491 = extractvalue { ptr, ptr } %t489, 0
  %t492 = extractvalue { ptr, ptr } %t489, 1
  %t493 = call { i64, [4 x i64] } %t491(ptr %t492, i64 2)
  store { i64, [4 x i64] } %t493, ptr %l281
  br label %bb112
bb112:
  %t494 = load ptr, ptr %l278, !tbaa !29
  %t495 = load i64, ptr %l279, !tbaa !24
  %t496 = load { i64, [4 x i64] }, ptr %l281
  %t497 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2eintArg(ptr %v0, ptr %t494, i64 %t495, { i64, [4 x i64] } %t496)
  store i64 %t497, ptr %l282
  br label %bb113
bb113:
  %t498 = load i64, ptr %l282, !tbaa !24
  %t499 = trunc i64 %t498 to i32
  store i32 %t499, ptr %l283, !tbaa !23
  %t500 = load ptr, ptr %l0, !tbaa !29
  store ptr %t500, ptr %l284, !tbaa !29
  %t501 = load i64, ptr %l1, !tbaa !24
  store i64 %t501, ptr %l285, !tbaa !24
  %t502 = load { ptr, ptr }, ptr %l8
  %t504 = extractvalue { ptr, ptr } %t502, 0
  %t505 = extractvalue { ptr, ptr } %t502, 1
  %t506 = call { i64, [4 x i64] } %t504(ptr %t505, i64 3)
  store { i64, [4 x i64] } %t506, ptr %l287
  br label %bb114
bb114:
  %t507 = load ptr, ptr %l284, !tbaa !29
  %t508 = load i64, ptr %l285, !tbaa !24
  %t509 = load { i64, [4 x i64] }, ptr %l287
  %t510 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2eintArg(ptr %v0, ptr %t507, i64 %t508, { i64, [4 x i64] } %t509)
  store i64 %t510, ptr %l288
  br label %bb115
bb115:
  %t511 = load i64, ptr %l288, !tbaa !24
  %t512 = trunc i64 %t511 to i32
  store i32 %t512, ptr %l289, !tbaa !23
  %t513 = load ptr, ptr %l0, !tbaa !29
  store ptr %t513, ptr %l290, !tbaa !29
  %t514 = load i64, ptr %l1, !tbaa !24
  store i64 %t514, ptr %l291, !tbaa !24
  %t515 = load { ptr, ptr }, ptr %l8
  %t517 = extractvalue { ptr, ptr } %t515, 0
  %t518 = extractvalue { ptr, ptr } %t515, 1
  %t519 = call { i64, [4 x i64] } %t517(ptr %t518, i64 4)
  store { i64, [4 x i64] } %t519, ptr %l293
  br label %bb116
bb116:
  %t520 = load ptr, ptr %l290, !tbaa !29
  %t521 = load i64, ptr %l291, !tbaa !24
  %t522 = load { i64, [4 x i64] }, ptr %l293
  %t523 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2eintArg(ptr %v0, ptr %t520, i64 %t521, { i64, [4 x i64] } %t522)
  store i64 %t523, ptr %l294
  br label %bb117
bb117:
  %t524 = load i64, ptr %l294, !tbaa !24
  %t525 = trunc i64 %t524 to i32
  store i32 %t525, ptr %l295, !tbaa !23
  %t526 = load ptr, ptr %l0, !tbaa !29
  store ptr %t526, ptr %l296, !tbaa !29
  %t527 = load i64, ptr %l1, !tbaa !24
  store i64 %t527, ptr %l297, !tbaa !24
  %t528 = load { ptr, ptr }, ptr %l8
  %t530 = extractvalue { ptr, ptr } %t528, 0
  %t531 = extractvalue { ptr, ptr } %t528, 1
  %t532 = call { i64, [4 x i64] } %t530(ptr %t531, i64 5)
  store { i64, [4 x i64] } %t532, ptr %l299
  br label %bb118
bb118:
  %t533 = load ptr, ptr %l296, !tbaa !29
  %t534 = load i64, ptr %l297, !tbaa !24
  %t535 = load { i64, [4 x i64] }, ptr %l299
  %t536 = call { i64, ptr } @compiler_2feval_2ecompiler_2feval_3aMachine_2ebytesOf(ptr %v0, ptr %s15, ptr %t533, i64 %t534, { i64, [4 x i64] } %t535)
  store { i64, ptr } %t536, ptr %l300
  br label %bb119
bb119:
  %t537 = load { i64, ptr }, ptr %l272, !tbaa !27
  %t538 = extractvalue { i64, ptr } %t537, 1
  %t539 = extractvalue { i64, ptr } %t537, 0
  %t540 = load i64, ptr %l277, !tbaa !24
  %t541 = load i32, ptr %l283, !tbaa !23
  %t542 = load i32, ptr %l289, !tbaa !23
  %t543 = load i32, ptr %l295, !tbaa !23
  %t544 = load { i64, ptr }, ptr %l300, !tbaa !27
  %t545 = extractvalue { i64, ptr } %t544, 1
  %t546 = extractvalue { i64, ptr } %t544, 0
  %t547 = call i32 @__olang_spawn(ptr %t538, i64 %t540, i32 %t541, i32 %t542, i32 %t543, ptr %t545)
  store i32 %t547, ptr %l301
  br label %bb120
bb120:
  %t548 = load i32, ptr %l301, !tbaa !23
  %t549 = sext i32 %t548 to i64
  store i64 %t549, ptr %l9, !tbaa !24
  call void @__olang_scope_close(ptr %s15)
  br label %bb323
bb121:
  %t551 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t553 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v1, ptr %s0, { i64, ptr } %t551, { i64, ptr } { i64 12, ptr getelementptr inbounds (<{ i64, [12 x i8] }>, ptr @.d13, i32 0, i32 1) })
  store i1 %t553, ptr %l304
  br label %bb122
bb122:
  %t554 = load i1, ptr %l304, !tbaa !21
  br i1 %t554, label %bb123, label %bb124
bb123:
  br label %bb125
bb124:
  br label %bb133
bb125:
  store %olang.scope zeroinitializer, ptr %s16
  %t555 = load ptr, ptr %l0, !tbaa !29
  store ptr %t555, ptr %l305, !tbaa !29
  %t556 = load i64, ptr %l1, !tbaa !24
  store i64 %t556, ptr %l306, !tbaa !24
  %t557 = load { ptr, ptr }, ptr %l8
  %t559 = extractvalue { ptr, ptr } %t557, 0
  %t560 = extractvalue { ptr, ptr } %t557, 1
  %t561 = call { i64, [4 x i64] } %t559(ptr %t560, i64 0)
  store { i64, [4 x i64] } %t561, ptr %l308
  br label %bb126
bb126:
  %t562 = load ptr, ptr %l305, !tbaa !29
  %t563 = load i64, ptr %l306, !tbaa !24
  %t564 = load { i64, [4 x i64] }, ptr %l308
  %t565 = call { i64, ptr } @compiler_2feval_2ecompiler_2feval_3aMachine_2ebytesOf(ptr %v0, ptr %s16, ptr %t562, i64 %t563, { i64, [4 x i64] } %t564)
  store { i64, ptr } %t565, ptr %l309
  br label %bb127
bb127:
  %t566 = load ptr, ptr %l0, !tbaa !29
  store ptr %t566, ptr %l310, !tbaa !29
  %t567 = load i64, ptr %l1, !tbaa !24
  store i64 %t567, ptr %l311, !tbaa !24
  %t568 = load { ptr, ptr }, ptr %l8
  %t570 = extractvalue { ptr, ptr } %t568, 0
  %t571 = extractvalue { ptr, ptr } %t568, 1
  %t572 = call { i64, [4 x i64] } %t570(ptr %t571, i64 1)
  store { i64, [4 x i64] } %t572, ptr %l313
  br label %bb128
bb128:
  %t573 = load ptr, ptr %l310, !tbaa !29
  %t574 = load i64, ptr %l311, !tbaa !24
  %t575 = load { i64, [4 x i64] }, ptr %l313
  %t576 = call { i64, ptr } @compiler_2feval_2ecompiler_2feval_3aMachine_2ebytesOf(ptr %v0, ptr %s16, ptr %t573, i64 %t574, { i64, [4 x i64] } %t575)
  store { i64, ptr } %t576, ptr %l314
  br label %bb129
bb129:
  %t577 = load ptr, ptr %l0, !tbaa !29
  store ptr %t577, ptr %l315, !tbaa !29
  %t578 = load i64, ptr %l1, !tbaa !24
  store i64 %t578, ptr %l316, !tbaa !24
  %t579 = load { ptr, ptr }, ptr %l8
  %t581 = extractvalue { ptr, ptr } %t579, 0
  %t582 = extractvalue { ptr, ptr } %t579, 1
  %t583 = call { i64, [4 x i64] } %t581(ptr %t582, i64 2)
  store { i64, [4 x i64] } %t583, ptr %l318
  br label %bb130
bb130:
  %t584 = load ptr, ptr %l315, !tbaa !29
  %t585 = load i64, ptr %l316, !tbaa !24
  %t586 = load { i64, [4 x i64] }, ptr %l318
  %t587 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2eintArg(ptr %v0, ptr %t584, i64 %t585, { i64, [4 x i64] } %t586)
  store i64 %t587, ptr %l319
  br label %bb131
bb131:
  %t588 = load { i64, ptr }, ptr %l309, !tbaa !27
  %t589 = extractvalue { i64, ptr } %t588, 1
  %t590 = extractvalue { i64, ptr } %t588, 0
  %t591 = load { i64, ptr }, ptr %l314, !tbaa !27
  %t592 = extractvalue { i64, ptr } %t591, 1
  %t593 = extractvalue { i64, ptr } %t591, 0
  %t594 = load i64, ptr %l319, !tbaa !24
  %t595 = call i32 @__olang_exec(ptr %t589, ptr %t592, i64 %t594)
  store i32 %t595, ptr %l320
  br label %bb132
bb132:
  %t596 = load i32, ptr %l320, !tbaa !23
  %t597 = sext i32 %t596 to i64
  store i64 %t597, ptr %l9, !tbaa !24
  call void @__olang_scope_close(ptr %s16)
  br label %bb323
bb133:
  %t599 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t601 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v1, ptr %s0, { i64, ptr } %t599, { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d14, i32 0, i32 1) })
  store i1 %t601, ptr %l323
  br label %bb134
bb134:
  %t602 = load i1, ptr %l323, !tbaa !21
  br i1 %t602, label %bb135, label %bb136
bb135:
  br label %bb137
bb136:
  br label %bb143
bb137:
  store %olang.scope zeroinitializer, ptr %s17
  %t603 = load ptr, ptr %l0, !tbaa !29
  store ptr %t603, ptr %l324, !tbaa !29
  %t604 = load i64, ptr %l1, !tbaa !24
  store i64 %t604, ptr %l325, !tbaa !24
  %t605 = load { ptr, ptr }, ptr %l8
  %t607 = extractvalue { ptr, ptr } %t605, 0
  %t608 = extractvalue { ptr, ptr } %t605, 1
  %t609 = call { i64, [4 x i64] } %t607(ptr %t608, i64 0)
  store { i64, [4 x i64] } %t609, ptr %l327
  br label %bb138
bb138:
  %t610 = load ptr, ptr %l324, !tbaa !29
  %t611 = load i64, ptr %l325, !tbaa !24
  %t612 = load { i64, [4 x i64] }, ptr %l327
  %t613 = call { i64, ptr } @compiler_2feval_2ecompiler_2feval_3aMachine_2ebytesOf(ptr %v0, ptr %s17, ptr %t610, i64 %t611, { i64, [4 x i64] } %t612)
  store { i64, ptr } %t613, ptr %l328
  br label %bb139
bb139:
  %t614 = load { i64, ptr }, ptr %l328, !tbaa !27
  store { i64, ptr } %t614, ptr %l30, !tbaa !27
  %t615 = load { i64, ptr }, ptr %l30, !tbaa !27
  %t617 = extractvalue { i64, ptr } %t615, 1
  %t618 = extractvalue { i64, ptr } %t615, 0
  %t619 = call i32 @__olang_mkdtemp(ptr %t617)
  store i32 %t619, ptr %l330
  br label %bb140
bb140:
  %t620 = load i32, ptr %l330, !tbaa !23
  %t621 = sext i32 %t620 to i64
  store i64 %t621, ptr %l9, !tbaa !24
  %t623 = load ptr, ptr %l0, !tbaa !29
  store ptr %t623, ptr %l332, !tbaa !29
  %t624 = load i64, ptr %l1, !tbaa !24
  store i64 %t624, ptr %l333, !tbaa !24
  %t625 = load { ptr, ptr }, ptr %l8
  %t627 = extractvalue { ptr, ptr } %t625, 0
  %t628 = extractvalue { ptr, ptr } %t625, 1
  %t629 = call { i64, [4 x i64] } %t627(ptr %t628, i64 0)
  store { i64, [4 x i64] } %t629, ptr %l335
  br label %bb141
bb141:
  %t630 = load { i64, ptr }, ptr %l30, !tbaa !27
  %t631 = load { i64, ptr }, ptr %l30, !tbaa !27
  %t633 = extractvalue { i64, ptr } %t631, 0
  %t634 = load ptr, ptr %l332, !tbaa !29
  %t635 = load i64, ptr %l333, !tbaa !24
  %t636 = load { i64, [4 x i64] }, ptr %l335
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2eputBytes(ptr %v0, ptr %s17, ptr %t634, i64 %t635, { i64, [4 x i64] } %t636, { i64, ptr } %t630, i64 %t633)
  br label %bb142
bb142:
  call void @__olang_scope_close(ptr %s17)
  br label %bb323
bb143:
  %t639 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t641 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v1, ptr %s0, { i64, ptr } %t639, { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d15, i32 0, i32 1) })
  store i1 %t641, ptr %l340
  br label %bb144
bb144:
  %t642 = load i1, ptr %l340, !tbaa !21
  br i1 %t642, label %bb145, label %bb146
bb145:
  br label %bb150
bb146:
  %t643 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t645 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v1, ptr %s0, { i64, ptr } %t643, { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d16, i32 0, i32 1) })
  store i1 %t645, ptr %l342
  br label %bb147
bb147:
  %t646 = load i1, ptr %l342, !tbaa !21
  br i1 %t646, label %bb148, label %bb149
bb148:
  br label %bb150
bb149:
  br label %bb197
bb150:
  store %olang.scope zeroinitializer, ptr %s18
  %t647 = load ptr, ptr %l0, !tbaa !29
  store ptr %t647, ptr %l343, !tbaa !29
  %t648 = load i64, ptr %l1, !tbaa !24
  store i64 %t648, ptr %l344, !tbaa !24
  %t649 = load { ptr, ptr }, ptr %l8
  %t651 = extractvalue { ptr, ptr } %t649, 0
  %t652 = extractvalue { ptr, ptr } %t649, 1
  %t653 = call { i64, [4 x i64] } %t651(ptr %t652, i64 2)
  store { i64, [4 x i64] } %t653, ptr %l346
  br label %bb151
bb151:
  %t654 = load ptr, ptr %l343, !tbaa !29
  %t655 = load i64, ptr %l344, !tbaa !24
  %t656 = load { i64, [4 x i64] }, ptr %l346
  %t657 = call { i64, ptr } @compiler_2feval_2ecompiler_2feval_3aMachine_2ebytesOf(ptr %v0, ptr %s18, ptr %t654, i64 %t655, { i64, [4 x i64] } %t656)
  store { i64, ptr } %t657, ptr %l347
  br label %bb152
bb152:
  %t658 = load { i64, ptr }, ptr %l347, !tbaa !27
  store { i64, ptr } %t658, ptr %l31, !tbaa !27
  %t659 = load { i64, ptr }, ptr %l31, !tbaa !27
  %t661 = extractvalue { i64, ptr } %t659, 0
  %t663 = sdiv i64 %t661, 8
  store i64 %t663, ptr %l350, !tbaa !24
  %t664 = load i64, ptr %l350, !tbaa !24
  %t665 = icmp sge i64 %t664, 0
  br i1 %t665, label %bb153, label %bb154
bb153:
  %t667 = load i64, ptr %l350, !tbaa !24
  %t668 = icmp sle i64 %t667, 1152921504606846975
  br i1 %t668, label %bb155, label %bb156
bb154:
  call void @__olang_check_failed(ptr @olang_loc_d5c4bb6f444265cb_1686743ce9a847e7)
  unreachable
bb155:
  %t670 = load i64, ptr %l350, !tbaa !24
  %t671 = mul i64 %t670, 8
  %t672 = call ptr @__olang_scope_alloc_zeroed(ptr %s18, i64 %t671)
  %t673 = insertvalue { i64, ptr } undef, i64 %t670, 0
  %t674 = insertvalue { i64, ptr } %t673, ptr %t672, 1
  store { i64, ptr } %t674, ptr %l32, !tbaa !27
  store i64 0, ptr %l33, !tbaa !24
  %t676 = load { i64, ptr }, ptr %l31, !tbaa !27
  %t678 = extractvalue { i64, ptr } %t676, 0
  store i64 %t678, ptr %l34, !tbaa !24
  store i64 1, ptr %l35, !tbaa !24
  %t680 = load i64, ptr %l34, !tbaa !24
  %t681 = load i64, ptr %l33, !tbaa !24
  %t684 = icmp sgt i64 %t680, %t681
  br i1 %t684, label %bb157, label %bb158
bb156:
  call void @__olang_check_failed(ptr @olang_loc_d5c4bb6f444265cb_1686743ce9a847e7)
  unreachable
bb157:
  %t686 = load i64, ptr %l35, !tbaa !24
  %t688 = icmp sgt i64 %t686, 0
  br i1 %t688, label %bb159, label %bb160
bb158:
  store i64 0, ptr %l359, !tbaa !24
  br label %bb162
bb159:
  %t690 = load i64, ptr %l34, !tbaa !24
  %t691 = load i64, ptr %l33, !tbaa !24
  %t694 = sub i64 %t690, %t691
  %t695 = load i64, ptr %l35, !tbaa !24
  %t698 = add i64 %t694, %t695
  %t700 = sub i64 %t698, 1
  %t701 = load i64, ptr %l35, !tbaa !24
  %t704 = sdiv i64 %t700, %t701
  store i64 %t704, ptr %l362, !tbaa !24
  br label %bb161
bb160:
  store i64 0, ptr %l362, !tbaa !24
  br label %bb161
bb161:
  %t706 = load i64, ptr %l362, !tbaa !24
  store i64 %t706, ptr %l359, !tbaa !24
  br label %bb162
bb162:
  %t707 = load i64, ptr %l359, !tbaa !24
  store i64 %t707, ptr %l36, !tbaa !24
  store i64 0, ptr %l37, !tbaa !24
  br label %bb163
bb163:
  %t708 = load i64, ptr %l37, !tbaa !24
  %t709 = load i64, ptr %l36, !tbaa !24
  %t712 = icmp slt i64 %t708, %t709
  %t714 = xor i1 %t712, true
  br i1 %t714, label %bb164, label %bb165
bb164:
  br label %bb168
bb165:
  br label %bb166
bb166:
  %t716 = load i64, ptr %l33, !tbaa !24
  %t717 = load i64, ptr %l37, !tbaa !24
  %t718 = load i64, ptr %l35, !tbaa !24
  %t721 = mul i64 %t717, %t718
  %t724 = add i64 %t716, %t721
  store i64 %t724, ptr %l38, !tbaa !24
  %t726 = load i64, ptr %l38, !tbaa !24
  %t728 = sdiv i64 %t726, 8
  %t729 = load i64, ptr %l38, !tbaa !24
  %t731 = sdiv i64 %t729, 8
  %t733 = getelementptr { i64, ptr }, ptr %l32, i32 0, i32 1
  %t734 = load ptr, ptr %t733, !tbaa !27
  %t735 = getelementptr i64, ptr %t734, i64 %t731
  %t736 = load i64, ptr %t735, !tbaa !85
  %t737 = load i64, ptr %l38, !tbaa !24
  %t739 = getelementptr { i64, ptr }, ptr %l31, i32 0, i32 1
  %t740 = load ptr, ptr %t739, !tbaa !27
  %t741 = getelementptr i8, ptr %t740, i64 %t737
  %t742 = load i8, ptr %t741, !tbaa !32
  %t744 = zext i8 %t742 to i64
  %t745 = load i64, ptr %l38, !tbaa !24
  %t747 = srem i64 %t745, 8
  %t749 = mul i64 8, %t747
  store i64 %t749, ptr %l391, !tbaa !65
  %t752 = load i64, ptr %l391, !tbaa !65
  %t753 = load i64, ptr %l391, !tbaa !65
  %t754 = shl i64 %t744, %t753
  %t757 = or i64 %t736, %t754
  %t760 = getelementptr { i64, ptr }, ptr %l32, i32 0, i32 1
  %t761 = load ptr, ptr %t760, !tbaa !27
  %t762 = getelementptr i64, ptr %t761, i64 %t728
  store i64 %t757, ptr %t762, !tbaa !85
  br label %bb167
bb167:
  %t763 = load i64, ptr %l37, !tbaa !24
  %t765 = add i64 %t763, 1
  store i64 %t765, ptr %l37, !tbaa !24
  br label %bb163
bb168:
  %t767 = load ptr, ptr %l0, !tbaa !29
  store ptr %t767, ptr %l396, !tbaa !29
  %t768 = load i64, ptr %l1, !tbaa !24
  store i64 %t768, ptr %l397, !tbaa !24
  %t769 = load { ptr, ptr }, ptr %l8
  %t771 = extractvalue { ptr, ptr } %t769, 0
  %t772 = extractvalue { ptr, ptr } %t769, 1
  %t773 = call { i64, [4 x i64] } %t771(ptr %t772, i64 0)
  store { i64, [4 x i64] } %t773, ptr %l399
  br label %bb169
bb169:
  %t774 = load ptr, ptr %l396, !tbaa !29
  %t775 = load i64, ptr %l397, !tbaa !24
  %t776 = load { i64, [4 x i64] }, ptr %l399
  %t777 = call { i64, ptr } @compiler_2feval_2ecompiler_2feval_3aMachine_2ebytesOf(ptr %v0, ptr %s18, ptr %t774, i64 %t775, { i64, [4 x i64] } %t776)
  store { i64, ptr } %t777, ptr %l400
  br label %bb170
bb170:
  %t778 = load { i64, ptr }, ptr %l400, !tbaa !27
  store { i64, ptr } %t778, ptr %l39, !tbaa !27
  %t779 = load ptr, ptr %l0, !tbaa !29
  store ptr %t779, ptr %l401, !tbaa !29
  %t780 = load i64, ptr %l1, !tbaa !24
  store i64 %t780, ptr %l402, !tbaa !24
  %t781 = load { ptr, ptr }, ptr %l8
  %t783 = extractvalue { ptr, ptr } %t781, 0
  %t784 = extractvalue { ptr, ptr } %t781, 1
  %t785 = call { i64, [4 x i64] } %t783(ptr %t784, i64 1)
  store { i64, [4 x i64] } %t785, ptr %l404
  br label %bb171
bb171:
  %t786 = load ptr, ptr %l401, !tbaa !29
  %t787 = load i64, ptr %l402, !tbaa !24
  %t788 = load { i64, [4 x i64] }, ptr %l404
  %t789 = call { i64, ptr } @compiler_2feval_2ecompiler_2feval_3aMachine_2ebytesOf(ptr %v0, ptr %s18, ptr %t786, i64 %t787, { i64, [4 x i64] } %t788)
  store { i64, ptr } %t789, ptr %l405
  br label %bb172
bb172:
  %t790 = load { i64, ptr }, ptr %l405, !tbaa !27
  store { i64, ptr } %t790, ptr %l40, !tbaa !27
  %t791 = load ptr, ptr %l0, !tbaa !29
  store ptr %t791, ptr %l406, !tbaa !29
  %t792 = load i64, ptr %l1, !tbaa !24
  store i64 %t792, ptr %l407, !tbaa !24
  %t793 = load { ptr, ptr }, ptr %l8
  %t795 = extractvalue { ptr, ptr } %t793, 0
  %t796 = extractvalue { ptr, ptr } %t793, 1
  %t797 = call { i64, [4 x i64] } %t795(ptr %t796, i64 3)
  store { i64, [4 x i64] } %t797, ptr %l409
  br label %bb173
bb173:
  %t798 = load ptr, ptr %l406, !tbaa !29
  %t799 = load i64, ptr %l407, !tbaa !24
  %t800 = load { i64, [4 x i64] }, ptr %l409
  %t801 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2eintArg(ptr %v0, ptr %t798, i64 %t799, { i64, [4 x i64] } %t800)
  store i64 %t801, ptr %l410
  br label %bb174
bb174:
  %t802 = load i64, ptr %l410, !tbaa !24
  %t803 = trunc i64 %t802 to i8
  store i8 %t803, ptr %l41, !tbaa !22
  %t805 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t807 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v1, ptr %s18, { i64, ptr } %t805, { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d17, i32 0, i32 1) })
  store i1 %t807, ptr %l413
  br label %bb175
bb175:
  %t808 = load i1, ptr %l413, !tbaa !21
  br i1 %t808, label %bb176, label %bb177
bb176:
  %t809 = load { i64, ptr }, ptr %l39, !tbaa !27
  store { i64, ptr } %t809, ptr %l415, !tbaa !27
  %t810 = load { i64, ptr }, ptr %l40, !tbaa !27
  store { i64, ptr } %t810, ptr %l416, !tbaa !27
  %t811 = load { i64, ptr }, ptr %l32, !tbaa !27
  store { i64, ptr } %t811, ptr %l417, !tbaa !27
  %t812 = load i8, ptr %l41, !tbaa !22
  store i8 %t812, ptr %l418, !tbaa !22
  %t813 = load ptr, ptr %l0, !tbaa !29
  store ptr %t813, ptr %l419, !tbaa !29
  %t814 = load i64, ptr %l1, !tbaa !24
  store i64 %t814, ptr %l420, !tbaa !24
  %t815 = load { ptr, ptr }, ptr %l8
  %t817 = extractvalue { ptr, ptr } %t815, 0
  %t818 = extractvalue { ptr, ptr } %t815, 1
  %t819 = call { i64, [4 x i64] } %t817(ptr %t818, i64 4)
  store { i64, [4 x i64] } %t819, ptr %l422
  br label %bb178
bb177:
  %t820 = load { i64, ptr }, ptr %l39, !tbaa !27
  %t821 = load { i64, ptr }, ptr %l40, !tbaa !27
  %t822 = load { i64, ptr }, ptr %l32, !tbaa !27
  %t823 = load i8, ptr %l41, !tbaa !22
  %t825 = extractvalue { i64, ptr } %t820, 1
  %t826 = extractvalue { i64, ptr } %t820, 0
  %t828 = extractvalue { i64, ptr } %t821, 1
  %t829 = extractvalue { i64, ptr } %t821, 0
  %t831 = extractvalue { i64, ptr } %t822, 1
  %t832 = extractvalue { i64, ptr } %t822, 0
  %t834 = call i64 @__olang_dyncall(ptr %t825, ptr %t828, ptr %t831, i8 zeroext %t823)
  store i64 %t834, ptr %l430
  br label %bb181
bb178:
  %t835 = load ptr, ptr %l419, !tbaa !29
  %t836 = load i64, ptr %l420, !tbaa !24
  %t837 = load { i64, [4 x i64] }, ptr %l422
  %t838 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2eintArg(ptr %v0, ptr %t835, i64 %t836, { i64, [4 x i64] } %t837)
  store i64 %t838, ptr %l423
  br label %bb179
bb179:
  %t839 = load { i64, ptr }, ptr %l415, !tbaa !27
  %t840 = extractvalue { i64, ptr } %t839, 1
  %t841 = extractvalue { i64, ptr } %t839, 0
  %t842 = load { i64, ptr }, ptr %l416, !tbaa !27
  %t843 = extractvalue { i64, ptr } %t842, 1
  %t844 = extractvalue { i64, ptr } %t842, 0
  %t845 = load { i64, ptr }, ptr %l417, !tbaa !27
  %t846 = extractvalue { i64, ptr } %t845, 1
  %t847 = extractvalue { i64, ptr } %t845, 0
  %t848 = load i8, ptr %l418, !tbaa !22
  %t849 = load i64, ptr %l423, !tbaa !24
  %t850 = call i64 @__olang_dyncall_var(ptr %t840, ptr %t843, ptr %t846, i8 zeroext %t848, i64 %t849)
  store i64 %t850, ptr %l424
  br label %bb180
bb180:
  %t851 = load i64, ptr %l424, !tbaa !65
  store i64 %t851, ptr %l414, !tbaa !24
  br label %bb182
bb181:
  %t853 = load i64, ptr %l430, !tbaa !65
  store i64 %t853, ptr %l414, !tbaa !24
  br label %bb182
bb182:
  %t855 = load i64, ptr %l414, !tbaa !24
  store i64 %t855, ptr %l9, !tbaa !24
  store i64 0, ptr %l42, !tbaa !24
  %t856 = load { i64, ptr }, ptr %l31, !tbaa !27
  %t858 = extractvalue { i64, ptr } %t856, 0
  store i64 %t858, ptr %l43, !tbaa !24
  store i64 1, ptr %l44, !tbaa !24
  %t860 = load i64, ptr %l43, !tbaa !24
  %t861 = load i64, ptr %l42, !tbaa !24
  %t864 = icmp sgt i64 %t860, %t861
  br i1 %t864, label %bb183, label %bb184
bb183:
  %t866 = load i64, ptr %l44, !tbaa !24
  %t868 = icmp sgt i64 %t866, 0
  br i1 %t868, label %bb185, label %bb186
bb184:
  store i64 0, ptr %l437, !tbaa !24
  br label %bb188
bb185:
  %t870 = load i64, ptr %l43, !tbaa !24
  %t871 = load i64, ptr %l42, !tbaa !24
  %t874 = sub i64 %t870, %t871
  %t875 = load i64, ptr %l44, !tbaa !24
  %t878 = add i64 %t874, %t875
  %t880 = sub i64 %t878, 1
  %t881 = load i64, ptr %l44, !tbaa !24
  %t884 = sdiv i64 %t880, %t881
  store i64 %t884, ptr %l440, !tbaa !24
  br label %bb187
bb186:
  store i64 0, ptr %l440, !tbaa !24
  br label %bb187
bb187:
  %t886 = load i64, ptr %l440, !tbaa !24
  store i64 %t886, ptr %l437, !tbaa !24
  br label %bb188
bb188:
  %t887 = load i64, ptr %l437, !tbaa !24
  store i64 %t887, ptr %l45, !tbaa !24
  store i64 0, ptr %l46, !tbaa !24
  br label %bb189
bb189:
  %t888 = load i64, ptr %l46, !tbaa !24
  %t889 = load i64, ptr %l45, !tbaa !24
  %t892 = icmp slt i64 %t888, %t889
  %t894 = xor i1 %t892, true
  br i1 %t894, label %bb190, label %bb191
bb190:
  br label %bb194
bb191:
  br label %bb192
bb192:
  %t896 = load i64, ptr %l42, !tbaa !24
  %t897 = load i64, ptr %l46, !tbaa !24
  %t898 = load i64, ptr %l44, !tbaa !24
  %t901 = mul i64 %t897, %t898
  %t904 = add i64 %t896, %t901
  store i64 %t904, ptr %l47, !tbaa !24
  %t906 = load i64, ptr %l47, !tbaa !24
  %t907 = load i64, ptr %l47, !tbaa !24
  %t909 = sdiv i64 %t907, 8
  %t911 = getelementptr { i64, ptr }, ptr %l32, i32 0, i32 1
  %t912 = load ptr, ptr %t911, !tbaa !27
  %t913 = getelementptr i64, ptr %t912, i64 %t909
  %t914 = load i64, ptr %t913, !tbaa !85
  %t915 = load i64, ptr %l47, !tbaa !24
  %t917 = srem i64 %t915, 8
  %t919 = mul i64 8, %t917
  store i64 %t919, ptr %l465, !tbaa !65
  %t922 = load i64, ptr %l465, !tbaa !65
  %t923 = load i64, ptr %l465, !tbaa !65
  %t924 = lshr i64 %t914, %t923
  %t926 = and i64 %t924, 255
  %t928 = trunc i64 %t926 to i8
  %t931 = getelementptr { i64, ptr }, ptr %l31, i32 0, i32 1
  %t932 = load ptr, ptr %t931, !tbaa !27
  %t933 = getelementptr i8, ptr %t932, i64 %t906
  store i8 %t928, ptr %t933, !tbaa !32
  br label %bb193
bb193:
  %t934 = load i64, ptr %l46, !tbaa !24
  %t936 = add i64 %t934, 1
  store i64 %t936, ptr %l46, !tbaa !24
  br label %bb189
bb194:
  %t938 = load ptr, ptr %l0, !tbaa !29
  store ptr %t938, ptr %l471, !tbaa !29
  %t939 = load i64, ptr %l1, !tbaa !24
  store i64 %t939, ptr %l472, !tbaa !24
  %t940 = load { ptr, ptr }, ptr %l8
  %t942 = extractvalue { ptr, ptr } %t940, 0
  %t943 = extractvalue { ptr, ptr } %t940, 1
  %t944 = call { i64, [4 x i64] } %t942(ptr %t943, i64 2)
  store { i64, [4 x i64] } %t944, ptr %l474
  br label %bb195
bb195:
  %t945 = load { i64, ptr }, ptr %l31, !tbaa !27
  %t946 = load { i64, ptr }, ptr %l31, !tbaa !27
  %t948 = extractvalue { i64, ptr } %t946, 0
  %t949 = load ptr, ptr %l471, !tbaa !29
  %t950 = load i64, ptr %l472, !tbaa !24
  %t951 = load { i64, [4 x i64] }, ptr %l474
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2eputBytes(ptr %v0, ptr %s18, ptr %t949, i64 %t950, { i64, [4 x i64] } %t951, { i64, ptr } %t945, i64 %t948)
  br label %bb196
bb196:
  call void @__olang_scope_close(ptr %s18)
  br label %bb323
bb197:
  %t954 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t956 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v1, ptr %s0, { i64, ptr } %t954, { i64, ptr } { i64 21, ptr getelementptr inbounds (<{ i64, [21 x i8] }>, ptr @.d18, i32 0, i32 1) })
  store i1 %t956, ptr %l479
  br label %bb198
bb198:
  %t957 = load i1, ptr %l479, !tbaa !21
  br i1 %t957, label %bb199, label %bb200
bb199:
  br label %bb201
bb200:
  br label %bb209
bb201:
  store %olang.scope zeroinitializer, ptr %s25
  %t958 = load ptr, ptr %l0, !tbaa !29
  store ptr %t958, ptr %l480, !tbaa !29
  %t959 = load i64, ptr %l1, !tbaa !24
  store i64 %t959, ptr %l481, !tbaa !24
  %t960 = load { ptr, ptr }, ptr %l8
  %t962 = extractvalue { ptr, ptr } %t960, 0
  %t963 = extractvalue { ptr, ptr } %t960, 1
  %t964 = call { i64, [4 x i64] } %t962(ptr %t963, i64 0)
  store { i64, [4 x i64] } %t964, ptr %l483
  br label %bb202
bb202:
  %t965 = load ptr, ptr %l480, !tbaa !29
  %t966 = load i64, ptr %l481, !tbaa !24
  %t967 = load { i64, [4 x i64] }, ptr %l483
  %t968 = call { i64, ptr } @compiler_2feval_2ecompiler_2feval_3aMachine_2ebytesOf(ptr %v0, ptr %s25, ptr %t965, i64 %t966, { i64, [4 x i64] } %t967)
  store { i64, ptr } %t968, ptr %l484
  br label %bb203
bb203:
  %t969 = load ptr, ptr %l0, !tbaa !29
  store ptr %t969, ptr %l485, !tbaa !29
  %t970 = load i64, ptr %l1, !tbaa !24
  store i64 %t970, ptr %l486, !tbaa !24
  %t971 = load { ptr, ptr }, ptr %l8
  %t973 = extractvalue { ptr, ptr } %t971, 0
  %t974 = extractvalue { ptr, ptr } %t971, 1
  %t975 = call { i64, [4 x i64] } %t973(ptr %t974, i64 1)
  store { i64, [4 x i64] } %t975, ptr %l488
  br label %bb204
bb204:
  %t976 = load ptr, ptr %l485, !tbaa !29
  %t977 = load i64, ptr %l486, !tbaa !24
  %t978 = load { i64, [4 x i64] }, ptr %l488
  %t979 = call { i64, ptr } @compiler_2feval_2ecompiler_2feval_3aMachine_2ebytesOf(ptr %v0, ptr %s25, ptr %t976, i64 %t977, { i64, [4 x i64] } %t978)
  store { i64, ptr } %t979, ptr %l489
  br label %bb205
bb205:
  %t980 = load ptr, ptr %l0, !tbaa !29
  store ptr %t980, ptr %l490, !tbaa !29
  %t981 = load i64, ptr %l1, !tbaa !24
  store i64 %t981, ptr %l491, !tbaa !24
  %t982 = load { ptr, ptr }, ptr %l8
  %t984 = extractvalue { ptr, ptr } %t982, 0
  %t985 = extractvalue { ptr, ptr } %t982, 1
  %t986 = call { i64, [4 x i64] } %t984(ptr %t985, i64 2)
  store { i64, [4 x i64] } %t986, ptr %l493
  br label %bb206
bb206:
  %t987 = load ptr, ptr %l490, !tbaa !29
  %t988 = load i64, ptr %l491, !tbaa !24
  %t989 = load { i64, [4 x i64] }, ptr %l493
  %t990 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2eintArg(ptr %v0, ptr %t987, i64 %t988, { i64, [4 x i64] } %t989)
  store i64 %t990, ptr %l494
  br label %bb207
bb207:
  %t991 = load i64, ptr %l494, !tbaa !24
  %t992 = trunc i64 %t991 to i8
  %t993 = load { i64, ptr }, ptr %l484, !tbaa !27
  %t994 = extractvalue { i64, ptr } %t993, 1
  %t995 = extractvalue { i64, ptr } %t993, 0
  %t996 = load { i64, ptr }, ptr %l489, !tbaa !27
  %t997 = extractvalue { i64, ptr } %t996, 1
  %t998 = extractvalue { i64, ptr } %t996, 0
  %t1000 = call i32 @__olang_dyncall_check(ptr %t994, ptr %t997, i8 zeroext %t992)
  store i32 %t1000, ptr %l496
  br label %bb208
bb208:
  %t1001 = load i32, ptr %l496, !tbaa !23
  %t1002 = sext i32 %t1001 to i64
  store i64 %t1002, ptr %l9, !tbaa !24
  call void @__olang_scope_close(ptr %s25)
  br label %bb323
bb209:
  %t1004 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t1006 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v1, ptr %s0, { i64, ptr } %t1004, { i64, ptr } { i64 25, ptr getelementptr inbounds (<{ i64, [25 x i8] }>, ptr @.d19, i32 0, i32 1) })
  store i1 %t1006, ptr %l499
  br label %bb210
bb210:
  %t1007 = load i1, ptr %l499, !tbaa !21
  br i1 %t1007, label %bb211, label %bb212
bb211:
  br label %bb213
bb212:
  br label %bb223
bb213:
  store %olang.scope zeroinitializer, ptr %s26
  %t1008 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1008, ptr %l500, !tbaa !29
  %t1009 = load i64, ptr %l1, !tbaa !24
  store i64 %t1009, ptr %l501, !tbaa !24
  %t1010 = load { ptr, ptr }, ptr %l8
  %t1012 = extractvalue { ptr, ptr } %t1010, 0
  %t1013 = extractvalue { ptr, ptr } %t1010, 1
  %t1014 = call { i64, [4 x i64] } %t1012(ptr %t1013, i64 0)
  store { i64, [4 x i64] } %t1014, ptr %l503
  br label %bb214
bb214:
  %t1015 = load ptr, ptr %l500, !tbaa !29
  %t1016 = load i64, ptr %l501, !tbaa !24
  %t1017 = load { i64, [4 x i64] }, ptr %l503
  %t1018 = call { i64, ptr } @compiler_2feval_2ecompiler_2feval_3aMachine_2ebytesOf(ptr %v0, ptr %s26, ptr %t1015, i64 %t1016, { i64, [4 x i64] } %t1017)
  store { i64, ptr } %t1018, ptr %l504
  br label %bb215
bb215:
  %t1019 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1019, ptr %l505, !tbaa !29
  %t1020 = load i64, ptr %l1, !tbaa !24
  store i64 %t1020, ptr %l506, !tbaa !24
  %t1021 = load { ptr, ptr }, ptr %l8
  %t1023 = extractvalue { ptr, ptr } %t1021, 0
  %t1024 = extractvalue { ptr, ptr } %t1021, 1
  %t1025 = call { i64, [4 x i64] } %t1023(ptr %t1024, i64 1)
  store { i64, [4 x i64] } %t1025, ptr %l508
  br label %bb216
bb216:
  %t1026 = load ptr, ptr %l505, !tbaa !29
  %t1027 = load i64, ptr %l506, !tbaa !24
  %t1028 = load { i64, [4 x i64] }, ptr %l508
  %t1029 = call { i64, ptr } @compiler_2feval_2ecompiler_2feval_3aMachine_2ebytesOf(ptr %v0, ptr %s26, ptr %t1026, i64 %t1027, { i64, [4 x i64] } %t1028)
  store { i64, ptr } %t1029, ptr %l509
  br label %bb217
bb217:
  %t1030 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1030, ptr %l510, !tbaa !29
  %t1031 = load i64, ptr %l1, !tbaa !24
  store i64 %t1031, ptr %l511, !tbaa !24
  %t1032 = load { ptr, ptr }, ptr %l8
  %t1034 = extractvalue { ptr, ptr } %t1032, 0
  %t1035 = extractvalue { ptr, ptr } %t1032, 1
  %t1036 = call { i64, [4 x i64] } %t1034(ptr %t1035, i64 2)
  store { i64, [4 x i64] } %t1036, ptr %l513
  br label %bb218
bb218:
  %t1037 = load ptr, ptr %l510, !tbaa !29
  %t1038 = load i64, ptr %l511, !tbaa !24
  %t1039 = load { i64, [4 x i64] }, ptr %l513
  %t1040 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2eintArg(ptr %v0, ptr %t1037, i64 %t1038, { i64, [4 x i64] } %t1039)
  store i64 %t1040, ptr %l514
  br label %bb219
bb219:
  %t1041 = load i64, ptr %l514, !tbaa !24
  %t1042 = trunc i64 %t1041 to i8
  store i8 %t1042, ptr %l515, !tbaa !22
  %t1043 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1043, ptr %l516, !tbaa !29
  %t1044 = load i64, ptr %l1, !tbaa !24
  store i64 %t1044, ptr %l517, !tbaa !24
  %t1045 = load { ptr, ptr }, ptr %l8
  %t1047 = extractvalue { ptr, ptr } %t1045, 0
  %t1048 = extractvalue { ptr, ptr } %t1045, 1
  %t1049 = call { i64, [4 x i64] } %t1047(ptr %t1048, i64 3)
  store { i64, [4 x i64] } %t1049, ptr %l519
  br label %bb220
bb220:
  %t1050 = load ptr, ptr %l516, !tbaa !29
  %t1051 = load i64, ptr %l517, !tbaa !24
  %t1052 = load { i64, [4 x i64] }, ptr %l519
  %t1053 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2eintArg(ptr %v0, ptr %t1050, i64 %t1051, { i64, [4 x i64] } %t1052)
  store i64 %t1053, ptr %l520
  br label %bb221
bb221:
  %t1054 = load { i64, ptr }, ptr %l504, !tbaa !27
  %t1055 = extractvalue { i64, ptr } %t1054, 1
  %t1056 = extractvalue { i64, ptr } %t1054, 0
  %t1057 = load { i64, ptr }, ptr %l509, !tbaa !27
  %t1058 = extractvalue { i64, ptr } %t1057, 1
  %t1059 = extractvalue { i64, ptr } %t1057, 0
  %t1060 = load i8, ptr %l515, !tbaa !22
  %t1061 = load i64, ptr %l520, !tbaa !24
  %t1062 = call i32 @__olang_dyncall_var_check(ptr %t1055, ptr %t1058, i8 zeroext %t1060, i64 %t1061)
  store i32 %t1062, ptr %l521
  br label %bb222
bb222:
  %t1063 = load i32, ptr %l521, !tbaa !23
  %t1064 = sext i32 %t1063 to i64
  store i64 %t1064, ptr %l9, !tbaa !24
  call void @__olang_scope_close(ptr %s26)
  br label %bb323
bb223:
  %t1066 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t1068 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v1, ptr %s0, { i64, ptr } %t1066, { i64, ptr } { i64 20, ptr getelementptr inbounds (<{ i64, [20 x i8] }>, ptr @.d20, i32 0, i32 1) })
  store i1 %t1068, ptr %l524
  br label %bb224
bb224:
  %t1069 = load i1, ptr %l524, !tbaa !21
  br i1 %t1069, label %bb225, label %bb226
bb225:
  br label %bb230
bb226:
  %t1070 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t1072 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v1, ptr %s0, { i64, ptr } %t1070, { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d21, i32 0, i32 1) })
  store i1 %t1072, ptr %l526
  br label %bb227
bb227:
  %t1073 = load i1, ptr %l526, !tbaa !21
  br i1 %t1073, label %bb228, label %bb229
bb228:
  br label %bb230
bb229:
  br label %bb257
bb230:
  store %olang.scope zeroinitializer, ptr %s27
  %t1074 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t1076 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v1, ptr %s27, { i64, ptr } %t1074, { i64, ptr } { i64 20, ptr getelementptr inbounds (<{ i64, [20 x i8] }>, ptr @.d22, i32 0, i32 1) })
  store i1 %t1076, ptr %l528
  br label %bb231
bb231:
  %t1077 = load i1, ptr %l528, !tbaa !21
  br i1 %t1077, label %bb232, label %bb233
bb232:
  %t1078 = load ptr, ptr %l0, !tbaa !29
  %t1080 = getelementptr %"compiler/eval:Machine", ptr %t1078, i32 0, i32 81
  %t1081 = load { i64, ptr }, ptr %t1080, !tbaa !27
  store { i64, ptr } %t1081, ptr %l529, !tbaa !27
  br label %bb234
bb233:
  %t1083 = load ptr, ptr %l0, !tbaa !29
  %t1085 = getelementptr %"compiler/eval:Machine", ptr %t1083, i32 0, i32 80
  %t1086 = load { i64, ptr }, ptr %t1085, !tbaa !27
  store { i64, ptr } %t1086, ptr %l529, !tbaa !27
  br label %bb234
bb234:
  %t1088 = load { i64, ptr }, ptr %l529, !tbaa !27
  store { i64, ptr } %t1088, ptr %l48, !tbaa !27
  store i64 -1, ptr %l9, !tbaa !24
  %t1089 = load { i64, ptr }, ptr %l48, !tbaa !27
  %t1091 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s27, { i64, ptr } %t1089, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d23, i32 0, i32 1) })
  store i1 %t1091, ptr %l535
  br label %bb235
bb235:
  %t1092 = load i1, ptr %l535, !tbaa !21
  %t1093 = xor i1 %t1092, true
  br i1 %t1093, label %bb236, label %bb237
bb236:
  store %olang.scope zeroinitializer, ptr %s28
  %t1095 = load { i64, ptr }, ptr %l48, !tbaa !27
  %t1097 = extractvalue { i64, ptr } %t1095, 0
  store i64 %t1097, ptr %l538, !tbaa !24
  %t1098 = load i64, ptr %l538, !tbaa !24
  %t1099 = icmp sge i64 %t1098, 0
  br i1 %t1099, label %bb238, label %bb239
bb237:
  br label %bb256
bb238:
  %t1101 = load i64, ptr %l538, !tbaa !24
  %t1102 = mul i64 %t1101, 1
  %t1103 = call ptr @__olang_scope_alloc_zeroed(ptr %s28, i64 %t1102)
  %t1104 = insertvalue { i64, ptr } undef, i64 %t1101, 0
  %t1105 = insertvalue { i64, ptr } %t1104, ptr %t1103, 1
  store { i64, ptr } %t1105, ptr %l49, !tbaa !27
  store i64 0, ptr %l50, !tbaa !24
  %t1107 = load { i64, ptr }, ptr %l48, !tbaa !27
  %t1109 = extractvalue { i64, ptr } %t1107, 0
  store i64 %t1109, ptr %l51, !tbaa !24
  store i64 1, ptr %l52, !tbaa !24
  %t1111 = load i64, ptr %l51, !tbaa !24
  %t1112 = load i64, ptr %l50, !tbaa !24
  %t1115 = icmp sgt i64 %t1111, %t1112
  br i1 %t1115, label %bb240, label %bb241
bb239:
  call void @__olang_check_failed(ptr @olang_loc_72e3b80bf5d68934_41b0c6a64027e678)
  unreachable
bb240:
  %t1117 = load i64, ptr %l52, !tbaa !24
  %t1119 = icmp sgt i64 %t1117, 0
  br i1 %t1119, label %bb242, label %bb243
bb241:
  store i64 0, ptr %l546, !tbaa !24
  br label %bb245
bb242:
  %t1121 = load i64, ptr %l51, !tbaa !24
  %t1122 = load i64, ptr %l50, !tbaa !24
  %t1125 = sub i64 %t1121, %t1122
  %t1126 = load i64, ptr %l52, !tbaa !24
  %t1129 = add i64 %t1125, %t1126
  %t1131 = sub i64 %t1129, 1
  %t1132 = load i64, ptr %l52, !tbaa !24
  %t1135 = sdiv i64 %t1131, %t1132
  store i64 %t1135, ptr %l549, !tbaa !24
  br label %bb244
bb243:
  store i64 0, ptr %l549, !tbaa !24
  br label %bb244
bb244:
  %t1137 = load i64, ptr %l549, !tbaa !24
  store i64 %t1137, ptr %l546, !tbaa !24
  br label %bb245
bb245:
  %t1138 = load i64, ptr %l546, !tbaa !24
  store i64 %t1138, ptr %l53, !tbaa !24
  store i64 0, ptr %l54, !tbaa !24
  br label %bb246
bb246:
  %t1139 = load i64, ptr %l54, !tbaa !24
  %t1140 = load i64, ptr %l53, !tbaa !24
  %t1143 = icmp slt i64 %t1139, %t1140
  %t1145 = xor i1 %t1143, true
  br i1 %t1145, label %bb247, label %bb248
bb247:
  br label %bb251
bb248:
  br label %bb249
bb249:
  %t1147 = load i64, ptr %l50, !tbaa !24
  %t1148 = load i64, ptr %l54, !tbaa !24
  %t1149 = load i64, ptr %l52, !tbaa !24
  %t1152 = mul i64 %t1148, %t1149
  %t1155 = add i64 %t1147, %t1152
  store i64 %t1155, ptr %l55, !tbaa !24
  %t1157 = load i64, ptr %l55, !tbaa !24
  %t1158 = load { i64, ptr }, ptr %l48, !tbaa !27
  store { i64, ptr } %t1158, ptr %l568, !tbaa !27
  %t1159 = load i64, ptr %l55, !tbaa !24
  %t1161 = getelementptr { i64, ptr }, ptr %l568, i32 0, i32 1
  %t1162 = load ptr, ptr %t1161, !tbaa !27
  %t1163 = getelementptr i8, ptr %t1162, i64 %t1159
  %t1164 = load i8, ptr %t1163, !tbaa !32
  %t1168 = getelementptr { i64, ptr }, ptr %l49, i32 0, i32 1
  %t1169 = load ptr, ptr %t1168, !tbaa !27
  %t1170 = getelementptr i8, ptr %t1169, i64 %t1157
  store i8 %t1164, ptr %t1170, !tbaa !32
  br label %bb250
bb250:
  %t1171 = load i64, ptr %l54, !tbaa !24
  %t1173 = add i64 %t1171, 1
  store i64 %t1173, ptr %l54, !tbaa !24
  br label %bb246
bb251:
  %t1175 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1175, ptr %l574, !tbaa !29
  %t1176 = load i64, ptr %l1, !tbaa !24
  store i64 %t1176, ptr %l575, !tbaa !24
  %t1177 = load { ptr, ptr }, ptr %l8
  %t1179 = extractvalue { ptr, ptr } %t1177, 0
  %t1180 = extractvalue { ptr, ptr } %t1177, 1
  %t1181 = call { i64, [4 x i64] } %t1179(ptr %t1180, i64 0)
  store { i64, [4 x i64] } %t1181, ptr %l577
  br label %bb252
bb252:
  %t1182 = load { i64, ptr }, ptr %l49, !tbaa !27
  store { i64, ptr } %t1182, ptr %l578, !tbaa !27
  %t1183 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1183, ptr %l579, !tbaa !29
  %t1184 = load i64, ptr %l1, !tbaa !24
  store i64 %t1184, ptr %l580, !tbaa !24
  %t1185 = load { ptr, ptr }, ptr %l8
  %t1187 = extractvalue { ptr, ptr } %t1185, 0
  %t1188 = extractvalue { ptr, ptr } %t1185, 1
  %t1189 = call { i64, [4 x i64] } %t1187(ptr %t1188, i64 1)
  store { i64, [4 x i64] } %t1189, ptr %l582
  br label %bb253
bb253:
  %t1190 = load ptr, ptr %l579, !tbaa !29
  %t1191 = load i64, ptr %l580, !tbaa !24
  %t1192 = load { i64, [4 x i64] }, ptr %l582
  %t1193 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2eintArg(ptr %v0, ptr %t1190, i64 %t1191, { i64, [4 x i64] } %t1192)
  store i64 %t1193, ptr %l583
  br label %bb254
bb254:
  %t1194 = load ptr, ptr %l574, !tbaa !29
  %t1195 = load i64, ptr %l575, !tbaa !24
  %t1196 = load { i64, [4 x i64] }, ptr %l577
  %t1197 = load { i64, ptr }, ptr %l578, !tbaa !27
  %t1198 = load i64, ptr %l583, !tbaa !24
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2eputBytes(ptr %v0, ptr %s28, ptr %t1194, i64 %t1195, { i64, [4 x i64] } %t1196, { i64, ptr } %t1197, i64 %t1198)
  br label %bb255
bb255:
  %t1199 = load { i64, ptr }, ptr %l48, !tbaa !27
  %t1201 = extractvalue { i64, ptr } %t1199, 0
  store i64 %t1201, ptr %l9, !tbaa !24
  call void @__olang_scope_close(ptr %s28)
  br label %bb256
bb256:
  call void @__olang_scope_close(ptr %s27)
  br label %bb323
bb257:
  %t1203 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t1205 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v1, ptr %s0, { i64, ptr } %t1203, { i64, ptr } { i64 18, ptr getelementptr inbounds (<{ i64, [18 x i8] }>, ptr @.d24, i32 0, i32 1) })
  store i1 %t1205, ptr %l587
  br label %bb258
bb258:
  %t1206 = load i1, ptr %l587, !tbaa !21
  br i1 %t1206, label %bb259, label %bb260
bb259:
  br label %bb261
bb260:
  br label %bb262
bb261:
  store i64 -1, ptr %l9, !tbaa !24
  br label %bb323
bb262:
  %t1207 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t1209 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v1, ptr %s0, { i64, ptr } %t1207, { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d25, i32 0, i32 1) })
  store i1 %t1209, ptr %l589
  br label %bb263
bb263:
  %t1210 = load i1, ptr %l589, !tbaa !21
  br i1 %t1210, label %bb264, label %bb265
bb264:
  br label %bb272
bb265:
  %t1211 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t1213 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v1, ptr %s0, { i64, ptr } %t1211, { i64, ptr } { i64 25, ptr getelementptr inbounds (<{ i64, [25 x i8] }>, ptr @.d26, i32 0, i32 1) })
  store i1 %t1213, ptr %l591
  br label %bb266
bb266:
  %t1214 = load i1, ptr %l591, !tbaa !21
  br i1 %t1214, label %bb267, label %bb268
bb267:
  br label %bb272
bb268:
  %t1215 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t1217 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v1, ptr %s0, { i64, ptr } %t1215, { i64, ptr } { i64 24, ptr getelementptr inbounds (<{ i64, [24 x i8] }>, ptr @.d27, i32 0, i32 1) })
  store i1 %t1217, ptr %l593
  br label %bb269
bb269:
  %t1218 = load i1, ptr %l593, !tbaa !21
  br i1 %t1218, label %bb270, label %bb271
bb270:
  br label %bb272
bb271:
  br label %bb273
bb272:
  store i64 0, ptr %l9, !tbaa !24
  br label %bb323
bb273:
  %t1219 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t1221 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v1, ptr %s0, { i64, ptr } %t1219, { i64, ptr } { i64 26, ptr getelementptr inbounds (<{ i64, [26 x i8] }>, ptr @.d28, i32 0, i32 1) })
  store i1 %t1221, ptr %l595
  br label %bb274
bb274:
  %t1222 = load i1, ptr %l595, !tbaa !21
  br i1 %t1222, label %bb275, label %bb276
bb275:
  br label %bb277
bb276:
  br label %bb278
bb277:
  store i64 -1, ptr %l9, !tbaa !24
  br label %bb323
bb278:
  %t1223 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t1225 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v1, ptr %s0, { i64, ptr } %t1223, { i64, ptr } { i64 18, ptr getelementptr inbounds (<{ i64, [18 x i8] }>, ptr @.d29, i32 0, i32 1) })
  store i1 %t1225, ptr %l597
  br label %bb279
bb279:
  %t1226 = load i1, ptr %l597, !tbaa !21
  br i1 %t1226, label %bb280, label %bb281
bb280:
  br label %bb282
bb281:
  br label %bb283
bb282:
  br label %bb323
bb283:
  %t1227 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t1229 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v1, ptr %s0, { i64, ptr } %t1227, { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d30, i32 0, i32 1) })
  store i1 %t1229, ptr %l599
  br label %bb284
bb284:
  %t1230 = load i1, ptr %l599, !tbaa !21
  br i1 %t1230, label %bb285, label %bb286
bb285:
  br label %bb287
bb286:
  br label %bb288
bb287:
  %t1231 = load ptr, ptr %l0, !tbaa !29
  %t1233 = getelementptr %"compiler/eval:Machine", ptr %t1231, i32 0, i32 82
  store i1 true, ptr %t1233, !tbaa !21
  br label %bb323
bb288:
  %t1234 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t1236 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v1, ptr %s0, { i64, ptr } %t1234, { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d31, i32 0, i32 1) })
  store i1 %t1236, ptr %l602
  br label %bb289
bb289:
  %t1237 = load i1, ptr %l602, !tbaa !21
  br i1 %t1237, label %bb290, label %bb291
bb290:
  br label %bb292
bb291:
  br label %bb317
bb292:
  %t1238 = load ptr, ptr %l0, !tbaa !29
  %t1240 = getelementptr %"compiler/eval:Machine", ptr %t1238, i32 0, i32 1
  %t1241 = load i32, ptr %t1240, !range !{i32 0, i32 2}
  %t1243 = trunc i64 1 to i32
  %t1244 = icmp eq i32 %t1241, %t1243
  br i1 %t1244, label %bb293, label %bb294
bb293:
  store %olang.scope zeroinitializer, ptr %s38
  %t1246 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1246, ptr %l606, !tbaa !29
  %t1247 = load i64, ptr %l1, !tbaa !24
  store i64 %t1247, ptr %l607, !tbaa !24
  %t1248 = load { ptr, ptr }, ptr %l8
  %t1250 = extractvalue { ptr, ptr } %t1248, 0
  %t1251 = extractvalue { ptr, ptr } %t1248, 1
  %t1252 = call { i64, [4 x i64] } %t1250(ptr %t1251, i64 0)
  store { i64, [4 x i64] } %t1252, ptr %l609
  br label %bb295
bb294:
  br label %bb316
bb295:
  %t1253 = load ptr, ptr %l606, !tbaa !29
  %t1254 = load i64, ptr %l607, !tbaa !24
  %t1255 = load { i64, [4 x i64] }, ptr %l609
  %t1256 = call { i64, ptr } @compiler_2feval_2ecompiler_2feval_3aMachine_2ebytesOf(ptr %v0, ptr %s38, ptr %t1253, i64 %t1254, { i64, [4 x i64] } %t1255)
  store { i64, ptr } %t1256, ptr %l610
  br label %bb296
bb296:
  %t1257 = load { i64, ptr }, ptr %l610, !tbaa !27
  store { i64, ptr } %t1257, ptr %l56, !tbaa !27
  %t1258 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1258, ptr %l611, !tbaa !29
  %t1259 = load i64, ptr %l1, !tbaa !24
  store i64 %t1259, ptr %l612, !tbaa !24
  %t1260 = load { ptr, ptr }, ptr %l8
  %t1262 = extractvalue { ptr, ptr } %t1260, 0
  %t1263 = extractvalue { ptr, ptr } %t1260, 1
  %t1264 = call { i64, [4 x i64] } %t1262(ptr %t1263, i64 1)
  store { i64, [4 x i64] } %t1264, ptr %l614
  br label %bb297
bb297:
  %t1265 = load ptr, ptr %l611, !tbaa !29
  %t1266 = load i64, ptr %l612, !tbaa !24
  %t1267 = load { i64, [4 x i64] }, ptr %l614
  %t1268 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2eintArg(ptr %v0, ptr %t1265, i64 %t1266, { i64, [4 x i64] } %t1267)
  store i64 %t1268, ptr %l615
  br label %bb298
bb298:
  %t1269 = load i64, ptr %l615, !tbaa !24
  store i64 %t1269, ptr %l57, !tbaa !24
  %t1270 = call %"std/prelude/text:StringBuilder" @std_2fprelude_2ftext_3aStringBuilder_2ector(ptr %s38)
  store %"std/prelude/text:StringBuilder" %t1270, ptr %l616
  br label %bb299
bb299:
  %t1271 = load %"std/prelude/text:StringBuilder", ptr %l616
  store %"std/prelude/text:StringBuilder" %t1271, ptr %l58
  store i64 0, ptr %l59, !tbaa !24
  %t1272 = load i64, ptr %l57, !tbaa !24
  store i64 %t1272, ptr %l60, !tbaa !24
  store i64 1, ptr %l61, !tbaa !24
  %t1274 = load i64, ptr %l60, !tbaa !24
  %t1275 = load i64, ptr %l59, !tbaa !24
  %t1278 = icmp sgt i64 %t1274, %t1275
  br i1 %t1278, label %bb300, label %bb301
bb300:
  %t1280 = load i64, ptr %l61, !tbaa !24
  %t1282 = icmp sgt i64 %t1280, 0
  br i1 %t1282, label %bb302, label %bb303
bb301:
  store i64 0, ptr %l621, !tbaa !24
  br label %bb305
bb302:
  %t1284 = load i64, ptr %l60, !tbaa !24
  %t1285 = load i64, ptr %l59, !tbaa !24
  %t1288 = sub i64 %t1284, %t1285
  %t1289 = load i64, ptr %l61, !tbaa !24
  %t1292 = add i64 %t1288, %t1289
  %t1294 = sub i64 %t1292, 1
  %t1295 = load i64, ptr %l61, !tbaa !24
  %t1298 = sdiv i64 %t1294, %t1295
  store i64 %t1298, ptr %l624, !tbaa !24
  br label %bb304
bb303:
  store i64 0, ptr %l624, !tbaa !24
  br label %bb304
bb304:
  %t1300 = load i64, ptr %l624, !tbaa !24
  store i64 %t1300, ptr %l621, !tbaa !24
  br label %bb305
bb305:
  %t1301 = load i64, ptr %l621, !tbaa !24
  store i64 %t1301, ptr %l62, !tbaa !24
  store i64 0, ptr %l63, !tbaa !24
  br label %bb306
bb306:
  %t1302 = load i64, ptr %l63, !tbaa !24
  %t1303 = load i64, ptr %l62, !tbaa !24
  %t1306 = icmp slt i64 %t1302, %t1303
  %t1308 = xor i1 %t1306, true
  br i1 %t1308, label %bb307, label %bb308
bb307:
  br label %bb312
bb308:
  br label %bb309
bb309:
  %t1310 = load i64, ptr %l59, !tbaa !24
  %t1311 = load i64, ptr %l63, !tbaa !24
  %t1312 = load i64, ptr %l61, !tbaa !24
  %t1315 = mul i64 %t1311, %t1312
  %t1318 = add i64 %t1310, %t1315
  %t1322 = getelementptr { i64, ptr }, ptr %l56, i32 0, i32 1
  %t1323 = load ptr, ptr %t1322, !tbaa !27
  %t1324 = getelementptr i8, ptr %t1323, i64 %t1318
  %t1325 = load i8, ptr %t1324, !tbaa !32
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePushChar(ptr %s38, ptr %l58, i8 %t1325)
  br label %bb310
bb310:
  br label %bb311
bb311:
  %t1329 = load i64, ptr %l63, !tbaa !24
  %t1331 = add i64 %t1329, 1
  store i64 %t1331, ptr %l63, !tbaa !24
  br label %bb306
bb312:
  %t1333 = load { i64, ptr }, ptr @G_2ecompiler_2feval_2eInterpCrash, !tbaa !27
  %t1334 = load ptr, ptr @__olang_prog_scope
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s38, ptr %t1334, ptr %l58, { i64, ptr } %t1333)
  br label %bb313
bb313:
  %t1338 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %s38, ptr %s38, ptr %l58)
  store { i64, ptr } %t1338, ptr %l651
  br label %bb314
bb314:
  %t1339 = load { i64, ptr }, ptr %l651, !tbaa !27
  %t1340 = extractvalue { i64, ptr } %t1339, 0
  %t1341 = extractvalue { i64, ptr } %t1339, 1
  %t1342 = mul i64 %t1340, 1
  %t1343 = call ptr @__olang_scope_alloc(ptr %s38, i64 %t1342)
  call void @llvm.memcpy.p0.p0.i64(ptr %t1343, ptr %t1341, i64 %t1342, i1 false)
  %t1344 = insertvalue { i64, ptr } undef, i64 %t1340, 0
  %t1345 = insertvalue { i64, ptr } %t1344, ptr %t1343, 1
  call void @std_2fos_2eOnCrash(ptr %s38, { i64, ptr } %t1345)
  br label %bb315
bb315:
  call void @__olang_scope_close(ptr %s38)
  br label %bb316
bb316:
  br label %bb323
bb317:
  br i1 true, label %bb318, label %bb319
bb318:
  br label %bb320
bb319:
  br label %bb322
bb320:
  %t1347 = load ptr, ptr %l0, !tbaa !29
  %t1348 = load { i64, ptr }, ptr @G_2ecompiler_2feval_2eWhyFfiFind, !tbaa !27
  %t1349 = load ptr, ptr @__olang_prog_scope
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2erefuse(ptr %v0, ptr %t1349, ptr %t1347, { i64, ptr } %t1348)
  br label %bb321
bb321:
  call void @__olang_scope_close(ptr %s0)
  store i1 false, ptr %rv
  br label %ret
bb322:
  call void @__olang_check_failed(ptr @olang_loc_a18e8c5cba1eb19a_a9626f5dd72b6766)
  unreachable
bb323:
  %t1353 = load ptr, ptr %l0, !tbaa !29
  %t1355 = getelementptr %"compiler/eval:Machine", ptr %t1353, i32 0, i32 19
  %t1356 = load i1, ptr %t1355, !tbaa !21
  br i1 %t1356, label %bb324, label %bb325
bb324:
  call void @__olang_scope_close(ptr %s0)
  store i1 false, ptr %rv
  br label %ret
bb325:
  br label %bb326
bb326:
  %t1359 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t1361 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v1, ptr %s0, { i64, ptr } %t1359, { i64, ptr } { i64 11, ptr getelementptr inbounds (<{ i64, [11 x i8] }>, ptr @.d32, i32 0, i32 1) })
  store i1 %t1361, ptr %l660
  br label %bb327
bb327:
  %t1362 = load i1, ptr %l660, !tbaa !21
  %t1363 = xor i1 %t1362, true
  br i1 %t1363, label %bb328, label %bb329
bb328:
  %t1365 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t1367 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v1, ptr %s0, { i64, ptr } %t1365, { i64, ptr } { i64 17, ptr getelementptr inbounds (<{ i64, [17 x i8] }>, ptr @.d33, i32 0, i32 1) })
  store i1 %t1367, ptr %l664
  br label %bb330
bb329:
  store i1 false, ptr %l662, !tbaa !21
  br label %bb331
bb330:
  %t1368 = load i1, ptr %l664, !tbaa !21
  %t1369 = xor i1 %t1368, true
  store i1 %t1369, ptr %l662, !tbaa !21
  br label %bb331
bb331:
  %t1371 = load i1, ptr %l662, !tbaa !21
  br i1 %t1371, label %bb332, label %bb333
bb332:
  %t1372 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t1374 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v1, ptr %s0, { i64, ptr } %t1372, { i64, ptr } { i64 11, ptr getelementptr inbounds (<{ i64, [11 x i8] }>, ptr @.d34, i32 0, i32 1) })
  store i1 %t1374, ptr %l668
  br label %bb334
bb333:
  store i1 false, ptr %l666, !tbaa !21
  br label %bb335
bb334:
  %t1375 = load i1, ptr %l668, !tbaa !21
  %t1376 = xor i1 %t1375, true
  store i1 %t1376, ptr %l666, !tbaa !21
  br label %bb335
bb335:
  %t1378 = load i1, ptr %l666, !tbaa !21
  br i1 %t1378, label %bb336, label %bb337
bb336:
  %t1379 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1379, ptr %l670, !tbaa !29
  %t1380 = call i32 @__olang_err()
  store i32 %t1380, ptr %l671
  br label %bb338
bb337:
  br label %bb339
bb338:
  %t1381 = load i32, ptr %l671, !tbaa !23
  %t1382 = load ptr, ptr %l670, !tbaa !29
  %t1383 = getelementptr %"compiler/eval:Machine", ptr %t1382, i32 0, i32 91
  store i32 %t1381, ptr %t1383, !tbaa !23
  br label %bb339
bb339:
  %t1384 = load ptr, ptr %l0, !tbaa !29
  %t1386 = getelementptr %"compiler/eval:Machine", ptr %t1384, i32 0, i32 0
  %t1387 = load ptr, ptr %t1386, !tbaa !29
  %t1391 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eResult(ptr %v0, ptr %t1387, i32 %a4)
  store i32 %t1391, ptr %l675
  br label %bb340
bb340:
  %t1392 = load i32, ptr %l675, !tbaa !23
  store i32 %t1392, ptr %l65, !tbaa !23
  br i1 %a6, label %bb341, label %bb342
bb341:
  %t1395 = load i32, ptr %l65, !tbaa !23
  %t1396 = load i32, ptr @G_2ecompiler_2ftypes_2eVoidT, !tbaa !23
  %t1399 = icmp ne i32 %t1395, %t1396
  store i1 %t1399, ptr %l677, !tbaa !21
  br label %bb343
bb342:
  store i1 false, ptr %l677, !tbaa !21
  br label %bb343
bb343:
  %t1401 = load i1, ptr %l677, !tbaa !21
  br i1 %t1401, label %bb344, label %bb345
bb344:
  %t1402 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1402, ptr %l681, !tbaa !29
  store %"compiler/eval:Ptr" %a5, ptr %l682
  %t1404 = load ptr, ptr %l0, !tbaa !29
  %t1405 = load i32, ptr %l65, !tbaa !23
  %t1408 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2ewidth(ptr %v0, ptr %t1404, i32 %t1405)
  store i64 %t1408, ptr %l685
  br label %bb346
bb345:
  br label %bb348
bb346:
  %t1409 = load i64, ptr %l9, !tbaa !24
  %t1410 = load ptr, ptr %l681, !tbaa !29
  %t1411 = load %"compiler/eval:Ptr", ptr %l682
  %t1412 = load i64, ptr %l685, !tbaa !24
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2ewr(ptr %v0, ptr %t1410, %"compiler/eval:Ptr" %t1411, i64 %t1412, i64 %t1409)
  br label %bb347
bb347:
  br label %bb348
bb348:
  call void @__olang_scope_close(ptr %s0)
  store i1 true, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2escalar(ptr %v0, ptr %a0, i64 %a1, { i64, [4 x i64] } %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca { i64, [4 x i64] }
  %l3 = alloca i32
  %l4 = alloca i64
  %l5 = alloca %"compiler/mir:Lvalue"
  %l6 = alloca i64
  %l7 = alloca { %"compiler/eval:Ptr", i32 }
  %l20 = alloca i64
  %l25 = alloca i64
  %l28 = alloca i1
  %l31 = alloca ptr
  %l37 = alloca %"compiler/eval:Ptr"
  %l40 = alloca { i64, ptr }
  %l42 = alloca { i64, ptr }
  %l45 = alloca { i64, ptr }
  %l48 = alloca i64
  %l49 = alloca i64
  %l53 = alloca { %"compiler/eval:Ptr", i32 }
  %l56 = alloca ptr
  %l57 = alloca %"compiler/eval:Ptr"
  %l60 = alloca i64
  %l61 = alloca i64
  %l62 = alloca ptr
  %l66 = alloca %"compiler/eval:Ptr"
  %l67 = alloca ptr
  %l71 = alloca i32
  %l72 = alloca i64
  %l73 = alloca i64
  %rv = alloca i64
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  store { i64, [4 x i64] } %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load { i64, [4 x i64] }, ptr %l2
  %t3 = extractvalue { i64, [4 x i64] } %t1, 0
  %t4 = icmp eq i64 %t3, 0
  br i1 %t4, label %bb1, label %bb2
bb1:
  br label %bb3
bb2:
  br label %bb4
bb3:
  store i64 0, ptr %rv
  br label %ret
bb4:
  %t7 = load { i64, [4 x i64] }, ptr %l2
  %t9 = extractvalue { i64, [4 x i64] } %t7, 0
  %t10 = icmp eq i64 %t9, 2
  br i1 %t10, label %bb5, label %bb6
bb5:
  %t12 = getelementptr { i64, [4 x i64] }, ptr %l2, i32 0, i32 1
  %t13 = getelementptr { i32, i64 }, ptr %t12, i32 0, i32 0
  %t14 = load i32, ptr %t13
  store i32 %t14, ptr %l3, !tbaa !23
  %t16 = getelementptr { i64, [4 x i64] }, ptr %l2, i32 0, i32 1
  %t17 = getelementptr { i32, i64 }, ptr %t16, i32 0, i32 1
  %t18 = load i64, ptr %t17
  store i64 %t18, ptr %l4, !tbaa !24
  br label %bb7
bb6:
  br label %bb9
bb7:
  %t20 = load ptr, ptr %l0, !tbaa !29
  %t21 = load i32, ptr %l3, !tbaa !23
  %t22 = load i64, ptr %l4, !tbaa !24
  %t26 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2ecanonBits(ptr %v0, ptr %t20, i32 %t21, i64 %t22)
  store i64 %t26, ptr %l20
  br label %bb8
bb8:
  %t27 = load i64, ptr %l20, !tbaa !24
  store i64 %t27, ptr %rv
  br label %ret
bb9:
  %t28 = load { i64, [4 x i64] }, ptr %l2
  %t30 = extractvalue { i64, [4 x i64] } %t28, 0
  %t31 = icmp eq i64 %t30, 1
  br i1 %t31, label %bb10, label %bb11
bb10:
  %t33 = getelementptr { i64, [4 x i64] }, ptr %l2, i32 0, i32 1
  %t34 = getelementptr { %"compiler/mir:Lvalue" }, ptr %t33, i32 0, i32 0
  %t35 = load %"compiler/mir:Lvalue", ptr %t34
  store %"compiler/mir:Lvalue" %t35, ptr %l5
  br label %bb12
bb11:
  br label %bb26
bb12:
  %t37 = load %"compiler/mir:Lvalue", ptr %l5
  %t39 = call i64 @compiler_2feval_2eplainLocal(%"compiler/mir:Lvalue" %t37)
  store i64 %t39, ptr %l25
  br label %bb13
bb13:
  %t40 = load i64, ptr %l25, !tbaa !24
  store i64 %t40, ptr %l6, !tbaa !24
  %t41 = getelementptr %"compiler/mir:Lvalue", ptr %l5, i32 0, i32 1
  %t42 = getelementptr %"compiler/mir:Range", ptr %t41, i32 0, i32 1
  %t43 = load i32, ptr %t42, !tbaa !23
  %t45 = icmp eq i32 %t43, 0
  br i1 %t45, label %bb14, label %bb15
bb14:
  %t47 = load i64, ptr %l6, !tbaa !24
  %t49 = icmp sge i64 %t47, 0
  store i1 %t49, ptr %l28, !tbaa !21
  br label %bb16
bb15:
  store i1 false, ptr %l28, !tbaa !21
  br label %bb16
bb16:
  %t51 = load i1, ptr %l28, !tbaa !21
  br i1 %t51, label %bb17, label %bb18
bb17:
  %t52 = load ptr, ptr %l0, !tbaa !29
  store ptr %t52, ptr %l31, !tbaa !29
  %t53 = load ptr, ptr %l0, !tbaa !29
  %t54 = load i64, ptr %l1, !tbaa !24
  %t55 = load i64, ptr %l6, !tbaa !24
  %t57 = trunc i64 %t55 to i32
  %t62 = call %"compiler/eval:Ptr" @compiler_2feval_2ecompiler_2feval_3aMachine_2elocalPtr(ptr %v0, ptr %t53, i64 %t54, i32 %t57)
  store %"compiler/eval:Ptr" %t62, ptr %l37
  br label %bb19
bb18:
  br label %bb22
bb19:
  %t63 = load ptr, ptr %l0, !tbaa !29
  %t64 = load ptr, ptr %l0, !tbaa !29
  %t66 = getelementptr %"compiler/eval:Machine", ptr %t64, i32 0, i32 23
  %t67 = load { i64, ptr }, ptr %t66, !tbaa !27
  store { i64, ptr } %t67, ptr %l40, !tbaa !27
  %t68 = load ptr, ptr %l0, !tbaa !29
  %t70 = getelementptr %"compiler/eval:Machine", ptr %t68, i32 0, i32 55
  %t71 = load { i64, ptr }, ptr %t70, !tbaa !27
  store { i64, ptr } %t71, ptr %l42, !tbaa !27
  %t72 = load i64, ptr %l1, !tbaa !24
  %t74 = getelementptr { i64, ptr }, ptr %l42, i32 0, i32 1
  %t75 = load ptr, ptr %t74, !tbaa !27
  %t76 = getelementptr %"compiler/eval:frame", ptr %t75, i64 %t72
  %t77 = getelementptr %"compiler/eval:frame", ptr %t76, i32 0, i32 0
  %t78 = load i64, ptr %t77, !tbaa !24
  %t80 = getelementptr { i64, ptr }, ptr %l40, i32 0, i32 1
  %t81 = load ptr, ptr %t80, !tbaa !27
  %t82 = getelementptr %"compiler/eval:cfn", ptr %t81, i64 %t78
  %t83 = getelementptr %"compiler/eval:cfn", ptr %t82, i32 0, i32 1
  %t84 = load { i64, ptr }, ptr %t83, !tbaa !27
  store { i64, ptr } %t84, ptr %l45, !tbaa !27
  %t85 = load i64, ptr %l6, !tbaa !24
  %t87 = getelementptr { i64, ptr }, ptr %l45, i32 0, i32 1
  %t88 = load ptr, ptr %t87, !tbaa !27
  %t89 = getelementptr %"compiler/mir:Local", ptr %t88, i64 %t85
  %t90 = getelementptr %"compiler/mir:Local", ptr %t89, i32 0, i32 2
  %t91 = load i32, ptr %t90, !tbaa !23
  %t94 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2eword(ptr %v0, ptr %t63, i32 %t91)
  store i64 %t94, ptr %l48
  br label %bb20
bb20:
  %t95 = load ptr, ptr %l31, !tbaa !29
  %t96 = load %"compiler/eval:Ptr", ptr %l37
  %t97 = load i64, ptr %l48, !tbaa !24
  %t98 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2erd(ptr %v0, ptr %t95, %"compiler/eval:Ptr" %t96, i64 %t97)
  store i64 %t98, ptr %l49
  br label %bb21
bb21:
  %t99 = load i64, ptr %l49, !tbaa !24
  store i64 %t99, ptr %rv
  br label %ret
bb22:
  %t100 = load ptr, ptr %l0, !tbaa !29
  %t101 = load i64, ptr %l1, !tbaa !24
  %t102 = load %"compiler/mir:Lvalue", ptr %l5
  %t106 = call { %"compiler/eval:Ptr", i32 } @compiler_2feval_2ecompiler_2feval_3aMachine_2eplace(ptr %v0, ptr %t100, i64 %t101, %"compiler/mir:Lvalue" %t102)
  store { %"compiler/eval:Ptr", i32 } %t106, ptr %l53
  br label %bb23
bb23:
  %t107 = load { %"compiler/eval:Ptr", i32 }, ptr %l53
  store { %"compiler/eval:Ptr", i32 } %t107, ptr %l7
  %t108 = getelementptr { %"compiler/eval:Ptr", i32 }, ptr %l7, i32 0, i32 0
  %t109 = load %"compiler/eval:Ptr", ptr %t108
  %t111 = getelementptr { %"compiler/eval:Ptr", i32 }, ptr %l7, i32 0, i32 1
  %t112 = load i32, ptr %t111, !tbaa !23
  %t114 = load ptr, ptr %l0, !tbaa !29
  store ptr %t114, ptr %l56, !tbaa !29
  store %"compiler/eval:Ptr" %t109, ptr %l57
  %t116 = load ptr, ptr %l0, !tbaa !29
  %t120 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2eword(ptr %v0, ptr %t116, i32 %t112)
  store i64 %t120, ptr %l60
  br label %bb24
bb24:
  %t121 = load ptr, ptr %l56, !tbaa !29
  %t122 = load %"compiler/eval:Ptr", ptr %l57
  %t123 = load i64, ptr %l60, !tbaa !24
  %t124 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2erd(ptr %v0, ptr %t121, %"compiler/eval:Ptr" %t122, i64 %t123)
  store i64 %t124, ptr %l61
  br label %bb25
bb25:
  %t125 = load i64, ptr %l61, !tbaa !24
  store i64 %t125, ptr %rv
  br label %ret
bb26:
  br i1 true, label %bb27, label %bb28
bb27:
  br label %bb29
bb28:
  br label %bb34
bb29:
  %t126 = load ptr, ptr %l0, !tbaa !29
  store ptr %t126, ptr %l62, !tbaa !29
  %t127 = load ptr, ptr %l0, !tbaa !29
  %t128 = load i64, ptr %l1, !tbaa !24
  %t129 = load { i64, [4 x i64] }, ptr %l2
  %t133 = call %"compiler/eval:Ptr" @compiler_2feval_2ecompiler_2feval_3aMachine_2eaddr(ptr %v0, ptr %t127, i64 %t128, { i64, [4 x i64] } %t129, i64 1)
  store %"compiler/eval:Ptr" %t133, ptr %l66
  br label %bb30
bb30:
  %t134 = load ptr, ptr %l0, !tbaa !29
  store ptr %t134, ptr %l67, !tbaa !29
  %t135 = load ptr, ptr %l0, !tbaa !29
  %t136 = load i64, ptr %l1, !tbaa !24
  %t137 = load { i64, [4 x i64] }, ptr %l2
  %t141 = call i32 @compiler_2feval_2ecompiler_2feval_3aMachine_2eopType(ptr %v0, ptr %t135, i64 %t136, { i64, [4 x i64] } %t137)
  store i32 %t141, ptr %l71
  br label %bb31
bb31:
  %t142 = load ptr, ptr %l67, !tbaa !29
  %t143 = load i32, ptr %l71, !tbaa !23
  %t144 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2eword(ptr %v0, ptr %t142, i32 %t143)
  store i64 %t144, ptr %l72
  br label %bb32
bb32:
  %t145 = load ptr, ptr %l62, !tbaa !29
  %t146 = load %"compiler/eval:Ptr", ptr %l66
  %t147 = load i64, ptr %l72, !tbaa !24
  %t148 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2erd(ptr %v0, ptr %t145, %"compiler/eval:Ptr" %t146, i64 %t147)
  store i64 %t148, ptr %l73
  br label %bb33
bb33:
  %t149 = load i64, ptr %l73, !tbaa !24
  store i64 %t149, ptr %rv
  br label %ret
bb34:
  call void @__olang_check_failed(ptr @olang_loc_1c104311c72af5f5_c45dcd645c687dc1)
  unreachable
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2eshapeOf(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca ptr
  %l3 = alloca i32
  %l4 = alloca i32
  %l9 = alloca i1
  %l12 = alloca i32
  %l15 = alloca i32
  %l16 = alloca i64
  %l45 = alloca i64
  %l47 = alloca i64
  %l51 = alloca i64
  %l53 = alloca i64
  %l73 = alloca ptr
  %l76 = alloca i32
  %l77 = alloca i1
  %l78 = alloca i64
  %l88 = alloca i32
  %l90 = alloca i64
  %l100 = alloca ptr
  %l103 = alloca i32
  %l104 = alloca i1
  %l105 = alloca i64
  %l112 = alloca i64
  %rv = alloca i64
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/eval:Machine", ptr %t1, i32 0, i32 0
  %t4 = load ptr, ptr %t3, !tbaa !29
  store ptr %t4, ptr %l2, !tbaa !29
  %t6 = load ptr, ptr %l0, !tbaa !29
  %t7 = load i32, ptr %l1, !tbaa !23
  %t10 = call i1 @compiler_2feval_2ecompiler_2feval_3aMachine_2elay(ptr %v0, ptr %t6, i32 %t7)
  store i1 %t10, ptr %l9
  br label %bb1
bb1:
  %t11 = load ptr, ptr %l2, !tbaa !29
  %t12 = load i32, ptr %l1, !tbaa !23
  %t15 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %v0, ptr %t11, i32 %t12)
  store i32 %t15, ptr %l12
  br label %bb2
bb2:
  %t16 = load i32, ptr %l12, !tbaa !23
  store i32 %t16, ptr %l3, !tbaa !23
  %t17 = load ptr, ptr %l2, !tbaa !29
  %t18 = load i32, ptr %l3, !tbaa !23
  %t21 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t17, i32 %t18)
  store i32 %t21, ptr %l15
  br label %bb3
bb3:
  %t22 = load i32, ptr %l15, !range !{i32 0, i32 33}
  store i32 %t22, ptr %l4
  %t23 = load i32, ptr %l4, !range !{i32 0, i32 33}
  %t25 = trunc i64 1 to i32
  %t26 = icmp eq i32 %t23, %t25
  br i1 %t26, label %bb4, label %bb5
bb4:
  br label %bb6
bb5:
  br label %bb7
bb6:
  %t28 = load i64, ptr @G_2ecompiler_2feval_2evVoid, !tbaa !24
  store i64 %t28, ptr %l16, !tbaa !24
  br label %bb107
bb7:
  %t30 = load i32, ptr %l4, !range !{i32 0, i32 33}
  %t32 = trunc i64 2 to i32
  %t33 = icmp eq i32 %t30, %t32
  br i1 %t33, label %bb8, label %bb9
bb8:
  br label %bb10
bb9:
  br label %bb11
bb10:
  %t35 = load i64, ptr @G_2ecompiler_2feval_2evBool, !tbaa !24
  store i64 %t35, ptr %l16, !tbaa !24
  br label %bb107
bb11:
  %t37 = load i32, ptr %l4, !range !{i32 0, i32 33}
  %t39 = trunc i64 3 to i32
  %t40 = icmp eq i32 %t37, %t39
  br i1 %t40, label %bb12, label %bb13
bb12:
  br label %bb20
bb13:
  %t42 = load i32, ptr %l4, !range !{i32 0, i32 33}
  %t44 = trunc i64 4 to i32
  %t45 = icmp eq i32 %t42, %t44
  br i1 %t45, label %bb14, label %bb15
bb14:
  br label %bb20
bb15:
  %t47 = load i32, ptr %l4, !range !{i32 0, i32 33}
  %t49 = trunc i64 5 to i32
  %t50 = icmp eq i32 %t47, %t49
  br i1 %t50, label %bb16, label %bb17
bb16:
  br label %bb20
bb17:
  %t52 = load i32, ptr %l4, !range !{i32 0, i32 33}
  %t54 = trunc i64 6 to i32
  %t55 = icmp eq i32 %t52, %t54
  br i1 %t55, label %bb18, label %bb19
bb18:
  br label %bb20
bb19:
  br label %bb21
bb20:
  %t57 = load i64, ptr @G_2ecompiler_2feval_2evInt, !tbaa !24
  store i64 %t57, ptr %l16, !tbaa !24
  br label %bb107
bb21:
  %t59 = load i32, ptr %l4, !range !{i32 0, i32 33}
  %t61 = trunc i64 7 to i32
  %t62 = icmp eq i32 %t59, %t61
  br i1 %t62, label %bb22, label %bb23
bb22:
  br label %bb30
bb23:
  %t64 = load i32, ptr %l4, !range !{i32 0, i32 33}
  %t66 = trunc i64 8 to i32
  %t67 = icmp eq i32 %t64, %t66
  br i1 %t67, label %bb24, label %bb25
bb24:
  br label %bb30
bb25:
  %t69 = load i32, ptr %l4, !range !{i32 0, i32 33}
  %t71 = trunc i64 9 to i32
  %t72 = icmp eq i32 %t69, %t71
  br i1 %t72, label %bb26, label %bb27
bb26:
  br label %bb30
bb27:
  %t74 = load i32, ptr %l4, !range !{i32 0, i32 33}
  %t76 = trunc i64 10 to i32
  %t77 = icmp eq i32 %t74, %t76
  br i1 %t77, label %bb28, label %bb29
bb28:
  br label %bb30
bb29:
  br label %bb31
bb30:
  %t79 = load i64, ptr @G_2ecompiler_2feval_2evUint, !tbaa !24
  store i64 %t79, ptr %l16, !tbaa !24
  br label %bb107
bb31:
  %t81 = load i32, ptr %l4, !range !{i32 0, i32 33}
  %t83 = trunc i64 31 to i32
  %t84 = icmp eq i32 %t81, %t83
  br i1 %t84, label %bb32, label %bb33
bb32:
  br label %bb34
bb33:
  br label %bb43
bb34:
  %t86 = load ptr, ptr %l2, !tbaa !29
  %t87 = load i32, ptr %l3, !tbaa !23
  %t90 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eA(ptr %v0, ptr %t86, i32 %t87)
  store i64 %t90, ptr %l45
  br label %bb35
bb35:
  %t91 = load i64, ptr %l45, !tbaa !24
  %t92 = icmp sgt i64 %t91, 64
  br i1 %t92, label %bb36, label %bb37
bb36:
  %t94 = load i64, ptr @G_2ecompiler_2feval_2evWide, !tbaa !24
  store i64 %t94, ptr %l47, !tbaa !24
  br label %bb42
bb37:
  %t96 = load ptr, ptr %l2, !tbaa !29
  %t97 = load i32, ptr %l3, !tbaa !23
  %t100 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eB(ptr %v0, ptr %t96, i32 %t97)
  store i64 %t100, ptr %l51
  br label %bb38
bb38:
  %t101 = load i64, ptr %l51, !tbaa !24
  %t102 = icmp eq i64 %t101, 1
  br i1 %t102, label %bb39, label %bb40
bb39:
  %t104 = load i64, ptr @G_2ecompiler_2feval_2evInt, !tbaa !24
  store i64 %t104, ptr %l53, !tbaa !24
  br label %bb41
bb40:
  %t106 = load i64, ptr @G_2ecompiler_2feval_2evUint, !tbaa !24
  store i64 %t106, ptr %l53, !tbaa !24
  br label %bb41
bb41:
  %t108 = load i64, ptr %l53, !tbaa !24
  store i64 %t108, ptr %l47, !tbaa !24
  br label %bb42
bb42:
  %t109 = load i64, ptr %l47, !tbaa !24
  store i64 %t109, ptr %l16, !tbaa !24
  br label %bb107
bb43:
  %t110 = load i32, ptr %l4, !range !{i32 0, i32 33}
  %t112 = trunc i64 11 to i32
  %t113 = icmp eq i32 %t110, %t112
  br i1 %t113, label %bb44, label %bb45
bb44:
  br label %bb52
bb45:
  %t115 = load i32, ptr %l4, !range !{i32 0, i32 33}
  %t117 = trunc i64 12 to i32
  %t118 = icmp eq i32 %t115, %t117
  br i1 %t118, label %bb46, label %bb47
bb46:
  br label %bb52
bb47:
  %t120 = load i32, ptr %l4, !range !{i32 0, i32 33}
  %t122 = trunc i64 13 to i32
  %t123 = icmp eq i32 %t120, %t122
  br i1 %t123, label %bb48, label %bb49
bb48:
  br label %bb52
bb49:
  %t125 = load i32, ptr %l4, !range !{i32 0, i32 33}
  %t127 = trunc i64 14 to i32
  %t128 = icmp eq i32 %t125, %t127
  br i1 %t128, label %bb50, label %bb51
bb50:
  br label %bb52
bb51:
  br label %bb53
bb52:
  %t130 = load i64, ptr @G_2ecompiler_2feval_2evFloat, !tbaa !24
  store i64 %t130, ptr %l16, !tbaa !24
  br label %bb107
bb53:
  %t132 = load i32, ptr %l4, !range !{i32 0, i32 33}
  %t134 = trunc i64 15 to i32
  %t135 = icmp eq i32 %t132, %t134
  br i1 %t135, label %bb54, label %bb55
bb54:
  br label %bb56
bb55:
  br label %bb57
bb56:
  %t137 = load i64, ptr @G_2ecompiler_2feval_2evPtr, !tbaa !24
  store i64 %t137, ptr %l16, !tbaa !24
  br label %bb107
bb57:
  %t139 = load i32, ptr %l4, !range !{i32 0, i32 33}
  %t141 = trunc i64 16 to i32
  %t142 = icmp eq i32 %t139, %t141
  br i1 %t142, label %bb58, label %bb59
bb58:
  br label %bb60
bb59:
  br label %bb61
bb60:
  %t144 = load i64, ptr @G_2ecompiler_2feval_2evOrd, !tbaa !24
  store i64 %t144, ptr %l16, !tbaa !24
  br label %bb107
bb61:
  %t146 = load i32, ptr %l4, !range !{i32 0, i32 33}
  %t148 = trunc i64 20 to i32
  %t149 = icmp eq i32 %t146, %t148
  br i1 %t149, label %bb62, label %bb63
bb62:
  br label %bb64
bb63:
  br label %bb70
bb64:
  %t151 = load ptr, ptr %l0, !tbaa !29
  store ptr %t151, ptr %l73, !tbaa !29
  %t152 = load ptr, ptr %l2, !tbaa !29
  %t153 = load i32, ptr %l3, !tbaa !23
  %t156 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eReferent(ptr %v0, ptr %t152, i32 %t153)
  store i32 %t156, ptr %l76
  br label %bb65
bb65:
  %t157 = load ptr, ptr %l73, !tbaa !29
  %t158 = load i32, ptr %l76, !tbaa !23
  %t159 = call i1 @compiler_2feval_2ecompiler_2feval_3aMachine_2ertArray(ptr %v0, ptr %t157, i32 %t158)
  store i1 %t159, ptr %l77
  br label %bb66
bb66:
  %t160 = load i1, ptr %l77, !tbaa !21
  br i1 %t160, label %bb67, label %bb68
bb67:
  %t161 = load i64, ptr @G_2ecompiler_2feval_2evPair, !tbaa !24
  store i64 %t161, ptr %l78, !tbaa !24
  br label %bb69
bb68:
  %t163 = load i64, ptr @G_2ecompiler_2feval_2evPtr, !tbaa !24
  store i64 %t163, ptr %l78, !tbaa !24
  br label %bb69
bb69:
  %t165 = load i64, ptr %l78, !tbaa !24
  store i64 %t165, ptr %l16, !tbaa !24
  br label %bb107
bb70:
  %t166 = load i32, ptr %l4, !range !{i32 0, i32 33}
  %t168 = trunc i64 21 to i32
  %t169 = icmp eq i32 %t166, %t168
  br i1 %t169, label %bb71, label %bb72
bb71:
  br label %bb73
bb72:
  br label %bb74
bb73:
  %t171 = load i64, ptr @G_2ecompiler_2feval_2evFunc, !tbaa !24
  store i64 %t171, ptr %l16, !tbaa !24
  br label %bb107
bb74:
  %t173 = load i32, ptr %l4, !range !{i32 0, i32 33}
  %t175 = trunc i64 19 to i32
  %t176 = icmp eq i32 %t173, %t175
  br i1 %t176, label %bb75, label %bb76
bb75:
  br label %bb77
bb76:
  br label %bb82
bb77:
  %t178 = load ptr, ptr %l2, !tbaa !29
  %t179 = load i32, ptr %l3, !tbaa !23
  %t182 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eLength(ptr %v0, ptr %t178, i32 %t179)
  store i32 %t182, ptr %l88
  br label %bb78
bb78:
  %t183 = load i32, ptr %l88, !tbaa !23
  %t184 = icmp eq i32 %t183, 0
  br i1 %t184, label %bb79, label %bb80
bb79:
  %t186 = load i64, ptr @G_2ecompiler_2feval_2evPair, !tbaa !24
  store i64 %t186, ptr %l90, !tbaa !24
  br label %bb81
bb80:
  %t188 = load i64, ptr @G_2ecompiler_2feval_2evFixed, !tbaa !24
  store i64 %t188, ptr %l90, !tbaa !24
  br label %bb81
bb81:
  %t190 = load i64, ptr %l90, !tbaa !24
  store i64 %t190, ptr %l16, !tbaa !24
  br label %bb107
bb82:
  %t191 = load i32, ptr %l4, !range !{i32 0, i32 33}
  %t193 = trunc i64 22 to i32
  %t194 = icmp eq i32 %t191, %t193
  br i1 %t194, label %bb83, label %bb84
bb83:
  br label %bb87
bb84:
  %t196 = load i32, ptr %l4, !range !{i32 0, i32 33}
  %t198 = trunc i64 23 to i32
  %t199 = icmp eq i32 %t196, %t198
  br i1 %t199, label %bb85, label %bb86
bb85:
  br label %bb87
bb86:
  br label %bb88
bb87:
  %t201 = load i64, ptr @G_2ecompiler_2feval_2evAgg, !tbaa !24
  store i64 %t201, ptr %l16, !tbaa !24
  br label %bb107
bb88:
  %t203 = load i32, ptr %l4, !range !{i32 0, i32 33}
  %t205 = trunc i64 24 to i32
  %t206 = icmp eq i32 %t203, %t205
  br i1 %t206, label %bb89, label %bb90
bb89:
  br label %bb91
bb90:
  br label %bb97
bb91:
  %t208 = load ptr, ptr %l2, !tbaa !29
  store ptr %t208, ptr %l100, !tbaa !29
  %t209 = load ptr, ptr %l2, !tbaa !29
  %t210 = load i32, ptr %l3, !tbaa !23
  %t213 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eShapeCases(ptr %v0, ptr %t209, i32 %t210)
  store i32 %t213, ptr %l103
  br label %bb92
bb92:
  %t214 = load ptr, ptr %l100, !tbaa !29
  %t215 = load i32, ptr %l103, !tbaa !23
  %t216 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eHasPayload(ptr %v0, ptr %t214, i32 %t215)
  store i1 %t216, ptr %l104
  br label %bb93
bb93:
  %t217 = load i1, ptr %l104, !tbaa !21
  br i1 %t217, label %bb94, label %bb95
bb94:
  %t218 = load i64, ptr @G_2ecompiler_2feval_2evEnum, !tbaa !24
  store i64 %t218, ptr %l105, !tbaa !24
  br label %bb96
bb95:
  %t220 = load i64, ptr @G_2ecompiler_2feval_2evOrd, !tbaa !24
  store i64 %t220, ptr %l105, !tbaa !24
  br label %bb96
bb96:
  %t222 = load i64, ptr %l105, !tbaa !24
  store i64 %t222, ptr %l16, !tbaa !24
  br label %bb107
bb97:
  %t223 = load i32, ptr %l4, !range !{i32 0, i32 33}
  %t225 = trunc i64 18 to i32
  %t226 = icmp eq i32 %t223, %t225
  br i1 %t226, label %bb98, label %bb99
bb98:
  br label %bb100
bb99:
  br label %bb102
bb100:
  %t228 = load ptr, ptr %l0, !tbaa !29
  %t229 = load i32, ptr %l3, !tbaa !23
  %t232 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2enamedShape(ptr %v0, ptr %t228, i32 %t229)
  store i64 %t232, ptr %l112
  br label %bb101
bb101:
  %t233 = load i64, ptr %l112, !tbaa !24
  store i64 %t233, ptr %l16, !tbaa !24
  br label %bb107
bb102:
  br i1 true, label %bb103, label %bb104
bb103:
  br label %bb105
bb104:
  br label %bb106
bb105:
  %t234 = load i64, ptr @G_2ecompiler_2feval_2evNone, !tbaa !24
  store i64 %t234, ptr %l16, !tbaa !24
  br label %bb107
bb106:
  call void @__olang_check_failed(ptr @olang_loc_5b67d157b70117f_cddce93e80c09b93)
  unreachable
bb107:
  %t236 = load i64, ptr %l16, !tbaa !24
  store i64 %t236, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local void @compiler_2feval_2ecompiler_2feval_3aMachine_2esuspend(ptr %v0, ptr %a0, i64 %a1, { i64, [4 x i64] } %a2, i32 %a3, %"compiler/mir:Range" %a4, i32 %a5) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l4 = alloca %"compiler/mir:Range"
  %l6 = alloca i64
  %l7 = alloca %"compiler/eval:frame"
  %l8 = alloca %"compiler/eval:genRec"
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
  %l22 = alloca ptr
  %l23 = alloca i64
  %l24 = alloca i32
  %l25 = alloca i32
  %l26 = alloca i32
  %l27 = alloca i32
  %l28 = alloca i32
  %l30 = alloca { i64, [1 x i64] }
  %l31 = alloca i32
  %l32 = alloca i64
  %l33 = alloca i64
  %l34 = alloca i64
  %l35 = alloca i64
  %l36 = alloca i64
  %l37 = alloca i64
  %l39 = alloca { i64, ptr }
  %l46 = alloca i64
  %l53 = alloca { i64, ptr }
  %l55 = alloca %"compiler/eval:frame"
  %l61 = alloca %"compiler/eval:genRec"
  %l63 = alloca %"compiler/eval:genRec"
  %l72 = alloca i64
  %l75 = alloca { i64, ptr }
  %l84 = alloca i64
  %l87 = alloca i64
  %l114 = alloca i64
  %l117 = alloca i64
  %l141 = alloca { i64, ptr }
  %l151 = alloca ptr
  %l159 = alloca i32
  %l162 = alloca i32
  %l187 = alloca { i64, [1 x i64] }
  %l195 = alloca { i64, ptr }
  %l215 = alloca %"compiler/eval:frame"
  %l222 = alloca i64
  %l226 = alloca i64
  %l229 = alloca i64
  %l250 = alloca i64
  %l253 = alloca ptr
  %l257 = alloca i64
  %l258 = alloca ptr
  %l262 = alloca i64
  %l266 = alloca ptr
  %l267 = alloca i64
  %l268 = alloca %"compiler/eval:genRec"
  %l270 = alloca %"compiler/eval:genRec"
  %l273 = alloca %"compiler/eval:frame"
  %s0 = alloca %olang.scope
  %t52 = alloca %"compiler/eval:genRec", align 8
  %t55 = alloca %"compiler/eval:genRec", align 8
  %t485 = alloca %"compiler/eval:genRec", align 8
  %t489 = alloca %"compiler/eval:genRec", align 8
  %t494 = alloca %"compiler/eval:frame", align 8
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  store %"compiler/mir:Range" %a4, ptr %l4
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/eval:Machine", ptr %t1, i32 0, i32 55
  %t4 = load { i64, ptr }, ptr %t3, !tbaa !27
  store { i64, ptr } %t4, ptr %l39, !tbaa !27
  %t5 = load i64, ptr %l1, !tbaa !24
  %t7 = getelementptr { i64, ptr }, ptr %l39, i32 0, i32 1
  %t8 = load ptr, ptr %t7, !tbaa !27
  %t9 = getelementptr %"compiler/eval:frame", ptr %t8, i64 %t5
  %t10 = getelementptr %"compiler/eval:frame", ptr %t9, i32 0, i32 18
  %t11 = load i32, ptr %t10, !tbaa !23
  %t13 = sext i32 %t11 to i64
  store i64 %t13, ptr %l6, !tbaa !24
  %t15 = load i64, ptr %l6, !tbaa !24
  %t17 = icmp slt i64 %t15, 0
  br i1 %t17, label %bb1, label %bb2
bb1:
  %t19 = load ptr, ptr %l0, !tbaa !29
  %t21 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2enotModelled(ptr %v0, ptr %t19)
  store i64 %t21, ptr %l46
  br label %bb3
bb2:
  br label %bb4
bb3:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb4:
  %t22 = load ptr, ptr %l0, !tbaa !29
  %t23 = load i64, ptr %l1, !tbaa !24
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2edeliver(ptr %v0, ptr %t22, i64 %t23, { i64, [4 x i64] } %a2)
  br label %bb5
bb5:
  %t28 = load ptr, ptr %l0, !tbaa !29
  %t30 = getelementptr %"compiler/eval:Machine", ptr %t28, i32 0, i32 19
  %t31 = load i1, ptr %t30, !tbaa !21
  br i1 %t31, label %bb6, label %bb7
bb6:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb7:
  br label %bb8
bb8:
  %t33 = load ptr, ptr %l0, !tbaa !29
  %t35 = getelementptr %"compiler/eval:Machine", ptr %t33, i32 0, i32 55
  %t36 = load { i64, ptr }, ptr %t35, !tbaa !27
  store { i64, ptr } %t36, ptr %l53, !tbaa !27
  %t37 = load i64, ptr %l1, !tbaa !24
  %t39 = getelementptr { i64, ptr }, ptr %l53, i32 0, i32 1
  %t40 = load ptr, ptr %t39, !tbaa !27
  %t41 = getelementptr %"compiler/eval:frame", ptr %t40, i64 %t37
  call void @llvm.memmove.p0.p0.i64(ptr %l55, ptr %t41, i64 136, i1 false)
  call void @llvm.memmove.p0.p0.i64(ptr %l7, ptr %l55, i64 136, i1 false)
  %t44 = sext i32 %a3 to i64
  %t46 = getelementptr %"compiler/eval:frame", ptr %l7, i32 0, i32 1
  store i64 %t44, ptr %t46, !tbaa !24
  %t47 = getelementptr %"compiler/eval:frame", ptr %l7, i32 0, i32 2
  store i64 0, ptr %t47, !tbaa !24
  %t48 = load ptr, ptr %l0, !tbaa !29
  %t50 = getelementptr %"compiler/eval:Machine", ptr %t48, i32 0, i32 60
  %t51 = load i64, ptr %l6, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3agenRec_3e_2eAt_3ccompiler_2feval_3agenRec_3e(ptr %t52, ptr %v0, ptr %v0, ptr %t50, i64 %t51)
  call void @llvm.memmove.p0.p0.i64(ptr %l61, ptr %t52, i64 280, i1 false)
  br label %bb9
bb9:
  call void @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2feval_3agenRec(ptr %t55, ptr %s0, ptr %l61)
  call void @llvm.memmove.p0.p0.i64(ptr %l63, ptr %t55, i64 280, i1 false)
  br label %bb10
bb10:
  call void @llvm.memmove.p0.p0.i64(ptr %l8, ptr %l63, i64 280, i1 false)
  %t57 = load ptr, ptr %l0, !tbaa !29
  %t59 = getelementptr %"compiler/eval:Machine", ptr %t57, i32 0, i32 58
  %t60 = load i64, ptr %t59, !tbaa !24
  %t61 = getelementptr %"compiler/eval:frame", ptr %l7, i32 0, i32 3
  %t62 = load i64, ptr %t61, !tbaa !24
  %t65 = sub i64 %t60, %t62
  store i64 %t65, ptr %l9, !tbaa !24
  %t67 = getelementptr %"compiler/eval:genRec", ptr %l8, i32 0, i32 8
  %t68 = load i64, ptr %t67, !tbaa !24
  %t70 = icmp slt i64 %t68, 0
  br i1 %t70, label %bb11, label %bb12
bb11:
  %t72 = load ptr, ptr %l0, !tbaa !29
  %t74 = getelementptr %"compiler/eval:Machine", ptr %t72, i32 0, i32 62
  %t76 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %t74)
  store i64 %t76, ptr %l72
  br label %bb13
bb12:
  br label %bb27
bb13:
  %t77 = load i64, ptr %l72, !tbaa !24
  %t78 = getelementptr %"compiler/eval:genRec", ptr %l8, i32 0, i32 8
  store i64 %t77, ptr %t78, !tbaa !24
  store i64 0, ptr %l10, !tbaa !24
  %t79 = load i64, ptr %l9, !tbaa !24
  %t80 = load ptr, ptr %l0, !tbaa !29
  %t82 = getelementptr %"compiler/eval:Machine", ptr %t80, i32 0, i32 23
  %t83 = load { i64, ptr }, ptr %t82, !tbaa !27
  store { i64, ptr } %t83, ptr %l75, !tbaa !27
  %t84 = getelementptr %"compiler/eval:frame", ptr %l7, i32 0, i32 0
  %t85 = load i64, ptr %t84, !tbaa !24
  %t87 = getelementptr { i64, ptr }, ptr %l75, i32 0, i32 1
  %t88 = load ptr, ptr %t87, !tbaa !27
  %t89 = getelementptr %"compiler/eval:cfn", ptr %t88, i64 %t85
  %t90 = getelementptr %"compiler/eval:cfn", ptr %t89, i32 0, i32 2
  %t91 = load { i64, ptr }, ptr %t90, !tbaa !27
  %t93 = extractvalue { i64, ptr } %t91, 0
  %t96 = add i64 %t79, %t93
  %t98 = add i64 %t96, 1
  store i64 %t98, ptr %l11, !tbaa !24
  store i64 1, ptr %l12, !tbaa !24
  %t100 = load i64, ptr %l11, !tbaa !24
  %t101 = load i64, ptr %l10, !tbaa !24
  %t104 = icmp sgt i64 %t100, %t101
  br i1 %t104, label %bb14, label %bb15
bb14:
  %t106 = load i64, ptr %l12, !tbaa !24
  %t108 = icmp sgt i64 %t106, 0
  br i1 %t108, label %bb16, label %bb17
bb15:
  store i64 0, ptr %l84, !tbaa !24
  br label %bb19
bb16:
  %t110 = load i64, ptr %l11, !tbaa !24
  %t111 = load i64, ptr %l10, !tbaa !24
  %t114 = sub i64 %t110, %t111
  %t115 = load i64, ptr %l12, !tbaa !24
  %t118 = add i64 %t114, %t115
  %t120 = sub i64 %t118, 1
  %t121 = load i64, ptr %l12, !tbaa !24
  %t124 = sdiv i64 %t120, %t121
  store i64 %t124, ptr %l87, !tbaa !24
  br label %bb18
bb17:
  store i64 0, ptr %l87, !tbaa !24
  br label %bb18
bb18:
  %t126 = load i64, ptr %l87, !tbaa !24
  store i64 %t126, ptr %l84, !tbaa !24
  br label %bb19
bb19:
  %t127 = load i64, ptr %l84, !tbaa !24
  store i64 %t127, ptr %l13, !tbaa !24
  store i64 0, ptr %l14, !tbaa !24
  br label %bb20
bb20:
  %t128 = load i64, ptr %l14, !tbaa !24
  %t129 = load i64, ptr %l13, !tbaa !24
  %t132 = icmp slt i64 %t128, %t129
  %t134 = xor i1 %t132, true
  br i1 %t134, label %bb21, label %bb22
bb21:
  br label %bb26
bb22:
  br label %bb23
bb23:
  %t136 = load i64, ptr %l10, !tbaa !24
  %t137 = load i64, ptr %l14, !tbaa !24
  %t138 = load i64, ptr %l12, !tbaa !24
  %t141 = mul i64 %t137, %t138
  %t144 = add i64 %t136, %t141
  store i64 %t144, ptr %l15, !tbaa !24
  %t146 = load ptr, ptr %l0, !tbaa !29
  %t148 = getelementptr %"compiler/eval:Machine", ptr %t146, i32 0, i32 62
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %t148, i64 0)
  br label %bb24
bb24:
  br label %bb25
bb25:
  %t150 = load i64, ptr %l14, !tbaa !24
  %t152 = add i64 %t150, 1
  store i64 %t152, ptr %l14, !tbaa !24
  br label %bb20
bb26:
  br label %bb27
bb27:
  %t154 = load i64, ptr %l9, !tbaa !24
  %t156 = getelementptr %"compiler/eval:genRec", ptr %l8, i32 0, i32 9
  store i64 %t154, ptr %t156, !tbaa !24
  store i64 0, ptr %l16, !tbaa !24
  %t157 = load i64, ptr %l9, !tbaa !24
  store i64 %t157, ptr %l17, !tbaa !24
  store i64 1, ptr %l18, !tbaa !24
  %t159 = load i64, ptr %l17, !tbaa !24
  %t160 = load i64, ptr %l16, !tbaa !24
  %t163 = icmp sgt i64 %t159, %t160
  br i1 %t163, label %bb28, label %bb29
bb28:
  %t165 = load i64, ptr %l18, !tbaa !24
  %t167 = icmp sgt i64 %t165, 0
  br i1 %t167, label %bb30, label %bb31
bb29:
  store i64 0, ptr %l114, !tbaa !24
  br label %bb33
bb30:
  %t169 = load i64, ptr %l17, !tbaa !24
  %t170 = load i64, ptr %l16, !tbaa !24
  %t173 = sub i64 %t169, %t170
  %t174 = load i64, ptr %l18, !tbaa !24
  %t177 = add i64 %t173, %t174
  %t179 = sub i64 %t177, 1
  %t180 = load i64, ptr %l18, !tbaa !24
  %t183 = sdiv i64 %t179, %t180
  store i64 %t183, ptr %l117, !tbaa !24
  br label %bb32
bb31:
  store i64 0, ptr %l117, !tbaa !24
  br label %bb32
bb32:
  %t185 = load i64, ptr %l117, !tbaa !24
  store i64 %t185, ptr %l114, !tbaa !24
  br label %bb33
bb33:
  %t186 = load i64, ptr %l114, !tbaa !24
  store i64 %t186, ptr %l19, !tbaa !24
  store i64 0, ptr %l20, !tbaa !24
  br label %bb34
bb34:
  %t187 = load i64, ptr %l20, !tbaa !24
  %t188 = load i64, ptr %l19, !tbaa !24
  %t191 = icmp slt i64 %t187, %t188
  %t193 = xor i1 %t191, true
  br i1 %t193, label %bb35, label %bb36
bb35:
  br label %bb40
bb36:
  br label %bb37
bb37:
  %t195 = load i64, ptr %l16, !tbaa !24
  %t196 = load i64, ptr %l20, !tbaa !24
  %t197 = load i64, ptr %l18, !tbaa !24
  %t200 = mul i64 %t196, %t197
  %t203 = add i64 %t195, %t200
  store i64 %t203, ptr %l21, !tbaa !24
  %t205 = load ptr, ptr %l0, !tbaa !29
  %t207 = getelementptr %"compiler/eval:Machine", ptr %t205, i32 0, i32 62
  %t208 = getelementptr %"compiler/eval:genRec", ptr %l8, i32 0, i32 8
  %t209 = load i64, ptr %t208, !tbaa !24
  %t210 = load i64, ptr %l21, !tbaa !24
  %t213 = add i64 %t209, %t210
  %t214 = load ptr, ptr %l0, !tbaa !29
  %t216 = getelementptr %"compiler/eval:Machine", ptr %t214, i32 0, i32 57
  %t217 = load { i64, ptr }, ptr %t216, !tbaa !27
  store { i64, ptr } %t217, ptr %l141, !tbaa !27
  %t218 = getelementptr %"compiler/eval:frame", ptr %l7, i32 0, i32 3
  %t219 = load i64, ptr %t218, !tbaa !24
  %t220 = load i64, ptr %l21, !tbaa !24
  %t223 = add i64 %t219, %t220
  %t225 = getelementptr { i64, ptr }, ptr %l141, i32 0, i32 1
  %t226 = load ptr, ptr %t225, !tbaa !27
  %t227 = getelementptr i64, ptr %t226, i64 %t223
  %t228 = load i64, ptr %t227, !tbaa !34
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eSetAt_3cI64_3e(ptr %v0, ptr %t207, i64 %t213, i64 %t228)
  br label %bb38
bb38:
  br label %bb39
bb39:
  %t232 = load i64, ptr %l20, !tbaa !24
  %t234 = add i64 %t232, 1
  store i64 %t234, ptr %l20, !tbaa !24
  br label %bb34
bb40:
  %t236 = load ptr, ptr %l0, !tbaa !29
  %t238 = getelementptr %"compiler/eval:Machine", ptr %t236, i32 0, i32 22
  %t239 = getelementptr %"compiler/eval:frame", ptr %l7, i32 0, i32 0
  %t240 = load i64, ptr %t239, !tbaa !24
  %t243 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aFn_26_3e_2eAt_3ccompiler_2fmir_3aFn_26_3e(ptr %v0, ptr %v0, ptr %t238, i64 %t240)
  store ptr %t243, ptr %l151
  br label %bb41
bb41:
  %t244 = load ptr, ptr %l151, !tbaa !29
  store ptr %t244, ptr %l22, !tbaa !29
  %t245 = getelementptr %"compiler/eval:genRec", ptr %l8, i32 0, i32 8
  %t246 = load i64, ptr %t245, !tbaa !24
  %t247 = load i64, ptr %l9, !tbaa !24
  %t250 = add i64 %t246, %t247
  store i64 %t250, ptr %l23, !tbaa !24
  store i32 0, ptr %l24, !tbaa !23
  %t252 = getelementptr %"compiler/mir:Range", ptr %l4, i32 0, i32 1
  %t253 = load i32, ptr %t252, !tbaa !23
  store i32 %t253, ptr %l25, !tbaa !23
  store i32 1, ptr %l26, !tbaa !23
  %t255 = load i32, ptr %l25, !tbaa !23
  %t256 = load i32, ptr %l24, !tbaa !23
  %t259 = icmp sgt i32 %t255, %t256
  br i1 %t259, label %bb42, label %bb43
bb42:
  %t261 = load i32, ptr %l26, !tbaa !23
  %t263 = icmp sgt i32 %t261, 0
  br i1 %t263, label %bb44, label %bb45
bb43:
  store i32 0, ptr %l159, !tbaa !23
  br label %bb47
bb44:
  %t265 = load i32, ptr %l25, !tbaa !23
  %t266 = load i32, ptr %l24, !tbaa !23
  %t269 = sub i32 %t265, %t266
  %t270 = load i32, ptr %l26, !tbaa !23
  %t273 = add i32 %t269, %t270
  %t275 = sub i32 %t273, 1
  %t276 = load i32, ptr %l26, !tbaa !23
  %t279 = sdiv i32 %t275, %t276
  store i32 %t279, ptr %l162, !tbaa !23
  br label %bb46
bb45:
  store i32 0, ptr %l162, !tbaa !23
  br label %bb46
bb46:
  %t281 = load i32, ptr %l162, !tbaa !23
  store i32 %t281, ptr %l159, !tbaa !23
  br label %bb47
bb47:
  %t282 = load i32, ptr %l159, !tbaa !23
  store i32 %t282, ptr %l27, !tbaa !23
  store i32 0, ptr %l28, !tbaa !23
  br label %bb48
bb48:
  %t283 = load i32, ptr %l28, !tbaa !23
  %t284 = load i32, ptr %l27, !tbaa !23
  %t287 = icmp slt i32 %t283, %t284
  %t289 = xor i1 %t287, true
  br i1 %t289, label %bb49, label %bb50
bb49:
  br label %bb64
bb50:
  br label %bb51
bb51:
  %t291 = load i32, ptr %l24, !tbaa !23
  %t292 = load i32, ptr %l28, !tbaa !23
  %t293 = load i32, ptr %l26, !tbaa !23
  %t296 = mul i32 %t292, %t293
  %t299 = add i32 %t291, %t296
  %t301 = load ptr, ptr %l22, !tbaa !29
  %t303 = getelementptr %"compiler/mir:Fn", ptr %t301, i32 0, i32 12
  %t304 = getelementptr %"compiler/mir:Range", ptr %l4, i32 0, i32 0
  %t305 = load i32, ptr %t304, !tbaa !23
  %t307 = sext i32 %t305 to i64
  %t310 = sext i32 %t299 to i64
  %t313 = add i64 %t307, %t310
  %t316 = call { i64, [1 x i64] } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aScopeRef_3e_2eAt_3ccompiler_2fmir_3aScopeRef_3e(ptr %v0, ptr %t303, i64 %t313)
  store { i64, [1 x i64] } %t316, ptr %l187
  br label %bb52
bb52:
  %t317 = load { i64, [1 x i64] }, ptr %l187
  store { i64, [1 x i64] } %t317, ptr %l30
  %t318 = load { i64, [1 x i64] }, ptr %l30
  %t320 = extractvalue { i64, [1 x i64] } %t318, 0
  %t321 = icmp eq i64 %t320, 0
  br i1 %t321, label %bb53, label %bb54
bb53:
  %t323 = getelementptr { i64, [1 x i64] }, ptr %l30, i32 0, i32 1
  %t324 = getelementptr { i32 }, ptr %t323, i32 0, i32 0
  %t325 = load i32, ptr %t324
  store i32 %t325, ptr %l31, !tbaa !23
  br label %bb55
bb54:
  br label %bb57
bb55:
  %t327 = load ptr, ptr %l0, !tbaa !29
  %t329 = getelementptr %"compiler/eval:Machine", ptr %t327, i32 0, i32 62
  %t330 = load i64, ptr %l23, !tbaa !24
  %t331 = load ptr, ptr %l0, !tbaa !29
  %t333 = getelementptr %"compiler/eval:Machine", ptr %t331, i32 0, i32 57
  %t334 = load { i64, ptr }, ptr %t333, !tbaa !27
  store { i64, ptr } %t334, ptr %l195, !tbaa !27
  %t335 = getelementptr %"compiler/eval:frame", ptr %l7, i32 0, i32 4
  %t336 = load i64, ptr %t335, !tbaa !24
  %t337 = load i32, ptr %l31, !tbaa !23
  %t339 = sext i32 %t337 to i64
  %t342 = add i64 %t336, %t339
  %t344 = getelementptr { i64, ptr }, ptr %l195, i32 0, i32 1
  %t345 = load ptr, ptr %t344, !tbaa !27
  %t346 = getelementptr i64, ptr %t345, i64 %t342
  %t347 = load i64, ptr %t346, !tbaa !34
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eSetAt_3cI64_3e(ptr %v0, ptr %t329, i64 %t330, i64 %t347)
  br label %bb56
bb56:
  %t351 = load i64, ptr %l23, !tbaa !24
  %t353 = add i64 %t351, 1
  store i64 %t353, ptr %l23, !tbaa !24
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
  call void @__olang_check_failed(ptr @olang_loc_77ec49cd2ef2b53_f798fa63e9acfcff)
  unreachable
bb62:
  br label %bb63
bb63:
  %t355 = load i32, ptr %l28, !tbaa !23
  %t357 = add i32 %t355, 1
  store i32 %t357, ptr %l28, !tbaa !23
  br label %bb48
bb64:
  %t359 = load ptr, ptr %l0, !tbaa !29
  %t361 = getelementptr %"compiler/eval:Machine", ptr %t359, i32 0, i32 62
  %t362 = load i64, ptr %l23, !tbaa !24
  %t363 = getelementptr %"compiler/eval:frame", ptr %l7, i32 0, i32 6
  %t364 = load i64, ptr %t363, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eSetAt_3cI64_3e(ptr %v0, ptr %t361, i64 %t362, i64 %t364)
  br label %bb65
bb65:
  %t368 = load i64, ptr %l23, !tbaa !24
  %t370 = add i64 %t368, 1
  %t371 = getelementptr %"compiler/eval:genRec", ptr %l8, i32 0, i32 8
  %t372 = load i64, ptr %t371, !tbaa !24
  %t373 = load i64, ptr %l9, !tbaa !24
  %t376 = add i64 %t372, %t373
  %t379 = sub i64 %t370, %t376
  %t381 = getelementptr %"compiler/eval:genRec", ptr %l8, i32 0, i32 10
  store i64 %t379, ptr %t381, !tbaa !24
  call void @llvm.memmove.p0.p0.i64(ptr %l215, ptr %l7, i64 136, i1 false)
  %t382 = getelementptr %"compiler/eval:genRec", ptr %l8, i32 0, i32 2
  call void @llvm.memmove.p0.p0.i64(ptr %t382, ptr %l215, i64 136, i1 false)
  %t385 = sext i32 %a5 to i64
  %t387 = getelementptr %"compiler/eval:genRec", ptr %l8, i32 0, i32 3
  store i64 %t385, ptr %t387, !tbaa !24
  %t388 = getelementptr %"compiler/eval:genRec", ptr %l8, i32 0, i32 6
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eClear_3cI64_3e(ptr %s0, ptr %t388)
  br label %bb66
bb66:
  %t390 = getelementptr %"compiler/eval:genRec", ptr %l8, i32 0, i32 7
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eClear_3cI64_3e(ptr %s0, ptr %t390)
  br label %bb67
bb67:
  store i64 0, ptr %l32, !tbaa !24
  %t392 = load ptr, ptr %l0, !tbaa !29
  %t394 = getelementptr %"compiler/eval:Machine", ptr %t392, i32 0, i32 63
  %t396 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %t394)
  store i64 %t396, ptr %l222
  br label %bb68
bb68:
  %t397 = load i64, ptr %l222, !tbaa !24
  store i64 %t397, ptr %l33, !tbaa !24
  store i64 1, ptr %l34, !tbaa !24
  %t398 = load i64, ptr %l33, !tbaa !24
  %t399 = load i64, ptr %l32, !tbaa !24
  %t402 = icmp sgt i64 %t398, %t399
  br i1 %t402, label %bb69, label %bb70
bb69:
  %t404 = load i64, ptr %l34, !tbaa !24
  %t406 = icmp sgt i64 %t404, 0
  br i1 %t406, label %bb71, label %bb72
bb70:
  store i64 0, ptr %l226, !tbaa !24
  br label %bb74
bb71:
  %t408 = load i64, ptr %l33, !tbaa !24
  %t409 = load i64, ptr %l32, !tbaa !24
  %t412 = sub i64 %t408, %t409
  %t413 = load i64, ptr %l34, !tbaa !24
  %t416 = add i64 %t412, %t413
  %t418 = sub i64 %t416, 1
  %t419 = load i64, ptr %l34, !tbaa !24
  %t422 = sdiv i64 %t418, %t419
  store i64 %t422, ptr %l229, !tbaa !24
  br label %bb73
bb72:
  store i64 0, ptr %l229, !tbaa !24
  br label %bb73
bb73:
  %t424 = load i64, ptr %l229, !tbaa !24
  store i64 %t424, ptr %l226, !tbaa !24
  br label %bb74
bb74:
  %t425 = load i64, ptr %l226, !tbaa !24
  store i64 %t425, ptr %l35, !tbaa !24
  store i64 0, ptr %l36, !tbaa !24
  br label %bb75
bb75:
  %t426 = load i64, ptr %l36, !tbaa !24
  %t427 = load i64, ptr %l35, !tbaa !24
  %t430 = icmp slt i64 %t426, %t427
  %t432 = xor i1 %t430, true
  br i1 %t432, label %bb76, label %bb77
bb76:
  br label %bb88
bb77:
  br label %bb78
bb78:
  %t434 = load i64, ptr %l32, !tbaa !24
  %t435 = load i64, ptr %l36, !tbaa !24
  %t436 = load i64, ptr %l34, !tbaa !24
  %t439 = mul i64 %t435, %t436
  %t442 = add i64 %t434, %t439
  store i64 %t442, ptr %l37, !tbaa !24
  %t444 = load ptr, ptr %l0, !tbaa !29
  %t446 = getelementptr %"compiler/eval:Machine", ptr %t444, i32 0, i32 63
  %t447 = load i64, ptr %l37, !tbaa !24
  %t450 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t446, i64 %t447)
  store i64 %t450, ptr %l250
  br label %bb79
bb79:
  %t451 = load i64, ptr %l1, !tbaa !24
  %t452 = load i64, ptr %l250, !tbaa !24
  %t454 = icmp ne i64 %t452, %t451
  br i1 %t454, label %bb80, label %bb81
bb80:
  br label %bb87
bb81:
  br label %bb82
bb82:
  %t456 = getelementptr %"compiler/eval:genRec", ptr %l8, i32 0, i32 6
  store ptr %t456, ptr %l253, !tbaa !29
  %t457 = load ptr, ptr %l0, !tbaa !29
  %t459 = getelementptr %"compiler/eval:Machine", ptr %t457, i32 0, i32 64
  %t460 = load i64, ptr %l37, !tbaa !24
  %t463 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t459, i64 %t460)
  store i64 %t463, ptr %l257
  br label %bb83
bb83:
  %t464 = load ptr, ptr %l253, !tbaa !29
  %t465 = load i64, ptr %l257, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %s0, ptr %t464, i64 %t465)
  br label %bb84
bb84:
  %t466 = getelementptr %"compiler/eval:genRec", ptr %l8, i32 0, i32 7
  store ptr %t466, ptr %l258, !tbaa !29
  %t467 = load ptr, ptr %l0, !tbaa !29
  %t469 = getelementptr %"compiler/eval:Machine", ptr %t467, i32 0, i32 65
  %t470 = load i64, ptr %l37, !tbaa !24
  %t473 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t469, i64 %t470)
  store i64 %t473, ptr %l262
  br label %bb85
bb85:
  %t474 = load ptr, ptr %l258, !tbaa !29
  %t475 = load i64, ptr %l262, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %s0, ptr %t474, i64 %t475)
  br label %bb86
bb86:
  br label %bb87
bb87:
  %t476 = load i64, ptr %l36, !tbaa !24
  %t478 = add i64 %t476, 1
  store i64 %t478, ptr %l36, !tbaa !24
  br label %bb75
bb88:
  %t480 = getelementptr %"compiler/eval:genRec", ptr %l8, i32 0, i32 0
  store i64 1, ptr %t480, !tbaa !24
  %t481 = load ptr, ptr %l0, !tbaa !29
  %t483 = getelementptr %"compiler/eval:Machine", ptr %t481, i32 0, i32 60
  store ptr %t483, ptr %l266, !tbaa !29
  %t484 = load i64, ptr %l6, !tbaa !24
  store i64 %t484, ptr %l267, !tbaa !24
  call void @llvm.memmove.p0.p0.i64(ptr %l268, ptr %l8, i64 280, i1 false)
  call void @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2feval_3agenRec(ptr %t485, ptr %s0, ptr %l268)
  call void @llvm.memmove.p0.p0.i64(ptr %l270, ptr %t485, i64 280, i1 false)
  br label %bb89
bb89:
  %t487 = load ptr, ptr %l266, !tbaa !29
  %t488 = load i64, ptr %l267, !tbaa !24
  call void @llvm.memmove.p0.p0.i64(ptr %t489, ptr %l270, i64 280, i1 false)
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3agenRec_3e_2eSetAt_3ccompiler_2feval_3agenRec_3e(ptr %v0, ptr %s0, ptr %t487, i64 %t488, ptr %t489)
  br label %bb90
bb90:
  %t490 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2epopFrame(ptr %v0, ptr %t490)
  br label %bb91
bb91:
  %t492 = load ptr, ptr %l0, !tbaa !29
  call void @llvm.memmove.p0.p0.i64(ptr %l273, ptr %l7, i64 136, i1 false)
  call void @llvm.memmove.p0.p0.i64(ptr %t494, ptr %l273, i64 136, i1 false)
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2ereturned(ptr %v0, ptr %t492, ptr %t494)
  br label %bb92
bb92:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2feval_2ecompiler_2feval_3aMachine_2eunmark(ptr %v0, ptr %a0, i64 %a1, i64 %a2) #0 {
entry:
  %l1 = alloca i64
  %l2 = alloca i64
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l22 = alloca i64
  %l25 = alloca i64
  %l44 = alloca { i64, ptr }
  store i64 %a1, ptr %l1
  store i64 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load i64, ptr %l2, !tbaa !24
  %t3 = icmp sle i64 %t1, 0
  br i1 %t3, label %bb1, label %bb2
bb1:
  br label %ret
bb2:
  br label %bb3
bb3:
  %t5 = load i64, ptr %l1, !tbaa !24
  %t7 = sdiv i64 %t5, 8
  store i64 %t7, ptr %l3, !tbaa !24
  %t9 = load i64, ptr %l1, !tbaa !24
  %t10 = load i64, ptr %l2, !tbaa !24
  %t13 = add i64 %t9, %t10
  %t15 = sub i64 %t13, 1
  %t17 = sdiv i64 %t15, 8
  %t19 = add i64 %t17, 1
  store i64 %t19, ptr %l4, !tbaa !24
  store i64 1, ptr %l5, !tbaa !24
  %t21 = load i64, ptr %l4, !tbaa !24
  %t22 = load i64, ptr %l3, !tbaa !24
  %t25 = icmp sgt i64 %t21, %t22
  br i1 %t25, label %bb4, label %bb5
bb4:
  %t27 = load i64, ptr %l5, !tbaa !24
  %t29 = icmp sgt i64 %t27, 0
  br i1 %t29, label %bb6, label %bb7
bb5:
  store i64 0, ptr %l22, !tbaa !24
  br label %bb9
bb6:
  %t31 = load i64, ptr %l4, !tbaa !24
  %t32 = load i64, ptr %l3, !tbaa !24
  %t35 = sub i64 %t31, %t32
  %t36 = load i64, ptr %l5, !tbaa !24
  %t39 = add i64 %t35, %t36
  %t41 = sub i64 %t39, 1
  %t42 = load i64, ptr %l5, !tbaa !24
  %t45 = sdiv i64 %t41, %t42
  store i64 %t45, ptr %l25, !tbaa !24
  br label %bb8
bb7:
  store i64 0, ptr %l25, !tbaa !24
  br label %bb8
bb8:
  %t47 = load i64, ptr %l25, !tbaa !24
  store i64 %t47, ptr %l22, !tbaa !24
  br label %bb9
bb9:
  %t48 = load i64, ptr %l22, !tbaa !24
  store i64 %t48, ptr %l6, !tbaa !24
  store i64 0, ptr %l7, !tbaa !24
  br label %bb10
bb10:
  %t49 = load i64, ptr %l7, !tbaa !24
  %t50 = load i64, ptr %l6, !tbaa !24
  %t53 = icmp slt i64 %t49, %t50
  %t55 = xor i1 %t53, true
  br i1 %t55, label %bb11, label %bb12
bb11:
  br label %bb15
bb12:
  br label %bb13
bb13:
  %t57 = load i64, ptr %l3, !tbaa !24
  %t58 = load i64, ptr %l7, !tbaa !24
  %t59 = load i64, ptr %l5, !tbaa !24
  %t62 = mul i64 %t58, %t59
  %t65 = add i64 %t57, %t62
  %t69 = getelementptr %"compiler/eval:Machine", ptr %a0, i32 0, i32 43
  %t70 = load { i64, ptr }, ptr %t69, !tbaa !27
  store { i64, ptr } %t70, ptr %l44, !tbaa !27
  %t73 = getelementptr { i64, ptr }, ptr %l44, i32 0, i32 1
  %t74 = load ptr, ptr %t73, !tbaa !27
  %t75 = getelementptr i64, ptr %t74, i64 %t65
  store i64 0, ptr %t75, !tbaa !34
  br label %bb14
bb14:
  %t76 = load i64, ptr %l7, !tbaa !24
  %t78 = add i64 %t76, 1
  store i64 %t78, ptr %l7, !tbaa !24
  br label %bb10
bb15:
  br label %ret
ret:
  ret void
}

define dso_local { { i64, ptr }, %"compiler/source:Span" } @compiler_2feval_2ecompiler_2feval_3aMachine_2ewhyCall(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, { i64, [7 x i64] } %a1, %"compiler/source:Span" %a2, ptr %a3, ptr %a4) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca { i64, [7 x i64] }
  %l2 = alloca %"compiler/source:Span"
  %l3 = alloca ptr
  %l5 = alloca i64
  %l6 = alloca i32
  %l7 = alloca { i64, ptr }
  %l8 = alloca { i64, [2 x i64] }
  %l9 = alloca i64
  %l14 = alloca { i64, ptr }
  %l18 = alloca { i64, ptr }
  %l19 = alloca i32
  %l21 = alloca i1
  %l23 = alloca i1
  %l24 = alloca { i64, ptr }
  %l26 = alloca ptr
  %l30 = alloca i32
  %l31 = alloca { i64, ptr }
  %l33 = alloca i1
  %l42 = alloca i64
  %l46 = alloca i64
  %l47 = alloca i32
  %l52 = alloca i1
  %l55 = alloca i1
  %l56 = alloca i32
  %l62 = alloca { i64, ptr }
  %l63 = alloca { i64, ptr }
  %l64 = alloca %"compiler/source:Span"
  %l65 = alloca { { i64, ptr }, %"compiler/source:Span" }
  %l66 = alloca { i64, ptr }
  %l67 = alloca i64
  %l68 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %s1 = alloca %olang.scope
  %rv = alloca { { i64, ptr }, %"compiler/source:Span" }
  store ptr %a0, ptr %l0
  store { i64, [7 x i64] } %a1, ptr %l1
  store %"compiler/source:Span" %a2, ptr %l2
  store ptr %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load { i64, [7 x i64] }, ptr %l1
  %t3 = extractvalue { i64, [7 x i64] } %t1, 0
  %t4 = icmp eq i64 %t3, 1
  br i1 %t4, label %bb1, label %bb2
bb1:
  %t6 = getelementptr { i64, [7 x i64] }, ptr %l1, i32 0, i32 1
  %t7 = getelementptr { i64, i32 }, ptr %t6, i32 0, i32 0
  %t8 = load i64, ptr %t7
  store i64 %t8, ptr %l5, !tbaa !24
  %t10 = getelementptr { i64, [7 x i64] }, ptr %l1, i32 0, i32 1
  %t11 = getelementptr { i64, i32 }, ptr %t10, i32 0, i32 1
  %t12 = load i32, ptr %t11
  store i32 %t12, ptr %l6, !tbaa !23
  br label %bb3
bb2:
  br label %bb18
bb3:
  store %olang.scope zeroinitializer, ptr %s1
  %t14 = load ptr, ptr %l0, !tbaa !29
  %t16 = getelementptr %"compiler/eval:Machine", ptr %t14, i32 0, i32 31
  %t17 = load i64, ptr %l5, !tbaa !24
  %t20 = call { i32, { i64, ptr } } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2ftext_3aString_He9bc6cfad7ef603960b4717f3121b8e8(ptr %v0, ptr %v0, ptr %t16, i64 %t17)
  %t21 = extractvalue { i32, { i64, ptr } } %t20, 1
  %t22 = extractvalue { i32, { i64, ptr } } %t20, 0
  store i32 %t22, ptr %l19
  %t23 = icmp ne i32 %t22, 0
  br i1 %t23, label %bb5, label %ok.24, !prof !99
ok.24:
  store { i64, ptr } %t21, ptr %l18
  br label %bb4
bb4:
  %t25 = load { i64, ptr }, ptr %l18, !tbaa !27
  store { i64, ptr } %t25, ptr %l14, !tbaa !27
  br label %bb7
bb5:
  br label %bb6
bb6:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d35, i32 0, i32 1) }, ptr %l14, !tbaa !27
  br label %bb7
bb7:
  %t26 = load { i64, ptr }, ptr %l14, !tbaa !27
  store { i64, ptr } %t26, ptr %l7, !tbaa !27
  %t27 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t29 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s1, { i64, ptr } %t27, { i64, ptr } { i64 20, ptr getelementptr inbounds (<{ i64, [20 x i8] }>, ptr @.d36, i32 0, i32 1) })
  store i1 %t29, ptr %l21
  br label %bb8
bb8:
  %t30 = load i1, ptr %l21, !tbaa !21
  %t31 = xor i1 %t30, true
  br i1 %t31, label %bb9, label %bb10
bb9:
  %t33 = load { i64, ptr }, ptr %l7, !tbaa !27
  store { i64, ptr } %t33, ptr %l24, !tbaa !27
  %t34 = load ptr, ptr %l0, !tbaa !29
  %t36 = getelementptr %"compiler/eval:Machine", ptr %t34, i32 0, i32 0
  %t37 = load ptr, ptr %t36, !tbaa !29
  store ptr %t37, ptr %l26, !tbaa !29
  %t38 = load ptr, ptr %l0, !tbaa !29
  %t40 = getelementptr %"compiler/eval:Machine", ptr %t38, i32 0, i32 0
  %t41 = load ptr, ptr %t40, !tbaa !29
  %t42 = load i32, ptr %l6, !tbaa !23
  %t45 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParams(ptr %v0, ptr %t41, i32 %t42)
  store i32 %t45, ptr %l30
  br label %bb11
bb10:
  store i1 false, ptr %l23, !tbaa !21
  br label %bb14
bb11:
  %t46 = load ptr, ptr %l26, !tbaa !29
  %t47 = load i32, ptr %l30, !tbaa !23
  %t48 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %s1, ptr %t46, i32 %t47)
  store { i64, ptr } %t48, ptr %l31
  br label %bb12
bb12:
  %t49 = load { i64, ptr }, ptr %l31, !tbaa !27
  %t50 = extractvalue { i64, ptr } %t49, 0
  %t51 = load { i64, ptr }, ptr %l24, !tbaa !27
  %t53 = call i1 @compiler_2ftyped_2eMathExtern(ptr %v0, { i64, ptr } %t51, i64 %t50)
  store i1 %t53, ptr %l33
  br label %bb13
bb13:
  %t54 = load i1, ptr %l33, !tbaa !21
  %t55 = xor i1 %t54, true
  store i1 %t55, ptr %l23, !tbaa !21
  br label %bb14
bb14:
  %t57 = load i1, ptr %l23, !tbaa !21
  br i1 %t57, label %bb15, label %bb16
bb15:
  %t58 = load { i64, ptr }, ptr @G_2ecompiler_2feval_2eWhyExtern, !tbaa !27
  %t60 = extractvalue { i64, ptr } %t58, 1
  %t61 = extractvalue { i64, ptr } %t58, 0
  %t62 = call ptr @__olang_scope_alloc(ptr %v3, i64 %t61)
  call void @olang_textcopy(ptr %t62, ptr %t60, i64 %t61)
  %t63 = insertvalue { i64, ptr } undef, i64 %t61, 0
  %t64 = insertvalue { i64, ptr } %t63, ptr %t62, 1
  %t65 = load %"compiler/source:Span", ptr %l2
  %t67 = insertvalue { { i64, ptr }, %"compiler/source:Span" } undef, { i64, ptr } %t64, 0
  %t69 = insertvalue { { i64, ptr }, %"compiler/source:Span" } %t67, %"compiler/source:Span" %t65, 1
  call void @__olang_scope_close(ptr %s1)
  call void @__olang_scope_close(ptr %s0)
  store { { i64, ptr }, %"compiler/source:Span" } %t69, ptr %rv
  br label %ret
bb16:
  br label %bb17
bb17:
  call void @__olang_scope_close(ptr %s1)
  br label %bb40
bb18:
  %t71 = load { i64, [7 x i64] }, ptr %l1
  %t73 = extractvalue { i64, [7 x i64] } %t71, 0
  %t74 = icmp eq i64 %t73, 0
  br i1 %t74, label %bb19, label %bb20
bb19:
  %t76 = getelementptr { i64, [7 x i64] }, ptr %l1, i32 0, i32 1
  %t77 = getelementptr { { i64, [2 x i64] }, i32 }, ptr %t76, i32 0, i32 0
  %t78 = load { i64, [2 x i64] }, ptr %t77
  store { i64, [2 x i64] } %t78, ptr %l8
  br label %bb21
bb20:
  br label %bb35
bb21:
  %t80 = load ptr, ptr %l0, !tbaa !29
  %t82 = getelementptr %"compiler/eval:Machine", ptr %t80, i32 0, i32 27
  %t83 = load { i64, [2 x i64] }, ptr %l8
  %t86 = call { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fmir_3aFnKey_2c_20I64_3e_2eG_H6ffe2eb17daa971b2c9d564ad72358b1(ptr %v0, ptr %t82, { i64, [2 x i64] } %t83)
  %t87 = extractvalue { i32, i64 } %t86, 1
  %t88 = extractvalue { i32, i64 } %t86, 0
  store i32 %t88, ptr %l47
  %t89 = icmp ne i32 %t88, 0
  br i1 %t89, label %bb23, label %ok.90, !prof !99
ok.90:
  store i64 %t87, ptr %l46
  br label %bb22
bb22:
  %t91 = load i64, ptr %l46, !tbaa !24
  store i64 %t91, ptr %l42, !tbaa !24
  br label %bb25
bb23:
  br label %bb24
bb24:
  %t92 = load { i64, ptr }, ptr @G_2ecompiler_2feval_2eWhyNoBody, !tbaa !27
  %t94 = extractvalue { i64, ptr } %t92, 1
  %t95 = extractvalue { i64, ptr } %t92, 0
  %t96 = call ptr @__olang_scope_alloc(ptr %v3, i64 %t95)
  call void @olang_textcopy(ptr %t96, ptr %t94, i64 %t95)
  %t97 = insertvalue { i64, ptr } undef, i64 %t95, 0
  %t98 = insertvalue { i64, ptr } %t97, ptr %t96, 1
  %t99 = load %"compiler/source:Span", ptr %l2
  %t101 = insertvalue { { i64, ptr }, %"compiler/source:Span" } undef, { i64, ptr } %t98, 0
  %t103 = insertvalue { { i64, ptr }, %"compiler/source:Span" } %t101, %"compiler/source:Span" %t99, 1
  call void @__olang_scope_close(ptr %s0)
  store { { i64, ptr }, %"compiler/source:Span" } %t103, ptr %rv
  br label %ret
bb25:
  %t105 = load i64, ptr %l42, !tbaa !24
  store i64 %t105, ptr %l9, !tbaa !24
  %t106 = load ptr, ptr %l3, !tbaa !29
  %t107 = load i64, ptr %l9, !tbaa !24
  %t110 = call { i32, i1 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2eGet_3cI64_2c_20Bool_3e(ptr %v1, ptr %t106, i64 %t107)
  %t111 = extractvalue { i32, i1 } %t110, 1
  %t112 = extractvalue { i32, i1 } %t110, 0
  store i32 %t112, ptr %l56
  %t113 = icmp ne i32 %t112, 0
  br i1 %t113, label %bb27, label %ok.114, !prof !99
ok.114:
  store i1 %t111, ptr %l55
  br label %bb26
bb26:
  %t115 = load i1, ptr %l55, !tbaa !21
  store i1 %t115, ptr %l52, !tbaa !21
  br label %bb29
bb27:
  br label %bb28
bb28:
  store i1 false, ptr %l52, !tbaa !21
  br label %bb29
bb29:
  %t116 = load i1, ptr %l52, !tbaa !21
  %t117 = xor i1 %t116, true
  br i1 %t117, label %bb30, label %bb31
bb30:
  %t119 = load ptr, ptr %l3, !tbaa !29
  %t120 = load i64, ptr %l9, !tbaa !24
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2ePut_3cI64_2c_20Bool_3e(ptr %v1, ptr %t119, i64 %t120, i1 true)
  br label %bb32
bb31:
  br label %bb34
bb32:
  %t124 = load i64, ptr %l9, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v2, ptr %a4, i64 %t124)
  br label %bb33
bb33:
  br label %bb34
bb34:
  br label %bb40
bb35:
  br i1 true, label %bb36, label %bb37
bb36:
  br label %bb38
bb37:
  br label %bb39
bb38:
  br label %bb40
bb39:
  call void @__olang_check_failed(ptr @olang_loc_69287ebff671eb2d_9fd35f0201a42c21)
  unreachable
bb40:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d37, i32 0, i32 1) }, ptr %l62, !tbaa !27
  %t127 = load { i64, ptr }, ptr %l62, !tbaa !27
  store { i64, ptr } %t127, ptr %l63, !tbaa !27
  %t128 = call %"compiler/source:Span" @compiler_2fsource_3aSpan_2ector(ptr %s0, i32 0, i32 0)
  store %"compiler/source:Span" %t128, ptr %l64
  br label %bb41
bb41:
  %t129 = load { i64, ptr }, ptr %l63, !tbaa !27
  %t130 = insertvalue { { i64, ptr }, %"compiler/source:Span" } undef, { i64, ptr } %t129, 0
  %t131 = load %"compiler/source:Span", ptr %l64
  %t132 = insertvalue { { i64, ptr }, %"compiler/source:Span" } %t130, %"compiler/source:Span" %t131, 1
  store { { i64, ptr }, %"compiler/source:Span" } %t132, ptr %l65
  %t133 = getelementptr { { i64, ptr }, %"compiler/source:Span" }, ptr %l65, i32 0, i32 0
  %t134 = load { i64, ptr }, ptr %t133, !tbaa !27
  store { i64, ptr } %t134, ptr %l66, !tbaa !27
  %t135 = load { i64, ptr }, ptr %l66, !tbaa !27
  %t136 = extractvalue { i64, ptr } %t135, 0
  store i64 %t136, ptr %l67, !tbaa !24
  %t137 = load i64, ptr %l67, !tbaa !24
  %t138 = mul i64 %t137, 1
  %t139 = call ptr @__olang_scope_alloc(ptr %v3, i64 %t138)
  %t140 = insertvalue { i64, ptr } undef, i64 %t137, 0
  %t141 = insertvalue { i64, ptr } %t140, ptr %t139, 1
  store { i64, ptr } %t141, ptr %l68, !tbaa !27
  %t142 = getelementptr { i64, ptr }, ptr %l68, i32 0, i32 1
  %t143 = load ptr, ptr %t142, !tbaa !27
  %t144 = getelementptr { i64, ptr }, ptr %l66, i32 0, i32 1
  %t145 = load ptr, ptr %t144, !tbaa !27
  %t146 = load i64, ptr %l67, !tbaa !24
  %t147 = mul i64 %t146, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t143, ptr %t145, i64 %t147, i1 false)
  %t148 = load { i64, ptr }, ptr %l68, !tbaa !27
  %t149 = getelementptr { { i64, ptr }, %"compiler/source:Span" }, ptr %l65, i32 0, i32 0
  store { i64, ptr } %t148, ptr %t149, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  %t150 = load { { i64, ptr }, %"compiler/source:Span" }, ptr %l65
  store { { i64, ptr }, %"compiler/source:Span" } %t150, ptr %rv
  br label %ret
ret:
  %rr = load { { i64, ptr }, %"compiler/source:Span" }, ptr %rv
  ret { { i64, ptr }, %"compiler/source:Span" } %rr
}

define dso_local { { i64, ptr }, %"compiler/source:Span" } @compiler_2feval_2ecompiler_2feval_3aMachine_2ewhyTerm(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %a0, ptr %a1, { i64, [8 x i64] } %a2, ptr %a3, ptr %a4) #0 {
entry:
  %l2 = alloca { i64, [8 x i64] }
  %l5 = alloca %"compiler/source:Span"
  %l6 = alloca i32
  %l7 = alloca %"compiler/source:Span"
  %l8 = alloca i32
  %l15 = alloca i1
  %l30 = alloca ptr
  %l35 = alloca %"compiler/mir:Call"
  %l40 = alloca { { i64, ptr }, %"compiler/source:Span" }
  %l41 = alloca { i64, ptr }
  %l42 = alloca i64
  %l43 = alloca { i64, ptr }
  %l44 = alloca { i64, ptr }
  %l45 = alloca { i64, ptr }
  %l46 = alloca %"compiler/source:Span"
  %l47 = alloca { { i64, ptr }, %"compiler/source:Span" }
  %l48 = alloca { i64, ptr }
  %l49 = alloca i64
  %l50 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %rv = alloca { { i64, ptr }, %"compiler/source:Span" }
  store { i64, [8 x i64] } %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load { i64, [8 x i64] }, ptr %l2
  %t3 = extractvalue { i64, [8 x i64] } %t1, 0
  %t4 = icmp eq i64 %t3, 9
  br i1 %t4, label %bb1, label %bb2
bb1:
  %t6 = getelementptr { i64, [8 x i64] }, ptr %l2, i32 0, i32 1
  %t7 = getelementptr { %"compiler/source:Span", i32, { i64, [4 x i64] } }, ptr %t6, i32 0, i32 0
  %t8 = load %"compiler/source:Span", ptr %t7
  store %"compiler/source:Span" %t8, ptr %l5
  %t10 = getelementptr { i64, [8 x i64] }, ptr %l2, i32 0, i32 1
  %t11 = getelementptr { %"compiler/source:Span", i32, { i64, [4 x i64] } }, ptr %t10, i32 0, i32 1
  %t12 = load i32, ptr %t11, !range !{i32 0, i32 16}
  store i32 %t12, ptr %l6
  br label %bb3
bb2:
  br label %bb10
bb3:
  %t14 = load i32, ptr %l6, !range !{i32 0, i32 16}
  %t16 = trunc i64 0 to i32
  %t17 = icmp eq i32 %t14, %t16
  br i1 %t17, label %bb4, label %bb5
bb4:
  store i1 true, ptr %l15, !tbaa !21
  br label %bb6
bb5:
  %t19 = load i32, ptr %l6, !range !{i32 0, i32 16}
  %t21 = trunc i64 1 to i32
  %t22 = icmp eq i32 %t19, %t21
  store i1 %t22, ptr %l15, !tbaa !21
  br label %bb6
bb6:
  %t24 = load i1, ptr %l15, !tbaa !21
  br i1 %t24, label %bb7, label %bb8
bb7:
  %t25 = load { i64, ptr }, ptr @G_2ecompiler_2feval_2eWhyEnds, !tbaa !27
  %t27 = extractvalue { i64, ptr } %t25, 1
  %t28 = extractvalue { i64, ptr } %t25, 0
  %t29 = call ptr @__olang_scope_alloc(ptr %v4, i64 %t28)
  call void @olang_textcopy(ptr %t29, ptr %t27, i64 %t28)
  %t30 = insertvalue { i64, ptr } undef, i64 %t28, 0
  %t31 = insertvalue { i64, ptr } %t30, ptr %t29, 1
  %t32 = load %"compiler/source:Span", ptr %l5
  %t34 = insertvalue { { i64, ptr }, %"compiler/source:Span" } undef, { i64, ptr } %t31, 0
  %t36 = insertvalue { { i64, ptr }, %"compiler/source:Span" } %t34, %"compiler/source:Span" %t32, 1
  call void @__olang_scope_close(ptr %s0)
  store { { i64, ptr }, %"compiler/source:Span" } %t36, ptr %rv
  br label %ret
bb8:
  br label %bb9
bb9:
  br label %bb23
bb10:
  %t38 = load { i64, [8 x i64] }, ptr %l2
  %t40 = extractvalue { i64, [8 x i64] } %t38, 0
  %t41 = icmp eq i64 %t40, 4
  br i1 %t41, label %bb11, label %bb12
bb11:
  %t43 = getelementptr { i64, [8 x i64] }, ptr %l2, i32 0, i32 1
  %t44 = getelementptr { %"compiler/source:Span", i32 }, ptr %t43, i32 0, i32 0
  %t45 = load %"compiler/source:Span", ptr %t44
  store %"compiler/source:Span" %t45, ptr %l7
  %t47 = getelementptr { i64, [8 x i64] }, ptr %l2, i32 0, i32 1
  %t48 = getelementptr { %"compiler/source:Span", i32 }, ptr %t47, i32 0, i32 1
  %t49 = load i32, ptr %t48
  store i32 %t49, ptr %l8, !tbaa !23
  br label %bb15
bb12:
  %t51 = load { i64, [8 x i64] }, ptr %l2
  %t53 = extractvalue { i64, [8 x i64] } %t51, 0
  %t54 = icmp eq i64 %t53, 6
  br i1 %t54, label %bb13, label %bb14
bb13:
  %t56 = getelementptr { i64, [8 x i64] }, ptr %l2, i32 0, i32 1
  %t57 = getelementptr { %"compiler/source:Span", i32 }, ptr %t56, i32 0, i32 0
  %t58 = load %"compiler/source:Span", ptr %t57
  store %"compiler/source:Span" %t58, ptr %l7
  %t60 = getelementptr { i64, [8 x i64] }, ptr %l2, i32 0, i32 1
  %t61 = getelementptr { %"compiler/source:Span", i32 }, ptr %t60, i32 0, i32 1
  %t62 = load i32, ptr %t61
  store i32 %t62, ptr %l8, !tbaa !23
  br label %bb15
bb14:
  br label %bb18
bb15:
  store ptr %a0, ptr %l30, !tbaa !29
  %t67 = getelementptr %"compiler/mir:Fn", ptr %a1, i32 0, i32 14
  %t68 = load i32, ptr %l8, !tbaa !23
  %t70 = sext i32 %t68 to i64
  %t73 = call %"compiler/mir:Call" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aCall_3e_2eAt_3ccompiler_2fmir_3aCall_3e(ptr %v1, ptr %t67, i64 %t70)
  store %"compiler/mir:Call" %t73, ptr %l35
  br label %bb16
bb16:
  %t74 = getelementptr %"compiler/mir:Call", ptr %l35, i32 0, i32 0
  %t75 = load { i64, [7 x i64] }, ptr %t74
  %t76 = load %"compiler/source:Span", ptr %l7
  %t79 = load ptr, ptr %l30, !tbaa !29
  %t84 = call { { i64, ptr }, %"compiler/source:Span" } @compiler_2feval_2ecompiler_2feval_3aMachine_2ewhyCall(ptr %v0, ptr %v2, ptr %v3, ptr %v4, ptr %t79, { i64, [7 x i64] } %t75, %"compiler/source:Span" %t76, ptr %a3, ptr %a4)
  store { { i64, ptr }, %"compiler/source:Span" } %t84, ptr %l40
  br label %bb17
bb17:
  %t85 = getelementptr { { i64, ptr }, %"compiler/source:Span" }, ptr %l40, i32 0, i32 0
  %t86 = load { i64, ptr }, ptr %t85, !tbaa !27
  store { i64, ptr } %t86, ptr %l41, !tbaa !27
  %t87 = load { i64, ptr }, ptr %l41, !tbaa !27
  %t88 = extractvalue { i64, ptr } %t87, 0
  store i64 %t88, ptr %l42, !tbaa !24
  %t89 = load i64, ptr %l42, !tbaa !24
  %t90 = mul i64 %t89, 1
  %t91 = call ptr @__olang_scope_alloc(ptr %v4, i64 %t90)
  %t92 = insertvalue { i64, ptr } undef, i64 %t89, 0
  %t93 = insertvalue { i64, ptr } %t92, ptr %t91, 1
  store { i64, ptr } %t93, ptr %l43, !tbaa !27
  %t94 = getelementptr { i64, ptr }, ptr %l43, i32 0, i32 1
  %t95 = load ptr, ptr %t94, !tbaa !27
  %t96 = getelementptr { i64, ptr }, ptr %l41, i32 0, i32 1
  %t97 = load ptr, ptr %t96, !tbaa !27
  %t98 = load i64, ptr %l42, !tbaa !24
  %t99 = mul i64 %t98, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t95, ptr %t97, i64 %t99, i1 false)
  %t100 = load { i64, ptr }, ptr %l43, !tbaa !27
  %t101 = getelementptr { { i64, ptr }, %"compiler/source:Span" }, ptr %l40, i32 0, i32 0
  store { i64, ptr } %t100, ptr %t101, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  %t102 = load { { i64, ptr }, %"compiler/source:Span" }, ptr %l40
  store { { i64, ptr }, %"compiler/source:Span" } %t102, ptr %rv
  br label %ret
bb18:
  br i1 true, label %bb19, label %bb20
bb19:
  br label %bb21
bb20:
  br label %bb22
bb21:
  br label %bb23
bb22:
  call void @__olang_check_failed(ptr @olang_loc_86c25f3ef178583f_f0c157887637479b)
  unreachable
bb23:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d38, i32 0, i32 1) }, ptr %l44, !tbaa !27
  %t103 = load { i64, ptr }, ptr %l44, !tbaa !27
  store { i64, ptr } %t103, ptr %l45, !tbaa !27
  %t104 = call %"compiler/source:Span" @compiler_2fsource_3aSpan_2ector(ptr %s0, i32 0, i32 0)
  store %"compiler/source:Span" %t104, ptr %l46
  br label %bb24
bb24:
  %t105 = load { i64, ptr }, ptr %l45, !tbaa !27
  %t106 = insertvalue { { i64, ptr }, %"compiler/source:Span" } undef, { i64, ptr } %t105, 0
  %t107 = load %"compiler/source:Span", ptr %l46
  %t108 = insertvalue { { i64, ptr }, %"compiler/source:Span" } %t106, %"compiler/source:Span" %t107, 1
  store { { i64, ptr }, %"compiler/source:Span" } %t108, ptr %l47
  %t109 = getelementptr { { i64, ptr }, %"compiler/source:Span" }, ptr %l47, i32 0, i32 0
  %t110 = load { i64, ptr }, ptr %t109, !tbaa !27
  store { i64, ptr } %t110, ptr %l48, !tbaa !27
  %t111 = load { i64, ptr }, ptr %l48, !tbaa !27
  %t112 = extractvalue { i64, ptr } %t111, 0
  store i64 %t112, ptr %l49, !tbaa !24
  %t113 = load i64, ptr %l49, !tbaa !24
  %t114 = mul i64 %t113, 1
  %t115 = call ptr @__olang_scope_alloc(ptr %v4, i64 %t114)
  %t116 = insertvalue { i64, ptr } undef, i64 %t113, 0
  %t117 = insertvalue { i64, ptr } %t116, ptr %t115, 1
  store { i64, ptr } %t117, ptr %l50, !tbaa !27
  %t118 = getelementptr { i64, ptr }, ptr %l50, i32 0, i32 1
  %t119 = load ptr, ptr %t118, !tbaa !27
  %t120 = getelementptr { i64, ptr }, ptr %l48, i32 0, i32 1
  %t121 = load ptr, ptr %t120, !tbaa !27
  %t122 = load i64, ptr %l49, !tbaa !24
  %t123 = mul i64 %t122, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t119, ptr %t121, i64 %t123, i1 false)
  %t124 = load { i64, ptr }, ptr %l50, !tbaa !27
  %t125 = getelementptr { { i64, ptr }, %"compiler/source:Span" }, ptr %l47, i32 0, i32 0
  store { i64, ptr } %t124, ptr %t125, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  %t126 = load { { i64, ptr }, %"compiler/source:Span" }, ptr %l47
  store { { i64, ptr }, %"compiler/source:Span" } %t126, ptr %rv
  br label %ret
ret:
  %rr = load { { i64, ptr }, %"compiler/source:Span" }, ptr %rv
  ret { { i64, ptr }, %"compiler/source:Span" } %rr
}

define dso_local { i64, i64 } @compiler_2feval_2ecompiler_2feval_3aMachine_2ewideConst(ptr %v0, ptr %a0, i32 %a1, i64 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca i64
  %l3 = alloca i64
  %l5 = alloca ptr
  %l9 = alloca i32
  %l10 = alloca i1
  %l11 = alloca i64
  %rv = alloca { i64, i64 }
  store ptr %a0, ptr %l0
  store i64 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load i64, ptr %l2, !tbaa !24
  store i64 %t1, ptr %l3, !tbaa !24
  %t2 = load ptr, ptr %l0, !tbaa !29
  %t4 = getelementptr %"compiler/eval:Machine", ptr %t2, i32 0, i32 0
  %t5 = load ptr, ptr %t4, !tbaa !29
  store ptr %t5, ptr %l5, !tbaa !29
  %t6 = load ptr, ptr %l0, !tbaa !29
  %t8 = getelementptr %"compiler/eval:Machine", ptr %t6, i32 0, i32 0
  %t9 = load ptr, ptr %t8, !tbaa !29
  %t13 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %v0, ptr %t9, i32 %a1)
  store i32 %t13, ptr %l9
  br label %bb1
bb1:
  %t14 = load ptr, ptr %l5, !tbaa !29
  %t15 = load i32, ptr %l9, !tbaa !23
  %t16 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsUnsigned(ptr %v0, ptr %t14, i32 %t15)
  store i1 %t16, ptr %l10
  br label %bb2
bb2:
  %t17 = load i1, ptr %l10, !tbaa !21
  br i1 %t17, label %bb3, label %bb4
bb3:
  store i64 0, ptr %l11, !tbaa !24
  br label %bb5
bb4:
  %t18 = load i64, ptr %l2, !tbaa !24
  %t20 = ashr i64 %t18, 63
  store i64 %t20, ptr %l11, !tbaa !24
  br label %bb5
bb5:
  %t22 = load i64, ptr %l3, !tbaa !24
  %t23 = insertvalue { i64, i64 } undef, i64 %t22, 0
  %t24 = load i64, ptr %l11, !tbaa !24
  %t25 = insertvalue { i64, i64 } %t23, i64 %t24, 1
  store { i64, i64 } %t25, ptr %rv
  br label %ret
ret:
  %rr = load { i64, i64 }, ptr %rv
  ret { i64, i64 } %rr
}

define dso_local i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2ewideToFloat(ptr %v0, ptr %a0, i64 %a1, i64 %a2, i1 %a3, i32 %a4) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca i64
  %l4 = alloca i32
  %l5 = alloca i1
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca { i64, i64 }
  %l9 = alloca i64
  %l10 = alloca { i64, i64 }
  %l11 = alloca i64
  %l12 = alloca i64
  %l13 = alloca { i64, i64 }
  %l14 = alloca double
  %l15 = alloca i64
  %l16 = alloca i64
  %l17 = alloca i64
  %l18 = alloca i64
  %l19 = alloca i64
  %l20 = alloca i64
  %l22 = alloca i1
  %l30 = alloca { i64, i64 }
  %l37 = alloca i64
  %l43 = alloca { i64, i64 }
  %l49 = alloca { i64, i64 }
  %l54 = alloca i1
  %l59 = alloca ptr
  %l63 = alloca i64
  %l65 = alloca double
  %l70 = alloca i64
  %l73 = alloca i64
  %l101 = alloca i64
  %rv = alloca i64
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  store i64 %a2, ptr %l2
  store i32 %a4, ptr %l4
  br label %start
start:
  br label %bb0
bb0:
  br i1 %a3, label %bb1, label %bb2
bb1:
  %t3 = load i64, ptr %l2, !tbaa !24
  %t5 = icmp slt i64 %t3, 0
  store i1 %t5, ptr %l22, !tbaa !21
  br label %bb3
bb2:
  store i1 false, ptr %l22, !tbaa !21
  br label %bb3
bb3:
  %t7 = load i1, ptr %l22, !tbaa !21
  store i1 %t7, ptr %l5, !tbaa !21
  %t8 = load i64, ptr %l1, !tbaa !24
  store i64 %t8, ptr %l6, !tbaa !24
  %t10 = load i64, ptr %l2, !tbaa !24
  store i64 %t10, ptr %l7, !tbaa !24
  %t12 = load i1, ptr %l5, !tbaa !21
  br i1 %t12, label %bb4, label %bb5
bb4:
  %t14 = load i64, ptr %l1, !tbaa !24
  %t15 = load i64, ptr %l2, !tbaa !24
  %t18 = call { i64, i64 } @compiler_2feval_2eneg128(i64 %t14, i64 %t15)
  store { i64, i64 } %t18, ptr %l30
  br label %bb6
bb5:
  br label %bb7
bb6:
  %t19 = load { i64, i64 }, ptr %l30
  store { i64, i64 } %t19, ptr %l8
  %t20 = getelementptr { i64, i64 }, ptr %l8, i32 0, i32 0
  %t21 = load i64, ptr %t20, !tbaa !24
  store i64 %t21, ptr %l6, !tbaa !24
  %t23 = getelementptr { i64, i64 }, ptr %l8, i32 0, i32 1
  %t24 = load i64, ptr %t23, !tbaa !24
  store i64 %t24, ptr %l7, !tbaa !24
  br label %bb7
bb7:
  store i64 0, ptr %l9, !tbaa !24
  %t26 = load i64, ptr %l7, !tbaa !24
  %t28 = icmp ne i64 %t26, 0
  br i1 %t28, label %bb8, label %bb9
bb8:
  %t30 = load i64, ptr %l6, !tbaa !24
  %t31 = load i64, ptr %l7, !tbaa !24
  %t34 = call i64 @compiler_2feval_2elz128(i64 %t30, i64 %t31, i64 128)
  store i64 %t34, ptr %l37
  br label %bb10
bb9:
  br label %bb19
bb10:
  %t35 = load i64, ptr %l37, !tbaa !24
  %t36 = sub i64 128, %t35
  %t38 = sub i64 %t36, 63
  store i64 %t38, ptr %l9, !tbaa !24
  %t40 = load i64, ptr %l6, !tbaa !24
  %t41 = load i64, ptr %l7, !tbaa !24
  %t42 = load i64, ptr %l9, !tbaa !24
  %t46 = call { i64, i64 } @compiler_2feval_2eextend128(i64 %t40, i64 %t41, i64 %t42, i1 false)
  store { i64, i64 } %t46, ptr %l43
  br label %bb11
bb11:
  %t47 = load { i64, i64 }, ptr %l43
  store { i64, i64 } %t47, ptr %l10
  %t48 = getelementptr { i64, i64 }, ptr %l10, i32 0, i32 0
  %t49 = load i64, ptr %t48, !tbaa !24
  store i64 %t49, ptr %l11, !tbaa !24
  %t51 = getelementptr { i64, i64 }, ptr %l10, i32 0, i32 1
  %t52 = load i64, ptr %t51, !tbaa !24
  store i64 %t52, ptr %l12, !tbaa !24
  %t54 = load i64, ptr %l6, !tbaa !24
  %t55 = load i64, ptr %l7, !tbaa !24
  %t56 = load i64, ptr %l9, !tbaa !24
  %t60 = call { i64, i64 } @compiler_2feval_2eshr128(i64 %t54, i64 %t55, i64 %t56, i1 false)
  store { i64, i64 } %t60, ptr %l49
  br label %bb12
bb12:
  %t61 = load { i64, i64 }, ptr %l49
  store { i64, i64 } %t61, ptr %l13
  %t62 = getelementptr { i64, i64 }, ptr %l13, i32 0, i32 0
  %t63 = load i64, ptr %t62, !tbaa !24
  store i64 %t63, ptr %l6, !tbaa !24
  %t65 = getelementptr { i64, i64 }, ptr %l13, i32 0, i32 1
  %t66 = load i64, ptr %t65, !tbaa !24
  store i64 %t66, ptr %l7, !tbaa !24
  %t68 = load i64, ptr %l11, !tbaa !24
  %t70 = icmp ne i64 %t68, 0
  br i1 %t70, label %bb13, label %bb14
bb13:
  store i1 true, ptr %l54, !tbaa !21
  br label %bb15
bb14:
  %t72 = load i64, ptr %l12, !tbaa !24
  %t74 = icmp ne i64 %t72, 0
  store i1 %t74, ptr %l54, !tbaa !21
  br label %bb15
bb15:
  %t76 = load i1, ptr %l54, !tbaa !21
  br i1 %t76, label %bb16, label %bb17
bb16:
  %t77 = load i64, ptr %l6, !tbaa !24
  %t79 = or i64 %t77, 1
  store i64 %t79, ptr %l6, !tbaa !24
  br label %bb18
bb17:
  br label %bb18
bb18:
  br label %bb19
bb19:
  %t81 = load ptr, ptr %l0, !tbaa !29
  store ptr %t81, ptr %l59, !tbaa !29
  %t82 = load ptr, ptr %l0, !tbaa !29
  %t83 = load i64, ptr %l6, !tbaa !24
  %t84 = load i32, ptr %l4, !tbaa !23
  %t88 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2eintToFloat(ptr %v0, ptr %t82, i64 %t83, i1 true, i32 %t84)
  store i64 %t88, ptr %l63
  br label %bb20
bb20:
  %t89 = load i32, ptr %l4, !tbaa !23
  %t90 = load ptr, ptr %l59, !tbaa !29
  %t91 = load i64, ptr %l63, !tbaa !24
  %t93 = call double @compiler_2feval_2ecompiler_2feval_3aMachine_2etoF64(ptr %v0, ptr %t90, i64 %t91, i32 %t89)
  store double %t93, ptr %l65
  br label %bb21
bb21:
  %t94 = load double, ptr %l65, !tbaa !26
  store double %t94, ptr %l14, !tbaa !26
  store i64 0, ptr %l15, !tbaa !24
  %t95 = load i64, ptr %l9, !tbaa !24
  store i64 %t95, ptr %l16, !tbaa !24
  store i64 1, ptr %l17, !tbaa !24
  %t97 = load i64, ptr %l16, !tbaa !24
  %t98 = load i64, ptr %l15, !tbaa !24
  %t101 = icmp sgt i64 %t97, %t98
  br i1 %t101, label %bb22, label %bb23
bb22:
  %t103 = load i64, ptr %l17, !tbaa !24
  %t105 = icmp sgt i64 %t103, 0
  br i1 %t105, label %bb24, label %bb25
bb23:
  store i64 0, ptr %l70, !tbaa !24
  br label %bb27
bb24:
  %t107 = load i64, ptr %l16, !tbaa !24
  %t108 = load i64, ptr %l15, !tbaa !24
  %t111 = sub i64 %t107, %t108
  %t112 = load i64, ptr %l17, !tbaa !24
  %t115 = add i64 %t111, %t112
  %t117 = sub i64 %t115, 1
  %t118 = load i64, ptr %l17, !tbaa !24
  %t121 = sdiv i64 %t117, %t118
  store i64 %t121, ptr %l73, !tbaa !24
  br label %bb26
bb25:
  store i64 0, ptr %l73, !tbaa !24
  br label %bb26
bb26:
  %t123 = load i64, ptr %l73, !tbaa !24
  store i64 %t123, ptr %l70, !tbaa !24
  br label %bb27
bb27:
  %t124 = load i64, ptr %l70, !tbaa !24
  store i64 %t124, ptr %l18, !tbaa !24
  store i64 0, ptr %l19, !tbaa !24
  br label %bb28
bb28:
  %t125 = load i64, ptr %l19, !tbaa !24
  %t126 = load i64, ptr %l18, !tbaa !24
  %t129 = icmp slt i64 %t125, %t126
  %t131 = xor i1 %t129, true
  br i1 %t131, label %bb29, label %bb30
bb29:
  br label %bb33
bb30:
  br label %bb31
bb31:
  %t133 = load i64, ptr %l15, !tbaa !24
  %t134 = load i64, ptr %l19, !tbaa !24
  %t135 = load i64, ptr %l17, !tbaa !24
  %t138 = mul i64 %t134, %t135
  %t141 = add i64 %t133, %t138
  store i64 %t141, ptr %l20, !tbaa !24
  %t143 = load double, ptr %l14, !tbaa !26
  %t145 = fmul double %t143, 0x4000000000000000
  store double %t145, ptr %l14, !tbaa !26
  br label %bb32
bb32:
  %t147 = load i64, ptr %l19, !tbaa !24
  %t149 = add i64 %t147, 1
  store i64 %t149, ptr %l19, !tbaa !24
  br label %bb28
bb33:
  %t151 = load i1, ptr %l5, !tbaa !21
  br i1 %t151, label %bb34, label %bb35
bb34:
  %t153 = load double, ptr %l14, !tbaa !26
  %t155 = fneg double %t153
  store double %t155, ptr %l14, !tbaa !26
  br label %bb36
bb35:
  br label %bb36
bb36:
  %t157 = load ptr, ptr %l0, !tbaa !29
  %t158 = load double, ptr %l14, !tbaa !26
  %t159 = load i32, ptr %l4, !tbaa !23
  %t163 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2efromF64(ptr %v0, ptr %t157, double %t158, i32 %t159)
  store i64 %t163, ptr %l101
  br label %bb37
bb37:
  %t164 = load i64, ptr %l101, !tbaa !24
  store i64 %t164, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2eword(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l4 = alloca i64
  %l7 = alloca i64
  %l10 = alloca i64
  %rv = alloca i64
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
  %t6 = load i64, ptr @G_2ecompiler_2feval_2evWide, !tbaa !24
  %t7 = load i64, ptr %l4, !tbaa !24
  %t9 = icmp eq i64 %t7, %t6
  br i1 %t9, label %bb2, label %bb3
bb2:
  store i64 8, ptr %l7, !tbaa !24
  br label %bb5
bb3:
  %t11 = load ptr, ptr %l0, !tbaa !29
  %t12 = load i32, ptr %l1, !tbaa !23
  %t15 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2ewidth(ptr %v0, ptr %t11, i32 %t12)
  store i64 %t15, ptr %l10
  br label %bb4
bb4:
  %t16 = load i64, ptr %l10, !tbaa !24
  store i64 %t16, ptr %l7, !tbaa !24
  br label %bb5
bb5:
  %t17 = load i64, ptr %l7, !tbaa !24
  store i64 %t17, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local i1 @compiler_2feval_2efitsBits(i64 %a0, i1 %a1, i64 %a2, i1 %a3) #0 {
entry:
  %l0 = alloca i64
  %l2 = alloca i64
  %l3 = alloca i1
  %l7 = alloca i1
  %l10 = alloca i1
  %l16 = alloca i1
  %l17 = alloca i64
  %l19 = alloca i64
  %l21 = alloca i1
  %l22 = alloca i64
  %l24 = alloca i64
  %l30 = alloca i1
  %l33 = alloca i1
  %l34 = alloca i64
  %l36 = alloca i64
  %rv = alloca i1
  store i64 %a0, ptr %l0
  store i64 %a2, ptr %l2
  store i1 %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  br i1 %a1, label %bb1, label %bb2
bb1:
  %t3 = load i64, ptr %l2, !tbaa !24
  %t5 = icmp sgt i64 %t3, 64
  br i1 %t5, label %bb3, label %bb4
bb2:
  br label %bb9
bb3:
  store i1 true, ptr %l7, !tbaa !21
  br label %bb8
bb4:
  %t7 = load i1, ptr %l3, !tbaa !21
  %t9 = xor i1 %t7, true
  br i1 %t9, label %bb5, label %bb6
bb5:
  %t11 = load i64, ptr %l2, !tbaa !24
  %t13 = icmp eq i64 %t11, 64
  store i1 %t13, ptr %l10, !tbaa !21
  br label %bb7
bb6:
  store i1 false, ptr %l10, !tbaa !21
  br label %bb7
bb7:
  %t15 = load i1, ptr %l10, !tbaa !21
  store i1 %t15, ptr %l7, !tbaa !21
  br label %bb8
bb8:
  %t16 = load i1, ptr %l7, !tbaa !21
  store i1 %t16, ptr %rv
  br label %ret
bb9:
  %t17 = load i1, ptr %l3, !tbaa !21
  br i1 %t17, label %bb10, label %bb11
bb10:
  %t19 = load i64, ptr %l2, !tbaa !24
  %t21 = icmp sge i64 %t19, 64
  br i1 %t21, label %bb12, label %bb13
bb11:
  br label %bb20
bb12:
  store i1 true, ptr %l16, !tbaa !21
  br label %bb19
bb13:
  %t23 = load i64, ptr %l0, !tbaa !24
  store i64 %t23, ptr %l17, !tbaa !24
  %t24 = load i64, ptr %l2, !tbaa !24
  %t26 = call i64 @compiler_2feval_2eminBits(i64 %t24)
  store i64 %t26, ptr %l19
  br label %bb14
bb14:
  %t27 = load i64, ptr %l17, !tbaa !24
  %t28 = load i64, ptr %l19, !tbaa !24
  %t29 = icmp sge i64 %t27, %t28
  br i1 %t29, label %bb15, label %bb16
bb15:
  %t31 = load i64, ptr %l0, !tbaa !24
  store i64 %t31, ptr %l22, !tbaa !24
  %t32 = load i64, ptr %l2, !tbaa !24
  %t34 = call i64 @compiler_2feval_2eminBits(i64 %t32)
  store i64 %t34, ptr %l24
  br label %bb17
bb16:
  store i1 false, ptr %l21, !tbaa !21
  br label %bb18
bb17:
  %t35 = load i64, ptr %l24, !tbaa !24
  %t36 = add i64 %t35, 1
  %t38 = sub i64 0, %t36
  %t39 = load i64, ptr %l22, !tbaa !24
  %t41 = icmp sle i64 %t39, %t38
  store i1 %t41, ptr %l21, !tbaa !21
  br label %bb18
bb18:
  %t43 = load i1, ptr %l21, !tbaa !21
  store i1 %t43, ptr %l16, !tbaa !21
  br label %bb19
bb19:
  %t44 = load i1, ptr %l16, !tbaa !21
  store i1 %t44, ptr %rv
  br label %ret
bb20:
  %t45 = load i64, ptr %l0, !tbaa !24
  %t47 = icmp sge i64 %t45, 0
  br i1 %t47, label %bb21, label %bb22
bb21:
  %t49 = load i64, ptr %l2, !tbaa !24
  %t51 = icmp sge i64 %t49, 63
  br i1 %t51, label %bb23, label %bb24
bb22:
  store i1 false, ptr %l30, !tbaa !21
  br label %bb27
bb23:
  store i1 true, ptr %l33, !tbaa !21
  br label %bb26
bb24:
  %t53 = load i64, ptr %l0, !tbaa !24
  store i64 %t53, ptr %l34, !tbaa !24
  %t54 = load i64, ptr %l2, !tbaa !24
  %t56 = call i64 @compiler_2feval_2ebmask(i64 %t54)
  store i64 %t56, ptr %l36
  br label %bb25
bb25:
  %t57 = load i64, ptr %l34, !tbaa !24
  %t58 = load i64, ptr %l36, !tbaa !24
  %t59 = icmp sle i64 %t57, %t58
  store i1 %t59, ptr %l33, !tbaa !21
  br label %bb26
bb26:
  %t61 = load i1, ptr %l33, !tbaa !21
  store i1 %t61, ptr %l30, !tbaa !21
  br label %bb27
bb27:
  %t62 = load i1, ptr %l30, !tbaa !21
  store i1 %t62, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local { i64, i64 } @compiler_2feval_2efloatToWide(double %a0) #0 {
entry:
  %l0 = alloca double
  %l1 = alloca i64
  %l2 = alloca i1
  %l4 = alloca i64
  %l7 = alloca { i64, i64 }
  %l8 = alloca i64
  %l9 = alloca i64
  %l12 = alloca i1
  %l24 = alloca double
  %l43 = alloca { i64, i64 }
  %l49 = alloca { i64, i64 }
  %rv = alloca { i64, i64 }
  store double %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load double, ptr %l0, !tbaa !26
  %t3 = fcmp ogt double %t1, 0xc3e0000000000000
  br i1 %t3, label %bb1, label %bb2
bb1:
  %t5 = load double, ptr %l0, !tbaa !26
  %t7 = fcmp olt double %t5, 0x43e0000000000000
  store i1 %t7, ptr %l12, !tbaa !21
  br label %bb3
bb2:
  store i1 false, ptr %l12, !tbaa !21
  br label %bb3
bb3:
  %t9 = load i1, ptr %l12, !tbaa !21
  br i1 %t9, label %bb4, label %bb5
bb4:
  %t10 = load double, ptr %l0, !tbaa !26
  %t12 = fptosi double %t10 to i64
  store i64 %t12, ptr %l1, !tbaa !24
  %t14 = load i64, ptr %l1, !tbaa !24
  %t15 = load i64, ptr %l1, !tbaa !24
  %t17 = ashr i64 %t15, 63
  %t19 = insertvalue { i64, i64 } undef, i64 %t14, 0
  %t21 = insertvalue { i64, i64 } %t19, i64 %t17, 1
  store { i64, i64 } %t21, ptr %rv
  br label %ret
bb5:
  br label %bb6
bb6:
  %t23 = load double, ptr %l0, !tbaa !26
  %t25 = fcmp olt double %t23, 0x0000000000000000
  store i1 %t25, ptr %l2, !tbaa !21
  %t27 = load i1, ptr %l2, !tbaa !21
  br i1 %t27, label %bb7, label %bb8
bb7:
  %t29 = load double, ptr %l0, !tbaa !26
  %t31 = fneg double %t29
  store double %t31, ptr %l24, !tbaa !26
  br label %bb9
bb8:
  %t33 = load double, ptr %l0, !tbaa !26
  store double %t33, ptr %l24, !tbaa !26
  br label %bb9
bb9:
  %t35 = load double, ptr %l24, !tbaa !26
  %t38 = bitcast double %t35 to i64
  store i64 %t38, ptr %l4, !tbaa !24
  %t41 = load i64, ptr %l4, !tbaa !24
  %t43 = ashr i64 %t41, 52
  %t45 = and i64 %t43, 2047
  %t47 = sub i64 %t45, 1075
  %t49 = load i64, ptr %l4, !tbaa !24
  %t50 = shl i64 1, 52
  %t52 = sub i64 %t50, 1
  %t55 = and i64 %t49, %t52
  %t56 = shl i64 1, 52
  %t59 = or i64 %t55, %t56
  %t65 = call { i64, i64 } @compiler_2feval_2eshl128(i64 %t59, i64 0, i64 %t47)
  store { i64, i64 } %t65, ptr %l43
  br label %bb10
bb10:
  %t66 = load { i64, i64 }, ptr %l43
  store { i64, i64 } %t66, ptr %l7
  %t67 = getelementptr { i64, i64 }, ptr %l7, i32 0, i32 0
  %t68 = load i64, ptr %t67, !tbaa !24
  store i64 %t68, ptr %l8, !tbaa !24
  %t70 = getelementptr { i64, i64 }, ptr %l7, i32 0, i32 1
  %t71 = load i64, ptr %t70, !tbaa !24
  store i64 %t71, ptr %l9, !tbaa !24
  %t73 = load i1, ptr %l2, !tbaa !21
  br i1 %t73, label %bb11, label %bb12
bb11:
  %t75 = load i64, ptr %l8, !tbaa !24
  %t76 = load i64, ptr %l9, !tbaa !24
  %t79 = call { i64, i64 } @compiler_2feval_2eneg128(i64 %t75, i64 %t76)
  store { i64, i64 } %t79, ptr %l49
  br label %bb13
bb12:
  br label %bb14
bb13:
  %t80 = load { i64, i64 }, ptr %l49
  store { i64, i64 } %t80, ptr %rv
  br label %ret
bb14:
  %t81 = load i64, ptr %l8, !tbaa !24
  %t82 = load i64, ptr %l9, !tbaa !24
  %t84 = insertvalue { i64, i64 } undef, i64 %t81, 0
  %t86 = insertvalue { i64, i64 } %t84, i64 %t82, 1
  store { i64, i64 } %t86, ptr %rv
  br label %ret
ret:
  %rr = load { i64, i64 }, ptr %rv
  ret { i64, i64 } %rr
}

define dso_local %"compiler/mir:Lvalue" @compiler_2feval_2egplace(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l2 = alloca i32
  %l4 = alloca i32
  %l7 = alloca %"compiler/mir:Lvalue"
  %s0 = alloca %olang.scope
  %rv = alloca %"compiler/mir:Lvalue"
  %t5 = alloca { i64, [2 x i64] }, align 8
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  store i32 %a1, ptr %l2, !tbaa !23
  %t4 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePrim(ptr %v0, ptr %s0, ptr %a0, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d39, i32 0, i32 1) })
  store i32 %t4, ptr %l4
  br label %bb1
bb1:
  store { i64, [2 x i64] } zeroinitializer, ptr %t5
  %t6 = getelementptr { i64, [2 x i64] }, ptr %t5, i32 0, i32 0
  store i64 2, ptr %t6
  %t7 = insertvalue { i64, i32, i32 } undef, i64 7, 0
  %t8 = load i32, ptr %l2, !tbaa !23
  %t9 = insertvalue { i64, i32, i32 } %t7, i32 %t8, 1
  %t10 = load i32, ptr %l4, !tbaa !23
  %t11 = insertvalue { i64, i32, i32 } %t9, i32 %t10, 2
  %t12 = getelementptr { i64, [2 x i64] }, ptr %t5, i32 0, i32 1
  store { i64, i32, i32 } %t11, ptr %t12
  %t13 = load { i64, [2 x i64] }, ptr %t5
  %t14 = load %"compiler/mir:Range", ptr @G_2ecompiler_2fmir_2eEmpty
  %t17 = call %"compiler/mir:Lvalue" @compiler_2fmir_3aLvalue_2ector(ptr %s0, { i64, [2 x i64] } %t13, %"compiler/mir:Range" %t14)
  store %"compiler/mir:Lvalue" %t17, ptr %l7
  br label %bb2
bb2:
  call void @__olang_scope_close(ptr %s0)
  %t18 = load %"compiler/mir:Lvalue", ptr %l7
  store %"compiler/mir:Lvalue" %t18, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/mir:Lvalue", ptr %rv
  ret %"compiler/mir:Lvalue" %rr
}

define dso_local i64 @compiler_2feval_2eminBits(i64 %a0) #0 {
entry:
  %l0 = alloca i64
  %l3 = alloca i64
  %l5 = alloca i64
  %rv = alloca i64
  store i64 %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load i64, ptr %l0, !tbaa !24
  %t3 = icmp sge i64 %t1, 64
  br i1 %t3, label %bb1, label %bb2
bb1:
  store i64 -9223372036854775808, ptr %l3, !tbaa !24
  br label %bb3
bb2:
  %t5 = load i64, ptr %l0, !tbaa !24
  %t7 = sub i64 %t5, 1
  store i64 %t7, ptr %l5, !tbaa !24
  %t8 = load i64, ptr %l5, !tbaa !24
  %t9 = load i64, ptr %l5, !tbaa !24
  %t10 = shl i64 1, %t9
  %t12 = sub i64 0, %t10
  store i64 %t12, ptr %l3, !tbaa !24
  br label %bb3
bb3:
  %t14 = load i64, ptr %l3, !tbaa !24
  store i64 %t14, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local { i64, i64 } @compiler_2feval_2emul64(i64 %a0, i64 %a1) #0 {
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
  %l10 = alloca i64
  %rv = alloca { i64, i64 }
  store i64 %a0, ptr %l0
  store i64 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load i64, ptr %l0, !tbaa !24
  %t3 = and i64 %t1, 4294967295
  store i64 %t3, ptr %l2, !tbaa !24
  %t5 = load i64, ptr %l0, !tbaa !24
  %t8 = lshr i64 %t5, 32
  store i64 %t8, ptr %l3, !tbaa !24
  %t11 = load i64, ptr %l1, !tbaa !24
  %t13 = and i64 %t11, 4294967295
  store i64 %t13, ptr %l4, !tbaa !24
  %t15 = load i64, ptr %l1, !tbaa !24
  %t18 = lshr i64 %t15, 32
  store i64 %t18, ptr %l5, !tbaa !24
  %t21 = load i64, ptr %l2, !tbaa !24
  %t22 = load i64, ptr %l4, !tbaa !24
  %t25 = mul i64 %t21, %t22
  store i64 %t25, ptr %l6, !tbaa !24
  %t27 = load i64, ptr %l2, !tbaa !24
  %t28 = load i64, ptr %l5, !tbaa !24
  %t31 = mul i64 %t27, %t28
  store i64 %t31, ptr %l7, !tbaa !24
  %t33 = load i64, ptr %l3, !tbaa !24
  %t34 = load i64, ptr %l4, !tbaa !24
  %t37 = mul i64 %t33, %t34
  store i64 %t37, ptr %l8, !tbaa !24
  %t39 = load i64, ptr %l3, !tbaa !24
  %t40 = load i64, ptr %l5, !tbaa !24
  %t43 = mul i64 %t39, %t40
  %t45 = load i64, ptr %l6, !tbaa !24
  %t48 = lshr i64 %t45, 32
  %t50 = load i64, ptr %l7, !tbaa !24
  %t52 = and i64 %t50, 4294967295
  %t55 = add i64 %t48, %t52
  %t56 = load i64, ptr %l8, !tbaa !24
  %t58 = and i64 %t56, 4294967295
  %t61 = add i64 %t55, %t58
  store i64 %t61, ptr %l10, !tbaa !24
  %t63 = load i64, ptr %l6, !tbaa !24
  %t65 = and i64 %t63, 4294967295
  %t66 = load i64, ptr %l10, !tbaa !24
  %t68 = shl i64 %t66, 32
  %t71 = or i64 %t65, %t68
  %t74 = load i64, ptr %l7, !tbaa !24
  %t77 = lshr i64 %t74, 32
  %t81 = add i64 %t43, %t77
  %t82 = load i64, ptr %l8, !tbaa !24
  %t85 = lshr i64 %t82, 32
  %t89 = add i64 %t81, %t85
  %t90 = load i64, ptr %l10, !tbaa !24
  %t93 = lshr i64 %t90, 32
  %t97 = add i64 %t89, %t93
  %t102 = insertvalue { i64, i64 } undef, i64 %t71, 0
  %t104 = insertvalue { i64, i64 } %t102, i64 %t97, 1
  store { i64, i64 } %t104, ptr %rv
  br label %ret
ret:
  %rr = load { i64, i64 }, ptr %rv
  ret { i64, i64 } %rr
}

define dso_local { i64, i64 } @compiler_2feval_2eshr128(i64 %a0, i64 %a1, i64 %a2, i1 %a3) #0 {
entry:
  %l0 = alloca i64
  %l1 = alloca i64
  %l2 = alloca i64
  %l3 = alloca i1
  %l4 = alloca i64
  %l15 = alloca i64
  %l24 = alloca i64
  %l31 = alloca i64
  %l36 = alloca i64
  %l42 = alloca i64
  %l49 = alloca i64
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
  %t3 = icmp eq i64 %t1, 0
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
  %t14 = icmp sge i64 %t12, 64
  br i1 %t14, label %bb4, label %bb5
bb4:
  %t16 = load i1, ptr %l3, !tbaa !21
  br i1 %t16, label %bb6, label %bb7
bb5:
  br label %bb9
bb6:
  %t18 = load i64, ptr %l1, !tbaa !24
  %t19 = load i64, ptr %l2, !tbaa !24
  %t21 = sub i64 %t19, 64
  store i64 %t21, ptr %l15, !tbaa !24
  %t23 = load i64, ptr %l15, !tbaa !24
  %t24 = load i64, ptr %l15, !tbaa !24
  %t25 = ashr i64 %t18, %t24
  %t26 = load i64, ptr %l1, !tbaa !24
  %t28 = ashr i64 %t26, 63
  %t30 = insertvalue { i64, i64 } undef, i64 %t25, 0
  %t32 = insertvalue { i64, i64 } %t30, i64 %t28, 1
  store { i64, i64 } %t32, ptr %rv
  br label %ret
bb7:
  br label %bb8
bb8:
  %t34 = load i64, ptr %l1, !tbaa !24
  %t36 = load i64, ptr %l2, !tbaa !24
  %t38 = sub i64 %t36, 64
  store i64 %t38, ptr %l24, !tbaa !65
  %t41 = load i64, ptr %l24, !tbaa !65
  %t42 = load i64, ptr %l24, !tbaa !65
  %t43 = lshr i64 %t34, %t42
  %t46 = insertvalue { i64, i64 } undef, i64 %t43, 0
  %t47 = insertvalue { i64, i64 } %t46, i64 0, 1
  store { i64, i64 } %t47, ptr %rv
  br label %ret
bb9:
  %t49 = load i64, ptr %l0, !tbaa !24
  %t51 = load i64, ptr %l2, !tbaa !24
  store i64 %t51, ptr %l31, !tbaa !65
  %t54 = load i64, ptr %l31, !tbaa !65
  %t55 = load i64, ptr %l31, !tbaa !65
  %t56 = lshr i64 %t49, %t55
  %t58 = load i64, ptr %l1, !tbaa !24
  %t59 = load i64, ptr %l2, !tbaa !24
  %t61 = sub i64 64, %t59
  store i64 %t61, ptr %l36, !tbaa !24
  %t63 = load i64, ptr %l36, !tbaa !24
  %t64 = load i64, ptr %l36, !tbaa !24
  %t65 = shl i64 %t58, %t64
  %t68 = or i64 %t56, %t65
  store i64 %t68, ptr %l4, !tbaa !24
  %t70 = load i1, ptr %l3, !tbaa !21
  br i1 %t70, label %bb10, label %bb11
bb10:
  %t72 = load i64, ptr %l4, !tbaa !24
  %t73 = load i64, ptr %l1, !tbaa !24
  %t74 = load i64, ptr %l2, !tbaa !24
  store i64 %t74, ptr %l42, !tbaa !24
  %t76 = load i64, ptr %l42, !tbaa !24
  %t77 = load i64, ptr %l42, !tbaa !24
  %t78 = ashr i64 %t73, %t77
  %t80 = insertvalue { i64, i64 } undef, i64 %t72, 0
  %t82 = insertvalue { i64, i64 } %t80, i64 %t78, 1
  store { i64, i64 } %t82, ptr %rv
  br label %ret
bb11:
  br label %bb12
bb12:
  %t84 = load i64, ptr %l4, !tbaa !24
  %t85 = load i64, ptr %l1, !tbaa !24
  %t87 = load i64, ptr %l2, !tbaa !24
  store i64 %t87, ptr %l49, !tbaa !65
  %t90 = load i64, ptr %l49, !tbaa !65
  %t91 = load i64, ptr %l49, !tbaa !65
  %t92 = lshr i64 %t85, %t91
  %t95 = insertvalue { i64, i64 } undef, i64 %t84, 0
  %t97 = insertvalue { i64, i64 } %t95, i64 %t92, 1
  store { i64, i64 } %t97, ptr %rv
  br label %ret
ret:
  %rr = load { i64, i64 }, ptr %rv
  ret { i64, i64 } %rr
}

define dso_local %"compiler/mir:Lvalue" @compiler_2feval_2etl(i64 %a0) #0 {
entry:
  %l4 = alloca %"compiler/mir:Lvalue"
  %rv = alloca %"compiler/mir:Lvalue"
  br label %start
start:
  br label %bb0
bb0:
  %t3 = trunc i64 %a0 to i32
  %t6 = call %"compiler/mir:Lvalue" @compiler_2fmir_2eLvalue_2eL(i32 %t3)
  store %"compiler/mir:Lvalue" %t6, ptr %l4
  br label %bb1
bb1:
  %t7 = load %"compiler/mir:Lvalue", ptr %l4
  store %"compiler/mir:Lvalue" %t7, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/mir:Lvalue", ptr %rv
  ret %"compiler/mir:Lvalue" %rr
}

define dso_local %"compiler/source:Span" @compiler_2feval_2etspan(i64 %a0) #0 {
entry:
  %l0 = alloca i64
  %l6 = alloca %"compiler/source:Span"
  %s0 = alloca %olang.scope
  %rv = alloca %"compiler/source:Span"
  store i64 %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load i64, ptr %l0, !tbaa !24
  %t3 = trunc i64 %t1 to i32
  %t4 = load i64, ptr %l0, !tbaa !24
  %t6 = add i64 %t4, 1
  %t8 = trunc i64 %t6 to i32
  %t11 = call %"compiler/source:Span" @compiler_2fsource_3aSpan_2ector(ptr %s0, i32 %t3, i32 %t8)
  store %"compiler/source:Span" %t11, ptr %l6
  br label %bb1
bb1:
  call void @__olang_scope_close(ptr %s0)
  %t12 = load %"compiler/source:Span", ptr %l6
  store %"compiler/source:Span" %t12, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/source:Span", ptr %rv
  ret %"compiler/source:Span" %rr
}

define dso_local %"compiler/eval:Image" @compiler_2feval_3aImage_2ector(ptr %v0) #0 {
entry:
  %l0 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l3 = alloca i64
  %l5 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l7 = alloca i64
  %l9 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %rv = alloca %"compiler/eval:Image"
  br label %start
start:
  br label %bb0
bb0:
  %t1 = ptrtoint ptr %v0 to i64
  store i64 %t1, ptr %l3, !tbaa !24
  %t2 = load i1, ptr @olang_2esole_2ecompiler_2feval_3aImage_2e0
  br i1 %t2, label %bb1, label %bb2
bb1:
  %t4 = call ptr @__olang_region_make(ptr %v0)
  %t5 = ptrtoint ptr %t4 to i64
  store i64 %t5, ptr %l3, !tbaa !24
  br label %bb2
bb2:
  %t6 = load i64, ptr %l3
  %t7 = inttoptr i64 %t6 to ptr
  %t8 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2feval_3aBlob_3e_2ector(ptr %t7, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t8, ptr %l5
  br label %bb3
bb3:
  %t9 = load i1, ptr @olang_2esole_2ecompiler_2feval_3aImage_2e0
  br i1 %t9, label %bb4, label %bb5
bb4:
  %t11 = load i64, ptr %l3
  %t12 = inttoptr i64 %t11 to ptr
  %t13 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l5, i32 0, i32 0
  %t14 = load { i64, ptr }, ptr %t13
  %t15 = extractvalue { i64, ptr } %t14, 1
  %t16 = call ptr @__olang_region_or(ptr %t15, ptr null)
  %t17 = icmp ne ptr %t16, null
  %t18 = select i1 %t17, ptr %t16, ptr null
  %t19 = icmp eq ptr %t18, %t12
  call void @__olang_region_settle(ptr %t12, i1 %t19)
  br label %bb5
bb5:
  %t20 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l5
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t20, ptr %l0
  %t21 = ptrtoint ptr %v0 to i64
  store i64 %t21, ptr %l7, !tbaa !24
  %t22 = load i1, ptr @olang_2esole_2ecompiler_2feval_3aImage_2e1
  br i1 %t22, label %bb6, label %bb7
bb6:
  %t24 = call ptr @__olang_region_make(ptr %v0)
  %t25 = ptrtoint ptr %t24 to i64
  store i64 %t25, ptr %l7, !tbaa !24
  br label %bb7
bb7:
  %t26 = load i64, ptr %l7
  %t27 = inttoptr i64 %t26 to ptr
  %t28 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %t27, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t28, ptr %l9
  br label %bb8
bb8:
  %t29 = load i1, ptr @olang_2esole_2ecompiler_2feval_3aImage_2e1
  br i1 %t29, label %bb9, label %bb10
bb9:
  %t31 = load i64, ptr %l7
  %t32 = inttoptr i64 %t31 to ptr
  %t33 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l9, i32 0, i32 0
  %t34 = load { i64, ptr }, ptr %t33
  %t35 = extractvalue { i64, ptr } %t34, 1
  %t36 = call ptr @__olang_region_or(ptr %t35, ptr null)
  %t37 = icmp ne ptr %t36, null
  %t38 = select i1 %t37, ptr %t36, ptr null
  %t39 = icmp eq ptr %t38, %t32
  call void @__olang_region_settle(ptr %t32, i1 %t39)
  br label %bb10
bb10:
  %t40 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l9
  %t41 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l0
  %t42 = insertvalue %"compiler/eval:Image" undef, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t41, 0
  %t44 = insertvalue %"compiler/eval:Image" %t42, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t40, 1
  %t46 = insertvalue %"compiler/eval:Image" %t44, i1 false, 2
  store %"compiler/eval:Image" %t46, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/eval:Image", ptr %rv
  ret %"compiler/eval:Image" %rr
}

define dso_local %"compiler/eval:alloc" @compiler_2feval_3aalloc_2ector(ptr %v0) #0 {
entry:
  %rv = alloca %"compiler/eval:alloc"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = insertvalue %"compiler/eval:alloc" undef, i64 0, 0
  %t4 = insertvalue %"compiler/eval:alloc" %t2, i64 0, 1
  %t6 = insertvalue %"compiler/eval:alloc" %t4, i64 0, 2
  %t8 = insertvalue %"compiler/eval:alloc" %t6, i64 0, 3
  %t10 = insertvalue %"compiler/eval:alloc" %t8, i64 0, 4
  %t12 = insertvalue %"compiler/eval:alloc" %t10, i64 0, 5
  %t14 = insertvalue %"compiler/eval:alloc" %t12, i64 0, 6
  %t16 = insertvalue %"compiler/eval:alloc" %t14, i64 0, 7
  %t18 = insertvalue %"compiler/eval:alloc" %t16, i64 -1, 8
  %t20 = insertvalue %"compiler/eval:alloc" %t18, i64 -1, 9
  %t22 = insertvalue %"compiler/eval:alloc" %t20, i64 0, 10
  %t24 = insertvalue %"compiler/eval:alloc" %t22, i32 0, 11
  %t26 = insertvalue %"compiler/eval:alloc" %t24, i64 -1, 12
  %t28 = insertvalue %"compiler/eval:alloc" %t26, i1 false, 13
  %t30 = insertvalue %"compiler/eval:alloc" %t28, i64 -1, 14
  %t32 = insertvalue %"compiler/eval:alloc" %t30, i1 false, 15
  store %"compiler/eval:alloc" %t32, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/eval:alloc", ptr %rv
  ret %"compiler/eval:alloc" %rr
}

define dso_local %"compiler/eval:dkey" @compiler_2feval_3adkey_2ector(ptr %v0, i64 %a0, i32 %a1, i32 %a2, i32 %a3, i32 %a4, i64 %a5) #0 {
entry:
  %rv = alloca %"compiler/eval:dkey"
  br label %start
start:
  br label %bb0
bb0:
  %t14 = insertvalue %"compiler/eval:dkey" undef, i64 %a0, 0
  %t16 = insertvalue %"compiler/eval:dkey" %t14, i32 %a1, 1
  %t18 = insertvalue %"compiler/eval:dkey" %t16, i32 %a2, 2
  %t20 = insertvalue %"compiler/eval:dkey" %t18, i32 %a3, 3
  %t22 = insertvalue %"compiler/eval:dkey" %t20, i32 %a4, 4
  %t24 = insertvalue %"compiler/eval:dkey" %t22, i64 %a5, 5
  store %"compiler/eval:dkey" %t24, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/eval:dkey", ptr %rv
  ret %"compiler/eval:dkey" %rr
}

define dso_local %"compiler/eval:task" @compiler_2feval_3atask_2ector(ptr %v0) #0 {
entry:
  %rv = alloca %"compiler/eval:task"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = insertvalue %"compiler/eval:task" undef, i64 0, 0
  %t4 = insertvalue %"compiler/eval:task" %t2, i64 0, 1
  %t6 = insertvalue %"compiler/eval:task" %t4, i64 0, 2
  %t8 = insertvalue %"compiler/eval:task" %t6, i64 -1, 3
  %t10 = insertvalue %"compiler/eval:task" %t8, i64 0, 4
  store %"compiler/eval:task" %t10, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/eval:task", ptr %rv
  ret %"compiler/eval:task" %rr
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
declare void @llvm.memmove.p0.p0.i64(ptr, ptr, i64, i1)
@__olang_empty_array = external constant [16 x i64]
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
@.d0 = private constant <{ i64, [14 x i8] }> <{ i64 0, [14 x i8] c"__olang_bench_" }>, align 8
@.d1 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c"__olang_" }>, align 8
declare noalias ptr @__olang_scope_alloc_zeroed(ptr, i64)
declare i32 @__olang_err()
@.d2 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
declare double @llvm.arithmetic.fence.f64(double)
declare bfloat @__olang_int_bf16(i64, i1)
@olang_2esole_2ecompiler_2feval_3aMachine_2e46 = weak hidden constant i1 false
declare ptr @__olang_region_make(ptr) noinline
define linkonce_odr %"compiler/eval:alloc" @olang_2emir_2eHelperKind_2eZero_2ecompiler_2feval_3aalloc() #0 {
entry:
  %l0 = alloca %"compiler/eval:alloc"
  %rv = alloca %"compiler/eval:alloc"
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr @__olang_prog_scope
  %t2 = call %"compiler/eval:alloc" @compiler_2feval_3aalloc_2ector(ptr %t1)
  store %"compiler/eval:alloc" %t2, ptr %l0
  br label %bb1
bb1:
  %t3 = load %"compiler/eval:alloc", ptr %l0
  store %"compiler/eval:alloc" %t3, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/eval:alloc", ptr %rv
  ret %"compiler/eval:alloc" %rr
}

declare void @__olang_region_release(ptr) noinline
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
define internal { i64, [4 x i64] } @olang_lambda_3(ptr %env, i64 %a0) #0 {
entry:
  %l2 = alloca %"compiler/mir:Range"
  %l9 = alloca { i64, [4 x i64] }
  %rv = alloca { i64, [4 x i64] }
  %cp0 = getelementptr { ptr, %"compiler/mir:Range", ptr }, ptr %env, i32 0, i32 0
  %cv0 = load ptr, ptr %cp0, !tbaa !28
  %cp1 = getelementptr { ptr, %"compiler/mir:Range", ptr }, ptr %env, i32 0, i32 1
  %cv1 = load %"compiler/mir:Range", ptr %cp1, !tbaa !28
  store %"compiler/mir:Range" %cv1, ptr %l2
  %vq0 = getelementptr { ptr, %"compiler/mir:Range", ptr }, ptr %env, i32 0, i32 2
  %vr0 = load ptr, ptr %vq0, !tbaa !28
  %vc0 = call ptr @__olang_capture_scope(ptr %vr0)
  br label %start
start:
  br label %bb0
bb0:
  %t3 = getelementptr %"compiler/mir:Fn", ptr %cv0, i32 0, i32 11
  %t4 = getelementptr %"compiler/mir:Range", ptr %l2, i32 0, i32 0
  %t5 = load i32, ptr %t4, !tbaa !23
  %t7 = sext i32 %t5 to i64
  %t11 = add i64 %t7, %a0
  %t14 = call { i64, [4 x i64] } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aOperand_3e_2eAt_3ccompiler_2fmir_3aOperand_3e(ptr %vc0, ptr %t3, i64 %t11)
  store { i64, [4 x i64] } %t14, ptr %l9
  br label %bb1
bb1:
  %t15 = load { i64, [4 x i64] }, ptr %l9
  store { i64, [4 x i64] } %t15, ptr %rv
  br label %ret
ret:
  %rr = load { i64, [4 x i64] }, ptr %rv
  ret { i64, [4 x i64] } %rr
}

@.d4 = private constant <{ i64, [17 x i8] }> <{ i64 0, [17 x i8] c"__olang_arg_count" }>, align 8
@.d5 = private constant <{ i64, [11 x i8] }> <{ i64 0, [11 x i8] c"__olang_arg" }>, align 8
@.d6 = private constant <{ i64, [11 x i8] }> <{ i64 0, [11 x i8] c"__olang_env" }>, align 8
declare i64 @__olang_env(ptr, ptr, i64)
@.d7 = private constant <{ i64, [11 x i8] }> <{ i64 0, [11 x i8] c"__olang_err" }>, align 8
@.d8 = private constant <{ i64, [12 x i8] }> <{ i64 0, [12 x i8] c"__olang_stat" }>, align 8
declare i32 @__olang_stat(ptr, ptr)
@.d9 = private constant <{ i64, [11 x i8] }> <{ i64 0, [11 x i8] c"__olang_dir" }>, align 8
@.d10 = private constant <{ i64, [16 x i8] }> <{ i64 0, [16 x i8] c"__olang_realpath" }>, align 8
@.d11 = private constant <{ i64, [11 x i8] }> <{ i64 0, [11 x i8] c"__olang_dir" }>, align 8
declare i64 @__olang_dir(ptr, ptr, i64)
declare i64 @__olang_realpath(ptr, ptr, i64)
@.d12 = private constant <{ i64, [13 x i8] }> <{ i64 0, [13 x i8] c"__olang_spawn" }>, align 8
declare i32 @__olang_spawn(ptr, i64, i32, i32, i32, ptr)
@.d13 = private constant <{ i64, [12 x i8] }> <{ i64 0, [12 x i8] c"__olang_exec" }>, align 8
declare i32 @__olang_exec(ptr, ptr, i64)
@.d14 = private constant <{ i64, [15 x i8] }> <{ i64 0, [15 x i8] c"__olang_mkdtemp" }>, align 8
declare i32 @__olang_mkdtemp(ptr)
@.d15 = private constant <{ i64, [15 x i8] }> <{ i64 0, [15 x i8] c"__olang_dyncall" }>, align 8
@.d16 = private constant <{ i64, [19 x i8] }> <{ i64 0, [19 x i8] c"__olang_dyncall_var" }>, align 8
@.d17 = private constant <{ i64, [19 x i8] }> <{ i64 0, [19 x i8] c"__olang_dyncall_var" }>, align 8
declare i64 @__olang_dyncall(ptr, ptr, ptr, i8 zeroext)
declare i64 @__olang_dyncall_var(ptr, ptr, ptr, i8 zeroext, i64)
@.d18 = private constant <{ i64, [21 x i8] }> <{ i64 0, [21 x i8] c"__olang_dyncall_check" }>, align 8
declare i32 @__olang_dyncall_check(ptr, ptr, i8 zeroext)
@.d19 = private constant <{ i64, [25 x i8] }> <{ i64 0, [25 x i8] c"__olang_dyncall_var_check" }>, align 8
declare i32 @__olang_dyncall_var_check(ptr, ptr, i8 zeroext, i64)
@.d20 = private constant <{ i64, [20 x i8] }> <{ i64 0, [20 x i8] c"__olang_test_running" }>, align 8
@.d21 = private constant <{ i64, [19 x i8] }> <{ i64 0, [19 x i8] c"__olang_test_source" }>, align 8
@.d22 = private constant <{ i64, [20 x i8] }> <{ i64 0, [20 x i8] c"__olang_test_running" }>, align 8
@.d23 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d24 = private constant <{ i64, [18 x i8] }> <{ i64 0, [18 x i8] c"__olang_fuzz_input" }>, align 8
@.d25 = private constant <{ i64, [16 x i8] }> <{ i64 0, [16 x i8] c"__olang_bench_on" }>, align 8
@.d26 = private constant <{ i64, [25 x i8] }> <{ i64 0, [25 x i8] c"__olang_bench_allocs_made" }>, align 8
@.d27 = private constant <{ i64, [24 x i8] }> <{ i64 0, [24 x i8] c"__olang_bench_bytes_made" }>, align 8
@.d28 = private constant <{ i64, [26 x i8] }> <{ i64 0, [26 x i8] c"__olang_bench_instructions" }>, align 8
@.d29 = private constant <{ i64, [18 x i8] }> <{ i64 0, [18 x i8] c"__olang_bench_keep" }>, align 8
@.d30 = private constant <{ i64, [19 x i8] }> <{ i64 0, [19 x i8] c"__olang_test_detach" }>, align 8
@.d31 = private constant <{ i64, [16 x i8] }> <{ i64 0, [16 x i8] c"__olang_on_crash" }>, align 8
declare void @llvm.memcpy.p0.p0.i64(ptr, ptr, i64, i1)
@.d32 = private constant <{ i64, [11 x i8] }> <{ i64 0, [11 x i8] c"__olang_err" }>, align 8
@.d33 = private constant <{ i64, [17 x i8] }> <{ i64 0, [17 x i8] c"__olang_arg_count" }>, align 8
@.d34 = private constant <{ i64, [11 x i8] }> <{ i64 0, [11 x i8] c"__olang_arg" }>, align 8
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

@.d35 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d36 = private constant <{ i64, [20 x i8] }> <{ i64 0, [20 x i8] c"__olang_run_on_stack" }>, align 8
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
@.d37 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d38 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d39 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"I64" }>, align 8
@olang_2esole_2ecompiler_2feval_3aImage_2e0 = weak hidden constant i1 false
declare ptr @__olang_region_or(ptr, ptr)
declare void @__olang_region_settle(ptr, i1)
@olang_2esole_2ecompiler_2feval_3aImage_2e1 = weak hidden constant i1 false
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
declare ptr @__olang_scope_mine_slow(ptr) noinline
declare i1 @compiler_2feval_2ecompiler_2feval_3aMachine_2elay(ptr %v0, ptr %a0, i32 %a1)
declare %"compiler/eval:global" @compiler_2feval_3aglobal_2ector(ptr %v0)
declare i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2ecodeIndex(ptr %v0, ptr %a0, { i64, [2 x i64] } %a1)
declare i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2esize(ptr %v0, ptr %a0, i32 %a1)
@G_2ecompiler_2feval_2eaGlobal = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\03\00\00\00\00\00\00\00" }>, align 8
declare %"compiler/eval:Ptr" @compiler_2feval_2ecompiler_2feval_3aMachine_2eallocate(ptr %v0, ptr %a0, i64 %a1, i64 %a2, i64 %a3)
declare %"compiler/eval:gkey" @compiler_2feval_3agkey_2ector(ptr %v0, i64 %a0, i32 %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3aglobal_3e_2eLen_3ccompiler_2feval_3aglobal_3e(ptr %v0, ptr %a0)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2feval_3agkey_2c_20I64_3e_2eP_Hdbb1ec214f67f51e9ea8789b3bf075dc(ptr %v0, ptr %a0, %"compiler/eval:gkey" %a1, i64 %a2)
@G_2ecompiler_2feval_2eslotMask = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\FF\FF\FF\00\00\00\00\00" }>, align 8
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3aglobal_3e_2ePush_3ccompiler_2feval_3aglobal_3e(ptr %v0, ptr %a0, %"compiler/eval:global" %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eClear_3cI64_3e(ptr %v0, ptr %a0)
@G_2ecompiler_2feval_2eaFree = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>, align 8
declare void @compiler_2feval_2ecompiler_2feval_3aMachine_2erelease(ptr %v0, ptr %a0, i64 %a1)
@G_2ecompiler_2feval_2eNullPtr = available_externally constant <{ [16 x i8] }> <{ [16 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2ftypes_2eVoidT = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\01\00\00\00" }>, align 8
declare { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fmir_3aFnKey_2c_20I64_3e_2eG_H6ffe2eb17daa971b2c9d564ad72358b1(ptr %v0, ptr %a0, { i64, [2 x i64] } %a1)
@G_2ecompiler_2feval_2eWhyNoBody = external constant <{ [8 x i8], ptr }>
declare void @compiler_2feval_2ecompiler_2feval_3aMachine_2erefuse(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aFn_26_3e_2eAt_3ccompiler_2fmir_3aFn_26_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
@G_2ecompiler_2feval_2erRequest = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>, align 8
declare i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2epushFrame(ptr %v0, ptr %a0, i64 %a1, i64 %a2, i64 %a3)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aLocalId_3e_2eLen_3ccompiler_2fmir_3aLocalId_3e(ptr %v0, ptr %a0)
declare i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aLocalId_3e_2eAt_3ccompiler_2fmir_3aLocalId_3e(ptr %v0, ptr %a0, i64 %a1)
declare %"compiler/mir:Local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aLocal_3e_2eAt_3ccompiler_2fmir_3aLocal_3e(ptr %v0, ptr %a0, i64 %a1)
declare %"compiler/eval:Ptr" @compiler_2feval_2ecompiler_2feval_3aMachine_2elocalPtr(ptr %v0, ptr %a0, i64 %a1, i32 %a2)
declare i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2ewidth(ptr %v0, ptr %a0, i32 %a1)
declare void @compiler_2feval_2ecompiler_2feval_3aMachine_2ewr(ptr %v0, ptr %a0, %"compiler/eval:Ptr" %a1, i64 %a2, i64 %a3)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aVarKind_3e_2eLen_3ccompiler_2fmir_3aVarKind_3e(ptr %v0, ptr %a0)
declare void @compiler_2feval_2ecompiler_2feval_3aMachine_2eunwind(ptr %v0, ptr %a0, i64 %a1)
declare %"compiler/eval:Ptr" @compiler_2feval_2ecompiler_2feval_3aMachine_2erdPtr(ptr %v0, ptr %a0, %"compiler/eval:Ptr" %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %a0, i64 %a1)
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3ascope_3e_2eRefMut_3ccompiler_2feval_3ascope_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3ascope_3e_2eAt_3ccompiler_2feval_3ascope_3e(ptr %out, ptr %v0, ptr %a0, i64 %a1)
@G_2ecompiler_2feval_2eaValue = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\01\00\00\00\00\00\00\00" }>, align 8
declare %"compiler/eval:Ptr" @compiler_2feval_3aPtr_2ector(ptr %v0, i64 %a0, i64 %a1)
declare void @compiler_2feval_2ecompiler_2feval_3aMachine_2ecopy(ptr %v0, ptr %a0, %"compiler/eval:Ptr" %a1, %"compiler/eval:Ptr" %a2, i64 %a3)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eReferent(ptr %v0, ptr %a0, i32 %a1)
@G_2ecompiler_2ftypes_2eUnknownT = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\00\00\00\00" }>, align 8
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eLength(ptr %v0, ptr %a0, i32 %a1)
declare i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2efixedLen(ptr %v0, ptr %a0, i32 %a1)
declare i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2erd(ptr %v0, ptr %a0, %"compiler/eval:Ptr" %a1, i64 %a2)
@G_2ecompiler_2feval_2eWhyNull = external constant <{ [8 x i8], ptr }>
declare i32 @compiler_2feval_2ecompiler_2feval_3aMachine_2eopType(ptr %v0, ptr %a0, i64 %a1, { i64, [4 x i64] } %a2)
declare %"compiler/eval:Ptr" @compiler_2feval_2ecompiler_2feval_3aMachine_2eaddr(ptr %v0, ptr %a0, i64 %a1, { i64, [4 x i64] } %a2, i64 %a3)
@olang_loc_9c6d2d38b14ece16_85850a0ccdf8ec6a = external constant [0 x i8]
@olang_loc_3e93cd40ddf47e2b_3ba0afa8b25b773f = external constant [0 x i8]
declare { i32, { i64, ptr } } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2ftext_3aString_He9bc6cfad7ef603960b4717f3121b8e8(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParams(ptr %v0, ptr %a0, i32 %a1)
declare { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eResult(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2ftyped_2eMathExtern(ptr %v0, { i64, ptr } %a0, i64 %a1)
declare i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
@G_2ecompiler_2feval_2eWhyExtern = external constant <{ [8 x i8], ptr }>
declare i1 @compiler_2feval_2ecompiler_2feval_3aMachine_2ewaitsForTask(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare i1 @compiler_2feval_2ecompiler_2feval_3aMachine_2eforeignRef(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2feval_2ecompiler_2feval_3aMachine_2effiScalar(ptr %v0, ptr %a0, i32 %a1, i1 %a2)
@G_2ecompiler_2feval_2eWhyFfiPass = external constant <{ [8 x i8], ptr }>
@olang_loc_8455ed81fb66a668_e2c955a612231684 = external constant [0 x i8]
@olang_loc_e6f2fd943c115655_f5638f66c9629791 = external constant [0 x i8]
@olang_loc_24365dba12301136_85ae2e45ea64b572 = external constant [0 x i8]
@olang_loc_e79146937ca231cb_dd9a37031fe8e967 = external constant [0 x i8]
declare { i64, [4 x i64] } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aOperand_3e_2eAt_3ccompiler_2fmir_3aOperand_3e(ptr %v0, ptr %a0, i64 %a1)
declare i32 @compiler_2feval_2ecompiler_2feval_3aMachine_2effiKind(ptr %v0, ptr %a0, i32 %a1)
declare i8 @std_2fffi_2eCode(i32 %a0)
declare i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2eshape(ptr %v0, ptr %a0, i32 %a1)
@G_2ecompiler_2feval_2evInt = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\02\00\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2feval_2evPair = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\06\00\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2feval_2evFixed = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\0B\00\00\00\00\00\00\00" }>, align 8
declare i1 @compiler_2feval_2ecompiler_2feval_3aMachine_2enumbersOnly(ptr %v0, ptr %a0, i32 %a1)
declare i8 @std_2fffi_2eArrayOf(i32 %a0)
declare i64 @std_2fffi_2eWordsFor(i64 %a0)
@G_2ecompiler_2feval_2evPtr = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\05\00\00\00\00\00\00\00" }>, align 8
declare %"compiler/eval:Ptr" @compiler_2feval_2ecompiler_2feval_3aMachine_2erdPtrOrBits(ptr %v0, ptr %a0, %"compiler/eval:Ptr" %a1)
@G_2ecompiler_2feval_2eForeignId = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\FF\FF\FF\00\00\00\00\00" }>, align 8
@olang_loc_84b043302e365534_8c4896c766887f8 = external constant [0 x i8]
declare i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2ekindWidth(ptr %v0, ptr %a0, i8 %a1)
@G_2ecompiler_2ftypes_2eNoreturnT = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\11\00\00\00" }>, align 8
declare { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2eGet_3cI64_2c_20I64_3e(ptr %v0, ptr %a0, i64 %a1)
declare { i32, i64 } @std_2fffi_2eCall(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1, { i64, ptr } %a2, i8 %a3, i64 %a4)
@G_2ecompiler_2feval_2eWhyFfiFind = external constant <{ [8 x i8], ptr }>
declare void @compiler_2feval_2ecompiler_2feval_3aMachine_2ewrPtr(ptr %v0, ptr %a0, %"compiler/eval:Ptr" %a1, %"compiler/eval:Ptr" %a2)
@G_2ecompiler_2feval_2eWhyNullCall = external constant <{ [8 x i8], ptr }>
declare %"compiler/eval:alloc" @compiler_2feval_2ecompiler_2feval_3aMachine_2eallocOf(ptr %v0, ptr %a0, i64 %a1)
@G_2ecompiler_2feval_2eaCode = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\04\00\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2feval_2eWhyNotModelled = external constant <{ [8 x i8], ptr }>
declare { i64, [2 x i64] } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aFnKey_3e_2eAt_3ccompiler_2fmir_3aFnKey_3e(ptr %v0, ptr %a0, i64 %a1)
@G_2ecompiler_2ftypes_2eAnySlotBase = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\03\00\00\00\00\00\00\00" }>, align 8
@olang_loc_bde43f50f3dd47_4bb44709ac02dbdb = external constant [0 x i8]
declare void @compiler_2feval_2ecompiler_2feval_3aMachine_2edropOwnDefers(ptr %v0, ptr %a0, i64 %a1)
declare void @compiler_2feval_2ecompiler_2feval_3aMachine_2ecloseNow(ptr %v0, ptr %a0, i64 %a1, i64 %a2)
declare void @compiler_2feval_2ecompiler_2feval_3aMachine_2edisown(ptr %v0, ptr %a0, i64 %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %a0, i64 %a1)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsRef(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eElem(ptr %v0, ptr %a0, i32 %a1)
declare void @compiler_2feval_2ecompiler_2feval_3aMachine_2edropScope(ptr %v0, ptr %a0, i64 %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eTruncate_3cI64_3e(ptr %v0, ptr %a0, i64 %a1)
@G_2ecompiler_2feval_2eWhyOutside = external constant <{ [8 x i8], ptr }>
declare %"compiler/eval:task" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3atask_3e_2eAt_3ccompiler_2feval_3atask_3e(ptr %v0, ptr %a0, i64 %a1)
declare %"compiler/mir:Task" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aTask_3e_2eAt_3ccompiler_2fmir_3aTask_3e(ptr %v0, ptr %a0, i64 %a1)
declare i32 @compiler_2feval_2ecompiler_2feval_3aMachine_2ecalleeType(ptr %v0, ptr %a0, i64 %a1, { i64, [7 x i64] } %a2)
declare i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2egenIndex(ptr %v0, ptr %v1, ptr %a0, ptr %a1, %"compiler/eval:Ptr" %a2)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3agenRec_3e_2eAt_3ccompiler_2feval_3agenRec_3e(ptr %out, ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare void @compiler_2feval_2ecompiler_2feval_3aMachine_2estop(ptr %v0, ptr %v1, ptr %a0, { i64, [5 x i64] } %a1)
declare void @compiler_2feval_2ecompiler_2feval_3aMachine_2egenOver(ptr %v0, ptr %a0, i64 %a1, i64 %a2, { i64, [7 x i64] } %a3, i64 %a4, i64 %a5)
declare i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2erestoreGen(ptr %v0, ptr %a0, i64 %a1, i64 %a2, i64 %a3)
@olang_loc_11a19fcb84a16e6d_1ab7f06eb0f74619 = external constant [0 x i8]
declare void @compiler_2feval_2ecompiler_2feval_3aMachine_2eput(ptr %v0, ptr %a0, i64 %a1, %"compiler/eval:Ptr" %a2, i32 %a3, { i64, [4 x i64] } %a4)
declare void @compiler_2feval_2ecompiler_2feval_3aMachine_2eownParams(ptr %v0, ptr %a0, i64 %a1, i64 %a2)
declare { i64, [1 x i64] } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aVarKind_3e_2eAt_3ccompiler_2fmir_3aVarKind_3e(ptr %v0, ptr %a0, i64 %a1)
@olang_loc_e8d82fb02ccf62bc_44b724ba703ff148 = external constant [0 x i8]
@olang_loc_36e0ec838c111677_372a612bd7b0a623 = external constant [0 x i8]
declare { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eScopeVarsOf(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare { i64, [1 x i64] } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aScopeRef_3e_2eAt_3ccompiler_2fmir_3aScopeRef_3e(ptr %v0, ptr %a0, i64 %a1)
declare i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2escopeOf(ptr %v0, ptr %a0, i64 %a1, { i64, [1 x i64] } %a2)
@G_2ecompiler_2ftypes_2eResultVar = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\FF\FF\FF\FF\FF\FF\FF\FF" }>, align 8
@G_2ecompiler_2ftypes_2eClosingVar = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\FE\FF\FF\FF\FF\FF\FF\FF" }>, align 8
@olang_loc_5609b5c4ef82b256_83c053ae3d548522 = external constant [0 x i8]
declare i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRole(ptr %v0, ptr %a0, i32 %a1)
@G_2ecompiler_2ftypes_2eRoleTail = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\03\00\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2feval_2esBlock = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>, align 8
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3agenRec_3e_2eRefMut_3ccompiler_2feval_3agenRec_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare void @compiler_2feval_2ecompiler_2feval_3aMachine_2eloadCaptures(ptr %v0, ptr %v1, ptr %a0, i64 %a1, ptr %a2, %"compiler/eval:Ptr" %a3, i64 %a4)
declare i1 @compiler_2feval_2ecompiler_2feval_3aMachine_2enumber(ptr %v0, ptr %a0, i32 %a1)
declare i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2ecanonBits(ptr %v0, ptr %a0, i32 %a1, i64 %a2)
declare i64 @compiler_2feval_2eplainLocal(%"compiler/mir:Lvalue" %a0)
@olang_loc_e07540d555d7dc03_f134256d7232b767 = external constant [0 x i8]
@G_2ecompiler_2feval_2eslotBits = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\18\00\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2feval_2esRegion = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\05\00\00\00\00\00\00\00" }>, align 8
declare i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2eregionHome(ptr %v0, ptr %a0, i64 %a1)
@G_2ecompiler_2feval_2esStore = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\01\00\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2feval_2esInert = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\03\00\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2feval_2esBuilder = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\04\00\00\00\00\00\00\00" }>, align 8
declare { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2feval_3agkey_2c_20I64_3e_2eG_H841bd46d30f67641fdfac3080f15aea1(ptr %v0, ptr %a0, %"compiler/eval:gkey" %a1)
@G_2ecompiler_2feval_2eWhyWritesGlobalVar = external constant <{ [8 x i8], ptr }>
@olang_loc_cdcdbab6c5a00ca5_1566754bdc1f9529 = external constant [0 x i8]
@olang_loc_20cdf2bac11b5657_20b8fcdfbd19fb1b = external constant [0 x i8]
@olang_loc_3dd741f2ac40c2b6_e435d9fa661ce11a = external constant [0 x i8]
declare i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2eibits(ptr %v0, ptr %a0, i32 %a1)
declare i64 @compiler_2feval_2ebmask(i64 %a0)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3ascope_3e_2eLen_3ccompiler_2feval_3ascope_3e(ptr %v0, ptr %a0)
@G_2ecompiler_2feval_2eWhySteps = external constant <{ [8 x i8], ptr }>
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %a0)
declare void @compiler_2feval_2ecompiler_2feval_3aMachine_2estepClose(ptr %v0, ptr %a0)
declare void @compiler_2feval_2ecompiler_2feval_3aMachine_2eterm(ptr %v0, ptr %a0, i64 %a1, { i64, [8 x i64] } %a2, i1 %a3)
@G_2ecompiler_2feval_2efastStride = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\0B\00\00\00\00\00\00\00" }>, align 8
declare void @compiler_2feval_2ecompiler_2feval_3aMachine_2eflat(ptr %v0, ptr %a0, i64 %a1, i64 %a2, i64 %a3, i64 %a4)
declare void @compiler_2feval_2ecompiler_2feval_3aMachine_2estmtAt(ptr %v0, ptr %a0, i64 %a1, i64 %a2, i64 %a3)
declare { i32, i64 } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePop_3cI64_3e(ptr %v0, ptr %a0)
declare i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2enewScopeSlot(ptr %v0, ptr %a0)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3ascope_3e_2eSetAt_3ccompiler_2feval_3ascope_3e(ptr %v0, ptr %a0, i64 %a1, ptr %a2)
@olang_loc_1aa148087c58143e_12c49f79ebc6dae2 = external constant [0 x i8]
@olang_loc_ad3bfe70499dbe21_2daaaf2a9e405db5 = external constant [0 x i8]
declare { i64, [4 x i64] } @compiler_2feval_2ecompiler_2feval_3aMachine_2earg(ptr %v0, ptr %a0, i64 %a1, %"compiler/mir:Range" %a2, i64 %a3)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsUnsigned(ptr %v0, ptr %a0, i32 %a1)
@G_2ecompiler_2feval_2evFloat = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\04\00\00\00\00\00\00\00" }>, align 8
declare double @compiler_2feval_2ecompiler_2feval_3aMachine_2etoF64(ptr %v0, ptr %a0, i64 %a1, i32 %a2)
declare i1 @compiler_2feval_2efloatFits(double %a0, i64 %a1, i1 %a2)
declare { i64, i64 } @compiler_2feval_2ecompiler_2feval_3aMachine_2ewideOf(ptr %v0, ptr %a0, i64 %a1, { i64, [4 x i64] } %a2)
@G_2ecompiler_2feval_2evUint = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\03\00\00\00\00\00\00\00" }>, align 8
declare i1 @compiler_2feval_2efits128(i64 %a0, i64 %a1, i1 %a2, i64 %a3, i1 %a4)
declare { i64, i64 } @compiler_2feval_2ewideMin(i64 %a0)
declare { i64, i64 } @compiler_2feval_2eneg128(i64 %a0, i64 %a1)
declare { i64, i64 } @compiler_2feval_2emul128(i64 %a0, i64 %a1, i64 %a2, i64 %a3)
declare { i64, i64, i64, i64 } @compiler_2feval_2eudivmod128(i64 %a0, i64 %a1, i64 %a2, i64 %a3)
declare { i64, i64 } @compiler_2feval_2ewideMax(i64 %a0, i1 %a1)
declare { i64, i64 } @compiler_2feval_2eadd128(i64 %a0, i64 %a1, i64 %a2, i64 %a3)
declare i64 @compiler_2feval_2ecmp128(i64 %a0, i64 %a1, i64 %a2, i64 %a3, i1 %a4)
declare { i64, i64 } @compiler_2feval_2esub128(i64 %a0, i64 %a1, i64 %a2, i64 %a3)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eShapeCases(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eCases(ptr %v0, ptr %a0, i32 %a1)
declare %"compiler/eval:global" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3aglobal_3e_2eAt_3ccompiler_2feval_3aglobal_3e(ptr %v0, ptr %a0, i64 %a1)
declare void @compiler_2feval_2ecompiler_2feval_3aMachine_2estartGlobal(ptr %v0, ptr %a0, i64 %a1)
declare i1 @compiler_2feval_2ecompiler_2feval_3aMachine_2ewritesAfter(ptr %v0, ptr %a0, i64 %a1, i64 %a2, i32 %a3)
@G_2ecompiler_2feval_2eWhyMutableGlobal = external constant <{ [8 x i8], ptr }>
declare i1 @compiler_2feval_2ecompiler_2feval_3aMachine_2ereachesWritable(ptr %v0, ptr %a0, i32 %a1)
@G_2ecompiler_2feval_2eWhyChangeable = external constant <{ [8 x i8], ptr }>
@G_2ecompiler_2feval_2eWhyCycle = external constant <{ [8 x i8], ptr }>
@olang_loc_a7714af53687ff6b_1e8ca3031727412f = external constant [0 x i8]
declare i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2etagOf(ptr %v0, ptr %a0, %"compiler/eval:Ptr" %a1, i32 %a2)
declare i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2econvert(ptr %v0, ptr %a0, i64 %a1, i32 %a2, i32 %a3)
declare i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2ebitcast(ptr %v0, ptr %a0, i64 %a1, i32 %a2)
declare %"compiler/eval:Ptr" @compiler_2feval_2ecompiler_2feval_3aMachine_2etypeid(ptr %v0, ptr %a0, i32 %a1)
declare void @compiler_2feval_2ecompiler_2feval_3aMachine_2eretire(ptr %v0, ptr %a0, i64 %a1, %"compiler/eval:Ptr" %a2, i32 %a3)
declare i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2eatomic(ptr %v0, ptr %a0, i64 %a1, i32 %a2, %"compiler/mir:Range" %a3, i32 %a4)
declare i64 @compiler_2feval_2ebitOp(i32 %a0, i64 %a1, i64 %a2, i64 %a3)
@olang_loc_c5a1577ee3e22d75_549c323efc9636a1 = external constant [0 x i8]
declare i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2eunary(ptr %v0, ptr %a0, i32 %a1, i64 %a2, i32 %a3, i64 %a4)
@G_2ecompiler_2feval_2evBool = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\01\00\00\00\00\00\00\00" }>, align 8
declare i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2enumOp(ptr %v0, ptr %a0, i32 %a1, i64 %a2, i64 %a3, i32 %a4, i32 %a5, i64 %a6)
declare i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2enotModelled(ptr %v0, ptr %a0)
@olang_loc_26a77dbb944b4c43_3cbd97c51474f5af = external constant [0 x i8]
declare { i32, { i64, [2 x i64] } } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId_2c_20compile_Ha5986096190b27059e1b255ecbd90571(ptr %v0, ptr %a0, i32 %a1)
@G_2ecompiler_2feval_2erDtor = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\02\00\00\00\00\00\00\00" }>, align 8
declare i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %v0, ptr %a0)
declare i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2eintArg(ptr %v0, ptr %a0, i64 %a1, { i64, [4 x i64] } %a2)
declare { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
@olang_loc_7289625dc306da68_1bb592dfdbe27504 = external constant [0 x i8]
declare void @compiler_2feval_2ecompiler_2feval_3aMachine_2eputBytes(ptr %v0, ptr %v1, ptr %a0, i64 %a1, { i64, [4 x i64] } %a2, { i64, ptr } %a3, i64 %a4)
@olang_loc_d526727003b18a55_2e4fcca09321f611 = external constant [0 x i8]
@olang_loc_1269d295d9d04536_be9a6b7fb42413f2 = external constant [0 x i8]
@olang_loc_d5c4bb6f444265cb_1686743ce9a847e7 = external constant [0 x i8]
@olang_loc_72e3b80bf5d68934_41b0c6a64027e678 = external constant [0 x i8]
declare %"std/prelude/text:StringBuilder" @std_2fprelude_2ftext_3aStringBuilder_2ector(ptr %v0)
declare void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePushChar(ptr %v0, ptr %a0, i8 %a1)
@G_2ecompiler_2feval_2eInterpCrash = external constant <{ [8 x i8], ptr }>
declare void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %v0, ptr %v1, ptr %a0)
declare void @std_2fos_2eOnCrash(ptr %v0, { i64, ptr } %a0)
@olang_loc_a18e8c5cba1eb19a_a9626f5dd72b6766 = external constant [0 x i8]
declare { %"compiler/eval:Ptr", i32 } @compiler_2feval_2ecompiler_2feval_3aMachine_2eplace(ptr %v0, ptr %a0, i64 %a1, %"compiler/mir:Lvalue" %a2)
@olang_loc_1c104311c72af5f5_c45dcd645c687dc1 = external constant [0 x i8]
@G_2ecompiler_2feval_2evVoid = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>, align 8
declare i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eA(ptr %v0, ptr %a0, i32 %a1)
@G_2ecompiler_2feval_2evWide = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\0D\00\00\00\00\00\00\00" }>, align 8
declare i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eB(ptr %v0, ptr %a0, i32 %a1)
@G_2ecompiler_2feval_2evOrd = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\09\00\00\00\00\00\00\00" }>, align 8
declare i1 @compiler_2feval_2ecompiler_2feval_3aMachine_2ertArray(ptr %v0, ptr %a0, i32 %a1)
@G_2ecompiler_2feval_2evFunc = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\07\00\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2feval_2evAgg = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\0A\00\00\00\00\00\00\00" }>, align 8
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eHasPayload(ptr %v0, ptr %a0, i32 %a1)
@G_2ecompiler_2feval_2evEnum = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\08\00\00\00\00\00\00\00" }>, align 8
declare i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2enamedShape(ptr %v0, ptr %a0, i32 %a1)
@G_2ecompiler_2feval_2evNone = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\0C\00\00\00\00\00\00\00" }>, align 8
@olang_loc_5b67d157b70117f_cddce93e80c09b93 = external constant [0 x i8]
declare void @compiler_2feval_2ecompiler_2feval_3aMachine_2edeliver(ptr %v0, ptr %a0, i64 %a1, { i64, [4 x i64] } %a2)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eSetAt_3cI64_3e(ptr %v0, ptr %a0, i64 %a1, i64 %a2)
@olang_loc_77ec49cd2ef2b53_f798fa63e9acfcff = external constant [0 x i8]
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3agenRec_3e_2eSetAt_3ccompiler_2feval_3agenRec_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1, ptr %a2)
declare void @compiler_2feval_2ecompiler_2feval_3aMachine_2ereturned(ptr %v0, ptr %a0, ptr %a1)
declare { i32, i1 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2eGet_3cI64_2c_20Bool_3e(ptr %v0, ptr %a0, i64 %a1)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2ePut_3cI64_2c_20Bool_3e(ptr %v0, ptr %a0, i64 %a1, i1 %a2)
@olang_loc_69287ebff671eb2d_9fd35f0201a42c21 = external constant [0 x i8]
declare %"compiler/source:Span" @compiler_2fsource_3aSpan_2ector(ptr %v0, i32 %a0, i32 %a1)
@G_2ecompiler_2feval_2eWhyEnds = external constant <{ [8 x i8], ptr }>
declare %"compiler/mir:Call" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aCall_3e_2eAt_3ccompiler_2fmir_3aCall_3e(ptr %v0, ptr %a0, i64 %a1)
@olang_loc_86c25f3ef178583f_f0c157887637479b = external constant [0 x i8]
declare i64 @compiler_2feval_2elz128(i64 %a0, i64 %a1, i64 %a2)
declare { i64, i64 } @compiler_2feval_2eextend128(i64 %a0, i64 %a1, i64 %a2, i1 %a3)
declare i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2efromF64(ptr %v0, ptr %a0, double %a1, i32 %a2)
declare { i64, i64 } @compiler_2feval_2eshl128(i64 %a0, i64 %a1, i64 %a2)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePrim(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
@G_2ecompiler_2fmir_2eEmpty = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>, align 8
declare %"compiler/mir:Lvalue" @compiler_2fmir_3aLvalue_2ector(ptr %v0, { i64, [2 x i64] } %a0, %"compiler/mir:Range" %a1)
declare %"compiler/mir:Lvalue" @compiler_2fmir_2eLvalue_2eL(i32 %a0)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2feval_3aBlob_3e_2ector(ptr %v0, i64 %a0)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %v0, i64 %a0)

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
