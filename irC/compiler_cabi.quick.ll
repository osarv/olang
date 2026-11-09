source_filename = "compiler_cabi.quick.ll"
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
%"compiler/cabi:Scalar" = type { i64, i64, { i64, ptr }, i1 }
%"std/prelude/text:StringBuilder" = type { %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" = type { { i64, ptr }, i64, i64 }
%"compiler/cabi:Way" = type { i32, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", { i64, ptr } }
%"compiler/cabi:Regs" = type { i64, i64 }
define dso_local { i64, ptr } @compiler_2fcabi_2eExt(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1, i32 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l3 = alloca i32
  %l5 = alloca i1
  %l7 = alloca { i64, ptr }
  %l8 = alloca { i64, ptr }
  %l9 = alloca i64
  %l10 = alloca { i64, ptr }
  %l13 = alloca i32
  %l17 = alloca { i64, ptr }
  %l18 = alloca { i64, ptr }
  %l19 = alloca i64
  %l20 = alloca { i64, ptr }
  %l23 = alloca i1
  %l25 = alloca i1
  %l28 = alloca i64
  %l30 = alloca { i64, ptr }
  %l31 = alloca { i64, ptr }
  %l32 = alloca i64
  %l33 = alloca { i64, ptr }
  %l36 = alloca i1
  %l37 = alloca { i64, ptr }
  %l38 = alloca { i64, ptr }
  %l40 = alloca { i64, ptr }
  %l42 = alloca i64
  %l43 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t3 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v1, ptr %s0, { i64, ptr } %a1, { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d0, i32 0, i32 1) })
  store i1 %t3, ptr %l5
  br label %bb1
bb1:
  %t4 = load i1, ptr %l5, !tbaa !21
  %t5 = xor i1 %t4, true
  br i1 %t5, label %bb2, label %bb3
bb2:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d1, i32 0, i32 1) }, ptr %l7, !tbaa !27
  %t7 = load { i64, ptr }, ptr %l7, !tbaa !27
  store { i64, ptr } %t7, ptr %l8, !tbaa !27
  %t8 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t9 = extractvalue { i64, ptr } %t8, 0
  store i64 %t9, ptr %l9, !tbaa !24
  %t10 = load i64, ptr %l9, !tbaa !24
  %t11 = mul i64 %t10, 1
  %t12 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t11)
  %t13 = insertvalue { i64, ptr } undef, i64 %t10, 0
  %t14 = insertvalue { i64, ptr } %t13, ptr %t12, 1
  store { i64, ptr } %t14, ptr %l10, !tbaa !27
  %t15 = getelementptr { i64, ptr }, ptr %l10, i32 0, i32 1
  %t16 = load ptr, ptr %t15, !tbaa !27
  %t17 = getelementptr { i64, ptr }, ptr %l8, i32 0, i32 1
  %t18 = load ptr, ptr %t17, !tbaa !27
  %t19 = load i64, ptr %l9, !tbaa !24
  %t20 = mul i64 %t19, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t16, ptr %t18, i64 %t20, i1 false)
  %t21 = load { i64, ptr }, ptr %l10, !tbaa !27
  store { i64, ptr } %t21, ptr %l8, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  %t22 = load { i64, ptr }, ptr %l8, !tbaa !27
  store { i64, ptr } %t22, ptr %rv
  br label %ret
bb3:
  br label %bb4
bb4:
  %t23 = load ptr, ptr %l0, !tbaa !29
  %t27 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %v0, ptr %t23, i32 %a2)
  store i32 %t27, ptr %l13
  br label %bb5
bb5:
  %t28 = load i32, ptr %l13, !tbaa !23
  store i32 %t28, ptr %l3, !tbaa !23
  %t29 = load i32, ptr %l3, !tbaa !23
  %t30 = load i32, ptr @G_2ecompiler_2ftypes_2eBoolT, !tbaa !23
  %t33 = icmp eq i32 %t29, %t30
  br i1 %t33, label %bb6, label %bb7
bb6:
  store { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d2, i32 0, i32 1) }, ptr %l17, !tbaa !27
  %t35 = load { i64, ptr }, ptr %l17, !tbaa !27
  store { i64, ptr } %t35, ptr %l18, !tbaa !27
  %t36 = load { i64, ptr }, ptr %l18, !tbaa !27
  %t37 = extractvalue { i64, ptr } %t36, 0
  store i64 %t37, ptr %l19, !tbaa !24
  %t38 = load i64, ptr %l19, !tbaa !24
  %t39 = mul i64 %t38, 1
  %t40 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t39)
  %t41 = insertvalue { i64, ptr } undef, i64 %t38, 0
  %t42 = insertvalue { i64, ptr } %t41, ptr %t40, 1
  store { i64, ptr } %t42, ptr %l20, !tbaa !27
  %t43 = getelementptr { i64, ptr }, ptr %l20, i32 0, i32 1
  %t44 = load ptr, ptr %t43, !tbaa !27
  %t45 = getelementptr { i64, ptr }, ptr %l18, i32 0, i32 1
  %t46 = load ptr, ptr %t45, !tbaa !27
  %t47 = load i64, ptr %l19, !tbaa !24
  %t48 = mul i64 %t47, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t44, ptr %t46, i64 %t48, i1 false)
  %t49 = load { i64, ptr }, ptr %l20, !tbaa !27
  store { i64, ptr } %t49, ptr %l18, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  %t50 = load { i64, ptr }, ptr %l18, !tbaa !27
  store { i64, ptr } %t50, ptr %rv
  br label %ret
bb7:
  br label %bb8
bb8:
  %t51 = load ptr, ptr %l0, !tbaa !29
  %t52 = load i32, ptr %l3, !tbaa !23
  %t55 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsInt(ptr %v0, ptr %t51, i32 %t52)
  store i1 %t55, ptr %l23
  br label %bb9
bb9:
  %t56 = load i1, ptr %l23, !tbaa !21
  %t57 = xor i1 %t56, true
  br i1 %t57, label %bb10, label %bb11
bb10:
  store i1 true, ptr %l25, !tbaa !21
  br label %bb13
bb11:
  %t59 = load ptr, ptr %l0, !tbaa !29
  %t60 = load i32, ptr %l3, !tbaa !23
  %t63 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eBits(ptr %v0, ptr %t59, i32 %t60)
  store i64 %t63, ptr %l28
  br label %bb12
bb12:
  %t64 = load i64, ptr %l28, !tbaa !24
  %t65 = icmp sge i64 %t64, 32
  store i1 %t65, ptr %l25, !tbaa !21
  br label %bb13
bb13:
  %t67 = load i1, ptr %l25, !tbaa !21
  br i1 %t67, label %bb14, label %bb15
bb14:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d3, i32 0, i32 1) }, ptr %l30, !tbaa !27
  %t68 = load { i64, ptr }, ptr %l30, !tbaa !27
  store { i64, ptr } %t68, ptr %l31, !tbaa !27
  %t69 = load { i64, ptr }, ptr %l31, !tbaa !27
  %t70 = extractvalue { i64, ptr } %t69, 0
  store i64 %t70, ptr %l32, !tbaa !24
  %t71 = load i64, ptr %l32, !tbaa !24
  %t72 = mul i64 %t71, 1
  %t73 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t72)
  %t74 = insertvalue { i64, ptr } undef, i64 %t71, 0
  %t75 = insertvalue { i64, ptr } %t74, ptr %t73, 1
  store { i64, ptr } %t75, ptr %l33, !tbaa !27
  %t76 = getelementptr { i64, ptr }, ptr %l33, i32 0, i32 1
  %t77 = load ptr, ptr %t76, !tbaa !27
  %t78 = getelementptr { i64, ptr }, ptr %l31, i32 0, i32 1
  %t79 = load ptr, ptr %t78, !tbaa !27
  %t80 = load i64, ptr %l32, !tbaa !24
  %t81 = mul i64 %t80, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t77, ptr %t79, i64 %t81, i1 false)
  %t82 = load { i64, ptr }, ptr %l33, !tbaa !27
  store { i64, ptr } %t82, ptr %l31, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  %t83 = load { i64, ptr }, ptr %l31, !tbaa !27
  store { i64, ptr } %t83, ptr %rv
  br label %ret
bb15:
  br label %bb16
bb16:
  %t84 = load ptr, ptr %l0, !tbaa !29
  %t85 = load i32, ptr %l3, !tbaa !23
  %t88 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsUnsigned(ptr %v0, ptr %t84, i32 %t85)
  store i1 %t88, ptr %l36
  br label %bb17
bb17:
  %t89 = load i1, ptr %l36, !tbaa !21
  br i1 %t89, label %bb18, label %bb19
bb18:
  store { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d4, i32 0, i32 1) }, ptr %l38, !tbaa !27
  %t90 = load { i64, ptr }, ptr %l38, !tbaa !27
  store { i64, ptr } %t90, ptr %l37, !tbaa !27
  br label %bb20
bb19:
  store { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d5, i32 0, i32 1) }, ptr %l40, !tbaa !27
  %t92 = load { i64, ptr }, ptr %l40, !tbaa !27
  store { i64, ptr } %t92, ptr %l37, !tbaa !27
  br label %bb20
bb20:
  %t94 = load { i64, ptr }, ptr %l37, !tbaa !27
  %t95 = extractvalue { i64, ptr } %t94, 0
  store i64 %t95, ptr %l42, !tbaa !24
  %t96 = load i64, ptr %l42, !tbaa !24
  %t97 = mul i64 %t96, 1
  %t98 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t97)
  %t99 = insertvalue { i64, ptr } undef, i64 %t96, 0
  %t100 = insertvalue { i64, ptr } %t99, ptr %t98, 1
  store { i64, ptr } %t100, ptr %l43, !tbaa !27
  %t101 = getelementptr { i64, ptr }, ptr %l43, i32 0, i32 1
  %t102 = load ptr, ptr %t101, !tbaa !27
  %t103 = getelementptr { i64, ptr }, ptr %l37, i32 0, i32 1
  %t104 = load ptr, ptr %t103, !tbaa !27
  %t105 = load i64, ptr %l42, !tbaa !24
  %t106 = mul i64 %t105, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t102, ptr %t104, i64 %t106, i1 false)
  %t107 = load { i64, ptr }, ptr %l43, !tbaa !27
  store { i64, ptr } %t107, ptr %l37, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  %t108 = load { i64, ptr }, ptr %l37, !tbaa !27
  store { i64, ptr } %t108, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local void @compiler_2fcabi_2eFlatten(ptr %v0, ptr %v1, ptr %v2, ptr %a0, i32 %a1, i64 %a2, ptr %a3) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca i64
  %l3 = alloca ptr
  %l4 = alloca i32
  %l5 = alloca i32
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca i64
  %l13 = alloca i64
  %l14 = alloca i64
  %l15 = alloca i64
  %l16 = alloca i64
  %l17 = alloca i64
  %l19 = alloca { i64, ptr }
  %l20 = alloca { i64, ptr }
  %l21 = alloca i64
  %l22 = alloca i64
  %l23 = alloca i64
  %l24 = alloca i64
  %l25 = alloca i64
  %l26 = alloca i64
  %l27 = alloca i64
  %l31 = alloca i32
  %l34 = alloca i32
  %l37 = alloca ptr
  %l39 = alloca %"compiler/cabi:Scalar"
  %l42 = alloca i32
  %l47 = alloca i32
  %l48 = alloca ptr
  %l51 = alloca i32
  %l52 = alloca i32
  %l55 = alloca i64
  %l56 = alloca ptr
  %l59 = alloca i32
  %l60 = alloca i64
  %l65 = alloca i64
  %l68 = alloca i64
  %l86 = alloca ptr
  %l87 = alloca i32
  %l88 = alloca i64
  %l89 = alloca i64
  %l92 = alloca i64
  %l100 = alloca i1
  %l103 = alloca i64
  %l107 = alloca i64
  %l110 = alloca i64
  %l128 = alloca ptr
  %l132 = alloca %"compiler/cabi:Scalar"
  %l137 = alloca i32
  %l140 = alloca i1
  %l141 = alloca ptr
  %l144 = alloca i32
  %l145 = alloca i32
  %l148 = alloca ptr
  %l151 = alloca i32
  %l152 = alloca { i64, ptr }
  %l155 = alloca { i64, ptr }
  %l161 = alloca i64
  %l164 = alloca i64
  %l183 = alloca { i64, ptr }
  %l195 = alloca i64
  %l199 = alloca { i64, ptr }
  %l202 = alloca { i64, ptr }
  %l205 = alloca ptr
  %l206 = alloca i64
  %l207 = alloca i64
  %l208 = alloca { i64, ptr }
  %l211 = alloca i1
  %l212 = alloca %"compiler/cabi:Scalar"
  %s0 = alloca %olang.scope
  %s10 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store i64 %a2, ptr %l2
  store ptr %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t5 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %v0, ptr %t1, i32 %a1)
  store i32 %t5, ptr %l31
  br label %bb1
bb1:
  %t6 = load i32, ptr %l31, !tbaa !23
  store i32 %t6, ptr %l4, !tbaa !23
  %t7 = load ptr, ptr %l0, !tbaa !29
  %t8 = load i32, ptr %l4, !tbaa !23
  %t11 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t7, i32 %t8)
  store i32 %t11, ptr %l34
  br label %bb2
bb2:
  %t12 = load i32, ptr %l34, !range !{i32 0, i32 33}
  %t14 = trunc i64 20 to i32
  %t15 = icmp eq i32 %t12, %t14
  br i1 %t15, label %bb3, label %bb4
bb3:
  %t17 = load ptr, ptr %l3, !tbaa !29
  store ptr %t17, ptr %l37, !tbaa !29
  %t18 = load i64, ptr %l2, !tbaa !24
  %t20 = call %"compiler/cabi:Scalar" @compiler_2fcabi_3aScalar_2ector(ptr %v1, ptr %v1, i64 %t18, i64 8, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d6, i32 0, i32 1) }, i1 false)
  store %"compiler/cabi:Scalar" %t20, ptr %l39
  br label %bb5
bb4:
  br label %bb7
bb5:
  %t21 = load ptr, ptr %l37, !tbaa !29
  %t22 = load %"compiler/cabi:Scalar", ptr %l39
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcabi_3aScalar_3e_2ePush_3ccompiler_2fcabi_3aScalar_3e(ptr %v1, ptr %v1, ptr %t21, %"compiler/cabi:Scalar" %t22)
  br label %bb6
bb6:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb7:
  %t23 = load ptr, ptr %l0, !tbaa !29
  %t24 = load i32, ptr %l4, !tbaa !23
  %t27 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t23, i32 %t24)
  store i32 %t27, ptr %l42
  br label %bb8
bb8:
  %t28 = load i32, ptr %l42, !range !{i32 0, i32 33}
  %t30 = trunc i64 19 to i32
  %t31 = icmp eq i32 %t28, %t30
  br i1 %t31, label %bb9, label %bb10
bb9:
  %t33 = load ptr, ptr %l0, !tbaa !29
  %t34 = load i32, ptr %l4, !tbaa !23
  %t37 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eElem(ptr %v0, ptr %t33, i32 %t34)
  store i32 %t37, ptr %l47
  br label %bb11
bb10:
  br label %bb33
bb11:
  %t38 = load i32, ptr %l47, !tbaa !23
  store i32 %t38, ptr %l5, !tbaa !23
  %t39 = load ptr, ptr %l0, !tbaa !29
  store ptr %t39, ptr %l48, !tbaa !29
  %t40 = load ptr, ptr %l0, !tbaa !29
  %t41 = load i32, ptr %l4, !tbaa !23
  %t44 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eLength(ptr %v0, ptr %t40, i32 %t41)
  store i32 %t44, ptr %l51
  br label %bb12
bb12:
  %t45 = load ptr, ptr %l48, !tbaa !29
  %t46 = load i32, ptr %l51, !tbaa !23
  %t47 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t45, i32 %t46)
  store i32 %t47, ptr %l52
  br label %bb13
bb13:
  %t48 = load i32, ptr %l52, !range !{i32 0, i32 33}
  %t50 = trunc i64 26 to i32
  %t51 = icmp eq i32 %t48, %t50
  br i1 %t51, label %bb14, label %bb15
bb14:
  %t53 = load ptr, ptr %l0, !tbaa !29
  store ptr %t53, ptr %l56, !tbaa !29
  %t54 = load ptr, ptr %l0, !tbaa !29
  %t55 = load i32, ptr %l4, !tbaa !23
  %t58 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eLength(ptr %v0, ptr %t54, i32 %t55)
  store i32 %t58, ptr %l59
  br label %bb16
bb15:
  store i64 0, ptr %l55, !tbaa !24
  br label %bb18
bb16:
  %t59 = load ptr, ptr %l56, !tbaa !29
  %t60 = load i32, ptr %l59, !tbaa !23
  %t61 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eConstValue(ptr %v0, ptr %t59, i32 %t60)
  store i64 %t61, ptr %l60
  br label %bb17
bb17:
  %t62 = load i64, ptr %l60, !tbaa !24
  store i64 %t62, ptr %l55, !tbaa !24
  br label %bb18
bb18:
  %t63 = load i64, ptr %l55, !tbaa !24
  store i64 0, ptr %l7, !tbaa !24
  store i64 %t63, ptr %l8, !tbaa !24
  store i64 1, ptr %l9, !tbaa !24
  %t66 = load i64, ptr %l8, !tbaa !24
  %t67 = load i64, ptr %l7, !tbaa !24
  %t70 = icmp sgt i64 %t66, %t67
  br i1 %t70, label %bb19, label %bb20
bb19:
  %t72 = load i64, ptr %l9, !tbaa !24
  %t74 = icmp sgt i64 %t72, 0
  br i1 %t74, label %bb21, label %bb22
bb20:
  store i64 0, ptr %l65, !tbaa !24
  br label %bb24
bb21:
  %t76 = load i64, ptr %l8, !tbaa !24
  %t77 = load i64, ptr %l7, !tbaa !24
  %t80 = sub i64 %t76, %t77
  %t81 = load i64, ptr %l9, !tbaa !24
  %t84 = add i64 %t80, %t81
  %t86 = sub i64 %t84, 1
  %t87 = load i64, ptr %l9, !tbaa !24
  %t90 = sdiv i64 %t86, %t87
  store i64 %t90, ptr %l68, !tbaa !24
  br label %bb23
bb22:
  store i64 0, ptr %l68, !tbaa !24
  br label %bb23
bb23:
  %t92 = load i64, ptr %l68, !tbaa !24
  store i64 %t92, ptr %l65, !tbaa !24
  br label %bb24
bb24:
  %t93 = load i64, ptr %l65, !tbaa !24
  store i64 %t93, ptr %l10, !tbaa !24
  store i64 0, ptr %l11, !tbaa !24
  br label %bb25
bb25:
  %t94 = load i64, ptr %l11, !tbaa !24
  %t95 = load i64, ptr %l10, !tbaa !24
  %t98 = icmp slt i64 %t94, %t95
  %t100 = xor i1 %t98, true
  br i1 %t100, label %bb26, label %bb27
bb26:
  br label %bb32
bb27:
  br label %bb28
bb28:
  %t102 = load i64, ptr %l7, !tbaa !24
  %t103 = load i64, ptr %l11, !tbaa !24
  %t104 = load i64, ptr %l9, !tbaa !24
  %t107 = mul i64 %t103, %t104
  %t110 = add i64 %t102, %t107
  %t112 = load ptr, ptr %l0, !tbaa !29
  store ptr %t112, ptr %l86, !tbaa !29
  %t113 = load i32, ptr %l5, !tbaa !23
  store i32 %t113, ptr %l87, !tbaa !23
  %t114 = load i64, ptr %l2, !tbaa !24
  store i64 %t114, ptr %l88, !tbaa !24
  store i64 %t110, ptr %l89, !tbaa !24
  %t116 = load ptr, ptr %l0, !tbaa !29
  %t117 = load i32, ptr %l5, !tbaa !23
  %t120 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eSize(ptr %v0, ptr %t116, i32 %t117)
  store i64 %t120, ptr %l92
  br label %bb29
bb29:
  %t121 = load i64, ptr %l89, !tbaa !24
  %t122 = load i64, ptr %l92, !tbaa !24
  %t123 = mul i64 %t121, %t122
  %t124 = load i64, ptr %l88, !tbaa !24
  %t126 = add i64 %t124, %t123
  %t127 = load ptr, ptr %l3, !tbaa !29
  %t128 = load ptr, ptr %l86, !tbaa !29
  %t129 = load i32, ptr %l87, !tbaa !23
  call void @compiler_2fcabi_2eFlatten(ptr %v0, ptr %v1, ptr %v2, ptr %t128, i32 %t129, i64 %t126, ptr %t127)
  br label %bb30
bb30:
  br label %bb31
bb31:
  %t132 = load i64, ptr %l11, !tbaa !24
  %t134 = add i64 %t132, 1
  store i64 %t134, ptr %l11, !tbaa !24
  br label %bb25
bb32:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb33:
  %t136 = load ptr, ptr %l0, !tbaa !29
  %t137 = load i32, ptr %l4, !tbaa !23
  %t140 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePacked(ptr %v0, ptr %t136, i32 %t137)
  store i1 %t140, ptr %l100
  br label %bb34
bb34:
  %t141 = load i1, ptr %l100, !tbaa !21
  br i1 %t141, label %bb35, label %bb36
bb35:
  store i64 0, ptr %l13, !tbaa !24
  %t142 = load ptr, ptr %l0, !tbaa !29
  %t143 = load i32, ptr %l4, !tbaa !23
  %t146 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eSize(ptr %v0, ptr %t142, i32 %t143)
  store i64 %t146, ptr %l103
  br label %bb37
bb36:
  br label %bb52
bb37:
  %t147 = load i64, ptr %l103, !tbaa !24
  store i64 %t147, ptr %l14, !tbaa !24
  store i64 1, ptr %l15, !tbaa !24
  %t148 = load i64, ptr %l14, !tbaa !24
  %t149 = load i64, ptr %l13, !tbaa !24
  %t152 = icmp sgt i64 %t148, %t149
  br i1 %t152, label %bb38, label %bb39
bb38:
  %t154 = load i64, ptr %l15, !tbaa !24
  %t156 = icmp sgt i64 %t154, 0
  br i1 %t156, label %bb40, label %bb41
bb39:
  store i64 0, ptr %l107, !tbaa !24
  br label %bb43
bb40:
  %t158 = load i64, ptr %l14, !tbaa !24
  %t159 = load i64, ptr %l13, !tbaa !24
  %t162 = sub i64 %t158, %t159
  %t163 = load i64, ptr %l15, !tbaa !24
  %t166 = add i64 %t162, %t163
  %t168 = sub i64 %t166, 1
  %t169 = load i64, ptr %l15, !tbaa !24
  %t172 = sdiv i64 %t168, %t169
  store i64 %t172, ptr %l110, !tbaa !24
  br label %bb42
bb41:
  store i64 0, ptr %l110, !tbaa !24
  br label %bb42
bb42:
  %t174 = load i64, ptr %l110, !tbaa !24
  store i64 %t174, ptr %l107, !tbaa !24
  br label %bb43
bb43:
  %t175 = load i64, ptr %l107, !tbaa !24
  store i64 %t175, ptr %l16, !tbaa !24
  store i64 0, ptr %l17, !tbaa !24
  br label %bb44
bb44:
  %t176 = load i64, ptr %l17, !tbaa !24
  %t177 = load i64, ptr %l16, !tbaa !24
  %t180 = icmp slt i64 %t176, %t177
  %t182 = xor i1 %t180, true
  br i1 %t182, label %bb45, label %bb46
bb45:
  br label %bb51
bb46:
  br label %bb47
bb47:
  %t184 = load i64, ptr %l13, !tbaa !24
  %t185 = load i64, ptr %l17, !tbaa !24
  %t186 = load i64, ptr %l15, !tbaa !24
  %t189 = mul i64 %t185, %t186
  %t192 = add i64 %t184, %t189
  %t194 = load ptr, ptr %l3, !tbaa !29
  store ptr %t194, ptr %l128, !tbaa !29
  %t195 = load i64, ptr %l2, !tbaa !24
  %t199 = add i64 %t195, %t192
  %t201 = call %"compiler/cabi:Scalar" @compiler_2fcabi_3aScalar_2ector(ptr %v1, ptr %v1, i64 %t199, i64 1, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d7, i32 0, i32 1) }, i1 false)
  store %"compiler/cabi:Scalar" %t201, ptr %l132
  br label %bb48
bb48:
  %t202 = load ptr, ptr %l128, !tbaa !29
  %t203 = load %"compiler/cabi:Scalar", ptr %l132
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcabi_3aScalar_3e_2ePush_3ccompiler_2fcabi_3aScalar_3e(ptr %v1, ptr %v1, ptr %t202, %"compiler/cabi:Scalar" %t203)
  br label %bb49
bb49:
  br label %bb50
bb50:
  %t204 = load i64, ptr %l17, !tbaa !24
  %t206 = add i64 %t204, 1
  store i64 %t206, ptr %l17, !tbaa !24
  br label %bb44
bb51:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb52:
  %t208 = load ptr, ptr %l0, !tbaa !29
  %t209 = load i32, ptr %l4, !tbaa !23
  %t212 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t208, i32 %t209)
  store i32 %t212, ptr %l137
  br label %bb53
bb53:
  %t213 = load i32, ptr %l137, !range !{i32 0, i32 33}
  %t215 = trunc i64 18 to i32
  %t216 = icmp eq i32 %t213, %t215
  br i1 %t216, label %bb54, label %bb55
bb54:
  %t218 = load ptr, ptr %l0, !tbaa !29
  store ptr %t218, ptr %l141, !tbaa !29
  %t219 = load ptr, ptr %l0, !tbaa !29
  %t220 = load i32, ptr %l4, !tbaa !23
  %t223 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %t219, i32 %t220)
  store i32 %t223, ptr %l144
  br label %bb56
bb55:
  store i1 false, ptr %l140, !tbaa !21
  br label %bb58
bb56:
  %t224 = load ptr, ptr %l141, !tbaa !29
  %t225 = load i32, ptr %l144, !tbaa !23
  %t226 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclKindOf(ptr %v0, ptr %t224, i32 %t225)
  store i32 %t226, ptr %l145
  br label %bb57
bb57:
  %t227 = load i32, ptr %l145, !range !{i32 0, i32 6}
  %t229 = trunc i64 0 to i32
  %t230 = icmp eq i32 %t227, %t229
  store i1 %t230, ptr %l140, !tbaa !21
  br label %bb58
bb58:
  %t232 = load i1, ptr %l140, !tbaa !21
  br i1 %t232, label %bb59, label %bb60
bb59:
  store %olang.scope zeroinitializer, ptr %s10
  %t233 = load ptr, ptr %l0, !tbaa !29
  store ptr %t233, ptr %l148, !tbaa !29
  %t234 = load ptr, ptr %l0, !tbaa !29
  %t235 = load i32, ptr %l4, !tbaa !23
  %t238 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eFields(ptr %v0, ptr %t234, i32 %t235)
  store i32 %t238, ptr %l151
  br label %bb61
bb60:
  br label %bb77
bb61:
  %t239 = load ptr, ptr %l148, !tbaa !29
  %t240 = load i32, ptr %l151, !tbaa !23
  %t241 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t239, i32 %t240)
  store { i64, ptr } %t241, ptr %l152
  br label %bb62
bb62:
  %t242 = load { i64, ptr }, ptr %l152, !tbaa !27
  store { i64, ptr } %t242, ptr %l19, !tbaa !27
  %t243 = load ptr, ptr %l0, !tbaa !29
  %t244 = load i32, ptr %l4, !tbaa !23
  %t247 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eOffsets(ptr %v0, ptr %s10, ptr %t243, i32 %t244)
  store { i64, ptr } %t247, ptr %l155
  br label %bb63
bb63:
  %t248 = load { i64, ptr }, ptr %l155, !tbaa !27
  store { i64, ptr } %t248, ptr %l20, !tbaa !27
  store i64 0, ptr %l21, !tbaa !24
  %t249 = load { i64, ptr }, ptr %l19, !tbaa !27
  %t251 = extractvalue { i64, ptr } %t249, 0
  store i64 %t251, ptr %l22, !tbaa !24
  store i64 1, ptr %l23, !tbaa !24
  %t253 = load i64, ptr %l22, !tbaa !24
  %t254 = load i64, ptr %l21, !tbaa !24
  %t257 = icmp sgt i64 %t253, %t254
  br i1 %t257, label %bb64, label %bb65
