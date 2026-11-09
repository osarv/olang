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
  %t1 = alloca %"compiler/cond:Consts", align 8
  %t44 = alloca %"compiler/fetch:Fetcher", align 8
  %t66 = alloca %"compiler/diag:Diagnostics", align 8
  %t68 = alloca %"compiler/load:Loader", align 8
  store { i64, ptr } %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  call void @compiler_2fcond_3aConsts_2ector(ptr %t1, ptr %v1)
  call void @llvm.memmove.p0.p0.i64(ptr %l2, ptr %t1, i64 224, i1 false)
  br label %bb1
bb1:
  %t2 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 224, i64 8)
  store ptr %t2, ptr %lp1
  %t3 = load ptr, ptr %lp1
  call void @llvm.memmove.p0.p0.i64(ptr %t3, ptr %l2, i64 224, i1 false)
  %t4 = load ptr, ptr %lp1
  call void @compiler_2fcond_2ecompiler_2fcond_3aConsts_2eBuiltins(ptr %v1, ptr %v1, ptr %v1, ptr %v1, ptr %t4, { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d8, i32 0, i32 1) }, { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d9, i32 0, i32 1) }, { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d10, i32 0, i32 1) }, i64 128, i64 0, i1 false, i1 false, i1 false)
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
  %lp14 = alloca ptr
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
  %l246 = alloca %"compiler/cond:Global"
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
  br label %bb134
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
  br label %bb133
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
  %t282 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t281)
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
  %t291 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 16, i64 8)
  store ptr %t291, ptr %lp14
  %t292 = load { i64, ptr }, ptr %l145, !tbaa !27
  %t293 = load ptr, ptr %lp14
  store { i64, ptr } %t292, ptr %t293, !tbaa !27
  %t294 = load i64, ptr %l9, !tbaa !24
  %t296 = icmp eq i64 %t294, 1
  br i1 %t296, label %bb78, label %bb79
bb78:
  %t298 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t298, ptr %l149, !tbaa !27
  %t299 = load i64, ptr %l10, !tbaa !24
  %t301 = getelementptr { i64, ptr }, ptr %l149, i32 0, i32 1
  %t302 = load ptr, ptr %t301, !tbaa !27
  %t303 = getelementptr %"compiler/token:Token", ptr %t302, i64 %t299
  %t304 = getelementptr %"compiler/token:Token", ptr %t303, i32 0, i32 0
  %t305 = load i32, ptr %t304, !range !{i32 0, i32 114}
  %t307 = trunc i64 1 to i32
  %t308 = icmp eq i32 %t305, %t307
  store i1 %t308, ptr %l148, !tbaa !21
  br label %bb80
bb79:
  store i1 false, ptr %l148, !tbaa !21
  br label %bb80
bb80:
  %t310 = load i1, ptr %l148, !tbaa !21
  br i1 %t310, label %bb81, label %bb82
bb81:
  %t311 = load ptr, ptr %l1, !tbaa !29
  %t313 = getelementptr %"compiler/load:Module", ptr %t311, i32 0, i32 6
  %t314 = load ptr, ptr %t313, !tbaa !29
  %t316 = icmp eq ptr %t314, null
  br i1 %t316, label %bb83, label %bb84
bb82:
  %t318 = load i64, ptr %l9, !tbaa !24
  %t320 = icmp sgt i64 %t318, 0
  br i1 %t320, label %bb95, label %bb96
bb83:
  call void @__olang_check_failed(ptr @olang_loc_37ad9edc8de7e2f6_d0344632fdf871da)
  unreachable
bb84:
  br label %bb85
bb85:
  %t322 = load ptr, ptr %l1, !tbaa !29
  %t324 = getelementptr %"compiler/load:Module", ptr %t322, i32 0, i32 6
  %t325 = load ptr, ptr %t324, !tbaa !29
  %t328 = getelementptr %"compiler/source:Source", ptr %t325, i32 0, i32 1
  %t329 = load { i64, ptr }, ptr %t328, !tbaa !27
  store { i64, ptr } %t329, ptr %l159, !tbaa !27
  %t330 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t330, ptr %l160, !tbaa !27
  %t331 = load i64, ptr %l10, !tbaa !24
  %t333 = getelementptr { i64, ptr }, ptr %l160, i32 0, i32 1
  %t334 = load ptr, ptr %t333, !tbaa !27
  %t335 = getelementptr %"compiler/token:Token", ptr %t334, i64 %t331
  %t336 = getelementptr %"compiler/token:Token", ptr %t335, i32 0, i32 2
  %t337 = load i32, ptr %t336, !tbaa !23
  %t339 = sext i32 %t337 to i64
  store i64 %t339, ptr %l163, !tbaa !24
  %t340 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t340, ptr %l164, !tbaa !27
  %t341 = load i64, ptr %l10, !tbaa !24
  %t343 = getelementptr { i64, ptr }, ptr %l164, i32 0, i32 1
  %t344 = load ptr, ptr %t343, !tbaa !27
  %t345 = getelementptr %"compiler/token:Token", ptr %t344, i64 %t341
  %t346 = getelementptr %"compiler/token:Token", ptr %t345, i32 0, i32 3
  %t347 = load i32, ptr %t346, !tbaa !23
  %t349 = sext i32 %t347 to i64
  store i64 %t349, ptr %l167, !tbaa !24
  %t350 = load { i64, ptr }, ptr %l159, !tbaa !27
  %t351 = extractvalue { i64, ptr } %t350, 0
  store i64 %t351, ptr %l168, !tbaa !24
  %t352 = load i64, ptr %l163, !tbaa !24
  %t353 = icmp sge i64 %t352, 0
  br i1 %t353, label %bb86, label %bb87
bb86:
  %t355 = load i64, ptr %l163, !tbaa !24
  %t356 = load i64, ptr %l167, !tbaa !24
  %t357 = icmp sle i64 %t355, %t356
  br i1 %t357, label %bb88, label %bb89
bb87:
  call void @__olang_check_failed(ptr @olang_loc_ee319d06991d9051_474f59f05ada826d)
  unreachable
bb88:
  %t359 = load i64, ptr %l167, !tbaa !24
  %t360 = load i64, ptr %l168, !tbaa !24
  %t361 = icmp sle i64 %t359, %t360
  br i1 %t361, label %bb90, label %bb91
bb89:
  call void @__olang_check_failed(ptr @olang_loc_ee319d06991d9051_474f59f05ada826d)
  unreachable
bb90:
  %t363 = getelementptr { i64, ptr }, ptr %l159, i32 0, i32 1
  %t364 = load ptr, ptr %t363, !tbaa !27
  %t365 = load i64, ptr %l163, !tbaa !24
  %t366 = load i64, ptr %l167, !tbaa !24
  %t367 = getelementptr i8, ptr %t364, i64 %t365
  %t368 = sub i64 %t366, %t365
  %t369 = insertvalue { i64, ptr } undef, i64 %t368, 0
  %t370 = insertvalue { i64, ptr } %t369, ptr %t367, 1
  %t372 = extractvalue { i64, ptr } %t370, 1
  %t373 = extractvalue { i64, ptr } %t370, 0
  %t374 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t373)
  call void @olang_textcopy(ptr %t374, ptr %t372, i64 %t373)
  %t375 = insertvalue { i64, ptr } undef, i64 %t373, 0
  %t376 = insertvalue { i64, ptr } %t375, ptr %t374, 1
  store { i64, ptr } %t376, ptr %l173, !tbaa !27
  %t377 = load ptr, ptr %lp14
  %t378 = load { i64, ptr }, ptr %t377, !tbaa !27
  %t379 = extractvalue { i64, ptr } %t378, 0
  %t380 = load { i64, ptr }, ptr %l173, !tbaa !27
  %t381 = extractvalue { i64, ptr } %t380, 0
  store i64 %t381, ptr %l175, !tbaa !24
  %t383 = load i64, ptr %l175, !tbaa !24
  %t384 = icmp eq i64 %t379, %t383
  br i1 %t384, label %bb92, label %bb93
bb91:
  call void @__olang_check_failed(ptr @olang_loc_ee319d06991d9051_474f59f05ada826d)
  unreachable
bb92:
  %t386 = load ptr, ptr %lp14
  %t387 = getelementptr { i64, ptr }, ptr %t386, i32 0, i32 1
  %t388 = load ptr, ptr %t387, !tbaa !27
  %t389 = getelementptr { i64, ptr }, ptr %l173, i32 0, i32 1
  %t390 = load ptr, ptr %t389, !tbaa !27
  %t391 = load i64, ptr %l175, !tbaa !24
  %t392 = mul i64 %t391, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t388, ptr %t390, i64 %t392, i1 false)
  br label %bb94
bb93:
  %t393 = load { i64, ptr }, ptr %l173, !tbaa !27
  %t394 = load ptr, ptr %lp14
  store { i64, ptr } %t393, ptr %t394, !tbaa !27
  br label %bb94
bb94:
  br label %bb101
bb95:
  store { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d34, i32 0, i32 1) }, ptr %l179, !tbaa !27
  %t395 = load { i64, ptr }, ptr %l179, !tbaa !27
  store { i64, ptr } %t395, ptr %l180, !tbaa !27
  %t396 = load ptr, ptr %lp14
  %t397 = load { i64, ptr }, ptr %t396, !tbaa !27
  %t398 = extractvalue { i64, ptr } %t397, 0
  %t399 = load { i64, ptr }, ptr %l180, !tbaa !27
  %t400 = extractvalue { i64, ptr } %t399, 0
  store i64 %t400, ptr %l182, !tbaa !24
  %t402 = load i64, ptr %l182, !tbaa !24
  %t403 = icmp eq i64 %t398, %t402
  br i1 %t403, label %bb97, label %bb98
bb96:
  br label %bb100
bb97:
  %t405 = load ptr, ptr %lp14
  %t406 = getelementptr { i64, ptr }, ptr %t405, i32 0, i32 1
  %t407 = load ptr, ptr %t406, !tbaa !27
  %t408 = getelementptr { i64, ptr }, ptr %l180, i32 0, i32 1
  %t409 = load ptr, ptr %t408, !tbaa !27
  %t410 = load i64, ptr %l182, !tbaa !24
  %t411 = mul i64 %t410, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t407, ptr %t409, i64 %t411, i1 false)
  br label %bb99
bb98:
  %t412 = load { i64, ptr }, ptr %l180, !tbaa !27
  %t413 = extractvalue { i64, ptr } %t412, 0
  store i64 %t413, ptr %l184, !tbaa !24
  %t414 = load i64, ptr %l184, !tbaa !24
  %t415 = mul i64 %t414, 1
  %t416 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t415)
  %t417 = insertvalue { i64, ptr } undef, i64 %t414, 0
  %t418 = insertvalue { i64, ptr } %t417, ptr %t416, 1
  store { i64, ptr } %t418, ptr %l185, !tbaa !27
  %t419 = getelementptr { i64, ptr }, ptr %l185, i32 0, i32 1
  %t420 = load ptr, ptr %t419, !tbaa !27
  %t421 = getelementptr { i64, ptr }, ptr %l180, i32 0, i32 1
  %t422 = load ptr, ptr %t421, !tbaa !27
  %t423 = load i64, ptr %l184, !tbaa !24
  %t424 = mul i64 %t423, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t420, ptr %t422, i64 %t424, i1 false)
  %t425 = load { i64, ptr }, ptr %l185, !tbaa !27
  %t426 = load ptr, ptr %lp14
  store { i64, ptr } %t425, ptr %t426, !tbaa !27
  br label %bb99
bb99:
  br label %bb100
bb100:
  br label %bb101
bb101:
  %t427 = load ptr, ptr %l1, !tbaa !29
  %t429 = getelementptr %"compiler/load:Module", ptr %t427, i32 0, i32 24
  %t430 = load ptr, ptr %t429, !tbaa !29
  %t432 = icmp eq ptr %t430, null
  br i1 %t432, label %bb102, label %bb103
bb102:
  call void @__olang_check_failed(ptr @olang_loc_57e236369a85f00c_b06e30e0c965afa8)
  unreachable
bb103:
  br label %bb104
bb104:
  %t434 = load ptr, ptr %l1, !tbaa !29
  %t436 = getelementptr %"compiler/load:Module", ptr %t434, i32 0, i32 24
  %t437 = load ptr, ptr %t436, !tbaa !29
  %t438 = load i64, ptr %l7, !tbaa !24
  %t440 = add i64 %t438, 1
  %t443 = call { i32, ptr } @compiler_2fparse_2ecompiler_2fparse_3aParser_2eExprAt(ptr %v1, ptr %v1, ptr %t437, i64 %t440)
  %t444 = extractvalue { i32, ptr } %t443, 1
  %t445 = extractvalue { i32, ptr } %t443, 0
  store i32 %t445, ptr %l195
  %t446 = icmp ne i32 %t445, 0
  br i1 %t446, label %bb106, label %ok.447, !prof !99
ok.447:
  store ptr %t444, ptr %l194
  br label %bb105
