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
%"compiler/unparse:writer" = type { ptr, { i64, ptr }, ptr, %"std/prelude/text:StringBuilder", i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i1 }
%"std/prelude/text:StringBuilder" = type { %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" = type { { i64, ptr }, i64, i64 }
%"compiler/source:Span" = type { i32, i32 }
%"compiler/ast:Attr" = type { %"compiler/source:Span", ptr, i32 }
%"compiler/ast:Branch" = type { %"compiler/source:Span", { i64, ptr }, i64 }
%"compiler/ast:Case" = type { %"compiler/source:Span", { i64, ptr }, { i64, ptr }, ptr, { i64, ptr }, ptr }
%"compiler/ast:Catch" = type { %"compiler/source:Span", { i64, ptr }, { i64, ptr }, { i64, ptr }, i1, i32, %"compiler/source:Span" }
%"compiler/ast:Sig" = type { { i64, ptr }, { i64, ptr }, i1, { i64, ptr }, i1, ptr, i1, i1, { i64, ptr } }
%"compiler/ast:ContractBlock" = type { %"compiler/source:Span", { i64, ptr } }
%"compiler/ast:VarDecl" = type { { i64, ptr }, { i64, ptr }, ptr, { i64, ptr }, i1, i1, { i64, ptr }, i1 }
%"compiler/ast:Path" = type { %"compiler/source:Span", { i64, ptr } }
%"compiler/ast:CaseDecl" = type { %"compiler/source:Span", i32, { i64, ptr }, i1, ptr, { i64, ptr } }
%"compiler/ast:Chain" = type { { i64, ptr }, { i64, ptr } }
%"compiler/ast:Compr" = type { ptr, ptr, i32, i32, ptr, ptr, i1, i64 }
%"compiler/ast:Func" = type { %"compiler/source:Span", ptr, i32, ptr, { i64, ptr }, { i64, ptr }, i1, i1, { i64, ptr }, ptr, i32 }
%"compiler/ast:TypeDecl" = type { i32, { i64, ptr }, i1, ptr, { i64, ptr }, i32, i1 }
%"compiler/ast:If" = type { ptr, ptr, ptr }
%"compiler/ast:Match" = type { %"compiler/source:Span", ptr, i1, { i64, ptr } }
%"compiler/ast:Param" = type { %"compiler/source:Span", i32, ptr, ptr, { i64, ptr } }
%"compiler/ast:Promise" = type { %"compiler/source:Span", i32, { i64, ptr } }
%"compiler/ast:Multi" = type { { i64, ptr }, i1, { i64, ptr } }
%"compiler/ast:For3" = type { ptr, ptr, ptr, { i64, ptr } }
%"compiler/ast:ForIn" = type { i32, i32, ptr, i1, { i64, ptr }, { i64, ptr }, i1 }
%"compiler/ast:JoinS" = type { i1, { i64, ptr }, { i64, ptr } }
%"compiler/ast:TopBranch" = type { %"compiler/source:Span", { i64, ptr }, i64 }
%"compiler/ast:TopIf" = type { ptr, ptr, ptr, ptr }
%"compiler/ast:StructBody" = type { { i64, ptr }, ptr, { i64, ptr }, %"compiler/source:Span", { i64, ptr }, { i64, ptr } }
%"compiler/ast:TypeParam" = type { %"compiler/source:Span", i32, ptr, { i64, ptr }, i1 }
@G_2ecompiler_2funparse_2eMaxIndent = constant <{ [8 x i8] }> <{ [8 x i8] c"\40\00\00\00\00\00\00\00" }>, align 8
define dso_local { i64, ptr } @compiler_2funparse_2eHeldBranches(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, { i64, ptr } %a0, ptr %a1, { i64, ptr } %a2, ptr %a3) #0 {
entry:
  %l4 = alloca %"compiler/unparse:writer"
  %l5 = alloca { i64, ptr }
  %l6 = alloca i64
  %l7 = alloca i64
  %l12 = alloca %"compiler/unparse:writer"
  %l20 = alloca { i64, ptr }
  %l28 = alloca { i64, ptr }
  %l29 = alloca { i64, ptr }
  %l30 = alloca i64
  %l31 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t7 = call %"compiler/unparse:writer" @compiler_2funparse_3awriter_2ector(ptr %v1, ptr %v2, ptr %v3, ptr %s0, ptr %a1, { i64, ptr } %a2, ptr %a3)
  store %"compiler/unparse:writer" %t7, ptr %l12
  br label %bb1
bb1:
  %t8 = load %"compiler/unparse:writer", ptr %l12
  store %"compiler/unparse:writer" %t8, ptr %l4
  store { i64, ptr } %a0, ptr %l5, !tbaa !27
  store i64 0, ptr %l6, !tbaa !24
  %t11 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t13 = extractvalue { i64, ptr } %t11, 0
  store i64 %t13, ptr %l7, !tbaa !24
  br label %bb2
bb2:
  %t15 = load i64, ptr %l6, !tbaa !24
  %t16 = load i64, ptr %l7, !tbaa !24
  %t19 = icmp slt i64 %t15, %t16
  %t21 = xor i1 %t19, true
  br i1 %t21, label %bb3, label %bb4
bb3:
  br label %bb8
bb4:
  br label %bb5
bb5:
  %t23 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t23, ptr %l20, !tbaa !27
  %t24 = load i64, ptr %l6, !tbaa !24
  %t26 = getelementptr { i64, ptr }, ptr %l20, i32 0, i32 1
  %t27 = load ptr, ptr %t26, !tbaa !27
  %t28 = getelementptr ptr, ptr %t27, i64 %t24
  %t29 = load ptr, ptr %t28, !tbaa !39
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2edecl(ptr %s0, ptr %v0, ptr %l4, ptr %t29)
  br label %bb6
bb6:
  br label %bb7
bb7:
  %t34 = load i64, ptr %l6, !tbaa !24
  %t36 = add i64 %t34, 1
  store i64 %t36, ptr %l6, !tbaa !24
  br label %bb2
bb8:
  %t38 = getelementptr %"compiler/unparse:writer", ptr %l4, i32 0, i32 5
  %t40 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aSpan_3e_2eToArray_3ccompiler_2fsource_3aSpan_3e(ptr %s0, ptr %s0, ptr %t38)
  store { i64, ptr } %t40, ptr %l28
  br label %bb9
bb9:
  %t41 = load { i64, ptr }, ptr %l28, !tbaa !27
  store { i64, ptr } %t41, ptr %l29, !tbaa !27
  %t42 = load { i64, ptr }, ptr %l29, !tbaa !27
  %t43 = extractvalue { i64, ptr } %t42, 0
  store i64 %t43, ptr %l30, !tbaa !24
  %t44 = load i64, ptr %l30, !tbaa !24
  %t45 = mul i64 %t44, 8
  %t46 = call ptr @__olang_scope_alloc(ptr %v4, i64 %t45)
  %t47 = insertvalue { i64, ptr } undef, i64 %t44, 0
  %t48 = insertvalue { i64, ptr } %t47, ptr %t46, 1
  store { i64, ptr } %t48, ptr %l31, !tbaa !27
  %t49 = getelementptr { i64, ptr }, ptr %l31, i32 0, i32 1
  %t50 = load ptr, ptr %t49, !tbaa !27
  %t51 = getelementptr { i64, ptr }, ptr %l29, i32 0, i32 1
  %t52 = load ptr, ptr %t51, !tbaa !27
  %t53 = load i64, ptr %l30, !tbaa !24
  %t54 = mul i64 %t53, 8
  call void @llvm.memmove.p0.p0.i64(ptr %t50, ptr %t52, i64 %t54, i1 false)
  %t55 = load { i64, ptr }, ptr %l31, !tbaa !27
  store { i64, ptr } %t55, ptr %l29, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  %t56 = load { i64, ptr }, ptr %l29, !tbaa !27
  store { i64, ptr } %t56, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local { i64, ptr } @compiler_2funparse_2eUnparse(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, { i64, ptr } %a0, ptr %a1, { i64, ptr } %a2, ptr %a3) #0 {
entry:
  %l4 = alloca %"compiler/unparse:writer"
  %l5 = alloca { i64, ptr }
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca ptr
  %l12 = alloca %"compiler/unparse:writer"
  %l20 = alloca { i64, ptr }
  %l24 = alloca i1
  %l31 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t7 = call %"compiler/unparse:writer" @compiler_2funparse_3awriter_2ector(ptr %v1, ptr %v2, ptr %v3, ptr %s0, ptr %a1, { i64, ptr } %a2, ptr %a3)
  store %"compiler/unparse:writer" %t7, ptr %l12
  br label %bb1
bb1:
  %t8 = load %"compiler/unparse:writer", ptr %l12
  store %"compiler/unparse:writer" %t8, ptr %l4
  store { i64, ptr } %a0, ptr %l5, !tbaa !27
  store i64 0, ptr %l6, !tbaa !24
  %t11 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t13 = extractvalue { i64, ptr } %t11, 0
  store i64 %t13, ptr %l7, !tbaa !24
  br label %bb2
bb2:
  %t15 = load i64, ptr %l6, !tbaa !24
  %t16 = load i64, ptr %l7, !tbaa !24
  %t19 = icmp slt i64 %t15, %t16
  %t21 = xor i1 %t19, true
  br i1 %t21, label %bb3, label %bb4
bb3:
  br label %bb13
bb4:
  br label %bb5
bb5:
  %t23 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t23, ptr %l20, !tbaa !27
  %t24 = load i64, ptr %l6, !tbaa !24
  %t26 = getelementptr { i64, ptr }, ptr %l20, i32 0, i32 1
  %t27 = load ptr, ptr %t26, !tbaa !27
  %t28 = getelementptr ptr, ptr %t27, i64 %t24
  %t29 = load ptr, ptr %t28, !tbaa !39
  store ptr %t29, ptr %l8, !tbaa !29
  %t31 = load ptr, ptr %l8, !tbaa !29
  %t33 = call i1 @compiler_2funparse_2ehidden(ptr %v0, ptr %t31)
  store i1 %t33, ptr %l24
  br label %bb6
bb6:
  %t34 = load i1, ptr %l24, !tbaa !21
  br i1 %t34, label %bb7, label %bb8
bb7:
  br label %bb12
bb8:
  br label %bb9
bb9:
  %t35 = load ptr, ptr %l8, !tbaa !29
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2edecl(ptr %s0, ptr %v0, ptr %l4, ptr %t35)
  br label %bb10
bb10:
  %t38 = getelementptr %"compiler/unparse:writer", ptr %l4, i32 0, i32 3
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePushChar(ptr %s0, ptr %t38, i8 10)
  br label %bb11
bb11:
  br label %bb12
bb12:
  %t40 = load i64, ptr %l6, !tbaa !24
  %t42 = add i64 %t40, 1
  store i64 %t42, ptr %l6, !tbaa !24
  br label %bb2
bb13:
  %t44 = getelementptr %"compiler/unparse:writer", ptr %l4, i32 0, i32 3
  %t46 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %s0, ptr %v4, ptr %t44)
  store { i64, ptr } %t46, ptr %l31
  br label %bb14
bb14:
  call void @__olang_scope_close(ptr %s0)
  %t47 = load { i64, ptr }, ptr %l31, !tbaa !27
  store { i64, ptr } %t47, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local i1 @compiler_2funparse_2ebareSpread(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca i32
  %l3 = alloca ptr
  %l4 = alloca i1
  %l11 = alloca { i64, ptr }
  %l12 = alloca i1
  %s1 = alloca %olang.scope
  %rv = alloca i1
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1, ptr %l3, !tbaa !29
  store i1 false, ptr %l4, !tbaa !21
  %t2 = load ptr, ptr %l3, !tbaa !29
  %t3 = icmp ne ptr %t2, null
  br i1 %t3, label %bb1, label %bb2
bb1:
  %t5 = load ptr, ptr %l3, !tbaa !29
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 30}
  %t8 = icmp eq i64 %t6, 0
  store i1 %t8, ptr %l4, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l4, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  %t10 = load ptr, ptr %l0, !tbaa !29
  %t12 = getelementptr { i64, [4 x i64] }, ptr %t10, i32 0, i32 1
  %t13 = getelementptr { %"compiler/source:Span", i32 }, ptr %t12, i32 0, i32 1
  %t14 = load i32, ptr %t13
  store i32 %t14, ptr %l2, !tbaa !23
  br label %bb5
bb4:
  br label %bb8
bb5:
  store %olang.scope zeroinitializer, ptr %s1
  %t17 = load i32, ptr %l2, !tbaa !23
  %t20 = call { i64, ptr } @compiler_2fsource_2ecompiler_2fsource_3aNames_2eText(ptr %v1, ptr %v1, ptr %a1, i32 %t17)
  store { i64, ptr } %t20, ptr %l11
  br label %bb6
bb6:
  %t21 = load { i64, ptr }, ptr %l11, !tbaa !27
  %t22 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v1, ptr %s1, { i64, ptr } %t21, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d0, i32 0, i32 1) })
  store i1 %t22, ptr %l12
  br label %bb7
bb7:
  call void @__olang_scope_close(ptr %s1)
  %t23 = load i1, ptr %l12, !tbaa !21
  store i1 %t23, ptr %rv
  br label %ret
bb8:
  br i1 true, label %bb9, label %bb10
bb9:
  br label %bb11
bb10:
  br label %bb12
bb11:
  store i1 false, ptr %rv
  br label %ret
bb12:
  call void @__olang_check_failed(ptr @olang_loc_97fb03c83c422508_396f69b1ea6ff204)
  unreachable
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local void @compiler_2funparse_2ecompiler_2funparse_3awriter_2eattrs(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca { i64, ptr }
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca ptr
  %l13 = alloca { i64, ptr }
  %s2 = alloca %olang.scope
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
  store %olang.scope zeroinitializer, ptr %s2
  %t7 = load i64, ptr %l3, !tbaa !24
  %t8 = load i64, ptr %l4, !tbaa !24
  %t11 = icmp slt i64 %t7, %t8
  %t13 = xor i1 %t11, true
  br i1 %t13, label %bb2, label %bb3
bb2:
  call void @__olang_scope_close(ptr %s2)
  br label %bb9
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
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2eput(ptr %v0, ptr %s2, ptr %t23, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d1, i32 0, i32 1) })
  br label %bb5
bb5:
  %t25 = load ptr, ptr %l0, !tbaa !29
  %t26 = load ptr, ptr %l5, !tbaa !29
  %t28 = getelementptr %"compiler/ast:Attr", ptr %t26, i32 0, i32 1
  %t29 = load ptr, ptr %t28, !tbaa !29
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2eexpr(ptr %v0, ptr %v1, ptr %t25, ptr %t29)
  br label %bb6
bb6:
  %t32 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2eput(ptr %v0, ptr %s2, ptr %t32, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d2, i32 0, i32 1) })
  br label %bb7
bb7:
  call void @__olang_scope_close(ptr %s2)
  br label %bb8
bb8:
  %t34 = load i64, ptr %l3, !tbaa !24
  %t36 = add i64 %t34, 1
  store i64 %t36, ptr %l3, !tbaa !24
  br label %bb1
bb9:
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2funparse_2ecompiler_2funparse_3awriter_2eblock(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca { i64, ptr }
  %l2 = alloca i1
  %l3 = alloca { i64, ptr }
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca ptr
  %l12 = alloca ptr
  %l25 = alloca { i64, ptr }
  %l35 = alloca ptr
  %s0 = alloca %olang.scope
  %s1 = alloca %olang.scope
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
  store %olang.scope zeroinitializer, ptr %s1
  %t7 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2eput(ptr %v0, ptr %s1, ptr %t7, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d3, i32 0, i32 1) })
  br label %bb3
bb2:
  br label %bb4
bb3:
  call void @__olang_scope_close(ptr %s1)
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb4:
  %t9 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2eput(ptr %v0, ptr %s0, ptr %t9, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d4, i32 0, i32 1) })
  br label %bb5
bb5:
  %t11 = load ptr, ptr %l0, !tbaa !29
  store ptr %t11, ptr %l12, !tbaa !29
  %t12 = load ptr, ptr %l12, !tbaa !29
  %t13 = getelementptr %"compiler/unparse:writer", ptr %t12, i32 0, i32 4
  %t14 = load i64, ptr %t13, !tbaa !24
  %t16 = add i64 %t14, 1
  %t18 = load ptr, ptr %l12, !tbaa !29
  %t19 = getelementptr %"compiler/unparse:writer", ptr %t18, i32 0, i32 4
  store i64 %t16, ptr %t19, !tbaa !24
  %t20 = load ptr, ptr %l0, !tbaa !29
  %t22 = getelementptr %"compiler/unparse:writer", ptr %t20, i32 0, i32 6
  %t23 = load i1, ptr %t22, !tbaa !21
  store i1 %t23, ptr %l2, !tbaa !21
  %t25 = load ptr, ptr %l0, !tbaa !29
  %t27 = getelementptr %"compiler/unparse:writer", ptr %t25, i32 0, i32 6
  store i1 false, ptr %t27, !tbaa !21
  %t28 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t28, ptr %l3, !tbaa !27
  store i64 0, ptr %l4, !tbaa !24
  %t30 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t32 = extractvalue { i64, ptr } %t30, 0
  store i64 %t32, ptr %l5, !tbaa !24
  br label %bb6
bb6:
  %t34 = load i64, ptr %l4, !tbaa !24
  %t35 = load i64, ptr %l5, !tbaa !24
  %t38 = icmp slt i64 %t34, %t35
  %t40 = xor i1 %t38, true
  br i1 %t40, label %bb7, label %bb8
bb7:
  br label %bb13
bb8:
  br label %bb9
bb9:
  %t42 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t42, ptr %l25, !tbaa !27
  %t43 = load i64, ptr %l4, !tbaa !24
  %t45 = getelementptr { i64, ptr }, ptr %l25, i32 0, i32 1
  %t46 = load ptr, ptr %t45, !tbaa !27
  %t47 = getelementptr ptr, ptr %t46, i64 %t43
  %t48 = load ptr, ptr %t47, !tbaa !39
  store ptr %t48, ptr %l6, !tbaa !29
  %t50 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2enl(ptr %v0, ptr %t50)
  br label %bb10
bb10:
  %t52 = load ptr, ptr %l0, !tbaa !29
  %t53 = load ptr, ptr %l6, !tbaa !29
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2estmt(ptr %v0, ptr %v1, ptr %t52, ptr %t53)
  br label %bb11
bb11:
  br label %bb12
bb12:
  %t56 = load i64, ptr %l4, !tbaa !24
  %t58 = add i64 %t56, 1
  store i64 %t58, ptr %l4, !tbaa !24
  br label %bb6
bb13:
  %t60 = load ptr, ptr %l0, !tbaa !29
  %t61 = load i1, ptr %l2, !tbaa !21
  %t64 = getelementptr %"compiler/unparse:writer", ptr %t60, i32 0, i32 6
  store i1 %t61, ptr %t64, !tbaa !21
  %t65 = load ptr, ptr %l0, !tbaa !29
  store ptr %t65, ptr %l35, !tbaa !29
  %t66 = load ptr, ptr %l35, !tbaa !29
  %t67 = getelementptr %"compiler/unparse:writer", ptr %t66, i32 0, i32 4
  %t68 = load i64, ptr %t67, !tbaa !24
  %t70 = sub i64 %t68, 1
  %t72 = load ptr, ptr %l35, !tbaa !29
  %t73 = getelementptr %"compiler/unparse:writer", ptr %t72, i32 0, i32 4
  store i64 %t70, ptr %t73, !tbaa !24
  %t74 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2enl(ptr %v0, ptr %t74)
  br label %bb14
bb14:
  %t76 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2eput(ptr %v0, ptr %s0, ptr %t76, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d5, i32 0, i32 1) })
  br label %bb15
bb15:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2funparse_2ecompiler_2funparse_3awriter_2ebody(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca { i64, ptr }
  %l2 = alloca i64
  %l6 = alloca { i64, ptr }
  %l8 = alloca %"compiler/source:Span"
  %l14 = alloca i1
  %l16 = alloca { i64, ptr }
  %l20 = alloca i1
  %l22 = alloca { i64, ptr }
  %l31 = alloca i1
  %l33 = alloca { i64, ptr }
  %l39 = alloca { i64, ptr }
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
  %t5 = icmp eq i64 %t3, 1
  br i1 %t5, label %bb1, label %bb2
bb1:
  %t7 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t7, ptr %l6, !tbaa !27
  %t8 = getelementptr { i64, ptr }, ptr %l6, i32 0, i32 1
  %t9 = load ptr, ptr %t8, !tbaa !27
  %t10 = getelementptr ptr, ptr %t9, i64 0
  %t11 = load ptr, ptr %t10, !tbaa !39
  %t13 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aStmt_2eSpan(ptr %v1, ptr %t11)
  store %"compiler/source:Span" %t13, ptr %l8
  br label %bb3
bb2:
  br label %bb24
bb3:
  %t14 = getelementptr %"compiler/source:Span", ptr %l8, i32 0, i32 0
  %t15 = load i32, ptr %t14, !tbaa !23
  %t17 = sext i32 %t15 to i64
  %t19 = sub i64 %t17, 1
  store i64 %t19, ptr %l2, !tbaa !24
  br label %bb4
bb4:
  %t21 = load i64, ptr %l2, !tbaa !24
  %t23 = icmp sge i64 %t21, 0
  br i1 %t23, label %bb5, label %bb6
bb5:
  %t25 = load ptr, ptr %l0, !tbaa !29
  %t27 = getelementptr %"compiler/unparse:writer", ptr %t25, i32 0, i32 1
  %t28 = load { i64, ptr }, ptr %t27, !tbaa !27
  store { i64, ptr } %t28, ptr %l16, !tbaa !27
  %t29 = load i64, ptr %l2, !tbaa !24
  %t31 = getelementptr { i64, ptr }, ptr %l16, i32 0, i32 1
  %t32 = load ptr, ptr %t31, !tbaa !27
  %t33 = getelementptr i8, ptr %t32, i64 %t29
  %t34 = load i8, ptr %t33, !tbaa !32
  %t36 = icmp eq i8 %t34, 32
  br i1 %t36, label %bb7, label %bb8
bb6:
  store i1 false, ptr %l14, !tbaa !21
  br label %bb10
bb7:
  store i1 true, ptr %l20, !tbaa !21
  br label %bb9
bb8:
  %t38 = load ptr, ptr %l0, !tbaa !29
  %t40 = getelementptr %"compiler/unparse:writer", ptr %t38, i32 0, i32 1
  %t41 = load { i64, ptr }, ptr %t40, !tbaa !27
  store { i64, ptr } %t41, ptr %l22, !tbaa !27
  %t42 = load i64, ptr %l2, !tbaa !24
  %t44 = getelementptr { i64, ptr }, ptr %l22, i32 0, i32 1
  %t45 = load ptr, ptr %t44, !tbaa !27
  %t46 = getelementptr i8, ptr %t45, i64 %t42
  %t47 = load i8, ptr %t46, !tbaa !32
  %t49 = icmp eq i8 %t47, 9
  store i1 %t49, ptr %l20, !tbaa !21
  br label %bb9
bb9:
  %t51 = load i1, ptr %l20, !tbaa !21
  store i1 %t51, ptr %l14, !tbaa !21
  br label %bb10
bb10:
  %t52 = load i1, ptr %l14, !tbaa !21
  %t53 = xor i1 %t52, true
  br i1 %t53, label %bb11, label %bb12
bb11:
  br label %bb15
bb12:
  br label %bb13
bb13:
  %t55 = load i64, ptr %l2, !tbaa !24
  %t57 = sub i64 %t55, 1
  store i64 %t57, ptr %l2, !tbaa !24
  br label %bb14
bb14:
  br label %bb4
bb15:
  %t59 = load i64, ptr %l2, !tbaa !24
  %t61 = icmp sge i64 %t59, 0
  br i1 %t61, label %bb16, label %bb17
bb16:
  %t63 = load ptr, ptr %l0, !tbaa !29
  %t65 = getelementptr %"compiler/unparse:writer", ptr %t63, i32 0, i32 1
  %t66 = load { i64, ptr }, ptr %t65, !tbaa !27
  store { i64, ptr } %t66, ptr %l33, !tbaa !27
  %t67 = load i64, ptr %l2, !tbaa !24
  %t69 = getelementptr { i64, ptr }, ptr %l33, i32 0, i32 1
  %t70 = load ptr, ptr %t69, !tbaa !27
  %t71 = getelementptr i8, ptr %t70, i64 %t67
  %t72 = load i8, ptr %t71, !tbaa !32
  %t74 = icmp eq i8 %t72, 58
  store i1 %t74, ptr %l31, !tbaa !21
  br label %bb18
bb17:
  store i1 false, ptr %l31, !tbaa !21
  br label %bb18
bb18:
  %t76 = load i1, ptr %l31, !tbaa !21
  br i1 %t76, label %bb19, label %bb20
bb19:
  store %olang.scope zeroinitializer, ptr %s3
  %t77 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2eput(ptr %v0, ptr %s3, ptr %t77, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d6, i32 0, i32 1) })
  br label %bb21
bb20:
  br label %bb23
bb21:
  %t79 = load ptr, ptr %l0, !tbaa !29
  %t80 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t80, ptr %l39, !tbaa !27
  %t81 = getelementptr { i64, ptr }, ptr %l39, i32 0, i32 1
  %t82 = load ptr, ptr %t81, !tbaa !27
  %t83 = getelementptr ptr, ptr %t82, i64 0
  %t84 = load ptr, ptr %t83, !tbaa !39
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2estmt(ptr %v0, ptr %v1, ptr %t79, ptr %t84)
  br label %bb22
bb22:
  call void @__olang_scope_close(ptr %s3)
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb23:
  br label %bb24
bb24:
  %t87 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2eput(ptr %v0, ptr %s0, ptr %t87, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d7, i32 0, i32 1) })
  br label %bb25
bb25:
  %t89 = load ptr, ptr %l0, !tbaa !29
  %t90 = load { i64, ptr }, ptr %l1, !tbaa !27
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2eblock(ptr %v0, ptr %v1, ptr %t89, { i64, ptr } %t90)
  br label %bb26
bb26:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2funparse_2ecompiler_2funparse_3awriter_2ebranch(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l6 = alloca i1
  %l11 = alloca i1
  %l13 = alloca { i64, ptr }
  %s2 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l1, !tbaa !29
  %t3 = getelementptr %"compiler/ast:Branch", ptr %t1, i32 0, i32 1
  %t4 = load { i64, ptr }, ptr %t3, !tbaa !27
  %t6 = extractvalue { i64, ptr } %t4, 0
  %t8 = icmp eq i64 %t6, 0
  br i1 %t8, label %bb1, label %bb2
bb1:
  store i1 true, ptr %l6, !tbaa !21
  br label %bb4
bb2:
  %t10 = load ptr, ptr %l0, !tbaa !29
  %t12 = getelementptr %"compiler/unparse:writer", ptr %t10, i32 0, i32 2
  %t13 = load ptr, ptr %t12, !tbaa !29
  %t14 = load ptr, ptr %l1, !tbaa !29
  %t16 = getelementptr %"compiler/ast:Branch", ptr %t14, i32 0, i32 2
  %t17 = load i64, ptr %t16, !tbaa !24
  %t20 = call i1 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eHolds(ptr %v0, ptr %t13, i64 %t17)
  store i1 %t20, ptr %l11
  br label %bb3
bb3:
  %t21 = load i1, ptr %l11, !tbaa !21
  store i1 %t21, ptr %l6, !tbaa !21
  br label %bb4
bb4:
  %t22 = load i1, ptr %l6, !tbaa !21
  br i1 %t22, label %bb5, label %bb6
bb5:
  %t23 = load ptr, ptr %l0, !tbaa !29
  %t25 = getelementptr %"compiler/unparse:writer", ptr %t23, i32 0, i32 1
  %t26 = load { i64, ptr }, ptr %t25, !tbaa !27
  store { i64, ptr } %t26, ptr %l13, !tbaa !27
  %t27 = load ptr, ptr %l1, !tbaa !29
  %t29 = getelementptr %"compiler/ast:Branch", ptr %t27, i32 0, i32 0
  %t30 = getelementptr %"compiler/source:Span", ptr %t29, i32 0, i32 0
  %t31 = load i32, ptr %t30, !tbaa !23
  %t33 = sext i32 %t31 to i64
  %t35 = getelementptr { i64, ptr }, ptr %l13, i32 0, i32 1
  %t36 = load ptr, ptr %t35, !tbaa !27
  %t37 = getelementptr i8, ptr %t36, i64 %t33
  %t38 = load i8, ptr %t37, !tbaa !32
  %t40 = icmp ne i8 %t38, 58
  br i1 %t40, label %bb7, label %bb8
bb6:
  br label %bb13
bb7:
  store %olang.scope zeroinitializer, ptr %s2
  %t42 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2eput(ptr %v0, ptr %s2, ptr %t42, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d8, i32 0, i32 1) })
  br label %bb9
bb8:
  br label %bb10
bb9:
  call void @__olang_scope_close(ptr %s2)
  br label %bb10
bb10:
  %t44 = load ptr, ptr %l0, !tbaa !29
  %t45 = load ptr, ptr %l1, !tbaa !29
  %t47 = getelementptr %"compiler/ast:Branch", ptr %t45, i32 0, i32 0
  %t48 = load %"compiler/source:Span", ptr %t47
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2espan(ptr %v0, ptr %t44, %"compiler/source:Span" %t48)
  br label %bb11
bb11:
  %t51 = load ptr, ptr %l0, !tbaa !29
  %t53 = getelementptr %"compiler/unparse:writer", ptr %t51, i32 0, i32 5
  %t54 = load ptr, ptr %l1, !tbaa !29
  %t56 = getelementptr %"compiler/ast:Branch", ptr %t54, i32 0, i32 0
  %t57 = load %"compiler/source:Span", ptr %t56
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aSpan_3e_2ePush_3ccompiler_2fsource_3aSpan_3e(ptr %v0, ptr %t53, %"compiler/source:Span" %t57)
  br label %bb12
bb12:
  br label %ret
bb13:
  %t60 = load ptr, ptr %l0, !tbaa !29
  %t61 = load ptr, ptr %l1, !tbaa !29
  %t63 = getelementptr %"compiler/ast:Branch", ptr %t61, i32 0, i32 1
  %t64 = load { i64, ptr }, ptr %t63, !tbaa !27
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2ebody(ptr %v0, ptr %v1, ptr %t60, { i64, ptr } %t64)
  br label %bb14
bb14:
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2funparse_2ecompiler_2funparse_3awriter_2ecaseBody(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l7 = alloca ptr
  %s1 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l1, !tbaa !29
  %t3 = getelementptr %"compiler/ast:Case", ptr %t1, i32 0, i32 5
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t6 = icmp eq ptr %t4, null
  %t8 = xor i1 %t6, true
  br i1 %t8, label %bb1, label %bb2
bb1:
  store %olang.scope zeroinitializer, ptr %s1
  %t10 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2eput(ptr %v0, ptr %s1, ptr %t10, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d9, i32 0, i32 1) })
  br label %bb3
bb2:
  br label %bb8
bb3:
  %t12 = load ptr, ptr %l0, !tbaa !29
  store ptr %t12, ptr %l7, !tbaa !29
  %t13 = load ptr, ptr %l1, !tbaa !29
  %t15 = getelementptr %"compiler/ast:Case", ptr %t13, i32 0, i32 5
  %t16 = load ptr, ptr %t15, !tbaa !29
  %t18 = icmp eq ptr %t16, null
  br i1 %t18, label %bb4, label %bb5
bb4:
  call void @__olang_check_failed(ptr @olang_loc_6d411809e3c45284_6ddb613e25dacce8)
  unreachable
bb5:
  br label %bb6
bb6:
  %t20 = load ptr, ptr %l1, !tbaa !29
  %t22 = getelementptr %"compiler/ast:Case", ptr %t20, i32 0, i32 5
  %t23 = load ptr, ptr %t22, !tbaa !29
  %t24 = load ptr, ptr %l7, !tbaa !29
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2eexpr(ptr %v0, ptr %v1, ptr %t24, ptr %t23)
  br label %bb7
bb7:
  call void @__olang_scope_close(ptr %s1)
  br label %ret
bb8:
  %t26 = load ptr, ptr %l0, !tbaa !29
  %t27 = load ptr, ptr %l1, !tbaa !29
  %t29 = getelementptr %"compiler/ast:Case", ptr %t27, i32 0, i32 4
  %t30 = load { i64, ptr }, ptr %t29, !tbaa !27
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2ebody(ptr %v0, ptr %v1, ptr %t26, { i64, ptr } %t30)
  br label %bb9
bb9:
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2funparse_2ecompiler_2funparse_3awriter_2eclauses(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca { i64, ptr }
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca ptr
  %l6 = alloca { i64, ptr }
  %l7 = alloca i64
  %l8 = alloca i64
  %l10 = alloca ptr
  %l18 = alloca { i64, ptr }
  %l31 = alloca { i64, ptr }
  %l34 = alloca ptr
  %l37 = alloca { i64, ptr }
  %l38 = alloca ptr
  %l39 = alloca i64
  %s2 = alloca %olang.scope
  %s4 = alloca %olang.scope
  %s6 = alloca %olang.scope
  %s7 = alloca %olang.scope
  %s8 = alloca %olang.scope
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
  store %olang.scope zeroinitializer, ptr %s2
  %t7 = load i64, ptr %l3, !tbaa !24
  %t8 = load i64, ptr %l4, !tbaa !24
  %t11 = icmp slt i64 %t7, %t8
  %t13 = xor i1 %t11, true
  br i1 %t13, label %bb2, label %bb3
bb2:
  call void @__olang_scope_close(ptr %s2)
  br label %bb35
bb3:
  br label %bb4
bb4:
  %t15 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t15, ptr %l18, !tbaa !27
  %t16 = load i64, ptr %l3, !tbaa !24
  %t18 = getelementptr { i64, ptr }, ptr %l18, i32 0, i32 1
  %t19 = load ptr, ptr %t18, !tbaa !27
  %t20 = getelementptr ptr, ptr %t19, i64 %t16
  %t21 = load ptr, ptr %t20, !tbaa !39
  store ptr %t21, ptr %l5, !tbaa !29
  %t23 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2eput(ptr %v0, ptr %s2, ptr %t23, { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d10, i32 0, i32 1) })
  br label %bb5
bb5:
  %t25 = load ptr, ptr %l5, !tbaa !29
  %t27 = getelementptr %"compiler/ast:Catch", ptr %t25, i32 0, i32 1
  %t28 = load { i64, ptr }, ptr %t27, !tbaa !27
  store { i64, ptr } %t28, ptr %l6, !tbaa !27
  store i64 0, ptr %l7, !tbaa !24
  %t30 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t32 = extractvalue { i64, ptr } %t30, 0
  store i64 %t32, ptr %l8, !tbaa !24
  br label %bb6
bb6:
  store %olang.scope zeroinitializer, ptr %s4
  %t34 = load i64, ptr %l7, !tbaa !24
  %t35 = load i64, ptr %l8, !tbaa !24
  %t38 = icmp slt i64 %t34, %t35
  %t40 = xor i1 %t38, true
  br i1 %t40, label %bb7, label %bb8
bb7:
  call void @__olang_scope_close(ptr %s4)
  br label %bb18
bb8:
  br label %bb9
bb9:
  %t42 = load i64, ptr %l7, !tbaa !24
  %t44 = load { i64, ptr }, ptr %l6, !tbaa !27
  store { i64, ptr } %t44, ptr %l31, !tbaa !27
  %t45 = load i64, ptr %l7, !tbaa !24
  %t47 = getelementptr { i64, ptr }, ptr %l31, i32 0, i32 1
  %t48 = load ptr, ptr %t47, !tbaa !27
  %t49 = getelementptr ptr, ptr %t48, i64 %t45
  %t50 = load ptr, ptr %t49, !tbaa !39
  store ptr %t50, ptr %l10, !tbaa !29
  %t52 = load ptr, ptr %l0, !tbaa !29
  store ptr %t52, ptr %l34, !tbaa !29
  %t55 = icmp sgt i64 %t42, 0
  br i1 %t55, label %bb10, label %bb11
bb10:
  store { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d11, i32 0, i32 1) }, ptr %l37, !tbaa !27
  br label %bb12
bb11:
  store { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d12, i32 0, i32 1) }, ptr %l37, !tbaa !27
  br label %bb12
bb12:
  %t57 = load ptr, ptr %l34, !tbaa !29
  %t58 = load { i64, ptr }, ptr %l37, !tbaa !27
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2eput(ptr %v0, ptr %s4, ptr %t57, { i64, ptr } %t58)
  br label %bb13
bb13:
  %t59 = load ptr, ptr %l10, !tbaa !29
  store ptr %t59, ptr %l38, !tbaa !29
  %t60 = ptrtoint ptr %v1 to i64
  store i64 %t60, ptr %l39, !tbaa !24
  %t61 = load i1, ptr @olang_2esole_2eArray_3ccompiler_2fast_3aPath_26_3e_2e_2d1
  br i1 %t61, label %bb14, label %bb15
bb14:
  %t63 = load ptr, ptr %l38, !tbaa !29
  %t64 = call ptr @__olang_region_or(ptr %t63, ptr %v1)
  %t65 = ptrtoint ptr %t64 to i64
  store i64 %t65, ptr %l39, !tbaa !24
  br label %bb15
bb15:
  %t66 = load ptr, ptr %l0, !tbaa !29
  %t67 = load ptr, ptr %l10, !tbaa !29
  %t68 = load i64, ptr %l39
  %t69 = inttoptr i64 %t68 to ptr
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2epath(ptr %v0, ptr %t69, ptr %t66, ptr %t67)
  br label %bb16
bb16:
  call void @__olang_scope_close(ptr %s4)
  br label %bb17
bb17:
  %t72 = load i64, ptr %l7, !tbaa !24
  %t74 = add i64 %t72, 1
  store i64 %t74, ptr %l7, !tbaa !24
  br label %bb6
bb18:
  %t76 = load ptr, ptr %l5, !tbaa !29
  %t78 = getelementptr %"compiler/ast:Catch", ptr %t76, i32 0, i32 5
  %t79 = load i32, ptr %t78, !tbaa !23
  %t81 = icmp ne i32 %t79, 0
  br i1 %t81, label %bb19, label %bb20
bb19:
  store %olang.scope zeroinitializer, ptr %s6
  %t83 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2eput(ptr %v0, ptr %s6, ptr %t83, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d13, i32 0, i32 1) })
  br label %bb21
bb20:
  br label %bb23
bb21:
  %t85 = load ptr, ptr %l0, !tbaa !29
  %t86 = load ptr, ptr %l5, !tbaa !29
  %t88 = getelementptr %"compiler/ast:Catch", ptr %t86, i32 0, i32 5
  %t89 = load i32, ptr %t88, !tbaa !23
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2ename(ptr %v0, ptr %t85, i32 %t89)
  br label %bb22
bb22:
  call void @__olang_scope_close(ptr %s6)
  br label %bb23
bb23:
  %t92 = load ptr, ptr %l5, !tbaa !29
  %t94 = getelementptr %"compiler/ast:Catch", ptr %t92, i32 0, i32 4
  %t95 = load i1, ptr %t94, !tbaa !21
  br i1 %t95, label %bb24, label %bb25
bb24:
  store %olang.scope zeroinitializer, ptr %s7
  %t97 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2eput(ptr %v0, ptr %s7, ptr %t97, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d14, i32 0, i32 1) })
  br label %bb26
bb25:
  br label %bb28
bb26:
  %t99 = load ptr, ptr %l0, !tbaa !29
  %t100 = load ptr, ptr %l5, !tbaa !29
  %t102 = getelementptr %"compiler/ast:Catch", ptr %t100, i32 0, i32 2
  %t103 = load { i64, ptr }, ptr %t102, !tbaa !27
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2eblock(ptr %v0, ptr %v1, ptr %t99, { i64, ptr } %t103)
  br label %bb27
bb27:
  call void @__olang_scope_close(ptr %s7)
  br label %bb28
bb28:
  %t106 = load ptr, ptr %l5, !tbaa !29
  %t108 = getelementptr %"compiler/ast:Catch", ptr %t106, i32 0, i32 3
  %t109 = load { i64, ptr }, ptr %t108, !tbaa !27
  %t111 = extractvalue { i64, ptr } %t109, 0
  %t113 = icmp sgt i64 %t111, 0
  br i1 %t113, label %bb29, label %bb30
bb29:
  store %olang.scope zeroinitializer, ptr %s8
  %t115 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2eput(ptr %v0, ptr %s8, ptr %t115, { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d15, i32 0, i32 1) })
  br label %bb31
bb30:
  br label %bb33
bb31:
  %t117 = load ptr, ptr %l0, !tbaa !29
  %t118 = load ptr, ptr %l5, !tbaa !29
  %t120 = getelementptr %"compiler/ast:Catch", ptr %t118, i32 0, i32 3
  %t121 = load { i64, ptr }, ptr %t120, !tbaa !27
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2eexprs(ptr %v0, ptr %v1, ptr %t117, { i64, ptr } %t121)
  br label %bb32
bb32:
  call void @__olang_scope_close(ptr %s8)
  br label %bb33
bb33:
  call void @__olang_scope_close(ptr %s2)
  br label %bb34
bb34:
  %t124 = load i64, ptr %l3, !tbaa !24
  %t126 = add i64 %t124, 1
  store i64 %t126, ptr %l3, !tbaa !24
  br label %bb1
bb35:
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2funparse_2ecompiler_2funparse_3awriter_2econtract(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca i1
  %l4 = alloca { i64, ptr }
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca ptr
  %l25 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %s4 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l1, !tbaa !29
  %t3 = getelementptr %"compiler/ast:Sig", ptr %t1, i32 0, i32 5
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t6 = icmp eq ptr %t4, null
  br i1 %t6, label %bb1, label %bb2
bb1:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb2:
  br label %bb3
bb3:
  %t8 = load ptr, ptr %l1, !tbaa !29
  %t10 = getelementptr %"compiler/ast:Sig", ptr %t8, i32 0, i32 5
  %t11 = load ptr, ptr %t10, !tbaa !29
  %t13 = icmp eq ptr %t11, null
  br i1 %t13, label %bb4, label %bb5
bb4:
  call void @__olang_check_failed(ptr @olang_loc_3b272a795e4745a2_9a90297686d0fdde)
  unreachable
bb5:
  br label %bb6
bb6:
  %t15 = load ptr, ptr %l1, !tbaa !29
  %t17 = getelementptr %"compiler/ast:Sig", ptr %t15, i32 0, i32 5
  %t18 = load ptr, ptr %t17, !tbaa !29
  store ptr %t18, ptr %l2, !tbaa !29
  %t20 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2eput(ptr %v0, ptr %s0, ptr %t20, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d16, i32 0, i32 1) })
  br label %bb7
bb7:
  store i1 true, ptr %l3, !tbaa !21
  %t22 = load ptr, ptr %l2, !tbaa !29
  %t24 = getelementptr %"compiler/ast:ContractBlock", ptr %t22, i32 0, i32 1
  %t25 = load { i64, ptr }, ptr %t24, !tbaa !27
  store { i64, ptr } %t25, ptr %l4, !tbaa !27
  store i64 0, ptr %l5, !tbaa !24
  %t27 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t29 = extractvalue { i64, ptr } %t27, 0
  store i64 %t29, ptr %l6, !tbaa !24
  br label %bb8
bb8:
  %t31 = load i64, ptr %l5, !tbaa !24
  %t32 = load i64, ptr %l6, !tbaa !24
  %t35 = icmp slt i64 %t31, %t32
  %t37 = xor i1 %t35, true
  br i1 %t37, label %bb9, label %bb10
bb9:
  br label %bb18
bb10:
  br label %bb11
bb11:
  %t39 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t39, ptr %l25, !tbaa !27
  %t40 = load i64, ptr %l5, !tbaa !24
  %t42 = getelementptr { i64, ptr }, ptr %l25, i32 0, i32 1
  %t43 = load ptr, ptr %t42, !tbaa !27
  %t44 = getelementptr ptr, ptr %t43, i64 %t40
  %t45 = load ptr, ptr %t44, !tbaa !39
  store ptr %t45, ptr %l7, !tbaa !29
  %t47 = load i1, ptr %l3, !tbaa !21
  %t49 = xor i1 %t47, true
  br i1 %t49, label %bb12, label %bb13
bb12:
  store %olang.scope zeroinitializer, ptr %s4
  %t51 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2eput(ptr %v0, ptr %s4, ptr %t51, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d17, i32 0, i32 1) })
  br label %bb14
bb13:
  br label %bb15
bb14:
  call void @__olang_scope_close(ptr %s4)
  br label %bb15
bb15:
  store i1 false, ptr %l3, !tbaa !21
  %t53 = load ptr, ptr %l0, !tbaa !29
  %t54 = load ptr, ptr %l7, !tbaa !29
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2econtractItem(ptr %v0, ptr %v1, ptr %t53, ptr %t54)
  br label %bb16
bb16:
  br label %bb17
bb17:
  %t57 = load i64, ptr %l5, !tbaa !24
  %t59 = add i64 %t57, 1
  store i64 %t59, ptr %l5, !tbaa !24
  br label %bb8
bb18:
  %t61 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2eput(ptr %v0, ptr %s0, ptr %t61, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d18, i32 0, i32 1) })
  br label %bb19
bb19:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2funparse_2ecompiler_2funparse_3awriter_2econtractItem(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca ptr
  %l4 = alloca i1
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l1, !tbaa !29
  store ptr %t1, ptr %l3, !tbaa !29
  store i1 false, ptr %l4, !tbaa !21
  %t2 = load ptr, ptr %l3, !tbaa !29
  %t3 = icmp ne ptr %t2, null
  br i1 %t3, label %bb1, label %bb2
bb1:
  %t5 = load ptr, ptr %l3, !tbaa !29
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 22}
  %t8 = icmp eq i64 %t6, 14
  store i1 %t8, ptr %l4, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l4, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  %t10 = load ptr, ptr %l1, !tbaa !29
  %t12 = getelementptr { i64, [4 x i64] }, ptr %t10, i32 0, i32 1
  %t13 = getelementptr { %"compiler/source:Span", ptr, ptr }, ptr %t12, i32 0, i32 1
  %t14 = load ptr, ptr %t13
  store ptr %t14, ptr %l2, !tbaa !29
  br label %bb5
bb4:
  br label %bb7
bb5:
  %t17 = load ptr, ptr %l2, !tbaa !29
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2eexpr(ptr %v0, ptr %v1, ptr %a0, ptr %t17)
  br label %bb6
bb6:
  br label %bb12
bb7:
  br i1 true, label %bb8, label %bb9
bb8:
  br label %bb10
bb9:
  br label %bb11
bb10:
  br label %bb12
bb11:
  call void @__olang_check_failed(ptr @olang_loc_7ff52852c0aa476c_d4838bd4ef885ee0)
  unreachable
bb12:
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2funparse_2ecompiler_2funparse_3awriter_2edecl(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca ptr
  %l4 = alloca %"compiler/source:Span"
  %l5 = alloca { i64, ptr }
  %l6 = alloca ptr
  %l7 = alloca ptr
  %l8 = alloca i32
  %l9 = alloca %"compiler/source:Span"
  %l10 = alloca %"compiler/source:Span"
  %l11 = alloca i32
  %l12 = alloca { i64, ptr }
  %l13 = alloca { i64, ptr }
  %l14 = alloca { i64, ptr }
  %l15 = alloca %"compiler/source:Span"
  %l16 = alloca { i64, ptr }
  %l17 = alloca ptr
  %l18 = alloca { i64, ptr }
  %l19 = alloca i64
  %l20 = alloca i64
  %l22 = alloca i32
  %l23 = alloca ptr
  %l24 = alloca ptr
  %l25 = alloca ptr
  %l26 = alloca ptr
  %l27 = alloca ptr
  %l28 = alloca ptr
  %l29 = alloca i1
  %l36 = alloca ptr
  %l37 = alloca i1
  %l45 = alloca ptr
  %l46 = alloca i1
  %l56 = alloca ptr
  %l57 = alloca i1
  %l64 = alloca ptr
  %l65 = alloca i1
  %l75 = alloca ptr
  %l76 = alloca i1
  %l98 = alloca ptr
  %l99 = alloca i1
  %l115 = alloca ptr
  %l116 = alloca i1
  %l138 = alloca { i64, ptr }
  %l154 = alloca ptr
  %l155 = alloca i1
  %l162 = alloca ptr
  %l163 = alloca i1
  %l175 = alloca ptr
  %l176 = alloca i1
  %s2 = alloca %olang.scope
  %s7 = alloca %olang.scope
  %s8 = alloca %olang.scope
  %s9 = alloca %olang.scope
  %s11 = alloca %olang.scope
  %s12 = alloca %olang.scope
  %s15 = alloca %olang.scope
  %s18 = alloca %olang.scope
  %s19 = alloca %olang.scope
  %s20 = alloca %olang.scope
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
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 11}
  %t8 = icmp eq i64 %t6, 0
  store i1 %t8, ptr %l29, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l29, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  %t10 = load ptr, ptr %l1, !tbaa !29
  %t12 = getelementptr { i64, [8 x i64] }, ptr %t10, i32 0, i32 1
  %t13 = getelementptr { ptr }, ptr %t12, i32 0, i32 0
  %t14 = load ptr, ptr %t13
  store ptr %t14, ptr %l2, !tbaa !29
  br label %bb5
bb4:
  br label %bb7
bb5:
  %t16 = load ptr, ptr %l0, !tbaa !29
  %t17 = load ptr, ptr %l2, !tbaa !29
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2efunc(ptr %v0, ptr %v1, ptr %t16, ptr %t17)
  br label %bb6
bb6:
  br label %bb119
bb7:
  %t20 = load ptr, ptr %l1, !tbaa !29
  store ptr %t20, ptr %l36, !tbaa !29
  store i1 false, ptr %l37, !tbaa !21
  %t21 = load ptr, ptr %l36, !tbaa !29
  %t22 = icmp ne ptr %t21, null
  br i1 %t22, label %bb8, label %bb9
bb8:
  %t24 = load ptr, ptr %l36, !tbaa !29
  %t25 = load i64, ptr %t24, !range !{i64 0, i64 11}
  %t27 = icmp eq i64 %t25, 1
  store i1 %t27, ptr %l37, !tbaa !21
  br label %bb9
bb9:
  %t28 = load i1, ptr %l37, !tbaa !21
  br i1 %t28, label %bb10, label %bb11
bb10:
  %t29 = load ptr, ptr %l1, !tbaa !29
  %t31 = getelementptr { i64, [8 x i64] }, ptr %t29, i32 0, i32 1
  %t32 = getelementptr { ptr }, ptr %t31, i32 0, i32 0
  %t33 = load ptr, ptr %t32
  store ptr %t33, ptr %l3, !tbaa !29
  br label %bb12
bb11:
  br label %bb15
bb12:
  store %olang.scope zeroinitializer, ptr %s2
  %t35 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2eput(ptr %v0, ptr %s2, ptr %t35, { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d19, i32 0, i32 1) })
  br label %bb13
bb13:
  %t37 = load ptr, ptr %l0, !tbaa !29
  %t38 = load ptr, ptr %l3, !tbaa !29
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2eexternFn(ptr %v0, ptr %v1, ptr %t37, ptr %t38)
  br label %bb14
bb14:
  call void @__olang_scope_close(ptr %s2)
  br label %bb119
bb15:
  %t41 = load ptr, ptr %l1, !tbaa !29
  store ptr %t41, ptr %l45, !tbaa !29
  store i1 false, ptr %l46, !tbaa !21
  %t42 = load ptr, ptr %l45, !tbaa !29
  %t43 = icmp ne ptr %t42, null
  br i1 %t43, label %bb16, label %bb17
bb16:
  %t45 = load ptr, ptr %l45, !tbaa !29
  %t46 = load i64, ptr %t45, !range !{i64 0, i64 11}
  %t48 = icmp eq i64 %t46, 10
  store i1 %t48, ptr %l46, !tbaa !21
  br label %bb17
bb17:
  %t49 = load i1, ptr %l46, !tbaa !21
  br i1 %t49, label %bb18, label %bb19
bb18:
  %t50 = load ptr, ptr %l1, !tbaa !29
  %t52 = getelementptr { i64, [8 x i64] }, ptr %t50, i32 0, i32 1
  %t53 = getelementptr { %"compiler/source:Span", %"compiler/source:Span", { i64, ptr } }, ptr %t52, i32 0, i32 1
  %t54 = load %"compiler/source:Span", ptr %t53
  store %"compiler/source:Span" %t54, ptr %l4
  %t56 = load ptr, ptr %l1, !tbaa !29
  %t58 = getelementptr { i64, [8 x i64] }, ptr %t56, i32 0, i32 1
  %t59 = getelementptr { %"compiler/source:Span", %"compiler/source:Span", { i64, ptr } }, ptr %t58, i32 0, i32 2
  %t60 = load { i64, ptr }, ptr %t59
  store { i64, ptr } %t60, ptr %l5, !tbaa !27
  br label %bb20
bb19:
  br label %bb22
bb20:
  %t62 = load ptr, ptr %l0, !tbaa !29
  %t63 = load %"compiler/source:Span", ptr %l4
  %t64 = load { i64, ptr }, ptr %l5, !tbaa !27
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2eexternBlock(ptr %v0, ptr %v1, ptr %t62, %"compiler/source:Span" %t63, { i64, ptr } %t64)
  br label %bb21
bb21:
  br label %bb119
bb22:
  %t68 = load ptr, ptr %l1, !tbaa !29
  store ptr %t68, ptr %l56, !tbaa !29
  store i1 false, ptr %l57, !tbaa !21
  %t69 = load ptr, ptr %l56, !tbaa !29
  %t70 = icmp ne ptr %t69, null
  br i1 %t70, label %bb23, label %bb24
bb23:
  %t72 = load ptr, ptr %l56, !tbaa !29
  %t73 = load i64, ptr %t72, !range !{i64 0, i64 11}
  %t75 = icmp eq i64 %t73, 2
  store i1 %t75, ptr %l57, !tbaa !21
  br label %bb24
bb24:
  %t76 = load i1, ptr %l57, !tbaa !21
  br i1 %t76, label %bb25, label %bb26
bb25:
  %t77 = load ptr, ptr %l1, !tbaa !29
  %t79 = getelementptr { i64, [8 x i64] }, ptr %t77, i32 0, i32 1
  %t80 = getelementptr { %"compiler/source:Span", ptr }, ptr %t79, i32 0, i32 1
  %t81 = load ptr, ptr %t80
  store ptr %t81, ptr %l6, !tbaa !29
  br label %bb27
bb26:
  br label %bb29
bb27:
  %t83 = load ptr, ptr %l0, !tbaa !29
  %t84 = load ptr, ptr %l6, !tbaa !29
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2etypeDecl(ptr %v0, ptr %v1, ptr %t83, ptr %t84)
  br label %bb28
bb28:
  br label %bb119
bb29:
  %t87 = load ptr, ptr %l1, !tbaa !29
  store ptr %t87, ptr %l64, !tbaa !29
  store i1 false, ptr %l65, !tbaa !21
  %t88 = load ptr, ptr %l64, !tbaa !29
  %t89 = icmp ne ptr %t88, null
  br i1 %t89, label %bb30, label %bb31
bb30:
  %t91 = load ptr, ptr %l64, !tbaa !29
  %t92 = load i64, ptr %t91, !range !{i64 0, i64 11}
  %t94 = icmp eq i64 %t92, 3
  store i1 %t94, ptr %l65, !tbaa !21
  br label %bb31
bb31:
  %t95 = load i1, ptr %l65, !tbaa !21
  br i1 %t95, label %bb32, label %bb33
bb32:
  %t96 = load ptr, ptr %l1, !tbaa !29
  %t98 = getelementptr { i64, [8 x i64] }, ptr %t96, i32 0, i32 1
  %t99 = getelementptr { %"compiler/source:Span", ptr }, ptr %t98, i32 0, i32 1
  %t100 = load ptr, ptr %t99
  store ptr %t100, ptr %l7, !tbaa !29
  br label %bb34
bb33:
  br label %bb39
bb34:
  %t102 = load ptr, ptr %l7, !tbaa !29
  %t104 = getelementptr %"compiler/ast:VarDecl", ptr %t102, i32 0, i32 7
  %t105 = load i1, ptr %t104, !tbaa !21
  %t107 = xor i1 %t105, true
  br i1 %t107, label %bb35, label %bb36
bb35:
  %t109 = load ptr, ptr %l0, !tbaa !29
  %t110 = load ptr, ptr %l7, !tbaa !29
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2evarDecl(ptr %v0, ptr %v1, ptr %t109, ptr %t110)
  br label %bb37
bb36:
  br label %bb38
bb37:
  br label %bb38
bb38:
  br label %bb119
bb39:
  %t113 = load ptr, ptr %l1, !tbaa !29
  store ptr %t113, ptr %l75, !tbaa !29
  store i1 false, ptr %l76, !tbaa !21
  %t114 = load ptr, ptr %l75, !tbaa !29
  %t115 = icmp ne ptr %t114, null
  br i1 %t115, label %bb40, label %bb41
bb40:
  %t117 = load ptr, ptr %l75, !tbaa !29
  %t118 = load i64, ptr %t117, !range !{i64 0, i64 11}
  %t120 = icmp eq i64 %t118, 4
  store i1 %t120, ptr %l76, !tbaa !21
  br label %bb41
bb41:
  %t121 = load i1, ptr %l76, !tbaa !21
  br i1 %t121, label %bb42, label %bb43
bb42:
  %t122 = load ptr, ptr %l1, !tbaa !29
  %t124 = getelementptr { i64, [8 x i64] }, ptr %t122, i32 0, i32 1
  %t125 = getelementptr { %"compiler/source:Span", i32, %"compiler/source:Span", %"compiler/source:Span" }, ptr %t124, i32 0, i32 1
  %t126 = load i32, ptr %t125
  store i32 %t126, ptr %l8, !tbaa !23
  %t128 = load ptr, ptr %l1, !tbaa !29
  %t130 = getelementptr { i64, [8 x i64] }, ptr %t128, i32 0, i32 1
  %t131 = getelementptr { %"compiler/source:Span", i32, %"compiler/source:Span", %"compiler/source:Span" }, ptr %t130, i32 0, i32 2
  %t132 = load %"compiler/source:Span", ptr %t131
  store %"compiler/source:Span" %t132, ptr %l9
  %t134 = load ptr, ptr %l1, !tbaa !29
  %t136 = getelementptr { i64, [8 x i64] }, ptr %t134, i32 0, i32 1
  %t137 = getelementptr { %"compiler/source:Span", i32, %"compiler/source:Span", %"compiler/source:Span" }, ptr %t136, i32 0, i32 3
  %t138 = load %"compiler/source:Span", ptr %t137
  store %"compiler/source:Span" %t138, ptr %l10
  br label %bb44
bb43:
  br label %bb57
bb44:
  store %olang.scope zeroinitializer, ptr %s7
  %t140 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2eput(ptr %v0, ptr %s7, ptr %t140, { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d20, i32 0, i32 1) })
  br label %bb45
bb45:
  %t142 = load i32, ptr %l8, !tbaa !23
  %t144 = icmp ne i32 %t142, 0
  br i1 %t144, label %bb46, label %bb47
bb46:
  store %olang.scope zeroinitializer, ptr %s8
  %t146 = load ptr, ptr %l0, !tbaa !29
  %t147 = load i32, ptr %l8, !tbaa !23
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2ename(ptr %v0, ptr %t146, i32 %t147)
  br label %bb48
bb47:
  br label %bb50
bb48:
  %t150 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2eput(ptr %v0, ptr %s8, ptr %t150, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d21, i32 0, i32 1) })
  br label %bb49
bb49:
  call void @__olang_scope_close(ptr %s8)
  br label %bb50
bb50:
  %t152 = load ptr, ptr %l0, !tbaa !29
  %t153 = load %"compiler/source:Span", ptr %l9
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2espan(ptr %v0, ptr %t152, %"compiler/source:Span" %t153)
  br label %bb51
bb51:
  %t156 = getelementptr %"compiler/source:Span", ptr %l10, i32 0, i32 1
  %t157 = load i32, ptr %t156, !tbaa !23
  %t159 = icmp sgt i32 %t157, 0
  br i1 %t159, label %bb52, label %bb53
bb52:
  store %olang.scope zeroinitializer, ptr %s9
  %t161 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2eput(ptr %v0, ptr %s9, ptr %t161, { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d22, i32 0, i32 1) })
  br label %bb54
bb53:
  br label %bb56
bb54:
  %t163 = load ptr, ptr %l0, !tbaa !29
  %t164 = load %"compiler/source:Span", ptr %l10
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2espan(ptr %v0, ptr %t163, %"compiler/source:Span" %t164)
  br label %bb55
bb55:
  call void @__olang_scope_close(ptr %s9)
  br label %bb56
bb56:
  call void @__olang_scope_close(ptr %s7)
  br label %bb119
bb57:
  %t167 = load ptr, ptr %l1, !tbaa !29
  store ptr %t167, ptr %l98, !tbaa !29
  store i1 false, ptr %l99, !tbaa !21
  %t168 = load ptr, ptr %l98, !tbaa !29
  %t169 = icmp ne ptr %t168, null
  br i1 %t169, label %bb58, label %bb59
bb58:
  %t171 = load ptr, ptr %l98, !tbaa !29
  %t172 = load i64, ptr %t171, !range !{i64 0, i64 11}
  %t174 = icmp eq i64 %t172, 5
  store i1 %t174, ptr %l99, !tbaa !21
  br label %bb59
bb59:
  %t175 = load i1, ptr %l99, !tbaa !21
  br i1 %t175, label %bb60, label %bb61
bb60:
  %t176 = load ptr, ptr %l1, !tbaa !29
  %t178 = getelementptr { i64, [8 x i64] }, ptr %t176, i32 0, i32 1
  %t179 = getelementptr { %"compiler/source:Span", i32, { i64, ptr }, { i64, ptr }, { i64, ptr } }, ptr %t178, i32 0, i32 1
  %t180 = load i32, ptr %t179
  store i32 %t180, ptr %l11, !tbaa !23
  %t182 = load ptr, ptr %l1, !tbaa !29
  %t184 = getelementptr { i64, [8 x i64] }, ptr %t182, i32 0, i32 1
  %t185 = getelementptr { %"compiler/source:Span", i32, { i64, ptr }, { i64, ptr }, { i64, ptr } }, ptr %t184, i32 0, i32 2
  %t186 = load { i64, ptr }, ptr %t185
  store { i64, ptr } %t186, ptr %l12, !tbaa !27
  %t188 = load ptr, ptr %l1, !tbaa !29
  %t190 = getelementptr { i64, [8 x i64] }, ptr %t188, i32 0, i32 1
  %t191 = getelementptr { %"compiler/source:Span", i32, { i64, ptr }, { i64, ptr }, { i64, ptr } }, ptr %t190, i32 0, i32 3
  %t192 = load { i64, ptr }, ptr %t191
  store { i64, ptr } %t192, ptr %l13, !tbaa !27
  %t194 = load ptr, ptr %l1, !tbaa !29
  %t196 = getelementptr { i64, [8 x i64] }, ptr %t194, i32 0, i32 1
  %t197 = getelementptr { %"compiler/source:Span", i32, { i64, ptr }, { i64, ptr }, { i64, ptr } }, ptr %t196, i32 0, i32 4
  %t198 = load { i64, ptr }, ptr %t197
  store { i64, ptr } %t198, ptr %l14, !tbaa !27
  br label %bb62
bb61:
  br label %bb64
bb62:
  %t200 = load ptr, ptr %l0, !tbaa !29
  %t201 = load i32, ptr %l11, !tbaa !23
  %t202 = load { i64, ptr }, ptr %l12, !tbaa !27
  %t203 = load { i64, ptr }, ptr %l13, !tbaa !27
  %t204 = load { i64, ptr }, ptr %l14, !tbaa !27
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2eerrorDecl(ptr %v0, ptr %v1, ptr %v1, ptr %v1, ptr %t200, i32 %t201, { i64, ptr } %t202, { i64, ptr } %t203, { i64, ptr } %t204)
  br label %bb63
bb63:
  br label %bb119
bb64:
  %t210 = load ptr, ptr %l1, !tbaa !29
  store ptr %t210, ptr %l115, !tbaa !29
  store i1 false, ptr %l116, !tbaa !21
  %t211 = load ptr, ptr %l115, !tbaa !29
  %t212 = icmp ne ptr %t211, null
  br i1 %t212, label %bb65, label %bb66
bb65:
  %t214 = load ptr, ptr %l115, !tbaa !29
  %t215 = load i64, ptr %t214, !range !{i64 0, i64 11}
  %t217 = icmp eq i64 %t215, 6
  store i1 %t217, ptr %l116, !tbaa !21
  br label %bb66
bb66:
  %t218 = load i1, ptr %l116, !tbaa !21
  br i1 %t218, label %bb67, label %bb68
bb67:
  %t219 = load ptr, ptr %l1, !tbaa !29
  %t221 = getelementptr { i64, [8 x i64] }, ptr %t219, i32 0, i32 1
  %t222 = getelementptr { %"compiler/source:Span", %"compiler/source:Span", { i64, ptr }, ptr }, ptr %t221, i32 0, i32 1
  %t223 = load %"compiler/source:Span", ptr %t222
  store %"compiler/source:Span" %t223, ptr %l15
  %t225 = load ptr, ptr %l1, !tbaa !29
  %t227 = getelementptr { i64, [8 x i64] }, ptr %t225, i32 0, i32 1
  %t228 = getelementptr { %"compiler/source:Span", %"compiler/source:Span", { i64, ptr }, ptr }, ptr %t227, i32 0, i32 2
  %t229 = load { i64, ptr }, ptr %t228
  store { i64, ptr } %t229, ptr %l16, !tbaa !27
  %t231 = load ptr, ptr %l1, !tbaa !29
  %t233 = getelementptr { i64, [8 x i64] }, ptr %t231, i32 0, i32 1
  %t234 = getelementptr { %"compiler/source:Span", %"compiler/source:Span", { i64, ptr }, ptr }, ptr %t233, i32 0, i32 3
  %t235 = load ptr, ptr %t234
  store ptr %t235, ptr %l17, !tbaa !29
  br label %bb69
bb68:
  br label %bb89
bb69:
  store %olang.scope zeroinitializer, ptr %s11
  %t237 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2eput(ptr %v0, ptr %s11, ptr %t237, { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d23, i32 0, i32 1) })
  br label %bb70
bb70:
  %t239 = load ptr, ptr %l17, !tbaa !29
  %t241 = icmp eq ptr %t239, null
  %t243 = xor i1 %t241, true
  br i1 %t243, label %bb71, label %bb72
bb71:
  store %olang.scope zeroinitializer, ptr %s12
  %t245 = load ptr, ptr %l17, !tbaa !29
  %t247 = getelementptr %"compiler/ast:Path", ptr %t245, i32 0, i32 1
  %t248 = load { i64, ptr }, ptr %t247, !tbaa !27
  store { i64, ptr } %t248, ptr %l18, !tbaa !27
  store i64 0, ptr %l19, !tbaa !24
  %t250 = load { i64, ptr }, ptr %l18, !tbaa !27
  %t252 = extractvalue { i64, ptr } %t250, 0
  store i64 %t252, ptr %l20, !tbaa !24
  br label %bb73
bb72:
  br label %bb85
bb73:
  %t254 = load i64, ptr %l19, !tbaa !24
  %t255 = load i64, ptr %l20, !tbaa !24
  %t258 = icmp slt i64 %t254, %t255
  %t260 = xor i1 %t258, true
  br i1 %t260, label %bb74, label %bb75
bb74:
  br label %bb83
bb75:
  br label %bb76
bb76:
  %t262 = load i64, ptr %l19, !tbaa !24
  %t264 = load { i64, ptr }, ptr %l18, !tbaa !27
  store { i64, ptr } %t264, ptr %l138, !tbaa !27
  %t265 = load i64, ptr %l19, !tbaa !24
  %t267 = getelementptr { i64, ptr }, ptr %l138, i32 0, i32 1
  %t268 = load ptr, ptr %t267, !tbaa !27
  %t269 = getelementptr i32, ptr %t268, i64 %t265
  %t270 = load i32, ptr %t269, !tbaa !33
  store i32 %t270, ptr %l22, !tbaa !23
  %t274 = icmp sgt i64 %t262, 0
  br i1 %t274, label %bb77, label %bb78
bb77:
  store %olang.scope zeroinitializer, ptr %s15
  %t276 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2eput(ptr %v0, ptr %s15, ptr %t276, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d24, i32 0, i32 1) })
  br label %bb79
bb78:
  br label %bb80
bb79:
  call void @__olang_scope_close(ptr %s15)
  br label %bb80
bb80:
  %t278 = load ptr, ptr %l0, !tbaa !29
  %t279 = load i32, ptr %l22, !tbaa !23
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2ename(ptr %v0, ptr %t278, i32 %t279)
  br label %bb81
bb81:
  br label %bb82
bb82:
  %t282 = load i64, ptr %l19, !tbaa !24
  %t284 = add i64 %t282, 1
  store i64 %t284, ptr %l19, !tbaa !24
  br label %bb73
bb83:
  %t286 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2eput(ptr %v0, ptr %s12, ptr %t286, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d25, i32 0, i32 1) })
  br label %bb84
bb84:
  call void @__olang_scope_close(ptr %s12)
  br label %bb85
bb85:
  %t288 = load ptr, ptr %l0, !tbaa !29
  %t289 = load %"compiler/source:Span", ptr %l15
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2espan(ptr %v0, ptr %t288, %"compiler/source:Span" %t289)
  br label %bb86
bb86:
  %t292 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2eput(ptr %v0, ptr %s11, ptr %t292, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d26, i32 0, i32 1) })
  br label %bb87
bb87:
  %t294 = load ptr, ptr %l0, !tbaa !29
  %t295 = load { i64, ptr }, ptr %l16, !tbaa !27
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2eblock(ptr %v0, ptr %v1, ptr %t294, { i64, ptr } %t295)
  br label %bb88
bb88:
  call void @__olang_scope_close(ptr %s11)
  br label %bb119
bb89:
  %t298 = load ptr, ptr %l1, !tbaa !29
  store ptr %t298, ptr %l154, !tbaa !29
  store i1 false, ptr %l155, !tbaa !21
  %t299 = load ptr, ptr %l154, !tbaa !29
  %t300 = icmp ne ptr %t299, null
  br i1 %t300, label %bb90, label %bb91
bb90:
  %t302 = load ptr, ptr %l154, !tbaa !29
  %t303 = load i64, ptr %t302, !range !{i64 0, i64 11}
  %t305 = icmp eq i64 %t303, 7
  store i1 %t305, ptr %l155, !tbaa !21
  br label %bb91
bb91:
  %t306 = load i1, ptr %l155, !tbaa !21
  br i1 %t306, label %bb92, label %bb93
bb92:
  %t307 = load ptr, ptr %l1, !tbaa !29
  %t309 = getelementptr { i64, [8 x i64] }, ptr %t307, i32 0, i32 1
  %t310 = getelementptr { %"compiler/source:Span", ptr }, ptr %t309, i32 0, i32 1
  %t311 = load ptr, ptr %t310
  store ptr %t311, ptr %l23, !tbaa !29
  br label %bb94
bb93:
  br label %bb96
bb94:
  %t313 = load ptr, ptr %l0, !tbaa !29
  %t314 = load ptr, ptr %l23, !tbaa !29
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2etopIf(ptr %v0, ptr %v1, ptr %t313, ptr %t314)
  br label %bb95
bb95:
  br label %bb119
bb96:
  %t317 = load ptr, ptr %l1, !tbaa !29
  store ptr %t317, ptr %l162, !tbaa !29
  store i1 false, ptr %l163, !tbaa !21
  %t318 = load ptr, ptr %l162, !tbaa !29
  %t319 = icmp ne ptr %t318, null
  br i1 %t319, label %bb97, label %bb98
bb97:
  %t321 = load ptr, ptr %l162, !tbaa !29
  %t322 = load i64, ptr %t321, !range !{i64 0, i64 11}
  %t324 = icmp eq i64 %t322, 8
  store i1 %t324, ptr %l163, !tbaa !21
  br label %bb98
bb98:
  %t325 = load i1, ptr %l163, !tbaa !21
  br i1 %t325, label %bb99, label %bb100
bb99:
  %t326 = load ptr, ptr %l1, !tbaa !29
  %t328 = getelementptr { i64, [8 x i64] }, ptr %t326, i32 0, i32 1
  %t329 = getelementptr { %"compiler/source:Span", ptr, ptr }, ptr %t328, i32 0, i32 1
  %t330 = load ptr, ptr %t329
  store ptr %t330, ptr %l24, !tbaa !29
  %t332 = load ptr, ptr %l1, !tbaa !29
  %t334 = getelementptr { i64, [8 x i64] }, ptr %t332, i32 0, i32 1
  %t335 = getelementptr { %"compiler/source:Span", ptr, ptr }, ptr %t334, i32 0, i32 2
  %t336 = load ptr, ptr %t335
  store ptr %t336, ptr %l25, !tbaa !29
  br label %bb101
bb100:
  br label %bb105
bb101:
  store %olang.scope zeroinitializer, ptr %s18
  %t338 = load ptr, ptr %l0, !tbaa !29
  %t339 = load ptr, ptr %l24, !tbaa !29
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2eexpr(ptr %v0, ptr %v1, ptr %t338, ptr %t339)
  br label %bb102
bb102:
  %t342 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2eput(ptr %v0, ptr %s18, ptr %t342, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d27, i32 0, i32 1) })
  br label %bb103
bb103:
  %t344 = load ptr, ptr %l0, !tbaa !29
  %t345 = load ptr, ptr %l25, !tbaa !29
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2eexpr(ptr %v0, ptr %v1, ptr %t344, ptr %t345)
  br label %bb104
bb104:
  call void @__olang_scope_close(ptr %s18)
  br label %bb119
bb105:
  %t348 = load ptr, ptr %l1, !tbaa !29
  store ptr %t348, ptr %l175, !tbaa !29
  store i1 false, ptr %l176, !tbaa !21
  %t349 = load ptr, ptr %l175, !tbaa !29
  %t350 = icmp ne ptr %t349, null
  br i1 %t350, label %bb106, label %bb107
bb106:
  %t352 = load ptr, ptr %l175, !tbaa !29
  %t353 = load i64, ptr %t352, !range !{i64 0, i64 11}
  %t355 = icmp eq i64 %t353, 9
  store i1 %t355, ptr %l176, !tbaa !21
  br label %bb107
bb107:
  %t356 = load i1, ptr %l176, !tbaa !21
  br i1 %t356, label %bb108, label %bb109
bb108:
  %t357 = load ptr, ptr %l1, !tbaa !29
  %t359 = getelementptr { i64, [8 x i64] }, ptr %t357, i32 0, i32 1
  %t360 = getelementptr { %"compiler/source:Span", ptr, ptr }, ptr %t359, i32 0, i32 1
  %t361 = load ptr, ptr %t360
  store ptr %t361, ptr %l26, !tbaa !29
  %t363 = load ptr, ptr %l1, !tbaa !29
  %t365 = getelementptr { i64, [8 x i64] }, ptr %t363, i32 0, i32 1
  %t366 = getelementptr { %"compiler/source:Span", ptr, ptr }, ptr %t365, i32 0, i32 2
  %t367 = load ptr, ptr %t366
  store ptr %t367, ptr %l27, !tbaa !29
  br label %bb110
bb109:
  br label %bb118
bb110:
  store %olang.scope zeroinitializer, ptr %s19
  %t369 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2eput(ptr %v0, ptr %s19, ptr %t369, { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d28, i32 0, i32 1) })
  br label %bb111
bb111:
  %t371 = load ptr, ptr %l0, !tbaa !29
  %t372 = load ptr, ptr %l26, !tbaa !29
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2eexpr(ptr %v0, ptr %v1, ptr %t371, ptr %t372)
  br label %bb112
bb112:
  %t375 = load ptr, ptr %l27, !tbaa !29
  %t377 = icmp eq ptr %t375, null
  %t379 = xor i1 %t377, true
  br i1 %t379, label %bb113, label %bb114
bb113:
  store %olang.scope zeroinitializer, ptr %s20
  %t381 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2eput(ptr %v0, ptr %s20, ptr %t381, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d29, i32 0, i32 1) })
  br label %bb115
bb114:
  br label %bb117
bb115:
  %t383 = load ptr, ptr %l0, !tbaa !29
  %t384 = load ptr, ptr %l27, !tbaa !29
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2eexpr(ptr %v0, ptr %v1, ptr %t383, ptr %t384)
  br label %bb116
bb116:
  call void @__olang_scope_close(ptr %s20)
  br label %bb117
bb117:
  call void @__olang_scope_close(ptr %s19)
  br label %bb119
bb118:
  call void @__olang_check_failed(ptr @olang_loc_7f8607ca82c86e8f_41d7f7ff4057cd03)
  unreachable
bb119:
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2funparse_2ecompiler_2funparse_3awriter_2eerrorDecl(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, i32 %a1, { i64, ptr } %a2, { i64, ptr } %a3, { i64, ptr } %a4) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca { i64, ptr }
  %l4 = alloca { i64, ptr }
  %l5 = alloca { i64, ptr }
  %l6 = alloca i64
  %l7 = alloca i64
  %l9 = alloca ptr
  %l10 = alloca { i64, ptr }
  %l11 = alloca i64
  %l12 = alloca i64
  %l13 = alloca i64
  %l14 = alloca i32
  %l27 = alloca { i64, ptr }
  %l30 = alloca ptr
  %l33 = alloca { i64, ptr }
  %l34 = alloca ptr
  %l35 = alloca i64
  %l45 = alloca ptr
  %l56 = alloca { i64, ptr }
  %l66 = alloca i1
  %l67 = alloca { i64, ptr }
  %l75 = alloca { i64, ptr }
  %l82 = alloca ptr
  %s0 = alloca %olang.scope
  %s2 = alloca %olang.scope
  %s6 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store { i64, ptr } %a2, ptr %l2
  store { i64, ptr } %a4, ptr %l4
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2eput(ptr %v0, ptr %s0, ptr %t1, { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d30, i32 0, i32 1) })
  br label %bb1
bb1:
  %t3 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2ename(ptr %v0, ptr %t3, i32 %a1)
  br label %bb2
bb2:
  %t7 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2eput(ptr %v0, ptr %s0, ptr %t7, { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d31, i32 0, i32 1) })
  br label %bb3
bb3:
  store { i64, ptr } %a3, ptr %l5, !tbaa !27
  store i64 0, ptr %l6, !tbaa !24
  %t11 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t13 = extractvalue { i64, ptr } %t11, 0
  store i64 %t13, ptr %l7, !tbaa !24
  br label %bb4
bb4:
  store %olang.scope zeroinitializer, ptr %s2
  %t15 = load i64, ptr %l6, !tbaa !24
  %t16 = load i64, ptr %l7, !tbaa !24
  %t19 = icmp slt i64 %t15, %t16
  %t21 = xor i1 %t19, true
  br i1 %t21, label %bb5, label %bb6
bb5:
  call void @__olang_scope_close(ptr %s2)
  br label %bb16
bb6:
  br label %bb7
bb7:
  %t23 = load i64, ptr %l6, !tbaa !24
  %t25 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t25, ptr %l27, !tbaa !27
  %t26 = load i64, ptr %l6, !tbaa !24
  %t28 = getelementptr { i64, ptr }, ptr %l27, i32 0, i32 1
  %t29 = load ptr, ptr %t28, !tbaa !27
  %t30 = getelementptr ptr, ptr %t29, i64 %t26
  %t31 = load ptr, ptr %t30, !tbaa !39
  store ptr %t31, ptr %l9, !tbaa !29
  %t33 = load ptr, ptr %l0, !tbaa !29
  store ptr %t33, ptr %l30, !tbaa !29
  %t36 = icmp sgt i64 %t23, 0
  br i1 %t36, label %bb8, label %bb9
bb8:
  store { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d32, i32 0, i32 1) }, ptr %l33, !tbaa !27
  br label %bb10
bb9:
  store { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d33, i32 0, i32 1) }, ptr %l33, !tbaa !27
  br label %bb10
bb10:
  %t38 = load ptr, ptr %l30, !tbaa !29
  %t39 = load { i64, ptr }, ptr %l33, !tbaa !27
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2eput(ptr %v0, ptr %s2, ptr %t38, { i64, ptr } %t39)
  br label %bb11
bb11:
  %t40 = load ptr, ptr %l9, !tbaa !29
  store ptr %t40, ptr %l34, !tbaa !29
  %t41 = ptrtoint ptr %v2 to i64
  store i64 %t41, ptr %l35, !tbaa !24
  %t42 = load i1, ptr @olang_2esole_2eArray_3ccompiler_2fast_3aPath_26_3e_2e_2d1
  br i1 %t42, label %bb12, label %bb13
bb12:
  %t44 = load ptr, ptr %l34, !tbaa !29
  %t45 = call ptr @__olang_region_or(ptr %t44, ptr %v2)
  %t46 = ptrtoint ptr %t45 to i64
  store i64 %t46, ptr %l35, !tbaa !24
  br label %bb13
bb13:
  %t47 = load ptr, ptr %l0, !tbaa !29
  %t48 = load ptr, ptr %l9, !tbaa !29
  %t49 = load i64, ptr %l35
  %t50 = inttoptr i64 %t49 to ptr
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2epath(ptr %v0, ptr %t50, ptr %t47, ptr %t48)
  br label %bb14
bb14:
  call void @__olang_scope_close(ptr %s2)
  br label %bb15
bb15:
  %t53 = load i64, ptr %l6, !tbaa !24
  %t55 = add i64 %t53, 1
  store i64 %t55, ptr %l6, !tbaa !24
  br label %bb4
bb16:
  %t57 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t59 = extractvalue { i64, ptr } %t57, 0
  %t61 = icmp eq i64 %t59, 0
  br i1 %t61, label %bb17, label %bb18
bb17:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb18:
  br label %bb19
bb19:
  %t63 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2eput(ptr %v0, ptr %s0, ptr %t63, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d34, i32 0, i32 1) })
  br label %bb20
bb20:
  %t65 = load ptr, ptr %l0, !tbaa !29
  store ptr %t65, ptr %l45, !tbaa !29
  %t66 = load ptr, ptr %l45, !tbaa !29
  %t67 = getelementptr %"compiler/unparse:writer", ptr %t66, i32 0, i32 4
  %t68 = load i64, ptr %t67, !tbaa !24
  %t70 = add i64 %t68, 1
  %t72 = load ptr, ptr %l45, !tbaa !29
  %t73 = getelementptr %"compiler/unparse:writer", ptr %t72, i32 0, i32 4
  store i64 %t70, ptr %t73, !tbaa !24
  %t74 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t74, ptr %l10, !tbaa !27
  store i64 0, ptr %l11, !tbaa !24
  %t76 = load { i64, ptr }, ptr %l10, !tbaa !27
  %t78 = extractvalue { i64, ptr } %t76, 0
  store i64 %t78, ptr %l12, !tbaa !24
  br label %bb21
bb21:
  store %olang.scope zeroinitializer, ptr %s6
  %t80 = load i64, ptr %l11, !tbaa !24
  %t81 = load i64, ptr %l12, !tbaa !24
  %t84 = icmp slt i64 %t80, %t81
  %t86 = xor i1 %t84, true
  br i1 %t86, label %bb22, label %bb23
bb22:
  call void @__olang_scope_close(ptr %s6)
  br label %bb37
bb23:
  br label %bb24
bb24:
  %t88 = load i64, ptr %l11, !tbaa !24
  store i64 %t88, ptr %l13, !tbaa !24
  %t90 = load { i64, ptr }, ptr %l10, !tbaa !27
  store { i64, ptr } %t90, ptr %l56, !tbaa !27
  %t91 = load i64, ptr %l11, !tbaa !24
  %t93 = getelementptr { i64, ptr }, ptr %l56, i32 0, i32 1
  %t94 = load ptr, ptr %t93, !tbaa !27
  %t95 = getelementptr i32, ptr %t94, i64 %t91
  %t96 = load i32, ptr %t95, !tbaa !33
  store i32 %t96, ptr %l14, !tbaa !23
  %t98 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2enl(ptr %v0, ptr %t98)
  br label %bb25
bb25:
  %t100 = load ptr, ptr %l0, !tbaa !29
  %t101 = load i32, ptr %l14, !tbaa !23
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2ename(ptr %v0, ptr %t100, i32 %t101)
  br label %bb26
bb26:
  %t104 = load i64, ptr %l13, !tbaa !24
  %t105 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t107 = extractvalue { i64, ptr } %t105, 0
  %t110 = icmp sge i64 %t104, %t107
  br i1 %t110, label %bb27, label %bb28
bb27:
  store i1 true, ptr %l66, !tbaa !21
  br label %bb29
bb28:
  %t112 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t112, ptr %l67, !tbaa !27
  %t113 = load i64, ptr %l13, !tbaa !24
  %t115 = getelementptr { i64, ptr }, ptr %l67, i32 0, i32 1
  %t116 = load ptr, ptr %t115, !tbaa !27
  %t117 = getelementptr ptr, ptr %t116, i64 %t113
  %t118 = load ptr, ptr %t117, !tbaa !39
  %t120 = getelementptr %"compiler/ast:CaseDecl", ptr %t118, i32 0, i32 2
  %t121 = load { i64, ptr }, ptr %t120, !tbaa !27
  %t123 = extractvalue { i64, ptr } %t121, 0
  %t125 = icmp eq i64 %t123, 0
  store i1 %t125, ptr %l66, !tbaa !21
  br label %bb29
bb29:
  %t127 = load i1, ptr %l66, !tbaa !21
  br i1 %t127, label %bb30, label %bb31
bb30:
  call void @__olang_scope_close(ptr %s6)
  br label %bb36
bb31:
  br label %bb32
bb32:
  %t128 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2eput(ptr %v0, ptr %s6, ptr %t128, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d35, i32 0, i32 1) })
  br label %bb33
bb33:
  %t130 = load ptr, ptr %l0, !tbaa !29
  %t131 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t131, ptr %l75, !tbaa !27
  %t132 = load i64, ptr %l13, !tbaa !24
  %t134 = getelementptr { i64, ptr }, ptr %l75, i32 0, i32 1
  %t135 = load ptr, ptr %t134, !tbaa !27
  %t136 = getelementptr ptr, ptr %t135, i64 %t132
  %t137 = load ptr, ptr %t136, !tbaa !39
  %t139 = getelementptr %"compiler/ast:CaseDecl", ptr %t137, i32 0, i32 2
  %t140 = load { i64, ptr }, ptr %t139, !tbaa !27
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2eparams(ptr %v0, ptr %v3, ptr %t130, { i64, ptr } %t140)
  br label %bb34
bb34:
  %t143 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2eput(ptr %v0, ptr %s6, ptr %t143, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d36, i32 0, i32 1) })
  br label %bb35
bb35:
  call void @__olang_scope_close(ptr %s6)
  br label %bb36
bb36:
  %t145 = load i64, ptr %l11, !tbaa !24
  %t147 = add i64 %t145, 1
  store i64 %t147, ptr %l11, !tbaa !24
  br label %bb21
bb37:
  %t149 = load ptr, ptr %l0, !tbaa !29
  store ptr %t149, ptr %l82, !tbaa !29
  %t150 = load ptr, ptr %l82, !tbaa !29
  %t151 = getelementptr %"compiler/unparse:writer", ptr %t150, i32 0, i32 4
  %t152 = load i64, ptr %t151, !tbaa !24
  %t154 = sub i64 %t152, 1
  %t156 = load ptr, ptr %l82, !tbaa !29
  %t157 = getelementptr %"compiler/unparse:writer", ptr %t156, i32 0, i32 4
  store i64 %t154, ptr %t157, !tbaa !24
  %t158 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2enl(ptr %v0, ptr %t158)
  br label %bb38
bb38:
  %t160 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2eput(ptr %v0, ptr %s0, ptr %t160, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d37, i32 0, i32 1) })
  br label %bb39
bb39:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2funparse_2ecompiler_2funparse_3awriter_2eerrors(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca { i64, ptr }
  %l3 = alloca i64
  %l4 = alloca i64
  %l6 = alloca ptr
  %l20 = alloca { i64, ptr }
  %l23 = alloca ptr
  %l26 = alloca { i64, ptr }
  %l27 = alloca ptr
  %l28 = alloca i64
  %s0 = alloca %olang.scope
  %s3 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l1, !tbaa !29
  %t3 = getelementptr %"compiler/ast:Sig", ptr %t1, i32 0, i32 2
  %t4 = load i1, ptr %t3, !tbaa !21
  %t6 = xor i1 %t4, true
  br i1 %t6, label %bb1, label %bb2
bb1:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb2:
  br label %bb3
bb3:
  %t8 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2eput(ptr %v0, ptr %s0, ptr %t8, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d38, i32 0, i32 1) })
  br label %bb4
bb4:
  %t10 = load ptr, ptr %l1, !tbaa !29
  %t12 = getelementptr %"compiler/ast:Sig", ptr %t10, i32 0, i32 3
  %t13 = load { i64, ptr }, ptr %t12, !tbaa !27
  store { i64, ptr } %t13, ptr %l2, !tbaa !27
  store i64 0, ptr %l3, !tbaa !24
  %t15 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t17 = extractvalue { i64, ptr } %t15, 0
  store i64 %t17, ptr %l4, !tbaa !24
  br label %bb5
bb5:
  store %olang.scope zeroinitializer, ptr %s3
  %t19 = load i64, ptr %l3, !tbaa !24
  %t20 = load i64, ptr %l4, !tbaa !24
  %t23 = icmp slt i64 %t19, %t20
  %t25 = xor i1 %t23, true
  br i1 %t25, label %bb6, label %bb7
bb6:
  call void @__olang_scope_close(ptr %s3)
  br label %bb17
bb7:
  br label %bb8
bb8:
  %t27 = load i64, ptr %l3, !tbaa !24
  %t29 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t29, ptr %l20, !tbaa !27
  %t30 = load i64, ptr %l3, !tbaa !24
  %t32 = getelementptr { i64, ptr }, ptr %l20, i32 0, i32 1
  %t33 = load ptr, ptr %t32, !tbaa !27
  %t34 = getelementptr ptr, ptr %t33, i64 %t30
  %t35 = load ptr, ptr %t34, !tbaa !39
  store ptr %t35, ptr %l6, !tbaa !29
  %t37 = load ptr, ptr %l0, !tbaa !29
  store ptr %t37, ptr %l23, !tbaa !29
  %t40 = icmp sgt i64 %t27, 0
  br i1 %t40, label %bb9, label %bb10
bb9:
  store { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d39, i32 0, i32 1) }, ptr %l26, !tbaa !27
  br label %bb11
bb10:
  store { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d40, i32 0, i32 1) }, ptr %l26, !tbaa !27
  br label %bb11
bb11:
  %t42 = load ptr, ptr %l23, !tbaa !29
  %t43 = load { i64, ptr }, ptr %l26, !tbaa !27
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2eput(ptr %v0, ptr %s3, ptr %t42, { i64, ptr } %t43)
  br label %bb12
bb12:
  %t44 = load ptr, ptr %l6, !tbaa !29
  store ptr %t44, ptr %l27, !tbaa !29
  %t45 = ptrtoint ptr %v1 to i64
  store i64 %t45, ptr %l28, !tbaa !24
  %t46 = load i1, ptr @olang_2esole_2eArray_3ccompiler_2fast_3aPath_26_3e_2e_2d1
  br i1 %t46, label %bb13, label %bb14
bb13:
  %t48 = load ptr, ptr %l27, !tbaa !29
  %t49 = call ptr @__olang_region_or(ptr %t48, ptr %v1)
  %t50 = ptrtoint ptr %t49 to i64
  store i64 %t50, ptr %l28, !tbaa !24
  br label %bb14
bb14:
  %t51 = load ptr, ptr %l0, !tbaa !29
  %t52 = load ptr, ptr %l6, !tbaa !29
  %t53 = load i64, ptr %l28
  %t54 = inttoptr i64 %t53 to ptr
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2epath(ptr %v0, ptr %t54, ptr %t51, ptr %t52)
  br label %bb15
bb15:
  call void @__olang_scope_close(ptr %s3)
  br label %bb16
bb16:
  %t57 = load i64, ptr %l3, !tbaa !24
  %t59 = add i64 %t57, 1
  store i64 %t59, ptr %l3, !tbaa !24
  br label %bb5
bb17:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2funparse_2ecompiler_2funparse_3awriter_2eexpr(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i32
  %l3 = alloca %"compiler/source:Span"
  %l4 = alloca ptr
  %l5 = alloca i1
  %l6 = alloca i32
  %l7 = alloca ptr
  %l8 = alloca i32
  %l9 = alloca ptr
  %l10 = alloca i32
  %l11 = alloca ptr
  %l12 = alloca ptr
  %l13 = alloca ptr
  %l14 = alloca ptr
  %l15 = alloca ptr
  %l16 = alloca { i64, ptr }
  %l17 = alloca i64
  %l18 = alloca i64
  %l19 = alloca i64
  %l20 = alloca ptr
  %l21 = alloca ptr
  %l22 = alloca ptr
  %l23 = alloca ptr
  %l24 = alloca ptr
  %l25 = alloca ptr
  %l26 = alloca i1
  %l27 = alloca ptr
  %l28 = alloca ptr
  %l29 = alloca i1
  %l30 = alloca ptr
  %l31 = alloca ptr
  %l32 = alloca ptr
  %l33 = alloca { i64, ptr }
  %l34 = alloca ptr
  %l35 = alloca { i64, ptr }
  %l36 = alloca ptr
  %l37 = alloca i32
  %l38 = alloca ptr
  %l39 = alloca { i64, ptr }
  %l40 = alloca ptr
  %l41 = alloca ptr
  %l42 = alloca ptr
  %l43 = alloca ptr
  %l44 = alloca { i64, ptr }
  %l45 = alloca { i64, ptr }
  %l46 = alloca ptr
  %l47 = alloca { i64, ptr }
  %l48 = alloca { i64, ptr }
  %l49 = alloca i64
  %l50 = alloca i64
  %l52 = alloca ptr
  %l53 = alloca ptr
  %l54 = alloca { i64, ptr }
  %l55 = alloca ptr
  %l56 = alloca i1
  %l57 = alloca ptr
  %l58 = alloca { i64, ptr }
  %l59 = alloca ptr
  %l60 = alloca i32
  %l61 = alloca ptr
  %l62 = alloca ptr
  %l63 = alloca { i64, ptr }
  %l64 = alloca { i64, ptr }
  %l65 = alloca i64
  %l66 = alloca i64
  %l68 = alloca ptr
  %l69 = alloca ptr
  %l70 = alloca i1
  %l77 = alloca ptr
  %l78 = alloca i1
  %l85 = alloca ptr
  %l86 = alloca i1
  %l100 = alloca ptr
  %l101 = alloca i1
  %l108 = alloca ptr
  %l110 = alloca { i64, ptr }
  %l113 = alloca i1
  %l116 = alloca i1
  %l119 = alloca i1
  %l125 = alloca i1
  %l128 = alloca i1
  %l130 = alloca i1
  %l134 = alloca ptr
  %l135 = alloca i1
  %l144 = alloca ptr
  %l146 = alloca { i64, ptr }
  %l147 = alloca ptr
  %l148 = alloca i1
  %l163 = alloca ptr
  %l165 = alloca { i64, ptr }
  %l169 = alloca ptr
  %l170 = alloca i1
  %l182 = alloca ptr
  %l183 = alloca i1
  %l197 = alloca { i64, ptr }
  %l203 = alloca ptr
  %l205 = alloca { i64, ptr }
  %l209 = alloca { i64, ptr }
  %l215 = alloca ptr
  %l216 = alloca i1
  %l233 = alloca ptr
  %l234 = alloca i1
  %l245 = alloca ptr
  %l247 = alloca { i64, ptr }
  %l250 = alloca ptr
  %l251 = alloca i1
  %l262 = alloca ptr
  %l264 = alloca { i64, ptr }
  %l267 = alloca ptr
  %l268 = alloca i1
  %l280 = alloca ptr
  %l281 = alloca i1
  %l294 = alloca ptr
  %l295 = alloca i1
  %l308 = alloca ptr
  %l309 = alloca i1
  %l321 = alloca ptr
  %l322 = alloca i1
  %l335 = alloca ptr
  %l336 = alloca i1
  %l360 = alloca ptr
  %l361 = alloca i1
  %l368 = alloca ptr
  %l376 = alloca ptr
  %l377 = alloca i1
  %l386 = alloca ptr
  %l387 = alloca i1
  %l395 = alloca ptr
  %l425 = alloca ptr
  %l435 = alloca ptr
  %l436 = alloca i1
  %l449 = alloca { i64, ptr }
  %l459 = alloca ptr
  %l460 = alloca i1
  %l472 = alloca ptr
  %l473 = alloca i1
  %l490 = alloca ptr
  %l491 = alloca i1
  %l498 = alloca ptr
  %l499 = alloca i1
  %l507 = alloca ptr
  %l508 = alloca i1
  %l512 = alloca ptr
  %l513 = alloca i1
  %l525 = alloca ptr
  %l526 = alloca i1
  %l538 = alloca ptr
  %l539 = alloca i1
  %l548 = alloca i1
  %l552 = alloca ptr
  %l553 = alloca i1
  %l566 = alloca { i64, ptr }
  %s3 = alloca %olang.scope
  %s4 = alloca %olang.scope
  %s5 = alloca %olang.scope
  %s7 = alloca %olang.scope
  %s8 = alloca %olang.scope
  %s9 = alloca %olang.scope
  %s10 = alloca %olang.scope
  %s11 = alloca %olang.scope
  %s15 = alloca %olang.scope
  %s17 = alloca %olang.scope
  %s18 = alloca %olang.scope
  %s19 = alloca %olang.scope
  %s20 = alloca %olang.scope
  %s21 = alloca %olang.scope
  %s22 = alloca %olang.scope
  %s23 = alloca %olang.scope
  %s24 = alloca %olang.scope
  %s25 = alloca %olang.scope
  %s28 = alloca %olang.scope
  %s29 = alloca %olang.scope
  %s30 = alloca %olang.scope
  %s31 = alloca %olang.scope
  %s32 = alloca %olang.scope
  %s33 = alloca %olang.scope
  %s34 = alloca %olang.scope
  %s38 = alloca %olang.scope
  %s40 = alloca %olang.scope
  %s41 = alloca %olang.scope
  %s43 = alloca %olang.scope
  %s44 = alloca %olang.scope
  %s45 = alloca %olang.scope
  %s46 = alloca %olang.scope
  %s47 = alloca %olang.scope
  %s48 = alloca %olang.scope
  %s53 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l1, !tbaa !29
  store ptr %t1, ptr %l69, !tbaa !29
  store i1 false, ptr %l70, !tbaa !21
  %t2 = load ptr, ptr %l69, !tbaa !29
  %t3 = icmp ne ptr %t2, null
  br i1 %t3, label %bb1, label %bb2
bb1:
  %t5 = load ptr, ptr %l69, !tbaa !29
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 30}
  %t8 = icmp eq i64 %t6, 0
  store i1 %t8, ptr %l70, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l70, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  %t10 = load ptr, ptr %l1, !tbaa !29
  %t12 = getelementptr { i64, [4 x i64] }, ptr %t10, i32 0, i32 1
  %t13 = getelementptr { %"compiler/source:Span", i32 }, ptr %t12, i32 0, i32 1
  %t14 = load i32, ptr %t13
  store i32 %t14, ptr %l2, !tbaa !23
  br label %bb5
bb4:
  br label %bb7
bb5:
  %t16 = load ptr, ptr %l0, !tbaa !29
  %t17 = load i32, ptr %l2, !tbaa !23
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2ename(ptr %v0, ptr %t16, i32 %t17)
  br label %bb6
bb6:
  br label %bb376
bb7:
  %t20 = load ptr, ptr %l1, !tbaa !29
  store ptr %t20, ptr %l77, !tbaa !29
  store i1 false, ptr %l78, !tbaa !21
  %t21 = load ptr, ptr %l77, !tbaa !29
  %t22 = icmp ne ptr %t21, null
  br i1 %t22, label %bb8, label %bb9
bb8:
  %t24 = load ptr, ptr %l77, !tbaa !29
  %t25 = load i64, ptr %t24, !range !{i64 0, i64 30}
  %t27 = icmp eq i64 %t25, 1
  store i1 %t27, ptr %l78, !tbaa !21
  br label %bb9
bb9:
  %t28 = load i1, ptr %l78, !tbaa !21
  br i1 %t28, label %bb10, label %bb11
bb10:
  %t29 = load ptr, ptr %l1, !tbaa !29
  %t31 = getelementptr { i64, [4 x i64] }, ptr %t29, i32 0, i32 1
  %t32 = getelementptr { %"compiler/source:Span", i32 }, ptr %t31, i32 0, i32 0
  %t33 = load %"compiler/source:Span", ptr %t32
  store %"compiler/source:Span" %t33, ptr %l3
  br label %bb12
bb11:
  br label %bb14
bb12:
  %t35 = load ptr, ptr %l0, !tbaa !29
  %t36 = load %"compiler/source:Span", ptr %l3
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2espan(ptr %v0, ptr %t35, %"compiler/source:Span" %t36)
  br label %bb13
bb13:
  br label %bb376
bb14:
  %t39 = load ptr, ptr %l1, !tbaa !29
  store ptr %t39, ptr %l85, !tbaa !29
  store i1 false, ptr %l86, !tbaa !21
  %t40 = load ptr, ptr %l85, !tbaa !29
  %t41 = icmp ne ptr %t40, null
  br i1 %t41, label %bb15, label %bb16
bb15:
  %t43 = load ptr, ptr %l85, !tbaa !29
  %t44 = load i64, ptr %t43, !range !{i64 0, i64 30}
  %t46 = icmp eq i64 %t44, 2
  store i1 %t46, ptr %l86, !tbaa !21
  br label %bb16
bb16:
  %t47 = load i1, ptr %l86, !tbaa !21
  br i1 %t47, label %bb17, label %bb18
bb17:
  %t48 = load ptr, ptr %l1, !tbaa !29
  %t50 = getelementptr { i64, [4 x i64] }, ptr %t48, i32 0, i32 1
  %t51 = getelementptr { %"compiler/source:Span", ptr }, ptr %t50, i32 0, i32 1
  %t52 = load ptr, ptr %t51
  store ptr %t52, ptr %l4, !tbaa !29
  br label %bb19
bb18:
  br label %bb23
bb19:
  store %olang.scope zeroinitializer, ptr %s3
  %t54 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2eput(ptr %v0, ptr %s3, ptr %t54, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d41, i32 0, i32 1) })
  br label %bb20
bb20:
  %t56 = load ptr, ptr %l0, !tbaa !29
  %t58 = getelementptr %"compiler/unparse:writer", ptr %t56, i32 0, i32 6
  %t59 = load i1, ptr %t58, !tbaa !21
  store i1 %t59, ptr %l5, !tbaa !21
  %t61 = load ptr, ptr %l0, !tbaa !29
  %t63 = getelementptr %"compiler/unparse:writer", ptr %t61, i32 0, i32 6
  store i1 false, ptr %t63, !tbaa !21
  %t64 = load ptr, ptr %l0, !tbaa !29
  %t65 = load ptr, ptr %l4, !tbaa !29
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2eexpr(ptr %v0, ptr %v1, ptr %t64, ptr %t65)
  br label %bb21
bb21:
  %t68 = load ptr, ptr %l0, !tbaa !29
  %t69 = load i1, ptr %l5, !tbaa !21
  %t72 = getelementptr %"compiler/unparse:writer", ptr %t68, i32 0, i32 6
  store i1 %t69, ptr %t72, !tbaa !21
  %t73 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2eput(ptr %v0, ptr %s3, ptr %t73, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d42, i32 0, i32 1) })
  br label %bb22
bb22:
  call void @__olang_scope_close(ptr %s3)
  br label %bb376
bb23:
  %t75 = load ptr, ptr %l1, !tbaa !29
  store ptr %t75, ptr %l100, !tbaa !29
  store i1 false, ptr %l101, !tbaa !21
  %t76 = load ptr, ptr %l100, !tbaa !29
  %t77 = icmp ne ptr %t76, null
  br i1 %t77, label %bb24, label %bb25
bb24:
  %t79 = load ptr, ptr %l100, !tbaa !29
  %t80 = load i64, ptr %t79, !range !{i64 0, i64 30}
  %t82 = icmp eq i64 %t80, 3
  store i1 %t82, ptr %l101, !tbaa !21
  br label %bb25
bb25:
  %t83 = load i1, ptr %l101, !tbaa !21
  br i1 %t83, label %bb26, label %bb27
bb26:
  %t84 = load ptr, ptr %l1, !tbaa !29
  %t86 = getelementptr { i64, [4 x i64] }, ptr %t84, i32 0, i32 1
  %t87 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t86, i32 0, i32 1
  %t88 = load i32, ptr %t87, !range !{i32 0, i32 114}
  store i32 %t88, ptr %l6
  %t90 = load ptr, ptr %l1, !tbaa !29
  %t92 = getelementptr { i64, [4 x i64] }, ptr %t90, i32 0, i32 1
  %t93 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t92, i32 0, i32 2
  %t94 = load ptr, ptr %t93
  store ptr %t94, ptr %l7, !tbaa !29
  br label %bb28
bb27:
  br label %bb56
bb28:
  store %olang.scope zeroinitializer, ptr %s4
  %t96 = load ptr, ptr %l0, !tbaa !29
  store ptr %t96, ptr %l108, !tbaa !29
  %t97 = load i32, ptr %l6, !range !{i32 0, i32 114}
  %t99 = call { i64, ptr } @compiler_2ftoken_2ecompiler_2ftoken_3aTok_2eText(ptr %s4, i32 %t97)
  store { i64, ptr } %t99, ptr %l110
  br label %bb29
bb29:
  %t100 = load ptr, ptr %l108, !tbaa !29
  %t101 = load { i64, ptr }, ptr %l110, !tbaa !27
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2eput(ptr %v0, ptr %s4, ptr %t100, { i64, ptr } %t101)
  br label %bb30
bb30:
  %t102 = load i32, ptr %l6, !range !{i32 0, i32 114}
  %t104 = trunc i64 48 to i32
  %t105 = icmp eq i32 %t102, %t104
  br i1 %t105, label %bb31, label %bb32
bb31:
  store i1 true, ptr %l113, !tbaa !21
  br label %bb33
bb32:
  %t107 = load i32, ptr %l6, !range !{i32 0, i32 114}
  %t109 = trunc i64 13 to i32
  %t110 = icmp eq i32 %t107, %t109
  store i1 %t110, ptr %l113, !tbaa !21
  br label %bb33
bb33:
  %t112 = load i1, ptr %l113, !tbaa !21
  br i1 %t112, label %bb34, label %bb35
bb34:
  store i1 true, ptr %l116, !tbaa !21
  br label %bb36
bb35:
  %t113 = load i32, ptr %l6, !range !{i32 0, i32 114}
  %t115 = trunc i64 18 to i32
  %t116 = icmp eq i32 %t113, %t115
  store i1 %t116, ptr %l116, !tbaa !21
  br label %bb36
bb36:
  %t118 = load i1, ptr %l116, !tbaa !21
  br i1 %t118, label %bb37, label %bb38
bb37:
  store i1 true, ptr %l119, !tbaa !21
  br label %bb39
bb38:
  %t119 = load i32, ptr %l6, !range !{i32 0, i32 114}
  %t121 = trunc i64 51 to i32
  %t122 = icmp eq i32 %t119, %t121
  store i1 %t122, ptr %l119, !tbaa !21
  br label %bb39
bb39:
  %t124 = load i1, ptr %l119, !tbaa !21
  br i1 %t124, label %bb40, label %bb41
bb40:
  store %olang.scope zeroinitializer, ptr %s5
  %t125 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2eput(ptr %v0, ptr %s5, ptr %t125, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d43, i32 0, i32 1) })
  br label %bb42
bb41:
  %t127 = load i32, ptr %l6, !range !{i32 0, i32 114}
  %t129 = trunc i64 69 to i32
  %t130 = icmp eq i32 %t127, %t129
  br i1 %t130, label %bb43, label %bb44
bb42:
  call void @__olang_scope_close(ptr %s5)
  br label %bb54
bb43:
  store i1 true, ptr %l125, !tbaa !21
  br label %bb45
bb44:
  %t132 = load i32, ptr %l6, !range !{i32 0, i32 114}
  %t134 = trunc i64 93 to i32
  %t135 = icmp eq i32 %t132, %t134
  store i1 %t135, ptr %l125, !tbaa !21
  br label %bb45
bb45:
  %t137 = load i1, ptr %l125, !tbaa !21
  br i1 %t137, label %bb46, label %bb47
bb46:
  %t138 = load ptr, ptr %l7, !tbaa !29
  %t140 = call i1 @compiler_2funparse_2estartsWithMinus(ptr %v1, ptr %t138)
  store i1 %t140, ptr %l130
  br label %bb48
bb47:
  store i1 false, ptr %l128, !tbaa !21
  br label %bb49
bb48:
  %t141 = load i1, ptr %l130, !tbaa !21
  store i1 %t141, ptr %l128, !tbaa !21
  br label %bb49
bb49:
  %t142 = load i1, ptr %l128, !tbaa !21
  br i1 %t142, label %bb50, label %bb51
bb50:
  store %olang.scope zeroinitializer, ptr %s7
  %t143 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2eput(ptr %v0, ptr %s7, ptr %t143, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d44, i32 0, i32 1) })
  br label %bb52
bb51:
  br label %bb53
bb52:
  call void @__olang_scope_close(ptr %s7)
  br label %bb53
bb53:
  br label %bb54
bb54:
  %t145 = load ptr, ptr %l0, !tbaa !29
  %t146 = load ptr, ptr %l7, !tbaa !29
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2eexpr(ptr %v0, ptr %v1, ptr %t145, ptr %t146)
  br label %bb55
bb55:
  call void @__olang_scope_close(ptr %s4)
  br label %bb376
bb56:
  %t149 = load ptr, ptr %l1, !tbaa !29
  store ptr %t149, ptr %l134, !tbaa !29
  store i1 false, ptr %l135, !tbaa !21
  %t150 = load ptr, ptr %l134, !tbaa !29
  %t151 = icmp ne ptr %t150, null
  br i1 %t151, label %bb57, label %bb58
bb57:
  %t153 = load ptr, ptr %l134, !tbaa !29
  %t154 = load i64, ptr %t153, !range !{i64 0, i64 30}
  %t156 = icmp eq i64 %t154, 4
  store i1 %t156, ptr %l135, !tbaa !21
  br label %bb58
bb58:
  %t157 = load i1, ptr %l135, !tbaa !21
  br i1 %t157, label %bb59, label %bb60
bb59:
  %t158 = load ptr, ptr %l1, !tbaa !29
  %t160 = getelementptr { i64, [4 x i64] }, ptr %t158, i32 0, i32 1
  %t161 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t160, i32 0, i32 1
  %t162 = load i32, ptr %t161, !range !{i32 0, i32 114}
  store i32 %t162, ptr %l8
  %t164 = load ptr, ptr %l1, !tbaa !29
  %t166 = getelementptr { i64, [4 x i64] }, ptr %t164, i32 0, i32 1
  %t167 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t166, i32 0, i32 2
  %t168 = load ptr, ptr %t167
  store ptr %t168, ptr %l9, !tbaa !29
  br label %bb61
bb60:
  br label %bb65
bb61:
  store %olang.scope zeroinitializer, ptr %s8
  %t170 = load ptr, ptr %l0, !tbaa !29
  %t171 = load ptr, ptr %l9, !tbaa !29
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2eexpr(ptr %v0, ptr %v1, ptr %t170, ptr %t171)
  br label %bb62
bb62:
  %t174 = load ptr, ptr %l0, !tbaa !29
  store ptr %t174, ptr %l144, !tbaa !29
  %t175 = load i32, ptr %l8, !range !{i32 0, i32 114}
  %t177 = call { i64, ptr } @compiler_2ftoken_2ecompiler_2ftoken_3aTok_2eText(ptr %s8, i32 %t175)
  store { i64, ptr } %t177, ptr %l146
  br label %bb63
bb63:
  %t178 = load ptr, ptr %l144, !tbaa !29
  %t179 = load { i64, ptr }, ptr %l146, !tbaa !27
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2eput(ptr %v0, ptr %s8, ptr %t178, { i64, ptr } %t179)
  br label %bb64
bb64:
  call void @__olang_scope_close(ptr %s8)
  br label %bb376
bb65:
  %t180 = load ptr, ptr %l1, !tbaa !29
  store ptr %t180, ptr %l147, !tbaa !29
  store i1 false, ptr %l148, !tbaa !21
  %t181 = load ptr, ptr %l147, !tbaa !29
  %t182 = icmp ne ptr %t181, null
  br i1 %t182, label %bb66, label %bb67
bb66:
  %t184 = load ptr, ptr %l147, !tbaa !29
  %t185 = load i64, ptr %t184, !range !{i64 0, i64 30}
  %t187 = icmp eq i64 %t185, 5
  store i1 %t187, ptr %l148, !tbaa !21
  br label %bb67
bb67:
  %t188 = load i1, ptr %l148, !tbaa !21
  br i1 %t188, label %bb68, label %bb69
bb68:
  %t189 = load ptr, ptr %l1, !tbaa !29
  %t191 = getelementptr { i64, [4 x i64] }, ptr %t189, i32 0, i32 1
  %t192 = getelementptr { %"compiler/source:Span", i32, ptr, ptr }, ptr %t191, i32 0, i32 1
  %t193 = load i32, ptr %t192, !range !{i32 0, i32 114}
  store i32 %t193, ptr %l10
  %t195 = load ptr, ptr %l1, !tbaa !29
  %t197 = getelementptr { i64, [4 x i64] }, ptr %t195, i32 0, i32 1
  %t198 = getelementptr { %"compiler/source:Span", i32, ptr, ptr }, ptr %t197, i32 0, i32 2
  %t199 = load ptr, ptr %t198
  store ptr %t199, ptr %l11, !tbaa !29
  %t201 = load ptr, ptr %l1, !tbaa !29
  %t203 = getelementptr { i64, [4 x i64] }, ptr %t201, i32 0, i32 1
  %t204 = getelementptr { %"compiler/source:Span", i32, ptr, ptr }, ptr %t203, i32 0, i32 3
  %t205 = load ptr, ptr %t204
  store ptr %t205, ptr %l12, !tbaa !29
  br label %bb70
bb69:
  br label %bb80
bb70:
  store %olang.scope zeroinitializer, ptr %s9
  %t207 = load ptr, ptr %l0, !tbaa !29
  %t208 = load ptr, ptr %l11, !tbaa !29
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2eexpr(ptr %v0, ptr %v1, ptr %t207, ptr %t208)
  br label %bb71
bb71:
  %t211 = load i32, ptr %l10, !range !{i32 0, i32 114}
  %t213 = trunc i64 79 to i32
  %t214 = icmp eq i32 %t211, %t213
  %t216 = xor i1 %t214, true
  br i1 %t216, label %bb72, label %bb73
bb72:
  store %olang.scope zeroinitializer, ptr %s10
  %t218 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2eput(ptr %v0, ptr %s10, ptr %t218, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d45, i32 0, i32 1) })
  br label %bb74
bb73:
  br label %bb75
bb74:
  call void @__olang_scope_close(ptr %s10)
  br label %bb75
bb75:
  %t220 = load ptr, ptr %l0, !tbaa !29
  store ptr %t220, ptr %l163, !tbaa !29
  %t221 = load i32, ptr %l10, !range !{i32 0, i32 114}
  %t223 = call { i64, ptr } @compiler_2ftoken_2ecompiler_2ftoken_3aTok_2eText(ptr %s9, i32 %t221)
  store { i64, ptr } %t223, ptr %l165
  br label %bb76
bb76:
  %t224 = load ptr, ptr %l163, !tbaa !29
  %t225 = load { i64, ptr }, ptr %l165, !tbaa !27
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2eput(ptr %v0, ptr %s9, ptr %t224, { i64, ptr } %t225)
  br label %bb77
bb77:
  %t226 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2eput(ptr %v0, ptr %s9, ptr %t226, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d46, i32 0, i32 1) })
  br label %bb78
bb78:
  %t228 = load ptr, ptr %l0, !tbaa !29
  %t229 = load ptr, ptr %l12, !tbaa !29
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2eexpr(ptr %v0, ptr %v1, ptr %t228, ptr %t229)
  br label %bb79
bb79:
  call void @__olang_scope_close(ptr %s9)
  br label %bb376
bb80:
  %t232 = load ptr, ptr %l1, !tbaa !29
  store ptr %t232, ptr %l169, !tbaa !29
  store i1 false, ptr %l170, !tbaa !21
  %t233 = load ptr, ptr %l169, !tbaa !29
  %t234 = icmp ne ptr %t233, null
  br i1 %t234, label %bb81, label %bb82
bb81:
  %t236 = load ptr, ptr %l169, !tbaa !29
  %t237 = load i64, ptr %t236, !range !{i64 0, i64 30}
  %t239 = icmp eq i64 %t237, 6
  store i1 %t239, ptr %l170, !tbaa !21
  br label %bb82
bb82:
  %t240 = load i1, ptr %l170, !tbaa !21
  br i1 %t240, label %bb83, label %bb84
bb83:
  %t241 = load ptr, ptr %l1, !tbaa !29
  %t243 = getelementptr { i64, [4 x i64] }, ptr %t241, i32 0, i32 1
  %t244 = getelementptr { %"compiler/source:Span", ptr, ptr }, ptr %t243, i32 0, i32 1
  %t245 = load ptr, ptr %t244
  store ptr %t245, ptr %l13, !tbaa !29
  %t247 = load ptr, ptr %l1, !tbaa !29
  %t249 = getelementptr { i64, [4 x i64] }, ptr %t247, i32 0, i32 1
  %t250 = getelementptr { %"compiler/source:Span", ptr, ptr }, ptr %t249, i32 0, i32 2
  %t251 = load ptr, ptr %t250
  store ptr %t251, ptr %l14, !tbaa !29
  br label %bb85
bb84:
  br label %bb89
bb85:
  store %olang.scope zeroinitializer, ptr %s11
  %t253 = load ptr, ptr %l0, !tbaa !29
  %t254 = load ptr, ptr %l13, !tbaa !29
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2eexpr(ptr %v0, ptr %v1, ptr %t253, ptr %t254)
  br label %bb86
bb86:
  %t257 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2eput(ptr %v0, ptr %s11, ptr %t257, { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d47, i32 0, i32 1) })
  br label %bb87
bb87:
  %t259 = load ptr, ptr %l0, !tbaa !29
  %t260 = load ptr, ptr %l14, !tbaa !29
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2eexpr(ptr %v0, ptr %v1, ptr %t259, ptr %t260)
  br label %bb88
bb88:
  call void @__olang_scope_close(ptr %s11)
  br label %bb376
bb89:
  %t263 = load ptr, ptr %l1, !tbaa !29
  store ptr %t263, ptr %l182, !tbaa !29
  store i1 false, ptr %l183, !tbaa !21
  %t264 = load ptr, ptr %l182, !tbaa !29
  %t265 = icmp ne ptr %t264, null
  br i1 %t265, label %bb90, label %bb91
bb90:
  %t267 = load ptr, ptr %l182, !tbaa !29
  %t268 = load i64, ptr %t267, !range !{i64 0, i64 30}
  %t270 = icmp eq i64 %t268, 7
  store i1 %t270, ptr %l183, !tbaa !21
  br label %bb91
bb91:
  %t271 = load i1, ptr %l183, !tbaa !21
  br i1 %t271, label %bb92, label %bb93
bb92:
  %t272 = load ptr, ptr %l1, !tbaa !29
  %t274 = getelementptr { i64, [4 x i64] }, ptr %t272, i32 0, i32 1
  %t275 = getelementptr { %"compiler/source:Span", ptr }, ptr %t274, i32 0, i32 1
  %t276 = load ptr, ptr %t275
  store ptr %t276, ptr %l15, !tbaa !29
  br label %bb94
bb93:
  br label %bb109
bb94:
  %t278 = load ptr, ptr %l15, !tbaa !29
  %t280 = getelementptr %"compiler/ast:Chain", ptr %t278, i32 0, i32 1
  %t281 = load { i64, ptr }, ptr %t280, !tbaa !27
  store { i64, ptr } %t281, ptr %l16, !tbaa !27
  store i64 0, ptr %l17, !tbaa !24
  %t283 = load { i64, ptr }, ptr %l16, !tbaa !27
  %t285 = extractvalue { i64, ptr } %t283, 0
  store i64 %t285, ptr %l18, !tbaa !24
  br label %bb95
bb95:
  %t287 = load i64, ptr %l17, !tbaa !24
  %t288 = load i64, ptr %l18, !tbaa !24
  %t291 = icmp slt i64 %t287, %t288
  %t293 = xor i1 %t291, true
  br i1 %t293, label %bb96, label %bb97
bb96:
  br label %bb108
bb97:
  br label %bb98
bb98:
  %t295 = load i64, ptr %l17, !tbaa !24
  store i64 %t295, ptr %l19, !tbaa !24
  %t297 = load { i64, ptr }, ptr %l16, !tbaa !27
  store { i64, ptr } %t297, ptr %l197, !tbaa !27
  %t298 = load i64, ptr %l17, !tbaa !24
  %t300 = getelementptr { i64, ptr }, ptr %l197, i32 0, i32 1
  %t301 = load ptr, ptr %t300, !tbaa !27
  %t302 = getelementptr ptr, ptr %t301, i64 %t298
  %t303 = load ptr, ptr %t302, !tbaa !39
  store ptr %t303, ptr %l20, !tbaa !29
  %t305 = load i64, ptr %l19, !tbaa !24
  %t307 = icmp sgt i64 %t305, 0
  br i1 %t307, label %bb99, label %bb100
bb99:
  store %olang.scope zeroinitializer, ptr %s15
  %t309 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2eput(ptr %v0, ptr %s15, ptr %t309, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d48, i32 0, i32 1) })
  br label %bb101
bb100:
  br label %bb105
bb101:
  %t311 = load ptr, ptr %l0, !tbaa !29
  store ptr %t311, ptr %l203, !tbaa !29
  %t312 = load ptr, ptr %l15, !tbaa !29
  %t314 = getelementptr %"compiler/ast:Chain", ptr %t312, i32 0, i32 0
  %t315 = load { i64, ptr }, ptr %t314, !tbaa !27
  store { i64, ptr } %t315, ptr %l205, !tbaa !27
  %t316 = load i64, ptr %l19, !tbaa !24
  %t318 = sub i64 %t316, 1
  %t320 = getelementptr { i64, ptr }, ptr %l205, i32 0, i32 1
  %t321 = load ptr, ptr %t320, !tbaa !27
  %t322 = getelementptr i32, ptr %t321, i64 %t318
  %t323 = load i32, ptr %t322, !range !{i32 0, i32 114}
  %t325 = call { i64, ptr } @compiler_2ftoken_2ecompiler_2ftoken_3aTok_2eText(ptr %s15, i32 %t323)
  store { i64, ptr } %t325, ptr %l209
  br label %bb102
bb102:
  %t326 = load ptr, ptr %l203, !tbaa !29
  %t327 = load { i64, ptr }, ptr %l209, !tbaa !27
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2eput(ptr %v0, ptr %s15, ptr %t326, { i64, ptr } %t327)
  br label %bb103
bb103:
  %t328 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2eput(ptr %v0, ptr %s15, ptr %t328, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d49, i32 0, i32 1) })
  br label %bb104
bb104:
  call void @__olang_scope_close(ptr %s15)
  br label %bb105
bb105:
  %t330 = load ptr, ptr %l0, !tbaa !29
  %t331 = load ptr, ptr %l20, !tbaa !29
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2eexpr(ptr %v0, ptr %v1, ptr %t330, ptr %t331)
  br label %bb106
bb106:
  br label %bb107
bb107:
  %t334 = load i64, ptr %l17, !tbaa !24
  %t336 = add i64 %t334, 1
  store i64 %t336, ptr %l17, !tbaa !24
  br label %bb95
bb108:
  br label %bb376
bb109:
  %t338 = load ptr, ptr %l1, !tbaa !29
  store ptr %t338, ptr %l215, !tbaa !29
  store i1 false, ptr %l216, !tbaa !21
  %t339 = load ptr, ptr %l215, !tbaa !29
  %t340 = icmp ne ptr %t339, null
  br i1 %t340, label %bb110, label %bb111
bb110:
  %t342 = load ptr, ptr %l215, !tbaa !29
  %t343 = load i64, ptr %t342, !range !{i64 0, i64 30}
  %t345 = icmp eq i64 %t343, 8
  store i1 %t345, ptr %l216, !tbaa !21
  br label %bb111
bb111:
  %t346 = load i1, ptr %l216, !tbaa !21
  br i1 %t346, label %bb112, label %bb113
bb112:
  %t347 = load ptr, ptr %l1, !tbaa !29
  %t349 = getelementptr { i64, [4 x i64] }, ptr %t347, i32 0, i32 1
  %t350 = getelementptr { %"compiler/source:Span", ptr, ptr, ptr }, ptr %t349, i32 0, i32 1
  %t351 = load ptr, ptr %t350
  store ptr %t351, ptr %l21, !tbaa !29
  %t353 = load ptr, ptr %l1, !tbaa !29
  %t355 = getelementptr { i64, [4 x i64] }, ptr %t353, i32 0, i32 1
  %t356 = getelementptr { %"compiler/source:Span", ptr, ptr, ptr }, ptr %t355, i32 0, i32 2
  %t357 = load ptr, ptr %t356
  store ptr %t357, ptr %l22, !tbaa !29
  %t359 = load ptr, ptr %l1, !tbaa !29
  %t361 = getelementptr { i64, [4 x i64] }, ptr %t359, i32 0, i32 1
  %t362 = getelementptr { %"compiler/source:Span", ptr, ptr, ptr }, ptr %t361, i32 0, i32 3
  %t363 = load ptr, ptr %t362
  store ptr %t363, ptr %l23, !tbaa !29
  br label %bb114
bb113:
  br label %bb120
bb114:
  store %olang.scope zeroinitializer, ptr %s17
  %t365 = load ptr, ptr %l0, !tbaa !29
  %t366 = load ptr, ptr %l21, !tbaa !29
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2eexpr(ptr %v0, ptr %v1, ptr %t365, ptr %t366)
  br label %bb115
bb115:
  %t369 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2eput(ptr %v0, ptr %s17, ptr %t369, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d50, i32 0, i32 1) })
  br label %bb116
bb116:
  %t371 = load ptr, ptr %l0, !tbaa !29
  %t372 = load ptr, ptr %l22, !tbaa !29
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2eexpr(ptr %v0, ptr %v1, ptr %t371, ptr %t372)
  br label %bb117
bb117:
  %t375 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2eput(ptr %v0, ptr %s17, ptr %t375, { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d51, i32 0, i32 1) })
  br label %bb118
bb118:
  %t377 = load ptr, ptr %l0, !tbaa !29
  %t378 = load ptr, ptr %l23, !tbaa !29
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2eexpr(ptr %v0, ptr %v1, ptr %t377, ptr %t378)
  br label %bb119
bb119:
  call void @__olang_scope_close(ptr %s17)
  br label %bb376
bb120:
  %t381 = load ptr, ptr %l1, !tbaa !29
  store ptr %t381, ptr %l233, !tbaa !29
  store i1 false, ptr %l234, !tbaa !21
  %t382 = load ptr, ptr %l233, !tbaa !29
  %t383 = icmp ne ptr %t382, null
  br i1 %t383, label %bb121, label %bb122
bb121:
  %t385 = load ptr, ptr %l233, !tbaa !29
  %t386 = load i64, ptr %t385, !range !{i64 0, i64 30}
  %t388 = icmp eq i64 %t386, 9
  store i1 %t388, ptr %l234, !tbaa !21
  br label %bb122
bb122:
  %t389 = load i1, ptr %l234, !tbaa !21
  br i1 %t389, label %bb123, label %bb124
bb123:
  %t390 = load ptr, ptr %l1, !tbaa !29
  %t392 = getelementptr { i64, [4 x i64] }, ptr %t390, i32 0, i32 1
  %t393 = getelementptr { %"compiler/source:Span", ptr, ptr, i1 }, ptr %t392, i32 0, i32 1
  %t394 = load ptr, ptr %t393
  store ptr %t394, ptr %l24, !tbaa !29
  %t396 = load ptr, ptr %l1, !tbaa !29
  %t398 = getelementptr { i64, [4 x i64] }, ptr %t396, i32 0, i32 1
  %t399 = getelementptr { %"compiler/source:Span", ptr, ptr, i1 }, ptr %t398, i32 0, i32 2
  %t400 = load ptr, ptr %t399
  store ptr %t400, ptr %l25, !tbaa !29
  %t402 = load ptr, ptr %l1, !tbaa !29
  %t404 = getelementptr { i64, [4 x i64] }, ptr %t402, i32 0, i32 1
  %t405 = getelementptr { %"compiler/source:Span", ptr, ptr, i1 }, ptr %t404, i32 0, i32 3
  %t406 = load i1, ptr %t405
  store i1 %t406, ptr %l26, !tbaa !21
  br label %bb125
bb124:
  br label %bb132
bb125:
  store %olang.scope zeroinitializer, ptr %s18
  %t408 = load ptr, ptr %l0, !tbaa !29
  %t409 = load ptr, ptr %l24, !tbaa !29
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2eexpr(ptr %v0, ptr %v1, ptr %t408, ptr %t409)
  br label %bb126
bb126:
  %t412 = load ptr, ptr %l0, !tbaa !29
  store ptr %t412, ptr %l245, !tbaa !29
  %t413 = load i1, ptr %l26, !tbaa !21
  br i1 %t413, label %bb127, label %bb128
bb127:
  store { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d52, i32 0, i32 1) }, ptr %l247, !tbaa !27
  br label %bb129
bb128:
  store { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d53, i32 0, i32 1) }, ptr %l247, !tbaa !27
  br label %bb129
bb129:
  %t415 = load ptr, ptr %l245, !tbaa !29
  %t416 = load { i64, ptr }, ptr %l247, !tbaa !27
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2eput(ptr %v0, ptr %s18, ptr %t415, { i64, ptr } %t416)
  br label %bb130
bb130:
  %t417 = load ptr, ptr %l0, !tbaa !29
  %t418 = load ptr, ptr %l25, !tbaa !29
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2ety(ptr %v0, ptr %v1, ptr %t417, ptr %t418)
  br label %bb131
bb131:
  call void @__olang_scope_close(ptr %s18)
  br label %bb376
bb132:
  %t421 = load ptr, ptr %l1, !tbaa !29
  store ptr %t421, ptr %l250, !tbaa !29
  store i1 false, ptr %l251, !tbaa !21
  %t422 = load ptr, ptr %l250, !tbaa !29
  %t423 = icmp ne ptr %t422, null
  br i1 %t423, label %bb133, label %bb134
bb133:
  %t425 = load ptr, ptr %l250, !tbaa !29
  %t426 = load i64, ptr %t425, !range !{i64 0, i64 30}
  %t428 = icmp eq i64 %t426, 10
  store i1 %t428, ptr %l251, !tbaa !21
  br label %bb134
bb134:
  %t429 = load i1, ptr %l251, !tbaa !21
  br i1 %t429, label %bb135, label %bb136
bb135:
  %t430 = load ptr, ptr %l1, !tbaa !29
  %t432 = getelementptr { i64, [4 x i64] }, ptr %t430, i32 0, i32 1
  %t433 = getelementptr { %"compiler/source:Span", ptr, ptr, i1 }, ptr %t432, i32 0, i32 1
  %t434 = load ptr, ptr %t433
  store ptr %t434, ptr %l27, !tbaa !29
  %t436 = load ptr, ptr %l1, !tbaa !29
  %t438 = getelementptr { i64, [4 x i64] }, ptr %t436, i32 0, i32 1
  %t439 = getelementptr { %"compiler/source:Span", ptr, ptr, i1 }, ptr %t438, i32 0, i32 2
  %t440 = load ptr, ptr %t439
  store ptr %t440, ptr %l28, !tbaa !29
  %t442 = load ptr, ptr %l1, !tbaa !29
  %t444 = getelementptr { i64, [4 x i64] }, ptr %t442, i32 0, i32 1
  %t445 = getelementptr { %"compiler/source:Span", ptr, ptr, i1 }, ptr %t444, i32 0, i32 3
  %t446 = load i1, ptr %t445
  store i1 %t446, ptr %l29, !tbaa !21
  br label %bb137
bb136:
  br label %bb144
bb137:
  store %olang.scope zeroinitializer, ptr %s19
  %t448 = load ptr, ptr %l0, !tbaa !29
  %t449 = load ptr, ptr %l27, !tbaa !29
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2eexpr(ptr %v0, ptr %v1, ptr %t448, ptr %t449)
  br label %bb138
bb138:
  %t452 = load ptr, ptr %l0, !tbaa !29
  store ptr %t452, ptr %l262, !tbaa !29
  %t453 = load i1, ptr %l29, !tbaa !21
  br i1 %t453, label %bb139, label %bb140
bb139:
  store { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d54, i32 0, i32 1) }, ptr %l264, !tbaa !27
  br label %bb141
bb140:
  store { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d55, i32 0, i32 1) }, ptr %l264, !tbaa !27
  br label %bb141
bb141:
  %t455 = load ptr, ptr %l262, !tbaa !29
  %t456 = load { i64, ptr }, ptr %l264, !tbaa !27
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2eput(ptr %v0, ptr %s19, ptr %t455, { i64, ptr } %t456)
  br label %bb142
bb142:
  %t457 = load ptr, ptr %l0, !tbaa !29
  %t458 = load ptr, ptr %l28, !tbaa !29
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2eexpr(ptr %v0, ptr %v1, ptr %t457, ptr %t458)
  br label %bb143
bb143:
  call void @__olang_scope_close(ptr %s19)
  br label %bb376
bb144:
  %t461 = load ptr, ptr %l1, !tbaa !29
  store ptr %t461, ptr %l267, !tbaa !29
  store i1 false, ptr %l268, !tbaa !21
  %t462 = load ptr, ptr %l267, !tbaa !29
  %t463 = icmp ne ptr %t462, null
  br i1 %t463, label %bb145, label %bb146
bb145:
  %t465 = load ptr, ptr %l267, !tbaa !29
  %t466 = load i64, ptr %t465, !range !{i64 0, i64 30}
  %t468 = icmp eq i64 %t466, 11
  store i1 %t468, ptr %l268, !tbaa !21
  br label %bb146
bb146:
  %t469 = load i1, ptr %l268, !tbaa !21
  br i1 %t469, label %bb147, label %bb148
bb147:
  %t470 = load ptr, ptr %l1, !tbaa !29
  %t472 = getelementptr { i64, [4 x i64] }, ptr %t470, i32 0, i32 1
  %t473 = getelementptr { %"compiler/source:Span", ptr, ptr }, ptr %t472, i32 0, i32 1
  %t474 = load ptr, ptr %t473
  store ptr %t474, ptr %l30, !tbaa !29
  %t476 = load ptr, ptr %l1, !tbaa !29
  %t478 = getelementptr { i64, [4 x i64] }, ptr %t476, i32 0, i32 1
  %t479 = getelementptr { %"compiler/source:Span", ptr, ptr }, ptr %t478, i32 0, i32 2
  %t480 = load ptr, ptr %t479
  store ptr %t480, ptr %l31, !tbaa !29
  br label %bb149
bb148:
  br label %bb153
bb149:
  store %olang.scope zeroinitializer, ptr %s20
  %t482 = load ptr, ptr %l0, !tbaa !29
  %t483 = load ptr, ptr %l30, !tbaa !29
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2eexpr(ptr %v0, ptr %v1, ptr %t482, ptr %t483)
  br label %bb150
bb150:
  %t486 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2eput(ptr %v0, ptr %s20, ptr %t486, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d56, i32 0, i32 1) })
  br label %bb151
bb151:
  %t488 = load ptr, ptr %l0, !tbaa !29
  %t489 = load ptr, ptr %l31, !tbaa !29
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2ety(ptr %v0, ptr %v1, ptr %t488, ptr %t489)
  br label %bb152
bb152:
  call void @__olang_scope_close(ptr %s20)
  br label %bb376
bb153:
  %t492 = load ptr, ptr %l1, !tbaa !29
  store ptr %t492, ptr %l280, !tbaa !29
  store i1 false, ptr %l281, !tbaa !21
  %t493 = load ptr, ptr %l280, !tbaa !29
  %t494 = icmp ne ptr %t493, null
  br i1 %t494, label %bb154, label %bb155
bb154:
  %t496 = load ptr, ptr %l280, !tbaa !29
  %t497 = load i64, ptr %t496, !range !{i64 0, i64 30}
  %t499 = icmp eq i64 %t497, 12
  store i1 %t499, ptr %l281, !tbaa !21
  br label %bb155
bb155:
  %t500 = load i1, ptr %l281, !tbaa !21
  br i1 %t500, label %bb156, label %bb157
bb156:
  %t501 = load ptr, ptr %l1, !tbaa !29
  %t503 = getelementptr { i64, [4 x i64] }, ptr %t501, i32 0, i32 1
  %t504 = getelementptr { %"compiler/source:Span", ptr, { i64, ptr } }, ptr %t503, i32 0, i32 1
  %t505 = load ptr, ptr %t504
  store ptr %t505, ptr %l32, !tbaa !29
  %t507 = load ptr, ptr %l1, !tbaa !29
  %t509 = getelementptr { i64, [4 x i64] }, ptr %t507, i32 0, i32 1
  %t510 = getelementptr { %"compiler/source:Span", ptr, { i64, ptr } }, ptr %t509, i32 0, i32 2
  %t511 = load { i64, ptr }, ptr %t510
  store { i64, ptr } %t511, ptr %l33, !tbaa !27
  br label %bb158
bb157:
  br label %bb163
bb158:
  store %olang.scope zeroinitializer, ptr %s21
  %t513 = load ptr, ptr %l0, !tbaa !29
  %t514 = load ptr, ptr %l32, !tbaa !29
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2eexpr(ptr %v0, ptr %v1, ptr %t513, ptr %t514)
  br label %bb159
bb159:
  %t517 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2eput(ptr %v0, ptr %s21, ptr %t517, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d57, i32 0, i32 1) })
  br label %bb160
bb160:
  %t519 = load ptr, ptr %l0, !tbaa !29
  %t520 = load { i64, ptr }, ptr %l33, !tbaa !27
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2eitems(ptr %v0, ptr %v1, ptr %t519, { i64, ptr } %t520)
  br label %bb161
bb161:
  %t523 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2eput(ptr %v0, ptr %s21, ptr %t523, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d58, i32 0, i32 1) })
  br label %bb162
bb162:
  call void @__olang_scope_close(ptr %s21)
  br label %bb376
bb163:
  %t525 = load ptr, ptr %l1, !tbaa !29
  store ptr %t525, ptr %l294, !tbaa !29
  store i1 false, ptr %l295, !tbaa !21
  %t526 = load ptr, ptr %l294, !tbaa !29
  %t527 = icmp ne ptr %t526, null
  br i1 %t527, label %bb164, label %bb165
bb164:
  %t529 = load ptr, ptr %l294, !tbaa !29
  %t530 = load i64, ptr %t529, !range !{i64 0, i64 30}
  %t532 = icmp eq i64 %t530, 13
  store i1 %t532, ptr %l295, !tbaa !21
  br label %bb165
bb165:
  %t533 = load i1, ptr %l295, !tbaa !21
  br i1 %t533, label %bb166, label %bb167
bb166:
  %t534 = load ptr, ptr %l1, !tbaa !29
  %t536 = getelementptr { i64, [4 x i64] }, ptr %t534, i32 0, i32 1
  %t537 = getelementptr { %"compiler/source:Span", ptr, { i64, ptr } }, ptr %t536, i32 0, i32 1
  %t538 = load ptr, ptr %t537
  store ptr %t538, ptr %l34, !tbaa !29
  %t540 = load ptr, ptr %l1, !tbaa !29
  %t542 = getelementptr { i64, [4 x i64] }, ptr %t540, i32 0, i32 1
  %t543 = getelementptr { %"compiler/source:Span", ptr, { i64, ptr } }, ptr %t542, i32 0, i32 2
  %t544 = load { i64, ptr }, ptr %t543
  store { i64, ptr } %t544, ptr %l35, !tbaa !27
  br label %bb168
bb167:
  br label %bb173
bb168:
  store %olang.scope zeroinitializer, ptr %s22
  %t546 = load ptr, ptr %l0, !tbaa !29
  %t547 = load ptr, ptr %l34, !tbaa !29
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2eexpr(ptr %v0, ptr %v1, ptr %t546, ptr %t547)
  br label %bb169
bb169:
  %t550 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2eput(ptr %v0, ptr %s22, ptr %t550, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d59, i32 0, i32 1) })
  br label %bb170
bb170:
  %t552 = load ptr, ptr %l0, !tbaa !29
  %t553 = load { i64, ptr }, ptr %l35, !tbaa !27
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2etypes(ptr %v0, ptr %v1, ptr %t552, { i64, ptr } %t553)
  br label %bb171
bb171:
  %t556 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2eput(ptr %v0, ptr %s22, ptr %t556, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d60, i32 0, i32 1) })
  br label %bb172
bb172:
  call void @__olang_scope_close(ptr %s22)
  br label %bb376
bb173:
  %t558 = load ptr, ptr %l1, !tbaa !29
  store ptr %t558, ptr %l308, !tbaa !29
  store i1 false, ptr %l309, !tbaa !21
  %t559 = load ptr, ptr %l308, !tbaa !29
  %t560 = icmp ne ptr %t559, null
  br i1 %t560, label %bb174, label %bb175
bb174:
  %t562 = load ptr, ptr %l308, !tbaa !29
  %t563 = load i64, ptr %t562, !range !{i64 0, i64 30}
  %t565 = icmp eq i64 %t563, 14
  store i1 %t565, ptr %l309, !tbaa !21
  br label %bb175
bb175:
  %t566 = load i1, ptr %l309, !tbaa !21
  br i1 %t566, label %bb176, label %bb177
bb176:
  %t567 = load ptr, ptr %l1, !tbaa !29
  %t569 = getelementptr { i64, [4 x i64] }, ptr %t567, i32 0, i32 1
  %t570 = getelementptr { %"compiler/source:Span", ptr, i32 }, ptr %t569, i32 0, i32 1
  %t571 = load ptr, ptr %t570
  store ptr %t571, ptr %l36, !tbaa !29
  %t573 = load ptr, ptr %l1, !tbaa !29
  %t575 = getelementptr { i64, [4 x i64] }, ptr %t573, i32 0, i32 1
  %t576 = getelementptr { %"compiler/source:Span", ptr, i32 }, ptr %t575, i32 0, i32 2
  %t577 = load i32, ptr %t576
  store i32 %t577, ptr %l37, !tbaa !23
  br label %bb178
bb177:
  br label %bb182
bb178:
  store %olang.scope zeroinitializer, ptr %s23
  %t579 = load ptr, ptr %l0, !tbaa !29
  %t580 = load ptr, ptr %l36, !tbaa !29
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2eexpr(ptr %v0, ptr %v1, ptr %t579, ptr %t580)
  br label %bb179
bb179:
  %t583 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2eput(ptr %v0, ptr %s23, ptr %t583, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d61, i32 0, i32 1) })
  br label %bb180
bb180:
  %t585 = load ptr, ptr %l0, !tbaa !29
  %t586 = load i32, ptr %l37, !tbaa !23
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2ename(ptr %v0, ptr %t585, i32 %t586)
  br label %bb181
bb181:
  call void @__olang_scope_close(ptr %s23)
  br label %bb376
bb182:
  %t589 = load ptr, ptr %l1, !tbaa !29
  store ptr %t589, ptr %l321, !tbaa !29
  store i1 false, ptr %l322, !tbaa !21
  %t590 = load ptr, ptr %l321, !tbaa !29
  %t591 = icmp ne ptr %t590, null
  br i1 %t591, label %bb183, label %bb184
bb183:
  %t593 = load ptr, ptr %l321, !tbaa !29
  %t594 = load i64, ptr %t593, !range !{i64 0, i64 30}
  %t596 = icmp eq i64 %t594, 15
  store i1 %t596, ptr %l322, !tbaa !21
  br label %bb184
bb184:
  %t597 = load i1, ptr %l322, !tbaa !21
  br i1 %t597, label %bb185, label %bb186
bb185:
  %t598 = load ptr, ptr %l1, !tbaa !29
  %t600 = getelementptr { i64, [4 x i64] }, ptr %t598, i32 0, i32 1
  %t601 = getelementptr { %"compiler/source:Span", ptr, { i64, ptr } }, ptr %t600, i32 0, i32 1
  %t602 = load ptr, ptr %t601
  store ptr %t602, ptr %l38, !tbaa !29
  %t604 = load ptr, ptr %l1, !tbaa !29
  %t606 = getelementptr { i64, [4 x i64] }, ptr %t604, i32 0, i32 1
  %t607 = getelementptr { %"compiler/source:Span", ptr, { i64, ptr } }, ptr %t606, i32 0, i32 2
  %t608 = load { i64, ptr }, ptr %t607
  store { i64, ptr } %t608, ptr %l39, !tbaa !27
  br label %bb187
bb186:
  br label %bb192
bb187:
  store %olang.scope zeroinitializer, ptr %s24
  %t610 = load ptr, ptr %l0, !tbaa !29
  %t611 = load ptr, ptr %l38, !tbaa !29
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2eexpr(ptr %v0, ptr %v1, ptr %t610, ptr %t611)
  br label %bb188
bb188:
  %t614 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2eput(ptr %v0, ptr %s24, ptr %t614, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d62, i32 0, i32 1) })
  br label %bb189
bb189:
  %t616 = load ptr, ptr %l0, !tbaa !29
  %t617 = load { i64, ptr }, ptr %l39, !tbaa !27
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2eitems(ptr %v0, ptr %v1, ptr %t616, { i64, ptr } %t617)
  br label %bb190
bb190:
  %t620 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2eput(ptr %v0, ptr %s24, ptr %t620, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d63, i32 0, i32 1) })
  br label %bb191
bb191:
  call void @__olang_scope_close(ptr %s24)
  br label %bb376
bb192:
  %t622 = load ptr, ptr %l1, !tbaa !29
  store ptr %t622, ptr %l335, !tbaa !29
  store i1 false, ptr %l336, !tbaa !21
  %t623 = load ptr, ptr %l335, !tbaa !29
  %t624 = icmp ne ptr %t623, null
  br i1 %t624, label %bb193, label %bb194
bb193:
  %t626 = load ptr, ptr %l335, !tbaa !29
  %t627 = load i64, ptr %t626, !range !{i64 0, i64 30}
  %t629 = icmp eq i64 %t627, 16
  store i1 %t629, ptr %l336, !tbaa !21
  br label %bb194
bb194:
  %t630 = load i1, ptr %l336, !tbaa !21
  br i1 %t630, label %bb195, label %bb196
bb195:
  %t631 = load ptr, ptr %l1, !tbaa !29
  %t633 = getelementptr { i64, [4 x i64] }, ptr %t631, i32 0, i32 1
  %t634 = getelementptr { %"compiler/source:Span", ptr, ptr, ptr }, ptr %t633, i32 0, i32 1
  %t635 = load ptr, ptr %t634
  store ptr %t635, ptr %l40, !tbaa !29
  %t637 = load ptr, ptr %l1, !tbaa !29
  %t639 = getelementptr { i64, [4 x i64] }, ptr %t637, i32 0, i32 1
  %t640 = getelementptr { %"compiler/source:Span", ptr, ptr, ptr }, ptr %t639, i32 0, i32 2
  %t641 = load ptr, ptr %t640
  store ptr %t641, ptr %l41, !tbaa !29
  %t643 = load ptr, ptr %l1, !tbaa !29
  %t645 = getelementptr { i64, [4 x i64] }, ptr %t643, i32 0, i32 1
  %t646 = getelementptr { %"compiler/source:Span", ptr, ptr, ptr }, ptr %t645, i32 0, i32 3
  %t647 = load ptr, ptr %t646
  store ptr %t647, ptr %l42, !tbaa !29
  br label %bb197
bb196:
  br label %bb210
bb197:
  store %olang.scope zeroinitializer, ptr %s25
  %t649 = load ptr, ptr %l0, !tbaa !29
  %t650 = load ptr, ptr %l40, !tbaa !29
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2eexpr(ptr %v0, ptr %v1, ptr %t649, ptr %t650)
  br label %bb198
bb198:
  %t653 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2eput(ptr %v0, ptr %s25, ptr %t653, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d64, i32 0, i32 1) })
  br label %bb199
bb199:
  %t655 = load ptr, ptr %l41, !tbaa !29
  %t657 = icmp eq ptr %t655, null
  %t659 = xor i1 %t657, true
  br i1 %t659, label %bb200, label %bb201
bb200:
  %t661 = load ptr, ptr %l0, !tbaa !29
  %t662 = load ptr, ptr %l41, !tbaa !29
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2eexpr(ptr %v0, ptr %v1, ptr %t661, ptr %t662)
  br label %bb202
bb201:
  br label %bb203
bb202:
  br label %bb203
bb203:
  %t665 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2eput(ptr %v0, ptr %s25, ptr %t665, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d65, i32 0, i32 1) })
  br label %bb204
bb204:
  %t667 = load ptr, ptr %l42, !tbaa !29
  %t669 = icmp eq ptr %t667, null
  %t671 = xor i1 %t669, true
  br i1 %t671, label %bb205, label %bb206
bb205:
  %t673 = load ptr, ptr %l0, !tbaa !29
  %t674 = load ptr, ptr %l42, !tbaa !29
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2eexpr(ptr %v0, ptr %v1, ptr %t673, ptr %t674)
  br label %bb207
bb206:
  br label %bb208
bb207:
  br label %bb208
bb208:
  %t677 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2eput(ptr %v0, ptr %s25, ptr %t677, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d66, i32 0, i32 1) })
  br label %bb209
bb209:
  call void @__olang_scope_close(ptr %s25)
  br label %bb376
bb210:
  %t679 = load ptr, ptr %l1, !tbaa !29
  store ptr %t679, ptr %l360, !tbaa !29
  store i1 false, ptr %l361, !tbaa !21
  %t680 = load ptr, ptr %l360, !tbaa !29
  %t681 = icmp ne ptr %t680, null
  br i1 %t681, label %bb211, label %bb212
bb211:
  %t683 = load ptr, ptr %l360, !tbaa !29
  %t684 = load i64, ptr %t683, !range !{i64 0, i64 30}
  %t686 = icmp eq i64 %t684, 17
  store i1 %t686, ptr %l361, !tbaa !21
  br label %bb212
bb212:
  %t687 = load i1, ptr %l361, !tbaa !21
  br i1 %t687, label %bb213, label %bb214
bb213:
  %t688 = load ptr, ptr %l1, !tbaa !29
  %t690 = getelementptr { i64, [4 x i64] }, ptr %t688, i32 0, i32 1
  %t691 = getelementptr { %"compiler/source:Span", ptr, { i64, ptr } }, ptr %t690, i32 0, i32 1
  %t692 = load ptr, ptr %t691
  store ptr %t692, ptr %l43, !tbaa !29
  %t694 = load ptr, ptr %l1, !tbaa !29
  %t696 = getelementptr { i64, [4 x i64] }, ptr %t694, i32 0, i32 1
  %t697 = getelementptr { %"compiler/source:Span", ptr, { i64, ptr } }, ptr %t696, i32 0, i32 2
  %t698 = load { i64, ptr }, ptr %t697
  store { i64, ptr } %t698, ptr %l44, !tbaa !27
  br label %bb215
bb214:
  br label %bb223
bb215:
  store %olang.scope zeroinitializer, ptr %s28
  %t700 = load ptr, ptr %l0, !tbaa !29
  store ptr %t700, ptr %l368, !tbaa !29
  %t701 = load ptr, ptr %l43, !tbaa !29
  %t703 = icmp eq ptr %t701, null
  br i1 %t703, label %bb216, label %bb217
bb216:
  call void @__olang_check_failed(ptr @olang_loc_577bb2401887ee03_bd83bee27b444ed7)
  unreachable
bb217:
  br label %bb218
bb218:
  %t705 = load ptr, ptr %l43, !tbaa !29
  %t706 = load ptr, ptr %l368, !tbaa !29
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2ety(ptr %v0, ptr %v1, ptr %t706, ptr %t705)
  br label %bb219
bb219:
  %t708 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2eput(ptr %v0, ptr %s28, ptr %t708, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d67, i32 0, i32 1) })
  br label %bb220
bb220:
  %t710 = load ptr, ptr %l0, !tbaa !29
  %t711 = load { i64, ptr }, ptr %l44, !tbaa !27
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2eitems(ptr %v0, ptr %v1, ptr %t710, { i64, ptr } %t711)
  br label %bb221
bb221:
  %t714 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2eput(ptr %v0, ptr %s28, ptr %t714, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d68, i32 0, i32 1) })
  br label %bb222
bb222:
  call void @__olang_scope_close(ptr %s28)
  br label %bb376
bb223:
  %t716 = load ptr, ptr %l1, !tbaa !29
  store ptr %t716, ptr %l376, !tbaa !29
  store i1 false, ptr %l377, !tbaa !21
  %t717 = load ptr, ptr %l376, !tbaa !29
  %t718 = icmp ne ptr %t717, null
  br i1 %t718, label %bb224, label %bb225
bb224:
  %t720 = load ptr, ptr %l376, !tbaa !29
  %t721 = load i64, ptr %t720, !range !{i64 0, i64 30}
  %t723 = icmp eq i64 %t721, 18
  store i1 %t723, ptr %l377, !tbaa !21
  br label %bb225
bb225:
  %t724 = load i1, ptr %l377, !tbaa !21
  br i1 %t724, label %bb226, label %bb227
bb226:
  %t725 = load ptr, ptr %l1, !tbaa !29
  %t727 = getelementptr { i64, [4 x i64] }, ptr %t725, i32 0, i32 1
  %t728 = getelementptr { %"compiler/source:Span", { i64, ptr } }, ptr %t727, i32 0, i32 1
  %t729 = load { i64, ptr }, ptr %t728
  store { i64, ptr } %t729, ptr %l45, !tbaa !27
  br label %bb228
bb227:
  br label %bb232
bb228:
  store %olang.scope zeroinitializer, ptr %s29
  %t731 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2eput(ptr %v0, ptr %s29, ptr %t731, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d69, i32 0, i32 1) })
  br label %bb229
bb229:
  %t733 = load ptr, ptr %l0, !tbaa !29
  %t734 = load { i64, ptr }, ptr %l45, !tbaa !27
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2eitems(ptr %v0, ptr %v1, ptr %t733, { i64, ptr } %t734)
  br label %bb230
bb230:
  %t737 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2eput(ptr %v0, ptr %s29, ptr %t737, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d70, i32 0, i32 1) })
  br label %bb231
bb231:
  call void @__olang_scope_close(ptr %s29)
  br label %bb376
bb232:
  %t739 = load ptr, ptr %l1, !tbaa !29
  store ptr %t739, ptr %l386, !tbaa !29
  store i1 false, ptr %l387, !tbaa !21
  %t740 = load ptr, ptr %l386, !tbaa !29
  %t741 = icmp ne ptr %t740, null
  br i1 %t741, label %bb233, label %bb234
bb233:
  %t743 = load ptr, ptr %l386, !tbaa !29
  %t744 = load i64, ptr %t743, !range !{i64 0, i64 30}
  %t746 = icmp eq i64 %t744, 19
  store i1 %t746, ptr %l387, !tbaa !21
  br label %bb234
bb234:
  %t747 = load i1, ptr %l387, !tbaa !21
  br i1 %t747, label %bb235, label %bb236
bb235:
  %t748 = load ptr, ptr %l1, !tbaa !29
  %t750 = getelementptr { i64, [4 x i64] }, ptr %t748, i32 0, i32 1
  %t751 = getelementptr { %"compiler/source:Span", ptr }, ptr %t750, i32 0, i32 1
  %t752 = load ptr, ptr %t751
  store ptr %t752, ptr %l46, !tbaa !29
  br label %bb237
bb236:
  br label %bb268
bb237:
  store %olang.scope zeroinitializer, ptr %s30
  %t754 = load ptr, ptr %l46, !tbaa !29
  %t756 = getelementptr %"compiler/ast:Compr", ptr %t754, i32 0, i32 6
  %t757 = load i1, ptr %t756, !tbaa !21
  %t759 = xor i1 %t757, true
  br i1 %t759, label %bb238, label %bb239
bb238:
  store %olang.scope zeroinitializer, ptr %s31
  %t761 = load ptr, ptr %l0, !tbaa !29
  store ptr %t761, ptr %l395, !tbaa !29
  %t762 = load ptr, ptr %l46, !tbaa !29
  %t764 = getelementptr %"compiler/ast:Compr", ptr %t762, i32 0, i32 0
  %t765 = load ptr, ptr %t764, !tbaa !29
  %t767 = icmp eq ptr %t765, null
  br i1 %t767, label %bb240, label %bb241
bb239:
  br label %bb245
bb240:
  call void @__olang_check_failed(ptr @olang_loc_47b511f5ef6d9e74_baf04e552c3da2b8)
  unreachable
bb241:
  br label %bb242
bb242:
  %t769 = load ptr, ptr %l46, !tbaa !29
  %t771 = getelementptr %"compiler/ast:Compr", ptr %t769, i32 0, i32 0
  %t772 = load ptr, ptr %t771, !tbaa !29
  %t773 = load ptr, ptr %l395, !tbaa !29
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2ety(ptr %v0, ptr %v1, ptr %t773, ptr %t772)
  br label %bb243
bb243:
  %t775 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2eput(ptr %v0, ptr %s31, ptr %t775, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d71, i32 0, i32 1) })
  br label %bb244
bb244:
  call void @__olang_scope_close(ptr %s31)
  br label %bb245
bb245:
  %t777 = load ptr, ptr %l0, !tbaa !29
  %t778 = load ptr, ptr %l46, !tbaa !29
  %t780 = getelementptr %"compiler/ast:Compr", ptr %t778, i32 0, i32 1
  %t781 = load ptr, ptr %t780, !tbaa !29
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2eexpr(ptr %v0, ptr %v1, ptr %t777, ptr %t781)
  br label %bb246
bb246:
  %t784 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2eput(ptr %v0, ptr %s30, ptr %t784, { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d72, i32 0, i32 1) })
  br label %bb247
bb247:
  %t786 = load ptr, ptr %l46, !tbaa !29
  %t788 = getelementptr %"compiler/ast:Compr", ptr %t786, i32 0, i32 2
  %t789 = load i32, ptr %t788, !tbaa !23
  %t791 = icmp ne i32 %t789, 0
  br i1 %t791, label %bb248, label %bb249
bb248:
  store %olang.scope zeroinitializer, ptr %s32
  %t793 = load ptr, ptr %l0, !tbaa !29
  %t794 = load ptr, ptr %l46, !tbaa !29
  %t796 = getelementptr %"compiler/ast:Compr", ptr %t794, i32 0, i32 2
  %t797 = load i32, ptr %t796, !tbaa !23
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2ename(ptr %v0, ptr %t793, i32 %t797)
  br label %bb250
bb249:
  br label %bb252
bb250:
  %t800 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2eput(ptr %v0, ptr %s32, ptr %t800, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d73, i32 0, i32 1) })
  br label %bb251
bb251:
  call void @__olang_scope_close(ptr %s32)
  br label %bb252
bb252:
  %t802 = load ptr, ptr %l0, !tbaa !29
  %t803 = load ptr, ptr %l46, !tbaa !29
  %t805 = getelementptr %"compiler/ast:Compr", ptr %t803, i32 0, i32 3
  %t806 = load i32, ptr %t805, !tbaa !23
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2ename(ptr %v0, ptr %t802, i32 %t806)
  br label %bb253
bb253:
  %t809 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2eput(ptr %v0, ptr %s30, ptr %t809, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d74, i32 0, i32 1) })
  br label %bb254
bb254:
  %t811 = load ptr, ptr %l0, !tbaa !29
  %t812 = load ptr, ptr %l46, !tbaa !29
  %t814 = getelementptr %"compiler/ast:Compr", ptr %t812, i32 0, i32 4
  %t815 = load ptr, ptr %t814, !tbaa !29
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2eexpr(ptr %v0, ptr %v1, ptr %t811, ptr %t815)
  br label %bb255
bb255:
  %t818 = load ptr, ptr %l46, !tbaa !29
  %t820 = getelementptr %"compiler/ast:Compr", ptr %t818, i32 0, i32 5
  %t821 = load ptr, ptr %t820, !tbaa !29
  %t823 = icmp eq ptr %t821, null
  %t825 = xor i1 %t823, true
  br i1 %t825, label %bb256, label %bb257
bb256:
  store %olang.scope zeroinitializer, ptr %s33
  %t827 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2eput(ptr %v0, ptr %s33, ptr %t827, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d75, i32 0, i32 1) })
  br label %bb258
bb257:
  br label %bb263
bb258:
  %t829 = load ptr, ptr %l0, !tbaa !29
  store ptr %t829, ptr %l425, !tbaa !29
  %t830 = load ptr, ptr %l46, !tbaa !29
  %t832 = getelementptr %"compiler/ast:Compr", ptr %t830, i32 0, i32 5
  %t833 = load ptr, ptr %t832, !tbaa !29
  %t835 = icmp eq ptr %t833, null
  br i1 %t835, label %bb259, label %bb260
bb259:
  call void @__olang_check_failed(ptr @olang_loc_e6dde321a76d1169_ef8c066898e78ecd)
  unreachable
bb260:
  br label %bb261
bb261:
  %t837 = load ptr, ptr %l46, !tbaa !29
  %t839 = getelementptr %"compiler/ast:Compr", ptr %t837, i32 0, i32 5
  %t840 = load ptr, ptr %t839, !tbaa !29
  %t841 = load ptr, ptr %l425, !tbaa !29
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2eexpr(ptr %v0, ptr %v1, ptr %t841, ptr %t840)
  br label %bb262
bb262:
  call void @__olang_scope_close(ptr %s33)
  br label %bb263
bb263:
  %t843 = load ptr, ptr %l46, !tbaa !29
  %t845 = getelementptr %"compiler/ast:Compr", ptr %t843, i32 0, i32 6
  %t846 = load i1, ptr %t845, !tbaa !21
  %t848 = xor i1 %t846, true
  br i1 %t848, label %bb264, label %bb265
bb264:
  store %olang.scope zeroinitializer, ptr %s34
  %t850 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2eput(ptr %v0, ptr %s34, ptr %t850, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d76, i32 0, i32 1) })
  br label %bb266
bb265:
  br label %bb267
bb266:
  call void @__olang_scope_close(ptr %s34)
  br label %bb267
bb267:
  call void @__olang_scope_close(ptr %s30)
  br label %bb376
bb268:
  %t852 = load ptr, ptr %l1, !tbaa !29
  store ptr %t852, ptr %l435, !tbaa !29
  store i1 false, ptr %l436, !tbaa !21
  %t853 = load ptr, ptr %l435, !tbaa !29
  %t854 = icmp ne ptr %t853, null
  br i1 %t854, label %bb269, label %bb270
bb269:
  %t856 = load ptr, ptr %l435, !tbaa !29
  %t857 = load i64, ptr %t856, !range !{i64 0, i64 30}
  %t859 = icmp eq i64 %t857, 20
  store i1 %t859, ptr %l436, !tbaa !21
  br label %bb270
bb270:
  %t860 = load i1, ptr %l436, !tbaa !21
  br i1 %t860, label %bb271, label %bb272
bb271:
  %t861 = load ptr, ptr %l1, !tbaa !29
  %t863 = getelementptr { i64, [4 x i64] }, ptr %t861, i32 0, i32 1
  %t864 = getelementptr { %"compiler/source:Span", { i64, ptr } }, ptr %t863, i32 0, i32 1
  %t865 = load { i64, ptr }, ptr %t864
  store { i64, ptr } %t865, ptr %l47, !tbaa !27
  br label %bb273
bb272:
  br label %bb285
bb273:
  %t867 = load { i64, ptr }, ptr %l47, !tbaa !27
  store { i64, ptr } %t867, ptr %l48, !tbaa !27
  store i64 0, ptr %l49, !tbaa !24
  %t869 = load { i64, ptr }, ptr %l48, !tbaa !27
  %t871 = extractvalue { i64, ptr } %t869, 0
  store i64 %t871, ptr %l50, !tbaa !24
  br label %bb274
bb274:
  %t873 = load i64, ptr %l49, !tbaa !24
  %t874 = load i64, ptr %l50, !tbaa !24
  %t877 = icmp slt i64 %t873, %t874
  %t879 = xor i1 %t877, true
  br i1 %t879, label %bb275, label %bb276
bb275:
  br label %bb284
bb276:
  br label %bb277
bb277:
  %t881 = load i64, ptr %l49, !tbaa !24
  %t883 = load { i64, ptr }, ptr %l48, !tbaa !27
  store { i64, ptr } %t883, ptr %l449, !tbaa !27
  %t884 = load i64, ptr %l49, !tbaa !24
  %t886 = getelementptr { i64, ptr }, ptr %l449, i32 0, i32 1
  %t887 = load ptr, ptr %t886, !tbaa !27
  %t888 = getelementptr ptr, ptr %t887, i64 %t884
  %t889 = load ptr, ptr %t888, !tbaa !39
  store ptr %t889, ptr %l52, !tbaa !29
  %t893 = icmp sgt i64 %t881, 0
  br i1 %t893, label %bb278, label %bb279
bb278:
  store %olang.scope zeroinitializer, ptr %s38
  %t895 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2eput(ptr %v0, ptr %s38, ptr %t895, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d77, i32 0, i32 1) })
  br label %bb280
bb279:
  br label %bb281
bb280:
  call void @__olang_scope_close(ptr %s38)
  br label %bb281
bb281:
  %t897 = load ptr, ptr %l0, !tbaa !29
  %t898 = load ptr, ptr %l52, !tbaa !29
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2eexpr(ptr %v0, ptr %v1, ptr %t897, ptr %t898)
  br label %bb282
bb282:
  br label %bb283
bb283:
  %t901 = load i64, ptr %l49, !tbaa !24
  %t903 = add i64 %t901, 1
  store i64 %t903, ptr %l49, !tbaa !24
  br label %bb274
bb284:
  br label %bb376
bb285:
  %t905 = load ptr, ptr %l1, !tbaa !29
  store ptr %t905, ptr %l459, !tbaa !29
  store i1 false, ptr %l460, !tbaa !21
  %t906 = load ptr, ptr %l459, !tbaa !29
  %t907 = icmp ne ptr %t906, null
  br i1 %t907, label %bb286, label %bb287
bb286:
  %t909 = load ptr, ptr %l459, !tbaa !29
  %t910 = load i64, ptr %t909, !range !{i64 0, i64 30}
  %t912 = icmp eq i64 %t910, 21
  store i1 %t912, ptr %l460, !tbaa !21
  br label %bb287
bb287:
  %t913 = load i1, ptr %l460, !tbaa !21
  br i1 %t913, label %bb288, label %bb289
bb288:
  %t914 = load ptr, ptr %l1, !tbaa !29
  %t916 = getelementptr { i64, [4 x i64] }, ptr %t914, i32 0, i32 1
  %t917 = getelementptr { %"compiler/source:Span", ptr, { i64, ptr } }, ptr %t916, i32 0, i32 1
  %t918 = load ptr, ptr %t917
  store ptr %t918, ptr %l53, !tbaa !29
  %t920 = load ptr, ptr %l1, !tbaa !29
  %t922 = getelementptr { i64, [4 x i64] }, ptr %t920, i32 0, i32 1
  %t923 = getelementptr { %"compiler/source:Span", ptr, { i64, ptr } }, ptr %t922, i32 0, i32 2
  %t924 = load { i64, ptr }, ptr %t923
  store { i64, ptr } %t924, ptr %l54, !tbaa !27
  br label %bb290
bb289:
  br label %bb294
bb290:
  store %olang.scope zeroinitializer, ptr %s40
  %t926 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2eput(ptr %v0, ptr %s40, ptr %t926, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d78, i32 0, i32 1) })
  br label %bb291
bb291:
  %t928 = load ptr, ptr %l0, !tbaa !29
  %t929 = load ptr, ptr %l53, !tbaa !29
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2eexpr(ptr %v0, ptr %v1, ptr %t928, ptr %t929)
  br label %bb292
bb292:
  %t932 = load ptr, ptr %l0, !tbaa !29
  %t933 = load { i64, ptr }, ptr %l54, !tbaa !27
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2eclauses(ptr %v0, ptr %v1, ptr %t932, { i64, ptr } %t933)
  br label %bb293
bb293:
  call void @__olang_scope_close(ptr %s40)
  br label %bb376
bb294:
  %t936 = load ptr, ptr %l1, !tbaa !29
  store ptr %t936, ptr %l472, !tbaa !29
  store i1 false, ptr %l473, !tbaa !21
  %t937 = load ptr, ptr %l472, !tbaa !29
  %t938 = icmp ne ptr %t937, null
  br i1 %t938, label %bb295, label %bb296
bb295:
  %t940 = load ptr, ptr %l472, !tbaa !29
  %t941 = load i64, ptr %t940, !range !{i64 0, i64 30}
  %t943 = icmp eq i64 %t941, 22
  store i1 %t943, ptr %l473, !tbaa !21
  br label %bb296
bb296:
  %t944 = load i1, ptr %l473, !tbaa !21
  br i1 %t944, label %bb297, label %bb298
bb297:
  %t945 = load ptr, ptr %l1, !tbaa !29
  %t947 = getelementptr { i64, [4 x i64] }, ptr %t945, i32 0, i32 1
  %t948 = getelementptr { %"compiler/source:Span", ptr }, ptr %t947, i32 0, i32 1
  %t949 = load ptr, ptr %t948
  store ptr %t949, ptr %l55, !tbaa !29
  br label %bb299
bb298:
  br label %bb303
bb299:
  store %olang.scope zeroinitializer, ptr %s41
  %t951 = load ptr, ptr %l0, !tbaa !29
  %t953 = getelementptr %"compiler/unparse:writer", ptr %t951, i32 0, i32 6
  %t954 = load i1, ptr %t953, !tbaa !21
  store i1 %t954, ptr %l56, !tbaa !21
  %t956 = load ptr, ptr %l0, !tbaa !29
  %t958 = getelementptr %"compiler/unparse:writer", ptr %t956, i32 0, i32 6
  store i1 false, ptr %t958, !tbaa !21
  %t959 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2eput(ptr %v0, ptr %s41, ptr %t959, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d79, i32 0, i32 1) })
  br label %bb300
bb300:
  %t961 = load ptr, ptr %l0, !tbaa !29
  %t962 = load ptr, ptr %l55, !tbaa !29
  %t964 = getelementptr %"compiler/ast:Func", ptr %t962, i32 0, i32 3
  %t965 = load ptr, ptr %t964, !tbaa !29
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2esig(ptr %v0, ptr %v1, ptr %t961, ptr %t965)
  br label %bb301
bb301:
  %t968 = load ptr, ptr %l0, !tbaa !29
  %t969 = load i1, ptr %l56, !tbaa !21
  %t972 = getelementptr %"compiler/unparse:writer", ptr %t968, i32 0, i32 6
  store i1 %t969, ptr %t972, !tbaa !21
  %t973 = load ptr, ptr %l0, !tbaa !29
  %t974 = load ptr, ptr %l55, !tbaa !29
  %t976 = getelementptr %"compiler/ast:Func", ptr %t974, i32 0, i32 4
  %t977 = load { i64, ptr }, ptr %t976, !tbaa !27
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2ebody(ptr %v0, ptr %v1, ptr %t973, { i64, ptr } %t977)
  br label %bb302
bb302:
  call void @__olang_scope_close(ptr %s41)
  br label %bb376
bb303:
  %t980 = load ptr, ptr %l1, !tbaa !29
  store ptr %t980, ptr %l490, !tbaa !29
  store i1 false, ptr %l491, !tbaa !21
  %t981 = load ptr, ptr %l490, !tbaa !29
  %t982 = icmp ne ptr %t981, null
  br i1 %t982, label %bb304, label %bb305
bb304:
  %t984 = load ptr, ptr %l490, !tbaa !29
  %t985 = load i64, ptr %t984, !range !{i64 0, i64 30}
  %t987 = icmp eq i64 %t985, 23
  store i1 %t987, ptr %l491, !tbaa !21
  br label %bb305
bb305:
  %t988 = load i1, ptr %l491, !tbaa !21
  br i1 %t988, label %bb306, label %bb307
bb306:
  %t989 = load ptr, ptr %l1, !tbaa !29
  %t991 = getelementptr { i64, [4 x i64] }, ptr %t989, i32 0, i32 1
  %t992 = getelementptr { %"compiler/source:Span", ptr }, ptr %t991, i32 0, i32 1
  %t993 = load ptr, ptr %t992
  store ptr %t993, ptr %l57, !tbaa !29
  br label %bb308
bb307:
  br label %bb310
bb308:
  %t995 = load ptr, ptr %l0, !tbaa !29
  %t996 = load ptr, ptr %l57, !tbaa !29
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2ematch(ptr %v0, ptr %v1, ptr %t995, ptr %t996)
  br label %bb309
bb309:
  br label %bb376
bb310:
  %t999 = load ptr, ptr %l1, !tbaa !29
  store ptr %t999, ptr %l498, !tbaa !29
  store i1 false, ptr %l499, !tbaa !21
  %t1000 = load ptr, ptr %l498, !tbaa !29
  %t1001 = icmp ne ptr %t1000, null
  br i1 %t1001, label %bb311, label %bb312
bb311:
  %t1003 = load ptr, ptr %l498, !tbaa !29
  %t1004 = load i64, ptr %t1003, !range !{i64 0, i64 30}
  %t1006 = icmp eq i64 %t1004, 24
  store i1 %t1006, ptr %l499, !tbaa !21
  br label %bb312
bb312:
  %t1007 = load i1, ptr %l499, !tbaa !21
  br i1 %t1007, label %bb313, label %bb314
bb313:
  %t1008 = load ptr, ptr %l1, !tbaa !29
  %t1010 = getelementptr { i64, [4 x i64] }, ptr %t1008, i32 0, i32 1
  %t1011 = getelementptr { %"compiler/source:Span", { i64, ptr } }, ptr %t1010, i32 0, i32 1
  %t1012 = load { i64, ptr }, ptr %t1011
  store { i64, ptr } %t1012, ptr %l58, !tbaa !27
  br label %bb315
bb314:
  br label %bb318
bb315:
  store %olang.scope zeroinitializer, ptr %s43
  %t1014 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2eput(ptr %v0, ptr %s43, ptr %t1014, { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d80, i32 0, i32 1) })
  br label %bb316
bb316:
  %t1016 = load ptr, ptr %l0, !tbaa !29
  %t1017 = load { i64, ptr }, ptr %l58, !tbaa !27
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2eexprs(ptr %v0, ptr %v1, ptr %t1016, { i64, ptr } %t1017)
  br label %bb317
bb317:
  call void @__olang_scope_close(ptr %s43)
  br label %bb376
bb318:
  %t1020 = load ptr, ptr %l1, !tbaa !29
  store ptr %t1020, ptr %l507, !tbaa !29
  store i1 false, ptr %l508, !tbaa !21
  %t1021 = load ptr, ptr %l507, !tbaa !29
  %t1022 = icmp ne ptr %t1021, null
  br i1 %t1022, label %bb319, label %bb320
bb319:
  %t1024 = load ptr, ptr %l507, !tbaa !29
  %t1025 = load i64, ptr %t1024, !range !{i64 0, i64 30}
  %t1027 = icmp eq i64 %t1025, 25
  store i1 %t1027, ptr %l508, !tbaa !21
  br label %bb320
bb320:
  %t1028 = load i1, ptr %l508, !tbaa !21
  br i1 %t1028, label %bb321, label %bb322
bb321:
  br label %bb323
bb322:
  br label %bb325
bb323:
  store %olang.scope zeroinitializer, ptr %s44
  %t1029 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2eput(ptr %v0, ptr %s44, ptr %t1029, { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d81, i32 0, i32 1) })
  br label %bb324
bb324:
  call void @__olang_scope_close(ptr %s44)
  br label %bb376
bb325:
  %t1031 = load ptr, ptr %l1, !tbaa !29
  store ptr %t1031, ptr %l512, !tbaa !29
  store i1 false, ptr %l513, !tbaa !21
  %t1032 = load ptr, ptr %l512, !tbaa !29
  %t1033 = icmp ne ptr %t1032, null
  br i1 %t1033, label %bb326, label %bb327
bb326:
  %t1035 = load ptr, ptr %l512, !tbaa !29
  %t1036 = load i64, ptr %t1035, !range !{i64 0, i64 30}
  %t1038 = icmp eq i64 %t1036, 27
  store i1 %t1038, ptr %l513, !tbaa !21
  br label %bb327
bb327:
  %t1039 = load i1, ptr %l513, !tbaa !21
  br i1 %t1039, label %bb328, label %bb329
bb328:
  %t1040 = load ptr, ptr %l1, !tbaa !29
  %t1042 = getelementptr { i64, [4 x i64] }, ptr %t1040, i32 0, i32 1
  %t1043 = getelementptr { %"compiler/source:Span", ptr }, ptr %t1042, i32 0, i32 1
  %t1044 = load ptr, ptr %t1043
  store ptr %t1044, ptr %l59, !tbaa !29
  br label %bb330
bb329:
  br label %bb337
bb330:
  store %olang.scope zeroinitializer, ptr %s45
  %t1046 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2eput(ptr %v0, ptr %s45, ptr %t1046, { i64, ptr } { i64 11, ptr getelementptr inbounds (<{ i64, [11 x i8] }>, ptr @.d82, i32 0, i32 1) })
  br label %bb331
bb331:
  %t1048 = load ptr, ptr %l59, !tbaa !29
  %t1050 = icmp eq ptr %t1048, null
  %t1052 = xor i1 %t1050, true
  br i1 %t1052, label %bb332, label %bb333
bb332:
  store %olang.scope zeroinitializer, ptr %s46
  %t1054 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2eput(ptr %v0, ptr %s46, ptr %t1054, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d83, i32 0, i32 1) })
  br label %bb334
bb333:
  br label %bb336
bb334:
  %t1056 = load ptr, ptr %l0, !tbaa !29
  %t1057 = load ptr, ptr %l59, !tbaa !29
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2eexpr(ptr %v0, ptr %v1, ptr %t1056, ptr %t1057)
  br label %bb335
bb335:
  call void @__olang_scope_close(ptr %s46)
  br label %bb336
bb336:
  call void @__olang_scope_close(ptr %s45)
  br label %bb376
bb337:
  %t1060 = load ptr, ptr %l1, !tbaa !29
  store ptr %t1060, ptr %l525, !tbaa !29
  store i1 false, ptr %l526, !tbaa !21
  %t1061 = load ptr, ptr %l525, !tbaa !29
  %t1062 = icmp ne ptr %t1061, null
  br i1 %t1062, label %bb338, label %bb339
bb338:
  %t1064 = load ptr, ptr %l525, !tbaa !29
  %t1065 = load i64, ptr %t1064, !range !{i64 0, i64 30}
  %t1067 = icmp eq i64 %t1065, 26
  store i1 %t1067, ptr %l526, !tbaa !21
  br label %bb339
bb339:
  %t1068 = load i1, ptr %l526, !tbaa !21
  br i1 %t1068, label %bb340, label %bb341
bb340:
  %t1069 = load ptr, ptr %l1, !tbaa !29
  %t1071 = getelementptr { i64, [4 x i64] }, ptr %t1069, i32 0, i32 1
  %t1072 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t1071, i32 0, i32 1
  %t1073 = load i32, ptr %t1072
  store i32 %t1073, ptr %l60, !tbaa !23
  %t1075 = load ptr, ptr %l1, !tbaa !29
  %t1077 = getelementptr { i64, [4 x i64] }, ptr %t1075, i32 0, i32 1
  %t1078 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t1077, i32 0, i32 2
  %t1079 = load ptr, ptr %t1078
  store ptr %t1079, ptr %l61, !tbaa !29
  br label %bb342
bb341:
  br label %bb346
bb342:
  store %olang.scope zeroinitializer, ptr %s47
  %t1081 = load ptr, ptr %l0, !tbaa !29
  %t1082 = load i32, ptr %l60, !tbaa !23
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2ename(ptr %v0, ptr %t1081, i32 %t1082)
  br label %bb343
bb343:
  %t1085 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2eput(ptr %v0, ptr %s47, ptr %t1085, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d84, i32 0, i32 1) })
  br label %bb344
bb344:
  %t1087 = load ptr, ptr %l0, !tbaa !29
  %t1088 = load ptr, ptr %l61, !tbaa !29
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2eexpr(ptr %v0, ptr %v1, ptr %t1087, ptr %t1088)
  br label %bb345
bb345:
  call void @__olang_scope_close(ptr %s47)
  br label %bb376
bb346:
  %t1091 = load ptr, ptr %l1, !tbaa !29
  store ptr %t1091, ptr %l538, !tbaa !29
  store i1 false, ptr %l539, !tbaa !21
  %t1092 = load ptr, ptr %l538, !tbaa !29
  %t1093 = icmp ne ptr %t1092, null
  br i1 %t1093, label %bb347, label %bb348
bb347:
  %t1095 = load ptr, ptr %l538, !tbaa !29
  %t1096 = load i64, ptr %t1095, !range !{i64 0, i64 30}
  %t1098 = icmp eq i64 %t1096, 28
  store i1 %t1098, ptr %l539, !tbaa !21
  br label %bb348
bb348:
  %t1099 = load i1, ptr %l539, !tbaa !21
  br i1 %t1099, label %bb349, label %bb350
bb349:
  %t1100 = load ptr, ptr %l1, !tbaa !29
  %t1102 = getelementptr { i64, [4 x i64] }, ptr %t1100, i32 0, i32 1
  %t1103 = getelementptr { %"compiler/source:Span", ptr }, ptr %t1102, i32 0, i32 1
  %t1104 = load ptr, ptr %t1103
  store ptr %t1104, ptr %l62, !tbaa !29
  br label %bb351
bb350:
  br label %bb358
bb351:
  store %olang.scope zeroinitializer, ptr %s48
  %t1106 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2eput(ptr %v0, ptr %s48, ptr %t1106, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d85, i32 0, i32 1) })
  br label %bb352
bb352:
  %t1108 = load ptr, ptr %l62, !tbaa !29
  %t1109 = load ptr, ptr %l0, !tbaa !29
  %t1111 = getelementptr %"compiler/unparse:writer", ptr %t1109, i32 0, i32 0
  %t1112 = load ptr, ptr %t1111, !tbaa !29
  %t1115 = call i1 @compiler_2funparse_2ebareSpread(ptr %v1, ptr %v0, ptr %t1108, ptr %t1112)
  store i1 %t1115, ptr %l548
  br label %bb353
bb353:
  %t1116 = load i1, ptr %l548, !tbaa !21
  %t1117 = xor i1 %t1116, true
  br i1 %t1117, label %bb354, label %bb355
bb354:
  %t1119 = load ptr, ptr %l0, !tbaa !29
  %t1120 = load ptr, ptr %l62, !tbaa !29
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2eexpr(ptr %v0, ptr %v1, ptr %t1119, ptr %t1120)
  br label %bb356
bb355:
  br label %bb357
bb356:
  br label %bb357
bb357:
  call void @__olang_scope_close(ptr %s48)
  br label %bb376
bb358:
  %t1123 = load ptr, ptr %l1, !tbaa !29
  store ptr %t1123, ptr %l552, !tbaa !29
  store i1 false, ptr %l553, !tbaa !21
  %t1124 = load ptr, ptr %l552, !tbaa !29
  %t1125 = icmp ne ptr %t1124, null
  br i1 %t1125, label %bb359, label %bb360
bb359:
  %t1127 = load ptr, ptr %l552, !tbaa !29
  %t1128 = load i64, ptr %t1127, !range !{i64 0, i64 30}
  %t1130 = icmp eq i64 %t1128, 29
  store i1 %t1130, ptr %l553, !tbaa !21
  br label %bb360
bb360:
  %t1131 = load i1, ptr %l553, !tbaa !21
  br i1 %t1131, label %bb361, label %bb362
bb361:
  %t1132 = load ptr, ptr %l1, !tbaa !29
  %t1134 = getelementptr { i64, [4 x i64] }, ptr %t1132, i32 0, i32 1
  %t1135 = getelementptr { %"compiler/source:Span", { i64, ptr } }, ptr %t1134, i32 0, i32 1
  %t1136 = load { i64, ptr }, ptr %t1135
  store { i64, ptr } %t1136, ptr %l63, !tbaa !27
  br label %bb363
bb362:
  br label %bb375
bb363:
  %t1138 = load { i64, ptr }, ptr %l63, !tbaa !27
  store { i64, ptr } %t1138, ptr %l64, !tbaa !27
  store i64 0, ptr %l65, !tbaa !24
  %t1140 = load { i64, ptr }, ptr %l64, !tbaa !27
  %t1142 = extractvalue { i64, ptr } %t1140, 0
  store i64 %t1142, ptr %l66, !tbaa !24
  br label %bb364
bb364:
  %t1144 = load i64, ptr %l65, !tbaa !24
  %t1145 = load i64, ptr %l66, !tbaa !24
  %t1148 = icmp slt i64 %t1144, %t1145
  %t1150 = xor i1 %t1148, true
  br i1 %t1150, label %bb365, label %bb366
bb365:
  br label %bb374
bb366:
  br label %bb367
bb367:
  %t1152 = load i64, ptr %l65, !tbaa !24
  %t1154 = load { i64, ptr }, ptr %l64, !tbaa !27
  store { i64, ptr } %t1154, ptr %l566, !tbaa !27
  %t1155 = load i64, ptr %l65, !tbaa !24
  %t1157 = getelementptr { i64, ptr }, ptr %l566, i32 0, i32 1
  %t1158 = load ptr, ptr %t1157, !tbaa !27
  %t1159 = getelementptr ptr, ptr %t1158, i64 %t1155
  %t1160 = load ptr, ptr %t1159, !tbaa !39
  store ptr %t1160, ptr %l68, !tbaa !29
  %t1164 = icmp sgt i64 %t1152, 0
  br i1 %t1164, label %bb368, label %bb369
bb368:
  store %olang.scope zeroinitializer, ptr %s53
  %t1166 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2eput(ptr %v0, ptr %s53, ptr %t1166, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d86, i32 0, i32 1) })
  br label %bb370
bb369:
  br label %bb371
bb370:
  call void @__olang_scope_close(ptr %s53)
  br label %bb371
bb371:
  %t1168 = load ptr, ptr %l0, !tbaa !29
  %t1169 = load ptr, ptr %l68, !tbaa !29
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2eexpr(ptr %v0, ptr %v1, ptr %t1168, ptr %t1169)
  br label %bb372
bb372:
  br label %bb373
bb373:
  %t1172 = load i64, ptr %l65, !tbaa !24
  %t1174 = add i64 %t1172, 1
  store i64 %t1174, ptr %l65, !tbaa !24
  br label %bb364
bb374:
  br label %bb376
bb375:
  call void @__olang_check_failed(ptr @olang_loc_af8532b2afdd02b1_ed9973e7a2ad66a5)
  unreachable
bb376:
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2funparse_2ecompiler_2funparse_3awriter_2eexprs(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca { i64, ptr }
  %l3 = alloca i64
  %l4 = alloca i64
  %l6 = alloca ptr
  %l15 = alloca { i64, ptr }
  %s3 = alloca %olang.scope
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
  br label %bb11
bb3:
  br label %bb4
bb4:
  %t15 = load i64, ptr %l3, !tbaa !24
  %t17 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t17, ptr %l15, !tbaa !27
  %t18 = load i64, ptr %l3, !tbaa !24
  %t20 = getelementptr { i64, ptr }, ptr %l15, i32 0, i32 1
  %t21 = load ptr, ptr %t20, !tbaa !27
  %t22 = getelementptr ptr, ptr %t21, i64 %t18
  %t23 = load ptr, ptr %t22, !tbaa !39
  store ptr %t23, ptr %l6, !tbaa !29
  %t27 = icmp sgt i64 %t15, 0
  br i1 %t27, label %bb5, label %bb6
bb5:
  store %olang.scope zeroinitializer, ptr %s3
  %t29 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2eput(ptr %v0, ptr %s3, ptr %t29, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d87, i32 0, i32 1) })
  br label %bb7
bb6:
  br label %bb8
bb7:
  call void @__olang_scope_close(ptr %s3)
  br label %bb8
bb8:
  %t31 = load ptr, ptr %l0, !tbaa !29
  %t32 = load ptr, ptr %l6, !tbaa !29
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2eexpr(ptr %v0, ptr %v1, ptr %t31, ptr %t32)
  br label %bb9
bb9:
  br label %bb10
bb10:
  %t35 = load i64, ptr %l3, !tbaa !24
  %t37 = add i64 %t35, 1
  store i64 %t37, ptr %l3, !tbaa !24
  br label %bb1
bb11:
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2funparse_2ecompiler_2funparse_3awriter_2eexternBlock(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1, { i64, ptr } %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/source:Span"
  %l3 = alloca { i64, ptr }
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca ptr
  %l7 = alloca ptr
  %l8 = alloca ptr
  %l17 = alloca ptr
  %l27 = alloca { i64, ptr }
  %l31 = alloca ptr
  %l32 = alloca i1
  %l39 = alloca ptr
  %l40 = alloca i1
  %l51 = alloca ptr
  %s0 = alloca %olang.scope
  %s1 = alloca %olang.scope
  %s5 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store %"compiler/source:Span" %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2eput(ptr %v0, ptr %s0, ptr %t1, { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d88, i32 0, i32 1) })
  br label %bb1
bb1:
  %t3 = getelementptr %"compiler/source:Span", ptr %l1, i32 0, i32 1
  %t4 = load i32, ptr %t3, !tbaa !23
  %t6 = icmp sgt i32 %t4, 0
  br i1 %t6, label %bb2, label %bb3
bb2:
  store %olang.scope zeroinitializer, ptr %s1
  %t8 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2eput(ptr %v0, ptr %s1, ptr %t8, { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d89, i32 0, i32 1) })
  br label %bb4
bb3:
  br label %bb7
bb4:
  %t10 = load ptr, ptr %l0, !tbaa !29
  %t11 = load %"compiler/source:Span", ptr %l1
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2espan(ptr %v0, ptr %t10, %"compiler/source:Span" %t11)
  br label %bb5
bb5:
  %t14 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2eput(ptr %v0, ptr %s1, ptr %t14, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d90, i32 0, i32 1) })
  br label %bb6
bb6:
  call void @__olang_scope_close(ptr %s1)
  br label %bb7
bb7:
  %t16 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2eput(ptr %v0, ptr %s0, ptr %t16, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d91, i32 0, i32 1) })
  br label %bb8
bb8:
  %t18 = load ptr, ptr %l0, !tbaa !29
  store ptr %t18, ptr %l17, !tbaa !29
  %t19 = load ptr, ptr %l17, !tbaa !29
  %t20 = getelementptr %"compiler/unparse:writer", ptr %t19, i32 0, i32 4
  %t21 = load i64, ptr %t20, !tbaa !24
  %t23 = add i64 %t21, 1
  %t25 = load ptr, ptr %l17, !tbaa !29
  %t26 = getelementptr %"compiler/unparse:writer", ptr %t25, i32 0, i32 4
  store i64 %t23, ptr %t26, !tbaa !24
  store { i64, ptr } %a2, ptr %l3, !tbaa !27
  store i64 0, ptr %l4, !tbaa !24
  %t29 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t31 = extractvalue { i64, ptr } %t29, 0
  store i64 %t31, ptr %l5, !tbaa !24
  br label %bb9
bb9:
  %t33 = load i64, ptr %l4, !tbaa !24
  %t34 = load i64, ptr %l5, !tbaa !24
  %t37 = icmp slt i64 %t33, %t34
  %t39 = xor i1 %t37, true
  br i1 %t39, label %bb10, label %bb11
bb10:
  br label %bb35
bb11:
  br label %bb12
bb12:
  %t41 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t41, ptr %l27, !tbaa !27
  %t42 = load i64, ptr %l4, !tbaa !24
  %t44 = getelementptr { i64, ptr }, ptr %l27, i32 0, i32 1
  %t45 = load ptr, ptr %t44, !tbaa !27
  %t46 = getelementptr ptr, ptr %t45, i64 %t42
  %t47 = load ptr, ptr %t46, !tbaa !39
  store ptr %t47, ptr %l6, !tbaa !29
  %t49 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2enl(ptr %v0, ptr %t49)
  br label %bb13
bb13:
  %t51 = load ptr, ptr %l6, !tbaa !29
  store ptr %t51, ptr %l31, !tbaa !29
  store i1 false, ptr %l32, !tbaa !21
  %t52 = load ptr, ptr %l31, !tbaa !29
  %t53 = icmp ne ptr %t52, null
  br i1 %t53, label %bb14, label %bb15
bb14:
  %t55 = load ptr, ptr %l31, !tbaa !29
  %t56 = load i64, ptr %t55, !range !{i64 0, i64 11}
  %t58 = icmp eq i64 %t56, 1
  store i1 %t58, ptr %l32, !tbaa !21
  br label %bb15
bb15:
  %t59 = load i1, ptr %l32, !tbaa !21
  br i1 %t59, label %bb16, label %bb17
bb16:
  %t60 = load ptr, ptr %l6, !tbaa !29
  %t62 = getelementptr { i64, [8 x i64] }, ptr %t60, i32 0, i32 1
  %t63 = getelementptr { ptr }, ptr %t62, i32 0, i32 0
  %t64 = load ptr, ptr %t63
  store ptr %t64, ptr %l7, !tbaa !29
  br label %bb18
bb17:
  br label %bb20
bb18:
  %t66 = load ptr, ptr %l0, !tbaa !29
  %t67 = load ptr, ptr %l7, !tbaa !29
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2eexternFn(ptr %v0, ptr %v1, ptr %t66, ptr %t67)
  br label %bb19
bb19:
  br label %bb33
bb20:
  %t70 = load ptr, ptr %l6, !tbaa !29
  store ptr %t70, ptr %l39, !tbaa !29
  store i1 false, ptr %l40, !tbaa !21
  %t71 = load ptr, ptr %l39, !tbaa !29
  %t72 = icmp ne ptr %t71, null
  br i1 %t72, label %bb21, label %bb22
bb21:
  %t74 = load ptr, ptr %l39, !tbaa !29
  %t75 = load i64, ptr %t74, !range !{i64 0, i64 11}
  %t77 = icmp eq i64 %t75, 2
  store i1 %t77, ptr %l40, !tbaa !21
  br label %bb22
bb22:
  %t78 = load i1, ptr %l40, !tbaa !21
  br i1 %t78, label %bb23, label %bb24
bb23:
  %t79 = load ptr, ptr %l6, !tbaa !29
  %t81 = getelementptr { i64, [8 x i64] }, ptr %t79, i32 0, i32 1
  %t82 = getelementptr { %"compiler/source:Span", ptr }, ptr %t81, i32 0, i32 1
  %t83 = load ptr, ptr %t82
  store ptr %t83, ptr %l8, !tbaa !29
  br label %bb25
bb24:
  br label %bb28
bb25:
  store %olang.scope zeroinitializer, ptr %s5
  %t85 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2eput(ptr %v0, ptr %s5, ptr %t85, { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d92, i32 0, i32 1) })
  br label %bb26
bb26:
  %t87 = load ptr, ptr %l0, !tbaa !29
  %t88 = load ptr, ptr %l8, !tbaa !29
  %t90 = getelementptr %"compiler/ast:TypeDecl", ptr %t88, i32 0, i32 0
  %t91 = load i32, ptr %t90, !tbaa !23
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2ename(ptr %v0, ptr %t87, i32 %t91)
  br label %bb27
bb27:
  call void @__olang_scope_close(ptr %s5)
  br label %bb33
bb28:
  br i1 true, label %bb29, label %bb30
bb29:
  br label %bb31
bb30:
  br label %bb32
bb31:
  br label %bb33
bb32:
  call void @__olang_check_failed(ptr @olang_loc_c8c27977e1720628_5d646bf05a6faac)
  unreachable
bb33:
  br label %bb34
bb34:
  %t94 = load i64, ptr %l4, !tbaa !24
  %t96 = add i64 %t94, 1
  store i64 %t96, ptr %l4, !tbaa !24
  br label %bb9
bb35:
  %t98 = load ptr, ptr %l0, !tbaa !29
  store ptr %t98, ptr %l51, !tbaa !29
  %t99 = load ptr, ptr %l51, !tbaa !29
  %t100 = getelementptr %"compiler/unparse:writer", ptr %t99, i32 0, i32 4
  %t101 = load i64, ptr %t100, !tbaa !24
  %t103 = sub i64 %t101, 1
  %t105 = load ptr, ptr %l51, !tbaa !29
  %t106 = getelementptr %"compiler/unparse:writer", ptr %t105, i32 0, i32 4
  store i64 %t103, ptr %t106, !tbaa !24
  %t107 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2enl(ptr %v0, ptr %t107)
  br label %bb36
bb36:
  %t109 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2eput(ptr %v0, ptr %s0, ptr %t109, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d93, i32 0, i32 1) })
  br label %bb37
bb37:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2funparse_2ecompiler_2funparse_3awriter_2eexternFn(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %s0 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2eput(ptr %v0, ptr %s0, ptr %t1, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d94, i32 0, i32 1) })
  br label %bb1
bb1:
  %t3 = load ptr, ptr %l0, !tbaa !29
  %t4 = load ptr, ptr %l1, !tbaa !29
  %t6 = getelementptr %"compiler/ast:Func", ptr %t4, i32 0, i32 2
  %t7 = load i32, ptr %t6, !tbaa !23
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2ename(ptr %v0, ptr %t3, i32 %t7)
  br label %bb2
bb2:
  %t10 = load ptr, ptr %l0, !tbaa !29
  %t11 = load ptr, ptr %l1, !tbaa !29
  %t13 = getelementptr %"compiler/ast:Func", ptr %t11, i32 0, i32 3
  %t14 = load ptr, ptr %t13, !tbaa !29
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2esig(ptr %v0, ptr %v1, ptr %t10, ptr %t14)
  br label %bb3
bb3:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2funparse_2ecompiler_2funparse_3awriter_2efunc(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l14 = alloca ptr
  %l22 = alloca i1
  %l23 = alloca ptr
  %s0 = alloca %olang.scope
  %s1 = alloca %olang.scope
  %s2 = alloca %olang.scope
  %s3 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load ptr, ptr %l1, !tbaa !29
  %t4 = getelementptr %"compiler/ast:Func", ptr %t2, i32 0, i32 8
  %t5 = load { i64, ptr }, ptr %t4, !tbaa !27
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2eattrs(ptr %v0, ptr %v1, ptr %t1, { i64, ptr } %t5)
  br label %bb1
bb1:
  %t8 = load ptr, ptr %l1, !tbaa !29
  %t10 = getelementptr %"compiler/ast:Func", ptr %t8, i32 0, i32 7
  %t11 = load i1, ptr %t10, !tbaa !21
  br i1 %t11, label %bb2, label %bb3
bb2:
  store %olang.scope zeroinitializer, ptr %s1
  %t13 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2eput(ptr %v0, ptr %s1, ptr %t13, { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d95, i32 0, i32 1) })
  br label %bb4
bb3:
  br label %bb5
bb4:
  call void @__olang_scope_close(ptr %s1)
  br label %bb5
bb5:
  %t15 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2eput(ptr %v0, ptr %s0, ptr %t15, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d96, i32 0, i32 1) })
  br label %bb6
bb6:
  %t17 = load ptr, ptr %l1, !tbaa !29
  %t19 = getelementptr %"compiler/ast:Func", ptr %t17, i32 0, i32 1
  %t20 = load ptr, ptr %t19, !tbaa !29
  %t22 = icmp eq ptr %t20, null
  %t24 = xor i1 %t22, true
  br i1 %t24, label %bb7, label %bb8
bb7:
  store %olang.scope zeroinitializer, ptr %s2
  %t26 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2eput(ptr %v0, ptr %s2, ptr %t26, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d97, i32 0, i32 1) })
  br label %bb9
bb8:
  br label %bb15
bb9:
  %t28 = load ptr, ptr %l0, !tbaa !29
  store ptr %t28, ptr %l14, !tbaa !29
  %t29 = load ptr, ptr %l1, !tbaa !29
  %t31 = getelementptr %"compiler/ast:Func", ptr %t29, i32 0, i32 1
  %t32 = load ptr, ptr %t31, !tbaa !29
  %t34 = icmp eq ptr %t32, null
  br i1 %t34, label %bb10, label %bb11
bb10:
  call void @__olang_check_failed(ptr @olang_loc_240300a98391f326_30555605a48ff2da)
  unreachable
bb11:
  br label %bb12
bb12:
  %t36 = load ptr, ptr %l1, !tbaa !29
  %t38 = getelementptr %"compiler/ast:Func", ptr %t36, i32 0, i32 1
  %t39 = load ptr, ptr %t38, !tbaa !29
  %t40 = load ptr, ptr %l14, !tbaa !29
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2eparam(ptr %v0, ptr %v1, ptr %t40, ptr %t39)
  br label %bb13
bb13:
  %t42 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2eput(ptr %v0, ptr %s2, ptr %t42, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d98, i32 0, i32 1) })
  br label %bb14
bb14:
  call void @__olang_scope_close(ptr %s2)
  br label %bb15
bb15:
  %t44 = load ptr, ptr %l1, !tbaa !29
  %t46 = call i1 @compiler_2fast_2ecompiler_2fast_3aFunc_2eIsBuilder(ptr %v1, ptr %t44)
  store i1 %t46, ptr %l22
  br label %bb16
bb16:
  %t47 = load i1, ptr %l22, !tbaa !21
  br i1 %t47, label %bb17, label %bb18
bb17:
  store %olang.scope zeroinitializer, ptr %s3
  %t48 = load ptr, ptr %l0, !tbaa !29
  store ptr %t48, ptr %l23, !tbaa !29
  %t49 = load ptr, ptr %l1, !tbaa !29
  %t51 = getelementptr %"compiler/ast:Func", ptr %t49, i32 0, i32 9
  %t52 = load ptr, ptr %t51, !tbaa !29
  %t54 = icmp eq ptr %t52, null
  br i1 %t54, label %bb19, label %bb20
bb18:
  %t56 = load ptr, ptr %l0, !tbaa !29
  %t57 = load ptr, ptr %l1, !tbaa !29
  %t59 = getelementptr %"compiler/ast:Func", ptr %t57, i32 0, i32 2
  %t60 = load i32, ptr %t59, !tbaa !23
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2ename(ptr %v0, ptr %t56, i32 %t60)
  br label %bb25
bb19:
  call void @__olang_check_failed(ptr @olang_loc_62b5cb0662a9bd0d_8638c84775e31461)
  unreachable
bb20:
  br label %bb21
bb21:
  %t63 = load ptr, ptr %l1, !tbaa !29
  %t65 = getelementptr %"compiler/ast:Func", ptr %t63, i32 0, i32 9
  %t66 = load ptr, ptr %t65, !tbaa !29
  %t67 = load ptr, ptr %l23, !tbaa !29
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2ety(ptr %v0, ptr %v1, ptr %t67, ptr %t66)
  br label %bb22
bb22:
  %t69 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2eput(ptr %v0, ptr %s3, ptr %t69, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d99, i32 0, i32 1) })
  br label %bb23
bb23:
  %t71 = load ptr, ptr %l0, !tbaa !29
  %t72 = load ptr, ptr %l1, !tbaa !29
  %t74 = getelementptr %"compiler/ast:Func", ptr %t72, i32 0, i32 10
  %t75 = load i32, ptr %t74, !tbaa !23
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2ename(ptr %v0, ptr %t71, i32 %t75)
  br label %bb24
bb24:
  call void @__olang_scope_close(ptr %s3)
  br label %bb26
bb25:
  br label %bb26
bb26:
  %t78 = load ptr, ptr %l0, !tbaa !29
  %t79 = load ptr, ptr %l1, !tbaa !29
  %t81 = getelementptr %"compiler/ast:Func", ptr %t79, i32 0, i32 5
  %t82 = load { i64, ptr }, ptr %t81, !tbaa !27
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2etypeParams(ptr %v0, ptr %v1, ptr %t78, { i64, ptr } %t82)
  br label %bb27
bb27:
  %t85 = load ptr, ptr %l0, !tbaa !29
  %t86 = load ptr, ptr %l1, !tbaa !29
  %t88 = getelementptr %"compiler/ast:Func", ptr %t86, i32 0, i32 3
  %t89 = load ptr, ptr %t88, !tbaa !29
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2esig(ptr %v0, ptr %v1, ptr %t85, ptr %t89)
  br label %bb28
bb28:
  %t92 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2eput(ptr %v0, ptr %s0, ptr %t92, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d100, i32 0, i32 1) })
  br label %bb29
bb29:
  %t94 = load ptr, ptr %l0, !tbaa !29
  %t95 = load ptr, ptr %l1, !tbaa !29
  %t97 = getelementptr %"compiler/ast:Func", ptr %t95, i32 0, i32 4
  %t98 = load { i64, ptr }, ptr %t97, !tbaa !27
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2eblock(ptr %v0, ptr %v1, ptr %t94, { i64, ptr } %t98)
  br label %bb30
bb30:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2funparse_2ecompiler_2funparse_3awriter_2efuncType(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, { i64, ptr } %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l3 = alloca i1
  %l4 = alloca i1
  %l7 = alloca i1
  %l10 = alloca i1
  %l15 = alloca i1
  %l21 = alloca ptr
  %l23 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %s1 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/unparse:writer", ptr %t1, i32 0, i32 7
  %t4 = load i1, ptr %t3, !tbaa !21
  br i1 %t4, label %bb1, label %bb2
bb1:
  store i1 true, ptr %l7, !tbaa !21
  br label %bb9
bb2:
  %t6 = load ptr, ptr %l0, !tbaa !29
  %t8 = getelementptr %"compiler/unparse:writer", ptr %t6, i32 0, i32 6
  %t9 = load i1, ptr %t8, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  %t11 = load ptr, ptr %l1, !tbaa !29
  %t13 = getelementptr %"compiler/ast:Sig", ptr %t11, i32 0, i32 1
  %t14 = load { i64, ptr }, ptr %t13, !tbaa !27
  %t16 = extractvalue { i64, ptr } %t14, 0
  %t18 = icmp sgt i64 %t16, 1
  br i1 %t18, label %bb5, label %bb6
bb4:
  store i1 false, ptr %l10, !tbaa !21
  br label %bb8
bb5:
  store i1 true, ptr %l15, !tbaa !21
  br label %bb7
bb6:
  %t20 = load ptr, ptr %l1, !tbaa !29
  %t22 = getelementptr %"compiler/ast:Sig", ptr %t20, i32 0, i32 3
  %t23 = load { i64, ptr }, ptr %t22, !tbaa !27
  %t25 = extractvalue { i64, ptr } %t23, 0
  %t27 = icmp sgt i64 %t25, 1
  store i1 %t27, ptr %l15, !tbaa !21
  br label %bb7
bb7:
  %t29 = load i1, ptr %l15, !tbaa !21
  store i1 %t29, ptr %l10, !tbaa !21
  br label %bb8
bb8:
  %t30 = load i1, ptr %l10, !tbaa !21
  store i1 %t30, ptr %l7, !tbaa !21
  br label %bb9
bb9:
  %t31 = load i1, ptr %l7, !tbaa !21
  store i1 %t31, ptr %l3, !tbaa !21
  %t32 = load ptr, ptr %l0, !tbaa !29
  %t34 = getelementptr %"compiler/unparse:writer", ptr %t32, i32 0, i32 7
  store i1 false, ptr %t34, !tbaa !21
  %t35 = load ptr, ptr %l0, !tbaa !29
  store ptr %t35, ptr %l21, !tbaa !29
  %t36 = load i1, ptr %l3, !tbaa !21
  br i1 %t36, label %bb10, label %bb11
bb10:
  store { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d101, i32 0, i32 1) }, ptr %l23, !tbaa !27
  br label %bb12
bb11:
  store { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d102, i32 0, i32 1) }, ptr %l23, !tbaa !27
  br label %bb12
bb12:
  %t38 = load ptr, ptr %l21, !tbaa !29
  %t39 = load { i64, ptr }, ptr %l23, !tbaa !27
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2eput(ptr %v0, ptr %s0, ptr %t38, { i64, ptr } %t39)
  br label %bb13
bb13:
  %t40 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2eput(ptr %v0, ptr %v2, ptr %t40, { i64, ptr } %a2)
  br label %bb14
bb14:
  %t44 = load ptr, ptr %l0, !tbaa !29
  %t46 = getelementptr %"compiler/unparse:writer", ptr %t44, i32 0, i32 6
  %t47 = load i1, ptr %t46, !tbaa !21
  store i1 %t47, ptr %l4, !tbaa !21
  %t49 = load ptr, ptr %l0, !tbaa !29
  %t51 = getelementptr %"compiler/unparse:writer", ptr %t49, i32 0, i32 6
  store i1 false, ptr %t51, !tbaa !21
  %t52 = load ptr, ptr %l0, !tbaa !29
  %t53 = load ptr, ptr %l1, !tbaa !29
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2esig(ptr %v0, ptr %v1, ptr %t52, ptr %t53)
  br label %bb15
bb15:
  %t56 = load ptr, ptr %l0, !tbaa !29
  %t57 = load i1, ptr %l4, !tbaa !21
  %t60 = getelementptr %"compiler/unparse:writer", ptr %t56, i32 0, i32 6
  store i1 %t57, ptr %t60, !tbaa !21
  %t61 = load i1, ptr %l3, !tbaa !21
  br i1 %t61, label %bb16, label %bb17
bb16:
  store %olang.scope zeroinitializer, ptr %s1
  %t63 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2eput(ptr %v0, ptr %s1, ptr %t63, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d103, i32 0, i32 1) })
  br label %bb18
bb17:
  br label %bb19
bb18:
  call void @__olang_scope_close(ptr %s1)
  br label %bb19
bb19:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2funparse_2ecompiler_2funparse_3awriter_2eifStmt(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca ptr
  %l7 = alloca ptr
  %l14 = alloca ptr
  %l20 = alloca ptr
  %l33 = alloca ptr
  %l34 = alloca i1
  %l42 = alloca ptr
  %l49 = alloca ptr
  %s0 = alloca %olang.scope
  %s2 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l1, !tbaa !29
  %t3 = getelementptr %"compiler/ast:If", ptr %t1, i32 0, i32 0
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t6 = icmp eq ptr %t4, null
  br i1 %t6, label %bb1, label %bb2
bb1:
  %t8 = load ptr, ptr %l0, !tbaa !29
  store ptr %t8, ptr %l7, !tbaa !29
  %t9 = load ptr, ptr %l1, !tbaa !29
  %t11 = getelementptr %"compiler/ast:If", ptr %t9, i32 0, i32 1
  %t12 = load ptr, ptr %t11, !tbaa !29
  %t14 = icmp eq ptr %t12, null
  br i1 %t14, label %bb3, label %bb4
bb2:
  br label %bb7
bb3:
  call void @__olang_check_failed(ptr @olang_loc_450b6e4c0e54f911_1dcad8b8a27ff01d)
  unreachable
bb4:
  br label %bb5
bb5:
  %t16 = load ptr, ptr %l1, !tbaa !29
  %t18 = getelementptr %"compiler/ast:If", ptr %t16, i32 0, i32 1
  %t19 = load ptr, ptr %t18, !tbaa !29
  %t20 = load ptr, ptr %l7, !tbaa !29
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2ebranch(ptr %v0, ptr %v1, ptr %t20, ptr %t19)
  br label %bb6
bb6:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb7:
  %t22 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2eput(ptr %v0, ptr %s0, ptr %t22, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d104, i32 0, i32 1) })
  br label %bb8
bb8:
  %t24 = load ptr, ptr %l0, !tbaa !29
  store ptr %t24, ptr %l14, !tbaa !29
  %t25 = load ptr, ptr %l1, !tbaa !29
  %t27 = getelementptr %"compiler/ast:If", ptr %t25, i32 0, i32 0
  %t28 = load ptr, ptr %t27, !tbaa !29
  %t30 = icmp eq ptr %t28, null
  br i1 %t30, label %bb9, label %bb10
bb9:
  call void @__olang_check_failed(ptr @olang_loc_375b6e3c7dc4e00a_588d095da59240b6)
  unreachable
bb10:
  br label %bb11
bb11:
  %t32 = load ptr, ptr %l1, !tbaa !29
  %t34 = getelementptr %"compiler/ast:If", ptr %t32, i32 0, i32 0
  %t35 = load ptr, ptr %t34, !tbaa !29
  %t36 = load ptr, ptr %l14, !tbaa !29
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2eexpr(ptr %v0, ptr %v1, ptr %t36, ptr %t35)
  br label %bb12
bb12:
  %t38 = load ptr, ptr %l0, !tbaa !29
  store ptr %t38, ptr %l20, !tbaa !29
  %t39 = load ptr, ptr %l1, !tbaa !29
  %t41 = getelementptr %"compiler/ast:If", ptr %t39, i32 0, i32 1
  %t42 = load ptr, ptr %t41, !tbaa !29
  %t44 = icmp eq ptr %t42, null
  br i1 %t44, label %bb13, label %bb14
bb13:
  call void @__olang_check_failed(ptr @olang_loc_e1b6c554c381b10b_f727e5cc4e37ef67)
  unreachable
bb14:
  br label %bb15
bb15:
  %t46 = load ptr, ptr %l1, !tbaa !29
  %t48 = getelementptr %"compiler/ast:If", ptr %t46, i32 0, i32 1
  %t49 = load ptr, ptr %t48, !tbaa !29
  %t50 = load ptr, ptr %l20, !tbaa !29
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2ebranch(ptr %v0, ptr %v1, ptr %t50, ptr %t49)
  br label %bb16
bb16:
  %t52 = load ptr, ptr %l1, !tbaa !29
  %t54 = getelementptr %"compiler/ast:If", ptr %t52, i32 0, i32 2
  %t55 = load ptr, ptr %t54, !tbaa !29
  %t57 = icmp eq ptr %t55, null
  %t59 = xor i1 %t57, true
  br i1 %t59, label %bb17, label %bb18
bb17:
  store %olang.scope zeroinitializer, ptr %s2
  %t61 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2eput(ptr %v0, ptr %s2, ptr %t61, { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d105, i32 0, i32 1) })
  br label %bb19
bb18:
  br label %bb43
bb19:
  %t63 = load ptr, ptr %l1, !tbaa !29
  %t65 = getelementptr %"compiler/ast:If", ptr %t63, i32 0, i32 2
  %t66 = load ptr, ptr %t65, !tbaa !29
  store ptr %t66, ptr %l2, !tbaa !29
  %t68 = load ptr, ptr %l2, !tbaa !29
  store ptr %t68, ptr %l33, !tbaa !29
  store i1 false, ptr %l34, !tbaa !21
  %t69 = load ptr, ptr %l33, !tbaa !29
  %t70 = icmp ne ptr %t69, null
  br i1 %t70, label %bb20, label %bb21
bb20:
  %t72 = load ptr, ptr %l33, !tbaa !29
  %t73 = load i64, ptr %t72, !range !{i64 0, i64 22}
  %t75 = icmp eq i64 %t73, 5
  store i1 %t75, ptr %l34, !tbaa !21
  br label %bb21
bb21:
  %t76 = load i1, ptr %l34, !tbaa !21
  br i1 %t76, label %bb22, label %bb23
bb22:
  %t77 = load ptr, ptr %l2, !tbaa !29
  %t79 = getelementptr { i64, [4 x i64] }, ptr %t77, i32 0, i32 1
  %t80 = getelementptr { %"compiler/source:Span", ptr }, ptr %t79, i32 0, i32 1
  %t81 = load ptr, ptr %t80
  store ptr %t81, ptr %l3, !tbaa !29
  br label %bb24
bb23:
  br label %bb32
bb24:
  %t83 = load ptr, ptr %l3, !tbaa !29
  %t85 = getelementptr %"compiler/ast:If", ptr %t83, i32 0, i32 0
  %t86 = load ptr, ptr %t85, !tbaa !29
  %t88 = icmp eq ptr %t86, null
  br i1 %t88, label %bb25, label %bb26
bb25:
  %t90 = load ptr, ptr %l0, !tbaa !29
  store ptr %t90, ptr %l42, !tbaa !29
  %t91 = load ptr, ptr %l3, !tbaa !29
  %t93 = getelementptr %"compiler/ast:If", ptr %t91, i32 0, i32 1
  %t94 = load ptr, ptr %t93, !tbaa !29
  %t96 = icmp eq ptr %t94, null
  br i1 %t96, label %bb27, label %bb28
bb26:
  br label %bb31
bb27:
  call void @__olang_check_failed(ptr @olang_loc_ba8e182b2fbe7a1c_99d493faf8d7cb48)
  unreachable
bb28:
  br label %bb29
bb29:
  %t98 = load ptr, ptr %l3, !tbaa !29
  %t100 = getelementptr %"compiler/ast:If", ptr %t98, i32 0, i32 1
  %t101 = load ptr, ptr %t100, !tbaa !29
  %t102 = load ptr, ptr %l42, !tbaa !29
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2ebranch(ptr %v0, ptr %v1, ptr %t102, ptr %t101)
  br label %bb30
bb30:
  call void @__olang_scope_close(ptr %s2)
  call void @__olang_scope_close(ptr %s0)
  br label %ret
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
  call void @__olang_check_failed(ptr @olang_loc_a676b6f90e9ab794_adfa384105d75b88)
  unreachable
bb37:
  %t104 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2eput(ptr %v0, ptr %s2, ptr %t104, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d106, i32 0, i32 1) })
  br label %bb38
bb38:
  %t106 = load ptr, ptr %l0, !tbaa !29
  store ptr %t106, ptr %l49, !tbaa !29
  %t107 = load ptr, ptr %l1, !tbaa !29
  %t109 = getelementptr %"compiler/ast:If", ptr %t107, i32 0, i32 2
  %t110 = load ptr, ptr %t109, !tbaa !29
  %t112 = icmp eq ptr %t110, null
  br i1 %t112, label %bb39, label %bb40
bb39:
  call void @__olang_check_failed(ptr @olang_loc_8218e8270bec8206_ca247080b262927a)
  unreachable
bb40:
  br label %bb41
bb41:
  %t114 = load ptr, ptr %l1, !tbaa !29
  %t116 = getelementptr %"compiler/ast:If", ptr %t114, i32 0, i32 2
  %t117 = load ptr, ptr %t116, !tbaa !29
  %t118 = load ptr, ptr %l49, !tbaa !29
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2estmt(ptr %v0, ptr %v1, ptr %t118, ptr %t117)
  br label %bb42
bb42:
  call void @__olang_scope_close(ptr %s2)
  br label %bb43
bb43:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2funparse_2ecompiler_2funparse_3awriter_2eitems(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca i1
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/unparse:writer", ptr %t1, i32 0, i32 6
  %t4 = load i1, ptr %t3, !tbaa !21
  store i1 %t4, ptr %l2, !tbaa !21
  %t6 = load ptr, ptr %l0, !tbaa !29
  %t8 = getelementptr %"compiler/unparse:writer", ptr %t6, i32 0, i32 6
  store i1 true, ptr %t8, !tbaa !21
  %t9 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2eexprs(ptr %v0, ptr %v1, ptr %t9, { i64, ptr } %a1)
  br label %bb1
bb1:
  %t13 = load ptr, ptr %l0, !tbaa !29
  %t14 = load i1, ptr %l2, !tbaa !21
  %t17 = getelementptr %"compiler/unparse:writer", ptr %t13, i32 0, i32 6
  store i1 %t14, ptr %t17, !tbaa !21
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2funparse_2ecompiler_2funparse_3awriter_2ematch(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
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
  %l10 = alloca ptr
  %l11 = alloca { i64, ptr }
  %l12 = alloca i64
  %l13 = alloca i64
  %l15 = alloca ptr
  %l21 = alloca ptr
  %l32 = alloca { i64, ptr }
  %l46 = alloca { i64, ptr }
  %l65 = alloca { i64, ptr }
  %l80 = alloca ptr
  %l90 = alloca ptr
  %s0 = alloca %olang.scope
  %s2 = alloca %olang.scope
  %s5 = alloca %olang.scope
  %s9 = alloca %olang.scope
  %s11 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2eput(ptr %v0, ptr %s0, ptr %t1, { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d107, i32 0, i32 1) })
  br label %bb1
bb1:
  %t3 = load ptr, ptr %l0, !tbaa !29
  %t4 = load ptr, ptr %l1, !tbaa !29
  %t6 = getelementptr %"compiler/ast:Match", ptr %t4, i32 0, i32 1
  %t7 = load ptr, ptr %t6, !tbaa !29
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2eexpr(ptr %v0, ptr %v1, ptr %t3, ptr %t7)
  br label %bb2
bb2:
  %t10 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2eput(ptr %v0, ptr %s0, ptr %t10, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d108, i32 0, i32 1) })
  br label %bb3
bb3:
  %t12 = load ptr, ptr %l0, !tbaa !29
  store ptr %t12, ptr %l21, !tbaa !29
  %t13 = load ptr, ptr %l21, !tbaa !29
  %t14 = getelementptr %"compiler/unparse:writer", ptr %t13, i32 0, i32 4
  %t15 = load i64, ptr %t14, !tbaa !24
  %t17 = add i64 %t15, 1
  %t19 = load ptr, ptr %l21, !tbaa !29
  %t20 = getelementptr %"compiler/unparse:writer", ptr %t19, i32 0, i32 4
  store i64 %t17, ptr %t20, !tbaa !24
  %t21 = load ptr, ptr %l1, !tbaa !29
  %t23 = getelementptr %"compiler/ast:Match", ptr %t21, i32 0, i32 3
  %t24 = load { i64, ptr }, ptr %t23, !tbaa !27
  store { i64, ptr } %t24, ptr %l2, !tbaa !27
  store i64 0, ptr %l3, !tbaa !24
  %t26 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t28 = extractvalue { i64, ptr } %t26, 0
  store i64 %t28, ptr %l4, !tbaa !24
  br label %bb4
bb4:
  store %olang.scope zeroinitializer, ptr %s2
  %t30 = load i64, ptr %l3, !tbaa !24
  %t31 = load i64, ptr %l4, !tbaa !24
  %t34 = icmp slt i64 %t30, %t31
  %t36 = xor i1 %t34, true
  br i1 %t36, label %bb5, label %bb6
bb5:
  call void @__olang_scope_close(ptr %s2)
  br label %bb42
bb6:
  br label %bb7
bb7:
  %t38 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t38, ptr %l32, !tbaa !27
  %t39 = load i64, ptr %l3, !tbaa !24
  %t41 = getelementptr { i64, ptr }, ptr %l32, i32 0, i32 1
  %t42 = load ptr, ptr %t41, !tbaa !27
  %t43 = getelementptr ptr, ptr %t42, i64 %t39
  %t44 = load ptr, ptr %t43, !tbaa !39
  store ptr %t44, ptr %l5, !tbaa !29
  %t46 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2enl(ptr %v0, ptr %t46)
  br label %bb8
bb8:
  %t48 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2eput(ptr %v0, ptr %s2, ptr %t48, { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d109, i32 0, i32 1) })
  br label %bb9
bb9:
  %t50 = load ptr, ptr %l5, !tbaa !29
  %t52 = getelementptr %"compiler/ast:Case", ptr %t50, i32 0, i32 1
  %t53 = load { i64, ptr }, ptr %t52, !tbaa !27
  store { i64, ptr } %t53, ptr %l6, !tbaa !27
  store i64 0, ptr %l7, !tbaa !24
  %t55 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t57 = extractvalue { i64, ptr } %t55, 0
  store i64 %t57, ptr %l8, !tbaa !24
  br label %bb10
bb10:
  %t59 = load i64, ptr %l7, !tbaa !24
  %t60 = load i64, ptr %l8, !tbaa !24
  %t63 = icmp slt i64 %t59, %t60
  %t65 = xor i1 %t63, true
  br i1 %t65, label %bb11, label %bb12
bb11:
  br label %bb20
bb12:
  br label %bb13
bb13:
  %t67 = load i64, ptr %l7, !tbaa !24
  %t69 = load { i64, ptr }, ptr %l6, !tbaa !27
  store { i64, ptr } %t69, ptr %l46, !tbaa !27
  %t70 = load i64, ptr %l7, !tbaa !24
  %t72 = getelementptr { i64, ptr }, ptr %l46, i32 0, i32 1
  %t73 = load ptr, ptr %t72, !tbaa !27
  %t74 = getelementptr ptr, ptr %t73, i64 %t70
  %t75 = load ptr, ptr %t74, !tbaa !39
  store ptr %t75, ptr %l10, !tbaa !29
  %t79 = icmp sgt i64 %t67, 0
  br i1 %t79, label %bb14, label %bb15
bb14:
  store %olang.scope zeroinitializer, ptr %s5
  %t81 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2eput(ptr %v0, ptr %s5, ptr %t81, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d110, i32 0, i32 1) })
  br label %bb16
bb15:
  br label %bb17
bb16:
  call void @__olang_scope_close(ptr %s5)
  br label %bb17
bb17:
  %t83 = load ptr, ptr %l0, !tbaa !29
  %t84 = load ptr, ptr %l10, !tbaa !29
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2epattern(ptr %v0, ptr %v1, ptr %t83, ptr %t84)
  br label %bb18
bb18:
  br label %bb19
bb19:
  %t87 = load i64, ptr %l7, !tbaa !24
  %t89 = add i64 %t87, 1
  store i64 %t89, ptr %l7, !tbaa !24
  br label %bb10
bb20:
  %t91 = load ptr, ptr %l5, !tbaa !29
  %t93 = getelementptr %"compiler/ast:Case", ptr %t91, i32 0, i32 2
  %t94 = load { i64, ptr }, ptr %t93, !tbaa !27
  store { i64, ptr } %t94, ptr %l11, !tbaa !27
  store i64 0, ptr %l12, !tbaa !24
  %t96 = load { i64, ptr }, ptr %l11, !tbaa !27
  %t98 = extractvalue { i64, ptr } %t96, 0
  store i64 %t98, ptr %l13, !tbaa !24
  br label %bb21
bb21:
  %t100 = load i64, ptr %l12, !tbaa !24
  %t101 = load i64, ptr %l13, !tbaa !24
  %t104 = icmp slt i64 %t100, %t101
  %t106 = xor i1 %t104, true
  br i1 %t106, label %bb22, label %bb23
bb22:
  br label %bb31
bb23:
  br label %bb24
bb24:
  %t108 = load i64, ptr %l12, !tbaa !24
  %t110 = load { i64, ptr }, ptr %l11, !tbaa !27
  store { i64, ptr } %t110, ptr %l65, !tbaa !27
  %t111 = load i64, ptr %l12, !tbaa !24
  %t113 = getelementptr { i64, ptr }, ptr %l65, i32 0, i32 1
  %t114 = load ptr, ptr %t113, !tbaa !27
  %t115 = getelementptr ptr, ptr %t114, i64 %t111
  %t116 = load ptr, ptr %t115, !tbaa !39
  store ptr %t116, ptr %l15, !tbaa !29
  %t120 = icmp sgt i64 %t108, 0
  br i1 %t120, label %bb25, label %bb26
bb25:
  store %olang.scope zeroinitializer, ptr %s9
  %t122 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2eput(ptr %v0, ptr %s9, ptr %t122, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d111, i32 0, i32 1) })
  br label %bb27
bb26:
  br label %bb28
bb27:
  call void @__olang_scope_close(ptr %s9)
  br label %bb28
bb28:
  %t124 = load ptr, ptr %l0, !tbaa !29
  %t125 = load ptr, ptr %l15, !tbaa !29
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2ety(ptr %v0, ptr %v1, ptr %t124, ptr %t125)
  br label %bb29
bb29:
  br label %bb30
bb30:
  %t128 = load i64, ptr %l12, !tbaa !24
  %t130 = add i64 %t128, 1
  store i64 %t130, ptr %l12, !tbaa !24
  br label %bb21
bb31:
  %t132 = load ptr, ptr %l5, !tbaa !29
  %t134 = getelementptr %"compiler/ast:Case", ptr %t132, i32 0, i32 3
  %t135 = load ptr, ptr %t134, !tbaa !29
  %t137 = icmp eq ptr %t135, null
  %t139 = xor i1 %t137, true
  br i1 %t139, label %bb32, label %bb33
bb32:
  store %olang.scope zeroinitializer, ptr %s11
  %t141 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2eput(ptr %v0, ptr %s11, ptr %t141, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d112, i32 0, i32 1) })
  br label %bb34
bb33:
  br label %bb39
bb34:
  %t143 = load ptr, ptr %l0, !tbaa !29
  store ptr %t143, ptr %l80, !tbaa !29
  %t144 = load ptr, ptr %l5, !tbaa !29
  %t146 = getelementptr %"compiler/ast:Case", ptr %t144, i32 0, i32 3
  %t147 = load ptr, ptr %t146, !tbaa !29
  %t149 = icmp eq ptr %t147, null
  br i1 %t149, label %bb35, label %bb36
bb35:
  call void @__olang_check_failed(ptr @olang_loc_212921701ccd28fb_40c266614e32415f)
  unreachable
bb36:
  br label %bb37
bb37:
  %t151 = load ptr, ptr %l5, !tbaa !29
  %t153 = getelementptr %"compiler/ast:Case", ptr %t151, i32 0, i32 3
  %t154 = load ptr, ptr %t153, !tbaa !29
  %t155 = load ptr, ptr %l80, !tbaa !29
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2eexpr(ptr %v0, ptr %v1, ptr %t155, ptr %t154)
  br label %bb38
bb38:
  call void @__olang_scope_close(ptr %s11)
  br label %bb39
bb39:
  %t157 = load ptr, ptr %l0, !tbaa !29
  %t158 = load ptr, ptr %l5, !tbaa !29
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2ecaseBody(ptr %v0, ptr %v1, ptr %t157, ptr %t158)
  br label %bb40
bb40:
  call void @__olang_scope_close(ptr %s2)
  br label %bb41
bb41:
  %t161 = load i64, ptr %l3, !tbaa !24
  %t163 = add i64 %t161, 1
  store i64 %t163, ptr %l3, !tbaa !24
  br label %bb4
bb42:
  %t165 = load ptr, ptr %l0, !tbaa !29
  store ptr %t165, ptr %l90, !tbaa !29
  %t166 = load ptr, ptr %l90, !tbaa !29
  %t167 = getelementptr %"compiler/unparse:writer", ptr %t166, i32 0, i32 4
  %t168 = load i64, ptr %t167, !tbaa !24
  %t170 = sub i64 %t168, 1
  %t172 = load ptr, ptr %l90, !tbaa !29
  %t173 = getelementptr %"compiler/unparse:writer", ptr %t172, i32 0, i32 4
  store i64 %t170, ptr %t173, !tbaa !24
  %t174 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2enl(ptr %v0, ptr %t174)
  br label %bb43
bb43:
  %t176 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2eput(ptr %v0, ptr %s0, ptr %t176, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d113, i32 0, i32 1) })
  br label %bb44
bb44:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2funparse_2ecompiler_2funparse_3awriter_2ename(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l3 = alloca ptr
  %l7 = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/unparse:writer", ptr %t1, i32 0, i32 3
  store ptr %t3, ptr %l3, !tbaa !29
  %t4 = load ptr, ptr %l0, !tbaa !29
  %t6 = getelementptr %"compiler/unparse:writer", ptr %t4, i32 0, i32 0
  %t7 = load ptr, ptr %t6, !tbaa !29
  %t11 = call { i64, ptr } @compiler_2fsource_2ecompiler_2fsource_3aNames_2eText(ptr %v0, ptr %v0, ptr %t7, i32 %a1)
  store { i64, ptr } %t11, ptr %l7
  br label %bb1
bb1:
  %t12 = load ptr, ptr %l3, !tbaa !29
  %t13 = load { i64, ptr }, ptr %l7, !tbaa !27
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v0, ptr %v0, ptr %t12, { i64, ptr } %t13)
  br label %bb2
bb2:
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2funparse_2ecompiler_2funparse_3awriter_2enl(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca i64
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l12 = alloca i64
  %l16 = alloca i64
  %l19 = alloca i64
  %s2 = alloca %olang.scope
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/unparse:writer", ptr %t1, i32 0, i32 3
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePushChar(ptr %v0, ptr %t3, i8 10)
  br label %bb1
bb1:
  store i64 0, ptr %l1, !tbaa !24
  %t5 = load ptr, ptr %l0, !tbaa !29
  %t7 = getelementptr %"compiler/unparse:writer", ptr %t5, i32 0, i32 4
  %t8 = load i64, ptr %t7, !tbaa !24
  %t9 = load i64, ptr @G_2ecompiler_2funparse_2eMaxIndent, !tbaa !24
  %t12 = call i64 @std_2fprelude_2fnumber_2eI64_2eMin_3cI64_3e(i64 %t8, i64 %t9)
  store i64 %t12, ptr %l12
  br label %bb2
bb2:
  %t13 = load i64, ptr %l12, !tbaa !24
  store i64 %t13, ptr %l2, !tbaa !24
  store i64 1, ptr %l3, !tbaa !24
  %t14 = load i64, ptr %l2, !tbaa !24
  %t15 = load i64, ptr %l1, !tbaa !24
  %t18 = icmp sgt i64 %t14, %t15
  br i1 %t18, label %bb3, label %bb4
bb3:
  %t20 = load i64, ptr %l3, !tbaa !24
  %t22 = icmp sgt i64 %t20, 0
  br i1 %t22, label %bb5, label %bb6
bb4:
  store i64 0, ptr %l16, !tbaa !24
  br label %bb8
bb5:
  %t24 = load i64, ptr %l2, !tbaa !24
  %t25 = load i64, ptr %l1, !tbaa !24
  %t28 = sub i64 %t24, %t25
  %t29 = load i64, ptr %l3, !tbaa !24
  %t32 = add i64 %t28, %t29
  %t34 = sub i64 %t32, 1
  %t35 = load i64, ptr %l3, !tbaa !24
  %t38 = sdiv i64 %t34, %t35
  store i64 %t38, ptr %l19, !tbaa !24
  br label %bb7
bb6:
  store i64 0, ptr %l19, !tbaa !24
  br label %bb7
bb7:
  %t40 = load i64, ptr %l19, !tbaa !24
  store i64 %t40, ptr %l16, !tbaa !24
  br label %bb8
bb8:
  %t41 = load i64, ptr %l16, !tbaa !24
  store i64 %t41, ptr %l4, !tbaa !24
  store i64 0, ptr %l5, !tbaa !24
  br label %bb9
bb9:
  store %olang.scope zeroinitializer, ptr %s2
  %t42 = load i64, ptr %l5, !tbaa !24
  %t43 = load i64, ptr %l4, !tbaa !24
  %t46 = icmp slt i64 %t42, %t43
  %t48 = xor i1 %t46, true
  br i1 %t48, label %bb10, label %bb11
bb10:
  call void @__olang_scope_close(ptr %s2)
  br label %bb15
bb11:
  br label %bb12
bb12:
  %t50 = load i64, ptr %l1, !tbaa !24
  %t51 = load i64, ptr %l5, !tbaa !24
  %t52 = load i64, ptr %l3, !tbaa !24
  %t55 = mul i64 %t51, %t52
  %t58 = add i64 %t50, %t55
  store i64 %t58, ptr %l6, !tbaa !24
  %t60 = load ptr, ptr %l0, !tbaa !29
  %t62 = getelementptr %"compiler/unparse:writer", ptr %t60, i32 0, i32 3
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v0, ptr %s2, ptr %t62, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d114, i32 0, i32 1) })
  br label %bb13
bb13:
  call void @__olang_scope_close(ptr %s2)
  br label %bb14
bb14:
  %t64 = load i64, ptr %l5, !tbaa !24
  %t66 = add i64 %t64, 1
  store i64 %t66, ptr %l5, !tbaa !24
  br label %bb9
bb15:
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2funparse_2ecompiler_2funparse_3awriter_2eparam(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l19 = alloca ptr
  %l30 = alloca ptr
  %s3 = alloca %olang.scope
  %s4 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load ptr, ptr %l1, !tbaa !29
  %t4 = getelementptr %"compiler/ast:Param", ptr %t2, i32 0, i32 4
  %t5 = load { i64, ptr }, ptr %t4, !tbaa !27
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2eattrs(ptr %v0, ptr %v1, ptr %t1, { i64, ptr } %t5)
  br label %bb1
bb1:
  %t8 = load ptr, ptr %l1, !tbaa !29
  %t10 = getelementptr %"compiler/ast:Param", ptr %t8, i32 0, i32 1
  %t11 = load i32, ptr %t10, !tbaa !23
  %t13 = icmp ne i32 %t11, 0
  br i1 %t13, label %bb2, label %bb3
bb2:
  %t15 = load ptr, ptr %l0, !tbaa !29
  %t16 = load ptr, ptr %l1, !tbaa !29
  %t18 = getelementptr %"compiler/ast:Param", ptr %t16, i32 0, i32 1
  %t19 = load i32, ptr %t18, !tbaa !23
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2ename(ptr %v0, ptr %t15, i32 %t19)
  br label %bb4
bb3:
  br label %bb5
bb4:
  br label %bb5
bb5:
  %t22 = load ptr, ptr %l1, !tbaa !29
  %t24 = getelementptr %"compiler/ast:Param", ptr %t22, i32 0, i32 2
  %t25 = load ptr, ptr %t24, !tbaa !29
  %t27 = icmp eq ptr %t25, null
  %t29 = xor i1 %t27, true
  br i1 %t29, label %bb6, label %bb7
bb6:
  %t31 = load ptr, ptr %l1, !tbaa !29
  %t33 = getelementptr %"compiler/ast:Param", ptr %t31, i32 0, i32 1
  %t34 = load i32, ptr %t33, !tbaa !23
  %t36 = icmp ne i32 %t34, 0
  br i1 %t36, label %bb8, label %bb9
bb7:
  br label %bb16
bb8:
  store %olang.scope zeroinitializer, ptr %s3
  %t38 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2eput(ptr %v0, ptr %s3, ptr %t38, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d115, i32 0, i32 1) })
  br label %bb10
bb9:
  br label %bb11
bb10:
  call void @__olang_scope_close(ptr %s3)
  br label %bb11
bb11:
  %t40 = load ptr, ptr %l0, !tbaa !29
  store ptr %t40, ptr %l19, !tbaa !29
  %t41 = load ptr, ptr %l1, !tbaa !29
  %t43 = getelementptr %"compiler/ast:Param", ptr %t41, i32 0, i32 2
  %t44 = load ptr, ptr %t43, !tbaa !29
  %t46 = icmp eq ptr %t44, null
  br i1 %t46, label %bb12, label %bb13
bb12:
  call void @__olang_check_failed(ptr @olang_loc_2301005a90ba30f7_2e0b8cd6b5bb3c83)
  unreachable
bb13:
  br label %bb14
bb14:
  %t48 = load ptr, ptr %l1, !tbaa !29
  %t50 = getelementptr %"compiler/ast:Param", ptr %t48, i32 0, i32 2
  %t51 = load ptr, ptr %t50, !tbaa !29
  %t52 = load ptr, ptr %l19, !tbaa !29
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2ety(ptr %v0, ptr %v1, ptr %t52, ptr %t51)
  br label %bb15
bb15:
  br label %bb16
bb16:
  %t54 = load ptr, ptr %l1, !tbaa !29
  %t56 = getelementptr %"compiler/ast:Param", ptr %t54, i32 0, i32 3
  %t57 = load ptr, ptr %t56, !tbaa !29
  %t59 = icmp eq ptr %t57, null
  %t61 = xor i1 %t59, true
  br i1 %t61, label %bb17, label %bb18
bb17:
  store %olang.scope zeroinitializer, ptr %s4
  %t63 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2eput(ptr %v0, ptr %s4, ptr %t63, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d116, i32 0, i32 1) })
  br label %bb19
bb18:
  br label %bb24
bb19:
  %t65 = load ptr, ptr %l0, !tbaa !29
  store ptr %t65, ptr %l30, !tbaa !29
  %t66 = load ptr, ptr %l1, !tbaa !29
  %t68 = getelementptr %"compiler/ast:Param", ptr %t66, i32 0, i32 3
  %t69 = load ptr, ptr %t68, !tbaa !29
  %t71 = icmp eq ptr %t69, null
  br i1 %t71, label %bb20, label %bb21
bb20:
  call void @__olang_check_failed(ptr @olang_loc_6385ebb2fa48e0d8_1e44ec8c8ca0ecf4)
  unreachable
bb21:
  br label %bb22
bb22:
  %t73 = load ptr, ptr %l1, !tbaa !29
  %t75 = getelementptr %"compiler/ast:Param", ptr %t73, i32 0, i32 3
  %t76 = load ptr, ptr %t75, !tbaa !29
  %t77 = load ptr, ptr %l30, !tbaa !29
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2eexpr(ptr %v0, ptr %v1, ptr %t77, ptr %t76)
  br label %bb23
bb23:
  call void @__olang_scope_close(ptr %s4)
  br label %bb24
bb24:
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2funparse_2ecompiler_2funparse_3awriter_2eparams(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca i1
  %l3 = alloca { i64, ptr }
  %l4 = alloca i64
  %l5 = alloca i64
  %l7 = alloca ptr
  %l19 = alloca { i64, ptr }
  %s3 = alloca %olang.scope
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/unparse:writer", ptr %t1, i32 0, i32 6
  %t4 = load i1, ptr %t3, !tbaa !21
  store i1 %t4, ptr %l2, !tbaa !21
  %t6 = load ptr, ptr %l0, !tbaa !29
  %t8 = getelementptr %"compiler/unparse:writer", ptr %t6, i32 0, i32 6
  store i1 true, ptr %t8, !tbaa !21
  store { i64, ptr } %a1, ptr %l3, !tbaa !27
  store i64 0, ptr %l4, !tbaa !24
  %t11 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t13 = extractvalue { i64, ptr } %t11, 0
  store i64 %t13, ptr %l5, !tbaa !24
  br label %bb1
bb1:
  %t15 = load i64, ptr %l4, !tbaa !24
  %t16 = load i64, ptr %l5, !tbaa !24
  %t19 = icmp slt i64 %t15, %t16
  %t21 = xor i1 %t19, true
  br i1 %t21, label %bb2, label %bb3
bb2:
  br label %bb11
bb3:
  br label %bb4
bb4:
  %t23 = load i64, ptr %l4, !tbaa !24
  %t25 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t25, ptr %l19, !tbaa !27
  %t26 = load i64, ptr %l4, !tbaa !24
  %t28 = getelementptr { i64, ptr }, ptr %l19, i32 0, i32 1
  %t29 = load ptr, ptr %t28, !tbaa !27
  %t30 = getelementptr ptr, ptr %t29, i64 %t26
  %t31 = load ptr, ptr %t30, !tbaa !39
  store ptr %t31, ptr %l7, !tbaa !29
  %t35 = icmp sgt i64 %t23, 0
  br i1 %t35, label %bb5, label %bb6
bb5:
  store %olang.scope zeroinitializer, ptr %s3
  %t37 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2eput(ptr %v0, ptr %s3, ptr %t37, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d117, i32 0, i32 1) })
  br label %bb7
bb6:
  br label %bb8
bb7:
  call void @__olang_scope_close(ptr %s3)
  br label %bb8
bb8:
  %t39 = load ptr, ptr %l0, !tbaa !29
  %t40 = load ptr, ptr %l7, !tbaa !29
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2eparam(ptr %v0, ptr %v1, ptr %t39, ptr %t40)
  br label %bb9
bb9:
  br label %bb10
bb10:
  %t43 = load i64, ptr %l4, !tbaa !24
  %t45 = add i64 %t43, 1
  store i64 %t45, ptr %l4, !tbaa !24
  br label %bb1
bb11:
  %t47 = load ptr, ptr %l0, !tbaa !29
  %t48 = load i1, ptr %l2, !tbaa !21
  %t51 = getelementptr %"compiler/unparse:writer", ptr %t47, i32 0, i32 6
  store i1 %t48, ptr %t51, !tbaa !21
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2funparse_2ecompiler_2funparse_3awriter_2epath(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca { i64, ptr }
  %l3 = alloca i64
  %l4 = alloca i64
  %l6 = alloca i32
  %l16 = alloca { i64, ptr }
  %s3 = alloca %olang.scope
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t3 = getelementptr %"compiler/ast:Path", ptr %a1, i32 0, i32 1
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
  br label %bb11
bb3:
  br label %bb4
bb4:
  %t18 = load i64, ptr %l3, !tbaa !24
  %t20 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t20, ptr %l16, !tbaa !27
  %t21 = load i64, ptr %l3, !tbaa !24
  %t23 = getelementptr { i64, ptr }, ptr %l16, i32 0, i32 1
  %t24 = load ptr, ptr %t23, !tbaa !27
  %t25 = getelementptr i32, ptr %t24, i64 %t21
  %t26 = load i32, ptr %t25, !tbaa !33
  store i32 %t26, ptr %l6, !tbaa !23
  %t30 = icmp sgt i64 %t18, 0
  br i1 %t30, label %bb5, label %bb6
bb5:
  store %olang.scope zeroinitializer, ptr %s3
  %t32 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2eput(ptr %v0, ptr %s3, ptr %t32, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d118, i32 0, i32 1) })
  br label %bb7
bb6:
  br label %bb8
bb7:
  call void @__olang_scope_close(ptr %s3)
  br label %bb8
bb8:
  %t34 = load ptr, ptr %l0, !tbaa !29
  %t35 = load i32, ptr %l6, !tbaa !23
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2ename(ptr %v0, ptr %t34, i32 %t35)
  br label %bb9
bb9:
  br label %bb10
bb10:
  %t38 = load i64, ptr %l3, !tbaa !24
  %t40 = add i64 %t38, 1
  store i64 %t40, ptr %l3, !tbaa !24
  br label %bb1
bb11:
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2funparse_2ecompiler_2funparse_3awriter_2epattern(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca ptr
  %l4 = alloca { i64, ptr }
  %l5 = alloca { i64, ptr }
  %l6 = alloca i64
  %l7 = alloca i64
  %l9 = alloca ptr
  %l10 = alloca i32
  %l11 = alloca ptr
  %l12 = alloca ptr
  %l13 = alloca i32
  %l14 = alloca ptr
  %l15 = alloca i32
  %l16 = alloca i32
  %l17 = alloca ptr
  %l18 = alloca ptr
  %l19 = alloca i1
  %l23 = alloca ptr
  %l24 = alloca i1
  %l31 = alloca ptr
  %l32 = alloca i1
  %l50 = alloca { i64, ptr }
  %l61 = alloca ptr
  %l62 = alloca i1
  %l69 = alloca ptr
  %l70 = alloca i1
  %l77 = alloca ptr
  %l78 = alloca i1
  %l90 = alloca ptr
  %l91 = alloca i1
  %l98 = alloca ptr
  %l99 = alloca i1
  %l108 = alloca { i64, ptr }
  %l109 = alloca i1
  %l113 = alloca ptr
  %l114 = alloca i1
  %s1 = alloca %olang.scope
  %s3 = alloca %olang.scope
  %s6 = alloca %olang.scope
  %s10 = alloca %olang.scope
  %s12 = alloca %olang.scope
  %s14 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l1, !tbaa !29
  store ptr %t1, ptr %l18, !tbaa !29
  store i1 false, ptr %l19, !tbaa !21
  %t2 = load ptr, ptr %l18, !tbaa !29
  %t3 = icmp ne ptr %t2, null
  br i1 %t3, label %bb1, label %bb2
bb1:
  %t5 = load ptr, ptr %l18, !tbaa !29
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 9}
  %t8 = icmp eq i64 %t6, 0
  store i1 %t8, ptr %l19, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l19, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  br label %bb5
bb4:
  br label %bb7
bb5:
  store %olang.scope zeroinitializer, ptr %s1
  %t10 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2eput(ptr %v0, ptr %s1, ptr %t10, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d119, i32 0, i32 1) })
  br label %bb6
bb6:
  call void @__olang_scope_close(ptr %s1)
  br label %bb87
bb7:
  %t12 = load ptr, ptr %l1, !tbaa !29
  store ptr %t12, ptr %l23, !tbaa !29
  store i1 false, ptr %l24, !tbaa !21
  %t13 = load ptr, ptr %l23, !tbaa !29
  %t14 = icmp ne ptr %t13, null
  br i1 %t14, label %bb8, label %bb9
bb8:
  %t16 = load ptr, ptr %l23, !tbaa !29
  %t17 = load i64, ptr %t16, !range !{i64 0, i64 9}
  %t19 = icmp eq i64 %t17, 1
  store i1 %t19, ptr %l24, !tbaa !21
  br label %bb9
bb9:
  %t20 = load i1, ptr %l24, !tbaa !21
  br i1 %t20, label %bb10, label %bb11
bb10:
  %t21 = load ptr, ptr %l1, !tbaa !29
  %t23 = getelementptr { i64, [4 x i64] }, ptr %t21, i32 0, i32 1
  %t24 = getelementptr { %"compiler/source:Span", ptr }, ptr %t23, i32 0, i32 1
  %t25 = load ptr, ptr %t24
  store ptr %t25, ptr %l2, !tbaa !29
  br label %bb12
bb11:
  br label %bb14
bb12:
  %t27 = load ptr, ptr %l0, !tbaa !29
  %t28 = load ptr, ptr %l2, !tbaa !29
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2eexpr(ptr %v0, ptr %v1, ptr %t27, ptr %t28)
  br label %bb13
bb13:
  br label %bb87
bb14:
  %t31 = load ptr, ptr %l1, !tbaa !29
  store ptr %t31, ptr %l31, !tbaa !29
  store i1 false, ptr %l32, !tbaa !21
  %t32 = load ptr, ptr %l31, !tbaa !29
  %t33 = icmp ne ptr %t32, null
  br i1 %t33, label %bb15, label %bb16
bb15:
  %t35 = load ptr, ptr %l31, !tbaa !29
  %t36 = load i64, ptr %t35, !range !{i64 0, i64 9}
  %t38 = icmp eq i64 %t36, 2
  store i1 %t38, ptr %l32, !tbaa !21
  br label %bb16
bb16:
  %t39 = load i1, ptr %l32, !tbaa !21
  br i1 %t39, label %bb17, label %bb18
bb17:
  %t40 = load ptr, ptr %l1, !tbaa !29
  %t42 = getelementptr { i64, [4 x i64] }, ptr %t40, i32 0, i32 1
  %t43 = getelementptr { %"compiler/source:Span", ptr, { i64, ptr } }, ptr %t42, i32 0, i32 1
  %t44 = load ptr, ptr %t43
  store ptr %t44, ptr %l3, !tbaa !29
  %t46 = load ptr, ptr %l1, !tbaa !29
  %t48 = getelementptr { i64, [4 x i64] }, ptr %t46, i32 0, i32 1
  %t49 = getelementptr { %"compiler/source:Span", ptr, { i64, ptr } }, ptr %t48, i32 0, i32 2
  %t50 = load { i64, ptr }, ptr %t49
  store { i64, ptr } %t50, ptr %l4, !tbaa !27
  br label %bb19
bb18:
  br label %bb34
bb19:
  store %olang.scope zeroinitializer, ptr %s3
  %t52 = load ptr, ptr %l0, !tbaa !29
  %t53 = load ptr, ptr %l3, !tbaa !29
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2eexpr(ptr %v0, ptr %v1, ptr %t52, ptr %t53)
  br label %bb20
bb20:
  %t56 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2eput(ptr %v0, ptr %s3, ptr %t56, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d120, i32 0, i32 1) })
  br label %bb21
bb21:
  %t58 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t58, ptr %l5, !tbaa !27
  store i64 0, ptr %l6, !tbaa !24
  %t60 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t62 = extractvalue { i64, ptr } %t60, 0
  store i64 %t62, ptr %l7, !tbaa !24
  br label %bb22
bb22:
  %t64 = load i64, ptr %l6, !tbaa !24
  %t65 = load i64, ptr %l7, !tbaa !24
  %t68 = icmp slt i64 %t64, %t65
  %t70 = xor i1 %t68, true
  br i1 %t70, label %bb23, label %bb24
bb23:
  br label %bb32
bb24:
  br label %bb25
bb25:
  %t72 = load i64, ptr %l6, !tbaa !24
  %t74 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t74, ptr %l50, !tbaa !27
  %t75 = load i64, ptr %l6, !tbaa !24
  %t77 = getelementptr { i64, ptr }, ptr %l50, i32 0, i32 1
  %t78 = load ptr, ptr %t77, !tbaa !27
  %t79 = getelementptr ptr, ptr %t78, i64 %t75
  %t80 = load ptr, ptr %t79, !tbaa !39
  store ptr %t80, ptr %l9, !tbaa !29
  %t84 = icmp sgt i64 %t72, 0
  br i1 %t84, label %bb26, label %bb27
bb26:
  store %olang.scope zeroinitializer, ptr %s6
  %t86 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2eput(ptr %v0, ptr %s6, ptr %t86, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d121, i32 0, i32 1) })
  br label %bb28
bb27:
  br label %bb29
bb28:
  call void @__olang_scope_close(ptr %s6)
  br label %bb29
bb29:
  %t88 = load ptr, ptr %l0, !tbaa !29
  %t89 = load ptr, ptr %l9, !tbaa !29
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2epattern(ptr %v0, ptr %v1, ptr %t88, ptr %t89)
  br label %bb30
bb30:
  br label %bb31
bb31:
  %t92 = load i64, ptr %l6, !tbaa !24
  %t94 = add i64 %t92, 1
  store i64 %t94, ptr %l6, !tbaa !24
  br label %bb22
bb32:
  %t96 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2eput(ptr %v0, ptr %s3, ptr %t96, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d122, i32 0, i32 1) })
  br label %bb33
bb33:
  call void @__olang_scope_close(ptr %s3)
  br label %bb87
bb34:
  %t98 = load ptr, ptr %l1, !tbaa !29
  store ptr %t98, ptr %l61, !tbaa !29
  store i1 false, ptr %l62, !tbaa !21
  %t99 = load ptr, ptr %l61, !tbaa !29
  %t100 = icmp ne ptr %t99, null
  br i1 %t100, label %bb35, label %bb36
bb35:
  %t102 = load ptr, ptr %l61, !tbaa !29
  %t103 = load i64, ptr %t102, !range !{i64 0, i64 9}
  %t105 = icmp eq i64 %t103, 3
  store i1 %t105, ptr %l62, !tbaa !21
  br label %bb36
bb36:
  %t106 = load i1, ptr %l62, !tbaa !21
  br i1 %t106, label %bb37, label %bb38
bb37:
  %t107 = load ptr, ptr %l1, !tbaa !29
  %t109 = getelementptr { i64, [4 x i64] }, ptr %t107, i32 0, i32 1
  %t110 = getelementptr { %"compiler/source:Span", i32 }, ptr %t109, i32 0, i32 1
  %t111 = load i32, ptr %t110
  store i32 %t111, ptr %l10, !tbaa !23
  br label %bb39
bb38:
  br label %bb41
bb39:
  %t113 = load ptr, ptr %l0, !tbaa !29
  %t114 = load i32, ptr %l10, !tbaa !23
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2ename(ptr %v0, ptr %t113, i32 %t114)
  br label %bb40
bb40:
  br label %bb87
bb41:
  %t117 = load ptr, ptr %l1, !tbaa !29
  store ptr %t117, ptr %l69, !tbaa !29
  store i1 false, ptr %l70, !tbaa !21
  %t118 = load ptr, ptr %l69, !tbaa !29
  %t119 = icmp ne ptr %t118, null
  br i1 %t119, label %bb42, label %bb43
bb42:
  %t121 = load ptr, ptr %l69, !tbaa !29
  %t122 = load i64, ptr %t121, !range !{i64 0, i64 9}
  %t124 = icmp eq i64 %t122, 4
  store i1 %t124, ptr %l70, !tbaa !21
  br label %bb43
bb43:
  %t125 = load i1, ptr %l70, !tbaa !21
  br i1 %t125, label %bb44, label %bb45
bb44:
  %t126 = load ptr, ptr %l1, !tbaa !29
  %t128 = getelementptr { i64, [4 x i64] }, ptr %t126, i32 0, i32 1
  %t129 = getelementptr { %"compiler/source:Span", ptr }, ptr %t128, i32 0, i32 1
  %t130 = load ptr, ptr %t129
  store ptr %t130, ptr %l11, !tbaa !29
  br label %bb46
bb45:
  br label %bb48
bb46:
  %t132 = load ptr, ptr %l0, !tbaa !29
  %t133 = load ptr, ptr %l11, !tbaa !29
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2eexpr(ptr %v0, ptr %v1, ptr %t132, ptr %t133)
  br label %bb47
bb47:
  br label %bb87
bb48:
  %t136 = load ptr, ptr %l1, !tbaa !29
  store ptr %t136, ptr %l77, !tbaa !29
  store i1 false, ptr %l78, !tbaa !21
  %t137 = load ptr, ptr %l77, !tbaa !29
  %t138 = icmp ne ptr %t137, null
  br i1 %t138, label %bb49, label %bb50
bb49:
  %t140 = load ptr, ptr %l77, !tbaa !29
  %t141 = load i64, ptr %t140, !range !{i64 0, i64 9}
  %t143 = icmp eq i64 %t141, 5
  store i1 %t143, ptr %l78, !tbaa !21
  br label %bb50
bb50:
  %t144 = load i1, ptr %l78, !tbaa !21
  br i1 %t144, label %bb51, label %bb52
bb51:
  %t145 = load ptr, ptr %l1, !tbaa !29
  %t147 = getelementptr { i64, [4 x i64] }, ptr %t145, i32 0, i32 1
  %t148 = getelementptr { %"compiler/source:Span", ptr, i32, %"compiler/source:Span" }, ptr %t147, i32 0, i32 1
  %t149 = load ptr, ptr %t148
  store ptr %t149, ptr %l12, !tbaa !29
  %t151 = load ptr, ptr %l1, !tbaa !29
  %t153 = getelementptr { i64, [4 x i64] }, ptr %t151, i32 0, i32 1
  %t154 = getelementptr { %"compiler/source:Span", ptr, i32, %"compiler/source:Span" }, ptr %t153, i32 0, i32 2
  %t155 = load i32, ptr %t154
  store i32 %t155, ptr %l13, !tbaa !23
  br label %bb53
bb52:
  br label %bb57
bb53:
  store %olang.scope zeroinitializer, ptr %s10
  %t157 = load ptr, ptr %l0, !tbaa !29
  %t158 = load ptr, ptr %l12, !tbaa !29
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2ety(ptr %v0, ptr %v1, ptr %t157, ptr %t158)
  br label %bb54
bb54:
  %t161 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2eput(ptr %v0, ptr %s10, ptr %t161, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d123, i32 0, i32 1) })
  br label %bb55
bb55:
  %t163 = load ptr, ptr %l0, !tbaa !29
  %t164 = load i32, ptr %l13, !tbaa !23
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2ename(ptr %v0, ptr %t163, i32 %t164)
  br label %bb56
bb56:
  call void @__olang_scope_close(ptr %s10)
  br label %bb87
bb57:
  %t167 = load ptr, ptr %l1, !tbaa !29
  store ptr %t167, ptr %l90, !tbaa !29
  store i1 false, ptr %l91, !tbaa !21
  %t168 = load ptr, ptr %l90, !tbaa !29
  %t169 = icmp ne ptr %t168, null
  br i1 %t169, label %bb58, label %bb59
bb58:
  %t171 = load ptr, ptr %l90, !tbaa !29
  %t172 = load i64, ptr %t171, !range !{i64 0, i64 9}
  %t174 = icmp eq i64 %t172, 6
  store i1 %t174, ptr %l91, !tbaa !21
  br label %bb59
bb59:
  %t175 = load i1, ptr %l91, !tbaa !21
  br i1 %t175, label %bb60, label %bb61
bb60:
  %t176 = load ptr, ptr %l1, !tbaa !29
  %t178 = getelementptr { i64, [4 x i64] }, ptr %t176, i32 0, i32 1
  %t179 = getelementptr { %"compiler/source:Span", ptr, { i64, ptr } }, ptr %t178, i32 0, i32 1
  %t180 = load ptr, ptr %t179
  store ptr %t180, ptr %l14, !tbaa !29
  br label %bb62
bb61:
  br label %bb64
bb62:
  %t182 = load ptr, ptr %l0, !tbaa !29
  %t183 = load ptr, ptr %l14, !tbaa !29
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2eexpr(ptr %v0, ptr %v1, ptr %t182, ptr %t183)
  br label %bb63
bb63:
  br label %bb87
bb64:
  %t186 = load ptr, ptr %l1, !tbaa !29
  store ptr %t186, ptr %l98, !tbaa !29
  store i1 false, ptr %l99, !tbaa !21
  %t187 = load ptr, ptr %l98, !tbaa !29
  %t188 = icmp ne ptr %t187, null
  br i1 %t188, label %bb65, label %bb66
bb65:
  %t190 = load ptr, ptr %l98, !tbaa !29
  %t191 = load i64, ptr %t190, !range !{i64 0, i64 9}
  %t193 = icmp eq i64 %t191, 7
  store i1 %t193, ptr %l99, !tbaa !21
  br label %bb66
bb66:
  %t194 = load i1, ptr %l99, !tbaa !21
  br i1 %t194, label %bb67, label %bb68
bb67:
  %t195 = load ptr, ptr %l1, !tbaa !29
  %t197 = getelementptr { i64, [4 x i64] }, ptr %t195, i32 0, i32 1
  %t198 = getelementptr { %"compiler/source:Span", i32 }, ptr %t197, i32 0, i32 1
  %t199 = load i32, ptr %t198
  store i32 %t199, ptr %l15, !tbaa !23
  br label %bb69
bb68:
  br label %bb77
bb69:
  store %olang.scope zeroinitializer, ptr %s12
  %t201 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2eput(ptr %v0, ptr %s12, ptr %t201, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d124, i32 0, i32 1) })
  br label %bb70
bb70:
  %t203 = load ptr, ptr %l0, !tbaa !29
  %t205 = getelementptr %"compiler/unparse:writer", ptr %t203, i32 0, i32 0
  %t206 = load ptr, ptr %t205, !tbaa !29
  %t207 = load i32, ptr %l15, !tbaa !23
  %t210 = call { i64, ptr } @compiler_2fsource_2ecompiler_2fsource_3aNames_2eText(ptr %v0, ptr %v0, ptr %t206, i32 %t207)
  store { i64, ptr } %t210, ptr %l108
  br label %bb71
bb71:
  %t211 = load { i64, ptr }, ptr %l108, !tbaa !27
  %t212 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s12, { i64, ptr } %t211, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d125, i32 0, i32 1) })
  store i1 %t212, ptr %l109
  br label %bb72
bb72:
  %t213 = load i1, ptr %l109, !tbaa !21
  %t214 = xor i1 %t213, true
  br i1 %t214, label %bb73, label %bb74
bb73:
  %t216 = load ptr, ptr %l0, !tbaa !29
  %t217 = load i32, ptr %l15, !tbaa !23
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2ename(ptr %v0, ptr %t216, i32 %t217)
  br label %bb75
bb74:
  br label %bb76
bb75:
  br label %bb76
bb76:
  call void @__olang_scope_close(ptr %s12)
  br label %bb87
bb77:
  %t220 = load ptr, ptr %l1, !tbaa !29
  store ptr %t220, ptr %l113, !tbaa !29
  store i1 false, ptr %l114, !tbaa !21
  %t221 = load ptr, ptr %l113, !tbaa !29
  %t222 = icmp ne ptr %t221, null
  br i1 %t222, label %bb78, label %bb79
bb78:
  %t224 = load ptr, ptr %l113, !tbaa !29
  %t225 = load i64, ptr %t224, !range !{i64 0, i64 9}
  %t227 = icmp eq i64 %t225, 8
  store i1 %t227, ptr %l114, !tbaa !21
  br label %bb79
bb79:
  %t228 = load i1, ptr %l114, !tbaa !21
  br i1 %t228, label %bb80, label %bb81
bb80:
  %t229 = load ptr, ptr %l1, !tbaa !29
  %t231 = getelementptr { i64, [4 x i64] }, ptr %t229, i32 0, i32 1
  %t232 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t231, i32 0, i32 1
  %t233 = load i32, ptr %t232
  store i32 %t233, ptr %l16, !tbaa !23
  %t235 = load ptr, ptr %l1, !tbaa !29
  %t237 = getelementptr { i64, [4 x i64] }, ptr %t235, i32 0, i32 1
  %t238 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t237, i32 0, i32 2
  %t239 = load ptr, ptr %t238
  store ptr %t239, ptr %l17, !tbaa !29
  br label %bb82
bb81:
  br label %bb86
bb82:
  store %olang.scope zeroinitializer, ptr %s14
  %t241 = load ptr, ptr %l0, !tbaa !29
  %t242 = load i32, ptr %l16, !tbaa !23
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2ename(ptr %v0, ptr %t241, i32 %t242)
  br label %bb83
bb83:
  %t245 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2eput(ptr %v0, ptr %s14, ptr %t245, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d126, i32 0, i32 1) })
  br label %bb84
bb84:
  %t247 = load ptr, ptr %l0, !tbaa !29
  %t248 = load ptr, ptr %l17, !tbaa !29
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2epattern(ptr %v0, ptr %v1, ptr %t247, ptr %t248)
  br label %bb85
bb85:
  call void @__olang_scope_close(ptr %s14)
  br label %bb87
bb86:
  call void @__olang_check_failed(ptr @olang_loc_19d95224243c5dd3_a108b37826b1917)
  unreachable
bb87:
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2funparse_2ecompiler_2funparse_3awriter_2epromises(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca { i64, ptr }
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca ptr
  %l6 = alloca { i64, ptr }
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i32
  %l18 = alloca { i64, ptr }
  %l22 = alloca ptr
  %l25 = alloca { i64, ptr }
  %l35 = alloca { i64, ptr }
  %l38 = alloca ptr
  %l41 = alloca { i64, ptr }
  %l44 = alloca { i64, ptr }
  %s2 = alloca %olang.scope
  %s4 = alloca %olang.scope
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
  store %olang.scope zeroinitializer, ptr %s2
  %t7 = load i64, ptr %l3, !tbaa !24
  %t8 = load i64, ptr %l4, !tbaa !24
  %t11 = icmp slt i64 %t7, %t8
  %t13 = xor i1 %t11, true
  br i1 %t13, label %bb2, label %bb3
bb2:
  call void @__olang_scope_close(ptr %s2)
  br label %bb23
bb3:
  br label %bb4
bb4:
  %t15 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t15, ptr %l18, !tbaa !27
  %t16 = load i64, ptr %l3, !tbaa !24
  %t18 = getelementptr { i64, ptr }, ptr %l18, i32 0, i32 1
  %t19 = load ptr, ptr %t18, !tbaa !27
  %t20 = getelementptr ptr, ptr %t19, i64 %t16
  %t21 = load ptr, ptr %t20, !tbaa !39
  store ptr %t21, ptr %l5, !tbaa !29
  %t23 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2eput(ptr %v0, ptr %s2, ptr %t23, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d127, i32 0, i32 1) })
  br label %bb5
bb5:
  %t25 = load ptr, ptr %l0, !tbaa !29
  store ptr %t25, ptr %l22, !tbaa !29
  %t26 = load ptr, ptr %l5, !tbaa !29
  %t28 = getelementptr %"compiler/ast:Promise", ptr %t26, i32 0, i32 1
  %t29 = load i32, ptr %t28, !range !{i32 0, i32 114}
  %t31 = call { i64, ptr } @compiler_2ftoken_2ecompiler_2ftoken_3aTok_2eText(ptr %s2, i32 %t29)
  store { i64, ptr } %t31, ptr %l25
  br label %bb6
bb6:
  %t32 = load ptr, ptr %l22, !tbaa !29
  %t33 = load { i64, ptr }, ptr %l25, !tbaa !27
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2eput(ptr %v0, ptr %s2, ptr %t32, { i64, ptr } %t33)
  br label %bb7
bb7:
  %t34 = load ptr, ptr %l5, !tbaa !29
  %t36 = getelementptr %"compiler/ast:Promise", ptr %t34, i32 0, i32 2
  %t37 = load { i64, ptr }, ptr %t36, !tbaa !27
  store { i64, ptr } %t37, ptr %l6, !tbaa !27
  store i64 0, ptr %l7, !tbaa !24
  %t39 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t41 = extractvalue { i64, ptr } %t39, 0
  store i64 %t41, ptr %l8, !tbaa !24
  br label %bb8
bb8:
  store %olang.scope zeroinitializer, ptr %s4
  %t43 = load i64, ptr %l7, !tbaa !24
  %t44 = load i64, ptr %l8, !tbaa !24
  %t47 = icmp slt i64 %t43, %t44
  %t49 = xor i1 %t47, true
  br i1 %t49, label %bb9, label %bb10
bb9:
  call void @__olang_scope_close(ptr %s4)
  br label %bb21
bb10:
  br label %bb11
bb11:
  %t51 = load i64, ptr %l7, !tbaa !24
  store i64 %t51, ptr %l9, !tbaa !24
  %t53 = load { i64, ptr }, ptr %l6, !tbaa !27
  store { i64, ptr } %t53, ptr %l35, !tbaa !27
  %t54 = load i64, ptr %l7, !tbaa !24
  %t56 = getelementptr { i64, ptr }, ptr %l35, i32 0, i32 1
  %t57 = load ptr, ptr %t56, !tbaa !27
  %t58 = getelementptr i32, ptr %t57, i64 %t54
  %t59 = load i32, ptr %t58, !tbaa !33
  store i32 %t59, ptr %l10, !tbaa !23
  %t61 = load ptr, ptr %l0, !tbaa !29
  store ptr %t61, ptr %l38, !tbaa !29
  %t62 = load i64, ptr %l9, !tbaa !24
  %t64 = icmp eq i64 %t62, 0
  br i1 %t64, label %bb12, label %bb13
bb12:
  store { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d128, i32 0, i32 1) }, ptr %l41, !tbaa !27
  br label %bb17
bb13:
  %t66 = load i64, ptr %l9, !tbaa !24
  %t68 = icmp eq i64 %t66, 1
  br i1 %t68, label %bb14, label %bb15
bb14:
  store { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d129, i32 0, i32 1) }, ptr %l44, !tbaa !27
  br label %bb16
bb15:
  store { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d130, i32 0, i32 1) }, ptr %l44, !tbaa !27
  br label %bb16
bb16:
  %t70 = load { i64, ptr }, ptr %l44, !tbaa !27
  store { i64, ptr } %t70, ptr %l41, !tbaa !27
  br label %bb17
bb17:
  %t71 = load ptr, ptr %l38, !tbaa !29
  %t72 = load { i64, ptr }, ptr %l41, !tbaa !27
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2eput(ptr %v0, ptr %s4, ptr %t71, { i64, ptr } %t72)
  br label %bb18
bb18:
  %t73 = load ptr, ptr %l0, !tbaa !29
  %t74 = load i32, ptr %l10, !tbaa !23
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2ename(ptr %v0, ptr %t73, i32 %t74)
  br label %bb19
bb19:
  call void @__olang_scope_close(ptr %s4)
  br label %bb20
bb20:
  %t77 = load i64, ptr %l7, !tbaa !24
  %t79 = add i64 %t77, 1
  store i64 %t79, ptr %l7, !tbaa !24
  br label %bb8
bb21:
  call void @__olang_scope_close(ptr %s2)
  br label %bb22
bb22:
  %t81 = load i64, ptr %l3, !tbaa !24
  %t83 = add i64 %t81, 1
  store i64 %t83, ptr %l3, !tbaa !24
  br label %bb1
bb23:
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2funparse_2ecompiler_2funparse_3awriter_2eput(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1) #0 {
entry:
  br label %start
start:
  br label %bb0
bb0:
  %t3 = getelementptr %"compiler/unparse:writer", ptr %a0, i32 0, i32 3
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v0, ptr %v1, ptr %t3, { i64, ptr } %a1)
  br label %bb1
bb1:
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2funparse_2ecompiler_2funparse_3awriter_2esig(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i1
  %l3 = alloca { i64, ptr }
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca ptr
  %l14 = alloca ptr
  %l19 = alloca { i64, ptr }
  %l38 = alloca { i64, ptr }
  %l41 = alloca ptr
  %l44 = alloca { i64, ptr }
  %l51 = alloca i1
  %l54 = alloca ptr
  %l56 = alloca i1
  %s0 = alloca %olang.scope
  %s1 = alloca %olang.scope
  %s2 = alloca %olang.scope
  %s4 = alloca %olang.scope
  %s7 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2eput(ptr %v0, ptr %s0, ptr %t1, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d131, i32 0, i32 1) })
  br label %bb1
bb1:
  %t3 = load ptr, ptr %l0, !tbaa !29
  %t4 = load ptr, ptr %l1, !tbaa !29
  %t6 = getelementptr %"compiler/ast:Sig", ptr %t4, i32 0, i32 0
  %t7 = load { i64, ptr }, ptr %t6, !tbaa !27
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2eparams(ptr %v0, ptr %v1, ptr %t3, { i64, ptr } %t7)
  br label %bb2
bb2:
  %t10 = load ptr, ptr %l1, !tbaa !29
  %t12 = getelementptr %"compiler/ast:Sig", ptr %t10, i32 0, i32 7
  %t13 = load i1, ptr %t12, !tbaa !21
  br i1 %t13, label %bb3, label %bb4
bb3:
  store %olang.scope zeroinitializer, ptr %s1
  %t15 = load ptr, ptr %l0, !tbaa !29
  store ptr %t15, ptr %l14, !tbaa !29
  %t16 = load ptr, ptr %l1, !tbaa !29
  %t18 = getelementptr %"compiler/ast:Sig", ptr %t16, i32 0, i32 0
  %t19 = load { i64, ptr }, ptr %t18, !tbaa !27
  %t21 = extractvalue { i64, ptr } %t19, 0
  %t23 = icmp sgt i64 %t21, 0
  br i1 %t23, label %bb5, label %bb6
bb4:
  br label %bb9
bb5:
  store { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d132, i32 0, i32 1) }, ptr %l19, !tbaa !27
  br label %bb7
bb6:
  store { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d133, i32 0, i32 1) }, ptr %l19, !tbaa !27
  br label %bb7
bb7:
  %t25 = load ptr, ptr %l14, !tbaa !29
  %t26 = load { i64, ptr }, ptr %l19, !tbaa !27
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2eput(ptr %v0, ptr %s1, ptr %t25, { i64, ptr } %t26)
  br label %bb8
bb8:
  call void @__olang_scope_close(ptr %s1)
  br label %bb9
bb9:
  %t27 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2eput(ptr %v0, ptr %s0, ptr %t27, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d134, i32 0, i32 1) })
  br label %bb10
bb10:
  %t29 = load ptr, ptr %l0, !tbaa !29
  %t30 = load ptr, ptr %l1, !tbaa !29
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2econtract(ptr %v0, ptr %v1, ptr %t29, ptr %t30)
  br label %bb11
bb11:
  %t33 = load ptr, ptr %l1, !tbaa !29
  %t35 = getelementptr %"compiler/ast:Sig", ptr %t33, i32 0, i32 4
  %t36 = load i1, ptr %t35, !tbaa !21
  br i1 %t36, label %bb12, label %bb13
bb12:
  store %olang.scope zeroinitializer, ptr %s2
  %t38 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2eput(ptr %v0, ptr %s2, ptr %t38, { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d135, i32 0, i32 1) })
  br label %bb14
bb13:
  br label %bb15
bb14:
  call void @__olang_scope_close(ptr %s2)
  br label %bb15
bb15:
  %t40 = load ptr, ptr %l0, !tbaa !29
  %t42 = getelementptr %"compiler/unparse:writer", ptr %t40, i32 0, i32 6
  %t43 = load i1, ptr %t42, !tbaa !21
  store i1 %t43, ptr %l2, !tbaa !21
  %t45 = load ptr, ptr %l0, !tbaa !29
  %t47 = getelementptr %"compiler/unparse:writer", ptr %t45, i32 0, i32 6
  store i1 true, ptr %t47, !tbaa !21
  %t48 = load ptr, ptr %l1, !tbaa !29
  %t50 = getelementptr %"compiler/ast:Sig", ptr %t48, i32 0, i32 1
  %t51 = load { i64, ptr }, ptr %t50, !tbaa !27
  store { i64, ptr } %t51, ptr %l3, !tbaa !27
  store i64 0, ptr %l4, !tbaa !24
  %t53 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t55 = extractvalue { i64, ptr } %t53, 0
  store i64 %t55, ptr %l5, !tbaa !24
  br label %bb16
bb16:
  store %olang.scope zeroinitializer, ptr %s4
  %t57 = load i64, ptr %l4, !tbaa !24
  %t58 = load i64, ptr %l5, !tbaa !24
  %t61 = icmp slt i64 %t57, %t58
  %t63 = xor i1 %t61, true
  br i1 %t63, label %bb17, label %bb18
bb17:
  call void @__olang_scope_close(ptr %s4)
  br label %bb33
bb18:
  br label %bb19
bb19:
  %t65 = load i64, ptr %l4, !tbaa !24
  store i64 %t65, ptr %l6, !tbaa !24
  %t67 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t67, ptr %l38, !tbaa !27
  %t68 = load i64, ptr %l4, !tbaa !24
  %t70 = getelementptr { i64, ptr }, ptr %l38, i32 0, i32 1
  %t71 = load ptr, ptr %t70, !tbaa !27
  %t72 = getelementptr ptr, ptr %t71, i64 %t68
  %t73 = load ptr, ptr %t72, !tbaa !39
  store ptr %t73, ptr %l7, !tbaa !29
  %t75 = load ptr, ptr %l0, !tbaa !29
  store ptr %t75, ptr %l41, !tbaa !29
  %t76 = load i64, ptr %l6, !tbaa !24
  %t78 = icmp sgt i64 %t76, 0
  br i1 %t78, label %bb20, label %bb21
bb20:
  store { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d136, i32 0, i32 1) }, ptr %l44, !tbaa !27
  br label %bb22
bb21:
  store { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d137, i32 0, i32 1) }, ptr %l44, !tbaa !27
  br label %bb22
bb22:
  %t80 = load ptr, ptr %l41, !tbaa !29
  %t81 = load { i64, ptr }, ptr %l44, !tbaa !27
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2eput(ptr %v0, ptr %s4, ptr %t80, { i64, ptr } %t81)
  br label %bb23
bb23:
  %t82 = load i64, ptr %l6, !tbaa !24
  %t83 = load ptr, ptr %l1, !tbaa !29
  %t85 = getelementptr %"compiler/ast:Sig", ptr %t83, i32 0, i32 1
  %t86 = load { i64, ptr }, ptr %t85, !tbaa !27
  %t88 = extractvalue { i64, ptr } %t86, 0
  %t90 = sub i64 %t88, 1
  %t93 = icmp eq i64 %t82, %t90
  br i1 %t93, label %bb24, label %bb25
bb24:
  %t95 = load ptr, ptr %l1, !tbaa !29
  %t97 = getelementptr %"compiler/ast:Sig", ptr %t95, i32 0, i32 2
  %t98 = load i1, ptr %t97, !tbaa !21
  store i1 %t98, ptr %l51, !tbaa !21
  br label %bb26
bb25:
  store i1 false, ptr %l51, !tbaa !21
  br label %bb26
bb26:
  %t100 = load i1, ptr %l51, !tbaa !21
  br i1 %t100, label %bb27, label %bb28
bb27:
  %t101 = load ptr, ptr %l0, !tbaa !29
  store ptr %t101, ptr %l54, !tbaa !29
  %t102 = load ptr, ptr %l7, !tbaa !29
  %t104 = call i1 @compiler_2funparse_2enoErrorsOf(ptr %v1, ptr %t102)
  store i1 %t104, ptr %l56
  br label %bb29
bb28:
  br label %bb30
bb29:
  %t105 = load i1, ptr %l56, !tbaa !21
  %t106 = load ptr, ptr %l54, !tbaa !29
  %t107 = getelementptr %"compiler/unparse:writer", ptr %t106, i32 0, i32 7
  store i1 %t105, ptr %t107, !tbaa !21
  br label %bb30
bb30:
  %t108 = load ptr, ptr %l0, !tbaa !29
  %t109 = load ptr, ptr %l7, !tbaa !29
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2ety(ptr %v0, ptr %v1, ptr %t108, ptr %t109)
  br label %bb31
bb31:
  %t112 = load ptr, ptr %l0, !tbaa !29
  %t114 = getelementptr %"compiler/unparse:writer", ptr %t112, i32 0, i32 7
  store i1 false, ptr %t114, !tbaa !21
  call void @__olang_scope_close(ptr %s4)
  br label %bb32
bb32:
  %t115 = load i64, ptr %l4, !tbaa !24
  %t117 = add i64 %t115, 1
  store i64 %t117, ptr %l4, !tbaa !24
  br label %bb16
bb33:
  %t119 = load ptr, ptr %l0, !tbaa !29
  %t120 = load i1, ptr %l2, !tbaa !21
  %t123 = getelementptr %"compiler/unparse:writer", ptr %t119, i32 0, i32 6
  store i1 %t120, ptr %t123, !tbaa !21
  %t124 = load ptr, ptr %l1, !tbaa !29
  %t126 = getelementptr %"compiler/ast:Sig", ptr %t124, i32 0, i32 6
  %t127 = load i1, ptr %t126, !tbaa !21
  br i1 %t127, label %bb34, label %bb35
bb34:
  store %olang.scope zeroinitializer, ptr %s7
  %t129 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2eput(ptr %v0, ptr %s7, ptr %t129, { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d138, i32 0, i32 1) })
  br label %bb36
bb35:
  br label %bb37
bb36:
  call void @__olang_scope_close(ptr %s7)
  br label %bb37
bb37:
  %t131 = load ptr, ptr %l0, !tbaa !29
  %t132 = load ptr, ptr %l1, !tbaa !29
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2eerrors(ptr %v0, ptr %v1, ptr %t131, ptr %t132)
  br label %bb38
bb38:
  %t135 = load ptr, ptr %l0, !tbaa !29
  %t136 = load ptr, ptr %l1, !tbaa !29
  %t138 = getelementptr %"compiler/ast:Sig", ptr %t136, i32 0, i32 8
  %t139 = load { i64, ptr }, ptr %t138, !tbaa !27
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2epromises(ptr %v0, ptr %v1, ptr %t135, { i64, ptr } %t139)
  br label %bb39
bb39:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2funparse_2ecompiler_2funparse_3awriter_2espan(ptr %v0, ptr %a0, %"compiler/source:Span" %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/source:Span"
  %l3 = alloca ptr
  %l5 = alloca { i64, ptr }
  %l7 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  store ptr %a0, ptr %l0
  store %"compiler/source:Span" %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/unparse:writer", ptr %t1, i32 0, i32 3
  store ptr %t3, ptr %l3, !tbaa !29
  %t4 = load ptr, ptr %l0, !tbaa !29
  %t6 = getelementptr %"compiler/unparse:writer", ptr %t4, i32 0, i32 1
  %t7 = load { i64, ptr }, ptr %t6, !tbaa !27
  store { i64, ptr } %t7, ptr %l5, !tbaa !27
  %t8 = getelementptr %"compiler/source:Span", ptr %l1, i32 0, i32 0
  %t9 = load i32, ptr %t8, !tbaa !23
  %t11 = sext i32 %t9 to i64
  store i64 %t11, ptr %l7, !tbaa !24
  %t12 = getelementptr %"compiler/source:Span", ptr %l1, i32 0, i32 1
  %t13 = load i32, ptr %t12, !tbaa !23
  %t15 = sext i32 %t13 to i64
  store i64 %t15, ptr %l9, !tbaa !24
  %t16 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t17 = extractvalue { i64, ptr } %t16, 0
  store i64 %t17, ptr %l10, !tbaa !24
  %t18 = load i64, ptr %l7, !tbaa !24
  %t19 = icmp sge i64 %t18, 0
  br i1 %t19, label %bb1, label %bb2
bb1:
  %t21 = load i64, ptr %l7, !tbaa !24
  %t22 = load i64, ptr %l9, !tbaa !24
  %t23 = icmp sle i64 %t21, %t22
  br i1 %t23, label %bb3, label %bb4
bb2:
  call void @__olang_check_failed(ptr @olang_loc_9c4378154f5f7dac_a032de2992525ef0)
  unreachable
bb3:
  %t25 = load i64, ptr %l9, !tbaa !24
  %t26 = load i64, ptr %l10, !tbaa !24
  %t27 = icmp sle i64 %t25, %t26
  br i1 %t27, label %bb5, label %bb6
bb4:
  call void @__olang_check_failed(ptr @olang_loc_9c4378154f5f7dac_a032de2992525ef0)
  unreachable
bb5:
  %t29 = getelementptr { i64, ptr }, ptr %l5, i32 0, i32 1
  %t30 = load ptr, ptr %t29, !tbaa !27
  %t31 = load i64, ptr %l7, !tbaa !24
  %t32 = load i64, ptr %l9, !tbaa !24
  %t33 = getelementptr i8, ptr %t30, i64 %t31
  %t34 = sub i64 %t32, %t31
  %t35 = insertvalue { i64, ptr } undef, i64 %t34, 0
  %t36 = insertvalue { i64, ptr } %t35, ptr %t33, 1
  %t37 = load ptr, ptr %l3, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v0, ptr %v0, ptr %t37, { i64, ptr } %t36)
  br label %bb7
bb6:
  call void @__olang_check_failed(ptr @olang_loc_9c4378154f5f7dac_a032de2992525ef0)
  unreachable
bb7:
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2funparse_2ecompiler_2funparse_3awriter_2estmt(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca ptr
  %l4 = alloca ptr
  %l5 = alloca i32
  %l6 = alloca ptr
  %l7 = alloca ptr
  %l8 = alloca ptr
  %l9 = alloca { i64, ptr }
  %l10 = alloca ptr
  %l11 = alloca { i64, ptr }
  %l12 = alloca ptr
  %l13 = alloca { i64, ptr }
  %l14 = alloca ptr
  %l15 = alloca ptr
  %l16 = alloca { i64, ptr }
  %l17 = alloca ptr
  %l18 = alloca ptr
  %l19 = alloca { i64, ptr }
  %l20 = alloca ptr
  %l21 = alloca ptr
  %l22 = alloca i32
  %l23 = alloca ptr
  %l24 = alloca ptr
  %l25 = alloca ptr
  %l26 = alloca ptr
  %l27 = alloca { i64, ptr }
  %l28 = alloca { i64, ptr }
  %l29 = alloca ptr
  %l30 = alloca ptr
  %l31 = alloca ptr
  %l32 = alloca i1
  %l33 = alloca { i64, ptr }
  %l34 = alloca ptr
  %l35 = alloca i1
  %l42 = alloca ptr
  %l43 = alloca i1
  %l50 = alloca ptr
  %l51 = alloca i1
  %l59 = alloca ptr
  %l62 = alloca { i64, ptr }
  %l66 = alloca ptr
  %l67 = alloca i1
  %l79 = alloca ptr
  %l81 = alloca { i64, ptr }
  %l85 = alloca ptr
  %l86 = alloca i1
  %l98 = alloca ptr
  %l99 = alloca i1
  %l106 = alloca ptr
  %l107 = alloca i1
  %l115 = alloca ptr
  %l116 = alloca i1
  %l128 = alloca ptr
  %l129 = alloca i1
  %l139 = alloca ptr
  %l152 = alloca ptr
  %l153 = alloca i1
  %l185 = alloca ptr
  %l186 = alloca i1
  %l199 = alloca ptr
  %l200 = alloca i1
  %l207 = alloca ptr
  %l208 = alloca i1
  %l220 = alloca ptr
  %l221 = alloca i1
  %l229 = alloca ptr
  %l230 = alloca i1
  %l238 = alloca ptr
  %l239 = alloca i1
  %l246 = alloca ptr
  %l248 = alloca { i64, ptr }
  %l255 = alloca ptr
  %l256 = alloca i1
  %l272 = alloca ptr
  %l273 = alloca i1
  %l294 = alloca ptr
  %l295 = alloca i1
  %l311 = alloca ptr
  %l312 = alloca i1
  %l327 = alloca ptr
  %l328 = alloca i1
  %l335 = alloca ptr
  %l337 = alloca { i64, ptr }
  %l340 = alloca ptr
  %l341 = alloca i1
  %s3 = alloca %olang.scope
  %s4 = alloca %olang.scope
  %s5 = alloca %olang.scope
  %s7 = alloca %olang.scope
  %s8 = alloca %olang.scope
  %s9 = alloca %olang.scope
  %s10 = alloca %olang.scope
  %s11 = alloca %olang.scope
  %s12 = alloca %olang.scope
  %s13 = alloca %olang.scope
  %s14 = alloca %olang.scope
  %s16 = alloca %olang.scope
  %s17 = alloca %olang.scope
  %s18 = alloca %olang.scope
  %s19 = alloca %olang.scope
  %s20 = alloca %olang.scope
  %s21 = alloca %olang.scope
  %s22 = alloca %olang.scope
  %s23 = alloca %olang.scope
  %s24 = alloca %olang.scope
  %s25 = alloca %olang.scope
  %s26 = alloca %olang.scope
  %s27 = alloca %olang.scope
  %s28 = alloca %olang.scope
  %s29 = alloca %olang.scope
  %s30 = alloca %olang.scope
  %s31 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l1, !tbaa !29
  store ptr %t1, ptr %l34, !tbaa !29
  store i1 false, ptr %l35, !tbaa !21
  %t2 = load ptr, ptr %l34, !tbaa !29
  %t3 = icmp ne ptr %t2, null
  br i1 %t3, label %bb1, label %bb2
bb1:
  %t5 = load ptr, ptr %l34, !tbaa !29
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 22}
  %t8 = icmp eq i64 %t6, 0
  store i1 %t8, ptr %l35, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l35, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  %t10 = load ptr, ptr %l1, !tbaa !29
  %t12 = getelementptr { i64, [4 x i64] }, ptr %t10, i32 0, i32 1
  %t13 = getelementptr { %"compiler/source:Span", ptr }, ptr %t12, i32 0, i32 1
  %t14 = load ptr, ptr %t13
  store ptr %t14, ptr %l2, !tbaa !29
  br label %bb5
bb4:
  br label %bb7
bb5:
  %t16 = load ptr, ptr %l0, !tbaa !29
  %t17 = load ptr, ptr %l2, !tbaa !29
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2eexpr(ptr %v0, ptr %v1, ptr %t16, ptr %t17)
  br label %bb6
bb6:
  br label %bb246
bb7:
  %t20 = load ptr, ptr %l1, !tbaa !29
  store ptr %t20, ptr %l42, !tbaa !29
  store i1 false, ptr %l43, !tbaa !21
  %t21 = load ptr, ptr %l42, !tbaa !29
  %t22 = icmp ne ptr %t21, null
  br i1 %t22, label %bb8, label %bb9
bb8:
  %t24 = load ptr, ptr %l42, !tbaa !29
  %t25 = load i64, ptr %t24, !range !{i64 0, i64 22}
  %t27 = icmp eq i64 %t25, 1
  store i1 %t27, ptr %l43, !tbaa !21
  br label %bb9
bb9:
  %t28 = load i1, ptr %l43, !tbaa !21
  br i1 %t28, label %bb10, label %bb11
bb10:
  %t29 = load ptr, ptr %l1, !tbaa !29
  %t31 = getelementptr { i64, [4 x i64] }, ptr %t29, i32 0, i32 1
  %t32 = getelementptr { %"compiler/source:Span", ptr }, ptr %t31, i32 0, i32 1
  %t33 = load ptr, ptr %t32
  store ptr %t33, ptr %l3, !tbaa !29
  br label %bb12
bb11:
  br label %bb14
bb12:
  %t35 = load ptr, ptr %l0, !tbaa !29
  %t36 = load ptr, ptr %l3, !tbaa !29
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2evarDecl(ptr %v0, ptr %v1, ptr %t35, ptr %t36)
  br label %bb13
bb13:
  br label %bb246
bb14:
  %t39 = load ptr, ptr %l1, !tbaa !29
  store ptr %t39, ptr %l50, !tbaa !29
  store i1 false, ptr %l51, !tbaa !21
  %t40 = load ptr, ptr %l50, !tbaa !29
  %t41 = icmp ne ptr %t40, null
  br i1 %t41, label %bb15, label %bb16
bb15:
  %t43 = load ptr, ptr %l50, !tbaa !29
  %t44 = load i64, ptr %t43, !range !{i64 0, i64 22}
  %t46 = icmp eq i64 %t44, 2
  store i1 %t46, ptr %l51, !tbaa !21
  br label %bb16
bb16:
  %t47 = load i1, ptr %l51, !tbaa !21
  br i1 %t47, label %bb17, label %bb18
bb17:
  %t48 = load ptr, ptr %l1, !tbaa !29
  %t50 = getelementptr { i64, [4 x i64] }, ptr %t48, i32 0, i32 1
  %t51 = getelementptr { %"compiler/source:Span", ptr }, ptr %t50, i32 0, i32 1
  %t52 = load ptr, ptr %t51
  store ptr %t52, ptr %l4, !tbaa !29
  br label %bb19
bb18:
  br label %bb26
bb19:
  store %olang.scope zeroinitializer, ptr %s3
  %t54 = load ptr, ptr %l0, !tbaa !29
  %t55 = load ptr, ptr %l4, !tbaa !29
  %t57 = getelementptr %"compiler/ast:Multi", ptr %t55, i32 0, i32 0
  %t58 = load { i64, ptr }, ptr %t57, !tbaa !27
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2eexprs(ptr %v0, ptr %v1, ptr %t54, { i64, ptr } %t58)
  br label %bb20
bb20:
  %t61 = load ptr, ptr %l0, !tbaa !29
  store ptr %t61, ptr %l59, !tbaa !29
  %t62 = load ptr, ptr %l4, !tbaa !29
  %t64 = getelementptr %"compiler/ast:Multi", ptr %t62, i32 0, i32 1
  %t65 = load i1, ptr %t64, !tbaa !21
  br i1 %t65, label %bb21, label %bb22
bb21:
  store { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d139, i32 0, i32 1) }, ptr %l62, !tbaa !27
  br label %bb23
bb22:
  store { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d140, i32 0, i32 1) }, ptr %l62, !tbaa !27
  br label %bb23
bb23:
  %t67 = load ptr, ptr %l59, !tbaa !29
  %t68 = load { i64, ptr }, ptr %l62, !tbaa !27
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2eput(ptr %v0, ptr %s3, ptr %t67, { i64, ptr } %t68)
  br label %bb24
bb24:
  %t69 = load ptr, ptr %l0, !tbaa !29
  %t70 = load ptr, ptr %l4, !tbaa !29
  %t72 = getelementptr %"compiler/ast:Multi", ptr %t70, i32 0, i32 2
  %t73 = load { i64, ptr }, ptr %t72, !tbaa !27
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2eexprs(ptr %v0, ptr %v1, ptr %t69, { i64, ptr } %t73)
  br label %bb25
bb25:
  call void @__olang_scope_close(ptr %s3)
  br label %bb246
bb26:
  %t76 = load ptr, ptr %l1, !tbaa !29
  store ptr %t76, ptr %l66, !tbaa !29
  store i1 false, ptr %l67, !tbaa !21
  %t77 = load ptr, ptr %l66, !tbaa !29
  %t78 = icmp ne ptr %t77, null
  br i1 %t78, label %bb27, label %bb28
bb27:
  %t80 = load ptr, ptr %l66, !tbaa !29
  %t81 = load i64, ptr %t80, !range !{i64 0, i64 22}
  %t83 = icmp eq i64 %t81, 3
  store i1 %t83, ptr %l67, !tbaa !21
  br label %bb28
bb28:
  %t84 = load i1, ptr %l67, !tbaa !21
  br i1 %t84, label %bb29, label %bb30
bb29:
  %t85 = load ptr, ptr %l1, !tbaa !29
  %t87 = getelementptr { i64, [4 x i64] }, ptr %t85, i32 0, i32 1
  %t88 = getelementptr { %"compiler/source:Span", i32, ptr, ptr }, ptr %t87, i32 0, i32 1
  %t89 = load i32, ptr %t88, !range !{i32 0, i32 114}
  store i32 %t89, ptr %l5
  %t91 = load ptr, ptr %l1, !tbaa !29
  %t93 = getelementptr { i64, [4 x i64] }, ptr %t91, i32 0, i32 1
  %t94 = getelementptr { %"compiler/source:Span", i32, ptr, ptr }, ptr %t93, i32 0, i32 2
  %t95 = load ptr, ptr %t94
  store ptr %t95, ptr %l6, !tbaa !29
  %t97 = load ptr, ptr %l1, !tbaa !29
  %t99 = getelementptr { i64, [4 x i64] }, ptr %t97, i32 0, i32 1
  %t100 = getelementptr { %"compiler/source:Span", i32, ptr, ptr }, ptr %t99, i32 0, i32 3
  %t101 = load ptr, ptr %t100
  store ptr %t101, ptr %l7, !tbaa !29
  br label %bb31
bb30:
  br label %bb38
bb31:
  store %olang.scope zeroinitializer, ptr %s4
  %t103 = load ptr, ptr %l0, !tbaa !29
  %t104 = load ptr, ptr %l6, !tbaa !29
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2eexpr(ptr %v0, ptr %v1, ptr %t103, ptr %t104)
  br label %bb32
bb32:
  %t107 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2eput(ptr %v0, ptr %s4, ptr %t107, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d141, i32 0, i32 1) })
  br label %bb33
bb33:
  %t109 = load ptr, ptr %l0, !tbaa !29
  store ptr %t109, ptr %l79, !tbaa !29
  %t110 = load i32, ptr %l5, !range !{i32 0, i32 114}
  %t112 = call { i64, ptr } @compiler_2ftoken_2ecompiler_2ftoken_3aTok_2eText(ptr %s4, i32 %t110)
  store { i64, ptr } %t112, ptr %l81
  br label %bb34
bb34:
  %t113 = load ptr, ptr %l79, !tbaa !29
  %t114 = load { i64, ptr }, ptr %l81, !tbaa !27
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2eput(ptr %v0, ptr %s4, ptr %t113, { i64, ptr } %t114)
  br label %bb35
bb35:
  %t115 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2eput(ptr %v0, ptr %s4, ptr %t115, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d142, i32 0, i32 1) })
  br label %bb36
bb36:
  %t117 = load ptr, ptr %l0, !tbaa !29
  %t118 = load ptr, ptr %l7, !tbaa !29
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2eexpr(ptr %v0, ptr %v1, ptr %t117, ptr %t118)
  br label %bb37
bb37:
  call void @__olang_scope_close(ptr %s4)
  br label %bb246
bb38:
  %t121 = load ptr, ptr %l1, !tbaa !29
  store ptr %t121, ptr %l85, !tbaa !29
  store i1 false, ptr %l86, !tbaa !21
  %t122 = load ptr, ptr %l85, !tbaa !29
  %t123 = icmp ne ptr %t122, null
  br i1 %t123, label %bb39, label %bb40
bb39:
  %t125 = load ptr, ptr %l85, !tbaa !29
  %t126 = load i64, ptr %t125, !range !{i64 0, i64 22}
  %t128 = icmp eq i64 %t126, 4
  store i1 %t128, ptr %l86, !tbaa !21
  br label %bb40
bb40:
  %t129 = load i1, ptr %l86, !tbaa !21
  br i1 %t129, label %bb41, label %bb42
bb41:
  %t130 = load ptr, ptr %l1, !tbaa !29
  %t132 = getelementptr { i64, [4 x i64] }, ptr %t130, i32 0, i32 1
  %t133 = getelementptr { %"compiler/source:Span", ptr, { i64, ptr } }, ptr %t132, i32 0, i32 1
  %t134 = load ptr, ptr %t133
  store ptr %t134, ptr %l8, !tbaa !29
  %t136 = load ptr, ptr %l1, !tbaa !29
  %t138 = getelementptr { i64, [4 x i64] }, ptr %t136, i32 0, i32 1
  %t139 = getelementptr { %"compiler/source:Span", ptr, { i64, ptr } }, ptr %t138, i32 0, i32 2
  %t140 = load { i64, ptr }, ptr %t139
  store { i64, ptr } %t140, ptr %l9, !tbaa !27
  br label %bb43
bb42:
  br label %bb47
bb43:
  store %olang.scope zeroinitializer, ptr %s5
  %t142 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2eput(ptr %v0, ptr %s5, ptr %t142, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d143, i32 0, i32 1) })
  br label %bb44
bb44:
  %t144 = load ptr, ptr %l0, !tbaa !29
  %t145 = load ptr, ptr %l8, !tbaa !29
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2estmt(ptr %v0, ptr %v1, ptr %t144, ptr %t145)
  br label %bb45
bb45:
  %t148 = load ptr, ptr %l0, !tbaa !29
  %t149 = load { i64, ptr }, ptr %l9, !tbaa !27
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2eclauses(ptr %v0, ptr %v1, ptr %t148, { i64, ptr } %t149)
  br label %bb46
bb46:
  call void @__olang_scope_close(ptr %s5)
  br label %bb246
bb47:
  %t152 = load ptr, ptr %l1, !tbaa !29
  store ptr %t152, ptr %l98, !tbaa !29
  store i1 false, ptr %l99, !tbaa !21
  %t153 = load ptr, ptr %l98, !tbaa !29
  %t154 = icmp ne ptr %t153, null
  br i1 %t154, label %bb48, label %bb49
bb48:
  %t156 = load ptr, ptr %l98, !tbaa !29
  %t157 = load i64, ptr %t156, !range !{i64 0, i64 22}
  %t159 = icmp eq i64 %t157, 5
  store i1 %t159, ptr %l99, !tbaa !21
  br label %bb49
bb49:
  %t160 = load i1, ptr %l99, !tbaa !21
  br i1 %t160, label %bb50, label %bb51
bb50:
  %t161 = load ptr, ptr %l1, !tbaa !29
  %t163 = getelementptr { i64, [4 x i64] }, ptr %t161, i32 0, i32 1
  %t164 = getelementptr { %"compiler/source:Span", ptr }, ptr %t163, i32 0, i32 1
  %t165 = load ptr, ptr %t164
  store ptr %t165, ptr %l10, !tbaa !29
  br label %bb52
bb51:
  br label %bb54
bb52:
  %t167 = load ptr, ptr %l0, !tbaa !29
  %t168 = load ptr, ptr %l10, !tbaa !29
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2eifStmt(ptr %v0, ptr %v1, ptr %t167, ptr %t168)
  br label %bb53
bb53:
  br label %bb246
bb54:
  %t171 = load ptr, ptr %l1, !tbaa !29
  store ptr %t171, ptr %l106, !tbaa !29
  store i1 false, ptr %l107, !tbaa !21
  %t172 = load ptr, ptr %l106, !tbaa !29
  %t173 = icmp ne ptr %t172, null
  br i1 %t173, label %bb55, label %bb56
bb55:
  %t175 = load ptr, ptr %l106, !tbaa !29
  %t176 = load i64, ptr %t175, !range !{i64 0, i64 22}
  %t178 = icmp eq i64 %t176, 6
  store i1 %t178, ptr %l107, !tbaa !21
  br label %bb56
bb56:
  %t179 = load i1, ptr %l107, !tbaa !21
  br i1 %t179, label %bb57, label %bb58
bb57:
  %t180 = load ptr, ptr %l1, !tbaa !29
  %t182 = getelementptr { i64, [4 x i64] }, ptr %t180, i32 0, i32 1
  %t183 = getelementptr { %"compiler/source:Span", { i64, ptr } }, ptr %t182, i32 0, i32 1
  %t184 = load { i64, ptr }, ptr %t183
  store { i64, ptr } %t184, ptr %l11, !tbaa !27
  br label %bb59
bb58:
  br label %bb62
bb59:
  store %olang.scope zeroinitializer, ptr %s7
  %t186 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2eput(ptr %v0, ptr %s7, ptr %t186, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d144, i32 0, i32 1) })
  br label %bb60
bb60:
  %t188 = load ptr, ptr %l0, !tbaa !29
  %t189 = load { i64, ptr }, ptr %l11, !tbaa !27
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2eblock(ptr %v0, ptr %v1, ptr %t188, { i64, ptr } %t189)
  br label %bb61
bb61:
  call void @__olang_scope_close(ptr %s7)
  br label %bb246
bb62:
  %t192 = load ptr, ptr %l1, !tbaa !29
  store ptr %t192, ptr %l115, !tbaa !29
  store i1 false, ptr %l116, !tbaa !21
  %t193 = load ptr, ptr %l115, !tbaa !29
  %t194 = icmp ne ptr %t193, null
  br i1 %t194, label %bb63, label %bb64
bb63:
  %t196 = load ptr, ptr %l115, !tbaa !29
  %t197 = load i64, ptr %t196, !range !{i64 0, i64 22}
  %t199 = icmp eq i64 %t197, 7
  store i1 %t199, ptr %l116, !tbaa !21
  br label %bb64
bb64:
  %t200 = load i1, ptr %l116, !tbaa !21
  br i1 %t200, label %bb65, label %bb66
bb65:
  %t201 = load ptr, ptr %l1, !tbaa !29
  %t203 = getelementptr { i64, [4 x i64] }, ptr %t201, i32 0, i32 1
  %t204 = getelementptr { %"compiler/source:Span", ptr, { i64, ptr } }, ptr %t203, i32 0, i32 1
  %t205 = load ptr, ptr %t204
  store ptr %t205, ptr %l12, !tbaa !29
  %t207 = load ptr, ptr %l1, !tbaa !29
  %t209 = getelementptr { i64, [4 x i64] }, ptr %t207, i32 0, i32 1
  %t210 = getelementptr { %"compiler/source:Span", ptr, { i64, ptr } }, ptr %t209, i32 0, i32 2
  %t211 = load { i64, ptr }, ptr %t210
  store { i64, ptr } %t211, ptr %l13, !tbaa !27
  br label %bb67
bb66:
  br label %bb71
bb67:
  store %olang.scope zeroinitializer, ptr %s8
  %t213 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2eput(ptr %v0, ptr %s8, ptr %t213, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d145, i32 0, i32 1) })
  br label %bb68
bb68:
  %t215 = load ptr, ptr %l0, !tbaa !29
  %t216 = load ptr, ptr %l12, !tbaa !29
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2eexpr(ptr %v0, ptr %v1, ptr %t215, ptr %t216)
  br label %bb69
bb69:
  %t219 = load ptr, ptr %l0, !tbaa !29
  %t220 = load { i64, ptr }, ptr %l13, !tbaa !27
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2ebody(ptr %v0, ptr %v1, ptr %t219, { i64, ptr } %t220)
  br label %bb70
bb70:
  call void @__olang_scope_close(ptr %s8)
  br label %bb246
bb71:
  %t223 = load ptr, ptr %l1, !tbaa !29
  store ptr %t223, ptr %l128, !tbaa !29
  store i1 false, ptr %l129, !tbaa !21
  %t224 = load ptr, ptr %l128, !tbaa !29
  %t225 = icmp ne ptr %t224, null
  br i1 %t225, label %bb72, label %bb73
bb72:
  %t227 = load ptr, ptr %l128, !tbaa !29
  %t228 = load i64, ptr %t227, !range !{i64 0, i64 22}
  %t230 = icmp eq i64 %t228, 8
  store i1 %t230, ptr %l129, !tbaa !21
  br label %bb73
bb73:
  %t231 = load i1, ptr %l129, !tbaa !21
  br i1 %t231, label %bb74, label %bb75
bb74:
  %t232 = load ptr, ptr %l1, !tbaa !29
  %t234 = getelementptr { i64, [4 x i64] }, ptr %t232, i32 0, i32 1
  %t235 = getelementptr { %"compiler/source:Span", ptr }, ptr %t234, i32 0, i32 1
  %t236 = load ptr, ptr %t235
  store ptr %t236, ptr %l14, !tbaa !29
  br label %bb76
bb75:
  br label %bb87
bb76:
  store %olang.scope zeroinitializer, ptr %s9
  %t238 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2eput(ptr %v0, ptr %s9, ptr %t238, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d146, i32 0, i32 1) })
  br label %bb77
bb77:
  %t240 = load ptr, ptr %l0, !tbaa !29
  %t241 = load ptr, ptr %l14, !tbaa !29
  %t243 = getelementptr %"compiler/ast:For3", ptr %t241, i32 0, i32 0
  %t244 = load ptr, ptr %t243, !tbaa !29
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2estmt(ptr %v0, ptr %v1, ptr %t240, ptr %t244)
  br label %bb78
bb78:
  %t247 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2eput(ptr %v0, ptr %s9, ptr %t247, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d147, i32 0, i32 1) })
  br label %bb79
bb79:
  %t249 = load ptr, ptr %l0, !tbaa !29
  store ptr %t249, ptr %l139, !tbaa !29
  %t250 = load ptr, ptr %l14, !tbaa !29
  %t252 = getelementptr %"compiler/ast:For3", ptr %t250, i32 0, i32 1
  %t253 = load ptr, ptr %t252, !tbaa !29
  %t255 = icmp eq ptr %t253, null
  br i1 %t255, label %bb80, label %bb81
bb80:
  call void @__olang_check_failed(ptr @olang_loc_b263a57856eac862_46b7b1031f9001a6)
  unreachable
bb81:
  br label %bb82
bb82:
  %t257 = load ptr, ptr %l14, !tbaa !29
  %t259 = getelementptr %"compiler/ast:For3", ptr %t257, i32 0, i32 1
  %t260 = load ptr, ptr %t259, !tbaa !29
  %t261 = load ptr, ptr %l139, !tbaa !29
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2eexpr(ptr %v0, ptr %v1, ptr %t261, ptr %t260)
  br label %bb83
bb83:
  %t263 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2eput(ptr %v0, ptr %s9, ptr %t263, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d148, i32 0, i32 1) })
  br label %bb84
bb84:
  %t265 = load ptr, ptr %l0, !tbaa !29
  %t266 = load ptr, ptr %l14, !tbaa !29
  %t268 = getelementptr %"compiler/ast:For3", ptr %t266, i32 0, i32 2
  %t269 = load ptr, ptr %t268, !tbaa !29
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2estmt(ptr %v0, ptr %v1, ptr %t265, ptr %t269)
  br label %bb85
bb85:
  %t272 = load ptr, ptr %l0, !tbaa !29
  %t273 = load ptr, ptr %l14, !tbaa !29
  %t275 = getelementptr %"compiler/ast:For3", ptr %t273, i32 0, i32 3
  %t276 = load { i64, ptr }, ptr %t275, !tbaa !27
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2ebody(ptr %v0, ptr %v1, ptr %t272, { i64, ptr } %t276)
  br label %bb86
bb86:
  call void @__olang_scope_close(ptr %s9)
  br label %bb246
bb87:
  %t279 = load ptr, ptr %l1, !tbaa !29
  store ptr %t279, ptr %l152, !tbaa !29
  store i1 false, ptr %l153, !tbaa !21
  %t280 = load ptr, ptr %l152, !tbaa !29
  %t281 = icmp ne ptr %t280, null
  br i1 %t281, label %bb88, label %bb89
bb88:
  %t283 = load ptr, ptr %l152, !tbaa !29
  %t284 = load i64, ptr %t283, !range !{i64 0, i64 22}
  %t286 = icmp eq i64 %t284, 9
  store i1 %t286, ptr %l153, !tbaa !21
  br label %bb89
bb89:
  %t287 = load i1, ptr %l153, !tbaa !21
  br i1 %t287, label %bb90, label %bb91
bb90:
  %t288 = load ptr, ptr %l1, !tbaa !29
  %t290 = getelementptr { i64, [4 x i64] }, ptr %t288, i32 0, i32 1
  %t291 = getelementptr { %"compiler/source:Span", ptr }, ptr %t290, i32 0, i32 1
  %t292 = load ptr, ptr %t291
  store ptr %t292, ptr %l15, !tbaa !29
  br label %bb92
bb91:
  br label %bb112
bb92:
  store %olang.scope zeroinitializer, ptr %s10
  %t294 = load ptr, ptr %l15, !tbaa !29
  %t296 = getelementptr %"compiler/ast:ForIn", ptr %t294, i32 0, i32 6
  %t297 = load i1, ptr %t296, !tbaa !21
  br i1 %t297, label %bb93, label %bb94
bb93:
  store %olang.scope zeroinitializer, ptr %s11
  %t299 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2eput(ptr %v0, ptr %s11, ptr %t299, { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d149, i32 0, i32 1) })
  br label %bb95
bb94:
  br label %bb96
bb95:
  call void @__olang_scope_close(ptr %s11)
  br label %bb96
bb96:
  %t301 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2eput(ptr %v0, ptr %s10, ptr %t301, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d150, i32 0, i32 1) })
  br label %bb97
bb97:
  %t303 = load ptr, ptr %l15, !tbaa !29
  %t305 = getelementptr %"compiler/ast:ForIn", ptr %t303, i32 0, i32 0
  %t306 = load i32, ptr %t305, !tbaa !23
  %t308 = icmp ne i32 %t306, 0
  br i1 %t308, label %bb98, label %bb99
bb98:
  store %olang.scope zeroinitializer, ptr %s12
  %t310 = load ptr, ptr %l0, !tbaa !29
  %t311 = load ptr, ptr %l15, !tbaa !29
  %t313 = getelementptr %"compiler/ast:ForIn", ptr %t311, i32 0, i32 0
  %t314 = load i32, ptr %t313, !tbaa !23
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2ename(ptr %v0, ptr %t310, i32 %t314)
  br label %bb100
bb99:
  br label %bb102
bb100:
  %t317 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2eput(ptr %v0, ptr %s12, ptr %t317, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d151, i32 0, i32 1) })
  br label %bb101
bb101:
  call void @__olang_scope_close(ptr %s12)
  br label %bb102
bb102:
  %t319 = load ptr, ptr %l0, !tbaa !29
  %t320 = load ptr, ptr %l15, !tbaa !29
  %t322 = getelementptr %"compiler/ast:ForIn", ptr %t320, i32 0, i32 1
  %t323 = load i32, ptr %t322, !tbaa !23
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2ename(ptr %v0, ptr %t319, i32 %t323)
  br label %bb103
bb103:
  %t326 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2eput(ptr %v0, ptr %s10, ptr %t326, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d152, i32 0, i32 1) })
  br label %bb104
bb104:
  %t328 = load ptr, ptr %l15, !tbaa !29
  %t330 = getelementptr %"compiler/ast:ForIn", ptr %t328, i32 0, i32 3
  %t331 = load i1, ptr %t330, !tbaa !21
  br i1 %t331, label %bb105, label %bb106
bb105:
  store %olang.scope zeroinitializer, ptr %s13
  %t333 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2eput(ptr %v0, ptr %s13, ptr %t333, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d153, i32 0, i32 1) })
  br label %bb107
bb106:
  br label %bb108
bb107:
  call void @__olang_scope_close(ptr %s13)
  br label %bb108
bb108:
  %t335 = load ptr, ptr %l0, !tbaa !29
  %t336 = load ptr, ptr %l15, !tbaa !29
  %t338 = getelementptr %"compiler/ast:ForIn", ptr %t336, i32 0, i32 2
  %t339 = load ptr, ptr %t338, !tbaa !29
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2eexpr(ptr %v0, ptr %v1, ptr %t335, ptr %t339)
  br label %bb109
bb109:
  %t342 = load ptr, ptr %l0, !tbaa !29
  %t343 = load ptr, ptr %l15, !tbaa !29
  %t345 = getelementptr %"compiler/ast:ForIn", ptr %t343, i32 0, i32 4
  %t346 = load { i64, ptr }, ptr %t345, !tbaa !27
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2ebody(ptr %v0, ptr %v1, ptr %t342, { i64, ptr } %t346)
  br label %bb110
bb110:
  %t349 = load ptr, ptr %l0, !tbaa !29
  %t350 = load ptr, ptr %l15, !tbaa !29
  %t352 = getelementptr %"compiler/ast:ForIn", ptr %t350, i32 0, i32 5
  %t353 = load { i64, ptr }, ptr %t352, !tbaa !27
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2eclauses(ptr %v0, ptr %v1, ptr %t349, { i64, ptr } %t353)
  br label %bb111
bb111:
  call void @__olang_scope_close(ptr %s10)
  br label %bb246
bb112:
  %t356 = load ptr, ptr %l1, !tbaa !29
  store ptr %t356, ptr %l185, !tbaa !29
  store i1 false, ptr %l186, !tbaa !21
  %t357 = load ptr, ptr %l185, !tbaa !29
  %t358 = icmp ne ptr %t357, null
  br i1 %t358, label %bb113, label %bb114
bb113:
  %t360 = load ptr, ptr %l185, !tbaa !29
  %t361 = load i64, ptr %t360, !range !{i64 0, i64 22}
  %t363 = icmp eq i64 %t361, 10
  store i1 %t363, ptr %l186, !tbaa !21
  br label %bb114
bb114:
  %t364 = load i1, ptr %l186, !tbaa !21
  br i1 %t364, label %bb115, label %bb116
bb115:
  %t365 = load ptr, ptr %l1, !tbaa !29
  %t367 = getelementptr { i64, [4 x i64] }, ptr %t365, i32 0, i32 1
  %t368 = getelementptr { %"compiler/source:Span", { i64, ptr }, ptr }, ptr %t367, i32 0, i32 1
  %t369 = load { i64, ptr }, ptr %t368
  store { i64, ptr } %t369, ptr %l16, !tbaa !27
  %t371 = load ptr, ptr %l1, !tbaa !29
  %t373 = getelementptr { i64, [4 x i64] }, ptr %t371, i32 0, i32 1
  %t374 = getelementptr { %"compiler/source:Span", { i64, ptr }, ptr }, ptr %t373, i32 0, i32 2
  %t375 = load ptr, ptr %t374
  store ptr %t375, ptr %l17, !tbaa !29
  br label %bb117
bb116:
  br label %bb122
bb117:
  store %olang.scope zeroinitializer, ptr %s14
  %t377 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2eput(ptr %v0, ptr %s14, ptr %t377, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d154, i32 0, i32 1) })
  br label %bb118
bb118:
  %t379 = load ptr, ptr %l0, !tbaa !29
  %t380 = load { i64, ptr }, ptr %l16, !tbaa !27
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2eblock(ptr %v0, ptr %v1, ptr %t379, { i64, ptr } %t380)
  br label %bb119
bb119:
  %t383 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2eput(ptr %v0, ptr %s14, ptr %t383, { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d155, i32 0, i32 1) })
  br label %bb120
bb120:
  %t385 = load ptr, ptr %l0, !tbaa !29
  %t386 = load ptr, ptr %l17, !tbaa !29
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2eexpr(ptr %v0, ptr %v1, ptr %t385, ptr %t386)
  br label %bb121
bb121:
  call void @__olang_scope_close(ptr %s14)
  br label %bb246
bb122:
  %t389 = load ptr, ptr %l1, !tbaa !29
  store ptr %t389, ptr %l199, !tbaa !29
  store i1 false, ptr %l200, !tbaa !21
  %t390 = load ptr, ptr %l199, !tbaa !29
  %t391 = icmp ne ptr %t390, null
  br i1 %t391, label %bb123, label %bb124
bb123:
  %t393 = load ptr, ptr %l199, !tbaa !29
  %t394 = load i64, ptr %t393, !range !{i64 0, i64 22}
  %t396 = icmp eq i64 %t394, 11
  store i1 %t396, ptr %l200, !tbaa !21
  br label %bb124
bb124:
  %t397 = load i1, ptr %l200, !tbaa !21
  br i1 %t397, label %bb125, label %bb126
bb125:
  %t398 = load ptr, ptr %l1, !tbaa !29
  %t400 = getelementptr { i64, [4 x i64] }, ptr %t398, i32 0, i32 1
  %t401 = getelementptr { %"compiler/source:Span", ptr }, ptr %t400, i32 0, i32 1
  %t402 = load ptr, ptr %t401
  store ptr %t402, ptr %l18, !tbaa !29
  br label %bb127
bb126:
  br label %bb129
bb127:
  %t404 = load ptr, ptr %l0, !tbaa !29
  %t405 = load ptr, ptr %l18, !tbaa !29
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2ematch(ptr %v0, ptr %v1, ptr %t404, ptr %t405)
  br label %bb128
bb128:
  br label %bb246
bb129:
  %t408 = load ptr, ptr %l1, !tbaa !29
  store ptr %t408, ptr %l207, !tbaa !29
  store i1 false, ptr %l208, !tbaa !21
  %t409 = load ptr, ptr %l207, !tbaa !29
  %t410 = icmp ne ptr %t409, null
  br i1 %t410, label %bb130, label %bb131
bb130:
  %t412 = load ptr, ptr %l207, !tbaa !29
  %t413 = load i64, ptr %t412, !range !{i64 0, i64 22}
  %t415 = icmp eq i64 %t413, 12
  store i1 %t415, ptr %l208, !tbaa !21
  br label %bb131
bb131:
  %t416 = load i1, ptr %l208, !tbaa !21
  br i1 %t416, label %bb132, label %bb133
bb132:
  %t417 = load ptr, ptr %l1, !tbaa !29
  %t419 = getelementptr { i64, [4 x i64] }, ptr %t417, i32 0, i32 1
  %t420 = getelementptr { %"compiler/source:Span", { i64, ptr } }, ptr %t419, i32 0, i32 1
  %t421 = load { i64, ptr }, ptr %t420
  store { i64, ptr } %t421, ptr %l19, !tbaa !27
  br label %bb134
bb133:
  br label %bb141
bb134:
  store %olang.scope zeroinitializer, ptr %s16
  %t423 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2eput(ptr %v0, ptr %s16, ptr %t423, { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d156, i32 0, i32 1) })
  br label %bb135
bb135:
  %t425 = load { i64, ptr }, ptr %l19, !tbaa !27
  %t427 = extractvalue { i64, ptr } %t425, 0
  %t429 = icmp sgt i64 %t427, 0
  br i1 %t429, label %bb136, label %bb137
bb136:
  store %olang.scope zeroinitializer, ptr %s17
  %t431 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2eput(ptr %v0, ptr %s17, ptr %t431, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d157, i32 0, i32 1) })
  br label %bb138
bb137:
  br label %bb140
bb138:
  %t433 = load ptr, ptr %l0, !tbaa !29
  %t434 = load { i64, ptr }, ptr %l19, !tbaa !27
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2eexprs(ptr %v0, ptr %v1, ptr %t433, { i64, ptr } %t434)
  br label %bb139
bb139:
  call void @__olang_scope_close(ptr %s17)
  br label %bb140
bb140:
  call void @__olang_scope_close(ptr %s16)
  br label %bb246
bb141:
  %t437 = load ptr, ptr %l1, !tbaa !29
  store ptr %t437, ptr %l220, !tbaa !29
  store i1 false, ptr %l221, !tbaa !21
  %t438 = load ptr, ptr %l220, !tbaa !29
  %t439 = icmp ne ptr %t438, null
  br i1 %t439, label %bb142, label %bb143
bb142:
  %t441 = load ptr, ptr %l220, !tbaa !29
  %t442 = load i64, ptr %t441, !range !{i64 0, i64 22}
  %t444 = icmp eq i64 %t442, 21
  store i1 %t444, ptr %l221, !tbaa !21
  br label %bb143
bb143:
  %t445 = load i1, ptr %l221, !tbaa !21
  br i1 %t445, label %bb144, label %bb145
bb144:
  %t446 = load ptr, ptr %l1, !tbaa !29
  %t448 = getelementptr { i64, [4 x i64] }, ptr %t446, i32 0, i32 1
  %t449 = getelementptr { %"compiler/source:Span", ptr }, ptr %t448, i32 0, i32 1
  %t450 = load ptr, ptr %t449
  store ptr %t450, ptr %l20, !tbaa !29
  br label %bb146
bb145:
  br label %bb149
bb146:
  store %olang.scope zeroinitializer, ptr %s18
  %t452 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2eput(ptr %v0, ptr %s18, ptr %t452, { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d158, i32 0, i32 1) })
  br label %bb147
bb147:
  %t454 = load ptr, ptr %l0, !tbaa !29
  %t455 = load ptr, ptr %l20, !tbaa !29
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2eexpr(ptr %v0, ptr %v1, ptr %t454, ptr %t455)
  br label %bb148
bb148:
  call void @__olang_scope_close(ptr %s18)
  br label %bb246
bb149:
  %t458 = load ptr, ptr %l1, !tbaa !29
  store ptr %t458, ptr %l229, !tbaa !29
  store i1 false, ptr %l230, !tbaa !21
  %t459 = load ptr, ptr %l229, !tbaa !29
  %t460 = icmp ne ptr %t459, null
  br i1 %t460, label %bb150, label %bb151
bb150:
  %t462 = load ptr, ptr %l229, !tbaa !29
  %t463 = load i64, ptr %t462, !range !{i64 0, i64 22}
  %t465 = icmp eq i64 %t463, 15
  store i1 %t465, ptr %l230, !tbaa !21
  br label %bb151
bb151:
  %t466 = load i1, ptr %l230, !tbaa !21
  br i1 %t466, label %bb152, label %bb153
bb152:
  %t467 = load ptr, ptr %l1, !tbaa !29
  %t469 = getelementptr { i64, [4 x i64] }, ptr %t467, i32 0, i32 1
  %t470 = getelementptr { %"compiler/source:Span", ptr }, ptr %t469, i32 0, i32 1
  %t471 = load ptr, ptr %t470
  store ptr %t471, ptr %l21, !tbaa !29
  br label %bb154
bb153:
  br label %bb157
bb154:
  store %olang.scope zeroinitializer, ptr %s19
  %t473 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2eput(ptr %v0, ptr %s19, ptr %t473, { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d159, i32 0, i32 1) })
  br label %bb155
bb155:
  %t475 = load ptr, ptr %l0, !tbaa !29
  %t476 = load ptr, ptr %l21, !tbaa !29
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2eexpr(ptr %v0, ptr %v1, ptr %t475, ptr %t476)
  br label %bb156
bb156:
  call void @__olang_scope_close(ptr %s19)
  br label %bb246
bb157:
  %t479 = load ptr, ptr %l1, !tbaa !29
  store ptr %t479, ptr %l238, !tbaa !29
  store i1 false, ptr %l239, !tbaa !21
  %t480 = load ptr, ptr %l238, !tbaa !29
  %t481 = icmp ne ptr %t480, null
  br i1 %t481, label %bb158, label %bb159
bb158:
  %t483 = load ptr, ptr %l238, !tbaa !29
  %t484 = load i64, ptr %t483, !range !{i64 0, i64 22}
  %t486 = icmp eq i64 %t484, 13
  store i1 %t486, ptr %l239, !tbaa !21
  br label %bb159
bb159:
  %t487 = load i1, ptr %l239, !tbaa !21
  br i1 %t487, label %bb160, label %bb161
bb160:
  %t488 = load ptr, ptr %l1, !tbaa !29
  %t490 = getelementptr { i64, [4 x i64] }, ptr %t488, i32 0, i32 1
  %t491 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t490, i32 0, i32 1
  %t492 = load i32, ptr %t491, !range !{i32 0, i32 114}
  store i32 %t492, ptr %l22
  %t494 = load ptr, ptr %l1, !tbaa !29
  %t496 = getelementptr { i64, [4 x i64] }, ptr %t494, i32 0, i32 1
  %t497 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t496, i32 0, i32 2
  %t498 = load ptr, ptr %t497
  store ptr %t498, ptr %l23, !tbaa !29
  br label %bb162
bb161:
  br label %bb170
bb162:
  store %olang.scope zeroinitializer, ptr %s20
  %t500 = load ptr, ptr %l0, !tbaa !29
  store ptr %t500, ptr %l246, !tbaa !29
  %t501 = load i32, ptr %l22, !range !{i32 0, i32 114}
  %t503 = call { i64, ptr } @compiler_2ftoken_2ecompiler_2ftoken_3aTok_2eText(ptr %s20, i32 %t501)
  store { i64, ptr } %t503, ptr %l248
  br label %bb163
bb163:
  %t504 = load ptr, ptr %l246, !tbaa !29
  %t505 = load { i64, ptr }, ptr %l248, !tbaa !27
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2eput(ptr %v0, ptr %s20, ptr %t504, { i64, ptr } %t505)
  br label %bb164
bb164:
  %t506 = load ptr, ptr %l23, !tbaa !29
  %t508 = icmp eq ptr %t506, null
  %t510 = xor i1 %t508, true
  br i1 %t510, label %bb165, label %bb166
bb165:
  store %olang.scope zeroinitializer, ptr %s21
  %t512 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2eput(ptr %v0, ptr %s21, ptr %t512, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d160, i32 0, i32 1) })
  br label %bb167
bb166:
  br label %bb169
bb167:
  %t514 = load ptr, ptr %l0, !tbaa !29
  %t515 = load ptr, ptr %l23, !tbaa !29
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2eexpr(ptr %v0, ptr %v1, ptr %t514, ptr %t515)
  br label %bb168
bb168:
  call void @__olang_scope_close(ptr %s21)
  br label %bb169
bb169:
  call void @__olang_scope_close(ptr %s20)
  br label %bb246
bb170:
  %t518 = load ptr, ptr %l1, !tbaa !29
  store ptr %t518, ptr %l255, !tbaa !29
  store i1 false, ptr %l256, !tbaa !21
  %t519 = load ptr, ptr %l255, !tbaa !29
  %t520 = icmp ne ptr %t519, null
  br i1 %t520, label %bb171, label %bb172
bb171:
  %t522 = load ptr, ptr %l255, !tbaa !29
  %t523 = load i64, ptr %t522, !range !{i64 0, i64 22}
  %t525 = icmp eq i64 %t523, 14
  store i1 %t525, ptr %l256, !tbaa !21
  br label %bb172
bb172:
  %t526 = load i1, ptr %l256, !tbaa !21
  br i1 %t526, label %bb173, label %bb174
bb173:
  %t527 = load ptr, ptr %l1, !tbaa !29
  %t529 = getelementptr { i64, [4 x i64] }, ptr %t527, i32 0, i32 1
  %t530 = getelementptr { %"compiler/source:Span", ptr, ptr }, ptr %t529, i32 0, i32 1
  %t531 = load ptr, ptr %t530
  store ptr %t531, ptr %l24, !tbaa !29
  %t533 = load ptr, ptr %l1, !tbaa !29
  %t535 = getelementptr { i64, [4 x i64] }, ptr %t533, i32 0, i32 1
  %t536 = getelementptr { %"compiler/source:Span", ptr, ptr }, ptr %t535, i32 0, i32 2
  %t537 = load ptr, ptr %t536
  store ptr %t537, ptr %l25, !tbaa !29
  br label %bb175
bb174:
  br label %bb183
bb175:
  store %olang.scope zeroinitializer, ptr %s22
  %t539 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2eput(ptr %v0, ptr %s22, ptr %t539, { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d161, i32 0, i32 1) })
  br label %bb176
bb176:
  %t541 = load ptr, ptr %l0, !tbaa !29
  %t542 = load ptr, ptr %l24, !tbaa !29
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2eexpr(ptr %v0, ptr %v1, ptr %t541, ptr %t542)
  br label %bb177
bb177:
  %t545 = load ptr, ptr %l25, !tbaa !29
  %t547 = icmp eq ptr %t545, null
  %t549 = xor i1 %t547, true
  br i1 %t549, label %bb178, label %bb179
bb178:
  store %olang.scope zeroinitializer, ptr %s23
  %t551 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2eput(ptr %v0, ptr %s23, ptr %t551, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d162, i32 0, i32 1) })
  br label %bb180
bb179:
  br label %bb182
bb180:
  %t553 = load ptr, ptr %l0, !tbaa !29
  %t554 = load ptr, ptr %l25, !tbaa !29
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2eexpr(ptr %v0, ptr %v1, ptr %t553, ptr %t554)
  br label %bb181
bb181:
  call void @__olang_scope_close(ptr %s23)
  br label %bb182
bb182:
  call void @__olang_scope_close(ptr %s22)
  br label %bb246
bb183:
  %t557 = load ptr, ptr %l1, !tbaa !29
  store ptr %t557, ptr %l272, !tbaa !29
  store i1 false, ptr %l273, !tbaa !21
  %t558 = load ptr, ptr %l272, !tbaa !29
  %t559 = icmp ne ptr %t558, null
  br i1 %t559, label %bb184, label %bb185
bb184:
  %t561 = load ptr, ptr %l272, !tbaa !29
  %t562 = load i64, ptr %t561, !range !{i64 0, i64 22}
  %t564 = icmp eq i64 %t562, 16
  store i1 %t564, ptr %l273, !tbaa !21
  br label %bb185
bb185:
  %t565 = load i1, ptr %l273, !tbaa !21
  br i1 %t565, label %bb186, label %bb187
bb186:
  %t566 = load ptr, ptr %l1, !tbaa !29
  %t568 = getelementptr { i64, [4 x i64] }, ptr %t566, i32 0, i32 1
  %t569 = getelementptr { %"compiler/source:Span", ptr, { i64, ptr } }, ptr %t568, i32 0, i32 1
  %t570 = load ptr, ptr %t569
  store ptr %t570, ptr %l26, !tbaa !29
  %t572 = load ptr, ptr %l1, !tbaa !29
  %t574 = getelementptr { i64, [4 x i64] }, ptr %t572, i32 0, i32 1
  %t575 = getelementptr { %"compiler/source:Span", ptr, { i64, ptr } }, ptr %t574, i32 0, i32 2
  %t576 = load { i64, ptr }, ptr %t575
  store { i64, ptr } %t576, ptr %l27, !tbaa !27
  br label %bb188
bb187:
  br label %bb201
bb188:
  store %olang.scope zeroinitializer, ptr %s24
  %t578 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2eput(ptr %v0, ptr %s24, ptr %t578, { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d163, i32 0, i32 1) })
  br label %bb189
bb189:
  %t580 = load ptr, ptr %l26, !tbaa !29
  %t582 = icmp eq ptr %t580, null
  %t584 = xor i1 %t582, true
  br i1 %t584, label %bb190, label %bb191
bb190:
  store %olang.scope zeroinitializer, ptr %s25
  %t586 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2eput(ptr %v0, ptr %s25, ptr %t586, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d164, i32 0, i32 1) })
  br label %bb192
bb191:
  br label %bb194
bb192:
  %t588 = load ptr, ptr %l0, !tbaa !29
  %t589 = load ptr, ptr %l26, !tbaa !29
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2epath(ptr %v0, ptr %v1, ptr %t588, ptr %t589)
  br label %bb193
bb193:
  call void @__olang_scope_close(ptr %s25)
  br label %bb194
bb194:
  %t592 = load { i64, ptr }, ptr %l27, !tbaa !27
  %t594 = extractvalue { i64, ptr } %t592, 0
  %t595 = extractvalue { i64, ptr } { i64 -1, ptr null }, 0
  %t596 = icmp eq i64 %t594, %t595
  %t597 = extractvalue { i64, ptr } %t592, 1
  %t598 = extractvalue { i64, ptr } { i64 -1, ptr null }, 1
  %t599 = icmp eq ptr %t597, %t598
  %t600 = and i1 %t596, %t599
  %t602 = xor i1 %t600, true
  br i1 %t602, label %bb195, label %bb196
bb195:
  store %olang.scope zeroinitializer, ptr %s26
  %t604 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2eput(ptr %v0, ptr %s26, ptr %t604, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d165, i32 0, i32 1) })
  br label %bb197
bb196:
  br label %bb200
bb197:
  %t606 = load ptr, ptr %l0, !tbaa !29
  %t607 = load { i64, ptr }, ptr %l27, !tbaa !27
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2eitems(ptr %v0, ptr %v1, ptr %t606, { i64, ptr } %t607)
  br label %bb198
bb198:
  %t610 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2eput(ptr %v0, ptr %s26, ptr %t610, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d166, i32 0, i32 1) })
  br label %bb199
bb199:
  call void @__olang_scope_close(ptr %s26)
  br label %bb200
bb200:
  call void @__olang_scope_close(ptr %s24)
  br label %bb246
bb201:
  %t612 = load ptr, ptr %l1, !tbaa !29
  store ptr %t612, ptr %l294, !tbaa !29
  store i1 false, ptr %l295, !tbaa !21
  %t613 = load ptr, ptr %l294, !tbaa !29
  %t614 = icmp ne ptr %t613, null
  br i1 %t614, label %bb202, label %bb203
bb202:
  %t616 = load ptr, ptr %l294, !tbaa !29
  %t617 = load i64, ptr %t616, !range !{i64 0, i64 22}
  %t619 = icmp eq i64 %t617, 17
  store i1 %t619, ptr %l295, !tbaa !21
  br label %bb203
bb203:
  %t620 = load i1, ptr %l295, !tbaa !21
  br i1 %t620, label %bb204, label %bb205
bb204:
  %t621 = load ptr, ptr %l1, !tbaa !29
  %t623 = getelementptr { i64, [4 x i64] }, ptr %t621, i32 0, i32 1
  %t624 = getelementptr { %"compiler/source:Span", { i64, ptr }, ptr }, ptr %t623, i32 0, i32 1
  %t625 = load { i64, ptr }, ptr %t624
  store { i64, ptr } %t625, ptr %l28, !tbaa !27
  %t627 = load ptr, ptr %l1, !tbaa !29
  %t629 = getelementptr { i64, [4 x i64] }, ptr %t627, i32 0, i32 1
  %t630 = getelementptr { %"compiler/source:Span", { i64, ptr }, ptr }, ptr %t629, i32 0, i32 2
  %t631 = load ptr, ptr %t630
  store ptr %t631, ptr %l29, !tbaa !29
  br label %bb206
bb205:
  br label %bb214
bb206:
  store %olang.scope zeroinitializer, ptr %s27
  %t633 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2eput(ptr %v0, ptr %s27, ptr %t633, { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d167, i32 0, i32 1) })
  br label %bb207
bb207:
  %t635 = load { i64, ptr }, ptr %l28, !tbaa !27
  %t637 = extractvalue { i64, ptr } %t635, 0
  %t639 = icmp sgt i64 %t637, 0
  br i1 %t639, label %bb208, label %bb209
bb208:
  store %olang.scope zeroinitializer, ptr %s28
  %t641 = load ptr, ptr %l0, !tbaa !29
  %t642 = load { i64, ptr }, ptr %l28, !tbaa !27
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2eexprs(ptr %v0, ptr %v1, ptr %t641, { i64, ptr } %t642)
  br label %bb210
bb209:
  br label %bb212
bb210:
  %t645 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2eput(ptr %v0, ptr %s28, ptr %t645, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d168, i32 0, i32 1) })
  br label %bb211
bb211:
  call void @__olang_scope_close(ptr %s28)
  br label %bb212
bb212:
  %t647 = load ptr, ptr %l0, !tbaa !29
  %t648 = load ptr, ptr %l29, !tbaa !29
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2eexpr(ptr %v0, ptr %v1, ptr %t647, ptr %t648)
  br label %bb213
bb213:
  call void @__olang_scope_close(ptr %s27)
  br label %bb246
bb214:
  %t651 = load ptr, ptr %l1, !tbaa !29
  store ptr %t651, ptr %l311, !tbaa !29
  store i1 false, ptr %l312, !tbaa !21
  %t652 = load ptr, ptr %l311, !tbaa !29
  %t653 = icmp ne ptr %t652, null
  br i1 %t653, label %bb215, label %bb216
bb215:
  %t655 = load ptr, ptr %l311, !tbaa !29
  %t656 = load i64, ptr %t655, !range !{i64 0, i64 22}
  %t658 = icmp eq i64 %t656, 18
  store i1 %t658, ptr %l312, !tbaa !21
  br label %bb216
bb216:
  %t659 = load i1, ptr %l312, !tbaa !21
  br i1 %t659, label %bb217, label %bb218
bb217:
  %t660 = load ptr, ptr %l1, !tbaa !29
  %t662 = getelementptr { i64, [4 x i64] }, ptr %t660, i32 0, i32 1
  %t663 = getelementptr { %"compiler/source:Span", ptr }, ptr %t662, i32 0, i32 1
  %t664 = load ptr, ptr %t663
  store ptr %t664, ptr %l30, !tbaa !29
  br label %bb219
bb218:
  br label %bb227
bb219:
  store %olang.scope zeroinitializer, ptr %s29
  %t666 = load ptr, ptr %l30, !tbaa !29
  %t668 = getelementptr %"compiler/ast:JoinS", ptr %t666, i32 0, i32 0
  %t669 = load i1, ptr %t668, !tbaa !21
  br i1 %t669, label %bb220, label %bb221
bb220:
  store %olang.scope zeroinitializer, ptr %s30
  %t671 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2eput(ptr %v0, ptr %s30, ptr %t671, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d169, i32 0, i32 1) })
  br label %bb222
bb221:
  br label %bb223
bb222:
  call void @__olang_scope_close(ptr %s30)
  br label %bb223
bb223:
  %t673 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2eput(ptr %v0, ptr %s29, ptr %t673, { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d170, i32 0, i32 1) })
  br label %bb224
bb224:
  %t675 = load ptr, ptr %l0, !tbaa !29
  %t676 = load ptr, ptr %l30, !tbaa !29
  %t678 = getelementptr %"compiler/ast:JoinS", ptr %t676, i32 0, i32 1
  %t679 = load { i64, ptr }, ptr %t678, !tbaa !27
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2eblock(ptr %v0, ptr %v1, ptr %t675, { i64, ptr } %t679)
  br label %bb225
bb225:
  %t682 = load ptr, ptr %l0, !tbaa !29
  %t683 = load ptr, ptr %l30, !tbaa !29
  %t685 = getelementptr %"compiler/ast:JoinS", ptr %t683, i32 0, i32 2
  %t686 = load { i64, ptr }, ptr %t685, !tbaa !27
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2eclauses(ptr %v0, ptr %v1, ptr %t682, { i64, ptr } %t686)
  br label %bb226
bb226:
  call void @__olang_scope_close(ptr %s29)
  br label %bb246
bb227:
  %t689 = load ptr, ptr %l1, !tbaa !29
  store ptr %t689, ptr %l327, !tbaa !29
  store i1 false, ptr %l328, !tbaa !21
  %t690 = load ptr, ptr %l327, !tbaa !29
  %t691 = icmp ne ptr %t690, null
  br i1 %t691, label %bb228, label %bb229
bb228:
  %t693 = load ptr, ptr %l327, !tbaa !29
  %t694 = load i64, ptr %t693, !range !{i64 0, i64 22}
  %t696 = icmp eq i64 %t694, 19
  store i1 %t696, ptr %l328, !tbaa !21
  br label %bb229
bb229:
  %t697 = load i1, ptr %l328, !tbaa !21
  br i1 %t697, label %bb230, label %bb231
bb230:
  %t698 = load ptr, ptr %l1, !tbaa !29
  %t700 = getelementptr { i64, [4 x i64] }, ptr %t698, i32 0, i32 1
  %t701 = getelementptr { %"compiler/source:Span", ptr, i1 }, ptr %t700, i32 0, i32 1
  %t702 = load ptr, ptr %t701
  store ptr %t702, ptr %l31, !tbaa !29
  %t704 = load ptr, ptr %l1, !tbaa !29
  %t706 = getelementptr { i64, [4 x i64] }, ptr %t704, i32 0, i32 1
  %t707 = getelementptr { %"compiler/source:Span", ptr, i1 }, ptr %t706, i32 0, i32 2
  %t708 = load i1, ptr %t707
  store i1 %t708, ptr %l32, !tbaa !21
  br label %bb232
bb231:
  br label %bb238
bb232:
  store %olang.scope zeroinitializer, ptr %s31
  %t710 = load ptr, ptr %l0, !tbaa !29
  store ptr %t710, ptr %l335, !tbaa !29
  %t711 = load i1, ptr %l32, !tbaa !21
  br i1 %t711, label %bb233, label %bb234
bb233:
  store { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d171, i32 0, i32 1) }, ptr %l337, !tbaa !27
  br label %bb235
bb234:
  store { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d172, i32 0, i32 1) }, ptr %l337, !tbaa !27
  br label %bb235
bb235:
  %t713 = load ptr, ptr %l335, !tbaa !29
  %t714 = load { i64, ptr }, ptr %l337, !tbaa !27
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2eput(ptr %v0, ptr %s31, ptr %t713, { i64, ptr } %t714)
  br label %bb236
bb236:
  %t715 = load ptr, ptr %l0, !tbaa !29
  %t716 = load ptr, ptr %l31, !tbaa !29
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2estmt(ptr %v0, ptr %v1, ptr %t715, ptr %t716)
  br label %bb237
bb237:
  call void @__olang_scope_close(ptr %s31)
  br label %bb246
bb238:
  %t719 = load ptr, ptr %l1, !tbaa !29
  store ptr %t719, ptr %l340, !tbaa !29
  store i1 false, ptr %l341, !tbaa !21
  %t720 = load ptr, ptr %l340, !tbaa !29
  %t721 = icmp ne ptr %t720, null
  br i1 %t721, label %bb239, label %bb240
bb239:
  %t723 = load ptr, ptr %l340, !tbaa !29
  %t724 = load i64, ptr %t723, !range !{i64 0, i64 22}
  %t726 = icmp eq i64 %t724, 20
  store i1 %t726, ptr %l341, !tbaa !21
  br label %bb240
bb240:
  %t727 = load i1, ptr %l341, !tbaa !21
  br i1 %t727, label %bb241, label %bb242
bb241:
  %t728 = load ptr, ptr %l1, !tbaa !29
  %t730 = getelementptr { i64, [4 x i64] }, ptr %t728, i32 0, i32 1
  %t731 = getelementptr { %"compiler/source:Span", { i64, ptr } }, ptr %t730, i32 0, i32 1
  %t732 = load { i64, ptr }, ptr %t731
  store { i64, ptr } %t732, ptr %l33, !tbaa !27
  br label %bb243
bb242:
  br label %bb245
bb243:
  %t734 = load ptr, ptr %l0, !tbaa !29
  %t735 = load { i64, ptr }, ptr %l33, !tbaa !27
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2eblock(ptr %v0, ptr %v1, ptr %t734, { i64, ptr } %t735)
  br label %bb244
bb244:
  br label %bb246
bb245:
  call void @__olang_check_failed(ptr @olang_loc_9166140a1ac8280_ddd22134593fa34)
  unreachable
bb246:
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2funparse_2ecompiler_2funparse_3awriter_2etopBranch(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca { i64, ptr }
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca ptr
  %l10 = alloca i1
  %l19 = alloca ptr
  %l30 = alloca { i64, ptr }
  %l34 = alloca i1
  %l40 = alloca ptr
  %s0 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/unparse:writer", ptr %t1, i32 0, i32 2
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t5 = load ptr, ptr %l1, !tbaa !29
  %t7 = getelementptr %"compiler/ast:TopBranch", ptr %t5, i32 0, i32 2
  %t8 = load i64, ptr %t7, !tbaa !24
  %t11 = call i1 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eHolds(ptr %v0, ptr %t4, i64 %t8)
  store i1 %t11, ptr %l10
  br label %bb1
bb1:
  %t12 = load i1, ptr %l10, !tbaa !21
  br i1 %t12, label %bb2, label %bb3
bb2:
  %t13 = load ptr, ptr %l0, !tbaa !29
  %t14 = load ptr, ptr %l1, !tbaa !29
  %t16 = getelementptr %"compiler/ast:TopBranch", ptr %t14, i32 0, i32 0
  %t17 = load %"compiler/source:Span", ptr %t16
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2espan(ptr %v0, ptr %t13, %"compiler/source:Span" %t17)
  br label %bb4
bb3:
  br label %bb6
bb4:
  %t20 = load ptr, ptr %l0, !tbaa !29
  %t22 = getelementptr %"compiler/unparse:writer", ptr %t20, i32 0, i32 5
  %t23 = load ptr, ptr %l1, !tbaa !29
  %t25 = getelementptr %"compiler/ast:TopBranch", ptr %t23, i32 0, i32 0
  %t26 = load %"compiler/source:Span", ptr %t25
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aSpan_3e_2ePush_3ccompiler_2fsource_3aSpan_3e(ptr %v0, ptr %t22, %"compiler/source:Span" %t26)
  br label %bb5
bb5:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb6:
  %t29 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2eput(ptr %v0, ptr %s0, ptr %t29, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d173, i32 0, i32 1) })
  br label %bb7
bb7:
  %t31 = load ptr, ptr %l0, !tbaa !29
  store ptr %t31, ptr %l19, !tbaa !29
  %t32 = load ptr, ptr %l19, !tbaa !29
  %t33 = getelementptr %"compiler/unparse:writer", ptr %t32, i32 0, i32 4
  %t34 = load i64, ptr %t33, !tbaa !24
  %t36 = add i64 %t34, 1
  %t38 = load ptr, ptr %l19, !tbaa !29
  %t39 = getelementptr %"compiler/unparse:writer", ptr %t38, i32 0, i32 4
  store i64 %t36, ptr %t39, !tbaa !24
  %t40 = load ptr, ptr %l1, !tbaa !29
  %t42 = getelementptr %"compiler/ast:TopBranch", ptr %t40, i32 0, i32 1
  %t43 = load { i64, ptr }, ptr %t42, !tbaa !27
  store { i64, ptr } %t43, ptr %l2, !tbaa !27
  store i64 0, ptr %l3, !tbaa !24
  %t45 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t47 = extractvalue { i64, ptr } %t45, 0
  store i64 %t47, ptr %l4, !tbaa !24
  br label %bb8
bb8:
  %t49 = load i64, ptr %l3, !tbaa !24
  %t50 = load i64, ptr %l4, !tbaa !24
  %t53 = icmp slt i64 %t49, %t50
  %t55 = xor i1 %t53, true
  br i1 %t55, label %bb9, label %bb10
bb9:
  br label %bb19
bb10:
  br label %bb11
bb11:
  %t57 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t57, ptr %l30, !tbaa !27
  %t58 = load i64, ptr %l3, !tbaa !24
  %t60 = getelementptr { i64, ptr }, ptr %l30, i32 0, i32 1
  %t61 = load ptr, ptr %t60, !tbaa !27
  %t62 = getelementptr ptr, ptr %t61, i64 %t58
  %t63 = load ptr, ptr %t62, !tbaa !39
  store ptr %t63, ptr %l5, !tbaa !29
  %t65 = load ptr, ptr %l5, !tbaa !29
  %t67 = call i1 @compiler_2funparse_2ehidden(ptr %v1, ptr %t65)
  store i1 %t67, ptr %l34
  br label %bb12
bb12:
  %t68 = load i1, ptr %l34, !tbaa !21
  br i1 %t68, label %bb13, label %bb14
bb13:
  br label %bb18
bb14:
  br label %bb15
bb15:
  %t69 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2enl(ptr %v0, ptr %t69)
  br label %bb16
bb16:
  %t71 = load ptr, ptr %l0, !tbaa !29
  %t72 = load ptr, ptr %l5, !tbaa !29
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2edecl(ptr %v0, ptr %v1, ptr %t71, ptr %t72)
  br label %bb17
bb17:
  br label %bb18
bb18:
  %t75 = load i64, ptr %l3, !tbaa !24
  %t77 = add i64 %t75, 1
  store i64 %t77, ptr %l3, !tbaa !24
  br label %bb8
bb19:
  %t79 = load ptr, ptr %l0, !tbaa !29
  store ptr %t79, ptr %l40, !tbaa !29
  %t80 = load ptr, ptr %l40, !tbaa !29
  %t81 = getelementptr %"compiler/unparse:writer", ptr %t80, i32 0, i32 4
  %t82 = load i64, ptr %t81, !tbaa !24
  %t84 = sub i64 %t82, 1
  %t86 = load ptr, ptr %l40, !tbaa !29
  %t87 = getelementptr %"compiler/unparse:writer", ptr %t86, i32 0, i32 4
  store i64 %t84, ptr %t87, !tbaa !24
  %t88 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2enl(ptr %v0, ptr %t88)
  br label %bb20
bb20:
  %t90 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2eput(ptr %v0, ptr %s0, ptr %t90, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d174, i32 0, i32 1) })
  br label %bb21
bb21:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2funparse_2ecompiler_2funparse_3awriter_2etopIf(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l3 = alloca ptr
  %l10 = alloca ptr
  %l21 = alloca ptr
  %l32 = alloca ptr
  %s0 = alloca %olang.scope
  %s1 = alloca %olang.scope
  %s3 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2eput(ptr %v0, ptr %s0, ptr %t1, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d175, i32 0, i32 1) })
  br label %bb1
bb1:
  %t3 = load ptr, ptr %l0, !tbaa !29
  store ptr %t3, ptr %l3, !tbaa !29
  %t4 = load ptr, ptr %l1, !tbaa !29
  %t6 = getelementptr %"compiler/ast:TopIf", ptr %t4, i32 0, i32 0
  %t7 = load ptr, ptr %t6, !tbaa !29
  %t9 = icmp eq ptr %t7, null
  br i1 %t9, label %bb2, label %bb3
bb2:
  call void @__olang_check_failed(ptr @olang_loc_69b21e264e8a714a_b3e97d9d77526506)
  unreachable
bb3:
  br label %bb4
bb4:
  %t11 = load ptr, ptr %l1, !tbaa !29
  %t13 = getelementptr %"compiler/ast:TopIf", ptr %t11, i32 0, i32 0
  %t14 = load ptr, ptr %t13, !tbaa !29
  %t15 = load ptr, ptr %l3, !tbaa !29
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2eexpr(ptr %v0, ptr %v1, ptr %t15, ptr %t14)
  br label %bb5
bb5:
  %t17 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2eput(ptr %v0, ptr %s0, ptr %t17, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d176, i32 0, i32 1) })
  br label %bb6
bb6:
  %t19 = load ptr, ptr %l0, !tbaa !29
  store ptr %t19, ptr %l10, !tbaa !29
  %t20 = load ptr, ptr %l1, !tbaa !29
  %t22 = getelementptr %"compiler/ast:TopIf", ptr %t20, i32 0, i32 1
  %t23 = load ptr, ptr %t22, !tbaa !29
  %t25 = icmp eq ptr %t23, null
  br i1 %t25, label %bb7, label %bb8
bb7:
  call void @__olang_check_failed(ptr @olang_loc_8585d6fe8f316a51_b60a12ce50df87ed)
  unreachable
bb8:
  br label %bb9
bb9:
  %t27 = load ptr, ptr %l1, !tbaa !29
  %t29 = getelementptr %"compiler/ast:TopIf", ptr %t27, i32 0, i32 1
  %t30 = load ptr, ptr %t29, !tbaa !29
  %t31 = load ptr, ptr %l10, !tbaa !29
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2etopBranch(ptr %v0, ptr %v1, ptr %t31, ptr %t30)
  br label %bb10
bb10:
  %t33 = load ptr, ptr %l1, !tbaa !29
  %t35 = getelementptr %"compiler/ast:TopIf", ptr %t33, i32 0, i32 2
  %t36 = load ptr, ptr %t35, !tbaa !29
  %t38 = icmp eq ptr %t36, null
  %t40 = xor i1 %t38, true
  br i1 %t40, label %bb11, label %bb12
bb11:
  store %olang.scope zeroinitializer, ptr %s1
  %t42 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2eput(ptr %v0, ptr %s1, ptr %t42, { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d177, i32 0, i32 1) })
  br label %bb13
bb12:
  %t44 = load ptr, ptr %l1, !tbaa !29
  %t46 = getelementptr %"compiler/ast:TopIf", ptr %t44, i32 0, i32 3
  %t47 = load ptr, ptr %t46, !tbaa !29
  %t49 = icmp eq ptr %t47, null
  %t51 = xor i1 %t49, true
  br i1 %t51, label %bb18, label %bb19
bb13:
  %t53 = load ptr, ptr %l0, !tbaa !29
  store ptr %t53, ptr %l21, !tbaa !29
  %t54 = load ptr, ptr %l1, !tbaa !29
  %t56 = getelementptr %"compiler/ast:TopIf", ptr %t54, i32 0, i32 2
  %t57 = load ptr, ptr %t56, !tbaa !29
  %t59 = icmp eq ptr %t57, null
  br i1 %t59, label %bb14, label %bb15
bb14:
  call void @__olang_check_failed(ptr @olang_loc_eabe3ddcfaef285c_106dba970e52f8d8)
  unreachable
bb15:
  br label %bb16
bb16:
  %t61 = load ptr, ptr %l1, !tbaa !29
  %t63 = getelementptr %"compiler/ast:TopIf", ptr %t61, i32 0, i32 2
  %t64 = load ptr, ptr %t63, !tbaa !29
  %t65 = load ptr, ptr %l21, !tbaa !29
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2etopIf(ptr %v0, ptr %v1, ptr %t65, ptr %t64)
  br label %bb17
bb17:
  call void @__olang_scope_close(ptr %s1)
  br label %bb26
bb18:
  store %olang.scope zeroinitializer, ptr %s3
  %t67 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2eput(ptr %v0, ptr %s3, ptr %t67, { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d178, i32 0, i32 1) })
  br label %bb20
bb19:
  br label %bb25
bb20:
  %t69 = load ptr, ptr %l0, !tbaa !29
  store ptr %t69, ptr %l32, !tbaa !29
  %t70 = load ptr, ptr %l1, !tbaa !29
  %t72 = getelementptr %"compiler/ast:TopIf", ptr %t70, i32 0, i32 3
  %t73 = load ptr, ptr %t72, !tbaa !29
  %t75 = icmp eq ptr %t73, null
  br i1 %t75, label %bb21, label %bb22
bb21:
  call void @__olang_check_failed(ptr @olang_loc_14b8182deed7e34b_cfe8cf3ea4c448f7)
  unreachable
bb22:
  br label %bb23
bb23:
  %t77 = load ptr, ptr %l1, !tbaa !29
  %t79 = getelementptr %"compiler/ast:TopIf", ptr %t77, i32 0, i32 3
  %t80 = load ptr, ptr %t79, !tbaa !29
  %t81 = load ptr, ptr %l32, !tbaa !29
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2etopBranch(ptr %v0, ptr %v1, ptr %t81, ptr %t80)
  br label %bb24
bb24:
  call void @__olang_scope_close(ptr %s3)
  br label %bb25
bb25:
  br label %bb26
bb26:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2funparse_2ecompiler_2funparse_3awriter_2ety(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca { i64, ptr }
  %l3 = alloca { i64, ptr }
  %l4 = alloca { i64, ptr }
  %l5 = alloca i64
  %l6 = alloca i64
  %l8 = alloca i32
  %l9 = alloca ptr
  %l10 = alloca ptr
  %l11 = alloca ptr
  %l12 = alloca i1
  %l13 = alloca i1
  %l14 = alloca ptr
  %l15 = alloca ptr
  %l16 = alloca ptr
  %l17 = alloca { i64, ptr }
  %l18 = alloca { i64, ptr }
  %l19 = alloca i64
  %l20 = alloca i64
  %l22 = alloca ptr
  %l23 = alloca ptr
  %l24 = alloca i1
  %l25 = alloca ptr
  %l26 = alloca i1
  %l41 = alloca { i64, ptr }
  %l58 = alloca ptr
  %l59 = alloca i1
  %l66 = alloca ptr
  %l67 = alloca i1
  %l74 = alloca ptr
  %l75 = alloca i1
  %l87 = alloca ptr
  %l91 = alloca ptr
  %l92 = alloca ptr
  %l94 = alloca { i64, ptr }
  %l97 = alloca ptr
  %l99 = alloca { i64, ptr }
  %l100 = alloca ptr
  %l101 = alloca i1
  %l109 = alloca ptr
  %l110 = alloca i1
  %l118 = alloca ptr
  %l119 = alloca i1
  %l133 = alloca { i64, ptr }
  %l143 = alloca ptr
  %l144 = alloca i1
  %l154 = alloca i1
  %l156 = alloca i1
  %l157 = alloca ptr
  %l159 = alloca { i64, ptr }
  %l160 = alloca ptr
  %l162 = alloca ptr
  %s4 = alloca %olang.scope
  %s6 = alloca %olang.scope
  %s7 = alloca %olang.scope
  %s10 = alloca %olang.scope
  %s11 = alloca %olang.scope
  %s12 = alloca %olang.scope
  %s13 = alloca %olang.scope
  %s14 = alloca %olang.scope
  %s15 = alloca %olang.scope
  %s18 = alloca %olang.scope
  %s21 = alloca %olang.scope
  %s22 = alloca %olang.scope
  %s23 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l1, !tbaa !29
  store ptr %t1, ptr %l25, !tbaa !29
  store i1 false, ptr %l26, !tbaa !21
  %t2 = load ptr, ptr %l25, !tbaa !29
  %t3 = icmp ne ptr %t2, null
  br i1 %t3, label %bb1, label %bb2
bb1:
  %t5 = load ptr, ptr %l25, !tbaa !29
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 8}
  %t8 = icmp eq i64 %t6, 0
  store i1 %t8, ptr %l26, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l26, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  %t10 = load ptr, ptr %l1, !tbaa !29
  %t12 = getelementptr { i64, [5 x i64] }, ptr %t10, i32 0, i32 1
  %t13 = getelementptr { %"compiler/source:Span", { i64, ptr }, { i64, ptr } }, ptr %t12, i32 0, i32 1
  %t14 = load { i64, ptr }, ptr %t13
  store { i64, ptr } %t14, ptr %l2, !tbaa !27
  %t16 = load ptr, ptr %l1, !tbaa !29
  %t18 = getelementptr { i64, [5 x i64] }, ptr %t16, i32 0, i32 1
  %t19 = getelementptr { %"compiler/source:Span", { i64, ptr }, { i64, ptr } }, ptr %t18, i32 0, i32 2
  %t20 = load { i64, ptr }, ptr %t19
  store { i64, ptr } %t20, ptr %l3, !tbaa !27
  br label %bb5
bb4:
  br label %bb23
bb5:
  %t22 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t22, ptr %l4, !tbaa !27
  store i64 0, ptr %l5, !tbaa !24
  %t24 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t26 = extractvalue { i64, ptr } %t24, 0
  store i64 %t26, ptr %l6, !tbaa !24
  br label %bb6
bb6:
  %t28 = load i64, ptr %l5, !tbaa !24
  %t29 = load i64, ptr %l6, !tbaa !24
  %t32 = icmp slt i64 %t28, %t29
  %t34 = xor i1 %t32, true
  br i1 %t34, label %bb7, label %bb8
bb7:
  br label %bb16
bb8:
  br label %bb9
bb9:
  %t36 = load i64, ptr %l5, !tbaa !24
  %t38 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t38, ptr %l41, !tbaa !27
  %t39 = load i64, ptr %l5, !tbaa !24
  %t41 = getelementptr { i64, ptr }, ptr %l41, i32 0, i32 1
  %t42 = load ptr, ptr %t41, !tbaa !27
  %t43 = getelementptr i32, ptr %t42, i64 %t39
  %t44 = load i32, ptr %t43, !tbaa !33
  store i32 %t44, ptr %l8, !tbaa !23
  %t48 = icmp sgt i64 %t36, 0
  br i1 %t48, label %bb10, label %bb11
bb10:
  store %olang.scope zeroinitializer, ptr %s4
  %t50 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2eput(ptr %v0, ptr %s4, ptr %t50, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d179, i32 0, i32 1) })
  br label %bb12
bb11:
  br label %bb13
bb12:
  call void @__olang_scope_close(ptr %s4)
  br label %bb13
bb13:
  %t52 = load ptr, ptr %l0, !tbaa !29
  %t53 = load i32, ptr %l8, !tbaa !23
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2ename(ptr %v0, ptr %t52, i32 %t53)
  br label %bb14
bb14:
  br label %bb15
bb15:
  %t56 = load i64, ptr %l5, !tbaa !24
  %t58 = add i64 %t56, 1
  store i64 %t58, ptr %l5, !tbaa !24
  br label %bb6
bb16:
  %t60 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t62 = extractvalue { i64, ptr } %t60, 0
  %t64 = icmp sgt i64 %t62, 0
  br i1 %t64, label %bb17, label %bb18
bb17:
  store %olang.scope zeroinitializer, ptr %s6
  %t66 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2eput(ptr %v0, ptr %s6, ptr %t66, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d180, i32 0, i32 1) })
  br label %bb19
bb18:
  br label %bb22
bb19:
  %t68 = load ptr, ptr %l0, !tbaa !29
  %t69 = load { i64, ptr }, ptr %l3, !tbaa !27
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2etypes(ptr %v0, ptr %v1, ptr %t68, { i64, ptr } %t69)
  br label %bb20
bb20:
  %t72 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2eput(ptr %v0, ptr %s6, ptr %t72, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d181, i32 0, i32 1) })
  br label %bb21
bb21:
  call void @__olang_scope_close(ptr %s6)
  br label %bb22
bb22:
  br label %bb123
bb23:
  %t74 = load ptr, ptr %l1, !tbaa !29
  store ptr %t74, ptr %l58, !tbaa !29
  store i1 false, ptr %l59, !tbaa !21
  %t75 = load ptr, ptr %l58, !tbaa !29
  %t76 = icmp ne ptr %t75, null
  br i1 %t76, label %bb24, label %bb25
bb24:
  %t78 = load ptr, ptr %l58, !tbaa !29
  %t79 = load i64, ptr %t78, !range !{i64 0, i64 8}
  %t81 = icmp eq i64 %t79, 1
  store i1 %t81, ptr %l59, !tbaa !21
  br label %bb25
bb25:
  %t82 = load i1, ptr %l59, !tbaa !21
  br i1 %t82, label %bb26, label %bb27
bb26:
  %t83 = load ptr, ptr %l1, !tbaa !29
  %t85 = getelementptr { i64, [5 x i64] }, ptr %t83, i32 0, i32 1
  %t86 = getelementptr { %"compiler/source:Span", ptr }, ptr %t85, i32 0, i32 1
  %t87 = load ptr, ptr %t86
  store ptr %t87, ptr %l9, !tbaa !29
  br label %bb28
bb27:
  br label %bb30
bb28:
  store %olang.scope zeroinitializer, ptr %s7
  %t89 = load ptr, ptr %l0, !tbaa !29
  %t90 = load ptr, ptr %l9, !tbaa !29
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2efuncType(ptr %v0, ptr %v1, ptr %s7, ptr %t89, ptr %t90, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d182, i32 0, i32 1) })
  br label %bb29
bb29:
  call void @__olang_scope_close(ptr %s7)
  br label %bb123
bb30:
  %t93 = load ptr, ptr %l1, !tbaa !29
  store ptr %t93, ptr %l66, !tbaa !29
  store i1 false, ptr %l67, !tbaa !21
  %t94 = load ptr, ptr %l66, !tbaa !29
  %t95 = icmp ne ptr %t94, null
  br i1 %t95, label %bb31, label %bb32
bb31:
  %t97 = load ptr, ptr %l66, !tbaa !29
  %t98 = load i64, ptr %t97, !range !{i64 0, i64 8}
  %t100 = icmp eq i64 %t98, 2
  store i1 %t100, ptr %l67, !tbaa !21
  br label %bb32
bb32:
  %t101 = load i1, ptr %l67, !tbaa !21
  br i1 %t101, label %bb33, label %bb34
bb33:
  %t102 = load ptr, ptr %l1, !tbaa !29
  %t104 = getelementptr { i64, [5 x i64] }, ptr %t102, i32 0, i32 1
  %t105 = getelementptr { %"compiler/source:Span", ptr }, ptr %t104, i32 0, i32 1
  %t106 = load ptr, ptr %t105
  store ptr %t106, ptr %l10, !tbaa !29
  br label %bb35
bb34:
  br label %bb37
bb35:
  %t108 = load ptr, ptr %l0, !tbaa !29
  %t109 = load ptr, ptr %l10, !tbaa !29
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2etypeBody(ptr %v0, ptr %v1, ptr %t108, ptr %t109)
  br label %bb36
bb36:
  br label %bb123
bb37:
  %t112 = load ptr, ptr %l1, !tbaa !29
  store ptr %t112, ptr %l74, !tbaa !29
  store i1 false, ptr %l75, !tbaa !21
  %t113 = load ptr, ptr %l74, !tbaa !29
  %t114 = icmp ne ptr %t113, null
  br i1 %t114, label %bb38, label %bb39
bb38:
  %t116 = load ptr, ptr %l74, !tbaa !29
  %t117 = load i64, ptr %t116, !range !{i64 0, i64 8}
  %t119 = icmp eq i64 %t117, 3
  store i1 %t119, ptr %l75, !tbaa !21
  br label %bb39
bb39:
  %t120 = load i1, ptr %l75, !tbaa !21
  br i1 %t120, label %bb40, label %bb41
bb40:
  %t121 = load ptr, ptr %l1, !tbaa !29
  %t123 = getelementptr { i64, [5 x i64] }, ptr %t121, i32 0, i32 1
  %t124 = getelementptr { %"compiler/source:Span", ptr, i1, i1 }, ptr %t123, i32 0, i32 1
  %t125 = load ptr, ptr %t124
  store ptr %t125, ptr %l11, !tbaa !29
  %t127 = load ptr, ptr %l1, !tbaa !29
  %t129 = getelementptr { i64, [5 x i64] }, ptr %t127, i32 0, i32 1
  %t130 = getelementptr { %"compiler/source:Span", ptr, i1, i1 }, ptr %t129, i32 0, i32 2
  %t131 = load i1, ptr %t130
  store i1 %t131, ptr %l12, !tbaa !21
  %t133 = load ptr, ptr %l1, !tbaa !29
  %t135 = getelementptr { i64, [5 x i64] }, ptr %t133, i32 0, i32 1
  %t136 = getelementptr { %"compiler/source:Span", ptr, i1, i1 }, ptr %t135, i32 0, i32 3
  %t137 = load i1, ptr %t136
  store i1 %t137, ptr %l13, !tbaa !21
  br label %bb42
bb41:
  br label %bb60
bb42:
  %t139 = load i1, ptr %l13, !tbaa !21
  br i1 %t139, label %bb43, label %bb44
bb43:
  store %olang.scope zeroinitializer, ptr %s10
  %t141 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2eput(ptr %v0, ptr %s10, ptr %t141, { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d183, i32 0, i32 1) })
  br label %bb45
bb44:
  br label %bb46
bb45:
  call void @__olang_scope_close(ptr %s10)
  br label %bb46
bb46:
  %t143 = load ptr, ptr %l11, !tbaa !29
  %t145 = call ptr @compiler_2fast_2ecompiler_2fast_3aTypeRef_2eFuncSig(ptr %v1, ptr %v1, ptr %t143)
  store ptr %t145, ptr %l87
  br label %bb47
bb47:
  %t146 = load ptr, ptr %l87, !tbaa !29
  store ptr %t146, ptr %l14, !tbaa !29
  %t147 = load ptr, ptr %l14, !tbaa !29
  %t149 = icmp eq ptr %t147, null
  %t151 = xor i1 %t149, true
  br i1 %t151, label %bb48, label %bb49
bb48:
  store %olang.scope zeroinitializer, ptr %s11
  %t153 = load ptr, ptr %l0, !tbaa !29
  store ptr %t153, ptr %l91, !tbaa !29
  %t154 = load ptr, ptr %l14, !tbaa !29
  store ptr %t154, ptr %l92, !tbaa !29
  %t155 = load i1, ptr %l12, !tbaa !21
  br i1 %t155, label %bb50, label %bb51
bb49:
  store %olang.scope zeroinitializer, ptr %s12
  %t157 = load ptr, ptr %l0, !tbaa !29
  %t158 = load ptr, ptr %l11, !tbaa !29
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2ety(ptr %v0, ptr %v1, ptr %t157, ptr %t158)
  br label %bb54
bb50:
  store { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d184, i32 0, i32 1) }, ptr %l94, !tbaa !27
  br label %bb52
bb51:
  store { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d185, i32 0, i32 1) }, ptr %l94, !tbaa !27
  br label %bb52
bb52:
  %t161 = load ptr, ptr %l91, !tbaa !29
  %t162 = load ptr, ptr %l92, !tbaa !29
  %t163 = load { i64, ptr }, ptr %l94, !tbaa !27
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2efuncType(ptr %v0, ptr %v1, ptr %s11, ptr %t161, ptr %t162, { i64, ptr } %t163)
  br label %bb53
bb53:
  call void @__olang_scope_close(ptr %s11)
  br label %bb59
bb54:
  %t164 = load ptr, ptr %l0, !tbaa !29
  store ptr %t164, ptr %l97, !tbaa !29
  %t165 = load i1, ptr %l12, !tbaa !21
  br i1 %t165, label %bb55, label %bb56
bb55:
  store { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d186, i32 0, i32 1) }, ptr %l99, !tbaa !27
  br label %bb57
bb56:
  store { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d187, i32 0, i32 1) }, ptr %l99, !tbaa !27
  br label %bb57
bb57:
  %t167 = load ptr, ptr %l97, !tbaa !29
  %t168 = load { i64, ptr }, ptr %l99, !tbaa !27
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2eput(ptr %v0, ptr %s12, ptr %t167, { i64, ptr } %t168)
  br label %bb58
bb58:
  call void @__olang_scope_close(ptr %s12)
  br label %bb59
bb59:
  br label %bb123
bb60:
  %t169 = load ptr, ptr %l1, !tbaa !29
  store ptr %t169, ptr %l100, !tbaa !29
  store i1 false, ptr %l101, !tbaa !21
  %t170 = load ptr, ptr %l100, !tbaa !29
  %t171 = icmp ne ptr %t170, null
  br i1 %t171, label %bb61, label %bb62
bb61:
  %t173 = load ptr, ptr %l100, !tbaa !29
  %t174 = load i64, ptr %t173, !range !{i64 0, i64 8}
  %t176 = icmp eq i64 %t174, 5
  store i1 %t176, ptr %l101, !tbaa !21
  br label %bb62
bb62:
  %t177 = load i1, ptr %l101, !tbaa !21
  br i1 %t177, label %bb63, label %bb64
bb63:
  %t178 = load ptr, ptr %l1, !tbaa !29
  %t180 = getelementptr { i64, [5 x i64] }, ptr %t178, i32 0, i32 1
  %t181 = getelementptr { %"compiler/source:Span", ptr }, ptr %t180, i32 0, i32 1
  %t182 = load ptr, ptr %t181
  store ptr %t182, ptr %l15, !tbaa !29
  br label %bb65
bb64:
  br label %bb68
bb65:
  store %olang.scope zeroinitializer, ptr %s13
  %t184 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2eput(ptr %v0, ptr %s13, ptr %t184, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d188, i32 0, i32 1) })
  br label %bb66
bb66:
  %t186 = load ptr, ptr %l0, !tbaa !29
  %t187 = load ptr, ptr %l15, !tbaa !29
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2ety(ptr %v0, ptr %v1, ptr %t186, ptr %t187)
  br label %bb67
bb67:
  call void @__olang_scope_close(ptr %s13)
  br label %bb123
bb68:
  %t190 = load ptr, ptr %l1, !tbaa !29
  store ptr %t190, ptr %l109, !tbaa !29
  store i1 false, ptr %l110, !tbaa !21
  %t191 = load ptr, ptr %l109, !tbaa !29
  %t192 = icmp ne ptr %t191, null
  br i1 %t192, label %bb69, label %bb70
bb69:
  %t194 = load ptr, ptr %l109, !tbaa !29
  %t195 = load i64, ptr %t194, !range !{i64 0, i64 8}
  %t197 = icmp eq i64 %t195, 7
  store i1 %t197, ptr %l110, !tbaa !21
  br label %bb70
bb70:
  %t198 = load i1, ptr %l110, !tbaa !21
  br i1 %t198, label %bb71, label %bb72
bb71:
  %t199 = load ptr, ptr %l1, !tbaa !29
  %t201 = getelementptr { i64, [5 x i64] }, ptr %t199, i32 0, i32 1
  %t202 = getelementptr { %"compiler/source:Span", ptr }, ptr %t201, i32 0, i32 1
  %t203 = load ptr, ptr %t202
  store ptr %t203, ptr %l16, !tbaa !29
  br label %bb73
bb72:
  br label %bb76
bb73:
  store %olang.scope zeroinitializer, ptr %s14
  %t205 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2eput(ptr %v0, ptr %s14, ptr %t205, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d189, i32 0, i32 1) })
  br label %bb74
bb74:
  %t207 = load ptr, ptr %l0, !tbaa !29
  %t208 = load ptr, ptr %l16, !tbaa !29
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2ety(ptr %v0, ptr %v1, ptr %t207, ptr %t208)
  br label %bb75
bb75:
  call void @__olang_scope_close(ptr %s14)
  br label %bb123
bb76:
  %t211 = load ptr, ptr %l1, !tbaa !29
  store ptr %t211, ptr %l118, !tbaa !29
  store i1 false, ptr %l119, !tbaa !21
  %t212 = load ptr, ptr %l118, !tbaa !29
  %t213 = icmp ne ptr %t212, null
  br i1 %t213, label %bb77, label %bb78
bb77:
  %t215 = load ptr, ptr %l118, !tbaa !29
  %t216 = load i64, ptr %t215, !range !{i64 0, i64 8}
  %t218 = icmp eq i64 %t216, 6
  store i1 %t218, ptr %l119, !tbaa !21
  br label %bb78
bb78:
  %t219 = load i1, ptr %l119, !tbaa !21
  br i1 %t219, label %bb79, label %bb80
bb79:
  %t220 = load ptr, ptr %l1, !tbaa !29
  %t222 = getelementptr { i64, [5 x i64] }, ptr %t220, i32 0, i32 1
  %t223 = getelementptr { %"compiler/source:Span", { i64, ptr } }, ptr %t222, i32 0, i32 1
  %t224 = load { i64, ptr }, ptr %t223
  store { i64, ptr } %t224, ptr %l17, !tbaa !27
  br label %bb81
bb80:
  br label %bb94
bb81:
  store %olang.scope zeroinitializer, ptr %s15
  %t226 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2eput(ptr %v0, ptr %s15, ptr %t226, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d190, i32 0, i32 1) })
  br label %bb82
bb82:
  %t228 = load { i64, ptr }, ptr %l17, !tbaa !27
  store { i64, ptr } %t228, ptr %l18, !tbaa !27
  store i64 0, ptr %l19, !tbaa !24
  %t230 = load { i64, ptr }, ptr %l18, !tbaa !27
  %t232 = extractvalue { i64, ptr } %t230, 0
  store i64 %t232, ptr %l20, !tbaa !24
  br label %bb83
bb83:
  %t234 = load i64, ptr %l19, !tbaa !24
  %t235 = load i64, ptr %l20, !tbaa !24
  %t238 = icmp slt i64 %t234, %t235
  %t240 = xor i1 %t238, true
  br i1 %t240, label %bb84, label %bb85
bb84:
  br label %bb93
bb85:
  br label %bb86
bb86:
  %t242 = load i64, ptr %l19, !tbaa !24
  %t244 = load { i64, ptr }, ptr %l18, !tbaa !27
  store { i64, ptr } %t244, ptr %l133, !tbaa !27
  %t245 = load i64, ptr %l19, !tbaa !24
  %t247 = getelementptr { i64, ptr }, ptr %l133, i32 0, i32 1
  %t248 = load ptr, ptr %t247, !tbaa !27
  %t249 = getelementptr ptr, ptr %t248, i64 %t245
  %t250 = load ptr, ptr %t249, !tbaa !39
  store ptr %t250, ptr %l22, !tbaa !29
  %t254 = icmp sgt i64 %t242, 0
  br i1 %t254, label %bb87, label %bb88
bb87:
  store %olang.scope zeroinitializer, ptr %s18
  %t256 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2eput(ptr %v0, ptr %s18, ptr %t256, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d191, i32 0, i32 1) })
  br label %bb89
bb88:
  br label %bb90
bb89:
  call void @__olang_scope_close(ptr %s18)
  br label %bb90
bb90:
  %t258 = load ptr, ptr %l0, !tbaa !29
  %t259 = load ptr, ptr %l22, !tbaa !29
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2epath(ptr %v0, ptr %v1, ptr %t258, ptr %t259)
  br label %bb91
bb91:
  br label %bb92
bb92:
  %t262 = load i64, ptr %l19, !tbaa !24
  %t264 = add i64 %t262, 1
  store i64 %t264, ptr %l19, !tbaa !24
  br label %bb83
bb93:
  call void @__olang_scope_close(ptr %s15)
  br label %bb123
bb94:
  %t266 = load ptr, ptr %l1, !tbaa !29
  store ptr %t266, ptr %l143, !tbaa !29
  store i1 false, ptr %l144, !tbaa !21
  %t267 = load ptr, ptr %l143, !tbaa !29
  %t268 = icmp ne ptr %t267, null
  br i1 %t268, label %bb95, label %bb96
bb95:
  %t270 = load ptr, ptr %l143, !tbaa !29
  %t271 = load i64, ptr %t270, !range !{i64 0, i64 8}
  %t273 = icmp eq i64 %t271, 4
  store i1 %t273, ptr %l144, !tbaa !21
  br label %bb96
bb96:
  %t274 = load i1, ptr %l144, !tbaa !21
  br i1 %t274, label %bb97, label %bb98
bb97:
  %t275 = load ptr, ptr %l1, !tbaa !29
  %t277 = getelementptr { i64, [5 x i64] }, ptr %t275, i32 0, i32 1
  %t278 = getelementptr { %"compiler/source:Span", ptr, i1 }, ptr %t277, i32 0, i32 1
  %t279 = load ptr, ptr %t278
  store ptr %t279, ptr %l23, !tbaa !29
  %t281 = load ptr, ptr %l1, !tbaa !29
  %t283 = getelementptr { i64, [5 x i64] }, ptr %t281, i32 0, i32 1
  %t284 = getelementptr { %"compiler/source:Span", ptr, i1 }, ptr %t283, i32 0, i32 2
  %t285 = load i1, ptr %t284
  store i1 %t285, ptr %l24, !tbaa !21
  br label %bb99
bb98:
  br label %bb122
bb99:
  %t287 = load ptr, ptr %l23, !tbaa !29
  %t289 = icmp eq ptr %t287, null
  %t291 = xor i1 %t289, true
  br i1 %t291, label %bb100, label %bb101
bb100:
  %t293 = load ptr, ptr %l23, !tbaa !29
  %t295 = call i1 @compiler_2fast_2ecompiler_2fast_3aTypeRef_2eIsWeak(ptr %v1, ptr %t293)
  store i1 %t295, ptr %l156
  br label %bb102
bb101:
  store i1 false, ptr %l154, !tbaa !21
  br label %bb103
bb102:
  %t296 = load i1, ptr %l156, !tbaa !21
  store i1 %t296, ptr %l154, !tbaa !21
  br label %bb103
bb103:
  %t297 = load i1, ptr %l154, !tbaa !21
  br i1 %t297, label %bb104, label %bb105
bb104:
  store %olang.scope zeroinitializer, ptr %s21
  %t298 = load ptr, ptr %l0, !tbaa !29
  store ptr %t298, ptr %l157, !tbaa !29
  %t299 = load i1, ptr %l24, !tbaa !21
  br i1 %t299, label %bb106, label %bb107
bb105:
  br label %bb112
bb106:
  store { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d192, i32 0, i32 1) }, ptr %l159, !tbaa !27
  br label %bb108
bb107:
  store { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d193, i32 0, i32 1) }, ptr %l159, !tbaa !27
  br label %bb108
bb108:
  %t301 = load ptr, ptr %l157, !tbaa !29
  %t302 = load { i64, ptr }, ptr %l159, !tbaa !27
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2eput(ptr %v0, ptr %s21, ptr %t301, { i64, ptr } %t302)
  br label %bb109
bb109:
  %t303 = load ptr, ptr %l0, !tbaa !29
  store ptr %t303, ptr %l160, !tbaa !29
  %t304 = load ptr, ptr %l23, !tbaa !29
  %t306 = call ptr @compiler_2fast_2ecompiler_2fast_3aTypeRef_2eUnweak(ptr %v1, ptr %v1, ptr %t304)
  store ptr %t306, ptr %l162
  br label %bb110
bb110:
  %t307 = load ptr, ptr %l160, !tbaa !29
  %t308 = load ptr, ptr %l162, !tbaa !29
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2ety(ptr %v0, ptr %v1, ptr %t307, ptr %t308)
  br label %bb111
bb111:
  call void @__olang_scope_close(ptr %s21)
  br label %ret
bb112:
  %t309 = load i1, ptr %l24, !tbaa !21
  br i1 %t309, label %bb113, label %bb114
bb113:
  store %olang.scope zeroinitializer, ptr %s22
  %t311 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2eput(ptr %v0, ptr %s22, ptr %t311, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d194, i32 0, i32 1) })
  br label %bb115
bb114:
  br label %bb116
bb115:
  call void @__olang_scope_close(ptr %s22)
  br label %bb116
bb116:
  %t313 = load ptr, ptr %l23, !tbaa !29
  %t315 = icmp eq ptr %t313, null
  %t317 = xor i1 %t315, true
  br i1 %t317, label %bb117, label %bb118
bb117:
  store %olang.scope zeroinitializer, ptr %s23
  %t319 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2eput(ptr %v0, ptr %s23, ptr %t319, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d195, i32 0, i32 1) })
  br label %bb119
bb118:
  br label %bb121
bb119:
  %t321 = load ptr, ptr %l0, !tbaa !29
  %t322 = load ptr, ptr %l23, !tbaa !29
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2ety(ptr %v0, ptr %v1, ptr %t321, ptr %t322)
  br label %bb120
bb120:
  call void @__olang_scope_close(ptr %s23)
  br label %bb121
bb121:
  br label %bb123
bb122:
  call void @__olang_check_failed(ptr @olang_loc_9034b6aed20fb51a_d179ca40c5e654ce)
  unreachable
bb123:
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2funparse_2ecompiler_2funparse_3awriter_2etypeBody(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca { i64, ptr }
  %l4 = alloca ptr
  %l5 = alloca { i64, ptr }
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca ptr
  %l9 = alloca ptr
  %l10 = alloca { i64, ptr }
  %l11 = alloca { i64, ptr }
  %l12 = alloca { i64, ptr }
  %l13 = alloca { i64, ptr }
  %l14 = alloca i64
  %l15 = alloca i64
  %l17 = alloca ptr
  %l18 = alloca { i64, ptr }
  %l19 = alloca i64
  %l20 = alloca i64
  %l22 = alloca ptr
  %l23 = alloca { i64, ptr }
  %l24 = alloca i64
  %l25 = alloca i64
  %l26 = alloca ptr
  %l27 = alloca ptr
  %l28 = alloca ptr
  %l29 = alloca ptr
  %l30 = alloca i1
  %l33 = alloca ptr
  %l34 = alloca i1
  %l48 = alloca ptr
  %l54 = alloca ptr
  %l71 = alloca ptr
  %l72 = alloca i1
  %l87 = alloca ptr
  %l97 = alloca { i64, ptr }
  %l110 = alloca ptr
  %l112 = alloca { i64, ptr }
  %l132 = alloca ptr
  %l140 = alloca ptr
  %l145 = alloca ptr
  %l146 = alloca i1
  %l168 = alloca { i64, ptr }
  %l191 = alloca { i64, ptr }
  %l203 = alloca ptr
  %l213 = alloca { i64, ptr }
  %l230 = alloca ptr
  %l235 = alloca ptr
  %l236 = alloca i1
  %s2 = alloca %olang.scope
  %s3 = alloca %olang.scope
  %s4 = alloca %olang.scope
  %s5 = alloca %olang.scope
  %s8 = alloca %olang.scope
  %s10 = alloca %olang.scope
  %s11 = alloca %olang.scope
  %s13 = alloca %olang.scope
  %s14 = alloca %olang.scope
  %s17 = alloca %olang.scope
  %s19 = alloca %olang.scope
  %s22 = alloca %olang.scope
  %s26 = alloca %olang.scope
  %s29 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l1, !tbaa !29
  store ptr %t1, ptr %l29, !tbaa !29
  store i1 false, ptr %l30, !tbaa !21
  %t2 = load ptr, ptr %l29, !tbaa !29
  %t3 = icmp ne ptr %t2, null
  br i1 %t3, label %bb1, label %bb2
bb1:
  %t5 = load ptr, ptr %l29, !tbaa !29
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 5}
  %t8 = icmp eq i64 %t6, 4
  store i1 %t8, ptr %l30, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l30, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  br label %bb5
bb4:
  br label %bb6
bb5:
  br label %bb151
bb6:
  %t10 = load ptr, ptr %l1, !tbaa !29
  store ptr %t10, ptr %l33, !tbaa !29
  store i1 false, ptr %l34, !tbaa !21
  %t11 = load ptr, ptr %l33, !tbaa !29
  %t12 = icmp ne ptr %t11, null
  br i1 %t12, label %bb7, label %bb8
bb7:
  %t14 = load ptr, ptr %l33, !tbaa !29
  %t15 = load i64, ptr %t14, !range !{i64 0, i64 5}
  %t17 = icmp eq i64 %t15, 0
  store i1 %t17, ptr %l34, !tbaa !21
  br label %bb8
bb8:
  %t18 = load i1, ptr %l34, !tbaa !21
  br i1 %t18, label %bb9, label %bb10
bb9:
  %t19 = load ptr, ptr %l1, !tbaa !29
  %t21 = getelementptr { i64, [6 x i64] }, ptr %t19, i32 0, i32 1
  %t22 = getelementptr { ptr }, ptr %t21, i32 0, i32 0
  %t23 = load ptr, ptr %t22
  store ptr %t23, ptr %l2, !tbaa !29
  br label %bb11
bb10:
  br label %bb32
bb11:
  store %olang.scope zeroinitializer, ptr %s2
  %t25 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2eput(ptr %v0, ptr %s2, ptr %t25, { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d196, i32 0, i32 1) })
  br label %bb12
bb12:
  %t27 = load ptr, ptr %l0, !tbaa !29
  %t28 = load ptr, ptr %l2, !tbaa !29
  %t30 = getelementptr %"compiler/ast:StructBody", ptr %t28, i32 0, i32 5
  %t31 = load { i64, ptr }, ptr %t30, !tbaa !27
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2etypeParams(ptr %v0, ptr %v1, ptr %t27, { i64, ptr } %t31)
  br label %bb13
bb13:
  %t34 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2eput(ptr %v0, ptr %s2, ptr %t34, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d197, i32 0, i32 1) })
  br label %bb14
bb14:
  %t36 = load ptr, ptr %l0, !tbaa !29
  %t37 = load ptr, ptr %l2, !tbaa !29
  %t39 = getelementptr %"compiler/ast:StructBody", ptr %t37, i32 0, i32 0
  %t40 = load { i64, ptr }, ptr %t39, !tbaa !27
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2eparams(ptr %v0, ptr %v1, ptr %t36, { i64, ptr } %t40)
  br label %bb15
bb15:
  %t43 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2eput(ptr %v0, ptr %s2, ptr %t43, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d198, i32 0, i32 1) })
  br label %bb16
bb16:
  %t45 = load ptr, ptr %l0, !tbaa !29
  store ptr %t45, ptr %l48, !tbaa !29
  %t46 = load ptr, ptr %l2, !tbaa !29
  %t48 = getelementptr %"compiler/ast:StructBody", ptr %t46, i32 0, i32 1
  %t49 = load ptr, ptr %t48, !tbaa !29
  %t51 = icmp eq ptr %t49, null
  br i1 %t51, label %bb17, label %bb18
bb17:
  call void @__olang_check_failed(ptr @olang_loc_8cd05a7785ffddf0_abfc69165374635c)
  unreachable
bb18:
  br label %bb19
bb19:
  %t53 = load ptr, ptr %l2, !tbaa !29
  %t55 = getelementptr %"compiler/ast:StructBody", ptr %t53, i32 0, i32 1
  %t56 = load ptr, ptr %t55, !tbaa !29
  %t57 = load ptr, ptr %l48, !tbaa !29
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2econtract(ptr %v0, ptr %v1, ptr %t57, ptr %t56)
  br label %bb20
bb20:
  %t59 = load ptr, ptr %l0, !tbaa !29
  store ptr %t59, ptr %l54, !tbaa !29
  %t60 = load ptr, ptr %l2, !tbaa !29
  %t62 = getelementptr %"compiler/ast:StructBody", ptr %t60, i32 0, i32 1
  %t63 = load ptr, ptr %t62, !tbaa !29
  %t65 = icmp eq ptr %t63, null
  br i1 %t65, label %bb21, label %bb22
bb21:
  call void @__olang_check_failed(ptr @olang_loc_c53cd7dd70350acf_d5f64367475d1e4b)
  unreachable
bb22:
  br label %bb23
bb23:
  %t67 = load ptr, ptr %l2, !tbaa !29
  %t69 = getelementptr %"compiler/ast:StructBody", ptr %t67, i32 0, i32 1
  %t70 = load ptr, ptr %t69, !tbaa !29
  %t71 = load ptr, ptr %l54, !tbaa !29
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2eerrors(ptr %v0, ptr %v1, ptr %t71, ptr %t70)
  br label %bb24
bb24:
  %t73 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2eput(ptr %v0, ptr %s2, ptr %t73, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d199, i32 0, i32 1) })
  br label %bb25
bb25:
  %t75 = load ptr, ptr %l0, !tbaa !29
  %t76 = load ptr, ptr %l2, !tbaa !29
  %t78 = getelementptr %"compiler/ast:StructBody", ptr %t76, i32 0, i32 2
  %t79 = load { i64, ptr }, ptr %t78, !tbaa !27
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2eblock(ptr %v0, ptr %v1, ptr %t75, { i64, ptr } %t79)
  br label %bb26
bb26:
  %t82 = load ptr, ptr %l2, !tbaa !29
  %t84 = getelementptr %"compiler/ast:StructBody", ptr %t82, i32 0, i32 3
  %t85 = getelementptr %"compiler/source:Span", ptr %t84, i32 0, i32 1
  %t86 = load i32, ptr %t85, !tbaa !23
  %t88 = icmp sgt i32 %t86, 0
  br i1 %t88, label %bb27, label %bb28
bb27:
  store %olang.scope zeroinitializer, ptr %s3
  %t90 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2eput(ptr %v0, ptr %s3, ptr %t90, { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d200, i32 0, i32 1) })
  br label %bb29
bb28:
  br label %bb31
bb29:
  %t92 = load ptr, ptr %l0, !tbaa !29
  %t93 = load ptr, ptr %l2, !tbaa !29
  %t95 = getelementptr %"compiler/ast:StructBody", ptr %t93, i32 0, i32 4
  %t96 = load { i64, ptr }, ptr %t95, !tbaa !27
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2eblock(ptr %v0, ptr %v1, ptr %t92, { i64, ptr } %t96)
  br label %bb30
bb30:
  call void @__olang_scope_close(ptr %s3)
  br label %bb31
bb31:
  call void @__olang_scope_close(ptr %s2)
  br label %bb151
bb32:
  %t99 = load ptr, ptr %l1, !tbaa !29
  store ptr %t99, ptr %l71, !tbaa !29
  store i1 false, ptr %l72, !tbaa !21
  %t100 = load ptr, ptr %l71, !tbaa !29
  %t101 = icmp ne ptr %t100, null
  br i1 %t101, label %bb33, label %bb34
bb33:
  %t103 = load ptr, ptr %l71, !tbaa !29
  %t104 = load i64, ptr %t103, !range !{i64 0, i64 5}
  %t106 = icmp eq i64 %t104, 1
  store i1 %t106, ptr %l72, !tbaa !21
  br label %bb34
bb34:
  %t107 = load i1, ptr %l72, !tbaa !21
  br i1 %t107, label %bb35, label %bb36
bb35:
  %t108 = load ptr, ptr %l1, !tbaa !29
  %t110 = getelementptr { i64, [6 x i64] }, ptr %t108, i32 0, i32 1
  %t111 = getelementptr { { i64, ptr }, ptr }, ptr %t110, i32 0, i32 0
  %t112 = load { i64, ptr }, ptr %t111
  store { i64, ptr } %t112, ptr %l3, !tbaa !27
  %t114 = load ptr, ptr %l1, !tbaa !29
  %t116 = getelementptr { i64, [6 x i64] }, ptr %t114, i32 0, i32 1
  %t117 = getelementptr { { i64, ptr }, ptr }, ptr %t116, i32 0, i32 1
  %t118 = load ptr, ptr %t117
  store ptr %t118, ptr %l4, !tbaa !29
  br label %bb37
bb36:
  br label %bb78
bb37:
  store %olang.scope zeroinitializer, ptr %s4
  %t120 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2eput(ptr %v0, ptr %s4, ptr %t120, { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d201, i32 0, i32 1) })
  br label %bb38
bb38:
  %t122 = load ptr, ptr %l4, !tbaa !29
  %t124 = icmp eq ptr %t122, null
  %t126 = xor i1 %t124, true
  br i1 %t126, label %bb39, label %bb40
bb39:
  store %olang.scope zeroinitializer, ptr %s5
  %t128 = load ptr, ptr %l0, !tbaa !29
  %t129 = load ptr, ptr %l4, !tbaa !29
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2ety(ptr %v0, ptr %v1, ptr %t128, ptr %t129)
  br label %bb41
bb40:
  br label %bb43
bb41:
  %t132 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2eput(ptr %v0, ptr %s5, ptr %t132, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d202, i32 0, i32 1) })
  br label %bb42
bb42:
  call void @__olang_scope_close(ptr %s5)
  br label %bb43
bb43:
  %t134 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2eput(ptr %v0, ptr %s4, ptr %t134, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d203, i32 0, i32 1) })
  br label %bb44
bb44:
  %t136 = load ptr, ptr %l0, !tbaa !29
  store ptr %t136, ptr %l87, !tbaa !29
  %t137 = load ptr, ptr %l87, !tbaa !29
  %t138 = getelementptr %"compiler/unparse:writer", ptr %t137, i32 0, i32 4
  %t139 = load i64, ptr %t138, !tbaa !24
  %t141 = add i64 %t139, 1
  %t143 = load ptr, ptr %l87, !tbaa !29
  %t144 = getelementptr %"compiler/unparse:writer", ptr %t143, i32 0, i32 4
  store i64 %t141, ptr %t144, !tbaa !24
  %t145 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t145, ptr %l5, !tbaa !27
  store i64 0, ptr %l6, !tbaa !24
  %t147 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t149 = extractvalue { i64, ptr } %t147, 0
  store i64 %t149, ptr %l7, !tbaa !24
  br label %bb45
bb45:
  %t151 = load i64, ptr %l6, !tbaa !24
  %t152 = load i64, ptr %l7, !tbaa !24
  %t155 = icmp slt i64 %t151, %t152
  %t157 = xor i1 %t155, true
  br i1 %t157, label %bb46, label %bb47
bb46:
  br label %bb75
bb47:
  br label %bb48
bb48:
  %t159 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t159, ptr %l97, !tbaa !27
  %t160 = load i64, ptr %l6, !tbaa !24
  %t162 = getelementptr { i64, ptr }, ptr %l97, i32 0, i32 1
  %t163 = load ptr, ptr %t162, !tbaa !27
  %t164 = getelementptr ptr, ptr %t163, i64 %t160
  %t165 = load ptr, ptr %t164, !tbaa !39
  store ptr %t165, ptr %l8, !tbaa !29
  %t167 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2enl(ptr %v0, ptr %t167)
  br label %bb49
bb49:
  %t169 = load ptr, ptr %l0, !tbaa !29
  %t170 = load ptr, ptr %l8, !tbaa !29
  %t172 = getelementptr %"compiler/ast:CaseDecl", ptr %t170, i32 0, i32 5
  %t173 = load { i64, ptr }, ptr %t172, !tbaa !27
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2eattrs(ptr %v0, ptr %v1, ptr %t169, { i64, ptr } %t173)
  br label %bb50
bb50:
  %t176 = load ptr, ptr %l0, !tbaa !29
  %t177 = load ptr, ptr %l8, !tbaa !29
  %t179 = getelementptr %"compiler/ast:CaseDecl", ptr %t177, i32 0, i32 1
  %t180 = load i32, ptr %t179, !tbaa !23
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2ename(ptr %v0, ptr %t176, i32 %t180)
  br label %bb51
bb51:
  %t183 = load ptr, ptr %l8, !tbaa !29
  %t185 = getelementptr %"compiler/ast:CaseDecl", ptr %t183, i32 0, i32 3
  %t186 = load i1, ptr %t185, !tbaa !21
  br i1 %t186, label %bb52, label %bb53
bb52:
  store %olang.scope zeroinitializer, ptr %s8
  %t188 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2eput(ptr %v0, ptr %s8, ptr %t188, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d204, i32 0, i32 1) })
  br label %bb54
bb53:
  %t190 = load ptr, ptr %l8, !tbaa !29
  %t192 = getelementptr %"compiler/ast:CaseDecl", ptr %t190, i32 0, i32 2
  %t193 = load { i64, ptr }, ptr %t192, !tbaa !27
  %t195 = extractvalue { i64, ptr } %t193, 0
  %t197 = icmp sgt i64 %t195, 0
  br i1 %t197, label %bb59, label %bb60
bb54:
  %t199 = load ptr, ptr %l0, !tbaa !29
  store ptr %t199, ptr %l110, !tbaa !29
  %t200 = load ptr, ptr %l8, !tbaa !29
  %t202 = getelementptr %"compiler/ast:CaseDecl", ptr %t200, i32 0, i32 2
  %t203 = load { i64, ptr }, ptr %t202, !tbaa !27
  store { i64, ptr } %t203, ptr %l112, !tbaa !27
  %t204 = getelementptr { i64, ptr }, ptr %l112, i32 0, i32 1
  %t205 = load ptr, ptr %t204, !tbaa !27
  %t206 = getelementptr ptr, ptr %t205, i64 0
  %t207 = load ptr, ptr %t206, !tbaa !39
  %t209 = getelementptr %"compiler/ast:Param", ptr %t207, i32 0, i32 2
  %t210 = load ptr, ptr %t209, !tbaa !29
  store ptr %t210, ptr %l9, !tbaa !29
  %t212 = load ptr, ptr %l9, !tbaa !29
  %t214 = icmp eq ptr %t212, null
  br i1 %t214, label %bb55, label %bb56
bb55:
  call void @__olang_check_failed(ptr @olang_loc_565cf8a51c2b309e_2af0495fa70fac4a)
  unreachable
bb56:
  br label %bb57
bb57:
  %t216 = load ptr, ptr %l9, !tbaa !29
  %t217 = load ptr, ptr %l110, !tbaa !29
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2ety(ptr %v0, ptr %v1, ptr %t217, ptr %t216)
  br label %bb58
bb58:
  call void @__olang_scope_close(ptr %s8)
  br label %bb65
bb59:
  store %olang.scope zeroinitializer, ptr %s10
  %t219 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2eput(ptr %v0, ptr %s10, ptr %t219, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d205, i32 0, i32 1) })
  br label %bb61
bb60:
  br label %bb64
bb61:
  %t221 = load ptr, ptr %l0, !tbaa !29
  %t222 = load ptr, ptr %l8, !tbaa !29
  %t224 = getelementptr %"compiler/ast:CaseDecl", ptr %t222, i32 0, i32 2
  %t225 = load { i64, ptr }, ptr %t224, !tbaa !27
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2eparams(ptr %v0, ptr %v1, ptr %t221, { i64, ptr } %t225)
  br label %bb62
bb62:
  %t228 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2eput(ptr %v0, ptr %s10, ptr %t228, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d206, i32 0, i32 1) })
  br label %bb63
bb63:
  call void @__olang_scope_close(ptr %s10)
  br label %bb64
bb64:
  br label %bb65
bb65:
  %t230 = load ptr, ptr %l8, !tbaa !29
  %t232 = getelementptr %"compiler/ast:CaseDecl", ptr %t230, i32 0, i32 4
  %t233 = load ptr, ptr %t232, !tbaa !29
  %t235 = icmp eq ptr %t233, null
  %t237 = xor i1 %t235, true
  br i1 %t237, label %bb66, label %bb67
bb66:
  store %olang.scope zeroinitializer, ptr %s11
  %t239 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2eput(ptr %v0, ptr %s11, ptr %t239, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d207, i32 0, i32 1) })
  br label %bb68
bb67:
  br label %bb73
bb68:
  %t241 = load ptr, ptr %l0, !tbaa !29
  store ptr %t241, ptr %l132, !tbaa !29
  %t242 = load ptr, ptr %l8, !tbaa !29
  %t244 = getelementptr %"compiler/ast:CaseDecl", ptr %t242, i32 0, i32 4
  %t245 = load ptr, ptr %t244, !tbaa !29
  %t247 = icmp eq ptr %t245, null
  br i1 %t247, label %bb69, label %bb70
bb69:
  call void @__olang_check_failed(ptr @olang_loc_a9c38de43eb77545_46c40237e7b6a551)
  unreachable
bb70:
  br label %bb71
bb71:
  %t249 = load ptr, ptr %l8, !tbaa !29
  %t251 = getelementptr %"compiler/ast:CaseDecl", ptr %t249, i32 0, i32 4
  %t252 = load ptr, ptr %t251, !tbaa !29
  %t253 = load ptr, ptr %l132, !tbaa !29
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2eexpr(ptr %v0, ptr %v1, ptr %t253, ptr %t252)
  br label %bb72
bb72:
  call void @__olang_scope_close(ptr %s11)
  br label %bb73
bb73:
  br label %bb74
bb74:
  %t255 = load i64, ptr %l6, !tbaa !24
  %t257 = add i64 %t255, 1
  store i64 %t257, ptr %l6, !tbaa !24
  br label %bb45
bb75:
  %t259 = load ptr, ptr %l0, !tbaa !29
  store ptr %t259, ptr %l140, !tbaa !29
  %t260 = load ptr, ptr %l140, !tbaa !29
  %t261 = getelementptr %"compiler/unparse:writer", ptr %t260, i32 0, i32 4
  %t262 = load i64, ptr %t261, !tbaa !24
  %t264 = sub i64 %t262, 1
  %t266 = load ptr, ptr %l140, !tbaa !29
  %t267 = getelementptr %"compiler/unparse:writer", ptr %t266, i32 0, i32 4
  store i64 %t264, ptr %t267, !tbaa !24
  %t268 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2enl(ptr %v0, ptr %t268)
  br label %bb76
bb76:
  %t270 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2eput(ptr %v0, ptr %s4, ptr %t270, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d208, i32 0, i32 1) })
  br label %bb77
bb77:
  call void @__olang_scope_close(ptr %s4)
  br label %bb151
bb78:
  %t272 = load ptr, ptr %l1, !tbaa !29
  store ptr %t272, ptr %l145, !tbaa !29
  store i1 false, ptr %l146, !tbaa !21
  %t273 = load ptr, ptr %l145, !tbaa !29
  %t274 = icmp ne ptr %t273, null
  br i1 %t274, label %bb79, label %bb80
bb79:
  %t276 = load ptr, ptr %l145, !tbaa !29
  %t277 = load i64, ptr %t276, !range !{i64 0, i64 5}
  %t279 = icmp eq i64 %t277, 2
  store i1 %t279, ptr %l146, !tbaa !21
  br label %bb80
bb80:
  %t280 = load i1, ptr %l146, !tbaa !21
  br i1 %t280, label %bb81, label %bb82
bb81:
  %t281 = load ptr, ptr %l1, !tbaa !29
  %t283 = getelementptr { i64, [6 x i64] }, ptr %t281, i32 0, i32 1
  %t284 = getelementptr { { i64, ptr }, { i64, ptr }, { i64, ptr } }, ptr %t283, i32 0, i32 0
  %t285 = load { i64, ptr }, ptr %t284
  store { i64, ptr } %t285, ptr %l10, !tbaa !27
  %t287 = load ptr, ptr %l1, !tbaa !29
  %t289 = getelementptr { i64, [6 x i64] }, ptr %t287, i32 0, i32 1
  %t290 = getelementptr { { i64, ptr }, { i64, ptr }, { i64, ptr } }, ptr %t289, i32 0, i32 1
  %t291 = load { i64, ptr }, ptr %t290
  store { i64, ptr } %t291, ptr %l11, !tbaa !27
  %t293 = load ptr, ptr %l1, !tbaa !29
  %t295 = getelementptr { i64, [6 x i64] }, ptr %t293, i32 0, i32 1
  %t296 = getelementptr { { i64, ptr }, { i64, ptr }, { i64, ptr } }, ptr %t295, i32 0, i32 2
  %t297 = load { i64, ptr }, ptr %t296
  store { i64, ptr } %t297, ptr %l12, !tbaa !27
  br label %bb83
bb82:
  br label %bb133
bb83:
  store %olang.scope zeroinitializer, ptr %s13
  %t299 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2eput(ptr %v0, ptr %s13, ptr %t299, { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d209, i32 0, i32 1) })
  br label %bb84
bb84:
  %t301 = load { i64, ptr }, ptr %l11, !tbaa !27
  %t303 = extractvalue { i64, ptr } %t301, 0
  %t305 = icmp sgt i64 %t303, 0
  br i1 %t305, label %bb85, label %bb86
bb85:
  store %olang.scope zeroinitializer, ptr %s14
  %t307 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2eput(ptr %v0, ptr %s14, ptr %t307, { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d210, i32 0, i32 1) })
  br label %bb87
bb86:
  br label %bb100
bb87:
  %t309 = load { i64, ptr }, ptr %l11, !tbaa !27
  store { i64, ptr } %t309, ptr %l13, !tbaa !27
  store i64 0, ptr %l14, !tbaa !24
  %t311 = load { i64, ptr }, ptr %l13, !tbaa !27
  %t313 = extractvalue { i64, ptr } %t311, 0
  store i64 %t313, ptr %l15, !tbaa !24
  br label %bb88
bb88:
  %t315 = load i64, ptr %l14, !tbaa !24
  %t316 = load i64, ptr %l15, !tbaa !24
  %t319 = icmp slt i64 %t315, %t316
  %t321 = xor i1 %t319, true
  br i1 %t321, label %bb89, label %bb90
bb89:
  br label %bb98
bb90:
  br label %bb91
bb91:
  %t323 = load i64, ptr %l14, !tbaa !24
  %t325 = load { i64, ptr }, ptr %l13, !tbaa !27
  store { i64, ptr } %t325, ptr %l168, !tbaa !27
  %t326 = load i64, ptr %l14, !tbaa !24
  %t328 = getelementptr { i64, ptr }, ptr %l168, i32 0, i32 1
  %t329 = load ptr, ptr %t328, !tbaa !27
  %t330 = getelementptr ptr, ptr %t329, i64 %t326
  %t331 = load ptr, ptr %t330, !tbaa !39
  store ptr %t331, ptr %l17, !tbaa !29
  %t335 = icmp sgt i64 %t323, 0
  br i1 %t335, label %bb92, label %bb93
bb92:
  store %olang.scope zeroinitializer, ptr %s17
  %t337 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2eput(ptr %v0, ptr %s17, ptr %t337, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d211, i32 0, i32 1) })
  br label %bb94
bb93:
  br label %bb95
bb94:
  call void @__olang_scope_close(ptr %s17)
  br label %bb95
bb95:
  %t339 = load ptr, ptr %l0, !tbaa !29
  %t340 = load ptr, ptr %l17, !tbaa !29
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2ety(ptr %v0, ptr %v1, ptr %t339, ptr %t340)
  br label %bb96
bb96:
  br label %bb97
bb97:
  %t343 = load i64, ptr %l14, !tbaa !24
  %t345 = add i64 %t343, 1
  store i64 %t345, ptr %l14, !tbaa !24
  br label %bb88
bb98:
  %t347 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2eput(ptr %v0, ptr %s14, ptr %t347, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d212, i32 0, i32 1) })
  br label %bb99
bb99:
  call void @__olang_scope_close(ptr %s14)
  br label %bb100
bb100:
  %t349 = load { i64, ptr }, ptr %l12, !tbaa !27
  %t351 = extractvalue { i64, ptr } %t349, 0
  %t353 = icmp sgt i64 %t351, 0
  br i1 %t353, label %bb101, label %bb102
bb101:
  store %olang.scope zeroinitializer, ptr %s19
  %t355 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2eput(ptr %v0, ptr %s19, ptr %t355, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d213, i32 0, i32 1) })
  br label %bb103
bb102:
  br label %bb116
bb103:
  %t357 = load { i64, ptr }, ptr %l12, !tbaa !27
  store { i64, ptr } %t357, ptr %l18, !tbaa !27
  store i64 0, ptr %l19, !tbaa !24
  %t359 = load { i64, ptr }, ptr %l18, !tbaa !27
  %t361 = extractvalue { i64, ptr } %t359, 0
  store i64 %t361, ptr %l20, !tbaa !24
  br label %bb104
bb104:
  %t363 = load i64, ptr %l19, !tbaa !24
  %t364 = load i64, ptr %l20, !tbaa !24
  %t367 = icmp slt i64 %t363, %t364
  %t369 = xor i1 %t367, true
  br i1 %t369, label %bb105, label %bb106
bb105:
  br label %bb114
bb106:
  br label %bb107
bb107:
  %t371 = load i64, ptr %l19, !tbaa !24
  %t373 = load { i64, ptr }, ptr %l18, !tbaa !27
  store { i64, ptr } %t373, ptr %l191, !tbaa !27
  %t374 = load i64, ptr %l19, !tbaa !24
  %t376 = getelementptr { i64, ptr }, ptr %l191, i32 0, i32 1
  %t377 = load ptr, ptr %t376, !tbaa !27
  %t378 = getelementptr ptr, ptr %t377, i64 %t374
  %t379 = load ptr, ptr %t378, !tbaa !39
  store ptr %t379, ptr %l22, !tbaa !29
  %t383 = icmp sgt i64 %t371, 0
  br i1 %t383, label %bb108, label %bb109
bb108:
  store %olang.scope zeroinitializer, ptr %s22
  %t385 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2eput(ptr %v0, ptr %s22, ptr %t385, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d214, i32 0, i32 1) })
  br label %bb110
bb109:
  br label %bb111
bb110:
  call void @__olang_scope_close(ptr %s22)
  br label %bb111
bb111:
  %t387 = load ptr, ptr %l0, !tbaa !29
  %t388 = load ptr, ptr %l22, !tbaa !29
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2ety(ptr %v0, ptr %v1, ptr %t387, ptr %t388)
  br label %bb112
bb112:
  br label %bb113
bb113:
  %t391 = load i64, ptr %l19, !tbaa !24
  %t393 = add i64 %t391, 1
  store i64 %t393, ptr %l19, !tbaa !24
  br label %bb104
bb114:
  %t395 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2eput(ptr %v0, ptr %s19, ptr %t395, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d215, i32 0, i32 1) })
  br label %bb115
bb115:
  call void @__olang_scope_close(ptr %s19)
  br label %bb116
bb116:
  %t397 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2eput(ptr %v0, ptr %s13, ptr %t397, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d216, i32 0, i32 1) })
  br label %bb117
bb117:
  %t399 = load ptr, ptr %l0, !tbaa !29
  store ptr %t399, ptr %l203, !tbaa !29
  %t400 = load ptr, ptr %l203, !tbaa !29
  %t401 = getelementptr %"compiler/unparse:writer", ptr %t400, i32 0, i32 4
  %t402 = load i64, ptr %t401, !tbaa !24
  %t404 = add i64 %t402, 1
  %t406 = load ptr, ptr %l203, !tbaa !29
  %t407 = getelementptr %"compiler/unparse:writer", ptr %t406, i32 0, i32 4
  store i64 %t404, ptr %t407, !tbaa !24
  %t408 = load { i64, ptr }, ptr %l10, !tbaa !27
  store { i64, ptr } %t408, ptr %l23, !tbaa !27
  store i64 0, ptr %l24, !tbaa !24
  %t410 = load { i64, ptr }, ptr %l23, !tbaa !27
  %t412 = extractvalue { i64, ptr } %t410, 0
  store i64 %t412, ptr %l25, !tbaa !24
  br label %bb118
bb118:
  %t414 = load i64, ptr %l24, !tbaa !24
  %t415 = load i64, ptr %l25, !tbaa !24
  %t418 = icmp slt i64 %t414, %t415
  %t420 = xor i1 %t418, true
  br i1 %t420, label %bb119, label %bb120
bb119:
  br label %bb130
bb120:
  br label %bb121
bb121:
  %t422 = load { i64, ptr }, ptr %l23, !tbaa !27
  store { i64, ptr } %t422, ptr %l213, !tbaa !27
  %t423 = load i64, ptr %l24, !tbaa !24
  %t425 = getelementptr { i64, ptr }, ptr %l213, i32 0, i32 1
  %t426 = load ptr, ptr %t425, !tbaa !27
  %t427 = getelementptr ptr, ptr %t426, i64 %t423
  %t428 = load ptr, ptr %t427, !tbaa !39
  store ptr %t428, ptr %l26, !tbaa !29
  %t430 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2enl(ptr %v0, ptr %t430)
  br label %bb122
bb122:
  %t432 = load ptr, ptr %l26, !tbaa !29
  %t434 = getelementptr %"compiler/ast:Func", ptr %t432, i32 0, i32 1
  %t435 = load ptr, ptr %t434, !tbaa !29
  %t437 = icmp eq ptr %t435, null
  %t439 = xor i1 %t437, true
  br i1 %t439, label %bb123, label %bb124
bb123:
  store %olang.scope zeroinitializer, ptr %s26
  %t441 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2eput(ptr %v0, ptr %s26, ptr %t441, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d217, i32 0, i32 1) })
  br label %bb125
bb124:
  br label %bb126
bb125:
  call void @__olang_scope_close(ptr %s26)
  br label %bb126
bb126:
  %t443 = load ptr, ptr %l0, !tbaa !29
  %t444 = load ptr, ptr %l26, !tbaa !29
  %t446 = getelementptr %"compiler/ast:Func", ptr %t444, i32 0, i32 2
  %t447 = load i32, ptr %t446, !tbaa !23
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2ename(ptr %v0, ptr %t443, i32 %t447)
  br label %bb127
bb127:
  %t450 = load ptr, ptr %l0, !tbaa !29
  %t451 = load ptr, ptr %l26, !tbaa !29
  %t453 = getelementptr %"compiler/ast:Func", ptr %t451, i32 0, i32 3
  %t454 = load ptr, ptr %t453, !tbaa !29
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2esig(ptr %v0, ptr %v1, ptr %t450, ptr %t454)
  br label %bb128
bb128:
  br label %bb129
bb129:
  %t457 = load i64, ptr %l24, !tbaa !24
  %t459 = add i64 %t457, 1
  store i64 %t459, ptr %l24, !tbaa !24
  br label %bb118
bb130:
  %t461 = load ptr, ptr %l0, !tbaa !29
  store ptr %t461, ptr %l230, !tbaa !29
  %t462 = load ptr, ptr %l230, !tbaa !29
  %t463 = getelementptr %"compiler/unparse:writer", ptr %t462, i32 0, i32 4
  %t464 = load i64, ptr %t463, !tbaa !24
  %t466 = sub i64 %t464, 1
  %t468 = load ptr, ptr %l230, !tbaa !29
  %t469 = getelementptr %"compiler/unparse:writer", ptr %t468, i32 0, i32 4
  store i64 %t466, ptr %t469, !tbaa !24
  %t470 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2enl(ptr %v0, ptr %t470)
  br label %bb131
bb131:
  %t472 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2eput(ptr %v0, ptr %s13, ptr %t472, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d218, i32 0, i32 1) })
  br label %bb132
bb132:
  call void @__olang_scope_close(ptr %s13)
  br label %bb151
bb133:
  %t474 = load ptr, ptr %l1, !tbaa !29
  store ptr %t474, ptr %l235, !tbaa !29
  store i1 false, ptr %l236, !tbaa !21
  %t475 = load ptr, ptr %l235, !tbaa !29
  %t476 = icmp ne ptr %t475, null
  br i1 %t476, label %bb134, label %bb135
bb134:
  %t478 = load ptr, ptr %l235, !tbaa !29
  %t479 = load i64, ptr %t478, !range !{i64 0, i64 5}
  %t481 = icmp eq i64 %t479, 3
  store i1 %t481, ptr %l236, !tbaa !21
  br label %bb135
bb135:
  %t482 = load i1, ptr %l236, !tbaa !21
  br i1 %t482, label %bb136, label %bb137
bb136:
  %t483 = load ptr, ptr %l1, !tbaa !29
  %t485 = getelementptr { i64, [6 x i64] }, ptr %t483, i32 0, i32 1
  %t486 = getelementptr { ptr, ptr }, ptr %t485, i32 0, i32 0
  %t487 = load ptr, ptr %t486
  store ptr %t487, ptr %l27, !tbaa !29
  %t489 = load ptr, ptr %l1, !tbaa !29
  %t491 = getelementptr { i64, [6 x i64] }, ptr %t489, i32 0, i32 1
  %t492 = getelementptr { ptr, ptr }, ptr %t491, i32 0, i32 1
  %t493 = load ptr, ptr %t492
  store ptr %t493, ptr %l28, !tbaa !29
  br label %bb138
bb137:
  br label %bb150
bb138:
  %t495 = load ptr, ptr %l0, !tbaa !29
  %t496 = load ptr, ptr %l27, !tbaa !29
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2ety(ptr %v0, ptr %v1, ptr %t495, ptr %t496)
  br label %bb139
bb139:
  %t499 = load ptr, ptr %l28, !tbaa !29
  %t501 = icmp eq ptr %t499, null
  %t503 = xor i1 %t501, true
  br i1 %t503, label %bb140, label %bb141
bb140:
  store %olang.scope zeroinitializer, ptr %s29
  %t505 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2eput(ptr %v0, ptr %s29, ptr %t505, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d219, i32 0, i32 1) })
  br label %bb142
bb141:
  br label %bb149
bb142:
  %t507 = load ptr, ptr %l0, !tbaa !29
  %t508 = load ptr, ptr %l28, !tbaa !29
  %t510 = getelementptr %"compiler/ast:Func", ptr %t508, i32 0, i32 3
  %t511 = load ptr, ptr %t510, !tbaa !29
  %t513 = getelementptr %"compiler/ast:Sig", ptr %t511, i32 0, i32 0
  %t514 = load { i64, ptr }, ptr %t513, !tbaa !27
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2eparams(ptr %v0, ptr %v1, ptr %t507, { i64, ptr } %t514)
  br label %bb143
bb143:
  %t517 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2eput(ptr %v0, ptr %s29, ptr %t517, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d220, i32 0, i32 1) })
  br label %bb144
bb144:
  %t519 = load ptr, ptr %l0, !tbaa !29
  %t520 = load ptr, ptr %l28, !tbaa !29
  %t522 = getelementptr %"compiler/ast:Func", ptr %t520, i32 0, i32 3
  %t523 = load ptr, ptr %t522, !tbaa !29
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2eerrors(ptr %v0, ptr %v1, ptr %t519, ptr %t523)
  br label %bb145
bb145:
  %t526 = load ptr, ptr %l0, !tbaa !29
  %t527 = load ptr, ptr %l28, !tbaa !29
  %t529 = getelementptr %"compiler/ast:Func", ptr %t527, i32 0, i32 3
  %t530 = load ptr, ptr %t529, !tbaa !29
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2econtract(ptr %v0, ptr %v1, ptr %t526, ptr %t530)
  br label %bb146
bb146:
  %t533 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2eput(ptr %v0, ptr %s29, ptr %t533, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d221, i32 0, i32 1) })
  br label %bb147
bb147:
  %t535 = load ptr, ptr %l0, !tbaa !29
  %t536 = load ptr, ptr %l28, !tbaa !29
  %t538 = getelementptr %"compiler/ast:Func", ptr %t536, i32 0, i32 4
  %t539 = load { i64, ptr }, ptr %t538, !tbaa !27
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2eblock(ptr %v0, ptr %v1, ptr %t535, { i64, ptr } %t539)
  br label %bb148
bb148:
  call void @__olang_scope_close(ptr %s29)
  br label %bb149
bb149:
  br label %bb151
bb150:
  call void @__olang_check_failed(ptr @olang_loc_7b9eb6dfa833729b_791a1e6ae071d10f)
  unreachable
bb151:
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2funparse_2ecompiler_2funparse_3awriter_2etypeDecl(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l8 = alloca ptr
  %l9 = alloca i1
  %l38 = alloca ptr
  %s0 = alloca %olang.scope
  %s1 = alloca %olang.scope
  %s3 = alloca %olang.scope
  %s4 = alloca %olang.scope
  %s5 = alloca %olang.scope
  %s6 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load ptr, ptr %l1, !tbaa !29
  %t4 = getelementptr %"compiler/ast:TypeDecl", ptr %t2, i32 0, i32 4
  %t5 = load { i64, ptr }, ptr %t4, !tbaa !27
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2eattrs(ptr %v0, ptr %v1, ptr %t1, { i64, ptr } %t5)
  br label %bb1
bb1:
  %t8 = load ptr, ptr %l1, !tbaa !29
  %t10 = getelementptr %"compiler/ast:TypeDecl", ptr %t8, i32 0, i32 3
  %t11 = load ptr, ptr %t10, !tbaa !29
  store ptr %t11, ptr %l8, !tbaa !29
  store i1 false, ptr %l9, !tbaa !21
  %t14 = load ptr, ptr %l8, !tbaa !29
  %t15 = icmp ne ptr %t14, null
  br i1 %t15, label %bb2, label %bb3
bb2:
  %t17 = load ptr, ptr %l8, !tbaa !29
  %t18 = load i64, ptr %t17, !range !{i64 0, i64 5}
  %t20 = icmp eq i64 %t18, 4
  store i1 %t20, ptr %l9, !tbaa !21
  br label %bb3
bb3:
  %t21 = load i1, ptr %l9, !tbaa !21
  br i1 %t21, label %bb4, label %bb5
bb4:
  br label %bb6
bb5:
  br label %bb9
bb6:
  store %olang.scope zeroinitializer, ptr %s1
  %t22 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2eput(ptr %v0, ptr %s1, ptr %t22, { i64, ptr } { i64 12, ptr getelementptr inbounds (<{ i64, [12 x i8] }>, ptr @.d222, i32 0, i32 1) })
  br label %bb7
bb7:
  %t24 = load ptr, ptr %l0, !tbaa !29
  %t25 = load ptr, ptr %l1, !tbaa !29
  %t27 = getelementptr %"compiler/ast:TypeDecl", ptr %t25, i32 0, i32 0
  %t28 = load i32, ptr %t27, !tbaa !23
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2ename(ptr %v0, ptr %t24, i32 %t28)
  br label %bb8
bb8:
  call void @__olang_scope_close(ptr %s1)
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb9:
  br i1 true, label %bb10, label %bb11
bb10:
  br label %bb12
bb11:
  br label %bb13
bb12:
  br label %bb14
bb13:
  call void @__olang_check_failed(ptr @olang_loc_ebbf44be12946e17_d86a8718ca658f6b)
  unreachable
bb14:
  %t31 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2eput(ptr %v0, ptr %s0, ptr %t31, { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d223, i32 0, i32 1) })
  br label %bb15
bb15:
  %t33 = load ptr, ptr %l0, !tbaa !29
  %t34 = load ptr, ptr %l1, !tbaa !29
  %t36 = getelementptr %"compiler/ast:TypeDecl", ptr %t34, i32 0, i32 0
  %t37 = load i32, ptr %t36, !tbaa !23
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2ename(ptr %v0, ptr %t33, i32 %t37)
  br label %bb16
bb16:
  %t40 = load ptr, ptr %l0, !tbaa !29
  %t41 = load ptr, ptr %l1, !tbaa !29
  %t43 = getelementptr %"compiler/ast:TypeDecl", ptr %t41, i32 0, i32 1
  %t44 = load { i64, ptr }, ptr %t43, !tbaa !27
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2etypeParams(ptr %v0, ptr %v1, ptr %t40, { i64, ptr } %t44)
  br label %bb17
bb17:
  %t47 = load ptr, ptr %l1, !tbaa !29
  %t49 = getelementptr %"compiler/ast:TypeDecl", ptr %t47, i32 0, i32 5
  %t50 = load i32, ptr %t49, !range !{i32 0, i32 3}
  %t52 = trunc i64 1 to i32
  %t53 = icmp eq i32 %t50, %t52
  br i1 %t53, label %bb18, label %bb19
bb18:
  store %olang.scope zeroinitializer, ptr %s3
  %t55 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2eput(ptr %v0, ptr %s3, ptr %t55, { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d224, i32 0, i32 1) })
  br label %bb20
bb19:
  br label %bb21
bb20:
  call void @__olang_scope_close(ptr %s3)
  br label %bb21
bb21:
  %t57 = load ptr, ptr %l1, !tbaa !29
  %t59 = getelementptr %"compiler/ast:TypeDecl", ptr %t57, i32 0, i32 5
  %t60 = load i32, ptr %t59, !range !{i32 0, i32 3}
  %t62 = trunc i64 2 to i32
  %t63 = icmp eq i32 %t60, %t62
  br i1 %t63, label %bb22, label %bb23
bb22:
  store %olang.scope zeroinitializer, ptr %s4
  %t65 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2eput(ptr %v0, ptr %s4, ptr %t65, { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d225, i32 0, i32 1) })
  br label %bb24
bb23:
  br label %bb25
bb24:
  call void @__olang_scope_close(ptr %s4)
  br label %bb25
bb25:
  %t67 = load ptr, ptr %l1, !tbaa !29
  %t69 = getelementptr %"compiler/ast:TypeDecl", ptr %t67, i32 0, i32 6
  %t70 = load i1, ptr %t69, !tbaa !21
  br i1 %t70, label %bb26, label %bb27
bb26:
  store %olang.scope zeroinitializer, ptr %s5
  %t72 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2eput(ptr %v0, ptr %s5, ptr %t72, { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d226, i32 0, i32 1) })
  br label %bb28
bb27:
  br label %bb29
bb28:
  call void @__olang_scope_close(ptr %s5)
  br label %bb29
bb29:
  %t74 = load ptr, ptr %l1, !tbaa !29
  %t76 = getelementptr %"compiler/ast:TypeDecl", ptr %t74, i32 0, i32 2
  %t77 = load i1, ptr %t76, !tbaa !21
  br i1 %t77, label %bb30, label %bb31
bb30:
  store %olang.scope zeroinitializer, ptr %s6
  %t79 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2eput(ptr %v0, ptr %s6, ptr %t79, { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d227, i32 0, i32 1) })
  br label %bb32
bb31:
  br label %bb33
bb32:
  call void @__olang_scope_close(ptr %s6)
  br label %bb33
bb33:
  %t81 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2eput(ptr %v0, ptr %s0, ptr %t81, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d228, i32 0, i32 1) })
  br label %bb34
bb34:
  %t83 = load ptr, ptr %l0, !tbaa !29
  store ptr %t83, ptr %l38, !tbaa !29
  %t84 = load ptr, ptr %l1, !tbaa !29
  %t86 = getelementptr %"compiler/ast:TypeDecl", ptr %t84, i32 0, i32 3
  %t87 = load ptr, ptr %t86, !tbaa !29
  %t89 = icmp eq ptr %t87, null
  br i1 %t89, label %bb35, label %bb36
bb35:
  call void @__olang_check_failed(ptr @olang_loc_2cc3368697e3422f_b87e422715826713)
  unreachable
bb36:
  br label %bb37
bb37:
  %t91 = load ptr, ptr %l1, !tbaa !29
  %t93 = getelementptr %"compiler/ast:TypeDecl", ptr %t91, i32 0, i32 3
  %t94 = load ptr, ptr %t93, !tbaa !29
  %t95 = load ptr, ptr %l38, !tbaa !29
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2etypeBody(ptr %v0, ptr %v1, ptr %t95, ptr %t94)
  br label %bb38
bb38:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2funparse_2ecompiler_2funparse_3awriter_2etypeParams(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca { i64, ptr }
  %l2 = alloca i1
  %l3 = alloca { i64, ptr }
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca ptr
  %l8 = alloca { i64, ptr }
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca ptr
  %l27 = alloca { i64, ptr }
  %l32 = alloca ptr
  %l35 = alloca { i64, ptr }
  %l50 = alloca ptr
  %l64 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %s4 = alloca %olang.scope
  %s5 = alloca %olang.scope
  %s6 = alloca %olang.scope
  %s8 = alloca %olang.scope
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
  %t7 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2eput(ptr %v0, ptr %s0, ptr %t7, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d229, i32 0, i32 1) })
  br label %bb4
bb4:
  %t9 = load ptr, ptr %l0, !tbaa !29
  %t11 = getelementptr %"compiler/unparse:writer", ptr %t9, i32 0, i32 6
  %t12 = load i1, ptr %t11, !tbaa !21
  store i1 %t12, ptr %l2, !tbaa !21
  %t14 = load ptr, ptr %l0, !tbaa !29
  %t16 = getelementptr %"compiler/unparse:writer", ptr %t14, i32 0, i32 6
  store i1 true, ptr %t16, !tbaa !21
  %t17 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t17, ptr %l3, !tbaa !27
  store i64 0, ptr %l4, !tbaa !24
  %t19 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t21 = extractvalue { i64, ptr } %t19, 0
  store i64 %t21, ptr %l5, !tbaa !24
  br label %bb5
bb5:
  %t23 = load i64, ptr %l4, !tbaa !24
  %t24 = load i64, ptr %l5, !tbaa !24
  %t27 = icmp slt i64 %t23, %t24
  %t29 = xor i1 %t27, true
  br i1 %t29, label %bb6, label %bb7
bb6:
  br label %bb39
bb7:
  br label %bb8
bb8:
  %t31 = load i64, ptr %l4, !tbaa !24
  store i64 %t31, ptr %l6, !tbaa !24
  %t33 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t33, ptr %l27, !tbaa !27
  %t34 = load i64, ptr %l4, !tbaa !24
  %t36 = getelementptr { i64, ptr }, ptr %l27, i32 0, i32 1
  %t37 = load ptr, ptr %t36, !tbaa !27
  %t38 = getelementptr ptr, ptr %t37, i64 %t34
  %t39 = load ptr, ptr %t38, !tbaa !39
  store ptr %t39, ptr %l7, !tbaa !29
  %t41 = load ptr, ptr %l7, !tbaa !29
  %t43 = getelementptr %"compiler/ast:TypeParam", ptr %t41, i32 0, i32 4
  %t44 = load i1, ptr %t43, !tbaa !21
  br i1 %t44, label %bb9, label %bb10
bb9:
  store %olang.scope zeroinitializer, ptr %s4
  %t46 = load ptr, ptr %l0, !tbaa !29
  store ptr %t46, ptr %l32, !tbaa !29
  %t47 = load i64, ptr %l6, !tbaa !24
  %t49 = icmp sgt i64 %t47, 0
  br i1 %t49, label %bb11, label %bb12
bb10:
  br label %bb16
bb11:
  store { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d230, i32 0, i32 1) }, ptr %l35, !tbaa !27
  br label %bb13
bb12:
  store { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d231, i32 0, i32 1) }, ptr %l35, !tbaa !27
  br label %bb13
bb13:
  %t51 = load ptr, ptr %l32, !tbaa !29
  %t52 = load { i64, ptr }, ptr %l35, !tbaa !27
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2eput(ptr %v0, ptr %s4, ptr %t51, { i64, ptr } %t52)
  br label %bb14
bb14:
  %t53 = load ptr, ptr %l0, !tbaa !29
  %t54 = load ptr, ptr %l7, !tbaa !29
  %t56 = getelementptr %"compiler/ast:TypeParam", ptr %t54, i32 0, i32 1
  %t57 = load i32, ptr %t56, !tbaa !23
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2ename(ptr %v0, ptr %t53, i32 %t57)
  br label %bb15
bb15:
  call void @__olang_scope_close(ptr %s4)
  br label %bb38
bb16:
  %t60 = load i64, ptr %l6, !tbaa !24
  %t62 = icmp sgt i64 %t60, 0
  br i1 %t62, label %bb17, label %bb18
bb17:
  store %olang.scope zeroinitializer, ptr %s5
  %t64 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2eput(ptr %v0, ptr %s5, ptr %t64, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d232, i32 0, i32 1) })
  br label %bb19
bb18:
  br label %bb20
bb19:
  call void @__olang_scope_close(ptr %s5)
  br label %bb20
bb20:
  %t66 = load ptr, ptr %l0, !tbaa !29
  %t67 = load ptr, ptr %l7, !tbaa !29
  %t69 = getelementptr %"compiler/ast:TypeParam", ptr %t67, i32 0, i32 1
  %t70 = load i32, ptr %t69, !tbaa !23
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2ename(ptr %v0, ptr %t66, i32 %t70)
  br label %bb21
bb21:
  %t73 = load ptr, ptr %l7, !tbaa !29
  %t75 = getelementptr %"compiler/ast:TypeParam", ptr %t73, i32 0, i32 2
  %t76 = load ptr, ptr %t75, !tbaa !29
  %t78 = icmp eq ptr %t76, null
  %t80 = xor i1 %t78, true
  br i1 %t80, label %bb22, label %bb23
bb22:
  store %olang.scope zeroinitializer, ptr %s6
  %t82 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2eput(ptr %v0, ptr %s6, ptr %t82, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d233, i32 0, i32 1) })
  br label %bb24
bb23:
  br label %bb29
bb24:
  %t84 = load ptr, ptr %l0, !tbaa !29
  store ptr %t84, ptr %l50, !tbaa !29
  %t85 = load ptr, ptr %l7, !tbaa !29
  %t87 = getelementptr %"compiler/ast:TypeParam", ptr %t85, i32 0, i32 2
  %t88 = load ptr, ptr %t87, !tbaa !29
  %t90 = icmp eq ptr %t88, null
  br i1 %t90, label %bb25, label %bb26
bb25:
  call void @__olang_check_failed(ptr @olang_loc_b36b34168d540f92_3d8b83b8d4d4846)
  unreachable
bb26:
  br label %bb27
bb27:
  %t92 = load ptr, ptr %l7, !tbaa !29
  %t94 = getelementptr %"compiler/ast:TypeParam", ptr %t92, i32 0, i32 2
  %t95 = load ptr, ptr %t94, !tbaa !29
  %t96 = load ptr, ptr %l50, !tbaa !29
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2ety(ptr %v0, ptr %v1, ptr %t96, ptr %t95)
  br label %bb28
bb28:
  call void @__olang_scope_close(ptr %s6)
  br label %bb29
bb29:
  %t98 = load ptr, ptr %l7, !tbaa !29
  %t100 = getelementptr %"compiler/ast:TypeParam", ptr %t98, i32 0, i32 3
  %t101 = load { i64, ptr }, ptr %t100, !tbaa !27
  store { i64, ptr } %t101, ptr %l8, !tbaa !27
  store i64 0, ptr %l9, !tbaa !24
  %t103 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t105 = extractvalue { i64, ptr } %t103, 0
  store i64 %t105, ptr %l10, !tbaa !24
  br label %bb30
bb30:
  store %olang.scope zeroinitializer, ptr %s8
  %t107 = load i64, ptr %l9, !tbaa !24
  %t108 = load i64, ptr %l10, !tbaa !24
  %t111 = icmp slt i64 %t107, %t108
  %t113 = xor i1 %t111, true
  br i1 %t113, label %bb31, label %bb32
bb31:
  call void @__olang_scope_close(ptr %s8)
  br label %bb37
bb32:
  br label %bb33
bb33:
  %t115 = load { i64, ptr }, ptr %l8, !tbaa !27
  store { i64, ptr } %t115, ptr %l64, !tbaa !27
  %t116 = load i64, ptr %l9, !tbaa !24
  %t118 = getelementptr { i64, ptr }, ptr %l64, i32 0, i32 1
  %t119 = load ptr, ptr %t118, !tbaa !27
  %t120 = getelementptr ptr, ptr %t119, i64 %t116
  %t121 = load ptr, ptr %t120, !tbaa !39
  store ptr %t121, ptr %l11, !tbaa !29
  %t123 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2eput(ptr %v0, ptr %s8, ptr %t123, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d234, i32 0, i32 1) })
  br label %bb34
bb34:
  %t125 = load ptr, ptr %l0, !tbaa !29
  %t126 = load ptr, ptr %l11, !tbaa !29
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2ety(ptr %v0, ptr %v1, ptr %t125, ptr %t126)
  br label %bb35
bb35:
  call void @__olang_scope_close(ptr %s8)
  br label %bb36
bb36:
  %t129 = load i64, ptr %l9, !tbaa !24
  %t131 = add i64 %t129, 1
  store i64 %t131, ptr %l9, !tbaa !24
  br label %bb30
bb37:
  br label %bb38
bb38:
  %t133 = load i64, ptr %l4, !tbaa !24
  %t135 = add i64 %t133, 1
  store i64 %t135, ptr %l4, !tbaa !24
  br label %bb5
bb39:
  %t137 = load ptr, ptr %l0, !tbaa !29
  %t138 = load i1, ptr %l2, !tbaa !21
  %t141 = getelementptr %"compiler/unparse:writer", ptr %t137, i32 0, i32 6
  store i1 %t138, ptr %t141, !tbaa !21
  %t142 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2eput(ptr %v0, ptr %s0, ptr %t142, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d235, i32 0, i32 1) })
  br label %bb40
bb40:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2funparse_2ecompiler_2funparse_3awriter_2etypes(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca i1
  %l3 = alloca { i64, ptr }
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca ptr
  %l8 = alloca { i64, ptr }
  %l9 = alloca { i64, ptr }
  %l10 = alloca i64
  %l11 = alloca i64
  %l13 = alloca ptr
  %l25 = alloca { i64, ptr }
  %l28 = alloca ptr
  %l29 = alloca i1
  %l34 = alloca ptr
  %l37 = alloca { i64, ptr }
  %l46 = alloca { i64, ptr }
  %s3 = alloca %olang.scope
  %s6 = alloca %olang.scope
  %s9 = alloca %olang.scope
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/unparse:writer", ptr %t1, i32 0, i32 6
  %t4 = load i1, ptr %t3, !tbaa !21
  store i1 %t4, ptr %l2, !tbaa !21
  %t6 = load ptr, ptr %l0, !tbaa !29
  %t8 = getelementptr %"compiler/unparse:writer", ptr %t6, i32 0, i32 6
  store i1 true, ptr %t8, !tbaa !21
  store { i64, ptr } %a1, ptr %l3, !tbaa !27
  store i64 0, ptr %l4, !tbaa !24
  %t11 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t13 = extractvalue { i64, ptr } %t11, 0
  store i64 %t13, ptr %l5, !tbaa !24
  br label %bb1
bb1:
  %t15 = load i64, ptr %l4, !tbaa !24
  %t16 = load i64, ptr %l5, !tbaa !24
  %t19 = icmp slt i64 %t15, %t16
  %t21 = xor i1 %t19, true
  br i1 %t21, label %bb2, label %bb3
bb2:
  br label %bb37
bb3:
  br label %bb4
bb4:
  %t23 = load i64, ptr %l4, !tbaa !24
  store i64 %t23, ptr %l6, !tbaa !24
  %t25 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t25, ptr %l25, !tbaa !27
  %t26 = load i64, ptr %l4, !tbaa !24
  %t28 = getelementptr { i64, ptr }, ptr %l25, i32 0, i32 1
  %t29 = load ptr, ptr %t28, !tbaa !27
  %t30 = getelementptr ptr, ptr %t29, i64 %t26
  %t31 = load ptr, ptr %t30, !tbaa !39
  store ptr %t31, ptr %l7, !tbaa !29
  %t33 = load ptr, ptr %l7, !tbaa !29
  store ptr %t33, ptr %l28, !tbaa !29
  store i1 false, ptr %l29, !tbaa !21
  %t34 = load ptr, ptr %l28, !tbaa !29
  %t35 = icmp ne ptr %t34, null
  br i1 %t35, label %bb5, label %bb6
bb5:
  %t37 = load ptr, ptr %l28, !tbaa !29
  %t38 = load i64, ptr %t37, !range !{i64 0, i64 8}
  %t40 = icmp eq i64 %t38, 6
  store i1 %t40, ptr %l29, !tbaa !21
  br label %bb6
bb6:
  %t41 = load i1, ptr %l29, !tbaa !21
  br i1 %t41, label %bb7, label %bb8
bb7:
  %t42 = load ptr, ptr %l7, !tbaa !29
  %t44 = getelementptr { i64, [5 x i64] }, ptr %t42, i32 0, i32 1
  %t45 = getelementptr { %"compiler/source:Span", { i64, ptr } }, ptr %t44, i32 0, i32 1
  %t46 = load { i64, ptr }, ptr %t45
  store { i64, ptr } %t46, ptr %l8, !tbaa !27
  br label %bb9
bb8:
  br label %bb25
bb9:
  store %olang.scope zeroinitializer, ptr %s3
  %t48 = load ptr, ptr %l0, !tbaa !29
  store ptr %t48, ptr %l34, !tbaa !29
  %t49 = load i64, ptr %l6, !tbaa !24
  %t51 = icmp sgt i64 %t49, 0
  br i1 %t51, label %bb10, label %bb11
bb10:
  store { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d236, i32 0, i32 1) }, ptr %l37, !tbaa !27
  br label %bb12
bb11:
  store { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d237, i32 0, i32 1) }, ptr %l37, !tbaa !27
  br label %bb12
bb12:
  %t53 = load ptr, ptr %l34, !tbaa !29
  %t54 = load { i64, ptr }, ptr %l37, !tbaa !27
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2eput(ptr %v0, ptr %s3, ptr %t53, { i64, ptr } %t54)
  br label %bb13
bb13:
  %t55 = load { i64, ptr }, ptr %l8, !tbaa !27
  store { i64, ptr } %t55, ptr %l9, !tbaa !27
  store i64 0, ptr %l10, !tbaa !24
  %t57 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t59 = extractvalue { i64, ptr } %t57, 0
  store i64 %t59, ptr %l11, !tbaa !24
  br label %bb14
bb14:
  %t61 = load i64, ptr %l10, !tbaa !24
  %t62 = load i64, ptr %l11, !tbaa !24
  %t65 = icmp slt i64 %t61, %t62
  %t67 = xor i1 %t65, true
  br i1 %t67, label %bb15, label %bb16
bb15:
  br label %bb24
bb16:
  br label %bb17
bb17:
  %t69 = load i64, ptr %l10, !tbaa !24
  %t71 = load { i64, ptr }, ptr %l9, !tbaa !27
  store { i64, ptr } %t71, ptr %l46, !tbaa !27
  %t72 = load i64, ptr %l10, !tbaa !24
  %t74 = getelementptr { i64, ptr }, ptr %l46, i32 0, i32 1
  %t75 = load ptr, ptr %t74, !tbaa !27
  %t76 = getelementptr ptr, ptr %t75, i64 %t72
  %t77 = load ptr, ptr %t76, !tbaa !39
  store ptr %t77, ptr %l13, !tbaa !29
  %t81 = icmp sgt i64 %t69, 0
  br i1 %t81, label %bb18, label %bb19
bb18:
  store %olang.scope zeroinitializer, ptr %s6
  %t83 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2eput(ptr %v0, ptr %s6, ptr %t83, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d238, i32 0, i32 1) })
  br label %bb20
bb19:
  br label %bb21
bb20:
  call void @__olang_scope_close(ptr %s6)
  br label %bb21
bb21:
  %t85 = load ptr, ptr %l0, !tbaa !29
  %t86 = load ptr, ptr %l13, !tbaa !29
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2epath(ptr %v0, ptr %v1, ptr %t85, ptr %t86)
  br label %bb22
bb22:
  br label %bb23
bb23:
  %t89 = load i64, ptr %l10, !tbaa !24
  %t91 = add i64 %t89, 1
  store i64 %t91, ptr %l10, !tbaa !24
  br label %bb14
bb24:
  call void @__olang_scope_close(ptr %s3)
  br label %bb36
bb25:
  br i1 true, label %bb26, label %bb27
bb26:
  br label %bb28
bb27:
  br label %bb29
bb28:
  br label %bb30
bb29:
  call void @__olang_check_failed(ptr @olang_loc_c02b53ca4cfea09e_de003c963f6a5612)
  unreachable
bb30:
  %t93 = load i64, ptr %l6, !tbaa !24
  %t95 = icmp sgt i64 %t93, 0
  br i1 %t95, label %bb31, label %bb32
bb31:
  store %olang.scope zeroinitializer, ptr %s9
  %t97 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2eput(ptr %v0, ptr %s9, ptr %t97, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d239, i32 0, i32 1) })
  br label %bb33
bb32:
  br label %bb34
bb33:
  call void @__olang_scope_close(ptr %s9)
  br label %bb34
bb34:
  %t99 = load ptr, ptr %l0, !tbaa !29
  %t100 = load ptr, ptr %l7, !tbaa !29
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2ety(ptr %v0, ptr %v1, ptr %t99, ptr %t100)
  br label %bb35
bb35:
  br label %bb36
bb36:
  %t103 = load i64, ptr %l4, !tbaa !24
  %t105 = add i64 %t103, 1
  store i64 %t105, ptr %l4, !tbaa !24
  br label %bb1
bb37:
  %t107 = load ptr, ptr %l0, !tbaa !29
  %t108 = load i1, ptr %l2, !tbaa !21
  %t111 = getelementptr %"compiler/unparse:writer", ptr %t107, i32 0, i32 6
  store i1 %t108, ptr %t111, !tbaa !21
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2funparse_2ecompiler_2funparse_3awriter_2evarDecl(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca { i64, ptr }
  %l3 = alloca i64
  %l4 = alloca i64
  %l6 = alloca i32
  %l19 = alloca { i64, ptr }
  %l36 = alloca ptr
  %l50 = alloca ptr
  %s0 = alloca %olang.scope
  %s3 = alloca %olang.scope
  %s5 = alloca %olang.scope
  %s6 = alloca %olang.scope
  %s8 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load ptr, ptr %l1, !tbaa !29
  %t4 = getelementptr %"compiler/ast:VarDecl", ptr %t2, i32 0, i32 6
  %t5 = load { i64, ptr }, ptr %t4, !tbaa !27
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2eattrs(ptr %v0, ptr %v1, ptr %t1, { i64, ptr } %t5)
  br label %bb1
bb1:
  %t8 = load ptr, ptr %l1, !tbaa !29
  %t10 = getelementptr %"compiler/ast:VarDecl", ptr %t8, i32 0, i32 0
  %t11 = load { i64, ptr }, ptr %t10, !tbaa !27
  store { i64, ptr } %t11, ptr %l2, !tbaa !27
  store i64 0, ptr %l3, !tbaa !24
  %t13 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t15 = extractvalue { i64, ptr } %t13, 0
  store i64 %t15, ptr %l4, !tbaa !24
  br label %bb2
bb2:
  %t17 = load i64, ptr %l3, !tbaa !24
  %t18 = load i64, ptr %l4, !tbaa !24
  %t21 = icmp slt i64 %t17, %t18
  %t23 = xor i1 %t21, true
  br i1 %t23, label %bb3, label %bb4
bb3:
  br label %bb12
bb4:
  br label %bb5
bb5:
  %t25 = load i64, ptr %l3, !tbaa !24
  %t27 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t27, ptr %l19, !tbaa !27
  %t28 = load i64, ptr %l3, !tbaa !24
  %t30 = getelementptr { i64, ptr }, ptr %l19, i32 0, i32 1
  %t31 = load ptr, ptr %t30, !tbaa !27
  %t32 = getelementptr i32, ptr %t31, i64 %t28
  %t33 = load i32, ptr %t32, !tbaa !33
  store i32 %t33, ptr %l6, !tbaa !23
  %t37 = icmp sgt i64 %t25, 0
  br i1 %t37, label %bb6, label %bb7
bb6:
  store %olang.scope zeroinitializer, ptr %s3
  %t39 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2eput(ptr %v0, ptr %s3, ptr %t39, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d240, i32 0, i32 1) })
  br label %bb8
bb7:
  br label %bb9
bb8:
  call void @__olang_scope_close(ptr %s3)
  br label %bb9
bb9:
  %t41 = load ptr, ptr %l0, !tbaa !29
  %t42 = load i32, ptr %l6, !tbaa !23
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2ename(ptr %v0, ptr %t41, i32 %t42)
  br label %bb10
bb10:
  br label %bb11
bb11:
  %t45 = load i64, ptr %l3, !tbaa !24
  %t47 = add i64 %t45, 1
  store i64 %t47, ptr %l3, !tbaa !24
  br label %bb2
bb12:
  %t49 = load ptr, ptr %l1, !tbaa !29
  %t51 = getelementptr %"compiler/ast:VarDecl", ptr %t49, i32 0, i32 4
  %t52 = load i1, ptr %t51, !tbaa !21
  br i1 %t52, label %bb13, label %bb14
bb13:
  store %olang.scope zeroinitializer, ptr %s5
  %t54 = load ptr, ptr %l1, !tbaa !29
  %t56 = getelementptr %"compiler/ast:VarDecl", ptr %t54, i32 0, i32 2
  %t57 = load ptr, ptr %t56, !tbaa !29
  %t59 = icmp eq ptr %t57, null
  %t61 = xor i1 %t59, true
  br i1 %t61, label %bb15, label %bb16
bb14:
  br label %bb25
bb15:
  store %olang.scope zeroinitializer, ptr %s6
  %t63 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2eput(ptr %v0, ptr %s6, ptr %t63, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d241, i32 0, i32 1) })
  br label %bb17
bb16:
  br label %bb22
bb17:
  %t65 = load ptr, ptr %l0, !tbaa !29
  store ptr %t65, ptr %l36, !tbaa !29
  %t66 = load ptr, ptr %l1, !tbaa !29
  %t68 = getelementptr %"compiler/ast:VarDecl", ptr %t66, i32 0, i32 2
  %t69 = load ptr, ptr %t68, !tbaa !29
  %t71 = icmp eq ptr %t69, null
  br i1 %t71, label %bb18, label %bb19
bb18:
  call void @__olang_check_failed(ptr @olang_loc_45ada3313b7506a3_5e369560cd76ab37)
  unreachable
bb19:
  br label %bb20
bb20:
  %t73 = load ptr, ptr %l1, !tbaa !29
  %t75 = getelementptr %"compiler/ast:VarDecl", ptr %t73, i32 0, i32 2
  %t76 = load ptr, ptr %t75, !tbaa !29
  %t77 = load ptr, ptr %l36, !tbaa !29
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2ety(ptr %v0, ptr %v1, ptr %t77, ptr %t76)
  br label %bb21
bb21:
  call void @__olang_scope_close(ptr %s6)
  br label %bb22
bb22:
  %t79 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2eput(ptr %v0, ptr %s5, ptr %t79, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d242, i32 0, i32 1) })
  br label %bb23
bb23:
  %t81 = load ptr, ptr %l0, !tbaa !29
  %t82 = load ptr, ptr %l1, !tbaa !29
  %t84 = getelementptr %"compiler/ast:VarDecl", ptr %t82, i32 0, i32 3
  %t85 = load { i64, ptr }, ptr %t84, !tbaa !27
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2eexprs(ptr %v0, ptr %v1, ptr %t81, { i64, ptr } %t85)
  br label %bb24
bb24:
  call void @__olang_scope_close(ptr %s5)
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb25:
  %t88 = load ptr, ptr %l1, !tbaa !29
  %t90 = getelementptr %"compiler/ast:VarDecl", ptr %t88, i32 0, i32 2
  %t91 = load ptr, ptr %t90, !tbaa !29
  %t93 = icmp eq ptr %t91, null
  br i1 %t93, label %bb26, label %bb27
bb26:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb27:
  br label %bb28
bb28:
  %t95 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2eput(ptr %v0, ptr %s0, ptr %t95, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d243, i32 0, i32 1) })
  br label %bb29
bb29:
  %t97 = load ptr, ptr %l0, !tbaa !29
  store ptr %t97, ptr %l50, !tbaa !29
  %t98 = load ptr, ptr %l1, !tbaa !29
  %t100 = getelementptr %"compiler/ast:VarDecl", ptr %t98, i32 0, i32 2
  %t101 = load ptr, ptr %t100, !tbaa !29
  %t103 = icmp eq ptr %t101, null
  br i1 %t103, label %bb30, label %bb31
bb30:
  call void @__olang_check_failed(ptr @olang_loc_89b7cc3957ccbb94_42e76e0711c83918)
  unreachable
bb31:
  br label %bb32
bb32:
  %t105 = load ptr, ptr %l1, !tbaa !29
  %t107 = getelementptr %"compiler/ast:VarDecl", ptr %t105, i32 0, i32 2
  %t108 = load ptr, ptr %t107, !tbaa !29
  %t109 = load ptr, ptr %l50, !tbaa !29
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2ety(ptr %v0, ptr %v1, ptr %t109, ptr %t108)
  br label %bb33
bb33:
  %t111 = load ptr, ptr %l1, !tbaa !29
  %t113 = getelementptr %"compiler/ast:VarDecl", ptr %t111, i32 0, i32 3
  %t114 = load { i64, ptr }, ptr %t113, !tbaa !27
  %t116 = extractvalue { i64, ptr } %t114, 0
  %t118 = icmp sgt i64 %t116, 0
  br i1 %t118, label %bb34, label %bb35
bb34:
  store %olang.scope zeroinitializer, ptr %s8
  %t120 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2eput(ptr %v0, ptr %s8, ptr %t120, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d244, i32 0, i32 1) })
  br label %bb36
bb35:
  br label %bb38
bb36:
  %t122 = load ptr, ptr %l0, !tbaa !29
  %t123 = load ptr, ptr %l1, !tbaa !29
  %t125 = getelementptr %"compiler/ast:VarDecl", ptr %t123, i32 0, i32 3
  %t126 = load { i64, ptr }, ptr %t125, !tbaa !27
  call void @compiler_2funparse_2ecompiler_2funparse_3awriter_2eexprs(ptr %v0, ptr %v1, ptr %t122, { i64, ptr } %t126)
  br label %bb37
bb37:
  call void @__olang_scope_close(ptr %s8)
  br label %bb38
bb38:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local i1 @compiler_2funparse_2ehidden(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i1
  %l3 = alloca ptr
  %l4 = alloca i1
  %rv = alloca i1
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1, ptr %l3, !tbaa !29
  store i1 false, ptr %l4, !tbaa !21
  %t2 = load ptr, ptr %l3, !tbaa !29
  %t3 = icmp ne ptr %t2, null
  br i1 %t3, label %bb1, label %bb2
bb1:
  %t5 = load ptr, ptr %l3, !tbaa !29
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 11}
  %t8 = icmp eq i64 %t6, 3
  store i1 %t8, ptr %l4, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l4, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  %t10 = load ptr, ptr %l0, !tbaa !29
  %t12 = getelementptr { i64, [8 x i64] }, ptr %t10, i32 0, i32 1
  %t13 = getelementptr { %"compiler/source:Span", ptr }, ptr %t12, i32 0, i32 1
  %t14 = load ptr, ptr %t13
  store ptr %t14, ptr %l1, !tbaa !29
  br label %bb5
bb4:
  br label %bb6
bb5:
  %t16 = load ptr, ptr %l1, !tbaa !29
  %t18 = getelementptr %"compiler/ast:VarDecl", ptr %t16, i32 0, i32 7
  %t19 = load i1, ptr %t18, !tbaa !21
  store i1 %t19, ptr %l2, !tbaa !21
  br label %bb11
bb6:
  br i1 true, label %bb7, label %bb8
bb7:
  br label %bb9
bb8:
  br label %bb10
bb9:
  store i1 false, ptr %l2, !tbaa !21
  br label %bb11
bb10:
  call void @__olang_check_failed(ptr @olang_loc_47e1931f52a6072d_b10993d7b9a95051)
  unreachable
bb11:
  %t21 = load i1, ptr %l2, !tbaa !21
  store i1 %t21, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i1 @compiler_2funparse_2enoErrorsOf(ptr %v0, ptr %a0) #0 {
entry:
  %l1 = alloca ptr
  %l3 = alloca ptr
  %l7 = alloca i1
  %l11 = alloca i1
  %rv = alloca i1
  br label %start
start:
  br label %bb0
bb0:
  %t3 = call ptr @compiler_2fast_2ecompiler_2fast_3aTypeRef_2eFuncSig(ptr %v0, ptr %v0, ptr %a0)
  store ptr %t3, ptr %l3
  br label %bb1
bb1:
  %t4 = load ptr, ptr %l3, !tbaa !29
  store ptr %t4, ptr %l1, !tbaa !29
  %t5 = load ptr, ptr %l1, !tbaa !29
  %t7 = icmp eq ptr %t5, null
  %t9 = xor i1 %t7, true
  br i1 %t9, label %bb2, label %bb3
bb2:
  %t11 = load ptr, ptr %l1, !tbaa !29
  %t13 = getelementptr %"compiler/ast:Sig", ptr %t11, i32 0, i32 2
  %t14 = load i1, ptr %t13, !tbaa !21
  %t16 = xor i1 %t14, true
  store i1 %t16, ptr %l7, !tbaa !21
  br label %bb4
bb3:
  store i1 false, ptr %l7, !tbaa !21
  br label %bb4
bb4:
  %t18 = load i1, ptr %l7, !tbaa !21
  br i1 %t18, label %bb5, label %bb6
bb5:
  %t19 = load ptr, ptr %l1, !tbaa !29
  %t21 = getelementptr %"compiler/ast:Sig", ptr %t19, i32 0, i32 8
  %t22 = load { i64, ptr }, ptr %t21, !tbaa !27
  %t24 = extractvalue { i64, ptr } %t22, 0
  %t26 = icmp eq i64 %t24, 0
  store i1 %t26, ptr %l11, !tbaa !21
  br label %bb7
bb6:
  store i1 false, ptr %l11, !tbaa !21
  br label %bb7
bb7:
  %t28 = load i1, ptr %l11, !tbaa !21
  store i1 %t28, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i1 @compiler_2funparse_2estartsWithMinus(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca ptr
  %l3 = alloca ptr
  %l4 = alloca ptr
  %l5 = alloca ptr
  %l6 = alloca ptr
  %l7 = alloca i1
  %l8 = alloca ptr
  %l9 = alloca i1
  %l16 = alloca i1
  %l19 = alloca ptr
  %l20 = alloca i1
  %l23 = alloca ptr
  %l24 = alloca i1
  %l30 = alloca i1
  %l31 = alloca ptr
  %l32 = alloca i1
  %l38 = alloca i1
  %l39 = alloca ptr
  %l40 = alloca i1
  %l46 = alloca i1
  %l47 = alloca ptr
  %l48 = alloca i1
  %l54 = alloca i1
  %l55 = alloca ptr
  %l56 = alloca i1
  %l62 = alloca i1
  %rv = alloca i1
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1, ptr %l8, !tbaa !29
  store i1 false, ptr %l9, !tbaa !21
  %t2 = load ptr, ptr %l8, !tbaa !29
  %t3 = icmp ne ptr %t2, null
  br i1 %t3, label %bb1, label %bb2
bb1:
  %t5 = load ptr, ptr %l8, !tbaa !29
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 30}
  %t8 = icmp eq i64 %t6, 3
  store i1 %t8, ptr %l9, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l9, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  %t10 = load ptr, ptr %l0, !tbaa !29
  %t12 = getelementptr { i64, [4 x i64] }, ptr %t10, i32 0, i32 1
  %t13 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t12, i32 0, i32 1
  %t14 = load i32, ptr %t13, !range !{i32 0, i32 114}
  store i32 %t14, ptr %l1
  br label %bb5
bb4:
  br label %bb9
bb5:
  %t16 = load i32, ptr %l1, !range !{i32 0, i32 114}
  %t18 = trunc i64 69 to i32
  %t19 = icmp eq i32 %t16, %t18
  br i1 %t19, label %bb6, label %bb7
bb6:
  store i1 true, ptr %l16, !tbaa !21
  br label %bb8
bb7:
  %t21 = load i32, ptr %l1, !range !{i32 0, i32 114}
  %t23 = trunc i64 93 to i32
  %t24 = icmp eq i32 %t21, %t23
  store i1 %t24, ptr %l16, !tbaa !21
  br label %bb8
bb8:
  %t26 = load i1, ptr %l16, !tbaa !21
  store i1 %t26, ptr %l7, !tbaa !21
  br label %bb55
bb9:
  %t27 = load ptr, ptr %l0, !tbaa !29
  store ptr %t27, ptr %l19, !tbaa !29
  store i1 false, ptr %l20, !tbaa !21
  %t28 = load ptr, ptr %l19, !tbaa !29
  %t29 = icmp ne ptr %t28, null
  br i1 %t29, label %bb10, label %bb11
bb10:
  %t31 = load ptr, ptr %l19, !tbaa !29
  %t32 = load i64, ptr %t31, !range !{i64 0, i64 30}
  %t34 = icmp eq i64 %t32, 1
  store i1 %t34, ptr %l20, !tbaa !21
  br label %bb11
bb11:
  %t35 = load i1, ptr %l20, !tbaa !21
  br i1 %t35, label %bb12, label %bb13
bb12:
  br label %bb14
bb13:
  br label %bb15
bb14:
  store i1 false, ptr %l7, !tbaa !21
  br label %bb55
bb15:
  %t36 = load ptr, ptr %l0, !tbaa !29
  store ptr %t36, ptr %l23, !tbaa !29
  store i1 false, ptr %l24, !tbaa !21
  %t37 = load ptr, ptr %l23, !tbaa !29
  %t38 = icmp ne ptr %t37, null
  br i1 %t38, label %bb16, label %bb17
bb16:
  %t40 = load ptr, ptr %l23, !tbaa !29
  %t41 = load i64, ptr %t40, !range !{i64 0, i64 30}
  %t43 = icmp eq i64 %t41, 5
  store i1 %t43, ptr %l24, !tbaa !21
  br label %bb17
bb17:
  %t44 = load i1, ptr %l24, !tbaa !21
  br i1 %t44, label %bb18, label %bb19
bb18:
  %t45 = load ptr, ptr %l0, !tbaa !29
  %t47 = getelementptr { i64, [4 x i64] }, ptr %t45, i32 0, i32 1
  %t48 = getelementptr { %"compiler/source:Span", i32, ptr, ptr }, ptr %t47, i32 0, i32 2
  %t49 = load ptr, ptr %t48
  store ptr %t49, ptr %l2, !tbaa !29
  br label %bb20
bb19:
  br label %bb22
bb20:
  %t51 = load ptr, ptr %l2, !tbaa !29
  %t53 = call i1 @compiler_2funparse_2estartsWithMinus(ptr %v0, ptr %t51)
  store i1 %t53, ptr %l30
  br label %bb21
bb21:
  %t54 = load i1, ptr %l30, !tbaa !21
  store i1 %t54, ptr %l7, !tbaa !21
  br label %bb55
bb22:
  %t55 = load ptr, ptr %l0, !tbaa !29
  store ptr %t55, ptr %l31, !tbaa !29
  store i1 false, ptr %l32, !tbaa !21
  %t56 = load ptr, ptr %l31, !tbaa !29
  %t57 = icmp ne ptr %t56, null
  br i1 %t57, label %bb23, label %bb24
bb23:
  %t59 = load ptr, ptr %l31, !tbaa !29
  %t60 = load i64, ptr %t59, !range !{i64 0, i64 30}
  %t62 = icmp eq i64 %t60, 4
  store i1 %t62, ptr %l32, !tbaa !21
  br label %bb24
bb24:
  %t63 = load i1, ptr %l32, !tbaa !21
  br i1 %t63, label %bb25, label %bb26
bb25:
  %t64 = load ptr, ptr %l0, !tbaa !29
  %t66 = getelementptr { i64, [4 x i64] }, ptr %t64, i32 0, i32 1
  %t67 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t66, i32 0, i32 2
  %t68 = load ptr, ptr %t67
  store ptr %t68, ptr %l3, !tbaa !29
  br label %bb27
bb26:
  br label %bb29
bb27:
  %t70 = load ptr, ptr %l3, !tbaa !29
  %t72 = call i1 @compiler_2funparse_2estartsWithMinus(ptr %v0, ptr %t70)
  store i1 %t72, ptr %l38
  br label %bb28
bb28:
  %t73 = load i1, ptr %l38, !tbaa !21
  store i1 %t73, ptr %l7, !tbaa !21
  br label %bb55
bb29:
  %t74 = load ptr, ptr %l0, !tbaa !29
  store ptr %t74, ptr %l39, !tbaa !29
  store i1 false, ptr %l40, !tbaa !21
  %t75 = load ptr, ptr %l39, !tbaa !29
  %t76 = icmp ne ptr %t75, null
  br i1 %t76, label %bb30, label %bb31
bb30:
  %t78 = load ptr, ptr %l39, !tbaa !29
  %t79 = load i64, ptr %t78, !range !{i64 0, i64 30}
  %t81 = icmp eq i64 %t79, 12
  store i1 %t81, ptr %l40, !tbaa !21
  br label %bb31
bb31:
  %t82 = load i1, ptr %l40, !tbaa !21
  br i1 %t82, label %bb32, label %bb33
bb32:
  %t83 = load ptr, ptr %l0, !tbaa !29
  %t85 = getelementptr { i64, [4 x i64] }, ptr %t83, i32 0, i32 1
  %t86 = getelementptr { %"compiler/source:Span", ptr, { i64, ptr } }, ptr %t85, i32 0, i32 1
  %t87 = load ptr, ptr %t86
  store ptr %t87, ptr %l4, !tbaa !29
  br label %bb34
bb33:
  br label %bb36
bb34:
  %t89 = load ptr, ptr %l4, !tbaa !29
  %t91 = call i1 @compiler_2funparse_2estartsWithMinus(ptr %v0, ptr %t89)
  store i1 %t91, ptr %l46
  br label %bb35
bb35:
  %t92 = load i1, ptr %l46, !tbaa !21
  store i1 %t92, ptr %l7, !tbaa !21
  br label %bb55
bb36:
  %t93 = load ptr, ptr %l0, !tbaa !29
  store ptr %t93, ptr %l47, !tbaa !29
  store i1 false, ptr %l48, !tbaa !21
  %t94 = load ptr, ptr %l47, !tbaa !29
  %t95 = icmp ne ptr %t94, null
  br i1 %t95, label %bb37, label %bb38
bb37:
  %t97 = load ptr, ptr %l47, !tbaa !29
  %t98 = load i64, ptr %t97, !range !{i64 0, i64 30}
  %t100 = icmp eq i64 %t98, 14
  store i1 %t100, ptr %l48, !tbaa !21
  br label %bb38
bb38:
  %t101 = load i1, ptr %l48, !tbaa !21
  br i1 %t101, label %bb39, label %bb40
bb39:
  %t102 = load ptr, ptr %l0, !tbaa !29
  %t104 = getelementptr { i64, [4 x i64] }, ptr %t102, i32 0, i32 1
  %t105 = getelementptr { %"compiler/source:Span", ptr, i32 }, ptr %t104, i32 0, i32 1
  %t106 = load ptr, ptr %t105
  store ptr %t106, ptr %l5, !tbaa !29
  br label %bb41
bb40:
  br label %bb43
bb41:
  %t108 = load ptr, ptr %l5, !tbaa !29
  %t110 = call i1 @compiler_2funparse_2estartsWithMinus(ptr %v0, ptr %t108)
  store i1 %t110, ptr %l54
  br label %bb42
bb42:
  %t111 = load i1, ptr %l54, !tbaa !21
  store i1 %t111, ptr %l7, !tbaa !21
  br label %bb55
bb43:
  %t112 = load ptr, ptr %l0, !tbaa !29
  store ptr %t112, ptr %l55, !tbaa !29
  store i1 false, ptr %l56, !tbaa !21
  %t113 = load ptr, ptr %l55, !tbaa !29
  %t114 = icmp ne ptr %t113, null
  br i1 %t114, label %bb44, label %bb45
bb44:
  %t116 = load ptr, ptr %l55, !tbaa !29
  %t117 = load i64, ptr %t116, !range !{i64 0, i64 30}
  %t119 = icmp eq i64 %t117, 15
  store i1 %t119, ptr %l56, !tbaa !21
  br label %bb45
bb45:
  %t120 = load i1, ptr %l56, !tbaa !21
  br i1 %t120, label %bb46, label %bb47
bb46:
  %t121 = load ptr, ptr %l0, !tbaa !29
  %t123 = getelementptr { i64, [4 x i64] }, ptr %t121, i32 0, i32 1
  %t124 = getelementptr { %"compiler/source:Span", ptr, { i64, ptr } }, ptr %t123, i32 0, i32 1
  %t125 = load ptr, ptr %t124
  store ptr %t125, ptr %l6, !tbaa !29
  br label %bb48
bb47:
  br label %bb50
bb48:
  %t127 = load ptr, ptr %l6, !tbaa !29
  %t129 = call i1 @compiler_2funparse_2estartsWithMinus(ptr %v0, ptr %t127)
  store i1 %t129, ptr %l62
  br label %bb49
bb49:
  %t130 = load i1, ptr %l62, !tbaa !21
  store i1 %t130, ptr %l7, !tbaa !21
  br label %bb55
bb50:
  br i1 true, label %bb51, label %bb52
bb51:
  br label %bb53
bb52:
  br label %bb54
bb53:
  store i1 false, ptr %l7, !tbaa !21
  br label %bb55
bb54:
  call void @__olang_check_failed(ptr @olang_loc_d36f35e5fb1d5e1e_8f0854d909464512)
  unreachable
bb55:
  %t131 = load i1, ptr %l7, !tbaa !21
  store i1 %t131, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local %"compiler/unparse:writer" @compiler_2funparse_3awriter_2ector(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, { i64, ptr } %a1, ptr %a2) #0 {
entry:
  %l3 = alloca ptr
  %l4 = alloca { i64, ptr }
  %l5 = alloca ptr
  %l6 = alloca %"std/prelude/text:StringBuilder"
  %l7 = alloca i64
  %l14 = alloca i64
  %l16 = alloca %"std/prelude/text:StringBuilder"
  %l18 = alloca i64
  %l20 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %rv = alloca %"compiler/unparse:writer"
  br label %start
start:
  br label %bb0
bb0:
  store ptr %a0, ptr %l3, !tbaa !29
  store { i64, ptr } %a1, ptr %l4, !tbaa !27
  store ptr %a2, ptr %l5, !tbaa !29
  %t7 = ptrtoint ptr %v3 to i64
  store i64 %t7, ptr %l14, !tbaa !24
  %t8 = load i1, ptr @olang_2esole_2ecompiler_2funparse_3awriter_2e3
  br i1 %t8, label %bb1, label %bb2
bb1:
  %t10 = call ptr @__olang_region_make(ptr %v3)
  %t11 = ptrtoint ptr %t10 to i64
  store i64 %t11, ptr %l14, !tbaa !24
  br label %bb2
bb2:
  %t12 = load i64, ptr %l14
  %t13 = inttoptr i64 %t12 to ptr
  %t14 = call %"std/prelude/text:StringBuilder" @std_2fprelude_2ftext_3aStringBuilder_2ector(ptr %t13)
  store %"std/prelude/text:StringBuilder" %t14, ptr %l16
  br label %bb3
bb3:
  %t15 = load i1, ptr @olang_2esole_2ecompiler_2funparse_3awriter_2e3
  br i1 %t15, label %bb4, label %bb5
bb4:
  %t17 = load i64, ptr %l14
  %t18 = inttoptr i64 %t17 to ptr
  %t19 = getelementptr %"std/prelude/text:StringBuilder", ptr %l16, i32 0, i32 0
  %t20 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t19, i32 0, i32 0
  %t21 = load { i64, ptr }, ptr %t20
  %t22 = extractvalue { i64, ptr } %t21, 1
  %t23 = call ptr @__olang_region_or(ptr %t22, ptr null)
  %t24 = icmp ne ptr %t23, null
  %t25 = select i1 %t24, ptr %t23, ptr null
  %t26 = icmp eq ptr %t25, %t18
  call void @__olang_region_settle(ptr %t18, i1 %t26)
  br label %bb5
bb5:
  %t27 = load %"std/prelude/text:StringBuilder", ptr %l16
  store %"std/prelude/text:StringBuilder" %t27, ptr %l6
  store i64 0, ptr %l7, !tbaa !24
  %t28 = ptrtoint ptr %v3 to i64
  store i64 %t28, ptr %l18, !tbaa !24
  %t29 = load i1, ptr @olang_2esole_2ecompiler_2funparse_3awriter_2e5
  br i1 %t29, label %bb6, label %bb7
bb6:
  %t31 = call ptr @__olang_region_make(ptr %v3)
  %t32 = ptrtoint ptr %t31 to i64
  store i64 %t32, ptr %l18, !tbaa !24
  br label %bb7
bb7:
  %t33 = load i64, ptr %l18
  %t34 = inttoptr i64 %t33 to ptr
  %t35 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aSpan_3e_2ector(ptr %t34, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t35, ptr %l20
  br label %bb8
bb8:
  %t36 = load i1, ptr @olang_2esole_2ecompiler_2funparse_3awriter_2e5
  br i1 %t36, label %bb9, label %bb10
bb9:
  %t38 = load i64, ptr %l18
  %t39 = inttoptr i64 %t38 to ptr
  %t40 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l20, i32 0, i32 0
  %t41 = load { i64, ptr }, ptr %t40
  %t42 = extractvalue { i64, ptr } %t41, 1
  %t43 = call ptr @__olang_region_or(ptr %t42, ptr null)
  %t44 = icmp ne ptr %t43, null
  %t45 = select i1 %t44, ptr %t43, ptr null
  %t46 = icmp eq ptr %t45, %t39
  call void @__olang_region_settle(ptr %t39, i1 %t46)
  br label %bb10
bb10:
  %t47 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l20
  %t48 = load ptr, ptr %l3, !tbaa !29
  %t49 = insertvalue %"compiler/unparse:writer" undef, ptr %t48, 0
  %t50 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t51 = insertvalue %"compiler/unparse:writer" %t49, { i64, ptr } %t50, 1
  %t52 = load ptr, ptr %l5, !tbaa !29
  %t53 = insertvalue %"compiler/unparse:writer" %t51, ptr %t52, 2
  %t54 = load %"std/prelude/text:StringBuilder", ptr %l6
  %t55 = insertvalue %"compiler/unparse:writer" %t53, %"std/prelude/text:StringBuilder" %t54, 3
  %t56 = load i64, ptr %l7, !tbaa !24
  %t57 = insertvalue %"compiler/unparse:writer" %t55, i64 %t56, 4
  %t59 = insertvalue %"compiler/unparse:writer" %t57, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t47, 5
  %t61 = insertvalue %"compiler/unparse:writer" %t59, i1 false, 6
  %t63 = insertvalue %"compiler/unparse:writer" %t61, i1 false, 7
  store %"compiler/unparse:writer" %t63, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/unparse:writer", ptr %rv
  ret %"compiler/unparse:writer" %rr
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
@.d0 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"_" }>, align 8
declare void @__olang_check_failed(ptr) cold noreturn
@.d1 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"@" }>, align 8
@.d2 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d3 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"{ }" }>, align 8
@.d4 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"{" }>, align 8
@.d5 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"}" }>, align 8
@.d6 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c": " }>, align 8
@.d7 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d8 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d9 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c": " }>, align 8
@.d10 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c" catch" }>, align 8
@.d11 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c", " }>, align 8
@.d12 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@olang_2esole_2eArray_3ccompiler_2fast_3aPath_26_3e_2e_2d1 = weak hidden constant i1 false
declare ptr @__olang_region_or(ptr, ptr)
@.d13 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d14 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d15 = private constant <{ i64, [9 x i8] }> <{ i64 0, [9 x i8] c" default " }>, align 8
@.d16 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c" [" }>, align 8
@.d17 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c", " }>, align 8
@.d18 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"]" }>, align 8
@.d19 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c"extern " }>, align 8
@.d20 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c"import " }>, align 8
@.d21 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d22 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c" link " }>, align 8
@.d23 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"test " }>, align 8
@.d24 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"." }>, align 8
@.d25 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d26 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d27 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c" = " }>, align 8
@.d28 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c"assert " }>, align 8
@.d29 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c", " }>, align 8
@.d30 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"type " }>, align 8
@.d31 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c" error" }>, align 8
@.d32 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c", " }>, align 8
@.d33 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d34 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c" {" }>, align 8
@.d35 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"(" }>, align 8
@.d36 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c")" }>, align 8
@.d37 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"}" }>, align 8
@.d38 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c" ?" }>, align 8
@.d39 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c", " }>, align 8
@.d40 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d41 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"(" }>, align 8
@.d42 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c")" }>, align 8
@.d43 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d44 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d45 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d46 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d47 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c" not in " }>, align 8
@.d48 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d49 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d50 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c" if " }>, align 8
@.d51 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c" else " }>, align 8
@.d52 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c" is not " }>, align 8
@.d53 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c" is " }>, align 8
@.d54 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c" is not " }>, align 8
@.d55 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c" is " }>, align 8
@.d56 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c" as " }>, align 8
@.d57 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"(" }>, align 8
@.d58 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c")" }>, align 8
@.d59 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"<" }>, align 8
@.d60 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c">" }>, align 8
@.d61 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"." }>, align 8
@.d62 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"[" }>, align 8
@.d63 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"]" }>, align 8
@.d64 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"[" }>, align 8
@.d65 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c":" }>, align 8
@.d66 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"]" }>, align 8
@.d67 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"[" }>, align 8
@.d68 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"]" }>, align 8
@.d69 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"[" }>, align 8
@.d70 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"]" }>, align 8
@.d71 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"[" }>, align 8
@.d72 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c" for " }>, align 8
@.d73 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c", " }>, align 8
@.d74 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c" in " }>, align 8
@.d75 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c" if " }>, align 8
@.d76 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"]" }>, align 8
@.d77 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d78 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"try " }>, align 8
@.d79 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"fn" }>, align 8
@.d80 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"range " }>, align 8
@.d81 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c"default" }>, align 8
@.d82 = private constant <{ i64, [11 x i8] }> <{ i64 0, [11 x i8] c"unreachable" }>, align 8
@.d83 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d84 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c" = " }>, align 8
@.d85 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"..." }>, align 8
@.d86 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c", " }>, align 8
@.d87 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c", " }>, align 8
@.d88 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c"extern " }>, align 8
@.d89 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"link " }>, align 8
@.d90 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d91 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"{" }>, align 8
@.d92 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"type " }>, align 8
@.d93 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"}" }>, align 8
@.d94 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"fn " }>, align 8
@.d95 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c"export " }>, align 8
@.d96 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"fn " }>, align 8
@.d97 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"(" }>, align 8
@.d98 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c") " }>, align 8
@.d99 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"." }>, align 8
@.d100 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d101 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"(fn" }>, align 8
@.d102 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"fn" }>, align 8
@.d103 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c")" }>, align 8
@.d104 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"if " }>, align 8
@.d105 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c" else" }>, align 8
@.d106 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d107 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"match " }>, align 8
@.d108 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c" {" }>, align 8
@.d109 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"case " }>, align 8
@.d110 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c", " }>, align 8
@.d111 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c", " }>, align 8
@.d112 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c" if " }>, align 8
@.d113 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"}" }>, align 8
@.d114 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"    " }>, align 8
@.d115 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d116 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c" = " }>, align 8
@.d117 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c", " }>, align 8
@.d118 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"." }>, align 8
@.d119 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"_" }>, align 8
@.d120 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"(" }>, align 8
@.d121 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c", " }>, align 8
@.d122 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c")" }>, align 8
@.d123 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d124 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"..." }>, align 8
@.d125 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"_" }>, align 8
@.d126 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c" = " }>, align 8
@.d127 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d128 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d129 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c" in " }>, align 8
@.d130 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"." }>, align 8
@.d131 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"(" }>, align 8
@.d132 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c", ..." }>, align 8
@.d133 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"..." }>, align 8
@.d134 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c")" }>, align 8
@.d135 = private constant <{ i64, [9 x i8] }> <{ i64 0, [9 x i8] c" noreturn" }>, align 8
@.d136 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c", " }>, align 8
@.d137 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d138 = private constant <{ i64, [9 x i8] }> <{ i64 0, [9 x i8] c" commutes" }>, align 8
@.d139 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c" := " }>, align 8
@.d140 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c" = " }>, align 8
@.d141 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d142 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d143 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"try " }>, align 8
@.d144 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"for " }>, align 8
@.d145 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"for " }>, align 8
@.d146 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"for " }>, align 8
@.d147 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c", " }>, align 8
@.d148 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c", " }>, align 8
@.d149 = private constant <{ i64, [9 x i8] }> <{ i64 0, [9 x i8] c"comptime " }>, align 8
@.d150 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"for " }>, align 8
@.d151 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c", " }>, align 8
@.d152 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c" in " }>, align 8
@.d153 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"try " }>, align 8
@.d154 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"do " }>, align 8
@.d155 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c" for " }>, align 8
@.d156 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"return" }>, align 8
@.d157 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d158 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"yield " }>, align 8
@.d159 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c"become " }>, align 8
@.d160 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d161 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c"assert " }>, align 8
@.d162 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c", " }>, align 8
@.d163 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"error" }>, align 8
@.d164 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d165 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"(" }>, align 8
@.d166 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c")" }>, align 8
@.d167 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"spawn " }>, align 8
@.d168 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c" = " }>, align 8
@.d169 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"try " }>, align 8
@.d170 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"join " }>, align 8
@.d171 = private constant <{ i64, [9 x i8] }> <{ i64 0, [9 x i8] c"errdefer " }>, align 8
@.d172 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"defer " }>, align 8
@.d173 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"{" }>, align 8
@.d174 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"}" }>, align 8
@.d175 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"if " }>, align 8
@.d176 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d177 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c" else " }>, align 8
@.d178 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c" else " }>, align 8
@.d179 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"." }>, align 8
@.d180 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"<" }>, align 8
@.d181 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c">" }>, align 8
@.d182 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d183 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"weak " }>, align 8
@.d184 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"?&" }>, align 8
@.d185 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"&" }>, align 8
@.d186 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"?&" }>, align 8
@.d187 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"&" }>, align 8
@.d188 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"any " }>, align 8
@.d189 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"..." }>, align 8
@.d190 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"? " }>, align 8
@.d191 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c", " }>, align 8
@.d192 = private constant <{ i64, [9 x i8] }> <{ i64 0, [9 x i8] c"weak mut " }>, align 8
@.d193 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"weak " }>, align 8
@.d194 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"mut" }>, align 8
@.d195 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d196 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"struct" }>, align 8
@.d197 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"(" }>, align 8
@.d198 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c")" }>, align 8
@.d199 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d200 = private constant <{ i64, [10 x i8] }> <{ i64 0, [10 x i8] c" destruct " }>, align 8
@.d201 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"enum " }>, align 8
@.d202 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d203 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"{" }>, align 8
@.d204 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d205 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"(" }>, align 8
@.d206 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c")" }>, align 8
@.d207 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c" = " }>, align 8
@.d208 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"}" }>, align 8
@.d209 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"trait " }>, align 8
@.d210 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c"extends " }>, align 8
@.d211 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c", " }>, align 8
@.d212 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d213 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"for " }>, align 8
@.d214 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c", " }>, align 8
@.d215 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d216 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"{" }>, align 8
@.d217 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"mut " }>, align 8
@.d218 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"}" }>, align 8
@.d219 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"(" }>, align 8
@.d220 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c")" }>, align 8
@.d221 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d222 = private constant <{ i64, [12 x i8] }> <{ i64 0, [12 x i8] c"extern type " }>, align 8
@.d223 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"type " }>, align 8
@.d224 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c" immut" }>, align 8
@.d225 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c" unique" }>, align 8
@.d226 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c" packed" }>, align 8
@.d227 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c" extends" }>, align 8
@.d228 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d229 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"<" }>, align 8
@.d230 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c" ? " }>, align 8
@.d231 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"? " }>, align 8
@.d232 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c", " }>, align 8
@.d233 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d234 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d235 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c">" }>, align 8
@.d236 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c" ? " }>, align 8
@.d237 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"? " }>, align 8
@.d238 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c", " }>, align 8
@.d239 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c", " }>, align 8
@.d240 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c", " }>, align 8
@.d241 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d242 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c" := " }>, align 8
@.d243 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d244 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c" = " }>, align 8
@olang_2esole_2ecompiler_2funparse_3awriter_2e3 = weak hidden constant i1 false
declare ptr @__olang_region_make(ptr) noinline
declare void @__olang_region_settle(ptr, i1)
@olang_2esole_2ecompiler_2funparse_3awriter_2e5 = weak hidden constant i1 false
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
declare noalias ptr @__olang_scope_alloc_slow(ptr, i64, i64) noinline
declare { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aSpan_3e_2eToArray_3ccompiler_2fsource_3aSpan_3e(ptr %v0, ptr %v1, ptr %a0)
declare void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePushChar(ptr %v0, ptr %a0, i8 %a1)
declare { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %v0, ptr %v1, ptr %a0)
declare { i64, ptr } @compiler_2fsource_2ecompiler_2fsource_3aNames_2eText(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
@olang_loc_97fb03c83c422508_396f69b1ea6ff204 = external constant [0 x i8]
declare %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aStmt_2eSpan(ptr %v0, ptr %a0)
declare i1 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eHolds(ptr %v0, ptr %a0, i64 %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aSpan_3e_2ePush_3ccompiler_2fsource_3aSpan_3e(ptr %v0, ptr %a0, %"compiler/source:Span" %a1)
@olang_loc_6d411809e3c45284_6ddb613e25dacce8 = external constant [0 x i8]
@olang_loc_3b272a795e4745a2_9a90297686d0fdde = external constant [0 x i8]
@olang_loc_7ff52852c0aa476c_d4838bd4ef885ee0 = external constant [0 x i8]
@olang_loc_7f8607ca82c86e8f_41d7f7ff4057cd03 = external constant [0 x i8]
declare { i64, ptr } @compiler_2ftoken_2ecompiler_2ftoken_3aTok_2eText(ptr %v0, i32 %a0)
@olang_loc_577bb2401887ee03_bd83bee27b444ed7 = external constant [0 x i8]
@olang_loc_47b511f5ef6d9e74_baf04e552c3da2b8 = external constant [0 x i8]
@olang_loc_e6dde321a76d1169_ef8c066898e78ecd = external constant [0 x i8]
@olang_loc_af8532b2afdd02b1_ed9973e7a2ad66a5 = external constant [0 x i8]
@olang_loc_c8c27977e1720628_5d646bf05a6faac = external constant [0 x i8]
@olang_loc_240300a98391f326_30555605a48ff2da = external constant [0 x i8]
declare i1 @compiler_2fast_2ecompiler_2fast_3aFunc_2eIsBuilder(ptr %v0, ptr %a0)
@olang_loc_62b5cb0662a9bd0d_8638c84775e31461 = external constant [0 x i8]
@olang_loc_450b6e4c0e54f911_1dcad8b8a27ff01d = external constant [0 x i8]
@olang_loc_375b6e3c7dc4e00a_588d095da59240b6 = external constant [0 x i8]
@olang_loc_e1b6c554c381b10b_f727e5cc4e37ef67 = external constant [0 x i8]
@olang_loc_ba8e182b2fbe7a1c_99d493faf8d7cb48 = external constant [0 x i8]
@olang_loc_a676b6f90e9ab794_adfa384105d75b88 = external constant [0 x i8]
@olang_loc_8218e8270bec8206_ca247080b262927a = external constant [0 x i8]
@olang_loc_212921701ccd28fb_40c266614e32415f = external constant [0 x i8]
declare void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare i64 @std_2fprelude_2fnumber_2eI64_2eMin_3cI64_3e(i64 %a0, i64 %a1)
@olang_loc_2301005a90ba30f7_2e0b8cd6b5bb3c83 = external constant [0 x i8]
@olang_loc_6385ebb2fa48e0d8_1e44ec8c8ca0ecf4 = external constant [0 x i8]
@olang_loc_19d95224243c5dd3_a108b37826b1917 = external constant [0 x i8]
@olang_loc_9c4378154f5f7dac_a032de2992525ef0 = external constant [0 x i8]
@olang_loc_b263a57856eac862_46b7b1031f9001a6 = external constant [0 x i8]
@olang_loc_9166140a1ac8280_ddd22134593fa34 = external constant [0 x i8]
@olang_loc_69b21e264e8a714a_b3e97d9d77526506 = external constant [0 x i8]
@olang_loc_8585d6fe8f316a51_b60a12ce50df87ed = external constant [0 x i8]
@olang_loc_eabe3ddcfaef285c_106dba970e52f8d8 = external constant [0 x i8]
@olang_loc_14b8182deed7e34b_cfe8cf3ea4c448f7 = external constant [0 x i8]
declare ptr @compiler_2fast_2ecompiler_2fast_3aTypeRef_2eFuncSig(ptr %v0, ptr %v1, ptr %a0)
declare i1 @compiler_2fast_2ecompiler_2fast_3aTypeRef_2eIsWeak(ptr %v0, ptr %a0)
declare ptr @compiler_2fast_2ecompiler_2fast_3aTypeRef_2eUnweak(ptr %v0, ptr %v1, ptr %a0)
@olang_loc_9034b6aed20fb51a_d179ca40c5e654ce = external constant [0 x i8]
@olang_loc_8cd05a7785ffddf0_abfc69165374635c = external constant [0 x i8]
@olang_loc_c53cd7dd70350acf_d5f64367475d1e4b = external constant [0 x i8]
@olang_loc_565cf8a51c2b309e_2af0495fa70fac4a = external constant [0 x i8]
@olang_loc_a9c38de43eb77545_46c40237e7b6a551 = external constant [0 x i8]
@olang_loc_7b9eb6dfa833729b_791a1e6ae071d10f = external constant [0 x i8]
@olang_loc_ebbf44be12946e17_d86a8718ca658f6b = external constant [0 x i8]
@olang_loc_2cc3368697e3422f_b87e422715826713 = external constant [0 x i8]
@olang_loc_b36b34168d540f92_3d8b83b8d4d4846 = external constant [0 x i8]
@olang_loc_c02b53ca4cfea09e_de003c963f6a5612 = external constant [0 x i8]
@olang_loc_45ada3313b7506a3_5e369560cd76ab37 = external constant [0 x i8]
@olang_loc_89b7cc3957ccbb94_42e76e0711c83918 = external constant [0 x i8]
@olang_loc_47e1931f52a6072d_b10993d7b9a95051 = external constant [0 x i8]
@olang_loc_d36f35e5fb1d5e1e_8f0854d909464512 = external constant [0 x i8]
declare %"std/prelude/text:StringBuilder" @std_2fprelude_2ftext_3aStringBuilder_2ector(ptr %v0)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aSpan_3e_2ector(ptr %v0, i64 %a0)

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