bb64:
  %t259 = load i64, ptr %l23, !tbaa !24
  %t261 = icmp sgt i64 %t259, 0
  br i1 %t261, label %bb66, label %bb67
bb65:
  store i64 0, ptr %l161, !tbaa !24
  br label %bb69
bb66:
  %t263 = load i64, ptr %l22, !tbaa !24
  %t264 = load i64, ptr %l21, !tbaa !24
  %t267 = sub i64 %t263, %t264
  %t268 = load i64, ptr %l23, !tbaa !24
  %t271 = add i64 %t267, %t268
  %t273 = sub i64 %t271, 1
  %t274 = load i64, ptr %l23, !tbaa !24
  %t277 = sdiv i64 %t273, %t274
  store i64 %t277, ptr %l164, !tbaa !24
  br label %bb68
bb67:
  store i64 0, ptr %l164, !tbaa !24
  br label %bb68
bb68:
  %t279 = load i64, ptr %l164, !tbaa !24
  store i64 %t279, ptr %l161, !tbaa !24
  br label %bb69
bb69:
  %t280 = load i64, ptr %l161, !tbaa !24
  store i64 %t280, ptr %l24, !tbaa !24
  store i64 0, ptr %l25, !tbaa !24
  br label %bb70
bb70:
  %t281 = load i64, ptr %l25, !tbaa !24
  %t282 = load i64, ptr %l24, !tbaa !24
  %t285 = icmp slt i64 %t281, %t282
  %t287 = xor i1 %t285, true
  br i1 %t287, label %bb71, label %bb72
bb71:
  br label %bb76
bb72:
  br label %bb73
bb73:
  %t289 = load i64, ptr %l21, !tbaa !24
  %t290 = load i64, ptr %l25, !tbaa !24
  %t291 = load i64, ptr %l23, !tbaa !24
  %t294 = mul i64 %t290, %t291
  %t297 = add i64 %t289, %t294
  store i64 %t297, ptr %l26, !tbaa !24
  %t299 = load ptr, ptr %l0, !tbaa !29
  %t300 = load { i64, ptr }, ptr %l19, !tbaa !27
  store { i64, ptr } %t300, ptr %l183, !tbaa !27
  %t301 = load i64, ptr %l26, !tbaa !24
  %t303 = getelementptr { i64, ptr }, ptr %l183, i32 0, i32 1
  %t304 = load ptr, ptr %t303, !tbaa !27
  %t305 = getelementptr i32, ptr %t304, i64 %t301
  %t306 = load i32, ptr %t305, !tbaa !33
  %t307 = load i64, ptr %l2, !tbaa !24
  %t308 = load i64, ptr %l26, !tbaa !24
  %t310 = getelementptr { i64, ptr }, ptr %l20, i32 0, i32 1
  %t311 = load ptr, ptr %t310, !tbaa !27
  %t312 = getelementptr i64, ptr %t311, i64 %t308
  %t313 = load i64, ptr %t312, !tbaa !34
  %t316 = add i64 %t307, %t313
  %t317 = load ptr, ptr %l3, !tbaa !29
  call void @compiler_2fcabi_2eFlatten(ptr %v0, ptr %v1, ptr %v2, ptr %t299, i32 %t306, i64 %t316, ptr %t317)
  br label %bb74
bb74:
  br label %bb75
bb75:
  %t322 = load i64, ptr %l25, !tbaa !24
  %t324 = add i64 %t322, 1
  store i64 %t324, ptr %l25, !tbaa !24
  br label %bb70
bb76:
  call void @__olang_scope_close(ptr %s10)
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb77:
  %t326 = load ptr, ptr %l0, !tbaa !29
  %t327 = load i32, ptr %l4, !tbaa !23
  %t330 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eSize(ptr %v0, ptr %t326, i32 %t327)
  store i64 %t330, ptr %l195
  br label %bb78
bb78:
  %t331 = load i64, ptr %l195, !tbaa !24
  store i64 %t331, ptr %l27, !tbaa !24
  %t332 = load i32, ptr %l4, !tbaa !23
  %t333 = load i32, ptr @G_2ecompiler_2ftypes_2eBoolT, !tbaa !23
  %t336 = icmp eq i32 %t332, %t333
  br i1 %t336, label %bb79, label %bb80
bb79:
  store { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d8, i32 0, i32 1) }, ptr %l199, !tbaa !27
  br label %bb82
bb80:
  %t338 = load ptr, ptr %l0, !tbaa !29
  %t339 = load i32, ptr %l4, !tbaa !23
  %t342 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eLlvm(ptr %v0, ptr %s0, ptr %v2, ptr %t338, i32 %t339)
  store { i64, ptr } %t342, ptr %l202
  br label %bb81
bb81:
  %t343 = load { i64, ptr }, ptr %l202, !tbaa !27
  %t344 = extractvalue { i64, ptr } %t343, 1
  %t345 = extractvalue { i64, ptr } %t343, 0
  %t346 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t345)
  call void @olang_textcopy(ptr %t346, ptr %t344, i64 %t345)
  %t347 = insertvalue { i64, ptr } undef, i64 %t345, 0
  %t348 = insertvalue { i64, ptr } %t347, ptr %t346, 1
  %t350 = extractvalue { i64, ptr } %t348, 0
  %t351 = extractvalue { i64, ptr } %t348, 1
  %t352 = mul i64 %t350, 1
  %t353 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t352)
  call void @llvm.memcpy.p0.p0.i64(ptr %t353, ptr %t351, i64 %t352, i1 false)
  %t354 = insertvalue { i64, ptr } undef, i64 %t350, 0
  %t355 = insertvalue { i64, ptr } %t354, ptr %t353, 1
  store { i64, ptr } %t355, ptr %l199, !tbaa !27
  br label %bb82
bb82:
  %t357 = load { i64, ptr }, ptr %l199, !tbaa !27
  %t358 = load ptr, ptr %l3, !tbaa !29
  store ptr %t358, ptr %l205, !tbaa !29
  %t359 = load i64, ptr %l2, !tbaa !24
  store i64 %t359, ptr %l206, !tbaa !24
  %t360 = load i64, ptr %l27, !tbaa !24
  store i64 %t360, ptr %l207, !tbaa !24
  store { i64, ptr } %t357, ptr %l208, !tbaa !27
  %t362 = load ptr, ptr %l0, !tbaa !29
  %t363 = load i32, ptr %l4, !tbaa !23
  %t366 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsFloat(ptr %v0, ptr %t362, i32 %t363)
  store i1 %t366, ptr %l211
  br label %bb83
bb83:
  %t367 = load i64, ptr %l206, !tbaa !24
  %t368 = load i64, ptr %l207, !tbaa !24
  %t369 = load { i64, ptr }, ptr %l208, !tbaa !27
  %t370 = load i1, ptr %l211, !tbaa !21
  %t371 = call %"compiler/cabi:Scalar" @compiler_2fcabi_3aScalar_2ector(ptr %v1, ptr %v1, i64 %t367, i64 %t368, { i64, ptr } %t369, i1 %t370)
  store %"compiler/cabi:Scalar" %t371, ptr %l212
  br label %bb84
bb84:
  %t372 = load ptr, ptr %l205, !tbaa !29
  %t373 = load %"compiler/cabi:Scalar", ptr %l212
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcabi_3aScalar_3e_2ePush_3ccompiler_2fcabi_3aScalar_3e(ptr %v1, ptr %v1, ptr %t372, %"compiler/cabi:Scalar" %t373)
  br label %bb85
bb85:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local i1 @compiler_2fcabi_2eIsStruct(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca i32
  %l5 = alloca i32
  %l8 = alloca i32
  %l11 = alloca i1
  %l12 = alloca ptr
  %l15 = alloca i32
  %l16 = alloca i32
  %rv = alloca i1
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t5 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %v0, ptr %t1, i32 %a1)
  store i32 %t5, ptr %l5
  br label %bb1
bb1:
  %t6 = load i32, ptr %l5, !tbaa !23
  store i32 %t6, ptr %l2, !tbaa !23
  %t7 = load ptr, ptr %l0, !tbaa !29
  %t8 = load i32, ptr %l2, !tbaa !23
  %t11 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t7, i32 %t8)
  store i32 %t11, ptr %l8
  br label %bb2
bb2:
  %t12 = load i32, ptr %l8, !range !{i32 0, i32 33}
  %t14 = trunc i64 18 to i32
  %t15 = icmp eq i32 %t12, %t14
  br i1 %t15, label %bb3, label %bb4
bb3:
  %t17 = load ptr, ptr %l0, !tbaa !29
  store ptr %t17, ptr %l12, !tbaa !29
  %t18 = load ptr, ptr %l0, !tbaa !29
  %t19 = load i32, ptr %l2, !tbaa !23
  %t22 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %t18, i32 %t19)
  store i32 %t22, ptr %l15
  br label %bb5
bb4:
  store i1 false, ptr %l11, !tbaa !21
  br label %bb7
bb5:
  %t23 = load ptr, ptr %l12, !tbaa !29
  %t24 = load i32, ptr %l15, !tbaa !23
  %t25 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclKindOf(ptr %v0, ptr %t23, i32 %t24)
  store i32 %t25, ptr %l16
  br label %bb6
bb6:
  %t26 = load i32, ptr %l16, !range !{i32 0, i32 6}
  %t28 = trunc i64 0 to i32
  %t29 = icmp eq i32 %t26, %t28
  store i1 %t29, ptr %l11, !tbaa !21
  br label %bb7
bb7:
  %t31 = load i1, ptr %l11, !tbaa !21
  store i1 %t31, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local { i64, ptr } @compiler_2fcabi_2ePartsList(ptr %v0, ptr %v1, ptr %a0) #0 {
entry:
  %l1 = alloca %"std/prelude/text:StringBuilder"
  %l2 = alloca ptr
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca { i64, ptr }
  %l6 = alloca %"std/prelude/text:StringBuilder"
  %l9 = alloca i64
  %l11 = alloca i64
  %l17 = alloca { i64, ptr }
  %l26 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %s3 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = call %"std/prelude/text:StringBuilder" @std_2fprelude_2ftext_3aStringBuilder_2ector(ptr %s0)
  store %"std/prelude/text:StringBuilder" %t1, ptr %l6
  br label %bb1
bb1:
  %t2 = load %"std/prelude/text:StringBuilder", ptr %l6
  store %"std/prelude/text:StringBuilder" %t2, ptr %l1
  %t5 = getelementptr %"compiler/cabi:Way", ptr %a0, i32 0, i32 1
  store ptr %t5, ptr %l2, !tbaa !29
  store i64 0, ptr %l3, !tbaa !24
  br label %bb2
bb2:
  %t7 = load i64, ptr %l3, !tbaa !24
  store i64 %t7, ptr %l9, !tbaa !24
  %t8 = load ptr, ptr %l2, !tbaa !29
  %t10 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %v0, ptr %t8)
  store i64 %t10, ptr %l11
  br label %bb3
bb3:
  %t11 = load i64, ptr %l9, !tbaa !24
  %t12 = load i64, ptr %l11, !tbaa !24
  %t13 = icmp slt i64 %t11, %t12
  %t15 = xor i1 %t13, true
  br i1 %t15, label %bb4, label %bb5
bb4:
  br label %bb14
bb5:
  br label %bb6
bb6:
  %t17 = load i64, ptr %l3, !tbaa !24
  store i64 %t17, ptr %l4, !tbaa !24
  %t19 = load ptr, ptr %l2, !tbaa !29
  %t20 = load i64, ptr %l3, !tbaa !24
  %t23 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %v0, ptr %v0, ptr %t19, i64 %t20)
  store { i64, ptr } %t23, ptr %l17
  br label %bb7
bb7:
  %t24 = load { i64, ptr }, ptr %l17, !tbaa !27
  store { i64, ptr } %t24, ptr %l5, !tbaa !27
  %t25 = load i64, ptr %l4, !tbaa !24
  %t27 = icmp sgt i64 %t25, 0
  br i1 %t27, label %bb8, label %bb9
bb8:
  store %olang.scope zeroinitializer, ptr %s3
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s3, ptr %l1, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d9, i32 0, i32 1) })
  br label %bb10
bb9:
  br label %bb11
bb10:
  call void @__olang_scope_close(ptr %s3)
  br label %bb11
bb11:
  %t30 = load { i64, ptr }, ptr %l5, !tbaa !27
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %v0, ptr %l1, { i64, ptr } %t30)
  br label %bb12
bb12:
  br label %bb13
bb13:
  %t33 = load i64, ptr %l3, !tbaa !24
  %t35 = add i64 %t33, 1
  store i64 %t35, ptr %l3, !tbaa !24
  br label %bb2
bb14:
  %t38 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %s0, ptr %v1, ptr %l1)
  store { i64, ptr } %t38, ptr %l26
  br label %bb15
bb15:
  call void @__olang_scope_close(ptr %s0)
  %t39 = load { i64, ptr }, ptr %l26, !tbaa !27
  store { i64, ptr } %t39, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local { i64, ptr } @compiler_2fcabi_2ePartsType(ptr %v0, ptr %v1, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"std/prelude/text:StringBuilder"
  %l2 = alloca ptr
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca { i64, ptr }
  %l8 = alloca i64
  %l12 = alloca { i64, ptr }
  %l14 = alloca %"std/prelude/text:StringBuilder"
  %l18 = alloca i64
  %l20 = alloca i64
  %l26 = alloca { i64, ptr }
  %l36 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %s1 = alloca %olang.scope
  %s5 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/cabi:Way", ptr %t1, i32 0, i32 1
  %t5 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %v0, ptr %t3)
  store i64 %t5, ptr %l8
  br label %bb1
bb1:
  %t6 = load i64, ptr %l8, !tbaa !24
  %t7 = icmp eq i64 %t6, 1
  br i1 %t7, label %bb2, label %bb3
bb2:
  store %olang.scope zeroinitializer, ptr %s1
  %t9 = load ptr, ptr %l0, !tbaa !29
  %t11 = getelementptr %"compiler/cabi:Way", ptr %t9, i32 0, i32 1
  %t13 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %v0, ptr %s1, ptr %t11, i64 0)
  store { i64, ptr } %t13, ptr %l12
  br label %bb4
bb3:
  br label %bb5
bb4:
  %t14 = load { i64, ptr }, ptr %l12, !tbaa !27
  %t15 = extractvalue { i64, ptr } %t14, 1
  %t16 = extractvalue { i64, ptr } %t14, 0
  %t17 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t16)
  call void @olang_textcopy(ptr %t17, ptr %t15, i64 %t16)
  %t18 = insertvalue { i64, ptr } undef, i64 %t16, 0
  %t19 = insertvalue { i64, ptr } %t18, ptr %t17, 1
  call void @__olang_scope_close(ptr %s1)
  call void @__olang_scope_close(ptr %s0)
  store { i64, ptr } %t19, ptr %rv
  br label %ret
bb5:
  %t21 = call %"std/prelude/text:StringBuilder" @std_2fprelude_2ftext_3aStringBuilder_2ector(ptr %s0)
  store %"std/prelude/text:StringBuilder" %t21, ptr %l14
  br label %bb6
bb6:
  %t22 = load %"std/prelude/text:StringBuilder", ptr %l14
  store %"std/prelude/text:StringBuilder" %t22, ptr %l1
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s0, ptr %l1, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d10, i32 0, i32 1) })
  br label %bb7
bb7:
  %t24 = load ptr, ptr %l0, !tbaa !29
  %t26 = getelementptr %"compiler/cabi:Way", ptr %t24, i32 0, i32 1
  store ptr %t26, ptr %l2, !tbaa !29
  store i64 0, ptr %l3, !tbaa !24
  br label %bb8
bb8:
  %t28 = load i64, ptr %l3, !tbaa !24
  store i64 %t28, ptr %l18, !tbaa !24
  %t29 = load ptr, ptr %l2, !tbaa !29
  %t31 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %v0, ptr %t29)
  store i64 %t31, ptr %l20
  br label %bb9
bb9:
  %t32 = load i64, ptr %l18, !tbaa !24
  %t33 = load i64, ptr %l20, !tbaa !24
  %t34 = icmp slt i64 %t32, %t33
  %t36 = xor i1 %t34, true
  br i1 %t36, label %bb10, label %bb11
bb10:
  br label %bb20
bb11:
  br label %bb12
bb12:
  %t38 = load i64, ptr %l3, !tbaa !24
  store i64 %t38, ptr %l4, !tbaa !24
  %t40 = load ptr, ptr %l2, !tbaa !29
  %t41 = load i64, ptr %l3, !tbaa !24
  %t44 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %v0, ptr %v0, ptr %t40, i64 %t41)
  store { i64, ptr } %t44, ptr %l26
  br label %bb13
bb13:
  %t45 = load { i64, ptr }, ptr %l26, !tbaa !27
  store { i64, ptr } %t45, ptr %l5, !tbaa !27
  %t46 = load i64, ptr %l4, !tbaa !24
  %t48 = icmp sgt i64 %t46, 0
  br i1 %t48, label %bb14, label %bb15
bb14:
  store %olang.scope zeroinitializer, ptr %s5
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s5, ptr %l1, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d11, i32 0, i32 1) })
  br label %bb16
bb15:
  br label %bb17
bb16:
  call void @__olang_scope_close(ptr %s5)
  br label %bb17
bb17:
  %t51 = load { i64, ptr }, ptr %l5, !tbaa !27
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %v0, ptr %l1, { i64, ptr } %t51)
  br label %bb18
bb18:
  br label %bb19
bb19:
  %t54 = load i64, ptr %l3, !tbaa !24
  %t56 = add i64 %t54, 1
  store i64 %t56, ptr %l3, !tbaa !24
  br label %bb8
bb20:
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s0, ptr %l1, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d12, i32 0, i32 1) })
  br label %bb21
bb21:
  %t60 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %s0, ptr %v1, ptr %l1)
  store { i64, ptr } %t60, ptr %l36
  br label %bb22
bb22:
  call void @__olang_scope_close(ptr %s0)
  %t61 = load { i64, ptr }, ptr %l36, !tbaa !27
  store { i64, ptr } %t61, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local i64 @compiler_2fcabi_2eSpan(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i32 %a2) #0 {
entry:
  %l1 = alloca ptr
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l12 = alloca i64
  %l15 = alloca i64
  %l19 = alloca i64
  %l22 = alloca i64
  %l43 = alloca i64
  %l47 = alloca i64
  %l54 = alloca i64
  %l58 = alloca i64
  %rv = alloca i64
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t5 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eSize(ptr %v0, ptr %a0, i32 %a2)
  store i64 %t5, ptr %l12
  br label %bb1
bb1:
  %t6 = load i64, ptr %l12, !tbaa !24
  store i64 %t6, ptr %l3, !tbaa !24
  store i64 0, ptr %l4, !tbaa !24
  %t7 = load ptr, ptr %l1, !tbaa !29
  %t9 = getelementptr %"compiler/cabi:Way", ptr %t7, i32 0, i32 1
  %t11 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %v1, ptr %t9)
  store i64 %t11, ptr %l15
  br label %bb2
bb2:
  %t12 = load i64, ptr %l15, !tbaa !24
  store i64 %t12, ptr %l5, !tbaa !24
  store i64 1, ptr %l6, !tbaa !24
  %t13 = load i64, ptr %l5, !tbaa !24
  %t14 = load i64, ptr %l4, !tbaa !24
  %t17 = icmp sgt i64 %t13, %t14
  br i1 %t17, label %bb3, label %bb4
bb3:
  %t19 = load i64, ptr %l6, !tbaa !24
  %t21 = icmp sgt i64 %t19, 0
  br i1 %t21, label %bb5, label %bb6
bb4:
  store i64 0, ptr %l19, !tbaa !24
  br label %bb8
bb5:
  %t23 = load i64, ptr %l5, !tbaa !24
  %t24 = load i64, ptr %l4, !tbaa !24
  %t27 = sub i64 %t23, %t24
  %t28 = load i64, ptr %l6, !tbaa !24
  %t31 = add i64 %t27, %t28
  %t33 = sub i64 %t31, 1
  %t34 = load i64, ptr %l6, !tbaa !24
  %t37 = sdiv i64 %t33, %t34
  store i64 %t37, ptr %l22, !tbaa !24
  br label %bb7
bb6:
  store i64 0, ptr %l22, !tbaa !24
  br label %bb7
bb7:
  %t39 = load i64, ptr %l22, !tbaa !24
  store i64 %t39, ptr %l19, !tbaa !24
  br label %bb8
bb8:
  %t40 = load i64, ptr %l19, !tbaa !24
  store i64 %t40, ptr %l7, !tbaa !24
  store i64 0, ptr %l8, !tbaa !24
  br label %bb9
bb9:
  %t41 = load i64, ptr %l8, !tbaa !24
  %t42 = load i64, ptr %l7, !tbaa !24
  %t45 = icmp slt i64 %t41, %t42
  %t47 = xor i1 %t45, true
  br i1 %t47, label %bb10, label %bb11
bb10:
  br label %bb21
bb11:
  br label %bb12
bb12:
  %t49 = load i64, ptr %l4, !tbaa !24
  %t50 = load i64, ptr %l8, !tbaa !24
  %t51 = load i64, ptr %l6, !tbaa !24
  %t54 = mul i64 %t50, %t51
  %t57 = add i64 %t49, %t54
  store i64 %t57, ptr %l9, !tbaa !24
  %t59 = load ptr, ptr %l1, !tbaa !29
  %t61 = getelementptr %"compiler/cabi:Way", ptr %t59, i32 0, i32 2
  %t62 = load i64, ptr %l9, !tbaa !24
  %t65 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v1, ptr %t61, i64 %t62)
  store i64 %t65, ptr %l43
  br label %bb13
bb13:
  %t66 = load ptr, ptr %l1, !tbaa !29
  %t68 = getelementptr %"compiler/cabi:Way", ptr %t66, i32 0, i32 3
  %t69 = load i64, ptr %l9, !tbaa !24
  %t72 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v1, ptr %t68, i64 %t69)
  store i64 %t72, ptr %l47
  br label %bb14
bb14:
  %t73 = load i64, ptr %l43, !tbaa !24
  %t74 = load i64, ptr %l47, !tbaa !24
  %t75 = add i64 %t73, %t74
  %t76 = load i64, ptr %l3, !tbaa !24
  %t79 = icmp sgt i64 %t75, %t76
  br i1 %t79, label %bb15, label %bb16
bb15:
  %t81 = load ptr, ptr %l1, !tbaa !29
  %t83 = getelementptr %"compiler/cabi:Way", ptr %t81, i32 0, i32 2
  %t84 = load i64, ptr %l9, !tbaa !24
  %t87 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v1, ptr %t83, i64 %t84)
  store i64 %t87, ptr %l54
  br label %bb17
bb16:
  br label %bb19
bb17:
  %t88 = load ptr, ptr %l1, !tbaa !29
  %t90 = getelementptr %"compiler/cabi:Way", ptr %t88, i32 0, i32 3
  %t91 = load i64, ptr %l9, !tbaa !24
  %t94 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v1, ptr %t90, i64 %t91)
  store i64 %t94, ptr %l58
  br label %bb18
bb18:
  %t95 = load i64, ptr %l54, !tbaa !24
  %t96 = load i64, ptr %l58, !tbaa !24
  %t97 = add i64 %t95, %t96
  store i64 %t97, ptr %l3, !tbaa !24
  br label %bb19
bb19:
  br label %bb20
bb20:
  %t99 = load i64, ptr %l8, !tbaa !24
  %t101 = add i64 %t99, 1
  store i64 %t101, ptr %l8, !tbaa !24
  br label %bb9
bb21:
  %t103 = load i64, ptr %l3, !tbaa !24
  store i64 %t103, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local %"compiler/cabi:Way" @compiler_2fcabi_2eWay_2eClassify(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, { i64, ptr } %a1, i32 %a2, i1 %a3) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca i32
  %l3 = alloca i1
  %l4 = alloca i64
  %l5 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %lp6 = alloca ptr
  %lp7 = alloca ptr
  %lp8 = alloca ptr
  %l9 = alloca i1
  %l10 = alloca ptr
  %l11 = alloca i64
  %l12 = alloca %"compiler/cabi:Scalar"
  %l13 = alloca { i64, ptr }
  %l14 = alloca %"std/prelude/text:StringBuilder"
  %l15 = alloca i64
  %l16 = alloca i64
  %l17 = alloca i64
  %l18 = alloca i64
  %l19 = alloca i64
  %l21 = alloca i64
  %l22 = alloca i64
  %l23 = alloca i64
  %l24 = alloca i64
  %l25 = alloca i64
  %l27 = alloca i64
  %l28 = alloca i64
  %l29 = alloca i1
  %l30 = alloca i1
  %l31 = alloca ptr
  %l32 = alloca i64
  %l33 = alloca %"compiler/cabi:Scalar"
  %l34 = alloca { { i64, ptr }, i64 }
  %lp35 = alloca ptr
  %l36 = alloca i64
  %l39 = alloca i64
  %l40 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l44 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l45 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l46 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l48 = alloca i1
  %l50 = alloca i64
  %l52 = alloca i1
  %l54 = alloca i64
  %l57 = alloca i64
  %l59 = alloca i64
  %l64 = alloca %"compiler/cabi:Scalar"
  %l67 = alloca i1
  %l68 = alloca i64
  %l70 = alloca %"compiler/cabi:Scalar"
  %l77 = alloca %"compiler/cabi:Scalar"
  %l80 = alloca %"std/prelude/text:StringBuilder"
  %l83 = alloca i64
  %l87 = alloca i64
  %l90 = alloca i64
  %l116 = alloca ptr
  %l117 = alloca i64
  %l120 = alloca { i64, ptr }
  %l122 = alloca ptr
  %l123 = alloca i64
  %l126 = alloca i64
  %l131 = alloca ptr
  %l133 = alloca i64
  %l135 = alloca %"compiler/cabi:Scalar"
  %l138 = alloca i32
  %l139 = alloca i64
  %l141 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l143 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l145 = alloca i64
  %l147 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l149 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l151 = alloca i64
  %l153 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l155 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l157 = alloca %"compiler/cabi:Way"
  %l159 = alloca %"compiler/cabi:Way"
  %l163 = alloca i32
  %l166 = alloca i64
  %l168 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l170 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l172 = alloca i64
  %l174 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l176 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l178 = alloca i64
  %l180 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l182 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l184 = alloca %"compiler/cabi:Way"
  %l186 = alloca %"compiler/cabi:Way"
  %l189 = alloca ptr
  %l190 = alloca i64
  %l193 = alloca { i64, ptr }
  %l197 = alloca { i64, ptr }
  %l200 = alloca ptr
  %l202 = alloca i64
  %l207 = alloca i32
  %l208 = alloca i64
  %l210 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l212 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l214 = alloca i64
  %l216 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l218 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l220 = alloca i64
  %l222 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l224 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l226 = alloca %"compiler/cabi:Way"
  %l228 = alloca %"compiler/cabi:Way"
  %l231 = alloca i1
  %l235 = alloca i32
  %l238 = alloca i64
  %l240 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l242 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l244 = alloca i64
  %l246 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l248 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l250 = alloca i64
  %l252 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l254 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l256 = alloca %"compiler/cabi:Way"
  %l258 = alloca %"compiler/cabi:Way"
  %l265 = alloca i64
  %l268 = alloca i64
  %l291 = alloca i64
  %l293 = alloca i64
  %l298 = alloca %"compiler/cabi:Scalar"
  %l302 = alloca i1
  %l313 = alloca { { i64, ptr }, i64 }
  %l316 = alloca { { i64, ptr }, i64 }
  %l320 = alloca { { i64, ptr }, i64 }
  %l321 = alloca { i64, ptr }
  %l322 = alloca i64
  %l323 = alloca { i64, ptr }
  %l333 = alloca i32
  %l334 = alloca i64
  %l336 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l338 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l340 = alloca i64
  %l342 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l344 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l346 = alloca i64
  %l348 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l350 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l352 = alloca %"compiler/cabi:Way"
  %l354 = alloca %"compiler/cabi:Way"
  %s0 = alloca %olang.scope
  %s3 = alloca %olang.scope
  %s6 = alloca %olang.scope
  %s7 = alloca %olang.scope
  %s10 = alloca %olang.scope
  %s20 = alloca %olang.scope
  %rv = alloca %"compiler/cabi:Way"
  store ptr %a0, ptr %l0
  store i32 %a2, ptr %l2
  store i1 %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load i32, ptr %l2, !tbaa !23
  %t5 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eSize(ptr %v0, ptr %t1, i32 %t2)
  store i64 %t5, ptr %l39
  br label %bb1