bb105:
  %t448 = load ptr, ptr %l194, !tbaa !29
  store ptr %t448, ptr %l186, !tbaa !29
  br label %bb108
bb106:
  br label %bb107
bb107:
  call void @__olang_scope_close(ptr %s3)
  br label %bb133
bb108:
  %t449 = load ptr, ptr %l186, !tbaa !29
  store ptr %t449, ptr %l15, !tbaa !29
  %t450 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t450, ptr %l196, !tbaa !27
  %t451 = load ptr, ptr %l1, !tbaa !29
  %t453 = getelementptr %"compiler/load:Module", ptr %t451, i32 0, i32 24
  %t454 = load ptr, ptr %t453, !tbaa !29
  %t456 = icmp eq ptr %t454, null
  br i1 %t456, label %bb109, label %bb110
bb109:
  call void @__olang_check_failed(ptr @olang_loc_64a34b454640941_8ed0e4b282ed07d)
  unreachable
bb110:
  br label %bb111
bb111:
  %t458 = load ptr, ptr %l1, !tbaa !29
  %t460 = getelementptr %"compiler/load:Module", ptr %t458, i32 0, i32 24
  %t461 = load ptr, ptr %t460, !tbaa !29
  %t463 = call i64 @compiler_2fparse_2ecompiler_2fparse_3aParser_2ePos(ptr %v1, ptr %t461)
  store i64 %t463, ptr %l202
  br label %bb112
bb112:
  %t464 = load i64, ptr %l202, !tbaa !24
  %t465 = getelementptr { i64, ptr }, ptr %l196, i32 0, i32 1
  %t466 = load ptr, ptr %t465, !tbaa !27
  %t467 = getelementptr %"compiler/token:Token", ptr %t466, i64 %t464
  %t468 = getelementptr %"compiler/token:Token", ptr %t467, i32 0, i32 0
  %t469 = load i32, ptr %t468, !range !{i32 0, i32 114}
  store i32 %t469, ptr %l16
  %t471 = load i32, ptr %l16, !range !{i32 0, i32 114}
  %t473 = trunc i64 8 to i32
  %t474 = icmp eq i32 %t471, %t473
  br i1 %t474, label %bb113, label %bb114
bb113:
  store i1 true, ptr %l206, !tbaa !21
  br label %bb115
bb114:
  %t476 = load i32, ptr %l16, !range !{i32 0, i32 114}
  %t478 = trunc i64 0 to i32
  %t479 = icmp eq i32 %t476, %t478
  store i1 %t479, ptr %l206, !tbaa !21
  br label %bb115
bb115:
  %t481 = load i1, ptr %l206, !tbaa !21
  store i1 %t481, ptr %l17, !tbaa !21
  %t482 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t482, ptr %l209, !tbaa !27
  %t483 = load i64, ptr %l6, !tbaa !24
  %t485 = getelementptr { i64, ptr }, ptr %l209, i32 0, i32 1
  %t486 = load ptr, ptr %t485, !tbaa !27
  %t487 = getelementptr %"compiler/token:Token", ptr %t486, i64 %t483
  %t488 = getelementptr %"compiler/token:Token", ptr %t487, i32 0, i32 2
  %t489 = load i32, ptr %t488, !tbaa !23
  %t490 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t490, ptr %l212, !tbaa !27
  %t491 = load i64, ptr %l6, !tbaa !24
  %t493 = getelementptr { i64, ptr }, ptr %l212, i32 0, i32 1
  %t494 = load ptr, ptr %t493, !tbaa !27
  %t495 = getelementptr %"compiler/token:Token", ptr %t494, i64 %t491
  %t496 = getelementptr %"compiler/token:Token", ptr %t495, i32 0, i32 3
  %t497 = load i32, ptr %t496, !tbaa !23
  %t500 = call %"compiler/source:Span" @compiler_2fsource_3aSpan_2ector(ptr %s3, i32 %t489, i32 %t497)
  store %"compiler/source:Span" %t500, ptr %l215
  br label %bb116
bb116:
  %t501 = load %"compiler/source:Span", ptr %l215
  store %"compiler/source:Span" %t501, ptr %l18
  %t502 = load ptr, ptr %l1, !tbaa !29
  %t504 = getelementptr %"compiler/load:Module", ptr %t502, i32 0, i32 23
  %t505 = load ptr, ptr %t504, !tbaa !29
  %t507 = icmp eq ptr %t505, null
  br i1 %t507, label %bb117, label %bb118
bb117:
  call void @__olang_check_failed(ptr @olang_loc_64e62a75e1515ba_854f46de0e9c2096)
  unreachable
bb118:
  br label %bb119
bb119:
  %t509 = load ptr, ptr %l1, !tbaa !29
  %t511 = getelementptr %"compiler/load:Module", ptr %t509, i32 0, i32 23
  %t512 = load ptr, ptr %t511, !tbaa !29
  store ptr %t512, ptr %l220, !tbaa !29
  %t513 = ptrtoint ptr %v1 to i64
  store i64 %t513, ptr %l221, !tbaa !24
  %t514 = load i1, ptr @olang_2esole_2ecompiler_2fcond_3aGlobal_2e0
  br i1 %t514, label %bb120, label %bb121
bb120:
  %t516 = call ptr @__olang_region_make(ptr %v1)
  %t517 = ptrtoint ptr %t516 to i64
  store i64 %t517, ptr %l221, !tbaa !24
  br label %bb121
bb121:
  %t518 = load ptr, ptr %l1, !tbaa !29
  %t520 = getelementptr %"compiler/load:Module", ptr %t518, i32 0, i32 6
  %t521 = load ptr, ptr %t520, !tbaa !29
  %t523 = icmp eq ptr %t521, null
  br i1 %t523, label %bb122, label %bb123
bb122:
  call void @__olang_check_failed(ptr @olang_loc_64e62a75e1515ba_854f46de0e9c2096)
  unreachable
bb123:
  br label %bb124
bb124:
  %t525 = load ptr, ptr %l1, !tbaa !29
  %t527 = getelementptr %"compiler/load:Module", ptr %t525, i32 0, i32 6
  %t528 = load ptr, ptr %t527, !tbaa !29
  %t531 = getelementptr %"compiler/source:Source", ptr %t528, i32 0, i32 1
  %t532 = load { i64, ptr }, ptr %t531, !tbaa !27
  store { i64, ptr } %t532, ptr %l229, !tbaa !27
  %t533 = getelementptr %"compiler/source:Span", ptr %l18, i32 0, i32 0
  %t534 = load i32, ptr %t533, !tbaa !23
  %t536 = sext i32 %t534 to i64
  store i64 %t536, ptr %l231, !tbaa !24
  %t537 = getelementptr %"compiler/source:Span", ptr %l18, i32 0, i32 1
  %t538 = load i32, ptr %t537, !tbaa !23
  %t540 = sext i32 %t538 to i64
  store i64 %t540, ptr %l233, !tbaa !24
  %t541 = load { i64, ptr }, ptr %l229, !tbaa !27
  %t542 = extractvalue { i64, ptr } %t541, 0
  store i64 %t542, ptr %l234, !tbaa !24
  %t543 = load i64, ptr %l231, !tbaa !24
  %t544 = icmp sge i64 %t543, 0
  br i1 %t544, label %bb125, label %bb126
bb125:
  %t546 = load i64, ptr %l231, !tbaa !24
  %t547 = load i64, ptr %l233, !tbaa !24
  %t548 = icmp sle i64 %t546, %t547
  br i1 %t548, label %bb127, label %bb128
bb126:
  call void @__olang_check_failed(ptr @olang_loc_edaf45632a5c2555_299361976cec5e59)
  unreachable
bb127:
  %t550 = load i64, ptr %l233, !tbaa !24
  %t551 = load i64, ptr %l234, !tbaa !24
  %t552 = icmp sle i64 %t550, %t551
  br i1 %t552, label %bb129, label %bb130
bb128:
  call void @__olang_check_failed(ptr @olang_loc_edaf45632a5c2555_299361976cec5e59)
  unreachable
bb129:
  %t554 = getelementptr { i64, ptr }, ptr %l229, i32 0, i32 1
  %t555 = load ptr, ptr %t554, !tbaa !27
  %t556 = load i64, ptr %l231, !tbaa !24
  %t557 = load i64, ptr %l233, !tbaa !24
  %t558 = getelementptr i8, ptr %t555, i64 %t556
  %t559 = sub i64 %t557, %t556
  %t560 = insertvalue { i64, ptr } undef, i64 %t559, 0
  %t561 = insertvalue { i64, ptr } %t560, ptr %t558, 1
  %t563 = extractvalue { i64, ptr } %t561, 1
  %t564 = extractvalue { i64, ptr } %t561, 0
  %t565 = load i64, ptr %l221
  %t566 = inttoptr i64 %t565 to ptr
  %t567 = call ptr @__olang_scope_alloc(ptr %t566, i64 %t564)
  call void @olang_textcopy(ptr %t567, ptr %t563, i64 %t564)
  %t568 = insertvalue { i64, ptr } undef, i64 %t564, 0
  %t569 = insertvalue { i64, ptr } %t568, ptr %t567, 1
  %t571 = load i64, ptr %l221
  %t572 = inttoptr i64 %t571 to ptr
  %t573 = extractvalue { i64, ptr } %t569, 0
  %t574 = extractvalue { i64, ptr } %t569, 1
  %t575 = mul i64 %t573, 1
  %t576 = call ptr @__olang_scope_alloc(ptr %t572, i64 %t575)
  call void @llvm.memcpy.p0.p0.i64(ptr %t576, ptr %t574, i64 %t575, i1 false)
  %t577 = insertvalue { i64, ptr } undef, i64 %t573, 0
  %t578 = insertvalue { i64, ptr } %t577, ptr %t576, 1
  %t579 = load %"compiler/source:Span", ptr %l18
  %t580 = load i1, ptr %l8, !tbaa !21
  %t581 = load ptr, ptr %lp14
  %t582 = load { i64, ptr }, ptr %t581, !tbaa !27
  %t583 = load ptr, ptr %l15, !tbaa !29
  %t584 = load i1, ptr %l17, !tbaa !21
  %t591 = call %"compiler/cond:Global" @compiler_2fcond_3aGlobal_2ector(ptr %v1, ptr %v1, ptr %v1, ptr %v1, { i64, ptr } %t578, %"compiler/source:Span" %t579, i1 %t580, { i64, ptr } %t582, ptr %t583, i1 %t584)
  store %"compiler/cond:Global" %t591, ptr %l246
  br label %bb131
bb130:
  call void @__olang_check_failed(ptr @olang_loc_edaf45632a5c2555_299361976cec5e59)
  unreachable
bb131:
  %t592 = load %"compiler/cond:Global", ptr %l246
  %t593 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 64, i64 8)
  store %"compiler/cond:Global" %t592, ptr %t593
  %t594 = load ptr, ptr %l220, !tbaa !29
  call void @compiler_2fcond_2ecompiler_2fcond_3aScope_2eAdd(ptr %v1, ptr %v1, ptr %t594, ptr %t593)
  br label %bb132
bb132:
  call void @__olang_scope_close(ptr %s3)
  br label %bb133
bb133:
  %t596 = load i64, ptr %l5, !tbaa !24
  %t598 = add i64 %t596, 1
  store i64 %t598, ptr %l5, !tbaa !24
  br label %bb30
bb134:
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
  %l181 = alloca i64
  %l182 = alloca { i64, ptr }
  %l184 = alloca { i64, ptr }
  %l187 = alloca i64
  %l191 = alloca i64
  %l192 = alloca i64
  %l201 = alloca { i64, ptr }
  %l202 = alloca i64
  %l207 = alloca i64
  %l210 = alloca i64
  %l228 = alloca { i64, ptr }
  %l230 = alloca { i64, ptr }
  %l235 = alloca { i64, ptr }
  %l236 = alloca { i64, ptr }
  %l238 = alloca { i64, ptr }
  %l239 = alloca i32
  %l243 = alloca { i64, ptr }
  %l245 = alloca i64
  %l247 = alloca { i64, ptr }
  %l249 = alloca { i64, ptr }
  %l250 = alloca i32
  %l254 = alloca i1
  %l255 = alloca i1
  %l260 = alloca i1
  %l270 = alloca i1
  %l273 = alloca i1
  %l281 = alloca i1
  %l287 = alloca { i64, ptr }
  %l289 = alloca { i64, ptr }
  %l290 = alloca i32
  %l292 = alloca i1
  %l301 = alloca i64
  %l312 = alloca { i64, ptr }
  %l326 = alloca i64
  %l328 = alloca i64
  %l333 = alloca { i64, ptr }
  %l336 = alloca i1
  %l344 = alloca { i64, ptr }
  %l348 = alloca { i64, ptr }
  %l349 = alloca i32
  %l352 = alloca { i64, ptr }
  %l354 = alloca { { i64, ptr }, { i64, ptr } }
  %l355 = alloca { i64, ptr }
  %l356 = alloca i64
  %l357 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %s3 = alloca %olang.scope
  %s5 = alloca %olang.scope
  %s9 = alloca %olang.scope
  %s10 = alloca %olang.scope
  %s15 = alloca %olang.scope
  %s17 = alloca %olang.scope
  %s18 = alloca %olang.scope
  %s19 = alloca %olang.scope
  %s26 = alloca %olang.scope
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
  br label %bb132
