source_filename = "compiler_names-1.quick.ll"
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
%"compiler/ast:Catch" = type { %"compiler/source:Span", { i64, ptr }, { i64, ptr }, { i64, ptr }, i1, i32, %"compiler/source:Span" }
%"compiler/source:Span" = type { i32, i32 }
%"compiler/ast:Path" = type { %"compiler/source:Span", { i64, ptr } }
%"compiler/names:local" = type { i32, %"compiler/source:Span", i32, i1, i1, i1 }
%"compiler/names:Resolver" = type { ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i1, i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" = type { { i64, ptr }, i64, i64 }
%"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" = type { { i64, ptr }, { i64, ptr }, { i64, ptr }, i64, i64, i64 }
%"compiler/names:Ref" = type { i32, i64, i64 }
%"compiler/diagmsg:Msg" = type { i32, { i64, ptr }, { i64, ptr } }
%"compiler/names:Entry" = type { i32, %"compiler/source:Span", i32, i1, ptr }
%"compiler/load:Loader" = type { { i64, ptr }, ptr, ptr, ptr, ptr, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", { i64, ptr }, { i64, ptr }, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", { i64, ptr }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/names:Table" = type { %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"compiler/load:Module" = type { { i64, ptr }, { i64, ptr }, { i64, ptr }, i1, i64, i1, ptr, ptr, { i64, ptr }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr, ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr, ptr, ptr, i1, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, { i64, ptr }, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"compiler/load:Import" = type { %"compiler/source:Span", %"compiler/source:Span", { i64, ptr }, { i64, ptr }, i64, i64, { i64, ptr }, %"compiler/source:Span" }
%"std/pair:Pair.ee791c76fa337c2e45b252e8964cf3ed" = type { i32, i64 }
%"std/pair:Pair.9f40551e0d6019a8e678d8f53048b6ba" = type { i64, %"compiler/source:Span" }
%"compiler/ast:TopIf" = type { ptr, ptr, ptr, ptr }
%"compiler/ast:TopBranch" = type { %"compiler/source:Span", { i64, ptr }, i64 }
%"compiler/ast:VarDecl" = type { { i64, ptr }, { i64, ptr }, ptr, { i64, ptr }, i1, i1, { i64, ptr }, i1 }
%"compiler/source:Source" = type { { i64, ptr }, { i64, ptr }, { i64, ptr } }
%"compiler/ast:Case" = type { %"compiler/source:Span", { i64, ptr }, { i64, ptr }, ptr, { i64, ptr }, ptr }
%"compiler/ast:Branch" = type { %"compiler/source:Span", { i64, ptr }, i64 }
%"compiler/cond:Decision" = type { i32, i1 }
%"compiler/cond:Eval" = type { { i64, ptr }, ptr, ptr, ptr, i1, i1, i1, %"compiler/source:Span", %"compiler/diagmsg:Msg", i64, i64, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/cond:Scope" = type { i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/ast:Chain" = type { { i64, ptr }, { i64, ptr } }
%"compiler/ast:Compr" = type { ptr, ptr, i32, i32, ptr, ptr, i1, i64 }
%"compiler/ast:Func" = type { %"compiler/source:Span", ptr, i32, ptr, { i64, ptr }, { i64, ptr }, i1, i1, { i64, ptr }, ptr, i32 }
%"compiler/names:raised" = type { i32, %"compiler/source:Span", i1, { i64, ptr } }
%"compiler/names:raisedName" = type { i32, %"compiler/source:Span", i64, i1, i64, { i64, ptr } }
%"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" = type { i64, i64 }
%"compiler/ast:If" = type { ptr, ptr, ptr }
%"compiler/names:Unread" = type { i64, %"compiler/source:Span", i32, i1 }
%"compiler/token:Token" = type { i32, i8, i32, i32 }
%"compiler/scan:Tokens" = type { { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr } }
%"compiler/ast:Param" = type { %"compiler/source:Span", i32, ptr, ptr, { i64, ptr } }
%"compiler/ast:TypeDecl" = type { i32, { i64, ptr }, i1, ptr, { i64, ptr }, i32, i1 }
%"compiler/ast:Sig" = type { { i64, ptr }, { i64, ptr }, i1, { i64, ptr }, i1, ptr, i1, i1, { i64, ptr } }
%"std/prelude/map:MapIter.bf5835bb10600fe6a7fc1da14a6360d9" = type { ptr, i64 }
%"std/prelude/map:MapEntry.ee791c76fa337c2e45b252e8964cf3ed" = type { i32, i64 }
%"compiler/msgs:Nearest" = type { { i64, ptr }, { i64, ptr }, i64 }
%"compiler/ast:CaseDecl" = type { %"compiler/source:Span", i32, { i64, ptr }, i1, ptr, { i64, ptr } }
%"compiler/ast:StructBody" = type { { i64, ptr }, ptr, { i64, ptr }, %"compiler/source:Span", { i64, ptr }, { i64, ptr } }
define dso_local i1 @compiler_2fnames_2eBuiltinTypeName(ptr %v0, { i64, ptr } %a0) #0 {
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
  %l15 = alloca i1
  %l17 = alloca i1
  %l18 = alloca i1
  %l20 = alloca i1
  %l21 = alloca i1
  %l23 = alloca i1
  %l24 = alloca i1
  %l26 = alloca i1
  %l27 = alloca i1
  %l29 = alloca i1
  %l30 = alloca i1
  %l32 = alloca i1
  %l33 = alloca i1
  %l35 = alloca i1
  %l36 = alloca i1
  %l38 = alloca i1
  %l39 = alloca i1
  %l41 = alloca i1
  %l42 = alloca i1
  %l44 = alloca i1
  %s0 = alloca %olang.scope
  %rv = alloca i1
  store { i64, ptr } %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t3 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t1, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d0, i32 0, i32 1) })
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
  %t7 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t5, { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d1, i32 0, i32 1) })
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
  %t12 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t10, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d2, i32 0, i32 1) })
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
  %t17 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t15, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d3, i32 0, i32 1) })
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
  %t22 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t20, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d4, i32 0, i32 1) })
  store i1 %t22, ptr %l14
  br label %bb16
bb16:
  %t23 = load i1, ptr %l14, !tbaa !21
  store i1 %t23, ptr %l12, !tbaa !21
  br label %bb17
bb17:
  %t24 = load i1, ptr %l12, !tbaa !21
  br i1 %t24, label %bb18, label %bb19
bb18:
  store i1 true, ptr %l15, !tbaa !21
  br label %bb21
bb19:
  %t25 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t27 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t25, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d5, i32 0, i32 1) })
  store i1 %t27, ptr %l17
  br label %bb20
bb20:
  %t28 = load i1, ptr %l17, !tbaa !21
  store i1 %t28, ptr %l15, !tbaa !21
  br label %bb21
bb21:
  %t29 = load i1, ptr %l15, !tbaa !21
  br i1 %t29, label %bb22, label %bb23
bb22:
  store i1 true, ptr %l18, !tbaa !21
  br label %bb25
bb23:
  %t30 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t32 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t30, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d6, i32 0, i32 1) })
  store i1 %t32, ptr %l20
  br label %bb24
bb24:
  %t33 = load i1, ptr %l20, !tbaa !21
  store i1 %t33, ptr %l18, !tbaa !21
  br label %bb25
bb25:
  %t34 = load i1, ptr %l18, !tbaa !21
  br i1 %t34, label %bb26, label %bb27
bb26:
  store i1 true, ptr %l21, !tbaa !21
  br label %bb29
bb27:
  %t35 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t37 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t35, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d7, i32 0, i32 1) })
  store i1 %t37, ptr %l23
  br label %bb28
bb28:
  %t38 = load i1, ptr %l23, !tbaa !21
  store i1 %t38, ptr %l21, !tbaa !21
  br label %bb29
bb29:
  %t39 = load i1, ptr %l21, !tbaa !21
  br i1 %t39, label %bb30, label %bb31
bb30:
  store i1 true, ptr %l24, !tbaa !21
  br label %bb33
bb31:
  %t40 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t42 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t40, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d8, i32 0, i32 1) })
  store i1 %t42, ptr %l26
  br label %bb32
bb32:
  %t43 = load i1, ptr %l26, !tbaa !21
  store i1 %t43, ptr %l24, !tbaa !21
  br label %bb33
bb33:
  %t44 = load i1, ptr %l24, !tbaa !21
  br i1 %t44, label %bb34, label %bb35
bb34:
  store i1 true, ptr %l27, !tbaa !21
  br label %bb37
bb35:
  %t45 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t47 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t45, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d9, i32 0, i32 1) })
  store i1 %t47, ptr %l29
  br label %bb36
bb36:
  %t48 = load i1, ptr %l29, !tbaa !21
  store i1 %t48, ptr %l27, !tbaa !21
  br label %bb37
bb37:
  %t49 = load i1, ptr %l27, !tbaa !21
  br i1 %t49, label %bb38, label %bb39
bb38:
  store i1 true, ptr %l30, !tbaa !21
  br label %bb41
bb39:
  %t50 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t52 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t50, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d10, i32 0, i32 1) })
  store i1 %t52, ptr %l32
  br label %bb40
bb40:
  %t53 = load i1, ptr %l32, !tbaa !21
  store i1 %t53, ptr %l30, !tbaa !21
  br label %bb41
bb41:
  %t54 = load i1, ptr %l30, !tbaa !21
  br i1 %t54, label %bb42, label %bb43
bb42:
  store i1 true, ptr %l33, !tbaa !21
  br label %bb45
bb43:
  %t55 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t57 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t55, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d11, i32 0, i32 1) })
  store i1 %t57, ptr %l35
  br label %bb44
bb44:
  %t58 = load i1, ptr %l35, !tbaa !21
  store i1 %t58, ptr %l33, !tbaa !21
  br label %bb45
bb45:
  %t59 = load i1, ptr %l33, !tbaa !21
  br i1 %t59, label %bb46, label %bb47
bb46:
  store i1 true, ptr %l36, !tbaa !21
  br label %bb49
bb47:
  %t60 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t62 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t60, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d12, i32 0, i32 1) })
  store i1 %t62, ptr %l38
  br label %bb48
bb48:
  %t63 = load i1, ptr %l38, !tbaa !21
  store i1 %t63, ptr %l36, !tbaa !21
  br label %bb49
bb49:
  %t64 = load i1, ptr %l36, !tbaa !21
  br i1 %t64, label %bb50, label %bb51
bb50:
  store i1 true, ptr %l39, !tbaa !21
  br label %bb53
bb51:
  %t65 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t67 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t65, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d13, i32 0, i32 1) })
  store i1 %t67, ptr %l41
  br label %bb52
bb52:
  %t68 = load i1, ptr %l41, !tbaa !21
  store i1 %t68, ptr %l39, !tbaa !21
  br label %bb53
bb53:
  %t69 = load i1, ptr %l39, !tbaa !21
  br i1 %t69, label %bb54, label %bb55
bb54:
  store i1 true, ptr %l42, !tbaa !21
  br label %bb57
bb55:
  %t70 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t72 = call i1 @compiler_2ftypes_2eIsIntName(ptr %v0, { i64, ptr } %t70)
  store i1 %t72, ptr %l44
  br label %bb56
bb56:
  %t73 = load i1, ptr %l44, !tbaa !21
  store i1 %t73, ptr %l42, !tbaa !21
  br label %bb57
bb57:
  call void @__olang_scope_close(ptr %s0)
  %t74 = load i1, ptr %l42, !tbaa !21
  store i1 %t74, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i1 @compiler_2fnames_2eLoneCatchName(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l5 = alloca i1
  %l10 = alloca i1
  %l12 = alloca { i64, ptr }
  %l21 = alloca i1
  %l25 = alloca i1
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/ast:Catch", ptr %t1, i32 0, i32 5
  %t4 = load i32, ptr %t3, !tbaa !23
  %t6 = icmp ne i32 %t4, 0
  br i1 %t6, label %bb1, label %bb2
bb1:
  store i1 true, ptr %l5, !tbaa !21
  br label %bb3
bb2:
  %t8 = load ptr, ptr %l0, !tbaa !29
  %t10 = getelementptr %"compiler/ast:Catch", ptr %t8, i32 0, i32 1
  %t11 = load { i64, ptr }, ptr %t10, !tbaa !27
  %t13 = extractvalue { i64, ptr } %t11, 0
  %t15 = icmp ne i64 %t13, 1
  store i1 %t15, ptr %l5, !tbaa !21
  br label %bb3
bb3:
  %t17 = load i1, ptr %l5, !tbaa !21
  br i1 %t17, label %bb4, label %bb5
bb4:
  store i1 true, ptr %l10, !tbaa !21
  br label %bb6
bb5:
  %t18 = load ptr, ptr %l0, !tbaa !29
  %t20 = getelementptr %"compiler/ast:Catch", ptr %t18, i32 0, i32 1
  %t21 = load { i64, ptr }, ptr %t20, !tbaa !27
  store { i64, ptr } %t21, ptr %l12, !tbaa !27
  %t22 = getelementptr { i64, ptr }, ptr %l12, i32 0, i32 1
  %t23 = load ptr, ptr %t22, !tbaa !27
  %t24 = getelementptr ptr, ptr %t23, i64 0
  %t25 = load ptr, ptr %t24, !tbaa !39
  %t27 = getelementptr %"compiler/ast:Path", ptr %t25, i32 0, i32 1
  %t28 = load { i64, ptr }, ptr %t27, !tbaa !27
  %t30 = extractvalue { i64, ptr } %t28, 0
  %t32 = icmp ne i64 %t30, 1
  store i1 %t32, ptr %l10, !tbaa !21
  br label %bb6
bb6:
  %t34 = load i1, ptr %l10, !tbaa !21
  br i1 %t34, label %bb7, label %bb8
bb7:
  store i1 false, ptr %rv
  br label %ret
bb8:
  br label %bb9
bb9:
  %t36 = load i32, ptr %l1, !range !{i32 0, i32 9}
  %t38 = trunc i64 4 to i32
  %t39 = icmp eq i32 %t36, %t38
  %t41 = xor i1 %t39, true
  br i1 %t41, label %bb10, label %bb11
bb10:
  %t43 = load i32, ptr %l1, !range !{i32 0, i32 9}
  %t45 = trunc i64 7 to i32
  %t46 = icmp eq i32 %t43, %t45
  %t48 = xor i1 %t46, true
  store i1 %t48, ptr %l21, !tbaa !21
  br label %bb12
bb11:
  store i1 false, ptr %l21, !tbaa !21
  br label %bb12
bb12:
  %t50 = load i1, ptr %l21, !tbaa !21
  br i1 %t50, label %bb13, label %bb14
bb13:
  %t51 = load i32, ptr %l1, !range !{i32 0, i32 9}
  %t53 = trunc i64 8 to i32
  %t54 = icmp eq i32 %t51, %t53
  %t56 = xor i1 %t54, true
  store i1 %t56, ptr %l25, !tbaa !21
  br label %bb15
bb14:
  store i1 false, ptr %l25, !tbaa !21
  br label %bb15
bb15:
  %t58 = load i1, ptr %l25, !tbaa !21
  store i1 %t58, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local %"compiler/source:Span" @compiler_2fnames_2ecompiler_2fnames_3aResolver_2eLocalSpan(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l4 = alloca i1
  %l5 = alloca i64
  %l8 = alloca i64
  %l10 = alloca %"compiler/source:Span"
  %l14 = alloca %"compiler/names:local"
  %l16 = alloca %"compiler/source:Span"
  %s0 = alloca %olang.scope
  %rv = alloca %"compiler/source:Span"
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load i64, ptr %l1, !tbaa !24
  %t3 = icmp sge i64 %t1, 0
  br i1 %t3, label %bb1, label %bb2
bb1:
  %t5 = load i64, ptr %l1, !tbaa !24
  store i64 %t5, ptr %l5, !tbaa !24
  %t6 = load ptr, ptr %l0, !tbaa !29
  %t8 = getelementptr %"compiler/names:Resolver", ptr %t6, i32 0, i32 7
  %t10 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fnames_3alocal_3e_2eLen_3ccompiler_2fnames_3alocal_3e(ptr %v0, ptr %t8)
  store i64 %t10, ptr %l8
  br label %bb3
bb2:
  store i1 false, ptr %l4, !tbaa !21
  br label %bb4
bb3:
  %t11 = load i64, ptr %l5, !tbaa !24
  %t12 = load i64, ptr %l8, !tbaa !24
  %t13 = icmp slt i64 %t11, %t12
  store i1 %t13, ptr %l4, !tbaa !21
  br label %bb4
bb4:
  %t15 = load i1, ptr %l4, !tbaa !21
  br i1 %t15, label %bb5, label %bb6
bb5:
  %t16 = load ptr, ptr %l0, !tbaa !29
  %t18 = getelementptr %"compiler/names:Resolver", ptr %t16, i32 0, i32 7
  %t19 = load i64, ptr %l1, !tbaa !24
  %t22 = call %"compiler/names:local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fnames_3alocal_3e_2eAt_3ccompiler_2fnames_3alocal_3e(ptr %v0, ptr %t18, i64 %t19)
  store %"compiler/names:local" %t22, ptr %l14
  br label %bb7
bb6:
  %t23 = call %"compiler/source:Span" @compiler_2fsource_3aSpan_2ector(ptr %s0, i32 0, i32 0)
  store %"compiler/source:Span" %t23, ptr %l16
  br label %bb8
bb7:
  %t24 = getelementptr %"compiler/names:local", ptr %l14, i32 0, i32 1
  %t25 = load %"compiler/source:Span", ptr %t24
  store %"compiler/source:Span" %t25, ptr %l10
  br label %bb9
bb8:
  %t27 = load %"compiler/source:Span", ptr %l16
  store %"compiler/source:Span" %t27, ptr %l10
  br label %bb9
bb9:
  call void @__olang_scope_close(ptr %s0)
  %t28 = load %"compiler/source:Span", ptr %l10
  store %"compiler/source:Span" %t28, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/source:Span", ptr %rv
  ret %"compiler/source:Span" %rr
}

define dso_local %"compiler/names:Ref" @compiler_2fnames_2ecompiler_2fnames_3aResolver_2eUse(ptr %v0, ptr %a0, i64 %a1, i32 %a2) #0 {
entry:
  %l3 = alloca %"compiler/names:Ref"
  %l5 = alloca ptr
  %l8 = alloca i64
  %l9 = alloca %"compiler/names:Ref"
  %l10 = alloca i32
  %l12 = alloca %"compiler/names:Ref"
  %s0 = alloca %olang.scope
  %rv = alloca %"compiler/names:Ref"
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t3 = getelementptr %"compiler/names:Resolver", ptr %a0, i32 0, i32 4
  store ptr %t3, ptr %l5, !tbaa !29
  %t8 = call i64 @compiler_2fnames_2ekey(i64 %a1, i32 %a2)
  store i64 %t8, ptr %l8
  br label %bb1
bb1:
  %t9 = load ptr, ptr %l5, !tbaa !29
  %t10 = load i64, ptr %l8, !tbaa !24
  %t11 = call { i32, %"compiler/names:Ref" } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2fnames_3aRef_3e_2eG_Hb4f204ca9d50eb43e30fe8770cb15d1a(ptr %v0, ptr %t9, i64 %t10)
  %t12 = extractvalue { i32, %"compiler/names:Ref" } %t11, 1
  %t13 = extractvalue { i32, %"compiler/names:Ref" } %t11, 0
  store i32 %t13, ptr %l10
  %t14 = icmp ne i32 %t13, 0
  br i1 %t14, label %bb3, label %ok.15, !prof !99
ok.15:
  store %"compiler/names:Ref" %t12, ptr %l9
  br label %bb2
bb2:
  %t16 = load %"compiler/names:Ref", ptr %l9
  store %"compiler/names:Ref" %t16, ptr %l3
  br label %bb6
bb3:
  br label %bb4
bb4:
  %t18 = call %"compiler/names:Ref" @compiler_2fnames_3aRef_2ector(ptr %s0, i32 0, i64 -1, i64 -1)
  store %"compiler/names:Ref" %t18, ptr %l12
  br label %bb5
bb5:
  %t19 = load %"compiler/names:Ref", ptr %l12
  store %"compiler/names:Ref" %t19, ptr %l3
  br label %bb6
bb6:
  call void @__olang_scope_close(ptr %s0)
  %t20 = load %"compiler/names:Ref", ptr %l3
  store %"compiler/names:Ref" %t20, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/names:Ref", ptr %rv
  ret %"compiler/names:Ref" %rr
}

define dso_local void @compiler_2fnames_2ecompiler_2fnames_3aResolver_2eaddType(ptr %v0, ptr %v1, ptr %a0, i64 %a1, i32 %a2, %"compiler/source:Span" %a3, ptr %a4) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca i32
  %l3 = alloca %"compiler/source:Span"
  %l5 = alloca ptr
  %l6 = alloca ptr
  %l7 = alloca { i64, ptr }
  %l14 = alloca ptr
  %l19 = alloca ptr
  %l22 = alloca { i64, ptr }
  %l27 = alloca i1
  %l30 = alloca ptr
  %l34 = alloca { i64, [3 x i64] }
  %l37 = alloca { i64, ptr }
  %l39 = alloca %"compiler/diagmsg:Msg"
  %l40 = alloca i64
  %l44 = alloca i1
  %l49 = alloca i1
  %l52 = alloca ptr
  %l56 = alloca { i64, [3 x i64] }
  %l59 = alloca { i64, ptr }
  %l61 = alloca %"compiler/diagmsg:Msg"
  %l62 = alloca i64
  %l64 = alloca i1
  %l67 = alloca ptr
  %l71 = alloca { i64, [3 x i64] }
  %l74 = alloca { i64, ptr }
  %l76 = alloca %"compiler/diagmsg:Msg"
  %l77 = alloca i64
  %l86 = alloca i1
  %l89 = alloca ptr
  %l93 = alloca { i64, [3 x i64] }
  %l96 = alloca { i64, ptr }
  %l98 = alloca %"compiler/diagmsg:Msg"
  %l99 = alloca i64
  %l101 = alloca ptr
  %l102 = alloca i32
  %l105 = alloca i64
  %l107 = alloca ptr
  %l112 = alloca %"compiler/names:Entry"
  %s1 = alloca %olang.scope
  %s2 = alloca %olang.scope
  %s3 = alloca %olang.scope
  %s4 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  store i32 %a2, ptr %l2
  store %"compiler/source:Span" %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/names:Resolver", ptr %t1, i32 0, i32 1
  %t4 = load i64, ptr %l1, !tbaa !24
  %t7 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fnames_3aTable_26_3e_2_Hc2ccbbc5952c057a60f016e9cc1626d2(ptr %v0, ptr %v0, ptr %t3, i64 %t4)
  store ptr %t7, ptr %l14
  br label %bb1
bb1:
  %t8 = load ptr, ptr %l14, !tbaa !29
  store ptr %t8, ptr %l5, !tbaa !29
  %t9 = load ptr, ptr %l0, !tbaa !29
  %t11 = getelementptr %"compiler/names:Resolver", ptr %t9, i32 0, i32 0
  %t12 = load ptr, ptr %t11, !tbaa !29
  %t14 = getelementptr %"compiler/load:Loader", ptr %t12, i32 0, i32 10
  %t15 = load i64, ptr %l1, !tbaa !24
  %t18 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H7bcf2aeb09afa796f4333e6ec8c3f63f(ptr %v0, ptr %v0, ptr %t14, i64 %t15)
  store ptr %t18, ptr %l19
  br label %bb2
bb2:
  %t19 = load ptr, ptr %l19, !tbaa !29
  store ptr %t19, ptr %l6, !tbaa !29
  %t20 = load ptr, ptr %l0, !tbaa !29
  %t21 = load i32, ptr %l2, !tbaa !23
  %t24 = call { i64, ptr } @compiler_2fnames_2ecompiler_2fnames_3aResolver_2etext(ptr %v0, ptr %v0, ptr %t20, i32 %t21)
  store { i64, ptr } %t24, ptr %l22
  br label %bb3
bb3:
  %t25 = load { i64, ptr }, ptr %l22, !tbaa !27
  store { i64, ptr } %t25, ptr %l7, !tbaa !27
  %t26 = load i32, ptr %l2, !tbaa !23
  %t28 = load ptr, ptr %l5, !tbaa !29
  %t30 = getelementptr %"compiler/names:Table", ptr %t28, i32 0, i32 2
  %t34 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fsource_3aNameId_2c_20I64_3e_Hf575c52a5a9e8993bae2b73c9c2548b3(ptr %v0, ptr %t30, i32 %t26)
  store i1 %t34, ptr %l27
  br label %bb4
bb4:
  %t35 = load i1, ptr %l27, !tbaa !21
  br i1 %t35, label %bb5, label %bb6
bb5:
  store %olang.scope zeroinitializer, ptr %s1
  %t36 = load ptr, ptr %l0, !tbaa !29
  %t38 = getelementptr %"compiler/names:Resolver", ptr %t36, i32 0, i32 0
  %t39 = load ptr, ptr %t38, !tbaa !29
  %t41 = getelementptr %"compiler/load:Loader", ptr %t39, i32 0, i32 4
  %t42 = load ptr, ptr %t41, !tbaa !29
  store ptr %t42, ptr %l30, !tbaa !29
  %t43 = load ptr, ptr %l0, !tbaa !29
  %t44 = load i64, ptr %l1, !tbaa !24
  %t45 = load %"compiler/source:Span", ptr %l3
  %t49 = call { i64, [3 x i64] } @compiler_2fnames_2ecompiler_2fnames_3aResolver_2eat(ptr %v0, ptr %t43, i64 %t44, %"compiler/source:Span" %t45)
  store { i64, [3 x i64] } %t49, ptr %l34
  br label %bb7
bb6:
  br label %bb11
bb7:
  %t50 = load ptr, ptr %l0, !tbaa !29
  %t51 = load i32, ptr %l2, !tbaa !23
  %t54 = call { i64, ptr } @compiler_2fnames_2ecompiler_2fnames_3aResolver_2etok(ptr %v0, ptr %s1, ptr %t50, i32 %t51)
  store { i64, ptr } %t54, ptr %l37
  br label %bb8
bb8:
  %t55 = load { i64, ptr }, ptr %l37, !tbaa !27
  %t56 = extractvalue { i64, ptr } %t55, 0
  %t57 = extractvalue { i64, ptr } %t55, 1
  %t58 = mul i64 %t56, 1
  %t59 = call ptr @__olang_scope_alloc(ptr %s1, i64 %t58)
  call void @llvm.memcpy.p0.p0.i64(ptr %t59, ptr %t57, i64 %t58, i1 false)
  %t60 = insertvalue { i64, ptr } undef, i64 %t56, 0
  %t61 = insertvalue { i64, ptr } %t60, ptr %t59, 1
  %t63 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eTypeNameInUse(ptr %s1, ptr %s1, { i64, ptr } %t61)
  store %"compiler/diagmsg:Msg" %t63, ptr %l39
  br label %bb9
bb9:
  %t64 = load ptr, ptr %l30, !tbaa !29
  %t65 = load { i64, [3 x i64] }, ptr %l34
  %t66 = load %"compiler/diagmsg:Msg", ptr %l39
  %t67 = call i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eError(ptr %v0, ptr %s1, ptr %t64, { i64, [3 x i64] } %t65, %"compiler/diagmsg:Msg" %t66)
  store i64 %t67, ptr %l40
  br label %bb10
bb10:
  call void @__olang_scope_close(ptr %s1)
  br label %ret
bb11:
  %t68 = load ptr, ptr %l6, !tbaa !29
  %t70 = getelementptr %"compiler/load:Module", ptr %t68, i32 0, i32 3
  %t71 = load i1, ptr %t70, !tbaa !21
  %t73 = xor i1 %t71, true
  br i1 %t73, label %bb12, label %bb13
bb12:
  %t75 = load i32, ptr %l2, !tbaa !23
  %t77 = load ptr, ptr %l0, !tbaa !29
  %t79 = getelementptr %"compiler/names:Resolver", ptr %t77, i32 0, i32 2
  %t83 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fsource_3aNameId_2c_20I64_3e_Hf575c52a5a9e8993bae2b73c9c2548b3(ptr %v0, ptr %t79, i32 %t75)
  store i1 %t83, ptr %l49
  br label %bb14
bb13:
  store i1 false, ptr %l44, !tbaa !21
  br label %bb15
bb14:
  %t84 = load i1, ptr %l49, !tbaa !21
  store i1 %t84, ptr %l44, !tbaa !21
  br label %bb15
bb15:
  %t85 = load i1, ptr %l44, !tbaa !21
  br i1 %t85, label %bb16, label %bb17
bb16:
  store %olang.scope zeroinitializer, ptr %s2
  %t86 = load ptr, ptr %l0, !tbaa !29
  %t88 = getelementptr %"compiler/names:Resolver", ptr %t86, i32 0, i32 0
  %t89 = load ptr, ptr %t88, !tbaa !29
  %t91 = getelementptr %"compiler/load:Loader", ptr %t89, i32 0, i32 4
  %t92 = load ptr, ptr %t91, !tbaa !29
  store ptr %t92, ptr %l52, !tbaa !29
  %t93 = load ptr, ptr %l0, !tbaa !29
  %t94 = load i64, ptr %l1, !tbaa !24
  %t95 = load %"compiler/source:Span", ptr %l3
  %t99 = call { i64, [3 x i64] } @compiler_2fnames_2ecompiler_2fnames_3aResolver_2eat(ptr %v0, ptr %t93, i64 %t94, %"compiler/source:Span" %t95)
  store { i64, [3 x i64] } %t99, ptr %l56
  br label %bb18
bb17:
  br label %bb22
bb18:
  %t100 = load ptr, ptr %l0, !tbaa !29
  %t101 = load i32, ptr %l2, !tbaa !23
  %t104 = call { i64, ptr } @compiler_2fnames_2ecompiler_2fnames_3aResolver_2etok(ptr %v0, ptr %s2, ptr %t100, i32 %t101)
  store { i64, ptr } %t104, ptr %l59
  br label %bb19
bb19:
  %t105 = load { i64, ptr }, ptr %l59, !tbaa !27
  %t106 = extractvalue { i64, ptr } %t105, 0
  %t107 = extractvalue { i64, ptr } %t105, 1
  %t108 = mul i64 %t106, 1
  %t109 = call ptr @__olang_scope_alloc(ptr %s2, i64 %t108)
  call void @llvm.memcpy.p0.p0.i64(ptr %t109, ptr %t107, i64 %t108, i1 false)
  %t110 = insertvalue { i64, ptr } undef, i64 %t106, 0
  %t111 = insertvalue { i64, ptr } %t110, ptr %t109, 1
  %t113 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eBuiltinTypeRedeclared(ptr %s2, ptr %s2, { i64, ptr } %t111)
  store %"compiler/diagmsg:Msg" %t113, ptr %l61
  br label %bb20
bb20:
  %t114 = load ptr, ptr %l52, !tbaa !29
  %t115 = load { i64, [3 x i64] }, ptr %l56
  %t116 = load %"compiler/diagmsg:Msg", ptr %l61
  %t117 = call i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eError(ptr %v0, ptr %s2, ptr %t114, { i64, [3 x i64] } %t115, %"compiler/diagmsg:Msg" %t116)
  store i64 %t117, ptr %l62
  br label %bb21
bb21:
  call void @__olang_scope_close(ptr %s2)
  br label %bb22
bb22:
  %t118 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t120 = call i1 @compiler_2fnames_2eBuiltinTypeName(ptr %v0, { i64, ptr } %t118)
  store i1 %t120, ptr %l64
  br label %bb23
bb23:
  %t121 = load i1, ptr %l64, !tbaa !21
  br i1 %t121, label %bb24, label %bb25
bb24:
  store %olang.scope zeroinitializer, ptr %s3
  %t122 = load ptr, ptr %l0, !tbaa !29
  %t124 = getelementptr %"compiler/names:Resolver", ptr %t122, i32 0, i32 0
  %t125 = load ptr, ptr %t124, !tbaa !29
  %t127 = getelementptr %"compiler/load:Loader", ptr %t125, i32 0, i32 4
  %t128 = load ptr, ptr %t127, !tbaa !29
  store ptr %t128, ptr %l67, !tbaa !29
  %t129 = load ptr, ptr %l0, !tbaa !29
  %t130 = load i64, ptr %l1, !tbaa !24
  %t131 = load %"compiler/source:Span", ptr %l3
  %t135 = call { i64, [3 x i64] } @compiler_2fnames_2ecompiler_2fnames_3aResolver_2eat(ptr %v0, ptr %t129, i64 %t130, %"compiler/source:Span" %t131)
  store { i64, [3 x i64] } %t135, ptr %l71
  br label %bb26
bb25:
  br label %bb30
bb26:
  %t136 = load ptr, ptr %l0, !tbaa !29
  %t137 = load i32, ptr %l2, !tbaa !23
  %t140 = call { i64, ptr } @compiler_2fnames_2ecompiler_2fnames_3aResolver_2etok(ptr %v0, ptr %s3, ptr %t136, i32 %t137)
  store { i64, ptr } %t140, ptr %l74
  br label %bb27
bb27:
  %t141 = load { i64, ptr }, ptr %l74, !tbaa !27
  %t142 = extractvalue { i64, ptr } %t141, 0
  %t143 = extractvalue { i64, ptr } %t141, 1
  %t144 = mul i64 %t142, 1
  %t145 = call ptr @__olang_scope_alloc(ptr %s3, i64 %t144)
  call void @llvm.memcpy.p0.p0.i64(ptr %t145, ptr %t143, i64 %t144, i1 false)
  %t146 = insertvalue { i64, ptr } undef, i64 %t142, 0
  %t147 = insertvalue { i64, ptr } %t146, ptr %t145, 1
  %t149 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eBuiltinTypeRedeclared(ptr %s3, ptr %s3, { i64, ptr } %t147)
  store %"compiler/diagmsg:Msg" %t149, ptr %l76
  br label %bb28
bb28:
  %t150 = load ptr, ptr %l67, !tbaa !29
  %t151 = load { i64, [3 x i64] }, ptr %l71
  %t152 = load %"compiler/diagmsg:Msg", ptr %l76
  %t153 = call i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eError(ptr %v0, ptr %s3, ptr %t150, { i64, [3 x i64] } %t151, %"compiler/diagmsg:Msg" %t152)
  store i64 %t153, ptr %l77
  br label %bb29
bb29:
  call void @__olang_scope_close(ptr %s3)
  br label %bb30
bb30:
  %t154 = load ptr, ptr %l0, !tbaa !29
  %t155 = load i64, ptr %l1, !tbaa !24
  %t156 = load i32, ptr %l2, !tbaa !23
  %t157 = load %"compiler/source:Span", ptr %l3
  call void @compiler_2fnames_2ecompiler_2fnames_3aResolver_2enoAliasClash(ptr %v0, ptr %t154, i64 %t155, i32 %t156, %"compiler/source:Span" %t157)
  br label %bb31
bb31:
  %t162 = load i32, ptr %l2, !tbaa !23
  %t164 = load ptr, ptr %l5, !tbaa !29
  %t166 = getelementptr %"compiler/names:Table", ptr %t164, i32 0, i32 1
  %t170 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fsource_3aNameId_2c_20I64_3e_Hf575c52a5a9e8993bae2b73c9c2548b3(ptr %v0, ptr %t166, i32 %t162)
  store i1 %t170, ptr %l86
  br label %bb32
bb32:
  %t171 = load i1, ptr %l86, !tbaa !21
  br i1 %t171, label %bb33, label %bb34
bb33:
  store %olang.scope zeroinitializer, ptr %s4
  %t172 = load ptr, ptr %l0, !tbaa !29
  %t174 = getelementptr %"compiler/names:Resolver", ptr %t172, i32 0, i32 0
  %t175 = load ptr, ptr %t174, !tbaa !29
  %t177 = getelementptr %"compiler/load:Loader", ptr %t175, i32 0, i32 4
  %t178 = load ptr, ptr %t177, !tbaa !29
  store ptr %t178, ptr %l89, !tbaa !29
  %t179 = load ptr, ptr %l0, !tbaa !29
  %t180 = load i64, ptr %l1, !tbaa !24
  %t181 = load %"compiler/source:Span", ptr %l3
  %t185 = call { i64, [3 x i64] } @compiler_2fnames_2ecompiler_2fnames_3aResolver_2eat(ptr %v0, ptr %t179, i64 %t180, %"compiler/source:Span" %t181)
  store { i64, [3 x i64] } %t185, ptr %l93
  br label %bb35
bb34:
  br label %bb39
bb35:
  %t186 = load ptr, ptr %l0, !tbaa !29
  %t187 = load i32, ptr %l2, !tbaa !23
  %t190 = call { i64, ptr } @compiler_2fnames_2ecompiler_2fnames_3aResolver_2etok(ptr %v0, ptr %s4, ptr %t186, i32 %t187)
  store { i64, ptr } %t190, ptr %l96
  br label %bb36
bb36:
  %t191 = load { i64, ptr }, ptr %l96, !tbaa !27
  %t192 = extractvalue { i64, ptr } %t191, 0
  %t193 = extractvalue { i64, ptr } %t191, 1
  %t194 = mul i64 %t192, 1
  %t195 = call ptr @__olang_scope_alloc(ptr %s4, i64 %t194)
  call void @llvm.memcpy.p0.p0.i64(ptr %t195, ptr %t193, i64 %t194, i1 false)
  %t196 = insertvalue { i64, ptr } undef, i64 %t192, 0
  %t197 = insertvalue { i64, ptr } %t196, ptr %t195, 1
  %t199 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eNameIsType(ptr %s4, ptr %s4, { i64, ptr } %t197)
  store %"compiler/diagmsg:Msg" %t199, ptr %l98
  br label %bb37
bb37:
  %t200 = load ptr, ptr %l89, !tbaa !29
  %t201 = load { i64, [3 x i64] }, ptr %l93
  %t202 = load %"compiler/diagmsg:Msg", ptr %l98
  %t203 = call i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eError(ptr %v0, ptr %s4, ptr %t200, { i64, [3 x i64] } %t201, %"compiler/diagmsg:Msg" %t202)
  store i64 %t203, ptr %l99
  br label %bb38
bb38:
  call void @__olang_scope_close(ptr %s4)
  br label %bb39
bb39:
  %t204 = load ptr, ptr %l5, !tbaa !29
  %t206 = getelementptr %"compiler/names:Table", ptr %t204, i32 0, i32 2
  store ptr %t206, ptr %l101, !tbaa !29
  %t207 = load i32, ptr %l2, !tbaa !23
  store i32 %t207, ptr %l102, !tbaa !23
  %t208 = load ptr, ptr %l5, !tbaa !29
  %t210 = getelementptr %"compiler/names:Table", ptr %t208, i32 0, i32 0
  %t212 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fnames_3aEntry_3e_2eLen_3ccompiler_2fnames_3aEntry_3e(ptr %v0, ptr %t210)
  store i64 %t212, ptr %l105
  br label %bb40
bb40:
  %t213 = load ptr, ptr %l101, !tbaa !29
  %t214 = load i32, ptr %l102, !tbaa !23
  %t215 = load i64, ptr %l105, !tbaa !24
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fsource_3aNameId_2c_20I64_3e_H862756c16d115e5c03a79726209f69fa(ptr %v0, ptr %t213, i32 %t214, i64 %t215)
  br label %bb41
bb41:
  %t216 = load ptr, ptr %l5, !tbaa !29
  %t218 = getelementptr %"compiler/names:Table", ptr %t216, i32 0, i32 0
  store ptr %t218, ptr %l107, !tbaa !29
  %t219 = load i32, ptr %l2, !tbaa !23
  %t220 = load %"compiler/source:Span", ptr %l3
  %t226 = call %"compiler/names:Entry" @compiler_2fnames_3aEntry_2ector(ptr %v1, ptr %v0, i32 %t219, %"compiler/source:Span" %t220, i32 4, i1 false, ptr %a4)
  store %"compiler/names:Entry" %t226, ptr %l112
  br label %bb42
bb42:
  %t227 = load ptr, ptr %l107, !tbaa !29
  %t228 = load %"compiler/names:Entry", ptr %l112
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fnames_3aEntry_3e_2ePush_3ccompiler_2fnames_3aEntry_3e(ptr %v0, ptr %v0, ptr %t227, %"compiler/names:Entry" %t228)
  br label %bb43
bb43:
  br label %ret
ret:
  ret void
}

define dso_local i64 @compiler_2fnames_2ecompiler_2fnames_3aResolver_2ealiasHop(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1, ptr %a2, i32 %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/source:Span"
  %l3 = alloca i32
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca { i64, ptr }
  %l9 = alloca i64
  %l13 = alloca i64
  %l17 = alloca ptr
  %l21 = alloca i64
  %l22 = alloca i32
  %l28 = alloca { i64, ptr }
  %l30 = alloca i1
  %l34 = alloca ptr
  %l35 = alloca ptr
  %l37 = alloca i64
  %l44 = alloca %"compiler/source:Span"
  %l45 = alloca { i64, [3 x i64] }
  %l48 = alloca { i64, ptr }
  %l50 = alloca %"compiler/diagmsg:Msg"
  %l51 = alloca i64
  %l54 = alloca ptr
  %l60 = alloca ptr
  %l64 = alloca i64
  %l67 = alloca %"compiler/names:Ref"
  %s0 = alloca %olang.scope
  %s3 = alloca %olang.scope
  %rv = alloca i64
  store ptr %a0, ptr %l0
  store %"compiler/source:Span" %a1, ptr %l1
  store i32 %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t5 = call i64 @compiler_2fnames_2ecompiler_2fnames_3aResolver_2ealiasTarget(ptr %v0, ptr %v1, ptr %t1, ptr %a2)
  store i64 %t5, ptr %l9
  br label %bb1
bb1:
  %t6 = load i64, ptr %l9, !tbaa !24
  store i64 %t6, ptr %l4, !tbaa !24
  %t7 = load i64, ptr %l4, !tbaa !24
  %t9 = icmp slt i64 %t7, 0
  br i1 %t9, label %bb2, label %bb3
bb2:
  call void @__olang_scope_close(ptr %s0)
  store i64 -1, ptr %rv
  br label %ret
bb3:
  br label %bb4
bb4:
  %t12 = load ptr, ptr %l0, !tbaa !29
  %t14 = getelementptr %"compiler/names:Resolver", ptr %t12, i32 0, i32 1
  %t15 = load i64, ptr %l4, !tbaa !24
  %t18 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fnames_3aTable_26_3e_2_Hc2ccbbc5952c057a60f016e9cc1626d2(ptr %v0, ptr %v0, ptr %t14, i64 %t15)
  store ptr %t18, ptr %l17
  br label %bb5
bb5:
  %t19 = load ptr, ptr %l17, !tbaa !29
  %t21 = getelementptr %"compiler/names:Table", ptr %t19, i32 0, i32 3
  %t22 = load i32, ptr %l3, !tbaa !23
  %t25 = call { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fsource_3aNameId_2c_20I64_3e_H2a27ec2ae5362b2f0ac6d54f3e063c70(ptr %v0, ptr %t21, i32 %t22)
  %t26 = extractvalue { i32, i64 } %t25, 1
  %t27 = extractvalue { i32, i64 } %t25, 0
  store i32 %t27, ptr %l22
  %t28 = icmp ne i32 %t27, 0
  br i1 %t28, label %bb7, label %ok.29, !prof !99
ok.29:
  store i64 %t26, ptr %l21
  br label %bb6
bb6:
  %t30 = load i64, ptr %l21, !tbaa !24
  store i64 %t30, ptr %l13, !tbaa !24
  br label %bb9
bb7:
  br label %bb8
bb8:
  store i64 -1, ptr %l13, !tbaa !24
  br label %bb9
bb9:
  %t31 = load i64, ptr %l13, !tbaa !24
  store i64 %t31, ptr %l5, !tbaa !24
  %t32 = load i64, ptr %l5, !tbaa !24
  %t34 = icmp slt i64 %t32, 0
  br i1 %t34, label %bb10, label %bb11
bb10:
  call void @__olang_scope_close(ptr %s0)
  store i64 -1, ptr %rv
  br label %ret
bb11:
  br label %bb12
bb12:
  %t37 = load ptr, ptr %l0, !tbaa !29
  %t38 = load i32, ptr %l3, !tbaa !23
  %t41 = call { i64, ptr } @compiler_2fnames_2ecompiler_2fnames_3aResolver_2etext(ptr %v0, ptr %v0, ptr %t37, i32 %t38)
  store { i64, ptr } %t41, ptr %l28
  br label %bb13
bb13:
  %t42 = load { i64, ptr }, ptr %l28, !tbaa !27
  store { i64, ptr } %t42, ptr %l6, !tbaa !27
  %t43 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t45 = call i1 @compiler_2fload_2ePublic(ptr %v0, { i64, ptr } %t43)
  store i1 %t45, ptr %l30
  br label %bb14
bb14:
  %t46 = load i1, ptr %l30, !tbaa !21
  %t47 = xor i1 %t46, true
  br i1 %t47, label %bb15, label %bb16
bb15:
  store %olang.scope zeroinitializer, ptr %s3
  %t49 = load ptr, ptr %l0, !tbaa !29
  %t51 = getelementptr %"compiler/names:Resolver", ptr %t49, i32 0, i32 0
  %t52 = load ptr, ptr %t51, !tbaa !29
  %t54 = getelementptr %"compiler/load:Loader", ptr %t52, i32 0, i32 4
  %t55 = load ptr, ptr %t54, !tbaa !29
  store ptr %t55, ptr %l34, !tbaa !29
  %t56 = load ptr, ptr %l0, !tbaa !29
  store ptr %t56, ptr %l35, !tbaa !29
  %t57 = load ptr, ptr %l0, !tbaa !29
  %t59 = getelementptr %"compiler/names:Resolver", ptr %t57, i32 0, i32 6
  %t60 = load i64, ptr %t59, !tbaa !24
  store i64 %t60, ptr %l37, !tbaa !24
  %t61 = getelementptr %"compiler/source:Span", ptr %l1, i32 0, i32 1
  %t62 = load i32, ptr %t61, !tbaa !23
  %t63 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t65 = extractvalue { i64, ptr } %t63, 0
  %t67 = trunc i64 %t65 to i32
  %t70 = sub i32 %t62, %t67
  %t71 = getelementptr %"compiler/source:Span", ptr %l1, i32 0, i32 1
  %t72 = load i32, ptr %t71, !tbaa !23
  %t75 = call %"compiler/source:Span" @compiler_2fsource_3aSpan_2ector(ptr %s3, i32 %t70, i32 %t72)
  store %"compiler/source:Span" %t75, ptr %l44
  br label %bb17
bb16:
  br label %bb22
bb17:
  %t76 = load ptr, ptr %l35, !tbaa !29
  %t77 = load i64, ptr %l37, !tbaa !24
  %t78 = load %"compiler/source:Span", ptr %l44
  %t79 = call { i64, [3 x i64] } @compiler_2fnames_2ecompiler_2fnames_3aResolver_2eat(ptr %v0, ptr %t76, i64 %t77, %"compiler/source:Span" %t78)
  store { i64, [3 x i64] } %t79, ptr %l45
  br label %bb18
bb18:
  %t80 = load ptr, ptr %l0, !tbaa !29
  %t81 = load i32, ptr %l3, !tbaa !23
  %t84 = call { i64, ptr } @compiler_2fnames_2ecompiler_2fnames_3aResolver_2etok(ptr %v0, ptr %s3, ptr %t80, i32 %t81)
  store { i64, ptr } %t84, ptr %l48
  br label %bb19
bb19:
  %t85 = load { i64, ptr }, ptr %l48, !tbaa !27
  %t86 = extractvalue { i64, ptr } %t85, 0
  %t87 = extractvalue { i64, ptr } %t85, 1
  %t88 = mul i64 %t86, 1
  %t89 = call ptr @__olang_scope_alloc(ptr %s3, i64 %t88)
  call void @llvm.memcpy.p0.p0.i64(ptr %t89, ptr %t87, i64 %t88, i1 false)
  %t90 = insertvalue { i64, ptr } undef, i64 %t86, 0
  %t91 = insertvalue { i64, ptr } %t90, ptr %t89, 1
  %t93 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eImportIsPrivate(ptr %s3, ptr %s3, { i64, ptr } %t91)
  store %"compiler/diagmsg:Msg" %t93, ptr %l50
  br label %bb20
bb20:
  %t94 = load ptr, ptr %l34, !tbaa !29
  %t95 = load { i64, [3 x i64] }, ptr %l45
  %t96 = load %"compiler/diagmsg:Msg", ptr %l50
  %t97 = call i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eError(ptr %v0, ptr %s3, ptr %t94, { i64, [3 x i64] } %t95, %"compiler/diagmsg:Msg" %t96)
  store i64 %t97, ptr %l51
  br label %bb21
bb21:
  call void @__olang_scope_close(ptr %s3)
  call void @__olang_scope_close(ptr %s0)
  store i64 -1, ptr %rv
  br label %ret
bb22:
  %t99 = load ptr, ptr %l0, !tbaa !29
  %t101 = getelementptr %"compiler/names:Resolver", ptr %t99, i32 0, i32 5
  store ptr %t101, ptr %l54, !tbaa !29
  %t102 = load ptr, ptr %l0, !tbaa !29
  %t104 = getelementptr %"compiler/names:Resolver", ptr %t102, i32 0, i32 0
  %t105 = load ptr, ptr %t104, !tbaa !29
  %t107 = getelementptr %"compiler/load:Loader", ptr %t105, i32 0, i32 10
  %t108 = load ptr, ptr %l0, !tbaa !29
  %t110 = getelementptr %"compiler/names:Resolver", ptr %t108, i32 0, i32 6
  %t111 = load i64, ptr %t110, !tbaa !24
  %t114 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H7bcf2aeb09afa796f4333e6ec8c3f63f(ptr %v0, ptr %v0, ptr %t107, i64 %t111)
  store ptr %t114, ptr %l60
  br label %bb23
bb23:
  %t115 = load ptr, ptr %l60, !tbaa !29
  %t117 = getelementptr %"compiler/load:Module", ptr %t115, i32 0, i32 4
  %t118 = load i64, ptr %t117, !tbaa !24
  %t119 = getelementptr %"compiler/source:Span", ptr %l1, i32 0, i32 1
  %t120 = load i32, ptr %t119, !tbaa !23
  %t123 = call i64 @compiler_2fnames_2ekey(i64 %t118, i32 %t120)
  store i64 %t123, ptr %l64
  br label %bb24
bb24:
  %t124 = load i64, ptr %l5, !tbaa !24
  %t127 = call %"compiler/names:Ref" @compiler_2fnames_3aRef_2ector(ptr %s0, i32 5, i64 %t124, i64 -1)
  store %"compiler/names:Ref" %t127, ptr %l67
  br label %bb25
bb25:
  %t128 = load ptr, ptr %l54, !tbaa !29
  %t129 = load i64, ptr %l64, !tbaa !24
  %t130 = load %"compiler/names:Ref", ptr %l67
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2fnames_3aRef_3e_2eP_Hb17c37756f956998a4fa74bcac088344(ptr %v0, ptr %t128, i64 %t129, %"compiler/names:Ref" %t130)
  br label %bb26
bb26:
  %t131 = load i64, ptr %l5, !tbaa !24
  call void @__olang_scope_close(ptr %s0)
  store i64 %t131, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local i64 @compiler_2fnames_2ecompiler_2fnames_3aResolver_2ealiasTarget(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca %"compiler/source:Span"
  %l3 = alloca i32
  %l4 = alloca %"compiler/source:Span"
  %l5 = alloca ptr
  %l6 = alloca i32
  %l7 = alloca i64
  %l8 = alloca ptr
  %l9 = alloca i1
  %l19 = alloca i64
  %l20 = alloca ptr
  %l21 = alloca i1
  %l34 = alloca i64
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
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 30}
  %t8 = icmp eq i64 %t6, 0
  store i1 %t8, ptr %l9, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l9, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  %t10 = load ptr, ptr %l1, !tbaa !29
  %t12 = getelementptr { i64, [4 x i64] }, ptr %t10, i32 0, i32 1
  %t13 = getelementptr { %"compiler/source:Span", i32 }, ptr %t12, i32 0, i32 0
  %t14 = load %"compiler/source:Span", ptr %t13
  store %"compiler/source:Span" %t14, ptr %l2
  %t16 = load ptr, ptr %l1, !tbaa !29
  %t18 = getelementptr { i64, [4 x i64] }, ptr %t16, i32 0, i32 1
  %t19 = getelementptr { %"compiler/source:Span", i32 }, ptr %t18, i32 0, i32 1
  %t20 = load i32, ptr %t19
  store i32 %t20, ptr %l3, !tbaa !23
  br label %bb5
bb4:
  br label %bb7
bb5:
  %t22 = load ptr, ptr %l0, !tbaa !29
  %t23 = load %"compiler/source:Span", ptr %l2
  %t24 = load i32, ptr %l3, !tbaa !23
  %t28 = call i64 @compiler_2fnames_2ecompiler_2fnames_3aResolver_2ealiasHead(ptr %v0, ptr %t22, %"compiler/source:Span" %t23, i32 %t24)
  store i64 %t28, ptr %l19
  br label %bb6
bb6:
  %t29 = load i64, ptr %l19, !tbaa !24
  store i64 %t29, ptr %l7, !tbaa !24
  br label %bb19
bb7:
  %t30 = load ptr, ptr %l1, !tbaa !29
  store ptr %t30, ptr %l20, !tbaa !29
  store i1 false, ptr %l21, !tbaa !21
  %t31 = load ptr, ptr %l20, !tbaa !29
  %t32 = icmp ne ptr %t31, null
  br i1 %t32, label %bb8, label %bb9
bb8:
  %t34 = load ptr, ptr %l20, !tbaa !29
  %t35 = load i64, ptr %t34, !range !{i64 0, i64 30}
  %t37 = icmp eq i64 %t35, 14
  store i1 %t37, ptr %l21, !tbaa !21
  br label %bb9
bb9:
  %t38 = load i1, ptr %l21, !tbaa !21
  br i1 %t38, label %bb10, label %bb11
bb10:
  %t39 = load ptr, ptr %l1, !tbaa !29
  %t41 = getelementptr { i64, [4 x i64] }, ptr %t39, i32 0, i32 1
  %t42 = getelementptr { %"compiler/source:Span", ptr, i32 }, ptr %t41, i32 0, i32 0
  %t43 = load %"compiler/source:Span", ptr %t42
  store %"compiler/source:Span" %t43, ptr %l4
  %t45 = load ptr, ptr %l1, !tbaa !29
  %t47 = getelementptr { i64, [4 x i64] }, ptr %t45, i32 0, i32 1
  %t48 = getelementptr { %"compiler/source:Span", ptr, i32 }, ptr %t47, i32 0, i32 1
  %t49 = load ptr, ptr %t48
  store ptr %t49, ptr %l5, !tbaa !29
  %t51 = load ptr, ptr %l1, !tbaa !29
  %t53 = getelementptr { i64, [4 x i64] }, ptr %t51, i32 0, i32 1
  %t54 = getelementptr { %"compiler/source:Span", ptr, i32 }, ptr %t53, i32 0, i32 2
  %t55 = load i32, ptr %t54
  store i32 %t55, ptr %l6, !tbaa !23
  br label %bb12
bb11:
  br label %bb14
bb12:
  %t57 = load ptr, ptr %l0, !tbaa !29
  %t58 = load %"compiler/source:Span", ptr %l4
  %t59 = load ptr, ptr %l5, !tbaa !29
  %t60 = load i32, ptr %l6, !tbaa !23
  %t65 = call i64 @compiler_2fnames_2ecompiler_2fnames_3aResolver_2ealiasHop(ptr %v0, ptr %v1, ptr %t57, %"compiler/source:Span" %t58, ptr %t59, i32 %t60)
  store i64 %t65, ptr %l34
  br label %bb13
bb13:
  %t66 = load i64, ptr %l34, !tbaa !24
  store i64 %t66, ptr %l7, !tbaa !24
  br label %bb19
bb14:
  br i1 true, label %bb15, label %bb16
bb15:
  br label %bb17
bb16:
  br label %bb18
bb17:
  store i64 -1, ptr %l7, !tbaa !24
  br label %bb19
bb18:
  call void @__olang_check_failed(ptr @olang_loc_fd033da614d46a49_c57bfff01eec9785)
  unreachable
bb19:
  %t67 = load i64, ptr %l7, !tbaa !24
  store i64 %t67, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local void @compiler_2fnames_2ecompiler_2fnames_3aResolver_2ealiasesOf(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca ptr
  %l3 = alloca ptr
  %l4 = alloca i64
  %l5 = alloca %"compiler/load:Import"
  %l9 = alloca ptr
  %l14 = alloca ptr
  %l17 = alloca i64
  %l19 = alloca i64
  %l24 = alloca %"compiler/load:Import"
  %l28 = alloca ptr
  %l33 = alloca i32
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/names:Resolver", ptr %t1, i32 0, i32 1
  %t4 = load i64, ptr %l1, !tbaa !24
  %t7 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fnames_3aTable_26_3e_2_Hc2ccbbc5952c057a60f016e9cc1626d2(ptr %v0, ptr %v0, ptr %t3, i64 %t4)
  store ptr %t7, ptr %l9
  br label %bb1
bb1:
  %t8 = load ptr, ptr %l9, !tbaa !29
  store ptr %t8, ptr %l2, !tbaa !29
  %t9 = load ptr, ptr %l0, !tbaa !29
  %t11 = getelementptr %"compiler/names:Resolver", ptr %t9, i32 0, i32 0
  %t12 = load ptr, ptr %t11, !tbaa !29
  %t14 = getelementptr %"compiler/load:Loader", ptr %t12, i32 0, i32 10
  %t15 = load i64, ptr %l1, !tbaa !24
  %t18 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H7bcf2aeb09afa796f4333e6ec8c3f63f(ptr %v0, ptr %v0, ptr %t14, i64 %t15)
  store ptr %t18, ptr %l14
  br label %bb2
bb2:
  %t19 = load ptr, ptr %l14, !tbaa !29
  %t21 = getelementptr %"compiler/load:Module", ptr %t19, i32 0, i32 11
  store ptr %t21, ptr %l3, !tbaa !29
  store i64 0, ptr %l4, !tbaa !24
  br label %bb3
bb3:
  %t23 = load i64, ptr %l4, !tbaa !24
  store i64 %t23, ptr %l17, !tbaa !24
  %t24 = load ptr, ptr %l3, !tbaa !29
  %t26 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fload_3aImport_3e_2eLen_3ccompiler_2fload_3aImport_3e(ptr %v0, ptr %t24)
  store i64 %t26, ptr %l19
  br label %bb4
bb4:
  %t27 = load i64, ptr %l17, !tbaa !24
  %t28 = load i64, ptr %l19, !tbaa !24
  %t29 = icmp slt i64 %t27, %t28
  %t31 = xor i1 %t29, true
  br i1 %t31, label %bb5, label %bb6
bb5:
  br label %bb15
bb6:
  br label %bb7
bb7:
  %t33 = load ptr, ptr %l3, !tbaa !29
  %t34 = load i64, ptr %l4, !tbaa !24
  %t37 = call %"compiler/load:Import" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fload_3aImport_3e_2eAt_3ccompiler_2fload_3aImport_3e(ptr %v0, ptr %v0, ptr %t33, i64 %t34)
  store %"compiler/load:Import" %t37, ptr %l24
  br label %bb8
bb8:
  %t38 = load %"compiler/load:Import", ptr %l24
  store %"compiler/load:Import" %t38, ptr %l5
  %t39 = getelementptr %"compiler/load:Import", ptr %l5, i32 0, i32 5
  %t40 = load i64, ptr %t39, !tbaa !24
  %t42 = icmp sge i64 %t40, 0
  br i1 %t42, label %bb9, label %bb10
bb9:
  %t44 = load ptr, ptr %l2, !tbaa !29
  %t46 = getelementptr %"compiler/names:Table", ptr %t44, i32 0, i32 3
  store ptr %t46, ptr %l28, !tbaa !29
  %t47 = load ptr, ptr %l0, !tbaa !29
  %t49 = getelementptr %"compiler/names:Resolver", ptr %t47, i32 0, i32 0
  %t50 = load ptr, ptr %t49, !tbaa !29
  %t52 = getelementptr %"compiler/load:Loader", ptr %t50, i32 0, i32 3
  %t53 = load ptr, ptr %t52, !tbaa !29
  %t54 = getelementptr %"compiler/load:Import", ptr %l5, i32 0, i32 2
  %t55 = load { i64, ptr }, ptr %t54, !tbaa !27
  %t58 = call i32 @compiler_2fsource_2ecompiler_2fsource_3aNames_2eIntern(ptr %v0, ptr %v0, ptr %t53, { i64, ptr } %t55)
  store i32 %t58, ptr %l33
  br label %bb11
bb10:
  br label %bb13
bb11:
  %t59 = getelementptr %"compiler/load:Import", ptr %l5, i32 0, i32 5
  %t60 = load i64, ptr %t59, !tbaa !24
  %t61 = load ptr, ptr %l28, !tbaa !29
  %t62 = load i32, ptr %l33, !tbaa !23
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fsource_3aNameId_2c_20I64_3e_H862756c16d115e5c03a79726209f69fa(ptr %v0, ptr %t61, i32 %t62, i64 %t60)
  br label %bb12
bb12:
  br label %bb13
bb13:
  br label %bb14
bb14:
  %t64 = load i64, ptr %l4, !tbaa !24
  %t66 = add i64 %t64, 1
  store i64 %t66, ptr %l4, !tbaa !24
  br label %bb3
bb15:
  br label %ret
ret:
  ret void
}

define dso_local { i64, [3 x i64] } @compiler_2fnames_2ecompiler_2fnames_3aResolver_2eat(ptr %v0, ptr %a0, i64 %a1, %"compiler/source:Span" %a2) #0 {
entry:
  %l2 = alloca %"compiler/source:Span"
  %l7 = alloca ptr
  %rv = alloca { i64, [3 x i64] }
  %t23 = alloca { i64, [3 x i64] }, align 8
  store %"compiler/source:Span" %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t3 = getelementptr %"compiler/names:Resolver", ptr %a0, i32 0, i32 0
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t6 = getelementptr %"compiler/load:Loader", ptr %t4, i32 0, i32 10
  %t10 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H7bcf2aeb09afa796f4333e6ec8c3f63f(ptr %v0, ptr %v0, ptr %t6, i64 %a1)
  store ptr %t10, ptr %l7
  br label %bb1
bb1:
  %t11 = load ptr, ptr %l7, !tbaa !29
  %t13 = getelementptr %"compiler/load:Module", ptr %t11, i32 0, i32 4
  %t14 = load i64, ptr %t13, !tbaa !24
  %t15 = getelementptr %"compiler/source:Span", ptr %l2, i32 0, i32 0
  %t16 = load i32, ptr %t15, !tbaa !23
  %t18 = sext i32 %t16 to i64
  %t19 = getelementptr %"compiler/source:Span", ptr %l2, i32 0, i32 1
  %t20 = load i32, ptr %t19, !tbaa !23
  %t22 = sext i32 %t20 to i64
  store { i64, [3 x i64] } zeroinitializer, ptr %t23
  %t24 = getelementptr { i64, [3 x i64] }, ptr %t23, i32 0, i32 0
  store i64 3, ptr %t24
  %t26 = insertvalue { i64, i64, i64 } undef, i64 %t14, 0
  %t28 = insertvalue { i64, i64, i64 } %t26, i64 %t18, 1
  %t30 = insertvalue { i64, i64, i64 } %t28, i64 %t22, 2
  %t31 = getelementptr { i64, [3 x i64] }, ptr %t23, i32 0, i32 1
  store { i64, i64, i64 } %t30, ptr %t31
  %t32 = load { i64, [3 x i64] }, ptr %t23
  store { i64, [3 x i64] } %t32, ptr %rv
  br label %ret
ret:
  %rr = load { i64, [3 x i64] }, ptr %rv
  ret { i64, [3 x i64] } %rr
}

define dso_local void @compiler_2fnames_2ecompiler_2fnames_3aResolver_2ebind(ptr %v0, ptr %a0, i32 %a1, %"compiler/source:Span" %a2, i32 %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l6 = alloca i64
  %l10 = alloca i64
  %l11 = alloca i32
  %l13 = alloca ptr
  %l16 = alloca %"std/pair:Pair.ee791c76fa337c2e45b252e8964cf3ed"
  %l18 = alloca ptr
  %l19 = alloca i32
  %l22 = alloca i64
  %l24 = alloca ptr
  %l28 = alloca %"compiler/names:local"
  %l33 = alloca i1
  %s0 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/names:Resolver", ptr %t1, i32 0, i32 8
  %t4 = load i32, ptr %l1, !tbaa !23
  %t7 = call { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fsource_3aNameId_2c_20I64_3e_H2a27ec2ae5362b2f0ac6d54f3e063c70(ptr %v0, ptr %t3, i32 %t4)
  %t8 = extractvalue { i32, i64 } %t7, 1
  %t9 = extractvalue { i32, i64 } %t7, 0
  store i32 %t9, ptr %l11
  %t10 = icmp ne i32 %t9, 0
  br i1 %t10, label %bb2, label %ok.11, !prof !99
ok.11:
  store i64 %t8, ptr %l10
  br label %bb1
bb1:
  %t12 = load i64, ptr %l10, !tbaa !24
  store i64 %t12, ptr %l6, !tbaa !24
  br label %bb4
bb2:
  br label %bb3
bb3:
  store i64 -1, ptr %l6, !tbaa !24
  br label %bb4
bb4:
  %t13 = load i64, ptr %l6, !tbaa !24
  %t14 = load ptr, ptr %l0, !tbaa !29
  %t16 = getelementptr %"compiler/names:Resolver", ptr %t14, i32 0, i32 9
  store ptr %t16, ptr %l13, !tbaa !29
  %t17 = load i32, ptr %l1, !tbaa !23
  %t21 = call %"std/pair:Pair.ee791c76fa337c2e45b252e8964cf3ed" @std_2fpair_3aPair_3ccompiler_2fsource_3aNameId_2c_20I64_3e_2ector(ptr %s0, i32 %t17, i64 %t13)
  store %"std/pair:Pair.ee791c76fa337c2e45b252e8964cf3ed" %t21, ptr %l16
  br label %bb5
bb5:
  %t22 = load ptr, ptr %l13, !tbaa !29
  %t23 = load %"std/pair:Pair.ee791c76fa337c2e45b252e8964cf3ed", ptr %l16
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fpair_3aPair_3ccompiler_2fsource__H6d3eea1e3a905a651c612011755d5d17(ptr %v0, ptr %t22, %"std/pair:Pair.ee791c76fa337c2e45b252e8964cf3ed" %t23)
  br label %bb6
bb6:
  %t24 = load ptr, ptr %l0, !tbaa !29
  %t26 = getelementptr %"compiler/names:Resolver", ptr %t24, i32 0, i32 8
  store ptr %t26, ptr %l18, !tbaa !29
  %t27 = load i32, ptr %l1, !tbaa !23
  store i32 %t27, ptr %l19, !tbaa !23
  %t28 = load ptr, ptr %l0, !tbaa !29
  %t30 = getelementptr %"compiler/names:Resolver", ptr %t28, i32 0, i32 7
  %t32 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fnames_3alocal_3e_2eLen_3ccompiler_2fnames_3alocal_3e(ptr %v0, ptr %t30)
  store i64 %t32, ptr %l22
  br label %bb7
bb7:
  %t33 = load ptr, ptr %l18, !tbaa !29
  %t34 = load i32, ptr %l19, !tbaa !23
  %t35 = load i64, ptr %l22, !tbaa !24
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fsource_3aNameId_2c_20I64_3e_H862756c16d115e5c03a79726209f69fa(ptr %v0, ptr %t33, i32 %t34, i64 %t35)
  br label %bb8
bb8:
  %t36 = load ptr, ptr %l0, !tbaa !29
  %t38 = getelementptr %"compiler/names:Resolver", ptr %t36, i32 0, i32 7
  store ptr %t38, ptr %l24, !tbaa !29
  %t39 = load i32, ptr %l1, !tbaa !23
  %t45 = call %"compiler/names:local" @compiler_2fnames_3alocal_2ector(ptr %s0, i32 %t39, %"compiler/source:Span" %a2, i32 %a3, i1 false, i1 false, i1 false)
  store %"compiler/names:local" %t45, ptr %l28
  br label %bb9
bb9:
  %t46 = load ptr, ptr %l24, !tbaa !29
  %t47 = load %"compiler/names:local", ptr %l28
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fnames_3alocal_3e_2ePush_3ccompiler_2fnames_3alocal_3e(ptr %v0, ptr %t46, %"compiler/names:local" %t47)
  br label %bb10
bb10:
  %t48 = load i32, ptr %l1, !tbaa !23
  %t50 = load ptr, ptr %l0, !tbaa !29
  %t52 = getelementptr %"compiler/names:Resolver", ptr %t50, i32 0, i32 10
  %t56 = call i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aNameId_3e_2eHas_3ccompiler_2fsource_3aNameId_3e(ptr %v0, ptr %t52, i32 %t48)
  store i1 %t56, ptr %l33
  br label %bb11
bb11:
  %t57 = load i1, ptr %l33, !tbaa !21
  %t58 = xor i1 %t57, true
  br i1 %t58, label %bb12, label %bb13
bb12:
  %t60 = load ptr, ptr %l0, !tbaa !29
  %t62 = getelementptr %"compiler/names:Resolver", ptr %t60, i32 0, i32 10
  %t63 = load i32, ptr %l1, !tbaa !23
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aNameId_3e_2ePush_3ccompiler_2fsource_3aNameId_3e(ptr %v0, ptr %t62, i32 %t63)
  br label %bb14
bb13:
  br label %bb15
bb14:
  br label %bb15
bb15:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2fnames_2ecompiler_2fnames_3aResolver_2eblock(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca { i64, ptr }
  %l2 = alloca i64
  %l3 = alloca { i64, ptr }
  %l4 = alloca i64
  %l5 = alloca i64
  %l11 = alloca i64
  %l19 = alloca { i64, ptr }
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
  br label %ret
bb2:
  br label %bb3
bb3:
  %t7 = load ptr, ptr %l0, !tbaa !29
  %t9 = call i64 @compiler_2fnames_2ecompiler_2fnames_3aResolver_2emark(ptr %v0, ptr %t7)
  store i64 %t9, ptr %l11
  br label %bb4
bb4:
  %t10 = load i64, ptr %l11, !tbaa !24
  store i64 %t10, ptr %l2, !tbaa !24
  %t11 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t11, ptr %l3, !tbaa !27
  store i64 0, ptr %l4, !tbaa !24
  %t13 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t15 = extractvalue { i64, ptr } %t13, 0
  store i64 %t15, ptr %l5, !tbaa !24
  br label %bb5
bb5:
  %t17 = load i64, ptr %l4, !tbaa !24
  %t18 = load i64, ptr %l5, !tbaa !24
  %t21 = icmp slt i64 %t17, %t18
  %t23 = xor i1 %t21, true
  br i1 %t23, label %bb6, label %bb7
bb6:
  br label %bb11
bb7:
  br label %bb8
bb8:
  %t25 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t25, ptr %l19, !tbaa !27
  %t26 = load i64, ptr %l4, !tbaa !24
  %t28 = getelementptr { i64, ptr }, ptr %l19, i32 0, i32 1
  %t29 = load ptr, ptr %t28, !tbaa !27
  %t30 = getelementptr ptr, ptr %t29, i64 %t26
  %t31 = load ptr, ptr %t30, !tbaa !39
  %t33 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2fnames_2ecompiler_2fnames_3aResolver_2estmt(ptr %v0, ptr %v1, ptr %t33, ptr %t31)
  br label %bb9
bb9:
  br label %bb10
bb10:
  %t38 = load i64, ptr %l4, !tbaa !24
  %t40 = add i64 %t38, 1
  store i64 %t40, ptr %l4, !tbaa !24
  br label %bb5
bb11:
  %t42 = load ptr, ptr %l0, !tbaa !29
  %t43 = load i64, ptr %l2, !tbaa !24
  call void @compiler_2fnames_2ecompiler_2fnames_3aResolver_2epopTo(ptr %v0, ptr %t42, i64 %t43)
  br label %bb12
bb12:
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2fnames_2ecompiler_2fnames_3aResolver_2ebodiesIf(ptr %v0, ptr %v1, ptr %a0, i64 %a1, ptr %a2, i64 %a3, i64 %a4) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca ptr
  %l3 = alloca i64
  %l4 = alloca i64
  %l9 = alloca ptr
  %l10 = alloca i64
  %l18 = alloca %"std/pair:Pair.9f40551e0d6019a8e678d8f53048b6ba"
  %l23 = alloca i1
  %l29 = alloca ptr
  %l30 = alloca i64
  %l38 = alloca %"std/pair:Pair.9f40551e0d6019a8e678d8f53048b6ba"
  %l42 = alloca i1
  %l52 = alloca ptr
  %l53 = alloca i64
  %l65 = alloca ptr
  %l66 = alloca i64
  %l79 = alloca i1
  %l84 = alloca i1
  %l94 = alloca ptr
  %l95 = alloca i64
  %s1 = alloca %olang.scope
  %s2 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  store ptr %a2, ptr %l2
  store i64 %a3, ptr %l3
  store i64 %a4, ptr %l4
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load i64, ptr %l3, !tbaa !24
  %t2 = load i64, ptr %l4, !tbaa !24
  %t5 = icmp ne i64 %t1, %t2
  br i1 %t5, label %bb1, label %bb2
bb1:
  store %olang.scope zeroinitializer, ptr %s1
  %t7 = load ptr, ptr %l0, !tbaa !29
  %t9 = getelementptr %"compiler/names:Resolver", ptr %t7, i32 0, i32 20
  store ptr %t9, ptr %l9, !tbaa !29
  %t10 = load i64, ptr %l1, !tbaa !24
  store i64 %t10, ptr %l10, !tbaa !24
  %t11 = load ptr, ptr %l2, !tbaa !29
  %t13 = getelementptr %"compiler/ast:TopIf", ptr %t11, i32 0, i32 1
  %t14 = load ptr, ptr %t13, !tbaa !29
  %t16 = icmp eq ptr %t14, null
  br i1 %t16, label %bb3, label %bb4
bb2:
  br label %bb8
bb3:
  call void @__olang_check_failed(ptr @olang_loc_68114e74278341f8_5424865478da1a14)
  unreachable
bb4:
  br label %bb5
bb5:
  %t18 = load ptr, ptr %l2, !tbaa !29
  %t20 = getelementptr %"compiler/ast:TopIf", ptr %t18, i32 0, i32 1
  %t21 = load ptr, ptr %t20, !tbaa !29
  %t24 = getelementptr %"compiler/ast:TopBranch", ptr %t21, i32 0, i32 0
  %t25 = load %"compiler/source:Span", ptr %t24
  %t26 = load i64, ptr %l10, !tbaa !24
  %t28 = call %"std/pair:Pair.9f40551e0d6019a8e678d8f53048b6ba" @std_2fpair_3aPair_3cI64_2c_20compiler_2fsource_3aSpan_3e_2ector(ptr %s1, i64 %t26, %"compiler/source:Span" %t25)
  store %"std/pair:Pair.9f40551e0d6019a8e678d8f53048b6ba" %t28, ptr %l18
  br label %bb6
bb6:
  %t29 = load ptr, ptr %l9, !tbaa !29
  %t30 = load %"std/pair:Pair.9f40551e0d6019a8e678d8f53048b6ba", ptr %l18
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fpair_3aPair_3cI64_2c_20compiler__H2dfd829fbe4fa38977b46d00afbe1a06(ptr %v0, ptr %t29, %"std/pair:Pair.9f40551e0d6019a8e678d8f53048b6ba" %t30)
  br label %bb7
bb7:
  call void @__olang_scope_close(ptr %s1)
  br label %bb8
bb8:
  %t31 = load ptr, ptr %l2, !tbaa !29
  %t33 = getelementptr %"compiler/ast:TopIf", ptr %t31, i32 0, i32 3
  %t34 = load ptr, ptr %t33, !tbaa !29
  %t36 = icmp eq ptr %t34, null
  %t38 = xor i1 %t36, true
  br i1 %t38, label %bb9, label %bb10
bb9:
  %t40 = load i64, ptr %l3, !tbaa !24
  %t41 = load i64, ptr %l4, !tbaa !24
  %t43 = add i64 %t41, 1
  %t46 = icmp ne i64 %t40, %t43
  store i1 %t46, ptr %l23, !tbaa !21
  br label %bb11
bb10:
  store i1 false, ptr %l23, !tbaa !21
  br label %bb11
bb11:
  %t48 = load i1, ptr %l23, !tbaa !21
  br i1 %t48, label %bb12, label %bb13
bb12:
  store %olang.scope zeroinitializer, ptr %s2
  %t49 = load ptr, ptr %l0, !tbaa !29
  %t51 = getelementptr %"compiler/names:Resolver", ptr %t49, i32 0, i32 20
  store ptr %t51, ptr %l29, !tbaa !29
  %t52 = load i64, ptr %l1, !tbaa !24
  store i64 %t52, ptr %l30, !tbaa !24
  %t53 = load ptr, ptr %l2, !tbaa !29
  %t55 = getelementptr %"compiler/ast:TopIf", ptr %t53, i32 0, i32 3
  %t56 = load ptr, ptr %t55, !tbaa !29
  %t58 = icmp eq ptr %t56, null
  br i1 %t58, label %bb14, label %bb15
bb13:
  br label %bb19
bb14:
  call void @__olang_check_failed(ptr @olang_loc_3167f851ad930e17_101a5d4c5c826523)
  unreachable
bb15:
  br label %bb16
bb16:
  %t60 = load ptr, ptr %l2, !tbaa !29
  %t62 = getelementptr %"compiler/ast:TopIf", ptr %t60, i32 0, i32 3
  %t63 = load ptr, ptr %t62, !tbaa !29
  %t66 = getelementptr %"compiler/ast:TopBranch", ptr %t63, i32 0, i32 0
  %t67 = load %"compiler/source:Span", ptr %t66
  %t68 = load i64, ptr %l30, !tbaa !24
  %t70 = call %"std/pair:Pair.9f40551e0d6019a8e678d8f53048b6ba" @std_2fpair_3aPair_3cI64_2c_20compiler_2fsource_3aSpan_3e_2ector(ptr %s2, i64 %t68, %"compiler/source:Span" %t67)
  store %"std/pair:Pair.9f40551e0d6019a8e678d8f53048b6ba" %t70, ptr %l38
  br label %bb17
bb17:
  %t71 = load ptr, ptr %l29, !tbaa !29
  %t72 = load %"std/pair:Pair.9f40551e0d6019a8e678d8f53048b6ba", ptr %l38
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fpair_3aPair_3cI64_2c_20compiler__H2dfd829fbe4fa38977b46d00afbe1a06(ptr %v0, ptr %t71, %"std/pair:Pair.9f40551e0d6019a8e678d8f53048b6ba" %t72)
  br label %bb18
bb18:
  call void @__olang_scope_close(ptr %s2)
  br label %bb19
bb19:
  %t73 = load i64, ptr %l3, !tbaa !24
  %t74 = load i64, ptr %l4, !tbaa !24
  %t77 = icmp eq i64 %t73, %t74
  br i1 %t77, label %bb20, label %bb21
bb20:
  %t79 = load ptr, ptr %l2, !tbaa !29
  %t81 = getelementptr %"compiler/ast:TopIf", ptr %t79, i32 0, i32 1
  %t82 = load ptr, ptr %t81, !tbaa !29
  %t84 = icmp eq ptr %t82, null
  br i1 %t84, label %bb22, label %bb23
bb21:
  store i1 false, ptr %l42, !tbaa !21
  br label %bb25
bb22:
  call void @__olang_check_failed(ptr @olang_loc_10b7a8cdf1f86826_4c22b802d51640a2)
  unreachable
bb23:
  br label %bb24
bb24:
  %t86 = load ptr, ptr %l2, !tbaa !29
  %t88 = getelementptr %"compiler/ast:TopIf", ptr %t86, i32 0, i32 1
  %t89 = load ptr, ptr %t88, !tbaa !29
  %t92 = getelementptr %"compiler/ast:TopBranch", ptr %t89, i32 0, i32 1
  %t93 = load { i64, ptr }, ptr %t92, !tbaa !27
  %t95 = extractvalue { i64, ptr } %t93, 0
  %t97 = icmp sgt i64 %t95, 0
  store i1 %t97, ptr %l42, !tbaa !21
  br label %bb25
bb25:
  %t99 = load i1, ptr %l42, !tbaa !21
  br i1 %t99, label %bb26, label %bb27
bb26:
  %t100 = load ptr, ptr %l0, !tbaa !29
  store ptr %t100, ptr %l52, !tbaa !29
  %t101 = load i64, ptr %l1, !tbaa !24
  store i64 %t101, ptr %l53, !tbaa !24
  %t102 = load ptr, ptr %l2, !tbaa !29
  %t104 = getelementptr %"compiler/ast:TopIf", ptr %t102, i32 0, i32 1
  %t105 = load ptr, ptr %t104, !tbaa !29
  %t107 = icmp eq ptr %t105, null
  br i1 %t107, label %bb28, label %bb29
bb27:
  br label %bb32
bb28:
  call void @__olang_check_failed(ptr @olang_loc_10b7a8cdf1f86826_4c22b802d51640a2)
  unreachable
bb29:
  br label %bb30
bb30:
  %t109 = load ptr, ptr %l2, !tbaa !29
  %t111 = getelementptr %"compiler/ast:TopIf", ptr %t109, i32 0, i32 1
  %t112 = load ptr, ptr %t111, !tbaa !29
  %t115 = getelementptr %"compiler/ast:TopBranch", ptr %t112, i32 0, i32 1
  %t116 = load { i64, ptr }, ptr %t115, !tbaa !27
  %t117 = load ptr, ptr %l52, !tbaa !29
  %t118 = load i64, ptr %l53, !tbaa !24
  call void @compiler_2fnames_2ecompiler_2fnames_3aResolver_2ebodies(ptr %v0, ptr %v1, ptr %t117, i64 %t118, { i64, ptr } %t116)
  br label %bb31
bb31:
  br label %bb32
bb32:
  %t120 = load ptr, ptr %l2, !tbaa !29
  %t122 = getelementptr %"compiler/ast:TopIf", ptr %t120, i32 0, i32 2
  %t123 = load ptr, ptr %t122, !tbaa !29
  %t125 = icmp eq ptr %t123, null
  %t127 = xor i1 %t125, true
  br i1 %t127, label %bb33, label %bb34
bb33:
  %t129 = load ptr, ptr %l0, !tbaa !29
  store ptr %t129, ptr %l65, !tbaa !29
  %t130 = load i64, ptr %l1, !tbaa !24
  store i64 %t130, ptr %l66, !tbaa !24
  %t131 = load ptr, ptr %l2, !tbaa !29
  %t133 = getelementptr %"compiler/ast:TopIf", ptr %t131, i32 0, i32 2
  %t134 = load ptr, ptr %t133, !tbaa !29
  %t136 = icmp eq ptr %t134, null
  br i1 %t136, label %bb35, label %bb36
bb34:
  br label %bb39
bb35:
  call void @__olang_check_failed(ptr @olang_loc_4f6a732ad110320d_928733cb84224b09)
  unreachable
bb36:
  br label %bb37
bb37:
  %t138 = load ptr, ptr %l2, !tbaa !29
  %t140 = getelementptr %"compiler/ast:TopIf", ptr %t138, i32 0, i32 2
  %t141 = load ptr, ptr %t140, !tbaa !29
  %t142 = load i64, ptr %l3, !tbaa !24
  %t143 = load i64, ptr %l4, !tbaa !24
  %t145 = add i64 %t143, 1
  %t146 = load ptr, ptr %l65, !tbaa !29
  %t147 = load i64, ptr %l66, !tbaa !24
  call void @compiler_2fnames_2ecompiler_2fnames_3aResolver_2ebodiesIf(ptr %v0, ptr %v1, ptr %t146, i64 %t147, ptr %t141, i64 %t142, i64 %t145)
  br label %bb38
bb38:
  br label %bb39
bb39:
  %t151 = load ptr, ptr %l2, !tbaa !29
  %t153 = getelementptr %"compiler/ast:TopIf", ptr %t151, i32 0, i32 3
  %t154 = load ptr, ptr %t153, !tbaa !29
  %t156 = icmp eq ptr %t154, null
  %t158 = xor i1 %t156, true
  br i1 %t158, label %bb40, label %bb41
bb40:
  %t160 = load i64, ptr %l3, !tbaa !24
  %t161 = load i64, ptr %l4, !tbaa !24
  %t163 = add i64 %t161, 1
  %t166 = icmp eq i64 %t160, %t163
  store i1 %t166, ptr %l79, !tbaa !21
  br label %bb42
bb41:
  store i1 false, ptr %l79, !tbaa !21
  br label %bb42
bb42:
  %t168 = load i1, ptr %l79, !tbaa !21
  br i1 %t168, label %bb43, label %bb44
bb43:
  %t169 = load ptr, ptr %l2, !tbaa !29
  %t171 = getelementptr %"compiler/ast:TopIf", ptr %t169, i32 0, i32 3
  %t172 = load ptr, ptr %t171, !tbaa !29
  %t174 = icmp eq ptr %t172, null
  br i1 %t174, label %bb45, label %bb46
bb44:
  store i1 false, ptr %l84, !tbaa !21
  br label %bb48
bb45:
  call void @__olang_check_failed(ptr @olang_loc_3f10f26d81c7593c_51efd4b9807fb190)
  unreachable
bb46:
  br label %bb47
bb47:
  %t176 = load ptr, ptr %l2, !tbaa !29
  %t178 = getelementptr %"compiler/ast:TopIf", ptr %t176, i32 0, i32 3
  %t179 = load ptr, ptr %t178, !tbaa !29
  %t182 = getelementptr %"compiler/ast:TopBranch", ptr %t179, i32 0, i32 1
  %t183 = load { i64, ptr }, ptr %t182, !tbaa !27
  %t185 = extractvalue { i64, ptr } %t183, 0
  %t187 = icmp sgt i64 %t185, 0
  store i1 %t187, ptr %l84, !tbaa !21
  br label %bb48
bb48:
  %t189 = load i1, ptr %l84, !tbaa !21
  br i1 %t189, label %bb49, label %bb50
bb49:
  %t190 = load ptr, ptr %l0, !tbaa !29
  store ptr %t190, ptr %l94, !tbaa !29
  %t191 = load i64, ptr %l1, !tbaa !24
  store i64 %t191, ptr %l95, !tbaa !24
  %t192 = load ptr, ptr %l2, !tbaa !29
  %t194 = getelementptr %"compiler/ast:TopIf", ptr %t192, i32 0, i32 3
  %t195 = load ptr, ptr %t194, !tbaa !29
  %t197 = icmp eq ptr %t195, null
  br i1 %t197, label %bb51, label %bb52
bb50:
  br label %bb55
bb51:
  call void @__olang_check_failed(ptr @olang_loc_3f10f26d81c7593c_51efd4b9807fb190)
  unreachable
bb52:
  br label %bb53
bb53:
  %t199 = load ptr, ptr %l2, !tbaa !29
  %t201 = getelementptr %"compiler/ast:TopIf", ptr %t199, i32 0, i32 3
  %t202 = load ptr, ptr %t201, !tbaa !29
  %t205 = getelementptr %"compiler/ast:TopBranch", ptr %t202, i32 0, i32 1
  %t206 = load { i64, ptr }, ptr %t205, !tbaa !27
  %t207 = load ptr, ptr %l94, !tbaa !29
  %t208 = load i64, ptr %l95, !tbaa !24
  call void @compiler_2fnames_2ecompiler_2fnames_3aResolver_2ebodies(ptr %v0, ptr %v1, ptr %t207, i64 %t208, { i64, ptr } %t206)
  br label %bb54
bb54:
  br label %bb55
bb55:
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2fnames_2ecompiler_2fnames_3aResolver_2ebuildDefault(ptr %v0, ptr %v1, ptr %a0, i64 %a1, i32 %a2, %"compiler/source:Span" %a3, ptr %a4) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca i32
  %l3 = alloca %"compiler/source:Span"
  %l4 = alloca ptr
  %l5 = alloca { i64, ptr }
  %l6 = alloca ptr
  %l7 = alloca { i64, ptr }
  %l10 = alloca { i64, ptr }
  %l11 = alloca { i64, ptr }
  %l12 = alloca i64
  %l13 = alloca { i64, ptr }
  %l22 = alloca ptr
  %l29 = alloca { i64, ptr }
  %l35 = alloca %"compiler/source:Span"
  %l37 = alloca i64
  %l43 = alloca %"compiler/source:Span"
  %l45 = alloca i64
  %l46 = alloca i64
  %l51 = alloca { i64, ptr }
  %l53 = alloca i64
  %l60 = alloca { i64, ptr }
  %l62 = alloca { i64, ptr }
  %l63 = alloca { i64, ptr }
  %l65 = alloca i64
  %l68 = alloca i1
  %l70 = alloca i1
  %l72 = alloca i1
  %l74 = alloca i1
  %l76 = alloca i1
  %l78 = alloca i1
  %l80 = alloca i1
  %l82 = alloca i1
  %l84 = alloca i1
  %l86 = alloca i1
  %l88 = alloca i1
  %l90 = alloca i1
  %l94 = alloca ptr
  %l98 = alloca { i64, [3 x i64] }
  %l101 = alloca { i64, ptr }
  %l104 = alloca %"compiler/diagmsg:Msg"
  %l105 = alloca i64
  %l108 = alloca { i64, ptr }
  %l114 = alloca i1
  %l118 = alloca ptr
  %l122 = alloca { i64, [3 x i64] }
  %l123 = alloca { i64, ptr }
  %l128 = alloca { i64, ptr }
  %l129 = alloca { i64, ptr }
  %l132 = alloca { i64, ptr }
  %l135 = alloca %"compiler/diagmsg:Msg"
  %l136 = alloca i64
  %s0 = alloca %olang.scope
  %s5 = alloca %olang.scope
  %s8 = alloca %olang.scope
  %s9 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  store i32 %a2, ptr %l2
  store %"compiler/source:Span" %a3, ptr %l3
  store ptr %a4, ptr %l4
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l4, !tbaa !29
  %t3 = icmp eq ptr %t1, null
  br i1 %t3, label %bb1, label %bb2
bb1:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb2:
  br label %bb3
bb3:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d14, i32 0, i32 1) }, ptr %l10, !tbaa !27
  %t5 = load { i64, ptr }, ptr %l10, !tbaa !27
  store { i64, ptr } %t5, ptr %l11, !tbaa !27
  %t6 = load { i64, ptr }, ptr %l11, !tbaa !27
  %t7 = extractvalue { i64, ptr } %t6, 0
  store i64 %t7, ptr %l12, !tbaa !24
  %t8 = load i64, ptr %l12, !tbaa !24
  %t9 = mul i64 %t8, 1
  %t10 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t9)
  %t11 = insertvalue { i64, ptr } undef, i64 %t8, 0
  %t12 = insertvalue { i64, ptr } %t11, ptr %t10, 1
  store { i64, ptr } %t12, ptr %l13, !tbaa !27
  %t13 = getelementptr { i64, ptr }, ptr %l13, i32 0, i32 1
  %t14 = load ptr, ptr %t13, !tbaa !27
  %t15 = getelementptr { i64, ptr }, ptr %l11, i32 0, i32 1
  %t16 = load ptr, ptr %t15, !tbaa !27
  %t17 = load i64, ptr %l12, !tbaa !24
  %t18 = mul i64 %t17, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t14, ptr %t16, i64 %t18, i1 false)
  %t19 = load { i64, ptr }, ptr %l13, !tbaa !27
  store { i64, ptr } %t19, ptr %l5, !tbaa !27
  %t20 = load ptr, ptr %l4, !tbaa !29
  %t22 = getelementptr %"compiler/ast:VarDecl", ptr %t20, i32 0, i32 2
  %t23 = load ptr, ptr %t22, !tbaa !29
  %t25 = icmp eq ptr %t23, null
  %t27 = xor i1 %t25, true
  br i1 %t27, label %bb4, label %bb5
bb4:
  %t29 = load ptr, ptr %l0, !tbaa !29
  %t31 = getelementptr %"compiler/names:Resolver", ptr %t29, i32 0, i32 0
  %t32 = load ptr, ptr %t31, !tbaa !29
  %t34 = getelementptr %"compiler/load:Loader", ptr %t32, i32 0, i32 10
  %t35 = load i64, ptr %l1, !tbaa !24
  %t38 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H7bcf2aeb09afa796f4333e6ec8c3f63f(ptr %v0, ptr %v0, ptr %t34, i64 %t35)
  store ptr %t38, ptr %l22
  br label %bb6
bb5:
  %t39 = load ptr, ptr %l4, !tbaa !29
  %t41 = getelementptr %"compiler/ast:VarDecl", ptr %t39, i32 0, i32 3
  %t42 = load { i64, ptr }, ptr %t41, !tbaa !27
  %t44 = extractvalue { i64, ptr } %t42, 0
  %t46 = icmp eq i64 %t44, 1
  br i1 %t46, label %bb27, label %bb28
bb6:
  %t48 = load ptr, ptr %l22, !tbaa !29
  %t50 = getelementptr %"compiler/load:Module", ptr %t48, i32 0, i32 6
  %t51 = load ptr, ptr %t50, !tbaa !29
  store ptr %t51, ptr %l6, !tbaa !29
  %t53 = load ptr, ptr %l6, !tbaa !29
  %t55 = icmp eq ptr %t53, null
  br i1 %t55, label %bb7, label %bb8
bb7:
  call void @__olang_check_failed(ptr @olang_loc_1073219c408bafd2_e24f73113d5a6ea6)
  unreachable
bb8:
  br label %bb9
bb9:
  %t57 = load ptr, ptr %l6, !tbaa !29
  %t60 = getelementptr %"compiler/source:Source", ptr %t57, i32 0, i32 1
  %t61 = load { i64, ptr }, ptr %t60, !tbaa !27
  store { i64, ptr } %t61, ptr %l29, !tbaa !27
  %t62 = load ptr, ptr %l4, !tbaa !29
  %t64 = getelementptr %"compiler/ast:VarDecl", ptr %t62, i32 0, i32 2
  %t65 = load ptr, ptr %t64, !tbaa !29
  %t67 = icmp eq ptr %t65, null
  br i1 %t67, label %bb10, label %bb11
bb10:
  call void @__olang_check_failed(ptr @olang_loc_1073219c408bafd2_e24f73113d5a6ea6)
  unreachable
bb11:
  br label %bb12
bb12:
  %t69 = load ptr, ptr %l4, !tbaa !29
  %t71 = getelementptr %"compiler/ast:VarDecl", ptr %t69, i32 0, i32 2
  %t72 = load ptr, ptr %t71, !tbaa !29
  %t74 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aTypeRef_2eSpan(ptr %v1, ptr %t72)
  store %"compiler/source:Span" %t74, ptr %l35
  br label %bb13
bb13:
  %t75 = getelementptr %"compiler/source:Span", ptr %l35, i32 0, i32 0
  %t76 = load i32, ptr %t75, !tbaa !23
  %t78 = sext i32 %t76 to i64
  store i64 %t78, ptr %l37, !tbaa !24
  %t79 = load ptr, ptr %l4, !tbaa !29
  %t81 = getelementptr %"compiler/ast:VarDecl", ptr %t79, i32 0, i32 2
  %t82 = load ptr, ptr %t81, !tbaa !29
  %t84 = icmp eq ptr %t82, null
  br i1 %t84, label %bb14, label %bb15
bb14:
  call void @__olang_check_failed(ptr @olang_loc_1073219c408bafd2_e24f73113d5a6ea6)
  unreachable
bb15:
  br label %bb16
bb16:
  %t86 = load ptr, ptr %l4, !tbaa !29
  %t88 = getelementptr %"compiler/ast:VarDecl", ptr %t86, i32 0, i32 2
  %t89 = load ptr, ptr %t88, !tbaa !29
  %t91 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aTypeRef_2eSpan(ptr %v1, ptr %t89)
  store %"compiler/source:Span" %t91, ptr %l43
  br label %bb17
bb17:
  %t92 = getelementptr %"compiler/source:Span", ptr %l43, i32 0, i32 1
  %t93 = load i32, ptr %t92, !tbaa !23
  %t95 = sext i32 %t93 to i64
  store i64 %t95, ptr %l45, !tbaa !24
  %t96 = load { i64, ptr }, ptr %l29, !tbaa !27
  %t97 = extractvalue { i64, ptr } %t96, 0
  store i64 %t97, ptr %l46, !tbaa !24
  %t98 = load i64, ptr %l37, !tbaa !24
  %t99 = icmp sge i64 %t98, 0
  br i1 %t99, label %bb18, label %bb19
bb18:
  %t101 = load i64, ptr %l37, !tbaa !24
  %t102 = load i64, ptr %l45, !tbaa !24
  %t103 = icmp sle i64 %t101, %t102
  br i1 %t103, label %bb20, label %bb21
bb19:
  call void @__olang_check_failed(ptr @olang_loc_f4b8a71cbdc10f47_ba6792d0a606e23b)
  unreachable
bb20:
  %t105 = load i64, ptr %l45, !tbaa !24
  %t106 = load i64, ptr %l46, !tbaa !24
  %t107 = icmp sle i64 %t105, %t106
  br i1 %t107, label %bb22, label %bb23
bb21:
  call void @__olang_check_failed(ptr @olang_loc_f4b8a71cbdc10f47_ba6792d0a606e23b)
  unreachable
bb22:
  %t109 = getelementptr { i64, ptr }, ptr %l29, i32 0, i32 1
  %t110 = load ptr, ptr %t109, !tbaa !27
  %t111 = load i64, ptr %l37, !tbaa !24
  %t112 = load i64, ptr %l45, !tbaa !24
  %t113 = getelementptr i8, ptr %t110, i64 %t111
  %t114 = sub i64 %t112, %t111
  %t115 = insertvalue { i64, ptr } undef, i64 %t114, 0
  %t116 = insertvalue { i64, ptr } %t115, ptr %t113, 1
  %t118 = extractvalue { i64, ptr } %t116, 1
  %t119 = extractvalue { i64, ptr } %t116, 0
  %t120 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t119)
  call void @olang_textcopy(ptr %t120, ptr %t118, i64 %t119)
  %t121 = insertvalue { i64, ptr } undef, i64 %t119, 0
  %t122 = insertvalue { i64, ptr } %t121, ptr %t120, 1
  store { i64, ptr } %t122, ptr %l51, !tbaa !27
  %t123 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t124 = extractvalue { i64, ptr } %t123, 0
  %t125 = load { i64, ptr }, ptr %l51, !tbaa !27
  %t126 = extractvalue { i64, ptr } %t125, 0
  store i64 %t126, ptr %l53, !tbaa !24
  %t128 = load i64, ptr %l53, !tbaa !24
  %t129 = icmp eq i64 %t124, %t128
  br i1 %t129, label %bb24, label %bb25
bb23:
  call void @__olang_check_failed(ptr @olang_loc_f4b8a71cbdc10f47_ba6792d0a606e23b)
  unreachable
bb24:
  %t131 = getelementptr { i64, ptr }, ptr %l5, i32 0, i32 1
  %t132 = load ptr, ptr %t131, !tbaa !27
  %t133 = getelementptr { i64, ptr }, ptr %l51, i32 0, i32 1
  %t134 = load ptr, ptr %t133, !tbaa !27
  %t135 = load i64, ptr %l53, !tbaa !24
  %t136 = mul i64 %t135, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t132, ptr %t134, i64 %t136, i1 false)
  br label %bb26
bb25:
  %t137 = load { i64, ptr }, ptr %l51, !tbaa !27
  store { i64, ptr } %t137, ptr %l5, !tbaa !27
  br label %bb26
bb26:
  br label %bb34
bb27:
  store %olang.scope zeroinitializer, ptr %s5
  %t138 = load ptr, ptr %l4, !tbaa !29
  %t140 = getelementptr %"compiler/ast:VarDecl", ptr %t138, i32 0, i32 3
  %t141 = load { i64, ptr }, ptr %t140, !tbaa !27
  store { i64, ptr } %t141, ptr %l60, !tbaa !27
  %t142 = getelementptr { i64, ptr }, ptr %l60, i32 0, i32 1
  %t143 = load ptr, ptr %t142, !tbaa !27
  %t144 = getelementptr ptr, ptr %t143, i64 0
  %t145 = load ptr, ptr %t144, !tbaa !39
  %t147 = call { i64, ptr } @compiler_2fnames_2eliteralType(ptr %v1, ptr %s5, ptr %t145)
  store { i64, ptr } %t147, ptr %l62
  br label %bb29
bb28:
  br label %bb33
bb29:
  %t148 = load { i64, ptr }, ptr %l62, !tbaa !27
  %t149 = extractvalue { i64, ptr } %t148, 1
  %t150 = extractvalue { i64, ptr } %t148, 0
  %t151 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t150)
  call void @olang_textcopy(ptr %t151, ptr %t149, i64 %t150)
  %t152 = insertvalue { i64, ptr } undef, i64 %t150, 0
  %t153 = insertvalue { i64, ptr } %t152, ptr %t151, 1
  store { i64, ptr } %t153, ptr %l63, !tbaa !27
  %t154 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t155 = extractvalue { i64, ptr } %t154, 0
  %t156 = load { i64, ptr }, ptr %l63, !tbaa !27
  %t157 = extractvalue { i64, ptr } %t156, 0
  store i64 %t157, ptr %l65, !tbaa !24
  %t159 = load i64, ptr %l65, !tbaa !24
  %t160 = icmp eq i64 %t155, %t159
  br i1 %t160, label %bb30, label %bb31
bb30:
  %t162 = getelementptr { i64, ptr }, ptr %l5, i32 0, i32 1
  %t163 = load ptr, ptr %t162, !tbaa !27
  %t164 = getelementptr { i64, ptr }, ptr %l63, i32 0, i32 1
  %t165 = load ptr, ptr %t164, !tbaa !27
  %t166 = load i64, ptr %l65, !tbaa !24
  %t167 = mul i64 %t166, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t163, ptr %t165, i64 %t167, i1 false)
  br label %bb32
bb31:
  %t168 = load { i64, ptr }, ptr %l63, !tbaa !27
  store { i64, ptr } %t168, ptr %l5, !tbaa !27
  br label %bb32
bb32:
  call void @__olang_scope_close(ptr %s5)
  br label %bb33
bb33:
  br label %bb34
bb34:
  %t169 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t171 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %s0, { i64, ptr } %t169, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d15, i32 0, i32 1) })
  store i1 %t171, ptr %l68
  br label %bb35
bb35:
  %t172 = load i1, ptr %l68, !tbaa !21
  br i1 %t172, label %bb36, label %bb37
bb36:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb37:
  br label %bb38
bb38:
  %t173 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t175 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %s0, { i64, ptr } %t173, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d16, i32 0, i32 1) })
  store i1 %t175, ptr %l70
  br label %bb39
bb39:
  %t176 = load i1, ptr %l70, !tbaa !21
  %t177 = xor i1 %t176, true
  br i1 %t177, label %bb40, label %bb41
bb40:
  %t179 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t181 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %s0, { i64, ptr } %t179, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d17, i32 0, i32 1) })
  store i1 %t181, ptr %l74
  br label %bb42
bb41:
  store i1 false, ptr %l72, !tbaa !21
  br label %bb43
bb42:
  %t182 = load i1, ptr %l74, !tbaa !21
  %t183 = xor i1 %t182, true
  store i1 %t183, ptr %l72, !tbaa !21
  br label %bb43
bb43:
  %t185 = load i1, ptr %l72, !tbaa !21
  br i1 %t185, label %bb44, label %bb45
bb44:
  %t186 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t188 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %s0, { i64, ptr } %t186, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d18, i32 0, i32 1) })
  store i1 %t188, ptr %l78
  br label %bb46
bb45:
  store i1 false, ptr %l76, !tbaa !21
  br label %bb47
bb46:
  %t189 = load i1, ptr %l78, !tbaa !21
  %t190 = xor i1 %t189, true
  store i1 %t190, ptr %l76, !tbaa !21
  br label %bb47
bb47:
  %t192 = load i1, ptr %l76, !tbaa !21
  br i1 %t192, label %bb48, label %bb49
bb48:
  %t193 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t195 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %s0, { i64, ptr } %t193, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d19, i32 0, i32 1) })
  store i1 %t195, ptr %l82
  br label %bb50
bb49:
  store i1 false, ptr %l80, !tbaa !21
  br label %bb51
bb50:
  %t196 = load i1, ptr %l82, !tbaa !21
  %t197 = xor i1 %t196, true
  store i1 %t197, ptr %l80, !tbaa !21
  br label %bb51
bb51:
  %t199 = load i1, ptr %l80, !tbaa !21
  br i1 %t199, label %bb52, label %bb53
bb52:
  %t200 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t202 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %s0, { i64, ptr } %t200, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d20, i32 0, i32 1) })
  store i1 %t202, ptr %l86
  br label %bb54
bb53:
  store i1 false, ptr %l84, !tbaa !21
  br label %bb55
bb54:
  %t203 = load i1, ptr %l86, !tbaa !21
  %t204 = xor i1 %t203, true
  store i1 %t204, ptr %l84, !tbaa !21
  br label %bb55
bb55:
  %t206 = load i1, ptr %l84, !tbaa !21
  br i1 %t206, label %bb56, label %bb57
bb56:
  %t207 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t209 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %s0, { i64, ptr } %t207, { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d21, i32 0, i32 1) })
  store i1 %t209, ptr %l90
  br label %bb58
bb57:
  store i1 false, ptr %l88, !tbaa !21
  br label %bb59
bb58:
  %t210 = load i1, ptr %l90, !tbaa !21
  %t211 = xor i1 %t210, true
  store i1 %t211, ptr %l88, !tbaa !21
  br label %bb59
bb59:
  %t213 = load i1, ptr %l88, !tbaa !21
  br i1 %t213, label %bb60, label %bb61
bb60:
  store %olang.scope zeroinitializer, ptr %s8
  %t214 = load ptr, ptr %l0, !tbaa !29
  %t216 = getelementptr %"compiler/names:Resolver", ptr %t214, i32 0, i32 0
  %t217 = load ptr, ptr %t216, !tbaa !29
  %t219 = getelementptr %"compiler/load:Loader", ptr %t217, i32 0, i32 4
  %t220 = load ptr, ptr %t219, !tbaa !29
  store ptr %t220, ptr %l94, !tbaa !29
  %t221 = load ptr, ptr %l0, !tbaa !29
  %t222 = load i64, ptr %l1, !tbaa !24
  %t223 = load %"compiler/source:Span", ptr %l3
  %t227 = call { i64, [3 x i64] } @compiler_2fnames_2ecompiler_2fnames_3aResolver_2eat(ptr %v0, ptr %t221, i64 %t222, %"compiler/source:Span" %t223)
  store { i64, [3 x i64] } %t227, ptr %l98
  br label %bb62
bb61:
  br label %bb66
bb62:
  %t228 = load ptr, ptr %l0, !tbaa !29
  %t229 = load i32, ptr %l2, !tbaa !23
  %t232 = call { i64, ptr } @compiler_2fnames_2ecompiler_2fnames_3aResolver_2etok(ptr %v0, ptr %s8, ptr %t228, i32 %t229)
  store { i64, ptr } %t232, ptr %l101
  br label %bb63
bb63:
  %t233 = load { i64, ptr }, ptr %l101, !tbaa !27
  %t234 = extractvalue { i64, ptr } %t233, 0
  %t235 = extractvalue { i64, ptr } %t233, 1
  %t236 = mul i64 %t234, 1
  %t237 = call ptr @__olang_scope_alloc(ptr %s8, i64 %t236)
  call void @llvm.memcpy.p0.p0.i64(ptr %t237, ptr %t235, i64 %t236, i1 false)
  %t238 = insertvalue { i64, ptr } undef, i64 %t234, 0
  %t239 = insertvalue { i64, ptr } %t238, ptr %t237, 1
  %t240 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t243 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eBuildDefaultType(ptr %s8, ptr %s0, ptr %s8, { i64, ptr } %t239, { i64, ptr } %t240)
  store %"compiler/diagmsg:Msg" %t243, ptr %l104
  br label %bb64
bb64:
  %t244 = load ptr, ptr %l94, !tbaa !29
  %t245 = load { i64, [3 x i64] }, ptr %l98
  %t246 = load %"compiler/diagmsg:Msg", ptr %l104
  %t247 = call i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eError(ptr %v0, ptr %s8, ptr %t244, { i64, [3 x i64] } %t245, %"compiler/diagmsg:Msg" %t246)
  store i64 %t247, ptr %l105
  br label %bb65
bb65:
  call void @__olang_scope_close(ptr %s8)
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb66:
  %t248 = load ptr, ptr %l0, !tbaa !29
  %t249 = load i32, ptr %l2, !tbaa !23
  %t252 = call { i64, ptr } @compiler_2fnames_2ecompiler_2fnames_3aResolver_2etext(ptr %v0, ptr %v0, ptr %t248, i32 %t249)
  store { i64, ptr } %t252, ptr %l108
  br label %bb67
bb67:
  %t253 = load { i64, ptr }, ptr %l108, !tbaa !27
  store { i64, ptr } %t253, ptr %l7, !tbaa !27
  %t254 = load ptr, ptr %l0, !tbaa !29
  %t256 = getelementptr %"compiler/names:Resolver", ptr %t254, i32 0, i32 0
  %t257 = load ptr, ptr %t256, !tbaa !29
  %t259 = getelementptr %"compiler/load:Loader", ptr %t257, i32 0, i32 1
  %t260 = load ptr, ptr %t259, !tbaa !29
  %t261 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t262 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t266 = call i1 @compiler_2fcond_2ecompiler_2fcond_3aConsts_2eFits(ptr %v0, ptr %v0, ptr %s0, ptr %t260, { i64, ptr } %t261, { i64, ptr } %t262)
  store i1 %t266, ptr %l114
  br label %bb68
bb68:
  %t267 = load i1, ptr %l114, !tbaa !21
  %t268 = xor i1 %t267, true
  br i1 %t268, label %bb69, label %bb70
bb69:
  store %olang.scope zeroinitializer, ptr %s9
  %t270 = load ptr, ptr %l0, !tbaa !29
  %t272 = getelementptr %"compiler/names:Resolver", ptr %t270, i32 0, i32 0
  %t273 = load ptr, ptr %t272, !tbaa !29
  %t275 = getelementptr %"compiler/load:Loader", ptr %t273, i32 0, i32 4
  %t276 = load ptr, ptr %t275, !tbaa !29
  store ptr %t276, ptr %l118, !tbaa !29
  %t277 = load ptr, ptr %l0, !tbaa !29
  %t278 = load i64, ptr %l1, !tbaa !24
  %t279 = load %"compiler/source:Span", ptr %l3
  %t283 = call { i64, [3 x i64] } @compiler_2fnames_2ecompiler_2fnames_3aResolver_2eat(ptr %v0, ptr %t277, i64 %t278, %"compiler/source:Span" %t279)
  store { i64, [3 x i64] } %t283, ptr %l122
  br label %bb71
bb70:
  br label %bb76
bb71:
  %t284 = load { i64, ptr }, ptr %l7, !tbaa !27
  store { i64, ptr } %t284, ptr %l123, !tbaa !27
  %t285 = load ptr, ptr %l0, !tbaa !29
  %t287 = getelementptr %"compiler/names:Resolver", ptr %t285, i32 0, i32 0
  %t288 = load ptr, ptr %t287, !tbaa !29
  %t290 = getelementptr %"compiler/load:Loader", ptr %t288, i32 0, i32 1
  %t291 = load ptr, ptr %t290, !tbaa !29
  %t292 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t295 = call { i64, ptr } @compiler_2fcond_2ecompiler_2fcond_3aConsts_2eRaw(ptr %v0, ptr %v0, ptr %s9, ptr %t291, { i64, ptr } %t292)
  store { i64, ptr } %t295, ptr %l128
  br label %bb72
bb72:
  %t296 = load { i64, ptr }, ptr %l128, !tbaa !27
  %t297 = extractvalue { i64, ptr } %t296, 0
  %t298 = extractvalue { i64, ptr } %t296, 1
  %t299 = mul i64 %t297, 1
  %t300 = call ptr @__olang_scope_alloc(ptr %s9, i64 %t299)
  call void @llvm.memcpy.p0.p0.i64(ptr %t300, ptr %t298, i64 %t299, i1 false)
  %t301 = insertvalue { i64, ptr } undef, i64 %t297, 0
  %t302 = insertvalue { i64, ptr } %t301, ptr %t300, 1
  store { i64, ptr } %t302, ptr %l129, !tbaa !27
  %t303 = load ptr, ptr %l0, !tbaa !29
  %t304 = load i32, ptr %l2, !tbaa !23
  %t307 = call { i64, ptr } @compiler_2fnames_2ecompiler_2fnames_3aResolver_2etok(ptr %v0, ptr %s9, ptr %t303, i32 %t304)
  store { i64, ptr } %t307, ptr %l132
  br label %bb73
bb73:
  %t308 = load { i64, ptr }, ptr %l132, !tbaa !27
  %t309 = extractvalue { i64, ptr } %t308, 0
  %t310 = extractvalue { i64, ptr } %t308, 1
  %t311 = mul i64 %t309, 1
  %t312 = call ptr @__olang_scope_alloc(ptr %s9, i64 %t311)
  call void @llvm.memcpy.p0.p0.i64(ptr %t312, ptr %t310, i64 %t311, i1 false)
  %t313 = insertvalue { i64, ptr } undef, i64 %t309, 0
  %t314 = insertvalue { i64, ptr } %t313, ptr %t312, 1
  %t315 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t316 = load { i64, ptr }, ptr %l123, !tbaa !27
  %t317 = load { i64, ptr }, ptr %l129, !tbaa !27
  %t320 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eBuildDefaultFit(ptr %v0, ptr %s9, ptr %s9, ptr %s0, ptr %s9, { i64, ptr } %t316, { i64, ptr } %t317, { i64, ptr } %t314, { i64, ptr } %t315)
  store %"compiler/diagmsg:Msg" %t320, ptr %l135
  br label %bb74
bb74:
  %t321 = load ptr, ptr %l118, !tbaa !29
  %t322 = load { i64, [3 x i64] }, ptr %l122
  %t323 = load %"compiler/diagmsg:Msg", ptr %l135
  %t324 = call i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eError(ptr %v0, ptr %s9, ptr %t321, { i64, [3 x i64] } %t322, %"compiler/diagmsg:Msg" %t323)
  store i64 %t324, ptr %l136
  br label %bb75
bb75:
  call void @__olang_scope_close(ptr %s9)
  br label %bb76
bb76:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2fnames_2ecompiler_2fnames_3aResolver_2ecaseOf(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i64
  %l3 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l4 = alloca { i64, ptr }
  %l5 = alloca i64
  %l6 = alloca i64
  %l8 = alloca { i64, ptr }
  %l9 = alloca i64
  %l10 = alloca i64
  %l13 = alloca i64
  %l18 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l27 = alloca { i64, ptr }
  %l47 = alloca { i64, ptr }
  %s1 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = call i64 @compiler_2fnames_2ecompiler_2fnames_3aResolver_2emark(ptr %v0, ptr %t1)
  store i64 %t3, ptr %l13
  br label %bb1
bb1:
  %t4 = load i64, ptr %l13, !tbaa !24
  store i64 %t4, ptr %l2, !tbaa !24
  %t5 = load ptr, ptr %l1, !tbaa !29
  %t7 = getelementptr %"compiler/ast:Case", ptr %t5, i32 0, i32 1
  %t8 = load { i64, ptr }, ptr %t7, !tbaa !27
  %t10 = extractvalue { i64, ptr } %t8, 0
  %t12 = icmp sgt i64 %t10, 0
  br i1 %t12, label %bb2, label %bb3
bb2:
  store %olang.scope zeroinitializer, ptr %s1
  %t14 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aNameId_3e_2ector(ptr %s1, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t14, ptr %l18
  br label %bb4
bb3:
  br label %bb12
bb4:
  %t15 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l18
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t15, ptr %l3
  %t16 = load ptr, ptr %l1, !tbaa !29
  %t18 = getelementptr %"compiler/ast:Case", ptr %t16, i32 0, i32 1
  %t19 = load { i64, ptr }, ptr %t18, !tbaa !27
  store { i64, ptr } %t19, ptr %l4, !tbaa !27
  store i64 0, ptr %l5, !tbaa !24
  %t21 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t23 = extractvalue { i64, ptr } %t21, 0
  store i64 %t23, ptr %l6, !tbaa !24
  br label %bb5
bb5:
  %t25 = load i64, ptr %l5, !tbaa !24
  %t26 = load i64, ptr %l6, !tbaa !24
  %t29 = icmp slt i64 %t25, %t26
  %t31 = xor i1 %t29, true
  br i1 %t31, label %bb6, label %bb7
bb6:
  br label %bb11
bb7:
  br label %bb8
bb8:
  %t33 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t33, ptr %l27, !tbaa !27
  %t34 = load i64, ptr %l5, !tbaa !24
  %t36 = getelementptr { i64, ptr }, ptr %l27, i32 0, i32 1
  %t37 = load ptr, ptr %t36, !tbaa !27
  %t38 = getelementptr ptr, ptr %t37, i64 %t34
  %t39 = load ptr, ptr %t38, !tbaa !39
  %t41 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2fnames_2ecompiler_2fnames_3aResolver_2epattern(ptr %v0, ptr %v1, ptr %s1, ptr %t41, ptr %t39, ptr %l3)
  br label %bb9
bb9:
  br label %bb10
bb10:
  %t46 = load i64, ptr %l5, !tbaa !24
  %t48 = add i64 %t46, 1
  store i64 %t48, ptr %l5, !tbaa !24
  br label %bb5
bb11:
  call void @__olang_scope_close(ptr %s1)
  br label %bb12
bb12:
  %t50 = load ptr, ptr %l1, !tbaa !29
  %t52 = getelementptr %"compiler/ast:Case", ptr %t50, i32 0, i32 2
  %t53 = load { i64, ptr }, ptr %t52, !tbaa !27
  %t55 = extractvalue { i64, ptr } %t53, 0
  %t57 = icmp sgt i64 %t55, 0
  br i1 %t57, label %bb13, label %bb14
bb13:
  %t59 = load ptr, ptr %l1, !tbaa !29
  %t61 = getelementptr %"compiler/ast:Case", ptr %t59, i32 0, i32 2
  %t62 = load { i64, ptr }, ptr %t61, !tbaa !27
  store { i64, ptr } %t62, ptr %l8, !tbaa !27
  store i64 0, ptr %l9, !tbaa !24
  %t64 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t66 = extractvalue { i64, ptr } %t64, 0
  store i64 %t66, ptr %l10, !tbaa !24
  br label %bb15
bb14:
  br label %bb22
bb15:
  %t68 = load i64, ptr %l9, !tbaa !24
  %t69 = load i64, ptr %l10, !tbaa !24
  %t72 = icmp slt i64 %t68, %t69
  %t74 = xor i1 %t72, true
  br i1 %t74, label %bb16, label %bb17
bb16:
  br label %bb21
bb17:
  br label %bb18
bb18:
  %t76 = load { i64, ptr }, ptr %l8, !tbaa !27
  store { i64, ptr } %t76, ptr %l47, !tbaa !27
  %t77 = load i64, ptr %l9, !tbaa !24
  %t79 = getelementptr { i64, ptr }, ptr %l47, i32 0, i32 1
  %t80 = load ptr, ptr %t79, !tbaa !27
  %t81 = getelementptr ptr, ptr %t80, i64 %t77
  %t82 = load ptr, ptr %t81, !tbaa !39
  %t84 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2fnames_2ecompiler_2fnames_3aResolver_2etypeRef(ptr %v0, ptr %v1, ptr %t84, ptr %t82)
  br label %bb19
bb19:
  br label %bb20
bb20:
  %t89 = load i64, ptr %l9, !tbaa !24
  %t91 = add i64 %t89, 1
  store i64 %t91, ptr %l9, !tbaa !24
  br label %bb15
bb21:
  br label %bb22
bb22:
  %t93 = load ptr, ptr %l1, !tbaa !29
  %t95 = getelementptr %"compiler/ast:Case", ptr %t93, i32 0, i32 3
  %t96 = load ptr, ptr %t95, !tbaa !29
  %t98 = icmp eq ptr %t96, null
  %t100 = xor i1 %t98, true
  br i1 %t100, label %bb23, label %bb24
bb23:
  %t102 = load ptr, ptr %l0, !tbaa !29
  %t103 = load ptr, ptr %l1, !tbaa !29
  %t105 = getelementptr %"compiler/ast:Case", ptr %t103, i32 0, i32 3
  %t106 = load ptr, ptr %t105, !tbaa !29
  call void @compiler_2fnames_2ecompiler_2fnames_3aResolver_2eexpr(ptr %v0, ptr %v1, ptr %t102, ptr %t106)
  br label %bb25
bb24:
  br label %bb26
bb25:
  br label %bb26
bb26:
  %t109 = load ptr, ptr %l0, !tbaa !29
  %t110 = load ptr, ptr %l1, !tbaa !29
  %t112 = getelementptr %"compiler/ast:Case", ptr %t110, i32 0, i32 4
  %t113 = load { i64, ptr }, ptr %t112, !tbaa !27
  call void @compiler_2fnames_2ecompiler_2fnames_3aResolver_2eblock(ptr %v0, ptr %v1, ptr %t109, { i64, ptr } %t113)
  br label %bb27
bb27:
  %t116 = load ptr, ptr %l1, !tbaa !29
  %t118 = getelementptr %"compiler/ast:Case", ptr %t116, i32 0, i32 5
  %t119 = load ptr, ptr %t118, !tbaa !29
  %t121 = icmp eq ptr %t119, null
  %t123 = xor i1 %t121, true
  br i1 %t123, label %bb28, label %bb29
bb28:
  %t125 = load ptr, ptr %l0, !tbaa !29
  %t126 = load ptr, ptr %l1, !tbaa !29
  %t128 = getelementptr %"compiler/ast:Case", ptr %t126, i32 0, i32 5
  %t129 = load ptr, ptr %t128, !tbaa !29
  call void @compiler_2fnames_2ecompiler_2fnames_3aResolver_2eexpr(ptr %v0, ptr %v1, ptr %t125, ptr %t129)
  br label %bb30
bb29:
  br label %bb31
bb30:
  br label %bb31
bb31:
  %t132 = load ptr, ptr %l0, !tbaa !29
  %t133 = load i64, ptr %l2, !tbaa !24
  call void @compiler_2fnames_2ecompiler_2fnames_3aResolver_2epopTo(ptr %v0, ptr %t132, i64 %t133)
  br label %bb32
bb32:
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2fnames_2ecompiler_2fnames_3aResolver_2echoose(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i1 %a2, i1 %a3, i1 %a4) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i1
  %l3 = alloca i1
  %l9 = alloca i1
  %l29 = alloca i1
  %l35 = alloca i1
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store i1 %a2, ptr %l2
  store i1 %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l1, !tbaa !29
  %t3 = getelementptr %"compiler/ast:Branch", ptr %t1, i32 0, i32 2
  %t4 = load i64, ptr %t3, !tbaa !24
  %t6 = icmp slt i64 %t4, 0
  br i1 %t6, label %bb1, label %bb2
bb1:
  br label %ret
bb2:
  br label %bb3
bb3:
  %t8 = load i1, ptr %l2, !tbaa !21
  br i1 %t8, label %bb4, label %bb5
bb4:
  %t10 = load i1, ptr %l3, !tbaa !21
  %t12 = xor i1 %t10, true
  store i1 %t12, ptr %l9, !tbaa !21
  br label %bb6
bb5:
  store i1 false, ptr %l9, !tbaa !21
  br label %bb6
bb6:
  %t14 = load i1, ptr %l9, !tbaa !21
  br i1 %t14, label %bb7, label %bb8
bb7:
  %t15 = load ptr, ptr %l0, !tbaa !29
  %t17 = getelementptr %"compiler/names:Resolver", ptr %t15, i32 0, i32 17
  %t18 = load ptr, ptr %l1, !tbaa !29
  %t20 = getelementptr %"compiler/ast:Branch", ptr %t18, i32 0, i32 0
  %t21 = load %"compiler/source:Span", ptr %t20
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aSpan_3e_2ePush_3ccompiler_2fsource_3aSpan_3e(ptr %v0, ptr %t17, %"compiler/source:Span" %t21)
  br label %bb9
bb8:
  br label %bb10
bb9:
  br label %bb10
bb10:
  %t24 = load i1, ptr %l2, !tbaa !21
  br i1 %t24, label %bb11, label %bb12
bb11:
  %t26 = load i1, ptr %l3, !tbaa !21
  br i1 %t26, label %bb13, label %bb14
bb12:
  br i1 %a4, label %bb18, label %bb19
bb13:
  %t30 = load ptr, ptr %l0, !tbaa !29
  %t32 = getelementptr %"compiler/names:Resolver", ptr %t30, i32 0, i32 0
  %t33 = load ptr, ptr %t32, !tbaa !29
  %t35 = getelementptr %"compiler/load:Loader", ptr %t33, i32 0, i32 4
  %t36 = load ptr, ptr %t35, !tbaa !29
  %t37 = load ptr, ptr %l1, !tbaa !29
  %t39 = getelementptr %"compiler/ast:Branch", ptr %t37, i32 0, i32 2
  %t40 = load i64, ptr %t39, !tbaa !24
  call void @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eChoose(ptr %v0, ptr %t36, i64 %t40)
  br label %bb15
bb14:
  %t43 = load ptr, ptr %l0, !tbaa !29
  %t45 = getelementptr %"compiler/names:Resolver", ptr %t43, i32 0, i32 0
  %t46 = load ptr, ptr %t45, !tbaa !29
  %t48 = getelementptr %"compiler/load:Loader", ptr %t46, i32 0, i32 4
  %t49 = load ptr, ptr %t48, !tbaa !29
  %t50 = load ptr, ptr %l1, !tbaa !29
  %t52 = getelementptr %"compiler/ast:Branch", ptr %t50, i32 0, i32 2
  %t53 = load i64, ptr %t52, !tbaa !24
  call void @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eDrop(ptr %v0, ptr %t49, i64 %t53)
  br label %bb16
bb15:
  br label %bb17
bb16:
  br label %bb17
bb17:
  br label %bb26
bb18:
  %t56 = load ptr, ptr %l0, !tbaa !29
  %t58 = getelementptr %"compiler/names:Resolver", ptr %t56, i32 0, i32 0
  %t59 = load ptr, ptr %t58, !tbaa !29
  %t61 = getelementptr %"compiler/load:Loader", ptr %t59, i32 0, i32 4
  %t62 = load ptr, ptr %t61, !tbaa !29
  %t63 = load ptr, ptr %l1, !tbaa !29
  %t65 = getelementptr %"compiler/ast:Branch", ptr %t63, i32 0, i32 2
  %t66 = load i64, ptr %t65, !tbaa !24
  %t69 = call i1 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eHolds(ptr %v0, ptr %t62, i64 %t66)
  store i1 %t69, ptr %l35
  br label %bb20
bb19:
  store i1 false, ptr %l29, !tbaa !21
  br label %bb21
bb20:
  %t70 = load i1, ptr %l35, !tbaa !21
  %t71 = xor i1 %t70, true
  store i1 %t71, ptr %l29, !tbaa !21
  br label %bb21
bb21:
  %t73 = load i1, ptr %l29, !tbaa !21
  br i1 %t73, label %bb22, label %bb23
bb22:
  %t74 = load ptr, ptr %l0, !tbaa !29
  %t76 = getelementptr %"compiler/names:Resolver", ptr %t74, i32 0, i32 0
  %t77 = load ptr, ptr %t76, !tbaa !29
  %t79 = getelementptr %"compiler/load:Loader", ptr %t77, i32 0, i32 4
  %t80 = load ptr, ptr %t79, !tbaa !29
  %t81 = load ptr, ptr %l1, !tbaa !29
  %t83 = getelementptr %"compiler/ast:Branch", ptr %t81, i32 0, i32 2
  %t84 = load i64, ptr %t83, !tbaa !24
  call void @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eChoose(ptr %v0, ptr %t80, i64 %t84)
  br label %bb24
bb23:
  br label %bb25
bb24:
  br label %bb25
bb25:
  br label %bb26
bb26:
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2fnames_2ecompiler_2fnames_3aResolver_2ecollectIf(ptr %v0, ptr %v1, ptr %a0, i64 %a1, ptr %a2, i64 %a3, i64 %a4) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca ptr
  %l3 = alloca i64
  %l4 = alloca i64
  %l8 = alloca i1
  %l18 = alloca ptr
  %l19 = alloca i64
  %l31 = alloca ptr
  %l32 = alloca i64
  %l45 = alloca i1
  %l50 = alloca i1
  %l60 = alloca ptr
  %l61 = alloca i64
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  store ptr %a2, ptr %l2
  store i64 %a3, ptr %l3
  store i64 %a4, ptr %l4
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load i64, ptr %l3, !tbaa !24
  %t2 = load i64, ptr %l4, !tbaa !24
  %t5 = icmp eq i64 %t1, %t2
  br i1 %t5, label %bb1, label %bb2
bb1:
  %t7 = load ptr, ptr %l2, !tbaa !29
  %t9 = getelementptr %"compiler/ast:TopIf", ptr %t7, i32 0, i32 1
  %t10 = load ptr, ptr %t9, !tbaa !29
  %t12 = icmp eq ptr %t10, null
  br i1 %t12, label %bb3, label %bb4
bb2:
  store i1 false, ptr %l8, !tbaa !21
  br label %bb6
bb3:
  call void @__olang_check_failed(ptr @olang_loc_60cefae456c43b96_68bed78927cbacfa)
  unreachable
bb4:
  br label %bb5
bb5:
  %t14 = load ptr, ptr %l2, !tbaa !29
  %t16 = getelementptr %"compiler/ast:TopIf", ptr %t14, i32 0, i32 1
  %t17 = load ptr, ptr %t16, !tbaa !29
  %t20 = getelementptr %"compiler/ast:TopBranch", ptr %t17, i32 0, i32 1
  %t21 = load { i64, ptr }, ptr %t20, !tbaa !27
  %t23 = extractvalue { i64, ptr } %t21, 0
  %t25 = icmp sgt i64 %t23, 0
  store i1 %t25, ptr %l8, !tbaa !21
  br label %bb6
bb6:
  %t27 = load i1, ptr %l8, !tbaa !21
  br i1 %t27, label %bb7, label %bb8
bb7:
  %t28 = load ptr, ptr %l0, !tbaa !29
  store ptr %t28, ptr %l18, !tbaa !29
  %t29 = load i64, ptr %l1, !tbaa !24
  store i64 %t29, ptr %l19, !tbaa !24
  %t30 = load ptr, ptr %l2, !tbaa !29
  %t32 = getelementptr %"compiler/ast:TopIf", ptr %t30, i32 0, i32 1
  %t33 = load ptr, ptr %t32, !tbaa !29
  %t35 = icmp eq ptr %t33, null
  br i1 %t35, label %bb9, label %bb10
bb8:
  br label %bb13
bb9:
  call void @__olang_check_failed(ptr @olang_loc_60cefae456c43b96_68bed78927cbacfa)
  unreachable
bb10:
  br label %bb11
bb11:
  %t37 = load ptr, ptr %l2, !tbaa !29
  %t39 = getelementptr %"compiler/ast:TopIf", ptr %t37, i32 0, i32 1
  %t40 = load ptr, ptr %t39, !tbaa !29
  %t43 = getelementptr %"compiler/ast:TopBranch", ptr %t40, i32 0, i32 1
  %t44 = load { i64, ptr }, ptr %t43, !tbaa !27
  %t45 = load ptr, ptr %l18, !tbaa !29
  %t46 = load i64, ptr %l19, !tbaa !24
  call void @compiler_2fnames_2ecompiler_2fnames_3aResolver_2ecollect(ptr %v0, ptr %v1, ptr %t45, i64 %t46, { i64, ptr } %t44)
  br label %bb12
bb12:
  br label %bb13
bb13:
  %t48 = load ptr, ptr %l2, !tbaa !29
  %t50 = getelementptr %"compiler/ast:TopIf", ptr %t48, i32 0, i32 2
  %t51 = load ptr, ptr %t50, !tbaa !29
  %t53 = icmp eq ptr %t51, null
  %t55 = xor i1 %t53, true
  br i1 %t55, label %bb14, label %bb15
bb14:
  %t57 = load ptr, ptr %l0, !tbaa !29
  store ptr %t57, ptr %l31, !tbaa !29
  %t58 = load i64, ptr %l1, !tbaa !24
  store i64 %t58, ptr %l32, !tbaa !24
  %t59 = load ptr, ptr %l2, !tbaa !29
  %t61 = getelementptr %"compiler/ast:TopIf", ptr %t59, i32 0, i32 2
  %t62 = load ptr, ptr %t61, !tbaa !29
  %t64 = icmp eq ptr %t62, null
  br i1 %t64, label %bb16, label %bb17
bb15:
  br label %bb20
bb16:
  call void @__olang_check_failed(ptr @olang_loc_e46cc2517056eb7d_41b560901e6ccb81)
  unreachable
bb17:
  br label %bb18
bb18:
  %t66 = load ptr, ptr %l2, !tbaa !29
  %t68 = getelementptr %"compiler/ast:TopIf", ptr %t66, i32 0, i32 2
  %t69 = load ptr, ptr %t68, !tbaa !29
  %t70 = load i64, ptr %l3, !tbaa !24
  %t71 = load i64, ptr %l4, !tbaa !24
  %t73 = add i64 %t71, 1
  %t74 = load ptr, ptr %l31, !tbaa !29
  %t75 = load i64, ptr %l32, !tbaa !24
  call void @compiler_2fnames_2ecompiler_2fnames_3aResolver_2ecollectIf(ptr %v0, ptr %v1, ptr %t74, i64 %t75, ptr %t69, i64 %t70, i64 %t73)
  br label %bb19
bb19:
  br label %bb20
bb20:
  %t79 = load ptr, ptr %l2, !tbaa !29
  %t81 = getelementptr %"compiler/ast:TopIf", ptr %t79, i32 0, i32 3
  %t82 = load ptr, ptr %t81, !tbaa !29
  %t84 = icmp eq ptr %t82, null
  %t86 = xor i1 %t84, true
  br i1 %t86, label %bb21, label %bb22
bb21:
  %t88 = load i64, ptr %l3, !tbaa !24
  %t89 = load i64, ptr %l4, !tbaa !24
  %t91 = add i64 %t89, 1
  %t94 = icmp eq i64 %t88, %t91
  store i1 %t94, ptr %l45, !tbaa !21
  br label %bb23
bb22:
  store i1 false, ptr %l45, !tbaa !21
  br label %bb23
bb23:
  %t96 = load i1, ptr %l45, !tbaa !21
  br i1 %t96, label %bb24, label %bb25
bb24:
  %t97 = load ptr, ptr %l2, !tbaa !29
  %t99 = getelementptr %"compiler/ast:TopIf", ptr %t97, i32 0, i32 3
  %t100 = load ptr, ptr %t99, !tbaa !29
  %t102 = icmp eq ptr %t100, null
  br i1 %t102, label %bb26, label %bb27
bb25:
  store i1 false, ptr %l50, !tbaa !21
  br label %bb29
bb26:
  call void @__olang_check_failed(ptr @olang_loc_8bede4e7118dcaa8_b7291399ad78424c)
  unreachable
bb27:
  br label %bb28
bb28:
  %t104 = load ptr, ptr %l2, !tbaa !29
  %t106 = getelementptr %"compiler/ast:TopIf", ptr %t104, i32 0, i32 3
  %t107 = load ptr, ptr %t106, !tbaa !29
  %t110 = getelementptr %"compiler/ast:TopBranch", ptr %t107, i32 0, i32 1
  %t111 = load { i64, ptr }, ptr %t110, !tbaa !27
  %t113 = extractvalue { i64, ptr } %t111, 0
  %t115 = icmp sgt i64 %t113, 0
  store i1 %t115, ptr %l50, !tbaa !21
  br label %bb29
bb29:
  %t117 = load i1, ptr %l50, !tbaa !21
  br i1 %t117, label %bb30, label %bb31
bb30:
  %t118 = load ptr, ptr %l0, !tbaa !29
  store ptr %t118, ptr %l60, !tbaa !29
  %t119 = load i64, ptr %l1, !tbaa !24
  store i64 %t119, ptr %l61, !tbaa !24
  %t120 = load ptr, ptr %l2, !tbaa !29
  %t122 = getelementptr %"compiler/ast:TopIf", ptr %t120, i32 0, i32 3
  %t123 = load ptr, ptr %t122, !tbaa !29
  %t125 = icmp eq ptr %t123, null
  br i1 %t125, label %bb32, label %bb33
bb31:
  br label %bb36
bb32:
  call void @__olang_check_failed(ptr @olang_loc_8bede4e7118dcaa8_b7291399ad78424c)
  unreachable
bb33:
  br label %bb34
bb34:
  %t127 = load ptr, ptr %l2, !tbaa !29
  %t129 = getelementptr %"compiler/ast:TopIf", ptr %t127, i32 0, i32 3
  %t130 = load ptr, ptr %t129, !tbaa !29
  %t133 = getelementptr %"compiler/ast:TopBranch", ptr %t130, i32 0, i32 1
  %t134 = load { i64, ptr }, ptr %t133, !tbaa !27
  %t135 = load ptr, ptr %l60, !tbaa !29
  %t136 = load i64, ptr %l61, !tbaa !24
  call void @compiler_2fnames_2ecompiler_2fnames_3aResolver_2ecollect(ptr %v0, ptr %v1, ptr %t135, i64 %t136, { i64, ptr } %t134)
  br label %bb35
bb35:
  br label %bb36
bb36:
  br label %ret
ret:
  ret void
}

define dso_local %"compiler/cond:Decision" @compiler_2fnames_2ecompiler_2fnames_3aResolver_2edecideLocal(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca ptr
  %l4 = alloca i64
  %l5 = alloca i32
  %l6 = alloca ptr
  %l7 = alloca i64
  %l8 = alloca i32
  %l15 = alloca ptr
  %l28 = alloca i64
  %l30 = alloca i64
  %l35 = alloca i32
  %l55 = alloca i64
  %l57 = alloca i64
  %l62 = alloca i32
  %l79 = alloca { i64, ptr }
  %l82 = alloca ptr
  %l91 = alloca %"compiler/cond:Eval"
  %l95 = alloca %"compiler/cond:Decision"
  %s0 = alloca %olang.scope
  %rv = alloca %"compiler/cond:Decision"
  %t174 = alloca %"compiler/cond:Eval", align 8
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/names:Resolver", ptr %t1, i32 0, i32 0
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t6 = getelementptr %"compiler/load:Loader", ptr %t4, i32 0, i32 10
  %t7 = load ptr, ptr %l0, !tbaa !29
  %t9 = getelementptr %"compiler/names:Resolver", ptr %t7, i32 0, i32 6
  %t10 = load i64, ptr %t9, !tbaa !24
  %t13 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H7bcf2aeb09afa796f4333e6ec8c3f63f(ptr %v0, ptr %v0, ptr %t6, i64 %t10)
  store ptr %t13, ptr %l15
  br label %bb1
bb1:
  %t14 = load ptr, ptr %l15, !tbaa !29
  store ptr %t14, ptr %l2, !tbaa !29
  %t15 = load ptr, ptr %l0, !tbaa !29
  %t17 = getelementptr %"compiler/names:Resolver", ptr %t15, i32 0, i32 0
  %t18 = load ptr, ptr %t17, !tbaa !29
  %t19 = load ptr, ptr %l2, !tbaa !29
  call void @compiler_2fload_2ecompiler_2fload_3aLoader_2eCondParser(ptr %v0, ptr %v0, ptr %t18, ptr %t19)
  br label %bb2
bb2:
  %t22 = load ptr, ptr %l2, !tbaa !29
  %t24 = getelementptr %"compiler/load:Module", ptr %t22, i32 0, i32 23
  %t25 = load ptr, ptr %t24, !tbaa !29
  %t27 = icmp eq ptr %t25, null
  br i1 %t27, label %bb3, label %bb4
bb3:
  call void @__olang_check_failed(ptr @olang_loc_24d74d734bb1c47c_a76eb538bdec4e08)
  unreachable
bb4:
  br label %bb5
bb5:
  %t29 = load ptr, ptr %l2, !tbaa !29
  %t31 = getelementptr %"compiler/load:Module", ptr %t29, i32 0, i32 23
  %t32 = load ptr, ptr %t31, !tbaa !29
  %t35 = getelementptr %"compiler/cond:Scope", ptr %t32, i32 0, i32 2
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aNameId_3e_2eClear_3ccompiler_2fsource_3aNameId_3e(ptr %v0, ptr %t35)
  br label %bb6
bb6:
  %t37 = load ptr, ptr %l0, !tbaa !29
  %t39 = getelementptr %"compiler/names:Resolver", ptr %t37, i32 0, i32 10
  store ptr %t39, ptr %l3, !tbaa !29
  store i64 0, ptr %l4, !tbaa !24
  br label %bb7
bb7:
  %t41 = load i64, ptr %l4, !tbaa !24
  store i64 %t41, ptr %l28, !tbaa !24
  %t42 = load ptr, ptr %l3, !tbaa !29
  %t44 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aNameId_3e_2eLen_3ccompiler_2fsource_3aNameId_3e(ptr %v0, ptr %t42)
  store i64 %t44, ptr %l30
  br label %bb8
bb8:
  %t45 = load i64, ptr %l28, !tbaa !24
  %t46 = load i64, ptr %l30, !tbaa !24
  %t47 = icmp slt i64 %t45, %t46
  %t49 = xor i1 %t47, true
  br i1 %t49, label %bb9, label %bb10
bb9:
  br label %bb18
bb10:
  br label %bb11
bb11:
  %t51 = load ptr, ptr %l3, !tbaa !29
  %t52 = load i64, ptr %l4, !tbaa !24
  %t55 = call i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aNameId_3e_2eAt_3ccompiler_2fsource_3aNameId_3e(ptr %v0, ptr %t51, i64 %t52)
  store i32 %t55, ptr %l35
  br label %bb12
bb12:
  %t56 = load i32, ptr %l35, !tbaa !23
  store i32 %t56, ptr %l5, !tbaa !23
  %t57 = load ptr, ptr %l2, !tbaa !29
  %t59 = getelementptr %"compiler/load:Module", ptr %t57, i32 0, i32 23
  %t60 = load ptr, ptr %t59, !tbaa !29
  %t62 = icmp eq ptr %t60, null
  br i1 %t62, label %bb13, label %bb14
bb13:
  call void @__olang_check_failed(ptr @olang_loc_9d7678395160f3eb_aad45a645d2f7c27)
  unreachable
bb14:
  br label %bb15
bb15:
  %t64 = load ptr, ptr %l2, !tbaa !29
  %t66 = getelementptr %"compiler/load:Module", ptr %t64, i32 0, i32 23
  %t67 = load ptr, ptr %t66, !tbaa !29
  %t70 = getelementptr %"compiler/cond:Scope", ptr %t67, i32 0, i32 2
  %t71 = load i32, ptr %l5, !tbaa !23
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aNameId_3e_2ePush_3ccompiler_2fsource_3aNameId_3e(ptr %v0, ptr %t70, i32 %t71)
  br label %bb16
bb16:
  br label %bb17
bb17:
  %t74 = load i64, ptr %l4, !tbaa !24
  %t76 = add i64 %t74, 1
  store i64 %t76, ptr %l4, !tbaa !24
  br label %bb7
bb18:
  %t78 = load ptr, ptr %l2, !tbaa !29
  %t80 = getelementptr %"compiler/load:Module", ptr %t78, i32 0, i32 23
  %t81 = load ptr, ptr %t80, !tbaa !29
  %t83 = icmp eq ptr %t81, null
  br i1 %t83, label %bb19, label %bb20
bb19:
  call void @__olang_check_failed(ptr @olang_loc_606655a3d6c9146a_8558b81c90083f76)
  unreachable
bb20:
  br label %bb21
bb21:
  %t85 = load ptr, ptr %l2, !tbaa !29
  %t87 = getelementptr %"compiler/load:Module", ptr %t85, i32 0, i32 23
  %t88 = load ptr, ptr %t87, !tbaa !29
  %t91 = getelementptr %"compiler/cond:Scope", ptr %t88, i32 0, i32 3
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aNameId_3e_2eClear_3ccompiler_2fsource_3aNameId_3e(ptr %v0, ptr %t91)
  br label %bb22
bb22:
  %t93 = load ptr, ptr %l0, !tbaa !29
  %t95 = getelementptr %"compiler/names:Resolver", ptr %t93, i32 0, i32 11
  store ptr %t95, ptr %l6, !tbaa !29
  store i64 0, ptr %l7, !tbaa !24
  br label %bb23
bb23:
  %t97 = load i64, ptr %l7, !tbaa !24
  store i64 %t97, ptr %l55, !tbaa !24
  %t98 = load ptr, ptr %l6, !tbaa !29
  %t100 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aNameId_3e_2eLen_3ccompiler_2fsource_3aNameId_3e(ptr %v0, ptr %t98)
  store i64 %t100, ptr %l57
  br label %bb24
bb24:
  %t101 = load i64, ptr %l55, !tbaa !24
  %t102 = load i64, ptr %l57, !tbaa !24
  %t103 = icmp slt i64 %t101, %t102
  %t105 = xor i1 %t103, true
  br i1 %t105, label %bb25, label %bb26
bb25:
  br label %bb34
bb26:
  br label %bb27
bb27:
  %t107 = load ptr, ptr %l6, !tbaa !29
  %t108 = load i64, ptr %l7, !tbaa !24
  %t111 = call i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aNameId_3e_2eAt_3ccompiler_2fsource_3aNameId_3e(ptr %v0, ptr %t107, i64 %t108)
  store i32 %t111, ptr %l62
  br label %bb28
bb28:
  %t112 = load i32, ptr %l62, !tbaa !23
  store i32 %t112, ptr %l8, !tbaa !23
  %t113 = load ptr, ptr %l2, !tbaa !29
  %t115 = getelementptr %"compiler/load:Module", ptr %t113, i32 0, i32 23
  %t116 = load ptr, ptr %t115, !tbaa !29
  %t118 = icmp eq ptr %t116, null
  br i1 %t118, label %bb29, label %bb30
bb29:
  call void @__olang_check_failed(ptr @olang_loc_ca6a9ef64ba15071_9b37ed8e39b0c3dd)
  unreachable
bb30:
  br label %bb31
bb31:
  %t120 = load ptr, ptr %l2, !tbaa !29
  %t122 = getelementptr %"compiler/load:Module", ptr %t120, i32 0, i32 23
  %t123 = load ptr, ptr %t122, !tbaa !29
  %t126 = getelementptr %"compiler/cond:Scope", ptr %t123, i32 0, i32 3
  %t127 = load i32, ptr %l8, !tbaa !23
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aNameId_3e_2ePush_3ccompiler_2fsource_3aNameId_3e(ptr %v0, ptr %t126, i32 %t127)
  br label %bb32
bb32:
  br label %bb33
bb33:
  %t130 = load i64, ptr %l7, !tbaa !24
  %t132 = add i64 %t130, 1
  store i64 %t132, ptr %l7, !tbaa !24
  br label %bb23
bb34:
  %t134 = load ptr, ptr %l2, !tbaa !29
  %t136 = getelementptr %"compiler/load:Module", ptr %t134, i32 0, i32 6
  %t137 = load ptr, ptr %t136, !tbaa !29
  %t139 = icmp eq ptr %t137, null
  br i1 %t139, label %bb35, label %bb36
bb35:
  call void @__olang_check_failed(ptr @olang_loc_cbc626cb57e27c38_a58d4f769ca64c8c)
  unreachable
bb36:
  br label %bb37
bb37:
  %t141 = load ptr, ptr %l2, !tbaa !29
  %t143 = getelementptr %"compiler/load:Module", ptr %t141, i32 0, i32 6
  %t144 = load ptr, ptr %t143, !tbaa !29
  %t147 = getelementptr %"compiler/source:Source", ptr %t144, i32 0, i32 1
  %t148 = load { i64, ptr }, ptr %t147, !tbaa !27
  store { i64, ptr } %t148, ptr %l79, !tbaa !27
  %t149 = load ptr, ptr %l0, !tbaa !29
  %t151 = getelementptr %"compiler/names:Resolver", ptr %t149, i32 0, i32 0
  %t152 = load ptr, ptr %t151, !tbaa !29
  %t154 = getelementptr %"compiler/load:Loader", ptr %t152, i32 0, i32 3
  %t155 = load ptr, ptr %t154, !tbaa !29
  store ptr %t155, ptr %l82, !tbaa !29
  %t156 = load ptr, ptr %l2, !tbaa !29
  %t158 = getelementptr %"compiler/load:Module", ptr %t156, i32 0, i32 23
  %t159 = load ptr, ptr %t158, !tbaa !29
  %t161 = icmp eq ptr %t159, null
  br i1 %t161, label %bb38, label %bb39
bb38:
  call void @__olang_check_failed(ptr @olang_loc_cbc626cb57e27c38_a58d4f769ca64c8c)
  unreachable
bb39:
  br label %bb40
bb40:
  %t163 = load ptr, ptr %l2, !tbaa !29
  %t165 = getelementptr %"compiler/load:Module", ptr %t163, i32 0, i32 23
  %t166 = load ptr, ptr %t165, !tbaa !29
  %t167 = load ptr, ptr %l0, !tbaa !29
  %t169 = getelementptr %"compiler/names:Resolver", ptr %t167, i32 0, i32 0
  %t170 = load ptr, ptr %t169, !tbaa !29
  %t172 = getelementptr %"compiler/load:Loader", ptr %t170, i32 0, i32 1
  %t173 = load ptr, ptr %t172, !tbaa !29
  %t175 = load { i64, ptr }, ptr %l79, !tbaa !27
  %t176 = load ptr, ptr %l82, !tbaa !29
  call void @compiler_2fcond_3aEval_2ector(ptr %t174, ptr %v0, ptr %v0, ptr %v0, ptr %v0, ptr %s0, { i64, ptr } %t175, ptr %t176, ptr %t166, ptr %t173)
  call void @llvm.memmove.p0.p0.i64(ptr %l91, ptr %t174, i64 152, i1 false)
  br label %bb41
bb41:
  %t179 = call ptr @__olang_scope_alloc_a(ptr %s0, i64 152, i64 8)
  call void @llvm.memmove.p0.p0.i64(ptr %t179, ptr %l91, i64 152, i1 false)
  %t185 = call %"compiler/cond:Decision" @compiler_2fcond_2ecompiler_2fcond_3aEval_2eLocal(ptr %s0, ptr %v1, ptr %t179, ptr %a1)
  store %"compiler/cond:Decision" %t185, ptr %l95
  br label %bb42
bb42:
  call void @__olang_scope_close(ptr %s0)
  %t186 = load %"compiler/cond:Decision", ptr %l95
  store %"compiler/cond:Decision" %t186, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/cond:Decision", ptr %rv
  ret %"compiler/cond:Decision" %rr
}

define dso_local void @compiler_2fnames_2ecompiler_2fnames_3aResolver_2eexpr(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca %"compiler/source:Span"
  %l3 = alloca i32
  %l4 = alloca ptr
  %l5 = alloca ptr
  %l6 = alloca ptr
  %l7 = alloca ptr
  %l8 = alloca ptr
  %l9 = alloca { i64, ptr }
  %l10 = alloca i64
  %l11 = alloca i64
  %l13 = alloca ptr
  %l14 = alloca ptr
  %l15 = alloca ptr
  %l16 = alloca ptr
  %l17 = alloca ptr
  %l18 = alloca ptr
  %l19 = alloca { i64, ptr }
  %l20 = alloca { i64, ptr }
  %l21 = alloca i64
  %l22 = alloca i64
  %l24 = alloca ptr
  %l25 = alloca { i64, ptr }
  %l26 = alloca { i64, ptr }
  %l27 = alloca i64
  %l28 = alloca i64
  %l30 = alloca %"compiler/source:Span"
  %l31 = alloca ptr
  %l32 = alloca i32
  %l33 = alloca ptr
  %l34 = alloca { i64, ptr }
  %l35 = alloca { i64, ptr }
  %l36 = alloca i64
  %l37 = alloca i64
  %l39 = alloca ptr
  %l40 = alloca ptr
  %l41 = alloca ptr
  %l42 = alloca ptr
  %l43 = alloca { i64, ptr }
  %l44 = alloca { i64, ptr }
  %l45 = alloca i64
  %l46 = alloca i64
  %l48 = alloca { i64, ptr }
  %l49 = alloca { i64, ptr }
  %l50 = alloca i64
  %l51 = alloca i64
  %l53 = alloca %"compiler/source:Span"
  %l54 = alloca ptr
  %l55 = alloca i64
  %l56 = alloca ptr
  %l57 = alloca { i64, ptr }
  %l58 = alloca ptr
  %l59 = alloca i1
  %l60 = alloca i64
  %l61 = alloca ptr
  %l64 = alloca ptr
  %l65 = alloca i1
  %l75 = alloca ptr
  %l76 = alloca i1
  %l81 = alloca ptr
  %l82 = alloca i1
  %l87 = alloca ptr
  %l88 = alloca i1
  %l93 = alloca ptr
  %l94 = alloca i1
  %l99 = alloca ptr
  %l100 = alloca i1
  %l108 = alloca ptr
  %l109 = alloca i1
  %l116 = alloca ptr
  %l117 = alloca i1
  %l124 = alloca ptr
  %l125 = alloca i1
  %l132 = alloca ptr
  %l133 = alloca i1
  %l146 = alloca ptr
  %l147 = alloca i1
  %l160 = alloca { i64, ptr }
  %l168 = alloca ptr
  %l169 = alloca i1
  %l187 = alloca ptr
  %l188 = alloca i1
  %l195 = alloca ptr
  %l196 = alloca i1
  %l209 = alloca ptr
  %l210 = alloca i1
  %l227 = alloca { i64, ptr }
  %l235 = alloca ptr
  %l236 = alloca i1
  %l253 = alloca { i64, ptr }
  %l261 = alloca ptr
  %l262 = alloca i1
  %l275 = alloca ptr
  %l276 = alloca i1
  %l293 = alloca { i64, ptr }
  %l301 = alloca ptr
  %l302 = alloca i1
  %l318 = alloca ptr
  %l319 = alloca i1
  %l339 = alloca { i64, ptr }
  %l347 = alloca ptr
  %l348 = alloca i1
  %l353 = alloca ptr
  %l354 = alloca i1
  %l359 = alloca ptr
  %l360 = alloca i1
  %l372 = alloca { i64, ptr }
  %l380 = alloca ptr
  %l381 = alloca i1
  %l400 = alloca i64
  %l416 = alloca ptr
  %l417 = alloca i1
  %l429 = alloca ptr
  %l430 = alloca i1
  %l439 = alloca i64
  %l459 = alloca ptr
  %l460 = alloca i1
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
  store ptr %t5, ptr %l64, !tbaa !29
  store i1 false, ptr %l65, !tbaa !21
  %t6 = load ptr, ptr %l64, !tbaa !29
  %t7 = icmp ne ptr %t6, null
  br i1 %t7, label %bb4, label %bb5
bb4:
  %t9 = load ptr, ptr %l64, !tbaa !29
  %t10 = load i64, ptr %t9, !range !{i64 0, i64 30}
  %t12 = icmp eq i64 %t10, 0
  store i1 %t12, ptr %l65, !tbaa !21
  br label %bb5
bb5:
  %t13 = load i1, ptr %l65, !tbaa !21
  br i1 %t13, label %bb6, label %bb7
bb6:
  %t14 = load ptr, ptr %l1, !tbaa !29
  %t16 = getelementptr { i64, [4 x i64] }, ptr %t14, i32 0, i32 1
  %t17 = getelementptr { %"compiler/source:Span", i32 }, ptr %t16, i32 0, i32 0
  %t18 = load %"compiler/source:Span", ptr %t17
  store %"compiler/source:Span" %t18, ptr %l2
  %t20 = load ptr, ptr %l1, !tbaa !29
  %t22 = getelementptr { i64, [4 x i64] }, ptr %t20, i32 0, i32 1
  %t23 = getelementptr { %"compiler/source:Span", i32 }, ptr %t22, i32 0, i32 1
  %t24 = load i32, ptr %t23
  store i32 %t24, ptr %l3, !tbaa !23
  br label %bb8
bb7:
  br label %bb10
bb8:
  %t26 = load ptr, ptr %l0, !tbaa !29
  %t27 = load %"compiler/source:Span", ptr %l2
  %t28 = load i32, ptr %l3, !tbaa !23
  call void @compiler_2fnames_2ecompiler_2fnames_3aResolver_2ename(ptr %v0, ptr %t26, %"compiler/source:Span" %t27, i32 %t28)
  br label %bb9
bb9:
  br label %bb237
bb10:
  %t32 = load ptr, ptr %l1, !tbaa !29
  store ptr %t32, ptr %l75, !tbaa !29
  store i1 false, ptr %l76, !tbaa !21
  %t33 = load ptr, ptr %l75, !tbaa !29
  %t34 = icmp ne ptr %t33, null
  br i1 %t34, label %bb11, label %bb12
bb11:
  %t36 = load ptr, ptr %l75, !tbaa !29
  %t37 = load i64, ptr %t36, !range !{i64 0, i64 30}
  %t39 = icmp eq i64 %t37, 2
  store i1 %t39, ptr %l76, !tbaa !21
  br label %bb12
bb12:
  %t40 = load i1, ptr %l76, !tbaa !21
  br i1 %t40, label %bb13, label %bb14
bb13:
  %t41 = load ptr, ptr %l1, !tbaa !29
  %t43 = getelementptr { i64, [4 x i64] }, ptr %t41, i32 0, i32 1
  %t44 = getelementptr { %"compiler/source:Span", ptr }, ptr %t43, i32 0, i32 1
  %t45 = load ptr, ptr %t44
  store ptr %t45, ptr %l4, !tbaa !29
  br label %bb31
bb14:
  %t47 = load ptr, ptr %l1, !tbaa !29
  store ptr %t47, ptr %l81, !tbaa !29
  store i1 false, ptr %l82, !tbaa !21
  %t48 = load ptr, ptr %l81, !tbaa !29
  %t49 = icmp ne ptr %t48, null
  br i1 %t49, label %bb15, label %bb16
bb15:
  %t51 = load ptr, ptr %l81, !tbaa !29
  %t52 = load i64, ptr %t51, !range !{i64 0, i64 30}
  %t54 = icmp eq i64 %t52, 26
  store i1 %t54, ptr %l82, !tbaa !21
  br label %bb16
bb16:
  %t55 = load i1, ptr %l82, !tbaa !21
  br i1 %t55, label %bb17, label %bb18
bb17:
  %t56 = load ptr, ptr %l1, !tbaa !29
  %t58 = getelementptr { i64, [4 x i64] }, ptr %t56, i32 0, i32 1
  %t59 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t58, i32 0, i32 2
  %t60 = load ptr, ptr %t59
  store ptr %t60, ptr %l4, !tbaa !29
  br label %bb31
bb18:
  %t62 = load ptr, ptr %l1, !tbaa !29
  store ptr %t62, ptr %l87, !tbaa !29
  store i1 false, ptr %l88, !tbaa !21
  %t63 = load ptr, ptr %l87, !tbaa !29
  %t64 = icmp ne ptr %t63, null
  br i1 %t64, label %bb19, label %bb20
bb19:
  %t66 = load ptr, ptr %l87, !tbaa !29
  %t67 = load i64, ptr %t66, !range !{i64 0, i64 30}
  %t69 = icmp eq i64 %t67, 28
  store i1 %t69, ptr %l88, !tbaa !21
  br label %bb20
bb20:
  %t70 = load i1, ptr %l88, !tbaa !21
  br i1 %t70, label %bb21, label %bb22
bb21:
  %t71 = load ptr, ptr %l1, !tbaa !29
  %t73 = getelementptr { i64, [4 x i64] }, ptr %t71, i32 0, i32 1
  %t74 = getelementptr { %"compiler/source:Span", ptr }, ptr %t73, i32 0, i32 1
  %t75 = load ptr, ptr %t74
  store ptr %t75, ptr %l4, !tbaa !29
  br label %bb31
bb22:
  %t77 = load ptr, ptr %l1, !tbaa !29
  store ptr %t77, ptr %l93, !tbaa !29
  store i1 false, ptr %l94, !tbaa !21
  %t78 = load ptr, ptr %l93, !tbaa !29
  %t79 = icmp ne ptr %t78, null
  br i1 %t79, label %bb23, label %bb24
bb23:
  %t81 = load ptr, ptr %l93, !tbaa !29
  %t82 = load i64, ptr %t81, !range !{i64 0, i64 30}
  %t84 = icmp eq i64 %t82, 3
  store i1 %t84, ptr %l94, !tbaa !21
  br label %bb24
bb24:
  %t85 = load i1, ptr %l94, !tbaa !21
  br i1 %t85, label %bb25, label %bb26
bb25:
  %t86 = load ptr, ptr %l1, !tbaa !29
  %t88 = getelementptr { i64, [4 x i64] }, ptr %t86, i32 0, i32 1
  %t89 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t88, i32 0, i32 2
  %t90 = load ptr, ptr %t89
  store ptr %t90, ptr %l4, !tbaa !29
  br label %bb31
bb26:
  %t92 = load ptr, ptr %l1, !tbaa !29
  store ptr %t92, ptr %l99, !tbaa !29
  store i1 false, ptr %l100, !tbaa !21
  %t93 = load ptr, ptr %l99, !tbaa !29
  %t94 = icmp ne ptr %t93, null
  br i1 %t94, label %bb27, label %bb28
bb27:
  %t96 = load ptr, ptr %l99, !tbaa !29
  %t97 = load i64, ptr %t96, !range !{i64 0, i64 30}
  %t99 = icmp eq i64 %t97, 4
  store i1 %t99, ptr %l100, !tbaa !21
  br label %bb28
bb28:
  %t100 = load i1, ptr %l100, !tbaa !21
  br i1 %t100, label %bb29, label %bb30
bb29:
  %t101 = load ptr, ptr %l1, !tbaa !29
  %t103 = getelementptr { i64, [4 x i64] }, ptr %t101, i32 0, i32 1
  %t104 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t103, i32 0, i32 2
  %t105 = load ptr, ptr %t104
  store ptr %t105, ptr %l4, !tbaa !29
  br label %bb31
bb30:
  br label %bb33
bb31:
  %t107 = load ptr, ptr %l0, !tbaa !29
  %t108 = load ptr, ptr %l4, !tbaa !29
  call void @compiler_2fnames_2ecompiler_2fnames_3aResolver_2eexpr(ptr %v0, ptr %v1, ptr %t107, ptr %t108)
  br label %bb32
bb32:
  br label %bb237
bb33:
  %t112 = load ptr, ptr %l1, !tbaa !29
  store ptr %t112, ptr %l108, !tbaa !29
  store i1 false, ptr %l109, !tbaa !21
  %t113 = load ptr, ptr %l108, !tbaa !29
  %t114 = icmp ne ptr %t113, null
  br i1 %t114, label %bb34, label %bb35
bb34:
  %t116 = load ptr, ptr %l108, !tbaa !29
  %t117 = load i64, ptr %t116, !range !{i64 0, i64 30}
  %t119 = icmp eq i64 %t117, 27
  store i1 %t119, ptr %l109, !tbaa !21
  br label %bb35
bb35:
  %t120 = load i1, ptr %l109, !tbaa !21
  br i1 %t120, label %bb36, label %bb37
bb36:
  %t121 = load ptr, ptr %l1, !tbaa !29
  %t123 = getelementptr { i64, [4 x i64] }, ptr %t121, i32 0, i32 1
  %t124 = getelementptr { %"compiler/source:Span", ptr }, ptr %t123, i32 0, i32 1
  %t125 = load ptr, ptr %t124
  store ptr %t125, ptr %l5, !tbaa !29
  br label %bb38
bb37:
  br label %bb40
bb38:
  %t127 = load ptr, ptr %l0, !tbaa !29
  %t128 = load ptr, ptr %l5, !tbaa !29
  call void @compiler_2fnames_2ecompiler_2fnames_3aResolver_2eexpr(ptr %v0, ptr %v1, ptr %t127, ptr %t128)
  br label %bb39
bb39:
  br label %bb237
bb40:
  %t131 = load ptr, ptr %l1, !tbaa !29
  store ptr %t131, ptr %l116, !tbaa !29
  store i1 false, ptr %l117, !tbaa !21
  %t132 = load ptr, ptr %l116, !tbaa !29
  %t133 = icmp ne ptr %t132, null
  br i1 %t133, label %bb41, label %bb42
bb41:
  %t135 = load ptr, ptr %l116, !tbaa !29
  %t136 = load i64, ptr %t135, !range !{i64 0, i64 30}
  %t138 = icmp eq i64 %t136, 5
  store i1 %t138, ptr %l117, !tbaa !21
  br label %bb42
bb42:
  %t139 = load i1, ptr %l117, !tbaa !21
  br i1 %t139, label %bb43, label %bb44
bb43:
  %t140 = load ptr, ptr %l1, !tbaa !29
  %t142 = getelementptr { i64, [4 x i64] }, ptr %t140, i32 0, i32 1
  %t143 = getelementptr { %"compiler/source:Span", i32, ptr, ptr }, ptr %t142, i32 0, i32 2
  %t144 = load ptr, ptr %t143
  store ptr %t144, ptr %l6, !tbaa !29
  %t146 = load ptr, ptr %l1, !tbaa !29
  %t148 = getelementptr { i64, [4 x i64] }, ptr %t146, i32 0, i32 1
  %t149 = getelementptr { %"compiler/source:Span", i32, ptr, ptr }, ptr %t148, i32 0, i32 3
  %t150 = load ptr, ptr %t149
  store ptr %t150, ptr %l7, !tbaa !29
  br label %bb53
bb44:
  %t152 = load ptr, ptr %l1, !tbaa !29
  store ptr %t152, ptr %l124, !tbaa !29
  store i1 false, ptr %l125, !tbaa !21
  %t153 = load ptr, ptr %l124, !tbaa !29
  %t154 = icmp ne ptr %t153, null
  br i1 %t154, label %bb45, label %bb46
bb45:
  %t156 = load ptr, ptr %l124, !tbaa !29
  %t157 = load i64, ptr %t156, !range !{i64 0, i64 30}
  %t159 = icmp eq i64 %t157, 6
  store i1 %t159, ptr %l125, !tbaa !21
  br label %bb46
bb46:
  %t160 = load i1, ptr %l125, !tbaa !21
  br i1 %t160, label %bb47, label %bb48
bb47:
  %t161 = load ptr, ptr %l1, !tbaa !29
  %t163 = getelementptr { i64, [4 x i64] }, ptr %t161, i32 0, i32 1
  %t164 = getelementptr { %"compiler/source:Span", ptr, ptr }, ptr %t163, i32 0, i32 1
  %t165 = load ptr, ptr %t164
  store ptr %t165, ptr %l6, !tbaa !29
  %t167 = load ptr, ptr %l1, !tbaa !29
  %t169 = getelementptr { i64, [4 x i64] }, ptr %t167, i32 0, i32 1
  %t170 = getelementptr { %"compiler/source:Span", ptr, ptr }, ptr %t169, i32 0, i32 2
  %t171 = load ptr, ptr %t170
  store ptr %t171, ptr %l7, !tbaa !29
  br label %bb53
bb48:
  %t173 = load ptr, ptr %l1, !tbaa !29
  store ptr %t173, ptr %l132, !tbaa !29
  store i1 false, ptr %l133, !tbaa !21
  %t174 = load ptr, ptr %l132, !tbaa !29
  %t175 = icmp ne ptr %t174, null
  br i1 %t175, label %bb49, label %bb50
bb49:
  %t177 = load ptr, ptr %l132, !tbaa !29
  %t178 = load i64, ptr %t177, !range !{i64 0, i64 30}
  %t180 = icmp eq i64 %t178, 10
  store i1 %t180, ptr %l133, !tbaa !21
  br label %bb50
bb50:
  %t181 = load i1, ptr %l133, !tbaa !21
  br i1 %t181, label %bb51, label %bb52
bb51:
  %t182 = load ptr, ptr %l1, !tbaa !29
  %t184 = getelementptr { i64, [4 x i64] }, ptr %t182, i32 0, i32 1
  %t185 = getelementptr { %"compiler/source:Span", ptr, ptr, i1 }, ptr %t184, i32 0, i32 1
  %t186 = load ptr, ptr %t185
  store ptr %t186, ptr %l6, !tbaa !29
  %t188 = load ptr, ptr %l1, !tbaa !29
  %t190 = getelementptr { i64, [4 x i64] }, ptr %t188, i32 0, i32 1
  %t191 = getelementptr { %"compiler/source:Span", ptr, ptr, i1 }, ptr %t190, i32 0, i32 2
  %t192 = load ptr, ptr %t191
  store ptr %t192, ptr %l7, !tbaa !29
  br label %bb53
bb52:
  br label %bb56
bb53:
  %t194 = load ptr, ptr %l0, !tbaa !29
  %t195 = load ptr, ptr %l6, !tbaa !29
  call void @compiler_2fnames_2ecompiler_2fnames_3aResolver_2eexpr(ptr %v0, ptr %v1, ptr %t194, ptr %t195)
  br label %bb54
bb54:
  %t199 = load ptr, ptr %l0, !tbaa !29
  %t200 = load ptr, ptr %l7, !tbaa !29
  call void @compiler_2fnames_2ecompiler_2fnames_3aResolver_2eexpr(ptr %v0, ptr %v1, ptr %t199, ptr %t200)
  br label %bb55
bb55:
  br label %bb237
bb56:
  %t204 = load ptr, ptr %l1, !tbaa !29
  store ptr %t204, ptr %l146, !tbaa !29
  store i1 false, ptr %l147, !tbaa !21
  %t205 = load ptr, ptr %l146, !tbaa !29
  %t206 = icmp ne ptr %t205, null
  br i1 %t206, label %bb57, label %bb58
bb57:
  %t208 = load ptr, ptr %l146, !tbaa !29
  %t209 = load i64, ptr %t208, !range !{i64 0, i64 30}
  %t211 = icmp eq i64 %t209, 7
  store i1 %t211, ptr %l147, !tbaa !21
  br label %bb58
bb58:
  %t212 = load i1, ptr %l147, !tbaa !21
  br i1 %t212, label %bb59, label %bb60
bb59:
  %t213 = load ptr, ptr %l1, !tbaa !29
  %t215 = getelementptr { i64, [4 x i64] }, ptr %t213, i32 0, i32 1
  %t216 = getelementptr { %"compiler/source:Span", ptr }, ptr %t215, i32 0, i32 1
  %t217 = load ptr, ptr %t216
  store ptr %t217, ptr %l8, !tbaa !29
  br label %bb61
bb60:
  br label %bb69
bb61:
  %t219 = load ptr, ptr %l8, !tbaa !29
  %t221 = getelementptr %"compiler/ast:Chain", ptr %t219, i32 0, i32 1
  %t222 = load { i64, ptr }, ptr %t221, !tbaa !27
  store { i64, ptr } %t222, ptr %l9, !tbaa !27
  store i64 0, ptr %l10, !tbaa !24
  %t224 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t226 = extractvalue { i64, ptr } %t224, 0
  store i64 %t226, ptr %l11, !tbaa !24
  br label %bb62
bb62:
  %t228 = load i64, ptr %l10, !tbaa !24
  %t229 = load i64, ptr %l11, !tbaa !24
  %t232 = icmp slt i64 %t228, %t229
  %t234 = xor i1 %t232, true
  br i1 %t234, label %bb63, label %bb64
bb63:
  br label %bb68
bb64:
  br label %bb65
bb65:
  %t236 = load { i64, ptr }, ptr %l9, !tbaa !27
  store { i64, ptr } %t236, ptr %l160, !tbaa !27
  %t237 = load i64, ptr %l10, !tbaa !24
  %t239 = getelementptr { i64, ptr }, ptr %l160, i32 0, i32 1
  %t240 = load ptr, ptr %t239, !tbaa !27
  %t241 = getelementptr ptr, ptr %t240, i64 %t237
  %t242 = load ptr, ptr %t241, !tbaa !39
  %t244 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2fnames_2ecompiler_2fnames_3aResolver_2eexpr(ptr %v0, ptr %v1, ptr %t244, ptr %t242)
  br label %bb66
bb66:
  br label %bb67
bb67:
  %t249 = load i64, ptr %l10, !tbaa !24
  %t251 = add i64 %t249, 1
  store i64 %t251, ptr %l10, !tbaa !24
  br label %bb62
bb68:
  br label %bb237
bb69:
  %t253 = load ptr, ptr %l1, !tbaa !29
  store ptr %t253, ptr %l168, !tbaa !29
  store i1 false, ptr %l169, !tbaa !21
  %t254 = load ptr, ptr %l168, !tbaa !29
  %t255 = icmp ne ptr %t254, null
  br i1 %t255, label %bb70, label %bb71
bb70:
  %t257 = load ptr, ptr %l168, !tbaa !29
  %t258 = load i64, ptr %t257, !range !{i64 0, i64 30}
  %t260 = icmp eq i64 %t258, 8
  store i1 %t260, ptr %l169, !tbaa !21
  br label %bb71
bb71:
  %t261 = load i1, ptr %l169, !tbaa !21
  br i1 %t261, label %bb72, label %bb73
bb72:
  %t262 = load ptr, ptr %l1, !tbaa !29
  %t264 = getelementptr { i64, [4 x i64] }, ptr %t262, i32 0, i32 1
  %t265 = getelementptr { %"compiler/source:Span", ptr, ptr, ptr }, ptr %t264, i32 0, i32 1
  %t266 = load ptr, ptr %t265
  store ptr %t266, ptr %l13, !tbaa !29
  %t268 = load ptr, ptr %l1, !tbaa !29
  %t270 = getelementptr { i64, [4 x i64] }, ptr %t268, i32 0, i32 1
  %t271 = getelementptr { %"compiler/source:Span", ptr, ptr, ptr }, ptr %t270, i32 0, i32 2
  %t272 = load ptr, ptr %t271
  store ptr %t272, ptr %l14, !tbaa !29
  %t274 = load ptr, ptr %l1, !tbaa !29
  %t276 = getelementptr { i64, [4 x i64] }, ptr %t274, i32 0, i32 1
  %t277 = getelementptr { %"compiler/source:Span", ptr, ptr, ptr }, ptr %t276, i32 0, i32 3
  %t278 = load ptr, ptr %t277
  store ptr %t278, ptr %l15, !tbaa !29
  br label %bb74
bb73:
  br label %bb78
bb74:
  %t280 = load ptr, ptr %l0, !tbaa !29
  %t281 = load ptr, ptr %l13, !tbaa !29
  call void @compiler_2fnames_2ecompiler_2fnames_3aResolver_2eexpr(ptr %v0, ptr %v1, ptr %t280, ptr %t281)
  br label %bb75
bb75:
  %t285 = load ptr, ptr %l0, !tbaa !29
  %t286 = load ptr, ptr %l14, !tbaa !29
  call void @compiler_2fnames_2ecompiler_2fnames_3aResolver_2eexpr(ptr %v0, ptr %v1, ptr %t285, ptr %t286)
  br label %bb76
bb76:
  %t290 = load ptr, ptr %l0, !tbaa !29
  %t291 = load ptr, ptr %l15, !tbaa !29
  call void @compiler_2fnames_2ecompiler_2fnames_3aResolver_2eexpr(ptr %v0, ptr %v1, ptr %t290, ptr %t291)
  br label %bb77
bb77:
  br label %bb237
bb78:
  %t295 = load ptr, ptr %l1, !tbaa !29
  store ptr %t295, ptr %l187, !tbaa !29
  store i1 false, ptr %l188, !tbaa !21
  %t296 = load ptr, ptr %l187, !tbaa !29
  %t297 = icmp ne ptr %t296, null
  br i1 %t297, label %bb79, label %bb80
bb79:
  %t299 = load ptr, ptr %l187, !tbaa !29
  %t300 = load i64, ptr %t299, !range !{i64 0, i64 30}
  %t302 = icmp eq i64 %t300, 9
  store i1 %t302, ptr %l188, !tbaa !21
  br label %bb80
bb80:
  %t303 = load i1, ptr %l188, !tbaa !21
  br i1 %t303, label %bb81, label %bb82
bb81:
  %t304 = load ptr, ptr %l1, !tbaa !29
  %t306 = getelementptr { i64, [4 x i64] }, ptr %t304, i32 0, i32 1
  %t307 = getelementptr { %"compiler/source:Span", ptr, ptr, i1 }, ptr %t306, i32 0, i32 1
  %t308 = load ptr, ptr %t307
  store ptr %t308, ptr %l16, !tbaa !29
  %t310 = load ptr, ptr %l1, !tbaa !29
  %t312 = getelementptr { i64, [4 x i64] }, ptr %t310, i32 0, i32 1
  %t313 = getelementptr { %"compiler/source:Span", ptr, ptr, i1 }, ptr %t312, i32 0, i32 2
  %t314 = load ptr, ptr %t313
  store ptr %t314, ptr %l17, !tbaa !29
  br label %bb87
bb82:
  %t316 = load ptr, ptr %l1, !tbaa !29
  store ptr %t316, ptr %l195, !tbaa !29
  store i1 false, ptr %l196, !tbaa !21
  %t317 = load ptr, ptr %l195, !tbaa !29
  %t318 = icmp ne ptr %t317, null
  br i1 %t318, label %bb83, label %bb84
bb83:
  %t320 = load ptr, ptr %l195, !tbaa !29
  %t321 = load i64, ptr %t320, !range !{i64 0, i64 30}
  %t323 = icmp eq i64 %t321, 11
  store i1 %t323, ptr %l196, !tbaa !21
  br label %bb84
bb84:
  %t324 = load i1, ptr %l196, !tbaa !21
  br i1 %t324, label %bb85, label %bb86
bb85:
  %t325 = load ptr, ptr %l1, !tbaa !29
  %t327 = getelementptr { i64, [4 x i64] }, ptr %t325, i32 0, i32 1
  %t328 = getelementptr { %"compiler/source:Span", ptr, ptr }, ptr %t327, i32 0, i32 1
  %t329 = load ptr, ptr %t328
  store ptr %t329, ptr %l16, !tbaa !29
  %t331 = load ptr, ptr %l1, !tbaa !29
  %t333 = getelementptr { i64, [4 x i64] }, ptr %t331, i32 0, i32 1
  %t334 = getelementptr { %"compiler/source:Span", ptr, ptr }, ptr %t333, i32 0, i32 2
  %t335 = load ptr, ptr %t334
  store ptr %t335, ptr %l17, !tbaa !29
  br label %bb87
bb86:
  br label %bb90
bb87:
  %t337 = load ptr, ptr %l0, !tbaa !29
  %t338 = load ptr, ptr %l16, !tbaa !29
  call void @compiler_2fnames_2ecompiler_2fnames_3aResolver_2eexpr(ptr %v0, ptr %v1, ptr %t337, ptr %t338)
  br label %bb88
bb88:
  %t342 = load ptr, ptr %l0, !tbaa !29
  %t343 = load ptr, ptr %l17, !tbaa !29
  call void @compiler_2fnames_2ecompiler_2fnames_3aResolver_2etypeRef(ptr %v0, ptr %v1, ptr %t342, ptr %t343)
  br label %bb89
bb89:
  br label %bb237
bb90:
  %t347 = load ptr, ptr %l1, !tbaa !29
  store ptr %t347, ptr %l209, !tbaa !29
  store i1 false, ptr %l210, !tbaa !21
  %t348 = load ptr, ptr %l209, !tbaa !29
  %t349 = icmp ne ptr %t348, null
  br i1 %t349, label %bb91, label %bb92
bb91:
  %t351 = load ptr, ptr %l209, !tbaa !29
  %t352 = load i64, ptr %t351, !range !{i64 0, i64 30}
  %t354 = icmp eq i64 %t352, 12
  store i1 %t354, ptr %l210, !tbaa !21
  br label %bb92
bb92:
  %t355 = load i1, ptr %l210, !tbaa !21
  br i1 %t355, label %bb93, label %bb94
bb93:
  %t356 = load ptr, ptr %l1, !tbaa !29
  %t358 = getelementptr { i64, [4 x i64] }, ptr %t356, i32 0, i32 1
  %t359 = getelementptr { %"compiler/source:Span", ptr, { i64, ptr } }, ptr %t358, i32 0, i32 1
  %t360 = load ptr, ptr %t359
  store ptr %t360, ptr %l18, !tbaa !29
  %t362 = load ptr, ptr %l1, !tbaa !29
  %t364 = getelementptr { i64, [4 x i64] }, ptr %t362, i32 0, i32 1
  %t365 = getelementptr { %"compiler/source:Span", ptr, { i64, ptr } }, ptr %t364, i32 0, i32 2
  %t366 = load { i64, ptr }, ptr %t365
  store { i64, ptr } %t366, ptr %l19, !tbaa !27
  br label %bb95
bb94:
  br label %bb104
bb95:
  %t368 = load ptr, ptr %l0, !tbaa !29
  %t369 = load ptr, ptr %l18, !tbaa !29
  call void @compiler_2fnames_2ecompiler_2fnames_3aResolver_2eexpr(ptr %v0, ptr %v1, ptr %t368, ptr %t369)
  br label %bb96
bb96:
  %t373 = load { i64, ptr }, ptr %l19, !tbaa !27
  store { i64, ptr } %t373, ptr %l20, !tbaa !27
  store i64 0, ptr %l21, !tbaa !24
  %t375 = load { i64, ptr }, ptr %l20, !tbaa !27
  %t377 = extractvalue { i64, ptr } %t375, 0
  store i64 %t377, ptr %l22, !tbaa !24
  br label %bb97
bb97:
  %t379 = load i64, ptr %l21, !tbaa !24
  %t380 = load i64, ptr %l22, !tbaa !24
  %t383 = icmp slt i64 %t379, %t380
  %t385 = xor i1 %t383, true
  br i1 %t385, label %bb98, label %bb99
bb98:
  br label %bb103
bb99:
  br label %bb100
bb100:
  %t387 = load { i64, ptr }, ptr %l20, !tbaa !27
  store { i64, ptr } %t387, ptr %l227, !tbaa !27
  %t388 = load i64, ptr %l21, !tbaa !24
  %t390 = getelementptr { i64, ptr }, ptr %l227, i32 0, i32 1
  %t391 = load ptr, ptr %t390, !tbaa !27
  %t392 = getelementptr ptr, ptr %t391, i64 %t388
  %t393 = load ptr, ptr %t392, !tbaa !39
  %t395 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2fnames_2ecompiler_2fnames_3aResolver_2eexpr(ptr %v0, ptr %v1, ptr %t395, ptr %t393)
  br label %bb101
bb101:
  br label %bb102
bb102:
  %t400 = load i64, ptr %l21, !tbaa !24
  %t402 = add i64 %t400, 1
  store i64 %t402, ptr %l21, !tbaa !24
  br label %bb97
bb103:
  br label %bb237
bb104:
  %t404 = load ptr, ptr %l1, !tbaa !29
  store ptr %t404, ptr %l235, !tbaa !29
  store i1 false, ptr %l236, !tbaa !21
  %t405 = load ptr, ptr %l235, !tbaa !29
  %t406 = icmp ne ptr %t405, null
  br i1 %t406, label %bb105, label %bb106
bb105:
  %t408 = load ptr, ptr %l235, !tbaa !29
  %t409 = load i64, ptr %t408, !range !{i64 0, i64 30}
  %t411 = icmp eq i64 %t409, 13
  store i1 %t411, ptr %l236, !tbaa !21
  br label %bb106
bb106:
  %t412 = load i1, ptr %l236, !tbaa !21
  br i1 %t412, label %bb107, label %bb108
bb107:
  %t413 = load ptr, ptr %l1, !tbaa !29
  %t415 = getelementptr { i64, [4 x i64] }, ptr %t413, i32 0, i32 1
  %t416 = getelementptr { %"compiler/source:Span", ptr, { i64, ptr } }, ptr %t415, i32 0, i32 1
  %t417 = load ptr, ptr %t416
  store ptr %t417, ptr %l24, !tbaa !29
  %t419 = load ptr, ptr %l1, !tbaa !29
  %t421 = getelementptr { i64, [4 x i64] }, ptr %t419, i32 0, i32 1
  %t422 = getelementptr { %"compiler/source:Span", ptr, { i64, ptr } }, ptr %t421, i32 0, i32 2
  %t423 = load { i64, ptr }, ptr %t422
  store { i64, ptr } %t423, ptr %l25, !tbaa !27
  br label %bb109
bb108:
  br label %bb118
bb109:
  %t425 = load ptr, ptr %l0, !tbaa !29
  %t426 = load ptr, ptr %l24, !tbaa !29
  call void @compiler_2fnames_2ecompiler_2fnames_3aResolver_2eexpr(ptr %v0, ptr %v1, ptr %t425, ptr %t426)
  br label %bb110
bb110:
  %t430 = load { i64, ptr }, ptr %l25, !tbaa !27
  store { i64, ptr } %t430, ptr %l26, !tbaa !27
  store i64 0, ptr %l27, !tbaa !24
  %t432 = load { i64, ptr }, ptr %l26, !tbaa !27
  %t434 = extractvalue { i64, ptr } %t432, 0
  store i64 %t434, ptr %l28, !tbaa !24
  br label %bb111
bb111:
  %t436 = load i64, ptr %l27, !tbaa !24
  %t437 = load i64, ptr %l28, !tbaa !24
  %t440 = icmp slt i64 %t436, %t437
  %t442 = xor i1 %t440, true
  br i1 %t442, label %bb112, label %bb113
bb112:
  br label %bb117
bb113:
  br label %bb114
bb114:
  %t444 = load { i64, ptr }, ptr %l26, !tbaa !27
  store { i64, ptr } %t444, ptr %l253, !tbaa !27
  %t445 = load i64, ptr %l27, !tbaa !24
  %t447 = getelementptr { i64, ptr }, ptr %l253, i32 0, i32 1
  %t448 = load ptr, ptr %t447, !tbaa !27
  %t449 = getelementptr ptr, ptr %t448, i64 %t445
  %t450 = load ptr, ptr %t449, !tbaa !39
  %t452 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2fnames_2ecompiler_2fnames_3aResolver_2etypeRef(ptr %v0, ptr %v1, ptr %t452, ptr %t450)
  br label %bb115
bb115:
  br label %bb116
bb116:
  %t457 = load i64, ptr %l27, !tbaa !24
  %t459 = add i64 %t457, 1
  store i64 %t459, ptr %l27, !tbaa !24
  br label %bb111
bb117:
  br label %bb237
bb118:
  %t461 = load ptr, ptr %l1, !tbaa !29
  store ptr %t461, ptr %l261, !tbaa !29
  store i1 false, ptr %l262, !tbaa !21
  %t462 = load ptr, ptr %l261, !tbaa !29
  %t463 = icmp ne ptr %t462, null
  br i1 %t463, label %bb119, label %bb120
bb119:
  %t465 = load ptr, ptr %l261, !tbaa !29
  %t466 = load i64, ptr %t465, !range !{i64 0, i64 30}
  %t468 = icmp eq i64 %t466, 14
  store i1 %t468, ptr %l262, !tbaa !21
  br label %bb120
bb120:
  %t469 = load i1, ptr %l262, !tbaa !21
  br i1 %t469, label %bb121, label %bb122
bb121:
  %t470 = load ptr, ptr %l1, !tbaa !29
  %t472 = getelementptr { i64, [4 x i64] }, ptr %t470, i32 0, i32 1
  %t473 = getelementptr { %"compiler/source:Span", ptr, i32 }, ptr %t472, i32 0, i32 0
  %t474 = load %"compiler/source:Span", ptr %t473
  store %"compiler/source:Span" %t474, ptr %l30
  %t476 = load ptr, ptr %l1, !tbaa !29
  %t478 = getelementptr { i64, [4 x i64] }, ptr %t476, i32 0, i32 1
  %t479 = getelementptr { %"compiler/source:Span", ptr, i32 }, ptr %t478, i32 0, i32 1
  %t480 = load ptr, ptr %t479
  store ptr %t480, ptr %l31, !tbaa !29
  %t482 = load ptr, ptr %l1, !tbaa !29
  %t484 = getelementptr { i64, [4 x i64] }, ptr %t482, i32 0, i32 1
  %t485 = getelementptr { %"compiler/source:Span", ptr, i32 }, ptr %t484, i32 0, i32 2
  %t486 = load i32, ptr %t485
  store i32 %t486, ptr %l32, !tbaa !23
  br label %bb123
bb122:
  br label %bb125
bb123:
  %t488 = load ptr, ptr %l0, !tbaa !29
  %t489 = load %"compiler/source:Span", ptr %l30
  %t490 = load ptr, ptr %l31, !tbaa !29
  %t491 = load i32, ptr %l32, !tbaa !23
  call void @compiler_2fnames_2ecompiler_2fnames_3aResolver_2emember(ptr %v0, ptr %v1, ptr %t488, %"compiler/source:Span" %t489, ptr %t490, i32 %t491)
  br label %bb124
bb124:
  br label %bb237
bb125:
  %t496 = load ptr, ptr %l1, !tbaa !29
  store ptr %t496, ptr %l275, !tbaa !29
  store i1 false, ptr %l276, !tbaa !21
  %t497 = load ptr, ptr %l275, !tbaa !29
  %t498 = icmp ne ptr %t497, null
  br i1 %t498, label %bb126, label %bb127
bb126:
  %t500 = load ptr, ptr %l275, !tbaa !29
  %t501 = load i64, ptr %t500, !range !{i64 0, i64 30}
  %t503 = icmp eq i64 %t501, 15
  store i1 %t503, ptr %l276, !tbaa !21
  br label %bb127
bb127:
  %t504 = load i1, ptr %l276, !tbaa !21
  br i1 %t504, label %bb128, label %bb129
bb128:
  %t505 = load ptr, ptr %l1, !tbaa !29
  %t507 = getelementptr { i64, [4 x i64] }, ptr %t505, i32 0, i32 1
  %t508 = getelementptr { %"compiler/source:Span", ptr, { i64, ptr } }, ptr %t507, i32 0, i32 1
  %t509 = load ptr, ptr %t508
  store ptr %t509, ptr %l33, !tbaa !29
  %t511 = load ptr, ptr %l1, !tbaa !29
  %t513 = getelementptr { i64, [4 x i64] }, ptr %t511, i32 0, i32 1
  %t514 = getelementptr { %"compiler/source:Span", ptr, { i64, ptr } }, ptr %t513, i32 0, i32 2
  %t515 = load { i64, ptr }, ptr %t514
  store { i64, ptr } %t515, ptr %l34, !tbaa !27
  br label %bb130
bb129:
  br label %bb139
bb130:
  %t517 = load ptr, ptr %l0, !tbaa !29
  %t518 = load ptr, ptr %l33, !tbaa !29
  call void @compiler_2fnames_2ecompiler_2fnames_3aResolver_2eexpr(ptr %v0, ptr %v1, ptr %t517, ptr %t518)
  br label %bb131
bb131:
  %t522 = load { i64, ptr }, ptr %l34, !tbaa !27
  store { i64, ptr } %t522, ptr %l35, !tbaa !27
  store i64 0, ptr %l36, !tbaa !24
  %t524 = load { i64, ptr }, ptr %l35, !tbaa !27
  %t526 = extractvalue { i64, ptr } %t524, 0
  store i64 %t526, ptr %l37, !tbaa !24
  br label %bb132
bb132:
  %t528 = load i64, ptr %l36, !tbaa !24
  %t529 = load i64, ptr %l37, !tbaa !24
  %t532 = icmp slt i64 %t528, %t529
  %t534 = xor i1 %t532, true
  br i1 %t534, label %bb133, label %bb134
bb133:
  br label %bb138
bb134:
  br label %bb135
bb135:
  %t536 = load { i64, ptr }, ptr %l35, !tbaa !27
  store { i64, ptr } %t536, ptr %l293, !tbaa !27
  %t537 = load i64, ptr %l36, !tbaa !24
  %t539 = getelementptr { i64, ptr }, ptr %l293, i32 0, i32 1
  %t540 = load ptr, ptr %t539, !tbaa !27
  %t541 = getelementptr ptr, ptr %t540, i64 %t537
  %t542 = load ptr, ptr %t541, !tbaa !39
  %t544 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2fnames_2ecompiler_2fnames_3aResolver_2eexpr(ptr %v0, ptr %v1, ptr %t544, ptr %t542)
  br label %bb136
bb136:
  br label %bb137
bb137:
  %t549 = load i64, ptr %l36, !tbaa !24
  %t551 = add i64 %t549, 1
  store i64 %t551, ptr %l36, !tbaa !24
  br label %bb132
bb138:
  br label %bb237
bb139:
  %t553 = load ptr, ptr %l1, !tbaa !29
  store ptr %t553, ptr %l301, !tbaa !29
  store i1 false, ptr %l302, !tbaa !21
  %t554 = load ptr, ptr %l301, !tbaa !29
  %t555 = icmp ne ptr %t554, null
  br i1 %t555, label %bb140, label %bb141
bb140:
  %t557 = load ptr, ptr %l301, !tbaa !29
  %t558 = load i64, ptr %t557, !range !{i64 0, i64 30}
  %t560 = icmp eq i64 %t558, 16
  store i1 %t560, ptr %l302, !tbaa !21
  br label %bb141
bb141:
  %t561 = load i1, ptr %l302, !tbaa !21
  br i1 %t561, label %bb142, label %bb143
bb142:
  %t562 = load ptr, ptr %l1, !tbaa !29
  %t564 = getelementptr { i64, [4 x i64] }, ptr %t562, i32 0, i32 1
  %t565 = getelementptr { %"compiler/source:Span", ptr, ptr, ptr }, ptr %t564, i32 0, i32 1
  %t566 = load ptr, ptr %t565
  store ptr %t566, ptr %l39, !tbaa !29
  %t568 = load ptr, ptr %l1, !tbaa !29
  %t570 = getelementptr { i64, [4 x i64] }, ptr %t568, i32 0, i32 1
  %t571 = getelementptr { %"compiler/source:Span", ptr, ptr, ptr }, ptr %t570, i32 0, i32 2
  %t572 = load ptr, ptr %t571
  store ptr %t572, ptr %l40, !tbaa !29
  %t574 = load ptr, ptr %l1, !tbaa !29
  %t576 = getelementptr { i64, [4 x i64] }, ptr %t574, i32 0, i32 1
  %t577 = getelementptr { %"compiler/source:Span", ptr, ptr, ptr }, ptr %t576, i32 0, i32 3
  %t578 = load ptr, ptr %t577
  store ptr %t578, ptr %l41, !tbaa !29
  br label %bb144
bb143:
  br label %bb148
bb144:
  %t580 = load ptr, ptr %l0, !tbaa !29
  %t581 = load ptr, ptr %l39, !tbaa !29
  call void @compiler_2fnames_2ecompiler_2fnames_3aResolver_2eexpr(ptr %v0, ptr %v1, ptr %t580, ptr %t581)
  br label %bb145
bb145:
  %t585 = load ptr, ptr %l0, !tbaa !29
  %t586 = load ptr, ptr %l40, !tbaa !29
  call void @compiler_2fnames_2ecompiler_2fnames_3aResolver_2eexpr(ptr %v0, ptr %v1, ptr %t585, ptr %t586)
  br label %bb146
bb146:
  %t589 = load ptr, ptr %l0, !tbaa !29
  %t590 = load ptr, ptr %l41, !tbaa !29
  call void @compiler_2fnames_2ecompiler_2fnames_3aResolver_2eexpr(ptr %v0, ptr %v1, ptr %t589, ptr %t590)
  br label %bb147
bb147:
  br label %bb237
bb148:
  %t593 = load ptr, ptr %l1, !tbaa !29
  store ptr %t593, ptr %l318, !tbaa !29
  store i1 false, ptr %l319, !tbaa !21
  %t594 = load ptr, ptr %l318, !tbaa !29
  %t595 = icmp ne ptr %t594, null
  br i1 %t595, label %bb149, label %bb150
bb149:
  %t597 = load ptr, ptr %l318, !tbaa !29
  %t598 = load i64, ptr %t597, !range !{i64 0, i64 30}
  %t600 = icmp eq i64 %t598, 17
  store i1 %t600, ptr %l319, !tbaa !21
  br label %bb150
bb150:
  %t601 = load i1, ptr %l319, !tbaa !21
  br i1 %t601, label %bb151, label %bb152
bb151:
  %t602 = load ptr, ptr %l1, !tbaa !29
  %t604 = getelementptr { i64, [4 x i64] }, ptr %t602, i32 0, i32 1
  %t605 = getelementptr { %"compiler/source:Span", ptr, { i64, ptr } }, ptr %t604, i32 0, i32 1
  %t606 = load ptr, ptr %t605
  store ptr %t606, ptr %l42, !tbaa !29
  %t608 = load ptr, ptr %l1, !tbaa !29
  %t610 = getelementptr { i64, [4 x i64] }, ptr %t608, i32 0, i32 1
  %t611 = getelementptr { %"compiler/source:Span", ptr, { i64, ptr } }, ptr %t610, i32 0, i32 2
  %t612 = load { i64, ptr }, ptr %t611
  store { i64, ptr } %t612, ptr %l43, !tbaa !27
  br label %bb153
bb152:
  br label %bb165
bb153:
  %t614 = load ptr, ptr %l42, !tbaa !29
  %t616 = icmp eq ptr %t614, null
  %t618 = xor i1 %t616, true
  br i1 %t618, label %bb154, label %bb155
bb154:
  %t620 = load ptr, ptr %l0, !tbaa !29
  %t621 = load ptr, ptr %l42, !tbaa !29
  call void @compiler_2fnames_2ecompiler_2fnames_3aResolver_2etypeRef(ptr %v0, ptr %v1, ptr %t620, ptr %t621)
  br label %bb156
bb155:
  br label %bb157
bb156:
  br label %bb157
bb157:
  %t625 = load { i64, ptr }, ptr %l43, !tbaa !27
  store { i64, ptr } %t625, ptr %l44, !tbaa !27
  store i64 0, ptr %l45, !tbaa !24
  %t627 = load { i64, ptr }, ptr %l44, !tbaa !27
  %t629 = extractvalue { i64, ptr } %t627, 0
  store i64 %t629, ptr %l46, !tbaa !24
  br label %bb158
bb158:
  %t631 = load i64, ptr %l45, !tbaa !24
  %t632 = load i64, ptr %l46, !tbaa !24
  %t635 = icmp slt i64 %t631, %t632
  %t637 = xor i1 %t635, true
  br i1 %t637, label %bb159, label %bb160
bb159:
  br label %bb164
bb160:
  br label %bb161
bb161:
  %t639 = load { i64, ptr }, ptr %l44, !tbaa !27
  store { i64, ptr } %t639, ptr %l339, !tbaa !27
  %t640 = load i64, ptr %l45, !tbaa !24
  %t642 = getelementptr { i64, ptr }, ptr %l339, i32 0, i32 1
  %t643 = load ptr, ptr %t642, !tbaa !27
  %t644 = getelementptr ptr, ptr %t643, i64 %t640
  %t645 = load ptr, ptr %t644, !tbaa !39
  %t647 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2fnames_2ecompiler_2fnames_3aResolver_2eexpr(ptr %v0, ptr %v1, ptr %t647, ptr %t645)
  br label %bb162
bb162:
  br label %bb163
bb163:
  %t652 = load i64, ptr %l45, !tbaa !24
  %t654 = add i64 %t652, 1
  store i64 %t654, ptr %l45, !tbaa !24
  br label %bb158
bb164:
  br label %bb237
bb165:
  %t656 = load ptr, ptr %l1, !tbaa !29
  store ptr %t656, ptr %l347, !tbaa !29
  store i1 false, ptr %l348, !tbaa !21
  %t657 = load ptr, ptr %l347, !tbaa !29
  %t658 = icmp ne ptr %t657, null
  br i1 %t658, label %bb166, label %bb167
bb166:
  %t660 = load ptr, ptr %l347, !tbaa !29
  %t661 = load i64, ptr %t660, !range !{i64 0, i64 30}
  %t663 = icmp eq i64 %t661, 18
  store i1 %t663, ptr %l348, !tbaa !21
  br label %bb167
bb167:
  %t664 = load i1, ptr %l348, !tbaa !21
  br i1 %t664, label %bb168, label %bb169
bb168:
  %t665 = load ptr, ptr %l1, !tbaa !29
  %t667 = getelementptr { i64, [4 x i64] }, ptr %t665, i32 0, i32 1
  %t668 = getelementptr { %"compiler/source:Span", { i64, ptr } }, ptr %t667, i32 0, i32 1
  %t669 = load { i64, ptr }, ptr %t668
  store { i64, ptr } %t669, ptr %l48, !tbaa !27
  br label %bb178
bb169:
  %t671 = load ptr, ptr %l1, !tbaa !29
  store ptr %t671, ptr %l353, !tbaa !29
  store i1 false, ptr %l354, !tbaa !21
  %t672 = load ptr, ptr %l353, !tbaa !29
  %t673 = icmp ne ptr %t672, null
  br i1 %t673, label %bb170, label %bb171
bb170:
  %t675 = load ptr, ptr %l353, !tbaa !29
  %t676 = load i64, ptr %t675, !range !{i64 0, i64 30}
  %t678 = icmp eq i64 %t676, 20
  store i1 %t678, ptr %l354, !tbaa !21
  br label %bb171
bb171:
  %t679 = load i1, ptr %l354, !tbaa !21
  br i1 %t679, label %bb172, label %bb173
bb172:
  %t680 = load ptr, ptr %l1, !tbaa !29
  %t682 = getelementptr { i64, [4 x i64] }, ptr %t680, i32 0, i32 1
  %t683 = getelementptr { %"compiler/source:Span", { i64, ptr } }, ptr %t682, i32 0, i32 1
  %t684 = load { i64, ptr }, ptr %t683
  store { i64, ptr } %t684, ptr %l48, !tbaa !27
  br label %bb178
bb173:
  %t686 = load ptr, ptr %l1, !tbaa !29
  store ptr %t686, ptr %l359, !tbaa !29
  store i1 false, ptr %l360, !tbaa !21
  %t687 = load ptr, ptr %l359, !tbaa !29
  %t688 = icmp ne ptr %t687, null
  br i1 %t688, label %bb174, label %bb175
bb174:
  %t690 = load ptr, ptr %l359, !tbaa !29
  %t691 = load i64, ptr %t690, !range !{i64 0, i64 30}
  %t693 = icmp eq i64 %t691, 24
  store i1 %t693, ptr %l360, !tbaa !21
  br label %bb175
bb175:
  %t694 = load i1, ptr %l360, !tbaa !21
  br i1 %t694, label %bb176, label %bb177
bb176:
  %t695 = load ptr, ptr %l1, !tbaa !29
  %t697 = getelementptr { i64, [4 x i64] }, ptr %t695, i32 0, i32 1
  %t698 = getelementptr { %"compiler/source:Span", { i64, ptr } }, ptr %t697, i32 0, i32 1
  %t699 = load { i64, ptr }, ptr %t698
  store { i64, ptr } %t699, ptr %l48, !tbaa !27
  br label %bb178
bb177:
  br label %bb186
bb178:
  %t701 = load { i64, ptr }, ptr %l48, !tbaa !27
  store { i64, ptr } %t701, ptr %l49, !tbaa !27
  store i64 0, ptr %l50, !tbaa !24
  %t703 = load { i64, ptr }, ptr %l49, !tbaa !27
  %t705 = extractvalue { i64, ptr } %t703, 0
  store i64 %t705, ptr %l51, !tbaa !24
  br label %bb179
bb179:
  %t707 = load i64, ptr %l50, !tbaa !24
  %t708 = load i64, ptr %l51, !tbaa !24
  %t711 = icmp slt i64 %t707, %t708
  %t713 = xor i1 %t711, true
  br i1 %t713, label %bb180, label %bb181
bb180:
  br label %bb185
bb181:
  br label %bb182
bb182:
  %t715 = load { i64, ptr }, ptr %l49, !tbaa !27
  store { i64, ptr } %t715, ptr %l372, !tbaa !27
  %t716 = load i64, ptr %l50, !tbaa !24
  %t718 = getelementptr { i64, ptr }, ptr %l372, i32 0, i32 1
  %t719 = load ptr, ptr %t718, !tbaa !27
  %t720 = getelementptr ptr, ptr %t719, i64 %t716
  %t721 = load ptr, ptr %t720, !tbaa !39
  %t723 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2fnames_2ecompiler_2fnames_3aResolver_2eexpr(ptr %v0, ptr %v1, ptr %t723, ptr %t721)
  br label %bb183
bb183:
  br label %bb184
bb184:
  %t728 = load i64, ptr %l50, !tbaa !24
  %t730 = add i64 %t728, 1
  store i64 %t730, ptr %l50, !tbaa !24
  br label %bb179
bb185:
  br label %bb237
bb186:
  %t732 = load ptr, ptr %l1, !tbaa !29
  store ptr %t732, ptr %l380, !tbaa !29
  store i1 false, ptr %l381, !tbaa !21
  %t733 = load ptr, ptr %l380, !tbaa !29
  %t734 = icmp ne ptr %t733, null
  br i1 %t734, label %bb187, label %bb188
bb187:
  %t736 = load ptr, ptr %l380, !tbaa !29
  %t737 = load i64, ptr %t736, !range !{i64 0, i64 30}
  %t739 = icmp eq i64 %t737, 19
  store i1 %t739, ptr %l381, !tbaa !21
  br label %bb188
bb188:
  %t740 = load i1, ptr %l381, !tbaa !21
  br i1 %t740, label %bb189, label %bb190
bb189:
  %t741 = load ptr, ptr %l1, !tbaa !29
  %t743 = getelementptr { i64, [4 x i64] }, ptr %t741, i32 0, i32 1
  %t744 = getelementptr { %"compiler/source:Span", ptr }, ptr %t743, i32 0, i32 0
  %t745 = load %"compiler/source:Span", ptr %t744
  store %"compiler/source:Span" %t745, ptr %l53
  %t747 = load ptr, ptr %l1, !tbaa !29
  %t749 = getelementptr { i64, [4 x i64] }, ptr %t747, i32 0, i32 1
  %t750 = getelementptr { %"compiler/source:Span", ptr }, ptr %t749, i32 0, i32 1
  %t751 = load ptr, ptr %t750
  store ptr %t751, ptr %l54, !tbaa !29
  br label %bb191
bb190:
  br label %bb202
bb191:
  %t753 = load ptr, ptr %l54, !tbaa !29
  %t755 = getelementptr %"compiler/ast:Compr", ptr %t753, i32 0, i32 0
  %t756 = load ptr, ptr %t755, !tbaa !29
  %t758 = icmp eq ptr %t756, null
  %t760 = xor i1 %t758, true
  br i1 %t760, label %bb192, label %bb193
bb192:
  %t762 = load ptr, ptr %l0, !tbaa !29
  %t763 = load ptr, ptr %l54, !tbaa !29
  %t765 = getelementptr %"compiler/ast:Compr", ptr %t763, i32 0, i32 0
  %t766 = load ptr, ptr %t765, !tbaa !29
  call void @compiler_2fnames_2ecompiler_2fnames_3aResolver_2etypeRef(ptr %v0, ptr %v1, ptr %t762, ptr %t766)
  br label %bb194
bb193:
  br label %bb195
bb194:
  br label %bb195
bb195:
  %t769 = load ptr, ptr %l0, !tbaa !29
  %t770 = load ptr, ptr %l54, !tbaa !29
  %t772 = getelementptr %"compiler/ast:Compr", ptr %t770, i32 0, i32 4
  %t773 = load ptr, ptr %t772, !tbaa !29
  call void @compiler_2fnames_2ecompiler_2fnames_3aResolver_2eexpr(ptr %v0, ptr %v1, ptr %t769, ptr %t773)
  br label %bb196
bb196:
  %t777 = load ptr, ptr %l0, !tbaa !29
  %t779 = call i64 @compiler_2fnames_2ecompiler_2fnames_3aResolver_2emark(ptr %v0, ptr %t777)
  store i64 %t779, ptr %l400
  br label %bb197
bb197:
  %t780 = load i64, ptr %l400, !tbaa !24
  store i64 %t780, ptr %l55, !tbaa !24
  %t781 = load ptr, ptr %l0, !tbaa !29
  %t782 = getelementptr %"compiler/source:Span", ptr %l53, i32 0, i32 0
  %t783 = load i32, ptr %t782, !tbaa !23
  %t784 = load ptr, ptr %l54, !tbaa !29
  %t786 = getelementptr %"compiler/ast:Compr", ptr %t784, i32 0, i32 2
  %t787 = load i32, ptr %t786, !tbaa !23
  %t788 = load ptr, ptr %l54, !tbaa !29
  %t790 = getelementptr %"compiler/ast:Compr", ptr %t788, i32 0, i32 3
  %t791 = load i32, ptr %t790, !tbaa !23
  call void @compiler_2fnames_2ecompiler_2fnames_3aResolver_2eforNames(ptr %v0, ptr %t781, i32 %t783, i32 %t787, i32 %t791)
  br label %bb198
bb198:
  %t796 = load ptr, ptr %l0, !tbaa !29
  %t797 = load ptr, ptr %l54, !tbaa !29
  %t799 = getelementptr %"compiler/ast:Compr", ptr %t797, i32 0, i32 1
  %t800 = load ptr, ptr %t799, !tbaa !29
  call void @compiler_2fnames_2ecompiler_2fnames_3aResolver_2eexpr(ptr %v0, ptr %v1, ptr %t796, ptr %t800)
  br label %bb199
bb199:
  %t804 = load ptr, ptr %l0, !tbaa !29
  %t805 = load ptr, ptr %l54, !tbaa !29
  %t807 = getelementptr %"compiler/ast:Compr", ptr %t805, i32 0, i32 5
  %t808 = load ptr, ptr %t807, !tbaa !29
  call void @compiler_2fnames_2ecompiler_2fnames_3aResolver_2eexpr(ptr %v0, ptr %v1, ptr %t804, ptr %t808)
  br label %bb200
bb200:
  %t811 = load ptr, ptr %l0, !tbaa !29
  %t812 = load i64, ptr %l55, !tbaa !24
  call void @compiler_2fnames_2ecompiler_2fnames_3aResolver_2epopTo(ptr %v0, ptr %t811, i64 %t812)
  br label %bb201
bb201:
  br label %bb237
bb202:
  %t815 = load ptr, ptr %l1, !tbaa !29
  store ptr %t815, ptr %l416, !tbaa !29
  store i1 false, ptr %l417, !tbaa !21
  %t816 = load ptr, ptr %l416, !tbaa !29
  %t817 = icmp ne ptr %t816, null
  br i1 %t817, label %bb203, label %bb204
bb203:
  %t819 = load ptr, ptr %l416, !tbaa !29
  %t820 = load i64, ptr %t819, !range !{i64 0, i64 30}
  %t822 = icmp eq i64 %t820, 21
  store i1 %t822, ptr %l417, !tbaa !21
  br label %bb204
bb204:
  %t823 = load i1, ptr %l417, !tbaa !21
  br i1 %t823, label %bb205, label %bb206
bb205:
  %t824 = load ptr, ptr %l1, !tbaa !29
  %t826 = getelementptr { i64, [4 x i64] }, ptr %t824, i32 0, i32 1
  %t827 = getelementptr { %"compiler/source:Span", ptr, { i64, ptr } }, ptr %t826, i32 0, i32 1
  %t828 = load ptr, ptr %t827
  store ptr %t828, ptr %l56, !tbaa !29
  %t830 = load ptr, ptr %l1, !tbaa !29
  %t832 = getelementptr { i64, [4 x i64] }, ptr %t830, i32 0, i32 1
  %t833 = getelementptr { %"compiler/source:Span", ptr, { i64, ptr } }, ptr %t832, i32 0, i32 2
  %t834 = load { i64, ptr }, ptr %t833
  store { i64, ptr } %t834, ptr %l57, !tbaa !27
  br label %bb207
bb206:
  br label %bb210
bb207:
  %t836 = load ptr, ptr %l0, !tbaa !29
  %t837 = load ptr, ptr %l56, !tbaa !29
  call void @compiler_2fnames_2ecompiler_2fnames_3aResolver_2eexpr(ptr %v0, ptr %v1, ptr %t836, ptr %t837)
  br label %bb208
bb208:
  %t841 = load ptr, ptr %l0, !tbaa !29
  %t842 = load { i64, ptr }, ptr %l57, !tbaa !27
  call void @compiler_2fnames_2ecompiler_2fnames_3aResolver_2eclauses(ptr %v0, ptr %v1, ptr %t841, { i64, ptr } %t842)
  br label %bb209
bb209:
  br label %bb237
bb210:
  %t845 = load ptr, ptr %l1, !tbaa !29
  store ptr %t845, ptr %l429, !tbaa !29
  store i1 false, ptr %l430, !tbaa !21
  %t846 = load ptr, ptr %l429, !tbaa !29
  %t847 = icmp ne ptr %t846, null
  br i1 %t847, label %bb211, label %bb212
bb211:
  %t849 = load ptr, ptr %l429, !tbaa !29
  %t850 = load i64, ptr %t849, !range !{i64 0, i64 30}
  %t852 = icmp eq i64 %t850, 22
  store i1 %t852, ptr %l430, !tbaa !21
  br label %bb212
bb212:
  %t853 = load i1, ptr %l430, !tbaa !21
  br i1 %t853, label %bb213, label %bb214
bb213:
  %t854 = load ptr, ptr %l1, !tbaa !29
  %t856 = getelementptr { i64, [4 x i64] }, ptr %t854, i32 0, i32 1
  %t857 = getelementptr { %"compiler/source:Span", ptr }, ptr %t856, i32 0, i32 1
  %t858 = load ptr, ptr %t857
  store ptr %t858, ptr %l58, !tbaa !29
  br label %bb215
bb214:
  br label %bb225
bb215:
  %t860 = load ptr, ptr %l0, !tbaa !29
  %t862 = getelementptr %"compiler/names:Resolver", ptr %t860, i32 0, i32 12
  %t863 = load i1, ptr %t862, !tbaa !21
  store i1 %t863, ptr %l59, !tbaa !21
  %t865 = load ptr, ptr %l0, !tbaa !29
  %t867 = getelementptr %"compiler/names:Resolver", ptr %t865, i32 0, i32 12
  store i1 false, ptr %t867, !tbaa !21
  %t868 = load ptr, ptr %l0, !tbaa !29
  %t870 = call i64 @compiler_2fnames_2ecompiler_2fnames_3aResolver_2emark(ptr %v0, ptr %t868)
  store i64 %t870, ptr %l439
  br label %bb216
bb216:
  %t871 = load i64, ptr %l439, !tbaa !24
  store i64 %t871, ptr %l60, !tbaa !24
  %t872 = load ptr, ptr %l0, !tbaa !29
  %t874 = getelementptr %"compiler/names:Resolver", ptr %t872, i32 0, i32 13
  store i1 true, ptr %t874, !tbaa !21
  %t875 = load ptr, ptr %l0, !tbaa !29
  %t876 = load ptr, ptr %l58, !tbaa !29
  call void @compiler_2fnames_2ecompiler_2fnames_3aResolver_2esig(ptr %v0, ptr %v1, ptr %t875, ptr %t876, i1 true)
  br label %bb217
bb217:
  %t879 = load ptr, ptr %l0, !tbaa !29
  %t881 = getelementptr %"compiler/names:Resolver", ptr %t879, i32 0, i32 13
  store i1 false, ptr %t881, !tbaa !21
  %t882 = load ptr, ptr %l0, !tbaa !29
  %t883 = load ptr, ptr %l58, !tbaa !29
  %t885 = getelementptr %"compiler/ast:Func", ptr %t883, i32 0, i32 3
  %t886 = load ptr, ptr %t885, !tbaa !29
  call void @compiler_2fnames_2ecompiler_2fnames_3aResolver_2epushSig(ptr %v0, ptr %v1, ptr %t882, ptr %t886)
  br label %bb218
bb218:
  %t889 = load ptr, ptr %l58, !tbaa !29
  %t891 = getelementptr %"compiler/ast:Func", ptr %t889, i32 0, i32 4
  %t892 = load { i64, ptr }, ptr %t891, !tbaa !27
  %t894 = extractvalue { i64, ptr } %t892, 0
  %t896 = icmp sgt i64 %t894, 0
  br i1 %t896, label %bb219, label %bb220
bb219:
  %t898 = load ptr, ptr %l0, !tbaa !29
  %t899 = load ptr, ptr %l58, !tbaa !29
  %t901 = getelementptr %"compiler/ast:Func", ptr %t899, i32 0, i32 4
  %t902 = load { i64, ptr }, ptr %t901, !tbaa !27
  call void @compiler_2fnames_2ecompiler_2fnames_3aResolver_2eblock(ptr %v0, ptr %v1, ptr %t898, { i64, ptr } %t902)
  br label %bb221
bb220:
  br label %bb222
bb221:
  br label %bb222
bb222:
  %t905 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2fnames_2ecompiler_2fnames_3aResolver_2epopSig(ptr %v0, ptr %t905)
  br label %bb223
bb223:
  %t907 = load ptr, ptr %l0, !tbaa !29
  %t908 = load i64, ptr %l60, !tbaa !24
  call void @compiler_2fnames_2ecompiler_2fnames_3aResolver_2epopTo(ptr %v0, ptr %t907, i64 %t908)
  br label %bb224
bb224:
  %t911 = load ptr, ptr %l0, !tbaa !29
  %t912 = load i1, ptr %l59, !tbaa !21
  %t915 = getelementptr %"compiler/names:Resolver", ptr %t911, i32 0, i32 12
  store i1 %t912, ptr %t915, !tbaa !21
  br label %bb237
bb225:
  %t916 = load ptr, ptr %l1, !tbaa !29
  store ptr %t916, ptr %l459, !tbaa !29
  store i1 false, ptr %l460, !tbaa !21
  %t917 = load ptr, ptr %l459, !tbaa !29
  %t918 = icmp ne ptr %t917, null
  br i1 %t918, label %bb226, label %bb227
bb226:
  %t920 = load ptr, ptr %l459, !tbaa !29
  %t921 = load i64, ptr %t920, !range !{i64 0, i64 30}
  %t923 = icmp eq i64 %t921, 23
  store i1 %t923, ptr %l460, !tbaa !21
  br label %bb227
bb227:
  %t924 = load i1, ptr %l460, !tbaa !21
  br i1 %t924, label %bb228, label %bb229
bb228:
  %t925 = load ptr, ptr %l1, !tbaa !29
  %t927 = getelementptr { i64, [4 x i64] }, ptr %t925, i32 0, i32 1
  %t928 = getelementptr { %"compiler/source:Span", ptr }, ptr %t927, i32 0, i32 1
  %t929 = load ptr, ptr %t928
  store ptr %t929, ptr %l61, !tbaa !29
  br label %bb230
bb229:
  br label %bb232
bb230:
  %t931 = load ptr, ptr %l0, !tbaa !29
  %t932 = load ptr, ptr %l61, !tbaa !29
  call void @compiler_2fnames_2ecompiler_2fnames_3aResolver_2ematchOf(ptr %v0, ptr %v1, ptr %t931, ptr %t932)
  br label %bb231
bb231:
  br label %bb237
bb232:
  br i1 true, label %bb233, label %bb234
bb233:
  br label %bb235
bb234:
  br label %bb236
bb235:
  br label %bb237
bb236:
  call void @__olang_check_failed(ptr @olang_loc_eb7a002d6449973_70bfc0171de666c7)
  unreachable
bb237:
  br label %ret
ret:
  ret void
}

define dso_local %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2fnames_2ecompiler_2fnames_3aResolver_2efirstRaises(ptr %v0, ptr %v1, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %lp1 = alloca ptr
  %l2 = alloca i64
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %lp8 = alloca ptr
  %l9 = alloca i64
  %lp10 = alloca ptr
  %l11 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l14 = alloca i64
  %l18 = alloca i64
  %l21 = alloca i64
  %l42 = alloca %"compiler/names:raised"
  %l45 = alloca i64
  %l48 = alloca ptr
  %l49 = alloca i32
  %l50 = alloca %"compiler/source:Span"
  %l51 = alloca i1
  %l53 = alloca i64
  %l55 = alloca %"compiler/names:raisedName"
  %l58 = alloca %"compiler/names:raisedName"
  %l59 = alloca ptr
  %l60 = alloca i64
  %l61 = alloca i32
  %l62 = alloca %"compiler/source:Span"
  %l64 = alloca i64
  %l66 = alloca i1
  %l70 = alloca %"compiler/names:raisedName"
  %rv = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fnames_3araisedName_3e_2ector(ptr %v1, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1, ptr %l11
  br label %bb1
bb1:
  %t2 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 32, i64 8)
  store ptr %t2, ptr %lp1
  %t3 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l11
  %t4 = load ptr, ptr %lp1
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t3, ptr %t4
  store i64 0, ptr %l2, !tbaa !24
  %t5 = load ptr, ptr %l0, !tbaa !29
  %t7 = getelementptr %"compiler/names:Resolver", ptr %t5, i32 0, i32 23
  %t9 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fnames_3araised_3e_2eLen_3ccompiler_2fnames_3araised_3e(ptr %v0, ptr %t7)
  store i64 %t9, ptr %l14
  br label %bb2
bb2:
  %t10 = load i64, ptr %l14, !tbaa !24
  store i64 %t10, ptr %l3, !tbaa !24
  store i64 1, ptr %l4, !tbaa !24
  %t11 = load i64, ptr %l3, !tbaa !24
  %t12 = load i64, ptr %l2, !tbaa !24
  %t15 = icmp sgt i64 %t11, %t12
  br i1 %t15, label %bb3, label %bb4
bb3:
  %t17 = load i64, ptr %l4, !tbaa !24
  %t19 = icmp sgt i64 %t17, 0
  br i1 %t19, label %bb5, label %bb6
bb4:
  store i64 0, ptr %l18, !tbaa !24
  br label %bb8
bb5:
  %t21 = load i64, ptr %l3, !tbaa !24
  %t22 = load i64, ptr %l2, !tbaa !24
  %t25 = sub i64 %t21, %t22
  %t26 = load i64, ptr %l4, !tbaa !24
  %t29 = add i64 %t25, %t26
  %t31 = sub i64 %t29, 1
  %t32 = load i64, ptr %l4, !tbaa !24
  %t35 = sdiv i64 %t31, %t32
  store i64 %t35, ptr %l21, !tbaa !24
  br label %bb7
bb6:
  store i64 0, ptr %l21, !tbaa !24
  br label %bb7
bb7:
  %t37 = load i64, ptr %l21, !tbaa !24
  store i64 %t37, ptr %l18, !tbaa !24
  br label %bb8
bb8:
  %t38 = load i64, ptr %l18, !tbaa !24
  store i64 %t38, ptr %l5, !tbaa !24
  store i64 0, ptr %l6, !tbaa !24
  br label %bb9
bb9:
  %t39 = load i64, ptr %l6, !tbaa !24
  %t40 = load i64, ptr %l5, !tbaa !24
  %t43 = icmp slt i64 %t39, %t40
  %t45 = xor i1 %t43, true
  br i1 %t45, label %bb10, label %bb11
bb10:
  br label %bb28
bb11:
  br label %bb12
bb12:
  %t47 = load i64, ptr %l2, !tbaa !24
  %t48 = load i64, ptr %l6, !tbaa !24
  %t49 = load i64, ptr %l4, !tbaa !24
  %t52 = mul i64 %t48, %t49
  %t55 = add i64 %t47, %t52
  %t57 = load ptr, ptr %l0, !tbaa !29
  %t59 = getelementptr %"compiler/names:Resolver", ptr %t57, i32 0, i32 23
  %t63 = call %"compiler/names:raised" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fnames_3araised_3e_2eAt_3ccompiler_2fnames_3araised_3e(ptr %v0, ptr %v1, ptr %t59, i64 %t55)
  store %"compiler/names:raised" %t63, ptr %l42
  br label %bb13
bb13:
  %t64 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 32, i64 8)
  store ptr %t64, ptr %lp8
  %t65 = load %"compiler/names:raised", ptr %l42
  %t66 = load ptr, ptr %lp8
  store %"compiler/names:raised" %t65, ptr %t66
  %t67 = load ptr, ptr %lp1
  %t68 = load ptr, ptr %lp8
  %t69 = getelementptr %"compiler/names:raised", ptr %t68, i32 0, i32 0
  %t70 = load i32, ptr %t69, !tbaa !23
  %t73 = call i64 @compiler_2fnames_2eindexOfRaised(ptr %v1, ptr %t67, i32 %t70)
  store i64 %t73, ptr %l45
  br label %bb14
bb14:
  %t74 = load i64, ptr %l45, !tbaa !24
  store i64 %t74, ptr %l9, !tbaa !24
  %t75 = load i64, ptr %l9, !tbaa !24
  %t77 = icmp slt i64 %t75, 0
  br i1 %t77, label %bb15, label %bb16
bb15:
  %t79 = load ptr, ptr %lp1
  store ptr %t79, ptr %l48, !tbaa !29
  %t80 = load ptr, ptr %lp8
  %t81 = getelementptr %"compiler/names:raised", ptr %t80, i32 0, i32 0
  %t82 = load i32, ptr %t81, !tbaa !23
  store i32 %t82, ptr %l49, !tbaa !23
  %t83 = load ptr, ptr %lp8
  %t84 = getelementptr %"compiler/names:raised", ptr %t83, i32 0, i32 1
  %t85 = load %"compiler/source:Span", ptr %t84
  store %"compiler/source:Span" %t85, ptr %l50
  %t86 = load ptr, ptr %lp8
  %t87 = getelementptr %"compiler/names:raised", ptr %t86, i32 0, i32 2
  %t88 = load i1, ptr %t87, !tbaa !21
  store i1 %t88, ptr %l51, !tbaa !21
  %t89 = load ptr, ptr %lp1
  %t91 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fnames_3araisedName_3e_2eLen_H9e36587759e47da85a29e6c0abff1d1c(ptr %v1, ptr %t89)
  store i64 %t91, ptr %l53
  br label %bb17
bb16:
  br label %bb20
bb17:
  %t92 = load ptr, ptr %lp8
  %t93 = getelementptr %"compiler/names:raised", ptr %t92, i32 0, i32 3
  %t94 = load { i64, ptr }, ptr %t93, !tbaa !27
  %t95 = load i32, ptr %l49, !tbaa !23
  %t96 = load %"compiler/source:Span", ptr %l50
  %t97 = load i1, ptr %l51, !tbaa !21
  %t98 = load i64, ptr %l53, !tbaa !24
  %t100 = call %"compiler/names:raisedName" @compiler_2fnames_3araisedName_2ector(ptr %v1, ptr %v1, i32 %t95, %"compiler/source:Span" %t96, i64 1, i1 %t97, i64 %t98, { i64, ptr } %t94)
  store %"compiler/names:raisedName" %t100, ptr %l55
  br label %bb18
bb18:
  %t101 = load ptr, ptr %l48, !tbaa !29
  %t102 = load %"compiler/names:raisedName", ptr %l55
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fnames_3araisedName_3e_2ePus_Hd55e6ab57c5af931645f87a55858e9a4(ptr %v1, ptr %v1, ptr %t101, %"compiler/names:raisedName" %t102)
  br label %bb19
bb19:
  br label %bb27
bb20:
  %t103 = load ptr, ptr %lp1
  %t104 = load i64, ptr %l9, !tbaa !24
  %t107 = call %"compiler/names:raisedName" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fnames_3araisedName_3e_2eAt__H16b49ab3dab0c5fe49005bf48ab18c1b(ptr %v1, ptr %v1, ptr %t103, i64 %t104)
  store %"compiler/names:raisedName" %t107, ptr %l58
  br label %bb21
bb21:
  %t108 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 56, i64 8)
  store ptr %t108, ptr %lp10
  %t109 = load %"compiler/names:raisedName", ptr %l58
  %t110 = load ptr, ptr %lp10
  store %"compiler/names:raisedName" %t109, ptr %t110
  %t111 = load ptr, ptr %lp1
  store ptr %t111, ptr %l59, !tbaa !29
  %t112 = load i64, ptr %l9, !tbaa !24
  store i64 %t112, ptr %l60, !tbaa !24
  %t113 = load ptr, ptr %lp10
  %t114 = getelementptr %"compiler/names:raisedName", ptr %t113, i32 0, i32 0
  %t115 = load i32, ptr %t114, !tbaa !23
  store i32 %t115, ptr %l61, !tbaa !23
  %t116 = load ptr, ptr %lp10
  %t117 = getelementptr %"compiler/names:raisedName", ptr %t116, i32 0, i32 1
  %t118 = load %"compiler/source:Span", ptr %t117
  store %"compiler/source:Span" %t118, ptr %l62
  %t119 = load ptr, ptr %lp10
  %t120 = getelementptr %"compiler/names:raisedName", ptr %t119, i32 0, i32 2
  %t121 = load i64, ptr %t120, !tbaa !24
  %t123 = add i64 %t121, 1
  store i64 %t123, ptr %l64, !tbaa !24
  %t124 = load ptr, ptr %lp10
  %t125 = getelementptr %"compiler/names:raisedName", ptr %t124, i32 0, i32 3
  %t126 = load i1, ptr %t125, !tbaa !21
  br i1 %t126, label %bb22, label %bb23
bb22:
  store i1 true, ptr %l66, !tbaa !21
  br label %bb24
bb23:
  %t128 = load ptr, ptr %lp8
  %t129 = getelementptr %"compiler/names:raised", ptr %t128, i32 0, i32 2
  %t130 = load i1, ptr %t129, !tbaa !21
  store i1 %t130, ptr %l66, !tbaa !21
  br label %bb24
bb24:
  %t132 = load ptr, ptr %lp10
  %t133 = getelementptr %"compiler/names:raisedName", ptr %t132, i32 0, i32 4
  %t134 = load i64, ptr %t133, !tbaa !24
  %t135 = load ptr, ptr %lp10
  %t136 = getelementptr %"compiler/names:raisedName", ptr %t135, i32 0, i32 5
  %t137 = load { i64, ptr }, ptr %t136, !tbaa !27
  %t138 = load i32, ptr %l61, !tbaa !23
  %t139 = load %"compiler/source:Span", ptr %l62
  %t140 = load i64, ptr %l64, !tbaa !24
  %t141 = load i1, ptr %l66, !tbaa !21
  %t144 = call %"compiler/names:raisedName" @compiler_2fnames_3araisedName_2ector(ptr %v1, ptr %v1, i32 %t138, %"compiler/source:Span" %t139, i64 %t140, i1 %t141, i64 %t134, { i64, ptr } %t137)
  store %"compiler/names:raisedName" %t144, ptr %l70
  br label %bb25
bb25:
  %t145 = load ptr, ptr %l59, !tbaa !29
  %t146 = load i64, ptr %l60, !tbaa !24
  %t147 = load %"compiler/names:raisedName", ptr %l70
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fnames_3araisedName_3e_2eSet_H6810983465e8cb9e88422e8fd071646d(ptr %v1, ptr %v1, ptr %t145, i64 %t146, %"compiler/names:raisedName" %t147)
  br label %bb26
bb26:
  br label %bb27
bb27:
  %t148 = load i64, ptr %l6, !tbaa !24
  %t150 = add i64 %t148, 1
  store i64 %t150, ptr %l6, !tbaa !24
  br label %bb9
bb28:
  %t152 = load ptr, ptr %lp1
  %t153 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t152
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t153, ptr %rv
  br label %ret
ret:
  %rr = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %rv
  ret %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %rr
}

define dso_local void @compiler_2fnames_2ecompiler_2fnames_3aResolver_2eforNames(ptr %v0, ptr %a0, i32 %a1, i32 %a2, i32 %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load i32, ptr %l1, !tbaa !23
  call void @compiler_2fnames_2ecompiler_2fnames_3aResolver_2eforName(ptr %v0, ptr %t1, i32 %t2, i32 %a2)
  br label %bb1
bb1:
  %t7 = load ptr, ptr %l0, !tbaa !29
  %t8 = load i32, ptr %l1, !tbaa !23
  call void @compiler_2fnames_2ecompiler_2fnames_3aResolver_2eforName(ptr %v0, ptr %t7, i32 %t8, i32 %a3)
  br label %bb2
bb2:
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2fnames_2ecompiler_2fnames_3aResolver_2eifStmt(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca %"compiler/cond:Decision"
  %l3 = alloca i32
  %l4 = alloca i1
  %l5 = alloca i1
  %l6 = alloca i1
  %l7 = alloca ptr
  %l8 = alloca ptr
  %l16 = alloca ptr
  %l27 = alloca ptr
  %l33 = alloca %"compiler/cond:Decision"
  %l39 = alloca ptr
  %l45 = alloca ptr
  %l47 = alloca i64
  %l53 = alloca %"compiler/source:Span"
  %l56 = alloca %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0"
  %l62 = alloca ptr
  %l71 = alloca ptr
  %l82 = alloca ptr
  %l83 = alloca i1
  %l91 = alloca ptr
  %l101 = alloca ptr
  %l108 = alloca i1
  %s3 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/names:Resolver", ptr %t1, i32 0, i32 22
  %t4 = load i1, ptr %t3, !tbaa !21
  br i1 %t4, label %bb1, label %bb2
bb1:
  %t6 = load ptr, ptr %l0, !tbaa !29
  %t7 = load ptr, ptr %l1, !tbaa !29
  call void @compiler_2fnames_2ecompiler_2fnames_3aResolver_2esurveyIf(ptr %v0, ptr %v1, ptr %t6, ptr %t7)
  br label %bb3
bb2:
  br label %bb4
bb3:
  br label %ret
bb4:
  %t10 = load ptr, ptr %l1, !tbaa !29
  %t12 = getelementptr %"compiler/ast:If", ptr %t10, i32 0, i32 0
  %t13 = load ptr, ptr %t12, !tbaa !29
  %t15 = icmp eq ptr %t13, null
  br i1 %t15, label %bb5, label %bb6
bb5:
  %t17 = load ptr, ptr %l0, !tbaa !29
  store ptr %t17, ptr %l16, !tbaa !29
  %t18 = load ptr, ptr %l1, !tbaa !29
  %t20 = getelementptr %"compiler/ast:If", ptr %t18, i32 0, i32 1
  %t21 = load ptr, ptr %t20, !tbaa !29
  %t23 = icmp eq ptr %t21, null
  br i1 %t23, label %bb7, label %bb8
bb6:
  br label %bb11
bb7:
  call void @__olang_check_failed(ptr @olang_loc_886f7d48bba75e1e_e325b650ab06e3ea)
  unreachable
bb8:
  br label %bb9
bb9:
  %t25 = load ptr, ptr %l1, !tbaa !29
  %t27 = getelementptr %"compiler/ast:If", ptr %t25, i32 0, i32 1
  %t28 = load ptr, ptr %t27, !tbaa !29
  %t29 = load ptr, ptr %l16, !tbaa !29
  call void @compiler_2fnames_2ecompiler_2fnames_3aResolver_2ebranch(ptr %v0, ptr %v1, ptr %t29, ptr %t28)
  br label %bb10
bb10:
  br label %ret
bb11:
  %t31 = load ptr, ptr %l0, !tbaa !29
  %t33 = getelementptr %"compiler/names:Resolver", ptr %t31, i32 0, i32 12
  store i1 true, ptr %t33, !tbaa !21
  %t34 = load ptr, ptr %l0, !tbaa !29
  %t35 = load ptr, ptr %l1, !tbaa !29
  %t37 = getelementptr %"compiler/ast:If", ptr %t35, i32 0, i32 0
  %t38 = load ptr, ptr %t37, !tbaa !29
  call void @compiler_2fnames_2ecompiler_2fnames_3aResolver_2eexpr(ptr %v0, ptr %v1, ptr %t34, ptr %t38)
  br label %bb12
bb12:
  %t41 = load ptr, ptr %l0, !tbaa !29
  %t43 = getelementptr %"compiler/names:Resolver", ptr %t41, i32 0, i32 12
  store i1 false, ptr %t43, !tbaa !21
  %t44 = load ptr, ptr %l0, !tbaa !29
  store ptr %t44, ptr %l27, !tbaa !29
  %t45 = load ptr, ptr %l1, !tbaa !29
  %t47 = getelementptr %"compiler/ast:If", ptr %t45, i32 0, i32 0
  %t48 = load ptr, ptr %t47, !tbaa !29
  %t50 = icmp eq ptr %t48, null
  br i1 %t50, label %bb13, label %bb14
bb13:
  call void @__olang_check_failed(ptr @olang_loc_dbd61287de33a2c5_4d29ffa31fdf1ff1)
  unreachable
bb14:
  br label %bb15
bb15:
  %t52 = load ptr, ptr %l1, !tbaa !29
  %t54 = getelementptr %"compiler/ast:If", ptr %t52, i32 0, i32 0
  %t55 = load ptr, ptr %t54, !tbaa !29
  %t56 = load ptr, ptr %l27, !tbaa !29
  %t58 = call %"compiler/cond:Decision" @compiler_2fnames_2ecompiler_2fnames_3aResolver_2edecideLocal(ptr %v0, ptr %v1, ptr %t56, ptr %t55)
  store %"compiler/cond:Decision" %t58, ptr %l33
  br label %bb16
bb16:
  %t59 = load %"compiler/cond:Decision", ptr %l33
  store %"compiler/cond:Decision" %t59, ptr %l2
  %t60 = getelementptr %"compiler/cond:Decision", ptr %l2, i32 0, i32 0
  %t61 = load i32, ptr %t60, !range !{i32 0, i32 5}
  store i32 %t61, ptr %l3
  %t63 = getelementptr %"compiler/cond:Decision", ptr %l2, i32 0, i32 1
  %t64 = load i1, ptr %t63, !tbaa !21
  store i1 %t64, ptr %l4, !tbaa !21
  %t66 = load i32, ptr %l3, !range !{i32 0, i32 5}
  %t68 = trunc i64 4 to i32
  %t69 = icmp eq i32 %t66, %t68
  br i1 %t69, label %bb17, label %bb18
bb17:
  store %olang.scope zeroinitializer, ptr %s3
  %t71 = load ptr, ptr %l0, !tbaa !29
  %t73 = getelementptr %"compiler/names:Resolver", ptr %t71, i32 0, i32 16
  store ptr %t73, ptr %l39, !tbaa !29
  %t74 = load ptr, ptr %l0, !tbaa !29
  %t76 = getelementptr %"compiler/names:Resolver", ptr %t74, i32 0, i32 0
  %t77 = load ptr, ptr %t76, !tbaa !29
  %t79 = getelementptr %"compiler/load:Loader", ptr %t77, i32 0, i32 10
  %t80 = load ptr, ptr %l0, !tbaa !29
  %t82 = getelementptr %"compiler/names:Resolver", ptr %t80, i32 0, i32 6
  %t83 = load i64, ptr %t82, !tbaa !24
  %t86 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H7bcf2aeb09afa796f4333e6ec8c3f63f(ptr %v0, ptr %v0, ptr %t79, i64 %t83)
  store ptr %t86, ptr %l45
  br label %bb19
bb18:
  br label %bb26
bb19:
  %t87 = load ptr, ptr %l45, !tbaa !29
  %t89 = getelementptr %"compiler/load:Module", ptr %t87, i32 0, i32 4
  %t90 = load i64, ptr %t89, !tbaa !24
  store i64 %t90, ptr %l47, !tbaa !24
  %t91 = load ptr, ptr %l1, !tbaa !29
  %t93 = getelementptr %"compiler/ast:If", ptr %t91, i32 0, i32 0
  %t94 = load ptr, ptr %t93, !tbaa !29
  %t96 = icmp eq ptr %t94, null
  br i1 %t96, label %bb20, label %bb21
bb20:
  call void @__olang_check_failed(ptr @olang_loc_bee2df1b257c0b70_a796ae201fef93fc)
  unreachable
bb21:
  br label %bb22
bb22:
  %t98 = load ptr, ptr %l1, !tbaa !29
  %t100 = getelementptr %"compiler/ast:If", ptr %t98, i32 0, i32 0
  %t101 = load ptr, ptr %t100, !tbaa !29
  %t103 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v1, ptr %t101)
  store %"compiler/source:Span" %t103, ptr %l53
  br label %bb23
bb23:
  %t104 = getelementptr %"compiler/source:Span", ptr %l53, i32 0, i32 0
  %t105 = load i32, ptr %t104, !tbaa !23
  %t107 = sext i32 %t105 to i64
  %t108 = load i64, ptr %l47, !tbaa !24
  %t110 = call %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" @std_2fpair_3aPair_3cI64_2c_20I64_3e_2ector(ptr %s3, i64 %t108, i64 %t107)
  store %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t110, ptr %l56
  br label %bb24
bb24:
  %t111 = load ptr, ptr %l39, !tbaa !29
  %t112 = load %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %l56
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H1308596c866d4be061d9da9113abde88(ptr %v0, ptr %t111, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t112, i1 true)
  br label %bb25
bb25:
  call void @__olang_scope_close(ptr %s3)
  br label %bb26
bb26:
  %t113 = load i32, ptr %l3, !range !{i32 0, i32 5}
  %t115 = trunc i64 0 to i32
  %t116 = icmp eq i32 %t113, %t115
  store i1 %t116, ptr %l5, !tbaa !21
  %t118 = load i32, ptr %l3, !range !{i32 0, i32 5}
  %t120 = trunc i64 1 to i32
  %t121 = icmp eq i32 %t118, %t120
  %t123 = xor i1 %t121, true
  store i1 %t123, ptr %l6, !tbaa !21
  %t125 = load ptr, ptr %l0, !tbaa !29
  store ptr %t125, ptr %l62, !tbaa !29
  %t126 = load ptr, ptr %l1, !tbaa !29
  %t128 = getelementptr %"compiler/ast:If", ptr %t126, i32 0, i32 1
  %t129 = load ptr, ptr %t128, !tbaa !29
  %t131 = icmp eq ptr %t129, null
  br i1 %t131, label %bb27, label %bb28
bb27:
  call void @__olang_check_failed(ptr @olang_loc_f74f5c810fb1384f_2035d8e6259ec36b)
  unreachable
bb28:
  br label %bb29
bb29:
  %t133 = load ptr, ptr %l1, !tbaa !29
  %t135 = getelementptr %"compiler/ast:If", ptr %t133, i32 0, i32 1
  %t136 = load ptr, ptr %t135, !tbaa !29
  %t137 = load i1, ptr %l5, !tbaa !21
  %t138 = load i1, ptr %l4, !tbaa !21
  %t139 = load i1, ptr %l6, !tbaa !21
  %t140 = load ptr, ptr %l62, !tbaa !29
  call void @compiler_2fnames_2ecompiler_2fnames_3aResolver_2echoose(ptr %v0, ptr %v1, ptr %t140, ptr %t136, i1 %t137, i1 %t138, i1 %t139)
  br label %bb30
bb30:
  %t145 = load ptr, ptr %l0, !tbaa !29
  store ptr %t145, ptr %l71, !tbaa !29
  %t146 = load ptr, ptr %l1, !tbaa !29
  %t148 = getelementptr %"compiler/ast:If", ptr %t146, i32 0, i32 1
  %t149 = load ptr, ptr %t148, !tbaa !29
  %t151 = icmp eq ptr %t149, null
  br i1 %t151, label %bb31, label %bb32
bb31:
  call void @__olang_check_failed(ptr @olang_loc_9a3445d364d03a02_c72e8fada9365de6)
  unreachable
bb32:
  br label %bb33
bb33:
  %t153 = load ptr, ptr %l1, !tbaa !29
  %t155 = getelementptr %"compiler/ast:If", ptr %t153, i32 0, i32 1
  %t156 = load ptr, ptr %t155, !tbaa !29
  %t157 = load ptr, ptr %l71, !tbaa !29
  call void @compiler_2fnames_2ecompiler_2fnames_3aResolver_2ebranch(ptr %v0, ptr %v1, ptr %t157, ptr %t156)
  br label %bb34
bb34:
  %t159 = load ptr, ptr %l1, !tbaa !29
  %t161 = getelementptr %"compiler/ast:If", ptr %t159, i32 0, i32 2
  %t162 = load ptr, ptr %t161, !tbaa !29
  %t164 = icmp eq ptr %t162, null
  br i1 %t164, label %bb35, label %bb36
bb35:
  br label %ret
bb36:
  br label %bb37
bb37:
  %t166 = load ptr, ptr %l1, !tbaa !29
  %t168 = getelementptr %"compiler/ast:If", ptr %t166, i32 0, i32 2
  %t169 = load ptr, ptr %t168, !tbaa !29
  store ptr %t169, ptr %l7, !tbaa !29
  %t171 = load ptr, ptr %l7, !tbaa !29
  store ptr %t171, ptr %l82, !tbaa !29
  store i1 false, ptr %l83, !tbaa !21
  %t172 = load ptr, ptr %l82, !tbaa !29
  %t173 = icmp ne ptr %t172, null
  br i1 %t173, label %bb38, label %bb39
bb38:
  %t175 = load ptr, ptr %l82, !tbaa !29
  %t176 = load i64, ptr %t175, !range !{i64 0, i64 22}
  %t178 = icmp eq i64 %t176, 5
  store i1 %t178, ptr %l83, !tbaa !21
  br label %bb39
bb39:
  %t179 = load i1, ptr %l83, !tbaa !21
  br i1 %t179, label %bb40, label %bb41
bb40:
  %t180 = load ptr, ptr %l7, !tbaa !29
  %t182 = getelementptr { i64, [4 x i64] }, ptr %t180, i32 0, i32 1
  %t183 = getelementptr { %"compiler/source:Span", ptr }, ptr %t182, i32 0, i32 1
  %t184 = load ptr, ptr %t183
  store ptr %t184, ptr %l8, !tbaa !29
  br label %bb42
bb41:
  br label %bb62
bb42:
  %t186 = load ptr, ptr %l8, !tbaa !29
  %t188 = getelementptr %"compiler/ast:If", ptr %t186, i32 0, i32 0
  %t189 = load ptr, ptr %t188, !tbaa !29
  %t191 = icmp eq ptr %t189, null
  br i1 %t191, label %bb43, label %bb44
bb43:
  %t193 = load ptr, ptr %l0, !tbaa !29
  store ptr %t193, ptr %l91, !tbaa !29
  %t194 = load ptr, ptr %l8, !tbaa !29
  %t196 = getelementptr %"compiler/ast:If", ptr %t194, i32 0, i32 1
  %t197 = load ptr, ptr %t196, !tbaa !29
  %t199 = icmp eq ptr %t197, null
  br i1 %t199, label %bb45, label %bb46
bb44:
  %t201 = load i1, ptr %l5, !tbaa !21
  br i1 %t201, label %bb53, label %bb54
bb45:
  call void @__olang_check_failed(ptr @olang_loc_f2359f321711c0e9_83213f8b98ca37cd)
  unreachable
bb46:
  br label %bb47
bb47:
  %t203 = load ptr, ptr %l8, !tbaa !29
  %t205 = getelementptr %"compiler/ast:If", ptr %t203, i32 0, i32 1
  %t206 = load ptr, ptr %t205, !tbaa !29
  %t207 = load i1, ptr %l5, !tbaa !21
  %t208 = load i1, ptr %l4, !tbaa !21
  %t210 = xor i1 %t208, true
  %t211 = load i1, ptr %l6, !tbaa !21
  %t212 = load ptr, ptr %l91, !tbaa !29
  call void @compiler_2fnames_2ecompiler_2fnames_3aResolver_2echoose(ptr %v0, ptr %v1, ptr %t212, ptr %t206, i1 %t207, i1 %t210, i1 %t211)
  br label %bb48
bb48:
  %t217 = load ptr, ptr %l0, !tbaa !29
  store ptr %t217, ptr %l101, !tbaa !29
  %t218 = load ptr, ptr %l8, !tbaa !29
  %t220 = getelementptr %"compiler/ast:If", ptr %t218, i32 0, i32 1
  %t221 = load ptr, ptr %t220, !tbaa !29
  %t223 = icmp eq ptr %t221, null
  br i1 %t223, label %bb49, label %bb50
bb49:
  call void @__olang_check_failed(ptr @olang_loc_530cce065f124df4_4e8587782c204bb8)
  unreachable
bb50:
  br label %bb51
bb51:
  %t225 = load ptr, ptr %l8, !tbaa !29
  %t227 = getelementptr %"compiler/ast:If", ptr %t225, i32 0, i32 1
  %t228 = load ptr, ptr %t227, !tbaa !29
  %t229 = load ptr, ptr %l101, !tbaa !29
  call void @compiler_2fnames_2ecompiler_2fnames_3aResolver_2ebranch(ptr %v0, ptr %v1, ptr %t229, ptr %t228)
  br label %bb52
bb52:
  br label %bb61
bb53:
  %t231 = load i1, ptr %l4, !tbaa !21
  store i1 %t231, ptr %l108, !tbaa !21
  br label %bb55
bb54:
  store i1 false, ptr %l108, !tbaa !21
  br label %bb55
bb55:
  %t233 = load i1, ptr %l108, !tbaa !21
  br i1 %t233, label %bb56, label %bb57
bb56:
  %t234 = load ptr, ptr %l0, !tbaa !29
  %t235 = load ptr, ptr %l8, !tbaa !29
  call void @compiler_2fnames_2ecompiler_2fnames_3aResolver_2edropAll(ptr %v0, ptr %v1, ptr %t234, ptr %t235)
  br label %bb58
bb57:
  %t238 = load ptr, ptr %l0, !tbaa !29
  %t239 = load ptr, ptr %l8, !tbaa !29
  call void @compiler_2fnames_2ecompiler_2fnames_3aResolver_2eifStmt(ptr %v0, ptr %v1, ptr %t238, ptr %t239)
  br label %bb59
bb58:
  br label %bb60
bb59:
  br label %bb60
bb60:
  br label %bb61
bb61:
  br label %bb68
bb62:
  br i1 true, label %bb63, label %bb64
bb63:
  br label %bb65
bb64:
  br label %bb67
bb65:
  %t242 = load ptr, ptr %l0, !tbaa !29
  %t243 = load ptr, ptr %l1, !tbaa !29
  %t245 = getelementptr %"compiler/ast:If", ptr %t243, i32 0, i32 2
  %t246 = load ptr, ptr %t245, !tbaa !29
  call void @compiler_2fnames_2ecompiler_2fnames_3aResolver_2estmt(ptr %v0, ptr %v1, ptr %t242, ptr %t246)
  br label %bb66
bb66:
  br label %bb68
bb67:
  call void @__olang_check_failed(ptr @olang_loc_13e109869e44451a_84e972cbfcb81dee)
  unreachable
bb68:
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2fnames_2ecompiler_2fnames_3aResolver_2eintroduce(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1, i32 %a2, ptr %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/source:Span"
  %l2 = alloca i32
  %l3 = alloca ptr
  %l4 = alloca i64
  %l12 = alloca i64
  %l16 = alloca i64
  %l17 = alloca i32
  %l20 = alloca i1
  %l24 = alloca %"compiler/names:local"
  %l27 = alloca ptr
  %l28 = alloca %"compiler/source:Span"
  %l33 = alloca %"compiler/names:Ref"
  %l39 = alloca %"compiler/source:Span"
  %l44 = alloca ptr
  %l45 = alloca %"compiler/source:Span"
  %l46 = alloca i32
  %l48 = alloca i64
  %l51 = alloca i64
  %l53 = alloca %"compiler/names:Ref"
  %s0 = alloca %olang.scope
  %s2 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store %"compiler/source:Span" %a1, ptr %l1
  store i32 %a2, ptr %l2
  store ptr %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l3, !tbaa !29
  %t3 = icmp eq ptr %t1, null
  %t5 = xor i1 %t3, true
  br i1 %t5, label %bb1, label %bb2
bb1:
  %t7 = load ptr, ptr %l0, !tbaa !29
  %t8 = load ptr, ptr %l3, !tbaa !29
  call void @compiler_2fnames_2ecompiler_2fnames_3aResolver_2etypeRef(ptr %v0, ptr %v1, ptr %t7, ptr %t8)
  br label %bb3
bb2:
  br label %bb4
bb3:
  br label %bb4
bb4:
  %t12 = load ptr, ptr %l0, !tbaa !29
  %t14 = getelementptr %"compiler/names:Resolver", ptr %t12, i32 0, i32 8
  %t15 = load i32, ptr %l2, !tbaa !23
  %t18 = call { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fsource_3aNameId_2c_20I64_3e_H2a27ec2ae5362b2f0ac6d54f3e063c70(ptr %v0, ptr %t14, i32 %t15)
  %t19 = extractvalue { i32, i64 } %t18, 1
  %t20 = extractvalue { i32, i64 } %t18, 0
  store i32 %t20, ptr %l17
  %t21 = icmp ne i32 %t20, 0
  br i1 %t21, label %bb6, label %ok.22, !prof !99
ok.22:
  store i64 %t19, ptr %l16
  br label %bb5
bb5:
  %t23 = load i64, ptr %l16, !tbaa !24
  store i64 %t23, ptr %l12, !tbaa !24
  br label %bb8
bb6:
  br label %bb7
bb7:
  store i64 -1, ptr %l12, !tbaa !24
  br label %bb8
bb8:
  %t24 = load i64, ptr %l12, !tbaa !24
  store i64 %t24, ptr %l4, !tbaa !24
  %t25 = load i64, ptr %l4, !tbaa !24
  %t27 = icmp sge i64 %t25, 0
  br i1 %t27, label %bb9, label %bb10
bb9:
  %t29 = load ptr, ptr %l0, !tbaa !29
  %t31 = getelementptr %"compiler/names:Resolver", ptr %t29, i32 0, i32 7
  %t32 = load i64, ptr %l4, !tbaa !24
  %t35 = call %"compiler/names:local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fnames_3alocal_3e_2eAt_3ccompiler_2fnames_3alocal_3e(ptr %v0, ptr %t31, i64 %t32)
  store %"compiler/names:local" %t35, ptr %l24
  br label %bb11
bb10:
  store i1 false, ptr %l20, !tbaa !21
  br label %bb12
bb11:
  %t36 = getelementptr %"compiler/names:local", ptr %l24, i32 0, i32 2
  %t37 = load i32, ptr %t36, !range !{i32 0, i32 9}
  %t39 = trunc i64 8 to i32
  %t40 = icmp eq i32 %t37, %t39
  store i1 %t40, ptr %l20, !tbaa !21
  br label %bb12
bb12:
  %t42 = load i1, ptr %l20, !tbaa !21
  br i1 %t42, label %bb13, label %bb14
bb13:
  store %olang.scope zeroinitializer, ptr %s2
  %t43 = load ptr, ptr %l0, !tbaa !29
  store ptr %t43, ptr %l27, !tbaa !29
  %t44 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t44, ptr %l28
  %t45 = load ptr, ptr %l0, !tbaa !29
  %t47 = getelementptr %"compiler/names:Resolver", ptr %t45, i32 0, i32 6
  %t48 = load i64, ptr %t47, !tbaa !24
  %t49 = load i64, ptr %l4, !tbaa !24
  %t53 = call %"compiler/names:Ref" @compiler_2fnames_3aRef_2ector(ptr %s2, i32 8, i64 %t48, i64 %t49)
  store %"compiler/names:Ref" %t53, ptr %l33
  br label %bb15
bb14:
  br label %bb17
bb15:
  %t54 = load ptr, ptr %l27, !tbaa !29
  %t55 = load %"compiler/source:Span", ptr %l28
  %t56 = load %"compiler/names:Ref", ptr %l33
  call void @compiler_2fnames_2ecompiler_2fnames_3aResolver_2erecord(ptr %v0, ptr %t54, %"compiler/source:Span" %t55, %"compiler/names:Ref" %t56)
  br label %bb16
bb16:
  call void @__olang_scope_close(ptr %s2)
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb17:
  %t57 = load ptr, ptr %l0, !tbaa !29
  %t58 = load ptr, ptr %l0, !tbaa !29
  %t60 = getelementptr %"compiler/names:Resolver", ptr %t58, i32 0, i32 6
  %t61 = load i64, ptr %t60, !tbaa !24
  %t62 = getelementptr %"compiler/source:Span", ptr %l1, i32 0, i32 0
  %t63 = load i32, ptr %t62, !tbaa !23
  %t64 = load i32, ptr %l2, !tbaa !23
  %t69 = call %"compiler/source:Span" @compiler_2fnames_2ecompiler_2fnames_3aResolver_2enameSpan(ptr %v0, ptr %t57, i64 %t61, i32 %t63, i32 %t64)
  store %"compiler/source:Span" %t69, ptr %l39
  br label %bb18
bb18:
  %t70 = load %"compiler/source:Span", ptr %l39
  %t71 = load ptr, ptr %l0, !tbaa !29
  %t72 = load i32, ptr %l2, !tbaa !23
  call void @compiler_2fnames_2ecompiler_2fnames_3aResolver_2ebind(ptr %v0, ptr %t71, i32 %t72, %"compiler/source:Span" %t70, i32 8)
  br label %bb19
bb19:
  %t78 = load ptr, ptr %l0, !tbaa !29
  store ptr %t78, ptr %l44, !tbaa !29
  %t79 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t79, ptr %l45
  store i32 8, ptr %l46
  %t80 = load ptr, ptr %l0, !tbaa !29
  %t82 = getelementptr %"compiler/names:Resolver", ptr %t80, i32 0, i32 6
  %t83 = load i64, ptr %t82, !tbaa !24
  store i64 %t83, ptr %l48, !tbaa !24
  %t84 = load ptr, ptr %l0, !tbaa !29
  %t86 = getelementptr %"compiler/names:Resolver", ptr %t84, i32 0, i32 7
  %t88 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fnames_3alocal_3e_2eLen_3ccompiler_2fnames_3alocal_3e(ptr %v0, ptr %t86)
  store i64 %t88, ptr %l51
  br label %bb20
bb20:
  %t89 = load i64, ptr %l51, !tbaa !24
  %t90 = sub i64 %t89, 1
  %t91 = load i32, ptr %l46, !range !{i32 0, i32 9}
  %t92 = load i64, ptr %l48, !tbaa !24
  %t94 = call %"compiler/names:Ref" @compiler_2fnames_3aRef_2ector(ptr %s0, i32 %t91, i64 %t92, i64 %t90)
  store %"compiler/names:Ref" %t94, ptr %l53
  br label %bb21
bb21:
  %t95 = load ptr, ptr %l44, !tbaa !29
  %t96 = load %"compiler/source:Span", ptr %l45
  %t97 = load %"compiler/names:Ref", ptr %l53
  call void @compiler_2fnames_2ecompiler_2fnames_3aResolver_2erecord(ptr %v0, ptr %t95, %"compiler/source:Span" %t96, %"compiler/names:Ref" %t97)
  br label %bb22
bb22:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2fnames_2ecompiler_2fnames_3aResolver_2ejudge(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca %"compiler/names:local"
  %l3 = alloca { i64, ptr }
  %l4 = alloca ptr
  %l5 = alloca i64
  %l6 = alloca %"compiler/source:Span"
  %l7 = alloca ptr
  %l10 = alloca i1
  %l11 = alloca i64
  %l14 = alloca i64
  %l19 = alloca %"compiler/names:local"
  %l22 = alloca i1
  %l26 = alloca { i64, ptr }
  %l29 = alloca i64
  %l31 = alloca i64
  %l36 = alloca %"compiler/source:Span"
  %l42 = alloca ptr
  %l52 = alloca i1
  %l56 = alloca ptr
  %l62 = alloca ptr
  %l68 = alloca %"compiler/names:Unread"
  %s0 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load i64, ptr %l1, !tbaa !24
  %t3 = icmp slt i64 %t1, 0
  br i1 %t3, label %bb1, label %bb2
bb1:
  store i1 true, ptr %l10, !tbaa !21
  br label %bb4
bb2:
  %t5 = load i64, ptr %l1, !tbaa !24
  store i64 %t5, ptr %l11, !tbaa !24
  %t6 = load ptr, ptr %l0, !tbaa !29
  %t8 = getelementptr %"compiler/names:Resolver", ptr %t6, i32 0, i32 7
  %t10 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fnames_3alocal_3e_2eLen_3ccompiler_2fnames_3alocal_3e(ptr %v0, ptr %t8)
  store i64 %t10, ptr %l14
  br label %bb3
bb3:
  %t11 = load i64, ptr %l11, !tbaa !24
  %t12 = load i64, ptr %l14, !tbaa !24
  %t13 = icmp sge i64 %t11, %t12
  store i1 %t13, ptr %l10, !tbaa !21
  br label %bb4
bb4:
  %t15 = load i1, ptr %l10, !tbaa !21
  br i1 %t15, label %bb5, label %bb6
bb5:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb6:
  br label %bb7
bb7:
  %t16 = load ptr, ptr %l0, !tbaa !29
  %t18 = getelementptr %"compiler/names:Resolver", ptr %t16, i32 0, i32 7
  %t19 = load i64, ptr %l1, !tbaa !24
  %t22 = call %"compiler/names:local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fnames_3alocal_3e_2eAt_3ccompiler_2fnames_3alocal_3e(ptr %v0, ptr %t18, i64 %t19)
  store %"compiler/names:local" %t22, ptr %l19
  br label %bb8
bb8:
  %t23 = load %"compiler/names:local", ptr %l19
  store %"compiler/names:local" %t23, ptr %l2
  %t24 = getelementptr %"compiler/names:local", ptr %l2, i32 0, i32 3
  %t25 = load i1, ptr %t24, !tbaa !21
  %t27 = xor i1 %t25, true
  br i1 %t27, label %bb9, label %bb10
bb9:
  store i1 true, ptr %l22, !tbaa !21
  br label %bb11
bb10:
  %t29 = getelementptr %"compiler/names:local", ptr %l2, i32 0, i32 5
  %t30 = load i1, ptr %t29, !tbaa !21
  store i1 %t30, ptr %l22, !tbaa !21
  br label %bb11
bb11:
  %t32 = load i1, ptr %l22, !tbaa !21
  br i1 %t32, label %bb12, label %bb13
bb12:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb13:
  br label %bb14
bb14:
  %t33 = load ptr, ptr %l0, !tbaa !29
  %t34 = getelementptr %"compiler/names:local", ptr %l2, i32 0, i32 0
  %t35 = load i32, ptr %t34, !tbaa !23
  %t38 = call { i64, ptr } @compiler_2fnames_2ecompiler_2fnames_3aResolver_2etext(ptr %v0, ptr %v0, ptr %t33, i32 %t35)
  store { i64, ptr } %t38, ptr %l26
  br label %bb15
bb15:
  %t39 = load { i64, ptr }, ptr %l26, !tbaa !27
  store { i64, ptr } %t39, ptr %l3, !tbaa !27
  %t40 = load ptr, ptr %l0, !tbaa !29
  %t42 = getelementptr %"compiler/names:Resolver", ptr %t40, i32 0, i32 17
  store ptr %t42, ptr %l4, !tbaa !29
  store i64 0, ptr %l5, !tbaa !24
  br label %bb16
bb16:
  %t44 = load i64, ptr %l5, !tbaa !24
  store i64 %t44, ptr %l29, !tbaa !24
  %t45 = load ptr, ptr %l4, !tbaa !29
  %t47 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aSpan_3e_2eLen_3ccompiler_2fsource_3aSpan_3e(ptr %v0, ptr %t45)
  store i64 %t47, ptr %l31
  br label %bb17
bb17:
  %t48 = load i64, ptr %l29, !tbaa !24
  %t49 = load i64, ptr %l31, !tbaa !24
  %t50 = icmp slt i64 %t48, %t49
  %t52 = xor i1 %t50, true
  br i1 %t52, label %bb18, label %bb19
bb18:
  br label %bb31
bb19:
  br label %bb20
bb20:
  %t54 = load ptr, ptr %l4, !tbaa !29
  %t55 = load i64, ptr %l5, !tbaa !24
  %t58 = call %"compiler/source:Span" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aSpan_3e_2eAt_3ccompiler_2fsource_3aSpan_3e(ptr %v0, ptr %t54, i64 %t55)
  store %"compiler/source:Span" %t58, ptr %l36
  br label %bb21
bb21:
  %t59 = load %"compiler/source:Span", ptr %l36
  store %"compiler/source:Span" %t59, ptr %l6
  %t60 = load ptr, ptr %l0, !tbaa !29
  %t62 = getelementptr %"compiler/names:Resolver", ptr %t60, i32 0, i32 0
  %t63 = load ptr, ptr %t62, !tbaa !29
  %t65 = getelementptr %"compiler/load:Loader", ptr %t63, i32 0, i32 10
  %t66 = load ptr, ptr %l0, !tbaa !29
  %t68 = getelementptr %"compiler/names:Resolver", ptr %t66, i32 0, i32 6
  %t69 = load i64, ptr %t68, !tbaa !24
  %t72 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H7bcf2aeb09afa796f4333e6ec8c3f63f(ptr %v0, ptr %v0, ptr %t65, i64 %t69)
  store ptr %t72, ptr %l42
  br label %bb22
bb22:
  %t73 = load ptr, ptr %l42, !tbaa !29
  %t75 = getelementptr %"compiler/load:Module", ptr %t73, i32 0, i32 6
  %t76 = load ptr, ptr %t75, !tbaa !29
  store ptr %t76, ptr %l7, !tbaa !29
  %t78 = load ptr, ptr %l7, !tbaa !29
  %t80 = icmp eq ptr %t78, null
  br i1 %t80, label %bb23, label %bb24
bb23:
  call void @__olang_check_failed(ptr @olang_loc_29838351972cb384_2d79eff554670e58)
  unreachable
bb24:
  br label %bb25
bb25:
  %t82 = load ptr, ptr %l7, !tbaa !29
  %t85 = getelementptr %"compiler/source:Source", ptr %t82, i32 0, i32 1
  %t86 = load { i64, ptr }, ptr %t85, !tbaa !27
  %t87 = load %"compiler/source:Span", ptr %l6
  %t88 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t92 = call i1 @compiler_2fnames_2eMentions(ptr %v0, ptr %v0, { i64, ptr } %t86, %"compiler/source:Span" %t87, { i64, ptr } %t88)
  store i1 %t92, ptr %l52
  br label %bb26
bb26:
  %t93 = load i1, ptr %l52, !tbaa !21
  br i1 %t93, label %bb27, label %bb28
bb27:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb28:
  br label %bb29
bb29:
  br label %bb30
bb30:
  %t94 = load i64, ptr %l5, !tbaa !24
  %t96 = add i64 %t94, 1
  store i64 %t96, ptr %l5, !tbaa !24
  br label %bb16
bb31:
  %t98 = load ptr, ptr %l0, !tbaa !29
  %t100 = getelementptr %"compiler/names:Resolver", ptr %t98, i32 0, i32 18
  store ptr %t100, ptr %l56, !tbaa !29
  %t101 = load ptr, ptr %l0, !tbaa !29
  %t103 = getelementptr %"compiler/names:Resolver", ptr %t101, i32 0, i32 0
  %t104 = load ptr, ptr %t103, !tbaa !29
  %t106 = getelementptr %"compiler/load:Loader", ptr %t104, i32 0, i32 10
  %t107 = load ptr, ptr %l0, !tbaa !29
  %t109 = getelementptr %"compiler/names:Resolver", ptr %t107, i32 0, i32 6
  %t110 = load i64, ptr %t109, !tbaa !24
  %t113 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H7bcf2aeb09afa796f4333e6ec8c3f63f(ptr %v0, ptr %v0, ptr %t106, i64 %t110)
  store ptr %t113, ptr %l62
  br label %bb32
bb32:
  %t114 = load ptr, ptr %l62, !tbaa !29
  %t116 = getelementptr %"compiler/load:Module", ptr %t114, i32 0, i32 4
  %t117 = load i64, ptr %t116, !tbaa !24
  %t118 = getelementptr %"compiler/names:local", ptr %l2, i32 0, i32 1
  %t119 = load %"compiler/source:Span", ptr %t118
  %t120 = getelementptr %"compiler/names:local", ptr %l2, i32 0, i32 0
  %t121 = load i32, ptr %t120, !tbaa !23
  %t122 = getelementptr %"compiler/names:local", ptr %l2, i32 0, i32 4
  %t123 = load i1, ptr %t122, !tbaa !21
  %t128 = call %"compiler/names:Unread" @compiler_2fnames_3aUnread_2ector(ptr %s0, i64 %t117, %"compiler/source:Span" %t119, i32 %t121, i1 %t123)
  store %"compiler/names:Unread" %t128, ptr %l68
  br label %bb33
bb33:
  %t129 = load ptr, ptr %l56, !tbaa !29
  %t130 = load %"compiler/names:Unread", ptr %l68
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fnames_3aUnread_3e_2ePush_3ccompiler_2fnames_3aUnread_3e(ptr %v0, ptr %t129, %"compiler/names:Unread" %t130)
  br label %bb34
bb34:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local i64 @compiler_2fnames_2ecompiler_2fnames_3aResolver_2emark(ptr %v0, ptr %a0) #0 {
entry:
  %l3 = alloca i64
  %rv = alloca i64
  br label %start
start:
  br label %bb0
bb0:
  %t3 = getelementptr %"compiler/names:Resolver", ptr %a0, i32 0, i32 9
  %t5 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fpair_3aPair_3ccompiler_2fsource__H04f1a4a88576bd1070c12151a5c28d38(ptr %v0, ptr %t3)
  store i64 %t5, ptr %l3
  br label %bb1
bb1:
  %t6 = load i64, ptr %l3, !tbaa !24
  store i64 %t6, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local %"compiler/names:Ref" @compiler_2fnames_2ecompiler_2fnames_3aResolver_2ememberOf(ptr %v0, ptr %a0, i64 %a1, i32 %a2) #0 {
entry:
  %l1 = alloca i64
  %l2 = alloca i32
  %l3 = alloca ptr
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l10 = alloca ptr
  %l11 = alloca i64
  %l15 = alloca i64
  %l16 = alloca i32
  %l22 = alloca %"compiler/names:Entry"
  %l26 = alloca %"compiler/names:Ref"
  %l27 = alloca i64
  %l31 = alloca i64
  %l32 = alloca i32
  %l38 = alloca %"compiler/names:Ref"
  %l39 = alloca i64
  %l43 = alloca i64
  %l44 = alloca i32
  %l49 = alloca %"compiler/names:Ref"
  %l51 = alloca %"compiler/names:Ref"
  %s0 = alloca %olang.scope
  %s1 = alloca %olang.scope
  %s2 = alloca %olang.scope
  %s3 = alloca %olang.scope
  %rv = alloca %"compiler/names:Ref"
  store i64 %a1, ptr %l1
  store i32 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t3 = getelementptr %"compiler/names:Resolver", ptr %a0, i32 0, i32 1
  %t4 = load i64, ptr %l1, !tbaa !24
  %t7 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fnames_3aTable_26_3e_2_Hc2ccbbc5952c057a60f016e9cc1626d2(ptr %v0, ptr %v0, ptr %t3, i64 %t4)
  store ptr %t7, ptr %l10
  br label %bb1
bb1:
  %t8 = load ptr, ptr %l10, !tbaa !29
  store ptr %t8, ptr %l3, !tbaa !29
  %t9 = load ptr, ptr %l3, !tbaa !29
  %t11 = getelementptr %"compiler/names:Table", ptr %t9, i32 0, i32 1
  %t12 = load i32, ptr %l2, !tbaa !23
  %t15 = call { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fsource_3aNameId_2c_20I64_3e_H2a27ec2ae5362b2f0ac6d54f3e063c70(ptr %v0, ptr %t11, i32 %t12)
  %t16 = extractvalue { i32, i64 } %t15, 1
  %t17 = extractvalue { i32, i64 } %t15, 0
  store i32 %t17, ptr %l16
  %t18 = icmp ne i32 %t17, 0
  br i1 %t18, label %bb3, label %ok.19, !prof !99
ok.19:
  store i64 %t16, ptr %l15
  br label %bb2
bb2:
  %t20 = load i64, ptr %l15, !tbaa !24
  store i64 %t20, ptr %l11, !tbaa !24
  br label %bb5
bb3:
  br label %bb4
bb4:
  store i64 -1, ptr %l11, !tbaa !24
  br label %bb5
bb5:
  %t21 = load i64, ptr %l11, !tbaa !24
  store i64 %t21, ptr %l4, !tbaa !24
  %t22 = load i64, ptr %l4, !tbaa !24
  %t24 = icmp sge i64 %t22, 0
  br i1 %t24, label %bb6, label %bb7
bb6:
  store %olang.scope zeroinitializer, ptr %s1
  %t26 = load ptr, ptr %l3, !tbaa !29
  %t28 = getelementptr %"compiler/names:Table", ptr %t26, i32 0, i32 0
  %t29 = load i64, ptr %l4, !tbaa !24
  %t32 = call %"compiler/names:Entry" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fnames_3aEntry_3e_2eAt_3ccompiler_2fnames_3aEntry_3e(ptr %v0, ptr %s1, ptr %t28, i64 %t29)
  store %"compiler/names:Entry" %t32, ptr %l22
  br label %bb8
bb7:
  br label %bb10
bb8:
  %t33 = getelementptr %"compiler/names:Entry", ptr %l22, i32 0, i32 2
  %t34 = load i32, ptr %t33, !range !{i32 0, i32 9}
  %t35 = load i64, ptr %l1, !tbaa !24
  %t36 = load i64, ptr %l4, !tbaa !24
  %t40 = call %"compiler/names:Ref" @compiler_2fnames_3aRef_2ector(ptr %s1, i32 %t34, i64 %t35, i64 %t36)
  store %"compiler/names:Ref" %t40, ptr %l26
  br label %bb9
bb9:
  call void @__olang_scope_close(ptr %s1)
  call void @__olang_scope_close(ptr %s0)
  %t41 = load %"compiler/names:Ref", ptr %l26
  store %"compiler/names:Ref" %t41, ptr %rv
  br label %ret
bb10:
  %t42 = load ptr, ptr %l3, !tbaa !29
  %t44 = getelementptr %"compiler/names:Table", ptr %t42, i32 0, i32 2
  %t45 = load i32, ptr %l2, !tbaa !23
  %t48 = call { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fsource_3aNameId_2c_20I64_3e_H2a27ec2ae5362b2f0ac6d54f3e063c70(ptr %v0, ptr %t44, i32 %t45)
  %t49 = extractvalue { i32, i64 } %t48, 1
  %t50 = extractvalue { i32, i64 } %t48, 0
  store i32 %t50, ptr %l32
  %t51 = icmp ne i32 %t50, 0
  br i1 %t51, label %bb12, label %ok.52, !prof !99
ok.52:
  store i64 %t49, ptr %l31
  br label %bb11
bb11:
  %t53 = load i64, ptr %l31, !tbaa !24
  store i64 %t53, ptr %l27, !tbaa !24
  br label %bb14
bb12:
  br label %bb13
bb13:
  store i64 -1, ptr %l27, !tbaa !24
  br label %bb14
bb14:
  %t54 = load i64, ptr %l27, !tbaa !24
  store i64 %t54, ptr %l5, !tbaa !24
  %t55 = load i64, ptr %l5, !tbaa !24
  %t57 = icmp sge i64 %t55, 0
  br i1 %t57, label %bb15, label %bb16
bb15:
  store %olang.scope zeroinitializer, ptr %s2
  %t59 = load i64, ptr %l1, !tbaa !24
  %t60 = load i64, ptr %l5, !tbaa !24
  %t64 = call %"compiler/names:Ref" @compiler_2fnames_3aRef_2ector(ptr %s2, i32 4, i64 %t59, i64 %t60)
  store %"compiler/names:Ref" %t64, ptr %l38
  br label %bb17
bb16:
  br label %bb18
bb17:
  call void @__olang_scope_close(ptr %s2)
  call void @__olang_scope_close(ptr %s0)
  %t65 = load %"compiler/names:Ref", ptr %l38
  store %"compiler/names:Ref" %t65, ptr %rv
  br label %ret
bb18:
  %t66 = load ptr, ptr %l3, !tbaa !29
  %t68 = getelementptr %"compiler/names:Table", ptr %t66, i32 0, i32 3
  %t69 = load i32, ptr %l2, !tbaa !23
  %t72 = call { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fsource_3aNameId_2c_20I64_3e_H2a27ec2ae5362b2f0ac6d54f3e063c70(ptr %v0, ptr %t68, i32 %t69)
  %t73 = extractvalue { i32, i64 } %t72, 1
  %t74 = extractvalue { i32, i64 } %t72, 0
  store i32 %t74, ptr %l44
  %t75 = icmp ne i32 %t74, 0
  br i1 %t75, label %bb20, label %ok.76, !prof !99
ok.76:
  store i64 %t73, ptr %l43
  br label %bb19
bb19:
  %t77 = load i64, ptr %l43, !tbaa !24
  store i64 %t77, ptr %l39, !tbaa !24
  br label %bb22
bb20:
  br label %bb21
bb21:
  store i64 -1, ptr %l39, !tbaa !24
  br label %bb22
bb22:
  %t78 = load i64, ptr %l39, !tbaa !24
  store i64 %t78, ptr %l6, !tbaa !24
  %t79 = load i64, ptr %l6, !tbaa !24
  %t81 = icmp sge i64 %t79, 0
  br i1 %t81, label %bb23, label %bb24
bb23:
  store %olang.scope zeroinitializer, ptr %s3
  %t83 = load i64, ptr %l6, !tbaa !24
  %t86 = call %"compiler/names:Ref" @compiler_2fnames_3aRef_2ector(ptr %s3, i32 5, i64 %t83, i64 -1)
  store %"compiler/names:Ref" %t86, ptr %l49
  br label %bb25
bb24:
  br label %bb26
bb25:
  call void @__olang_scope_close(ptr %s3)
  call void @__olang_scope_close(ptr %s0)
  %t87 = load %"compiler/names:Ref", ptr %l49
  store %"compiler/names:Ref" %t87, ptr %rv
  br label %ret
bb26:
  %t89 = call %"compiler/names:Ref" @compiler_2fnames_3aRef_2ector(ptr %s0, i32 0, i64 -1, i64 -1)
  store %"compiler/names:Ref" %t89, ptr %l51
  br label %bb27
bb27:
  call void @__olang_scope_close(ptr %s0)
  %t90 = load %"compiler/names:Ref", ptr %l51
  store %"compiler/names:Ref" %t90, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/names:Ref", ptr %rv
  ret %"compiler/names:Ref" %rr
}

define dso_local void @compiler_2fnames_2ecompiler_2fnames_3aResolver_2ename(ptr %v0, ptr %a0, %"compiler/source:Span" %a1, i32 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/source:Span"
  %l2 = alloca i32
  %l3 = alloca %"compiler/names:Ref"
  %l6 = alloca %"compiler/names:Ref"
  %l14 = alloca i1
  %l17 = alloca i1
  %l20 = alloca { i64, ptr }
  %l21 = alloca i1
  %s0 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store %"compiler/source:Span" %a1, ptr %l1
  store i32 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load i32, ptr %l2, !tbaa !23
  %t5 = call %"compiler/names:Ref" @compiler_2fnames_2ecompiler_2fnames_3aResolver_2elookup(ptr %v0, ptr %t1, i32 %t2)
  store %"compiler/names:Ref" %t5, ptr %l6
  br label %bb1
bb1:
  %t6 = load %"compiler/names:Ref", ptr %l6
  store %"compiler/names:Ref" %t6, ptr %l3
  %t7 = load ptr, ptr %l0, !tbaa !29
  %t8 = load %"compiler/source:Span", ptr %l1
  %t9 = load %"compiler/names:Ref", ptr %l3
  call void @compiler_2fnames_2ecompiler_2fnames_3aResolver_2erecord(ptr %v0, ptr %t7, %"compiler/source:Span" %t8, %"compiler/names:Ref" %t9)
  br label %bb2
bb2:
  %t13 = load ptr, ptr %l0, !tbaa !29
  %t14 = load %"compiler/names:Ref", ptr %l3
  call void @compiler_2fnames_2ecompiler_2fnames_3aResolver_2eread(ptr %v0, ptr %t13, %"compiler/names:Ref" %t14)
  br label %bb3
bb3:
  %t17 = getelementptr %"compiler/names:Ref", ptr %l3, i32 0, i32 0
  %t18 = load i32, ptr %t17, !range !{i32 0, i32 9}
  %t20 = trunc i64 0 to i32
  %t21 = icmp eq i32 %t18, %t20
  br i1 %t21, label %bb4, label %bb5
bb4:
  %t23 = load ptr, ptr %l0, !tbaa !29
  %t25 = getelementptr %"compiler/names:Resolver", ptr %t23, i32 0, i32 12
  %t26 = load i1, ptr %t25, !tbaa !21
  store i1 %t26, ptr %l14, !tbaa !21
  br label %bb6
bb5:
  store i1 false, ptr %l14, !tbaa !21
  br label %bb6
bb6:
  %t28 = load i1, ptr %l14, !tbaa !21
  br i1 %t28, label %bb7, label %bb8
bb7:
  %t29 = load ptr, ptr %l0, !tbaa !29
  %t30 = load i32, ptr %l2, !tbaa !23
  %t33 = call { i64, ptr } @compiler_2fnames_2ecompiler_2fnames_3aResolver_2etext(ptr %v0, ptr %v0, ptr %t29, i32 %t30)
  store { i64, ptr } %t33, ptr %l20
  br label %bb9
bb8:
  store i1 false, ptr %l17, !tbaa !21
  br label %bb11
bb9:
  %t34 = load { i64, ptr }, ptr %l20, !tbaa !27
  %t35 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t34, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d22, i32 0, i32 1) })
  store i1 %t35, ptr %l21
  br label %bb10
bb10:
  %t36 = load i1, ptr %l21, !tbaa !21
  %t37 = xor i1 %t36, true
  store i1 %t37, ptr %l17, !tbaa !21
  br label %bb11
bb11:
  %t39 = load i1, ptr %l17, !tbaa !21
  br i1 %t39, label %bb12, label %bb13
bb12:
  %t40 = load ptr, ptr %l0, !tbaa !29
  %t41 = load %"compiler/source:Span", ptr %l1
  %t42 = load i32, ptr %l2, !tbaa !23
  call void @compiler_2fnames_2ecompiler_2fnames_3aResolver_2eunknownInCond(ptr %v0, ptr %t40, %"compiler/source:Span" %t41, i32 %t42)
  br label %bb14
bb13:
  br label %bb15
bb14:
  br label %bb15
bb15:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local %"compiler/source:Span" @compiler_2fnames_2ecompiler_2fnames_3aResolver_2enameSpan(ptr %v0, ptr %a0, i64 %a1, i32 %a2, i32 %a3) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca i32
  %l4 = alloca ptr
  %l5 = alloca { i64, ptr }
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca { i64, ptr }
  %l10 = alloca i64
  %l11 = alloca i64
  %l12 = alloca i64
  %l13 = alloca i64
  %l14 = alloca i64
  %l15 = alloca i64
  %l16 = alloca %"compiler/token:Token"
  %l21 = alloca ptr
  %l39 = alloca { i64, ptr }
  %l49 = alloca { i64, ptr }
  %l56 = alloca i64
  %l59 = alloca i64
  %l77 = alloca { i64, ptr }
  %l82 = alloca i1
  %l89 = alloca i1
  %l96 = alloca { i64, ptr }
  %l98 = alloca i64
  %l100 = alloca i64
  %l101 = alloca i64
  %l107 = alloca i1
  %l110 = alloca %"compiler/source:Span"
  %l115 = alloca %"compiler/source:Span"
  %s0 = alloca %olang.scope
  %s7 = alloca %olang.scope
  %rv = alloca %"compiler/source:Span"
  store ptr %a0, ptr %l0
  store i32 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/names:Resolver", ptr %t1, i32 0, i32 0
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t6 = getelementptr %"compiler/load:Loader", ptr %t4, i32 0, i32 10
  %t10 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H7bcf2aeb09afa796f4333e6ec8c3f63f(ptr %v0, ptr %v0, ptr %t6, i64 %a1)
  store ptr %t10, ptr %l21
  br label %bb1
bb1:
  %t11 = load ptr, ptr %l21, !tbaa !29
  store ptr %t11, ptr %l4, !tbaa !29
  %t12 = load ptr, ptr %l4, !tbaa !29
  %t14 = getelementptr %"compiler/load:Module", ptr %t12, i32 0, i32 7
  %t15 = load ptr, ptr %t14, !tbaa !29
  %t17 = icmp eq ptr %t15, null
  br i1 %t17, label %bb2, label %bb3
bb2:
  call void @__olang_check_failed(ptr @olang_loc_8d565d6672144814_e400a405fc887290)
  unreachable
bb3:
  br label %bb4
bb4:
  %t19 = load ptr, ptr %l4, !tbaa !29
  %t21 = getelementptr %"compiler/load:Module", ptr %t19, i32 0, i32 7
  %t22 = load ptr, ptr %t21, !tbaa !29
  %t25 = getelementptr %"compiler/scan:Tokens", ptr %t22, i32 0, i32 0
  %t26 = load { i64, ptr }, ptr %t25, !tbaa !27
  store { i64, ptr } %t26, ptr %l5, !tbaa !27
  store i64 0, ptr %l6, !tbaa !24
  %t28 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t30 = extractvalue { i64, ptr } %t28, 0
  store i64 %t30, ptr %l7, !tbaa !24
  br label %bb5
bb5:
  %t32 = load i64, ptr %l6, !tbaa !24
  %t33 = load i64, ptr %l7, !tbaa !24
  %t36 = icmp slt i64 %t32, %t33
  %t38 = xor i1 %t36, true
  br i1 %t38, label %bb6, label %bb7
bb6:
  br label %bb13
bb7:
  br label %bb8
bb8:
  %t40 = load i64, ptr %l6, !tbaa !24
  %t41 = load i64, ptr %l7, !tbaa !24
  %t44 = add i64 %t40, %t41
  %t46 = sdiv i64 %t44, 2
  store i64 %t46, ptr %l8, !tbaa !24
  %t48 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t48, ptr %l39, !tbaa !27
  %t49 = load i64, ptr %l8, !tbaa !24
  %t51 = getelementptr { i64, ptr }, ptr %l39, i32 0, i32 1
  %t52 = load ptr, ptr %t51, !tbaa !27
  %t53 = getelementptr %"compiler/token:Token", ptr %t52, i64 %t49
  %t54 = getelementptr %"compiler/token:Token", ptr %t53, i32 0, i32 2
  %t55 = load i32, ptr %t54, !tbaa !23
  %t56 = load i32, ptr %l2, !tbaa !23
  %t59 = icmp slt i32 %t55, %t56
  br i1 %t59, label %bb9, label %bb10
bb9:
  %t61 = load i64, ptr %l8, !tbaa !24
  %t63 = add i64 %t61, 1
  store i64 %t63, ptr %l6, !tbaa !24
  br label %bb11
bb10:
  %t65 = load i64, ptr %l8, !tbaa !24
  store i64 %t65, ptr %l7, !tbaa !24
  br label %bb11
bb11:
  br label %bb12
bb12:
  br label %bb5
bb13:
  %t67 = load ptr, ptr %l0, !tbaa !29
  %t71 = call { i64, ptr } @compiler_2fnames_2ecompiler_2fnames_3aResolver_2etext(ptr %v0, ptr %v0, ptr %t67, i32 %a3)
  store { i64, ptr } %t71, ptr %l49
  br label %bb14
bb14:
  %t72 = load { i64, ptr }, ptr %l49, !tbaa !27
  store { i64, ptr } %t72, ptr %l9, !tbaa !27
  %t73 = load i64, ptr %l6, !tbaa !24
  store i64 %t73, ptr %l10, !tbaa !24
  %t75 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t77 = extractvalue { i64, ptr } %t75, 0
  store i64 %t77, ptr %l11, !tbaa !24
  store i64 1, ptr %l12, !tbaa !24
  %t79 = load i64, ptr %l11, !tbaa !24
  %t80 = load i64, ptr %l10, !tbaa !24
  %t83 = icmp sgt i64 %t79, %t80
  br i1 %t83, label %bb15, label %bb16
bb15:
  %t85 = load i64, ptr %l12, !tbaa !24
  %t87 = icmp sgt i64 %t85, 0
  br i1 %t87, label %bb17, label %bb18
bb16:
  store i64 0, ptr %l56, !tbaa !24
  br label %bb20
bb17:
  %t89 = load i64, ptr %l11, !tbaa !24
  %t90 = load i64, ptr %l10, !tbaa !24
  %t93 = sub i64 %t89, %t90
  %t94 = load i64, ptr %l12, !tbaa !24
  %t97 = add i64 %t93, %t94
  %t99 = sub i64 %t97, 1
  %t100 = load i64, ptr %l12, !tbaa !24
  %t103 = sdiv i64 %t99, %t100
  store i64 %t103, ptr %l59, !tbaa !24
  br label %bb19
bb18:
  store i64 0, ptr %l59, !tbaa !24
  br label %bb19
bb19:
  %t105 = load i64, ptr %l59, !tbaa !24
  store i64 %t105, ptr %l56, !tbaa !24
  br label %bb20
bb20:
  %t106 = load i64, ptr %l56, !tbaa !24
  store i64 %t106, ptr %l13, !tbaa !24
  store i64 0, ptr %l14, !tbaa !24
  br label %bb21
bb21:
  %t107 = load i64, ptr %l14, !tbaa !24
  %t108 = load i64, ptr %l13, !tbaa !24
  %t111 = icmp slt i64 %t107, %t108
  %t113 = xor i1 %t111, true
  br i1 %t113, label %bb22, label %bb23
bb22:
  br label %bb49
bb23:
  br label %bb24
bb24:
  %t115 = load i64, ptr %l10, !tbaa !24
  %t116 = load i64, ptr %l14, !tbaa !24
  %t117 = load i64, ptr %l12, !tbaa !24
  %t120 = mul i64 %t116, %t117
  %t123 = add i64 %t115, %t120
  store i64 %t123, ptr %l15, !tbaa !24
  %t125 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t125, ptr %l77, !tbaa !27
  %t126 = load i64, ptr %l15, !tbaa !24
  %t128 = getelementptr { i64, ptr }, ptr %l77, i32 0, i32 1
  %t129 = load ptr, ptr %t128, !tbaa !27
  %t130 = getelementptr %"compiler/token:Token", ptr %t129, i64 %t126
  %t131 = load %"compiler/token:Token", ptr %t130
  store %"compiler/token:Token" %t131, ptr %l16
  %t133 = getelementptr %"compiler/token:Token", ptr %l16, i32 0, i32 0
  %t134 = load i32, ptr %t133, !range !{i32 0, i32 114}
  %t136 = trunc i64 0 to i32
  %t137 = icmp eq i32 %t134, %t136
  br i1 %t137, label %bb25, label %bb26
bb25:
  store i1 true, ptr %l82, !tbaa !21
  br label %bb27
bb26:
  %t139 = load i64, ptr %l15, !tbaa !24
  %t140 = load i64, ptr %l6, !tbaa !24
  %t143 = sub i64 %t139, %t140
  %t145 = icmp sgt i64 %t143, 256
  store i1 %t145, ptr %l82, !tbaa !21
  br label %bb27
bb27:
  %t147 = load i1, ptr %l82, !tbaa !21
  br i1 %t147, label %bb28, label %bb29
bb28:
  br label %bb49
bb29:
  br label %bb30
bb30:
  %t148 = getelementptr %"compiler/token:Token", ptr %l16, i32 0, i32 0
  %t149 = load i32, ptr %t148, !range !{i32 0, i32 114}
  %t151 = trunc i64 1 to i32
  %t152 = icmp eq i32 %t149, %t151
  br i1 %t152, label %bb31, label %bb32
bb31:
  %t154 = load ptr, ptr %l4, !tbaa !29
  %t156 = getelementptr %"compiler/load:Module", ptr %t154, i32 0, i32 6
  %t157 = load ptr, ptr %t156, !tbaa !29
  %t159 = icmp eq ptr %t157, null
  br i1 %t159, label %bb33, label %bb34
bb32:
  store i1 false, ptr %l89, !tbaa !21
  br label %bb43
bb33:
  call void @__olang_check_failed(ptr @olang_loc_494c345e55bc9323_650b6e4eb2f730ef)
  unreachable
bb34:
  br label %bb35
bb35:
  %t161 = load ptr, ptr %l4, !tbaa !29
  %t163 = getelementptr %"compiler/load:Module", ptr %t161, i32 0, i32 6
  %t164 = load ptr, ptr %t163, !tbaa !29
  %t167 = getelementptr %"compiler/source:Source", ptr %t164, i32 0, i32 1
  %t168 = load { i64, ptr }, ptr %t167, !tbaa !27
  store { i64, ptr } %t168, ptr %l96, !tbaa !27
  %t169 = getelementptr %"compiler/token:Token", ptr %l16, i32 0, i32 2
  %t170 = load i32, ptr %t169, !tbaa !23
  %t172 = sext i32 %t170 to i64
  store i64 %t172, ptr %l98, !tbaa !24
  %t173 = getelementptr %"compiler/token:Token", ptr %l16, i32 0, i32 3
  %t174 = load i32, ptr %t173, !tbaa !23
  %t176 = sext i32 %t174 to i64
  store i64 %t176, ptr %l100, !tbaa !24
  %t177 = load { i64, ptr }, ptr %l96, !tbaa !27
  %t178 = extractvalue { i64, ptr } %t177, 0
  store i64 %t178, ptr %l101, !tbaa !24
  %t179 = load i64, ptr %l98, !tbaa !24
  %t180 = icmp sge i64 %t179, 0
  br i1 %t180, label %bb36, label %bb37
bb36:
  %t182 = load i64, ptr %l98, !tbaa !24
  %t183 = load i64, ptr %l100, !tbaa !24
  %t184 = icmp sle i64 %t182, %t183
  br i1 %t184, label %bb38, label %bb39
bb37:
  call void @__olang_check_failed(ptr @olang_loc_9c997e82162b9a5a_f5a213d30049e536)
  unreachable
bb38:
  %t186 = load i64, ptr %l100, !tbaa !24
  %t187 = load i64, ptr %l101, !tbaa !24
  %t188 = icmp sle i64 %t186, %t187
  br i1 %t188, label %bb40, label %bb41
bb39:
  call void @__olang_check_failed(ptr @olang_loc_9c997e82162b9a5a_f5a213d30049e536)
  unreachable
bb40:
  %t190 = getelementptr { i64, ptr }, ptr %l96, i32 0, i32 1
  %t191 = load ptr, ptr %t190, !tbaa !27
  %t192 = load i64, ptr %l98, !tbaa !24
  %t193 = load i64, ptr %l100, !tbaa !24
  %t194 = getelementptr i8, ptr %t191, i64 %t192
  %t195 = sub i64 %t193, %t192
  %t196 = insertvalue { i64, ptr } undef, i64 %t195, 0
  %t197 = insertvalue { i64, ptr } %t196, ptr %t194, 1
  %t198 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t201 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %v0, { i64, ptr } %t197, { i64, ptr } %t198)
  store i1 %t201, ptr %l107
  br label %bb42
bb41:
  call void @__olang_check_failed(ptr @olang_loc_9c997e82162b9a5a_f5a213d30049e536)
  unreachable
bb42:
  %t202 = load i1, ptr %l107, !tbaa !21
  store i1 %t202, ptr %l89, !tbaa !21
  br label %bb43
bb43:
  %t203 = load i1, ptr %l89, !tbaa !21
  br i1 %t203, label %bb44, label %bb45
bb44:
  store %olang.scope zeroinitializer, ptr %s7
  %t204 = getelementptr %"compiler/token:Token", ptr %l16, i32 0, i32 2
  %t205 = load i32, ptr %t204, !tbaa !23
  %t206 = getelementptr %"compiler/token:Token", ptr %l16, i32 0, i32 3
  %t207 = load i32, ptr %t206, !tbaa !23
  %t210 = call %"compiler/source:Span" @compiler_2fsource_3aSpan_2ector(ptr %s7, i32 %t205, i32 %t207)
  store %"compiler/source:Span" %t210, ptr %l110
  br label %bb46
bb45:
  br label %bb47
bb46:
  call void @__olang_scope_close(ptr %s7)
  call void @__olang_scope_close(ptr %s0)
  %t211 = load %"compiler/source:Span", ptr %l110
  store %"compiler/source:Span" %t211, ptr %rv
  br label %ret
bb47:
  br label %bb48
bb48:
  %t212 = load i64, ptr %l14, !tbaa !24
  %t214 = add i64 %t212, 1
  store i64 %t214, ptr %l14, !tbaa !24
  br label %bb21
bb49:
  %t216 = load i32, ptr %l2, !tbaa !23
  %t217 = load i32, ptr %l2, !tbaa !23
  %t220 = call %"compiler/source:Span" @compiler_2fsource_3aSpan_2ector(ptr %s0, i32 %t216, i32 %t217)
  store %"compiler/source:Span" %t220, ptr %l115
  br label %bb50
bb50:
  call void @__olang_scope_close(ptr %s0)
  %t221 = load %"compiler/source:Span", ptr %l115
  store %"compiler/source:Span" %t221, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/source:Span", ptr %rv
  ret %"compiler/source:Span" %rr
}

define dso_local void @compiler_2fnames_2ecompiler_2fnames_3aResolver_2enoShadow(ptr %v0, ptr %a0, i32 %a1, %"compiler/source:Span" %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca %"compiler/source:Span"
  %l3 = alloca ptr
  %l4 = alloca { i64, ptr }
  %l5 = alloca i64
  %l6 = alloca %"compiler/names:Entry"
  %l11 = alloca i64
  %l16 = alloca ptr
  %l19 = alloca { i64, ptr }
  %l20 = alloca i64
  %l24 = alloca i64
  %l25 = alloca i32
  %l31 = alloca %"compiler/names:Entry"
  %l34 = alloca ptr
  %l39 = alloca { i64, [3 x i64] }
  %l42 = alloca %"compiler/diagmsg:Msg"
  %l45 = alloca { i64, ptr }
  %l47 = alloca %"compiler/diagmsg:Msg"
  %l50 = alloca { i64, ptr }
  %l52 = alloca %"compiler/diagmsg:Msg"
  %l53 = alloca i64
  %l56 = alloca ptr
  %l57 = alloca i64
  %l62 = alloca { i64, [3 x i64] }
  %l65 = alloca { i64, ptr }
  %l67 = alloca %"compiler/diagmsg:Msg"
  %l72 = alloca i1
  %l75 = alloca ptr
  %l80 = alloca { i64, [3 x i64] }
  %l83 = alloca { i64, ptr }
  %l85 = alloca %"compiler/diagmsg:Msg"
  %l86 = alloca i64
  %l91 = alloca i1
  %l94 = alloca ptr
  %l99 = alloca { i64, [3 x i64] }
  %l102 = alloca { i64, ptr }
  %l104 = alloca %"compiler/diagmsg:Msg"
  %l105 = alloca i64
  %l110 = alloca i1
  %l111 = alloca i1
  %l116 = alloca i1
  %l117 = alloca i1
  %l119 = alloca i1
  %l122 = alloca ptr
  %l127 = alloca { i64, [3 x i64] }
  %l130 = alloca { i64, ptr }
  %l132 = alloca %"compiler/diagmsg:Msg"
  %l133 = alloca i64
  %l134 = alloca i64
  %l138 = alloca i64
  %l139 = alloca i32
  %l142 = alloca i1
  %l146 = alloca %"compiler/names:local"
  %l151 = alloca ptr
  %l156 = alloca { i64, [3 x i64] }
  %l159 = alloca { i64, ptr }
  %l161 = alloca %"compiler/diagmsg:Msg"
  %l162 = alloca i64
  %s1 = alloca %olang.scope
  %s3 = alloca %olang.scope
  %s5 = alloca %olang.scope
  %s7 = alloca %olang.scope
  %s9 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  store %"compiler/source:Span" %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/names:Resolver", ptr %t1, i32 0, i32 1
  %t4 = load ptr, ptr %l0, !tbaa !29
  %t6 = getelementptr %"compiler/names:Resolver", ptr %t4, i32 0, i32 6
  %t7 = load i64, ptr %t6, !tbaa !24
  %t10 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fnames_3aTable_26_3e_2_Hc2ccbbc5952c057a60f016e9cc1626d2(ptr %v0, ptr %v0, ptr %t3, i64 %t7)
  store ptr %t10, ptr %l16
  br label %bb1
bb1:
  %t11 = load ptr, ptr %l16, !tbaa !29
  store ptr %t11, ptr %l3, !tbaa !29
  %t12 = load ptr, ptr %l0, !tbaa !29
  %t13 = load i32, ptr %l1, !tbaa !23
  %t16 = call { i64, ptr } @compiler_2fnames_2ecompiler_2fnames_3aResolver_2etext(ptr %v0, ptr %v0, ptr %t12, i32 %t13)
  store { i64, ptr } %t16, ptr %l19
  br label %bb2
bb2:
  %t17 = load { i64, ptr }, ptr %l19, !tbaa !27
  store { i64, ptr } %t17, ptr %l4, !tbaa !27
  %t18 = load ptr, ptr %l3, !tbaa !29
  %t20 = getelementptr %"compiler/names:Table", ptr %t18, i32 0, i32 1
  %t21 = load i32, ptr %l1, !tbaa !23
  %t24 = call { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fsource_3aNameId_2c_20I64_3e_H2a27ec2ae5362b2f0ac6d54f3e063c70(ptr %v0, ptr %t20, i32 %t21)
  %t25 = extractvalue { i32, i64 } %t24, 1
  %t26 = extractvalue { i32, i64 } %t24, 0
  store i32 %t26, ptr %l25
  %t27 = icmp ne i32 %t26, 0
  br i1 %t27, label %bb4, label %ok.28, !prof !99
ok.28:
  store i64 %t25, ptr %l24
  br label %bb3
bb3:
  %t29 = load i64, ptr %l24, !tbaa !24
  store i64 %t29, ptr %l20, !tbaa !24
  br label %bb6
bb4:
  br label %bb5
bb5:
  store i64 -1, ptr %l20, !tbaa !24
  br label %bb6
bb6:
  %t30 = load i64, ptr %l20, !tbaa !24
  store i64 %t30, ptr %l5, !tbaa !24
  %t31 = load i64, ptr %l5, !tbaa !24
  %t33 = icmp sge i64 %t31, 0
  br i1 %t33, label %bb7, label %bb8
bb7:
  store %olang.scope zeroinitializer, ptr %s1
  %t35 = load ptr, ptr %l3, !tbaa !29
  %t37 = getelementptr %"compiler/names:Table", ptr %t35, i32 0, i32 0
  %t38 = load i64, ptr %l5, !tbaa !24
  %t41 = call %"compiler/names:Entry" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fnames_3aEntry_3e_2eAt_3ccompiler_2fnames_3aEntry_3e(ptr %v0, ptr %v0, ptr %t37, i64 %t38)
  store %"compiler/names:Entry" %t41, ptr %l31
  br label %bb9
bb8:
  %t42 = load ptr, ptr %l0, !tbaa !29
  %t44 = getelementptr %"compiler/names:Resolver", ptr %t42, i32 0, i32 0
  %t45 = load ptr, ptr %t44, !tbaa !29
  %t47 = getelementptr %"compiler/load:Loader", ptr %t45, i32 0, i32 1
  %t48 = load ptr, ptr %t47, !tbaa !29
  %t49 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t52 = call i1 @compiler_2fcond_2ecompiler_2fcond_3aConsts_2eHas(ptr %v0, ptr %v0, ptr %t48, { i64, ptr } %t49)
  store i1 %t52, ptr %l72
  br label %bb23
bb9:
  %t53 = load %"compiler/names:Entry", ptr %l31
  store %"compiler/names:Entry" %t53, ptr %l6
  %t54 = load ptr, ptr %l0, !tbaa !29
  %t56 = getelementptr %"compiler/names:Resolver", ptr %t54, i32 0, i32 0
  %t57 = load ptr, ptr %t56, !tbaa !29
  %t59 = getelementptr %"compiler/load:Loader", ptr %t57, i32 0, i32 4
  %t60 = load ptr, ptr %t59, !tbaa !29
  store ptr %t60, ptr %l34, !tbaa !29
  %t61 = load ptr, ptr %l0, !tbaa !29
  %t62 = load ptr, ptr %l0, !tbaa !29
  %t64 = getelementptr %"compiler/names:Resolver", ptr %t62, i32 0, i32 6
  %t65 = load i64, ptr %t64, !tbaa !24
  %t66 = load %"compiler/source:Span", ptr %l2
  %t70 = call { i64, [3 x i64] } @compiler_2fnames_2ecompiler_2fnames_3aResolver_2eat(ptr %v0, ptr %t61, i64 %t65, %"compiler/source:Span" %t66)
  store { i64, [3 x i64] } %t70, ptr %l39
  br label %bb10
bb10:
  %t71 = getelementptr %"compiler/names:Entry", ptr %l6, i32 0, i32 2
  %t72 = load i32, ptr %t71, !range !{i32 0, i32 9}
  %t74 = trunc i64 3 to i32
  %t75 = icmp eq i32 %t72, %t74
  br i1 %t75, label %bb11, label %bb12
bb11:
  %t77 = load ptr, ptr %l0, !tbaa !29
  %t78 = load i32, ptr %l1, !tbaa !23
  %t81 = call { i64, ptr } @compiler_2fnames_2ecompiler_2fnames_3aResolver_2etok(ptr %v0, ptr %s1, ptr %t77, i32 %t78)
  store { i64, ptr } %t81, ptr %l45
  br label %bb13
bb12:
  %t82 = load ptr, ptr %l0, !tbaa !29
  %t83 = load i32, ptr %l1, !tbaa !23
  %t86 = call { i64, ptr } @compiler_2fnames_2ecompiler_2fnames_3aResolver_2etok(ptr %v0, ptr %s1, ptr %t82, i32 %t83)
  store { i64, ptr } %t86, ptr %l50
  br label %bb15
bb13:
  %t87 = load { i64, ptr }, ptr %l45, !tbaa !27
  %t88 = extractvalue { i64, ptr } %t87, 0
  %t89 = extractvalue { i64, ptr } %t87, 1
  %t90 = mul i64 %t88, 1
  %t91 = call ptr @__olang_scope_alloc(ptr %s1, i64 %t90)
  call void @llvm.memcpy.p0.p0.i64(ptr %t91, ptr %t89, i64 %t90, i1 false)
  %t92 = insertvalue { i64, ptr } undef, i64 %t88, 0
  %t93 = insertvalue { i64, ptr } %t92, ptr %t91, 1
  %t95 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eShadowsFunction(ptr %s1, ptr %s1, { i64, ptr } %t93)
  store %"compiler/diagmsg:Msg" %t95, ptr %l47
  br label %bb14
bb14:
  %t96 = load %"compiler/diagmsg:Msg", ptr %l47
  store %"compiler/diagmsg:Msg" %t96, ptr %l42
  br label %bb17
bb15:
  %t97 = load { i64, ptr }, ptr %l50, !tbaa !27
  %t98 = extractvalue { i64, ptr } %t97, 0
  %t99 = extractvalue { i64, ptr } %t97, 1
  %t100 = mul i64 %t98, 1
  %t101 = call ptr @__olang_scope_alloc(ptr %s1, i64 %t100)
  call void @llvm.memcpy.p0.p0.i64(ptr %t101, ptr %t99, i64 %t100, i1 false)
  %t102 = insertvalue { i64, ptr } undef, i64 %t98, 0
  %t103 = insertvalue { i64, ptr } %t102, ptr %t101, 1
  %t105 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eShadowsGlobal(ptr %s1, ptr %s1, { i64, ptr } %t103)
  store %"compiler/diagmsg:Msg" %t105, ptr %l52
  br label %bb16
bb16:
  %t106 = load %"compiler/diagmsg:Msg", ptr %l52
  store %"compiler/diagmsg:Msg" %t106, ptr %l42
  br label %bb17
bb17:
  %t107 = load ptr, ptr %l34, !tbaa !29
  %t108 = load { i64, [3 x i64] }, ptr %l39
  %t109 = load %"compiler/diagmsg:Msg", ptr %l42
  %t110 = call i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eError(ptr %v0, ptr %s1, ptr %t107, { i64, [3 x i64] } %t108, %"compiler/diagmsg:Msg" %t109)
  store i64 %t110, ptr %l53
  br label %bb18
bb18:
  %t111 = load i64, ptr %l53, !tbaa !24
  %t112 = load ptr, ptr %l0, !tbaa !29
  %t114 = getelementptr %"compiler/names:Resolver", ptr %t112, i32 0, i32 0
  %t115 = load ptr, ptr %t114, !tbaa !29
  %t117 = getelementptr %"compiler/load:Loader", ptr %t115, i32 0, i32 4
  %t118 = load ptr, ptr %t117, !tbaa !29
  store ptr %t118, ptr %l56, !tbaa !29
  store i64 %t111, ptr %l57, !tbaa !24
  %t120 = load ptr, ptr %l0, !tbaa !29
  %t121 = load ptr, ptr %l0, !tbaa !29
  %t123 = getelementptr %"compiler/names:Resolver", ptr %t121, i32 0, i32 6
  %t124 = load i64, ptr %t123, !tbaa !24
  %t125 = getelementptr %"compiler/names:Entry", ptr %l6, i32 0, i32 1
  %t126 = load %"compiler/source:Span", ptr %t125
  %t130 = call { i64, [3 x i64] } @compiler_2fnames_2ecompiler_2fnames_3aResolver_2eat(ptr %v0, ptr %t120, i64 %t124, %"compiler/source:Span" %t126)
  store { i64, [3 x i64] } %t130, ptr %l62
  br label %bb19
bb19:
  %t131 = load ptr, ptr %l0, !tbaa !29
  %t132 = load i32, ptr %l1, !tbaa !23
  %t135 = call { i64, ptr } @compiler_2fnames_2ecompiler_2fnames_3aResolver_2etok(ptr %v0, ptr %s1, ptr %t131, i32 %t132)
  store { i64, ptr } %t135, ptr %l65
  br label %bb20
bb20:
  %t136 = load { i64, ptr }, ptr %l65, !tbaa !27
  %t137 = extractvalue { i64, ptr } %t136, 0
  %t138 = extractvalue { i64, ptr } %t136, 1
  %t139 = mul i64 %t137, 1
  %t140 = call ptr @__olang_scope_alloc(ptr %s1, i64 %t139)
  call void @llvm.memcpy.p0.p0.i64(ptr %t140, ptr %t138, i64 %t139, i1 false)
  %t141 = insertvalue { i64, ptr } undef, i64 %t137, 0
  %t142 = insertvalue { i64, ptr } %t141, ptr %t140, 1
  %t144 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eNoteDeclaredHere(ptr %s1, ptr %s1, { i64, ptr } %t142)
  store %"compiler/diagmsg:Msg" %t144, ptr %l67
  br label %bb21
bb21:
  %t145 = load ptr, ptr %l56, !tbaa !29
  %t146 = load i64, ptr %l57, !tbaa !24
  %t147 = load { i64, [3 x i64] }, ptr %l62
  %t148 = load %"compiler/diagmsg:Msg", ptr %l67
  call void @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eNote(ptr %v0, ptr %s1, ptr %t145, i64 %t146, { i64, [3 x i64] } %t147, %"compiler/diagmsg:Msg" %t148)
  br label %bb22
bb22:
  call void @__olang_scope_close(ptr %s1)
  br label %bb70
bb23:
  %t149 = load i1, ptr %l72, !tbaa !21
  br i1 %t149, label %bb24, label %bb25
bb24:
  store %olang.scope zeroinitializer, ptr %s3
  %t150 = load ptr, ptr %l0, !tbaa !29
  %t152 = getelementptr %"compiler/names:Resolver", ptr %t150, i32 0, i32 0
  %t153 = load ptr, ptr %t152, !tbaa !29
  %t155 = getelementptr %"compiler/load:Loader", ptr %t153, i32 0, i32 4
  %t156 = load ptr, ptr %t155, !tbaa !29
  store ptr %t156, ptr %l75, !tbaa !29
  %t157 = load ptr, ptr %l0, !tbaa !29
  %t158 = load ptr, ptr %l0, !tbaa !29
  %t160 = getelementptr %"compiler/names:Resolver", ptr %t158, i32 0, i32 6
  %t161 = load i64, ptr %t160, !tbaa !24
  %t162 = load %"compiler/source:Span", ptr %l2
  %t166 = call { i64, [3 x i64] } @compiler_2fnames_2ecompiler_2fnames_3aResolver_2eat(ptr %v0, ptr %t157, i64 %t161, %"compiler/source:Span" %t162)
  store { i64, [3 x i64] } %t166, ptr %l80
  br label %bb26
bb25:
  %t167 = load i32, ptr %l1, !tbaa !23
  %t169 = load ptr, ptr %l0, !tbaa !29
  %t171 = getelementptr %"compiler/names:Resolver", ptr %t169, i32 0, i32 3
  %t175 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fsource_3aNameId_2c_20compil_H6d33fbc050830e537410645e3c893b2c(ptr %v0, ptr %t171, i32 %t167)
  store i1 %t175, ptr %l91
  br label %bb30
bb26:
  %t176 = load ptr, ptr %l0, !tbaa !29
  %t177 = load i32, ptr %l1, !tbaa !23
  %t180 = call { i64, ptr } @compiler_2fnames_2ecompiler_2fnames_3aResolver_2etok(ptr %v0, ptr %s3, ptr %t176, i32 %t177)
  store { i64, ptr } %t180, ptr %l83
  br label %bb27
bb27:
  %t181 = load { i64, ptr }, ptr %l83, !tbaa !27
  %t182 = extractvalue { i64, ptr } %t181, 0
  %t183 = extractvalue { i64, ptr } %t181, 1
  %t184 = mul i64 %t182, 1
  %t185 = call ptr @__olang_scope_alloc(ptr %s3, i64 %t184)
  call void @llvm.memcpy.p0.p0.i64(ptr %t185, ptr %t183, i64 %t184, i1 false)
  %t186 = insertvalue { i64, ptr } undef, i64 %t182, 0
  %t187 = insertvalue { i64, ptr } %t186, ptr %t185, 1
  %t189 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eShadowsBuildConst(ptr %s3, ptr %s3, { i64, ptr } %t187)
  store %"compiler/diagmsg:Msg" %t189, ptr %l85
  br label %bb28
bb28:
  %t190 = load ptr, ptr %l75, !tbaa !29
  %t191 = load { i64, [3 x i64] }, ptr %l80
  %t192 = load %"compiler/diagmsg:Msg", ptr %l85
  %t193 = call i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eError(ptr %v0, ptr %s3, ptr %t190, { i64, [3 x i64] } %t191, %"compiler/diagmsg:Msg" %t192)
  store i64 %t193, ptr %l86
  br label %bb29
bb29:
  call void @__olang_scope_close(ptr %s3)
  br label %bb69
bb30:
  %t194 = load i1, ptr %l91, !tbaa !21
  br i1 %t194, label %bb31, label %bb32
bb31:
  store %olang.scope zeroinitializer, ptr %s5
  %t195 = load ptr, ptr %l0, !tbaa !29
  %t197 = getelementptr %"compiler/names:Resolver", ptr %t195, i32 0, i32 0
  %t198 = load ptr, ptr %t197, !tbaa !29
  %t200 = getelementptr %"compiler/load:Loader", ptr %t198, i32 0, i32 4
  %t201 = load ptr, ptr %t200, !tbaa !29
  store ptr %t201, ptr %l94, !tbaa !29
  %t202 = load ptr, ptr %l0, !tbaa !29
  %t203 = load ptr, ptr %l0, !tbaa !29
  %t205 = getelementptr %"compiler/names:Resolver", ptr %t203, i32 0, i32 6
  %t206 = load i64, ptr %t205, !tbaa !24
  %t207 = load %"compiler/source:Span", ptr %l2
  %t211 = call { i64, [3 x i64] } @compiler_2fnames_2ecompiler_2fnames_3aResolver_2eat(ptr %v0, ptr %t202, i64 %t206, %"compiler/source:Span" %t207)
  store { i64, [3 x i64] } %t211, ptr %l99
  br label %bb33
bb32:
  %t212 = load i32, ptr %l1, !tbaa !23
  %t214 = load ptr, ptr %l3, !tbaa !29
  %t216 = getelementptr %"compiler/names:Table", ptr %t214, i32 0, i32 2
  %t220 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fsource_3aNameId_2c_20I64_3e_Hf575c52a5a9e8993bae2b73c9c2548b3(ptr %v0, ptr %t216, i32 %t212)
  store i1 %t220, ptr %l110
  br label %bb37
bb33:
  %t221 = load ptr, ptr %l0, !tbaa !29
  %t222 = load i32, ptr %l1, !tbaa !23
  %t225 = call { i64, ptr } @compiler_2fnames_2ecompiler_2fnames_3aResolver_2etok(ptr %v0, ptr %s5, ptr %t221, i32 %t222)
  store { i64, ptr } %t225, ptr %l102
  br label %bb34
bb34:
  %t226 = load { i64, ptr }, ptr %l102, !tbaa !27
  %t227 = extractvalue { i64, ptr } %t226, 0
  %t228 = extractvalue { i64, ptr } %t226, 1
  %t229 = mul i64 %t227, 1
  %t230 = call ptr @__olang_scope_alloc(ptr %s5, i64 %t229)
  call void @llvm.memcpy.p0.p0.i64(ptr %t230, ptr %t228, i64 %t229, i1 false)
  %t231 = insertvalue { i64, ptr } undef, i64 %t227, 0
  %t232 = insertvalue { i64, ptr } %t231, ptr %t230, 1
  %t234 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2ePreludeConstRedeclared(ptr %s5, ptr %s5, { i64, ptr } %t232)
  store %"compiler/diagmsg:Msg" %t234, ptr %l104
  br label %bb35
bb35:
  %t235 = load ptr, ptr %l94, !tbaa !29
  %t236 = load { i64, [3 x i64] }, ptr %l99
  %t237 = load %"compiler/diagmsg:Msg", ptr %l104
  %t238 = call i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eError(ptr %v0, ptr %s5, ptr %t235, { i64, [3 x i64] } %t236, %"compiler/diagmsg:Msg" %t237)
  store i64 %t238, ptr %l105
  br label %bb36
bb36:
  call void @__olang_scope_close(ptr %s5)
  br label %bb68
bb37:
  %t239 = load i1, ptr %l110, !tbaa !21
  br i1 %t239, label %bb38, label %bb39
bb38:
  store i1 true, ptr %l111, !tbaa !21
  br label %bb41
bb39:
  %t240 = load i32, ptr %l1, !tbaa !23
  %t242 = load ptr, ptr %l0, !tbaa !29
  %t244 = getelementptr %"compiler/names:Resolver", ptr %t242, i32 0, i32 2
  %t248 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fsource_3aNameId_2c_20I64_3e_Hf575c52a5a9e8993bae2b73c9c2548b3(ptr %v0, ptr %t244, i32 %t240)
  store i1 %t248, ptr %l116
  br label %bb40
bb40:
  %t249 = load i1, ptr %l116, !tbaa !21
  store i1 %t249, ptr %l111, !tbaa !21
  br label %bb41
bb41:
  %t250 = load i1, ptr %l111, !tbaa !21
  br i1 %t250, label %bb42, label %bb43
bb42:
  store i1 true, ptr %l117, !tbaa !21
  br label %bb45
bb43:
  %t251 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t253 = call i1 @compiler_2fnames_2eBuiltinTypeName(ptr %v0, { i64, ptr } %t251)
  store i1 %t253, ptr %l119
  br label %bb44
bb44:
  %t254 = load i1, ptr %l119, !tbaa !21
  store i1 %t254, ptr %l117, !tbaa !21
  br label %bb45
bb45:
  %t255 = load i1, ptr %l117, !tbaa !21
  br i1 %t255, label %bb46, label %bb47
bb46:
  store %olang.scope zeroinitializer, ptr %s7
  %t256 = load ptr, ptr %l0, !tbaa !29
  %t258 = getelementptr %"compiler/names:Resolver", ptr %t256, i32 0, i32 0
  %t259 = load ptr, ptr %t258, !tbaa !29
  %t261 = getelementptr %"compiler/load:Loader", ptr %t259, i32 0, i32 4
  %t262 = load ptr, ptr %t261, !tbaa !29
  store ptr %t262, ptr %l122, !tbaa !29
  %t263 = load ptr, ptr %l0, !tbaa !29
  %t264 = load ptr, ptr %l0, !tbaa !29
  %t266 = getelementptr %"compiler/names:Resolver", ptr %t264, i32 0, i32 6
  %t267 = load i64, ptr %t266, !tbaa !24
  %t268 = load %"compiler/source:Span", ptr %l2
  %t272 = call { i64, [3 x i64] } @compiler_2fnames_2ecompiler_2fnames_3aResolver_2eat(ptr %v0, ptr %t263, i64 %t267, %"compiler/source:Span" %t268)
  store { i64, [3 x i64] } %t272, ptr %l127
  br label %bb48
bb47:
  %t273 = load ptr, ptr %l0, !tbaa !29
  %t275 = getelementptr %"compiler/names:Resolver", ptr %t273, i32 0, i32 8
  %t276 = load i32, ptr %l1, !tbaa !23
  %t279 = call { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fsource_3aNameId_2c_20I64_3e_H2a27ec2ae5362b2f0ac6d54f3e063c70(ptr %v0, ptr %t275, i32 %t276)
  %t280 = extractvalue { i32, i64 } %t279, 1
  %t281 = extractvalue { i32, i64 } %t279, 0
  store i32 %t281, ptr %l139
  %t282 = icmp ne i32 %t281, 0
  br i1 %t282, label %bb53, label %ok.283, !prof !99
ok.283:
  store i64 %t280, ptr %l138
  br label %bb52
bb48:
  %t284 = load ptr, ptr %l0, !tbaa !29
  %t285 = load i32, ptr %l1, !tbaa !23
  %t288 = call { i64, ptr } @compiler_2fnames_2ecompiler_2fnames_3aResolver_2etok(ptr %v0, ptr %s7, ptr %t284, i32 %t285)
  store { i64, ptr } %t288, ptr %l130
  br label %bb49
bb49:
  %t289 = load { i64, ptr }, ptr %l130, !tbaa !27
  %t290 = extractvalue { i64, ptr } %t289, 0
  %t291 = extractvalue { i64, ptr } %t289, 1
  %t292 = mul i64 %t290, 1
  %t293 = call ptr @__olang_scope_alloc(ptr %s7, i64 %t292)
  call void @llvm.memcpy.p0.p0.i64(ptr %t293, ptr %t291, i64 %t292, i1 false)
  %t294 = insertvalue { i64, ptr } undef, i64 %t290, 0
  %t295 = insertvalue { i64, ptr } %t294, ptr %t293, 1
  %t297 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eShadowsType(ptr %s7, ptr %s7, { i64, ptr } %t295)
  store %"compiler/diagmsg:Msg" %t297, ptr %l132
  br label %bb50
bb50:
  %t298 = load ptr, ptr %l122, !tbaa !29
  %t299 = load { i64, [3 x i64] }, ptr %l127
  %t300 = load %"compiler/diagmsg:Msg", ptr %l132
  %t301 = call i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eError(ptr %v0, ptr %s7, ptr %t298, { i64, [3 x i64] } %t299, %"compiler/diagmsg:Msg" %t300)
  store i64 %t301, ptr %l133
  br label %bb51
bb51:
  call void @__olang_scope_close(ptr %s7)
  br label %bb67
bb52:
  %t302 = load i64, ptr %l138, !tbaa !24
  store i64 %t302, ptr %l134, !tbaa !24
  br label %bb55
bb53:
  br label %bb54
bb54:
  store i64 -1, ptr %l134, !tbaa !24
  br label %bb55
bb55:
  %t303 = load i64, ptr %l134, !tbaa !24
  store i64 %t303, ptr %l11, !tbaa !24
  %t304 = load i64, ptr %l11, !tbaa !24
  %t306 = icmp sge i64 %t304, 0
  br i1 %t306, label %bb56, label %bb57
bb56:
  %t308 = load ptr, ptr %l0, !tbaa !29
  %t310 = getelementptr %"compiler/names:Resolver", ptr %t308, i32 0, i32 7
  %t311 = load i64, ptr %l11, !tbaa !24
  %t314 = call %"compiler/names:local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fnames_3alocal_3e_2eAt_3ccompiler_2fnames_3alocal_3e(ptr %v0, ptr %t310, i64 %t311)
  store %"compiler/names:local" %t314, ptr %l146
  br label %bb58
bb57:
  store i1 false, ptr %l142, !tbaa !21
  br label %bb59
bb58:
  %t315 = getelementptr %"compiler/names:local", ptr %l146, i32 0, i32 2
  %t316 = load i32, ptr %t315, !range !{i32 0, i32 9}
  %t318 = trunc i64 8 to i32
  %t319 = icmp eq i32 %t316, %t318
  store i1 %t319, ptr %l142, !tbaa !21
  br label %bb59
bb59:
  %t321 = load i1, ptr %l142, !tbaa !21
  br i1 %t321, label %bb60, label %bb61
bb60:
  store %olang.scope zeroinitializer, ptr %s9
  %t322 = load ptr, ptr %l0, !tbaa !29
  %t324 = getelementptr %"compiler/names:Resolver", ptr %t322, i32 0, i32 0
  %t325 = load ptr, ptr %t324, !tbaa !29
  %t327 = getelementptr %"compiler/load:Loader", ptr %t325, i32 0, i32 4
  %t328 = load ptr, ptr %t327, !tbaa !29
  store ptr %t328, ptr %l151, !tbaa !29
  %t329 = load ptr, ptr %l0, !tbaa !29
  %t330 = load ptr, ptr %l0, !tbaa !29
  %t332 = getelementptr %"compiler/names:Resolver", ptr %t330, i32 0, i32 6
  %t333 = load i64, ptr %t332, !tbaa !24
  %t334 = load %"compiler/source:Span", ptr %l2
  %t338 = call { i64, [3 x i64] } @compiler_2fnames_2ecompiler_2fnames_3aResolver_2eat(ptr %v0, ptr %t329, i64 %t333, %"compiler/source:Span" %t334)
  store { i64, [3 x i64] } %t338, ptr %l156
  br label %bb62
bb61:
  br label %bb66
bb62:
  %t339 = load ptr, ptr %l0, !tbaa !29
  %t340 = load i32, ptr %l1, !tbaa !23
  %t343 = call { i64, ptr } @compiler_2fnames_2ecompiler_2fnames_3aResolver_2etok(ptr %v0, ptr %s9, ptr %t339, i32 %t340)
  store { i64, ptr } %t343, ptr %l159
  br label %bb63
bb63:
  %t344 = load { i64, ptr }, ptr %l159, !tbaa !27
  %t345 = extractvalue { i64, ptr } %t344, 0
  %t346 = extractvalue { i64, ptr } %t344, 1
  %t347 = mul i64 %t345, 1
  %t348 = call ptr @__olang_scope_alloc(ptr %s9, i64 %t347)
  call void @llvm.memcpy.p0.p0.i64(ptr %t348, ptr %t346, i64 %t347, i1 false)
  %t349 = insertvalue { i64, ptr } undef, i64 %t345, 0
  %t350 = insertvalue { i64, ptr } %t349, ptr %t348, 1
  %t352 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eShadowsType(ptr %s9, ptr %s9, { i64, ptr } %t350)
  store %"compiler/diagmsg:Msg" %t352, ptr %l161
  br label %bb64
bb64:
  %t353 = load ptr, ptr %l151, !tbaa !29
  %t354 = load { i64, [3 x i64] }, ptr %l156
  %t355 = load %"compiler/diagmsg:Msg", ptr %l161
  %t356 = call i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eError(ptr %v0, ptr %s9, ptr %t353, { i64, [3 x i64] } %t354, %"compiler/diagmsg:Msg" %t355)
  store i64 %t356, ptr %l162
  br label %bb65
bb65:
  call void @__olang_scope_close(ptr %s9)
  br label %bb66
bb66:
  br label %bb67
bb67:
  br label %bb68
bb68:
  br label %bb69
bb69:
  br label %bb70
bb70:
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2fnames_2ecompiler_2fnames_3aResolver_2eparam(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i1 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l3 = alloca %"compiler/source:Span"
  %l7 = alloca { i64, ptr }
  %l8 = alloca i1
  %l11 = alloca ptr
  %l17 = alloca { i64, [3 x i64] }
  %l18 = alloca %"compiler/diagmsg:Msg"
  %l19 = alloca i64
  %l27 = alloca %"compiler/source:Span"
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
  %t2 = load ptr, ptr %l1, !tbaa !29
  %t4 = getelementptr %"compiler/ast:Param", ptr %t2, i32 0, i32 1
  %t5 = load i32, ptr %t4, !tbaa !23
  %t8 = call { i64, ptr } @compiler_2fnames_2ecompiler_2fnames_3aResolver_2etext(ptr %v0, ptr %v0, ptr %t1, i32 %t5)
  store { i64, ptr } %t8, ptr %l7
  br label %bb1
bb1:
  %t9 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t10 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t9, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d23, i32 0, i32 1) })
  store i1 %t10, ptr %l8
  br label %bb2
bb2:
  %t11 = load i1, ptr %l8, !tbaa !21
  br i1 %t11, label %bb3, label %bb4
bb3:
  store %olang.scope zeroinitializer, ptr %s1
  %t12 = load ptr, ptr %l0, !tbaa !29
  %t14 = getelementptr %"compiler/names:Resolver", ptr %t12, i32 0, i32 0
  %t15 = load ptr, ptr %t14, !tbaa !29
  %t17 = getelementptr %"compiler/load:Loader", ptr %t15, i32 0, i32 4
  %t18 = load ptr, ptr %t17, !tbaa !29
  store ptr %t18, ptr %l11, !tbaa !29
  %t19 = load ptr, ptr %l0, !tbaa !29
  %t20 = load ptr, ptr %l0, !tbaa !29
  %t22 = getelementptr %"compiler/names:Resolver", ptr %t20, i32 0, i32 6
  %t23 = load i64, ptr %t22, !tbaa !24
  %t24 = load ptr, ptr %l1, !tbaa !29
  %t26 = getelementptr %"compiler/ast:Param", ptr %t24, i32 0, i32 0
  %t27 = load %"compiler/source:Span", ptr %t26
  %t31 = call { i64, [3 x i64] } @compiler_2fnames_2ecompiler_2fnames_3aResolver_2eat(ptr %v0, ptr %t19, i64 %t23, %"compiler/source:Span" %t27)
  store { i64, [3 x i64] } %t31, ptr %l17
  br label %bb5
bb4:
  br label %bb8
bb5:
  %t32 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eUnderscoreDeclared(ptr %s1)
  store %"compiler/diagmsg:Msg" %t32, ptr %l18
  br label %bb6
bb6:
  %t33 = load ptr, ptr %l11, !tbaa !29
  %t34 = load { i64, [3 x i64] }, ptr %l17
  %t35 = load %"compiler/diagmsg:Msg", ptr %l18
  %t36 = call i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eError(ptr %v0, ptr %s1, ptr %t33, { i64, [3 x i64] } %t34, %"compiler/diagmsg:Msg" %t35)
  store i64 %t36, ptr %l19
  br label %bb7
bb7:
  call void @__olang_scope_close(ptr %s1)
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb8:
  %t37 = load ptr, ptr %l0, !tbaa !29
  %t38 = load ptr, ptr %l0, !tbaa !29
  %t40 = getelementptr %"compiler/names:Resolver", ptr %t38, i32 0, i32 6
  %t41 = load i64, ptr %t40, !tbaa !24
  %t42 = load ptr, ptr %l1, !tbaa !29
  %t44 = getelementptr %"compiler/ast:Param", ptr %t42, i32 0, i32 0
  %t45 = getelementptr %"compiler/source:Span", ptr %t44, i32 0, i32 0
  %t46 = load i32, ptr %t45, !tbaa !23
  %t47 = load ptr, ptr %l1, !tbaa !29
  %t49 = getelementptr %"compiler/ast:Param", ptr %t47, i32 0, i32 1
  %t50 = load i32, ptr %t49, !tbaa !23
  %t55 = call %"compiler/source:Span" @compiler_2fnames_2ecompiler_2fnames_3aResolver_2enameSpan(ptr %v0, ptr %t37, i64 %t41, i32 %t46, i32 %t50)
  store %"compiler/source:Span" %t55, ptr %l27
  br label %bb9
bb9:
  %t56 = load %"compiler/source:Span", ptr %l27
  store %"compiler/source:Span" %t56, ptr %l3
  br i1 %a2, label %bb10, label %bb11
bb10:
  %t59 = load ptr, ptr %l0, !tbaa !29
  %t60 = load ptr, ptr %l1, !tbaa !29
  %t62 = getelementptr %"compiler/ast:Param", ptr %t60, i32 0, i32 1
  %t63 = load i32, ptr %t62, !tbaa !23
  %t64 = load %"compiler/source:Span", ptr %l3
  call void @compiler_2fnames_2ecompiler_2fnames_3aResolver_2edeclare(ptr %v0, ptr %t59, i32 %t63, %"compiler/source:Span" %t64, i1 false)
  br label %bb12
bb11:
  %t68 = load ptr, ptr %l0, !tbaa !29
  %t69 = load ptr, ptr %l0, !tbaa !29
  %t71 = getelementptr %"compiler/names:Resolver", ptr %t69, i32 0, i32 6
  %t72 = load i64, ptr %t71, !tbaa !24
  %t73 = load ptr, ptr %l1, !tbaa !29
  %t75 = getelementptr %"compiler/ast:Param", ptr %t73, i32 0, i32 1
  %t76 = load i32, ptr %t75, !tbaa !23
  %t77 = load %"compiler/source:Span", ptr %l3
  call void @compiler_2fnames_2ecompiler_2fnames_3aResolver_2enoAliasClash(ptr %v0, ptr %t68, i64 %t72, i32 %t76, %"compiler/source:Span" %t77)
  br label %bb13
bb12:
  br label %bb15
bb13:
  %t82 = load ptr, ptr %l0, !tbaa !29
  %t83 = load ptr, ptr %l1, !tbaa !29
  %t85 = getelementptr %"compiler/ast:Param", ptr %t83, i32 0, i32 1
  %t86 = load i32, ptr %t85, !tbaa !23
  %t87 = load %"compiler/source:Span", ptr %l3
  call void @compiler_2fnames_2ecompiler_2fnames_3aResolver_2ebind(ptr %v0, ptr %t82, i32 %t86, %"compiler/source:Span" %t87, i32 1)
  br label %bb14
bb14:
  br label %bb15
bb15:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2fnames_2ecompiler_2fnames_3aResolver_2eparamStart(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i64
  %l5 = alloca i64
  %l9 = alloca i64
  %l14 = alloca %"compiler/names:local"
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/names:Resolver", ptr %t1, i32 0, i32 7
  %t5 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fnames_3alocal_3e_2eLen_3ccompiler_2fnames_3alocal_3e(ptr %v0, ptr %t3)
  store i64 %t5, ptr %l5
  br label %bb1
bb1:
  %t6 = load i64, ptr %l5, !tbaa !24
  %t7 = icmp eq i64 %t6, 0
  br i1 %t7, label %bb2, label %bb3
bb2:
  br label %ret
bb3:
  br label %bb4
bb4:
  %t9 = load ptr, ptr %l0, !tbaa !29
  %t11 = getelementptr %"compiler/names:Resolver", ptr %t9, i32 0, i32 7
  %t13 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fnames_3alocal_3e_2eLen_3ccompiler_2fnames_3alocal_3e(ptr %v0, ptr %t11)
  store i64 %t13, ptr %l9
  br label %bb5
bb5:
  %t14 = load i64, ptr %l9, !tbaa !24
  %t15 = sub i64 %t14, 1
  store i64 %t15, ptr %l2, !tbaa !24
  %t17 = load ptr, ptr %l0, !tbaa !29
  %t19 = getelementptr %"compiler/names:Resolver", ptr %t17, i32 0, i32 7
  %t20 = load i64, ptr %l2, !tbaa !24
  %t23 = call %"compiler/names:local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fnames_3alocal_3e_2eAt_3ccompiler_2fnames_3alocal_3e(ptr %v0, ptr %t19, i64 %t20)
  store %"compiler/names:local" %t23, ptr %l14
  br label %bb6
bb6:
  %t24 = getelementptr %"compiler/names:local", ptr %l14, i32 0, i32 0
  %t25 = load i32, ptr %t24, !tbaa !23
  %t26 = load ptr, ptr %l1, !tbaa !29
  %t28 = getelementptr %"compiler/ast:Param", ptr %t26, i32 0, i32 1
  %t29 = load i32, ptr %t28, !tbaa !23
  %t32 = icmp eq i32 %t25, %t29
  br i1 %t32, label %bb7, label %bb8
bb7:
  %t34 = load ptr, ptr %l0, !tbaa !29
  %t36 = getelementptr %"compiler/names:Resolver", ptr %t34, i32 0, i32 26
  %t37 = load i64, ptr %l2, !tbaa !24
  %t38 = load ptr, ptr %l1, !tbaa !29
  %t40 = getelementptr %"compiler/ast:Param", ptr %t38, i32 0, i32 0
  %t41 = getelementptr %"compiler/source:Span", ptr %t40, i32 0, i32 0
  %t42 = load i32, ptr %t41, !tbaa !23
  %t44 = sext i32 %t42 to i64
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2ePut_3cI64_2c_20I64_3e(ptr %v0, ptr %t36, i64 %t37, i64 %t44)
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

define dso_local void @compiler_2fnames_2ecompiler_2fnames_3aResolver_2epath(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i32
  %l3 = alloca %"compiler/source:Span"
  %l4 = alloca %"compiler/names:Ref"
  %l7 = alloca i1
  %l13 = alloca { i64, ptr }
  %l21 = alloca %"compiler/source:Span"
  %l24 = alloca %"compiler/names:Ref"
  %l30 = alloca i1
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
  store i1 true, ptr %l7, !tbaa !21
  br label %bb3
bb2:
  %t5 = load ptr, ptr %l1, !tbaa !29
  %t7 = getelementptr %"compiler/ast:Path", ptr %t5, i32 0, i32 1
  %t8 = load { i64, ptr }, ptr %t7, !tbaa !27
  %t10 = extractvalue { i64, ptr } %t8, 0
  %t12 = icmp eq i64 %t10, 0
  store i1 %t12, ptr %l7, !tbaa !21
  br label %bb3
bb3:
  %t14 = load i1, ptr %l7, !tbaa !21
  br i1 %t14, label %bb4, label %bb5
bb4:
  br label %ret
bb5:
  br label %bb6
bb6:
  %t15 = load ptr, ptr %l1, !tbaa !29
  %t17 = getelementptr %"compiler/ast:Path", ptr %t15, i32 0, i32 1
  %t18 = load { i64, ptr }, ptr %t17, !tbaa !27
  store { i64, ptr } %t18, ptr %l13, !tbaa !27
  %t19 = getelementptr { i64, ptr }, ptr %l13, i32 0, i32 1
  %t20 = load ptr, ptr %t19, !tbaa !27
  %t21 = getelementptr i32, ptr %t20, i64 0
  %t22 = load i32, ptr %t21, !tbaa !33
  store i32 %t22, ptr %l2, !tbaa !23
  %t24 = load ptr, ptr %l0, !tbaa !29
  %t25 = load ptr, ptr %l0, !tbaa !29
  %t27 = getelementptr %"compiler/names:Resolver", ptr %t25, i32 0, i32 6
  %t28 = load i64, ptr %t27, !tbaa !24
  %t29 = load ptr, ptr %l1, !tbaa !29
  %t31 = getelementptr %"compiler/ast:Path", ptr %t29, i32 0, i32 0
  %t32 = getelementptr %"compiler/source:Span", ptr %t31, i32 0, i32 0
  %t33 = load i32, ptr %t32, !tbaa !23
  %t34 = load i32, ptr %l2, !tbaa !23
  %t39 = call %"compiler/source:Span" @compiler_2fnames_2ecompiler_2fnames_3aResolver_2enameSpan(ptr %v0, ptr %t24, i64 %t28, i32 %t33, i32 %t34)
  store %"compiler/source:Span" %t39, ptr %l21
  br label %bb7
bb7:
  %t40 = load %"compiler/source:Span", ptr %l21
  store %"compiler/source:Span" %t40, ptr %l3
  %t41 = load ptr, ptr %l0, !tbaa !29
  %t42 = load i32, ptr %l2, !tbaa !23
  %t45 = call %"compiler/names:Ref" @compiler_2fnames_2ecompiler_2fnames_3aResolver_2elookup(ptr %v0, ptr %t41, i32 %t42)
  store %"compiler/names:Ref" %t45, ptr %l24
  br label %bb8
bb8:
  %t46 = load %"compiler/names:Ref", ptr %l24
  store %"compiler/names:Ref" %t46, ptr %l4
  %t47 = load ptr, ptr %l0, !tbaa !29
  %t48 = load %"compiler/source:Span", ptr %l3
  %t49 = load %"compiler/names:Ref", ptr %l4
  call void @compiler_2fnames_2ecompiler_2fnames_3aResolver_2erecord(ptr %v0, ptr %t47, %"compiler/source:Span" %t48, %"compiler/names:Ref" %t49)
  br label %bb9
bb9:
  %t53 = getelementptr %"compiler/names:Ref", ptr %l4, i32 0, i32 0
  %t54 = load i32, ptr %t53, !range !{i32 0, i32 9}
  %t56 = trunc i64 0 to i32
  %t57 = icmp eq i32 %t54, %t56
  br i1 %t57, label %bb10, label %bb11
bb10:
  %t59 = load ptr, ptr %l1, !tbaa !29
  %t61 = getelementptr %"compiler/ast:Path", ptr %t59, i32 0, i32 1
  %t62 = load { i64, ptr }, ptr %t61, !tbaa !27
  %t64 = extractvalue { i64, ptr } %t62, 0
  %t66 = icmp sge i64 %t64, 2
  store i1 %t66, ptr %l30, !tbaa !21
  br label %bb12
bb11:
  store i1 false, ptr %l30, !tbaa !21
  br label %bb12
bb12:
  %t68 = load i1, ptr %l30, !tbaa !21
  br i1 %t68, label %bb13, label %bb14
bb13:
  %t69 = load ptr, ptr %l0, !tbaa !29
  %t70 = load %"compiler/source:Span", ptr %l3
  %t71 = load i32, ptr %l2, !tbaa !23
  call void @compiler_2fnames_2ecompiler_2fnames_3aResolver_2eunknownHead(ptr %v0, ptr %t69, %"compiler/source:Span" %t70, i32 %t71)
  br label %bb15
bb14:
  br label %bb16
bb15:
  br label %bb16
bb16:
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2fnames_2ecompiler_2fnames_3aResolver_2epayloadEnum(ptr %v0, ptr %v1, ptr %a0, i64 %a1, %"compiler/source:Span" %a2, i32 %a3, { i64, ptr } %a4) #0 {
entry:
  %l0 = alloca ptr
  %l4 = alloca { i64, ptr }
  %l5 = alloca i32
  %lp6 = alloca ptr
  %l7 = alloca ptr
  %l11 = alloca i1
  %l15 = alloca ptr
  %l18 = alloca { i64, ptr }
  %l19 = alloca { i64, ptr }
  %l21 = alloca i32
  %l22 = alloca i32
  %l25 = alloca { i64, ptr }
  %l28 = alloca ptr
  %l33 = alloca %"compiler/ast:TypeDecl"
  %l37 = alloca ptr
  %l42 = alloca i1
  %l44 = alloca ptr
  %l45 = alloca i32
  %l48 = alloca i64
  %l50 = alloca ptr
  %l55 = alloca %"compiler/names:Entry"
  %s0 = alloca %olang.scope
  %t46 = alloca { i64, [6 x i64] }, align 8
  store ptr %a0, ptr %l0
  store { i64, ptr } %a4, ptr %l4
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t2 = insertvalue { ptr, ptr } undef, ptr @olang_lambda_24, 0
  %t3 = insertvalue { ptr, ptr } %t2, ptr null, 1
  %t6 = extractvalue { ptr, ptr } %t3, 0
  %t7 = extractvalue { ptr, ptr } %t3, 1
  %t8 = call i1 @std_2fprelude_2farray_2eArray_3ccompiler_2fast_3aCaseDecl_26_3e_2eSome_3ccompiler_2fast_3aCaseDecl_26_2c_20_3f_3e(ptr %v1, ptr %s0, { i64, ptr } %t1, ptr %t6, ptr %t7)
  store i1 %t8, ptr %l11
  br label %bb1
bb1:
  %t9 = load i1, ptr %l11, !tbaa !21
  %t10 = xor i1 %t9, true
  br i1 %t10, label %bb2, label %bb3
bb2:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb3:
  br label %bb4
bb4:
  %t12 = load ptr, ptr %l0, !tbaa !29
  %t14 = getelementptr %"compiler/names:Resolver", ptr %t12, i32 0, i32 0
  %t15 = load ptr, ptr %t14, !tbaa !29
  %t17 = getelementptr %"compiler/load:Loader", ptr %t15, i32 0, i32 3
  %t18 = load ptr, ptr %t17, !tbaa !29
  store ptr %t18, ptr %l15, !tbaa !29
  %t19 = load ptr, ptr %l0, !tbaa !29
  %t23 = call { i64, ptr } @compiler_2fnames_2ecompiler_2fnames_3aResolver_2etext(ptr %v0, ptr %v0, ptr %t19, i32 %a3)
  store { i64, ptr } %t23, ptr %l18
  br label %bb5
bb5:
  %t24 = load { i64, ptr }, ptr %l18, !tbaa !27
  %t25 = call { i64, ptr } @compiler_2fnames_2ePayloadName(ptr %v0, ptr %s0, { i64, ptr } %t24)
  store { i64, ptr } %t25, ptr %l19
  br label %bb6
bb6:
  %t26 = load { i64, ptr }, ptr %l19, !tbaa !27
  %t27 = extractvalue { i64, ptr } %t26, 0
  %t28 = extractvalue { i64, ptr } %t26, 1
  %t29 = mul i64 %t27, 1
  %t30 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t29)
  call void @llvm.memcpy.p0.p0.i64(ptr %t30, ptr %t28, i64 %t29, i1 false)
  %t31 = insertvalue { i64, ptr } undef, i64 %t27, 0
  %t32 = insertvalue { i64, ptr } %t31, ptr %t30, 1
  %t33 = load ptr, ptr %l15, !tbaa !29
  %t35 = call i32 @compiler_2fsource_2ecompiler_2fsource_3aNames_2eIntern(ptr %v0, ptr %s0, ptr %t33, { i64, ptr } %t32)
  store i32 %t35, ptr %l21
  br label %bb7
bb7:
  %t36 = load i32, ptr %l21, !tbaa !23
  store i32 %t36, ptr %l5, !tbaa !23
  %t37 = load i32, ptr %l5, !tbaa !23
  store i32 %t37, ptr %l22, !tbaa !23
  %t38 = icmp sge i64 0, 0
  br i1 %t38, label %bb8, label %bb9
bb8:
  %t40 = icmp sle i64 0, 1152921504606846975
  br i1 %t40, label %bb10, label %bb11
bb9:
  call void @__olang_check_failed(ptr @olang_loc_e812c7da9410078c_45e3614fe5b58650)
  unreachable
bb10:
  %t42 = mul i64 0, 8
  %t43 = insertvalue { i64, ptr } undef, i64 0, 0
  %t44 = insertvalue { i64, ptr } %t43, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  store { i64, ptr } %t44, ptr %l25, !tbaa !27
  %t45 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, [6 x i64] } zeroinitializer, ptr %t46
  %t47 = getelementptr { i64, [6 x i64] }, ptr %t46, i32 0, i32 0
  store i64 1, ptr %t47
  %t49 = insertvalue { { i64, ptr }, ptr } undef, { i64, ptr } %t45, 0
  %t50 = insertvalue { { i64, ptr }, ptr } %t49, ptr null, 1
  %t51 = getelementptr { i64, [6 x i64] }, ptr %t46, i32 0, i32 1
  store { { i64, ptr }, ptr } %t50, ptr %t51
  %t52 = load { i64, [6 x i64] }, ptr %t46
  %t54 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 56, i64 8)
  store { i64, [6 x i64] } %t52, ptr %t54
  store ptr %t54, ptr %l28, !tbaa !29
  %t55 = icmp sge i64 0, 0
  br i1 %t55, label %bb12, label %bb13
bb11:
  call void @__olang_check_failed(ptr @olang_loc_e812c7da9410078c_45e3614fe5b58650)
  unreachable
bb12:
  %t57 = icmp sle i64 0, 1152921504606846975
  br i1 %t57, label %bb14, label %bb15
bb13:
  call void @__olang_check_failed(ptr @olang_loc_213a0f72a2f4c699_1bf9c43b33c337d)
  unreachable
bb14:
  %t59 = mul i64 0, 8
  %t60 = insertvalue { i64, ptr } undef, i64 0, 0
  %t61 = insertvalue { i64, ptr } %t60, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  %t62 = load i32, ptr %l22, !tbaa !23
  %t63 = load { i64, ptr }, ptr %l25, !tbaa !27
  %t64 = load ptr, ptr %l28, !tbaa !29
  %t67 = call %"compiler/ast:TypeDecl" @compiler_2fast_3aTypeDecl_2ector(ptr %v0, ptr %v0, ptr %v0, ptr %v0, i32 %t62, { i64, ptr } %t63, i1 false, ptr %t64, { i64, ptr } %t61, i32 0, i1 false)
  store %"compiler/ast:TypeDecl" %t67, ptr %l33
  br label %bb16
bb15:
  call void @__olang_check_failed(ptr @olang_loc_213a0f72a2f4c699_1bf9c43b33c337d)
  unreachable
bb16:
  %t68 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 64, i64 8)
  store ptr %t68, ptr %lp6
  %t69 = load %"compiler/ast:TypeDecl", ptr %l33
  %t70 = load ptr, ptr %lp6
  store %"compiler/ast:TypeDecl" %t69, ptr %t70
  %t71 = load ptr, ptr %l0, !tbaa !29
  %t73 = getelementptr %"compiler/names:Resolver", ptr %t71, i32 0, i32 1
  %t77 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fnames_3aTable_26_3e_2_Hc2ccbbc5952c057a60f016e9cc1626d2(ptr %v0, ptr %v0, ptr %t73, i64 %a1)
  store ptr %t77, ptr %l37
  br label %bb17
bb17:
  %t78 = load ptr, ptr %l37, !tbaa !29
  store ptr %t78, ptr %l7, !tbaa !29
  %t79 = load i32, ptr %l5, !tbaa !23
  %t81 = load ptr, ptr %l7, !tbaa !29
  %t83 = getelementptr %"compiler/names:Table", ptr %t81, i32 0, i32 2
  %t87 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fsource_3aNameId_2c_20I64_3e_Hf575c52a5a9e8993bae2b73c9c2548b3(ptr %v0, ptr %t83, i32 %t79)
  store i1 %t87, ptr %l42
  br label %bb18
bb18:
  %t88 = load i1, ptr %l42, !tbaa !21
  br i1 %t88, label %bb19, label %bb20
bb19:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb20:
  br label %bb21
bb21:
  %t89 = load ptr, ptr %l7, !tbaa !29
  %t91 = getelementptr %"compiler/names:Table", ptr %t89, i32 0, i32 2
  store ptr %t91, ptr %l44, !tbaa !29
  %t92 = load i32, ptr %l5, !tbaa !23
  store i32 %t92, ptr %l45, !tbaa !23
  %t93 = load ptr, ptr %l7, !tbaa !29
  %t95 = getelementptr %"compiler/names:Table", ptr %t93, i32 0, i32 0
  %t97 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fnames_3aEntry_3e_2eLen_3ccompiler_2fnames_3aEntry_3e(ptr %v0, ptr %t95)
  store i64 %t97, ptr %l48
  br label %bb22
bb22:
  %t98 = load ptr, ptr %l44, !tbaa !29
  %t99 = load i32, ptr %l45, !tbaa !23
  %t100 = load i64, ptr %l48, !tbaa !24
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fsource_3aNameId_2c_20I64_3e_H862756c16d115e5c03a79726209f69fa(ptr %v0, ptr %t98, i32 %t99, i64 %t100)
  br label %bb23
bb23:
  %t101 = load ptr, ptr %l7, !tbaa !29
  %t103 = getelementptr %"compiler/names:Table", ptr %t101, i32 0, i32 0
  store ptr %t103, ptr %l50, !tbaa !29
  %t104 = load i32, ptr %l5, !tbaa !23
  %t106 = load ptr, ptr %lp6
  %t111 = call %"compiler/names:Entry" @compiler_2fnames_3aEntry_2ector(ptr %v0, ptr %v0, i32 %t104, %"compiler/source:Span" %a2, i32 4, i1 false, ptr %t106)
  store %"compiler/names:Entry" %t111, ptr %l55
  br label %bb24
bb24:
  %t112 = load ptr, ptr %l50, !tbaa !29
  %t113 = load %"compiler/names:Entry", ptr %l55
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fnames_3aEntry_3e_2ePush_3ccompiler_2fnames_3aEntry_3e(ptr %v0, ptr %v0, ptr %t112, %"compiler/names:Entry" %t113)
  br label %bb25
bb25:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2fnames_2ecompiler_2fnames_3aResolver_2epushSig(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca { i64, ptr }
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca ptr
  %l10 = alloca ptr
  %l13 = alloca i64
  %l22 = alloca { i64, ptr }
  %l32 = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/names:Resolver", ptr %t1, i32 0, i32 22
  %t4 = load i1, ptr %t3, !tbaa !21
  %t6 = xor i1 %t4, true
  br i1 %t6, label %bb1, label %bb2
bb1:
  br label %ret
bb2:
  br label %bb3
bb3:
  %t8 = load ptr, ptr %l0, !tbaa !29
  %t10 = getelementptr %"compiler/names:Resolver", ptr %t8, i32 0, i32 25
  store ptr %t10, ptr %l10, !tbaa !29
  %t11 = load ptr, ptr %l0, !tbaa !29
  %t13 = getelementptr %"compiler/names:Resolver", ptr %t11, i32 0, i32 24
  %t15 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aNameId_3e_2eLen_3ccompiler_2fsource_3aNameId_3e(ptr %v0, ptr %t13)
  store i64 %t15, ptr %l13
  br label %bb4
bb4:
  %t16 = load ptr, ptr %l10, !tbaa !29
  %t17 = load i64, ptr %l13, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %t16, i64 %t17)
  br label %bb5
bb5:
  %t20 = getelementptr %"compiler/ast:Sig", ptr %a1, i32 0, i32 3
  %t21 = load { i64, ptr }, ptr %t20, !tbaa !27
  store { i64, ptr } %t21, ptr %l2, !tbaa !27
  store i64 0, ptr %l3, !tbaa !24
  %t23 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t25 = extractvalue { i64, ptr } %t23, 0
  store i64 %t25, ptr %l4, !tbaa !24
  br label %bb6
bb6:
  %t27 = load i64, ptr %l3, !tbaa !24
  %t28 = load i64, ptr %l4, !tbaa !24
  %t31 = icmp slt i64 %t27, %t28
  %t33 = xor i1 %t31, true
  br i1 %t33, label %bb7, label %bb8
bb7:
  br label %bb15
bb8:
  br label %bb9
bb9:
  %t35 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t35, ptr %l22, !tbaa !27
  %t36 = load i64, ptr %l3, !tbaa !24
  %t38 = getelementptr { i64, ptr }, ptr %l22, i32 0, i32 1
  %t39 = load ptr, ptr %t38, !tbaa !27
  %t40 = getelementptr ptr, ptr %t39, i64 %t36
  %t41 = load ptr, ptr %t40, !tbaa !39
  store ptr %t41, ptr %l5, !tbaa !29
  %t43 = load ptr, ptr %l5, !tbaa !29
  %t45 = getelementptr %"compiler/ast:Path", ptr %t43, i32 0, i32 1
  %t46 = load { i64, ptr }, ptr %t45, !tbaa !27
  %t48 = extractvalue { i64, ptr } %t46, 0
  %t50 = icmp eq i64 %t48, 1
  br i1 %t50, label %bb10, label %bb11
bb10:
  %t52 = load ptr, ptr %l0, !tbaa !29
  %t54 = getelementptr %"compiler/names:Resolver", ptr %t52, i32 0, i32 24
  %t55 = load ptr, ptr %l5, !tbaa !29
  %t57 = getelementptr %"compiler/ast:Path", ptr %t55, i32 0, i32 1
  %t58 = load { i64, ptr }, ptr %t57, !tbaa !27
  store { i64, ptr } %t58, ptr %l32, !tbaa !27
  %t59 = getelementptr { i64, ptr }, ptr %l32, i32 0, i32 1
  %t60 = load ptr, ptr %t59, !tbaa !27
  %t61 = getelementptr i32, ptr %t60, i64 0
  %t62 = load i32, ptr %t61, !tbaa !33
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aNameId_3e_2ePush_3ccompiler_2fsource_3aNameId_3e(ptr %v0, ptr %t54, i32 %t62)
  br label %bb12
bb11:
  br label %bb13
bb12:
  br label %bb13
bb13:
  br label %bb14
bb14:
  %t65 = load i64, ptr %l3, !tbaa !24
  %t67 = add i64 %t65, 1
  store i64 %t67, ptr %l3, !tbaa !24
  br label %bb6
bb15:
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2fnames_2ecompiler_2fnames_3aResolver_2eraisedErrors(ptr %v0, ptr %v1, ptr %a0, i64 %a1, { i64, ptr } %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca { i64, ptr }
  %l3 = alloca ptr
  %l4 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l5 = alloca ptr
  %l6 = alloca i64
  %l12 = alloca ptr
  %l15 = alloca i1
  %l18 = alloca i1
  %l27 = alloca i64
  %l30 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l35 = alloca i64
  %l37 = alloca i64
  %l42 = alloca %"compiler/names:raisedName"
  %s0 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  store { i64, ptr } %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/names:Resolver", ptr %t1, i32 0, i32 0
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t6 = getelementptr %"compiler/load:Loader", ptr %t4, i32 0, i32 10
  %t7 = load i64, ptr %l1, !tbaa !24
  %t10 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H7bcf2aeb09afa796f4333e6ec8c3f63f(ptr %v0, ptr %v0, ptr %t6, i64 %t7)
  store ptr %t10, ptr %l12
  br label %bb1
bb1:
  %t11 = load ptr, ptr %l12, !tbaa !29
  store ptr %t11, ptr %l3, !tbaa !29
  %t12 = load ptr, ptr %l3, !tbaa !29
  %t14 = getelementptr %"compiler/load:Module", ptr %t12, i32 0, i32 3
  %t15 = load i1, ptr %t14, !tbaa !21
  br i1 %t15, label %bb2, label %bb3
bb2:
  store i1 true, ptr %l15, !tbaa !21
  br label %bb4
bb3:
  %t17 = load ptr, ptr %l3, !tbaa !29
  %t19 = getelementptr %"compiler/load:Module", ptr %t17, i32 0, i32 30
  %t20 = load i1, ptr %t19, !tbaa !21
  store i1 %t20, ptr %l15, !tbaa !21
  br label %bb4
bb4:
  %t22 = load i1, ptr %l15, !tbaa !21
  br i1 %t22, label %bb5, label %bb6
bb5:
  store i1 true, ptr %l18, !tbaa !21
  br label %bb7
bb6:
  %t23 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t25 = extractvalue { i64, ptr } %t23, 0
  %t27 = icmp eq i64 %t25, 0
  store i1 %t27, ptr %l18, !tbaa !21
  br label %bb7
bb7:
  %t29 = load i1, ptr %l18, !tbaa !21
  br i1 %t29, label %bb8, label %bb9
bb8:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb9:
  br label %bb10
bb10:
  %t30 = load ptr, ptr %l0, !tbaa !29
  %t31 = load i64, ptr %l1, !tbaa !24
  %t32 = load { i64, ptr }, ptr %l2, !tbaa !27
  call void @compiler_2fnames_2ecompiler_2fnames_3aResolver_2esurveyBodies(ptr %v0, ptr %v1, ptr %t30, i64 %t31, { i64, ptr } %t32)
  br label %bb11
bb11:
  %t36 = load ptr, ptr %l0, !tbaa !29
  %t38 = getelementptr %"compiler/names:Resolver", ptr %t36, i32 0, i32 23
  %t40 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fnames_3araised_3e_2eLen_3ccompiler_2fnames_3araised_3e(ptr %v0, ptr %t38)
  store i64 %t40, ptr %l27
  br label %bb12
bb12:
  %t41 = load i64, ptr %l27, !tbaa !24
  %t42 = icmp eq i64 %t41, 0
  br i1 %t42, label %bb13, label %bb14
bb13:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb14:
  br label %bb15
bb15:
  %t44 = load ptr, ptr %l0, !tbaa !29
  %t46 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2fnames_2ecompiler_2fnames_3aResolver_2efirstRaises(ptr %v0, ptr %s0, ptr %t44)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t46, ptr %l30
  br label %bb16
bb16:
  %t47 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l30
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t47, ptr %l4
  %t48 = load ptr, ptr %l0, !tbaa !29
  %t49 = load i64, ptr %l1, !tbaa !24
  call void @compiler_2fnames_2ecompiler_2fnames_3aResolver_2edeclareRaised(ptr %v0, ptr %s0, ptr %t48, i64 %t49, ptr %l4)
  br label %bb17
bb17:
  store ptr %l4, ptr %l5, !tbaa !29
  store i64 0, ptr %l6, !tbaa !24
  br label %bb18
bb18:
  %t54 = load i64, ptr %l6, !tbaa !24
  store i64 %t54, ptr %l35, !tbaa !24
  %t55 = load ptr, ptr %l5, !tbaa !29
  %t57 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fnames_3araisedName_3e_2eLen_H9e36587759e47da85a29e6c0abff1d1c(ptr %s0, ptr %t55)
  store i64 %t57, ptr %l37
  br label %bb19
bb19:
  %t58 = load i64, ptr %l35, !tbaa !24
  %t59 = load i64, ptr %l37, !tbaa !24
  %t60 = icmp slt i64 %t58, %t59
  %t62 = xor i1 %t60, true
  br i1 %t62, label %bb20, label %bb21
bb20:
  br label %bb26
bb21:
  br label %bb22
bb22:
  %t64 = load ptr, ptr %l5, !tbaa !29
  %t65 = load i64, ptr %l6, !tbaa !24
  %t68 = call %"compiler/names:raisedName" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fnames_3araisedName_3e_2eAt__H16b49ab3dab0c5fe49005bf48ab18c1b(ptr %s0, ptr %s0, ptr %t64, i64 %t65)
  store %"compiler/names:raisedName" %t68, ptr %l42
  br label %bb23
bb23:
  %t69 = load %"compiler/names:raisedName", ptr %l42
  %t70 = load ptr, ptr %l0, !tbaa !29
  %t71 = load i64, ptr %l1, !tbaa !24
  call void @compiler_2fnames_2ecompiler_2fnames_3aResolver_2enearRaise(ptr %v0, ptr %s0, ptr %s0, ptr %t70, i64 %t71, %"compiler/names:raisedName" %t69, ptr %l4)
  br label %bb24
bb24:
  br label %bb25
bb25:
  %t77 = load i64, ptr %l6, !tbaa !24
  %t79 = add i64 %t77, 1
  store i64 %t79, ptr %l6, !tbaa !24
  br label %bb18
bb26:
  %t81 = load ptr, ptr %l0, !tbaa !29
  %t83 = getelementptr %"compiler/names:Resolver", ptr %t81, i32 0, i32 23
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fnames_3araised_3e_2eClear_3ccompiler_2fnames_3araised_3e(ptr %v0, ptr %t83)
  br label %bb27
bb27:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local { i64, ptr } @compiler_2fnames_2ecompiler_2fnames_3aResolver_2eraisedFields(ptr %v0, ptr %v1, ptr %v2, ptr %a0, i64 %a1, { i64, ptr } %a2) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca { i64, ptr }
  %lp3 = alloca ptr
  %l4 = alloca { i64, ptr }
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca ptr
  %l8 = alloca %"compiler/source:Span"
  %l9 = alloca i32
  %l10 = alloca %"compiler/source:Span"
  %l11 = alloca i32
  %l17 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l25 = alloca { i64, ptr }
  %l28 = alloca ptr
  %l29 = alloca i1
  %l36 = alloca ptr
  %l37 = alloca %"compiler/source:Span"
  %l38 = alloca i32
  %l42 = alloca %"compiler/ast:Param"
  %l44 = alloca ptr
  %l45 = alloca i1
  %l52 = alloca ptr
  %l53 = alloca %"compiler/source:Span"
  %l54 = alloca i32
  %l58 = alloca %"compiler/ast:Param"
  %l62 = alloca ptr
  %l63 = alloca ptr
  %l64 = alloca i64
  %l66 = alloca %"compiler/source:Span"
  %l67 = alloca { i64, [3 x i64] }
  %l68 = alloca %"compiler/diagmsg:Msg"
  %l69 = alloca i64
  %l70 = alloca ptr
  %l72 = alloca %"compiler/source:Span"
  %l76 = alloca %"compiler/ast:Param"
  %l81 = alloca { i64, ptr }
  %s6 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  store { i64, ptr } %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t3 = extractvalue { i64, ptr } %t1, 0
  %t4 = extractvalue { i64, ptr } { i64 -1, ptr null }, 0
  %t5 = icmp eq i64 %t3, %t4
  %t6 = extractvalue { i64, ptr } %t1, 1
  %t7 = extractvalue { i64, ptr } { i64 -1, ptr null }, 1
  %t8 = icmp eq ptr %t6, %t7
  %t9 = and i1 %t5, %t8
  br i1 %t9, label %bb1, label %bb2
bb1:
  %t11 = icmp sge i64 0, 0
  br i1 %t11, label %bb3, label %bb4
bb2:
  br label %bb7
bb3:
  %t13 = icmp sle i64 0, 1152921504606846975
  br i1 %t13, label %bb5, label %bb6
bb4:
  call void @__olang_check_failed(ptr @olang_loc_fd3c9d14e235dbbe_bd11dfc23075d8e2)
  unreachable
bb5:
  %t15 = mul i64 0, 8
  %t16 = insertvalue { i64, ptr } undef, i64 0, 0
  %t17 = insertvalue { i64, ptr } %t16, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  store { i64, ptr } %t17, ptr %rv
  br label %ret
bb6:
  call void @__olang_check_failed(ptr @olang_loc_fd3c9d14e235dbbe_bd11dfc23075d8e2)
  unreachable
bb7:
  %t19 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fast_3aParam_26_3e_2ector(ptr %v2, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t19, ptr %l17
  br label %bb8
bb8:
  %t20 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 32, i64 8)
  store ptr %t20, ptr %lp3
  %t21 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l17
  %t22 = load ptr, ptr %lp3
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t21, ptr %t22
  %t23 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t23, ptr %l4, !tbaa !27
  store i64 0, ptr %l5, !tbaa !24
  %t25 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t27 = extractvalue { i64, ptr } %t25, 0
  store i64 %t27, ptr %l6, !tbaa !24
  br label %bb9
bb9:
  %t29 = load i64, ptr %l5, !tbaa !24
  %t30 = load i64, ptr %l6, !tbaa !24
  %t33 = icmp slt i64 %t29, %t30
  %t35 = xor i1 %t33, true
  br i1 %t35, label %bb10, label %bb11
bb10:
  br label %bb54
bb11:
  br label %bb12
bb12:
  %t37 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t37, ptr %l25, !tbaa !27
  %t38 = load i64, ptr %l5, !tbaa !24
  %t40 = getelementptr { i64, ptr }, ptr %l25, i32 0, i32 1
  %t41 = load ptr, ptr %t40, !tbaa !27
  %t42 = getelementptr ptr, ptr %t41, i64 %t38
  %t43 = load ptr, ptr %t42, !tbaa !39
  store ptr %t43, ptr %l7, !tbaa !29
  %t45 = load ptr, ptr %l7, !tbaa !29
  store ptr %t45, ptr %l28, !tbaa !29
  store i1 false, ptr %l29, !tbaa !21
  %t46 = load ptr, ptr %l28, !tbaa !29
  %t47 = icmp ne ptr %t46, null
  br i1 %t47, label %bb13, label %bb14
bb13:
  %t49 = load ptr, ptr %l28, !tbaa !29
  %t50 = load i64, ptr %t49, !range !{i64 0, i64 30}
  %t52 = icmp eq i64 %t50, 0
  store i1 %t52, ptr %l29, !tbaa !21
  br label %bb14
bb14:
  %t53 = load i1, ptr %l29, !tbaa !21
  br i1 %t53, label %bb15, label %bb16
bb15:
  %t54 = load ptr, ptr %l7, !tbaa !29
  %t56 = getelementptr { i64, [4 x i64] }, ptr %t54, i32 0, i32 1
  %t57 = getelementptr { %"compiler/source:Span", i32 }, ptr %t56, i32 0, i32 0
  %t58 = load %"compiler/source:Span", ptr %t57
  store %"compiler/source:Span" %t58, ptr %l8
  %t60 = load ptr, ptr %l7, !tbaa !29
  %t62 = getelementptr { i64, [4 x i64] }, ptr %t60, i32 0, i32 1
  %t63 = getelementptr { %"compiler/source:Span", i32 }, ptr %t62, i32 0, i32 1
  %t64 = load i32, ptr %t63
  store i32 %t64, ptr %l9, !tbaa !23
  br label %bb17
bb16:
  br label %bb24
bb17:
  %t66 = load ptr, ptr %lp3
  store ptr %t66, ptr %l36, !tbaa !29
  %t67 = load %"compiler/source:Span", ptr %l8
  store %"compiler/source:Span" %t67, ptr %l37
  %t68 = load i32, ptr %l9, !tbaa !23
  store i32 %t68, ptr %l38, !tbaa !23
  %t69 = icmp sge i64 0, 0
  br i1 %t69, label %bb18, label %bb19
bb18:
  %t71 = icmp sle i64 0, 1152921504606846975
  br i1 %t71, label %bb20, label %bb21
bb19:
  call void @__olang_check_failed(ptr @olang_loc_d4f6439c0cdbaaf3_789e3d3edc4da797)
  unreachable
bb20:
  %t73 = mul i64 0, 8
  %t74 = insertvalue { i64, ptr } undef, i64 0, 0
  %t75 = insertvalue { i64, ptr } %t74, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  %t76 = load %"compiler/source:Span", ptr %l37
  %t77 = load i32, ptr %l38, !tbaa !23
  %t79 = call %"compiler/ast:Param" @compiler_2fast_3aParam_2ector(ptr %v2, ptr %v2, ptr %v2, ptr %v2, %"compiler/source:Span" %t76, i32 %t77, ptr null, ptr null, { i64, ptr } %t75)
  store %"compiler/ast:Param" %t79, ptr %l42
  br label %bb22
bb21:
  call void @__olang_check_failed(ptr @olang_loc_d4f6439c0cdbaaf3_789e3d3edc4da797)
  unreachable
bb22:
  %t80 = load %"compiler/ast:Param", ptr %l42
  %t81 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 48, i64 8)
  store %"compiler/ast:Param" %t80, ptr %t81
  %t82 = load ptr, ptr %l36, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fast_3aParam_26_3e_2ePush_3ccompiler_2fast_3aParam_26_3e(ptr %v2, ptr %v2, ptr %t82, ptr %t81)
  br label %bb23
bb23:
  br label %bb52
bb24:
  %t84 = load ptr, ptr %l7, !tbaa !29
  store ptr %t84, ptr %l44, !tbaa !29
  store i1 false, ptr %l45, !tbaa !21
  %t85 = load ptr, ptr %l44, !tbaa !29
  %t86 = icmp ne ptr %t85, null
  br i1 %t86, label %bb25, label %bb26
bb25:
  %t88 = load ptr, ptr %l44, !tbaa !29
  %t89 = load i64, ptr %t88, !range !{i64 0, i64 30}
  %t91 = icmp eq i64 %t89, 26
  store i1 %t91, ptr %l45, !tbaa !21
  br label %bb26
bb26:
  %t92 = load i1, ptr %l45, !tbaa !21
  br i1 %t92, label %bb27, label %bb28
bb27:
  %t93 = load ptr, ptr %l7, !tbaa !29
  %t95 = getelementptr { i64, [4 x i64] }, ptr %t93, i32 0, i32 1
  %t96 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t95, i32 0, i32 0
  %t97 = load %"compiler/source:Span", ptr %t96
  store %"compiler/source:Span" %t97, ptr %l10
  %t99 = load ptr, ptr %l7, !tbaa !29
  %t101 = getelementptr { i64, [4 x i64] }, ptr %t99, i32 0, i32 1
  %t102 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t101, i32 0, i32 1
  %t103 = load i32, ptr %t102
  store i32 %t103, ptr %l11, !tbaa !23
  br label %bb29
bb28:
  br label %bb36
bb29:
  %t105 = load ptr, ptr %lp3
  store ptr %t105, ptr %l52, !tbaa !29
  %t106 = load %"compiler/source:Span", ptr %l10
  store %"compiler/source:Span" %t106, ptr %l53
  %t107 = load i32, ptr %l11, !tbaa !23
  store i32 %t107, ptr %l54, !tbaa !23
  %t108 = icmp sge i64 0, 0
  br i1 %t108, label %bb30, label %bb31
bb30:
  %t110 = icmp sle i64 0, 1152921504606846975
  br i1 %t110, label %bb32, label %bb33
bb31:
  call void @__olang_check_failed(ptr @olang_loc_d4f6439c0cdbaaf3_789e3d3edc4da797)
  unreachable
bb32:
  %t112 = mul i64 0, 8
  %t113 = insertvalue { i64, ptr } undef, i64 0, 0
  %t114 = insertvalue { i64, ptr } %t113, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  %t115 = load %"compiler/source:Span", ptr %l53
  %t116 = load i32, ptr %l54, !tbaa !23
  %t118 = call %"compiler/ast:Param" @compiler_2fast_3aParam_2ector(ptr %v2, ptr %v2, ptr %v2, ptr %v2, %"compiler/source:Span" %t115, i32 %t116, ptr null, ptr null, { i64, ptr } %t114)
  store %"compiler/ast:Param" %t118, ptr %l58
  br label %bb34
bb33:
  call void @__olang_check_failed(ptr @olang_loc_d4f6439c0cdbaaf3_789e3d3edc4da797)
  unreachable
bb34:
  %t119 = load %"compiler/ast:Param", ptr %l58
  %t120 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 48, i64 8)
  store %"compiler/ast:Param" %t119, ptr %t120
  %t121 = load ptr, ptr %l52, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fast_3aParam_26_3e_2ePush_3ccompiler_2fast_3aParam_26_3e(ptr %v2, ptr %v2, ptr %t121, ptr %t120)
  br label %bb35
bb35:
  br label %bb52
bb36:
  br i1 true, label %bb37, label %bb38
bb37:
  br label %bb39
bb38:
  br label %bb51
bb39:
  store %olang.scope zeroinitializer, ptr %s6
  %t123 = load ptr, ptr %l0, !tbaa !29
  %t125 = getelementptr %"compiler/names:Resolver", ptr %t123, i32 0, i32 0
  %t126 = load ptr, ptr %t125, !tbaa !29
  %t128 = getelementptr %"compiler/load:Loader", ptr %t126, i32 0, i32 4
  %t129 = load ptr, ptr %t128, !tbaa !29
  store ptr %t129, ptr %l62, !tbaa !29
  %t130 = load ptr, ptr %l0, !tbaa !29
  store ptr %t130, ptr %l63, !tbaa !29
  store i64 %a1, ptr %l64, !tbaa !24
  %t132 = load ptr, ptr %l7, !tbaa !29
  %t134 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v1, ptr %t132)
  store %"compiler/source:Span" %t134, ptr %l66
  br label %bb40
bb40:
  %t135 = load ptr, ptr %l63, !tbaa !29
  %t136 = load i64, ptr %l64, !tbaa !24
  %t137 = load %"compiler/source:Span", ptr %l66
  %t138 = call { i64, [3 x i64] } @compiler_2fnames_2ecompiler_2fnames_3aResolver_2eat(ptr %v0, ptr %t135, i64 %t136, %"compiler/source:Span" %t137)
  store { i64, [3 x i64] } %t138, ptr %l67
  br label %bb41
bb41:
  %t139 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eRaisedFieldUnnamed(ptr %s6)
  store %"compiler/diagmsg:Msg" %t139, ptr %l68
  br label %bb42
bb42:
  %t140 = load ptr, ptr %l62, !tbaa !29
  %t141 = load { i64, [3 x i64] }, ptr %l67
  %t142 = load %"compiler/diagmsg:Msg", ptr %l68
  %t143 = call i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eError(ptr %v0, ptr %s6, ptr %t140, { i64, [3 x i64] } %t141, %"compiler/diagmsg:Msg" %t142)
  store i64 %t143, ptr %l69
  br label %bb43
bb43:
  %t144 = load ptr, ptr %lp3
  store ptr %t144, ptr %l70, !tbaa !29
  %t145 = load ptr, ptr %l7, !tbaa !29
  %t147 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v1, ptr %t145)
  store %"compiler/source:Span" %t147, ptr %l72
  br label %bb44
bb44:
  %t148 = icmp sge i64 0, 0
  br i1 %t148, label %bb45, label %bb46
bb45:
  %t150 = icmp sle i64 0, 1152921504606846975
  br i1 %t150, label %bb47, label %bb48
bb46:
  call void @__olang_check_failed(ptr @olang_loc_d4f6439c0cdbaaf3_789e3d3edc4da797)
  unreachable
bb47:
  %t152 = mul i64 0, 8
  %t153 = insertvalue { i64, ptr } undef, i64 0, 0
  %t154 = insertvalue { i64, ptr } %t153, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  %t155 = load %"compiler/source:Span", ptr %l72
  %t157 = call %"compiler/ast:Param" @compiler_2fast_3aParam_2ector(ptr %v2, ptr %v2, ptr %v2, ptr %v2, %"compiler/source:Span" %t155, i32 0, ptr null, ptr null, { i64, ptr } %t154)
  store %"compiler/ast:Param" %t157, ptr %l76
  br label %bb49
bb48:
  call void @__olang_check_failed(ptr @olang_loc_d4f6439c0cdbaaf3_789e3d3edc4da797)
  unreachable
bb49:
  %t158 = load %"compiler/ast:Param", ptr %l76
  %t159 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 48, i64 8)
  store %"compiler/ast:Param" %t158, ptr %t159
  %t160 = load ptr, ptr %l70, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fast_3aParam_26_3e_2ePush_3ccompiler_2fast_3aParam_26_3e(ptr %v2, ptr %v2, ptr %t160, ptr %t159)
  br label %bb50
bb50:
  call void @__olang_scope_close(ptr %s6)
  br label %bb52
bb51:
  call void @__olang_check_failed(ptr @olang_loc_92553710e491898f_e436dfe457d9a8db)
  unreachable
bb52:
  br label %bb53
bb53:
  %t162 = load i64, ptr %l5, !tbaa !24
  %t164 = add i64 %t162, 1
  store i64 %t164, ptr %l5, !tbaa !24
  br label %bb9
bb54:
  %t166 = load ptr, ptr %lp3
  %t168 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fast_3aParam_26_3e_2eToArray_3ccompiler_2fast_3aParam_26_3e(ptr %v2, ptr %v2, ptr %t166)
  store { i64, ptr } %t168, ptr %l81
  br label %bb55
bb55:
  %t169 = load { i64, ptr }, ptr %l81, !tbaa !27
  store { i64, ptr } %t169, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local void @compiler_2fnames_2ecompiler_2fnames_3aResolver_2ereceiverArg(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca { i64, ptr }
  %l3 = alloca { i64, ptr }
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca ptr
  %l7 = alloca %"compiler/source:Span"
  %l8 = alloca { i64, ptr }
  %l9 = alloca { i64, ptr }
  %l10 = alloca ptr
  %l11 = alloca i1
  %l23 = alloca { i64, ptr }
  %l34 = alloca { i64, ptr }
  %l38 = alloca ptr
  %l39 = alloca i1
  %l51 = alloca i1
  %l57 = alloca { i64, ptr }
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
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 8}
  %t8 = icmp eq i64 %t6, 6
  store i1 %t8, ptr %l11, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l11, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  %t10 = load ptr, ptr %l1, !tbaa !29
  %t12 = getelementptr { i64, [5 x i64] }, ptr %t10, i32 0, i32 1
  %t13 = getelementptr { %"compiler/source:Span", { i64, ptr } }, ptr %t12, i32 0, i32 1
  %t14 = load { i64, ptr }, ptr %t13
  store { i64, ptr } %t14, ptr %l2, !tbaa !27
  br label %bb5
bb4:
  br label %bb16
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
  br label %bb15
bb8:
  br label %bb9
bb9:
  %t30 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t30, ptr %l23, !tbaa !27
  %t31 = load i64, ptr %l4, !tbaa !24
  %t33 = getelementptr { i64, ptr }, ptr %l23, i32 0, i32 1
  %t34 = load ptr, ptr %t33, !tbaa !27
  %t35 = getelementptr ptr, ptr %t34, i64 %t31
  %t36 = load ptr, ptr %t35, !tbaa !39
  store ptr %t36, ptr %l6, !tbaa !29
  %t38 = load ptr, ptr %l6, !tbaa !29
  %t40 = getelementptr %"compiler/ast:Path", ptr %t38, i32 0, i32 1
  %t41 = load { i64, ptr }, ptr %t40, !tbaa !27
  %t43 = extractvalue { i64, ptr } %t41, 0
  %t45 = icmp eq i64 %t43, 1
  br i1 %t45, label %bb10, label %bb11
bb10:
  %t47 = load ptr, ptr %l0, !tbaa !29
  %t48 = load ptr, ptr %l6, !tbaa !29
  %t50 = getelementptr %"compiler/ast:Path", ptr %t48, i32 0, i32 0
  %t51 = load %"compiler/source:Span", ptr %t50
  %t52 = load ptr, ptr %l6, !tbaa !29
  %t54 = getelementptr %"compiler/ast:Path", ptr %t52, i32 0, i32 1
  %t55 = load { i64, ptr }, ptr %t54, !tbaa !27
  store { i64, ptr } %t55, ptr %l34, !tbaa !27
  %t56 = getelementptr { i64, ptr }, ptr %l34, i32 0, i32 1
  %t57 = load ptr, ptr %t56, !tbaa !27
  %t58 = getelementptr i32, ptr %t57, i64 0
  %t59 = load i32, ptr %t58, !tbaa !33
  call void @compiler_2fnames_2ecompiler_2fnames_3aResolver_2eintroduceVar(ptr %v0, ptr %t47, %"compiler/source:Span" %t51, i32 %t59)
  br label %bb12
bb11:
  br label %bb13
bb12:
  br label %bb13
bb13:
  br label %bb14
bb14:
  %t63 = load i64, ptr %l4, !tbaa !24
  %t65 = add i64 %t63, 1
  store i64 %t65, ptr %l4, !tbaa !24
  br label %bb6
bb15:
  br label %bb34
bb16:
  %t67 = load ptr, ptr %l1, !tbaa !29
  store ptr %t67, ptr %l38, !tbaa !29
  store i1 false, ptr %l39, !tbaa !21
  %t68 = load ptr, ptr %l38, !tbaa !29
  %t69 = icmp ne ptr %t68, null
  br i1 %t69, label %bb17, label %bb18
bb17:
  %t71 = load ptr, ptr %l38, !tbaa !29
  %t72 = load i64, ptr %t71, !range !{i64 0, i64 8}
  %t74 = icmp eq i64 %t72, 0
  store i1 %t74, ptr %l39, !tbaa !21
  br label %bb18
bb18:
  %t75 = load i1, ptr %l39, !tbaa !21
  br i1 %t75, label %bb19, label %bb20
bb19:
  %t76 = load ptr, ptr %l1, !tbaa !29
  %t78 = getelementptr { i64, [5 x i64] }, ptr %t76, i32 0, i32 1
  %t79 = getelementptr { %"compiler/source:Span", { i64, ptr }, { i64, ptr } }, ptr %t78, i32 0, i32 0
  %t80 = load %"compiler/source:Span", ptr %t79
  store %"compiler/source:Span" %t80, ptr %l7
  %t82 = load ptr, ptr %l1, !tbaa !29
  %t84 = getelementptr { i64, [5 x i64] }, ptr %t82, i32 0, i32 1
  %t85 = getelementptr { %"compiler/source:Span", { i64, ptr }, { i64, ptr } }, ptr %t84, i32 0, i32 1
  %t86 = load { i64, ptr }, ptr %t85
  store { i64, ptr } %t86, ptr %l8, !tbaa !27
  %t88 = load ptr, ptr %l1, !tbaa !29
  %t90 = getelementptr { i64, [5 x i64] }, ptr %t88, i32 0, i32 1
  %t91 = getelementptr { %"compiler/source:Span", { i64, ptr }, { i64, ptr } }, ptr %t90, i32 0, i32 2
  %t92 = load { i64, ptr }, ptr %t91
  store { i64, ptr } %t92, ptr %l9, !tbaa !27
  br label %bb21
bb20:
  br label %bb28
bb21:
  %t94 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t96 = extractvalue { i64, ptr } %t94, 0
  %t98 = icmp eq i64 %t96, 1
  br i1 %t98, label %bb22, label %bb23
bb22:
  %t100 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t102 = extractvalue { i64, ptr } %t100, 0
  %t104 = icmp eq i64 %t102, 0
  store i1 %t104, ptr %l51, !tbaa !21
  br label %bb24
bb23:
  store i1 false, ptr %l51, !tbaa !21
  br label %bb24
bb24:
  %t106 = load i1, ptr %l51, !tbaa !21
  br i1 %t106, label %bb25, label %bb26
bb25:
  %t107 = load ptr, ptr %l0, !tbaa !29
  %t108 = load %"compiler/source:Span", ptr %l7
  %t109 = load { i64, ptr }, ptr %l8, !tbaa !27
  store { i64, ptr } %t109, ptr %l57, !tbaa !27
  %t110 = getelementptr { i64, ptr }, ptr %l57, i32 0, i32 1
  %t111 = load ptr, ptr %t110, !tbaa !27
  %t112 = getelementptr i32, ptr %t111, i64 0
  %t113 = load i32, ptr %t112, !tbaa !33
  call void @compiler_2fnames_2ecompiler_2fnames_3aResolver_2eintroduceVar(ptr %v0, ptr %t107, %"compiler/source:Span" %t108, i32 %t113)
  br label %bb27
bb26:
  br label %bb28
bb27:
  br label %bb34
bb28:
  br i1 true, label %bb29, label %bb30
bb29:
  br label %bb31
bb30:
  br label %bb33
bb31:
  %t117 = load ptr, ptr %l0, !tbaa !29
  %t118 = load ptr, ptr %l1, !tbaa !29
  call void @compiler_2fnames_2ecompiler_2fnames_3aResolver_2ereceiverVars(ptr %v0, ptr %v1, ptr %t117, ptr %t118, i1 true)
  br label %bb32
bb32:
  br label %bb34
bb33:
  call void @__olang_check_failed(ptr @olang_loc_248dea6bbb4b10fb_e7c6566d75989db7)
  unreachable
bb34:
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2fnames_2ecompiler_2fnames_3aResolver_2ereceiverVars(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i1 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i1
  %l3 = alloca { i64, ptr }
  %l4 = alloca { i64, ptr }
  %l5 = alloca i64
  %l6 = alloca i64
  %l8 = alloca ptr
  %l9 = alloca ptr
  %l12 = alloca ptr
  %l13 = alloca i1
  %l25 = alloca { i64, ptr }
  %l32 = alloca ptr
  %l33 = alloca i1
  %l42 = alloca ptr
  %l43 = alloca i1
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store i1 %a2, ptr %l2
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
  store ptr %t5, ptr %l12, !tbaa !29
  store i1 false, ptr %l13, !tbaa !21
  %t6 = load ptr, ptr %l12, !tbaa !29
  %t7 = icmp ne ptr %t6, null
  br i1 %t7, label %bb4, label %bb5
bb4:
  %t9 = load ptr, ptr %l12, !tbaa !29
  %t10 = load i64, ptr %t9, !range !{i64 0, i64 8}
  %t12 = icmp eq i64 %t10, 0
  store i1 %t12, ptr %l13, !tbaa !21
  br label %bb5
bb5:
  %t13 = load i1, ptr %l13, !tbaa !21
  br i1 %t13, label %bb6, label %bb7
bb6:
  %t14 = load ptr, ptr %l1, !tbaa !29
  %t16 = getelementptr { i64, [5 x i64] }, ptr %t14, i32 0, i32 1
  %t17 = getelementptr { %"compiler/source:Span", { i64, ptr }, { i64, ptr } }, ptr %t16, i32 0, i32 2
  %t18 = load { i64, ptr }, ptr %t17
  store { i64, ptr } %t18, ptr %l3, !tbaa !27
  br label %bb8
bb7:
  br label %bb16
bb8:
  %t20 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t20, ptr %l4, !tbaa !27
  store i64 0, ptr %l5, !tbaa !24
  %t22 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t24 = extractvalue { i64, ptr } %t22, 0
  store i64 %t24, ptr %l6, !tbaa !24
  br label %bb9
bb9:
  %t26 = load i64, ptr %l5, !tbaa !24
  %t27 = load i64, ptr %l6, !tbaa !24
  %t30 = icmp slt i64 %t26, %t27
  %t32 = xor i1 %t30, true
  br i1 %t32, label %bb10, label %bb11
bb10:
  br label %bb15
bb11:
  br label %bb12
bb12:
  %t34 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t34, ptr %l25, !tbaa !27
  %t35 = load i64, ptr %l5, !tbaa !24
  %t37 = getelementptr { i64, ptr }, ptr %l25, i32 0, i32 1
  %t38 = load ptr, ptr %t37, !tbaa !27
  %t39 = getelementptr ptr, ptr %t38, i64 %t35
  %t40 = load ptr, ptr %t39, !tbaa !39
  %t42 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2fnames_2ecompiler_2fnames_3aResolver_2ereceiverArg(ptr %v0, ptr %v1, ptr %t42, ptr %t40)
  br label %bb13
bb13:
  br label %bb14
bb14:
  %t46 = load i64, ptr %l5, !tbaa !24
  %t48 = add i64 %t46, 1
  store i64 %t48, ptr %l5, !tbaa !24
  br label %bb9
bb15:
  br label %bb35
bb16:
  %t50 = load ptr, ptr %l1, !tbaa !29
  store ptr %t50, ptr %l32, !tbaa !29
  store i1 false, ptr %l33, !tbaa !21
  %t51 = load ptr, ptr %l32, !tbaa !29
  %t52 = icmp ne ptr %t51, null
  br i1 %t52, label %bb17, label %bb18
bb17:
  %t54 = load ptr, ptr %l32, !tbaa !29
  %t55 = load i64, ptr %t54, !range !{i64 0, i64 8}
  %t57 = icmp eq i64 %t55, 3
  store i1 %t57, ptr %l33, !tbaa !21
  br label %bb18
bb18:
  %t58 = load i1, ptr %l33, !tbaa !21
  br i1 %t58, label %bb19, label %bb20
bb19:
  %t59 = load ptr, ptr %l1, !tbaa !29
  %t61 = getelementptr { i64, [5 x i64] }, ptr %t59, i32 0, i32 1
  %t62 = getelementptr { %"compiler/source:Span", ptr, i1, i1 }, ptr %t61, i32 0, i32 1
  %t63 = load ptr, ptr %t62
  store ptr %t63, ptr %l8, !tbaa !29
  br label %bb21
bb20:
  br label %bb23
bb21:
  %t65 = load ptr, ptr %l0, !tbaa !29
  %t66 = load ptr, ptr %l8, !tbaa !29
  %t68 = load i1, ptr %l2, !tbaa !21
  call void @compiler_2fnames_2ecompiler_2fnames_3aResolver_2ereceiverVars(ptr %v0, ptr %v1, ptr %t65, ptr %t66, i1 %t68)
  br label %bb22
bb22:
  br label %bb35
bb23:
  %t72 = load ptr, ptr %l1, !tbaa !29
  store ptr %t72, ptr %l42, !tbaa !29
  store i1 false, ptr %l43, !tbaa !21
  %t73 = load ptr, ptr %l42, !tbaa !29
  %t74 = icmp ne ptr %t73, null
  br i1 %t74, label %bb24, label %bb25
bb24:
  %t76 = load ptr, ptr %l42, !tbaa !29
  %t77 = load i64, ptr %t76, !range !{i64 0, i64 8}
  %t79 = icmp eq i64 %t77, 4
  store i1 %t79, ptr %l43, !tbaa !21
  br label %bb25
bb25:
  %t80 = load i1, ptr %l43, !tbaa !21
  br i1 %t80, label %bb26, label %bb27
bb26:
  %t81 = load ptr, ptr %l1, !tbaa !29
  %t83 = getelementptr { i64, [5 x i64] }, ptr %t81, i32 0, i32 1
  %t84 = getelementptr { %"compiler/source:Span", ptr, i1 }, ptr %t83, i32 0, i32 1
  %t85 = load ptr, ptr %t84
  store ptr %t85, ptr %l9, !tbaa !29
  br label %bb28
bb27:
  br label %bb30
bb28:
  %t87 = load ptr, ptr %l0, !tbaa !29
  %t88 = load ptr, ptr %l9, !tbaa !29
  %t89 = load i1, ptr %l2, !tbaa !21
  call void @compiler_2fnames_2ecompiler_2fnames_3aResolver_2ereceiverVars(ptr %v0, ptr %v1, ptr %t87, ptr %t88, i1 %t89)
  br label %bb29
bb29:
  br label %bb35
bb30:
  br i1 true, label %bb31, label %bb32
bb31:
  br label %bb33
bb32:
  br label %bb34
bb33:
  br label %bb35
bb34:
  call void @__olang_check_failed(ptr @olang_loc_1bcb50306faa07e3_18a30ea25b6c39c7)
  unreachable
bb35:
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2fnames_2ecompiler_2fnames_3aResolver_2erecord(ptr %v0, ptr %a0, %"compiler/source:Span" %a1, %"compiler/names:Ref" %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/source:Span"
  %l2 = alloca %"compiler/names:Ref"
  %l6 = alloca i1
  %l11 = alloca ptr
  %l17 = alloca ptr
  %l21 = alloca i64
  store ptr %a0, ptr %l0
  store %"compiler/source:Span" %a1, ptr %l1
  store %"compiler/names:Ref" %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = getelementptr %"compiler/names:Ref", ptr %l2, i32 0, i32 0
  %t2 = load i32, ptr %t1, !range !{i32 0, i32 9}
  %t4 = trunc i64 0 to i32
  %t5 = icmp eq i32 %t2, %t4
  %t7 = xor i1 %t5, true
  br i1 %t7, label %bb1, label %bb2
bb1:
  %t9 = load ptr, ptr %l0, !tbaa !29
  %t11 = getelementptr %"compiler/names:Resolver", ptr %t9, i32 0, i32 22
  %t12 = load i1, ptr %t11, !tbaa !21
  %t14 = xor i1 %t12, true
  store i1 %t14, ptr %l6, !tbaa !21
  br label %bb3
bb2:
  store i1 false, ptr %l6, !tbaa !21
  br label %bb3
bb3:
  %t16 = load i1, ptr %l6, !tbaa !21
  br i1 %t16, label %bb4, label %bb5
bb4:
  %t17 = load ptr, ptr %l0, !tbaa !29
  %t19 = getelementptr %"compiler/names:Resolver", ptr %t17, i32 0, i32 4
  store ptr %t19, ptr %l11, !tbaa !29
  %t20 = load ptr, ptr %l0, !tbaa !29
  %t22 = getelementptr %"compiler/names:Resolver", ptr %t20, i32 0, i32 0
  %t23 = load ptr, ptr %t22, !tbaa !29
  %t25 = getelementptr %"compiler/load:Loader", ptr %t23, i32 0, i32 10
  %t26 = load ptr, ptr %l0, !tbaa !29
  %t28 = getelementptr %"compiler/names:Resolver", ptr %t26, i32 0, i32 6
  %t29 = load i64, ptr %t28, !tbaa !24
  %t32 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H7bcf2aeb09afa796f4333e6ec8c3f63f(ptr %v0, ptr %v0, ptr %t25, i64 %t29)
  store ptr %t32, ptr %l17
  br label %bb6
bb5:
  br label %bb9
bb6:
  %t33 = load ptr, ptr %l17, !tbaa !29
  %t35 = getelementptr %"compiler/load:Module", ptr %t33, i32 0, i32 4
  %t36 = load i64, ptr %t35, !tbaa !24
  %t37 = getelementptr %"compiler/source:Span", ptr %l1, i32 0, i32 0
  %t38 = load i32, ptr %t37, !tbaa !23
  %t41 = call i64 @compiler_2fnames_2ekey(i64 %t36, i32 %t38)
  store i64 %t41, ptr %l21
  br label %bb7
bb7:
  %t42 = load %"compiler/names:Ref", ptr %l2
  %t43 = load ptr, ptr %l11, !tbaa !29
  %t44 = load i64, ptr %l21, !tbaa !24
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2fnames_3aRef_3e_2eP_Hb17c37756f956998a4fa74bcac088344(ptr %v0, ptr %t43, i64 %t44, %"compiler/names:Ref" %t42)
  br label %bb8
bb8:
  br label %bb9
bb9:
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2fnames_2ecompiler_2fnames_3aResolver_2esig(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i1 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i1
  %l3 = alloca ptr
  %l4 = alloca { i64, ptr }
  %l5 = alloca i64
  %l6 = alloca i64
  %l8 = alloca { i64, ptr }
  %l9 = alloca i64
  %l10 = alloca i64
  %l12 = alloca { i64, ptr }
  %l13 = alloca i64
  %l14 = alloca i64
  %l16 = alloca { i64, ptr }
  %l17 = alloca i64
  %l18 = alloca i64
  %l19 = alloca ptr
  %l20 = alloca { i64, ptr }
  %l21 = alloca i64
  %l22 = alloca i64
  %l23 = alloca ptr
  %l33 = alloca i1
  %l43 = alloca ptr
  %l51 = alloca ptr
  %l77 = alloca { i64, ptr }
  %l93 = alloca { i64, ptr }
  %l109 = alloca { i64, ptr }
  %l125 = alloca { i64, ptr }
  %l141 = alloca i1
  %l150 = alloca ptr
  %l158 = alloca ptr
  %l172 = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store i1 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l1, !tbaa !29
  %t3 = getelementptr %"compiler/ast:Func", ptr %t1, i32 0, i32 3
  %t4 = load ptr, ptr %t3, !tbaa !29
  store ptr %t4, ptr %l3, !tbaa !29
  %t6 = load ptr, ptr %l0, !tbaa !29
  %t7 = load ptr, ptr %l1, !tbaa !29
  %t9 = getelementptr %"compiler/ast:Func", ptr %t7, i32 0, i32 5
  %t10 = load { i64, ptr }, ptr %t9, !tbaa !27
  call void @compiler_2fnames_2ecompiler_2fnames_3aResolver_2etypeParams(ptr %v0, ptr %v1, ptr %t6, { i64, ptr } %t10)
  br label %bb1
bb1:
  %t13 = load ptr, ptr %l1, !tbaa !29
  %t15 = getelementptr %"compiler/ast:Func", ptr %t13, i32 0, i32 1
  %t16 = load ptr, ptr %t15, !tbaa !29
  %t18 = icmp eq ptr %t16, null
  %t20 = xor i1 %t18, true
  br i1 %t20, label %bb2, label %bb3
bb2:
  %t22 = load ptr, ptr %l1, !tbaa !29
  %t24 = getelementptr %"compiler/ast:Func", ptr %t22, i32 0, i32 1
  %t25 = load ptr, ptr %t24, !tbaa !29
  %t27 = icmp eq ptr %t25, null
  br i1 %t27, label %bb4, label %bb5
bb3:
  store i1 false, ptr %l33, !tbaa !21
  br label %bb7
bb4:
  call void @__olang_check_failed(ptr @olang_loc_f7af4f17da675e9e_7adee505b4454aba)
  unreachable
bb5:
  br label %bb6
bb6:
  %t29 = load ptr, ptr %l1, !tbaa !29
  %t31 = getelementptr %"compiler/ast:Func", ptr %t29, i32 0, i32 1
  %t32 = load ptr, ptr %t31, !tbaa !29
  %t35 = getelementptr %"compiler/ast:Param", ptr %t32, i32 0, i32 2
  %t36 = load ptr, ptr %t35, !tbaa !29
  %t38 = icmp eq ptr %t36, null
  %t40 = xor i1 %t38, true
  store i1 %t40, ptr %l33, !tbaa !21
  br label %bb7
bb7:
  %t42 = load i1, ptr %l33, !tbaa !21
  br i1 %t42, label %bb8, label %bb9
bb8:
  %t43 = load ptr, ptr %l0, !tbaa !29
  store ptr %t43, ptr %l43, !tbaa !29
  %t44 = load ptr, ptr %l1, !tbaa !29
  %t46 = getelementptr %"compiler/ast:Func", ptr %t44, i32 0, i32 1
  %t47 = load ptr, ptr %t46, !tbaa !29
  %t49 = icmp eq ptr %t47, null
  br i1 %t49, label %bb10, label %bb11
bb9:
  br label %bb18
bb10:
  call void @__olang_check_failed(ptr @olang_loc_4b15e456fcf3a345_7adab712aa943e41)
  unreachable
bb11:
  br label %bb12
bb12:
  %t51 = load ptr, ptr %l1, !tbaa !29
  %t53 = getelementptr %"compiler/ast:Func", ptr %t51, i32 0, i32 1
  %t54 = load ptr, ptr %t53, !tbaa !29
  %t57 = getelementptr %"compiler/ast:Param", ptr %t54, i32 0, i32 2
  %t58 = load ptr, ptr %t57, !tbaa !29
  %t59 = load ptr, ptr %l43, !tbaa !29
  call void @compiler_2fnames_2ecompiler_2fnames_3aResolver_2ereceiverVars(ptr %v0, ptr %v1, ptr %t59, ptr %t58, i1 false)
  br label %bb13
bb13:
  %t61 = load ptr, ptr %l0, !tbaa !29
  store ptr %t61, ptr %l51, !tbaa !29
  %t62 = load ptr, ptr %l1, !tbaa !29
  %t64 = getelementptr %"compiler/ast:Func", ptr %t62, i32 0, i32 1
  %t65 = load ptr, ptr %t64, !tbaa !29
  %t67 = icmp eq ptr %t65, null
  br i1 %t67, label %bb14, label %bb15
bb14:
  call void @__olang_check_failed(ptr @olang_loc_2e22b0ea443c0bf0_cc72b894f0b6250c)
  unreachable
bb15:
  br label %bb16
bb16:
  %t69 = load ptr, ptr %l1, !tbaa !29
  %t71 = getelementptr %"compiler/ast:Func", ptr %t69, i32 0, i32 1
  %t72 = load ptr, ptr %t71, !tbaa !29
  %t75 = getelementptr %"compiler/ast:Param", ptr %t72, i32 0, i32 2
  %t76 = load ptr, ptr %t75, !tbaa !29
  %t77 = load ptr, ptr %l51, !tbaa !29
  call void @compiler_2fnames_2ecompiler_2fnames_3aResolver_2etypeRef(ptr %v0, ptr %v1, ptr %t77, ptr %t76)
  br label %bb17
bb17:
  br label %bb18
bb18:
  %t79 = load ptr, ptr %l1, !tbaa !29
  %t81 = getelementptr %"compiler/ast:Func", ptr %t79, i32 0, i32 9
  %t82 = load ptr, ptr %t81, !tbaa !29
  %t84 = icmp eq ptr %t82, null
  %t86 = xor i1 %t84, true
  br i1 %t86, label %bb19, label %bb20
bb19:
  %t88 = load ptr, ptr %l0, !tbaa !29
  %t89 = load ptr, ptr %l1, !tbaa !29
  %t91 = getelementptr %"compiler/ast:Func", ptr %t89, i32 0, i32 9
  %t92 = load ptr, ptr %t91, !tbaa !29
  call void @compiler_2fnames_2ecompiler_2fnames_3aResolver_2ereceiverVars(ptr %v0, ptr %v1, ptr %t88, ptr %t92, i1 false)
  br label %bb21
bb20:
  br label %bb23
bb21:
  %t95 = load ptr, ptr %l0, !tbaa !29
  %t96 = load ptr, ptr %l1, !tbaa !29
  %t98 = getelementptr %"compiler/ast:Func", ptr %t96, i32 0, i32 9
  %t99 = load ptr, ptr %t98, !tbaa !29
  call void @compiler_2fnames_2ecompiler_2fnames_3aResolver_2etypeRef(ptr %v0, ptr %v1, ptr %t95, ptr %t99)
  br label %bb22
bb22:
  br label %bb23
bb23:
  %t102 = load ptr, ptr %l3, !tbaa !29
  %t104 = getelementptr %"compiler/ast:Sig", ptr %t102, i32 0, i32 0
  %t105 = load { i64, ptr }, ptr %t104, !tbaa !27
  store { i64, ptr } %t105, ptr %l4, !tbaa !27
  store i64 0, ptr %l5, !tbaa !24
  %t107 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t109 = extractvalue { i64, ptr } %t107, 0
  store i64 %t109, ptr %l6, !tbaa !24
  br label %bb24
bb24:
  %t111 = load i64, ptr %l5, !tbaa !24
  %t112 = load i64, ptr %l6, !tbaa !24
  %t115 = icmp slt i64 %t111, %t112
  %t117 = xor i1 %t115, true
  br i1 %t117, label %bb25, label %bb26
bb25:
  br label %bb30
bb26:
  br label %bb27
bb27:
  %t119 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t119, ptr %l77, !tbaa !27
  %t120 = load i64, ptr %l5, !tbaa !24
  %t122 = getelementptr { i64, ptr }, ptr %l77, i32 0, i32 1
  %t123 = load ptr, ptr %t122, !tbaa !27
  %t124 = getelementptr ptr, ptr %t123, i64 %t120
  %t125 = load ptr, ptr %t124, !tbaa !39
  %t127 = load ptr, ptr %l0, !tbaa !29
  %t130 = getelementptr %"compiler/ast:Param", ptr %t125, i32 0, i32 2
  %t131 = load ptr, ptr %t130, !tbaa !29
  call void @compiler_2fnames_2ecompiler_2fnames_3aResolver_2etypeRef(ptr %v0, ptr %v1, ptr %t127, ptr %t131)
  br label %bb28
bb28:
  br label %bb29
bb29:
  %t134 = load i64, ptr %l5, !tbaa !24
  %t136 = add i64 %t134, 1
  store i64 %t136, ptr %l5, !tbaa !24
  br label %bb24
bb30:
  %t138 = load ptr, ptr %l3, !tbaa !29
  %t140 = getelementptr %"compiler/ast:Sig", ptr %t138, i32 0, i32 1
  %t141 = load { i64, ptr }, ptr %t140, !tbaa !27
  store { i64, ptr } %t141, ptr %l8, !tbaa !27
  store i64 0, ptr %l9, !tbaa !24
  %t143 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t145 = extractvalue { i64, ptr } %t143, 0
  store i64 %t145, ptr %l10, !tbaa !24
  br label %bb31
bb31:
  %t147 = load i64, ptr %l9, !tbaa !24
  %t148 = load i64, ptr %l10, !tbaa !24
  %t151 = icmp slt i64 %t147, %t148
  %t153 = xor i1 %t151, true
  br i1 %t153, label %bb32, label %bb33
bb32:
  br label %bb37
bb33:
  br label %bb34
bb34:
  %t155 = load { i64, ptr }, ptr %l8, !tbaa !27
  store { i64, ptr } %t155, ptr %l93, !tbaa !27
  %t156 = load i64, ptr %l9, !tbaa !24
  %t158 = getelementptr { i64, ptr }, ptr %l93, i32 0, i32 1
  %t159 = load ptr, ptr %t158, !tbaa !27
  %t160 = getelementptr ptr, ptr %t159, i64 %t156
  %t161 = load ptr, ptr %t160, !tbaa !39
  %t163 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2fnames_2ecompiler_2fnames_3aResolver_2etypeRef(ptr %v0, ptr %v1, ptr %t163, ptr %t161)
  br label %bb35
bb35:
  br label %bb36
bb36:
  %t168 = load i64, ptr %l9, !tbaa !24
  %t170 = add i64 %t168, 1
  store i64 %t170, ptr %l9, !tbaa !24
  br label %bb31
bb37:
  %t172 = load ptr, ptr %l3, !tbaa !29
  %t174 = getelementptr %"compiler/ast:Sig", ptr %t172, i32 0, i32 3
  %t175 = load { i64, ptr }, ptr %t174, !tbaa !27
  store { i64, ptr } %t175, ptr %l12, !tbaa !27
  store i64 0, ptr %l13, !tbaa !24
  %t177 = load { i64, ptr }, ptr %l12, !tbaa !27
  %t179 = extractvalue { i64, ptr } %t177, 0
  store i64 %t179, ptr %l14, !tbaa !24
  br label %bb38
bb38:
  %t181 = load i64, ptr %l13, !tbaa !24
  %t182 = load i64, ptr %l14, !tbaa !24
  %t185 = icmp slt i64 %t181, %t182
  %t187 = xor i1 %t185, true
  br i1 %t187, label %bb39, label %bb40
bb39:
  br label %bb44
bb40:
  br label %bb41
bb41:
  %t189 = load { i64, ptr }, ptr %l12, !tbaa !27
  store { i64, ptr } %t189, ptr %l109, !tbaa !27
  %t190 = load i64, ptr %l13, !tbaa !24
  %t192 = getelementptr { i64, ptr }, ptr %l109, i32 0, i32 1
  %t193 = load ptr, ptr %t192, !tbaa !27
  %t194 = getelementptr ptr, ptr %t193, i64 %t190
  %t195 = load ptr, ptr %t194, !tbaa !39
  %t197 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2fnames_2ecompiler_2fnames_3aResolver_2epath(ptr %v0, ptr %v1, ptr %t197, ptr %t195)
  br label %bb42
bb42:
  br label %bb43
bb43:
  %t202 = load i64, ptr %l13, !tbaa !24
  %t204 = add i64 %t202, 1
  store i64 %t204, ptr %l13, !tbaa !24
  br label %bb38
bb44:
  %t206 = load ptr, ptr %l3, !tbaa !29
  %t208 = getelementptr %"compiler/ast:Sig", ptr %t206, i32 0, i32 0
  %t209 = load { i64, ptr }, ptr %t208, !tbaa !27
  store { i64, ptr } %t209, ptr %l16, !tbaa !27
  store i64 0, ptr %l17, !tbaa !24
  %t211 = load { i64, ptr }, ptr %l16, !tbaa !27
  %t213 = extractvalue { i64, ptr } %t211, 0
  store i64 %t213, ptr %l18, !tbaa !24
  br label %bb45
bb45:
  %t215 = load i64, ptr %l17, !tbaa !24
  %t216 = load i64, ptr %l18, !tbaa !24
  %t219 = icmp slt i64 %t215, %t216
  %t221 = xor i1 %t219, true
  br i1 %t221, label %bb46, label %bb47
bb46:
  br label %bb54
bb47:
  br label %bb48
bb48:
  %t223 = load { i64, ptr }, ptr %l16, !tbaa !27
  store { i64, ptr } %t223, ptr %l125, !tbaa !27
  %t224 = load i64, ptr %l17, !tbaa !24
  %t226 = getelementptr { i64, ptr }, ptr %l125, i32 0, i32 1
  %t227 = load ptr, ptr %t226, !tbaa !27
  %t228 = getelementptr ptr, ptr %t227, i64 %t224
  %t229 = load ptr, ptr %t228, !tbaa !39
  store ptr %t229, ptr %l19, !tbaa !29
  %t231 = load ptr, ptr %l19, !tbaa !29
  %t233 = getelementptr %"compiler/ast:Param", ptr %t231, i32 0, i32 3
  %t234 = load ptr, ptr %t233, !tbaa !29
  %t236 = icmp eq ptr %t234, null
  %t238 = xor i1 %t236, true
  br i1 %t238, label %bb49, label %bb50
bb49:
  %t240 = load ptr, ptr %l0, !tbaa !29
  %t241 = load ptr, ptr %l19, !tbaa !29
  %t243 = getelementptr %"compiler/ast:Param", ptr %t241, i32 0, i32 3
  %t244 = load ptr, ptr %t243, !tbaa !29
  call void @compiler_2fnames_2ecompiler_2fnames_3aResolver_2eexpr(ptr %v0, ptr %v1, ptr %t240, ptr %t244)
  br label %bb51
bb50:
  br label %bb52
bb51:
  br label %bb52
bb52:
  br label %bb53
bb53:
  %t247 = load i64, ptr %l17, !tbaa !24
  %t249 = add i64 %t247, 1
  store i64 %t249, ptr %l17, !tbaa !24
  br label %bb45
bb54:
  %t251 = load ptr, ptr %l1, !tbaa !29
  %t253 = getelementptr %"compiler/ast:Func", ptr %t251, i32 0, i32 1
  %t254 = load ptr, ptr %t253, !tbaa !29
  %t256 = icmp eq ptr %t254, null
  %t258 = xor i1 %t256, true
  br i1 %t258, label %bb55, label %bb56
bb55:
  %t260 = load ptr, ptr %l1, !tbaa !29
  %t262 = getelementptr %"compiler/ast:Func", ptr %t260, i32 0, i32 1
  %t263 = load ptr, ptr %t262, !tbaa !29
  %t265 = icmp eq ptr %t263, null
  br i1 %t265, label %bb57, label %bb58
bb56:
  store i1 false, ptr %l141, !tbaa !21
  br label %bb60
bb57:
  call void @__olang_check_failed(ptr @olang_loc_668f2e502e7138cf_4506733ced80a77b)
  unreachable
bb58:
  br label %bb59
bb59:
  %t267 = load ptr, ptr %l1, !tbaa !29
  %t269 = getelementptr %"compiler/ast:Func", ptr %t267, i32 0, i32 1
  %t270 = load ptr, ptr %t269, !tbaa !29
  %t273 = getelementptr %"compiler/ast:Param", ptr %t270, i32 0, i32 1
  %t274 = load i32, ptr %t273, !tbaa !23
  %t276 = icmp ne i32 %t274, 0
  store i1 %t276, ptr %l141, !tbaa !21
  br label %bb60
bb60:
  %t278 = load i1, ptr %l141, !tbaa !21
  br i1 %t278, label %bb61, label %bb62
bb61:
  %t279 = load ptr, ptr %l0, !tbaa !29
  store ptr %t279, ptr %l150, !tbaa !29
  %t280 = load ptr, ptr %l1, !tbaa !29
  %t282 = getelementptr %"compiler/ast:Func", ptr %t280, i32 0, i32 1
  %t283 = load ptr, ptr %t282, !tbaa !29
  %t285 = icmp eq ptr %t283, null
  br i1 %t285, label %bb63, label %bb64
bb62:
  br label %bb74
bb63:
  call void @__olang_check_failed(ptr @olang_loc_97417a283903a82_ac3e213ae41817f6)
  unreachable
bb64:
  br label %bb65
bb65:
  %t287 = load ptr, ptr %l1, !tbaa !29
  %t289 = getelementptr %"compiler/ast:Func", ptr %t287, i32 0, i32 1
  %t290 = load ptr, ptr %t289, !tbaa !29
  %t291 = load i1, ptr %l2, !tbaa !21
  %t292 = load ptr, ptr %l150, !tbaa !29
  call void @compiler_2fnames_2ecompiler_2fnames_3aResolver_2eparam(ptr %v0, ptr %v1, ptr %t292, ptr %t290, i1 %t291)
  br label %bb66
bb66:
  %t295 = load i1, ptr %l2, !tbaa !21
  br i1 %t295, label %bb67, label %bb68
bb67:
  %t297 = load ptr, ptr %l0, !tbaa !29
  store ptr %t297, ptr %l158, !tbaa !29
  %t298 = load ptr, ptr %l1, !tbaa !29
  %t300 = getelementptr %"compiler/ast:Func", ptr %t298, i32 0, i32 1
  %t301 = load ptr, ptr %t300, !tbaa !29
  %t303 = icmp eq ptr %t301, null
  br i1 %t303, label %bb69, label %bb70
bb68:
  br label %bb73
bb69:
  call void @__olang_check_failed(ptr @olang_loc_6175710135d1c169_c21d56ac8dc09c5d)
  unreachable
bb70:
  br label %bb71
bb71:
  %t305 = load ptr, ptr %l1, !tbaa !29
  %t307 = getelementptr %"compiler/ast:Func", ptr %t305, i32 0, i32 1
  %t308 = load ptr, ptr %t307, !tbaa !29
  %t309 = load ptr, ptr %l158, !tbaa !29
  call void @compiler_2fnames_2ecompiler_2fnames_3aResolver_2eparamStart(ptr %v0, ptr %v1, ptr %t309, ptr %t308)
  br label %bb72
bb72:
  br label %bb73
bb73:
  br label %bb74
bb74:
  %t311 = load ptr, ptr %l3, !tbaa !29
  %t313 = getelementptr %"compiler/ast:Sig", ptr %t311, i32 0, i32 0
  %t314 = load { i64, ptr }, ptr %t313, !tbaa !27
  store { i64, ptr } %t314, ptr %l20, !tbaa !27
  store i64 0, ptr %l21, !tbaa !24
  %t316 = load { i64, ptr }, ptr %l20, !tbaa !27
  %t318 = extractvalue { i64, ptr } %t316, 0
  store i64 %t318, ptr %l22, !tbaa !24
  br label %bb75
bb75:
  %t320 = load i64, ptr %l21, !tbaa !24
  %t321 = load i64, ptr %l22, !tbaa !24
  %t324 = icmp slt i64 %t320, %t321
  %t326 = xor i1 %t324, true
  br i1 %t326, label %bb76, label %bb77
bb76:
  br label %bb85
bb77:
  br label %bb78
bb78:
  %t328 = load { i64, ptr }, ptr %l20, !tbaa !27
  store { i64, ptr } %t328, ptr %l172, !tbaa !27
  %t329 = load i64, ptr %l21, !tbaa !24
  %t331 = getelementptr { i64, ptr }, ptr %l172, i32 0, i32 1
  %t332 = load ptr, ptr %t331, !tbaa !27
  %t333 = getelementptr ptr, ptr %t332, i64 %t329
  %t334 = load ptr, ptr %t333, !tbaa !39
  store ptr %t334, ptr %l23, !tbaa !29
  %t336 = load ptr, ptr %l0, !tbaa !29
  %t337 = load ptr, ptr %l23, !tbaa !29
  %t338 = load i1, ptr %l2, !tbaa !21
  call void @compiler_2fnames_2ecompiler_2fnames_3aResolver_2eparam(ptr %v0, ptr %v1, ptr %t336, ptr %t337, i1 %t338)
  br label %bb79
bb79:
  %t342 = load i1, ptr %l2, !tbaa !21
  br i1 %t342, label %bb80, label %bb81
bb80:
  %t344 = load ptr, ptr %l0, !tbaa !29
  %t345 = load ptr, ptr %l23, !tbaa !29
  call void @compiler_2fnames_2ecompiler_2fnames_3aResolver_2eparamStart(ptr %v0, ptr %v1, ptr %t344, ptr %t345)
  br label %bb82
bb81:
  br label %bb83
bb82:
  br label %bb83
bb83:
  br label %bb84
bb84:
  %t348 = load i64, ptr %l21, !tbaa !24
  %t350 = add i64 %t348, 1
  store i64 %t350, ptr %l21, !tbaa !24
  br label %bb75
bb85:
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2fnames_2ecompiler_2fnames_3aResolver_2estartItem(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l19 = alloca ptr
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t5 = getelementptr %"compiler/names:Resolver", ptr %t1, i32 0, i32 6
  store i64 %a1, ptr %t5, !tbaa !24
  %t6 = load ptr, ptr %l0, !tbaa !29
  %t8 = getelementptr %"compiler/names:Resolver", ptr %t6, i32 0, i32 7
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fnames_3alocal_3e_2eClear_3ccompiler_2fnames_3alocal_3e(ptr %v0, ptr %t8)
  br label %bb1
bb1:
  %t10 = load ptr, ptr %l0, !tbaa !29
  %t12 = getelementptr %"compiler/names:Resolver", ptr %t10, i32 0, i32 26
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2eClear_3cI64_2c_20I64_3e(ptr %v0, ptr %t12)
  br label %bb2
bb2:
  %t14 = load ptr, ptr %l0, !tbaa !29
  %t16 = getelementptr %"compiler/names:Resolver", ptr %t14, i32 0, i32 8
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fsource_3aNameId_2c_20I64_3e_Hb7e448baed1c9668005f7dc6325e5707(ptr %v0, ptr %t16)
  br label %bb3
bb3:
  %t18 = load ptr, ptr %l0, !tbaa !29
  %t20 = getelementptr %"compiler/names:Resolver", ptr %t18, i32 0, i32 9
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fpair_3aPair_3ccompiler_2fsource__H263d9150b58237aac70cb39b886b10bb(ptr %v0, ptr %t20)
  br label %bb4
bb4:
  %t22 = load ptr, ptr %l0, !tbaa !29
  %t24 = getelementptr %"compiler/names:Resolver", ptr %t22, i32 0, i32 10
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aNameId_3e_2eClear_3ccompiler_2fsource_3aNameId_3e(ptr %v0, ptr %t24)
  br label %bb5
bb5:
  %t26 = load ptr, ptr %l0, !tbaa !29
  %t28 = getelementptr %"compiler/names:Resolver", ptr %t26, i32 0, i32 11
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aNameId_3e_2eClear_3ccompiler_2fsource_3aNameId_3e(ptr %v0, ptr %t28)
  br label %bb6
bb6:
  %t30 = load ptr, ptr %l0, !tbaa !29
  %t32 = getelementptr %"compiler/names:Resolver", ptr %t30, i32 0, i32 17
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aSpan_3e_2eClear_3ccompiler_2fsource_3aSpan_3e(ptr %v0, ptr %t32)
  br label %bb7
bb7:
  %t34 = load ptr, ptr %l0, !tbaa !29
  %t36 = getelementptr %"compiler/names:Resolver", ptr %t34, i32 0, i32 12
  store i1 false, ptr %t36, !tbaa !21
  %t37 = load ptr, ptr %l0, !tbaa !29
  store ptr %t37, ptr %l19, !tbaa !29
  %t38 = load ptr, ptr %l19, !tbaa !29
  %t39 = getelementptr %"compiler/names:Resolver", ptr %t38, i32 0, i32 14
  %t40 = load i64, ptr %t39, !tbaa !24
  %t42 = add i64 %t40, 1
  %t44 = load ptr, ptr %l19, !tbaa !29
  %t45 = getelementptr %"compiler/names:Resolver", ptr %t44, i32 0, i32 14
  store i64 %t42, ptr %t45, !tbaa !24
  br label %ret
ret:
  ret void
}

define dso_local i1 @compiler_2fnames_2ecompiler_2fnames_3aResolver_2esuggests(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca { i64, ptr }
  %l2 = alloca i64
  %l3 = alloca i64
  %l4 = alloca ptr
  %l5 = alloca i64
  %l6 = alloca i64
  %l8 = alloca ptr
  %l9 = alloca i64
  %l10 = alloca %"compiler/names:Entry"
  %l11 = alloca ptr
  %l12 = alloca i64
  %l14 = alloca %"std/prelude/map:MapIter.bf5835bb10600fe6a7fc1da14a6360d9"
  %l15 = alloca %"std/prelude/map:MapEntry.ee791c76fa337c2e45b252e8964cf3ed"
  %l19 = alloca i1
  %l20 = alloca { i64, ptr }
  %l25 = alloca i1
  %l30 = alloca i1
  %l31 = alloca { i64, ptr }
  %l35 = alloca i1
  %l44 = alloca i1
  %l45 = alloca { i64, ptr }
  %l46 = alloca i64
  %l51 = alloca { i64, ptr }
  %l52 = alloca { i64, ptr }
  %l53 = alloca i64
  %l56 = alloca i64
  %l57 = alloca i64
  %l64 = alloca i1
  %l67 = alloca i1
  %l72 = alloca i64
  %l73 = alloca [14 x { i64, ptr }]
  %l86 = alloca i64
  %l96 = alloca ptr
  %l99 = alloca i64
  %l101 = alloca i64
  %l106 = alloca %"compiler/names:Entry"
  %l107 = alloca { i64, ptr }
  %l110 = alloca { i64, ptr }
  %l111 = alloca i64
  %l122 = alloca ptr
  %l125 = alloca i64
  %l127 = alloca i64
  %l132 = alloca { i64, ptr }
  %l135 = alloca i64
  %l143 = alloca %"std/prelude/map:MapIter.bf5835bb10600fe6a7fc1da14a6360d9"
  %l144 = alloca %"std/prelude/map:MapEntry.ee791c76fa337c2e45b252e8964cf3ed"
  %l146 = alloca %"std/prelude/map:MapEntry.ee791c76fa337c2e45b252e8964cf3ed"
  %l147 = alloca i32
  %l149 = alloca i1
  %l150 = alloca { i64, ptr }
  %l153 = alloca { i64, ptr }
  %l154 = alloca i64
  %s0 = alloca %olang.scope
  %s1 = alloca %olang.scope
  %s6 = alloca %olang.scope
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store { i64, ptr } %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t3 = extractvalue { i64, ptr } %t1, 0
  %t5 = icmp sge i64 %t3, 2
  br i1 %t5, label %bb1, label %bb2
bb1:
  %t7 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t7, ptr %l20, !tbaa !27
  %t8 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t10 = extractvalue { i64, ptr } %t8, 0
  %t12 = sub i64 %t10, 1
  %t14 = getelementptr { i64, ptr }, ptr %l20, i32 0, i32 1
  %t15 = load ptr, ptr %t14, !tbaa !27
  %t16 = getelementptr i8, ptr %t15, i64 %t12
  %t17 = load i8, ptr %t16, !tbaa !32
  %t19 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aChar_2eIsDigit(i8 %t17)
  store i1 %t19, ptr %l25
  br label %bb3
bb2:
  store i1 false, ptr %l19, !tbaa !21
  br label %bb4
bb3:
  %t20 = load i1, ptr %l25, !tbaa !21
  store i1 %t20, ptr %l19, !tbaa !21
  br label %bb4
bb4:
  %t21 = load i1, ptr %l19, !tbaa !21
  br i1 %t21, label %bb5, label %bb6
bb5:
  store %olang.scope zeroinitializer, ptr %s1
  %t22 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t24 = extractvalue { i64, ptr } %t22, 0
  store i64 %t24, ptr %l2, !tbaa !24
  br label %bb7
bb6:
  br label %bb37
bb7:
  %t26 = load i64, ptr %l2, !tbaa !24
  %t28 = icmp sgt i64 %t26, 0
  br i1 %t28, label %bb8, label %bb9
bb8:
  %t30 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t30, ptr %l31, !tbaa !27
  %t31 = load i64, ptr %l2, !tbaa !24
  %t33 = sub i64 %t31, 1
  %t35 = getelementptr { i64, ptr }, ptr %l31, i32 0, i32 1
  %t36 = load ptr, ptr %t35, !tbaa !27
  %t37 = getelementptr i8, ptr %t36, i64 %t33
  %t38 = load i8, ptr %t37, !tbaa !32
  %t40 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aChar_2eIsDigit(i8 %t38)
  store i1 %t40, ptr %l35
  br label %bb10
bb9:
  store i1 false, ptr %l30, !tbaa !21
  br label %bb11
bb10:
  %t41 = load i1, ptr %l35, !tbaa !21
  store i1 %t41, ptr %l30, !tbaa !21
  br label %bb11
bb11:
  %t42 = load i1, ptr %l30, !tbaa !21
  %t43 = xor i1 %t42, true
  br i1 %t43, label %bb12, label %bb13
bb12:
  br label %bb16
bb13:
  br label %bb14
bb14:
  %t45 = load i64, ptr %l2, !tbaa !24
  %t47 = sub i64 %t45, 1
  store i64 %t47, ptr %l2, !tbaa !24
  br label %bb15
bb15:
  br label %bb7
bb16:
  %t49 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t51 = extractvalue { i64, ptr } %t49, 0
  %t52 = load i64, ptr %l2, !tbaa !24
  %t55 = sub i64 %t51, %t52
  %t57 = icmp slt i64 %t55, 8
  br i1 %t57, label %bb17, label %bb18
bb17:
  %t59 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t59, ptr %l45, !tbaa !27
  %t60 = load { i64, ptr }, ptr %l45, !tbaa !27
  %t61 = extractvalue { i64, ptr } %t60, 0
  store i64 %t61, ptr %l46, !tbaa !24
  %t62 = icmp sge i64 0, 0
  br i1 %t62, label %bb19, label %bb20
bb18:
  store i1 false, ptr %l44, !tbaa !21
  br label %bb33
bb19:
  %t64 = icmp sle i64 0, 1
  br i1 %t64, label %bb21, label %bb22
bb20:
  call void @__olang_check_failed(ptr @olang_loc_f16fd081e6fbed18_62e1963dfff5da0c)
  unreachable
bb21:
  %t66 = load i64, ptr %l46, !tbaa !24
  %t67 = icmp sle i64 1, %t66
  br i1 %t67, label %bb23, label %bb24
bb22:
  call void @__olang_check_failed(ptr @olang_loc_f16fd081e6fbed18_62e1963dfff5da0c)
  unreachable
bb23:
  %t69 = getelementptr { i64, ptr }, ptr %l45, i32 0, i32 1
  %t70 = load ptr, ptr %t69, !tbaa !27
  %t71 = getelementptr i8, ptr %t70, i64 0
  %t72 = sub i64 1, 0
  %t73 = insertvalue { i64, ptr } undef, i64 %t72, 0
  %t74 = insertvalue { i64, ptr } %t73, ptr %t71, 1
  %t76 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eToUpper(ptr %v1, ptr %s1, { i64, ptr } %t74)
  store { i64, ptr } %t76, ptr %l51
  br label %bb25
bb24:
  call void @__olang_check_failed(ptr @olang_loc_f16fd081e6fbed18_62e1963dfff5da0c)
  unreachable
bb25:
  %t77 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t77, ptr %l52, !tbaa !27
  %t78 = load i64, ptr %l2, !tbaa !24
  store i64 %t78, ptr %l53, !tbaa !24
  %t79 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t82 = extractvalue { i64, ptr } %t79, 0
  store i64 %t82, ptr %l56, !tbaa !24
  %t83 = load { i64, ptr }, ptr %l52, !tbaa !27
  %t84 = extractvalue { i64, ptr } %t83, 0
  store i64 %t84, ptr %l57, !tbaa !24
  %t85 = load i64, ptr %l53, !tbaa !24
  %t86 = icmp sge i64 %t85, 0
  br i1 %t86, label %bb26, label %bb27
bb26:
  %t88 = load i64, ptr %l53, !tbaa !24
  %t89 = load i64, ptr %l56, !tbaa !24
  %t90 = icmp sle i64 %t88, %t89
  br i1 %t90, label %bb28, label %bb29
bb27:
  call void @__olang_check_failed(ptr @olang_loc_f16fd081e6fbed18_62e1963dfff5da0c)
  unreachable
bb28:
  %t92 = load i64, ptr %l56, !tbaa !24
  %t93 = load i64, ptr %l57, !tbaa !24
  %t94 = icmp sle i64 %t92, %t93
  br i1 %t94, label %bb30, label %bb31
bb29:
  call void @__olang_check_failed(ptr @olang_loc_f16fd081e6fbed18_62e1963dfff5da0c)
  unreachable
bb30:
  %t96 = getelementptr { i64, ptr }, ptr %l52, i32 0, i32 1
  %t97 = load ptr, ptr %t96, !tbaa !27
  %t98 = load i64, ptr %l53, !tbaa !24
  %t99 = load i64, ptr %l56, !tbaa !24
  %t100 = getelementptr i8, ptr %t97, i64 %t98
  %t101 = sub i64 %t99, %t98
  %t102 = insertvalue { i64, ptr } undef, i64 %t101, 0
  %t103 = insertvalue { i64, ptr } %t102, ptr %t100, 1
  %t104 = load { i64, ptr }, ptr %l51, !tbaa !27
  %t105 = extractvalue { i64, ptr } %t104, 1
  %t106 = extractvalue { i64, ptr } %t104, 0
  %t108 = extractvalue { i64, ptr } %t103, 1
  %t109 = extractvalue { i64, ptr } %t103, 0
  %t110 = add i64 %t106, %t109
  %t111 = call ptr @__olang_scope_alloc(ptr %s1, i64 %t110)
  call void @olang_textcopy(ptr %t111, ptr %t105, i64 %t106)
  %t112 = getelementptr i8, ptr %t111, i64 %t106
  call void @olang_textcopy(ptr %t112, ptr %t108, i64 %t109)
  %t113 = insertvalue { i64, ptr } undef, i64 %t110, 0
  %t114 = insertvalue { i64, ptr } %t113, ptr %t111, 1
  %t116 = extractvalue { i64, ptr } %t114, 0
  %t117 = extractvalue { i64, ptr } %t114, 1
  %t118 = mul i64 %t116, 1
  %t119 = call ptr @__olang_scope_alloc(ptr %s1, i64 %t118)
  call void @llvm.memcpy.p0.p0.i64(ptr %t119, ptr %t117, i64 %t118, i1 false)
  %t120 = insertvalue { i64, ptr } undef, i64 %t116, 0
  %t121 = insertvalue { i64, ptr } %t120, ptr %t119, 1
  %t123 = call i1 @compiler_2fnames_2eBuiltinTypeName(ptr %s1, { i64, ptr } %t121)
  store i1 %t123, ptr %l64
  br label %bb32
bb31:
  call void @__olang_check_failed(ptr @olang_loc_f16fd081e6fbed18_62e1963dfff5da0c)
  unreachable
bb32:
  %t124 = load i1, ptr %l64, !tbaa !21
  store i1 %t124, ptr %l44, !tbaa !21
  br label %bb33
bb33:
  %t125 = load i1, ptr %l44, !tbaa !21
  br i1 %t125, label %bb34, label %bb35
bb34:
  call void @__olang_scope_close(ptr %s1)
  call void @__olang_scope_close(ptr %s0)
  store i1 true, ptr %rv
  br label %ret
bb35:
  br label %bb36
bb36:
  call void @__olang_scope_close(ptr %s1)
  br label %bb37
bb37:
  %t127 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t129 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v1, ptr %s0, { i64, ptr } %t127, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d25, i32 0, i32 1) })
  store i1 %t129, ptr %l67
  br label %bb38
bb38:
  %t130 = load i1, ptr %l67, !tbaa !21
  br i1 %t130, label %bb39, label %bb40
bb39:
  call void @__olang_scope_close(ptr %s0)
  store i1 true, ptr %rv
  br label %ret
bb40:
  br label %bb41
bb41:
  %t132 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t134 = extractvalue { i64, ptr } %t132, 0
  %t136 = icmp sle i64 %t134, 4
  br i1 %t136, label %bb42, label %bb43
bb42:
  store i64 2, ptr %l72, !tbaa !24
  br label %bb44
bb43:
  store i64 3, ptr %l72, !tbaa !24
  br label %bb44
bb44:
  %t138 = load i64, ptr %l72, !tbaa !24
  store i64 %t138, ptr %l3, !tbaa !24
  store %olang.scope zeroinitializer, ptr %s6
  %t139 = getelementptr [14 x { i64, ptr }], ptr %l73, i64 0, i64 0
  store { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d26, i32 0, i32 1) }, ptr %t139, !tbaa !37
  %t140 = getelementptr [14 x { i64, ptr }], ptr %l73, i64 0, i64 1
  store { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d27, i32 0, i32 1) }, ptr %t140, !tbaa !37
  %t141 = getelementptr [14 x { i64, ptr }], ptr %l73, i64 0, i64 2
  store { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d28, i32 0, i32 1) }, ptr %t141, !tbaa !37
  %t142 = getelementptr [14 x { i64, ptr }], ptr %l73, i64 0, i64 3
  store { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d29, i32 0, i32 1) }, ptr %t142, !tbaa !37
  %t143 = getelementptr [14 x { i64, ptr }], ptr %l73, i64 0, i64 4
  store { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d30, i32 0, i32 1) }, ptr %t143, !tbaa !37
  %t144 = getelementptr [14 x { i64, ptr }], ptr %l73, i64 0, i64 5
  store { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d31, i32 0, i32 1) }, ptr %t144, !tbaa !37
  %t145 = getelementptr [14 x { i64, ptr }], ptr %l73, i64 0, i64 6
  store { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d32, i32 0, i32 1) }, ptr %t145, !tbaa !37
  %t146 = getelementptr [14 x { i64, ptr }], ptr %l73, i64 0, i64 7
  store { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d33, i32 0, i32 1) }, ptr %t146, !tbaa !37
  %t147 = getelementptr [14 x { i64, ptr }], ptr %l73, i64 0, i64 8
  store { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d34, i32 0, i32 1) }, ptr %t147, !tbaa !37
  %t148 = getelementptr [14 x { i64, ptr }], ptr %l73, i64 0, i64 9
  store { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d35, i32 0, i32 1) }, ptr %t148, !tbaa !37
  %t149 = getelementptr [14 x { i64, ptr }], ptr %l73, i64 0, i64 10
  store { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d36, i32 0, i32 1) }, ptr %t149, !tbaa !37
  %t150 = getelementptr [14 x { i64, ptr }], ptr %l73, i64 0, i64 11
  store { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d37, i32 0, i32 1) }, ptr %t150, !tbaa !37
  %t151 = getelementptr [14 x { i64, ptr }], ptr %l73, i64 0, i64 12
  store { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d38, i32 0, i32 1) }, ptr %t151, !tbaa !37
  %t152 = getelementptr [14 x { i64, ptr }], ptr %l73, i64 0, i64 13
  store { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d39, i32 0, i32 1) }, ptr %t152, !tbaa !37
  %t153 = call ptr @__olang_scope_alloc_a(ptr %s6, i64 224, i64 8)
  call void @llvm.memmove.p0.p0.i64(ptr %t153, ptr %l73, i64 224, i1 false)
  store ptr %t153, ptr %l4
  store i64 0, ptr %l5, !tbaa !24
  %t155 = load ptr, ptr %l4
  store i64 14, ptr %l6, !tbaa !24
  br label %bb45
bb45:
  %t158 = load i64, ptr %l5, !tbaa !24
  %t159 = load i64, ptr %l6, !tbaa !24
  %t162 = icmp slt i64 %t158, %t159
  %t164 = xor i1 %t162, true
  br i1 %t164, label %bb46, label %bb47
bb46:
  br label %bb54
bb47:
  br label %bb48
bb48:
  %t166 = load ptr, ptr %l4
  %t167 = load i64, ptr %l5, !tbaa !24
  %t170 = getelementptr [14 x { i64, ptr }], ptr %t166, i64 0, i64 %t167
  %t171 = load { i64, ptr }, ptr %t170, !tbaa !37
  %t173 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t175 = load ptr, ptr @__olang_prog_scope
  %t178 = call i64 @compiler_2fmsgs_2eDistance(ptr %v1, ptr %t175, { i64, ptr } %t173, { i64, ptr } %t171)
  store i64 %t178, ptr %l86
  br label %bb49
bb49:
  %t179 = load i64, ptr %l3, !tbaa !24
  %t180 = load i64, ptr %l86, !tbaa !24
  %t182 = icmp slt i64 %t180, %t179
  br i1 %t182, label %bb50, label %bb51
bb50:
  call void @__olang_scope_close(ptr %s6)
  call void @__olang_scope_close(ptr %s0)
  store i1 true, ptr %rv
  br label %ret
bb51:
  br label %bb52
bb52:
  br label %bb53
bb53:
  %t185 = load i64, ptr %l5, !tbaa !24
  %t187 = add i64 %t185, 1
  store i64 %t187, ptr %l5, !tbaa !24
  br label %bb45
bb54:
  call void @__olang_scope_close(ptr %s6)
  %t189 = load ptr, ptr %l0, !tbaa !29
  %t191 = getelementptr %"compiler/names:Resolver", ptr %t189, i32 0, i32 1
  %t192 = load ptr, ptr %l0, !tbaa !29
  %t194 = getelementptr %"compiler/names:Resolver", ptr %t192, i32 0, i32 6
  %t195 = load i64, ptr %t194, !tbaa !24
  %t198 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fnames_3aTable_26_3e_2_Hc2ccbbc5952c057a60f016e9cc1626d2(ptr %v0, ptr %v0, ptr %t191, i64 %t195)
  store ptr %t198, ptr %l96
  br label %bb55
bb55:
  %t199 = load ptr, ptr %l96, !tbaa !29
  %t201 = getelementptr %"compiler/names:Table", ptr %t199, i32 0, i32 0
  store ptr %t201, ptr %l8, !tbaa !29
  store i64 0, ptr %l9, !tbaa !24
  br label %bb56
bb56:
  %t203 = load i64, ptr %l9, !tbaa !24
  store i64 %t203, ptr %l99, !tbaa !24
  %t204 = load ptr, ptr %l8, !tbaa !29
  %t206 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fnames_3aEntry_3e_2eLen_3ccompiler_2fnames_3aEntry_3e(ptr %v0, ptr %t204)
  store i64 %t206, ptr %l101
  br label %bb57
bb57:
  %t207 = load i64, ptr %l99, !tbaa !24
  %t208 = load i64, ptr %l101, !tbaa !24
  %t209 = icmp slt i64 %t207, %t208
  %t211 = xor i1 %t209, true
  br i1 %t211, label %bb58, label %bb59
bb58:
  br label %bb68
bb59:
  br label %bb60
bb60:
  %t213 = load ptr, ptr %l8, !tbaa !29
  %t214 = load i64, ptr %l9, !tbaa !24
  %t217 = call %"compiler/names:Entry" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fnames_3aEntry_3e_2eAt_3ccompiler_2fnames_3aEntry_3e(ptr %v0, ptr %v0, ptr %t213, i64 %t214)
  store %"compiler/names:Entry" %t217, ptr %l106
  br label %bb61
bb61:
  %t218 = load %"compiler/names:Entry", ptr %l106
  store %"compiler/names:Entry" %t218, ptr %l10
  %t219 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t219, ptr %l107, !tbaa !27
  %t220 = load ptr, ptr %l0, !tbaa !29
  %t221 = getelementptr %"compiler/names:Entry", ptr %l10, i32 0, i32 0
  %t222 = load i32, ptr %t221, !tbaa !23
  %t225 = call { i64, ptr } @compiler_2fnames_2ecompiler_2fnames_3aResolver_2etext(ptr %v0, ptr %v0, ptr %t220, i32 %t222)
  store { i64, ptr } %t225, ptr %l110
  br label %bb62
bb62:
  %t226 = load { i64, ptr }, ptr %l107, !tbaa !27
  %t227 = load { i64, ptr }, ptr %l110, !tbaa !27
  %t228 = call i64 @compiler_2fmsgs_2eDistance(ptr %v1, ptr %v0, { i64, ptr } %t226, { i64, ptr } %t227)
  store i64 %t228, ptr %l111
  br label %bb63
bb63:
  %t229 = load i64, ptr %l3, !tbaa !24
  %t230 = load i64, ptr %l111, !tbaa !24
  %t232 = icmp slt i64 %t230, %t229
  br i1 %t232, label %bb64, label %bb65
bb64:
  call void @__olang_scope_close(ptr %s0)
  store i1 true, ptr %rv
  br label %ret
bb65:
  br label %bb66
bb66:
  br label %bb67
bb67:
  %t235 = load i64, ptr %l9, !tbaa !24
  %t237 = add i64 %t235, 1
  store i64 %t237, ptr %l9, !tbaa !24
  br label %bb56
bb68:
  %t239 = load ptr, ptr %l0, !tbaa !29
  %t241 = getelementptr %"compiler/names:Resolver", ptr %t239, i32 0, i32 0
  %t242 = load ptr, ptr %t241, !tbaa !29
  %t244 = getelementptr %"compiler/load:Loader", ptr %t242, i32 0, i32 10
  %t245 = load ptr, ptr %l0, !tbaa !29
  %t247 = getelementptr %"compiler/names:Resolver", ptr %t245, i32 0, i32 6
  %t248 = load i64, ptr %t247, !tbaa !24
  %t251 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H7bcf2aeb09afa796f4333e6ec8c3f63f(ptr %v0, ptr %v0, ptr %t244, i64 %t248)
  store ptr %t251, ptr %l122
  br label %bb69
bb69:
  %t252 = load ptr, ptr %l122, !tbaa !29
  %t254 = getelementptr %"compiler/load:Module", ptr %t252, i32 0, i32 9
  store ptr %t254, ptr %l11, !tbaa !29
  store i64 0, ptr %l12, !tbaa !24
  br label %bb70
bb70:
  %t256 = load i64, ptr %l12, !tbaa !24
  store i64 %t256, ptr %l125, !tbaa !24
  %t257 = load ptr, ptr %l11, !tbaa !29
  %t259 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %v0, ptr %t257)
  store i64 %t259, ptr %l127
  br label %bb71
bb71:
  %t260 = load i64, ptr %l125, !tbaa !24
  %t261 = load i64, ptr %l127, !tbaa !24
  %t262 = icmp slt i64 %t260, %t261
  %t264 = xor i1 %t262, true
  br i1 %t264, label %bb72, label %bb73
bb72:
  br label %bb81
bb73:
  br label %bb74
bb74:
  %t266 = load ptr, ptr %l11, !tbaa !29
  %t267 = load i64, ptr %l12, !tbaa !24
  %t270 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %v0, ptr %v0, ptr %t266, i64 %t267)
  store { i64, ptr } %t270, ptr %l132
  br label %bb75
bb75:
  %t271 = load { i64, ptr }, ptr %l132, !tbaa !27
  %t272 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t276 = call i64 @compiler_2fmsgs_2eDistance(ptr %v1, ptr %v0, { i64, ptr } %t272, { i64, ptr } %t271)
  store i64 %t276, ptr %l135
  br label %bb76
bb76:
  %t277 = load i64, ptr %l3, !tbaa !24
  %t278 = load i64, ptr %l135, !tbaa !24
  %t280 = icmp slt i64 %t278, %t277
  br i1 %t280, label %bb77, label %bb78
bb77:
  call void @__olang_scope_close(ptr %s0)
  store i1 true, ptr %rv
  br label %ret
bb78:
  br label %bb79
bb79:
  br label %bb80
bb80:
  %t283 = load i64, ptr %l12, !tbaa !24
  %t285 = add i64 %t283, 1
  store i64 %t285, ptr %l12, !tbaa !24
  br label %bb70
bb81:
  %t287 = load ptr, ptr %l0, !tbaa !29
  %t289 = getelementptr %"compiler/names:Resolver", ptr %t287, i32 0, i32 2
  %t291 = call %"std/prelude/map:MapIter.bf5835bb10600fe6a7fc1da14a6360d9" @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fsource_3aNameId_2c_20I64_3e_Hda627d7755eecb5b938ca977110d67b2(ptr %v0, ptr %v0, ptr %t289)
  store %"std/prelude/map:MapIter.bf5835bb10600fe6a7fc1da14a6360d9" %t291, ptr %l143
  br label %bb82
bb82:
  %t292 = load %"std/prelude/map:MapIter.bf5835bb10600fe6a7fc1da14a6360d9", ptr %l143
  store %"std/prelude/map:MapIter.bf5835bb10600fe6a7fc1da14a6360d9" %t292, ptr %l14
  br label %bb83
bb83:
  %t294 = call { i32, %"std/prelude/map:MapEntry.ee791c76fa337c2e45b252e8964cf3ed" } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMapIter_3ccompiler_2fsource_3aNameId_2c_20I6_Hd1b8e91149b724287340e79c8c928444(ptr %v0, ptr %l14)
  %t295 = extractvalue { i32, %"std/prelude/map:MapEntry.ee791c76fa337c2e45b252e8964cf3ed" } %t294, 1
  %t296 = extractvalue { i32, %"std/prelude/map:MapEntry.ee791c76fa337c2e45b252e8964cf3ed" } %t294, 0
  store i32 %t296, ptr %l147
  %t297 = icmp ne i32 %t296, 0
  br i1 %t297, label %bb85, label %ok.298, !prof !99
ok.298:
  store %"std/prelude/map:MapEntry.ee791c76fa337c2e45b252e8964cf3ed" %t295, ptr %l146
  br label %bb84
bb84:
  %t299 = load %"std/prelude/map:MapEntry.ee791c76fa337c2e45b252e8964cf3ed", ptr %l146
  store %"std/prelude/map:MapEntry.ee791c76fa337c2e45b252e8964cf3ed" %t299, ptr %l144
  br label %bb87
bb85:
  %t300 = load i32, ptr %l147, !tbaa !23
  %t301 = ashr i32 %t300, 16
  %t303 = icmp eq i32 %t301, 1
  store i1 %t303, ptr %l149, !tbaa !21
  br label %bb86
bb86:
  br label %bb94
bb87:
  %t304 = load %"std/prelude/map:MapEntry.ee791c76fa337c2e45b252e8964cf3ed", ptr %l144
  store %"std/prelude/map:MapEntry.ee791c76fa337c2e45b252e8964cf3ed" %t304, ptr %l15
  %t305 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t305, ptr %l150, !tbaa !27
  %t306 = load ptr, ptr %l0, !tbaa !29
  %t307 = getelementptr %"std/prelude/map:MapEntry.ee791c76fa337c2e45b252e8964cf3ed", ptr %l15, i32 0, i32 0
  %t308 = load i32, ptr %t307, !tbaa !23
  %t311 = call { i64, ptr } @compiler_2fnames_2ecompiler_2fnames_3aResolver_2etext(ptr %v0, ptr %v0, ptr %t306, i32 %t308)
  store { i64, ptr } %t311, ptr %l153
  br label %bb88
bb88:
  %t312 = load { i64, ptr }, ptr %l150, !tbaa !27
  %t313 = load { i64, ptr }, ptr %l153, !tbaa !27
  %t314 = call i64 @compiler_2fmsgs_2eDistance(ptr %v1, ptr %v0, { i64, ptr } %t312, { i64, ptr } %t313)
  store i64 %t314, ptr %l154
  br label %bb89
bb89:
  %t315 = load i64, ptr %l3, !tbaa !24
  %t316 = load i64, ptr %l154, !tbaa !24
  %t318 = icmp slt i64 %t316, %t315
  br i1 %t318, label %bb90, label %bb91
bb90:
  call void @__olang_scope_close(ptr %s0)
  store i1 true, ptr %rv
  br label %ret
bb91:
  br label %bb92
bb92:
  br label %bb93
bb93:
  br label %bb83
bb94:
  call void @__olang_scope_close(ptr %s0)
  store i1 false, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local void @compiler_2fnames_2ecompiler_2fnames_3aResolver_2esurveyIf(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca ptr
  %l11 = alloca ptr
  %l24 = alloca ptr
  %l25 = alloca i1
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l1, !tbaa !29
  %t3 = getelementptr %"compiler/ast:If", ptr %t1, i32 0, i32 0
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t6 = icmp eq ptr %t4, null
  %t8 = xor i1 %t6, true
  br i1 %t8, label %bb1, label %bb2
bb1:
  %t10 = load ptr, ptr %l0, !tbaa !29
  %t11 = load ptr, ptr %l1, !tbaa !29
  %t13 = getelementptr %"compiler/ast:If", ptr %t11, i32 0, i32 0
  %t14 = load ptr, ptr %t13, !tbaa !29
  call void @compiler_2fnames_2ecompiler_2fnames_3aResolver_2eexpr(ptr %v0, ptr %v1, ptr %t10, ptr %t14)
  br label %bb3
bb2:
  br label %bb4
bb3:
  br label %bb4
bb4:
  %t17 = load ptr, ptr %l0, !tbaa !29
  store ptr %t17, ptr %l11, !tbaa !29
  %t18 = load ptr, ptr %l1, !tbaa !29
  %t20 = getelementptr %"compiler/ast:If", ptr %t18, i32 0, i32 1
  %t21 = load ptr, ptr %t20, !tbaa !29
  %t23 = icmp eq ptr %t21, null
  br i1 %t23, label %bb5, label %bb6
bb5:
  call void @__olang_check_failed(ptr @olang_loc_1b8bfcf5c54b80a6_f112f6c40c79d862)
  unreachable
bb6:
  br label %bb7
bb7:
  %t25 = load ptr, ptr %l1, !tbaa !29
  %t27 = getelementptr %"compiler/ast:If", ptr %t25, i32 0, i32 1
  %t28 = load ptr, ptr %t27, !tbaa !29
  %t31 = getelementptr %"compiler/ast:Branch", ptr %t28, i32 0, i32 1
  %t32 = load { i64, ptr }, ptr %t31, !tbaa !27
  %t33 = load ptr, ptr %l11, !tbaa !29
  call void @compiler_2fnames_2ecompiler_2fnames_3aResolver_2eblock(ptr %v0, ptr %v1, ptr %t33, { i64, ptr } %t32)
  br label %bb8
bb8:
  %t35 = load ptr, ptr %l1, !tbaa !29
  %t37 = getelementptr %"compiler/ast:If", ptr %t35, i32 0, i32 2
  %t38 = load ptr, ptr %t37, !tbaa !29
  %t40 = icmp eq ptr %t38, null
  br i1 %t40, label %bb9, label %bb10
bb9:
  br label %ret
bb10:
  br label %bb11
bb11:
  %t42 = load ptr, ptr %l1, !tbaa !29
  %t44 = getelementptr %"compiler/ast:If", ptr %t42, i32 0, i32 2
  %t45 = load ptr, ptr %t44, !tbaa !29
  store ptr %t45, ptr %l2, !tbaa !29
  %t47 = load ptr, ptr %l2, !tbaa !29
  store ptr %t47, ptr %l24, !tbaa !29
  store i1 false, ptr %l25, !tbaa !21
  %t48 = load ptr, ptr %l24, !tbaa !29
  %t49 = icmp ne ptr %t48, null
  br i1 %t49, label %bb12, label %bb13
bb12:
  %t51 = load ptr, ptr %l24, !tbaa !29
  %t52 = load i64, ptr %t51, !range !{i64 0, i64 22}
  %t54 = icmp eq i64 %t52, 5
  store i1 %t54, ptr %l25, !tbaa !21
  br label %bb13
bb13:
  %t55 = load i1, ptr %l25, !tbaa !21
  br i1 %t55, label %bb14, label %bb15
bb14:
  %t56 = load ptr, ptr %l2, !tbaa !29
  %t58 = getelementptr { i64, [4 x i64] }, ptr %t56, i32 0, i32 1
  %t59 = getelementptr { %"compiler/source:Span", ptr }, ptr %t58, i32 0, i32 1
  %t60 = load ptr, ptr %t59
  store ptr %t60, ptr %l3, !tbaa !29
  br label %bb16
bb15:
  br label %bb18
bb16:
  %t62 = load ptr, ptr %l0, !tbaa !29
  %t63 = load ptr, ptr %l3, !tbaa !29
  call void @compiler_2fnames_2ecompiler_2fnames_3aResolver_2esurveyIf(ptr %v0, ptr %v1, ptr %t62, ptr %t63)
  br label %bb17
bb17:
  br label %bb24
bb18:
  br i1 true, label %bb19, label %bb20
bb19:
  br label %bb21
bb20:
  br label %bb23
bb21:
  %t66 = load ptr, ptr %l0, !tbaa !29
  %t67 = load ptr, ptr %l1, !tbaa !29
  %t69 = getelementptr %"compiler/ast:If", ptr %t67, i32 0, i32 2
  %t70 = load ptr, ptr %t69, !tbaa !29
  call void @compiler_2fnames_2ecompiler_2fnames_3aResolver_2estmt(ptr %v0, ptr %v1, ptr %t66, ptr %t70)
  br label %bb22
bb22:
  br label %bb24
bb23:
  call void @__olang_check_failed(ptr @olang_loc_c04d895388279f34_2b6890ee7e2f3280)
  unreachable
bb24:
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2fnames_2ecompiler_2fnames_3aResolver_2etableOf(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca ptr
  %l9 = alloca ptr
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load i64, ptr %l1, !tbaa !24
  call void @compiler_2fnames_2ecompiler_2fnames_3aResolver_2ealiasesOf(ptr %v0, ptr %t1, i64 %t2)
  br label %bb1
bb1:
  %t5 = load ptr, ptr %l0, !tbaa !29
  %t7 = getelementptr %"compiler/names:Resolver", ptr %t5, i32 0, i32 0
  %t8 = load ptr, ptr %t7, !tbaa !29
  %t10 = getelementptr %"compiler/load:Loader", ptr %t8, i32 0, i32 10
  %t11 = load i64, ptr %l1, !tbaa !24
  %t14 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H7bcf2aeb09afa796f4333e6ec8c3f63f(ptr %v0, ptr %v0, ptr %t10, i64 %t11)
  store ptr %t14, ptr %l9
  br label %bb2
bb2:
  %t15 = load ptr, ptr %l9, !tbaa !29
  store ptr %t15, ptr %l2, !tbaa !29
  %t16 = load ptr, ptr %l2, !tbaa !29
  %t18 = getelementptr %"compiler/load:Module", ptr %t16, i32 0, i32 8
  %t19 = load { i64, ptr }, ptr %t18, !tbaa !27
  %t21 = extractvalue { i64, ptr } %t19, 0
  %t23 = icmp sgt i64 %t21, 0
  br i1 %t23, label %bb3, label %bb4
bb3:
  %t25 = load ptr, ptr %l0, !tbaa !29
  %t26 = load i64, ptr %l1, !tbaa !24
  %t27 = load ptr, ptr %l2, !tbaa !29
  %t29 = getelementptr %"compiler/load:Module", ptr %t27, i32 0, i32 8
  %t30 = load { i64, ptr }, ptr %t29, !tbaa !27
  call void @compiler_2fnames_2ecompiler_2fnames_3aResolver_2ecollect(ptr %v0, ptr %v0, ptr %t25, i64 %t26, { i64, ptr } %t30)
  br label %bb5
bb4:
  br label %bb6
bb5:
  br label %bb6
bb6:
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2fnames_2ecompiler_2fnames_3aResolver_2etarget(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca %"compiler/source:Span"
  %l3 = alloca i32
  %l4 = alloca %"compiler/names:Ref"
  %l5 = alloca i64
  %l6 = alloca ptr
  %l7 = alloca ptr
  %l8 = alloca i1
  %l17 = alloca %"compiler/names:Ref"
  %l23 = alloca i1
  %l27 = alloca i1
  %l28 = alloca i64
  %l32 = alloca i64
  %l33 = alloca i32
  %l36 = alloca ptr
  %l42 = alloca ptr
  %l46 = alloca %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0"
  %l47 = alloca ptr
  %l48 = alloca i1
  %s2 = alloca %olang.scope
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
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 30}
  %t8 = icmp eq i64 %t6, 0
  store i1 %t8, ptr %l8, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l8, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  %t10 = load ptr, ptr %l1, !tbaa !29
  %t12 = getelementptr { i64, [4 x i64] }, ptr %t10, i32 0, i32 1
  %t13 = getelementptr { %"compiler/source:Span", i32 }, ptr %t12, i32 0, i32 0
  %t14 = load %"compiler/source:Span", ptr %t13
  store %"compiler/source:Span" %t14, ptr %l2
  %t16 = load ptr, ptr %l1, !tbaa !29
  %t18 = getelementptr { i64, [4 x i64] }, ptr %t16, i32 0, i32 1
  %t19 = getelementptr { %"compiler/source:Span", i32 }, ptr %t18, i32 0, i32 1
  %t20 = load i32, ptr %t19
  store i32 %t20, ptr %l3, !tbaa !23
  br label %bb5
bb4:
  br label %bb22
bb5:
  %t22 = load ptr, ptr %l0, !tbaa !29
  %t23 = load i32, ptr %l3, !tbaa !23
  %t26 = call %"compiler/names:Ref" @compiler_2fnames_2ecompiler_2fnames_3aResolver_2elookup(ptr %v0, ptr %t22, i32 %t23)
  store %"compiler/names:Ref" %t26, ptr %l17
  br label %bb6
bb6:
  %t27 = load %"compiler/names:Ref", ptr %l17
  store %"compiler/names:Ref" %t27, ptr %l4
  %t28 = load ptr, ptr %l0, !tbaa !29
  %t29 = load %"compiler/source:Span", ptr %l2
  %t30 = load %"compiler/names:Ref", ptr %l4
  call void @compiler_2fnames_2ecompiler_2fnames_3aResolver_2erecord(ptr %v0, ptr %t28, %"compiler/source:Span" %t29, %"compiler/names:Ref" %t30)
  br label %bb7
bb7:
  %t34 = getelementptr %"compiler/names:Ref", ptr %l4, i32 0, i32 0
  %t35 = load i32, ptr %t34, !range !{i32 0, i32 9}
  %t37 = trunc i64 1 to i32
  %t38 = icmp eq i32 %t35, %t37
  br i1 %t38, label %bb8, label %bb9
bb8:
  %t40 = load ptr, ptr %l0, !tbaa !29
  %t42 = getelementptr %"compiler/names:Resolver", ptr %t40, i32 0, i32 26
  %t43 = getelementptr %"compiler/names:Ref", ptr %l4, i32 0, i32 2
  %t44 = load i64, ptr %t43, !tbaa !24
  %t47 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2eHas_3cI64_2c_20I64_3e(ptr %v0, ptr %t42, i64 %t44)
  store i1 %t47, ptr %l27
  br label %bb10
bb9:
  store i1 false, ptr %l23, !tbaa !21
  br label %bb11
bb10:
  %t48 = load i1, ptr %l27, !tbaa !21
  store i1 %t48, ptr %l23, !tbaa !21
  br label %bb11
bb11:
  %t49 = load i1, ptr %l23, !tbaa !21
  br i1 %t49, label %bb12, label %bb13
bb12:
  store %olang.scope zeroinitializer, ptr %s2
  %t50 = load ptr, ptr %l0, !tbaa !29
  %t52 = getelementptr %"compiler/names:Resolver", ptr %t50, i32 0, i32 26
  %t53 = getelementptr %"compiler/names:Ref", ptr %l4, i32 0, i32 2
  %t54 = load i64, ptr %t53, !tbaa !24
  %t57 = call { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2eGet_3cI64_2c_20I64_3e(ptr %v0, ptr %t52, i64 %t54)
  %t58 = extractvalue { i32, i64 } %t57, 1
  %t59 = extractvalue { i32, i64 } %t57, 0
  store i32 %t59, ptr %l33
  %t60 = icmp ne i32 %t59, 0
  br i1 %t60, label %bb15, label %ok.61, !prof !99
ok.61:
  store i64 %t58, ptr %l32
  br label %bb14
bb13:
  br label %bb21
bb14:
  %t62 = load i64, ptr %l32, !tbaa !24
  store i64 %t62, ptr %l28, !tbaa !24
  br label %bb17
bb15:
  br label %bb16
bb16:
  store i64 0, ptr %l28, !tbaa !24
  br label %bb17
bb17:
  %t63 = load i64, ptr %l28, !tbaa !24
  store i64 %t63, ptr %l5, !tbaa !24
  %t64 = load ptr, ptr %l0, !tbaa !29
  %t66 = getelementptr %"compiler/names:Resolver", ptr %t64, i32 0, i32 0
  %t67 = load ptr, ptr %t66, !tbaa !29
  %t69 = getelementptr %"compiler/load:Loader", ptr %t67, i32 0, i32 5
  store ptr %t69, ptr %l36, !tbaa !29
  %t70 = load ptr, ptr %l0, !tbaa !29
  %t72 = getelementptr %"compiler/names:Resolver", ptr %t70, i32 0, i32 0
  %t73 = load ptr, ptr %t72, !tbaa !29
  %t75 = getelementptr %"compiler/load:Loader", ptr %t73, i32 0, i32 10
  %t76 = load ptr, ptr %l0, !tbaa !29
  %t78 = getelementptr %"compiler/names:Resolver", ptr %t76, i32 0, i32 6
  %t79 = load i64, ptr %t78, !tbaa !24
  %t82 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H7bcf2aeb09afa796f4333e6ec8c3f63f(ptr %v0, ptr %v0, ptr %t75, i64 %t79)
  store ptr %t82, ptr %l42
  br label %bb18
bb18:
  %t83 = load ptr, ptr %l42, !tbaa !29
  %t85 = getelementptr %"compiler/load:Module", ptr %t83, i32 0, i32 4
  %t86 = load i64, ptr %t85, !tbaa !24
  %t87 = load i64, ptr %l5, !tbaa !24
  %t90 = call %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" @std_2fpair_3aPair_3cI64_2c_20I64_3e_2ector(ptr %s2, i64 %t86, i64 %t87)
  store %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t90, ptr %l46
  br label %bb19
bb19:
  %t91 = load ptr, ptr %l36, !tbaa !29
  %t92 = load %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %l46
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H1308596c866d4be061d9da9113abde88(ptr %v0, ptr %t91, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t92, i1 true)
  br label %bb20
bb20:
  call void @__olang_scope_close(ptr %s2)
  br label %bb21
bb21:
  br label %bb35
bb22:
  %t93 = load ptr, ptr %l1, !tbaa !29
  store ptr %t93, ptr %l47, !tbaa !29
  store i1 false, ptr %l48, !tbaa !21
  %t94 = load ptr, ptr %l47, !tbaa !29
  %t95 = icmp ne ptr %t94, null
  br i1 %t95, label %bb23, label %bb24
bb23:
  %t97 = load ptr, ptr %l47, !tbaa !29
  %t98 = load i64, ptr %t97, !range !{i64 0, i64 30}
  %t100 = icmp eq i64 %t98, 2
  store i1 %t100, ptr %l48, !tbaa !21
  br label %bb24
bb24:
  %t101 = load i1, ptr %l48, !tbaa !21
  br i1 %t101, label %bb25, label %bb26
bb25:
  %t102 = load ptr, ptr %l1, !tbaa !29
  %t104 = getelementptr { i64, [4 x i64] }, ptr %t102, i32 0, i32 1
  %t105 = getelementptr { %"compiler/source:Span", ptr }, ptr %t104, i32 0, i32 1
  %t106 = load ptr, ptr %t105
  store ptr %t106, ptr %l6, !tbaa !29
  br label %bb27
bb26:
  br label %bb29
bb27:
  %t108 = load ptr, ptr %l0, !tbaa !29
  %t109 = load ptr, ptr %l6, !tbaa !29
  call void @compiler_2fnames_2ecompiler_2fnames_3aResolver_2etarget(ptr %v0, ptr %v1, ptr %t108, ptr %t109)
  br label %bb28
bb28:
  br label %bb35
bb29:
  br i1 true, label %bb30, label %bb31
bb30:
  br label %bb32
bb31:
  br label %bb34
bb32:
  %t112 = load ptr, ptr %l0, !tbaa !29
  %t113 = load ptr, ptr %l1, !tbaa !29
  call void @compiler_2fnames_2ecompiler_2fnames_3aResolver_2eexpr(ptr %v0, ptr %v1, ptr %t112, ptr %t113)
  br label %bb33
bb33:
  br label %bb35
bb34:
  call void @__olang_check_failed(ptr @olang_loc_c883e3bd313e2585_b0aaf26ba1585cf1)
  unreachable
bb35:
  br label %ret
ret:
  ret void
}

define dso_local { i64, ptr } @compiler_2fnames_2ecompiler_2fnames_3aResolver_2etext(ptr %v0, ptr %v1, ptr %a0, i32 %a1) #0 {
entry:
  %l6 = alloca { i64, ptr }
  %rv = alloca { i64, ptr }
  br label %start
start:
  br label %bb0
bb0:
  %t3 = getelementptr %"compiler/names:Resolver", ptr %a0, i32 0, i32 0
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t6 = getelementptr %"compiler/load:Loader", ptr %t4, i32 0, i32 3
  %t7 = load ptr, ptr %t6, !tbaa !29
  %t11 = call { i64, ptr } @compiler_2fsource_2ecompiler_2fsource_3aNames_2eText(ptr %v0, ptr %v1, ptr %t7, i32 %a1)
  store { i64, ptr } %t11, ptr %l6
  br label %bb1
bb1:
  %t12 = load { i64, ptr }, ptr %l6, !tbaa !27
  store { i64, ptr } %t12, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local %"compiler/names:Ref" @compiler_2fnames_2ecompiler_2fnames_3aResolver_2etypeIn(ptr %v0, ptr %a0, i64 %a1, i32 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca i32
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l9 = alloca ptr
  %l13 = alloca i64
  %l14 = alloca i32
  %l20 = alloca %"compiler/names:Ref"
  %l21 = alloca i64
  %l25 = alloca i64
  %l26 = alloca i32
  %l29 = alloca i32
  %l30 = alloca i64
  %l31 = alloca i64
  %l35 = alloca ptr
  %l39 = alloca i64
  %l40 = alloca i32
  %l41 = alloca %"compiler/names:Ref"
  %l44 = alloca { i64, ptr }
  %l45 = alloca i1
  %l47 = alloca %"compiler/names:Ref"
  %l49 = alloca %"compiler/names:Ref"
  %s0 = alloca %olang.scope
  %s1 = alloca %olang.scope
  %s2 = alloca %olang.scope
  %s3 = alloca %olang.scope
  %rv = alloca %"compiler/names:Ref"
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  store i32 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/names:Resolver", ptr %t1, i32 0, i32 1
  %t4 = load i64, ptr %l1, !tbaa !24
  %t7 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fnames_3aTable_26_3e_2_Hc2ccbbc5952c057a60f016e9cc1626d2(ptr %v0, ptr %v0, ptr %t3, i64 %t4)
  store ptr %t7, ptr %l9
  br label %bb1
bb1:
  %t8 = load ptr, ptr %l9, !tbaa !29
  %t10 = getelementptr %"compiler/names:Table", ptr %t8, i32 0, i32 2
  %t11 = load i32, ptr %l2, !tbaa !23
  %t14 = call { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fsource_3aNameId_2c_20I64_3e_H2a27ec2ae5362b2f0ac6d54f3e063c70(ptr %v0, ptr %t10, i32 %t11)
  %t15 = extractvalue { i32, i64 } %t14, 1
  %t16 = extractvalue { i32, i64 } %t14, 0
  store i32 %t16, ptr %l14
  %t17 = icmp ne i32 %t16, 0
  br i1 %t17, label %bb3, label %ok.18, !prof !99
ok.18:
  store i64 %t15, ptr %l13
  br label %bb2
bb2:
  %t19 = load i64, ptr %l13, !tbaa !24
  store i64 %t19, ptr %l5, !tbaa !24
  br label %bb5
bb3:
  br label %bb4
bb4:
  store i64 -1, ptr %l5, !tbaa !24
  br label %bb5
bb5:
  %t20 = load i64, ptr %l5, !tbaa !24
  store i64 %t20, ptr %l3, !tbaa !24
  %t21 = load i64, ptr %l3, !tbaa !24
  %t23 = icmp sge i64 %t21, 0
  br i1 %t23, label %bb6, label %bb7
bb6:
  store %olang.scope zeroinitializer, ptr %s1
  %t25 = load i64, ptr %l1, !tbaa !24
  %t26 = load i64, ptr %l3, !tbaa !24
  %t30 = call %"compiler/names:Ref" @compiler_2fnames_3aRef_2ector(ptr %s1, i32 4, i64 %t25, i64 %t26)
  store %"compiler/names:Ref" %t30, ptr %l20
  br label %bb8
bb7:
  br label %bb9
bb8:
  call void @__olang_scope_close(ptr %s1)
  call void @__olang_scope_close(ptr %s0)
  %t31 = load %"compiler/names:Ref", ptr %l20
  store %"compiler/names:Ref" %t31, ptr %rv
  br label %ret
bb9:
  %t32 = load ptr, ptr %l0, !tbaa !29
  %t34 = getelementptr %"compiler/names:Resolver", ptr %t32, i32 0, i32 2
  %t35 = load i32, ptr %l2, !tbaa !23
  %t38 = call { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fsource_3aNameId_2c_20I64_3e_H2a27ec2ae5362b2f0ac6d54f3e063c70(ptr %v0, ptr %t34, i32 %t35)
  %t39 = extractvalue { i32, i64 } %t38, 1
  %t40 = extractvalue { i32, i64 } %t38, 0
  store i32 %t40, ptr %l26
  %t41 = icmp ne i32 %t40, 0
  br i1 %t41, label %bb11, label %ok.42, !prof !99
ok.42:
  store i64 %t39, ptr %l25
  br label %bb10
bb10:
  %t43 = load i64, ptr %l25, !tbaa !24
  store i64 %t43, ptr %l21, !tbaa !24
  br label %bb13
bb11:
  br label %bb12
bb12:
  store i64 -1, ptr %l21, !tbaa !24
  br label %bb13
bb13:
  %t44 = load i64, ptr %l21, !tbaa !24
  store i64 %t44, ptr %l4, !tbaa !24
  %t45 = load i64, ptr %l4, !tbaa !24
  %t47 = icmp sge i64 %t45, 0
  br i1 %t47, label %bb14, label %bb15
bb14:
  store %olang.scope zeroinitializer, ptr %s2
  store i32 4, ptr %l29
  %t49 = load i64, ptr %l4, !tbaa !24
  store i64 %t49, ptr %l30, !tbaa !24
  %t50 = load ptr, ptr %l0, !tbaa !29
  %t52 = getelementptr %"compiler/names:Resolver", ptr %t50, i32 0, i32 1
  %t53 = load i64, ptr %l4, !tbaa !24
  %t56 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fnames_3aTable_26_3e_2_Hc2ccbbc5952c057a60f016e9cc1626d2(ptr %v0, ptr %v0, ptr %t52, i64 %t53)
  store ptr %t56, ptr %l35
  br label %bb16
bb15:
  br label %bb22
bb16:
  %t57 = load ptr, ptr %l35, !tbaa !29
  %t59 = getelementptr %"compiler/names:Table", ptr %t57, i32 0, i32 2
  %t60 = load i32, ptr %l2, !tbaa !23
  %t63 = call { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fsource_3aNameId_2c_20I64_3e_H2a27ec2ae5362b2f0ac6d54f3e063c70(ptr %v0, ptr %t59, i32 %t60)
  %t64 = extractvalue { i32, i64 } %t63, 1
  %t65 = extractvalue { i32, i64 } %t63, 0
  store i32 %t65, ptr %l40
  %t66 = icmp ne i32 %t65, 0
  br i1 %t66, label %bb18, label %ok.67, !prof !99
ok.67:
  store i64 %t64, ptr %l39
  br label %bb17
bb17:
  %t68 = load i64, ptr %l39, !tbaa !24
  store i64 %t68, ptr %l31, !tbaa !24
  br label %bb20
bb18:
  br label %bb19
bb19:
  store i64 -1, ptr %l31, !tbaa !24
  br label %bb20
bb20:
  %t69 = load i32, ptr %l29, !range !{i32 0, i32 9}
  %t70 = load i64, ptr %l30, !tbaa !24
  %t71 = load i64, ptr %l31, !tbaa !24
  %t72 = call %"compiler/names:Ref" @compiler_2fnames_3aRef_2ector(ptr %s2, i32 %t69, i64 %t70, i64 %t71)
  store %"compiler/names:Ref" %t72, ptr %l41
  br label %bb21
bb21:
  call void @__olang_scope_close(ptr %s2)
  call void @__olang_scope_close(ptr %s0)
  %t73 = load %"compiler/names:Ref", ptr %l41
  store %"compiler/names:Ref" %t73, ptr %rv
  br label %ret
bb22:
  %t74 = load ptr, ptr %l0, !tbaa !29
  %t75 = load i32, ptr %l2, !tbaa !23
  %t78 = call { i64, ptr } @compiler_2fnames_2ecompiler_2fnames_3aResolver_2etext(ptr %v0, ptr %v0, ptr %t74, i32 %t75)
  store { i64, ptr } %t78, ptr %l44
  br label %bb23
bb23:
  %t79 = load { i64, ptr }, ptr %l44, !tbaa !27
  %t80 = call i1 @compiler_2fnames_2eBuiltinTypeName(ptr %v0, { i64, ptr } %t79)
  store i1 %t80, ptr %l45
  br label %bb24
bb24:
  %t81 = load i1, ptr %l45, !tbaa !21
  br i1 %t81, label %bb25, label %bb26
bb25:
  store %olang.scope zeroinitializer, ptr %s3
  %t83 = call %"compiler/names:Ref" @compiler_2fnames_3aRef_2ector(ptr %s3, i32 7, i64 -1, i64 -1)
  store %"compiler/names:Ref" %t83, ptr %l47
  br label %bb27
bb26:
  br label %bb28
bb27:
  call void @__olang_scope_close(ptr %s3)
  call void @__olang_scope_close(ptr %s0)
  %t84 = load %"compiler/names:Ref", ptr %l47
  store %"compiler/names:Ref" %t84, ptr %rv
  br label %ret
bb28:
  %t86 = call %"compiler/names:Ref" @compiler_2fnames_3aRef_2ector(ptr %s0, i32 0, i64 -1, i64 -1)
  store %"compiler/names:Ref" %t86, ptr %l49
  br label %bb29
bb29:
  call void @__olang_scope_close(ptr %s0)
  %t87 = load %"compiler/names:Ref", ptr %l49
  store %"compiler/names:Ref" %t87, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/names:Ref", ptr %rv
  ret %"compiler/names:Ref" %rr
}

define dso_local void @compiler_2fnames_2ecompiler_2fnames_3aResolver_2etypePath(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1, { i64, ptr } %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/source:Span"
  %l2 = alloca { i64, ptr }
  %l3 = alloca i32
  %l4 = alloca i64
  %l5 = alloca i32
  %l6 = alloca %"compiler/names:Ref"
  %l7 = alloca %"compiler/source:Span"
  %l8 = alloca i64
  %l9 = alloca i32
  %l10 = alloca ptr
  %l11 = alloca ptr
  %l12 = alloca i64
  %l13 = alloca %"compiler/load:Import"
  %l14 = alloca i64
  %l15 = alloca i32
  %l16 = alloca %"compiler/names:Ref"
  %l20 = alloca { i64, ptr }
  %l22 = alloca i64
  %l26 = alloca i64
  %l27 = alloca i32
  %l30 = alloca i1
  %l34 = alloca %"compiler/names:local"
  %l37 = alloca ptr
  %l38 = alloca %"compiler/source:Span"
  %l43 = alloca %"compiler/names:Ref"
  %l44 = alloca ptr
  %l45 = alloca %"compiler/source:Span"
  %l50 = alloca %"compiler/names:Ref"
  %l51 = alloca { i64, ptr }
  %l53 = alloca i64
  %l58 = alloca ptr
  %l62 = alloca i64
  %l63 = alloca i32
  %l67 = alloca %"compiler/names:Ref"
  %l73 = alloca %"compiler/source:Span"
  %l78 = alloca i64
  %l84 = alloca i64
  %l87 = alloca i1
  %l90 = alloca { i64, ptr }
  %l93 = alloca { i64, ptr }
  %l96 = alloca i1
  %l98 = alloca i1
  %l104 = alloca ptr
  %l108 = alloca i1
  %l110 = alloca i1
  %l113 = alloca i1
  %l116 = alloca ptr
  %l118 = alloca %"std/pair:Pair.ee791c76fa337c2e45b252e8964cf3ed"
  %l121 = alloca { i64, ptr }
  %l122 = alloca %"compiler/msgs:Nearest"
  %l129 = alloca ptr
  %l132 = alloca i64
  %l134 = alloca i64
  %l139 = alloca %"compiler/load:Import"
  %l148 = alloca ptr
  %l153 = alloca { i64, [3 x i64] }
  %l156 = alloca { i64, ptr }
  %l157 = alloca { i64, ptr }
  %l159 = alloca { i64, ptr }
  %l161 = alloca %"compiler/diagmsg:Msg"
  %l162 = alloca i64
  %l165 = alloca i1
  %l169 = alloca ptr
  %l175 = alloca ptr
  %l179 = alloca i64
  %l183 = alloca i64
  %l186 = alloca { i64, ptr }
  %l194 = alloca %"compiler/names:Ref"
  %l195 = alloca ptr
  %l196 = alloca i64
  %l197 = alloca %"compiler/names:Ref"
  %l198 = alloca i32
  %l199 = alloca i32
  %l202 = alloca { i64, ptr }
  %l207 = alloca %"compiler/source:Span"
  %s2 = alloca %olang.scope
  %s4 = alloca %olang.scope
  %s6 = alloca %olang.scope
  %s12 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store %"compiler/source:Span" %a1, ptr %l1
  store { i64, ptr } %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t3 = extractvalue { i64, ptr } %t1, 0
  %t5 = icmp eq i64 %t3, 1
  br i1 %t5, label %bb1, label %bb2
bb1:
  %t7 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t7, ptr %l20, !tbaa !27
  %t8 = getelementptr { i64, ptr }, ptr %l20, i32 0, i32 1
  %t9 = load ptr, ptr %t8, !tbaa !27
  %t10 = getelementptr i32, ptr %t9, i64 0
  %t11 = load i32, ptr %t10, !tbaa !33
  store i32 %t11, ptr %l3, !tbaa !23
  %t13 = load ptr, ptr %l0, !tbaa !29
  %t15 = getelementptr %"compiler/names:Resolver", ptr %t13, i32 0, i32 8
  %t16 = load i32, ptr %l3, !tbaa !23
  %t19 = call { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fsource_3aNameId_2c_20I64_3e_H2a27ec2ae5362b2f0ac6d54f3e063c70(ptr %v0, ptr %t15, i32 %t16)
  %t20 = extractvalue { i32, i64 } %t19, 1
  %t21 = extractvalue { i32, i64 } %t19, 0
  store i32 %t21, ptr %l27
  %t22 = icmp ne i32 %t21, 0
  br i1 %t22, label %bb4, label %ok.23, !prof !99
ok.23:
  store i64 %t20, ptr %l26
  br label %bb3
bb2:
  br label %bb18
bb3:
  %t24 = load i64, ptr %l26, !tbaa !24
  store i64 %t24, ptr %l22, !tbaa !24
  br label %bb6
bb4:
  br label %bb5
bb5:
  store i64 -1, ptr %l22, !tbaa !24
  br label %bb6
bb6:
  %t25 = load i64, ptr %l22, !tbaa !24
  store i64 %t25, ptr %l4, !tbaa !24
  %t26 = load i64, ptr %l4, !tbaa !24
  %t28 = icmp sge i64 %t26, 0
  br i1 %t28, label %bb7, label %bb8
bb7:
  %t30 = load ptr, ptr %l0, !tbaa !29
  %t32 = getelementptr %"compiler/names:Resolver", ptr %t30, i32 0, i32 7
  %t33 = load i64, ptr %l4, !tbaa !24
  %t36 = call %"compiler/names:local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fnames_3alocal_3e_2eAt_3ccompiler_2fnames_3alocal_3e(ptr %v0, ptr %t32, i64 %t33)
  store %"compiler/names:local" %t36, ptr %l34
  br label %bb9
bb8:
  store i1 false, ptr %l30, !tbaa !21
  br label %bb10
bb9:
  %t37 = getelementptr %"compiler/names:local", ptr %l34, i32 0, i32 2
  %t38 = load i32, ptr %t37, !range !{i32 0, i32 9}
  %t40 = trunc i64 8 to i32
  %t41 = icmp eq i32 %t38, %t40
  store i1 %t41, ptr %l30, !tbaa !21
  br label %bb10
bb10:
  %t43 = load i1, ptr %l30, !tbaa !21
  br i1 %t43, label %bb11, label %bb12
bb11:
  store %olang.scope zeroinitializer, ptr %s2
  %t44 = load ptr, ptr %l0, !tbaa !29
  store ptr %t44, ptr %l37, !tbaa !29
  %t45 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t45, ptr %l38
  %t46 = load ptr, ptr %l0, !tbaa !29
  %t48 = getelementptr %"compiler/names:Resolver", ptr %t46, i32 0, i32 6
  %t49 = load i64, ptr %t48, !tbaa !24
  %t50 = load i64, ptr %l4, !tbaa !24
  %t54 = call %"compiler/names:Ref" @compiler_2fnames_3aRef_2ector(ptr %s2, i32 8, i64 %t49, i64 %t50)
  store %"compiler/names:Ref" %t54, ptr %l43
  br label %bb13
bb12:
  br label %bb15
bb13:
  %t55 = load ptr, ptr %l37, !tbaa !29
  %t56 = load %"compiler/source:Span", ptr %l38
  %t57 = load %"compiler/names:Ref", ptr %l43
  call void @compiler_2fnames_2ecompiler_2fnames_3aResolver_2erecord(ptr %v0, ptr %t55, %"compiler/source:Span" %t56, %"compiler/names:Ref" %t57)
  br label %bb14
bb14:
  call void @__olang_scope_close(ptr %s2)
  br label %ret
bb15:
  %t58 = load ptr, ptr %l0, !tbaa !29
  store ptr %t58, ptr %l44, !tbaa !29
  %t59 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t59, ptr %l45
  %t60 = load ptr, ptr %l0, !tbaa !29
  %t61 = load ptr, ptr %l0, !tbaa !29
  %t63 = getelementptr %"compiler/names:Resolver", ptr %t61, i32 0, i32 6
  %t64 = load i64, ptr %t63, !tbaa !24
  %t65 = load i32, ptr %l3, !tbaa !23
  %t69 = call %"compiler/names:Ref" @compiler_2fnames_2ecompiler_2fnames_3aResolver_2etypeIn(ptr %v0, ptr %t60, i64 %t64, i32 %t65)
  store %"compiler/names:Ref" %t69, ptr %l50
  br label %bb16
bb16:
  %t70 = load ptr, ptr %l44, !tbaa !29
  %t71 = load %"compiler/source:Span", ptr %l45
  %t72 = load %"compiler/names:Ref", ptr %l50
  call void @compiler_2fnames_2ecompiler_2fnames_3aResolver_2erecord(ptr %v0, ptr %t70, %"compiler/source:Span" %t71, %"compiler/names:Ref" %t72)
  br label %bb17
bb17:
  br label %ret
bb18:
  %t73 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t73, ptr %l51, !tbaa !27
  %t74 = getelementptr { i64, ptr }, ptr %l51, i32 0, i32 1
  %t75 = load ptr, ptr %t74, !tbaa !27
  %t76 = getelementptr i32, ptr %t75, i64 0
  %t77 = load i32, ptr %t76, !tbaa !33
  store i32 %t77, ptr %l5, !tbaa !23
  %t79 = load ptr, ptr %l0, !tbaa !29
  %t81 = getelementptr %"compiler/names:Resolver", ptr %t79, i32 0, i32 1
  %t82 = load ptr, ptr %l0, !tbaa !29
  %t84 = getelementptr %"compiler/names:Resolver", ptr %t82, i32 0, i32 6
  %t85 = load i64, ptr %t84, !tbaa !24
  %t88 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fnames_3aTable_26_3e_2_Hc2ccbbc5952c057a60f016e9cc1626d2(ptr %v0, ptr %v0, ptr %t81, i64 %t85)
  store ptr %t88, ptr %l58
  br label %bb19
bb19:
  %t89 = load ptr, ptr %l58, !tbaa !29
  %t91 = getelementptr %"compiler/names:Table", ptr %t89, i32 0, i32 3
  %t92 = load i32, ptr %l5, !tbaa !23
  %t95 = call { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fsource_3aNameId_2c_20I64_3e_H2a27ec2ae5362b2f0ac6d54f3e063c70(ptr %v0, ptr %t91, i32 %t92)
  %t96 = extractvalue { i32, i64 } %t95, 1
  %t97 = extractvalue { i32, i64 } %t95, 0
  store i32 %t97, ptr %l63
  %t98 = icmp ne i32 %t97, 0
  br i1 %t98, label %bb21, label %ok.99, !prof !99
ok.99:
  store i64 %t96, ptr %l62
  br label %bb20
bb20:
  %t100 = load i64, ptr %l62, !tbaa !24
  store i64 %t100, ptr %l53, !tbaa !24
  br label %bb23
bb21:
  br label %bb22
bb22:
  store i64 -1, ptr %l53, !tbaa !24
  br label %bb23
bb23:
  %t101 = load i64, ptr %l53, !tbaa !24
  %t102 = icmp slt i64 %t101, 0
  br i1 %t102, label %bb24, label %bb25
bb24:
  %t104 = load ptr, ptr %l0, !tbaa !29
  %t105 = load i32, ptr %l5, !tbaa !23
  %t108 = call %"compiler/names:Ref" @compiler_2fnames_2ecompiler_2fnames_3aResolver_2elookup(ptr %v0, ptr %t104, i32 %t105)
  store %"compiler/names:Ref" %t108, ptr %l67
  br label %bb26
bb25:
  br label %bb82
bb26:
  %t109 = load %"compiler/names:Ref", ptr %l67
  store %"compiler/names:Ref" %t109, ptr %l6
  %t110 = load ptr, ptr %l0, !tbaa !29
  %t111 = load ptr, ptr %l0, !tbaa !29
  %t113 = getelementptr %"compiler/names:Resolver", ptr %t111, i32 0, i32 6
  %t114 = load i64, ptr %t113, !tbaa !24
  %t115 = getelementptr %"compiler/source:Span", ptr %l1, i32 0, i32 0
  %t116 = load i32, ptr %t115, !tbaa !23
  %t117 = load i32, ptr %l5, !tbaa !23
  %t122 = call %"compiler/source:Span" @compiler_2fnames_2ecompiler_2fnames_3aResolver_2enameSpan(ptr %v0, ptr %t110, i64 %t114, i32 %t116, i32 %t117)
  store %"compiler/source:Span" %t122, ptr %l73
  br label %bb27
bb27:
  %t123 = load %"compiler/source:Span", ptr %l73
  store %"compiler/source:Span" %t123, ptr %l7
  %t124 = getelementptr %"compiler/names:Ref", ptr %l6, i32 0, i32 0
  %t125 = load i32, ptr %t124, !range !{i32 0, i32 9}
  %t127 = trunc i64 0 to i32
  %t128 = icmp eq i32 %t125, %t127
  br i1 %t128, label %bb28, label %bb29
bb28:
  store %olang.scope zeroinitializer, ptr %s4
  %t130 = load ptr, ptr %l0, !tbaa !29
  %t132 = getelementptr %"compiler/names:Resolver", ptr %t130, i32 0, i32 15
  %t134 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fpair_3aPair_3ccompiler_2fsource__H04f1a4a88576bd1070c12151a5c28d38(ptr %v0, ptr %t132)
  store i64 %t134, ptr %l78
  br label %bb30
bb29:
  br label %bb72
bb30:
  %t135 = load i64, ptr %l78, !tbaa !24
  store i64 %t135, ptr %l8, !tbaa !24
  %t136 = load ptr, ptr %l0, !tbaa !29
  %t137 = load %"compiler/source:Span", ptr %l7
  %t138 = load i32, ptr %l5, !tbaa !23
  call void @compiler_2fnames_2ecompiler_2fnames_3aResolver_2eunknownHead(ptr %v0, ptr %t136, %"compiler/source:Span" %t137, i32 %t138)
  br label %bb31
bb31:
  %t142 = load ptr, ptr %l0, !tbaa !29
  %t144 = getelementptr %"compiler/names:Resolver", ptr %t142, i32 0, i32 15
  %t146 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fpair_3aPair_3ccompiler_2fsource__H04f1a4a88576bd1070c12151a5c28d38(ptr %v0, ptr %t144)
  store i64 %t146, ptr %l84
  br label %bb32
bb32:
  %t147 = load i64, ptr %l8, !tbaa !24
  %t148 = load i64, ptr %l84, !tbaa !24
  %t150 = icmp eq i64 %t148, %t147
  br i1 %t150, label %bb33, label %bb34
bb33:
  %t152 = load ptr, ptr %l0, !tbaa !29
  %t154 = getelementptr %"compiler/names:Resolver", ptr %t152, i32 0, i32 0
  %t155 = load ptr, ptr %t154, !tbaa !29
  %t157 = getelementptr %"compiler/load:Loader", ptr %t155, i32 0, i32 0
  %t158 = load { i64, ptr }, ptr %t157, !tbaa !27
  store { i64, ptr } %t158, ptr %l90, !tbaa !27
  %t159 = load ptr, ptr %l0, !tbaa !29
  %t160 = load i32, ptr %l5, !tbaa !23
  %t163 = call { i64, ptr } @compiler_2fnames_2ecompiler_2fnames_3aResolver_2etext(ptr %v0, ptr %s4, ptr %t159, i32 %t160)
  store { i64, ptr } %t163, ptr %l93
  br label %bb35
bb34:
  store i1 false, ptr %l87, !tbaa !21
  br label %bb37
bb35:
  %t164 = load { i64, ptr }, ptr %l90, !tbaa !27
  %t165 = extractvalue { i64, ptr } %t164, 1
  %t166 = extractvalue { i64, ptr } %t164, 0
  %t167 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d40, i32 0, i32 1) }, 1
  %t168 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d40, i32 0, i32 1) }, 0
  %t169 = add i64 %t166, %t168
  %t170 = load { i64, ptr }, ptr %l93, !tbaa !27
  %t171 = extractvalue { i64, ptr } %t170, 1
  %t172 = extractvalue { i64, ptr } %t170, 0
  %t173 = add i64 %t169, %t172
  %t174 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d41, i32 0, i32 1) }, 1
  %t175 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d41, i32 0, i32 1) }, 0
  %t176 = add i64 %t173, %t175
  %t177 = call ptr @__olang_scope_alloc(ptr %s4, i64 %t176)
  call void @olang_textcopy(ptr %t177, ptr %t165, i64 %t166)
  %t178 = getelementptr i8, ptr %t177, i64 %t166
  call void @olang_textcopy(ptr %t178, ptr %t167, i64 %t168)
  %t179 = getelementptr i8, ptr %t178, i64 %t168
  call void @olang_textcopy(ptr %t179, ptr %t171, i64 %t172)
  %t180 = getelementptr i8, ptr %t179, i64 %t172
  call void @olang_textcopy(ptr %t180, ptr %t174, i64 %t175)
  %t181 = insertvalue { i64, ptr } undef, i64 %t176, 0
  %t182 = insertvalue { i64, ptr } %t181, ptr %t177, 1
  %t184 = extractvalue { i64, ptr } %t182, 0
  %t185 = extractvalue { i64, ptr } %t182, 1
  %t186 = mul i64 %t184, 1
  %t187 = call ptr @__olang_scope_alloc(ptr %s4, i64 %t186)
  call void @llvm.memcpy.p0.p0.i64(ptr %t187, ptr %t185, i64 %t186, i1 false)
  %t188 = insertvalue { i64, ptr } undef, i64 %t184, 0
  %t189 = insertvalue { i64, ptr } %t188, ptr %t187, 1
  %t191 = call i1 @std_2fos_2eExists(ptr %s4, { i64, ptr } %t189)
  store i1 %t191, ptr %l96
  br label %bb36
bb36:
  %t192 = load i1, ptr %l96, !tbaa !21
  %t193 = xor i1 %t192, true
  store i1 %t193, ptr %l87, !tbaa !21
  br label %bb37
bb37:
  %t195 = load i1, ptr %l87, !tbaa !21
  br i1 %t195, label %bb38, label %bb39
bb38:
  %t196 = load i32, ptr %l5, !tbaa !23
  store i32 %t196, ptr %l9, !tbaa !23
  %t198 = load ptr, ptr %l0, !tbaa !29
  %t200 = getelementptr %"compiler/names:Resolver", ptr %t198, i32 0, i32 1
  %t201 = load ptr, ptr %l0, !tbaa !29
  %t203 = getelementptr %"compiler/names:Resolver", ptr %t201, i32 0, i32 6
  %t204 = load i64, ptr %t203, !tbaa !24
  %t207 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fnames_3aTable_26_3e_2_Hc2ccbbc5952c057a60f016e9cc1626d2(ptr %v0, ptr %v0, ptr %t200, i64 %t204)
  store ptr %t207, ptr %l104
  br label %bb40
bb39:
  store i1 false, ptr %l98, !tbaa !21
  br label %bb42
bb40:
  %t208 = load ptr, ptr %l104, !tbaa !29
  %t210 = getelementptr %"compiler/names:Table", ptr %t208, i32 0, i32 4
  %t211 = load i32, ptr %l9, !tbaa !23
  %t214 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fsource_3aNameId_2c_20Bool_3_H8da9376267bda3f76393292be0e507b2(ptr %v0, ptr %t210, i32 %t211)
  store i1 %t214, ptr %l108
  br label %bb41
bb41:
  %t215 = load i1, ptr %l108, !tbaa !21
  %t216 = xor i1 %t215, true
  store i1 %t216, ptr %l98, !tbaa !21
  br label %bb42
bb42:
  %t218 = load i1, ptr %l98, !tbaa !21
  br i1 %t218, label %bb43, label %bb44
bb43:
  %t219 = load ptr, ptr %l0, !tbaa !29
  %t220 = load i32, ptr %l5, !tbaa !23
  %t223 = call i1 @compiler_2fnames_2ecompiler_2fnames_3aResolver_2eImportSaid(ptr %v0, ptr %t219, i32 %t220)
  store i1 %t223, ptr %l113
  br label %bb45
bb44:
  store i1 false, ptr %l110, !tbaa !21
  br label %bb46
bb45:
  %t224 = load i1, ptr %l113, !tbaa !21
  %t225 = xor i1 %t224, true
  store i1 %t225, ptr %l110, !tbaa !21
  br label %bb46
bb46:
  %t227 = load i1, ptr %l110, !tbaa !21
  br i1 %t227, label %bb47, label %bb48
bb47:
  store %olang.scope zeroinitializer, ptr %s6
  %t228 = load ptr, ptr %l0, !tbaa !29
  %t230 = getelementptr %"compiler/names:Resolver", ptr %t228, i32 0, i32 15
  store ptr %t230, ptr %l116, !tbaa !29
  %t231 = load i32, ptr %l5, !tbaa !23
  %t233 = call %"std/pair:Pair.ee791c76fa337c2e45b252e8964cf3ed" @std_2fpair_3aPair_3ccompiler_2fsource_3aNameId_2c_20I64_3e_2ector(ptr %s6, i32 %t231, i64 -1)
  store %"std/pair:Pair.ee791c76fa337c2e45b252e8964cf3ed" %t233, ptr %l118
  br label %bb49
bb48:
  br label %bb71
bb49:
  %t234 = load ptr, ptr %l116, !tbaa !29
  %t235 = load %"std/pair:Pair.ee791c76fa337c2e45b252e8964cf3ed", ptr %l118
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fpair_3aPair_3ccompiler_2fsource__H6d3eea1e3a905a651c612011755d5d17(ptr %v0, ptr %t234, %"std/pair:Pair.ee791c76fa337c2e45b252e8964cf3ed" %t235)
  br label %bb50
bb50:
  %t236 = load ptr, ptr %l0, !tbaa !29
  %t237 = load i32, ptr %l5, !tbaa !23
  %t240 = call { i64, ptr } @compiler_2fnames_2ecompiler_2fnames_3aResolver_2etext(ptr %v0, ptr %v0, ptr %t236, i32 %t237)
  store { i64, ptr } %t240, ptr %l121
  br label %bb51
bb51:
  %t241 = load { i64, ptr }, ptr %l121, !tbaa !27
  %t242 = call %"compiler/msgs:Nearest" @compiler_2fmsgs_3aNearest_2ector(ptr %v0, ptr %s6, { i64, ptr } %t241)
  store %"compiler/msgs:Nearest" %t242, ptr %l122
  br label %bb52
bb52:
  %t243 = load %"compiler/msgs:Nearest", ptr %l122
  %t244 = call ptr @__olang_scope_alloc_a(ptr %s6, i64 40, i64 8)
  store %"compiler/msgs:Nearest" %t243, ptr %t244
  store ptr %t244, ptr %l10, !tbaa !29
  %t246 = load ptr, ptr %l0, !tbaa !29
  %t248 = getelementptr %"compiler/names:Resolver", ptr %t246, i32 0, i32 0
  %t249 = load ptr, ptr %t248, !tbaa !29
  %t251 = getelementptr %"compiler/load:Loader", ptr %t249, i32 0, i32 10
  %t252 = load ptr, ptr %l0, !tbaa !29
  %t254 = getelementptr %"compiler/names:Resolver", ptr %t252, i32 0, i32 6
  %t255 = load i64, ptr %t254, !tbaa !24
  %t258 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H7bcf2aeb09afa796f4333e6ec8c3f63f(ptr %v0, ptr %v0, ptr %t251, i64 %t255)
  store ptr %t258, ptr %l129
  br label %bb53
bb53:
  %t259 = load ptr, ptr %l129, !tbaa !29
  %t261 = getelementptr %"compiler/load:Module", ptr %t259, i32 0, i32 11
  store ptr %t261, ptr %l11, !tbaa !29
  store i64 0, ptr %l12, !tbaa !24
  br label %bb54
bb54:
  %t263 = load i64, ptr %l12, !tbaa !24
  store i64 %t263, ptr %l132, !tbaa !24
  %t264 = load ptr, ptr %l11, !tbaa !29
  %t266 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fload_3aImport_3e_2eLen_3ccompiler_2fload_3aImport_3e(ptr %v0, ptr %t264)
  store i64 %t266, ptr %l134
  br label %bb55
bb55:
  %t267 = load i64, ptr %l132, !tbaa !24
  %t268 = load i64, ptr %l134, !tbaa !24
  %t269 = icmp slt i64 %t267, %t268
  %t271 = xor i1 %t269, true
  br i1 %t271, label %bb56, label %bb57
bb56:
  br label %bb65
bb57:
  br label %bb58
bb58:
  %t273 = load ptr, ptr %l11, !tbaa !29
  %t274 = load i64, ptr %l12, !tbaa !24
  %t277 = call %"compiler/load:Import" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fload_3aImport_3e_2eAt_3ccompiler_2fload_3aImport_3e(ptr %v0, ptr %v0, ptr %t273, i64 %t274)
  store %"compiler/load:Import" %t277, ptr %l139
  br label %bb59
bb59:
  %t278 = load %"compiler/load:Import", ptr %l139
  store %"compiler/load:Import" %t278, ptr %l13
  %t279 = getelementptr %"compiler/load:Import", ptr %l13, i32 0, i32 5
  %t280 = load i64, ptr %t279, !tbaa !24
  %t282 = icmp sge i64 %t280, 0
  br i1 %t282, label %bb60, label %bb61
bb60:
  %t284 = load ptr, ptr %l10, !tbaa !29
  %t285 = getelementptr %"compiler/load:Import", ptr %l13, i32 0, i32 2
  %t286 = load { i64, ptr }, ptr %t285, !tbaa !27
  call void @compiler_2fmsgs_2ecompiler_2fmsgs_3aNearest_2eOffer(ptr %s6, ptr %v0, ptr %t284, { i64, ptr } %t286)
  br label %bb62
bb61:
  br label %bb63
bb62:
  br label %bb63
bb63:
  br label %bb64
bb64:
  %t289 = load i64, ptr %l12, !tbaa !24
  %t291 = add i64 %t289, 1
  store i64 %t291, ptr %l12, !tbaa !24
  br label %bb54
bb65:
  %t293 = load ptr, ptr %l0, !tbaa !29
  %t295 = getelementptr %"compiler/names:Resolver", ptr %t293, i32 0, i32 0
  %t296 = load ptr, ptr %t295, !tbaa !29
  %t298 = getelementptr %"compiler/load:Loader", ptr %t296, i32 0, i32 4
  %t299 = load ptr, ptr %t298, !tbaa !29
  store ptr %t299, ptr %l148, !tbaa !29
  %t300 = load ptr, ptr %l0, !tbaa !29
  %t301 = load ptr, ptr %l0, !tbaa !29
  %t303 = getelementptr %"compiler/names:Resolver", ptr %t301, i32 0, i32 6
  %t304 = load i64, ptr %t303, !tbaa !24
  %t305 = load %"compiler/source:Span", ptr %l7
  %t309 = call { i64, [3 x i64] } @compiler_2fnames_2ecompiler_2fnames_3aResolver_2eat(ptr %v0, ptr %t300, i64 %t304, %"compiler/source:Span" %t305)
  store { i64, [3 x i64] } %t309, ptr %l153
  br label %bb66
bb66:
  %t310 = load ptr, ptr %l0, !tbaa !29
  %t311 = load i32, ptr %l5, !tbaa !23
  %t314 = call { i64, ptr } @compiler_2fnames_2ecompiler_2fnames_3aResolver_2etok(ptr %v0, ptr %s6, ptr %t310, i32 %t311)
  store { i64, ptr } %t314, ptr %l156
  br label %bb67
bb67:
  %t315 = load { i64, ptr }, ptr %l156, !tbaa !27
  %t316 = extractvalue { i64, ptr } %t315, 0
  %t317 = extractvalue { i64, ptr } %t315, 1
  %t318 = mul i64 %t316, 1
  %t319 = call ptr @__olang_scope_alloc(ptr %s6, i64 %t318)
  call void @llvm.memcpy.p0.p0.i64(ptr %t319, ptr %t317, i64 %t318, i1 false)
  %t320 = insertvalue { i64, ptr } undef, i64 %t316, 0
  %t321 = insertvalue { i64, ptr } %t320, ptr %t319, 1
  store { i64, ptr } %t321, ptr %l157, !tbaa !27
  %t322 = load ptr, ptr %l10, !tbaa !29
  %t324 = call { i64, ptr } @compiler_2fmsgs_2ecompiler_2fmsgs_3aNearest_2eHint(ptr %s6, ptr %s6, ptr %t322)
  store { i64, ptr } %t324, ptr %l159
  br label %bb68
bb68:
  %t325 = load { i64, ptr }, ptr %l159, !tbaa !27
  %t326 = extractvalue { i64, ptr } %t325, 0
  %t327 = extractvalue { i64, ptr } %t325, 1
  %t328 = mul i64 %t326, 1
  %t329 = call ptr @__olang_scope_alloc(ptr %s6, i64 %t328)
  call void @llvm.memcpy.p0.p0.i64(ptr %t329, ptr %t327, i64 %t328, i1 false)
  %t330 = insertvalue { i64, ptr } undef, i64 %t326, 0
  %t331 = insertvalue { i64, ptr } %t330, ptr %t329, 1
  %t332 = load { i64, ptr }, ptr %l157, !tbaa !27
  %t334 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eUnknownImport(ptr %s6, ptr %s6, ptr %s6, { i64, ptr } %t332, { i64, ptr } %t331)
  store %"compiler/diagmsg:Msg" %t334, ptr %l161
  br label %bb69
bb69:
  %t335 = load ptr, ptr %l148, !tbaa !29
  %t336 = load { i64, [3 x i64] }, ptr %l153
  %t337 = load %"compiler/diagmsg:Msg", ptr %l161
  %t338 = call i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eError(ptr %v0, ptr %s6, ptr %t335, { i64, [3 x i64] } %t336, %"compiler/diagmsg:Msg" %t337)
  store i64 %t338, ptr %l162
  br label %bb70
bb70:
  call void @__olang_scope_close(ptr %s6)
  br label %bb71
bb71:
  call void @__olang_scope_close(ptr %s4)
  br label %ret
bb72:
  %t339 = getelementptr %"compiler/names:Ref", ptr %l6, i32 0, i32 0
  %t340 = load i32, ptr %t339, !range !{i32 0, i32 9}
  %t342 = trunc i64 4 to i32
  %t343 = icmp eq i32 %t340, %t342
  br i1 %t343, label %bb73, label %bb74
bb73:
  store i1 true, ptr %l165, !tbaa !21
  br label %bb75
bb74:
  %t345 = getelementptr %"compiler/names:Ref", ptr %l6, i32 0, i32 0
  %t346 = load i32, ptr %t345, !range !{i32 0, i32 9}
  %t348 = trunc i64 7 to i32
  %t349 = icmp eq i32 %t346, %t348
  store i1 %t349, ptr %l165, !tbaa !21
  br label %bb75
bb75:
  %t351 = load i1, ptr %l165, !tbaa !21
  br i1 %t351, label %bb76, label %bb77
bb76:
  %t352 = load ptr, ptr %l0, !tbaa !29
  %t354 = getelementptr %"compiler/names:Resolver", ptr %t352, i32 0, i32 5
  store ptr %t354, ptr %l169, !tbaa !29
  %t355 = load ptr, ptr %l0, !tbaa !29
  %t357 = getelementptr %"compiler/names:Resolver", ptr %t355, i32 0, i32 0
  %t358 = load ptr, ptr %t357, !tbaa !29
  %t360 = getelementptr %"compiler/load:Loader", ptr %t358, i32 0, i32 10
  %t361 = load ptr, ptr %l0, !tbaa !29
  %t363 = getelementptr %"compiler/names:Resolver", ptr %t361, i32 0, i32 6
  %t364 = load i64, ptr %t363, !tbaa !24
  %t367 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H7bcf2aeb09afa796f4333e6ec8c3f63f(ptr %v0, ptr %v0, ptr %t360, i64 %t364)
  store ptr %t367, ptr %l175
  br label %bb78
bb77:
  br label %bb81
bb78:
  %t368 = load ptr, ptr %l175, !tbaa !29
  %t370 = getelementptr %"compiler/load:Module", ptr %t368, i32 0, i32 4
  %t371 = load i64, ptr %t370, !tbaa !24
  %t372 = getelementptr %"compiler/source:Span", ptr %l7, i32 0, i32 1
  %t373 = load i32, ptr %t372, !tbaa !23
  %t376 = call i64 @compiler_2fnames_2ekey(i64 %t371, i32 %t373)
  store i64 %t376, ptr %l179
  br label %bb79
bb79:
  %t377 = load %"compiler/names:Ref", ptr %l6
  %t378 = load ptr, ptr %l169, !tbaa !29
  %t379 = load i64, ptr %l179, !tbaa !24
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2fnames_3aRef_3e_2eP_Hb17c37756f956998a4fa74bcac088344(ptr %v0, ptr %t378, i64 %t379, %"compiler/names:Ref" %t377)
  br label %bb80
bb80:
  br label %bb81
bb81:
  br label %ret
bb82:
  %t381 = load ptr, ptr %l0, !tbaa !29
  %t382 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t385 = call i64 @compiler_2fnames_2ecompiler_2fnames_3aResolver_2ealiasModule(ptr %v0, ptr %v1, ptr %t381, { i64, ptr } %t382)
  store i64 %t385, ptr %l183
  br label %bb83
bb83:
  %t386 = load i64, ptr %l183, !tbaa !24
  store i64 %t386, ptr %l14, !tbaa !24
  %t387 = load i64, ptr %l14, !tbaa !24
  %t389 = icmp sge i64 %t387, 0
  br i1 %t389, label %bb84, label %bb85
bb84:
  store %olang.scope zeroinitializer, ptr %s12
  %t391 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t391, ptr %l186, !tbaa !27
  %t392 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t394 = extractvalue { i64, ptr } %t392, 0
  %t396 = sub i64 %t394, 1
  %t398 = getelementptr { i64, ptr }, ptr %l186, i32 0, i32 1
  %t399 = load ptr, ptr %t398, !tbaa !27
  %t400 = getelementptr i32, ptr %t399, i64 %t396
  %t401 = load i32, ptr %t400, !tbaa !33
  store i32 %t401, ptr %l15, !tbaa !23
  %t403 = load ptr, ptr %l0, !tbaa !29
  %t404 = load i64, ptr %l14, !tbaa !24
  %t405 = load i32, ptr %l15, !tbaa !23
  %t409 = call %"compiler/names:Ref" @compiler_2fnames_2ecompiler_2fnames_3aResolver_2ememberOf(ptr %v0, ptr %t403, i64 %t404, i32 %t405)
  store %"compiler/names:Ref" %t409, ptr %l194
  br label %bb86
bb85:
  br label %bb91
bb86:
  %t410 = load %"compiler/names:Ref", ptr %l194
  store %"compiler/names:Ref" %t410, ptr %l16
  %t411 = load ptr, ptr %l0, !tbaa !29
  store ptr %t411, ptr %l195, !tbaa !29
  %t412 = load i64, ptr %l14, !tbaa !24
  store i64 %t412, ptr %l196, !tbaa !24
  %t413 = load %"compiler/names:Ref", ptr %l16
  store %"compiler/names:Ref" %t413, ptr %l197
  %t414 = load i32, ptr %l15, !tbaa !23
  store i32 %t414, ptr %l198, !tbaa !23
  %t415 = getelementptr %"compiler/source:Span", ptr %l1, i32 0, i32 1
  %t416 = load i32, ptr %t415, !tbaa !23
  store i32 %t416, ptr %l199, !tbaa !23
  %t417 = load ptr, ptr %l0, !tbaa !29
  %t418 = load i32, ptr %l15, !tbaa !23
  %t421 = call { i64, ptr } @compiler_2fnames_2ecompiler_2fnames_3aResolver_2etext(ptr %v0, ptr %s12, ptr %t417, i32 %t418)
  store { i64, ptr } %t421, ptr %l202
  br label %bb87
bb87:
  %t422 = load { i64, ptr }, ptr %l202, !tbaa !27
  %t423 = extractvalue { i64, ptr } %t422, 0
  %t425 = trunc i64 %t423 to i32
  %t426 = load i32, ptr %l199, !tbaa !23
  %t428 = sub i32 %t426, %t425
  %t429 = getelementptr %"compiler/source:Span", ptr %l1, i32 0, i32 1
  %t430 = load i32, ptr %t429, !tbaa !23
  %t433 = call %"compiler/source:Span" @compiler_2fsource_3aSpan_2ector(ptr %s12, i32 %t428, i32 %t430)
  store %"compiler/source:Span" %t433, ptr %l207
  br label %bb88
bb88:
  %t434 = load ptr, ptr %l195, !tbaa !29
  %t435 = load i64, ptr %l196, !tbaa !24
  %t436 = load %"compiler/names:Ref", ptr %l197
  %t437 = load i32, ptr %l198, !tbaa !23
  %t438 = load %"compiler/source:Span", ptr %l207
  call void @compiler_2fnames_2ecompiler_2fnames_3aResolver_2enotPrivate(ptr %v0, ptr %t434, i64 %t435, %"compiler/names:Ref" %t436, i32 %t437, %"compiler/source:Span" %t438)
  br label %bb89
bb89:
  %t439 = load ptr, ptr %l0, !tbaa !29
  %t440 = load %"compiler/source:Span", ptr %l1
  %t441 = load %"compiler/names:Ref", ptr %l16
  call void @compiler_2fnames_2ecompiler_2fnames_3aResolver_2erecord(ptr %v0, ptr %t439, %"compiler/source:Span" %t440, %"compiler/names:Ref" %t441)
  br label %bb90
bb90:
  call void @__olang_scope_close(ptr %s12)
  br label %bb91
bb91:
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2fnames_2ecompiler_2fnames_3aResolver_2etypeRef(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca %"compiler/source:Span"
  %l3 = alloca { i64, ptr }
  %l4 = alloca { i64, ptr }
  %l5 = alloca { i64, ptr }
  %l6 = alloca i64
  %l7 = alloca i64
  %l9 = alloca ptr
  %l10 = alloca { i64, ptr }
  %l11 = alloca i64
  %l12 = alloca i64
  %l14 = alloca { i64, ptr }
  %l15 = alloca i64
  %l16 = alloca i64
  %l18 = alloca { i64, ptr }
  %l19 = alloca i64
  %l20 = alloca i64
  %l22 = alloca { i64, ptr }
  %l23 = alloca { i64, ptr }
  %l24 = alloca i64
  %l25 = alloca i64
  %l27 = alloca { i64, ptr }
  %l28 = alloca i64
  %l29 = alloca i64
  %l31 = alloca ptr
  %l32 = alloca { i64, ptr }
  %l33 = alloca i64
  %l34 = alloca i64
  %l36 = alloca ptr
  %l37 = alloca ptr
  %l38 = alloca { i64, ptr }
  %l39 = alloca { i64, ptr }
  %l40 = alloca i64
  %l41 = alloca i64
  %l45 = alloca ptr
  %l46 = alloca i1
  %l65 = alloca { i64, ptr }
  %l73 = alloca ptr
  %l74 = alloca i1
  %l87 = alloca { i64, ptr }
  %l103 = alloca { i64, ptr }
  %l119 = alloca { i64, ptr }
  %l127 = alloca ptr
  %l128 = alloca i1
  %l131 = alloca i1
  %l133 = alloca ptr
  %l134 = alloca i1
  %l147 = alloca { i64, ptr }
  %l158 = alloca { i64, ptr }
  %l168 = alloca ptr
  %l169 = alloca i1
  %l172 = alloca i1
  %l174 = alloca ptr
  %l175 = alloca i1
  %l189 = alloca { i64, ptr }
  %l197 = alloca ptr
  %l198 = alloca i1
  %l201 = alloca ptr
  %l202 = alloca i1
  %l207 = alloca ptr
  %l208 = alloca i1
  %l215 = alloca ptr
  %l216 = alloca i1
  %l221 = alloca ptr
  %l222 = alloca i1
  %l230 = alloca ptr
  %l231 = alloca i1
  %l243 = alloca { i64, ptr }
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
  store ptr %t5, ptr %l45, !tbaa !29
  store i1 false, ptr %l46, !tbaa !21
  %t6 = load ptr, ptr %l45, !tbaa !29
  %t7 = icmp ne ptr %t6, null
  br i1 %t7, label %bb4, label %bb5
bb4:
  %t9 = load ptr, ptr %l45, !tbaa !29
  %t10 = load i64, ptr %t9, !range !{i64 0, i64 8}
  %t12 = icmp eq i64 %t10, 0
  store i1 %t12, ptr %l46, !tbaa !21
  br label %bb5
bb5:
  %t13 = load i1, ptr %l46, !tbaa !21
  br i1 %t13, label %bb6, label %bb7
bb6:
  %t14 = load ptr, ptr %l1, !tbaa !29
  %t16 = getelementptr { i64, [5 x i64] }, ptr %t14, i32 0, i32 1
  %t17 = getelementptr { %"compiler/source:Span", { i64, ptr }, { i64, ptr } }, ptr %t16, i32 0, i32 0
  %t18 = load %"compiler/source:Span", ptr %t17
  store %"compiler/source:Span" %t18, ptr %l2
  %t20 = load ptr, ptr %l1, !tbaa !29
  %t22 = getelementptr { i64, [5 x i64] }, ptr %t20, i32 0, i32 1
  %t23 = getelementptr { %"compiler/source:Span", { i64, ptr }, { i64, ptr } }, ptr %t22, i32 0, i32 1
  %t24 = load { i64, ptr }, ptr %t23
  store { i64, ptr } %t24, ptr %l3, !tbaa !27
  %t26 = load ptr, ptr %l1, !tbaa !29
  %t28 = getelementptr { i64, [5 x i64] }, ptr %t26, i32 0, i32 1
  %t29 = getelementptr { %"compiler/source:Span", { i64, ptr }, { i64, ptr } }, ptr %t28, i32 0, i32 2
  %t30 = load { i64, ptr }, ptr %t29
  store { i64, ptr } %t30, ptr %l4, !tbaa !27
  br label %bb8
bb7:
  br label %bb17
bb8:
  %t32 = load ptr, ptr %l0, !tbaa !29
  %t33 = load %"compiler/source:Span", ptr %l2
  %t34 = load { i64, ptr }, ptr %l3, !tbaa !27
  call void @compiler_2fnames_2ecompiler_2fnames_3aResolver_2etypePath(ptr %v0, ptr %v1, ptr %t32, %"compiler/source:Span" %t33, { i64, ptr } %t34)
  br label %bb9
bb9:
  %t38 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t38, ptr %l5, !tbaa !27
  store i64 0, ptr %l6, !tbaa !24
  %t40 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t42 = extractvalue { i64, ptr } %t40, 0
  store i64 %t42, ptr %l7, !tbaa !24
  br label %bb10
bb10:
  %t44 = load i64, ptr %l6, !tbaa !24
  %t45 = load i64, ptr %l7, !tbaa !24
  %t48 = icmp slt i64 %t44, %t45
  %t50 = xor i1 %t48, true
  br i1 %t50, label %bb11, label %bb12
bb11:
  br label %bb16
bb12:
  br label %bb13
bb13:
  %t52 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t52, ptr %l65, !tbaa !27
  %t53 = load i64, ptr %l6, !tbaa !24
  %t55 = getelementptr { i64, ptr }, ptr %l65, i32 0, i32 1
  %t56 = load ptr, ptr %t55, !tbaa !27
  %t57 = getelementptr ptr, ptr %t56, i64 %t53
  %t58 = load ptr, ptr %t57, !tbaa !39
  %t60 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2fnames_2ecompiler_2fnames_3aResolver_2etypeRef(ptr %v0, ptr %v1, ptr %t60, ptr %t58)
  br label %bb14
bb14:
  br label %bb15
bb15:
  %t65 = load i64, ptr %l6, !tbaa !24
  %t67 = add i64 %t65, 1
  store i64 %t67, ptr %l6, !tbaa !24
  br label %bb10
bb16:
  br label %bb128
bb17:
  %t69 = load ptr, ptr %l1, !tbaa !29
  store ptr %t69, ptr %l73, !tbaa !29
  store i1 false, ptr %l74, !tbaa !21
  %t70 = load ptr, ptr %l73, !tbaa !29
  %t71 = icmp ne ptr %t70, null
  br i1 %t71, label %bb18, label %bb19
bb18:
  %t73 = load ptr, ptr %l73, !tbaa !29
  %t74 = load i64, ptr %t73, !range !{i64 0, i64 8}
  %t76 = icmp eq i64 %t74, 1
  store i1 %t76, ptr %l74, !tbaa !21
  br label %bb19
bb19:
  %t77 = load i1, ptr %l74, !tbaa !21
  br i1 %t77, label %bb20, label %bb21
bb20:
  %t78 = load ptr, ptr %l1, !tbaa !29
  %t80 = getelementptr { i64, [5 x i64] }, ptr %t78, i32 0, i32 1
  %t81 = getelementptr { %"compiler/source:Span", ptr }, ptr %t80, i32 0, i32 1
  %t82 = load ptr, ptr %t81
  store ptr %t82, ptr %l9, !tbaa !29
  br label %bb22
bb21:
  br label %bb44
bb22:
  %t84 = load ptr, ptr %l9, !tbaa !29
  %t86 = getelementptr %"compiler/ast:Sig", ptr %t84, i32 0, i32 0
  %t87 = load { i64, ptr }, ptr %t86, !tbaa !27
  store { i64, ptr } %t87, ptr %l10, !tbaa !27
  store i64 0, ptr %l11, !tbaa !24
  %t89 = load { i64, ptr }, ptr %l10, !tbaa !27
  %t91 = extractvalue { i64, ptr } %t89, 0
  store i64 %t91, ptr %l12, !tbaa !24
  br label %bb23
bb23:
  %t93 = load i64, ptr %l11, !tbaa !24
  %t94 = load i64, ptr %l12, !tbaa !24
  %t97 = icmp slt i64 %t93, %t94
  %t99 = xor i1 %t97, true
  br i1 %t99, label %bb24, label %bb25
bb24:
  br label %bb29
bb25:
  br label %bb26
bb26:
  %t101 = load { i64, ptr }, ptr %l10, !tbaa !27
  store { i64, ptr } %t101, ptr %l87, !tbaa !27
  %t102 = load i64, ptr %l11, !tbaa !24
  %t104 = getelementptr { i64, ptr }, ptr %l87, i32 0, i32 1
  %t105 = load ptr, ptr %t104, !tbaa !27
  %t106 = getelementptr ptr, ptr %t105, i64 %t102
  %t107 = load ptr, ptr %t106, !tbaa !39
  %t109 = load ptr, ptr %l0, !tbaa !29
  %t112 = getelementptr %"compiler/ast:Param", ptr %t107, i32 0, i32 2
  %t113 = load ptr, ptr %t112, !tbaa !29
  call void @compiler_2fnames_2ecompiler_2fnames_3aResolver_2etypeRef(ptr %v0, ptr %v1, ptr %t109, ptr %t113)
  br label %bb27
bb27:
  br label %bb28
bb28:
  %t116 = load i64, ptr %l11, !tbaa !24
  %t118 = add i64 %t116, 1
  store i64 %t118, ptr %l11, !tbaa !24
  br label %bb23
bb29:
  %t120 = load ptr, ptr %l9, !tbaa !29
  %t122 = getelementptr %"compiler/ast:Sig", ptr %t120, i32 0, i32 1
  %t123 = load { i64, ptr }, ptr %t122, !tbaa !27
  store { i64, ptr } %t123, ptr %l14, !tbaa !27
  store i64 0, ptr %l15, !tbaa !24
  %t125 = load { i64, ptr }, ptr %l14, !tbaa !27
  %t127 = extractvalue { i64, ptr } %t125, 0
  store i64 %t127, ptr %l16, !tbaa !24
  br label %bb30
bb30:
  %t129 = load i64, ptr %l15, !tbaa !24
  %t130 = load i64, ptr %l16, !tbaa !24
  %t133 = icmp slt i64 %t129, %t130
  %t135 = xor i1 %t133, true
  br i1 %t135, label %bb31, label %bb32
bb31:
  br label %bb36
bb32:
  br label %bb33
bb33:
  %t137 = load { i64, ptr }, ptr %l14, !tbaa !27
  store { i64, ptr } %t137, ptr %l103, !tbaa !27
  %t138 = load i64, ptr %l15, !tbaa !24
  %t140 = getelementptr { i64, ptr }, ptr %l103, i32 0, i32 1
  %t141 = load ptr, ptr %t140, !tbaa !27
  %t142 = getelementptr ptr, ptr %t141, i64 %t138
  %t143 = load ptr, ptr %t142, !tbaa !39
  %t145 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2fnames_2ecompiler_2fnames_3aResolver_2etypeRef(ptr %v0, ptr %v1, ptr %t145, ptr %t143)
  br label %bb34
bb34:
  br label %bb35
bb35:
  %t150 = load i64, ptr %l15, !tbaa !24
  %t152 = add i64 %t150, 1
  store i64 %t152, ptr %l15, !tbaa !24
  br label %bb30
bb36:
  %t154 = load ptr, ptr %l9, !tbaa !29
  %t156 = getelementptr %"compiler/ast:Sig", ptr %t154, i32 0, i32 3
  %t157 = load { i64, ptr }, ptr %t156, !tbaa !27
  store { i64, ptr } %t157, ptr %l18, !tbaa !27
  store i64 0, ptr %l19, !tbaa !24
  %t159 = load { i64, ptr }, ptr %l18, !tbaa !27
  %t161 = extractvalue { i64, ptr } %t159, 0
  store i64 %t161, ptr %l20, !tbaa !24
  br label %bb37
bb37:
  %t163 = load i64, ptr %l19, !tbaa !24
  %t164 = load i64, ptr %l20, !tbaa !24
  %t167 = icmp slt i64 %t163, %t164
  %t169 = xor i1 %t167, true
  br i1 %t169, label %bb38, label %bb39
bb38:
  br label %bb43
bb39:
  br label %bb40
bb40:
  %t171 = load { i64, ptr }, ptr %l18, !tbaa !27
  store { i64, ptr } %t171, ptr %l119, !tbaa !27
  %t172 = load i64, ptr %l19, !tbaa !24
  %t174 = getelementptr { i64, ptr }, ptr %l119, i32 0, i32 1
  %t175 = load ptr, ptr %t174, !tbaa !27
  %t176 = getelementptr ptr, ptr %t175, i64 %t172
  %t177 = load ptr, ptr %t176, !tbaa !39
  %t179 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2fnames_2ecompiler_2fnames_3aResolver_2epath(ptr %v0, ptr %v1, ptr %t179, ptr %t177)
  br label %bb41
bb41:
  br label %bb42
bb42:
  %t184 = load i64, ptr %l19, !tbaa !24
  %t186 = add i64 %t184, 1
  store i64 %t186, ptr %l19, !tbaa !24
  br label %bb37
bb43:
  br label %bb128
bb44:
  %t188 = load ptr, ptr %l1, !tbaa !29
  store ptr %t188, ptr %l127, !tbaa !29
  store i1 false, ptr %l128, !tbaa !21
  %t189 = load ptr, ptr %l127, !tbaa !29
  %t190 = icmp ne ptr %t189, null
  br i1 %t190, label %bb45, label %bb46
bb45:
  %t192 = load ptr, ptr %l127, !tbaa !29
  %t193 = load i64, ptr %t192, !range !{i64 0, i64 8}
  %t195 = icmp eq i64 %t193, 2
  store i1 %t195, ptr %l128, !tbaa !21
  br label %bb46
bb46:
  %t196 = load i1, ptr %l128, !tbaa !21
  br i1 %t196, label %bb47, label %bb48
bb47:
  %t197 = load ptr, ptr %l1, !tbaa !29
  %t199 = getelementptr { i64, [5 x i64] }, ptr %t197, i32 0, i32 1
  %t200 = getelementptr { %"compiler/source:Span", ptr }, ptr %t199, i32 0, i32 1
  %t201 = load ptr, ptr %t200
  store ptr %t201, ptr %l133, !tbaa !29
  store i1 false, ptr %l134, !tbaa !21
  %t202 = load ptr, ptr %l133, !tbaa !29
  %t203 = icmp ne ptr %t202, null
  br i1 %t203, label %bb49, label %bb50
bb48:
  store i1 false, ptr %l131, !tbaa !21
  br label %bb51
bb49:
  %t205 = load ptr, ptr %l133, !tbaa !29
  %t206 = load i64, ptr %t205, !range !{i64 0, i64 5}
  %t208 = icmp eq i64 %t206, 1
  store i1 %t208, ptr %l134, !tbaa !21
  br label %bb50
bb50:
  %t209 = load i1, ptr %l134, !tbaa !21
  store i1 %t209, ptr %l131, !tbaa !21
  br label %bb51
bb51:
  %t210 = load i1, ptr %l131, !tbaa !21
  br i1 %t210, label %bb52, label %bb53
bb52:
  %t211 = load ptr, ptr %l1, !tbaa !29
  %t213 = getelementptr { i64, [5 x i64] }, ptr %t211, i32 0, i32 1
  %t214 = getelementptr { %"compiler/source:Span", ptr }, ptr %t213, i32 0, i32 1
  %t215 = load ptr, ptr %t214
  %t217 = getelementptr { i64, [6 x i64] }, ptr %t215, i32 0, i32 1
  %t218 = getelementptr { { i64, ptr }, ptr }, ptr %t217, i32 0, i32 0
  %t219 = load { i64, ptr }, ptr %t218
  store { i64, ptr } %t219, ptr %l22, !tbaa !27
  br label %bb54
bb53:
  br label %bb68
bb54:
  %t221 = load { i64, ptr }, ptr %l22, !tbaa !27
  store { i64, ptr } %t221, ptr %l23, !tbaa !27
  store i64 0, ptr %l24, !tbaa !24
  %t223 = load { i64, ptr }, ptr %l23, !tbaa !27
  %t225 = extractvalue { i64, ptr } %t223, 0
  store i64 %t225, ptr %l25, !tbaa !24
  br label %bb55
bb55:
  %t227 = load i64, ptr %l24, !tbaa !24
  %t228 = load i64, ptr %l25, !tbaa !24
  %t231 = icmp slt i64 %t227, %t228
  %t233 = xor i1 %t231, true
  br i1 %t233, label %bb56, label %bb57
bb56:
  br label %bb67
bb57:
  br label %bb58
bb58:
  %t235 = load { i64, ptr }, ptr %l23, !tbaa !27
  store { i64, ptr } %t235, ptr %l147, !tbaa !27
  %t236 = load i64, ptr %l24, !tbaa !24
  %t238 = getelementptr { i64, ptr }, ptr %l147, i32 0, i32 1
  %t239 = load ptr, ptr %t238, !tbaa !27
  %t240 = getelementptr ptr, ptr %t239, i64 %t236
  %t241 = load ptr, ptr %t240, !tbaa !39
  %t245 = getelementptr %"compiler/ast:CaseDecl", ptr %t241, i32 0, i32 2
  %t246 = load { i64, ptr }, ptr %t245, !tbaa !27
  store { i64, ptr } %t246, ptr %l27, !tbaa !27
  store i64 0, ptr %l28, !tbaa !24
  %t248 = load { i64, ptr }, ptr %l27, !tbaa !27
  %t250 = extractvalue { i64, ptr } %t248, 0
  store i64 %t250, ptr %l29, !tbaa !24
  br label %bb59
bb59:
  %t252 = load i64, ptr %l28, !tbaa !24
  %t253 = load i64, ptr %l29, !tbaa !24
  %t256 = icmp slt i64 %t252, %t253
  %t258 = xor i1 %t256, true
  br i1 %t258, label %bb60, label %bb61
bb60:
  br label %bb65
bb61:
  br label %bb62
bb62:
  %t260 = load { i64, ptr }, ptr %l27, !tbaa !27
  store { i64, ptr } %t260, ptr %l158, !tbaa !27
  %t261 = load i64, ptr %l28, !tbaa !24
  %t263 = getelementptr { i64, ptr }, ptr %l158, i32 0, i32 1
  %t264 = load ptr, ptr %t263, !tbaa !27
  %t265 = getelementptr ptr, ptr %t264, i64 %t261
  %t266 = load ptr, ptr %t265, !tbaa !39
  %t268 = load ptr, ptr %l0, !tbaa !29
  %t271 = getelementptr %"compiler/ast:Param", ptr %t266, i32 0, i32 2
  %t272 = load ptr, ptr %t271, !tbaa !29
  call void @compiler_2fnames_2ecompiler_2fnames_3aResolver_2etypeRef(ptr %v0, ptr %v1, ptr %t268, ptr %t272)
  br label %bb63
bb63:
  br label %bb64
bb64:
  %t275 = load i64, ptr %l28, !tbaa !24
  %t277 = add i64 %t275, 1
  store i64 %t277, ptr %l28, !tbaa !24
  br label %bb59
bb65:
  br label %bb66
bb66:
  %t279 = load i64, ptr %l24, !tbaa !24
  %t281 = add i64 %t279, 1
  store i64 %t281, ptr %l24, !tbaa !24
  br label %bb55
bb67:
  br label %bb128
bb68:
  %t283 = load ptr, ptr %l1, !tbaa !29
  store ptr %t283, ptr %l168, !tbaa !29
  store i1 false, ptr %l169, !tbaa !21
  %t284 = load ptr, ptr %l168, !tbaa !29
  %t285 = icmp ne ptr %t284, null
  br i1 %t285, label %bb69, label %bb70
bb69:
  %t287 = load ptr, ptr %l168, !tbaa !29
  %t288 = load i64, ptr %t287, !range !{i64 0, i64 8}
  %t290 = icmp eq i64 %t288, 2
  store i1 %t290, ptr %l169, !tbaa !21
  br label %bb70
bb70:
  %t291 = load i1, ptr %l169, !tbaa !21
  br i1 %t291, label %bb71, label %bb72
bb71:
  %t292 = load ptr, ptr %l1, !tbaa !29
  %t294 = getelementptr { i64, [5 x i64] }, ptr %t292, i32 0, i32 1
  %t295 = getelementptr { %"compiler/source:Span", ptr }, ptr %t294, i32 0, i32 1
  %t296 = load ptr, ptr %t295
  store ptr %t296, ptr %l174, !tbaa !29
  store i1 false, ptr %l175, !tbaa !21
  %t297 = load ptr, ptr %l174, !tbaa !29
  %t298 = icmp ne ptr %t297, null
  br i1 %t298, label %bb73, label %bb74
bb72:
  store i1 false, ptr %l172, !tbaa !21
  br label %bb75
bb73:
  %t300 = load ptr, ptr %l174, !tbaa !29
  %t301 = load i64, ptr %t300, !range !{i64 0, i64 5}
  %t303 = icmp eq i64 %t301, 0
  store i1 %t303, ptr %l175, !tbaa !21
  br label %bb74
bb74:
  %t304 = load i1, ptr %l175, !tbaa !21
  store i1 %t304, ptr %l172, !tbaa !21
  br label %bb75
bb75:
  %t305 = load i1, ptr %l172, !tbaa !21
  br i1 %t305, label %bb76, label %bb77
bb76:
  %t306 = load ptr, ptr %l1, !tbaa !29
  %t308 = getelementptr { i64, [5 x i64] }, ptr %t306, i32 0, i32 1
  %t309 = getelementptr { %"compiler/source:Span", ptr }, ptr %t308, i32 0, i32 1
  %t310 = load ptr, ptr %t309
  %t312 = getelementptr { i64, [6 x i64] }, ptr %t310, i32 0, i32 1
  %t313 = getelementptr { ptr }, ptr %t312, i32 0, i32 0
  %t314 = load ptr, ptr %t313
  store ptr %t314, ptr %l31, !tbaa !29
  br label %bb78
bb77:
  br label %bb86
bb78:
  %t316 = load ptr, ptr %l31, !tbaa !29
  %t318 = getelementptr %"compiler/ast:StructBody", ptr %t316, i32 0, i32 0
  %t319 = load { i64, ptr }, ptr %t318, !tbaa !27
  store { i64, ptr } %t319, ptr %l32, !tbaa !27
  store i64 0, ptr %l33, !tbaa !24
  %t321 = load { i64, ptr }, ptr %l32, !tbaa !27
  %t323 = extractvalue { i64, ptr } %t321, 0
  store i64 %t323, ptr %l34, !tbaa !24
  br label %bb79
bb79:
  %t325 = load i64, ptr %l33, !tbaa !24
  %t326 = load i64, ptr %l34, !tbaa !24
  %t329 = icmp slt i64 %t325, %t326
  %t331 = xor i1 %t329, true
  br i1 %t331, label %bb80, label %bb81
bb80:
  br label %bb85
bb81:
  br label %bb82
bb82:
  %t333 = load { i64, ptr }, ptr %l32, !tbaa !27
  store { i64, ptr } %t333, ptr %l189, !tbaa !27
  %t334 = load i64, ptr %l33, !tbaa !24
  %t336 = getelementptr { i64, ptr }, ptr %l189, i32 0, i32 1
  %t337 = load ptr, ptr %t336, !tbaa !27
  %t338 = getelementptr ptr, ptr %t337, i64 %t334
  %t339 = load ptr, ptr %t338, !tbaa !39
  %t341 = load ptr, ptr %l0, !tbaa !29
  %t344 = getelementptr %"compiler/ast:Param", ptr %t339, i32 0, i32 2
  %t345 = load ptr, ptr %t344, !tbaa !29
  call void @compiler_2fnames_2ecompiler_2fnames_3aResolver_2etypeRef(ptr %v0, ptr %v1, ptr %t341, ptr %t345)
  br label %bb83
bb83:
  br label %bb84
bb84:
  %t348 = load i64, ptr %l33, !tbaa !24
  %t350 = add i64 %t348, 1
  store i64 %t350, ptr %l33, !tbaa !24
  br label %bb79
bb85:
  br label %bb128
bb86:
  %t352 = load ptr, ptr %l1, !tbaa !29
  store ptr %t352, ptr %l197, !tbaa !29
  store i1 false, ptr %l198, !tbaa !21
  %t353 = load ptr, ptr %l197, !tbaa !29
  %t354 = icmp ne ptr %t353, null
  br i1 %t354, label %bb87, label %bb88
bb87:
  %t356 = load ptr, ptr %l197, !tbaa !29
  %t357 = load i64, ptr %t356, !range !{i64 0, i64 8}
  %t359 = icmp eq i64 %t357, 2
  store i1 %t359, ptr %l198, !tbaa !21
  br label %bb88
bb88:
  %t360 = load i1, ptr %l198, !tbaa !21
  br i1 %t360, label %bb89, label %bb90
bb89:
  br label %bb91
bb90:
  br label %bb92
bb91:
  br label %bb128
bb92:
  %t361 = load ptr, ptr %l1, !tbaa !29
  store ptr %t361, ptr %l201, !tbaa !29
  store i1 false, ptr %l202, !tbaa !21
  %t362 = load ptr, ptr %l201, !tbaa !29
  %t363 = icmp ne ptr %t362, null
  br i1 %t363, label %bb93, label %bb94
bb93:
  %t365 = load ptr, ptr %l201, !tbaa !29
  %t366 = load i64, ptr %t365, !range !{i64 0, i64 8}
  %t368 = icmp eq i64 %t366, 3
  store i1 %t368, ptr %l202, !tbaa !21
  br label %bb94
bb94:
  %t369 = load i1, ptr %l202, !tbaa !21
  br i1 %t369, label %bb95, label %bb96
bb95:
  %t370 = load ptr, ptr %l1, !tbaa !29
  %t372 = getelementptr { i64, [5 x i64] }, ptr %t370, i32 0, i32 1
  %t373 = getelementptr { %"compiler/source:Span", ptr, i1, i1 }, ptr %t372, i32 0, i32 1
  %t374 = load ptr, ptr %t373
  store ptr %t374, ptr %l36, !tbaa !29
  br label %bb101
bb96:
  %t376 = load ptr, ptr %l1, !tbaa !29
  store ptr %t376, ptr %l207, !tbaa !29
  store i1 false, ptr %l208, !tbaa !21
  %t377 = load ptr, ptr %l207, !tbaa !29
  %t378 = icmp ne ptr %t377, null
  br i1 %t378, label %bb97, label %bb98
bb97:
  %t380 = load ptr, ptr %l207, !tbaa !29
  %t381 = load i64, ptr %t380, !range !{i64 0, i64 8}
  %t383 = icmp eq i64 %t381, 4
  store i1 %t383, ptr %l208, !tbaa !21
  br label %bb98
bb98:
  %t384 = load i1, ptr %l208, !tbaa !21
  br i1 %t384, label %bb99, label %bb100
bb99:
  %t385 = load ptr, ptr %l1, !tbaa !29
  %t387 = getelementptr { i64, [5 x i64] }, ptr %t385, i32 0, i32 1
  %t388 = getelementptr { %"compiler/source:Span", ptr, i1 }, ptr %t387, i32 0, i32 1
  %t389 = load ptr, ptr %t388
  store ptr %t389, ptr %l36, !tbaa !29
  br label %bb101
bb100:
  br label %bb103
bb101:
  %t391 = load ptr, ptr %l0, !tbaa !29
  %t392 = load ptr, ptr %l36, !tbaa !29
  call void @compiler_2fnames_2ecompiler_2fnames_3aResolver_2etypeRef(ptr %v0, ptr %v1, ptr %t391, ptr %t392)
  br label %bb102
bb102:
  br label %bb128
bb103:
  %t395 = load ptr, ptr %l1, !tbaa !29
  store ptr %t395, ptr %l215, !tbaa !29
  store i1 false, ptr %l216, !tbaa !21
  %t396 = load ptr, ptr %l215, !tbaa !29
  %t397 = icmp ne ptr %t396, null
  br i1 %t397, label %bb104, label %bb105
bb104:
  %t399 = load ptr, ptr %l215, !tbaa !29
  %t400 = load i64, ptr %t399, !range !{i64 0, i64 8}
  %t402 = icmp eq i64 %t400, 5
  store i1 %t402, ptr %l216, !tbaa !21
  br label %bb105
bb105:
  %t403 = load i1, ptr %l216, !tbaa !21
  br i1 %t403, label %bb106, label %bb107
bb106:
  %t404 = load ptr, ptr %l1, !tbaa !29
  %t406 = getelementptr { i64, [5 x i64] }, ptr %t404, i32 0, i32 1
  %t407 = getelementptr { %"compiler/source:Span", ptr }, ptr %t406, i32 0, i32 1
  %t408 = load ptr, ptr %t407
  store ptr %t408, ptr %l37, !tbaa !29
  br label %bb112
bb107:
  %t410 = load ptr, ptr %l1, !tbaa !29
  store ptr %t410, ptr %l221, !tbaa !29
  store i1 false, ptr %l222, !tbaa !21
  %t411 = load ptr, ptr %l221, !tbaa !29
  %t412 = icmp ne ptr %t411, null
  br i1 %t412, label %bb108, label %bb109
bb108:
  %t414 = load ptr, ptr %l221, !tbaa !29
  %t415 = load i64, ptr %t414, !range !{i64 0, i64 8}
  %t417 = icmp eq i64 %t415, 7
  store i1 %t417, ptr %l222, !tbaa !21
  br label %bb109
bb109:
  %t418 = load i1, ptr %l222, !tbaa !21
  br i1 %t418, label %bb110, label %bb111
bb110:
  %t419 = load ptr, ptr %l1, !tbaa !29
  %t421 = getelementptr { i64, [5 x i64] }, ptr %t419, i32 0, i32 1
  %t422 = getelementptr { %"compiler/source:Span", ptr }, ptr %t421, i32 0, i32 1
  %t423 = load ptr, ptr %t422
  store ptr %t423, ptr %l37, !tbaa !29
  br label %bb112
bb111:
  br label %bb114
bb112:
  %t425 = load ptr, ptr %l0, !tbaa !29
  %t426 = load ptr, ptr %l37, !tbaa !29
  call void @compiler_2fnames_2ecompiler_2fnames_3aResolver_2etypeRef(ptr %v0, ptr %v1, ptr %t425, ptr %t426)
  br label %bb113
bb113:
  br label %bb128
bb114:
  %t430 = load ptr, ptr %l1, !tbaa !29
  store ptr %t430, ptr %l230, !tbaa !29
  store i1 false, ptr %l231, !tbaa !21
  %t431 = load ptr, ptr %l230, !tbaa !29
  %t432 = icmp ne ptr %t431, null
  br i1 %t432, label %bb115, label %bb116
bb115:
  %t434 = load ptr, ptr %l230, !tbaa !29
  %t435 = load i64, ptr %t434, !range !{i64 0, i64 8}
  %t437 = icmp eq i64 %t435, 6
  store i1 %t437, ptr %l231, !tbaa !21
  br label %bb116
bb116:
  %t438 = load i1, ptr %l231, !tbaa !21
  br i1 %t438, label %bb117, label %bb118
bb117:
  %t439 = load ptr, ptr %l1, !tbaa !29
  %t441 = getelementptr { i64, [5 x i64] }, ptr %t439, i32 0, i32 1
  %t442 = getelementptr { %"compiler/source:Span", { i64, ptr } }, ptr %t441, i32 0, i32 1
  %t443 = load { i64, ptr }, ptr %t442
  store { i64, ptr } %t443, ptr %l38, !tbaa !27
  br label %bb119
bb118:
  br label %bb127
bb119:
  %t445 = load { i64, ptr }, ptr %l38, !tbaa !27
  store { i64, ptr } %t445, ptr %l39, !tbaa !27
  store i64 0, ptr %l40, !tbaa !24
  %t447 = load { i64, ptr }, ptr %l39, !tbaa !27
  %t449 = extractvalue { i64, ptr } %t447, 0
  store i64 %t449, ptr %l41, !tbaa !24
  br label %bb120
bb120:
  %t451 = load i64, ptr %l40, !tbaa !24
  %t452 = load i64, ptr %l41, !tbaa !24
  %t455 = icmp slt i64 %t451, %t452
  %t457 = xor i1 %t455, true
  br i1 %t457, label %bb121, label %bb122
bb121:
  br label %bb126
bb122:
  br label %bb123
bb123:
  %t459 = load { i64, ptr }, ptr %l39, !tbaa !27
  store { i64, ptr } %t459, ptr %l243, !tbaa !27
  %t460 = load i64, ptr %l40, !tbaa !24
  %t462 = getelementptr { i64, ptr }, ptr %l243, i32 0, i32 1
  %t463 = load ptr, ptr %t462, !tbaa !27
  %t464 = getelementptr ptr, ptr %t463, i64 %t460
  %t465 = load ptr, ptr %t464, !tbaa !39
  %t467 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2fnames_2ecompiler_2fnames_3aResolver_2epath(ptr %v0, ptr %v1, ptr %t467, ptr %t465)
  br label %bb124
bb124:
  br label %bb125
bb125:
  %t472 = load i64, ptr %l40, !tbaa !24
  %t474 = add i64 %t472, 1
  store i64 %t474, ptr %l40, !tbaa !24
  br label %bb120
bb126:
  br label %bb128
bb127:
  call void @__olang_check_failed(ptr @olang_loc_3ee91b253925870d_db61affc9a997151)
  unreachable
bb128:
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2fnames_2ecompiler_2fnames_3aResolver_2eunknownInCond(ptr %v0, ptr %a0, %"compiler/source:Span" %a1, i32 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca i32
  %l3 = alloca i32
  %l4 = alloca { i64, ptr }
  %l5 = alloca ptr
  %l6 = alloca i64
  %l7 = alloca %"std/pair:Pair.ee791c76fa337c2e45b252e8964cf3ed"
  %l13 = alloca ptr
  %l17 = alloca i1
  %l20 = alloca { i64, ptr }
  %l23 = alloca i1
  %l24 = alloca i1
  %l27 = alloca i1
  %l30 = alloca i64
  %l32 = alloca i64
  %l37 = alloca %"std/pair:Pair.ee791c76fa337c2e45b252e8964cf3ed"
  %l41 = alloca i1
  %l49 = alloca ptr
  %l53 = alloca %"std/pair:Pair.ee791c76fa337c2e45b252e8964cf3ed"
  %l56 = alloca ptr
  %l61 = alloca { i64, [3 x i64] }
  %l64 = alloca { i64, ptr }
  %l67 = alloca %"compiler/diagmsg:Msg"
  %l68 = alloca i64
  %s0 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store i32 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load i32, ptr %l2, !tbaa !23
  store i32 %t1, ptr %l3, !tbaa !23
  %t3 = load ptr, ptr %l0, !tbaa !29
  %t5 = getelementptr %"compiler/names:Resolver", ptr %t3, i32 0, i32 1
  %t6 = load ptr, ptr %l0, !tbaa !29
  %t8 = getelementptr %"compiler/names:Resolver", ptr %t6, i32 0, i32 6
  %t9 = load i64, ptr %t8, !tbaa !24
  %t12 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fnames_3aTable_26_3e_2_Hc2ccbbc5952c057a60f016e9cc1626d2(ptr %v0, ptr %v0, ptr %t5, i64 %t9)
  store ptr %t12, ptr %l13
  br label %bb1
bb1:
  %t13 = load ptr, ptr %l13, !tbaa !29
  %t15 = getelementptr %"compiler/names:Table", ptr %t13, i32 0, i32 4
  %t16 = load i32, ptr %l3, !tbaa !23
  %t19 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fsource_3aNameId_2c_20Bool_3_H8da9376267bda3f76393292be0e507b2(ptr %v0, ptr %t15, i32 %t16)
  store i1 %t19, ptr %l17
  br label %bb2
bb2:
  %t20 = load i1, ptr %l17, !tbaa !21
  br i1 %t20, label %bb3, label %bb4
bb3:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb4:
  br label %bb5
bb5:
  %t21 = load ptr, ptr %l0, !tbaa !29
  %t22 = load i32, ptr %l2, !tbaa !23
  %t25 = call { i64, ptr } @compiler_2fnames_2ecompiler_2fnames_3aResolver_2etext(ptr %v0, ptr %v0, ptr %t21, i32 %t22)
  store { i64, ptr } %t25, ptr %l20
  br label %bb6
bb6:
  %t26 = load { i64, ptr }, ptr %l20, !tbaa !27
  store { i64, ptr } %t26, ptr %l4, !tbaa !27
  %t27 = load ptr, ptr %l0, !tbaa !29
  %t28 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t31 = call i1 @compiler_2fnames_2ecompiler_2fnames_3aResolver_2esuggests(ptr %v0, ptr %v0, ptr %t27, { i64, ptr } %t28)
  store i1 %t31, ptr %l23
  br label %bb7
bb7:
  %t32 = load i1, ptr %l23, !tbaa !21
  br i1 %t32, label %bb8, label %bb9
bb8:
  store i1 true, ptr %l24, !tbaa !21
  br label %bb11
bb9:
  %t33 = load ptr, ptr %l0, !tbaa !29
  %t34 = load i32, ptr %l2, !tbaa !23
  %t37 = call i1 @compiler_2fnames_2ecompiler_2fnames_3aResolver_2eimportedType(ptr %v0, ptr %t33, i32 %t34)
  store i1 %t37, ptr %l27
  br label %bb10
bb10:
  %t38 = load i1, ptr %l27, !tbaa !21
  store i1 %t38, ptr %l24, !tbaa !21
  br label %bb11
bb11:
  %t39 = load i1, ptr %l24, !tbaa !21
  br i1 %t39, label %bb12, label %bb13
bb12:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb13:
  br label %bb14
bb14:
  %t40 = load ptr, ptr %l0, !tbaa !29
  %t42 = getelementptr %"compiler/names:Resolver", ptr %t40, i32 0, i32 15
  store ptr %t42, ptr %l5, !tbaa !29
  store i64 0, ptr %l6, !tbaa !24
  br label %bb15
bb15:
  %t44 = load i64, ptr %l6, !tbaa !24
  store i64 %t44, ptr %l30, !tbaa !24
  %t45 = load ptr, ptr %l5, !tbaa !29
  %t47 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fpair_3aPair_3ccompiler_2fsource__H04f1a4a88576bd1070c12151a5c28d38(ptr %v0, ptr %t45)
  store i64 %t47, ptr %l32
  br label %bb16
bb16:
  %t48 = load i64, ptr %l30, !tbaa !24
  %t49 = load i64, ptr %l32, !tbaa !24
  %t50 = icmp slt i64 %t48, %t49
  %t52 = xor i1 %t50, true
  br i1 %t52, label %bb17, label %bb18
bb17:
  br label %bb28
bb18:
  br label %bb19
bb19:
  %t54 = load ptr, ptr %l5, !tbaa !29
  %t55 = load i64, ptr %l6, !tbaa !24
  %t58 = call %"std/pair:Pair.ee791c76fa337c2e45b252e8964cf3ed" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fpair_3aPair_3ccompiler_2fsource__Hd32f6fdf378a1d4c0e47f8552643012d(ptr %v0, ptr %t54, i64 %t55)
  store %"std/pair:Pair.ee791c76fa337c2e45b252e8964cf3ed" %t58, ptr %l37
  br label %bb20
bb20:
  %t59 = load %"std/pair:Pair.ee791c76fa337c2e45b252e8964cf3ed", ptr %l37
  store %"std/pair:Pair.ee791c76fa337c2e45b252e8964cf3ed" %t59, ptr %l7
  %t60 = getelementptr %"std/pair:Pair.ee791c76fa337c2e45b252e8964cf3ed", ptr %l7, i32 0, i32 0
  %t61 = load i32, ptr %t60, !tbaa !23
  %t62 = load i32, ptr %l2, !tbaa !23
  %t65 = icmp eq i32 %t61, %t62
  br i1 %t65, label %bb21, label %bb22
bb21:
  %t67 = getelementptr %"std/pair:Pair.ee791c76fa337c2e45b252e8964cf3ed", ptr %l7, i32 0, i32 1
  %t68 = load i64, ptr %t67, !tbaa !24
  %t69 = load ptr, ptr %l0, !tbaa !29
  %t71 = getelementptr %"compiler/names:Resolver", ptr %t69, i32 0, i32 14
  %t72 = load i64, ptr %t71, !tbaa !24
  %t75 = icmp eq i64 %t68, %t72
  store i1 %t75, ptr %l41, !tbaa !21
  br label %bb23
bb22:
  store i1 false, ptr %l41, !tbaa !21
  br label %bb23
bb23:
  %t77 = load i1, ptr %l41, !tbaa !21
  br i1 %t77, label %bb24, label %bb25
bb24:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb25:
  br label %bb26
bb26:
  br label %bb27
bb27:
  %t78 = load i64, ptr %l6, !tbaa !24
  %t80 = add i64 %t78, 1
  store i64 %t80, ptr %l6, !tbaa !24
  br label %bb15
bb28:
  %t82 = load ptr, ptr %l0, !tbaa !29
  %t84 = getelementptr %"compiler/names:Resolver", ptr %t82, i32 0, i32 15
  store ptr %t84, ptr %l49, !tbaa !29
  %t85 = load i32, ptr %l2, !tbaa !23
  %t86 = load ptr, ptr %l0, !tbaa !29
  %t88 = getelementptr %"compiler/names:Resolver", ptr %t86, i32 0, i32 14
  %t89 = load i64, ptr %t88, !tbaa !24
  %t92 = call %"std/pair:Pair.ee791c76fa337c2e45b252e8964cf3ed" @std_2fpair_3aPair_3ccompiler_2fsource_3aNameId_2c_20I64_3e_2ector(ptr %s0, i32 %t85, i64 %t89)
  store %"std/pair:Pair.ee791c76fa337c2e45b252e8964cf3ed" %t92, ptr %l53
  br label %bb29
bb29:
  %t93 = load ptr, ptr %l49, !tbaa !29
  %t94 = load %"std/pair:Pair.ee791c76fa337c2e45b252e8964cf3ed", ptr %l53
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fpair_3aPair_3ccompiler_2fsource__H6d3eea1e3a905a651c612011755d5d17(ptr %v0, ptr %t93, %"std/pair:Pair.ee791c76fa337c2e45b252e8964cf3ed" %t94)
  br label %bb30
bb30:
  %t95 = load ptr, ptr %l0, !tbaa !29
  %t97 = getelementptr %"compiler/names:Resolver", ptr %t95, i32 0, i32 0
  %t98 = load ptr, ptr %t97, !tbaa !29
  %t100 = getelementptr %"compiler/load:Loader", ptr %t98, i32 0, i32 4
  %t101 = load ptr, ptr %t100, !tbaa !29
  store ptr %t101, ptr %l56, !tbaa !29
  %t102 = load ptr, ptr %l0, !tbaa !29
  %t103 = load ptr, ptr %l0, !tbaa !29
  %t105 = getelementptr %"compiler/names:Resolver", ptr %t103, i32 0, i32 6
  %t106 = load i64, ptr %t105, !tbaa !24
  %t111 = call { i64, [3 x i64] } @compiler_2fnames_2ecompiler_2fnames_3aResolver_2eat(ptr %v0, ptr %t102, i64 %t106, %"compiler/source:Span" %a1)
  store { i64, [3 x i64] } %t111, ptr %l61
  br label %bb31
bb31:
  %t112 = load ptr, ptr %l0, !tbaa !29
  %t113 = load i32, ptr %l2, !tbaa !23
  %t116 = call { i64, ptr } @compiler_2fnames_2ecompiler_2fnames_3aResolver_2etok(ptr %v0, ptr %s0, ptr %t112, i32 %t113)
  store { i64, ptr } %t116, ptr %l64
  br label %bb32
bb32:
  %t117 = load { i64, ptr }, ptr %l64, !tbaa !27
  %t118 = extractvalue { i64, ptr } %t117, 0
  %t119 = extractvalue { i64, ptr } %t117, 1
  %t120 = mul i64 %t118, 1
  %t121 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t120)
  call void @llvm.memcpy.p0.p0.i64(ptr %t121, ptr %t119, i64 %t120, i1 false)
  %t122 = insertvalue { i64, ptr } undef, i64 %t118, 0
  %t123 = insertvalue { i64, ptr } %t122, ptr %t121, 1
  %t124 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t127 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eUnknownBuildName(ptr %s0, ptr %v0, ptr %s0, { i64, ptr } %t123, { i64, ptr } %t124)
  store %"compiler/diagmsg:Msg" %t127, ptr %l67
  br label %bb33
bb33:
  %t128 = load ptr, ptr %l56, !tbaa !29
  %t129 = load { i64, [3 x i64] }, ptr %l61
  %t130 = load %"compiler/diagmsg:Msg", ptr %l67
  %t131 = call i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eError(ptr %v0, ptr %s0, ptr %t128, { i64, [3 x i64] } %t129, %"compiler/diagmsg:Msg" %t130)
  store i64 %t131, ptr %l68
  br label %bb34
bb34:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2fnames_2ecompiler_2fnames_3aResolver_2evarDecl(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca { i64, ptr }
  %l3 = alloca i64
  %l4 = alloca i64
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
  %l32 = alloca { i64, ptr }
  %l42 = alloca i1
  %l46 = alloca i1
  %l51 = alloca i1
  %l61 = alloca i64
  %l64 = alloca i64
  %l86 = alloca { i64, ptr }
  %l90 = alloca { i64, ptr }
  %l95 = alloca { i64, ptr }
  %l99 = alloca { i64, ptr }
  %l107 = alloca i1
  %l123 = alloca { i64, ptr }
  %l130 = alloca i1
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l1, !tbaa !29
  %t3 = getelementptr %"compiler/ast:VarDecl", ptr %t1, i32 0, i32 2
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t6 = icmp eq ptr %t4, null
  %t8 = xor i1 %t6, true
  br i1 %t8, label %bb1, label %bb2
bb1:
  %t10 = load ptr, ptr %l0, !tbaa !29
  %t11 = load ptr, ptr %l1, !tbaa !29
  %t13 = getelementptr %"compiler/ast:VarDecl", ptr %t11, i32 0, i32 2
  %t14 = load ptr, ptr %t13, !tbaa !29
  call void @compiler_2fnames_2ecompiler_2fnames_3aResolver_2etypeRef(ptr %v0, ptr %v1, ptr %t10, ptr %t14)
  br label %bb3
bb2:
  br label %bb4
bb3:
  br label %bb4
bb4:
  %t17 = load ptr, ptr %l1, !tbaa !29
  %t19 = getelementptr %"compiler/ast:VarDecl", ptr %t17, i32 0, i32 3
  %t20 = load { i64, ptr }, ptr %t19, !tbaa !27
  store { i64, ptr } %t20, ptr %l2, !tbaa !27
  store i64 0, ptr %l3, !tbaa !24
  %t22 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t24 = extractvalue { i64, ptr } %t22, 0
  store i64 %t24, ptr %l4, !tbaa !24
  br label %bb5
bb5:
  %t26 = load i64, ptr %l3, !tbaa !24
  %t27 = load i64, ptr %l4, !tbaa !24
  %t30 = icmp slt i64 %t26, %t27
  %t32 = xor i1 %t30, true
  br i1 %t32, label %bb6, label %bb7
bb6:
  br label %bb11
bb7:
  br label %bb8
bb8:
  %t34 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t34, ptr %l32, !tbaa !27
  %t35 = load i64, ptr %l3, !tbaa !24
  %t37 = getelementptr { i64, ptr }, ptr %l32, i32 0, i32 1
  %t38 = load ptr, ptr %t37, !tbaa !27
  %t39 = getelementptr ptr, ptr %t38, i64 %t35
  %t40 = load ptr, ptr %t39, !tbaa !39
  %t42 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2fnames_2ecompiler_2fnames_3aResolver_2eexpr(ptr %v0, ptr %v1, ptr %t42, ptr %t40)
  br label %bb9
bb9:
  br label %bb10
bb10:
  %t47 = load i64, ptr %l3, !tbaa !24
  %t49 = add i64 %t47, 1
  store i64 %t49, ptr %l3, !tbaa !24
  br label %bb5
bb11:
  %t51 = load ptr, ptr %l1, !tbaa !29
  %t53 = getelementptr %"compiler/ast:VarDecl", ptr %t51, i32 0, i32 5
  %t54 = load i1, ptr %t53, !tbaa !21
  br i1 %t54, label %bb12, label %bb13
bb12:
  %t56 = load ptr, ptr %l1, !tbaa !29
  %t58 = getelementptr %"compiler/ast:VarDecl", ptr %t56, i32 0, i32 2
  %t59 = load ptr, ptr %t58, !tbaa !29
  %t61 = icmp eq ptr %t59, null
  store i1 %t61, ptr %l42, !tbaa !21
  br label %bb14
bb13:
  store i1 false, ptr %l42, !tbaa !21
  br label %bb14
bb14:
  %t63 = load i1, ptr %l42, !tbaa !21
  br i1 %t63, label %bb15, label %bb16
bb15:
  %t64 = load ptr, ptr %l1, !tbaa !29
  %t66 = getelementptr %"compiler/ast:VarDecl", ptr %t64, i32 0, i32 3
  %t67 = load { i64, ptr }, ptr %t66, !tbaa !27
  %t69 = extractvalue { i64, ptr } %t67, 0
  %t71 = icmp eq i64 %t69, 0
  store i1 %t71, ptr %l46, !tbaa !21
  br label %bb17
bb16:
  store i1 false, ptr %l46, !tbaa !21
  br label %bb17
bb17:
  %t73 = load i1, ptr %l46, !tbaa !21
  br i1 %t73, label %bb18, label %bb19
bb18:
  %t74 = load ptr, ptr %l1, !tbaa !29
  %t76 = getelementptr %"compiler/ast:VarDecl", ptr %t74, i32 0, i32 4
  %t77 = load i1, ptr %t76, !tbaa !21
  %t79 = xor i1 %t77, true
  store i1 %t79, ptr %l51, !tbaa !21
  br label %bb20
bb19:
  store i1 false, ptr %l51, !tbaa !21
  br label %bb20
bb20:
  %t81 = load i1, ptr %l51, !tbaa !21
  br i1 %t81, label %bb21, label %bb22
bb21:
  br label %ret
bb22:
  br label %bb23
bb23:
  store i64 0, ptr %l6, !tbaa !24
  %t82 = load ptr, ptr %l1, !tbaa !29
  %t84 = getelementptr %"compiler/ast:VarDecl", ptr %t82, i32 0, i32 0
  %t85 = load { i64, ptr }, ptr %t84, !tbaa !27
  %t87 = extractvalue { i64, ptr } %t85, 0
  store i64 %t87, ptr %l7, !tbaa !24
  store i64 1, ptr %l8, !tbaa !24
  %t89 = load i64, ptr %l7, !tbaa !24
  %t90 = load i64, ptr %l6, !tbaa !24
  %t93 = icmp sgt i64 %t89, %t90
  br i1 %t93, label %bb24, label %bb25
bb24:
  %t95 = load i64, ptr %l8, !tbaa !24
  %t97 = icmp sgt i64 %t95, 0
  br i1 %t97, label %bb26, label %bb27
bb25:
  store i64 0, ptr %l61, !tbaa !24
  br label %bb29
bb26:
  %t99 = load i64, ptr %l7, !tbaa !24
  %t100 = load i64, ptr %l6, !tbaa !24
  %t103 = sub i64 %t99, %t100
  %t104 = load i64, ptr %l8, !tbaa !24
  %t107 = add i64 %t103, %t104
  %t109 = sub i64 %t107, 1
  %t110 = load i64, ptr %l8, !tbaa !24
  %t113 = sdiv i64 %t109, %t110
  store i64 %t113, ptr %l64, !tbaa !24
  br label %bb28
bb27:
  store i64 0, ptr %l64, !tbaa !24
  br label %bb28
bb28:
  %t115 = load i64, ptr %l64, !tbaa !24
  store i64 %t115, ptr %l61, !tbaa !24
  br label %bb29
bb29:
  %t116 = load i64, ptr %l61, !tbaa !24
  store i64 %t116, ptr %l9, !tbaa !24
  store i64 0, ptr %l10, !tbaa !24
  br label %bb30
bb30:
  %t117 = load i64, ptr %l10, !tbaa !24
  %t118 = load i64, ptr %l9, !tbaa !24
  %t121 = icmp slt i64 %t117, %t118
  %t123 = xor i1 %t121, true
  br i1 %t123, label %bb31, label %bb32
bb31:
  br label %bb40
bb32:
  br label %bb33
bb33:
  %t125 = load i64, ptr %l6, !tbaa !24
  %t126 = load i64, ptr %l10, !tbaa !24
  %t127 = load i64, ptr %l8, !tbaa !24
  %t130 = mul i64 %t126, %t127
  %t133 = add i64 %t125, %t130
  store i64 %t133, ptr %l11, !tbaa !24
  %t135 = load ptr, ptr %l1, !tbaa !29
  %t137 = getelementptr %"compiler/ast:VarDecl", ptr %t135, i32 0, i32 5
  %t138 = load i1, ptr %t137, !tbaa !21
  br i1 %t138, label %bb34, label %bb35
bb34:
  %t140 = load ptr, ptr %l0, !tbaa !29
  %t141 = load ptr, ptr %l1, !tbaa !29
  %t143 = getelementptr %"compiler/ast:VarDecl", ptr %t141, i32 0, i32 0
  %t144 = load { i64, ptr }, ptr %t143, !tbaa !27
  store { i64, ptr } %t144, ptr %l86, !tbaa !27
  %t145 = load i64, ptr %l11, !tbaa !24
  %t147 = getelementptr { i64, ptr }, ptr %l86, i32 0, i32 1
  %t148 = load ptr, ptr %t147, !tbaa !27
  %t149 = getelementptr i32, ptr %t148, i64 %t145
  %t150 = load i32, ptr %t149, !tbaa !33
  %t151 = load ptr, ptr %l1, !tbaa !29
  %t153 = getelementptr %"compiler/ast:VarDecl", ptr %t151, i32 0, i32 1
  %t154 = load { i64, ptr }, ptr %t153, !tbaa !27
  store { i64, ptr } %t154, ptr %l90, !tbaa !27
  %t155 = load i64, ptr %l11, !tbaa !24
  %t157 = getelementptr { i64, ptr }, ptr %l90, i32 0, i32 1
  %t158 = load ptr, ptr %t157, !tbaa !27
  %t159 = getelementptr %"compiler/source:Span", ptr %t158, i64 %t155
  %t160 = load %"compiler/source:Span", ptr %t159
  call void @compiler_2fnames_2ecompiler_2fnames_3aResolver_2edeclare(ptr %v0, ptr %t140, i32 %t150, %"compiler/source:Span" %t160, i1 true)
  br label %bb36
bb35:
  %t164 = load ptr, ptr %l0, !tbaa !29
  %t165 = load ptr, ptr %l1, !tbaa !29
  %t167 = getelementptr %"compiler/ast:VarDecl", ptr %t165, i32 0, i32 0
  %t168 = load { i64, ptr }, ptr %t167, !tbaa !27
  store { i64, ptr } %t168, ptr %l95, !tbaa !27
  %t169 = load i64, ptr %l11, !tbaa !24
  %t171 = getelementptr { i64, ptr }, ptr %l95, i32 0, i32 1
  %t172 = load ptr, ptr %t171, !tbaa !27
  %t173 = getelementptr i32, ptr %t172, i64 %t169
  %t174 = load i32, ptr %t173, !tbaa !33
  %t175 = load ptr, ptr %l1, !tbaa !29
  %t177 = getelementptr %"compiler/ast:VarDecl", ptr %t175, i32 0, i32 1
  %t178 = load { i64, ptr }, ptr %t177, !tbaa !27
  store { i64, ptr } %t178, ptr %l99, !tbaa !27
  %t179 = load i64, ptr %l11, !tbaa !24
  %t181 = getelementptr { i64, ptr }, ptr %l99, i32 0, i32 1
  %t182 = load ptr, ptr %t181, !tbaa !27
  %t183 = getelementptr %"compiler/source:Span", ptr %t182, i64 %t179
  %t184 = load %"compiler/source:Span", ptr %t183
  call void @compiler_2fnames_2ecompiler_2fnames_3aResolver_2edeclareRead(ptr %v0, ptr %t164, i32 %t174, %"compiler/source:Span" %t184, i1 false)
  br label %bb37
bb36:
  br label %bb38
bb37:
  br label %bb38
bb38:
  br label %bb39
bb39:
  %t188 = load i64, ptr %l10, !tbaa !24
  %t190 = add i64 %t188, 1
  store i64 %t190, ptr %l10, !tbaa !24
  br label %bb30
bb40:
  %t192 = load ptr, ptr %l1, !tbaa !29
  %t194 = getelementptr %"compiler/ast:VarDecl", ptr %t192, i32 0, i32 5
  %t195 = load i1, ptr %t194, !tbaa !21
  %t197 = xor i1 %t195, true
  br i1 %t197, label %bb41, label %bb42
bb41:
  %t199 = load ptr, ptr %l1, !tbaa !29
  %t201 = getelementptr %"compiler/ast:VarDecl", ptr %t199, i32 0, i32 3
  %t202 = load { i64, ptr }, ptr %t201, !tbaa !27
  %t204 = extractvalue { i64, ptr } %t202, 0
  %t205 = load ptr, ptr %l1, !tbaa !29
  %t207 = getelementptr %"compiler/ast:VarDecl", ptr %t205, i32 0, i32 0
  %t208 = load { i64, ptr }, ptr %t207, !tbaa !27
  %t210 = extractvalue { i64, ptr } %t208, 0
  %t213 = icmp eq i64 %t204, %t210
  store i1 %t213, ptr %l107, !tbaa !21
  br label %bb43
bb42:
  store i1 false, ptr %l107, !tbaa !21
  br label %bb43
bb43:
  %t215 = load i1, ptr %l107, !tbaa !21
  br i1 %t215, label %bb44, label %bb45
bb44:
  %t216 = load ptr, ptr %l1, !tbaa !29
  %t218 = getelementptr %"compiler/ast:VarDecl", ptr %t216, i32 0, i32 0
  %t219 = load { i64, ptr }, ptr %t218, !tbaa !27
  store { i64, ptr } %t219, ptr %l12, !tbaa !27
  store i64 0, ptr %l13, !tbaa !24
  %t221 = load { i64, ptr }, ptr %l12, !tbaa !27
  %t223 = extractvalue { i64, ptr } %t221, 0
  store i64 %t223, ptr %l14, !tbaa !24
  br label %bb46
bb45:
  br label %bb57
bb46:
  %t225 = load i64, ptr %l13, !tbaa !24
  %t226 = load i64, ptr %l14, !tbaa !24
  %t229 = icmp slt i64 %t225, %t226
  %t231 = xor i1 %t229, true
  br i1 %t231, label %bb47, label %bb48
bb47:
  br label %bb56
bb48:
  br label %bb49
bb49:
  %t233 = load { i64, ptr }, ptr %l12, !tbaa !27
  store { i64, ptr } %t233, ptr %l123, !tbaa !27
  %t234 = load i64, ptr %l13, !tbaa !24
  %t236 = getelementptr { i64, ptr }, ptr %l123, i32 0, i32 1
  %t237 = load ptr, ptr %t236, !tbaa !27
  %t238 = getelementptr i32, ptr %t237, i64 %t234
  %t239 = load i32, ptr %t238, !tbaa !33
  store i32 %t239, ptr %l15, !tbaa !23
  %t241 = load i32, ptr %l15, !tbaa !23
  %t243 = load ptr, ptr %l0, !tbaa !29
  %t245 = getelementptr %"compiler/names:Resolver", ptr %t243, i32 0, i32 11
  %t249 = call i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aNameId_3e_2eHas_3ccompiler_2fsource_3aNameId_3e(ptr %v0, ptr %t245, i32 %t241)
  store i1 %t249, ptr %l130
  br label %bb50
bb50:
  %t250 = load i1, ptr %l130, !tbaa !21
  %t251 = xor i1 %t250, true
  br i1 %t251, label %bb51, label %bb52
bb51:
  %t253 = load ptr, ptr %l0, !tbaa !29
  %t255 = getelementptr %"compiler/names:Resolver", ptr %t253, i32 0, i32 11
  %t256 = load i32, ptr %l15, !tbaa !23
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aNameId_3e_2ePush_3ccompiler_2fsource_3aNameId_3e(ptr %v0, ptr %t255, i32 %t256)
  br label %bb53
bb52:
  br label %bb54
bb53:
  br label %bb54
bb54:
  br label %bb55
bb55:
  %t259 = load i64, ptr %l13, !tbaa !24
  %t261 = add i64 %t259, 1
  store i64 %t261, ptr %l13, !tbaa !24
  br label %bb46
bb56:
  br label %bb57
bb57:
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2fnames_2ecompiler_2fnames_3aResolver_2ewaitAside(ptr %v0, ptr %v1, ptr %a0, i64 %a1, ptr %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca ptr
  %l3 = alloca ptr
  %l4 = alloca i64
  %l14 = alloca ptr
  %l15 = alloca i64
  %l25 = alloca ptr
  %l26 = alloca i64
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  store ptr %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1, ptr %l3, !tbaa !29
  %t2 = load i64, ptr %l1, !tbaa !24
  store i64 %t2, ptr %l4, !tbaa !24
  %t3 = load ptr, ptr %l2, !tbaa !29
  %t5 = getelementptr %"compiler/ast:TopIf", ptr %t3, i32 0, i32 1
  %t6 = load ptr, ptr %t5, !tbaa !29
  %t8 = icmp eq ptr %t6, null
  br i1 %t8, label %bb1, label %bb2
bb1:
  call void @__olang_check_failed(ptr @olang_loc_c24d94d368b768d0_dc6a7a3b6fd73c94)
  unreachable
bb2:
  br label %bb3
bb3:
  %t10 = load ptr, ptr %l2, !tbaa !29
  %t12 = getelementptr %"compiler/ast:TopIf", ptr %t10, i32 0, i32 1
  %t13 = load ptr, ptr %t12, !tbaa !29
  %t14 = load ptr, ptr %l3, !tbaa !29
  %t15 = load i64, ptr %l4, !tbaa !24
  call void @compiler_2fnames_2ecompiler_2fnames_3aResolver_2ewaitBranch(ptr %v0, ptr %v1, ptr %t14, i64 %t15, ptr %t13)
  br label %bb4
bb4:
  %t17 = load ptr, ptr %l2, !tbaa !29
  %t19 = getelementptr %"compiler/ast:TopIf", ptr %t17, i32 0, i32 2
  %t20 = load ptr, ptr %t19, !tbaa !29
  %t22 = icmp eq ptr %t20, null
  %t24 = xor i1 %t22, true
  br i1 %t24, label %bb5, label %bb6
bb5:
  %t26 = load ptr, ptr %l0, !tbaa !29
  store ptr %t26, ptr %l14, !tbaa !29
  %t27 = load i64, ptr %l1, !tbaa !24
  store i64 %t27, ptr %l15, !tbaa !24
  %t28 = load ptr, ptr %l2, !tbaa !29
  %t30 = getelementptr %"compiler/ast:TopIf", ptr %t28, i32 0, i32 2
  %t31 = load ptr, ptr %t30, !tbaa !29
  %t33 = icmp eq ptr %t31, null
  br i1 %t33, label %bb7, label %bb8
bb6:
  br label %bb11
bb7:
  call void @__olang_check_failed(ptr @olang_loc_93653db47984ae2f_98605133537f87a3)
  unreachable
bb8:
  br label %bb9
bb9:
  %t35 = load ptr, ptr %l2, !tbaa !29
  %t37 = getelementptr %"compiler/ast:TopIf", ptr %t35, i32 0, i32 2
  %t38 = load ptr, ptr %t37, !tbaa !29
  %t39 = load ptr, ptr %l14, !tbaa !29
  %t40 = load i64, ptr %l15, !tbaa !24
  call void @compiler_2fnames_2ecompiler_2fnames_3aResolver_2ewaitAside(ptr %v0, ptr %v1, ptr %t39, i64 %t40, ptr %t38)
  br label %bb10
bb10:
  br label %bb11
bb11:
  %t42 = load ptr, ptr %l2, !tbaa !29
  %t44 = getelementptr %"compiler/ast:TopIf", ptr %t42, i32 0, i32 3
  %t45 = load ptr, ptr %t44, !tbaa !29
  %t47 = icmp eq ptr %t45, null
  %t49 = xor i1 %t47, true
  br i1 %t49, label %bb12, label %bb13
bb12:
  %t51 = load ptr, ptr %l0, !tbaa !29
  store ptr %t51, ptr %l25, !tbaa !29
  %t52 = load i64, ptr %l1, !tbaa !24
  store i64 %t52, ptr %l26, !tbaa !24
  %t53 = load ptr, ptr %l2, !tbaa !29
  %t55 = getelementptr %"compiler/ast:TopIf", ptr %t53, i32 0, i32 3
  %t56 = load ptr, ptr %t55, !tbaa !29
  %t58 = icmp eq ptr %t56, null
  br i1 %t58, label %bb14, label %bb15
bb13:
  br label %bb18
bb14:
  call void @__olang_check_failed(ptr @olang_loc_b66f44eae599aa7e_d468abe9cc136322)
  unreachable
bb15:
  br label %bb16
bb16:
  %t60 = load ptr, ptr %l2, !tbaa !29
  %t62 = getelementptr %"compiler/ast:TopIf", ptr %t60, i32 0, i32 3
  %t63 = load ptr, ptr %t62, !tbaa !29
  %t64 = load ptr, ptr %l25, !tbaa !29
  %t65 = load i64, ptr %l26, !tbaa !24
  call void @compiler_2fnames_2ecompiler_2fnames_3aResolver_2ewaitBranch(ptr %v0, ptr %v1, ptr %t64, i64 %t65, ptr %t63)
  br label %bb17
bb17:
  br label %bb18
bb18:
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2fnames_2ecompiler_2fnames_3aResolver_2ewaitBranch(ptr %v0, ptr %v1, ptr %a0, i64 %a1, ptr %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca ptr
  %l3 = alloca ptr
  %l4 = alloca { i64, ptr }
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca ptr
  %l8 = alloca ptr
  %l9 = alloca ptr
  %l10 = alloca ptr
  %l11 = alloca i32
  %l12 = alloca ptr
  %l13 = alloca { i64, ptr }
  %l14 = alloca i64
  %l15 = alloca i64
  %l17 = alloca { i64, ptr }
  %l18 = alloca { i64, ptr }
  %l19 = alloca i64
  %l20 = alloca i64
  %l22 = alloca i32
  %l23 = alloca i32
  %l24 = alloca %"compiler/source:Span"
  %l25 = alloca i32
  %l26 = alloca ptr
  %l35 = alloca ptr
  %l44 = alloca { i64, ptr }
  %l47 = alloca ptr
  %l48 = alloca i1
  %l56 = alloca ptr
  %l57 = alloca i1
  %l62 = alloca ptr
  %l63 = alloca i1
  %l72 = alloca ptr
  %l73 = alloca i1
  %l82 = alloca ptr
  %l83 = alloca i1
  %l91 = alloca ptr
  %l92 = alloca i1
  %l105 = alloca { i64, ptr }
  %l113 = alloca ptr
  %l114 = alloca i1
  %l126 = alloca { i64, ptr }
  %l130 = alloca i32
  %l138 = alloca ptr
  %l139 = alloca i1
  %l153 = alloca ptr
  %l160 = alloca { i64, ptr }
  %l162 = alloca i64
  %l164 = alloca i64
  %l165 = alloca i64
  %l170 = alloca { i64, ptr }
  %l173 = alloca ptr
  %l175 = alloca { i64, ptr }
  %l176 = alloca i32
  %s18 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  store ptr %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l2, !tbaa !29
  %t3 = getelementptr %"compiler/ast:TopBranch", ptr %t1, i32 0, i32 1
  %t4 = load { i64, ptr }, ptr %t3, !tbaa !27
  %t6 = extractvalue { i64, ptr } %t4, 0
  %t8 = icmp eq i64 %t6, 0
  br i1 %t8, label %bb1, label %bb2
bb1:
  br label %ret
bb2:
  br label %bb3
bb3:
  %t10 = load ptr, ptr %l0, !tbaa !29
  %t12 = getelementptr %"compiler/names:Resolver", ptr %t10, i32 0, i32 1
  %t13 = load i64, ptr %l1, !tbaa !24
  %t16 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fnames_3aTable_26_3e_2_Hc2ccbbc5952c057a60f016e9cc1626d2(ptr %v0, ptr %v0, ptr %t12, i64 %t13)
  store ptr %t16, ptr %l35
  br label %bb4
bb4:
  %t17 = load ptr, ptr %l35, !tbaa !29
  store ptr %t17, ptr %l3, !tbaa !29
  %t18 = load ptr, ptr %l2, !tbaa !29
  %t20 = getelementptr %"compiler/ast:TopBranch", ptr %t18, i32 0, i32 1
  %t21 = load { i64, ptr }, ptr %t20, !tbaa !27
  store { i64, ptr } %t21, ptr %l4, !tbaa !27
  store i64 0, ptr %l5, !tbaa !24
  %t23 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t25 = extractvalue { i64, ptr } %t23, 0
  store i64 %t25, ptr %l6, !tbaa !24
  br label %bb5
bb5:
  %t27 = load i64, ptr %l5, !tbaa !24
  %t28 = load i64, ptr %l6, !tbaa !24
  %t31 = icmp slt i64 %t27, %t28
  %t33 = xor i1 %t31, true
  br i1 %t33, label %bb6, label %bb7
bb6:
  br label %bb100
bb7:
  br label %bb8
bb8:
  %t35 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t35, ptr %l44, !tbaa !27
  %t36 = load i64, ptr %l5, !tbaa !24
  %t38 = getelementptr { i64, ptr }, ptr %l44, i32 0, i32 1
  %t39 = load ptr, ptr %t38, !tbaa !27
  %t40 = getelementptr ptr, ptr %t39, i64 %t36
  %t41 = load ptr, ptr %t40, !tbaa !39
  store ptr %t41, ptr %l7, !tbaa !29
  %t43 = load ptr, ptr %l7, !tbaa !29
  store ptr %t43, ptr %l47, !tbaa !29
  store i1 false, ptr %l48, !tbaa !21
  %t44 = load ptr, ptr %l47, !tbaa !29
  %t45 = icmp ne ptr %t44, null
  br i1 %t45, label %bb9, label %bb10
bb9:
  %t47 = load ptr, ptr %l47, !tbaa !29
  %t48 = load i64, ptr %t47, !range !{i64 0, i64 11}
  %t50 = icmp eq i64 %t48, 7
  store i1 %t50, ptr %l48, !tbaa !21
  br label %bb10
bb10:
  %t51 = load i1, ptr %l48, !tbaa !21
  br i1 %t51, label %bb11, label %bb12
bb11:
  %t52 = load ptr, ptr %l7, !tbaa !29
  %t54 = getelementptr { i64, [8 x i64] }, ptr %t52, i32 0, i32 1
  %t55 = getelementptr { %"compiler/source:Span", ptr }, ptr %t54, i32 0, i32 1
  %t56 = load ptr, ptr %t55
  store ptr %t56, ptr %l8, !tbaa !29
  br label %bb13
bb12:
  br label %bb15
bb13:
  %t58 = load ptr, ptr %l0, !tbaa !29
  %t59 = load i64, ptr %l1, !tbaa !24
  %t60 = load ptr, ptr %l8, !tbaa !29
  call void @compiler_2fnames_2ecompiler_2fnames_3aResolver_2ewaitAside(ptr %v0, ptr %v1, ptr %t58, i64 %t59, ptr %t60)
  br label %bb14
bb14:
  br label %bb98
bb15:
  %t64 = load ptr, ptr %l7, !tbaa !29
  store ptr %t64, ptr %l56, !tbaa !29
  store i1 false, ptr %l57, !tbaa !21
  %t65 = load ptr, ptr %l56, !tbaa !29
  %t66 = icmp ne ptr %t65, null
  br i1 %t66, label %bb16, label %bb17
bb16:
  %t68 = load ptr, ptr %l56, !tbaa !29
  %t69 = load i64, ptr %t68, !range !{i64 0, i64 11}
  %t71 = icmp eq i64 %t69, 0
  store i1 %t71, ptr %l57, !tbaa !21
  br label %bb17
bb17:
  %t72 = load i1, ptr %l57, !tbaa !21
  br i1 %t72, label %bb18, label %bb19
bb18:
  %t73 = load ptr, ptr %l7, !tbaa !29
  %t75 = getelementptr { i64, [8 x i64] }, ptr %t73, i32 0, i32 1
  %t76 = getelementptr { ptr }, ptr %t75, i32 0, i32 0
  %t77 = load ptr, ptr %t76
  store ptr %t77, ptr %l9, !tbaa !29
  br label %bb24
bb19:
  %t79 = load ptr, ptr %l7, !tbaa !29
  store ptr %t79, ptr %l62, !tbaa !29
  store i1 false, ptr %l63, !tbaa !21
  %t80 = load ptr, ptr %l62, !tbaa !29
  %t81 = icmp ne ptr %t80, null
  br i1 %t81, label %bb20, label %bb21
bb20:
  %t83 = load ptr, ptr %l62, !tbaa !29
  %t84 = load i64, ptr %t83, !range !{i64 0, i64 11}
  %t86 = icmp eq i64 %t84, 1
  store i1 %t86, ptr %l63, !tbaa !21
  br label %bb21
bb21:
  %t87 = load i1, ptr %l63, !tbaa !21
  br i1 %t87, label %bb22, label %bb23
bb22:
  %t88 = load ptr, ptr %l7, !tbaa !29
  %t90 = getelementptr { i64, [8 x i64] }, ptr %t88, i32 0, i32 1
  %t91 = getelementptr { ptr }, ptr %t90, i32 0, i32 0
  %t92 = load ptr, ptr %t91
  store ptr %t92, ptr %l9, !tbaa !29
  br label %bb24
bb23:
  br label %bb26
bb24:
  %t94 = load ptr, ptr %l3, !tbaa !29
  %t96 = getelementptr %"compiler/names:Table", ptr %t94, i32 0, i32 4
  %t97 = load ptr, ptr %l9, !tbaa !29
  %t99 = getelementptr %"compiler/ast:Func", ptr %t97, i32 0, i32 2
  %t100 = load i32, ptr %t99, !tbaa !23
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fsource_3aNameId_2c_20Bool_3_H96b7de74ba8f33ba996281c879dd113a(ptr %v0, ptr %t96, i32 %t100, i1 true)
  br label %bb25
bb25:
  br label %bb98
bb26:
  %t103 = load ptr, ptr %l7, !tbaa !29
  store ptr %t103, ptr %l72, !tbaa !29
  store i1 false, ptr %l73, !tbaa !21
  %t104 = load ptr, ptr %l72, !tbaa !29
  %t105 = icmp ne ptr %t104, null
  br i1 %t105, label %bb27, label %bb28
bb27:
  %t107 = load ptr, ptr %l72, !tbaa !29
  %t108 = load i64, ptr %t107, !range !{i64 0, i64 11}
  %t110 = icmp eq i64 %t108, 2
  store i1 %t110, ptr %l73, !tbaa !21
  br label %bb28
bb28:
  %t111 = load i1, ptr %l73, !tbaa !21
  br i1 %t111, label %bb29, label %bb30
bb29:
  %t112 = load ptr, ptr %l7, !tbaa !29
  %t114 = getelementptr { i64, [8 x i64] }, ptr %t112, i32 0, i32 1
  %t115 = getelementptr { %"compiler/source:Span", ptr }, ptr %t114, i32 0, i32 1
  %t116 = load ptr, ptr %t115
  store ptr %t116, ptr %l10, !tbaa !29
  br label %bb31
bb30:
  br label %bb33
bb31:
  %t118 = load ptr, ptr %l3, !tbaa !29
  %t120 = getelementptr %"compiler/names:Table", ptr %t118, i32 0, i32 4
  %t121 = load ptr, ptr %l10, !tbaa !29
  %t123 = getelementptr %"compiler/ast:TypeDecl", ptr %t121, i32 0, i32 0
  %t124 = load i32, ptr %t123, !tbaa !23
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fsource_3aNameId_2c_20Bool_3_H96b7de74ba8f33ba996281c879dd113a(ptr %v0, ptr %t120, i32 %t124, i1 true)
  br label %bb32
bb32:
  br label %bb98
bb33:
  %t127 = load ptr, ptr %l7, !tbaa !29
  store ptr %t127, ptr %l82, !tbaa !29
  store i1 false, ptr %l83, !tbaa !21
  %t128 = load ptr, ptr %l82, !tbaa !29
  %t129 = icmp ne ptr %t128, null
  br i1 %t129, label %bb34, label %bb35
bb34:
  %t131 = load ptr, ptr %l82, !tbaa !29
  %t132 = load i64, ptr %t131, !range !{i64 0, i64 11}
  %t134 = icmp eq i64 %t132, 5
  store i1 %t134, ptr %l83, !tbaa !21
  br label %bb35
bb35:
  %t135 = load i1, ptr %l83, !tbaa !21
  br i1 %t135, label %bb36, label %bb37
bb36:
  %t136 = load ptr, ptr %l7, !tbaa !29
  %t138 = getelementptr { i64, [8 x i64] }, ptr %t136, i32 0, i32 1
  %t139 = getelementptr { %"compiler/source:Span", i32, { i64, ptr }, { i64, ptr }, { i64, ptr } }, ptr %t138, i32 0, i32 1
  %t140 = load i32, ptr %t139
  store i32 %t140, ptr %l11, !tbaa !23
  br label %bb38
bb37:
  br label %bb40
bb38:
  %t142 = load ptr, ptr %l3, !tbaa !29
  %t144 = getelementptr %"compiler/names:Table", ptr %t142, i32 0, i32 4
  %t145 = load i32, ptr %l11, !tbaa !23
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fsource_3aNameId_2c_20Bool_3_H96b7de74ba8f33ba996281c879dd113a(ptr %v0, ptr %t144, i32 %t145, i1 true)
  br label %bb39
bb39:
  br label %bb98
bb40:
  %t148 = load ptr, ptr %l7, !tbaa !29
  store ptr %t148, ptr %l91, !tbaa !29
  store i1 false, ptr %l92, !tbaa !21
  %t149 = load ptr, ptr %l91, !tbaa !29
  %t150 = icmp ne ptr %t149, null
  br i1 %t150, label %bb41, label %bb42
bb41:
  %t152 = load ptr, ptr %l91, !tbaa !29
  %t153 = load i64, ptr %t152, !range !{i64 0, i64 11}
  %t155 = icmp eq i64 %t153, 3
  store i1 %t155, ptr %l92, !tbaa !21
  br label %bb42
bb42:
  %t156 = load i1, ptr %l92, !tbaa !21
  br i1 %t156, label %bb43, label %bb44
bb43:
  %t157 = load ptr, ptr %l7, !tbaa !29
  %t159 = getelementptr { i64, [8 x i64] }, ptr %t157, i32 0, i32 1
  %t160 = getelementptr { %"compiler/source:Span", ptr }, ptr %t159, i32 0, i32 1
  %t161 = load ptr, ptr %t160
  store ptr %t161, ptr %l12, !tbaa !29
  br label %bb45
bb44:
  br label %bb53
bb45:
  %t163 = load ptr, ptr %l12, !tbaa !29
  %t165 = getelementptr %"compiler/ast:VarDecl", ptr %t163, i32 0, i32 0
  %t166 = load { i64, ptr }, ptr %t165, !tbaa !27
  store { i64, ptr } %t166, ptr %l13, !tbaa !27
  store i64 0, ptr %l14, !tbaa !24
  %t168 = load { i64, ptr }, ptr %l13, !tbaa !27
  %t170 = extractvalue { i64, ptr } %t168, 0
  store i64 %t170, ptr %l15, !tbaa !24
  br label %bb46
bb46:
  %t172 = load i64, ptr %l14, !tbaa !24
  %t173 = load i64, ptr %l15, !tbaa !24
  %t176 = icmp slt i64 %t172, %t173
  %t178 = xor i1 %t176, true
  br i1 %t178, label %bb47, label %bb48
bb47:
  br label %bb52
bb48:
  br label %bb49
bb49:
  %t180 = load { i64, ptr }, ptr %l13, !tbaa !27
  store { i64, ptr } %t180, ptr %l105, !tbaa !27
  %t181 = load i64, ptr %l14, !tbaa !24
  %t183 = getelementptr { i64, ptr }, ptr %l105, i32 0, i32 1
  %t184 = load ptr, ptr %t183, !tbaa !27
  %t185 = getelementptr i32, ptr %t184, i64 %t181
  %t186 = load i32, ptr %t185, !tbaa !33
  %t188 = load ptr, ptr %l3, !tbaa !29
  %t190 = getelementptr %"compiler/names:Table", ptr %t188, i32 0, i32 4
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fsource_3aNameId_2c_20Bool_3_H96b7de74ba8f33ba996281c879dd113a(ptr %v0, ptr %t190, i32 %t186, i1 true)
  br label %bb50
bb50:
  br label %bb51
bb51:
  %t194 = load i64, ptr %l14, !tbaa !24
  %t196 = add i64 %t194, 1
  store i64 %t196, ptr %l14, !tbaa !24
  br label %bb46
bb52:
  br label %bb98
bb53:
  %t198 = load ptr, ptr %l7, !tbaa !29
  store ptr %t198, ptr %l113, !tbaa !29
  store i1 false, ptr %l114, !tbaa !21
  %t199 = load ptr, ptr %l113, !tbaa !29
  %t200 = icmp ne ptr %t199, null
  br i1 %t200, label %bb54, label %bb55
bb54:
  %t202 = load ptr, ptr %l113, !tbaa !29
  %t203 = load i64, ptr %t202, !range !{i64 0, i64 11}
  %t205 = icmp eq i64 %t203, 10
  store i1 %t205, ptr %l114, !tbaa !21
  br label %bb55
bb55:
  %t206 = load i1, ptr %l114, !tbaa !21
  br i1 %t206, label %bb56, label %bb57
bb56:
  %t207 = load ptr, ptr %l7, !tbaa !29
  %t209 = getelementptr { i64, [8 x i64] }, ptr %t207, i32 0, i32 1
  %t210 = getelementptr { %"compiler/source:Span", %"compiler/source:Span", { i64, ptr } }, ptr %t209, i32 0, i32 2
  %t211 = load { i64, ptr }, ptr %t210
  store { i64, ptr } %t211, ptr %l17, !tbaa !27
  br label %bb58
bb57:
  br label %bb70
bb58:
  %t213 = load { i64, ptr }, ptr %l17, !tbaa !27
  store { i64, ptr } %t213, ptr %l18, !tbaa !27
  store i64 0, ptr %l19, !tbaa !24
  %t215 = load { i64, ptr }, ptr %l18, !tbaa !27
  %t217 = extractvalue { i64, ptr } %t215, 0
  store i64 %t217, ptr %l20, !tbaa !24
  br label %bb59
bb59:
  %t219 = load i64, ptr %l19, !tbaa !24
  %t220 = load i64, ptr %l20, !tbaa !24
  %t223 = icmp slt i64 %t219, %t220
  %t225 = xor i1 %t223, true
  br i1 %t225, label %bb60, label %bb61
bb60:
  br label %bb69
bb61:
  br label %bb62
bb62:
  %t227 = load { i64, ptr }, ptr %l18, !tbaa !27
  store { i64, ptr } %t227, ptr %l126, !tbaa !27
  %t228 = load i64, ptr %l19, !tbaa !24
  %t230 = getelementptr { i64, ptr }, ptr %l126, i32 0, i32 1
  %t231 = load ptr, ptr %t230, !tbaa !27
  %t232 = getelementptr ptr, ptr %t231, i64 %t228
  %t233 = load ptr, ptr %t232, !tbaa !39
  %t237 = call i32 @compiler_2fnames_2eexternDeclName(ptr %v1, ptr %t233)
  store i32 %t237, ptr %l130
  br label %bb63
bb63:
  %t238 = load i32, ptr %l130, !tbaa !23
  store i32 %t238, ptr %l22, !tbaa !23
  %t239 = load i32, ptr %l22, !tbaa !23
  %t241 = icmp ne i32 %t239, 0
  br i1 %t241, label %bb64, label %bb65
bb64:
  %t243 = load ptr, ptr %l3, !tbaa !29
  %t245 = getelementptr %"compiler/names:Table", ptr %t243, i32 0, i32 4
  %t246 = load i32, ptr %l22, !tbaa !23
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fsource_3aNameId_2c_20Bool_3_H96b7de74ba8f33ba996281c879dd113a(ptr %v0, ptr %t245, i32 %t246, i1 true)
  br label %bb66
bb65:
  br label %bb67
bb66:
  br label %bb67
bb67:
  br label %bb68
bb68:
  %t249 = load i64, ptr %l19, !tbaa !24
  %t251 = add i64 %t249, 1
  store i64 %t251, ptr %l19, !tbaa !24
  br label %bb59
bb69:
  br label %bb98
bb70:
  %t253 = load ptr, ptr %l7, !tbaa !29
  store ptr %t253, ptr %l138, !tbaa !29
  store i1 false, ptr %l139, !tbaa !21
  %t254 = load ptr, ptr %l138, !tbaa !29
  %t255 = icmp ne ptr %t254, null
  br i1 %t255, label %bb71, label %bb72
bb71:
  %t257 = load ptr, ptr %l138, !tbaa !29
  %t258 = load i64, ptr %t257, !range !{i64 0, i64 11}
  %t260 = icmp eq i64 %t258, 4
  store i1 %t260, ptr %l139, !tbaa !21
  br label %bb72
bb72:
  %t261 = load i1, ptr %l139, !tbaa !21
  br i1 %t261, label %bb73, label %bb74
bb73:
  %t262 = load ptr, ptr %l7, !tbaa !29
  %t264 = getelementptr { i64, [8 x i64] }, ptr %t262, i32 0, i32 1
  %t265 = getelementptr { %"compiler/source:Span", i32, %"compiler/source:Span", %"compiler/source:Span" }, ptr %t264, i32 0, i32 1
  %t266 = load i32, ptr %t265
  store i32 %t266, ptr %l23, !tbaa !23
  %t268 = load ptr, ptr %l7, !tbaa !29
  %t270 = getelementptr { i64, [8 x i64] }, ptr %t268, i32 0, i32 1
  %t271 = getelementptr { %"compiler/source:Span", i32, %"compiler/source:Span", %"compiler/source:Span" }, ptr %t270, i32 0, i32 2
  %t272 = load %"compiler/source:Span", ptr %t271
  store %"compiler/source:Span" %t272, ptr %l24
  br label %bb75
bb74:
  br label %bb93
bb75:
  %t274 = load i32, ptr %l23, !tbaa !23
  store i32 %t274, ptr %l25, !tbaa !23
  %t276 = load i32, ptr %l25, !tbaa !23
  %t278 = icmp eq i32 %t276, 0
  br i1 %t278, label %bb76, label %bb77
bb76:
  store %olang.scope zeroinitializer, ptr %s18
  %t280 = load ptr, ptr %l0, !tbaa !29
  %t282 = getelementptr %"compiler/names:Resolver", ptr %t280, i32 0, i32 0
  %t283 = load ptr, ptr %t282, !tbaa !29
  %t285 = getelementptr %"compiler/load:Loader", ptr %t283, i32 0, i32 10
  %t286 = load i64, ptr %l1, !tbaa !24
  %t289 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H7bcf2aeb09afa796f4333e6ec8c3f63f(ptr %v0, ptr %v0, ptr %t285, i64 %t286)
  store ptr %t289, ptr %l153
  br label %bb78
bb77:
  br label %bb91
bb78:
  %t290 = load ptr, ptr %l153, !tbaa !29
  %t292 = getelementptr %"compiler/load:Module", ptr %t290, i32 0, i32 6
  %t293 = load ptr, ptr %t292, !tbaa !29
  store ptr %t293, ptr %l26, !tbaa !29
  %t295 = load ptr, ptr %l26, !tbaa !29
  %t297 = icmp eq ptr %t295, null
  br i1 %t297, label %bb79, label %bb80
bb79:
  call void @__olang_check_failed(ptr @olang_loc_2e44b04c90256572_e4b951cec3f82206)
  unreachable
bb80:
  br label %bb81
bb81:
  %t299 = load ptr, ptr %l26, !tbaa !29
  %t302 = getelementptr %"compiler/source:Source", ptr %t299, i32 0, i32 1
  %t303 = load { i64, ptr }, ptr %t302, !tbaa !27
  store { i64, ptr } %t303, ptr %l160, !tbaa !27
  %t304 = getelementptr %"compiler/source:Span", ptr %l24, i32 0, i32 0
  %t305 = load i32, ptr %t304, !tbaa !23
  %t307 = sext i32 %t305 to i64
  store i64 %t307, ptr %l162, !tbaa !24
  %t308 = getelementptr %"compiler/source:Span", ptr %l24, i32 0, i32 1
  %t309 = load i32, ptr %t308, !tbaa !23
  %t311 = sext i32 %t309 to i64
  store i64 %t311, ptr %l164, !tbaa !24
  %t312 = load { i64, ptr }, ptr %l160, !tbaa !27
  %t313 = extractvalue { i64, ptr } %t312, 0
  store i64 %t313, ptr %l165, !tbaa !24
  %t314 = load i64, ptr %l162, !tbaa !24
  %t315 = icmp sge i64 %t314, 0
  br i1 %t315, label %bb82, label %bb83
bb82:
  %t317 = load i64, ptr %l162, !tbaa !24
  %t318 = load i64, ptr %l164, !tbaa !24
  %t319 = icmp sle i64 %t317, %t318
  br i1 %t319, label %bb84, label %bb85
bb83:
  call void @__olang_check_failed(ptr @olang_loc_c27b9afc6f9460e7_c1ce40693c6669b)
  unreachable
bb84:
  %t321 = load i64, ptr %l164, !tbaa !24
  %t322 = load i64, ptr %l165, !tbaa !24
  %t323 = icmp sle i64 %t321, %t322
  br i1 %t323, label %bb86, label %bb87
bb85:
  call void @__olang_check_failed(ptr @olang_loc_c27b9afc6f9460e7_c1ce40693c6669b)
  unreachable
bb86:
  %t325 = getelementptr { i64, ptr }, ptr %l160, i32 0, i32 1
  %t326 = load ptr, ptr %t325, !tbaa !27
  %t327 = load i64, ptr %l162, !tbaa !24
  %t328 = load i64, ptr %l164, !tbaa !24
  %t329 = getelementptr i8, ptr %t326, i64 %t327
  %t330 = sub i64 %t328, %t327
  %t331 = insertvalue { i64, ptr } undef, i64 %t330, 0
  %t332 = insertvalue { i64, ptr } %t331, ptr %t329, 1
  %t334 = call { i64, ptr } @compiler_2fscan_2eLiteralText(ptr %v0, ptr %s18, { i64, ptr } %t332)
  store { i64, ptr } %t334, ptr %l170
  br label %bb88
bb87:
  call void @__olang_check_failed(ptr @olang_loc_c27b9afc6f9460e7_c1ce40693c6669b)
  unreachable
bb88:
  %t335 = load { i64, ptr }, ptr %l170, !tbaa !27
  %t336 = load ptr, ptr %l0, !tbaa !29
  %t338 = getelementptr %"compiler/names:Resolver", ptr %t336, i32 0, i32 0
  %t339 = load ptr, ptr %t338, !tbaa !29
  %t341 = getelementptr %"compiler/load:Loader", ptr %t339, i32 0, i32 3
  %t342 = load ptr, ptr %t341, !tbaa !29
  store ptr %t342, ptr %l173, !tbaa !29
  %t345 = call { i64, ptr } @compiler_2fload_2eDeriveAlias(ptr %s18, ptr %s18, { i64, ptr } %t335)
  store { i64, ptr } %t345, ptr %l175
  br label %bb89
bb89:
  %t346 = load ptr, ptr %l173, !tbaa !29
  %t347 = load { i64, ptr }, ptr %l175, !tbaa !27
  %t348 = call i32 @compiler_2fsource_2ecompiler_2fsource_3aNames_2eIntern(ptr %v0, ptr %s18, ptr %t346, { i64, ptr } %t347)
  store i32 %t348, ptr %l176
  br label %bb90
bb90:
  %t349 = load i32, ptr %l176, !tbaa !23
  store i32 %t349, ptr %l25, !tbaa !23
  call void @__olang_scope_close(ptr %s18)
  br label %bb91
bb91:
  %t350 = load ptr, ptr %l3, !tbaa !29
  %t352 = getelementptr %"compiler/names:Table", ptr %t350, i32 0, i32 4
  %t353 = load i32, ptr %l25, !tbaa !23
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fsource_3aNameId_2c_20Bool_3_H96b7de74ba8f33ba996281c879dd113a(ptr %v0, ptr %t352, i32 %t353, i1 true)
  br label %bb92
bb92:
  br label %bb98
bb93:
  br i1 true, label %bb94, label %bb95
bb94:
  br label %bb96
bb95:
  br label %bb97
bb96:
  br label %bb98
bb97:
  call void @__olang_check_failed(ptr @olang_loc_34778adaa3b7f78b_cd6f80cc1b0739cf)
  unreachable
bb98:
  br label %bb99
bb99:
  %t356 = load i64, ptr %l5, !tbaa !24
  %t358 = add i64 %t356, 1
  store i64 %t358, ptr %l5, !tbaa !24
  br label %bb5
bb100:
  br label %ret
ret:
  ret void
}

define dso_local %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2fnames_2efieldNames(ptr %v0, ptr %v1, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %lp1 = alloca ptr
  %l2 = alloca { i64, ptr }
  %l3 = alloca i64
  %l4 = alloca i64
  %l6 = alloca { i64, ptr }
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca ptr
  %l10 = alloca ptr
  %l11 = alloca { i64, ptr }
  %l12 = alloca i64
  %l13 = alloca i64
  %l15 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l24 = alloca { i64, ptr }
  %l45 = alloca { i64, ptr }
  %l48 = alloca ptr
  %l49 = alloca i1
  %l62 = alloca { i64, ptr }
  %rv = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aNameId_3e_2ector(ptr %v1, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1, ptr %l15
  br label %bb1
bb1:
  %t2 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 32, i64 8)
  store ptr %t2, ptr %lp1
  %t3 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l15
  %t4 = load ptr, ptr %lp1
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t3, ptr %t4
  %t5 = load ptr, ptr %l0, !tbaa !29
  %t7 = getelementptr %"compiler/ast:StructBody", ptr %t5, i32 0, i32 0
  %t8 = load { i64, ptr }, ptr %t7, !tbaa !27
  store { i64, ptr } %t8, ptr %l2, !tbaa !27
  store i64 0, ptr %l3, !tbaa !24
  %t10 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t12 = extractvalue { i64, ptr } %t10, 0
  store i64 %t12, ptr %l4, !tbaa !24
  br label %bb2
bb2:
  %t14 = load i64, ptr %l3, !tbaa !24
  %t15 = load i64, ptr %l4, !tbaa !24
  %t18 = icmp slt i64 %t14, %t15
  %t20 = xor i1 %t18, true
  br i1 %t20, label %bb3, label %bb4
bb3:
  br label %bb8
bb4:
  br label %bb5
bb5:
  %t22 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t22, ptr %l24, !tbaa !27
  %t23 = load i64, ptr %l3, !tbaa !24
  %t25 = getelementptr { i64, ptr }, ptr %l24, i32 0, i32 1
  %t26 = load ptr, ptr %t25, !tbaa !27
  %t27 = getelementptr ptr, ptr %t26, i64 %t23
  %t28 = load ptr, ptr %t27, !tbaa !39
  %t30 = load ptr, ptr %lp1
  %t33 = getelementptr %"compiler/ast:Param", ptr %t28, i32 0, i32 1
  %t34 = load i32, ptr %t33, !tbaa !23
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aNameId_3e_2ePush_3ccompiler_2fsource_3aNameId_3e(ptr %v1, ptr %t30, i32 %t34)
  br label %bb6
bb6:
  br label %bb7
bb7:
  %t37 = load i64, ptr %l3, !tbaa !24
  %t39 = add i64 %t37, 1
  store i64 %t39, ptr %l3, !tbaa !24
  br label %bb2
bb8:
  %t41 = load ptr, ptr %l0, !tbaa !29
  %t43 = getelementptr %"compiler/ast:StructBody", ptr %t41, i32 0, i32 2
  %t44 = load { i64, ptr }, ptr %t43, !tbaa !27
  %t46 = extractvalue { i64, ptr } %t44, 0
  %t48 = icmp eq i64 %t46, 0
  br i1 %t48, label %bb9, label %bb10
bb9:
  %t50 = load ptr, ptr %lp1
  %t51 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t50
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t51, ptr %rv
  br label %ret
bb10:
  br label %bb11
bb11:
  %t53 = load ptr, ptr %l0, !tbaa !29
  %t55 = getelementptr %"compiler/ast:StructBody", ptr %t53, i32 0, i32 2
  %t56 = load { i64, ptr }, ptr %t55, !tbaa !27
  store { i64, ptr } %t56, ptr %l6, !tbaa !27
  store i64 0, ptr %l7, !tbaa !24
  %t58 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t60 = extractvalue { i64, ptr } %t58, 0
  store i64 %t60, ptr %l8, !tbaa !24
  br label %bb12
bb12:
  %t62 = load i64, ptr %l7, !tbaa !24
  %t63 = load i64, ptr %l8, !tbaa !24
  %t66 = icmp slt i64 %t62, %t63
  %t68 = xor i1 %t66, true
  br i1 %t68, label %bb13, label %bb14
bb13:
  br label %bb35
bb14:
  br label %bb15
bb15:
  %t70 = load { i64, ptr }, ptr %l6, !tbaa !27
  store { i64, ptr } %t70, ptr %l45, !tbaa !27
  %t71 = load i64, ptr %l7, !tbaa !24
  %t73 = getelementptr { i64, ptr }, ptr %l45, i32 0, i32 1
  %t74 = load ptr, ptr %t73, !tbaa !27
  %t75 = getelementptr ptr, ptr %t74, i64 %t71
  %t76 = load ptr, ptr %t75, !tbaa !39
  store ptr %t76, ptr %l9, !tbaa !29
  %t78 = load ptr, ptr %l9, !tbaa !29
  store ptr %t78, ptr %l48, !tbaa !29
  store i1 false, ptr %l49, !tbaa !21
  %t79 = load ptr, ptr %l48, !tbaa !29
  %t80 = icmp ne ptr %t79, null
  br i1 %t80, label %bb16, label %bb17
bb16:
  %t82 = load ptr, ptr %l48, !tbaa !29
  %t83 = load i64, ptr %t82, !range !{i64 0, i64 22}
  %t85 = icmp eq i64 %t83, 1
  store i1 %t85, ptr %l49, !tbaa !21
  br label %bb17
bb17:
  %t86 = load i1, ptr %l49, !tbaa !21
  br i1 %t86, label %bb18, label %bb19
bb18:
  %t87 = load ptr, ptr %l9, !tbaa !29
  %t89 = getelementptr { i64, [4 x i64] }, ptr %t87, i32 0, i32 1
  %t90 = getelementptr { %"compiler/source:Span", ptr }, ptr %t89, i32 0, i32 1
  %t91 = load ptr, ptr %t90
  store ptr %t91, ptr %l10, !tbaa !29
  br label %bb20
bb19:
  br label %bb28
bb20:
  %t93 = load ptr, ptr %l10, !tbaa !29
  %t95 = getelementptr %"compiler/ast:VarDecl", ptr %t93, i32 0, i32 0
  %t96 = load { i64, ptr }, ptr %t95, !tbaa !27
  store { i64, ptr } %t96, ptr %l11, !tbaa !27
  store i64 0, ptr %l12, !tbaa !24
  %t98 = load { i64, ptr }, ptr %l11, !tbaa !27
  %t100 = extractvalue { i64, ptr } %t98, 0
  store i64 %t100, ptr %l13, !tbaa !24
  br label %bb21
bb21:
  %t102 = load i64, ptr %l12, !tbaa !24
  %t103 = load i64, ptr %l13, !tbaa !24
  %t106 = icmp slt i64 %t102, %t103
  %t108 = xor i1 %t106, true
  br i1 %t108, label %bb22, label %bb23
bb22:
  br label %bb27
bb23:
  br label %bb24
bb24:
  %t110 = load { i64, ptr }, ptr %l11, !tbaa !27
  store { i64, ptr } %t110, ptr %l62, !tbaa !27
  %t111 = load i64, ptr %l12, !tbaa !24
  %t113 = getelementptr { i64, ptr }, ptr %l62, i32 0, i32 1
  %t114 = load ptr, ptr %t113, !tbaa !27
  %t115 = getelementptr i32, ptr %t114, i64 %t111
  %t116 = load i32, ptr %t115, !tbaa !33
  %t118 = load ptr, ptr %lp1
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aNameId_3e_2ePush_3ccompiler_2fsource_3aNameId_3e(ptr %v1, ptr %t118, i32 %t116)
  br label %bb25
bb25:
  br label %bb26
bb26:
  %t122 = load i64, ptr %l12, !tbaa !24
  %t124 = add i64 %t122, 1
  store i64 %t124, ptr %l12, !tbaa !24
  br label %bb21
bb27:
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
  call void @__olang_check_failed(ptr @olang_loc_6dee9be1cc02e387_998545862ea10f93)
  unreachable
bb33:
  br label %bb34
bb34:
  %t126 = load i64, ptr %l7, !tbaa !24
  %t128 = add i64 %t126, 1
  store i64 %t128, ptr %l7, !tbaa !24
  br label %bb12
bb35:
  %t130 = load ptr, ptr %lp1
  %t131 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t130
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t131, ptr %rv
  br label %ret
ret:
  %rr = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %rv
  ret %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %rr
}

define dso_local i1 @compiler_2fnames_2eidentChar(i8 %a0) #0 {
entry:
  %l0 = alloca i8
  %l2 = alloca i1
  %l3 = alloca i1
  %l5 = alloca i1
  %l6 = alloca i1
  %rv = alloca i1
  store i8 %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load i8, ptr %l0, !tbaa !22
  %t3 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aChar_2eIsLetter(i8 %t1)
  store i1 %t3, ptr %l2
  br label %bb1
bb1:
  %t4 = load i1, ptr %l2, !tbaa !21
  br i1 %t4, label %bb2, label %bb3
bb2:
  store i1 true, ptr %l3, !tbaa !21
  br label %bb5
bb3:
  %t5 = load i8, ptr %l0, !tbaa !22
  %t7 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aChar_2eIsDigit(i8 %t5)
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
  br label %bb8
bb7:
  %t10 = load i8, ptr %l0, !tbaa !22
  %t12 = icmp eq i8 %t10, 95
  store i1 %t12, ptr %l6, !tbaa !21
  br label %bb8
bb8:
  %t14 = load i1, ptr %l6, !tbaa !21
  store i1 %t14, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local { i64, i64 } @compiler_2fnames_2elineCol(ptr %v0, { i64, ptr } %a0, i64 %a1) #0 {
entry:
  %l2 = alloca i64
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l14 = alloca i64
  %l17 = alloca i64
  %l35 = alloca { i64, ptr }
  %rv = alloca { i64, i64 }
  br label %start
start:
  br label %bb0
bb0:
  store i64 1, ptr %l2, !tbaa !24
  store i64 1, ptr %l3, !tbaa !24
  store i64 0, ptr %l4, !tbaa !24
  store i64 %a1, ptr %l5, !tbaa !24
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
  store i64 0, ptr %l14, !tbaa !24
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
  store i64 %t27, ptr %l17, !tbaa !24
  br label %bb5
bb4:
  store i64 0, ptr %l17, !tbaa !24
  br label %bb5
bb5:
  %t29 = load i64, ptr %l17, !tbaa !24
  store i64 %t29, ptr %l14, !tbaa !24
  br label %bb6
bb6:
  %t30 = load i64, ptr %l14, !tbaa !24
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
  br label %bb15
bb9:
  br label %bb10
bb10:
  %t39 = load i64, ptr %l4, !tbaa !24
  %t40 = load i64, ptr %l8, !tbaa !24
  %t41 = load i64, ptr %l6, !tbaa !24
  %t44 = mul i64 %t40, %t41
  %t47 = add i64 %t39, %t44
  store { i64, ptr } %a0, ptr %l35, !tbaa !27
  %t52 = getelementptr { i64, ptr }, ptr %l35, i32 0, i32 1
  %t53 = load ptr, ptr %t52, !tbaa !27
  %t54 = getelementptr i8, ptr %t53, i64 %t47
  %t55 = load i8, ptr %t54, !tbaa !32
  %t57 = icmp eq i8 %t55, 10
  br i1 %t57, label %bb11, label %bb12
bb11:
  %t59 = load i64, ptr %l2, !tbaa !24
  %t61 = add i64 %t59, 1
  store i64 %t61, ptr %l2, !tbaa !24
  store i64 1, ptr %l3, !tbaa !24
  br label %bb13
bb12:
  %t63 = load i64, ptr %l3, !tbaa !24
  %t65 = add i64 %t63, 1
  store i64 %t65, ptr %l3, !tbaa !24
  br label %bb13
bb13:
  br label %bb14
bb14:
  %t67 = load i64, ptr %l8, !tbaa !24
  %t69 = add i64 %t67, 1
  store i64 %t69, ptr %l8, !tbaa !24
  br label %bb7
bb15:
  %t71 = load i64, ptr %l2, !tbaa !24
  %t72 = load i64, ptr %l3, !tbaa !24
  %t74 = insertvalue { i64, i64 } undef, i64 %t71, 0
  %t76 = insertvalue { i64, i64 } %t74, i64 %t72, 1
  store { i64, i64 } %t76, ptr %rv
  br label %ret
ret:
  %rr = load { i64, i64 }, ptr %rv
  ret { i64, i64 } %rr
}

define dso_local %"compiler/names:Ref" @compiler_2fnames_3aRef_2ector(ptr %v0, i32 %a0, i64 %a1, i64 %a2) #0 {
entry:
  %rv = alloca %"compiler/names:Ref"
  br label %start
start:
  br label %bb0
bb0:
  %t8 = insertvalue %"compiler/names:Ref" undef, i32 %a0, 0
  %t10 = insertvalue %"compiler/names:Ref" %t8, i64 %a1, 1
  %t12 = insertvalue %"compiler/names:Ref" %t10, i64 %a2, 2
  store %"compiler/names:Ref" %t12, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/names:Ref", ptr %rv
  ret %"compiler/names:Ref" %rr
}

define dso_local %"compiler/names:Unread" @compiler_2fnames_3aUnread_2ector(ptr %v0, i64 %a0, %"compiler/source:Span" %a1, i32 %a2, i1 %a3) #0 {
entry:
  %rv = alloca %"compiler/names:Unread"
  br label %start
start:
  br label %bb0
bb0:
  %t10 = insertvalue %"compiler/names:Unread" undef, i64 %a0, 0
  %t12 = insertvalue %"compiler/names:Unread" %t10, %"compiler/source:Span" %a1, 1
  %t14 = insertvalue %"compiler/names:Unread" %t12, i32 %a2, 2
  %t16 = insertvalue %"compiler/names:Unread" %t14, i1 %a3, 3
  store %"compiler/names:Unread" %t16, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/names:Unread", ptr %rv
  ret %"compiler/names:Unread" %rr
}

define dso_local %"compiler/names:local" @compiler_2fnames_3alocal_2ector(ptr %v0, i32 %a0, %"compiler/source:Span" %a1, i32 %a2, i1 %a3, i1 %a4, i1 %a5) #0 {
entry:
  %rv = alloca %"compiler/names:local"
  br label %start
start:
  br label %bb0
bb0:
  %t14 = insertvalue %"compiler/names:local" undef, i32 %a0, 0
  %t16 = insertvalue %"compiler/names:local" %t14, %"compiler/source:Span" %a1, 1
  %t18 = insertvalue %"compiler/names:local" %t16, i32 %a2, 2
  %t20 = insertvalue %"compiler/names:local" %t18, i1 %a3, 3
  %t22 = insertvalue %"compiler/names:local" %t20, i1 %a4, 4
  %t24 = insertvalue %"compiler/names:local" %t22, i1 %a5, 5
  store %"compiler/names:local" %t24, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/names:local", ptr %rv
  ret %"compiler/names:local" %rr
}

define dso_local %"compiler/names:raisedName" @compiler_2fnames_3araisedName_2ector(ptr %v0, ptr %v1, i32 %a0, %"compiler/source:Span" %a1, i64 %a2, i1 %a3, i64 %a4, { i64, ptr } %a5) #0 {
entry:
  %rv = alloca %"compiler/names:raisedName"
  br label %start
start:
  br label %bb0
bb0:
  %t14 = insertvalue %"compiler/names:raisedName" undef, i32 %a0, 0
  %t16 = insertvalue %"compiler/names:raisedName" %t14, %"compiler/source:Span" %a1, 1
  %t18 = insertvalue %"compiler/names:raisedName" %t16, i64 %a2, 2
  %t20 = insertvalue %"compiler/names:raisedName" %t18, i1 %a3, 3
  %t22 = insertvalue %"compiler/names:raisedName" %t20, i64 %a4, 4
  %t24 = insertvalue %"compiler/names:raisedName" %t22, { i64, ptr } %a5, 5
  store %"compiler/names:raisedName" %t24, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/names:raisedName", ptr %rv
  ret %"compiler/names:raisedName" %rr
}

@.d0 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"Bool" }>, align 8
@.d1 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"Array" }>, align 8
@.d2 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"I8" }>, align 8
@.d3 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"I16" }>, align 8
@.d4 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"I32" }>, align 8
@.d5 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"I64" }>, align 8
@.d6 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"U8" }>, align 8
@.d7 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"U16" }>, align 8
@.d8 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"U32" }>, align 8
@.d9 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"U64" }>, align 8
@.d10 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"F16" }>, align 8
@.d11 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"BF16" }>, align 8
@.d12 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"F32" }>, align 8
@.d13 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"F64" }>, align 8
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
declare void @__olang_check_failed(ptr) cold noreturn
@.d14 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
declare void @llvm.memmove.p0.p0.i64(ptr, ptr, i64, i1)
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
@.d15 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d16 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"Bool" }>, align 8
@.d17 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"I32" }>, align 8
@.d18 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"I64" }>, align 8
@.d19 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"U64" }>, align 8
@.d20 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"F64" }>, align 8
@.d21 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"String" }>, align 8
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
@.d22 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"_" }>, align 8
@.d23 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"_" }>, align 8
define internal i1 @olang_lambda_24(ptr %env, ptr %v0, ptr %a0) #0 {
entry:
  %rv = alloca i1
  br label %start
start:
  br label %bb0
bb0:
  %t3 = getelementptr %"compiler/ast:CaseDecl", ptr %a0, i32 0, i32 2
  %t4 = load { i64, ptr }, ptr %t3, !tbaa !27
  %t6 = extractvalue { i64, ptr } %t4, 0
  %t8 = icmp sgt i64 %t6, 0
  store i1 %t8, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

@__olang_empty_array = external constant [16 x i64]
@.d25 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"Byte" }>, align 8
@.d26 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"I8" }>, align 8
@.d27 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"I16" }>, align 8
@.d28 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"I32" }>, align 8
@.d29 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"I64" }>, align 8
@.d30 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"U8" }>, align 8
@.d31 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"U16" }>, align 8
@.d32 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"U32" }>, align 8
@.d33 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"U64" }>, align 8
@.d34 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"F16" }>, align 8
@.d35 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"BF16" }>, align 8
@.d36 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"F32" }>, align 8
@.d37 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"F64" }>, align 8
@.d38 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"Bool" }>, align 8
@.d39 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"Array" }>, align 8
@__olang_prog_scope = external thread_local(initialexec) global ptr
@.d40 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"/" }>, align 8
@.d41 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c".olang" }>, align 8
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
declare i1 @compiler_2ftypes_2eIsIntName(ptr %v0, { i64, ptr } %a0)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fnames_3alocal_3e_2eLen_3ccompiler_2fnames_3alocal_3e(ptr %v0, ptr %a0)
declare %"compiler/names:local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fnames_3alocal_3e_2eAt_3ccompiler_2fnames_3alocal_3e(ptr %v0, ptr %a0, i64 %a1)
declare %"compiler/source:Span" @compiler_2fsource_3aSpan_2ector(ptr %v0, i32 %a0, i32 %a1)
declare i64 @compiler_2fnames_2ekey(i64 %a0, i32 %a1)
declare { i32, %"compiler/names:Ref" } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2fnames_3aRef_3e_2eG_Hb4f204ca9d50eb43e30fe8770cb15d1a(ptr %v0, ptr %a0, i64 %a1)
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fnames_3aTable_26_3e_2_Hc2ccbbc5952c057a60f016e9cc1626d2(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H7bcf2aeb09afa796f4333e6ec8c3f63f(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fsource_3aNameId_2c_20I64_3e_Hf575c52a5a9e8993bae2b73c9c2548b3(ptr %v0, ptr %a0, i32 %a1)
declare { i64, ptr } @compiler_2fnames_2ecompiler_2fnames_3aResolver_2etok(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eTypeNameInUse(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eError(ptr %v0, ptr %v1, ptr %a0, { i64, [3 x i64] } %a1, %"compiler/diagmsg:Msg" %a2)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eBuiltinTypeRedeclared(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare void @compiler_2fnames_2ecompiler_2fnames_3aResolver_2enoAliasClash(ptr %v0, ptr %a0, i64 %a1, i32 %a2, %"compiler/source:Span" %a3)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eNameIsType(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fnames_3aEntry_3e_2eLen_3ccompiler_2fnames_3aEntry_3e(ptr %v0, ptr %a0)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fsource_3aNameId_2c_20I64_3e_H862756c16d115e5c03a79726209f69fa(ptr %v0, ptr %a0, i32 %a1, i64 %a2)
declare %"compiler/names:Entry" @compiler_2fnames_3aEntry_2ector(ptr %v0, ptr %v1, i32 %a0, %"compiler/source:Span" %a1, i32 %a2, i1 %a3, ptr %a4)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fnames_3aEntry_3e_2ePush_3ccompiler_2fnames_3aEntry_3e(ptr %v0, ptr %v1, ptr %a0, %"compiler/names:Entry" %a1)
declare { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fsource_3aNameId_2c_20I64_3e_H2a27ec2ae5362b2f0ac6d54f3e063c70(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2fload_2ePublic(ptr %v0, { i64, ptr } %a0)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eImportIsPrivate(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2fnames_3aRef_3e_2eP_Hb17c37756f956998a4fa74bcac088344(ptr %v0, ptr %a0, i64 %a1, %"compiler/names:Ref" %a2)
declare i64 @compiler_2fnames_2ecompiler_2fnames_3aResolver_2ealiasHead(ptr %v0, ptr %a0, %"compiler/source:Span" %a1, i32 %a2)
@olang_loc_fd033da614d46a49_c57bfff01eec9785 = external constant [0 x i8]
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fload_3aImport_3e_2eLen_3ccompiler_2fload_3aImport_3e(ptr %v0, ptr %a0)
declare %"compiler/load:Import" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fload_3aImport_3e_2eAt_3ccompiler_2fload_3aImport_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i32 @compiler_2fsource_2ecompiler_2fsource_3aNames_2eIntern(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare %"std/pair:Pair.ee791c76fa337c2e45b252e8964cf3ed" @std_2fpair_3aPair_3ccompiler_2fsource_3aNameId_2c_20I64_3e_2ector(ptr %v0, i32 %a0, i64 %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fpair_3aPair_3ccompiler_2fsource__H6d3eea1e3a905a651c612011755d5d17(ptr %v0, ptr %a0, %"std/pair:Pair.ee791c76fa337c2e45b252e8964cf3ed" %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fnames_3alocal_3e_2ePush_3ccompiler_2fnames_3alocal_3e(ptr %v0, ptr %a0, %"compiler/names:local" %a1)
declare i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aNameId_3e_2eHas_3ccompiler_2fsource_3aNameId_3e(ptr %v0, ptr %a0, i32 %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aNameId_3e_2ePush_3ccompiler_2fsource_3aNameId_3e(ptr %v0, ptr %a0, i32 %a1)
declare void @compiler_2fnames_2ecompiler_2fnames_3aResolver_2estmt(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare void @compiler_2fnames_2ecompiler_2fnames_3aResolver_2epopTo(ptr %v0, ptr %a0, i64 %a1)
@olang_loc_68114e74278341f8_5424865478da1a14 = external constant [0 x i8]
declare %"std/pair:Pair.9f40551e0d6019a8e678d8f53048b6ba" @std_2fpair_3aPair_3cI64_2c_20compiler_2fsource_3aSpan_3e_2ector(ptr %v0, i64 %a0, %"compiler/source:Span" %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fpair_3aPair_3cI64_2c_20compiler__H2dfd829fbe4fa38977b46d00afbe1a06(ptr %v0, ptr %a0, %"std/pair:Pair.9f40551e0d6019a8e678d8f53048b6ba" %a1)
@olang_loc_3167f851ad930e17_101a5d4c5c826523 = external constant [0 x i8]
@olang_loc_10b7a8cdf1f86826_4c22b802d51640a2 = external constant [0 x i8]
declare void @compiler_2fnames_2ecompiler_2fnames_3aResolver_2ebodies(ptr %v0, ptr %v1, ptr %a0, i64 %a1, { i64, ptr } %a2)
@olang_loc_4f6a732ad110320d_928733cb84224b09 = external constant [0 x i8]
@olang_loc_3f10f26d81c7593c_51efd4b9807fb190 = external constant [0 x i8]
@olang_loc_1073219c408bafd2_e24f73113d5a6ea6 = external constant [0 x i8]
declare %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aTypeRef_2eSpan(ptr %v0, ptr %a0)
@olang_loc_f4b8a71cbdc10f47_ba6792d0a606e23b = external constant [0 x i8]
declare { i64, ptr } @compiler_2fnames_2eliteralType(ptr %v0, ptr %v1, ptr %a0)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eBuildDefaultType(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1)
declare i1 @compiler_2fcond_2ecompiler_2fcond_3aConsts_2eFits(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1, { i64, ptr } %a2)
declare { i64, ptr } @compiler_2fcond_2ecompiler_2fcond_3aConsts_2eRaw(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eBuildDefaultFit(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, { i64, ptr } %a0, { i64, ptr } %a1, { i64, ptr } %a2, { i64, ptr } %a3)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aNameId_3e_2ector(ptr %v0, i64 %a0)
declare void @compiler_2fnames_2ecompiler_2fnames_3aResolver_2epattern(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, ptr %a2)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aSpan_3e_2ePush_3ccompiler_2fsource_3aSpan_3e(ptr %v0, ptr %a0, %"compiler/source:Span" %a1)
declare void @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eChoose(ptr %v0, ptr %a0, i64 %a1)
declare void @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eDrop(ptr %v0, ptr %a0, i64 %a1)
declare i1 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eHolds(ptr %v0, ptr %a0, i64 %a1)
@olang_loc_60cefae456c43b96_68bed78927cbacfa = external constant [0 x i8]
declare void @compiler_2fnames_2ecompiler_2fnames_3aResolver_2ecollect(ptr %v0, ptr %v1, ptr %a0, i64 %a1, { i64, ptr } %a2)
@olang_loc_e46cc2517056eb7d_41b560901e6ccb81 = external constant [0 x i8]
@olang_loc_8bede4e7118dcaa8_b7291399ad78424c = external constant [0 x i8]
declare void @compiler_2fload_2ecompiler_2fload_3aLoader_2eCondParser(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
@olang_loc_24d74d734bb1c47c_a76eb538bdec4e08 = external constant [0 x i8]
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aNameId_3e_2eClear_3ccompiler_2fsource_3aNameId_3e(ptr %v0, ptr %a0)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aNameId_3e_2eLen_3ccompiler_2fsource_3aNameId_3e(ptr %v0, ptr %a0)
declare i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aNameId_3e_2eAt_3ccompiler_2fsource_3aNameId_3e(ptr %v0, ptr %a0, i64 %a1)
@olang_loc_9d7678395160f3eb_aad45a645d2f7c27 = external constant [0 x i8]
@olang_loc_606655a3d6c9146a_8558b81c90083f76 = external constant [0 x i8]
@olang_loc_ca6a9ef64ba15071_9b37ed8e39b0c3dd = external constant [0 x i8]
@olang_loc_cbc626cb57e27c38_a58d4f769ca64c8c = external constant [0 x i8]
declare void @compiler_2fcond_3aEval_2ector(ptr %out, ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, { i64, ptr } %a0, ptr %a1, ptr %a2, ptr %a3)
declare %"compiler/cond:Decision" @compiler_2fcond_2ecompiler_2fcond_3aEval_2eLocal(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare void @compiler_2fnames_2ecompiler_2fnames_3aResolver_2emember(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1, ptr %a2, i32 %a3)
declare void @compiler_2fnames_2ecompiler_2fnames_3aResolver_2eclauses(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare void @compiler_2fnames_2ecompiler_2fnames_3aResolver_2epopSig(ptr %v0, ptr %a0)
declare void @compiler_2fnames_2ecompiler_2fnames_3aResolver_2ematchOf(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
@olang_loc_eb7a002d6449973_70bfc0171de666c7 = external constant [0 x i8]
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fnames_3araisedName_3e_2ector(ptr %v0, i64 %a0)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fnames_3araised_3e_2eLen_3ccompiler_2fnames_3araised_3e(ptr %v0, ptr %a0)
declare %"compiler/names:raised" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fnames_3araised_3e_2eAt_3ccompiler_2fnames_3araised_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i64 @compiler_2fnames_2eindexOfRaised(ptr %v0, ptr %a0, i32 %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fnames_3araisedName_3e_2eLen_H9e36587759e47da85a29e6c0abff1d1c(ptr %v0, ptr %a0)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fnames_3araisedName_3e_2ePus_Hd55e6ab57c5af931645f87a55858e9a4(ptr %v0, ptr %v1, ptr %a0, %"compiler/names:raisedName" %a1)
declare %"compiler/names:raisedName" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fnames_3araisedName_3e_2eAt__H16b49ab3dab0c5fe49005bf48ab18c1b(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fnames_3araisedName_3e_2eSet_H6810983465e8cb9e88422e8fd071646d(ptr %v0, ptr %v1, ptr %a0, i64 %a1, %"compiler/names:raisedName" %a2)
declare void @compiler_2fnames_2ecompiler_2fnames_3aResolver_2eforName(ptr %v0, ptr %a0, i32 %a1, i32 %a2)
@olang_loc_886f7d48bba75e1e_e325b650ab06e3ea = external constant [0 x i8]
declare void @compiler_2fnames_2ecompiler_2fnames_3aResolver_2ebranch(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
@olang_loc_dbd61287de33a2c5_4d29ffa31fdf1ff1 = external constant [0 x i8]
@olang_loc_bee2df1b257c0b70_a796ae201fef93fc = external constant [0 x i8]
declare %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v0, ptr %a0)
declare %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" @std_2fpair_3aPair_3cI64_2c_20I64_3e_2ector(ptr %v0, i64 %a0, i64 %a1)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H1308596c866d4be061d9da9113abde88(ptr %v0, ptr %a0, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %a1, i1 %a2)
@olang_loc_f74f5c810fb1384f_2035d8e6259ec36b = external constant [0 x i8]
@olang_loc_9a3445d364d03a02_c72e8fada9365de6 = external constant [0 x i8]
@olang_loc_f2359f321711c0e9_83213f8b98ca37cd = external constant [0 x i8]
@olang_loc_530cce065f124df4_4e8587782c204bb8 = external constant [0 x i8]
declare void @compiler_2fnames_2ecompiler_2fnames_3aResolver_2edropAll(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
@olang_loc_13e109869e44451a_84e972cbfcb81dee = external constant [0 x i8]
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aSpan_3e_2eLen_3ccompiler_2fsource_3aSpan_3e(ptr %v0, ptr %a0)
declare %"compiler/source:Span" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aSpan_3e_2eAt_3ccompiler_2fsource_3aSpan_3e(ptr %v0, ptr %a0, i64 %a1)
@olang_loc_29838351972cb384_2d79eff554670e58 = external constant [0 x i8]
declare i1 @compiler_2fnames_2eMentions(ptr %v0, ptr %v1, { i64, ptr } %a0, %"compiler/source:Span" %a1, { i64, ptr } %a2)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fnames_3aUnread_3e_2ePush_3ccompiler_2fnames_3aUnread_3e(ptr %v0, ptr %a0, %"compiler/names:Unread" %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fpair_3aPair_3ccompiler_2fsource__H04f1a4a88576bd1070c12151a5c28d38(ptr %v0, ptr %a0)
declare %"compiler/names:Entry" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fnames_3aEntry_3e_2eAt_3ccompiler_2fnames_3aEntry_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare %"compiler/names:Ref" @compiler_2fnames_2ecompiler_2fnames_3aResolver_2elookup(ptr %v0, ptr %a0, i32 %a1)
declare void @compiler_2fnames_2ecompiler_2fnames_3aResolver_2eread(ptr %v0, ptr %a0, %"compiler/names:Ref" %a1)
@olang_loc_8d565d6672144814_e400a405fc887290 = external constant [0 x i8]
@olang_loc_494c345e55bc9323_650b6e4eb2f730ef = external constant [0 x i8]
@olang_loc_9c997e82162b9a5a_f5a213d30049e536 = external constant [0 x i8]
declare i1 @compiler_2fcond_2ecompiler_2fcond_3aConsts_2eHas(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eShadowsFunction(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eShadowsGlobal(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eNoteDeclaredHere(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare void @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eNote(ptr %v0, ptr %v1, ptr %a0, i64 %a1, { i64, [3 x i64] } %a2, %"compiler/diagmsg:Msg" %a3)
declare i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fsource_3aNameId_2c_20compil_H6d33fbc050830e537410645e3c893b2c(ptr %v0, ptr %a0, i32 %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eShadowsBuildConst(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2ePreludeConstRedeclared(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eShadowsType(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eUnderscoreDeclared(ptr %v0)
declare void @compiler_2fnames_2ecompiler_2fnames_3aResolver_2edeclare(ptr %v0, ptr %a0, i32 %a1, %"compiler/source:Span" %a2, i1 %a3)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2ePut_3cI64_2c_20I64_3e(ptr %v0, ptr %a0, i64 %a1, i64 %a2)
declare void @compiler_2fnames_2ecompiler_2fnames_3aResolver_2eunknownHead(ptr %v0, ptr %a0, %"compiler/source:Span" %a1, i32 %a2)
declare i1 @std_2fprelude_2farray_2eArray_3ccompiler_2fast_3aCaseDecl_26_3e_2eSome_3ccompiler_2fast_3aCaseDecl_26_2c_20_3f_3e(ptr %v0, ptr %v1, { i64, ptr } %a0, ptr %a1c, ptr %a1e)
declare { i64, ptr } @compiler_2fnames_2ePayloadName(ptr %v0, ptr %v1, { i64, ptr } %a0)
@olang_loc_e812c7da9410078c_45e3614fe5b58650 = external constant [0 x i8]
@olang_loc_213a0f72a2f4c699_1bf9c43b33c337d = external constant [0 x i8]
declare %"compiler/ast:TypeDecl" @compiler_2fast_3aTypeDecl_2ector(ptr %v0, ptr %v1, ptr %v2, ptr %v3, i32 %a0, { i64, ptr } %a1, i1 %a2, ptr %a3, { i64, ptr } %a4, i32 %a5, i1 %a6)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %a0, i64 %a1)
declare void @compiler_2fnames_2ecompiler_2fnames_3aResolver_2esurveyBodies(ptr %v0, ptr %v1, ptr %a0, i64 %a1, { i64, ptr } %a2)
declare void @compiler_2fnames_2ecompiler_2fnames_3aResolver_2edeclareRaised(ptr %v0, ptr %v1, ptr %a0, i64 %a1, ptr %a2)
declare void @compiler_2fnames_2ecompiler_2fnames_3aResolver_2enearRaise(ptr %v0, ptr %v1, ptr %v2, ptr %a0, i64 %a1, %"compiler/names:raisedName" %a2, ptr %a3)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fnames_3araised_3e_2eClear_3ccompiler_2fnames_3araised_3e(ptr %v0, ptr %a0)
@olang_loc_fd3c9d14e235dbbe_bd11dfc23075d8e2 = external constant [0 x i8]
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fast_3aParam_26_3e_2ector(ptr %v0, i64 %a0)
@olang_loc_d4f6439c0cdbaaf3_789e3d3edc4da797 = external constant [0 x i8]
declare %"compiler/ast:Param" @compiler_2fast_3aParam_2ector(ptr %v0, ptr %v1, ptr %v2, ptr %v3, %"compiler/source:Span" %a0, i32 %a1, ptr %a2, ptr %a3, { i64, ptr } %a4)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fast_3aParam_26_3e_2ePush_3ccompiler_2fast_3aParam_26_3e(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eRaisedFieldUnnamed(ptr %v0)
@olang_loc_92553710e491898f_e436dfe457d9a8db = external constant [0 x i8]
declare { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fast_3aParam_26_3e_2eToArray_3ccompiler_2fast_3aParam_26_3e(ptr %v0, ptr %v1, ptr %a0)
declare void @compiler_2fnames_2ecompiler_2fnames_3aResolver_2eintroduceVar(ptr %v0, ptr %a0, %"compiler/source:Span" %a1, i32 %a2)
@olang_loc_248dea6bbb4b10fb_e7c6566d75989db7 = external constant [0 x i8]
@olang_loc_1bcb50306faa07e3_18a30ea25b6c39c7 = external constant [0 x i8]
declare void @compiler_2fnames_2ecompiler_2fnames_3aResolver_2etypeParams(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
@olang_loc_f7af4f17da675e9e_7adee505b4454aba = external constant [0 x i8]
@olang_loc_4b15e456fcf3a345_7adab712aa943e41 = external constant [0 x i8]
@olang_loc_2e22b0ea443c0bf0_cc72b894f0b6250c = external constant [0 x i8]
@olang_loc_668f2e502e7138cf_4506733ced80a77b = external constant [0 x i8]
@olang_loc_97417a283903a82_ac3e213ae41817f6 = external constant [0 x i8]
@olang_loc_6175710135d1c169_c21d56ac8dc09c5d = external constant [0 x i8]
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fnames_3alocal_3e_2eClear_3ccompiler_2fnames_3alocal_3e(ptr %v0, ptr %a0)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2eClear_3cI64_2c_20I64_3e(ptr %v0, ptr %a0)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fsource_3aNameId_2c_20I64_3e_Hb7e448baed1c9668005f7dc6325e5707(ptr %v0, ptr %a0)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fpair_3aPair_3ccompiler_2fsource__H263d9150b58237aac70cb39b886b10bb(ptr %v0, ptr %a0)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aSpan_3e_2eClear_3ccompiler_2fsource_3aSpan_3e(ptr %v0, ptr %a0)
declare i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aChar_2eIsDigit(i8 %a0)
@olang_loc_f16fd081e6fbed18_62e1963dfff5da0c = external constant [0 x i8]
declare { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eToUpper(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare i64 @compiler_2fmsgs_2eDistance(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %v0, ptr %a0)
declare { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare %"std/prelude/map:MapIter.bf5835bb10600fe6a7fc1da14a6360d9" @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fsource_3aNameId_2c_20I64_3e_Hda627d7755eecb5b938ca977110d67b2(ptr %v0, ptr %v1, ptr %a0)
declare { i32, %"std/prelude/map:MapEntry.ee791c76fa337c2e45b252e8964cf3ed" } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMapIter_3ccompiler_2fsource_3aNameId_2c_20I6_Hd1b8e91149b724287340e79c8c928444(ptr %v0, ptr %a0)
@olang_loc_1b8bfcf5c54b80a6_f112f6c40c79d862 = external constant [0 x i8]
@olang_loc_c04d895388279f34_2b6890ee7e2f3280 = external constant [0 x i8]
declare i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2eHas_3cI64_2c_20I64_3e(ptr %v0, ptr %a0, i64 %a1)
declare { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2eGet_3cI64_2c_20I64_3e(ptr %v0, ptr %a0, i64 %a1)
@olang_loc_c883e3bd313e2585_b0aaf26ba1585cf1 = external constant [0 x i8]
declare { i64, ptr } @compiler_2fsource_2ecompiler_2fsource_3aNames_2eText(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare i1 @std_2fos_2eExists(ptr %v0, { i64, ptr } %a0)
declare i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fsource_3aNameId_2c_20Bool_3_H8da9376267bda3f76393292be0e507b2(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2fnames_2ecompiler_2fnames_3aResolver_2eImportSaid(ptr %v0, ptr %a0, i32 %a1)
declare %"compiler/msgs:Nearest" @compiler_2fmsgs_3aNearest_2ector(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare void @compiler_2fmsgs_2ecompiler_2fmsgs_3aNearest_2eOffer(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare { i64, ptr } @compiler_2fmsgs_2ecompiler_2fmsgs_3aNearest_2eHint(ptr %v0, ptr %v1, ptr %a0)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eUnknownImport(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1)
declare i64 @compiler_2fnames_2ecompiler_2fnames_3aResolver_2ealiasModule(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare void @compiler_2fnames_2ecompiler_2fnames_3aResolver_2enotPrivate(ptr %v0, ptr %a0, i64 %a1, %"compiler/names:Ref" %a2, i32 %a3, %"compiler/source:Span" %a4)
@olang_loc_3ee91b253925870d_db61affc9a997151 = external constant [0 x i8]
declare i1 @compiler_2fnames_2ecompiler_2fnames_3aResolver_2eimportedType(ptr %v0, ptr %a0, i32 %a1)
declare %"std/pair:Pair.ee791c76fa337c2e45b252e8964cf3ed" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fpair_3aPair_3ccompiler_2fsource__Hd32f6fdf378a1d4c0e47f8552643012d(ptr %v0, ptr %a0, i64 %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eUnknownBuildName(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1)
declare void @compiler_2fnames_2ecompiler_2fnames_3aResolver_2edeclareRead(ptr %v0, ptr %a0, i32 %a1, %"compiler/source:Span" %a2, i1 %a3)
@olang_loc_c24d94d368b768d0_dc6a7a3b6fd73c94 = external constant [0 x i8]
@olang_loc_93653db47984ae2f_98605133537f87a3 = external constant [0 x i8]
@olang_loc_b66f44eae599aa7e_d468abe9cc136322 = external constant [0 x i8]
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fsource_3aNameId_2c_20Bool_3_H96b7de74ba8f33ba996281c879dd113a(ptr %v0, ptr %a0, i32 %a1, i1 %a2)
declare i32 @compiler_2fnames_2eexternDeclName(ptr %v0, ptr %a0)
@olang_loc_2e44b04c90256572_e4b951cec3f82206 = external constant [0 x i8]
@olang_loc_c27b9afc6f9460e7_c1ce40693c6669b = external constant [0 x i8]
declare { i64, ptr } @compiler_2fscan_2eLiteralText(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare { i64, ptr } @compiler_2fload_2eDeriveAlias(ptr %v0, ptr %v1, { i64, ptr } %a0)
@olang_loc_34778adaa3b7f78b_cd6f80cc1b0739cf = external constant [0 x i8]
@olang_loc_6dee9be1cc02e387_998545862ea10f93 = external constant [0 x i8]
declare i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aChar_2eIsLetter(i8 %a0)

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