bb1:
  %t6 = load i64, ptr %l39, !tbaa !24
  store i64 %t6, ptr %l4, !tbaa !24
  %t7 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fcabi_3aScalar_3e_2ector(ptr %s0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t7, ptr %l40
  br label %bb2
bb2:
  %t8 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l40
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t8, ptr %l5
  %t9 = load ptr, ptr %l0, !tbaa !29
  %t10 = load i32, ptr %l2, !tbaa !23
  call void @compiler_2fcabi_2eFlatten(ptr %v0, ptr %s0, ptr %v3, ptr %t9, i32 %t10, i64 0, ptr %l5)
  br label %bb3
bb3:
  %t14 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2ector(ptr %v2, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t14, ptr %l44
  br label %bb4
bb4:
  %t15 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 32, i64 8)
  store ptr %t15, ptr %lp6
  %t16 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l44
  %t17 = load ptr, ptr %lp6
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t16, ptr %t17
  %t18 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %v2, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t18, ptr %l45
  br label %bb5
bb5:
  %t19 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 32, i64 8)
  store ptr %t19, ptr %lp7
  %t20 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l45
  %t21 = load ptr, ptr %lp7
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t20, ptr %t21
  %t22 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %v2, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t22, ptr %l46
  br label %bb6
bb6:
  %t23 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 32, i64 8)
  store ptr %t23, ptr %lp8
  %t24 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l46
  %t25 = load ptr, ptr %lp8
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t24, ptr %t25
  %t28 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v1, ptr %s0, { i64, ptr } %a1, { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d13, i32 0, i32 1) })
  store i1 %t28, ptr %l48
  br label %bb7
bb7:
  %t29 = load i1, ptr %l48, !tbaa !21
  br i1 %t29, label %bb8, label %bb9
bb8:
  %t31 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcabi_3aScalar_3e_2eLen_3ccompiler_2fcabi_3aScalar_3e(ptr %s0, ptr %l5)
  store i64 %t31, ptr %l50
  br label %bb10
bb9:
  br label %bb143
bb10:
  %t32 = load i64, ptr %l50, !tbaa !24
  %t33 = icmp sge i64 %t32, 1
  br i1 %t33, label %bb11, label %bb12
bb11:
  %t36 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcabi_3aScalar_3e_2eLen_3ccompiler_2fcabi_3aScalar_3e(ptr %s0, ptr %l5)
  store i64 %t36, ptr %l54
  br label %bb13
bb12:
  store i1 false, ptr %l52, !tbaa !21
  br label %bb14
bb13:
  %t37 = load i64, ptr %l54, !tbaa !24
  %t38 = icmp sle i64 %t37, 4
  store i1 %t38, ptr %l52, !tbaa !21
  br label %bb14
bb14:
  %t40 = load i1, ptr %l52, !tbaa !21
  store i1 %t40, ptr %l9, !tbaa !21
  store ptr %l5, ptr %l10, !tbaa !29
  store i64 0, ptr %l11, !tbaa !24
  br label %bb15
bb15:
  store %olang.scope zeroinitializer, ptr %s3
  %t42 = load i64, ptr %l11, !tbaa !24
  store i64 %t42, ptr %l57, !tbaa !24
  %t43 = load ptr, ptr %l10, !tbaa !29
  %t45 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcabi_3aScalar_3e_2eLen_3ccompiler_2fcabi_3aScalar_3e(ptr %s0, ptr %t43)
  store i64 %t45, ptr %l59
  br label %bb16
bb16:
  %t46 = load i64, ptr %l57, !tbaa !24
  %t47 = load i64, ptr %l59, !tbaa !24
  %t48 = icmp slt i64 %t46, %t47
  %t50 = xor i1 %t48, true
  br i1 %t50, label %bb17, label %bb18
bb17:
  call void @__olang_scope_close(ptr %s3)
  br label %bb29
bb18:
  br label %bb19
bb19:
  %t52 = load ptr, ptr %l10, !tbaa !29
  %t53 = load i64, ptr %l11, !tbaa !24
  %t56 = call %"compiler/cabi:Scalar" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcabi_3aScalar_3e_2eAt_3ccompiler_2fcabi_3aScalar_3e(ptr %s0, ptr %s0, ptr %t52, i64 %t53)
  store %"compiler/cabi:Scalar" %t56, ptr %l64
  br label %bb20
bb20:
  %t57 = load %"compiler/cabi:Scalar", ptr %l64
  store %"compiler/cabi:Scalar" %t57, ptr %l12
  %t58 = getelementptr %"compiler/cabi:Scalar", ptr %l12, i32 0, i32 3
  %t59 = load i1, ptr %t58, !tbaa !21
  %t61 = xor i1 %t59, true
  br i1 %t61, label %bb21, label %bb22
bb21:
  store i1 true, ptr %l67, !tbaa !21
  br label %bb24
bb22:
  %t63 = getelementptr %"compiler/cabi:Scalar", ptr %l12, i32 0, i32 1
  %t64 = load i64, ptr %t63, !tbaa !24
  store i64 %t64, ptr %l68, !tbaa !24
  %t66 = call %"compiler/cabi:Scalar" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcabi_3aScalar_3e_2eAt_3ccompiler_2fcabi_3aScalar_3e(ptr %s0, ptr %s3, ptr %l5, i64 0)
  store %"compiler/cabi:Scalar" %t66, ptr %l70
  br label %bb23
bb23:
  %t67 = getelementptr %"compiler/cabi:Scalar", ptr %l70, i32 0, i32 1
  %t68 = load i64, ptr %t67, !tbaa !24
  %t69 = load i64, ptr %l68, !tbaa !24
  %t71 = icmp ne i64 %t69, %t68
  store i1 %t71, ptr %l67, !tbaa !21
  br label %bb24
bb24:
  %t73 = load i1, ptr %l67, !tbaa !21
  br i1 %t73, label %bb25, label %bb26
bb25:
  store i1 false, ptr %l9, !tbaa !21
  br label %bb27
bb26:
  br label %bb27
bb27:
  call void @__olang_scope_close(ptr %s3)
  br label %bb28
bb28:
  %t74 = load i64, ptr %l11, !tbaa !24
  %t76 = add i64 %t74, 1
  store i64 %t76, ptr %l11, !tbaa !24
  br label %bb15
bb29:
  %t78 = load i1, ptr %l9, !tbaa !21
  br i1 %t78, label %bb30, label %bb31
bb30:
  store %olang.scope zeroinitializer, ptr %s6
  %t81 = call %"compiler/cabi:Scalar" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcabi_3aScalar_3e_2eAt_3ccompiler_2fcabi_3aScalar_3e(ptr %s0, ptr %s0, ptr %l5, i64 0)
  store %"compiler/cabi:Scalar" %t81, ptr %l77
  br label %bb32
bb31:
  br label %bb86
bb32:
  %t82 = getelementptr %"compiler/cabi:Scalar", ptr %l77, i32 0, i32 2
  %t83 = load { i64, ptr }, ptr %t82, !tbaa !27
  store { i64, ptr } %t83, ptr %l13, !tbaa !27
  %t85 = load i1, ptr %l3, !tbaa !21
  br i1 %t85, label %bb33, label %bb34
bb33:
  store %olang.scope zeroinitializer, ptr %s7
  %t87 = call %"std/prelude/text:StringBuilder" @std_2fprelude_2ftext_3aStringBuilder_2ector(ptr %s7)
  store %"std/prelude/text:StringBuilder" %t87, ptr %l80
  br label %bb35
bb34:
  %t88 = load ptr, ptr %lp6
  store ptr %t88, ptr %l122, !tbaa !29
  %t89 = ptrtoint ptr %v2 to i64
  store i64 %t89, ptr %l123, !tbaa !24
  %t90 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1
  br i1 %t90, label %bb60, label %bb61
bb35:
  %t92 = load %"std/prelude/text:StringBuilder", ptr %l80
  store %"std/prelude/text:StringBuilder" %t92, ptr %l14
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s7, ptr %s7, ptr %l14, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d14, i32 0, i32 1) })
  br label %bb36
bb36:
  store i64 0, ptr %l15, !tbaa !24
  %t95 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcabi_3aScalar_3e_2eLen_3ccompiler_2fcabi_3aScalar_3e(ptr %s0, ptr %l5)
  store i64 %t95, ptr %l83
  br label %bb37
bb37:
  %t96 = load i64, ptr %l83, !tbaa !24
  store i64 %t96, ptr %l16, !tbaa !24
  store i64 1, ptr %l17, !tbaa !24
  %t97 = load i64, ptr %l16, !tbaa !24
  %t98 = load i64, ptr %l15, !tbaa !24
  %t101 = icmp sgt i64 %t97, %t98
  br i1 %t101, label %bb38, label %bb39
bb38:
  %t103 = load i64, ptr %l17, !tbaa !24
  %t105 = icmp sgt i64 %t103, 0
  br i1 %t105, label %bb40, label %bb41
bb39:
  store i64 0, ptr %l87, !tbaa !24
  br label %bb43
bb40:
  %t107 = load i64, ptr %l16, !tbaa !24
  %t108 = load i64, ptr %l15, !tbaa !24
  %t111 = sub i64 %t107, %t108
  %t112 = load i64, ptr %l17, !tbaa !24
  %t115 = add i64 %t111, %t112
  %t117 = sub i64 %t115, 1
  %t118 = load i64, ptr %l17, !tbaa !24
  %t121 = sdiv i64 %t117, %t118
  store i64 %t121, ptr %l90, !tbaa !24
  br label %bb42
bb41:
  store i64 0, ptr %l90, !tbaa !24
  br label %bb42
bb42:
  %t123 = load i64, ptr %l90, !tbaa !24
  store i64 %t123, ptr %l87, !tbaa !24
  br label %bb43
bb43:
  %t124 = load i64, ptr %l87, !tbaa !24
  store i64 %t124, ptr %l18, !tbaa !24
  store i64 0, ptr %l19, !tbaa !24
  br label %bb44
bb44:
  %t125 = load i64, ptr %l19, !tbaa !24
  %t126 = load i64, ptr %l18, !tbaa !24
  %t129 = icmp slt i64 %t125, %t126
  %t131 = xor i1 %t129, true
  br i1 %t131, label %bb45, label %bb46
bb45:
  br label %bb54
bb46:
  br label %bb47
bb47:
  %t133 = load i64, ptr %l15, !tbaa !24
  %t134 = load i64, ptr %l19, !tbaa !24
  %t135 = load i64, ptr %l17, !tbaa !24
  %t138 = mul i64 %t134, %t135
  %t141 = add i64 %t133, %t138
  %t145 = icmp sgt i64 %t141, 0
  br i1 %t145, label %bb48, label %bb49
bb48:
  store %olang.scope zeroinitializer, ptr %s10
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s7, ptr %s10, ptr %l14, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d15, i32 0, i32 1) })
  br label %bb50
bb49:
  br label %bb51
bb50:
  call void @__olang_scope_close(ptr %s10)
  br label %bb51
bb51:
  %t148 = load { i64, ptr }, ptr %l13, !tbaa !27
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s7, ptr %s0, ptr %l14, { i64, ptr } %t148)
  br label %bb52
bb52:
  br label %bb53
bb53:
  %t151 = load i64, ptr %l19, !tbaa !24
  %t153 = add i64 %t151, 1
  store i64 %t153, ptr %l19, !tbaa !24
  br label %bb44
bb54:
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s7, ptr %s7, ptr %l14, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d16, i32 0, i32 1) })
  br label %bb55
bb55:
  %t156 = load ptr, ptr %lp6
  store ptr %t156, ptr %l116, !tbaa !29
  %t157 = ptrtoint ptr %v2 to i64
  store i64 %t157, ptr %l117, !tbaa !24
  %t158 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1
  br i1 %t158, label %bb56, label %bb57
bb56:
  %t160 = call ptr @__olang_region_make(ptr %v2)
  %t161 = ptrtoint ptr %t160 to i64
  store i64 %t161, ptr %l117, !tbaa !24
  br label %bb57
bb57:
  %t162 = load i64, ptr %l117
  %t163 = inttoptr i64 %t162 to ptr
  %t165 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %s7, ptr %t163, ptr %l14)
  store { i64, ptr } %t165, ptr %l120
  br label %bb58
bb58:
  %t166 = load { i64, ptr }, ptr %l120, !tbaa !27
  %t167 = load i64, ptr %l117
  %t168 = inttoptr i64 %t167 to ptr
  %t169 = extractvalue { i64, ptr } %t166, 0
  %t170 = extractvalue { i64, ptr } %t166, 1
  %t171 = mul i64 %t169, 1
  %t172 = call ptr @__olang_scope_alloc(ptr %t168, i64 %t171)
  call void @llvm.memcpy.p0.p0.i64(ptr %t172, ptr %t170, i64 %t171, i1 false)
  %t173 = insertvalue { i64, ptr } undef, i64 %t169, 0
  %t174 = insertvalue { i64, ptr } %t173, ptr %t172, 1
  %t175 = load ptr, ptr %l116, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v2, ptr %v2, ptr %t175, { i64, ptr } %t174)
  br label %bb59
bb59:
  call void @__olang_scope_close(ptr %s7)
  br label %bb64
bb60:
  %t177 = call ptr @__olang_region_make(ptr %v2)
  %t178 = ptrtoint ptr %t177 to i64
  store i64 %t178, ptr %l123, !tbaa !24
  br label %bb61
bb61:
  %t180 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcabi_3aScalar_3e_2eLen_3ccompiler_2fcabi_3aScalar_3e(ptr %s0, ptr %l5)
  store i64 %t180, ptr %l126
  br label %bb62
bb62:
  %t181 = load { i64, ptr }, ptr %l13, !tbaa !27
  %t182 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d17, i32 0, i32 1) }, 1
  %t183 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d17, i32 0, i32 1) }, 0
  %t184 = load i64, ptr %l126, !tbaa !24
  %t185 = call i64 @__olang_fmt_i64(ptr null, i64 %t184)
  %t186 = add i64 %t183, %t185
  %t187 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d18, i32 0, i32 1) }, 1
  %t188 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d18, i32 0, i32 1) }, 0
  %t189 = add i64 %t186, %t188
  %t191 = extractvalue { i64, ptr } %t181, 1
  %t192 = extractvalue { i64, ptr } %t181, 0
  %t193 = add i64 %t189, %t192
  %t194 = extractvalue { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d19, i32 0, i32 1) }, 1
  %t195 = extractvalue { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d19, i32 0, i32 1) }, 0
  %t196 = add i64 %t193, %t195
  %t197 = load i64, ptr %l123
  %t198 = inttoptr i64 %t197 to ptr
  %t199 = call ptr @__olang_scope_alloc(ptr %t198, i64 %t196)
  call void @olang_textcopy(ptr %t199, ptr %t182, i64 %t183)
  %t200 = getelementptr i8, ptr %t199, i64 %t183
  %t201 = call i64 @__olang_fmt_i64(ptr %t200, i64 %t184)
  %t202 = getelementptr i8, ptr %t200, i64 %t185
  call void @olang_textcopy(ptr %t202, ptr %t187, i64 %t188)
  %t203 = getelementptr i8, ptr %t202, i64 %t188
  call void @olang_textcopy(ptr %t203, ptr %t191, i64 %t192)
  %t204 = getelementptr i8, ptr %t203, i64 %t192
  call void @olang_textcopy(ptr %t204, ptr %t194, i64 %t195)
  %t205 = insertvalue { i64, ptr } undef, i64 %t196, 0
  %t206 = insertvalue { i64, ptr } %t205, ptr %t199, 1
  %t208 = load i64, ptr %l123
  %t209 = inttoptr i64 %t208 to ptr
  %t210 = extractvalue { i64, ptr } %t206, 0
  %t211 = extractvalue { i64, ptr } %t206, 1
  %t212 = mul i64 %t210, 1
  %t213 = call ptr @__olang_scope_alloc(ptr %t209, i64 %t212)
  call void @llvm.memcpy.p0.p0.i64(ptr %t213, ptr %t211, i64 %t212, i1 false)
  %t214 = insertvalue { i64, ptr } undef, i64 %t210, 0
  %t215 = insertvalue { i64, ptr } %t214, ptr %t213, 1
  %t216 = load ptr, ptr %l122, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v2, ptr %v2, ptr %t216, { i64, ptr } %t215)
  br label %bb63
bb63:
  br label %bb64
bb64:
  %t218 = load ptr, ptr %lp7
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v2, ptr %t218, i64 0)
  br label %bb65
bb65:
  %t220 = load ptr, ptr %lp8
  store ptr %t220, ptr %l131, !tbaa !29
  %t222 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcabi_3aScalar_3e_2eLen_3ccompiler_2fcabi_3aScalar_3e(ptr %s0, ptr %l5)
  store i64 %t222, ptr %l133
  br label %bb66
bb66:
  %t224 = call %"compiler/cabi:Scalar" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcabi_3aScalar_3e_2eAt_3ccompiler_2fcabi_3aScalar_3e(ptr %s0, ptr %s6, ptr %l5, i64 0)
  store %"compiler/cabi:Scalar" %t224, ptr %l135
  br label %bb67
bb67:
  %t225 = getelementptr %"compiler/cabi:Scalar", ptr %l135, i32 0, i32 1
  %t226 = load i64, ptr %t225, !tbaa !24
  %t227 = load i64, ptr %l133, !tbaa !24
  %t229 = mul i64 %t227, %t226
  %t230 = load ptr, ptr %l131, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v2, ptr %t230, i64 %t229)
  br label %bb68
bb68:
  store i32 1, ptr %l138
  %t232 = ptrtoint ptr %v2 to i64
  store i64 %t232, ptr %l139, !tbaa !24
  %t233 = load i1, ptr @olang_2esole_2ecompiler_2fcabi_3aWay_2e1
  br i1 %t233, label %bb69, label %bb70
bb69:
  %t235 = call ptr @__olang_region_make(ptr %v2)
  %t236 = ptrtoint ptr %t235 to i64
  store i64 %t236, ptr %l139, !tbaa !24
  br label %bb70
bb70:
  %t237 = load ptr, ptr %lp6
  %t238 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t237
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t238, ptr %l141
  %t239 = load i64, ptr %l139
  %t240 = inttoptr i64 %t239 to ptr
  %t242 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e(ptr %t240, ptr %l141)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t242, ptr %l143
  br label %bb71
bb71:
  %t243 = load i1, ptr @olang_2esole_2ecompiler_2fcabi_3aWay_2e1
  br i1 %t243, label %bb72, label %bb73
bb72:
  %t245 = load i64, ptr %l139
  %t246 = inttoptr i64 %t245 to ptr
  %t247 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l143, i32 0, i32 0
  %t248 = load { i64, ptr }, ptr %t247
  %t249 = extractvalue { i64, ptr } %t248, 1
  %t250 = call ptr @__olang_region_or(ptr %t249, ptr null)
  %t251 = icmp ne ptr %t250, null
  %t252 = select i1 %t251, ptr %t250, ptr null
  %t253 = icmp eq ptr %t252, %t246
  call void @__olang_region_settle(ptr %t246, i1 %t253)
  br label %bb73
bb73:
  %t254 = ptrtoint ptr %v2 to i64
  store i64 %t254, ptr %l145, !tbaa !24
  %t255 = load i1, ptr @olang_2esole_2ecompiler_2fcabi_3aWay_2e2
  br i1 %t255, label %bb74, label %bb75
bb74:
  %t257 = call ptr @__olang_region_make(ptr %v2)
  %t258 = ptrtoint ptr %t257 to i64
  store i64 %t258, ptr %l145, !tbaa !24
  br label %bb75
bb75:
  %t259 = load ptr, ptr %lp7
  %t260 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t259
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t260, ptr %l147
  %t261 = load i64, ptr %l145
  %t262 = inttoptr i64 %t261 to ptr
  %t264 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cI64_3e(ptr %t262, ptr %l147)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t264, ptr %l149
  br label %bb76
bb76:
  %t265 = load i1, ptr @olang_2esole_2ecompiler_2fcabi_3aWay_2e2
  br i1 %t265, label %bb77, label %bb78
bb77:
  %t267 = load i64, ptr %l145
  %t268 = inttoptr i64 %t267 to ptr
  %t269 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l149, i32 0, i32 0
  %t270 = load { i64, ptr }, ptr %t269
  %t271 = extractvalue { i64, ptr } %t270, 1
  %t272 = call ptr @__olang_region_or(ptr %t271, ptr null)
  %t273 = icmp ne ptr %t272, null
  %t274 = select i1 %t273, ptr %t272, ptr null
  %t275 = icmp eq ptr %t274, %t268
  call void @__olang_region_settle(ptr %t268, i1 %t275)
  br label %bb78
bb78:
  %t276 = ptrtoint ptr %v2 to i64
  store i64 %t276, ptr %l151, !tbaa !24
  %t277 = load i1, ptr @olang_2esole_2ecompiler_2fcabi_3aWay_2e3
  br i1 %t277, label %bb79, label %bb80
bb79:
  %t279 = call ptr @__olang_region_make(ptr %v2)
  %t280 = ptrtoint ptr %t279 to i64
  store i64 %t280, ptr %l151, !tbaa !24
  br label %bb80
bb80:
  %t281 = load ptr, ptr %lp8
  %t282 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t281
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t282, ptr %l153
  %t283 = load i64, ptr %l151
  %t284 = inttoptr i64 %t283 to ptr
  %t286 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cI64_3e(ptr %t284, ptr %l153)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t286, ptr %l155
  br label %bb81
bb81:
  %t287 = load i1, ptr @olang_2esole_2ecompiler_2fcabi_3aWay_2e3
  br i1 %t287, label %bb82, label %bb83
bb82:
  %t289 = load i64, ptr %l151
  %t290 = inttoptr i64 %t289 to ptr
  %t291 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l155, i32 0, i32 0
  %t292 = load { i64, ptr }, ptr %t291
  %t293 = extractvalue { i64, ptr } %t292, 1
  %t294 = call ptr @__olang_region_or(ptr %t293, ptr null)
  %t295 = icmp ne ptr %t294, null
  %t296 = select i1 %t295, ptr %t294, ptr null
  %t297 = icmp eq ptr %t296, %t290
  call void @__olang_region_settle(ptr %t290, i1 %t297)
  br label %bb83
bb83:
  %t298 = load i32, ptr %l138, !range !{i32 0, i32 5}
  %t299 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l143
  %t300 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l149
  %t301 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l155
  %t302 = call %"compiler/cabi:Way" @compiler_2fcabi_3aWay_2ector(ptr %v2, ptr %v2, ptr %v2, ptr %v2, ptr %v2, i32 %t298, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t299, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t300, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t301, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d20, i32 0, i32 1) })
  store %"compiler/cabi:Way" %t302, ptr %l157
  br label %bb84
bb84:
  %t304 = call %"compiler/cabi:Way" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2fcabi_3aWay(ptr %v2, ptr %l157)
  store %"compiler/cabi:Way" %t304, ptr %l159
  br label %bb85
bb85:
  call void @__olang_scope_close(ptr %s6)
  call void @__olang_scope_close(ptr %s0)
  %t305 = load %"compiler/cabi:Way", ptr %l159
  store %"compiler/cabi:Way" %t305, ptr %rv
  br label %ret
bb86:
  %t306 = load i64, ptr %l4, !tbaa !24
  %t308 = icmp sgt i64 %t306, 16
  br i1 %t308, label %bb87, label %bb88
bb87:
  %t310 = load i1, ptr %l3, !tbaa !21
  br i1 %t310, label %bb89, label %bb90
bb88:
  br label %bb109
bb89:
  store i32 4, ptr %l163
  br label %bb91
bb90:
  store i32 3, ptr %l163
  br label %bb91
bb91:
  %t314 = ptrtoint ptr %v2 to i64
  store i64 %t314, ptr %l166, !tbaa !24
  %t315 = load i1, ptr @olang_2esole_2ecompiler_2fcabi_3aWay_2e1
  br i1 %t315, label %bb92, label %bb93
bb92:
  %t317 = call ptr @__olang_region_make(ptr %v2)
  %t318 = ptrtoint ptr %t317 to i64
  store i64 %t318, ptr %l166, !tbaa !24
  br label %bb93
bb93:
  %t319 = load ptr, ptr %lp6
  %t320 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t319
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t320, ptr %l168
  %t321 = load i64, ptr %l166
  %t322 = inttoptr i64 %t321 to ptr
  %t324 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e(ptr %t322, ptr %l168)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t324, ptr %l170
  br label %bb94
bb94:
  %t325 = load i1, ptr @olang_2esole_2ecompiler_2fcabi_3aWay_2e1
  br i1 %t325, label %bb95, label %bb96
bb95:
  %t327 = load i64, ptr %l166
  %t328 = inttoptr i64 %t327 to ptr
  %t329 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l170, i32 0, i32 0
  %t330 = load { i64, ptr }, ptr %t329
  %t331 = extractvalue { i64, ptr } %t330, 1
  %t332 = call ptr @__olang_region_or(ptr %t331, ptr null)
  %t333 = icmp ne ptr %t332, null
  %t334 = select i1 %t333, ptr %t332, ptr null
  %t335 = icmp eq ptr %t334, %t328
  call void @__olang_region_settle(ptr %t328, i1 %t335)
  br label %bb96
bb96:
  %t336 = ptrtoint ptr %v2 to i64
  store i64 %t336, ptr %l172, !tbaa !24
  %t337 = load i1, ptr @olang_2esole_2ecompiler_2fcabi_3aWay_2e2
  br i1 %t337, label %bb97, label %bb98
bb97:
  %t339 = call ptr @__olang_region_make(ptr %v2)
  %t340 = ptrtoint ptr %t339 to i64
  store i64 %t340, ptr %l172, !tbaa !24
  br label %bb98
bb98:
  %t341 = load ptr, ptr %lp7
  %t342 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t341
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t342, ptr %l174
  %t343 = load i64, ptr %l172
  %t344 = inttoptr i64 %t343 to ptr
  %t346 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cI64_3e(ptr %t344, ptr %l174)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t346, ptr %l176
  br label %bb99
bb99:
  %t347 = load i1, ptr @olang_2esole_2ecompiler_2fcabi_3aWay_2e2
  br i1 %t347, label %bb100, label %bb101
bb100:
  %t349 = load i64, ptr %l172
  %t350 = inttoptr i64 %t349 to ptr
  %t351 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l176, i32 0, i32 0
  %t352 = load { i64, ptr }, ptr %t351
  %t353 = extractvalue { i64, ptr } %t352, 1
  %t354 = call ptr @__olang_region_or(ptr %t353, ptr null)
  %t355 = icmp ne ptr %t354, null
  %t356 = select i1 %t355, ptr %t354, ptr null
  %t357 = icmp eq ptr %t356, %t350
  call void @__olang_region_settle(ptr %t350, i1 %t357)
  br label %bb101
bb101:
  %t358 = ptrtoint ptr %v2 to i64
  store i64 %t358, ptr %l178, !tbaa !24
  %t359 = load i1, ptr @olang_2esole_2ecompiler_2fcabi_3aWay_2e3
  br i1 %t359, label %bb102, label %bb103
bb102:
  %t361 = call ptr @__olang_region_make(ptr %v2)
  %t362 = ptrtoint ptr %t361 to i64
  store i64 %t362, ptr %l178, !tbaa !24
  br label %bb103
bb103:
  %t363 = load ptr, ptr %lp8
  %t364 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t363
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t364, ptr %l180
  %t365 = load i64, ptr %l178
  %t366 = inttoptr i64 %t365 to ptr
  %t368 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cI64_3e(ptr %t366, ptr %l180)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t368, ptr %l182
  br label %bb104
bb104:
  %t369 = load i1, ptr @olang_2esole_2ecompiler_2fcabi_3aWay_2e3
  br i1 %t369, label %bb105, label %bb106