bb82:
  %t441 = load i1, ptr %l174, !tbaa !21
  br i1 %t441, label %bb83, label %bb84
bb83:
  %t442 = load ptr, ptr %l0, !tbaa !29
  %t444 = getelementptr %"compiler/load:Loader", ptr %t442, i32 0, i32 14
  %t445 = load { i64, ptr }, ptr %t444, !tbaa !27
  store { i64, ptr } %t445, ptr %l177, !tbaa !27
  %t447 = load { i64, ptr }, ptr %l10, !tbaa !27
  %t448 = extractvalue { i64, ptr } %t447, 0
  %t449 = load { i64, ptr }, ptr %l177, !tbaa !27
  %t450 = extractvalue { i64, ptr } %t449, 0
  store i64 %t450, ptr %l179, !tbaa !24
  %t452 = load i64, ptr %l179, !tbaa !24
  %t453 = icmp eq i64 %t448, %t452
  br i1 %t453, label %bb85, label %bb86
bb84:
  store %olang.scope zeroinitializer, ptr %s17
  %t455 = load ptr, ptr %l4, !tbaa !29
  %t457 = getelementptr %"compiler/load:Module", ptr %t455, i32 0, i32 2
  %t458 = load { i64, ptr }, ptr %t457, !tbaa !27
  store { i64, ptr } %t458, ptr %l184, !tbaa !27
  %t459 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t461 = extractvalue { i64, ptr } %t459, 0
  %t463 = add i64 %t461, 1
  store i64 %t463, ptr %l187, !tbaa !24
  %t464 = load ptr, ptr %l4, !tbaa !29
  %t466 = getelementptr %"compiler/load:Module", ptr %t464, i32 0, i32 2
  %t467 = load { i64, ptr }, ptr %t466, !tbaa !27
  %t470 = extractvalue { i64, ptr } %t467, 0
  store i64 %t470, ptr %l191, !tbaa !24
  %t471 = load { i64, ptr }, ptr %l184, !tbaa !27
  %t472 = extractvalue { i64, ptr } %t471, 0
  store i64 %t472, ptr %l192, !tbaa !24
  %t473 = load i64, ptr %l187, !tbaa !24
  %t474 = icmp sge i64 %t473, 0
  br i1 %t474, label %bb88, label %bb89
bb85:
  %t476 = getelementptr { i64, ptr }, ptr %l10, i32 0, i32 1
  %t477 = load ptr, ptr %t476, !tbaa !27
  %t478 = getelementptr { i64, ptr }, ptr %l177, i32 0, i32 1
  %t479 = load ptr, ptr %t478, !tbaa !27
  %t480 = load i64, ptr %l179, !tbaa !24
  %t481 = mul i64 %t480, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t477, ptr %t479, i64 %t481, i1 false)
  br label %bb87
bb86:
  %t482 = load { i64, ptr }, ptr %l177, !tbaa !27
  %t483 = extractvalue { i64, ptr } %t482, 0
  store i64 %t483, ptr %l181, !tbaa !24
  %t484 = load i64, ptr %l181, !tbaa !24
  %t485 = mul i64 %t484, 1
  %t486 = call ptr @__olang_scope_alloc(ptr %s15, i64 %t485)
  %t487 = insertvalue { i64, ptr } undef, i64 %t484, 0
  %t488 = insertvalue { i64, ptr } %t487, ptr %t486, 1
  store { i64, ptr } %t488, ptr %l182, !tbaa !27
  %t489 = getelementptr { i64, ptr }, ptr %l182, i32 0, i32 1
  %t490 = load ptr, ptr %t489, !tbaa !27
  %t491 = getelementptr { i64, ptr }, ptr %l177, i32 0, i32 1
  %t492 = load ptr, ptr %t491, !tbaa !27
  %t493 = load i64, ptr %l181, !tbaa !24
  %t494 = mul i64 %t493, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t490, ptr %t492, i64 %t494, i1 false)
  %t495 = load { i64, ptr }, ptr %l182, !tbaa !27
  store { i64, ptr } %t495, ptr %l10, !tbaa !27
  br label %bb87
bb87:
  br label %bb117
bb88:
  %t496 = load i64, ptr %l187, !tbaa !24
  %t497 = load i64, ptr %l191, !tbaa !24
  %t498 = icmp sle i64 %t496, %t497
  br i1 %t498, label %bb90, label %bb91
bb89:
  call void @__olang_check_failed(ptr @olang_loc_af475931a368800c_57263df876e21e18)
  unreachable
bb90:
  %t500 = load i64, ptr %l191, !tbaa !24
  %t501 = load i64, ptr %l192, !tbaa !24
  %t502 = icmp sle i64 %t500, %t501
  br i1 %t502, label %bb92, label %bb93
bb91:
  call void @__olang_check_failed(ptr @olang_loc_af475931a368800c_57263df876e21e18)
  unreachable
bb92:
  %t504 = getelementptr { i64, ptr }, ptr %l184, i32 0, i32 1
  %t505 = load ptr, ptr %t504, !tbaa !27
  %t506 = load i64, ptr %l187, !tbaa !24
  %t507 = load i64, ptr %l191, !tbaa !24
  %t508 = getelementptr i8, ptr %t505, i64 %t506
  %t509 = sub i64 %t507, %t506
  %t510 = insertvalue { i64, ptr } undef, i64 %t509, 0
  %t511 = insertvalue { i64, ptr } %t510, ptr %t508, 1
  %t513 = load ptr, ptr %l4, !tbaa !29
  %t515 = getelementptr %"compiler/load:Module", ptr %t513, i32 0, i32 0
  %t516 = load { i64, ptr }, ptr %t515, !tbaa !27
  store { i64, ptr } %t516, ptr %l12, !tbaa !27
  store %olang.scope zeroinitializer, ptr %s18
  store i64 0, ptr %l13, !tbaa !24
  store { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d55, i32 0, i32 1) }, ptr %l201, !tbaa !27
  %t521 = load { i64, ptr }, ptr %l201, !tbaa !27
  %t522 = call i64 @std_2fprelude_2farray_2eArray_3cstd_2fprelude_2ftext_3aChar_3e_2eCountOf_3cstd_2fprelude_2ftext_3aChar_3e(ptr %v0, ptr %s18, { i64, ptr } %t511, { i64, ptr } %t521)
  store i64 %t522, ptr %l202
  br label %bb94
bb93:
  call void @__olang_check_failed(ptr @olang_loc_af475931a368800c_57263df876e21e18)
  unreachable
bb94:
  %t523 = load i64, ptr %l202, !tbaa !24
  %t524 = add i64 %t523, 1
  store i64 %t524, ptr %l14, !tbaa !24
  store i64 1, ptr %l15, !tbaa !24
  %t526 = load i64, ptr %l14, !tbaa !24
  %t527 = load i64, ptr %l13, !tbaa !24
  %t530 = icmp sgt i64 %t526, %t527
  br i1 %t530, label %bb95, label %bb96
bb95:
  %t532 = load i64, ptr %l15, !tbaa !24
  %t534 = icmp sgt i64 %t532, 0
  br i1 %t534, label %bb97, label %bb98
bb96:
  store i64 0, ptr %l207, !tbaa !24
  br label %bb100
bb97:
  %t536 = load i64, ptr %l14, !tbaa !24
  %t537 = load i64, ptr %l13, !tbaa !24
  %t540 = sub i64 %t536, %t537
  %t541 = load i64, ptr %l15, !tbaa !24
  %t544 = add i64 %t540, %t541
  %t546 = sub i64 %t544, 1
  %t547 = load i64, ptr %l15, !tbaa !24
  %t550 = sdiv i64 %t546, %t547
  store i64 %t550, ptr %l210, !tbaa !24
  br label %bb99
bb98:
  store i64 0, ptr %l210, !tbaa !24
  br label %bb99
bb99:
  %t552 = load i64, ptr %l210, !tbaa !24
  store i64 %t552, ptr %l207, !tbaa !24
  br label %bb100
bb100:
  %t553 = load i64, ptr %l207, !tbaa !24
  store i64 %t553, ptr %l16, !tbaa !24
  store i64 0, ptr %l17, !tbaa !24
  br label %bb101
bb101:
  store %olang.scope zeroinitializer, ptr %s19
  %t554 = load i64, ptr %l17, !tbaa !24
  %t555 = load i64, ptr %l16, !tbaa !24
  %t558 = icmp slt i64 %t554, %t555
  %t560 = xor i1 %t558, true
  br i1 %t560, label %bb102, label %bb103
bb102:
  call void @__olang_scope_close(ptr %s19)
  br label %bb107
bb103:
  br label %bb104
bb104:
  %t562 = load i64, ptr %l13, !tbaa !24
  %t563 = load i64, ptr %l17, !tbaa !24
  %t564 = load i64, ptr %l15, !tbaa !24
  %t567 = mul i64 %t563, %t564
  %t570 = add i64 %t562, %t567
  store i64 %t570, ptr %l18, !tbaa !24
  %t572 = load { i64, ptr }, ptr %l12, !tbaa !27
  store { i64, ptr } %t572, ptr %l228, !tbaa !27
  %t573 = load { i64, ptr }, ptr %l228, !tbaa !27
  %t574 = extractvalue { i64, ptr } %t573, 1
  %t575 = call ptr @__olang_scope_of(ptr %t574, ptr null)
  %t576 = ptrtoint ptr %t575 to i64
  %t578 = inttoptr i64 %t576 to ptr
  %t579 = load { i64, ptr }, ptr %l228, !tbaa !27
  %t580 = call { i64, ptr } @std_2ffilepath_2eDir(ptr %t578, ptr %s19, { i64, ptr } %t579)
  store { i64, ptr } %t580, ptr %l230
  br label %bb105
bb105:
  %t581 = load { i64, ptr }, ptr %l230, !tbaa !27
  %t582 = extractvalue { i64, ptr } %t581, 1
  %t583 = extractvalue { i64, ptr } %t581, 0
  %t584 = call ptr @__olang_scope_alloc(ptr %s17, i64 %t583)
  call void @olang_textcopy(ptr %t584, ptr %t582, i64 %t583)
  %t585 = insertvalue { i64, ptr } undef, i64 %t583, 0
  %t586 = insertvalue { i64, ptr } %t585, ptr %t584, 1
  %t588 = extractvalue { i64, ptr } %t586, 0
  %t589 = extractvalue { i64, ptr } %t586, 1
  %t590 = mul i64 %t588, 1
  %t591 = call ptr @__olang_scope_alloc(ptr %s17, i64 %t590)
  call void @llvm.memcpy.p0.p0.i64(ptr %t591, ptr %t589, i64 %t590, i1 false)
  %t592 = insertvalue { i64, ptr } undef, i64 %t588, 0
  %t593 = insertvalue { i64, ptr } %t592, ptr %t591, 1
  store { i64, ptr } %t593, ptr %l12, !tbaa !27
  call void @__olang_scope_close(ptr %s19)
  br label %bb106
bb106:
  %t595 = load i64, ptr %l17, !tbaa !24
  %t597 = add i64 %t595, 1
  store i64 %t597, ptr %l17, !tbaa !24
  br label %bb101
bb107:
  call void @__olang_scope_close(ptr %s18)
  %t599 = load { i64, ptr }, ptr %l12, !tbaa !27
  store { i64, ptr } %t599, ptr %l236, !tbaa !27
  %t600 = load { i64, ptr }, ptr %l236, !tbaa !27
  %t601 = extractvalue { i64, ptr } %t600, 1
  %t602 = call ptr @__olang_scope_of(ptr %t601, ptr null)
  %t603 = ptrtoint ptr %t602 to i64
  %t605 = inttoptr i64 %t603 to ptr
  %t606 = load { i64, ptr }, ptr %l236, !tbaa !27
  %t607 = call { i32, { i64, ptr } } @std_2fos_2eRealPath(ptr %t605, ptr %s17, { i64, ptr } %t606)
  %t608 = extractvalue { i32, { i64, ptr } } %t607, 1
  %t609 = extractvalue { i32, { i64, ptr } } %t607, 0
  store i32 %t609, ptr %l239
  %t610 = icmp ne i32 %t609, 0
  br i1 %t610, label %bb109, label %ok.611, !prof !99
ok.611:
  store { i64, ptr } %t608, ptr %l238
  br label %bb108
bb108:
  %t612 = load { i64, ptr }, ptr %l238, !tbaa !27
  store { i64, ptr } %t612, ptr %l235, !tbaa !27
  br label %bb113
bb109:
  %t613 = load i32, ptr %l239, !tbaa !23
  %t614 = ashr i32 %t613, 16
  %t616 = icmp eq i32 %t614, 1
  br i1 %t616, label %bb110, label %bb111
bb110:
  call void @__olang_errpay_pop()
  br label %bb111
