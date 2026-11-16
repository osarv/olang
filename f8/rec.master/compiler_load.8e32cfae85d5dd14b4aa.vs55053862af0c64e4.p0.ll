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
%olang.region = type { %olang.scope, %olang.scope, ptr, ptr, ptr, ptr, ptr, i64 }
%olang.slotscope = type { %olang.scope, i64, [8 x ptr] }
%olang.stackrun = type { ptr, ptr, i32, i32, ptr, ptr }
%olang.builder = type { ptr, i64, i64, ptr, ptr }
%"compiler/cond:Consts" = type { %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" = type { { i64, ptr }, i64, i64 }
%"compiler/fetch:Fetcher" = type { { i64, ptr }, { i64, ptr }, { i64, ptr }, i1, i1, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/source:Names" = type { %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" = type { { i64, ptr }, { i64, ptr }, { i64, ptr }, i64, i64, i64 }
%"compiler/diag:Diagnostics" = type { i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, i1, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", { i64, [3 x i64] }, { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, i1, i1, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/load:Loader" = type { { i64, ptr }, ptr, ptr, ptr, ptr, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", { i64, ptr }, { i64, ptr }, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", { i64, ptr }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"std/prelude/text:StringBuilder" = type { %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"std/prelude/text:LineIter" = type { { i64, ptr }, i64 }
%"std/os:FileInfo" = type { i32, i64, i64 }
%"compiler/load:Module" = type { { i64, ptr }, { i64, ptr }, { i64, ptr }, i1, i64, i1, ptr, ptr, { i64, ptr }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr, ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr, ptr, ptr, i1, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, { i64, ptr }, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"compiler/source:Span" = type { i32, i32 }
%"compiler/parse:Parser" = type { ptr, ptr, ptr, ptr, ptr, i64, i64, i32, i32, i32, i32, i1, i1, i1, i1, i1, i1, i1, i64, i1, i1, i64, i1, i64, i1, i32, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", { i64, ptr }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i1, i1 }
%"compiler/cond:Scope" = type { i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/cond:Global" = type { { i64, ptr }, %"compiler/source:Span", i1, { i64, ptr }, ptr, i1 }
%"compiler/source:Source" = type { { i64, ptr }, { i64, ptr }, { i64, ptr } }
%"compiler/scan:Tokens" = type { { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr } }
%"compiler/token:Token" = type { i32, i8, i32, i32 }
%"compiler/load:Import" = type { %"compiler/source:Span", %"compiler/source:Span", { i64, ptr }, { i64, ptr }, i64, i64, { i64, ptr }, %"compiler/source:Span" }
%"compiler/diagmsg:Msg" = type { i32, { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr } }
%"std/pair:Pair.d0636885f2b44490dbc61e56fa468a20" = type { i64, i32 }
%"compiler/ast:TopBranch" = type { %"compiler/source:Span", { i64, ptr }, i64 }
%"compiler/bindgen:Translation" = type { { i64, ptr }, { i64, ptr }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", { i64, ptr }, i1 }
%"compiler/ast:TopIf" = type { ptr, ptr, ptr, ptr }
%"compiler/cond:Decision" = type { i32, i1 }
%"compiler/cond:Eval" = type { { i64, ptr }, ptr, ptr, ptr, i1, i1, i1, %"compiler/source:Span", %"compiler/diagmsg:Msg", i64, i64, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/scan:Diag" = type { i32, i32, i32, i8 }
%"compiler/parse:Oracle" = type { %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"std/os:Output" = type { i32, { i64, ptr }, { i64, ptr } }
%"compiler/diag:Said" = type { { i64, ptr }, i64, i64, { i64, ptr } }
@G_2ecompiler_2fload_2eBuiltStd = constant <{ [8 x i8], ptr }> <{ [8 x i8] c"\00\00\00\00\00\00\00\00", ptr @G_2ecompiler_2fload_2eBuiltStd.k1 }>, align 8
@G_2ecompiler_2fload_2eBuiltStd.k1 = internal global <{  }> <{  }>, align 8
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

define dso_local i1 @compiler_2fload_2eLinkIsFile(ptr %v0, { i64, ptr } %a0) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l3 = alloca { i64, ptr }
  %l4 = alloca i1
  %l5 = alloca i1
  %l7 = alloca i1
  %l8 = alloca i1
  %l10 = alloca i1
  %l11 = alloca i1
  %l13 = alloca i1
  %l14 = alloca i1
  %l17 = alloca { i64, ptr }
  %l18 = alloca i1
  %s0 = alloca %olang.scope
  %rv = alloca i1
  store { i64, ptr } %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d8, i32 0, i32 1) }, ptr %l3, !tbaa !27
  %t4 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t5 = call i1 @std_2fprelude_2farray_2eArray_3cstd_2fprelude_2ftext_3aChar_3e_2eContains_3cstd_2fprelude_2ftext_3aChar_3e(ptr %v0, ptr %s0, { i64, ptr } %t1, { i64, ptr } %t4)
  store i1 %t5, ptr %l4
  br label %bb1
bb1:
  %t6 = load i1, ptr %l4, !tbaa !21
  br i1 %t6, label %bb2, label %bb3
bb2:
  store i1 true, ptr %l5, !tbaa !21
  br label %bb5
bb3:
  %t7 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t9 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEndsWith(ptr %v0, ptr %s0, { i64, ptr } %t7, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d9, i32 0, i32 1) })
  store i1 %t9, ptr %l7
  br label %bb4
bb4:
  %t10 = load i1, ptr %l7, !tbaa !21
  store i1 %t10, ptr %l5, !tbaa !21
  br label %bb5
bb5:
  %t11 = load i1, ptr %l5, !tbaa !21
  br i1 %t11, label %bb6, label %bb7
bb6:
  store i1 true, ptr %l8, !tbaa !21
  br label %bb9
bb7:
  %t12 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t14 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEndsWith(ptr %v0, ptr %s0, { i64, ptr } %t12, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d10, i32 0, i32 1) })
  store i1 %t14, ptr %l10
  br label %bb8
bb8:
  %t15 = load i1, ptr %l10, !tbaa !21
  store i1 %t15, ptr %l8, !tbaa !21
  br label %bb9
bb9:
  %t16 = load i1, ptr %l8, !tbaa !21
  br i1 %t16, label %bb10, label %bb11
bb10:
  store i1 true, ptr %l11, !tbaa !21
  br label %bb13
bb11:
  %t17 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t19 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEndsWith(ptr %v0, ptr %s0, { i64, ptr } %t17, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d11, i32 0, i32 1) })
  store i1 %t19, ptr %l13
  br label %bb12
bb12:
  %t20 = load i1, ptr %l13, !tbaa !21
  store i1 %t20, ptr %l11, !tbaa !21
  br label %bb13
bb13:
  %t21 = load i1, ptr %l11, !tbaa !21
  br i1 %t21, label %bb14, label %bb15
bb14:
  store i1 true, ptr %l14, !tbaa !21
  br label %bb17
bb15:
  %t22 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d12, i32 0, i32 1) }, ptr %l17, !tbaa !27
  %t25 = load { i64, ptr }, ptr %l17, !tbaa !27
  %t26 = call i1 @std_2fprelude_2farray_2eArray_3cstd_2fprelude_2ftext_3aChar_3e_2eContains_3cstd_2fprelude_2ftext_3aChar_3e(ptr %v0, ptr %s0, { i64, ptr } %t22, { i64, ptr } %t25)
  store i1 %t26, ptr %l18
  br label %bb16
bb16:
  %t27 = load i1, ptr %l18, !tbaa !21
  store i1 %t27, ptr %l14, !tbaa !21
  br label %bb17
bb17:
  call void @__olang_scope_close(ptr %s0)
  %t28 = load i1, ptr %l14, !tbaa !21
  store i1 %t28, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
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
  call void @compiler_2fcond_2ecompiler_2fcond_3aConsts_2eBuiltins(ptr %v1, ptr %v1, ptr %v1, ptr %v1, ptr %t4, { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d13, i32 0, i32 1) }, { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d14, i32 0, i32 1) }, { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d15, i32 0, i32 1) }, i64 128, i64 0, i1 false, i1 false, i1 false)
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
  %t26 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d16, i32 0, i32 1) }, 1
  %t27 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d16, i32 0, i32 1) }, 0
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
  call void @compiler_2ffetch_3aFetcher_2ector(ptr %t44, ptr %v0, ptr %t46, ptr %v1, ptr %t48, { i64, ptr } %t49, { i64, ptr } %t43, { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d17, i32 0, i32 1) }, i1 false, i1 true)
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
  call void @llvm.memmove.p0.p0.i64(ptr %l19, ptr %t66, i64 704, i1 false)
  br label %bb11
bb11:
  %t67 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 704, i64 8)
  call void @llvm.memmove.p0.p0.i64(ptr %t67, ptr %l19, i64 704, i1 false)
  %t69 = load ptr, ptr %l4, !tbaa !29
  %t70 = load ptr, ptr %l14, !tbaa !29
  %t71 = load ptr, ptr %l18, !tbaa !29
  call void @compiler_2fload_3aLoader_2ector(ptr %t68, ptr %v1, ptr %v1, ptr %v1, ptr %v1, ptr %v1, ptr %v1, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d18, i32 0, i32 1) }, ptr %t69, ptr %t70, ptr %t71, ptr %t67)
  call void @llvm.memmove.p0.p0.i64(ptr %l21, ptr %t68, i64 752, i1 false)
  br label %bb12
bb12:
  call void @llvm.memmove.p0.p0.i64(ptr %out, ptr %l21, i64 752, i1 false)
  br label %ret
ret:
  ret void
}

define dso_local { i64, ptr } @compiler_2fload_2eLockPath(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %l1 = alloca [2 x { i64, ptr }]
  %l3 = alloca { i64, ptr }
  %l7 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t3 = call { i64, ptr } @std_2ffilepath_2eDir(ptr %v0, ptr %s0, { i64, ptr } %a0)
  store { i64, ptr } %t3, ptr %l3
  br label %bb1
bb1:
  %t4 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t5 = insertvalue [2 x { i64, ptr }] undef, { i64, ptr } %t4, 0
  %t6 = insertvalue [2 x { i64, ptr }] %t5, { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d19, i32 0, i32 1) }, 1
  store [2 x { i64, ptr }] %t6, ptr %l1
  %t9 = insertvalue { i64, ptr } undef, i64 2, 0
  %t10 = insertvalue { i64, ptr } %t9, ptr %l1, 1
  %t12 = call { i64, ptr } @std_2ffilepath_2eJoin(ptr %s0, ptr %v1, { i64, ptr } %t10)
  store { i64, ptr } %t12, ptr %l7
  br label %bb2
bb2:
  call void @__olang_scope_close(ptr %s0)
  %t13 = load { i64, ptr }, ptr %l7, !tbaa !27
  store { i64, ptr } %t13, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
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
  %s1 = alloca %olang.scope
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
  store %olang.scope zeroinitializer, ptr %s1
  %t3 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t5 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eSplit(ptr %v0, ptr %s1, ptr %v0, { i64, ptr } %t3, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d20, i32 0, i32 1) })
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
  %t29 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s2, { i64, ptr } %t27, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d21, i32 0, i32 1) })
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
  %t33 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s2, { i64, ptr } %t31, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d22, i32 0, i32 1) })
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
  %t38 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s2, { i64, ptr } %t36, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d23, i32 0, i32 1) })
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
  %t54 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %s2, { i64, ptr } %t53, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d24, i32 0, i32 1) })
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
  call void @__olang_scope_close(ptr %s1)
  %t77 = call %"std/prelude/text:StringBuilder" @std_2fprelude_2ftext_3aStringBuilder_2ector(ptr %s0)
  store %"std/prelude/text:StringBuilder" %t77, ptr %l53
  br label %bb38
bb38:
  %t78 = load %"std/prelude/text:StringBuilder", ptr %l53
  store %"std/prelude/text:StringBuilder" %t78, ptr %l6
  %t79 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t81 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %v0, ptr %s0, { i64, ptr } %t79, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d25, i32 0, i32 1) })
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
  store { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d26, i32 0, i32 1) }, ptr %l96, !tbaa !27
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

define dso_local { i64, ptr } @compiler_2fload_2eStdDir(ptr %v0) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l2 = alloca { i64, ptr }
  %l3 = alloca { i64, ptr }
  %l4 = alloca i32
  %l8 = alloca i1
  %l12 = alloca { i64, ptr }
  %l13 = alloca { i64, ptr }
  %l14 = alloca i32
  %l16 = alloca i1
  %l19 = alloca { i64, ptr }
  %l20 = alloca { i64, ptr }
  %l21 = alloca i64
  %l22 = alloca { i64, ptr }
  %l24 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = call { i32, { i64, ptr } } @std_2fos_2eEnv(ptr %s0, ptr %s0, { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d27, i32 0, i32 1) })
  %t2 = extractvalue { i32, { i64, ptr } } %t1, 1
  %t3 = extractvalue { i32, { i64, ptr } } %t1, 0
  store i32 %t3, ptr %l4
  %t4 = icmp ne i32 %t3, 0
  br i1 %t4, label %bb2, label %ok.5, !prof !99
ok.5:
  store { i64, ptr } %t2, ptr %l3
  br label %bb1
bb1:
  %t6 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t6, ptr %l2, !tbaa !27
  br label %bb6
bb2:
  %t7 = load i32, ptr %l4, !tbaa !23
  %t8 = ashr i32 %t7, 16
  %t10 = icmp eq i32 %t8, 1
  br i1 %t10, label %bb3, label %bb4
bb3:
  call void @__olang_errpay_pop()
  br label %bb4
bb4:
  br label %bb5
bb5:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d28, i32 0, i32 1) }, ptr %l2, !tbaa !27
  br label %bb6
bb6:
  %t12 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t12, ptr %l0, !tbaa !27
  %t13 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t15 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %s0, { i64, ptr } %t13, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d29, i32 0, i32 1) })
  store i1 %t15, ptr %l8
  br label %bb7
bb7:
  %t16 = load i1, ptr %l8, !tbaa !21
  %t17 = xor i1 %t16, true
  br i1 %t17, label %bb8, label %bb9
bb8:
  %t19 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t21 = extractvalue { i64, ptr } %t19, 1
  %t22 = extractvalue { i64, ptr } %t19, 0
  %t23 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t22)
  call void @olang_textcopy(ptr %t23, ptr %t21, i64 %t22)
  %t24 = insertvalue { i64, ptr } undef, i64 %t22, 0
  %t25 = insertvalue { i64, ptr } %t24, ptr %t23, 1
  call void @__olang_scope_close(ptr %s0)
  store { i64, ptr } %t25, ptr %rv
  br label %ret
bb9:
  br label %bb10
bb10:
  %t27 = call { i32, { i64, ptr } } @std_2fos_2eReadLink(ptr %s0, ptr %s0, { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d30, i32 0, i32 1) })
  %t28 = extractvalue { i32, { i64, ptr } } %t27, 1
  %t29 = extractvalue { i32, { i64, ptr } } %t27, 0
  store i32 %t29, ptr %l14
  %t30 = icmp ne i32 %t29, 0
  br i1 %t30, label %bb12, label %ok.31, !prof !99
ok.31:
  store { i64, ptr } %t28, ptr %l13
  br label %bb11
bb11:
  %t32 = load { i64, ptr }, ptr %l13, !tbaa !27
  store { i64, ptr } %t32, ptr %l12, !tbaa !27
  br label %bb16
bb12:
  %t33 = load i32, ptr %l14, !tbaa !23
  %t34 = ashr i32 %t33, 16
  %t36 = icmp eq i32 %t34, 1
  store i1 %t36, ptr %l16, !tbaa !21
  %t37 = load i32, ptr %l14, !tbaa !23
  %t38 = ashr i32 %t37, 16
  %t40 = icmp eq i32 %t38, 1
  br i1 %t40, label %bb13, label %bb14
bb13:
  call void @__olang_errpay_pop()
  br label %bb14
bb14:
  br label %bb15
bb15:
  store { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d31, i32 0, i32 1) }, ptr %l19, !tbaa !27
  %t42 = load { i64, ptr }, ptr %l19, !tbaa !27
  store { i64, ptr } %t42, ptr %l20, !tbaa !27
  %t43 = load { i64, ptr }, ptr %l20, !tbaa !27
  %t44 = extractvalue { i64, ptr } %t43, 0
  store i64 %t44, ptr %l21, !tbaa !24
  %t45 = load i64, ptr %l21, !tbaa !24
  %t46 = mul i64 %t45, 1
  %t47 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t46)
  %t48 = insertvalue { i64, ptr } undef, i64 %t45, 0
  %t49 = insertvalue { i64, ptr } %t48, ptr %t47, 1
  store { i64, ptr } %t49, ptr %l22, !tbaa !27
  %t50 = getelementptr { i64, ptr }, ptr %l22, i32 0, i32 1
  %t51 = load ptr, ptr %t50, !tbaa !27
  %t52 = getelementptr { i64, ptr }, ptr %l20, i32 0, i32 1
  %t53 = load ptr, ptr %t52, !tbaa !27
  %t54 = load i64, ptr %l21, !tbaa !24
  %t55 = mul i64 %t54, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t51, ptr %t53, i64 %t55, i1 false)
  %t56 = load { i64, ptr }, ptr %l22, !tbaa !27
  store { i64, ptr } %t56, ptr %l20, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  %t57 = load { i64, ptr }, ptr %l20, !tbaa !27
  store { i64, ptr } %t57, ptr %rv
  br label %ret
bb16:
  %t58 = load { i64, ptr }, ptr %l12, !tbaa !27
  %t61 = call { i64, ptr } @std_2ffilepath_2eDir(ptr %s0, ptr %s0, { i64, ptr } %t58)
  store { i64, ptr } %t61, ptr %l24
  br label %bb17
bb17:
  %t62 = load { i64, ptr }, ptr %l24, !tbaa !27
  %t63 = extractvalue { i64, ptr } %t62, 1
  %t64 = extractvalue { i64, ptr } %t62, 0
  %t65 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d32, i32 0, i32 1) }, 1
  %t66 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d32, i32 0, i32 1) }, 0
  %t67 = add i64 %t64, %t66
  %t68 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t67)
  call void @olang_textcopy(ptr %t68, ptr %t63, i64 %t64)
  %t69 = getelementptr i8, ptr %t68, i64 %t64
  call void @olang_textcopy(ptr %t69, ptr %t65, i64 %t66)
  %t70 = insertvalue { i64, ptr } undef, i64 %t67, 0
  %t71 = insertvalue { i64, ptr } %t70, ptr %t68, 1
  call void @__olang_scope_close(ptr %s0)
  store { i64, ptr } %t71, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
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
  %t5 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d33, i32 0, i32 1) }, 1
  %t6 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d33, i32 0, i32 1) }, 0
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
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d34, i32 0, i32 1) }, ptr %l19, !tbaa !27
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
  %t70 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %s4, { i64, ptr } %t68, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d35, i32 0, i32 1) })
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
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d36, i32 0, i32 1) }, ptr %l38, !tbaa !27
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
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d37, i32 0, i32 1) }, ptr %l57, !tbaa !27
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
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d38, i32 0, i32 1) }, ptr %l73, !tbaa !27
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
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d39, i32 0, i32 1) }, ptr %l94, !tbaa !27
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
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d40, i32 0, i32 1) }, ptr %l118, !tbaa !27
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
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d41, i32 0, i32 1) }, ptr %l129, !tbaa !27
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
  %t365 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d42, i32 0, i32 1) }, 1
  %t366 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d42, i32 0, i32 1) }, 0
  %t367 = add i64 %t364, %t366
  %t368 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t367)
  call void @olang_textcopy(ptr %t368, ptr %t363, i64 %t364)
  %t369 = getelementptr i8, ptr %t368, i64 %t364
  call void @olang_textcopy(ptr %t369, ptr %t365, i64 %t366)
  %t370 = insertvalue { i64, ptr } undef, i64 %t367, 0
  %t371 = insertvalue { i64, ptr } %t370, ptr %t368, 1
  %t373 = extractvalue { i64, ptr } %t371, 0
  %t374 = extractvalue { i64, ptr } %t371, 1
  %t375 = mul i64 %t373, 1
  %t376 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t375)
  call void @llvm.memcpy.p0.p0.i64(ptr %t376, ptr %t374, i64 %t375, i1 false)
  %t377 = insertvalue { i64, ptr } undef, i64 %t373, 0
  %t378 = insertvalue { i64, ptr } %t377, ptr %t376, 1
  %t380 = call { i32, { i64, ptr } } @std_2fos_2eReadFile(ptr %s0, ptr %v1, { i64, ptr } %t378)
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
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d43, i32 0, i32 1) }, ptr %l133, !tbaa !27
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

define dso_local i64 @compiler_2fload_2ecompiler_2fload_3aLoader_2eChosen(ptr %v0, ptr %a0, i64 %a1, i32 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l3 = alloca ptr
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l13 = alloca ptr
  %l16 = alloca i64
  %l20 = alloca i64
  %l23 = alloca i64
  %l44 = alloca i32
  %l53 = alloca i64
  %rv = alloca i64
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
  store ptr %t8, ptr %l3, !tbaa !29
  store i64 0, ptr %l4, !tbaa !24
  %t9 = load ptr, ptr %l3, !tbaa !29
  %t11 = getelementptr %"compiler/load:Module", ptr %t9, i32 0, i32 14
  %t13 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI32_3e_2eLen_3cI32_3e(ptr %v0, ptr %t11)
  store i64 %t13, ptr %l16
  br label %bb2
bb2:
  %t14 = load i64, ptr %l16, !tbaa !24
  store i64 %t14, ptr %l5, !tbaa !24
  store i64 1, ptr %l6, !tbaa !24
  %t15 = load i64, ptr %l5, !tbaa !24
  %t16 = load i64, ptr %l4, !tbaa !24
  %t19 = icmp sgt i64 %t15, %t16
  br i1 %t19, label %bb3, label %bb4
bb3:
  %t21 = load i64, ptr %l6, !tbaa !24
  %t23 = icmp sgt i64 %t21, 0
  br i1 %t23, label %bb5, label %bb6
bb4:
  store i64 0, ptr %l20, !tbaa !24
  br label %bb8
bb5:
  %t25 = load i64, ptr %l5, !tbaa !24
  %t26 = load i64, ptr %l4, !tbaa !24
  %t29 = sub i64 %t25, %t26
  %t30 = load i64, ptr %l6, !tbaa !24
  %t33 = add i64 %t29, %t30
  %t35 = sub i64 %t33, 1
  %t36 = load i64, ptr %l6, !tbaa !24
  %t39 = sdiv i64 %t35, %t36
  store i64 %t39, ptr %l23, !tbaa !24
  br label %bb7
bb6:
  store i64 0, ptr %l23, !tbaa !24
  br label %bb7
bb7:
  %t41 = load i64, ptr %l23, !tbaa !24
  store i64 %t41, ptr %l20, !tbaa !24
  br label %bb8
bb8:
  %t42 = load i64, ptr %l20, !tbaa !24
  store i64 %t42, ptr %l7, !tbaa !24
  store i64 0, ptr %l8, !tbaa !24
  br label %bb9
bb9:
  %t43 = load i64, ptr %l8, !tbaa !24
  %t44 = load i64, ptr %l7, !tbaa !24
  %t47 = icmp slt i64 %t43, %t44
  %t49 = xor i1 %t47, true
  br i1 %t49, label %bb10, label %bb11
bb10:
  br label %bb20
bb11:
  br label %bb12
bb12:
  %t51 = load i64, ptr %l4, !tbaa !24
  %t52 = load i64, ptr %l8, !tbaa !24
  %t53 = load i64, ptr %l6, !tbaa !24
  %t56 = mul i64 %t52, %t53
  %t59 = add i64 %t51, %t56
  store i64 %t59, ptr %l9, !tbaa !24
  %t61 = load ptr, ptr %l3, !tbaa !29
  %t63 = getelementptr %"compiler/load:Module", ptr %t61, i32 0, i32 14
  %t64 = load i64, ptr %l9, !tbaa !24
  %t67 = call i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI32_3e_2eAt_3cI32_3e(ptr %v0, ptr %t63, i64 %t64)
  store i32 %t67, ptr %l44
  br label %bb13
bb13:
  %t69 = load i32, ptr %l44, !tbaa !23
  %t71 = icmp eq i32 %t69, %a2
  br i1 %t71, label %bb14, label %bb15
bb14:
  %t73 = load ptr, ptr %l0, !tbaa !29
  %t74 = load i64, ptr %l1, !tbaa !24
  %t75 = load i64, ptr %l9, !tbaa !24
  call void @compiler_2fload_2ecompiler_2fload_3aLoader_2edecide(ptr %v0, ptr %t73, i64 %t74, i64 %t75)
  br label %bb16
bb15:
  br label %bb18
bb16:
  %t79 = load ptr, ptr %l3, !tbaa !29
  %t81 = getelementptr %"compiler/load:Module", ptr %t79, i32 0, i32 16
  %t82 = load i64, ptr %l9, !tbaa !24
  %t85 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t81, i64 %t82)
  store i64 %t85, ptr %l53
  br label %bb17
bb17:
  %t86 = load i64, ptr %l53, !tbaa !24
  store i64 %t86, ptr %rv
  br label %ret
bb18:
  br label %bb19
bb19:
  %t87 = load i64, ptr %l8, !tbaa !24
  %t89 = add i64 %t87, 1
  store i64 %t89, ptr %l8, !tbaa !24
  br label %bb9
bb20:
  %t91 = load i64, ptr @G_2ecompiler_2fload_2ePending, !tbaa !24
  store i64 %t91, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
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
  %l146 = alloca i1
  %l147 = alloca { i64, ptr }
  %l151 = alloca i64
  %l159 = alloca { i64, ptr }
  %l160 = alloca { i64, ptr }
  %l163 = alloca i64
  %l164 = alloca { i64, ptr }
  %l167 = alloca i64
  %l168 = alloca i64
  %l173 = alloca { i64, ptr }
  %l175 = alloca { i64, ptr }
  %l179 = alloca { i64, ptr }
  %l181 = alloca { i64, ptr }
  %l183 = alloca ptr
  %l191 = alloca ptr
  %l192 = alloca i32
  %l193 = alloca { i64, ptr }
  %l199 = alloca i64
  %l203 = alloca i1
  %l206 = alloca { i64, ptr }
  %l209 = alloca { i64, ptr }
  %l212 = alloca %"compiler/source:Span"
  %l217 = alloca ptr
  %l218 = alloca i64
  %l226 = alloca { i64, ptr }
  %l228 = alloca i64
  %l230 = alloca i64
  %l231 = alloca i64
  %l243 = alloca %"compiler/cond:Global"
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
  call void @llvm.memmove.p0.p0.i64(ptr %l24, ptr %t11, i64 704, i1 false)
  br label %bb4
bb4:
  %t12 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 704, i64 8)
  call void @llvm.memmove.p0.p0.i64(ptr %t12, ptr %l24, i64 704, i1 false)
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
  call void @llvm.memmove.p0.p0.i64(ptr %l65, ptr %t101, i64 1048, i1 false)
  br label %bb24
bb24:
  %t108 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 1048, i64 8)
  call void @llvm.memmove.p0.p0.i64(ptr %t108, ptr %l65, i64 1048, i1 false)
  %t110 = load ptr, ptr %l41, !tbaa !29
  %t111 = getelementptr %"compiler/load:Module", ptr %t110, i32 0, i32 24
  store ptr %t108, ptr %t111, !tbaa !29
  %t112 = load ptr, ptr %l1, !tbaa !29
  store ptr %t112, ptr %l67, !tbaa !29
  %t113 = load ptr, ptr %l1, !tbaa !29
  %t115 = getelementptr %"compiler/load:Module", ptr %t113, i32 0, i32 2
  %t116 = load { i64, ptr }, ptr %t115, !tbaa !27
  %t118 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %v1, ptr %s0, { i64, ptr } %t116, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d44, i32 0, i32 1) })
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
  %t173 = load i32, ptr %t172, !range !{i32 0, i32 113}
  store i32 %t173, ptr %l12
  %t175 = load i32, ptr %l12, !range !{i32 0, i32 113}
  %t177 = trunc i64 0 to i32
  %t178 = icmp eq i32 %t175, %t177
  br i1 %t178, label %bb37, label %bb38
bb37:
  store i1 true, ptr %l97, !tbaa !21
  br label %bb39
bb38:
  %t180 = load i32, ptr %l12, !range !{i32 0, i32 113}
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
  %t186 = load i32, ptr %l12, !range !{i32 0, i32 113}
  %t188 = trunc i64 111 to i32
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
  %t196 = load i32, ptr %l12, !range !{i32 0, i32 113}
  %t198 = trunc i64 77 to i32
  %t199 = icmp eq i32 %t196, %t198
  br i1 %t199, label %bb48, label %bb49
bb47:
  store i1 false, ptr %l105, !tbaa !21
  br label %bb51
bb48:
  store i1 true, ptr %l108, !tbaa !21
  br label %bb50
bb49:
  %t201 = load i32, ptr %l12, !range !{i32 0, i32 113}
  %t203 = trunc i64 79 to i32
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
  %t208 = load i32, ptr %l12, !range !{i32 0, i32 113}
  %t210 = trunc i64 107 to i32
  %t211 = icmp eq i32 %t208, %t210
  br i1 %t211, label %bb55, label %bb56
bb55:
  store i1 true, ptr %l113, !tbaa !21
  br label %bb57
bb56:
  %t213 = load i32, ptr %l12, !range !{i32 0, i32 113}
  %t215 = trunc i64 109 to i32
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
  %t223 = load i32, ptr %l12, !range !{i32 0, i32 113}
  %t225 = trunc i64 108 to i32
  %t226 = icmp eq i32 %t223, %t225
  br i1 %t226, label %bb61, label %bb62
bb61:
  store i1 true, ptr %l120, !tbaa !21
  br label %bb63
bb62:
  %t228 = load i32, ptr %l12, !range !{i32 0, i32 113}
  %t230 = trunc i64 110 to i32
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
  %t238 = load i32, ptr %l12, !range !{i32 0, i32 113}
  %t240 = trunc i64 38 to i32
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
  %t260 = load i32, ptr %t259, !range !{i32 0, i32 113}
  store i32 %t260, ptr %l13
  %t262 = load i32, ptr %l13, !range !{i32 0, i32 113}
  %t264 = trunc i64 77 to i32
  %t265 = icmp eq i32 %t262, %t264
  %t267 = xor i1 %t265, true
  br i1 %t267, label %bb72, label %bb73
bb72:
  %t269 = load i32, ptr %l13, !range !{i32 0, i32 113}
  %t271 = trunc i64 79 to i32
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
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d45, i32 0, i32 1) }, ptr %l142, !tbaa !27
  %t277 = load { i64, ptr }, ptr %l142, !tbaa !27
  %t278 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 16, i64 8)
  store ptr %t278, ptr %lp14
  %t280 = load ptr, ptr %lp14
  store { i64, ptr } %t277, ptr %t280, !tbaa !27
  %t281 = load i64, ptr %l9, !tbaa !24
  %t283 = icmp eq i64 %t281, 1
  br i1 %t283, label %bb78, label %bb79
bb78:
  %t285 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t285, ptr %l147, !tbaa !27
  %t286 = load i64, ptr %l10, !tbaa !24
  %t288 = getelementptr { i64, ptr }, ptr %l147, i32 0, i32 1
  %t289 = load ptr, ptr %t288, !tbaa !27
  %t290 = getelementptr %"compiler/token:Token", ptr %t289, i64 %t286
  %t291 = getelementptr %"compiler/token:Token", ptr %t290, i32 0, i32 0
  %t292 = load i32, ptr %t291, !range !{i32 0, i32 113}
  %t294 = trunc i64 1 to i32
  %t295 = icmp eq i32 %t292, %t294
  store i1 %t295, ptr %l146, !tbaa !21
  br label %bb80
bb79:
  store i1 false, ptr %l146, !tbaa !21
  br label %bb80
bb80:
  %t297 = load i1, ptr %l146, !tbaa !21
  br i1 %t297, label %bb81, label %bb82
bb81:
  %t298 = ptrtoint ptr %v1 to i64
  store i64 %t298, ptr %l151, !tbaa !24
  %t299 = load i1, ptr @olang_2esole_2ecompiler__2fload__2ecompiler__2fload__3aLoader__2eCondParser_2elocal_2e14
  br i1 %t299, label %bb83, label %bb84
bb82:
  %t301 = load i64, ptr %l9, !tbaa !24
  %t303 = icmp sgt i64 %t301, 0
  br i1 %t303, label %bb98, label %bb99
bb83:
  %t305 = call ptr @__olang_region_make(ptr %v1)
  %t306 = ptrtoint ptr %t305 to i64
  store i64 %t306, ptr %l151, !tbaa !24
  br label %bb84
bb84:
  %t307 = load ptr, ptr %l1, !tbaa !29
  %t309 = getelementptr %"compiler/load:Module", ptr %t307, i32 0, i32 6
  %t310 = load ptr, ptr %t309, !tbaa !29
  %t312 = icmp eq ptr %t310, null
  br i1 %t312, label %bb85, label %bb86
bb85:
  call void @__olang_check_failed(ptr @olang_loc_37ad9edc8de7e2f6_d0344632fdf871da)
  unreachable
bb86:
  br label %bb87
bb87:
  %t314 = load ptr, ptr %l1, !tbaa !29
  %t316 = getelementptr %"compiler/load:Module", ptr %t314, i32 0, i32 6
  %t317 = load ptr, ptr %t316, !tbaa !29
  %t320 = getelementptr %"compiler/source:Source", ptr %t317, i32 0, i32 1
  %t321 = load { i64, ptr }, ptr %t320, !tbaa !27
  store { i64, ptr } %t321, ptr %l159, !tbaa !27
  %t322 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t322, ptr %l160, !tbaa !27
  %t323 = load i64, ptr %l10, !tbaa !24
  %t325 = getelementptr { i64, ptr }, ptr %l160, i32 0, i32 1
  %t326 = load ptr, ptr %t325, !tbaa !27
  %t327 = getelementptr %"compiler/token:Token", ptr %t326, i64 %t323
  %t328 = getelementptr %"compiler/token:Token", ptr %t327, i32 0, i32 2
  %t329 = load i32, ptr %t328, !tbaa !23
  %t331 = sext i32 %t329 to i64
  store i64 %t331, ptr %l163, !tbaa !24
  %t332 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t332, ptr %l164, !tbaa !27
  %t333 = load i64, ptr %l10, !tbaa !24
  %t335 = getelementptr { i64, ptr }, ptr %l164, i32 0, i32 1
  %t336 = load ptr, ptr %t335, !tbaa !27
  %t337 = getelementptr %"compiler/token:Token", ptr %t336, i64 %t333
  %t338 = getelementptr %"compiler/token:Token", ptr %t337, i32 0, i32 3
  %t339 = load i32, ptr %t338, !tbaa !23
  %t341 = sext i32 %t339 to i64
  store i64 %t341, ptr %l167, !tbaa !24
  %t342 = load { i64, ptr }, ptr %l159, !tbaa !27
  %t343 = extractvalue { i64, ptr } %t342, 0
  store i64 %t343, ptr %l168, !tbaa !24
  %t344 = load i64, ptr %l163, !tbaa !24
  %t345 = icmp sge i64 %t344, 0
  br i1 %t345, label %bb88, label %bb89
bb88:
  %t347 = load i64, ptr %l163, !tbaa !24
  %t348 = load i64, ptr %l167, !tbaa !24
  %t349 = icmp sle i64 %t347, %t348
  br i1 %t349, label %bb90, label %bb91
bb89:
  call void @__olang_check_failed(ptr @olang_loc_ee319d06991d9051_474f59f05ada826d)
  unreachable
bb90:
  %t351 = load i64, ptr %l167, !tbaa !24
  %t352 = load i64, ptr %l168, !tbaa !24
  %t353 = icmp sle i64 %t351, %t352
  br i1 %t353, label %bb92, label %bb93
bb91:
  call void @__olang_check_failed(ptr @olang_loc_ee319d06991d9051_474f59f05ada826d)
  unreachable
bb92:
  %t355 = getelementptr { i64, ptr }, ptr %l159, i32 0, i32 1
  %t356 = load ptr, ptr %t355, !tbaa !27
  %t357 = load i64, ptr %l163, !tbaa !24
  %t358 = load i64, ptr %l167, !tbaa !24
  %t359 = getelementptr i8, ptr %t356, i64 %t357
  %t360 = sub i64 %t358, %t357
  %t361 = insertvalue { i64, ptr } undef, i64 %t360, 0
  %t362 = insertvalue { i64, ptr } %t361, ptr %t359, 1
  %t364 = extractvalue { i64, ptr } %t362, 1
  %t365 = extractvalue { i64, ptr } %t362, 0
  %t366 = load i64, ptr %l151
  %t367 = inttoptr i64 %t366 to ptr
  %t368 = call ptr @__olang_scope_alloc(ptr %t367, i64 %t365)
  call void @olang_textcopy(ptr %t368, ptr %t364, i64 %t365)
  %t369 = insertvalue { i64, ptr } undef, i64 %t365, 0
  %t370 = insertvalue { i64, ptr } %t369, ptr %t368, 1
  store { i64, ptr } %t370, ptr %l173, !tbaa !27
  %t371 = load i1, ptr @olang_2esole_2ecompiler__2fload__2ecompiler__2fload__3aLoader__2eCondParser_2elocal_2e14
  br i1 %t371, label %bb94, label %bb95
bb93:
  call void @__olang_check_failed(ptr @olang_loc_ee319d06991d9051_474f59f05ada826d)
  unreachable
bb94:
  %t373 = load i64, ptr %l151
  %t374 = inttoptr i64 %t373 to ptr
  %t375 = load { i64, ptr }, ptr %l173
  %t376 = extractvalue { i64, ptr } %t375, 1
  %t377 = call ptr @__olang_region_or(ptr %t376, ptr null)
  %t378 = icmp ne ptr %t377, null
  %t379 = select i1 %t378, ptr %t377, ptr null
  %t380 = icmp eq ptr %t379, %t374
  call void @__olang_region_settle(ptr %t374, i1 %t380)
  br label %bb95
bb95:
  %t381 = load ptr, ptr %lp14
  %t382 = load { i64, ptr }, ptr %t381, !tbaa !27
  store { i64, ptr } %t382, ptr %l175, !tbaa !27
  %t383 = load { i64, ptr }, ptr %l173, !tbaa !27
  %t384 = load ptr, ptr %lp14
  store { i64, ptr } %t383, ptr %t384, !tbaa !27
  %t385 = load i1, ptr @olang_2esole_2ecompiler__2fload__2ecompiler__2fload__3aLoader__2eCondParser_2elocal_2e14
  br i1 %t385, label %bb96, label %bb97
bb96:
  %t387 = load { i64, ptr }, ptr %l175
  %t388 = extractvalue { i64, ptr } %t387, 1
  call void @__olang_region_release(ptr %t388)
  store { i64, ptr } zeroinitializer, ptr %l175
  br label %bb97
bb97:
  br label %bb103
bb98:
  store { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d46, i32 0, i32 1) }, ptr %l179, !tbaa !27
  %t389 = load { i64, ptr }, ptr %l179, !tbaa !27
  %t390 = load ptr, ptr %lp14
  %t391 = load { i64, ptr }, ptr %t390, !tbaa !27
  store { i64, ptr } %t391, ptr %l181, !tbaa !27
  %t393 = load ptr, ptr %lp14
  store { i64, ptr } %t389, ptr %t393, !tbaa !27
  %t394 = load i1, ptr @olang_2esole_2ecompiler__2fload__2ecompiler__2fload__3aLoader__2eCondParser_2elocal_2e14
  br i1 %t394, label %bb100, label %bb101
bb99:
  br label %bb102
bb100:
  %t396 = load { i64, ptr }, ptr %l181
  %t397 = extractvalue { i64, ptr } %t396, 1
  call void @__olang_region_release(ptr %t397)
  store { i64, ptr } zeroinitializer, ptr %l181
  br label %bb101
bb101:
  br label %bb102
bb102:
  br label %bb103
bb103:
  %t398 = load ptr, ptr %l1, !tbaa !29
  %t400 = getelementptr %"compiler/load:Module", ptr %t398, i32 0, i32 24
  %t401 = load ptr, ptr %t400, !tbaa !29
  %t403 = icmp eq ptr %t401, null
  br i1 %t403, label %bb104, label %bb105
bb104:
  call void @__olang_check_failed(ptr @olang_loc_57e236369a85f00c_b06e30e0c965afa8)
  unreachable
bb105:
  br label %bb106
bb106:
  %t405 = load ptr, ptr %l1, !tbaa !29
  %t407 = getelementptr %"compiler/load:Module", ptr %t405, i32 0, i32 24
  %t408 = load ptr, ptr %t407, !tbaa !29
  %t409 = load i64, ptr %l7, !tbaa !24
  %t411 = add i64 %t409, 1
  %t414 = call { i32, ptr } @compiler_2fparse_2ecompiler_2fparse_3aParser_2eExprAt(ptr %v1, ptr %v1, ptr %t408, i64 %t411)
  %t415 = extractvalue { i32, ptr } %t414, 1
  %t416 = extractvalue { i32, ptr } %t414, 0
  store i32 %t416, ptr %l192
  %t417 = icmp ne i32 %t416, 0
  br i1 %t417, label %bb108, label %ok.418, !prof !99
ok.418:
  store ptr %t415, ptr %l191
  br label %bb107
bb107:
  %t419 = load ptr, ptr %l191, !tbaa !29
  store ptr %t419, ptr %l183, !tbaa !29
  br label %bb110
bb108:
  br label %bb109
bb109:
  call void @__olang_scope_close(ptr %s3)
  br label %bb135
bb110:
  %t420 = load ptr, ptr %l183, !tbaa !29
  store ptr %t420, ptr %l15, !tbaa !29
  %t421 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t421, ptr %l193, !tbaa !27
  %t422 = load ptr, ptr %l1, !tbaa !29
  %t424 = getelementptr %"compiler/load:Module", ptr %t422, i32 0, i32 24
  %t425 = load ptr, ptr %t424, !tbaa !29
  %t427 = icmp eq ptr %t425, null
  br i1 %t427, label %bb111, label %bb112
bb111:
  call void @__olang_check_failed(ptr @olang_loc_64a34b454640941_8ed0e4b282ed07d)
  unreachable
bb112:
  br label %bb113
bb113:
  %t429 = load ptr, ptr %l1, !tbaa !29
  %t431 = getelementptr %"compiler/load:Module", ptr %t429, i32 0, i32 24
  %t432 = load ptr, ptr %t431, !tbaa !29
  %t434 = call i64 @compiler_2fparse_2ecompiler_2fparse_3aParser_2ePos(ptr %v1, ptr %t432)
  store i64 %t434, ptr %l199
  br label %bb114
bb114:
  %t435 = load i64, ptr %l199, !tbaa !24
  %t436 = getelementptr { i64, ptr }, ptr %l193, i32 0, i32 1
  %t437 = load ptr, ptr %t436, !tbaa !27
  %t438 = getelementptr %"compiler/token:Token", ptr %t437, i64 %t435
  %t439 = getelementptr %"compiler/token:Token", ptr %t438, i32 0, i32 0
  %t440 = load i32, ptr %t439, !range !{i32 0, i32 113}
  store i32 %t440, ptr %l16
  %t442 = load i32, ptr %l16, !range !{i32 0, i32 113}
  %t444 = trunc i64 8 to i32
  %t445 = icmp eq i32 %t442, %t444
  br i1 %t445, label %bb115, label %bb116
bb115:
  store i1 true, ptr %l203, !tbaa !21
  br label %bb117
bb116:
  %t447 = load i32, ptr %l16, !range !{i32 0, i32 113}
  %t449 = trunc i64 0 to i32
  %t450 = icmp eq i32 %t447, %t449
  store i1 %t450, ptr %l203, !tbaa !21
  br label %bb117
bb117:
  %t452 = load i1, ptr %l203, !tbaa !21
  store i1 %t452, ptr %l17, !tbaa !21
  %t453 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t453, ptr %l206, !tbaa !27
  %t454 = load i64, ptr %l6, !tbaa !24
  %t456 = getelementptr { i64, ptr }, ptr %l206, i32 0, i32 1
  %t457 = load ptr, ptr %t456, !tbaa !27
  %t458 = getelementptr %"compiler/token:Token", ptr %t457, i64 %t454
  %t459 = getelementptr %"compiler/token:Token", ptr %t458, i32 0, i32 2
  %t460 = load i32, ptr %t459, !tbaa !23
  %t461 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t461, ptr %l209, !tbaa !27
  %t462 = load i64, ptr %l6, !tbaa !24
  %t464 = getelementptr { i64, ptr }, ptr %l209, i32 0, i32 1
  %t465 = load ptr, ptr %t464, !tbaa !27
  %t466 = getelementptr %"compiler/token:Token", ptr %t465, i64 %t462
  %t467 = getelementptr %"compiler/token:Token", ptr %t466, i32 0, i32 3
  %t468 = load i32, ptr %t467, !tbaa !23
  %t471 = call %"compiler/source:Span" @compiler_2fsource_3aSpan_2ector(ptr %s3, i32 %t460, i32 %t468)
  store %"compiler/source:Span" %t471, ptr %l212
  br label %bb118
bb118:
  %t472 = load %"compiler/source:Span", ptr %l212
  store %"compiler/source:Span" %t472, ptr %l18
  %t473 = load ptr, ptr %l1, !tbaa !29
  %t475 = getelementptr %"compiler/load:Module", ptr %t473, i32 0, i32 23
  %t476 = load ptr, ptr %t475, !tbaa !29
  %t478 = icmp eq ptr %t476, null
  br i1 %t478, label %bb119, label %bb120
bb119:
  call void @__olang_check_failed(ptr @olang_loc_64e62a75e1515ba_854f46de0e9c2096)
  unreachable
bb120:
  br label %bb121
bb121:
  %t480 = load ptr, ptr %l1, !tbaa !29
  %t482 = getelementptr %"compiler/load:Module", ptr %t480, i32 0, i32 23
  %t483 = load ptr, ptr %t482, !tbaa !29
  store ptr %t483, ptr %l217, !tbaa !29
  %t484 = ptrtoint ptr %v1 to i64
  store i64 %t484, ptr %l218, !tbaa !24
  %t485 = load i1, ptr @olang_2esole_2ecompiler_2fcond_3aGlobal_2e0
  br i1 %t485, label %bb122, label %bb123
bb122:
  %t487 = call ptr @__olang_region_make(ptr %v1)
  %t488 = ptrtoint ptr %t487 to i64
  store i64 %t488, ptr %l218, !tbaa !24
  br label %bb123
bb123:
  %t489 = load ptr, ptr %l1, !tbaa !29
  %t491 = getelementptr %"compiler/load:Module", ptr %t489, i32 0, i32 6
  %t492 = load ptr, ptr %t491, !tbaa !29
  %t494 = icmp eq ptr %t492, null
  br i1 %t494, label %bb124, label %bb125
bb124:
  call void @__olang_check_failed(ptr @olang_loc_64e62a75e1515ba_854f46de0e9c2096)
  unreachable
bb125:
  br label %bb126
bb126:
  %t496 = load ptr, ptr %l1, !tbaa !29
  %t498 = getelementptr %"compiler/load:Module", ptr %t496, i32 0, i32 6
  %t499 = load ptr, ptr %t498, !tbaa !29
  %t502 = getelementptr %"compiler/source:Source", ptr %t499, i32 0, i32 1
  %t503 = load { i64, ptr }, ptr %t502, !tbaa !27
  store { i64, ptr } %t503, ptr %l226, !tbaa !27
  %t504 = getelementptr %"compiler/source:Span", ptr %l18, i32 0, i32 0
  %t505 = load i32, ptr %t504, !tbaa !23
  %t507 = sext i32 %t505 to i64
  store i64 %t507, ptr %l228, !tbaa !24
  %t508 = getelementptr %"compiler/source:Span", ptr %l18, i32 0, i32 1
  %t509 = load i32, ptr %t508, !tbaa !23
  %t511 = sext i32 %t509 to i64
  store i64 %t511, ptr %l230, !tbaa !24
  %t512 = load { i64, ptr }, ptr %l226, !tbaa !27
  %t513 = extractvalue { i64, ptr } %t512, 0
  store i64 %t513, ptr %l231, !tbaa !24
  %t514 = load i64, ptr %l228, !tbaa !24
  %t515 = icmp sge i64 %t514, 0
  br i1 %t515, label %bb127, label %bb128
bb127:
  %t517 = load i64, ptr %l228, !tbaa !24
  %t518 = load i64, ptr %l230, !tbaa !24
  %t519 = icmp sle i64 %t517, %t518
  br i1 %t519, label %bb129, label %bb130
bb128:
  call void @__olang_check_failed(ptr @olang_loc_edaf45632a5c2555_299361976cec5e59)
  unreachable
bb129:
  %t521 = load i64, ptr %l230, !tbaa !24
  %t522 = load i64, ptr %l231, !tbaa !24
  %t523 = icmp sle i64 %t521, %t522
  br i1 %t523, label %bb131, label %bb132
bb130:
  call void @__olang_check_failed(ptr @olang_loc_edaf45632a5c2555_299361976cec5e59)
  unreachable
bb131:
  %t525 = getelementptr { i64, ptr }, ptr %l226, i32 0, i32 1
  %t526 = load ptr, ptr %t525, !tbaa !27
  %t527 = load i64, ptr %l228, !tbaa !24
  %t528 = load i64, ptr %l230, !tbaa !24
  %t529 = getelementptr i8, ptr %t526, i64 %t527
  %t530 = sub i64 %t528, %t527
  %t531 = insertvalue { i64, ptr } undef, i64 %t530, 0
  %t532 = insertvalue { i64, ptr } %t531, ptr %t529, 1
  %t534 = extractvalue { i64, ptr } %t532, 1
  %t535 = extractvalue { i64, ptr } %t532, 0
  %t536 = load i64, ptr %l218
  %t537 = inttoptr i64 %t536 to ptr
  %t538 = call ptr @__olang_scope_alloc(ptr %t537, i64 %t535)
  call void @olang_textcopy(ptr %t538, ptr %t534, i64 %t535)
  %t539 = insertvalue { i64, ptr } undef, i64 %t535, 0
  %t540 = insertvalue { i64, ptr } %t539, ptr %t538, 1
  %t542 = load i64, ptr %l218
  %t543 = inttoptr i64 %t542 to ptr
  %t544 = extractvalue { i64, ptr } %t540, 0
  %t545 = extractvalue { i64, ptr } %t540, 1
  %t546 = mul i64 %t544, 1
  %t547 = call ptr @__olang_scope_alloc(ptr %t543, i64 %t546)
  call void @llvm.memcpy.p0.p0.i64(ptr %t547, ptr %t545, i64 %t546, i1 false)
  %t548 = insertvalue { i64, ptr } undef, i64 %t544, 0
  %t549 = insertvalue { i64, ptr } %t548, ptr %t547, 1
  %t550 = load %"compiler/source:Span", ptr %l18
  %t551 = load i1, ptr %l8, !tbaa !21
  %t552 = load ptr, ptr %lp14
  %t553 = load { i64, ptr }, ptr %t552, !tbaa !27
  %t554 = load ptr, ptr %l15, !tbaa !29
  %t555 = load i1, ptr %l17, !tbaa !21
  %t562 = call %"compiler/cond:Global" @compiler_2fcond_3aGlobal_2ector(ptr %v1, ptr %v1, ptr %v1, ptr %v1, { i64, ptr } %t549, %"compiler/source:Span" %t550, i1 %t551, { i64, ptr } %t553, ptr %t554, i1 %t555)
  store %"compiler/cond:Global" %t562, ptr %l243
  br label %bb133
bb132:
  call void @__olang_check_failed(ptr @olang_loc_edaf45632a5c2555_299361976cec5e59)
  unreachable
bb133:
  %t563 = load %"compiler/cond:Global", ptr %l243
  %t564 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 64, i64 8)
  store %"compiler/cond:Global" %t563, ptr %t564
  %t565 = load ptr, ptr %l217, !tbaa !29
  call void @compiler_2fcond_2ecompiler_2fcond_3aScope_2eAdd(ptr %v1, ptr %v1, ptr %t565, ptr %t564)
  br label %bb134
bb134:
  call void @__olang_scope_close(ptr %s3)
  br label %bb135
bb135:
  %t567 = load i64, ptr %l5, !tbaa !24
  %t569 = add i64 %t567, 1
  store i64 %t569, ptr %l5, !tbaa !24
  br label %bb30
bb136:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2fload_2ecompiler_2fload_3aLoader_2eDecide(ptr %v0, ptr %a0, i64 %a1, i32 %a2, i64 %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l4 = alloca ptr
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
  %l17 = alloca i64
  %l21 = alloca ptr
  %l24 = alloca i64
  %l28 = alloca i64
  %l31 = alloca i64
  %l52 = alloca i32
  %l55 = alloca i1
  %l59 = alloca i64
  %l68 = alloca i64
  %l72 = alloca i64
  %l75 = alloca i64
  %l96 = alloca i64
  %l99 = alloca i1
  %l103 = alloca i64
  %l115 = alloca i64
  %l124 = alloca i64
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
  store ptr %t7, ptr %l21
  br label %bb1
bb1:
  %t8 = load ptr, ptr %l21, !tbaa !29
  store ptr %t8, ptr %l4, !tbaa !29
  store i64 0, ptr %l5, !tbaa !24
  %t9 = load ptr, ptr %l4, !tbaa !29
  %t11 = getelementptr %"compiler/load:Module", ptr %t9, i32 0, i32 14
  %t13 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI32_3e_2eLen_3cI32_3e(ptr %v0, ptr %t11)
  store i64 %t13, ptr %l24
  br label %bb2
bb2:
  %t14 = load i64, ptr %l24, !tbaa !24
  store i64 %t14, ptr %l6, !tbaa !24
  store i64 1, ptr %l7, !tbaa !24
  %t15 = load i64, ptr %l6, !tbaa !24
  %t16 = load i64, ptr %l5, !tbaa !24
  %t19 = icmp sgt i64 %t15, %t16
  br i1 %t19, label %bb3, label %bb4
bb3:
  %t21 = load i64, ptr %l7, !tbaa !24
  %t23 = icmp sgt i64 %t21, 0
  br i1 %t23, label %bb5, label %bb6
bb4:
  store i64 0, ptr %l28, !tbaa !24
  br label %bb8
bb5:
  %t25 = load i64, ptr %l6, !tbaa !24
  %t26 = load i64, ptr %l5, !tbaa !24
  %t29 = sub i64 %t25, %t26
  %t30 = load i64, ptr %l7, !tbaa !24
  %t33 = add i64 %t29, %t30
  %t35 = sub i64 %t33, 1
  %t36 = load i64, ptr %l7, !tbaa !24
  %t39 = sdiv i64 %t35, %t36
  store i64 %t39, ptr %l31, !tbaa !24
  br label %bb7
bb6:
  store i64 0, ptr %l31, !tbaa !24
  br label %bb7
bb7:
  %t41 = load i64, ptr %l31, !tbaa !24
  store i64 %t41, ptr %l28, !tbaa !24
  br label %bb8
bb8:
  %t42 = load i64, ptr %l28, !tbaa !24
  store i64 %t42, ptr %l8, !tbaa !24
  store i64 0, ptr %l9, !tbaa !24
  br label %bb9
bb9:
  %t43 = load i64, ptr %l9, !tbaa !24
  %t44 = load i64, ptr %l8, !tbaa !24
  %t47 = icmp slt i64 %t43, %t44
  %t49 = xor i1 %t47, true
  br i1 %t49, label %bb10, label %bb11
bb10:
  br label %bb45
bb11:
  br label %bb12
bb12:
  %t51 = load i64, ptr %l5, !tbaa !24
  %t52 = load i64, ptr %l9, !tbaa !24
  %t53 = load i64, ptr %l7, !tbaa !24
  %t56 = mul i64 %t52, %t53
  %t59 = add i64 %t51, %t56
  store i64 %t59, ptr %l10, !tbaa !24
  %t61 = load ptr, ptr %l4, !tbaa !29
  %t63 = getelementptr %"compiler/load:Module", ptr %t61, i32 0, i32 14
  %t64 = load i64, ptr %l10, !tbaa !24
  %t67 = call i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI32_3e_2eAt_3cI32_3e(ptr %v0, ptr %t63, i64 %t64)
  store i32 %t67, ptr %l52
  br label %bb13
bb13:
  %t69 = load i32, ptr %l52, !tbaa !23
  %t71 = icmp ne i32 %t69, %a2
  br i1 %t71, label %bb14, label %bb15
bb14:
  store i1 true, ptr %l55, !tbaa !21
  br label %bb17
bb15:
  %t73 = load ptr, ptr %l4, !tbaa !29
  %t75 = getelementptr %"compiler/load:Module", ptr %t73, i32 0, i32 16
  %t76 = load i64, ptr %l10, !tbaa !24
  %t79 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t75, i64 %t76)
  store i64 %t79, ptr %l59
  br label %bb16
bb16:
  %t80 = load i64, ptr @G_2ecompiler_2fload_2ePending, !tbaa !24
  %t81 = load i64, ptr %l59, !tbaa !24
  %t83 = icmp ne i64 %t81, %t80
  store i1 %t83, ptr %l55, !tbaa !21
  br label %bb17
bb17:
  %t85 = load i1, ptr %l55, !tbaa !21
  br i1 %t85, label %bb18, label %bb19
bb18:
  br label %bb44
bb19:
  br label %bb20
bb20:
  %t86 = load ptr, ptr %l4, !tbaa !29
  %t88 = getelementptr %"compiler/load:Module", ptr %t86, i32 0, i32 16
  %t89 = load i64, ptr %l10, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eSetAt_3cI64_3e(ptr %v0, ptr %t88, i64 %t89, i64 %a3)
  br label %bb21
bb21:
  store i64 0, ptr %l11, !tbaa !24
  %t94 = load ptr, ptr %l4, !tbaa !29
  %t96 = getelementptr %"compiler/load:Module", ptr %t94, i32 0, i32 14
  %t98 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI32_3e_2eLen_3cI32_3e(ptr %v0, ptr %t96)
  store i64 %t98, ptr %l68
  br label %bb22
bb22:
  %t99 = load i64, ptr %l68, !tbaa !24
  store i64 %t99, ptr %l12, !tbaa !24
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
  store i64 0, ptr %l72, !tbaa !24
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
  store i64 %t124, ptr %l75, !tbaa !24
  br label %bb27
bb26:
  store i64 0, ptr %l75, !tbaa !24
  br label %bb27
bb27:
  %t126 = load i64, ptr %l75, !tbaa !24
  store i64 %t126, ptr %l72, !tbaa !24
  br label %bb28
bb28:
  %t127 = load i64, ptr %l72, !tbaa !24
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
  br label %bb43
bb31:
  br label %bb32
bb32:
  %t136 = load i64, ptr %l11, !tbaa !24
  %t137 = load i64, ptr %l15, !tbaa !24
  %t138 = load i64, ptr %l13, !tbaa !24
  %t141 = mul i64 %t137, %t138
  %t144 = add i64 %t136, %t141
  store i64 %t144, ptr %l16, !tbaa !24
  %t146 = load ptr, ptr %l4, !tbaa !29
  %t148 = getelementptr %"compiler/load:Module", ptr %t146, i32 0, i32 16
  %t149 = load i64, ptr %l16, !tbaa !24
  %t152 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t148, i64 %t149)
  store i64 %t152, ptr %l96
  br label %bb33
bb33:
  %t153 = load i64, ptr @G_2ecompiler_2fload_2ePending, !tbaa !24
  %t154 = load i64, ptr %l96, !tbaa !24
  %t156 = icmp eq i64 %t154, %t153
  br i1 %t156, label %bb34, label %bb35
bb34:
  %t158 = load ptr, ptr %l4, !tbaa !29
  %t160 = getelementptr %"compiler/load:Module", ptr %t158, i32 0, i32 15
  %t161 = load i64, ptr %l16, !tbaa !24
  %t164 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t160, i64 %t161)
  store i64 %t164, ptr %l103
  br label %bb36
bb35:
  store i1 false, ptr %l99, !tbaa !21
  br label %bb37
bb36:
  %t165 = load i64, ptr %l103, !tbaa !24
  %t166 = icmp sge i64 %t165, 0
  store i1 %t166, ptr %l99, !tbaa !21
  br label %bb37
bb37:
  %t168 = load i1, ptr %l99, !tbaa !21
  br i1 %t168, label %bb38, label %bb39
bb38:
  %t169 = load ptr, ptr %l4, !tbaa !29
  %t171 = getelementptr %"compiler/load:Module", ptr %t169, i32 0, i32 16
  %t172 = load i64, ptr %l16, !tbaa !24
  %t173 = load i64, ptr @G_2ecompiler_2fload_2eNotYet, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eSetAt_3cI64_3e(ptr %v0, ptr %t171, i64 %t172, i64 %t173)
  br label %bb40
bb39:
  br label %bb41
bb40:
  br label %bb41
bb41:
  br label %bb42
bb42:
  %t177 = load i64, ptr %l15, !tbaa !24
  %t179 = add i64 %t177, 1
  store i64 %t179, ptr %l15, !tbaa !24
  br label %bb29
bb43:
  br label %bb44
bb44:
  %t181 = load i64, ptr %l9, !tbaa !24
  %t183 = add i64 %t181, 1
  store i64 %t183, ptr %l9, !tbaa !24
  br label %bb9
bb45:
  %t185 = load ptr, ptr %l0, !tbaa !29
  %t187 = getelementptr %"compiler/load:Loader", ptr %t185, i32 0, i32 10
  %t189 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_Hb2d19b6b5ea5ab5a85c5720545345bd4(ptr %v0, ptr %t187)
  store i64 %t189, ptr %l115
  br label %bb46
bb46:
  %t190 = load i64, ptr %l115, !tbaa !24
  store i64 %t190, ptr %l17, !tbaa !24
  %t191 = load ptr, ptr %l0, !tbaa !29
  %t192 = load i64, ptr %l1, !tbaa !24
  call void @compiler_2fload_2ecompiler_2fload_3aLoader_2eloadImports(ptr %v0, ptr %t191, i64 %t192)
  br label %bb47
bb47:
  %t195 = load ptr, ptr %l0, !tbaa !29
  %t196 = load i64, ptr %l1, !tbaa !24
  %t197 = load ptr, ptr %l4, !tbaa !29
  %t199 = getelementptr %"compiler/load:Module", ptr %t197, i32 0, i32 8
  %t200 = load { i64, ptr }, ptr %t199, !tbaa !27
  call void @compiler_2fload_2ecompiler_2fload_3aLoader_2egroups(ptr %v0, ptr %v0, ptr %t195, i64 %t196, { i64, ptr } %t200)
  br label %bb48
bb48:
  %t204 = load ptr, ptr %l0, !tbaa !29
  %t206 = getelementptr %"compiler/load:Loader", ptr %t204, i32 0, i32 10
  %t208 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_Hb2d19b6b5ea5ab5a85c5720545345bd4(ptr %v0, ptr %t206)
  store i64 %t208, ptr %l124
  br label %bb49
bb49:
  %t209 = load i64, ptr %l17, !tbaa !24
  %t210 = load i64, ptr %l124, !tbaa !24
  %t212 = icmp sgt i64 %t210, %t209
  br i1 %t212, label %bb50, label %bb51
bb50:
  %t214 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2fload_2ecompiler_2fload_3aLoader_2echeckReach(ptr %v0, ptr %t214)
  br label %bb52
bb51:
  br label %bb53
bb52:
  br label %bb53
bb53:
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
  %l64 = alloca i1
  %l65 = alloca i1
  %l67 = alloca i1
  %l68 = alloca i64
  %l71 = alloca { i64, ptr }
  %l72 = alloca { i64, ptr }
  %l74 = alloca { i64, ptr }
  %l76 = alloca i64
  %l82 = alloca { i64, ptr }
  %l83 = alloca { i64, ptr }
  %l85 = alloca { i64, ptr }
  %l88 = alloca { i64, ptr }
  %l89 = alloca i64
  %l93 = alloca i64
  %l94 = alloca i32
  %l98 = alloca i64
  %l105 = alloca { i64, ptr }
  %l106 = alloca i1
  %l107 = alloca i1
  %l109 = alloca i1
  %l111 = alloca i1
  %l113 = alloca i1
  %l115 = alloca { i64, ptr }
  %l119 = alloca i1
  %l120 = alloca { i64, ptr }
  %l122 = alloca { i64, ptr }
  %l125 = alloca i1
  %l129 = alloca { i64, ptr }
  %l130 = alloca i1
  %l131 = alloca i64
  %l135 = alloca { i64, ptr }
  %l136 = alloca { i64, ptr }
  %l138 = alloca { i64, ptr }
  %l141 = alloca i1
  %l143 = alloca i1
  %l145 = alloca i1
  %l146 = alloca i1
  %l150 = alloca { i64, ptr }
  %l155 = alloca i1
  %l163 = alloca i1
  %l165 = alloca i1
  %l167 = alloca i1
  %l168 = alloca { i64, ptr }
  %l171 = alloca i1
  %l174 = alloca { i64, ptr }
  %l175 = alloca { i64, ptr }
  %l176 = alloca i64
  %l177 = alloca { i64, ptr }
  %l180 = alloca { i64, ptr }
  %l183 = alloca i64
  %l187 = alloca i64
  %l188 = alloca i64
  %l197 = alloca { i64, ptr }
  %l198 = alloca i64
  %l203 = alloca i64
  %l206 = alloca i64
  %l224 = alloca { i64, ptr }
  %l226 = alloca { i64, ptr }
  %l231 = alloca i64
  %l233 = alloca { i64, ptr }
  %l234 = alloca { i64, ptr }
  %l236 = alloca { i64, ptr }
  %l237 = alloca i32
  %l241 = alloca { i64, ptr }
  %l243 = alloca { i64, ptr }
  %l245 = alloca { i64, ptr }
  %l247 = alloca { i64, ptr }
  %l248 = alloca i32
  %l252 = alloca i1
  %l253 = alloca i1
  %l258 = alloca i1
  %l268 = alloca i1
  %l271 = alloca i1
  %l279 = alloca i1
  %l285 = alloca { i64, ptr }
  %l287 = alloca { i64, ptr }
  %l288 = alloca i32
  %l290 = alloca i1
  %l299 = alloca i64
  %l310 = alloca { i64, ptr }
  %l324 = alloca i64
  %l326 = alloca i64
  %l331 = alloca { i64, ptr }
  %l334 = alloca i1
  %l342 = alloca { i64, ptr }
  %l346 = alloca { i64, ptr }
  %l347 = alloca i32
  %l350 = alloca { i64, ptr }
  %l352 = alloca { { i64, ptr }, { i64, ptr } }
  %l353 = alloca { i64, ptr }
  %l354 = alloca i64
  %l355 = alloca { i64, ptr }
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
  store { i64, ptr } { i64 27, ptr getelementptr inbounds (<{ i64, [27 x i8] }>, ptr @.d47, i32 0, i32 1) }, ptr %l41, !tbaa !27
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
  store { i64, ptr } { i64 33, ptr getelementptr inbounds (<{ i64, [33 x i8] }>, ptr @.d48, i32 0, i32 1) }, ptr %l52, !tbaa !27
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
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d49, i32 0, i32 1) }, ptr %l61, !tbaa !27
  %t85 = load { i64, ptr }, ptr %l61, !tbaa !27
  %t86 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 16, i64 8)
  store ptr %t86, ptr %lp6
  %t88 = load ptr, ptr %lp6
  store { i64, ptr } %t85, ptr %t88, !tbaa !27
  %t89 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t91 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %v1, ptr %s0, { i64, ptr } %t89, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d50, i32 0, i32 1) })
  store i1 %t91, ptr %l64
  br label %bb9
bb9:
  %t92 = load i1, ptr %l64, !tbaa !21
  br i1 %t92, label %bb10, label %bb11
bb10:
  store i1 true, ptr %l65, !tbaa !21
  br label %bb13
bb11:
  %t93 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t95 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %s0, { i64, ptr } %t93, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d51, i32 0, i32 1) })
  store i1 %t95, ptr %l67
  br label %bb12
bb12:
  %t96 = load i1, ptr %l67, !tbaa !21
  store i1 %t96, ptr %l65, !tbaa !21
  br label %bb13
bb13:
  %t97 = load i1, ptr %l65, !tbaa !21
  br i1 %t97, label %bb14, label %bb15
bb14:
  store %olang.scope zeroinitializer, ptr %s3
  %t98 = ptrtoint ptr %v2 to i64
  store i64 %t98, ptr %l68, !tbaa !24
  %t99 = load i1, ptr @olang_2esole_2ecompiler__2fload__2ecompiler__2fload__3aLoader__2eEmbed_2elocal_2e6
  br i1 %t99, label %bb16, label %bb17
bb15:
  store %olang.scope zeroinitializer, ptr %s5
  %t101 = ptrtoint ptr %v2 to i64
  store i64 %t101, ptr %l76, !tbaa !24
  %t102 = load i1, ptr @olang_2esole_2ecompiler__2fload__2ecompiler__2fload__3aLoader__2eEmbed_2elocal_2e6
  br i1 %t102, label %bb23, label %bb24
bb16:
  %t104 = call ptr @__olang_region_make(ptr %v2)
  %t105 = ptrtoint ptr %t104 to i64
  store i64 %t105, ptr %l68, !tbaa !24
  br label %bb17
bb17:
  %t106 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t108 = call { i64, ptr } @compiler_2fload_2eNormalize(ptr %v1, ptr %s3, { i64, ptr } %t106)
  store { i64, ptr } %t108, ptr %l71
  br label %bb18
bb18:
  %t109 = load { i64, ptr }, ptr %l71, !tbaa !27
  %t110 = extractvalue { i64, ptr } %t109, 1
  %t111 = extractvalue { i64, ptr } %t109, 0
  %t112 = load i64, ptr %l68
  %t113 = inttoptr i64 %t112 to ptr
  %t114 = call ptr @__olang_scope_alloc(ptr %t113, i64 %t111)
  call void @olang_textcopy(ptr %t114, ptr %t110, i64 %t111)
  %t115 = insertvalue { i64, ptr } undef, i64 %t111, 0
  %t116 = insertvalue { i64, ptr } %t115, ptr %t114, 1
  store { i64, ptr } %t116, ptr %l72, !tbaa !27
  %t117 = load i1, ptr @olang_2esole_2ecompiler__2fload__2ecompiler__2fload__3aLoader__2eEmbed_2elocal_2e6
  br i1 %t117, label %bb19, label %bb20
bb19:
  %t119 = load i64, ptr %l68
  %t120 = inttoptr i64 %t119 to ptr
  %t121 = load { i64, ptr }, ptr %l72
  %t122 = extractvalue { i64, ptr } %t121, 1
  %t123 = call ptr @__olang_region_or(ptr %t122, ptr null)
  %t124 = icmp ne ptr %t123, null
  %t125 = select i1 %t124, ptr %t123, ptr null
  %t126 = icmp eq ptr %t125, %t120
  call void @__olang_region_settle(ptr %t120, i1 %t126)
  br label %bb20
bb20:
  %t127 = load ptr, ptr %lp6
  %t128 = load { i64, ptr }, ptr %t127, !tbaa !27
  store { i64, ptr } %t128, ptr %l74, !tbaa !27
  %t129 = load { i64, ptr }, ptr %l72, !tbaa !27
  %t130 = load ptr, ptr %lp6
  store { i64, ptr } %t129, ptr %t130, !tbaa !27
  %t131 = load i1, ptr @olang_2esole_2ecompiler__2fload__2ecompiler__2fload__3aLoader__2eEmbed_2elocal_2e6
  br i1 %t131, label %bb21, label %bb22
bb21:
  %t133 = load { i64, ptr }, ptr %l74
  %t134 = extractvalue { i64, ptr } %t133, 1
  call void @__olang_region_release(ptr %t134)
  store { i64, ptr } zeroinitializer, ptr %l74
  br label %bb22
bb22:
  call void @__olang_scope_close(ptr %s3)
  br label %bb30
bb23:
  %t135 = call ptr @__olang_region_make(ptr %v2)
  %t136 = ptrtoint ptr %t135 to i64
  store i64 %t136, ptr %l76, !tbaa !24
  br label %bb24
bb24:
  %t137 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t138 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t140 = extractvalue { i64, ptr } %t137, 1
  %t141 = extractvalue { i64, ptr } %t137, 0
  %t142 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d52, i32 0, i32 1) }, 1
  %t143 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d52, i32 0, i32 1) }, 0
  %t144 = add i64 %t141, %t143
  %t146 = extractvalue { i64, ptr } %t138, 1
  %t147 = extractvalue { i64, ptr } %t138, 0
  %t148 = add i64 %t144, %t147
  %t149 = call ptr @__olang_scope_alloc(ptr %s5, i64 %t148)
  call void @olang_textcopy(ptr %t149, ptr %t140, i64 %t141)
  %t150 = getelementptr i8, ptr %t149, i64 %t141
  call void @olang_textcopy(ptr %t150, ptr %t142, i64 %t143)
  %t151 = getelementptr i8, ptr %t150, i64 %t143
  call void @olang_textcopy(ptr %t151, ptr %t146, i64 %t147)
  %t152 = insertvalue { i64, ptr } undef, i64 %t148, 0
  %t153 = insertvalue { i64, ptr } %t152, ptr %t149, 1
  %t155 = extractvalue { i64, ptr } %t153, 0
  %t156 = extractvalue { i64, ptr } %t153, 1
  %t157 = mul i64 %t155, 1
  %t158 = call ptr @__olang_scope_alloc(ptr %s5, i64 %t157)
  call void @llvm.memcpy.p0.p0.i64(ptr %t158, ptr %t156, i64 %t157, i1 false)
  %t159 = insertvalue { i64, ptr } undef, i64 %t155, 0
  %t160 = insertvalue { i64, ptr } %t159, ptr %t158, 1
  %t162 = call { i64, ptr } @compiler_2fload_2eNormalize(ptr %s5, ptr %s5, { i64, ptr } %t160)
  store { i64, ptr } %t162, ptr %l82
  br label %bb25
bb25:
  %t163 = load { i64, ptr }, ptr %l82, !tbaa !27
  %t164 = extractvalue { i64, ptr } %t163, 1
  %t165 = extractvalue { i64, ptr } %t163, 0
  %t166 = load i64, ptr %l76
  %t167 = inttoptr i64 %t166 to ptr
  %t168 = call ptr @__olang_scope_alloc(ptr %t167, i64 %t165)
  call void @olang_textcopy(ptr %t168, ptr %t164, i64 %t165)
  %t169 = insertvalue { i64, ptr } undef, i64 %t165, 0
  %t170 = insertvalue { i64, ptr } %t169, ptr %t168, 1
  store { i64, ptr } %t170, ptr %l83, !tbaa !27
  %t171 = load i1, ptr @olang_2esole_2ecompiler__2fload__2ecompiler__2fload__3aLoader__2eEmbed_2elocal_2e6
  br i1 %t171, label %bb26, label %bb27
bb26:
  %t173 = load i64, ptr %l76
  %t174 = inttoptr i64 %t173 to ptr
  %t175 = load { i64, ptr }, ptr %l83
  %t176 = extractvalue { i64, ptr } %t175, 1
  %t177 = call ptr @__olang_region_or(ptr %t176, ptr null)
  %t178 = icmp ne ptr %t177, null
  %t179 = select i1 %t178, ptr %t177, ptr null
  %t180 = icmp eq ptr %t179, %t174
  call void @__olang_region_settle(ptr %t174, i1 %t180)
  br label %bb27
bb27:
  %t181 = load ptr, ptr %lp6
  %t182 = load { i64, ptr }, ptr %t181, !tbaa !27
  store { i64, ptr } %t182, ptr %l85, !tbaa !27
  %t183 = load { i64, ptr }, ptr %l83, !tbaa !27
  %t184 = load ptr, ptr %lp6
  store { i64, ptr } %t183, ptr %t184, !tbaa !27
  %t185 = load i1, ptr @olang_2esole_2ecompiler__2fload__2ecompiler__2fload__3aLoader__2eEmbed_2elocal_2e6
  br i1 %t185, label %bb28, label %bb29
bb28:
  %t187 = load { i64, ptr }, ptr %l85
  %t188 = extractvalue { i64, ptr } %t187, 1
  call void @__olang_region_release(ptr %t188)
  store { i64, ptr } zeroinitializer, ptr %l85
  br label %bb29
bb29:
  call void @__olang_scope_close(ptr %s5)
  br label %bb30
bb30:
  %t189 = load ptr, ptr %l4, !tbaa !29
  %t191 = getelementptr %"compiler/load:Module", ptr %t189, i32 0, i32 2
  %t192 = load { i64, ptr }, ptr %t191, !tbaa !27
  store { i64, ptr } %t192, ptr %l88, !tbaa !27
  %t193 = load ptr, ptr %l4, !tbaa !29
  %t195 = getelementptr %"compiler/load:Module", ptr %t193, i32 0, i32 2
  %t196 = load { i64, ptr }, ptr %t195, !tbaa !27
  %t199 = call { i32, i64 } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eFindByte(ptr %v0, { i64, ptr } %t196, i8 47)
  %t200 = extractvalue { i32, i64 } %t199, 1
  %t201 = extractvalue { i32, i64 } %t199, 0
  store i32 %t201, ptr %l94
  %t202 = icmp ne i32 %t201, 0
  br i1 %t202, label %bb32, label %ok.203, !prof !99
ok.203:
  store i64 %t200, ptr %l93
  br label %bb31
bb31:
  %t204 = load i64, ptr %l93, !tbaa !24
  store i64 %t204, ptr %l89, !tbaa !24
  br label %bb34
bb32:
  br label %bb33
bb33:
  %t205 = load ptr, ptr %l4, !tbaa !29
  %t207 = getelementptr %"compiler/load:Module", ptr %t205, i32 0, i32 2
  %t208 = load { i64, ptr }, ptr %t207, !tbaa !27
  %t210 = extractvalue { i64, ptr } %t208, 0
  store i64 %t210, ptr %l89, !tbaa !24
  br label %bb34
bb34:
  %t212 = load { i64, ptr }, ptr %l88, !tbaa !27
  %t213 = extractvalue { i64, ptr } %t212, 0
  store i64 %t213, ptr %l98, !tbaa !24
  %t214 = icmp sge i64 0, 0
  br i1 %t214, label %bb35, label %bb36
bb35:
  %t216 = load i64, ptr %l89, !tbaa !24
  %t217 = icmp sle i64 0, %t216
  br i1 %t217, label %bb37, label %bb38
bb36:
  call void @__olang_check_failed(ptr @olang_loc_9daea36ebb972439_574e08d4d8c23575)
  unreachable
bb37:
  %t219 = load i64, ptr %l89, !tbaa !24
  %t220 = load i64, ptr %l98, !tbaa !24
  %t221 = icmp sle i64 %t219, %t220
  br i1 %t221, label %bb39, label %bb40
bb38:
  call void @__olang_check_failed(ptr @olang_loc_9daea36ebb972439_574e08d4d8c23575)
  unreachable
bb39:
  %t223 = getelementptr { i64, ptr }, ptr %l88, i32 0, i32 1
  %t224 = load ptr, ptr %t223, !tbaa !27
  %t225 = load i64, ptr %l89, !tbaa !24
  %t226 = getelementptr i8, ptr %t224, i64 0
  %t227 = sub i64 %t225, 0
  %t228 = insertvalue { i64, ptr } undef, i64 %t227, 0
  %t229 = insertvalue { i64, ptr } %t228, ptr %t226, 1
  store { i64, ptr } %t229, ptr %l7, !tbaa !27
  %t231 = load { i64, ptr }, ptr %l7, !tbaa !27
  store { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d53, i32 0, i32 1) }, ptr %l105, !tbaa !27
  %t234 = load { i64, ptr }, ptr %l105, !tbaa !27
  %t235 = call i1 @std_2fprelude_2farray_2eArray_3cstd_2fprelude_2ftext_3aChar_3e_2eContains_3cstd_2fprelude_2ftext_3aChar_3e(ptr %v0, ptr %s0, { i64, ptr } %t231, { i64, ptr } %t234)
  store i1 %t235, ptr %l106
  br label %bb41
bb40:
  call void @__olang_check_failed(ptr @olang_loc_9daea36ebb972439_574e08d4d8c23575)
  unreachable
bb41:
  %t236 = load i1, ptr %l106, !tbaa !21
  br i1 %t236, label %bb42, label %bb43
bb42:
  %t237 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t239 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t237, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d54, i32 0, i32 1) })
  store i1 %t239, ptr %l109
  br label %bb44
bb43:
  store i1 false, ptr %l107, !tbaa !21
  br label %bb45
bb44:
  %t240 = load i1, ptr %l109, !tbaa !21
  %t241 = xor i1 %t240, true
  store i1 %t241, ptr %l107, !tbaa !21
  br label %bb45
bb45:
  %t243 = load i1, ptr %l107, !tbaa !21
  br i1 %t243, label %bb46, label %bb47
bb46:
  %t244 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t246 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t244, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d55, i32 0, i32 1) })
  store i1 %t246, ptr %l113
  br label %bb48
bb47:
  store i1 false, ptr %l111, !tbaa !21
  br label %bb49
bb48:
  %t247 = load i1, ptr %l113, !tbaa !21
  %t248 = xor i1 %t247, true
  store i1 %t248, ptr %l111, !tbaa !21
  br label %bb49
bb49:
  %t250 = load i1, ptr %l111, !tbaa !21
  store i1 %t250, ptr %l8, !tbaa !21
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d56, i32 0, i32 1) }, ptr %l115, !tbaa !27
  %t251 = load { i64, ptr }, ptr %l115, !tbaa !27
  store { i64, ptr } %t251, ptr %l9, !tbaa !27
  %t253 = load ptr, ptr %l4, !tbaa !29
  %t255 = getelementptr %"compiler/load:Module", ptr %t253, i32 0, i32 2
  %t256 = load { i64, ptr }, ptr %t255, !tbaa !27
  %t258 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %v0, ptr %s0, { i64, ptr } %t256, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d57, i32 0, i32 1) })
  store i1 %t258, ptr %l119
  br label %bb50
bb50:
  %t259 = load i1, ptr %l119, !tbaa !21
  br i1 %t259, label %bb51, label %bb52
bb51:
  store { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d58, i32 0, i32 1) }, ptr %l120, !tbaa !27
  %t260 = load { i64, ptr }, ptr %l120, !tbaa !27
  %t261 = load { i64, ptr }, ptr %l9, !tbaa !27
  store { i64, ptr } %t261, ptr %l122, !tbaa !27
  store { i64, ptr } %t260, ptr %l9, !tbaa !27
  %t263 = load i1, ptr @olang_2esole_2ecompiler__2fload__2ecompiler__2fload__3aLoader__2eEmbed_2elocal_2e9
  br i1 %t263, label %bb53, label %bb54
bb52:
  store %olang.scope zeroinitializer, ptr %s9
  %t265 = load i1, ptr %l8, !tbaa !21
  br i1 %t265, label %bb55, label %bb56
bb53:
  %t267 = load { i64, ptr }, ptr %l122
  %t268 = extractvalue { i64, ptr } %t267, 1
  call void @__olang_region_release(ptr %t268)
  store { i64, ptr } zeroinitializer, ptr %l122
  br label %bb54
bb54:
  br label %bb69
bb55:
  %t269 = load ptr, ptr %l4, !tbaa !29
  %t271 = getelementptr %"compiler/load:Module", ptr %t269, i32 0, i32 2
  %t272 = load { i64, ptr }, ptr %t271, !tbaa !27
  store { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d59, i32 0, i32 1) }, ptr %l129, !tbaa !27
  %t275 = load { i64, ptr }, ptr %l129, !tbaa !27
  %t276 = call i1 @std_2fprelude_2farray_2eArray_3cstd_2fprelude_2ftext_3aChar_3e_2eContains_3cstd_2fprelude_2ftext_3aChar_3e(ptr %v0, ptr %s9, { i64, ptr } %t272, { i64, ptr } %t275)
  store i1 %t276, ptr %l130
  br label %bb57
bb56:
  store i1 false, ptr %l125, !tbaa !21
  br label %bb58
bb57:
  %t277 = load i1, ptr %l130, !tbaa !21
  store i1 %t277, ptr %l125, !tbaa !21
  br label %bb58
bb58:
  %t278 = load i1, ptr %l125, !tbaa !21
  br i1 %t278, label %bb59, label %bb60
bb59:
  store %olang.scope zeroinitializer, ptr %s10
  %t279 = ptrtoint ptr %s0 to i64
  store i64 %t279, ptr %l131, !tbaa !24
  %t280 = load i1, ptr @olang_2esole_2ecompiler__2fload__2ecompiler__2fload__3aLoader__2eEmbed_2elocal_2e9
  br i1 %t280, label %bb61, label %bb62
bb60:
  br label %bb68
bb61:
  %t282 = call ptr @__olang_region_make(ptr %s0)
  %t283 = ptrtoint ptr %t282 to i64
  store i64 %t283, ptr %l131, !tbaa !24
  br label %bb62
bb62:
  %t284 = load ptr, ptr %l4, !tbaa !29
  %t286 = getelementptr %"compiler/load:Module", ptr %t284, i32 0, i32 2
  %t287 = load { i64, ptr }, ptr %t286, !tbaa !27
  %t289 = call { i64, ptr } @compiler_2fload_2efirstElems(ptr %v0, ptr %s10, { i64, ptr } %t287, i64 3)
  store { i64, ptr } %t289, ptr %l135
  br label %bb63
bb63:
  %t290 = load { i64, ptr }, ptr %l135, !tbaa !27
  %t291 = extractvalue { i64, ptr } %t290, 1
  %t292 = extractvalue { i64, ptr } %t290, 0
  %t293 = load i64, ptr %l131
  %t294 = inttoptr i64 %t293 to ptr
  %t295 = call ptr @__olang_scope_alloc(ptr %t294, i64 %t292)
  call void @olang_textcopy(ptr %t295, ptr %t291, i64 %t292)
  %t296 = insertvalue { i64, ptr } undef, i64 %t292, 0
  %t297 = insertvalue { i64, ptr } %t296, ptr %t295, 1
  store { i64, ptr } %t297, ptr %l136, !tbaa !27
  %t298 = load i1, ptr @olang_2esole_2ecompiler__2fload__2ecompiler__2fload__3aLoader__2eEmbed_2elocal_2e9
  br i1 %t298, label %bb64, label %bb65
bb64:
  %t300 = load i64, ptr %l131
  %t301 = inttoptr i64 %t300 to ptr
  %t302 = load { i64, ptr }, ptr %l136
  %t303 = extractvalue { i64, ptr } %t302, 1
  %t304 = call ptr @__olang_region_or(ptr %t303, ptr null)
  %t305 = icmp ne ptr %t304, null
  %t306 = select i1 %t305, ptr %t304, ptr null
  %t307 = icmp eq ptr %t306, %t301
  call void @__olang_region_settle(ptr %t301, i1 %t307)
  br label %bb65
bb65:
  %t308 = load { i64, ptr }, ptr %l9, !tbaa !27
  store { i64, ptr } %t308, ptr %l138, !tbaa !27
  %t309 = load { i64, ptr }, ptr %l136, !tbaa !27
  store { i64, ptr } %t309, ptr %l9, !tbaa !27
  %t310 = load i1, ptr @olang_2esole_2ecompiler__2fload__2ecompiler__2fload__3aLoader__2eEmbed_2elocal_2e9
  br i1 %t310, label %bb66, label %bb67
bb66:
  %t312 = load { i64, ptr }, ptr %l138
  %t313 = extractvalue { i64, ptr } %t312, 1
  call void @__olang_region_release(ptr %t313)
  store { i64, ptr } zeroinitializer, ptr %l138
  br label %bb67
bb67:
  call void @__olang_scope_close(ptr %s10)
  br label %bb68
bb68:
  call void @__olang_scope_close(ptr %s9)
  br label %bb69
bb69:
  %t314 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t316 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %s0, { i64, ptr } %t314, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d60, i32 0, i32 1) })
  store i1 %t316, ptr %l141
  br label %bb70
bb70:
  %t317 = load i1, ptr %l141, !tbaa !21
  %t318 = xor i1 %t317, true
  br i1 %t318, label %bb71, label %bb72
bb71:
  %t320 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t322 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %v1, ptr %s0, { i64, ptr } %t320, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d61, i32 0, i32 1) })
  store i1 %t322, ptr %l145
  br label %bb73
bb72:
  store i1 false, ptr %l143, !tbaa !21
  br label %bb79
bb73:
  %t323 = load i1, ptr %l145, !tbaa !21
  br i1 %t323, label %bb74, label %bb75
bb74:
  store i1 true, ptr %l146, !tbaa !21
  br label %bb78
bb75:
  %t324 = load ptr, ptr %l4, !tbaa !29
  %t326 = getelementptr %"compiler/load:Module", ptr %t324, i32 0, i32 2
  %t327 = load { i64, ptr }, ptr %t326, !tbaa !27
  %t328 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t331 = call { i64, ptr } @compiler_2fload_2erelativeIdentity(ptr %v0, ptr %v1, ptr %s0, { i64, ptr } %t327, { i64, ptr } %t328)
  store { i64, ptr } %t331, ptr %l150
  br label %bb76
bb76:
  %t332 = load { i64, ptr }, ptr %l150, !tbaa !27
  %t333 = extractvalue { i64, ptr } %t332, 0
  %t334 = extractvalue { i64, ptr } %t332, 1
  %t335 = mul i64 %t333, 1
  %t336 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t335)
  call void @llvm.memcpy.p0.p0.i64(ptr %t336, ptr %t334, i64 %t335, i1 false)
  %t337 = insertvalue { i64, ptr } undef, i64 %t333, 0
  %t338 = insertvalue { i64, ptr } %t337, ptr %t336, 1
  %t339 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t341 = extractvalue { i64, ptr } %t339, 1
  %t342 = extractvalue { i64, ptr } %t339, 0
  %t343 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d62, i32 0, i32 1) }, 1
  %t344 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d62, i32 0, i32 1) }, 0
  %t345 = add i64 %t342, %t344
  %t346 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t345)
  call void @olang_textcopy(ptr %t346, ptr %t341, i64 %t342)
  %t347 = getelementptr i8, ptr %t346, i64 %t342
  call void @olang_textcopy(ptr %t347, ptr %t343, i64 %t344)
  %t348 = insertvalue { i64, ptr } undef, i64 %t345, 0
  %t349 = insertvalue { i64, ptr } %t348, ptr %t346, 1
  %t351 = extractvalue { i64, ptr } %t349, 0
  %t352 = extractvalue { i64, ptr } %t349, 1
  %t353 = mul i64 %t351, 1
  %t354 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t353)
  call void @llvm.memcpy.p0.p0.i64(ptr %t354, ptr %t352, i64 %t353, i1 false)
  %t355 = insertvalue { i64, ptr } undef, i64 %t351, 0
  %t356 = insertvalue { i64, ptr } %t355, ptr %t354, 1
  %t359 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %s0, ptr %s0, { i64, ptr } %t338, { i64, ptr } %t356)
  store i1 %t359, ptr %l155
  br label %bb77
bb77:
  %t360 = load i1, ptr %l155, !tbaa !21
  %t361 = xor i1 %t360, true
  store i1 %t361, ptr %l146, !tbaa !21
  br label %bb78
bb78:
  %t363 = load i1, ptr %l146, !tbaa !21
  store i1 %t363, ptr %l143, !tbaa !21
  br label %bb79
bb79:
  %t364 = load i1, ptr %l143, !tbaa !21
  br i1 %t364, label %bb80, label %bb81
bb80:
  %t365 = load ptr, ptr %lp3
  %t367 = insertvalue { i64, ptr } undef, i64 0, 0
  %t368 = insertvalue { i64, ptr } %t367, ptr %t365, 1
  %t369 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t370 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d63, i32 0, i32 1) }, 1
  %t371 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d63, i32 0, i32 1) }, 0
  %t373 = extractvalue { i64, ptr } %t369, 1
  %t374 = extractvalue { i64, ptr } %t369, 0
  %t375 = add i64 %t371, %t374
  %t376 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t375)
  call void @olang_textcopy(ptr %t376, ptr %t370, i64 %t371)
  %t377 = getelementptr i8, ptr %t376, i64 %t371
  call void @olang_textcopy(ptr %t377, ptr %t373, i64 %t374)
  %t378 = insertvalue { i64, ptr } undef, i64 %t375, 0
  %t379 = insertvalue { i64, ptr } %t378, ptr %t376, 1
  %t381 = insertvalue { { i64, ptr }, { i64, ptr } } undef, { i64, ptr } %t368, 0
  %t383 = insertvalue { { i64, ptr }, { i64, ptr } } %t381, { i64, ptr } %t379, 1
  call void @__olang_scope_close(ptr %s0)
  store { { i64, ptr }, { i64, ptr } } %t383, ptr %rv
  br label %ret
bb81:
  br label %bb82
bb82:
  %t385 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t387 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %s0, { i64, ptr } %t385, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d64, i32 0, i32 1) })
  store i1 %t387, ptr %l163
  br label %bb83
bb83:
  %t388 = load i1, ptr %l163, !tbaa !21
  %t389 = xor i1 %t388, true
  br i1 %t389, label %bb84, label %bb85
bb84:
  %t391 = load ptr, ptr %lp6
  %t392 = load { i64, ptr }, ptr %t391, !tbaa !27
  %t394 = call i1 @std_2fos_2eExists(ptr %v2, { i64, ptr } %t392)
  store i1 %t394, ptr %l167
  br label %bb86
bb85:
  store i1 false, ptr %l165, !tbaa !21
  br label %bb87
bb86:
  %t395 = load i1, ptr %l167, !tbaa !21
  store i1 %t395, ptr %l165, !tbaa !21
  br label %bb87
bb87:
  %t396 = load i1, ptr %l165, !tbaa !21
  br i1 %t396, label %bb88, label %bb89
bb88:
  store %olang.scope zeroinitializer, ptr %s15
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d65, i32 0, i32 1) }, ptr %l168, !tbaa !27
  %t397 = load { i64, ptr }, ptr %l168, !tbaa !27
  store { i64, ptr } %t397, ptr %l10, !tbaa !27
  %t399 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t401 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %s15, { i64, ptr } %t399, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d66, i32 0, i32 1) })
  store i1 %t401, ptr %l171
  br label %bb90
bb89:
  br label %bb142
bb90:
  %t402 = load i1, ptr %l171, !tbaa !21
  br i1 %t402, label %bb91, label %bb92
bb91:
  %t403 = load ptr, ptr %l0, !tbaa !29
  %t405 = getelementptr %"compiler/load:Loader", ptr %t403, i32 0, i32 15
  %t406 = load { i64, ptr }, ptr %t405, !tbaa !27
  store { i64, ptr } %t406, ptr %l174, !tbaa !27
  %t408 = load { i64, ptr }, ptr %l10, !tbaa !27
  store { i64, ptr } %t408, ptr %l175, !tbaa !27
  %t409 = load { i64, ptr }, ptr %l174, !tbaa !27
  %t410 = extractvalue { i64, ptr } %t409, 0
  store i64 %t410, ptr %l176, !tbaa !24
  %t411 = load i64, ptr %l176, !tbaa !24
  %t412 = mul i64 %t411, 1
  %t413 = call ptr @__olang_scope_alloc(ptr %s15, i64 %t412)
  %t414 = insertvalue { i64, ptr } undef, i64 %t411, 0
  %t415 = insertvalue { i64, ptr } %t414, ptr %t413, 1
  store { i64, ptr } %t415, ptr %l177, !tbaa !27
  %t416 = getelementptr { i64, ptr }, ptr %l177, i32 0, i32 1
  %t417 = load ptr, ptr %t416, !tbaa !27
  %t418 = getelementptr { i64, ptr }, ptr %l174, i32 0, i32 1
  %t419 = load ptr, ptr %t418, !tbaa !27
  %t420 = load i64, ptr %l176, !tbaa !24
  %t421 = mul i64 %t420, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t417, ptr %t419, i64 %t421, i1 false)
  %t422 = load { i64, ptr }, ptr %l177, !tbaa !27
  store { i64, ptr } %t422, ptr %l10, !tbaa !27
  %t423 = load i1, ptr @olang_2esole_2ecompiler__2fload__2ecompiler__2fload__3aLoader__2eEmbed_2elocal_2e10
  br i1 %t423, label %bb93, label %bb94
bb92:
  store %olang.scope zeroinitializer, ptr %s17
  %t425 = load ptr, ptr %l4, !tbaa !29
  %t427 = getelementptr %"compiler/load:Module", ptr %t425, i32 0, i32 2
  %t428 = load { i64, ptr }, ptr %t427, !tbaa !27
  store { i64, ptr } %t428, ptr %l180, !tbaa !27
  %t429 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t431 = extractvalue { i64, ptr } %t429, 0
  %t433 = add i64 %t431, 1
  store i64 %t433, ptr %l183, !tbaa !24
  %t434 = load ptr, ptr %l4, !tbaa !29
  %t436 = getelementptr %"compiler/load:Module", ptr %t434, i32 0, i32 2
  %t437 = load { i64, ptr }, ptr %t436, !tbaa !27
  %t440 = extractvalue { i64, ptr } %t437, 0
  store i64 %t440, ptr %l187, !tbaa !24
  %t441 = load { i64, ptr }, ptr %l180, !tbaa !27
  %t442 = extractvalue { i64, ptr } %t441, 0
  store i64 %t442, ptr %l188, !tbaa !24
  %t443 = load i64, ptr %l183, !tbaa !24
  %t444 = icmp sge i64 %t443, 0
  br i1 %t444, label %bb95, label %bb96
bb93:
  %t446 = load { i64, ptr }, ptr %l175
  %t447 = extractvalue { i64, ptr } %t446, 1
  call void @__olang_region_release(ptr %t447)
  store { i64, ptr } zeroinitializer, ptr %l175
  br label %bb94
bb94:
  br label %bb127
bb95:
  %t448 = load i64, ptr %l183, !tbaa !24
  %t449 = load i64, ptr %l187, !tbaa !24
  %t450 = icmp sle i64 %t448, %t449
  br i1 %t450, label %bb97, label %bb98
bb96:
  call void @__olang_check_failed(ptr @olang_loc_af475931a368800c_57263df876e21e18)
  unreachable
bb97:
  %t452 = load i64, ptr %l187, !tbaa !24
  %t453 = load i64, ptr %l188, !tbaa !24
  %t454 = icmp sle i64 %t452, %t453
  br i1 %t454, label %bb99, label %bb100
bb98:
  call void @__olang_check_failed(ptr @olang_loc_af475931a368800c_57263df876e21e18)
  unreachable
bb99:
  %t456 = getelementptr { i64, ptr }, ptr %l180, i32 0, i32 1
  %t457 = load ptr, ptr %t456, !tbaa !27
  %t458 = load i64, ptr %l183, !tbaa !24
  %t459 = load i64, ptr %l187, !tbaa !24
  %t460 = getelementptr i8, ptr %t457, i64 %t458
  %t461 = sub i64 %t459, %t458
  %t462 = insertvalue { i64, ptr } undef, i64 %t461, 0
  %t463 = insertvalue { i64, ptr } %t462, ptr %t460, 1
  %t465 = load ptr, ptr %l4, !tbaa !29
  %t467 = getelementptr %"compiler/load:Module", ptr %t465, i32 0, i32 0
  %t468 = load { i64, ptr }, ptr %t467, !tbaa !27
  store { i64, ptr } %t468, ptr %l12, !tbaa !27
  store %olang.scope zeroinitializer, ptr %s18
  store i64 0, ptr %l13, !tbaa !24
  store { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d67, i32 0, i32 1) }, ptr %l197, !tbaa !27
  %t473 = load { i64, ptr }, ptr %l197, !tbaa !27
  %t474 = call i64 @std_2fprelude_2farray_2eArray_3cstd_2fprelude_2ftext_3aChar_3e_2eCountOf_3cstd_2fprelude_2ftext_3aChar_3e(ptr %v0, ptr %s18, { i64, ptr } %t463, { i64, ptr } %t473)
  store i64 %t474, ptr %l198
  br label %bb101
bb100:
  call void @__olang_check_failed(ptr @olang_loc_af475931a368800c_57263df876e21e18)
  unreachable
bb101:
  %t475 = load i64, ptr %l198, !tbaa !24
  %t476 = add i64 %t475, 1
  store i64 %t476, ptr %l14, !tbaa !24
  store i64 1, ptr %l15, !tbaa !24
  %t478 = load i64, ptr %l14, !tbaa !24
  %t479 = load i64, ptr %l13, !tbaa !24
  %t482 = icmp sgt i64 %t478, %t479
  br i1 %t482, label %bb102, label %bb103
bb102:
  %t484 = load i64, ptr %l15, !tbaa !24
  %t486 = icmp sgt i64 %t484, 0
  br i1 %t486, label %bb104, label %bb105
bb103:
  store i64 0, ptr %l203, !tbaa !24
  br label %bb107
bb104:
  %t488 = load i64, ptr %l14, !tbaa !24
  %t489 = load i64, ptr %l13, !tbaa !24
  %t492 = sub i64 %t488, %t489
  %t493 = load i64, ptr %l15, !tbaa !24
  %t496 = add i64 %t492, %t493
  %t498 = sub i64 %t496, 1
  %t499 = load i64, ptr %l15, !tbaa !24
  %t502 = sdiv i64 %t498, %t499
  store i64 %t502, ptr %l206, !tbaa !24
  br label %bb106
bb105:
  store i64 0, ptr %l206, !tbaa !24
  br label %bb106
bb106:
  %t504 = load i64, ptr %l206, !tbaa !24
  store i64 %t504, ptr %l203, !tbaa !24
  br label %bb107
bb107:
  %t505 = load i64, ptr %l203, !tbaa !24
  store i64 %t505, ptr %l16, !tbaa !24
  store i64 0, ptr %l17, !tbaa !24
  br label %bb108
bb108:
  store %olang.scope zeroinitializer, ptr %s19
  %t506 = load i64, ptr %l17, !tbaa !24
  %t507 = load i64, ptr %l16, !tbaa !24
  %t510 = icmp slt i64 %t506, %t507
  %t512 = xor i1 %t510, true
  br i1 %t512, label %bb109, label %bb110
bb109:
  call void @__olang_scope_close(ptr %s19)
  br label %bb114
bb110:
  br label %bb111
bb111:
  %t514 = load i64, ptr %l13, !tbaa !24
  %t515 = load i64, ptr %l17, !tbaa !24
  %t516 = load i64, ptr %l15, !tbaa !24
  %t519 = mul i64 %t515, %t516
  %t522 = add i64 %t514, %t519
  store i64 %t522, ptr %l18, !tbaa !24
  %t524 = load { i64, ptr }, ptr %l12, !tbaa !27
  store { i64, ptr } %t524, ptr %l224, !tbaa !27
  %t525 = load { i64, ptr }, ptr %l224, !tbaa !27
  %t526 = extractvalue { i64, ptr } %t525, 1
  %t527 = call ptr @__olang_scope_of(ptr %t526, ptr null)
  %t528 = ptrtoint ptr %t527 to i64
  %t530 = inttoptr i64 %t528 to ptr
  %t531 = load { i64, ptr }, ptr %l224, !tbaa !27
  %t532 = call { i64, ptr } @std_2ffilepath_2eDir(ptr %t530, ptr %s19, { i64, ptr } %t531)
  store { i64, ptr } %t532, ptr %l226
  br label %bb112
bb112:
  %t533 = load { i64, ptr }, ptr %l226, !tbaa !27
  %t534 = extractvalue { i64, ptr } %t533, 1
  %t535 = extractvalue { i64, ptr } %t533, 0
  %t536 = call ptr @__olang_scope_alloc(ptr %s17, i64 %t535)
  call void @olang_textcopy(ptr %t536, ptr %t534, i64 %t535)
  %t537 = insertvalue { i64, ptr } undef, i64 %t535, 0
  %t538 = insertvalue { i64, ptr } %t537, ptr %t536, 1
  %t540 = extractvalue { i64, ptr } %t538, 0
  %t541 = extractvalue { i64, ptr } %t538, 1
  %t542 = mul i64 %t540, 1
  %t543 = call ptr @__olang_scope_alloc(ptr %s17, i64 %t542)
  call void @llvm.memcpy.p0.p0.i64(ptr %t543, ptr %t541, i64 %t542, i1 false)
  %t544 = insertvalue { i64, ptr } undef, i64 %t540, 0
  %t545 = insertvalue { i64, ptr } %t544, ptr %t543, 1
  store { i64, ptr } %t545, ptr %l12, !tbaa !27
  call void @__olang_scope_close(ptr %s19)
  br label %bb113
bb113:
  %t547 = load i64, ptr %l17, !tbaa !24
  %t549 = add i64 %t547, 1
  store i64 %t549, ptr %l17, !tbaa !24
  br label %bb108
bb114:
  call void @__olang_scope_close(ptr %s18)
  %t551 = ptrtoint ptr %s15 to i64
  store i64 %t551, ptr %l231, !tbaa !24
  %t552 = load i1, ptr @olang_2esole_2ecompiler__2fload__2ecompiler__2fload__3aLoader__2eEmbed_2elocal_2e10
  br i1 %t552, label %bb115, label %bb116
bb115:
  %t554 = call ptr @__olang_region_make(ptr %s15)
  %t555 = ptrtoint ptr %t554 to i64
  store i64 %t555, ptr %l231, !tbaa !24
  br label %bb116
bb116:
  %t556 = load { i64, ptr }, ptr %l12, !tbaa !27
  store { i64, ptr } %t556, ptr %l234, !tbaa !27
  %t557 = load { i64, ptr }, ptr %l234, !tbaa !27
  %t558 = extractvalue { i64, ptr } %t557, 1
  %t559 = call ptr @__olang_scope_of(ptr %t558, ptr null)
  %t560 = ptrtoint ptr %t559 to i64
  %t562 = inttoptr i64 %t560 to ptr
  %t563 = load { i64, ptr }, ptr %l234, !tbaa !27
  %t564 = call { i32, { i64, ptr } } @std_2fos_2eRealPath(ptr %t562, ptr %s17, { i64, ptr } %t563)
  %t565 = extractvalue { i32, { i64, ptr } } %t564, 1
  %t566 = extractvalue { i32, { i64, ptr } } %t564, 0
  store i32 %t566, ptr %l237
  %t567 = icmp ne i32 %t566, 0
  br i1 %t567, label %bb118, label %ok.568, !prof !99
ok.568:
  store { i64, ptr } %t565, ptr %l236
  br label %bb117
bb117:
  %t569 = load { i64, ptr }, ptr %l236, !tbaa !27
  store { i64, ptr } %t569, ptr %l233, !tbaa !27
  br label %bb122
bb118:
  %t570 = load i32, ptr %l237, !tbaa !23
  %t571 = ashr i32 %t570, 16
  %t573 = icmp eq i32 %t571, 1
  br i1 %t573, label %bb119, label %bb120
bb119:
  call void @__olang_errpay_pop()
  br label %bb120
bb120:
  br label %bb121
bb121:
  %t575 = load { i64, ptr }, ptr %l12, !tbaa !27
  store { i64, ptr } %t575, ptr %l233, !tbaa !27
  br label %bb122
bb122:
  %t577 = load { i64, ptr }, ptr %l233, !tbaa !27
  %t578 = extractvalue { i64, ptr } %t577, 1
  %t579 = extractvalue { i64, ptr } %t577, 0
  %t580 = load i64, ptr %l231
  %t581 = inttoptr i64 %t580 to ptr
  %t582 = call ptr @__olang_scope_alloc(ptr %t581, i64 %t579)
  call void @olang_textcopy(ptr %t582, ptr %t578, i64 %t579)
  %t583 = insertvalue { i64, ptr } undef, i64 %t579, 0
  %t584 = insertvalue { i64, ptr } %t583, ptr %t582, 1
  store { i64, ptr } %t584, ptr %l241, !tbaa !27
  %t585 = load i1, ptr @olang_2esole_2ecompiler__2fload__2ecompiler__2fload__3aLoader__2eEmbed_2elocal_2e10
  br i1 %t585, label %bb123, label %bb124
bb123:
  %t587 = load i64, ptr %l231
  %t588 = inttoptr i64 %t587 to ptr
  %t589 = load { i64, ptr }, ptr %l241
  %t590 = extractvalue { i64, ptr } %t589, 1
  %t591 = call ptr @__olang_region_or(ptr %t590, ptr null)
  %t592 = icmp ne ptr %t591, null
  %t593 = select i1 %t592, ptr %t591, ptr null
  %t594 = icmp eq ptr %t593, %t588
  call void @__olang_region_settle(ptr %t588, i1 %t594)
  br label %bb124
bb124:
  %t595 = load { i64, ptr }, ptr %l10, !tbaa !27
  store { i64, ptr } %t595, ptr %l243, !tbaa !27
  %t596 = load { i64, ptr }, ptr %l241, !tbaa !27
  store { i64, ptr } %t596, ptr %l10, !tbaa !27
  %t597 = load i1, ptr @olang_2esole_2ecompiler__2fload__2ecompiler__2fload__3aLoader__2eEmbed_2elocal_2e10
  br i1 %t597, label %bb125, label %bb126
bb125:
  %t599 = load { i64, ptr }, ptr %l243
  %t600 = extractvalue { i64, ptr } %t599, 1
  call void @__olang_region_release(ptr %t600)
  store { i64, ptr } zeroinitializer, ptr %l243
  br label %bb126
bb126:
  call void @__olang_scope_close(ptr %s17)
  br label %bb127
bb127:
  %t601 = load ptr, ptr %lp6
  %t602 = load { i64, ptr }, ptr %t601, !tbaa !27
  %t604 = call { i32, { i64, ptr } } @std_2fos_2eRealPath(ptr %v2, ptr %s15, { i64, ptr } %t602)
  %t605 = extractvalue { i32, { i64, ptr } } %t604, 1
  %t606 = extractvalue { i32, { i64, ptr } } %t604, 0
  store i32 %t606, ptr %l248
  %t607 = icmp ne i32 %t606, 0
  br i1 %t607, label %bb129, label %ok.608, !prof !99
ok.608:
  store { i64, ptr } %t605, ptr %l247
  br label %bb128
bb128:
  %t609 = load { i64, ptr }, ptr %l247, !tbaa !27
  store { i64, ptr } %t609, ptr %l245, !tbaa !27
  br label %bb133
bb129:
  %t610 = load i32, ptr %l248, !tbaa !23
  %t611 = ashr i32 %t610, 16
  %t613 = icmp eq i32 %t611, 1
  br i1 %t613, label %bb130, label %bb131
bb130:
  call void @__olang_errpay_pop()
  br label %bb131
bb131:
  br label %bb132
bb132:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d68, i32 0, i32 1) }, ptr %l245, !tbaa !27
  br label %bb133
bb133:
  %t615 = load { i64, ptr }, ptr %l245, !tbaa !27
  store { i64, ptr } %t615, ptr %l19, !tbaa !27
  %t616 = load { i64, ptr }, ptr %l19, !tbaa !27
  %t618 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s15, ptr %s15, { i64, ptr } %t616, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d69, i32 0, i32 1) })
  store i1 %t618, ptr %l252
  br label %bb134
bb134:
  %t619 = load i1, ptr %l252, !tbaa !21
  br i1 %t619, label %bb135, label %bb136
bb135:
  store i1 true, ptr %l253, !tbaa !21
  br label %bb138
bb136:
  %t620 = load { i64, ptr }, ptr %l19, !tbaa !27
  %t621 = load { i64, ptr }, ptr %l10, !tbaa !27
  %t623 = extractvalue { i64, ptr } %t621, 1
  %t624 = extractvalue { i64, ptr } %t621, 0
  %t625 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d70, i32 0, i32 1) }, 1
  %t626 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d70, i32 0, i32 1) }, 0
  %t627 = add i64 %t624, %t626
  %t628 = call ptr @__olang_scope_alloc(ptr %s15, i64 %t627)
  call void @olang_textcopy(ptr %t628, ptr %t623, i64 %t624)
  %t629 = getelementptr i8, ptr %t628, i64 %t624
  call void @olang_textcopy(ptr %t629, ptr %t625, i64 %t626)
  %t630 = insertvalue { i64, ptr } undef, i64 %t627, 0
  %t631 = insertvalue { i64, ptr } %t630, ptr %t628, 1
  %t633 = extractvalue { i64, ptr } %t631, 0
  %t634 = extractvalue { i64, ptr } %t631, 1
  %t635 = mul i64 %t633, 1
  %t636 = call ptr @__olang_scope_alloc(ptr %s15, i64 %t635)
  call void @llvm.memcpy.p0.p0.i64(ptr %t636, ptr %t634, i64 %t635, i1 false)
  %t637 = insertvalue { i64, ptr } undef, i64 %t633, 0
  %t638 = insertvalue { i64, ptr } %t637, ptr %t636, 1
  %t641 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %s15, ptr %s15, { i64, ptr } %t620, { i64, ptr } %t638)
  store i1 %t641, ptr %l258
  br label %bb137
bb137:
  %t642 = load i1, ptr %l258, !tbaa !21
  %t643 = xor i1 %t642, true
  store i1 %t643, ptr %l253, !tbaa !21
  br label %bb138
bb138:
  %t645 = load i1, ptr %l253, !tbaa !21
  br i1 %t645, label %bb139, label %bb140
bb139:
  %t646 = load ptr, ptr %lp3
  %t648 = insertvalue { i64, ptr } undef, i64 0, 0
  %t649 = insertvalue { i64, ptr } %t648, ptr %t646, 1
  %t650 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t651 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d71, i32 0, i32 1) }, 1
  %t652 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d71, i32 0, i32 1) }, 0
  %t654 = extractvalue { i64, ptr } %t650, 1
  %t655 = extractvalue { i64, ptr } %t650, 0
  %t656 = add i64 %t652, %t655
  %t657 = extractvalue { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d72, i32 0, i32 1) }, 1
  %t658 = extractvalue { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d72, i32 0, i32 1) }, 0
  %t659 = add i64 %t656, %t658
  %t660 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t659)
  call void @olang_textcopy(ptr %t660, ptr %t651, i64 %t652)
  %t661 = getelementptr i8, ptr %t660, i64 %t652
  call void @olang_textcopy(ptr %t661, ptr %t654, i64 %t655)
  %t662 = getelementptr i8, ptr %t661, i64 %t655
  call void @olang_textcopy(ptr %t662, ptr %t657, i64 %t658)
  %t663 = insertvalue { i64, ptr } undef, i64 %t659, 0
  %t664 = insertvalue { i64, ptr } %t663, ptr %t660, 1
  %t666 = insertvalue { { i64, ptr }, { i64, ptr } } undef, { i64, ptr } %t649, 0
  %t668 = insertvalue { { i64, ptr }, { i64, ptr } } %t666, { i64, ptr } %t664, 1
  call void @__olang_scope_close(ptr %s15)
  call void @__olang_scope_close(ptr %s0)
  store { { i64, ptr }, { i64, ptr } } %t668, ptr %rv
  br label %ret
bb140:
  br label %bb141
bb141:
  call void @__olang_scope_close(ptr %s15)
  br label %bb142
bb142:
  %t670 = load ptr, ptr %l0, !tbaa !29
  %t672 = getelementptr %"compiler/load:Loader", ptr %t670, i32 0, i32 17
  %t673 = load ptr, ptr %lp6
  %t674 = load { i64, ptr }, ptr %t673, !tbaa !27
  %t677 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_H31dec199381f6e2bb0c82058ea887922(ptr %v0, ptr %v2, ptr %t672, { i64, ptr } %t674)
  store i1 %t677, ptr %l268
  br label %bb143
bb143:
  %t678 = load i1, ptr %l268, !tbaa !21
  %t679 = xor i1 %t678, true
  br i1 %t679, label %bb144, label %bb145
bb144:
  store %olang.scope zeroinitializer, ptr %s26
  %t681 = load ptr, ptr %lp6
  %t682 = load { i64, ptr }, ptr %t681, !tbaa !27
  %t684 = call i1 @std_2fos_2eExists(ptr %v2, { i64, ptr } %t682)
  store i1 %t684, ptr %l271
  br label %bb146
bb145:
  br label %bb169
bb146:
  %t685 = load i1, ptr %l271, !tbaa !21
  %t686 = xor i1 %t685, true
  br i1 %t686, label %bb147, label %bb148
bb147:
  %t688 = load ptr, ptr %lp3
  %t690 = insertvalue { i64, ptr } undef, i64 0, 0
  %t691 = insertvalue { i64, ptr } %t690, ptr %t688, 1
  %t692 = load ptr, ptr %lp6
  %t693 = load { i64, ptr }, ptr %t692, !tbaa !27
  %t694 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d73, i32 0, i32 1) }, 1
  %t695 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d73, i32 0, i32 1) }, 0
  %t697 = extractvalue { i64, ptr } %t693, 1
  %t698 = extractvalue { i64, ptr } %t693, 0
  %t699 = add i64 %t695, %t698
  %t700 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t699)
  call void @olang_textcopy(ptr %t700, ptr %t694, i64 %t695)
  %t701 = getelementptr i8, ptr %t700, i64 %t695
  call void @olang_textcopy(ptr %t701, ptr %t697, i64 %t698)
  %t702 = insertvalue { i64, ptr } undef, i64 %t699, 0
  %t703 = insertvalue { i64, ptr } %t702, ptr %t700, 1
  %t705 = insertvalue { { i64, ptr }, { i64, ptr } } undef, { i64, ptr } %t691, 0
  %t707 = insertvalue { { i64, ptr }, { i64, ptr } } %t705, { i64, ptr } %t703, 1
  call void @__olang_scope_close(ptr %s26)
  call void @__olang_scope_close(ptr %s0)
  store { { i64, ptr }, { i64, ptr } } %t707, ptr %rv
  br label %ret
bb148:
  br label %bb149
bb149:
  %t709 = load ptr, ptr %lp6
  %t710 = load { i64, ptr }, ptr %t709, !tbaa !27
  %t712 = call i1 @std_2fos_2eIsDir(ptr %v2, { i64, ptr } %t710)
  store i1 %t712, ptr %l279
  br label %bb150
bb150:
  %t713 = load i1, ptr %l279, !tbaa !21
  br i1 %t713, label %bb151, label %bb152
bb151:
  %t714 = load ptr, ptr %lp3
  %t716 = insertvalue { i64, ptr } undef, i64 0, 0
  %t717 = insertvalue { i64, ptr } %t716, ptr %t714, 1
  %t718 = load ptr, ptr %lp6
  %t719 = load { i64, ptr }, ptr %t718, !tbaa !27
  %t721 = extractvalue { i64, ptr } %t719, 1
  %t722 = extractvalue { i64, ptr } %t719, 0
  %t723 = extractvalue { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d74, i32 0, i32 1) }, 1
  %t724 = extractvalue { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d74, i32 0, i32 1) }, 0
  %t725 = add i64 %t722, %t724
  %t726 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t725)
  call void @olang_textcopy(ptr %t726, ptr %t721, i64 %t722)
  %t727 = getelementptr i8, ptr %t726, i64 %t722
  call void @olang_textcopy(ptr %t727, ptr %t723, i64 %t724)
  %t728 = insertvalue { i64, ptr } undef, i64 %t725, 0
  %t729 = insertvalue { i64, ptr } %t728, ptr %t726, 1
  %t731 = insertvalue { { i64, ptr }, { i64, ptr } } undef, { i64, ptr } %t717, 0
  %t733 = insertvalue { { i64, ptr }, { i64, ptr } } %t731, { i64, ptr } %t729, 1
  call void @__olang_scope_close(ptr %s26)
  call void @__olang_scope_close(ptr %s0)
  store { { i64, ptr }, { i64, ptr } } %t733, ptr %rv
  br label %ret
bb152:
  br label %bb153
bb153:
  %t735 = load ptr, ptr %lp6
  %t736 = load { i64, ptr }, ptr %t735, !tbaa !27
  %t738 = call { i32, { i64, ptr } } @std_2fos_2eReadFile(ptr %v2, ptr %s26, { i64, ptr } %t736)
  %t739 = extractvalue { i32, { i64, ptr } } %t738, 1
  %t740 = extractvalue { i32, { i64, ptr } } %t738, 0
  store i32 %t740, ptr %l288
  %t741 = icmp ne i32 %t740, 0
  br i1 %t741, label %bb155, label %ok.742, !prof !99
ok.742:
  store { i64, ptr } %t739, ptr %l287
  br label %bb154
bb154:
  %t743 = load { i64, ptr }, ptr %l287, !tbaa !27
  store { i64, ptr } %t743, ptr %l285, !tbaa !27
  br label %bb159
bb155:
  %t744 = load i32, ptr %l288, !tbaa !23
  %t745 = ashr i32 %t744, 16
  %t747 = icmp eq i32 %t745, 1
  store i1 %t747, ptr %l290, !tbaa !21
  %t748 = load i32, ptr %l288, !tbaa !23
  %t749 = ashr i32 %t748, 16
  %t751 = icmp eq i32 %t749, 1
  br i1 %t751, label %bb156, label %bb157
bb156:
  call void @__olang_errpay_pop()
  br label %bb157
bb157:
  br label %bb158
bb158:
  %t753 = load ptr, ptr %lp3
  %t755 = insertvalue { i64, ptr } undef, i64 0, 0
  %t756 = insertvalue { i64, ptr } %t755, ptr %t753, 1
  %t757 = load ptr, ptr %lp6
  %t758 = load { i64, ptr }, ptr %t757, !tbaa !27
  %t760 = extractvalue { i64, ptr } %t758, 1
  %t761 = extractvalue { i64, ptr } %t758, 0
  %t762 = extractvalue { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d75, i32 0, i32 1) }, 1
  %t763 = extractvalue { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d75, i32 0, i32 1) }, 0
  %t764 = add i64 %t761, %t763
  %t765 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t764)
  call void @olang_textcopy(ptr %t765, ptr %t760, i64 %t761)
  %t766 = getelementptr i8, ptr %t765, i64 %t761
  call void @olang_textcopy(ptr %t766, ptr %t762, i64 %t763)
  %t767 = insertvalue { i64, ptr } undef, i64 %t764, 0
  %t768 = insertvalue { i64, ptr } %t767, ptr %t765, 1
  %t770 = insertvalue { { i64, ptr }, { i64, ptr } } undef, { i64, ptr } %t756, 0
  %t772 = insertvalue { { i64, ptr }, { i64, ptr } } %t770, { i64, ptr } %t768, 1
  call void @__olang_scope_close(ptr %s26)
  call void @__olang_scope_close(ptr %s0)
  store { { i64, ptr }, { i64, ptr } } %t772, ptr %rv
  br label %ret
bb159:
  %t774 = load { i64, ptr }, ptr %l285, !tbaa !27
  store { i64, ptr } %t774, ptr %l20, !tbaa !27
  %t775 = load { i64, ptr }, ptr %l20, !tbaa !27
  %t777 = extractvalue { i64, ptr } %t775, 0
  store i64 %t777, ptr %l299, !tbaa !24
  %t778 = load i64, ptr %l299, !tbaa !24
  %t779 = icmp sge i64 %t778, 0
  br i1 %t779, label %bb160, label %bb161
bb160:
  %t781 = load i64, ptr %l299, !tbaa !24
  %t782 = mul i64 %t781, 1
  %t783 = call ptr @__olang_scope_alloc_zeroed(ptr %v0, i64 %t782)
  %t784 = insertvalue { i64, ptr } undef, i64 %t781, 0
  %t785 = insertvalue { i64, ptr } %t784, ptr %t783, 1
  %t786 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 16, i64 8)
  store ptr %t786, ptr %lp21
  %t788 = load ptr, ptr %lp21
  store { i64, ptr } %t785, ptr %t788, !tbaa !27
  %t789 = load { i64, ptr }, ptr %l20, !tbaa !27
  store { i64, ptr } %t789, ptr %l22, !tbaa !27
  store i64 0, ptr %l23, !tbaa !24
  %t791 = load { i64, ptr }, ptr %l22, !tbaa !27
  %t793 = extractvalue { i64, ptr } %t791, 0
  store i64 %t793, ptr %l24, !tbaa !24
  br label %bb162
bb161:
  call void @__olang_check_failed(ptr @olang_loc_5aefafbfcb5eb6b7_7e4be8b78a5947cb)
  unreachable
bb162:
  %t795 = load i64, ptr %l23, !tbaa !24
  %t796 = load i64, ptr %l24, !tbaa !24
  %t799 = icmp slt i64 %t795, %t796
  %t801 = xor i1 %t799, true
  br i1 %t801, label %bb163, label %bb164
bb163:
  br label %bb167
bb164:
  br label %bb165
bb165:
  %t803 = load i64, ptr %l23, !tbaa !24
  %t805 = load { i64, ptr }, ptr %l22, !tbaa !27
  store { i64, ptr } %t805, ptr %l310, !tbaa !27
  %t806 = load i64, ptr %l23, !tbaa !24
  %t808 = getelementptr { i64, ptr }, ptr %l310, i32 0, i32 1
  %t809 = load ptr, ptr %t808, !tbaa !27
  %t810 = getelementptr i8, ptr %t809, i64 %t806
  %t811 = load i8, ptr %t810, !tbaa !32
  %t817 = load ptr, ptr %lp21
  %t819 = getelementptr { i64, ptr }, ptr %t817, i32 0, i32 1
  %t820 = load ptr, ptr %t819, !tbaa !27
  %t821 = getelementptr i8, ptr %t820, i64 %t803
  store i8 %t811, ptr %t821, !tbaa !32
  br label %bb166
bb166:
  %t822 = load i64, ptr %l23, !tbaa !24
  %t824 = add i64 %t822, 1
  store i64 %t824, ptr %l23, !tbaa !24
  br label %bb162
bb167:
  %t826 = load ptr, ptr %l0, !tbaa !29
  %t828 = getelementptr %"compiler/load:Loader", ptr %t826, i32 0, i32 17
  %t829 = load ptr, ptr %lp6
  %t830 = load { i64, ptr }, ptr %t829, !tbaa !27
  %t831 = load ptr, ptr %lp21
  %t832 = load { i64, ptr }, ptr %t831, !tbaa !27
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_Ha0f924a08ec45a4a582ec1782d69c4be(ptr %v0, ptr %v2, ptr %v0, ptr %t828, { i64, ptr } %t830, { i64, ptr } %t832)
  br label %bb168
bb168:
  call void @__olang_scope_close(ptr %s26)
  br label %bb169
bb169:
  store i1 false, ptr %l27, !tbaa !21
  %t836 = load ptr, ptr %l4, !tbaa !29
  %t838 = getelementptr %"compiler/load:Module", ptr %t836, i32 0, i32 29
  store ptr %t838, ptr %l28, !tbaa !29
  store i64 0, ptr %l29, !tbaa !24
  br label %bb170
bb170:
  %t840 = load i64, ptr %l29, !tbaa !24
  store i64 %t840, ptr %l324, !tbaa !24
  %t841 = load ptr, ptr %l28, !tbaa !29
  %t843 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %v0, ptr %t841)
  store i64 %t843, ptr %l326
  br label %bb171
bb171:
  %t844 = load i64, ptr %l324, !tbaa !24
  %t845 = load i64, ptr %l326, !tbaa !24
  %t846 = icmp slt i64 %t844, %t845
  %t848 = xor i1 %t846, true
  br i1 %t848, label %bb172, label %bb173
bb172:
  br label %bb181
bb173:
  br label %bb174
bb174:
  %t850 = load ptr, ptr %l28, !tbaa !29
  %t851 = load i64, ptr %l29, !tbaa !24
  %t854 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %v0, ptr %v0, ptr %t850, i64 %t851)
  store { i64, ptr } %t854, ptr %l331
  br label %bb175
bb175:
  %t855 = load { i64, ptr }, ptr %l331, !tbaa !27
  %t857 = load ptr, ptr %lp6
  %t858 = load { i64, ptr }, ptr %t857, !tbaa !27
  %t861 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %v2, { i64, ptr } %t855, { i64, ptr } %t858)
  store i1 %t861, ptr %l334
  br label %bb176
bb176:
  %t862 = load i1, ptr %l334, !tbaa !21
  br i1 %t862, label %bb177, label %bb178
bb177:
  store i1 true, ptr %l27, !tbaa !21
  br label %bb179
bb178:
  br label %bb179
bb179:
  br label %bb180
bb180:
  %t863 = load i64, ptr %l29, !tbaa !24
  %t865 = add i64 %t863, 1
  store i64 %t865, ptr %l29, !tbaa !24
  br label %bb170
bb181:
  %t867 = load i1, ptr %l27, !tbaa !21
  %t869 = xor i1 %t867, true
  br i1 %t869, label %bb182, label %bb183
bb182:
  %t871 = load ptr, ptr %l4, !tbaa !29
  %t873 = getelementptr %"compiler/load:Module", ptr %t871, i32 0, i32 29
  %t874 = load ptr, ptr %lp6
  %t875 = load { i64, ptr }, ptr %t874, !tbaa !27
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v0, ptr %v2, ptr %t873, { i64, ptr } %t875)
  br label %bb184
bb183:
  br label %bb185
bb184:
  br label %bb185
bb185:
  %t878 = load ptr, ptr %l0, !tbaa !29
  %t880 = getelementptr %"compiler/load:Loader", ptr %t878, i32 0, i32 17
  %t881 = load ptr, ptr %lp6
  %t882 = load { i64, ptr }, ptr %t881, !tbaa !27
  %t885 = call { i32, { i64, ptr } } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_H412951a1c1c3c34f4f6a5a14e25e5986(ptr %v0, ptr %v2, ptr %v2, ptr %t880, { i64, ptr } %t882)
  %t886 = extractvalue { i32, { i64, ptr } } %t885, 1
  %t887 = extractvalue { i32, { i64, ptr } } %t885, 0
  store i32 %t887, ptr %l347
  %t888 = icmp ne i32 %t887, 0
  br i1 %t888, label %bb187, label %ok.889, !prof !99
ok.889:
  store { i64, ptr } %t886, ptr %l346
  br label %bb186
bb186:
  %t890 = load { i64, ptr }, ptr %l346, !tbaa !27
  store { i64, ptr } %t890, ptr %l342, !tbaa !27
  br label %bb189
bb187:
  br label %bb188
bb188:
  %t891 = load ptr, ptr %lp3
  %t893 = insertvalue { i64, ptr } undef, i64 0, 0
  %t894 = insertvalue { i64, ptr } %t893, ptr %t891, 1
  store { i64, ptr } %t894, ptr %l342, !tbaa !27
  br label %bb189
bb189:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d76, i32 0, i32 1) }, ptr %l350, !tbaa !27
  %t896 = load { i64, ptr }, ptr %l350, !tbaa !27
  %t897 = load { i64, ptr }, ptr %l342, !tbaa !27
  %t898 = insertvalue { { i64, ptr }, { i64, ptr } } undef, { i64, ptr } %t897, 0
  %t900 = insertvalue { { i64, ptr }, { i64, ptr } } %t898, { i64, ptr } %t896, 1
  store { { i64, ptr }, { i64, ptr } } %t900, ptr %l352
  %t901 = getelementptr { { i64, ptr }, { i64, ptr } }, ptr %l352, i32 0, i32 1
  %t902 = load { i64, ptr }, ptr %t901, !tbaa !27
  store { i64, ptr } %t902, ptr %l353, !tbaa !27
  %t903 = load { i64, ptr }, ptr %l353, !tbaa !27
  %t904 = extractvalue { i64, ptr } %t903, 0
  store i64 %t904, ptr %l354, !tbaa !24
  %t905 = load i64, ptr %l354, !tbaa !24
  %t906 = mul i64 %t905, 1
  %t907 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t906)
  %t908 = insertvalue { i64, ptr } undef, i64 %t905, 0
  %t909 = insertvalue { i64, ptr } %t908, ptr %t907, 1
  store { i64, ptr } %t909, ptr %l355, !tbaa !27
  %t910 = getelementptr { i64, ptr }, ptr %l355, i32 0, i32 1
  %t911 = load ptr, ptr %t910, !tbaa !27
  %t912 = getelementptr { i64, ptr }, ptr %l353, i32 0, i32 1
  %t913 = load ptr, ptr %t912, !tbaa !27
  %t914 = load i64, ptr %l354, !tbaa !24
  %t915 = mul i64 %t914, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t911, ptr %t913, i64 %t915, i1 false)
  %t916 = load { i64, ptr }, ptr %l355, !tbaa !27
  %t917 = getelementptr { { i64, ptr }, { i64, ptr } }, ptr %l352, i32 0, i32 1
  store { i64, ptr } %t916, ptr %t917, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  %t918 = load { { i64, ptr }, { i64, ptr } }, ptr %l352
  store { { i64, ptr }, { i64, ptr } } %t918, ptr %rv
  br label %ret
ret:
  %rr = load { { i64, ptr }, { i64, ptr } }, ptr %rv
  ret { { i64, ptr }, { i64, ptr } } %rr
}

define dso_local { i64, ptr } @compiler_2fload_2ecompiler_2fload_3aLoader_2eEmbedded(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1) #0 {
entry:
  %l2 = alloca { i64, ptr }
  %l6 = alloca { i64, ptr }
  %l7 = alloca i32
  %rv = alloca { i64, ptr }
  br label %start
start:
  br label %bb0
bb0:
  %t3 = getelementptr %"compiler/load:Loader", ptr %a0, i32 0, i32 17
  %t7 = call { i32, { i64, ptr } } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_H412951a1c1c3c34f4f6a5a14e25e5986(ptr %v0, ptr %v1, ptr %v2, ptr %t3, { i64, ptr } %a1)
  %t8 = extractvalue { i32, { i64, ptr } } %t7, 1
  %t9 = extractvalue { i32, { i64, ptr } } %t7, 0
  store i32 %t9, ptr %l7
  %t10 = icmp ne i32 %t9, 0
  br i1 %t10, label %bb2, label %ok.11, !prof !99
ok.11:
  store { i64, ptr } %t8, ptr %l6
  br label %bb1
bb1:
  %t12 = load { i64, ptr }, ptr %l6, !tbaa !27
  store { i64, ptr } %t12, ptr %l2, !tbaa !27
  br label %bb6
bb2:
  br label %bb3
bb3:
  %t13 = icmp sge i64 0, 0
  br i1 %t13, label %bb4, label %bb5
bb4:
  %t15 = mul i64 0, 1
  %t16 = insertvalue { i64, ptr } undef, i64 0, 0
  %t17 = insertvalue { i64, ptr } %t16, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  store { i64, ptr } %t17, ptr %l2, !tbaa !27
  br label %bb6
bb5:
  call void @__olang_check_failed(ptr @olang_loc_6f6a8c9f8e5b8646_ccdd31ccd2674fa)
  unreachable
bb6:
  %t19 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t19, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local { i64, ptr } @compiler_2fload_2ecompiler_2fload_3aLoader_2eGraph(ptr %v0, ptr %v1, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca { i64, ptr }
  %l2 = alloca i64
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca %"std/prelude/text:StringBuilder"
  %l9 = alloca { i64, ptr }
  %l10 = alloca i64
  %l11 = alloca i64
  %l13 = alloca ptr
  %l14 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l15 = alloca ptr
  %l16 = alloca i64
  %l17 = alloca %"compiler/load:Import"
  %l18 = alloca ptr
  %l19 = alloca i64
  %l23 = alloca i64
  %l32 = alloca i64
  %l35 = alloca i64
  %l60 = alloca %"std/prelude/text:StringBuilder"
  %l68 = alloca { i64, ptr }
  %l74 = alloca ptr
  %l80 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l83 = alloca i64
  %l85 = alloca i64
  %l90 = alloca %"compiler/load:Import"
  %l93 = alloca ptr
  %l94 = alloca i64
  %l96 = alloca { i64, ptr }
  %l100 = alloca ptr
  %l110 = alloca i64
  %l112 = alloca i64
  %l117 = alloca { i64, ptr }
  %l125 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %s5 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  %t83 = alloca { ptr, ptr }, align 8
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/load:Loader", ptr %t1, i32 0, i32 10
  %t5 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_Hb2d19b6b5ea5ab5a85c5720545345bd4(ptr %v0, ptr %t3)
  store i64 %t5, ptr %l23
  br label %bb1
bb1:
  %t6 = load i64, ptr %l23, !tbaa !24
  %t7 = icmp sge i64 %t6, 0
  br i1 %t7, label %bb2, label %bb3
bb2:
  %t9 = load i64, ptr %l23, !tbaa !24
  %t10 = icmp sle i64 %t9, 1152921504606846975
  br i1 %t10, label %bb4, label %bb5
bb3:
  call void @__olang_check_failed(ptr @olang_loc_53eff658f30813a6_f347cd1231cef772)
  unreachable
bb4:
  %t12 = load i64, ptr %l23, !tbaa !24
  %t13 = mul i64 %t12, 8
  %t14 = call ptr @__olang_scope_alloc_zeroed(ptr %s0, i64 %t13)
  %t15 = insertvalue { i64, ptr } undef, i64 %t12, 0
  %t16 = insertvalue { i64, ptr } %t15, ptr %t14, 1
  store { i64, ptr } %t16, ptr %l1, !tbaa !27
  store i64 0, ptr %l2, !tbaa !24
  %t18 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t20 = extractvalue { i64, ptr } %t18, 0
  store i64 %t20, ptr %l3, !tbaa !24
  store i64 1, ptr %l4, !tbaa !24
  %t22 = load i64, ptr %l3, !tbaa !24
  %t23 = load i64, ptr %l2, !tbaa !24
  %t26 = icmp sgt i64 %t22, %t23
  br i1 %t26, label %bb6, label %bb7
bb5:
  call void @__olang_check_failed(ptr @olang_loc_53eff658f30813a6_f347cd1231cef772)
  unreachable
bb6:
  %t28 = load i64, ptr %l4, !tbaa !24
  %t30 = icmp sgt i64 %t28, 0
  br i1 %t30, label %bb8, label %bb9
bb7:
  store i64 0, ptr %l32, !tbaa !24
  br label %bb11
bb8:
  %t32 = load i64, ptr %l3, !tbaa !24
  %t33 = load i64, ptr %l2, !tbaa !24
  %t36 = sub i64 %t32, %t33
  %t37 = load i64, ptr %l4, !tbaa !24
  %t40 = add i64 %t36, %t37
  %t42 = sub i64 %t40, 1
  %t43 = load i64, ptr %l4, !tbaa !24
  %t46 = sdiv i64 %t42, %t43
  store i64 %t46, ptr %l35, !tbaa !24
  br label %bb10
bb9:
  store i64 0, ptr %l35, !tbaa !24
  br label %bb10
bb10:
  %t48 = load i64, ptr %l35, !tbaa !24
  store i64 %t48, ptr %l32, !tbaa !24
  br label %bb11
bb11:
  %t49 = load i64, ptr %l32, !tbaa !24
  store i64 %t49, ptr %l5, !tbaa !24
  store i64 0, ptr %l6, !tbaa !24
  br label %bb12
bb12:
  %t50 = load i64, ptr %l6, !tbaa !24
  %t51 = load i64, ptr %l5, !tbaa !24
  %t54 = icmp slt i64 %t50, %t51
  %t56 = xor i1 %t54, true
  br i1 %t56, label %bb13, label %bb14
bb13:
  br label %bb17
bb14:
  br label %bb15
bb15:
  %t58 = load i64, ptr %l2, !tbaa !24
  %t59 = load i64, ptr %l6, !tbaa !24
  %t60 = load i64, ptr %l4, !tbaa !24
  %t63 = mul i64 %t59, %t60
  %t66 = add i64 %t58, %t63
  store i64 %t66, ptr %l7, !tbaa !24
  %t68 = load i64, ptr %l7, !tbaa !24
  %t69 = load i64, ptr %l7, !tbaa !24
  %t72 = getelementptr { i64, ptr }, ptr %l1, i32 0, i32 1
  %t73 = load ptr, ptr %t72, !tbaa !27
  %t74 = getelementptr i64, ptr %t73, i64 %t68
  store i64 %t69, ptr %t74, !tbaa !34
  br label %bb16
bb16:
  %t75 = load i64, ptr %l6, !tbaa !24
  %t77 = add i64 %t75, 1
  store i64 %t77, ptr %l6, !tbaa !24
  br label %bb12
bb17:
  %t79 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t80 = load ptr, ptr %l0, !tbaa !29
  %t81 = getelementptr { ptr, ptr }, ptr null, i32 1
  %t82 = ptrtoint ptr %t81 to i64
  %t84 = getelementptr { ptr, ptr }, ptr %t83, i32 0, i32 0
  store ptr %t80, ptr %t84, !tbaa !28
  call void @__olang_scope_escape(ptr %v0)
  %t86 = getelementptr { ptr, ptr }, ptr %t83, i32 0, i32 1
  store ptr %v0, ptr %t86, !tbaa !28
  %t87 = insertvalue { ptr, ptr } undef, ptr @olang_lambda_77, 0
  %t88 = insertvalue { ptr, ptr } %t87, ptr %t83, 1
  %t91 = extractvalue { ptr, ptr } %t88, 0
  %t92 = extractvalue { ptr, ptr } %t88, 1
  call void @std_2fprelude_2farray_2eArray_3cI64_3e_2eSort_3cI64_2c_20_3f_3e(ptr %s0, ptr %s0, { i64, ptr } %t79, ptr %t91, ptr %t92)
  br label %bb18
bb18:
  %t93 = call %"std/prelude/text:StringBuilder" @std_2fprelude_2ftext_3aStringBuilder_2ector(ptr %s0)
  store %"std/prelude/text:StringBuilder" %t93, ptr %l60
  br label %bb19
bb19:
  %t94 = load %"std/prelude/text:StringBuilder", ptr %l60
  store %"std/prelude/text:StringBuilder" %t94, ptr %l8
  %t95 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t95, ptr %l9, !tbaa !27
  store i64 0, ptr %l10, !tbaa !24
  %t97 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t99 = extractvalue { i64, ptr } %t97, 0
  store i64 %t99, ptr %l11, !tbaa !24
  br label %bb20
bb20:
  store %olang.scope zeroinitializer, ptr %s5
  %t101 = load i64, ptr %l10, !tbaa !24
  %t102 = load i64, ptr %l11, !tbaa !24
  %t105 = icmp slt i64 %t101, %t102
  %t107 = xor i1 %t105, true
  br i1 %t107, label %bb21, label %bb22
bb21:
  call void @__olang_scope_close(ptr %s5)
  br label %bb53
bb22:
  br label %bb23
bb23:
  %t109 = load { i64, ptr }, ptr %l9, !tbaa !27
  store { i64, ptr } %t109, ptr %l68, !tbaa !27
  %t110 = load i64, ptr %l10, !tbaa !24
  %t112 = getelementptr { i64, ptr }, ptr %l68, i32 0, i32 1
  %t113 = load ptr, ptr %t112, !tbaa !27
  %t114 = getelementptr i64, ptr %t113, i64 %t110
  %t115 = load i64, ptr %t114, !tbaa !34
  %t117 = load ptr, ptr %l0, !tbaa !29
  %t119 = getelementptr %"compiler/load:Loader", ptr %t117, i32 0, i32 10
  %t123 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H7bcf2aeb09afa796f4333e6ec8c3f63f(ptr %v0, ptr %v0, ptr %t119, i64 %t115)
  store ptr %t123, ptr %l74
  br label %bb24
bb24:
  %t124 = load ptr, ptr %l74, !tbaa !29
  store ptr %t124, ptr %l13, !tbaa !29
  %t125 = load ptr, ptr %l13, !tbaa !29
  %t127 = getelementptr %"compiler/load:Module", ptr %t125, i32 0, i32 2
  %t128 = load { i64, ptr }, ptr %t127, !tbaa !27
  %t129 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d78, i32 0, i32 1) }, 1
  %t130 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d78, i32 0, i32 1) }, 0
  %t132 = extractvalue { i64, ptr } %t128, 1
  %t133 = extractvalue { i64, ptr } %t128, 0
  %t134 = add i64 %t130, %t133
  %t135 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d79, i32 0, i32 1) }, 1
  %t136 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d79, i32 0, i32 1) }, 0
  %t137 = add i64 %t134, %t136
  %t138 = call ptr @__olang_scope_alloc(ptr %s5, i64 %t137)
  call void @olang_textcopy(ptr %t138, ptr %t129, i64 %t130)
  %t139 = getelementptr i8, ptr %t138, i64 %t130
  call void @olang_textcopy(ptr %t139, ptr %t132, i64 %t133)
  %t140 = getelementptr i8, ptr %t139, i64 %t133
  call void @olang_textcopy(ptr %t140, ptr %t135, i64 %t136)
  %t141 = insertvalue { i64, ptr } undef, i64 %t137, 0
  %t142 = insertvalue { i64, ptr } %t141, ptr %t138, 1
  %t144 = extractvalue { i64, ptr } %t142, 0
  %t145 = extractvalue { i64, ptr } %t142, 1
  %t146 = mul i64 %t144, 1
  %t147 = call ptr @__olang_scope_alloc(ptr %s5, i64 %t146)
  call void @llvm.memcpy.p0.p0.i64(ptr %t147, ptr %t145, i64 %t146, i1 false)
  %t148 = insertvalue { i64, ptr } undef, i64 %t144, 0
  %t149 = insertvalue { i64, ptr } %t148, ptr %t147, 1
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s5, ptr %l8, { i64, ptr } %t149)
  br label %bb25
bb25:
  %t152 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2ector(ptr %s5, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t152, ptr %l80
  br label %bb26
bb26:
  %t153 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l80
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t153, ptr %l14
  %t154 = load ptr, ptr %l13, !tbaa !29
  %t156 = getelementptr %"compiler/load:Module", ptr %t154, i32 0, i32 11
  store ptr %t156, ptr %l15, !tbaa !29
  store i64 0, ptr %l16, !tbaa !24
  br label %bb27
bb27:
  %t158 = load i64, ptr %l16, !tbaa !24
  store i64 %t158, ptr %l83, !tbaa !24
  %t159 = load ptr, ptr %l15, !tbaa !29
  %t161 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fload_3aImport_3e_2eLen_3ccompiler_2fload_3aImport_3e(ptr %v0, ptr %t159)
  store i64 %t161, ptr %l85
  br label %bb28
bb28:
  %t162 = load i64, ptr %l83, !tbaa !24
  %t163 = load i64, ptr %l85, !tbaa !24
  %t164 = icmp slt i64 %t162, %t163
  %t166 = xor i1 %t164, true
  br i1 %t166, label %bb29, label %bb30
bb29:
  br label %bb41
bb30:
  br label %bb31
bb31:
  %t168 = load ptr, ptr %l15, !tbaa !29
  %t169 = load i64, ptr %l16, !tbaa !24
  %t172 = call %"compiler/load:Import" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fload_3aImport_3e_2eAt_3ccompiler_2fload_3aImport_3e(ptr %v0, ptr %v0, ptr %t168, i64 %t169)
  store %"compiler/load:Import" %t172, ptr %l90
  br label %bb32
bb32:
  %t173 = load %"compiler/load:Import", ptr %l90
  store %"compiler/load:Import" %t173, ptr %l17
  %t174 = getelementptr %"compiler/load:Import", ptr %l17, i32 0, i32 5
  %t175 = load i64, ptr %t174, !tbaa !24
  %t177 = icmp sge i64 %t175, 0
  br i1 %t177, label %bb33, label %bb34
bb33:
  store ptr %l14, ptr %l93, !tbaa !29
  %t179 = ptrtoint ptr %s5 to i64
  store i64 %t179, ptr %l94, !tbaa !24
  %t180 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1
  br i1 %t180, label %bb35, label %bb36
bb34:
  br label %bb39
bb35:
  %t182 = call ptr @__olang_region_make(ptr %s5)
  %t183 = ptrtoint ptr %t182 to i64
  store i64 %t183, ptr %l94, !tbaa !24
  br label %bb36
bb36:
  %t184 = getelementptr %"compiler/load:Import", ptr %l17, i32 0, i32 2
  %t185 = load { i64, ptr }, ptr %t184, !tbaa !27
  store { i64, ptr } %t185, ptr %l96, !tbaa !27
  %t186 = load ptr, ptr %l0, !tbaa !29
  %t188 = getelementptr %"compiler/load:Loader", ptr %t186, i32 0, i32 10
  %t189 = getelementptr %"compiler/load:Import", ptr %l17, i32 0, i32 5
  %t190 = load i64, ptr %t189, !tbaa !24
  %t193 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H7bcf2aeb09afa796f4333e6ec8c3f63f(ptr %v0, ptr %v0, ptr %t188, i64 %t190)
  store ptr %t193, ptr %l100
  br label %bb37
bb37:
  %t194 = load ptr, ptr %l100, !tbaa !29
  %t196 = getelementptr %"compiler/load:Module", ptr %t194, i32 0, i32 2
  %t197 = load { i64, ptr }, ptr %t196, !tbaa !27
  %t198 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d80, i32 0, i32 1) }, 1
  %t199 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d80, i32 0, i32 1) }, 0
  %t200 = load { i64, ptr }, ptr %l96, !tbaa !27
  %t201 = extractvalue { i64, ptr } %t200, 1
  %t202 = extractvalue { i64, ptr } %t200, 0
  %t203 = add i64 %t199, %t202
  %t204 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d81, i32 0, i32 1) }, 1
  %t205 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d81, i32 0, i32 1) }, 0
  %t206 = add i64 %t203, %t205
  %t208 = extractvalue { i64, ptr } %t197, 1
  %t209 = extractvalue { i64, ptr } %t197, 0
  %t210 = add i64 %t206, %t209
  %t211 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d82, i32 0, i32 1) }, 1
  %t212 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d82, i32 0, i32 1) }, 0
  %t213 = add i64 %t210, %t212
  %t214 = load i64, ptr %l94
  %t215 = inttoptr i64 %t214 to ptr
  %t216 = call ptr @__olang_scope_alloc(ptr %t215, i64 %t213)
  call void @olang_textcopy(ptr %t216, ptr %t198, i64 %t199)
  %t217 = getelementptr i8, ptr %t216, i64 %t199
  call void @olang_textcopy(ptr %t217, ptr %t201, i64 %t202)
  %t218 = getelementptr i8, ptr %t217, i64 %t202
  call void @olang_textcopy(ptr %t218, ptr %t204, i64 %t205)
  %t219 = getelementptr i8, ptr %t218, i64 %t205
  call void @olang_textcopy(ptr %t219, ptr %t208, i64 %t209)
  %t220 = getelementptr i8, ptr %t219, i64 %t209
  call void @olang_textcopy(ptr %t220, ptr %t211, i64 %t212)
  %t221 = insertvalue { i64, ptr } undef, i64 %t213, 0
  %t222 = insertvalue { i64, ptr } %t221, ptr %t216, 1
  %t224 = load i64, ptr %l94
  %t225 = inttoptr i64 %t224 to ptr
  %t226 = extractvalue { i64, ptr } %t222, 0
  %t227 = extractvalue { i64, ptr } %t222, 1
  %t228 = mul i64 %t226, 1
  %t229 = call ptr @__olang_scope_alloc(ptr %t225, i64 %t228)
  call void @llvm.memcpy.p0.p0.i64(ptr %t229, ptr %t227, i64 %t228, i1 false)
  %t230 = insertvalue { i64, ptr } undef, i64 %t226, 0
  %t231 = insertvalue { i64, ptr } %t230, ptr %t229, 1
  %t232 = load ptr, ptr %l93, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %s5, ptr %s5, ptr %t232, { i64, ptr } %t231)
  br label %bb38
bb38:
  br label %bb39
bb39:
  br label %bb40
bb40:
  %t234 = load i64, ptr %l16, !tbaa !24
  %t236 = add i64 %t234, 1
  store i64 %t236, ptr %l16, !tbaa !24
  br label %bb27
bb41:
  %t238 = insertvalue { ptr, ptr } undef, ptr @olang_lambda_83, 0
  %t239 = insertvalue { ptr, ptr } %t238, ptr null, 1
  %t242 = extractvalue { ptr, ptr } %t239, 0
  %t243 = extractvalue { ptr, ptr } %t239, 1
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H1642129570dad448bb7dcc47c334de83(ptr %s5, ptr %s5, ptr %l14, ptr %t242, ptr %t243)
  br label %bb42
bb42:
  store ptr %l14, ptr %l18, !tbaa !29
  store i64 0, ptr %l19, !tbaa !24
  br label %bb43
bb43:
  %t245 = load i64, ptr %l19, !tbaa !24
  store i64 %t245, ptr %l110, !tbaa !24
  %t246 = load ptr, ptr %l18, !tbaa !29
  %t248 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %s5, ptr %t246)
  store i64 %t248, ptr %l112
  br label %bb44
bb44:
  %t249 = load i64, ptr %l110, !tbaa !24
  %t250 = load i64, ptr %l112, !tbaa !24
  %t251 = icmp slt i64 %t249, %t250
  %t253 = xor i1 %t251, true
  br i1 %t253, label %bb45, label %bb46
bb45:
  br label %bb51
bb46:
  br label %bb47
bb47:
  %t255 = load ptr, ptr %l18, !tbaa !29
  %t256 = load i64, ptr %l19, !tbaa !24
  %t259 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %s5, ptr %s5, ptr %t255, i64 %t256)
  store { i64, ptr } %t259, ptr %l117
  br label %bb48
bb48:
  %t260 = load { i64, ptr }, ptr %l117, !tbaa !27
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s5, ptr %l8, { i64, ptr } %t260)
  br label %bb49
bb49:
  br label %bb50
bb50:
  %t264 = load i64, ptr %l19, !tbaa !24
  %t266 = add i64 %t264, 1
  store i64 %t266, ptr %l19, !tbaa !24
  br label %bb43
bb51:
  call void @__olang_scope_close(ptr %s5)
  br label %bb52
bb52:
  %t268 = load i64, ptr %l10, !tbaa !24
  %t270 = add i64 %t268, 1
  store i64 %t270, ptr %l10, !tbaa !24
  br label %bb20
bb53:
  %t273 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %s0, ptr %v1, ptr %l8)
  store { i64, ptr } %t273, ptr %l125
  br label %bb54
bb54:
  call void @__olang_scope_close(ptr %s0)
  %t274 = load { i64, ptr }, ptr %l125, !tbaa !27
  store { i64, ptr } %t274, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
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
  %t92 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s4, { i64, ptr } %t90, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d84, i32 0, i32 1) })
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

define dso_local i1 @compiler_2fload_2ecompiler_2fload_3aLoader_2eLinksOwnC(ptr %v0, ptr %a0) #0 {
entry:
  %l1 = alloca ptr
  %l2 = alloca i64
  %l3 = alloca ptr
  %l4 = alloca ptr
  %l5 = alloca i64
  %l6 = alloca %"compiler/load:Import"
  %l9 = alloca i64
  %l11 = alloca i64
  %l16 = alloca ptr
  %l19 = alloca i1
  %l22 = alloca i1
  %l26 = alloca i64
  %l28 = alloca i64
  %l33 = alloca %"compiler/load:Import"
  %l35 = alloca i1
  %l42 = alloca i1
  %s2 = alloca %olang.scope
  %s5 = alloca %olang.scope
  %rv = alloca i1
  br label %start
start:
  br label %bb0
bb0:
  %t3 = getelementptr %"compiler/load:Loader", ptr %a0, i32 0, i32 10
  store ptr %t3, ptr %l1, !tbaa !29
  store i64 0, ptr %l2, !tbaa !24
  br label %bb1
bb1:
  store %olang.scope zeroinitializer, ptr %s2
  %t5 = load i64, ptr %l2, !tbaa !24
  store i64 %t5, ptr %l9, !tbaa !24
  %t6 = load ptr, ptr %l1, !tbaa !29
  %t8 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_Hb2d19b6b5ea5ab5a85c5720545345bd4(ptr %v0, ptr %t6)
  store i64 %t8, ptr %l11
  br label %bb2
bb2:
  %t9 = load i64, ptr %l9, !tbaa !24
  %t10 = load i64, ptr %l11, !tbaa !24
  %t11 = icmp slt i64 %t9, %t10
  %t13 = xor i1 %t11, true
  br i1 %t13, label %bb3, label %bb4
bb3:
  call void @__olang_scope_close(ptr %s2)
  br label %bb31
bb4:
  br label %bb5
bb5:
  %t15 = load ptr, ptr %l1, !tbaa !29
  %t16 = load i64, ptr %l2, !tbaa !24
  %t19 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H7bcf2aeb09afa796f4333e6ec8c3f63f(ptr %v0, ptr %v0, ptr %t15, i64 %t16)
  store ptr %t19, ptr %l16
  br label %bb6
bb6:
  %t20 = load ptr, ptr %l16, !tbaa !29
  store ptr %t20, ptr %l3, !tbaa !29
  %t21 = load ptr, ptr %l3, !tbaa !29
  %t23 = getelementptr %"compiler/load:Module", ptr %t21, i32 0, i32 30
  %t24 = load i1, ptr %t23, !tbaa !21
  br i1 %t24, label %bb7, label %bb8
bb7:
  %t26 = load ptr, ptr %l3, !tbaa !29
  %t28 = getelementptr %"compiler/load:Module", ptr %t26, i32 0, i32 1
  %t29 = load { i64, ptr }, ptr %t28, !tbaa !27
  %t31 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEndsWith(ptr %v0, ptr %s2, { i64, ptr } %t29, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d85, i32 0, i32 1) })
  store i1 %t31, ptr %l22
  br label %bb9
bb8:
  store i1 false, ptr %l19, !tbaa !21
  br label %bb10
bb9:
  %t32 = load i1, ptr %l22, !tbaa !21
  store i1 %t32, ptr %l19, !tbaa !21
  br label %bb10
bb10:
  %t33 = load i1, ptr %l19, !tbaa !21
  br i1 %t33, label %bb11, label %bb12
bb11:
  call void @__olang_scope_close(ptr %s2)
  store i1 true, ptr %rv
  br label %ret
bb12:
  br label %bb13
bb13:
  %t35 = load ptr, ptr %l3, !tbaa !29
  %t37 = getelementptr %"compiler/load:Module", ptr %t35, i32 0, i32 11
  store ptr %t37, ptr %l4, !tbaa !29
  store i64 0, ptr %l5, !tbaa !24
  br label %bb14
bb14:
  store %olang.scope zeroinitializer, ptr %s5
  %t39 = load i64, ptr %l5, !tbaa !24
  store i64 %t39, ptr %l26, !tbaa !24
  %t40 = load ptr, ptr %l4, !tbaa !29
  %t42 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fload_3aImport_3e_2eLen_3ccompiler_2fload_3aImport_3e(ptr %v0, ptr %t40)
  store i64 %t42, ptr %l28
  br label %bb15
bb15:
  %t43 = load i64, ptr %l26, !tbaa !24
  %t44 = load i64, ptr %l28, !tbaa !24
  %t45 = icmp slt i64 %t43, %t44
  %t47 = xor i1 %t45, true
  br i1 %t47, label %bb16, label %bb17
bb16:
  call void @__olang_scope_close(ptr %s5)
  br label %bb25
bb17:
  br label %bb18
bb18:
  %t49 = load ptr, ptr %l4, !tbaa !29
  %t50 = load i64, ptr %l5, !tbaa !24
  %t53 = call %"compiler/load:Import" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fload_3aImport_3e_2eAt_3ccompiler_2fload_3aImport_3e(ptr %v0, ptr %v0, ptr %t49, i64 %t50)
  store %"compiler/load:Import" %t53, ptr %l33
  br label %bb19
bb19:
  %t54 = load %"compiler/load:Import", ptr %l33
  store %"compiler/load:Import" %t54, ptr %l6
  %t55 = getelementptr %"compiler/load:Import", ptr %l6, i32 0, i32 6
  %t56 = load { i64, ptr }, ptr %t55, !tbaa !27
  %t58 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s5, { i64, ptr } %t56, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d86, i32 0, i32 1) })
  store i1 %t58, ptr %l35
  br label %bb20
bb20:
  %t59 = load i1, ptr %l35, !tbaa !21
  %t60 = xor i1 %t59, true
  br i1 %t60, label %bb21, label %bb22
bb21:
  call void @__olang_scope_close(ptr %s5)
  call void @__olang_scope_close(ptr %s2)
  store i1 true, ptr %rv
  br label %ret
bb22:
  br label %bb23
bb23:
  call void @__olang_scope_close(ptr %s5)
  br label %bb24
bb24:
  %t63 = load i64, ptr %l5, !tbaa !24
  %t65 = add i64 %t63, 1
  store i64 %t65, ptr %l5, !tbaa !24
  br label %bb14
bb25:
  %t67 = load ptr, ptr %l3, !tbaa !29
  %t69 = getelementptr %"compiler/load:Module", ptr %t67, i32 0, i32 8
  %t70 = load { i64, ptr }, ptr %t69, !tbaa !27
  %t72 = call i1 @compiler_2fload_2edeclsLink(ptr %v0, { i64, ptr } %t70)
  store i1 %t72, ptr %l42
  br label %bb26
bb26:
  %t73 = load i1, ptr %l42, !tbaa !21
  br i1 %t73, label %bb27, label %bb28
bb27:
  call void @__olang_scope_close(ptr %s2)
  store i1 true, ptr %rv
  br label %ret
bb28:
  br label %bb29
bb29:
  call void @__olang_scope_close(ptr %s2)
  br label %bb30
bb30:
  %t75 = load i64, ptr %l2, !tbaa !24
  %t77 = add i64 %t75, 1
  store i64 %t77, ptr %l2, !tbaa !24
  br label %bb1
bb31:
  store i1 false, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i64 @compiler_2fload_2ecompiler_2fload_3aLoader_2eLoad(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca { i64, ptr }
  %l2 = alloca { i64, ptr }
  %l3 = alloca { i64, ptr }
  %l6 = alloca { i64, ptr }
  %l7 = alloca i32
  %l10 = alloca ptr
  %l12 = alloca i1
  %l14 = alloca { i64, ptr }
  %l22 = alloca { i64, ptr }
  %l24 = alloca ptr
  %l25 = alloca i64
  %l27 = alloca { i64, ptr }
  %l28 = alloca { i64, ptr }
  %l29 = alloca i32
  %l34 = alloca { i64, ptr }
  %l38 = alloca i1
  %l40 = alloca ptr
  %l41 = alloca { i64, [3 x i64] }
  %l42 = alloca %"compiler/diagmsg:Msg"
  %l44 = alloca ptr
  %l45 = alloca ptr
  %l46 = alloca { i64, ptr }
  %l47 = alloca i64
  %l51 = alloca { i64, ptr }
  %l53 = alloca i64
  %s0 = alloca %olang.scope
  %rv = alloca i64
  %t122 = alloca { i64, [3 x i64] }, align 8
  store ptr %a0, ptr %l0
  store { i64, ptr } %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/load:Loader", ptr %t1, i32 0, i32 0
  %t4 = load { i64, ptr }, ptr %t3, !tbaa !27
  %t6 = call { i32, { i64, ptr } } @std_2fos_2eRealPath(ptr %v0, ptr %s0, { i64, ptr } %t4)
  %t7 = extractvalue { i32, { i64, ptr } } %t6, 1
  %t8 = extractvalue { i32, { i64, ptr } } %t6, 0
  store i32 %t8, ptr %l7
  %t9 = icmp ne i32 %t8, 0
  br i1 %t9, label %bb2, label %ok.10, !prof !99
ok.10:
  store { i64, ptr } %t7, ptr %l6
  br label %bb1
bb1:
  %t11 = load { i64, ptr }, ptr %l6, !tbaa !27
  store { i64, ptr } %t11, ptr %l3, !tbaa !27
  br label %bb6
bb2:
  %t12 = load i32, ptr %l7, !tbaa !23
  %t13 = ashr i32 %t12, 16
  %t15 = icmp eq i32 %t13, 1
  br i1 %t15, label %bb3, label %bb4
bb3:
  call void @__olang_errpay_pop()
  br label %bb4
bb4:
  br label %bb5
bb5:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d87, i32 0, i32 1) }, ptr %l3, !tbaa !27
  br label %bb6
bb6:
  %t17 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t17, ptr %l2, !tbaa !27
  %t18 = load ptr, ptr %l0, !tbaa !29
  store ptr %t18, ptr %l10, !tbaa !29
  %t19 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t21 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %s0, { i64, ptr } %t19, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d88, i32 0, i32 1) })
  store i1 %t21, ptr %l12
  br label %bb7
bb7:
  %t22 = load i1, ptr %l12, !tbaa !21
  %t23 = xor i1 %t22, true
  br i1 %t23, label %bb8, label %bb9
bb8:
  %t25 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t27 = extractvalue { i64, ptr } %t25, 1
  %t28 = extractvalue { i64, ptr } %t25, 0
  %t29 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t28)
  call void @olang_textcopy(ptr %t29, ptr %t27, i64 %t28)
  %t30 = insertvalue { i64, ptr } undef, i64 %t28, 0
  %t31 = insertvalue { i64, ptr } %t30, ptr %t29, 1
  %t33 = extractvalue { i64, ptr } %t31, 0
  %t34 = extractvalue { i64, ptr } %t31, 1
  %t35 = mul i64 %t33, 1
  %t36 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t35)
  call void @llvm.memcpy.p0.p0.i64(ptr %t36, ptr %t34, i64 %t35, i1 false)
  %t37 = insertvalue { i64, ptr } undef, i64 %t33, 0
  %t38 = insertvalue { i64, ptr } %t37, ptr %t36, 1
  store { i64, ptr } %t38, ptr %l14, !tbaa !27
  br label %bb10
bb9:
  %t40 = load ptr, ptr %l0, !tbaa !29
  %t42 = getelementptr %"compiler/load:Loader", ptr %t40, i32 0, i32 0
  %t43 = load { i64, ptr }, ptr %t42, !tbaa !27
  %t45 = extractvalue { i64, ptr } %t43, 1
  %t46 = extractvalue { i64, ptr } %t43, 0
  %t47 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t46)
  call void @olang_textcopy(ptr %t47, ptr %t45, i64 %t46)
  %t48 = insertvalue { i64, ptr } undef, i64 %t46, 0
  %t49 = insertvalue { i64, ptr } %t48, ptr %t47, 1
  %t51 = extractvalue { i64, ptr } %t49, 0
  %t52 = extractvalue { i64, ptr } %t49, 1
  %t53 = mul i64 %t51, 1
  %t54 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t53)
  call void @llvm.memcpy.p0.p0.i64(ptr %t54, ptr %t52, i64 %t53, i1 false)
  %t55 = insertvalue { i64, ptr } undef, i64 %t51, 0
  %t56 = insertvalue { i64, ptr } %t55, ptr %t54, 1
  store { i64, ptr } %t56, ptr %l14, !tbaa !27
  br label %bb10
bb10:
  %t58 = load ptr, ptr %l10, !tbaa !29
  %t59 = getelementptr %"compiler/load:Loader", ptr %t58, i32 0, i32 15
  %t60 = load { i64, ptr }, ptr %t59, !tbaa !27
  store { i64, ptr } %t60, ptr %l22, !tbaa !27
  %t61 = load { i64, ptr }, ptr %l14, !tbaa !27
  %t62 = load ptr, ptr %l10, !tbaa !29
  %t63 = getelementptr %"compiler/load:Loader", ptr %t62, i32 0, i32 15
  store { i64, ptr } %t61, ptr %t63, !tbaa !27
  %t64 = load i1, ptr @olang_2esole_2ecompiler_2fload_3aLoader_2e15
  br i1 %t64, label %bb11, label %bb12
bb11:
  %t66 = load { i64, ptr }, ptr %l22
  %t67 = extractvalue { i64, ptr } %t66, 1
  call void @__olang_region_release(ptr %t67)
  store { i64, ptr } zeroinitializer, ptr %l22
  br label %bb12
bb12:
  %t68 = load ptr, ptr %l0, !tbaa !29
  store ptr %t68, ptr %l24, !tbaa !29
  %t69 = ptrtoint ptr %v0 to i64
  store i64 %t69, ptr %l25, !tbaa !24
  %t70 = load i1, ptr @olang_2esole_2ecompiler_2fload_3aLoader_2e16
  br i1 %t70, label %bb13, label %bb14
bb13:
  %t72 = call ptr @__olang_region_make(ptr %v0)
  %t73 = ptrtoint ptr %t72 to i64
  store i64 %t73, ptr %l25, !tbaa !24
  br label %bb14
bb14:
  %t74 = call { i32, { i64, ptr } } @std_2fos_2eCwd(ptr %s0)
  %t75 = extractvalue { i32, { i64, ptr } } %t74, 1
  %t76 = extractvalue { i32, { i64, ptr } } %t74, 0
  store i32 %t76, ptr %l29
  %t77 = icmp ne i32 %t76, 0
  br i1 %t77, label %bb16, label %ok.78, !prof !99
ok.78:
  store { i64, ptr } %t75, ptr %l28
  br label %bb15
bb15:
  %t79 = load { i64, ptr }, ptr %l28, !tbaa !27
  store { i64, ptr } %t79, ptr %l27, !tbaa !27
  br label %bb20
bb16:
  %t80 = load i32, ptr %l29, !tbaa !23
  %t81 = ashr i32 %t80, 16
  %t83 = icmp eq i32 %t81, 1
  br i1 %t83, label %bb17, label %bb18
bb17:
  call void @__olang_errpay_pop()
  br label %bb18
bb18:
  br label %bb19
bb19:
  store { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d89, i32 0, i32 1) }, ptr %l27, !tbaa !27
  br label %bb20
bb20:
  %t85 = load { i64, ptr }, ptr %l27, !tbaa !27
  %t86 = extractvalue { i64, ptr } %t85, 1
  %t87 = extractvalue { i64, ptr } %t85, 0
  %t88 = load i64, ptr %l25
  %t89 = inttoptr i64 %t88 to ptr
  %t90 = call ptr @__olang_scope_alloc(ptr %t89, i64 %t87)
  call void @olang_textcopy(ptr %t90, ptr %t86, i64 %t87)
  %t91 = insertvalue { i64, ptr } undef, i64 %t87, 0
  %t92 = insertvalue { i64, ptr } %t91, ptr %t90, 1
  %t94 = load i64, ptr %l25
  %t95 = inttoptr i64 %t94 to ptr
  %t96 = extractvalue { i64, ptr } %t92, 0
  %t97 = extractvalue { i64, ptr } %t92, 1
  %t98 = mul i64 %t96, 1
  %t99 = call ptr @__olang_scope_alloc(ptr %t95, i64 %t98)
  call void @llvm.memcpy.p0.p0.i64(ptr %t99, ptr %t97, i64 %t98, i1 false)
  %t100 = insertvalue { i64, ptr } undef, i64 %t96, 0
  %t101 = insertvalue { i64, ptr } %t100, ptr %t99, 1
  %t102 = load ptr, ptr %l24, !tbaa !29
  %t103 = getelementptr %"compiler/load:Loader", ptr %t102, i32 0, i32 16
  %t104 = load { i64, ptr }, ptr %t103, !tbaa !27
  store { i64, ptr } %t104, ptr %l34, !tbaa !27
  %t106 = load ptr, ptr %l24, !tbaa !29
  %t107 = getelementptr %"compiler/load:Loader", ptr %t106, i32 0, i32 16
  store { i64, ptr } %t101, ptr %t107, !tbaa !27
  %t108 = load i1, ptr @olang_2esole_2ecompiler_2fload_3aLoader_2e16
  br i1 %t108, label %bb21, label %bb22
bb21:
  %t110 = load { i64, ptr }, ptr %l34
  %t111 = extractvalue { i64, ptr } %t110, 1
  call void @__olang_region_release(ptr %t111)
  store { i64, ptr } zeroinitializer, ptr %l34
  br label %bb22
bb22:
  %t112 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2fload_2ecompiler_2fload_3aLoader_2eLoadPrelude(ptr %v0, ptr %t112)
  br label %bb23
bb23:
  %t114 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t116 = call i1 @std_2fos_2eIsDir(ptr %v1, { i64, ptr } %t114)
  store i1 %t116, ptr %l38
  br label %bb24
bb24:
  %t117 = load i1, ptr %l38, !tbaa !21
  br i1 %t117, label %bb25, label %bb26
bb25:
  %t118 = load ptr, ptr %l0, !tbaa !29
  %t120 = getelementptr %"compiler/load:Loader", ptr %t118, i32 0, i32 4
  %t121 = load ptr, ptr %t120, !tbaa !29
  store ptr %t121, ptr %l40, !tbaa !29
  store { i64, [3 x i64] } zeroinitializer, ptr %t122
  %t123 = getelementptr { i64, [3 x i64] }, ptr %t122, i32 0, i32 0
  store i64 0, ptr %t123
  %t124 = load { i64, [3 x i64] }, ptr %t122
  store { i64, [3 x i64] } %t124, ptr %l41
  %t125 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eIsDirectory(ptr %v0)
  store %"compiler/diagmsg:Msg" %t125, ptr %l42
  br label %bb27
bb26:
  br label %bb29
bb27:
  %t126 = load ptr, ptr %l40, !tbaa !29
  %t127 = load { i64, [3 x i64] }, ptr %l41
  %t128 = load %"compiler/diagmsg:Msg", ptr %l42
  call void @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eFatal(ptr %v0, ptr %v0, ptr %t126, { i64, [3 x i64] } %t127, %"compiler/diagmsg:Msg" %t128)
  br label %bb28
bb28:
  call void @__olang_scope_close(ptr %s0)
  store i64 -1, ptr %rv
  br label %ret
bb29:
  %t130 = load ptr, ptr %l0, !tbaa !29
  store ptr %t130, ptr %l44, !tbaa !29
  %t131 = load ptr, ptr %l0, !tbaa !29
  store ptr %t131, ptr %l45, !tbaa !29
  %t132 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t132, ptr %l46, !tbaa !27
  %t133 = ptrtoint ptr %v0 to i64
  store i64 %t133, ptr %l47, !tbaa !24
  %t134 = load i1, ptr @olang_2esole_2ecompiler_2fload_3aModule_2e2
  br i1 %t134, label %bb30, label %bb31
bb30:
  %t136 = call ptr @__olang_region_make(ptr %v0)
  %t137 = ptrtoint ptr %t136 to i64
  store i64 %t137, ptr %l47, !tbaa !24
  br label %bb31
bb31:
  %t138 = load ptr, ptr %l0, !tbaa !29
  %t139 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t140 = load i64, ptr %l47
  %t141 = inttoptr i64 %t140 to ptr
  %t144 = call { i64, ptr } @compiler_2fload_2ecompiler_2fload_3aLoader_2erootIdentity(ptr %v0, ptr %v1, ptr %t141, ptr %t138, { i64, ptr } %t139)
  store { i64, ptr } %t144, ptr %l51
  br label %bb32
bb32:
  %t145 = load { i64, ptr }, ptr %l51, !tbaa !27
  %t146 = load i64, ptr %l47
  %t147 = inttoptr i64 %t146 to ptr
  %t148 = extractvalue { i64, ptr } %t145, 0
  %t149 = extractvalue { i64, ptr } %t145, 1
  %t150 = mul i64 %t148, 1
  %t151 = call ptr @__olang_scope_alloc(ptr %t147, i64 %t150)
  call void @llvm.memcpy.p0.p0.i64(ptr %t151, ptr %t149, i64 %t150, i1 false)
  %t152 = insertvalue { i64, ptr } undef, i64 %t148, 0
  %t153 = insertvalue { i64, ptr } %t152, ptr %t151, 1
  %t154 = load ptr, ptr %l45, !tbaa !29
  %t155 = load { i64, ptr }, ptr %l46, !tbaa !27
  %t157 = call i64 @compiler_2fload_2ecompiler_2fload_3aLoader_2eload(ptr %v0, ptr %v1, ptr %v0, ptr %t154, { i64, ptr } %t155, { i64, ptr } %t153, i1 false, i1 false)
  store i64 %t157, ptr %l53
  br label %bb33
bb33:
  %t158 = load i64, ptr %l53, !tbaa !24
  %t159 = load ptr, ptr %l44, !tbaa !29
  %t160 = getelementptr %"compiler/load:Loader", ptr %t159, i32 0, i32 12
  store i64 %t158, ptr %t160, !tbaa !24
  %t161 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2fload_2ecompiler_2fload_3aLoader_2echeckReach(ptr %v0, ptr %t161)
  br label %bb34
bb34:
  %t163 = load ptr, ptr %l0, !tbaa !29
  %t165 = getelementptr %"compiler/load:Loader", ptr %t163, i32 0, i32 12
  %t166 = load i64, ptr %t165, !tbaa !24
  call void @__olang_scope_close(ptr %s0)
  store i64 %t166, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
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
  %t7 = insertvalue [2 x { i64, ptr }] %t6, { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d90, i32 0, i32 1) }, 1
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
  %t74 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEndsWith(ptr %s0, ptr %s3, { i64, ptr } %t72, { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d91, i32 0, i32 1) })
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
  %l1 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
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
  %t2 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l15
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t2, ptr %l1
  store i64 0, ptr %l2, !tbaa !24
  %t3 = load ptr, ptr %l0, !tbaa !29
  %t5 = getelementptr %"compiler/load:Loader", ptr %t3, i32 0, i32 10
  %t7 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_Hb2d19b6b5ea5ab5a85c5720545345bd4(ptr %v0, ptr %t5)
  store i64 %t7, ptr %l18
  br label %bb2
bb2:
  %t8 = load i64, ptr %l18, !tbaa !24
  store i64 %t8, ptr %l3, !tbaa !24
  store i64 1, ptr %l4, !tbaa !24
  %t9 = load i64, ptr %l3, !tbaa !24
  %t10 = load i64, ptr %l2, !tbaa !24
  %t13 = icmp sgt i64 %t9, %t10
  br i1 %t13, label %bb3, label %bb4
bb3:
  %t15 = load i64, ptr %l4, !tbaa !24
  %t17 = icmp sgt i64 %t15, 0
  br i1 %t17, label %bb5, label %bb6
bb4:
  store i64 0, ptr %l22, !tbaa !24
  br label %bb8
bb5:
  %t19 = load i64, ptr %l3, !tbaa !24
  %t20 = load i64, ptr %l2, !tbaa !24
  %t23 = sub i64 %t19, %t20
  %t24 = load i64, ptr %l4, !tbaa !24
  %t27 = add i64 %t23, %t24
  %t29 = sub i64 %t27, 1
  %t30 = load i64, ptr %l4, !tbaa !24
  %t33 = sdiv i64 %t29, %t30
  store i64 %t33, ptr %l25, !tbaa !24
  br label %bb7
bb6:
  store i64 0, ptr %l25, !tbaa !24
  br label %bb7
bb7:
  %t35 = load i64, ptr %l25, !tbaa !24
  store i64 %t35, ptr %l22, !tbaa !24
  br label %bb8
bb8:
  %t36 = load i64, ptr %l22, !tbaa !24
  store i64 %t36, ptr %l5, !tbaa !24
  store i64 0, ptr %l6, !tbaa !24
  br label %bb9
bb9:
  %t37 = load i64, ptr %l6, !tbaa !24
  %t38 = load i64, ptr %l5, !tbaa !24
  %t41 = icmp slt i64 %t37, %t38
  %t43 = xor i1 %t41, true
  br i1 %t43, label %bb10, label %bb11
bb10:
  br label %bb41
bb11:
  br label %bb12
bb12:
  %t45 = load i64, ptr %l2, !tbaa !24
  %t46 = load i64, ptr %l6, !tbaa !24
  %t47 = load i64, ptr %l4, !tbaa !24
  %t50 = mul i64 %t46, %t47
  %t53 = add i64 %t45, %t50
  store i64 %t53, ptr %l7, !tbaa !24
  %t55 = load ptr, ptr %l0, !tbaa !29
  %t57 = getelementptr %"compiler/load:Loader", ptr %t55, i32 0, i32 10
  %t58 = load i64, ptr %l7, !tbaa !24
  %t61 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H7bcf2aeb09afa796f4333e6ec8c3f63f(ptr %v0, ptr %v0, ptr %t57, i64 %t58)
  store ptr %t61, ptr %l46
  br label %bb13
bb13:
  %t62 = load ptr, ptr %l46, !tbaa !29
  store ptr %t62, ptr %l8, !tbaa !29
  store i64 0, ptr %l9, !tbaa !24
  %t63 = load ptr, ptr %l8, !tbaa !29
  %t65 = getelementptr %"compiler/load:Module", ptr %t63, i32 0, i32 14
  %t67 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI32_3e_2eLen_3cI32_3e(ptr %v0, ptr %t65)
  store i64 %t67, ptr %l49
  br label %bb14
bb14:
  %t68 = load i64, ptr %l49, !tbaa !24
  store i64 %t68, ptr %l10, !tbaa !24
  store i64 1, ptr %l11, !tbaa !24
  %t69 = load i64, ptr %l10, !tbaa !24
  %t70 = load i64, ptr %l9, !tbaa !24
  %t73 = icmp sgt i64 %t69, %t70
  br i1 %t73, label %bb15, label %bb16
bb15:
  %t75 = load i64, ptr %l11, !tbaa !24
  %t77 = icmp sgt i64 %t75, 0
  br i1 %t77, label %bb17, label %bb18
bb16:
  store i64 0, ptr %l53, !tbaa !24
  br label %bb20
bb17:
  %t79 = load i64, ptr %l10, !tbaa !24
  %t80 = load i64, ptr %l9, !tbaa !24
  %t83 = sub i64 %t79, %t80
  %t84 = load i64, ptr %l11, !tbaa !24
  %t87 = add i64 %t83, %t84
  %t89 = sub i64 %t87, 1
  %t90 = load i64, ptr %l11, !tbaa !24
  %t93 = sdiv i64 %t89, %t90
  store i64 %t93, ptr %l56, !tbaa !24
  br label %bb19
bb18:
  store i64 0, ptr %l56, !tbaa !24
  br label %bb19
bb19:
  %t95 = load i64, ptr %l56, !tbaa !24
  store i64 %t95, ptr %l53, !tbaa !24
  br label %bb20
bb20:
  %t96 = load i64, ptr %l53, !tbaa !24
  store i64 %t96, ptr %l12, !tbaa !24
  store i64 0, ptr %l13, !tbaa !24
  br label %bb21
bb21:
  %t97 = load i64, ptr %l13, !tbaa !24
  %t98 = load i64, ptr %l12, !tbaa !24
  %t101 = icmp slt i64 %t97, %t98
  %t103 = xor i1 %t101, true
  br i1 %t103, label %bb22, label %bb23
bb22:
  br label %bb39
bb23:
  br label %bb24
bb24:
  %t105 = load i64, ptr %l9, !tbaa !24
  %t106 = load i64, ptr %l13, !tbaa !24
  %t107 = load i64, ptr %l11, !tbaa !24
  %t110 = mul i64 %t106, %t107
  %t113 = add i64 %t105, %t110
  store i64 %t113, ptr %l14, !tbaa !24
  %t115 = load ptr, ptr %l0, !tbaa !29
  %t116 = load i64, ptr %l7, !tbaa !24
  %t117 = load i64, ptr %l14, !tbaa !24
  call void @compiler_2fload_2ecompiler_2fload_3aLoader_2edecide(ptr %v0, ptr %t115, i64 %t116, i64 %t117)
  br label %bb25
bb25:
  %t121 = load ptr, ptr %l8, !tbaa !29
  %t123 = getelementptr %"compiler/load:Module", ptr %t121, i32 0, i32 16
  %t124 = load i64, ptr %l14, !tbaa !24
  %t127 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t123, i64 %t124)
  store i64 %t127, ptr %l80
  br label %bb26
bb26:
  %t128 = load i64, ptr @G_2ecompiler_2fload_2ePending, !tbaa !24
  %t129 = load i64, ptr %l80, !tbaa !24
  %t131 = icmp eq i64 %t129, %t128
  br i1 %t131, label %bb27, label %bb28
bb27:
  %t133 = load ptr, ptr %l0, !tbaa !29
  store ptr %t133, ptr %l84, !tbaa !29
  %t134 = load i64, ptr %l7, !tbaa !24
  store i64 %t134, ptr %l85, !tbaa !24
  %t135 = load ptr, ptr %l8, !tbaa !29
  %t137 = getelementptr %"compiler/load:Module", ptr %t135, i32 0, i32 15
  %t138 = load i64, ptr %l14, !tbaa !24
  %t141 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t137, i64 %t138)
  store i64 %t141, ptr %l89
  br label %bb29
bb28:
  store i1 false, ptr %l83, !tbaa !21
  br label %bb31
bb29:
  %t142 = load ptr, ptr %l84, !tbaa !29
  %t143 = load i64, ptr %l85, !tbaa !24
  %t144 = load i64, ptr %l89, !tbaa !24
  %t145 = call i64 @compiler_2fload_2ecompiler_2fload_3aLoader_2etaken(ptr %v0, ptr %t142, i64 %t143, i64 %t144)
  store i64 %t145, ptr %l90
  br label %bb30
bb30:
  %t146 = load i64, ptr %l90, !tbaa !24
  %t147 = icmp eq i64 %t146, 1
  store i1 %t147, ptr %l83, !tbaa !21
  br label %bb31
bb31:
  %t149 = load i1, ptr %l83, !tbaa !21
  br i1 %t149, label %bb32, label %bb33
bb32:
  store %olang.scope zeroinitializer, ptr %s5
  store ptr %l1, ptr %l92, !tbaa !29
  %t150 = load i64, ptr %l7, !tbaa !24
  store i64 %t150, ptr %l93, !tbaa !24
  %t151 = load ptr, ptr %l8, !tbaa !29
  %t153 = getelementptr %"compiler/load:Module", ptr %t151, i32 0, i32 14
  %t154 = load i64, ptr %l14, !tbaa !24
  %t157 = call i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI32_3e_2eAt_3cI32_3e(ptr %v0, ptr %t153, i64 %t154)
  store i32 %t157, ptr %l97
  br label %bb34
bb33:
  br label %bb37
bb34:
  %t158 = load i64, ptr %l93, !tbaa !24
  %t159 = load i32, ptr %l97, !tbaa !23
  %t160 = call %"std/pair:Pair.d0636885f2b44490dbc61e56fa468a20" @std_2fpair_3aPair_3cI64_2c_20I32_3e_2ector(ptr %s5, i64 %t158, i32 %t159)
  store %"std/pair:Pair.d0636885f2b44490dbc61e56fa468a20" %t160, ptr %l98
  br label %bb35
bb35:
  %t161 = load ptr, ptr %l92, !tbaa !29
  %t162 = load %"std/pair:Pair.d0636885f2b44490dbc61e56fa468a20", ptr %l98
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fpair_3aPair_3cI64_2c_20I32_3e_3e_H3d0936d94fa2a15581f68618fbda67e4(ptr %v1, ptr %t161, %"std/pair:Pair.d0636885f2b44490dbc61e56fa468a20" %t162)
  br label %bb36
bb36:
  call void @__olang_scope_close(ptr %s5)
  br label %bb37
bb37:
  br label %bb38
bb38:
  %t163 = load i64, ptr %l13, !tbaa !24
  %t165 = add i64 %t163, 1
  store i64 %t165, ptr %l13, !tbaa !24
  br label %bb21
bb39:
  br label %bb40
bb40:
  %t167 = load i64, ptr %l6, !tbaa !24
  %t169 = add i64 %t167, 1
  store i64 %t169, ptr %l6, !tbaa !24
  br label %bb9
bb41:
  %t171 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l1
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t171, ptr %rv
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
  %l34 = alloca i1
  %l35 = alloca i64
  %l38 = alloca i1
  %l39 = alloca { i64, ptr }
  %l43 = alloca { i64, ptr }
  %l48 = alloca { i64, ptr }
  %l50 = alloca { i64, ptr }
  %l52 = alloca { i64, ptr }
  %l55 = alloca i1
  %l56 = alloca i64
  %l59 = alloca { i64, ptr }
  %l61 = alloca { i64, ptr }
  %l64 = alloca ptr
  %l71 = alloca { i64, [3 x i64] }
  %l73 = alloca { i64, ptr }
  %l75 = alloca %"compiler/diagmsg:Msg"
  %l76 = alloca i64
  %l79 = alloca i1
  %s1 = alloca %olang.scope
  %s6 = alloca %olang.scope
  %t151 = alloca { i64, [3 x i64] }, align 8
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
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d92, i32 0, i32 1) }, ptr %l31, !tbaa !27
  %t58 = load { i64, ptr }, ptr %l31, !tbaa !27
  %t59 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 16, i64 8)
  store ptr %t59, ptr %lp7
  %t61 = load ptr, ptr %lp7
  store { i64, ptr } %t58, ptr %t61, !tbaa !27
  %t62 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t64 = call i1 @compiler_2fload_2eLinkIsFile(ptr %v0, { i64, ptr } %t62)
  store i1 %t64, ptr %l34
  br label %bb11
bb10:
  call void @__olang_check_failed(ptr @olang_loc_c887c5acf0277416_b8456d2f32e25a62)
  unreachable
bb11:
  %t65 = load i1, ptr %l34, !tbaa !21
  br i1 %t65, label %bb12, label %bb13
bb12:
  store %olang.scope zeroinitializer, ptr %s1
  %t66 = ptrtoint ptr %v2 to i64
  store i64 %t66, ptr %l35, !tbaa !24
  %t67 = load i1, ptr @olang_2esole_2ecompiler__2fload__2ecompiler__2fload__3aLoader__2eaddLink_2elocal_2e7
  br i1 %t67, label %bb14, label %bb15
bb13:
  %t69 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t71 = call i1 @compiler_2fload_2eLinkName(ptr %v0, { i64, ptr } %t69)
  store i1 %t71, ptr %l55
  br label %bb26
bb14:
  %t72 = call ptr @__olang_region_make(ptr %v2)
  %t73 = ptrtoint ptr %t72 to i64
  store i64 %t73, ptr %l35, !tbaa !24
  br label %bb15
bb15:
  %t74 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t76 = call i1 @std_2ffilepath_2eIsAbs(ptr %v0, { i64, ptr } %t74)
  store i1 %t76, ptr %l38
  br label %bb16
bb16:
  %t77 = load i1, ptr %l38, !tbaa !21
  br i1 %t77, label %bb17, label %bb18
bb17:
  %t78 = load { i64, ptr }, ptr %l6, !tbaa !27
  store { i64, ptr } %t78, ptr %l39, !tbaa !27
  br label %bb21
bb18:
  %t80 = load ptr, ptr %l5, !tbaa !29
  %t82 = getelementptr %"compiler/load:Module", ptr %t80, i32 0, i32 1
  %t83 = load { i64, ptr }, ptr %t82, !tbaa !27
  %t85 = call { i64, ptr } @std_2ffilepath_2eDir(ptr %v0, ptr %s1, { i64, ptr } %t83)
  store { i64, ptr } %t85, ptr %l43
  br label %bb19
bb19:
  %t86 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t87 = load { i64, ptr }, ptr %l43, !tbaa !27
  %t88 = insertvalue [2 x { i64, ptr }] undef, { i64, ptr } %t87, 0
  %t90 = insertvalue [2 x { i64, ptr }] %t88, { i64, ptr } %t86, 1
  store [2 x { i64, ptr }] %t90, ptr %l8
  %t93 = insertvalue { i64, ptr } undef, i64 2, 0
  %t94 = insertvalue { i64, ptr } %t93, ptr %l8, 1
  %t96 = call { i64, ptr } @std_2ffilepath_2eJoin(ptr %s1, ptr %v0, { i64, ptr } %t94)
  store { i64, ptr } %t96, ptr %l48
  br label %bb20
bb20:
  %t97 = load { i64, ptr }, ptr %l48, !tbaa !27
  %t98 = extractvalue { i64, ptr } %t97, 0
  %t99 = extractvalue { i64, ptr } %t97, 1
  %t100 = mul i64 %t98, 1
  %t101 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t100)
  call void @llvm.memcpy.p0.p0.i64(ptr %t101, ptr %t99, i64 %t100, i1 false)
  %t102 = insertvalue { i64, ptr } undef, i64 %t98, 0
  %t103 = insertvalue { i64, ptr } %t102, ptr %t101, 1
  store { i64, ptr } %t103, ptr %l39, !tbaa !27
  br label %bb21
bb21:
  %t105 = load { i64, ptr }, ptr %l39, !tbaa !27
  %t106 = extractvalue { i64, ptr } %t105, 1
  %t107 = extractvalue { i64, ptr } %t105, 0
  %t108 = load i64, ptr %l35
  %t109 = inttoptr i64 %t108 to ptr
  %t110 = call ptr @__olang_scope_alloc(ptr %t109, i64 %t107)
  call void @olang_textcopy(ptr %t110, ptr %t106, i64 %t107)
  %t111 = insertvalue { i64, ptr } undef, i64 %t107, 0
  %t112 = insertvalue { i64, ptr } %t111, ptr %t110, 1
  store { i64, ptr } %t112, ptr %l50, !tbaa !27
  %t113 = load i1, ptr @olang_2esole_2ecompiler__2fload__2ecompiler__2fload__3aLoader__2eaddLink_2elocal_2e7
  br i1 %t113, label %bb22, label %bb23
bb22:
  %t115 = load i64, ptr %l35
  %t116 = inttoptr i64 %t115 to ptr
  %t117 = load { i64, ptr }, ptr %l50
  %t118 = extractvalue { i64, ptr } %t117, 1
  %t119 = call ptr @__olang_region_or(ptr %t118, ptr null)
  %t120 = icmp ne ptr %t119, null
  %t121 = select i1 %t120, ptr %t119, ptr null
  %t122 = icmp eq ptr %t121, %t116
  call void @__olang_region_settle(ptr %t116, i1 %t122)
  br label %bb23
bb23:
  %t123 = load ptr, ptr %lp7
  %t124 = load { i64, ptr }, ptr %t123, !tbaa !27
  store { i64, ptr } %t124, ptr %l52, !tbaa !27
  %t125 = load { i64, ptr }, ptr %l50, !tbaa !27
  %t126 = load ptr, ptr %lp7
  store { i64, ptr } %t125, ptr %t126, !tbaa !27
  %t127 = load i1, ptr @olang_2esole_2ecompiler__2fload__2ecompiler__2fload__3aLoader__2eaddLink_2elocal_2e7
  br i1 %t127, label %bb24, label %bb25
bb24:
  %t129 = load { i64, ptr }, ptr %l52
  %t130 = extractvalue { i64, ptr } %t129, 1
  call void @__olang_region_release(ptr %t130)
  store { i64, ptr } zeroinitializer, ptr %l52
  br label %bb25
bb25:
  call void @__olang_scope_close(ptr %s1)
  br label %bb39
bb26:
  %t131 = load i1, ptr %l55, !tbaa !21
  br i1 %t131, label %bb27, label %bb28
bb27:
  %t132 = ptrtoint ptr %v2 to i64
  store i64 %t132, ptr %l56, !tbaa !24
  %t133 = load i1, ptr @olang_2esole_2ecompiler__2fload__2ecompiler__2fload__3aLoader__2eaddLink_2elocal_2e7
  br i1 %t133, label %bb29, label %bb30
bb28:
  store %olang.scope zeroinitializer, ptr %s6
  %t135 = load ptr, ptr %l0, !tbaa !29
  %t137 = getelementptr %"compiler/load:Loader", ptr %t135, i32 0, i32 4
  %t138 = load ptr, ptr %t137, !tbaa !29
  store ptr %t138, ptr %l64, !tbaa !29
  %t139 = load ptr, ptr %l5, !tbaa !29
  %t141 = getelementptr %"compiler/load:Module", ptr %t139, i32 0, i32 4
  %t142 = load i64, ptr %t141, !tbaa !24
  %t143 = getelementptr %"compiler/source:Span", ptr %l2, i32 0, i32 0
  %t144 = load i32, ptr %t143, !tbaa !23
  %t146 = sext i32 %t144 to i64
  %t147 = getelementptr %"compiler/source:Span", ptr %l2, i32 0, i32 1
  %t148 = load i32, ptr %t147, !tbaa !23
  %t150 = sext i32 %t148 to i64
  store { i64, [3 x i64] } zeroinitializer, ptr %t151
  %t152 = getelementptr { i64, [3 x i64] }, ptr %t151, i32 0, i32 0
  store i64 3, ptr %t152
  %t154 = insertvalue { i64, i64, i64 } undef, i64 %t142, 0
  %t156 = insertvalue { i64, i64, i64 } %t154, i64 %t146, 1
  %t158 = insertvalue { i64, i64, i64 } %t156, i64 %t150, 2
  %t159 = getelementptr { i64, [3 x i64] }, ptr %t151, i32 0, i32 1
  store { i64, i64, i64 } %t158, ptr %t159
  %t160 = load { i64, [3 x i64] }, ptr %t151
  store { i64, [3 x i64] } %t160, ptr %l71
  %t161 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t163 = call { i64, ptr } @compiler_2fmsgs_2eTok(ptr %v0, ptr %s6, { i64, ptr } %t161)
  store { i64, ptr } %t163, ptr %l73
  br label %bb35
bb29:
  %t164 = call ptr @__olang_region_make(ptr %v2)
  %t165 = ptrtoint ptr %t164 to i64
  store i64 %t165, ptr %l56, !tbaa !24
  br label %bb30
bb30:
  %t166 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t167 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d93, i32 0, i32 1) }, 1
  %t168 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d93, i32 0, i32 1) }, 0
  %t170 = extractvalue { i64, ptr } %t166, 1
  %t171 = extractvalue { i64, ptr } %t166, 0
  %t172 = add i64 %t168, %t171
  %t173 = load i64, ptr %l56
  %t174 = inttoptr i64 %t173 to ptr
  %t175 = call ptr @__olang_scope_alloc(ptr %t174, i64 %t172)
  call void @olang_textcopy(ptr %t175, ptr %t167, i64 %t168)
  %t176 = getelementptr i8, ptr %t175, i64 %t168
  call void @olang_textcopy(ptr %t176, ptr %t170, i64 %t171)
  %t177 = insertvalue { i64, ptr } undef, i64 %t172, 0
  %t178 = insertvalue { i64, ptr } %t177, ptr %t175, 1
  store { i64, ptr } %t178, ptr %l59, !tbaa !27
  %t179 = load i1, ptr @olang_2esole_2ecompiler__2fload__2ecompiler__2fload__3aLoader__2eaddLink_2elocal_2e7
  br i1 %t179, label %bb31, label %bb32
bb31:
  %t181 = load i64, ptr %l56
  %t182 = inttoptr i64 %t181 to ptr
  %t183 = load { i64, ptr }, ptr %l59
  %t184 = extractvalue { i64, ptr } %t183, 1
  %t185 = call ptr @__olang_region_or(ptr %t184, ptr null)
  %t186 = icmp ne ptr %t185, null
  %t187 = select i1 %t186, ptr %t185, ptr null
  %t188 = icmp eq ptr %t187, %t182
  call void @__olang_region_settle(ptr %t182, i1 %t188)
  br label %bb32
bb32:
  %t189 = load ptr, ptr %lp7
  %t190 = load { i64, ptr }, ptr %t189, !tbaa !27
  store { i64, ptr } %t190, ptr %l61, !tbaa !27
  %t191 = load { i64, ptr }, ptr %l59, !tbaa !27
  %t192 = load ptr, ptr %lp7
  store { i64, ptr } %t191, ptr %t192, !tbaa !27
  %t193 = load i1, ptr @olang_2esole_2ecompiler__2fload__2ecompiler__2fload__3aLoader__2eaddLink_2elocal_2e7
  br i1 %t193, label %bb33, label %bb34
bb33:
  %t195 = load { i64, ptr }, ptr %l61
  %t196 = extractvalue { i64, ptr } %t195, 1
  call void @__olang_region_release(ptr %t196)
  store { i64, ptr } zeroinitializer, ptr %l61
  br label %bb34
bb34:
  br label %bb38
bb35:
  %t197 = load { i64, ptr }, ptr %l73, !tbaa !27
  %t198 = extractvalue { i64, ptr } %t197, 0
  %t199 = extractvalue { i64, ptr } %t197, 1
  %t200 = mul i64 %t198, 1
  %t201 = call ptr @__olang_scope_alloc(ptr %s6, i64 %t200)
  call void @llvm.memcpy.p0.p0.i64(ptr %t201, ptr %t199, i64 %t200, i1 false)
  %t202 = insertvalue { i64, ptr } undef, i64 %t198, 0
  %t203 = insertvalue { i64, ptr } %t202, ptr %t201, 1
  %t205 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eLinkName(ptr %s6, ptr %v0, { i64, ptr } %t203)
  store %"compiler/diagmsg:Msg" %t205, ptr %l75
  br label %bb36
bb36:
  %t206 = load ptr, ptr %l64, !tbaa !29
  %t207 = load { i64, [3 x i64] }, ptr %l71
  %t208 = load %"compiler/diagmsg:Msg", ptr %l75
  %t209 = call i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eError(ptr %v0, ptr %v0, ptr %t206, { i64, [3 x i64] } %t207, %"compiler/diagmsg:Msg" %t208)
  store i64 %t209, ptr %l76
  br label %bb37
bb37:
  call void @__olang_scope_close(ptr %s6)
  br label %ret
bb38:
  br label %bb39
bb39:
  %t210 = load ptr, ptr %l4, !tbaa !29
  %t211 = load ptr, ptr %lp7
  %t212 = load { i64, ptr }, ptr %t211, !tbaa !27
  %t215 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_H6b5ccacad8db807339a3579aa8c82ff8(ptr %v2, ptr %v2, ptr %t210, { i64, ptr } %t212)
  store i1 %t215, ptr %l79
  br label %bb40
bb40:
  %t216 = load i1, ptr %l79, !tbaa !21
  br i1 %t216, label %bb41, label %bb42
bb41:
  br label %ret
bb42:
  br label %bb43
bb43:
  %t217 = load ptr, ptr %l4, !tbaa !29
  %t218 = load ptr, ptr %lp7
  %t219 = load { i64, ptr }, ptr %t218, !tbaa !27
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_H2b85ceff512af6e6ca26c554a1c16247(ptr %v2, ptr %v2, ptr %t217, { i64, ptr } %t219, i1 true)
  br label %bb44
bb44:
  %t223 = load ptr, ptr %lp7
  %t224 = load { i64, ptr }, ptr %t223, !tbaa !27
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v1, ptr %v2, ptr %a3, { i64, ptr } %t224)
  br label %bb45
bb45:
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

define dso_local i64 @compiler_2fload_2ecompiler_2fload_3aLoader_2ebranch(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i64 %a2, i64 %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l12 = alloca i64
  %rv = alloca i64
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l1, !tbaa !29
  %t3 = getelementptr %"compiler/load:Module", ptr %t1, i32 0, i32 20
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v1, ptr %t3, i64 %a2)
  br label %bb1
bb1:
  %t7 = load ptr, ptr %l1, !tbaa !29
  %t9 = getelementptr %"compiler/load:Module", ptr %t7, i32 0, i32 21
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v1, ptr %t9, i64 %a3)
  br label %bb2
bb2:
  %t13 = load ptr, ptr %l1, !tbaa !29
  %t15 = getelementptr %"compiler/load:Module", ptr %t13, i32 0, i32 20
  %t17 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v1, ptr %t15)
  store i64 %t17, ptr %l12
  br label %bb3
bb3:
  %t18 = load i64, ptr %l12, !tbaa !24
  %t19 = sub i64 %t18, 1
  store i64 %t19, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
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

define dso_local i64 @compiler_2fload_2ecompiler_2fload_3aLoader_2ecImport(ptr %v0, ptr %v1, ptr %a0, i64 %a1, %"compiler/load:Import" %a2) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca %"compiler/load:Import"
  %l3 = alloca ptr
  %l4 = alloca { i64, [3 x i64] }
  %l5 = alloca { i64, ptr }
  %l6 = alloca i1
  %l7 = alloca { i64, ptr }
  %l8 = alloca { i64, ptr }
  %l9 = alloca { i64, ptr }
  %l10 = alloca { i64, ptr }
  %lp11 = alloca ptr
  %l12 = alloca { i64, ptr }
  %l13 = alloca { i64, ptr }
  %l14 = alloca %"std/prelude/text:StringBuilder"
  %l15 = alloca ptr
  %l16 = alloca i64
  %l18 = alloca { i64, ptr }
  %l19 = alloca { i64, ptr }
  %l20 = alloca { i64, ptr }
  %l21 = alloca { i64, ptr }
  %l22 = alloca { i64, ptr }
  %l23 = alloca %"compiler/bindgen:Translation"
  %l24 = alloca %"std/prelude/text:StringBuilder"
  %l25 = alloca ptr
  %l26 = alloca i64
  %l27 = alloca { i64, ptr }
  %l28 = alloca %"std/os:FileInfo"
  %l29 = alloca { i64, ptr }
  %l30 = alloca { i64, ptr }
  %l31 = alloca i64
  %l32 = alloca ptr
  %l33 = alloca i1
  %l34 = alloca %"std/prelude/text:LineIter"
  %l35 = alloca { i64, ptr }
  %l36 = alloca { i64, ptr }
  %l37 = alloca i64
  %l41 = alloca ptr
  %l45 = alloca { i64, [3 x i64] }
  %l48 = alloca i1
  %l51 = alloca { i64, ptr }
  %l53 = alloca i1
  %l54 = alloca i1
  %l56 = alloca i1
  %l57 = alloca { i64, ptr }
  %l59 = alloca { i64, ptr }
  %l65 = alloca { i64, ptr }
  %l68 = alloca i1
  %l69 = alloca i64
  %l72 = alloca { i64, ptr }
  %l74 = alloca { i64, ptr }
  %l76 = alloca { i64, ptr }
  %l78 = alloca { i64, ptr }
  %l80 = alloca { i64, ptr }
  %l83 = alloca i1
  %l84 = alloca i1
  %l86 = alloca i1
  %l88 = alloca { i64, ptr }
  %l90 = alloca { i64, ptr }
  %l91 = alloca i32
  %l95 = alloca i1
  %l97 = alloca { i64, ptr }
  %l102 = alloca i64
  %l105 = alloca { i64, ptr }
  %l107 = alloca { i64, ptr }
  %l110 = alloca i64
  %l113 = alloca { i64, ptr }
  %l115 = alloca { i64, ptr }
  %l118 = alloca i1
  %l119 = alloca { i64, ptr }
  %l121 = alloca { i64, ptr }
  %l126 = alloca { i64, ptr }
  %l128 = alloca { i64, ptr }
  %l131 = alloca i1
  %l133 = alloca i1
  %l134 = alloca i1
  %l136 = alloca i1
  %l137 = alloca i1
  %l139 = alloca i1
  %l141 = alloca ptr
  %l142 = alloca { i64, [3 x i64] }
  %l144 = alloca %"compiler/diagmsg:Msg"
  %l145 = alloca i64
  %l147 = alloca i64
  %l150 = alloca { i64, ptr }
  %l152 = alloca { i64, ptr }
  %l154 = alloca i64
  %l157 = alloca { i64, ptr }
  %l159 = alloca { i64, ptr }
  %l163 = alloca i1
  %l164 = alloca ptr
  %l165 = alloca i64
  %l167 = alloca { i64, ptr }
  %l169 = alloca { i64, ptr }
  %l173 = alloca i64
  %l177 = alloca %"std/prelude/text:StringBuilder"
  %l186 = alloca i64
  %l188 = alloca i64
  %l193 = alloca { i64, ptr }
  %l201 = alloca { i64, ptr }
  %l204 = alloca { i64, ptr }
  %l205 = alloca i64
  %l210 = alloca ptr
  %l213 = alloca { i64, ptr }
  %l214 = alloca { i64, ptr }
  %l218 = alloca { i64, ptr }
  %l221 = alloca { i64, ptr }
  %l222 = alloca i64
  %l227 = alloca { i64, ptr }
  %l233 = alloca { i64, ptr }
  %l235 = alloca i1
  %l236 = alloca { i64, ptr }
  %l237 = alloca { i64, ptr }
  %l239 = alloca { i64, ptr }
  %l242 = alloca { i64, ptr }
  %l245 = alloca %"compiler/bindgen:Translation"
  %l247 = alloca i1
  %l251 = alloca ptr
  %l252 = alloca { i64, [3 x i64] }
  %l254 = alloca %"compiler/diagmsg:Msg"
  %l255 = alloca i64
  %l257 = alloca ptr
  %l258 = alloca { i64, [3 x i64] }
  %l261 = alloca %"compiler/diagmsg:Msg"
  %l262 = alloca i64
  %l264 = alloca %"std/prelude/text:StringBuilder"
  %l266 = alloca i64
  %l268 = alloca i64
  %l273 = alloca { i64, ptr }
  %l274 = alloca %"std/os:FileInfo"
  %l276 = alloca %"std/os:FileInfo"
  %l277 = alloca i32
  %l279 = alloca i1
  %l291 = alloca { i64, ptr }
  %l294 = alloca { i64, ptr }
  %l295 = alloca i64
  %l301 = alloca i1
  %l302 = alloca { i64, ptr }
  %l312 = alloca i1
  %l314 = alloca i1
  %l320 = alloca i1
  %l322 = alloca i1
  %l323 = alloca { i64, ptr }
  %l326 = alloca { i64, ptr }
  %l328 = alloca { i64, ptr }
  %l330 = alloca i1
  %l333 = alloca ptr
  %l334 = alloca { i64, [3 x i64] }
  %l339 = alloca %"compiler/diagmsg:Msg"
  %l340 = alloca i64
  %l343 = alloca { i64, ptr }
  %l344 = alloca { i64, ptr }
  %l345 = alloca i64
  %l346 = alloca { i64, ptr }
  %l348 = alloca ptr
  %l349 = alloca i64
  %l355 = alloca i64
  %l362 = alloca ptr
  %l366 = alloca i1
  %l367 = alloca i1
  %l368 = alloca %"std/os:FileInfo"
  %l372 = alloca %"std/os:FileInfo"
  %l373 = alloca i32
  %l375 = alloca i1
  %l379 = alloca %"std/os:FileInfo"
  %l382 = alloca ptr
  %l383 = alloca i64
  %l388 = alloca { i64, ptr }
  %l391 = alloca %"std/prelude/text:LineIter"
  %l392 = alloca { i64, ptr }
  %l394 = alloca { i64, ptr }
  %l395 = alloca i32
  %l397 = alloca i1
  %l399 = alloca i1
  %l400 = alloca { i64, ptr }
  %l403 = alloca i64
  %l404 = alloca i64
  %l409 = alloca { i64, ptr }
  %l414 = alloca ptr
  %l415 = alloca i64
  %l417 = alloca { i64, ptr }
  %l420 = alloca { i64, ptr }
  %l421 = alloca i64
  %l423 = alloca { i64, ptr }
  %l428 = alloca i1
  %l430 = alloca i1
  %l432 = alloca i1
  %l433 = alloca i64
  %l435 = alloca i64
  %l436 = alloca i32
  %l440 = alloca ptr
  %l441 = alloca i64
  %l443 = alloca { i64, ptr }
  %l444 = alloca i64
  %l445 = alloca i64
  %l451 = alloca { i64, ptr }
  %l452 = alloca i64
  %l454 = alloca { i64, ptr }
  %l456 = alloca i64
  %l459 = alloca i64
  %l460 = alloca i64
  %s0 = alloca %olang.scope
  %s6 = alloca %olang.scope
  %s14 = alloca %olang.scope
  %s23 = alloca %olang.scope
  %s29 = alloca %olang.scope
  %s34 = alloca %olang.scope
  %s42 = alloca %olang.scope
  %s51 = alloca %olang.scope
  %s52 = alloca %olang.scope
  %s56 = alloca %olang.scope
  %s58 = alloca %olang.scope
  %s59 = alloca %olang.scope
  %rv = alloca i64
  store ptr %a0, ptr %l0
  store %"compiler/load:Import" %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/load:Loader", ptr %t1, i32 0, i32 10
  %t7 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H7bcf2aeb09afa796f4333e6ec8c3f63f(ptr %v0, ptr %v0, ptr %t3, i64 %a1)
  store ptr %t7, ptr %l41
  br label %bb1
bb1:
  %t8 = load ptr, ptr %l41, !tbaa !29
  store ptr %t8, ptr %l3, !tbaa !29
  %t9 = load ptr, ptr %l0, !tbaa !29
  %t10 = load ptr, ptr %l3, !tbaa !29
  %t11 = getelementptr %"compiler/load:Import", ptr %l2, i32 0, i32 0
  %t12 = load %"compiler/source:Span", ptr %t11
  %t16 = call { i64, [3 x i64] } @compiler_2fload_2ecompiler_2fload_3aLoader_2eat(ptr %v0, ptr %v0, ptr %t9, ptr %t10, %"compiler/source:Span" %t12)
  store { i64, [3 x i64] } %t16, ptr %l45
  br label %bb2
bb2:
  %t17 = load { i64, [3 x i64] }, ptr %l45
  store { i64, [3 x i64] } %t17, ptr %l4
  %t18 = getelementptr %"compiler/load:Import", ptr %l2, i32 0, i32 3
  %t19 = load { i64, ptr }, ptr %t18, !tbaa !27
  store { i64, ptr } %t19, ptr %l5, !tbaa !27
  %t21 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t23 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEndsWith(ptr %v1, ptr %s0, { i64, ptr } %t21, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d94, i32 0, i32 1) })
  store i1 %t23, ptr %l48
  br label %bb3
bb3:
  %t24 = load i1, ptr %l48, !tbaa !21
  store i1 %t24, ptr %l6, !tbaa !21
  %t25 = load ptr, ptr %l3, !tbaa !29
  %t27 = getelementptr %"compiler/load:Module", ptr %t25, i32 0, i32 0
  %t28 = load { i64, ptr }, ptr %t27, !tbaa !27
  %t30 = call { i64, ptr } @compiler_2fload_2emoduleDir(ptr %v0, ptr %s0, { i64, ptr } %t28)
  store { i64, ptr } %t30, ptr %l51
  br label %bb4
bb4:
  %t31 = load { i64, ptr }, ptr %l51, !tbaa !27
  store { i64, ptr } %t31, ptr %l7, !tbaa !27
  %t32 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t34 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %v1, ptr %s0, { i64, ptr } %t32, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d95, i32 0, i32 1) })
  store i1 %t34, ptr %l53
  br label %bb5
bb5:
  %t35 = load i1, ptr %l53, !tbaa !21
  br i1 %t35, label %bb6, label %bb7
bb6:
  store i1 true, ptr %l54, !tbaa !21
  br label %bb9
bb7:
  %t36 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t38 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %s0, { i64, ptr } %t36, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d96, i32 0, i32 1) })
  store i1 %t38, ptr %l56
  br label %bb8
bb8:
  %t39 = load i1, ptr %l56, !tbaa !21
  store i1 %t39, ptr %l54, !tbaa !21
  br label %bb9
bb9:
  %t40 = load i1, ptr %l54, !tbaa !21
  br i1 %t40, label %bb10, label %bb11
bb10:
  %t41 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t43 = call { i64, ptr } @compiler_2fload_2eNormalize(ptr %v1, ptr %s0, { i64, ptr } %t41)
  store { i64, ptr } %t43, ptr %l59
  br label %bb12
bb11:
  %t44 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t45 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t47 = extractvalue { i64, ptr } %t44, 1
  %t48 = extractvalue { i64, ptr } %t44, 0
  %t49 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d97, i32 0, i32 1) }, 1
  %t50 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d97, i32 0, i32 1) }, 0
  %t51 = add i64 %t48, %t50
  %t53 = extractvalue { i64, ptr } %t45, 1
  %t54 = extractvalue { i64, ptr } %t45, 0
  %t55 = add i64 %t51, %t54
  %t56 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t55)
  call void @olang_textcopy(ptr %t56, ptr %t47, i64 %t48)
  %t57 = getelementptr i8, ptr %t56, i64 %t48
  call void @olang_textcopy(ptr %t57, ptr %t49, i64 %t50)
  %t58 = getelementptr i8, ptr %t57, i64 %t50
  call void @olang_textcopy(ptr %t58, ptr %t53, i64 %t54)
  %t59 = insertvalue { i64, ptr } undef, i64 %t55, 0
  %t60 = insertvalue { i64, ptr } %t59, ptr %t56, 1
  %t62 = extractvalue { i64, ptr } %t60, 0
  %t63 = extractvalue { i64, ptr } %t60, 1
  %t64 = mul i64 %t62, 1
  %t65 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t64)
  call void @llvm.memcpy.p0.p0.i64(ptr %t65, ptr %t63, i64 %t64, i1 false)
  %t66 = insertvalue { i64, ptr } undef, i64 %t62, 0
  %t67 = insertvalue { i64, ptr } %t66, ptr %t65, 1
  %t69 = call { i64, ptr } @compiler_2fload_2eNormalize(ptr %s0, ptr %s0, { i64, ptr } %t67)
  store { i64, ptr } %t69, ptr %l65
  br label %bb13
bb12:
  %t70 = load { i64, ptr }, ptr %l59, !tbaa !27
  %t71 = extractvalue { i64, ptr } %t70, 1
  %t72 = extractvalue { i64, ptr } %t70, 0
  %t73 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t72)
  call void @olang_textcopy(ptr %t73, ptr %t71, i64 %t72)
  %t74 = insertvalue { i64, ptr } undef, i64 %t72, 0
  %t75 = insertvalue { i64, ptr } %t74, ptr %t73, 1
  store { i64, ptr } %t75, ptr %l57, !tbaa !27
  br label %bb14
bb13:
  %t77 = load { i64, ptr }, ptr %l65, !tbaa !27
  %t78 = extractvalue { i64, ptr } %t77, 1
  %t79 = extractvalue { i64, ptr } %t77, 0
  %t80 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t79)
  call void @olang_textcopy(ptr %t80, ptr %t78, i64 %t79)
  %t81 = insertvalue { i64, ptr } undef, i64 %t79, 0
  %t82 = insertvalue { i64, ptr } %t81, ptr %t80, 1
  store { i64, ptr } %t82, ptr %l57, !tbaa !27
  br label %bb14
bb14:
  %t84 = load { i64, ptr }, ptr %l57, !tbaa !27
  store { i64, ptr } %t84, ptr %l8, !tbaa !27
  %t85 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t87 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %v1, ptr %s0, { i64, ptr } %t85, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d98, i32 0, i32 1) })
  store i1 %t87, ptr %l68
  br label %bb15
bb15:
  %t88 = load i1, ptr %l68, !tbaa !21
  br i1 %t88, label %bb16, label %bb17
bb16:
  %t89 = ptrtoint ptr %s0 to i64
  store i64 %t89, ptr %l69, !tbaa !24
  %t90 = load i1, ptr @olang_2esole_2ecompiler__2fload__2ecompiler__2fload__3aLoader__2ecImport_2elocal_2e8
  br i1 %t90, label %bb18, label %bb19
bb17:
  br label %bb24
bb18:
  %t92 = call ptr @__olang_region_make(ptr %s0)
  %t93 = ptrtoint ptr %t92 to i64
  store i64 %t93, ptr %l69, !tbaa !24
  br label %bb19
bb19:
  %t94 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t96 = extractvalue { i64, ptr } %t94, 1
  %t97 = extractvalue { i64, ptr } %t94, 0
  %t98 = load i64, ptr %l69
  %t99 = inttoptr i64 %t98 to ptr
  %t100 = call ptr @__olang_scope_alloc(ptr %t99, i64 %t97)
  call void @olang_textcopy(ptr %t100, ptr %t96, i64 %t97)
  %t101 = insertvalue { i64, ptr } undef, i64 %t97, 0
  %t102 = insertvalue { i64, ptr } %t101, ptr %t100, 1
  store { i64, ptr } %t102, ptr %l72, !tbaa !27
  %t103 = load i1, ptr @olang_2esole_2ecompiler__2fload__2ecompiler__2fload__3aLoader__2ecImport_2elocal_2e8
  br i1 %t103, label %bb20, label %bb21
bb20:
  %t105 = load i64, ptr %l69
  %t106 = inttoptr i64 %t105 to ptr
  %t107 = load { i64, ptr }, ptr %l72
  %t108 = extractvalue { i64, ptr } %t107, 1
  %t109 = call ptr @__olang_region_or(ptr %t108, ptr null)
  %t110 = icmp ne ptr %t109, null
  %t111 = select i1 %t110, ptr %t109, ptr null
  %t112 = icmp eq ptr %t111, %t106
  call void @__olang_region_settle(ptr %t106, i1 %t112)
  br label %bb21
bb21:
  %t113 = load { i64, ptr }, ptr %l8, !tbaa !27
  store { i64, ptr } %t113, ptr %l74, !tbaa !27
  %t114 = load { i64, ptr }, ptr %l72, !tbaa !27
  store { i64, ptr } %t114, ptr %l8, !tbaa !27
  %t115 = load i1, ptr @olang_2esole_2ecompiler__2fload__2ecompiler__2fload__3aLoader__2ecImport_2elocal_2e8
  br i1 %t115, label %bb22, label %bb23
bb22:
  %t117 = load { i64, ptr }, ptr %l74
  %t118 = extractvalue { i64, ptr } %t117, 1
  call void @__olang_region_release(ptr %t118)
  store { i64, ptr } zeroinitializer, ptr %l74
  br label %bb23
bb23:
  br label %bb24
bb24:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d99, i32 0, i32 1) }, ptr %l76, !tbaa !27
  %t119 = load { i64, ptr }, ptr %l76, !tbaa !27
  store { i64, ptr } %t119, ptr %l9, !tbaa !27
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d100, i32 0, i32 1) }, ptr %l78, !tbaa !27
  %t121 = load { i64, ptr }, ptr %l78, !tbaa !27
  store { i64, ptr } %t121, ptr %l10, !tbaa !27
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d101, i32 0, i32 1) }, ptr %l80, !tbaa !27
  %t123 = load { i64, ptr }, ptr %l80, !tbaa !27
  %t124 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 16, i64 8)
  store ptr %t124, ptr %lp11
  %t126 = load ptr, ptr %lp11
  store { i64, ptr } %t123, ptr %t126, !tbaa !27
  %t127 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t129 = call i1 @std_2fos_2eExists(ptr %s0, { i64, ptr } %t127)
  store i1 %t129, ptr %l83
  br label %bb25
bb25:
  %t130 = load i1, ptr %l83, !tbaa !21
  br i1 %t130, label %bb26, label %bb27
bb26:
  %t131 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t133 = call i1 @std_2fos_2eIsDir(ptr %s0, { i64, ptr } %t131)
  store i1 %t133, ptr %l86
  br label %bb28
bb27:
  store i1 false, ptr %l84, !tbaa !21
  br label %bb29
bb28:
  %t134 = load i1, ptr %l86, !tbaa !21
  %t135 = xor i1 %t134, true
  store i1 %t135, ptr %l84, !tbaa !21
  br label %bb29
bb29:
  %t137 = load i1, ptr %l84, !tbaa !21
  br i1 %t137, label %bb30, label %bb31
bb30:
  store %olang.scope zeroinitializer, ptr %s6
  %t138 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t140 = call { i32, { i64, ptr } } @std_2fos_2eRealPath(ptr %s0, ptr %s6, { i64, ptr } %t138)
  %t141 = extractvalue { i32, { i64, ptr } } %t140, 1
  %t142 = extractvalue { i32, { i64, ptr } } %t140, 0
  store i32 %t142, ptr %l91
  %t143 = icmp ne i32 %t142, 0
  br i1 %t143, label %bb33, label %ok.144, !prof !99
ok.144:
  store { i64, ptr } %t141, ptr %l90
  br label %bb32
bb31:
  store %olang.scope zeroinitializer, ptr %s14
  %t145 = load i1, ptr %l6, !tbaa !21
  br i1 %t145, label %bb65, label %bb66
bb32:
  %t147 = load { i64, ptr }, ptr %l90, !tbaa !27
  store { i64, ptr } %t147, ptr %l88, !tbaa !27
  br label %bb37
bb33:
  %t148 = load i32, ptr %l91, !tbaa !23
  %t149 = ashr i32 %t148, 16
  %t151 = icmp eq i32 %t149, 1
  br i1 %t151, label %bb34, label %bb35
bb34:
  call void @__olang_errpay_pop()
  br label %bb35
bb35:
  br label %bb36
bb36:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d102, i32 0, i32 1) }, ptr %l88, !tbaa !27
  br label %bb37
bb37:
  %t153 = load { i64, ptr }, ptr %l88, !tbaa !27
  store { i64, ptr } %t153, ptr %l12, !tbaa !27
  %t154 = load { i64, ptr }, ptr %l12, !tbaa !27
  %t156 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s6, ptr %s6, { i64, ptr } %t154, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d103, i32 0, i32 1) })
  store i1 %t156, ptr %l95
  br label %bb38
bb38:
  %t157 = load i1, ptr %l95, !tbaa !21
  %t158 = xor i1 %t157, true
  br i1 %t158, label %bb39, label %bb40
bb39:
  %t160 = load { i64, ptr }, ptr %l12, !tbaa !27
  %t162 = extractvalue { i64, ptr } %t160, 1
  %t163 = extractvalue { i64, ptr } %t160, 0
  %t164 = call ptr @__olang_scope_alloc(ptr %s6, i64 %t163)
  call void @olang_textcopy(ptr %t164, ptr %t162, i64 %t163)
  %t165 = insertvalue { i64, ptr } undef, i64 %t163, 0
  %t166 = insertvalue { i64, ptr } %t165, ptr %t164, 1
  store { i64, ptr } %t166, ptr %l97, !tbaa !27
  br label %bb41
bb40:
  %t168 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t170 = extractvalue { i64, ptr } %t168, 1
  %t171 = extractvalue { i64, ptr } %t168, 0
  %t172 = call ptr @__olang_scope_alloc(ptr %s6, i64 %t171)
  call void @olang_textcopy(ptr %t172, ptr %t170, i64 %t171)
  %t173 = insertvalue { i64, ptr } undef, i64 %t171, 0
  %t174 = insertvalue { i64, ptr } %t173, ptr %t172, 1
  store { i64, ptr } %t174, ptr %l97, !tbaa !27
  br label %bb41
bb41:
  %t176 = load { i64, ptr }, ptr %l97, !tbaa !27
  store { i64, ptr } %t176, ptr %l13, !tbaa !27
  %t177 = ptrtoint ptr %s0 to i64
  store i64 %t177, ptr %l102, !tbaa !24
  %t178 = load i1, ptr @olang_2esole_2ecompiler__2fload__2ecompiler__2fload__3aLoader__2ecImport_2elocal_2e9
  br i1 %t178, label %bb42, label %bb43
bb42:
  %t180 = call ptr @__olang_region_make(ptr %s0)
  %t181 = ptrtoint ptr %t180 to i64
  store i64 %t181, ptr %l102, !tbaa !24
  br label %bb43
bb43:
  %t182 = load { i64, ptr }, ptr %l13, !tbaa !27
  %t183 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d104, i32 0, i32 1) }, 1
  %t184 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d104, i32 0, i32 1) }, 0
  %t186 = extractvalue { i64, ptr } %t182, 1
  %t187 = extractvalue { i64, ptr } %t182, 0
  %t188 = add i64 %t184, %t187
  %t189 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d105, i32 0, i32 1) }, 1
  %t190 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d105, i32 0, i32 1) }, 0
  %t191 = add i64 %t188, %t190
  %t192 = load i64, ptr %l102
  %t193 = inttoptr i64 %t192 to ptr
  %t194 = call ptr @__olang_scope_alloc(ptr %t193, i64 %t191)
  call void @olang_textcopy(ptr %t194, ptr %t183, i64 %t184)
  %t195 = getelementptr i8, ptr %t194, i64 %t184
  call void @olang_textcopy(ptr %t195, ptr %t186, i64 %t187)
  %t196 = getelementptr i8, ptr %t195, i64 %t187
  call void @olang_textcopy(ptr %t196, ptr %t189, i64 %t190)
  %t197 = insertvalue { i64, ptr } undef, i64 %t191, 0
  %t198 = insertvalue { i64, ptr } %t197, ptr %t194, 1
  store { i64, ptr } %t198, ptr %l105, !tbaa !27
  %t199 = load i1, ptr @olang_2esole_2ecompiler__2fload__2ecompiler__2fload__3aLoader__2ecImport_2elocal_2e9
  br i1 %t199, label %bb44, label %bb45
bb44:
  %t201 = load i64, ptr %l102
  %t202 = inttoptr i64 %t201 to ptr
  %t203 = load { i64, ptr }, ptr %l105
  %t204 = extractvalue { i64, ptr } %t203, 1
  %t205 = call ptr @__olang_region_or(ptr %t204, ptr null)
  %t206 = icmp ne ptr %t205, null
  %t207 = select i1 %t206, ptr %t205, ptr null
  %t208 = icmp eq ptr %t207, %t202
  call void @__olang_region_settle(ptr %t202, i1 %t208)
  br label %bb45
bb45:
  %t209 = load { i64, ptr }, ptr %l9, !tbaa !27
  store { i64, ptr } %t209, ptr %l107, !tbaa !27
  %t210 = load { i64, ptr }, ptr %l105, !tbaa !27
  store { i64, ptr } %t210, ptr %l9, !tbaa !27
  %t211 = load i1, ptr @olang_2esole_2ecompiler__2fload__2ecompiler__2fload__3aLoader__2ecImport_2elocal_2e9
  br i1 %t211, label %bb46, label %bb47
bb46:
  %t213 = load { i64, ptr }, ptr %l107
  %t214 = extractvalue { i64, ptr } %t213, 1
  call void @__olang_region_release(ptr %t214)
  store { i64, ptr } zeroinitializer, ptr %l107
  br label %bb47
bb47:
  %t215 = load i1, ptr %l6, !tbaa !21
  br i1 %t215, label %bb48, label %bb49
bb48:
  %t217 = ptrtoint ptr %s0 to i64
  store i64 %t217, ptr %l110, !tbaa !24
  %t218 = load i1, ptr @olang_2esole_2ecompiler__2fload__2ecompiler__2fload__3aLoader__2ecImport_2elocal_2e10
  br i1 %t218, label %bb50, label %bb51
bb49:
  br label %bb56
bb50:
  %t220 = call ptr @__olang_region_make(ptr %s0)
  %t221 = ptrtoint ptr %t220 to i64
  store i64 %t221, ptr %l110, !tbaa !24
  br label %bb51
bb51:
  %t222 = load { i64, ptr }, ptr %l13, !tbaa !27
  %t224 = extractvalue { i64, ptr } %t222, 1
  %t225 = extractvalue { i64, ptr } %t222, 0
  %t226 = load i64, ptr %l110
  %t227 = inttoptr i64 %t226 to ptr
  %t228 = call ptr @__olang_scope_alloc(ptr %t227, i64 %t225)
  call void @olang_textcopy(ptr %t228, ptr %t224, i64 %t225)
  %t229 = insertvalue { i64, ptr } undef, i64 %t225, 0
  %t230 = insertvalue { i64, ptr } %t229, ptr %t228, 1
  store { i64, ptr } %t230, ptr %l113, !tbaa !27
  %t231 = load i1, ptr @olang_2esole_2ecompiler__2fload__2ecompiler__2fload__3aLoader__2ecImport_2elocal_2e10
  br i1 %t231, label %bb52, label %bb53
bb52:
  %t233 = load i64, ptr %l110
  %t234 = inttoptr i64 %t233 to ptr
  %t235 = load { i64, ptr }, ptr %l113
  %t236 = extractvalue { i64, ptr } %t235, 1
  %t237 = call ptr @__olang_region_or(ptr %t236, ptr null)
  %t238 = icmp ne ptr %t237, null
  %t239 = select i1 %t238, ptr %t237, ptr null
  %t240 = icmp eq ptr %t239, %t234
  call void @__olang_region_settle(ptr %t234, i1 %t240)
  br label %bb53
bb53:
  %t241 = load { i64, ptr }, ptr %l10, !tbaa !27
  store { i64, ptr } %t241, ptr %l115, !tbaa !27
  %t242 = load { i64, ptr }, ptr %l113, !tbaa !27
  store { i64, ptr } %t242, ptr %l10, !tbaa !27
  %t243 = load i1, ptr @olang_2esole_2ecompiler__2fload__2ecompiler__2fload__3aLoader__2ecImport_2elocal_2e10
  br i1 %t243, label %bb54, label %bb55
bb54:
  %t245 = load { i64, ptr }, ptr %l115
  %t246 = extractvalue { i64, ptr } %t245, 1
  call void @__olang_region_release(ptr %t246)
  store { i64, ptr } zeroinitializer, ptr %l115
  br label %bb55
bb55:
  br label %bb56
bb56:
  %t247 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t249 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %v1, ptr %s6, { i64, ptr } %t247, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d106, i32 0, i32 1) })
  store i1 %t249, ptr %l118
  br label %bb57
bb57:
  %t250 = load i1, ptr %l118, !tbaa !21
  br i1 %t250, label %bb58, label %bb59
bb58:
  %t251 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t253 = call { i64, ptr } @std_2ffilepath_2eBase(ptr %v1, ptr %s6, { i64, ptr } %t251)
  store { i64, ptr } %t253, ptr %l121
  br label %bb60
bb59:
  %t254 = load ptr, ptr %l3, !tbaa !29
  %t256 = getelementptr %"compiler/load:Module", ptr %t254, i32 0, i32 2
  %t257 = load { i64, ptr }, ptr %t256, !tbaa !27
  %t258 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t261 = call { i64, ptr } @compiler_2fload_2erelativeIdentity(ptr %v0, ptr %v1, ptr %s6, { i64, ptr } %t257, { i64, ptr } %t258)
  store { i64, ptr } %t261, ptr %l126
  br label %bb61
bb60:
  %t262 = load { i64, ptr }, ptr %l121, !tbaa !27
  %t263 = extractvalue { i64, ptr } %t262, 1
  %t264 = extractvalue { i64, ptr } %t262, 0
  %t265 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t264)
  call void @olang_textcopy(ptr %t265, ptr %t263, i64 %t264)
  %t266 = insertvalue { i64, ptr } undef, i64 %t264, 0
  %t267 = insertvalue { i64, ptr } %t266, ptr %t265, 1
  store { i64, ptr } %t267, ptr %l119, !tbaa !27
  br label %bb62
bb61:
  %t269 = load { i64, ptr }, ptr %l126, !tbaa !27
  %t270 = extractvalue { i64, ptr } %t269, 1
  %t271 = extractvalue { i64, ptr } %t269, 0
  %t272 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t271)
  call void @olang_textcopy(ptr %t272, ptr %t270, i64 %t271)
  %t273 = insertvalue { i64, ptr } undef, i64 %t271, 0
  %t274 = insertvalue { i64, ptr } %t273, ptr %t272, 1
  store { i64, ptr } %t274, ptr %l119, !tbaa !27
  br label %bb62
bb62:
  %t276 = load ptr, ptr %lp11
  %t277 = load { i64, ptr }, ptr %t276, !tbaa !27
  store { i64, ptr } %t277, ptr %l128, !tbaa !27
  %t278 = load { i64, ptr }, ptr %l119, !tbaa !27
  %t279 = load ptr, ptr %lp11
  store { i64, ptr } %t278, ptr %t279, !tbaa !27
  %t280 = load i1, ptr @olang_2esole_2ecompiler__2fload__2ecompiler__2fload__3aLoader__2ecImport_2elocal_2e11
  br i1 %t280, label %bb63, label %bb64
bb63:
  %t282 = load { i64, ptr }, ptr %l128
  %t283 = extractvalue { i64, ptr } %t282, 1
  call void @__olang_region_release(ptr %t283)
  store { i64, ptr } zeroinitializer, ptr %l128
  br label %bb64
bb64:
  call void @__olang_scope_close(ptr %s6)
  br label %bb94
bb65:
  store i1 true, ptr %l131, !tbaa !21
  br label %bb68
bb66:
  %t284 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t286 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %v1, ptr %s14, { i64, ptr } %t284, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d107, i32 0, i32 1) })
  store i1 %t286, ptr %l133
  br label %bb67
bb67:
  %t287 = load i1, ptr %l133, !tbaa !21
  store i1 %t287, ptr %l131, !tbaa !21
  br label %bb68
bb68:
  %t288 = load i1, ptr %l131, !tbaa !21
  br i1 %t288, label %bb69, label %bb70
bb69:
  store i1 true, ptr %l134, !tbaa !21
  br label %bb72
bb70:
  %t289 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t291 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %v1, ptr %s14, { i64, ptr } %t289, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d108, i32 0, i32 1) })
  store i1 %t291, ptr %l136
  br label %bb71
bb71:
  %t292 = load i1, ptr %l136, !tbaa !21
  store i1 %t292, ptr %l134, !tbaa !21
  br label %bb72
bb72:
  %t293 = load i1, ptr %l134, !tbaa !21
  br i1 %t293, label %bb73, label %bb74
bb73:
  store i1 true, ptr %l137, !tbaa !21
  br label %bb76
bb74:
  %t294 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t296 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %v1, ptr %s14, { i64, ptr } %t294, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d109, i32 0, i32 1) })
  store i1 %t296, ptr %l139
  br label %bb75
bb75:
  %t297 = load i1, ptr %l139, !tbaa !21
  store i1 %t297, ptr %l137, !tbaa !21
  br label %bb76
bb76:
  %t298 = load i1, ptr %l137, !tbaa !21
  br i1 %t298, label %bb77, label %bb78
bb77:
  %t299 = load ptr, ptr %l0, !tbaa !29
  %t301 = getelementptr %"compiler/load:Loader", ptr %t299, i32 0, i32 4
  %t302 = load ptr, ptr %t301, !tbaa !29
  store ptr %t302, ptr %l141, !tbaa !29
  %t303 = load { i64, [3 x i64] }, ptr %l4
  store { i64, [3 x i64] } %t303, ptr %l142
  %t304 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t306 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eCFileNotFound(ptr %s0, ptr %v0, { i64, ptr } %t304)
  store %"compiler/diagmsg:Msg" %t306, ptr %l144
  br label %bb79
bb78:
  %t307 = ptrtoint ptr %s0 to i64
  store i64 %t307, ptr %l147, !tbaa !24
  %t308 = load i1, ptr @olang_2esole_2ecompiler__2fload__2ecompiler__2fload__3aLoader__2ecImport_2elocal_2e9
  br i1 %t308, label %bb81, label %bb82
bb79:
  %t310 = load ptr, ptr %l141, !tbaa !29
  %t311 = load { i64, [3 x i64] }, ptr %l142
  %t312 = load %"compiler/diagmsg:Msg", ptr %l144
  %t313 = call i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eError(ptr %v0, ptr %v0, ptr %t310, { i64, [3 x i64] } %t311, %"compiler/diagmsg:Msg" %t312)
  store i64 %t313, ptr %l145
  br label %bb80
bb80:
  call void @__olang_scope_close(ptr %s14)
  call void @__olang_scope_close(ptr %s0)
  store i64 -1, ptr %rv
  br label %ret
bb81:
  %t315 = call ptr @__olang_region_make(ptr %s0)
  %t316 = ptrtoint ptr %t315 to i64
  store i64 %t316, ptr %l147, !tbaa !24
  br label %bb82
bb82:
  %t317 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t318 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d110, i32 0, i32 1) }, 1
  %t319 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d110, i32 0, i32 1) }, 0
  %t321 = extractvalue { i64, ptr } %t317, 1
  %t322 = extractvalue { i64, ptr } %t317, 0
  %t323 = add i64 %t319, %t322
  %t324 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d111, i32 0, i32 1) }, 1
  %t325 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d111, i32 0, i32 1) }, 0
  %t326 = add i64 %t323, %t325
  %t327 = load i64, ptr %l147
  %t328 = inttoptr i64 %t327 to ptr
  %t329 = call ptr @__olang_scope_alloc(ptr %t328, i64 %t326)
  call void @olang_textcopy(ptr %t329, ptr %t318, i64 %t319)
  %t330 = getelementptr i8, ptr %t329, i64 %t319
  call void @olang_textcopy(ptr %t330, ptr %t321, i64 %t322)
  %t331 = getelementptr i8, ptr %t330, i64 %t322
  call void @olang_textcopy(ptr %t331, ptr %t324, i64 %t325)
  %t332 = insertvalue { i64, ptr } undef, i64 %t326, 0
  %t333 = insertvalue { i64, ptr } %t332, ptr %t329, 1
  store { i64, ptr } %t333, ptr %l150, !tbaa !27
  %t334 = load i1, ptr @olang_2esole_2ecompiler__2fload__2ecompiler__2fload__3aLoader__2ecImport_2elocal_2e9
  br i1 %t334, label %bb83, label %bb84
bb83:
  %t336 = load i64, ptr %l147
  %t337 = inttoptr i64 %t336 to ptr
  %t338 = load { i64, ptr }, ptr %l150
  %t339 = extractvalue { i64, ptr } %t338, 1
  %t340 = call ptr @__olang_region_or(ptr %t339, ptr null)
  %t341 = icmp ne ptr %t340, null
  %t342 = select i1 %t341, ptr %t340, ptr null
  %t343 = icmp eq ptr %t342, %t337
  call void @__olang_region_settle(ptr %t337, i1 %t343)
  br label %bb84
bb84:
  %t344 = load { i64, ptr }, ptr %l9, !tbaa !27
  store { i64, ptr } %t344, ptr %l152, !tbaa !27
  %t345 = load { i64, ptr }, ptr %l150, !tbaa !27
  store { i64, ptr } %t345, ptr %l9, !tbaa !27
  %t346 = load i1, ptr @olang_2esole_2ecompiler__2fload__2ecompiler__2fload__3aLoader__2ecImport_2elocal_2e9
  br i1 %t346, label %bb85, label %bb86
bb85:
  %t348 = load { i64, ptr }, ptr %l152
  %t349 = extractvalue { i64, ptr } %t348, 1
  call void @__olang_region_release(ptr %t349)
  store { i64, ptr } zeroinitializer, ptr %l152
  br label %bb86
bb86:
  %t350 = ptrtoint ptr %v0 to i64
  store i64 %t350, ptr %l154, !tbaa !24
  %t351 = load i1, ptr @olang_2esole_2ecompiler__2fload__2ecompiler__2fload__3aLoader__2ecImport_2elocal_2e11
  br i1 %t351, label %bb87, label %bb88
bb87:
  %t353 = call ptr @__olang_region_make(ptr %v0)
  %t354 = ptrtoint ptr %t353 to i64
  store i64 %t354, ptr %l154, !tbaa !24
  br label %bb88
bb88:
  %t355 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t356 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d112, i32 0, i32 1) }, 1
  %t357 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d112, i32 0, i32 1) }, 0
  %t359 = extractvalue { i64, ptr } %t355, 1
  %t360 = extractvalue { i64, ptr } %t355, 0
  %t361 = add i64 %t357, %t360
  %t362 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d113, i32 0, i32 1) }, 1
  %t363 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d113, i32 0, i32 1) }, 0
  %t364 = add i64 %t361, %t363
  %t365 = load i64, ptr %l154
  %t366 = inttoptr i64 %t365 to ptr
  %t367 = call ptr @__olang_scope_alloc(ptr %t366, i64 %t364)
  call void @olang_textcopy(ptr %t367, ptr %t356, i64 %t357)
  %t368 = getelementptr i8, ptr %t367, i64 %t357
  call void @olang_textcopy(ptr %t368, ptr %t359, i64 %t360)
  %t369 = getelementptr i8, ptr %t368, i64 %t360
  call void @olang_textcopy(ptr %t369, ptr %t362, i64 %t363)
  %t370 = insertvalue { i64, ptr } undef, i64 %t364, 0
  %t371 = insertvalue { i64, ptr } %t370, ptr %t367, 1
  store { i64, ptr } %t371, ptr %l157, !tbaa !27
  %t372 = load i1, ptr @olang_2esole_2ecompiler__2fload__2ecompiler__2fload__3aLoader__2ecImport_2elocal_2e11
  br i1 %t372, label %bb89, label %bb90
bb89:
  %t374 = load i64, ptr %l154
  %t375 = inttoptr i64 %t374 to ptr
  %t376 = load { i64, ptr }, ptr %l157
  %t377 = extractvalue { i64, ptr } %t376, 1
  %t378 = call ptr @__olang_region_or(ptr %t377, ptr null)
  %t379 = icmp ne ptr %t378, null
  %t380 = select i1 %t379, ptr %t378, ptr null
  %t381 = icmp eq ptr %t380, %t375
  call void @__olang_region_settle(ptr %t375, i1 %t381)
  br label %bb90
bb90:
  %t382 = load ptr, ptr %lp11
  %t383 = load { i64, ptr }, ptr %t382, !tbaa !27
  store { i64, ptr } %t383, ptr %l159, !tbaa !27
  %t384 = load { i64, ptr }, ptr %l157, !tbaa !27
  %t385 = load ptr, ptr %lp11
  store { i64, ptr } %t384, ptr %t385, !tbaa !27
  %t386 = load i1, ptr @olang_2esole_2ecompiler__2fload__2ecompiler__2fload__3aLoader__2ecImport_2elocal_2e11
  br i1 %t386, label %bb91, label %bb92
bb91:
  %t388 = load { i64, ptr }, ptr %l159
  %t389 = extractvalue { i64, ptr } %t388, 1
  call void @__olang_region_release(ptr %t389)
  store { i64, ptr } zeroinitializer, ptr %l159
  br label %bb92
bb92:
  br label %bb93
bb93:
  call void @__olang_scope_close(ptr %s14)
  br label %bb94
bb94:
  %t390 = load ptr, ptr %l0, !tbaa !29
  %t392 = getelementptr %"compiler/load:Loader", ptr %t390, i32 0, i32 20
  %t393 = load { i64, ptr }, ptr %t392, !tbaa !27
  %t395 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t393, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d114, i32 0, i32 1) })
  store i1 %t395, ptr %l163
  br label %bb95
bb95:
  %t396 = load i1, ptr %l163, !tbaa !21
  br i1 %t396, label %bb96, label %bb97
bb96:
  %t397 = load ptr, ptr %l0, !tbaa !29
  store ptr %t397, ptr %l164, !tbaa !29
  %t398 = ptrtoint ptr %v0 to i64
  store i64 %t398, ptr %l165, !tbaa !24
  %t399 = load i1, ptr @olang_2esole_2ecompiler_2fload_3aLoader_2e20
  br i1 %t399, label %bb98, label %bb99
bb97:
  br label %bb103
bb98:
  %t401 = call ptr @__olang_region_make(ptr %v0)
  %t402 = ptrtoint ptr %t401 to i64
  store i64 %t402, ptr %l165, !tbaa !24
  br label %bb99
bb99:
  %t403 = load i64, ptr %l165
  %t404 = inttoptr i64 %t403 to ptr
  %t405 = call { i64, ptr } @compiler_2ftarget_2eFindClang(ptr %t404)
  store { i64, ptr } %t405, ptr %l167
  br label %bb100
bb100:
  %t406 = load { i64, ptr }, ptr %l167, !tbaa !27
  %t407 = load i64, ptr %l165
  %t408 = inttoptr i64 %t407 to ptr
  %t409 = extractvalue { i64, ptr } %t406, 0
  %t410 = extractvalue { i64, ptr } %t406, 1
  %t411 = mul i64 %t409, 1
  %t412 = call ptr @__olang_scope_alloc(ptr %t408, i64 %t411)
  call void @llvm.memcpy.p0.p0.i64(ptr %t412, ptr %t410, i64 %t411, i1 false)
  %t413 = insertvalue { i64, ptr } undef, i64 %t409, 0
  %t414 = insertvalue { i64, ptr } %t413, ptr %t412, 1
  %t415 = load ptr, ptr %l164, !tbaa !29
  %t416 = getelementptr %"compiler/load:Loader", ptr %t415, i32 0, i32 20
  %t417 = load { i64, ptr }, ptr %t416, !tbaa !27
  store { i64, ptr } %t417, ptr %l169, !tbaa !27
  %t419 = load ptr, ptr %l164, !tbaa !29
  %t420 = getelementptr %"compiler/load:Loader", ptr %t419, i32 0, i32 20
  store { i64, ptr } %t414, ptr %t420, !tbaa !27
  %t421 = load i1, ptr @olang_2esole_2ecompiler_2fload_3aLoader_2e20
  br i1 %t421, label %bb101, label %bb102
bb101:
  %t423 = load { i64, ptr }, ptr %l169
  %t424 = extractvalue { i64, ptr } %t423, 1
  call void @__olang_region_release(ptr %t424)
  store { i64, ptr } zeroinitializer, ptr %l169
  br label %bb102
bb102:
  br label %bb103
bb103:
  %t425 = load ptr, ptr %l0, !tbaa !29
  %t427 = getelementptr %"compiler/load:Loader", ptr %t425, i32 0, i32 21
  %t429 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %v0, ptr %t427)
  store i64 %t429, ptr %l173
  br label %bb104
bb104:
  %t430 = load i64, ptr %l173, !tbaa !24
  %t431 = icmp eq i64 %t430, 0
  br i1 %t431, label %bb105, label %bb106
bb105:
  %t433 = load ptr, ptr %l0, !tbaa !29
  %t435 = getelementptr %"compiler/load:Loader", ptr %t433, i32 0, i32 21
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v0, ptr %v0, ptr %t435, { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d115, i32 0, i32 1) })
  br label %bb107
bb106:
  br label %bb108
bb107:
  br label %bb108
bb108:
  %t437 = call %"std/prelude/text:StringBuilder" @std_2fprelude_2ftext_3aStringBuilder_2ector(ptr %s0)
  store %"std/prelude/text:StringBuilder" %t437, ptr %l177
  br label %bb109
bb109:
  %t438 = load %"std/prelude/text:StringBuilder", ptr %l177
  store %"std/prelude/text:StringBuilder" %t438, ptr %l14
  %t439 = load { i64, ptr }, ptr @G_2ecompiler_2fload_2eCImportFormat, !tbaa !27
  %t440 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t441 = load { i64, ptr }, ptr %l10, !tbaa !27
  %t443 = extractvalue { i64, ptr } %t439, 1
  %t444 = extractvalue { i64, ptr } %t439, 0
  %t445 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d116, i32 0, i32 1) }, 1
  %t446 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d116, i32 0, i32 1) }, 0
  %t447 = add i64 %t444, %t446
  %t449 = extractvalue { i64, ptr } %t440, 1
  %t450 = extractvalue { i64, ptr } %t440, 0
  %t451 = add i64 %t447, %t450
  %t452 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d116, i32 0, i32 1) }, 1
  %t453 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d116, i32 0, i32 1) }, 0
  %t454 = add i64 %t451, %t453
  %t456 = extractvalue { i64, ptr } %t441, 1
  %t457 = extractvalue { i64, ptr } %t441, 0
  %t458 = add i64 %t454, %t457
  %t459 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d116, i32 0, i32 1) }, 1
  %t460 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d116, i32 0, i32 1) }, 0
  %t461 = add i64 %t458, %t460
  %t462 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t461)
  call void @olang_textcopy(ptr %t462, ptr %t443, i64 %t444)
  %t463 = getelementptr i8, ptr %t462, i64 %t444
  call void @olang_textcopy(ptr %t463, ptr %t445, i64 %t446)
  %t464 = getelementptr i8, ptr %t463, i64 %t446
  call void @olang_textcopy(ptr %t464, ptr %t449, i64 %t450)
  %t465 = getelementptr i8, ptr %t464, i64 %t450
  call void @olang_textcopy(ptr %t465, ptr %t452, i64 %t453)
  %t466 = getelementptr i8, ptr %t465, i64 %t453
  call void @olang_textcopy(ptr %t466, ptr %t456, i64 %t457)
  %t467 = getelementptr i8, ptr %t466, i64 %t457
  call void @olang_textcopy(ptr %t467, ptr %t459, i64 %t460)
  %t468 = insertvalue { i64, ptr } undef, i64 %t461, 0
  %t469 = insertvalue { i64, ptr } %t468, ptr %t462, 1
  %t471 = extractvalue { i64, ptr } %t469, 0
  %t472 = extractvalue { i64, ptr } %t469, 1
  %t473 = mul i64 %t471, 1
  %t474 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t473)
  call void @llvm.memcpy.p0.p0.i64(ptr %t474, ptr %t472, i64 %t473, i1 false)
  %t475 = insertvalue { i64, ptr } undef, i64 %t471, 0
  %t476 = insertvalue { i64, ptr } %t475, ptr %t474, 1
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s0, ptr %l14, { i64, ptr } %t476)
  br label %bb110
bb110:
  %t479 = load ptr, ptr %l0, !tbaa !29
  %t481 = getelementptr %"compiler/load:Loader", ptr %t479, i32 0, i32 21
  store ptr %t481, ptr %l15, !tbaa !29
  store i64 0, ptr %l16, !tbaa !24
  br label %bb111
bb111:
  store %olang.scope zeroinitializer, ptr %s23
  %t483 = load i64, ptr %l16, !tbaa !24
  store i64 %t483, ptr %l186, !tbaa !24
  %t484 = load ptr, ptr %l15, !tbaa !29
  %t486 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %v0, ptr %t484)
  store i64 %t486, ptr %l188
  br label %bb112
bb112:
  %t487 = load i64, ptr %l186, !tbaa !24
  %t488 = load i64, ptr %l188, !tbaa !24
  %t489 = icmp slt i64 %t487, %t488
  %t491 = xor i1 %t489, true
  br i1 %t491, label %bb113, label %bb114
bb113:
  call void @__olang_scope_close(ptr %s23)
  br label %bb119
bb114:
  br label %bb115
bb115:
  %t493 = load ptr, ptr %l15, !tbaa !29
  %t494 = load i64, ptr %l16, !tbaa !24
  %t497 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %v0, ptr %v0, ptr %t493, i64 %t494)
  store { i64, ptr } %t497, ptr %l193
  br label %bb116
bb116:
  %t498 = load { i64, ptr }, ptr %l193, !tbaa !27
  %t501 = extractvalue { i64, ptr } %t498, 1
  %t502 = extractvalue { i64, ptr } %t498, 0
  %t503 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d117, i32 0, i32 1) }, 1
  %t504 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d117, i32 0, i32 1) }, 0
  %t505 = add i64 %t502, %t504
  %t506 = call ptr @__olang_scope_alloc(ptr %s23, i64 %t505)
  call void @olang_textcopy(ptr %t506, ptr %t501, i64 %t502)
  %t507 = getelementptr i8, ptr %t506, i64 %t502
  call void @olang_textcopy(ptr %t507, ptr %t503, i64 %t504)
  %t508 = insertvalue { i64, ptr } undef, i64 %t505, 0
  %t509 = insertvalue { i64, ptr } %t508, ptr %t506, 1
  %t511 = extractvalue { i64, ptr } %t509, 0
  %t512 = extractvalue { i64, ptr } %t509, 1
  %t513 = mul i64 %t511, 1
  %t514 = call ptr @__olang_scope_alloc(ptr %s23, i64 %t513)
  call void @llvm.memcpy.p0.p0.i64(ptr %t514, ptr %t512, i64 %t513, i1 false)
  %t515 = insertvalue { i64, ptr } undef, i64 %t511, 0
  %t516 = insertvalue { i64, ptr } %t515, ptr %t514, 1
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s23, ptr %l14, { i64, ptr } %t516)
  br label %bb117
bb117:
  call void @__olang_scope_close(ptr %s23)
  br label %bb118
bb118:
  %t519 = load i64, ptr %l16, !tbaa !24
  %t521 = add i64 %t519, 1
  store i64 %t521, ptr %l16, !tbaa !24
  br label %bb111
bb119:
  %t524 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %s0, ptr %s0, ptr %l14)
  store { i64, ptr } %t524, ptr %l201
  br label %bb120
bb120:
  %t525 = load { i64, ptr }, ptr %l201, !tbaa !27
  %t527 = extractvalue { i64, ptr } %t525, 0
  %t528 = extractvalue { i64, ptr } %t525, 1
  %t529 = mul i64 %t527, 1
  %t530 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t529)
  call void @llvm.memcpy.p0.p0.i64(ptr %t530, ptr %t528, i64 %t529, i1 false)
  %t531 = insertvalue { i64, ptr } undef, i64 %t527, 0
  %t532 = insertvalue { i64, ptr } %t531, ptr %t530, 1
  %t534 = call { i64, ptr } @std_2fsha256_2eHex(ptr %s0, ptr %s0, { i64, ptr } %t532)
  store { i64, ptr } %t534, ptr %l204
  br label %bb121
bb121:
  %t535 = load { i64, ptr }, ptr %l204, !tbaa !27
  %t536 = extractvalue { i64, ptr } %t535, 0
  store i64 %t536, ptr %l205, !tbaa !24
  %t537 = icmp sge i64 0, 0
  br i1 %t537, label %bb122, label %bb123
bb122:
  %t539 = icmp sle i64 0, 12
  br i1 %t539, label %bb124, label %bb125
bb123:
  call void @__olang_check_failed(ptr @olang_loc_4449aa9d363b5b4e_4db0be62c6b6e3d2)
  unreachable
bb124:
  %t541 = load i64, ptr %l205, !tbaa !24
  %t542 = icmp sle i64 12, %t541
  br i1 %t542, label %bb126, label %bb127
bb125:
  call void @__olang_check_failed(ptr @olang_loc_4449aa9d363b5b4e_4db0be62c6b6e3d2)
  unreachable
bb126:
  %t544 = getelementptr { i64, ptr }, ptr %l204, i32 0, i32 1
  %t545 = load ptr, ptr %t544, !tbaa !27
  %t546 = getelementptr i8, ptr %t545, i64 0
  %t547 = sub i64 12, 0
  %t548 = insertvalue { i64, ptr } undef, i64 %t547, 0
  %t549 = insertvalue { i64, ptr } %t548, ptr %t546, 1
  store { i64, ptr } %t549, ptr %l18, !tbaa !27
  store ptr %l14, ptr %l210, !tbaa !29
  %t551 = load ptr, ptr %l0, !tbaa !29
  %t553 = getelementptr %"compiler/load:Loader", ptr %t551, i32 0, i32 20
  %t554 = load { i64, ptr }, ptr %t553, !tbaa !27
  %t556 = call { i64, ptr } @compiler_2fload_2efileStamp(ptr %v0, ptr %s0, { i64, ptr } %t554)
  store { i64, ptr } %t556, ptr %l213
  br label %bb128
bb127:
  call void @__olang_check_failed(ptr @olang_loc_4449aa9d363b5b4e_4db0be62c6b6e3d2)
  unreachable
bb128:
  %t557 = call { i64, ptr } @compiler_2fload_2efileStamp(ptr %s0, ptr %s0, { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d118, i32 0, i32 1) })
  store { i64, ptr } %t557, ptr %l214
  br label %bb129
bb129:
  %t558 = load { i64, ptr }, ptr %l213, !tbaa !27
  %t559 = extractvalue { i64, ptr } %t558, 1
  %t560 = extractvalue { i64, ptr } %t558, 0
  %t561 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d119, i32 0, i32 1) }, 1
  %t562 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d119, i32 0, i32 1) }, 0
  %t563 = add i64 %t560, %t562
  %t564 = load { i64, ptr }, ptr %l214, !tbaa !27
  %t565 = extractvalue { i64, ptr } %t564, 1
  %t566 = extractvalue { i64, ptr } %t564, 0
  %t567 = add i64 %t563, %t566
  %t568 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d119, i32 0, i32 1) }, 1
  %t569 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d119, i32 0, i32 1) }, 0
  %t570 = add i64 %t567, %t569
  %t571 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t570)
  call void @olang_textcopy(ptr %t571, ptr %t559, i64 %t560)
  %t572 = getelementptr i8, ptr %t571, i64 %t560
  call void @olang_textcopy(ptr %t572, ptr %t561, i64 %t562)
  %t573 = getelementptr i8, ptr %t572, i64 %t562
  call void @olang_textcopy(ptr %t573, ptr %t565, i64 %t566)
  %t574 = getelementptr i8, ptr %t573, i64 %t566
  call void @olang_textcopy(ptr %t574, ptr %t568, i64 %t569)
  %t575 = insertvalue { i64, ptr } undef, i64 %t570, 0
  %t576 = insertvalue { i64, ptr } %t575, ptr %t571, 1
  %t578 = extractvalue { i64, ptr } %t576, 0
  %t579 = extractvalue { i64, ptr } %t576, 1
  %t580 = mul i64 %t578, 1
  %t581 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t580)
  call void @llvm.memcpy.p0.p0.i64(ptr %t581, ptr %t579, i64 %t580, i1 false)
  %t582 = insertvalue { i64, ptr } undef, i64 %t578, 0
  %t583 = insertvalue { i64, ptr } %t582, ptr %t581, 1
  %t584 = load ptr, ptr %l210, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s0, ptr %t584, { i64, ptr } %t583)
  br label %bb130
bb130:
  %t587 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %s0, ptr %s0, ptr %l14)
  store { i64, ptr } %t587, ptr %l218
  br label %bb131
bb131:
  %t588 = load { i64, ptr }, ptr %l218, !tbaa !27
  %t590 = extractvalue { i64, ptr } %t588, 0
  %t591 = extractvalue { i64, ptr } %t588, 1
  %t592 = mul i64 %t590, 1
  %t593 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t592)
  call void @llvm.memcpy.p0.p0.i64(ptr %t593, ptr %t591, i64 %t592, i1 false)
  %t594 = insertvalue { i64, ptr } undef, i64 %t590, 0
  %t595 = insertvalue { i64, ptr } %t594, ptr %t593, 1
  %t597 = call { i64, ptr } @std_2fsha256_2eHex(ptr %s0, ptr %s0, { i64, ptr } %t595)
  store { i64, ptr } %t597, ptr %l221
  br label %bb132
bb132:
  %t598 = load { i64, ptr }, ptr %l221, !tbaa !27
  %t599 = extractvalue { i64, ptr } %t598, 0
  store i64 %t599, ptr %l222, !tbaa !24
  %t600 = icmp sge i64 0, 0
  br i1 %t600, label %bb133, label %bb134
bb133:
  %t602 = icmp sle i64 0, 32
  br i1 %t602, label %bb135, label %bb136
bb134:
  call void @__olang_check_failed(ptr @olang_loc_7c6f8f6ffdbdf94b_ce4c5ade044a53cf)
  unreachable
bb135:
  %t604 = load i64, ptr %l222, !tbaa !24
  %t605 = icmp sle i64 32, %t604
  br i1 %t605, label %bb137, label %bb138
bb136:
  call void @__olang_check_failed(ptr @olang_loc_7c6f8f6ffdbdf94b_ce4c5ade044a53cf)
  unreachable
bb137:
  %t607 = getelementptr { i64, ptr }, ptr %l221, i32 0, i32 1
  %t608 = load ptr, ptr %t607, !tbaa !27
  %t609 = getelementptr i8, ptr %t608, i64 0
  %t610 = sub i64 32, 0
  %t611 = insertvalue { i64, ptr } undef, i64 %t610, 0
  %t612 = insertvalue { i64, ptr } %t611, ptr %t609, 1
  store { i64, ptr } %t612, ptr %l19, !tbaa !27
  %t614 = call { i64, ptr } @compiler_2ffetch_2eCacheDir(ptr %s0)
  store { i64, ptr } %t614, ptr %l227
  br label %bb139
bb138:
  call void @__olang_check_failed(ptr @olang_loc_7c6f8f6ffdbdf94b_ce4c5ade044a53cf)
  unreachable
bb139:
  %t615 = load { i64, ptr }, ptr %l227, !tbaa !27
  %t616 = extractvalue { i64, ptr } %t615, 1
  %t617 = extractvalue { i64, ptr } %t615, 0
  %t618 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d120, i32 0, i32 1) }, 1
  %t619 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d120, i32 0, i32 1) }, 0
  %t620 = add i64 %t617, %t619
  %t621 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t620)
  call void @olang_textcopy(ptr %t621, ptr %t616, i64 %t617)
  %t622 = getelementptr i8, ptr %t621, i64 %t617
  call void @olang_textcopy(ptr %t622, ptr %t618, i64 %t619)
  %t623 = insertvalue { i64, ptr } undef, i64 %t620, 0
  %t624 = insertvalue { i64, ptr } %t623, ptr %t621, 1
  store { i64, ptr } %t624, ptr %l20, !tbaa !27
  %t626 = load { i64, ptr }, ptr %l20, !tbaa !27
  %t627 = load { i64, ptr }, ptr %l19, !tbaa !27
  %t629 = extractvalue { i64, ptr } %t626, 1
  %t630 = extractvalue { i64, ptr } %t626, 0
  %t631 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d121, i32 0, i32 1) }, 1
  %t632 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d121, i32 0, i32 1) }, 0
  %t633 = add i64 %t630, %t632
  %t635 = extractvalue { i64, ptr } %t627, 1
  %t636 = extractvalue { i64, ptr } %t627, 0
  %t637 = add i64 %t633, %t636
  %t638 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t637)
  call void @olang_textcopy(ptr %t638, ptr %t629, i64 %t630)
  %t639 = getelementptr i8, ptr %t638, i64 %t630
  call void @olang_textcopy(ptr %t639, ptr %t631, i64 %t632)
  %t640 = getelementptr i8, ptr %t639, i64 %t632
  call void @olang_textcopy(ptr %t640, ptr %t635, i64 %t636)
  %t641 = insertvalue { i64, ptr } undef, i64 %t637, 0
  %t642 = insertvalue { i64, ptr } %t641, ptr %t638, 1
  store { i64, ptr } %t642, ptr %l21, !tbaa !27
  %t644 = load { i64, ptr }, ptr %l21, !tbaa !27
  %t646 = call { i64, ptr } @compiler_2fload_2ecachedTranslation(ptr %s0, ptr %s0, { i64, ptr } %t644)
  store { i64, ptr } %t646, ptr %l233
  br label %bb140
bb140:
  %t647 = load { i64, ptr }, ptr %l233, !tbaa !27
  store { i64, ptr } %t647, ptr %l22, !tbaa !27
  %t648 = load { i64, ptr }, ptr %l22, !tbaa !27
  %t650 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %s0, { i64, ptr } %t648, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d122, i32 0, i32 1) })
  store i1 %t650, ptr %l235
  br label %bb141
bb141:
  %t651 = load i1, ptr %l235, !tbaa !21
  br i1 %t651, label %bb142, label %bb143
bb142:
  store %olang.scope zeroinitializer, ptr %s29
  %t652 = load { i64, ptr }, ptr %l9, !tbaa !27
  store { i64, ptr } %t652, ptr %l236, !tbaa !27
  %t653 = load { i64, ptr }, ptr %l10, !tbaa !27
  store { i64, ptr } %t653, ptr %l237, !tbaa !27
  %t654 = load ptr, ptr %l0, !tbaa !29
  %t656 = getelementptr %"compiler/load:Loader", ptr %t654, i32 0, i32 20
  %t657 = load { i64, ptr }, ptr %t656, !tbaa !27
  store { i64, ptr } %t657, ptr %l239, !tbaa !27
  %t658 = load ptr, ptr %l0, !tbaa !29
  %t660 = getelementptr %"compiler/load:Loader", ptr %t658, i32 0, i32 21
  %t662 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H835e186358a312b102cd15b4faa0b451(ptr %v0, ptr %v0, ptr %t660)
  store { i64, ptr } %t662, ptr %l242
  br label %bb144
bb143:
  br label %bb202
bb144:
  %t663 = load { i64, ptr }, ptr %l18, !tbaa !27
  %t664 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t665 = load { i64, ptr }, ptr %l236, !tbaa !27
  %t666 = load { i64, ptr }, ptr %l237, !tbaa !27
  %t667 = load { i64, ptr }, ptr %l239, !tbaa !27
  %t668 = load { i64, ptr }, ptr %l242, !tbaa !27
  %t671 = call %"compiler/bindgen:Translation" @compiler_2fbindgen_2eTranslation_2eTranslate(ptr %s0, ptr %s0, ptr %v0, ptr %v0, ptr %s0, ptr %v1, ptr %s29, { i64, ptr } %t665, { i64, ptr } %t666, { i64, ptr } %t667, { i64, ptr } %t668, { i64, ptr } %t663, { i64, ptr } %t664)
  store %"compiler/bindgen:Translation" %t671, ptr %l245
  br label %bb145
bb145:
  %t672 = load %"compiler/bindgen:Translation", ptr %l245
  store %"compiler/bindgen:Translation" %t672, ptr %l23
  %t673 = getelementptr %"compiler/bindgen:Translation", ptr %l23, i32 0, i32 3
  %t674 = load { i64, ptr }, ptr %t673, !tbaa !27
  %t676 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s29, ptr %s29, { i64, ptr } %t674, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d123, i32 0, i32 1) })
  store i1 %t676, ptr %l247
  br label %bb146
bb146:
  %t677 = load i1, ptr %l247, !tbaa !21
  %t678 = xor i1 %t677, true
  br i1 %t678, label %bb147, label %bb148
bb147:
  %t680 = getelementptr %"compiler/bindgen:Translation", ptr %l23, i32 0, i32 4
  %t681 = load i1, ptr %t680, !tbaa !21
  br i1 %t681, label %bb149, label %bb150
bb148:
  br label %bb156
bb149:
  %t683 = load ptr, ptr %l0, !tbaa !29
  %t685 = getelementptr %"compiler/load:Loader", ptr %t683, i32 0, i32 4
  %t686 = load ptr, ptr %t685, !tbaa !29
  store ptr %t686, ptr %l251, !tbaa !29
  %t687 = load { i64, [3 x i64] }, ptr %l4
  store { i64, [3 x i64] } %t687, ptr %l252
  %t688 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t690 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eCHeaderNotFound(ptr %v1, ptr %v0, { i64, ptr } %t688)
  store %"compiler/diagmsg:Msg" %t690, ptr %l254
  br label %bb151
bb150:
  %t691 = load ptr, ptr %l0, !tbaa !29
  %t693 = getelementptr %"compiler/load:Loader", ptr %t691, i32 0, i32 4
  %t694 = load ptr, ptr %t693, !tbaa !29
  store ptr %t694, ptr %l257, !tbaa !29
  %t695 = load { i64, [3 x i64] }, ptr %l4
  store { i64, [3 x i64] } %t695, ptr %l258
  %t696 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t697 = getelementptr %"compiler/bindgen:Translation", ptr %l23, i32 0, i32 3
  %t698 = load { i64, ptr }, ptr %t697, !tbaa !27
  %t701 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eCImportFailed(ptr %v1, ptr %s29, ptr %v0, { i64, ptr } %t696, { i64, ptr } %t698)
  store %"compiler/diagmsg:Msg" %t701, ptr %l261
  br label %bb153
bb151:
  %t702 = load ptr, ptr %l251, !tbaa !29
  %t703 = load { i64, [3 x i64] }, ptr %l252
  %t704 = load %"compiler/diagmsg:Msg", ptr %l254
  %t705 = call i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eError(ptr %v0, ptr %v0, ptr %t702, { i64, [3 x i64] } %t703, %"compiler/diagmsg:Msg" %t704)
  store i64 %t705, ptr %l255
  br label %bb152
bb152:
  br label %bb155
bb153:
  %t706 = load ptr, ptr %l257, !tbaa !29
  %t707 = load { i64, [3 x i64] }, ptr %l258
  %t708 = load %"compiler/diagmsg:Msg", ptr %l261
  %t709 = call i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eError(ptr %v0, ptr %v0, ptr %t706, { i64, [3 x i64] } %t707, %"compiler/diagmsg:Msg" %t708)
  store i64 %t709, ptr %l262
  br label %bb154
bb154:
  br label %bb155
bb155:
  call void @__olang_scope_close(ptr %s29)
  call void @__olang_scope_close(ptr %s0)
  store i64 -1, ptr %rv
  br label %ret
bb156:
  %t711 = call %"std/prelude/text:StringBuilder" @std_2fprelude_2ftext_3aStringBuilder_2ector(ptr %s29)
  store %"std/prelude/text:StringBuilder" %t711, ptr %l264
  br label %bb157
bb157:
  %t712 = load %"std/prelude/text:StringBuilder", ptr %l264
  store %"std/prelude/text:StringBuilder" %t712, ptr %l24
  %t713 = getelementptr %"compiler/bindgen:Translation", ptr %l23, i32 0, i32 2
  store ptr %t713, ptr %l25, !tbaa !29
  store i64 0, ptr %l26, !tbaa !24
  br label %bb158
bb158:
  store %olang.scope zeroinitializer, ptr %s34
  %t715 = load i64, ptr %l26, !tbaa !24
  store i64 %t715, ptr %l266, !tbaa !24
  %t716 = load ptr, ptr %l25, !tbaa !29
  %t718 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %s29, ptr %t716)
  store i64 %t718, ptr %l268
  br label %bb159
bb159:
  %t719 = load i64, ptr %l266, !tbaa !24
  %t720 = load i64, ptr %l268, !tbaa !24
  %t721 = icmp slt i64 %t719, %t720
  %t723 = xor i1 %t721, true
  br i1 %t723, label %bb160, label %bb161
bb160:
  call void @__olang_scope_close(ptr %s34)
  br label %bb172
bb161:
  br label %bb162
bb162:
  %t725 = load ptr, ptr %l25, !tbaa !29
  %t726 = load i64, ptr %l26, !tbaa !24
  %t729 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %s29, ptr %s29, ptr %t725, i64 %t726)
  store { i64, ptr } %t729, ptr %l273
  br label %bb163
bb163:
  %t730 = load { i64, ptr }, ptr %l273, !tbaa !27
  store { i64, ptr } %t730, ptr %l27, !tbaa !27
  %t731 = load { i64, ptr }, ptr %l27, !tbaa !27
  %t733 = call { i32, %"std/os:FileInfo" } @std_2fos_2eFileInfo_2eStat(ptr %s29, { i64, ptr } %t731)
  %t734 = extractvalue { i32, %"std/os:FileInfo" } %t733, 1
  %t735 = extractvalue { i32, %"std/os:FileInfo" } %t733, 0
  store i32 %t735, ptr %l277
  %t736 = icmp ne i32 %t735, 0
  br i1 %t736, label %bb165, label %ok.737, !prof !99
ok.737:
  store %"std/os:FileInfo" %t734, ptr %l276
  br label %bb164
bb164:
  %t738 = load %"std/os:FileInfo", ptr %l276
  store %"std/os:FileInfo" %t738, ptr %l274
  br label %bb169
bb165:
  %t739 = load i32, ptr %l277, !tbaa !23
  %t740 = ashr i32 %t739, 16
  %t742 = icmp eq i32 %t740, 1
  store i1 %t742, ptr %l279, !tbaa !21
  %t743 = load i32, ptr %l277, !tbaa !23
  %t744 = ashr i32 %t743, 16
  %t746 = icmp eq i32 %t744, 1
  br i1 %t746, label %bb166, label %bb167
bb166:
  call void @__olang_errpay_pop()
  br label %bb167
bb167:
  br label %bb168
bb168:
  call void @__olang_scope_close(ptr %s34)
  br label %bb171
bb169:
  %t748 = load %"std/os:FileInfo", ptr %l274
  store %"std/os:FileInfo" %t748, ptr %l28
  %t749 = getelementptr %"std/os:FileInfo", ptr %l28, i32 0, i32 1
  %t750 = load i64, ptr %t749, !tbaa !24
  %t751 = getelementptr %"std/os:FileInfo", ptr %l28, i32 0, i32 2
  %t752 = load i64, ptr %t751, !tbaa !24
  %t753 = load { i64, ptr }, ptr %l27, !tbaa !27
  %t755 = call i64 @__olang_fmt_i64(ptr null, i64 %t750)
  %t756 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d124, i32 0, i32 1) }, 1
  %t757 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d124, i32 0, i32 1) }, 0
  %t758 = add i64 %t755, %t757
  %t760 = call i64 @__olang_fmt_i64(ptr null, i64 %t752)
  %t761 = add i64 %t758, %t760
  %t762 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d124, i32 0, i32 1) }, 1
  %t763 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d124, i32 0, i32 1) }, 0
  %t764 = add i64 %t761, %t763
  %t766 = extractvalue { i64, ptr } %t753, 1
  %t767 = extractvalue { i64, ptr } %t753, 0
  %t768 = add i64 %t764, %t767
  %t769 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d125, i32 0, i32 1) }, 1
  %t770 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d125, i32 0, i32 1) }, 0
  %t771 = add i64 %t768, %t770
  %t772 = call ptr @__olang_scope_alloc(ptr %s34, i64 %t771)
  %t773 = call i64 @__olang_fmt_i64(ptr %t772, i64 %t750)
  %t774 = getelementptr i8, ptr %t772, i64 %t755
  call void @olang_textcopy(ptr %t774, ptr %t756, i64 %t757)
  %t775 = getelementptr i8, ptr %t774, i64 %t757
  %t776 = call i64 @__olang_fmt_i64(ptr %t775, i64 %t752)
  %t777 = getelementptr i8, ptr %t775, i64 %t760
  call void @olang_textcopy(ptr %t777, ptr %t762, i64 %t763)
  %t778 = getelementptr i8, ptr %t777, i64 %t763
  call void @olang_textcopy(ptr %t778, ptr %t766, i64 %t767)
  %t779 = getelementptr i8, ptr %t778, i64 %t767
  call void @olang_textcopy(ptr %t779, ptr %t769, i64 %t770)
  %t780 = insertvalue { i64, ptr } undef, i64 %t771, 0
  %t781 = insertvalue { i64, ptr } %t780, ptr %t772, 1
  %t783 = extractvalue { i64, ptr } %t781, 0
  %t784 = extractvalue { i64, ptr } %t781, 1
  %t785 = mul i64 %t783, 1
  %t786 = call ptr @__olang_scope_alloc(ptr %s34, i64 %t785)
  call void @llvm.memcpy.p0.p0.i64(ptr %t786, ptr %t784, i64 %t785, i1 false)
  %t787 = insertvalue { i64, ptr } undef, i64 %t783, 0
  %t788 = insertvalue { i64, ptr } %t787, ptr %t786, 1
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s29, ptr %s34, ptr %l24, { i64, ptr } %t788)
  br label %bb170
bb170:
  call void @__olang_scope_close(ptr %s34)
  br label %bb171
bb171:
  %t791 = load i64, ptr %l26, !tbaa !24
  %t793 = add i64 %t791, 1
  store i64 %t793, ptr %l26, !tbaa !24
  br label %bb158
bb172:
  %t796 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %s29, ptr %s29, ptr %l24)
  store { i64, ptr } %t796, ptr %l291
  br label %bb173
bb173:
  %t797 = load { i64, ptr }, ptr %l291, !tbaa !27
  %t799 = extractvalue { i64, ptr } %t797, 0
  %t800 = extractvalue { i64, ptr } %t797, 1
  %t801 = mul i64 %t799, 1
  %t802 = call ptr @__olang_scope_alloc(ptr %s29, i64 %t801)
  call void @llvm.memcpy.p0.p0.i64(ptr %t802, ptr %t800, i64 %t801, i1 false)
  %t803 = insertvalue { i64, ptr } undef, i64 %t799, 0
  %t804 = insertvalue { i64, ptr } %t803, ptr %t802, 1
  %t806 = call { i64, ptr } @std_2fsha256_2eHex(ptr %s29, ptr %s29, { i64, ptr } %t804)
  store { i64, ptr } %t806, ptr %l294
  br label %bb174
bb174:
  %t807 = load { i64, ptr }, ptr %l294, !tbaa !27
  %t808 = extractvalue { i64, ptr } %t807, 0
  store i64 %t808, ptr %l295, !tbaa !24
  %t809 = icmp sge i64 0, 0
  br i1 %t809, label %bb175, label %bb176
bb175:
  %t811 = icmp sle i64 0, 16
  br i1 %t811, label %bb177, label %bb178
bb176:
  call void @__olang_check_failed(ptr @olang_loc_cc736817fb6c70d0_6e757e50f6c823e4)
  unreachable
bb177:
  %t813 = load i64, ptr %l295, !tbaa !24
  %t814 = icmp sle i64 16, %t813
  br i1 %t814, label %bb179, label %bb180
bb178:
  call void @__olang_check_failed(ptr @olang_loc_cc736817fb6c70d0_6e757e50f6c823e4)
  unreachable
bb179:
  %t816 = getelementptr { i64, ptr }, ptr %l294, i32 0, i32 1
  %t817 = load ptr, ptr %t816, !tbaa !27
  %t818 = getelementptr i8, ptr %t817, i64 0
  %t819 = sub i64 16, 0
  %t820 = insertvalue { i64, ptr } undef, i64 %t819, 0
  %t821 = insertvalue { i64, ptr } %t820, ptr %t818, 1
  store { i64, ptr } %t821, ptr %l29, !tbaa !27
  %t823 = getelementptr %"compiler/bindgen:Translation", ptr %l23, i32 0, i32 1
  %t824 = load { i64, ptr }, ptr %t823, !tbaa !27
  %t826 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s29, ptr %s29, { i64, ptr } %t824, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d126, i32 0, i32 1) })
  store i1 %t826, ptr %l301
  br label %bb181
bb180:
  call void @__olang_check_failed(ptr @olang_loc_cc736817fb6c70d0_6e757e50f6c823e4)
  unreachable
bb181:
  %t827 = load i1, ptr %l301, !tbaa !21
  br i1 %t827, label %bb182, label %bb183
bb182:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d127, i32 0, i32 1) }, ptr %l302, !tbaa !27
  br label %bb184
bb183:
  %t828 = load { i64, ptr }, ptr %l29, !tbaa !27
  %t829 = getelementptr %"compiler/bindgen:Translation", ptr %l23, i32 0, i32 1
  %t830 = load { i64, ptr }, ptr %t829, !tbaa !27
  %t831 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d128, i32 0, i32 1) }, 1
  %t832 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d128, i32 0, i32 1) }, 0
  %t834 = extractvalue { i64, ptr } %t828, 1
  %t835 = extractvalue { i64, ptr } %t828, 0
  %t836 = add i64 %t832, %t835
  %t837 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d129, i32 0, i32 1) }, 1
  %t838 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d129, i32 0, i32 1) }, 0
  %t839 = add i64 %t836, %t838
  %t841 = extractvalue { i64, ptr } %t830, 1
  %t842 = extractvalue { i64, ptr } %t830, 0
  %t843 = add i64 %t839, %t842
  %t844 = call ptr @__olang_scope_alloc(ptr %s29, i64 %t843)
  call void @olang_textcopy(ptr %t844, ptr %t831, i64 %t832)
  %t845 = getelementptr i8, ptr %t844, i64 %t832
  call void @olang_textcopy(ptr %t845, ptr %t834, i64 %t835)
  %t846 = getelementptr i8, ptr %t845, i64 %t835
  call void @olang_textcopy(ptr %t846, ptr %t837, i64 %t838)
  %t847 = getelementptr i8, ptr %t846, i64 %t838
  call void @olang_textcopy(ptr %t847, ptr %t841, i64 %t842)
  %t848 = insertvalue { i64, ptr } undef, i64 %t843, 0
  %t849 = insertvalue { i64, ptr } %t848, ptr %t844, 1
  %t851 = extractvalue { i64, ptr } %t849, 0
  %t852 = extractvalue { i64, ptr } %t849, 1
  %t853 = mul i64 %t851, 1
  %t854 = call ptr @__olang_scope_alloc(ptr %s29, i64 %t853)
  call void @llvm.memcpy.p0.p0.i64(ptr %t854, ptr %t852, i64 %t853, i1 false)
  %t855 = insertvalue { i64, ptr } undef, i64 %t851, 0
  %t856 = insertvalue { i64, ptr } %t855, ptr %t854, 1
  store { i64, ptr } %t856, ptr %l302, !tbaa !27
  br label %bb184
bb184:
  %t858 = load { i64, ptr }, ptr %l302, !tbaa !27
  store { i64, ptr } %t858, ptr %l30, !tbaa !27
  %t859 = load { i64, ptr }, ptr %l20, !tbaa !27
  %t860 = load { i64, ptr }, ptr %l21, !tbaa !27
  %t862 = extractvalue { i64, ptr } %t860, 1
  %t863 = extractvalue { i64, ptr } %t860, 0
  %t864 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d130, i32 0, i32 1) }, 1
  %t865 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d130, i32 0, i32 1) }, 0
  %t866 = add i64 %t863, %t865
  %t867 = call ptr @__olang_scope_alloc(ptr %s29, i64 %t866)
  call void @olang_textcopy(ptr %t867, ptr %t862, i64 %t863)
  %t868 = getelementptr i8, ptr %t867, i64 %t863
  call void @olang_textcopy(ptr %t868, ptr %t864, i64 %t865)
  %t869 = insertvalue { i64, ptr } undef, i64 %t866, 0
  %t870 = insertvalue { i64, ptr } %t869, ptr %t867, 1
  %t872 = extractvalue { i64, ptr } %t870, 0
  %t873 = extractvalue { i64, ptr } %t870, 1
  %t874 = mul i64 %t872, 1
  %t875 = call ptr @__olang_scope_alloc(ptr %s29, i64 %t874)
  call void @llvm.memcpy.p0.p0.i64(ptr %t875, ptr %t873, i64 %t874, i1 false)
  %t876 = insertvalue { i64, ptr } undef, i64 %t872, 0
  %t877 = insertvalue { i64, ptr } %t876, ptr %t875, 1
  %t878 = getelementptr %"compiler/bindgen:Translation", ptr %l23, i32 0, i32 0
  %t879 = load { i64, ptr }, ptr %t878, !tbaa !27
  %t883 = call i1 @compiler_2fload_2ekeepFile(ptr %s0, ptr %s29, ptr %s29, { i64, ptr } %t859, { i64, ptr } %t877, { i64, ptr } %t879)
  store i1 %t883, ptr %l312
  br label %bb185
bb185:
  %t884 = load i1, ptr %l312, !tbaa !21
  %t885 = xor i1 %t884, true
  br i1 %t885, label %bb186, label %bb187
bb186:
  store i1 true, ptr %l314, !tbaa !21
  br label %bb189
bb187:
  %t887 = load { i64, ptr }, ptr %l20, !tbaa !27
  %t888 = load { i64, ptr }, ptr %l21, !tbaa !27
  %t890 = extractvalue { i64, ptr } %t888, 1
  %t891 = extractvalue { i64, ptr } %t888, 0
  %t892 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d131, i32 0, i32 1) }, 1
  %t893 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d131, i32 0, i32 1) }, 0
  %t894 = add i64 %t891, %t893
  %t895 = call ptr @__olang_scope_alloc(ptr %s29, i64 %t894)
  call void @olang_textcopy(ptr %t895, ptr %t890, i64 %t891)
  %t896 = getelementptr i8, ptr %t895, i64 %t891
  call void @olang_textcopy(ptr %t896, ptr %t892, i64 %t893)
  %t897 = insertvalue { i64, ptr } undef, i64 %t894, 0
  %t898 = insertvalue { i64, ptr } %t897, ptr %t895, 1
  %t900 = extractvalue { i64, ptr } %t898, 0
  %t901 = extractvalue { i64, ptr } %t898, 1
  %t902 = mul i64 %t900, 1
  %t903 = call ptr @__olang_scope_alloc(ptr %s29, i64 %t902)
  call void @llvm.memcpy.p0.p0.i64(ptr %t903, ptr %t901, i64 %t902, i1 false)
  %t904 = insertvalue { i64, ptr } undef, i64 %t900, 0
  %t905 = insertvalue { i64, ptr } %t904, ptr %t903, 1
  %t906 = load { i64, ptr }, ptr %l30, !tbaa !27
  %t910 = call i1 @compiler_2fload_2ekeepFile(ptr %s0, ptr %s29, ptr %s29, { i64, ptr } %t887, { i64, ptr } %t905, { i64, ptr } %t906)
  store i1 %t910, ptr %l320
  br label %bb188
bb188:
  %t911 = load i1, ptr %l320, !tbaa !21
  %t912 = xor i1 %t911, true
  store i1 %t912, ptr %l314, !tbaa !21
  br label %bb189
bb189:
  %t914 = load i1, ptr %l314, !tbaa !21
  br i1 %t914, label %bb190, label %bb191
bb190:
  store i1 true, ptr %l322, !tbaa !21
  br label %bb194
bb191:
  %t915 = load { i64, ptr }, ptr %l20, !tbaa !27
  store { i64, ptr } %t915, ptr %l323, !tbaa !27
  %t916 = load { i64, ptr }, ptr %l21, !tbaa !27
  %t918 = extractvalue { i64, ptr } %t916, 1
  %t919 = extractvalue { i64, ptr } %t916, 0
  %t920 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d132, i32 0, i32 1) }, 1
  %t921 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d132, i32 0, i32 1) }, 0
  %t922 = add i64 %t919, %t921
  %t923 = call ptr @__olang_scope_alloc(ptr %s29, i64 %t922)
  call void @olang_textcopy(ptr %t923, ptr %t918, i64 %t919)
  %t924 = getelementptr i8, ptr %t923, i64 %t919
  call void @olang_textcopy(ptr %t924, ptr %t920, i64 %t921)
  %t925 = insertvalue { i64, ptr } undef, i64 %t922, 0
  %t926 = insertvalue { i64, ptr } %t925, ptr %t923, 1
  %t928 = extractvalue { i64, ptr } %t926, 0
  %t929 = extractvalue { i64, ptr } %t926, 1
  %t930 = mul i64 %t928, 1
  %t931 = call ptr @__olang_scope_alloc(ptr %s29, i64 %t930)
  call void @llvm.memcpy.p0.p0.i64(ptr %t931, ptr %t929, i64 %t930, i1 false)
  %t932 = insertvalue { i64, ptr } undef, i64 %t928, 0
  %t933 = insertvalue { i64, ptr } %t932, ptr %t931, 1
  store { i64, ptr } %t933, ptr %l326, !tbaa !27
  %t935 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %s29, ptr %s29, ptr %l24)
  store { i64, ptr } %t935, ptr %l328
  br label %bb192
bb192:
  %t936 = load { i64, ptr }, ptr %l328, !tbaa !27
  %t937 = extractvalue { i64, ptr } %t936, 0
  %t938 = extractvalue { i64, ptr } %t936, 1
  %t939 = mul i64 %t937, 1
  %t940 = call ptr @__olang_scope_alloc(ptr %s29, i64 %t939)
  call void @llvm.memcpy.p0.p0.i64(ptr %t940, ptr %t938, i64 %t939, i1 false)
  %t941 = insertvalue { i64, ptr } undef, i64 %t937, 0
  %t942 = insertvalue { i64, ptr } %t941, ptr %t940, 1
  %t943 = load { i64, ptr }, ptr %l323, !tbaa !27
  %t944 = load { i64, ptr }, ptr %l326, !tbaa !27
  %t946 = call i1 @compiler_2fload_2ekeepFile(ptr %s0, ptr %s29, ptr %s29, { i64, ptr } %t943, { i64, ptr } %t944, { i64, ptr } %t942)
  store i1 %t946, ptr %l330
  br label %bb193
bb193:
  %t947 = load i1, ptr %l330, !tbaa !21
  %t948 = xor i1 %t947, true
  store i1 %t948, ptr %l322, !tbaa !21
  br label %bb194
bb194:
  %t950 = load i1, ptr %l322, !tbaa !21
  br i1 %t950, label %bb195, label %bb196
bb195:
  store %olang.scope zeroinitializer, ptr %s42
  %t951 = load ptr, ptr %l0, !tbaa !29
  %t953 = getelementptr %"compiler/load:Loader", ptr %t951, i32 0, i32 4
  %t954 = load ptr, ptr %t953, !tbaa !29
  store ptr %t954, ptr %l333, !tbaa !29
  %t955 = load { i64, [3 x i64] }, ptr %l4
  store { i64, [3 x i64] } %t955, ptr %l334
  %t956 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t957 = load { i64, ptr }, ptr %l20, !tbaa !27
  %t958 = extractvalue { i64, ptr } { i64 39, ptr getelementptr inbounds (<{ i64, [39 x i8] }>, ptr @.d133, i32 0, i32 1) }, 1
  %t959 = extractvalue { i64, ptr } { i64 39, ptr getelementptr inbounds (<{ i64, [39 x i8] }>, ptr @.d133, i32 0, i32 1) }, 0
  %t961 = extractvalue { i64, ptr } %t957, 1
  %t962 = extractvalue { i64, ptr } %t957, 0
  %t963 = add i64 %t959, %t962
  %t964 = call ptr @__olang_scope_alloc(ptr %s42, i64 %t963)
  call void @olang_textcopy(ptr %t964, ptr %t958, i64 %t959)
  %t965 = getelementptr i8, ptr %t964, i64 %t959
  call void @olang_textcopy(ptr %t965, ptr %t961, i64 %t962)
  %t966 = insertvalue { i64, ptr } undef, i64 %t963, 0
  %t967 = insertvalue { i64, ptr } %t966, ptr %t964, 1
  %t969 = extractvalue { i64, ptr } %t967, 0
  %t970 = extractvalue { i64, ptr } %t967, 1
  %t971 = mul i64 %t969, 1
  %t972 = call ptr @__olang_scope_alloc(ptr %s42, i64 %t971)
  call void @llvm.memcpy.p0.p0.i64(ptr %t972, ptr %t970, i64 %t971, i1 false)
  %t973 = insertvalue { i64, ptr } undef, i64 %t969, 0
  %t974 = insertvalue { i64, ptr } %t973, ptr %t972, 1
  %t977 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eCImportFailed(ptr %v1, ptr %s42, ptr %v0, { i64, ptr } %t956, { i64, ptr } %t974)
  store %"compiler/diagmsg:Msg" %t977, ptr %l339
  br label %bb197
bb196:
  br label %bb199
bb197:
  %t978 = load ptr, ptr %l333, !tbaa !29
  %t979 = load { i64, [3 x i64] }, ptr %l334
  %t980 = load %"compiler/diagmsg:Msg", ptr %l339
  %t981 = call i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eError(ptr %v0, ptr %v0, ptr %t978, { i64, [3 x i64] } %t979, %"compiler/diagmsg:Msg" %t980)
  store i64 %t981, ptr %l340
  br label %bb198
bb198:
  call void @__olang_scope_close(ptr %s42)
  call void @__olang_scope_close(ptr %s29)
  call void @__olang_scope_close(ptr %s0)
  store i64 -1, ptr %rv
  br label %ret
bb199:
  %t983 = getelementptr %"compiler/bindgen:Translation", ptr %l23, i32 0, i32 0
  %t984 = load { i64, ptr }, ptr %t983, !tbaa !27
  store { i64, ptr } %t984, ptr %l343, !tbaa !27
  %t986 = load { i64, ptr }, ptr %l22, !tbaa !27
  store { i64, ptr } %t986, ptr %l344, !tbaa !27
  %t987 = load { i64, ptr }, ptr %l343, !tbaa !27
  %t988 = extractvalue { i64, ptr } %t987, 0
  store i64 %t988, ptr %l345, !tbaa !24
  %t989 = load i64, ptr %l345, !tbaa !24
  %t990 = mul i64 %t989, 1
  %t991 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t990)
  %t992 = insertvalue { i64, ptr } undef, i64 %t989, 0
  %t993 = insertvalue { i64, ptr } %t992, ptr %t991, 1
  store { i64, ptr } %t993, ptr %l346, !tbaa !27
  %t994 = getelementptr { i64, ptr }, ptr %l346, i32 0, i32 1
  %t995 = load ptr, ptr %t994, !tbaa !27
  %t996 = getelementptr { i64, ptr }, ptr %l343, i32 0, i32 1
  %t997 = load ptr, ptr %t996, !tbaa !27
  %t998 = load i64, ptr %l345, !tbaa !24
  %t999 = mul i64 %t998, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t995, ptr %t997, i64 %t999, i1 false)
  %t1000 = load { i64, ptr }, ptr %l346, !tbaa !27
  store { i64, ptr } %t1000, ptr %l22, !tbaa !27
  %t1001 = load i1, ptr @olang_2esole_2ecompiler__2fload__2ecompiler__2fload__3aLoader__2ecImport_2elocal_2e22
  br i1 %t1001, label %bb200, label %bb201
bb200:
  %t1003 = load { i64, ptr }, ptr %l344
  %t1004 = extractvalue { i64, ptr } %t1003, 1
  call void @__olang_region_release(ptr %t1004)
  store { i64, ptr } zeroinitializer, ptr %l344
  br label %bb201
bb201:
  call void @__olang_scope_close(ptr %s29)
  br label %bb202
bb202:
  %t1005 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1005, ptr %l348, !tbaa !29
  %t1006 = ptrtoint ptr %v0 to i64
  store i64 %t1006, ptr %l349, !tbaa !24
  %t1007 = load i1, ptr @olang_2esole_2ecompiler_2fload_3aModule_2e0
  br i1 %t1007, label %bb203, label %bb204
bb203:
  %t1009 = call ptr @__olang_region_make(ptr %v0)
  %t1010 = ptrtoint ptr %t1009 to i64
  store i64 %t1010, ptr %l349, !tbaa !24
  br label %bb204
bb204:
  %t1011 = load { i64, ptr }, ptr %l21, !tbaa !27
  %t1013 = extractvalue { i64, ptr } %t1011, 1
  %t1014 = extractvalue { i64, ptr } %t1011, 0
  %t1015 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d134, i32 0, i32 1) }, 1
  %t1016 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d134, i32 0, i32 1) }, 0
  %t1017 = add i64 %t1014, %t1016
  %t1018 = load i64, ptr %l349
  %t1019 = inttoptr i64 %t1018 to ptr
  %t1020 = call ptr @__olang_scope_alloc(ptr %t1019, i64 %t1017)
  call void @olang_textcopy(ptr %t1020, ptr %t1013, i64 %t1014)
  %t1021 = getelementptr i8, ptr %t1020, i64 %t1014
  call void @olang_textcopy(ptr %t1021, ptr %t1015, i64 %t1016)
  %t1022 = insertvalue { i64, ptr } undef, i64 %t1017, 0
  %t1023 = insertvalue { i64, ptr } %t1022, ptr %t1020, 1
  %t1025 = load i64, ptr %l349
  %t1026 = inttoptr i64 %t1025 to ptr
  %t1027 = extractvalue { i64, ptr } %t1023, 0
  %t1028 = extractvalue { i64, ptr } %t1023, 1
  %t1029 = mul i64 %t1027, 1
  %t1030 = call ptr @__olang_scope_alloc(ptr %t1026, i64 %t1029)
  call void @llvm.memcpy.p0.p0.i64(ptr %t1030, ptr %t1028, i64 %t1029, i1 false)
  %t1031 = insertvalue { i64, ptr } undef, i64 %t1027, 0
  %t1032 = insertvalue { i64, ptr } %t1031, ptr %t1030, 1
  %t1033 = load ptr, ptr %lp11
  %t1034 = load { i64, ptr }, ptr %t1033, !tbaa !27
  %t1035 = load ptr, ptr %l348, !tbaa !29
  %t1038 = call i64 @compiler_2fload_2ecompiler_2fload_3aLoader_2eload(ptr %v0, ptr %v0, ptr %v0, ptr %t1035, { i64, ptr } %t1032, { i64, ptr } %t1034, i1 false, i1 true)
  store i64 %t1038, ptr %l355
  br label %bb205
bb205:
  %t1039 = load i64, ptr %l355, !tbaa !24
  store i64 %t1039, ptr %l31, !tbaa !24
  %t1040 = load i64, ptr %l31, !tbaa !24
  %t1042 = icmp slt i64 %t1040, 0
  br i1 %t1042, label %bb206, label %bb207
bb206:
  call void @__olang_scope_close(ptr %s0)
  store i64 -1, ptr %rv
  br label %ret
bb207:
  br label %bb208
bb208:
  %t1045 = load ptr, ptr %l0, !tbaa !29
  %t1047 = getelementptr %"compiler/load:Loader", ptr %t1045, i32 0, i32 10
  %t1048 = load i64, ptr %l31, !tbaa !24
  %t1051 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H7bcf2aeb09afa796f4333e6ec8c3f63f(ptr %v0, ptr %v0, ptr %t1047, i64 %t1048)
  store ptr %t1051, ptr %l362
  br label %bb209
bb209:
  %t1052 = load ptr, ptr %l362, !tbaa !29
  store ptr %t1052, ptr %l32, !tbaa !29
  %t1053 = load { i64, ptr }, ptr %l21, !tbaa !27
  %t1055 = extractvalue { i64, ptr } %t1053, 1
  %t1056 = extractvalue { i64, ptr } %t1053, 0
  %t1057 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d135, i32 0, i32 1) }, 1
  %t1058 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d135, i32 0, i32 1) }, 0
  %t1059 = add i64 %t1056, %t1058
  %t1060 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t1059)
  call void @olang_textcopy(ptr %t1060, ptr %t1055, i64 %t1056)
  %t1061 = getelementptr i8, ptr %t1060, i64 %t1056
  call void @olang_textcopy(ptr %t1061, ptr %t1057, i64 %t1058)
  %t1062 = insertvalue { i64, ptr } undef, i64 %t1059, 0
  %t1063 = insertvalue { i64, ptr } %t1062, ptr %t1060, 1
  %t1065 = extractvalue { i64, ptr } %t1063, 0
  %t1066 = extractvalue { i64, ptr } %t1063, 1
  %t1067 = mul i64 %t1065, 1
  %t1068 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t1067)
  call void @llvm.memcpy.p0.p0.i64(ptr %t1068, ptr %t1066, i64 %t1067, i1 false)
  %t1069 = insertvalue { i64, ptr } undef, i64 %t1065, 0
  %t1070 = insertvalue { i64, ptr } %t1069, ptr %t1068, 1
  %t1072 = call i1 @std_2fos_2eExists(ptr %s0, { i64, ptr } %t1070)
  store i1 %t1072, ptr %l366
  br label %bb210
bb210:
  %t1073 = load i1, ptr %l366, !tbaa !21
  br i1 %t1073, label %bb211, label %bb212
bb211:
  %t1074 = load { i64, ptr }, ptr %l21, !tbaa !27
  %t1076 = extractvalue { i64, ptr } %t1074, 1
  %t1077 = extractvalue { i64, ptr } %t1074, 0
  %t1078 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d136, i32 0, i32 1) }, 1
  %t1079 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d136, i32 0, i32 1) }, 0
  %t1080 = add i64 %t1077, %t1079
  %t1081 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t1080)
  call void @olang_textcopy(ptr %t1081, ptr %t1076, i64 %t1077)
  %t1082 = getelementptr i8, ptr %t1081, i64 %t1077
  call void @olang_textcopy(ptr %t1082, ptr %t1078, i64 %t1079)
  %t1083 = insertvalue { i64, ptr } undef, i64 %t1080, 0
  %t1084 = insertvalue { i64, ptr } %t1083, ptr %t1081, 1
  %t1086 = extractvalue { i64, ptr } %t1084, 0
  %t1087 = extractvalue { i64, ptr } %t1084, 1
  %t1088 = mul i64 %t1086, 1
  %t1089 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t1088)
  call void @llvm.memcpy.p0.p0.i64(ptr %t1089, ptr %t1087, i64 %t1088, i1 false)
  %t1090 = insertvalue { i64, ptr } undef, i64 %t1086, 0
  %t1091 = insertvalue { i64, ptr } %t1090, ptr %t1089, 1
  %t1093 = call { i32, %"std/os:FileInfo" } @std_2fos_2eFileInfo_2eStat(ptr %s0, { i64, ptr } %t1091)
  %t1094 = extractvalue { i32, %"std/os:FileInfo" } %t1093, 1
  %t1095 = extractvalue { i32, %"std/os:FileInfo" } %t1093, 0
  store i32 %t1095, ptr %l373
  %t1096 = icmp ne i32 %t1095, 0
  br i1 %t1096, label %bb214, label %ok.1097, !prof !99
ok.1097:
  store %"std/os:FileInfo" %t1094, ptr %l372
  br label %bb213
bb212:
  store i1 false, ptr %l367, !tbaa !21
  br label %bb220
bb213:
  %t1098 = load %"std/os:FileInfo", ptr %l372
  store %"std/os:FileInfo" %t1098, ptr %l368
  br label %bb219
bb214:
  %t1099 = load i32, ptr %l373, !tbaa !23
  %t1100 = ashr i32 %t1099, 16
  %t1102 = icmp eq i32 %t1100, 1
  store i1 %t1102, ptr %l375, !tbaa !21
  %t1103 = load i32, ptr %l373, !tbaa !23
  %t1104 = ashr i32 %t1103, 16
  %t1106 = icmp eq i32 %t1104, 1
  br i1 %t1106, label %bb215, label %bb216
bb215:
  call void @__olang_errpay_pop()
  br label %bb216
bb216:
  br label %bb217
bb217:
  %t1109 = call %"std/os:FileInfo" @std_2fos_3aFileInfo_2ector(ptr %s0, i32 2, i64 0, i64 0)
  store %"std/os:FileInfo" %t1109, ptr %l379
  br label %bb218
bb218:
  %t1110 = load %"std/os:FileInfo", ptr %l379
  store %"std/os:FileInfo" %t1110, ptr %l368
  br label %bb219
bb219:
  %t1111 = getelementptr %"std/os:FileInfo", ptr %l368, i32 0, i32 1
  %t1112 = load i64, ptr %t1111, !tbaa !24
  %t1114 = icmp sgt i64 %t1112, 0
  store i1 %t1114, ptr %l367, !tbaa !21
  br label %bb220
bb220:
  %t1116 = load i1, ptr %l367, !tbaa !21
  br i1 %t1116, label %bb221, label %bb222
bb221:
  %t1117 = load ptr, ptr %l32, !tbaa !29
  store ptr %t1117, ptr %l382, !tbaa !29
  %t1118 = ptrtoint ptr %v0 to i64
  store i64 %t1118, ptr %l383, !tbaa !24
  %t1119 = load i1, ptr @olang_2esole_2ecompiler_2fload_3aModule_2e31
  br i1 %t1119, label %bb223, label %bb224
bb222:
  br label %bb227
bb223:
  %t1121 = call ptr @__olang_region_make(ptr %v0)
  %t1122 = ptrtoint ptr %t1121 to i64
  store i64 %t1122, ptr %l383, !tbaa !24
  br label %bb224
bb224:
  %t1123 = load { i64, ptr }, ptr %l21, !tbaa !27
  %t1125 = extractvalue { i64, ptr } %t1123, 1
  %t1126 = extractvalue { i64, ptr } %t1123, 0
  %t1127 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d137, i32 0, i32 1) }, 1
  %t1128 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d137, i32 0, i32 1) }, 0
  %t1129 = add i64 %t1126, %t1128
  %t1130 = load i64, ptr %l383
  %t1131 = inttoptr i64 %t1130 to ptr
  %t1132 = call ptr @__olang_scope_alloc(ptr %t1131, i64 %t1129)
  call void @olang_textcopy(ptr %t1132, ptr %t1125, i64 %t1126)
  %t1133 = getelementptr i8, ptr %t1132, i64 %t1126
  call void @olang_textcopy(ptr %t1133, ptr %t1127, i64 %t1128)
  %t1134 = insertvalue { i64, ptr } undef, i64 %t1129, 0
  %t1135 = insertvalue { i64, ptr } %t1134, ptr %t1132, 1
  %t1137 = load i64, ptr %l383
  %t1138 = inttoptr i64 %t1137 to ptr
  %t1139 = extractvalue { i64, ptr } %t1135, 0
  %t1140 = extractvalue { i64, ptr } %t1135, 1
  %t1141 = mul i64 %t1139, 1
  %t1142 = call ptr @__olang_scope_alloc(ptr %t1138, i64 %t1141)
  call void @llvm.memcpy.p0.p0.i64(ptr %t1142, ptr %t1140, i64 %t1141, i1 false)
  %t1143 = insertvalue { i64, ptr } undef, i64 %t1139, 0
  %t1144 = insertvalue { i64, ptr } %t1143, ptr %t1142, 1
  %t1145 = load ptr, ptr %l382, !tbaa !29
  %t1146 = getelementptr %"compiler/load:Module", ptr %t1145, i32 0, i32 31
  %t1147 = load { i64, ptr }, ptr %t1146, !tbaa !27
  store { i64, ptr } %t1147, ptr %l388, !tbaa !27
  %t1149 = load ptr, ptr %l382, !tbaa !29
  %t1150 = getelementptr %"compiler/load:Module", ptr %t1149, i32 0, i32 31
  store { i64, ptr } %t1144, ptr %t1150, !tbaa !27
  %t1151 = load i1, ptr @olang_2esole_2ecompiler_2fload_3aModule_2e31
  br i1 %t1151, label %bb225, label %bb226
bb225:
  %t1153 = load { i64, ptr }, ptr %l388
  %t1154 = extractvalue { i64, ptr } %t1153, 1
  call void @__olang_region_release(ptr %t1154)
  store { i64, ptr } zeroinitializer, ptr %l388
  br label %bb226
bb226:
  br label %bb227
bb227:
  store i1 false, ptr %l33, !tbaa !21
  %t1155 = load { i64, ptr }, ptr %l22, !tbaa !27
  %t1157 = call %"std/prelude/text:LineIter" @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eLines(ptr %s0, ptr %s0, { i64, ptr } %t1155)
  store %"std/prelude/text:LineIter" %t1157, ptr %l391
  br label %bb228
bb228:
  %t1158 = load %"std/prelude/text:LineIter", ptr %l391
  store %"std/prelude/text:LineIter" %t1158, ptr %l34
  br label %bb229
bb229:
  store %olang.scope zeroinitializer, ptr %s51
  %t1160 = call { i32, { i64, ptr } } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aLineIter_2eNext(ptr %s0, ptr %s0, ptr %l34)
  %t1161 = extractvalue { i32, { i64, ptr } } %t1160, 1
  %t1162 = extractvalue { i32, { i64, ptr } } %t1160, 0
  store i32 %t1162, ptr %l395
  %t1163 = icmp ne i32 %t1162, 0
  br i1 %t1163, label %bb231, label %ok.1164, !prof !99
ok.1164:
  store { i64, ptr } %t1161, ptr %l394
  br label %bb230
bb230:
  %t1165 = load { i64, ptr }, ptr %l394, !tbaa !27
  store { i64, ptr } %t1165, ptr %l392, !tbaa !27
  br label %bb233
bb231:
  %t1166 = load i32, ptr %l395, !tbaa !23
  %t1167 = ashr i32 %t1166, 16
  %t1169 = icmp eq i32 %t1167, 1
  store i1 %t1169, ptr %l397, !tbaa !21
  br label %bb232
bb232:
  call void @__olang_scope_close(ptr %s51)
  br label %bb289
bb233:
  %t1170 = load { i64, ptr }, ptr %l392, !tbaa !27
  store { i64, ptr } %t1170, ptr %l35, !tbaa !27
  %t1171 = load { i64, ptr }, ptr %l35, !tbaa !27
  %t1173 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %s0, ptr %s51, { i64, ptr } %t1171, { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d138, i32 0, i32 1) })
  store i1 %t1173, ptr %l399
  br label %bb234
bb234:
  %t1174 = load i1, ptr %l399, !tbaa !21
  br i1 %t1174, label %bb235, label %bb236
bb235:
  store %olang.scope zeroinitializer, ptr %s52
  %t1175 = load { i64, ptr }, ptr %l35, !tbaa !27
  store { i64, ptr } %t1175, ptr %l400, !tbaa !27
  %t1176 = load { i64, ptr }, ptr %l35, !tbaa !27
  %t1179 = extractvalue { i64, ptr } %t1176, 0
  store i64 %t1179, ptr %l403, !tbaa !24
  %t1180 = load { i64, ptr }, ptr %l400, !tbaa !27
  %t1181 = extractvalue { i64, ptr } %t1180, 0
  store i64 %t1181, ptr %l404, !tbaa !24
  %t1182 = icmp sge i64 9, 0
  br i1 %t1182, label %bb237, label %bb238
bb236:
  store %olang.scope zeroinitializer, ptr %s56
  %t1184 = load { i64, ptr }, ptr %l35, !tbaa !27
  %t1186 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %s56, { i64, ptr } %t1184, { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d139, i32 0, i32 1) })
  store i1 %t1186, ptr %l428
  br label %bb252
bb237:
  %t1187 = load i64, ptr %l403, !tbaa !24
  %t1188 = icmp sle i64 9, %t1187
  br i1 %t1188, label %bb239, label %bb240
bb238:
  call void @__olang_check_failed(ptr @olang_loc_d93100fd80a187ad_1e56be64fe5806d1)
  unreachable
bb239:
  %t1190 = load i64, ptr %l403, !tbaa !24
  %t1191 = load i64, ptr %l404, !tbaa !24
  %t1192 = icmp sle i64 %t1190, %t1191
  br i1 %t1192, label %bb241, label %bb242
bb240:
  call void @__olang_check_failed(ptr @olang_loc_d93100fd80a187ad_1e56be64fe5806d1)
  unreachable
bb241:
  %t1194 = getelementptr { i64, ptr }, ptr %l400, i32 0, i32 1
  %t1195 = load ptr, ptr %t1194, !tbaa !27
  %t1196 = load i64, ptr %l403, !tbaa !24
  %t1197 = getelementptr i8, ptr %t1195, i64 9
  %t1198 = sub i64 %t1196, 9
  %t1199 = insertvalue { i64, ptr } undef, i64 %t1198, 0
  %t1200 = insertvalue { i64, ptr } %t1199, ptr %t1197, 1
  %t1202 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eSplit(ptr %s0, ptr %s52, ptr %s52, { i64, ptr } %t1200, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d140, i32 0, i32 1) })
  store { i64, ptr } %t1202, ptr %l409
  br label %bb243
bb242:
  call void @__olang_check_failed(ptr @olang_loc_d93100fd80a187ad_1e56be64fe5806d1)
  unreachable
bb243:
  %t1203 = load { i64, ptr }, ptr %l409, !tbaa !27
  store { i64, ptr } %t1203, ptr %l36, !tbaa !27
  %t1204 = load { i64, ptr }, ptr %l36, !tbaa !27
  %t1206 = extractvalue { i64, ptr } %t1204, 0
  %t1208 = icmp eq i64 %t1206, 2
  br i1 %t1208, label %bb244, label %bb245
bb244:
  %t1210 = load ptr, ptr %l32, !tbaa !29
  %t1212 = getelementptr %"compiler/load:Module", ptr %t1210, i32 0, i32 32
  store ptr %t1212, ptr %l414, !tbaa !29
  %t1213 = ptrtoint ptr %v0 to i64
  store i64 %t1213, ptr %l415, !tbaa !24
  %t1214 = load i1, ptr @olang_2esole_2estd_2fprelude_2fmap_3aMapEntry_3cstd_2fprelude_2ftext_3aString_26_2c_20st_Ha3f33385783b00c3f13cf90b683d8670
  br i1 %t1214, label %bb246, label %bb247
bb245:
  br label %bb251
bb246:
  %t1216 = call ptr @__olang_region_make(ptr %v0)
  %t1217 = ptrtoint ptr %t1216 to i64
  store i64 %t1217, ptr %l415, !tbaa !24
  br label %bb247
bb247:
  %t1218 = load { i64, ptr }, ptr %l36, !tbaa !27
  store { i64, ptr } %t1218, ptr %l417, !tbaa !27
  %t1219 = getelementptr { i64, ptr }, ptr %l417, i32 0, i32 1
  %t1220 = load ptr, ptr %t1219, !tbaa !27
  %t1221 = getelementptr { i64, ptr }, ptr %t1220, i64 0
  %t1222 = load { i64, ptr }, ptr %t1221, !tbaa !37
  %t1224 = extractvalue { i64, ptr } %t1222, 1
  %t1225 = extractvalue { i64, ptr } %t1222, 0
  %t1226 = load i64, ptr %l415
  %t1227 = inttoptr i64 %t1226 to ptr
  %t1228 = call ptr @__olang_scope_alloc(ptr %t1227, i64 %t1225)
  call void @olang_textcopy(ptr %t1228, ptr %t1224, i64 %t1225)
  %t1229 = insertvalue { i64, ptr } undef, i64 %t1225, 0
  %t1230 = insertvalue { i64, ptr } %t1229, ptr %t1228, 1
  %t1232 = load i64, ptr %l415
  %t1233 = inttoptr i64 %t1232 to ptr
  %t1234 = extractvalue { i64, ptr } %t1230, 0
  %t1235 = extractvalue { i64, ptr } %t1230, 1
  %t1236 = mul i64 %t1234, 1
  %t1237 = call ptr @__olang_scope_alloc(ptr %t1233, i64 %t1236)
  call void @llvm.memcpy.p0.p0.i64(ptr %t1237, ptr %t1235, i64 %t1236, i1 false)
  %t1238 = insertvalue { i64, ptr } undef, i64 %t1234, 0
  %t1239 = insertvalue { i64, ptr } %t1238, ptr %t1237, 1
  store { i64, ptr } %t1239, ptr %l420, !tbaa !27
  %t1240 = ptrtoint ptr %v0 to i64
  store i64 %t1240, ptr %l421, !tbaa !24
  %t1241 = load i1, ptr @olang_2esole_2estd_2fprelude_2fmap_3aMapEntry_3cstd_2fprelude_2ftext_3aString_26_2c_20st_Ha3f33285783aff10f13cf80b683d8c03
  br i1 %t1241, label %bb248, label %bb249
bb248:
  %t1243 = call ptr @__olang_region_make(ptr %v0)
  %t1244 = ptrtoint ptr %t1243 to i64
  store i64 %t1244, ptr %l421, !tbaa !24
  br label %bb249
bb249:
  %t1245 = load { i64, ptr }, ptr %l36, !tbaa !27
  store { i64, ptr } %t1245, ptr %l423, !tbaa !27
  %t1246 = getelementptr { i64, ptr }, ptr %l423, i32 0, i32 1
  %t1247 = load ptr, ptr %t1246, !tbaa !27
  %t1248 = getelementptr { i64, ptr }, ptr %t1247, i64 1
  %t1249 = load { i64, ptr }, ptr %t1248, !tbaa !37
  %t1251 = extractvalue { i64, ptr } %t1249, 1
  %t1252 = extractvalue { i64, ptr } %t1249, 0
  %t1253 = load i64, ptr %l421
  %t1254 = inttoptr i64 %t1253 to ptr
  %t1255 = call ptr @__olang_scope_alloc(ptr %t1254, i64 %t1252)
  call void @olang_textcopy(ptr %t1255, ptr %t1251, i64 %t1252)
  %t1256 = insertvalue { i64, ptr } undef, i64 %t1252, 0
  %t1257 = insertvalue { i64, ptr } %t1256, ptr %t1255, 1
  %t1259 = load i64, ptr %l421
  %t1260 = inttoptr i64 %t1259 to ptr
  %t1261 = extractvalue { i64, ptr } %t1257, 0
  %t1262 = extractvalue { i64, ptr } %t1257, 1
  %t1263 = mul i64 %t1261, 1
  %t1264 = call ptr @__olang_scope_alloc(ptr %t1260, i64 %t1263)
  call void @llvm.memcpy.p0.p0.i64(ptr %t1264, ptr %t1262, i64 %t1263, i1 false)
  %t1265 = insertvalue { i64, ptr } undef, i64 %t1261, 0
  %t1266 = insertvalue { i64, ptr } %t1265, ptr %t1264, 1
  %t1267 = load ptr, ptr %l414, !tbaa !29
  %t1268 = load { i64, ptr }, ptr %l420, !tbaa !27
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_H6f7a2f8d839c49b6e7a19c287d4b190c(ptr %v0, ptr %v0, ptr %v0, ptr %t1267, { i64, ptr } %t1268, { i64, ptr } %t1266)
  br label %bb250
bb250:
  br label %bb251
bb251:
  call void @__olang_scope_close(ptr %s52)
  br label %bb287
bb252:
  %t1270 = load i1, ptr %l428, !tbaa !21
  br i1 %t1270, label %bb253, label %bb254
bb253:
  store i1 true, ptr %l33, !tbaa !21
  br label %bb286
bb254:
  store %olang.scope zeroinitializer, ptr %s58
  %t1271 = load i1, ptr %l33, !tbaa !21
  br i1 %t1271, label %bb255, label %bb256
bb255:
  %t1273 = load { i64, ptr }, ptr %l35, !tbaa !27
  %t1275 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %s0, ptr %s58, { i64, ptr } %t1273, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d141, i32 0, i32 1) })
  store i1 %t1275, ptr %l432
  br label %bb257
bb256:
  store i1 false, ptr %l430, !tbaa !21
  br label %bb258
bb257:
  %t1276 = load i1, ptr %l432, !tbaa !21
  store i1 %t1276, ptr %l430, !tbaa !21
  br label %bb258
bb258:
  %t1277 = load i1, ptr %l430, !tbaa !21
  br i1 %t1277, label %bb259, label %bb260
bb259:
  store %olang.scope zeroinitializer, ptr %s59
  %t1278 = load { i64, ptr }, ptr %l35, !tbaa !27
  %t1280 = call { i32, i64 } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eFind(ptr %s0, ptr %s59, { i64, ptr } %t1278, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d142, i32 0, i32 1) })
  %t1281 = extractvalue { i32, i64 } %t1280, 1
  %t1282 = extractvalue { i32, i64 } %t1280, 0
  store i32 %t1282, ptr %l436
  %t1283 = icmp ne i32 %t1282, 0
  br i1 %t1283, label %bb262, label %ok.1284, !prof !99
ok.1284:
  store i64 %t1281, ptr %l435
  br label %bb261
bb260:
  br label %bb285
bb261:
  %t1285 = load i64, ptr %l435, !tbaa !24
  store i64 %t1285, ptr %l433, !tbaa !24
  br label %bb264
bb262:
  br label %bb263
bb263:
  store i64 -1, ptr %l433, !tbaa !24
  br label %bb264
bb264:
  %t1286 = load i64, ptr %l433, !tbaa !24
  store i64 %t1286, ptr %l37, !tbaa !24
  %t1287 = load i64, ptr %l37, !tbaa !24
  %t1289 = icmp sgt i64 %t1287, 4
  br i1 %t1289, label %bb265, label %bb266
bb265:
  %t1291 = load ptr, ptr %l32, !tbaa !29
  %t1293 = getelementptr %"compiler/load:Module", ptr %t1291, i32 0, i32 33
  store ptr %t1293, ptr %l440, !tbaa !29
  %t1294 = ptrtoint ptr %v0 to i64
  store i64 %t1294, ptr %l441, !tbaa !24
  %t1295 = load i1, ptr @olang_2esole_2estd_2fprelude_2fmap_3aMapEntry_3cstd_2fprelude_2ftext_3aString_26_2c_20st_Ha3f33385783b00c3f13cf90b683d8670
  br i1 %t1295, label %bb267, label %bb268
bb266:
  br label %bb284
bb267:
  %t1297 = call ptr @__olang_region_make(ptr %v0)
  %t1298 = ptrtoint ptr %t1297 to i64
  store i64 %t1298, ptr %l441, !tbaa !24
  br label %bb268
bb268:
  %t1299 = load { i64, ptr }, ptr %l35, !tbaa !27
  store { i64, ptr } %t1299, ptr %l443, !tbaa !27
  %t1300 = load i64, ptr %l37, !tbaa !24
  store i64 %t1300, ptr %l444, !tbaa !24
  %t1301 = load { i64, ptr }, ptr %l443, !tbaa !27
  %t1302 = extractvalue { i64, ptr } %t1301, 0
  store i64 %t1302, ptr %l445, !tbaa !24
  %t1303 = icmp sge i64 4, 0
  br i1 %t1303, label %bb269, label %bb270
bb269:
  %t1305 = load i64, ptr %l444, !tbaa !24
  %t1306 = icmp sle i64 4, %t1305
  br i1 %t1306, label %bb271, label %bb272
bb270:
  call void @__olang_check_failed(ptr @olang_loc_2997e1d684418a32_f4dc9b5865eb58ee)
  unreachable
bb271:
  %t1308 = load i64, ptr %l444, !tbaa !24
  %t1309 = load i64, ptr %l445, !tbaa !24
  %t1310 = icmp sle i64 %t1308, %t1309
  br i1 %t1310, label %bb273, label %bb274
bb272:
  call void @__olang_check_failed(ptr @olang_loc_2997e1d684418a32_f4dc9b5865eb58ee)
  unreachable
bb273:
  %t1312 = getelementptr { i64, ptr }, ptr %l443, i32 0, i32 1
  %t1313 = load ptr, ptr %t1312, !tbaa !27
  %t1314 = load i64, ptr %l444, !tbaa !24
  %t1315 = getelementptr i8, ptr %t1313, i64 4
  %t1316 = sub i64 %t1314, 4
  %t1317 = insertvalue { i64, ptr } undef, i64 %t1316, 0
  %t1318 = insertvalue { i64, ptr } %t1317, ptr %t1315, 1
  %t1320 = extractvalue { i64, ptr } %t1318, 1
  %t1321 = extractvalue { i64, ptr } %t1318, 0
  %t1322 = load i64, ptr %l441
  %t1323 = inttoptr i64 %t1322 to ptr
  %t1324 = call ptr @__olang_scope_alloc(ptr %t1323, i64 %t1321)
  call void @olang_textcopy(ptr %t1324, ptr %t1320, i64 %t1321)
  %t1325 = insertvalue { i64, ptr } undef, i64 %t1321, 0
  %t1326 = insertvalue { i64, ptr } %t1325, ptr %t1324, 1
  %t1328 = load i64, ptr %l441
  %t1329 = inttoptr i64 %t1328 to ptr
  %t1330 = extractvalue { i64, ptr } %t1326, 0
  %t1331 = extractvalue { i64, ptr } %t1326, 1
  %t1332 = mul i64 %t1330, 1
  %t1333 = call ptr @__olang_scope_alloc(ptr %t1329, i64 %t1332)
  call void @llvm.memcpy.p0.p0.i64(ptr %t1333, ptr %t1331, i64 %t1332, i1 false)
  %t1334 = insertvalue { i64, ptr } undef, i64 %t1330, 0
  %t1335 = insertvalue { i64, ptr } %t1334, ptr %t1333, 1
  store { i64, ptr } %t1335, ptr %l451, !tbaa !27
  %t1336 = ptrtoint ptr %v0 to i64
  store i64 %t1336, ptr %l452, !tbaa !24
  %t1337 = load i1, ptr @olang_2esole_2estd_2fprelude_2fmap_3aMapEntry_3cstd_2fprelude_2ftext_3aString_26_2c_20st_Ha3f33285783aff10f13cf80b683d8c03
  br i1 %t1337, label %bb275, label %bb276
bb274:
  call void @__olang_check_failed(ptr @olang_loc_2997e1d684418a32_f4dc9b5865eb58ee)
  unreachable
bb275:
  %t1339 = call ptr @__olang_region_make(ptr %v0)
  %t1340 = ptrtoint ptr %t1339 to i64
  store i64 %t1340, ptr %l452, !tbaa !24
  br label %bb276
bb276:
  %t1341 = load { i64, ptr }, ptr %l35, !tbaa !27
  store { i64, ptr } %t1341, ptr %l454, !tbaa !27
  %t1342 = load i64, ptr %l37, !tbaa !24
  %t1344 = add i64 %t1342, 2
  store i64 %t1344, ptr %l456, !tbaa !24
  %t1345 = load { i64, ptr }, ptr %l35, !tbaa !27
  %t1348 = extractvalue { i64, ptr } %t1345, 0
  store i64 %t1348, ptr %l459, !tbaa !24
  %t1349 = load { i64, ptr }, ptr %l454, !tbaa !27
  %t1350 = extractvalue { i64, ptr } %t1349, 0
  store i64 %t1350, ptr %l460, !tbaa !24
  %t1351 = load i64, ptr %l456, !tbaa !24
  %t1352 = icmp sge i64 %t1351, 0
  br i1 %t1352, label %bb277, label %bb278
bb277:
  %t1354 = load i64, ptr %l456, !tbaa !24
  %t1355 = load i64, ptr %l459, !tbaa !24
  %t1356 = icmp sle i64 %t1354, %t1355
  br i1 %t1356, label %bb279, label %bb280
bb278:
  call void @__olang_check_failed(ptr @olang_loc_2997e1d684418a32_f4dc9b5865eb58ee)
  unreachable
bb279:
  %t1358 = load i64, ptr %l459, !tbaa !24
  %t1359 = load i64, ptr %l460, !tbaa !24
  %t1360 = icmp sle i64 %t1358, %t1359
  br i1 %t1360, label %bb281, label %bb282
bb280:
  call void @__olang_check_failed(ptr @olang_loc_2997e1d684418a32_f4dc9b5865eb58ee)
  unreachable
bb281:
  %t1362 = getelementptr { i64, ptr }, ptr %l454, i32 0, i32 1
  %t1363 = load ptr, ptr %t1362, !tbaa !27
  %t1364 = load i64, ptr %l456, !tbaa !24
  %t1365 = load i64, ptr %l459, !tbaa !24
  %t1366 = getelementptr i8, ptr %t1363, i64 %t1364
  %t1367 = sub i64 %t1365, %t1364
  %t1368 = insertvalue { i64, ptr } undef, i64 %t1367, 0
  %t1369 = insertvalue { i64, ptr } %t1368, ptr %t1366, 1
  %t1371 = extractvalue { i64, ptr } %t1369, 1
  %t1372 = extractvalue { i64, ptr } %t1369, 0
  %t1373 = load i64, ptr %l452
  %t1374 = inttoptr i64 %t1373 to ptr
  %t1375 = call ptr @__olang_scope_alloc(ptr %t1374, i64 %t1372)
  call void @olang_textcopy(ptr %t1375, ptr %t1371, i64 %t1372)
  %t1376 = insertvalue { i64, ptr } undef, i64 %t1372, 0
  %t1377 = insertvalue { i64, ptr } %t1376, ptr %t1375, 1
  %t1379 = load i64, ptr %l452
  %t1380 = inttoptr i64 %t1379 to ptr
  %t1381 = extractvalue { i64, ptr } %t1377, 0
  %t1382 = extractvalue { i64, ptr } %t1377, 1
  %t1383 = mul i64 %t1381, 1
  %t1384 = call ptr @__olang_scope_alloc(ptr %t1380, i64 %t1383)
  call void @llvm.memcpy.p0.p0.i64(ptr %t1384, ptr %t1382, i64 %t1383, i1 false)
  %t1385 = insertvalue { i64, ptr } undef, i64 %t1381, 0
  %t1386 = insertvalue { i64, ptr } %t1385, ptr %t1384, 1
  %t1387 = load ptr, ptr %l440, !tbaa !29
  %t1388 = load { i64, ptr }, ptr %l451, !tbaa !27
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_H6f7a2f8d839c49b6e7a19c287d4b190c(ptr %v0, ptr %v0, ptr %v0, ptr %t1387, { i64, ptr } %t1388, { i64, ptr } %t1386)
  br label %bb283
bb282:
  call void @__olang_check_failed(ptr @olang_loc_2997e1d684418a32_f4dc9b5865eb58ee)
  unreachable
bb283:
  br label %bb284
bb284:
  call void @__olang_scope_close(ptr %s59)
  br label %bb285
bb285:
  call void @__olang_scope_close(ptr %s58)
  br label %bb286
bb286:
  call void @__olang_scope_close(ptr %s56)
  br label %bb287
bb287:
  call void @__olang_scope_close(ptr %s51)
  br label %bb288
bb288:
  br label %bb229
bb289:
  %t1390 = load i64, ptr %l31, !tbaa !24
  call void @__olang_scope_close(ptr %s0)
  store i64 %t1390, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
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

define dso_local void @compiler_2fload_2ecompiler_2fload_3aLoader_2echains(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, i64 %a2, { i64, ptr } %a3, i64 %a4) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l4 = alloca i64
  %l5 = alloca ptr
  %l6 = alloca i64
  %l7 = alloca %"compiler/load:Import"
  %l8 = alloca { i64, ptr }
  %l9 = alloca ptr
  %l10 = alloca i64
  %l12 = alloca ptr
  %l13 = alloca i64
  %l20 = alloca ptr
  %l23 = alloca i64
  %l25 = alloca i64
  %l30 = alloca %"compiler/load:Import"
  %l39 = alloca ptr
  %l42 = alloca i64
  %l44 = alloca i64
  %l49 = alloca { i64, ptr }
  %l60 = alloca ptr
  %l63 = alloca i64
  %l65 = alloca i64
  %l70 = alloca { i64, ptr }
  %s3 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store i64 %a4, ptr %l4
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load i64, ptr %l4, !tbaa !24
  %t3 = icmp sge i64 %t1, 4
  br i1 %t3, label %bb1, label %bb2
bb1:
  br label %ret
bb2:
  br label %bb3
bb3:
  %t5 = load ptr, ptr %l0, !tbaa !29
  %t7 = getelementptr %"compiler/load:Loader", ptr %t5, i32 0, i32 10
  %t11 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H7bcf2aeb09afa796f4333e6ec8c3f63f(ptr %v0, ptr %v0, ptr %t7, i64 %a2)
  store ptr %t11, ptr %l20
  br label %bb4
bb4:
  %t12 = load ptr, ptr %l20, !tbaa !29
  %t14 = getelementptr %"compiler/load:Module", ptr %t12, i32 0, i32 11
  store ptr %t14, ptr %l5, !tbaa !29
  store i64 0, ptr %l6, !tbaa !24
  br label %bb5
bb5:
  store %olang.scope zeroinitializer, ptr %s3
  %t16 = load i64, ptr %l6, !tbaa !24
  store i64 %t16, ptr %l23, !tbaa !24
  %t17 = load ptr, ptr %l5, !tbaa !29
  %t19 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fload_3aImport_3e_2eLen_3ccompiler_2fload_3aImport_3e(ptr %v0, ptr %t17)
  store i64 %t19, ptr %l25
  br label %bb6
bb6:
  %t20 = load i64, ptr %l23, !tbaa !24
  %t21 = load i64, ptr %l25, !tbaa !24
  %t22 = icmp slt i64 %t20, %t21
  %t24 = xor i1 %t22, true
  br i1 %t24, label %bb7, label %bb8
bb7:
  call void @__olang_scope_close(ptr %s3)
  br label %bb36
bb8:
  br label %bb9
bb9:
  %t26 = load ptr, ptr %l5, !tbaa !29
  %t27 = load i64, ptr %l6, !tbaa !24
  %t30 = call %"compiler/load:Import" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fload_3aImport_3e_2eAt_3ccompiler_2fload_3aImport_3e(ptr %v0, ptr %v0, ptr %t26, i64 %t27)
  store %"compiler/load:Import" %t30, ptr %l30
  br label %bb10
bb10:
  %t31 = load %"compiler/load:Import", ptr %l30
  store %"compiler/load:Import" %t31, ptr %l7
  %t32 = getelementptr %"compiler/load:Import", ptr %l7, i32 0, i32 5
  %t33 = load i64, ptr %t32, !tbaa !24
  %t35 = icmp slt i64 %t33, 0
  br i1 %t35, label %bb11, label %bb12
bb11:
  call void @__olang_scope_close(ptr %s3)
  br label %bb35
bb12:
  br label %bb13
bb13:
  %t38 = getelementptr %"compiler/load:Import", ptr %l7, i32 0, i32 2
  %t39 = load { i64, ptr }, ptr %t38, !tbaa !27
  %t41 = extractvalue { i64, ptr } %a3, 1
  %t42 = extractvalue { i64, ptr } %a3, 0
  %t44 = extractvalue { i64, ptr } %t39, 1
  %t45 = extractvalue { i64, ptr } %t39, 0
  %t46 = add i64 %t42, %t45
  %t47 = call ptr @__olang_scope_alloc(ptr %s3, i64 %t46)
  call void @olang_textcopy(ptr %t47, ptr %t41, i64 %t42)
  %t48 = getelementptr i8, ptr %t47, i64 %t42
  call void @olang_textcopy(ptr %t48, ptr %t44, i64 %t45)
  %t49 = insertvalue { i64, ptr } undef, i64 %t46, 0
  %t50 = insertvalue { i64, ptr } %t49, ptr %t47, 1
  store { i64, ptr } %t50, ptr %l8, !tbaa !27
  %t52 = load ptr, ptr %l0, !tbaa !29
  %t54 = getelementptr %"compiler/load:Loader", ptr %t52, i32 0, i32 10
  %t55 = getelementptr %"compiler/load:Import", ptr %l7, i32 0, i32 5
  %t56 = load i64, ptr %t55, !tbaa !24
  %t59 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H7bcf2aeb09afa796f4333e6ec8c3f63f(ptr %v0, ptr %v0, ptr %t54, i64 %t56)
  store ptr %t59, ptr %l39
  br label %bb14
bb14:
  %t60 = load ptr, ptr %l39, !tbaa !29
  %t62 = getelementptr %"compiler/load:Module", ptr %t60, i32 0, i32 9
  store ptr %t62, ptr %l9, !tbaa !29
  store i64 0, ptr %l10, !tbaa !24
  br label %bb15
bb15:
  %t64 = load i64, ptr %l10, !tbaa !24
  store i64 %t64, ptr %l42, !tbaa !24
  %t65 = load ptr, ptr %l9, !tbaa !29
  %t67 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %v0, ptr %t65)
  store i64 %t67, ptr %l44
  br label %bb16
bb16:
  %t68 = load i64, ptr %l42, !tbaa !24
  %t69 = load i64, ptr %l44, !tbaa !24
  %t70 = icmp slt i64 %t68, %t69
  %t72 = xor i1 %t70, true
  br i1 %t72, label %bb17, label %bb18
bb17:
  br label %bb23
bb18:
  br label %bb19
bb19:
  %t74 = load ptr, ptr %l9, !tbaa !29
  %t75 = load i64, ptr %l10, !tbaa !24
  %t78 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %v0, ptr %v0, ptr %t74, i64 %t75)
  store { i64, ptr } %t78, ptr %l49
  br label %bb20
bb20:
  %t79 = load { i64, ptr }, ptr %l49, !tbaa !27
  %t80 = load ptr, ptr %l1, !tbaa !29
  %t81 = load ptr, ptr %l0, !tbaa !29
  %t83 = getelementptr %"compiler/load:Loader", ptr %t81, i32 0, i32 3
  %t84 = load ptr, ptr %t83, !tbaa !29
  %t85 = load { i64, ptr }, ptr %l8, !tbaa !27
  call void @compiler_2fparse_2ecompiler_2fparse_3aOracle_2eAdd(ptr %v1, ptr %v0, ptr %s3, ptr %v0, ptr %t80, ptr %t84, { i64, ptr } %t85, { i64, ptr } %t79)
  br label %bb21
bb21:
  br label %bb22
bb22:
  %t91 = load i64, ptr %l10, !tbaa !24
  %t93 = add i64 %t91, 1
  store i64 %t93, ptr %l10, !tbaa !24
  br label %bb15
bb23:
  %t95 = load ptr, ptr %l0, !tbaa !29
  %t97 = getelementptr %"compiler/load:Loader", ptr %t95, i32 0, i32 10
  %t98 = getelementptr %"compiler/load:Import", ptr %l7, i32 0, i32 5
  %t99 = load i64, ptr %t98, !tbaa !24
  %t102 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H7bcf2aeb09afa796f4333e6ec8c3f63f(ptr %v0, ptr %v0, ptr %t97, i64 %t99)
  store ptr %t102, ptr %l60
  br label %bb24
bb24:
  %t103 = load ptr, ptr %l60, !tbaa !29
  %t105 = getelementptr %"compiler/load:Module", ptr %t103, i32 0, i32 10
  store ptr %t105, ptr %l12, !tbaa !29
  store i64 0, ptr %l13, !tbaa !24
  br label %bb25
bb25:
  %t107 = load i64, ptr %l13, !tbaa !24
  store i64 %t107, ptr %l63, !tbaa !24
  %t108 = load ptr, ptr %l12, !tbaa !29
  %t110 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %v0, ptr %t108)
  store i64 %t110, ptr %l65
  br label %bb26
bb26:
  %t111 = load i64, ptr %l63, !tbaa !24
  %t112 = load i64, ptr %l65, !tbaa !24
  %t113 = icmp slt i64 %t111, %t112
  %t115 = xor i1 %t113, true
  br i1 %t115, label %bb27, label %bb28
bb27:
  br label %bb33
bb28:
  br label %bb29
bb29:
  %t117 = load ptr, ptr %l12, !tbaa !29
  %t118 = load i64, ptr %l13, !tbaa !24
  %t121 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %v0, ptr %v0, ptr %t117, i64 %t118)
  store { i64, ptr } %t121, ptr %l70
  br label %bb30
bb30:
  %t122 = load { i64, ptr }, ptr %l70, !tbaa !27
  %t123 = load ptr, ptr %l1, !tbaa !29
  %t124 = load ptr, ptr %l0, !tbaa !29
  %t126 = getelementptr %"compiler/load:Loader", ptr %t124, i32 0, i32 3
  %t127 = load ptr, ptr %t126, !tbaa !29
  %t128 = load { i64, ptr }, ptr %l8, !tbaa !27
  call void @compiler_2fparse_2ecompiler_2fparse_3aOracle_2eAddFn(ptr %v1, ptr %v0, ptr %s3, ptr %v0, ptr %t123, ptr %t127, { i64, ptr } %t128, { i64, ptr } %t122)
  br label %bb31
bb31:
  br label %bb32
bb32:
  %t134 = load i64, ptr %l13, !tbaa !24
  %t136 = add i64 %t134, 1
  store i64 %t136, ptr %l13, !tbaa !24
  br label %bb25
bb33:
  %t138 = load ptr, ptr %l0, !tbaa !29
  %t139 = load ptr, ptr %l1, !tbaa !29
  %t140 = getelementptr %"compiler/load:Import", ptr %l7, i32 0, i32 5
  %t141 = load i64, ptr %t140, !tbaa !24
  %t142 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t144 = extractvalue { i64, ptr } %t142, 1
  %t145 = extractvalue { i64, ptr } %t142, 0
  %t146 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d143, i32 0, i32 1) }, 1
  %t147 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d143, i32 0, i32 1) }, 0
  %t148 = add i64 %t145, %t147
  %t149 = call ptr @__olang_scope_alloc(ptr %s3, i64 %t148)
  call void @olang_textcopy(ptr %t149, ptr %t144, i64 %t145)
  %t150 = getelementptr i8, ptr %t149, i64 %t145
  call void @olang_textcopy(ptr %t150, ptr %t146, i64 %t147)
  %t151 = insertvalue { i64, ptr } undef, i64 %t148, 0
  %t152 = insertvalue { i64, ptr } %t151, ptr %t149, 1
  %t154 = extractvalue { i64, ptr } %t152, 0
  %t155 = extractvalue { i64, ptr } %t152, 1
  %t156 = mul i64 %t154, 1
  %t157 = call ptr @__olang_scope_alloc(ptr %s3, i64 %t156)
  call void @llvm.memcpy.p0.p0.i64(ptr %t157, ptr %t155, i64 %t156, i1 false)
  %t158 = insertvalue { i64, ptr } undef, i64 %t154, 0
  %t159 = insertvalue { i64, ptr } %t158, ptr %t157, 1
  %t160 = load i64, ptr %l4, !tbaa !24
  %t162 = add i64 %t160, 1
  call void @compiler_2fload_2ecompiler_2fload_3aLoader_2echains(ptr %v0, ptr %v1, ptr %s3, ptr %t138, ptr %t139, i64 %t141, { i64, ptr } %t159, i64 %t162)
  br label %bb34
bb34:
  call void @__olang_scope_close(ptr %s3)
  br label %bb35
bb35:
  %t168 = load i64, ptr %l6, !tbaa !24
  %t170 = add i64 %t168, 1
  store i64 %t170, ptr %l6, !tbaa !24
  br label %bb5
bb36:
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
  %t155 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eImportReachedTwice(ptr %s8, ptr %v0, { i64, ptr } %t153)
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
  %t99 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eReexportCycle(ptr %s5, ptr %v0, { i64, ptr } %t97)
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
  %t34 = load i32, ptr %t33, !range !{i32 0, i32 113}
  store i32 %t34, ptr %l8
  %t36 = load i32, ptr %l8, !range !{i32 0, i32 113}
  %t38 = trunc i64 107 to i32
  %t39 = icmp eq i32 %t36, %t38
  br i1 %t39, label %bb8, label %bb9
bb8:
  store i1 true, ptr %l27, !tbaa !21
  br label %bb10
bb9:
  %t41 = load i32, ptr %l8, !range !{i32 0, i32 113}
  %t43 = trunc i64 109 to i32
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
  %t51 = load i32, ptr %l8, !range !{i32 0, i32 113}
  %t53 = trunc i64 108 to i32
  %t54 = icmp eq i32 %t51, %t53
  br i1 %t54, label %bb14, label %bb15
bb14:
  store i1 true, ptr %l34, !tbaa !21
  br label %bb16
bb15:
  %t56 = load i32, ptr %l8, !range !{i32 0, i32 113}
  %t58 = trunc i64 110 to i32
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
  %t66 = load i32, ptr %l8, !range !{i32 0, i32 113}
  %t68 = trunc i64 30 to i32
  %t69 = icmp eq i32 %t66, %t68
  br i1 %t69, label %bb20, label %bb21
bb20:
  store i1 true, ptr %l41, !tbaa !21
  br label %bb22
bb21:
  %t71 = load i32, ptr %l8, !range !{i32 0, i32 113}
  %t73 = trunc i64 36 to i32
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
  %t77 = load i32, ptr %l8, !range !{i32 0, i32 113}
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
  %t83 = load i32, ptr %l8, !range !{i32 0, i32 113}
  %t85 = trunc i64 111 to i32
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
  %t132 = load i32, ptr %l8, !range !{i32 0, i32 113}
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
  %t137 = load i32, ptr %l8, !range !{i32 0, i32 113}
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

define dso_local void @compiler_2fload_2ecompiler_2fload_3aLoader_2edecide(ptr %v0, ptr %a0, i64 %a1, i64 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca i64
  %l3 = alloca ptr
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca i64
  %l12 = alloca i64
  %l13 = alloca %"compiler/cond:Decision"
  %l17 = alloca ptr
  %l21 = alloca i64
  %l24 = alloca ptr
  %l25 = alloca i64
  %l29 = alloca i64
  %l30 = alloca i64
  %l46 = alloca i64
  %l48 = alloca i64
  %l51 = alloca i64
  %l53 = alloca i64
  %l56 = alloca i64
  %l61 = alloca i64
  %l67 = alloca i64
  %l70 = alloca i64
  %l88 = alloca ptr
  %l89 = alloca i64
  %l93 = alloca i64
  %l94 = alloca %"compiler/cond:Decision"
  %l103 = alloca i1
  %l114 = alloca ptr
  %l115 = alloca i64
  %l119 = alloca i1
  %l120 = alloca i64
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  store i64 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/load:Loader", ptr %t1, i32 0, i32 10
  %t4 = load i64, ptr %l1, !tbaa !24
  %t7 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H7bcf2aeb09afa796f4333e6ec8c3f63f(ptr %v0, ptr %v0, ptr %t3, i64 %t4)
  store ptr %t7, ptr %l17
  br label %bb1
bb1:
  %t8 = load ptr, ptr %l17, !tbaa !29
  store ptr %t8, ptr %l3, !tbaa !29
  %t9 = load ptr, ptr %l3, !tbaa !29
  %t11 = getelementptr %"compiler/load:Module", ptr %t9, i32 0, i32 16
  %t12 = load i64, ptr %l2, !tbaa !24
  %t15 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t11, i64 %t12)
  store i64 %t15, ptr %l21
  br label %bb2
bb2:
  %t16 = load i64, ptr @G_2ecompiler_2fload_2eNotYet, !tbaa !24
  %t17 = load i64, ptr %l21, !tbaa !24
  %t19 = icmp ne i64 %t17, %t16
  br i1 %t19, label %bb3, label %bb4
bb3:
  br label %ret
bb4:
  br label %bb5
bb5:
  %t21 = load ptr, ptr %l0, !tbaa !29
  store ptr %t21, ptr %l24, !tbaa !29
  %t22 = load i64, ptr %l1, !tbaa !24
  store i64 %t22, ptr %l25, !tbaa !24
  %t23 = load ptr, ptr %l3, !tbaa !29
  %t25 = getelementptr %"compiler/load:Module", ptr %t23, i32 0, i32 15
  %t26 = load i64, ptr %l2, !tbaa !24
  %t29 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t25, i64 %t26)
  store i64 %t29, ptr %l29
  br label %bb6
bb6:
  %t30 = load ptr, ptr %l24, !tbaa !29
  %t31 = load i64, ptr %l25, !tbaa !24
  %t32 = load i64, ptr %l29, !tbaa !24
  %t33 = call i64 @compiler_2fload_2ecompiler_2fload_3aLoader_2etaken(ptr %v0, ptr %t30, i64 %t31, i64 %t32)
  store i64 %t33, ptr %l30
  br label %bb7
bb7:
  %t34 = load i64, ptr %l30, !tbaa !24
  store i64 %t34, ptr %l4, !tbaa !24
  %t35 = load i64, ptr %l4, !tbaa !24
  %t37 = icmp eq i64 %t35, 0
  br i1 %t37, label %bb8, label %bb9
bb8:
  %t39 = load ptr, ptr %l3, !tbaa !29
  %t41 = getelementptr %"compiler/load:Module", ptr %t39, i32 0, i32 16
  %t42 = load i64, ptr %l2, !tbaa !24
  %t43 = load i64, ptr @G_2ecompiler_2fload_2eNoBranch, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eSetAt_3cI64_3e(ptr %v0, ptr %t41, i64 %t42, i64 %t43)
  br label %bb10
bb9:
  br label %bb11
bb10:
  br label %ret
bb11:
  %t47 = load i64, ptr %l4, !tbaa !24
  %t49 = icmp slt i64 %t47, 0
  br i1 %t49, label %bb12, label %bb13
bb12:
  %t51 = load ptr, ptr %l3, !tbaa !29
  %t53 = getelementptr %"compiler/load:Module", ptr %t51, i32 0, i32 16
  %t54 = load i64, ptr %l2, !tbaa !24
  %t55 = load i64, ptr @G_2ecompiler_2fload_2ePending, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eSetAt_3cI64_3e(ptr %v0, ptr %t53, i64 %t54, i64 %t55)
  br label %bb14
bb13:
  br label %bb15
bb14:
  br label %ret
bb15:
  %t59 = load ptr, ptr %l3, !tbaa !29
  %t61 = getelementptr %"compiler/load:Module", ptr %t59, i32 0, i32 18
  %t62 = load i64, ptr %l2, !tbaa !24
  %t65 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t61, i64 %t62)
  store i64 %t65, ptr %l46
  br label %bb16
bb16:
  %t66 = load i64, ptr %l46, !tbaa !24
  store i64 %t66, ptr %l5, !tbaa !24
  %t67 = load i64, ptr %l2, !tbaa !24
  %t69 = add i64 %t67, 1
  store i64 %t69, ptr %l48, !tbaa !24
  %t70 = load ptr, ptr %l3, !tbaa !29
  %t72 = getelementptr %"compiler/load:Module", ptr %t70, i32 0, i32 18
  %t74 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %t72)
  store i64 %t74, ptr %l51
  br label %bb17
bb17:
  %t75 = load i64, ptr %l48, !tbaa !24
  %t76 = load i64, ptr %l51, !tbaa !24
  %t77 = icmp eq i64 %t75, %t76
  br i1 %t77, label %bb18, label %bb19
bb18:
  %t79 = load ptr, ptr %l3, !tbaa !29
  %t81 = getelementptr %"compiler/load:Module", ptr %t79, i32 0, i32 19
  %t83 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %t81)
  store i64 %t83, ptr %l56
  br label %bb20
bb19:
  %t84 = load ptr, ptr %l3, !tbaa !29
  %t86 = getelementptr %"compiler/load:Module", ptr %t84, i32 0, i32 18
  %t87 = load i64, ptr %l2, !tbaa !24
  %t89 = add i64 %t87, 1
  %t92 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t86, i64 %t89)
  store i64 %t92, ptr %l61
  br label %bb21
bb20:
  %t93 = load i64, ptr %l56, !tbaa !24
  store i64 %t93, ptr %l53, !tbaa !24
  br label %bb22
bb21:
  %t94 = load i64, ptr %l61, !tbaa !24
  store i64 %t94, ptr %l53, !tbaa !24
  br label %bb22
bb22:
  %t95 = load i64, ptr %l53, !tbaa !24
  store i64 %t95, ptr %l6, !tbaa !24
  %t96 = load i64, ptr %l5, !tbaa !24
  store i64 %t96, ptr %l7, !tbaa !24
  %t98 = load i64, ptr %l6, !tbaa !24
  store i64 %t98, ptr %l8, !tbaa !24
  store i64 1, ptr %l9, !tbaa !24
  %t100 = load i64, ptr %l8, !tbaa !24
  %t101 = load i64, ptr %l7, !tbaa !24
  %t104 = icmp sgt i64 %t100, %t101
  br i1 %t104, label %bb23, label %bb24
bb23:
  %t106 = load i64, ptr %l9, !tbaa !24
  %t108 = icmp sgt i64 %t106, 0
  br i1 %t108, label %bb25, label %bb26
bb24:
  store i64 0, ptr %l67, !tbaa !24
  br label %bb28
bb25:
  %t110 = load i64, ptr %l8, !tbaa !24
  %t111 = load i64, ptr %l7, !tbaa !24
  %t114 = sub i64 %t110, %t111
  %t115 = load i64, ptr %l9, !tbaa !24
  %t118 = add i64 %t114, %t115
  %t120 = sub i64 %t118, 1
  %t121 = load i64, ptr %l9, !tbaa !24
  %t124 = sdiv i64 %t120, %t121
  store i64 %t124, ptr %l70, !tbaa !24
  br label %bb27
bb26:
  store i64 0, ptr %l70, !tbaa !24
  br label %bb27
bb27:
  %t126 = load i64, ptr %l70, !tbaa !24
  store i64 %t126, ptr %l67, !tbaa !24
  br label %bb28
bb28:
  %t127 = load i64, ptr %l67, !tbaa !24
  store i64 %t127, ptr %l10, !tbaa !24
  store i64 0, ptr %l11, !tbaa !24
  br label %bb29
bb29:
  %t128 = load i64, ptr %l11, !tbaa !24
  %t129 = load i64, ptr %l10, !tbaa !24
  %t132 = icmp slt i64 %t128, %t129
  %t134 = xor i1 %t132, true
  br i1 %t134, label %bb30, label %bb31
bb30:
  br label %bb47
bb31:
  br label %bb32
bb32:
  %t136 = load i64, ptr %l7, !tbaa !24
  %t137 = load i64, ptr %l11, !tbaa !24
  %t138 = load i64, ptr %l9, !tbaa !24
  %t141 = mul i64 %t137, %t138
  %t144 = add i64 %t136, %t141
  store i64 %t144, ptr %l12, !tbaa !24
  %t146 = load ptr, ptr %l0, !tbaa !29
  store ptr %t146, ptr %l88, !tbaa !29
  %t147 = load i64, ptr %l1, !tbaa !24
  store i64 %t147, ptr %l89, !tbaa !24
  %t148 = load ptr, ptr %l3, !tbaa !29
  %t150 = getelementptr %"compiler/load:Module", ptr %t148, i32 0, i32 19
  %t151 = load i64, ptr %l12, !tbaa !24
  %t154 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t150, i64 %t151)
  store i64 %t154, ptr %l93
  br label %bb33
bb33:
  %t155 = load ptr, ptr %l88, !tbaa !29
  %t156 = load i64, ptr %l89, !tbaa !24
  %t157 = load i64, ptr %l93, !tbaa !24
  %t158 = call %"compiler/cond:Decision" @compiler_2fload_2ecompiler_2fload_3aLoader_2eevalCond(ptr %v0, ptr %t155, i64 %t156, i64 %t157)
  store %"compiler/cond:Decision" %t158, ptr %l94
  br label %bb34
bb34:
  %t159 = load %"compiler/cond:Decision", ptr %l94
  store %"compiler/cond:Decision" %t159, ptr %l13
  %t160 = getelementptr %"compiler/cond:Decision", ptr %l13, i32 0, i32 0
  %t161 = load i32, ptr %t160, !range !{i32 0, i32 5}
  %t163 = trunc i64 1 to i32
  %t164 = icmp eq i32 %t161, %t163
  br i1 %t164, label %bb35, label %bb36
bb35:
  %t166 = load ptr, ptr %l3, !tbaa !29
  %t168 = getelementptr %"compiler/load:Module", ptr %t166, i32 0, i32 16
  %t169 = load i64, ptr %l2, !tbaa !24
  %t170 = load i64, ptr @G_2ecompiler_2fload_2ePending, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eSetAt_3cI64_3e(ptr %v0, ptr %t168, i64 %t169, i64 %t170)
  br label %bb37
bb36:
  br label %bb38
bb37:
  br label %ret
bb38:
  %t174 = getelementptr %"compiler/cond:Decision", ptr %l13, i32 0, i32 0
  %t175 = load i32, ptr %t174, !range !{i32 0, i32 5}
  %t177 = trunc i64 0 to i32
  %t178 = icmp eq i32 %t175, %t177
  br i1 %t178, label %bb39, label %bb40
bb39:
  %t180 = getelementptr %"compiler/cond:Decision", ptr %l13, i32 0, i32 1
  %t181 = load i1, ptr %t180, !tbaa !21
  store i1 %t181, ptr %l103, !tbaa !21
  br label %bb41
bb40:
  store i1 false, ptr %l103, !tbaa !21
  br label %bb41
bb41:
  %t183 = load i1, ptr %l103, !tbaa !21
  br i1 %t183, label %bb42, label %bb43
bb42:
  %t184 = load ptr, ptr %l3, !tbaa !29
  %t186 = getelementptr %"compiler/load:Module", ptr %t184, i32 0, i32 16
  %t187 = load i64, ptr %l2, !tbaa !24
  %t188 = load i64, ptr %l12, !tbaa !24
  %t189 = load i64, ptr %l5, !tbaa !24
  %t192 = sub i64 %t188, %t189
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eSetAt_3cI64_3e(ptr %v0, ptr %t186, i64 %t187, i64 %t192)
  br label %bb44
bb43:
  br label %bb45
bb44:
  br label %ret
bb45:
  br label %bb46
bb46:
  %t196 = load i64, ptr %l11, !tbaa !24
  %t198 = add i64 %t196, 1
  store i64 %t198, ptr %l11, !tbaa !24
  br label %bb29
bb47:
  %t200 = load ptr, ptr %l3, !tbaa !29
  %t202 = getelementptr %"compiler/load:Module", ptr %t200, i32 0, i32 16
  store ptr %t202, ptr %l114, !tbaa !29
  %t203 = load i64, ptr %l2, !tbaa !24
  store i64 %t203, ptr %l115, !tbaa !24
  %t204 = load ptr, ptr %l3, !tbaa !29
  %t206 = getelementptr %"compiler/load:Module", ptr %t204, i32 0, i32 17
  %t207 = load i64, ptr %l2, !tbaa !24
  %t210 = call i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eAt_3cBool_3e(ptr %v0, ptr %t206, i64 %t207)
  store i1 %t210, ptr %l119
  br label %bb48
bb48:
  %t211 = load i1, ptr %l119, !tbaa !21
  br i1 %t211, label %bb49, label %bb50
bb49:
  %t212 = load i64, ptr %l6, !tbaa !24
  %t213 = load i64, ptr %l5, !tbaa !24
  %t216 = sub i64 %t212, %t213
  store i64 %t216, ptr %l120, !tbaa !24
  br label %bb51
bb50:
  %t218 = load i64, ptr @G_2ecompiler_2fload_2eNoBranch, !tbaa !24
  store i64 %t218, ptr %l120, !tbaa !24
  br label %bb51
bb51:
  %t220 = load ptr, ptr %l114, !tbaa !29
  %t221 = load i64, ptr %l115, !tbaa !24
  %t222 = load i64, ptr %l120, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eSetAt_3cI64_3e(ptr %v0, ptr %t220, i64 %t221, i64 %t222)
  br label %bb52
bb52:
  br label %ret
ret:
  ret void
}

define dso_local %"compiler/cond:Decision" @compiler_2fload_2ecompiler_2fload_3aLoader_2eevalCond(ptr %v0, ptr %a0, i64 %a1, i64 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l3 = alloca ptr
  %l4 = alloca ptr
  %l5 = alloca ptr
  %l6 = alloca %"compiler/cond:Decision"
  %l7 = alloca { %"compiler/source:Span", %"compiler/diagmsg:Msg" }
  %l9 = alloca %"compiler/diagmsg:Msg"
  %l13 = alloca ptr
  %l16 = alloca ptr
  %l23 = alloca ptr
  %l24 = alloca i32
  %l26 = alloca %"compiler/cond:Decision"
  %l33 = alloca { i64, ptr }
  %l39 = alloca i64
  %l44 = alloca %"compiler/cond:Decision"
  %l51 = alloca { i64, ptr }
  %l53 = alloca ptr
  %l61 = alloca %"compiler/cond:Eval"
  %l65 = alloca %"compiler/cond:Decision"
  %l69 = alloca { %"compiler/source:Span", %"compiler/diagmsg:Msg" }
  %l73 = alloca ptr
  %l77 = alloca { i64, [3 x i64] }
  %l79 = alloca i64
  %s1 = alloca %olang.scope
  %s2 = alloca %olang.scope
  %rv = alloca %"compiler/cond:Decision"
  %t114 = alloca %"compiler/cond:Eval", align 8
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/load:Loader", ptr %t1, i32 0, i32 10
  %t7 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H7bcf2aeb09afa796f4333e6ec8c3f63f(ptr %v0, ptr %v0, ptr %t3, i64 %a1)
  store ptr %t7, ptr %l13
  br label %bb1
bb1:
  %t8 = load ptr, ptr %l13, !tbaa !29
  store ptr %t8, ptr %l3, !tbaa !29
  %t9 = load ptr, ptr %l0, !tbaa !29
  %t10 = load ptr, ptr %l3, !tbaa !29
  call void @compiler_2fload_2ecompiler_2fload_3aLoader_2eCondParser(ptr %v0, ptr %v0, ptr %t9, ptr %t10)
  br label %bb2
bb2:
  %t13 = load ptr, ptr %l3, !tbaa !29
  %t15 = getelementptr %"compiler/load:Module", ptr %t13, i32 0, i32 24
  %t16 = load ptr, ptr %t15, !tbaa !29
  %t18 = icmp eq ptr %t16, null
  br i1 %t18, label %bb3, label %bb4
bb3:
  call void @__olang_check_failed(ptr @olang_loc_10115782cae2d59a_b13624e5abc6764e)
  unreachable
bb4:
  br label %bb5
bb5:
  %t20 = load ptr, ptr %l3, !tbaa !29
  %t22 = getelementptr %"compiler/load:Module", ptr %t20, i32 0, i32 24
  %t23 = load ptr, ptr %t22, !tbaa !29
  %t27 = call { i32, ptr } @compiler_2fparse_2ecompiler_2fparse_3aParser_2eExprAt(ptr %v0, ptr %v0, ptr %t23, i64 %a2)
  %t28 = extractvalue { i32, ptr } %t27, 1
  %t29 = extractvalue { i32, ptr } %t27, 0
  store i32 %t29, ptr %l24
  %t30 = icmp ne i32 %t29, 0
  br i1 %t30, label %bb7, label %ok.31, !prof !99
ok.31:
  store ptr %t28, ptr %l23
  br label %bb6
bb6:
  %t32 = load ptr, ptr %l23, !tbaa !29
  store ptr %t32, ptr %l16, !tbaa !29
  br label %bb10
bb7:
  br label %bb8
bb8:
  store %olang.scope zeroinitializer, ptr %s1
  %t34 = call %"compiler/cond:Decision" @compiler_2fcond_3aDecision_2ector(ptr %s1, i32 2, i1 false)
  store %"compiler/cond:Decision" %t34, ptr %l26
  br label %bb9
bb9:
  call void @__olang_scope_close(ptr %s1)
  %t35 = load %"compiler/cond:Decision", ptr %l26
  store %"compiler/cond:Decision" %t35, ptr %rv
  br label %ret
bb10:
  %t36 = load ptr, ptr %l16, !tbaa !29
  store ptr %t36, ptr %l4, !tbaa !29
  %t37 = load ptr, ptr %l3, !tbaa !29
  %t39 = getelementptr %"compiler/load:Module", ptr %t37, i32 0, i32 7
  %t40 = load ptr, ptr %t39, !tbaa !29
  %t42 = icmp eq ptr %t40, null
  br i1 %t42, label %bb11, label %bb12
bb11:
  call void @__olang_check_failed(ptr @olang_loc_c8cfdf98ee3f2b21_1207f6627874c5f5)
  unreachable
bb12:
  br label %bb13
bb13:
  %t44 = load ptr, ptr %l3, !tbaa !29
  %t46 = getelementptr %"compiler/load:Module", ptr %t44, i32 0, i32 7
  %t47 = load ptr, ptr %t46, !tbaa !29
  %t50 = getelementptr %"compiler/scan:Tokens", ptr %t47, i32 0, i32 0
  %t51 = load { i64, ptr }, ptr %t50, !tbaa !27
  store { i64, ptr } %t51, ptr %l33, !tbaa !27
  %t52 = load ptr, ptr %l3, !tbaa !29
  %t54 = getelementptr %"compiler/load:Module", ptr %t52, i32 0, i32 24
  %t55 = load ptr, ptr %t54, !tbaa !29
  %t57 = icmp eq ptr %t55, null
  br i1 %t57, label %bb14, label %bb15
bb14:
  call void @__olang_check_failed(ptr @olang_loc_c8cfdf98ee3f2b21_1207f6627874c5f5)
  unreachable
bb15:
  br label %bb16
bb16:
  %t59 = load ptr, ptr %l3, !tbaa !29
  %t61 = getelementptr %"compiler/load:Module", ptr %t59, i32 0, i32 24
  %t62 = load ptr, ptr %t61, !tbaa !29
  %t64 = call i64 @compiler_2fparse_2ecompiler_2fparse_3aParser_2ePos(ptr %v0, ptr %t62)
  store i64 %t64, ptr %l39
  br label %bb17
bb17:
  %t65 = load i64, ptr %l39, !tbaa !24
  %t66 = getelementptr { i64, ptr }, ptr %l33, i32 0, i32 1
  %t67 = load ptr, ptr %t66, !tbaa !27
  %t68 = getelementptr %"compiler/token:Token", ptr %t67, i64 %t65
  %t69 = getelementptr %"compiler/token:Token", ptr %t68, i32 0, i32 0
  %t70 = load i32, ptr %t69, !range !{i32 0, i32 113}
  %t72 = trunc i64 111 to i32
  %t73 = icmp eq i32 %t70, %t72
  %t75 = xor i1 %t73, true
  br i1 %t75, label %bb18, label %bb19
bb18:
  store %olang.scope zeroinitializer, ptr %s2
  %t78 = call %"compiler/cond:Decision" @compiler_2fcond_3aDecision_2ector(ptr %s2, i32 1, i1 false)
  store %"compiler/cond:Decision" %t78, ptr %l44
  br label %bb20
bb19:
  br label %bb21
bb20:
  call void @__olang_scope_close(ptr %s2)
  %t79 = load %"compiler/cond:Decision", ptr %l44
  store %"compiler/cond:Decision" %t79, ptr %rv
  br label %ret
bb21:
  %t80 = load ptr, ptr %l3, !tbaa !29
  %t82 = getelementptr %"compiler/load:Module", ptr %t80, i32 0, i32 6
  %t83 = load ptr, ptr %t82, !tbaa !29
  %t85 = icmp eq ptr %t83, null
  br i1 %t85, label %bb22, label %bb23
bb22:
  call void @__olang_check_failed(ptr @olang_loc_b990dbcfbe082b6c_e09e9a90e433de0)
  unreachable
bb23:
  br label %bb24
bb24:
  %t87 = load ptr, ptr %l3, !tbaa !29
  %t89 = getelementptr %"compiler/load:Module", ptr %t87, i32 0, i32 6
  %t90 = load ptr, ptr %t89, !tbaa !29
  %t93 = getelementptr %"compiler/source:Source", ptr %t90, i32 0, i32 1
  %t94 = load { i64, ptr }, ptr %t93, !tbaa !27
  store { i64, ptr } %t94, ptr %l51, !tbaa !27
  %t95 = load ptr, ptr %l0, !tbaa !29
  %t97 = getelementptr %"compiler/load:Loader", ptr %t95, i32 0, i32 3
  %t98 = load ptr, ptr %t97, !tbaa !29
  store ptr %t98, ptr %l53, !tbaa !29
  %t99 = load ptr, ptr %l3, !tbaa !29
  %t101 = getelementptr %"compiler/load:Module", ptr %t99, i32 0, i32 23
  %t102 = load ptr, ptr %t101, !tbaa !29
  %t104 = icmp eq ptr %t102, null
  br i1 %t104, label %bb25, label %bb26
bb25:
  call void @__olang_check_failed(ptr @olang_loc_b990dbcfbe082b6c_e09e9a90e433de0)
  unreachable
bb26:
  br label %bb27
bb27:
  %t106 = load ptr, ptr %l3, !tbaa !29
  %t108 = getelementptr %"compiler/load:Module", ptr %t106, i32 0, i32 23
  %t109 = load ptr, ptr %t108, !tbaa !29
  %t110 = load ptr, ptr %l0, !tbaa !29
  %t112 = getelementptr %"compiler/load:Loader", ptr %t110, i32 0, i32 1
  %t113 = load ptr, ptr %t112, !tbaa !29
  %t115 = load { i64, ptr }, ptr %l51, !tbaa !27
  %t116 = load ptr, ptr %l53, !tbaa !29
  call void @compiler_2fcond_3aEval_2ector(ptr %t114, ptr %v0, ptr %v0, ptr %v0, ptr %v0, ptr %v0, { i64, ptr } %t115, ptr %t116, ptr %t109, ptr %t113)
  call void @llvm.memmove.p0.p0.i64(ptr %l61, ptr %t114, i64 184, i1 false)
  br label %bb28
bb28:
  %t119 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 184, i64 8)
  call void @llvm.memmove.p0.p0.i64(ptr %t119, ptr %l61, i64 184, i1 false)
  store ptr %t119, ptr %l5, !tbaa !29
  %t121 = load ptr, ptr %l5, !tbaa !29
  %t122 = load ptr, ptr %l4, !tbaa !29
  %t125 = call %"compiler/cond:Decision" @compiler_2fcond_2ecompiler_2fcond_3aEval_2eTop(ptr %v0, ptr %v0, ptr %t121, ptr %t122)
  store %"compiler/cond:Decision" %t125, ptr %l65
  br label %bb29
bb29:
  %t126 = load %"compiler/cond:Decision", ptr %l65
  store %"compiler/cond:Decision" %t126, ptr %l6
  %t127 = getelementptr %"compiler/cond:Decision", ptr %l6, i32 0, i32 0
  %t128 = load i32, ptr %t127, !range !{i32 0, i32 5}
  %t130 = trunc i64 2 to i32
  %t131 = icmp eq i32 %t128, %t130
  br i1 %t131, label %bb30, label %bb31
bb30:
  %t133 = load ptr, ptr %l5, !tbaa !29
  %t135 = call { %"compiler/source:Span", %"compiler/diagmsg:Msg" } @compiler_2fcond_2ecompiler_2fcond_3aEval_2eError(ptr %v0, ptr %v0, ptr %t133)
  store { %"compiler/source:Span", %"compiler/diagmsg:Msg" } %t135, ptr %l69
  br label %bb32
bb31:
  br label %bb35
bb32:
  %t136 = load { %"compiler/source:Span", %"compiler/diagmsg:Msg" }, ptr %l69
  store { %"compiler/source:Span", %"compiler/diagmsg:Msg" } %t136, ptr %l7
  %t137 = getelementptr { %"compiler/source:Span", %"compiler/diagmsg:Msg" }, ptr %l7, i32 0, i32 0
  %t138 = load %"compiler/source:Span", ptr %t137
  %t140 = getelementptr { %"compiler/source:Span", %"compiler/diagmsg:Msg" }, ptr %l7, i32 0, i32 1
  %t141 = load %"compiler/diagmsg:Msg", ptr %t140
  store %"compiler/diagmsg:Msg" %t141, ptr %l9
  %t143 = load ptr, ptr %l0, !tbaa !29
  %t145 = getelementptr %"compiler/load:Loader", ptr %t143, i32 0, i32 4
  %t146 = load ptr, ptr %t145, !tbaa !29
  store ptr %t146, ptr %l73, !tbaa !29
  %t147 = load ptr, ptr %l0, !tbaa !29
  %t148 = load ptr, ptr %l3, !tbaa !29
  %t153 = call { i64, [3 x i64] } @compiler_2fload_2ecompiler_2fload_3aLoader_2eat(ptr %v0, ptr %v0, ptr %t147, ptr %t148, %"compiler/source:Span" %t138)
  store { i64, [3 x i64] } %t153, ptr %l77
  br label %bb33
bb33:
  %t154 = load %"compiler/diagmsg:Msg", ptr %l9
  %t155 = load ptr, ptr %l73, !tbaa !29
  %t156 = load { i64, [3 x i64] }, ptr %l77
  %t158 = call i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eError(ptr %v0, ptr %v0, ptr %t155, { i64, [3 x i64] } %t156, %"compiler/diagmsg:Msg" %t154)
  store i64 %t158, ptr %l79
  br label %bb34
bb34:
  br label %bb35
bb35:
  %t159 = load %"compiler/cond:Decision", ptr %l6
  store %"compiler/cond:Decision" %t159, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/cond:Decision", ptr %rv
  ret %"compiler/cond:Decision" %rr
}

define dso_local void @compiler_2fload_2ecompiler_2fload_3aLoader_2egroups(ptr %v0, ptr %v1, ptr %a0, i64 %a1, { i64, ptr } %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l3 = alloca { i64, ptr }
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca ptr
  %l7 = alloca ptr
  %l16 = alloca { i64, ptr }
  %l19 = alloca ptr
  %l20 = alloca i1
  %l25 = alloca ptr
  %l26 = alloca i64
  %l32 = alloca %"compiler/source:Span"
  %l34 = alloca i64
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store { i64, ptr } %a2, ptr %l3, !tbaa !27
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
  br label %bb23
bb3:
  br label %bb4
bb4:
  %t15 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t15, ptr %l16, !tbaa !27
  %t16 = load i64, ptr %l4, !tbaa !24
  %t18 = getelementptr { i64, ptr }, ptr %l16, i32 0, i32 1
  %t19 = load ptr, ptr %t18, !tbaa !27
  %t20 = getelementptr ptr, ptr %t19, i64 %t16
  %t21 = load ptr, ptr %t20, !tbaa !39
  store ptr %t21, ptr %l6, !tbaa !29
  %t23 = load ptr, ptr %l6, !tbaa !29
  store ptr %t23, ptr %l19, !tbaa !29
  store i1 false, ptr %l20, !tbaa !21
  %t24 = load ptr, ptr %l19, !tbaa !29
  %t25 = icmp ne ptr %t24, null
  br i1 %t25, label %bb5, label %bb6
bb5:
  %t27 = load ptr, ptr %l19, !tbaa !29
  %t28 = load i64, ptr %t27, !range !{i64 0, i64 11}
  %t30 = icmp eq i64 %t28, 7
  store i1 %t30, ptr %l20, !tbaa !21
  br label %bb6
bb6:
  %t31 = load i1, ptr %l20, !tbaa !21
  br i1 %t31, label %bb7, label %bb8
bb7:
  %t32 = load ptr, ptr %l6, !tbaa !29
  %t34 = getelementptr { i64, [8 x i64] }, ptr %t32, i32 0, i32 1
  %t35 = getelementptr { %"compiler/source:Span", ptr }, ptr %t34, i32 0, i32 1
  %t36 = load ptr, ptr %t35
  store ptr %t36, ptr %l7, !tbaa !29
  br label %bb9
bb8:
  br label %bb16
bb9:
  %t38 = load ptr, ptr %l0, !tbaa !29
  store ptr %t38, ptr %l25, !tbaa !29
  %t39 = load i64, ptr %l1, !tbaa !24
  store i64 %t39, ptr %l26, !tbaa !24
  %t40 = load ptr, ptr %l7, !tbaa !29
  %t42 = getelementptr %"compiler/ast:TopIf", ptr %t40, i32 0, i32 0
  %t43 = load ptr, ptr %t42, !tbaa !29
  %t45 = icmp eq ptr %t43, null
  br i1 %t45, label %bb10, label %bb11
bb10:
  call void @__olang_check_failed(ptr @olang_loc_e0f283e125550868_38a74932bc9801b4)
  unreachable
bb11:
  br label %bb12
bb12:
  %t47 = load ptr, ptr %l7, !tbaa !29
  %t49 = getelementptr %"compiler/ast:TopIf", ptr %t47, i32 0, i32 0
  %t50 = load ptr, ptr %t49, !tbaa !29
  %t52 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v1, ptr %t50)
  store %"compiler/source:Span" %t52, ptr %l32
  br label %bb13
bb13:
  %t53 = getelementptr %"compiler/source:Span", ptr %l32, i32 0, i32 0
  %t54 = load i32, ptr %t53, !tbaa !23
  %t55 = load ptr, ptr %l25, !tbaa !29
  %t56 = load i64, ptr %l26, !tbaa !24
  %t58 = call i64 @compiler_2fload_2ecompiler_2fload_3aLoader_2eChosen(ptr %v0, ptr %t55, i64 %t56, i32 %t54)
  store i64 %t58, ptr %l34
  br label %bb14
bb14:
  %t59 = load i64, ptr %l34, !tbaa !24
  %t60 = load ptr, ptr %l0, !tbaa !29
  %t61 = load i64, ptr %l1, !tbaa !24
  %t62 = load ptr, ptr %l7, !tbaa !29
  call void @compiler_2fload_2ecompiler_2fload_3aLoader_2echainGroups(ptr %v0, ptr %v1, ptr %t60, i64 %t61, ptr %t62, i64 %t59, i64 0)
  br label %bb15
bb15:
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
  call void @__olang_check_failed(ptr @olang_loc_d07ee4e1bf4c721e_f2d4ed263b6afcda)
  unreachable
bb21:
  br label %bb22
bb22:
  %t68 = load i64, ptr %l4, !tbaa !24
  %t70 = add i64 %t68, 1
  store i64 %t70, ptr %l4, !tbaa !24
  br label %bb1
bb23:
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2fload_2ecompiler_2fload_3aLoader_2eimportAt(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i64 %a2, i64 %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l4 = alloca { i64, ptr }
  %l5 = alloca i64
  %lp6 = alloca ptr
  %l7 = alloca %"compiler/source:Span"
  %l8 = alloca %"compiler/source:Span"
  %lp9 = alloca ptr
  %l10 = alloca ptr
  %l20 = alloca { i64, ptr }
  %l22 = alloca %"compiler/source:Span"
  %l23 = alloca { i64, ptr }
  %l27 = alloca { i64, ptr }
  %l30 = alloca { i64, ptr }
  %l33 = alloca %"compiler/source:Span"
  %l34 = alloca i64
  %l42 = alloca { i64, ptr }
  %l43 = alloca { i64, ptr }
  %l46 = alloca i64
  %l47 = alloca { i64, ptr }
  %l50 = alloca i64
  %l51 = alloca i64
  %l56 = alloca { i64, ptr }
  %l58 = alloca { i64, ptr }
  %l62 = alloca { i64, ptr }
  %l67 = alloca { i64, ptr }
  %l70 = alloca { i64, ptr }
  %l73 = alloca %"compiler/source:Span"
  %l80 = alloca { i64, ptr }
  %l82 = alloca i64
  %l84 = alloca i64
  %l85 = alloca i64
  %l90 = alloca { i64, ptr }
  %l92 = alloca i1
  %l93 = alloca i64
  %l96 = alloca { i64, ptr }
  %l97 = alloca { i64, ptr }
  %l99 = alloca { i64, ptr }
  %l107 = alloca %"compiler/load:Import"
  %l109 = alloca { i64, ptr }
  %l114 = alloca i1
  %l121 = alloca { i64, ptr }
  %l122 = alloca { i64, ptr }
  %l126 = alloca i64
  %l127 = alloca { i64, ptr }
  %l131 = alloca i64
  %l132 = alloca i64
  %l137 = alloca i1
  %l138 = alloca i1
  %l139 = alloca { i64, ptr }
  %l144 = alloca ptr
  %l145 = alloca { i64, ptr }
  %l149 = alloca { i64, ptr }
  %l153 = alloca %"compiler/source:Span"
  %l154 = alloca ptr
  %l155 = alloca i64
  %l163 = alloca { i64, ptr }
  %l166 = alloca i64
  %l169 = alloca i64
  %l170 = alloca i64
  %l175 = alloca { i64, ptr }
  %l178 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %s1 = alloca %olang.scope
  %s4 = alloca %olang.scope
  %s6 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l1, !tbaa !29
  %t3 = getelementptr %"compiler/load:Module", ptr %t1, i32 0, i32 7
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t6 = icmp eq ptr %t4, null
  br i1 %t6, label %bb1, label %bb2
bb1:
  call void @__olang_check_failed(ptr @olang_loc_88eba3596c4d138c_c1530d55fa80a9b0)
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
  %t19 = add i64 %a2, 1
  store i64 %t19, ptr %l5, !tbaa !24
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d144, i32 0, i32 1) }, ptr %l20, !tbaa !27
  %t21 = load { i64, ptr }, ptr %l20, !tbaa !27
  %t22 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 16, i64 8)
  store ptr %t22, ptr %lp6
  %t24 = load ptr, ptr %lp6
  store { i64, ptr } %t21, ptr %t24, !tbaa !27
  %t25 = call %"compiler/source:Span" @compiler_2fsource_3aSpan_2ector(ptr %s0, i32 0, i32 0)
  store %"compiler/source:Span" %t25, ptr %l22
  br label %bb4
bb4:
  %t26 = load %"compiler/source:Span", ptr %l22
  store %"compiler/source:Span" %t26, ptr %l7
  %t27 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t27, ptr %l23, !tbaa !27
  %t28 = load i64, ptr %l5, !tbaa !24
  %t30 = getelementptr { i64, ptr }, ptr %l23, i32 0, i32 1
  %t31 = load ptr, ptr %t30, !tbaa !27
  %t32 = getelementptr %"compiler/token:Token", ptr %t31, i64 %t28
  %t33 = getelementptr %"compiler/token:Token", ptr %t32, i32 0, i32 0
  %t34 = load i32, ptr %t33, !range !{i32 0, i32 113}
  %t36 = trunc i64 1 to i32
  %t37 = icmp eq i32 %t34, %t36
  br i1 %t37, label %bb5, label %bb6
bb5:
  store %olang.scope zeroinitializer, ptr %s1
  %t39 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t39, ptr %l27, !tbaa !27
  %t40 = load i64, ptr %l5, !tbaa !24
  %t42 = getelementptr { i64, ptr }, ptr %l27, i32 0, i32 1
  %t43 = load ptr, ptr %t42, !tbaa !27
  %t44 = getelementptr %"compiler/token:Token", ptr %t43, i64 %t40
  %t45 = getelementptr %"compiler/token:Token", ptr %t44, i32 0, i32 2
  %t46 = load i32, ptr %t45, !tbaa !23
  %t47 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t47, ptr %l30, !tbaa !27
  %t48 = load i64, ptr %l5, !tbaa !24
  %t50 = getelementptr { i64, ptr }, ptr %l30, i32 0, i32 1
  %t51 = load ptr, ptr %t50, !tbaa !27
  %t52 = getelementptr %"compiler/token:Token", ptr %t51, i64 %t48
  %t53 = getelementptr %"compiler/token:Token", ptr %t52, i32 0, i32 3
  %t54 = load i32, ptr %t53, !tbaa !23
  %t57 = call %"compiler/source:Span" @compiler_2fsource_3aSpan_2ector(ptr %s1, i32 %t46, i32 %t54)
  store %"compiler/source:Span" %t57, ptr %l33
  br label %bb7
bb6:
  br label %bb23
bb7:
  %t58 = load %"compiler/source:Span", ptr %l33
  store %"compiler/source:Span" %t58, ptr %l7
  %t59 = ptrtoint ptr %v1 to i64
  store i64 %t59, ptr %l34, !tbaa !24
  %t60 = load i1, ptr @olang_2esole_2ecompiler__2fload__2ecompiler__2fload__3aLoader__2eimportAt_2elocal_2e6
  br i1 %t60, label %bb8, label %bb9
bb8:
  %t62 = call ptr @__olang_region_make(ptr %v1)
  %t63 = ptrtoint ptr %t62 to i64
  store i64 %t63, ptr %l34, !tbaa !24
  br label %bb9
bb9:
  %t64 = load ptr, ptr %l1, !tbaa !29
  %t66 = getelementptr %"compiler/load:Module", ptr %t64, i32 0, i32 6
  %t67 = load ptr, ptr %t66, !tbaa !29
  %t69 = icmp eq ptr %t67, null
  br i1 %t69, label %bb10, label %bb11
bb10:
  call void @__olang_check_failed(ptr @olang_loc_17f5e01691795fb_80a050950937648f)
  unreachable
bb11:
  br label %bb12
bb12:
  %t71 = load ptr, ptr %l1, !tbaa !29
  %t73 = getelementptr %"compiler/load:Module", ptr %t71, i32 0, i32 6
  %t74 = load ptr, ptr %t73, !tbaa !29
  %t77 = getelementptr %"compiler/source:Source", ptr %t74, i32 0, i32 1
  %t78 = load { i64, ptr }, ptr %t77, !tbaa !27
  store { i64, ptr } %t78, ptr %l42, !tbaa !27
  %t79 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t79, ptr %l43, !tbaa !27
  %t80 = load i64, ptr %l5, !tbaa !24
  %t82 = getelementptr { i64, ptr }, ptr %l43, i32 0, i32 1
  %t83 = load ptr, ptr %t82, !tbaa !27
  %t84 = getelementptr %"compiler/token:Token", ptr %t83, i64 %t80
  %t85 = getelementptr %"compiler/token:Token", ptr %t84, i32 0, i32 2
  %t86 = load i32, ptr %t85, !tbaa !23
  %t88 = sext i32 %t86 to i64
  store i64 %t88, ptr %l46, !tbaa !24
  %t89 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t89, ptr %l47, !tbaa !27
  %t90 = load i64, ptr %l5, !tbaa !24
  %t92 = getelementptr { i64, ptr }, ptr %l47, i32 0, i32 1
  %t93 = load ptr, ptr %t92, !tbaa !27
  %t94 = getelementptr %"compiler/token:Token", ptr %t93, i64 %t90
  %t95 = getelementptr %"compiler/token:Token", ptr %t94, i32 0, i32 3
  %t96 = load i32, ptr %t95, !tbaa !23
  %t98 = sext i32 %t96 to i64
  store i64 %t98, ptr %l50, !tbaa !24
  %t99 = load { i64, ptr }, ptr %l42, !tbaa !27
  %t100 = extractvalue { i64, ptr } %t99, 0
  store i64 %t100, ptr %l51, !tbaa !24
  %t101 = load i64, ptr %l46, !tbaa !24
  %t102 = icmp sge i64 %t101, 0
  br i1 %t102, label %bb13, label %bb14
bb13:
  %t104 = load i64, ptr %l46, !tbaa !24
  %t105 = load i64, ptr %l50, !tbaa !24
  %t106 = icmp sle i64 %t104, %t105
  br i1 %t106, label %bb15, label %bb16
bb14:
  call void @__olang_check_failed(ptr @olang_loc_fd1d115e36d277d2_104a63438b39a3d6)
  unreachable
bb15:
  %t108 = load i64, ptr %l50, !tbaa !24
  %t109 = load i64, ptr %l51, !tbaa !24
  %t110 = icmp sle i64 %t108, %t109
  br i1 %t110, label %bb17, label %bb18
bb16:
  call void @__olang_check_failed(ptr @olang_loc_fd1d115e36d277d2_104a63438b39a3d6)
  unreachable
bb17:
  %t112 = getelementptr { i64, ptr }, ptr %l42, i32 0, i32 1
  %t113 = load ptr, ptr %t112, !tbaa !27
  %t114 = load i64, ptr %l46, !tbaa !24
  %t115 = load i64, ptr %l50, !tbaa !24
  %t116 = getelementptr i8, ptr %t113, i64 %t114
  %t117 = sub i64 %t115, %t114
  %t118 = insertvalue { i64, ptr } undef, i64 %t117, 0
  %t119 = insertvalue { i64, ptr } %t118, ptr %t116, 1
  %t121 = extractvalue { i64, ptr } %t119, 1
  %t122 = extractvalue { i64, ptr } %t119, 0
  %t123 = load i64, ptr %l34
  %t124 = inttoptr i64 %t123 to ptr
  %t125 = call ptr @__olang_scope_alloc(ptr %t124, i64 %t122)
  call void @olang_textcopy(ptr %t125, ptr %t121, i64 %t122)
  %t126 = insertvalue { i64, ptr } undef, i64 %t122, 0
  %t127 = insertvalue { i64, ptr } %t126, ptr %t125, 1
  store { i64, ptr } %t127, ptr %l56, !tbaa !27
  %t128 = load i1, ptr @olang_2esole_2ecompiler__2fload__2ecompiler__2fload__3aLoader__2eimportAt_2elocal_2e6
  br i1 %t128, label %bb19, label %bb20
bb18:
  call void @__olang_check_failed(ptr @olang_loc_fd1d115e36d277d2_104a63438b39a3d6)
  unreachable
bb19:
  %t130 = load i64, ptr %l34
  %t131 = inttoptr i64 %t130 to ptr
  %t132 = load { i64, ptr }, ptr %l56
  %t133 = extractvalue { i64, ptr } %t132, 1
  %t134 = call ptr @__olang_region_or(ptr %t133, ptr null)
  %t135 = icmp ne ptr %t134, null
  %t136 = select i1 %t135, ptr %t134, ptr null
  %t137 = icmp eq ptr %t136, %t131
  call void @__olang_region_settle(ptr %t131, i1 %t137)
  br label %bb20
bb20:
  %t138 = load ptr, ptr %lp6
  %t139 = load { i64, ptr }, ptr %t138, !tbaa !27
  store { i64, ptr } %t139, ptr %l58, !tbaa !27
  %t140 = load { i64, ptr }, ptr %l56, !tbaa !27
  %t141 = load ptr, ptr %lp6
  store { i64, ptr } %t140, ptr %t141, !tbaa !27
  %t142 = load i1, ptr @olang_2esole_2ecompiler__2fload__2ecompiler__2fload__3aLoader__2eimportAt_2elocal_2e6
  br i1 %t142, label %bb21, label %bb22
bb21:
  %t144 = load { i64, ptr }, ptr %l58
  %t145 = extractvalue { i64, ptr } %t144, 1
  call void @__olang_region_release(ptr %t145)
  store { i64, ptr } zeroinitializer, ptr %l58
  br label %bb22
bb22:
  %t146 = load i64, ptr %l5, !tbaa !24
  %t148 = add i64 %t146, 1
  store i64 %t148, ptr %l5, !tbaa !24
  call void @__olang_scope_close(ptr %s1)
  br label %bb23
bb23:
  %t150 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t150, ptr %l62, !tbaa !27
  %t151 = load i64, ptr %l5, !tbaa !24
  %t153 = getelementptr { i64, ptr }, ptr %l62, i32 0, i32 1
  %t154 = load ptr, ptr %t153, !tbaa !27
  %t155 = getelementptr %"compiler/token:Token", ptr %t154, i64 %t151
  %t156 = getelementptr %"compiler/token:Token", ptr %t155, i32 0, i32 0
  %t157 = load i32, ptr %t156, !range !{i32 0, i32 113}
  %t159 = trunc i64 5 to i32
  %t160 = icmp eq i32 %t157, %t159
  %t162 = xor i1 %t160, true
  br i1 %t162, label %bb24, label %bb25
bb24:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb25:
  br label %bb26
bb26:
  %t164 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t164, ptr %l67, !tbaa !27
  %t165 = load i64, ptr %l5, !tbaa !24
  %t167 = getelementptr { i64, ptr }, ptr %l67, i32 0, i32 1
  %t168 = load ptr, ptr %t167, !tbaa !27
  %t169 = getelementptr %"compiler/token:Token", ptr %t168, i64 %t165
  %t170 = getelementptr %"compiler/token:Token", ptr %t169, i32 0, i32 2
  %t171 = load i32, ptr %t170, !tbaa !23
  %t172 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t172, ptr %l70, !tbaa !27
  %t173 = load i64, ptr %l5, !tbaa !24
  %t175 = getelementptr { i64, ptr }, ptr %l70, i32 0, i32 1
  %t176 = load ptr, ptr %t175, !tbaa !27
  %t177 = getelementptr %"compiler/token:Token", ptr %t176, i64 %t173
  %t178 = getelementptr %"compiler/token:Token", ptr %t177, i32 0, i32 3
  %t179 = load i32, ptr %t178, !tbaa !23
  %t182 = call %"compiler/source:Span" @compiler_2fsource_3aSpan_2ector(ptr %s0, i32 %t171, i32 %t179)
  store %"compiler/source:Span" %t182, ptr %l73
  br label %bb27
bb27:
  %t183 = load %"compiler/source:Span", ptr %l73
  store %"compiler/source:Span" %t183, ptr %l8
  %t184 = load ptr, ptr %l1, !tbaa !29
  %t186 = getelementptr %"compiler/load:Module", ptr %t184, i32 0, i32 6
  %t187 = load ptr, ptr %t186, !tbaa !29
  %t189 = icmp eq ptr %t187, null
  br i1 %t189, label %bb28, label %bb29
bb28:
  call void @__olang_check_failed(ptr @olang_loc_3753a1d7262b2cc1_bd09a853d1b85305)
  unreachable
bb29:
  br label %bb30
bb30:
  %t191 = load ptr, ptr %l1, !tbaa !29
  %t193 = getelementptr %"compiler/load:Module", ptr %t191, i32 0, i32 6
  %t194 = load ptr, ptr %t193, !tbaa !29
  %t197 = getelementptr %"compiler/source:Source", ptr %t194, i32 0, i32 1
  %t198 = load { i64, ptr }, ptr %t197, !tbaa !27
  store { i64, ptr } %t198, ptr %l80, !tbaa !27
  %t199 = getelementptr %"compiler/source:Span", ptr %l8, i32 0, i32 0
  %t200 = load i32, ptr %t199, !tbaa !23
  %t202 = sext i32 %t200 to i64
  store i64 %t202, ptr %l82, !tbaa !24
  %t203 = getelementptr %"compiler/source:Span", ptr %l8, i32 0, i32 1
  %t204 = load i32, ptr %t203, !tbaa !23
  %t206 = sext i32 %t204 to i64
  store i64 %t206, ptr %l84, !tbaa !24
  %t207 = load { i64, ptr }, ptr %l80, !tbaa !27
  %t208 = extractvalue { i64, ptr } %t207, 0
  store i64 %t208, ptr %l85, !tbaa !24
  %t209 = load i64, ptr %l82, !tbaa !24
  %t210 = icmp sge i64 %t209, 0
  br i1 %t210, label %bb31, label %bb32
bb31:
  %t212 = load i64, ptr %l82, !tbaa !24
  %t213 = load i64, ptr %l84, !tbaa !24
  %t214 = icmp sle i64 %t212, %t213
  br i1 %t214, label %bb33, label %bb34
bb32:
  call void @__olang_check_failed(ptr @olang_loc_a7b0777888cd5d70_d2e13e44ce4d5eec)
  unreachable
bb33:
  %t216 = load i64, ptr %l84, !tbaa !24
  %t217 = load i64, ptr %l85, !tbaa !24
  %t218 = icmp sle i64 %t216, %t217
  br i1 %t218, label %bb35, label %bb36
bb34:
  call void @__olang_check_failed(ptr @olang_loc_a7b0777888cd5d70_d2e13e44ce4d5eec)
  unreachable
bb35:
  %t220 = getelementptr { i64, ptr }, ptr %l80, i32 0, i32 1
  %t221 = load ptr, ptr %t220, !tbaa !27
  %t222 = load i64, ptr %l82, !tbaa !24
  %t223 = load i64, ptr %l84, !tbaa !24
  %t224 = getelementptr i8, ptr %t221, i64 %t222
  %t225 = sub i64 %t223, %t222
  %t226 = insertvalue { i64, ptr } undef, i64 %t225, 0
  %t227 = insertvalue { i64, ptr } %t226, ptr %t224, 1
  %t229 = call { i64, ptr } @compiler_2fscan_2eLiteralText(ptr %v1, ptr %v1, { i64, ptr } %t227)
  store { i64, ptr } %t229, ptr %l90
  br label %bb37
bb36:
  call void @__olang_check_failed(ptr @olang_loc_a7b0777888cd5d70_d2e13e44ce4d5eec)
  unreachable
bb37:
  %t230 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 16, i64 8)
  store ptr %t230, ptr %lp9
  %t231 = load { i64, ptr }, ptr %l90, !tbaa !27
  %t232 = load ptr, ptr %lp9
  store { i64, ptr } %t231, ptr %t232, !tbaa !27
  %t233 = load ptr, ptr %lp6
  %t234 = load { i64, ptr }, ptr %t233, !tbaa !27
  %t236 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v1, ptr %s0, { i64, ptr } %t234, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d145, i32 0, i32 1) })
  store i1 %t236, ptr %l92
  br label %bb38
bb38:
  %t237 = load i1, ptr %l92, !tbaa !21
  br i1 %t237, label %bb39, label %bb40
bb39:
  store %olang.scope zeroinitializer, ptr %s4
  %t238 = ptrtoint ptr %v1 to i64
  store i64 %t238, ptr %l93, !tbaa !24
  %t239 = load i1, ptr @olang_2esole_2ecompiler__2fload__2ecompiler__2fload__3aLoader__2eimportAt_2elocal_2e6
  br i1 %t239, label %bb41, label %bb42
bb40:
  br label %bb48
bb41:
  %t241 = call ptr @__olang_region_make(ptr %v1)
  %t242 = ptrtoint ptr %t241 to i64
  store i64 %t242, ptr %l93, !tbaa !24
  br label %bb42
bb42:
  %t243 = load ptr, ptr %lp9
  %t244 = load { i64, ptr }, ptr %t243, !tbaa !27
  %t246 = call { i64, ptr } @compiler_2fload_2eDeriveAlias(ptr %v1, ptr %s4, { i64, ptr } %t244)
  store { i64, ptr } %t246, ptr %l96
  br label %bb43
bb43:
  %t247 = load { i64, ptr }, ptr %l96, !tbaa !27
  %t248 = extractvalue { i64, ptr } %t247, 1
  %t249 = extractvalue { i64, ptr } %t247, 0
  %t250 = load i64, ptr %l93
  %t251 = inttoptr i64 %t250 to ptr
  %t252 = call ptr @__olang_scope_alloc(ptr %t251, i64 %t249)
  call void @olang_textcopy(ptr %t252, ptr %t248, i64 %t249)
  %t253 = insertvalue { i64, ptr } undef, i64 %t249, 0
  %t254 = insertvalue { i64, ptr } %t253, ptr %t252, 1
  store { i64, ptr } %t254, ptr %l97, !tbaa !27
  %t255 = load i1, ptr @olang_2esole_2ecompiler__2fload__2ecompiler__2fload__3aLoader__2eimportAt_2elocal_2e6
  br i1 %t255, label %bb44, label %bb45
bb44:
  %t257 = load i64, ptr %l93
  %t258 = inttoptr i64 %t257 to ptr
  %t259 = load { i64, ptr }, ptr %l97
  %t260 = extractvalue { i64, ptr } %t259, 1
  %t261 = call ptr @__olang_region_or(ptr %t260, ptr null)
  %t262 = icmp ne ptr %t261, null
  %t263 = select i1 %t262, ptr %t261, ptr null
  %t264 = icmp eq ptr %t263, %t258
  call void @__olang_region_settle(ptr %t258, i1 %t264)
  br label %bb45
bb45:
  %t265 = load ptr, ptr %lp6
  %t266 = load { i64, ptr }, ptr %t265, !tbaa !27
  store { i64, ptr } %t266, ptr %l99, !tbaa !27
  %t267 = load { i64, ptr }, ptr %l97, !tbaa !27
  %t268 = load ptr, ptr %lp6
  store { i64, ptr } %t267, ptr %t268, !tbaa !27
  %t269 = load i1, ptr @olang_2esole_2ecompiler__2fload__2ecompiler__2fload__3aLoader__2eimportAt_2elocal_2e6
  br i1 %t269, label %bb46, label %bb47
bb46:
  %t271 = load { i64, ptr }, ptr %l99
  %t272 = extractvalue { i64, ptr } %t271, 1
  call void @__olang_region_release(ptr %t272)
  store { i64, ptr } zeroinitializer, ptr %l99
  br label %bb47
bb47:
  %t273 = load %"compiler/source:Span", ptr %l8
  store %"compiler/source:Span" %t273, ptr %l7
  call void @__olang_scope_close(ptr %s4)
  br label %bb48
bb48:
  %t275 = load %"compiler/source:Span", ptr %l8
  %t276 = load %"compiler/source:Span", ptr %l7
  %t277 = load ptr, ptr %lp6
  %t278 = load { i64, ptr }, ptr %t277, !tbaa !27
  %t279 = load ptr, ptr %lp9
  %t280 = load { i64, ptr }, ptr %t279, !tbaa !27
  %t287 = call %"compiler/load:Import" @compiler_2fload_3aImport_2ector(ptr %v1, ptr %v1, ptr %v1, %"compiler/source:Span" %t275, %"compiler/source:Span" %t276, { i64, ptr } %t278, { i64, ptr } %t280, i64 %a3)
  store %"compiler/load:Import" %t287, ptr %l107
  br label %bb49
bb49:
  %t288 = load %"compiler/load:Import", ptr %l107
  %t289 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 88, i64 8)
  store %"compiler/load:Import" %t288, ptr %t289
  store ptr %t289, ptr %l10, !tbaa !29
  %t291 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t291, ptr %l109, !tbaa !27
  %t292 = load i64, ptr %l5, !tbaa !24
  %t294 = add i64 %t292, 1
  %t296 = getelementptr { i64, ptr }, ptr %l109, i32 0, i32 1
  %t297 = load ptr, ptr %t296, !tbaa !27
  %t298 = getelementptr %"compiler/token:Token", ptr %t297, i64 %t294
  %t299 = getelementptr %"compiler/token:Token", ptr %t298, i32 0, i32 0
  %t300 = load i32, ptr %t299, !range !{i32 0, i32 113}
  %t302 = trunc i64 1 to i32
  %t303 = icmp eq i32 %t300, %t302
  br i1 %t303, label %bb50, label %bb51
bb50:
  %t305 = load ptr, ptr %l1, !tbaa !29
  %t307 = getelementptr %"compiler/load:Module", ptr %t305, i32 0, i32 6
  %t308 = load ptr, ptr %t307, !tbaa !29
  %t310 = icmp eq ptr %t308, null
  br i1 %t310, label %bb52, label %bb53
bb51:
  store i1 false, ptr %l114, !tbaa !21
  br label %bb62
bb52:
  call void @__olang_check_failed(ptr @olang_loc_8e32ae472cd64327_c149890ad1056c3)
  unreachable
bb53:
  br label %bb54
bb54:
  %t312 = load ptr, ptr %l1, !tbaa !29
  %t314 = getelementptr %"compiler/load:Module", ptr %t312, i32 0, i32 6
  %t315 = load ptr, ptr %t314, !tbaa !29
  %t318 = getelementptr %"compiler/source:Source", ptr %t315, i32 0, i32 1
  %t319 = load { i64, ptr }, ptr %t318, !tbaa !27
  store { i64, ptr } %t319, ptr %l121, !tbaa !27
  %t320 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t320, ptr %l122, !tbaa !27
  %t321 = load i64, ptr %l5, !tbaa !24
  %t323 = add i64 %t321, 1
  %t325 = getelementptr { i64, ptr }, ptr %l122, i32 0, i32 1
  %t326 = load ptr, ptr %t325, !tbaa !27
  %t327 = getelementptr %"compiler/token:Token", ptr %t326, i64 %t323
  %t328 = getelementptr %"compiler/token:Token", ptr %t327, i32 0, i32 2
  %t329 = load i32, ptr %t328, !tbaa !23
  %t331 = sext i32 %t329 to i64
  store i64 %t331, ptr %l126, !tbaa !24
  %t332 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t332, ptr %l127, !tbaa !27
  %t333 = load i64, ptr %l5, !tbaa !24
  %t335 = add i64 %t333, 1
  %t337 = getelementptr { i64, ptr }, ptr %l127, i32 0, i32 1
  %t338 = load ptr, ptr %t337, !tbaa !27
  %t339 = getelementptr %"compiler/token:Token", ptr %t338, i64 %t335
  %t340 = getelementptr %"compiler/token:Token", ptr %t339, i32 0, i32 3
  %t341 = load i32, ptr %t340, !tbaa !23
  %t343 = sext i32 %t341 to i64
  store i64 %t343, ptr %l131, !tbaa !24
  %t344 = load { i64, ptr }, ptr %l121, !tbaa !27
  %t345 = extractvalue { i64, ptr } %t344, 0
  store i64 %t345, ptr %l132, !tbaa !24
  %t346 = load i64, ptr %l126, !tbaa !24
  %t347 = icmp sge i64 %t346, 0
  br i1 %t347, label %bb55, label %bb56
bb55:
  %t349 = load i64, ptr %l126, !tbaa !24
  %t350 = load i64, ptr %l131, !tbaa !24
  %t351 = icmp sle i64 %t349, %t350
  br i1 %t351, label %bb57, label %bb58
bb56:
  call void @__olang_check_failed(ptr @olang_loc_a448ee53d606ecee_601f65a9d3b58c7a)
  unreachable
bb57:
  %t353 = load i64, ptr %l131, !tbaa !24
  %t354 = load i64, ptr %l132, !tbaa !24
  %t355 = icmp sle i64 %t353, %t354
  br i1 %t355, label %bb59, label %bb60
bb58:
  call void @__olang_check_failed(ptr @olang_loc_a448ee53d606ecee_601f65a9d3b58c7a)
  unreachable
bb59:
  %t357 = getelementptr { i64, ptr }, ptr %l121, i32 0, i32 1
  %t358 = load ptr, ptr %t357, !tbaa !27
  %t359 = load i64, ptr %l126, !tbaa !24
  %t360 = load i64, ptr %l131, !tbaa !24
  %t361 = getelementptr i8, ptr %t358, i64 %t359
  %t362 = sub i64 %t360, %t359
  %t363 = insertvalue { i64, ptr } undef, i64 %t362, 0
  %t364 = insertvalue { i64, ptr } %t363, ptr %t361, 1
  %t366 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v1, ptr %s0, { i64, ptr } %t364, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d146, i32 0, i32 1) })
  store i1 %t366, ptr %l137
  br label %bb61
bb60:
  call void @__olang_check_failed(ptr @olang_loc_a448ee53d606ecee_601f65a9d3b58c7a)
  unreachable
bb61:
  %t367 = load i1, ptr %l137, !tbaa !21
  store i1 %t367, ptr %l114, !tbaa !21
  br label %bb62
bb62:
  %t368 = load i1, ptr %l114, !tbaa !21
  br i1 %t368, label %bb63, label %bb64
bb63:
  %t369 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t369, ptr %l139, !tbaa !27
  %t370 = load i64, ptr %l5, !tbaa !24
  %t372 = add i64 %t370, 2
  %t374 = getelementptr { i64, ptr }, ptr %l139, i32 0, i32 1
  %t375 = load ptr, ptr %t374, !tbaa !27
  %t376 = getelementptr %"compiler/token:Token", ptr %t375, i64 %t372
  %t377 = getelementptr %"compiler/token:Token", ptr %t376, i32 0, i32 0
  %t378 = load i32, ptr %t377, !range !{i32 0, i32 113}
  %t380 = trunc i64 5 to i32
  %t381 = icmp eq i32 %t378, %t380
  store i1 %t381, ptr %l138, !tbaa !21
  br label %bb65
bb64:
  store i1 false, ptr %l138, !tbaa !21
  br label %bb65
bb65:
  %t383 = load i1, ptr %l138, !tbaa !21
  br i1 %t383, label %bb66, label %bb67
bb66:
  store %olang.scope zeroinitializer, ptr %s6
  %t384 = load ptr, ptr %l10, !tbaa !29
  store ptr %t384, ptr %l144, !tbaa !29
  %t385 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t385, ptr %l145, !tbaa !27
  %t386 = load i64, ptr %l5, !tbaa !24
  %t388 = add i64 %t386, 2
  %t390 = getelementptr { i64, ptr }, ptr %l145, i32 0, i32 1
  %t391 = load ptr, ptr %t390, !tbaa !27
  %t392 = getelementptr %"compiler/token:Token", ptr %t391, i64 %t388
  %t393 = getelementptr %"compiler/token:Token", ptr %t392, i32 0, i32 2
  %t394 = load i32, ptr %t393, !tbaa !23
  %t395 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t395, ptr %l149, !tbaa !27
  %t396 = load i64, ptr %l5, !tbaa !24
  %t398 = add i64 %t396, 2
  %t400 = getelementptr { i64, ptr }, ptr %l149, i32 0, i32 1
  %t401 = load ptr, ptr %t400, !tbaa !27
  %t402 = getelementptr %"compiler/token:Token", ptr %t401, i64 %t398
  %t403 = getelementptr %"compiler/token:Token", ptr %t402, i32 0, i32 3
  %t404 = load i32, ptr %t403, !tbaa !23
  %t407 = call %"compiler/source:Span" @compiler_2fsource_3aSpan_2ector(ptr %s6, i32 %t394, i32 %t404)
  store %"compiler/source:Span" %t407, ptr %l153
  br label %bb68
bb67:
  br label %bb83
bb68:
  %t408 = load %"compiler/source:Span", ptr %l153
  %t409 = load ptr, ptr %l144, !tbaa !29
  %t410 = getelementptr %"compiler/load:Import", ptr %t409, i32 0, i32 7
  store %"compiler/source:Span" %t408, ptr %t410
  %t411 = load ptr, ptr %l10, !tbaa !29
  store ptr %t411, ptr %l154, !tbaa !29
  %t412 = ptrtoint ptr %v1 to i64
  store i64 %t412, ptr %l155, !tbaa !24
  %t413 = load i1, ptr @olang_2esole_2ecompiler_2fload_3aImport_2e6
  br i1 %t413, label %bb69, label %bb70
bb69:
  %t415 = call ptr @__olang_region_make(ptr %v1)
  %t416 = ptrtoint ptr %t415 to i64
  store i64 %t416, ptr %l155, !tbaa !24
  br label %bb70
bb70:
  %t417 = load ptr, ptr %l1, !tbaa !29
  %t419 = getelementptr %"compiler/load:Module", ptr %t417, i32 0, i32 6
  %t420 = load ptr, ptr %t419, !tbaa !29
  %t422 = icmp eq ptr %t420, null
  br i1 %t422, label %bb71, label %bb72
bb71:
  call void @__olang_check_failed(ptr @olang_loc_7e96417109578add_9add255974295329)
  unreachable
bb72:
  br label %bb73
bb73:
  %t424 = load ptr, ptr %l1, !tbaa !29
  %t426 = getelementptr %"compiler/load:Module", ptr %t424, i32 0, i32 6
  %t427 = load ptr, ptr %t426, !tbaa !29
  %t430 = getelementptr %"compiler/source:Source", ptr %t427, i32 0, i32 1
  %t431 = load { i64, ptr }, ptr %t430, !tbaa !27
  store { i64, ptr } %t431, ptr %l163, !tbaa !27
  %t432 = load ptr, ptr %l10, !tbaa !29
  %t434 = getelementptr %"compiler/load:Import", ptr %t432, i32 0, i32 7
  %t435 = getelementptr %"compiler/source:Span", ptr %t434, i32 0, i32 0
  %t436 = load i32, ptr %t435, !tbaa !23
  %t438 = sext i32 %t436 to i64
  store i64 %t438, ptr %l166, !tbaa !24
  %t439 = load ptr, ptr %l10, !tbaa !29
  %t441 = getelementptr %"compiler/load:Import", ptr %t439, i32 0, i32 7
  %t442 = getelementptr %"compiler/source:Span", ptr %t441, i32 0, i32 1
  %t443 = load i32, ptr %t442, !tbaa !23
  %t445 = sext i32 %t443 to i64
  store i64 %t445, ptr %l169, !tbaa !24
  %t446 = load { i64, ptr }, ptr %l163, !tbaa !27
  %t447 = extractvalue { i64, ptr } %t446, 0
  store i64 %t447, ptr %l170, !tbaa !24
  %t448 = load i64, ptr %l166, !tbaa !24
  %t449 = icmp sge i64 %t448, 0
  br i1 %t449, label %bb74, label %bb75
bb74:
  %t451 = load i64, ptr %l166, !tbaa !24
  %t452 = load i64, ptr %l169, !tbaa !24
  %t453 = icmp sle i64 %t451, %t452
  br i1 %t453, label %bb76, label %bb77
bb75:
  call void @__olang_check_failed(ptr @olang_loc_7fc0c111e9e5248c_f920a424be87ad0)
  unreachable
bb76:
  %t455 = load i64, ptr %l169, !tbaa !24
  %t456 = load i64, ptr %l170, !tbaa !24
  %t457 = icmp sle i64 %t455, %t456
  br i1 %t457, label %bb78, label %bb79
bb77:
  call void @__olang_check_failed(ptr @olang_loc_7fc0c111e9e5248c_f920a424be87ad0)
  unreachable
bb78:
  %t459 = getelementptr { i64, ptr }, ptr %l163, i32 0, i32 1
  %t460 = load ptr, ptr %t459, !tbaa !27
  %t461 = load i64, ptr %l166, !tbaa !24
  %t462 = load i64, ptr %l169, !tbaa !24
  %t463 = getelementptr i8, ptr %t460, i64 %t461
  %t464 = sub i64 %t462, %t461
  %t465 = insertvalue { i64, ptr } undef, i64 %t464, 0
  %t466 = insertvalue { i64, ptr } %t465, ptr %t463, 1
  %t468 = call { i64, ptr } @compiler_2fscan_2eLiteralText(ptr %v1, ptr %s6, { i64, ptr } %t466)
  store { i64, ptr } %t468, ptr %l175
  br label %bb80
bb79:
  call void @__olang_check_failed(ptr @olang_loc_7fc0c111e9e5248c_f920a424be87ad0)
  unreachable
bb80:
  %t469 = load { i64, ptr }, ptr %l175, !tbaa !27
  %t470 = extractvalue { i64, ptr } %t469, 1
  %t471 = extractvalue { i64, ptr } %t469, 0
  %t472 = load i64, ptr %l155
  %t473 = inttoptr i64 %t472 to ptr
  %t474 = call ptr @__olang_scope_alloc(ptr %t473, i64 %t471)
  call void @olang_textcopy(ptr %t474, ptr %t470, i64 %t471)
  %t475 = insertvalue { i64, ptr } undef, i64 %t471, 0
  %t476 = insertvalue { i64, ptr } %t475, ptr %t474, 1
  %t478 = load i64, ptr %l155
  %t479 = inttoptr i64 %t478 to ptr
  %t480 = extractvalue { i64, ptr } %t476, 0
  %t481 = extractvalue { i64, ptr } %t476, 1
  %t482 = mul i64 %t480, 1
  %t483 = call ptr @__olang_scope_alloc(ptr %t479, i64 %t482)
  call void @llvm.memcpy.p0.p0.i64(ptr %t483, ptr %t481, i64 %t482, i1 false)
  %t484 = insertvalue { i64, ptr } undef, i64 %t480, 0
  %t485 = insertvalue { i64, ptr } %t484, ptr %t483, 1
  %t486 = load ptr, ptr %l154, !tbaa !29
  %t487 = getelementptr %"compiler/load:Import", ptr %t486, i32 0, i32 6
  %t488 = load { i64, ptr }, ptr %t487, !tbaa !27
  store { i64, ptr } %t488, ptr %l178, !tbaa !27
  %t490 = load ptr, ptr %l154, !tbaa !29
  %t491 = getelementptr %"compiler/load:Import", ptr %t490, i32 0, i32 6
  store { i64, ptr } %t485, ptr %t491, !tbaa !27
  %t492 = load i1, ptr @olang_2esole_2ecompiler_2fload_3aImport_2e6
  br i1 %t492, label %bb81, label %bb82
bb81:
  %t494 = load { i64, ptr }, ptr %l178
  %t495 = extractvalue { i64, ptr } %t494, 1
  call void @__olang_region_release(ptr %t495)
  store { i64, ptr } zeroinitializer, ptr %l178
  br label %bb82
bb82:
  call void @__olang_scope_close(ptr %s6)
  br label %bb83
bb83:
  %t496 = load ptr, ptr %l1, !tbaa !29
  %t498 = getelementptr %"compiler/load:Module", ptr %t496, i32 0, i32 11
  %t499 = load ptr, ptr %l10, !tbaa !29
  %t501 = load %"compiler/load:Import", ptr %t499
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fload_3aImport_3e_2ePush_3ccompiler_2fload_3aImport_3e(ptr %v1, ptr %v1, ptr %t498, %"compiler/load:Import" %t501)
  br label %bb84
bb84:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2fload_2ecompiler_2fload_3aLoader_2elinksIf(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, i64 %a1, ptr %a2, i64 %a3, i64 %a4, ptr %a5, ptr %a6) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca ptr
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca ptr
  %l6 = alloca ptr
  %l10 = alloca i1
  %l20 = alloca ptr
  %l21 = alloca i64
  %l35 = alloca ptr
  %l36 = alloca i64
  %l51 = alloca i1
  %l56 = alloca i1
  %l66 = alloca ptr
  %l67 = alloca i64
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  store ptr %a2, ptr %l2
  store i64 %a3, ptr %l3
  store i64 %a4, ptr %l4
  store ptr %a5, ptr %l5
  store ptr %a6, ptr %l6
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
  store i1 false, ptr %l10, !tbaa !21
  br label %bb6
bb3:
  call void @__olang_check_failed(ptr @olang_loc_8d00da697bdede94_44bec053299cee38)
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
  store i1 %t25, ptr %l10, !tbaa !21
  br label %bb6
bb6:
  %t27 = load i1, ptr %l10, !tbaa !21
  br i1 %t27, label %bb7, label %bb8
bb7:
  %t28 = load ptr, ptr %l0, !tbaa !29
  store ptr %t28, ptr %l20, !tbaa !29
  %t29 = load i64, ptr %l1, !tbaa !24
  store i64 %t29, ptr %l21, !tbaa !24
  %t30 = load ptr, ptr %l2, !tbaa !29
  %t32 = getelementptr %"compiler/ast:TopIf", ptr %t30, i32 0, i32 1
  %t33 = load ptr, ptr %t32, !tbaa !29
  %t35 = icmp eq ptr %t33, null
  br i1 %t35, label %bb9, label %bb10
bb8:
  br label %bb13
bb9:
  call void @__olang_check_failed(ptr @olang_loc_8d00da697bdede94_44bec053299cee38)
  unreachable
bb10:
  br label %bb11
bb11:
  %t37 = load ptr, ptr %l2, !tbaa !29
  %t39 = getelementptr %"compiler/ast:TopIf", ptr %t37, i32 0, i32 1
  %t40 = load ptr, ptr %t39, !tbaa !29
  %t43 = getelementptr %"compiler/ast:TopBranch", ptr %t40, i32 0, i32 1
  %t44 = load { i64, ptr }, ptr %t43, !tbaa !27
  %t45 = load ptr, ptr %l5, !tbaa !29
  %t46 = load ptr, ptr %l6, !tbaa !29
  %t47 = load ptr, ptr %l20, !tbaa !29
  %t48 = load i64, ptr %l21, !tbaa !24
  call void @compiler_2fload_2ecompiler_2fload_3aLoader_2elinksIn(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %t47, i64 %t48, { i64, ptr } %t44, ptr %t45, ptr %t46)
  br label %bb12
bb12:
  br label %bb13
bb13:
  %t52 = load ptr, ptr %l2, !tbaa !29
  %t54 = getelementptr %"compiler/ast:TopIf", ptr %t52, i32 0, i32 2
  %t55 = load ptr, ptr %t54, !tbaa !29
  %t57 = icmp eq ptr %t55, null
  %t59 = xor i1 %t57, true
  br i1 %t59, label %bb14, label %bb15
bb14:
  %t61 = load ptr, ptr %l0, !tbaa !29
  store ptr %t61, ptr %l35, !tbaa !29
  %t62 = load i64, ptr %l1, !tbaa !24
  store i64 %t62, ptr %l36, !tbaa !24
  %t63 = load ptr, ptr %l2, !tbaa !29
  %t65 = getelementptr %"compiler/ast:TopIf", ptr %t63, i32 0, i32 2
  %t66 = load ptr, ptr %t65, !tbaa !29
  %t68 = icmp eq ptr %t66, null
  br i1 %t68, label %bb16, label %bb17
bb15:
  br label %bb20
bb16:
  call void @__olang_check_failed(ptr @olang_loc_48f6b1615f8729a3_475230e078a39a57)
  unreachable
bb17:
  br label %bb18
bb18:
  %t70 = load ptr, ptr %l2, !tbaa !29
  %t72 = getelementptr %"compiler/ast:TopIf", ptr %t70, i32 0, i32 2
  %t73 = load ptr, ptr %t72, !tbaa !29
  %t74 = load i64, ptr %l3, !tbaa !24
  %t75 = load i64, ptr %l4, !tbaa !24
  %t77 = add i64 %t75, 1
  %t78 = load ptr, ptr %l5, !tbaa !29
  %t79 = load ptr, ptr %l6, !tbaa !29
  %t80 = load ptr, ptr %l35, !tbaa !29
  %t81 = load i64, ptr %l36, !tbaa !24
  call void @compiler_2fload_2ecompiler_2fload_3aLoader_2elinksIf(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %t80, i64 %t81, ptr %t73, i64 %t74, i64 %t77, ptr %t78, ptr %t79)
  br label %bb19
bb19:
  br label %bb20
bb20:
  %t87 = load ptr, ptr %l2, !tbaa !29
  %t89 = getelementptr %"compiler/ast:TopIf", ptr %t87, i32 0, i32 3
  %t90 = load ptr, ptr %t89, !tbaa !29
  %t92 = icmp eq ptr %t90, null
  %t94 = xor i1 %t92, true
  br i1 %t94, label %bb21, label %bb22
bb21:
  %t96 = load i64, ptr %l3, !tbaa !24
  %t97 = load i64, ptr %l4, !tbaa !24
  %t99 = add i64 %t97, 1
  %t102 = icmp eq i64 %t96, %t99
  store i1 %t102, ptr %l51, !tbaa !21
  br label %bb23
bb22:
  store i1 false, ptr %l51, !tbaa !21
  br label %bb23
bb23:
  %t104 = load i1, ptr %l51, !tbaa !21
  br i1 %t104, label %bb24, label %bb25
bb24:
  %t105 = load ptr, ptr %l2, !tbaa !29
  %t107 = getelementptr %"compiler/ast:TopIf", ptr %t105, i32 0, i32 3
  %t108 = load ptr, ptr %t107, !tbaa !29
  %t110 = icmp eq ptr %t108, null
  br i1 %t110, label %bb26, label %bb27
bb25:
  store i1 false, ptr %l56, !tbaa !21
  br label %bb29
bb26:
  call void @__olang_check_failed(ptr @olang_loc_84ff0c17d81b0522_bd67c888a6b30066)
  unreachable
bb27:
  br label %bb28
bb28:
  %t112 = load ptr, ptr %l2, !tbaa !29
  %t114 = getelementptr %"compiler/ast:TopIf", ptr %t112, i32 0, i32 3
  %t115 = load ptr, ptr %t114, !tbaa !29
  %t118 = getelementptr %"compiler/ast:TopBranch", ptr %t115, i32 0, i32 1
  %t119 = load { i64, ptr }, ptr %t118, !tbaa !27
  %t121 = extractvalue { i64, ptr } %t119, 0
  %t123 = icmp sgt i64 %t121, 0
  store i1 %t123, ptr %l56, !tbaa !21
  br label %bb29
bb29:
  %t125 = load i1, ptr %l56, !tbaa !21
  br i1 %t125, label %bb30, label %bb31
bb30:
  %t126 = load ptr, ptr %l0, !tbaa !29
  store ptr %t126, ptr %l66, !tbaa !29
  %t127 = load i64, ptr %l1, !tbaa !24
  store i64 %t127, ptr %l67, !tbaa !24
  %t128 = load ptr, ptr %l2, !tbaa !29
  %t130 = getelementptr %"compiler/ast:TopIf", ptr %t128, i32 0, i32 3
  %t131 = load ptr, ptr %t130, !tbaa !29
  %t133 = icmp eq ptr %t131, null
  br i1 %t133, label %bb32, label %bb33
bb31:
  br label %bb36
bb32:
  call void @__olang_check_failed(ptr @olang_loc_84ff0c17d81b0522_bd67c888a6b30066)
  unreachable
bb33:
  br label %bb34
bb34:
  %t135 = load ptr, ptr %l2, !tbaa !29
  %t137 = getelementptr %"compiler/ast:TopIf", ptr %t135, i32 0, i32 3
  %t138 = load ptr, ptr %t137, !tbaa !29
  %t141 = getelementptr %"compiler/ast:TopBranch", ptr %t138, i32 0, i32 1
  %t142 = load { i64, ptr }, ptr %t141, !tbaa !27
  %t143 = load ptr, ptr %l5, !tbaa !29
  %t144 = load ptr, ptr %l6, !tbaa !29
  %t145 = load ptr, ptr %l66, !tbaa !29
  %t146 = load i64, ptr %l67, !tbaa !24
  call void @compiler_2fload_2ecompiler_2fload_3aLoader_2elinksIn(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %t145, i64 %t146, { i64, ptr } %t142, ptr %t143, ptr %t144)
  br label %bb35
bb35:
  br label %bb36
bb36:
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2fload_2ecompiler_2fload_3aLoader_2elinksIn(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, i64 %a1, { i64, ptr } %a2, ptr %a3, ptr %a4) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l3 = alloca ptr
  %l4 = alloca ptr
  %l5 = alloca { i64, ptr }
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca ptr
  %l9 = alloca %"compiler/source:Span"
  %l10 = alloca ptr
  %l18 = alloca { i64, ptr }
  %l21 = alloca ptr
  %l22 = alloca i1
  %l34 = alloca ptr
  %l35 = alloca i1
  %l40 = alloca ptr
  %l41 = alloca i64
  %l42 = alloca ptr
  %l43 = alloca ptr
  %l44 = alloca i64
  %l50 = alloca %"compiler/source:Span"
  %l52 = alloca i64
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  store ptr %a3, ptr %l3
  store ptr %a4, ptr %l4
  br label %start
start:
  br label %bb0
bb0:
  store { i64, ptr } %a2, ptr %l5, !tbaa !27
  store i64 0, ptr %l6, !tbaa !24
  %t3 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t5 = extractvalue { i64, ptr } %t3, 0
  store i64 %t5, ptr %l7, !tbaa !24
  br label %bb1
bb1:
  %t7 = load i64, ptr %l6, !tbaa !24
  %t8 = load i64, ptr %l7, !tbaa !24
  %t11 = icmp slt i64 %t7, %t8
  %t13 = xor i1 %t11, true
  br i1 %t13, label %bb2, label %bb3
bb2:
  br label %bb33
bb3:
  br label %bb4
bb4:
  %t15 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t15, ptr %l18, !tbaa !27
  %t16 = load i64, ptr %l6, !tbaa !24
  %t18 = getelementptr { i64, ptr }, ptr %l18, i32 0, i32 1
  %t19 = load ptr, ptr %t18, !tbaa !27
  %t20 = getelementptr ptr, ptr %t19, i64 %t16
  %t21 = load ptr, ptr %t20, !tbaa !39
  store ptr %t21, ptr %l8, !tbaa !29
  %t23 = load ptr, ptr %l8, !tbaa !29
  store ptr %t23, ptr %l21, !tbaa !29
  store i1 false, ptr %l22, !tbaa !21
  %t24 = load ptr, ptr %l21, !tbaa !29
  %t25 = icmp ne ptr %t24, null
  br i1 %t25, label %bb5, label %bb6
bb5:
  %t27 = load ptr, ptr %l21, !tbaa !29
  %t28 = load i64, ptr %t27, !range !{i64 0, i64 11}
  %t30 = icmp eq i64 %t28, 10
  store i1 %t30, ptr %l22, !tbaa !21
  br label %bb6
bb6:
  %t31 = load i1, ptr %l22, !tbaa !21
  br i1 %t31, label %bb7, label %bb8
bb7:
  %t32 = load ptr, ptr %l8, !tbaa !29
  %t34 = getelementptr { i64, [8 x i64] }, ptr %t32, i32 0, i32 1
  %t35 = getelementptr { %"compiler/source:Span", %"compiler/source:Span", { i64, ptr } }, ptr %t34, i32 0, i32 1
  %t36 = load %"compiler/source:Span", ptr %t35
  store %"compiler/source:Span" %t36, ptr %l9
  br label %bb9
bb8:
  br label %bb14
bb9:
  %t38 = getelementptr %"compiler/source:Span", ptr %l9, i32 0, i32 1
  %t39 = load i32, ptr %t38, !tbaa !23
  %t41 = icmp sgt i32 %t39, 0
  br i1 %t41, label %bb10, label %bb11
bb10:
  %t43 = load ptr, ptr %l0, !tbaa !29
  %t44 = load i64, ptr %l1, !tbaa !24
  %t45 = load %"compiler/source:Span", ptr %l9
  %t46 = load ptr, ptr %l3, !tbaa !29
  %t47 = load ptr, ptr %l4, !tbaa !29
  call void @compiler_2fload_2ecompiler_2fload_3aLoader_2eaddLink(ptr %v0, ptr %v2, ptr %v3, ptr %t43, i64 %t44, %"compiler/source:Span" %t45, ptr %t46, ptr %t47)
  br label %bb12
bb11:
  br label %bb13
bb12:
  br label %bb13
bb13:
  br label %bb31
bb14:
  %t53 = load ptr, ptr %l8, !tbaa !29
  store ptr %t53, ptr %l34, !tbaa !29
  store i1 false, ptr %l35, !tbaa !21
  %t54 = load ptr, ptr %l34, !tbaa !29
  %t55 = icmp ne ptr %t54, null
  br i1 %t55, label %bb15, label %bb16
bb15:
  %t57 = load ptr, ptr %l34, !tbaa !29
  %t58 = load i64, ptr %t57, !range !{i64 0, i64 11}
  %t60 = icmp eq i64 %t58, 7
  store i1 %t60, ptr %l35, !tbaa !21
  br label %bb16
bb16:
  %t61 = load i1, ptr %l35, !tbaa !21
  br i1 %t61, label %bb17, label %bb18
bb17:
  %t62 = load ptr, ptr %l8, !tbaa !29
  %t64 = getelementptr { i64, [8 x i64] }, ptr %t62, i32 0, i32 1
  %t65 = getelementptr { %"compiler/source:Span", ptr }, ptr %t64, i32 0, i32 1
  %t66 = load ptr, ptr %t65
  store ptr %t66, ptr %l10, !tbaa !29
  br label %bb19
bb18:
  br label %bb26
bb19:
  %t68 = load ptr, ptr %l0, !tbaa !29
  store ptr %t68, ptr %l40, !tbaa !29
  %t69 = load i64, ptr %l1, !tbaa !24
  store i64 %t69, ptr %l41, !tbaa !24
  %t70 = load ptr, ptr %l10, !tbaa !29
  store ptr %t70, ptr %l42, !tbaa !29
  %t71 = load ptr, ptr %l0, !tbaa !29
  store ptr %t71, ptr %l43, !tbaa !29
  %t72 = load i64, ptr %l1, !tbaa !24
  store i64 %t72, ptr %l44, !tbaa !24
  %t73 = load ptr, ptr %l10, !tbaa !29
  %t75 = getelementptr %"compiler/ast:TopIf", ptr %t73, i32 0, i32 0
  %t76 = load ptr, ptr %t75, !tbaa !29
  %t78 = icmp eq ptr %t76, null
  br i1 %t78, label %bb20, label %bb21
bb20:
  call void @__olang_check_failed(ptr @olang_loc_d94d7cabf7c0d80c_70e4be23ec99f380)
  unreachable
bb21:
  br label %bb22
bb22:
  %t80 = load ptr, ptr %l10, !tbaa !29
  %t82 = getelementptr %"compiler/ast:TopIf", ptr %t80, i32 0, i32 0
  %t83 = load ptr, ptr %t82, !tbaa !29
  %t85 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v1, ptr %t83)
  store %"compiler/source:Span" %t85, ptr %l50
  br label %bb23
bb23:
  %t86 = getelementptr %"compiler/source:Span", ptr %l50, i32 0, i32 0
  %t87 = load i32, ptr %t86, !tbaa !23
  %t88 = load ptr, ptr %l43, !tbaa !29
  %t89 = load i64, ptr %l44, !tbaa !24
  %t91 = call i64 @compiler_2fload_2ecompiler_2fload_3aLoader_2eChosen(ptr %v0, ptr %t88, i64 %t89, i32 %t87)
  store i64 %t91, ptr %l52
  br label %bb24
bb24:
  %t92 = load ptr, ptr %l3, !tbaa !29
  %t93 = load ptr, ptr %l4, !tbaa !29
  %t94 = load ptr, ptr %l40, !tbaa !29
  %t95 = load i64, ptr %l41, !tbaa !24
  %t96 = load ptr, ptr %l42, !tbaa !29
  %t97 = load i64, ptr %l52, !tbaa !24
  call void @compiler_2fload_2ecompiler_2fload_3aLoader_2elinksIf(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %t94, i64 %t95, ptr %t96, i64 %t97, i64 0, ptr %t92, ptr %t93)
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
  call void @__olang_check_failed(ptr @olang_loc_5b111b92813268a2_708e5f917af86066)
  unreachable
bb31:
  br label %bb32
bb32:
  %t100 = load i64, ptr %l6, !tbaa !24
  %t102 = add i64 %t100, 1
  store i64 %t102, ptr %l6, !tbaa !24
  br label %bb1
bb33:
  br label %ret
ret:
  ret void
}

define dso_local i64 @compiler_2fload_2ecompiler_2fload_3aLoader_2eload(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1, { i64, ptr } %a2, i1 %a3, i1 %a4) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca { i64, ptr }
  %l4 = alloca i1
  %l5 = alloca { i64, ptr }
  %lp6 = alloca ptr
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca i64
  %l12 = alloca i64
  %l13 = alloca i64
  %l14 = alloca ptr
  %l17 = alloca { i64, ptr }
  %l18 = alloca i64
  %l19 = alloca i64
  %l20 = alloca %"compiler/scan:Diag"
  %l22 = alloca { i64, ptr }
  %l24 = alloca { i64, ptr }
  %l25 = alloca i32
  %l29 = alloca i1
  %l31 = alloca { i64, ptr }
  %l38 = alloca i64
  %l42 = alloca i64
  %l45 = alloca i64
  %l66 = alloca ptr
  %l70 = alloca i1
  %l76 = alloca i64
  %l78 = alloca ptr
  %l83 = alloca %"compiler/load:Module"
  %l88 = alloca ptr
  %l89 = alloca { i64, ptr }
  %l90 = alloca i64
  %l91 = alloca { i64, ptr }
  %l95 = alloca i1
  %l96 = alloca ptr
  %l97 = alloca i64
  %l100 = alloca { i64, ptr }
  %l101 = alloca { i64, ptr }
  %l105 = alloca { i64, ptr }
  %l106 = alloca i32
  %l108 = alloca %"compiler/source:Source"
  %l110 = alloca ptr
  %l112 = alloca ptr
  %l113 = alloca i64
  %l115 = alloca %"compiler/source:Source"
  %l118 = alloca %"compiler/source:Source"
  %l119 = alloca i32
  %l121 = alloca i1
  %l128 = alloca i64
  %l130 = alloca ptr
  %l132 = alloca { i64, [3 x i64] }
  %l133 = alloca %"compiler/diagmsg:Msg"
  %l134 = alloca i64
  %l135 = alloca ptr
  %l138 = alloca ptr
  %l139 = alloca i32
  %l142 = alloca ptr
  %l146 = alloca ptr
  %l148 = alloca ptr
  %l150 = alloca { i64, ptr }
  %l157 = alloca { i64, ptr }
  %l160 = alloca i1
  %l161 = alloca i1
  %l163 = alloca i64
  %l164 = alloca ptr
  %l172 = alloca %"compiler/scan:Tokens"
  %l187 = alloca { i64, ptr }
  %l192 = alloca ptr
  %l199 = alloca { i64, [3 x i64] }
  %l200 = alloca i32
  %l202 = alloca { i64, ptr }
  %l203 = alloca i64
  %l206 = alloca { i64, ptr }
  %l208 = alloca %"compiler/diagmsg:Msg"
  %l209 = alloca i64
  %l214 = alloca ptr
  %l215 = alloca i64
  %l217 = alloca %"compiler/parse:Oracle"
  %l219 = alloca ptr
  %s0 = alloca %olang.scope
  %rv = alloca i64
  %t129 = alloca %"compiler/load:Module", align 8
  %t256 = alloca { i64, [3 x i64] }, align 8
  %t414 = alloca { i64, [3 x i64] }, align 8
  %t468 = alloca %"compiler/parse:Oracle", align 8
  store ptr %a0, ptr %l0
  store { i64, ptr } %a1, ptr %l1
  store i1 %a4, ptr %l4
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t3 = call { i32, { i64, ptr } } @std_2fos_2eRealPath(ptr %v1, ptr %s0, { i64, ptr } %t1)
  %t4 = extractvalue { i32, { i64, ptr } } %t3, 1
  %t5 = extractvalue { i32, { i64, ptr } } %t3, 0
  store i32 %t5, ptr %l25
  %t6 = icmp ne i32 %t5, 0
  br i1 %t6, label %bb2, label %ok.7, !prof !99
ok.7:
  store { i64, ptr } %t4, ptr %l24
  br label %bb1
bb1:
  %t8 = load { i64, ptr }, ptr %l24, !tbaa !27
  store { i64, ptr } %t8, ptr %l22, !tbaa !27
  br label %bb6
bb2:
  %t9 = load i32, ptr %l25, !tbaa !23
  %t10 = ashr i32 %t9, 16
  %t12 = icmp eq i32 %t10, 1
  br i1 %t12, label %bb3, label %bb4
bb3:
  call void @__olang_errpay_pop()
  br label %bb4
bb4:
  br label %bb5
bb5:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d147, i32 0, i32 1) }, ptr %l22, !tbaa !27
  br label %bb6
bb6:
  %t14 = load { i64, ptr }, ptr %l22, !tbaa !27
  store { i64, ptr } %t14, ptr %l5, !tbaa !27
  %t15 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t17 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %s0, { i64, ptr } %t15, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d148, i32 0, i32 1) })
  store i1 %t17, ptr %l29
  br label %bb7
bb7:
  %t18 = load i1, ptr %l29, !tbaa !21
  %t19 = xor i1 %t18, true
  br i1 %t19, label %bb8, label %bb9
bb8:
  %t21 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t23 = extractvalue { i64, ptr } %t21, 1
  %t24 = extractvalue { i64, ptr } %t21, 0
  %t25 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t24)
  call void @olang_textcopy(ptr %t25, ptr %t23, i64 %t24)
  %t26 = insertvalue { i64, ptr } undef, i64 %t24, 0
  %t27 = insertvalue { i64, ptr } %t26, ptr %t25, 1
  store { i64, ptr } %t27, ptr %l31, !tbaa !27
  br label %bb10
bb9:
  %t29 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t31 = extractvalue { i64, ptr } %t29, 1
  %t32 = extractvalue { i64, ptr } %t29, 0
  %t33 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t32)
  call void @olang_textcopy(ptr %t33, ptr %t31, i64 %t32)
  %t34 = insertvalue { i64, ptr } undef, i64 %t32, 0
  %t35 = insertvalue { i64, ptr } %t34, ptr %t33, 1
  store { i64, ptr } %t35, ptr %l31, !tbaa !27
  br label %bb10
bb10:
  %t37 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 16, i64 8)
  store ptr %t37, ptr %lp6
  %t38 = load { i64, ptr }, ptr %l31, !tbaa !27
  %t39 = load ptr, ptr %lp6
  store { i64, ptr } %t38, ptr %t39, !tbaa !27
  store i64 0, ptr %l7, !tbaa !24
  %t40 = load ptr, ptr %l0, !tbaa !29
  %t42 = getelementptr %"compiler/load:Loader", ptr %t40, i32 0, i32 10
  %t44 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_Hb2d19b6b5ea5ab5a85c5720545345bd4(ptr %v0, ptr %t42)
  store i64 %t44, ptr %l38
  br label %bb11
bb11:
  %t45 = load i64, ptr %l38, !tbaa !24
  store i64 %t45, ptr %l8, !tbaa !24
  store i64 1, ptr %l9, !tbaa !24
  %t46 = load i64, ptr %l8, !tbaa !24
  %t47 = load i64, ptr %l7, !tbaa !24
  %t50 = icmp sgt i64 %t46, %t47
  br i1 %t50, label %bb12, label %bb13
bb12:
  %t52 = load i64, ptr %l9, !tbaa !24
  %t54 = icmp sgt i64 %t52, 0
  br i1 %t54, label %bb14, label %bb15
bb13:
  store i64 0, ptr %l42, !tbaa !24
  br label %bb17
bb14:
  %t56 = load i64, ptr %l8, !tbaa !24
  %t57 = load i64, ptr %l7, !tbaa !24
  %t60 = sub i64 %t56, %t57
  %t61 = load i64, ptr %l9, !tbaa !24
  %t64 = add i64 %t60, %t61
  %t66 = sub i64 %t64, 1
  %t67 = load i64, ptr %l9, !tbaa !24
  %t70 = sdiv i64 %t66, %t67
  store i64 %t70, ptr %l45, !tbaa !24
  br label %bb16
bb15:
  store i64 0, ptr %l45, !tbaa !24
  br label %bb16
bb16:
  %t72 = load i64, ptr %l45, !tbaa !24
  store i64 %t72, ptr %l42, !tbaa !24
  br label %bb17
bb17:
  %t73 = load i64, ptr %l42, !tbaa !24
  store i64 %t73, ptr %l10, !tbaa !24
  store i64 0, ptr %l11, !tbaa !24
  br label %bb18
bb18:
  %t74 = load i64, ptr %l11, !tbaa !24
  %t75 = load i64, ptr %l10, !tbaa !24
  %t78 = icmp slt i64 %t74, %t75
  %t80 = xor i1 %t78, true
  br i1 %t80, label %bb19, label %bb20
bb19:
  br label %bb28
bb20:
  br label %bb21
bb21:
  %t82 = load i64, ptr %l7, !tbaa !24
  %t83 = load i64, ptr %l11, !tbaa !24
  %t84 = load i64, ptr %l9, !tbaa !24
  %t87 = mul i64 %t83, %t84
  %t90 = add i64 %t82, %t87
  store i64 %t90, ptr %l12, !tbaa !24
  %t92 = load ptr, ptr %l0, !tbaa !29
  %t94 = getelementptr %"compiler/load:Loader", ptr %t92, i32 0, i32 10
  %t95 = load i64, ptr %l12, !tbaa !24
  %t98 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H7bcf2aeb09afa796f4333e6ec8c3f63f(ptr %v0, ptr %v0, ptr %t94, i64 %t95)
  store ptr %t98, ptr %l66
  br label %bb22
bb22:
  %t99 = load ptr, ptr %l66, !tbaa !29
  %t101 = getelementptr %"compiler/load:Module", ptr %t99, i32 0, i32 1
  %t102 = load { i64, ptr }, ptr %t101, !tbaa !27
  %t103 = load ptr, ptr %lp6
  %t104 = load { i64, ptr }, ptr %t103, !tbaa !27
  %t107 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %v0, { i64, ptr } %t102, { i64, ptr } %t104)
  store i1 %t107, ptr %l70
  br label %bb23
bb23:
  %t108 = load i1, ptr %l70, !tbaa !21
  br i1 %t108, label %bb24, label %bb25
bb24:
  %t109 = load i64, ptr %l12, !tbaa !24
  call void @__olang_scope_close(ptr %s0)
  store i64 %t109, ptr %rv
  br label %ret
bb25:
  br label %bb26
bb26:
  br label %bb27
bb27:
  %t111 = load i64, ptr %l11, !tbaa !24
  %t113 = add i64 %t111, 1
  store i64 %t113, ptr %l11, !tbaa !24
  br label %bb18
bb28:
  %t115 = load ptr, ptr %l0, !tbaa !29
  %t117 = getelementptr %"compiler/load:Loader", ptr %t115, i32 0, i32 10
  %t119 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_Hb2d19b6b5ea5ab5a85c5720545345bd4(ptr %v0, ptr %t117)
  store i64 %t119, ptr %l76
  br label %bb29
bb29:
  %t120 = load i64, ptr %l76, !tbaa !24
  store i64 %t120, ptr %l13, !tbaa !24
  %t121 = load ptr, ptr %l0, !tbaa !29
  %t123 = getelementptr %"compiler/load:Loader", ptr %t121, i32 0, i32 10
  store ptr %t123, ptr %l78, !tbaa !29
  %t124 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t125 = load ptr, ptr %lp6
  %t126 = load { i64, ptr }, ptr %t125, !tbaa !27
  call void @compiler_2fload_3aModule_2ector(ptr %t129, ptr %v1, ptr %v0, ptr %v2, ptr %v0, { i64, ptr } %t124, { i64, ptr } %t126, { i64, ptr } %a2, i1 %a3)
  call void @llvm.memmove.p0.p0.i64(ptr %l83, ptr %t129, i64 768, i1 false)
  br label %bb30
bb30:
  %t134 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 768, i64 8)
  call void @llvm.memmove.p0.p0.i64(ptr %t134, ptr %l83, i64 768, i1 false)
  %t135 = load ptr, ptr %l78, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_Hadc5a27c7dd302cda1d0e8a7732d6686(ptr %v0, ptr %v0, ptr %t135, ptr %t134)
  br label %bb31
bb31:
  %t137 = load ptr, ptr %l0, !tbaa !29
  %t139 = getelementptr %"compiler/load:Loader", ptr %t137, i32 0, i32 10
  %t140 = load i64, ptr %l13, !tbaa !24
  %t143 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H7bcf2aeb09afa796f4333e6ec8c3f63f(ptr %v0, ptr %v0, ptr %t139, i64 %t140)
  store ptr %t143, ptr %l88
  br label %bb32
bb32:
  %t144 = load ptr, ptr %l88, !tbaa !29
  store ptr %t144, ptr %l14, !tbaa !29
  %t145 = load ptr, ptr %lp6
  %t146 = load { i64, ptr }, ptr %t145, !tbaa !27
  store { i64, ptr } %t146, ptr %l89, !tbaa !27
  %t147 = load { i64, ptr }, ptr %l89, !tbaa !27
  %t148 = extractvalue { i64, ptr } %t147, 0
  store i64 %t148, ptr %l90, !tbaa !24
  %t149 = load i64, ptr %l90, !tbaa !24
  %t150 = mul i64 %t149, 1
  %t151 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t150)
  %t152 = insertvalue { i64, ptr } undef, i64 %t149, 0
  %t153 = insertvalue { i64, ptr } %t152, ptr %t151, 1
  store { i64, ptr } %t153, ptr %l91, !tbaa !27
  %t154 = getelementptr { i64, ptr }, ptr %l91, i32 0, i32 1
  %t155 = load ptr, ptr %t154, !tbaa !27
  %t156 = getelementptr { i64, ptr }, ptr %l89, i32 0, i32 1
  %t157 = load ptr, ptr %t156, !tbaa !27
  %t158 = load i64, ptr %l90, !tbaa !24
  %t159 = mul i64 %t158, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t155, ptr %t157, i64 %t159, i1 false)
  %t160 = load { i64, ptr }, ptr %l91, !tbaa !27
  %t161 = load ptr, ptr %l0, !tbaa !29
  %t163 = getelementptr %"compiler/load:Loader", ptr %t161, i32 0, i32 13
  %t167 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_He27db0a1785588531472bfd2db42574f(ptr %v0, ptr %s0, ptr %t163, { i64, ptr } %t160)
  store i1 %t167, ptr %l95
  br label %bb33
bb33:
  %t168 = load i1, ptr %l95, !tbaa !21
  br i1 %t168, label %bb34, label %bb35
bb34:
  %t169 = load ptr, ptr %l14, !tbaa !29
  store ptr %t169, ptr %l96, !tbaa !29
  %t170 = ptrtoint ptr %v0 to i64
  store i64 %t170, ptr %l97, !tbaa !24
  %t171 = load i1, ptr @olang_2esole_2ecompiler_2fload_3aModule_2e6
  br i1 %t171, label %bb36, label %bb37
bb35:
  %t173 = load ptr, ptr %l14, !tbaa !29
  store ptr %t173, ptr %l112, !tbaa !29
  %t174 = ptrtoint ptr %v0 to i64
  store i64 %t174, ptr %l113, !tbaa !24
  %t175 = load i1, ptr @olang_2esole_2ecompiler_2fload_3aModule_2e6
  br i1 %t175, label %bb46, label %bb47
bb36:
  %t177 = call ptr @__olang_region_make(ptr %v0)
  %t178 = ptrtoint ptr %t177 to i64
  store i64 %t178, ptr %l97, !tbaa !24
  br label %bb37
bb37:
  %t179 = load ptr, ptr %l14, !tbaa !29
  %t181 = getelementptr %"compiler/load:Module", ptr %t179, i32 0, i32 0
  %t182 = load { i64, ptr }, ptr %t181, !tbaa !27
  store { i64, ptr } %t182, ptr %l100, !tbaa !27
  %t183 = load ptr, ptr %l0, !tbaa !29
  %t185 = getelementptr %"compiler/load:Loader", ptr %t183, i32 0, i32 13
  %t186 = load ptr, ptr %lp6
  %t187 = load { i64, ptr }, ptr %t186, !tbaa !27
  %t190 = call { i32, { i64, ptr } } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_Ha4444909f5ef14f7626d25b8f59e6ba2(ptr %v0, ptr %v0, ptr %v0, ptr %t185, { i64, ptr } %t187)
  %t191 = extractvalue { i32, { i64, ptr } } %t190, 1
  %t192 = extractvalue { i32, { i64, ptr } } %t190, 0
  store i32 %t192, ptr %l106
  %t193 = icmp ne i32 %t192, 0
  br i1 %t193, label %bb39, label %ok.194, !prof !99
ok.194:
  store { i64, ptr } %t191, ptr %l105
  br label %bb38
bb38:
  %t195 = load { i64, ptr }, ptr %l105, !tbaa !27
  store { i64, ptr } %t195, ptr %l101, !tbaa !27
  br label %bb42
bb39:
  %t196 = load i32, ptr %l106, !tbaa !23
  %t197 = icmp eq i32 %t196, 65536
  br i1 %t197, label %bb40, label %bb41
bb40:
  call void @__olang_bang_failed_plain(ptr @olang_loc_67b56c0a83b8bd03_8d743f7b3592caff)
  unreachable
bb41:
  call void @__olang_bang_failed_plain(ptr @olang_loc_867763f6879c47c1_85ff3e3f6e82a415)
  unreachable
bb42:
  %t199 = load i64, ptr %l97
  %t200 = inttoptr i64 %t199 to ptr
  %t201 = load { i64, ptr }, ptr %l100, !tbaa !27
  %t202 = load { i64, ptr }, ptr %l101, !tbaa !27
  %t203 = call %"compiler/source:Source" @compiler_2fsource_3aSource_2ector(ptr %v0, ptr %v0, ptr %t200, { i64, ptr } %t201, { i64, ptr } %t202)
  store %"compiler/source:Source" %t203, ptr %l108
  br label %bb43
bb43:
  %t204 = load %"compiler/source:Source", ptr %l108
  %t205 = load i64, ptr %l97
  %t206 = inttoptr i64 %t205 to ptr
  %t207 = call ptr @__olang_scope_alloc_a(ptr %t206, i64 48, i64 8)
  store %"compiler/source:Source" %t204, ptr %t207
  %t208 = load ptr, ptr %l96, !tbaa !29
  %t209 = getelementptr %"compiler/load:Module", ptr %t208, i32 0, i32 6
  %t210 = load ptr, ptr %t209, !tbaa !29
  store ptr %t210, ptr %l110, !tbaa !29
  %t212 = load ptr, ptr %l96, !tbaa !29
  %t213 = getelementptr %"compiler/load:Module", ptr %t212, i32 0, i32 6
  store ptr %t207, ptr %t213, !tbaa !29
  %t214 = load i1, ptr @olang_2esole_2ecompiler_2fload_3aModule_2e6
  br i1 %t214, label %bb44, label %bb45
bb44:
  %t216 = load ptr, ptr %l110
  call void @__olang_region_release(ptr %t216)
  store ptr null, ptr %l110
  br label %bb45
bb45:
  br label %bb63
bb46:
  %t217 = call ptr @__olang_region_make(ptr %v0)
  %t218 = ptrtoint ptr %t217 to i64
  store i64 %t218, ptr %l113, !tbaa !24
  br label %bb47
bb47:
  %t219 = load ptr, ptr %l14, !tbaa !29
  %t221 = getelementptr %"compiler/load:Module", ptr %t219, i32 0, i32 0
  %t222 = load { i64, ptr }, ptr %t221, !tbaa !27
  %t224 = call { i32, %"compiler/source:Source" } @compiler_2fsource_2eSource_2eRead(ptr %v0, ptr %v0, { i64, ptr } %t222)
  %t225 = extractvalue { i32, %"compiler/source:Source" } %t224, 1
  %t226 = extractvalue { i32, %"compiler/source:Source" } %t224, 0
  store i32 %t226, ptr %l119
  %t227 = icmp ne i32 %t226, 0
  br i1 %t227, label %bb49, label %ok.228, !prof !99
ok.228:
  store %"compiler/source:Source" %t225, ptr %l118
  br label %bb48
bb48:
  %t229 = load %"compiler/source:Source", ptr %l118
  store %"compiler/source:Source" %t229, ptr %l115
  br label %bb60
bb49:
  %t230 = load i32, ptr %l119, !tbaa !23
  %t231 = ashr i32 %t230, 16
  %t233 = icmp eq i32 %t231, 1
  store i1 %t233, ptr %l121, !tbaa !21
  %t234 = load i32, ptr %l119, !tbaa !23
  %t235 = ashr i32 %t234, 16
  %t237 = icmp eq i32 %t235, 1
  br i1 %t237, label %bb50, label %bb51
bb50:
  call void @__olang_errpay_pop()
  br label %bb51
bb51:
  br label %bb52
bb52:
  %t239 = load ptr, ptr %l0, !tbaa !29
  %t241 = getelementptr %"compiler/load:Loader", ptr %t239, i32 0, i32 4
  %t242 = load ptr, ptr %t241, !tbaa !29
  %t243 = load ptr, ptr %l14, !tbaa !29
  %t245 = getelementptr %"compiler/load:Module", ptr %t243, i32 0, i32 0
  %t246 = load { i64, ptr }, ptr %t245, !tbaa !27
  %t249 = call i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eAddFile(ptr %v0, ptr %v0, ptr %v0, ptr %t242, { i64, ptr } %t246, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d149, i32 0, i32 1) }, i1 false)
  store i64 %t249, ptr %l128
  br label %bb53
bb53:
  %t250 = load i64, ptr %l128, !tbaa !24
  %t251 = load ptr, ptr %l0, !tbaa !29
  %t253 = getelementptr %"compiler/load:Loader", ptr %t251, i32 0, i32 4
  %t254 = load ptr, ptr %t253, !tbaa !29
  store ptr %t254, ptr %l130, !tbaa !29
  store { i64, [3 x i64] } zeroinitializer, ptr %t256
  %t257 = getelementptr { i64, [3 x i64] }, ptr %t256, i32 0, i32 0
  store i64 1, ptr %t257
  %t259 = insertvalue { i64 } undef, i64 %t250, 0
  %t260 = getelementptr { i64, [3 x i64] }, ptr %t256, i32 0, i32 1
  store { i64 } %t259, ptr %t260
  %t261 = load { i64, [3 x i64] }, ptr %t256
  store { i64, [3 x i64] } %t261, ptr %l132
  %t262 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eCannotOpen(ptr %v0)
  store %"compiler/diagmsg:Msg" %t262, ptr %l133
  br label %bb54
bb54:
  %t263 = load ptr, ptr %l130, !tbaa !29
  %t264 = load { i64, [3 x i64] }, ptr %l132
  %t265 = load %"compiler/diagmsg:Msg", ptr %l133
  %t266 = call i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eError(ptr %v0, ptr %v0, ptr %t263, { i64, [3 x i64] } %t264, %"compiler/diagmsg:Msg" %t265)
  store i64 %t266, ptr %l134
  br label %bb55
bb55:
  %t267 = load ptr, ptr %l0, !tbaa !29
  %t269 = getelementptr %"compiler/load:Loader", ptr %t267, i32 0, i32 10
  %t271 = call { i32, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H30b952b85dc190b6cd5306b9d98a7749(ptr %v0, ptr %v0, ptr %t269)
  %t272 = extractvalue { i32, ptr } %t271, 1
  %t273 = extractvalue { i32, ptr } %t271, 0
  store i32 %t273, ptr %l139
  %t274 = icmp ne i32 %t273, 0
  br i1 %t274, label %bb57, label %ok.275, !prof !99
ok.275:
  store ptr %t272, ptr %l138
  br label %bb56
bb56:
  %t276 = load ptr, ptr %l138, !tbaa !29
  store ptr %t276, ptr %l135, !tbaa !29
  br label %bb59
bb57:
  br label %bb58
bb58:
  br label %bb59
bb59:
  call void @__olang_scope_close(ptr %s0)
  store i64 -1, ptr %rv
  br label %ret
bb60:
  %t278 = load %"compiler/source:Source", ptr %l115
  %t279 = load i64, ptr %l113
  %t280 = inttoptr i64 %t279 to ptr
  %t281 = call ptr @__olang_scope_alloc_a(ptr %t280, i64 48, i64 8)
  store %"compiler/source:Source" %t278, ptr %t281
  %t282 = load ptr, ptr %l112, !tbaa !29
  %t283 = getelementptr %"compiler/load:Module", ptr %t282, i32 0, i32 6
  %t284 = load ptr, ptr %t283, !tbaa !29
  store ptr %t284, ptr %l142, !tbaa !29
  %t286 = load ptr, ptr %l112, !tbaa !29
  %t287 = getelementptr %"compiler/load:Module", ptr %t286, i32 0, i32 6
  store ptr %t281, ptr %t287, !tbaa !29
  %t288 = load i1, ptr @olang_2esole_2ecompiler_2fload_3aModule_2e6
  br i1 %t288, label %bb61, label %bb62
bb61:
  %t290 = load ptr, ptr %l142
  call void @__olang_region_release(ptr %t290)
  store ptr null, ptr %l142
  br label %bb62
bb62:
  br label %bb63
bb63:
  %t291 = load ptr, ptr %l14, !tbaa !29
  %t292 = load i1, ptr %l4, !tbaa !21
  %t295 = getelementptr %"compiler/load:Module", ptr %t291, i32 0, i32 30
  store i1 %t292, ptr %t295, !tbaa !21
  %t296 = load ptr, ptr %l14, !tbaa !29
  store ptr %t296, ptr %l146, !tbaa !29
  %t297 = load ptr, ptr %l0, !tbaa !29
  %t299 = getelementptr %"compiler/load:Loader", ptr %t297, i32 0, i32 4
  %t300 = load ptr, ptr %t299, !tbaa !29
  store ptr %t300, ptr %l148, !tbaa !29
  %t301 = load ptr, ptr %l14, !tbaa !29
  %t303 = getelementptr %"compiler/load:Module", ptr %t301, i32 0, i32 0
  %t304 = load { i64, ptr }, ptr %t303, !tbaa !27
  store { i64, ptr } %t304, ptr %l150, !tbaa !27
  %t305 = load ptr, ptr %l14, !tbaa !29
  %t307 = getelementptr %"compiler/load:Module", ptr %t305, i32 0, i32 6
  %t308 = load ptr, ptr %t307, !tbaa !29
  %t310 = icmp eq ptr %t308, null
  br i1 %t310, label %bb64, label %bb65
bb64:
  call void @__olang_check_failed(ptr @olang_loc_bf0719959bfa757a_6a83aba191150c56)
  unreachable
bb65:
  br label %bb66
bb66:
  %t312 = load ptr, ptr %l14, !tbaa !29
  %t314 = getelementptr %"compiler/load:Module", ptr %t312, i32 0, i32 6
  %t315 = load ptr, ptr %t314, !tbaa !29
  %t318 = getelementptr %"compiler/source:Source", ptr %t315, i32 0, i32 1
  %t319 = load { i64, ptr }, ptr %t318, !tbaa !27
  store { i64, ptr } %t319, ptr %l157, !tbaa !27
  %t320 = load ptr, ptr %l14, !tbaa !29
  %t322 = getelementptr %"compiler/load:Module", ptr %t320, i32 0, i32 2
  %t323 = load { i64, ptr }, ptr %t322, !tbaa !27
  %t325 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %v0, ptr %s0, { i64, ptr } %t323, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d150, i32 0, i32 1) })
  store i1 %t325, ptr %l160
  br label %bb67
bb67:
  %t326 = load i1, ptr %l160, !tbaa !21
  br i1 %t326, label %bb68, label %bb69
bb68:
  store i1 true, ptr %l161, !tbaa !21
  br label %bb70
bb69:
  %t327 = load i1, ptr %l4, !tbaa !21
  store i1 %t327, ptr %l161, !tbaa !21
  br label %bb70
bb70:
  %t329 = load ptr, ptr %l148, !tbaa !29
  %t330 = load { i64, ptr }, ptr %l150, !tbaa !27
  %t331 = load { i64, ptr }, ptr %l157, !tbaa !27
  %t332 = load i1, ptr %l161, !tbaa !21
  %t333 = call i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eAddFile(ptr %v0, ptr %v0, ptr %v0, ptr %t329, { i64, ptr } %t330, { i64, ptr } %t331, i1 %t332)
  store i64 %t333, ptr %l163
  br label %bb71
bb71:
  %t334 = load i64, ptr %l163, !tbaa !24
  %t335 = load ptr, ptr %l146, !tbaa !29
  %t336 = getelementptr %"compiler/load:Module", ptr %t335, i32 0, i32 4
  store i64 %t334, ptr %t336, !tbaa !24
  %t337 = load ptr, ptr %l14, !tbaa !29
  store ptr %t337, ptr %l164, !tbaa !29
  %t338 = load ptr, ptr %l14, !tbaa !29
  %t340 = getelementptr %"compiler/load:Module", ptr %t338, i32 0, i32 6
  %t341 = load ptr, ptr %t340, !tbaa !29
  %t343 = icmp eq ptr %t341, null
  br i1 %t343, label %bb72, label %bb73
bb72:
  call void @__olang_check_failed(ptr @olang_loc_97fda29c929b9401_a297b77e137a783d)
  unreachable
bb73:
  br label %bb74
bb74:
  %t345 = load ptr, ptr %l14, !tbaa !29
  %t347 = getelementptr %"compiler/load:Module", ptr %t345, i32 0, i32 6
  %t348 = load ptr, ptr %t347, !tbaa !29
  %t351 = getelementptr %"compiler/source:Source", ptr %t348, i32 0, i32 1
  %t352 = load { i64, ptr }, ptr %t351, !tbaa !27
  %t354 = call %"compiler/scan:Tokens" @compiler_2fscan_2eTokens_2eScan(ptr %v0, ptr %v0, { i64, ptr } %t352)
  store %"compiler/scan:Tokens" %t354, ptr %l172
  br label %bb75
bb75:
  %t355 = load %"compiler/scan:Tokens", ptr %l172
  %t356 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 64, i64 8)
  store %"compiler/scan:Tokens" %t355, ptr %t356
  %t358 = load ptr, ptr %l164, !tbaa !29
  %t359 = getelementptr %"compiler/load:Module", ptr %t358, i32 0, i32 7
  store ptr %t356, ptr %t359, !tbaa !29
  %t360 = load ptr, ptr %l14, !tbaa !29
  %t362 = getelementptr %"compiler/load:Module", ptr %t360, i32 0, i32 7
  %t363 = load ptr, ptr %t362, !tbaa !29
  %t365 = icmp eq ptr %t363, null
  br i1 %t365, label %bb76, label %bb77
bb76:
  call void @__olang_check_failed(ptr @olang_loc_8eb73d0fe26fae48_56cde13f0d79d76c)
  unreachable
bb77:
  br label %bb78
bb78:
  %t367 = load ptr, ptr %l14, !tbaa !29
  %t369 = getelementptr %"compiler/load:Module", ptr %t367, i32 0, i32 7
  %t370 = load ptr, ptr %t369, !tbaa !29
  %t373 = getelementptr %"compiler/scan:Tokens", ptr %t370, i32 0, i32 3
  %t374 = load { i64, ptr }, ptr %t373, !tbaa !27
  store { i64, ptr } %t374, ptr %l17, !tbaa !27
  store i64 0, ptr %l18, !tbaa !24
  %t376 = load { i64, ptr }, ptr %l17, !tbaa !27
  %t378 = extractvalue { i64, ptr } %t376, 0
  store i64 %t378, ptr %l19, !tbaa !24
  br label %bb79
bb79:
  %t380 = load i64, ptr %l18, !tbaa !24
  %t381 = load i64, ptr %l19, !tbaa !24
  %t384 = icmp slt i64 %t380, %t381
  %t386 = xor i1 %t384, true
  br i1 %t386, label %bb80, label %bb81
bb80:
  br label %bb90
bb81:
  br label %bb82
bb82:
  %t388 = load { i64, ptr }, ptr %l17, !tbaa !27
  store { i64, ptr } %t388, ptr %l187, !tbaa !27
  %t389 = load i64, ptr %l18, !tbaa !24
  %t391 = getelementptr { i64, ptr }, ptr %l187, i32 0, i32 1
  %t392 = load ptr, ptr %t391, !tbaa !27
  %t393 = getelementptr %"compiler/scan:Diag", ptr %t392, i64 %t389
  %t394 = load %"compiler/scan:Diag", ptr %t393
  store %"compiler/scan:Diag" %t394, ptr %l20
  %t396 = getelementptr %"compiler/scan:Diag", ptr %l20, i32 0, i32 1
  %t397 = load i32, ptr %t396, !tbaa !23
  %t399 = load ptr, ptr %l0, !tbaa !29
  %t401 = getelementptr %"compiler/load:Loader", ptr %t399, i32 0, i32 4
  %t402 = load ptr, ptr %t401, !tbaa !29
  store ptr %t402, ptr %l192, !tbaa !29
  %t403 = load ptr, ptr %l14, !tbaa !29
  %t405 = getelementptr %"compiler/load:Module", ptr %t403, i32 0, i32 4
  %t406 = load i64, ptr %t405, !tbaa !24
  %t409 = sext i32 %t397 to i64
  %t410 = getelementptr %"compiler/scan:Diag", ptr %l20, i32 0, i32 2
  %t411 = load i32, ptr %t410, !tbaa !23
  %t413 = sext i32 %t411 to i64
  store { i64, [3 x i64] } zeroinitializer, ptr %t414
  %t415 = getelementptr { i64, [3 x i64] }, ptr %t414, i32 0, i32 0
  store i64 3, ptr %t415
  %t417 = insertvalue { i64, i64, i64 } undef, i64 %t406, 0
  %t419 = insertvalue { i64, i64, i64 } %t417, i64 %t409, 1
  %t421 = insertvalue { i64, i64, i64 } %t419, i64 %t413, 2
  %t422 = getelementptr { i64, [3 x i64] }, ptr %t414, i32 0, i32 1
  store { i64, i64, i64 } %t421, ptr %t422
  %t423 = load { i64, [3 x i64] }, ptr %t414
  store { i64, [3 x i64] } %t423, ptr %l199
  store i32 61, ptr %l200
  %t424 = load %"compiler/scan:Diag", ptr %l20
  %t426 = call { i64, ptr } @compiler_2fscan_2ecompiler_2fscan_3aDiag_2eRule(ptr %v0, %"compiler/scan:Diag" %t424)
  store { i64, ptr } %t426, ptr %l202
  br label %bb83
bb83:
  %t427 = ptrtoint ptr %v0 to i64
  store i64 %t427, ptr %l203, !tbaa !24
  %t428 = load i1, ptr @olang_2esole_2ecompiler_2fdiagmsg_3aMsg_2e2
  br i1 %t428, label %bb84, label %bb85
bb84:
  %t430 = call ptr @__olang_region_make(ptr %v0)
  %t431 = ptrtoint ptr %t430 to i64
  store i64 %t431, ptr %l203, !tbaa !24
  br label %bb85
bb85:
  %t432 = load %"compiler/scan:Diag", ptr %l20
  %t433 = load i64, ptr %l203
  %t434 = inttoptr i64 %t433 to ptr
  %t436 = call { i64, ptr } @compiler_2fscan_2ecompiler_2fscan_3aDiag_2eMessage(ptr %t434, %"compiler/scan:Diag" %t432)
  store { i64, ptr } %t436, ptr %l206
  br label %bb86
bb86:
  %t437 = load { i64, ptr }, ptr %l206, !tbaa !27
  %t438 = load i64, ptr %l203
  %t439 = inttoptr i64 %t438 to ptr
  %t440 = extractvalue { i64, ptr } %t437, 0
  %t441 = extractvalue { i64, ptr } %t437, 1
  %t442 = mul i64 %t440, 1
  %t443 = call ptr @__olang_scope_alloc(ptr %t439, i64 %t442)
  call void @llvm.memcpy.p0.p0.i64(ptr %t443, ptr %t441, i64 %t442, i1 false)
  %t444 = insertvalue { i64, ptr } undef, i64 %t440, 0
  %t445 = insertvalue { i64, ptr } %t444, ptr %t443, 1
  %t446 = load i32, ptr %l200, !range !{i32 0, i32 906}
  %t447 = load { i64, ptr }, ptr %l202, !tbaa !27
  %t449 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v0, ptr %v0, ptr %v0, ptr %v0, ptr %v0, i32 %t446, { i64, ptr } %t447, { i64, ptr } %t445, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d151, i32 0, i32 1) }, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d152, i32 0, i32 1) })
  store %"compiler/diagmsg:Msg" %t449, ptr %l208
  br label %bb87
bb87:
  %t450 = load ptr, ptr %l192, !tbaa !29
  %t451 = load { i64, [3 x i64] }, ptr %l199
  %t452 = load %"compiler/diagmsg:Msg", ptr %l208
  %t453 = call i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eError(ptr %v0, ptr %v0, ptr %t450, { i64, [3 x i64] } %t451, %"compiler/diagmsg:Msg" %t452)
  store i64 %t453, ptr %l209
  br label %bb88
bb88:
  br label %bb89
bb89:
  %t454 = load i64, ptr %l18, !tbaa !24
  %t456 = add i64 %t454, 1
  store i64 %t456, ptr %l18, !tbaa !24
  br label %bb79
bb90:
  %t458 = load ptr, ptr %l0, !tbaa !29
  %t459 = load ptr, ptr %l14, !tbaa !29
  call void @compiler_2fload_2ecompiler_2fload_3aLoader_2eprescan(ptr %v0, ptr %v0, ptr %t458, ptr %t459)
  br label %bb91
bb91:
  %t462 = load ptr, ptr %l14, !tbaa !29
  store ptr %t462, ptr %l214, !tbaa !29
  %t463 = ptrtoint ptr %v0 to i64
  store i64 %t463, ptr %l215, !tbaa !24
  %t464 = load i1, ptr @olang_2esole_2ecompiler_2fload_3aModule_2e12
  br i1 %t464, label %bb92, label %bb93
bb92:
  %t466 = call ptr @__olang_region_make(ptr %v0)
  %t467 = ptrtoint ptr %t466 to i64
  store i64 %t467, ptr %l215, !tbaa !24
  br label %bb93
bb93:
  %t469 = load i64, ptr %l215
  %t470 = inttoptr i64 %t469 to ptr
  call void @compiler_2fparse_3aOracle_2ector(ptr %t468, ptr %t470)
  call void @llvm.memmove.p0.p0.i64(ptr %l217, ptr %t468, i64 288, i1 false)
  br label %bb94
bb94:
  %t471 = load i64, ptr %l215
  %t472 = inttoptr i64 %t471 to ptr
  %t473 = call ptr @__olang_scope_alloc_a(ptr %t472, i64 288, i64 8)
  call void @llvm.memmove.p0.p0.i64(ptr %t473, ptr %l217, i64 288, i1 false)
  %t474 = load ptr, ptr %l214, !tbaa !29
  %t475 = getelementptr %"compiler/load:Module", ptr %t474, i32 0, i32 12
  %t476 = load ptr, ptr %t475, !tbaa !29
  store ptr %t476, ptr %l219, !tbaa !29
  %t478 = load ptr, ptr %l214, !tbaa !29
  %t479 = getelementptr %"compiler/load:Module", ptr %t478, i32 0, i32 12
  store ptr %t473, ptr %t479, !tbaa !29
  %t480 = load i1, ptr @olang_2esole_2ecompiler_2fload_3aModule_2e12
  br i1 %t480, label %bb95, label %bb96
bb95:
  %t482 = load ptr, ptr %l219
  call void @__olang_region_release(ptr %t482)
  store ptr null, ptr %l219
  br label %bb96
bb96:
  %t483 = load ptr, ptr %l0, !tbaa !29
  %t484 = load ptr, ptr %l14, !tbaa !29
  call void @compiler_2fload_2ecompiler_2fload_3aLoader_2eownNames(ptr %v0, ptr %v0, ptr %t483, ptr %t484)
  br label %bb97
bb97:
  %t487 = load ptr, ptr %l0, !tbaa !29
  %t488 = load i64, ptr %l13, !tbaa !24
  call void @compiler_2fload_2ecompiler_2fload_3aLoader_2eloadImports(ptr %v0, ptr %t487, i64 %t488)
  br label %bb98
bb98:
  %t491 = load ptr, ptr %l0, !tbaa !29
  %t492 = load i64, ptr %l13, !tbaa !24
  call void @compiler_2fload_2ecompiler_2fload_3aLoader_2eparse(ptr %v0, ptr %t491, i64 %t492)
  br label %bb99
bb99:
  %t495 = load i64, ptr %l13, !tbaa !24
  call void @__olang_scope_close(ptr %s0)
  store i64 %t495, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local void @compiler_2fload_2ecompiler_2fload_3aLoader_2eloadImports(ptr %v0, ptr %a0, i64 %a1) #0 {
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
  %l9 = alloca %"compiler/load:Import"
  %l11 = alloca i64
  %l13 = alloca i64
  %l14 = alloca { { i64, ptr }, { i64, ptr } }
  %lp15 = alloca ptr
  %lp16 = alloca ptr
  %l17 = alloca i1
  %l18 = alloca i64
  %l19 = alloca i64
  %l20 = alloca i64
  %l21 = alloca i64
  %l22 = alloca i64
  %l23 = alloca i64
  %l29 = alloca ptr
  %l32 = alloca i64
  %l36 = alloca i64
  %l39 = alloca i64
  %l60 = alloca %"compiler/load:Import"
  %l63 = alloca i1
  %l69 = alloca i64
  %l75 = alloca ptr
  %l79 = alloca i1
  %l82 = alloca ptr
  %l86 = alloca { i64, [3 x i64] }
  %l88 = alloca %"compiler/diagmsg:Msg"
  %l89 = alloca i64
  %l91 = alloca i1
  %l92 = alloca i1
  %l94 = alloca i1
  %l98 = alloca i64
  %l100 = alloca i1
  %l103 = alloca ptr
  %l107 = alloca { i64, [3 x i64] }
  %l108 = alloca %"compiler/diagmsg:Msg"
  %l109 = alloca i64
  %l110 = alloca { { i64, ptr }, { i64, ptr } }
  %l114 = alloca { { i64, ptr }, { i64, ptr } }
  %l115 = alloca i32
  %l116 = alloca { i64, ptr }
  %l117 = alloca i64
  %l118 = alloca { i64, ptr }
  %l119 = alloca { i64, ptr }
  %l120 = alloca i64
  %l121 = alloca { i64, ptr }
  %l125 = alloca i64
  %l130 = alloca i64
  %l134 = alloca i64
  %l137 = alloca i64
  %l158 = alloca i1
  %l162 = alloca %"compiler/load:Import"
  %l165 = alloca i1
  %l169 = alloca %"compiler/load:Import"
  %l172 = alloca i1
  %l177 = alloca ptr
  %l181 = alloca { i64, [3 x i64] }
  %l183 = alloca %"compiler/diagmsg:Msg"
  %l184 = alloca i64
  %l189 = alloca ptr
  %s2 = alloca %olang.scope
  %s7 = alloca %olang.scope
  %s12 = alloca %olang.scope
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
  store ptr %t7, ptr %l29
  br label %bb1
bb1:
  %t8 = load ptr, ptr %l29, !tbaa !29
  store ptr %t8, ptr %l2, !tbaa !29
  store i64 0, ptr %l3, !tbaa !24
  %t9 = load ptr, ptr %l2, !tbaa !29
  %t11 = getelementptr %"compiler/load:Module", ptr %t9, i32 0, i32 11
  %t13 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fload_3aImport_3e_2eLen_3ccompiler_2fload_3aImport_3e(ptr %v0, ptr %t11)
  store i64 %t13, ptr %l32
  br label %bb2
bb2:
  %t14 = load i64, ptr %l32, !tbaa !24
  store i64 %t14, ptr %l4, !tbaa !24
  store i64 1, ptr %l5, !tbaa !24
  %t15 = load i64, ptr %l4, !tbaa !24
  %t16 = load i64, ptr %l3, !tbaa !24
  %t19 = icmp sgt i64 %t15, %t16
  br i1 %t19, label %bb3, label %bb4
bb3:
  %t21 = load i64, ptr %l5, !tbaa !24
  %t23 = icmp sgt i64 %t21, 0
  br i1 %t23, label %bb5, label %bb6
bb4:
  store i64 0, ptr %l36, !tbaa !24
  br label %bb8
bb5:
  %t25 = load i64, ptr %l4, !tbaa !24
  %t26 = load i64, ptr %l3, !tbaa !24
  %t29 = sub i64 %t25, %t26
  %t30 = load i64, ptr %l5, !tbaa !24
  %t33 = add i64 %t29, %t30
  %t35 = sub i64 %t33, 1
  %t36 = load i64, ptr %l5, !tbaa !24
  %t39 = sdiv i64 %t35, %t36
  store i64 %t39, ptr %l39, !tbaa !24
  br label %bb7
bb6:
  store i64 0, ptr %l39, !tbaa !24
  br label %bb7
bb7:
  %t41 = load i64, ptr %l39, !tbaa !24
  store i64 %t41, ptr %l36, !tbaa !24
  br label %bb8
bb8:
  %t42 = load i64, ptr %l36, !tbaa !24
  store i64 %t42, ptr %l6, !tbaa !24
  store i64 0, ptr %l7, !tbaa !24
  br label %bb9
bb9:
  store %olang.scope zeroinitializer, ptr %s2
  %t43 = load i64, ptr %l7, !tbaa !24
  %t44 = load i64, ptr %l6, !tbaa !24
  %t47 = icmp slt i64 %t43, %t44
  %t49 = xor i1 %t47, true
  br i1 %t49, label %bb10, label %bb11
bb10:
  call void @__olang_scope_close(ptr %s2)
  br label %bb89
bb11:
  br label %bb12
bb12:
  %t51 = load i64, ptr %l3, !tbaa !24
  %t52 = load i64, ptr %l7, !tbaa !24
  %t53 = load i64, ptr %l5, !tbaa !24
  %t56 = mul i64 %t52, %t53
  %t59 = add i64 %t51, %t56
  store i64 %t59, ptr %l8, !tbaa !24
  %t61 = load ptr, ptr %l2, !tbaa !29
  %t63 = getelementptr %"compiler/load:Module", ptr %t61, i32 0, i32 11
  %t64 = load i64, ptr %l8, !tbaa !24
  %t67 = call %"compiler/load:Import" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fload_3aImport_3e_2eAt_3ccompiler_2fload_3aImport_3e(ptr %v0, ptr %v0, ptr %t63, i64 %t64)
  store %"compiler/load:Import" %t67, ptr %l60
  br label %bb13
bb13:
  %t68 = load %"compiler/load:Import", ptr %l60
  store %"compiler/load:Import" %t68, ptr %l9
  %t69 = getelementptr %"compiler/load:Import", ptr %l9, i32 0, i32 5
  %t70 = load i64, ptr %t69, !tbaa !24
  %t72 = icmp sge i64 %t70, 0
  br i1 %t72, label %bb14, label %bb15
bb14:
  store i1 true, ptr %l63, !tbaa !21
  br label %bb16
bb15:
  %t74 = getelementptr %"compiler/load:Import", ptr %l9, i32 0, i32 5
  %t75 = load i64, ptr %t74, !tbaa !24
  %t77 = icmp eq i64 %t75, -2
  store i1 %t77, ptr %l63, !tbaa !21
  br label %bb16
bb16:
  %t79 = load i1, ptr %l63, !tbaa !21
  br i1 %t79, label %bb17, label %bb18
bb17:
  call void @__olang_scope_close(ptr %s2)
  br label %bb88
bb18:
  br label %bb19
bb19:
  %t80 = load ptr, ptr %l0, !tbaa !29
  %t81 = load i64, ptr %l1, !tbaa !24
  %t82 = getelementptr %"compiler/load:Import", ptr %l9, i32 0, i32 4
  %t83 = load i64, ptr %t82, !tbaa !24
  %t87 = call i64 @compiler_2fload_2ecompiler_2fload_3aLoader_2etaken(ptr %v0, ptr %t80, i64 %t81, i64 %t83)
  store i64 %t87, ptr %l69
  br label %bb20
bb20:
  %t88 = load i64, ptr %l69, !tbaa !24
  %t89 = icmp ne i64 %t88, 1
  br i1 %t89, label %bb21, label %bb22
bb21:
  call void @__olang_scope_close(ptr %s2)
  br label %bb88
bb22:
  br label %bb23
bb23:
  %t91 = load i64, ptr %l8, !tbaa !24
  store i64 -2, ptr %l11, !tbaa !24
  %t93 = load ptr, ptr %l2, !tbaa !29
  %t95 = getelementptr %"compiler/load:Module", ptr %t93, i32 0, i32 11
  %t99 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fload_3aImport_3e_2eRefMut_3ccompiler_2fload_3aImport_3e(ptr %v0, ptr %v0, ptr %t95, i64 %t91)
  store ptr %t99, ptr %l75
  br label %bb24
bb24:
  %t100 = load ptr, ptr %l75, !tbaa !29
  %t102 = load i64, ptr %l11, !tbaa !24
  %t105 = getelementptr %"compiler/load:Import", ptr %t100, i32 0, i32 5
  store i64 %t102, ptr %t105, !tbaa !24
  %t106 = getelementptr %"compiler/load:Import", ptr %l9, i32 0, i32 2
  %t107 = load { i64, ptr }, ptr %t106, !tbaa !27
  %t109 = call i1 @compiler_2fload_2eAliasShape(ptr %v0, { i64, ptr } %t107)
  store i1 %t109, ptr %l79
  br label %bb25
bb25:
  %t110 = load i1, ptr %l79, !tbaa !21
  %t111 = xor i1 %t110, true
  br i1 %t111, label %bb26, label %bb27
bb26:
  %t113 = load ptr, ptr %l0, !tbaa !29
  %t115 = getelementptr %"compiler/load:Loader", ptr %t113, i32 0, i32 4
  %t116 = load ptr, ptr %t115, !tbaa !29
  store ptr %t116, ptr %l82, !tbaa !29
  %t117 = load ptr, ptr %l0, !tbaa !29
  %t118 = load ptr, ptr %l2, !tbaa !29
  %t119 = getelementptr %"compiler/load:Import", ptr %l9, i32 0, i32 1
  %t120 = load %"compiler/source:Span", ptr %t119
  %t124 = call { i64, [3 x i64] } @compiler_2fload_2ecompiler_2fload_3aLoader_2eat(ptr %v0, ptr %v0, ptr %t117, ptr %t118, %"compiler/source:Span" %t120)
  store { i64, [3 x i64] } %t124, ptr %l86
  br label %bb28
bb27:
  br label %bb31
bb28:
  %t125 = getelementptr %"compiler/load:Import", ptr %l9, i32 0, i32 2
  %t126 = load { i64, ptr }, ptr %t125, !tbaa !27
  %t128 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eImportAliasInvalid(ptr %v0, ptr %v0, { i64, ptr } %t126)
  store %"compiler/diagmsg:Msg" %t128, ptr %l88
  br label %bb29
bb29:
  %t129 = load ptr, ptr %l82, !tbaa !29
  %t130 = load { i64, [3 x i64] }, ptr %l86
  %t131 = load %"compiler/diagmsg:Msg", ptr %l88
  %t132 = call i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eError(ptr %v0, ptr %v0, ptr %t129, { i64, [3 x i64] } %t130, %"compiler/diagmsg:Msg" %t131)
  store i64 %t132, ptr %l89
  br label %bb30
bb30:
  call void @__olang_scope_close(ptr %s2)
  br label %bb88
bb31:
  store i64 -1, ptr %l13, !tbaa !24
  %t133 = getelementptr %"compiler/load:Import", ptr %l9, i32 0, i32 3
  %t134 = load { i64, ptr }, ptr %t133, !tbaa !27
  %t136 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEndsWith(ptr %v0, ptr %s2, { i64, ptr } %t134, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d153, i32 0, i32 1) })
  store i1 %t136, ptr %l91
  br label %bb32
bb32:
  %t137 = load i1, ptr %l91, !tbaa !21
  br i1 %t137, label %bb33, label %bb34
bb33:
  store i1 true, ptr %l92, !tbaa !21
  br label %bb36
bb34:
  %t138 = getelementptr %"compiler/load:Import", ptr %l9, i32 0, i32 3
  %t139 = load { i64, ptr }, ptr %t138, !tbaa !27
  %t141 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEndsWith(ptr %v0, ptr %s2, { i64, ptr } %t139, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d154, i32 0, i32 1) })
  store i1 %t141, ptr %l94
  br label %bb35
bb35:
  %t142 = load i1, ptr %l94, !tbaa !21
  store i1 %t142, ptr %l92, !tbaa !21
  br label %bb36
bb36:
  %t143 = load i1, ptr %l92, !tbaa !21
  br i1 %t143, label %bb37, label %bb38
bb37:
  %t144 = load ptr, ptr %l0, !tbaa !29
  %t145 = load i64, ptr %l1, !tbaa !24
  %t146 = load %"compiler/load:Import", ptr %l9
  %t150 = call i64 @compiler_2fload_2ecompiler_2fload_3aLoader_2ecImport(ptr %v0, ptr %v0, ptr %t144, i64 %t145, %"compiler/load:Import" %t146)
  store i64 %t150, ptr %l98
  br label %bb39
bb38:
  store %olang.scope zeroinitializer, ptr %s7
  %t151 = getelementptr %"compiler/load:Import", ptr %l9, i32 0, i32 6
  %t152 = load { i64, ptr }, ptr %t151, !tbaa !27
  %t154 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s7, { i64, ptr } %t152, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d155, i32 0, i32 1) })
  store i1 %t154, ptr %l100
  br label %bb40
bb39:
  %t155 = load i64, ptr %l98, !tbaa !24
  store i64 %t155, ptr %l13, !tbaa !24
  br label %bb52
bb40:
  %t156 = load i1, ptr %l100, !tbaa !21
  %t157 = xor i1 %t156, true
  br i1 %t157, label %bb41, label %bb42
bb41:
  %t159 = load ptr, ptr %l0, !tbaa !29
  %t161 = getelementptr %"compiler/load:Loader", ptr %t159, i32 0, i32 4
  %t162 = load ptr, ptr %t161, !tbaa !29
  store ptr %t162, ptr %l103, !tbaa !29
  %t163 = load ptr, ptr %l0, !tbaa !29
  %t164 = load ptr, ptr %l2, !tbaa !29
  %t165 = getelementptr %"compiler/load:Import", ptr %l9, i32 0, i32 7
  %t166 = load %"compiler/source:Span", ptr %t165
  %t170 = call { i64, [3 x i64] } @compiler_2fload_2ecompiler_2fload_3aLoader_2eat(ptr %v0, ptr %v0, ptr %t163, ptr %t164, %"compiler/source:Span" %t166)
  store { i64, [3 x i64] } %t170, ptr %l107
  br label %bb43
bb42:
  br label %bb46
bb43:
  %t171 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eLinkOnOlangImport(ptr %v0)
  store %"compiler/diagmsg:Msg" %t171, ptr %l108
  br label %bb44
bb44:
  %t172 = load ptr, ptr %l103, !tbaa !29
  %t173 = load { i64, [3 x i64] }, ptr %l107
  %t174 = load %"compiler/diagmsg:Msg", ptr %l108
  %t175 = call i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eError(ptr %v0, ptr %v0, ptr %t172, { i64, [3 x i64] } %t173, %"compiler/diagmsg:Msg" %t174)
  store i64 %t175, ptr %l109
  br label %bb45
bb45:
  call void @__olang_scope_close(ptr %s7)
  call void @__olang_scope_close(ptr %s2)
  br label %bb88
bb46:
  %t176 = load ptr, ptr %l0, !tbaa !29
  %t177 = load i64, ptr %l1, !tbaa !24
  %t178 = load %"compiler/load:Import", ptr %l9
  %t182 = call { i32, { { i64, ptr }, { i64, ptr } } } @compiler_2fload_2ecompiler_2fload_3aLoader_2eresolve(ptr %v0, ptr %v0, ptr %s7, ptr %t176, i64 %t177, %"compiler/load:Import" %t178)
  %t183 = extractvalue { i32, { { i64, ptr }, { i64, ptr } } } %t182, 1
  %t184 = extractvalue { i32, { { i64, ptr }, { i64, ptr } } } %t182, 0
  store i32 %t184, ptr %l115
  %t185 = icmp ne i32 %t184, 0
  br i1 %t185, label %bb48, label %ok.186, !prof !99
ok.186:
  store { { i64, ptr }, { i64, ptr } } %t183, ptr %l114
  br label %bb47
bb47:
  %t187 = load { { i64, ptr }, { i64, ptr } }, ptr %l114
  store { { i64, ptr }, { i64, ptr } } %t187, ptr %l110
  br label %bb50
bb48:
  br label %bb49
bb49:
  call void @__olang_scope_close(ptr %s7)
  call void @__olang_scope_close(ptr %s2)
  br label %bb88
bb50:
  %t188 = load { { i64, ptr }, { i64, ptr } }, ptr %l110
  store { { i64, ptr }, { i64, ptr } } %t188, ptr %l14
  %t189 = getelementptr { { i64, ptr }, { i64, ptr } }, ptr %l14, i32 0, i32 0
  %t190 = load { i64, ptr }, ptr %t189, !tbaa !27
  store { i64, ptr } %t190, ptr %l116, !tbaa !27
  %t191 = load { i64, ptr }, ptr %l116, !tbaa !27
  %t192 = extractvalue { i64, ptr } %t191, 0
  store i64 %t192, ptr %l117, !tbaa !24
  %t193 = load i64, ptr %l117, !tbaa !24
  %t194 = mul i64 %t193, 1
  %t195 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t194)
  %t196 = insertvalue { i64, ptr } undef, i64 %t193, 0
  %t197 = insertvalue { i64, ptr } %t196, ptr %t195, 1
  store { i64, ptr } %t197, ptr %l118, !tbaa !27
  %t198 = getelementptr { i64, ptr }, ptr %l118, i32 0, i32 1
  %t199 = load ptr, ptr %t198, !tbaa !27
  %t200 = getelementptr { i64, ptr }, ptr %l116, i32 0, i32 1
  %t201 = load ptr, ptr %t200, !tbaa !27
  %t202 = load i64, ptr %l117, !tbaa !24
  %t203 = mul i64 %t202, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t199, ptr %t201, i64 %t203, i1 false)
  %t204 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 16, i64 8)
  store ptr %t204, ptr %lp15
  %t205 = load { i64, ptr }, ptr %l118, !tbaa !27
  %t206 = load ptr, ptr %lp15
  store { i64, ptr } %t205, ptr %t206, !tbaa !27
  %t207 = getelementptr { { i64, ptr }, { i64, ptr } }, ptr %l14, i32 0, i32 1
  %t208 = load { i64, ptr }, ptr %t207, !tbaa !27
  store { i64, ptr } %t208, ptr %l119, !tbaa !27
  %t209 = load { i64, ptr }, ptr %l119, !tbaa !27
  %t210 = extractvalue { i64, ptr } %t209, 0
  store i64 %t210, ptr %l120, !tbaa !24
  %t211 = load i64, ptr %l120, !tbaa !24
  %t212 = mul i64 %t211, 1
  %t213 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t212)
  %t214 = insertvalue { i64, ptr } undef, i64 %t211, 0
  %t215 = insertvalue { i64, ptr } %t214, ptr %t213, 1
  store { i64, ptr } %t215, ptr %l121, !tbaa !27
  %t216 = getelementptr { i64, ptr }, ptr %l121, i32 0, i32 1
  %t217 = load ptr, ptr %t216, !tbaa !27
  %t218 = getelementptr { i64, ptr }, ptr %l119, i32 0, i32 1
  %t219 = load ptr, ptr %t218, !tbaa !27
  %t220 = load i64, ptr %l120, !tbaa !24
  %t221 = mul i64 %t220, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t217, ptr %t219, i64 %t221, i1 false)
  %t222 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 16, i64 8)
  store ptr %t222, ptr %lp16
  %t223 = load { i64, ptr }, ptr %l121, !tbaa !27
  %t224 = load ptr, ptr %lp16
  store { i64, ptr } %t223, ptr %t224, !tbaa !27
  %t225 = load ptr, ptr %l0, !tbaa !29
  %t226 = load ptr, ptr %lp15
  %t227 = load { i64, ptr }, ptr %t226, !tbaa !27
  %t228 = load ptr, ptr %lp16
  %t229 = load { i64, ptr }, ptr %t228, !tbaa !27
  %t233 = call i64 @compiler_2fload_2ecompiler_2fload_3aLoader_2eload(ptr %v0, ptr %v0, ptr %v0, ptr %t225, { i64, ptr } %t227, { i64, ptr } %t229, i1 false, i1 false)
  store i64 %t233, ptr %l125
  br label %bb51
bb51:
  %t234 = load i64, ptr %l125, !tbaa !24
  store i64 %t234, ptr %l13, !tbaa !24
  call void @__olang_scope_close(ptr %s7)
  br label %bb52
bb52:
  %t235 = load i64, ptr %l13, !tbaa !24
  %t237 = icmp slt i64 %t235, 0
  br i1 %t237, label %bb53, label %bb54
bb53:
  call void @__olang_scope_close(ptr %s2)
  br label %bb88
bb54:
  br label %bb55
bb55:
  store i1 false, ptr %l17, !tbaa !21
  store i64 0, ptr %l18, !tbaa !24
  %t239 = load ptr, ptr %l2, !tbaa !29
  %t241 = getelementptr %"compiler/load:Module", ptr %t239, i32 0, i32 11
  %t243 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fload_3aImport_3e_2eLen_3ccompiler_2fload_3aImport_3e(ptr %v0, ptr %t241)
  store i64 %t243, ptr %l130
  br label %bb56
bb56:
  %t244 = load i64, ptr %l130, !tbaa !24
  store i64 %t244, ptr %l19, !tbaa !24
  store i64 1, ptr %l20, !tbaa !24
  %t245 = load i64, ptr %l19, !tbaa !24
  %t246 = load i64, ptr %l18, !tbaa !24
  %t249 = icmp sgt i64 %t245, %t246
  br i1 %t249, label %bb57, label %bb58
bb57:
  %t251 = load i64, ptr %l20, !tbaa !24
  %t253 = icmp sgt i64 %t251, 0
  br i1 %t253, label %bb59, label %bb60
bb58:
  store i64 0, ptr %l134, !tbaa !24
  br label %bb62
bb59:
  %t255 = load i64, ptr %l19, !tbaa !24
  %t256 = load i64, ptr %l18, !tbaa !24
  %t259 = sub i64 %t255, %t256
  %t260 = load i64, ptr %l20, !tbaa !24
  %t263 = add i64 %t259, %t260
  %t265 = sub i64 %t263, 1
  %t266 = load i64, ptr %l20, !tbaa !24
  %t269 = sdiv i64 %t265, %t266
  store i64 %t269, ptr %l137, !tbaa !24
  br label %bb61
bb60:
  store i64 0, ptr %l137, !tbaa !24
  br label %bb61
bb61:
  %t271 = load i64, ptr %l137, !tbaa !24
  store i64 %t271, ptr %l134, !tbaa !24
  br label %bb62
bb62:
  %t272 = load i64, ptr %l134, !tbaa !24
  store i64 %t272, ptr %l21, !tbaa !24
  store i64 0, ptr %l22, !tbaa !24
  br label %bb63
bb63:
  store %olang.scope zeroinitializer, ptr %s12
  %t273 = load i64, ptr %l22, !tbaa !24
  %t274 = load i64, ptr %l21, !tbaa !24
  %t277 = icmp slt i64 %t273, %t274
  %t279 = xor i1 %t277, true
  br i1 %t279, label %bb64, label %bb65
bb64:
  call void @__olang_scope_close(ptr %s12)
  br label %bb80
bb65:
  br label %bb66
bb66:
  %t281 = load i64, ptr %l18, !tbaa !24
  %t282 = load i64, ptr %l22, !tbaa !24
  %t283 = load i64, ptr %l20, !tbaa !24
  %t286 = mul i64 %t282, %t283
  %t289 = add i64 %t281, %t286
  store i64 %t289, ptr %l23, !tbaa !24
  %t291 = load i64, ptr %l23, !tbaa !24
  %t292 = load i64, ptr %l8, !tbaa !24
  %t295 = icmp ne i64 %t291, %t292
  br i1 %t295, label %bb67, label %bb68
bb67:
  %t297 = load ptr, ptr %l2, !tbaa !29
  %t299 = getelementptr %"compiler/load:Module", ptr %t297, i32 0, i32 11
  %t300 = load i64, ptr %l23, !tbaa !24
  %t303 = call %"compiler/load:Import" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fload_3aImport_3e_2eAt_3ccompiler_2fload_3aImport_3e(ptr %v0, ptr %s12, ptr %t299, i64 %t300)
  store %"compiler/load:Import" %t303, ptr %l162
  br label %bb69
bb68:
  store i1 false, ptr %l158, !tbaa !21
  br label %bb70
bb69:
  %t304 = getelementptr %"compiler/load:Import", ptr %l162, i32 0, i32 5
  %t305 = load i64, ptr %t304, !tbaa !24
  %t307 = icmp sge i64 %t305, 0
  store i1 %t307, ptr %l158, !tbaa !21
  br label %bb70
bb70:
  %t309 = load i1, ptr %l158, !tbaa !21
  br i1 %t309, label %bb71, label %bb72
bb71:
  %t310 = load ptr, ptr %l2, !tbaa !29
  %t312 = getelementptr %"compiler/load:Module", ptr %t310, i32 0, i32 11
  %t313 = load i64, ptr %l23, !tbaa !24
  %t316 = call %"compiler/load:Import" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fload_3aImport_3e_2eAt_3ccompiler_2fload_3aImport_3e(ptr %v0, ptr %v0, ptr %t312, i64 %t313)
  store %"compiler/load:Import" %t316, ptr %l169
  br label %bb73
bb72:
  store i1 false, ptr %l165, !tbaa !21
  br label %bb75
bb73:
  %t317 = getelementptr %"compiler/load:Import", ptr %l169, i32 0, i32 2
  %t318 = load { i64, ptr }, ptr %t317, !tbaa !27
  %t319 = getelementptr %"compiler/load:Import", ptr %l9, i32 0, i32 2
  %t320 = load { i64, ptr }, ptr %t319, !tbaa !27
  %t323 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %v0, { i64, ptr } %t318, { i64, ptr } %t320)
  store i1 %t323, ptr %l172
  br label %bb74
bb74:
  %t324 = load i1, ptr %l172, !tbaa !21
  store i1 %t324, ptr %l165, !tbaa !21
  br label %bb75
bb75:
  %t325 = load i1, ptr %l165, !tbaa !21
  br i1 %t325, label %bb76, label %bb77
bb76:
  store i1 true, ptr %l17, !tbaa !21
  br label %bb78
bb77:
  br label %bb78
bb78:
  call void @__olang_scope_close(ptr %s12)
  br label %bb79
bb79:
  %t326 = load i64, ptr %l22, !tbaa !24
  %t328 = add i64 %t326, 1
  store i64 %t328, ptr %l22, !tbaa !24
  br label %bb63
bb80:
  %t330 = load i1, ptr %l17, !tbaa !21
  br i1 %t330, label %bb81, label %bb82
bb81:
  %t332 = load ptr, ptr %l0, !tbaa !29
  %t334 = getelementptr %"compiler/load:Loader", ptr %t332, i32 0, i32 4
  %t335 = load ptr, ptr %t334, !tbaa !29
  store ptr %t335, ptr %l177, !tbaa !29
  %t336 = load ptr, ptr %l0, !tbaa !29
  %t337 = load ptr, ptr %l2, !tbaa !29
  %t338 = getelementptr %"compiler/load:Import", ptr %l9, i32 0, i32 1
  %t339 = load %"compiler/source:Span", ptr %t338
  %t343 = call { i64, [3 x i64] } @compiler_2fload_2ecompiler_2fload_3aLoader_2eat(ptr %v0, ptr %v0, ptr %t336, ptr %t337, %"compiler/source:Span" %t339)
  store { i64, [3 x i64] } %t343, ptr %l181
  br label %bb83
bb82:
  br label %bb86
bb83:
  %t344 = getelementptr %"compiler/load:Import", ptr %l9, i32 0, i32 2
  %t345 = load { i64, ptr }, ptr %t344, !tbaa !27
  %t347 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eImportAliasConflict(ptr %v0, ptr %v0, { i64, ptr } %t345)
  store %"compiler/diagmsg:Msg" %t347, ptr %l183
  br label %bb84
bb84:
  %t348 = load ptr, ptr %l177, !tbaa !29
  %t349 = load { i64, [3 x i64] }, ptr %l181
  %t350 = load %"compiler/diagmsg:Msg", ptr %l183
  %t351 = call i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eError(ptr %v0, ptr %v0, ptr %t348, { i64, [3 x i64] } %t349, %"compiler/diagmsg:Msg" %t350)
  store i64 %t351, ptr %l184
  br label %bb85
bb85:
  call void @__olang_scope_close(ptr %s2)
  br label %bb88
bb86:
  %t352 = load i64, ptr %l8, !tbaa !24
  %t354 = load ptr, ptr %l2, !tbaa !29
  %t356 = getelementptr %"compiler/load:Module", ptr %t354, i32 0, i32 11
  %t360 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fload_3aImport_3e_2eRefMut_3ccompiler_2fload_3aImport_3e(ptr %v0, ptr %v0, ptr %t356, i64 %t352)
  store ptr %t360, ptr %l189
  br label %bb87
bb87:
  %t361 = load ptr, ptr %l189, !tbaa !29
  %t363 = load i64, ptr %l13, !tbaa !24
  %t366 = getelementptr %"compiler/load:Import", ptr %t361, i32 0, i32 5
  store i64 %t363, ptr %t366, !tbaa !24
  call void @__olang_scope_close(ptr %s2)
  br label %bb88
bb88:
  %t367 = load i64, ptr %l7, !tbaa !24
  %t369 = add i64 %t367, 1
  store i64 %t369, ptr %l7, !tbaa !24
  br label %bb9
bb89:
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2fload_2ecompiler_2fload_3aLoader_2eownNames(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca i64
  %l4 = alloca { i64, ptr }
  %l5 = alloca ptr
  %l6 = alloca i64
  %l7 = alloca { i64, ptr }
  %l8 = alloca ptr
  %l9 = alloca i64
  %l10 = alloca { i64, ptr }
  %l13 = alloca i64
  %l15 = alloca i64
  %l20 = alloca { i64, ptr }
  %l33 = alloca i64
  %l35 = alloca i64
  %l40 = alloca { i64, ptr }
  %l53 = alloca i64
  %l55 = alloca i64
  %l60 = alloca { i64, ptr }
  %l61 = alloca { i64, ptr }
  %l63 = alloca i1
  %s0 = alloca %olang.scope
  %s2 = alloca %olang.scope
  %s5 = alloca %olang.scope
  %s9 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l1, !tbaa !29
  %t3 = getelementptr %"compiler/load:Module", ptr %t1, i32 0, i32 9
  store ptr %t3, ptr %l2, !tbaa !29
  store i64 0, ptr %l3, !tbaa !24
  br label %bb1
bb1:
  store %olang.scope zeroinitializer, ptr %s2
  %t5 = load i64, ptr %l3, !tbaa !24
  store i64 %t5, ptr %l13, !tbaa !24
  %t6 = load ptr, ptr %l2, !tbaa !29
  %t8 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %v1, ptr %t6)
  store i64 %t8, ptr %l15
  br label %bb2
bb2:
  %t9 = load i64, ptr %l13, !tbaa !24
  %t10 = load i64, ptr %l15, !tbaa !24
  %t11 = icmp slt i64 %t9, %t10
  %t13 = xor i1 %t11, true
  br i1 %t13, label %bb3, label %bb4
bb3:
  call void @__olang_scope_close(ptr %s2)
  br label %bb12
bb4:
  br label %bb5
bb5:
  %t15 = load ptr, ptr %l2, !tbaa !29
  %t16 = load i64, ptr %l3, !tbaa !24
  %t19 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %v1, ptr %v1, ptr %t15, i64 %t16)
  store { i64, ptr } %t19, ptr %l20
  br label %bb6
bb6:
  %t20 = load { i64, ptr }, ptr %l20, !tbaa !27
  store { i64, ptr } %t20, ptr %l4, !tbaa !27
  %t21 = load ptr, ptr %l1, !tbaa !29
  %t23 = getelementptr %"compiler/load:Module", ptr %t21, i32 0, i32 12
  %t24 = load ptr, ptr %t23, !tbaa !29
  %t26 = icmp eq ptr %t24, null
  br i1 %t26, label %bb7, label %bb8
bb7:
  call void @__olang_check_failed(ptr @olang_loc_fb45b5897f8c270_56a4f9a48484bf74)
  unreachable
bb8:
  br label %bb9
bb9:
  %t28 = load ptr, ptr %l1, !tbaa !29
  %t30 = getelementptr %"compiler/load:Module", ptr %t28, i32 0, i32 12
  %t31 = load ptr, ptr %t30, !tbaa !29
  %t32 = load ptr, ptr %l0, !tbaa !29
  %t34 = getelementptr %"compiler/load:Loader", ptr %t32, i32 0, i32 3
  %t35 = load ptr, ptr %t34, !tbaa !29
  %t36 = load { i64, ptr }, ptr %l4, !tbaa !27
  call void @compiler_2fparse_2ecompiler_2fparse_3aOracle_2eAdd(ptr %v1, ptr %v0, ptr %s2, ptr %v1, ptr %t31, ptr %t35, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d156, i32 0, i32 1) }, { i64, ptr } %t36)
  br label %bb10
bb10:
  call void @__olang_scope_close(ptr %s2)
  br label %bb11
bb11:
  %t40 = load i64, ptr %l3, !tbaa !24
  %t42 = add i64 %t40, 1
  store i64 %t42, ptr %l3, !tbaa !24
  br label %bb1
bb12:
  %t44 = load ptr, ptr %l1, !tbaa !29
  %t46 = getelementptr %"compiler/load:Module", ptr %t44, i32 0, i32 10
  store ptr %t46, ptr %l5, !tbaa !29
  store i64 0, ptr %l6, !tbaa !24
  br label %bb13
bb13:
  store %olang.scope zeroinitializer, ptr %s5
  %t48 = load i64, ptr %l6, !tbaa !24
  store i64 %t48, ptr %l33, !tbaa !24
  %t49 = load ptr, ptr %l5, !tbaa !29
  %t51 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %v1, ptr %t49)
  store i64 %t51, ptr %l35
  br label %bb14
bb14:
  %t52 = load i64, ptr %l33, !tbaa !24
  %t53 = load i64, ptr %l35, !tbaa !24
  %t54 = icmp slt i64 %t52, %t53
  %t56 = xor i1 %t54, true
  br i1 %t56, label %bb15, label %bb16
bb15:
  call void @__olang_scope_close(ptr %s5)
  br label %bb24
bb16:
  br label %bb17
bb17:
  %t58 = load ptr, ptr %l5, !tbaa !29
  %t59 = load i64, ptr %l6, !tbaa !24
  %t62 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %v1, ptr %v1, ptr %t58, i64 %t59)
  store { i64, ptr } %t62, ptr %l40
  br label %bb18
bb18:
  %t63 = load { i64, ptr }, ptr %l40, !tbaa !27
  store { i64, ptr } %t63, ptr %l7, !tbaa !27
  %t64 = load ptr, ptr %l1, !tbaa !29
  %t66 = getelementptr %"compiler/load:Module", ptr %t64, i32 0, i32 12
  %t67 = load ptr, ptr %t66, !tbaa !29
  %t69 = icmp eq ptr %t67, null
  br i1 %t69, label %bb19, label %bb20
bb19:
  call void @__olang_check_failed(ptr @olang_loc_4820d8be822def4f_666b99eead9f0f03)
  unreachable
bb20:
  br label %bb21
bb21:
  %t71 = load ptr, ptr %l1, !tbaa !29
  %t73 = getelementptr %"compiler/load:Module", ptr %t71, i32 0, i32 12
  %t74 = load ptr, ptr %t73, !tbaa !29
  %t75 = load ptr, ptr %l0, !tbaa !29
  %t77 = getelementptr %"compiler/load:Loader", ptr %t75, i32 0, i32 3
  %t78 = load ptr, ptr %t77, !tbaa !29
  %t79 = load { i64, ptr }, ptr %l7, !tbaa !27
  call void @compiler_2fparse_2ecompiler_2fparse_3aOracle_2eAddFn(ptr %v1, ptr %v0, ptr %s5, ptr %v1, ptr %t74, ptr %t78, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d157, i32 0, i32 1) }, { i64, ptr } %t79)
  br label %bb22
bb22:
  call void @__olang_scope_close(ptr %s5)
  br label %bb23
bb23:
  %t83 = load i64, ptr %l6, !tbaa !24
  %t85 = add i64 %t83, 1
  store i64 %t85, ptr %l6, !tbaa !24
  br label %bb13
bb24:
  %t87 = load ptr, ptr %l0, !tbaa !29
  %t89 = getelementptr %"compiler/load:Loader", ptr %t87, i32 0, i32 11
  store ptr %t89, ptr %l8, !tbaa !29
  store i64 0, ptr %l9, !tbaa !24
  br label %bb25
bb25:
  %t91 = load i64, ptr %l9, !tbaa !24
  store i64 %t91, ptr %l53, !tbaa !24
  %t92 = load ptr, ptr %l8, !tbaa !29
  %t94 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %v0, ptr %t92)
  store i64 %t94, ptr %l55
  br label %bb26
bb26:
  %t95 = load i64, ptr %l53, !tbaa !24
  %t96 = load i64, ptr %l55, !tbaa !24
  %t97 = icmp slt i64 %t95, %t96
  %t99 = xor i1 %t97, true
  br i1 %t99, label %bb27, label %bb28
bb27:
  br label %bb40
bb28:
  br label %bb29
bb29:
  %t101 = load ptr, ptr %l8, !tbaa !29
  %t102 = load i64, ptr %l9, !tbaa !24
  %t105 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %v0, ptr %v0, ptr %t101, i64 %t102)
  store { i64, ptr } %t105, ptr %l60
  br label %bb30
bb30:
  %t106 = load { i64, ptr }, ptr %l60, !tbaa !27
  store { i64, ptr } %t106, ptr %l10, !tbaa !27
  %t107 = load { i64, ptr }, ptr %l10, !tbaa !27
  store { i64, ptr } %t107, ptr %l61, !tbaa !27
  %t108 = getelementptr { i64, ptr }, ptr %l61, i32 0, i32 1
  %t109 = load ptr, ptr %t108, !tbaa !27
  %t110 = getelementptr i8, ptr %t109, i64 0
  %t111 = load i8, ptr %t110, !tbaa !32
  %t113 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aChar_2eIsUpper(i8 %t111)
  store i1 %t113, ptr %l63
  br label %bb31
bb31:
  %t114 = load i1, ptr %l63, !tbaa !21
  br i1 %t114, label %bb32, label %bb33
bb32:
  store %olang.scope zeroinitializer, ptr %s9
  %t115 = load ptr, ptr %l1, !tbaa !29
  %t117 = getelementptr %"compiler/load:Module", ptr %t115, i32 0, i32 12
  %t118 = load ptr, ptr %t117, !tbaa !29
  %t120 = icmp eq ptr %t118, null
  br i1 %t120, label %bb34, label %bb35
bb33:
  br label %bb38
bb34:
  call void @__olang_check_failed(ptr @olang_loc_d940f9862e24151e_9dcc71718a42ab82)
  unreachable
bb35:
  br label %bb36
bb36:
  %t122 = load ptr, ptr %l1, !tbaa !29
  %t124 = getelementptr %"compiler/load:Module", ptr %t122, i32 0, i32 12
  %t125 = load ptr, ptr %t124, !tbaa !29
  %t126 = load ptr, ptr %l0, !tbaa !29
  %t128 = getelementptr %"compiler/load:Loader", ptr %t126, i32 0, i32 3
  %t129 = load ptr, ptr %t128, !tbaa !29
  %t130 = load { i64, ptr }, ptr %l10, !tbaa !27
  call void @compiler_2fparse_2ecompiler_2fparse_3aOracle_2eAdd(ptr %v1, ptr %v0, ptr %s9, ptr %v0, ptr %t125, ptr %t129, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d158, i32 0, i32 1) }, { i64, ptr } %t130)
  br label %bb37
bb37:
  call void @__olang_scope_close(ptr %s9)
  br label %bb38
bb38:
  br label %bb39
bb39:
  %t134 = load i64, ptr %l9, !tbaa !24
  %t136 = add i64 %t134, 1
  store i64 %t136, ptr %l9, !tbaa !24
  br label %bb25
bb40:
  %t138 = load ptr, ptr %l1, !tbaa !29
  %t140 = getelementptr %"compiler/load:Module", ptr %t138, i32 0, i32 12
  %t141 = load ptr, ptr %t140, !tbaa !29
  %t143 = icmp eq ptr %t141, null
  br i1 %t143, label %bb41, label %bb42
bb41:
  call void @__olang_check_failed(ptr @olang_loc_2ca78ec550b059c5_f5cdcad03c843269)
  unreachable
bb42:
  br label %bb43
bb43:
  %t145 = load ptr, ptr %l1, !tbaa !29
  %t147 = getelementptr %"compiler/load:Module", ptr %t145, i32 0, i32 12
  %t148 = load ptr, ptr %t147, !tbaa !29
  %t149 = load ptr, ptr %l0, !tbaa !29
  %t151 = getelementptr %"compiler/load:Loader", ptr %t149, i32 0, i32 3
  %t152 = load ptr, ptr %t151, !tbaa !29
  call void @compiler_2fparse_2ecompiler_2fparse_3aOracle_2eAdd(ptr %v1, ptr %v0, ptr %s0, ptr %s0, ptr %t148, ptr %t152, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d159, i32 0, i32 1) }, { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d160, i32 0, i32 1) })
  br label %bb44
bb44:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
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
  call void @compiler_2fload_2ecompiler_2fload_3aLoader_2echains(ptr %v0, ptr %v0, ptr %s0, ptr %t22, ptr %t20, i64 %t21, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d161, i32 0, i32 1) }, i64 0)
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
  call void @llvm.memmove.p0.p0.i64(ptr %l36, ptr %t71, i64 1048, i1 false)
  br label %bb15
bb15:
  %t78 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 1048, i64 8)
  call void @llvm.memmove.p0.p0.i64(ptr %t78, ptr %l36, i64 1048, i1 false)
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

define dso_local void @compiler_2fload_2ecompiler_2fload_3aLoader_2eprescan(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca i64
  %l5 = alloca ptr
  %l6 = alloca i64
  %l14 = alloca { i64, ptr }
  %l20 = alloca ptr
  %l21 = alloca i64
  %l23 = alloca i64
  %l28 = alloca { i64, ptr }
  %l40 = alloca { i64, ptr }
  %l46 = alloca ptr
  %l47 = alloca i64
  %l49 = alloca i64
  %l54 = alloca { i64, ptr }
  %l60 = alloca ptr
  %l61 = alloca ptr
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l1, !tbaa !29
  %t3 = getelementptr %"compiler/load:Module", ptr %t1, i32 0, i32 6
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t6 = icmp eq ptr %t4, null
  br i1 %t6, label %bb1, label %bb2
bb1:
  call void @__olang_check_failed(ptr @olang_loc_2753d2bb7793a0fa_e1a4644f7c04bcf6)
  unreachable
bb2:
  br label %bb3
bb3:
  %t8 = load ptr, ptr %l1, !tbaa !29
  %t10 = getelementptr %"compiler/load:Module", ptr %t8, i32 0, i32 6
  %t11 = load ptr, ptr %t10, !tbaa !29
  %t14 = getelementptr %"compiler/source:Source", ptr %t11, i32 0, i32 1
  %t15 = load { i64, ptr }, ptr %t14, !tbaa !27
  store { i64, ptr } %t15, ptr %l14, !tbaa !27
  %t16 = load ptr, ptr %l1, !tbaa !29
  %t18 = getelementptr %"compiler/load:Module", ptr %t16, i32 0, i32 7
  %t19 = load ptr, ptr %t18, !tbaa !29
  %t21 = icmp eq ptr %t19, null
  br i1 %t21, label %bb4, label %bb5
bb4:
  call void @__olang_check_failed(ptr @olang_loc_2753d2bb7793a0fa_e1a4644f7c04bcf6)
  unreachable
bb5:
  br label %bb6
bb6:
  %t23 = load ptr, ptr %l1, !tbaa !29
  %t25 = getelementptr %"compiler/load:Module", ptr %t23, i32 0, i32 7
  %t26 = load ptr, ptr %t25, !tbaa !29
  %t27 = load { i64, ptr }, ptr %l14, !tbaa !27
  %t29 = call ptr @compiler_2fload_2etypeNames(ptr %v1, ptr %v1, ptr %v1, { i64, ptr } %t27, ptr %t26)
  store ptr %t29, ptr %l20
  br label %bb7
bb7:
  %t30 = load ptr, ptr %l20, !tbaa !29
  store ptr %t30, ptr %l2, !tbaa !29
  store i64 0, ptr %l3, !tbaa !24
  br label %bb8
bb8:
  %t31 = load i64, ptr %l3, !tbaa !24
  store i64 %t31, ptr %l21, !tbaa !24
  %t32 = load ptr, ptr %l2, !tbaa !29
  %t34 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %v1, ptr %t32)
  store i64 %t34, ptr %l23
  br label %bb9
bb9:
  %t35 = load i64, ptr %l21, !tbaa !24
  %t36 = load i64, ptr %l23, !tbaa !24
  %t37 = icmp slt i64 %t35, %t36
  %t39 = xor i1 %t37, true
  br i1 %t39, label %bb10, label %bb11
bb10:
  br label %bb16
bb11:
  br label %bb12
bb12:
  %t41 = load ptr, ptr %l2, !tbaa !29
  %t42 = load i64, ptr %l3, !tbaa !24
  %t45 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %v1, ptr %v1, ptr %t41, i64 %t42)
  store { i64, ptr } %t45, ptr %l28
  br label %bb13
bb13:
  %t46 = load { i64, ptr }, ptr %l28, !tbaa !27
  %t47 = load ptr, ptr %l1, !tbaa !29
  %t49 = getelementptr %"compiler/load:Module", ptr %t47, i32 0, i32 9
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v1, ptr %v1, ptr %t49, { i64, ptr } %t46)
  br label %bb14
bb14:
  br label %bb15
bb15:
  %t53 = load i64, ptr %l3, !tbaa !24
  %t55 = add i64 %t53, 1
  store i64 %t55, ptr %l3, !tbaa !24
  br label %bb8
bb16:
  %t57 = load ptr, ptr %l1, !tbaa !29
  %t59 = getelementptr %"compiler/load:Module", ptr %t57, i32 0, i32 6
  %t60 = load ptr, ptr %t59, !tbaa !29
  %t62 = icmp eq ptr %t60, null
  br i1 %t62, label %bb17, label %bb18
bb17:
  call void @__olang_check_failed(ptr @olang_loc_4a5bc26e34bf81_f78399c125ad415d)
  unreachable
bb18:
  br label %bb19
bb19:
  %t64 = load ptr, ptr %l1, !tbaa !29
  %t66 = getelementptr %"compiler/load:Module", ptr %t64, i32 0, i32 6
  %t67 = load ptr, ptr %t66, !tbaa !29
  %t70 = getelementptr %"compiler/source:Source", ptr %t67, i32 0, i32 1
  %t71 = load { i64, ptr }, ptr %t70, !tbaa !27
  store { i64, ptr } %t71, ptr %l40, !tbaa !27
  %t72 = load ptr, ptr %l1, !tbaa !29
  %t74 = getelementptr %"compiler/load:Module", ptr %t72, i32 0, i32 7
  %t75 = load ptr, ptr %t74, !tbaa !29
  %t77 = icmp eq ptr %t75, null
  br i1 %t77, label %bb20, label %bb21
bb20:
  call void @__olang_check_failed(ptr @olang_loc_4a5bc26e34bf81_f78399c125ad415d)
  unreachable
bb21:
  br label %bb22
bb22:
  %t79 = load ptr, ptr %l1, !tbaa !29
  %t81 = getelementptr %"compiler/load:Module", ptr %t79, i32 0, i32 7
  %t82 = load ptr, ptr %t81, !tbaa !29
  %t83 = load { i64, ptr }, ptr %l40, !tbaa !27
  %t85 = call ptr @compiler_2fparse_2eGenericFnNames(ptr %v1, ptr %v1, ptr %v1, { i64, ptr } %t83, ptr %t82)
  store ptr %t85, ptr %l46
  br label %bb23
bb23:
  %t86 = load ptr, ptr %l46, !tbaa !29
  store ptr %t86, ptr %l5, !tbaa !29
  store i64 0, ptr %l6, !tbaa !24
  br label %bb24
bb24:
  %t87 = load i64, ptr %l6, !tbaa !24
  store i64 %t87, ptr %l47, !tbaa !24
  %t88 = load ptr, ptr %l5, !tbaa !29
  %t90 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %v1, ptr %t88)
  store i64 %t90, ptr %l49
  br label %bb25
bb25:
  %t91 = load i64, ptr %l47, !tbaa !24
  %t92 = load i64, ptr %l49, !tbaa !24
  %t93 = icmp slt i64 %t91, %t92
  %t95 = xor i1 %t93, true
  br i1 %t95, label %bb26, label %bb27
bb26:
  br label %bb32
bb27:
  br label %bb28
bb28:
  %t97 = load ptr, ptr %l5, !tbaa !29
  %t98 = load i64, ptr %l6, !tbaa !24
  %t101 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %v1, ptr %v1, ptr %t97, i64 %t98)
  store { i64, ptr } %t101, ptr %l54
  br label %bb29
bb29:
  %t102 = load { i64, ptr }, ptr %l54, !tbaa !27
  %t103 = load ptr, ptr %l1, !tbaa !29
  %t105 = getelementptr %"compiler/load:Module", ptr %t103, i32 0, i32 10
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v1, ptr %v1, ptr %t105, { i64, ptr } %t102)
  br label %bb30
bb30:
  br label %bb31
bb31:
  %t109 = load i64, ptr %l6, !tbaa !24
  %t111 = add i64 %t109, 1
  store i64 %t111, ptr %l6, !tbaa !24
  br label %bb24
bb32:
  store ptr %a0, ptr %l60, !tbaa !29
  %t114 = load ptr, ptr %l1, !tbaa !29
  store ptr %t114, ptr %l61, !tbaa !29
  %t115 = load ptr, ptr %l1, !tbaa !29
  %t117 = getelementptr %"compiler/load:Module", ptr %t115, i32 0, i32 7
  %t118 = load ptr, ptr %t117, !tbaa !29
  %t120 = icmp eq ptr %t118, null
  br i1 %t120, label %bb33, label %bb34
bb33:
  call void @__olang_check_failed(ptr @olang_loc_75be0ecbfd40364c_3ba616ba9e8cb88)
  unreachable
bb34:
  br label %bb35
bb35:
  %t122 = load ptr, ptr %l1, !tbaa !29
  %t124 = getelementptr %"compiler/load:Module", ptr %t122, i32 0, i32 7
  %t125 = load ptr, ptr %t124, !tbaa !29
  %t128 = getelementptr %"compiler/scan:Tokens", ptr %t125, i32 0, i32 0
  %t129 = load { i64, ptr }, ptr %t128, !tbaa !27
  %t131 = extractvalue { i64, ptr } %t129, 0
  %t133 = sub i64 %t131, 1
  %t134 = load ptr, ptr %l60, !tbaa !29
  %t135 = load ptr, ptr %l61, !tbaa !29
  call void @compiler_2fload_2ecompiler_2fload_3aLoader_2eregion(ptr %v0, ptr %v1, ptr %t134, ptr %t135, i64 0, i64 %t133, i64 -1)
  br label %bb36
bb36:
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2fload_2ecompiler_2fload_3aLoader_2eregion(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i64 %a2, i64 %a3, i64 %a4) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i64
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca { i64, ptr }
  %l6 = alloca i64
  %l7 = alloca i1
  %l8 = alloca i32
  %l9 = alloca i64
  %l10 = alloca i1
  %l23 = alloca { i64, ptr }
  %l35 = alloca i32
  %l43 = alloca i1
  %l49 = alloca i1
  %l53 = alloca i1
  %l54 = alloca { i64, ptr }
  %l59 = alloca i1
  %l60 = alloca { i64, ptr }
  %l68 = alloca i1
  %l75 = alloca i64
  %l84 = alloca i1
  %l86 = alloca i1
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store i64 %a2, ptr %l2
  store i64 %a3, ptr %l3
  store i64 %a4, ptr %l4
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
  call void @__olang_check_failed(ptr @olang_loc_d161242c40b74370_507871439a6630a4)
  unreachable
bb2:
  br label %bb3
bb3:
  %t8 = load ptr, ptr %l1, !tbaa !29
  %t10 = getelementptr %"compiler/load:Module", ptr %t8, i32 0, i32 7
  %t11 = load ptr, ptr %t10, !tbaa !29
  %t14 = getelementptr %"compiler/scan:Tokens", ptr %t11, i32 0, i32 0
  %t15 = load { i64, ptr }, ptr %t14, !tbaa !27
  store { i64, ptr } %t15, ptr %l5, !tbaa !27
  %t17 = load i64, ptr %l2, !tbaa !24
  store i64 %t17, ptr %l6, !tbaa !24
  store i1 true, ptr %l7, !tbaa !21
  br label %bb4
bb4:
  %t19 = load i64, ptr %l6, !tbaa !24
  %t20 = load i64, ptr %l3, !tbaa !24
  %t23 = icmp slt i64 %t19, %t20
  %t25 = xor i1 %t23, true
  br i1 %t25, label %bb5, label %bb6
bb5:
  br label %bb55
bb6:
  br label %bb7
bb7:
  %t27 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t27, ptr %l23, !tbaa !27
  %t28 = load i64, ptr %l6, !tbaa !24
  %t30 = getelementptr { i64, ptr }, ptr %l23, i32 0, i32 1
  %t31 = load ptr, ptr %t30, !tbaa !27
  %t32 = getelementptr %"compiler/token:Token", ptr %t31, i64 %t28
  %t33 = getelementptr %"compiler/token:Token", ptr %t32, i32 0, i32 0
  %t34 = load i32, ptr %t33, !range !{i32 0, i32 113}
  store i32 %t34, ptr %l8
  %t36 = load i32, ptr %l8, !range !{i32 0, i32 113}
  %t38 = trunc i64 111 to i32
  %t39 = icmp eq i32 %t36, %t38
  br i1 %t39, label %bb8, label %bb9
bb8:
  %t41 = load ptr, ptr %l1, !tbaa !29
  %t43 = getelementptr %"compiler/load:Module", ptr %t41, i32 0, i32 7
  %t44 = load ptr, ptr %t43, !tbaa !29
  %t46 = icmp eq ptr %t44, null
  br i1 %t46, label %bb10, label %bb11
bb9:
  br label %bb17
bb10:
  call void @__olang_check_failed(ptr @olang_loc_9cda1922aec704f_35a4007cf0fda73)
  unreachable
bb11:
  br label %bb12
bb12:
  %t48 = load ptr, ptr %l1, !tbaa !29
  %t50 = getelementptr %"compiler/load:Module", ptr %t48, i32 0, i32 7
  %t51 = load ptr, ptr %t50, !tbaa !29
  %t52 = load i64, ptr %l6, !tbaa !24
  %t54 = trunc i64 %t52 to i32
  %t57 = call i32 @compiler_2fscan_2ecompiler_2fscan_3aTokens_2eMatch(ptr %v1, ptr %t51, i32 %t54)
  store i32 %t57, ptr %l35
  br label %bb13
bb13:
  %t58 = load i32, ptr %l35, !tbaa !23
  %t59 = sext i32 %t58 to i64
  store i64 %t59, ptr %l9, !tbaa !24
  %t61 = load i64, ptr %l9, !tbaa !24
  %t63 = icmp slt i64 %t61, 0
  br i1 %t63, label %bb14, label %bb15
bb14:
  br label %ret
bb15:
  br label %bb16
bb16:
  %t65 = load i64, ptr %l9, !tbaa !24
  %t67 = add i64 %t65, 1
  store i64 %t67, ptr %l6, !tbaa !24
  store i1 true, ptr %l7, !tbaa !21
  br label %bb54
bb17:
  %t69 = load i32, ptr %l8, !range !{i32 0, i32 113}
  %t71 = trunc i64 8 to i32
  %t72 = icmp eq i32 %t69, %t71
  br i1 %t72, label %bb18, label %bb19
bb18:
  store i1 true, ptr %l43, !tbaa !21
  br label %bb20
bb19:
  %t74 = load i32, ptr %l8, !range !{i32 0, i32 113}
  %t76 = trunc i64 112 to i32
  %t77 = icmp eq i32 %t74, %t76
  store i1 %t77, ptr %l43, !tbaa !21
  br label %bb20
bb20:
  %t79 = load i1, ptr %l43, !tbaa !21
  br i1 %t79, label %bb21, label %bb22
bb21:
  store i1 true, ptr %l7, !tbaa !21
  %t80 = load i64, ptr %l6, !tbaa !24
  %t82 = add i64 %t80, 1
  store i64 %t82, ptr %l6, !tbaa !24
  br label %bb54
bb22:
  br label %bb23
bb23:
  %t84 = load i1, ptr %l7, !tbaa !21
  br i1 %t84, label %bb24, label %bb25
bb24:
  store i1 true, ptr %l49, !tbaa !21
  br label %bb32
bb25:
  %t86 = load i64, ptr %l6, !tbaa !24
  %t87 = load i64, ptr %l2, !tbaa !24
  %t90 = icmp sgt i64 %t86, %t87
  br i1 %t90, label %bb26, label %bb27
bb26:
  %t92 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t92, ptr %l54, !tbaa !27
  %t93 = load i64, ptr %l6, !tbaa !24
  %t95 = sub i64 %t93, 1
  %t97 = getelementptr { i64, ptr }, ptr %l54, i32 0, i32 1
  %t98 = load ptr, ptr %t97, !tbaa !27
  %t99 = getelementptr %"compiler/token:Token", ptr %t98, i64 %t95
  %t100 = getelementptr %"compiler/token:Token", ptr %t99, i32 0, i32 0
  %t101 = load i32, ptr %t100, !range !{i32 0, i32 113}
  %t103 = trunc i64 100 to i32
  %t104 = icmp eq i32 %t101, %t103
  store i1 %t104, ptr %l53, !tbaa !21
  br label %bb28
bb27:
  store i1 false, ptr %l53, !tbaa !21
  br label %bb28
bb28:
  %t106 = load i1, ptr %l53, !tbaa !21
  br i1 %t106, label %bb29, label %bb30
bb29:
  %t107 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t107, ptr %l60, !tbaa !27
  %t108 = load i64, ptr %l6, !tbaa !24
  %t110 = getelementptr { i64, ptr }, ptr %l60, i32 0, i32 1
  %t111 = load ptr, ptr %t110, !tbaa !27
  %t112 = getelementptr %"compiler/token:Token", ptr %t111, i64 %t108
  %t113 = getelementptr %"compiler/token:Token", ptr %t112, i32 0, i32 1
  %t114 = load i8, ptr %t113, !tbaa !22
  %t115 = load i8, ptr @G_2ecompiler_2ftoken_2eLineBreak, !tbaa !22
  %t118 = and i8 %t114, %t115
  %t120 = icmp ne i8 %t118, 0
  store i1 %t120, ptr %l59, !tbaa !21
  br label %bb31
bb30:
  store i1 false, ptr %l59, !tbaa !21
  br label %bb31
bb31:
  %t122 = load i1, ptr %l59, !tbaa !21
  store i1 %t122, ptr %l49, !tbaa !21
  br label %bb32
bb32:
  %t123 = load i1, ptr %l49, !tbaa !21
  store i1 %t123, ptr %l10, !tbaa !21
  store i1 false, ptr %l7, !tbaa !21
  %t124 = load i32, ptr %l8, !range !{i32 0, i32 113}
  %t126 = trunc i64 9 to i32
  %t127 = icmp eq i32 %t124, %t126
  br i1 %t127, label %bb33, label %bb34
bb33:
  %t129 = load i1, ptr %l10, !tbaa !21
  store i1 %t129, ptr %l68, !tbaa !21
  br label %bb35
bb34:
  store i1 false, ptr %l68, !tbaa !21
  br label %bb35
bb35:
  %t131 = load i1, ptr %l68, !tbaa !21
  br i1 %t131, label %bb36, label %bb37
bb36:
  %t132 = load ptr, ptr %l0, !tbaa !29
  %t133 = load ptr, ptr %l1, !tbaa !29
  %t134 = load i64, ptr %l6, !tbaa !24
  %t135 = load i64, ptr %l3, !tbaa !24
  %t136 = load i64, ptr %l4, !tbaa !24
  %t142 = call i64 @compiler_2fload_2ecompiler_2fload_3aLoader_2etopIf(ptr %v0, ptr %v1, ptr %t132, ptr %t133, i64 %t134, i64 %t135, i64 %t136)
  store i64 %t142, ptr %l75
  br label %bb38
bb37:
  br label %bb39
bb38:
  %t143 = load i64, ptr %l75, !tbaa !24
  store i64 %t143, ptr %l6, !tbaa !24
  store i1 true, ptr %l7, !tbaa !21
  br label %bb54
bb39:
  %t144 = load i32, ptr %l8, !range !{i32 0, i32 113}
  %t146 = trunc i64 39 to i32
  %t147 = icmp eq i32 %t144, %t146
  br i1 %t147, label %bb40, label %bb41
bb40:
  %t149 = load ptr, ptr %l0, !tbaa !29
  %t150 = load ptr, ptr %l1, !tbaa !29
  %t151 = load i64, ptr %l6, !tbaa !24
  %t152 = load i64, ptr %l4, !tbaa !24
  call void @compiler_2fload_2ecompiler_2fload_3aLoader_2eimportAt(ptr %v0, ptr %v1, ptr %t149, ptr %t150, i64 %t151, i64 %t152)
  br label %bb42
bb41:
  br label %bb43
bb42:
  br label %bb43
bb43:
  %t157 = load i32, ptr %l8, !range !{i32 0, i32 113}
  %t159 = trunc i64 1 to i32
  %t160 = icmp eq i32 %t157, %t159
  br i1 %t160, label %bb44, label %bb45
bb44:
  %t162 = load i1, ptr %l10, !tbaa !21
  store i1 %t162, ptr %l84, !tbaa !21
  br label %bb46
bb45:
  store i1 false, ptr %l84, !tbaa !21
  br label %bb46
bb46:
  %t164 = load i1, ptr %l84, !tbaa !21
  br i1 %t164, label %bb47, label %bb48
bb47:
  %t165 = load i64, ptr %l4, !tbaa !24
  %t167 = icmp slt i64 %t165, 0
  store i1 %t167, ptr %l86, !tbaa !21
  br label %bb49
bb48:
  store i1 false, ptr %l86, !tbaa !21
  br label %bb49
bb49:
  %t169 = load i1, ptr %l86, !tbaa !21
  br i1 %t169, label %bb50, label %bb51
bb50:
  %t170 = load ptr, ptr %l1, !tbaa !29
  %t172 = getelementptr %"compiler/load:Module", ptr %t170, i32 0, i32 22
  %t173 = load i64, ptr %l6, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v1, ptr %t172, i64 %t173)
  br label %bb52
bb51:
  br label %bb53
bb52:
  br label %bb53
bb53:
  %t176 = load i64, ptr %l6, !tbaa !24
  %t178 = add i64 %t176, 1
  store i64 %t178, ptr %l6, !tbaa !24
  br label %bb54
bb54:
  br label %bb4
bb55:
  br label %ret
ret:
  ret void
}

define dso_local { i32, { { i64, ptr }, { i64, ptr } } } @compiler_2fload_2ecompiler_2fload_3aLoader_2eresolve(ptr %v0, ptr %v1, ptr %v2, ptr %a0, i64 %a1, %"compiler/load:Import" %a2) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca %"compiler/load:Import"
  %l3 = alloca ptr
  %l4 = alloca { i64, [3 x i64] }
  %l5 = alloca { i64, ptr }
  %l7 = alloca { i64, ptr }
  %lp8 = alloca ptr
  %lp9 = alloca ptr
  %l10 = alloca { i64, ptr }
  %l11 = alloca { i64, ptr }
  %l12 = alloca %"std/prelude/text:StringBuilder"
  %l13 = alloca i64
  %l14 = alloca i64
  %l15 = alloca i64
  %l16 = alloca i64
  %l17 = alloca i64
  %l18 = alloca i64
  %l19 = alloca { i64, ptr }
  %l20 = alloca { i64, ptr }
  %l21 = alloca { i64, ptr }
  %l22 = alloca { i64, ptr }
  %l23 = alloca i1
  %l27 = alloca ptr
  %l31 = alloca { i64, [3 x i64] }
  %l37 = alloca ptr
  %l38 = alloca { i64, [3 x i64] }
  %l39 = alloca %"compiler/diagmsg:Msg"
  %l40 = alloca i64
  %l43 = alloca i1
  %l45 = alloca ptr
  %l46 = alloca { i64, [3 x i64] }
  %l47 = alloca %"compiler/diagmsg:Msg"
  %l48 = alloca i64
  %l50 = alloca i64
  %l53 = alloca i64
  %l54 = alloca i32
  %l57 = alloca { i64, ptr }
  %l58 = alloca i64
  %l59 = alloca i64
  %l64 = alloca { i64, ptr }
  %l66 = alloca { i64, ptr }
  %l69 = alloca i1
  %l70 = alloca i64
  %l73 = alloca { i64, ptr }
  %l74 = alloca { i64, ptr }
  %l77 = alloca i64
  %l78 = alloca i64
  %l85 = alloca { i64, ptr }
  %l86 = alloca { i64, ptr }
  %l88 = alloca { i64, ptr }
  %l90 = alloca i64
  %l93 = alloca { i64, ptr }
  %l94 = alloca { i64, ptr }
  %l96 = alloca { i64, ptr }
  %l99 = alloca i1
  %l102 = alloca ptr
  %l103 = alloca { i64, [3 x i64] }
  %l104 = alloca %"compiler/diagmsg:Msg"
  %l105 = alloca i64
  %l109 = alloca { i64, ptr }
  %l110 = alloca i1
  %l111 = alloca i1
  %l113 = alloca i1
  %l115 = alloca i1
  %l117 = alloca i1
  %l120 = alloca { i64, ptr }
  %l125 = alloca ptr
  %l126 = alloca { i64, [3 x i64] }
  %l127 = alloca %"compiler/diagmsg:Msg"
  %l128 = alloca i64
  %l130 = alloca { i64, ptr }
  %l133 = alloca { i64, ptr }
  %l135 = alloca { i64, ptr }
  %l137 = alloca { i64, ptr }
  %l139 = alloca { i64, ptr }
  %l140 = alloca i32
  %l147 = alloca ptr
  %l148 = alloca { i64, [3 x i64] }
  %l149 = alloca %"compiler/diagmsg:Msg"
  %l150 = alloca i64
  %l151 = alloca { i64, ptr }
  %l154 = alloca ptr
  %l155 = alloca { i64, [3 x i64] }
  %l157 = alloca { i64, ptr }
  %l159 = alloca %"compiler/diagmsg:Msg"
  %l160 = alloca i64
  %l161 = alloca { i64, ptr }
  %l164 = alloca ptr
  %l165 = alloca { i64, [3 x i64] }
  %l167 = alloca { i64, ptr }
  %l169 = alloca %"compiler/diagmsg:Msg"
  %l170 = alloca i64
  %l171 = alloca { i64, ptr }
  %l174 = alloca ptr
  %l175 = alloca { i64, [3 x i64] }
  %l177 = alloca { i64, ptr }
  %l179 = alloca %"compiler/diagmsg:Msg"
  %l180 = alloca i64
  %l181 = alloca { i64, ptr }
  %l183 = alloca i64
  %l184 = alloca { i64, ptr }
  %l186 = alloca i1
  %l188 = alloca %"std/prelude/text:StringBuilder"
  %l196 = alloca i64
  %l199 = alloca i64
  %l219 = alloca { i64, ptr }
  %l225 = alloca i64
  %l228 = alloca { i64, ptr }
  %l230 = alloca { i64, ptr }
  %l231 = alloca { i64, ptr }
  %l233 = alloca { i64, ptr }
  %l235 = alloca i64
  %l238 = alloca { i64, ptr }
  %l239 = alloca { i64, ptr }
  %l241 = alloca { i64, ptr }
  %l244 = alloca { i64, ptr }
  %l249 = alloca i1
  %l252 = alloca ptr
  %l253 = alloca { i64, [3 x i64] }
  %l255 = alloca %"compiler/diagmsg:Msg"
  %l256 = alloca i64
  %l260 = alloca { i64, ptr }
  %l262 = alloca i1
  %l263 = alloca i1
  %l265 = alloca i1
  %l266 = alloca i64
  %l271 = alloca { i64, ptr }
  %l272 = alloca { i64, ptr }
  %l274 = alloca { i64, ptr }
  %l276 = alloca i64
  %l282 = alloca { i64, ptr }
  %l283 = alloca { i64, ptr }
  %l285 = alloca { i64, ptr }
  %l288 = alloca i1
  %l289 = alloca { i64, ptr }
  %l291 = alloca { i64, ptr }
  %l296 = alloca { i64, ptr }
  %l298 = alloca { i64, ptr }
  %l300 = alloca { i64, ptr }
  %l303 = alloca { i64, ptr }
  %l304 = alloca i64
  %l308 = alloca i64
  %l309 = alloca i32
  %l313 = alloca i64
  %l320 = alloca { i64, ptr }
  %l321 = alloca i1
  %l322 = alloca i1
  %l324 = alloca i1
  %l326 = alloca i1
  %l328 = alloca i1
  %l332 = alloca i1
  %l333 = alloca { i64, ptr }
  %l335 = alloca { i64, ptr }
  %l338 = alloca i1
  %l342 = alloca { i64, ptr }
  %l343 = alloca i1
  %l344 = alloca i64
  %l348 = alloca { i64, ptr }
  %l349 = alloca { i64, ptr }
  %l351 = alloca { i64, ptr }
  %l354 = alloca i1
  %l356 = alloca i1
  %l361 = alloca i1
  %l364 = alloca ptr
  %l365 = alloca { i64, [3 x i64] }
  %l367 = alloca %"compiler/diagmsg:Msg"
  %l368 = alloca i64
  %l371 = alloca i1
  %l373 = alloca i1
  %l375 = alloca i1
  %l377 = alloca ptr
  %l378 = alloca { i64, [3 x i64] }
  %l380 = alloca %"compiler/diagmsg:Msg"
  %l381 = alloca i64
  %s0 = alloca %olang.scope
  %s3 = alloca %olang.scope
  %s7 = alloca %olang.scope
  %s8 = alloca %olang.scope
  %s9 = alloca %olang.scope
  %s12 = alloca %olang.scope
  %s13 = alloca %olang.scope
  %s14 = alloca %olang.scope
  %s23 = alloca %olang.scope
  %s24 = alloca %olang.scope
  %s27 = alloca %olang.scope
  %s33 = alloca %olang.scope
  %s34 = alloca %olang.scope
  %rv = alloca { i32, { { i64, ptr }, { i64, ptr } } }
  store ptr %a0, ptr %l0
  store %"compiler/load:Import" %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/load:Loader", ptr %t1, i32 0, i32 10
  %t7 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H7bcf2aeb09afa796f4333e6ec8c3f63f(ptr %v0, ptr %v0, ptr %t3, i64 %a1)
  store ptr %t7, ptr %l27
  br label %bb1
bb1:
  %t8 = load ptr, ptr %l27, !tbaa !29
  store ptr %t8, ptr %l3, !tbaa !29
  %t9 = load ptr, ptr %l0, !tbaa !29
  %t10 = load ptr, ptr %l3, !tbaa !29
  %t11 = getelementptr %"compiler/load:Import", ptr %l2, i32 0, i32 0
  %t12 = load %"compiler/source:Span", ptr %t11
  %t16 = call { i64, [3 x i64] } @compiler_2fload_2ecompiler_2fload_3aLoader_2eat(ptr %v0, ptr %v0, ptr %t9, ptr %t10, %"compiler/source:Span" %t12)
  store { i64, [3 x i64] } %t16, ptr %l31
  br label %bb2
bb2:
  %t17 = load { i64, [3 x i64] }, ptr %l31
  store { i64, [3 x i64] } %t17, ptr %l4
  %t18 = getelementptr %"compiler/load:Import", ptr %l2, i32 0, i32 3
  %t19 = load { i64, ptr }, ptr %t18, !tbaa !27
  store { i64, ptr } %t19, ptr %l5, !tbaa !27
  %t21 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t23 = extractvalue { i64, ptr } %t21, 0
  %t25 = icmp sge i64 %t23, 4096
  br i1 %t25, label %bb3, label %bb4
bb3:
  %t27 = load ptr, ptr %l0, !tbaa !29
  %t29 = getelementptr %"compiler/load:Loader", ptr %t27, i32 0, i32 4
  %t30 = load ptr, ptr %t29, !tbaa !29
  store ptr %t30, ptr %l37, !tbaa !29
  %t31 = load { i64, [3 x i64] }, ptr %l4
  store { i64, [3 x i64] } %t31, ptr %l38
  %t32 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eImportPathTooLong(ptr %v0)
  store %"compiler/diagmsg:Msg" %t32, ptr %l39
  br label %bb5
bb4:
  br label %bb7
bb5:
  %t33 = load ptr, ptr %l37, !tbaa !29
  %t34 = load { i64, [3 x i64] }, ptr %l38
  %t35 = load %"compiler/diagmsg:Msg", ptr %l39
  %t36 = call i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eError(ptr %v0, ptr %v0, ptr %t33, { i64, [3 x i64] } %t34, %"compiler/diagmsg:Msg" %t35)
  store i64 %t36, ptr %l40
  br label %bb6
bb6:
  call void @__olang_scope_close(ptr %s0)
  %t38 = insertvalue { i32, { { i64, ptr }, { i64, ptr } } } zeroinitializer, i32 65536, 0
  store { i32, { { i64, ptr }, { i64, ptr } } } %t38, ptr %rv
  br label %ret
bb7:
  %t39 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t41 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEndsWith(ptr %v1, ptr %s0, { i64, ptr } %t39, { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d162, i32 0, i32 1) })
  store i1 %t41, ptr %l43
  br label %bb8
bb8:
  %t42 = load i1, ptr %l43, !tbaa !21
  br i1 %t42, label %bb9, label %bb10
bb9:
  %t43 = load ptr, ptr %l0, !tbaa !29
  %t45 = getelementptr %"compiler/load:Loader", ptr %t43, i32 0, i32 4
  %t46 = load ptr, ptr %t45, !tbaa !29
  store ptr %t46, ptr %l45, !tbaa !29
  %t47 = load { i64, [3 x i64] }, ptr %l4
  store { i64, [3 x i64] } %t47, ptr %l46
  %t48 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eImportHasExtension(ptr %v0)
  store %"compiler/diagmsg:Msg" %t48, ptr %l47
  br label %bb11
bb10:
  br label %bb13
bb11:
  %t49 = load ptr, ptr %l45, !tbaa !29
  %t50 = load { i64, [3 x i64] }, ptr %l46
  %t51 = load %"compiler/diagmsg:Msg", ptr %l47
  %t52 = call i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eError(ptr %v0, ptr %v0, ptr %t49, { i64, [3 x i64] } %t50, %"compiler/diagmsg:Msg" %t51)
  store i64 %t52, ptr %l48
  br label %bb12
bb12:
  call void @__olang_scope_close(ptr %s0)
  %t54 = insertvalue { i32, { { i64, ptr }, { i64, ptr } } } zeroinitializer, i32 65536, 0
  store { i32, { { i64, ptr }, { i64, ptr } } } %t54, ptr %rv
  br label %ret
bb13:
  %t55 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t58 = call { i32, i64 } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eFindByte(ptr %v1, { i64, ptr } %t55, i8 47)
  %t59 = extractvalue { i32, i64 } %t58, 1
  %t60 = extractvalue { i32, i64 } %t58, 0
  store i32 %t60, ptr %l54
  %t61 = icmp ne i32 %t60, 0
  br i1 %t61, label %bb15, label %ok.62, !prof !99
ok.62:
  store i64 %t59, ptr %l53
  br label %bb14
bb14:
  %t63 = load i64, ptr %l53, !tbaa !24
  store i64 %t63, ptr %l50, !tbaa !24
  br label %bb17
bb15:
  br label %bb16
bb16:
  %t64 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t66 = extractvalue { i64, ptr } %t64, 0
  store i64 %t66, ptr %l50, !tbaa !24
  br label %bb17
bb17:
  %t68 = load i64, ptr %l50, !tbaa !24
  %t69 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t69, ptr %l57, !tbaa !27
  store i64 %t68, ptr %l58, !tbaa !24
  %t71 = load { i64, ptr }, ptr %l57, !tbaa !27
  %t72 = extractvalue { i64, ptr } %t71, 0
  store i64 %t72, ptr %l59, !tbaa !24
  %t73 = icmp sge i64 0, 0
  br i1 %t73, label %bb18, label %bb19
bb18:
  %t75 = load i64, ptr %l58, !tbaa !24
  %t76 = icmp sle i64 0, %t75
  br i1 %t76, label %bb20, label %bb21
bb19:
  call void @__olang_check_failed(ptr @olang_loc_6772f502359d02a_1b697b2141371efe)
  unreachable
bb20:
  %t78 = load i64, ptr %l58, !tbaa !24
  %t79 = load i64, ptr %l59, !tbaa !24
  %t80 = icmp sle i64 %t78, %t79
  br i1 %t80, label %bb22, label %bb23
bb21:
  call void @__olang_check_failed(ptr @olang_loc_6772f502359d02a_1b697b2141371efe)
  unreachable
bb22:
  %t82 = getelementptr { i64, ptr }, ptr %l57, i32 0, i32 1
  %t83 = load ptr, ptr %t82, !tbaa !27
  %t84 = load i64, ptr %l58, !tbaa !24
  %t85 = getelementptr i8, ptr %t83, i64 0
  %t86 = sub i64 %t84, 0
  %t87 = insertvalue { i64, ptr } undef, i64 %t86, 0
  %t88 = insertvalue { i64, ptr } %t87, ptr %t85, 1
  store { i64, ptr } %t88, ptr %l7, !tbaa !27
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d163, i32 0, i32 1) }, ptr %l64, !tbaa !27
  %t90 = load { i64, ptr }, ptr %l64, !tbaa !27
  %t91 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 16, i64 8)
  store ptr %t91, ptr %lp8
  %t93 = load ptr, ptr %lp8
  store { i64, ptr } %t90, ptr %t93, !tbaa !27
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d164, i32 0, i32 1) }, ptr %l66, !tbaa !27
  %t94 = load { i64, ptr }, ptr %l66, !tbaa !27
  %t95 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 16, i64 8)
  store ptr %t95, ptr %lp9
  %t97 = load ptr, ptr %lp9
  store { i64, ptr } %t94, ptr %t97, !tbaa !27
  %t98 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t100 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %v1, ptr %s0, { i64, ptr } %t98, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d165, i32 0, i32 1) })
  store i1 %t100, ptr %l69
  br label %bb24
bb23:
  call void @__olang_check_failed(ptr @olang_loc_6772f502359d02a_1b697b2141371efe)
  unreachable
bb24:
  %t101 = load i1, ptr %l69, !tbaa !21
  br i1 %t101, label %bb25, label %bb26
bb25:
  store %olang.scope zeroinitializer, ptr %s3
  %t102 = ptrtoint ptr %v2 to i64
  store i64 %t102, ptr %l70, !tbaa !24
  %t103 = load i1, ptr @olang_2esole_2ecompiler__2fload__2ecompiler__2fload__3aLoader__2eresolve_2elocal_2e8
  br i1 %t103, label %bb27, label %bb28
bb26:
  store %olang.scope zeroinitializer, ptr %s8
  %t105 = load { i64, ptr }, ptr %l7, !tbaa !27
  store { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d166, i32 0, i32 1) }, ptr %l109, !tbaa !27
  %t108 = load { i64, ptr }, ptr %l109, !tbaa !27
  %t109 = call i1 @std_2fprelude_2farray_2eArray_3cstd_2fprelude_2ftext_3aChar_3e_2eContains_3cstd_2fprelude_2ftext_3aChar_3e(ptr %v1, ptr %s8, { i64, ptr } %t105, { i64, ptr } %t108)
  store i1 %t109, ptr %l110
  br label %bb53
bb27:
  %t110 = call ptr @__olang_region_make(ptr %v2)
  %t111 = ptrtoint ptr %t110 to i64
  store i64 %t111, ptr %l70, !tbaa !24
  br label %bb28
bb28:
  %t112 = load ptr, ptr %l0, !tbaa !29
  %t114 = getelementptr %"compiler/load:Loader", ptr %t112, i32 0, i32 0
  %t115 = load { i64, ptr }, ptr %t114, !tbaa !27
  store { i64, ptr } %t115, ptr %l73, !tbaa !27
  %t116 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t116, ptr %l74, !tbaa !27
  %t117 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t120 = extractvalue { i64, ptr } %t117, 0
  store i64 %t120, ptr %l77, !tbaa !24
  %t121 = load { i64, ptr }, ptr %l74, !tbaa !27
  %t122 = extractvalue { i64, ptr } %t121, 0
  store i64 %t122, ptr %l78, !tbaa !24
  %t123 = icmp sge i64 4, 0
  br i1 %t123, label %bb29, label %bb30
bb29:
  %t125 = load i64, ptr %l77, !tbaa !24
  %t126 = icmp sle i64 4, %t125
  br i1 %t126, label %bb31, label %bb32
bb30:
  call void @__olang_check_failed(ptr @olang_loc_c7e55e824de13607_c088d15fef4da17b)
  unreachable
bb31:
  %t128 = load i64, ptr %l77, !tbaa !24
  %t129 = load i64, ptr %l78, !tbaa !24
  %t130 = icmp sle i64 %t128, %t129
  br i1 %t130, label %bb33, label %bb34
bb32:
  call void @__olang_check_failed(ptr @olang_loc_c7e55e824de13607_c088d15fef4da17b)
  unreachable
bb33:
  %t132 = getelementptr { i64, ptr }, ptr %l74, i32 0, i32 1
  %t133 = load ptr, ptr %t132, !tbaa !27
  %t134 = load i64, ptr %l77, !tbaa !24
  %t135 = getelementptr i8, ptr %t133, i64 4
  %t136 = sub i64 %t134, 4
  %t137 = insertvalue { i64, ptr } undef, i64 %t136, 0
  %t138 = insertvalue { i64, ptr } %t137, ptr %t135, 1
  %t139 = load { i64, ptr }, ptr %l73, !tbaa !27
  %t140 = extractvalue { i64, ptr } %t139, 1
  %t141 = extractvalue { i64, ptr } %t139, 0
  %t142 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d167, i32 0, i32 1) }, 1
  %t143 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d167, i32 0, i32 1) }, 0
  %t144 = add i64 %t141, %t143
  %t146 = extractvalue { i64, ptr } %t138, 1
  %t147 = extractvalue { i64, ptr } %t138, 0
  %t148 = add i64 %t144, %t147
  %t149 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d168, i32 0, i32 1) }, 1
  %t150 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d168, i32 0, i32 1) }, 0
  %t151 = add i64 %t148, %t150
  %t152 = call ptr @__olang_scope_alloc(ptr %s3, i64 %t151)
  call void @olang_textcopy(ptr %t152, ptr %t140, i64 %t141)
  %t153 = getelementptr i8, ptr %t152, i64 %t141
  call void @olang_textcopy(ptr %t153, ptr %t142, i64 %t143)
  %t154 = getelementptr i8, ptr %t153, i64 %t143
  call void @olang_textcopy(ptr %t154, ptr %t146, i64 %t147)
  %t155 = getelementptr i8, ptr %t154, i64 %t147
  call void @olang_textcopy(ptr %t155, ptr %t149, i64 %t150)
  %t156 = insertvalue { i64, ptr } undef, i64 %t151, 0
  %t157 = insertvalue { i64, ptr } %t156, ptr %t152, 1
  %t159 = extractvalue { i64, ptr } %t157, 0
  %t160 = extractvalue { i64, ptr } %t157, 1
  %t161 = mul i64 %t159, 1
  %t162 = call ptr @__olang_scope_alloc(ptr %s3, i64 %t161)
  call void @llvm.memcpy.p0.p0.i64(ptr %t162, ptr %t160, i64 %t161, i1 false)
  %t163 = insertvalue { i64, ptr } undef, i64 %t159, 0
  %t164 = insertvalue { i64, ptr } %t163, ptr %t162, 1
  %t166 = call { i64, ptr } @compiler_2fload_2eNormalize(ptr %s3, ptr %s3, { i64, ptr } %t164)
  store { i64, ptr } %t166, ptr %l85
  br label %bb35
bb34:
  call void @__olang_check_failed(ptr @olang_loc_c7e55e824de13607_c088d15fef4da17b)
  unreachable
bb35:
  %t167 = load { i64, ptr }, ptr %l85, !tbaa !27
  %t168 = extractvalue { i64, ptr } %t167, 1
  %t169 = extractvalue { i64, ptr } %t167, 0
  %t170 = load i64, ptr %l70
  %t171 = inttoptr i64 %t170 to ptr
  %t172 = call ptr @__olang_scope_alloc(ptr %t171, i64 %t169)
  call void @olang_textcopy(ptr %t172, ptr %t168, i64 %t169)
  %t173 = insertvalue { i64, ptr } undef, i64 %t169, 0
  %t174 = insertvalue { i64, ptr } %t173, ptr %t172, 1
  store { i64, ptr } %t174, ptr %l86, !tbaa !27
  %t175 = load i1, ptr @olang_2esole_2ecompiler__2fload__2ecompiler__2fload__3aLoader__2eresolve_2elocal_2e8
  br i1 %t175, label %bb36, label %bb37
bb36:
  %t177 = load i64, ptr %l70
  %t178 = inttoptr i64 %t177 to ptr
  %t179 = load { i64, ptr }, ptr %l86
  %t180 = extractvalue { i64, ptr } %t179, 1
  %t181 = call ptr @__olang_region_or(ptr %t180, ptr null)
  %t182 = icmp ne ptr %t181, null
  %t183 = select i1 %t182, ptr %t181, ptr null
  %t184 = icmp eq ptr %t183, %t178
  call void @__olang_region_settle(ptr %t178, i1 %t184)
  br label %bb37
bb37:
  %t185 = load ptr, ptr %lp8
  %t186 = load { i64, ptr }, ptr %t185, !tbaa !27
  store { i64, ptr } %t186, ptr %l88, !tbaa !27
  %t187 = load { i64, ptr }, ptr %l86, !tbaa !27
  %t188 = load ptr, ptr %lp8
  store { i64, ptr } %t187, ptr %t188, !tbaa !27
  %t189 = load i1, ptr @olang_2esole_2ecompiler__2fload__2ecompiler__2fload__3aLoader__2eresolve_2elocal_2e8
  br i1 %t189, label %bb38, label %bb39
bb38:
  %t191 = load { i64, ptr }, ptr %l88
  %t192 = extractvalue { i64, ptr } %t191, 1
  call void @__olang_region_release(ptr %t192)
  store { i64, ptr } zeroinitializer, ptr %l88
  br label %bb39
bb39:
  %t193 = ptrtoint ptr %v2 to i64
  store i64 %t193, ptr %l90, !tbaa !24
  %t194 = load i1, ptr @olang_2esole_2ecompiler__2fload__2ecompiler__2fload__3aLoader__2eresolve_2elocal_2e9
  br i1 %t194, label %bb40, label %bb41
bb40:
  %t196 = call ptr @__olang_region_make(ptr %v2)
  %t197 = ptrtoint ptr %t196 to i64
  store i64 %t197, ptr %l90, !tbaa !24
  br label %bb41
bb41:
  %t198 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t200 = call { i64, ptr } @compiler_2fload_2eNormalize(ptr %v1, ptr %s3, { i64, ptr } %t198)
  store { i64, ptr } %t200, ptr %l93
  br label %bb42
bb42:
  %t201 = load { i64, ptr }, ptr %l93, !tbaa !27
  %t202 = extractvalue { i64, ptr } %t201, 1
  %t203 = extractvalue { i64, ptr } %t201, 0
  %t204 = load i64, ptr %l90
  %t205 = inttoptr i64 %t204 to ptr
  %t206 = call ptr @__olang_scope_alloc(ptr %t205, i64 %t203)
  call void @olang_textcopy(ptr %t206, ptr %t202, i64 %t203)
  %t207 = insertvalue { i64, ptr } undef, i64 %t203, 0
  %t208 = insertvalue { i64, ptr } %t207, ptr %t206, 1
  store { i64, ptr } %t208, ptr %l94, !tbaa !27
  %t209 = load i1, ptr @olang_2esole_2ecompiler__2fload__2ecompiler__2fload__3aLoader__2eresolve_2elocal_2e9
  br i1 %t209, label %bb43, label %bb44
bb43:
  %t211 = load i64, ptr %l90
  %t212 = inttoptr i64 %t211 to ptr
  %t213 = load { i64, ptr }, ptr %l94
  %t214 = extractvalue { i64, ptr } %t213, 1
  %t215 = call ptr @__olang_region_or(ptr %t214, ptr null)
  %t216 = icmp ne ptr %t215, null
  %t217 = select i1 %t216, ptr %t215, ptr null
  %t218 = icmp eq ptr %t217, %t212
  call void @__olang_region_settle(ptr %t212, i1 %t218)
  br label %bb44
bb44:
  %t219 = load ptr, ptr %lp9
  %t220 = load { i64, ptr }, ptr %t219, !tbaa !27
  store { i64, ptr } %t220, ptr %l96, !tbaa !27
  %t221 = load { i64, ptr }, ptr %l94, !tbaa !27
  %t222 = load ptr, ptr %lp9
  store { i64, ptr } %t221, ptr %t222, !tbaa !27
  %t223 = load i1, ptr @olang_2esole_2ecompiler__2fload__2ecompiler__2fload__3aLoader__2eresolve_2elocal_2e9
  br i1 %t223, label %bb45, label %bb46
bb45:
  %t225 = load { i64, ptr }, ptr %l96
  %t226 = extractvalue { i64, ptr } %t225, 1
  call void @__olang_region_release(ptr %t226)
  store { i64, ptr } zeroinitializer, ptr %l96
  br label %bb46
bb46:
  %t227 = load ptr, ptr %lp9
  %t228 = load { i64, ptr }, ptr %t227, !tbaa !27
  %t230 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %v2, ptr %s3, { i64, ptr } %t228, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d169, i32 0, i32 1) })
  store i1 %t230, ptr %l99
  br label %bb47
bb47:
  %t231 = load i1, ptr %l99, !tbaa !21
  %t232 = xor i1 %t231, true
  br i1 %t232, label %bb48, label %bb49
bb48:
  store %olang.scope zeroinitializer, ptr %s7
  %t234 = load ptr, ptr %l0, !tbaa !29
  %t236 = getelementptr %"compiler/load:Loader", ptr %t234, i32 0, i32 4
  %t237 = load ptr, ptr %t236, !tbaa !29
  store ptr %t237, ptr %l102, !tbaa !29
  %t238 = load { i64, [3 x i64] }, ptr %l4
  store { i64, [3 x i64] } %t238, ptr %l103
  %t239 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eImportLeavesRoot(ptr %s7, ptr %v0, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d170, i32 0, i32 1) })
  store %"compiler/diagmsg:Msg" %t239, ptr %l104
  br label %bb50
bb49:
  br label %bb52
bb50:
  %t240 = load ptr, ptr %l102, !tbaa !29
  %t241 = load { i64, [3 x i64] }, ptr %l103
  %t242 = load %"compiler/diagmsg:Msg", ptr %l104
  %t243 = call i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eError(ptr %v0, ptr %v0, ptr %t240, { i64, [3 x i64] } %t241, %"compiler/diagmsg:Msg" %t242)
  store i64 %t243, ptr %l105
  br label %bb51
bb51:
  call void @__olang_scope_close(ptr %s7)
  call void @__olang_scope_close(ptr %s3)
  call void @__olang_scope_close(ptr %s0)
  %t245 = insertvalue { i32, { { i64, ptr }, { i64, ptr } } } zeroinitializer, i32 65536, 0
  store { i32, { { i64, ptr }, { i64, ptr } } } %t245, ptr %rv
  br label %ret
bb52:
  call void @__olang_scope_close(ptr %s3)
  br label %bb220
bb53:
  %t246 = load i1, ptr %l110, !tbaa !21
  br i1 %t246, label %bb54, label %bb55
bb54:
  %t247 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t249 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v1, ptr %s8, { i64, ptr } %t247, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d171, i32 0, i32 1) })
  store i1 %t249, ptr %l113
  br label %bb56
bb55:
  store i1 false, ptr %l111, !tbaa !21
  br label %bb57
bb56:
  %t250 = load i1, ptr %l113, !tbaa !21
  %t251 = xor i1 %t250, true
  store i1 %t251, ptr %l111, !tbaa !21
  br label %bb57
bb57:
  %t253 = load i1, ptr %l111, !tbaa !21
  br i1 %t253, label %bb58, label %bb59
bb58:
  %t254 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t256 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v1, ptr %s8, { i64, ptr } %t254, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d172, i32 0, i32 1) })
  store i1 %t256, ptr %l117
  br label %bb60
bb59:
  store i1 false, ptr %l115, !tbaa !21
  br label %bb61
bb60:
  %t257 = load i1, ptr %l117, !tbaa !21
  %t258 = xor i1 %t257, true
  store i1 %t258, ptr %l115, !tbaa !21
  br label %bb61
bb61:
  %t260 = load i1, ptr %l115, !tbaa !21
  br i1 %t260, label %bb62, label %bb63
bb62:
  store %olang.scope zeroinitializer, ptr %s9
  %t261 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t263 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eSplit(ptr %v1, ptr %s9, ptr %s9, { i64, ptr } %t261, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d173, i32 0, i32 1) })
  store { i64, ptr } %t263, ptr %l120
  br label %bb64
bb63:
  store %olang.scope zeroinitializer, ptr %s23
  %t264 = load ptr, ptr %l3, !tbaa !29
  %t266 = getelementptr %"compiler/load:Module", ptr %t264, i32 0, i32 0
  %t267 = load { i64, ptr }, ptr %t266, !tbaa !27
  %t269 = call { i64, ptr } @compiler_2fload_2emoduleDir(ptr %v0, ptr %s23, { i64, ptr } %t267)
  store { i64, ptr } %t269, ptr %l260
  br label %bb139
bb64:
  %t270 = load { i64, ptr }, ptr %l120, !tbaa !27
  store { i64, ptr } %t270, ptr %l10, !tbaa !27
  %t271 = load { i64, ptr }, ptr %l10, !tbaa !27
  %t273 = extractvalue { i64, ptr } %t271, 0
  %t275 = icmp slt i64 %t273, 4
  br i1 %t275, label %bb65, label %bb66
bb65:
  %t277 = load ptr, ptr %l0, !tbaa !29
  %t279 = getelementptr %"compiler/load:Loader", ptr %t277, i32 0, i32 4
  %t280 = load ptr, ptr %t279, !tbaa !29
  store ptr %t280, ptr %l125, !tbaa !29
  %t281 = load { i64, [3 x i64] }, ptr %l4
  store { i64, [3 x i64] } %t281, ptr %l126
  %t282 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eImportRemoteNeedsFile(ptr %v0)
  store %"compiler/diagmsg:Msg" %t282, ptr %l127
  br label %bb67
bb66:
  br label %bb69
bb67:
  %t283 = load ptr, ptr %l125, !tbaa !29
  %t284 = load { i64, [3 x i64] }, ptr %l126
  %t285 = load %"compiler/diagmsg:Msg", ptr %l127
  %t286 = call i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eError(ptr %v0, ptr %v0, ptr %t283, { i64, [3 x i64] } %t284, %"compiler/diagmsg:Msg" %t285)
  store i64 %t286, ptr %l128
  br label %bb68
bb68:
  call void @__olang_scope_close(ptr %s9)
  call void @__olang_scope_close(ptr %s8)
  call void @__olang_scope_close(ptr %s0)
  %t288 = insertvalue { i32, { { i64, ptr }, { i64, ptr } } } zeroinitializer, i32 65536, 0
  store { i32, { { i64, ptr }, { i64, ptr } } } %t288, ptr %rv
  br label %ret
bb69:
  %t289 = load ptr, ptr %l0, !tbaa !29
  %t291 = getelementptr %"compiler/load:Loader", ptr %t289, i32 0, i32 2
  %t292 = load ptr, ptr %t291, !tbaa !29
  %t293 = load { i64, ptr }, ptr %l10, !tbaa !27
  store { i64, ptr } %t293, ptr %l133, !tbaa !27
  %t294 = getelementptr { i64, ptr }, ptr %l133, i32 0, i32 1
  %t295 = load ptr, ptr %t294, !tbaa !27
  %t296 = getelementptr { i64, ptr }, ptr %t295, i64 0
  %t297 = load { i64, ptr }, ptr %t296, !tbaa !37
  %t298 = load { i64, ptr }, ptr %l10, !tbaa !27
  store { i64, ptr } %t298, ptr %l135, !tbaa !27
  %t299 = getelementptr { i64, ptr }, ptr %l135, i32 0, i32 1
  %t300 = load ptr, ptr %t299, !tbaa !27
  %t301 = getelementptr { i64, ptr }, ptr %t300, i64 1
  %t302 = load { i64, ptr }, ptr %t301, !tbaa !37
  %t303 = load { i64, ptr }, ptr %l10, !tbaa !27
  store { i64, ptr } %t303, ptr %l137, !tbaa !27
  %t304 = getelementptr { i64, ptr }, ptr %l137, i32 0, i32 1
  %t305 = load ptr, ptr %t304, !tbaa !27
  %t306 = getelementptr { i64, ptr }, ptr %t305, i64 2
  %t307 = load { i64, ptr }, ptr %t306, !tbaa !37
  %t312 = call { i32, { i64, ptr } } @compiler_2ffetch_2ecompiler_2ffetch_3aFetcher_2eFetch(ptr %v0, ptr %s9, ptr %s9, ptr %s9, ptr %s9, ptr %t292, { i64, ptr } %t297, { i64, ptr } %t302, { i64, ptr } %t307)
  %t313 = extractvalue { i32, { i64, ptr } } %t312, 1
  %t314 = extractvalue { i32, { i64, ptr } } %t312, 0
  store i32 %t314, ptr %l140
  %t315 = icmp ne i32 %t314, 0
  br i1 %t315, label %bb71, label %ok.316, !prof !99
ok.316:
  store { i64, ptr } %t313, ptr %l139
  br label %bb70
bb70:
  %t317 = load { i64, ptr }, ptr %l139, !tbaa !27
  store { i64, ptr } %t317, ptr %l130, !tbaa !27
  br label %bb95
bb71:
  %t318 = load i32, ptr %l140, !tbaa !23
  %t319 = icmp eq i32 %t318, 65536
  br i1 %t319, label %bb72, label %bb73
bb72:
  br label %bb74
bb73:
  %t321 = load i32, ptr %l140, !tbaa !23
  %t322 = icmp eq i32 %t321, 65537
  br i1 %t322, label %bb75, label %bb76
bb74:
  %t324 = load ptr, ptr %l0, !tbaa !29
  %t326 = getelementptr %"compiler/load:Loader", ptr %t324, i32 0, i32 4
  %t327 = load ptr, ptr %t326, !tbaa !29
  store ptr %t327, ptr %l147, !tbaa !29
  %t328 = load { i64, [3 x i64] }, ptr %l4
  store { i64, [3 x i64] } %t328, ptr %l148
  %t329 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eImportRemoteBadName(ptr %v0)
  store %"compiler/diagmsg:Msg" %t329, ptr %l149
  br label %bb84
bb75:
  br label %bb77
bb76:
  %t330 = load i32, ptr %l140, !tbaa !23
  %t331 = icmp eq i32 %t330, 65538
  br i1 %t331, label %bb78, label %bb79
bb77:
  store %olang.scope zeroinitializer, ptr %s12
  %t333 = load ptr, ptr %l0, !tbaa !29
  %t335 = getelementptr %"compiler/load:Loader", ptr %t333, i32 0, i32 4
  %t336 = load ptr, ptr %t335, !tbaa !29
  store ptr %t336, ptr %l154, !tbaa !29
  %t337 = load { i64, [3 x i64] }, ptr %l4
  store { i64, [3 x i64] } %t337, ptr %l155
  %t338 = load { i64, ptr }, ptr %l10, !tbaa !27
  %t340 = call { i64, ptr } @compiler_2fload_2ekey(ptr %s9, ptr %s12, { i64, ptr } %t338)
  store { i64, ptr } %t340, ptr %l157
  br label %bb86
bb78:
  br label %bb80
bb79:
  %t341 = load i32, ptr %l140, !tbaa !23
  %t342 = icmp eq i32 %t341, 65539
  br i1 %t342, label %bb81, label %bb82
bb80:
  store %olang.scope zeroinitializer, ptr %s13
  %t344 = load ptr, ptr %l0, !tbaa !29
  %t346 = getelementptr %"compiler/load:Loader", ptr %t344, i32 0, i32 4
  %t347 = load ptr, ptr %t346, !tbaa !29
  store ptr %t347, ptr %l164, !tbaa !29
  %t348 = load { i64, [3 x i64] }, ptr %l4
  store { i64, [3 x i64] } %t348, ptr %l165
  %t349 = load { i64, ptr }, ptr %l10, !tbaa !27
  %t351 = call { i64, ptr } @compiler_2fload_2ekey(ptr %s9, ptr %s13, { i64, ptr } %t349)
  store { i64, ptr } %t351, ptr %l167
  br label %bb89
bb81:
  br label %bb83
bb82:
  %t352 = load i32, ptr %l140, !tbaa !23
  %t353 = lshr i32 %t352, 16
  %t354 = and i32 %t352, 65535
  %t355 = icmp eq i32 %t353, 1
  %t356 = select i1 %t355, i32 0, i32 0
  %t357 = icmp eq i32 %t352, 0
  %t358 = shl i32 %t356, 16
  %t359 = or i32 %t358, %t354
  %t360 = select i1 %t357, i32 0, i32 %t359
  call void @__olang_scope_close(ptr %s9)
  call void @__olang_scope_close(ptr %s8)
  call void @__olang_scope_close(ptr %s0)
  %t362 = insertvalue { i32, { { i64, ptr }, { i64, ptr } } } zeroinitializer, i32 %t360, 0
  store { i32, { { i64, ptr }, { i64, ptr } } } %t362, ptr %rv
  br label %ret
bb83:
  store %olang.scope zeroinitializer, ptr %s14
  %t363 = load ptr, ptr %l0, !tbaa !29
  %t365 = getelementptr %"compiler/load:Loader", ptr %t363, i32 0, i32 4
  %t366 = load ptr, ptr %t365, !tbaa !29
  store ptr %t366, ptr %l174, !tbaa !29
  %t367 = load { i64, [3 x i64] }, ptr %l4
  store { i64, [3 x i64] } %t367, ptr %l175
  %t368 = load { i64, ptr }, ptr %l10, !tbaa !27
  %t370 = call { i64, ptr } @compiler_2fload_2ekey(ptr %s9, ptr %s14, { i64, ptr } %t368)
  store { i64, ptr } %t370, ptr %l177
  br label %bb92
bb84:
  %t371 = load ptr, ptr %l147, !tbaa !29
  %t372 = load { i64, [3 x i64] }, ptr %l148
  %t373 = load %"compiler/diagmsg:Msg", ptr %l149
  %t374 = call i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eError(ptr %v0, ptr %v0, ptr %t371, { i64, [3 x i64] } %t372, %"compiler/diagmsg:Msg" %t373)
  store i64 %t374, ptr %l150
  br label %bb85
bb85:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d174, i32 0, i32 1) }, ptr %l151, !tbaa !27
  %t375 = load { i64, ptr }, ptr %l151, !tbaa !27
  store { i64, ptr } %t375, ptr %l130, !tbaa !27
  br label %bb95
bb86:
  %t377 = load { i64, ptr }, ptr %l157, !tbaa !27
  %t378 = extractvalue { i64, ptr } %t377, 0
  %t379 = extractvalue { i64, ptr } %t377, 1
  %t380 = mul i64 %t378, 1
  %t381 = call ptr @__olang_scope_alloc(ptr %s12, i64 %t380)
  call void @llvm.memcpy.p0.p0.i64(ptr %t381, ptr %t379, i64 %t380, i1 false)
  %t382 = insertvalue { i64, ptr } undef, i64 %t378, 0
  %t383 = insertvalue { i64, ptr } %t382, ptr %t381, 1
  %t385 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eImportLockNotACommit(ptr %s12, ptr %v0, { i64, ptr } %t383)
  store %"compiler/diagmsg:Msg" %t385, ptr %l159
  br label %bb87
bb87:
  %t386 = load ptr, ptr %l154, !tbaa !29
  %t387 = load { i64, [3 x i64] }, ptr %l155
  %t388 = load %"compiler/diagmsg:Msg", ptr %l159
  %t389 = call i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eError(ptr %v0, ptr %v0, ptr %t386, { i64, [3 x i64] } %t387, %"compiler/diagmsg:Msg" %t388)
  store i64 %t389, ptr %l160
  br label %bb88
bb88:
  call void @__olang_scope_close(ptr %s12)
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d175, i32 0, i32 1) }, ptr %l161, !tbaa !27
  %t390 = load { i64, ptr }, ptr %l161, !tbaa !27
  store { i64, ptr } %t390, ptr %l130, !tbaa !27
  br label %bb95
bb89:
  %t392 = load { i64, ptr }, ptr %l167, !tbaa !27
  %t393 = extractvalue { i64, ptr } %t392, 0
  %t394 = extractvalue { i64, ptr } %t392, 1
  %t395 = mul i64 %t393, 1
  %t396 = call ptr @__olang_scope_alloc(ptr %s13, i64 %t395)
  call void @llvm.memcpy.p0.p0.i64(ptr %t396, ptr %t394, i64 %t395, i1 false)
  %t397 = insertvalue { i64, ptr } undef, i64 %t393, 0
  %t398 = insertvalue { i64, ptr } %t397, ptr %t396, 1
  %t400 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eImportFetchFailed(ptr %s13, ptr %v0, { i64, ptr } %t398)
  store %"compiler/diagmsg:Msg" %t400, ptr %l169
  br label %bb90
bb90:
  %t401 = load ptr, ptr %l164, !tbaa !29
  %t402 = load { i64, [3 x i64] }, ptr %l165
  %t403 = load %"compiler/diagmsg:Msg", ptr %l169
  %t404 = call i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eError(ptr %v0, ptr %v0, ptr %t401, { i64, [3 x i64] } %t402, %"compiler/diagmsg:Msg" %t403)
  store i64 %t404, ptr %l170
  br label %bb91
bb91:
  call void @__olang_scope_close(ptr %s13)
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d176, i32 0, i32 1) }, ptr %l171, !tbaa !27
  %t405 = load { i64, ptr }, ptr %l171, !tbaa !27
  store { i64, ptr } %t405, ptr %l130, !tbaa !27
  br label %bb95
bb92:
  %t407 = load { i64, ptr }, ptr %l177, !tbaa !27
  %t408 = extractvalue { i64, ptr } %t407, 0
  %t409 = extractvalue { i64, ptr } %t407, 1
  %t410 = mul i64 %t408, 1
  %t411 = call ptr @__olang_scope_alloc(ptr %s14, i64 %t410)
  call void @llvm.memcpy.p0.p0.i64(ptr %t411, ptr %t409, i64 %t410, i1 false)
  %t412 = insertvalue { i64, ptr } undef, i64 %t408, 0
  %t413 = insertvalue { i64, ptr } %t412, ptr %t411, 1
  %t415 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eImportLockedFetchFailed(ptr %s14, ptr %v0, { i64, ptr } %t413)
  store %"compiler/diagmsg:Msg" %t415, ptr %l179
  br label %bb93
bb93:
  %t416 = load ptr, ptr %l174, !tbaa !29
  %t417 = load { i64, [3 x i64] }, ptr %l175
  %t418 = load %"compiler/diagmsg:Msg", ptr %l179
  %t419 = call i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eError(ptr %v0, ptr %v0, ptr %t416, { i64, [3 x i64] } %t417, %"compiler/diagmsg:Msg" %t418)
  store i64 %t419, ptr %l180
  br label %bb94
bb94:
  call void @__olang_scope_close(ptr %s14)
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d177, i32 0, i32 1) }, ptr %l181, !tbaa !27
  %t420 = load { i64, ptr }, ptr %l181, !tbaa !27
  store { i64, ptr } %t420, ptr %l130, !tbaa !27
  br label %bb95
bb95:
  %t422 = load { i64, ptr }, ptr %l130, !tbaa !27
  %t423 = extractvalue { i64, ptr } %t422, 0
  store i64 %t423, ptr %l183, !tbaa !24
  %t424 = load i64, ptr %l183, !tbaa !24
  %t425 = mul i64 %t424, 1
  %t426 = call ptr @__olang_scope_alloc(ptr %s9, i64 %t425)
  %t427 = insertvalue { i64, ptr } undef, i64 %t424, 0
  %t428 = insertvalue { i64, ptr } %t427, ptr %t426, 1
  store { i64, ptr } %t428, ptr %l184, !tbaa !27
  %t429 = getelementptr { i64, ptr }, ptr %l184, i32 0, i32 1
  %t430 = load ptr, ptr %t429, !tbaa !27
  %t431 = getelementptr { i64, ptr }, ptr %l130, i32 0, i32 1
  %t432 = load ptr, ptr %t431, !tbaa !27
  %t433 = load i64, ptr %l183, !tbaa !24
  %t434 = mul i64 %t433, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t430, ptr %t432, i64 %t434, i1 false)
  %t435 = load { i64, ptr }, ptr %l184, !tbaa !27
  store { i64, ptr } %t435, ptr %l11, !tbaa !27
  %t436 = load { i64, ptr }, ptr %l11, !tbaa !27
  %t438 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s9, ptr %s9, { i64, ptr } %t436, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d178, i32 0, i32 1) })
  store i1 %t438, ptr %l186
  br label %bb96
bb96:
  %t439 = load i1, ptr %l186, !tbaa !21
  br i1 %t439, label %bb97, label %bb98
bb97:
  call void @__olang_scope_close(ptr %s9)
  call void @__olang_scope_close(ptr %s8)
  call void @__olang_scope_close(ptr %s0)
  %t441 = insertvalue { i32, { { i64, ptr }, { i64, ptr } } } zeroinitializer, i32 65536, 0
  store { i32, { { i64, ptr }, { i64, ptr } } } %t441, ptr %rv
  br label %ret
bb98:
  br label %bb99
bb99:
  %t442 = call %"std/prelude/text:StringBuilder" @std_2fprelude_2ftext_3aStringBuilder_2ector(ptr %s9)
  store %"std/prelude/text:StringBuilder" %t442, ptr %l188
  br label %bb100
bb100:
  %t443 = load %"std/prelude/text:StringBuilder", ptr %l188
  store %"std/prelude/text:StringBuilder" %t443, ptr %l12
  %t444 = load { i64, ptr }, ptr %l11, !tbaa !27
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s9, ptr %s9, ptr %l12, { i64, ptr } %t444)
  br label %bb101
bb101:
  store i64 3, ptr %l13, !tbaa !24
  %t447 = load { i64, ptr }, ptr %l10, !tbaa !27
  %t449 = extractvalue { i64, ptr } %t447, 0
  store i64 %t449, ptr %l14, !tbaa !24
  store i64 1, ptr %l15, !tbaa !24
  %t451 = load i64, ptr %l14, !tbaa !24
  %t452 = load i64, ptr %l13, !tbaa !24
  %t455 = icmp sgt i64 %t451, %t452
  br i1 %t455, label %bb102, label %bb103
bb102:
  %t457 = load i64, ptr %l15, !tbaa !24
  %t459 = icmp sgt i64 %t457, 0
  br i1 %t459, label %bb104, label %bb105
bb103:
  store i64 0, ptr %l196, !tbaa !24
  br label %bb107
bb104:
  %t461 = load i64, ptr %l14, !tbaa !24
  %t462 = load i64, ptr %l13, !tbaa !24
  %t465 = sub i64 %t461, %t462
  %t466 = load i64, ptr %l15, !tbaa !24
  %t469 = add i64 %t465, %t466
  %t471 = sub i64 %t469, 1
  %t472 = load i64, ptr %l15, !tbaa !24
  %t475 = sdiv i64 %t471, %t472
  store i64 %t475, ptr %l199, !tbaa !24
  br label %bb106
bb105:
  store i64 0, ptr %l199, !tbaa !24
  br label %bb106
bb106:
  %t477 = load i64, ptr %l199, !tbaa !24
  store i64 %t477, ptr %l196, !tbaa !24
  br label %bb107
bb107:
  %t478 = load i64, ptr %l196, !tbaa !24
  store i64 %t478, ptr %l16, !tbaa !24
  store i64 0, ptr %l17, !tbaa !24
  br label %bb108
bb108:
  %t479 = load i64, ptr %l17, !tbaa !24
  %t480 = load i64, ptr %l16, !tbaa !24
  %t483 = icmp slt i64 %t479, %t480
  %t485 = xor i1 %t483, true
  br i1 %t485, label %bb109, label %bb110
bb109:
  br label %bb115
bb110:
  br label %bb111
bb111:
  %t487 = load i64, ptr %l13, !tbaa !24
  %t488 = load i64, ptr %l17, !tbaa !24
  %t489 = load i64, ptr %l15, !tbaa !24
  %t492 = mul i64 %t488, %t489
  %t495 = add i64 %t487, %t492
  store i64 %t495, ptr %l18, !tbaa !24
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePushChar(ptr %s9, ptr %l12, i8 47)
  br label %bb112
bb112:
  %t498 = load { i64, ptr }, ptr %l10, !tbaa !27
  store { i64, ptr } %t498, ptr %l219, !tbaa !27
  %t499 = load i64, ptr %l18, !tbaa !24
  %t501 = getelementptr { i64, ptr }, ptr %l219, i32 0, i32 1
  %t502 = load ptr, ptr %t501, !tbaa !27
  %t503 = getelementptr { i64, ptr }, ptr %t502, i64 %t499
  %t504 = load { i64, ptr }, ptr %t503, !tbaa !37
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s9, ptr %s9, ptr %l12, { i64, ptr } %t504)
  br label %bb113
bb113:
  br label %bb114
bb114:
  %t507 = load i64, ptr %l17, !tbaa !24
  %t509 = add i64 %t507, 1
  store i64 %t509, ptr %l17, !tbaa !24
  br label %bb108
bb115:
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s9, ptr %s9, ptr %l12, { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d179, i32 0, i32 1) })
  br label %bb116
bb116:
  %t512 = ptrtoint ptr %v2 to i64
  store i64 %t512, ptr %l225, !tbaa !24
  %t513 = load i1, ptr @olang_2esole_2ecompiler__2fload__2ecompiler__2fload__3aLoader__2eresolve_2elocal_2e8
  br i1 %t513, label %bb117, label %bb118
bb117:
  %t515 = call ptr @__olang_region_make(ptr %v2)
  %t516 = ptrtoint ptr %t515 to i64
  store i64 %t516, ptr %l225, !tbaa !24
  br label %bb118
bb118:
  %t518 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %s9, ptr %s9, ptr %l12)
  store { i64, ptr } %t518, ptr %l228
  br label %bb119
bb119:
  %t519 = load { i64, ptr }, ptr %l228, !tbaa !27
  %t520 = extractvalue { i64, ptr } %t519, 0
  %t521 = extractvalue { i64, ptr } %t519, 1
  %t522 = mul i64 %t520, 1
  %t523 = call ptr @__olang_scope_alloc(ptr %s9, i64 %t522)
  call void @llvm.memcpy.p0.p0.i64(ptr %t523, ptr %t521, i64 %t522, i1 false)
  %t524 = insertvalue { i64, ptr } undef, i64 %t520, 0
  %t525 = insertvalue { i64, ptr } %t524, ptr %t523, 1
  %t527 = call { i64, ptr } @compiler_2fload_2eNormalize(ptr %s9, ptr %s9, { i64, ptr } %t525)
  store { i64, ptr } %t527, ptr %l230
  br label %bb120
bb120:
  %t528 = load { i64, ptr }, ptr %l230, !tbaa !27
  %t529 = extractvalue { i64, ptr } %t528, 1
  %t530 = extractvalue { i64, ptr } %t528, 0
  %t531 = load i64, ptr %l225
  %t532 = inttoptr i64 %t531 to ptr
  %t533 = call ptr @__olang_scope_alloc(ptr %t532, i64 %t530)
  call void @olang_textcopy(ptr %t533, ptr %t529, i64 %t530)
  %t534 = insertvalue { i64, ptr } undef, i64 %t530, 0
  %t535 = insertvalue { i64, ptr } %t534, ptr %t533, 1
  store { i64, ptr } %t535, ptr %l231, !tbaa !27
  %t536 = load i1, ptr @olang_2esole_2ecompiler__2fload__2ecompiler__2fload__3aLoader__2eresolve_2elocal_2e8
  br i1 %t536, label %bb121, label %bb122
bb121:
  %t538 = load i64, ptr %l225
  %t539 = inttoptr i64 %t538 to ptr
  %t540 = load { i64, ptr }, ptr %l231
  %t541 = extractvalue { i64, ptr } %t540, 1
  %t542 = call ptr @__olang_region_or(ptr %t541, ptr null)
  %t543 = icmp ne ptr %t542, null
  %t544 = select i1 %t543, ptr %t542, ptr null
  %t545 = icmp eq ptr %t544, %t539
  call void @__olang_region_settle(ptr %t539, i1 %t545)
  br label %bb122
bb122:
  %t546 = load ptr, ptr %lp8
  %t547 = load { i64, ptr }, ptr %t546, !tbaa !27
  store { i64, ptr } %t547, ptr %l233, !tbaa !27
  %t548 = load { i64, ptr }, ptr %l231, !tbaa !27
  %t549 = load ptr, ptr %lp8
  store { i64, ptr } %t548, ptr %t549, !tbaa !27
  %t550 = load i1, ptr @olang_2esole_2ecompiler__2fload__2ecompiler__2fload__3aLoader__2eresolve_2elocal_2e8
  br i1 %t550, label %bb123, label %bb124
bb123:
  %t552 = load { i64, ptr }, ptr %l233
  %t553 = extractvalue { i64, ptr } %t552, 1
  call void @__olang_region_release(ptr %t553)
  store { i64, ptr } zeroinitializer, ptr %l233
  br label %bb124
bb124:
  %t554 = ptrtoint ptr %v2 to i64
  store i64 %t554, ptr %l235, !tbaa !24
  %t555 = load i1, ptr @olang_2esole_2ecompiler__2fload__2ecompiler__2fload__3aLoader__2eresolve_2elocal_2e9
  br i1 %t555, label %bb125, label %bb126
bb125:
  %t557 = call ptr @__olang_region_make(ptr %v2)
  %t558 = ptrtoint ptr %t557 to i64
  store i64 %t558, ptr %l235, !tbaa !24
  br label %bb126
bb126:
  %t559 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t561 = call { i64, ptr } @compiler_2fload_2eNormalize(ptr %v1, ptr %s9, { i64, ptr } %t559)
  store { i64, ptr } %t561, ptr %l238
  br label %bb127
bb127:
  %t562 = load { i64, ptr }, ptr %l238, !tbaa !27
  %t563 = extractvalue { i64, ptr } %t562, 1
  %t564 = extractvalue { i64, ptr } %t562, 0
  %t565 = load i64, ptr %l235
  %t566 = inttoptr i64 %t565 to ptr
  %t567 = call ptr @__olang_scope_alloc(ptr %t566, i64 %t564)
  call void @olang_textcopy(ptr %t567, ptr %t563, i64 %t564)
  %t568 = insertvalue { i64, ptr } undef, i64 %t564, 0
  %t569 = insertvalue { i64, ptr } %t568, ptr %t567, 1
  store { i64, ptr } %t569, ptr %l239, !tbaa !27
  %t570 = load i1, ptr @olang_2esole_2ecompiler__2fload__2ecompiler__2fload__3aLoader__2eresolve_2elocal_2e9
  br i1 %t570, label %bb128, label %bb129
bb128:
  %t572 = load i64, ptr %l235
  %t573 = inttoptr i64 %t572 to ptr
  %t574 = load { i64, ptr }, ptr %l239
  %t575 = extractvalue { i64, ptr } %t574, 1
  %t576 = call ptr @__olang_region_or(ptr %t575, ptr null)
  %t577 = icmp ne ptr %t576, null
  %t578 = select i1 %t577, ptr %t576, ptr null
  %t579 = icmp eq ptr %t578, %t573
  call void @__olang_region_settle(ptr %t573, i1 %t579)
  br label %bb129
bb129:
  %t580 = load ptr, ptr %lp9
  %t581 = load { i64, ptr }, ptr %t580, !tbaa !27
  store { i64, ptr } %t581, ptr %l241, !tbaa !27
  %t582 = load { i64, ptr }, ptr %l239, !tbaa !27
  %t583 = load ptr, ptr %lp9
  store { i64, ptr } %t582, ptr %t583, !tbaa !27
  %t584 = load i1, ptr @olang_2esole_2ecompiler__2fload__2ecompiler__2fload__3aLoader__2eresolve_2elocal_2e9
  br i1 %t584, label %bb130, label %bb131
bb130:
  %t586 = load { i64, ptr }, ptr %l241
  %t587 = extractvalue { i64, ptr } %t586, 1
  call void @__olang_region_release(ptr %t587)
  store { i64, ptr } zeroinitializer, ptr %l241
  br label %bb131
bb131:
  %t588 = load { i64, ptr }, ptr %l10, !tbaa !27
  %t590 = call { i64, ptr } @compiler_2fload_2ekey(ptr %s9, ptr %s9, { i64, ptr } %t588)
  store { i64, ptr } %t590, ptr %l244
  br label %bb132
bb132:
  %t591 = load { i64, ptr }, ptr %l244, !tbaa !27
  store { i64, ptr } %t591, ptr %l19, !tbaa !27
  %t592 = load ptr, ptr %lp9
  %t593 = load { i64, ptr }, ptr %t592, !tbaa !27
  %t594 = load { i64, ptr }, ptr %l19, !tbaa !27
  %t596 = extractvalue { i64, ptr } %t594, 1
  %t597 = extractvalue { i64, ptr } %t594, 0
  %t598 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d180, i32 0, i32 1) }, 1
  %t599 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d180, i32 0, i32 1) }, 0
  %t600 = add i64 %t597, %t599
  %t601 = call ptr @__olang_scope_alloc(ptr %s9, i64 %t600)
  call void @olang_textcopy(ptr %t601, ptr %t596, i64 %t597)
  %t602 = getelementptr i8, ptr %t601, i64 %t597
  call void @olang_textcopy(ptr %t602, ptr %t598, i64 %t599)
  %t603 = insertvalue { i64, ptr } undef, i64 %t600, 0
  %t604 = insertvalue { i64, ptr } %t603, ptr %t601, 1
  %t606 = extractvalue { i64, ptr } %t604, 0
  %t607 = extractvalue { i64, ptr } %t604, 1
  %t608 = mul i64 %t606, 1
  %t609 = call ptr @__olang_scope_alloc(ptr %s9, i64 %t608)
  call void @llvm.memcpy.p0.p0.i64(ptr %t609, ptr %t607, i64 %t608, i1 false)
  %t610 = insertvalue { i64, ptr } undef, i64 %t606, 0
  %t611 = insertvalue { i64, ptr } %t610, ptr %t609, 1
  %t614 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %v2, ptr %s9, { i64, ptr } %t593, { i64, ptr } %t611)
  store i1 %t614, ptr %l249
  br label %bb133
bb133:
  %t615 = load i1, ptr %l249, !tbaa !21
  %t616 = xor i1 %t615, true
  br i1 %t616, label %bb134, label %bb135
bb134:
  %t618 = load ptr, ptr %l0, !tbaa !29
  %t620 = getelementptr %"compiler/load:Loader", ptr %t618, i32 0, i32 4
  %t621 = load ptr, ptr %t620, !tbaa !29
  store ptr %t621, ptr %l252, !tbaa !29
  %t622 = load { i64, [3 x i64] }, ptr %l4
  store { i64, [3 x i64] } %t622, ptr %l253
  %t623 = load { i64, ptr }, ptr %l19, !tbaa !27
  %t625 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eImportLeavesRoot(ptr %s9, ptr %v0, { i64, ptr } %t623)
  store %"compiler/diagmsg:Msg" %t625, ptr %l255
  br label %bb136
bb135:
  br label %bb138
bb136:
  %t626 = load ptr, ptr %l252, !tbaa !29
  %t627 = load { i64, [3 x i64] }, ptr %l253
  %t628 = load %"compiler/diagmsg:Msg", ptr %l255
  %t629 = call i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eError(ptr %v0, ptr %v0, ptr %t626, { i64, [3 x i64] } %t627, %"compiler/diagmsg:Msg" %t628)
  store i64 %t629, ptr %l256
  br label %bb137
bb137:
  call void @__olang_scope_close(ptr %s9)
  call void @__olang_scope_close(ptr %s8)
  call void @__olang_scope_close(ptr %s0)
  %t631 = insertvalue { i32, { { i64, ptr }, { i64, ptr } } } zeroinitializer, i32 65536, 0
  store { i32, { { i64, ptr }, { i64, ptr } } } %t631, ptr %rv
  br label %ret
bb138:
  call void @__olang_scope_close(ptr %s9)
  br label %bb219
bb139:
  %t632 = load { i64, ptr }, ptr %l260, !tbaa !27
  store { i64, ptr } %t632, ptr %l20, !tbaa !27
  %t633 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t635 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %v1, ptr %s23, { i64, ptr } %t633, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d181, i32 0, i32 1) })
  store i1 %t635, ptr %l262
  br label %bb140
bb140:
  %t636 = load i1, ptr %l262, !tbaa !21
  br i1 %t636, label %bb141, label %bb142
bb141:
  store i1 true, ptr %l263, !tbaa !21
  br label %bb144
bb142:
  %t637 = load { i64, ptr }, ptr %l20, !tbaa !27
  %t639 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s23, ptr %s23, { i64, ptr } %t637, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d182, i32 0, i32 1) })
  store i1 %t639, ptr %l265
  br label %bb143
bb143:
  %t640 = load i1, ptr %l265, !tbaa !21
  store i1 %t640, ptr %l263, !tbaa !21
  br label %bb144
bb144:
  %t641 = load i1, ptr %l263, !tbaa !21
  br i1 %t641, label %bb145, label %bb146
bb145:
  store %olang.scope zeroinitializer, ptr %s24
  %t642 = ptrtoint ptr %v2 to i64
  store i64 %t642, ptr %l266, !tbaa !24
  %t643 = load i1, ptr @olang_2esole_2ecompiler__2fload__2ecompiler__2fload__3aLoader__2eresolve_2elocal_2e8
  br i1 %t643, label %bb147, label %bb148
bb146:
  store %olang.scope zeroinitializer, ptr %s27
  %t645 = ptrtoint ptr %v2 to i64
  store i64 %t645, ptr %l276, !tbaa !24
  %t646 = load i1, ptr @olang_2esole_2ecompiler__2fload__2ecompiler__2fload__3aLoader__2eresolve_2elocal_2e8
  br i1 %t646, label %bb154, label %bb155
bb147:
  %t648 = call ptr @__olang_region_make(ptr %v2)
  %t649 = ptrtoint ptr %t648 to i64
  store i64 %t649, ptr %l266, !tbaa !24
  br label %bb148
bb148:
  %t650 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t652 = extractvalue { i64, ptr } %t650, 1
  %t653 = extractvalue { i64, ptr } %t650, 0
  %t654 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d183, i32 0, i32 1) }, 1
  %t655 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d183, i32 0, i32 1) }, 0
  %t656 = add i64 %t653, %t655
  %t657 = call ptr @__olang_scope_alloc(ptr %s24, i64 %t656)
  call void @olang_textcopy(ptr %t657, ptr %t652, i64 %t653)
  %t658 = getelementptr i8, ptr %t657, i64 %t653
  call void @olang_textcopy(ptr %t658, ptr %t654, i64 %t655)
  %t659 = insertvalue { i64, ptr } undef, i64 %t656, 0
  %t660 = insertvalue { i64, ptr } %t659, ptr %t657, 1
  %t662 = extractvalue { i64, ptr } %t660, 0
  %t663 = extractvalue { i64, ptr } %t660, 1
  %t664 = mul i64 %t662, 1
  %t665 = call ptr @__olang_scope_alloc(ptr %s24, i64 %t664)
  call void @llvm.memcpy.p0.p0.i64(ptr %t665, ptr %t663, i64 %t664, i1 false)
  %t666 = insertvalue { i64, ptr } undef, i64 %t662, 0
  %t667 = insertvalue { i64, ptr } %t666, ptr %t665, 1
  %t669 = call { i64, ptr } @compiler_2fload_2eNormalize(ptr %s24, ptr %s24, { i64, ptr } %t667)
  store { i64, ptr } %t669, ptr %l271
  br label %bb149
bb149:
  %t670 = load { i64, ptr }, ptr %l271, !tbaa !27
  %t671 = extractvalue { i64, ptr } %t670, 1
  %t672 = extractvalue { i64, ptr } %t670, 0
  %t673 = load i64, ptr %l266
  %t674 = inttoptr i64 %t673 to ptr
  %t675 = call ptr @__olang_scope_alloc(ptr %t674, i64 %t672)
  call void @olang_textcopy(ptr %t675, ptr %t671, i64 %t672)
  %t676 = insertvalue { i64, ptr } undef, i64 %t672, 0
  %t677 = insertvalue { i64, ptr } %t676, ptr %t675, 1
  store { i64, ptr } %t677, ptr %l272, !tbaa !27
  %t678 = load i1, ptr @olang_2esole_2ecompiler__2fload__2ecompiler__2fload__3aLoader__2eresolve_2elocal_2e8
  br i1 %t678, label %bb150, label %bb151
bb150:
  %t680 = load i64, ptr %l266
  %t681 = inttoptr i64 %t680 to ptr
  %t682 = load { i64, ptr }, ptr %l272
  %t683 = extractvalue { i64, ptr } %t682, 1
  %t684 = call ptr @__olang_region_or(ptr %t683, ptr null)
  %t685 = icmp ne ptr %t684, null
  %t686 = select i1 %t685, ptr %t684, ptr null
  %t687 = icmp eq ptr %t686, %t681
  call void @__olang_region_settle(ptr %t681, i1 %t687)
  br label %bb151
bb151:
  %t688 = load ptr, ptr %lp8
  %t689 = load { i64, ptr }, ptr %t688, !tbaa !27
  store { i64, ptr } %t689, ptr %l274, !tbaa !27
  %t690 = load { i64, ptr }, ptr %l272, !tbaa !27
  %t691 = load ptr, ptr %lp8
  store { i64, ptr } %t690, ptr %t691, !tbaa !27
  %t692 = load i1, ptr @olang_2esole_2ecompiler__2fload__2ecompiler__2fload__3aLoader__2eresolve_2elocal_2e8
  br i1 %t692, label %bb152, label %bb153
bb152:
  %t694 = load { i64, ptr }, ptr %l274
  %t695 = extractvalue { i64, ptr } %t694, 1
  call void @__olang_region_release(ptr %t695)
  store { i64, ptr } zeroinitializer, ptr %l274
  br label %bb153
bb153:
  call void @__olang_scope_close(ptr %s24)
  br label %bb161
bb154:
  %t696 = call ptr @__olang_region_make(ptr %v2)
  %t697 = ptrtoint ptr %t696 to i64
  store i64 %t697, ptr %l276, !tbaa !24
  br label %bb155
bb155:
  %t698 = load { i64, ptr }, ptr %l20, !tbaa !27
  %t699 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t701 = extractvalue { i64, ptr } %t698, 1
  %t702 = extractvalue { i64, ptr } %t698, 0
  %t703 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d184, i32 0, i32 1) }, 1
  %t704 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d184, i32 0, i32 1) }, 0
  %t705 = add i64 %t702, %t704
  %t707 = extractvalue { i64, ptr } %t699, 1
  %t708 = extractvalue { i64, ptr } %t699, 0
  %t709 = add i64 %t705, %t708
  %t710 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d185, i32 0, i32 1) }, 1
  %t711 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d185, i32 0, i32 1) }, 0
  %t712 = add i64 %t709, %t711
  %t713 = call ptr @__olang_scope_alloc(ptr %s27, i64 %t712)
  call void @olang_textcopy(ptr %t713, ptr %t701, i64 %t702)
  %t714 = getelementptr i8, ptr %t713, i64 %t702
  call void @olang_textcopy(ptr %t714, ptr %t703, i64 %t704)
  %t715 = getelementptr i8, ptr %t714, i64 %t704
  call void @olang_textcopy(ptr %t715, ptr %t707, i64 %t708)
  %t716 = getelementptr i8, ptr %t715, i64 %t708
  call void @olang_textcopy(ptr %t716, ptr %t710, i64 %t711)
  %t717 = insertvalue { i64, ptr } undef, i64 %t712, 0
  %t718 = insertvalue { i64, ptr } %t717, ptr %t713, 1
  %t720 = extractvalue { i64, ptr } %t718, 0
  %t721 = extractvalue { i64, ptr } %t718, 1
  %t722 = mul i64 %t720, 1
  %t723 = call ptr @__olang_scope_alloc(ptr %s27, i64 %t722)
  call void @llvm.memcpy.p0.p0.i64(ptr %t723, ptr %t721, i64 %t722, i1 false)
  %t724 = insertvalue { i64, ptr } undef, i64 %t720, 0
  %t725 = insertvalue { i64, ptr } %t724, ptr %t723, 1
  %t727 = call { i64, ptr } @compiler_2fload_2eNormalize(ptr %s27, ptr %s27, { i64, ptr } %t725)
  store { i64, ptr } %t727, ptr %l282
  br label %bb156
bb156:
  %t728 = load { i64, ptr }, ptr %l282, !tbaa !27
  %t729 = extractvalue { i64, ptr } %t728, 1
  %t730 = extractvalue { i64, ptr } %t728, 0
  %t731 = load i64, ptr %l276
  %t732 = inttoptr i64 %t731 to ptr
  %t733 = call ptr @__olang_scope_alloc(ptr %t732, i64 %t730)
  call void @olang_textcopy(ptr %t733, ptr %t729, i64 %t730)
  %t734 = insertvalue { i64, ptr } undef, i64 %t730, 0
  %t735 = insertvalue { i64, ptr } %t734, ptr %t733, 1
  store { i64, ptr } %t735, ptr %l283, !tbaa !27
  %t736 = load i1, ptr @olang_2esole_2ecompiler__2fload__2ecompiler__2fload__3aLoader__2eresolve_2elocal_2e8
  br i1 %t736, label %bb157, label %bb158
bb157:
  %t738 = load i64, ptr %l276
  %t739 = inttoptr i64 %t738 to ptr
  %t740 = load { i64, ptr }, ptr %l283
  %t741 = extractvalue { i64, ptr } %t740, 1
  %t742 = call ptr @__olang_region_or(ptr %t741, ptr null)
  %t743 = icmp ne ptr %t742, null
  %t744 = select i1 %t743, ptr %t742, ptr null
  %t745 = icmp eq ptr %t744, %t739
  call void @__olang_region_settle(ptr %t739, i1 %t745)
  br label %bb158
bb158:
  %t746 = load ptr, ptr %lp8
  %t747 = load { i64, ptr }, ptr %t746, !tbaa !27
  store { i64, ptr } %t747, ptr %l285, !tbaa !27
  %t748 = load { i64, ptr }, ptr %l283, !tbaa !27
  %t749 = load ptr, ptr %lp8
  store { i64, ptr } %t748, ptr %t749, !tbaa !27
  %t750 = load i1, ptr @olang_2esole_2ecompiler__2fload__2ecompiler__2fload__3aLoader__2eresolve_2elocal_2e8
  br i1 %t750, label %bb159, label %bb160
bb159:
  %t752 = load { i64, ptr }, ptr %l285
  %t753 = extractvalue { i64, ptr } %t752, 1
  call void @__olang_region_release(ptr %t753)
  store { i64, ptr } zeroinitializer, ptr %l285
  br label %bb160
bb160:
  call void @__olang_scope_close(ptr %s27)
  br label %bb161
bb161:
  %t754 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t756 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %v1, ptr %s23, { i64, ptr } %t754, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d186, i32 0, i32 1) })
  store i1 %t756, ptr %l288
  br label %bb162
bb162:
  %t757 = load i1, ptr %l288, !tbaa !21
  br i1 %t757, label %bb163, label %bb164
bb163:
  %t758 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t760 = call { i64, ptr } @std_2ffilepath_2eBase(ptr %v1, ptr %s23, { i64, ptr } %t758)
  store { i64, ptr } %t760, ptr %l291
  br label %bb165
bb164:
  %t761 = load ptr, ptr %l3, !tbaa !29
  %t763 = getelementptr %"compiler/load:Module", ptr %t761, i32 0, i32 2
  %t764 = load { i64, ptr }, ptr %t763, !tbaa !27
  %t765 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t768 = call { i64, ptr } @compiler_2fload_2erelativeIdentity(ptr %v0, ptr %v1, ptr %s23, { i64, ptr } %t764, { i64, ptr } %t765)
  store { i64, ptr } %t768, ptr %l296
  br label %bb166
bb165:
  %t769 = load { i64, ptr }, ptr %l291, !tbaa !27
  %t770 = extractvalue { i64, ptr } %t769, 1
  %t771 = extractvalue { i64, ptr } %t769, 0
  %t772 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t771)
  call void @olang_textcopy(ptr %t772, ptr %t770, i64 %t771)
  %t773 = insertvalue { i64, ptr } undef, i64 %t771, 0
  %t774 = insertvalue { i64, ptr } %t773, ptr %t772, 1
  store { i64, ptr } %t774, ptr %l289, !tbaa !27
  br label %bb167
bb166:
  %t776 = load { i64, ptr }, ptr %l296, !tbaa !27
  %t777 = extractvalue { i64, ptr } %t776, 1
  %t778 = extractvalue { i64, ptr } %t776, 0
  %t779 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t778)
  call void @olang_textcopy(ptr %t779, ptr %t777, i64 %t778)
  %t780 = insertvalue { i64, ptr } undef, i64 %t778, 0
  %t781 = insertvalue { i64, ptr } %t780, ptr %t779, 1
  store { i64, ptr } %t781, ptr %l289, !tbaa !27
  br label %bb167
bb167:
  %t783 = load ptr, ptr %lp9
  %t784 = load { i64, ptr }, ptr %t783, !tbaa !27
  store { i64, ptr } %t784, ptr %l298, !tbaa !27
  %t785 = load { i64, ptr }, ptr %l289, !tbaa !27
  %t786 = load ptr, ptr %lp9
  store { i64, ptr } %t785, ptr %t786, !tbaa !27
  %t787 = load i1, ptr @olang_2esole_2ecompiler__2fload__2ecompiler__2fload__3aLoader__2eresolve_2elocal_2e9
  br i1 %t787, label %bb168, label %bb169
bb168:
  %t789 = load { i64, ptr }, ptr %l298
  %t790 = extractvalue { i64, ptr } %t789, 1
  call void @__olang_region_release(ptr %t790)
  store { i64, ptr } zeroinitializer, ptr %l298
  br label %bb169
bb169:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d187, i32 0, i32 1) }, ptr %l300, !tbaa !27
  %t791 = load { i64, ptr }, ptr %l300, !tbaa !27
  store { i64, ptr } %t791, ptr %l21, !tbaa !27
  %t793 = load ptr, ptr %l3, !tbaa !29
  %t795 = getelementptr %"compiler/load:Module", ptr %t793, i32 0, i32 2
  %t796 = load { i64, ptr }, ptr %t795, !tbaa !27
  store { i64, ptr } %t796, ptr %l303, !tbaa !27
  %t797 = load ptr, ptr %l3, !tbaa !29
  %t799 = getelementptr %"compiler/load:Module", ptr %t797, i32 0, i32 2
  %t800 = load { i64, ptr }, ptr %t799, !tbaa !27
  %t803 = call { i32, i64 } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eFindByte(ptr %v0, { i64, ptr } %t800, i8 47)
  %t804 = extractvalue { i32, i64 } %t803, 1
  %t805 = extractvalue { i32, i64 } %t803, 0
  store i32 %t805, ptr %l309
  %t806 = icmp ne i32 %t805, 0
  br i1 %t806, label %bb171, label %ok.807, !prof !99
ok.807:
  store i64 %t804, ptr %l308
  br label %bb170
bb170:
  %t808 = load i64, ptr %l308, !tbaa !24
  store i64 %t808, ptr %l304, !tbaa !24
  br label %bb173
bb171:
  br label %bb172
bb172:
  %t809 = load ptr, ptr %l3, !tbaa !29
  %t811 = getelementptr %"compiler/load:Module", ptr %t809, i32 0, i32 2
  %t812 = load { i64, ptr }, ptr %t811, !tbaa !27
  %t814 = extractvalue { i64, ptr } %t812, 0
  store i64 %t814, ptr %l304, !tbaa !24
  br label %bb173
bb173:
  %t816 = load { i64, ptr }, ptr %l303, !tbaa !27
  %t817 = extractvalue { i64, ptr } %t816, 0
  store i64 %t817, ptr %l313, !tbaa !24
  %t818 = icmp sge i64 0, 0
  br i1 %t818, label %bb174, label %bb175
bb174:
  %t820 = load i64, ptr %l304, !tbaa !24
  %t821 = icmp sle i64 0, %t820
  br i1 %t821, label %bb176, label %bb177
bb175:
  call void @__olang_check_failed(ptr @olang_loc_91ed1932ac5cd85c_f28264288e99980)
  unreachable
bb176:
  %t823 = load i64, ptr %l304, !tbaa !24
  %t824 = load i64, ptr %l313, !tbaa !24
  %t825 = icmp sle i64 %t823, %t824
  br i1 %t825, label %bb178, label %bb179
bb177:
  call void @__olang_check_failed(ptr @olang_loc_91ed1932ac5cd85c_f28264288e99980)
  unreachable
bb178:
  %t827 = getelementptr { i64, ptr }, ptr %l303, i32 0, i32 1
  %t828 = load ptr, ptr %t827, !tbaa !27
  %t829 = load i64, ptr %l304, !tbaa !24
  %t830 = getelementptr i8, ptr %t828, i64 0
  %t831 = sub i64 %t829, 0
  %t832 = insertvalue { i64, ptr } undef, i64 %t831, 0
  %t833 = insertvalue { i64, ptr } %t832, ptr %t830, 1
  store { i64, ptr } %t833, ptr %l22, !tbaa !27
  %t835 = load { i64, ptr }, ptr %l22, !tbaa !27
  store { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d188, i32 0, i32 1) }, ptr %l320, !tbaa !27
  %t838 = load { i64, ptr }, ptr %l320, !tbaa !27
  %t839 = call i1 @std_2fprelude_2farray_2eArray_3cstd_2fprelude_2ftext_3aChar_3e_2eContains_3cstd_2fprelude_2ftext_3aChar_3e(ptr %v0, ptr %s23, { i64, ptr } %t835, { i64, ptr } %t838)
  store i1 %t839, ptr %l321
  br label %bb180
bb179:
  call void @__olang_check_failed(ptr @olang_loc_91ed1932ac5cd85c_f28264288e99980)
  unreachable
bb180:
  %t840 = load i1, ptr %l321, !tbaa !21
  br i1 %t840, label %bb181, label %bb182
bb181:
  %t841 = load { i64, ptr }, ptr %l22, !tbaa !27
  %t843 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s23, { i64, ptr } %t841, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d189, i32 0, i32 1) })
  store i1 %t843, ptr %l324
  br label %bb183
bb182:
  store i1 false, ptr %l322, !tbaa !21
  br label %bb184
bb183:
  %t844 = load i1, ptr %l324, !tbaa !21
  %t845 = xor i1 %t844, true
  store i1 %t845, ptr %l322, !tbaa !21
  br label %bb184
bb184:
  %t847 = load i1, ptr %l322, !tbaa !21
  br i1 %t847, label %bb185, label %bb186
bb185:
  %t848 = load { i64, ptr }, ptr %l22, !tbaa !27
  %t850 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s23, { i64, ptr } %t848, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d190, i32 0, i32 1) })
  store i1 %t850, ptr %l328
  br label %bb187
bb186:
  store i1 false, ptr %l326, !tbaa !21
  br label %bb188
bb187:
  %t851 = load i1, ptr %l328, !tbaa !21
  %t852 = xor i1 %t851, true
  store i1 %t852, ptr %l326, !tbaa !21
  br label %bb188
bb188:
  %t854 = load i1, ptr %l326, !tbaa !21
  store i1 %t854, ptr %l23, !tbaa !21
  %t855 = load ptr, ptr %l3, !tbaa !29
  %t857 = getelementptr %"compiler/load:Module", ptr %t855, i32 0, i32 2
  %t858 = load { i64, ptr }, ptr %t857, !tbaa !27
  %t860 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %v0, ptr %s23, { i64, ptr } %t858, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d191, i32 0, i32 1) })
  store i1 %t860, ptr %l332
  br label %bb189
bb189:
  %t861 = load i1, ptr %l332, !tbaa !21
  br i1 %t861, label %bb190, label %bb191
bb190:
  store { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d192, i32 0, i32 1) }, ptr %l333, !tbaa !27
  %t862 = load { i64, ptr }, ptr %l333, !tbaa !27
  %t863 = load { i64, ptr }, ptr %l21, !tbaa !27
  store { i64, ptr } %t863, ptr %l335, !tbaa !27
  store { i64, ptr } %t862, ptr %l21, !tbaa !27
  %t865 = load i1, ptr @olang_2esole_2ecompiler__2fload__2ecompiler__2fload__3aLoader__2eresolve_2elocal_2e21
  br i1 %t865, label %bb192, label %bb193
bb191:
  store %olang.scope zeroinitializer, ptr %s33
  %t867 = load i1, ptr %l23, !tbaa !21
  br i1 %t867, label %bb194, label %bb195
bb192:
  %t869 = load { i64, ptr }, ptr %l335
  %t870 = extractvalue { i64, ptr } %t869, 1
  call void @__olang_region_release(ptr %t870)
  store { i64, ptr } zeroinitializer, ptr %l335
  br label %bb193
bb193:
  br label %bb208
bb194:
  %t871 = load ptr, ptr %l3, !tbaa !29
  %t873 = getelementptr %"compiler/load:Module", ptr %t871, i32 0, i32 2
  %t874 = load { i64, ptr }, ptr %t873, !tbaa !27
  store { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d193, i32 0, i32 1) }, ptr %l342, !tbaa !27
  %t877 = load { i64, ptr }, ptr %l342, !tbaa !27
  %t878 = call i1 @std_2fprelude_2farray_2eArray_3cstd_2fprelude_2ftext_3aChar_3e_2eContains_3cstd_2fprelude_2ftext_3aChar_3e(ptr %v0, ptr %s33, { i64, ptr } %t874, { i64, ptr } %t877)
  store i1 %t878, ptr %l343
  br label %bb196
bb195:
  store i1 false, ptr %l338, !tbaa !21
  br label %bb197
bb196:
  %t879 = load i1, ptr %l343, !tbaa !21
  store i1 %t879, ptr %l338, !tbaa !21
  br label %bb197
bb197:
  %t880 = load i1, ptr %l338, !tbaa !21
  br i1 %t880, label %bb198, label %bb199
bb198:
  store %olang.scope zeroinitializer, ptr %s34
  %t881 = ptrtoint ptr %s23 to i64
  store i64 %t881, ptr %l344, !tbaa !24
  %t882 = load i1, ptr @olang_2esole_2ecompiler__2fload__2ecompiler__2fload__3aLoader__2eresolve_2elocal_2e21
  br i1 %t882, label %bb200, label %bb201
bb199:
  br label %bb207
bb200:
  %t884 = call ptr @__olang_region_make(ptr %s23)
  %t885 = ptrtoint ptr %t884 to i64
  store i64 %t885, ptr %l344, !tbaa !24
  br label %bb201
bb201:
  %t886 = load ptr, ptr %l3, !tbaa !29
  %t888 = getelementptr %"compiler/load:Module", ptr %t886, i32 0, i32 2
  %t889 = load { i64, ptr }, ptr %t888, !tbaa !27
  %t891 = call { i64, ptr } @compiler_2fload_2efirstElems(ptr %v0, ptr %s34, { i64, ptr } %t889, i64 3)
  store { i64, ptr } %t891, ptr %l348
  br label %bb202
bb202:
  %t892 = load { i64, ptr }, ptr %l348, !tbaa !27
  %t893 = extractvalue { i64, ptr } %t892, 1
  %t894 = extractvalue { i64, ptr } %t892, 0
  %t895 = load i64, ptr %l344
  %t896 = inttoptr i64 %t895 to ptr
  %t897 = call ptr @__olang_scope_alloc(ptr %t896, i64 %t894)
  call void @olang_textcopy(ptr %t897, ptr %t893, i64 %t894)
  %t898 = insertvalue { i64, ptr } undef, i64 %t894, 0
  %t899 = insertvalue { i64, ptr } %t898, ptr %t897, 1
  store { i64, ptr } %t899, ptr %l349, !tbaa !27
  %t900 = load i1, ptr @olang_2esole_2ecompiler__2fload__2ecompiler__2fload__3aLoader__2eresolve_2elocal_2e21
  br i1 %t900, label %bb203, label %bb204
bb203:
  %t902 = load i64, ptr %l344
  %t903 = inttoptr i64 %t902 to ptr
  %t904 = load { i64, ptr }, ptr %l349
  %t905 = extractvalue { i64, ptr } %t904, 1
  %t906 = call ptr @__olang_region_or(ptr %t905, ptr null)
  %t907 = icmp ne ptr %t906, null
  %t908 = select i1 %t907, ptr %t906, ptr null
  %t909 = icmp eq ptr %t908, %t903
  call void @__olang_region_settle(ptr %t903, i1 %t909)
  br label %bb204
bb204:
  %t910 = load { i64, ptr }, ptr %l21, !tbaa !27
  store { i64, ptr } %t910, ptr %l351, !tbaa !27
  %t911 = load { i64, ptr }, ptr %l349, !tbaa !27
  store { i64, ptr } %t911, ptr %l21, !tbaa !27
  %t912 = load i1, ptr @olang_2esole_2ecompiler__2fload__2ecompiler__2fload__3aLoader__2eresolve_2elocal_2e21
  br i1 %t912, label %bb205, label %bb206
bb205:
  %t914 = load { i64, ptr }, ptr %l351
  %t915 = extractvalue { i64, ptr } %t914, 1
  call void @__olang_region_release(ptr %t915)
  store { i64, ptr } zeroinitializer, ptr %l351
  br label %bb206
bb206:
  call void @__olang_scope_close(ptr %s34)
  br label %bb207
bb207:
  call void @__olang_scope_close(ptr %s33)
  br label %bb208
bb208:
  %t916 = load { i64, ptr }, ptr %l21, !tbaa !27
  %t918 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s23, ptr %s23, { i64, ptr } %t916, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d194, i32 0, i32 1) })
  store i1 %t918, ptr %l354
  br label %bb209
bb209:
  %t919 = load i1, ptr %l354, !tbaa !21
  %t920 = xor i1 %t919, true
  br i1 %t920, label %bb210, label %bb211
bb210:
  %t922 = load ptr, ptr %lp9
  %t923 = load { i64, ptr }, ptr %t922, !tbaa !27
  %t924 = load { i64, ptr }, ptr %l21, !tbaa !27
  %t926 = extractvalue { i64, ptr } %t924, 1
  %t927 = extractvalue { i64, ptr } %t924, 0
  %t928 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d195, i32 0, i32 1) }, 1
  %t929 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d195, i32 0, i32 1) }, 0
  %t930 = add i64 %t927, %t929
  %t931 = call ptr @__olang_scope_alloc(ptr %s23, i64 %t930)
  call void @olang_textcopy(ptr %t931, ptr %t926, i64 %t927)
  %t932 = getelementptr i8, ptr %t931, i64 %t927
  call void @olang_textcopy(ptr %t932, ptr %t928, i64 %t929)
  %t933 = insertvalue { i64, ptr } undef, i64 %t930, 0
  %t934 = insertvalue { i64, ptr } %t933, ptr %t931, 1
  %t936 = extractvalue { i64, ptr } %t934, 0
  %t937 = extractvalue { i64, ptr } %t934, 1
  %t938 = mul i64 %t936, 1
  %t939 = call ptr @__olang_scope_alloc(ptr %s23, i64 %t938)
  call void @llvm.memcpy.p0.p0.i64(ptr %t939, ptr %t937, i64 %t938, i1 false)
  %t940 = insertvalue { i64, ptr } undef, i64 %t936, 0
  %t941 = insertvalue { i64, ptr } %t940, ptr %t939, 1
  %t944 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %v2, ptr %s23, { i64, ptr } %t923, { i64, ptr } %t941)
  store i1 %t944, ptr %l361
  br label %bb212
bb211:
  store i1 false, ptr %l356, !tbaa !21
  br label %bb213
bb212:
  %t945 = load i1, ptr %l361, !tbaa !21
  %t946 = xor i1 %t945, true
  store i1 %t946, ptr %l356, !tbaa !21
  br label %bb213
bb213:
  %t948 = load i1, ptr %l356, !tbaa !21
  br i1 %t948, label %bb214, label %bb215
bb214:
  %t949 = load ptr, ptr %l0, !tbaa !29
  %t951 = getelementptr %"compiler/load:Loader", ptr %t949, i32 0, i32 4
  %t952 = load ptr, ptr %t951, !tbaa !29
  store ptr %t952, ptr %l364, !tbaa !29
  %t953 = load { i64, [3 x i64] }, ptr %l4
  store { i64, [3 x i64] } %t953, ptr %l365
  %t954 = load { i64, ptr }, ptr %l21, !tbaa !27
  %t956 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eImportLeavesRoot(ptr %s23, ptr %v0, { i64, ptr } %t954)
  store %"compiler/diagmsg:Msg" %t956, ptr %l367
  br label %bb216
bb215:
  br label %bb218
bb216:
  %t957 = load ptr, ptr %l364, !tbaa !29
  %t958 = load { i64, [3 x i64] }, ptr %l365
  %t959 = load %"compiler/diagmsg:Msg", ptr %l367
  %t960 = call i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eError(ptr %v0, ptr %v0, ptr %t957, { i64, [3 x i64] } %t958, %"compiler/diagmsg:Msg" %t959)
  store i64 %t960, ptr %l368
  br label %bb217
bb217:
  call void @__olang_scope_close(ptr %s23)
  call void @__olang_scope_close(ptr %s8)
  call void @__olang_scope_close(ptr %s0)
  %t962 = insertvalue { i32, { { i64, ptr }, { i64, ptr } } } zeroinitializer, i32 65536, 0
  store { i32, { { i64, ptr }, { i64, ptr } } } %t962, ptr %rv
  br label %ret
bb218:
  call void @__olang_scope_close(ptr %s23)
  br label %bb219
bb219:
  call void @__olang_scope_close(ptr %s8)
  br label %bb220
bb220:
  %t963 = load ptr, ptr %lp8
  %t964 = load { i64, ptr }, ptr %t963, !tbaa !27
  %t966 = call i1 @std_2fos_2eExists(ptr %v2, { i64, ptr } %t964)
  store i1 %t966, ptr %l371
  br label %bb221
bb221:
  %t967 = load i1, ptr %l371, !tbaa !21
  %t968 = xor i1 %t967, true
  br i1 %t968, label %bb222, label %bb223
bb222:
  store i1 true, ptr %l373, !tbaa !21
  br label %bb225
bb223:
  %t970 = load ptr, ptr %lp8
  %t971 = load { i64, ptr }, ptr %t970, !tbaa !27
  %t973 = call i1 @std_2fos_2eIsDir(ptr %v2, { i64, ptr } %t971)
  store i1 %t973, ptr %l375
  br label %bb224
bb224:
  %t974 = load i1, ptr %l375, !tbaa !21
  store i1 %t974, ptr %l373, !tbaa !21
  br label %bb225
bb225:
  %t975 = load i1, ptr %l373, !tbaa !21
  br i1 %t975, label %bb226, label %bb227
bb226:
  %t976 = load ptr, ptr %l0, !tbaa !29
  %t978 = getelementptr %"compiler/load:Loader", ptr %t976, i32 0, i32 4
  %t979 = load ptr, ptr %t978, !tbaa !29
  store ptr %t979, ptr %l377, !tbaa !29
  %t980 = load { i64, [3 x i64] }, ptr %l4
  store { i64, [3 x i64] } %t980, ptr %l378
  %t981 = load ptr, ptr %lp8
  %t982 = load { i64, ptr }, ptr %t981, !tbaa !27
  %t984 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eImportFileNotFound(ptr %v2, ptr %v0, { i64, ptr } %t982)
  store %"compiler/diagmsg:Msg" %t984, ptr %l380
  br label %bb228
bb227:
  br label %bb230
bb228:
  %t985 = load ptr, ptr %l377, !tbaa !29
  %t986 = load { i64, [3 x i64] }, ptr %l378
  %t987 = load %"compiler/diagmsg:Msg", ptr %l380
  %t988 = call i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eError(ptr %v0, ptr %v0, ptr %t985, { i64, [3 x i64] } %t986, %"compiler/diagmsg:Msg" %t987)
  store i64 %t988, ptr %l381
  br label %bb229
bb229:
  call void @__olang_scope_close(ptr %s0)
  %t990 = insertvalue { i32, { { i64, ptr }, { i64, ptr } } } zeroinitializer, i32 65536, 0
  store { i32, { { i64, ptr }, { i64, ptr } } } %t990, ptr %rv
  br label %ret
bb230:
  %t991 = load ptr, ptr %lp8
  %t992 = load { i64, ptr }, ptr %t991, !tbaa !27
  %t993 = load ptr, ptr %lp9
  %t994 = load { i64, ptr }, ptr %t993, !tbaa !27
  %t996 = insertvalue { { i64, ptr }, { i64, ptr } } undef, { i64, ptr } %t992, 0
  %t998 = insertvalue { { i64, ptr }, { i64, ptr } } %t996, { i64, ptr } %t994, 1
  call void @__olang_scope_close(ptr %s0)
  %t1000 = insertvalue { i32, { { i64, ptr }, { i64, ptr } } } zeroinitializer, { { i64, ptr }, { i64, ptr } } %t998, 1
  store { i32, { { i64, ptr }, { i64, ptr } } } %t1000, ptr %rv
  br label %ret
ret:
  %rr = load { i32, { { i64, ptr }, { i64, ptr } } }, ptr %rv
  ret { i32, { { i64, ptr }, { i64, ptr } } } %rr
}

define dso_local { i64, ptr } @compiler_2fload_2ecompiler_2fload_3aLoader_2erootIdentity(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca { i64, ptr }
  %l2 = alloca { i64, ptr }
  %l3 = alloca { i64, ptr }
  %l4 = alloca { i64, ptr }
  %l5 = alloca { i64, ptr }
  %lp6 = alloca ptr
  %l7 = alloca { i64, ptr }
  %l9 = alloca { i64, ptr }
  %l10 = alloca i32
  %l14 = alloca i1
  %l16 = alloca { i64, ptr }
  %l21 = alloca { i64, ptr }
  %l23 = alloca { i64, ptr }
  %l30 = alloca i1
  %l31 = alloca i64
  %l36 = alloca i64
  %l38 = alloca i64
  %l39 = alloca i64
  %l44 = alloca { i64, ptr }
  %l46 = alloca { i64, ptr }
  %l48 = alloca { i64, ptr }
  %l50 = alloca { i64, ptr }
  %l57 = alloca i1
  %l58 = alloca i64
  %l63 = alloca i64
  %l65 = alloca i64
  %l66 = alloca i64
  %l71 = alloca { i64, ptr }
  %l73 = alloca { i64, ptr }
  %l76 = alloca i1
  %l78 = alloca { i64, ptr }
  %l83 = alloca { i64, ptr }
  %l86 = alloca i1
  %l87 = alloca { i64, ptr }
  %l90 = alloca i64
  %l91 = alloca i64
  %s0 = alloca %olang.scope
  %s6 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  store { i64, ptr } %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t3 = call { i32, { i64, ptr } } @std_2fos_2eRealPath(ptr %v1, ptr %s0, { i64, ptr } %t1)
  %t4 = extractvalue { i32, { i64, ptr } } %t3, 1
  %t5 = extractvalue { i32, { i64, ptr } } %t3, 0
  store i32 %t5, ptr %l10
  %t6 = icmp ne i32 %t5, 0
  br i1 %t6, label %bb2, label %ok.7, !prof !99
ok.7:
  store { i64, ptr } %t4, ptr %l9
  br label %bb1
bb1:
  %t8 = load { i64, ptr }, ptr %l9, !tbaa !27
  store { i64, ptr } %t8, ptr %l7, !tbaa !27
  br label %bb6
bb2:
  %t9 = load i32, ptr %l10, !tbaa !23
  %t10 = ashr i32 %t9, 16
  %t12 = icmp eq i32 %t10, 1
  br i1 %t12, label %bb3, label %bb4
bb3:
  call void @__olang_errpay_pop()
  br label %bb4
bb4:
  br label %bb5
bb5:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d196, i32 0, i32 1) }, ptr %l7, !tbaa !27
  br label %bb6
bb6:
  %t14 = load { i64, ptr }, ptr %l7, !tbaa !27
  store { i64, ptr } %t14, ptr %l2, !tbaa !27
  %t15 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t17 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %s0, { i64, ptr } %t15, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d197, i32 0, i32 1) })
  store i1 %t17, ptr %l14
  br label %bb7
bb7:
  %t18 = load i1, ptr %l14, !tbaa !21
  %t19 = xor i1 %t18, true
  br i1 %t19, label %bb8, label %bb9
bb8:
  %t21 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t23 = extractvalue { i64, ptr } %t21, 1
  %t24 = extractvalue { i64, ptr } %t21, 0
  %t25 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t24)
  call void @olang_textcopy(ptr %t25, ptr %t23, i64 %t24)
  %t26 = insertvalue { i64, ptr } undef, i64 %t24, 0
  %t27 = insertvalue { i64, ptr } %t26, ptr %t25, 1
  store { i64, ptr } %t27, ptr %l16, !tbaa !27
  br label %bb10
bb9:
  %t29 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t31 = extractvalue { i64, ptr } %t29, 1
  %t32 = extractvalue { i64, ptr } %t29, 0
  %t33 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t32)
  call void @olang_textcopy(ptr %t33, ptr %t31, i64 %t32)
  %t34 = insertvalue { i64, ptr } undef, i64 %t32, 0
  %t35 = insertvalue { i64, ptr } %t34, ptr %t33, 1
  store { i64, ptr } %t35, ptr %l16, !tbaa !27
  br label %bb10
bb10:
  %t37 = load { i64, ptr }, ptr %l16, !tbaa !27
  store { i64, ptr } %t37, ptr %l3, !tbaa !27
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d198, i32 0, i32 1) }, ptr %l21, !tbaa !27
  %t38 = load { i64, ptr }, ptr %l21, !tbaa !27
  store { i64, ptr } %t38, ptr %l4, !tbaa !27
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d199, i32 0, i32 1) }, ptr %l23, !tbaa !27
  %t40 = load { i64, ptr }, ptr %l23, !tbaa !27
  store { i64, ptr } %t40, ptr %l5, !tbaa !27
  %t42 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t43 = load ptr, ptr %l0, !tbaa !29
  %t45 = getelementptr %"compiler/load:Loader", ptr %t43, i32 0, i32 15
  %t46 = load { i64, ptr }, ptr %t45, !tbaa !27
  %t48 = extractvalue { i64, ptr } %t46, 1
  %t49 = extractvalue { i64, ptr } %t46, 0
  %t50 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d200, i32 0, i32 1) }, 1
  %t51 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d200, i32 0, i32 1) }, 0
  %t52 = add i64 %t49, %t51
  %t53 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t52)
  call void @olang_textcopy(ptr %t53, ptr %t48, i64 %t49)
  %t54 = getelementptr i8, ptr %t53, i64 %t49
  call void @olang_textcopy(ptr %t54, ptr %t50, i64 %t51)
  %t55 = insertvalue { i64, ptr } undef, i64 %t52, 0
  %t56 = insertvalue { i64, ptr } %t55, ptr %t53, 1
  %t58 = extractvalue { i64, ptr } %t56, 0
  %t59 = extractvalue { i64, ptr } %t56, 1
  %t60 = mul i64 %t58, 1
  %t61 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t60)
  call void @llvm.memcpy.p0.p0.i64(ptr %t61, ptr %t59, i64 %t60, i1 false)
  %t62 = insertvalue { i64, ptr } undef, i64 %t58, 0
  %t63 = insertvalue { i64, ptr } %t62, ptr %t61, 1
  %t66 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %s0, ptr %s0, { i64, ptr } %t42, { i64, ptr } %t63)
  store i1 %t66, ptr %l30
  br label %bb11
bb11:
  %t67 = load i1, ptr %l30, !tbaa !21
  br i1 %t67, label %bb12, label %bb13
bb12:
  %t68 = ptrtoint ptr %s0 to i64
  store i64 %t68, ptr %l31, !tbaa !24
  %t69 = load i1, ptr @olang_2esole_2ecompiler__2fload__2ecompiler__2fload__3aLoader__2erootIdentity_2elocal_2e4
  br i1 %t69, label %bb14, label %bb15
bb13:
  store %olang.scope zeroinitializer, ptr %s6
  %t71 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t72 = load ptr, ptr %l0, !tbaa !29
  %t74 = getelementptr %"compiler/load:Loader", ptr %t72, i32 0, i32 16
  %t75 = load { i64, ptr }, ptr %t74, !tbaa !27
  %t77 = extractvalue { i64, ptr } %t75, 1
  %t78 = extractvalue { i64, ptr } %t75, 0
  %t79 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d201, i32 0, i32 1) }, 1
  %t80 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d201, i32 0, i32 1) }, 0
  %t81 = add i64 %t78, %t80
  %t82 = call ptr @__olang_scope_alloc(ptr %s6, i64 %t81)
  call void @olang_textcopy(ptr %t82, ptr %t77, i64 %t78)
  %t83 = getelementptr i8, ptr %t82, i64 %t78
  call void @olang_textcopy(ptr %t83, ptr %t79, i64 %t80)
  %t84 = insertvalue { i64, ptr } undef, i64 %t81, 0
  %t85 = insertvalue { i64, ptr } %t84, ptr %t82, 1
  %t87 = extractvalue { i64, ptr } %t85, 0
  %t88 = extractvalue { i64, ptr } %t85, 1
  %t89 = mul i64 %t87, 1
  %t90 = call ptr @__olang_scope_alloc(ptr %s6, i64 %t89)
  call void @llvm.memcpy.p0.p0.i64(ptr %t90, ptr %t88, i64 %t89, i1 false)
  %t91 = insertvalue { i64, ptr } undef, i64 %t87, 0
  %t92 = insertvalue { i64, ptr } %t91, ptr %t90, 1
  %t95 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %s0, ptr %s6, { i64, ptr } %t71, { i64, ptr } %t92)
  store i1 %t95, ptr %l57
  br label %bb28
bb14:
  %t96 = call ptr @__olang_region_make(ptr %s0)
  %t97 = ptrtoint ptr %t96 to i64
  store i64 %t97, ptr %l31, !tbaa !24
  br label %bb15
bb15:
  %t98 = load ptr, ptr %l0, !tbaa !29
  %t100 = getelementptr %"compiler/load:Loader", ptr %t98, i32 0, i32 15
  %t101 = load { i64, ptr }, ptr %t100, !tbaa !27
  %t103 = extractvalue { i64, ptr } %t101, 0
  %t105 = add i64 %t103, 1
  store i64 %t105, ptr %l36, !tbaa !24
  %t106 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t108 = extractvalue { i64, ptr } %t106, 0
  store i64 %t108, ptr %l38, !tbaa !24
  %t109 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t110 = extractvalue { i64, ptr } %t109, 0
  store i64 %t110, ptr %l39, !tbaa !24
  %t111 = load i64, ptr %l36, !tbaa !24
  %t112 = icmp sge i64 %t111, 0
  br i1 %t112, label %bb16, label %bb17
bb16:
  %t114 = load i64, ptr %l36, !tbaa !24
  %t115 = load i64, ptr %l38, !tbaa !24
  %t116 = icmp sle i64 %t114, %t115
  br i1 %t116, label %bb18, label %bb19
bb17:
  call void @__olang_check_failed(ptr @olang_loc_d9612e2b18e8b492_6662b34d58c1f606)
  unreachable
bb18:
  %t118 = load i64, ptr %l38, !tbaa !24
  %t119 = load i64, ptr %l39, !tbaa !24
  %t120 = icmp sle i64 %t118, %t119
  br i1 %t120, label %bb20, label %bb21
bb19:
  call void @__olang_check_failed(ptr @olang_loc_d9612e2b18e8b492_6662b34d58c1f606)
  unreachable
bb20:
  %t122 = getelementptr { i64, ptr }, ptr %l3, i32 0, i32 1
  %t123 = load ptr, ptr %t122, !tbaa !27
  %t124 = load i64, ptr %l36, !tbaa !24
  %t125 = load i64, ptr %l38, !tbaa !24
  %t126 = getelementptr i8, ptr %t123, i64 %t124
  %t127 = sub i64 %t125, %t124
  %t128 = insertvalue { i64, ptr } undef, i64 %t127, 0
  %t129 = insertvalue { i64, ptr } %t128, ptr %t126, 1
  %t131 = extractvalue { i64, ptr } %t129, 1
  %t132 = extractvalue { i64, ptr } %t129, 0
  %t133 = load i64, ptr %l31
  %t134 = inttoptr i64 %t133 to ptr
  %t135 = call ptr @__olang_scope_alloc(ptr %t134, i64 %t132)
  call void @olang_textcopy(ptr %t135, ptr %t131, i64 %t132)
  %t136 = insertvalue { i64, ptr } undef, i64 %t132, 0
  %t137 = insertvalue { i64, ptr } %t136, ptr %t135, 1
  store { i64, ptr } %t137, ptr %l44, !tbaa !27
  %t138 = load i1, ptr @olang_2esole_2ecompiler__2fload__2ecompiler__2fload__3aLoader__2erootIdentity_2elocal_2e4
  br i1 %t138, label %bb22, label %bb23
bb21:
  call void @__olang_check_failed(ptr @olang_loc_d9612e2b18e8b492_6662b34d58c1f606)
  unreachable
bb22:
  %t140 = load i64, ptr %l31
  %t141 = inttoptr i64 %t140 to ptr
  %t142 = load { i64, ptr }, ptr %l44
  %t143 = extractvalue { i64, ptr } %t142, 1
  %t144 = call ptr @__olang_region_or(ptr %t143, ptr null)
  %t145 = icmp ne ptr %t144, null
  %t146 = select i1 %t145, ptr %t144, ptr null
  %t147 = icmp eq ptr %t146, %t141
  call void @__olang_region_settle(ptr %t141, i1 %t147)
  br label %bb23
bb23:
  %t148 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t148, ptr %l46, !tbaa !27
  %t149 = load { i64, ptr }, ptr %l44, !tbaa !27
  store { i64, ptr } %t149, ptr %l4, !tbaa !27
  %t150 = load i1, ptr @olang_2esole_2ecompiler__2fload__2ecompiler__2fload__3aLoader__2erootIdentity_2elocal_2e4
  br i1 %t150, label %bb24, label %bb25
bb24:
  %t152 = load { i64, ptr }, ptr %l46
  %t153 = extractvalue { i64, ptr } %t152, 1
  call void @__olang_region_release(ptr %t153)
  store { i64, ptr } zeroinitializer, ptr %l46
  br label %bb25
bb25:
  store { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d202, i32 0, i32 1) }, ptr %l48, !tbaa !27
  %t154 = load { i64, ptr }, ptr %l48, !tbaa !27
  %t155 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t155, ptr %l50, !tbaa !27
  store { i64, ptr } %t154, ptr %l5, !tbaa !27
  %t157 = load i1, ptr @olang_2esole_2ecompiler__2fload__2ecompiler__2fload__3aLoader__2erootIdentity_2elocal_2e5
  br i1 %t157, label %bb26, label %bb27
bb26:
  %t159 = load { i64, ptr }, ptr %l50
  %t160 = extractvalue { i64, ptr } %t159, 1
  call void @__olang_region_release(ptr %t160)
  store { i64, ptr } zeroinitializer, ptr %l50
  br label %bb27
bb27:
  br label %bb44
bb28:
  %t161 = load i1, ptr %l57, !tbaa !21
  br i1 %t161, label %bb29, label %bb30
bb29:
  %t162 = ptrtoint ptr %s0 to i64
  store i64 %t162, ptr %l58, !tbaa !24
  %t163 = load i1, ptr @olang_2esole_2ecompiler__2fload__2ecompiler__2fload__3aLoader__2erootIdentity_2elocal_2e4
  br i1 %t163, label %bb31, label %bb32
bb30:
  br label %bb43
bb31:
  %t165 = call ptr @__olang_region_make(ptr %s0)
  %t166 = ptrtoint ptr %t165 to i64
  store i64 %t166, ptr %l58, !tbaa !24
  br label %bb32
bb32:
  %t167 = load ptr, ptr %l0, !tbaa !29
  %t169 = getelementptr %"compiler/load:Loader", ptr %t167, i32 0, i32 16
  %t170 = load { i64, ptr }, ptr %t169, !tbaa !27
  %t172 = extractvalue { i64, ptr } %t170, 0
  %t174 = add i64 %t172, 1
  store i64 %t174, ptr %l63, !tbaa !24
  %t175 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t177 = extractvalue { i64, ptr } %t175, 0
  store i64 %t177, ptr %l65, !tbaa !24
  %t178 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t179 = extractvalue { i64, ptr } %t178, 0
  store i64 %t179, ptr %l66, !tbaa !24
  %t180 = load i64, ptr %l63, !tbaa !24
  %t181 = icmp sge i64 %t180, 0
  br i1 %t181, label %bb33, label %bb34
bb33:
  %t183 = load i64, ptr %l63, !tbaa !24
  %t184 = load i64, ptr %l65, !tbaa !24
  %t185 = icmp sle i64 %t183, %t184
  br i1 %t185, label %bb35, label %bb36
bb34:
  call void @__olang_check_failed(ptr @olang_loc_e481e3499ae60e8f_66ba2a1e23e9a0e3)
  unreachable
bb35:
  %t187 = load i64, ptr %l65, !tbaa !24
  %t188 = load i64, ptr %l66, !tbaa !24
  %t189 = icmp sle i64 %t187, %t188
  br i1 %t189, label %bb37, label %bb38
bb36:
  call void @__olang_check_failed(ptr @olang_loc_e481e3499ae60e8f_66ba2a1e23e9a0e3)
  unreachable
bb37:
  %t191 = getelementptr { i64, ptr }, ptr %l3, i32 0, i32 1
  %t192 = load ptr, ptr %t191, !tbaa !27
  %t193 = load i64, ptr %l63, !tbaa !24
  %t194 = load i64, ptr %l65, !tbaa !24
  %t195 = getelementptr i8, ptr %t192, i64 %t193
  %t196 = sub i64 %t194, %t193
  %t197 = insertvalue { i64, ptr } undef, i64 %t196, 0
  %t198 = insertvalue { i64, ptr } %t197, ptr %t195, 1
  %t200 = extractvalue { i64, ptr } %t198, 1
  %t201 = extractvalue { i64, ptr } %t198, 0
  %t202 = load i64, ptr %l58
  %t203 = inttoptr i64 %t202 to ptr
  %t204 = call ptr @__olang_scope_alloc(ptr %t203, i64 %t201)
  call void @olang_textcopy(ptr %t204, ptr %t200, i64 %t201)
  %t205 = insertvalue { i64, ptr } undef, i64 %t201, 0
  %t206 = insertvalue { i64, ptr } %t205, ptr %t204, 1
  store { i64, ptr } %t206, ptr %l71, !tbaa !27
  %t207 = load i1, ptr @olang_2esole_2ecompiler__2fload__2ecompiler__2fload__3aLoader__2erootIdentity_2elocal_2e4
  br i1 %t207, label %bb39, label %bb40
bb38:
  call void @__olang_check_failed(ptr @olang_loc_e481e3499ae60e8f_66ba2a1e23e9a0e3)
  unreachable
bb39:
  %t209 = load i64, ptr %l58
  %t210 = inttoptr i64 %t209 to ptr
  %t211 = load { i64, ptr }, ptr %l71
  %t212 = extractvalue { i64, ptr } %t211, 1
  %t213 = call ptr @__olang_region_or(ptr %t212, ptr null)
  %t214 = icmp ne ptr %t213, null
  %t215 = select i1 %t214, ptr %t213, ptr null
  %t216 = icmp eq ptr %t215, %t210
  call void @__olang_region_settle(ptr %t210, i1 %t216)
  br label %bb40
bb40:
  %t217 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t217, ptr %l73, !tbaa !27
  %t218 = load { i64, ptr }, ptr %l71, !tbaa !27
  store { i64, ptr } %t218, ptr %l4, !tbaa !27
  %t219 = load i1, ptr @olang_2esole_2ecompiler__2fload__2ecompiler__2fload__3aLoader__2erootIdentity_2elocal_2e4
  br i1 %t219, label %bb41, label %bb42
bb41:
  %t221 = load { i64, ptr }, ptr %l73
  %t222 = extractvalue { i64, ptr } %t221, 1
  call void @__olang_region_release(ptr %t222)
  store { i64, ptr } zeroinitializer, ptr %l73
  br label %bb42
bb42:
  br label %bb43
bb43:
  call void @__olang_scope_close(ptr %s6)
  br label %bb44
bb44:
  %t223 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t225 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %s0, { i64, ptr } %t223, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d203, i32 0, i32 1) })
  store i1 %t225, ptr %l76
  br label %bb45
bb45:
  %t226 = load i1, ptr %l76, !tbaa !21
  %t227 = xor i1 %t226, true
  br i1 %t227, label %bb46, label %bb47
bb46:
  %t229 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t230 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t232 = extractvalue { i64, ptr } %t229, 1
  %t233 = extractvalue { i64, ptr } %t229, 0
  %t235 = extractvalue { i64, ptr } %t230, 1
  %t236 = extractvalue { i64, ptr } %t230, 0
  %t237 = add i64 %t233, %t236
  %t238 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t237)
  call void @olang_textcopy(ptr %t238, ptr %t232, i64 %t233)
  %t239 = getelementptr i8, ptr %t238, i64 %t233
  call void @olang_textcopy(ptr %t239, ptr %t235, i64 %t236)
  %t240 = insertvalue { i64, ptr } undef, i64 %t237, 0
  %t241 = insertvalue { i64, ptr } %t240, ptr %t238, 1
  store { i64, ptr } %t241, ptr %l78, !tbaa !27
  br label %bb49
bb47:
  %t243 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t245 = call { i64, ptr } @std_2ffilepath_2eBase(ptr %s0, ptr %s0, { i64, ptr } %t243)
  store { i64, ptr } %t245, ptr %l83
  br label %bb48
bb48:
  %t246 = load { i64, ptr }, ptr %l83, !tbaa !27
  %t247 = extractvalue { i64, ptr } %t246, 1
  %t248 = extractvalue { i64, ptr } %t246, 0
  %t249 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t248)
  call void @olang_textcopy(ptr %t249, ptr %t247, i64 %t248)
  %t250 = insertvalue { i64, ptr } undef, i64 %t248, 0
  %t251 = insertvalue { i64, ptr } %t250, ptr %t249, 1
  store { i64, ptr } %t251, ptr %l78, !tbaa !27
  br label %bb49
bb49:
  %t253 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 16, i64 8)
  store ptr %t253, ptr %lp6
  %t254 = load { i64, ptr }, ptr %l78, !tbaa !27
  %t255 = load ptr, ptr %lp6
  store { i64, ptr } %t254, ptr %t255, !tbaa !27
  %t256 = load ptr, ptr %lp6
  %t257 = load { i64, ptr }, ptr %t256, !tbaa !27
  %t259 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEndsWith(ptr %v2, ptr %s0, { i64, ptr } %t257, { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d204, i32 0, i32 1) })
  store i1 %t259, ptr %l86
  br label %bb50
bb50:
  %t260 = load i1, ptr %l86, !tbaa !21
  br i1 %t260, label %bb51, label %bb52
bb51:
  %t261 = load ptr, ptr %lp6
  %t262 = load { i64, ptr }, ptr %t261, !tbaa !27
  %t264 = extractvalue { i64, ptr } %t262, 0
  %t266 = sub i64 %t264, 6
  store i64 %t266, ptr %l90, !tbaa !24
  %t267 = load ptr, ptr %lp6
  %t268 = load { i64, ptr }, ptr %t267, !tbaa !27
  %t269 = extractvalue { i64, ptr } %t268, 0
  store i64 %t269, ptr %l91, !tbaa !24
  %t270 = icmp sge i64 0, 0
  br i1 %t270, label %bb53, label %bb54
bb52:
  %t272 = load ptr, ptr %lp6
  %t273 = load { i64, ptr }, ptr %t272, !tbaa !27
  store { i64, ptr } %t273, ptr %l87, !tbaa !27
  br label %bb59
bb53:
  %t275 = load i64, ptr %l90, !tbaa !24
  %t276 = icmp sle i64 0, %t275
  br i1 %t276, label %bb55, label %bb56
bb54:
  call void @__olang_check_failed(ptr @olang_loc_281d6687dd267da4_55752feab9766ac8)
  unreachable
bb55:
  %t278 = load i64, ptr %l90, !tbaa !24
  %t279 = load i64, ptr %l91, !tbaa !24
  %t280 = icmp sle i64 %t278, %t279
  br i1 %t280, label %bb57, label %bb58
bb56:
  call void @__olang_check_failed(ptr @olang_loc_281d6687dd267da4_55752feab9766ac8)
  unreachable
bb57:
  %t282 = load ptr, ptr %lp6
  %t283 = getelementptr { i64, ptr }, ptr %t282, i32 0, i32 1
  %t284 = load ptr, ptr %t283, !tbaa !27
  %t285 = load i64, ptr %l90, !tbaa !24
  %t286 = getelementptr i8, ptr %t284, i64 0
  %t287 = sub i64 %t285, 0
  %t288 = insertvalue { i64, ptr } undef, i64 %t287, 0
  %t289 = insertvalue { i64, ptr } %t288, ptr %t286, 1
  %t291 = extractvalue { i64, ptr } %t289, 1
  %t292 = extractvalue { i64, ptr } %t289, 0
  %t293 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t292)
  call void @olang_textcopy(ptr %t293, ptr %t291, i64 %t292)
  %t294 = insertvalue { i64, ptr } undef, i64 %t292, 0
  %t295 = insertvalue { i64, ptr } %t294, ptr %t293, 1
  store { i64, ptr } %t295, ptr %l87, !tbaa !27
  br label %bb59
bb58:
  call void @__olang_check_failed(ptr @olang_loc_281d6687dd267da4_55752feab9766ac8)
  unreachable
bb59:
  call void @__olang_scope_close(ptr %s0)
  %t297 = load { i64, ptr }, ptr %l87, !tbaa !27
  store { i64, ptr } %t297, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
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

define dso_local i64 @compiler_2fload_2ecompiler_2fload_3aLoader_2etopIf(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i64 %a2, i64 %a3, i64 %a4) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i64
  %l3 = alloca i64
  %l5 = alloca { i64, ptr }
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %l12 = alloca i64
  %l23 = alloca i64
  %l26 = alloca { i64, ptr }
  %l39 = alloca ptr
  %l42 = alloca i64
  %l49 = alloca i64
  %l65 = alloca i32
  %l74 = alloca i64
  %l83 = alloca { i64, ptr }
  %l91 = alloca { i64, ptr }
  %l98 = alloca { i64, ptr }
  %l114 = alloca i32
  %l126 = alloca i64
  %rv = alloca i64
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store i64 %a2, ptr %l2
  store i64 %a3, ptr %l3
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
  call void @__olang_check_failed(ptr @olang_loc_f33836f530001f0a_3e5ddd8b9e2e63ae)
  unreachable
bb2:
  br label %bb3
bb3:
  %t8 = load ptr, ptr %l1, !tbaa !29
  %t10 = getelementptr %"compiler/load:Module", ptr %t8, i32 0, i32 7
  %t11 = load ptr, ptr %t10, !tbaa !29
  %t14 = getelementptr %"compiler/scan:Tokens", ptr %t11, i32 0, i32 0
  %t15 = load { i64, ptr }, ptr %t14, !tbaa !27
  store { i64, ptr } %t15, ptr %l5, !tbaa !27
  %t17 = load ptr, ptr %l1, !tbaa !29
  %t19 = getelementptr %"compiler/load:Module", ptr %t17, i32 0, i32 14
  %t21 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI32_3e_2eLen_3cI32_3e(ptr %v1, ptr %t19)
  store i64 %t21, ptr %l23
  br label %bb4
bb4:
  %t22 = load i64, ptr %l23, !tbaa !24
  store i64 %t22, ptr %l6, !tbaa !24
  %t23 = load ptr, ptr %l1, !tbaa !29
  %t25 = getelementptr %"compiler/load:Module", ptr %t23, i32 0, i32 14
  %t26 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t26, ptr %l26, !tbaa !27
  %t27 = load i64, ptr %l2, !tbaa !24
  %t29 = add i64 %t27, 1
  %t31 = getelementptr { i64, ptr }, ptr %l26, i32 0, i32 1
  %t32 = load ptr, ptr %t31, !tbaa !27
  %t33 = getelementptr %"compiler/token:Token", ptr %t32, i64 %t29
  %t34 = getelementptr %"compiler/token:Token", ptr %t33, i32 0, i32 2
  %t35 = load i32, ptr %t34, !tbaa !23
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI32_3e_2ePush_3cI32_3e(ptr %v1, ptr %t25, i32 %t35)
  br label %bb5
bb5:
  %t38 = load ptr, ptr %l1, !tbaa !29
  %t40 = getelementptr %"compiler/load:Module", ptr %t38, i32 0, i32 15
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v1, ptr %t40, i64 %a4)
  br label %bb6
bb6:
  %t44 = load ptr, ptr %l1, !tbaa !29
  %t46 = getelementptr %"compiler/load:Module", ptr %t44, i32 0, i32 16
  %t47 = load i64, ptr @G_2ecompiler_2fload_2eNotYet, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v1, ptr %t46, i64 %t47)
  br label %bb7
bb7:
  %t50 = load ptr, ptr %l1, !tbaa !29
  %t52 = getelementptr %"compiler/load:Module", ptr %t50, i32 0, i32 17
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2ePush_3cBool_3e(ptr %v1, ptr %t52, i1 false)
  br label %bb8
bb8:
  %t54 = load ptr, ptr %l1, !tbaa !29
  %t56 = getelementptr %"compiler/load:Module", ptr %t54, i32 0, i32 18
  store ptr %t56, ptr %l39, !tbaa !29
  %t57 = load ptr, ptr %l1, !tbaa !29
  %t59 = getelementptr %"compiler/load:Module", ptr %t57, i32 0, i32 19
  %t61 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v1, ptr %t59)
  store i64 %t61, ptr %l42
  br label %bb9
bb9:
  %t62 = load ptr, ptr %l39, !tbaa !29
  %t63 = load i64, ptr %l42, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v1, ptr %t62, i64 %t63)
  br label %bb10
bb10:
  %t64 = load i64, ptr %l2, !tbaa !24
  store i64 %t64, ptr %l7, !tbaa !24
  store i64 0, ptr %l8, !tbaa !24
  br label %bb11
bb11:
  %t66 = load ptr, ptr %l0, !tbaa !29
  %t67 = load ptr, ptr %l1, !tbaa !29
  %t68 = load i64, ptr %l7, !tbaa !24
  %t70 = add i64 %t68, 1
  %t71 = load i64, ptr %l3, !tbaa !24
  %t76 = call i64 @compiler_2fload_2ecompiler_2fload_3aLoader_2econdEnd(ptr %v0, ptr %v1, ptr %t66, ptr %t67, i64 %t70, i64 %t71)
  store i64 %t76, ptr %l49
  br label %bb12
bb12:
  %t77 = load i64, ptr %l49, !tbaa !24
  store i64 %t77, ptr %l9, !tbaa !24
  %t78 = load i64, ptr %l9, !tbaa !24
  %t80 = icmp slt i64 %t78, 0
  br i1 %t80, label %bb13, label %bb14
bb13:
  %t82 = load i64, ptr %l7, !tbaa !24
  %t84 = add i64 %t82, 1
  store i64 %t84, ptr %rv
  br label %ret
bb14:
  br label %bb15
bb15:
  %t86 = load ptr, ptr %l1, !tbaa !29
  %t88 = getelementptr %"compiler/load:Module", ptr %t86, i32 0, i32 19
  %t89 = load i64, ptr %l7, !tbaa !24
  %t91 = add i64 %t89, 1
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v1, ptr %t88, i64 %t91)
  br label %bb16
bb16:
  %t94 = load ptr, ptr %l1, !tbaa !29
  %t96 = getelementptr %"compiler/load:Module", ptr %t94, i32 0, i32 7
  %t97 = load ptr, ptr %t96, !tbaa !29
  %t99 = icmp eq ptr %t97, null
  br i1 %t99, label %bb17, label %bb18
bb17:
  call void @__olang_check_failed(ptr @olang_loc_e83704c0903811_d990170ae1d54355)
  unreachable
bb18:
  br label %bb19
bb19:
  %t101 = load ptr, ptr %l1, !tbaa !29
  %t103 = getelementptr %"compiler/load:Module", ptr %t101, i32 0, i32 7
  %t104 = load ptr, ptr %t103, !tbaa !29
  %t105 = load i64, ptr %l9, !tbaa !24
  %t107 = trunc i64 %t105 to i32
  %t110 = call i32 @compiler_2fscan_2ecompiler_2fscan_3aTokens_2eMatch(ptr %v1, ptr %t104, i32 %t107)
  store i32 %t110, ptr %l65
  br label %bb20
bb20:
  %t111 = load i32, ptr %l65, !tbaa !23
  %t112 = sext i32 %t111 to i64
  store i64 %t112, ptr %l10, !tbaa !24
  %t114 = load i64, ptr %l10, !tbaa !24
  %t116 = icmp slt i64 %t114, 0
  br i1 %t116, label %bb21, label %bb22
bb21:
  %t118 = load i64, ptr %l3, !tbaa !24
  store i64 %t118, ptr %rv
  br label %ret
bb22:
  br label %bb23
bb23:
  %t120 = load ptr, ptr %l0, !tbaa !29
  %t121 = load ptr, ptr %l1, !tbaa !29
  %t122 = load i64, ptr %l6, !tbaa !24
  %t123 = load i64, ptr %l8, !tbaa !24
  %t128 = call i64 @compiler_2fload_2ecompiler_2fload_3aLoader_2ebranch(ptr %v0, ptr %v1, ptr %t120, ptr %t121, i64 %t122, i64 %t123)
  store i64 %t128, ptr %l74
  br label %bb24
bb24:
  %t129 = load i64, ptr %l74, !tbaa !24
  %t130 = load ptr, ptr %l0, !tbaa !29
  %t131 = load ptr, ptr %l1, !tbaa !29
  %t132 = load i64, ptr %l9, !tbaa !24
  %t134 = add i64 %t132, 1
  %t135 = load i64, ptr %l10, !tbaa !24
  call void @compiler_2fload_2ecompiler_2fload_3aLoader_2eregion(ptr %v0, ptr %v1, ptr %t130, ptr %t131, i64 %t134, i64 %t135, i64 %t129)
  br label %bb25
bb25:
  %t142 = load i64, ptr %l10, !tbaa !24
  %t144 = add i64 %t142, 1
  store i64 %t144, ptr %l7, !tbaa !24
  %t146 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t146, ptr %l83, !tbaa !27
  %t147 = load i64, ptr %l7, !tbaa !24
  %t149 = getelementptr { i64, ptr }, ptr %l83, i32 0, i32 1
  %t150 = load ptr, ptr %t149, !tbaa !27
  %t151 = getelementptr %"compiler/token:Token", ptr %t150, i64 %t147
  %t152 = getelementptr %"compiler/token:Token", ptr %t151, i32 0, i32 0
  %t153 = load i32, ptr %t152, !range !{i32 0, i32 113}
  %t155 = trunc i64 10 to i32
  %t156 = icmp eq i32 %t153, %t155
  %t158 = xor i1 %t156, true
  br i1 %t158, label %bb26, label %bb27
bb26:
  %t160 = load i64, ptr %l7, !tbaa !24
  store i64 %t160, ptr %rv
  br label %ret
bb27:
  br label %bb28
bb28:
  %t162 = load i64, ptr %l8, !tbaa !24
  %t164 = add i64 %t162, 1
  store i64 %t164, ptr %l8, !tbaa !24
  %t166 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t166, ptr %l91, !tbaa !27
  %t167 = load i64, ptr %l7, !tbaa !24
  %t169 = add i64 %t167, 1
  %t171 = getelementptr { i64, ptr }, ptr %l91, i32 0, i32 1
  %t172 = load ptr, ptr %t171, !tbaa !27
  %t173 = getelementptr %"compiler/token:Token", ptr %t172, i64 %t169
  %t174 = getelementptr %"compiler/token:Token", ptr %t173, i32 0, i32 0
  %t175 = load i32, ptr %t174, !range !{i32 0, i32 113}
  %t177 = trunc i64 9 to i32
  %t178 = icmp eq i32 %t175, %t177
  br i1 %t178, label %bb29, label %bb30
bb29:
  %t180 = load i64, ptr %l7, !tbaa !24
  %t182 = add i64 %t180, 1
  store i64 %t182, ptr %l7, !tbaa !24
  br label %bb45
bb30:
  br label %bb31
bb31:
  %t184 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t184, ptr %l98, !tbaa !27
  %t185 = load i64, ptr %l7, !tbaa !24
  %t187 = add i64 %t185, 1
  %t189 = getelementptr { i64, ptr }, ptr %l98, i32 0, i32 1
  %t190 = load ptr, ptr %t189, !tbaa !27
  %t191 = getelementptr %"compiler/token:Token", ptr %t190, i64 %t187
  %t192 = getelementptr %"compiler/token:Token", ptr %t191, i32 0, i32 0
  %t193 = load i32, ptr %t192, !range !{i32 0, i32 113}
  %t195 = trunc i64 111 to i32
  %t196 = icmp eq i32 %t193, %t195
  %t198 = xor i1 %t196, true
  br i1 %t198, label %bb32, label %bb33
bb32:
  %t200 = load i64, ptr %l7, !tbaa !24
  %t202 = add i64 %t200, 1
  store i64 %t202, ptr %rv
  br label %ret
bb33:
  br label %bb34
bb34:
  %t204 = load ptr, ptr %l1, !tbaa !29
  %t206 = getelementptr %"compiler/load:Module", ptr %t204, i32 0, i32 7
  %t207 = load ptr, ptr %t206, !tbaa !29
  %t209 = icmp eq ptr %t207, null
  br i1 %t209, label %bb35, label %bb36
bb35:
  call void @__olang_check_failed(ptr @olang_loc_766ae0e3e1f9b91c_7764041251e8a940)
  unreachable
bb36:
  br label %bb37
bb37:
  %t211 = load ptr, ptr %l1, !tbaa !29
  %t213 = getelementptr %"compiler/load:Module", ptr %t211, i32 0, i32 7
  %t214 = load ptr, ptr %t213, !tbaa !29
  %t215 = load i64, ptr %l7, !tbaa !24
  %t217 = add i64 %t215, 1
  %t219 = trunc i64 %t217 to i32
  %t222 = call i32 @compiler_2fscan_2ecompiler_2fscan_3aTokens_2eMatch(ptr %v1, ptr %t214, i32 %t219)
  store i32 %t222, ptr %l114
  br label %bb38
bb38:
  %t223 = load i32, ptr %l114, !tbaa !23
  %t224 = sext i32 %t223 to i64
  store i64 %t224, ptr %l12, !tbaa !24
  %t226 = load i64, ptr %l12, !tbaa !24
  %t228 = icmp slt i64 %t226, 0
  br i1 %t228, label %bb39, label %bb40
bb39:
  %t230 = load i64, ptr %l3, !tbaa !24
  store i64 %t230, ptr %rv
  br label %ret
bb40:
  br label %bb41
bb41:
  %t232 = load ptr, ptr %l1, !tbaa !29
  %t234 = getelementptr %"compiler/load:Module", ptr %t232, i32 0, i32 17
  %t235 = load i64, ptr %l6, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eSetAt_3cBool_3e(ptr %v1, ptr %t234, i64 %t235, i1 true)
  br label %bb42
bb42:
  %t238 = load ptr, ptr %l0, !tbaa !29
  %t239 = load ptr, ptr %l1, !tbaa !29
  %t240 = load i64, ptr %l6, !tbaa !24
  %t241 = load i64, ptr %l8, !tbaa !24
  %t246 = call i64 @compiler_2fload_2ecompiler_2fload_3aLoader_2ebranch(ptr %v0, ptr %v1, ptr %t238, ptr %t239, i64 %t240, i64 %t241)
  store i64 %t246, ptr %l126
  br label %bb43
bb43:
  %t247 = load i64, ptr %l126, !tbaa !24
  %t248 = load ptr, ptr %l0, !tbaa !29
  %t249 = load ptr, ptr %l1, !tbaa !29
  %t250 = load i64, ptr %l7, !tbaa !24
  %t252 = add i64 %t250, 2
  %t253 = load i64, ptr %l12, !tbaa !24
  call void @compiler_2fload_2ecompiler_2fload_3aLoader_2eregion(ptr %v0, ptr %v1, ptr %t248, ptr %t249, i64 %t252, i64 %t253, i64 %t247)
  br label %bb44
bb44:
  %t260 = load i64, ptr %l12, !tbaa !24
  %t262 = add i64 %t260, 1
  store i64 %t262, ptr %rv
  br label %ret
bb45:
  br label %bb11
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
  %t3 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t1, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d205, i32 0, i32 1) })
  store i1 %t3, ptr %l4
  br label %bb1
bb1:
  %t4 = load i1, ptr %l4, !tbaa !21
  br i1 %t4, label %bb2, label %bb3
bb2:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d206, i32 0, i32 1) }, ptr %l5, !tbaa !27
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
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d207, i32 0, i32 1) }, ptr %l9, !tbaa !27
  br label %bb11
bb11:
  %t43 = load { i64, ptr }, ptr %l9, !tbaa !27
  store { i64, ptr } %t43, ptr %l1, !tbaa !27
  %t44 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t46 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %s0, { i64, ptr } %t44, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d208, i32 0, i32 1) })
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
  %t90 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d209, i32 0, i32 1) }, 1
  %t91 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d209, i32 0, i32 1) }, 0
  %t92 = add i64 %t89, %t91
  %t94 = call i64 @__olang_fmt_i64(ptr null, i64 %t84)
  %t95 = add i64 %t92, %t94
  %t96 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d209, i32 0, i32 1) }, 1
  %t97 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d209, i32 0, i32 1) }, 0
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

define dso_local { i64, ptr } @compiler_2fload_2efirstElems(ptr %v0, ptr %v1, { i64, ptr } %a0, i64 %a1) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l2 = alloca i64
  %l3 = alloca { i64, ptr }
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l16 = alloca { i64, ptr }
  %l26 = alloca { i64, ptr }
  %l27 = alloca i64
  %l28 = alloca i64
  %l35 = alloca { i64, ptr }
  %l38 = alloca i64
  %l39 = alloca i64
  %rv = alloca { i64, ptr }
  store { i64, ptr } %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store i64 0, ptr %l2, !tbaa !24
  %t1 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t1, ptr %l3, !tbaa !27
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
  br label %bb18
bb3:
  br label %bb4
bb4:
  %t15 = load i64, ptr %l4, !tbaa !24
  store i64 %t15, ptr %l6, !tbaa !24
  %t17 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t17, ptr %l16, !tbaa !27
  %t18 = load i64, ptr %l4, !tbaa !24
  %t20 = getelementptr { i64, ptr }, ptr %l16, i32 0, i32 1
  %t21 = load ptr, ptr %t20, !tbaa !27
  %t22 = getelementptr i8, ptr %t21, i64 %t18
  %t23 = load i8, ptr %t22, !tbaa !32
  %t27 = icmp eq i8 %t23, 47
  br i1 %t27, label %bb5, label %bb6
bb5:
  %t29 = load i64, ptr %l2, !tbaa !24
  %t31 = add i64 %t29, 1
  store i64 %t31, ptr %l2, !tbaa !24
  %t33 = load i64, ptr %l2, !tbaa !24
  %t37 = icmp eq i64 %t33, %a1
  br i1 %t37, label %bb7, label %bb8
bb6:
  br label %bb16
bb7:
  %t39 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t39, ptr %l26, !tbaa !27
  %t40 = load i64, ptr %l6, !tbaa !24
  store i64 %t40, ptr %l27, !tbaa !24
  %t41 = load { i64, ptr }, ptr %l26, !tbaa !27
  %t42 = extractvalue { i64, ptr } %t41, 0
  store i64 %t42, ptr %l28, !tbaa !24
  %t43 = icmp sge i64 0, 0
  br i1 %t43, label %bb9, label %bb10
bb8:
  br label %bb15
bb9:
  %t45 = load i64, ptr %l27, !tbaa !24
  %t46 = icmp sle i64 0, %t45
  br i1 %t46, label %bb11, label %bb12
bb10:
  call void @__olang_check_failed(ptr @olang_loc_4f7ff751eb66f618_e3b0711c9f747694)
  unreachable
bb11:
  %t48 = load i64, ptr %l27, !tbaa !24
  %t49 = load i64, ptr %l28, !tbaa !24
  %t50 = icmp sle i64 %t48, %t49
  br i1 %t50, label %bb13, label %bb14
bb12:
  call void @__olang_check_failed(ptr @olang_loc_4f7ff751eb66f618_e3b0711c9f747694)
  unreachable
bb13:
  %t52 = getelementptr { i64, ptr }, ptr %l26, i32 0, i32 1
  %t53 = load ptr, ptr %t52, !tbaa !27
  %t54 = load i64, ptr %l27, !tbaa !24
  %t55 = getelementptr i8, ptr %t53, i64 0
  %t56 = sub i64 %t54, 0
  %t57 = insertvalue { i64, ptr } undef, i64 %t56, 0
  %t58 = insertvalue { i64, ptr } %t57, ptr %t55, 1
  store { i64, ptr } %t58, ptr %rv
  br label %ret
bb14:
  call void @__olang_check_failed(ptr @olang_loc_4f7ff751eb66f618_e3b0711c9f747694)
  unreachable
bb15:
  br label %bb16
bb16:
  br label %bb17
bb17:
  %t60 = load i64, ptr %l4, !tbaa !24
  %t62 = add i64 %t60, 1
  store i64 %t62, ptr %l4, !tbaa !24
  br label %bb1
bb18:
  %t64 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t64, ptr %l35, !tbaa !27
  %t65 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t68 = extractvalue { i64, ptr } %t65, 0
  store i64 %t68, ptr %l38, !tbaa !24
  %t69 = load { i64, ptr }, ptr %l35, !tbaa !27
  %t70 = extractvalue { i64, ptr } %t69, 0
  store i64 %t70, ptr %l39, !tbaa !24
  %t71 = icmp sge i64 0, 0
  br i1 %t71, label %bb19, label %bb20
bb19:
  %t73 = load i64, ptr %l38, !tbaa !24
  %t74 = icmp sle i64 0, %t73
  br i1 %t74, label %bb21, label %bb22
bb20:
  call void @__olang_check_failed(ptr @olang_loc_4fa7c22e4d470d75_c9a9030dc047401)
  unreachable
bb21:
  %t76 = load i64, ptr %l38, !tbaa !24
  %t77 = load i64, ptr %l39, !tbaa !24
  %t78 = icmp sle i64 %t76, %t77
  br i1 %t78, label %bb23, label %bb24
bb22:
  call void @__olang_check_failed(ptr @olang_loc_4fa7c22e4d470d75_c9a9030dc047401)
  unreachable
bb23:
  %t80 = getelementptr { i64, ptr }, ptr %l35, i32 0, i32 1
  %t81 = load ptr, ptr %t80, !tbaa !27
  %t82 = load i64, ptr %l38, !tbaa !24
  %t83 = getelementptr i8, ptr %t81, i64 0
  %t84 = sub i64 %t82, 0
  %t85 = insertvalue { i64, ptr } undef, i64 %t84, 0
  %t86 = insertvalue { i64, ptr } %t85, ptr %t83, 1
  store { i64, ptr } %t86, ptr %rv
  br label %ret
bb24:
  call void @__olang_check_failed(ptr @olang_loc_4fa7c22e4d470d75_c9a9030dc047401)
  unreachable
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local i1 @compiler_2fload_2egit(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1) #0 {
entry:
  %l2 = alloca %"std/os:Output"
  %l3 = alloca %"std/os:Output"
  %l5 = alloca { i64, ptr }
  %l7 = alloca %"std/os:Output"
  %l8 = alloca i32
  %l10 = alloca i1
  %s0 = alloca %olang.scope
  %rv = alloca i1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d210, i32 0, i32 1) }, ptr %l5, !tbaa !27
  %t4 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t6 = call { i32, %"std/os:Output" } @std_2fos_2eOutput_2eExec(ptr %v1, ptr %s0, ptr %v0, ptr %s0, { i64, ptr } %a1, { i64, ptr } %t4, i1 true, { i64, ptr } %a0)
  %t7 = extractvalue { i32, %"std/os:Output" } %t6, 1
  %t8 = extractvalue { i32, %"std/os:Output" } %t6, 0
  store i32 %t8, ptr %l8
  %t9 = icmp ne i32 %t8, 0
  br i1 %t9, label %bb2, label %ok.10, !prof !99
ok.10:
  store %"std/os:Output" %t7, ptr %l7
  br label %bb1
bb1:
  %t11 = load %"std/os:Output", ptr %l7
  store %"std/os:Output" %t11, ptr %l3
  br label %bb6
bb2:
  %t12 = load i32, ptr %l8, !tbaa !23
  %t13 = ashr i32 %t12, 16
  %t15 = icmp eq i32 %t13, 1
  store i1 %t15, ptr %l10, !tbaa !21
  %t16 = load i32, ptr %l8, !tbaa !23
  %t17 = ashr i32 %t16, 16
  %t19 = icmp eq i32 %t17, 1
  br i1 %t19, label %bb3, label %bb4
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
  %t22 = load %"std/os:Output", ptr %l3
  store %"std/os:Output" %t22, ptr %l2
  %t23 = getelementptr %"std/os:Output", ptr %l2, i32 0, i32 0
  %t24 = load i32, ptr %t23, !tbaa !23
  %t26 = icmp eq i32 %t24, 0
  call void @__olang_scope_close(ptr %s0)
  store i1 %t26, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i1 @compiler_2fload_2eifLinks(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l5 = alloca i1
  %l13 = alloca i1
  %l19 = alloca i1
  %l25 = alloca i1
  %l31 = alloca i1
  %l39 = alloca i1
  %rv = alloca i1
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/ast:TopIf", ptr %t1, i32 0, i32 1
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t6 = icmp eq ptr %t4, null
  %t8 = xor i1 %t6, true
  br i1 %t8, label %bb1, label %bb2
bb1:
  %t10 = load ptr, ptr %l0, !tbaa !29
  %t12 = getelementptr %"compiler/ast:TopIf", ptr %t10, i32 0, i32 1
  %t13 = load ptr, ptr %t12, !tbaa !29
  %t15 = icmp eq ptr %t13, null
  br i1 %t15, label %bb3, label %bb4
bb2:
  store i1 false, ptr %l5, !tbaa !21
  br label %bb7
bb3:
  call void @__olang_check_failed(ptr @olang_loc_9030b146fc4de6e4_df02f4157fd8ffa0)
  unreachable
bb4:
  br label %bb5
bb5:
  %t17 = load ptr, ptr %l0, !tbaa !29
  %t19 = getelementptr %"compiler/ast:TopIf", ptr %t17, i32 0, i32 1
  %t20 = load ptr, ptr %t19, !tbaa !29
  %t23 = getelementptr %"compiler/ast:TopBranch", ptr %t20, i32 0, i32 1
  %t24 = load { i64, ptr }, ptr %t23, !tbaa !27
  %t26 = call i1 @compiler_2fload_2edeclsLink(ptr %v0, { i64, ptr } %t24)
  store i1 %t26, ptr %l13
  br label %bb6
bb6:
  %t27 = load i1, ptr %l13, !tbaa !21
  store i1 %t27, ptr %l5, !tbaa !21
  br label %bb7
bb7:
  %t28 = load i1, ptr %l5, !tbaa !21
  br i1 %t28, label %bb8, label %bb9
bb8:
  store i1 true, ptr %rv
  br label %ret
bb9:
  br label %bb10
bb10:
  %t30 = load ptr, ptr %l0, !tbaa !29
  %t32 = getelementptr %"compiler/ast:TopIf", ptr %t30, i32 0, i32 2
  %t33 = load ptr, ptr %t32, !tbaa !29
  %t35 = icmp eq ptr %t33, null
  %t37 = xor i1 %t35, true
  br i1 %t37, label %bb11, label %bb12
bb11:
  %t39 = load ptr, ptr %l0, !tbaa !29
  %t41 = getelementptr %"compiler/ast:TopIf", ptr %t39, i32 0, i32 2
  %t42 = load ptr, ptr %t41, !tbaa !29
  %t44 = icmp eq ptr %t42, null
  br i1 %t44, label %bb13, label %bb14
bb12:
  store i1 false, ptr %l19, !tbaa !21
  br label %bb17
bb13:
  call void @__olang_check_failed(ptr @olang_loc_37cfce4d2d6116b3_dac403d93f0f31bf)
  unreachable
bb14:
  br label %bb15
bb15:
  %t46 = load ptr, ptr %l0, !tbaa !29
  %t48 = getelementptr %"compiler/ast:TopIf", ptr %t46, i32 0, i32 2
  %t49 = load ptr, ptr %t48, !tbaa !29
  %t51 = call i1 @compiler_2fload_2eifLinks(ptr %v0, ptr %t49)
  store i1 %t51, ptr %l25
  br label %bb16
bb16:
  %t52 = load i1, ptr %l25, !tbaa !21
  store i1 %t52, ptr %l19, !tbaa !21
  br label %bb17
bb17:
  %t53 = load i1, ptr %l19, !tbaa !21
  br i1 %t53, label %bb18, label %bb19
bb18:
  store i1 true, ptr %rv
  br label %ret
bb19:
  br label %bb20
bb20:
  %t55 = load ptr, ptr %l0, !tbaa !29
  %t57 = getelementptr %"compiler/ast:TopIf", ptr %t55, i32 0, i32 3
  %t58 = load ptr, ptr %t57, !tbaa !29
  %t60 = icmp eq ptr %t58, null
  %t62 = xor i1 %t60, true
  br i1 %t62, label %bb21, label %bb22
bb21:
  %t64 = load ptr, ptr %l0, !tbaa !29
  %t66 = getelementptr %"compiler/ast:TopIf", ptr %t64, i32 0, i32 3
  %t67 = load ptr, ptr %t66, !tbaa !29
  %t69 = icmp eq ptr %t67, null
  br i1 %t69, label %bb23, label %bb24
bb22:
  store i1 false, ptr %l31, !tbaa !21
  br label %bb27
bb23:
  call void @__olang_check_failed(ptr @olang_loc_eaa065d2073c0672_9cd5a42be91f6f0e)
  unreachable
bb24:
  br label %bb25
bb25:
  %t71 = load ptr, ptr %l0, !tbaa !29
  %t73 = getelementptr %"compiler/ast:TopIf", ptr %t71, i32 0, i32 3
  %t74 = load ptr, ptr %t73, !tbaa !29
  %t77 = getelementptr %"compiler/ast:TopBranch", ptr %t74, i32 0, i32 1
  %t78 = load { i64, ptr }, ptr %t77, !tbaa !27
  %t80 = call i1 @compiler_2fload_2edeclsLink(ptr %v0, { i64, ptr } %t78)
  store i1 %t80, ptr %l39
  br label %bb26
bb26:
  %t81 = load i1, ptr %l39, !tbaa !21
  store i1 %t81, ptr %l31, !tbaa !21
  br label %bb27
bb27:
  %t82 = load i1, ptr %l31, !tbaa !21
  store i1 %t82, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
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
  %t21 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d211, i32 0, i32 1) }, 1
  %t22 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d211, i32 0, i32 1) }, 0
  %t23 = add i64 %t20, %t22
  %t24 = load i32, ptr %l12, !tbaa !23
  %t25 = sext i32 %t24 to i64
  %t26 = call i64 @__olang_fmt_i64(ptr null, i64 %t25)
  %t27 = add i64 %t23, %t26
  %t28 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d212, i32 0, i32 1) }, 1
  %t29 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d212, i32 0, i32 1) }, 0
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
  %t19 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d213, i32 0, i32 1) }, 1
  %t20 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d213, i32 0, i32 1) }, 0
  %t21 = add i64 %t18, %t20
  %t23 = extractvalue { i64, ptr } %t10, 1
  %t24 = extractvalue { i64, ptr } %t10, 0
  %t25 = add i64 %t21, %t24
  %t26 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d213, i32 0, i32 1) }, 1
  %t27 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d213, i32 0, i32 1) }, 0
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
  %t3 = call { i32, i64 } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eFindLast(ptr %v0, ptr %s0, { i64, ptr } %t1, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d214, i32 0, i32 1) })
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
  store { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d215, i32 0, i32 1) }, ptr %l6, !tbaa !27
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
  store { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d216, i32 0, i32 1) }, ptr %l12, !tbaa !27
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

define dso_local { i64, ptr } @compiler_2fload_2erelativeIdentity(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l1 = alloca { i64, ptr }
  %l2 = alloca i64
  %l3 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i32
  %l10 = alloca { i64, ptr }
  %l11 = alloca { i64, ptr }
  %l12 = alloca i64
  %l13 = alloca i64
  %l21 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  store { i64, ptr } %a0, ptr %l0
  store { i64, ptr } %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t3 = call { i32, i64 } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eFindLast(ptr %v0, ptr %s0, { i64, ptr } %t1, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d217, i32 0, i32 1) })
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
  store i64 %t9, ptr %l2, !tbaa !24
  %t10 = load i64, ptr %l2, !tbaa !24
  %t12 = icmp slt i64 %t10, 0
  br i1 %t12, label %bb5, label %bb6
bb5:
  %t14 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t16 = call { i64, ptr } @compiler_2fload_2eNormalize(ptr %v1, ptr %v2, { i64, ptr } %t14)
  store { i64, ptr } %t16, ptr %l10
  br label %bb7
bb6:
  br label %bb8
bb7:
  call void @__olang_scope_close(ptr %s0)
  %t17 = load { i64, ptr }, ptr %l10, !tbaa !27
  store { i64, ptr } %t17, ptr %rv
  br label %ret
bb8:
  %t18 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t18, ptr %l11, !tbaa !27
  %t19 = load i64, ptr %l2, !tbaa !24
  store i64 %t19, ptr %l12, !tbaa !24
  %t20 = load { i64, ptr }, ptr %l11, !tbaa !27
  %t21 = extractvalue { i64, ptr } %t20, 0
  store i64 %t21, ptr %l13, !tbaa !24
  %t22 = icmp sge i64 0, 0
  br i1 %t22, label %bb9, label %bb10
bb9:
  %t24 = load i64, ptr %l12, !tbaa !24
  %t25 = icmp sle i64 0, %t24
  br i1 %t25, label %bb11, label %bb12
bb10:
  call void @__olang_check_failed(ptr @olang_loc_738c5ab5e9ce8338_c044a83eb6fe7eb4)
  unreachable
bb11:
  %t27 = load i64, ptr %l12, !tbaa !24
  %t28 = load i64, ptr %l13, !tbaa !24
  %t29 = icmp sle i64 %t27, %t28
  br i1 %t29, label %bb13, label %bb14
bb12:
  call void @__olang_check_failed(ptr @olang_loc_738c5ab5e9ce8338_c044a83eb6fe7eb4)
  unreachable
bb13:
  %t31 = getelementptr { i64, ptr }, ptr %l11, i32 0, i32 1
  %t32 = load ptr, ptr %t31, !tbaa !27
  %t33 = load i64, ptr %l12, !tbaa !24
  %t34 = getelementptr i8, ptr %t32, i64 0
  %t35 = sub i64 %t33, 0
  %t36 = insertvalue { i64, ptr } undef, i64 %t35, 0
  %t37 = insertvalue { i64, ptr } %t36, ptr %t34, 1
  %t38 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t40 = extractvalue { i64, ptr } %t37, 1
  %t41 = extractvalue { i64, ptr } %t37, 0
  %t42 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d218, i32 0, i32 1) }, 1
  %t43 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d218, i32 0, i32 1) }, 0
  %t44 = add i64 %t41, %t43
  %t46 = extractvalue { i64, ptr } %t38, 1
  %t47 = extractvalue { i64, ptr } %t38, 0
  %t48 = add i64 %t44, %t47
  %t49 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t48)
  call void @olang_textcopy(ptr %t49, ptr %t40, i64 %t41)
  %t50 = getelementptr i8, ptr %t49, i64 %t41
  call void @olang_textcopy(ptr %t50, ptr %t42, i64 %t43)
  %t51 = getelementptr i8, ptr %t50, i64 %t43
  call void @olang_textcopy(ptr %t51, ptr %t46, i64 %t47)
  %t52 = insertvalue { i64, ptr } undef, i64 %t48, 0
  %t53 = insertvalue { i64, ptr } %t52, ptr %t49, 1
  %t55 = extractvalue { i64, ptr } %t53, 0
  %t56 = extractvalue { i64, ptr } %t53, 1
  %t57 = mul i64 %t55, 1
  %t58 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t57)
  call void @llvm.memcpy.p0.p0.i64(ptr %t58, ptr %t56, i64 %t57, i1 false)
  %t59 = insertvalue { i64, ptr } undef, i64 %t55, 0
  %t60 = insertvalue { i64, ptr } %t59, ptr %t58, 1
  %t62 = call { i64, ptr } @compiler_2fload_2eNormalize(ptr %v2, ptr %v2, { i64, ptr } %t60)
  store { i64, ptr } %t62, ptr %l21
  br label %bb15
bb14:
  call void @__olang_check_failed(ptr @olang_loc_738c5ab5e9ce8338_c044a83eb6fe7eb4)
  unreachable
bb15:
  call void @__olang_scope_close(ptr %s0)
  %t63 = load { i64, ptr }, ptr %l21, !tbaa !27
  store { i64, ptr } %t63, ptr %rv
  br label %ret
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

define dso_local ptr @compiler_2fload_2etypeNames(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, ptr %a1) #0 {
entry:
  %l2 = alloca ptr
  %l3 = alloca { i64, ptr }
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i32
  %l11 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l21 = alloca i64
  %l24 = alloca i64
  %l42 = alloca { i64, ptr }
  %l45 = alloca { i64, ptr }
  %l53 = alloca ptr
  %l54 = alloca { i64, ptr }
  %l55 = alloca { i64, ptr }
  %l59 = alloca i64
  %l60 = alloca { i64, ptr }
  %l64 = alloca i64
  %l65 = alloca i64
  %rv = alloca ptr
  br label %start
start:
  br label %bb0
bb0:
  %t1 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2ector(ptr %v2, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1, ptr %l11
  br label %bb1
bb1:
  %t2 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l11
  %t3 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 32, i64 8)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t2, ptr %t3
  store ptr %t3, ptr %l2, !tbaa !29
  %t7 = getelementptr %"compiler/scan:Tokens", ptr %a1, i32 0, i32 0
  %t8 = load { i64, ptr }, ptr %t7, !tbaa !27
  store { i64, ptr } %t8, ptr %l3, !tbaa !27
  store i64 0, ptr %l4, !tbaa !24
  %t10 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t12 = extractvalue { i64, ptr } %t10, 0
  %t14 = sub i64 %t12, 2
  store i64 %t14, ptr %l5, !tbaa !24
  store i64 1, ptr %l6, !tbaa !24
  %t16 = load i64, ptr %l5, !tbaa !24
  %t17 = load i64, ptr %l4, !tbaa !24
  %t20 = icmp sgt i64 %t16, %t17
  br i1 %t20, label %bb2, label %bb3
bb2:
  %t22 = load i64, ptr %l6, !tbaa !24
  %t24 = icmp sgt i64 %t22, 0
  br i1 %t24, label %bb4, label %bb5
bb3:
  store i64 0, ptr %l21, !tbaa !24
  br label %bb7
bb4:
  %t26 = load i64, ptr %l5, !tbaa !24
  %t27 = load i64, ptr %l4, !tbaa !24
  %t30 = sub i64 %t26, %t27
  %t31 = load i64, ptr %l6, !tbaa !24
  %t34 = add i64 %t30, %t31
  %t36 = sub i64 %t34, 1
  %t37 = load i64, ptr %l6, !tbaa !24
  %t40 = sdiv i64 %t36, %t37
  store i64 %t40, ptr %l24, !tbaa !24
  br label %bb6
bb5:
  store i64 0, ptr %l24, !tbaa !24
  br label %bb6
bb6:
  %t42 = load i64, ptr %l24, !tbaa !24
  store i64 %t42, ptr %l21, !tbaa !24
  br label %bb7
bb7:
  %t43 = load i64, ptr %l21, !tbaa !24
  store i64 %t43, ptr %l7, !tbaa !24
  store i64 0, ptr %l8, !tbaa !24
  br label %bb8
bb8:
  %t44 = load i64, ptr %l8, !tbaa !24
  %t45 = load i64, ptr %l7, !tbaa !24
  %t48 = icmp slt i64 %t44, %t45
  %t50 = xor i1 %t48, true
  br i1 %t50, label %bb9, label %bb10
bb9:
  br label %bb26
bb10:
  br label %bb11
bb11:
  %t52 = load i64, ptr %l4, !tbaa !24
  %t53 = load i64, ptr %l8, !tbaa !24
  %t54 = load i64, ptr %l6, !tbaa !24
  %t57 = mul i64 %t53, %t54
  %t60 = add i64 %t52, %t57
  store i64 %t60, ptr %l9, !tbaa !24
  %t62 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t62, ptr %l42, !tbaa !27
  %t63 = load i64, ptr %l9, !tbaa !24
  %t65 = getelementptr { i64, ptr }, ptr %l42, i32 0, i32 1
  %t66 = load ptr, ptr %t65, !tbaa !27
  %t67 = getelementptr %"compiler/token:Token", ptr %t66, i64 %t63
  %t68 = getelementptr %"compiler/token:Token", ptr %t67, i32 0, i32 0
  %t69 = load i32, ptr %t68, !range !{i32 0, i32 113}
  store i32 %t69, ptr %l10
  %t71 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t71, ptr %l45, !tbaa !27
  %t72 = load i64, ptr %l9, !tbaa !24
  %t74 = add i64 %t72, 1
  %t76 = getelementptr { i64, ptr }, ptr %l45, i32 0, i32 1
  %t77 = load ptr, ptr %t76, !tbaa !27
  %t78 = getelementptr %"compiler/token:Token", ptr %t77, i64 %t74
  %t79 = getelementptr %"compiler/token:Token", ptr %t78, i32 0, i32 0
  %t80 = load i32, ptr %t79, !range !{i32 0, i32 113}
  %t82 = trunc i64 1 to i32
  %t83 = icmp eq i32 %t80, %t82
  %t85 = xor i1 %t83, true
  br i1 %t85, label %bb12, label %bb13
bb12:
  br label %bb25
bb13:
  br label %bb14
bb14:
  %t87 = load i32, ptr %l10, !range !{i32 0, i32 113}
  %t89 = trunc i64 32 to i32
  %t90 = icmp eq i32 %t87, %t89
  br i1 %t90, label %bb15, label %bb16
bb15:
  %t92 = load ptr, ptr %l2, !tbaa !29
  store ptr %t92, ptr %l53, !tbaa !29
  store { i64, ptr } %a0, ptr %l54, !tbaa !27
  %t94 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t94, ptr %l55, !tbaa !27
  %t95 = load i64, ptr %l9, !tbaa !24
  %t97 = add i64 %t95, 1
  %t99 = getelementptr { i64, ptr }, ptr %l55, i32 0, i32 1
  %t100 = load ptr, ptr %t99, !tbaa !27
  %t101 = getelementptr %"compiler/token:Token", ptr %t100, i64 %t97
  %t102 = getelementptr %"compiler/token:Token", ptr %t101, i32 0, i32 2
  %t103 = load i32, ptr %t102, !tbaa !23
  %t105 = sext i32 %t103 to i64
  store i64 %t105, ptr %l59, !tbaa !24
  %t106 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t106, ptr %l60, !tbaa !27
  %t107 = load i64, ptr %l9, !tbaa !24
  %t109 = add i64 %t107, 1
  %t111 = getelementptr { i64, ptr }, ptr %l60, i32 0, i32 1
  %t112 = load ptr, ptr %t111, !tbaa !27
  %t113 = getelementptr %"compiler/token:Token", ptr %t112, i64 %t109
  %t114 = getelementptr %"compiler/token:Token", ptr %t113, i32 0, i32 3
  %t115 = load i32, ptr %t114, !tbaa !23
  %t117 = sext i32 %t115 to i64
  store i64 %t117, ptr %l64, !tbaa !24
  %t118 = load { i64, ptr }, ptr %l54, !tbaa !27
  %t119 = extractvalue { i64, ptr } %t118, 0
  store i64 %t119, ptr %l65, !tbaa !24
  %t120 = load i64, ptr %l59, !tbaa !24
  %t121 = icmp sge i64 %t120, 0
  br i1 %t121, label %bb17, label %bb18
bb16:
  br label %bb24
bb17:
  %t123 = load i64, ptr %l59, !tbaa !24
  %t124 = load i64, ptr %l64, !tbaa !24
  %t125 = icmp sle i64 %t123, %t124
  br i1 %t125, label %bb19, label %bb20
bb18:
  call void @__olang_check_failed(ptr @olang_loc_61485bf8b9fa4014_95a81608270a26e0)
  unreachable
bb19:
  %t127 = load i64, ptr %l64, !tbaa !24
  %t128 = load i64, ptr %l65, !tbaa !24
  %t129 = icmp sle i64 %t127, %t128
  br i1 %t129, label %bb21, label %bb22
bb20:
  call void @__olang_check_failed(ptr @olang_loc_61485bf8b9fa4014_95a81608270a26e0)
  unreachable
bb21:
  %t131 = getelementptr { i64, ptr }, ptr %l54, i32 0, i32 1
  %t132 = load ptr, ptr %t131, !tbaa !27
  %t133 = load i64, ptr %l59, !tbaa !24
  %t134 = load i64, ptr %l64, !tbaa !24
  %t135 = getelementptr i8, ptr %t132, i64 %t133
  %t136 = sub i64 %t134, %t133
  %t137 = insertvalue { i64, ptr } undef, i64 %t136, 0
  %t138 = insertvalue { i64, ptr } %t137, ptr %t135, 1
  %t139 = load ptr, ptr %l53, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v2, ptr %v0, ptr %t139, { i64, ptr } %t138)
  br label %bb23
bb22:
  call void @__olang_check_failed(ptr @olang_loc_61485bf8b9fa4014_95a81608270a26e0)
  unreachable
bb23:
  br label %bb24
bb24:
  br label %bb25
bb25:
  %t141 = load i64, ptr %l8, !tbaa !24
  %t143 = add i64 %t141, 1
  store i64 %t143, ptr %l8, !tbaa !24
  br label %bb8
bb26:
  %t145 = load ptr, ptr %l2, !tbaa !29
  store ptr %t145, ptr %rv
  br label %ret
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
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
  %t6 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d219, i32 0, i32 1) }, 1
  %t7 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d219, i32 0, i32 1) }, 0
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

define dso_local %"compiler/load:Import" @compiler_2fload_3aImport_2ector(ptr %v0, ptr %v1, ptr %v2, %"compiler/source:Span" %a0, %"compiler/source:Span" %a1, { i64, ptr } %a2, { i64, ptr } %a3, i64 %a4) #0 {
entry:
  %l5 = alloca %"compiler/source:Span"
  %l6 = alloca %"compiler/source:Span"
  %l7 = alloca { i64, ptr }
  %l8 = alloca { i64, ptr }
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca { i64, ptr }
  %l18 = alloca %"compiler/source:Span"
  %rv = alloca %"compiler/load:Import"
  br label %start
start:
  br label %bb0
bb0:
  store %"compiler/source:Span" %a0, ptr %l5
  store %"compiler/source:Span" %a1, ptr %l6
  store { i64, ptr } %a2, ptr %l7, !tbaa !27
  store { i64, ptr } %a3, ptr %l8, !tbaa !27
  store i64 %a4, ptr %l9, !tbaa !24
  store i64 -1, ptr %l10, !tbaa !24
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d220, i32 0, i32 1) }, ptr %l11, !tbaa !27
  %t11 = call %"compiler/source:Span" @compiler_2fsource_3aSpan_2ector(ptr %v2, i32 0, i32 0)
  store %"compiler/source:Span" %t11, ptr %l18
  br label %bb1
bb1:
  %t12 = load %"compiler/source:Span", ptr %l18
  %t13 = load %"compiler/source:Span", ptr %l5
  %t14 = insertvalue %"compiler/load:Import" undef, %"compiler/source:Span" %t13, 0
  %t15 = load %"compiler/source:Span", ptr %l6
  %t16 = insertvalue %"compiler/load:Import" %t14, %"compiler/source:Span" %t15, 1
  %t17 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t18 = insertvalue %"compiler/load:Import" %t16, { i64, ptr } %t17, 2
  %t19 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t20 = insertvalue %"compiler/load:Import" %t18, { i64, ptr } %t19, 3
  %t21 = load i64, ptr %l9, !tbaa !24
  %t22 = insertvalue %"compiler/load:Import" %t20, i64 %t21, 4
  %t23 = load i64, ptr %l10, !tbaa !24
  %t24 = insertvalue %"compiler/load:Import" %t22, i64 %t23, 5
  %t25 = load { i64, ptr }, ptr %l11, !tbaa !27
  %t26 = insertvalue %"compiler/load:Import" %t24, { i64, ptr } %t25, 6
  %t28 = insertvalue %"compiler/load:Import" %t26, %"compiler/source:Span" %t12, 7
  store %"compiler/load:Import" %t28, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/load:Import", ptr %rv
  ret %"compiler/load:Import" %rr
}

define dso_local void @compiler_2fload_3aLoader_2ector(ptr %out, ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %v5, { i64, ptr } %a0, ptr %a1, ptr %a2, ptr %a3, ptr %a4) #0 {
entry:
  %l5 = alloca { i64, ptr }
  %l6 = alloca ptr
  %l7 = alloca ptr
  %l8 = alloca ptr
  %l9 = alloca ptr
  %l10 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l11 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l12 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l13 = alloca i1
  %l14 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l15 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l16 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l17 = alloca i64
  %l18 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l19 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l20 = alloca { i64, ptr }
  %l21 = alloca { i64, ptr }
  %l22 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l23 = alloca i1
  %l24 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l25 = alloca { i64, ptr }
  %l32 = alloca i64
  %l34 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l36 = alloca i64
  %l38 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l40 = alloca i64
  %l42 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l44 = alloca i64
  %l46 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l48 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l49 = alloca i64
  %l51 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l53 = alloca i64
  %l55 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l57 = alloca i64
  %l59 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l61 = alloca i64
  %l63 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l65 = alloca i64
  %l67 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l69 = alloca i64
  %l71 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l73 = alloca %"compiler/load:Loader"
  br label %start
start:
  br label %bb0
bb0:
  store { i64, ptr } %a0, ptr %l5, !tbaa !27
  store ptr %a1, ptr %l6, !tbaa !29
  store ptr %a2, ptr %l7, !tbaa !29
  store ptr %a3, ptr %l8, !tbaa !29
  store ptr %a4, ptr %l9, !tbaa !29
  %t11 = ptrtoint ptr %v5 to i64
  store i64 %t11, ptr %l32, !tbaa !24
  %t12 = load i1, ptr @olang_2esole_2ecompiler_2fload_3aLoader_2e5
  br i1 %t12, label %bb1, label %bb2
bb1:
  %t14 = call ptr @__olang_region_make(ptr %v5)
  %t15 = ptrtoint ptr %t14 to i64
  store i64 %t15, ptr %l32, !tbaa !24
  br label %bb2
bb2:
  %t16 = load i64, ptr %l32
  %t17 = inttoptr i64 %t16 to ptr
  %t18 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_20Bool_3e(ptr %t17)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t18, ptr %l34
  br label %bb3
bb3:
  %t19 = load i1, ptr @olang_2esole_2ecompiler_2fload_3aLoader_2e5
  br i1 %t19, label %bb4, label %bb5
bb4:
  %t21 = load i64, ptr %l32
  %t22 = inttoptr i64 %t21 to ptr
  %t23 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l34, i32 0, i32 2
  %t24 = load { i64, ptr }, ptr %t23
  %t25 = extractvalue { i64, ptr } %t24, 1
  %t26 = call ptr @__olang_region_or(ptr %t25, ptr null)
  %t27 = call ptr @__olang_region_home(ptr %t26)
  %t28 = icmp ne ptr %t27, null
  %t29 = select i1 %t28, ptr %t27, ptr null
  %t30 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l34, i32 0, i32 1
  %t31 = load { i64, ptr }, ptr %t30
  %t32 = extractvalue { i64, ptr } %t31, 1
  %t33 = call ptr @__olang_region_or(ptr %t32, ptr null)
  %t34 = call ptr @__olang_region_home(ptr %t33)
  %t35 = icmp ne ptr %t34, null
  %t36 = select i1 %t35, ptr %t34, ptr %t29
  %t37 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l34, i32 0, i32 0
  %t38 = load { i64, ptr }, ptr %t37
  %t39 = extractvalue { i64, ptr } %t38, 1
  %t40 = call ptr @__olang_region_or(ptr %t39, ptr null)
  %t41 = call ptr @__olang_region_home(ptr %t40)
  %t42 = icmp ne ptr %t41, null
  %t43 = select i1 %t42, ptr %t41, ptr %t36
  %t44 = icmp eq ptr %t43, %t22
  call void @__olang_region_settle(ptr %t22, i1 %t44)
  br label %bb5
bb5:
  %t45 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l34
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t45, ptr %l10
  %t46 = ptrtoint ptr %v5 to i64
  store i64 %t46, ptr %l36, !tbaa !24
  %t47 = load i1, ptr @olang_2esole_2ecompiler_2fload_3aLoader_2e6
  br i1 %t47, label %bb6, label %bb7
bb6:
  %t49 = call ptr @__olang_region_make(ptr %v5)
  %t50 = ptrtoint ptr %t49 to i64
  store i64 %t50, ptr %l36, !tbaa !24
  br label %bb7
bb7:
  %t51 = load i64, ptr %l36
  %t52 = inttoptr i64 %t51 to ptr
  %t53 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e(ptr %t52)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t53, ptr %l38
  br label %bb8
bb8:
  %t54 = load i1, ptr @olang_2esole_2ecompiler_2fload_3aLoader_2e6
  br i1 %t54, label %bb9, label %bb10
bb9:
  %t56 = load i64, ptr %l36
  %t57 = inttoptr i64 %t56 to ptr
  %t58 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l38, i32 0, i32 2
  %t59 = load { i64, ptr }, ptr %t58
  %t60 = extractvalue { i64, ptr } %t59, 1
  %t61 = call ptr @__olang_region_or(ptr %t60, ptr null)
  %t62 = call ptr @__olang_region_home(ptr %t61)
  %t63 = icmp ne ptr %t62, null
  %t64 = select i1 %t63, ptr %t62, ptr null
  %t65 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l38, i32 0, i32 1
  %t66 = load { i64, ptr }, ptr %t65
  %t67 = extractvalue { i64, ptr } %t66, 1
  %t68 = call ptr @__olang_region_or(ptr %t67, ptr null)
  %t69 = call ptr @__olang_region_home(ptr %t68)
  %t70 = icmp ne ptr %t69, null
  %t71 = select i1 %t70, ptr %t69, ptr %t64
  %t72 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l38, i32 0, i32 0
  %t73 = load { i64, ptr }, ptr %t72
  %t74 = extractvalue { i64, ptr } %t73, 1
  %t75 = call ptr @__olang_region_or(ptr %t74, ptr null)
  %t76 = call ptr @__olang_region_home(ptr %t75)
  %t77 = icmp ne ptr %t76, null
  %t78 = select i1 %t77, ptr %t76, ptr %t71
  %t79 = icmp eq ptr %t78, %t57
  call void @__olang_region_settle(ptr %t57, i1 %t79)
  br label %bb10
bb10:
  %t80 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l38
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t80, ptr %l11
  %t81 = ptrtoint ptr %v5 to i64
  store i64 %t81, ptr %l40, !tbaa !24
  %t82 = load i1, ptr @olang_2esole_2ecompiler_2fload_3aLoader_2e7
  br i1 %t82, label %bb11, label %bb12
bb11:
  %t84 = call ptr @__olang_region_make(ptr %v5)
  %t85 = ptrtoint ptr %t84 to i64
  store i64 %t85, ptr %l40, !tbaa !24
  br label %bb12
bb12:
  %t86 = load i64, ptr %l40
  %t87 = inttoptr i64 %t86 to ptr
  %t88 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e(ptr %t87)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t88, ptr %l42
  br label %bb13
bb13:
  %t89 = load i1, ptr @olang_2esole_2ecompiler_2fload_3aLoader_2e7
  br i1 %t89, label %bb14, label %bb15
bb14:
  %t91 = load i64, ptr %l40
  %t92 = inttoptr i64 %t91 to ptr
  %t93 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l42, i32 0, i32 2
  %t94 = load { i64, ptr }, ptr %t93
  %t95 = extractvalue { i64, ptr } %t94, 1
  %t96 = call ptr @__olang_region_or(ptr %t95, ptr null)
  %t97 = call ptr @__olang_region_home(ptr %t96)
  %t98 = icmp ne ptr %t97, null
  %t99 = select i1 %t98, ptr %t97, ptr null
  %t100 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l42, i32 0, i32 1
  %t101 = load { i64, ptr }, ptr %t100
  %t102 = extractvalue { i64, ptr } %t101, 1
  %t103 = call ptr @__olang_region_or(ptr %t102, ptr null)
  %t104 = call ptr @__olang_region_home(ptr %t103)
  %t105 = icmp ne ptr %t104, null
  %t106 = select i1 %t105, ptr %t104, ptr %t99
  %t107 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l42, i32 0, i32 0
  %t108 = load { i64, ptr }, ptr %t107
  %t109 = extractvalue { i64, ptr } %t108, 1
  %t110 = call ptr @__olang_region_or(ptr %t109, ptr null)
  %t111 = call ptr @__olang_region_home(ptr %t110)
  %t112 = icmp ne ptr %t111, null
  %t113 = select i1 %t112, ptr %t111, ptr %t106
  %t114 = icmp eq ptr %t113, %t92
  call void @__olang_region_settle(ptr %t92, i1 %t114)
  br label %bb15
bb15:
  %t115 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l42
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t115, ptr %l12
  store i1 true, ptr %l13, !tbaa !21
  %t116 = ptrtoint ptr %v5 to i64
  store i64 %t116, ptr %l44, !tbaa !24
  %t117 = load i1, ptr @olang_2esole_2ecompiler_2fload_3aLoader_2e9
  br i1 %t117, label %bb16, label %bb17
bb16:
  %t119 = call ptr @__olang_region_make(ptr %v5)
  %t120 = ptrtoint ptr %t119 to i64
  store i64 %t120, ptr %l44, !tbaa !24
  br label %bb17
bb17:
  %t121 = load i64, ptr %l44
  %t122 = inttoptr i64 %t121 to ptr
  %t123 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %t122, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t123, ptr %l46
  br label %bb18
bb18:
  %t124 = load i1, ptr @olang_2esole_2ecompiler_2fload_3aLoader_2e9
  br i1 %t124, label %bb19, label %bb20
bb19:
  %t126 = load i64, ptr %l44
  %t127 = inttoptr i64 %t126 to ptr
  %t128 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l46, i32 0, i32 0
  %t129 = load { i64, ptr }, ptr %t128
  %t130 = extractvalue { i64, ptr } %t129, 1
  %t131 = call ptr @__olang_region_or(ptr %t130, ptr null)
  %t132 = call ptr @__olang_region_home(ptr %t131)
  %t133 = icmp ne ptr %t132, null
  %t134 = select i1 %t133, ptr %t132, ptr null
  %t135 = icmp eq ptr %t134, %t127
  call void @__olang_region_settle(ptr %t127, i1 %t135)
  br label %bb20
bb20:
  %t136 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l46
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t136, ptr %l14
  %t137 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2ector(ptr %v5, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t137, ptr %l48
  br label %bb21
bb21:
  %t138 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l48
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t138, ptr %l15
  %t139 = ptrtoint ptr %v5 to i64
  store i64 %t139, ptr %l49, !tbaa !24
  %t140 = load i1, ptr @olang_2esole_2ecompiler_2fload_3aLoader_2e11
  br i1 %t140, label %bb22, label %bb23
bb22:
  %t142 = call ptr @__olang_region_make(ptr %v5)
  %t143 = ptrtoint ptr %t142 to i64
  store i64 %t143, ptr %l49, !tbaa !24
  br label %bb23
bb23:
  %t144 = load i64, ptr %l49
  %t145 = inttoptr i64 %t144 to ptr
  %t146 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2ector(ptr %t145, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t146, ptr %l51
  br label %bb24
bb24:
  %t147 = load i1, ptr @olang_2esole_2ecompiler_2fload_3aLoader_2e11
  br i1 %t147, label %bb25, label %bb26
bb25:
  %t149 = load i64, ptr %l49
  %t150 = inttoptr i64 %t149 to ptr
  %t151 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l51, i32 0, i32 0
  %t152 = load { i64, ptr }, ptr %t151
  %t153 = extractvalue { i64, ptr } %t152, 1
  %t154 = call ptr @__olang_region_or(ptr %t153, ptr null)
  %t155 = call ptr @__olang_region_home(ptr %t154)
  %t156 = icmp ne ptr %t155, null
  %t157 = select i1 %t156, ptr %t155, ptr null
  %t158 = icmp eq ptr %t157, %t150
  call void @__olang_region_settle(ptr %t150, i1 %t158)
  br label %bb26
bb26:
  %t159 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l51
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t159, ptr %l16
  store i64 -1, ptr %l17, !tbaa !24
  %t160 = ptrtoint ptr %v5 to i64
  store i64 %t160, ptr %l53, !tbaa !24
  %t161 = load i1, ptr @olang_2esole_2ecompiler_2fload_3aLoader_2e13
  br i1 %t161, label %bb27, label %bb28
bb27:
  %t163 = call ptr @__olang_region_make(ptr %v5)
  %t164 = ptrtoint ptr %t163 to i64
  store i64 %t164, ptr %l53, !tbaa !24
  br label %bb28
bb28:
  %t165 = load i64, ptr %l53
  %t166 = inttoptr i64 %t165 to ptr
  %t167 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aStr_H4eff2894ad89de6e140d6d54faebb689(ptr %t166)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t167, ptr %l55
  br label %bb29
bb29:
  %t168 = load i1, ptr @olang_2esole_2ecompiler_2fload_3aLoader_2e13
  br i1 %t168, label %bb30, label %bb31
bb30:
  %t170 = load i64, ptr %l53
  %t171 = inttoptr i64 %t170 to ptr
  %t172 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l55, i32 0, i32 2
  %t173 = load { i64, ptr }, ptr %t172
  %t174 = extractvalue { i64, ptr } %t173, 1
  %t175 = call ptr @__olang_region_or(ptr %t174, ptr null)
  %t176 = call ptr @__olang_region_home(ptr %t175)
  %t177 = icmp ne ptr %t176, null
  %t178 = select i1 %t177, ptr %t176, ptr null
  %t179 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l55, i32 0, i32 1
  %t180 = load { i64, ptr }, ptr %t179
  %t181 = extractvalue { i64, ptr } %t180, 1
  %t182 = call ptr @__olang_region_or(ptr %t181, ptr null)
  %t183 = call ptr @__olang_region_home(ptr %t182)
  %t184 = icmp ne ptr %t183, null
  %t185 = select i1 %t184, ptr %t183, ptr %t178
  %t186 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l55, i32 0, i32 0
  %t187 = load { i64, ptr }, ptr %t186
  %t188 = extractvalue { i64, ptr } %t187, 1
  %t189 = call ptr @__olang_region_or(ptr %t188, ptr null)
  %t190 = call ptr @__olang_region_home(ptr %t189)
  %t191 = icmp ne ptr %t190, null
  %t192 = select i1 %t191, ptr %t190, ptr %t185
  %t193 = icmp eq ptr %t192, %t171
  call void @__olang_region_settle(ptr %t171, i1 %t193)
  br label %bb31
bb31:
  %t194 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l55
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t194, ptr %l18
  %t195 = ptrtoint ptr %v5 to i64
  store i64 %t195, ptr %l57, !tbaa !24
  %t196 = load i1, ptr @olang_2esole_2ecompiler_2fload_3aLoader_2e14
  br i1 %t196, label %bb32, label %bb33
bb32:
  %t198 = call ptr @__olang_region_make(ptr %v5)
  %t199 = ptrtoint ptr %t198 to i64
  store i64 %t199, ptr %l57, !tbaa !24
  br label %bb33
bb33:
  %t200 = load i64, ptr %l57
  %t201 = inttoptr i64 %t200 to ptr
  %t202 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20Bool_3e(ptr %t201)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t202, ptr %l59
  br label %bb34
bb34:
  %t203 = load i1, ptr @olang_2esole_2ecompiler_2fload_3aLoader_2e14
  br i1 %t203, label %bb35, label %bb36
bb35:
  %t205 = load i64, ptr %l57
  %t206 = inttoptr i64 %t205 to ptr
  %t207 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l59, i32 0, i32 2
  %t208 = load { i64, ptr }, ptr %t207
  %t209 = extractvalue { i64, ptr } %t208, 1
  %t210 = call ptr @__olang_region_or(ptr %t209, ptr null)
  %t211 = call ptr @__olang_region_home(ptr %t210)
  %t212 = icmp ne ptr %t211, null
  %t213 = select i1 %t212, ptr %t211, ptr null
  %t214 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l59, i32 0, i32 1
  %t215 = load { i64, ptr }, ptr %t214
  %t216 = extractvalue { i64, ptr } %t215, 1
  %t217 = call ptr @__olang_region_or(ptr %t216, ptr null)
  %t218 = call ptr @__olang_region_home(ptr %t217)
  %t219 = icmp ne ptr %t218, null
  %t220 = select i1 %t219, ptr %t218, ptr %t213
  %t221 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l59, i32 0, i32 0
  %t222 = load { i64, ptr }, ptr %t221
  %t223 = extractvalue { i64, ptr } %t222, 1
  %t224 = call ptr @__olang_region_or(ptr %t223, ptr null)
  %t225 = call ptr @__olang_region_home(ptr %t224)
  %t226 = icmp ne ptr %t225, null
  %t227 = select i1 %t226, ptr %t225, ptr %t220
  %t228 = icmp eq ptr %t227, %t206
  call void @__olang_region_settle(ptr %t206, i1 %t228)
  br label %bb36
bb36:
  %t229 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l59
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t229, ptr %l19
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d221, i32 0, i32 1) }, ptr %l20, !tbaa !27
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d222, i32 0, i32 1) }, ptr %l21, !tbaa !27
  %t230 = ptrtoint ptr %v5 to i64
  store i64 %t230, ptr %l61, !tbaa !24
  %t231 = load i1, ptr @olang_2esole_2ecompiler_2fload_3aLoader_2e17
  br i1 %t231, label %bb37, label %bb38
bb37:
  %t233 = call ptr @__olang_region_make(ptr %v5)
  %t234 = ptrtoint ptr %t233 to i64
  store i64 %t234, ptr %l61, !tbaa !24
  br label %bb38
bb38:
  %t235 = load i64, ptr %l61
  %t236 = inttoptr i64 %t235 to ptr
  %t237 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20Array_3cU8_3e_26_3e(ptr %t236)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t237, ptr %l63
  br label %bb39
bb39:
  %t238 = load i1, ptr @olang_2esole_2ecompiler_2fload_3aLoader_2e17
  br i1 %t238, label %bb40, label %bb41
bb40:
  %t240 = load i64, ptr %l61
  %t241 = inttoptr i64 %t240 to ptr
  %t242 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l63, i32 0, i32 2
  %t243 = load { i64, ptr }, ptr %t242
  %t244 = extractvalue { i64, ptr } %t243, 1
  %t245 = call ptr @__olang_region_or(ptr %t244, ptr null)
  %t246 = call ptr @__olang_region_home(ptr %t245)
  %t247 = icmp ne ptr %t246, null
  %t248 = select i1 %t247, ptr %t246, ptr null
  %t249 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l63, i32 0, i32 1
  %t250 = load { i64, ptr }, ptr %t249
  %t251 = extractvalue { i64, ptr } %t250, 1
  %t252 = call ptr @__olang_region_or(ptr %t251, ptr null)
  %t253 = call ptr @__olang_region_home(ptr %t252)
  %t254 = icmp ne ptr %t253, null
  %t255 = select i1 %t254, ptr %t253, ptr %t248
  %t256 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l63, i32 0, i32 0
  %t257 = load { i64, ptr }, ptr %t256
  %t258 = extractvalue { i64, ptr } %t257, 1
  %t259 = call ptr @__olang_region_or(ptr %t258, ptr null)
  %t260 = call ptr @__olang_region_home(ptr %t259)
  %t261 = icmp ne ptr %t260, null
  %t262 = select i1 %t261, ptr %t260, ptr %t255
  %t263 = icmp eq ptr %t262, %t241
  call void @__olang_region_settle(ptr %t241, i1 %t263)
  br label %bb41
bb41:
  %t264 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l63
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t264, ptr %l22
  store i1 false, ptr %l23, !tbaa !21
  %t265 = ptrtoint ptr %v5 to i64
  store i64 %t265, ptr %l65, !tbaa !24
  %t266 = load i1, ptr @olang_2esole_2ecompiler_2fload_3aLoader_2e19
  br i1 %t266, label %bb42, label %bb43
bb42:
  %t268 = call ptr @__olang_region_make(ptr %v5)
  %t269 = ptrtoint ptr %t268 to i64
  store i64 %t269, ptr %l65, !tbaa !24
  br label %bb43
bb43:
  %t270 = load i64, ptr %l65
  %t271 = inttoptr i64 %t270 to ptr
  %t272 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e(ptr %t271)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t272, ptr %l67
  br label %bb44
bb44:
  %t273 = load i1, ptr @olang_2esole_2ecompiler_2fload_3aLoader_2e19
  br i1 %t273, label %bb45, label %bb46
bb45:
  %t275 = load i64, ptr %l65
  %t276 = inttoptr i64 %t275 to ptr
  %t277 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l67, i32 0, i32 2
  %t278 = load { i64, ptr }, ptr %t277
  %t279 = extractvalue { i64, ptr } %t278, 1
  %t280 = call ptr @__olang_region_or(ptr %t279, ptr null)
  %t281 = call ptr @__olang_region_home(ptr %t280)
  %t282 = icmp ne ptr %t281, null
  %t283 = select i1 %t282, ptr %t281, ptr null
  %t284 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l67, i32 0, i32 1
  %t285 = load { i64, ptr }, ptr %t284
  %t286 = extractvalue { i64, ptr } %t285, 1
  %t287 = call ptr @__olang_region_or(ptr %t286, ptr null)
  %t288 = call ptr @__olang_region_home(ptr %t287)
  %t289 = icmp ne ptr %t288, null
  %t290 = select i1 %t289, ptr %t288, ptr %t283
  %t291 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l67, i32 0, i32 0
  %t292 = load { i64, ptr }, ptr %t291
  %t293 = extractvalue { i64, ptr } %t292, 1
  %t294 = call ptr @__olang_region_or(ptr %t293, ptr null)
  %t295 = call ptr @__olang_region_home(ptr %t294)
  %t296 = icmp ne ptr %t295, null
  %t297 = select i1 %t296, ptr %t295, ptr %t290
  %t298 = icmp eq ptr %t297, %t276
  call void @__olang_region_settle(ptr %t276, i1 %t298)
  br label %bb46
bb46:
  %t299 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l67
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t299, ptr %l24
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d223, i32 0, i32 1) }, ptr %l25, !tbaa !27
  %t300 = ptrtoint ptr %v5 to i64
  store i64 %t300, ptr %l69, !tbaa !24
  %t301 = load i1, ptr @olang_2esole_2ecompiler_2fload_3aLoader_2e21
  br i1 %t301, label %bb47, label %bb48
bb47:
  %t303 = call ptr @__olang_region_make(ptr %v5)
  %t304 = ptrtoint ptr %t303 to i64
  store i64 %t304, ptr %l69, !tbaa !24
  br label %bb48
bb48:
  %t305 = load i64, ptr %l69
  %t306 = inttoptr i64 %t305 to ptr
  %t307 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2ector(ptr %t306, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t307, ptr %l71
  br label %bb49
bb49:
  %t308 = load i1, ptr @olang_2esole_2ecompiler_2fload_3aLoader_2e21
  br i1 %t308, label %bb50, label %bb51
bb50:
  %t310 = load i64, ptr %l69
  %t311 = inttoptr i64 %t310 to ptr
  %t312 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l71, i32 0, i32 0
  %t313 = load { i64, ptr }, ptr %t312
  %t314 = extractvalue { i64, ptr } %t313, 1
  %t315 = call ptr @__olang_region_or(ptr %t314, ptr null)
  %t316 = call ptr @__olang_region_home(ptr %t315)
  %t317 = icmp ne ptr %t316, null
  %t318 = select i1 %t317, ptr %t316, ptr null
  %t319 = icmp eq ptr %t318, %t311
  call void @__olang_region_settle(ptr %t311, i1 %t319)
  br label %bb51
bb51:
  %t320 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l71
  %t321 = getelementptr %"compiler/load:Loader", ptr %l73, i32 0, i32 0
  %t322 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t322, ptr %t321, !tbaa !27
  %t323 = getelementptr %"compiler/load:Loader", ptr %l73, i32 0, i32 1
  %t324 = load ptr, ptr %l6, !tbaa !29
  store ptr %t324, ptr %t323, !tbaa !29
  %t325 = getelementptr %"compiler/load:Loader", ptr %l73, i32 0, i32 2
  %t326 = load ptr, ptr %l7, !tbaa !29
  store ptr %t326, ptr %t325, !tbaa !29
  %t327 = getelementptr %"compiler/load:Loader", ptr %l73, i32 0, i32 3
  %t328 = load ptr, ptr %l8, !tbaa !29
  store ptr %t328, ptr %t327, !tbaa !29
  %t329 = getelementptr %"compiler/load:Loader", ptr %l73, i32 0, i32 4
  %t330 = load ptr, ptr %l9, !tbaa !29
  store ptr %t330, ptr %t329, !tbaa !29
  %t331 = getelementptr %"compiler/load:Loader", ptr %l73, i32 0, i32 5
  %t332 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l10
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t332, ptr %t331
  %t333 = getelementptr %"compiler/load:Loader", ptr %l73, i32 0, i32 6
  %t334 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l11
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t334, ptr %t333
  %t335 = getelementptr %"compiler/load:Loader", ptr %l73, i32 0, i32 7
  %t336 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l12
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t336, ptr %t335
  %t337 = getelementptr %"compiler/load:Loader", ptr %l73, i32 0, i32 8
  %t338 = load i1, ptr %l13, !tbaa !21
  store i1 %t338, ptr %t337, !tbaa !21
  %t339 = getelementptr %"compiler/load:Loader", ptr %l73, i32 0, i32 9
  %t340 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l14
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t340, ptr %t339
  %t341 = getelementptr %"compiler/load:Loader", ptr %l73, i32 0, i32 10
  %t342 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l15
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t342, ptr %t341
  %t343 = getelementptr %"compiler/load:Loader", ptr %l73, i32 0, i32 11
  %t344 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l16
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t344, ptr %t343
  %t345 = getelementptr %"compiler/load:Loader", ptr %l73, i32 0, i32 12
  %t346 = load i64, ptr %l17, !tbaa !24
  store i64 %t346, ptr %t345, !tbaa !24
  %t347 = getelementptr %"compiler/load:Loader", ptr %l73, i32 0, i32 13
  %t348 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l18
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t348, ptr %t347
  %t349 = getelementptr %"compiler/load:Loader", ptr %l73, i32 0, i32 14
  %t350 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l19
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t350, ptr %t349
  %t351 = getelementptr %"compiler/load:Loader", ptr %l73, i32 0, i32 15
  %t352 = load { i64, ptr }, ptr %l20, !tbaa !27
  store { i64, ptr } %t352, ptr %t351, !tbaa !27
  %t353 = getelementptr %"compiler/load:Loader", ptr %l73, i32 0, i32 16
  %t354 = load { i64, ptr }, ptr %l21, !tbaa !27
  store { i64, ptr } %t354, ptr %t353, !tbaa !27
  %t355 = getelementptr %"compiler/load:Loader", ptr %l73, i32 0, i32 17
  %t356 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l22
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t356, ptr %t355
  %t357 = getelementptr %"compiler/load:Loader", ptr %l73, i32 0, i32 18
  %t358 = load i1, ptr %l23, !tbaa !21
  store i1 %t358, ptr %t357, !tbaa !21
  %t359 = getelementptr %"compiler/load:Loader", ptr %l73, i32 0, i32 19
  %t360 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l24
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t360, ptr %t359
  %t361 = getelementptr %"compiler/load:Loader", ptr %l73, i32 0, i32 20
  %t362 = load { i64, ptr }, ptr %l25, !tbaa !27
  store { i64, ptr } %t362, ptr %t361, !tbaa !27
  %t363 = getelementptr %"compiler/load:Loader", ptr %l73, i32 0, i32 21
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t320, ptr %t363
  call void @llvm.memmove.p0.p0.i64(ptr %out, ptr %l73, i64 752, i1 false)
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
  %t33 = call ptr @__olang_region_home(ptr %t32)
  %t34 = icmp ne ptr %t33, null
  %t35 = select i1 %t34, ptr %t33, ptr null
  %t36 = icmp eq ptr %t35, %t28
  call void @__olang_region_settle(ptr %t28, i1 %t36)
  br label %bb9
bb9:
  %t37 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l47
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t37, ptr %l13
  %t38 = ptrtoint ptr %v3 to i64
  store i64 %t38, ptr %l49, !tbaa !24
  %t39 = load i1, ptr @olang_2esole_2ecompiler_2fload_3aModule_2e10
  br i1 %t39, label %bb10, label %bb11
bb10:
  %t41 = call ptr @__olang_region_make(ptr %v3)
  %t42 = ptrtoint ptr %t41 to i64
  store i64 %t42, ptr %l49, !tbaa !24
  br label %bb11
bb11:
  %t43 = load i64, ptr %l49
  %t44 = inttoptr i64 %t43 to ptr
  %t45 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2ector(ptr %t44, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t45, ptr %l51
  br label %bb12
bb12:
  %t46 = load i1, ptr @olang_2esole_2ecompiler_2fload_3aModule_2e10
  br i1 %t46, label %bb13, label %bb14
bb13:
  %t48 = load i64, ptr %l49
  %t49 = inttoptr i64 %t48 to ptr
  %t50 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l51, i32 0, i32 0
  %t51 = load { i64, ptr }, ptr %t50
  %t52 = extractvalue { i64, ptr } %t51, 1
  %t53 = call ptr @__olang_region_or(ptr %t52, ptr null)
  %t54 = call ptr @__olang_region_home(ptr %t53)
  %t55 = icmp ne ptr %t54, null
  %t56 = select i1 %t55, ptr %t54, ptr null
  %t57 = icmp eq ptr %t56, %t49
  call void @__olang_region_settle(ptr %t49, i1 %t57)
  br label %bb14
bb14:
  %t58 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l51
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t58, ptr %l14
  %t59 = ptrtoint ptr %v3 to i64
  store i64 %t59, ptr %l53, !tbaa !24
  %t60 = load i1, ptr @olang_2esole_2ecompiler_2fload_3aModule_2e11
  br i1 %t60, label %bb15, label %bb16
bb15:
  %t62 = call ptr @__olang_region_make(ptr %v3)
  %t63 = ptrtoint ptr %t62 to i64
  store i64 %t63, ptr %l53, !tbaa !24
  br label %bb16
bb16:
  %t64 = load i64, ptr %l53
  %t65 = inttoptr i64 %t64 to ptr
  %t66 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fload_3aImport_3e_2ector(ptr %t65, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t66, ptr %l55
  br label %bb17
bb17:
  %t67 = load i1, ptr @olang_2esole_2ecompiler_2fload_3aModule_2e11
  br i1 %t67, label %bb18, label %bb19
bb18:
  %t69 = load i64, ptr %l53
  %t70 = inttoptr i64 %t69 to ptr
  %t71 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l55, i32 0, i32 0
  %t72 = load { i64, ptr }, ptr %t71
  %t73 = extractvalue { i64, ptr } %t72, 1
  %t74 = call ptr @__olang_region_or(ptr %t73, ptr null)
  %t75 = call ptr @__olang_region_home(ptr %t74)
  %t76 = icmp ne ptr %t75, null
  %t77 = select i1 %t76, ptr %t75, ptr null
  %t78 = icmp eq ptr %t77, %t70
  call void @__olang_region_settle(ptr %t70, i1 %t78)
  br label %bb19
bb19:
  %t79 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l55
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t79, ptr %l15
  store ptr null, ptr %l16, !tbaa !29
  store ptr null, ptr %l17, !tbaa !29
  %t80 = ptrtoint ptr %v3 to i64
  store i64 %t80, ptr %l57, !tbaa !24
  %t81 = load i1, ptr @olang_2esole_2ecompiler_2fload_3aModule_2e14
  br i1 %t81, label %bb20, label %bb21
bb20:
  %t83 = call ptr @__olang_region_make(ptr %v3)
  %t84 = ptrtoint ptr %t83 to i64
  store i64 %t84, ptr %l57, !tbaa !24
  br label %bb21
bb21:
  %t85 = load i64, ptr %l57
  %t86 = inttoptr i64 %t85 to ptr
  %t87 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI32_3e_2ector(ptr %t86, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t87, ptr %l59
  br label %bb22
bb22:
  %t88 = load i1, ptr @olang_2esole_2ecompiler_2fload_3aModule_2e14
  br i1 %t88, label %bb23, label %bb24
bb23:
  %t90 = load i64, ptr %l57
  %t91 = inttoptr i64 %t90 to ptr
  %t92 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l59, i32 0, i32 0
  %t93 = load { i64, ptr }, ptr %t92
  %t94 = extractvalue { i64, ptr } %t93, 1
  %t95 = call ptr @__olang_region_or(ptr %t94, ptr null)
  %t96 = call ptr @__olang_region_home(ptr %t95)
  %t97 = icmp ne ptr %t96, null
  %t98 = select i1 %t97, ptr %t96, ptr null
  %t99 = icmp eq ptr %t98, %t91
  call void @__olang_region_settle(ptr %t91, i1 %t99)
  br label %bb24
bb24:
  %t100 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l59
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t100, ptr %l18
  %t101 = ptrtoint ptr %v3 to i64
  store i64 %t101, ptr %l61, !tbaa !24
  %t102 = load i1, ptr @olang_2esole_2ecompiler_2fload_3aModule_2e15
  br i1 %t102, label %bb25, label %bb26
bb25:
  %t104 = call ptr @__olang_region_make(ptr %v3)
  %t105 = ptrtoint ptr %t104 to i64
  store i64 %t105, ptr %l61, !tbaa !24
  br label %bb26
bb26:
  %t106 = load i64, ptr %l61
  %t107 = inttoptr i64 %t106 to ptr
  %t108 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %t107, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t108, ptr %l63
  br label %bb27
bb27:
  %t109 = load i1, ptr @olang_2esole_2ecompiler_2fload_3aModule_2e15
  br i1 %t109, label %bb28, label %bb29
bb28:
  %t111 = load i64, ptr %l61
  %t112 = inttoptr i64 %t111 to ptr
  %t113 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l63, i32 0, i32 0
  %t114 = load { i64, ptr }, ptr %t113
  %t115 = extractvalue { i64, ptr } %t114, 1
  %t116 = call ptr @__olang_region_or(ptr %t115, ptr null)
  %t117 = call ptr @__olang_region_home(ptr %t116)
  %t118 = icmp ne ptr %t117, null
  %t119 = select i1 %t118, ptr %t117, ptr null
  %t120 = icmp eq ptr %t119, %t112
  call void @__olang_region_settle(ptr %t112, i1 %t120)
  br label %bb29
bb29:
  %t121 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l63
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t121, ptr %l19
  %t122 = ptrtoint ptr %v3 to i64
  store i64 %t122, ptr %l65, !tbaa !24
  %t123 = load i1, ptr @olang_2esole_2ecompiler_2fload_3aModule_2e16
  br i1 %t123, label %bb30, label %bb31
bb30:
  %t125 = call ptr @__olang_region_make(ptr %v3)
  %t126 = ptrtoint ptr %t125 to i64
  store i64 %t126, ptr %l65, !tbaa !24
  br label %bb31
bb31:
  %t127 = load i64, ptr %l65
  %t128 = inttoptr i64 %t127 to ptr
  %t129 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %t128, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t129, ptr %l67
  br label %bb32
bb32:
  %t130 = load i1, ptr @olang_2esole_2ecompiler_2fload_3aModule_2e16
  br i1 %t130, label %bb33, label %bb34
bb33:
  %t132 = load i64, ptr %l65
  %t133 = inttoptr i64 %t132 to ptr
  %t134 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l67, i32 0, i32 0
  %t135 = load { i64, ptr }, ptr %t134
  %t136 = extractvalue { i64, ptr } %t135, 1
  %t137 = call ptr @__olang_region_or(ptr %t136, ptr null)
  %t138 = call ptr @__olang_region_home(ptr %t137)
  %t139 = icmp ne ptr %t138, null
  %t140 = select i1 %t139, ptr %t138, ptr null
  %t141 = icmp eq ptr %t140, %t133
  call void @__olang_region_settle(ptr %t133, i1 %t141)
  br label %bb34
bb34:
  %t142 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l67
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t142, ptr %l20
  %t143 = ptrtoint ptr %v3 to i64
  store i64 %t143, ptr %l69, !tbaa !24
  %t144 = load i1, ptr @olang_2esole_2ecompiler_2fload_3aModule_2e17
  br i1 %t144, label %bb35, label %bb36
bb35:
  %t146 = call ptr @__olang_region_make(ptr %v3)
  %t147 = ptrtoint ptr %t146 to i64
  store i64 %t147, ptr %l69, !tbaa !24
  br label %bb36
bb36:
  %t148 = load i64, ptr %l69
  %t149 = inttoptr i64 %t148 to ptr
  %t150 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cBool_3e_2ector(ptr %t149, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t150, ptr %l71
  br label %bb37
bb37:
  %t151 = load i1, ptr @olang_2esole_2ecompiler_2fload_3aModule_2e17
  br i1 %t151, label %bb38, label %bb39
bb38:
  %t153 = load i64, ptr %l69
  %t154 = inttoptr i64 %t153 to ptr
  %t155 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l71, i32 0, i32 0
  %t156 = load { i64, ptr }, ptr %t155
  %t157 = extractvalue { i64, ptr } %t156, 1
  %t158 = call ptr @__olang_region_or(ptr %t157, ptr null)
  %t159 = call ptr @__olang_region_home(ptr %t158)
  %t160 = icmp ne ptr %t159, null
  %t161 = select i1 %t160, ptr %t159, ptr null
  %t162 = icmp eq ptr %t161, %t154
  call void @__olang_region_settle(ptr %t154, i1 %t162)
  br label %bb39
bb39:
  %t163 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l71
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t163, ptr %l21
  %t164 = ptrtoint ptr %v3 to i64
  store i64 %t164, ptr %l73, !tbaa !24
  %t165 = load i1, ptr @olang_2esole_2ecompiler_2fload_3aModule_2e18
  br i1 %t165, label %bb40, label %bb41
bb40:
  %t167 = call ptr @__olang_region_make(ptr %v3)
  %t168 = ptrtoint ptr %t167 to i64
  store i64 %t168, ptr %l73, !tbaa !24
  br label %bb41
bb41:
  %t169 = load i64, ptr %l73
  %t170 = inttoptr i64 %t169 to ptr
  %t171 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %t170, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t171, ptr %l75
  br label %bb42
bb42:
  %t172 = load i1, ptr @olang_2esole_2ecompiler_2fload_3aModule_2e18
  br i1 %t172, label %bb43, label %bb44
bb43:
  %t174 = load i64, ptr %l73
  %t175 = inttoptr i64 %t174 to ptr
  %t176 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l75, i32 0, i32 0
  %t177 = load { i64, ptr }, ptr %t176
  %t178 = extractvalue { i64, ptr } %t177, 1
  %t179 = call ptr @__olang_region_or(ptr %t178, ptr null)
  %t180 = call ptr @__olang_region_home(ptr %t179)
  %t181 = icmp ne ptr %t180, null
  %t182 = select i1 %t181, ptr %t180, ptr null
  %t183 = icmp eq ptr %t182, %t175
  call void @__olang_region_settle(ptr %t175, i1 %t183)
  br label %bb44
bb44:
  %t184 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l75
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t184, ptr %l22
  %t185 = ptrtoint ptr %v3 to i64
  store i64 %t185, ptr %l77, !tbaa !24
  %t186 = load i1, ptr @olang_2esole_2ecompiler_2fload_3aModule_2e19
  br i1 %t186, label %bb45, label %bb46
bb45:
  %t188 = call ptr @__olang_region_make(ptr %v3)
  %t189 = ptrtoint ptr %t188 to i64
  store i64 %t189, ptr %l77, !tbaa !24
  br label %bb46
bb46:
  %t190 = load i64, ptr %l77
  %t191 = inttoptr i64 %t190 to ptr
  %t192 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %t191, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t192, ptr %l79
  br label %bb47
bb47:
  %t193 = load i1, ptr @olang_2esole_2ecompiler_2fload_3aModule_2e19
  br i1 %t193, label %bb48, label %bb49
bb48:
  %t195 = load i64, ptr %l77
  %t196 = inttoptr i64 %t195 to ptr
  %t197 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l79, i32 0, i32 0
  %t198 = load { i64, ptr }, ptr %t197
  %t199 = extractvalue { i64, ptr } %t198, 1
  %t200 = call ptr @__olang_region_or(ptr %t199, ptr null)
  %t201 = call ptr @__olang_region_home(ptr %t200)
  %t202 = icmp ne ptr %t201, null
  %t203 = select i1 %t202, ptr %t201, ptr null
  %t204 = icmp eq ptr %t203, %t196
  call void @__olang_region_settle(ptr %t196, i1 %t204)
  br label %bb49
bb49:
  %t205 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l79
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t205, ptr %l23
  %t206 = ptrtoint ptr %v3 to i64
  store i64 %t206, ptr %l81, !tbaa !24
  %t207 = load i1, ptr @olang_2esole_2ecompiler_2fload_3aModule_2e20
  br i1 %t207, label %bb50, label %bb51
bb50:
  %t209 = call ptr @__olang_region_make(ptr %v3)
  %t210 = ptrtoint ptr %t209 to i64
  store i64 %t210, ptr %l81, !tbaa !24
  br label %bb51
bb51:
  %t211 = load i64, ptr %l81
  %t212 = inttoptr i64 %t211 to ptr
  %t213 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %t212, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t213, ptr %l83
  br label %bb52
bb52:
  %t214 = load i1, ptr @olang_2esole_2ecompiler_2fload_3aModule_2e20
  br i1 %t214, label %bb53, label %bb54
bb53:
  %t216 = load i64, ptr %l81
  %t217 = inttoptr i64 %t216 to ptr
  %t218 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l83, i32 0, i32 0
  %t219 = load { i64, ptr }, ptr %t218
  %t220 = extractvalue { i64, ptr } %t219, 1
  %t221 = call ptr @__olang_region_or(ptr %t220, ptr null)
  %t222 = call ptr @__olang_region_home(ptr %t221)
  %t223 = icmp ne ptr %t222, null
  %t224 = select i1 %t223, ptr %t222, ptr null
  %t225 = icmp eq ptr %t224, %t217
  call void @__olang_region_settle(ptr %t217, i1 %t225)
  br label %bb54
bb54:
  %t226 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l83
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t226, ptr %l24
  %t227 = ptrtoint ptr %v3 to i64
  store i64 %t227, ptr %l85, !tbaa !24
  %t228 = load i1, ptr @olang_2esole_2ecompiler_2fload_3aModule_2e21
  br i1 %t228, label %bb55, label %bb56
bb55:
  %t230 = call ptr @__olang_region_make(ptr %v3)
  %t231 = ptrtoint ptr %t230 to i64
  store i64 %t231, ptr %l85, !tbaa !24
  br label %bb56
bb56:
  %t232 = load i64, ptr %l85
  %t233 = inttoptr i64 %t232 to ptr
  %t234 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %t233, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t234, ptr %l87
  br label %bb57
bb57:
  %t235 = load i1, ptr @olang_2esole_2ecompiler_2fload_3aModule_2e21
  br i1 %t235, label %bb58, label %bb59
bb58:
  %t237 = load i64, ptr %l85
  %t238 = inttoptr i64 %t237 to ptr
  %t239 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l87, i32 0, i32 0
  %t240 = load { i64, ptr }, ptr %t239
  %t241 = extractvalue { i64, ptr } %t240, 1
  %t242 = call ptr @__olang_region_or(ptr %t241, ptr null)
  %t243 = call ptr @__olang_region_home(ptr %t242)
  %t244 = icmp ne ptr %t243, null
  %t245 = select i1 %t244, ptr %t243, ptr null
  %t246 = icmp eq ptr %t245, %t238
  call void @__olang_region_settle(ptr %t238, i1 %t246)
  br label %bb59
bb59:
  %t247 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l87
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t247, ptr %l25
  %t248 = ptrtoint ptr %v3 to i64
  store i64 %t248, ptr %l89, !tbaa !24
  %t249 = load i1, ptr @olang_2esole_2ecompiler_2fload_3aModule_2e22
  br i1 %t249, label %bb60, label %bb61
bb60:
  %t251 = call ptr @__olang_region_make(ptr %v3)
  %t252 = ptrtoint ptr %t251 to i64
  store i64 %t252, ptr %l89, !tbaa !24
  br label %bb61
bb61:
  %t253 = load i64, ptr %l89
  %t254 = inttoptr i64 %t253 to ptr
  %t255 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %t254, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t255, ptr %l91
  br label %bb62
bb62:
  %t256 = load i1, ptr @olang_2esole_2ecompiler_2fload_3aModule_2e22
  br i1 %t256, label %bb63, label %bb64
bb63:
  %t258 = load i64, ptr %l89
  %t259 = inttoptr i64 %t258 to ptr
  %t260 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l91, i32 0, i32 0
  %t261 = load { i64, ptr }, ptr %t260
  %t262 = extractvalue { i64, ptr } %t261, 1
  %t263 = call ptr @__olang_region_or(ptr %t262, ptr null)
  %t264 = call ptr @__olang_region_home(ptr %t263)
  %t265 = icmp ne ptr %t264, null
  %t266 = select i1 %t265, ptr %t264, ptr null
  %t267 = icmp eq ptr %t266, %t259
  call void @__olang_region_settle(ptr %t259, i1 %t267)
  br label %bb64
bb64:
  %t268 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l91
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t268, ptr %l26
  store ptr null, ptr %l27, !tbaa !29
  store ptr null, ptr %l28, !tbaa !29
  store ptr null, ptr %l29, !tbaa !29
  store i1 false, ptr %l30, !tbaa !21
  store i1 false, ptr %l31, !tbaa !21
  %t269 = ptrtoint ptr %v3 to i64
  store i64 %t269, ptr %l93, !tbaa !24
  %t270 = load i1, ptr @olang_2esole_2ecompiler_2fload_3aModule_2e28
  br i1 %t270, label %bb65, label %bb66
bb65:
  %t272 = call ptr @__olang_region_make(ptr %v3)
  %t273 = ptrtoint ptr %t272 to i64
  store i64 %t273, ptr %l93, !tbaa !24
  br label %bb66
bb66:
  %t274 = load i64, ptr %l93
  %t275 = inttoptr i64 %t274 to ptr
  %t276 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %t275, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t276, ptr %l95
  br label %bb67
bb67:
  %t277 = load i1, ptr @olang_2esole_2ecompiler_2fload_3aModule_2e28
  br i1 %t277, label %bb68, label %bb69
bb68:
  %t279 = load i64, ptr %l93
  %t280 = inttoptr i64 %t279 to ptr
  %t281 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l95, i32 0, i32 0
  %t282 = load { i64, ptr }, ptr %t281
  %t283 = extractvalue { i64, ptr } %t282, 1
  %t284 = call ptr @__olang_region_or(ptr %t283, ptr null)
  %t285 = call ptr @__olang_region_home(ptr %t284)
  %t286 = icmp ne ptr %t285, null
  %t287 = select i1 %t286, ptr %t285, ptr null
  %t288 = icmp eq ptr %t287, %t280
  call void @__olang_region_settle(ptr %t280, i1 %t288)
  br label %bb69
bb69:
  %t289 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l95
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t289, ptr %l32
  %t290 = ptrtoint ptr %v3 to i64
  store i64 %t290, ptr %l97, !tbaa !24
  %t291 = load i1, ptr @olang_2esole_2ecompiler_2fload_3aModule_2e29
  br i1 %t291, label %bb70, label %bb71
bb70:
  %t293 = call ptr @__olang_region_make(ptr %v3)
  %t294 = ptrtoint ptr %t293 to i64
  store i64 %t294, ptr %l97, !tbaa !24
  br label %bb71
bb71:
  %t295 = load i64, ptr %l97
  %t296 = inttoptr i64 %t295 to ptr
  %t297 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2ector(ptr %t296, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t297, ptr %l99
  br label %bb72
bb72:
  %t298 = load i1, ptr @olang_2esole_2ecompiler_2fload_3aModule_2e29
  br i1 %t298, label %bb73, label %bb74
bb73:
  %t300 = load i64, ptr %l97
  %t301 = inttoptr i64 %t300 to ptr
  %t302 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l99, i32 0, i32 0
  %t303 = load { i64, ptr }, ptr %t302
  %t304 = extractvalue { i64, ptr } %t303, 1
  %t305 = call ptr @__olang_region_or(ptr %t304, ptr null)
  %t306 = call ptr @__olang_region_home(ptr %t305)
  %t307 = icmp ne ptr %t306, null
  %t308 = select i1 %t307, ptr %t306, ptr null
  %t309 = icmp eq ptr %t308, %t301
  call void @__olang_region_settle(ptr %t301, i1 %t309)
  br label %bb74
bb74:
  %t310 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l99
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t310, ptr %l33
  store i1 false, ptr %l34, !tbaa !21
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d224, i32 0, i32 1) }, ptr %l35, !tbaa !27
  %t311 = ptrtoint ptr %v3 to i64
  store i64 %t311, ptr %l101, !tbaa !24
  %t312 = load i1, ptr @olang_2esole_2ecompiler_2fload_3aModule_2e32
  br i1 %t312, label %bb75, label %bb76
bb75:
  %t314 = call ptr @__olang_region_make(ptr %v3)
  %t315 = ptrtoint ptr %t314 to i64
  store i64 %t315, ptr %l101, !tbaa !24
  br label %bb76
bb76:
  %t316 = load i64, ptr %l101
  %t317 = inttoptr i64 %t316 to ptr
  %t318 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aStr_H4eff2894ad89de6e140d6d54faebb689(ptr %t317)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t318, ptr %l103
  br label %bb77
bb77:
  %t319 = load i1, ptr @olang_2esole_2ecompiler_2fload_3aModule_2e32
  br i1 %t319, label %bb78, label %bb79
bb78:
  %t321 = load i64, ptr %l101
  %t322 = inttoptr i64 %t321 to ptr
  %t323 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l103, i32 0, i32 2
  %t324 = load { i64, ptr }, ptr %t323
  %t325 = extractvalue { i64, ptr } %t324, 1
  %t326 = call ptr @__olang_region_or(ptr %t325, ptr null)
  %t327 = call ptr @__olang_region_home(ptr %t326)
  %t328 = icmp ne ptr %t327, null
  %t329 = select i1 %t328, ptr %t327, ptr null
  %t330 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l103, i32 0, i32 1
  %t331 = load { i64, ptr }, ptr %t330
  %t332 = extractvalue { i64, ptr } %t331, 1
  %t333 = call ptr @__olang_region_or(ptr %t332, ptr null)
  %t334 = call ptr @__olang_region_home(ptr %t333)
  %t335 = icmp ne ptr %t334, null
  %t336 = select i1 %t335, ptr %t334, ptr %t329
  %t337 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l103, i32 0, i32 0
  %t338 = load { i64, ptr }, ptr %t337
  %t339 = extractvalue { i64, ptr } %t338, 1
  %t340 = call ptr @__olang_region_or(ptr %t339, ptr null)
  %t341 = call ptr @__olang_region_home(ptr %t340)
  %t342 = icmp ne ptr %t341, null
  %t343 = select i1 %t342, ptr %t341, ptr %t336
  %t344 = icmp eq ptr %t343, %t322
  call void @__olang_region_settle(ptr %t322, i1 %t344)
  br label %bb79
bb79:
  %t345 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l103
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t345, ptr %l36
  %t346 = ptrtoint ptr %v3 to i64
  store i64 %t346, ptr %l105, !tbaa !24
  %t347 = load i1, ptr @olang_2esole_2ecompiler_2fload_3aModule_2e33
  br i1 %t347, label %bb80, label %bb81
bb80:
  %t349 = call ptr @__olang_region_make(ptr %v3)
  %t350 = ptrtoint ptr %t349 to i64
  store i64 %t350, ptr %l105, !tbaa !24
  br label %bb81
bb81:
  %t351 = load i64, ptr %l105
  %t352 = inttoptr i64 %t351 to ptr
  %t353 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aStr_H4eff2894ad89de6e140d6d54faebb689(ptr %t352)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t353, ptr %l107
  br label %bb82
bb82:
  %t354 = load i1, ptr @olang_2esole_2ecompiler_2fload_3aModule_2e33
  br i1 %t354, label %bb83, label %bb84
bb83:
  %t356 = load i64, ptr %l105
  %t357 = inttoptr i64 %t356 to ptr
  %t358 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l107, i32 0, i32 2
  %t359 = load { i64, ptr }, ptr %t358
  %t360 = extractvalue { i64, ptr } %t359, 1
  %t361 = call ptr @__olang_region_or(ptr %t360, ptr null)
  %t362 = call ptr @__olang_region_home(ptr %t361)
  %t363 = icmp ne ptr %t362, null
  %t364 = select i1 %t363, ptr %t362, ptr null
  %t365 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l107, i32 0, i32 1
  %t366 = load { i64, ptr }, ptr %t365
  %t367 = extractvalue { i64, ptr } %t366, 1
  %t368 = call ptr @__olang_region_or(ptr %t367, ptr null)
  %t369 = call ptr @__olang_region_home(ptr %t368)
  %t370 = icmp ne ptr %t369, null
  %t371 = select i1 %t370, ptr %t369, ptr %t364
  %t372 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l107, i32 0, i32 0
  %t373 = load { i64, ptr }, ptr %t372
  %t374 = extractvalue { i64, ptr } %t373, 1
  %t375 = call ptr @__olang_region_or(ptr %t374, ptr null)
  %t376 = call ptr @__olang_region_home(ptr %t375)
  %t377 = icmp ne ptr %t376, null
  %t378 = select i1 %t377, ptr %t376, ptr %t371
  %t379 = icmp eq ptr %t378, %t357
  call void @__olang_region_settle(ptr %t357, i1 %t379)
  br label %bb84
bb84:
  %t380 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l107
  %t381 = getelementptr %"compiler/load:Module", ptr %l109, i32 0, i32 0
  %t382 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t382, ptr %t381, !tbaa !27
  %t383 = getelementptr %"compiler/load:Module", ptr %l109, i32 0, i32 1
  %t384 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t384, ptr %t383, !tbaa !27
  %t385 = getelementptr %"compiler/load:Module", ptr %l109, i32 0, i32 2
  %t386 = load { i64, ptr }, ptr %l6, !tbaa !27
  store { i64, ptr } %t386, ptr %t385, !tbaa !27
  %t387 = getelementptr %"compiler/load:Module", ptr %l109, i32 0, i32 3
  %t388 = load i1, ptr %l7, !tbaa !21
  store i1 %t388, ptr %t387, !tbaa !21
  %t389 = getelementptr %"compiler/load:Module", ptr %l109, i32 0, i32 4
  %t390 = load i64, ptr %l8, !tbaa !24
  store i64 %t390, ptr %t389, !tbaa !24
  %t391 = getelementptr %"compiler/load:Module", ptr %l109, i32 0, i32 5
  %t392 = load i1, ptr %l9, !tbaa !21
  store i1 %t392, ptr %t391, !tbaa !21
  %t393 = getelementptr %"compiler/load:Module", ptr %l109, i32 0, i32 6
  %t394 = load ptr, ptr %l10, !tbaa !29
  store ptr %t394, ptr %t393, !tbaa !29
  %t395 = getelementptr %"compiler/load:Module", ptr %l109, i32 0, i32 7
  %t396 = load ptr, ptr %l11, !tbaa !29
  store ptr %t396, ptr %t395, !tbaa !29
  %t397 = getelementptr %"compiler/load:Module", ptr %l109, i32 0, i32 8
  %t398 = load { i64, ptr }, ptr %l12, !tbaa !27
  store { i64, ptr } %t398, ptr %t397, !tbaa !27
  %t399 = getelementptr %"compiler/load:Module", ptr %l109, i32 0, i32 9
  %t400 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l13
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t400, ptr %t399
  %t401 = getelementptr %"compiler/load:Module", ptr %l109, i32 0, i32 10
  %t402 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l14
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t402, ptr %t401
  %t403 = getelementptr %"compiler/load:Module", ptr %l109, i32 0, i32 11
  %t404 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l15
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t404, ptr %t403
  %t405 = getelementptr %"compiler/load:Module", ptr %l109, i32 0, i32 12
  %t406 = load ptr, ptr %l16, !tbaa !29
  store ptr %t406, ptr %t405, !tbaa !29
  %t407 = getelementptr %"compiler/load:Module", ptr %l109, i32 0, i32 13
  %t408 = load ptr, ptr %l17, !tbaa !29
  store ptr %t408, ptr %t407, !tbaa !29
  %t409 = getelementptr %"compiler/load:Module", ptr %l109, i32 0, i32 14
  %t410 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l18
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t410, ptr %t409
  %t411 = getelementptr %"compiler/load:Module", ptr %l109, i32 0, i32 15
  %t412 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l19
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t412, ptr %t411
  %t413 = getelementptr %"compiler/load:Module", ptr %l109, i32 0, i32 16
  %t414 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l20
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t414, ptr %t413
  %t415 = getelementptr %"compiler/load:Module", ptr %l109, i32 0, i32 17
  %t416 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l21
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t416, ptr %t415
  %t417 = getelementptr %"compiler/load:Module", ptr %l109, i32 0, i32 18
  %t418 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l22
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t418, ptr %t417
  %t419 = getelementptr %"compiler/load:Module", ptr %l109, i32 0, i32 19
  %t420 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l23
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t420, ptr %t419
  %t421 = getelementptr %"compiler/load:Module", ptr %l109, i32 0, i32 20
  %t422 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l24
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t422, ptr %t421
  %t423 = getelementptr %"compiler/load:Module", ptr %l109, i32 0, i32 21
  %t424 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l25
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t424, ptr %t423
  %t425 = getelementptr %"compiler/load:Module", ptr %l109, i32 0, i32 22
  %t426 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l26
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t426, ptr %t425
  %t427 = getelementptr %"compiler/load:Module", ptr %l109, i32 0, i32 23
  %t428 = load ptr, ptr %l27, !tbaa !29
  store ptr %t428, ptr %t427, !tbaa !29
  %t429 = getelementptr %"compiler/load:Module", ptr %l109, i32 0, i32 24
  %t430 = load ptr, ptr %l28, !tbaa !29
  store ptr %t430, ptr %t429, !tbaa !29
  %t431 = getelementptr %"compiler/load:Module", ptr %l109, i32 0, i32 25
  %t432 = load ptr, ptr %l29, !tbaa !29
  store ptr %t432, ptr %t431, !tbaa !29
  %t433 = getelementptr %"compiler/load:Module", ptr %l109, i32 0, i32 26
  %t434 = load i1, ptr %l30, !tbaa !21
  store i1 %t434, ptr %t433, !tbaa !21
  %t435 = getelementptr %"compiler/load:Module", ptr %l109, i32 0, i32 27
  %t436 = load i1, ptr %l31, !tbaa !21
  store i1 %t436, ptr %t435, !tbaa !21
  %t437 = getelementptr %"compiler/load:Module", ptr %l109, i32 0, i32 28
  %t438 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l32
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t438, ptr %t437
  %t439 = getelementptr %"compiler/load:Module", ptr %l109, i32 0, i32 29
  %t440 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l33
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t440, ptr %t439
  %t441 = getelementptr %"compiler/load:Module", ptr %l109, i32 0, i32 30
  %t442 = load i1, ptr %l34, !tbaa !21
  store i1 %t442, ptr %t441, !tbaa !21
  %t443 = getelementptr %"compiler/load:Module", ptr %l109, i32 0, i32 31
  %t444 = load { i64, ptr }, ptr %l35, !tbaa !27
  store { i64, ptr } %t444, ptr %t443, !tbaa !27
  %t445 = getelementptr %"compiler/load:Module", ptr %l109, i32 0, i32 32
  %t446 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l36
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t446, ptr %t445
  %t447 = getelementptr %"compiler/load:Module", ptr %l109, i32 0, i32 33
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t380, ptr %t447
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
@.d8 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"/" }>, align 8
@.d9 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c".a" }>, align 8
@.d10 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c".o" }>, align 8
@.d11 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c".so" }>, align 8
@.d12 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c".so." }>, align 8
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
@.d13 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"linux" }>, align 8
@.d14 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"x86_64" }>, align 8
@.d15 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"x86-64" }>, align 8
@olang_2esole_2ecompiler_2fload_3aLoader_2e2 = weak hidden constant i1 false
declare ptr @__olang_region_make(ptr) noinline
@olang_2esole_2ecompiler_2ffetch_3aFetcher_2e1 = weak hidden constant i1 false
@.d16 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c".cache" }>, align 8
declare void @llvm.memcpy.p0.p0.i64(ptr, ptr, i64, i1)
@.d17 = private constant <{ i64, [16 x i8] }> <{ i64 0, [16 x i8] c"file:///nowhere/" }>, align 8
@olang_2esole_2ecompiler_2fload_3aLoader_2e3 = weak hidden constant i1 false
@.d18 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"std" }>, align 8
@.d19 = private constant <{ i64, [10 x i8] }> <{ i64 0, [10 x i8] c"olang.lock" }>, align 8
@.d20 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"/" }>, align 8
@.d21 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d22 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"." }>, align 8
@.d23 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c".." }>, align 8
@.d24 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c".." }>, align 8
@olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1 = weak hidden constant i1 false
declare void @__olang_region_release(ptr) noinline
@.d25 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"/" }>, align 8
@.d26 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"." }>, align 8
@.d27 = private constant <{ i64, [9 x i8] }> <{ i64 0, [9 x i8] c"OLANG_STD" }>, align 8
declare void @__olang_errpay_pop()
@.d28 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d29 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d30 = private constant <{ i64, [14 x i8] }> <{ i64 0, [14 x i8] c"/proc/self/exe" }>, align 8
@.d31 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"std" }>, align 8
@.d32 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c"/../std" }>, align 8
@.d33 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c".deps" }>, align 8
@.d34 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d35 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d36 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d37 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d38 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d39 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d40 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d41 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d42 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c".olang" }>, align 8
@.d43 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d44 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"std/" }>, align 8
@.d45 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@olang_2esole_2ecompiler__2fload__2ecompiler__2fload__3aLoader__2eCondParser_2elocal_2e14 = weak hidden constant i1 false
declare ptr @__olang_region_or(ptr, ptr)
declare void @__olang_region_settle(ptr, i1)
@.d46 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"?" }>, align 8
@olang_2esole_2ecompiler_2fcond_3aGlobal_2e0 = weak hidden constant i1 false
@.d47 = private constant <{ i64, [27 x i8] }> <{ i64 0, [27 x i8] c"an empty path names no file" }>, align 8
@.d48 = private constant <{ i64, [33 x i8] }> <{ i64 0, [33 x i8] c"a path of 4096 characters or more" }>, align 8
@.d49 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d50 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"/" }>, align 8
@.d51 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"." }>, align 8
@olang_2esole_2ecompiler__2fload__2ecompiler__2fload__3aLoader__2eEmbed_2elocal_2e6 = weak hidden constant i1 false
@.d52 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"/" }>, align 8
@.d53 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"." }>, align 8
@.d54 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"." }>, align 8
@.d55 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c".." }>, align 8
@.d56 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d57 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"std/" }>, align 8
@.d58 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"std" }>, align 8
@olang_2esole_2ecompiler__2fload__2ecompiler__2fload__3aLoader__2eEmbed_2elocal_2e9 = weak hidden constant i1 false
@.d59 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"/" }>, align 8
@.d60 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d61 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"/" }>, align 8
@.d62 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"/" }>, align 8
@.d63 = private constant <{ i64, [10 x i8] }> <{ i64 0, [10 x i8] c"it leaves " }>, align 8
@.d64 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d65 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d66 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"std" }>, align 8
@olang_2esole_2ecompiler__2fload__2ecompiler__2fload__3aLoader__2eEmbed_2elocal_2e10 = weak hidden constant i1 false
@.d67 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"/" }>, align 8
declare ptr @__olang_scope_of(ptr, ptr) noinline
@.d68 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d69 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d70 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"/" }>, align 8
@.d71 = private constant <{ i64, [10 x i8] }> <{ i64 0, [10 x i8] c"it leaves " }>, align 8
@.d72 = private constant <{ i64, [16 x i8] }> <{ i64 0, [16 x i8] c", through a link" }>, align 8
@.d73 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c"no file " }>, align 8
@.d74 = private constant <{ i64, [15 x i8] }> <{ i64 0, [15 x i8] c" is a directory" }>, align 8
@.d75 = private constant <{ i64, [15 x i8] }> <{ i64 0, [15 x i8] c" cannot be read" }>, align 8
declare noalias ptr @__olang_scope_alloc_zeroed(ptr, i64)
@.d76 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@__olang_empty_array = external constant [16 x i64]
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
define internal i1 @olang_lambda_77(ptr %env, i64 %a0, i64 %a1) #0 {
entry:
  %l2 = alloca ptr
  %l6 = alloca ptr
  %l8 = alloca { i64, ptr }
  %l12 = alloca ptr
  %l15 = alloca i1
  %rv = alloca i1
  %cp0 = getelementptr { ptr, ptr }, ptr %env, i32 0, i32 0
  %cv0 = load ptr, ptr %cp0, !tbaa !28
  store ptr %cv0, ptr %l2
  %vq0 = getelementptr { ptr, ptr }, ptr %env, i32 0, i32 1
  %vr0 = load ptr, ptr %vq0, !tbaa !28
  %vc0 = call ptr @__olang_capture_scope(ptr %vr0)
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l2, !tbaa !29
  %t3 = getelementptr %"compiler/load:Loader", ptr %t1, i32 0, i32 10
  %t7 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H7bcf2aeb09afa796f4333e6ec8c3f63f(ptr %vc0, ptr %vc0, ptr %t3, i64 %a0)
  store ptr %t7, ptr %l6
  br label %bb1
bb1:
  %t8 = load ptr, ptr %l6, !tbaa !29
  %t10 = getelementptr %"compiler/load:Module", ptr %t8, i32 0, i32 2
  %t11 = load { i64, ptr }, ptr %t10, !tbaa !27
  store { i64, ptr } %t11, ptr %l8, !tbaa !27
  %t12 = load ptr, ptr %l2, !tbaa !29
  %t14 = getelementptr %"compiler/load:Loader", ptr %t12, i32 0, i32 10
  %t18 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H7bcf2aeb09afa796f4333e6ec8c3f63f(ptr %vc0, ptr %vc0, ptr %t14, i64 %a1)
  store ptr %t18, ptr %l12
  br label %bb2
bb2:
  %t19 = load ptr, ptr %l12, !tbaa !29
  %t21 = getelementptr %"compiler/load:Module", ptr %t19, i32 0, i32 2
  %t22 = load { i64, ptr }, ptr %t21, !tbaa !27
  %t23 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t25 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eLess(ptr %vc0, ptr %vc0, { i64, ptr } %t23, { i64, ptr } %t22)
  store i1 %t25, ptr %l15
  br label %bb3
bb3:
  %t26 = load i1, ptr %l15, !tbaa !21
  store i1 %t26, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

@.d78 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c"module " }>, align 8
@.d79 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"\0A" }>, align 8
@.d80 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"  " }>, align 8
@.d81 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d82 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"\0A" }>, align 8
define internal i1 @olang_lambda_83(ptr %env, ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1) #0 {
entry:
  %l4 = alloca i1
  %rv = alloca i1
  br label %start
start:
  br label %bb0
bb0:
  %t5 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eLess(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
  store i1 %t5, ptr %l4
  br label %bb1
bb1:
  %t6 = load i1, ptr %l4, !tbaa !21
  store i1 %t6, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

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

@.d84 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d85 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c".c" }>, align 8
@.d86 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d87 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d88 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@olang_2esole_2ecompiler_2fload_3aLoader_2e15 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2fload_3aLoader_2e16 = weak hidden constant i1 false
@.d89 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"." }>, align 8
@olang_2esole_2ecompiler_2fload_3aModule_2e2 = weak hidden constant i1 false
@.d90 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c"prelude" }>, align 8
@.d91 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c".olang" }>, align 8
@.d92 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@olang_2esole_2ecompiler__2fload__2ecompiler__2fload__3aLoader__2eaddLink_2elocal_2e7 = weak hidden constant i1 false
@.d93 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"-l" }>, align 8
@.d94 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c".c" }>, align 8
@.d95 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"/" }>, align 8
@.d96 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"." }>, align 8
@.d97 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"/" }>, align 8
@.d98 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"/" }>, align 8
@olang_2esole_2ecompiler__2fload__2ecompiler__2fload__3aLoader__2ecImport_2elocal_2e8 = weak hidden constant i1 false
@.d99 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d100 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d101 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d102 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d103 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@olang_2esole_2ecompiler__2fload__2ecompiler__2fload__3aLoader__2ecImport_2elocal_2e9 = weak hidden constant i1 false
@.d104 = private constant <{ i64, [10 x i8] }> <{ i64 0, [10 x i8] c"#include \22" }>, align 8
@.d105 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"\22" }>, align 8
@olang_2esole_2ecompiler__2fload__2ecompiler__2fload__3aLoader__2ecImport_2elocal_2e10 = weak hidden constant i1 false
@.d106 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"/" }>, align 8
@olang_2esole_2ecompiler__2fload__2ecompiler__2fload__3aLoader__2ecImport_2elocal_2e11 = weak hidden constant i1 false
@.d107 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"/" }>, align 8
@.d108 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"./" }>, align 8
@.d109 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"../" }>, align 8
@.d110 = private constant <{ i64, [10 x i8] }> <{ i64 0, [10 x i8] c"#include <" }>, align 8
@.d111 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c">" }>, align 8
@.d112 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"<" }>, align 8
@.d113 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c">" }>, align 8
@.d114 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@olang_2esole_2ecompiler_2fload_3aLoader_2e20 = weak hidden constant i1 false
@.d115 = private constant <{ i64, [13 x i8] }> <{ i64 0, [13 x i8] c"-D_GNU_SOURCE" }>, align 8
@.d116 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"\0A" }>, align 8
@.d117 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"\0A" }>, align 8
@.d118 = private constant <{ i64, [14 x i8] }> <{ i64 0, [14 x i8] c"/proc/self/exe" }>, align 8
@.d119 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"\0A" }>, align 8
@.d120 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c"/cimport" }>, align 8
@.d121 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"/" }>, align 8
@.d122 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d123 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
declare i64 @__olang_fmt_i64(ptr, i64)
@.d124 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d125 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"\0A" }>, align 8
@.d126 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d127 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d128 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"/* " }>, align 8
@.d129 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c" */\0A" }>, align 8
@.d130 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c".olang" }>, align 8
@.d131 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c".c" }>, align 8
@.d132 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c".deps" }>, align 8
@.d133 = private constant <{ i64, [39 x i8] }> <{ i64 0, [39 x i8] c"its translation cannot be written into " }>, align 8
@olang_2esole_2ecompiler__2fload__2ecompiler__2fload__3aLoader__2ecImport_2elocal_2e22 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2fload_3aModule_2e0 = weak hidden constant i1 false
@.d134 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c".olang" }>, align 8
@.d135 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c".c" }>, align 8
@.d136 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c".c" }>, align 8
@olang_2esole_2ecompiler_2fload_3aModule_2e31 = weak hidden constant i1 false
@.d137 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c".c" }>, align 8
@.d138 = private constant <{ i64, [9 x i8] }> <{ i64 0, [9 x i8] c"# symbol " }>, align 8
@.d139 = private constant <{ i64, [15 x i8] }> <{ i64 0, [15 x i8] c"# not declared:" }>, align 8
@.d140 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@olang_2esole_2estd_2fprelude_2fmap_3aMapEntry_3cstd_2fprelude_2ftext_3aString_26_2c_20st_Ha3f33385783b00c3f13cf90b683d8670 = weak hidden constant i1 false
@olang_2esole_2estd_2fprelude_2fmap_3aMapEntry_3cstd_2fprelude_2ftext_3aString_26_2c_20st_Ha3f33285783aff10f13cf80b683d8c03 = weak hidden constant i1 false
@.d141 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"#   " }>, align 8
@.d142 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c": " }>, align 8
@.d143 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"." }>, align 8
@.d144 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@olang_2esole_2ecompiler__2fload__2ecompiler__2fload__3aLoader__2eimportAt_2elocal_2e6 = weak hidden constant i1 false
@.d145 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d146 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"link" }>, align 8
@olang_2esole_2ecompiler_2fload_3aImport_2e6 = weak hidden constant i1 false
@.d147 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d148 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@olang_2esole_2ecompiler_2fload_3aModule_2e6 = weak hidden constant i1 false
declare void @__olang_bang_failed_plain(ptr) cold noreturn
@.d149 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d150 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"std/" }>, align 8
@olang_2esole_2ecompiler_2fdiagmsg_3aMsg_2e2 = weak hidden constant i1 false
@.d151 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d152 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@olang_2esole_2ecompiler_2fload_3aModule_2e12 = weak hidden constant i1 false
@.d153 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c".h" }>, align 8
@.d154 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c".c" }>, align 8
@.d155 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d156 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d157 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d158 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d159 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d160 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"Array" }>, align 8
@.d161 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d162 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c".olang" }>, align 8
@.d163 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d164 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d165 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"std/" }>, align 8
@olang_2esole_2ecompiler__2fload__2ecompiler__2fload__3aLoader__2eresolve_2elocal_2e8 = weak hidden constant i1 false
@.d166 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"." }>, align 8
@.d167 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"/" }>, align 8
@.d168 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c".olang" }>, align 8
@olang_2esole_2ecompiler__2fload__2ecompiler__2fload__3aLoader__2eresolve_2elocal_2e9 = weak hidden constant i1 false
@.d169 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"std/" }>, align 8
@.d170 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"std" }>, align 8
@.d171 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"." }>, align 8
@.d172 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c".." }>, align 8
@.d173 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"/" }>, align 8
@.d174 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d175 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d176 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d177 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d178 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d179 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c".olang" }>, align 8
@.d180 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"/" }>, align 8
@.d181 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"/" }>, align 8
@.d182 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"." }>, align 8
@.d183 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c".olang" }>, align 8
@.d184 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"/" }>, align 8
@.d185 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c".olang" }>, align 8
@.d186 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"/" }>, align 8
@.d187 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d188 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"." }>, align 8
@.d189 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"." }>, align 8
@.d190 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c".." }>, align 8
@.d191 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"std/" }>, align 8
@.d192 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"std" }>, align 8
@olang_2esole_2ecompiler__2fload__2ecompiler__2fload__3aLoader__2eresolve_2elocal_2e21 = weak hidden constant i1 false
@.d193 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"/" }>, align 8
@.d194 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d195 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"/" }>, align 8
@.d196 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d197 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d198 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d199 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d200 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"/" }>, align 8
@olang_2esole_2ecompiler__2fload__2ecompiler__2fload__3aLoader__2erootIdentity_2elocal_2e4 = weak hidden constant i1 false
@.d201 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"/" }>, align 8
@.d202 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"std/" }>, align 8
@olang_2esole_2ecompiler__2fload__2ecompiler__2fload__3aLoader__2erootIdentity_2elocal_2e5 = weak hidden constant i1 false
@.d203 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d204 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c".olang" }>, align 8
@.d205 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d206 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d207 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d208 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d209 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d210 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d211 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"." }>, align 8
@.d212 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c".tmp" }>, align 8
@.d213 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"/" }>, align 8
@.d214 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"/" }>, align 8
@.d215 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"." }>, align 8
@.d216 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"/" }>, align 8
@.d217 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"/" }>, align 8
@.d218 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"/" }>, align 8
@.d219 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"/" }>, align 8
@.d220 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@olang_2esole_2ecompiler_2fload_3aLoader_2e5 = weak hidden constant i1 false
define linkonce_odr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_20Bool_3e(ptr %v0) #0 {
entry:
  %l0 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %rv = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  br label %start
start:
  br label %bb0
bb0:
  %t1 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_20Bool_3e_2ector(ptr %v0)
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

declare ptr @__olang_region_home(ptr)
@olang_2esole_2ecompiler_2fload_3aLoader_2e6 = weak hidden constant i1 false
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

@olang_2esole_2ecompiler_2fload_3aLoader_2e7 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2fload_3aLoader_2e9 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2fload_3aLoader_2e11 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2fload_3aLoader_2e13 = weak hidden constant i1 false
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

@olang_2esole_2ecompiler_2fload_3aLoader_2e14 = weak hidden constant i1 false
@.d221 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d222 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@olang_2esole_2ecompiler_2fload_3aLoader_2e17 = weak hidden constant i1 false
define linkonce_odr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20Array_3cU8_3e_26_3e(ptr %v0) #0 {
entry:
  %l0 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %rv = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  br label %start
start:
  br label %bb0
bb0:
  %t1 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20Array_3cU8_3e_26_3e_2ector(ptr %v0)
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

@olang_2esole_2ecompiler_2fload_3aLoader_2e19 = weak hidden constant i1 false
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

@.d223 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@olang_2esole_2ecompiler_2fload_3aLoader_2e21 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2fload_3aModule_2e9 = weak hidden constant i1 false
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
@.d224 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@olang_2esole_2ecompiler_2fload_3aModule_2e32 = weak hidden constant i1 false
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
@__olang_prog_scope = external thread_local(initialexec) global ptr
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
declare i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aChar_2eIsLetter(i8 %a0)
declare i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aChar_2eIsDigit(i8 %a0)
declare { i32, i64 } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eFindLast(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
declare i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEndsWith(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
@olang_loc_30f594fd977814cf_401937ed3e69cedb = external constant [0 x i8]
declare i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
@olang_loc_1c8bacfe99267df9_69ae7b78a686d77d = external constant [0 x i8]
declare i1 @std_2fprelude_2farray_2eArray_3cstd_2fprelude_2ftext_3aChar_3e_2eContains_3cstd_2fprelude_2ftext_3aChar_3e(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
declare void @compiler_2fcond_3aConsts_2ector(ptr %out, ptr %v0)
declare void @compiler_2fcond_2ecompiler_2fcond_3aConsts_2eBuiltins(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, { i64, ptr } %a1, { i64, ptr } %a2, { i64, ptr } %a3, i64 %a4, i64 %a5, i1 %a6, i1 %a7, i1 %a8)
declare void @compiler_2ffetch_3aFetcher_2ector(ptr %out, ptr %v0, ptr %v1, ptr %v2, ptr %v3, { i64, ptr } %a0, { i64, ptr } %a1, { i64, ptr } %a2, i1 %a3, i1 %a4)
declare %"compiler/source:Names" @compiler_2fsource_3aNames_2ector(ptr %v0)
declare void @compiler_2fdiag_3aDiagnostics_2ector(ptr %out, ptr %v0, i1 %a0)
declare { i64, ptr } @std_2ffilepath_2eDir(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare { i64, ptr } @std_2ffilepath_2eJoin(ptr %v0, ptr %v1, { i64, ptr } %a0)
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
declare { i32, { i64, ptr } } @std_2fos_2eEnv(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare { i32, { i64, ptr } } @std_2fos_2eReadLink(ptr %v0, ptr %v1, { i64, ptr } %a0)
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
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI32_3e_2eLen_3cI32_3e(ptr %v0, ptr %a0)
declare i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI32_3e_2eAt_3cI32_3e(ptr %v0, ptr %a0, i64 %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %a0, i64 %a1)
@olang_loc_5d2941245b0f1fa7_46eb30867ff7b79b = external constant [0 x i8]
declare i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eAddFile(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1, { i64, ptr } %a2, i1 %a3)
@olang_loc_59c39bf8bbcbf188_f14f86d27dc81ac = external constant [0 x i8]
declare void @compiler_2fparse_3aParser_2ector(ptr %out, ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %v5, ptr %a0, ptr %a1, ptr %a2, ptr %a3, ptr %a4, i64 %a5)
declare %"compiler/cond:Scope" @compiler_2fcond_3aScope_2ector(ptr %v0, i1 %a0)
@olang_loc_4d8cd44e3790675d_2617b874cf4b9361 = external constant [0 x i8]
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %a0)
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
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eSetAt_3cI64_3e(ptr %v0, ptr %a0, i64 %a1, i64 %a2)
@olang_loc_9daea36ebb972439_574e08d4d8c23575 = external constant [0 x i8]
declare i1 @std_2fos_2eExists(ptr %v0, { i64, ptr } %a0)
@olang_loc_af475931a368800c_57263df876e21e18 = external constant [0 x i8]
declare i64 @std_2fprelude_2farray_2eArray_3cstd_2fprelude_2ftext_3aChar_3e_2eCountOf_3cstd_2fprelude_2ftext_3aChar_3e(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
declare { i32, { i64, ptr } } @std_2fos_2eRealPath(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_H31dec199381f6e2bb0c82058ea887922(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare i1 @std_2fos_2eIsDir(ptr %v0, { i64, ptr } %a0)
@olang_loc_5aefafbfcb5eb6b7_7e4be8b78a5947cb = external constant [0 x i8]
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_Ha0f924a08ec45a4a582ec1782d69c4be(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1, { i64, ptr } %a2)
declare { i32, { i64, ptr } } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_H412951a1c1c3c34f4f6a5a14e25e5986(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1)
@olang_loc_6f6a8c9f8e5b8646_ccdd31ccd2674fa = external constant [0 x i8]
@olang_loc_53eff658f30813a6_f347cd1231cef772 = external constant [0 x i8]
declare void @std_2fprelude_2farray_2eArray_3cI64_3e_2eSort_3cI64_2c_20_3f_3e(ptr %v0, ptr %v1, { i64, ptr } %a0, ptr %a1c, ptr %a1e)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fload_3aImport_3e_2eLen_3ccompiler_2fload_3aImport_3e(ptr %v0, ptr %a0)
declare %"compiler/load:Import" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fload_3aImport_3e_2eAt_3ccompiler_2fload_3aImport_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H1642129570dad448bb7dcc47c334de83(ptr %v0, ptr %v1, ptr %a0, ptr %a1c, ptr %a1e)
declare { i32, { i64, ptr } } @std_2fos_2eCwd(ptr %v0)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eIsDirectory(ptr %v0)
declare void @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eFatal(ptr %v0, ptr %v1, ptr %a0, { i64, [3 x i64] } %a1, %"compiler/diagmsg:Msg" %a2)
declare { i32, { i64, ptr } } @std_2fos_2eReadDir(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare %"compiler/scan:Tokens" @compiler_2fscan_2eTokens_2eScan(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fpair_3aPair_3cI64_2c_20I32_3e_3e_2ector(ptr %v0, i64 %a0)
declare %"std/pair:Pair.d0636885f2b44490dbc61e56fa468a20" @std_2fpair_3aPair_3cI64_2c_20I32_3e_2ector(ptr %v0, i64 %a0, i32 %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fpair_3aPair_3cI64_2c_20I32_3e_3e_H3d0936d94fa2a15581f68618fbda67e4(ptr %v0, ptr %a0, %"std/pair:Pair.d0636885f2b44490dbc61e56fa468a20" %a1)
@olang_loc_d2a36b1a0f33f2c5_8bb351bc5bea8f1 = external constant [0 x i8]
@olang_loc_c887c5acf0277416_b8456d2f32e25a62 = external constant [0 x i8]
declare i1 @std_2ffilepath_2eIsAbs(ptr %v0, { i64, ptr } %a0)
declare { i64, ptr } @compiler_2fmsgs_2eTok(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eLinkName(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eError(ptr %v0, ptr %v1, ptr %a0, { i64, [3 x i64] } %a1, %"compiler/diagmsg:Msg" %a2)
declare i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_H6b5ccacad8db807339a3579aa8c82ff8(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_H2b85ceff512af6e6ca26c554a1c16247(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1, i1 %a2)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %a0, i64 %a1)
declare void @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eChoose(ptr %v0, ptr %a0, i64 %a1)
declare void @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eDrop(ptr %v0, ptr %a0, i64 %a1)
declare { i64, ptr } @std_2ffilepath_2eBase(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eCFileNotFound(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare { i64, ptr } @compiler_2ftarget_2eFindClang(ptr %v0)
declare { i64, ptr } @std_2fsha256_2eHex(ptr %v0, ptr %v1, { i64, ptr } %a0)
@olang_loc_4449aa9d363b5b4e_4db0be62c6b6e3d2 = external constant [0 x i8]
@olang_loc_7c6f8f6ffdbdf94b_ce4c5ade044a53cf = external constant [0 x i8]
declare { i64, ptr } @compiler_2ffetch_2eCacheDir(ptr %v0)
declare { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H835e186358a312b102cd15b4faa0b451(ptr %v0, ptr %v1, ptr %a0)
declare %"compiler/bindgen:Translation" @compiler_2fbindgen_2eTranslation_2eTranslate(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %v5, ptr %v6, { i64, ptr } %a0, { i64, ptr } %a1, { i64, ptr } %a2, { i64, ptr } %a3, { i64, ptr } %a4, { i64, ptr } %a5)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eCHeaderNotFound(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eCImportFailed(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1)
@olang_loc_cc736817fb6c70d0_6e757e50f6c823e4 = external constant [0 x i8]
declare %"std/os:FileInfo" @std_2fos_3aFileInfo_2ector(ptr %v0, i32 %a0, i64 %a1, i64 %a2)
@olang_loc_d93100fd80a187ad_1e56be64fe5806d1 = external constant [0 x i8]
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_H6f7a2f8d839c49b6e7a19c287d4b190c(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1, { i64, ptr } %a2)
declare { i32, i64 } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eFind(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
@olang_loc_2997e1d684418a32_f4dc9b5865eb58ee = external constant [0 x i8]
@olang_loc_c7262fe51519f763_af68021c51d3e65f = external constant [0 x i8]
@olang_loc_5374637873936654_bf4b9d38f6a4cac0 = external constant [0 x i8]
@olang_loc_a9d5346f51b5ce49_2177b031869164d5 = external constant [0 x i8]
declare void @compiler_2fparse_2ecompiler_2fparse_3aOracle_2eAdd(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1, { i64, ptr } %a2, { i64, ptr } %a3)
declare void @compiler_2fparse_2ecompiler_2fparse_3aOracle_2eAddFn(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1, { i64, ptr } %a2, { i64, ptr } %a3)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %v0, i64 %a0)
declare i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eHas_3cI64_3e(ptr %v0, ptr %a0, i64 %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eImportReachedTwice(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eReexportCycle(ptr %v0, ptr %v1, { i64, ptr } %a0)
@olang_loc_f27e16b36a34913f_9730f0a664aef8cb = external constant [0 x i8]
@olang_loc_f6bd06efaafe5f20_6d37165570c63ddc = external constant [0 x i8]
declare i32 @compiler_2fscan_2ecompiler_2fscan_3aTokens_2eMatch(ptr %v0, ptr %a0, i32 %a1)
declare i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eAt_3cBool_3e(ptr %v0, ptr %a0, i64 %a1)
@olang_loc_10115782cae2d59a_b13624e5abc6764e = external constant [0 x i8]
declare %"compiler/cond:Decision" @compiler_2fcond_3aDecision_2ector(ptr %v0, i32 %a0, i1 %a1)
@olang_loc_c8cfdf98ee3f2b21_1207f6627874c5f5 = external constant [0 x i8]
@olang_loc_b990dbcfbe082b6c_e09e9a90e433de0 = external constant [0 x i8]
declare void @compiler_2fcond_3aEval_2ector(ptr %out, ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, { i64, ptr } %a0, ptr %a1, ptr %a2, ptr %a3)
declare %"compiler/cond:Decision" @compiler_2fcond_2ecompiler_2fcond_3aEval_2eTop(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare { %"compiler/source:Span", %"compiler/diagmsg:Msg" } @compiler_2fcond_2ecompiler_2fcond_3aEval_2eError(ptr %v0, ptr %v1, ptr %a0)
@olang_loc_e0f283e125550868_38a74932bc9801b4 = external constant [0 x i8]
declare %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v0, ptr %a0)
@olang_loc_d07ee4e1bf4c721e_f2d4ed263b6afcda = external constant [0 x i8]
@olang_loc_88eba3596c4d138c_c1530d55fa80a9b0 = external constant [0 x i8]
@olang_loc_17f5e01691795fb_80a050950937648f = external constant [0 x i8]
@olang_loc_fd1d115e36d277d2_104a63438b39a3d6 = external constant [0 x i8]
@olang_loc_3753a1d7262b2cc1_bd09a853d1b85305 = external constant [0 x i8]
@olang_loc_a7b0777888cd5d70_d2e13e44ce4d5eec = external constant [0 x i8]
declare { i64, ptr } @compiler_2fscan_2eLiteralText(ptr %v0, ptr %v1, { i64, ptr } %a0)
@olang_loc_8e32ae472cd64327_c149890ad1056c3 = external constant [0 x i8]
@olang_loc_a448ee53d606ecee_601f65a9d3b58c7a = external constant [0 x i8]
@olang_loc_7e96417109578add_9add255974295329 = external constant [0 x i8]
@olang_loc_7fc0c111e9e5248c_f920a424be87ad0 = external constant [0 x i8]
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fload_3aImport_3e_2ePush_3ccompiler_2fload_3aImport_3e(ptr %v0, ptr %v1, ptr %a0, %"compiler/load:Import" %a1)
@olang_loc_8d00da697bdede94_44bec053299cee38 = external constant [0 x i8]
@olang_loc_48f6b1615f8729a3_475230e078a39a57 = external constant [0 x i8]
@olang_loc_84ff0c17d81b0522_bd67c888a6b30066 = external constant [0 x i8]
@olang_loc_d94d7cabf7c0d80c_70e4be23ec99f380 = external constant [0 x i8]
@olang_loc_5b111b92813268a2_708e5f917af86066 = external constant [0 x i8]
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_Hadc5a27c7dd302cda1d0e8a7732d6686(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_He27db0a1785588531472bfd2db42574f(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
@olang_loc_67b56c0a83b8bd03_8d743f7b3592caff = external constant [0 x i8]
@olang_loc_867763f6879c47c1_85ff3e3f6e82a415 = external constant [0 x i8]
declare %"compiler/source:Source" @compiler_2fsource_3aSource_2ector(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1)
declare { i32, %"compiler/source:Source" } @compiler_2fsource_2eSource_2eRead(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eCannotOpen(ptr %v0)
declare { i32, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H30b952b85dc190b6cd5306b9d98a7749(ptr %v0, ptr %v1, ptr %a0)
@olang_loc_bf0719959bfa757a_6a83aba191150c56 = external constant [0 x i8]
@olang_loc_97fda29c929b9401_a297b77e137a783d = external constant [0 x i8]
@olang_loc_8eb73d0fe26fae48_56cde13f0d79d76c = external constant [0 x i8]
declare { i64, ptr } @compiler_2fscan_2ecompiler_2fscan_3aDiag_2eRule(ptr %v0, %"compiler/scan:Diag" %a0)
declare { i64, ptr } @compiler_2fscan_2ecompiler_2fscan_3aDiag_2eMessage(ptr %v0, %"compiler/scan:Diag" %a0)
declare %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, i32 %a0, { i64, ptr } %a1, { i64, ptr } %a2, { i64, ptr } %a3, { i64, ptr } %a4)
declare void @compiler_2fparse_3aOracle_2ector(ptr %out, ptr %v0)
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fload_3aImport_3e_2eRefMut_3ccompiler_2fload_3aImport_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eImportAliasInvalid(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eLinkOnOlangImport(ptr %v0)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eImportAliasConflict(ptr %v0, ptr %v1, { i64, ptr } %a0)
@olang_loc_fb45b5897f8c270_56a4f9a48484bf74 = external constant [0 x i8]
@olang_loc_4820d8be822def4f_666b99eead9f0f03 = external constant [0 x i8]
@olang_loc_d940f9862e24151e_9dcc71718a42ab82 = external constant [0 x i8]
@olang_loc_2ca78ec550b059c5_f5cdcad03c843269 = external constant [0 x i8]
@olang_loc_8f863f78ae5527a5_d98381c5cf71b659 = external constant [0 x i8]
@olang_loc_d1a77ba1d5054afe_d44f3bbb44d4a532 = external constant [0 x i8]
@olang_loc_ae9d746b68f04eaf_c5efeab384942473 = external constant [0 x i8]
declare { i64, ptr } @compiler_2fparse_2ecompiler_2fparse_3aParser_2eFile(ptr %v0, ptr %v1, ptr %a0)
@olang_loc_2753d2bb7793a0fa_e1a4644f7c04bcf6 = external constant [0 x i8]
@olang_loc_4a5bc26e34bf81_f78399c125ad415d = external constant [0 x i8]
declare ptr @compiler_2fparse_2eGenericFnNames(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, ptr %a1)
@olang_loc_75be0ecbfd40364c_3ba616ba9e8cb88 = external constant [0 x i8]
@olang_loc_d161242c40b74370_507871439a6630a4 = external constant [0 x i8]
@olang_loc_9cda1922aec704f_35a4007cf0fda73 = external constant [0 x i8]
@G_2ecompiler_2ftoken_2eLineBreak = available_externally constant <{ [1 x i8] }> <{ [1 x i8] c"\01" }>, align 8
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eImportPathTooLong(ptr %v0)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eImportHasExtension(ptr %v0)
@olang_loc_6772f502359d02a_1b697b2141371efe = external constant [0 x i8]
@olang_loc_c7e55e824de13607_c088d15fef4da17b = external constant [0 x i8]
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eImportLeavesRoot(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eImportRemoteNeedsFile(ptr %v0)
declare { i32, { i64, ptr } } @compiler_2ffetch_2ecompiler_2ffetch_3aFetcher_2eFetch(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %a0, { i64, ptr } %a1, { i64, ptr } %a2, { i64, ptr } %a3)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eImportRemoteBadName(ptr %v0)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eImportLockNotACommit(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eImportFetchFailed(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eImportLockedFetchFailed(ptr %v0, ptr %v1, { i64, ptr } %a0)
@olang_loc_91ed1932ac5cd85c_f28264288e99980 = external constant [0 x i8]
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eImportFileNotFound(ptr %v0, ptr %v1, { i64, ptr } %a0)
@olang_loc_d9612e2b18e8b492_6662b34d58c1f606 = external constant [0 x i8]
@olang_loc_e481e3499ae60e8f_66ba2a1e23e9a0e3 = external constant [0 x i8]
@olang_loc_281d6687dd267da4_55752feab9766ac8 = external constant [0 x i8]
@olang_loc_f33836f530001f0a_3e5ddd8b9e2e63ae = external constant [0 x i8]
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI32_3e_2ePush_3cI32_3e(ptr %v0, ptr %a0, i32 %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2ePush_3cBool_3e(ptr %v0, ptr %a0, i1 %a1)
@olang_loc_e83704c0903811_d990170ae1d54355 = external constant [0 x i8]
@olang_loc_766ae0e3e1f9b91c_7764041251e8a940 = external constant [0 x i8]
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eSetAt_3cBool_3e(ptr %v0, ptr %a0, i64 %a1, i1 %a2)
@olang_loc_192e19daea0c4a8c_84edcc0a58286798 = external constant [0 x i8]
declare { i64, ptr } @compiler_2ftarget_2eWhereIs(ptr %v0, ptr %v1, { i64, ptr } %a0)
@olang_loc_4f7ff751eb66f618_e3b0711c9f747694 = external constant [0 x i8]
@olang_loc_4fa7c22e4d470d75_c9a9030dc047401 = external constant [0 x i8]
declare { i32, %"std/os:Output" } @std_2fos_2eOutput_2eExec(ptr %v0, ptr %v1, ptr %v2, ptr %v3, { i64, ptr } %a0, { i64, ptr } %a1, i1 %a2, { i64, ptr } %a3)
@olang_loc_9030b146fc4de6e4_df02f4157fd8ffa0 = external constant [0 x i8]
@olang_loc_37cfce4d2d6116b3_dac403d93f0f31bf = external constant [0 x i8]
@olang_loc_eaa065d2073c0672_9cd5a42be91f6f0e = external constant [0 x i8]
declare i32 @std_2fos_2eMkDirAll(ptr %v0, { i64, ptr } %a0)
declare i32 @compiler_2ftarget_2ePid()
declare i32 @std_2fos_2eWriteFile(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
declare i32 @std_2fos_2eRename(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
declare i32 @std_2fos_2eRemove(ptr %v0, { i64, ptr } %a0)
@olang_loc_9a4e1e4457f2709_31a5a56895743715 = external constant [0 x i8]
@olang_loc_738c5ab5e9ce8338_c044a83eb6fe7eb4 = external constant [0 x i8]
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eAllSaid(ptr %v0, ptr %v1, ptr %a0)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fdiag_3aSaid_3e_2eLen_3ccompiler_2fdiag_3aSaid_3e(ptr %v0, ptr %a0)
declare %"compiler/diag:Said" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fdiag_3aSaid_3e_2eAt_3ccompiler_2fdiag_3aSaid_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
@olang_loc_61485bf8b9fa4014_95a81608270a26e0 = external constant [0 x i8]
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2ector(ptr %v0, i64 %a0)
@olang_loc_ddd103a03d6047bb_df8a4b94c4d7f62f = external constant [0 x i8]
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fload_3aImport_3e_2ector(ptr %v0, i64 %a0)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI32_3e_2ector(ptr %v0, i64 %a0)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cBool_3e_2ector(ptr %v0, i64 %a0)
declare i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eLess(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
declare %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20Bool_3e_2ector(ptr %v0)
declare %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_20Bool_3e_2ector(ptr %v0)
declare %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2ector(ptr %v0)
declare %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20std_2fprelude_2ftext_3aString_26_3e_2ector(ptr %v0)
declare %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20Array_3cU8_3e_26_3e_2ector(ptr %v0)
declare %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2ector(ptr %v0)

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

attributes #0 = { null_pointer_is_valid "target-cpu"="sapphirerapids" "target-features"="+64bit,+adx,+aes,+amx-bf16,+amx-int8,+amx-tile,+avx,+avx2,-avx512bf16,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512fp16,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+avxvnni,+bmi,+bmi2,+cldemote,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+evex512,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+movdir64b,+movdiri,+pclmul,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+rtm,+sahf,+serialize,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+tsxldtrk,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-complex,-amx-fp16,-avx10.1-256,-avx10.1-512,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-kl,-lwp,-mwaitx,-ndd,-pconfig,-pku,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-uintr,-usermsr,-waitpkg,-widekl,-xop" "prefer-vector-width"="512" nounwind }