bb105:
  %t371 = load i64, ptr %l178
  %t372 = inttoptr i64 %t371 to ptr
  %t373 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l182, i32 0, i32 0
  %t374 = load { i64, ptr }, ptr %t373
  %t375 = extractvalue { i64, ptr } %t374, 1
  %t376 = call ptr @__olang_region_or(ptr %t375, ptr null)
  %t377 = icmp ne ptr %t376, null
  %t378 = select i1 %t377, ptr %t376, ptr null
  %t379 = icmp eq ptr %t378, %t372
  call void @__olang_region_settle(ptr %t372, i1 %t379)
  br label %bb106
bb106:
  %t380 = load i32, ptr %l163, !range !{i32 0, i32 5}
  %t381 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l170
  %t382 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l176
  %t383 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l182
  %t384 = call %"compiler/cabi:Way" @compiler_2fcabi_3aWay_2ector(ptr %v2, ptr %v2, ptr %v2, ptr %v2, ptr %v2, i32 %t380, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t381, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t382, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t383, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d21, i32 0, i32 1) })
  store %"compiler/cabi:Way" %t384, ptr %l184
  br label %bb107
bb107:
  %t386 = call %"compiler/cabi:Way" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2fcabi_3aWay(ptr %v2, ptr %l184)
  store %"compiler/cabi:Way" %t386, ptr %l186
  br label %bb108
bb108:
  call void @__olang_scope_close(ptr %s0)
  %t387 = load %"compiler/cabi:Way", ptr %l186
  store %"compiler/cabi:Way" %t387, ptr %rv
  br label %ret
bb109:
  %t388 = load i64, ptr %l4, !tbaa !24
  %t390 = icmp sle i64 %t388, 8
  br i1 %t390, label %bb110, label %bb111
bb110:
  %t392 = load ptr, ptr %lp6
  store ptr %t392, ptr %l189, !tbaa !29
  %t393 = ptrtoint ptr %v2 to i64
  store i64 %t393, ptr %l190, !tbaa !24
  %t394 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1
  br i1 %t394, label %bb112, label %bb113
bb111:
  %t396 = load ptr, ptr %lp6
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v2, ptr %v2, ptr %t396, { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d22, i32 0, i32 1) })
  br label %bb122
bb112:
  %t398 = call ptr @__olang_region_make(ptr %v2)
  %t399 = ptrtoint ptr %t398 to i64
  store i64 %t399, ptr %l190, !tbaa !24
  br label %bb113
bb113:
  %t400 = load i1, ptr %l3, !tbaa !21
  br i1 %t400, label %bb114, label %bb115
bb114:
  %t402 = load i64, ptr %l4, !tbaa !24
  %t404 = mul i64 %t402, 8
  %t405 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d23, i32 0, i32 1) }, 1
  %t406 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d23, i32 0, i32 1) }, 0
  %t408 = call i64 @__olang_fmt_i64(ptr null, i64 %t404)
  %t409 = add i64 %t406, %t408
  %t410 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t409)
  call void @olang_textcopy(ptr %t410, ptr %t405, i64 %t406)
  %t411 = getelementptr i8, ptr %t410, i64 %t406
  %t412 = call i64 @__olang_fmt_i64(ptr %t411, i64 %t404)
  %t413 = insertvalue { i64, ptr } undef, i64 %t409, 0
  %t414 = insertvalue { i64, ptr } %t413, ptr %t410, 1
  store { i64, ptr } %t414, ptr %l193, !tbaa !27
  br label %bb116
bb115:
  store { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d24, i32 0, i32 1) }, ptr %l197, !tbaa !27
  %t416 = load { i64, ptr }, ptr %l197, !tbaa !27
  store { i64, ptr } %t416, ptr %l193, !tbaa !27
  br label %bb116
bb116:
  %t418 = load { i64, ptr }, ptr %l193, !tbaa !27
  %t419 = load i64, ptr %l190
  %t420 = inttoptr i64 %t419 to ptr
  %t421 = extractvalue { i64, ptr } %t418, 0
  %t422 = extractvalue { i64, ptr } %t418, 1
  %t423 = mul i64 %t421, 1
  %t424 = call ptr @__olang_scope_alloc(ptr %t420, i64 %t423)
  call void @llvm.memcpy.p0.p0.i64(ptr %t424, ptr %t422, i64 %t423, i1 false)
  %t425 = insertvalue { i64, ptr } undef, i64 %t421, 0
  %t426 = insertvalue { i64, ptr } %t425, ptr %t424, 1
  %t427 = load ptr, ptr %l189, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v2, ptr %v2, ptr %t427, { i64, ptr } %t426)
  br label %bb117
bb117:
  %t429 = load ptr, ptr %lp8
  store ptr %t429, ptr %l200, !tbaa !29
  %t430 = load i1, ptr %l3, !tbaa !21
  br i1 %t430, label %bb118, label %bb119
bb118:
  %t432 = load i64, ptr %l4, !tbaa !24
  store i64 %t432, ptr %l202, !tbaa !24
  br label %bb120
bb119:
  store i64 8, ptr %l202, !tbaa !24
  br label %bb120
bb120:
  %t434 = load ptr, ptr %l200, !tbaa !29
  %t435 = load i64, ptr %l202, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v2, ptr %t434, i64 %t435)
  br label %bb121
bb121:
  br label %bb124
bb122:
  %t436 = load ptr, ptr %lp8
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v2, ptr %t436, i64 16)
  br label %bb123
bb123:
  br label %bb124
bb124:
  %t438 = load ptr, ptr %lp7
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v2, ptr %t438, i64 0)
  br label %bb125
bb125:
  store i32 1, ptr %l207
  %t440 = ptrtoint ptr %v2 to i64
  store i64 %t440, ptr %l208, !tbaa !24
  %t441 = load i1, ptr @olang_2esole_2ecompiler_2fcabi_3aWay_2e1
  br i1 %t441, label %bb126, label %bb127
bb126:
  %t443 = call ptr @__olang_region_make(ptr %v2)
  %t444 = ptrtoint ptr %t443 to i64
  store i64 %t444, ptr %l208, !tbaa !24
  br label %bb127
bb127:
  %t445 = load ptr, ptr %lp6
  %t446 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t445
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t446, ptr %l210
  %t447 = load i64, ptr %l208
  %t448 = inttoptr i64 %t447 to ptr
  %t450 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e(ptr %t448, ptr %l210)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t450, ptr %l212
  br label %bb128
bb128:
  %t451 = load i1, ptr @olang_2esole_2ecompiler_2fcabi_3aWay_2e1
  br i1 %t451, label %bb129, label %bb130
bb129:
  %t453 = load i64, ptr %l208
  %t454 = inttoptr i64 %t453 to ptr
  %t455 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l212, i32 0, i32 0
  %t456 = load { i64, ptr }, ptr %t455
  %t457 = extractvalue { i64, ptr } %t456, 1
  %t458 = call ptr @__olang_region_or(ptr %t457, ptr null)
  %t459 = icmp ne ptr %t458, null
  %t460 = select i1 %t459, ptr %t458, ptr null
  %t461 = icmp eq ptr %t460, %t454
  call void @__olang_region_settle(ptr %t454, i1 %t461)
  br label %bb130
bb130:
  %t462 = ptrtoint ptr %v2 to i64
  store i64 %t462, ptr %l214, !tbaa !24
  %t463 = load i1, ptr @olang_2esole_2ecompiler_2fcabi_3aWay_2e2
  br i1 %t463, label %bb131, label %bb132
bb131:
  %t465 = call ptr @__olang_region_make(ptr %v2)
  %t466 = ptrtoint ptr %t465 to i64
  store i64 %t466, ptr %l214, !tbaa !24
  br label %bb132
bb132:
  %t467 = load ptr, ptr %lp7
  %t468 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t467
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t468, ptr %l216
  %t469 = load i64, ptr %l214
  %t470 = inttoptr i64 %t469 to ptr
  %t472 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cI64_3e(ptr %t470, ptr %l216)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t472, ptr %l218
  br label %bb133
bb133:
  %t473 = load i1, ptr @olang_2esole_2ecompiler_2fcabi_3aWay_2e2
  br i1 %t473, label %bb134, label %bb135
bb134:
  %t475 = load i64, ptr %l214
  %t476 = inttoptr i64 %t475 to ptr
  %t477 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l218, i32 0, i32 0
  %t478 = load { i64, ptr }, ptr %t477
  %t479 = extractvalue { i64, ptr } %t478, 1
  %t480 = call ptr @__olang_region_or(ptr %t479, ptr null)
  %t481 = icmp ne ptr %t480, null
  %t482 = select i1 %t481, ptr %t480, ptr null
  %t483 = icmp eq ptr %t482, %t476
  call void @__olang_region_settle(ptr %t476, i1 %t483)
  br label %bb135
bb135:
  %t484 = ptrtoint ptr %v2 to i64
  store i64 %t484, ptr %l220, !tbaa !24
  %t485 = load i1, ptr @olang_2esole_2ecompiler_2fcabi_3aWay_2e3
  br i1 %t485, label %bb136, label %bb137
bb136:
  %t487 = call ptr @__olang_region_make(ptr %v2)
  %t488 = ptrtoint ptr %t487 to i64
  store i64 %t488, ptr %l220, !tbaa !24
  br label %bb137
bb137:
  %t489 = load ptr, ptr %lp8
  %t490 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t489
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t490, ptr %l222
  %t491 = load i64, ptr %l220
  %t492 = inttoptr i64 %t491 to ptr
  %t494 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cI64_3e(ptr %t492, ptr %l222)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t494, ptr %l224
  br label %bb138
bb138:
  %t495 = load i1, ptr @olang_2esole_2ecompiler_2fcabi_3aWay_2e3
  br i1 %t495, label %bb139, label %bb140
bb139:
  %t497 = load i64, ptr %l220
  %t498 = inttoptr i64 %t497 to ptr
  %t499 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l224, i32 0, i32 0
  %t500 = load { i64, ptr }, ptr %t499
  %t501 = extractvalue { i64, ptr } %t500, 1
  %t502 = call ptr @__olang_region_or(ptr %t501, ptr null)
  %t503 = icmp ne ptr %t502, null
  %t504 = select i1 %t503, ptr %t502, ptr null
  %t505 = icmp eq ptr %t504, %t498
  call void @__olang_region_settle(ptr %t498, i1 %t505)
  br label %bb140
bb140:
  %t506 = load i32, ptr %l207, !range !{i32 0, i32 5}
  %t507 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l212
  %t508 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l218
  %t509 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l224
  %t510 = call %"compiler/cabi:Way" @compiler_2fcabi_3aWay_2ector(ptr %v2, ptr %v2, ptr %v2, ptr %v2, ptr %v2, i32 %t506, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t507, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t508, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t509, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d25, i32 0, i32 1) })
  store %"compiler/cabi:Way" %t510, ptr %l226
  br label %bb141
bb141:
  %t512 = call %"compiler/cabi:Way" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2fcabi_3aWay(ptr %v2, ptr %l226)
  store %"compiler/cabi:Way" %t512, ptr %l228
  br label %bb142
bb142:
  call void @__olang_scope_close(ptr %s0)
  %t513 = load %"compiler/cabi:Way", ptr %l228
  store %"compiler/cabi:Way" %t513, ptr %rv
  br label %ret
bb143:
  %t514 = load i64, ptr %l4, !tbaa !24
  %t516 = icmp sgt i64 %t514, 16
  br i1 %t516, label %bb144, label %bb145
bb144:
  store i1 true, ptr %l231, !tbaa !21
  br label %bb146
bb145:
  %t518 = load i64, ptr %l4, !tbaa !24
  %t520 = icmp eq i64 %t518, 0
  store i1 %t520, ptr %l231, !tbaa !21
  br label %bb146
bb146:
  %t522 = load i1, ptr %l231, !tbaa !21
  br i1 %t522, label %bb147, label %bb148
bb147:
  %t523 = load i1, ptr %l3, !tbaa !21
  br i1 %t523, label %bb149, label %bb150
bb148:
  br label %bb169
bb149:
  store i32 4, ptr %l235
  br label %bb151
bb150:
  store i32 2, ptr %l235
  br label %bb151
bb151:
  %t527 = ptrtoint ptr %v2 to i64
  store i64 %t527, ptr %l238, !tbaa !24
  %t528 = load i1, ptr @olang_2esole_2ecompiler_2fcabi_3aWay_2e1
  br i1 %t528, label %bb152, label %bb153
bb152:
  %t530 = call ptr @__olang_region_make(ptr %v2)
  %t531 = ptrtoint ptr %t530 to i64
  store i64 %t531, ptr %l238, !tbaa !24
  br label %bb153
bb153:
  %t532 = load ptr, ptr %lp6
  %t533 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t532
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t533, ptr %l240
  %t534 = load i64, ptr %l238
  %t535 = inttoptr i64 %t534 to ptr
  %t537 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e(ptr %t535, ptr %l240)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t537, ptr %l242
  br label %bb154
bb154:
  %t538 = load i1, ptr @olang_2esole_2ecompiler_2fcabi_3aWay_2e1
  br i1 %t538, label %bb155, label %bb156
bb155:
  %t540 = load i64, ptr %l238
  %t541 = inttoptr i64 %t540 to ptr
  %t542 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l242, i32 0, i32 0
  %t543 = load { i64, ptr }, ptr %t542
  %t544 = extractvalue { i64, ptr } %t543, 1
  %t545 = call ptr @__olang_region_or(ptr %t544, ptr null)
  %t546 = icmp ne ptr %t545, null
  %t547 = select i1 %t546, ptr %t545, ptr null
  %t548 = icmp eq ptr %t547, %t541
  call void @__olang_region_settle(ptr %t541, i1 %t548)
  br label %bb156
bb156:
  %t549 = ptrtoint ptr %v2 to i64
  store i64 %t549, ptr %l244, !tbaa !24
  %t550 = load i1, ptr @olang_2esole_2ecompiler_2fcabi_3aWay_2e2
  br i1 %t550, label %bb157, label %bb158
bb157:
  %t552 = call ptr @__olang_region_make(ptr %v2)
  %t553 = ptrtoint ptr %t552 to i64
  store i64 %t553, ptr %l244, !tbaa !24
  br label %bb158
bb158:
  %t554 = load ptr, ptr %lp7
  %t555 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t554
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t555, ptr %l246
  %t556 = load i64, ptr %l244
  %t557 = inttoptr i64 %t556 to ptr
  %t559 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cI64_3e(ptr %t557, ptr %l246)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t559, ptr %l248
  br label %bb159
bb159:
  %t560 = load i1, ptr @olang_2esole_2ecompiler_2fcabi_3aWay_2e2
  br i1 %t560, label %bb160, label %bb161
bb160:
  %t562 = load i64, ptr %l244
  %t563 = inttoptr i64 %t562 to ptr
  %t564 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l248, i32 0, i32 0
  %t565 = load { i64, ptr }, ptr %t564
  %t566 = extractvalue { i64, ptr } %t565, 1
  %t567 = call ptr @__olang_region_or(ptr %t566, ptr null)
  %t568 = icmp ne ptr %t567, null
  %t569 = select i1 %t568, ptr %t567, ptr null
  %t570 = icmp eq ptr %t569, %t563
  call void @__olang_region_settle(ptr %t563, i1 %t570)
  br label %bb161
bb161:
  %t571 = ptrtoint ptr %v2 to i64
  store i64 %t571, ptr %l250, !tbaa !24
  %t572 = load i1, ptr @olang_2esole_2ecompiler_2fcabi_3aWay_2e3
  br i1 %t572, label %bb162, label %bb163
bb162:
  %t574 = call ptr @__olang_region_make(ptr %v2)
  %t575 = ptrtoint ptr %t574 to i64
  store i64 %t575, ptr %l250, !tbaa !24
  br label %bb163
bb163:
  %t576 = load ptr, ptr %lp8
  %t577 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t576
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t577, ptr %l252
  %t578 = load i64, ptr %l250
  %t579 = inttoptr i64 %t578 to ptr
  %t581 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cI64_3e(ptr %t579, ptr %l252)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t581, ptr %l254
  br label %bb164
bb164:
  %t582 = load i1, ptr @olang_2esole_2ecompiler_2fcabi_3aWay_2e3
  br i1 %t582, label %bb165, label %bb166
bb165:
  %t584 = load i64, ptr %l250
  %t585 = inttoptr i64 %t584 to ptr
  %t586 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l254, i32 0, i32 0
  %t587 = load { i64, ptr }, ptr %t586
  %t588 = extractvalue { i64, ptr } %t587, 1
  %t589 = call ptr @__olang_region_or(ptr %t588, ptr null)
  %t590 = icmp ne ptr %t589, null
  %t591 = select i1 %t590, ptr %t589, ptr null
  %t592 = icmp eq ptr %t591, %t585
  call void @__olang_region_settle(ptr %t585, i1 %t592)
  br label %bb166
bb166:
  %t593 = load i32, ptr %l235, !range !{i32 0, i32 5}
  %t594 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l242
  %t595 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l248
  %t596 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l254
  %t597 = call %"compiler/cabi:Way" @compiler_2fcabi_3aWay_2ector(ptr %v2, ptr %v2, ptr %v2, ptr %v2, ptr %v2, i32 %t593, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t594, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t595, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t596, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d26, i32 0, i32 1) })
  store %"compiler/cabi:Way" %t597, ptr %l256
  br label %bb167
bb167:
  %t599 = call %"compiler/cabi:Way" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2fcabi_3aWay(ptr %v2, ptr %l256)
  store %"compiler/cabi:Way" %t599, ptr %l258
  br label %bb168
bb168:
  call void @__olang_scope_close(ptr %s0)
  %t600 = load %"compiler/cabi:Way", ptr %l258
  store %"compiler/cabi:Way" %t600, ptr %rv
  br label %ret
bb169:
  store i64 0, ptr %l21, !tbaa !24
  %t601 = load i64, ptr %l4, !tbaa !24
  %t603 = add i64 %t601, 7
  %t605 = sdiv i64 %t603, 8
  store i64 %t605, ptr %l22, !tbaa !24
  store i64 1, ptr %l23, !tbaa !24
  %t607 = load i64, ptr %l22, !tbaa !24
  %t608 = load i64, ptr %l21, !tbaa !24
  %t611 = icmp sgt i64 %t607, %t608
  br i1 %t611, label %bb170, label %bb171
bb170:
  %t613 = load i64, ptr %l23, !tbaa !24
  %t615 = icmp sgt i64 %t613, 0
  br i1 %t615, label %bb172, label %bb173
bb171:
  store i64 0, ptr %l265, !tbaa !24
  br label %bb175
bb172:
  %t617 = load i64, ptr %l22, !tbaa !24
  %t618 = load i64, ptr %l21, !tbaa !24
  %t621 = sub i64 %t617, %t618
  %t622 = load i64, ptr %l23, !tbaa !24
  %t625 = add i64 %t621, %t622
  %t627 = sub i64 %t625, 1
  %t628 = load i64, ptr %l23, !tbaa !24
  %t631 = sdiv i64 %t627, %t628
  store i64 %t631, ptr %l268, !tbaa !24
  br label %bb174
bb173:
  store i64 0, ptr %l268, !tbaa !24
  br label %bb174
bb174:
  %t633 = load i64, ptr %l268, !tbaa !24
  store i64 %t633, ptr %l265, !tbaa !24
  br label %bb175
bb175:
  %t634 = load i64, ptr %l265, !tbaa !24
  store i64 %t634, ptr %l24, !tbaa !24
  store i64 0, ptr %l25, !tbaa !24
  br label %bb176
bb176:
  store %olang.scope zeroinitializer, ptr %s20
  %t635 = load i64, ptr %l25, !tbaa !24
  %t636 = load i64, ptr %l24, !tbaa !24
  %t639 = icmp slt i64 %t635, %t636
  %t641 = xor i1 %t639, true
  br i1 %t641, label %bb177, label %bb178
bb177:
  call void @__olang_scope_close(ptr %s20)
  br label %bb209
bb178:
  br label %bb179
bb179:
  %t643 = load i64, ptr %l21, !tbaa !24
  %t644 = load i64, ptr %l25, !tbaa !24
  %t645 = load i64, ptr %l23, !tbaa !24
  %t648 = mul i64 %t644, %t645
  %t651 = add i64 %t643, %t648
  %t655 = mul i64 %t651, 8
  store i64 %t655, ptr %l27, !tbaa !24
  %t657 = load i64, ptr %l27, !tbaa !24
  %t659 = add i64 %t657, 8
  store i64 %t659, ptr %l28, !tbaa !24
  store i1 true, ptr %l29, !tbaa !21
  store i1 false, ptr %l30, !tbaa !21
  store ptr %l5, ptr %l31, !tbaa !29
  store i64 0, ptr %l32, !tbaa !24
  br label %bb180
bb180:
  %t662 = load i64, ptr %l32, !tbaa !24
  store i64 %t662, ptr %l291, !tbaa !24
  %t663 = load ptr, ptr %l31, !tbaa !29
  %t665 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcabi_3aScalar_3e_2eLen_3ccompiler_2fcabi_3aScalar_3e(ptr %s0, ptr %t663)
  store i64 %t665, ptr %l293
  br label %bb181
bb181:
  %t666 = load i64, ptr %l291, !tbaa !24
  %t667 = load i64, ptr %l293, !tbaa !24
  %t668 = icmp slt i64 %t666, %t667
  %t670 = xor i1 %t668, true
  br i1 %t670, label %bb182, label %bb183
bb182:
  br label %bb196
bb183:
  br label %bb184
bb184:
  %t672 = load ptr, ptr %l31, !tbaa !29
  %t673 = load i64, ptr %l32, !tbaa !24
  %t676 = call %"compiler/cabi:Scalar" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcabi_3aScalar_3e_2eAt_3ccompiler_2fcabi_3aScalar_3e(ptr %s0, ptr %s0, ptr %t672, i64 %t673)
  store %"compiler/cabi:Scalar" %t676, ptr %l298
  br label %bb185
bb185:
  %t677 = load %"compiler/cabi:Scalar", ptr %l298
  store %"compiler/cabi:Scalar" %t677, ptr %l33
  %t678 = getelementptr %"compiler/cabi:Scalar", ptr %l33, i32 0, i32 0
  %t679 = load i64, ptr %t678, !tbaa !24
  %t680 = load i64, ptr %l27, !tbaa !24
  %t683 = icmp sge i64 %t679, %t680
  br i1 %t683, label %bb186, label %bb187
bb186:
  %t685 = getelementptr %"compiler/cabi:Scalar", ptr %l33, i32 0, i32 0
  %t686 = load i64, ptr %t685, !tbaa !24
  %t687 = load i64, ptr %l28, !tbaa !24
  %t690 = icmp slt i64 %t686, %t687
  store i1 %t690, ptr %l302, !tbaa !21
  br label %bb188
bb187:
  store i1 false, ptr %l302, !tbaa !21
  br label %bb188
bb188:
  %t692 = load i1, ptr %l302, !tbaa !21
  br i1 %t692, label %bb189, label %bb190
bb189:
  store i1 true, ptr %l30, !tbaa !21
  %t693 = getelementptr %"compiler/cabi:Scalar", ptr %l33, i32 0, i32 3
  %t694 = load i1, ptr %t693, !tbaa !21
  %t696 = xor i1 %t694, true
  br i1 %t696, label %bb191, label %bb192
bb190:
  br label %bb194
bb191:
  store i1 false, ptr %l29, !tbaa !21
  br label %bb193
bb192:
  br label %bb193
bb193:
  br label %bb194
bb194:
  br label %bb195
bb195:
  %t698 = load i64, ptr %l32, !tbaa !24
  %t700 = add i64 %t698, 1
  store i64 %t700, ptr %l32, !tbaa !24
  br label %bb180
bb196:
  %t702 = load i1, ptr %l30, !tbaa !21
  %t704 = xor i1 %t702, true
  br i1 %t704, label %bb197, label %bb198
bb197:
  call void @__olang_scope_close(ptr %s20)
  br label %bb208
bb198:
  br label %bb199
bb199:
  %t706 = load i1, ptr %l29, !tbaa !21
  br i1 %t706, label %bb200, label %bb201
bb200:
  %t708 = load i64, ptr %l27, !tbaa !24
  %t711 = call { { i64, ptr }, i64 } @compiler_2fcabi_2esseAt(ptr %s0, ptr %s20, ptr %l5, i64 %t708)
  store { { i64, ptr }, i64 } %t711, ptr %l316
  br label %bb202
bb201:
  %t712 = load i64, ptr %l27, !tbaa !24
  %t713 = load i64, ptr %l4, !tbaa !24
  %t717 = call { { i64, ptr }, i64 } @compiler_2fcabi_2eintAt(ptr %s0, ptr %s20, ptr %l5, i64 %t712, i64 %t713)
  store { { i64, ptr }, i64 } %t717, ptr %l320
  br label %bb203
bb202:
  %t718 = load { { i64, ptr }, i64 }, ptr %l316
  store { { i64, ptr }, i64 } %t718, ptr %l313
  br label %bb204
bb203:
  %t719 = load { { i64, ptr }, i64 }, ptr %l320
  store { { i64, ptr }, i64 } %t719, ptr %l313
  br label %bb204
bb204:
  %t720 = load { { i64, ptr }, i64 }, ptr %l313
  store { { i64, ptr }, i64 } %t720, ptr %l34
  %t721 = getelementptr { { i64, ptr }, i64 }, ptr %l34, i32 0, i32 0
  %t722 = load { i64, ptr }, ptr %t721, !tbaa !27
  store { i64, ptr } %t722, ptr %l321, !tbaa !27
  %t723 = load { i64, ptr }, ptr %l321, !tbaa !27
  %t724 = extractvalue { i64, ptr } %t723, 0
  store i64 %t724, ptr %l322, !tbaa !24
  %t725 = load i64, ptr %l322, !tbaa !24
  %t726 = mul i64 %t725, 1
  %t727 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t726)
  %t728 = insertvalue { i64, ptr } undef, i64 %t725, 0
  %t729 = insertvalue { i64, ptr } %t728, ptr %t727, 1
  store { i64, ptr } %t729, ptr %l323, !tbaa !27
  %t730 = getelementptr { i64, ptr }, ptr %l323, i32 0, i32 1
  %t731 = load ptr, ptr %t730, !tbaa !27
  %t732 = getelementptr { i64, ptr }, ptr %l321, i32 0, i32 1
  %t733 = load ptr, ptr %t732, !tbaa !27
  %t734 = load i64, ptr %l322, !tbaa !24
  %t735 = mul i64 %t734, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t731, ptr %t733, i64 %t735, i1 false)
  %t736 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 16, i64 8)
  store ptr %t736, ptr %lp35
  %t737 = load { i64, ptr }, ptr %l323, !tbaa !27
  %t738 = load ptr, ptr %lp35
  store { i64, ptr } %t737, ptr %t738, !tbaa !27
  %t739 = getelementptr { { i64, ptr }, i64 }, ptr %l34, i32 0, i32 1
  %t740 = load i64, ptr %t739, !tbaa !24
  store i64 %t740, ptr %l36, !tbaa !24
  %t742 = load ptr, ptr %lp6
  %t743 = load ptr, ptr %lp35
  %t744 = load { i64, ptr }, ptr %t743, !tbaa !27
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v2, ptr %v2, ptr %t742, { i64, ptr } %t744)
  br label %bb205
bb205:
  %t747 = load ptr, ptr %lp7
  %t748 = load i64, ptr %l27, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v2, ptr %t747, i64 %t748)
  br label %bb206
bb206:
  %t751 = load ptr, ptr %lp8
  %t752 = load i64, ptr %l36, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v2, ptr %t751, i64 %t752)
  br label %bb207
bb207:
  call void @__olang_scope_close(ptr %s20)
  br label %bb208
bb208:
  %t755 = load i64, ptr %l25, !tbaa !24
  %t757 = add i64 %t755, 1
  store i64 %t757, ptr %l25, !tbaa !24
  br label %bb176
bb209:
  store i32 1, ptr %l333
  %t759 = ptrtoint ptr %v2 to i64
  store i64 %t759, ptr %l334, !tbaa !24
  %t760 = load i1, ptr @olang_2esole_2ecompiler_2fcabi_3aWay_2e1
  br i1 %t760, label %bb210, label %bb211