bb111:
  br label %bb112
bb112:
  %t618 = load { i64, ptr }, ptr %l12, !tbaa !27
  store { i64, ptr } %t618, ptr %l235, !tbaa !27
  br label %bb113
bb113:
  %t620 = load { i64, ptr }, ptr %l235, !tbaa !27
  %t621 = extractvalue { i64, ptr } %t620, 1
  %t622 = extractvalue { i64, ptr } %t620, 0
  %t623 = call ptr @__olang_scope_alloc(ptr %s15, i64 %t622)
  call void @olang_textcopy(ptr %t623, ptr %t621, i64 %t622)
  %t624 = insertvalue { i64, ptr } undef, i64 %t622, 0
  %t625 = insertvalue { i64, ptr } %t624, ptr %t623, 1
  store { i64, ptr } %t625, ptr %l243, !tbaa !27
  %t626 = load { i64, ptr }, ptr %l10, !tbaa !27
  %t627 = extractvalue { i64, ptr } %t626, 0
  %t628 = load { i64, ptr }, ptr %l243, !tbaa !27
  %t629 = extractvalue { i64, ptr } %t628, 0
  store i64 %t629, ptr %l245, !tbaa !24
  %t631 = load i64, ptr %l245, !tbaa !24
  %t632 = icmp eq i64 %t627, %t631
  br i1 %t632, label %bb114, label %bb115
bb114:
  %t634 = getelementptr { i64, ptr }, ptr %l10, i32 0, i32 1
  %t635 = load ptr, ptr %t634, !tbaa !27
  %t636 = getelementptr { i64, ptr }, ptr %l243, i32 0, i32 1
  %t637 = load ptr, ptr %t636, !tbaa !27
  %t638 = load i64, ptr %l245, !tbaa !24
  %t639 = mul i64 %t638, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t635, ptr %t637, i64 %t639, i1 false)
  br label %bb116
bb115:
  %t640 = load { i64, ptr }, ptr %l243, !tbaa !27
  store { i64, ptr } %t640, ptr %l10, !tbaa !27
  br label %bb116
bb116:
  call void @__olang_scope_close(ptr %s17)
  br label %bb117
bb117:
  %t641 = load ptr, ptr %lp6
  %t642 = load { i64, ptr }, ptr %t641, !tbaa !27
  %t644 = call { i32, { i64, ptr } } @std_2fos_2eRealPath(ptr %v2, ptr %s15, { i64, ptr } %t642)
  %t645 = extractvalue { i32, { i64, ptr } } %t644, 1
  %t646 = extractvalue { i32, { i64, ptr } } %t644, 0
  store i32 %t646, ptr %l250
  %t647 = icmp ne i32 %t646, 0
  br i1 %t647, label %bb119, label %ok.648, !prof !99
ok.648:
  store { i64, ptr } %t645, ptr %l249
  br label %bb118
bb118:
  %t649 = load { i64, ptr }, ptr %l249, !tbaa !27
  store { i64, ptr } %t649, ptr %l247, !tbaa !27
  br label %bb123
bb119:
  %t650 = load i32, ptr %l250, !tbaa !23
  %t651 = ashr i32 %t650, 16
  %t653 = icmp eq i32 %t651, 1
  br i1 %t653, label %bb120, label %bb121
bb120:
  call void @__olang_errpay_pop()
  br label %bb121
bb121:
  br label %bb122
bb122:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d56, i32 0, i32 1) }, ptr %l247, !tbaa !27
  br label %bb123
bb123:
  %t655 = load { i64, ptr }, ptr %l247, !tbaa !27
  store { i64, ptr } %t655, ptr %l19, !tbaa !27
  %t656 = load { i64, ptr }, ptr %l19, !tbaa !27
  %t658 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s15, ptr %s15, { i64, ptr } %t656, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d57, i32 0, i32 1) })
  store i1 %t658, ptr %l254
  br label %bb124
bb124:
  %t659 = load i1, ptr %l254, !tbaa !21
  br i1 %t659, label %bb125, label %bb126
bb125:
  store i1 true, ptr %l255, !tbaa !21
  br label %bb128
bb126:
  %t660 = load { i64, ptr }, ptr %l19, !tbaa !27
  %t661 = load { i64, ptr }, ptr %l10, !tbaa !27
  %t663 = extractvalue { i64, ptr } %t661, 1
  %t664 = extractvalue { i64, ptr } %t661, 0
  %t665 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d58, i32 0, i32 1) }, 1
  %t666 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d58, i32 0, i32 1) }, 0
  %t667 = add i64 %t664, %t666
  %t668 = call ptr @__olang_scope_alloc(ptr %s15, i64 %t667)
  call void @olang_textcopy(ptr %t668, ptr %t663, i64 %t664)
  %t669 = getelementptr i8, ptr %t668, i64 %t664
  call void @olang_textcopy(ptr %t669, ptr %t665, i64 %t666)
  %t670 = insertvalue { i64, ptr } undef, i64 %t667, 0
  %t671 = insertvalue { i64, ptr } %t670, ptr %t668, 1
  %t673 = extractvalue { i64, ptr } %t671, 0
  %t674 = extractvalue { i64, ptr } %t671, 1
  %t675 = mul i64 %t673, 1
  %t676 = call ptr @__olang_scope_alloc(ptr %s15, i64 %t675)
  call void @llvm.memcpy.p0.p0.i64(ptr %t676, ptr %t674, i64 %t675, i1 false)
  %t677 = insertvalue { i64, ptr } undef, i64 %t673, 0
  %t678 = insertvalue { i64, ptr } %t677, ptr %t676, 1
  %t681 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %s15, ptr %s15, { i64, ptr } %t660, { i64, ptr } %t678)
  store i1 %t681, ptr %l260
  br label %bb127
bb127:
  %t682 = load i1, ptr %l260, !tbaa !21
  %t683 = xor i1 %t682, true
  store i1 %t683, ptr %l255, !tbaa !21
  br label %bb128
bb128:
  %t685 = load i1, ptr %l255, !tbaa !21
  br i1 %t685, label %bb129, label %bb130
bb129:
  %t686 = load ptr, ptr %lp3
  %t688 = insertvalue { i64, ptr } undef, i64 0, 0
  %t689 = insertvalue { i64, ptr } %t688, ptr %t686, 1
  %t690 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t691 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d59, i32 0, i32 1) }, 1
  %t692 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d59, i32 0, i32 1) }, 0
  %t694 = extractvalue { i64, ptr } %t690, 1
  %t695 = extractvalue { i64, ptr } %t690, 0
  %t696 = add i64 %t692, %t695
  %t697 = extractvalue { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d60, i32 0, i32 1) }, 1
  %t698 = extractvalue { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d60, i32 0, i32 1) }, 0
  %t699 = add i64 %t696, %t698
  %t700 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t699)
  call void @olang_textcopy(ptr %t700, ptr %t691, i64 %t692)
  %t701 = getelementptr i8, ptr %t700, i64 %t692
  call void @olang_textcopy(ptr %t701, ptr %t694, i64 %t695)
  %t702 = getelementptr i8, ptr %t701, i64 %t695
  call void @olang_textcopy(ptr %t702, ptr %t697, i64 %t698)
  %t703 = insertvalue { i64, ptr } undef, i64 %t699, 0
  %t704 = insertvalue { i64, ptr } %t703, ptr %t700, 1
  %t706 = insertvalue { { i64, ptr }, { i64, ptr } } undef, { i64, ptr } %t689, 0
  %t708 = insertvalue { { i64, ptr }, { i64, ptr } } %t706, { i64, ptr } %t704, 1
  call void @__olang_scope_close(ptr %s15)
  call void @__olang_scope_close(ptr %s0)
  store { { i64, ptr }, { i64, ptr } } %t708, ptr %rv
  br label %ret
bb130:
  br label %bb131
bb131:
  call void @__olang_scope_close(ptr %s15)
  br label %bb132
bb132:
  %t710 = load ptr, ptr %l0, !tbaa !29
  %t712 = getelementptr %"compiler/load:Loader", ptr %t710, i32 0, i32 16
  %t713 = load ptr, ptr %lp6
  %t714 = load { i64, ptr }, ptr %t713, !tbaa !27
  %t717 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_H31dec199381f6e2bb0c82058ea887922(ptr %v0, ptr %v2, ptr %t712, { i64, ptr } %t714)
  store i1 %t717, ptr %l270
  br label %bb133
bb133:
  %t718 = load i1, ptr %l270, !tbaa !21
  %t719 = xor i1 %t718, true
  br i1 %t719, label %bb134, label %bb135
bb134:
  store %olang.scope zeroinitializer, ptr %s26
  %t721 = load ptr, ptr %lp6
  %t722 = load { i64, ptr }, ptr %t721, !tbaa !27
  %t724 = call i1 @std_2fos_2eExists(ptr %v2, { i64, ptr } %t722)
  store i1 %t724, ptr %l273
  br label %bb136
bb135:
  br label %bb159
bb136:
  %t725 = load i1, ptr %l273, !tbaa !21
  %t726 = xor i1 %t725, true
  br i1 %t726, label %bb137, label %bb138
bb137:
  %t728 = load ptr, ptr %lp3
  %t730 = insertvalue { i64, ptr } undef, i64 0, 0
  %t731 = insertvalue { i64, ptr } %t730, ptr %t728, 1
  %t732 = load ptr, ptr %lp6
  %t733 = load { i64, ptr }, ptr %t732, !tbaa !27
  %t734 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d61, i32 0, i32 1) }, 1
  %t735 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d61, i32 0, i32 1) }, 0
  %t737 = extractvalue { i64, ptr } %t733, 1
  %t738 = extractvalue { i64, ptr } %t733, 0
  %t739 = add i64 %t735, %t738
  %t740 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t739)
  call void @olang_textcopy(ptr %t740, ptr %t734, i64 %t735)
  %t741 = getelementptr i8, ptr %t740, i64 %t735
  call void @olang_textcopy(ptr %t741, ptr %t737, i64 %t738)
  %t742 = insertvalue { i64, ptr } undef, i64 %t739, 0
  %t743 = insertvalue { i64, ptr } %t742, ptr %t740, 1
  %t745 = insertvalue { { i64, ptr }, { i64, ptr } } undef, { i64, ptr } %t731, 0
  %t747 = insertvalue { { i64, ptr }, { i64, ptr } } %t745, { i64, ptr } %t743, 1
  call void @__olang_scope_close(ptr %s26)
  call void @__olang_scope_close(ptr %s0)
  store { { i64, ptr }, { i64, ptr } } %t747, ptr %rv
  br label %ret
bb138:
  br label %bb139
bb139:
  %t749 = load ptr, ptr %lp6
  %t750 = load { i64, ptr }, ptr %t749, !tbaa !27
  %t752 = call i1 @std_2fos_2eIsDir(ptr %v2, { i64, ptr } %t750)
  store i1 %t752, ptr %l281
  br label %bb140
bb140:
  %t753 = load i1, ptr %l281, !tbaa !21
  br i1 %t753, label %bb141, label %bb142
bb141:
  %t754 = load ptr, ptr %lp3
  %t756 = insertvalue { i64, ptr } undef, i64 0, 0
  %t757 = insertvalue { i64, ptr } %t756, ptr %t754, 1
  %t758 = load ptr, ptr %lp6
  %t759 = load { i64, ptr }, ptr %t758, !tbaa !27
  %t761 = extractvalue { i64, ptr } %t759, 1
  %t762 = extractvalue { i64, ptr } %t759, 0
  %t763 = extractvalue { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d62, i32 0, i32 1) }, 1
  %t764 = extractvalue { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d62, i32 0, i32 1) }, 0
  %t765 = add i64 %t762, %t764
  %t766 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t765)
  call void @olang_textcopy(ptr %t766, ptr %t761, i64 %t762)
  %t767 = getelementptr i8, ptr %t766, i64 %t762
  call void @olang_textcopy(ptr %t767, ptr %t763, i64 %t764)
  %t768 = insertvalue { i64, ptr } undef, i64 %t765, 0
  %t769 = insertvalue { i64, ptr } %t768, ptr %t766, 1
  %t771 = insertvalue { { i64, ptr }, { i64, ptr } } undef, { i64, ptr } %t757, 0
  %t773 = insertvalue { { i64, ptr }, { i64, ptr } } %t771, { i64, ptr } %t769, 1
  call void @__olang_scope_close(ptr %s26)
  call void @__olang_scope_close(ptr %s0)
  store { { i64, ptr }, { i64, ptr } } %t773, ptr %rv
  br label %ret
bb142:
  br label %bb143
bb143:
  %t775 = load ptr, ptr %lp6
  %t776 = load { i64, ptr }, ptr %t775, !tbaa !27
  %t778 = call { i32, { i64, ptr } } @std_2fos_2eReadFile(ptr %v2, ptr %s26, { i64, ptr } %t776)
  %t779 = extractvalue { i32, { i64, ptr } } %t778, 1
  %t780 = extractvalue { i32, { i64, ptr } } %t778, 0
  store i32 %t780, ptr %l290
  %t781 = icmp ne i32 %t780, 0
  br i1 %t781, label %bb145, label %ok.782, !prof !99
