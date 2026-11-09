source_filename = "compiler_load.quick.ll"
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
%"compiler/cond:Consts" = type { %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" = type { { i64, ptr }, i64, i64 }
%"compiler/fetch:Fetcher" = type { { i64, ptr }, { i64, ptr }, { i64, ptr }, i1, i1, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/source:Names" = type { %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" = type { { i64, ptr }, { i64, ptr }, { i64, ptr }, i64, i64, i64 }
%"compiler/diag:Diagnostics" = type { i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, i1, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", { i64, [3 x i64] }, { i64, ptr }, { i64, ptr }, i1, i1 }
%"compiler/load:Loader" = type { { i64, ptr }, ptr, ptr, ptr, ptr, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", { i64, ptr }, { i64, ptr }, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", { i64, ptr }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"std/prelude/text:StringBuilder" = type { %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"std/prelude/text:LineIter" = type { { i64, ptr }, i64 }
%"std/os:FileInfo" = type { i32, i64, i64 }
%"compiler/load:Module" = type { { i64, ptr }, { i64, ptr }, { i64, ptr }, i1, i64, i1, ptr, ptr, { i64, ptr }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr, ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr, ptr, ptr, i1, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, { i64, ptr }, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"compiler/source:Span" = type { i32, i32 }
%"compiler/parse:Parser" = type { ptr, ptr, ptr, ptr, ptr, i64, i64, i32, i32, i32, i32, i1, i1, i1, i1, i1, i1, i1, i64, i1, i1, i64, i1, i64, i1, i32, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", { i64, ptr }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i1 }
%"compiler/cond:Scope" = type { i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/cond:Global" = type { { i64, ptr }, %"compiler/source:Span", i1, { i64, ptr }, ptr, i1 }
%"compiler/source:Source" = type { { i64, ptr }, { i64, ptr }, { i64, ptr } }
%"compiler/scan:Tokens" = type { { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr } }
%"compiler/token:Token" = type { i32, i8, i32, i32 }
%"compiler/load:Import" = type { %"compiler/source:Span", %"compiler/source:Span", { i64, ptr }, { i64, ptr }, i64, i64, { i64, ptr }, %"compiler/source:Span" }
%"std/pair:Pair.d0636885f2b44490dbc61e56fa468a20" = type { i64, i32 }
%"compiler/diagmsg:Msg" = type { i32, { i64, ptr }, { i64, ptr } }
%"compiler/ast:TopBranch" = type { %"compiler/source:Span", { i64, ptr }, i64 }
%"compiler/ast:TopIf" = type { ptr, ptr, ptr, ptr }
%"compiler/diag:Said" = type { { i64, ptr }, i64, i64, { i64, ptr } }
@G_2ecompiler_2fload_2eCImportFormat = constant <{ [8 x i8], ptr }> <{ [8 x i8] c"\10\00\00\00\00\00\00\00", ptr @G_2ecompiler_2fload_2eCImportFormat.k1 }>, align 8
@G_2ecompiler_2fload_2eCImportFormat.k1 = internal constant <{ [16 x i8] }> <{ [16 x i8] c"\6F\6C\61\6E\67\20\43\20\69\6D\70\6F\72\74\20\31" }>, align 8
@G_2ecompiler_2fload_2eNoBranch = constant <{ [8 x i8] }> <{ [8 x i8] c"\FF\FF\FF\FF\FF\FF\FF\FF" }>, align 8
@G_2ecompiler_2fload_2eNotYet = constant <{ [8 x i8] }> <{ [8 x i8] c"\FE\FF\FF\FF\FF\FF\FF\FF" }>, align 8
@G_2ecompiler_2fload_2ePending = constant <{ [8 x i8] }> <{ [8 x i8] c"\FD\FF\FF\FF\FF\FF\FF\FF" }>, align 8
define dso_local i1 @compiler_2fload_2eAliasShape(ptr %v0, { i64, ptr } %a0) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l1 = alloca { i64, ptr }
  %l2 = alloca i64
  %l3 = alloca i64
  %l4 = alloca i8
  %l8 = alloca i1
  %l9 = alloca { i64, ptr }
  %l11 = alloca i1
  %l12 = alloca i1
  %l13 = alloca { i64, ptr }
  %l25 = alloca { i64, ptr }
  %l29 = alloca i1
  %l30 = alloca i1
  %l32 = alloca i1
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
  store i1 true, ptr %l8, !tbaa !21
  br label %bb7
bb2:
  %t7 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t7, ptr %l9, !tbaa !27
  %t8 = getelementptr { i64, ptr }, ptr %l9, i32 0, i32 1
  %t9 = load ptr, ptr %t8, !tbaa !27
  %t10 = getelementptr i8, ptr %t9, i64 0
  %t11 = load i8, ptr %t10, !tbaa !32
  %t13 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aChar_2eIsLetter(i8 %t11)
  store i1 %t13, ptr %l11
  br label %bb3
bb3:
  %t14 = load i1, ptr %l11, !tbaa !21
  br i1 %t14, label %bb4, label %bb5
bb4:
  store i1 true, ptr %l12, !tbaa !21
  br label %bb6
bb5:
  %t15 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t15, ptr %l13, !tbaa !27
  %t16 = getelementptr { i64, ptr }, ptr %l13, i32 0, i32 1
  %t17 = load ptr, ptr %t16, !tbaa !27
  %t18 = getelementptr i8, ptr %t17, i64 0
  %t19 = load i8, ptr %t18, !tbaa !32
  %t21 = icmp eq i8 %t19, 95
  store i1 %t21, ptr %l12, !tbaa !21
  br label %bb6
bb6:
  %t23 = load i1, ptr %l12, !tbaa !21
  %t24 = xor i1 %t23, true
  store i1 %t24, ptr %l8, !tbaa !21
  br label %bb7
bb7:
  %t26 = load i1, ptr %l8, !tbaa !21
  br i1 %t26, label %bb8, label %bb9
bb8:
  store i1 false, ptr %rv
  br label %ret
bb9:
  br label %bb10
bb10:
  %t28 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t28, ptr %l1, !tbaa !27
  store i64 0, ptr %l2, !tbaa !24
  %t30 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t32 = extractvalue { i64, ptr } %t30, 0
  store i64 %t32, ptr %l3, !tbaa !24
  br label %bb11
bb11:
  %t34 = load i64, ptr %l2, !tbaa !24
  %t35 = load i64, ptr %l3, !tbaa !24
  %t38 = icmp slt i64 %t34, %t35
  %t40 = xor i1 %t38, true
  br i1 %t40, label %bb12, label %bb13
bb12:
  br label %bb27
bb13:
  br label %bb14
bb14:
  %t42 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t42, ptr %l25, !tbaa !27
  %t43 = load i64, ptr %l2, !tbaa !24
  %t45 = getelementptr { i64, ptr }, ptr %l25, i32 0, i32 1
  %t46 = load ptr, ptr %t45, !tbaa !27
  %t47 = getelementptr i8, ptr %t46, i64 %t43
  %t48 = load i8, ptr %t47, !tbaa !32
  store i8 %t48, ptr %l4, !tbaa !22
  %t50 = load i8, ptr %l4, !tbaa !22
  %t52 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aChar_2eIsLetter(i8 %t50)
  store i1 %t52, ptr %l29
  br label %bb15
bb15:
  %t53 = load i1, ptr %l29, !tbaa !21
  br i1 %t53, label %bb16, label %bb17
bb16:
  store i1 true, ptr %l30, !tbaa !21
  br label %bb19
bb17:
  %t54 = load i8, ptr %l4, !tbaa !22
  %t56 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aChar_2eIsDigit(i8 %t54)
  store i1 %t56, ptr %l32
  br label %bb18
bb18:
  %t57 = load i1, ptr %l32, !tbaa !21
  store i1 %t57, ptr %l30, !tbaa !21
  br label %bb19
bb19:
  %t58 = load i1, ptr %l30, !tbaa !21
  br i1 %t58, label %bb20, label %bb21
bb20:
  store i1 true, ptr %l33, !tbaa !21
  br label %bb22
bb21:
  %t59 = load i8, ptr %l4, !tbaa !22
  %t61 = icmp eq i8 %t59, 95
  store i1 %t61, ptr %l33, !tbaa !21
  br label %bb22
bb22:
  %t63 = load i1, ptr %l33, !tbaa !21
  %t64 = xor i1 %t63, true
  br i1 %t64, label %bb23, label %bb24
bb23:
  store i1 false, ptr %rv
  br label %ret
bb24:
  br label %bb25
bb25:
  br label %bb26
bb26:
  %t67 = load i64, ptr %l2, !tbaa !24
  %t69 = add i64 %t67, 1
  store i64 %t69, ptr %l2, !tbaa !24
  br label %bb11
bb27:
  store i1 true, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local { i64, ptr } @compiler_2fload_2eDeriveAlias(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l1 = alloca i64
  %l2 = alloca i64
  %l3 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i32
  %l14 = alloca i1
  %l16 = alloca i1
  %l23 = alloca i1
  %l25 = alloca i1
  %l26 = alloca i1
  %l28 = alloca i1
  %l31 = alloca { i64, ptr }
  %l32 = alloca i64
  %l33 = alloca i64
  %l34 = alloca i64
  %s0 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  store { i64, ptr } %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t3 = call { i32, i64 } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eFindLast(ptr %v0, ptr %s0, { i64, ptr } %t1, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d0, i32 0, i32 1) })
  %t4 = extractvalue { i32, i64 } %t3, 1
  %t5 = extractvalue { i32, i64 } %t3, 0
  store i32 %t5, ptr %l6
  %t6 = icmp ne i32 %t5, 0
  br i1 %t6, label %bb2, label %ok.7, !prof !99
ok.7:
  store i64 %t4, ptr %l5
  br label %bb1
bb1:
  %t8 = load i64, ptr %l5, !tbaa !24
  store i64 %t8, ptr %l3, !tbaa !24
  br label %bb4
bb2:
  br label %bb3
bb3:
  store i64 -1, ptr %l3, !tbaa !24
  br label %bb4
bb4:
  %t9 = load i64, ptr %l3, !tbaa !24
  %t10 = add i64 %t9, 1
  store i64 %t10, ptr %l1, !tbaa !24
  %t12 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t14 = extractvalue { i64, ptr } %t12, 0
  store i64 %t14, ptr %l2, !tbaa !24
  %t16 = load i64, ptr %l2, !tbaa !24
  %t17 = load i64, ptr %l1, !tbaa !24
  %t20 = sub i64 %t16, %t17
  %t22 = icmp sge i64 %t20, 6
  br i1 %t22, label %bb5, label %bb6
bb5:
  %t24 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t26 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEndsWith(ptr %v0, ptr %s0, { i64, ptr } %t24, { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d1, i32 0, i32 1) })
  store i1 %t26, ptr %l16
  br label %bb7
bb6:
  store i1 false, ptr %l14, !tbaa !21
  br label %bb8
bb7:
  %t27 = load i1, ptr %l16, !tbaa !21
  store i1 %t27, ptr %l14, !tbaa !21
  br label %bb8
bb8:
  %t28 = load i1, ptr %l14, !tbaa !21
  br i1 %t28, label %bb9, label %bb10
bb9:
  %t29 = load i64, ptr %l2, !tbaa !24
  %t31 = sub i64 %t29, 6
  store i64 %t31, ptr %l2, !tbaa !24
  br label %bb11
bb10:
  br label %bb11
bb11:
  %t33 = load i64, ptr %l2, !tbaa !24
  %t34 = load i64, ptr %l1, !tbaa !24
  %t37 = sub i64 %t33, %t34
  %t39 = icmp sge i64 %t37, 2
  br i1 %t39, label %bb12, label %bb13
bb12:
  %t41 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t43 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEndsWith(ptr %v0, ptr %s0, { i64, ptr } %t41, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d2, i32 0, i32 1) })
  store i1 %t43, ptr %l25
  br label %bb14
bb13:
  store i1 false, ptr %l23, !tbaa !21
  br label %bb19
bb14:
  %t44 = load i1, ptr %l25, !tbaa !21
  br i1 %t44, label %bb15, label %bb16
bb15:
  store i1 true, ptr %l26, !tbaa !21
  br label %bb18
bb16:
  %t45 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t47 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEndsWith(ptr %v0, ptr %s0, { i64, ptr } %t45, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d3, i32 0, i32 1) })
  store i1 %t47, ptr %l28
  br label %bb17
bb17:
  %t48 = load i1, ptr %l28, !tbaa !21
  store i1 %t48, ptr %l26, !tbaa !21
  br label %bb18
bb18:
  %t49 = load i1, ptr %l26, !tbaa !21
  store i1 %t49, ptr %l23, !tbaa !21
  br label %bb19
bb19:
  %t50 = load i1, ptr %l23, !tbaa !21
  br i1 %t50, label %bb20, label %bb21
bb20:
  %t51 = load i64, ptr %l2, !tbaa !24
  %t53 = sub i64 %t51, 2
  store i64 %t53, ptr %l2, !tbaa !24
  br label %bb22
bb21:
  br label %bb22
bb22:
  %t55 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t55, ptr %l31, !tbaa !27
  %t56 = load i64, ptr %l1, !tbaa !24
  store i64 %t56, ptr %l32, !tbaa !24
  %t57 = load i64, ptr %l2, !tbaa !24
  store i64 %t57, ptr %l33, !tbaa !24
  %t58 = load { i64, ptr }, ptr %l31, !tbaa !27
  %t59 = extractvalue { i64, ptr } %t58, 0
  store i64 %t59, ptr %l34, !tbaa !24
  %t60 = load i64, ptr %l32, !tbaa !24
  %t61 = icmp sge i64 %t60, 0
  br i1 %t61, label %bb23, label %bb24
bb23:
  %t63 = load i64, ptr %l32, !tbaa !24
  %t64 = load i64, ptr %l33, !tbaa !24
  %t65 = icmp sle i64 %t63, %t64
  br i1 %t65, label %bb25, label %bb26
bb24:
  call void @__olang_check_failed(ptr @olang_loc_30f594fd977814cf_401937ed3e69cedb)
  unreachable
bb25:
  %t67 = load i64, ptr %l33, !tbaa !24
  %t68 = load i64, ptr %l34, !tbaa !24
  %t69 = icmp sle i64 %t67, %t68
  br i1 %t69, label %bb27, label %bb28
bb26:
  call void @__olang_check_failed(ptr @olang_loc_30f594fd977814cf_401937ed3e69cedb)
  unreachable
bb27:
  %t71 = getelementptr { i64, ptr }, ptr %l31, i32 0, i32 1
  %t72 = load ptr, ptr %t71, !tbaa !27
  %t73 = load i64, ptr %l32, !tbaa !24
  %t74 = load i64, ptr %l33, !tbaa !24
  %t75 = getelementptr i8, ptr %t72, i64 %t73
  %t76 = sub i64 %t74, %t73
  %t77 = insertvalue { i64, ptr } undef, i64 %t76, 0
  %t78 = insertvalue { i64, ptr } %t77, ptr %t75, 1
  call void @__olang_scope_close(ptr %s0)
  store { i64, ptr } %t78, ptr %rv
  br label %ret
bb28:
  call void @__olang_check_failed(ptr @olang_loc_30f594fd977814cf_401937ed3e69cedb)
  unreachable
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local { i64, ptr } @compiler_2fload_2eErrQualifier(ptr %v0, ptr %v1, { i64, ptr } %a0, i1 %a1) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l4 = alloca i1
  %l6 = alloca i1
  %l7 = alloca { i64, ptr }
  %l8 = alloca { i64, ptr }
  %l9 = alloca i64
  %l10 = alloca { i64, ptr }
  %l11 = alloca i64
  %l13 = alloca i64
  %l14 = alloca i32
  %l15 = alloca { i64, ptr }
  %l17 = alloca i64
  %l20 = alloca i64
  %l21 = alloca i64
  %s0 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  store { i64, ptr } %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  br i1 %a1, label %bb1, label %bb2
bb1:
  store i1 true, ptr %l4, !tbaa !21
  br label %bb4
bb2:
  %t3 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t5 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %v0, ptr %s0, { i64, ptr } %t3, { i64, ptr } { i64 11, ptr getelementptr inbounds (<{ i64, [11 x i8] }>, ptr @.d4, i32 0, i32 1) })
  store i1 %t5, ptr %l6
  br label %bb3
bb3:
  %t6 = load i1, ptr %l6, !tbaa !21
  store i1 %t6, ptr %l4, !tbaa !21
  br label %bb4
bb4:
  %t7 = load i1, ptr %l4, !tbaa !21
  br i1 %t7, label %bb5, label %bb6
bb5:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d5, i32 0, i32 1) }, ptr %l7, !tbaa !27
  %t8 = load { i64, ptr }, ptr %l7, !tbaa !27
  store { i64, ptr } %t8, ptr %l8, !tbaa !27
  %t9 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t10 = extractvalue { i64, ptr } %t9, 0
  store i64 %t10, ptr %l9, !tbaa !24
  %t11 = load i64, ptr %l9, !tbaa !24
  %t12 = mul i64 %t11, 1
  %t13 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t12)
  %t14 = insertvalue { i64, ptr } undef, i64 %t11, 0
  %t15 = insertvalue { i64, ptr } %t14, ptr %t13, 1
  store { i64, ptr } %t15, ptr %l10, !tbaa !27
  %t16 = getelementptr { i64, ptr }, ptr %l10, i32 0, i32 1
  %t17 = load ptr, ptr %t16, !tbaa !27
  %t18 = getelementptr { i64, ptr }, ptr %l8, i32 0, i32 1
  %t19 = load ptr, ptr %t18, !tbaa !27
  %t20 = load i64, ptr %l9, !tbaa !24
  %t21 = mul i64 %t20, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t17, ptr %t19, i64 %t21, i1 false)
  %t22 = load { i64, ptr }, ptr %l10, !tbaa !27
  store { i64, ptr } %t22, ptr %l8, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  %t23 = load { i64, ptr }, ptr %l8, !tbaa !27
  store { i64, ptr } %t23, ptr %rv
  br label %ret
bb6:
  br label %bb7
bb7:
  %t24 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t26 = call { i32, i64 } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eFindLast(ptr %v0, ptr %s0, { i64, ptr } %t24, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d6, i32 0, i32 1) })
  %t27 = extractvalue { i32, i64 } %t26, 1
  %t28 = extractvalue { i32, i64 } %t26, 0
  store i32 %t28, ptr %l14
  %t29 = icmp ne i32 %t28, 0
  br i1 %t29, label %bb9, label %ok.30, !prof !99
ok.30:
  store i64 %t27, ptr %l13
  br label %bb8
bb8:
  %t31 = load i64, ptr %l13, !tbaa !24
  store i64 %t31, ptr %l11, !tbaa !24
  br label %bb11
bb9:
  br label %bb10
bb10:
  store i64 -1, ptr %l11, !tbaa !24
  br label %bb11
bb11:
  %t32 = load i64, ptr %l11, !tbaa !24
  %t33 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t33, ptr %l15, !tbaa !27
  %t36 = add i64 %t32, 1
  store i64 %t36, ptr %l17, !tbaa !24
  %t37 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t40 = extractvalue { i64, ptr } %t37, 0
  store i64 %t40, ptr %l20, !tbaa !24
  %t41 = load { i64, ptr }, ptr %l15, !tbaa !27
  %t42 = extractvalue { i64, ptr } %t41, 0
  store i64 %t42, ptr %l21, !tbaa !24
  %t43 = load i64, ptr %l17, !tbaa !24
  %t44 = icmp sge i64 %t43, 0
  br i1 %t44, label %bb12, label %bb13
bb12:
  %t46 = load i64, ptr %l17, !tbaa !24
  %t47 = load i64, ptr %l20, !tbaa !24
  %t48 = icmp sle i64 %t46, %t47
  br i1 %t48, label %bb14, label %bb15
bb13:
  call void @__olang_check_failed(ptr @olang_loc_1c8bacfe99267df9_69ae7b78a686d77d)
  unreachable
bb14:
  %t50 = load i64, ptr %l20, !tbaa !24
  %t51 = load i64, ptr %l21, !tbaa !24
  %t52 = icmp sle i64 %t50, %t51
  br i1 %t52, label %bb16, label %bb17
bb15:
  call void @__olang_check_failed(ptr @olang_loc_1c8bacfe99267df9_69ae7b78a686d77d)
  unreachable
bb16:
  %t54 = getelementptr { i64, ptr }, ptr %l15, i32 0, i32 1
  %t55 = load ptr, ptr %t54, !tbaa !27
  %t56 = load i64, ptr %l17, !tbaa !24
  %t57 = load i64, ptr %l20, !tbaa !24
  %t58 = getelementptr i8, ptr %t55, i64 %t56
  %t59 = sub i64 %t57, %t56
  %t60 = insertvalue { i64, ptr } undef, i64 %t59, 0
  %t61 = insertvalue { i64, ptr } %t60, ptr %t58, 1
  %t63 = extractvalue { i64, ptr } %t61, 1
  %t64 = extractvalue { i64, ptr } %t61, 0
  %t65 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d7, i32 0, i32 1) }, 1
  %t66 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d7, i32 0, i32 1) }, 0
  %t67 = add i64 %t64, %t66
  %t68 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t67)
  call void @olang_textcopy(ptr %t68, ptr %t63, i64 %t64)
  %t69 = getelementptr i8, ptr %t68, i64 %t64
  call void @olang_textcopy(ptr %t69, ptr %t65, i64 %t66)
  %t70 = insertvalue { i64, ptr } undef, i64 %t67, 0
  %t71 = insertvalue { i64, ptr } %t70, ptr %t68, 1
  call void @__olang_scope_close(ptr %s0)
  store { i64, ptr } %t71, ptr %rv
  br label %ret
bb17:
  call void @__olang_check_failed(ptr @olang_loc_1c8bacfe99267df9_69ae7b78a686d77d)
  unreachable
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local i1 @compiler_2fload_2eLinkName(ptr %v0, { i64, ptr } %a0) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l1 = alloca { i64, ptr }
  %l2 = alloca i64
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i8
  %l18 = alloca { i64, ptr }
  %l22 = alloca i1
  %l23 = alloca i1
  %l25 = alloca i1
  %l28 = alloca i1
  %l31 = alloca i1
  %l34 = alloca i1
  %l37 = alloca i1
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
  store { i64, ptr } %t8, ptr %l1, !tbaa !27
  store i64 0, ptr %l2, !tbaa !24
  %t10 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t12 = extractvalue { i64, ptr } %t10, 0
  store i64 %t12, ptr %l3, !tbaa !24
  br label %bb4
bb4:
  %t14 = load i64, ptr %l2, !tbaa !24
  %t15 = load i64, ptr %l3, !tbaa !24
  %t18 = icmp slt i64 %t14, %t15
  %t20 = xor i1 %t18, true
  br i1 %t20, label %bb5, label %bb6
bb5:
  br label %bb32
bb6:
  br label %bb7
bb7:
  %t22 = load i64, ptr %l2, !tbaa !24
  store i64 %t22, ptr %l4, !tbaa !24
  %t24 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t24, ptr %l18, !tbaa !27
  %t25 = load i64, ptr %l2, !tbaa !24
  %t27 = getelementptr { i64, ptr }, ptr %l18, i32 0, i32 1
  %t28 = load ptr, ptr %t27, !tbaa !27
  %t29 = getelementptr i8, ptr %t28, i64 %t25
  %t30 = load i8, ptr %t29, !tbaa !32
  store i8 %t30, ptr %l5, !tbaa !22
  %t32 = load i8, ptr %l5, !tbaa !22
  %t34 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aChar_2eIsLetter(i8 %t32)
  store i1 %t34, ptr %l22
  br label %bb8
bb8:
  %t35 = load i1, ptr %l22, !tbaa !21
  br i1 %t35, label %bb9, label %bb10
bb9:
  store i1 true, ptr %l23, !tbaa !21
  br label %bb12
bb10:
  %t36 = load i8, ptr %l5, !tbaa !22
  %t38 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aChar_2eIsDigit(i8 %t36)
  store i1 %t38, ptr %l25
  br label %bb11
bb11:
  %t39 = load i1, ptr %l25, !tbaa !21
  store i1 %t39, ptr %l23, !tbaa !21
  br label %bb12
bb12:
  %t40 = load i1, ptr %l23, !tbaa !21
  br i1 %t40, label %bb13, label %bb14
bb13:
  br label %bb31
bb14:
  br label %bb15
bb15:
  %t41 = load i64, ptr %l4, !tbaa !24
  %t43 = icmp eq i64 %t41, 0
  br i1 %t43, label %bb16, label %bb17
bb16:
  store i1 true, ptr %l28, !tbaa !21
  br label %bb27
bb17:
  %t45 = load i8, ptr %l5, !tbaa !22
  %t47 = icmp ne i8 %t45, 95
  br i1 %t47, label %bb18, label %bb19
bb18:
  %t49 = load i8, ptr %l5, !tbaa !22
  %t51 = icmp ne i8 %t49, 45
  store i1 %t51, ptr %l31, !tbaa !21
  br label %bb20
bb19:
  store i1 false, ptr %l31, !tbaa !21
  br label %bb20
bb20:
  %t53 = load i1, ptr %l31, !tbaa !21
  br i1 %t53, label %bb21, label %bb22
bb21:
  %t54 = load i8, ptr %l5, !tbaa !22
  %t56 = icmp ne i8 %t54, 43
  store i1 %t56, ptr %l34, !tbaa !21
  br label %bb23
bb22:
  store i1 false, ptr %l34, !tbaa !21
  br label %bb23
bb23:
  %t58 = load i1, ptr %l34, !tbaa !21
  br i1 %t58, label %bb24, label %bb25
bb24:
  %t59 = load i8, ptr %l5, !tbaa !22
  %t61 = icmp ne i8 %t59, 46
  store i1 %t61, ptr %l37, !tbaa !21
  br label %bb26
bb25:
  store i1 false, ptr %l37, !tbaa !21
  br label %bb26
bb26:
  %t63 = load i1, ptr %l37, !tbaa !21
  store i1 %t63, ptr %l28, !tbaa !21
  br label %bb27
bb27:
  %t64 = load i1, ptr %l28, !tbaa !21
  br i1 %t64, label %bb28, label %bb29
bb28:
  store i1 false, ptr %rv
  br label %ret
bb29:
  br label %bb30
bb30:
  br label %bb31
bb31:
  %t66 = load i64, ptr %l2, !tbaa !24
  %t68 = add i64 %t66, 1
  store i64 %t68, ptr %l2, !tbaa !24
  br label %bb4
bb32:
  store i1 true, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local void @compiler_2fload_2eLoader_2etest(ptr %out, ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %lp1 = alloca ptr
  %l2 = alloca %"compiler/cond:Consts"
  %l4 = alloca ptr
  %l5 = alloca i64
  %l7 = alloca { i64, ptr }
  %l8 = alloca i64
  %l13 = alloca %"compiler/fetch:Fetcher"
  %l14 = alloca ptr
  %l15 = alloca i64
  %l17 = alloca %"compiler/source:Names"
  %l18 = alloca ptr
  %l19 = alloca %"compiler/diag:Diagnostics"
  %l21 = alloca %"compiler/load:Loader"
  %s0 = alloca %olang.scope
  %t1 = alloca %"compiler/cond:Consts", align 8
  %t44 = alloca %"compiler/fetch:Fetcher", align 8
  %t66 = alloca %"compiler/diag:Diagnostics", align 8
  %t68 = alloca %"compiler/load:Loader", align 8
  store { i64, ptr } %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  call void @compiler_2fcond_3aConsts_2ector(ptr %t1, ptr %v1)
  call void @llvm.memmove.p0.p0.i64(ptr %l2, ptr %t1, i64 224, i1 false)
  br label %bb1
bb1:
  %t2 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 224, i64 8)
  store ptr %t2, ptr %lp1
  %t3 = load ptr, ptr %lp1
  call void @llvm.memmove.p0.p0.i64(ptr %t3, ptr %l2, i64 224, i1 false)
  %t4 = load ptr, ptr %lp1
  call void @compiler_2fcond_2ecompiler_2fcond_3aConsts_2eBuiltins(ptr %v1, ptr %s0, ptr %s0, ptr %s0, ptr %t4, { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d8, i32 0, i32 1) }, { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d9, i32 0, i32 1) }, { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d10, i32 0, i32 1) }, i64 128, i64 0, i1 false, i1 false, i1 false)
  br label %bb2
bb2:
  %t6 = load ptr, ptr %lp1
  store ptr %t6, ptr %l4, !tbaa !29
  %t7 = ptrtoint ptr %v1 to i64
  store i64 %t7, ptr %l5, !tbaa !24
  %t8 = load i1, ptr @olang_2esole_2ecompiler_2fload_3aLoader_2e2
  br i1 %t8, label %bb3, label %bb4
bb3:
  %t10 = call ptr @__olang_region_make(ptr %v1)
  %t11 = ptrtoint ptr %t10 to i64
  store i64 %t11, ptr %l5, !tbaa !24
  br label %bb4
bb4:
  %t12 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t12, ptr %l7, !tbaa !27
  %t13 = load i64, ptr %l5
  %t14 = inttoptr i64 %t13 to ptr
  %t15 = ptrtoint ptr %t14 to i64
  store i64 %t15, ptr %l8, !tbaa !24
  %t16 = load i1, ptr @olang_2esole_2ecompiler_2ffetch_3aFetcher_2e1
  br i1 %t16, label %bb5, label %bb6
bb5:
  %t18 = load i64, ptr %l5
  %t19 = inttoptr i64 %t18 to ptr
  %t20 = call ptr @__olang_region_make(ptr %t19)
  %t21 = ptrtoint ptr %t20 to i64
  store i64 %t21, ptr %l8, !tbaa !24
  br label %bb6
bb6:
  %t22 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t24 = extractvalue { i64, ptr } %t22, 1
  %t25 = extractvalue { i64, ptr } %t22, 0
  %t26 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d11, i32 0, i32 1) }, 1
  %t27 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d11, i32 0, i32 1) }, 0
  %t28 = add i64 %t25, %t27
  %t29 = load i64, ptr %l8
  %t30 = inttoptr i64 %t29 to ptr
  %t31 = call ptr @__olang_scope_alloc(ptr %t30, i64 %t28)
  call void @olang_textcopy(ptr %t31, ptr %t24, i64 %t25)
  %t32 = getelementptr i8, ptr %t31, i64 %t25
  call void @olang_textcopy(ptr %t32, ptr %t26, i64 %t27)
  %t33 = insertvalue { i64, ptr } undef, i64 %t28, 0
  %t34 = insertvalue { i64, ptr } %t33, ptr %t31, 1
  %t36 = load i64, ptr %l8
  %t37 = inttoptr i64 %t36 to ptr
  %t38 = extractvalue { i64, ptr } %t34, 0
  %t39 = extractvalue { i64, ptr } %t34, 1
  %t40 = mul i64 %t38, 1
  %t41 = call ptr @__olang_scope_alloc(ptr %t37, i64 %t40)
  call void @llvm.memcpy.p0.p0.i64(ptr %t41, ptr %t39, i64 %t40, i1 false)
  %t42 = insertvalue { i64, ptr } undef, i64 %t38, 0
  %t43 = insertvalue { i64, ptr } %t42, ptr %t41, 1
  %t45 = load i64, ptr %l5
  %t46 = inttoptr i64 %t45 to ptr
  %t47 = load i64, ptr %l5
  %t48 = inttoptr i64 %t47 to ptr
  %t49 = load { i64, ptr }, ptr %l7, !tbaa !27
  call void @compiler_2ffetch_3aFetcher_2ector(ptr %t44, ptr %v0, ptr %t46, ptr %v1, ptr %t48, { i64, ptr } %t49, { i64, ptr } %t43, { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d12, i32 0, i32 1) }, i1 false, i1 true)
  call void @llvm.memmove.p0.p0.i64(ptr %l13, ptr %t44, i64 184, i1 false)
  br label %bb7
bb7:
  %t51 = load i64, ptr %l5
  %t52 = inttoptr i64 %t51 to ptr
  %t53 = call ptr @__olang_scope_alloc_a(ptr %t52, i64 184, i64 8)
  call void @llvm.memmove.p0.p0.i64(ptr %t53, ptr %l13, i64 184, i1 false)
  store ptr %t53, ptr %l14, !tbaa !29
  %t54 = ptrtoint ptr %v1 to i64
  store i64 %t54, ptr %l15, !tbaa !24
  %t55 = load i1, ptr @olang_2esole_2ecompiler_2fload_3aLoader_2e3
  br i1 %t55, label %bb8, label %bb9
bb8:
  %t57 = call ptr @__olang_region_make(ptr %v1)
  %t58 = ptrtoint ptr %t57 to i64
  store i64 %t58, ptr %l15, !tbaa !24
  br label %bb9
bb9:
  %t59 = load i64, ptr %l15
  %t60 = inttoptr i64 %t59 to ptr
  %t61 = call %"compiler/source:Names" @compiler_2fsource_3aNames_2ector(ptr %t60)
  store %"compiler/source:Names" %t61, ptr %l17
  br label %bb10
bb10:
  %t62 = load %"compiler/source:Names", ptr %l17
  %t63 = load i64, ptr %l15
  %t64 = inttoptr i64 %t63 to ptr
  %t65 = call ptr @__olang_scope_alloc_a(ptr %t64, i64 104, i64 8)
  store %"compiler/source:Names" %t62, ptr %t65
  store ptr %t65, ptr %l18, !tbaa !29
  call void @compiler_2fdiag_3aDiagnostics_2ector(ptr %t66, ptr %v1, i1 false)
  call void @llvm.memmove.p0.p0.i64(ptr %l19, ptr %t66, i64 544, i1 false)
  br label %bb11
bb11:
  %t67 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 544, i64 8)
  call void @llvm.memmove.p0.p0.i64(ptr %t67, ptr %l19, i64 544, i1 false)
  %t69 = load ptr, ptr %l4, !tbaa !29
  %t70 = load ptr, ptr %l14, !tbaa !29
  %t71 = load ptr, ptr %l18, !tbaa !29
  call void @compiler_2fload_3aLoader_2ector(ptr %t68, ptr %v1, ptr %v1, ptr %v1, ptr %v1, ptr %v1, ptr %v1, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d13, i32 0, i32 1) }, ptr %t69, ptr %t70, ptr %t71, ptr %t67)
  call void @llvm.memmove.p0.p0.i64(ptr %l21, ptr %t68, i64 680, i1 false)
  br label %bb12
bb12:
  call void @__olang_scope_close(ptr %s0)
  call void @llvm.memmove.p0.p0.i64(ptr %out, ptr %l21, i64 680, i1 false)
  br label %ret
ret:
  ret void
}

define dso_local { i64, ptr } @compiler_2fload_2eNormalize(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l1 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l2 = alloca { i64, ptr }
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca { i64, ptr }
  %l6 = alloca %"std/prelude/text:StringBuilder"
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca i64
  %l12 = alloca i64
  %l13 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l15 = alloca { i64, ptr }
  %l22 = alloca { i64, ptr }
  %l26 = alloca i1
  %l27 = alloca i1
  %l29 = alloca i1
  %l31 = alloca i1
  %l32 = alloca i1
  %l34 = alloca i64
  %l36 = alloca i1
  %l37 = alloca ptr
  %l39 = alloca i64
  %l41 = alloca { i64, ptr }
  %l42 = alloca i1
  %l44 = alloca { i64, ptr }
  %l46 = alloca { i64, ptr }
  %l47 = alloca i32
  %l53 = alloca %"std/prelude/text:StringBuilder"
  %l55 = alloca i1
  %l58 = alloca i64
  %l62 = alloca i64
  %l65 = alloca i64
  %l86 = alloca ptr
  %l89 = alloca { i64, ptr }
  %l93 = alloca i64
  %l95 = alloca { i64, ptr }
  %l96 = alloca { i64, ptr }
  %l99 = alloca { i64, ptr }
  %l100 = alloca i64
  %l101 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %s2 = alloca %olang.scope
  %s4 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  store { i64, ptr } %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2ector(ptr %s0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1, ptr %l13
  br label %bb1
bb1:
  %t2 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l13
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t2, ptr %l1
  %t3 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t5 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eSplit(ptr %v0, ptr %v0, ptr %v0, { i64, ptr } %t3, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d14, i32 0, i32 1) })
  store { i64, ptr } %t5, ptr %l15
  br label %bb2
bb2:
  %t6 = load { i64, ptr }, ptr %l15, !tbaa !27
  store { i64, ptr } %t6, ptr %l2, !tbaa !27
  store i64 0, ptr %l3, !tbaa !24
  %t7 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t9 = extractvalue { i64, ptr } %t7, 0
  store i64 %t9, ptr %l4, !tbaa !24
  br label %bb3
bb3:
  store %olang.scope zeroinitializer, ptr %s2
  %t11 = load i64, ptr %l3, !tbaa !24
  %t12 = load i64, ptr %l4, !tbaa !24
  %t15 = icmp slt i64 %t11, %t12
  %t17 = xor i1 %t15, true
  br i1 %t17, label %bb4, label %bb5
bb4:
  call void @__olang_scope_close(ptr %s2)
  br label %bb37
bb5:
  br label %bb6
bb6:
  %t19 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t19, ptr %l22, !tbaa !27
  %t20 = load i64, ptr %l3, !tbaa !24
  %t22 = getelementptr { i64, ptr }, ptr %l22, i32 0, i32 1
  %t23 = load ptr, ptr %t22, !tbaa !27
  %t24 = getelementptr { i64, ptr }, ptr %t23, i64 %t20
  %t25 = load { i64, ptr }, ptr %t24, !tbaa !37
  store { i64, ptr } %t25, ptr %l5, !tbaa !27
  %t27 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t29 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s2, { i64, ptr } %t27, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d15, i32 0, i32 1) })
  store i1 %t29, ptr %l26
  br label %bb7
bb7:
  %t30 = load i1, ptr %l26, !tbaa !21
  br i1 %t30, label %bb8, label %bb9
bb8:
  store i1 true, ptr %l27, !tbaa !21
  br label %bb11
bb9:
  %t31 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t33 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s2, { i64, ptr } %t31, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d16, i32 0, i32 1) })
  store i1 %t33, ptr %l29
  br label %bb10
bb10:
  %t34 = load i1, ptr %l29, !tbaa !21
  store i1 %t34, ptr %l27, !tbaa !21
  br label %bb11
bb11:
  %t35 = load i1, ptr %l27, !tbaa !21
  br i1 %t35, label %bb12, label %bb13
bb12:
  call void @__olang_scope_close(ptr %s2)
  br label %bb36
bb13:
  br label %bb14
bb14:
  %t36 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t38 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s2, { i64, ptr } %t36, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d17, i32 0, i32 1) })
  store i1 %t38, ptr %l31
  br label %bb15
bb15:
  %t39 = load i1, ptr %l31, !tbaa !21
  br i1 %t39, label %bb16, label %bb17
bb16:
  %t41 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %s0, ptr %l1)
  store i64 %t41, ptr %l34
  br label %bb18
bb17:
  store i1 false, ptr %l32, !tbaa !21
  br label %bb19
bb18:
  %t42 = load i64, ptr %l34, !tbaa !24
  %t43 = icmp sgt i64 %t42, 0
  store i1 %t43, ptr %l32, !tbaa !21
  br label %bb19
bb19:
  %t45 = load i1, ptr %l32, !tbaa !21
  br i1 %t45, label %bb20, label %bb21
bb20:
  store ptr %l1, ptr %l37, !tbaa !29
  %t47 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %s0, ptr %l1)
  store i64 %t47, ptr %l39
  br label %bb22
bb21:
  store i1 false, ptr %l36, !tbaa !21
  br label %bb25
bb22:
  %t48 = load i64, ptr %l39, !tbaa !24
  %t49 = sub i64 %t48, 1
  %t50 = load ptr, ptr %l37, !tbaa !29
  %t52 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %s0, ptr %s0, ptr %t50, i64 %t49)
  store { i64, ptr } %t52, ptr %l41
  br label %bb23
bb23:
  %t53 = load { i64, ptr }, ptr %l41, !tbaa !27
  %t54 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %s2, { i64, ptr } %t53, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d18, i32 0, i32 1) })
  store i1 %t54, ptr %l42
  br label %bb24
bb24:
  %t55 = load i1, ptr %l42, !tbaa !21
  %t56 = xor i1 %t55, true
  store i1 %t56, ptr %l36, !tbaa !21
  br label %bb25
bb25:
  %t58 = load i1, ptr %l36, !tbaa !21
  br i1 %t58, label %bb26, label %bb27
bb26:
  store %olang.scope zeroinitializer, ptr %s4
  %t60 = call { i32, { i64, ptr } } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_Hdc04e7543082eec80486670259c0789b(ptr %s0, ptr %s4, ptr %l1)
  %t61 = extractvalue { i32, { i64, ptr } } %t60, 1
  %t62 = extractvalue { i32, { i64, ptr } } %t60, 0
  store i32 %t62, ptr %l47
  %t63 = icmp ne i32 %t62, 0
  br i1 %t63, label %bb29, label %ok.64, !prof !99
ok.64:
  store { i64, ptr } %t61, ptr %l46
  br label %bb28
bb27:
  br label %bb34
bb28:
  %t65 = load { i64, ptr }, ptr %l46, !tbaa !27
  store { i64, ptr } %t65, ptr %l44, !tbaa !27
  %t66 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1
  br i1 %t66, label %bb31, label %bb32
bb29:
  br label %bb30
bb30:
  br label %bb33
bb31:
  %t68 = load { i64, ptr }, ptr %l44
  %t69 = extractvalue { i64, ptr } %t68, 1
  call void @__olang_region_release(ptr %t69)
  store { i64, ptr } zeroinitializer, ptr %l44
  br label %bb32
bb32:
  br label %bb33
bb33:
  call void @__olang_scope_close(ptr %s4)
  call void @__olang_scope_close(ptr %s2)
  br label %bb36
bb34:
  %t70 = load { i64, ptr }, ptr %l5, !tbaa !27
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %s0, ptr %v0, ptr %l1, { i64, ptr } %t70)
  br label %bb35
bb35:
  call void @__olang_scope_close(ptr %s2)
  br label %bb36
bb36:
  %t73 = load i64, ptr %l3, !tbaa !24
  %t75 = add i64 %t73, 1
  store i64 %t75, ptr %l3, !tbaa !24
  br label %bb3
bb37:
  %t77 = call %"std/prelude/text:StringBuilder" @std_2fprelude_2ftext_3aStringBuilder_2ector(ptr %s0)
  store %"std/prelude/text:StringBuilder" %t77, ptr %l53
  br label %bb38
bb38:
  %t78 = load %"std/prelude/text:StringBuilder", ptr %l53
  store %"std/prelude/text:StringBuilder" %t78, ptr %l6
  %t79 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t81 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %v0, ptr %s0, { i64, ptr } %t79, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d19, i32 0, i32 1) })
  store i1 %t81, ptr %l55
  br label %bb39
bb39:
  %t82 = load i1, ptr %l55, !tbaa !21
  br i1 %t82, label %bb40, label %bb41
bb40:
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePushChar(ptr %s0, ptr %l6, i8 47)
  br label %bb42
bb41:
  br label %bb43
bb42:
  br label %bb43
bb43:
  store i64 0, ptr %l7, !tbaa !24
  %t85 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %s0, ptr %l1)
  store i64 %t85, ptr %l58
  br label %bb44
bb44:
  %t86 = load i64, ptr %l58, !tbaa !24
  store i64 %t86, ptr %l8, !tbaa !24
  store i64 1, ptr %l9, !tbaa !24
  %t87 = load i64, ptr %l8, !tbaa !24
  %t88 = load i64, ptr %l7, !tbaa !24
  %t91 = icmp sgt i64 %t87, %t88
  br i1 %t91, label %bb45, label %bb46
bb45:
  %t93 = load i64, ptr %l9, !tbaa !24
  %t95 = icmp sgt i64 %t93, 0
  br i1 %t95, label %bb47, label %bb48
bb46:
  store i64 0, ptr %l62, !tbaa !24
  br label %bb50
bb47:
  %t97 = load i64, ptr %l8, !tbaa !24
  %t98 = load i64, ptr %l7, !tbaa !24
  %t101 = sub i64 %t97, %t98
  %t102 = load i64, ptr %l9, !tbaa !24
  %t105 = add i64 %t101, %t102
  %t107 = sub i64 %t105, 1
  %t108 = load i64, ptr %l9, !tbaa !24
  %t111 = sdiv i64 %t107, %t108
  store i64 %t111, ptr %l65, !tbaa !24
  br label %bb49
bb48:
  store i64 0, ptr %l65, !tbaa !24
  br label %bb49
bb49:
  %t113 = load i64, ptr %l65, !tbaa !24
  store i64 %t113, ptr %l62, !tbaa !24
  br label %bb50
bb50:
  %t114 = load i64, ptr %l62, !tbaa !24
  store i64 %t114, ptr %l10, !tbaa !24
  store i64 0, ptr %l11, !tbaa !24
  br label %bb51
bb51:
  %t115 = load i64, ptr %l11, !tbaa !24
  %t116 = load i64, ptr %l10, !tbaa !24
  %t119 = icmp slt i64 %t115, %t116
  %t121 = xor i1 %t119, true
  br i1 %t121, label %bb52, label %bb53
bb52:
  br label %bb62
bb53:
  br label %bb54
bb54:
  %t123 = load i64, ptr %l7, !tbaa !24
  %t124 = load i64, ptr %l11, !tbaa !24
  %t125 = load i64, ptr %l9, !tbaa !24
  %t128 = mul i64 %t124, %t125
  %t131 = add i64 %t123, %t128
  store i64 %t131, ptr %l12, !tbaa !24
  %t133 = load i64, ptr %l12, !tbaa !24
  %t135 = icmp sgt i64 %t133, 0
  br i1 %t135, label %bb55, label %bb56
bb55:
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePushChar(ptr %s0, ptr %l6, i8 47)
  br label %bb57
bb56:
  br label %bb58
bb57:
  br label %bb58
bb58:
  store ptr %l6, ptr %l86, !tbaa !29
  %t138 = load i64, ptr %l12, !tbaa !24
  %t141 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %s0, ptr %s0, ptr %l1, i64 %t138)
  store { i64, ptr } %t141, ptr %l89
  br label %bb59
bb59:
  %t142 = load ptr, ptr %l86, !tbaa !29
  %t143 = load { i64, ptr }, ptr %l89, !tbaa !27
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s0, ptr %t142, { i64, ptr } %t143)
  br label %bb60
bb60:
  br label %bb61
bb61:
  %t144 = load i64, ptr %l11, !tbaa !24
  %t146 = add i64 %t144, 1
  store i64 %t146, ptr %l11, !tbaa !24
  br label %bb51
bb62:
  %t149 = call i64 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eLen(ptr %s0, ptr %l6)
  store i64 %t149, ptr %l93
  br label %bb63
bb63:
  %t150 = load i64, ptr %l93, !tbaa !24
  %t151 = icmp eq i64 %t150, 0
  br i1 %t151, label %bb64, label %bb65
bb64:
  store { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d20, i32 0, i32 1) }, ptr %l96, !tbaa !27
  %t153 = load { i64, ptr }, ptr %l96, !tbaa !27
  store { i64, ptr } %t153, ptr %l95, !tbaa !27
  br label %bb67
bb65:
  %t156 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %s0, ptr %v1, ptr %l6)
  store { i64, ptr } %t156, ptr %l99
  br label %bb66
bb66:
  %t157 = load { i64, ptr }, ptr %l99, !tbaa !27
  store { i64, ptr } %t157, ptr %l95, !tbaa !27
  br label %bb67
bb67:
  %t158 = load { i64, ptr }, ptr %l95, !tbaa !27
  %t159 = extractvalue { i64, ptr } %t158, 0
  store i64 %t159, ptr %l100, !tbaa !24
  %t160 = load i64, ptr %l100, !tbaa !24
  %t161 = mul i64 %t160, 1
  %t162 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t161)
  %t163 = insertvalue { i64, ptr } undef, i64 %t160, 0
  %t164 = insertvalue { i64, ptr } %t163, ptr %t162, 1
  store { i64, ptr } %t164, ptr %l101, !tbaa !27
  %t165 = getelementptr { i64, ptr }, ptr %l101, i32 0, i32 1
  %t166 = load ptr, ptr %t165, !tbaa !27
  %t167 = getelementptr { i64, ptr }, ptr %l95, i32 0, i32 1
  %t168 = load ptr, ptr %t167, !tbaa !27
  %t169 = load i64, ptr %l100, !tbaa !24
  %t170 = mul i64 %t169, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t166, ptr %t168, i64 %t170, i1 false)
  %t171 = load { i64, ptr }, ptr %l101, !tbaa !27
  store { i64, ptr } %t171, ptr %l95, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  %t172 = load { i64, ptr }, ptr %l95, !tbaa !27
  store { i64, ptr } %t172, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local i1 @compiler_2fload_2ePublic(ptr %v0, { i64, ptr } %a0) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l4 = alloca i1
  %l5 = alloca { i64, ptr }
  %l7 = alloca i1
  %rv = alloca i1
  store { i64, ptr } %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t3 = extractvalue { i64, ptr } %t1, 0
  %t5 = icmp sgt i64 %t3, 0
  br i1 %t5, label %bb1, label %bb2
bb1:
  %t7 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t7, ptr %l5, !tbaa !27
  %t8 = getelementptr { i64, ptr }, ptr %l5, i32 0, i32 1
  %t9 = load ptr, ptr %t8, !tbaa !27
  %t10 = getelementptr i8, ptr %t9, i64 0
  %t11 = load i8, ptr %t10, !tbaa !32
  %t13 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aChar_2eIsUpper(i8 %t11)
  store i1 %t13, ptr %l7
  br label %bb3
bb2:
  store i1 false, ptr %l4, !tbaa !21
  br label %bb4
bb3:
  %t14 = load i1, ptr %l7, !tbaa !21
  store i1 %t14, ptr %l4, !tbaa !21
  br label %bb4
bb4:
  %t15 = load i1, ptr %l4, !tbaa !21
  store i1 %t15, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local { i64, ptr } @compiler_2fload_2ecachedTranslation(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l2 = alloca %"std/prelude/text:LineIter"
  %l3 = alloca { i64, ptr }
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca %"std/os:FileInfo"
  %l9 = alloca { i64, ptr }
  %l13 = alloca { i64, ptr }
  %l14 = alloca i32
  %l16 = alloca i1
  %l19 = alloca { i64, ptr }
  %l20 = alloca { i64, ptr }
  %l21 = alloca i64
  %l22 = alloca { i64, ptr }
  %l24 = alloca %"std/prelude/text:LineIter"
  %l25 = alloca { i64, ptr }
  %l27 = alloca { i64, ptr }
  %l28 = alloca i32
  %l30 = alloca i1
  %l32 = alloca i1
  %l33 = alloca i64
  %l36 = alloca i64
  %l37 = alloca i32
  %l38 = alloca { i64, ptr }
  %l39 = alloca { i64, ptr }
  %l40 = alloca i64
  %l41 = alloca { i64, ptr }
  %l42 = alloca i64
  %l43 = alloca { i64, ptr }
  %l45 = alloca i64
  %l48 = alloca i64
  %l49 = alloca i64
  %l55 = alloca i64
  %l56 = alloca i32
  %l57 = alloca { i64, ptr }
  %l58 = alloca { i64, ptr }
  %l59 = alloca i64
  %l60 = alloca { i64, ptr }
  %l61 = alloca i64
  %l62 = alloca { i64, ptr }
  %l63 = alloca i64
  %l64 = alloca i64
  %l68 = alloca { i64, ptr }
  %l69 = alloca i64
  %l70 = alloca i32
  %l71 = alloca i64
  %l72 = alloca i32
  %l73 = alloca { i64, ptr }
  %l74 = alloca { i64, ptr }
  %l75 = alloca i64
  %l76 = alloca { i64, ptr }
  %l77 = alloca i64
  %l78 = alloca { i64, ptr }
  %l80 = alloca i64
  %l84 = alloca i64
  %l85 = alloca i64
  %l89 = alloca { i64, ptr }
  %l90 = alloca i64
  %l91 = alloca i32
  %l92 = alloca i64
  %l93 = alloca i32
  %l94 = alloca { i64, ptr }
  %l95 = alloca { i64, ptr }
  %l96 = alloca i64
  %l97 = alloca { i64, ptr }
  %l98 = alloca %"std/os:FileInfo"
  %l99 = alloca { i64, ptr }
  %l103 = alloca i64
  %l106 = alloca i64
  %l107 = alloca i64
  %l112 = alloca %"std/os:FileInfo"
  %l113 = alloca i32
  %l115 = alloca i1
  %l118 = alloca { i64, ptr }
  %l119 = alloca { i64, ptr }
  %l120 = alloca i64
  %l121 = alloca { i64, ptr }
  %l125 = alloca i1
  %l129 = alloca { i64, ptr }
  %l130 = alloca { i64, ptr }
  %l131 = alloca i64
  %l132 = alloca { i64, ptr }
  %l133 = alloca { i64, ptr }
  %l137 = alloca { i64, ptr }
  %l138 = alloca i32
  %l140 = alloca i1
  %l143 = alloca { i64, ptr }
  %l144 = alloca i64
  %l145 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %s4 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  store { i64, ptr } %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t3 = extractvalue { i64, ptr } %t1, 1
  %t4 = extractvalue { i64, ptr } %t1, 0
  %t5 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d21, i32 0, i32 1) }, 1
  %t6 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d21, i32 0, i32 1) }, 0
  %t7 = add i64 %t4, %t6
  %t8 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t7)
  call void @olang_textcopy(ptr %t8, ptr %t3, i64 %t4)
  %t9 = getelementptr i8, ptr %t8, i64 %t4
  call void @olang_textcopy(ptr %t9, ptr %t5, i64 %t6)
  %t10 = insertvalue { i64, ptr } undef, i64 %t7, 0
  %t11 = insertvalue { i64, ptr } %t10, ptr %t8, 1
  %t13 = extractvalue { i64, ptr } %t11, 0
  %t14 = extractvalue { i64, ptr } %t11, 1
  %t15 = mul i64 %t13, 1
  %t16 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t15)
  call void @llvm.memcpy.p0.p0.i64(ptr %t16, ptr %t14, i64 %t15, i1 false)
  %t17 = insertvalue { i64, ptr } undef, i64 %t13, 0
  %t18 = insertvalue { i64, ptr } %t17, ptr %t16, 1
  %t20 = call { i32, { i64, ptr } } @std_2fos_2eReadFile(ptr %s0, ptr %s0, { i64, ptr } %t18)
  %t21 = extractvalue { i32, { i64, ptr } } %t20, 1
  %t22 = extractvalue { i32, { i64, ptr } } %t20, 0
  store i32 %t22, ptr %l14
  %t23 = icmp ne i32 %t22, 0
  br i1 %t23, label %bb2, label %ok.24, !prof !99
ok.24:
  store { i64, ptr } %t21, ptr %l13
  br label %bb1
bb1:
  %t25 = load { i64, ptr }, ptr %l13, !tbaa !27
  store { i64, ptr } %t25, ptr %l9, !tbaa !27
  br label %bb6
bb2:
  %t26 = load i32, ptr %l14, !tbaa !23
  %t27 = ashr i32 %t26, 16
  %t29 = icmp eq i32 %t27, 1
  store i1 %t29, ptr %l16, !tbaa !21
  %t30 = load i32, ptr %l14, !tbaa !23
  %t31 = ashr i32 %t30, 16
  %t33 = icmp eq i32 %t31, 1
  br i1 %t33, label %bb3, label %bb4
bb3:
  call void @__olang_errpay_pop()
  br label %bb4
bb4:
  br label %bb5
bb5:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d22, i32 0, i32 1) }, ptr %l19, !tbaa !27
  %t35 = load { i64, ptr }, ptr %l19, !tbaa !27
  store { i64, ptr } %t35, ptr %l20, !tbaa !27
  %t36 = load { i64, ptr }, ptr %l20, !tbaa !27
  %t37 = extractvalue { i64, ptr } %t36, 0
  store i64 %t37, ptr %l21, !tbaa !24
  %t38 = load i64, ptr %l21, !tbaa !24
  %t39 = mul i64 %t38, 1
  %t40 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t39)
  %t41 = insertvalue { i64, ptr } undef, i64 %t38, 0
  %t42 = insertvalue { i64, ptr } %t41, ptr %t40, 1
  store { i64, ptr } %t42, ptr %l22, !tbaa !27
  %t43 = getelementptr { i64, ptr }, ptr %l22, i32 0, i32 1
  %t44 = load ptr, ptr %t43, !tbaa !27
  %t45 = getelementptr { i64, ptr }, ptr %l20, i32 0, i32 1
  %t46 = load ptr, ptr %t45, !tbaa !27
  %t47 = load i64, ptr %l21, !tbaa !24
  %t48 = mul i64 %t47, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t44, ptr %t46, i64 %t48, i1 false)
  %t49 = load { i64, ptr }, ptr %l22, !tbaa !27
  store { i64, ptr } %t49, ptr %l20, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  %t50 = load { i64, ptr }, ptr %l20, !tbaa !27
  store { i64, ptr } %t50, ptr %rv
  br label %ret
bb6:
  %t51 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t54 = call %"std/prelude/text:LineIter" @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eLines(ptr %s0, ptr %s0, { i64, ptr } %t51)
  store %"std/prelude/text:LineIter" %t54, ptr %l24
  br label %bb7
bb7:
  %t55 = load %"std/prelude/text:LineIter", ptr %l24
  store %"std/prelude/text:LineIter" %t55, ptr %l2
  br label %bb8
bb8:
  store %olang.scope zeroinitializer, ptr %s4
  %t57 = call { i32, { i64, ptr } } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aLineIter_2eNext(ptr %s0, ptr %s0, ptr %l2)
  %t58 = extractvalue { i32, { i64, ptr } } %t57, 1
  %t59 = extractvalue { i32, { i64, ptr } } %t57, 0
  store i32 %t59, ptr %l28
  %t60 = icmp ne i32 %t59, 0
  br i1 %t60, label %bb10, label %ok.61, !prof !99
ok.61:
  store { i64, ptr } %t58, ptr %l27
  br label %bb9
bb9:
  %t62 = load { i64, ptr }, ptr %l27, !tbaa !27
  store { i64, ptr } %t62, ptr %l25, !tbaa !27
  br label %bb12
bb10:
  %t63 = load i32, ptr %l28, !tbaa !23
  %t64 = ashr i32 %t63, 16
  %t66 = icmp eq i32 %t64, 1
  store i1 %t66, ptr %l30, !tbaa !21
  br label %bb11
bb11:
  call void @__olang_scope_close(ptr %s4)
  br label %bb74
bb12:
  %t67 = load { i64, ptr }, ptr %l25, !tbaa !27
  store { i64, ptr } %t67, ptr %l3, !tbaa !27
  %t68 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t70 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %s4, { i64, ptr } %t68, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d23, i32 0, i32 1) })
  store i1 %t70, ptr %l32
  br label %bb13
bb13:
  %t71 = load i1, ptr %l32, !tbaa !21
  br i1 %t71, label %bb14, label %bb15
bb14:
  call void @__olang_scope_close(ptr %s4)
  br label %bb73
bb15:
  br label %bb16
bb16:
  %t72 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t75 = call { i32, i64 } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eFindByte(ptr %s0, { i64, ptr } %t72, i8 32)
  %t76 = extractvalue { i32, i64 } %t75, 1
  %t77 = extractvalue { i32, i64 } %t75, 0
  store i32 %t77, ptr %l37
  %t78 = icmp ne i32 %t77, 0
  br i1 %t78, label %bb18, label %ok.79, !prof !99
ok.79:
  store i64 %t76, ptr %l36
  br label %bb17
bb17:
  %t80 = load i64, ptr %l36, !tbaa !24
  store i64 %t80, ptr %l33, !tbaa !24
  br label %bb20
bb18:
  br label %bb19
bb19:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d24, i32 0, i32 1) }, ptr %l38, !tbaa !27
  %t81 = load { i64, ptr }, ptr %l38, !tbaa !27
  store { i64, ptr } %t81, ptr %l39, !tbaa !27
  %t82 = load { i64, ptr }, ptr %l39, !tbaa !27
  %t83 = extractvalue { i64, ptr } %t82, 0
  store i64 %t83, ptr %l40, !tbaa !24
  %t84 = load i64, ptr %l40, !tbaa !24
  %t85 = mul i64 %t84, 1
  %t86 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t85)
  %t87 = insertvalue { i64, ptr } undef, i64 %t84, 0
  %t88 = insertvalue { i64, ptr } %t87, ptr %t86, 1
  store { i64, ptr } %t88, ptr %l41, !tbaa !27
  %t89 = getelementptr { i64, ptr }, ptr %l41, i32 0, i32 1
  %t90 = load ptr, ptr %t89, !tbaa !27
  %t91 = getelementptr { i64, ptr }, ptr %l39, i32 0, i32 1
  %t92 = load ptr, ptr %t91, !tbaa !27
  %t93 = load i64, ptr %l40, !tbaa !24
  %t94 = mul i64 %t93, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t90, ptr %t92, i64 %t94, i1 false)
  %t95 = load { i64, ptr }, ptr %l41, !tbaa !27
  store { i64, ptr } %t95, ptr %l39, !tbaa !27
  call void @__olang_scope_close(ptr %s4)
  call void @__olang_scope_close(ptr %s0)
  %t96 = load { i64, ptr }, ptr %l39, !tbaa !27
  store { i64, ptr } %t96, ptr %rv
  br label %ret
bb20:
  %t97 = load i64, ptr %l33, !tbaa !24
  store i64 %t97, ptr %l4, !tbaa !24
  %t98 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t98, ptr %l43, !tbaa !27
  %t99 = load i64, ptr %l4, !tbaa !24
  %t101 = add i64 %t99, 1
  store i64 %t101, ptr %l45, !tbaa !24
  %t102 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t105 = extractvalue { i64, ptr } %t102, 0
  store i64 %t105, ptr %l48, !tbaa !24
  %t106 = load { i64, ptr }, ptr %l43, !tbaa !27
  %t107 = extractvalue { i64, ptr } %t106, 0
  store i64 %t107, ptr %l49, !tbaa !24
  %t108 = load i64, ptr %l45, !tbaa !24
  %t109 = icmp sge i64 %t108, 0
  br i1 %t109, label %bb21, label %bb22
bb21:
  %t111 = load i64, ptr %l45, !tbaa !24
  %t112 = load i64, ptr %l48, !tbaa !24
  %t113 = icmp sle i64 %t111, %t112
  br i1 %t113, label %bb23, label %bb24
bb22:
  call void @__olang_check_failed(ptr @olang_loc_58a0a66c848bdb67_cd5865ffada34e5b)
  unreachable
bb23:
  %t115 = load i64, ptr %l48, !tbaa !24
  %t116 = load i64, ptr %l49, !tbaa !24
  %t117 = icmp sle i64 %t115, %t116
  br i1 %t117, label %bb25, label %bb26
bb24:
  call void @__olang_check_failed(ptr @olang_loc_58a0a66c848bdb67_cd5865ffada34e5b)
  unreachable
bb25:
  %t119 = getelementptr { i64, ptr }, ptr %l43, i32 0, i32 1
  %t120 = load ptr, ptr %t119, !tbaa !27
  %t121 = load i64, ptr %l45, !tbaa !24
  %t122 = load i64, ptr %l48, !tbaa !24
  %t123 = getelementptr i8, ptr %t120, i64 %t121
  %t124 = sub i64 %t122, %t121
  %t125 = insertvalue { i64, ptr } undef, i64 %t124, 0
  %t126 = insertvalue { i64, ptr } %t125, ptr %t123, 1
  %t129 = call { i32, i64 } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eFindByte(ptr %s0, { i64, ptr } %t126, i8 32)
  %t130 = extractvalue { i32, i64 } %t129, 1
  %t131 = extractvalue { i32, i64 } %t129, 0
  store i32 %t131, ptr %l56
  %t132 = icmp ne i32 %t131, 0
  br i1 %t132, label %bb28, label %ok.133, !prof !99
ok.133:
  store i64 %t130, ptr %l55
  br label %bb27
bb26:
  call void @__olang_check_failed(ptr @olang_loc_58a0a66c848bdb67_cd5865ffada34e5b)
  unreachable
bb27:
  %t134 = load i64, ptr %l55, !tbaa !24
  store i64 %t134, ptr %l42, !tbaa !24
  br label %bb30
bb28:
  br label %bb29
bb29:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d25, i32 0, i32 1) }, ptr %l57, !tbaa !27
  %t135 = load { i64, ptr }, ptr %l57, !tbaa !27
  store { i64, ptr } %t135, ptr %l58, !tbaa !27
  %t136 = load { i64, ptr }, ptr %l58, !tbaa !27
  %t137 = extractvalue { i64, ptr } %t136, 0
  store i64 %t137, ptr %l59, !tbaa !24
  %t138 = load i64, ptr %l59, !tbaa !24
  %t139 = mul i64 %t138, 1
  %t140 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t139)
  %t141 = insertvalue { i64, ptr } undef, i64 %t138, 0
  %t142 = insertvalue { i64, ptr } %t141, ptr %t140, 1
  store { i64, ptr } %t142, ptr %l60, !tbaa !27
  %t143 = getelementptr { i64, ptr }, ptr %l60, i32 0, i32 1
  %t144 = load ptr, ptr %t143, !tbaa !27
  %t145 = getelementptr { i64, ptr }, ptr %l58, i32 0, i32 1
  %t146 = load ptr, ptr %t145, !tbaa !27
  %t147 = load i64, ptr %l59, !tbaa !24
  %t148 = mul i64 %t147, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t144, ptr %t146, i64 %t148, i1 false)
  %t149 = load { i64, ptr }, ptr %l60, !tbaa !27
  store { i64, ptr } %t149, ptr %l58, !tbaa !27
  call void @__olang_scope_close(ptr %s4)
  call void @__olang_scope_close(ptr %s0)
  %t150 = load { i64, ptr }, ptr %l58, !tbaa !27
  store { i64, ptr } %t150, ptr %rv
  br label %ret
bb30:
  %t151 = load i64, ptr %l42, !tbaa !24
  store i64 %t151, ptr %l5, !tbaa !24
  %t152 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t152, ptr %l62, !tbaa !27
  %t153 = load i64, ptr %l4, !tbaa !24
  store i64 %t153, ptr %l63, !tbaa !24
  %t154 = load { i64, ptr }, ptr %l62, !tbaa !27
  %t155 = extractvalue { i64, ptr } %t154, 0
  store i64 %t155, ptr %l64, !tbaa !24
  %t156 = icmp sge i64 0, 0
  br i1 %t156, label %bb31, label %bb32
bb31:
  %t158 = load i64, ptr %l63, !tbaa !24
  %t159 = icmp sle i64 0, %t158
  br i1 %t159, label %bb33, label %bb34
bb32:
  call void @__olang_check_failed(ptr @olang_loc_78711dd37968488a_7166c24cf999555e)
  unreachable
bb33:
  %t161 = load i64, ptr %l63, !tbaa !24
  %t162 = load i64, ptr %l64, !tbaa !24
  %t163 = icmp sle i64 %t161, %t162
  br i1 %t163, label %bb35, label %bb36
bb34:
  call void @__olang_check_failed(ptr @olang_loc_78711dd37968488a_7166c24cf999555e)
  unreachable
bb35:
  %t165 = getelementptr { i64, ptr }, ptr %l62, i32 0, i32 1
  %t166 = load ptr, ptr %t165, !tbaa !27
  %t167 = load i64, ptr %l63, !tbaa !24
  %t168 = getelementptr i8, ptr %t166, i64 0
  %t169 = sub i64 %t167, 0
  %t170 = insertvalue { i64, ptr } undef, i64 %t169, 0
  %t171 = insertvalue { i64, ptr } %t170, ptr %t168, 1
  store { i64, ptr } %t171, ptr %l68, !tbaa !27
  %t172 = call { i32, i64 } @std_2fprelude_2ftext_3aRadix_2ector(ptr %s4, i64 10)
  %t173 = extractvalue { i32, i64 } %t172, 1
  %t174 = extractvalue { i32, i64 } %t172, 0
  store i32 %t174, ptr %l70
  %t175 = icmp ne i32 %t174, 0
  br i1 %t175, label %bb38, label %ok.176, !prof !99
ok.176:
  store i64 %t173, ptr %l69
  br label %bb37
bb36:
  call void @__olang_check_failed(ptr @olang_loc_78711dd37968488a_7166c24cf999555e)
  unreachable
bb37:
  %t177 = load { i64, ptr }, ptr %l68, !tbaa !27
  %t178 = load i64, ptr %l69, !tbaa !24
  %t179 = call { i32, i64 } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eParseInt(ptr %s0, { i64, ptr } %t177, i64 %t178)
  %t180 = extractvalue { i32, i64 } %t179, 1
  %t181 = extractvalue { i32, i64 } %t179, 0
  store i32 %t181, ptr %l72
  %t182 = icmp ne i32 %t181, 0
  br i1 %t182, label %bb41, label %ok.183, !prof !99
ok.183:
  store i64 %t180, ptr %l71
  br label %bb40
bb38:
  br label %bb39
bb39:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d26, i32 0, i32 1) }, ptr %l73, !tbaa !27
  %t184 = load { i64, ptr }, ptr %l73, !tbaa !27
  store { i64, ptr } %t184, ptr %l74, !tbaa !27
  %t185 = load { i64, ptr }, ptr %l74, !tbaa !27
  %t186 = extractvalue { i64, ptr } %t185, 0
  store i64 %t186, ptr %l75, !tbaa !24
  %t187 = load i64, ptr %l75, !tbaa !24
  %t188 = mul i64 %t187, 1
  %t189 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t188)
  %t190 = insertvalue { i64, ptr } undef, i64 %t187, 0
  %t191 = insertvalue { i64, ptr } %t190, ptr %t189, 1
  store { i64, ptr } %t191, ptr %l76, !tbaa !27
  %t192 = getelementptr { i64, ptr }, ptr %l76, i32 0, i32 1
  %t193 = load ptr, ptr %t192, !tbaa !27
  %t194 = getelementptr { i64, ptr }, ptr %l74, i32 0, i32 1
  %t195 = load ptr, ptr %t194, !tbaa !27
  %t196 = load i64, ptr %l75, !tbaa !24
  %t197 = mul i64 %t196, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t193, ptr %t195, i64 %t197, i1 false)
  %t198 = load { i64, ptr }, ptr %l76, !tbaa !27
  store { i64, ptr } %t198, ptr %l74, !tbaa !27
  call void @__olang_scope_close(ptr %s4)
  call void @__olang_scope_close(ptr %s0)
  %t199 = load { i64, ptr }, ptr %l74, !tbaa !27
  store { i64, ptr } %t199, ptr %rv
  br label %ret
bb40:
  %t200 = load i64, ptr %l71, !tbaa !24
  store i64 %t200, ptr %l61, !tbaa !24
  br label %bb42
bb41:
  br label %bb39
bb42:
  %t201 = load i64, ptr %l61, !tbaa !24
  store i64 %t201, ptr %l6, !tbaa !24
  %t202 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t202, ptr %l78, !tbaa !27
  %t203 = load i64, ptr %l4, !tbaa !24
  %t205 = add i64 %t203, 1
  store i64 %t205, ptr %l80, !tbaa !24
  %t206 = load i64, ptr %l4, !tbaa !24
  %t208 = add i64 %t206, 1
  %t209 = load i64, ptr %l5, !tbaa !24
  %t212 = add i64 %t208, %t209
  store i64 %t212, ptr %l84, !tbaa !24
  %t213 = load { i64, ptr }, ptr %l78, !tbaa !27
  %t214 = extractvalue { i64, ptr } %t213, 0
  store i64 %t214, ptr %l85, !tbaa !24
  %t215 = load i64, ptr %l80, !tbaa !24
  %t216 = icmp sge i64 %t215, 0
  br i1 %t216, label %bb43, label %bb44
bb43:
  %t218 = load i64, ptr %l80, !tbaa !24
  %t219 = load i64, ptr %l84, !tbaa !24
  %t220 = icmp sle i64 %t218, %t219
  br i1 %t220, label %bb45, label %bb46
bb44:
  call void @__olang_check_failed(ptr @olang_loc_dccc239ae56f9ba9_1ecb5d6f56d7fcbd)
  unreachable
bb45:
  %t222 = load i64, ptr %l84, !tbaa !24
  %t223 = load i64, ptr %l85, !tbaa !24
  %t224 = icmp sle i64 %t222, %t223
  br i1 %t224, label %bb47, label %bb48
bb46:
  call void @__olang_check_failed(ptr @olang_loc_dccc239ae56f9ba9_1ecb5d6f56d7fcbd)
  unreachable
bb47:
  %t226 = getelementptr { i64, ptr }, ptr %l78, i32 0, i32 1
  %t227 = load ptr, ptr %t226, !tbaa !27
  %t228 = load i64, ptr %l80, !tbaa !24
  %t229 = load i64, ptr %l84, !tbaa !24
  %t230 = getelementptr i8, ptr %t227, i64 %t228
  %t231 = sub i64 %t229, %t228
  %t232 = insertvalue { i64, ptr } undef, i64 %t231, 0
  %t233 = insertvalue { i64, ptr } %t232, ptr %t230, 1
  store { i64, ptr } %t233, ptr %l89, !tbaa !27
  %t234 = call { i32, i64 } @std_2fprelude_2ftext_3aRadix_2ector(ptr %s4, i64 10)
  %t235 = extractvalue { i32, i64 } %t234, 1
  %t236 = extractvalue { i32, i64 } %t234, 0
  store i32 %t236, ptr %l91
  %t237 = icmp ne i32 %t236, 0
  br i1 %t237, label %bb50, label %ok.238, !prof !99
ok.238:
  store i64 %t235, ptr %l90
  br label %bb49
bb48:
  call void @__olang_check_failed(ptr @olang_loc_dccc239ae56f9ba9_1ecb5d6f56d7fcbd)
  unreachable
bb49:
  %t239 = load { i64, ptr }, ptr %l89, !tbaa !27
  %t240 = load i64, ptr %l90, !tbaa !24
  %t241 = call { i32, i64 } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eParseInt(ptr %s0, { i64, ptr } %t239, i64 %t240)
  %t242 = extractvalue { i32, i64 } %t241, 1
  %t243 = extractvalue { i32, i64 } %t241, 0
  store i32 %t243, ptr %l93
  %t244 = icmp ne i32 %t243, 0
  br i1 %t244, label %bb53, label %ok.245, !prof !99
ok.245:
  store i64 %t242, ptr %l92
  br label %bb52
bb50:
  br label %bb51
bb51:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d27, i32 0, i32 1) }, ptr %l94, !tbaa !27
  %t246 = load { i64, ptr }, ptr %l94, !tbaa !27
  store { i64, ptr } %t246, ptr %l95, !tbaa !27
  %t247 = load { i64, ptr }, ptr %l95, !tbaa !27
  %t248 = extractvalue { i64, ptr } %t247, 0
  store i64 %t248, ptr %l96, !tbaa !24
  %t249 = load i64, ptr %l96, !tbaa !24
  %t250 = mul i64 %t249, 1
  %t251 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t250)
  %t252 = insertvalue { i64, ptr } undef, i64 %t249, 0
  %t253 = insertvalue { i64, ptr } %t252, ptr %t251, 1
  store { i64, ptr } %t253, ptr %l97, !tbaa !27
  %t254 = getelementptr { i64, ptr }, ptr %l97, i32 0, i32 1
  %t255 = load ptr, ptr %t254, !tbaa !27
  %t256 = getelementptr { i64, ptr }, ptr %l95, i32 0, i32 1
  %t257 = load ptr, ptr %t256, !tbaa !27
  %t258 = load i64, ptr %l96, !tbaa !24
  %t259 = mul i64 %t258, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t255, ptr %t257, i64 %t259, i1 false)
  %t260 = load { i64, ptr }, ptr %l97, !tbaa !27
  store { i64, ptr } %t260, ptr %l95, !tbaa !27
  call void @__olang_scope_close(ptr %s4)
  call void @__olang_scope_close(ptr %s0)
  %t261 = load { i64, ptr }, ptr %l95, !tbaa !27
  store { i64, ptr } %t261, ptr %rv
  br label %ret
bb52:
  %t262 = load i64, ptr %l92, !tbaa !24
  store i64 %t262, ptr %l77, !tbaa !24
  br label %bb54
bb53:
  br label %bb51
bb54:
  %t263 = load i64, ptr %l77, !tbaa !24
  store i64 %t263, ptr %l7, !tbaa !24
  %t264 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t264, ptr %l99, !tbaa !27
  %t265 = load i64, ptr %l4, !tbaa !24
  %t267 = add i64 %t265, 2
  %t268 = load i64, ptr %l5, !tbaa !24
  %t271 = add i64 %t267, %t268
  store i64 %t271, ptr %l103, !tbaa !24
  %t272 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t275 = extractvalue { i64, ptr } %t272, 0
  store i64 %t275, ptr %l106, !tbaa !24
  %t276 = load { i64, ptr }, ptr %l99, !tbaa !27
  %t277 = extractvalue { i64, ptr } %t276, 0
  store i64 %t277, ptr %l107, !tbaa !24
  %t278 = load i64, ptr %l103, !tbaa !24
  %t279 = icmp sge i64 %t278, 0
  br i1 %t279, label %bb55, label %bb56
bb55:
  %t281 = load i64, ptr %l103, !tbaa !24
  %t282 = load i64, ptr %l106, !tbaa !24
  %t283 = icmp sle i64 %t281, %t282
  br i1 %t283, label %bb57, label %bb58
bb56:
  call void @__olang_check_failed(ptr @olang_loc_756dde8889a2c3bc_572c106a043d4f60)
  unreachable
bb57:
  %t285 = load i64, ptr %l106, !tbaa !24
  %t286 = load i64, ptr %l107, !tbaa !24
  %t287 = icmp sle i64 %t285, %t286
  br i1 %t287, label %bb59, label %bb60
bb58:
  call void @__olang_check_failed(ptr @olang_loc_756dde8889a2c3bc_572c106a043d4f60)
  unreachable
bb59:
  %t289 = getelementptr { i64, ptr }, ptr %l99, i32 0, i32 1
  %t290 = load ptr, ptr %t289, !tbaa !27
  %t291 = load i64, ptr %l103, !tbaa !24
  %t292 = load i64, ptr %l106, !tbaa !24
  %t293 = getelementptr i8, ptr %t290, i64 %t291
  %t294 = sub i64 %t292, %t291
  %t295 = insertvalue { i64, ptr } undef, i64 %t294, 0
  %t296 = insertvalue { i64, ptr } %t295, ptr %t293, 1
  %t298 = call { i32, %"std/os:FileInfo" } @std_2fos_2eFileInfo_2eStat(ptr %s0, { i64, ptr } %t296)
  %t299 = extractvalue { i32, %"std/os:FileInfo" } %t298, 1
  %t300 = extractvalue { i32, %"std/os:FileInfo" } %t298, 0
  store i32 %t300, ptr %l113
  %t301 = icmp ne i32 %t300, 0
  br i1 %t301, label %bb62, label %ok.302, !prof !99
ok.302:
  store %"std/os:FileInfo" %t299, ptr %l112
  br label %bb61
bb60:
  call void @__olang_check_failed(ptr @olang_loc_756dde8889a2c3bc_572c106a043d4f60)
  unreachable
bb61:
  %t303 = load %"std/os:FileInfo", ptr %l112
  store %"std/os:FileInfo" %t303, ptr %l98
  br label %bb66
bb62:
  %t304 = load i32, ptr %l113, !tbaa !23
  %t305 = ashr i32 %t304, 16
  %t307 = icmp eq i32 %t305, 1
  store i1 %t307, ptr %l115, !tbaa !21
  %t308 = load i32, ptr %l113, !tbaa !23
  %t309 = ashr i32 %t308, 16
  %t311 = icmp eq i32 %t309, 1
  br i1 %t311, label %bb63, label %bb64
bb63:
  call void @__olang_errpay_pop()
  br label %bb64
bb64:
  br label %bb65
bb65:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d28, i32 0, i32 1) }, ptr %l118, !tbaa !27
  %t313 = load { i64, ptr }, ptr %l118, !tbaa !27
  store { i64, ptr } %t313, ptr %l119, !tbaa !27
  %t314 = load { i64, ptr }, ptr %l119, !tbaa !27
  %t315 = extractvalue { i64, ptr } %t314, 0
  store i64 %t315, ptr %l120, !tbaa !24
  %t316 = load i64, ptr %l120, !tbaa !24
  %t317 = mul i64 %t316, 1
  %t318 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t317)
  %t319 = insertvalue { i64, ptr } undef, i64 %t316, 0
  %t320 = insertvalue { i64, ptr } %t319, ptr %t318, 1
  store { i64, ptr } %t320, ptr %l121, !tbaa !27
  %t321 = getelementptr { i64, ptr }, ptr %l121, i32 0, i32 1
  %t322 = load ptr, ptr %t321, !tbaa !27
  %t323 = getelementptr { i64, ptr }, ptr %l119, i32 0, i32 1
  %t324 = load ptr, ptr %t323, !tbaa !27
  %t325 = load i64, ptr %l120, !tbaa !24
  %t326 = mul i64 %t325, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t322, ptr %t324, i64 %t326, i1 false)
  %t327 = load { i64, ptr }, ptr %l121, !tbaa !27
  store { i64, ptr } %t327, ptr %l119, !tbaa !27
  call void @__olang_scope_close(ptr %s4)
  call void @__olang_scope_close(ptr %s0)
  %t328 = load { i64, ptr }, ptr %l119, !tbaa !27
  store { i64, ptr } %t328, ptr %rv
  br label %ret
bb66:
  %t329 = load %"std/os:FileInfo", ptr %l98
  store %"std/os:FileInfo" %t329, ptr %l8
  %t330 = getelementptr %"std/os:FileInfo", ptr %l8, i32 0, i32 1
  %t331 = load i64, ptr %t330, !tbaa !24
  %t332 = load i64, ptr %l6, !tbaa !24
  %t335 = icmp ne i64 %t331, %t332
  br i1 %t335, label %bb67, label %bb68
bb67:
  store i1 true, ptr %l125, !tbaa !21
  br label %bb69
bb68:
  %t337 = getelementptr %"std/os:FileInfo", ptr %l8, i32 0, i32 2
  %t338 = load i64, ptr %t337, !tbaa !24
  %t339 = load i64, ptr %l7, !tbaa !24
  %t342 = icmp ne i64 %t338, %t339
  store i1 %t342, ptr %l125, !tbaa !21
  br label %bb69
bb69:
  %t344 = load i1, ptr %l125, !tbaa !21
  br i1 %t344, label %bb70, label %bb71
bb70:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d29, i32 0, i32 1) }, ptr %l129, !tbaa !27
  %t345 = load { i64, ptr }, ptr %l129, !tbaa !27
  store { i64, ptr } %t345, ptr %l130, !tbaa !27
  %t346 = load { i64, ptr }, ptr %l130, !tbaa !27
  %t347 = extractvalue { i64, ptr } %t346, 0
  store i64 %t347, ptr %l131, !tbaa !24
  %t348 = load i64, ptr %l131, !tbaa !24
  %t349 = mul i64 %t348, 1
  %t350 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t349)
  %t351 = insertvalue { i64, ptr } undef, i64 %t348, 0
  %t352 = insertvalue { i64, ptr } %t351, ptr %t350, 1
  store { i64, ptr } %t352, ptr %l132, !tbaa !27
  %t353 = getelementptr { i64, ptr }, ptr %l132, i32 0, i32 1
  %t354 = load ptr, ptr %t353, !tbaa !27
  %t355 = getelementptr { i64, ptr }, ptr %l130, i32 0, i32 1
  %t356 = load ptr, ptr %t355, !tbaa !27
  %t357 = load i64, ptr %l131, !tbaa !24
  %t358 = mul i64 %t357, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t354, ptr %t356, i64 %t358, i1 false)
  %t359 = load { i64, ptr }, ptr %l132, !tbaa !27
  store { i64, ptr } %t359, ptr %l130, !tbaa !27
  call void @__olang_scope_close(ptr %s4)
  call void @__olang_scope_close(ptr %s0)
  %t360 = load { i64, ptr }, ptr %l130, !tbaa !27
  store { i64, ptr } %t360, ptr %rv
  br label %ret
bb71:
  br label %bb72
bb72:
  call void @__olang_scope_close(ptr %s4)
  br label %bb73
bb73:
  br label %bb8
bb74:
  %t361 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t363 = extractvalue { i64, ptr } %t361, 1
  %t364 = extractvalue { i64, ptr } %t361, 0
  %t365 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d30, i32 0, i32 1) }, 1
  %t366 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d30, i32 0, i32 1) }, 0
  %t367 = add i64 %t364, %t366
  %t368 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t367)
  call void @olang_textcopy(ptr %t368, ptr %t363, i64 %t364)
  %t369 = getelementptr i8, ptr %t368, i64 %t364
  call void @olang_textcopy(ptr %t369, ptr %t365, i64 %t366)
  %t370 = insertvalue { i64, ptr } undef, i64 %t367, 0
  %t371 = insertvalue { i64, ptr } %t370, ptr %t368, 1
  %t373 = extractvalue { i64, ptr } %t371, 0
  %t374 = extractvalue { i64, ptr } %t371, 1
  %t375 = mul i64 %t373, 1
  %t376 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t375)
  call void @llvm.memcpy.p0.p0.i64(ptr %t376, ptr %t374, i64 %t375, i1 false)
  %t377 = insertvalue { i64, ptr } undef, i64 %t373, 0
  %t378 = insertvalue { i64, ptr } %t377, ptr %t376, 1
  %t380 = call { i32, { i64, ptr } } @std_2fos_2eReadFile(ptr %v1, ptr %v1, { i64, ptr } %t378)
  %t381 = extractvalue { i32, { i64, ptr } } %t380, 1
  %t382 = extractvalue { i32, { i64, ptr } } %t380, 0
  store i32 %t382, ptr %l138
  %t383 = icmp ne i32 %t382, 0
  br i1 %t383, label %bb76, label %ok.384, !prof !99
ok.384:
  store { i64, ptr } %t381, ptr %l137
  br label %bb75
bb75:
  %t385 = load { i64, ptr }, ptr %l137, !tbaa !27
  store { i64, ptr } %t385, ptr %l133, !tbaa !27
  br label %bb80
bb76:
  %t386 = load i32, ptr %l138, !tbaa !23
  %t387 = ashr i32 %t386, 16
  %t389 = icmp eq i32 %t387, 1
  store i1 %t389, ptr %l140, !tbaa !21
  %t390 = load i32, ptr %l138, !tbaa !23
  %t391 = ashr i32 %t390, 16
  %t393 = icmp eq i32 %t391, 1
  br i1 %t393, label %bb77, label %bb78
bb77:
  call void @__olang_errpay_pop()
  br label %bb78
bb78:
  br label %bb79
bb79:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d31, i32 0, i32 1) }, ptr %l133, !tbaa !27
  br label %bb80
bb80:
  %t395 = load { i64, ptr }, ptr %l133, !tbaa !27
  store { i64, ptr } %t395, ptr %l143, !tbaa !27
  %t396 = load { i64, ptr }, ptr %l143, !tbaa !27
  %t397 = extractvalue { i64, ptr } %t396, 0
  store i64 %t397, ptr %l144, !tbaa !24
  %t398 = load i64, ptr %l144, !tbaa !24
  %t399 = mul i64 %t398, 1
  %t400 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t399)
  %t401 = insertvalue { i64, ptr } undef, i64 %t398, 0
  %t402 = insertvalue { i64, ptr } %t401, ptr %t400, 1
  store { i64, ptr } %t402, ptr %l145, !tbaa !27
  %t403 = getelementptr { i64, ptr }, ptr %l145, i32 0, i32 1
  %t404 = load ptr, ptr %t403, !tbaa !27
  %t405 = getelementptr { i64, ptr }, ptr %l143, i32 0, i32 1
  %t406 = load ptr, ptr %t405, !tbaa !27
  %t407 = load i64, ptr %l144, !tbaa !24
  %t408 = mul i64 %t407, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t404, ptr %t406, i64 %t408, i1 false)
  %t409 = load { i64, ptr }, ptr %l145, !tbaa !27
  store { i64, ptr } %t409, ptr %l143, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  %t410 = load { i64, ptr }, ptr %l143, !tbaa !27
  store { i64, ptr } %t410, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local { i64, ptr } @compiler_2fload_2ecompiler_2fload_3aLoader_2eCSymbol(ptr %v0, ptr %v1, ptr %v2, ptr %a0, i64 %a1, { i64, ptr } %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca { i64, ptr }
  %l5 = alloca i1
  %l6 = alloca i64
  %l9 = alloca i64
  %l11 = alloca i1
  %l15 = alloca ptr
  %l21 = alloca { i64, ptr }
  %l25 = alloca ptr
  %l29 = alloca { i64, ptr }
  %l30 = alloca i32
  %l34 = alloca { i64, ptr }
  %l35 = alloca i64
  %l36 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  store { i64, ptr } %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load i64, ptr %l1, !tbaa !24
  %t3 = icmp slt i64 %t1, 0
  br i1 %t3, label %bb1, label %bb2
bb1:
  store i1 true, ptr %l5, !tbaa !21
  br label %bb4
bb2:
  %t5 = load i64, ptr %l1, !tbaa !24
  store i64 %t5, ptr %l6, !tbaa !24
  %t6 = load ptr, ptr %l0, !tbaa !29
  %t8 = getelementptr %"compiler/load:Loader", ptr %t6, i32 0, i32 10
  %t10 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_Hb2d19b6b5ea5ab5a85c5720545345bd4(ptr %v0, ptr %t8)
  store i64 %t10, ptr %l9
  br label %bb3
bb3:
  %t11 = load i64, ptr %l6, !tbaa !24
  %t12 = load i64, ptr %l9, !tbaa !24
  %t13 = icmp sge i64 %t11, %t12
  store i1 %t13, ptr %l5, !tbaa !21
  br label %bb4
bb4:
  %t15 = load i1, ptr %l5, !tbaa !21
  br i1 %t15, label %bb5, label %bb6
bb5:
  store i1 true, ptr %l11, !tbaa !21
  br label %bb8
bb6:
  %t16 = load ptr, ptr %l0, !tbaa !29
  %t18 = getelementptr %"compiler/load:Loader", ptr %t16, i32 0, i32 10
  %t19 = load i64, ptr %l1, !tbaa !24
  %t22 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H7bcf2aeb09afa796f4333e6ec8c3f63f(ptr %v0, ptr %v0, ptr %t18, i64 %t19)
  store ptr %t22, ptr %l15
  br label %bb7
bb7:
  %t23 = load ptr, ptr %l15, !tbaa !29
  %t25 = getelementptr %"compiler/load:Module", ptr %t23, i32 0, i32 30
  %t26 = load i1, ptr %t25, !tbaa !21
  %t28 = xor i1 %t26, true
  store i1 %t28, ptr %l11, !tbaa !21
  br label %bb8
bb8:
  %t30 = load i1, ptr %l11, !tbaa !21
  br i1 %t30, label %bb9, label %bb10
bb9:
  %t31 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t33 = extractvalue { i64, ptr } %t31, 1
  %t34 = extractvalue { i64, ptr } %t31, 0
  %t35 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t34)
  call void @olang_textcopy(ptr %t35, ptr %t33, i64 %t34)
  %t36 = insertvalue { i64, ptr } undef, i64 %t34, 0
  %t37 = insertvalue { i64, ptr } %t36, ptr %t35, 1
  call void @__olang_scope_close(ptr %s0)
  store { i64, ptr } %t37, ptr %rv
  br label %ret
bb10:
  br label %bb11
bb11:
  %t39 = load ptr, ptr %l0, !tbaa !29
  %t41 = getelementptr %"compiler/load:Loader", ptr %t39, i32 0, i32 10
  %t42 = load i64, ptr %l1, !tbaa !24
  %t45 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H7bcf2aeb09afa796f4333e6ec8c3f63f(ptr %v0, ptr %v0, ptr %t41, i64 %t42)
  store ptr %t45, ptr %l25
  br label %bb12
bb12:
  %t46 = load ptr, ptr %l25, !tbaa !29
  %t48 = getelementptr %"compiler/load:Module", ptr %t46, i32 0, i32 32
  %t49 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t52 = call { i32, { i64, ptr } } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_Ha4444909f5ef14f7626d25b8f59e6ba2(ptr %v0, ptr %v1, ptr %s0, ptr %t48, { i64, ptr } %t49)
  %t53 = extractvalue { i32, { i64, ptr } } %t52, 1
  %t54 = extractvalue { i32, { i64, ptr } } %t52, 0
  store i32 %t54, ptr %l30
  %t55 = icmp ne i32 %t54, 0
  br i1 %t55, label %bb14, label %ok.56, !prof !99
ok.56:
  store { i64, ptr } %t53, ptr %l29
  br label %bb13
bb13:
  %t57 = load { i64, ptr }, ptr %l29, !tbaa !27
  store { i64, ptr } %t57, ptr %l21, !tbaa !27
  br label %bb16
bb14:
  br label %bb15
bb15:
  %t58 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t60 = extractvalue { i64, ptr } %t58, 1
  %t61 = extractvalue { i64, ptr } %t58, 0
  %t62 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t61)
  call void @olang_textcopy(ptr %t62, ptr %t60, i64 %t61)
  %t63 = insertvalue { i64, ptr } undef, i64 %t61, 0
  %t64 = insertvalue { i64, ptr } %t63, ptr %t62, 1
  %t66 = extractvalue { i64, ptr } %t64, 0
  %t67 = extractvalue { i64, ptr } %t64, 1
  %t68 = mul i64 %t66, 1
  %t69 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t68)
  call void @llvm.memcpy.p0.p0.i64(ptr %t69, ptr %t67, i64 %t68, i1 false)
  %t70 = insertvalue { i64, ptr } undef, i64 %t66, 0
  %t71 = insertvalue { i64, ptr } %t70, ptr %t69, 1
  store { i64, ptr } %t71, ptr %l21, !tbaa !27
  br label %bb16
bb16:
  %t73 = load { i64, ptr }, ptr %l21, !tbaa !27
  store { i64, ptr } %t73, ptr %l34, !tbaa !27
  %t74 = load { i64, ptr }, ptr %l34, !tbaa !27
  %t75 = extractvalue { i64, ptr } %t74, 0
  store i64 %t75, ptr %l35, !tbaa !24
  %t76 = load i64, ptr %l35, !tbaa !24
  %t77 = mul i64 %t76, 1
  %t78 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t77)
  %t79 = insertvalue { i64, ptr } undef, i64 %t76, 0
  %t80 = insertvalue { i64, ptr } %t79, ptr %t78, 1
  store { i64, ptr } %t80, ptr %l36, !tbaa !27
  %t81 = getelementptr { i64, ptr }, ptr %l36, i32 0, i32 1
  %t82 = load ptr, ptr %t81, !tbaa !27
  %t83 = getelementptr { i64, ptr }, ptr %l34, i32 0, i32 1
  %t84 = load ptr, ptr %t83, !tbaa !27
  %t85 = load i64, ptr %l35, !tbaa !24
  %t86 = mul i64 %t85, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t82, ptr %t84, i64 %t86, i1 false)
  %t87 = load { i64, ptr }, ptr %l36, !tbaa !27
  store { i64, ptr } %t87, ptr %l34, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  %t88 = load { i64, ptr }, ptr %l34, !tbaa !27
  store { i64, ptr } %t88, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local void @compiler_2fload_2ecompiler_2fload_3aLoader_2eCondParser(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l1 = alloca ptr
  %l2 = alloca i64
  %l3 = alloca { i64, ptr }
  %l4 = alloca ptr
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i1
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca i64
  %l12 = alloca i32
  %l13 = alloca i32
  %l14 = alloca { i64, ptr }
  %l15 = alloca ptr
  %l16 = alloca i32
  %l17 = alloca i1
  %l18 = alloca %"compiler/source:Span"
  %l23 = alloca ptr
  %l24 = alloca %"compiler/diag:Diagnostics"
  %l30 = alloca ptr
  %l32 = alloca { i64, ptr }
  %l40 = alloca i64
  %l41 = alloca ptr
  %l46 = alloca ptr
  %l51 = alloca ptr
  %l53 = alloca ptr
  %l58 = alloca ptr
  %l65 = alloca %"compiler/parse:Parser"
  %l67 = alloca ptr
  %l70 = alloca i1
  %l71 = alloca %"compiler/cond:Scope"
  %l82 = alloca i64
  %l84 = alloca i64
  %l89 = alloca i64
  %l92 = alloca { i64, ptr }
  %l97 = alloca i1
  %l100 = alloca i1
  %l105 = alloca i1
  %l108 = alloca i1
  %l113 = alloca i1
  %l120 = alloca i1
  %l132 = alloca { i64, ptr }
  %l138 = alloca i1
  %l142 = alloca { i64, ptr }
  %l143 = alloca { i64, ptr }
  %l144 = alloca i64
  %l145 = alloca { i64, ptr }
  %l148 = alloca i1
  %l149 = alloca { i64, ptr }
  %l159 = alloca { i64, ptr }
  %l160 = alloca { i64, ptr }
  %l163 = alloca i64
  %l164 = alloca { i64, ptr }
  %l167 = alloca i64
  %l168 = alloca i64
  %l173 = alloca { i64, ptr }
  %l175 = alloca i64
  %l179 = alloca { i64, ptr }
  %l180 = alloca { i64, ptr }
  %l182 = alloca i64
  %l184 = alloca i64
  %l185 = alloca { i64, ptr }
  %l186 = alloca ptr
  %l194 = alloca ptr
  %l195 = alloca i32
  %l196 = alloca { i64, ptr }
  %l202 = alloca i64
  %l206 = alloca i1
  %l209 = alloca { i64, ptr }
  %l212 = alloca { i64, ptr }
  %l215 = alloca %"compiler/source:Span"
  %l220 = alloca ptr
  %l221 = alloca i64
  %l229 = alloca { i64, ptr }
  %l231 = alloca i64
  %l233 = alloca i64
  %l234 = alloca i64
  %l240 = alloca { i64, ptr }
  %l241 = alloca %"compiler/source:Span"
  %l242 = alloca i1
  %l243 = alloca i64
  %l250 = alloca %"compiler/cond:Global"
  %s0 = alloca %olang.scope
  %s3 = alloca %olang.scope
  %t11 = alloca %"compiler/diag:Diagnostics", align 8
  %t101 = alloca %"compiler/parse:Parser", align 8
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l1, !tbaa !29
  %t3 = getelementptr %"compiler/load:Module", ptr %t1, i32 0, i32 24
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t6 = icmp eq ptr %t4, null
  %t8 = xor i1 %t6, true
  br i1 %t8, label %bb1, label %bb2
bb1:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb2:
  br label %bb3
bb3:
  %t10 = load ptr, ptr %l1, !tbaa !29
  store ptr %t10, ptr %l23, !tbaa !29
  call void @compiler_2fdiag_3aDiagnostics_2ector(ptr %t11, ptr %v1, i1 false)
  call void @llvm.memmove.p0.p0.i64(ptr %l24, ptr %t11, i64 544, i1 false)
  br label %bb4
bb4:
  %t12 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 544, i64 8)
  call void @llvm.memmove.p0.p0.i64(ptr %t12, ptr %l24, i64 544, i1 false)
  %t14 = load ptr, ptr %l23, !tbaa !29
  %t15 = getelementptr %"compiler/load:Module", ptr %t14, i32 0, i32 25
  store ptr %t12, ptr %t15, !tbaa !29
  %t16 = load ptr, ptr %l1, !tbaa !29
  %t18 = getelementptr %"compiler/load:Module", ptr %t16, i32 0, i32 25
  %t19 = load ptr, ptr %t18, !tbaa !29
  %t21 = icmp eq ptr %t19, null
  br i1 %t21, label %bb5, label %bb6
bb5:
  call void @__olang_check_failed(ptr @olang_loc_5d2941245b0f1fa7_46eb30867ff7b79b)
  unreachable
bb6:
  br label %bb7
bb7:
  %t23 = load ptr, ptr %l1, !tbaa !29
  %t25 = getelementptr %"compiler/load:Module", ptr %t23, i32 0, i32 25
  %t26 = load ptr, ptr %t25, !tbaa !29
  store ptr %t26, ptr %l30, !tbaa !29
  %t27 = load ptr, ptr %l1, !tbaa !29
  %t29 = getelementptr %"compiler/load:Module", ptr %t27, i32 0, i32 0
  %t30 = load { i64, ptr }, ptr %t29, !tbaa !27
  store { i64, ptr } %t30, ptr %l32, !tbaa !27
  %t31 = load ptr, ptr %l1, !tbaa !29
  %t33 = getelementptr %"compiler/load:Module", ptr %t31, i32 0, i32 6
  %t34 = load ptr, ptr %t33, !tbaa !29
  %t36 = icmp eq ptr %t34, null
  br i1 %t36, label %bb8, label %bb9
bb8:
  call void @__olang_check_failed(ptr @olang_loc_5d2941245b0f1fa7_46eb30867ff7b79b)
  unreachable
bb9:
  br label %bb10
bb10:
  %t38 = load ptr, ptr %l1, !tbaa !29
  %t40 = getelementptr %"compiler/load:Module", ptr %t38, i32 0, i32 6
  %t41 = load ptr, ptr %t40, !tbaa !29
  %t44 = getelementptr %"compiler/source:Source", ptr %t41, i32 0, i32 1
  %t45 = load { i64, ptr }, ptr %t44, !tbaa !27
  %t46 = load ptr, ptr %l30, !tbaa !29
  %t47 = load { i64, ptr }, ptr %l32, !tbaa !27
  %t49 = call i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eAddFile(ptr %v1, ptr %v1, ptr %v1, ptr %t46, { i64, ptr } %t47, { i64, ptr } %t45, i1 false)
  store i64 %t49, ptr %l40
  br label %bb11
bb11:
  %t50 = load i64, ptr %l40, !tbaa !24
  store i64 %t50, ptr %l2, !tbaa !24
  %t51 = load ptr, ptr %l1, !tbaa !29
  store ptr %t51, ptr %l41, !tbaa !29
  %t52 = load ptr, ptr %l1, !tbaa !29
  %t54 = getelementptr %"compiler/load:Module", ptr %t52, i32 0, i32 6
  %t55 = load ptr, ptr %t54, !tbaa !29
  %t57 = icmp eq ptr %t55, null
  br i1 %t57, label %bb12, label %bb13
bb12:
  call void @__olang_check_failed(ptr @olang_loc_59c39bf8bbcbf188_f14f86d27dc81ac)
  unreachable
bb13:
  br label %bb14
bb14:
  %t59 = load ptr, ptr %l1, !tbaa !29
  %t61 = getelementptr %"compiler/load:Module", ptr %t59, i32 0, i32 6
  %t62 = load ptr, ptr %t61, !tbaa !29
  store ptr %t62, ptr %l46, !tbaa !29
  %t63 = load ptr, ptr %l1, !tbaa !29
  %t65 = getelementptr %"compiler/load:Module", ptr %t63, i32 0, i32 7
  %t66 = load ptr, ptr %t65, !tbaa !29
  %t68 = icmp eq ptr %t66, null
  br i1 %t68, label %bb15, label %bb16
bb15:
  call void @__olang_check_failed(ptr @olang_loc_59c39bf8bbcbf188_f14f86d27dc81ac)
  unreachable
bb16:
  br label %bb17
bb17:
  %t70 = load ptr, ptr %l1, !tbaa !29
  %t72 = getelementptr %"compiler/load:Module", ptr %t70, i32 0, i32 7
  %t73 = load ptr, ptr %t72, !tbaa !29
  store ptr %t73, ptr %l51, !tbaa !29
  %t76 = getelementptr %"compiler/load:Loader", ptr %a0, i32 0, i32 3
  %t77 = load ptr, ptr %t76, !tbaa !29
  store ptr %t77, ptr %l53, !tbaa !29
  %t78 = load ptr, ptr %l1, !tbaa !29
  %t80 = getelementptr %"compiler/load:Module", ptr %t78, i32 0, i32 12
  %t81 = load ptr, ptr %t80, !tbaa !29
  %t83 = icmp eq ptr %t81, null
  br i1 %t83, label %bb18, label %bb19
bb18:
  call void @__olang_check_failed(ptr @olang_loc_59c39bf8bbcbf188_f14f86d27dc81ac)
  unreachable
bb19:
  br label %bb20
bb20:
  %t85 = load ptr, ptr %l1, !tbaa !29
  %t87 = getelementptr %"compiler/load:Module", ptr %t85, i32 0, i32 12
  %t88 = load ptr, ptr %t87, !tbaa !29
  store ptr %t88, ptr %l58, !tbaa !29
  %t89 = load ptr, ptr %l1, !tbaa !29
  %t91 = getelementptr %"compiler/load:Module", ptr %t89, i32 0, i32 25
  %t92 = load ptr, ptr %t91, !tbaa !29
  %t94 = icmp eq ptr %t92, null
  br i1 %t94, label %bb21, label %bb22
bb21:
  call void @__olang_check_failed(ptr @olang_loc_59c39bf8bbcbf188_f14f86d27dc81ac)
  unreachable
bb22:
  br label %bb23
bb23:
  %t96 = load ptr, ptr %l1, !tbaa !29
  %t98 = getelementptr %"compiler/load:Module", ptr %t96, i32 0, i32 25
  %t99 = load ptr, ptr %t98, !tbaa !29
  %t100 = load i64, ptr %l2, !tbaa !24
  %t102 = load ptr, ptr %l46, !tbaa !29
  %t103 = load ptr, ptr %l51, !tbaa !29
  %t104 = load ptr, ptr %l53, !tbaa !29
  %t105 = load ptr, ptr %l58, !tbaa !29
  call void @compiler_2fparse_3aParser_2ector(ptr %t101, ptr %v1, ptr %v1, ptr %v0, ptr %v1, ptr %v1, ptr %v1, ptr %t102, ptr %t103, ptr %t104, ptr %t105, ptr %t99, i64 %t100)
  call void @llvm.memmove.p0.p0.i64(ptr %l65, ptr %t101, i64 912, i1 false)
  br label %bb24
bb24:
  %t108 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 912, i64 8)
  call void @llvm.memmove.p0.p0.i64(ptr %t108, ptr %l65, i64 912, i1 false)
  %t110 = load ptr, ptr %l41, !tbaa !29
  %t111 = getelementptr %"compiler/load:Module", ptr %t110, i32 0, i32 24
  store ptr %t108, ptr %t111, !tbaa !29
  %t112 = load ptr, ptr %l1, !tbaa !29
  store ptr %t112, ptr %l67, !tbaa !29
  %t113 = load ptr, ptr %l1, !tbaa !29
  %t115 = getelementptr %"compiler/load:Module", ptr %t113, i32 0, i32 2
  %t116 = load { i64, ptr }, ptr %t115, !tbaa !27
  %t118 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %v1, ptr %s0, { i64, ptr } %t116, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d32, i32 0, i32 1) })
  store i1 %t118, ptr %l70
  br label %bb25
bb25:
  %t119 = load i1, ptr %l70, !tbaa !21
  %t120 = call %"compiler/cond:Scope" @compiler_2fcond_3aScope_2ector(ptr %v1, i1 %t119)
  store %"compiler/cond:Scope" %t120, ptr %l71
  br label %bb26
bb26:
  %t121 = load %"compiler/cond:Scope", ptr %l71
  %t122 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 104, i64 8)
  store %"compiler/cond:Scope" %t121, ptr %t122
  %t124 = load ptr, ptr %l67, !tbaa !29
  %t125 = getelementptr %"compiler/load:Module", ptr %t124, i32 0, i32 23
  store ptr %t122, ptr %t125, !tbaa !29
  %t126 = load ptr, ptr %l1, !tbaa !29
  %t128 = getelementptr %"compiler/load:Module", ptr %t126, i32 0, i32 7
  %t129 = load ptr, ptr %t128, !tbaa !29
  %t131 = icmp eq ptr %t129, null
  br i1 %t131, label %bb27, label %bb28
bb27:
  call void @__olang_check_failed(ptr @olang_loc_4d8cd44e3790675d_2617b874cf4b9361)
  unreachable
bb28:
  br label %bb29
bb29:
  %t133 = load ptr, ptr %l1, !tbaa !29
  %t135 = getelementptr %"compiler/load:Module", ptr %t133, i32 0, i32 7
  %t136 = load ptr, ptr %t135, !tbaa !29
  %t139 = getelementptr %"compiler/scan:Tokens", ptr %t136, i32 0, i32 0
  %t140 = load { i64, ptr }, ptr %t139, !tbaa !27
  store { i64, ptr } %t140, ptr %l3, !tbaa !27
  %t142 = load ptr, ptr %l1, !tbaa !29
  %t144 = getelementptr %"compiler/load:Module", ptr %t142, i32 0, i32 22
  store ptr %t144, ptr %l4, !tbaa !29
  store i64 0, ptr %l5, !tbaa !24
  br label %bb30
bb30:
  store %olang.scope zeroinitializer, ptr %s3
  %t146 = load i64, ptr %l5, !tbaa !24
  store i64 %t146, ptr %l82, !tbaa !24
  %t147 = load ptr, ptr %l4, !tbaa !29
  %t149 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v1, ptr %t147)
  store i64 %t149, ptr %l84
  br label %bb31
bb31:
  %t150 = load i64, ptr %l82, !tbaa !24
  %t151 = load i64, ptr %l84, !tbaa !24
  %t152 = icmp slt i64 %t150, %t151
  %t154 = xor i1 %t152, true
  br i1 %t154, label %bb32, label %bb33
bb32:
  call void @__olang_scope_close(ptr %s3)
  br label %bb136
bb33:
  br label %bb34
bb34:
  %t156 = load ptr, ptr %l4, !tbaa !29
  %t157 = load i64, ptr %l5, !tbaa !24
  %t160 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v1, ptr %t156, i64 %t157)
  store i64 %t160, ptr %l89
  br label %bb35
bb35:
  %t161 = load i64, ptr %l89, !tbaa !24
  store i64 %t161, ptr %l6, !tbaa !24
  %t162 = load i64, ptr %l6, !tbaa !24
  %t164 = add i64 %t162, 1
  store i64 %t164, ptr %l7, !tbaa !24
  store i1 false, ptr %l8, !tbaa !21
  store i64 0, ptr %l9, !tbaa !24
  store i64 -1, ptr %l10, !tbaa !24
  store i64 0, ptr %l11, !tbaa !24
  br label %bb36
bb36:
  %t166 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t166, ptr %l92, !tbaa !27
  %t167 = load i64, ptr %l7, !tbaa !24
  %t169 = getelementptr { i64, ptr }, ptr %l92, i32 0, i32 1
  %t170 = load ptr, ptr %t169, !tbaa !27
  %t171 = getelementptr %"compiler/token:Token", ptr %t170, i64 %t167
  %t172 = getelementptr %"compiler/token:Token", ptr %t171, i32 0, i32 0
  %t173 = load i32, ptr %t172, !range !{i32 0, i32 114}
  store i32 %t173, ptr %l12
  %t175 = load i32, ptr %l12, !range !{i32 0, i32 114}
  %t177 = trunc i64 0 to i32
  %t178 = icmp eq i32 %t175, %t177
  br i1 %t178, label %bb37, label %bb38
bb37:
  store i1 true, ptr %l97, !tbaa !21
  br label %bb39
bb38:
  %t180 = load i32, ptr %l12, !range !{i32 0, i32 114}
  %t182 = trunc i64 8 to i32
  %t183 = icmp eq i32 %t180, %t182
  store i1 %t183, ptr %l97, !tbaa !21
  br label %bb39
bb39:
  %t185 = load i1, ptr %l97, !tbaa !21
  br i1 %t185, label %bb40, label %bb41
bb40:
  store i1 true, ptr %l100, !tbaa !21
  br label %bb42
bb41:
  %t186 = load i32, ptr %l12, !range !{i32 0, i32 114}
  %t188 = trunc i64 112 to i32
  %t189 = icmp eq i32 %t186, %t188
  store i1 %t189, ptr %l100, !tbaa !21
  br label %bb42
bb42:
  %t191 = load i1, ptr %l100, !tbaa !21
  br i1 %t191, label %bb43, label %bb44
bb43:
  br label %bb71
bb44:
  br label %bb45
bb45:
  %t192 = load i64, ptr %l11, !tbaa !24
  %t194 = icmp eq i64 %t192, 0
  br i1 %t194, label %bb46, label %bb47
bb46:
  %t196 = load i32, ptr %l12, !range !{i32 0, i32 114}
  %t198 = trunc i64 78 to i32
  %t199 = icmp eq i32 %t196, %t198
  br i1 %t199, label %bb48, label %bb49
bb47:
  store i1 false, ptr %l105, !tbaa !21
  br label %bb51
bb48:
  store i1 true, ptr %l108, !tbaa !21
  br label %bb50
bb49:
  %t201 = load i32, ptr %l12, !range !{i32 0, i32 114}
  %t203 = trunc i64 80 to i32
  %t204 = icmp eq i32 %t201, %t203
  store i1 %t204, ptr %l108, !tbaa !21
  br label %bb50
bb50:
  %t206 = load i1, ptr %l108, !tbaa !21
  store i1 %t206, ptr %l105, !tbaa !21
  br label %bb51
bb51:
  %t207 = load i1, ptr %l105, !tbaa !21
  br i1 %t207, label %bb52, label %bb53
bb52:
  br label %bb71
bb53:
  br label %bb54
bb54:
  %t208 = load i32, ptr %l12, !range !{i32 0, i32 114}
  %t210 = trunc i64 108 to i32
  %t211 = icmp eq i32 %t208, %t210
  br i1 %t211, label %bb55, label %bb56
bb55:
  store i1 true, ptr %l113, !tbaa !21
  br label %bb57
bb56:
  %t213 = load i32, ptr %l12, !range !{i32 0, i32 114}
  %t215 = trunc i64 110 to i32
  %t216 = icmp eq i32 %t213, %t215
  store i1 %t216, ptr %l113, !tbaa !21
  br label %bb57
bb57:
  %t218 = load i1, ptr %l113, !tbaa !21
  br i1 %t218, label %bb58, label %bb59
bb58:
  %t219 = load i64, ptr %l11, !tbaa !24
  %t221 = add i64 %t219, 1
  store i64 %t221, ptr %l11, !tbaa !24
  br label %bb60
bb59:
  br label %bb60
bb60:
  %t223 = load i32, ptr %l12, !range !{i32 0, i32 114}
  %t225 = trunc i64 109 to i32
  %t226 = icmp eq i32 %t223, %t225
  br i1 %t226, label %bb61, label %bb62
bb61:
  store i1 true, ptr %l120, !tbaa !21
  br label %bb63
bb62:
  %t228 = load i32, ptr %l12, !range !{i32 0, i32 114}
  %t230 = trunc i64 111 to i32
  %t231 = icmp eq i32 %t228, %t230
  store i1 %t231, ptr %l120, !tbaa !21
  br label %bb63
bb63:
  %t233 = load i1, ptr %l120, !tbaa !21
  br i1 %t233, label %bb64, label %bb65
bb64:
  %t234 = load i64, ptr %l11, !tbaa !24
  %t236 = sub i64 %t234, 1
  store i64 %t236, ptr %l11, !tbaa !24
  br label %bb66
bb65:
  br label %bb66
bb66:
  %t238 = load i32, ptr %l12, !range !{i32 0, i32 114}
  %t240 = trunc i64 39 to i32
  %t241 = icmp eq i32 %t238, %t240
  br i1 %t241, label %bb67, label %bb68
bb67:
  store i1 true, ptr %l8, !tbaa !21
  br label %bb69
bb68:
  %t243 = load i64, ptr %l9, !tbaa !24
  %t245 = add i64 %t243, 1
  store i64 %t245, ptr %l9, !tbaa !24
  %t247 = load i64, ptr %l7, !tbaa !24
  store i64 %t247, ptr %l10, !tbaa !24
  br label %bb69
bb69:
  %t249 = load i64, ptr %l7, !tbaa !24
  %t251 = add i64 %t249, 1
  store i64 %t251, ptr %l7, !tbaa !24
  br label %bb70
bb70:
  br label %bb36
bb71:
  %t253 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t253, ptr %l132, !tbaa !27
  %t254 = load i64, ptr %l7, !tbaa !24
  %t256 = getelementptr { i64, ptr }, ptr %l132, i32 0, i32 1
  %t257 = load ptr, ptr %t256, !tbaa !27
  %t258 = getelementptr %"compiler/token:Token", ptr %t257, i64 %t254
  %t259 = getelementptr %"compiler/token:Token", ptr %t258, i32 0, i32 0
  %t260 = load i32, ptr %t259, !range !{i32 0, i32 114}
  store i32 %t260, ptr %l13
  %t262 = load i32, ptr %l13, !range !{i32 0, i32 114}
  %t264 = trunc i64 78 to i32
  %t265 = icmp eq i32 %t262, %t264
  %t267 = xor i1 %t265, true
  br i1 %t267, label %bb72, label %bb73
bb72:
  %t269 = load i32, ptr %l13, !range !{i32 0, i32 114}
  %t271 = trunc i64 80 to i32
  %t272 = icmp eq i32 %t269, %t271
  %t274 = xor i1 %t272, true
  store i1 %t274, ptr %l138, !tbaa !21
  br label %bb74
bb73:
  store i1 false, ptr %l138, !tbaa !21
  br label %bb74
bb74:
  %t276 = load i1, ptr %l138, !tbaa !21
  br i1 %t276, label %bb75, label %bb76
bb75:
  call void @__olang_scope_close(ptr %s3)
  br label %bb135
bb76:
  br label %bb77
bb77:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d33, i32 0, i32 1) }, ptr %l142, !tbaa !27
  %t277 = load { i64, ptr }, ptr %l142, !tbaa !27
  store { i64, ptr } %t277, ptr %l143, !tbaa !27
  %t278 = load { i64, ptr }, ptr %l143, !tbaa !27
  %t279 = extractvalue { i64, ptr } %t278, 0
  store i64 %t279, ptr %l144, !tbaa !24
  %t280 = load i64, ptr %l144, !tbaa !24
  %t281 = mul i64 %t280, 1
  %t282 = call ptr @__olang_scope_alloc(ptr %s3, i64 %t281)
  %t283 = insertvalue { i64, ptr } undef, i64 %t280, 0
  %t284 = insertvalue { i64, ptr } %t283, ptr %t282, 1
  store { i64, ptr } %t284, ptr %l145, !tbaa !27
  %t285 = getelementptr { i64, ptr }, ptr %l145, i32 0, i32 1
  %t286 = load ptr, ptr %t285, !tbaa !27
  %t287 = getelementptr { i64, ptr }, ptr %l143, i32 0, i32 1
  %t288 = load ptr, ptr %t287, !tbaa !27
  %t289 = load i64, ptr %l144, !tbaa !24
  %t290 = mul i64 %t289, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t286, ptr %t288, i64 %t290, i1 false)
  %t291 = load { i64, ptr }, ptr %l145, !tbaa !27
  store { i64, ptr } %t291, ptr %l14, !tbaa !27
  %t292 = load i64, ptr %l9, !tbaa !24
  %t294 = icmp eq i64 %t292, 1
  br i1 %t294, label %bb78, label %bb79
bb78:
  %t296 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t296, ptr %l149, !tbaa !27
  %t297 = load i64, ptr %l10, !tbaa !24
  %t299 = getelementptr { i64, ptr }, ptr %l149, i32 0, i32 1
  %t300 = load ptr, ptr %t299, !tbaa !27
  %t301 = getelementptr %"compiler/token:Token", ptr %t300, i64 %t297
  %t302 = getelementptr %"compiler/token:Token", ptr %t301, i32 0, i32 0
  %t303 = load i32, ptr %t302, !range !{i32 0, i32 114}
  %t305 = trunc i64 1 to i32
  %t306 = icmp eq i32 %t303, %t305
  store i1 %t306, ptr %l148, !tbaa !21
  br label %bb80
bb79:
  store i1 false, ptr %l148, !tbaa !21
  br label %bb80
bb80:
  %t308 = load i1, ptr %l148, !tbaa !21
  br i1 %t308, label %bb81, label %bb82
bb81:
  %t309 = load ptr, ptr %l1, !tbaa !29
  %t311 = getelementptr %"compiler/load:Module", ptr %t309, i32 0, i32 6
  %t312 = load ptr, ptr %t311, !tbaa !29
  %t314 = icmp eq ptr %t312, null
  br i1 %t314, label %bb83, label %bb84
bb82:
  %t316 = load i64, ptr %l9, !tbaa !24
  %t318 = icmp sgt i64 %t316, 0
  br i1 %t318, label %bb95, label %bb96
bb83:
  call void @__olang_check_failed(ptr @olang_loc_37ad9edc8de7e2f6_d0344632fdf871da)
  unreachable
bb84:
  br label %bb85
bb85:
  %t320 = load ptr, ptr %l1, !tbaa !29
  %t322 = getelementptr %"compiler/load:Module", ptr %t320, i32 0, i32 6
  %t323 = load ptr, ptr %t322, !tbaa !29
  %t326 = getelementptr %"compiler/source:Source", ptr %t323, i32 0, i32 1
  %t327 = load { i64, ptr }, ptr %t326, !tbaa !27
  store { i64, ptr } %t327, ptr %l159, !tbaa !27
  %t328 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t328, ptr %l160, !tbaa !27
  %t329 = load i64, ptr %l10, !tbaa !24
  %t331 = getelementptr { i64, ptr }, ptr %l160, i32 0, i32 1
  %t332 = load ptr, ptr %t331, !tbaa !27
  %t333 = getelementptr %"compiler/token:Token", ptr %t332, i64 %t329
  %t334 = getelementptr %"compiler/token:Token", ptr %t333, i32 0, i32 2
  %t335 = load i32, ptr %t334, !tbaa !23
  %t337 = sext i32 %t335 to i64
  store i64 %t337, ptr %l163, !tbaa !24
  %t338 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t338, ptr %l164, !tbaa !27
  %t339 = load i64, ptr %l10, !tbaa !24
  %t341 = getelementptr { i64, ptr }, ptr %l164, i32 0, i32 1
  %t342 = load ptr, ptr %t341, !tbaa !27
  %t343 = getelementptr %"compiler/token:Token", ptr %t342, i64 %t339
  %t344 = getelementptr %"compiler/token:Token", ptr %t343, i32 0, i32 3
  %t345 = load i32, ptr %t344, !tbaa !23
  %t347 = sext i32 %t345 to i64
  store i64 %t347, ptr %l167, !tbaa !24
  %t348 = load { i64, ptr }, ptr %l159, !tbaa !27
  %t349 = extractvalue { i64, ptr } %t348, 0
  store i64 %t349, ptr %l168, !tbaa !24
  %t350 = load i64, ptr %l163, !tbaa !24
  %t351 = icmp sge i64 %t350, 0
  br i1 %t351, label %bb86, label %bb87
bb86:
  %t353 = load i64, ptr %l163, !tbaa !24
  %t354 = load i64, ptr %l167, !tbaa !24
  %t355 = icmp sle i64 %t353, %t354
  br i1 %t355, label %bb88, label %bb89
bb87:
  call void @__olang_check_failed(ptr @olang_loc_ee319d06991d9051_474f59f05ada826d)
  unreachable
bb88:
  %t357 = load i64, ptr %l167, !tbaa !24
  %t358 = load i64, ptr %l168, !tbaa !24
  %t359 = icmp sle i64 %t357, %t358
  br i1 %t359, label %bb90, label %bb91
bb89:
  call void @__olang_check_failed(ptr @olang_loc_ee319d06991d9051_474f59f05ada826d)
  unreachable
bb90:
  %t361 = getelementptr { i64, ptr }, ptr %l159, i32 0, i32 1
  %t362 = load ptr, ptr %t361, !tbaa !27
  %t363 = load i64, ptr %l163, !tbaa !24
  %t364 = load i64, ptr %l167, !tbaa !24
  %t365 = getelementptr i8, ptr %t362, i64 %t363
  %t366 = sub i64 %t364, %t363
  %t367 = insertvalue { i64, ptr } undef, i64 %t366, 0
  %t368 = insertvalue { i64, ptr } %t367, ptr %t365, 1
  %t370 = extractvalue { i64, ptr } %t368, 1
  %t371 = extractvalue { i64, ptr } %t368, 0
  %t372 = call ptr @__olang_scope_alloc(ptr %s3, i64 %t371)
  call void @olang_textcopy(ptr %t372, ptr %t370, i64 %t371)
  %t373 = insertvalue { i64, ptr } undef, i64 %t371, 0
  %t374 = insertvalue { i64, ptr } %t373, ptr %t372, 1
  store { i64, ptr } %t374, ptr %l173, !tbaa !27
  %t375 = load { i64, ptr }, ptr %l14, !tbaa !27
  %t376 = extractvalue { i64, ptr } %t375, 0
  %t377 = load { i64, ptr }, ptr %l173, !tbaa !27
  %t378 = extractvalue { i64, ptr } %t377, 0
  store i64 %t378, ptr %l175, !tbaa !24
  %t380 = load i64, ptr %l175, !tbaa !24
  %t381 = icmp eq i64 %t376, %t380
  br i1 %t381, label %bb92, label %bb93
bb91:
  call void @__olang_check_failed(ptr @olang_loc_ee319d06991d9051_474f59f05ada826d)
  unreachable
bb92:
  %t383 = getelementptr { i64, ptr }, ptr %l14, i32 0, i32 1
  %t384 = load ptr, ptr %t383, !tbaa !27
  %t385 = getelementptr { i64, ptr }, ptr %l173, i32 0, i32 1
  %t386 = load ptr, ptr %t385, !tbaa !27
  %t387 = load i64, ptr %l175, !tbaa !24
  %t388 = mul i64 %t387, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t384, ptr %t386, i64 %t388, i1 false)
  br label %bb94
bb93:
  %t389 = load { i64, ptr }, ptr %l173, !tbaa !27
  store { i64, ptr } %t389, ptr %l14, !tbaa !27
  br label %bb94
bb94:
  br label %bb101
bb95:
  store { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d34, i32 0, i32 1) }, ptr %l179, !tbaa !27
  %t390 = load { i64, ptr }, ptr %l179, !tbaa !27
  store { i64, ptr } %t390, ptr %l180, !tbaa !27
  %t391 = load { i64, ptr }, ptr %l14, !tbaa !27
  %t392 = extractvalue { i64, ptr } %t391, 0
  %t393 = load { i64, ptr }, ptr %l180, !tbaa !27
  %t394 = extractvalue { i64, ptr } %t393, 0
  store i64 %t394, ptr %l182, !tbaa !24
  %t396 = load i64, ptr %l182, !tbaa !24
  %t397 = icmp eq i64 %t392, %t396
  br i1 %t397, label %bb97, label %bb98
bb96:
  br label %bb100
bb97:
  %t399 = getelementptr { i64, ptr }, ptr %l14, i32 0, i32 1
  %t400 = load ptr, ptr %t399, !tbaa !27
  %t401 = getelementptr { i64, ptr }, ptr %l180, i32 0, i32 1
  %t402 = load ptr, ptr %t401, !tbaa !27
  %t403 = load i64, ptr %l182, !tbaa !24
  %t404 = mul i64 %t403, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t400, ptr %t402, i64 %t404, i1 false)
  br label %bb99
bb98:
  %t405 = load { i64, ptr }, ptr %l180, !tbaa !27
  %t406 = extractvalue { i64, ptr } %t405, 0
  store i64 %t406, ptr %l184, !tbaa !24
  %t407 = load i64, ptr %l184, !tbaa !24
  %t408 = mul i64 %t407, 1
  %t409 = call ptr @__olang_scope_alloc(ptr %s3, i64 %t408)
  %t410 = insertvalue { i64, ptr } undef, i64 %t407, 0
  %t411 = insertvalue { i64, ptr } %t410, ptr %t409, 1
  store { i64, ptr } %t411, ptr %l185, !tbaa !27
  %t412 = getelementptr { i64, ptr }, ptr %l185, i32 0, i32 1
  %t413 = load ptr, ptr %t412, !tbaa !27
  %t414 = getelementptr { i64, ptr }, ptr %l180, i32 0, i32 1
  %t415 = load ptr, ptr %t414, !tbaa !27
  %t416 = load i64, ptr %l184, !tbaa !24
  %t417 = mul i64 %t416, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t413, ptr %t415, i64 %t417, i1 false)
  %t418 = load { i64, ptr }, ptr %l185, !tbaa !27
  store { i64, ptr } %t418, ptr %l14, !tbaa !27
  br label %bb99
bb99:
  br label %bb100
bb100:
  br label %bb101
bb101:
  %t419 = load ptr, ptr %l1, !tbaa !29
  %t421 = getelementptr %"compiler/load:Module", ptr %t419, i32 0, i32 24
  %t422 = load ptr, ptr %t421, !tbaa !29
  %t424 = icmp eq ptr %t422, null
  br i1 %t424, label %bb102, label %bb103
bb102:
  call void @__olang_check_failed(ptr @olang_loc_57e236369a85f00c_b06e30e0c965afa8)
  unreachable
bb103:
  br label %bb104
bb104:
  %t426 = load ptr, ptr %l1, !tbaa !29
  %t428 = getelementptr %"compiler/load:Module", ptr %t426, i32 0, i32 24
  %t429 = load ptr, ptr %t428, !tbaa !29
  %t430 = load i64, ptr %l7, !tbaa !24
  %t432 = add i64 %t430, 1
  %t435 = call { i32, ptr } @compiler_2fparse_2ecompiler_2fparse_3aParser_2eExprAt(ptr %v1, ptr %v1, ptr %t429, i64 %t432)
  %t436 = extractvalue { i32, ptr } %t435, 1
  %t437 = extractvalue { i32, ptr } %t435, 0
  store i32 %t437, ptr %l195
  %t438 = icmp ne i32 %t437, 0
  br i1 %t438, label %bb106, label %ok.439, !prof !99
ok.439:
  store ptr %t436, ptr %l194
  br label %bb105
bb105:
  %t440 = load ptr, ptr %l194, !tbaa !29
  store ptr %t440, ptr %l186, !tbaa !29
  br label %bb108
bb106:
  br label %bb107
bb107:
  call void @__olang_scope_close(ptr %s3)
  br label %bb135
bb108:
  %t441 = load ptr, ptr %l186, !tbaa !29
  store ptr %t441, ptr %l15, !tbaa !29
  %t442 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t442, ptr %l196, !tbaa !27
  %t443 = load ptr, ptr %l1, !tbaa !29
  %t445 = getelementptr %"compiler/load:Module", ptr %t443, i32 0, i32 24
  %t446 = load ptr, ptr %t445, !tbaa !29
  %t448 = icmp eq ptr %t446, null
  br i1 %t448, label %bb109, label %bb110
bb109:
  call void @__olang_check_failed(ptr @olang_loc_64a34b454640941_8ed0e4b282ed07d)
  unreachable
bb110:
  br label %bb111
bb111:
  %t450 = load ptr, ptr %l1, !tbaa !29
  %t452 = getelementptr %"compiler/load:Module", ptr %t450, i32 0, i32 24
  %t453 = load ptr, ptr %t452, !tbaa !29
  %t455 = call i64 @compiler_2fparse_2ecompiler_2fparse_3aParser_2ePos(ptr %v1, ptr %t453)
  store i64 %t455, ptr %l202
  br label %bb112
bb112:
  %t456 = load i64, ptr %l202, !tbaa !24
  %t457 = getelementptr { i64, ptr }, ptr %l196, i32 0, i32 1
  %t458 = load ptr, ptr %t457, !tbaa !27
  %t459 = getelementptr %"compiler/token:Token", ptr %t458, i64 %t456
  %t460 = getelementptr %"compiler/token:Token", ptr %t459, i32 0, i32 0
  %t461 = load i32, ptr %t460, !range !{i32 0, i32 114}
  store i32 %t461, ptr %l16
  %t463 = load i32, ptr %l16, !range !{i32 0, i32 114}
  %t465 = trunc i64 8 to i32
  %t466 = icmp eq i32 %t463, %t465
  br i1 %t466, label %bb113, label %bb114
bb113:
  store i1 true, ptr %l206, !tbaa !21
  br label %bb115
bb114:
  %t468 = load i32, ptr %l16, !range !{i32 0, i32 114}
  %t470 = trunc i64 0 to i32
  %t471 = icmp eq i32 %t468, %t470
  store i1 %t471, ptr %l206, !tbaa !21
  br label %bb115
bb115:
  %t473 = load i1, ptr %l206, !tbaa !21
  store i1 %t473, ptr %l17, !tbaa !21
  %t474 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t474, ptr %l209, !tbaa !27
  %t475 = load i64, ptr %l6, !tbaa !24
  %t477 = getelementptr { i64, ptr }, ptr %l209, i32 0, i32 1
  %t478 = load ptr, ptr %t477, !tbaa !27
  %t479 = getelementptr %"compiler/token:Token", ptr %t478, i64 %t475
  %t480 = getelementptr %"compiler/token:Token", ptr %t479, i32 0, i32 2
  %t481 = load i32, ptr %t480, !tbaa !23
  %t482 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t482, ptr %l212, !tbaa !27
  %t483 = load i64, ptr %l6, !tbaa !24
  %t485 = getelementptr { i64, ptr }, ptr %l212, i32 0, i32 1
  %t486 = load ptr, ptr %t485, !tbaa !27
  %t487 = getelementptr %"compiler/token:Token", ptr %t486, i64 %t483
  %t488 = getelementptr %"compiler/token:Token", ptr %t487, i32 0, i32 3
  %t489 = load i32, ptr %t488, !tbaa !23
  %t492 = call %"compiler/source:Span" @compiler_2fsource_3aSpan_2ector(ptr %s3, i32 %t481, i32 %t489)
  store %"compiler/source:Span" %t492, ptr %l215
  br label %bb116
bb116:
  %t493 = load %"compiler/source:Span", ptr %l215
  store %"compiler/source:Span" %t493, ptr %l18
  %t494 = load ptr, ptr %l1, !tbaa !29
  %t496 = getelementptr %"compiler/load:Module", ptr %t494, i32 0, i32 23
  %t497 = load ptr, ptr %t496, !tbaa !29
  %t499 = icmp eq ptr %t497, null
  br i1 %t499, label %bb117, label %bb118
bb117:
  call void @__olang_check_failed(ptr @olang_loc_64e62a75e1515ba_854f46de0e9c2096)
  unreachable
bb118:
  br label %bb119
bb119:
  %t501 = load ptr, ptr %l1, !tbaa !29
  %t503 = getelementptr %"compiler/load:Module", ptr %t501, i32 0, i32 23
  %t504 = load ptr, ptr %t503, !tbaa !29
  store ptr %t504, ptr %l220, !tbaa !29
  %t505 = ptrtoint ptr %v1 to i64
  store i64 %t505, ptr %l221, !tbaa !24
  %t506 = load i1, ptr @olang_2esole_2ecompiler_2fcond_3aGlobal_2e0
  br i1 %t506, label %bb120, label %bb121
bb120:
  %t508 = call ptr @__olang_region_make(ptr %v1)
  %t509 = ptrtoint ptr %t508 to i64
  store i64 %t509, ptr %l221, !tbaa !24
  br label %bb121
bb121:
  %t510 = load ptr, ptr %l1, !tbaa !29
  %t512 = getelementptr %"compiler/load:Module", ptr %t510, i32 0, i32 6
  %t513 = load ptr, ptr %t512, !tbaa !29
  %t515 = icmp eq ptr %t513, null
  br i1 %t515, label %bb122, label %bb123
bb122:
  call void @__olang_check_failed(ptr @olang_loc_64e62a75e1515ba_854f46de0e9c2096)
  unreachable
bb123:
  br label %bb124
bb124:
  %t517 = load ptr, ptr %l1, !tbaa !29
  %t519 = getelementptr %"compiler/load:Module", ptr %t517, i32 0, i32 6
  %t520 = load ptr, ptr %t519, !tbaa !29
  %t523 = getelementptr %"compiler/source:Source", ptr %t520, i32 0, i32 1
  %t524 = load { i64, ptr }, ptr %t523, !tbaa !27
  store { i64, ptr } %t524, ptr %l229, !tbaa !27
  %t525 = getelementptr %"compiler/source:Span", ptr %l18, i32 0, i32 0
  %t526 = load i32, ptr %t525, !tbaa !23
  %t528 = sext i32 %t526 to i64
  store i64 %t528, ptr %l231, !tbaa !24
  %t529 = getelementptr %"compiler/source:Span", ptr %l18, i32 0, i32 1
  %t530 = load i32, ptr %t529, !tbaa !23
  %t532 = sext i32 %t530 to i64
  store i64 %t532, ptr %l233, !tbaa !24
  %t533 = load { i64, ptr }, ptr %l229, !tbaa !27
  %t534 = extractvalue { i64, ptr } %t533, 0
  store i64 %t534, ptr %l234, !tbaa !24
  %t535 = load i64, ptr %l231, !tbaa !24
  %t536 = icmp sge i64 %t535, 0
  br i1 %t536, label %bb125, label %bb126
bb125:
  %t538 = load i64, ptr %l231, !tbaa !24
  %t539 = load i64, ptr %l233, !tbaa !24
  %t540 = icmp sle i64 %t538, %t539
  br i1 %t540, label %bb127, label %bb128
bb126:
  call void @__olang_check_failed(ptr @olang_loc_edaf45632a5c2555_299361976cec5e59)
  unreachable
bb127:
  %t542 = load i64, ptr %l233, !tbaa !24
  %t543 = load i64, ptr %l234, !tbaa !24
  %t544 = icmp sle i64 %t542, %t543
  br i1 %t544, label %bb129, label %bb130
bb128:
  call void @__olang_check_failed(ptr @olang_loc_edaf45632a5c2555_299361976cec5e59)
  unreachable
bb129:
  %t546 = getelementptr { i64, ptr }, ptr %l229, i32 0, i32 1
  %t547 = load ptr, ptr %t546, !tbaa !27
  %t548 = load i64, ptr %l231, !tbaa !24
  %t549 = load i64, ptr %l233, !tbaa !24
  %t550 = getelementptr i8, ptr %t547, i64 %t548
  %t551 = sub i64 %t549, %t548
  %t552 = insertvalue { i64, ptr } undef, i64 %t551, 0
  %t553 = insertvalue { i64, ptr } %t552, ptr %t550, 1
  %t555 = extractvalue { i64, ptr } %t553, 1
  %t556 = extractvalue { i64, ptr } %t553, 0
  %t557 = load i64, ptr %l221
  %t558 = inttoptr i64 %t557 to ptr
  %t559 = call ptr @__olang_scope_alloc(ptr %t558, i64 %t556)
  call void @olang_textcopy(ptr %t559, ptr %t555, i64 %t556)
  %t560 = insertvalue { i64, ptr } undef, i64 %t556, 0
  %t561 = insertvalue { i64, ptr } %t560, ptr %t559, 1
  %t563 = load i64, ptr %l221
  %t564 = inttoptr i64 %t563 to ptr
  %t565 = extractvalue { i64, ptr } %t561, 0
  %t566 = extractvalue { i64, ptr } %t561, 1
  %t567 = mul i64 %t565, 1
  %t568 = call ptr @__olang_scope_alloc(ptr %t564, i64 %t567)
  call void @llvm.memcpy.p0.p0.i64(ptr %t568, ptr %t566, i64 %t567, i1 false)
  %t569 = insertvalue { i64, ptr } undef, i64 %t565, 0
  %t570 = insertvalue { i64, ptr } %t569, ptr %t568, 1
  store { i64, ptr } %t570, ptr %l240, !tbaa !27
  %t571 = load %"compiler/source:Span", ptr %l18
  store %"compiler/source:Span" %t571, ptr %l241
  %t572 = load i1, ptr %l8, !tbaa !21
  store i1 %t572, ptr %l242, !tbaa !21
  %t573 = ptrtoint ptr %v1 to i64
  store i64 %t573, ptr %l243, !tbaa !24
  %t574 = load i1, ptr @olang_2esole_2ecompiler_2fcond_3aGlobal_2e3
  br i1 %t574, label %bb131, label %bb132
bb130:
  call void @__olang_check_failed(ptr @olang_loc_edaf45632a5c2555_299361976cec5e59)
  unreachable
bb131:
  %t576 = call ptr @__olang_region_make(ptr %v1)
  %t577 = ptrtoint ptr %t576 to i64
  store i64 %t577, ptr %l243, !tbaa !24
  br label %bb132
bb132:
  %t578 = load { i64, ptr }, ptr %l14, !tbaa !27
  %t580 = extractvalue { i64, ptr } %t578, 1
  %t581 = extractvalue { i64, ptr } %t578, 0
  %t582 = load i64, ptr %l243
  %t583 = inttoptr i64 %t582 to ptr
  %t584 = call ptr @__olang_scope_alloc(ptr %t583, i64 %t581)
  call void @olang_textcopy(ptr %t584, ptr %t580, i64 %t581)
  %t585 = insertvalue { i64, ptr } undef, i64 %t581, 0
  %t586 = insertvalue { i64, ptr } %t585, ptr %t584, 1
  %t588 = load i64, ptr %l243
  %t589 = inttoptr i64 %t588 to ptr
  %t590 = extractvalue { i64, ptr } %t586, 0
  %t591 = extractvalue { i64, ptr } %t586, 1
  %t592 = mul i64 %t590, 1
  %t593 = call ptr @__olang_scope_alloc(ptr %t589, i64 %t592)
  call void @llvm.memcpy.p0.p0.i64(ptr %t593, ptr %t591, i64 %t592, i1 false)
  %t594 = insertvalue { i64, ptr } undef, i64 %t590, 0
  %t595 = insertvalue { i64, ptr } %t594, ptr %t593, 1
  %t596 = load ptr, ptr %l15, !tbaa !29
  %t597 = load i1, ptr %l17, !tbaa !21
  %t598 = load { i64, ptr }, ptr %l240, !tbaa !27
  %t599 = load %"compiler/source:Span", ptr %l241
  %t600 = load i1, ptr %l242, !tbaa !21
  %t604 = call %"compiler/cond:Global" @compiler_2fcond_3aGlobal_2ector(ptr %v1, ptr %v1, ptr %v1, ptr %v1, { i64, ptr } %t598, %"compiler/source:Span" %t599, i1 %t600, { i64, ptr } %t595, ptr %t596, i1 %t597)
  store %"compiler/cond:Global" %t604, ptr %l250
  br label %bb133
bb133:
  %t605 = load %"compiler/cond:Global", ptr %l250
  %t606 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 64, i64 8)
  store %"compiler/cond:Global" %t605, ptr %t606
  %t607 = load ptr, ptr %l220, !tbaa !29
  call void @compiler_2fcond_2ecompiler_2fcond_3aScope_2eAdd(ptr %v1, ptr %v1, ptr %t607, ptr %t606)
  br label %bb134
bb134:
  call void @__olang_scope_close(ptr %s3)
  br label %bb135
bb135:
  %t609 = load i64, ptr %l5, !tbaa !24
  %t611 = add i64 %t609, 1
  store i64 %t611, ptr %l5, !tbaa !24
  br label %bb30
bb136:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local { { i64, ptr }, { i64, ptr } } @compiler_2fload_2ecompiler_2fload_3aLoader_2eEmbed(ptr %v0, ptr %v1, ptr %v2, ptr %a0, i64 %a1, { i64, ptr } %a2) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca { i64, ptr }
  %lp3 = alloca ptr
  %l4 = alloca ptr
  %l5 = alloca { i64, ptr }
  %lp6 = alloca ptr
  %l7 = alloca { i64, ptr }
  %l8 = alloca i1
  %l9 = alloca { i64, ptr }
  %l10 = alloca { i64, ptr }
  %l12 = alloca { i64, ptr }
  %l13 = alloca i64
  %l14 = alloca i64
  %l15 = alloca i64
  %l16 = alloca i64
  %l17 = alloca i64
  %l18 = alloca i64
  %l19 = alloca { i64, ptr }
  %l20 = alloca { i64, ptr }
  %lp21 = alloca ptr
  %l22 = alloca { i64, ptr }
  %l23 = alloca i64
  %l24 = alloca i64
  %l27 = alloca i1
  %l28 = alloca ptr
  %l29 = alloca i64
  %l35 = alloca ptr
  %l41 = alloca { i64, ptr }
  %l43 = alloca { { i64, ptr }, { i64, ptr } }
  %l44 = alloca { i64, ptr }
  %l45 = alloca i64
  %l46 = alloca { i64, ptr }
  %l52 = alloca { i64, ptr }
  %l54 = alloca { { i64, ptr }, { i64, ptr } }
  %l55 = alloca { i64, ptr }
  %l56 = alloca i64
  %l57 = alloca { i64, ptr }
  %l60 = alloca { i64, ptr }
  %l61 = alloca { i64, ptr }
  %l62 = alloca { i64, ptr }
  %l63 = alloca i64
  %l64 = alloca { i64, ptr }
  %l66 = alloca i1
  %l67 = alloca i1
  %l69 = alloca i1
  %l71 = alloca { i64, ptr }
  %l72 = alloca { i64, ptr }
  %l74 = alloca i64
  %l80 = alloca { i64, ptr }
  %l81 = alloca { i64, ptr }
  %l83 = alloca i64
  %l86 = alloca { i64, ptr }
  %l87 = alloca i64
  %l91 = alloca i64
  %l92 = alloca i32
  %l96 = alloca i64
  %l103 = alloca { i64, ptr }
  %l104 = alloca i1
  %l105 = alloca i1
  %l107 = alloca i1
  %l109 = alloca i1
  %l111 = alloca i1
  %l113 = alloca { i64, ptr }
  %l114 = alloca { i64, ptr }
  %l115 = alloca i64
  %l116 = alloca { i64, ptr }
  %l119 = alloca i1
  %l120 = alloca { i64, ptr }
  %l121 = alloca { i64, ptr }
  %l123 = alloca i64
  %l125 = alloca i64
  %l126 = alloca { i64, ptr }
  %l128 = alloca i1
  %l132 = alloca { i64, ptr }
  %l133 = alloca i1
  %l136 = alloca { i64, ptr }
  %l137 = alloca { i64, ptr }
  %l139 = alloca i64
  %l142 = alloca i1
  %l144 = alloca i1
  %l146 = alloca i1
  %l147 = alloca i1
  %l151 = alloca { i64, ptr }
  %l156 = alloca i1
  %l164 = alloca i1
  %l166 = alloca i1
  %l168 = alloca i1
  %l169 = alloca { i64, ptr }
  %l170 = alloca { i64, ptr }
  %l171 = alloca i64
  %l172 = alloca { i64, ptr }
  %l174 = alloca i1
  %l177 = alloca { i64, ptr }
  %l179 = alloca i64
  %l182 = alloca { i64, ptr }
  %l185 = alloca i64
  %l189 = alloca i64
  %l190 = alloca i64
  %l200 = alloca { i64, ptr }
  %l201 = alloca i64
  %l206 = alloca i64
  %l209 = alloca i64
  %l228 = alloca { i64, ptr }
  %l229 = alloca { i64, ptr }
  %l231 = alloca i64
  %l235 = alloca { i64, ptr }
  %l237 = alloca { i64, ptr }
  %l238 = alloca i32
  %l242 = alloca { i64, ptr }
  %l244 = alloca i64
  %l246 = alloca { i64, ptr }
  %l248 = alloca { i64, ptr }
  %l249 = alloca i32
  %l253 = alloca i1
  %l254 = alloca i1
  %l259 = alloca i1
  %l269 = alloca i1
  %l272 = alloca i1
  %l280 = alloca i1
  %l286 = alloca { i64, ptr }
  %l288 = alloca { i64, ptr }
  %l289 = alloca i32
  %l291 = alloca i1
  %l300 = alloca i64
  %l311 = alloca { i64, ptr }
  %l320 = alloca ptr
  %l321 = alloca i64
  %l329 = alloca i64
  %l331 = alloca i64
  %l336 = alloca { i64, ptr }
  %l339 = alloca i1
  %l345 = alloca ptr
  %l346 = alloca i64
  %l351 = alloca { i64, ptr }
  %l355 = alloca { i64, ptr }
  %l356 = alloca i32
  %l359 = alloca { i64, ptr }
  %l361 = alloca { { i64, ptr }, { i64, ptr } }
  %l362 = alloca { i64, ptr }
  %l363 = alloca i64
  %l364 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %s3 = alloca %olang.scope
  %s5 = alloca %olang.scope
  %s9 = alloca %olang.scope
  %s10 = alloca %olang.scope
  %s15 = alloca %olang.scope
  %s18 = alloca %olang.scope
  %s20 = alloca %olang.scope
  %s21 = alloca %olang.scope
  %s28 = alloca %olang.scope
  %rv = alloca { { i64, ptr }, { i64, ptr } }
  store ptr %a0, ptr %l0
  store { i64, ptr } %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 0, i64 8)
  store ptr %t1, ptr %lp3
  %t3 = load ptr, ptr %lp3
  store [0 x i8] zeroinitializer, ptr %t3
  %t4 = load ptr, ptr %l0, !tbaa !29
  %t6 = getelementptr %"compiler/load:Loader", ptr %t4, i32 0, i32 10
  %t10 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H7bcf2aeb09afa796f4333e6ec8c3f63f(ptr %v0, ptr %v0, ptr %t6, i64 %a1)
  store ptr %t10, ptr %l35
  br label %bb1
bb1:
  %t11 = load ptr, ptr %l35, !tbaa !29
  store ptr %t11, ptr %l4, !tbaa !29
  %t12 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t14 = extractvalue { i64, ptr } %t12, 0
  %t16 = icmp eq i64 %t14, 0
  br i1 %t16, label %bb2, label %bb3
bb2:
  %t18 = load ptr, ptr %lp3
  %t20 = insertvalue { i64, ptr } undef, i64 0, 0
  %t21 = insertvalue { i64, ptr } %t20, ptr %t18, 1
  store { i64, ptr } { i64 27, ptr getelementptr inbounds (<{ i64, [27 x i8] }>, ptr @.d35, i32 0, i32 1) }, ptr %l41, !tbaa !27
  %t22 = load { i64, ptr }, ptr %l41, !tbaa !27
  %t24 = insertvalue { { i64, ptr }, { i64, ptr } } undef, { i64, ptr } %t21, 0
  %t26 = insertvalue { { i64, ptr }, { i64, ptr } } %t24, { i64, ptr } %t22, 1
  store { { i64, ptr }, { i64, ptr } } %t26, ptr %l43
  %t27 = getelementptr { { i64, ptr }, { i64, ptr } }, ptr %l43, i32 0, i32 1
  %t28 = load { i64, ptr }, ptr %t27, !tbaa !27
  store { i64, ptr } %t28, ptr %l44, !tbaa !27
  %t29 = load { i64, ptr }, ptr %l44, !tbaa !27
  %t30 = extractvalue { i64, ptr } %t29, 0
  store i64 %t30, ptr %l45, !tbaa !24
  %t31 = load i64, ptr %l45, !tbaa !24
  %t32 = mul i64 %t31, 1
  %t33 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t32)
  %t34 = insertvalue { i64, ptr } undef, i64 %t31, 0
  %t35 = insertvalue { i64, ptr } %t34, ptr %t33, 1
  store { i64, ptr } %t35, ptr %l46, !tbaa !27
  %t36 = getelementptr { i64, ptr }, ptr %l46, i32 0, i32 1
  %t37 = load ptr, ptr %t36, !tbaa !27
  %t38 = getelementptr { i64, ptr }, ptr %l44, i32 0, i32 1
  %t39 = load ptr, ptr %t38, !tbaa !27
  %t40 = load i64, ptr %l45, !tbaa !24
  %t41 = mul i64 %t40, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t37, ptr %t39, i64 %t41, i1 false)
  %t42 = load { i64, ptr }, ptr %l46, !tbaa !27
  %t43 = getelementptr { { i64, ptr }, { i64, ptr } }, ptr %l43, i32 0, i32 1
  store { i64, ptr } %t42, ptr %t43, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  %t44 = load { { i64, ptr }, { i64, ptr } }, ptr %l43
  store { { i64, ptr }, { i64, ptr } } %t44, ptr %rv
  br label %ret
bb3:
  br label %bb4
bb4:
  %t45 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t47 = extractvalue { i64, ptr } %t45, 0
  %t49 = icmp sge i64 %t47, 4096
  br i1 %t49, label %bb5, label %bb6
bb5:
  %t51 = load ptr, ptr %lp3
  %t53 = insertvalue { i64, ptr } undef, i64 0, 0
  %t54 = insertvalue { i64, ptr } %t53, ptr %t51, 1
  store { i64, ptr } { i64 33, ptr getelementptr inbounds (<{ i64, [33 x i8] }>, ptr @.d36, i32 0, i32 1) }, ptr %l52, !tbaa !27
  %t55 = load { i64, ptr }, ptr %l52, !tbaa !27
  %t57 = insertvalue { { i64, ptr }, { i64, ptr } } undef, { i64, ptr } %t54, 0
  %t59 = insertvalue { { i64, ptr }, { i64, ptr } } %t57, { i64, ptr } %t55, 1
  store { { i64, ptr }, { i64, ptr } } %t59, ptr %l54
  %t60 = getelementptr { { i64, ptr }, { i64, ptr } }, ptr %l54, i32 0, i32 1
  %t61 = load { i64, ptr }, ptr %t60, !tbaa !27
  store { i64, ptr } %t61, ptr %l55, !tbaa !27
  %t62 = load { i64, ptr }, ptr %l55, !tbaa !27
  %t63 = extractvalue { i64, ptr } %t62, 0
  store i64 %t63, ptr %l56, !tbaa !24
  %t64 = load i64, ptr %l56, !tbaa !24
  %t65 = mul i64 %t64, 1
  %t66 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t65)
  %t67 = insertvalue { i64, ptr } undef, i64 %t64, 0
  %t68 = insertvalue { i64, ptr } %t67, ptr %t66, 1
  store { i64, ptr } %t68, ptr %l57, !tbaa !27
  %t69 = getelementptr { i64, ptr }, ptr %l57, i32 0, i32 1
  %t70 = load ptr, ptr %t69, !tbaa !27
  %t71 = getelementptr { i64, ptr }, ptr %l55, i32 0, i32 1
  %t72 = load ptr, ptr %t71, !tbaa !27
  %t73 = load i64, ptr %l56, !tbaa !24
  %t74 = mul i64 %t73, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t70, ptr %t72, i64 %t74, i1 false)
  %t75 = load { i64, ptr }, ptr %l57, !tbaa !27
  %t76 = getelementptr { { i64, ptr }, { i64, ptr } }, ptr %l54, i32 0, i32 1
  store { i64, ptr } %t75, ptr %t76, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  %t77 = load { { i64, ptr }, { i64, ptr } }, ptr %l54
  store { { i64, ptr }, { i64, ptr } } %t77, ptr %rv
  br label %ret
bb6:
  br label %bb7
bb7:
  %t78 = load ptr, ptr %l4, !tbaa !29
  %t80 = getelementptr %"compiler/load:Module", ptr %t78, i32 0, i32 0
  %t81 = load { i64, ptr }, ptr %t80, !tbaa !27
  %t83 = call { i64, ptr } @compiler_2fload_2emoduleDir(ptr %v0, ptr %s0, { i64, ptr } %t81)
  store { i64, ptr } %t83, ptr %l60
  br label %bb8
bb8:
  %t84 = load { i64, ptr }, ptr %l60, !tbaa !27
  store { i64, ptr } %t84, ptr %l5, !tbaa !27
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d37, i32 0, i32 1) }, ptr %l61, !tbaa !27
  %t85 = load { i64, ptr }, ptr %l61, !tbaa !27
  store { i64, ptr } %t85, ptr %l62, !tbaa !27
  %t86 = load { i64, ptr }, ptr %l62, !tbaa !27
  %t87 = extractvalue { i64, ptr } %t86, 0
  store i64 %t87, ptr %l63, !tbaa !24
  %t88 = load i64, ptr %l63, !tbaa !24
  %t89 = mul i64 %t88, 1
  %t90 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t89)
  %t91 = insertvalue { i64, ptr } undef, i64 %t88, 0
  %t92 = insertvalue { i64, ptr } %t91, ptr %t90, 1
  store { i64, ptr } %t92, ptr %l64, !tbaa !27
  %t93 = getelementptr { i64, ptr }, ptr %l64, i32 0, i32 1
  %t94 = load ptr, ptr %t93, !tbaa !27
  %t95 = getelementptr { i64, ptr }, ptr %l62, i32 0, i32 1
  %t96 = load ptr, ptr %t95, !tbaa !27
  %t97 = load i64, ptr %l63, !tbaa !24
  %t98 = mul i64 %t97, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t94, ptr %t96, i64 %t98, i1 false)
  %t99 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 16, i64 8)
  store ptr %t99, ptr %lp6
  %t100 = load { i64, ptr }, ptr %l64, !tbaa !27
  %t101 = load ptr, ptr %lp6
  store { i64, ptr } %t100, ptr %t101, !tbaa !27
  %t102 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t104 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %v1, ptr %s0, { i64, ptr } %t102, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d38, i32 0, i32 1) })
  store i1 %t104, ptr %l66
  br label %bb9
bb9:
  %t105 = load i1, ptr %l66, !tbaa !21
  br i1 %t105, label %bb10, label %bb11
bb10:
  store i1 true, ptr %l67, !tbaa !21
  br label %bb13
bb11:
  %t106 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t108 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %s0, { i64, ptr } %t106, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d39, i32 0, i32 1) })
  store i1 %t108, ptr %l69
  br label %bb12
bb12:
  %t109 = load i1, ptr %l69, !tbaa !21
  store i1 %t109, ptr %l67, !tbaa !21
  br label %bb13
bb13:
  %t110 = load i1, ptr %l67, !tbaa !21
  br i1 %t110, label %bb14, label %bb15
bb14:
  store %olang.scope zeroinitializer, ptr %s3
  %t111 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t113 = call { i64, ptr } @compiler_2fload_2eNormalize(ptr %v1, ptr %s3, { i64, ptr } %t111)
  store { i64, ptr } %t113, ptr %l71
  br label %bb16
bb15:
  store %olang.scope zeroinitializer, ptr %s5
  %t114 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t115 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t117 = extractvalue { i64, ptr } %t114, 1
  %t118 = extractvalue { i64, ptr } %t114, 0
  %t119 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d40, i32 0, i32 1) }, 1
  %t120 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d40, i32 0, i32 1) }, 0
  %t121 = add i64 %t118, %t120
  %t123 = extractvalue { i64, ptr } %t115, 1
  %t124 = extractvalue { i64, ptr } %t115, 0
  %t125 = add i64 %t121, %t124
  %t126 = call ptr @__olang_scope_alloc(ptr %s5, i64 %t125)
  call void @olang_textcopy(ptr %t126, ptr %t117, i64 %t118)
  %t127 = getelementptr i8, ptr %t126, i64 %t118
  call void @olang_textcopy(ptr %t127, ptr %t119, i64 %t120)
  %t128 = getelementptr i8, ptr %t127, i64 %t120
  call void @olang_textcopy(ptr %t128, ptr %t123, i64 %t124)
  %t129 = insertvalue { i64, ptr } undef, i64 %t125, 0
  %t130 = insertvalue { i64, ptr } %t129, ptr %t126, 1
  %t132 = extractvalue { i64, ptr } %t130, 0
  %t133 = extractvalue { i64, ptr } %t130, 1
  %t134 = mul i64 %t132, 1
  %t135 = call ptr @__olang_scope_alloc(ptr %s5, i64 %t134)
  call void @llvm.memcpy.p0.p0.i64(ptr %t135, ptr %t133, i64 %t134, i1 false)
  %t136 = insertvalue { i64, ptr } undef, i64 %t132, 0
  %t137 = insertvalue { i64, ptr } %t136, ptr %t135, 1
  %t139 = call { i64, ptr } @compiler_2fload_2eNormalize(ptr %s5, ptr %s5, { i64, ptr } %t137)
  store { i64, ptr } %t139, ptr %l80
  br label %bb20
bb16:
  %t140 = load { i64, ptr }, ptr %l71, !tbaa !27
  %t141 = extractvalue { i64, ptr } %t140, 1
  %t142 = extractvalue { i64, ptr } %t140, 0
  %t143 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t142)
  call void @olang_textcopy(ptr %t143, ptr %t141, i64 %t142)
  %t144 = insertvalue { i64, ptr } undef, i64 %t142, 0
  %t145 = insertvalue { i64, ptr } %t144, ptr %t143, 1
  store { i64, ptr } %t145, ptr %l72, !tbaa !27
  %t146 = load ptr, ptr %lp6
  %t147 = load { i64, ptr }, ptr %t146, !tbaa !27
  %t148 = extractvalue { i64, ptr } %t147, 0
  %t149 = load { i64, ptr }, ptr %l72, !tbaa !27
  %t150 = extractvalue { i64, ptr } %t149, 0
  store i64 %t150, ptr %l74, !tbaa !24
  %t152 = load i64, ptr %l74, !tbaa !24
  %t153 = icmp eq i64 %t148, %t152
  br i1 %t153, label %bb17, label %bb18
bb17:
  %t155 = load ptr, ptr %lp6
  %t156 = getelementptr { i64, ptr }, ptr %t155, i32 0, i32 1
  %t157 = load ptr, ptr %t156, !tbaa !27
  %t158 = getelementptr { i64, ptr }, ptr %l72, i32 0, i32 1
  %t159 = load ptr, ptr %t158, !tbaa !27
  %t160 = load i64, ptr %l74, !tbaa !24
  %t161 = mul i64 %t160, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t157, ptr %t159, i64 %t161, i1 false)
  br label %bb19
bb18:
  %t162 = load { i64, ptr }, ptr %l72, !tbaa !27
  %t163 = load ptr, ptr %lp6
  store { i64, ptr } %t162, ptr %t163, !tbaa !27
  br label %bb19
bb19:
  call void @__olang_scope_close(ptr %s3)
  br label %bb24
bb20:
  %t164 = load { i64, ptr }, ptr %l80, !tbaa !27
  %t165 = extractvalue { i64, ptr } %t164, 1
  %t166 = extractvalue { i64, ptr } %t164, 0
  %t167 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t166)
  call void @olang_textcopy(ptr %t167, ptr %t165, i64 %t166)
  %t168 = insertvalue { i64, ptr } undef, i64 %t166, 0
  %t169 = insertvalue { i64, ptr } %t168, ptr %t167, 1
  store { i64, ptr } %t169, ptr %l81, !tbaa !27
  %t170 = load ptr, ptr %lp6
  %t171 = load { i64, ptr }, ptr %t170, !tbaa !27
  %t172 = extractvalue { i64, ptr } %t171, 0
  %t173 = load { i64, ptr }, ptr %l81, !tbaa !27
  %t174 = extractvalue { i64, ptr } %t173, 0
  store i64 %t174, ptr %l83, !tbaa !24
  %t176 = load i64, ptr %l83, !tbaa !24
  %t177 = icmp eq i64 %t172, %t176
  br i1 %t177, label %bb21, label %bb22
bb21:
  %t179 = load ptr, ptr %lp6
  %t180 = getelementptr { i64, ptr }, ptr %t179, i32 0, i32 1
  %t181 = load ptr, ptr %t180, !tbaa !27
  %t182 = getelementptr { i64, ptr }, ptr %l81, i32 0, i32 1
  %t183 = load ptr, ptr %t182, !tbaa !27
  %t184 = load i64, ptr %l83, !tbaa !24
  %t185 = mul i64 %t184, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t181, ptr %t183, i64 %t185, i1 false)
  br label %bb23
bb22:
  %t186 = load { i64, ptr }, ptr %l81, !tbaa !27
  %t187 = load ptr, ptr %lp6
  store { i64, ptr } %t186, ptr %t187, !tbaa !27
  br label %bb23
bb23:
  call void @__olang_scope_close(ptr %s5)
  br label %bb24
bb24:
  %t188 = load ptr, ptr %l4, !tbaa !29
  %t190 = getelementptr %"compiler/load:Module", ptr %t188, i32 0, i32 2
  %t191 = load { i64, ptr }, ptr %t190, !tbaa !27
  store { i64, ptr } %t191, ptr %l86, !tbaa !27
  %t192 = load ptr, ptr %l4, !tbaa !29
  %t194 = getelementptr %"compiler/load:Module", ptr %t192, i32 0, i32 2
  %t195 = load { i64, ptr }, ptr %t194, !tbaa !27
  %t198 = call { i32, i64 } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eFindByte(ptr %v0, { i64, ptr } %t195, i8 47)
  %t199 = extractvalue { i32, i64 } %t198, 1
  %t200 = extractvalue { i32, i64 } %t198, 0
  store i32 %t200, ptr %l92
  %t201 = icmp ne i32 %t200, 0
  br i1 %t201, label %bb26, label %ok.202, !prof !99
ok.202:
  store i64 %t199, ptr %l91
  br label %bb25
bb25:
  %t203 = load i64, ptr %l91, !tbaa !24
  store i64 %t203, ptr %l87, !tbaa !24
  br label %bb28
bb26:
  br label %bb27
bb27:
  %t204 = load ptr, ptr %l4, !tbaa !29
  %t206 = getelementptr %"compiler/load:Module", ptr %t204, i32 0, i32 2
  %t207 = load { i64, ptr }, ptr %t206, !tbaa !27
  %t209 = extractvalue { i64, ptr } %t207, 0
  store i64 %t209, ptr %l87, !tbaa !24
  br label %bb28
bb28:
  %t211 = load { i64, ptr }, ptr %l86, !tbaa !27
  %t212 = extractvalue { i64, ptr } %t211, 0
  store i64 %t212, ptr %l96, !tbaa !24
  %t213 = icmp sge i64 0, 0
  br i1 %t213, label %bb29, label %bb30
bb29:
  %t215 = load i64, ptr %l87, !tbaa !24
  %t216 = icmp sle i64 0, %t215
  br i1 %t216, label %bb31, label %bb32
bb30:
  call void @__olang_check_failed(ptr @olang_loc_9daea36ebb972439_574e08d4d8c23575)
  unreachable
bb31:
  %t218 = load i64, ptr %l87, !tbaa !24
  %t219 = load i64, ptr %l96, !tbaa !24
  %t220 = icmp sle i64 %t218, %t219
  br i1 %t220, label %bb33, label %bb34
bb32:
  call void @__olang_check_failed(ptr @olang_loc_9daea36ebb972439_574e08d4d8c23575)
  unreachable
bb33:
  %t222 = getelementptr { i64, ptr }, ptr %l86, i32 0, i32 1
  %t223 = load ptr, ptr %t222, !tbaa !27
  %t224 = load i64, ptr %l87, !tbaa !24
  %t225 = getelementptr i8, ptr %t223, i64 0
  %t226 = sub i64 %t224, 0
  %t227 = insertvalue { i64, ptr } undef, i64 %t226, 0
  %t228 = insertvalue { i64, ptr } %t227, ptr %t225, 1
  store { i64, ptr } %t228, ptr %l7, !tbaa !27
  %t230 = load { i64, ptr }, ptr %l7, !tbaa !27
  store { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d41, i32 0, i32 1) }, ptr %l103, !tbaa !27
  %t233 = load { i64, ptr }, ptr %l103, !tbaa !27
  %t234 = call i1 @std_2fprelude_2farray_2eArray_3cstd_2fprelude_2ftext_3aChar_3e_2eContains_3cstd_2fprelude_2ftext_3aChar_3e(ptr %v0, ptr %s0, { i64, ptr } %t230, { i64, ptr } %t233)
  store i1 %t234, ptr %l104
  br label %bb35
bb34:
  call void @__olang_check_failed(ptr @olang_loc_9daea36ebb972439_574e08d4d8c23575)
  unreachable
bb35:
  %t235 = load i1, ptr %l104, !tbaa !21
  br i1 %t235, label %bb36, label %bb37
bb36:
  %t236 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t238 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t236, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d42, i32 0, i32 1) })
  store i1 %t238, ptr %l107
  br label %bb38
bb37:
  store i1 false, ptr %l105, !tbaa !21
  br label %bb39
bb38:
  %t239 = load i1, ptr %l107, !tbaa !21
  %t240 = xor i1 %t239, true
  store i1 %t240, ptr %l105, !tbaa !21
  br label %bb39
bb39:
  %t242 = load i1, ptr %l105, !tbaa !21
  br i1 %t242, label %bb40, label %bb41
bb40:
  %t243 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t245 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t243, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d43, i32 0, i32 1) })
  store i1 %t245, ptr %l111
  br label %bb42
bb41:
  store i1 false, ptr %l109, !tbaa !21
  br label %bb43
bb42:
  %t246 = load i1, ptr %l111, !tbaa !21
  %t247 = xor i1 %t246, true
  store i1 %t247, ptr %l109, !tbaa !21
  br label %bb43
bb43:
  %t249 = load i1, ptr %l109, !tbaa !21
  store i1 %t249, ptr %l8, !tbaa !21
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d44, i32 0, i32 1) }, ptr %l113, !tbaa !27
  %t250 = load { i64, ptr }, ptr %l113, !tbaa !27
  store { i64, ptr } %t250, ptr %l114, !tbaa !27
  %t251 = load { i64, ptr }, ptr %l114, !tbaa !27
  %t252 = extractvalue { i64, ptr } %t251, 0
  store i64 %t252, ptr %l115, !tbaa !24
  %t253 = load i64, ptr %l115, !tbaa !24
  %t254 = mul i64 %t253, 1
  %t255 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t254)
  %t256 = insertvalue { i64, ptr } undef, i64 %t253, 0
  %t257 = insertvalue { i64, ptr } %t256, ptr %t255, 1
  store { i64, ptr } %t257, ptr %l116, !tbaa !27
  %t258 = getelementptr { i64, ptr }, ptr %l116, i32 0, i32 1
  %t259 = load ptr, ptr %t258, !tbaa !27
  %t260 = getelementptr { i64, ptr }, ptr %l114, i32 0, i32 1
  %t261 = load ptr, ptr %t260, !tbaa !27
  %t262 = load i64, ptr %l115, !tbaa !24
  %t263 = mul i64 %t262, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t259, ptr %t261, i64 %t263, i1 false)
  %t264 = load { i64, ptr }, ptr %l116, !tbaa !27
  store { i64, ptr } %t264, ptr %l9, !tbaa !27
  %t265 = load ptr, ptr %l4, !tbaa !29
  %t267 = getelementptr %"compiler/load:Module", ptr %t265, i32 0, i32 2
  %t268 = load { i64, ptr }, ptr %t267, !tbaa !27
  %t270 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %v0, ptr %s0, { i64, ptr } %t268, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d45, i32 0, i32 1) })
  store i1 %t270, ptr %l119
  br label %bb44
bb44:
  %t271 = load i1, ptr %l119, !tbaa !21
  br i1 %t271, label %bb45, label %bb46
bb45:
  store { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d46, i32 0, i32 1) }, ptr %l120, !tbaa !27
  %t272 = load { i64, ptr }, ptr %l120, !tbaa !27
  store { i64, ptr } %t272, ptr %l121, !tbaa !27
  %t273 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t274 = extractvalue { i64, ptr } %t273, 0
  %t275 = load { i64, ptr }, ptr %l121, !tbaa !27
  %t276 = extractvalue { i64, ptr } %t275, 0
  store i64 %t276, ptr %l123, !tbaa !24
  %t278 = load i64, ptr %l123, !tbaa !24
  %t279 = icmp eq i64 %t274, %t278
  br i1 %t279, label %bb47, label %bb48
bb46:
  store %olang.scope zeroinitializer, ptr %s9
  %t281 = load i1, ptr %l8, !tbaa !21
  br i1 %t281, label %bb50, label %bb51
bb47:
  %t283 = getelementptr { i64, ptr }, ptr %l9, i32 0, i32 1
  %t284 = load ptr, ptr %t283, !tbaa !27
  %t285 = getelementptr { i64, ptr }, ptr %l121, i32 0, i32 1
  %t286 = load ptr, ptr %t285, !tbaa !27
  %t287 = load i64, ptr %l123, !tbaa !24
  %t288 = mul i64 %t287, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t284, ptr %t286, i64 %t288, i1 false)
  br label %bb49
bb48:
  %t289 = load { i64, ptr }, ptr %l121, !tbaa !27
  %t290 = extractvalue { i64, ptr } %t289, 0
  store i64 %t290, ptr %l125, !tbaa !24
  %t291 = load i64, ptr %l125, !tbaa !24
  %t292 = mul i64 %t291, 1
  %t293 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t292)
  %t294 = insertvalue { i64, ptr } undef, i64 %t291, 0
  %t295 = insertvalue { i64, ptr } %t294, ptr %t293, 1
  store { i64, ptr } %t295, ptr %l126, !tbaa !27
  %t296 = getelementptr { i64, ptr }, ptr %l126, i32 0, i32 1
  %t297 = load ptr, ptr %t296, !tbaa !27
  %t298 = getelementptr { i64, ptr }, ptr %l121, i32 0, i32 1
  %t299 = load ptr, ptr %t298, !tbaa !27
  %t300 = load i64, ptr %l125, !tbaa !24
  %t301 = mul i64 %t300, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t297, ptr %t299, i64 %t301, i1 false)
  %t302 = load { i64, ptr }, ptr %l126, !tbaa !27
  store { i64, ptr } %t302, ptr %l9, !tbaa !27
  br label %bb49
bb49:
  br label %bb61
bb50:
  %t303 = load ptr, ptr %l4, !tbaa !29
  %t305 = getelementptr %"compiler/load:Module", ptr %t303, i32 0, i32 2
  %t306 = load { i64, ptr }, ptr %t305, !tbaa !27
  store { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d47, i32 0, i32 1) }, ptr %l132, !tbaa !27
  %t309 = load { i64, ptr }, ptr %l132, !tbaa !27
  %t310 = call i1 @std_2fprelude_2farray_2eArray_3cstd_2fprelude_2ftext_3aChar_3e_2eContains_3cstd_2fprelude_2ftext_3aChar_3e(ptr %v0, ptr %s9, { i64, ptr } %t306, { i64, ptr } %t309)
  store i1 %t310, ptr %l133
  br label %bb52
bb51:
  store i1 false, ptr %l128, !tbaa !21
  br label %bb53
bb52:
  %t311 = load i1, ptr %l133, !tbaa !21
  store i1 %t311, ptr %l128, !tbaa !21
  br label %bb53
bb53:
  %t312 = load i1, ptr %l128, !tbaa !21
  br i1 %t312, label %bb54, label %bb55
bb54:
  store %olang.scope zeroinitializer, ptr %s10
  %t313 = load ptr, ptr %l4, !tbaa !29
  %t315 = getelementptr %"compiler/load:Module", ptr %t313, i32 0, i32 2
  %t316 = load { i64, ptr }, ptr %t315, !tbaa !27
  %t318 = call { i64, ptr } @compiler_2fload_2efirstElems(ptr %v0, ptr %s10, { i64, ptr } %t316, i64 3)
  store { i64, ptr } %t318, ptr %l136
  br label %bb56
bb55:
  br label %bb60
bb56:
  %t319 = load { i64, ptr }, ptr %l136, !tbaa !27
  %t320 = extractvalue { i64, ptr } %t319, 1
  %t321 = extractvalue { i64, ptr } %t319, 0
  %t322 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t321)
  call void @olang_textcopy(ptr %t322, ptr %t320, i64 %t321)
  %t323 = insertvalue { i64, ptr } undef, i64 %t321, 0
  %t324 = insertvalue { i64, ptr } %t323, ptr %t322, 1
  store { i64, ptr } %t324, ptr %l137, !tbaa !27
  %t325 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t326 = extractvalue { i64, ptr } %t325, 0
  %t327 = load { i64, ptr }, ptr %l137, !tbaa !27
  %t328 = extractvalue { i64, ptr } %t327, 0
  store i64 %t328, ptr %l139, !tbaa !24
  %t330 = load i64, ptr %l139, !tbaa !24
  %t331 = icmp eq i64 %t326, %t330
  br i1 %t331, label %bb57, label %bb58
bb57:
  %t333 = getelementptr { i64, ptr }, ptr %l9, i32 0, i32 1
  %t334 = load ptr, ptr %t333, !tbaa !27
  %t335 = getelementptr { i64, ptr }, ptr %l137, i32 0, i32 1
  %t336 = load ptr, ptr %t335, !tbaa !27
  %t337 = load i64, ptr %l139, !tbaa !24
  %t338 = mul i64 %t337, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t334, ptr %t336, i64 %t338, i1 false)
  br label %bb59
bb58:
  %t339 = load { i64, ptr }, ptr %l137, !tbaa !27
  store { i64, ptr } %t339, ptr %l9, !tbaa !27
  br label %bb59
bb59:
  call void @__olang_scope_close(ptr %s10)
  br label %bb60
bb60:
  call void @__olang_scope_close(ptr %s9)
  br label %bb61
bb61:
  %t340 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t342 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %s0, { i64, ptr } %t340, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d48, i32 0, i32 1) })
  store i1 %t342, ptr %l142
  br label %bb62
bb62:
  %t343 = load i1, ptr %l142, !tbaa !21
  %t344 = xor i1 %t343, true
  br i1 %t344, label %bb63, label %bb64
bb63:
  %t346 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t348 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %v1, ptr %s0, { i64, ptr } %t346, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d49, i32 0, i32 1) })
  store i1 %t348, ptr %l146
  br label %bb65
bb64:
  store i1 false, ptr %l144, !tbaa !21
  br label %bb71
bb65:
  %t349 = load i1, ptr %l146, !tbaa !21
  br i1 %t349, label %bb66, label %bb67
bb66:
  store i1 true, ptr %l147, !tbaa !21
  br label %bb70
bb67:
  %t350 = load ptr, ptr %l4, !tbaa !29
  %t352 = getelementptr %"compiler/load:Module", ptr %t350, i32 0, i32 2
  %t353 = load { i64, ptr }, ptr %t352, !tbaa !27
  %t354 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t357 = call { i64, ptr } @compiler_2fload_2erelativeIdentity(ptr %v0, ptr %v1, ptr %s0, { i64, ptr } %t353, { i64, ptr } %t354)
  store { i64, ptr } %t357, ptr %l151
  br label %bb68
bb68:
  %t358 = load { i64, ptr }, ptr %l151, !tbaa !27
  %t359 = extractvalue { i64, ptr } %t358, 0
  %t360 = extractvalue { i64, ptr } %t358, 1
  %t361 = mul i64 %t359, 1
  %t362 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t361)
  call void @llvm.memcpy.p0.p0.i64(ptr %t362, ptr %t360, i64 %t361, i1 false)
  %t363 = insertvalue { i64, ptr } undef, i64 %t359, 0
  %t364 = insertvalue { i64, ptr } %t363, ptr %t362, 1
  %t365 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t367 = extractvalue { i64, ptr } %t365, 1
  %t368 = extractvalue { i64, ptr } %t365, 0
  %t369 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d50, i32 0, i32 1) }, 1
  %t370 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d50, i32 0, i32 1) }, 0
  %t371 = add i64 %t368, %t370
  %t372 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t371)
  call void @olang_textcopy(ptr %t372, ptr %t367, i64 %t368)
  %t373 = getelementptr i8, ptr %t372, i64 %t368
  call void @olang_textcopy(ptr %t373, ptr %t369, i64 %t370)
  %t374 = insertvalue { i64, ptr } undef, i64 %t371, 0
  %t375 = insertvalue { i64, ptr } %t374, ptr %t372, 1
  %t377 = extractvalue { i64, ptr } %t375, 0
  %t378 = extractvalue { i64, ptr } %t375, 1
  %t379 = mul i64 %t377, 1
  %t380 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t379)
  call void @llvm.memcpy.p0.p0.i64(ptr %t380, ptr %t378, i64 %t379, i1 false)
  %t381 = insertvalue { i64, ptr } undef, i64 %t377, 0
  %t382 = insertvalue { i64, ptr } %t381, ptr %t380, 1
  %t385 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %s0, ptr %s0, { i64, ptr } %t364, { i64, ptr } %t382)
  store i1 %t385, ptr %l156
  br label %bb69
bb69:
  %t386 = load i1, ptr %l156, !tbaa !21
  %t387 = xor i1 %t386, true
  store i1 %t387, ptr %l147, !tbaa !21
  br label %bb70
bb70:
  %t389 = load i1, ptr %l147, !tbaa !21
  store i1 %t389, ptr %l144, !tbaa !21
  br label %bb71
bb71:
  %t390 = load i1, ptr %l144, !tbaa !21
  br i1 %t390, label %bb72, label %bb73
bb72:
  %t391 = load ptr, ptr %lp3
  %t393 = insertvalue { i64, ptr } undef, i64 0, 0
  %t394 = insertvalue { i64, ptr } %t393, ptr %t391, 1
  %t395 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t396 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d51, i32 0, i32 1) }, 1
  %t397 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d51, i32 0, i32 1) }, 0
  %t399 = extractvalue { i64, ptr } %t395, 1
  %t400 = extractvalue { i64, ptr } %t395, 0
  %t401 = add i64 %t397, %t400
  %t402 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t401)
  call void @olang_textcopy(ptr %t402, ptr %t396, i64 %t397)
  %t403 = getelementptr i8, ptr %t402, i64 %t397
  call void @olang_textcopy(ptr %t403, ptr %t399, i64 %t400)
  %t404 = insertvalue { i64, ptr } undef, i64 %t401, 0
  %t405 = insertvalue { i64, ptr } %t404, ptr %t402, 1
  %t407 = insertvalue { { i64, ptr }, { i64, ptr } } undef, { i64, ptr } %t394, 0
  %t409 = insertvalue { { i64, ptr }, { i64, ptr } } %t407, { i64, ptr } %t405, 1
  call void @__olang_scope_close(ptr %s0)
  store { { i64, ptr }, { i64, ptr } } %t409, ptr %rv
  br label %ret
bb73:
  br label %bb74
bb74:
  %t411 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t413 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %s0, { i64, ptr } %t411, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d52, i32 0, i32 1) })
  store i1 %t413, ptr %l164
  br label %bb75
bb75:
  %t414 = load i1, ptr %l164, !tbaa !21
  %t415 = xor i1 %t414, true
  br i1 %t415, label %bb76, label %bb77
bb76:
  %t417 = load ptr, ptr %lp6
  %t418 = load { i64, ptr }, ptr %t417, !tbaa !27
  %t420 = call i1 @std_2fos_2eExists(ptr %v2, { i64, ptr } %t418)
  store i1 %t420, ptr %l168
  br label %bb78
bb77:
  store i1 false, ptr %l166, !tbaa !21
  br label %bb79
bb78:
  %t421 = load i1, ptr %l168, !tbaa !21
  store i1 %t421, ptr %l166, !tbaa !21
  br label %bb79
bb79:
  %t422 = load i1, ptr %l166, !tbaa !21
  br i1 %t422, label %bb80, label %bb81
bb80:
  store %olang.scope zeroinitializer, ptr %s15
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d53, i32 0, i32 1) }, ptr %l169, !tbaa !27
  %t423 = load { i64, ptr }, ptr %l169, !tbaa !27
  store { i64, ptr } %t423, ptr %l170, !tbaa !27
  %t424 = load { i64, ptr }, ptr %l170, !tbaa !27
  %t425 = extractvalue { i64, ptr } %t424, 0
  store i64 %t425, ptr %l171, !tbaa !24
  %t426 = load i64, ptr %l171, !tbaa !24
  %t427 = mul i64 %t426, 1
  %t428 = call ptr @__olang_scope_alloc(ptr %s15, i64 %t427)
  %t429 = insertvalue { i64, ptr } undef, i64 %t426, 0
  %t430 = insertvalue { i64, ptr } %t429, ptr %t428, 1
  store { i64, ptr } %t430, ptr %l172, !tbaa !27
  %t431 = getelementptr { i64, ptr }, ptr %l172, i32 0, i32 1
  %t432 = load ptr, ptr %t431, !tbaa !27
  %t433 = getelementptr { i64, ptr }, ptr %l170, i32 0, i32 1
  %t434 = load ptr, ptr %t433, !tbaa !27
  %t435 = load i64, ptr %l171, !tbaa !24
  %t436 = mul i64 %t435, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t432, ptr %t434, i64 %t436, i1 false)
  %t437 = load { i64, ptr }, ptr %l172, !tbaa !27
  store { i64, ptr } %t437, ptr %l10, !tbaa !27
  %t438 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t440 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %s15, { i64, ptr } %t438, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d54, i32 0, i32 1) })
  store i1 %t440, ptr %l174
  br label %bb82
bb81:
  br label %bb135
bb82:
  %t441 = load i1, ptr %l174, !tbaa !21
  br i1 %t441, label %bb83, label %bb84
bb83:
  %t442 = load ptr, ptr %l0, !tbaa !29
  %t444 = getelementptr %"compiler/load:Loader", ptr %t442, i32 0, i32 14
  %t445 = load { i64, ptr }, ptr %t444, !tbaa !27
  %t447 = extractvalue { i64, ptr } %t445, 1
  %t448 = extractvalue { i64, ptr } %t445, 0
  %t449 = call ptr @__olang_scope_alloc(ptr %s15, i64 %t448)
  call void @olang_textcopy(ptr %t449, ptr %t447, i64 %t448)
  %t450 = insertvalue { i64, ptr } undef, i64 %t448, 0
  %t451 = insertvalue { i64, ptr } %t450, ptr %t449, 1
  store { i64, ptr } %t451, ptr %l177, !tbaa !27
  %t452 = load { i64, ptr }, ptr %l10, !tbaa !27
  %t453 = extractvalue { i64, ptr } %t452, 0
  %t454 = load { i64, ptr }, ptr %l177, !tbaa !27
  %t455 = extractvalue { i64, ptr } %t454, 0
  store i64 %t455, ptr %l179, !tbaa !24
  %t457 = load i64, ptr %l179, !tbaa !24
  %t458 = icmp eq i64 %t453, %t457
  br i1 %t458, label %bb85, label %bb86
bb84:
  store %olang.scope zeroinitializer, ptr %s18
  %t460 = load ptr, ptr %l4, !tbaa !29
  %t462 = getelementptr %"compiler/load:Module", ptr %t460, i32 0, i32 2
  %t463 = load { i64, ptr }, ptr %t462, !tbaa !27
  store { i64, ptr } %t463, ptr %l182, !tbaa !27
  %t464 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t466 = extractvalue { i64, ptr } %t464, 0
  %t468 = add i64 %t466, 1
  store i64 %t468, ptr %l185, !tbaa !24
  %t469 = load ptr, ptr %l4, !tbaa !29
  %t471 = getelementptr %"compiler/load:Module", ptr %t469, i32 0, i32 2
  %t472 = load { i64, ptr }, ptr %t471, !tbaa !27
  %t475 = extractvalue { i64, ptr } %t472, 0
  store i64 %t475, ptr %l189, !tbaa !24
  %t476 = load { i64, ptr }, ptr %l182, !tbaa !27
  %t477 = extractvalue { i64, ptr } %t476, 0
  store i64 %t477, ptr %l190, !tbaa !24
  %t478 = load i64, ptr %l185, !tbaa !24
  %t479 = icmp sge i64 %t478, 0
  br i1 %t479, label %bb88, label %bb89
bb85:
  %t481 = getelementptr { i64, ptr }, ptr %l10, i32 0, i32 1
  %t482 = load ptr, ptr %t481, !tbaa !27
  %t483 = getelementptr { i64, ptr }, ptr %l177, i32 0, i32 1
  %t484 = load ptr, ptr %t483, !tbaa !27
  %t485 = load i64, ptr %l179, !tbaa !24
  %t486 = mul i64 %t485, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t482, ptr %t484, i64 %t486, i1 false)
  br label %bb87
bb86:
  %t487 = load { i64, ptr }, ptr %l177, !tbaa !27
  store { i64, ptr } %t487, ptr %l10, !tbaa !27
  br label %bb87
bb87:
  br label %bb120
bb88:
  %t488 = load i64, ptr %l185, !tbaa !24
  %t489 = load i64, ptr %l189, !tbaa !24
  %t490 = icmp sle i64 %t488, %t489
  br i1 %t490, label %bb90, label %bb91
bb89:
  call void @__olang_check_failed(ptr @olang_loc_af475931a368800c_57263df876e21e18)
  unreachable
bb90:
  %t492 = load i64, ptr %l189, !tbaa !24
  %t493 = load i64, ptr %l190, !tbaa !24
  %t494 = icmp sle i64 %t492, %t493
  br i1 %t494, label %bb92, label %bb93
bb91:
  call void @__olang_check_failed(ptr @olang_loc_af475931a368800c_57263df876e21e18)
  unreachable
bb92:
  %t496 = getelementptr { i64, ptr }, ptr %l182, i32 0, i32 1
  %t497 = load ptr, ptr %t496, !tbaa !27
  %t498 = load i64, ptr %l185, !tbaa !24
  %t499 = load i64, ptr %l189, !tbaa !24
  %t500 = getelementptr i8, ptr %t497, i64 %t498
  %t501 = sub i64 %t499, %t498
  %t502 = insertvalue { i64, ptr } undef, i64 %t501, 0
  %t503 = insertvalue { i64, ptr } %t502, ptr %t500, 1
  %t505 = load ptr, ptr %l4, !tbaa !29
  %t507 = getelementptr %"compiler/load:Module", ptr %t505, i32 0, i32 0
  %t508 = load { i64, ptr }, ptr %t507, !tbaa !27
  %t510 = extractvalue { i64, ptr } %t508, 1
  %t511 = extractvalue { i64, ptr } %t508, 0
  %t512 = call ptr @__olang_scope_alloc(ptr %s18, i64 %t511)
  call void @olang_textcopy(ptr %t512, ptr %t510, i64 %t511)
  %t513 = insertvalue { i64, ptr } undef, i64 %t511, 0
  %t514 = insertvalue { i64, ptr } %t513, ptr %t512, 1
  store { i64, ptr } %t514, ptr %l12, !tbaa !27
  store %olang.scope zeroinitializer, ptr %s20
  store i64 0, ptr %l13, !tbaa !24
  store { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d55, i32 0, i32 1) }, ptr %l200, !tbaa !27
  %t519 = load { i64, ptr }, ptr %l200, !tbaa !27
  %t520 = call i64 @std_2fprelude_2farray_2eArray_3cstd_2fprelude_2ftext_3aChar_3e_2eCountOf_3cstd_2fprelude_2ftext_3aChar_3e(ptr %v0, ptr %s20, { i64, ptr } %t503, { i64, ptr } %t519)
  store i64 %t520, ptr %l201
  br label %bb94
bb93:
  call void @__olang_check_failed(ptr @olang_loc_af475931a368800c_57263df876e21e18)
  unreachable
bb94:
  %t521 = load i64, ptr %l201, !tbaa !24
  %t522 = add i64 %t521, 1
  store i64 %t522, ptr %l14, !tbaa !24
  store i64 1, ptr %l15, !tbaa !24
  %t524 = load i64, ptr %l14, !tbaa !24
  %t525 = load i64, ptr %l13, !tbaa !24
  %t528 = icmp sgt i64 %t524, %t525
  br i1 %t528, label %bb95, label %bb96
bb95:
  %t530 = load i64, ptr %l15, !tbaa !24
  %t532 = icmp sgt i64 %t530, 0
  br i1 %t532, label %bb97, label %bb98
bb96:
  store i64 0, ptr %l206, !tbaa !24
  br label %bb100
bb97:
  %t534 = load i64, ptr %l14, !tbaa !24
  %t535 = load i64, ptr %l13, !tbaa !24
  %t538 = sub i64 %t534, %t535
  %t539 = load i64, ptr %l15, !tbaa !24
  %t542 = add i64 %t538, %t539
  %t544 = sub i64 %t542, 1
  %t545 = load i64, ptr %l15, !tbaa !24
  %t548 = sdiv i64 %t544, %t545
  store i64 %t548, ptr %l209, !tbaa !24
  br label %bb99
bb98:
  store i64 0, ptr %l209, !tbaa !24
  br label %bb99
bb99:
  %t550 = load i64, ptr %l209, !tbaa !24
  store i64 %t550, ptr %l206, !tbaa !24
  br label %bb100
bb100:
  %t551 = load i64, ptr %l206, !tbaa !24
  store i64 %t551, ptr %l16, !tbaa !24
  store i64 0, ptr %l17, !tbaa !24
  br label %bb101
bb101:
  store %olang.scope zeroinitializer, ptr %s21
  %t552 = load i64, ptr %l17, !tbaa !24
  %t553 = load i64, ptr %l16, !tbaa !24
  %t556 = icmp slt i64 %t552, %t553
  %t558 = xor i1 %t556, true
  br i1 %t558, label %bb102, label %bb103
bb102:
  call void @__olang_scope_close(ptr %s21)
  br label %bb110
bb103:
  br label %bb104
bb104:
  %t560 = load i64, ptr %l13, !tbaa !24
  %t561 = load i64, ptr %l17, !tbaa !24
  %t562 = load i64, ptr %l15, !tbaa !24
  %t565 = mul i64 %t561, %t562
  %t568 = add i64 %t560, %t565
  store i64 %t568, ptr %l18, !tbaa !24
  %t570 = load { i64, ptr }, ptr %l12, !tbaa !27
  %t572 = call { i64, ptr } @std_2ffilepath_2eDir(ptr %s18, ptr %s21, { i64, ptr } %t570)
  store { i64, ptr } %t572, ptr %l228
  br label %bb105
bb105:
  %t573 = load { i64, ptr }, ptr %l228, !tbaa !27
  %t574 = extractvalue { i64, ptr } %t573, 1
  %t575 = extractvalue { i64, ptr } %t573, 0
  %t576 = call ptr @__olang_scope_alloc(ptr %s18, i64 %t575)
  call void @olang_textcopy(ptr %t576, ptr %t574, i64 %t575)
  %t577 = insertvalue { i64, ptr } undef, i64 %t575, 0
  %t578 = insertvalue { i64, ptr } %t577, ptr %t576, 1
  store { i64, ptr } %t578, ptr %l229, !tbaa !27
  %t579 = load { i64, ptr }, ptr %l12, !tbaa !27
  %t580 = extractvalue { i64, ptr } %t579, 0
  %t581 = load { i64, ptr }, ptr %l229, !tbaa !27
  %t582 = extractvalue { i64, ptr } %t581, 0
  store i64 %t582, ptr %l231, !tbaa !24
  %t584 = load i64, ptr %l231, !tbaa !24
  %t585 = icmp eq i64 %t580, %t584
  br i1 %t585, label %bb106, label %bb107
bb106:
  %t587 = getelementptr { i64, ptr }, ptr %l12, i32 0, i32 1
  %t588 = load ptr, ptr %t587, !tbaa !27
  %t589 = getelementptr { i64, ptr }, ptr %l229, i32 0, i32 1
  %t590 = load ptr, ptr %t589, !tbaa !27
  %t591 = load i64, ptr %l231, !tbaa !24
  %t592 = mul i64 %t591, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t588, ptr %t590, i64 %t592, i1 false)
  br label %bb108
bb107:
  %t593 = load { i64, ptr }, ptr %l229, !tbaa !27
  store { i64, ptr } %t593, ptr %l12, !tbaa !27
  br label %bb108
bb108:
  call void @__olang_scope_close(ptr %s21)
  br label %bb109
bb109:
  %t594 = load i64, ptr %l17, !tbaa !24
  %t596 = add i64 %t594, 1
  store i64 %t596, ptr %l17, !tbaa !24
  br label %bb101
bb110:
  call void @__olang_scope_close(ptr %s20)
  %t598 = load { i64, ptr }, ptr %l12, !tbaa !27
  %t600 = call { i32, { i64, ptr } } @std_2fos_2eRealPath(ptr %s18, ptr %s18, { i64, ptr } %t598)
  %t601 = extractvalue { i32, { i64, ptr } } %t600, 1
  %t602 = extractvalue { i32, { i64, ptr } } %t600, 0
  store i32 %t602, ptr %l238
  %t603 = icmp ne i32 %t602, 0
  br i1 %t603, label %bb112, label %ok.604, !prof !99
ok.604:
  store { i64, ptr } %t601, ptr %l237
  br label %bb111
bb111:
  %t605 = load { i64, ptr }, ptr %l237, !tbaa !27
  store { i64, ptr } %t605, ptr %l235, !tbaa !27
  br label %bb116
bb112:
  %t606 = load i32, ptr %l238, !tbaa !23
  %t607 = ashr i32 %t606, 16
  %t609 = icmp eq i32 %t607, 1
  br i1 %t609, label %bb113, label %bb114
bb113:
  call void @__olang_errpay_pop()
  br label %bb114
bb114:
  br label %bb115
bb115:
  %t611 = load { i64, ptr }, ptr %l12, !tbaa !27
  store { i64, ptr } %t611, ptr %l235, !tbaa !27
  br label %bb116
bb116:
  %t613 = load { i64, ptr }, ptr %l235, !tbaa !27
  %t614 = extractvalue { i64, ptr } %t613, 1
  %t615 = extractvalue { i64, ptr } %t613, 0
  %t616 = call ptr @__olang_scope_alloc(ptr %s15, i64 %t615)
  call void @olang_textcopy(ptr %t616, ptr %t614, i64 %t615)
  %t617 = insertvalue { i64, ptr } undef, i64 %t615, 0
  %t618 = insertvalue { i64, ptr } %t617, ptr %t616, 1
  store { i64, ptr } %t618, ptr %l242, !tbaa !27
  %t619 = load { i64, ptr }, ptr %l10, !tbaa !27
  %t620 = extractvalue { i64, ptr } %t619, 0
  %t621 = load { i64, ptr }, ptr %l242, !tbaa !27
  %t622 = extractvalue { i64, ptr } %t621, 0
  store i64 %t622, ptr %l244, !tbaa !24
  %t624 = load i64, ptr %l244, !tbaa !24
  %t625 = icmp eq i64 %t620, %t624
  br i1 %t625, label %bb117, label %bb118
bb117:
  %t627 = getelementptr { i64, ptr }, ptr %l10, i32 0, i32 1
  %t628 = load ptr, ptr %t627, !tbaa !27
  %t629 = getelementptr { i64, ptr }, ptr %l242, i32 0, i32 1
  %t630 = load ptr, ptr %t629, !tbaa !27
  %t631 = load i64, ptr %l244, !tbaa !24
  %t632 = mul i64 %t631, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t628, ptr %t630, i64 %t632, i1 false)
  br label %bb119
bb118:
  %t633 = load { i64, ptr }, ptr %l242, !tbaa !27
  store { i64, ptr } %t633, ptr %l10, !tbaa !27
  br label %bb119
bb119:
  call void @__olang_scope_close(ptr %s18)
  br label %bb120
bb120:
  %t634 = load ptr, ptr %lp6
  %t635 = load { i64, ptr }, ptr %t634, !tbaa !27
  %t637 = call { i32, { i64, ptr } } @std_2fos_2eRealPath(ptr %v2, ptr %s15, { i64, ptr } %t635)
  %t638 = extractvalue { i32, { i64, ptr } } %t637, 1
  %t639 = extractvalue { i32, { i64, ptr } } %t637, 0
  store i32 %t639, ptr %l249
  %t640 = icmp ne i32 %t639, 0
  br i1 %t640, label %bb122, label %ok.641, !prof !99
ok.641:
  store { i64, ptr } %t638, ptr %l248
  br label %bb121
bb121:
  %t642 = load { i64, ptr }, ptr %l248, !tbaa !27
  store { i64, ptr } %t642, ptr %l246, !tbaa !27
  br label %bb126
bb122:
  %t643 = load i32, ptr %l249, !tbaa !23
  %t644 = ashr i32 %t643, 16
  %t646 = icmp eq i32 %t644, 1
  br i1 %t646, label %bb123, label %bb124
bb123:
  call void @__olang_errpay_pop()
  br label %bb124
bb124:
  br label %bb125
bb125:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d56, i32 0, i32 1) }, ptr %l246, !tbaa !27
  br label %bb126
bb126:
  %t648 = load { i64, ptr }, ptr %l246, !tbaa !27
  store { i64, ptr } %t648, ptr %l19, !tbaa !27
  %t649 = load { i64, ptr }, ptr %l19, !tbaa !27
  %t651 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s15, ptr %s15, { i64, ptr } %t649, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d57, i32 0, i32 1) })
  store i1 %t651, ptr %l253
  br label %bb127
bb127:
  %t652 = load i1, ptr %l253, !tbaa !21
  br i1 %t652, label %bb128, label %bb129
bb128:
  store i1 true, ptr %l254, !tbaa !21
  br label %bb131
bb129:
  %t653 = load { i64, ptr }, ptr %l19, !tbaa !27
  %t654 = load { i64, ptr }, ptr %l10, !tbaa !27
  %t656 = extractvalue { i64, ptr } %t654, 1
  %t657 = extractvalue { i64, ptr } %t654, 0
  %t658 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d58, i32 0, i32 1) }, 1
  %t659 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d58, i32 0, i32 1) }, 0
  %t660 = add i64 %t657, %t659
  %t661 = call ptr @__olang_scope_alloc(ptr %s15, i64 %t660)
  call void @olang_textcopy(ptr %t661, ptr %t656, i64 %t657)
  %t662 = getelementptr i8, ptr %t661, i64 %t657
  call void @olang_textcopy(ptr %t662, ptr %t658, i64 %t659)
  %t663 = insertvalue { i64, ptr } undef, i64 %t660, 0
  %t664 = insertvalue { i64, ptr } %t663, ptr %t661, 1
  %t666 = extractvalue { i64, ptr } %t664, 0
  %t667 = extractvalue { i64, ptr } %t664, 1
  %t668 = mul i64 %t666, 1
  %t669 = call ptr @__olang_scope_alloc(ptr %s15, i64 %t668)
  call void @llvm.memcpy.p0.p0.i64(ptr %t669, ptr %t667, i64 %t668, i1 false)
  %t670 = insertvalue { i64, ptr } undef, i64 %t666, 0
  %t671 = insertvalue { i64, ptr } %t670, ptr %t669, 1
  %t674 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %s15, ptr %s15, { i64, ptr } %t653, { i64, ptr } %t671)
  store i1 %t674, ptr %l259
  br label %bb130
bb130:
  %t675 = load i1, ptr %l259, !tbaa !21
  %t676 = xor i1 %t675, true
  store i1 %t676, ptr %l254, !tbaa !21
  br label %bb131
bb131:
  %t678 = load i1, ptr %l254, !tbaa !21
  br i1 %t678, label %bb132, label %bb133
bb132:
  %t679 = load ptr, ptr %lp3
  %t681 = insertvalue { i64, ptr } undef, i64 0, 0
  %t682 = insertvalue { i64, ptr } %t681, ptr %t679, 1
  %t683 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t684 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d59, i32 0, i32 1) }, 1
  %t685 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d59, i32 0, i32 1) }, 0
  %t687 = extractvalue { i64, ptr } %t683, 1
  %t688 = extractvalue { i64, ptr } %t683, 0
  %t689 = add i64 %t685, %t688
  %t690 = extractvalue { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d60, i32 0, i32 1) }, 1
  %t691 = extractvalue { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d60, i32 0, i32 1) }, 0
  %t692 = add i64 %t689, %t691
  %t693 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t692)
  call void @olang_textcopy(ptr %t693, ptr %t684, i64 %t685)
  %t694 = getelementptr i8, ptr %t693, i64 %t685
  call void @olang_textcopy(ptr %t694, ptr %t687, i64 %t688)
  %t695 = getelementptr i8, ptr %t694, i64 %t688
  call void @olang_textcopy(ptr %t695, ptr %t690, i64 %t691)
  %t696 = insertvalue { i64, ptr } undef, i64 %t692, 0
  %t697 = insertvalue { i64, ptr } %t696, ptr %t693, 1
  %t699 = insertvalue { { i64, ptr }, { i64, ptr } } undef, { i64, ptr } %t682, 0
  %t701 = insertvalue { { i64, ptr }, { i64, ptr } } %t699, { i64, ptr } %t697, 1
  call void @__olang_scope_close(ptr %s15)
  call void @__olang_scope_close(ptr %s0)
  store { { i64, ptr }, { i64, ptr } } %t701, ptr %rv
  br label %ret
bb133:
  br label %bb134
bb134:
  call void @__olang_scope_close(ptr %s15)
  br label %bb135
bb135:
  %t703 = load ptr, ptr %l0, !tbaa !29
  %t705 = getelementptr %"compiler/load:Loader", ptr %t703, i32 0, i32 16
  %t706 = load ptr, ptr %lp6
  %t707 = load { i64, ptr }, ptr %t706, !tbaa !27
  %t710 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_H31dec199381f6e2bb0c82058ea887922(ptr %v0, ptr %v2, ptr %t705, { i64, ptr } %t707)
  store i1 %t710, ptr %l269
  br label %bb136
bb136:
  %t711 = load i1, ptr %l269, !tbaa !21
  %t712 = xor i1 %t711, true
  br i1 %t712, label %bb137, label %bb138
bb137:
  store %olang.scope zeroinitializer, ptr %s28
  %t714 = load ptr, ptr %lp6
  %t715 = load { i64, ptr }, ptr %t714, !tbaa !27
  %t717 = call i1 @std_2fos_2eExists(ptr %v2, { i64, ptr } %t715)
  store i1 %t717, ptr %l272
  br label %bb139
bb138:
  br label %bb164
bb139:
  %t718 = load i1, ptr %l272, !tbaa !21
  %t719 = xor i1 %t718, true
  br i1 %t719, label %bb140, label %bb141
bb140:
  %t721 = load ptr, ptr %lp3
  %t723 = insertvalue { i64, ptr } undef, i64 0, 0
  %t724 = insertvalue { i64, ptr } %t723, ptr %t721, 1
  %t725 = load ptr, ptr %lp6
  %t726 = load { i64, ptr }, ptr %t725, !tbaa !27
  %t727 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d61, i32 0, i32 1) }, 1
  %t728 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d61, i32 0, i32 1) }, 0
  %t730 = extractvalue { i64, ptr } %t726, 1
  %t731 = extractvalue { i64, ptr } %t726, 0
  %t732 = add i64 %t728, %t731
  %t733 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t732)
  call void @olang_textcopy(ptr %t733, ptr %t727, i64 %t728)
  %t734 = getelementptr i8, ptr %t733, i64 %t728
  call void @olang_textcopy(ptr %t734, ptr %t730, i64 %t731)
  %t735 = insertvalue { i64, ptr } undef, i64 %t732, 0
  %t736 = insertvalue { i64, ptr } %t735, ptr %t733, 1
  %t738 = insertvalue { { i64, ptr }, { i64, ptr } } undef, { i64, ptr } %t724, 0
  %t740 = insertvalue { { i64, ptr }, { i64, ptr } } %t738, { i64, ptr } %t736, 1
  call void @__olang_scope_close(ptr %s28)
  call void @__olang_scope_close(ptr %s0)
  store { { i64, ptr }, { i64, ptr } } %t740, ptr %rv
  br label %ret
bb141:
  br label %bb142
bb142:
  %t742 = load ptr, ptr %lp6
  %t743 = load { i64, ptr }, ptr %t742, !tbaa !27
  %t745 = call i1 @std_2fos_2eIsDir(ptr %v2, { i64, ptr } %t743)
  store i1 %t745, ptr %l280
  br label %bb143
bb143:
  %t746 = load i1, ptr %l280, !tbaa !21
  br i1 %t746, label %bb144, label %bb145
bb144:
  %t747 = load ptr, ptr %lp3
  %t749 = insertvalue { i64, ptr } undef, i64 0, 0
  %t750 = insertvalue { i64, ptr } %t749, ptr %t747, 1
  %t751 = load ptr, ptr %lp6
  %t752 = load { i64, ptr }, ptr %t751, !tbaa !27
  %t754 = extractvalue { i64, ptr } %t752, 1
  %t755 = extractvalue { i64, ptr } %t752, 0
  %t756 = extractvalue { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d62, i32 0, i32 1) }, 1
  %t757 = extractvalue { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d62, i32 0, i32 1) }, 0
  %t758 = add i64 %t755, %t757
  %t759 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t758)
  call void @olang_textcopy(ptr %t759, ptr %t754, i64 %t755)
  %t760 = getelementptr i8, ptr %t759, i64 %t755
  call void @olang_textcopy(ptr %t760, ptr %t756, i64 %t757)
  %t761 = insertvalue { i64, ptr } undef, i64 %t758, 0
  %t762 = insertvalue { i64, ptr } %t761, ptr %t759, 1
  %t764 = insertvalue { { i64, ptr }, { i64, ptr } } undef, { i64, ptr } %t750, 0
  %t766 = insertvalue { { i64, ptr }, { i64, ptr } } %t764, { i64, ptr } %t762, 1
  call void @__olang_scope_close(ptr %s28)
  call void @__olang_scope_close(ptr %s0)
  store { { i64, ptr }, { i64, ptr } } %t766, ptr %rv
  br label %ret
bb145:
  br label %bb146
bb146:
  %t768 = load ptr, ptr %lp6
  %t769 = load { i64, ptr }, ptr %t768, !tbaa !27
  %t771 = call { i32, { i64, ptr } } @std_2fos_2eReadFile(ptr %v2, ptr %s28, { i64, ptr } %t769)
  %t772 = extractvalue { i32, { i64, ptr } } %t771, 1
  %t773 = extractvalue { i32, { i64, ptr } } %t771, 0
  store i32 %t773, ptr %l289
  %t774 = icmp ne i32 %t773, 0
  br i1 %t774, label %bb148, label %ok.775, !prof !99
ok.775:
  store { i64, ptr } %t772, ptr %l288
  br label %bb147
bb147:
  %t776 = load { i64, ptr }, ptr %l288, !tbaa !27
  store { i64, ptr } %t776, ptr %l286, !tbaa !27
  br label %bb152
bb148:
  %t777 = load i32, ptr %l289, !tbaa !23
  %t778 = ashr i32 %t777, 16
  %t780 = icmp eq i32 %t778, 1
  store i1 %t780, ptr %l291, !tbaa !21
  %t781 = load i32, ptr %l289, !tbaa !23
  %t782 = ashr i32 %t781, 16
  %t784 = icmp eq i32 %t782, 1
  br i1 %t784, label %bb149, label %bb150
bb149:
  call void @__olang_errpay_pop()
  br label %bb150
bb150:
  br label %bb151
bb151:
  %t786 = load ptr, ptr %lp3
  %t788 = insertvalue { i64, ptr } undef, i64 0, 0
  %t789 = insertvalue { i64, ptr } %t788, ptr %t786, 1
  %t790 = load ptr, ptr %lp6
  %t791 = load { i64, ptr }, ptr %t790, !tbaa !27
  %t793 = extractvalue { i64, ptr } %t791, 1
  %t794 = extractvalue { i64, ptr } %t791, 0
  %t795 = extractvalue { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d63, i32 0, i32 1) }, 1
  %t796 = extractvalue { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d63, i32 0, i32 1) }, 0
  %t797 = add i64 %t794, %t796
  %t798 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t797)
  call void @olang_textcopy(ptr %t798, ptr %t793, i64 %t794)
  %t799 = getelementptr i8, ptr %t798, i64 %t794
  call void @olang_textcopy(ptr %t799, ptr %t795, i64 %t796)
  %t800 = insertvalue { i64, ptr } undef, i64 %t797, 0
  %t801 = insertvalue { i64, ptr } %t800, ptr %t798, 1
  %t803 = insertvalue { { i64, ptr }, { i64, ptr } } undef, { i64, ptr } %t789, 0
  %t805 = insertvalue { { i64, ptr }, { i64, ptr } } %t803, { i64, ptr } %t801, 1
  call void @__olang_scope_close(ptr %s28)
  call void @__olang_scope_close(ptr %s0)
  store { { i64, ptr }, { i64, ptr } } %t805, ptr %rv
  br label %ret
bb152:
  %t807 = load { i64, ptr }, ptr %l286, !tbaa !27
  store { i64, ptr } %t807, ptr %l20, !tbaa !27
  %t808 = load { i64, ptr }, ptr %l20, !tbaa !27
  %t810 = extractvalue { i64, ptr } %t808, 0
  store i64 %t810, ptr %l300, !tbaa !24
  %t811 = load i64, ptr %l300, !tbaa !24
  %t812 = icmp sge i64 %t811, 0
  br i1 %t812, label %bb153, label %bb154
bb153:
  %t814 = load i64, ptr %l300, !tbaa !24
  %t815 = mul i64 %t814, 1
  %t816 = call ptr @__olang_scope_alloc_zeroed(ptr %v0, i64 %t815)
  %t817 = insertvalue { i64, ptr } undef, i64 %t814, 0
  %t818 = insertvalue { i64, ptr } %t817, ptr %t816, 1
  %t819 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 16, i64 8)
  store ptr %t819, ptr %lp21
  %t821 = load ptr, ptr %lp21
  store { i64, ptr } %t818, ptr %t821, !tbaa !27
  %t822 = load { i64, ptr }, ptr %l20, !tbaa !27
  store { i64, ptr } %t822, ptr %l22, !tbaa !27
  store i64 0, ptr %l23, !tbaa !24
  %t824 = load { i64, ptr }, ptr %l22, !tbaa !27
  %t826 = extractvalue { i64, ptr } %t824, 0
  store i64 %t826, ptr %l24, !tbaa !24
  br label %bb155
bb154:
  call void @__olang_check_failed(ptr @olang_loc_5aefafbfcb5eb6b7_7e4be8b78a5947cb)
  unreachable
bb155:
  %t828 = load i64, ptr %l23, !tbaa !24
  %t829 = load i64, ptr %l24, !tbaa !24
  %t832 = icmp slt i64 %t828, %t829
  %t834 = xor i1 %t832, true
  br i1 %t834, label %bb156, label %bb157
bb156:
  br label %bb160
bb157:
  br label %bb158
bb158:
  %t836 = load i64, ptr %l23, !tbaa !24
  %t838 = load { i64, ptr }, ptr %l22, !tbaa !27
  store { i64, ptr } %t838, ptr %l311, !tbaa !27
  %t839 = load i64, ptr %l23, !tbaa !24
  %t841 = getelementptr { i64, ptr }, ptr %l311, i32 0, i32 1
  %t842 = load ptr, ptr %t841, !tbaa !27
  %t843 = getelementptr i8, ptr %t842, i64 %t839
  %t844 = load i8, ptr %t843, !tbaa !32
  %t850 = load ptr, ptr %lp21
  %t852 = getelementptr { i64, ptr }, ptr %t850, i32 0, i32 1
  %t853 = load ptr, ptr %t852, !tbaa !27
  %t854 = getelementptr i8, ptr %t853, i64 %t836
  store i8 %t844, ptr %t854, !tbaa !32
  br label %bb159
bb159:
  %t855 = load i64, ptr %l23, !tbaa !24
  %t857 = add i64 %t855, 1
  store i64 %t857, ptr %l23, !tbaa !24
  br label %bb155
bb160:
  %t859 = load ptr, ptr %l0, !tbaa !29
  %t861 = getelementptr %"compiler/load:Loader", ptr %t859, i32 0, i32 16
  store ptr %t861, ptr %l320, !tbaa !29
  %t862 = ptrtoint ptr %v0 to i64
  store i64 %t862, ptr %l321, !tbaa !24
  %t863 = load i1, ptr @olang_2esole_2estd_2fprelude_2fmap_3aMapEntry_3cstd_2fprelude_2ftext_3aString_26_2c_20Array_3cU8_3e_26_3e_2e0
  br i1 %t863, label %bb161, label %bb162
bb161:
  %t865 = call ptr @__olang_region_make(ptr %v0)
  %t866 = ptrtoint ptr %t865 to i64
  store i64 %t866, ptr %l321, !tbaa !24
  br label %bb162
bb162:
  %t867 = load ptr, ptr %lp6
  %t868 = load { i64, ptr }, ptr %t867, !tbaa !27
  %t870 = extractvalue { i64, ptr } %t868, 1
  %t871 = extractvalue { i64, ptr } %t868, 0
  %t872 = load i64, ptr %l321
  %t873 = inttoptr i64 %t872 to ptr
  %t874 = call ptr @__olang_scope_alloc(ptr %t873, i64 %t871)
  call void @olang_textcopy(ptr %t874, ptr %t870, i64 %t871)
  %t875 = insertvalue { i64, ptr } undef, i64 %t871, 0
  %t876 = insertvalue { i64, ptr } %t875, ptr %t874, 1
  %t878 = load i64, ptr %l321
  %t879 = inttoptr i64 %t878 to ptr
  %t880 = extractvalue { i64, ptr } %t876, 0
  %t881 = extractvalue { i64, ptr } %t876, 1
  %t882 = mul i64 %t880, 1
  %t883 = call ptr @__olang_scope_alloc(ptr %t879, i64 %t882)
  call void @llvm.memcpy.p0.p0.i64(ptr %t883, ptr %t881, i64 %t882, i1 false)
  %t884 = insertvalue { i64, ptr } undef, i64 %t880, 0
  %t885 = insertvalue { i64, ptr } %t884, ptr %t883, 1
  %t886 = load ptr, ptr %lp21
  %t887 = load { i64, ptr }, ptr %t886, !tbaa !27
  %t888 = load ptr, ptr %l320, !tbaa !29
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_Ha0f924a08ec45a4a582ec1782d69c4be(ptr %v0, ptr %v0, ptr %v0, ptr %t888, { i64, ptr } %t885, { i64, ptr } %t887)
  br label %bb163
bb163:
  call void @__olang_scope_close(ptr %s28)
  br label %bb164
bb164:
  store i1 false, ptr %l27, !tbaa !21
  %t891 = load ptr, ptr %l4, !tbaa !29
  %t893 = getelementptr %"compiler/load:Module", ptr %t891, i32 0, i32 29
  store ptr %t893, ptr %l28, !tbaa !29
  store i64 0, ptr %l29, !tbaa !24
  br label %bb165
bb165:
  %t895 = load i64, ptr %l29, !tbaa !24
  store i64 %t895, ptr %l329, !tbaa !24
  %t896 = load ptr, ptr %l28, !tbaa !29
  %t898 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %v0, ptr %t896)
  store i64 %t898, ptr %l331
  br label %bb166
bb166:
  %t899 = load i64, ptr %l329, !tbaa !24
  %t900 = load i64, ptr %l331, !tbaa !24
  %t901 = icmp slt i64 %t899, %t900
  %t903 = xor i1 %t901, true
  br i1 %t903, label %bb167, label %bb168
bb167:
  br label %bb176
bb168:
  br label %bb169
bb169:
  %t905 = load ptr, ptr %l28, !tbaa !29
  %t906 = load i64, ptr %l29, !tbaa !24
  %t909 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %v0, ptr %v0, ptr %t905, i64 %t906)
  store { i64, ptr } %t909, ptr %l336
  br label %bb170
bb170:
  %t910 = load { i64, ptr }, ptr %l336, !tbaa !27
  %t912 = load ptr, ptr %lp6
  %t913 = load { i64, ptr }, ptr %t912, !tbaa !27
  %t916 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %v2, { i64, ptr } %t910, { i64, ptr } %t913)
  store i1 %t916, ptr %l339
  br label %bb171
bb171:
  %t917 = load i1, ptr %l339, !tbaa !21
  br i1 %t917, label %bb172, label %bb173
bb172:
  store i1 true, ptr %l27, !tbaa !21
  br label %bb174
bb173:
  br label %bb174
bb174:
  br label %bb175
bb175:
  %t918 = load i64, ptr %l29, !tbaa !24
  %t920 = add i64 %t918, 1
  store i64 %t920, ptr %l29, !tbaa !24
  br label %bb165
bb176:
  %t922 = load i1, ptr %l27, !tbaa !21
  %t924 = xor i1 %t922, true
  br i1 %t924, label %bb177, label %bb178
bb177:
  %t926 = load ptr, ptr %l4, !tbaa !29
  %t928 = getelementptr %"compiler/load:Module", ptr %t926, i32 0, i32 29
  store ptr %t928, ptr %l345, !tbaa !29
  %t929 = ptrtoint ptr %v0 to i64
  store i64 %t929, ptr %l346, !tbaa !24
  %t930 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1
  br i1 %t930, label %bb179, label %bb180
bb178:
  br label %bb182
bb179:
  %t932 = call ptr @__olang_region_make(ptr %v0)
  %t933 = ptrtoint ptr %t932 to i64
  store i64 %t933, ptr %l346, !tbaa !24
  br label %bb180
bb180:
  %t934 = load ptr, ptr %lp6
  %t935 = load { i64, ptr }, ptr %t934, !tbaa !27
  %t937 = extractvalue { i64, ptr } %t935, 1
  %t938 = extractvalue { i64, ptr } %t935, 0
  %t939 = load i64, ptr %l346
  %t940 = inttoptr i64 %t939 to ptr
  %t941 = call ptr @__olang_scope_alloc(ptr %t940, i64 %t938)
  call void @olang_textcopy(ptr %t941, ptr %t937, i64 %t938)
  %t942 = insertvalue { i64, ptr } undef, i64 %t938, 0
  %t943 = insertvalue { i64, ptr } %t942, ptr %t941, 1
  %t945 = load i64, ptr %l346
  %t946 = inttoptr i64 %t945 to ptr
  %t947 = extractvalue { i64, ptr } %t943, 0
  %t948 = extractvalue { i64, ptr } %t943, 1
  %t949 = mul i64 %t947, 1
  %t950 = call ptr @__olang_scope_alloc(ptr %t946, i64 %t949)
  call void @llvm.memcpy.p0.p0.i64(ptr %t950, ptr %t948, i64 %t949, i1 false)
  %t951 = insertvalue { i64, ptr } undef, i64 %t947, 0
  %t952 = insertvalue { i64, ptr } %t951, ptr %t950, 1
  %t953 = load ptr, ptr %l345, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v0, ptr %v0, ptr %t953, { i64, ptr } %t952)
  br label %bb181
bb181:
  br label %bb182
bb182:
  %t955 = load ptr, ptr %l0, !tbaa !29
  %t957 = getelementptr %"compiler/load:Loader", ptr %t955, i32 0, i32 16
  %t958 = load ptr, ptr %lp6
  %t959 = load { i64, ptr }, ptr %t958, !tbaa !27
  %t962 = call { i32, { i64, ptr } } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_H412951a1c1c3c34f4f6a5a14e25e5986(ptr %v0, ptr %v2, ptr %v2, ptr %t957, { i64, ptr } %t959)
  %t963 = extractvalue { i32, { i64, ptr } } %t962, 1
  %t964 = extractvalue { i32, { i64, ptr } } %t962, 0
  store i32 %t964, ptr %l356
  %t965 = icmp ne i32 %t964, 0
  br i1 %t965, label %bb184, label %ok.966, !prof !99
ok.966:
  store { i64, ptr } %t963, ptr %l355
  br label %bb183
bb183:
  %t967 = load { i64, ptr }, ptr %l355, !tbaa !27
  store { i64, ptr } %t967, ptr %l351, !tbaa !27
  br label %bb186
bb184:
  br label %bb185
bb185:
  %t968 = load ptr, ptr %lp3
  %t970 = insertvalue { i64, ptr } undef, i64 0, 0
  %t971 = insertvalue { i64, ptr } %t970, ptr %t968, 1
  store { i64, ptr } %t971, ptr %l351, !tbaa !27
  br label %bb186
bb186:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d64, i32 0, i32 1) }, ptr %l359, !tbaa !27
  %t973 = load { i64, ptr }, ptr %l359, !tbaa !27
  %t974 = load { i64, ptr }, ptr %l351, !tbaa !27
  %t975 = insertvalue { { i64, ptr }, { i64, ptr } } undef, { i64, ptr } %t974, 0
  %t977 = insertvalue { { i64, ptr }, { i64, ptr } } %t975, { i64, ptr } %t973, 1
  store { { i64, ptr }, { i64, ptr } } %t977, ptr %l361
  %t978 = getelementptr { { i64, ptr }, { i64, ptr } }, ptr %l361, i32 0, i32 1
  %t979 = load { i64, ptr }, ptr %t978, !tbaa !27
  store { i64, ptr } %t979, ptr %l362, !tbaa !27
  %t980 = load { i64, ptr }, ptr %l362, !tbaa !27
  %t981 = extractvalue { i64, ptr } %t980, 0
  store i64 %t981, ptr %l363, !tbaa !24
  %t982 = load i64, ptr %l363, !tbaa !24
  %t983 = mul i64 %t982, 1
  %t984 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t983)
  %t985 = insertvalue { i64, ptr } undef, i64 %t982, 0
  %t986 = insertvalue { i64, ptr } %t985, ptr %t984, 1
  store { i64, ptr } %t986, ptr %l364, !tbaa !27
  %t987 = getelementptr { i64, ptr }, ptr %l364, i32 0, i32 1
  %t988 = load ptr, ptr %t987, !tbaa !27
  %t989 = getelementptr { i64, ptr }, ptr %l362, i32 0, i32 1
  %t990 = load ptr, ptr %t989, !tbaa !27
  %t991 = load i64, ptr %l363, !tbaa !24
  %t992 = mul i64 %t991, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t988, ptr %t990, i64 %t992, i1 false)
  %t993 = load { i64, ptr }, ptr %l364, !tbaa !27
  %t994 = getelementptr { { i64, ptr }, { i64, ptr } }, ptr %l361, i32 0, i32 1
  store { i64, ptr } %t993, ptr %t994, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  %t995 = load { { i64, ptr }, { i64, ptr } }, ptr %l361
  store { { i64, ptr }, { i64, ptr } } %t995, ptr %rv
  br label %ret
ret:
  %rr = load { { i64, ptr }, { i64, ptr } }, ptr %rv
  ret { { i64, ptr }, { i64, ptr } } %rr
}

define dso_local %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2fload_2ecompiler_2fload_3aLoader_2eLinks(ptr %v0, ptr %v1, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %lp1 = alloca ptr
  %l2 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca ptr
  %l10 = alloca ptr
  %l11 = alloca i64
  %l12 = alloca %"compiler/load:Import"
  %l13 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l14 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l17 = alloca i64
  %l21 = alloca i64
  %l24 = alloca i64
  %l45 = alloca ptr
  %l48 = alloca i64
  %l50 = alloca i64
  %l55 = alloca %"compiler/load:Import"
  %l57 = alloca i1
  %l58 = alloca i1
  %l61 = alloca i1
  %l65 = alloca ptr
  %s0 = alloca %olang.scope
  %s4 = alloca %olang.scope
  %rv = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2ector(ptr %v1, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1, ptr %l13
  br label %bb1
bb1:
  %t2 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 32, i64 8)
  store ptr %t2, ptr %lp1
  %t3 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l13
  %t4 = load ptr, ptr %lp1
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t3, ptr %t4
  %t5 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20Bool_3e(ptr %s0)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t5, ptr %l14
  br label %bb2
bb2:
  %t6 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l14
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t6, ptr %l2
  store i64 0, ptr %l3, !tbaa !24
  %t7 = load ptr, ptr %l0, !tbaa !29
  %t9 = getelementptr %"compiler/load:Loader", ptr %t7, i32 0, i32 10
  %t11 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_Hb2d19b6b5ea5ab5a85c5720545345bd4(ptr %v0, ptr %t9)
  store i64 %t11, ptr %l17
  br label %bb3
bb3:
  %t12 = load i64, ptr %l17, !tbaa !24
  store i64 %t12, ptr %l4, !tbaa !24
  store i64 1, ptr %l5, !tbaa !24
  %t13 = load i64, ptr %l4, !tbaa !24
  %t14 = load i64, ptr %l3, !tbaa !24
  %t17 = icmp sgt i64 %t13, %t14
  br i1 %t17, label %bb4, label %bb5
bb4:
  %t19 = load i64, ptr %l5, !tbaa !24
  %t21 = icmp sgt i64 %t19, 0
  br i1 %t21, label %bb6, label %bb7
bb5:
  store i64 0, ptr %l21, !tbaa !24
  br label %bb9
bb6:
  %t23 = load i64, ptr %l4, !tbaa !24
  %t24 = load i64, ptr %l3, !tbaa !24
  %t27 = sub i64 %t23, %t24
  %t28 = load i64, ptr %l5, !tbaa !24
  %t31 = add i64 %t27, %t28
  %t33 = sub i64 %t31, 1
  %t34 = load i64, ptr %l5, !tbaa !24
  %t37 = sdiv i64 %t33, %t34
  store i64 %t37, ptr %l24, !tbaa !24
  br label %bb8
bb7:
  store i64 0, ptr %l24, !tbaa !24
  br label %bb8
bb8:
  %t39 = load i64, ptr %l24, !tbaa !24
  store i64 %t39, ptr %l21, !tbaa !24
  br label %bb9
bb9:
  %t40 = load i64, ptr %l21, !tbaa !24
  store i64 %t40, ptr %l6, !tbaa !24
  store i64 0, ptr %l7, !tbaa !24
  br label %bb10
bb10:
  %t41 = load i64, ptr %l7, !tbaa !24
  %t42 = load i64, ptr %l6, !tbaa !24
  %t45 = icmp slt i64 %t41, %t42
  %t47 = xor i1 %t45, true
  br i1 %t47, label %bb11, label %bb12
bb11:
  br label %bb37
bb12:
  br label %bb13
bb13:
  %t49 = load i64, ptr %l3, !tbaa !24
  %t50 = load i64, ptr %l7, !tbaa !24
  %t51 = load i64, ptr %l5, !tbaa !24
  %t54 = mul i64 %t50, %t51
  %t57 = add i64 %t49, %t54
  store i64 %t57, ptr %l8, !tbaa !24
  %t59 = load ptr, ptr %l0, !tbaa !29
  %t61 = getelementptr %"compiler/load:Loader", ptr %t59, i32 0, i32 10
  %t62 = load i64, ptr %l8, !tbaa !24
  %t65 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H7bcf2aeb09afa796f4333e6ec8c3f63f(ptr %v0, ptr %v0, ptr %t61, i64 %t62)
  store ptr %t65, ptr %l45
  br label %bb14
bb14:
  %t66 = load ptr, ptr %l45, !tbaa !29
  store ptr %t66, ptr %l9, !tbaa !29
  %t67 = load ptr, ptr %l9, !tbaa !29
  %t69 = getelementptr %"compiler/load:Module", ptr %t67, i32 0, i32 11
  store ptr %t69, ptr %l10, !tbaa !29
  store i64 0, ptr %l11, !tbaa !24
  br label %bb15
bb15:
  store %olang.scope zeroinitializer, ptr %s4
  %t71 = load i64, ptr %l11, !tbaa !24
  store i64 %t71, ptr %l48, !tbaa !24
  %t72 = load ptr, ptr %l10, !tbaa !29
  %t74 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fload_3aImport_3e_2eLen_3ccompiler_2fload_3aImport_3e(ptr %v0, ptr %t72)
  store i64 %t74, ptr %l50
  br label %bb16
bb16:
  %t75 = load i64, ptr %l48, !tbaa !24
  %t76 = load i64, ptr %l50, !tbaa !24
  %t77 = icmp slt i64 %t75, %t76
  %t79 = xor i1 %t77, true
  br i1 %t79, label %bb17, label %bb18
bb17:
  call void @__olang_scope_close(ptr %s4)
  br label %bb34
bb18:
  br label %bb19
bb19:
  %t81 = load ptr, ptr %l10, !tbaa !29
  %t82 = load i64, ptr %l11, !tbaa !24
  %t85 = call %"compiler/load:Import" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fload_3aImport_3e_2eAt_3ccompiler_2fload_3aImport_3e(ptr %v0, ptr %v0, ptr %t81, i64 %t82)
  store %"compiler/load:Import" %t85, ptr %l55
  br label %bb20
bb20:
  %t86 = load %"compiler/load:Import", ptr %l55
  store %"compiler/load:Import" %t86, ptr %l12
  %t87 = getelementptr %"compiler/load:Import", ptr %l12, i32 0, i32 6
  %t88 = load { i64, ptr }, ptr %t87, !tbaa !27
  %t90 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s4, { i64, ptr } %t88, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d65, i32 0, i32 1) })
  store i1 %t90, ptr %l57
  br label %bb21
bb21:
  %t91 = load i1, ptr %l57, !tbaa !21
  br i1 %t91, label %bb22, label %bb23
bb22:
  store i1 true, ptr %l58, !tbaa !21
  br label %bb24
bb23:
  %t92 = getelementptr %"compiler/load:Import", ptr %l12, i32 0, i32 5
  %t93 = load i64, ptr %t92, !tbaa !24
  %t95 = icmp slt i64 %t93, 0
  store i1 %t95, ptr %l58, !tbaa !21
  br label %bb24
bb24:
  %t97 = load i1, ptr %l58, !tbaa !21
  br i1 %t97, label %bb25, label %bb26
bb25:
  store i1 true, ptr %l61, !tbaa !21
  br label %bb28
bb26:
  %t98 = load ptr, ptr %l0, !tbaa !29
  %t100 = getelementptr %"compiler/load:Loader", ptr %t98, i32 0, i32 10
  %t101 = getelementptr %"compiler/load:Import", ptr %l12, i32 0, i32 5
  %t102 = load i64, ptr %t101, !tbaa !24
  %t105 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H7bcf2aeb09afa796f4333e6ec8c3f63f(ptr %v0, ptr %v0, ptr %t100, i64 %t102)
  store ptr %t105, ptr %l65
  br label %bb27
bb27:
  %t106 = load ptr, ptr %l65, !tbaa !29
  %t108 = getelementptr %"compiler/load:Module", ptr %t106, i32 0, i32 30
  %t109 = load i1, ptr %t108, !tbaa !21
  %t111 = xor i1 %t109, true
  store i1 %t111, ptr %l61, !tbaa !21
  br label %bb28
bb28:
  %t113 = load i1, ptr %l61, !tbaa !21
  br i1 %t113, label %bb29, label %bb30
bb29:
  call void @__olang_scope_close(ptr %s4)
  br label %bb33
bb30:
  br label %bb31
bb31:
  %t114 = load ptr, ptr %l0, !tbaa !29
  %t115 = load i64, ptr %l8, !tbaa !24
  %t116 = getelementptr %"compiler/load:Import", ptr %l12, i32 0, i32 7
  %t117 = load %"compiler/source:Span", ptr %t116
  %t118 = load ptr, ptr %lp1
  call void @compiler_2fload_2ecompiler_2fload_3aLoader_2eaddLink(ptr %v0, ptr %v1, ptr %s0, ptr %t114, i64 %t115, %"compiler/source:Span" %t117, ptr %t118, ptr %l2)
  br label %bb32
bb32:
  call void @__olang_scope_close(ptr %s4)
  br label %bb33
bb33:
  %t124 = load i64, ptr %l11, !tbaa !24
  %t126 = add i64 %t124, 1
  store i64 %t126, ptr %l11, !tbaa !24
  br label %bb15
bb34:
  %t128 = load ptr, ptr %l0, !tbaa !29
  %t129 = load i64, ptr %l8, !tbaa !24
  %t130 = load ptr, ptr %l9, !tbaa !29
  %t132 = getelementptr %"compiler/load:Module", ptr %t130, i32 0, i32 8
  %t133 = load { i64, ptr }, ptr %t132, !tbaa !27
  %t134 = load ptr, ptr %lp1
  call void @compiler_2fload_2ecompiler_2fload_3aLoader_2elinksIn(ptr %v0, ptr %v0, ptr %v1, ptr %s0, ptr %t128, i64 %t129, { i64, ptr } %t133, ptr %t134, ptr %l2)
  br label %bb35
bb35:
  br label %bb36
bb36:
  %t140 = load i64, ptr %l7, !tbaa !24
  %t142 = add i64 %t140, 1
  store i64 %t142, ptr %l7, !tbaa !24
  br label %bb10
bb37:
  %t144 = load ptr, ptr %lp1
  %t145 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t144
  call void @__olang_scope_close(ptr %s0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t145, ptr %rv
  br label %ret
ret:
  %rr = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %rv
  ret %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %rr
}

define dso_local void @compiler_2fload_2ecompiler_2fload_3aLoader_2eLoadPrelude(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca [2 x { i64, ptr }]
  %l2 = alloca { i64, ptr }
  %l3 = alloca { i64, ptr }
  %l4 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l5 = alloca { i64, ptr }
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca { i64, ptr }
  %l9 = alloca [2 x { i64, ptr }]
  %l10 = alloca { i64, ptr }
  %l11 = alloca ptr
  %l12 = alloca i64
  %l14 = alloca { i64, ptr }
  %l15 = alloca %"compiler/scan:Tokens"
  %l16 = alloca ptr
  %l17 = alloca i64
  %l18 = alloca { i64, ptr }
  %l19 = alloca ptr
  %l20 = alloca i64
  %l21 = alloca { i64, ptr }
  %l27 = alloca { i64, ptr }
  %l28 = alloca { i64, ptr }
  %l30 = alloca { i64, ptr }
  %l31 = alloca i32
  %l33 = alloca i1
  %l36 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l44 = alloca { i64, ptr }
  %l52 = alloca { i64, ptr }
  %l54 = alloca i1
  %l55 = alloca ptr
  %l56 = alloca i64
  %l64 = alloca i64
  %l66 = alloca i64
  %l71 = alloca { i64, ptr }
  %l72 = alloca { i64, ptr }
  %l74 = alloca { i64, ptr }
  %l75 = alloca i32
  %l77 = alloca i1
  %l81 = alloca %"compiler/scan:Tokens"
  %l84 = alloca ptr
  %l85 = alloca i64
  %l87 = alloca i64
  %l92 = alloca { i64, ptr }
  %l94 = alloca ptr
  %l95 = alloca i64
  %l105 = alloca i64
  %l107 = alloca i64
  %l112 = alloca { i64, ptr }
  %l113 = alloca ptr
  %l114 = alloca { i64, ptr }
  %l117 = alloca { i64, ptr }
  %l119 = alloca i64
  %s0 = alloca %olang.scope
  %s3 = alloca %olang.scope
  %s8 = alloca %olang.scope
  %s10 = alloca %olang.scope
  %s16 = alloca %olang.scope
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/load:Loader", ptr %t1, i32 0, i32 0
  %t4 = load { i64, ptr }, ptr %t3, !tbaa !27
  %t6 = insertvalue [2 x { i64, ptr }] undef, { i64, ptr } %t4, 0
  %t7 = insertvalue [2 x { i64, ptr }] %t6, { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d66, i32 0, i32 1) }, 1
  store [2 x { i64, ptr }] %t7, ptr %l1
  %t10 = insertvalue { i64, ptr } undef, i64 2, 0
  %t11 = insertvalue { i64, ptr } %t10, ptr %l1, 1
  %t13 = call { i64, ptr } @std_2ffilepath_2eJoin(ptr %s0, ptr %s0, { i64, ptr } %t11)
  store { i64, ptr } %t13, ptr %l27
  br label %bb1
bb1:
  %t14 = load { i64, ptr }, ptr %l27, !tbaa !27
  store { i64, ptr } %t14, ptr %l2, !tbaa !27
  %t15 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t17 = call { i32, { i64, ptr } } @std_2fos_2eReadDir(ptr %s0, ptr %s0, { i64, ptr } %t15)
  %t18 = extractvalue { i32, { i64, ptr } } %t17, 1
  %t19 = extractvalue { i32, { i64, ptr } } %t17, 0
  store i32 %t19, ptr %l31
  %t20 = icmp ne i32 %t19, 0
  br i1 %t20, label %bb3, label %ok.21, !prof !99
ok.21:
  store { i64, ptr } %t18, ptr %l30
  br label %bb2
bb2:
  %t22 = load { i64, ptr }, ptr %l30, !tbaa !27
  store { i64, ptr } %t22, ptr %l28, !tbaa !27
  br label %bb7
bb3:
  %t23 = load i32, ptr %l31, !tbaa !23
  %t24 = ashr i32 %t23, 16
  %t26 = icmp eq i32 %t24, 1
  store i1 %t26, ptr %l33, !tbaa !21
  %t27 = load i32, ptr %l31, !tbaa !23
  %t28 = ashr i32 %t27, 16
  %t30 = icmp eq i32 %t28, 1
  br i1 %t30, label %bb4, label %bb5
bb4:
  call void @__olang_errpay_pop()
  br label %bb5
bb5:
  br label %bb6
bb6:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb7:
  %t32 = load { i64, ptr }, ptr %l28, !tbaa !27
  store { i64, ptr } %t32, ptr %l3, !tbaa !27
  %t33 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2ector(ptr %s0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t33, ptr %l36
  br label %bb8
bb8:
  %t34 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l36
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t34, ptr %l4
  %t35 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t35, ptr %l5, !tbaa !27
  store i64 0, ptr %l6, !tbaa !24
  %t37 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t39 = extractvalue { i64, ptr } %t37, 0
  store i64 %t39, ptr %l7, !tbaa !24
  br label %bb9
bb9:
  store %olang.scope zeroinitializer, ptr %s3
  %t41 = load i64, ptr %l6, !tbaa !24
  %t42 = load i64, ptr %l7, !tbaa !24
  %t45 = icmp slt i64 %t41, %t42
  %t47 = xor i1 %t45, true
  br i1 %t47, label %bb10, label %bb11
bb10:
  call void @__olang_scope_close(ptr %s3)
  br label %bb22
bb11:
  br label %bb12
bb12:
  %t49 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t49, ptr %l44, !tbaa !27
  %t50 = load i64, ptr %l6, !tbaa !24
  %t52 = getelementptr { i64, ptr }, ptr %l44, i32 0, i32 1
  %t53 = load ptr, ptr %t52, !tbaa !27
  %t54 = getelementptr { i64, ptr }, ptr %t53, i64 %t50
  %t55 = load { i64, ptr }, ptr %t54, !tbaa !37
  store { i64, ptr } %t55, ptr %l8, !tbaa !27
  %t57 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t58 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t60 = insertvalue [2 x { i64, ptr }] undef, { i64, ptr } %t57, 0
  %t62 = insertvalue [2 x { i64, ptr }] %t60, { i64, ptr } %t58, 1
  store [2 x { i64, ptr }] %t62, ptr %l9
  %t65 = insertvalue { i64, ptr } undef, i64 2, 0
  %t66 = insertvalue { i64, ptr } %t65, ptr %l9, 1
  %t68 = call { i64, ptr } @std_2ffilepath_2eJoin(ptr %s3, ptr %s3, { i64, ptr } %t66)
  store { i64, ptr } %t68, ptr %l52
  br label %bb13
bb13:
  %t69 = load { i64, ptr }, ptr %l52, !tbaa !27
  store { i64, ptr } %t69, ptr %l10, !tbaa !27
  %t70 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t72 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEndsWith(ptr %s0, ptr %s3, { i64, ptr } %t70, { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d67, i32 0, i32 1) })
  store i1 %t72, ptr %l54
  br label %bb14
bb14:
  %t73 = load i1, ptr %l54, !tbaa !21
  br i1 %t73, label %bb15, label %bb16
bb15:
  store ptr %l4, ptr %l55, !tbaa !29
  %t74 = ptrtoint ptr %s0 to i64
  store i64 %t74, ptr %l56, !tbaa !24
  %t75 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1
  br i1 %t75, label %bb17, label %bb18
bb16:
  br label %bb20
bb17:
  %t77 = call ptr @__olang_region_make(ptr %s0)
  %t78 = ptrtoint ptr %t77 to i64
  store i64 %t78, ptr %l56, !tbaa !24
  br label %bb18
bb18:
  %t79 = load { i64, ptr }, ptr %l10, !tbaa !27
  %t81 = extractvalue { i64, ptr } %t79, 1
  %t82 = extractvalue { i64, ptr } %t79, 0
  %t83 = load i64, ptr %l56
  %t84 = inttoptr i64 %t83 to ptr
  %t85 = call ptr @__olang_scope_alloc(ptr %t84, i64 %t82)
  call void @olang_textcopy(ptr %t85, ptr %t81, i64 %t82)
  %t86 = insertvalue { i64, ptr } undef, i64 %t82, 0
  %t87 = insertvalue { i64, ptr } %t86, ptr %t85, 1
  %t89 = load i64, ptr %l56
  %t90 = inttoptr i64 %t89 to ptr
  %t91 = extractvalue { i64, ptr } %t87, 0
  %t92 = extractvalue { i64, ptr } %t87, 1
  %t93 = mul i64 %t91, 1
  %t94 = call ptr @__olang_scope_alloc(ptr %t90, i64 %t93)
  call void @llvm.memcpy.p0.p0.i64(ptr %t94, ptr %t92, i64 %t93, i1 false)
  %t95 = insertvalue { i64, ptr } undef, i64 %t91, 0
  %t96 = insertvalue { i64, ptr } %t95, ptr %t94, 1
  %t97 = load ptr, ptr %l55, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %s0, ptr %s0, ptr %t97, { i64, ptr } %t96)
  br label %bb19
bb19:
  br label %bb20
bb20:
  call void @__olang_scope_close(ptr %s3)
  br label %bb21
bb21:
  %t99 = load i64, ptr %l6, !tbaa !24
  %t101 = add i64 %t99, 1
  store i64 %t101, ptr %l6, !tbaa !24
  br label %bb9
bb22:
  store ptr %l4, ptr %l11, !tbaa !29
  store i64 0, ptr %l12, !tbaa !24
  br label %bb23
bb23:
  store %olang.scope zeroinitializer, ptr %s8
  %t104 = load i64, ptr %l12, !tbaa !24
  store i64 %t104, ptr %l64, !tbaa !24
  %t105 = load ptr, ptr %l11, !tbaa !29
  %t107 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %s0, ptr %t105)
  store i64 %t107, ptr %l66
  br label %bb24
bb24:
  %t108 = load i64, ptr %l64, !tbaa !24
  %t109 = load i64, ptr %l66, !tbaa !24
  %t110 = icmp slt i64 %t108, %t109
  %t112 = xor i1 %t110, true
  br i1 %t112, label %bb25, label %bb26
bb25:
  call void @__olang_scope_close(ptr %s8)
  br label %bb49
bb26:
  br label %bb27
bb27:
  %t114 = load ptr, ptr %l11, !tbaa !29
  %t115 = load i64, ptr %l12, !tbaa !24
  %t118 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %s0, ptr %s0, ptr %t114, i64 %t115)
  store { i64, ptr } %t118, ptr %l71
  br label %bb28
bb28:
  %t119 = load { i64, ptr }, ptr %l71, !tbaa !27
  %t122 = call { i32, { i64, ptr } } @std_2fos_2eReadFile(ptr %s0, ptr %s8, { i64, ptr } %t119)
  %t123 = extractvalue { i32, { i64, ptr } } %t122, 1
  %t124 = extractvalue { i32, { i64, ptr } } %t122, 0
  store i32 %t124, ptr %l75
  %t125 = icmp ne i32 %t124, 0
  br i1 %t125, label %bb30, label %ok.126, !prof !99
ok.126:
  store { i64, ptr } %t123, ptr %l74
  br label %bb29
bb29:
  %t127 = load { i64, ptr }, ptr %l74, !tbaa !27
  store { i64, ptr } %t127, ptr %l72, !tbaa !27
  br label %bb34
bb30:
  %t128 = load i32, ptr %l75, !tbaa !23
  %t129 = ashr i32 %t128, 16
  %t131 = icmp eq i32 %t129, 1
  store i1 %t131, ptr %l77, !tbaa !21
  %t132 = load i32, ptr %l75, !tbaa !23
  %t133 = ashr i32 %t132, 16
  %t135 = icmp eq i32 %t133, 1
  br i1 %t135, label %bb31, label %bb32
bb31:
  call void @__olang_errpay_pop()
  br label %bb32
bb32:
  br label %bb33
bb33:
  call void @__olang_scope_close(ptr %s8)
  br label %bb48
bb34:
  %t137 = load { i64, ptr }, ptr %l72, !tbaa !27
  store { i64, ptr } %t137, ptr %l14, !tbaa !27
  %t138 = load { i64, ptr }, ptr %l14, !tbaa !27
  %t140 = call %"compiler/scan:Tokens" @compiler_2fscan_2eTokens_2eScan(ptr %s8, ptr %s8, { i64, ptr } %t138)
  store %"compiler/scan:Tokens" %t140, ptr %l81
  br label %bb35
bb35:
  %t141 = load %"compiler/scan:Tokens", ptr %l81
  store %"compiler/scan:Tokens" %t141, ptr %l15
  store %olang.scope zeroinitializer, ptr %s10
  %t142 = load { i64, ptr }, ptr %l14, !tbaa !27
  %t145 = call ptr @compiler_2fload_2etypeNames(ptr %s8, ptr %s8, ptr %s10, { i64, ptr } %t142, ptr %l15)
  store ptr %t145, ptr %l84
  br label %bb36
bb36:
  %t146 = load ptr, ptr %l84, !tbaa !29
  store ptr %t146, ptr %l16, !tbaa !29
  store i64 0, ptr %l17, !tbaa !24
  br label %bb37
bb37:
  %t147 = load i64, ptr %l17, !tbaa !24
  store i64 %t147, ptr %l85, !tbaa !24
  %t148 = load ptr, ptr %l16, !tbaa !29
  %t150 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %s10, ptr %t148)
  store i64 %t150, ptr %l87
  br label %bb38
bb38:
  %t151 = load i64, ptr %l85, !tbaa !24
  %t152 = load i64, ptr %l87, !tbaa !24
  %t153 = icmp slt i64 %t151, %t152
  %t155 = xor i1 %t153, true
  br i1 %t155, label %bb39, label %bb40
bb39:
  br label %bb47
bb40:
  br label %bb41
bb41:
  %t157 = load ptr, ptr %l16, !tbaa !29
  %t158 = load i64, ptr %l17, !tbaa !24
  %t161 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %s10, ptr %s10, ptr %t157, i64 %t158)
  store { i64, ptr } %t161, ptr %l92
  br label %bb42
bb42:
  %t162 = load { i64, ptr }, ptr %l92, !tbaa !27
  store { i64, ptr } %t162, ptr %l18, !tbaa !27
  %t163 = load ptr, ptr %l0, !tbaa !29
  %t165 = getelementptr %"compiler/load:Loader", ptr %t163, i32 0, i32 11
  store ptr %t165, ptr %l94, !tbaa !29
  %t166 = ptrtoint ptr %v0 to i64
  store i64 %t166, ptr %l95, !tbaa !24
  %t167 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1
  br i1 %t167, label %bb43, label %bb44
bb43:
  %t169 = call ptr @__olang_region_make(ptr %v0)
  %t170 = ptrtoint ptr %t169 to i64
  store i64 %t170, ptr %l95, !tbaa !24
  br label %bb44
bb44:
  %t171 = load { i64, ptr }, ptr %l18, !tbaa !27
  %t173 = extractvalue { i64, ptr } %t171, 1
  %t174 = extractvalue { i64, ptr } %t171, 0
  %t175 = load i64, ptr %l95
  %t176 = inttoptr i64 %t175 to ptr
  %t177 = call ptr @__olang_scope_alloc(ptr %t176, i64 %t174)
  call void @olang_textcopy(ptr %t177, ptr %t173, i64 %t174)
  %t178 = insertvalue { i64, ptr } undef, i64 %t174, 0
  %t179 = insertvalue { i64, ptr } %t178, ptr %t177, 1
  %t181 = load i64, ptr %l95
  %t182 = inttoptr i64 %t181 to ptr
  %t183 = extractvalue { i64, ptr } %t179, 0
  %t184 = extractvalue { i64, ptr } %t179, 1
  %t185 = mul i64 %t183, 1
  %t186 = call ptr @__olang_scope_alloc(ptr %t182, i64 %t185)
  call void @llvm.memcpy.p0.p0.i64(ptr %t186, ptr %t184, i64 %t185, i1 false)
  %t187 = insertvalue { i64, ptr } undef, i64 %t183, 0
  %t188 = insertvalue { i64, ptr } %t187, ptr %t186, 1
  %t189 = load ptr, ptr %l94, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v0, ptr %v0, ptr %t189, { i64, ptr } %t188)
  br label %bb45
bb45:
  br label %bb46
bb46:
  %t191 = load i64, ptr %l17, !tbaa !24
  %t193 = add i64 %t191, 1
  store i64 %t193, ptr %l17, !tbaa !24
  br label %bb37
bb47:
  call void @__olang_scope_close(ptr %s10)
  call void @__olang_scope_close(ptr %s8)
  br label %bb48
bb48:
  %t195 = load i64, ptr %l12, !tbaa !24
  %t197 = add i64 %t195, 1
  store i64 %t197, ptr %l12, !tbaa !24
  br label %bb23
bb49:
  store ptr %l4, ptr %l19, !tbaa !29
  store i64 0, ptr %l20, !tbaa !24
  br label %bb50
bb50:
  store %olang.scope zeroinitializer, ptr %s16
  %t200 = load i64, ptr %l20, !tbaa !24
  store i64 %t200, ptr %l105, !tbaa !24
  %t201 = load ptr, ptr %l19, !tbaa !29
  %t203 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %s0, ptr %t201)
  store i64 %t203, ptr %l107
  br label %bb51
bb51:
  %t204 = load i64, ptr %l105, !tbaa !24
  %t205 = load i64, ptr %l107, !tbaa !24
  %t206 = icmp slt i64 %t204, %t205
  %t208 = xor i1 %t206, true
  br i1 %t208, label %bb52, label %bb53
bb52:
  call void @__olang_scope_close(ptr %s16)
  br label %bb59
bb53:
  br label %bb54
bb54:
  %t210 = load ptr, ptr %l19, !tbaa !29
  %t211 = load i64, ptr %l20, !tbaa !24
  %t214 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %s0, ptr %s0, ptr %t210, i64 %t211)
  store { i64, ptr } %t214, ptr %l112
  br label %bb55
bb55:
  %t215 = load { i64, ptr }, ptr %l112, !tbaa !27
  store { i64, ptr } %t215, ptr %l21, !tbaa !27
  %t216 = load ptr, ptr %l0, !tbaa !29
  store ptr %t216, ptr %l113, !tbaa !29
  %t217 = load { i64, ptr }, ptr %l21, !tbaa !27
  store { i64, ptr } %t217, ptr %l114, !tbaa !27
  %t218 = load ptr, ptr %l0, !tbaa !29
  %t219 = load { i64, ptr }, ptr %l21, !tbaa !27
  %t222 = call { i64, ptr } @compiler_2fload_2ecompiler_2fload_3aLoader_2erootIdentity(ptr %v0, ptr %s0, ptr %s16, ptr %t218, { i64, ptr } %t219)
  store { i64, ptr } %t222, ptr %l117
  br label %bb56
bb56:
  %t223 = load { i64, ptr }, ptr %l117, !tbaa !27
  %t224 = extractvalue { i64, ptr } %t223, 0
  %t225 = extractvalue { i64, ptr } %t223, 1
  %t226 = mul i64 %t224, 1
  %t227 = call ptr @__olang_scope_alloc(ptr %s16, i64 %t226)
  call void @llvm.memcpy.p0.p0.i64(ptr %t227, ptr %t225, i64 %t226, i1 false)
  %t228 = insertvalue { i64, ptr } undef, i64 %t224, 0
  %t229 = insertvalue { i64, ptr } %t228, ptr %t227, 1
  %t230 = load ptr, ptr %l113, !tbaa !29
  %t231 = load { i64, ptr }, ptr %l114, !tbaa !27
  %t233 = call i64 @compiler_2fload_2ecompiler_2fload_3aLoader_2eload(ptr %v0, ptr %s0, ptr %s16, ptr %t230, { i64, ptr } %t231, { i64, ptr } %t229, i1 true, i1 false)
  store i64 %t233, ptr %l119
  br label %bb57
bb57:
  call void @__olang_scope_close(ptr %s16)
  br label %bb58
bb58:
  %t234 = load i64, ptr %l20, !tbaa !24
  %t236 = add i64 %t234, 1
  store i64 %t236, ptr %l20, !tbaa !24
  br label %bb50
bb59:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2fload_2ecompiler_2fload_3aLoader_2ePendingIfs(ptr %v0, ptr %v1, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %lp1 = alloca ptr
  %l2 = alloca i64
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca ptr
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca i64
  %l12 = alloca i64
  %l13 = alloca i64
  %l14 = alloca i64
  %l15 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l18 = alloca i64
  %l22 = alloca i64
  %l25 = alloca i64
  %l46 = alloca ptr
  %l49 = alloca i64
  %l53 = alloca i64
  %l56 = alloca i64
  %l80 = alloca i64
  %l83 = alloca i1
  %l84 = alloca ptr
  %l85 = alloca i64
  %l89 = alloca i64
  %l90 = alloca i64
  %l92 = alloca ptr
  %l93 = alloca i64
  %l97 = alloca i32
  %l98 = alloca %"std/pair:Pair.d0636885f2b44490dbc61e56fa468a20"
  %s5 = alloca %olang.scope
  %rv = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fpair_3aPair_3cI64_2c_20I32_3e_3e_2ector(ptr %v1, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1, ptr %l15
  br label %bb1
bb1:
  %t2 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 32, i64 8)
  store ptr %t2, ptr %lp1
  %t3 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l15
  %t4 = load ptr, ptr %lp1
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t3, ptr %t4
  store i64 0, ptr %l2, !tbaa !24
  %t5 = load ptr, ptr %l0, !tbaa !29
  %t7 = getelementptr %"compiler/load:Loader", ptr %t5, i32 0, i32 10
  %t9 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_Hb2d19b6b5ea5ab5a85c5720545345bd4(ptr %v0, ptr %t7)
  store i64 %t9, ptr %l18
  br label %bb2
bb2:
  %t10 = load i64, ptr %l18, !tbaa !24
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
  store i64 0, ptr %l22, !tbaa !24
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
  store i64 %t35, ptr %l25, !tbaa !24
  br label %bb7
bb6:
  store i64 0, ptr %l25, !tbaa !24
  br label %bb7
bb7:
  %t37 = load i64, ptr %l25, !tbaa !24
  store i64 %t37, ptr %l22, !tbaa !24
  br label %bb8
bb8:
  %t38 = load i64, ptr %l22, !tbaa !24
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
  br label %bb41
bb11:
  br label %bb12
bb12:
  %t47 = load i64, ptr %l2, !tbaa !24
  %t48 = load i64, ptr %l6, !tbaa !24
  %t49 = load i64, ptr %l4, !tbaa !24
  %t52 = mul i64 %t48, %t49
  %t55 = add i64 %t47, %t52
  store i64 %t55, ptr %l7, !tbaa !24
  %t57 = load ptr, ptr %l0, !tbaa !29
  %t59 = getelementptr %"compiler/load:Loader", ptr %t57, i32 0, i32 10
  %t60 = load i64, ptr %l7, !tbaa !24
  %t63 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H7bcf2aeb09afa796f4333e6ec8c3f63f(ptr %v0, ptr %v0, ptr %t59, i64 %t60)
  store ptr %t63, ptr %l46
  br label %bb13
bb13:
  %t64 = load ptr, ptr %l46, !tbaa !29
  store ptr %t64, ptr %l8, !tbaa !29
  store i64 0, ptr %l9, !tbaa !24
  %t65 = load ptr, ptr %l8, !tbaa !29
  %t67 = getelementptr %"compiler/load:Module", ptr %t65, i32 0, i32 14
  %t69 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI32_3e_2eLen_3cI32_3e(ptr %v0, ptr %t67)
  store i64 %t69, ptr %l49
  br label %bb14
bb14:
  %t70 = load i64, ptr %l49, !tbaa !24
  store i64 %t70, ptr %l10, !tbaa !24
  store i64 1, ptr %l11, !tbaa !24
  %t71 = load i64, ptr %l10, !tbaa !24
  %t72 = load i64, ptr %l9, !tbaa !24
  %t75 = icmp sgt i64 %t71, %t72
  br i1 %t75, label %bb15, label %bb16
bb15:
  %t77 = load i64, ptr %l11, !tbaa !24
  %t79 = icmp sgt i64 %t77, 0
  br i1 %t79, label %bb17, label %bb18
bb16:
  store i64 0, ptr %l53, !tbaa !24
  br label %bb20
bb17:
  %t81 = load i64, ptr %l10, !tbaa !24
  %t82 = load i64, ptr %l9, !tbaa !24
  %t85 = sub i64 %t81, %t82
  %t86 = load i64, ptr %l11, !tbaa !24
  %t89 = add i64 %t85, %t86
  %t91 = sub i64 %t89, 1
  %t92 = load i64, ptr %l11, !tbaa !24
  %t95 = sdiv i64 %t91, %t92
  store i64 %t95, ptr %l56, !tbaa !24
  br label %bb19
bb18:
  store i64 0, ptr %l56, !tbaa !24
  br label %bb19
bb19:
  %t97 = load i64, ptr %l56, !tbaa !24
  store i64 %t97, ptr %l53, !tbaa !24
  br label %bb20
bb20:
  %t98 = load i64, ptr %l53, !tbaa !24
  store i64 %t98, ptr %l12, !tbaa !24
  store i64 0, ptr %l13, !tbaa !24
  br label %bb21
bb21:
  %t99 = load i64, ptr %l13, !tbaa !24
  %t100 = load i64, ptr %l12, !tbaa !24
  %t103 = icmp slt i64 %t99, %t100
  %t105 = xor i1 %t103, true
  br i1 %t105, label %bb22, label %bb23
bb22:
  br label %bb39
bb23:
  br label %bb24
bb24:
  %t107 = load i64, ptr %l9, !tbaa !24
  %t108 = load i64, ptr %l13, !tbaa !24
  %t109 = load i64, ptr %l11, !tbaa !24
  %t112 = mul i64 %t108, %t109
  %t115 = add i64 %t107, %t112
  store i64 %t115, ptr %l14, !tbaa !24
  %t117 = load ptr, ptr %l0, !tbaa !29
  %t118 = load i64, ptr %l7, !tbaa !24
  %t119 = load i64, ptr %l14, !tbaa !24
  call void @compiler_2fload_2ecompiler_2fload_3aLoader_2edecide(ptr %v0, ptr %t117, i64 %t118, i64 %t119)
  br label %bb25
bb25:
  %t123 = load ptr, ptr %l8, !tbaa !29
  %t125 = getelementptr %"compiler/load:Module", ptr %t123, i32 0, i32 16
  %t126 = load i64, ptr %l14, !tbaa !24
  %t129 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t125, i64 %t126)
  store i64 %t129, ptr %l80
  br label %bb26
bb26:
  %t130 = load i64, ptr @G_2ecompiler_2fload_2ePending, !tbaa !24
  %t131 = load i64, ptr %l80, !tbaa !24
  %t133 = icmp eq i64 %t131, %t130
  br i1 %t133, label %bb27, label %bb28
bb27:
  %t135 = load ptr, ptr %l0, !tbaa !29
  store ptr %t135, ptr %l84, !tbaa !29
  %t136 = load i64, ptr %l7, !tbaa !24
  store i64 %t136, ptr %l85, !tbaa !24
  %t137 = load ptr, ptr %l8, !tbaa !29
  %t139 = getelementptr %"compiler/load:Module", ptr %t137, i32 0, i32 15
  %t140 = load i64, ptr %l14, !tbaa !24
  %t143 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t139, i64 %t140)
  store i64 %t143, ptr %l89
  br label %bb29
bb28:
  store i1 false, ptr %l83, !tbaa !21
  br label %bb31
bb29:
  %t144 = load ptr, ptr %l84, !tbaa !29
  %t145 = load i64, ptr %l85, !tbaa !24
  %t146 = load i64, ptr %l89, !tbaa !24
  %t147 = call i64 @compiler_2fload_2ecompiler_2fload_3aLoader_2etaken(ptr %v0, ptr %t144, i64 %t145, i64 %t146)
  store i64 %t147, ptr %l90
  br label %bb30
bb30:
  %t148 = load i64, ptr %l90, !tbaa !24
  %t149 = icmp eq i64 %t148, 1
  store i1 %t149, ptr %l83, !tbaa !21
  br label %bb31
bb31:
  %t151 = load i1, ptr %l83, !tbaa !21
  br i1 %t151, label %bb32, label %bb33
bb32:
  store %olang.scope zeroinitializer, ptr %s5
  %t152 = load ptr, ptr %lp1
  store ptr %t152, ptr %l92, !tbaa !29
  %t153 = load i64, ptr %l7, !tbaa !24
  store i64 %t153, ptr %l93, !tbaa !24
  %t154 = load ptr, ptr %l8, !tbaa !29
  %t156 = getelementptr %"compiler/load:Module", ptr %t154, i32 0, i32 14
  %t157 = load i64, ptr %l14, !tbaa !24
  %t160 = call i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI32_3e_2eAt_3cI32_3e(ptr %v0, ptr %t156, i64 %t157)
  store i32 %t160, ptr %l97
  br label %bb34
bb33:
  br label %bb37
bb34:
  %t161 = load i64, ptr %l93, !tbaa !24
  %t162 = load i32, ptr %l97, !tbaa !23
  %t163 = call %"std/pair:Pair.d0636885f2b44490dbc61e56fa468a20" @std_2fpair_3aPair_3cI64_2c_20I32_3e_2ector(ptr %s5, i64 %t161, i32 %t162)
  store %"std/pair:Pair.d0636885f2b44490dbc61e56fa468a20" %t163, ptr %l98
  br label %bb35
bb35:
  %t164 = load ptr, ptr %l92, !tbaa !29
  %t165 = load %"std/pair:Pair.d0636885f2b44490dbc61e56fa468a20", ptr %l98
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fpair_3aPair_3cI64_2c_20I32_3e_3e_H3d0936d94fa2a15581f68618fbda67e4(ptr %v1, ptr %t164, %"std/pair:Pair.d0636885f2b44490dbc61e56fa468a20" %t165)
  br label %bb36
bb36:
  call void @__olang_scope_close(ptr %s5)
  br label %bb37
bb37:
  br label %bb38
bb38:
  %t166 = load i64, ptr %l13, !tbaa !24
  %t168 = add i64 %t166, 1
  store i64 %t168, ptr %l13, !tbaa !24
  br label %bb21
bb39:
  br label %bb40
bb40:
  %t170 = load i64, ptr %l6, !tbaa !24
  %t172 = add i64 %t170, 1
  store i64 %t172, ptr %l6, !tbaa !24
  br label %bb9
bb41:
  %t174 = load ptr, ptr %lp1
  %t175 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t174
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t175, ptr %rv
  br label %ret
ret:
  %rr = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %rv
  ret %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %rr
}

define dso_local void @compiler_2fload_2ecompiler_2fload_3aLoader_2eaddLink(ptr %v0, ptr %v1, ptr %v2, ptr %a0, i64 %a1, %"compiler/source:Span" %a2, ptr %a3, ptr %a4) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca %"compiler/source:Span"
  %l4 = alloca ptr
  %l5 = alloca ptr
  %l6 = alloca { i64, ptr }
  %l7 = alloca { i64, ptr }
  %l8 = alloca [2 x { i64, ptr }]
  %l12 = alloca ptr
  %l19 = alloca { i64, ptr }
  %l22 = alloca i64
  %l25 = alloca i64
  %l26 = alloca i64
  %l31 = alloca { i64, ptr }
  %l32 = alloca { i64, ptr }
  %l33 = alloca i64
  %l34 = alloca { i64, ptr }
  %l36 = alloca i1
  %l38 = alloca i1
  %l39 = alloca { i64, ptr }
  %l43 = alloca { i64, ptr }
  %l48 = alloca { i64, ptr }
  %l50 = alloca { i64, ptr }
  %l52 = alloca i64
  %l55 = alloca i1
  %l57 = alloca { i64, ptr }
  %l59 = alloca i64
  %l62 = alloca ptr
  %l69 = alloca { i64, [3 x i64] }
  %l71 = alloca { i64, ptr }
  %l73 = alloca %"compiler/diagmsg:Msg"
  %l74 = alloca i64
  %l77 = alloca i1
  %l78 = alloca ptr
  %l79 = alloca i64
  %l84 = alloca ptr
  %l85 = alloca i64
  %s0 = alloca %olang.scope
  %s1 = alloca %olang.scope
  %s6 = alloca %olang.scope
  %t168 = alloca { i64, [3 x i64] }, align 8
  store ptr %a0, ptr %l0
  store %"compiler/source:Span" %a2, ptr %l2
  store ptr %a4, ptr %l4
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/load:Loader", ptr %t1, i32 0, i32 10
  %t7 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H7bcf2aeb09afa796f4333e6ec8c3f63f(ptr %v0, ptr %v0, ptr %t3, i64 %a1)
  store ptr %t7, ptr %l12
  br label %bb1
bb1:
  %t8 = load ptr, ptr %l12, !tbaa !29
  store ptr %t8, ptr %l5, !tbaa !29
  %t9 = load ptr, ptr %l5, !tbaa !29
  %t11 = getelementptr %"compiler/load:Module", ptr %t9, i32 0, i32 6
  %t12 = load ptr, ptr %t11, !tbaa !29
  %t14 = icmp eq ptr %t12, null
  br i1 %t14, label %bb2, label %bb3
bb2:
  call void @__olang_check_failed(ptr @olang_loc_d2a36b1a0f33f2c5_8bb351bc5bea8f1)
  unreachable
bb3:
  br label %bb4
bb4:
  %t16 = load ptr, ptr %l5, !tbaa !29
  %t18 = getelementptr %"compiler/load:Module", ptr %t16, i32 0, i32 6
  %t19 = load ptr, ptr %t18, !tbaa !29
  %t22 = getelementptr %"compiler/source:Source", ptr %t19, i32 0, i32 1
  %t23 = load { i64, ptr }, ptr %t22, !tbaa !27
  store { i64, ptr } %t23, ptr %l19, !tbaa !27
  %t24 = getelementptr %"compiler/source:Span", ptr %l2, i32 0, i32 0
  %t25 = load i32, ptr %t24, !tbaa !23
  %t27 = sext i32 %t25 to i64
  %t29 = add i64 %t27, 1
  store i64 %t29, ptr %l22, !tbaa !24
  %t30 = getelementptr %"compiler/source:Span", ptr %l2, i32 0, i32 1
  %t31 = load i32, ptr %t30, !tbaa !23
  %t33 = sext i32 %t31 to i64
  %t35 = sub i64 %t33, 1
  store i64 %t35, ptr %l25, !tbaa !24
  %t36 = load { i64, ptr }, ptr %l19, !tbaa !27
  %t37 = extractvalue { i64, ptr } %t36, 0
  store i64 %t37, ptr %l26, !tbaa !24
  %t38 = load i64, ptr %l22, !tbaa !24
  %t39 = icmp sge i64 %t38, 0
  br i1 %t39, label %bb5, label %bb6
bb5:
  %t41 = load i64, ptr %l22, !tbaa !24
  %t42 = load i64, ptr %l25, !tbaa !24
  %t43 = icmp sle i64 %t41, %t42
  br i1 %t43, label %bb7, label %bb8
bb6:
  call void @__olang_check_failed(ptr @olang_loc_c887c5acf0277416_b8456d2f32e25a62)
  unreachable
bb7:
  %t45 = load i64, ptr %l25, !tbaa !24
  %t46 = load i64, ptr %l26, !tbaa !24
  %t47 = icmp sle i64 %t45, %t46
  br i1 %t47, label %bb9, label %bb10
bb8:
  call void @__olang_check_failed(ptr @olang_loc_c887c5acf0277416_b8456d2f32e25a62)
  unreachable
bb9:
  %t49 = getelementptr { i64, ptr }, ptr %l19, i32 0, i32 1
  %t50 = load ptr, ptr %t49, !tbaa !27
  %t51 = load i64, ptr %l22, !tbaa !24
  %t52 = load i64, ptr %l25, !tbaa !24
  %t53 = getelementptr i8, ptr %t50, i64 %t51
  %t54 = sub i64 %t52, %t51
  %t55 = insertvalue { i64, ptr } undef, i64 %t54, 0
  %t56 = insertvalue { i64, ptr } %t55, ptr %t53, 1
  store { i64, ptr } %t56, ptr %l6, !tbaa !27
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d68, i32 0, i32 1) }, ptr %l31, !tbaa !27
  %t58 = load { i64, ptr }, ptr %l31, !tbaa !27
  store { i64, ptr } %t58, ptr %l32, !tbaa !27
  %t59 = load { i64, ptr }, ptr %l32, !tbaa !27
  %t60 = extractvalue { i64, ptr } %t59, 0
  store i64 %t60, ptr %l33, !tbaa !24
  %t61 = load i64, ptr %l33, !tbaa !24
  %t62 = mul i64 %t61, 1
  %t63 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t62)
  %t64 = insertvalue { i64, ptr } undef, i64 %t61, 0
  %t65 = insertvalue { i64, ptr } %t64, ptr %t63, 1
  store { i64, ptr } %t65, ptr %l34, !tbaa !27
  %t66 = getelementptr { i64, ptr }, ptr %l34, i32 0, i32 1
  %t67 = load ptr, ptr %t66, !tbaa !27
  %t68 = getelementptr { i64, ptr }, ptr %l32, i32 0, i32 1
  %t69 = load ptr, ptr %t68, !tbaa !27
  %t70 = load i64, ptr %l33, !tbaa !24
  %t71 = mul i64 %t70, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t67, ptr %t69, i64 %t71, i1 false)
  %t72 = load { i64, ptr }, ptr %l34, !tbaa !27
  store { i64, ptr } %t72, ptr %l7, !tbaa !27
  %t73 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t75 = call i1 @compiler_2fload_2eLinkIsFile(ptr %v0, { i64, ptr } %t73)
  store i1 %t75, ptr %l36
  br label %bb11
bb10:
  call void @__olang_check_failed(ptr @olang_loc_c887c5acf0277416_b8456d2f32e25a62)
  unreachable
bb11:
  %t76 = load i1, ptr %l36, !tbaa !21
  br i1 %t76, label %bb12, label %bb13
bb12:
  store %olang.scope zeroinitializer, ptr %s1
  %t77 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t79 = call i1 @std_2ffilepath_2eIsAbs(ptr %v0, { i64, ptr } %t77)
  store i1 %t79, ptr %l38
  br label %bb14
bb13:
  %t80 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t82 = call i1 @compiler_2fload_2eLinkName(ptr %v0, { i64, ptr } %t80)
  store i1 %t82, ptr %l55
  br label %bb23
bb14:
  %t83 = load i1, ptr %l38, !tbaa !21
  br i1 %t83, label %bb15, label %bb16
bb15:
  %t84 = load { i64, ptr }, ptr %l6, !tbaa !27
  store { i64, ptr } %t84, ptr %l39, !tbaa !27
  br label %bb19
bb16:
  %t86 = load ptr, ptr %l5, !tbaa !29
  %t88 = getelementptr %"compiler/load:Module", ptr %t86, i32 0, i32 1
  %t89 = load { i64, ptr }, ptr %t88, !tbaa !27
  %t91 = call { i64, ptr } @std_2ffilepath_2eDir(ptr %v0, ptr %s1, { i64, ptr } %t89)
  store { i64, ptr } %t91, ptr %l43
  br label %bb17
bb17:
  %t92 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t93 = load { i64, ptr }, ptr %l43, !tbaa !27
  %t94 = insertvalue [2 x { i64, ptr }] undef, { i64, ptr } %t93, 0
  %t96 = insertvalue [2 x { i64, ptr }] %t94, { i64, ptr } %t92, 1
  store [2 x { i64, ptr }] %t96, ptr %l8
  %t99 = insertvalue { i64, ptr } undef, i64 2, 0
  %t100 = insertvalue { i64, ptr } %t99, ptr %l8, 1
  %t102 = call { i64, ptr } @std_2ffilepath_2eJoin(ptr %s1, ptr %v0, { i64, ptr } %t100)
  store { i64, ptr } %t102, ptr %l48
  br label %bb18
bb18:
  %t103 = load { i64, ptr }, ptr %l48, !tbaa !27
  %t104 = extractvalue { i64, ptr } %t103, 0
  %t105 = extractvalue { i64, ptr } %t103, 1
  %t106 = mul i64 %t104, 1
  %t107 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t106)
  call void @llvm.memcpy.p0.p0.i64(ptr %t107, ptr %t105, i64 %t106, i1 false)
  %t108 = insertvalue { i64, ptr } undef, i64 %t104, 0
  %t109 = insertvalue { i64, ptr } %t108, ptr %t107, 1
  store { i64, ptr } %t109, ptr %l39, !tbaa !27
  br label %bb19
bb19:
  %t111 = load { i64, ptr }, ptr %l39, !tbaa !27
  %t112 = extractvalue { i64, ptr } %t111, 1
  %t113 = extractvalue { i64, ptr } %t111, 0
  %t114 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t113)
  call void @olang_textcopy(ptr %t114, ptr %t112, i64 %t113)
  %t115 = insertvalue { i64, ptr } undef, i64 %t113, 0
  %t116 = insertvalue { i64, ptr } %t115, ptr %t114, 1
  store { i64, ptr } %t116, ptr %l50, !tbaa !27
  %t117 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t118 = extractvalue { i64, ptr } %t117, 0
  %t119 = load { i64, ptr }, ptr %l50, !tbaa !27
  %t120 = extractvalue { i64, ptr } %t119, 0
  store i64 %t120, ptr %l52, !tbaa !24
  %t122 = load i64, ptr %l52, !tbaa !24
  %t123 = icmp eq i64 %t118, %t122
  br i1 %t123, label %bb20, label %bb21
bb20:
  %t125 = getelementptr { i64, ptr }, ptr %l7, i32 0, i32 1
  %t126 = load ptr, ptr %t125, !tbaa !27
  %t127 = getelementptr { i64, ptr }, ptr %l50, i32 0, i32 1
  %t128 = load ptr, ptr %t127, !tbaa !27
  %t129 = load i64, ptr %l52, !tbaa !24
  %t130 = mul i64 %t129, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t126, ptr %t128, i64 %t130, i1 false)
  br label %bb22
bb21:
  %t131 = load { i64, ptr }, ptr %l50, !tbaa !27
  store { i64, ptr } %t131, ptr %l7, !tbaa !27
  br label %bb22
bb22:
  call void @__olang_scope_close(ptr %s1)
  br label %bb33
bb23:
  %t132 = load i1, ptr %l55, !tbaa !21
  br i1 %t132, label %bb24, label %bb25
bb24:
  %t133 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t134 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d69, i32 0, i32 1) }, 1
  %t135 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d69, i32 0, i32 1) }, 0
  %t137 = extractvalue { i64, ptr } %t133, 1
  %t138 = extractvalue { i64, ptr } %t133, 0
  %t139 = add i64 %t135, %t138
  %t140 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t139)
  call void @olang_textcopy(ptr %t140, ptr %t134, i64 %t135)
  %t141 = getelementptr i8, ptr %t140, i64 %t135
  call void @olang_textcopy(ptr %t141, ptr %t137, i64 %t138)
  %t142 = insertvalue { i64, ptr } undef, i64 %t139, 0
  %t143 = insertvalue { i64, ptr } %t142, ptr %t140, 1
  store { i64, ptr } %t143, ptr %l57, !tbaa !27
  %t144 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t145 = extractvalue { i64, ptr } %t144, 0
  %t146 = load { i64, ptr }, ptr %l57, !tbaa !27
  %t147 = extractvalue { i64, ptr } %t146, 0
  store i64 %t147, ptr %l59, !tbaa !24
  %t149 = load i64, ptr %l59, !tbaa !24
  %t150 = icmp eq i64 %t145, %t149
  br i1 %t150, label %bb26, label %bb27
bb25:
  store %olang.scope zeroinitializer, ptr %s6
  %t152 = load ptr, ptr %l0, !tbaa !29
  %t154 = getelementptr %"compiler/load:Loader", ptr %t152, i32 0, i32 4
  %t155 = load ptr, ptr %t154, !tbaa !29
  store ptr %t155, ptr %l62, !tbaa !29
  %t156 = load ptr, ptr %l5, !tbaa !29
  %t158 = getelementptr %"compiler/load:Module", ptr %t156, i32 0, i32 4
  %t159 = load i64, ptr %t158, !tbaa !24
  %t160 = getelementptr %"compiler/source:Span", ptr %l2, i32 0, i32 0
  %t161 = load i32, ptr %t160, !tbaa !23
  %t163 = sext i32 %t161 to i64
  %t164 = getelementptr %"compiler/source:Span", ptr %l2, i32 0, i32 1
  %t165 = load i32, ptr %t164, !tbaa !23
  %t167 = sext i32 %t165 to i64
  store { i64, [3 x i64] } zeroinitializer, ptr %t168
  %t169 = getelementptr { i64, [3 x i64] }, ptr %t168, i32 0, i32 0
  store i64 3, ptr %t169
  %t171 = insertvalue { i64, i64, i64 } undef, i64 %t159, 0
  %t173 = insertvalue { i64, i64, i64 } %t171, i64 %t163, 1
  %t175 = insertvalue { i64, i64, i64 } %t173, i64 %t167, 2
  %t176 = getelementptr { i64, [3 x i64] }, ptr %t168, i32 0, i32 1
  store { i64, i64, i64 } %t175, ptr %t176
  %t177 = load { i64, [3 x i64] }, ptr %t168
  store { i64, [3 x i64] } %t177, ptr %l69
  %t178 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t180 = call { i64, ptr } @compiler_2fmsgs_2eTok(ptr %v0, ptr %s6, { i64, ptr } %t178)
  store { i64, ptr } %t180, ptr %l71
  br label %bb29
bb26:
  %t181 = getelementptr { i64, ptr }, ptr %l7, i32 0, i32 1
  %t182 = load ptr, ptr %t181, !tbaa !27
  %t183 = getelementptr { i64, ptr }, ptr %l57, i32 0, i32 1
  %t184 = load ptr, ptr %t183, !tbaa !27
  %t185 = load i64, ptr %l59, !tbaa !24
  %t186 = mul i64 %t185, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t182, ptr %t184, i64 %t186, i1 false)
  br label %bb28
bb27:
  %t187 = load { i64, ptr }, ptr %l57, !tbaa !27
  store { i64, ptr } %t187, ptr %l7, !tbaa !27
  br label %bb28
bb28:
  br label %bb32
bb29:
  %t188 = load { i64, ptr }, ptr %l71, !tbaa !27
  %t189 = extractvalue { i64, ptr } %t188, 0
  %t190 = extractvalue { i64, ptr } %t188, 1
  %t191 = mul i64 %t189, 1
  %t192 = call ptr @__olang_scope_alloc(ptr %s6, i64 %t191)
  call void @llvm.memcpy.p0.p0.i64(ptr %t192, ptr %t190, i64 %t191, i1 false)
  %t193 = insertvalue { i64, ptr } undef, i64 %t189, 0
  %t194 = insertvalue { i64, ptr } %t193, ptr %t192, 1
  %t196 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eLinkName(ptr %s6, ptr %s6, { i64, ptr } %t194)
  store %"compiler/diagmsg:Msg" %t196, ptr %l73
  br label %bb30
bb30:
  %t197 = load ptr, ptr %l62, !tbaa !29
  %t198 = load { i64, [3 x i64] }, ptr %l69
  %t199 = load %"compiler/diagmsg:Msg", ptr %l73
  %t200 = call i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eError(ptr %v0, ptr %s6, ptr %t197, { i64, [3 x i64] } %t198, %"compiler/diagmsg:Msg" %t199)
  store i64 %t200, ptr %l74
  br label %bb31
bb31:
  call void @__olang_scope_close(ptr %s6)
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb32:
  br label %bb33
bb33:
  %t201 = load ptr, ptr %l4, !tbaa !29
  %t202 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t205 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_H6b5ccacad8db807339a3579aa8c82ff8(ptr %v2, ptr %s0, ptr %t201, { i64, ptr } %t202)
  store i1 %t205, ptr %l77
  br label %bb34
bb34:
  %t206 = load i1, ptr %l77, !tbaa !21
  br i1 %t206, label %bb35, label %bb36
bb35:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb36:
  br label %bb37
bb37:
  %t207 = load ptr, ptr %l4, !tbaa !29
  store ptr %t207, ptr %l78, !tbaa !29
  %t208 = ptrtoint ptr %v2 to i64
  store i64 %t208, ptr %l79, !tbaa !24
  %t209 = load i1, ptr @olang_2esole_2estd_2fprelude_2fmap_3aMapEntry_3cstd_2fprelude_2ftext_3aString_26_2c_20Bool_3e_2e0
  br i1 %t209, label %bb38, label %bb39
bb38:
  %t211 = call ptr @__olang_region_make(ptr %v2)
  %t212 = ptrtoint ptr %t211 to i64
  store i64 %t212, ptr %l79, !tbaa !24
  br label %bb39
bb39:
  %t213 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t215 = extractvalue { i64, ptr } %t213, 1
  %t216 = extractvalue { i64, ptr } %t213, 0
  %t217 = load i64, ptr %l79
  %t218 = inttoptr i64 %t217 to ptr
  %t219 = call ptr @__olang_scope_alloc(ptr %t218, i64 %t216)
  call void @olang_textcopy(ptr %t219, ptr %t215, i64 %t216)
  %t220 = insertvalue { i64, ptr } undef, i64 %t216, 0
  %t221 = insertvalue { i64, ptr } %t220, ptr %t219, 1
  %t223 = load i64, ptr %l79
  %t224 = inttoptr i64 %t223 to ptr
  %t225 = extractvalue { i64, ptr } %t221, 0
  %t226 = extractvalue { i64, ptr } %t221, 1
  %t227 = mul i64 %t225, 1
  %t228 = call ptr @__olang_scope_alloc(ptr %t224, i64 %t227)
  call void @llvm.memcpy.p0.p0.i64(ptr %t228, ptr %t226, i64 %t227, i1 false)
  %t229 = insertvalue { i64, ptr } undef, i64 %t225, 0
  %t230 = insertvalue { i64, ptr } %t229, ptr %t228, 1
  %t231 = load ptr, ptr %l78, !tbaa !29
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_H2b85ceff512af6e6ca26c554a1c16247(ptr %v2, ptr %v2, ptr %t231, { i64, ptr } %t230, i1 true)
  br label %bb40
bb40:
  store ptr %a3, ptr %l84, !tbaa !29
  %t234 = ptrtoint ptr %v1 to i64
  store i64 %t234, ptr %l85, !tbaa !24
  %t235 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1
  br i1 %t235, label %bb41, label %bb42
bb41:
  %t237 = call ptr @__olang_region_make(ptr %v1)
  %t238 = ptrtoint ptr %t237 to i64
  store i64 %t238, ptr %l85, !tbaa !24
  br label %bb42
bb42:
  %t239 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t241 = extractvalue { i64, ptr } %t239, 1
  %t242 = extractvalue { i64, ptr } %t239, 0
  %t243 = load i64, ptr %l85
  %t244 = inttoptr i64 %t243 to ptr
  %t245 = call ptr @__olang_scope_alloc(ptr %t244, i64 %t242)
  call void @olang_textcopy(ptr %t245, ptr %t241, i64 %t242)
  %t246 = insertvalue { i64, ptr } undef, i64 %t242, 0
  %t247 = insertvalue { i64, ptr } %t246, ptr %t245, 1
  %t249 = load i64, ptr %l85
  %t250 = inttoptr i64 %t249 to ptr
  %t251 = extractvalue { i64, ptr } %t247, 0
  %t252 = extractvalue { i64, ptr } %t247, 1
  %t253 = mul i64 %t251, 1
  %t254 = call ptr @__olang_scope_alloc(ptr %t250, i64 %t253)
  call void @llvm.memcpy.p0.p0.i64(ptr %t254, ptr %t252, i64 %t253, i1 false)
  %t255 = insertvalue { i64, ptr } undef, i64 %t251, 0
  %t256 = insertvalue { i64, ptr } %t255, ptr %t254, 1
  %t257 = load ptr, ptr %l84, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v1, ptr %v1, ptr %t257, { i64, ptr } %t256)
  br label %bb43
bb43:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local { i64, [3 x i64] } @compiler_2fload_2ecompiler_2fload_3aLoader_2eat(ptr %v0, ptr %v1, ptr %a0, ptr %a1, %"compiler/source:Span" %a2) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca %"compiler/source:Span"
  %rv = alloca { i64, [3 x i64] }
  %t13 = alloca { i64, [3 x i64] }, align 8
  store ptr %a0, ptr %l0
  store %"compiler/source:Span" %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t3 = getelementptr %"compiler/load:Module", ptr %a1, i32 0, i32 4
  %t4 = load i64, ptr %t3, !tbaa !24
  %t5 = getelementptr %"compiler/source:Span", ptr %l2, i32 0, i32 0
  %t6 = load i32, ptr %t5, !tbaa !23
  %t8 = sext i32 %t6 to i64
  %t9 = getelementptr %"compiler/source:Span", ptr %l2, i32 0, i32 1
  %t10 = load i32, ptr %t9, !tbaa !23
  %t12 = sext i32 %t10 to i64
  store { i64, [3 x i64] } zeroinitializer, ptr %t13
  %t14 = getelementptr { i64, [3 x i64] }, ptr %t13, i32 0, i32 0
  store i64 3, ptr %t14
  %t16 = insertvalue { i64, i64, i64 } undef, i64 %t4, 0
  %t18 = insertvalue { i64, i64, i64 } %t16, i64 %t8, 1
  %t20 = insertvalue { i64, i64, i64 } %t18, i64 %t12, 2
  %t21 = getelementptr { i64, [3 x i64] }, ptr %t13, i32 0, i32 1
  store { i64, i64, i64 } %t20, ptr %t21
  %t22 = load { i64, [3 x i64] }, ptr %t13
  store { i64, [3 x i64] } %t22, ptr %rv
  br label %ret
ret:
  %rr = load { i64, [3 x i64] }, ptr %rv
  ret { i64, [3 x i64] } %rr
}

define dso_local void @compiler_2fload_2ecompiler_2fload_3aLoader_2ebranchGroup(ptr %v0, ptr %v1, ptr %a0, i64 %a1, ptr %a2, i64 %a3, i64 %a4) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca i64
  store ptr %a0, ptr %l0
  store ptr %a2, ptr %l2
  store i64 %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load i64, ptr %l3, !tbaa !24
  %t2 = load i64, ptr @G_2ecompiler_2fload_2ePending, !tbaa !24
  %t5 = icmp eq i64 %t1, %t2
  br i1 %t5, label %bb1, label %bb2
bb1:
  br label %ret
bb2:
  br label %bb3
bb3:
  %t7 = load i64, ptr %l3, !tbaa !24
  %t11 = icmp eq i64 %t7, %a4
  br i1 %t11, label %bb4, label %bb5
bb4:
  %t13 = load ptr, ptr %l0, !tbaa !29
  %t15 = getelementptr %"compiler/load:Loader", ptr %t13, i32 0, i32 4
  %t16 = load ptr, ptr %t15, !tbaa !29
  %t17 = load ptr, ptr %l2, !tbaa !29
  %t19 = getelementptr %"compiler/ast:TopBranch", ptr %t17, i32 0, i32 2
  %t20 = load i64, ptr %t19, !tbaa !24
  call void @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eChoose(ptr %v0, ptr %t16, i64 %t20)
  br label %bb6
bb5:
  %t23 = load ptr, ptr %l0, !tbaa !29
  %t25 = getelementptr %"compiler/load:Loader", ptr %t23, i32 0, i32 4
  %t26 = load ptr, ptr %t25, !tbaa !29
  %t27 = load ptr, ptr %l2, !tbaa !29
  %t29 = getelementptr %"compiler/ast:TopBranch", ptr %t27, i32 0, i32 2
  %t30 = load i64, ptr %t29, !tbaa !24
  call void @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eDrop(ptr %v0, ptr %t26, i64 %t30)
  br label %bb11
bb6:
  %t33 = load ptr, ptr %l2, !tbaa !29
  %t35 = getelementptr %"compiler/ast:TopBranch", ptr %t33, i32 0, i32 1
  %t36 = load { i64, ptr }, ptr %t35, !tbaa !27
  %t38 = extractvalue { i64, ptr } %t36, 0
  %t40 = icmp sgt i64 %t38, 0
  br i1 %t40, label %bb7, label %bb8
bb7:
  %t42 = load ptr, ptr %l0, !tbaa !29
  %t44 = load ptr, ptr %l2, !tbaa !29
  %t46 = getelementptr %"compiler/ast:TopBranch", ptr %t44, i32 0, i32 1
  %t47 = load { i64, ptr }, ptr %t46, !tbaa !27
  call void @compiler_2fload_2ecompiler_2fload_3aLoader_2egroups(ptr %v0, ptr %v1, ptr %t42, i64 %a1, { i64, ptr } %t47)
  br label %bb9
bb8:
  br label %bb10
bb9:
  br label %bb10
bb10:
  br label %bb12
bb11:
  br label %bb12
bb12:
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2fload_2ecompiler_2fload_3aLoader_2echainGroups(ptr %v0, ptr %v1, ptr %a0, i64 %a1, ptr %a2, i64 %a3, i64 %a4) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca ptr
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca ptr
  %l6 = alloca i64
  %l18 = alloca ptr
  %l19 = alloca i64
  %l32 = alloca ptr
  %l33 = alloca i64
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  store ptr %a2, ptr %l2
  store i64 %a3, ptr %l3
  store i64 %a4, ptr %l4
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1, ptr %l5, !tbaa !29
  %t2 = load i64, ptr %l1, !tbaa !24
  store i64 %t2, ptr %l6, !tbaa !24
  %t3 = load ptr, ptr %l2, !tbaa !29
  %t5 = getelementptr %"compiler/ast:TopIf", ptr %t3, i32 0, i32 1
  %t6 = load ptr, ptr %t5, !tbaa !29
  %t8 = icmp eq ptr %t6, null
  br i1 %t8, label %bb1, label %bb2
bb1:
  call void @__olang_check_failed(ptr @olang_loc_c7262fe51519f763_af68021c51d3e65f)
  unreachable
bb2:
  br label %bb3
bb3:
  %t10 = load ptr, ptr %l2, !tbaa !29
  %t12 = getelementptr %"compiler/ast:TopIf", ptr %t10, i32 0, i32 1
  %t13 = load ptr, ptr %t12, !tbaa !29
  %t14 = load i64, ptr %l3, !tbaa !24
  %t15 = load i64, ptr %l4, !tbaa !24
  %t16 = load ptr, ptr %l5, !tbaa !29
  %t17 = load i64, ptr %l6, !tbaa !24
  call void @compiler_2fload_2ecompiler_2fload_3aLoader_2ebranchGroup(ptr %v0, ptr %v1, ptr %t16, i64 %t17, ptr %t13, i64 %t14, i64 %t15)
  br label %bb4
bb4:
  %t21 = load ptr, ptr %l2, !tbaa !29
  %t23 = getelementptr %"compiler/ast:TopIf", ptr %t21, i32 0, i32 2
  %t24 = load ptr, ptr %t23, !tbaa !29
  %t26 = icmp eq ptr %t24, null
  %t28 = xor i1 %t26, true
  br i1 %t28, label %bb5, label %bb6
bb5:
  %t30 = load ptr, ptr %l0, !tbaa !29
  store ptr %t30, ptr %l18, !tbaa !29
  %t31 = load i64, ptr %l1, !tbaa !24
  store i64 %t31, ptr %l19, !tbaa !24
  %t32 = load ptr, ptr %l2, !tbaa !29
  %t34 = getelementptr %"compiler/ast:TopIf", ptr %t32, i32 0, i32 2
  %t35 = load ptr, ptr %t34, !tbaa !29
  %t37 = icmp eq ptr %t35, null
  br i1 %t37, label %bb7, label %bb8
bb6:
  br label %bb11
bb7:
  call void @__olang_check_failed(ptr @olang_loc_5374637873936654_bf4b9d38f6a4cac0)
  unreachable
bb8:
  br label %bb9
bb9:
  %t39 = load ptr, ptr %l2, !tbaa !29
  %t41 = getelementptr %"compiler/ast:TopIf", ptr %t39, i32 0, i32 2
  %t42 = load ptr, ptr %t41, !tbaa !29
  %t43 = load i64, ptr %l3, !tbaa !24
  %t44 = load i64, ptr %l4, !tbaa !24
  %t46 = add i64 %t44, 1
  %t47 = load ptr, ptr %l18, !tbaa !29
  %t48 = load i64, ptr %l19, !tbaa !24
  call void @compiler_2fload_2ecompiler_2fload_3aLoader_2echainGroups(ptr %v0, ptr %v1, ptr %t47, i64 %t48, ptr %t42, i64 %t43, i64 %t46)
  br label %bb10
bb10:
  br label %bb11
bb11:
  %t52 = load ptr, ptr %l2, !tbaa !29
  %t54 = getelementptr %"compiler/ast:TopIf", ptr %t52, i32 0, i32 3
  %t55 = load ptr, ptr %t54, !tbaa !29
  %t57 = icmp eq ptr %t55, null
  %t59 = xor i1 %t57, true
  br i1 %t59, label %bb12, label %bb13
bb12:
  %t61 = load ptr, ptr %l0, !tbaa !29
  store ptr %t61, ptr %l32, !tbaa !29
  %t62 = load i64, ptr %l1, !tbaa !24
  store i64 %t62, ptr %l33, !tbaa !24
  %t63 = load ptr, ptr %l2, !tbaa !29
  %t65 = getelementptr %"compiler/ast:TopIf", ptr %t63, i32 0, i32 3
  %t66 = load ptr, ptr %t65, !tbaa !29
  %t68 = icmp eq ptr %t66, null
  br i1 %t68, label %bb14, label %bb15
bb13:
  br label %bb18
bb14:
  call void @__olang_check_failed(ptr @olang_loc_a9d5346f51b5ce49_2177b031869164d5)
  unreachable
bb15:
  br label %bb16
bb16:
  %t70 = load ptr, ptr %l2, !tbaa !29
  %t72 = getelementptr %"compiler/ast:TopIf", ptr %t70, i32 0, i32 3
  %t73 = load ptr, ptr %t72, !tbaa !29
  %t74 = load i64, ptr %l3, !tbaa !24
  %t75 = load i64, ptr %l4, !tbaa !24
  %t77 = add i64 %t75, 1
  %t78 = load ptr, ptr %l32, !tbaa !29
  %t79 = load i64, ptr %l33, !tbaa !24
  call void @compiler_2fload_2ecompiler_2fload_3aLoader_2ebranchGroup(ptr %v0, ptr %v1, ptr %t78, i64 %t79, ptr %t73, i64 %t74, i64 %t77)
  br label %bb17
bb17:
  br label %bb18
bb18:
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2fload_2ecompiler_2fload_3aLoader_2echeckReach(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca i64
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l8 = alloca ptr
  %l9 = alloca ptr
  %l10 = alloca i64
  %l11 = alloca %"compiler/load:Import"
  %l12 = alloca ptr
  %l13 = alloca i64
  %l14 = alloca i64
  %l18 = alloca i64
  %l22 = alloca i64
  %l25 = alloca i64
  %l43 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l47 = alloca ptr
  %l50 = alloca i64
  %l52 = alloca i64
  %l57 = alloca %"compiler/load:Import"
  %l65 = alloca ptr
  %l68 = alloca i64
  %l70 = alloca i64
  %l75 = alloca i64
  %l79 = alloca i1
  %l81 = alloca ptr
  %l85 = alloca { i64, [3 x i64] }
  %l87 = alloca { i64, ptr }
  %l89 = alloca %"compiler/diagmsg:Msg"
  %l90 = alloca i64
  %s2 = alloca %olang.scope
  %s8 = alloca %olang.scope
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store i64 0, ptr %l1, !tbaa !24
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/load:Loader", ptr %t1, i32 0, i32 10
  %t5 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_Hb2d19b6b5ea5ab5a85c5720545345bd4(ptr %v0, ptr %t3)
  store i64 %t5, ptr %l18
  br label %bb1
bb1:
  %t6 = load i64, ptr %l18, !tbaa !24
  store i64 %t6, ptr %l2, !tbaa !24
  store i64 1, ptr %l3, !tbaa !24
  %t7 = load i64, ptr %l2, !tbaa !24
  %t8 = load i64, ptr %l1, !tbaa !24
  %t11 = icmp sgt i64 %t7, %t8
  br i1 %t11, label %bb2, label %bb3
bb2:
  %t13 = load i64, ptr %l3, !tbaa !24
  %t15 = icmp sgt i64 %t13, 0
  br i1 %t15, label %bb4, label %bb5
bb3:
  store i64 0, ptr %l22, !tbaa !24
  br label %bb7
bb4:
  %t17 = load i64, ptr %l2, !tbaa !24
  %t18 = load i64, ptr %l1, !tbaa !24
  %t21 = sub i64 %t17, %t18
  %t22 = load i64, ptr %l3, !tbaa !24
  %t25 = add i64 %t21, %t22
  %t27 = sub i64 %t25, 1
  %t28 = load i64, ptr %l3, !tbaa !24
  %t31 = sdiv i64 %t27, %t28
  store i64 %t31, ptr %l25, !tbaa !24
  br label %bb6
bb5:
  store i64 0, ptr %l25, !tbaa !24
  br label %bb6
bb6:
  %t33 = load i64, ptr %l25, !tbaa !24
  store i64 %t33, ptr %l22, !tbaa !24
  br label %bb7
bb7:
  %t34 = load i64, ptr %l22, !tbaa !24
  store i64 %t34, ptr %l4, !tbaa !24
  store i64 0, ptr %l5, !tbaa !24
  br label %bb8
bb8:
  store %olang.scope zeroinitializer, ptr %s2
  %t35 = load i64, ptr %l5, !tbaa !24
  %t36 = load i64, ptr %l4, !tbaa !24
  %t39 = icmp slt i64 %t35, %t36
  %t41 = xor i1 %t39, true
  br i1 %t41, label %bb9, label %bb10
bb9:
  call void @__olang_scope_close(ptr %s2)
  br label %bb45
bb10:
  br label %bb11
bb11:
  %t43 = load i64, ptr %l1, !tbaa !24
  %t44 = load i64, ptr %l5, !tbaa !24
  %t45 = load i64, ptr %l3, !tbaa !24
  %t48 = mul i64 %t44, %t45
  %t51 = add i64 %t43, %t48
  store i64 %t51, ptr %l6, !tbaa !24
  %t53 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %s2, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t53, ptr %l43
  br label %bb12
bb12:
  %t54 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l43
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t54, ptr %l7
  %t55 = load ptr, ptr %l0, !tbaa !29
  %t57 = getelementptr %"compiler/load:Loader", ptr %t55, i32 0, i32 10
  %t58 = load i64, ptr %l6, !tbaa !24
  %t61 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H7bcf2aeb09afa796f4333e6ec8c3f63f(ptr %v0, ptr %v0, ptr %t57, i64 %t58)
  store ptr %t61, ptr %l47
  br label %bb13
bb13:
  %t62 = load ptr, ptr %l47, !tbaa !29
  store ptr %t62, ptr %l8, !tbaa !29
  %t63 = load ptr, ptr %l8, !tbaa !29
  %t65 = getelementptr %"compiler/load:Module", ptr %t63, i32 0, i32 11
  store ptr %t65, ptr %l9, !tbaa !29
  store i64 0, ptr %l10, !tbaa !24
  br label %bb14
bb14:
  %t67 = load i64, ptr %l10, !tbaa !24
  store i64 %t67, ptr %l50, !tbaa !24
  %t68 = load ptr, ptr %l9, !tbaa !29
  %t70 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fload_3aImport_3e_2eLen_3ccompiler_2fload_3aImport_3e(ptr %v0, ptr %t68)
  store i64 %t70, ptr %l52
  br label %bb15
bb15:
  %t71 = load i64, ptr %l50, !tbaa !24
  %t72 = load i64, ptr %l52, !tbaa !24
  %t73 = icmp slt i64 %t71, %t72
  %t75 = xor i1 %t73, true
  br i1 %t75, label %bb16, label %bb17
bb16:
  br label %bb43
bb17:
  br label %bb18
bb18:
  %t77 = load ptr, ptr %l9, !tbaa !29
  %t78 = load i64, ptr %l10, !tbaa !24
  %t81 = call %"compiler/load:Import" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fload_3aImport_3e_2eAt_3ccompiler_2fload_3aImport_3e(ptr %v0, ptr %v0, ptr %t77, i64 %t78)
  store %"compiler/load:Import" %t81, ptr %l57
  br label %bb19
bb19:
  %t82 = load %"compiler/load:Import", ptr %l57
  store %"compiler/load:Import" %t82, ptr %l11
  %t83 = getelementptr %"compiler/load:Import", ptr %l11, i32 0, i32 5
  %t84 = load i64, ptr %t83, !tbaa !24
  %t86 = icmp slt i64 %t84, 0
  br i1 %t86, label %bb20, label %bb21
bb20:
  br label %bb42
bb21:
  br label %bb22
bb22:
  %t88 = load ptr, ptr %l0, !tbaa !29
  %t89 = getelementptr %"compiler/load:Import", ptr %l11, i32 0, i32 5
  %t90 = load i64, ptr %t89, !tbaa !24
  call void @compiler_2fload_2ecompiler_2fload_3aLoader_2eclosure(ptr %v0, ptr %t88, i64 %t90)
  br label %bb23
bb23:
  %t93 = load ptr, ptr %l0, !tbaa !29
  %t95 = getelementptr %"compiler/load:Loader", ptr %t93, i32 0, i32 10
  %t96 = getelementptr %"compiler/load:Import", ptr %l11, i32 0, i32 5
  %t97 = load i64, ptr %t96, !tbaa !24
  %t100 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H7bcf2aeb09afa796f4333e6ec8c3f63f(ptr %v0, ptr %v0, ptr %t95, i64 %t97)
  store ptr %t100, ptr %l65
  br label %bb24
bb24:
  %t101 = load ptr, ptr %l65, !tbaa !29
  %t103 = getelementptr %"compiler/load:Module", ptr %t101, i32 0, i32 28
  store ptr %t103, ptr %l12, !tbaa !29
  store i64 0, ptr %l13, !tbaa !24
  br label %bb25
bb25:
  %t105 = load i64, ptr %l13, !tbaa !24
  store i64 %t105, ptr %l68, !tbaa !24
  %t106 = load ptr, ptr %l12, !tbaa !29
  %t108 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %t106)
  store i64 %t108, ptr %l70
  br label %bb26
bb26:
  %t109 = load i64, ptr %l68, !tbaa !24
  %t110 = load i64, ptr %l70, !tbaa !24
  %t111 = icmp slt i64 %t109, %t110
  %t113 = xor i1 %t111, true
  br i1 %t113, label %bb27, label %bb28
bb27:
  br label %bb41
bb28:
  br label %bb29
bb29:
  %t115 = load ptr, ptr %l12, !tbaa !29
  %t116 = load i64, ptr %l13, !tbaa !24
  %t119 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t115, i64 %t116)
  store i64 %t119, ptr %l75
  br label %bb30
bb30:
  %t120 = load i64, ptr %l75, !tbaa !24
  store i64 %t120, ptr %l14, !tbaa !24
  %t121 = load i64, ptr %l14, !tbaa !24
  %t126 = call i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eHas_3cI64_3e(ptr %s2, ptr %l7, i64 %t121)
  store i1 %t126, ptr %l79
  br label %bb31
bb31:
  %t127 = load i1, ptr %l79, !tbaa !21
  br i1 %t127, label %bb32, label %bb33
bb32:
  store %olang.scope zeroinitializer, ptr %s8
  %t128 = load ptr, ptr %l0, !tbaa !29
  %t130 = getelementptr %"compiler/load:Loader", ptr %t128, i32 0, i32 4
  %t131 = load ptr, ptr %t130, !tbaa !29
  store ptr %t131, ptr %l81, !tbaa !29
  %t132 = load ptr, ptr %l0, !tbaa !29
  %t133 = load ptr, ptr %l8, !tbaa !29
  %t134 = getelementptr %"compiler/load:Import", ptr %l11, i32 0, i32 1
  %t135 = load %"compiler/source:Span", ptr %t134
  %t139 = call { i64, [3 x i64] } @compiler_2fload_2ecompiler_2fload_3aLoader_2eat(ptr %v0, ptr %v0, ptr %t132, ptr %t133, %"compiler/source:Span" %t135)
  store { i64, [3 x i64] } %t139, ptr %l85
  br label %bb34
bb33:
  %t140 = load i64, ptr %l14, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %s2, ptr %l7, i64 %t140)
  br label %bb38
bb34:
  %t143 = getelementptr %"compiler/load:Import", ptr %l11, i32 0, i32 2
  %t144 = load { i64, ptr }, ptr %t143, !tbaa !27
  %t146 = call { i64, ptr } @compiler_2fmsgs_2eTok(ptr %v0, ptr %s8, { i64, ptr } %t144)
  store { i64, ptr } %t146, ptr %l87
  br label %bb35
bb35:
  %t147 = load { i64, ptr }, ptr %l87, !tbaa !27
  %t148 = extractvalue { i64, ptr } %t147, 0
  %t149 = extractvalue { i64, ptr } %t147, 1
  %t150 = mul i64 %t148, 1
  %t151 = call ptr @__olang_scope_alloc(ptr %s8, i64 %t150)
  call void @llvm.memcpy.p0.p0.i64(ptr %t151, ptr %t149, i64 %t150, i1 false)
  %t152 = insertvalue { i64, ptr } undef, i64 %t148, 0
  %t153 = insertvalue { i64, ptr } %t152, ptr %t151, 1
  %t155 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eImportReachedTwice(ptr %s8, ptr %s8, { i64, ptr } %t153)
  store %"compiler/diagmsg:Msg" %t155, ptr %l89
  br label %bb36
bb36:
  %t156 = load ptr, ptr %l81, !tbaa !29
  %t157 = load { i64, [3 x i64] }, ptr %l85
  %t158 = load %"compiler/diagmsg:Msg", ptr %l89
  %t159 = call i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eError(ptr %v0, ptr %s8, ptr %t156, { i64, [3 x i64] } %t157, %"compiler/diagmsg:Msg" %t158)
  store i64 %t159, ptr %l90
  br label %bb37
bb37:
  call void @__olang_scope_close(ptr %s8)
  br label %bb39
bb38:
  br label %bb39
bb39:
  br label %bb40
bb40:
  %t160 = load i64, ptr %l13, !tbaa !24
  %t162 = add i64 %t160, 1
  store i64 %t162, ptr %l13, !tbaa !24
  br label %bb25
bb41:
  br label %bb42
bb42:
  %t164 = load i64, ptr %l10, !tbaa !24
  %t166 = add i64 %t164, 1
  store i64 %t166, ptr %l10, !tbaa !24
  br label %bb14
bb43:
  call void @__olang_scope_close(ptr %s2)
  br label %bb44
bb44:
  %t168 = load i64, ptr %l5, !tbaa !24
  %t170 = add i64 %t168, 1
  store i64 %t170, ptr %l5, !tbaa !24
  br label %bb8
bb45:
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2fload_2ecompiler_2fload_3aLoader_2eclosure(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca ptr
  %l3 = alloca ptr
  %l4 = alloca i64
  %l5 = alloca %"compiler/load:Import"
  %l6 = alloca ptr
  %l7 = alloca i64
  %l8 = alloca i64
  %l13 = alloca ptr
  %l16 = alloca i1
  %l25 = alloca i64
  %l27 = alloca i64
  %l32 = alloca %"compiler/load:Import"
  %l35 = alloca i1
  %l37 = alloca i1
  %l42 = alloca ptr
  %l46 = alloca ptr
  %l50 = alloca { i64, [3 x i64] }
  %l52 = alloca { i64, ptr }
  %l54 = alloca %"compiler/diagmsg:Msg"
  %l55 = alloca i64
  %l61 = alloca ptr
  %l64 = alloca i64
  %l66 = alloca i64
  %l71 = alloca i64
  %l76 = alloca i1
  %s5 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/load:Loader", ptr %t1, i32 0, i32 10
  %t4 = load i64, ptr %l1, !tbaa !24
  %t7 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H7bcf2aeb09afa796f4333e6ec8c3f63f(ptr %v0, ptr %v0, ptr %t3, i64 %t4)
  store ptr %t7, ptr %l13
  br label %bb1
bb1:
  %t8 = load ptr, ptr %l13, !tbaa !29
  store ptr %t8, ptr %l2, !tbaa !29
  %t9 = load ptr, ptr %l2, !tbaa !29
  %t11 = getelementptr %"compiler/load:Module", ptr %t9, i32 0, i32 26
  %t12 = load i1, ptr %t11, !tbaa !21
  br i1 %t12, label %bb2, label %bb3
bb2:
  store i1 true, ptr %l16, !tbaa !21
  br label %bb4
bb3:
  %t14 = load ptr, ptr %l2, !tbaa !29
  %t16 = getelementptr %"compiler/load:Module", ptr %t14, i32 0, i32 27
  %t17 = load i1, ptr %t16, !tbaa !21
  store i1 %t17, ptr %l16, !tbaa !21
  br label %bb4
bb4:
  %t19 = load i1, ptr %l16, !tbaa !21
  br i1 %t19, label %bb5, label %bb6
bb5:
  br label %ret
bb6:
  br label %bb7
bb7:
  %t20 = load ptr, ptr %l2, !tbaa !29
  %t22 = getelementptr %"compiler/load:Module", ptr %t20, i32 0, i32 27
  store i1 true, ptr %t22, !tbaa !21
  %t23 = load ptr, ptr %l2, !tbaa !29
  %t25 = getelementptr %"compiler/load:Module", ptr %t23, i32 0, i32 28
  %t26 = load i64, ptr %l1, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %t25, i64 %t26)
  br label %bb8
bb8:
  %t29 = load ptr, ptr %l2, !tbaa !29
  %t31 = getelementptr %"compiler/load:Module", ptr %t29, i32 0, i32 11
  store ptr %t31, ptr %l3, !tbaa !29
  store i64 0, ptr %l4, !tbaa !24
  br label %bb9
bb9:
  %t33 = load i64, ptr %l4, !tbaa !24
  store i64 %t33, ptr %l25, !tbaa !24
  %t34 = load ptr, ptr %l3, !tbaa !29
  %t36 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fload_3aImport_3e_2eLen_3ccompiler_2fload_3aImport_3e(ptr %v0, ptr %t34)
  store i64 %t36, ptr %l27
  br label %bb10
bb10:
  %t37 = load i64, ptr %l25, !tbaa !24
  %t38 = load i64, ptr %l27, !tbaa !24
  %t39 = icmp slt i64 %t37, %t38
  %t41 = xor i1 %t39, true
  br i1 %t41, label %bb11, label %bb12
bb11:
  br label %bb46
bb12:
  br label %bb13
bb13:
  %t43 = load ptr, ptr %l3, !tbaa !29
  %t44 = load i64, ptr %l4, !tbaa !24
  %t47 = call %"compiler/load:Import" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fload_3aImport_3e_2eAt_3ccompiler_2fload_3aImport_3e(ptr %v0, ptr %v0, ptr %t43, i64 %t44)
  store %"compiler/load:Import" %t47, ptr %l32
  br label %bb14
bb14:
  %t48 = load %"compiler/load:Import", ptr %l32
  store %"compiler/load:Import" %t48, ptr %l5
  %t49 = getelementptr %"compiler/load:Import", ptr %l5, i32 0, i32 5
  %t50 = load i64, ptr %t49, !tbaa !24
  %t52 = icmp slt i64 %t50, 0
  br i1 %t52, label %bb15, label %bb16
bb15:
  store i1 true, ptr %l35, !tbaa !21
  br label %bb18
bb16:
  %t54 = getelementptr %"compiler/load:Import", ptr %l5, i32 0, i32 2
  %t55 = load { i64, ptr }, ptr %t54, !tbaa !27
  %t57 = call i1 @compiler_2fload_2ePublic(ptr %v0, { i64, ptr } %t55)
  store i1 %t57, ptr %l37
  br label %bb17
bb17:
  %t58 = load i1, ptr %l37, !tbaa !21
  %t59 = xor i1 %t58, true
  store i1 %t59, ptr %l35, !tbaa !21
  br label %bb18
bb18:
  %t61 = load i1, ptr %l35, !tbaa !21
  br i1 %t61, label %bb19, label %bb20
bb19:
  br label %bb45
bb20:
  br label %bb21
bb21:
  %t62 = load ptr, ptr %l0, !tbaa !29
  %t64 = getelementptr %"compiler/load:Loader", ptr %t62, i32 0, i32 10
  %t65 = getelementptr %"compiler/load:Import", ptr %l5, i32 0, i32 5
  %t66 = load i64, ptr %t65, !tbaa !24
  %t69 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H7bcf2aeb09afa796f4333e6ec8c3f63f(ptr %v0, ptr %v0, ptr %t64, i64 %t66)
  store ptr %t69, ptr %l42
  br label %bb22
bb22:
  %t70 = load ptr, ptr %l42, !tbaa !29
  %t72 = getelementptr %"compiler/load:Module", ptr %t70, i32 0, i32 27
  %t73 = load i1, ptr %t72, !tbaa !21
  br i1 %t73, label %bb23, label %bb24
bb23:
  store %olang.scope zeroinitializer, ptr %s5
  %t75 = load ptr, ptr %l0, !tbaa !29
  %t77 = getelementptr %"compiler/load:Loader", ptr %t75, i32 0, i32 4
  %t78 = load ptr, ptr %t77, !tbaa !29
  store ptr %t78, ptr %l46, !tbaa !29
  %t79 = load ptr, ptr %l0, !tbaa !29
  %t80 = load ptr, ptr %l2, !tbaa !29
  %t81 = getelementptr %"compiler/load:Import", ptr %l5, i32 0, i32 1
  %t82 = load %"compiler/source:Span", ptr %t81
  %t86 = call { i64, [3 x i64] } @compiler_2fload_2ecompiler_2fload_3aLoader_2eat(ptr %v0, ptr %v0, ptr %t79, ptr %t80, %"compiler/source:Span" %t82)
  store { i64, [3 x i64] } %t86, ptr %l50
  br label %bb25
bb24:
  br label %bb29
bb25:
  %t87 = getelementptr %"compiler/load:Import", ptr %l5, i32 0, i32 2
  %t88 = load { i64, ptr }, ptr %t87, !tbaa !27
  %t90 = call { i64, ptr } @compiler_2fmsgs_2eTok(ptr %v0, ptr %s5, { i64, ptr } %t88)
  store { i64, ptr } %t90, ptr %l52
  br label %bb26
bb26:
  %t91 = load { i64, ptr }, ptr %l52, !tbaa !27
  %t92 = extractvalue { i64, ptr } %t91, 0
  %t93 = extractvalue { i64, ptr } %t91, 1
  %t94 = mul i64 %t92, 1
  %t95 = call ptr @__olang_scope_alloc(ptr %s5, i64 %t94)
  call void @llvm.memcpy.p0.p0.i64(ptr %t95, ptr %t93, i64 %t94, i1 false)
  %t96 = insertvalue { i64, ptr } undef, i64 %t92, 0
  %t97 = insertvalue { i64, ptr } %t96, ptr %t95, 1
  %t99 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eReexportCycle(ptr %s5, ptr %s5, { i64, ptr } %t97)
  store %"compiler/diagmsg:Msg" %t99, ptr %l54
  br label %bb27
bb27:
  %t100 = load ptr, ptr %l46, !tbaa !29
  %t101 = load { i64, [3 x i64] }, ptr %l50
  %t102 = load %"compiler/diagmsg:Msg", ptr %l54
  %t103 = call i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eError(ptr %v0, ptr %s5, ptr %t100, { i64, [3 x i64] } %t101, %"compiler/diagmsg:Msg" %t102)
  store i64 %t103, ptr %l55
  br label %bb28
bb28:
  call void @__olang_scope_close(ptr %s5)
  br label %bb45
bb29:
  %t104 = load ptr, ptr %l0, !tbaa !29
  %t105 = getelementptr %"compiler/load:Import", ptr %l5, i32 0, i32 5
  %t106 = load i64, ptr %t105, !tbaa !24
  call void @compiler_2fload_2ecompiler_2fload_3aLoader_2eclosure(ptr %v0, ptr %t104, i64 %t106)
  br label %bb30
bb30:
  %t109 = load ptr, ptr %l0, !tbaa !29
  %t111 = getelementptr %"compiler/load:Loader", ptr %t109, i32 0, i32 10
  %t112 = getelementptr %"compiler/load:Import", ptr %l5, i32 0, i32 5
  %t113 = load i64, ptr %t112, !tbaa !24
  %t116 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H7bcf2aeb09afa796f4333e6ec8c3f63f(ptr %v0, ptr %v0, ptr %t111, i64 %t113)
  store ptr %t116, ptr %l61
  br label %bb31
bb31:
  %t117 = load ptr, ptr %l61, !tbaa !29
  %t119 = getelementptr %"compiler/load:Module", ptr %t117, i32 0, i32 28
  store ptr %t119, ptr %l6, !tbaa !29
  store i64 0, ptr %l7, !tbaa !24
  br label %bb32
bb32:
  %t121 = load i64, ptr %l7, !tbaa !24
  store i64 %t121, ptr %l64, !tbaa !24
  %t122 = load ptr, ptr %l6, !tbaa !29
  %t124 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %t122)
  store i64 %t124, ptr %l66
  br label %bb33
bb33:
  %t125 = load i64, ptr %l64, !tbaa !24
  %t126 = load i64, ptr %l66, !tbaa !24
  %t127 = icmp slt i64 %t125, %t126
  %t129 = xor i1 %t127, true
  br i1 %t129, label %bb34, label %bb35
bb34:
  br label %bb44
bb35:
  br label %bb36
bb36:
  %t131 = load ptr, ptr %l6, !tbaa !29
  %t132 = load i64, ptr %l7, !tbaa !24
  %t135 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t131, i64 %t132)
  store i64 %t135, ptr %l71
  br label %bb37
bb37:
  %t136 = load i64, ptr %l71, !tbaa !24
  store i64 %t136, ptr %l8, !tbaa !24
  %t137 = load i64, ptr %l8, !tbaa !24
  %t139 = load ptr, ptr %l2, !tbaa !29
  %t141 = getelementptr %"compiler/load:Module", ptr %t139, i32 0, i32 28
  %t145 = call i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eHas_3cI64_3e(ptr %v0, ptr %t141, i64 %t137)
  store i1 %t145, ptr %l76
  br label %bb38
bb38:
  %t146 = load i1, ptr %l76, !tbaa !21
  %t147 = xor i1 %t146, true
  br i1 %t147, label %bb39, label %bb40
bb39:
  %t149 = load ptr, ptr %l2, !tbaa !29
  %t151 = getelementptr %"compiler/load:Module", ptr %t149, i32 0, i32 28
  %t152 = load i64, ptr %l8, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %t151, i64 %t152)
  br label %bb41
bb40:
  br label %bb42
bb41:
  br label %bb42
bb42:
  br label %bb43
bb43:
  %t155 = load i64, ptr %l7, !tbaa !24
  %t157 = add i64 %t155, 1
  store i64 %t157, ptr %l7, !tbaa !24
  br label %bb32
bb44:
  br label %bb45
bb45:
  %t159 = load i64, ptr %l4, !tbaa !24
  %t161 = add i64 %t159, 1
  store i64 %t161, ptr %l4, !tbaa !24
  br label %bb9
bb46:
  %t163 = load ptr, ptr %l2, !tbaa !29
  %t165 = getelementptr %"compiler/load:Module", ptr %t163, i32 0, i32 27
  store i1 false, ptr %t165, !tbaa !21
  %t166 = load ptr, ptr %l2, !tbaa !29
  %t168 = getelementptr %"compiler/load:Module", ptr %t166, i32 0, i32 26
  store i1 true, ptr %t168, !tbaa !21
  br label %ret
ret:
  ret void
}

define dso_local i64 @compiler_2fload_2ecompiler_2fload_3aLoader_2econdEnd(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i64 %a2, i64 %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l4 = alloca { i64, ptr }
  %l5 = alloca i64
  %l6 = alloca i1
  %l7 = alloca i64
  %l8 = alloca i32
  %l9 = alloca i64
  %l22 = alloca { i64, ptr }
  %l27 = alloca i1
  %l34 = alloca i1
  %l41 = alloca i1
  %l44 = alloca i1
  %l51 = alloca i1
  %l62 = alloca i32
  %l71 = alloca i1
  %l74 = alloca i1
  %rv = alloca i64
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l1, !tbaa !29
  %t3 = getelementptr %"compiler/load:Module", ptr %t1, i32 0, i32 7
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t6 = icmp eq ptr %t4, null
  br i1 %t6, label %bb1, label %bb2
bb1:
  call void @__olang_check_failed(ptr @olang_loc_f27e16b36a34913f_9730f0a664aef8cb)
  unreachable
bb2:
  br label %bb3
bb3:
  %t8 = load ptr, ptr %l1, !tbaa !29
  %t10 = getelementptr %"compiler/load:Module", ptr %t8, i32 0, i32 7
  %t11 = load ptr, ptr %t10, !tbaa !29
  %t14 = getelementptr %"compiler/scan:Tokens", ptr %t11, i32 0, i32 0
  %t15 = load { i64, ptr }, ptr %t14, !tbaa !27
  store { i64, ptr } %t15, ptr %l4, !tbaa !27
  store i64 0, ptr %l5, !tbaa !24
  store i1 false, ptr %l6, !tbaa !21
  store i64 %a2, ptr %l7, !tbaa !24
  br label %bb4
bb4:
  %t19 = load i64, ptr %l7, !tbaa !24
  %t23 = icmp slt i64 %t19, %a3
  %t25 = xor i1 %t23, true
  br i1 %t25, label %bb5, label %bb6
bb5:
  br label %bb55
bb6:
  br label %bb7
bb7:
  %t27 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t27, ptr %l22, !tbaa !27
  %t28 = load i64, ptr %l7, !tbaa !24
  %t30 = getelementptr { i64, ptr }, ptr %l22, i32 0, i32 1
  %t31 = load ptr, ptr %t30, !tbaa !27
  %t32 = getelementptr %"compiler/token:Token", ptr %t31, i64 %t28
  %t33 = getelementptr %"compiler/token:Token", ptr %t32, i32 0, i32 0
  %t34 = load i32, ptr %t33, !range !{i32 0, i32 114}
  store i32 %t34, ptr %l8
  %t36 = load i32, ptr %l8, !range !{i32 0, i32 114}
  %t38 = trunc i64 108 to i32
  %t39 = icmp eq i32 %t36, %t38
  br i1 %t39, label %bb8, label %bb9
bb8:
  store i1 true, ptr %l27, !tbaa !21
  br label %bb10
bb9:
  %t41 = load i32, ptr %l8, !range !{i32 0, i32 114}
  %t43 = trunc i64 110 to i32
  %t44 = icmp eq i32 %t41, %t43
  store i1 %t44, ptr %l27, !tbaa !21
  br label %bb10
bb10:
  %t46 = load i1, ptr %l27, !tbaa !21
  br i1 %t46, label %bb11, label %bb12
bb11:
  %t47 = load i64, ptr %l5, !tbaa !24
  %t49 = add i64 %t47, 1
  store i64 %t49, ptr %l5, !tbaa !24
  br label %bb13
bb12:
  br label %bb13
bb13:
  %t51 = load i32, ptr %l8, !range !{i32 0, i32 114}
  %t53 = trunc i64 109 to i32
  %t54 = icmp eq i32 %t51, %t53
  br i1 %t54, label %bb14, label %bb15
bb14:
  store i1 true, ptr %l34, !tbaa !21
  br label %bb16
bb15:
  %t56 = load i32, ptr %l8, !range !{i32 0, i32 114}
  %t58 = trunc i64 111 to i32
  %t59 = icmp eq i32 %t56, %t58
  store i1 %t59, ptr %l34, !tbaa !21
  br label %bb16
bb16:
  %t61 = load i1, ptr %l34, !tbaa !21
  br i1 %t61, label %bb17, label %bb18
bb17:
  %t62 = load i64, ptr %l5, !tbaa !24
  %t64 = sub i64 %t62, 1
  store i64 %t64, ptr %l5, !tbaa !24
  br label %bb19
bb18:
  br label %bb19
bb19:
  %t66 = load i32, ptr %l8, !range !{i32 0, i32 114}
  %t68 = trunc i64 31 to i32
  %t69 = icmp eq i32 %t66, %t68
  br i1 %t69, label %bb20, label %bb21
bb20:
  store i1 true, ptr %l41, !tbaa !21
  br label %bb22
bb21:
  %t71 = load i32, ptr %l8, !range !{i32 0, i32 114}
  %t73 = trunc i64 37 to i32
  %t74 = icmp eq i32 %t71, %t73
  store i1 %t74, ptr %l41, !tbaa !21
  br label %bb22
bb22:
  %t76 = load i1, ptr %l41, !tbaa !21
  br i1 %t76, label %bb23, label %bb24
bb23:
  store i1 true, ptr %l44, !tbaa !21
  br label %bb25
bb24:
  %t77 = load i32, ptr %l8, !range !{i32 0, i32 114}
  %t79 = trunc i64 12 to i32
  %t80 = icmp eq i32 %t77, %t79
  store i1 %t80, ptr %l44, !tbaa !21
  br label %bb25
bb25:
  %t82 = load i1, ptr %l44, !tbaa !21
  br i1 %t82, label %bb26, label %bb27
bb26:
  store i1 true, ptr %l6, !tbaa !21
  br label %bb28
bb27:
  br label %bb28
bb28:
  %t83 = load i32, ptr %l8, !range !{i32 0, i32 114}
  %t85 = trunc i64 112 to i32
  %t86 = icmp eq i32 %t83, %t85
  br i1 %t86, label %bb29, label %bb30
bb29:
  %t88 = load i64, ptr %l5, !tbaa !24
  %t90 = icmp eq i64 %t88, 0
  br i1 %t90, label %bb31, label %bb32
bb30:
  br label %bb44
bb31:
  %t92 = load i1, ptr %l6, !tbaa !21
  %t94 = xor i1 %t92, true
  store i1 %t94, ptr %l51, !tbaa !21
  br label %bb33
bb32:
  store i1 false, ptr %l51, !tbaa !21
  br label %bb33
bb33:
  %t96 = load i1, ptr %l51, !tbaa !21
  br i1 %t96, label %bb34, label %bb35
bb34:
  %t97 = load i64, ptr %l7, !tbaa !24
  store i64 %t97, ptr %rv
  br label %ret
bb35:
  br label %bb36
bb36:
  %t99 = load ptr, ptr %l1, !tbaa !29
  %t101 = getelementptr %"compiler/load:Module", ptr %t99, i32 0, i32 7
  %t102 = load ptr, ptr %t101, !tbaa !29
  %t104 = icmp eq ptr %t102, null
  br i1 %t104, label %bb37, label %bb38
bb37:
  call void @__olang_check_failed(ptr @olang_loc_f6bd06efaafe5f20_6d37165570c63ddc)
  unreachable
bb38:
  br label %bb39
bb39:
  %t106 = load ptr, ptr %l1, !tbaa !29
  %t108 = getelementptr %"compiler/load:Module", ptr %t106, i32 0, i32 7
  %t109 = load ptr, ptr %t108, !tbaa !29
  %t110 = load i64, ptr %l7, !tbaa !24
  %t112 = trunc i64 %t110 to i32
  %t115 = call i32 @compiler_2fscan_2ecompiler_2fscan_3aTokens_2eMatch(ptr %v1, ptr %t109, i32 %t112)
  store i32 %t115, ptr %l62
  br label %bb40
bb40:
  %t116 = load i32, ptr %l62, !tbaa !23
  %t117 = sext i32 %t116 to i64
  store i64 %t117, ptr %l9, !tbaa !24
  %t119 = load i64, ptr %l9, !tbaa !24
  %t121 = icmp slt i64 %t119, 0
  br i1 %t121, label %bb41, label %bb42
bb41:
  store i64 -1, ptr %rv
  br label %ret
bb42:
  br label %bb43
bb43:
  store i1 false, ptr %l6, !tbaa !21
  %t124 = load i64, ptr %l9, !tbaa !24
  %t126 = add i64 %t124, 1
  store i64 %t126, ptr %l7, !tbaa !24
  br label %bb54
bb44:
  %t128 = load i64, ptr %l5, !tbaa !24
  %t130 = icmp sle i64 %t128, 0
  br i1 %t130, label %bb45, label %bb46
bb45:
  %t132 = load i32, ptr %l8, !range !{i32 0, i32 114}
  %t134 = trunc i64 8 to i32
  %t135 = icmp eq i32 %t132, %t134
  br i1 %t135, label %bb47, label %bb48
bb46:
  store i1 false, ptr %l71, !tbaa !21
  br label %bb50
bb47:
  store i1 true, ptr %l74, !tbaa !21
  br label %bb49
bb48:
  %t137 = load i32, ptr %l8, !range !{i32 0, i32 114}
  %t139 = trunc i64 0 to i32
  %t140 = icmp eq i32 %t137, %t139
  store i1 %t140, ptr %l74, !tbaa !21
  br label %bb49
bb49:
  %t142 = load i1, ptr %l74, !tbaa !21
  store i1 %t142, ptr %l71, !tbaa !21
  br label %bb50
bb50:
  %t143 = load i1, ptr %l71, !tbaa !21
  br i1 %t143, label %bb51, label %bb52
bb51:
  store i64 -1, ptr %rv
  br label %ret
bb52:
  br label %bb53
bb53:
  %t145 = load i64, ptr %l7, !tbaa !24
  %t147 = add i64 %t145, 1
  store i64 %t147, ptr %l7, !tbaa !24
  br label %bb54
bb54:
  br label %bb4
bb55:
  store i64 -1, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local void @compiler_2fload_2ecompiler_2fload_3aLoader_2eparse(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca ptr
  %l6 = alloca ptr
  %l7 = alloca ptr
  %l14 = alloca ptr
  %l19 = alloca ptr
  %l24 = alloca ptr
  %l26 = alloca ptr
  %l36 = alloca %"compiler/parse:Parser"
  %l38 = alloca ptr
  %l44 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %t71 = alloca %"compiler/parse:Parser", align 8
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/load:Loader", ptr %t1, i32 0, i32 10
  %t4 = load i64, ptr %l1, !tbaa !24
  %t7 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H7bcf2aeb09afa796f4333e6ec8c3f63f(ptr %v0, ptr %v0, ptr %t3, i64 %t4)
  store ptr %t7, ptr %l6
  br label %bb1
bb1:
  %t8 = load ptr, ptr %l6, !tbaa !29
  store ptr %t8, ptr %l2, !tbaa !29
  %t9 = load ptr, ptr %l0, !tbaa !29
  store ptr %t9, ptr %l7, !tbaa !29
  %t10 = load ptr, ptr %l2, !tbaa !29
  %t12 = getelementptr %"compiler/load:Module", ptr %t10, i32 0, i32 12
  %t13 = load ptr, ptr %t12, !tbaa !29
  %t15 = icmp eq ptr %t13, null
  br i1 %t15, label %bb2, label %bb3
bb2:
  call void @__olang_check_failed(ptr @olang_loc_8f863f78ae5527a5_d98381c5cf71b659)
  unreachable
bb3:
  br label %bb4
bb4:
  %t17 = load ptr, ptr %l2, !tbaa !29
  %t19 = getelementptr %"compiler/load:Module", ptr %t17, i32 0, i32 12
  %t20 = load ptr, ptr %t19, !tbaa !29
  %t21 = load i64, ptr %l1, !tbaa !24
  %t22 = load ptr, ptr %l7, !tbaa !29
  call void @compiler_2fload_2ecompiler_2fload_3aLoader_2echains(ptr %v0, ptr %v0, ptr %s0, ptr %t22, ptr %t20, i64 %t21, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d70, i32 0, i32 1) }, i64 0)
  br label %bb5
bb5:
  %t25 = load ptr, ptr %l2, !tbaa !29
  store ptr %t25, ptr %l14, !tbaa !29
  %t26 = load ptr, ptr %l2, !tbaa !29
  %t28 = getelementptr %"compiler/load:Module", ptr %t26, i32 0, i32 6
  %t29 = load ptr, ptr %t28, !tbaa !29
  %t31 = icmp eq ptr %t29, null
  br i1 %t31, label %bb6, label %bb7
bb6:
  call void @__olang_check_failed(ptr @olang_loc_d1a77ba1d5054afe_d44f3bbb44d4a532)
  unreachable
bb7:
  br label %bb8
bb8:
  %t33 = load ptr, ptr %l2, !tbaa !29
  %t35 = getelementptr %"compiler/load:Module", ptr %t33, i32 0, i32 6
  %t36 = load ptr, ptr %t35, !tbaa !29
  store ptr %t36, ptr %l19, !tbaa !29
  %t37 = load ptr, ptr %l2, !tbaa !29
  %t39 = getelementptr %"compiler/load:Module", ptr %t37, i32 0, i32 7
  %t40 = load ptr, ptr %t39, !tbaa !29
  %t42 = icmp eq ptr %t40, null
  br i1 %t42, label %bb9, label %bb10
bb9:
  call void @__olang_check_failed(ptr @olang_loc_d1a77ba1d5054afe_d44f3bbb44d4a532)
  unreachable
bb10:
  br label %bb11
bb11:
  %t44 = load ptr, ptr %l2, !tbaa !29
  %t46 = getelementptr %"compiler/load:Module", ptr %t44, i32 0, i32 7
  %t47 = load ptr, ptr %t46, !tbaa !29
  store ptr %t47, ptr %l24, !tbaa !29
  %t48 = load ptr, ptr %l0, !tbaa !29
  %t50 = getelementptr %"compiler/load:Loader", ptr %t48, i32 0, i32 3
  %t51 = load ptr, ptr %t50, !tbaa !29
  store ptr %t51, ptr %l26, !tbaa !29
  %t52 = load ptr, ptr %l2, !tbaa !29
  %t54 = getelementptr %"compiler/load:Module", ptr %t52, i32 0, i32 12
  %t55 = load ptr, ptr %t54, !tbaa !29
  %t57 = icmp eq ptr %t55, null
  br i1 %t57, label %bb12, label %bb13
bb12:
  call void @__olang_check_failed(ptr @olang_loc_d1a77ba1d5054afe_d44f3bbb44d4a532)
  unreachable
bb13:
  br label %bb14
bb14:
  %t59 = load ptr, ptr %l2, !tbaa !29
  %t61 = getelementptr %"compiler/load:Module", ptr %t59, i32 0, i32 12
  %t62 = load ptr, ptr %t61, !tbaa !29
  %t63 = load ptr, ptr %l0, !tbaa !29
  %t65 = getelementptr %"compiler/load:Loader", ptr %t63, i32 0, i32 4
  %t66 = load ptr, ptr %t65, !tbaa !29
  %t67 = load ptr, ptr %l2, !tbaa !29
  %t69 = getelementptr %"compiler/load:Module", ptr %t67, i32 0, i32 4
  %t70 = load i64, ptr %t69, !tbaa !24
  %t72 = load ptr, ptr %l19, !tbaa !29
  %t73 = load ptr, ptr %l24, !tbaa !29
  %t74 = load ptr, ptr %l26, !tbaa !29
  call void @compiler_2fparse_3aParser_2ector(ptr %t71, ptr %v0, ptr %v0, ptr %v0, ptr %v0, ptr %v0, ptr %v0, ptr %t72, ptr %t73, ptr %t74, ptr %t62, ptr %t66, i64 %t70)
  call void @llvm.memmove.p0.p0.i64(ptr %l36, ptr %t71, i64 912, i1 false)
  br label %bb15
bb15:
  %t78 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 912, i64 8)
  call void @llvm.memmove.p0.p0.i64(ptr %t78, ptr %l36, i64 912, i1 false)
  %t80 = load ptr, ptr %l14, !tbaa !29
  %t81 = getelementptr %"compiler/load:Module", ptr %t80, i32 0, i32 13
  store ptr %t78, ptr %t81, !tbaa !29
  %t82 = load ptr, ptr %l2, !tbaa !29
  store ptr %t82, ptr %l38, !tbaa !29
  %t83 = load ptr, ptr %l2, !tbaa !29
  %t85 = getelementptr %"compiler/load:Module", ptr %t83, i32 0, i32 13
  %t86 = load ptr, ptr %t85, !tbaa !29
  %t88 = icmp eq ptr %t86, null
  br i1 %t88, label %bb16, label %bb17
bb16:
  call void @__olang_check_failed(ptr @olang_loc_ae9d746b68f04eaf_c5efeab384942473)
  unreachable
bb17:
  br label %bb18
bb18:
  %t90 = load ptr, ptr %l2, !tbaa !29
  %t92 = getelementptr %"compiler/load:Module", ptr %t90, i32 0, i32 13
  %t93 = load ptr, ptr %t92, !tbaa !29
  %t95 = call { i64, ptr } @compiler_2fparse_2ecompiler_2fparse_3aParser_2eFile(ptr %v0, ptr %v0, ptr %t93)
  store { i64, ptr } %t95, ptr %l44
  br label %bb19
bb19:
  %t96 = load { i64, ptr }, ptr %l44, !tbaa !27
  %t97 = load ptr, ptr %l38, !tbaa !29
  %t98 = getelementptr %"compiler/load:Module", ptr %t97, i32 0, i32 8
  store { i64, ptr } %t96, ptr %t98, !tbaa !27
  %t99 = load ptr, ptr %l0, !tbaa !29
  %t100 = load i64, ptr %l1, !tbaa !24
  %t101 = load ptr, ptr %l2, !tbaa !29
  %t103 = getelementptr %"compiler/load:Module", ptr %t101, i32 0, i32 8
  %t104 = load { i64, ptr }, ptr %t103, !tbaa !27
  call void @compiler_2fload_2ecompiler_2fload_3aLoader_2egroups(ptr %v0, ptr %v0, ptr %t99, i64 %t100, { i64, ptr } %t104)
  br label %bb20
bb20:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local i64 @compiler_2fload_2ecompiler_2fload_3aLoader_2etaken(ptr %v0, ptr %a0, i64 %a1, i64 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca i64
  %l3 = alloca ptr
  %l4 = alloca i64
  %l5 = alloca i64
  %l12 = alloca ptr
  %l16 = alloca i64
  %l23 = alloca i64
  %l28 = alloca i64
  %l32 = alloca i64
  %l34 = alloca i64
  %rv = alloca i64
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  store i64 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load i64, ptr %l2, !tbaa !24
  %t3 = icmp slt i64 %t1, 0
  br i1 %t3, label %bb1, label %bb2
bb1:
  store i64 1, ptr %rv
  br label %ret
bb2:
  br label %bb3
bb3:
  %t6 = load ptr, ptr %l0, !tbaa !29
  %t8 = getelementptr %"compiler/load:Loader", ptr %t6, i32 0, i32 10
  %t9 = load i64, ptr %l1, !tbaa !24
  %t12 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H7bcf2aeb09afa796f4333e6ec8c3f63f(ptr %v0, ptr %v0, ptr %t8, i64 %t9)
  store ptr %t12, ptr %l12
  br label %bb4
bb4:
  %t13 = load ptr, ptr %l12, !tbaa !29
  store ptr %t13, ptr %l3, !tbaa !29
  %t14 = load ptr, ptr %l3, !tbaa !29
  %t16 = getelementptr %"compiler/load:Module", ptr %t14, i32 0, i32 20
  %t17 = load i64, ptr %l2, !tbaa !24
  %t20 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t16, i64 %t17)
  store i64 %t20, ptr %l16
  br label %bb5
bb5:
  %t21 = load i64, ptr %l16, !tbaa !24
  store i64 %t21, ptr %l4, !tbaa !24
  %t22 = load ptr, ptr %l0, !tbaa !29
  %t23 = load i64, ptr %l1, !tbaa !24
  %t24 = load i64, ptr %l4, !tbaa !24
  call void @compiler_2fload_2ecompiler_2fload_3aLoader_2edecide(ptr %v0, ptr %t22, i64 %t23, i64 %t24)
  br label %bb6
bb6:
  %t28 = load ptr, ptr %l3, !tbaa !29
  %t30 = getelementptr %"compiler/load:Module", ptr %t28, i32 0, i32 16
  %t31 = load i64, ptr %l4, !tbaa !24
  %t34 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t30, i64 %t31)
  store i64 %t34, ptr %l23
  br label %bb7
bb7:
  %t35 = load i64, ptr %l23, !tbaa !24
  store i64 %t35, ptr %l5, !tbaa !24
  %t36 = load i64, ptr %l5, !tbaa !24
  %t37 = load i64, ptr @G_2ecompiler_2fload_2ePending, !tbaa !24
  %t40 = icmp eq i64 %t36, %t37
  br i1 %t40, label %bb8, label %bb9
bb8:
  store i64 -1, ptr %rv
  br label %ret
bb9:
  br label %bb10
bb10:
  %t43 = load i64, ptr %l5, !tbaa !24
  store i64 %t43, ptr %l28, !tbaa !24
  %t44 = load ptr, ptr %l3, !tbaa !29
  %t46 = getelementptr %"compiler/load:Module", ptr %t44, i32 0, i32 21
  %t47 = load i64, ptr %l2, !tbaa !24
  %t50 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t46, i64 %t47)
  store i64 %t50, ptr %l32
  br label %bb11
bb11:
  %t51 = load i64, ptr %l28, !tbaa !24
  %t52 = load i64, ptr %l32, !tbaa !24
  %t53 = icmp eq i64 %t51, %t52
  br i1 %t53, label %bb12, label %bb13
bb12:
  store i64 1, ptr %l34, !tbaa !24
  br label %bb14
bb13:
  store i64 0, ptr %l34, !tbaa !24
  br label %bb14
bb14:
  %t55 = load i64, ptr %l34, !tbaa !24
  store i64 %t55, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local i1 @compiler_2fload_2edeclsLink(ptr %v0, { i64, ptr } %a0) #0 {
entry:
  %l1 = alloca { i64, ptr }
  %l2 = alloca i64
  %l3 = alloca i64
  %l4 = alloca ptr
  %l5 = alloca %"compiler/source:Span"
  %l6 = alloca ptr
  %l14 = alloca { i64, ptr }
  %l17 = alloca ptr
  %l18 = alloca i1
  %l26 = alloca ptr
  %l27 = alloca i1
  %l33 = alloca i1
  %rv = alloca i1
  br label %start
start:
  br label %bb0
bb0:
  store { i64, ptr } %a0, ptr %l1, !tbaa !27
  store i64 0, ptr %l2, !tbaa !24
  %t3 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t5 = extractvalue { i64, ptr } %t3, 0
  store i64 %t5, ptr %l3, !tbaa !24
  br label %bb1
bb1:
  %t7 = load i64, ptr %l2, !tbaa !24
  %t8 = load i64, ptr %l3, !tbaa !24
  %t11 = icmp slt i64 %t7, %t8
  %t13 = xor i1 %t11, true
  br i1 %t13, label %bb2, label %bb3
bb2:
  br label %bb30
bb3:
  br label %bb4
bb4:
  %t15 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t15, ptr %l14, !tbaa !27
  %t16 = load i64, ptr %l2, !tbaa !24
  %t18 = getelementptr { i64, ptr }, ptr %l14, i32 0, i32 1
  %t19 = load ptr, ptr %t18, !tbaa !27
  %t20 = getelementptr ptr, ptr %t19, i64 %t16
  %t21 = load ptr, ptr %t20, !tbaa !39
  store ptr %t21, ptr %l4, !tbaa !29
  %t23 = load ptr, ptr %l4, !tbaa !29
  store ptr %t23, ptr %l17, !tbaa !29
  store i1 false, ptr %l18, !tbaa !21
  %t24 = load ptr, ptr %l17, !tbaa !29
  %t25 = icmp ne ptr %t24, null
  br i1 %t25, label %bb5, label %bb6
bb5:
  %t27 = load ptr, ptr %l17, !tbaa !29
  %t28 = load i64, ptr %t27, !range !{i64 0, i64 11}
  %t30 = icmp eq i64 %t28, 10
  store i1 %t30, ptr %l18, !tbaa !21
  br label %bb6
bb6:
  %t31 = load i1, ptr %l18, !tbaa !21
  br i1 %t31, label %bb7, label %bb8
bb7:
  %t32 = load ptr, ptr %l4, !tbaa !29
  %t34 = getelementptr { i64, [8 x i64] }, ptr %t32, i32 0, i32 1
  %t35 = getelementptr { %"compiler/source:Span", %"compiler/source:Span", { i64, ptr } }, ptr %t34, i32 0, i32 1
  %t36 = load %"compiler/source:Span", ptr %t35
  store %"compiler/source:Span" %t36, ptr %l5
  br label %bb9
bb8:
  br label %bb13
bb9:
  %t38 = getelementptr %"compiler/source:Span", ptr %l5, i32 0, i32 1
  %t39 = load i32, ptr %t38, !tbaa !23
  %t41 = icmp sgt i32 %t39, 0
  br i1 %t41, label %bb10, label %bb11
bb10:
  store i1 true, ptr %rv
  br label %ret
bb11:
  br label %bb12
bb12:
  br label %bb28
bb13:
  %t44 = load ptr, ptr %l4, !tbaa !29
  store ptr %t44, ptr %l26, !tbaa !29
  store i1 false, ptr %l27, !tbaa !21
  %t45 = load ptr, ptr %l26, !tbaa !29
  %t46 = icmp ne ptr %t45, null
  br i1 %t46, label %bb14, label %bb15
bb14:
  %t48 = load ptr, ptr %l26, !tbaa !29
  %t49 = load i64, ptr %t48, !range !{i64 0, i64 11}
  %t51 = icmp eq i64 %t49, 7
  store i1 %t51, ptr %l27, !tbaa !21
  br label %bb15
bb15:
  %t52 = load i1, ptr %l27, !tbaa !21
  br i1 %t52, label %bb16, label %bb17
bb16:
  %t53 = load ptr, ptr %l4, !tbaa !29
  %t55 = getelementptr { i64, [8 x i64] }, ptr %t53, i32 0, i32 1
  %t56 = getelementptr { %"compiler/source:Span", ptr }, ptr %t55, i32 0, i32 1
  %t57 = load ptr, ptr %t56
  store ptr %t57, ptr %l6, !tbaa !29
  br label %bb18
bb17:
  br label %bb23
bb18:
  %t59 = load ptr, ptr %l6, !tbaa !29
  %t61 = call i1 @compiler_2fload_2eifLinks(ptr %v0, ptr %t59)
  store i1 %t61, ptr %l33
  br label %bb19
bb19:
  %t62 = load i1, ptr %l33, !tbaa !21
  br i1 %t62, label %bb20, label %bb21
bb20:
  store i1 true, ptr %rv
  br label %ret
bb21:
  br label %bb22
bb22:
  br label %bb28
bb23:
  br i1 true, label %bb24, label %bb25
bb24:
  br label %bb26
bb25:
  br label %bb27
bb26:
  br label %bb28
bb27:
  call void @__olang_check_failed(ptr @olang_loc_192e19daea0c4a8c_84edcc0a58286798)
  unreachable
bb28:
  br label %bb29
bb29:
  %t64 = load i64, ptr %l2, !tbaa !24
  %t66 = add i64 %t64, 1
  store i64 %t66, ptr %l2, !tbaa !24
  br label %bb1
bb30:
  store i1 false, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local { i64, ptr } @compiler_2fload_2efileStamp(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l1 = alloca { i64, ptr }
  %l2 = alloca %"std/os:FileInfo"
  %l4 = alloca i1
  %l5 = alloca { i64, ptr }
  %l6 = alloca { i64, ptr }
  %l7 = alloca i64
  %l8 = alloca { i64, ptr }
  %l9 = alloca { i64, ptr }
  %l11 = alloca { i64, ptr }
  %l13 = alloca { i64, ptr }
  %l14 = alloca i32
  %l18 = alloca i1
  %l21 = alloca %"std/os:FileInfo"
  %l23 = alloca %"std/os:FileInfo"
  %l24 = alloca i32
  %l26 = alloca i1
  %s0 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  store { i64, ptr } %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t3 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t1, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d71, i32 0, i32 1) })
  store i1 %t3, ptr %l4
  br label %bb1
bb1:
  %t4 = load i1, ptr %l4, !tbaa !21
  br i1 %t4, label %bb2, label %bb3
bb2:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d72, i32 0, i32 1) }, ptr %l5, !tbaa !27
  %t5 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t5, ptr %l6, !tbaa !27
  %t6 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t7 = extractvalue { i64, ptr } %t6, 0
  store i64 %t7, ptr %l7, !tbaa !24
  %t8 = load i64, ptr %l7, !tbaa !24
  %t9 = mul i64 %t8, 1
  %t10 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t9)
  %t11 = insertvalue { i64, ptr } undef, i64 %t8, 0
  %t12 = insertvalue { i64, ptr } %t11, ptr %t10, 1
  store { i64, ptr } %t12, ptr %l8, !tbaa !27
  %t13 = getelementptr { i64, ptr }, ptr %l8, i32 0, i32 1
  %t14 = load ptr, ptr %t13, !tbaa !27
  %t15 = getelementptr { i64, ptr }, ptr %l6, i32 0, i32 1
  %t16 = load ptr, ptr %t15, !tbaa !27
  %t17 = load i64, ptr %l7, !tbaa !24
  %t18 = mul i64 %t17, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t14, ptr %t16, i64 %t18, i1 false)
  %t19 = load { i64, ptr }, ptr %l8, !tbaa !27
  store { i64, ptr } %t19, ptr %l6, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  %t20 = load { i64, ptr }, ptr %l6, !tbaa !27
  store { i64, ptr } %t20, ptr %rv
  br label %ret
bb3:
  br label %bb4
bb4:
  %t21 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t23 = call { i64, ptr } @compiler_2ftarget_2eWhereIs(ptr %v0, ptr %s0, { i64, ptr } %t21)
  store { i64, ptr } %t23, ptr %l11
  br label %bb5
bb5:
  %t24 = load { i64, ptr }, ptr %l11, !tbaa !27
  %t25 = extractvalue { i64, ptr } %t24, 0
  %t26 = extractvalue { i64, ptr } %t24, 1
  %t27 = mul i64 %t25, 1
  %t28 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t27)
  call void @llvm.memcpy.p0.p0.i64(ptr %t28, ptr %t26, i64 %t27, i1 false)
  %t29 = insertvalue { i64, ptr } undef, i64 %t25, 0
  %t30 = insertvalue { i64, ptr } %t29, ptr %t28, 1
  %t32 = call { i32, { i64, ptr } } @std_2fos_2eRealPath(ptr %s0, ptr %s0, { i64, ptr } %t30)
  %t33 = extractvalue { i32, { i64, ptr } } %t32, 1
  %t34 = extractvalue { i32, { i64, ptr } } %t32, 0
  store i32 %t34, ptr %l14
  %t35 = icmp ne i32 %t34, 0
  br i1 %t35, label %bb7, label %ok.36, !prof !99
ok.36:
  store { i64, ptr } %t33, ptr %l13
  br label %bb6
bb6:
  %t37 = load { i64, ptr }, ptr %l13, !tbaa !27
  store { i64, ptr } %t37, ptr %l9, !tbaa !27
  br label %bb11
bb7:
  %t38 = load i32, ptr %l14, !tbaa !23
  %t39 = ashr i32 %t38, 16
  %t41 = icmp eq i32 %t39, 1
  br i1 %t41, label %bb8, label %bb9
bb8:
  call void @__olang_errpay_pop()
  br label %bb9
bb9:
  br label %bb10
bb10:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d73, i32 0, i32 1) }, ptr %l9, !tbaa !27
  br label %bb11
bb11:
  %t43 = load { i64, ptr }, ptr %l9, !tbaa !27
  store { i64, ptr } %t43, ptr %l1, !tbaa !27
  %t44 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t46 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %s0, { i64, ptr } %t44, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d74, i32 0, i32 1) })
  store i1 %t46, ptr %l18
  br label %bb12
bb12:
  %t47 = load i1, ptr %l18, !tbaa !21
  br i1 %t47, label %bb13, label %bb14
bb13:
  %t48 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t50 = extractvalue { i64, ptr } %t48, 1
  %t51 = extractvalue { i64, ptr } %t48, 0
  %t52 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t51)
  call void @olang_textcopy(ptr %t52, ptr %t50, i64 %t51)
  %t53 = insertvalue { i64, ptr } undef, i64 %t51, 0
  %t54 = insertvalue { i64, ptr } %t53, ptr %t52, 1
  call void @__olang_scope_close(ptr %s0)
  store { i64, ptr } %t54, ptr %rv
  br label %ret
bb14:
  br label %bb15
bb15:
  %t56 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t58 = call { i32, %"std/os:FileInfo" } @std_2fos_2eFileInfo_2eStat(ptr %s0, { i64, ptr } %t56)
  %t59 = extractvalue { i32, %"std/os:FileInfo" } %t58, 1
  %t60 = extractvalue { i32, %"std/os:FileInfo" } %t58, 0
  store i32 %t60, ptr %l24
  %t61 = icmp ne i32 %t60, 0
  br i1 %t61, label %bb17, label %ok.62, !prof !99
ok.62:
  store %"std/os:FileInfo" %t59, ptr %l23
  br label %bb16
bb16:
  %t63 = load %"std/os:FileInfo", ptr %l23
  store %"std/os:FileInfo" %t63, ptr %l21
  br label %bb21
bb17:
  %t64 = load i32, ptr %l24, !tbaa !23
  %t65 = ashr i32 %t64, 16
  %t67 = icmp eq i32 %t65, 1
  store i1 %t67, ptr %l26, !tbaa !21
  %t68 = load i32, ptr %l24, !tbaa !23
  %t69 = ashr i32 %t68, 16
  %t71 = icmp eq i32 %t69, 1
  br i1 %t71, label %bb18, label %bb19
bb18:
  call void @__olang_errpay_pop()
  br label %bb19
bb19:
  br label %bb20
bb20:
  %t73 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t75 = extractvalue { i64, ptr } %t73, 1
  %t76 = extractvalue { i64, ptr } %t73, 0
  %t77 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t76)
  call void @olang_textcopy(ptr %t77, ptr %t75, i64 %t76)
  %t78 = insertvalue { i64, ptr } undef, i64 %t76, 0
  %t79 = insertvalue { i64, ptr } %t78, ptr %t77, 1
  call void @__olang_scope_close(ptr %s0)
  store { i64, ptr } %t79, ptr %rv
  br label %ret
bb21:
  %t81 = load %"std/os:FileInfo", ptr %l21
  store %"std/os:FileInfo" %t81, ptr %l2
  %t82 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t83 = getelementptr %"std/os:FileInfo", ptr %l2, i32 0, i32 1
  %t84 = load i64, ptr %t83, !tbaa !24
  %t85 = getelementptr %"std/os:FileInfo", ptr %l2, i32 0, i32 2
  %t86 = load i64, ptr %t85, !tbaa !24
  %t88 = extractvalue { i64, ptr } %t82, 1
  %t89 = extractvalue { i64, ptr } %t82, 0
  %t90 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d75, i32 0, i32 1) }, 1
  %t91 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d75, i32 0, i32 1) }, 0
  %t92 = add i64 %t89, %t91
  %t94 = call i64 @__olang_fmt_i64(ptr null, i64 %t84)
  %t95 = add i64 %t92, %t94
  %t96 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d75, i32 0, i32 1) }, 1
  %t97 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d75, i32 0, i32 1) }, 0
  %t98 = add i64 %t95, %t97
  %t100 = call i64 @__olang_fmt_i64(ptr null, i64 %t86)
  %t101 = add i64 %t98, %t100
  %t102 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t101)
  call void @olang_textcopy(ptr %t102, ptr %t88, i64 %t89)
  %t103 = getelementptr i8, ptr %t102, i64 %t89
  call void @olang_textcopy(ptr %t103, ptr %t90, i64 %t91)
  %t104 = getelementptr i8, ptr %t103, i64 %t91
  %t105 = call i64 @__olang_fmt_i64(ptr %t104, i64 %t84)
  %t106 = getelementptr i8, ptr %t104, i64 %t94
  call void @olang_textcopy(ptr %t106, ptr %t96, i64 %t97)
  %t107 = getelementptr i8, ptr %t106, i64 %t97
  %t108 = call i64 @__olang_fmt_i64(ptr %t107, i64 %t86)
  %t109 = insertvalue { i64, ptr } undef, i64 %t101, 0
  %t110 = insertvalue { i64, ptr } %t109, ptr %t102, 1
  call void @__olang_scope_close(ptr %s0)
  store { i64, ptr } %t110, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local i1 @compiler_2fload_2ekeepFile(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1, { i64, ptr } %a2) #0 {
entry:
  %l1 = alloca { i64, ptr }
  %l3 = alloca { i64, ptr }
  %l5 = alloca i32
  %l7 = alloca i1
  %l11 = alloca { i64, ptr }
  %l12 = alloca i32
  %l17 = alloca i32
  %l19 = alloca i1
  %l25 = alloca i32
  %l27 = alloca i1
  %l31 = alloca i32
  %l33 = alloca i1
  %s0 = alloca %olang.scope
  %rv = alloca i1
  store { i64, ptr } %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t3 = call i32 @std_2fos_2eMkDirAll(ptr %v0, { i64, ptr } %a0)
  store i32 %t3, ptr %l5
  %t4 = icmp ne i32 %t3, 0
  br i1 %t4, label %bb2, label %ok.5, !prof !99
ok.5:
  br label %bb1
bb1:
  br label %bb6
bb2:
  %t6 = load i32, ptr %l5, !tbaa !23
  %t7 = ashr i32 %t6, 16
  %t9 = icmp eq i32 %t7, 1
  store i1 %t9, ptr %l7, !tbaa !21
  %t10 = load i32, ptr %l5, !tbaa !23
  %t11 = ashr i32 %t10, 16
  %t13 = icmp eq i32 %t11, 1
  br i1 %t13, label %bb3, label %bb4
bb3:
  call void @__olang_errpay_pop()
  br label %bb4
bb4:
  br label %bb5
bb5:
  call void @__olang_scope_close(ptr %s0)
  store i1 false, ptr %rv
  br label %ret
bb6:
  %t16 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t16, ptr %l11, !tbaa !27
  %t17 = call i32 @compiler_2ftarget_2ePid()
  store i32 %t17, ptr %l12
  br label %bb7
bb7:
  %t18 = load { i64, ptr }, ptr %l11, !tbaa !27
  %t19 = extractvalue { i64, ptr } %t18, 1
  %t20 = extractvalue { i64, ptr } %t18, 0
  %t21 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d76, i32 0, i32 1) }, 1
  %t22 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d76, i32 0, i32 1) }, 0
  %t23 = add i64 %t20, %t22
  %t24 = load i32, ptr %l12, !tbaa !23
  %t25 = sext i32 %t24 to i64
  %t26 = call i64 @__olang_fmt_i64(ptr null, i64 %t25)
  %t27 = add i64 %t23, %t26
  %t28 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d77, i32 0, i32 1) }, 1
  %t29 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d77, i32 0, i32 1) }, 0
  %t30 = add i64 %t27, %t29
  %t31 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t30)
  call void @olang_textcopy(ptr %t31, ptr %t19, i64 %t20)
  %t32 = getelementptr i8, ptr %t31, i64 %t20
  call void @olang_textcopy(ptr %t32, ptr %t21, i64 %t22)
  %t33 = getelementptr i8, ptr %t32, i64 %t22
  %t34 = call i64 @__olang_fmt_i64(ptr %t33, i64 %t25)
  %t35 = getelementptr i8, ptr %t33, i64 %t26
  call void @olang_textcopy(ptr %t35, ptr %t28, i64 %t29)
  %t36 = insertvalue { i64, ptr } undef, i64 %t30, 0
  %t37 = insertvalue { i64, ptr } %t36, ptr %t31, 1
  store { i64, ptr } %t37, ptr %l3, !tbaa !27
  %t39 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t44 = call i32 @std_2fos_2eWriteFile(ptr %s0, ptr %v2, { i64, ptr } %t39, { i64, ptr } %a2)
  store i32 %t44, ptr %l17
  %t45 = icmp ne i32 %t44, 0
  br i1 %t45, label %bb9, label %ok.46, !prof !99
ok.46:
  br label %bb8
bb8:
  br label %bb13
bb9:
  %t47 = load i32, ptr %l17, !tbaa !23
  %t48 = ashr i32 %t47, 16
  %t50 = icmp eq i32 %t48, 1
  store i1 %t50, ptr %l19, !tbaa !21
  %t51 = load i32, ptr %l17, !tbaa !23
  %t52 = ashr i32 %t51, 16
  %t54 = icmp eq i32 %t52, 1
  br i1 %t54, label %bb10, label %bb11
bb10:
  call void @__olang_errpay_pop()
  br label %bb11
bb11:
  br label %bb12
bb12:
  call void @__olang_scope_close(ptr %s0)
  store i1 false, ptr %rv
  br label %ret
bb13:
  %t57 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t58 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t61 = call i32 @std_2fos_2eRename(ptr %s0, ptr %v1, { i64, ptr } %t57, { i64, ptr } %t58)
  store i32 %t61, ptr %l25
  %t62 = icmp ne i32 %t61, 0
  br i1 %t62, label %bb15, label %ok.63, !prof !99
ok.63:
  br label %bb14
bb14:
  br label %bb25
bb15:
  %t64 = load i32, ptr %l25, !tbaa !23
  %t65 = ashr i32 %t64, 16
  %t67 = icmp eq i32 %t65, 1
  store i1 %t67, ptr %l27, !tbaa !21
  %t68 = load i32, ptr %l25, !tbaa !23
  %t69 = ashr i32 %t68, 16
  %t71 = icmp eq i32 %t69, 1
  br i1 %t71, label %bb16, label %bb17
bb16:
  call void @__olang_errpay_pop()
  br label %bb17
bb17:
  br label %bb18
bb18:
  %t73 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t75 = call i32 @std_2fos_2eRemove(ptr %s0, { i64, ptr } %t73)
  store i32 %t75, ptr %l31
  %t76 = icmp ne i32 %t75, 0
  br i1 %t76, label %bb20, label %ok.77, !prof !99
ok.77:
  br label %bb19
bb19:
  br label %bb24
bb20:
  %t78 = load i32, ptr %l31, !tbaa !23
  %t79 = ashr i32 %t78, 16
  %t81 = icmp eq i32 %t79, 1
  store i1 %t81, ptr %l33, !tbaa !21
  %t82 = load i32, ptr %l31, !tbaa !23
  %t83 = ashr i32 %t82, 16
  %t85 = icmp eq i32 %t83, 1
  br i1 %t85, label %bb21, label %bb22
bb21:
  call void @__olang_errpay_pop()
  br label %bb22
bb22:
  br label %bb23
bb23:
  br label %bb24
bb24:
  call void @__olang_scope_close(ptr %s0)
  store i1 false, ptr %rv
  br label %ret
bb25:
  call void @__olang_scope_close(ptr %s0)
  store i1 true, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local { i64, ptr } @compiler_2fload_2ekey(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l1 = alloca { i64, ptr }
  %l3 = alloca { i64, ptr }
  %l5 = alloca { i64, ptr }
  %rv = alloca { i64, ptr }
  store { i64, ptr } %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t1, ptr %l1, !tbaa !27
  %t2 = getelementptr { i64, ptr }, ptr %l1, i32 0, i32 1
  %t3 = load ptr, ptr %t2, !tbaa !27
  %t4 = getelementptr { i64, ptr }, ptr %t3, i64 0
  %t5 = load { i64, ptr }, ptr %t4, !tbaa !37
  %t6 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t6, ptr %l3, !tbaa !27
  %t7 = getelementptr { i64, ptr }, ptr %l3, i32 0, i32 1
  %t8 = load ptr, ptr %t7, !tbaa !27
  %t9 = getelementptr { i64, ptr }, ptr %t8, i64 1
  %t10 = load { i64, ptr }, ptr %t9, !tbaa !37
  %t11 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t11, ptr %l5, !tbaa !27
  %t12 = getelementptr { i64, ptr }, ptr %l5, i32 0, i32 1
  %t13 = load ptr, ptr %t12, !tbaa !27
  %t14 = getelementptr { i64, ptr }, ptr %t13, i64 2
  %t15 = load { i64, ptr }, ptr %t14, !tbaa !37
  %t17 = extractvalue { i64, ptr } %t5, 1
  %t18 = extractvalue { i64, ptr } %t5, 0
  %t19 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d78, i32 0, i32 1) }, 1
  %t20 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d78, i32 0, i32 1) }, 0
  %t21 = add i64 %t18, %t20
  %t23 = extractvalue { i64, ptr } %t10, 1
  %t24 = extractvalue { i64, ptr } %t10, 0
  %t25 = add i64 %t21, %t24
  %t26 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d78, i32 0, i32 1) }, 1
  %t27 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d78, i32 0, i32 1) }, 0
  %t28 = add i64 %t25, %t27
  %t30 = extractvalue { i64, ptr } %t15, 1
  %t31 = extractvalue { i64, ptr } %t15, 0
  %t32 = add i64 %t28, %t31
  %t33 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t32)
  call void @olang_textcopy(ptr %t33, ptr %t17, i64 %t18)
  %t34 = getelementptr i8, ptr %t33, i64 %t18
  call void @olang_textcopy(ptr %t34, ptr %t19, i64 %t20)
  %t35 = getelementptr i8, ptr %t34, i64 %t20
  call void @olang_textcopy(ptr %t35, ptr %t23, i64 %t24)
  %t36 = getelementptr i8, ptr %t35, i64 %t24
  call void @olang_textcopy(ptr %t36, ptr %t26, i64 %t27)
  %t37 = getelementptr i8, ptr %t36, i64 %t27
  call void @olang_textcopy(ptr %t37, ptr %t30, i64 %t31)
  %t38 = insertvalue { i64, ptr } undef, i64 %t32, 0
  %t39 = insertvalue { i64, ptr } %t38, ptr %t33, 1
  store { i64, ptr } %t39, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local { i64, ptr } @compiler_2fload_2emoduleDir(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l1 = alloca i64
  %l2 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i32
  %l6 = alloca { i64, ptr }
  %l7 = alloca { i64, ptr }
  %l8 = alloca i64
  %l9 = alloca { i64, ptr }
  %l12 = alloca { i64, ptr }
  %l13 = alloca { i64, ptr }
  %l14 = alloca i64
  %l15 = alloca { i64, ptr }
  %l16 = alloca { i64, ptr }
  %l17 = alloca i64
  %l18 = alloca i64
  %s0 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  store { i64, ptr } %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t3 = call { i32, i64 } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eFindLast(ptr %v0, ptr %s0, { i64, ptr } %t1, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d79, i32 0, i32 1) })
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
  store { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d80, i32 0, i32 1) }, ptr %l6, !tbaa !27
  %t9 = load { i64, ptr }, ptr %l6, !tbaa !27
  store { i64, ptr } %t9, ptr %l7, !tbaa !27
  %t10 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t11 = extractvalue { i64, ptr } %t10, 0
  store i64 %t11, ptr %l8, !tbaa !24
  %t12 = load i64, ptr %l8, !tbaa !24
  %t13 = mul i64 %t12, 1
  %t14 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t13)
  %t15 = insertvalue { i64, ptr } undef, i64 %t12, 0
  %t16 = insertvalue { i64, ptr } %t15, ptr %t14, 1
  store { i64, ptr } %t16, ptr %l9, !tbaa !27
  %t17 = getelementptr { i64, ptr }, ptr %l9, i32 0, i32 1
  %t18 = load ptr, ptr %t17, !tbaa !27
  %t19 = getelementptr { i64, ptr }, ptr %l7, i32 0, i32 1
  %t20 = load ptr, ptr %t19, !tbaa !27
  %t21 = load i64, ptr %l8, !tbaa !24
  %t22 = mul i64 %t21, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t18, ptr %t20, i64 %t22, i1 false)
  %t23 = load { i64, ptr }, ptr %l9, !tbaa !27
  store { i64, ptr } %t23, ptr %l7, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  %t24 = load { i64, ptr }, ptr %l7, !tbaa !27
  store { i64, ptr } %t24, ptr %rv
  br label %ret
bb4:
  %t25 = load i64, ptr %l2, !tbaa !24
  store i64 %t25, ptr %l1, !tbaa !24
  %t26 = load i64, ptr %l1, !tbaa !24
  %t28 = icmp eq i64 %t26, 0
  br i1 %t28, label %bb5, label %bb6
bb5:
  store { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d81, i32 0, i32 1) }, ptr %l12, !tbaa !27
  %t30 = load { i64, ptr }, ptr %l12, !tbaa !27
  store { i64, ptr } %t30, ptr %l13, !tbaa !27
  %t31 = load { i64, ptr }, ptr %l13, !tbaa !27
  %t32 = extractvalue { i64, ptr } %t31, 0
  store i64 %t32, ptr %l14, !tbaa !24
  %t33 = load i64, ptr %l14, !tbaa !24
  %t34 = mul i64 %t33, 1
  %t35 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t34)
  %t36 = insertvalue { i64, ptr } undef, i64 %t33, 0
  %t37 = insertvalue { i64, ptr } %t36, ptr %t35, 1
  store { i64, ptr } %t37, ptr %l15, !tbaa !27
  %t38 = getelementptr { i64, ptr }, ptr %l15, i32 0, i32 1
  %t39 = load ptr, ptr %t38, !tbaa !27
  %t40 = getelementptr { i64, ptr }, ptr %l13, i32 0, i32 1
  %t41 = load ptr, ptr %t40, !tbaa !27
  %t42 = load i64, ptr %l14, !tbaa !24
  %t43 = mul i64 %t42, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t39, ptr %t41, i64 %t43, i1 false)
  %t44 = load { i64, ptr }, ptr %l15, !tbaa !27
  store { i64, ptr } %t44, ptr %l13, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  %t45 = load { i64, ptr }, ptr %l13, !tbaa !27
  store { i64, ptr } %t45, ptr %rv
  br label %ret
bb6:
  br label %bb7
bb7:
  %t46 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t46, ptr %l16, !tbaa !27
  %t47 = load i64, ptr %l1, !tbaa !24
  store i64 %t47, ptr %l17, !tbaa !24
  %t48 = load { i64, ptr }, ptr %l16, !tbaa !27
  %t49 = extractvalue { i64, ptr } %t48, 0
  store i64 %t49, ptr %l18, !tbaa !24
  %t50 = icmp sge i64 0, 0
  br i1 %t50, label %bb8, label %bb9
bb8:
  %t52 = load i64, ptr %l17, !tbaa !24
  %t53 = icmp sle i64 0, %t52
  br i1 %t53, label %bb10, label %bb11
bb9:
  call void @__olang_check_failed(ptr @olang_loc_9a4e1e4457f2709_31a5a56895743715)
  unreachable
bb10:
  %t55 = load i64, ptr %l17, !tbaa !24
  %t56 = load i64, ptr %l18, !tbaa !24
  %t57 = icmp sle i64 %t55, %t56
  br i1 %t57, label %bb12, label %bb13
bb11:
  call void @__olang_check_failed(ptr @olang_loc_9a4e1e4457f2709_31a5a56895743715)
  unreachable
bb12:
  %t59 = getelementptr { i64, ptr }, ptr %l16, i32 0, i32 1
  %t60 = load ptr, ptr %t59, !tbaa !27
  %t61 = load i64, ptr %l17, !tbaa !24
  %t62 = getelementptr i8, ptr %t60, i64 0
  %t63 = sub i64 %t61, 0
  %t64 = insertvalue { i64, ptr } undef, i64 %t63, 0
  %t65 = insertvalue { i64, ptr } %t64, ptr %t62, 1
  %t67 = extractvalue { i64, ptr } %t65, 1
  %t68 = extractvalue { i64, ptr } %t65, 0
  %t69 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t68)
  call void @olang_textcopy(ptr %t69, ptr %t67, i64 %t68)
  %t70 = insertvalue { i64, ptr } undef, i64 %t68, 0
  %t71 = insertvalue { i64, ptr } %t70, ptr %t69, 1
  call void @__olang_scope_close(ptr %s0)
  store { i64, ptr } %t71, ptr %rv
  br label %ret
bb13:
  call void @__olang_check_failed(ptr @olang_loc_9a4e1e4457f2709_31a5a56895743715)
  unreachable
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local { i64, ptr } @compiler_2fload_2erules(ptr %v0, ptr %v1, ptr %a0) #0 {
entry:
  %l1 = alloca %"std/prelude/text:StringBuilder"
  %l2 = alloca ptr
  %l3 = alloca i64
  %l4 = alloca %"compiler/diag:Said"
  %l5 = alloca %"std/prelude/text:StringBuilder"
  %l8 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l10 = alloca i64
  %l12 = alloca i64
  %l17 = alloca %"compiler/diag:Said"
  %l26 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %s1 = alloca %olang.scope
  %s2 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = call %"std/prelude/text:StringBuilder" @std_2fprelude_2ftext_3aStringBuilder_2ector(ptr %s0)
  store %"std/prelude/text:StringBuilder" %t1, ptr %l5
  br label %bb1
bb1:
  %t2 = load %"std/prelude/text:StringBuilder", ptr %l5
  store %"std/prelude/text:StringBuilder" %t2, ptr %l1
  store %olang.scope zeroinitializer, ptr %s1
  %t5 = getelementptr %"compiler/load:Loader", ptr %a0, i32 0, i32 4
  %t6 = load ptr, ptr %t5, !tbaa !29
  %t8 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eAllSaid(ptr %v0, ptr %s1, ptr %t6)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t8, ptr %l8
  br label %bb2
bb2:
  %t9 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l8
  %t10 = call ptr @__olang_scope_alloc_a(ptr %s1, i64 32, i64 8)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t9, ptr %t10
  store ptr %t10, ptr %l2, !tbaa !29
  store i64 0, ptr %l3, !tbaa !24
  br label %bb3
bb3:
  store %olang.scope zeroinitializer, ptr %s2
  %t12 = load i64, ptr %l3, !tbaa !24
  store i64 %t12, ptr %l10, !tbaa !24
  %t13 = load ptr, ptr %l2, !tbaa !29
  %t15 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fdiag_3aSaid_3e_2eLen_3ccompiler_2fdiag_3aSaid_3e(ptr %s1, ptr %t13)
  store i64 %t15, ptr %l12
  br label %bb4
bb4:
  %t16 = load i64, ptr %l10, !tbaa !24
  %t17 = load i64, ptr %l12, !tbaa !24
  %t18 = icmp slt i64 %t16, %t17
  %t20 = xor i1 %t18, true
  br i1 %t20, label %bb5, label %bb6
bb5:
  call void @__olang_scope_close(ptr %s2)
  br label %bb12
bb6:
  br label %bb7
bb7:
  %t22 = load ptr, ptr %l2, !tbaa !29
  %t23 = load i64, ptr %l3, !tbaa !24
  %t26 = call %"compiler/diag:Said" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fdiag_3aSaid_3e_2eAt_3ccompiler_2fdiag_3aSaid_3e(ptr %s1, ptr %s1, ptr %t22, i64 %t23)
  store %"compiler/diag:Said" %t26, ptr %l17
  br label %bb8
bb8:
  %t27 = load %"compiler/diag:Said", ptr %l17
  store %"compiler/diag:Said" %t27, ptr %l4
  %t28 = getelementptr %"compiler/diag:Said", ptr %l4, i32 0, i32 0
  %t29 = load { i64, ptr }, ptr %t28, !tbaa !27
  %t31 = extractvalue { i64, ptr } %t29, 1
  %t32 = extractvalue { i64, ptr } %t29, 0
  %t33 = call ptr @__olang_scope_alloc(ptr %s2, i64 %t32)
  call void @olang_textcopy(ptr %t33, ptr %t31, i64 %t32)
  %t34 = insertvalue { i64, ptr } undef, i64 %t32, 0
  %t35 = insertvalue { i64, ptr } %t34, ptr %t33, 1
  %t37 = extractvalue { i64, ptr } %t35, 0
  %t38 = extractvalue { i64, ptr } %t35, 1
  %t39 = mul i64 %t37, 1
  %t40 = call ptr @__olang_scope_alloc(ptr %s2, i64 %t39)
  call void @llvm.memcpy.p0.p0.i64(ptr %t40, ptr %t38, i64 %t39, i1 false)
  %t41 = insertvalue { i64, ptr } undef, i64 %t37, 0
  %t42 = insertvalue { i64, ptr } %t41, ptr %t40, 1
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s2, ptr %l1, { i64, ptr } %t42)
  br label %bb9
bb9:
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePushChar(ptr %s0, ptr %l1, i8 32)
  br label %bb10
bb10:
  call void @__olang_scope_close(ptr %s2)
  br label %bb11
bb11:
  %t46 = load i64, ptr %l3, !tbaa !24
  %t48 = add i64 %t46, 1
  store i64 %t48, ptr %l3, !tbaa !24
  br label %bb3
bb12:
  call void @__olang_scope_close(ptr %s1)
  %t51 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %s0, ptr %v1, ptr %l1)
  store { i64, ptr } %t51, ptr %l26
  br label %bb13
bb13:
  call void @__olang_scope_close(ptr %s0)
  %t52 = load { i64, ptr }, ptr %l26, !tbaa !27
  store { i64, ptr } %t52, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local void @compiler_2fload_2ewrite(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1, { i64, ptr } %a2) #0 {
entry:
  %l3 = alloca { i64, ptr }
  %l8 = alloca { i64, ptr }
  %l9 = alloca i32
  %l11 = alloca i1
  %l17 = alloca i32
  %l19 = alloca i1
  %s0 = alloca %olang.scope
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t4 = extractvalue { i64, ptr } %a0, 1
  %t5 = extractvalue { i64, ptr } %a0, 0
  %t6 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d82, i32 0, i32 1) }, 1
  %t7 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d82, i32 0, i32 1) }, 0
  %t8 = add i64 %t5, %t7
  %t10 = extractvalue { i64, ptr } %a1, 1
  %t11 = extractvalue { i64, ptr } %a1, 0
  %t12 = add i64 %t8, %t11
  %t13 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t12)
  call void @olang_textcopy(ptr %t13, ptr %t4, i64 %t5)
  %t14 = getelementptr i8, ptr %t13, i64 %t5
  call void @olang_textcopy(ptr %t14, ptr %t6, i64 %t7)
  %t15 = getelementptr i8, ptr %t14, i64 %t7
  call void @olang_textcopy(ptr %t15, ptr %t10, i64 %t11)
  %t16 = insertvalue { i64, ptr } undef, i64 %t12, 0
  %t17 = insertvalue { i64, ptr } %t16, ptr %t13, 1
  store { i64, ptr } %t17, ptr %l3, !tbaa !27
  %t19 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t21 = call { i64, ptr } @std_2ffilepath_2eDir(ptr %s0, ptr %s0, { i64, ptr } %t19)
  store { i64, ptr } %t21, ptr %l8
  br label %bb1
bb1:
  %t22 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t23 = call i32 @std_2fos_2eMkDirAll(ptr %s0, { i64, ptr } %t22)
  store i32 %t23, ptr %l9
  %t24 = icmp ne i32 %t23, 0
  br i1 %t24, label %bb3, label %ok.25, !prof !99
ok.25:
  br label %bb2
bb2:
  br label %bb7
bb3:
  %t26 = load i32, ptr %l9, !tbaa !23
  %t27 = ashr i32 %t26, 16
  %t29 = icmp eq i32 %t27, 1
  store i1 %t29, ptr %l11, !tbaa !21
  %t30 = load i32, ptr %l9, !tbaa !23
  %t31 = ashr i32 %t30, 16
  %t33 = icmp eq i32 %t31, 1
  br i1 %t33, label %bb4, label %bb5
bb4:
  call void @__olang_errpay_pop()
  br label %bb5
bb5:
  br label %bb6
bb6:
  br label %bb7
bb7:
  %t35 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t40 = call i32 @std_2fos_2eWriteFile(ptr %s0, ptr %v2, { i64, ptr } %t35, { i64, ptr } %a2)
  store i32 %t40, ptr %l17
  %t41 = icmp ne i32 %t40, 0
  br i1 %t41, label %bb9, label %ok.42, !prof !99
ok.42:
  br label %bb8
bb8:
  br label %bb13
bb9:
  %t43 = load i32, ptr %l17, !tbaa !23
  %t44 = ashr i32 %t43, 16
  %t46 = icmp eq i32 %t44, 1
  store i1 %t46, ptr %l19, !tbaa !21
  %t47 = load i32, ptr %l17, !tbaa !23
  %t48 = ashr i32 %t47, 16
  %t50 = icmp eq i32 %t48, 1
  br i1 %t50, label %bb10, label %bb11
bb10:
  call void @__olang_errpay_pop()
  br label %bb11
bb11:
  br label %bb12
bb12:
  br label %bb13
bb13:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2fload_3aModule_2ector(ptr %out, ptr %v0, ptr %v1, ptr %v2, ptr %v3, { i64, ptr } %a0, { i64, ptr } %a1, { i64, ptr } %a2, i1 %a3) #0 {
entry:
  %l4 = alloca { i64, ptr }
  %l5 = alloca { i64, ptr }
  %l6 = alloca { i64, ptr }
  %l7 = alloca i1
  %l8 = alloca i64
  %l9 = alloca i1
  %l10 = alloca ptr
  %l11 = alloca ptr
  %l12 = alloca { i64, ptr }
  %l13 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l14 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l15 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l16 = alloca ptr
  %l17 = alloca ptr
  %l18 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l19 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l20 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l21 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l22 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l23 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l24 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l25 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l26 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l27 = alloca ptr
  %l28 = alloca ptr
  %l29 = alloca ptr
  %l30 = alloca i1
  %l31 = alloca i1
  %l32 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l33 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l34 = alloca i1
  %l35 = alloca { i64, ptr }
  %l36 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l45 = alloca i64
  %l47 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l49 = alloca i64
  %l51 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l53 = alloca i64
  %l55 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l57 = alloca i64
  %l59 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l61 = alloca i64
  %l63 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l65 = alloca i64
  %l67 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l69 = alloca i64
  %l71 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l73 = alloca i64
  %l75 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l77 = alloca i64
  %l79 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l81 = alloca i64
  %l83 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l85 = alloca i64
  %l87 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l89 = alloca i64
  %l91 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l93 = alloca i64
  %l95 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l97 = alloca i64
  %l99 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l101 = alloca i64
  %l103 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l105 = alloca i64
  %l107 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l109 = alloca %"compiler/load:Module"
  br label %start
start:
  br label %bb0
bb0:
  store { i64, ptr } %a0, ptr %l4, !tbaa !27
  store { i64, ptr } %a1, ptr %l5, !tbaa !27
  store { i64, ptr } %a2, ptr %l6, !tbaa !27
  store i1 %a3, ptr %l7, !tbaa !21
  store i64 -1, ptr %l8, !tbaa !24
  store i1 false, ptr %l9, !tbaa !21
  store ptr null, ptr %l10, !tbaa !29
  store ptr null, ptr %l11, !tbaa !29
  %t9 = icmp sge i64 0, 0
  br i1 %t9, label %bb1, label %bb2
bb1:
  %t11 = icmp sle i64 0, 1152921504606846975
  br i1 %t11, label %bb3, label %bb4
bb2:
  call void @__olang_check_failed(ptr @olang_loc_ddd103a03d6047bb_df8a4b94c4d7f62f)
  unreachable
bb3:
  %t13 = mul i64 0, 8
  %t14 = insertvalue { i64, ptr } undef, i64 0, 0
  %t15 = insertvalue { i64, ptr } %t14, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  store { i64, ptr } %t15, ptr %l12, !tbaa !27
  %t17 = ptrtoint ptr %v3 to i64
  store i64 %t17, ptr %l45, !tbaa !24
  %t18 = load i1, ptr @olang_2esole_2ecompiler_2fload_3aModule_2e9
  br i1 %t18, label %bb5, label %bb6
bb4:
  call void @__olang_check_failed(ptr @olang_loc_ddd103a03d6047bb_df8a4b94c4d7f62f)
  unreachable
bb5:
  %t20 = call ptr @__olang_region_make(ptr %v3)
  %t21 = ptrtoint ptr %t20 to i64
  store i64 %t21, ptr %l45, !tbaa !24
  br label %bb6
bb6:
  %t22 = load i64, ptr %l45
  %t23 = inttoptr i64 %t22 to ptr
  %t24 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2ector(ptr %t23, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t24, ptr %l47
  br label %bb7
bb7:
  %t25 = load i1, ptr @olang_2esole_2ecompiler_2fload_3aModule_2e9
  br i1 %t25, label %bb8, label %bb9
bb8:
  %t27 = load i64, ptr %l45
  %t28 = inttoptr i64 %t27 to ptr
  %t29 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l47, i32 0, i32 0
  %t30 = load { i64, ptr }, ptr %t29
  %t31 = extractvalue { i64, ptr } %t30, 1
  %t32 = call ptr @__olang_region_or(ptr %t31, ptr null)
  %t33 = icmp ne ptr %t32, null
  %t34 = select i1 %t33, ptr %t32, ptr null
  %t35 = icmp eq ptr %t34, %t28
  call void @__olang_region_settle(ptr %t28, i1 %t35)
  br label %bb9
bb9:
  %t36 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l47
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t36, ptr %l13
  %t37 = ptrtoint ptr %v3 to i64
  store i64 %t37, ptr %l49, !tbaa !24
  %t38 = load i1, ptr @olang_2esole_2ecompiler_2fload_3aModule_2e10
  br i1 %t38, label %bb10, label %bb11
bb10:
  %t40 = call ptr @__olang_region_make(ptr %v3)
  %t41 = ptrtoint ptr %t40 to i64
  store i64 %t41, ptr %l49, !tbaa !24
  br label %bb11
bb11:
  %t42 = load i64, ptr %l49
  %t43 = inttoptr i64 %t42 to ptr
  %t44 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2ector(ptr %t43, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t44, ptr %l51
  br label %bb12
bb12:
  %t45 = load i1, ptr @olang_2esole_2ecompiler_2fload_3aModule_2e10
  br i1 %t45, label %bb13, label %bb14
bb13:
  %t47 = load i64, ptr %l49
  %t48 = inttoptr i64 %t47 to ptr
  %t49 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l51, i32 0, i32 0
  %t50 = load { i64, ptr }, ptr %t49
  %t51 = extractvalue { i64, ptr } %t50, 1
  %t52 = call ptr @__olang_region_or(ptr %t51, ptr null)
  %t53 = icmp ne ptr %t52, null
  %t54 = select i1 %t53, ptr %t52, ptr null
  %t55 = icmp eq ptr %t54, %t48
  call void @__olang_region_settle(ptr %t48, i1 %t55)
  br label %bb14
bb14:
  %t56 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l51
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t56, ptr %l14
  %t57 = ptrtoint ptr %v3 to i64
  store i64 %t57, ptr %l53, !tbaa !24
  %t58 = load i1, ptr @olang_2esole_2ecompiler_2fload_3aModule_2e11
  br i1 %t58, label %bb15, label %bb16
bb15:
  %t60 = call ptr @__olang_region_make(ptr %v3)
  %t61 = ptrtoint ptr %t60 to i64
  store i64 %t61, ptr %l53, !tbaa !24
  br label %bb16
bb16:
  %t62 = load i64, ptr %l53
  %t63 = inttoptr i64 %t62 to ptr
  %t64 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fload_3aImport_3e_2ector(ptr %t63, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t64, ptr %l55
  br label %bb17
bb17:
  %t65 = load i1, ptr @olang_2esole_2ecompiler_2fload_3aModule_2e11
  br i1 %t65, label %bb18, label %bb19
bb18:
  %t67 = load i64, ptr %l53
  %t68 = inttoptr i64 %t67 to ptr
  %t69 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l55, i32 0, i32 0
  %t70 = load { i64, ptr }, ptr %t69
  %t71 = extractvalue { i64, ptr } %t70, 1
  %t72 = call ptr @__olang_region_or(ptr %t71, ptr null)
  %t73 = icmp ne ptr %t72, null
  %t74 = select i1 %t73, ptr %t72, ptr null
  %t75 = icmp eq ptr %t74, %t68
  call void @__olang_region_settle(ptr %t68, i1 %t75)
  br label %bb19
bb19:
  %t76 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l55
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t76, ptr %l15
  store ptr null, ptr %l16, !tbaa !29
  store ptr null, ptr %l17, !tbaa !29
  %t77 = ptrtoint ptr %v3 to i64
  store i64 %t77, ptr %l57, !tbaa !24
  %t78 = load i1, ptr @olang_2esole_2ecompiler_2fload_3aModule_2e14
  br i1 %t78, label %bb20, label %bb21
bb20:
  %t80 = call ptr @__olang_region_make(ptr %v3)
  %t81 = ptrtoint ptr %t80 to i64
  store i64 %t81, ptr %l57, !tbaa !24
  br label %bb21
bb21:
  %t82 = load i64, ptr %l57
  %t83 = inttoptr i64 %t82 to ptr
  %t84 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI32_3e_2ector(ptr %t83, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t84, ptr %l59
  br label %bb22
bb22:
  %t85 = load i1, ptr @olang_2esole_2ecompiler_2fload_3aModule_2e14
  br i1 %t85, label %bb23, label %bb24
bb23:
  %t87 = load i64, ptr %l57
  %t88 = inttoptr i64 %t87 to ptr
  %t89 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l59, i32 0, i32 0
  %t90 = load { i64, ptr }, ptr %t89
  %t91 = extractvalue { i64, ptr } %t90, 1
  %t92 = call ptr @__olang_region_or(ptr %t91, ptr null)
  %t93 = icmp ne ptr %t92, null
  %t94 = select i1 %t93, ptr %t92, ptr null
  %t95 = icmp eq ptr %t94, %t88
  call void @__olang_region_settle(ptr %t88, i1 %t95)
  br label %bb24
bb24:
  %t96 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l59
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t96, ptr %l18
  %t97 = ptrtoint ptr %v3 to i64
  store i64 %t97, ptr %l61, !tbaa !24
  %t98 = load i1, ptr @olang_2esole_2ecompiler_2fload_3aModule_2e15
  br i1 %t98, label %bb25, label %bb26
bb25:
  %t100 = call ptr @__olang_region_make(ptr %v3)
  %t101 = ptrtoint ptr %t100 to i64
  store i64 %t101, ptr %l61, !tbaa !24
  br label %bb26
bb26:
  %t102 = load i64, ptr %l61
  %t103 = inttoptr i64 %t102 to ptr
  %t104 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %t103, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t104, ptr %l63
  br label %bb27
bb27:
  %t105 = load i1, ptr @olang_2esole_2ecompiler_2fload_3aModule_2e15
  br i1 %t105, label %bb28, label %bb29
bb28:
  %t107 = load i64, ptr %l61
  %t108 = inttoptr i64 %t107 to ptr
  %t109 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l63, i32 0, i32 0
  %t110 = load { i64, ptr }, ptr %t109
  %t111 = extractvalue { i64, ptr } %t110, 1
  %t112 = call ptr @__olang_region_or(ptr %t111, ptr null)
  %t113 = icmp ne ptr %t112, null
  %t114 = select i1 %t113, ptr %t112, ptr null
  %t115 = icmp eq ptr %t114, %t108
  call void @__olang_region_settle(ptr %t108, i1 %t115)
  br label %bb29
bb29:
  %t116 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l63
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t116, ptr %l19
  %t117 = ptrtoint ptr %v3 to i64
  store i64 %t117, ptr %l65, !tbaa !24
  %t118 = load i1, ptr @olang_2esole_2ecompiler_2fload_3aModule_2e16
  br i1 %t118, label %bb30, label %bb31
bb30:
  %t120 = call ptr @__olang_region_make(ptr %v3)
  %t121 = ptrtoint ptr %t120 to i64
  store i64 %t121, ptr %l65, !tbaa !24
  br label %bb31
bb31:
  %t122 = load i64, ptr %l65
  %t123 = inttoptr i64 %t122 to ptr
  %t124 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %t123, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t124, ptr %l67
  br label %bb32
bb32:
  %t125 = load i1, ptr @olang_2esole_2ecompiler_2fload_3aModule_2e16
  br i1 %t125, label %bb33, label %bb34
bb33:
  %t127 = load i64, ptr %l65
  %t128 = inttoptr i64 %t127 to ptr
  %t129 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l67, i32 0, i32 0
  %t130 = load { i64, ptr }, ptr %t129
  %t131 = extractvalue { i64, ptr } %t130, 1
  %t132 = call ptr @__olang_region_or(ptr %t131, ptr null)
  %t133 = icmp ne ptr %t132, null
  %t134 = select i1 %t133, ptr %t132, ptr null
  %t135 = icmp eq ptr %t134, %t128
  call void @__olang_region_settle(ptr %t128, i1 %t135)
  br label %bb34
bb34:
  %t136 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l67
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t136, ptr %l20
  %t137 = ptrtoint ptr %v3 to i64
  store i64 %t137, ptr %l69, !tbaa !24
  %t138 = load i1, ptr @olang_2esole_2ecompiler_2fload_3aModule_2e17
  br i1 %t138, label %bb35, label %bb36
bb35:
  %t140 = call ptr @__olang_region_make(ptr %v3)
  %t141 = ptrtoint ptr %t140 to i64
  store i64 %t141, ptr %l69, !tbaa !24
  br label %bb36
bb36:
  %t142 = load i64, ptr %l69
  %t143 = inttoptr i64 %t142 to ptr
  %t144 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cBool_3e_2ector(ptr %t143, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t144, ptr %l71
  br label %bb37
bb37:
  %t145 = load i1, ptr @olang_2esole_2ecompiler_2fload_3aModule_2e17
  br i1 %t145, label %bb38, label %bb39
bb38:
  %t147 = load i64, ptr %l69
  %t148 = inttoptr i64 %t147 to ptr
  %t149 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l71, i32 0, i32 0
  %t150 = load { i64, ptr }, ptr %t149
  %t151 = extractvalue { i64, ptr } %t150, 1
  %t152 = call ptr @__olang_region_or(ptr %t151, ptr null)
  %t153 = icmp ne ptr %t152, null
  %t154 = select i1 %t153, ptr %t152, ptr null
  %t155 = icmp eq ptr %t154, %t148
  call void @__olang_region_settle(ptr %t148, i1 %t155)
  br label %bb39
bb39:
  %t156 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l71
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t156, ptr %l21
  %t157 = ptrtoint ptr %v3 to i64
  store i64 %t157, ptr %l73, !tbaa !24
  %t158 = load i1, ptr @olang_2esole_2ecompiler_2fload_3aModule_2e18
  br i1 %t158, label %bb40, label %bb41
bb40:
  %t160 = call ptr @__olang_region_make(ptr %v3)
  %t161 = ptrtoint ptr %t160 to i64
  store i64 %t161, ptr %l73, !tbaa !24
  br label %bb41
bb41:
  %t162 = load i64, ptr %l73
  %t163 = inttoptr i64 %t162 to ptr
  %t164 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %t163, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t164, ptr %l75
  br label %bb42
bb42:
  %t165 = load i1, ptr @olang_2esole_2ecompiler_2fload_3aModule_2e18
  br i1 %t165, label %bb43, label %bb44
bb43:
  %t167 = load i64, ptr %l73
  %t168 = inttoptr i64 %t167 to ptr
  %t169 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l75, i32 0, i32 0
  %t170 = load { i64, ptr }, ptr %t169
  %t171 = extractvalue { i64, ptr } %t170, 1
  %t172 = call ptr @__olang_region_or(ptr %t171, ptr null)
  %t173 = icmp ne ptr %t172, null
  %t174 = select i1 %t173, ptr %t172, ptr null
  %t175 = icmp eq ptr %t174, %t168
  call void @__olang_region_settle(ptr %t168, i1 %t175)
  br label %bb44
bb44:
  %t176 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l75
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t176, ptr %l22
  %t177 = ptrtoint ptr %v3 to i64
  store i64 %t177, ptr %l77, !tbaa !24
  %t178 = load i1, ptr @olang_2esole_2ecompiler_2fload_3aModule_2e19
  br i1 %t178, label %bb45, label %bb46
bb45:
  %t180 = call ptr @__olang_region_make(ptr %v3)
  %t181 = ptrtoint ptr %t180 to i64
  store i64 %t181, ptr %l77, !tbaa !24
  br label %bb46
bb46:
  %t182 = load i64, ptr %l77
  %t183 = inttoptr i64 %t182 to ptr
  %t184 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %t183, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t184, ptr %l79
  br label %bb47
bb47:
  %t185 = load i1, ptr @olang_2esole_2ecompiler_2fload_3aModule_2e19
  br i1 %t185, label %bb48, label %bb49
bb48:
  %t187 = load i64, ptr %l77
  %t188 = inttoptr i64 %t187 to ptr
  %t189 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l79, i32 0, i32 0
  %t190 = load { i64, ptr }, ptr %t189
  %t191 = extractvalue { i64, ptr } %t190, 1
  %t192 = call ptr @__olang_region_or(ptr %t191, ptr null)
  %t193 = icmp ne ptr %t192, null
  %t194 = select i1 %t193, ptr %t192, ptr null
  %t195 = icmp eq ptr %t194, %t188
  call void @__olang_region_settle(ptr %t188, i1 %t195)
  br label %bb49
bb49:
  %t196 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l79
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t196, ptr %l23
  %t197 = ptrtoint ptr %v3 to i64
  store i64 %t197, ptr %l81, !tbaa !24
  %t198 = load i1, ptr @olang_2esole_2ecompiler_2fload_3aModule_2e20
  br i1 %t198, label %bb50, label %bb51
bb50:
  %t200 = call ptr @__olang_region_make(ptr %v3)
  %t201 = ptrtoint ptr %t200 to i64
  store i64 %t201, ptr %l81, !tbaa !24
  br label %bb51
bb51:
  %t202 = load i64, ptr %l81
  %t203 = inttoptr i64 %t202 to ptr
  %t204 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %t203, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t204, ptr %l83
  br label %bb52
bb52:
  %t205 = load i1, ptr @olang_2esole_2ecompiler_2fload_3aModule_2e20
  br i1 %t205, label %bb53, label %bb54
bb53:
  %t207 = load i64, ptr %l81
  %t208 = inttoptr i64 %t207 to ptr
  %t209 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l83, i32 0, i32 0
  %t210 = load { i64, ptr }, ptr %t209
  %t211 = extractvalue { i64, ptr } %t210, 1
  %t212 = call ptr @__olang_region_or(ptr %t211, ptr null)
  %t213 = icmp ne ptr %t212, null
  %t214 = select i1 %t213, ptr %t212, ptr null
  %t215 = icmp eq ptr %t214, %t208
  call void @__olang_region_settle(ptr %t208, i1 %t215)
  br label %bb54
bb54:
  %t216 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l83
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t216, ptr %l24
  %t217 = ptrtoint ptr %v3 to i64
  store i64 %t217, ptr %l85, !tbaa !24
  %t218 = load i1, ptr @olang_2esole_2ecompiler_2fload_3aModule_2e21
  br i1 %t218, label %bb55, label %bb56
bb55:
  %t220 = call ptr @__olang_region_make(ptr %v3)
  %t221 = ptrtoint ptr %t220 to i64
  store i64 %t221, ptr %l85, !tbaa !24
  br label %bb56
bb56:
  %t222 = load i64, ptr %l85
  %t223 = inttoptr i64 %t222 to ptr
  %t224 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %t223, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t224, ptr %l87
  br label %bb57
bb57:
  %t225 = load i1, ptr @olang_2esole_2ecompiler_2fload_3aModule_2e21
  br i1 %t225, label %bb58, label %bb59
bb58:
  %t227 = load i64, ptr %l85
  %t228 = inttoptr i64 %t227 to ptr
  %t229 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l87, i32 0, i32 0
  %t230 = load { i64, ptr }, ptr %t229
  %t231 = extractvalue { i64, ptr } %t230, 1
  %t232 = call ptr @__olang_region_or(ptr %t231, ptr null)
  %t233 = icmp ne ptr %t232, null
  %t234 = select i1 %t233, ptr %t232, ptr null
  %t235 = icmp eq ptr %t234, %t228
  call void @__olang_region_settle(ptr %t228, i1 %t235)
  br label %bb59
bb59:
  %t236 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l87
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t236, ptr %l25
  %t237 = ptrtoint ptr %v3 to i64
  store i64 %t237, ptr %l89, !tbaa !24
  %t238 = load i1, ptr @olang_2esole_2ecompiler_2fload_3aModule_2e22
  br i1 %t238, label %bb60, label %bb61
bb60:
  %t240 = call ptr @__olang_region_make(ptr %v3)
  %t241 = ptrtoint ptr %t240 to i64
  store i64 %t241, ptr %l89, !tbaa !24
  br label %bb61
bb61:
  %t242 = load i64, ptr %l89
  %t243 = inttoptr i64 %t242 to ptr
  %t244 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %t243, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t244, ptr %l91
  br label %bb62
bb62:
  %t245 = load i1, ptr @olang_2esole_2ecompiler_2fload_3aModule_2e22
  br i1 %t245, label %bb63, label %bb64
bb63:
  %t247 = load i64, ptr %l89
  %t248 = inttoptr i64 %t247 to ptr
  %t249 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l91, i32 0, i32 0
  %t250 = load { i64, ptr }, ptr %t249
  %t251 = extractvalue { i64, ptr } %t250, 1
  %t252 = call ptr @__olang_region_or(ptr %t251, ptr null)
  %t253 = icmp ne ptr %t252, null
  %t254 = select i1 %t253, ptr %t252, ptr null
  %t255 = icmp eq ptr %t254, %t248
  call void @__olang_region_settle(ptr %t248, i1 %t255)
  br label %bb64
bb64:
  %t256 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l91
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t256, ptr %l26
  store ptr null, ptr %l27, !tbaa !29
  store ptr null, ptr %l28, !tbaa !29
  store ptr null, ptr %l29, !tbaa !29
  store i1 false, ptr %l30, !tbaa !21
  store i1 false, ptr %l31, !tbaa !21
  %t257 = ptrtoint ptr %v3 to i64
  store i64 %t257, ptr %l93, !tbaa !24
  %t258 = load i1, ptr @olang_2esole_2ecompiler_2fload_3aModule_2e28
  br i1 %t258, label %bb65, label %bb66
bb65:
  %t260 = call ptr @__olang_region_make(ptr %v3)
  %t261 = ptrtoint ptr %t260 to i64
  store i64 %t261, ptr %l93, !tbaa !24
  br label %bb66
bb66:
  %t262 = load i64, ptr %l93
  %t263 = inttoptr i64 %t262 to ptr
  %t264 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %t263, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t264, ptr %l95
  br label %bb67
bb67:
  %t265 = load i1, ptr @olang_2esole_2ecompiler_2fload_3aModule_2e28
  br i1 %t265, label %bb68, label %bb69
bb68:
  %t267 = load i64, ptr %l93
  %t268 = inttoptr i64 %t267 to ptr
  %t269 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l95, i32 0, i32 0
  %t270 = load { i64, ptr }, ptr %t269
  %t271 = extractvalue { i64, ptr } %t270, 1
  %t272 = call ptr @__olang_region_or(ptr %t271, ptr null)
  %t273 = icmp ne ptr %t272, null
  %t274 = select i1 %t273, ptr %t272, ptr null
  %t275 = icmp eq ptr %t274, %t268
  call void @__olang_region_settle(ptr %t268, i1 %t275)
  br label %bb69
bb69:
  %t276 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l95
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t276, ptr %l32
  %t277 = ptrtoint ptr %v3 to i64
  store i64 %t277, ptr %l97, !tbaa !24
  %t278 = load i1, ptr @olang_2esole_2ecompiler_2fload_3aModule_2e29
  br i1 %t278, label %bb70, label %bb71
bb70:
  %t280 = call ptr @__olang_region_make(ptr %v3)
  %t281 = ptrtoint ptr %t280 to i64
  store i64 %t281, ptr %l97, !tbaa !24
  br label %bb71
bb71:
  %t282 = load i64, ptr %l97
  %t283 = inttoptr i64 %t282 to ptr
  %t284 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2ector(ptr %t283, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t284, ptr %l99
  br label %bb72
bb72:
  %t285 = load i1, ptr @olang_2esole_2ecompiler_2fload_3aModule_2e29
  br i1 %t285, label %bb73, label %bb74
bb73:
  %t287 = load i64, ptr %l97
  %t288 = inttoptr i64 %t287 to ptr
  %t289 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l99, i32 0, i32 0
  %t290 = load { i64, ptr }, ptr %t289
  %t291 = extractvalue { i64, ptr } %t290, 1
  %t292 = call ptr @__olang_region_or(ptr %t291, ptr null)
  %t293 = icmp ne ptr %t292, null
  %t294 = select i1 %t293, ptr %t292, ptr null
  %t295 = icmp eq ptr %t294, %t288
  call void @__olang_region_settle(ptr %t288, i1 %t295)
  br label %bb74
bb74:
  %t296 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l99
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t296, ptr %l33
  store i1 false, ptr %l34, !tbaa !21
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d83, i32 0, i32 1) }, ptr %l35, !tbaa !27
  %t297 = ptrtoint ptr %v3 to i64
  store i64 %t297, ptr %l101, !tbaa !24
  %t298 = load i1, ptr @olang_2esole_2ecompiler_2fload_3aModule_2e32
  br i1 %t298, label %bb75, label %bb76
bb75:
  %t300 = call ptr @__olang_region_make(ptr %v3)
  %t301 = ptrtoint ptr %t300 to i64
  store i64 %t301, ptr %l101, !tbaa !24
  br label %bb76
bb76:
  %t302 = load i64, ptr %l101
  %t303 = inttoptr i64 %t302 to ptr
  %t304 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aStr_H4eff2894ad89de6e140d6d54faebb689(ptr %t303)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t304, ptr %l103
  br label %bb77
bb77:
  %t305 = load i1, ptr @olang_2esole_2ecompiler_2fload_3aModule_2e32
  br i1 %t305, label %bb78, label %bb79
bb78:
  %t307 = load i64, ptr %l101
  %t308 = inttoptr i64 %t307 to ptr
  %t309 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l103, i32 0, i32 2
  %t310 = load { i64, ptr }, ptr %t309
  %t311 = extractvalue { i64, ptr } %t310, 1
  %t312 = call ptr @__olang_region_or(ptr %t311, ptr null)
  %t313 = icmp ne ptr %t312, null
  %t314 = select i1 %t313, ptr %t312, ptr null
  %t315 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l103, i32 0, i32 1
  %t316 = load { i64, ptr }, ptr %t315
  %t317 = extractvalue { i64, ptr } %t316, 1
  %t318 = call ptr @__olang_region_or(ptr %t317, ptr null)
  %t319 = icmp ne ptr %t318, null
  %t320 = select i1 %t319, ptr %t318, ptr %t314
  %t321 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l103, i32 0, i32 0
  %t322 = load { i64, ptr }, ptr %t321
  %t323 = extractvalue { i64, ptr } %t322, 1
  %t324 = call ptr @__olang_region_or(ptr %t323, ptr null)
  %t325 = icmp ne ptr %t324, null
  %t326 = select i1 %t325, ptr %t324, ptr %t320
  %t327 = icmp eq ptr %t326, %t308
  call void @__olang_region_settle(ptr %t308, i1 %t327)
  br label %bb79
bb79:
  %t328 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l103
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t328, ptr %l36
  %t329 = ptrtoint ptr %v3 to i64
  store i64 %t329, ptr %l105, !tbaa !24
  %t330 = load i1, ptr @olang_2esole_2ecompiler_2fload_3aModule_2e33
  br i1 %t330, label %bb80, label %bb81
bb80:
  %t332 = call ptr @__olang_region_make(ptr %v3)
  %t333 = ptrtoint ptr %t332 to i64
  store i64 %t333, ptr %l105, !tbaa !24
  br label %bb81
bb81:
  %t334 = load i64, ptr %l105
  %t335 = inttoptr i64 %t334 to ptr
  %t336 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aStr_H4eff2894ad89de6e140d6d54faebb689(ptr %t335)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t336, ptr %l107
  br label %bb82
bb82:
  %t337 = load i1, ptr @olang_2esole_2ecompiler_2fload_3aModule_2e33
  br i1 %t337, label %bb83, label %bb84
bb83:
  %t339 = load i64, ptr %l105
  %t340 = inttoptr i64 %t339 to ptr
  %t341 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l107, i32 0, i32 2
  %t342 = load { i64, ptr }, ptr %t341
  %t343 = extractvalue { i64, ptr } %t342, 1
  %t344 = call ptr @__olang_region_or(ptr %t343, ptr null)
  %t345 = icmp ne ptr %t344, null
  %t346 = select i1 %t345, ptr %t344, ptr null
  %t347 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l107, i32 0, i32 1
  %t348 = load { i64, ptr }, ptr %t347
  %t349 = extractvalue { i64, ptr } %t348, 1
  %t350 = call ptr @__olang_region_or(ptr %t349, ptr null)
  %t351 = icmp ne ptr %t350, null
  %t352 = select i1 %t351, ptr %t350, ptr %t346
  %t353 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l107, i32 0, i32 0
  %t354 = load { i64, ptr }, ptr %t353
  %t355 = extractvalue { i64, ptr } %t354, 1
  %t356 = call ptr @__olang_region_or(ptr %t355, ptr null)
  %t357 = icmp ne ptr %t356, null
  %t358 = select i1 %t357, ptr %t356, ptr %t352
  %t359 = icmp eq ptr %t358, %t340
  call void @__olang_region_settle(ptr %t340, i1 %t359)
  br label %bb84
bb84:
  %t360 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l107
  %t361 = getelementptr %"compiler/load:Module", ptr %l109, i32 0, i32 0
  %t362 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t362, ptr %t361, !tbaa !27
  %t363 = getelementptr %"compiler/load:Module", ptr %l109, i32 0, i32 1
  %t364 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t364, ptr %t363, !tbaa !27
  %t365 = getelementptr %"compiler/load:Module", ptr %l109, i32 0, i32 2
  %t366 = load { i64, ptr }, ptr %l6, !tbaa !27
  store { i64, ptr } %t366, ptr %t365, !tbaa !27
  %t367 = getelementptr %"compiler/load:Module", ptr %l109, i32 0, i32 3
  %t368 = load i1, ptr %l7, !tbaa !21
  store i1 %t368, ptr %t367, !tbaa !21
  %t369 = getelementptr %"compiler/load:Module", ptr %l109, i32 0, i32 4
  %t370 = load i64, ptr %l8, !tbaa !24
  store i64 %t370, ptr %t369, !tbaa !24
  %t371 = getelementptr %"compiler/load:Module", ptr %l109, i32 0, i32 5
  %t372 = load i1, ptr %l9, !tbaa !21
  store i1 %t372, ptr %t371, !tbaa !21
  %t373 = getelementptr %"compiler/load:Module", ptr %l109, i32 0, i32 6
  %t374 = load ptr, ptr %l10, !tbaa !29
  store ptr %t374, ptr %t373, !tbaa !29
  %t375 = getelementptr %"compiler/load:Module", ptr %l109, i32 0, i32 7
  %t376 = load ptr, ptr %l11, !tbaa !29
  store ptr %t376, ptr %t375, !tbaa !29
  %t377 = getelementptr %"compiler/load:Module", ptr %l109, i32 0, i32 8
  %t378 = load { i64, ptr }, ptr %l12, !tbaa !27
  store { i64, ptr } %t378, ptr %t377, !tbaa !27
  %t379 = getelementptr %"compiler/load:Module", ptr %l109, i32 0, i32 9
  %t380 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l13
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t380, ptr %t379
  %t381 = getelementptr %"compiler/load:Module", ptr %l109, i32 0, i32 10
  %t382 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l14
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t382, ptr %t381
  %t383 = getelementptr %"compiler/load:Module", ptr %l109, i32 0, i32 11
  %t384 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l15
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t384, ptr %t383
  %t385 = getelementptr %"compiler/load:Module", ptr %l109, i32 0, i32 12
  %t386 = load ptr, ptr %l16, !tbaa !29
  store ptr %t386, ptr %t385, !tbaa !29
  %t387 = getelementptr %"compiler/load:Module", ptr %l109, i32 0, i32 13
  %t388 = load ptr, ptr %l17, !tbaa !29
  store ptr %t388, ptr %t387, !tbaa !29
  %t389 = getelementptr %"compiler/load:Module", ptr %l109, i32 0, i32 14
  %t390 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l18
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t390, ptr %t389
  %t391 = getelementptr %"compiler/load:Module", ptr %l109, i32 0, i32 15
  %t392 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l19
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t392, ptr %t391
  %t393 = getelementptr %"compiler/load:Module", ptr %l109, i32 0, i32 16
  %t394 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l20
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t394, ptr %t393
  %t395 = getelementptr %"compiler/load:Module", ptr %l109, i32 0, i32 17
  %t396 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l21
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t396, ptr %t395
  %t397 = getelementptr %"compiler/load:Module", ptr %l109, i32 0, i32 18
  %t398 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l22
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t398, ptr %t397
  %t399 = getelementptr %"compiler/load:Module", ptr %l109, i32 0, i32 19
  %t400 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l23
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t400, ptr %t399
  %t401 = getelementptr %"compiler/load:Module", ptr %l109, i32 0, i32 20
  %t402 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l24
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t402, ptr %t401
  %t403 = getelementptr %"compiler/load:Module", ptr %l109, i32 0, i32 21
  %t404 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l25
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t404, ptr %t403
  %t405 = getelementptr %"compiler/load:Module", ptr %l109, i32 0, i32 22
  %t406 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l26
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t406, ptr %t405
  %t407 = getelementptr %"compiler/load:Module", ptr %l109, i32 0, i32 23
  %t408 = load ptr, ptr %l27, !tbaa !29
  store ptr %t408, ptr %t407, !tbaa !29
  %t409 = getelementptr %"compiler/load:Module", ptr %l109, i32 0, i32 24
  %t410 = load ptr, ptr %l28, !tbaa !29
  store ptr %t410, ptr %t409, !tbaa !29
  %t411 = getelementptr %"compiler/load:Module", ptr %l109, i32 0, i32 25
  %t412 = load ptr, ptr %l29, !tbaa !29
  store ptr %t412, ptr %t411, !tbaa !29
  %t413 = getelementptr %"compiler/load:Module", ptr %l109, i32 0, i32 26
  %t414 = load i1, ptr %l30, !tbaa !21
  store i1 %t414, ptr %t413, !tbaa !21
  %t415 = getelementptr %"compiler/load:Module", ptr %l109, i32 0, i32 27
  %t416 = load i1, ptr %l31, !tbaa !21
  store i1 %t416, ptr %t415, !tbaa !21
  %t417 = getelementptr %"compiler/load:Module", ptr %l109, i32 0, i32 28
  %t418 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l32
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t418, ptr %t417
  %t419 = getelementptr %"compiler/load:Module", ptr %l109, i32 0, i32 29
  %t420 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l33
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t420, ptr %t419
  %t421 = getelementptr %"compiler/load:Module", ptr %l109, i32 0, i32 30
  %t422 = load i1, ptr %l34, !tbaa !21
  store i1 %t422, ptr %t421, !tbaa !21
  %t423 = getelementptr %"compiler/load:Module", ptr %l109, i32 0, i32 31
  %t424 = load { i64, ptr }, ptr %l35, !tbaa !27
  store { i64, ptr } %t424, ptr %t423, !tbaa !27
  %t425 = getelementptr %"compiler/load:Module", ptr %l109, i32 0, i32 32
  %t426 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l36
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t426, ptr %t425
  %t427 = getelementptr %"compiler/load:Module", ptr %l109, i32 0, i32 33
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t360, ptr %t427
  call void @llvm.memmove.p0.p0.i64(ptr %out, ptr %l109, i64 768, i1 false)
  br label %ret
ret:
  ret void
}

@.d0 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"/" }>, align 8
@.d1 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c".olang" }>, align 8
@.d2 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c".h" }>, align 8
@.d3 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c".c" }>, align 8
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
@.d4 = private constant <{ i64, [11 x i8] }> <{ i64 0, [11 x i8] c"std/prelude" }>, align 8
@.d5 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
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
@.d6 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"/" }>, align 8
@.d7 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"." }>, align 8
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
@.d8 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"linux" }>, align 8
@.d9 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"x86_64" }>, align 8
@.d10 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"x86-64" }>, align 8
@olang_2esole_2ecompiler_2fload_3aLoader_2e2 = weak hidden constant i1 false
declare ptr @__olang_region_make(ptr) noinline
@olang_2esole_2ecompiler_2ffetch_3aFetcher_2e1 = weak hidden constant i1 false
@.d11 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c".cache" }>, align 8
declare void @llvm.memcpy.p0.p0.i64(ptr, ptr, i64, i1)
@.d12 = private constant <{ i64, [16 x i8] }> <{ i64 0, [16 x i8] c"file:///nowhere/" }>, align 8
@olang_2esole_2ecompiler_2fload_3aLoader_2e3 = weak hidden constant i1 false
@.d13 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"std" }>, align 8
@.d14 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"/" }>, align 8
@.d15 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d16 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"." }>, align 8
@.d17 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c".." }>, align 8
@.d18 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c".." }>, align 8
@olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1 = weak hidden constant i1 false
declare void @__olang_region_release(ptr) noinline
@.d19 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"/" }>, align 8
@.d20 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"." }>, align 8
@.d21 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c".deps" }>, align 8
declare void @__olang_errpay_pop()
@.d22 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d23 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d24 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d25 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d26 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d27 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d28 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d29 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d30 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c".olang" }>, align 8
@.d31 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d32 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"std/" }>, align 8
@.d33 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d34 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"?" }>, align 8
@olang_2esole_2ecompiler_2fcond_3aGlobal_2e0 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2fcond_3aGlobal_2e3 = weak hidden constant i1 false
@.d35 = private constant <{ i64, [27 x i8] }> <{ i64 0, [27 x i8] c"an empty path names no file" }>, align 8
@.d36 = private constant <{ i64, [33 x i8] }> <{ i64 0, [33 x i8] c"a path of 4096 characters or more" }>, align 8
@.d37 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d38 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"/" }>, align 8
@.d39 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"." }>, align 8
@.d40 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"/" }>, align 8
@.d41 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"." }>, align 8
@.d42 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"." }>, align 8
@.d43 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c".." }>, align 8
@.d44 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d45 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"std/" }>, align 8
@.d46 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"std" }>, align 8
@.d47 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"/" }>, align 8
@.d48 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d49 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"/" }>, align 8
@.d50 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"/" }>, align 8
@.d51 = private constant <{ i64, [10 x i8] }> <{ i64 0, [10 x i8] c"it leaves " }>, align 8
@.d52 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d53 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d54 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"std" }>, align 8
@.d55 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"/" }>, align 8
@.d56 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d57 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d58 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"/" }>, align 8
@.d59 = private constant <{ i64, [10 x i8] }> <{ i64 0, [10 x i8] c"it leaves " }>, align 8
@.d60 = private constant <{ i64, [16 x i8] }> <{ i64 0, [16 x i8] c", through a link" }>, align 8
@.d61 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c"no file " }>, align 8
@.d62 = private constant <{ i64, [15 x i8] }> <{ i64 0, [15 x i8] c" is a directory" }>, align 8
@.d63 = private constant <{ i64, [15 x i8] }> <{ i64 0, [15 x i8] c" cannot be read" }>, align 8
declare noalias ptr @__olang_scope_alloc_zeroed(ptr, i64)
@olang_2esole_2estd_2fprelude_2fmap_3aMapEntry_3cstd_2fprelude_2ftext_3aString_26_2c_20Array_3cU8_3e_26_3e_2e0 = weak hidden constant i1 false
@.d64 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
define linkonce_odr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20Bool_3e(ptr %v0) #0 {
entry:
  %l0 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %rv = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  br label %start
start:
  br label %bb0
bb0:
  %t1 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20Bool_3e_2ector(ptr %v0)
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

@.d65 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d66 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c"prelude" }>, align 8
@.d67 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c".olang" }>, align 8
@.d68 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d69 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"-l" }>, align 8
@olang_2esole_2estd_2fprelude_2fmap_3aMapEntry_3cstd_2fprelude_2ftext_3aString_26_2c_20Bool_3e_2e0 = weak hidden constant i1 false
@.d70 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d71 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d72 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d73 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d74 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d75 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
declare i64 @__olang_fmt_i64(ptr, i64)
@.d76 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"." }>, align 8
@.d77 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c".tmp" }>, align 8
@.d78 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"/" }>, align 8
@.d79 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"/" }>, align 8
@.d80 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"." }>, align 8
@.d81 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"/" }>, align 8
@.d82 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"/" }>, align 8
@__olang_empty_array = external constant [16 x i64]
@olang_2esole_2ecompiler_2fload_3aModule_2e9 = weak hidden constant i1 false
declare ptr @__olang_region_or(ptr, ptr)
declare void @__olang_region_settle(ptr, i1)
@olang_2esole_2ecompiler_2fload_3aModule_2e10 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2fload_3aModule_2e11 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2fload_3aModule_2e14 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2fload_3aModule_2e15 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2fload_3aModule_2e16 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2fload_3aModule_2e17 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2fload_3aModule_2e18 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2fload_3aModule_2e19 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2fload_3aModule_2e20 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2fload_3aModule_2e21 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2fload_3aModule_2e22 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2fload_3aModule_2e28 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2fload_3aModule_2e29 = weak hidden constant i1 false
@.d83 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@olang_2esole_2ecompiler_2fload_3aModule_2e32 = weak hidden constant i1 false
define linkonce_odr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aStr_H4eff2894ad89de6e140d6d54faebb689(ptr %v0) #0 {
entry:
  %l0 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %rv = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  br label %start
start:
  br label %bb0
bb0:
  %t1 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20std_2fprelude_2ftext_3aString_26_3e_2ector(ptr %v0)
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

@olang_2esole_2ecompiler_2fload_3aModule_2e33 = weak hidden constant i1 false
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
declare i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aChar_2eIsLetter(i8 %a0)
declare i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aChar_2eIsDigit(i8 %a0)
declare { i32, i64 } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eFindLast(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
declare i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEndsWith(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
@olang_loc_30f594fd977814cf_401937ed3e69cedb = external constant [0 x i8]
declare i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
@olang_loc_1c8bacfe99267df9_69ae7b78a686d77d = external constant [0 x i8]
declare void @compiler_2fcond_3aConsts_2ector(ptr %out, ptr %v0)
declare void @compiler_2fcond_2ecompiler_2fcond_3aConsts_2eBuiltins(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, { i64, ptr } %a1, { i64, ptr } %a2, { i64, ptr } %a3, i64 %a4, i64 %a5, i1 %a6, i1 %a7, i1 %a8)
declare void @compiler_2ffetch_3aFetcher_2ector(ptr %out, ptr %v0, ptr %v1, ptr %v2, ptr %v3, { i64, ptr } %a0, { i64, ptr } %a1, { i64, ptr } %a2, i1 %a3, i1 %a4)
declare %"compiler/source:Names" @compiler_2fsource_3aNames_2ector(ptr %v0)
declare void @compiler_2fdiag_3aDiagnostics_2ector(ptr %out, ptr %v0, i1 %a0)
declare void @compiler_2fload_3aLoader_2ector(ptr %out, ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %v5, { i64, ptr } %a0, ptr %a1, ptr %a2, ptr %a3, ptr %a4)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2ector(ptr %v0, i64 %a0)
declare { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eSplit(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1)
declare i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %v0, ptr %a0)
declare { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare { i32, { i64, ptr } } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_Hdc04e7543082eec80486670259c0789b(ptr %v0, ptr %v1, ptr %a0)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare %"std/prelude/text:StringBuilder" @std_2fprelude_2ftext_3aStringBuilder_2ector(ptr %v0)
declare void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePushChar(ptr %v0, ptr %a0, i8 %a1)
declare void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare i64 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eLen(ptr %v0, ptr %a0)
declare { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %v0, ptr %v1, ptr %a0)
declare i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aChar_2eIsUpper(i8 %a0)
declare { i32, { i64, ptr } } @std_2fos_2eReadFile(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare %"std/prelude/text:LineIter" @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eLines(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare { i32, { i64, ptr } } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aLineIter_2eNext(ptr %v0, ptr %v1, ptr %a0)
declare { i32, i64 } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eFindByte(ptr %v0, { i64, ptr } %a0, i8 %a1)
@olang_loc_58a0a66c848bdb67_cd5865ffada34e5b = external constant [0 x i8]
@olang_loc_78711dd37968488a_7166c24cf999555e = external constant [0 x i8]
declare { i32, i64 } @std_2fprelude_2ftext_3aRadix_2ector(ptr %v0, i64 %a0)
declare { i32, i64 } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eParseInt(ptr %v0, { i64, ptr } %a0, i64 %a1)
@olang_loc_dccc239ae56f9ba9_1ecb5d6f56d7fcbd = external constant [0 x i8]
@olang_loc_756dde8889a2c3bc_572c106a043d4f60 = external constant [0 x i8]
declare { i32, %"std/os:FileInfo" } @std_2fos_2eFileInfo_2eStat(ptr %v0, { i64, ptr } %a0)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_Hb2d19b6b5ea5ab5a85c5720545345bd4(ptr %v0, ptr %a0)
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H7bcf2aeb09afa796f4333e6ec8c3f63f(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare { i32, { i64, ptr } } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_Ha4444909f5ef14f7626d25b8f59e6ba2(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1)
@olang_loc_5d2941245b0f1fa7_46eb30867ff7b79b = external constant [0 x i8]
declare i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eAddFile(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1, { i64, ptr } %a2, i1 %a3)
@olang_loc_59c39bf8bbcbf188_f14f86d27dc81ac = external constant [0 x i8]
declare void @compiler_2fparse_3aParser_2ector(ptr %out, ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %v5, ptr %a0, ptr %a1, ptr %a2, ptr %a3, ptr %a4, i64 %a5)
declare %"compiler/cond:Scope" @compiler_2fcond_3aScope_2ector(ptr %v0, i1 %a0)
@olang_loc_4d8cd44e3790675d_2617b874cf4b9361 = external constant [0 x i8]
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %a0)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %a0, i64 %a1)
@olang_loc_37ad9edc8de7e2f6_d0344632fdf871da = external constant [0 x i8]
@olang_loc_ee319d06991d9051_474f59f05ada826d = external constant [0 x i8]
@olang_loc_57e236369a85f00c_b06e30e0c965afa8 = external constant [0 x i8]
declare { i32, ptr } @compiler_2fparse_2ecompiler_2fparse_3aParser_2eExprAt(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
@olang_loc_64a34b454640941_8ed0e4b282ed07d = external constant [0 x i8]
declare i64 @compiler_2fparse_2ecompiler_2fparse_3aParser_2ePos(ptr %v0, ptr %a0)
declare %"compiler/source:Span" @compiler_2fsource_3aSpan_2ector(ptr %v0, i32 %a0, i32 %a1)
@olang_loc_64e62a75e1515ba_854f46de0e9c2096 = external constant [0 x i8]
@olang_loc_edaf45632a5c2555_299361976cec5e59 = external constant [0 x i8]
declare %"compiler/cond:Global" @compiler_2fcond_3aGlobal_2ector(ptr %v0, ptr %v1, ptr %v2, ptr %v3, { i64, ptr } %a0, %"compiler/source:Span" %a1, i1 %a2, { i64, ptr } %a3, ptr %a4, i1 %a5)
declare void @compiler_2fcond_2ecompiler_2fcond_3aScope_2eAdd(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
@olang_loc_9daea36ebb972439_574e08d4d8c23575 = external constant [0 x i8]
declare i1 @std_2fprelude_2farray_2eArray_3cstd_2fprelude_2ftext_3aChar_3e_2eContains_3cstd_2fprelude_2ftext_3aChar_3e(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
declare { i64, ptr } @compiler_2fload_2efirstElems(ptr %v0, ptr %v1, { i64, ptr } %a0, i64 %a1)
declare { i64, ptr } @compiler_2fload_2erelativeIdentity(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1)
declare i1 @std_2fos_2eExists(ptr %v0, { i64, ptr } %a0)
@olang_loc_af475931a368800c_57263df876e21e18 = external constant [0 x i8]
declare i64 @std_2fprelude_2farray_2eArray_3cstd_2fprelude_2ftext_3aChar_3e_2eCountOf_3cstd_2fprelude_2ftext_3aChar_3e(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
declare { i64, ptr } @std_2ffilepath_2eDir(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare { i32, { i64, ptr } } @std_2fos_2eRealPath(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_H31dec199381f6e2bb0c82058ea887922(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare i1 @std_2fos_2eIsDir(ptr %v0, { i64, ptr } %a0)
@olang_loc_5aefafbfcb5eb6b7_7e4be8b78a5947cb = external constant [0 x i8]
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_Ha0f924a08ec45a4a582ec1782d69c4be(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1, { i64, ptr } %a2)
declare { i32, { i64, ptr } } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_H412951a1c1c3c34f4f6a5a14e25e5986(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fload_3aImport_3e_2eLen_3ccompiler_2fload_3aImport_3e(ptr %v0, ptr %a0)
declare %"compiler/load:Import" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fload_3aImport_3e_2eAt_3ccompiler_2fload_3aImport_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare void @compiler_2fload_2ecompiler_2fload_3aLoader_2elinksIn(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, i64 %a1, { i64, ptr } %a2, ptr %a3, ptr %a4)
declare { i64, ptr } @std_2ffilepath_2eJoin(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare { i32, { i64, ptr } } @std_2fos_2eReadDir(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare %"compiler/scan:Tokens" @compiler_2fscan_2eTokens_2eScan(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare ptr @compiler_2fload_2etypeNames(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, ptr %a1)
declare { i64, ptr } @compiler_2fload_2ecompiler_2fload_3aLoader_2erootIdentity(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1)
declare i64 @compiler_2fload_2ecompiler_2fload_3aLoader_2eload(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1, { i64, ptr } %a2, i1 %a3, i1 %a4)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fpair_3aPair_3cI64_2c_20I32_3e_3e_2ector(ptr %v0, i64 %a0)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI32_3e_2eLen_3cI32_3e(ptr %v0, ptr %a0)
declare void @compiler_2fload_2ecompiler_2fload_3aLoader_2edecide(ptr %v0, ptr %a0, i64 %a1, i64 %a2)
declare i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI32_3e_2eAt_3cI32_3e(ptr %v0, ptr %a0, i64 %a1)
declare %"std/pair:Pair.d0636885f2b44490dbc61e56fa468a20" @std_2fpair_3aPair_3cI64_2c_20I32_3e_2ector(ptr %v0, i64 %a0, i32 %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fpair_3aPair_3cI64_2c_20I32_3e_3e_H3d0936d94fa2a15581f68618fbda67e4(ptr %v0, ptr %a0, %"std/pair:Pair.d0636885f2b44490dbc61e56fa468a20" %a1)
@olang_loc_d2a36b1a0f33f2c5_8bb351bc5bea8f1 = external constant [0 x i8]
@olang_loc_c887c5acf0277416_b8456d2f32e25a62 = external constant [0 x i8]
declare i1 @compiler_2fload_2eLinkIsFile(ptr %v0, { i64, ptr } %a0)
declare i1 @std_2ffilepath_2eIsAbs(ptr %v0, { i64, ptr } %a0)
declare { i64, ptr } @compiler_2fmsgs_2eTok(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eLinkName(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eError(ptr %v0, ptr %v1, ptr %a0, { i64, [3 x i64] } %a1, %"compiler/diagmsg:Msg" %a2)
declare i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_H6b5ccacad8db807339a3579aa8c82ff8(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_H2b85ceff512af6e6ca26c554a1c16247(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1, i1 %a2)
declare void @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eChoose(ptr %v0, ptr %a0, i64 %a1)
declare void @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eDrop(ptr %v0, ptr %a0, i64 %a1)
declare void @compiler_2fload_2ecompiler_2fload_3aLoader_2egroups(ptr %v0, ptr %v1, ptr %a0, i64 %a1, { i64, ptr } %a2)
@olang_loc_c7262fe51519f763_af68021c51d3e65f = external constant [0 x i8]
@olang_loc_5374637873936654_bf4b9d38f6a4cac0 = external constant [0 x i8]
@olang_loc_a9d5346f51b5ce49_2177b031869164d5 = external constant [0 x i8]
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %v0, i64 %a0)
declare i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eHas_3cI64_3e(ptr %v0, ptr %a0, i64 %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %a0, i64 %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eImportReachedTwice(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eReexportCycle(ptr %v0, ptr %v1, { i64, ptr } %a0)
@olang_loc_f27e16b36a34913f_9730f0a664aef8cb = external constant [0 x i8]
@olang_loc_f6bd06efaafe5f20_6d37165570c63ddc = external constant [0 x i8]
declare i32 @compiler_2fscan_2ecompiler_2fscan_3aTokens_2eMatch(ptr %v0, ptr %a0, i32 %a1)
@olang_loc_8f863f78ae5527a5_d98381c5cf71b659 = external constant [0 x i8]
declare void @compiler_2fload_2ecompiler_2fload_3aLoader_2echains(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, i64 %a2, { i64, ptr } %a3, i64 %a4)
@olang_loc_d1a77ba1d5054afe_d44f3bbb44d4a532 = external constant [0 x i8]
@olang_loc_ae9d746b68f04eaf_c5efeab384942473 = external constant [0 x i8]
declare { i64, ptr } @compiler_2fparse_2ecompiler_2fparse_3aParser_2eFile(ptr %v0, ptr %v1, ptr %a0)
declare i1 @compiler_2fload_2eifLinks(ptr %v0, ptr %a0)
@olang_loc_192e19daea0c4a8c_84edcc0a58286798 = external constant [0 x i8]
declare { i64, ptr } @compiler_2ftarget_2eWhereIs(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare i32 @std_2fos_2eMkDirAll(ptr %v0, { i64, ptr } %a0)
declare i32 @compiler_2ftarget_2ePid()
declare i32 @std_2fos_2eWriteFile(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
declare i32 @std_2fos_2eRename(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
declare i32 @std_2fos_2eRemove(ptr %v0, { i64, ptr } %a0)
@olang_loc_9a4e1e4457f2709_31a5a56895743715 = external constant [0 x i8]
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eAllSaid(ptr %v0, ptr %v1, ptr %a0)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fdiag_3aSaid_3e_2eLen_3ccompiler_2fdiag_3aSaid_3e(ptr %v0, ptr %a0)
declare %"compiler/diag:Said" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fdiag_3aSaid_3e_2eAt_3ccompiler_2fdiag_3aSaid_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
@olang_loc_ddd103a03d6047bb_df8a4b94c4d7f62f = external constant [0 x i8]
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fload_3aImport_3e_2ector(ptr %v0, i64 %a0)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI32_3e_2ector(ptr %v0, i64 %a0)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cBool_3e_2ector(ptr %v0, i64 %a0)
declare %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20Bool_3e_2ector(ptr %v0)
declare %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20std_2fprelude_2ftext_3aString_26_3e_2ector(ptr %v0)

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