bb210:
  %t762 = call ptr @__olang_region_make(ptr %v2)
  %t763 = ptrtoint ptr %t762 to i64
  store i64 %t763, ptr %l334, !tbaa !24
  br label %bb211
bb211:
  %t764 = load ptr, ptr %lp6
  %t765 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t764
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t765, ptr %l336
  %t766 = load i64, ptr %l334
  %t767 = inttoptr i64 %t766 to ptr
  %t769 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e(ptr %t767, ptr %l336)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t769, ptr %l338
  br label %bb212
bb212:
  %t770 = load i1, ptr @olang_2esole_2ecompiler_2fcabi_3aWay_2e1
  br i1 %t770, label %bb213, label %bb214
bb213:
  %t772 = load i64, ptr %l334
  %t773 = inttoptr i64 %t772 to ptr
  %t774 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l338, i32 0, i32 0
  %t775 = load { i64, ptr }, ptr %t774
  %t776 = extractvalue { i64, ptr } %t775, 1
  %t777 = call ptr @__olang_region_or(ptr %t776, ptr null)
  %t778 = icmp ne ptr %t777, null
  %t779 = select i1 %t778, ptr %t777, ptr null
  %t780 = icmp eq ptr %t779, %t773
  call void @__olang_region_settle(ptr %t773, i1 %t780)
  br label %bb214
bb214:
  %t781 = ptrtoint ptr %v2 to i64
  store i64 %t781, ptr %l340, !tbaa !24
  %t782 = load i1, ptr @olang_2esole_2ecompiler_2fcabi_3aWay_2e2
  br i1 %t782, label %bb215, label %bb216
bb215:
  %t784 = call ptr @__olang_region_make(ptr %v2)
  %t785 = ptrtoint ptr %t784 to i64
  store i64 %t785, ptr %l340, !tbaa !24
  br label %bb216
bb216:
  %t786 = load ptr, ptr %lp7
  %t787 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t786
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t787, ptr %l342
  %t788 = load i64, ptr %l340
  %t789 = inttoptr i64 %t788 to ptr
  %t791 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cI64_3e(ptr %t789, ptr %l342)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t791, ptr %l344
  br label %bb217
bb217:
  %t792 = load i1, ptr @olang_2esole_2ecompiler_2fcabi_3aWay_2e2
  br i1 %t792, label %bb218, label %bb219
bb218:
  %t794 = load i64, ptr %l340
  %t795 = inttoptr i64 %t794 to ptr
  %t796 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l344, i32 0, i32 0
  %t797 = load { i64, ptr }, ptr %t796
  %t798 = extractvalue { i64, ptr } %t797, 1
  %t799 = call ptr @__olang_region_or(ptr %t798, ptr null)
  %t800 = icmp ne ptr %t799, null
  %t801 = select i1 %t800, ptr %t799, ptr null
  %t802 = icmp eq ptr %t801, %t795
  call void @__olang_region_settle(ptr %t795, i1 %t802)
  br label %bb219
bb219:
  %t803 = ptrtoint ptr %v2 to i64
  store i64 %t803, ptr %l346, !tbaa !24
  %t804 = load i1, ptr @olang_2esole_2ecompiler_2fcabi_3aWay_2e3
  br i1 %t804, label %bb220, label %bb221
bb220:
  %t806 = call ptr @__olang_region_make(ptr %v2)
  %t807 = ptrtoint ptr %t806 to i64
  store i64 %t807, ptr %l346, !tbaa !24
  br label %bb221
bb221:
  %t808 = load ptr, ptr %lp8
  %t809 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t808
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t809, ptr %l348
  %t810 = load i64, ptr %l346
  %t811 = inttoptr i64 %t810 to ptr
  %t813 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cI64_3e(ptr %t811, ptr %l348)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t813, ptr %l350
  br label %bb222
bb222:
  %t814 = load i1, ptr @olang_2esole_2ecompiler_2fcabi_3aWay_2e3
  br i1 %t814, label %bb223, label %bb224
bb223:
  %t816 = load i64, ptr %l346
  %t817 = inttoptr i64 %t816 to ptr
  %t818 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l350, i32 0, i32 0
  %t819 = load { i64, ptr }, ptr %t818
  %t820 = extractvalue { i64, ptr } %t819, 1
  %t821 = call ptr @__olang_region_or(ptr %t820, ptr null)
  %t822 = icmp ne ptr %t821, null
  %t823 = select i1 %t822, ptr %t821, ptr null
  %t824 = icmp eq ptr %t823, %t817
  call void @__olang_region_settle(ptr %t817, i1 %t824)
  br label %bb224
bb224:
  %t825 = load i32, ptr %l333, !range !{i32 0, i32 5}
  %t826 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l338
  %t827 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l344
  %t828 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l350
  %t829 = call %"compiler/cabi:Way" @compiler_2fcabi_3aWay_2ector(ptr %v2, ptr %v2, ptr %v2, ptr %v2, ptr %v2, i32 %t825, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t826, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t827, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t828, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d27, i32 0, i32 1) })
  store %"compiler/cabi:Way" %t829, ptr %l352
  br label %bb225
bb225:
  %t831 = call %"compiler/cabi:Way" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2fcabi_3aWay(ptr %v2, ptr %l352)
  store %"compiler/cabi:Way" %t831, ptr %l354
  br label %bb226
bb226:
  call void @__olang_scope_close(ptr %s0)
  %t832 = load %"compiler/cabi:Way", ptr %l354
  store %"compiler/cabi:Way" %t832, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/cabi:Way", ptr %rv
  ret %"compiler/cabi:Way" %rr
}

define dso_local %"compiler/cabi:Way" @compiler_2fcabi_2eWay_2eParam(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %a0, { i64, ptr } %a1, i32 %a2, ptr %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca { i64, ptr }
  %l2 = alloca i32
  %l3 = alloca ptr
  %lp5 = alloca ptr
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca ptr
  %l9 = alloca i64
  %l13 = alloca i1
  %l17 = alloca i32
  %l20 = alloca i1
  %l21 = alloca ptr
  %l24 = alloca ptr
  %l27 = alloca i32
  %l28 = alloca i64
  %l30 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l32 = alloca i64
  %l34 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l36 = alloca i64
  %l38 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l40 = alloca i64
  %l45 = alloca { i64, ptr }
  %l47 = alloca %"compiler/cabi:Way"
  %l51 = alloca %"compiler/cabi:Way"
  %l53 = alloca i1
  %l54 = alloca i1
  %l58 = alloca i64
  %l60 = alloca i64
  %l65 = alloca { i64, ptr }
  %l67 = alloca i1
  %l78 = alloca i1
  %l83 = alloca i32
  %l84 = alloca i64
  %l86 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l88 = alloca i64
  %l90 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l92 = alloca i64
  %l94 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l96 = alloca %"compiler/cabi:Way"
  %l97 = alloca ptr
  %l101 = alloca ptr
  %s0 = alloca %olang.scope
  %rv = alloca %"compiler/cabi:Way"
  store ptr %a0, ptr %l0
  store { i64, ptr } %a1, ptr %l1
  store i32 %a2, ptr %l2
  store ptr %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load i32, ptr %l2, !tbaa !23
  %t5 = call i1 @compiler_2fcabi_2eIsStruct(ptr %v0, ptr %t1, i32 %t2)
  store i1 %t5, ptr %l13
  br label %bb1
bb1:
  %t6 = load i1, ptr %l13, !tbaa !21
  %t7 = xor i1 %t6, true
  br i1 %t7, label %bb2, label %bb3
bb2:
  %t9 = load ptr, ptr %l0, !tbaa !29
  %t10 = load i32, ptr %l2, !tbaa !23
  %t13 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %v0, ptr %t9, i32 %t10)
  store i32 %t13, ptr %l17
  br label %bb4
bb3:
  br label %bb28
bb4:
  %t14 = load i32, ptr %l17, !tbaa !23
  %t15 = load ptr, ptr %l0, !tbaa !29
  %t19 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsFloat(ptr %v0, ptr %t15, i32 %t14)
  store i1 %t19, ptr %l20
  br label %bb5
bb5:
  %t20 = load i1, ptr %l20, !tbaa !21
  br i1 %t20, label %bb6, label %bb7
bb6:
  %t21 = load ptr, ptr %l3, !tbaa !29
  store ptr %t21, ptr %l21, !tbaa !29
  %t22 = load ptr, ptr %l21, !tbaa !29
  %t23 = getelementptr %"compiler/cabi:Regs", ptr %t22, i32 0, i32 1
  %t24 = load i64, ptr %t23, !tbaa !24
  %t26 = sub i64 %t24, 1
  %t28 = load ptr, ptr %l21, !tbaa !29
  %t29 = getelementptr %"compiler/cabi:Regs", ptr %t28, i32 0, i32 1
  store i64 %t26, ptr %t29, !tbaa !24
  br label %bb8
bb7:
  %t30 = load ptr, ptr %l3, !tbaa !29
  store ptr %t30, ptr %l24, !tbaa !29
  %t31 = load ptr, ptr %l24, !tbaa !29
  %t32 = getelementptr %"compiler/cabi:Regs", ptr %t31, i32 0, i32 0
  %t33 = load i64, ptr %t32, !tbaa !24
  %t35 = sub i64 %t33, 1
  %t37 = load ptr, ptr %l24, !tbaa !29
  %t38 = getelementptr %"compiler/cabi:Regs", ptr %t37, i32 0, i32 0
  store i64 %t35, ptr %t38, !tbaa !24
  br label %bb8
bb8:
  store i32 0, ptr %l27
  %t39 = ptrtoint ptr %v3 to i64
  store i64 %t39, ptr %l28, !tbaa !24
  %t40 = load i1, ptr @olang_2esole_2ecompiler_2fcabi_3aWay_2e1
  br i1 %t40, label %bb9, label %bb10
bb9:
  %t42 = call ptr @__olang_region_make(ptr %v3)
  %t43 = ptrtoint ptr %t42 to i64
  store i64 %t43, ptr %l28, !tbaa !24
  br label %bb10
bb10:
  %t44 = load i64, ptr %l28
  %t45 = inttoptr i64 %t44 to ptr
  %t46 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2ector(ptr %t45, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t46, ptr %l30
  br label %bb11
bb11:
  %t47 = load i1, ptr @olang_2esole_2ecompiler_2fcabi_3aWay_2e1
  br i1 %t47, label %bb12, label %bb13
bb12:
  %t49 = load i64, ptr %l28
  %t50 = inttoptr i64 %t49 to ptr
  %t51 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l30, i32 0, i32 0
  %t52 = load { i64, ptr }, ptr %t51
  %t53 = extractvalue { i64, ptr } %t52, 1
  %t54 = call ptr @__olang_region_or(ptr %t53, ptr null)
  %t55 = icmp ne ptr %t54, null
  %t56 = select i1 %t55, ptr %t54, ptr null
  %t57 = icmp eq ptr %t56, %t50
  call void @__olang_region_settle(ptr %t50, i1 %t57)
  br label %bb13
bb13:
  %t58 = ptrtoint ptr %v3 to i64
  store i64 %t58, ptr %l32, !tbaa !24
  %t59 = load i1, ptr @olang_2esole_2ecompiler_2fcabi_3aWay_2e2
  br i1 %t59, label %bb14, label %bb15
bb14:
  %t61 = call ptr @__olang_region_make(ptr %v3)
  %t62 = ptrtoint ptr %t61 to i64
  store i64 %t62, ptr %l32, !tbaa !24
  br label %bb15
bb15:
  %t63 = load i64, ptr %l32
  %t64 = inttoptr i64 %t63 to ptr
  %t65 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %t64, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t65, ptr %l34
  br label %bb16
bb16:
  %t66 = load i1, ptr @olang_2esole_2ecompiler_2fcabi_3aWay_2e2
  br i1 %t66, label %bb17, label %bb18
bb17:
  %t68 = load i64, ptr %l32
  %t69 = inttoptr i64 %t68 to ptr
  %t70 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l34, i32 0, i32 0
  %t71 = load { i64, ptr }, ptr %t70
  %t72 = extractvalue { i64, ptr } %t71, 1
  %t73 = call ptr @__olang_region_or(ptr %t72, ptr null)
  %t74 = icmp ne ptr %t73, null
  %t75 = select i1 %t74, ptr %t73, ptr null
  %t76 = icmp eq ptr %t75, %t69
  call void @__olang_region_settle(ptr %t69, i1 %t76)
  br label %bb18
bb18:
  %t77 = ptrtoint ptr %v3 to i64
  store i64 %t77, ptr %l36, !tbaa !24
  %t78 = load i1, ptr @olang_2esole_2ecompiler_2fcabi_3aWay_2e3
  br i1 %t78, label %bb19, label %bb20
bb19:
  %t80 = call ptr @__olang_region_make(ptr %v3)
  %t81 = ptrtoint ptr %t80 to i64
  store i64 %t81, ptr %l36, !tbaa !24
  br label %bb20
bb20:
  %t82 = load i64, ptr %l36
  %t83 = inttoptr i64 %t82 to ptr
  %t84 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %t83, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t84, ptr %l38
  br label %bb21
bb21:
  %t85 = load i1, ptr @olang_2esole_2ecompiler_2fcabi_3aWay_2e3
  br i1 %t85, label %bb22, label %bb23
bb22:
  %t87 = load i64, ptr %l36
  %t88 = inttoptr i64 %t87 to ptr
  %t89 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l38, i32 0, i32 0
  %t90 = load { i64, ptr }, ptr %t89
  %t91 = extractvalue { i64, ptr } %t90, 1
  %t92 = call ptr @__olang_region_or(ptr %t91, ptr null)
  %t93 = icmp ne ptr %t92, null
  %t94 = select i1 %t93, ptr %t92, ptr null
  %t95 = icmp eq ptr %t94, %t88
  call void @__olang_region_settle(ptr %t88, i1 %t95)
  br label %bb23
bb23:
  %t96 = ptrtoint ptr %v3 to i64
  store i64 %t96, ptr %l40, !tbaa !24
  %t97 = load i1, ptr @olang_2esole_2ecompiler_2fcabi_3aWay_2e4
  br i1 %t97, label %bb24, label %bb25
bb24:
  %t99 = call ptr @__olang_region_make(ptr %v3)
  %t100 = ptrtoint ptr %t99 to i64
  store i64 %t100, ptr %l40, !tbaa !24
  br label %bb25
bb25:
  %t101 = load ptr, ptr %l0, !tbaa !29
  %t102 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t103 = load i32, ptr %l2, !tbaa !23
  %t104 = load i64, ptr %l40
  %t105 = inttoptr i64 %t104 to ptr
  %t109 = call { i64, ptr } @compiler_2fcabi_2eExt(ptr %v0, ptr %v1, ptr %t105, ptr %t101, { i64, ptr } %t102, i32 %t103)
  store { i64, ptr } %t109, ptr %l45
  br label %bb26
bb26:
  %t110 = load { i64, ptr }, ptr %l45, !tbaa !27
  %t111 = load i64, ptr %l40
  %t112 = inttoptr i64 %t111 to ptr
  %t113 = extractvalue { i64, ptr } %t110, 0
  %t114 = extractvalue { i64, ptr } %t110, 1
  %t115 = mul i64 %t113, 1
  %t116 = call ptr @__olang_scope_alloc(ptr %t112, i64 %t115)
  call void @llvm.memcpy.p0.p0.i64(ptr %t116, ptr %t114, i64 %t115, i1 false)
  %t117 = insertvalue { i64, ptr } undef, i64 %t113, 0
  %t118 = insertvalue { i64, ptr } %t117, ptr %t116, 1
  %t119 = load i32, ptr %l27, !range !{i32 0, i32 5}
  %t120 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l30
  %t121 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l34
  %t122 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l38
  %t124 = call %"compiler/cabi:Way" @compiler_2fcabi_3aWay_2ector(ptr %v3, ptr %v3, ptr %v3, ptr %v3, ptr %v3, i32 %t119, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t120, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t121, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t122, { i64, ptr } %t118)
  store %"compiler/cabi:Way" %t124, ptr %l47
  br label %bb27
bb27:
  call void @__olang_scope_close(ptr %s0)
  %t125 = load %"compiler/cabi:Way", ptr %l47
  store %"compiler/cabi:Way" %t125, ptr %rv
  br label %ret
bb28:
  %t126 = load ptr, ptr %l0, !tbaa !29
  %t127 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t128 = load i32, ptr %l2, !tbaa !23
  %t132 = call %"compiler/cabi:Way" @compiler_2fcabi_2eWay_2eClassify(ptr %v0, ptr %v1, ptr %v3, ptr %v4, ptr %t126, { i64, ptr } %t127, i32 %t128, i1 false)
  store %"compiler/cabi:Way" %t132, ptr %l51
  br label %bb29
bb29:
  %t133 = call ptr @__olang_scope_alloc_a(ptr %v3, i64 120, i64 8)
  store ptr %t133, ptr %lp5
  %t134 = load %"compiler/cabi:Way", ptr %l51
  %t135 = load ptr, ptr %lp5
  store %"compiler/cabi:Way" %t134, ptr %t135
  %t136 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t138 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v1, ptr %s0, { i64, ptr } %t136, { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d28, i32 0, i32 1) })
  store i1 %t138, ptr %l53
  br label %bb30
bb30:
  %t139 = load i1, ptr %l53, !tbaa !21
  br i1 %t139, label %bb31, label %bb32
bb31:
  %t140 = load ptr, ptr %lp5
  %t141 = getelementptr %"compiler/cabi:Way", ptr %t140, i32 0, i32 0
  %t142 = load i32, ptr %t141, !range !{i32 0, i32 5}
  %t144 = trunc i64 1 to i32
  %t145 = icmp eq i32 %t142, %t144
  store i1 %t145, ptr %l54, !tbaa !21
  br label %bb33
bb32:
  store i1 false, ptr %l54, !tbaa !21
  br label %bb33
bb33:
  %t147 = load i1, ptr %l54, !tbaa !21
  br i1 %t147, label %bb34, label %bb35
bb34:
  store i64 0, ptr %l6, !tbaa !24
  store i64 0, ptr %l7, !tbaa !24
  %t148 = load ptr, ptr %lp5
  %t149 = getelementptr %"compiler/cabi:Way", ptr %t148, i32 0, i32 1
  store ptr %t149, ptr %l8, !tbaa !29
  store i64 0, ptr %l9, !tbaa !24
  br label %bb36
bb35:
  br label %bb70
bb36:
  %t151 = load i64, ptr %l9, !tbaa !24
  store i64 %t151, ptr %l58, !tbaa !24
  %t152 = load ptr, ptr %l8, !tbaa !29
  %t154 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %v3, ptr %t152)
  store i64 %t154, ptr %l60
  br label %bb37
bb37:
  %t155 = load i64, ptr %l58, !tbaa !24
  %t156 = load i64, ptr %l60, !tbaa !24
  %t157 = icmp slt i64 %t155, %t156
  %t159 = xor i1 %t157, true
  br i1 %t159, label %bb38, label %bb39
bb38:
  br label %bb47
bb39:
  br label %bb40
bb40:
  %t161 = load ptr, ptr %l8, !tbaa !29
  %t162 = load i64, ptr %l9, !tbaa !24
  %t165 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %v3, ptr %v3, ptr %t161, i64 %t162)
  store { i64, ptr } %t165, ptr %l65
  br label %bb41
bb41:
  %t166 = load { i64, ptr }, ptr %l65, !tbaa !27
  %t169 = call i1 @compiler_2fcabi_2einSse(ptr %v3, { i64, ptr } %t166)
  store i1 %t169, ptr %l67
  br label %bb42
bb42:
  %t170 = load i1, ptr %l67, !tbaa !21
  br i1 %t170, label %bb43, label %bb44
bb43:
  %t171 = load i64, ptr %l7, !tbaa !24
  %t173 = add i64 %t171, 1
  store i64 %t173, ptr %l7, !tbaa !24
  br label %bb45
bb44:
  %t175 = load i64, ptr %l6, !tbaa !24
  %t177 = add i64 %t175, 1
  store i64 %t177, ptr %l6, !tbaa !24
  br label %bb45
bb45:
  br label %bb46
bb46:
  %t179 = load i64, ptr %l9, !tbaa !24
  %t181 = add i64 %t179, 1
  store i64 %t181, ptr %l9, !tbaa !24
  br label %bb36
bb47:
  %t183 = load i64, ptr %l6, !tbaa !24
  %t184 = load ptr, ptr %l3, !tbaa !29
  %t186 = getelementptr %"compiler/cabi:Regs", ptr %t184, i32 0, i32 0
  %t187 = load i64, ptr %t186, !tbaa !24
  %t190 = icmp sgt i64 %t183, %t187
  br i1 %t190, label %bb48, label %bb49
bb48:
  store i1 true, ptr %l78, !tbaa !21
  br label %bb50
bb49:
  %t192 = load i64, ptr %l7, !tbaa !24
  %t193 = load ptr, ptr %l3, !tbaa !29
  %t195 = getelementptr %"compiler/cabi:Regs", ptr %t193, i32 0, i32 1
  %t196 = load i64, ptr %t195, !tbaa !24
  %t199 = icmp sgt i64 %t192, %t196
  store i1 %t199, ptr %l78, !tbaa !21
  br label %bb50
bb50:
  %t201 = load i1, ptr %l78, !tbaa !21
  br i1 %t201, label %bb51, label %bb52
bb51:
  store i32 2, ptr %l83
  %t202 = ptrtoint ptr %v3 to i64
  store i64 %t202, ptr %l84, !tbaa !24
  %t203 = load i1, ptr @olang_2esole_2ecompiler_2fcabi_3aWay_2e1
  br i1 %t203, label %bb53, label %bb54
bb52:
  br label %bb69
bb53:
  %t205 = call ptr @__olang_region_make(ptr %v3)
  %t206 = ptrtoint ptr %t205 to i64
  store i64 %t206, ptr %l84, !tbaa !24
  br label %bb54
bb54:
  %t207 = load i64, ptr %l84
  %t208 = inttoptr i64 %t207 to ptr
  %t209 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2ector(ptr %t208, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t209, ptr %l86
  br label %bb55
bb55:
  %t210 = load i1, ptr @olang_2esole_2ecompiler_2fcabi_3aWay_2e1
  br i1 %t210, label %bb56, label %bb57
bb56:
  %t212 = load i64, ptr %l84
  %t213 = inttoptr i64 %t212 to ptr
  %t214 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l86, i32 0, i32 0
  %t215 = load { i64, ptr }, ptr %t214
  %t216 = extractvalue { i64, ptr } %t215, 1
  %t217 = call ptr @__olang_region_or(ptr %t216, ptr null)
  %t218 = icmp ne ptr %t217, null
  %t219 = select i1 %t218, ptr %t217, ptr null
  %t220 = icmp eq ptr %t219, %t213
  call void @__olang_region_settle(ptr %t213, i1 %t220)
  br label %bb57
bb57:
  %t221 = ptrtoint ptr %v3 to i64
  store i64 %t221, ptr %l88, !tbaa !24
  %t222 = load i1, ptr @olang_2esole_2ecompiler_2fcabi_3aWay_2e2
  br i1 %t222, label %bb58, label %bb59
bb58:
  %t224 = call ptr @__olang_region_make(ptr %v3)
  %t225 = ptrtoint ptr %t224 to i64
  store i64 %t225, ptr %l88, !tbaa !24
  br label %bb59
bb59:
  %t226 = load i64, ptr %l88
  %t227 = inttoptr i64 %t226 to ptr
  %t228 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %t227, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t228, ptr %l90
  br label %bb60
bb60:
  %t229 = load i1, ptr @olang_2esole_2ecompiler_2fcabi_3aWay_2e2
  br i1 %t229, label %bb61, label %bb62
bb61:
  %t231 = load i64, ptr %l88
  %t232 = inttoptr i64 %t231 to ptr
  %t233 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l90, i32 0, i32 0
  %t234 = load { i64, ptr }, ptr %t233
  %t235 = extractvalue { i64, ptr } %t234, 1
  %t236 = call ptr @__olang_region_or(ptr %t235, ptr null)
  %t237 = icmp ne ptr %t236, null
  %t238 = select i1 %t237, ptr %t236, ptr null
  %t239 = icmp eq ptr %t238, %t232
  call void @__olang_region_settle(ptr %t232, i1 %t239)
  br label %bb62
bb62:
  %t240 = ptrtoint ptr %v3 to i64
  store i64 %t240, ptr %l92, !tbaa !24
  %t241 = load i1, ptr @olang_2esole_2ecompiler_2fcabi_3aWay_2e3
  br i1 %t241, label %bb63, label %bb64
bb63:
  %t243 = call ptr @__olang_region_make(ptr %v3)
  %t244 = ptrtoint ptr %t243 to i64
  store i64 %t244, ptr %l92, !tbaa !24
  br label %bb64
bb64:
  %t245 = load i64, ptr %l92
  %t246 = inttoptr i64 %t245 to ptr
  %t247 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %t246, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t247, ptr %l94
  br label %bb65
bb65:
  %t248 = load i1, ptr @olang_2esole_2ecompiler_2fcabi_3aWay_2e3
  br i1 %t248, label %bb66, label %bb67
bb66:
  %t250 = load i64, ptr %l92
  %t251 = inttoptr i64 %t250 to ptr
  %t252 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l94, i32 0, i32 0
  %t253 = load { i64, ptr }, ptr %t252
  %t254 = extractvalue { i64, ptr } %t253, 1
  %t255 = call ptr @__olang_region_or(ptr %t254, ptr null)
  %t256 = icmp ne ptr %t255, null
  %t257 = select i1 %t256, ptr %t255, ptr null
  %t258 = icmp eq ptr %t257, %t251
  call void @__olang_region_settle(ptr %t251, i1 %t258)
  br label %bb67
bb67:
  %t259 = load i32, ptr %l83, !range !{i32 0, i32 5}
  %t260 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l86
  %t261 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l90
  %t262 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l94
  %t263 = call %"compiler/cabi:Way" @compiler_2fcabi_3aWay_2ector(ptr %v3, ptr %v3, ptr %v3, ptr %v3, ptr %v3, i32 %t259, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t260, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t261, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t262, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d29, i32 0, i32 1) })
  store %"compiler/cabi:Way" %t263, ptr %l96
  br label %bb68
bb68:
  call void @__olang_scope_close(ptr %s0)
  %t264 = load %"compiler/cabi:Way", ptr %l96
  store %"compiler/cabi:Way" %t264, ptr %rv
  br label %ret
bb69:
  %t265 = load ptr, ptr %l3, !tbaa !29
  store ptr %t265, ptr %l97, !tbaa !29
  %t266 = load ptr, ptr %l97, !tbaa !29
  %t267 = getelementptr %"compiler/cabi:Regs", ptr %t266, i32 0, i32 0
  %t268 = load i64, ptr %t267, !tbaa !24
  %t269 = load i64, ptr %l6, !tbaa !24
  %t272 = sub i64 %t268, %t269
  %t274 = load ptr, ptr %l97, !tbaa !29
  %t275 = getelementptr %"compiler/cabi:Regs", ptr %t274, i32 0, i32 0
  store i64 %t272, ptr %t275, !tbaa !24
  %t276 = load ptr, ptr %l3, !tbaa !29
  store ptr %t276, ptr %l101, !tbaa !29
  %t277 = load ptr, ptr %l101, !tbaa !29
  %t278 = getelementptr %"compiler/cabi:Regs", ptr %t277, i32 0, i32 1
  %t279 = load i64, ptr %t278, !tbaa !24
  %t280 = load i64, ptr %l7, !tbaa !24
  %t283 = sub i64 %t279, %t280
  %t285 = load ptr, ptr %l101, !tbaa !29
  %t286 = getelementptr %"compiler/cabi:Regs", ptr %t285, i32 0, i32 1
  store i64 %t283, ptr %t286, !tbaa !24
  br label %bb70
bb70:
  %t287 = load ptr, ptr %lp5
  %t288 = load %"compiler/cabi:Way", ptr %t287
  call void @__olang_scope_close(ptr %s0)
  store %"compiler/cabi:Way" %t288, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/cabi:Way", ptr %rv
  ret %"compiler/cabi:Way" %rr
}