ok.782:
  store { i64, ptr } %t779, ptr %l289
  br label %bb144
bb144:
  %t783 = load { i64, ptr }, ptr %l289, !tbaa !27
  store { i64, ptr } %t783, ptr %l287, !tbaa !27
  br label %bb149
bb145:
  %t784 = load i32, ptr %l290, !tbaa !23
  %t785 = ashr i32 %t784, 16
  %t787 = icmp eq i32 %t785, 1
  store i1 %t787, ptr %l292, !tbaa !21
  %t788 = load i32, ptr %l290, !tbaa !23
  %t789 = ashr i32 %t788, 16
  %t791 = icmp eq i32 %t789, 1
  br i1 %t791, label %bb146, label %bb147
bb146:
  call void @__olang_errpay_pop()
  br label %bb147
bb147:
  br label %bb148
bb148:
  %t793 = load ptr, ptr %lp3
  %t795 = insertvalue { i64, ptr } undef, i64 0, 0
  %t796 = insertvalue { i64, ptr } %t795, ptr %t793, 1
  %t797 = load ptr, ptr %lp6
  %t798 = load { i64, ptr }, ptr %t797, !tbaa !27
  %t800 = extractvalue { i64, ptr } %t798, 1
  %t801 = extractvalue { i64, ptr } %t798, 0
  %t802 = extractvalue { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d63, i32 0, i32 1) }, 1
  %t803 = extractvalue { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d63, i32 0, i32 1) }, 0
  %t804 = add i64 %t801, %t803
  %t805 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t804)
  call void @olang_textcopy(ptr %t805, ptr %t800, i64 %t801)
  %t806 = getelementptr i8, ptr %t805, i64 %t801
  call void @olang_textcopy(ptr %t806, ptr %t802, i64 %t803)
  %t807 = insertvalue { i64, ptr } undef, i64 %t804, 0
  %t808 = insertvalue { i64, ptr } %t807, ptr %t805, 1
  %t810 = insertvalue { { i64, ptr }, { i64, ptr } } undef, { i64, ptr } %t796, 0
  %t812 = insertvalue { { i64, ptr }, { i64, ptr } } %t810, { i64, ptr } %t808, 1
  call void @__olang_scope_close(ptr %s26)
  call void @__olang_scope_close(ptr %s0)
  store { { i64, ptr }, { i64, ptr } } %t812, ptr %rv
  br label %ret
bb149:
  %t814 = load { i64, ptr }, ptr %l287, !tbaa !27
  store { i64, ptr } %t814, ptr %l20, !tbaa !27
  %t815 = load { i64, ptr }, ptr %l20, !tbaa !27
  %t817 = extractvalue { i64, ptr } %t815, 0
  store i64 %t817, ptr %l301, !tbaa !24
  %t818 = load i64, ptr %l301, !tbaa !24
  %t819 = icmp sge i64 %t818, 0
  br i1 %t819, label %bb150, label %bb151
bb150:
  %t821 = load i64, ptr %l301, !tbaa !24
  %t822 = mul i64 %t821, 1
  %t823 = call ptr @__olang_scope_alloc_zeroed(ptr %v0, i64 %t822)
  %t824 = insertvalue { i64, ptr } undef, i64 %t821, 0
  %t825 = insertvalue { i64, ptr } %t824, ptr %t823, 1
  %t826 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 16, i64 8)
  store ptr %t826, ptr %lp21
  %t828 = load ptr, ptr %lp21
  store { i64, ptr } %t825, ptr %t828, !tbaa !27
  %t829 = load { i64, ptr }, ptr %l20, !tbaa !27
  store { i64, ptr } %t829, ptr %l22, !tbaa !27
  store i64 0, ptr %l23, !tbaa !24
  %t831 = load { i64, ptr }, ptr %l22, !tbaa !27
  %t833 = extractvalue { i64, ptr } %t831, 0
  store i64 %t833, ptr %l24, !tbaa !24
  br label %bb152
bb151:
  call void @__olang_check_failed(ptr @olang_loc_5aefafbfcb5eb6b7_7e4be8b78a5947cb)
  unreachable
bb152:
  %t835 = load i64, ptr %l23, !tbaa !24
  %t836 = load i64, ptr %l24, !tbaa !24
  %t839 = icmp slt i64 %t835, %t836
  %t841 = xor i1 %t839, true
  br i1 %t841, label %bb153, label %bb154
bb153:
  br label %bb157
bb154:
  br label %bb155
bb155:
  %t843 = load i64, ptr %l23, !tbaa !24
  %t845 = load { i64, ptr }, ptr %l22, !tbaa !27
  store { i64, ptr } %t845, ptr %l312, !tbaa !27
  %t846 = load i64, ptr %l23, !tbaa !24
  %t848 = getelementptr { i64, ptr }, ptr %l312, i32 0, i32 1
  %t849 = load ptr, ptr %t848, !tbaa !27
  %t850 = getelementptr i8, ptr %t849, i64 %t846
  %t851 = load i8, ptr %t850, !tbaa !32
  %t857 = load ptr, ptr %lp21
  %t859 = getelementptr { i64, ptr }, ptr %t857, i32 0, i32 1
  %t860 = load ptr, ptr %t859, !tbaa !27
  %t861 = getelementptr i8, ptr %t860, i64 %t843
  store i8 %t851, ptr %t861, !tbaa !32
  br label %bb156
bb156:
  %t862 = load i64, ptr %l23, !tbaa !24
  %t864 = add i64 %t862, 1
  store i64 %t864, ptr %l23, !tbaa !24
  br label %bb152
bb157:
  %t866 = load ptr, ptr %l0, !tbaa !29
  %t868 = getelementptr %"compiler/load:Loader", ptr %t866, i32 0, i32 16
  %t869 = load ptr, ptr %lp6
  %t870 = load { i64, ptr }, ptr %t869, !tbaa !27
  %t871 = load ptr, ptr %lp21
  %t872 = load { i64, ptr }, ptr %t871, !tbaa !27
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_Ha0f924a08ec45a4a582ec1782d69c4be(ptr %v0, ptr %v2, ptr %v0, ptr %t868, { i64, ptr } %t870, { i64, ptr } %t872)
  br label %bb158
bb158:
  call void @__olang_scope_close(ptr %s26)
  br label %bb159
bb159:
  store i1 false, ptr %l27, !tbaa !21
  %t876 = load ptr, ptr %l4, !tbaa !29
  %t878 = getelementptr %"compiler/load:Module", ptr %t876, i32 0, i32 29
  store ptr %t878, ptr %l28, !tbaa !29
  store i64 0, ptr %l29, !tbaa !24
  br label %bb160
bb160:
  %t880 = load i64, ptr %l29, !tbaa !24
  store i64 %t880, ptr %l326, !tbaa !24
  %t881 = load ptr, ptr %l28, !tbaa !29
  %t883 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %v0, ptr %t881)
  store i64 %t883, ptr %l328
  br label %bb161
bb161:
  %t884 = load i64, ptr %l326, !tbaa !24
  %t885 = load i64, ptr %l328, !tbaa !24
  %t886 = icmp slt i64 %t884, %t885
  %t888 = xor i1 %t886, true
  br i1 %t888, label %bb162, label %bb163
bb162:
  br label %bb171
bb163:
  br label %bb164
bb164:
  %t890 = load ptr, ptr %l28, !tbaa !29
  %t891 = load i64, ptr %l29, !tbaa !24
  %t894 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %v0, ptr %v0, ptr %t890, i64 %t891)
  store { i64, ptr } %t894, ptr %l333
  br label %bb165
bb165:
  %t895 = load { i64, ptr }, ptr %l333, !tbaa !27
  %t897 = load ptr, ptr %lp6
  %t898 = load { i64, ptr }, ptr %t897, !tbaa !27
  %t901 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %v2, { i64, ptr } %t895, { i64, ptr } %t898)
  store i1 %t901, ptr %l336
  br label %bb166
bb166:
  %t902 = load i1, ptr %l336, !tbaa !21
  br i1 %t902, label %bb167, label %bb168
bb167:
  store i1 true, ptr %l27, !tbaa !21
  br label %bb169
bb168:
  br label %bb169
bb169:
  br label %bb170
bb170:
  %t903 = load i64, ptr %l29, !tbaa !24
  %t905 = add i64 %t903, 1
  store i64 %t905, ptr %l29, !tbaa !24
  br label %bb160
bb171:
  %t907 = load i1, ptr %l27, !tbaa !21
  %t909 = xor i1 %t907, true
  br i1 %t909, label %bb172, label %bb173
bb172:
  %t911 = load ptr, ptr %l4, !tbaa !29
  %t913 = getelementptr %"compiler/load:Module", ptr %t911, i32 0, i32 29
  %t914 = load ptr, ptr %lp6
  %t915 = load { i64, ptr }, ptr %t914, !tbaa !27
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v0, ptr %v2, ptr %t913, { i64, ptr } %t915)
  br label %bb174
bb173:
  br label %bb175
bb174:
  br label %bb175
bb175:
  %t918 = load ptr, ptr %l0, !tbaa !29
  %t920 = getelementptr %"compiler/load:Loader", ptr %t918, i32 0, i32 16
  %t921 = load ptr, ptr %lp6
  %t922 = load { i64, ptr }, ptr %t921, !tbaa !27
  %t925 = call { i32, { i64, ptr } } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_H412951a1c1c3c34f4f6a5a14e25e5986(ptr %v0, ptr %v2, ptr %v2, ptr %t920, { i64, ptr } %t922)
  %t926 = extractvalue { i32, { i64, ptr } } %t925, 1
  %t927 = extractvalue { i32, { i64, ptr } } %t925, 0
  store i32 %t927, ptr %l349
  %t928 = icmp ne i32 %t927, 0
  br i1 %t928, label %bb177, label %ok.929, !prof !99
ok.929:
  store { i64, ptr } %t926, ptr %l348
  br label %bb176
bb176:
  %t930 = load { i64, ptr }, ptr %l348, !tbaa !27
  store { i64, ptr } %t930, ptr %l344, !tbaa !27
  br label %bb179
bb177:
  br label %bb178
bb178:
  %t931 = load ptr, ptr %lp3
  %t933 = insertvalue { i64, ptr } undef, i64 0, 0
  %t934 = insertvalue { i64, ptr } %t933, ptr %t931, 1
  store { i64, ptr } %t934, ptr %l344, !tbaa !27
  br label %bb179
bb179:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d64, i32 0, i32 1) }, ptr %l352, !tbaa !27
  %t936 = load { i64, ptr }, ptr %l352, !tbaa !27
  %t937 = load { i64, ptr }, ptr %l344, !tbaa !27
  %t938 = insertvalue { { i64, ptr }, { i64, ptr } } undef, { i64, ptr } %t937, 0
  %t940 = insertvalue { { i64, ptr }, { i64, ptr } } %t938, { i64, ptr } %t936, 1
  store { { i64, ptr }, { i64, ptr } } %t940, ptr %l354
  %t941 = getelementptr { { i64, ptr }, { i64, ptr } }, ptr %l354, i32 0, i32 1
  %t942 = load { i64, ptr }, ptr %t941, !tbaa !27
  store { i64, ptr } %t942, ptr %l355, !tbaa !27
  %t943 = load { i64, ptr }, ptr %l355, !tbaa !27
  %t944 = extractvalue { i64, ptr } %t943, 0
  store i64 %t944, ptr %l356, !tbaa !24
  %t945 = load i64, ptr %l356, !tbaa !24
  %t946 = mul i64 %t945, 1
  %t947 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t946)
  %t948 = insertvalue { i64, ptr } undef, i64 %t945, 0
  %t949 = insertvalue { i64, ptr } %t948, ptr %t947, 1
  store { i64, ptr } %t949, ptr %l357, !tbaa !27
  %t950 = getelementptr { i64, ptr }, ptr %l357, i32 0, i32 1
  %t951 = load ptr, ptr %t950, !tbaa !27
  %t952 = getelementptr { i64, ptr }, ptr %l355, i32 0, i32 1
  %t953 = load ptr, ptr %t952, !tbaa !27
  %t954 = load i64, ptr %l356, !tbaa !24
  %t955 = mul i64 %t954, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t951, ptr %t953, i64 %t955, i1 false)
  %t956 = load { i64, ptr }, ptr %l357, !tbaa !27
  %t957 = getelementptr { { i64, ptr }, { i64, ptr } }, ptr %l354, i32 0, i32 1
  store { i64, ptr } %t956, ptr %t957, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  %t958 = load { { i64, ptr }, { i64, ptr } }, ptr %l354
  store { { i64, ptr }, { i64, ptr } } %t958, ptr %rv
  br label %ret
ret:
  %rr = load { { i64, ptr }, { i64, ptr } }, ptr %rv
  ret { { i64, ptr }, { i64, ptr } } %rr
}

define dso_local %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2fload_2ecompiler_2fload_3aLoader_2eLinks(ptr %v0, ptr %v1, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %lp1 = alloca ptr
  %lp2 = alloca ptr
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
  %s4 = alloca %olang.scope
  %rv = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2ector(ptr %v1, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1, ptr %l13
  br label %bb1
bb1:
  %t2 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 32, i64 8)
  store ptr %t2, ptr %lp1
  %t3 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l13
  %t4 = load ptr, ptr %lp1
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t3, ptr %t4
  %t5 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20Bool_3e(ptr %v1)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t5, ptr %l14
  br label %bb2
bb2:
  %t6 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 72, i64 8)
  store ptr %t6, ptr %lp2
  %t7 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l14
  %t8 = load ptr, ptr %lp2
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t7, ptr %t8
  store i64 0, ptr %l3, !tbaa !24
  %t9 = load ptr, ptr %l0, !tbaa !29
  %t11 = getelementptr %"compiler/load:Loader", ptr %t9, i32 0, i32 10
  %t13 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_Hb2d19b6b5ea5ab5a85c5720545345bd4(ptr %v0, ptr %t11)
  store i64 %t13, ptr %l17
  br label %bb3
bb3:
  %t14 = load i64, ptr %l17, !tbaa !24
  store i64 %t14, ptr %l4, !tbaa !24
  store i64 1, ptr %l5, !tbaa !24
  %t15 = load i64, ptr %l4, !tbaa !24
  %t16 = load i64, ptr %l3, !tbaa !24
  %t19 = icmp sgt i64 %t15, %t16
  br i1 %t19, label %bb4, label %bb5
bb4:
  %t21 = load i64, ptr %l5, !tbaa !24
  %t23 = icmp sgt i64 %t21, 0
  br i1 %t23, label %bb6, label %bb7
bb5:
  store i64 0, ptr %l21, !tbaa !24
  br label %bb9
bb6:
  %t25 = load i64, ptr %l4, !tbaa !24
  %t26 = load i64, ptr %l3, !tbaa !24
  %t29 = sub i64 %t25, %t26
  %t30 = load i64, ptr %l5, !tbaa !24
  %t33 = add i64 %t29, %t30
  %t35 = sub i64 %t33, 1
  %t36 = load i64, ptr %l5, !tbaa !24
  %t39 = sdiv i64 %t35, %t36
  store i64 %t39, ptr %l24, !tbaa !24
  br label %bb8
bb7:
  store i64 0, ptr %l24, !tbaa !24
  br label %bb8
bb8:
  %t41 = load i64, ptr %l24, !tbaa !24
  store i64 %t41, ptr %l21, !tbaa !24
  br label %bb9
bb9:
  %t42 = load i64, ptr %l21, !tbaa !24
  store i64 %t42, ptr %l6, !tbaa !24
  store i64 0, ptr %l7, !tbaa !24
  br label %bb10
bb10:
  %t43 = load i64, ptr %l7, !tbaa !24
  %t44 = load i64, ptr %l6, !tbaa !24
  %t47 = icmp slt i64 %t43, %t44
  %t49 = xor i1 %t47, true
  br i1 %t49, label %bb11, label %bb12
bb11:
  br label %bb37
bb12:
  br label %bb13
bb13:
  %t51 = load i64, ptr %l3, !tbaa !24
  %t52 = load i64, ptr %l7, !tbaa !24
  %t53 = load i64, ptr %l5, !tbaa !24
  %t56 = mul i64 %t52, %t53
  %t59 = add i64 %t51, %t56
  store i64 %t59, ptr %l8, !tbaa !24
  %t61 = load ptr, ptr %l0, !tbaa !29
  %t63 = getelementptr %"compiler/load:Loader", ptr %t61, i32 0, i32 10
  %t64 = load i64, ptr %l8, !tbaa !24
  %t67 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H7bcf2aeb09afa796f4333e6ec8c3f63f(ptr %v0, ptr %v0, ptr %t63, i64 %t64)
  store ptr %t67, ptr %l45
  br label %bb14
bb14:
  %t68 = load ptr, ptr %l45, !tbaa !29
  store ptr %t68, ptr %l9, !tbaa !29
  %t69 = load ptr, ptr %l9, !tbaa !29
  %t71 = getelementptr %"compiler/load:Module", ptr %t69, i32 0, i32 11
  store ptr %t71, ptr %l10, !tbaa !29
  store i64 0, ptr %l11, !tbaa !24
  br label %bb15
bb15:
  store %olang.scope zeroinitializer, ptr %s4
  %t73 = load i64, ptr %l11, !tbaa !24
  store i64 %t73, ptr %l48, !tbaa !24
  %t74 = load ptr, ptr %l10, !tbaa !29
  %t76 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fload_3aImport_3e_2eLen_3ccompiler_2fload_3aImport_3e(ptr %v0, ptr %t74)
  store i64 %t76, ptr %l50
  br label %bb16
bb16:
  %t77 = load i64, ptr %l48, !tbaa !24
  %t78 = load i64, ptr %l50, !tbaa !24
  %t79 = icmp slt i64 %t77, %t78
  %t81 = xor i1 %t79, true
  br i1 %t81, label %bb17, label %bb18
bb17:
  call void @__olang_scope_close(ptr %s4)
  br label %bb34
bb18:
  br label %bb19
bb19:
  %t83 = load ptr, ptr %l10, !tbaa !29
  %t84 = load i64, ptr %l11, !tbaa !24
  %t87 = call %"compiler/load:Import" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fload_3aImport_3e_2eAt_3ccompiler_2fload_3aImport_3e(ptr %v0, ptr %v0, ptr %t83, i64 %t84)
  store %"compiler/load:Import" %t87, ptr %l55
  br label %bb20
bb20:
  %t88 = load %"compiler/load:Import", ptr %l55
  store %"compiler/load:Import" %t88, ptr %l12
  %t89 = getelementptr %"compiler/load:Import", ptr %l12, i32 0, i32 6
  %t90 = load { i64, ptr }, ptr %t89, !tbaa !27
  %t92 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s4, { i64, ptr } %t90, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d65, i32 0, i32 1) })
  store i1 %t92, ptr %l57
  br label %bb21
bb21:
  %t93 = load i1, ptr %l57, !tbaa !21
  br i1 %t93, label %bb22, label %bb23
bb22:
  store i1 true, ptr %l58, !tbaa !21
  br label %bb24
bb23:
  %t94 = getelementptr %"compiler/load:Import", ptr %l12, i32 0, i32 5
  %t95 = load i64, ptr %t94, !tbaa !24
  %t97 = icmp slt i64 %t95, 0
  store i1 %t97, ptr %l58, !tbaa !21
  br label %bb24
bb24:
  %t99 = load i1, ptr %l58, !tbaa !21
  br i1 %t99, label %bb25, label %bb26
bb25:
  store i1 true, ptr %l61, !tbaa !21
  br label %bb28
bb26:
  %t100 = load ptr, ptr %l0, !tbaa !29
  %t102 = getelementptr %"compiler/load:Loader", ptr %t100, i32 0, i32 10
  %t103 = getelementptr %"compiler/load:Import", ptr %l12, i32 0, i32 5
  %t104 = load i64, ptr %t103, !tbaa !24
  %t107 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H7bcf2aeb09afa796f4333e6ec8c3f63f(ptr %v0, ptr %v0, ptr %t102, i64 %t104)
  store ptr %t107, ptr %l65
  br label %bb27
bb27:
  %t108 = load ptr, ptr %l65, !tbaa !29
  %t110 = getelementptr %"compiler/load:Module", ptr %t108, i32 0, i32 30
  %t111 = load i1, ptr %t110, !tbaa !21
  %t113 = xor i1 %t111, true
  store i1 %t113, ptr %l61, !tbaa !21
  br label %bb28
bb28:
  %t115 = load i1, ptr %l61, !tbaa !21
  br i1 %t115, label %bb29, label %bb30
bb29:
  call void @__olang_scope_close(ptr %s4)
  br label %bb33
bb30:
  br label %bb31
bb31:
  %t116 = load ptr, ptr %l0, !tbaa !29
  %t117 = load i64, ptr %l8, !tbaa !24
  %t118 = getelementptr %"compiler/load:Import", ptr %l12, i32 0, i32 7
  %t119 = load %"compiler/source:Span", ptr %t118
  %t120 = load ptr, ptr %lp1
  %t121 = load ptr, ptr %lp2
  call void @compiler_2fload_2ecompiler_2fload_3aLoader_2eaddLink(ptr %v0, ptr %v1, ptr %v1, ptr %t116, i64 %t117, %"compiler/source:Span" %t119, ptr %t120, ptr %t121)
  br label %bb32
bb32:
  call void @__olang_scope_close(ptr %s4)
  br label %bb33
bb33:
  %t127 = load i64, ptr %l11, !tbaa !24
  %t129 = add i64 %t127, 1
  store i64 %t129, ptr %l11, !tbaa !24
  br label %bb15
bb34:
  %t131 = load ptr, ptr %l0, !tbaa !29
  %t132 = load i64, ptr %l8, !tbaa !24
  %t133 = load ptr, ptr %l9, !tbaa !29
  %t135 = getelementptr %"compiler/load:Module", ptr %t133, i32 0, i32 8
  %t136 = load { i64, ptr }, ptr %t135, !tbaa !27
  %t137 = load ptr, ptr %lp1
  %t138 = load ptr, ptr %lp2
  call void @compiler_2fload_2ecompiler_2fload_3aLoader_2elinksIn(ptr %v0, ptr %v0, ptr %v1, ptr %v1, ptr %t131, i64 %t132, { i64, ptr } %t136, ptr %t137, ptr %t138)
  br label %bb35
bb35:
  br label %bb36
bb36:
  %t144 = load i64, ptr %l7, !tbaa !24
  %t146 = add i64 %t144, 1
  store i64 %t146, ptr %l7, !tbaa !24
  br label %bb10
bb37:
  %t148 = load ptr, ptr %lp1
  %t149 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t148
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t149, ptr %rv
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
  %lp10 = alloca ptr
  %l11 = alloca ptr
  %l12 = alloca i64
  %l14 = alloca { i64, ptr }
  %l15 = alloca %"compiler/scan:Tokens"
  %l16 = alloca ptr
  %l17 = alloca i64
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
  %l60 = alloca i64
  %l62 = alloca i64
  %l67 = alloca { i64, ptr }
  %l68 = alloca { i64, ptr }
  %l70 = alloca { i64, ptr }
  %l71 = alloca i32
  %l73 = alloca i1
  %l77 = alloca %"compiler/scan:Tokens"
  %l80 = alloca ptr
  %l81 = alloca i64
  %l83 = alloca i64
  %l88 = alloca { i64, ptr }
  %l97 = alloca i64
  %l99 = alloca i64
  %l104 = alloca { i64, ptr }
  %l105 = alloca ptr
  %l106 = alloca { i64, ptr }
  %l107 = alloca i64
  %l111 = alloca { i64, ptr }
  %l113 = alloca i64
  %s0 = alloca %olang.scope
  %s3 = alloca %olang.scope
  %s7 = alloca %olang.scope
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
  %t33 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2ector(ptr %v0, i64 0)
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
  br label %bb20
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
  %t68 = call { i64, ptr } @std_2ffilepath_2eJoin(ptr %s3, ptr %v0, { i64, ptr } %t66)
  store { i64, ptr } %t68, ptr %l52
  br label %bb13
bb13:
  %t69 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 16, i64 8)
  store ptr %t69, ptr %lp10
  %t70 = load { i64, ptr }, ptr %l52, !tbaa !27
  %t71 = load ptr, ptr %lp10
  store { i64, ptr } %t70, ptr %t71, !tbaa !27
  %t72 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t74 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEndsWith(ptr %s0, ptr %s3, { i64, ptr } %t72, { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d67, i32 0, i32 1) })
  store i1 %t74, ptr %l54
  br label %bb14
bb14:
  %t75 = load i1, ptr %l54, !tbaa !21
  br i1 %t75, label %bb15, label %bb16
bb15:
  %t76 = load ptr, ptr %lp10
  %t77 = load { i64, ptr }, ptr %t76, !tbaa !27
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v0, ptr %v0, ptr %l4, { i64, ptr } %t77)
  br label %bb17
bb16:
  br label %bb18
bb17:
  br label %bb18
bb18:
  call void @__olang_scope_close(ptr %s3)
  br label %bb19
bb19:
  %t80 = load i64, ptr %l6, !tbaa !24
  %t82 = add i64 %t80, 1
  store i64 %t82, ptr %l6, !tbaa !24
  br label %bb9
bb20:
  store ptr %l4, ptr %l11, !tbaa !29
  store i64 0, ptr %l12, !tbaa !24
  br label %bb21
bb21:
  store %olang.scope zeroinitializer, ptr %s7
  %t85 = load i64, ptr %l12, !tbaa !24
  store i64 %t85, ptr %l60, !tbaa !24
  %t86 = load ptr, ptr %l11, !tbaa !29
  %t88 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %v0, ptr %t86)
  store i64 %t88, ptr %l62
  br label %bb22