define dso_local %"compiler/cabi:Way" @compiler_2fcabi_2eWay_2eResult(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, { i64, ptr } %a1, i32 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca { i64, ptr }
  %l2 = alloca i32
  %l5 = alloca i1
  %l7 = alloca i32
  %l8 = alloca i64
  %l10 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l12 = alloca i64
  %l14 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l16 = alloca i64
  %l18 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l20 = alloca i64
  %l25 = alloca { i64, ptr }
  %l27 = alloca %"compiler/cabi:Way"
  %l31 = alloca %"compiler/cabi:Way"
  %rv = alloca %"compiler/cabi:Way"
  store ptr %a0, ptr %l0
  store { i64, ptr } %a1, ptr %l1
  store i32 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load i32, ptr %l2, !tbaa !23
  %t5 = call i1 @compiler_2fcabi_2eIsStruct(ptr %v0, ptr %t1, i32 %t2)
  store i1 %t5, ptr %l5
  br label %bb1
bb1:
  %t6 = load i1, ptr %l5, !tbaa !21
  %t7 = xor i1 %t6, true
  br i1 %t7, label %bb2, label %bb3
bb2:
  store i32 0, ptr %l7
  %t9 = ptrtoint ptr %v2 to i64
  store i64 %t9, ptr %l8, !tbaa !24
  %t10 = load i1, ptr @olang_2esole_2ecompiler_2fcabi_3aWay_2e1
  br i1 %t10, label %bb4, label %bb5
bb3:
  br label %bb23
bb4:
  %t12 = call ptr @__olang_region_make(ptr %v2)
  %t13 = ptrtoint ptr %t12 to i64
  store i64 %t13, ptr %l8, !tbaa !24
  br label %bb5
bb5:
  %t14 = load i64, ptr %l8
  %t15 = inttoptr i64 %t14 to ptr
  %t16 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2ector(ptr %t15, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t16, ptr %l10
  br label %bb6
bb6:
  %t17 = load i1, ptr @olang_2esole_2ecompiler_2fcabi_3aWay_2e1
  br i1 %t17, label %bb7, label %bb8
bb7:
  %t19 = load i64, ptr %l8
  %t20 = inttoptr i64 %t19 to ptr
  %t21 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l10, i32 0, i32 0
  %t22 = load { i64, ptr }, ptr %t21
  %t23 = extractvalue { i64, ptr } %t22, 1
  %t24 = call ptr @__olang_region_or(ptr %t23, ptr null)
  %t25 = icmp ne ptr %t24, null
  %t26 = select i1 %t25, ptr %t24, ptr null
  %t27 = icmp eq ptr %t26, %t20
  call void @__olang_region_settle(ptr %t20, i1 %t27)
  br label %bb8
bb8:
  %t28 = ptrtoint ptr %v2 to i64
  store i64 %t28, ptr %l12, !tbaa !24
  %t29 = load i1, ptr @olang_2esole_2ecompiler_2fcabi_3aWay_2e2
  br i1 %t29, label %bb9, label %bb10
bb9:
  %t31 = call ptr @__olang_region_make(ptr %v2)
  %t32 = ptrtoint ptr %t31 to i64
  store i64 %t32, ptr %l12, !tbaa !24
  br label %bb10
bb10:
  %t33 = load i64, ptr %l12
  %t34 = inttoptr i64 %t33 to ptr
  %t35 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %t34, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t35, ptr %l14
  br label %bb11
bb11:
  %t36 = load i1, ptr @olang_2esole_2ecompiler_2fcabi_3aWay_2e2
  br i1 %t36, label %bb12, label %bb13
bb12:
  %t38 = load i64, ptr %l12
  %t39 = inttoptr i64 %t38 to ptr
  %t40 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l14, i32 0, i32 0
  %t41 = load { i64, ptr }, ptr %t40
  %t42 = extractvalue { i64, ptr } %t41, 1
  %t43 = call ptr @__olang_region_or(ptr %t42, ptr null)
  %t44 = icmp ne ptr %t43, null
  %t45 = select i1 %t44, ptr %t43, ptr null
  %t46 = icmp eq ptr %t45, %t39
  call void @__olang_region_settle(ptr %t39, i1 %t46)
  br label %bb13
bb13:
  %t47 = ptrtoint ptr %v2 to i64
  store i64 %t47, ptr %l16, !tbaa !24
  %t48 = load i1, ptr @olang_2esole_2ecompiler_2fcabi_3aWay_2e3
  br i1 %t48, label %bb14, label %bb15
bb14:
  %t50 = call ptr @__olang_region_make(ptr %v2)
  %t51 = ptrtoint ptr %t50 to i64
  store i64 %t51, ptr %l16, !tbaa !24
  br label %bb15
bb15:
  %t52 = load i64, ptr %l16
  %t53 = inttoptr i64 %t52 to ptr
  %t54 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %t53, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t54, ptr %l18
  br label %bb16
bb16:
  %t55 = load i1, ptr @olang_2esole_2ecompiler_2fcabi_3aWay_2e3
  br i1 %t55, label %bb17, label %bb18
bb17:
  %t57 = load i64, ptr %l16
  %t58 = inttoptr i64 %t57 to ptr
  %t59 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l18, i32 0, i32 0
  %t60 = load { i64, ptr }, ptr %t59
  %t61 = extractvalue { i64, ptr } %t60, 1
  %t62 = call ptr @__olang_region_or(ptr %t61, ptr null)
  %t63 = icmp ne ptr %t62, null
  %t64 = select i1 %t63, ptr %t62, ptr null
  %t65 = icmp eq ptr %t64, %t58
  call void @__olang_region_settle(ptr %t58, i1 %t65)
  br label %bb18
bb18:
  %t66 = ptrtoint ptr %v2 to i64
  store i64 %t66, ptr %l20, !tbaa !24
  %t67 = load i1, ptr @olang_2esole_2ecompiler_2fcabi_3aWay_2e4
  br i1 %t67, label %bb19, label %bb20
bb19:
  %t69 = call ptr @__olang_region_make(ptr %v2)
  %t70 = ptrtoint ptr %t69 to i64
  store i64 %t70, ptr %l20, !tbaa !24
  br label %bb20
bb20:
  %t71 = load ptr, ptr %l0, !tbaa !29
  %t72 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t73 = load i32, ptr %l2, !tbaa !23
  %t74 = load i64, ptr %l20
  %t75 = inttoptr i64 %t74 to ptr
  %t79 = call { i64, ptr } @compiler_2fcabi_2eExt(ptr %v0, ptr %v1, ptr %t75, ptr %t71, { i64, ptr } %t72, i32 %t73)
  store { i64, ptr } %t79, ptr %l25
  br label %bb21
bb21:
  %t80 = load { i64, ptr }, ptr %l25, !tbaa !27
  %t81 = load i64, ptr %l20
  %t82 = inttoptr i64 %t81 to ptr
  %t83 = extractvalue { i64, ptr } %t80, 0
  %t84 = extractvalue { i64, ptr } %t80, 1
  %t85 = mul i64 %t83, 1
  %t86 = call ptr @__olang_scope_alloc(ptr %t82, i64 %t85)
  call void @llvm.memcpy.p0.p0.i64(ptr %t86, ptr %t84, i64 %t85, i1 false)
  %t87 = insertvalue { i64, ptr } undef, i64 %t83, 0
  %t88 = insertvalue { i64, ptr } %t87, ptr %t86, 1
  %t89 = load i32, ptr %l7, !range !{i32 0, i32 5}
  %t90 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l10
  %t91 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l14
  %t92 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l18
  %t94 = call %"compiler/cabi:Way" @compiler_2fcabi_3aWay_2ector(ptr %v2, ptr %v2, ptr %v2, ptr %v2, ptr %v2, i32 %t89, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t90, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t91, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t92, { i64, ptr } %t88)
  store %"compiler/cabi:Way" %t94, ptr %l27
  br label %bb22
bb22:
  %t95 = load %"compiler/cabi:Way", ptr %l27
  store %"compiler/cabi:Way" %t95, ptr %rv
  br label %ret
bb23:
  %t96 = load ptr, ptr %l0, !tbaa !29
  %t97 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t98 = load i32, ptr %l2, !tbaa !23
  %t102 = call %"compiler/cabi:Way" @compiler_2fcabi_2eWay_2eClassify(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %t96, { i64, ptr } %t97, i32 %t98, i1 true)
  store %"compiler/cabi:Way" %t102, ptr %l31
  br label %bb24
bb24:
  %t103 = load %"compiler/cabi:Way", ptr %l31
  store %"compiler/cabi:Way" %t103, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/cabi:Way", ptr %rv
  ret %"compiler/cabi:Way" %rr
}

define dso_local i64 @compiler_2fcabi_2eat(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l2 = alloca ptr
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca %"compiler/cabi:Scalar"
  %l7 = alloca i64
  %l9 = alloca i64
  %l15 = alloca %"compiler/cabi:Scalar"
  %rv = alloca i64
  br label %start
start:
  br label %bb0
bb0:
  store ptr %a0, ptr %l2, !tbaa !29
  store i64 0, ptr %l3, !tbaa !24
  br label %bb1
bb1:
  %t3 = load i64, ptr %l3, !tbaa !24
  store i64 %t3, ptr %l7, !tbaa !24
  %t4 = load ptr, ptr %l2, !tbaa !29
  %t6 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcabi_3aScalar_3e_2eLen_3ccompiler_2fcabi_3aScalar_3e(ptr %v0, ptr %t4)
  store i64 %t6, ptr %l9
  br label %bb2
bb2:
  %t7 = load i64, ptr %l7, !tbaa !24
  %t8 = load i64, ptr %l9, !tbaa !24
  %t9 = icmp slt i64 %t7, %t8
  %t11 = xor i1 %t9, true
  br i1 %t11, label %bb3, label %bb4
bb3:
  br label %bb11
bb4:
  br label %bb5
bb5:
  %t13 = load i64, ptr %l3, !tbaa !24
  store i64 %t13, ptr %l4, !tbaa !24
  %t15 = load ptr, ptr %l2, !tbaa !29
  %t16 = load i64, ptr %l3, !tbaa !24
  %t19 = call %"compiler/cabi:Scalar" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcabi_3aScalar_3e_2eAt_3ccompiler_2fcabi_3aScalar_3e(ptr %v0, ptr %v0, ptr %t15, i64 %t16)
  store %"compiler/cabi:Scalar" %t19, ptr %l15
  br label %bb6
bb6:
  %t20 = load %"compiler/cabi:Scalar", ptr %l15
  store %"compiler/cabi:Scalar" %t20, ptr %l5
  %t21 = getelementptr %"compiler/cabi:Scalar", ptr %l5, i32 0, i32 0
  %t22 = load i64, ptr %t21, !tbaa !24
  %t26 = icmp eq i64 %t22, %a1
  br i1 %t26, label %bb7, label %bb8
bb7:
  %t28 = load i64, ptr %l4, !tbaa !24
  store i64 %t28, ptr %rv
  br label %ret
bb8:
  br label %bb9
bb9:
  br label %bb10
bb10:
  %t30 = load i64, ptr %l3, !tbaa !24
  %t32 = add i64 %t30, 1
  store i64 %t32, ptr %l3, !tbaa !24
  br label %bb1
bb11:
  store i64 -1, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local i1 @compiler_2fcabi_2edata(ptr %v0, ptr %a0, i64 %a1, i64 %a2) #0 {
entry:
  %l3 = alloca ptr
  %l4 = alloca i64
  %l5 = alloca %"compiler/cabi:Scalar"
  %l7 = alloca i64
  %l9 = alloca i64
  %l14 = alloca %"compiler/cabi:Scalar"
  %l18 = alloca i1
  %rv = alloca i1
  br label %start
start:
  br label %bb0
bb0:
  store ptr %a0, ptr %l3, !tbaa !29
  store i64 0, ptr %l4, !tbaa !24
  br label %bb1
bb1:
  %t3 = load i64, ptr %l4, !tbaa !24
  store i64 %t3, ptr %l7, !tbaa !24
  %t4 = load ptr, ptr %l3, !tbaa !29
  %t6 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcabi_3aScalar_3e_2eLen_3ccompiler_2fcabi_3aScalar_3e(ptr %v0, ptr %t4)
  store i64 %t6, ptr %l9
  br label %bb2
bb2:
  %t7 = load i64, ptr %l7, !tbaa !24
  %t8 = load i64, ptr %l9, !tbaa !24
  %t9 = icmp slt i64 %t7, %t8
  %t11 = xor i1 %t9, true
  br i1 %t11, label %bb3, label %bb4
bb3:
  br label %bb14
bb4:
  br label %bb5
bb5:
  %t13 = load ptr, ptr %l3, !tbaa !29
  %t14 = load i64, ptr %l4, !tbaa !24
  %t17 = call %"compiler/cabi:Scalar" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcabi_3aScalar_3e_2eAt_3ccompiler_2fcabi_3aScalar_3e(ptr %v0, ptr %v0, ptr %t13, i64 %t14)
  store %"compiler/cabi:Scalar" %t17, ptr %l14
  br label %bb6
bb6:
  %t18 = load %"compiler/cabi:Scalar", ptr %l14
  store %"compiler/cabi:Scalar" %t18, ptr %l5
  %t19 = getelementptr %"compiler/cabi:Scalar", ptr %l5, i32 0, i32 0
  %t20 = load i64, ptr %t19, !tbaa !24
  %t24 = icmp slt i64 %t20, %a2
  br i1 %t24, label %bb7, label %bb8
bb7:
  %t26 = getelementptr %"compiler/cabi:Scalar", ptr %l5, i32 0, i32 0
  %t27 = load i64, ptr %t26, !tbaa !24
  %t28 = getelementptr %"compiler/cabi:Scalar", ptr %l5, i32 0, i32 1
  %t29 = load i64, ptr %t28, !tbaa !24
  %t32 = add i64 %t27, %t29
  %t36 = icmp sgt i64 %t32, %a1
  store i1 %t36, ptr %l18, !tbaa !21
  br label %bb9
bb8:
  store i1 false, ptr %l18, !tbaa !21
  br label %bb9
bb9:
  %t38 = load i1, ptr %l18, !tbaa !21
  br i1 %t38, label %bb10, label %bb11
bb10:
  store i1 true, ptr %rv
  br label %ret
bb11:
  br label %bb12
bb12:
  br label %bb13
bb13:
  %t40 = load i64, ptr %l4, !tbaa !24
  %t42 = add i64 %t40, 1
  store i64 %t42, ptr %l4, !tbaa !24
  br label %bb1
bb14:
  store i1 false, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i1 @compiler_2fcabi_2einSse(ptr %v0, { i64, ptr } %a0) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l2 = alloca i1
  %l3 = alloca i1
  %l5 = alloca i1
  %l6 = alloca i1
  %l8 = alloca i1
  %l9 = alloca i1
  %l11 = alloca i1
  %l12 = alloca i1
  %l14 = alloca i1
  %s0 = alloca %olang.scope
  %rv = alloca i1
  store { i64, ptr } %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t3 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %v0, ptr %s0, { i64, ptr } %t1, { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d30, i32 0, i32 1) })
  store i1 %t3, ptr %l2
  br label %bb1
bb1:
  %t4 = load i1, ptr %l2, !tbaa !21
  br i1 %t4, label %bb2, label %bb3
bb2:
  store i1 true, ptr %l3, !tbaa !21
  br label %bb5
bb3:
  %t5 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t7 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %v0, ptr %s0, { i64, ptr } %t5, { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d31, i32 0, i32 1) })
  store i1 %t7, ptr %l5
  br label %bb4
bb4:
  %t8 = load i1, ptr %l5, !tbaa !21
  store i1 %t8, ptr %l3, !tbaa !21
  br label %bb5
bb5:
  %t9 = load i1, ptr %l3, !tbaa !21
  br i1 %t9, label %bb6, label %bb7
bb6:
  store i1 true, ptr %l6, !tbaa !21
  br label %bb9
bb7:
  %t10 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t12 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %v0, ptr %s0, { i64, ptr } %t10, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d32, i32 0, i32 1) })
  store i1 %t12, ptr %l8
  br label %bb8
bb8:
  %t13 = load i1, ptr %l8, !tbaa !21
  store i1 %t13, ptr %l6, !tbaa !21
  br label %bb9
bb9:
  %t14 = load i1, ptr %l6, !tbaa !21
  br i1 %t14, label %bb10, label %bb11
bb10:
  store i1 true, ptr %l9, !tbaa !21
  br label %bb13
bb11:
  %t15 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t17 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %v0, ptr %s0, { i64, ptr } %t15, { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d33, i32 0, i32 1) })
  store i1 %t17, ptr %l11
  br label %bb12
bb12:
  %t18 = load i1, ptr %l11, !tbaa !21
  store i1 %t18, ptr %l9, !tbaa !21
  br label %bb13
bb13:
  %t19 = load i1, ptr %l9, !tbaa !21
  br i1 %t19, label %bb14, label %bb15
bb14:
  store i1 true, ptr %l12, !tbaa !21
  br label %bb17
bb15:
  %t20 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t22 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %v0, ptr %s0, { i64, ptr } %t20, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d34, i32 0, i32 1) })
  store i1 %t22, ptr %l14
  br label %bb16
bb16:
  %t23 = load i1, ptr %l14, !tbaa !21
  store i1 %t23, ptr %l12, !tbaa !21
  br label %bb17
bb17:
  call void @__olang_scope_close(ptr %s0)
  %t24 = load i1, ptr %l12, !tbaa !21
  store i1 %t24, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local { { i64, ptr }, i64 } @compiler_2fcabi_2eintAt(ptr %v0, ptr %v1, ptr %a0, i64 %a1, i64 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l3 = alloca i64
  %l4 = alloca %"compiler/cabi:Scalar"
  %l5 = alloca i64
  %l8 = alloca i64
  %l11 = alloca i1
  %l15 = alloca %"compiler/cabi:Scalar"
  %l20 = alloca %"compiler/cabi:Scalar"
  %l22 = alloca i1
  %l23 = alloca i1
  %l28 = alloca { { i64, ptr }, i64 }
  %l29 = alloca { i64, ptr }
  %l30 = alloca i64
  %l31 = alloca { i64, ptr }
  %l38 = alloca i1
  %l48 = alloca i64
  %s0 = alloca %olang.scope
  %s1 = alloca %olang.scope
  %rv = alloca { { i64, ptr }, i64 }
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load i64, ptr %l1, !tbaa !24
  %t5 = call i64 @compiler_2fcabi_2eat(ptr %v0, ptr %t1, i64 %t2)
  store i64 %t5, ptr %l8
  br label %bb1
bb1:
  %t6 = load i64, ptr %l8, !tbaa !24
  store i64 %t6, ptr %l3, !tbaa !24
  %t7 = load i64, ptr %l3, !tbaa !24
  %t9 = icmp sge i64 %t7, 0
  br i1 %t9, label %bb2, label %bb3
bb2:
  %t11 = load ptr, ptr %l0, !tbaa !29
  %t13 = load i64, ptr %l3, !tbaa !24
  %t16 = call %"compiler/cabi:Scalar" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcabi_3aScalar_3e_2eAt_3ccompiler_2fcabi_3aScalar_3e(ptr %v0, ptr %s0, ptr %t11, i64 %t13)
  store %"compiler/cabi:Scalar" %t16, ptr %l15
  br label %bb4
bb3:
  store i1 false, ptr %l11, !tbaa !21
  br label %bb5
bb4:
  %t17 = getelementptr %"compiler/cabi:Scalar", ptr %l15, i32 0, i32 3
  %t18 = load i1, ptr %t17, !tbaa !21
  %t20 = xor i1 %t18, true
  store i1 %t20, ptr %l11, !tbaa !21
  br label %bb5
bb5:
  %t22 = load i1, ptr %l11, !tbaa !21
  br i1 %t22, label %bb6, label %bb7
bb6:
  store %olang.scope zeroinitializer, ptr %s1
  %t23 = load ptr, ptr %l0, !tbaa !29
  %t24 = load i64, ptr %l3, !tbaa !24
  %t27 = call %"compiler/cabi:Scalar" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcabi_3aScalar_3e_2eAt_3ccompiler_2fcabi_3aScalar_3e(ptr %v0, ptr %v0, ptr %t23, i64 %t24)
  store %"compiler/cabi:Scalar" %t27, ptr %l20
  br label %bb8
bb7:
  br label %bb20
bb8:
  %t28 = load %"compiler/cabi:Scalar", ptr %l20
  store %"compiler/cabi:Scalar" %t28, ptr %l4
  %t29 = getelementptr %"compiler/cabi:Scalar", ptr %l4, i32 0, i32 2
  %t30 = load { i64, ptr }, ptr %t29, !tbaa !27
  %t32 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s1, { i64, ptr } %t30, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d35, i32 0, i32 1) })
  store i1 %t32, ptr %l22
  br label %bb9
bb9:
  %t33 = load i1, ptr %l22, !tbaa !21
  br i1 %t33, label %bb10, label %bb11
bb10:
  store i1 true, ptr %l23, !tbaa !21
  br label %bb12
bb11:
  %t34 = getelementptr %"compiler/cabi:Scalar", ptr %l4, i32 0, i32 1
  %t35 = load i64, ptr %t34, !tbaa !24
  %t37 = icmp eq i64 %t35, 8
  store i1 %t37, ptr %l23, !tbaa !21
  br label %bb12
bb12:
  %t39 = load i1, ptr %l23, !tbaa !21
  br i1 %t39, label %bb13, label %bb14
bb13:
  %t40 = getelementptr %"compiler/cabi:Scalar", ptr %l4, i32 0, i32 2
  %t41 = load { i64, ptr }, ptr %t40, !tbaa !27
  %t44 = insertvalue { { i64, ptr }, i64 } undef, { i64, ptr } %t41, 0
  %t45 = insertvalue { { i64, ptr }, i64 } %t44, i64 8, 1
  store { { i64, ptr }, i64 } %t45, ptr %l28
  %t46 = getelementptr { { i64, ptr }, i64 }, ptr %l28, i32 0, i32 0
  %t47 = load { i64, ptr }, ptr %t46, !tbaa !27
  store { i64, ptr } %t47, ptr %l29, !tbaa !27
  %t48 = load { i64, ptr }, ptr %l29, !tbaa !27
  %t49 = extractvalue { i64, ptr } %t48, 0
  store i64 %t49, ptr %l30, !tbaa !24
  %t50 = load i64, ptr %l30, !tbaa !24
  %t51 = mul i64 %t50, 1
  %t52 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t51)
  %t53 = insertvalue { i64, ptr } undef, i64 %t50, 0
  %t54 = insertvalue { i64, ptr } %t53, ptr %t52, 1
  store { i64, ptr } %t54, ptr %l31, !tbaa !27
  %t55 = getelementptr { i64, ptr }, ptr %l31, i32 0, i32 1
  %t56 = load ptr, ptr %t55, !tbaa !27
  %t57 = getelementptr { i64, ptr }, ptr %l29, i32 0, i32 1
  %t58 = load ptr, ptr %t57, !tbaa !27
  %t59 = load i64, ptr %l30, !tbaa !24
  %t60 = mul i64 %t59, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t56, ptr %t58, i64 %t60, i1 false)
  %t61 = load { i64, ptr }, ptr %l31, !tbaa !27
  %t62 = getelementptr { { i64, ptr }, i64 }, ptr %l28, i32 0, i32 0
  store { i64, ptr } %t61, ptr %t62, !tbaa !27
  call void @__olang_scope_close(ptr %s1)
  call void @__olang_scope_close(ptr %s0)
  %t63 = load { { i64, ptr }, i64 }, ptr %l28
  store { { i64, ptr }, i64 } %t63, ptr %rv
  br label %ret
bb14:
  br label %bb15
bb15:
  %t64 = load ptr, ptr %l0, !tbaa !29
  %t65 = load i64, ptr %l1, !tbaa !24
  %t66 = getelementptr %"compiler/cabi:Scalar", ptr %l4, i32 0, i32 1
  %t67 = load i64, ptr %t66, !tbaa !24
  %t70 = add i64 %t65, %t67
  %t71 = load i64, ptr %l1, !tbaa !24
  %t73 = add i64 %t71, 8
  %t77 = call i1 @compiler_2fcabi_2edata(ptr %v0, ptr %t64, i64 %t70, i64 %t73)
  store i1 %t77, ptr %l38
  br label %bb16
bb16:
  %t78 = load i1, ptr %l38, !tbaa !21
  %t79 = xor i1 %t78, true
  br i1 %t79, label %bb17, label %bb18
bb17:
  %t81 = getelementptr %"compiler/cabi:Scalar", ptr %l4, i32 0, i32 1
  %t82 = load i64, ptr %t81, !tbaa !24
  %t84 = mul i64 %t82, 8
  %t85 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d36, i32 0, i32 1) }, 1
  %t86 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d36, i32 0, i32 1) }, 0
  %t88 = call i64 @__olang_fmt_i64(ptr null, i64 %t84)
  %t89 = add i64 %t86, %t88
  %t90 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t89)
  call void @olang_textcopy(ptr %t90, ptr %t85, i64 %t86)
  %t91 = getelementptr i8, ptr %t90, i64 %t86
  %t92 = call i64 @__olang_fmt_i64(ptr %t91, i64 %t84)
  %t93 = insertvalue { i64, ptr } undef, i64 %t89, 0
  %t94 = insertvalue { i64, ptr } %t93, ptr %t90, 1
  %t95 = getelementptr %"compiler/cabi:Scalar", ptr %l4, i32 0, i32 1
  %t96 = load i64, ptr %t95, !tbaa !24
  %t98 = insertvalue { { i64, ptr }, i64 } undef, { i64, ptr } %t94, 0
  %t100 = insertvalue { { i64, ptr }, i64 } %t98, i64 %t96, 1
  call void @__olang_scope_close(ptr %s1)
  call void @__olang_scope_close(ptr %s0)
  store { { i64, ptr }, i64 } %t100, ptr %rv
  br label %ret
bb18:
  br label %bb19
bb19:
  call void @__olang_scope_close(ptr %s1)
  br label %bb20
bb20:
  %t103 = load i64, ptr %l1, !tbaa !24
  %t106 = sub i64 %a2, %t103
  %t108 = call i64 @std_2fprelude_2fnumber_2eI64_2eMin_3cI64_3e(i64 %t106, i64 8)
  store i64 %t108, ptr %l48
  br label %bb21
bb21:
  %t109 = load i64, ptr %l48, !tbaa !24
  store i64 %t109, ptr %l5, !tbaa !24
  %t110 = load i64, ptr %l5, !tbaa !24
  %t112 = mul i64 %t110, 8
  %t113 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d37, i32 0, i32 1) }, 1
  %t114 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d37, i32 0, i32 1) }, 0
  %t116 = call i64 @__olang_fmt_i64(ptr null, i64 %t112)
  %t117 = add i64 %t114, %t116
  %t118 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t117)
  call void @olang_textcopy(ptr %t118, ptr %t113, i64 %t114)
  %t119 = getelementptr i8, ptr %t118, i64 %t114
  %t120 = call i64 @__olang_fmt_i64(ptr %t119, i64 %t112)
  %t121 = insertvalue { i64, ptr } undef, i64 %t117, 0
  %t122 = insertvalue { i64, ptr } %t121, ptr %t118, 1
  %t123 = load i64, ptr %l5, !tbaa !24
  %t125 = insertvalue { { i64, ptr }, i64 } undef, { i64, ptr } %t122, 0
  %t127 = insertvalue { { i64, ptr }, i64 } %t125, i64 %t123, 1
  call void @__olang_scope_close(ptr %s0)
  store { { i64, ptr }, i64 } %t127, ptr %rv
  br label %ret
ret:
  %rr = load { { i64, ptr }, i64 }, ptr %rv
  ret { { i64, ptr }, i64 } %rr
}