bb22:
  %t89 = load i64, ptr %l60, !tbaa !24
  %t90 = load i64, ptr %l62, !tbaa !24
  %t91 = icmp slt i64 %t89, %t90
  %t93 = xor i1 %t91, true
  br i1 %t93, label %bb23, label %bb24
bb23:
  call void @__olang_scope_close(ptr %s7)
  br label %bb45
bb24:
  br label %bb25
bb25:
  %t95 = load ptr, ptr %l11, !tbaa !29
  %t96 = load i64, ptr %l12, !tbaa !24
  %t99 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %v0, ptr %v0, ptr %t95, i64 %t96)
  store { i64, ptr } %t99, ptr %l67
  br label %bb26
bb26:
  %t100 = load { i64, ptr }, ptr %l67, !tbaa !27
  %t103 = call { i32, { i64, ptr } } @std_2fos_2eReadFile(ptr %v0, ptr %v0, { i64, ptr } %t100)
  %t104 = extractvalue { i32, { i64, ptr } } %t103, 1
  %t105 = extractvalue { i32, { i64, ptr } } %t103, 0
  store i32 %t105, ptr %l71
  %t106 = icmp ne i32 %t105, 0
  br i1 %t106, label %bb28, label %ok.107, !prof !99
ok.107:
  store { i64, ptr } %t104, ptr %l70
  br label %bb27
bb27:
  %t108 = load { i64, ptr }, ptr %l70, !tbaa !27
  store { i64, ptr } %t108, ptr %l68, !tbaa !27
  br label %bb32
bb28:
  %t109 = load i32, ptr %l71, !tbaa !23
  %t110 = ashr i32 %t109, 16
  %t112 = icmp eq i32 %t110, 1
  store i1 %t112, ptr %l73, !tbaa !21
  %t113 = load i32, ptr %l71, !tbaa !23
  %t114 = ashr i32 %t113, 16
  %t116 = icmp eq i32 %t114, 1
  br i1 %t116, label %bb29, label %bb30
bb29:
  call void @__olang_errpay_pop()
  br label %bb30
bb30:
  br label %bb31
bb31:
  call void @__olang_scope_close(ptr %s7)
  br label %bb44
bb32:
  %t118 = load { i64, ptr }, ptr %l68, !tbaa !27
  store { i64, ptr } %t118, ptr %l14, !tbaa !27
  %t119 = load { i64, ptr }, ptr %l14, !tbaa !27
  %t121 = call %"compiler/scan:Tokens" @compiler_2fscan_2eTokens_2eScan(ptr %v0, ptr %s7, { i64, ptr } %t119)
  store %"compiler/scan:Tokens" %t121, ptr %l77
  br label %bb33
bb33:
  %t122 = load %"compiler/scan:Tokens", ptr %l77
  store %"compiler/scan:Tokens" %t122, ptr %l15
  %t123 = load { i64, ptr }, ptr %l14, !tbaa !27
  %t126 = call ptr @compiler_2fload_2etypeNames(ptr %v0, ptr %s7, ptr %v0, { i64, ptr } %t123, ptr %l15)
  store ptr %t126, ptr %l80
  br label %bb34
bb34:
  %t127 = load ptr, ptr %l80, !tbaa !29
  store ptr %t127, ptr %l16, !tbaa !29
  store i64 0, ptr %l17, !tbaa !24
  br label %bb35
bb35:
  %t128 = load i64, ptr %l17, !tbaa !24
  store i64 %t128, ptr %l81, !tbaa !24
  %t129 = load ptr, ptr %l16, !tbaa !29
  %t131 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %v0, ptr %t129)
  store i64 %t131, ptr %l83
  br label %bb36
bb36:
  %t132 = load i64, ptr %l81, !tbaa !24
  %t133 = load i64, ptr %l83, !tbaa !24
  %t134 = icmp slt i64 %t132, %t133
  %t136 = xor i1 %t134, true
  br i1 %t136, label %bb37, label %bb38
bb37:
  br label %bb43
bb38:
  br label %bb39
bb39:
  %t138 = load ptr, ptr %l16, !tbaa !29
  %t139 = load i64, ptr %l17, !tbaa !24
  %t142 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %v0, ptr %v0, ptr %t138, i64 %t139)
  store { i64, ptr } %t142, ptr %l88
  br label %bb40
bb40:
  %t143 = load { i64, ptr }, ptr %l88, !tbaa !27
  %t144 = load ptr, ptr %l0, !tbaa !29
  %t146 = getelementptr %"compiler/load:Loader", ptr %t144, i32 0, i32 11
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v0, ptr %v0, ptr %t146, { i64, ptr } %t143)
  br label %bb41
bb41:
  br label %bb42
bb42:
  %t150 = load i64, ptr %l17, !tbaa !24
  %t152 = add i64 %t150, 1
  store i64 %t152, ptr %l17, !tbaa !24
  br label %bb35
bb43:
  call void @__olang_scope_close(ptr %s7)
  br label %bb44
bb44:
  %t154 = load i64, ptr %l12, !tbaa !24
  %t156 = add i64 %t154, 1
  store i64 %t156, ptr %l12, !tbaa !24
  br label %bb21
bb45:
  store ptr %l4, ptr %l19, !tbaa !29
  store i64 0, ptr %l20, !tbaa !24
  br label %bb46
bb46:
  %t159 = load i64, ptr %l20, !tbaa !24
  store i64 %t159, ptr %l97, !tbaa !24
  %t160 = load ptr, ptr %l19, !tbaa !29
  %t162 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %v0, ptr %t160)
  store i64 %t162, ptr %l99
  br label %bb47
bb47:
  %t163 = load i64, ptr %l97, !tbaa !24
  %t164 = load i64, ptr %l99, !tbaa !24
  %t165 = icmp slt i64 %t163, %t164
  %t167 = xor i1 %t165, true
  br i1 %t167, label %bb48, label %bb49
bb48:
  br label %bb57
bb49:
  br label %bb50
bb50:
  %t169 = load ptr, ptr %l19, !tbaa !29
  %t170 = load i64, ptr %l20, !tbaa !24
  %t173 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %v0, ptr %v0, ptr %t169, i64 %t170)
  store { i64, ptr } %t173, ptr %l104
  br label %bb51
bb51:
  %t174 = load { i64, ptr }, ptr %l104, !tbaa !27
  store { i64, ptr } %t174, ptr %l21, !tbaa !27
  %t175 = load ptr, ptr %l0, !tbaa !29
  store ptr %t175, ptr %l105, !tbaa !29
  %t176 = load { i64, ptr }, ptr %l21, !tbaa !27
  store { i64, ptr } %t176, ptr %l106, !tbaa !27
  %t177 = ptrtoint ptr %v0 to i64
  store i64 %t177, ptr %l107, !tbaa !24
  %t178 = load i1, ptr @olang_2esole_2ecompiler_2fload_3aModule_2e2
  br i1 %t178, label %bb52, label %bb53
bb52:
  %t180 = call ptr @__olang_region_make(ptr %v0)
  %t181 = ptrtoint ptr %t180 to i64
  store i64 %t181, ptr %l107, !tbaa !24
  br label %bb53
bb53:
  %t182 = load ptr, ptr %l0, !tbaa !29
  %t183 = load { i64, ptr }, ptr %l21, !tbaa !27
  %t184 = load i64, ptr %l107
  %t185 = inttoptr i64 %t184 to ptr
  %t188 = call { i64, ptr } @compiler_2fload_2ecompiler_2fload_3aLoader_2erootIdentity(ptr %v0, ptr %v0, ptr %t185, ptr %t182, { i64, ptr } %t183)
  store { i64, ptr } %t188, ptr %l111
  br label %bb54
bb54:
  %t189 = load { i64, ptr }, ptr %l111, !tbaa !27
  %t190 = load i64, ptr %l107
  %t191 = inttoptr i64 %t190 to ptr
  %t192 = extractvalue { i64, ptr } %t189, 0
  %t193 = extractvalue { i64, ptr } %t189, 1
  %t194 = mul i64 %t192, 1
  %t195 = call ptr @__olang_scope_alloc(ptr %t191, i64 %t194)
  call void @llvm.memcpy.p0.p0.i64(ptr %t195, ptr %t193, i64 %t194, i1 false)
  %t196 = insertvalue { i64, ptr } undef, i64 %t192, 0
  %t197 = insertvalue { i64, ptr } %t196, ptr %t195, 1
  %t198 = load ptr, ptr %l105, !tbaa !29
  %t199 = load { i64, ptr }, ptr %l106, !tbaa !27
  %t201 = call i64 @compiler_2fload_2ecompiler_2fload_3aLoader_2eload(ptr %v0, ptr %v0, ptr %v0, ptr %t198, { i64, ptr } %t199, { i64, ptr } %t197, i1 true, i1 false)
  store i64 %t201, ptr %l113
  br label %bb55
bb55:
  br label %bb56
bb56:
  %t202 = load i64, ptr %l20, !tbaa !24
  %t204 = add i64 %t202, 1
  store i64 %t204, ptr %l20, !tbaa !24
  br label %bb46
bb57:
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
  %lp7 = alloca ptr
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
  %s1 = alloca %olang.scope
  %t174 = alloca { i64, [3 x i64] }, align 8
  store ptr %a0, ptr %l0
  store %"compiler/source:Span" %a2, ptr %l2
  store ptr %a4, ptr %l4
  br label %start
start:
  br label %bb0
bb0:
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
  %t63 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t62)
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
  %t72 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 16, i64 8)
  store ptr %t72, ptr %lp7
  %t73 = load { i64, ptr }, ptr %l34, !tbaa !27
  %t74 = load ptr, ptr %lp7
  store { i64, ptr } %t73, ptr %t74, !tbaa !27
  %t75 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t77 = call i1 @compiler_2fload_2eLinkIsFile(ptr %v0, { i64, ptr } %t75)
  store i1 %t77, ptr %l36
  br label %bb11
bb10:
  call void @__olang_check_failed(ptr @olang_loc_c887c5acf0277416_b8456d2f32e25a62)
  unreachable
bb11:
  %t78 = load i1, ptr %l36, !tbaa !21
  br i1 %t78, label %bb12, label %bb13
bb12:
  store %olang.scope zeroinitializer, ptr %s1
  %t79 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t81 = call i1 @std_2ffilepath_2eIsAbs(ptr %v0, { i64, ptr } %t79)
  store i1 %t81, ptr %l38
  br label %bb14
bb13:
  %t82 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t84 = call i1 @compiler_2fload_2eLinkName(ptr %v0, { i64, ptr } %t82)
  store i1 %t84, ptr %l55
  br label %bb23
bb14:
  %t85 = load i1, ptr %l38, !tbaa !21
  br i1 %t85, label %bb15, label %bb16
bb15:
  %t86 = load { i64, ptr }, ptr %l6, !tbaa !27
  store { i64, ptr } %t86, ptr %l39, !tbaa !27
  br label %bb19
bb16:
  %t88 = load ptr, ptr %l5, !tbaa !29
  %t90 = getelementptr %"compiler/load:Module", ptr %t88, i32 0, i32 1
  %t91 = load { i64, ptr }, ptr %t90, !tbaa !27
  %t93 = call { i64, ptr } @std_2ffilepath_2eDir(ptr %v0, ptr %s1, { i64, ptr } %t91)
  store { i64, ptr } %t93, ptr %l43
  br label %bb17
bb17:
  %t94 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t95 = load { i64, ptr }, ptr %l43, !tbaa !27
  %t96 = insertvalue [2 x { i64, ptr }] undef, { i64, ptr } %t95, 0
  %t98 = insertvalue [2 x { i64, ptr }] %t96, { i64, ptr } %t94, 1
  store [2 x { i64, ptr }] %t98, ptr %l8
  %t101 = insertvalue { i64, ptr } undef, i64 2, 0
  %t102 = insertvalue { i64, ptr } %t101, ptr %l8, 1
  %t104 = call { i64, ptr } @std_2ffilepath_2eJoin(ptr %s1, ptr %v0, { i64, ptr } %t102)
  store { i64, ptr } %t104, ptr %l48
  br label %bb18
bb18:
  %t105 = load { i64, ptr }, ptr %l48, !tbaa !27
  %t106 = extractvalue { i64, ptr } %t105, 0
  %t107 = extractvalue { i64, ptr } %t105, 1
  %t108 = mul i64 %t106, 1
  %t109 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t108)
  call void @llvm.memcpy.p0.p0.i64(ptr %t109, ptr %t107, i64 %t108, i1 false)
  %t110 = insertvalue { i64, ptr } undef, i64 %t106, 0
  %t111 = insertvalue { i64, ptr } %t110, ptr %t109, 1
  store { i64, ptr } %t111, ptr %l39, !tbaa !27
  br label %bb19
bb19:
  %t113 = load { i64, ptr }, ptr %l39, !tbaa !27
  %t114 = extractvalue { i64, ptr } %t113, 1
  %t115 = extractvalue { i64, ptr } %t113, 0
  %t116 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t115)
  call void @olang_textcopy(ptr %t116, ptr %t114, i64 %t115)
  %t117 = insertvalue { i64, ptr } undef, i64 %t115, 0
  %t118 = insertvalue { i64, ptr } %t117, ptr %t116, 1
  store { i64, ptr } %t118, ptr %l50, !tbaa !27
  %t119 = load ptr, ptr %lp7
  %t120 = load { i64, ptr }, ptr %t119, !tbaa !27
  %t121 = extractvalue { i64, ptr } %t120, 0
  %t122 = load { i64, ptr }, ptr %l50, !tbaa !27
  %t123 = extractvalue { i64, ptr } %t122, 0
  store i64 %t123, ptr %l52, !tbaa !24
  %t125 = load i64, ptr %l52, !tbaa !24
  %t126 = icmp eq i64 %t121, %t125
  br i1 %t126, label %bb20, label %bb21
bb20:
  %t128 = load ptr, ptr %lp7
  %t129 = getelementptr { i64, ptr }, ptr %t128, i32 0, i32 1
  %t130 = load ptr, ptr %t129, !tbaa !27
  %t131 = getelementptr { i64, ptr }, ptr %l50, i32 0, i32 1
  %t132 = load ptr, ptr %t131, !tbaa !27
  %t133 = load i64, ptr %l52, !tbaa !24
  %t134 = mul i64 %t133, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t130, ptr %t132, i64 %t134, i1 false)
  br label %bb22
bb21:
  %t135 = load { i64, ptr }, ptr %l50, !tbaa !27
  %t136 = load ptr, ptr %lp7
  store { i64, ptr } %t135, ptr %t136, !tbaa !27
  br label %bb22
bb22:
  call void @__olang_scope_close(ptr %s1)
  br label %bb33
bb23:
  %t137 = load i1, ptr %l55, !tbaa !21
  br i1 %t137, label %bb24, label %bb25
bb24:
  %t138 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t139 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d69, i32 0, i32 1) }, 1
  %t140 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d69, i32 0, i32 1) }, 0
  %t142 = extractvalue { i64, ptr } %t138, 1
  %t143 = extractvalue { i64, ptr } %t138, 0
  %t144 = add i64 %t140, %t143
  %t145 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t144)
  call void @olang_textcopy(ptr %t145, ptr %t139, i64 %t140)
  %t146 = getelementptr i8, ptr %t145, i64 %t140
  call void @olang_textcopy(ptr %t146, ptr %t142, i64 %t143)
  %t147 = insertvalue { i64, ptr } undef, i64 %t144, 0
  %t148 = insertvalue { i64, ptr } %t147, ptr %t145, 1
  store { i64, ptr } %t148, ptr %l57, !tbaa !27
  %t149 = load ptr, ptr %lp7
  %t150 = load { i64, ptr }, ptr %t149, !tbaa !27
  %t151 = extractvalue { i64, ptr } %t150, 0
  %t152 = load { i64, ptr }, ptr %l57, !tbaa !27
  %t153 = extractvalue { i64, ptr } %t152, 0
  store i64 %t153, ptr %l59, !tbaa !24
  %t155 = load i64, ptr %l59, !tbaa !24
  %t156 = icmp eq i64 %t151, %t155
  br i1 %t156, label %bb26, label %bb27
bb25:
  %t158 = load ptr, ptr %l0, !tbaa !29
  %t160 = getelementptr %"compiler/load:Loader", ptr %t158, i32 0, i32 4
  %t161 = load ptr, ptr %t160, !tbaa !29
  store ptr %t161, ptr %l62, !tbaa !29
  %t162 = load ptr, ptr %l5, !tbaa !29
  %t164 = getelementptr %"compiler/load:Module", ptr %t162, i32 0, i32 4
  %t165 = load i64, ptr %t164, !tbaa !24
  %t166 = getelementptr %"compiler/source:Span", ptr %l2, i32 0, i32 0
  %t167 = load i32, ptr %t166, !tbaa !23
  %t169 = sext i32 %t167 to i64
  %t170 = getelementptr %"compiler/source:Span", ptr %l2, i32 0, i32 1
  %t171 = load i32, ptr %t170, !tbaa !23
  %t173 = sext i32 %t171 to i64
  store { i64, [3 x i64] } zeroinitializer, ptr %t174
  %t175 = getelementptr { i64, [3 x i64] }, ptr %t174, i32 0, i32 0
  store i64 3, ptr %t175
  %t177 = insertvalue { i64, i64, i64 } undef, i64 %t165, 0
  %t179 = insertvalue { i64, i64, i64 } %t177, i64 %t169, 1
  %t181 = insertvalue { i64, i64, i64 } %t179, i64 %t173, 2
  %t182 = getelementptr { i64, [3 x i64] }, ptr %t174, i32 0, i32 1
  store { i64, i64, i64 } %t181, ptr %t182
  %t183 = load { i64, [3 x i64] }, ptr %t174
  store { i64, [3 x i64] } %t183, ptr %l69
  %t184 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t186 = call { i64, ptr } @compiler_2fmsgs_2eTok(ptr %v0, ptr %v0, { i64, ptr } %t184)
  store { i64, ptr } %t186, ptr %l71
  br label %bb29
bb26:
  %t187 = load ptr, ptr %lp7
  %t188 = getelementptr { i64, ptr }, ptr %t187, i32 0, i32 1
  %t189 = load ptr, ptr %t188, !tbaa !27
  %t190 = getelementptr { i64, ptr }, ptr %l57, i32 0, i32 1
  %t191 = load ptr, ptr %t190, !tbaa !27
  %t192 = load i64, ptr %l59, !tbaa !24
  %t193 = mul i64 %t192, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t189, ptr %t191, i64 %t193, i1 false)
  br label %bb28
bb27:
  %t194 = load { i64, ptr }, ptr %l57, !tbaa !27
  %t195 = load ptr, ptr %lp7
  store { i64, ptr } %t194, ptr %t195, !tbaa !27
  br label %bb28
bb28:
  br label %bb32
bb29:
  %t196 = load { i64, ptr }, ptr %l71, !tbaa !27
  %t197 = extractvalue { i64, ptr } %t196, 0
  %t198 = extractvalue { i64, ptr } %t196, 1
  %t199 = mul i64 %t197, 1
  %t200 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t199)
  call void @llvm.memcpy.p0.p0.i64(ptr %t200, ptr %t198, i64 %t199, i1 false)
  %t201 = insertvalue { i64, ptr } undef, i64 %t197, 0
  %t202 = insertvalue { i64, ptr } %t201, ptr %t200, 1
  %t204 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eLinkName(ptr %v0, ptr %v0, { i64, ptr } %t202)
  store %"compiler/diagmsg:Msg" %t204, ptr %l73
  br label %bb30
bb30:
  %t205 = load ptr, ptr %l62, !tbaa !29
  %t206 = load { i64, [3 x i64] }, ptr %l69
  %t207 = load %"compiler/diagmsg:Msg", ptr %l73
  %t208 = call i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eError(ptr %v0, ptr %v0, ptr %t205, { i64, [3 x i64] } %t206, %"compiler/diagmsg:Msg" %t207)
  store i64 %t208, ptr %l74
  br label %bb31
bb31:
  br label %ret
bb32:
  br label %bb33
bb33:
  %t209 = load ptr, ptr %l4, !tbaa !29
  %t210 = load ptr, ptr %lp7
  %t211 = load { i64, ptr }, ptr %t210, !tbaa !27
  %t214 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_H6b5ccacad8db807339a3579aa8c82ff8(ptr %v2, ptr %v2, ptr %t209, { i64, ptr } %t211)
  store i1 %t214, ptr %l77
  br label %bb34
bb34:
  %t215 = load i1, ptr %l77, !tbaa !21
  br i1 %t215, label %bb35, label %bb36
bb35:
  br label %ret
bb36:
  br label %bb37
bb37:
  %t216 = load ptr, ptr %l4, !tbaa !29
  %t217 = load ptr, ptr %lp7
  %t218 = load { i64, ptr }, ptr %t217, !tbaa !27
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_H2b85ceff512af6e6ca26c554a1c16247(ptr %v2, ptr %v2, ptr %t216, { i64, ptr } %t218, i1 true)
  br label %bb38
bb38:
  %t222 = load ptr, ptr %lp7
  %t223 = load { i64, ptr }, ptr %t222, !tbaa !27
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v1, ptr %v2, ptr %a3, { i64, ptr } %t223)
  br label %bb39
bb39:
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
  %t146 = call { i64, ptr } @compiler_2fmsgs_2eTok(ptr %v0, ptr %v0, { i64, ptr } %t144)
  store { i64, ptr } %t146, ptr %l87
  br label %bb35
bb35:
  %t147 = load { i64, ptr }, ptr %l87, !tbaa !27
  %t148 = extractvalue { i64, ptr } %t147, 0
  %t149 = extractvalue { i64, ptr } %t147, 1
  %t150 = mul i64 %t148, 1
  %t151 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t150)
  call void @llvm.memcpy.p0.p0.i64(ptr %t151, ptr %t149, i64 %t150, i1 false)
  %t152 = insertvalue { i64, ptr } undef, i64 %t148, 0
  %t153 = insertvalue { i64, ptr } %t152, ptr %t151, 1
  %t155 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eImportReachedTwice(ptr %v0, ptr %v0, { i64, ptr } %t153)
  store %"compiler/diagmsg:Msg" %t155, ptr %l89
  br label %bb36
bb36:
  %t156 = load ptr, ptr %l81, !tbaa !29
  %t157 = load { i64, [3 x i64] }, ptr %l85
  %t158 = load %"compiler/diagmsg:Msg", ptr %l89
  %t159 = call i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eError(ptr %v0, ptr %v0, ptr %t156, { i64, [3 x i64] } %t157, %"compiler/diagmsg:Msg" %t158)
  store i64 %t159, ptr %l90
  br label %bb37
bb37:
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
  %t90 = call { i64, ptr } @compiler_2fmsgs_2eTok(ptr %v0, ptr %v0, { i64, ptr } %t88)
  store { i64, ptr } %t90, ptr %l52
  br label %bb26
bb26:
  %t91 = load { i64, ptr }, ptr %l52, !tbaa !27
  %t92 = extractvalue { i64, ptr } %t91, 0
  %t93 = extractvalue { i64, ptr } %t91, 1
  %t94 = mul i64 %t92, 1
  %t95 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t94)
  call void @llvm.memcpy.p0.p0.i64(ptr %t95, ptr %t93, i64 %t94, i1 false)
  %t96 = insertvalue { i64, ptr } undef, i64 %t92, 0
  %t97 = insertvalue { i64, ptr } %t96, ptr %t95, 1
  %t99 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eReexportCycle(ptr %v0, ptr %v0, { i64, ptr } %t97)
  store %"compiler/diagmsg:Msg" %t99, ptr %l54
  br label %bb27
bb27:
  %t100 = load ptr, ptr %l46, !tbaa !29
  %t101 = load { i64, [3 x i64] }, ptr %l50
  %t102 = load %"compiler/diagmsg:Msg", ptr %l54
  %t103 = call i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eError(ptr %v0, ptr %v0, ptr %t100, { i64, [3 x i64] } %t101, %"compiler/diagmsg:Msg" %t102)
  store i64 %t103, ptr %l55
  br label %bb28
bb28:
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
  %l24 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %s1 = alloca %olang.scope
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
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s1, ptr %l1, { i64, ptr } %t29)
  br label %bb9
bb9:
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePushChar(ptr %s0, ptr %l1, i8 32)
  br label %bb10
bb10:
  br label %bb11
bb11:
  %t33 = load i64, ptr %l3, !tbaa !24
  %t35 = add i64 %t33, 1
  store i64 %t35, ptr %l3, !tbaa !24
  br label %bb3
bb12:
  call void @__olang_scope_close(ptr %s1)
  %t38 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %s0, ptr %v1, ptr %l1)
  store { i64, ptr } %t38, ptr %l24
  br label %bb13
bb13:
  call void @__olang_scope_close(ptr %s0)
  %t39 = load { i64, ptr }, ptr %l24, !tbaa !27
  store { i64, ptr } %t39, ptr %rv
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
declare ptr @__olang_scope_of(ptr, ptr) noinline
@.d56 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d57 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d58 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"/" }>, align 8
@.d59 = private constant <{ i64, [10 x i8] }> <{ i64 0, [10 x i8] c"it leaves " }>, align 8
@.d60 = private constant <{ i64, [16 x i8] }> <{ i64 0, [16 x i8] c", through a link" }>, align 8
@.d61 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c"no file " }>, align 8
@.d62 = private constant <{ i64, [15 x i8] }> <{ i64 0, [15 x i8] c" is a directory" }>, align 8
@.d63 = private constant <{ i64, [15 x i8] }> <{ i64 0, [15 x i8] c" cannot be read" }>, align 8
declare noalias ptr @__olang_scope_alloc_zeroed(ptr, i64)
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
@olang_2esole_2ecompiler_2fload_3aModule_2e2 = weak hidden constant i1 false
@.d68 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d69 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"-l" }>, align 8
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