define dso_local { { i64, ptr }, i64 } @compiler_2fcabi_2esseAt(ptr %v0, ptr %v1, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca i64
  %l3 = alloca { i64, ptr }
  %l4 = alloca { i64, ptr }
  %l5 = alloca ptr
  %l6 = alloca i64
  %l7 = alloca %"compiler/cabi:Scalar"
  %l8 = alloca i64
  %l11 = alloca i64
  %l14 = alloca { i64, ptr }
  %l18 = alloca %"compiler/cabi:Scalar"
  %l20 = alloca { i64, ptr }
  %l21 = alloca { i64, ptr }
  %l22 = alloca i64
  %l23 = alloca { i64, ptr }
  %l25 = alloca i64
  %l27 = alloca i64
  %l32 = alloca %"compiler/cabi:Scalar"
  %l36 = alloca i1
  %l41 = alloca i1
  %l44 = alloca i1
  %l46 = alloca i1
  %l48 = alloca { i64, ptr }
  %l50 = alloca i64
  %l59 = alloca i1
  %l62 = alloca i1
  %l63 = alloca i1
  %l65 = alloca i1
  %l71 = alloca i1
  %l75 = alloca { { i64, ptr }, i64 }
  %l76 = alloca { i64, ptr }
  %l77 = alloca i64
  %l78 = alloca { i64, ptr }
  %l84 = alloca { { i64, ptr }, i64 }
  %l85 = alloca { i64, ptr }
  %l86 = alloca i64
  %l87 = alloca { i64, ptr }
  %l89 = alloca i1
  %l97 = alloca i64
  %l99 = alloca i1
  %l100 = alloca i1
  %l103 = alloca i1
  %l107 = alloca %"compiler/cabi:Scalar"
  %l109 = alloca i1
  %l110 = alloca { i64, ptr }
  %l112 = alloca { { i64, ptr }, i64 }
  %l113 = alloca { i64, ptr }
  %l114 = alloca i64
  %l115 = alloca { i64, ptr }
  %l118 = alloca { { i64, ptr }, i64 }
  %l119 = alloca { i64, ptr }
  %l120 = alloca i64
  %l121 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %s2 = alloca %olang.scope
  %s6 = alloca %olang.scope
  %rv = alloca { { i64, ptr }, i64 }
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load i64, ptr %l1, !tbaa !24
  %t5 = call i64 @compiler_2fcabi_2eat(ptr %v0, ptr %t1, i64 %t2)
  store i64 %t5, ptr %l11
  br label %bb1
bb1:
  %t6 = load i64, ptr %l11, !tbaa !24
  store i64 %t6, ptr %l2, !tbaa !24
  %t7 = load i64, ptr %l2, !tbaa !24
  %t9 = icmp sge i64 %t7, 0
  br i1 %t9, label %bb2, label %bb3
bb2:
  %t11 = load ptr, ptr %l0, !tbaa !29
  %t13 = load i64, ptr %l2, !tbaa !24
  %t16 = call %"compiler/cabi:Scalar" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcabi_3aScalar_3e_2eAt_3ccompiler_2fcabi_3aScalar_3e(ptr %v0, ptr %v0, ptr %t11, i64 %t13)
  store %"compiler/cabi:Scalar" %t16, ptr %l18
  br label %bb4
bb3:
  store { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d38, i32 0, i32 1) }, ptr %l14, !tbaa !27
  br label %bb5
bb4:
  %t17 = getelementptr %"compiler/cabi:Scalar", ptr %l18, i32 0, i32 2
  %t18 = load { i64, ptr }, ptr %t17, !tbaa !27
  store { i64, ptr } %t18, ptr %l14, !tbaa !27
  br label %bb5
bb5:
  %t20 = load { i64, ptr }, ptr %l14, !tbaa !27
  store { i64, ptr } %t20, ptr %l3, !tbaa !27
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d39, i32 0, i32 1) }, ptr %l20, !tbaa !27
  %t21 = load { i64, ptr }, ptr %l20, !tbaa !27
  store { i64, ptr } %t21, ptr %l21, !tbaa !27
  %t22 = load { i64, ptr }, ptr %l21, !tbaa !27
  %t23 = extractvalue { i64, ptr } %t22, 0
  store i64 %t23, ptr %l22, !tbaa !24
  %t24 = load i64, ptr %l22, !tbaa !24
  %t25 = mul i64 %t24, 1
  %t26 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t25)
  %t27 = insertvalue { i64, ptr } undef, i64 %t24, 0
  %t28 = insertvalue { i64, ptr } %t27, ptr %t26, 1
  store { i64, ptr } %t28, ptr %l23, !tbaa !27
  %t29 = getelementptr { i64, ptr }, ptr %l23, i32 0, i32 1
  %t30 = load ptr, ptr %t29, !tbaa !27
  %t31 = getelementptr { i64, ptr }, ptr %l21, i32 0, i32 1
  %t32 = load ptr, ptr %t31, !tbaa !27
  %t33 = load i64, ptr %l22, !tbaa !24
  %t34 = mul i64 %t33, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t30, ptr %t32, i64 %t34, i1 false)
  %t35 = load { i64, ptr }, ptr %l23, !tbaa !27
  store { i64, ptr } %t35, ptr %l4, !tbaa !27
  %t36 = load ptr, ptr %l0, !tbaa !29
  store ptr %t36, ptr %l5, !tbaa !29
  store i64 0, ptr %l6, !tbaa !24
  br label %bb6
bb6:
  store %olang.scope zeroinitializer, ptr %s2
  %t38 = load i64, ptr %l6, !tbaa !24
  store i64 %t38, ptr %l25, !tbaa !24
  %t39 = load ptr, ptr %l5, !tbaa !29
  %t41 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcabi_3aScalar_3e_2eLen_3ccompiler_2fcabi_3aScalar_3e(ptr %v0, ptr %t39)
  store i64 %t41, ptr %l27
  br label %bb7
bb7:
  %t42 = load i64, ptr %l25, !tbaa !24
  %t43 = load i64, ptr %l27, !tbaa !24
  %t44 = icmp slt i64 %t42, %t43
  %t46 = xor i1 %t44, true
  br i1 %t46, label %bb8, label %bb9
bb8:
  call void @__olang_scope_close(ptr %s2)
  br label %bb29
bb9:
  br label %bb10
bb10:
  %t48 = load ptr, ptr %l5, !tbaa !29
  %t49 = load i64, ptr %l6, !tbaa !24
  %t52 = call %"compiler/cabi:Scalar" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcabi_3aScalar_3e_2eAt_3ccompiler_2fcabi_3aScalar_3e(ptr %v0, ptr %v0, ptr %t48, i64 %t49)
  store %"compiler/cabi:Scalar" %t52, ptr %l32
  br label %bb11
bb11:
  %t53 = load %"compiler/cabi:Scalar", ptr %l32
  store %"compiler/cabi:Scalar" %t53, ptr %l7
  %t54 = getelementptr %"compiler/cabi:Scalar", ptr %l7, i32 0, i32 0
  %t55 = load i64, ptr %t54, !tbaa !24
  %t56 = load i64, ptr %l1, !tbaa !24
  %t59 = icmp sge i64 %t55, %t56
  br i1 %t59, label %bb12, label %bb13
bb12:
  %t61 = getelementptr %"compiler/cabi:Scalar", ptr %l7, i32 0, i32 0
  %t62 = load i64, ptr %t61, !tbaa !24
  %t63 = load i64, ptr %l1, !tbaa !24
  %t65 = add i64 %t63, 8
  %t68 = icmp slt i64 %t62, %t65
  store i1 %t68, ptr %l36, !tbaa !21
  br label %bb14
bb13:
  store i1 false, ptr %l36, !tbaa !21
  br label %bb14
bb14:
  %t70 = load i1, ptr %l36, !tbaa !21
  br i1 %t70, label %bb15, label %bb16
bb15:
  %t71 = getelementptr %"compiler/cabi:Scalar", ptr %l7, i32 0, i32 1
  %t72 = load i64, ptr %t71, !tbaa !24
  %t74 = icmp eq i64 %t72, 2
  store i1 %t74, ptr %l41, !tbaa !21
  br label %bb17
bb16:
  store i1 false, ptr %l41, !tbaa !21
  br label %bb17
bb17:
  %t76 = load i1, ptr %l41, !tbaa !21
  br i1 %t76, label %bb18, label %bb19
bb18:
  %t77 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t79 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %s2, { i64, ptr } %t77, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d40, i32 0, i32 1) })
  store i1 %t79, ptr %l46
  br label %bb20
bb19:
  store i1 false, ptr %l44, !tbaa !21
  br label %bb21
bb20:
  %t80 = load i1, ptr %l46, !tbaa !21
  store i1 %t80, ptr %l44, !tbaa !21
  br label %bb21
bb21:
  %t81 = load i1, ptr %l44, !tbaa !21
  br i1 %t81, label %bb22, label %bb23
bb22:
  %t82 = getelementptr %"compiler/cabi:Scalar", ptr %l7, i32 0, i32 2
  %t83 = load { i64, ptr }, ptr %t82, !tbaa !27
  %t85 = extractvalue { i64, ptr } %t83, 1
  %t86 = extractvalue { i64, ptr } %t83, 0
  %t87 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t86)
  call void @olang_textcopy(ptr %t87, ptr %t85, i64 %t86)
  %t88 = insertvalue { i64, ptr } undef, i64 %t86, 0
  %t89 = insertvalue { i64, ptr } %t88, ptr %t87, 1
  store { i64, ptr } %t89, ptr %l48, !tbaa !27
  %t90 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t91 = extractvalue { i64, ptr } %t90, 0
  %t92 = load { i64, ptr }, ptr %l48, !tbaa !27
  %t93 = extractvalue { i64, ptr } %t92, 0
  store i64 %t93, ptr %l50, !tbaa !24
  %t95 = load i64, ptr %l50, !tbaa !24
  %t96 = icmp eq i64 %t91, %t95
  br i1 %t96, label %bb24, label %bb25
bb23:
  br label %bb27
bb24:
  %t98 = getelementptr { i64, ptr }, ptr %l4, i32 0, i32 1
  %t99 = load ptr, ptr %t98, !tbaa !27
  %t100 = getelementptr { i64, ptr }, ptr %l48, i32 0, i32 1
  %t101 = load ptr, ptr %t100, !tbaa !27
  %t102 = load i64, ptr %l50, !tbaa !24
  %t103 = mul i64 %t102, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t99, ptr %t101, i64 %t103, i1 false)
  br label %bb26
bb25:
  %t104 = load { i64, ptr }, ptr %l48, !tbaa !27
  store { i64, ptr } %t104, ptr %l4, !tbaa !27
  br label %bb26
bb26:
  br label %bb27
bb27:
  call void @__olang_scope_close(ptr %s2)
  br label %bb28
bb28:
  %t105 = load i64, ptr %l6, !tbaa !24
  %t107 = add i64 %t105, 1
  store i64 %t107, ptr %l6, !tbaa !24
  br label %bb6
bb29:
  %t109 = load ptr, ptr %l0, !tbaa !29
  %t110 = load i64, ptr %l1, !tbaa !24
  %t112 = add i64 %t110, 4
  %t113 = load i64, ptr %l1, !tbaa !24
  %t115 = add i64 %t113, 8
  %t119 = call i1 @compiler_2fcabi_2edata(ptr %v0, ptr %t109, i64 %t112, i64 %t115)
  store i1 %t119, ptr %l59
  br label %bb30
bb30:
  %t120 = load i1, ptr %l59, !tbaa !21
  %t121 = xor i1 %t120, true
  br i1 %t121, label %bb31, label %bb32
bb31:
  store %olang.scope zeroinitializer, ptr %s6
  %t123 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t125 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s6, { i64, ptr } %t123, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d41, i32 0, i32 1) })
  store i1 %t125, ptr %l62
  br label %bb33
bb32:
  br label %bb45
bb33:
  %t126 = load i1, ptr %l62, !tbaa !21
  br i1 %t126, label %bb34, label %bb35
bb34:
  store i1 true, ptr %l63, !tbaa !21
  br label %bb37
bb35:
  %t127 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t129 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s6, { i64, ptr } %t127, { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d42, i32 0, i32 1) })
  store i1 %t129, ptr %l65
  br label %bb36
bb36:
  %t130 = load i1, ptr %l65, !tbaa !21
  store i1 %t130, ptr %l63, !tbaa !21
  br label %bb37
bb37:
  %t131 = load i1, ptr %l63, !tbaa !21
  br i1 %t131, label %bb38, label %bb39
bb38:
  %t132 = load ptr, ptr %l0, !tbaa !29
  %t133 = load i64, ptr %l1, !tbaa !24
  %t135 = add i64 %t133, 2
  %t136 = load i64, ptr %l1, !tbaa !24
  %t138 = add i64 %t136, 4
  %t142 = call i1 @compiler_2fcabi_2edata(ptr %v0, ptr %t132, i64 %t135, i64 %t138)
  store i1 %t142, ptr %l71
  br label %bb40
bb39:
  br label %bb44
bb40:
  %t143 = load i1, ptr %l71, !tbaa !21
  %t144 = xor i1 %t143, true
  br i1 %t144, label %bb41, label %bb42
bb41:
  %t146 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t149 = insertvalue { { i64, ptr }, i64 } undef, { i64, ptr } %t146, 0
  %t150 = insertvalue { { i64, ptr }, i64 } %t149, i64 2, 1
  store { { i64, ptr }, i64 } %t150, ptr %l75
  %t151 = getelementptr { { i64, ptr }, i64 }, ptr %l75, i32 0, i32 0
  %t152 = load { i64, ptr }, ptr %t151, !tbaa !27
  store { i64, ptr } %t152, ptr %l76, !tbaa !27
  %t153 = load { i64, ptr }, ptr %l76, !tbaa !27
  %t154 = extractvalue { i64, ptr } %t153, 0
  store i64 %t154, ptr %l77, !tbaa !24
  %t155 = load i64, ptr %l77, !tbaa !24
  %t156 = mul i64 %t155, 1
  %t157 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t156)
  %t158 = insertvalue { i64, ptr } undef, i64 %t155, 0
  %t159 = insertvalue { i64, ptr } %t158, ptr %t157, 1
  store { i64, ptr } %t159, ptr %l78, !tbaa !27
  %t160 = getelementptr { i64, ptr }, ptr %l78, i32 0, i32 1
  %t161 = load ptr, ptr %t160, !tbaa !27
  %t162 = getelementptr { i64, ptr }, ptr %l76, i32 0, i32 1
  %t163 = load ptr, ptr %t162, !tbaa !27
  %t164 = load i64, ptr %l77, !tbaa !24
  %t165 = mul i64 %t164, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t161, ptr %t163, i64 %t165, i1 false)
  %t166 = load { i64, ptr }, ptr %l78, !tbaa !27
  %t167 = getelementptr { { i64, ptr }, i64 }, ptr %l75, i32 0, i32 0
  store { i64, ptr } %t166, ptr %t167, !tbaa !27
  call void @__olang_scope_close(ptr %s6)
  call void @__olang_scope_close(ptr %s0)
  %t168 = load { { i64, ptr }, i64 }, ptr %l75
  store { { i64, ptr }, i64 } %t168, ptr %rv
  br label %ret
bb42:
  br label %bb43
bb43:
  %t169 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t170 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d43, i32 0, i32 1) }, 1
  %t171 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d43, i32 0, i32 1) }, 0
  %t173 = extractvalue { i64, ptr } %t169, 1
  %t174 = extractvalue { i64, ptr } %t169, 0
  %t175 = add i64 %t171, %t174
  %t176 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d44, i32 0, i32 1) }, 1
  %t177 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d44, i32 0, i32 1) }, 0
  %t178 = add i64 %t175, %t177
  %t179 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t178)
  call void @olang_textcopy(ptr %t179, ptr %t170, i64 %t171)
  %t180 = getelementptr i8, ptr %t179, i64 %t171
  call void @olang_textcopy(ptr %t180, ptr %t173, i64 %t174)
  %t181 = getelementptr i8, ptr %t180, i64 %t174
  call void @olang_textcopy(ptr %t181, ptr %t176, i64 %t177)
  %t182 = insertvalue { i64, ptr } undef, i64 %t178, 0
  %t183 = insertvalue { i64, ptr } %t182, ptr %t179, 1
  %t185 = insertvalue { { i64, ptr }, i64 } undef, { i64, ptr } %t183, 0
  %t186 = insertvalue { { i64, ptr }, i64 } %t185, i64 4, 1
  call void @__olang_scope_close(ptr %s6)
  call void @__olang_scope_close(ptr %s0)
  store { { i64, ptr }, i64 } %t186, ptr %rv
  br label %ret
bb44:
  %t188 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t191 = insertvalue { { i64, ptr }, i64 } undef, { i64, ptr } %t188, 0
  %t192 = insertvalue { { i64, ptr }, i64 } %t191, i64 4, 1
  store { { i64, ptr }, i64 } %t192, ptr %l84
  %t193 = getelementptr { { i64, ptr }, i64 }, ptr %l84, i32 0, i32 0
  %t194 = load { i64, ptr }, ptr %t193, !tbaa !27
  store { i64, ptr } %t194, ptr %l85, !tbaa !27
  %t195 = load { i64, ptr }, ptr %l85, !tbaa !27
  %t196 = extractvalue { i64, ptr } %t195, 0
  store i64 %t196, ptr %l86, !tbaa !24
  %t197 = load i64, ptr %l86, !tbaa !24
  %t198 = mul i64 %t197, 1
  %t199 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t198)
  %t200 = insertvalue { i64, ptr } undef, i64 %t197, 0
  %t201 = insertvalue { i64, ptr } %t200, ptr %t199, 1
  store { i64, ptr } %t201, ptr %l87, !tbaa !27
  %t202 = getelementptr { i64, ptr }, ptr %l87, i32 0, i32 1
  %t203 = load ptr, ptr %t202, !tbaa !27
  %t204 = getelementptr { i64, ptr }, ptr %l85, i32 0, i32 1
  %t205 = load ptr, ptr %t204, !tbaa !27
  %t206 = load i64, ptr %l86, !tbaa !24
  %t207 = mul i64 %t206, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t203, ptr %t205, i64 %t207, i1 false)
  %t208 = load { i64, ptr }, ptr %l87, !tbaa !27
  %t209 = getelementptr { { i64, ptr }, i64 }, ptr %l84, i32 0, i32 0
  store { i64, ptr } %t208, ptr %t209, !tbaa !27
  call void @__olang_scope_close(ptr %s6)
  call void @__olang_scope_close(ptr %s0)
  %t210 = load { { i64, ptr }, i64 }, ptr %l84
  store { { i64, ptr }, i64 } %t210, ptr %rv
  br label %ret
bb45:
  %t211 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t213 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %s0, { i64, ptr } %t211, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d45, i32 0, i32 1) })
  store i1 %t213, ptr %l89
  br label %bb46
bb46:
  %t214 = load i1, ptr %l89, !tbaa !21
  %t215 = xor i1 %t214, true
  br i1 %t215, label %bb47, label %bb48
bb47:
  %t217 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t218 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d46, i32 0, i32 1) }, 1
  %t219 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d46, i32 0, i32 1) }, 0
  %t221 = extractvalue { i64, ptr } %t217, 1
  %t222 = extractvalue { i64, ptr } %t217, 0
  %t223 = add i64 %t219, %t222
  %t224 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d47, i32 0, i32 1) }, 1
  %t225 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d47, i32 0, i32 1) }, 0
  %t226 = add i64 %t223, %t225
  %t227 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t226)
  call void @olang_textcopy(ptr %t227, ptr %t218, i64 %t219)
  %t228 = getelementptr i8, ptr %t227, i64 %t219
  call void @olang_textcopy(ptr %t228, ptr %t221, i64 %t222)
  %t229 = getelementptr i8, ptr %t228, i64 %t222
  call void @olang_textcopy(ptr %t229, ptr %t224, i64 %t225)
  %t230 = insertvalue { i64, ptr } undef, i64 %t226, 0
  %t231 = insertvalue { i64, ptr } %t230, ptr %t227, 1
  %t233 = insertvalue { { i64, ptr }, i64 } undef, { i64, ptr } %t231, 0
  %t234 = insertvalue { { i64, ptr }, i64 } %t233, i64 8, 1
  call void @__olang_scope_close(ptr %s0)
  store { { i64, ptr }, i64 } %t234, ptr %rv
  br label %ret
bb48:
  br label %bb49
bb49:
  %t236 = load ptr, ptr %l0, !tbaa !29
  %t237 = load i64, ptr %l1, !tbaa !24
  %t239 = add i64 %t237, 4
  %t242 = call i64 @compiler_2fcabi_2eat(ptr %v0, ptr %t236, i64 %t239)
  store i64 %t242, ptr %l97
  br label %bb50
bb50:
  %t243 = load i64, ptr %l97, !tbaa !24
  store i64 %t243, ptr %l8, !tbaa !24
  %t244 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t246 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t244, { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d48, i32 0, i32 1) })
  store i1 %t246, ptr %l99
  br label %bb51
bb51:
  %t247 = load i1, ptr %l99, !tbaa !21
  br i1 %t247, label %bb52, label %bb53
bb52:
  %t248 = load i64, ptr %l8, !tbaa !24
  %t250 = icmp sge i64 %t248, 0
  store i1 %t250, ptr %l100, !tbaa !21
  br label %bb54
bb53:
  store i1 false, ptr %l100, !tbaa !21
  br label %bb54
bb54:
  %t252 = load i1, ptr %l100, !tbaa !21
  br i1 %t252, label %bb55, label %bb56
bb55:
  %t253 = load ptr, ptr %l0, !tbaa !29
  %t255 = load i64, ptr %l8, !tbaa !24
  %t258 = call %"compiler/cabi:Scalar" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcabi_3aScalar_3e_2eAt_3ccompiler_2fcabi_3aScalar_3e(ptr %v0, ptr %v0, ptr %t253, i64 %t255)
  store %"compiler/cabi:Scalar" %t258, ptr %l107
  br label %bb57
bb56:
  store i1 false, ptr %l103, !tbaa !21
  br label %bb59
bb57:
  %t259 = getelementptr %"compiler/cabi:Scalar", ptr %l107, i32 0, i32 2
  %t260 = load { i64, ptr }, ptr %t259, !tbaa !27
  %t262 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t260, { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d49, i32 0, i32 1) })
  store i1 %t262, ptr %l109
  br label %bb58
bb58:
  %t263 = load i1, ptr %l109, !tbaa !21
  store i1 %t263, ptr %l103, !tbaa !21
  br label %bb59
bb59:
  %t264 = load i1, ptr %l103, !tbaa !21
  br i1 %t264, label %bb60, label %bb61
bb60:
  store { i64, ptr } { i64 11, ptr getelementptr inbounds (<{ i64, [11 x i8] }>, ptr @.d50, i32 0, i32 1) }, ptr %l110, !tbaa !27
  %t265 = load { i64, ptr }, ptr %l110, !tbaa !27
  %t267 = insertvalue { { i64, ptr }, i64 } undef, { i64, ptr } %t265, 0
  %t268 = insertvalue { { i64, ptr }, i64 } %t267, i64 8, 1
  store { { i64, ptr }, i64 } %t268, ptr %l112
  %t269 = getelementptr { { i64, ptr }, i64 }, ptr %l112, i32 0, i32 0
  %t270 = load { i64, ptr }, ptr %t269, !tbaa !27
  store { i64, ptr } %t270, ptr %l113, !tbaa !27
  %t271 = load { i64, ptr }, ptr %l113, !tbaa !27
  %t272 = extractvalue { i64, ptr } %t271, 0
  store i64 %t272, ptr %l114, !tbaa !24
  %t273 = load i64, ptr %l114, !tbaa !24
  %t274 = mul i64 %t273, 1
  %t275 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t274)
  %t276 = insertvalue { i64, ptr } undef, i64 %t273, 0
  %t277 = insertvalue { i64, ptr } %t276, ptr %t275, 1
  store { i64, ptr } %t277, ptr %l115, !tbaa !27
  %t278 = getelementptr { i64, ptr }, ptr %l115, i32 0, i32 1
  %t279 = load ptr, ptr %t278, !tbaa !27
  %t280 = getelementptr { i64, ptr }, ptr %l113, i32 0, i32 1
  %t281 = load ptr, ptr %t280, !tbaa !27
  %t282 = load i64, ptr %l114, !tbaa !24
  %t283 = mul i64 %t282, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t279, ptr %t281, i64 %t283, i1 false)
  %t284 = load { i64, ptr }, ptr %l115, !tbaa !27
  %t285 = getelementptr { { i64, ptr }, i64 }, ptr %l112, i32 0, i32 0
  store { i64, ptr } %t284, ptr %t285, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  %t286 = load { { i64, ptr }, i64 }, ptr %l112
  store { { i64, ptr }, i64 } %t286, ptr %rv
  br label %ret
bb61:
  br label %bb62
bb62:
  %t287 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t290 = insertvalue { { i64, ptr }, i64 } undef, { i64, ptr } %t287, 0
  %t291 = insertvalue { { i64, ptr }, i64 } %t290, i64 8, 1
  store { { i64, ptr }, i64 } %t291, ptr %l118
  %t292 = getelementptr { { i64, ptr }, i64 }, ptr %l118, i32 0, i32 0
  %t293 = load { i64, ptr }, ptr %t292, !tbaa !27
  store { i64, ptr } %t293, ptr %l119, !tbaa !27
  %t294 = load { i64, ptr }, ptr %l119, !tbaa !27
  %t295 = extractvalue { i64, ptr } %t294, 0
  store i64 %t295, ptr %l120, !tbaa !24
  %t296 = load i64, ptr %l120, !tbaa !24
  %t297 = mul i64 %t296, 1
  %t298 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t297)
  %t299 = insertvalue { i64, ptr } undef, i64 %t296, 0
  %t300 = insertvalue { i64, ptr } %t299, ptr %t298, 1
  store { i64, ptr } %t300, ptr %l121, !tbaa !27
  %t301 = getelementptr { i64, ptr }, ptr %l121, i32 0, i32 1
  %t302 = load ptr, ptr %t301, !tbaa !27
  %t303 = getelementptr { i64, ptr }, ptr %l119, i32 0, i32 1
  %t304 = load ptr, ptr %t303, !tbaa !27
  %t305 = load i64, ptr %l120, !tbaa !24
  %t306 = mul i64 %t305, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t302, ptr %t304, i64 %t306, i1 false)
  %t307 = load { i64, ptr }, ptr %l121, !tbaa !27
  %t308 = getelementptr { { i64, ptr }, i64 }, ptr %l118, i32 0, i32 0
  store { i64, ptr } %t307, ptr %t308, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  %t309 = load { { i64, ptr }, i64 }, ptr %l118
  store { { i64, ptr }, i64 } %t309, ptr %rv
  br label %ret
ret:
  %rr = load { { i64, ptr }, i64 }, ptr %rv
  ret { { i64, ptr }, i64 } %rr
}

define dso_local { i64, ptr } @compiler_2fcabi_2etestDecl(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, { i64, ptr } %a1, i32 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca { i64, ptr }
  %l2 = alloca i32
  %l3 = alloca %"compiler/cabi:Way"
  %l4 = alloca %"compiler/cabi:Regs"
  %l5 = alloca i32
  %l6 = alloca { i64, ptr }
  %l7 = alloca %"std/prelude/text:StringBuilder"
  %l8 = alloca %"compiler/cabi:Way"
  %l9 = alloca i32
  %l13 = alloca %"compiler/cabi:Way"
  %l14 = alloca %"compiler/cabi:Regs"
  %l16 = alloca { i64, ptr }
  %l21 = alloca { i64, ptr }
  %l26 = alloca { i64, ptr }
  %l27 = alloca { i64, ptr }
  %l29 = alloca i64
  %l30 = alloca { i64, ptr }
  %l31 = alloca %"std/prelude/text:StringBuilder"
  %l41 = alloca %"compiler/cabi:Way"
  %l42 = alloca ptr
  %l44 = alloca { i64, ptr }
  %l49 = alloca { i64, ptr }
  %l55 = alloca { i64, ptr }
  %l63 = alloca { i64, ptr }
  %l65 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %s1 = alloca %olang.scope
  %s5 = alloca %olang.scope
  %s6 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  store { i64, ptr } %a1, ptr %l1
  store i32 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t3 = load i32, ptr %l2, !tbaa !23
  %t7 = call %"compiler/cabi:Way" @compiler_2fcabi_2eWay_2eResult(ptr %v0, ptr %v1, ptr %s0, ptr %v3, ptr %t1, { i64, ptr } %t2, i32 %t3)
  store %"compiler/cabi:Way" %t7, ptr %l13
  br label %bb1
bb1:
  %t8 = load %"compiler/cabi:Way", ptr %l13
  store %"compiler/cabi:Way" %t8, ptr %l3
  %t9 = call %"compiler/cabi:Regs" @compiler_2fcabi_3aRegs_2ector(ptr %s0, i64 6, i64 8)
  store %"compiler/cabi:Regs" %t9, ptr %l14
  br label %bb2
bb2:
  %t10 = load %"compiler/cabi:Regs", ptr %l14
  store %"compiler/cabi:Regs" %t10, ptr %l4
  %t11 = getelementptr %"compiler/cabi:Way", ptr %l3, i32 0, i32 0
  %t12 = load i32, ptr %t11, !range !{i32 0, i32 5}
  store i32 %t12, ptr %l5
  %t14 = load i32, ptr %l5, !range !{i32 0, i32 5}
  %t16 = trunc i64 0 to i32
  %t17 = icmp eq i32 %t14, %t16
  br i1 %t17, label %bb3, label %bb4
bb3:
  br label %bb5
bb4:
  br label %bb7
bb5:
  store %olang.scope zeroinitializer, ptr %s1
  %t19 = load ptr, ptr %l0, !tbaa !29
  %t20 = load i32, ptr %l2, !tbaa !23
  %t23 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eLlvm(ptr %v0, ptr %s1, ptr %v3, ptr %t19, i32 %t20)
  store { i64, ptr } %t23, ptr %l21
  br label %bb6
bb6:
  %t24 = load { i64, ptr }, ptr %l21, !tbaa !27
  %t25 = extractvalue { i64, ptr } %t24, 1
  %t26 = extractvalue { i64, ptr } %t24, 0
  %t27 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t26)
  call void @olang_textcopy(ptr %t27, ptr %t25, i64 %t26)
  %t28 = insertvalue { i64, ptr } undef, i64 %t26, 0
  %t29 = insertvalue { i64, ptr } %t28, ptr %t27, 1
  store { i64, ptr } %t29, ptr %l16, !tbaa !27
  call void @__olang_scope_close(ptr %s1)
  br label %bb17
bb7:
  %t31 = load i32, ptr %l5, !range !{i32 0, i32 5}
  %t33 = trunc i64 1 to i32
  %t34 = icmp eq i32 %t31, %t33
  br i1 %t34, label %bb8, label %bb9
bb8:
  br label %bb10
bb9:
  br label %bb12
bb10:
  %t37 = call { i64, ptr } @compiler_2fcabi_2ePartsType(ptr %s0, ptr %s0, ptr %l3)
  store { i64, ptr } %t37, ptr %l26
  br label %bb11
bb11:
  %t38 = load { i64, ptr }, ptr %l26, !tbaa !27
  store { i64, ptr } %t38, ptr %l16, !tbaa !27
  br label %bb17
bb12:
  br i1 true, label %bb13, label %bb14
bb13:
  br label %bb15
bb14:
  br label %bb16
bb15:
  store { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d51, i32 0, i32 1) }, ptr %l27, !tbaa !27
  %t39 = load { i64, ptr }, ptr %l27, !tbaa !27
  store { i64, ptr } %t39, ptr %l16, !tbaa !27
  br label %bb17
bb16:
  call void @__olang_check_failed(ptr @olang_loc_9727aebca4df1374_94c7225b64063378)
  unreachable
bb17:
  %t41 = load { i64, ptr }, ptr %l16, !tbaa !27
  %t42 = extractvalue { i64, ptr } %t41, 0
  store i64 %t42, ptr %l29, !tbaa !24
  %t43 = load i64, ptr %l29, !tbaa !24
  %t44 = mul i64 %t43, 1
  %t45 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t44)
  %t46 = insertvalue { i64, ptr } undef, i64 %t43, 0
  %t47 = insertvalue { i64, ptr } %t46, ptr %t45, 1
  store { i64, ptr } %t47, ptr %l30, !tbaa !27
  %t48 = getelementptr { i64, ptr }, ptr %l30, i32 0, i32 1
  %t49 = load ptr, ptr %t48, !tbaa !27
  %t50 = getelementptr { i64, ptr }, ptr %l16, i32 0, i32 1
  %t51 = load ptr, ptr %t50, !tbaa !27
  %t52 = load i64, ptr %l29, !tbaa !24
  %t53 = mul i64 %t52, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t49, ptr %t51, i64 %t53, i1 false)
  %t54 = load { i64, ptr }, ptr %l30, !tbaa !27
  store { i64, ptr } %t54, ptr %l6, !tbaa !27
  %t55 = call %"std/prelude/text:StringBuilder" @std_2fprelude_2ftext_3aStringBuilder_2ector(ptr %s0)
  store %"std/prelude/text:StringBuilder" %t55, ptr %l31
  br label %bb18
bb18:
  %t56 = load %"std/prelude/text:StringBuilder", ptr %l31
  store %"std/prelude/text:StringBuilder" %t56, ptr %l7
  %t57 = getelementptr %"compiler/cabi:Way", ptr %l3, i32 0, i32 0
  %t58 = load i32, ptr %t57, !range !{i32 0, i32 5}
  %t60 = trunc i64 4 to i32
  %t61 = icmp eq i32 %t58, %t60
  br i1 %t61, label %bb19, label %bb20
bb19:
  store %olang.scope zeroinitializer, ptr %s5
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s5, ptr %l7, { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d52, i32 0, i32 1) })
  br label %bb21
bb20:
  br label %bb22
bb21:
  %t64 = getelementptr %"compiler/cabi:Regs", ptr %l4, i32 0, i32 0
  %t65 = load i64, ptr %t64, !tbaa !24
  %t67 = sub i64 %t65, 1
  %t69 = getelementptr %"compiler/cabi:Regs", ptr %l4, i32 0, i32 0
  store i64 %t67, ptr %t69, !tbaa !24
  call void @__olang_scope_close(ptr %s5)
  br label %bb22
bb22:
  %t70 = load ptr, ptr %l0, !tbaa !29
  %t71 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t72 = load i32, ptr %l2, !tbaa !23
  %t77 = call %"compiler/cabi:Way" @compiler_2fcabi_2eWay_2eParam(ptr %v0, ptr %v1, ptr %s0, ptr %s0, ptr %v3, ptr %t70, { i64, ptr } %t71, i32 %t72, ptr %l4)
  store %"compiler/cabi:Way" %t77, ptr %l41
  br label %bb23
bb23:
  %t78 = load %"compiler/cabi:Way", ptr %l41
  store %"compiler/cabi:Way" %t78, ptr %l8
  store ptr %l7, ptr %l42, !tbaa !29
  %t79 = getelementptr %"compiler/cabi:Way", ptr %l8, i32 0, i32 0
  %t80 = load i32, ptr %t79, !range !{i32 0, i32 5}
  store i32 %t80, ptr %l9
  %t82 = load i32, ptr %l9, !range !{i32 0, i32 5}
  %t84 = trunc i64 0 to i32
  %t85 = icmp eq i32 %t82, %t84
  br i1 %t85, label %bb24, label %bb25
bb24:
  br label %bb26
bb25:
  br label %bb28
bb26:
  store %olang.scope zeroinitializer, ptr %s6
  %t87 = load ptr, ptr %l0, !tbaa !29
  %t88 = load i32, ptr %l2, !tbaa !23
  %t91 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eLlvm(ptr %v0, ptr %s6, ptr %v3, ptr %t87, i32 %t88)
  store { i64, ptr } %t91, ptr %l49
  br label %bb27
bb27:
  %t92 = load { i64, ptr }, ptr %l49, !tbaa !27
  %t93 = extractvalue { i64, ptr } %t92, 1
  %t94 = extractvalue { i64, ptr } %t92, 0
  %t95 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t94)
  call void @olang_textcopy(ptr %t95, ptr %t93, i64 %t94)
  %t96 = insertvalue { i64, ptr } undef, i64 %t94, 0
  %t97 = insertvalue { i64, ptr } %t96, ptr %t95, 1
  %t99 = extractvalue { i64, ptr } %t97, 0
  %t100 = extractvalue { i64, ptr } %t97, 1
  %t101 = mul i64 %t99, 1
  %t102 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t101)
  call void @llvm.memcpy.p0.p0.i64(ptr %t102, ptr %t100, i64 %t101, i1 false)
  %t103 = insertvalue { i64, ptr } undef, i64 %t99, 0
  %t104 = insertvalue { i64, ptr } %t103, ptr %t102, 1
  store { i64, ptr } %t104, ptr %l44, !tbaa !27
  call void @__olang_scope_close(ptr %s6)
  br label %bb46
bb28:
  %t106 = load i32, ptr %l9, !range !{i32 0, i32 5}
  %t108 = trunc i64 1 to i32
  %t109 = icmp eq i32 %t106, %t108
  br i1 %t109, label %bb29, label %bb30
bb29:
  br label %bb31
bb30:
  br label %bb33
bb31:
  %t112 = call { i64, ptr } @compiler_2fcabi_2ePartsList(ptr %s0, ptr %s0, ptr %l8)
  store { i64, ptr } %t112, ptr %l55
  br label %bb32
bb32:
  %t113 = load { i64, ptr }, ptr %l55, !tbaa !27
  %t114 = extractvalue { i64, ptr } %t113, 0
  %t115 = extractvalue { i64, ptr } %t113, 1
  %t116 = mul i64 %t114, 1
  %t117 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t116)
  call void @llvm.memcpy.p0.p0.i64(ptr %t117, ptr %t115, i64 %t116, i1 false)
  %t118 = insertvalue { i64, ptr } undef, i64 %t114, 0
  %t119 = insertvalue { i64, ptr } %t118, ptr %t117, 1
  store { i64, ptr } %t119, ptr %l44, !tbaa !27
  br label %bb46
bb33:
  %t121 = load i32, ptr %l9, !range !{i32 0, i32 5}
  %t123 = trunc i64 2 to i32
  %t124 = icmp eq i32 %t121, %t123
  br i1 %t124, label %bb34, label %bb35
bb34:
  br label %bb36
bb35:
  br label %bb37
bb36:
  store { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d53, i32 0, i32 1) }, ptr %l44, !tbaa !27
  br label %bb46
bb37:
  %t126 = load i32, ptr %l9, !range !{i32 0, i32 5}
  %t128 = trunc i64 3 to i32
  %t129 = icmp eq i32 %t126, %t128
  br i1 %t129, label %bb38, label %bb39
bb38:
  br label %bb40
bb39:
  br label %bb41
bb40:
  store { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d54, i32 0, i32 1) }, ptr %l44, !tbaa !27
  br label %bb46
bb41:
  %t131 = load i32, ptr %l9, !range !{i32 0, i32 5}
  %t133 = trunc i64 4 to i32
  %t134 = icmp eq i32 %t131, %t133
  br i1 %t134, label %bb42, label %bb43
bb42:
  br label %bb44
bb43:
  br label %bb45
bb44:
  store { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d55, i32 0, i32 1) }, ptr %l44, !tbaa !27
  br label %bb46
bb45:
  call void @__olang_check_failed(ptr @olang_loc_8f84916f6bbe2da5_8f456227b094de49)
  unreachable
bb46:
  %t136 = load ptr, ptr %l42, !tbaa !29
  %t137 = load { i64, ptr }, ptr %l44, !tbaa !27
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s0, ptr %t136, { i64, ptr } %t137)
  br label %bb47
bb47:
  %t138 = load { i64, ptr }, ptr %l6, !tbaa !27
  store { i64, ptr } %t138, ptr %l63, !tbaa !27
  %t140 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %s0, ptr %s0, ptr %l7)
  store { i64, ptr } %t140, ptr %l65
  br label %bb48
bb48:
  %t141 = load { i64, ptr }, ptr %l63, !tbaa !27
  %t142 = extractvalue { i64, ptr } %t141, 1
  %t143 = extractvalue { i64, ptr } %t141, 0
  %t144 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d56, i32 0, i32 1) }, 1
  %t145 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d56, i32 0, i32 1) }, 0
  %t146 = add i64 %t143, %t145
  %t147 = load { i64, ptr }, ptr %l65, !tbaa !27
  %t148 = extractvalue { i64, ptr } %t147, 1
  %t149 = extractvalue { i64, ptr } %t147, 0
  %t150 = add i64 %t146, %t149
  %t151 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d57, i32 0, i32 1) }, 1
  %t152 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d57, i32 0, i32 1) }, 0
  %t153 = add i64 %t150, %t152
  %t154 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t153)
  call void @olang_textcopy(ptr %t154, ptr %t142, i64 %t143)
  %t155 = getelementptr i8, ptr %t154, i64 %t143
  call void @olang_textcopy(ptr %t155, ptr %t144, i64 %t145)
  %t156 = getelementptr i8, ptr %t155, i64 %t145
  call void @olang_textcopy(ptr %t156, ptr %t148, i64 %t149)
  %t157 = getelementptr i8, ptr %t156, i64 %t149
  call void @olang_textcopy(ptr %t157, ptr %t151, i64 %t152)
  %t158 = insertvalue { i64, ptr } undef, i64 %t153, 0
  %t159 = insertvalue { i64, ptr } %t158, ptr %t154, 1
  call void @__olang_scope_close(ptr %s0)
  store { i64, ptr } %t159, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local i32 @compiler_2fcabi_2etestStruct(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %a0, ptr %a1, { i64, ptr } %a2, { i64, ptr } %a3) #0 {
entry:
  %l0 = alloca ptr
  %l3 = alloca { i64, ptr }
  %l4 = alloca i32
  %l5 = alloca { i64, ptr }
  %l6 = alloca i64
  %l7 = alloca i64
  %l9 = alloca ptr
  %l10 = alloca ptr
  %l13 = alloca i32
  %l15 = alloca i32
  %l16 = alloca i32
  %l17 = alloca ptr
  %l18 = alloca i32
  %l21 = alloca i32
  %l29 = alloca { i64, ptr }
  %l34 = alloca i1
  %l39 = alloca i1
  %rv = alloca i32
  store ptr %a0, ptr %l0
  store { i64, ptr } %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1, ptr %l9, !tbaa !29
  %t2 = load ptr, ptr %l0, !tbaa !29
  store ptr %t2, ptr %l10, !tbaa !29
  %t7 = call i32 @compiler_2fsource_2ecompiler_2fsource_3aNames_2eIntern(ptr %v1, ptr %v2, ptr %a1, { i64, ptr } %a2)
  store i32 %t7, ptr %l13
  br label %bb1
bb1:
  %t8 = load ptr, ptr %l10, !tbaa !29
  %t9 = load i32, ptr %l13, !tbaa !23
  %t11 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eAddDecl(ptr %v0, ptr %v4, ptr %t8, i64 0, i32 %t9, i32 0, i32 0)
  store i32 %t11, ptr %l15
  br label %bb2
bb2:
  %t12 = load ptr, ptr %l9, !tbaa !29
  %t13 = load i32, ptr %l15, !tbaa !23
  %t14 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eNamed(ptr %v0, ptr %t12, i32 %t13, i32 0)
  store i32 %t14, ptr %l16
  br label %bb3
bb3:
  %t15 = load i32, ptr %l16, !tbaa !23
  store i32 %t15, ptr %l4, !tbaa !23
  %t16 = load ptr, ptr %l0, !tbaa !29
  store ptr %t16, ptr %l17, !tbaa !29
  %t17 = load i32, ptr %l4, !tbaa !23
  store i32 %t17, ptr %l18, !tbaa !23
  %t18 = load ptr, ptr %l0, !tbaa !29
  %t19 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t22 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eList(ptr %v0, ptr %v3, ptr %t18, { i64, ptr } %t19)
  store i32 %t22, ptr %l21
  br label %bb4
bb4:
  %t23 = load ptr, ptr %l17, !tbaa !29
  %t24 = load i32, ptr %l18, !tbaa !23
  %t25 = load i32, ptr %l21, !tbaa !23
  call void @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eSetStructBody(ptr %v0, ptr %t23, i32 %t24, i32 %t25, i1 false)
  br label %bb5
bb5:
  %t26 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t26, ptr %l5, !tbaa !27
  store i64 0, ptr %l6, !tbaa !24
  %t28 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t30 = extractvalue { i64, ptr } %t28, 0
  store i64 %t30, ptr %l7, !tbaa !24
  br label %bb6
bb6:
  %t32 = load i64, ptr %l6, !tbaa !24
  %t33 = load i64, ptr %l7, !tbaa !24
  %t36 = icmp slt i64 %t32, %t33
  %t38 = xor i1 %t36, true
  br i1 %t38, label %bb7, label %bb8
bb7:
  br label %bb14
bb8:
  br label %bb9
bb9:
  %t40 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t40, ptr %l29, !tbaa !27
  %t41 = load i64, ptr %l6, !tbaa !24
  %t43 = getelementptr { i64, ptr }, ptr %l29, i32 0, i32 1
  %t44 = load ptr, ptr %t43, !tbaa !27
  %t45 = getelementptr i32, ptr %t44, i64 %t41
  %t46 = load i32, ptr %t45, !tbaa !33
  %t48 = load ptr, ptr %l0, !tbaa !29
  %t52 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eComputeLayout(ptr %v0, ptr %t48, i32 %t46)
  store i1 %t52, ptr %l34
  br label %bb10
bb10:
  %t53 = load i1, ptr %l34, !tbaa !21
  br i1 %t53, label %bb11, label %bb12
bb11:
  br label %bb13
bb12:
  call void @__olang_check_failed(ptr @olang_loc_a86104d23e08732a_9d2c801d66b156c6)
  unreachable
bb13:
  %t54 = load i64, ptr %l6, !tbaa !24
  %t56 = add i64 %t54, 1
  store i64 %t56, ptr %l6, !tbaa !24
  br label %bb6
bb14:
  %t58 = load ptr, ptr %l0, !tbaa !29
  %t59 = load i32, ptr %l4, !tbaa !23
  %t62 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eComputeLayout(ptr %v0, ptr %t58, i32 %t59)
  store i1 %t62, ptr %l39
  br label %bb15
bb15:
  %t63 = load i1, ptr %l39, !tbaa !21
  br i1 %t63, label %bb16, label %bb17
bb16:
  %t64 = load i32, ptr %l4, !tbaa !23
  store i32 %t64, ptr %rv
  br label %ret
bb17:
  call void @__olang_check_failed(ptr @olang_loc_986d0e35626c2b45_4bacbe643940ac11)
  unreachable
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local %"compiler/cabi:Regs" @compiler_2fcabi_3aRegs_2ector(ptr %v0, i64 %a0, i64 %a1) #0 {
entry:
  %rv = alloca %"compiler/cabi:Regs"
  br label %start
start:
  br label %bb0
bb0:
  %t6 = insertvalue %"compiler/cabi:Regs" undef, i64 %a0, 0
  %t8 = insertvalue %"compiler/cabi:Regs" %t6, i64 %a1, 1
  store %"compiler/cabi:Regs" %t8, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/cabi:Regs", ptr %rv
  ret %"compiler/cabi:Regs" %rr
}

define dso_local %"compiler/cabi:Scalar" @compiler_2fcabi_3aScalar_2ector(ptr %v0, ptr %v1, i64 %a0, i64 %a1, { i64, ptr } %a2, i1 %a3) #0 {
entry:
  %rv = alloca %"compiler/cabi:Scalar"
  br label %start
start:
  br label %bb0
bb0:
  %t10 = insertvalue %"compiler/cabi:Scalar" undef, i64 %a0, 0
  %t12 = insertvalue %"compiler/cabi:Scalar" %t10, i64 %a1, 1
  %t14 = insertvalue %"compiler/cabi:Scalar" %t12, { i64, ptr } %a2, 2
  %t16 = insertvalue %"compiler/cabi:Scalar" %t14, i1 %a3, 3
  store %"compiler/cabi:Scalar" %t16, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/cabi:Scalar", ptr %rv
  ret %"compiler/cabi:Scalar" %rr
}

define dso_local %"compiler/cabi:Way" @compiler_2fcabi_3aWay_2ector(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, i32 %a0, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %a1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %a2, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %a3, { i64, ptr } %a4) #0 {
entry:
  %rv = alloca %"compiler/cabi:Way"
  br label %start
start:
  br label %bb0
bb0:
  %t12 = insertvalue %"compiler/cabi:Way" undef, i32 %a0, 0
  %t14 = insertvalue %"compiler/cabi:Way" %t12, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %a1, 1
  %t16 = insertvalue %"compiler/cabi:Way" %t14, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %a2, 2
  %t18 = insertvalue %"compiler/cabi:Way" %t16, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %a3, 3
  %t20 = insertvalue %"compiler/cabi:Way" %t18, { i64, ptr } %a4, 4
  store %"compiler/cabi:Way" %t20, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/cabi:Way", ptr %rv
  ret %"compiler/cabi:Way" %rr
}

@.d0 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"x86_64" }>, align 8
@.d1 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
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
@.d2 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c"zeroext" }>, align 8
@.d3 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d4 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c"zeroext" }>, align 8
@.d5 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c"signext" }>, align 8
@.d6 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"ptr" }>, align 8
@.d7 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"i8" }>, align 8
@.d8 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"i8" }>, align 8
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
@.d9 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c", " }>, align 8
@.d10 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"{ " }>, align 8
@.d11 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c", " }>, align 8
@.d12 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c" }" }>, align 8
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
@.d13 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c"aarch64" }>, align 8
@olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1 = weak hidden constant i1 false
@.d14 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"{ " }>, align 8
@.d15 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c", " }>, align 8
@.d16 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c" }" }>, align 8
declare ptr @__olang_region_make(ptr) noinline
@.d17 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"[" }>, align 8
declare i64 @__olang_fmt_i64(ptr, i64)
@.d18 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c" x " }>, align 8
@.d19 = private constant <{ i64, [15 x i8] }> <{ i64 0, [15 x i8] c"] alignstack(8)" }>, align 8
@olang_2esole_2ecompiler_2fcabi_3aWay_2e1 = weak hidden constant i1 false
define linkonce_odr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e(ptr %v0, ptr %a0) #0 {
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

declare ptr @__olang_region_or(ptr, ptr)
declare void @__olang_region_settle(ptr, i1)
@olang_2esole_2ecompiler_2fcabi_3aWay_2e2 = weak hidden constant i1 false
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

@olang_2esole_2ecompiler_2fcabi_3aWay_2e3 = weak hidden constant i1 false
@.d20 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
define linkonce_odr %"compiler/cabi:Way" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2fcabi_3aWay(ptr %v0, ptr %a0) #0 {
entry:
  %l1 = alloca %"compiler/cabi:Way"
  %l3 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l5 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l7 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %rv = alloca %"compiler/cabi:Way"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = load %"compiler/cabi:Way", ptr %a0
  store %"compiler/cabi:Way" %t2, ptr %l1
  %t3 = getelementptr %"compiler/cabi:Way", ptr %l1, i32 0, i32 1
  %t5 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e(ptr %v0, ptr %t3)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t5, ptr %l3
  br label %bb1
bb1:
  %t6 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l3
  %t7 = getelementptr %"compiler/cabi:Way", ptr %l1, i32 0, i32 1
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t6, ptr %t7
  %t8 = getelementptr %"compiler/cabi:Way", ptr %l1, i32 0, i32 2
  %t10 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cI64_3e(ptr %v0, ptr %t8)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t10, ptr %l5
  br label %bb2
bb2:
  %t11 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l5
  %t12 = getelementptr %"compiler/cabi:Way", ptr %l1, i32 0, i32 2
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t11, ptr %t12
  %t13 = getelementptr %"compiler/cabi:Way", ptr %l1, i32 0, i32 3
  %t15 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cI64_3e(ptr %v0, ptr %t13)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t15, ptr %l7
  br label %bb3
bb3:
  %t16 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l7
  %t17 = getelementptr %"compiler/cabi:Way", ptr %l1, i32 0, i32 3
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t16, ptr %t17
  %t18 = load %"compiler/cabi:Way", ptr %l1
  store %"compiler/cabi:Way" %t18, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/cabi:Way", ptr %rv
  ret %"compiler/cabi:Way" %rr
}

@.d21 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d22 = private constant <{ i64, [9 x i8] }> <{ i64 0, [9 x i8] c"[2 x i64]" }>, align 8
@.d23 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"i" }>, align 8
@.d24 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"i64" }>, align 8
@.d25 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d26 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d27 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@olang_2esole_2ecompiler_2fcabi_3aWay_2e4 = weak hidden constant i1 false
@.d28 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"x86_64" }>, align 8
@.d29 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d30 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"float" }>, align 8
@.d31 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"double" }>, align 8
@.d32 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"half" }>, align 8
@.d33 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"bfloat" }>, align 8
@.d34 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"<" }>, align 8
@.d35 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"ptr" }>, align 8
@.d36 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"i" }>, align 8
@.d37 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"i" }>, align 8
@.d38 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"double" }>, align 8
@.d39 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d40 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d41 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"half" }>, align 8
@.d42 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"bfloat" }>, align 8
@.d43 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"<2 x " }>, align 8
@.d44 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c">" }>, align 8
@.d45 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d46 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"<4 x " }>, align 8
@.d47 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c">" }>, align 8
@.d48 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"float" }>, align 8
@.d49 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"float" }>, align 8
@.d50 = private constant <{ i64, [11 x i8] }> <{ i64 0, [11 x i8] c"<2 x float>" }>, align 8
@.d51 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"void" }>, align 8
declare void @__olang_check_failed(ptr) cold noreturn
@.d52 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"sret, " }>, align 8
@.d53 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"byval" }>, align 8
@.d54 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"ptr" }>, align 8
@.d55 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"?" }>, align 8
@.d56 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"(" }>, align 8
@.d57 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c")" }>, align 8
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
declare i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %v0, ptr %a0, i32 %a1)
@G_2ecompiler_2ftypes_2eBoolT = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\02\00\00\00" }>, align 8
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsInt(ptr %v0, ptr %a0, i32 %a1)
declare i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eBits(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsUnsigned(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %a0, i32 %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcabi_3aScalar_3e_2ePush_3ccompiler_2fcabi_3aScalar_3e(ptr %v0, ptr %v1, ptr %a0, %"compiler/cabi:Scalar" %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eElem(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eLength(ptr %v0, ptr %a0, i32 %a1)
declare i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eConstValue(ptr %v0, ptr %a0, i32 %a1)
declare i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eSize(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePacked(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclKindOf(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eFields(ptr %v0, ptr %a0, i32 %a1)
declare { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eOffsets(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eLlvm(ptr %v0, ptr %v1, ptr %v2, ptr %a0, i32 %a1)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsFloat(ptr %v0, ptr %a0, i32 %a1)
declare %"std/prelude/text:StringBuilder" @std_2fprelude_2ftext_3aStringBuilder_2ector(ptr %v0)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %v0, ptr %a0)
declare { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %v0, ptr %v1, ptr %a0)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %a0, i64 %a1)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fcabi_3aScalar_3e_2ector(ptr %v0, i64 %a0)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2ector(ptr %v0, i64 %a0)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %v0, i64 %a0)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcabi_3aScalar_3e_2eLen_3ccompiler_2fcabi_3aScalar_3e(ptr %v0, ptr %a0)
declare %"compiler/cabi:Scalar" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcabi_3aScalar_3e_2eAt_3ccompiler_2fcabi_3aScalar_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %a0, i64 %a1)
declare i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
declare i64 @std_2fprelude_2fnumber_2eI64_2eMin_3cI64_3e(i64 %a0, i64 %a1)
@olang_loc_9727aebca4df1374_94c7225b64063378 = external constant [0 x i8]
@olang_loc_8f84916f6bbe2da5_8f456227b094de49 = external constant [0 x i8]
declare i32 @compiler_2fsource_2ecompiler_2fsource_3aNames_2eIntern(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eAddDecl(ptr %v0, ptr %v1, ptr %a0, i64 %a1, i32 %a2, i32 %a3, i32 %a4)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eNamed(ptr %v0, ptr %a0, i32 %a1, i32 %a2)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eList(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare void @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eSetStructBody(ptr %v0, ptr %a0, i32 %a1, i32 %a2, i1 %a3)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eComputeLayout(ptr %v0, ptr %a0, i32 %a1)
@olang_loc_a86104d23e08732a_9d2c801d66b156c6 = external constant [0 x i8]
@olang_loc_986d0e35626c2b45_4bacbe643940ac11 = external constant [0 x i8]

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
