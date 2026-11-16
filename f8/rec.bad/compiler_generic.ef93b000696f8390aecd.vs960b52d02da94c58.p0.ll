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
%"compiler/source:Span" = type { i32, i32 }
%"compiler/ast:Func" = type { %"compiler/source:Span", ptr, i32, ptr, { i64, ptr }, { i64, ptr }, i1, i1, { i64, ptr }, ptr, i32 }
%"compiler/ast:Sig" = type { { i64, ptr }, { i64, ptr }, i1, { i64, ptr }, i1, i1, i1, { i64, ptr } }
%"compiler/generic:cursor" = type { { i64, ptr }, i64 }
%"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" = type { { i64, ptr }, i64, i64 }
%"compiler/generic:Unmet" = type { i64, i32, i32, i1, i1, i1 }
%"compiler/generic:fnRow" = type { i64, ptr, i1 }
%"compiler/generic:Program" = type { ptr, ptr, %"compiler/types:Table", %"compiler/facts:Table", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"compiler/generic:Origin", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"compiler/types:Table" = type { ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" = type { { i64, ptr }, { i64, ptr }, { i64, ptr }, i64, i64, i64 }
%"compiler/facts:Table" = type { %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, i64 }
%"compiler/generic:Origin" = type { i64, %"compiler/source:Span", i64, i32 }
%"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" = type { i64, i64 }
%"compiler/generic:Context" = type { i64, i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"compiler/ast:TypeDecl" = type { i32, { i64, ptr }, i1, ptr, { i64, ptr }, i32, i1 }
%"compiler/ast:StructBody" = type { { i64, ptr }, ptr, { i64, ptr }, %"compiler/source:Span", { i64, ptr }, { i64, ptr } }
%"compiler/generic:folded" = type { i64, i64, i32 }
%"compiler/generic:instance" = type { i64, i32, i32, { i64, ptr }, { i64, ptr }, %"compiler/generic:Origin" }
%"compiler/ast:TypeParam" = type { %"compiler/source:Span", i32, ptr, { i64, ptr }, i1 }
%"compiler/generic:Binding" = type { i64, i64, { i64, ptr }, { i64, ptr }, { i64, ptr } }
%"compiler/ast:Param" = type { %"compiler/source:Span", i32, ptr, ptr, { i64, ptr } }
%"compiler/load:Import" = type { %"compiler/source:Span", %"compiler/source:Span", { i64, ptr }, { i64, ptr }, i64, i64, { i64, ptr }, %"compiler/source:Span" }
%"compiler/load:Loader" = type { { i64, ptr }, ptr, ptr, ptr, ptr, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", { i64, ptr }, { i64, ptr }, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", { i64, ptr }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/load:Module" = type { { i64, ptr }, { i64, ptr }, { i64, ptr }, i1, i64, i1, ptr, ptr, { i64, ptr }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr, ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr, ptr, ptr, i1, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, { i64, ptr }, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"compiler/names:Ref" = type { i32, i64, i64 }
%"compiler/generic:ConstAsk" = type { i64, ptr, i32, i64, { i64, ptr }, { i64, ptr }, { i64, ptr } }
%"std/prelude/map:MapIter.bf5835bb10600fe6a7fc1da14a6360d9" = type { ptr, i64 }
%"std/prelude/map:MapEntry.91de8c8eb84d52d1e58996aec31d85aa" = type { i32, i32 }
%"compiler/generic:pattern" = type { ptr, i64, i64, i32, ptr }
%"compiler/generic:varRow" = type { i64, i32, i32, i32 }
%"compiler/diagmsg:Msg" = type { i32, { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr } }
%"compiler/ast:CaseDecl" = type { %"compiler/source:Span", i32, { i64, ptr }, i1, ptr, { i64, ptr } }
%"compiler/ast:Promise" = type { %"compiler/source:Span", i32, { i64, ptr } }
%"compiler/ast:Match" = type { %"compiler/source:Span", ptr, i1, { i64, ptr } }
%"compiler/ast:Case" = type { %"compiler/source:Span", { i64, ptr }, { i64, ptr }, ptr, { i64, ptr }, ptr }
%"compiler/generic:genRoots" = type { { i64, ptr }, { i64, ptr }, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64 }
%"compiler/ast:TopIf" = type { ptr, ptr, ptr, ptr }
%"compiler/ast:TopBranch" = type { %"compiler/source:Span", { i64, ptr }, i64 }
%"compiler/generic:Desc" = type { i64, i32, i64, i64 }
@G_2ecompiler_2fgeneric_2eArrayKey = constant <{ [8 x i8] }> <{ [8 x i8] c"\00\00\00\00\00\02\00\00" }>, align 8
@G_2ecompiler_2fgeneric_2eDescCase = constant <{ [8 x i8] }> <{ [8 x i8] c"\02\00\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2fgeneric_2eDescField = constant <{ [8 x i8] }> <{ [8 x i8] c"\01\00\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2fgeneric_2eDescFunc = constant <{ [8 x i8] }> <{ [8 x i8] c"\05\00\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2fgeneric_2eDescNone = constant <{ [8 x i8] }> <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2fgeneric_2eDescParam = constant <{ [8 x i8] }> <{ [8 x i8] c"\03\00\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2fgeneric_2eDescResult = constant <{ [8 x i8] }> <{ [8 x i8] c"\04\00\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2fgeneric_2eFolded = constant <{ [8 x i8] }> <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2fgeneric_2eGenFromReturn = constant <{ [8 x i8] }> <{ [8 x i8] c"\FE\FF\FF\FF\FF\FF\FF\FF" }>, align 8
@G_2ecompiler_2fgeneric_2eGenLocalBit = constant <{ [8 x i8] }> <{ [8 x i8] c"\00\00\00\00\00\00\00\40" }>, align 8
@G_2ecompiler_2fgeneric_2eGenPerTurn = constant <{ [8 x i8] }> <{ [8 x i8] c"\FF\FF\FF\FF\FF\FF\FF\FF" }>, align 8
@G_2ecompiler_2fgeneric_2eListBuilders = constant <{ [8 x i8] }> <{ [8 x i8] c"\06\00\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2fgeneric_2eListCases = constant <{ [8 x i8] }> <{ [8 x i8] c"\01\00\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2fgeneric_2eListFields = constant <{ [8 x i8] }> <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2fgeneric_2eListFunctions = constant <{ [8 x i8] }> <{ [8 x i8] c"\04\00\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2fgeneric_2eListMethods = constant <{ [8 x i8] }> <{ [8 x i8] c"\05\00\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2fgeneric_2eListParams = constant <{ [8 x i8] }> <{ [8 x i8] c"\02\00\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2fgeneric_2eListResults = constant <{ [8 x i8] }> <{ [8 x i8] c"\03\00\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2fgeneric_2eMaxChain = constant <{ [8 x i8] }> <{ [8 x i8] c"\E8\03\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2fgeneric_2eMaxDepth = constant <{ [8 x i8] }> <{ [8 x i8] c"\30\00\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2fgeneric_2eNoOrigin = constant <{ [32 x i8] }> <{ [32 x i8] c"\FF\FF\FF\FF\FF\FF\FF\FF\00\00\00\00\00\00\00\00\FF\FF\FF\FF\FF\FF\FF\FF\01\00\00\00\00\00\00\00" }>, align 32
@G_2ecompiler_2fgeneric_2ePending = constant <{ [8 x i8] }> <{ [8 x i8] c"\01\00\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2fgeneric_2eRunTimeLength = constant <{ [8 x i8] }> <{ [8 x i8] c"\00\00\00\00\00\00\00\80" }>, align 8
@G_2ecompiler_2fgeneric_2eUnfolded = constant <{ [8 x i8] }> <{ [8 x i8] c"\02\00\00\00\00\00\00\00" }>, align 8
define dso_local i1 @compiler_2fgeneric_2eProjectsType(ptr %v0, { i64, ptr } %a0) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l2 = alloca i1
  %l3 = alloca i1
  %l5 = alloca i1
  %l6 = alloca i1
  %l8 = alloca i1
  %l9 = alloca i1
  %l11 = alloca i1
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
  %t7 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t5, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d1, i32 0, i32 1) })
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
  %t12 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t10, { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d2, i32 0, i32 1) })
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
  %t17 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t15, { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d3, i32 0, i32 1) })
  store i1 %t17, ptr %l11
  br label %bb12
bb12:
  %t18 = load i1, ptr %l11, !tbaa !21
  store i1 %t18, ptr %l9, !tbaa !21
  br label %bb13
bb13:
  call void @__olang_scope_close(ptr %s0)
  %t19 = load i1, ptr %l9, !tbaa !21
  store i1 %t19, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i32 @compiler_2fgeneric_2ebaseName(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca ptr
  %l3 = alloca i32
  %l4 = alloca ptr
  %l5 = alloca i1
  %l11 = alloca ptr
  %l12 = alloca i1
  %l17 = alloca ptr
  %l18 = alloca i1
  %l23 = alloca ptr
  %l24 = alloca i1
  %l29 = alloca ptr
  %l30 = alloca i1
  %l36 = alloca i32
  %rv = alloca i32
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1, ptr %l4, !tbaa !29
  store i1 false, ptr %l5, !tbaa !21
  %t2 = load ptr, ptr %l4, !tbaa !29
  %t3 = icmp ne ptr %t2, null
  br i1 %t3, label %bb1, label %bb2
bb1:
  %t5 = load ptr, ptr %l4, !tbaa !29
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 28}
  %t8 = icmp eq i64 %t6, 0
  store i1 %t8, ptr %l5, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l5, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  %t10 = load ptr, ptr %l0, !tbaa !29
  %t12 = getelementptr { i64, [4 x i64] }, ptr %t10, i32 0, i32 1
  %t13 = getelementptr { %"compiler/source:Span", i32 }, ptr %t12, i32 0, i32 1
  %t14 = load i32, ptr %t13
  store i32 %t14, ptr %l1, !tbaa !23
  br label %bb5
bb4:
  br label %bb6
bb5:
  %t16 = load i32, ptr %l1, !tbaa !23
  store i32 %t16, ptr %l3, !tbaa !23
  br label %bb30
bb6:
  %t18 = load ptr, ptr %l0, !tbaa !29
  store ptr %t18, ptr %l11, !tbaa !29
  store i1 false, ptr %l12, !tbaa !21
  %t19 = load ptr, ptr %l11, !tbaa !29
  %t20 = icmp ne ptr %t19, null
  br i1 %t20, label %bb7, label %bb8
bb7:
  %t22 = load ptr, ptr %l11, !tbaa !29
  %t23 = load i64, ptr %t22, !range !{i64 0, i64 28}
  %t25 = icmp eq i64 %t23, 12
  store i1 %t25, ptr %l12, !tbaa !21
  br label %bb8
bb8:
  %t26 = load i1, ptr %l12, !tbaa !21
  br i1 %t26, label %bb9, label %bb10
bb9:
  %t27 = load ptr, ptr %l0, !tbaa !29
  %t29 = getelementptr { i64, [4 x i64] }, ptr %t27, i32 0, i32 1
  %t30 = getelementptr { %"compiler/source:Span", ptr, i32 }, ptr %t29, i32 0, i32 1
  %t31 = load ptr, ptr %t30
  store ptr %t31, ptr %l2, !tbaa !29
  br label %bb23
bb10:
  %t33 = load ptr, ptr %l0, !tbaa !29
  store ptr %t33, ptr %l17, !tbaa !29
  store i1 false, ptr %l18, !tbaa !21
  %t34 = load ptr, ptr %l17, !tbaa !29
  %t35 = icmp ne ptr %t34, null
  br i1 %t35, label %bb11, label %bb12
bb11:
  %t37 = load ptr, ptr %l17, !tbaa !29
  %t38 = load i64, ptr %t37, !range !{i64 0, i64 28}
  %t40 = icmp eq i64 %t38, 13
  store i1 %t40, ptr %l18, !tbaa !21
  br label %bb12
bb12:
  %t41 = load i1, ptr %l18, !tbaa !21
  br i1 %t41, label %bb13, label %bb14
bb13:
  %t42 = load ptr, ptr %l0, !tbaa !29
  %t44 = getelementptr { i64, [4 x i64] }, ptr %t42, i32 0, i32 1
  %t45 = getelementptr { %"compiler/source:Span", ptr, { i64, ptr } }, ptr %t44, i32 0, i32 1
  %t46 = load ptr, ptr %t45
  store ptr %t46, ptr %l2, !tbaa !29
  br label %bb23
bb14:
  %t48 = load ptr, ptr %l0, !tbaa !29
  store ptr %t48, ptr %l23, !tbaa !29
  store i1 false, ptr %l24, !tbaa !21
  %t49 = load ptr, ptr %l23, !tbaa !29
  %t50 = icmp ne ptr %t49, null
  br i1 %t50, label %bb15, label %bb16
bb15:
  %t52 = load ptr, ptr %l23, !tbaa !29
  %t53 = load i64, ptr %t52, !range !{i64 0, i64 28}
  %t55 = icmp eq i64 %t53, 14
  store i1 %t55, ptr %l24, !tbaa !21
  br label %bb16
bb16:
  %t56 = load i1, ptr %l24, !tbaa !21
  br i1 %t56, label %bb17, label %bb18
bb17:
  %t57 = load ptr, ptr %l0, !tbaa !29
  %t59 = getelementptr { i64, [4 x i64] }, ptr %t57, i32 0, i32 1
  %t60 = getelementptr { %"compiler/source:Span", ptr, ptr, ptr }, ptr %t59, i32 0, i32 1
  %t61 = load ptr, ptr %t60
  store ptr %t61, ptr %l2, !tbaa !29
  br label %bb23
bb18:
  %t63 = load ptr, ptr %l0, !tbaa !29
  store ptr %t63, ptr %l29, !tbaa !29
  store i1 false, ptr %l30, !tbaa !21
  %t64 = load ptr, ptr %l29, !tbaa !29
  %t65 = icmp ne ptr %t64, null
  br i1 %t65, label %bb19, label %bb20
bb19:
  %t67 = load ptr, ptr %l29, !tbaa !29
  %t68 = load i64, ptr %t67, !range !{i64 0, i64 28}
  %t70 = icmp eq i64 %t68, 2
  store i1 %t70, ptr %l30, !tbaa !21
  br label %bb20
bb20:
  %t71 = load i1, ptr %l30, !tbaa !21
  br i1 %t71, label %bb21, label %bb22
bb21:
  %t72 = load ptr, ptr %l0, !tbaa !29
  %t74 = getelementptr { i64, [4 x i64] }, ptr %t72, i32 0, i32 1
  %t75 = getelementptr { %"compiler/source:Span", ptr }, ptr %t74, i32 0, i32 1
  %t76 = load ptr, ptr %t75
  store ptr %t76, ptr %l2, !tbaa !29
  br label %bb23
bb22:
  br label %bb25
bb23:
  %t78 = load ptr, ptr %l2, !tbaa !29
  %t80 = call i32 @compiler_2fgeneric_2ebaseName(ptr %v0, ptr %t78)
  store i32 %t80, ptr %l36
  br label %bb24
bb24:
  %t81 = load i32, ptr %l36, !tbaa !23
  store i32 %t81, ptr %l3, !tbaa !23
  br label %bb30
bb25:
  br i1 true, label %bb26, label %bb27
bb26:
  br label %bb28
bb27:
  br label %bb29
bb28:
  store i32 0, ptr %l3, !tbaa !23
  br label %bb30
bb29:
  call void @__olang_check_failed(ptr @olang_loc_a84cb13cc99a358c_517fd3765f339d18)
  unreachable
bb30:
  %t82 = load i32, ptr %l3, !tbaa !23
  store i32 %t82, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local i1 @compiler_2fgeneric_2eborrowableElem(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca { i64, ptr }
  %l11 = alloca { i64, ptr }
  %l13 = alloca i1
  %l14 = alloca ptr
  %l15 = alloca i1
  %l23 = alloca i1
  %l24 = alloca { i64, ptr }
  %l26 = alloca i1
  %rv = alloca i1
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/ast:Func", ptr %t1, i32 0, i32 3
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t6 = getelementptr %"compiler/ast:Sig", ptr %t4, i32 0, i32 1
  %t7 = load { i64, ptr }, ptr %t6, !tbaa !27
  %t9 = extractvalue { i64, ptr } %t7, 0
  %t11 = icmp ne i64 %t9, 1
  br i1 %t11, label %bb1, label %bb2
bb1:
  store i1 false, ptr %rv
  br label %ret
bb2:
  br label %bb3
bb3:
  %t14 = load ptr, ptr %l0, !tbaa !29
  %t16 = getelementptr %"compiler/ast:Func", ptr %t14, i32 0, i32 3
  %t17 = load ptr, ptr %t16, !tbaa !29
  %t19 = getelementptr %"compiler/ast:Sig", ptr %t17, i32 0, i32 1
  %t20 = load { i64, ptr }, ptr %t19, !tbaa !27
  store { i64, ptr } %t20, ptr %l11, !tbaa !27
  %t21 = getelementptr { i64, ptr }, ptr %l11, i32 0, i32 1
  %t22 = load ptr, ptr %t21, !tbaa !27
  %t23 = getelementptr ptr, ptr %t22, i64 0
  %t24 = load ptr, ptr %t23, !tbaa !39
  store ptr %t24, ptr %l1, !tbaa !29
  %t26 = load ptr, ptr %l1, !tbaa !29
  store ptr %t26, ptr %l14, !tbaa !29
  store i1 false, ptr %l15, !tbaa !21
  %t27 = load ptr, ptr %l14, !tbaa !29
  %t28 = icmp ne ptr %t27, null
  br i1 %t28, label %bb4, label %bb5
bb4:
  %t30 = load ptr, ptr %l14, !tbaa !29
  %t31 = load i64, ptr %t30, !range !{i64 0, i64 8}
  %t33 = icmp eq i64 %t31, 0
  store i1 %t33, ptr %l15, !tbaa !21
  br label %bb5
bb5:
  %t34 = load i1, ptr %l15, !tbaa !21
  br i1 %t34, label %bb6, label %bb7
bb6:
  %t35 = load ptr, ptr %l1, !tbaa !29
  %t37 = getelementptr { i64, [5 x i64] }, ptr %t35, i32 0, i32 1
  %t38 = getelementptr { %"compiler/source:Span", { i64, ptr }, { i64, ptr } }, ptr %t37, i32 0, i32 2
  %t39 = load { i64, ptr }, ptr %t38
  store { i64, ptr } %t39, ptr %l2, !tbaa !27
  br label %bb8
bb7:
  br label %bb13
bb8:
  %t41 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t43 = extractvalue { i64, ptr } %t41, 0
  %t45 = icmp sgt i64 %t43, 0
  br i1 %t45, label %bb9, label %bb10
bb9:
  %t47 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t47, ptr %l24, !tbaa !27
  %t48 = getelementptr { i64, ptr }, ptr %l24, i32 0, i32 1
  %t49 = load ptr, ptr %t48, !tbaa !27
  %t50 = getelementptr ptr, ptr %t49, i64 0
  %t51 = load ptr, ptr %t50, !tbaa !39
  %t53 = call i1 @compiler_2fgeneric_2erefElem(ptr %v0, ptr %t51)
  store i1 %t53, ptr %l26
  br label %bb11
bb10:
  store i1 false, ptr %l23, !tbaa !21
  br label %bb12
bb11:
  %t54 = load i1, ptr %l26, !tbaa !21
  store i1 %t54, ptr %l23, !tbaa !21
  br label %bb12
bb12:
  %t55 = load i1, ptr %l23, !tbaa !21
  store i1 %t55, ptr %l13, !tbaa !21
  br label %bb18
bb13:
  br i1 true, label %bb14, label %bb15
bb14:
  br label %bb16
bb15:
  br label %bb17
bb16:
  store i1 false, ptr %l13, !tbaa !21
  br label %bb18
bb17:
  call void @__olang_check_failed(ptr @olang_loc_b9fc8c34bb4a0c14_d84bd287e8577888)
  unreachable
bb18:
  %t56 = load i1, ptr %l13, !tbaa !21
  store i1 %t56, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local { i32, i64 } @compiler_2fgeneric_2ecanonNumber(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca { i64, ptr }
  %l8 = alloca i8
  %l10 = alloca ptr
  %l19 = alloca i1
  %l21 = alloca i8
  %l22 = alloca i1
  %l24 = alloca ptr
  %l28 = alloca { i64, ptr }
  %l29 = alloca i64
  %l31 = alloca i64
  %l32 = alloca i64
  %l37 = alloca i64
  %l38 = alloca { i64, ptr }
  %l39 = alloca i64
  %l40 = alloca i32
  %l41 = alloca i64
  %l42 = alloca i32
  %l43 = alloca i64
  %l44 = alloca { i64, ptr }
  %l45 = alloca i64
  %l46 = alloca i32
  %l47 = alloca i64
  %l48 = alloca i32
  %s0 = alloca %olang.scope
  %s3 = alloca %olang.scope
  %rv = alloca { i32, i64 }
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/generic:cursor", ptr %t1, i32 0, i32 1
  %t4 = load i64, ptr %t3, !tbaa !24
  store i64 %t4, ptr %l1, !tbaa !24
  %t6 = load ptr, ptr %l0, !tbaa !29
  %t8 = call i8 @compiler_2fgeneric_2ecompiler_2fgeneric_3acursor_2epeek(ptr %v0, ptr %t6)
  store i8 %t8, ptr %l8
  br label %bb1
bb1:
  %t9 = load i8, ptr %l8, !tbaa !22
  %t10 = icmp eq i8 %t9, 45
  br i1 %t10, label %bb2, label %bb3
bb2:
  %t12 = load ptr, ptr %l0, !tbaa !29
  store ptr %t12, ptr %l10, !tbaa !29
  %t13 = load ptr, ptr %l10, !tbaa !29
  %t14 = getelementptr %"compiler/generic:cursor", ptr %t13, i32 0, i32 1
  %t15 = load i64, ptr %t14, !tbaa !24
  %t17 = add i64 %t15, 1
  %t19 = load ptr, ptr %l10, !tbaa !29
  %t20 = getelementptr %"compiler/generic:cursor", ptr %t19, i32 0, i32 1
  store i64 %t17, ptr %t20, !tbaa !24
  br label %bb4
bb3:
  br label %bb4
bb4:
  br label %bb5
bb5:
  %t21 = load ptr, ptr %l0, !tbaa !29
  %t23 = getelementptr %"compiler/generic:cursor", ptr %t21, i32 0, i32 1
  %t24 = load i64, ptr %t23, !tbaa !24
  %t25 = load ptr, ptr %l0, !tbaa !29
  %t27 = getelementptr %"compiler/generic:cursor", ptr %t25, i32 0, i32 0
  %t28 = load { i64, ptr }, ptr %t27, !tbaa !27
  %t30 = extractvalue { i64, ptr } %t28, 0
  %t33 = icmp slt i64 %t24, %t30
  br i1 %t33, label %bb6, label %bb7
bb6:
  %t35 = load ptr, ptr %l0, !tbaa !29
  %t37 = call i8 @compiler_2fgeneric_2ecompiler_2fgeneric_3acursor_2epeek(ptr %v0, ptr %t35)
  store i8 %t37, ptr %l21
  br label %bb8
bb7:
  store i1 false, ptr %l19, !tbaa !21
  br label %bb10
bb8:
  %t38 = load i8, ptr %l21, !tbaa !22
  %t39 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aChar_2eIsDigit(i8 %t38)
  store i1 %t39, ptr %l22
  br label %bb9
bb9:
  %t40 = load i1, ptr %l22, !tbaa !21
  store i1 %t40, ptr %l19, !tbaa !21
  br label %bb10
bb10:
  %t41 = load i1, ptr %l19, !tbaa !21
  %t42 = xor i1 %t41, true
  br i1 %t42, label %bb11, label %bb12
bb11:
  br label %bb15
bb12:
  br label %bb13
bb13:
  %t44 = load ptr, ptr %l0, !tbaa !29
  store ptr %t44, ptr %l24, !tbaa !29
  %t45 = load ptr, ptr %l24, !tbaa !29
  %t46 = getelementptr %"compiler/generic:cursor", ptr %t45, i32 0, i32 1
  %t47 = load i64, ptr %t46, !tbaa !24
  %t49 = add i64 %t47, 1
  %t51 = load ptr, ptr %l24, !tbaa !29
  %t52 = getelementptr %"compiler/generic:cursor", ptr %t51, i32 0, i32 1
  store i64 %t49, ptr %t52, !tbaa !24
  br label %bb14
bb14:
  br label %bb5
bb15:
  %t53 = load ptr, ptr %l0, !tbaa !29
  %t55 = getelementptr %"compiler/generic:cursor", ptr %t53, i32 0, i32 0
  %t56 = load { i64, ptr }, ptr %t55, !tbaa !27
  store { i64, ptr } %t56, ptr %l28, !tbaa !27
  %t57 = load i64, ptr %l1, !tbaa !24
  store i64 %t57, ptr %l29, !tbaa !24
  %t58 = load ptr, ptr %l0, !tbaa !29
  %t60 = getelementptr %"compiler/generic:cursor", ptr %t58, i32 0, i32 1
  %t61 = load i64, ptr %t60, !tbaa !24
  store i64 %t61, ptr %l31, !tbaa !24
  %t62 = load { i64, ptr }, ptr %l28, !tbaa !27
  %t63 = extractvalue { i64, ptr } %t62, 0
  store i64 %t63, ptr %l32, !tbaa !24
  %t64 = load i64, ptr %l29, !tbaa !24
  %t65 = icmp sge i64 %t64, 0
  br i1 %t65, label %bb16, label %bb17
bb16:
  %t67 = load i64, ptr %l29, !tbaa !24
  %t68 = load i64, ptr %l31, !tbaa !24
  %t69 = icmp sle i64 %t67, %t68
  br i1 %t69, label %bb18, label %bb19
bb17:
  call void @__olang_check_failed(ptr @olang_loc_92b6cfc99a3b7173_1ec9654ba3dea5bf)
  unreachable
bb18:
  %t71 = load i64, ptr %l31, !tbaa !24
  %t72 = load i64, ptr %l32, !tbaa !24
  %t73 = icmp sle i64 %t71, %t72
  br i1 %t73, label %bb20, label %bb21
bb19:
  call void @__olang_check_failed(ptr @olang_loc_92b6cfc99a3b7173_1ec9654ba3dea5bf)
  unreachable
bb20:
  %t75 = getelementptr { i64, ptr }, ptr %l28, i32 0, i32 1
  %t76 = load ptr, ptr %t75, !tbaa !27
  %t77 = load i64, ptr %l29, !tbaa !24
  %t78 = load i64, ptr %l31, !tbaa !24
  %t79 = getelementptr i8, ptr %t76, i64 %t77
  %t80 = sub i64 %t78, %t77
  %t81 = insertvalue { i64, ptr } undef, i64 %t80, 0
  %t82 = insertvalue { i64, ptr } %t81, ptr %t79, 1
  store { i64, ptr } %t82, ptr %l2, !tbaa !27
  %t84 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t84, ptr %l38, !tbaa !27
  %t85 = call { i32, i64 } @std_2fprelude_2ftext_3aRadix_2ector(ptr %s0, i64 10)
  %t86 = extractvalue { i32, i64 } %t85, 1
  %t87 = extractvalue { i32, i64 } %t85, 0
  store i32 %t87, ptr %l40
  %t88 = icmp ne i32 %t87, 0
  br i1 %t88, label %bb23, label %ok.89, !prof !99
ok.89:
  store i64 %t86, ptr %l39
  br label %bb22
bb21:
  call void @__olang_check_failed(ptr @olang_loc_92b6cfc99a3b7173_1ec9654ba3dea5bf)
  unreachable
bb22:
  %t90 = load { i64, ptr }, ptr %l38, !tbaa !27
  %t91 = load i64, ptr %l39, !tbaa !24
  %t92 = call { i32, i64 } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eParseInt(ptr %v0, { i64, ptr } %t90, i64 %t91)
  %t93 = extractvalue { i32, i64 } %t92, 1
  %t94 = extractvalue { i32, i64 } %t92, 0
  store i32 %t94, ptr %l42
  %t95 = icmp ne i32 %t94, 0
  br i1 %t95, label %bb26, label %ok.96, !prof !99
ok.96:
  store i64 %t93, ptr %l41
  br label %bb25
bb23:
  br label %bb24
bb24:
  store %olang.scope zeroinitializer, ptr %s3
  %t97 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t97, ptr %l44, !tbaa !27
  %t98 = call { i32, i64 } @std_2fprelude_2ftext_3aRadix_2ector(ptr %s3, i64 10)
  %t99 = extractvalue { i32, i64 } %t98, 1
  %t100 = extractvalue { i32, i64 } %t98, 0
  store i32 %t100, ptr %l46
  %t101 = icmp ne i32 %t100, 0
  br i1 %t101, label %bb28, label %ok.102, !prof !99
ok.102:
  store i64 %t99, ptr %l45
  br label %bb27
bb25:
  %t103 = load i64, ptr %l41, !tbaa !24
  store i64 %t103, ptr %l37, !tbaa !24
  br label %bb33
bb26:
  br label %bb24
bb27:
  %t104 = load { i64, ptr }, ptr %l44, !tbaa !27
  %t105 = load i64, ptr %l45, !tbaa !24
  %t106 = call { i32, i64 } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eParseUint(ptr %v0, { i64, ptr } %t104, i64 %t105)
  %t107 = extractvalue { i32, i64 } %t106, 1
  %t108 = extractvalue { i32, i64 } %t106, 0
  store i32 %t108, ptr %l48
  %t109 = icmp ne i32 %t108, 0
  br i1 %t109, label %bb31, label %ok.110, !prof !99
ok.110:
  store i64 %t107, ptr %l47
  br label %bb30
bb28:
  br label %bb29
bb29:
  call void @__olang_scope_close(ptr %s3)
  call void @__olang_scope_close(ptr %s0)
  %t112 = insertvalue { i32, i64 } zeroinitializer, i32 65536, 0
  store { i32, i64 } %t112, ptr %rv
  br label %ret
bb30:
  %t113 = load i64, ptr %l47, !tbaa !65
  store i64 %t113, ptr %l43, !tbaa !65
  br label %bb32
bb31:
  br label %bb29
bb32:
  %t114 = load i64, ptr %l43, !tbaa !65
  call void @__olang_scope_close(ptr %s3)
  call void @__olang_scope_close(ptr %s0)
  %t118 = insertvalue { i32, i64 } zeroinitializer, i64 %t114, 1
  store { i32, i64 } %t118, ptr %rv
  br label %ret
bb33:
  %t119 = load i64, ptr %l37, !tbaa !24
  call void @__olang_scope_close(ptr %s0)
  %t122 = insertvalue { i32, i64 } zeroinitializer, i64 %t119, 1
  store { i32, i64 } %t122, ptr %rv
  br label %ret
ret:
  %rr = load { i32, i64 }, ptr %rv
  ret { i32, i64 } %rr
}

define dso_local { i64, ptr } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eAnyCovers(ptr %v0, ptr %v1, ptr %a0, i32 %a1) #0 {
entry:
  %l2 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l3 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l8 = alloca { i64, ptr }
  %l9 = alloca { i64, ptr }
  %l10 = alloca i64
  %l11 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2ector(ptr %s0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1, ptr %l3
  br label %bb1
bb1:
  %t2 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l3
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t2, ptr %l2
  call void @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eanyCovers(ptr %v0, ptr %s0, ptr %a0, i32 %a1, ptr %l2, i64 0)
  br label %bb2
bb2:
  %t9 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2eToArray_3ccompiler_2ftypes_3aTypeId_3e(ptr %s0, ptr %s0, ptr %l2)
  store { i64, ptr } %t9, ptr %l8
  br label %bb3
bb3:
  %t10 = load { i64, ptr }, ptr %l8, !tbaa !27
  store { i64, ptr } %t10, ptr %l9, !tbaa !27
  %t11 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t12 = extractvalue { i64, ptr } %t11, 0
  store i64 %t12, ptr %l10, !tbaa !24
  %t13 = load i64, ptr %l10, !tbaa !24
  %t14 = mul i64 %t13, 4
  %t15 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t14)
  %t16 = insertvalue { i64, ptr } undef, i64 %t13, 0
  %t17 = insertvalue { i64, ptr } %t16, ptr %t15, 1
  store { i64, ptr } %t17, ptr %l11, !tbaa !27
  %t18 = getelementptr { i64, ptr }, ptr %l11, i32 0, i32 1
  %t19 = load ptr, ptr %t18, !tbaa !27
  %t20 = getelementptr { i64, ptr }, ptr %l9, i32 0, i32 1
  %t21 = load ptr, ptr %t20, !tbaa !27
  %t22 = load i64, ptr %l10, !tbaa !24
  %t23 = mul i64 %t22, 4
  call void @llvm.memmove.p0.p0.i64(ptr %t19, ptr %t21, i64 %t23, i1 false)
  %t24 = load { i64, ptr }, ptr %l11, !tbaa !27
  store { i64, ptr } %t24, ptr %l9, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  %t25 = load { i64, ptr }, ptr %l9, !tbaa !27
  store { i64, ptr } %t25, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eBoundMet(ptr %v0, ptr %a0, i64 %a1, i32 %a2) #0 {
entry:
  %l6 = alloca %"compiler/generic:Unmet"
  %rv = alloca i1
  br label %start
start:
  br label %bb0
bb0:
  %t7 = call %"compiler/generic:Unmet" @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFirstUnmet(ptr %v0, ptr %a0, i64 %a1, i32 %a2)
  store %"compiler/generic:Unmet" %t7, ptr %l6
  br label %bb1
bb1:
  %t8 = getelementptr %"compiler/generic:Unmet", ptr %l6, i32 0, i32 0
  %t9 = load i64, ptr %t8, !tbaa !24
  %t11 = icmp slt i64 %t9, 0
  store i1 %t11, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eBuilderKey(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca %"compiler/generic:fnRow"
  %l6 = alloca %"compiler/generic:fnRow"
  %l8 = alloca i1
  %l17 = alloca i64
  %rv = alloca i64
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/generic:Program", ptr %t1, i32 0, i32 29
  %t7 = call %"compiler/generic:fnRow" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fgeneric_3afnRow_3e_2eAt_3ccompiler_2fgeneric_3afnRow_3e(ptr %v0, ptr %v0, ptr %t3, i64 %a1)
  store %"compiler/generic:fnRow" %t7, ptr %l6
  br label %bb1
bb1:
  %t8 = load %"compiler/generic:fnRow", ptr %l6
  store %"compiler/generic:fnRow" %t8, ptr %l2
  %t9 = getelementptr %"compiler/generic:fnRow", ptr %l2, i32 0, i32 1
  %t10 = load ptr, ptr %t9, !tbaa !29
  %t12 = call i1 @compiler_2fast_2ecompiler_2fast_3aFunc_2eIsBuilder(ptr %v0, ptr %t10)
  store i1 %t12, ptr %l8
  br label %bb2
bb2:
  %t13 = load i1, ptr %l8, !tbaa !21
  %t14 = xor i1 %t13, true
  br i1 %t14, label %bb3, label %bb4
bb3:
  store i64 -1, ptr %rv
  br label %ret
bb4:
  br label %bb5
bb5:
  %t17 = load ptr, ptr %l0, !tbaa !29
  %t18 = getelementptr %"compiler/generic:fnRow", ptr %l2, i32 0, i32 0
  %t19 = load i64, ptr %t18, !tbaa !24
  %t20 = getelementptr %"compiler/generic:fnRow", ptr %l2, i32 0, i32 1
  %t21 = load ptr, ptr %t20, !tbaa !29
  %t23 = getelementptr %"compiler/ast:Func", ptr %t21, i32 0, i32 9
  %t24 = load ptr, ptr %t23, !tbaa !29
  %t25 = getelementptr %"compiler/generic:fnRow", ptr %l2, i32 0, i32 1
  %t26 = load ptr, ptr %t25, !tbaa !29
  %t28 = getelementptr %"compiler/ast:Func", ptr %t26, i32 0, i32 5
  %t29 = load { i64, ptr }, ptr %t28, !tbaa !27
  %t34 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2erecvKey(ptr %v0, ptr %v0, ptr %v0, ptr %t17, i64 %t19, ptr %t24, { i64, ptr } %t29)
  store i64 %t34, ptr %l17
  br label %bb6
bb6:
  %t35 = load i64, ptr %l17, !tbaa !24
  store i64 %t35, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eBuilderOf(ptr %v0, ptr %a0, i32 %a1, i32 %a2, i1 %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca i32
  %l4 = alloca i32
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
  %l18 = alloca ptr
  %l22 = alloca i32
  %l25 = alloca i32
  %l29 = alloca i32
  %l31 = alloca i32
  %l34 = alloca i64
  %l37 = alloca i64
  %l39 = alloca ptr
  %l43 = alloca %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0"
  %l44 = alloca i64
  %l45 = alloca i32
  %l51 = alloca ptr
  %l54 = alloca i32
  %l55 = alloca i1
  %l64 = alloca i1
  %l66 = alloca ptr
  %l69 = alloca i32
  %l70 = alloca i1
  %l75 = alloca i64
  %l79 = alloca i64
  %l80 = alloca i32
  %l86 = alloca i64
  %l90 = alloca i64
  %l93 = alloca i64
  %l114 = alloca i64
  %l118 = alloca %"compiler/generic:fnRow"
  %l126 = alloca i64
  %l129 = alloca ptr
  %l130 = alloca i32
  %l133 = alloca i32
  %l134 = alloca i1
  %s1 = alloca %olang.scope
  %s12 = alloca %olang.scope
  %rv = alloca i64
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  store i32 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eallFns(ptr %v0, ptr %t1)
  br label %bb1
bb1:
  %t3 = load ptr, ptr %l0, !tbaa !29
  %t5 = getelementptr %"compiler/generic:Program", ptr %t3, i32 0, i32 2
  store ptr %t5, ptr %l18, !tbaa !29
  %t6 = load ptr, ptr %l0, !tbaa !29
  %t8 = getelementptr %"compiler/generic:Program", ptr %t6, i32 0, i32 2
  %t9 = load i32, ptr %l1, !tbaa !23
  %t12 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t8, i32 %t9)
  store i32 %t12, ptr %l22
  br label %bb2
bb2:
  %t13 = load i32, ptr %l22, !range !{i32 0, i32 33}
  %t15 = trunc i64 20 to i32
  %t16 = icmp eq i32 %t13, %t15
  br i1 %t16, label %bb3, label %bb4
bb3:
  %t18 = load ptr, ptr %l0, !tbaa !29
  %t20 = getelementptr %"compiler/generic:Program", ptr %t18, i32 0, i32 2
  %t21 = load i32, ptr %l1, !tbaa !23
  %t24 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eReferent(ptr %v0, ptr %t20, i32 %t21)
  store i32 %t24, ptr %l29
  br label %bb5
bb4:
  %t25 = load i32, ptr %l1, !tbaa !23
  store i32 %t25, ptr %l25, !tbaa !23
  br label %bb6
bb5:
  %t27 = load i32, ptr %l29, !tbaa !23
  store i32 %t27, ptr %l25, !tbaa !23
  br label %bb6
bb6:
  %t28 = load ptr, ptr %l18, !tbaa !29
  %t29 = load i32, ptr %l25, !tbaa !23
  %t30 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePlain(ptr %v0, ptr %t28, i32 %t29)
  store i32 %t30, ptr %l31
  br label %bb7
bb7:
  %t31 = load i32, ptr %l31, !tbaa !23
  store i32 %t31, ptr %l4, !tbaa !23
  %t32 = load ptr, ptr %l0, !tbaa !29
  %t33 = load i32, ptr %l4, !tbaa !23
  %t36 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2etypeKey(ptr %v0, ptr %t32, i32 %t33)
  store i64 %t36, ptr %l34
  br label %bb8
bb8:
  %t37 = load i64, ptr %l34, !tbaa !24
  store i64 %t37, ptr %l5, !tbaa !24
  %t38 = load i64, ptr %l5, !tbaa !24
  %t40 = icmp sge i64 %t38, 0
  br i1 %t40, label %bb9, label %bb10
bb9:
  store %olang.scope zeroinitializer, ptr %s1
  %t42 = load ptr, ptr %l0, !tbaa !29
  %t44 = getelementptr %"compiler/generic:Program", ptr %t42, i32 0, i32 40
  store ptr %t44, ptr %l39, !tbaa !29
  %t45 = load i64, ptr %l5, !tbaa !24
  %t46 = load i32, ptr %l2, !tbaa !23
  %t48 = sext i32 %t46 to i64
  %t51 = call %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" @std_2fpair_3aPair_3cI64_2c_20I64_3e_2ector(ptr %s1, i64 %t45, i64 %t48)
  store %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t51, ptr %l43
  br label %bb11
bb10:
  br label %bb52
bb11:
  %t52 = load ptr, ptr %l39, !tbaa !29
  %t53 = load %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %l43
  %t54 = call { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H5696e1a008d256bf9453cde2b49c6c45(ptr %v0, ptr %t52, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t53)
  %t55 = extractvalue { i32, i64 } %t54, 1
  %t56 = extractvalue { i32, i64 } %t54, 0
  store i32 %t56, ptr %l45
  %t57 = icmp ne i32 %t56, 0
  br i1 %t57, label %bb13, label %ok.58, !prof !99
ok.58:
  store i64 %t55, ptr %l44
  br label %bb12
bb12:
  %t59 = load i64, ptr %l44, !tbaa !24
  store i64 %t59, ptr %l37, !tbaa !24
  br label %bb15
bb13:
  br label %bb14
bb14:
  store i64 -1, ptr %l37, !tbaa !24
  br label %bb15
bb15:
  %t60 = load i64, ptr %l37, !tbaa !24
  store i64 %t60, ptr %l6, !tbaa !24
  store i64 -1, ptr %l7, !tbaa !24
  br label %bb16
bb16:
  %t61 = load i64, ptr %l6, !tbaa !24
  %t63 = icmp sge i64 %t61, 0
  %t65 = xor i1 %t63, true
  br i1 %t65, label %bb17, label %bb18
bb17:
  br label %bb48
bb18:
  br label %bb19
bb19:
  br i1 %a3, label %bb20, label %bb21
bb20:
  %t69 = load ptr, ptr %l0, !tbaa !29
  %t71 = getelementptr %"compiler/generic:Program", ptr %t69, i32 0, i32 2
  store ptr %t71, ptr %l51, !tbaa !29
  %t72 = load ptr, ptr %l0, !tbaa !29
  %t73 = load i64, ptr %l6, !tbaa !24
  %t76 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eOwnerOf(ptr %v0, ptr %t72, i64 %t73)
  store i32 %t76, ptr %l54
  br label %bb22
bb21:
  %t77 = load ptr, ptr %l0, !tbaa !29
  %t78 = load i64, ptr %l6, !tbaa !24
  %t79 = load i32, ptr %l4, !tbaa !23
  %t83 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eownerApplies(ptr %v0, ptr %t77, i64 %t78, i32 %t79)
  store i1 %t83, ptr %l64
  br label %bb30
bb22:
  %t84 = load ptr, ptr %l51, !tbaa !29
  %t85 = load i32, ptr %l54, !tbaa !23
  %t86 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eClosed(ptr %v0, ptr %t84, i32 %t85)
  store i1 %t86, ptr %l55
  br label %bb23
bb23:
  %t87 = load i1, ptr %l55, !tbaa !21
  %t88 = xor i1 %t87, true
  br i1 %t88, label %bb24, label %bb25
bb24:
  %t90 = load i64, ptr %l6, !tbaa !24
  call void @__olang_scope_close(ptr %s1)
  store i64 %t90, ptr %rv
  br label %ret
bb25:
  br label %bb26
bb26:
  %t92 = load i64, ptr %l7, !tbaa !24
  %t94 = icmp slt i64 %t92, 0
  br i1 %t94, label %bb27, label %bb28
bb27:
  %t96 = load i64, ptr %l6, !tbaa !24
  store i64 %t96, ptr %l7, !tbaa !24
  br label %bb29
bb28:
  br label %bb29
bb29:
  br label %bb42
bb30:
  %t98 = load i1, ptr %l64, !tbaa !21
  br i1 %t98, label %bb31, label %bb32
bb31:
  %t99 = load ptr, ptr %l0, !tbaa !29
  %t101 = getelementptr %"compiler/generic:Program", ptr %t99, i32 0, i32 2
  store ptr %t101, ptr %l66, !tbaa !29
  %t102 = load ptr, ptr %l0, !tbaa !29
  %t103 = load i64, ptr %l6, !tbaa !24
  %t106 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eOwnerOf(ptr %v0, ptr %t102, i64 %t103)
  store i32 %t106, ptr %l69
  br label %bb33
bb32:
  br label %bb41
bb33:
  %t107 = load ptr, ptr %l66, !tbaa !29
  %t108 = load i32, ptr %l69, !tbaa !23
  %t109 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eClosed(ptr %v0, ptr %t107, i32 %t108)
  store i1 %t109, ptr %l70
  br label %bb34
bb34:
  %t110 = load i1, ptr %l70, !tbaa !21
  br i1 %t110, label %bb35, label %bb36
bb35:
  %t111 = load i64, ptr %l6, !tbaa !24
  call void @__olang_scope_close(ptr %s1)
  store i64 %t111, ptr %rv
  br label %ret
bb36:
  br label %bb37
bb37:
  %t113 = load i64, ptr %l7, !tbaa !24
  %t115 = icmp slt i64 %t113, 0
  br i1 %t115, label %bb38, label %bb39
bb38:
  %t117 = load i64, ptr %l6, !tbaa !24
  store i64 %t117, ptr %l7, !tbaa !24
  br label %bb40
bb39:
  br label %bb40
bb40:
  br label %bb41
bb41:
  br label %bb42
bb42:
  %t119 = load ptr, ptr %l0, !tbaa !29
  %t121 = getelementptr %"compiler/generic:Program", ptr %t119, i32 0, i32 37
  %t122 = load i64, ptr %l6, !tbaa !24
  %t125 = call { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2eGet_3cI64_2c_20I64_3e(ptr %v0, ptr %t121, i64 %t122)
  %t126 = extractvalue { i32, i64 } %t125, 1
  %t127 = extractvalue { i32, i64 } %t125, 0
  store i32 %t127, ptr %l80
  %t128 = icmp ne i32 %t127, 0
  br i1 %t128, label %bb44, label %ok.129, !prof !99
ok.129:
  store i64 %t126, ptr %l79
  br label %bb43
bb43:
  %t130 = load i64, ptr %l79, !tbaa !24
  store i64 %t130, ptr %l75, !tbaa !24
  br label %bb46
bb44:
  br label %bb45
bb45:
  store i64 -1, ptr %l75, !tbaa !24
  br label %bb46
bb46:
  %t131 = load i64, ptr %l75, !tbaa !24
  store i64 %t131, ptr %l6, !tbaa !24
  br label %bb47
bb47:
  br label %bb16
bb48:
  %t132 = load i64, ptr %l7, !tbaa !24
  %t134 = icmp sge i64 %t132, 0
  br i1 %t134, label %bb49, label %bb50
bb49:
  %t136 = load i64, ptr %l7, !tbaa !24
  call void @__olang_scope_close(ptr %s1)
  store i64 %t136, ptr %rv
  br label %ret
bb50:
  br label %bb51
bb51:
  call void @__olang_scope_close(ptr %s1)
  br label %bb52
bb52:
  store i64 0, ptr %l8, !tbaa !24
  %t138 = load ptr, ptr %l0, !tbaa !29
  %t140 = getelementptr %"compiler/generic:Program", ptr %t138, i32 0, i32 41
  %t142 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %t140)
  store i64 %t142, ptr %l86
  br label %bb53
bb53:
  %t143 = load i64, ptr %l86, !tbaa !24
  store i64 %t143, ptr %l9, !tbaa !24
  store i64 1, ptr %l10, !tbaa !24
  %t144 = load i64, ptr %l9, !tbaa !24
  %t145 = load i64, ptr %l8, !tbaa !24
  %t148 = icmp sgt i64 %t144, %t145
  br i1 %t148, label %bb54, label %bb55
bb54:
  %t150 = load i64, ptr %l10, !tbaa !24
  %t152 = icmp sgt i64 %t150, 0
  br i1 %t152, label %bb56, label %bb57
bb55:
  store i64 0, ptr %l90, !tbaa !24
  br label %bb59
bb56:
  %t154 = load i64, ptr %l9, !tbaa !24
  %t155 = load i64, ptr %l8, !tbaa !24
  %t158 = sub i64 %t154, %t155
  %t159 = load i64, ptr %l10, !tbaa !24
  %t162 = add i64 %t158, %t159
  %t164 = sub i64 %t162, 1
  %t165 = load i64, ptr %l10, !tbaa !24
  %t168 = sdiv i64 %t164, %t165
  store i64 %t168, ptr %l93, !tbaa !24
  br label %bb58
bb57:
  store i64 0, ptr %l93, !tbaa !24
  br label %bb58
bb58:
  %t170 = load i64, ptr %l93, !tbaa !24
  store i64 %t170, ptr %l90, !tbaa !24
  br label %bb59
bb59:
  %t171 = load i64, ptr %l90, !tbaa !24
  store i64 %t171, ptr %l11, !tbaa !24
  store i64 0, ptr %l12, !tbaa !24
  br label %bb60
bb60:
  store %olang.scope zeroinitializer, ptr %s12
  %t172 = load i64, ptr %l12, !tbaa !24
  %t173 = load i64, ptr %l11, !tbaa !24
  %t176 = icmp slt i64 %t172, %t173
  %t178 = xor i1 %t176, true
  br i1 %t178, label %bb61, label %bb62
bb61:
  call void @__olang_scope_close(ptr %s12)
  br label %bb76
bb62:
  br label %bb63
bb63:
  %t180 = load i64, ptr %l8, !tbaa !24
  %t181 = load i64, ptr %l12, !tbaa !24
  %t182 = load i64, ptr %l10, !tbaa !24
  %t185 = mul i64 %t181, %t182
  %t188 = add i64 %t180, %t185
  store i64 %t188, ptr %l13, !tbaa !24
  %t190 = load ptr, ptr %l0, !tbaa !29
  %t192 = getelementptr %"compiler/generic:Program", ptr %t190, i32 0, i32 41
  %t193 = load i64, ptr %l13, !tbaa !24
  %t196 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t192, i64 %t193)
  store i64 %t196, ptr %l114
  br label %bb64
bb64:
  %t197 = load i64, ptr %l114, !tbaa !24
  store i64 %t197, ptr %l14, !tbaa !24
  %t198 = load ptr, ptr %l0, !tbaa !29
  %t200 = getelementptr %"compiler/generic:Program", ptr %t198, i32 0, i32 29
  %t201 = load i64, ptr %l14, !tbaa !24
  %t204 = call %"compiler/generic:fnRow" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fgeneric_3afnRow_3e_2eAt_3ccompiler_2fgeneric_3afnRow_3e(ptr %v0, ptr %s12, ptr %t200, i64 %t201)
  store %"compiler/generic:fnRow" %t204, ptr %l118
  br label %bb65
bb65:
  %t205 = getelementptr %"compiler/generic:fnRow", ptr %l118, i32 0, i32 1
  %t206 = load ptr, ptr %t205, !tbaa !29
  %t208 = getelementptr %"compiler/ast:Func", ptr %t206, i32 0, i32 10
  %t209 = load i32, ptr %t208, !tbaa !23
  %t210 = load i32, ptr %l2, !tbaa !23
  %t213 = icmp ne i32 %t209, %t210
  br i1 %t213, label %bb66, label %bb67
bb66:
  call void @__olang_scope_close(ptr %s12)
  br label %bb75
bb67:
  br label %bb68
bb68:
  %t215 = load ptr, ptr %l0, !tbaa !29
  %t217 = getelementptr %"compiler/generic:Program", ptr %t215, i32 0, i32 42
  %t218 = load i64, ptr %l13, !tbaa !24
  %t221 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t217, i64 %t218)
  store i64 %t221, ptr %l126
  br label %bb69
bb69:
  %t222 = load i64, ptr %l126, !tbaa !24
  %t223 = trunc i64 %t222 to i32
  %t226 = load ptr, ptr %l0, !tbaa !29
  store ptr %t226, ptr %l129, !tbaa !29
  %t227 = load i32, ptr %l4, !tbaa !23
  store i32 %t227, ptr %l130, !tbaa !23
  %t228 = load ptr, ptr %l0, !tbaa !29
  %t232 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eSelfType(ptr %v0, ptr %t228, i32 %t223)
  store i32 %t232, ptr %l133
  br label %bb70
bb70:
  %t233 = load ptr, ptr %l129, !tbaa !29
  %t234 = load i32, ptr %l130, !tbaa !23
  %t235 = load i32, ptr %l133, !tbaa !23
  %t236 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eSatisfies(ptr %v0, ptr %t233, i32 %t234, i32 %t235)
  store i1 %t236, ptr %l134
  br label %bb71
bb71:
  %t237 = load i1, ptr %l134, !tbaa !21
  br i1 %t237, label %bb72, label %bb73
bb72:
  %t238 = load i64, ptr %l14, !tbaa !24
  call void @__olang_scope_close(ptr %s12)
  store i64 %t238, ptr %rv
  br label %ret
bb73:
  br label %bb74
bb74:
  call void @__olang_scope_close(ptr %s12)
  br label %bb75
bb75:
  %t240 = load i64, ptr %l12, !tbaa !24
  %t242 = add i64 %t240, 1
  store i64 %t242, ptr %l12, !tbaa !24
  br label %bb60
bb76:
  store i64 -1, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eBuilderOverlap(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca %"compiler/generic:fnRow"
  %l3 = alloca i64
  %l4 = alloca i64
  %l8 = alloca %"compiler/generic:fnRow"
  %l11 = alloca i64
  %l15 = alloca i64
  %l17 = alloca ptr
  %l22 = alloca %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0"
  %l23 = alloca i64
  %l24 = alloca i32
  %l27 = alloca i1
  %l33 = alloca ptr
  %l36 = alloca i32
  %l37 = alloca i1
  %l39 = alloca ptr
  %l42 = alloca i32
  %l43 = alloca i1
  %l45 = alloca i1
  %l46 = alloca ptr
  %l49 = alloca i32
  %l52 = alloca i32
  %l53 = alloca i1
  %l55 = alloca i64
  %l59 = alloca i64
  %l60 = alloca i32
  %s0 = alloca %olang.scope
  %rv = alloca i64
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/generic:Program", ptr %t1, i32 0, i32 29
  %t4 = load i64, ptr %l1, !tbaa !24
  %t7 = call %"compiler/generic:fnRow" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fgeneric_3afnRow_3e_2eAt_3ccompiler_2fgeneric_3afnRow_3e(ptr %v0, ptr %v0, ptr %t3, i64 %t4)
  store %"compiler/generic:fnRow" %t7, ptr %l8
  br label %bb1
bb1:
  %t8 = load %"compiler/generic:fnRow", ptr %l8
  store %"compiler/generic:fnRow" %t8, ptr %l2
  %t9 = load ptr, ptr %l0, !tbaa !29
  %t10 = load i64, ptr %l1, !tbaa !24
  %t13 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eBuilderKey(ptr %v0, ptr %t9, i64 %t10)
  store i64 %t13, ptr %l11
  br label %bb2
bb2:
  %t14 = load i64, ptr %l11, !tbaa !24
  store i64 %t14, ptr %l3, !tbaa !24
  %t15 = load i64, ptr %l3, !tbaa !24
  %t17 = icmp slt i64 %t15, 0
  br i1 %t17, label %bb3, label %bb4
bb3:
  call void @__olang_scope_close(ptr %s0)
  store i64 -1, ptr %rv
  br label %ret
bb4:
  br label %bb5
bb5:
  %t20 = load ptr, ptr %l0, !tbaa !29
  %t22 = getelementptr %"compiler/generic:Program", ptr %t20, i32 0, i32 40
  store ptr %t22, ptr %l17, !tbaa !29
  %t23 = load i64, ptr %l3, !tbaa !24
  %t24 = getelementptr %"compiler/generic:fnRow", ptr %l2, i32 0, i32 1
  %t25 = load ptr, ptr %t24, !tbaa !29
  %t27 = getelementptr %"compiler/ast:Func", ptr %t25, i32 0, i32 10
  %t28 = load i32, ptr %t27, !tbaa !23
  %t30 = sext i32 %t28 to i64
  %t33 = call %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" @std_2fpair_3aPair_3cI64_2c_20I64_3e_2ector(ptr %s0, i64 %t23, i64 %t30)
  store %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t33, ptr %l22
  br label %bb6
bb6:
  %t34 = load ptr, ptr %l17, !tbaa !29
  %t35 = load %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %l22
  %t36 = call { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H5696e1a008d256bf9453cde2b49c6c45(ptr %v0, ptr %t34, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t35)
  %t37 = extractvalue { i32, i64 } %t36, 1
  %t38 = extractvalue { i32, i64 } %t36, 0
  store i32 %t38, ptr %l24
  %t39 = icmp ne i32 %t38, 0
  br i1 %t39, label %bb8, label %ok.40, !prof !99
ok.40:
  store i64 %t37, ptr %l23
  br label %bb7
bb7:
  %t41 = load i64, ptr %l23, !tbaa !24
  store i64 %t41, ptr %l15, !tbaa !24
  br label %bb10
bb8:
  br label %bb9
bb9:
  store i64 -1, ptr %l15, !tbaa !24
  br label %bb10
bb10:
  %t42 = load i64, ptr %l15, !tbaa !24
  store i64 %t42, ptr %l4, !tbaa !24
  br label %bb11
bb11:
  %t43 = load i64, ptr %l4, !tbaa !24
  %t45 = icmp sge i64 %t43, 0
  br i1 %t45, label %bb12, label %bb13
bb12:
  %t47 = load i64, ptr %l4, !tbaa !24
  %t48 = load i64, ptr %l1, !tbaa !24
  %t51 = icmp ne i64 %t47, %t48
  store i1 %t51, ptr %l27, !tbaa !21
  br label %bb14
bb13:
  store i1 false, ptr %l27, !tbaa !21
  br label %bb14
bb14:
  %t53 = load i1, ptr %l27, !tbaa !21
  %t54 = xor i1 %t53, true
  br i1 %t54, label %bb15, label %bb16
bb15:
  br label %bb36
bb16:
  br label %bb17
bb17:
  %t56 = load ptr, ptr %l0, !tbaa !29
  %t58 = getelementptr %"compiler/generic:Program", ptr %t56, i32 0, i32 2
  store ptr %t58, ptr %l33, !tbaa !29
  %t59 = load ptr, ptr %l0, !tbaa !29
  %t60 = load i64, ptr %l4, !tbaa !24
  %t63 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eOwnerOf(ptr %v0, ptr %t59, i64 %t60)
  store i32 %t63, ptr %l36
  br label %bb18
bb18:
  %t64 = load ptr, ptr %l33, !tbaa !29
  %t65 = load i32, ptr %l36, !tbaa !23
  %t66 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eClosed(ptr %v0, ptr %t64, i32 %t65)
  store i1 %t66, ptr %l37
  br label %bb19
bb19:
  %t67 = load ptr, ptr %l0, !tbaa !29
  %t69 = getelementptr %"compiler/generic:Program", ptr %t67, i32 0, i32 2
  store ptr %t69, ptr %l39, !tbaa !29
  %t70 = load ptr, ptr %l0, !tbaa !29
  %t71 = load i64, ptr %l1, !tbaa !24
  %t74 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eOwnerOf(ptr %v0, ptr %t70, i64 %t71)
  store i32 %t74, ptr %l42
  br label %bb20
bb20:
  %t75 = load ptr, ptr %l39, !tbaa !29
  %t76 = load i32, ptr %l42, !tbaa !23
  %t77 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eClosed(ptr %v0, ptr %t75, i32 %t76)
  store i1 %t77, ptr %l43
  br label %bb21
bb21:
  %t78 = load i1, ptr %l37, !tbaa !21
  %t79 = load i1, ptr %l43, !tbaa !21
  %t80 = icmp eq i1 %t78, %t79
  br i1 %t80, label %bb22, label %bb23
bb22:
  %t82 = load ptr, ptr %l0, !tbaa !29
  store ptr %t82, ptr %l46, !tbaa !29
  %t83 = load ptr, ptr %l0, !tbaa !29
  %t84 = load i64, ptr %l4, !tbaa !24
  %t87 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eOwnerOf(ptr %v0, ptr %t83, i64 %t84)
  store i32 %t87, ptr %l49
  br label %bb24
bb23:
  store i1 false, ptr %l45, !tbaa !21
  br label %bb27
bb24:
  %t88 = load ptr, ptr %l0, !tbaa !29
  %t89 = load i64, ptr %l1, !tbaa !24
  %t92 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eOwnerOf(ptr %v0, ptr %t88, i64 %t89)
  store i32 %t92, ptr %l52
  br label %bb25
bb25:
  %t93 = load ptr, ptr %l46, !tbaa !29
  %t94 = load i32, ptr %l49, !tbaa !23
  %t95 = load i32, ptr %l52, !tbaa !23
  %t96 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2etypesOverlap(ptr %v0, ptr %t93, i32 %t94, i32 %t95, i64 0)
  store i1 %t96, ptr %l53
  br label %bb26
bb26:
  %t97 = load i1, ptr %l53, !tbaa !21
  store i1 %t97, ptr %l45, !tbaa !21
  br label %bb27
bb27:
  %t98 = load i1, ptr %l45, !tbaa !21
  br i1 %t98, label %bb28, label %bb29
bb28:
  %t99 = load i64, ptr %l4, !tbaa !24
  call void @__olang_scope_close(ptr %s0)
  store i64 %t99, ptr %rv
  br label %ret
bb29:
  br label %bb30
bb30:
  %t101 = load ptr, ptr %l0, !tbaa !29
  %t103 = getelementptr %"compiler/generic:Program", ptr %t101, i32 0, i32 37
  %t104 = load i64, ptr %l4, !tbaa !24
  %t107 = call { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2eGet_3cI64_2c_20I64_3e(ptr %v0, ptr %t103, i64 %t104)
  %t108 = extractvalue { i32, i64 } %t107, 1
  %t109 = extractvalue { i32, i64 } %t107, 0
  store i32 %t109, ptr %l60
  %t110 = icmp ne i32 %t109, 0
  br i1 %t110, label %bb32, label %ok.111, !prof !99
ok.111:
  store i64 %t108, ptr %l59
  br label %bb31
bb31:
  %t112 = load i64, ptr %l59, !tbaa !24
  store i64 %t112, ptr %l55, !tbaa !24
  br label %bb34
bb32:
  br label %bb33
bb33:
  store i64 -1, ptr %l55, !tbaa !24
  br label %bb34
bb34:
  %t113 = load i64, ptr %l55, !tbaa !24
  store i64 %t113, ptr %l4, !tbaa !24
  br label %bb35
bb35:
  br label %bb11
bb36:
  call void @__olang_scope_close(ptr %s0)
  store i64 -1, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eCtorSigAt(ptr %v0, ptr %a0, i32 %a1, i32 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l3 = alloca ptr
  %l4 = alloca %"compiler/generic:Context"
  %l5 = alloca ptr
  %l6 = alloca ptr
  %l7 = alloca ptr
  %l11 = alloca i32
  %l16 = alloca ptr
  %l20 = alloca i32
  %l21 = alloca ptr
  %l24 = alloca i1
  %l32 = alloca %"compiler/generic:Context"
  %l35 = alloca ptr
  %l36 = alloca i1
  %l48 = alloca i32
  %l49 = alloca ptr
  %l50 = alloca i1
  %l67 = alloca i32
  %s0 = alloca %olang.scope
  %rv = alloca i32
  %t46 = alloca %"compiler/generic:Context", align 8
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/generic:Program", ptr %t1, i32 0, i32 2
  %t4 = load i32, ptr %l1, !tbaa !23
  %t7 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t3, i32 %t4)
  store i32 %t7, ptr %l11
  br label %bb1
bb1:
  %t8 = load i32, ptr %l11, !range !{i32 0, i32 33}
  %t10 = trunc i64 18 to i32
  %t11 = icmp eq i32 %t8, %t10
  %t13 = xor i1 %t11, true
  br i1 %t13, label %bb2, label %bb3
bb2:
  %t15 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  call void @__olang_scope_close(ptr %s0)
  store i32 %t15, ptr %rv
  br label %ret
bb3:
  br label %bb4
bb4:
  %t17 = load ptr, ptr %l0, !tbaa !29
  store ptr %t17, ptr %l16, !tbaa !29
  %t18 = load ptr, ptr %l0, !tbaa !29
  %t20 = getelementptr %"compiler/generic:Program", ptr %t18, i32 0, i32 2
  %t21 = load i32, ptr %l1, !tbaa !23
  %t24 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %t20, i32 %t21)
  store i32 %t24, ptr %l20
  br label %bb5
bb5:
  %t25 = load ptr, ptr %l16, !tbaa !29
  %t26 = load i32, ptr %l20, !tbaa !23
  %t27 = call ptr @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2etypeDecl(ptr %v0, ptr %v0, ptr %t25, i32 %t26)
  store ptr %t27, ptr %l21
  br label %bb6
bb6:
  %t28 = load ptr, ptr %l21, !tbaa !29
  store ptr %t28, ptr %l3, !tbaa !29
  %t29 = load ptr, ptr %l3, !tbaa !29
  %t31 = icmp eq ptr %t29, null
  br i1 %t31, label %bb7, label %bb8
bb7:
  store i1 true, ptr %l24, !tbaa !21
  br label %bb9
bb8:
  %t33 = load ptr, ptr %l3, !tbaa !29
  %t35 = getelementptr %"compiler/ast:TypeDecl", ptr %t33, i32 0, i32 3
  %t36 = load ptr, ptr %t35, !tbaa !29
  %t38 = icmp eq ptr %t36, null
  store i1 %t38, ptr %l24, !tbaa !21
  br label %bb9
bb9:
  %t40 = load i1, ptr %l24, !tbaa !21
  br i1 %t40, label %bb10, label %bb11
bb10:
  %t41 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  call void @__olang_scope_close(ptr %s0)
  store i32 %t41, ptr %rv
  br label %ret
bb11:
  br label %bb12
bb12:
  %t43 = load ptr, ptr %l0, !tbaa !29
  %t44 = load i32, ptr %l1, !tbaa !23
  call void @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eCtorContext(ptr %t46, ptr %v0, ptr %s0, ptr %t43, i32 %t44, i32 %a2)
  call void @llvm.memmove.p0.p0.i64(ptr %l32, ptr %t46, i64 160, i1 false)
  br label %bb13
bb13:
  call void @llvm.memmove.p0.p0.i64(ptr %l4, ptr %l32, i64 160, i1 false)
  %t50 = load ptr, ptr %l3, !tbaa !29
  %t52 = getelementptr %"compiler/ast:TypeDecl", ptr %t50, i32 0, i32 3
  %t53 = load ptr, ptr %t52, !tbaa !29
  store ptr %t53, ptr %l5, !tbaa !29
  %t55 = load ptr, ptr %l5, !tbaa !29
  store ptr %t55, ptr %l35, !tbaa !29
  store i1 false, ptr %l36, !tbaa !21
  %t56 = load ptr, ptr %l35, !tbaa !29
  %t57 = icmp ne ptr %t56, null
  br i1 %t57, label %bb14, label %bb15
bb14:
  %t59 = load ptr, ptr %l35, !tbaa !29
  %t60 = load i64, ptr %t59, !range !{i64 0, i64 5}
  %t62 = icmp eq i64 %t60, 0
  store i1 %t62, ptr %l36, !tbaa !21
  br label %bb15
bb15:
  %t63 = load i1, ptr %l36, !tbaa !21
  br i1 %t63, label %bb16, label %bb17
bb16:
  %t64 = load ptr, ptr %l5, !tbaa !29
  %t66 = getelementptr { i64, [6 x i64] }, ptr %t64, i32 0, i32 1
  %t67 = getelementptr { ptr }, ptr %t66, i32 0, i32 0
  %t68 = load ptr, ptr %t67
  store ptr %t68, ptr %l6, !tbaa !29
  br label %bb18
bb17:
  br label %bb20
bb18:
  %t70 = load ptr, ptr %l0, !tbaa !29
  %t71 = load ptr, ptr %l6, !tbaa !29
  %t73 = getelementptr %"compiler/ast:StructBody", ptr %t71, i32 0, i32 0
  %t74 = load { i64, ptr }, ptr %t73, !tbaa !27
  %t75 = load ptr, ptr %l6, !tbaa !29
  %t77 = getelementptr %"compiler/ast:StructBody", ptr %t75, i32 0, i32 1
  %t78 = load ptr, ptr %t77, !tbaa !29
  %t79 = load i32, ptr %l1, !tbaa !23
  %t85 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eparamsSig(ptr %v0, ptr %s0, ptr %v0, ptr %v0, ptr %t70, ptr %l4, { i64, ptr } %t74, ptr %t78, i32 %t79)
  store i32 %t85, ptr %l48
  br label %bb19
bb19:
  call void @__olang_scope_close(ptr %s0)
  %t86 = load i32, ptr %l48, !tbaa !23
  store i32 %t86, ptr %rv
  br label %ret
bb20:
  %t87 = load ptr, ptr %l5, !tbaa !29
  store ptr %t87, ptr %l49, !tbaa !29
  store i1 false, ptr %l50, !tbaa !21
  %t88 = load ptr, ptr %l49, !tbaa !29
  %t89 = icmp ne ptr %t88, null
  br i1 %t89, label %bb21, label %bb22
bb21:
  %t91 = load ptr, ptr %l49, !tbaa !29
  %t92 = load i64, ptr %t91, !range !{i64 0, i64 5}
  %t94 = icmp eq i64 %t92, 3
  store i1 %t94, ptr %l50, !tbaa !21
  br label %bb22
bb22:
  %t95 = load i1, ptr %l50, !tbaa !21
  br i1 %t95, label %bb23, label %bb24
bb23:
  %t96 = load ptr, ptr %l5, !tbaa !29
  %t98 = getelementptr { i64, [6 x i64] }, ptr %t96, i32 0, i32 1
  %t99 = getelementptr { ptr, ptr }, ptr %t98, i32 0, i32 1
  %t100 = load ptr, ptr %t99
  store ptr %t100, ptr %l7, !tbaa !29
  br label %bb25
bb24:
  br label %bb30
bb25:
  %t102 = load ptr, ptr %l7, !tbaa !29
  %t104 = icmp eq ptr %t102, null
  br i1 %t104, label %bb26, label %bb27
bb26:
  %t106 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  call void @__olang_scope_close(ptr %s0)
  store i32 %t106, ptr %rv
  br label %ret
bb27:
  br label %bb28
bb28:
  %t108 = load ptr, ptr %l0, !tbaa !29
  %t109 = load ptr, ptr %l7, !tbaa !29
  %t111 = getelementptr %"compiler/ast:Func", ptr %t109, i32 0, i32 3
  %t112 = load ptr, ptr %t111, !tbaa !29
  %t114 = getelementptr %"compiler/ast:Sig", ptr %t112, i32 0, i32 0
  %t115 = load { i64, ptr }, ptr %t114, !tbaa !27
  %t116 = load ptr, ptr %l7, !tbaa !29
  %t118 = getelementptr %"compiler/ast:Func", ptr %t116, i32 0, i32 3
  %t119 = load ptr, ptr %t118, !tbaa !29
  %t121 = load i32, ptr %l1, !tbaa !23
  %t127 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eparamsSig(ptr %v0, ptr %s0, ptr %v0, ptr %v0, ptr %t108, ptr %l4, { i64, ptr } %t115, ptr %t119, i32 %t121)
  store i32 %t127, ptr %l67
  br label %bb29
bb29:
  call void @__olang_scope_close(ptr %s0)
  %t128 = load i32, ptr %l67, !tbaa !23
  store i32 %t128, ptr %rv
  br label %ret
bb30:
  br i1 true, label %bb31, label %bb32
bb31:
  br label %bb33
bb32:
  br label %bb34
bb33:
  %t129 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  call void @__olang_scope_close(ptr %s0)
  store i32 %t129, ptr %rv
  br label %ret
bb34:
  call void @__olang_check_failed(ptr @olang_loc_58d2bf46824473dc_520b730989ac43d8)
  unreachable
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eErrDeclOf(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca i32
  %l3 = alloca { i64, ptr }
  %l7 = alloca i1
  %l13 = alloca i32
  %l18 = alloca ptr
  %l22 = alloca i32
  %l23 = alloca { i64, ptr }
  %l29 = alloca ptr
  %l32 = alloca { i64, ptr }
  %l34 = alloca i32
  %l35 = alloca i32
  %rv = alloca i32
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/generic:Program", ptr %t1, i32 0, i32 2
  %t4 = load i32, ptr %l1, !tbaa !23
  %t7 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsErrVal(ptr %v0, ptr %t3, i32 %t4)
  store i1 %t7, ptr %l7
  br label %bb1
bb1:
  %t8 = load i1, ptr %l7, !tbaa !21
  %t9 = xor i1 %t8, true
  br i1 %t9, label %bb2, label %bb3
bb2:
  store i32 -1, ptr %rv
  br label %ret
bb3:
  br label %bb4
bb4:
  %t12 = load ptr, ptr %l0, !tbaa !29
  %t14 = getelementptr %"compiler/generic:Program", ptr %t12, i32 0, i32 2
  %t15 = load i32, ptr %l1, !tbaa !23
  %t18 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrValName(ptr %v0, ptr %t14, i32 %t15)
  store i32 %t18, ptr %l13
  br label %bb5
bb5:
  %t19 = load i32, ptr %l13, !tbaa !23
  store i32 %t19, ptr %l2, !tbaa !23
  %t20 = load i32, ptr %l2, !tbaa !23
  %t22 = icmp sge i32 %t20, 0
  br i1 %t22, label %bb6, label %bb7
bb6:
  %t24 = load i32, ptr %l2, !tbaa !23
  store i32 %t24, ptr %rv
  br label %ret
bb7:
  br label %bb8
bb8:
  %t26 = load ptr, ptr %l0, !tbaa !29
  %t28 = getelementptr %"compiler/generic:Program", ptr %t26, i32 0, i32 2
  store ptr %t28, ptr %l18, !tbaa !29
  %t29 = load ptr, ptr %l0, !tbaa !29
  %t31 = getelementptr %"compiler/generic:Program", ptr %t29, i32 0, i32 2
  %t32 = load i32, ptr %l1, !tbaa !23
  %t35 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrValItems(ptr %v0, ptr %t31, i32 %t32)
  store i32 %t35, ptr %l22
  br label %bb9
bb9:
  %t36 = load ptr, ptr %l18, !tbaa !29
  %t37 = load i32, ptr %l22, !tbaa !23
  %t38 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t36, i32 %t37)
  store { i64, ptr } %t38, ptr %l23
  br label %bb10
bb10:
  %t39 = load { i64, ptr }, ptr %l23, !tbaa !27
  store { i64, ptr } %t39, ptr %l3, !tbaa !27
  %t40 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t42 = extractvalue { i64, ptr } %t40, 0
  %t44 = icmp ne i64 %t42, 1
  br i1 %t44, label %bb11, label %bb12
bb11:
  store i32 -1, ptr %rv
  br label %ret
bb12:
  br label %bb13
bb13:
  %t47 = load ptr, ptr %l0, !tbaa !29
  %t49 = getelementptr %"compiler/generic:Program", ptr %t47, i32 0, i32 2
  store ptr %t49, ptr %l29, !tbaa !29
  %t50 = load ptr, ptr %l0, !tbaa !29
  %t52 = getelementptr %"compiler/generic:Program", ptr %t50, i32 0, i32 2
  %t53 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t53, ptr %l32, !tbaa !27
  %t54 = getelementptr { i64, ptr }, ptr %l32, i32 0, i32 1
  %t55 = load ptr, ptr %t54, !tbaa !27
  %t56 = getelementptr i32, ptr %t55, i64 0
  %t57 = load i32, ptr %t56, !tbaa !33
  %t60 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrOf(ptr %v0, ptr %t52, i32 %t57)
  store i32 %t60, ptr %l34
  br label %bb14
bb14:
  %t61 = load ptr, ptr %l29, !tbaa !29
  %t62 = load i32, ptr %l34, !tbaa !23
  %t63 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %t61, i32 %t62)
  store i32 %t63, ptr %l35
  br label %bb15
bb15:
  %t64 = load i32, ptr %l35, !tbaa !23
  store i32 %t64, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eErrorList(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, i1 %a2, { i64, ptr } %a3) #0 {
entry:
  %l8 = alloca i32
  %rv = alloca i32
  br label %start
start:
  br label %bb0
bb0:
  %t9 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eerrorList(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, i1 %a2, { i64, ptr } %a3)
  store i32 %t9, ptr %l8
  br label %bb1
bb1:
  %t10 = load i32, ptr %l8, !tbaa !23
  store i32 %t10, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local void @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eErrorSetEntries(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1, ptr %a2, ptr %a3) #0 {
entry:
  br label %start
start:
  br label %bb0
bb0:
  call void @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eerrorSetEntries(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1, ptr %a2, ptr %a3)
  br label %bb1
bb1:
  br label %ret
ret:
  ret void
}

define dso_local i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eErrorType(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, ptr %a2) #0 {
entry:
  %l6 = alloca i32
  %rv = alloca i32
  br label %start
start:
  br label %bb0
bb0:
  %t7 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eerrorType(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, ptr %a2)
  store i32 %t7, ptr %l6
  br label %bb1
bb1:
  %t8 = load i32, ptr %l6, !tbaa !23
  store i32 %t8, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local { i64, ptr } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eExternSymbol(ptr %v0, ptr %v1, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l3 = alloca ptr
  %l7 = alloca %"compiler/generic:fnRow"
  %l8 = alloca i64
  %l10 = alloca ptr
  %l14 = alloca %"compiler/generic:fnRow"
  %l18 = alloca { i64, ptr }
  %l19 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/generic:Program", ptr %t1, i32 0, i32 0
  %t4 = load ptr, ptr %t3, !tbaa !29
  store ptr %t4, ptr %l3, !tbaa !29
  %t5 = load ptr, ptr %l0, !tbaa !29
  %t7 = getelementptr %"compiler/generic:Program", ptr %t5, i32 0, i32 29
  %t8 = load i64, ptr %l1, !tbaa !24
  %t11 = call %"compiler/generic:fnRow" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fgeneric_3afnRow_3e_2eAt_3ccompiler_2fgeneric_3afnRow_3e(ptr %v0, ptr %s0, ptr %t7, i64 %t8)
  store %"compiler/generic:fnRow" %t11, ptr %l7
  br label %bb1
bb1:
  %t12 = getelementptr %"compiler/generic:fnRow", ptr %l7, i32 0, i32 0
  %t13 = load i64, ptr %t12, !tbaa !24
  store i64 %t13, ptr %l8, !tbaa !24
  %t14 = load ptr, ptr %l0, !tbaa !29
  %t16 = getelementptr %"compiler/generic:Program", ptr %t14, i32 0, i32 2
  %t17 = getelementptr %"compiler/types:Table", ptr %t16, i32 0, i32 0
  %t18 = load ptr, ptr %t17, !tbaa !29
  store ptr %t18, ptr %l10, !tbaa !29
  %t19 = load ptr, ptr %l0, !tbaa !29
  %t21 = getelementptr %"compiler/generic:Program", ptr %t19, i32 0, i32 29
  %t22 = load i64, ptr %l1, !tbaa !24
  %t25 = call %"compiler/generic:fnRow" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fgeneric_3afnRow_3e_2eAt_3ccompiler_2fgeneric_3afnRow_3e(ptr %v0, ptr %s0, ptr %t21, i64 %t22)
  store %"compiler/generic:fnRow" %t25, ptr %l14
  br label %bb2
bb2:
  %t26 = getelementptr %"compiler/generic:fnRow", ptr %l14, i32 0, i32 1
  %t27 = load ptr, ptr %t26, !tbaa !29
  %t29 = getelementptr %"compiler/ast:Func", ptr %t27, i32 0, i32 2
  %t30 = load i32, ptr %t29, !tbaa !23
  %t31 = load ptr, ptr %l10, !tbaa !29
  %t32 = call ptr @__olang_scope_of(ptr %t31, ptr null)
  %t33 = ptrtoint ptr %t32 to i64
  %t35 = inttoptr i64 %t33 to ptr
  %t36 = load ptr, ptr %l10, !tbaa !29
  %t38 = call { i64, ptr } @compiler_2fsource_2ecompiler_2fsource_3aNames_2eText(ptr %t35, ptr %s0, ptr %t36, i32 %t30)
  store { i64, ptr } %t38, ptr %l18
  br label %bb3
bb3:
  %t39 = load ptr, ptr %l3, !tbaa !29
  %t40 = load i64, ptr %l8, !tbaa !24
  %t41 = load { i64, ptr }, ptr %l18, !tbaa !27
  %t42 = call { i64, ptr } @compiler_2fload_2ecompiler_2fload_3aLoader_2eCSymbol(ptr %v0, ptr %s0, ptr %v1, ptr %t39, i64 %t40, { i64, ptr } %t41)
  store { i64, ptr } %t42, ptr %l19
  br label %bb4
bb4:
  call void @__olang_scope_close(ptr %s0)
  %t43 = load { i64, ptr }, ptr %l19, !tbaa !27
  store { i64, ptr } %t43, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnIsExtern(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l5 = alloca %"compiler/generic:fnRow"
  %s0 = alloca %olang.scope
  %rv = alloca i1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t3 = getelementptr %"compiler/generic:Program", ptr %a0, i32 0, i32 29
  %t7 = call %"compiler/generic:fnRow" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fgeneric_3afnRow_3e_2eAt_3ccompiler_2fgeneric_3afnRow_3e(ptr %v0, ptr %s0, ptr %t3, i64 %a1)
  store %"compiler/generic:fnRow" %t7, ptr %l5
  br label %bb1
bb1:
  %t8 = getelementptr %"compiler/generic:fnRow", ptr %l5, i32 0, i32 2
  %t9 = load i1, ptr %t8, !tbaa !21
  call void @__olang_scope_close(ptr %s0)
  store i1 %t9, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFoldKnown(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, ptr %a2, i32 %a3) #0 {
entry:
  %l0 = alloca ptr
  %l3 = alloca i32
  %l4 = alloca %"compiler/generic:folded"
  %l8 = alloca %"compiler/generic:folded"
  %l13 = alloca ptr
  %l14 = alloca i32
  %l18 = alloca i64
  %l19 = alloca i32
  %l21 = alloca i32
  %rv = alloca i32
  store ptr %a0, ptr %l0
  store i32 %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t7 = call %"compiler/generic:folded" @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eeval(ptr %v0, ptr %v1, ptr %v2, ptr %t1, ptr %a1, ptr %a2)
  store %"compiler/generic:folded" %t7, ptr %l8
  br label %bb1
bb1:
  %t8 = load %"compiler/generic:folded", ptr %l8
  store %"compiler/generic:folded" %t8, ptr %l4
  %t9 = getelementptr %"compiler/generic:folded", ptr %l4, i32 0, i32 0
  %t10 = load i64, ptr %t9, !tbaa !24
  %t11 = load i64, ptr @G_2ecompiler_2fgeneric_2eFolded, !tbaa !24
  %t14 = icmp eq i64 %t10, %t11
  br i1 %t14, label %bb2, label %bb3
bb2:
  %t16 = load ptr, ptr %l0, !tbaa !29
  %t18 = getelementptr %"compiler/generic:Program", ptr %t16, i32 0, i32 2
  store ptr %t18, ptr %l13, !tbaa !29
  %t19 = load i32, ptr %l3, !tbaa !23
  store i32 %t19, ptr %l14, !tbaa !23
  %t20 = load ptr, ptr %l0, !tbaa !29
  %t21 = getelementptr %"compiler/generic:folded", ptr %l4, i32 0, i32 1
  %t22 = load i64, ptr %t21, !tbaa !24
  %t23 = load i32, ptr %l3, !tbaa !23
  %t27 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2ewrap(ptr %v0, ptr %t20, i64 %t22, i32 %t23)
  store i64 %t27, ptr %l18
  br label %bb4
bb3:
  br label %bb6
bb4:
  %t28 = load ptr, ptr %l13, !tbaa !29
  %t29 = load i32, ptr %l14, !tbaa !23
  %t30 = load i64, ptr %l18, !tbaa !24
  %t31 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eConst(ptr %v0, ptr %t28, i32 %t29, i64 %t30)
  store i32 %t31, ptr %l19
  br label %bb5
bb5:
  %t32 = load i32, ptr %l19, !tbaa !23
  store i32 %t32, ptr %rv
  br label %ret
bb6:
  %t33 = load ptr, ptr %l0, !tbaa !29
  %t35 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eUnknownConst(ptr %v0, ptr %t33)
  store i32 %t35, ptr %l21
  br label %bb7
bb7:
  %t36 = load i32, ptr %l21, !tbaa !23
  store i32 %t36, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eInstanceArgs(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l5 = alloca %"compiler/generic:instance"
  %s0 = alloca %olang.scope
  %rv = alloca i32
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t3 = getelementptr %"compiler/generic:Program", ptr %a0, i32 0, i32 44
  %t7 = call %"compiler/generic:instance" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fgeneric_3ainstance_3e_2eAt__Hf3965267bb92d0ee7aeaa2339e2e46fa(ptr %v0, ptr %s0, ptr %t3, i64 %a1)
  store %"compiler/generic:instance" %t7, ptr %l5
  br label %bb1
bb1:
  %t8 = getelementptr %"compiler/generic:instance", ptr %l5, i32 0, i32 1
  %t9 = load i32, ptr %t8, !tbaa !23
  call void @__olang_scope_close(ptr %s0)
  store i32 %t9, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local void @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eInstanceContext(ptr %out, ptr %v0, ptr %v1, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca i32
  %lp3 = alloca ptr
  %l4 = alloca ptr
  %l5 = alloca { i64, ptr }
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca i64
  %l15 = alloca i32
  %l18 = alloca %"compiler/generic:Context"
  %l21 = alloca ptr
  %l23 = alloca ptr
  %l27 = alloca i32
  %l28 = alloca { i64, ptr }
  %l32 = alloca i1
  %l43 = alloca i64
  %l46 = alloca i64
  %l70 = alloca { i64, ptr }
  %l74 = alloca { i64, ptr }
  %l79 = alloca %"compiler/generic:Context"
  %t11 = alloca %"compiler/generic:Context", align 8
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/generic:Program", ptr %t1, i32 0, i32 2
  %t4 = load i32, ptr %l1, !tbaa !23
  %t7 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %t3, i32 %t4)
  store i32 %t7, ptr %l15
  br label %bb1
bb1:
  %t8 = load i32, ptr %l15, !tbaa !23
  store i32 %t8, ptr %l2, !tbaa !23
  %t9 = load ptr, ptr %l0, !tbaa !29
  %t10 = load i32, ptr %l2, !tbaa !23
  call void @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2edeclContext(ptr %t11, ptr %v0, ptr %v1, ptr %t9, i32 %t10)
  call void @llvm.memmove.p0.p0.i64(ptr %l18, ptr %t11, i64 160, i1 false)
  br label %bb2
bb2:
  %t14 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 160, i64 8)
  store ptr %t14, ptr %lp3
  %t15 = load ptr, ptr %lp3
  call void @llvm.memmove.p0.p0.i64(ptr %t15, ptr %l18, i64 160, i1 false)
  %t16 = load ptr, ptr %l0, !tbaa !29
  %t17 = load i32, ptr %l2, !tbaa !23
  %t20 = call ptr @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2etypeDecl(ptr %v0, ptr %v0, ptr %t16, i32 %t17)
  store ptr %t20, ptr %l21
  br label %bb3
bb3:
  %t21 = load ptr, ptr %l21, !tbaa !29
  store ptr %t21, ptr %l4, !tbaa !29
  %t22 = load ptr, ptr %l0, !tbaa !29
  %t24 = getelementptr %"compiler/generic:Program", ptr %t22, i32 0, i32 2
  store ptr %t24, ptr %l23, !tbaa !29
  %t25 = load ptr, ptr %l0, !tbaa !29
  %t27 = getelementptr %"compiler/generic:Program", ptr %t25, i32 0, i32 2
  %t28 = load i32, ptr %l1, !tbaa !23
  %t31 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eArgs(ptr %v0, ptr %t27, i32 %t28)
  store i32 %t31, ptr %l27
  br label %bb4
bb4:
  %t32 = load ptr, ptr %l23, !tbaa !29
  %t33 = load i32, ptr %l27, !tbaa !23
  %t34 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t32, i32 %t33)
  store { i64, ptr } %t34, ptr %l28
  br label %bb5
bb5:
  %t35 = load { i64, ptr }, ptr %l28, !tbaa !27
  store { i64, ptr } %t35, ptr %l5, !tbaa !27
  %t36 = load ptr, ptr %l4, !tbaa !29
  %t38 = icmp eq ptr %t36, null
  %t40 = xor i1 %t38, true
  br i1 %t40, label %bb6, label %bb7
bb6:
  %t42 = load ptr, ptr %l4, !tbaa !29
  %t44 = getelementptr %"compiler/ast:TypeDecl", ptr %t42, i32 0, i32 1
  %t45 = load { i64, ptr }, ptr %t44, !tbaa !27
  %t47 = extractvalue { i64, ptr } %t45, 0
  %t49 = icmp sgt i64 %t47, 0
  store i1 %t49, ptr %l32, !tbaa !21
  br label %bb8
bb7:
  store i1 false, ptr %l32, !tbaa !21
  br label %bb8
bb8:
  %t51 = load i1, ptr %l32, !tbaa !21
  br i1 %t51, label %bb9, label %bb10
bb9:
  store i64 0, ptr %l6, !tbaa !24
  %t52 = load ptr, ptr %l4, !tbaa !29
  %t54 = getelementptr %"compiler/ast:TypeDecl", ptr %t52, i32 0, i32 1
  %t55 = load { i64, ptr }, ptr %t54, !tbaa !27
  %t57 = extractvalue { i64, ptr } %t55, 0
  store i64 %t57, ptr %l7, !tbaa !24
  store i64 1, ptr %l8, !tbaa !24
  %t59 = load i64, ptr %l7, !tbaa !24
  %t60 = load i64, ptr %l6, !tbaa !24
  %t63 = icmp sgt i64 %t59, %t60
  br i1 %t63, label %bb11, label %bb12
bb10:
  br label %bb27
bb11:
  %t65 = load i64, ptr %l8, !tbaa !24
  %t67 = icmp sgt i64 %t65, 0
  br i1 %t67, label %bb13, label %bb14
bb12:
  store i64 0, ptr %l43, !tbaa !24
  br label %bb16
bb13:
  %t69 = load i64, ptr %l7, !tbaa !24
  %t70 = load i64, ptr %l6, !tbaa !24
  %t73 = sub i64 %t69, %t70
  %t74 = load i64, ptr %l8, !tbaa !24
  %t77 = add i64 %t73, %t74
  %t79 = sub i64 %t77, 1
  %t80 = load i64, ptr %l8, !tbaa !24
  %t83 = sdiv i64 %t79, %t80
  store i64 %t83, ptr %l46, !tbaa !24
  br label %bb15
bb14:
  store i64 0, ptr %l46, !tbaa !24
  br label %bb15
bb15:
  %t85 = load i64, ptr %l46, !tbaa !24
  store i64 %t85, ptr %l43, !tbaa !24
  br label %bb16
bb16:
  %t86 = load i64, ptr %l43, !tbaa !24
  store i64 %t86, ptr %l9, !tbaa !24
  store i64 0, ptr %l10, !tbaa !24
  br label %bb17
bb17:
  %t87 = load i64, ptr %l10, !tbaa !24
  %t88 = load i64, ptr %l9, !tbaa !24
  %t91 = icmp slt i64 %t87, %t88
  %t93 = xor i1 %t91, true
  br i1 %t93, label %bb18, label %bb19
bb18:
  br label %bb26
bb19:
  br label %bb20
bb20:
  %t95 = load i64, ptr %l6, !tbaa !24
  %t96 = load i64, ptr %l10, !tbaa !24
  %t97 = load i64, ptr %l8, !tbaa !24
  %t100 = mul i64 %t96, %t97
  %t103 = add i64 %t95, %t100
  store i64 %t103, ptr %l11, !tbaa !24
  %t105 = load i64, ptr %l11, !tbaa !24
  %t106 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t108 = extractvalue { i64, ptr } %t106, 0
  %t111 = icmp slt i64 %t105, %t108
  br i1 %t111, label %bb21, label %bb22
bb21:
  %t113 = load ptr, ptr %lp3
  %t114 = getelementptr %"compiler/generic:Context", ptr %t113, i32 0, i32 2
  %t115 = load ptr, ptr %l4, !tbaa !29
  %t117 = getelementptr %"compiler/ast:TypeDecl", ptr %t115, i32 0, i32 1
  %t118 = load { i64, ptr }, ptr %t117, !tbaa !27
  store { i64, ptr } %t118, ptr %l70, !tbaa !27
  %t119 = load i64, ptr %l11, !tbaa !24
  %t121 = getelementptr { i64, ptr }, ptr %l70, i32 0, i32 1
  %t122 = load ptr, ptr %t121, !tbaa !27
  %t123 = getelementptr ptr, ptr %t122, i64 %t119
  %t124 = load ptr, ptr %t123, !tbaa !39
  %t126 = getelementptr %"compiler/ast:TypeParam", ptr %t124, i32 0, i32 1
  %t127 = load i32, ptr %t126, !tbaa !23
  %t128 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t128, ptr %l74, !tbaa !27
  %t129 = load i64, ptr %l11, !tbaa !24
  %t131 = getelementptr { i64, ptr }, ptr %l74, i32 0, i32 1
  %t132 = load ptr, ptr %t131, !tbaa !27
  %t133 = getelementptr i32, ptr %t132, i64 %t129
  %t134 = load i32, ptr %t133, !tbaa !33
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fsource_3aNameId_2c_20compil_H943a9bb03970f71acf57214091669a7d(ptr %v1, ptr %t114, i32 %t127, i32 %t134)
  br label %bb23
bb22:
  br label %bb24
bb23:
  br label %bb24
bb24:
  br label %bb25
bb25:
  %t138 = load i64, ptr %l10, !tbaa !24
  %t140 = add i64 %t138, 1
  store i64 %t140, ptr %l10, !tbaa !24
  br label %bb17
bb26:
  br label %bb27
bb27:
  %t142 = load ptr, ptr %lp3
  call void @llvm.memmove.p0.p0.i64(ptr %l79, ptr %t142, i64 160, i1 false)
  call void @llvm.memmove.p0.p0.i64(ptr %out, ptr %l79, i64 160, i1 false)
  br label %ret
ret:
  ret void
}

define dso_local i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eInstanceCount(ptr %v0, ptr %a0) #0 {
entry:
  %l3 = alloca i64
  %rv = alloca i64
  br label %start
start:
  br label %bb0
bb0:
  %t3 = getelementptr %"compiler/generic:Program", ptr %a0, i32 0, i32 44
  %t5 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fgeneric_3ainstance_3e_2eLen_Hf1590ba3dea8cd8a914b2a9f5344a2c6(ptr %v0, ptr %t3)
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

define dso_local i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eIsErrorSet(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l5 = alloca i1
  %l9 = alloca i32
  %l12 = alloca i1
  %l13 = alloca ptr
  %l17 = alloca i32
  %l18 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load i32, ptr %l1, !tbaa !23
  %t2 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t5 = icmp ne i32 %t1, %t2
  br i1 %t5, label %bb1, label %bb2
bb1:
  %t7 = load ptr, ptr %l0, !tbaa !29
  %t9 = getelementptr %"compiler/generic:Program", ptr %t7, i32 0, i32 2
  %t10 = load i32, ptr %l1, !tbaa !23
  %t13 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t9, i32 %t10)
  store i32 %t13, ptr %l9
  br label %bb3
bb2:
  store i1 false, ptr %l5, !tbaa !21
  br label %bb4
bb3:
  %t14 = load i32, ptr %l9, !range !{i32 0, i32 33}
  %t16 = trunc i64 18 to i32
  %t17 = icmp eq i32 %t14, %t16
  store i1 %t17, ptr %l5, !tbaa !21
  br label %bb4
bb4:
  %t19 = load i1, ptr %l5, !tbaa !21
  br i1 %t19, label %bb5, label %bb6
bb5:
  %t20 = load ptr, ptr %l0, !tbaa !29
  store ptr %t20, ptr %l13, !tbaa !29
  %t21 = load ptr, ptr %l0, !tbaa !29
  %t23 = getelementptr %"compiler/generic:Program", ptr %t21, i32 0, i32 2
  %t24 = load i32, ptr %l1, !tbaa !23
  %t27 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %t23, i32 %t24)
  store i32 %t27, ptr %l17
  br label %bb7
bb6:
  store i1 false, ptr %l12, !tbaa !21
  br label %bb9
bb7:
  %t28 = load ptr, ptr %l13, !tbaa !29
  %t29 = load i32, ptr %l17, !tbaa !23
  %t30 = call { i64, ptr } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eErrorMembers(ptr %v0, ptr %s0, ptr %t28, i32 %t29)
  store { i64, ptr } %t30, ptr %l18
  br label %bb8
bb8:
  %t31 = load { i64, ptr }, ptr %l18, !tbaa !27
  %t32 = extractvalue { i64, ptr } %t31, 0
  %t34 = icmp sgt i64 %t32, 0
  store i1 %t34, ptr %l12, !tbaa !21
  br label %bb9
bb9:
  call void @__olang_scope_close(ptr %s0)
  %t36 = load i1, ptr %l12, !tbaa !21
  store i1 %t36, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eIsRaisedError(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca { i64, ptr }
  %l5 = alloca { i64, ptr }
  %l9 = alloca i1
  %l10 = alloca { i64, ptr }
  %l11 = alloca i32
  %l15 = alloca i32
  %l17 = alloca i1
  %l20 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load i32, ptr %l1, !tbaa !23
  %t5 = call { i64, ptr } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eErrorWords(ptr %v0, ptr %s0, ptr %t1, i32 %t2)
  store { i64, ptr } %t5, ptr %l5
  br label %bb1
bb1:
  %t6 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t6, ptr %l2, !tbaa !27
  %t7 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t9 = extractvalue { i64, ptr } %t7, 0
  %t11 = icmp eq i64 %t9, 1
  br i1 %t11, label %bb2, label %bb3
bb2:
  %t13 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t13, ptr %l10, !tbaa !27
  %t14 = getelementptr { i64, ptr }, ptr %l10, i32 0, i32 1
  %t15 = load ptr, ptr %t14, !tbaa !27
  %t16 = getelementptr i32, ptr %t15, i64 0
  %t17 = load i32, ptr %t16, !tbaa !33
  store i32 %t17, ptr %l11, !tbaa !23
  %t18 = load ptr, ptr %l0, !tbaa !29
  %t20 = getelementptr %"compiler/generic:Program", ptr %t18, i32 0, i32 2
  %t21 = load i32, ptr %l1, !tbaa !23
  %t24 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclName(ptr %v0, ptr %t20, i32 %t21)
  store i32 %t24, ptr %l15
  br label %bb4
bb3:
  store i1 false, ptr %l9, !tbaa !21
  br label %bb5
bb4:
  %t25 = load i32, ptr %l11, !tbaa !23
  %t26 = load i32, ptr %l15, !tbaa !23
  %t27 = icmp eq i32 %t25, %t26
  store i1 %t27, ptr %l9, !tbaa !21
  br label %bb5
bb5:
  %t29 = load i1, ptr %l9, !tbaa !21
  br i1 %t29, label %bb6, label %bb7
bb6:
  %t30 = load ptr, ptr %l0, !tbaa !29
  %t31 = load i32, ptr %l1, !tbaa !23
  %t34 = call { i64, ptr } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eErrorMembers(ptr %v0, ptr %s0, ptr %t30, i32 %t31)
  store { i64, ptr } %t34, ptr %l20
  br label %bb8
bb7:
  store i1 false, ptr %l17, !tbaa !21
  br label %bb9
bb8:
  %t35 = load { i64, ptr }, ptr %l20, !tbaa !27
  %t36 = extractvalue { i64, ptr } %t35, 0
  %t38 = icmp eq i64 %t36, 0
  store i1 %t38, ptr %l17, !tbaa !21
  br label %bb9
bb9:
  call void @__olang_scope_close(ptr %s0)
  %t40 = load i1, ptr %l17, !tbaa !21
  store i1 %t40, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eIsSynth(ptr %v0, ptr %a0, i64 %a1, i32 %a2) #0 {
entry:
  %l4 = alloca ptr
  %l8 = alloca %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0"
  %l9 = alloca i1
  %s0 = alloca %olang.scope
  %rv = alloca i1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t3 = getelementptr %"compiler/generic:Program", ptr %a0, i32 0, i32 59
  store ptr %t3, ptr %l4, !tbaa !29
  %t7 = sext i32 %a2 to i64
  %t10 = call %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" @std_2fpair_3aPair_3cI64_2c_20I64_3e_2ector(ptr %s0, i64 %a1, i64 %t7)
  store %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t10, ptr %l8
  br label %bb1
bb1:
  %t11 = load ptr, ptr %l4, !tbaa !29
  %t12 = load %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %l8
  %t13 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_Heee1b38d7befb547e74946db4c0c1912(ptr %v0, ptr %t11, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t12)
  store i1 %t13, ptr %l9
  br label %bb2
bb2:
  call void @__olang_scope_close(ptr %s0)
  %t14 = load i1, ptr %l9, !tbaa !21
  store i1 %t14, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eLayout(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca i64
  %l3 = alloca i1
  %l4 = alloca i1
  %l5 = alloca { i64, ptr }
  %l6 = alloca i64
  %l7 = alloca i64
  %l9 = alloca { i64, ptr }
  %l10 = alloca i64
  %l11 = alloca i64
  %l16 = alloca i64
  %l34 = alloca i32
  %l37 = alloca i1
  %l39 = alloca ptr
  %l43 = alloca i32
  %l44 = alloca { i64, ptr }
  %l48 = alloca i1
  %l53 = alloca ptr
  %l57 = alloca i32
  %l68 = alloca ptr
  %l73 = alloca i1
  %l78 = alloca i1
  %l82 = alloca i32
  %l85 = alloca ptr
  %l89 = alloca i32
  %l94 = alloca { i64, ptr }
  %l102 = alloca { i64, ptr }
  %l107 = alloca i1
  %l112 = alloca i1
  %l116 = alloca i1
  %l118 = alloca ptr
  %l122 = alloca i32
  %l123 = alloca { i64, ptr }
  %l130 = alloca { i64, ptr }
  %l141 = alloca i1
  %l143 = alloca ptr
  %l149 = alloca i64
  %l153 = alloca ptr
  %l154 = alloca i32
  %l156 = alloca i64
  %s0 = alloca %olang.scope
  %s9 = alloca %olang.scope
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/generic:Program", ptr %t1, i32 0, i32 2
  %t4 = load i32, ptr %l1, !tbaa !23
  %t7 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eLayoutState(ptr %v0, ptr %t3, i32 %t4)
  store i64 %t7, ptr %l16
  br label %bb1
bb1:
  %t8 = load i64, ptr %l16, !tbaa !24
  store i64 %t8, ptr %l2, !tbaa !24
  %t9 = load i64, ptr %l2, !tbaa !24
  %t10 = load i64, ptr @G_2ecompiler_2ftypes_2eLaidOut, !tbaa !24
  %t13 = icmp eq i64 %t9, %t10
  br i1 %t13, label %bb2, label %bb3
bb2:
  call void @__olang_scope_close(ptr %s0)
  store i1 true, ptr %rv
  br label %ret
bb3:
  br label %bb4
bb4:
  %t16 = load i64, ptr %l2, !tbaa !24
  %t17 = load i64, ptr @G_2ecompiler_2ftypes_2eNoLayout, !tbaa !24
  %t20 = icmp eq i64 %t16, %t17
  br i1 %t20, label %bb5, label %bb6
bb5:
  call void @__olang_scope_close(ptr %s0)
  store i1 false, ptr %rv
  br label %ret
bb6:
  br label %bb7
bb7:
  %t23 = load i64, ptr %l2, !tbaa !24
  %t24 = load i64, ptr @G_2ecompiler_2ftypes_2eLayingOut, !tbaa !24
  %t27 = icmp eq i64 %t23, %t24
  br i1 %t27, label %bb8, label %bb9
bb8:
  %t29 = load ptr, ptr %l0, !tbaa !29
  %t30 = load i32, ptr %l1, !tbaa !23
  call void @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eholdsItself(ptr %v0, ptr %t29, i32 %t30)
  br label %bb10
bb9:
  br label %bb11
bb10:
  call void @__olang_scope_close(ptr %s0)
  store i1 false, ptr %rv
  br label %ret
bb11:
  %t34 = load ptr, ptr %l0, !tbaa !29
  %t36 = getelementptr %"compiler/generic:Program", ptr %t34, i32 0, i32 2
  %t37 = load i32, ptr %l1, !tbaa !23
  %t40 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t36, i32 %t37)
  store i32 %t40, ptr %l34
  br label %bb12
bb12:
  %t41 = load i32, ptr %l34, !range !{i32 0, i32 33}
  %t43 = trunc i64 18 to i32
  %t44 = icmp eq i32 %t41, %t43
  br i1 %t44, label %bb13, label %bb14
bb13:
  %t46 = load ptr, ptr %l0, !tbaa !29
  %t48 = getelementptr %"compiler/generic:Program", ptr %t46, i32 0, i32 2
  store ptr %t48, ptr %l39, !tbaa !29
  %t49 = load ptr, ptr %l0, !tbaa !29
  %t51 = getelementptr %"compiler/generic:Program", ptr %t49, i32 0, i32 2
  %t52 = load i32, ptr %l1, !tbaa !23
  %t55 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eArgs(ptr %v0, ptr %t51, i32 %t52)
  store i32 %t55, ptr %l43
  br label %bb15
bb14:
  store i1 false, ptr %l37, !tbaa !21
  br label %bb17
bb15:
  %t56 = load ptr, ptr %l39, !tbaa !29
  %t57 = load i32, ptr %l43, !tbaa !23
  %t58 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %s0, ptr %t56, i32 %t57)
  store { i64, ptr } %t58, ptr %l44
  br label %bb16
bb16:
  %t59 = load { i64, ptr }, ptr %l44, !tbaa !27
  %t60 = extractvalue { i64, ptr } %t59, 0
  %t62 = icmp sgt i64 %t60, 0
  store i1 %t62, ptr %l37, !tbaa !21
  br label %bb17
bb17:
  %t64 = load i1, ptr %l37, !tbaa !21
  store i1 %t64, ptr %l3, !tbaa !21
  %t65 = load i1, ptr %l3, !tbaa !21
  br i1 %t65, label %bb18, label %bb19
bb18:
  %t67 = load ptr, ptr %l0, !tbaa !29
  %t69 = getelementptr %"compiler/generic:Program", ptr %t67, i32 0, i32 50
  %t70 = load i64, ptr %t69, !tbaa !24
  %t71 = load i64, ptr @G_2ecompiler_2fgeneric_2eMaxChain, !tbaa !24
  %t74 = icmp sge i64 %t70, %t71
  store i1 %t74, ptr %l48, !tbaa !21
  br label %bb20
bb19:
  store i1 false, ptr %l48, !tbaa !21
  br label %bb20
bb20:
  %t76 = load i1, ptr %l48, !tbaa !21
  br i1 %t76, label %bb21, label %bb22
bb21:
  %t77 = load ptr, ptr %l0, !tbaa !29
  store ptr %t77, ptr %l53, !tbaa !29
  %t78 = load ptr, ptr %l0, !tbaa !29
  %t80 = getelementptr %"compiler/generic:Program", ptr %t78, i32 0, i32 2
  %t81 = load i32, ptr %l1, !tbaa !23
  %t84 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %t80, i32 %t81)
  store i32 %t84, ptr %l57
  br label %bb23
bb22:
  br label %bb26
bb23:
  %t85 = load ptr, ptr %l53, !tbaa !29
  %t86 = load i32, ptr %l57, !tbaa !23
  call void @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eunbounded(ptr %v0, ptr %t85, i32 %t86)
  br label %bb24
bb24:
  %t87 = load ptr, ptr %l0, !tbaa !29
  %t89 = getelementptr %"compiler/generic:Program", ptr %t87, i32 0, i32 2
  %t90 = load i32, ptr %l1, !tbaa !23
  %t91 = load i64, ptr @G_2ecompiler_2ftypes_2eNoLayout, !tbaa !24
  call void @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eSetLayoutState(ptr %v0, ptr %t89, i32 %t90, i64 %t91)
  br label %bb25
bb25:
  call void @__olang_scope_close(ptr %s0)
  store i1 false, ptr %rv
  br label %ret
bb26:
  %t96 = load ptr, ptr %l0, !tbaa !29
  %t98 = getelementptr %"compiler/generic:Program", ptr %t96, i32 0, i32 2
  %t99 = load i32, ptr %l1, !tbaa !23
  %t100 = load i64, ptr @G_2ecompiler_2ftypes_2eLayingOut, !tbaa !24
  call void @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eSetLayoutState(ptr %v0, ptr %t98, i32 %t99, i64 %t100)
  br label %bb27
bb27:
  %t104 = load i1, ptr %l3, !tbaa !21
  br i1 %t104, label %bb28, label %bb29
bb28:
  %t106 = load ptr, ptr %l0, !tbaa !29
  store ptr %t106, ptr %l68, !tbaa !29
  %t107 = load ptr, ptr %l68, !tbaa !29
  %t108 = getelementptr %"compiler/generic:Program", ptr %t107, i32 0, i32 50
  %t109 = load i64, ptr %t108, !tbaa !24
  %t111 = add i64 %t109, 1
  %t113 = load ptr, ptr %l68, !tbaa !29
  %t114 = getelementptr %"compiler/generic:Program", ptr %t113, i32 0, i32 50
  store i64 %t111, ptr %t114, !tbaa !24
  br label %bb30
bb29:
  br label %bb30
bb30:
  %t115 = load ptr, ptr %l0, !tbaa !29
  %t116 = load i32, ptr %l1, !tbaa !23
  %t119 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eBody(ptr %v0, ptr %t115, i32 %t116)
  store i1 %t119, ptr %l73
  br label %bb31
bb31:
  %t120 = load i1, ptr %l73, !tbaa !21
  store i1 %t120, ptr %l4, !tbaa !21
  %t121 = load i1, ptr %l4, !tbaa !21
  br i1 %t121, label %bb32, label %bb33
bb32:
  %t123 = load ptr, ptr %l0, !tbaa !29
  %t124 = load i32, ptr %l1, !tbaa !23
  call void @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2ereprReady(ptr %v0, ptr %t123, i32 %t124)
  br label %bb34
bb33:
  br label %bb35
bb34:
  br label %bb35
bb35:
  %t127 = load i1, ptr %l4, !tbaa !21
  br i1 %t127, label %bb36, label %bb37
bb36:
  %t129 = load ptr, ptr %l0, !tbaa !29
  %t131 = getelementptr %"compiler/generic:Program", ptr %t129, i32 0, i32 2
  %t132 = load i32, ptr %l1, !tbaa !23
  %t135 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t131, i32 %t132)
  store i32 %t135, ptr %l82
  br label %bb38
bb37:
  store i1 false, ptr %l78, !tbaa !21
  br label %bb39
bb38:
  %t136 = load i32, ptr %l82, !range !{i32 0, i32 33}
  %t138 = trunc i64 20 to i32
  %t139 = icmp eq i32 %t136, %t138
  store i1 %t139, ptr %l78, !tbaa !21
  br label %bb39
bb39:
  %t141 = load i1, ptr %l78, !tbaa !21
  br i1 %t141, label %bb40, label %bb41
bb40:
  %t142 = load ptr, ptr %l0, !tbaa !29
  store ptr %t142, ptr %l85, !tbaa !29
  %t143 = load ptr, ptr %l0, !tbaa !29
  %t145 = getelementptr %"compiler/generic:Program", ptr %t143, i32 0, i32 2
  %t146 = load i32, ptr %l1, !tbaa !23
  %t149 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eReferent(ptr %v0, ptr %t145, i32 %t146)
  store i32 %t149, ptr %l89
  br label %bb42
bb41:
  br label %bb44
bb42:
  %t150 = load ptr, ptr %l85, !tbaa !29
  %t151 = load i32, ptr %l89, !tbaa !23
  call void @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2ereprReady(ptr %v0, ptr %t150, i32 %t151)
  br label %bb43
bb43:
  br label %bb44
bb44:
  %t152 = load i1, ptr %l4, !tbaa !21
  br i1 %t152, label %bb45, label %bb46
bb45:
  store %olang.scope zeroinitializer, ptr %s9
  %t154 = load ptr, ptr %l0, !tbaa !29
  %t156 = getelementptr %"compiler/generic:Program", ptr %t154, i32 0, i32 2
  %t157 = load i32, ptr %l1, !tbaa !23
  %t160 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eEmbedded(ptr %v0, ptr %s9, ptr %t156, i32 %t157)
  store { i64, ptr } %t160, ptr %l94
  br label %bb47
bb46:
  br label %bb58
bb47:
  %t161 = load { i64, ptr }, ptr %l94, !tbaa !27
  %t162 = extractvalue { i64, ptr } %t161, 0
  %t163 = extractvalue { i64, ptr } %t161, 1
  %t164 = mul i64 %t162, 4
  %t165 = call ptr @__olang_scope_alloc(ptr %s9, i64 %t164)
  call void @llvm.memcpy.p0.p0.i64(ptr %t165, ptr %t163, i64 %t164, i1 false)
  %t166 = insertvalue { i64, ptr } undef, i64 %t162, 0
  %t167 = insertvalue { i64, ptr } %t166, ptr %t165, 1
  store { i64, ptr } %t167, ptr %l5, !tbaa !27
  store i64 0, ptr %l6, !tbaa !24
  %t169 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t171 = extractvalue { i64, ptr } %t169, 0
  store i64 %t171, ptr %l7, !tbaa !24
  br label %bb48
bb48:
  %t173 = load i64, ptr %l6, !tbaa !24
  %t174 = load i64, ptr %l7, !tbaa !24
  %t177 = icmp slt i64 %t173, %t174
  %t179 = xor i1 %t177, true
  br i1 %t179, label %bb49, label %bb50
bb49:
  br label %bb57
bb50:
  br label %bb51
bb51:
  %t181 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t181, ptr %l102, !tbaa !27
  %t182 = load i64, ptr %l6, !tbaa !24
  %t184 = getelementptr { i64, ptr }, ptr %l102, i32 0, i32 1
  %t185 = load ptr, ptr %t184, !tbaa !27
  %t186 = getelementptr i32, ptr %t185, i64 %t182
  %t187 = load i32, ptr %t186, !tbaa !33
  %t189 = load ptr, ptr %l0, !tbaa !29
  %t193 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eLayout(ptr %v0, ptr %t189, i32 %t187)
  store i1 %t193, ptr %l107
  br label %bb52
bb52:
  %t194 = load i1, ptr %l107, !tbaa !21
  %t195 = xor i1 %t194, true
  br i1 %t195, label %bb53, label %bb54
bb53:
  store i1 false, ptr %l4, !tbaa !21
  br label %bb55
bb54:
  br label %bb55
bb55:
  br label %bb56
bb56:
  %t197 = load i64, ptr %l6, !tbaa !24
  %t199 = add i64 %t197, 1
  store i64 %t199, ptr %l6, !tbaa !24
  br label %bb48
bb57:
  call void @__olang_scope_close(ptr %s9)
  br label %bb58
bb58:
  %t201 = load i1, ptr %l4, !tbaa !21
  br i1 %t201, label %bb59, label %bb60
bb59:
  %t203 = load ptr, ptr %l0, !tbaa !29
  %t205 = getelementptr %"compiler/generic:Program", ptr %t203, i32 0, i32 2
  %t206 = load i32, ptr %l1, !tbaa !23
  %t209 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePacked(ptr %v0, ptr %t205, i32 %t206)
  store i1 %t209, ptr %l116
  br label %bb61
bb60:
  store i1 false, ptr %l112, !tbaa !21
  br label %bb62
bb61:
  %t210 = load i1, ptr %l116, !tbaa !21
  store i1 %t210, ptr %l112, !tbaa !21
  br label %bb62
bb62:
  %t211 = load i1, ptr %l112, !tbaa !21
  br i1 %t211, label %bb63, label %bb64
bb63:
  %t212 = load ptr, ptr %l0, !tbaa !29
  %t214 = getelementptr %"compiler/generic:Program", ptr %t212, i32 0, i32 2
  store ptr %t214, ptr %l118, !tbaa !29
  %t215 = load ptr, ptr %l0, !tbaa !29
  %t217 = getelementptr %"compiler/generic:Program", ptr %t215, i32 0, i32 2
  %t218 = load i32, ptr %l1, !tbaa !23
  %t221 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eFields(ptr %v0, ptr %t217, i32 %t218)
  store i32 %t221, ptr %l122
  br label %bb65
bb64:
  br label %bb74
bb65:
  %t222 = load ptr, ptr %l118, !tbaa !29
  %t223 = load i32, ptr %l122, !tbaa !23
  %t224 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t222, i32 %t223)
  store { i64, ptr } %t224, ptr %l123
  br label %bb66
bb66:
  %t225 = load { i64, ptr }, ptr %l123, !tbaa !27
  store { i64, ptr } %t225, ptr %l9, !tbaa !27
  store i64 0, ptr %l10, !tbaa !24
  %t226 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t228 = extractvalue { i64, ptr } %t226, 0
  store i64 %t228, ptr %l11, !tbaa !24
  br label %bb67
bb67:
  %t230 = load i64, ptr %l10, !tbaa !24
  %t231 = load i64, ptr %l11, !tbaa !24
  %t234 = icmp slt i64 %t230, %t231
  %t236 = xor i1 %t234, true
  br i1 %t236, label %bb68, label %bb69
bb68:
  br label %bb73
bb69:
  br label %bb70
bb70:
  %t238 = load { i64, ptr }, ptr %l9, !tbaa !27
  store { i64, ptr } %t238, ptr %l130, !tbaa !27
  %t239 = load i64, ptr %l10, !tbaa !24
  %t241 = getelementptr { i64, ptr }, ptr %l130, i32 0, i32 1
  %t242 = load ptr, ptr %t241, !tbaa !27
  %t243 = getelementptr i32, ptr %t242, i64 %t239
  %t244 = load i32, ptr %t243, !tbaa !33
  %t246 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2enoteRawType(ptr %v0, ptr %t246, i32 %t244)
  br label %bb71
bb71:
  br label %bb72
bb72:
  %t250 = load i64, ptr %l10, !tbaa !24
  %t252 = add i64 %t250, 1
  store i64 %t252, ptr %l10, !tbaa !24
  br label %bb67
bb73:
  br label %bb74
bb74:
  %t254 = load i1, ptr %l4, !tbaa !21
  br i1 %t254, label %bb75, label %bb76
bb75:
  %t256 = load ptr, ptr %l0, !tbaa !29
  %t258 = getelementptr %"compiler/generic:Program", ptr %t256, i32 0, i32 2
  %t259 = load i32, ptr %l1, !tbaa !23
  %t262 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eComputeLayout(ptr %v0, ptr %t258, i32 %t259)
  store i1 %t262, ptr %l141
  br label %bb77
bb76:
  br label %bb78
bb77:
  %t263 = load i1, ptr %l141, !tbaa !21
  store i1 %t263, ptr %l4, !tbaa !21
  br label %bb78
bb78:
  %t264 = load i1, ptr %l3, !tbaa !21
  br i1 %t264, label %bb79, label %bb80
bb79:
  %t266 = load ptr, ptr %l0, !tbaa !29
  store ptr %t266, ptr %l143, !tbaa !29
  %t267 = load ptr, ptr %l143, !tbaa !29
  %t268 = getelementptr %"compiler/generic:Program", ptr %t267, i32 0, i32 50
  %t269 = load i64, ptr %t268, !tbaa !24
  %t271 = sub i64 %t269, 1
  %t273 = load ptr, ptr %l143, !tbaa !29
  %t274 = getelementptr %"compiler/generic:Program", ptr %t273, i32 0, i32 50
  store i64 %t271, ptr %t274, !tbaa !24
  br label %bb81
bb80:
  br label %bb81
bb81:
  %t275 = load ptr, ptr %l0, !tbaa !29
  %t277 = getelementptr %"compiler/generic:Program", ptr %t275, i32 0, i32 2
  %t278 = load i32, ptr %l1, !tbaa !23
  %t281 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eLayoutState(ptr %v0, ptr %t277, i32 %t278)
  store i64 %t281, ptr %l149
  br label %bb82
bb82:
  %t282 = load i64, ptr @G_2ecompiler_2ftypes_2eLayingOut, !tbaa !24
  %t283 = load i64, ptr %l149, !tbaa !24
  %t285 = icmp eq i64 %t283, %t282
  br i1 %t285, label %bb83, label %bb84
bb83:
  %t287 = load ptr, ptr %l0, !tbaa !29
  %t289 = getelementptr %"compiler/generic:Program", ptr %t287, i32 0, i32 2
  store ptr %t289, ptr %l153, !tbaa !29
  %t290 = load i32, ptr %l1, !tbaa !23
  store i32 %t290, ptr %l154, !tbaa !23
  %t291 = load i1, ptr %l4, !tbaa !21
  br i1 %t291, label %bb85, label %bb86
bb84:
  br label %bb89
bb85:
  %t293 = load i64, ptr @G_2ecompiler_2ftypes_2eLaidOut, !tbaa !24
  store i64 %t293, ptr %l156, !tbaa !24
  br label %bb87
bb86:
  %t295 = load i64, ptr @G_2ecompiler_2ftypes_2eNoLayout, !tbaa !24
  store i64 %t295, ptr %l156, !tbaa !24
  br label %bb87
bb87:
  %t297 = load ptr, ptr %l153, !tbaa !29
  %t298 = load i32, ptr %l154, !tbaa !23
  %t299 = load i64, ptr %l156, !tbaa !24
  call void @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eSetLayoutState(ptr %v0, ptr %t297, i32 %t298, i64 %t299)
  br label %bb88
bb88:
  br label %bb89
bb89:
  %t300 = load i1, ptr %l4, !tbaa !21
  call void @__olang_scope_close(ptr %s0)
  store i1 %t300, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local { i64, ptr } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eLenKey(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1, { i64, ptr } %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l3 = alloca ptr
  %l4 = alloca i32
  %l5 = alloca { i64, ptr }
  %l9 = alloca { i64, ptr }
  %l10 = alloca { i64, ptr }
  %l11 = alloca i64
  %l12 = alloca { i64, ptr }
  %l13 = alloca ptr
  %l14 = alloca i1
  %l23 = alloca { i64, ptr }
  %l24 = alloca i1
  %l26 = alloca { i64, ptr }
  %l27 = alloca { i64, ptr }
  %l28 = alloca i64
  %l29 = alloca { i64, ptr }
  %l32 = alloca { i64, ptr }
  %l34 = alloca i1
  %l35 = alloca { i64, ptr }
  %l36 = alloca { i64, ptr }
  %l40 = alloca i64
  %l41 = alloca { i64, ptr }
  %l42 = alloca { i64, ptr }
  %l43 = alloca { i64, ptr }
  %l44 = alloca i64
  %l45 = alloca { i64, ptr }
  %s2 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t3 = extractvalue { i64, ptr } %a2, 0
  %t5 = icmp sgt i64 %t3, 0
  br i1 %t5, label %bb1, label %bb2
bb1:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d4, i32 0, i32 1) }, ptr %l9, !tbaa !27
  %t7 = load { i64, ptr }, ptr %l9, !tbaa !27
  store { i64, ptr } %t7, ptr %l10, !tbaa !27
  %t8 = load { i64, ptr }, ptr %l10, !tbaa !27
  %t9 = extractvalue { i64, ptr } %t8, 0
  store i64 %t9, ptr %l11, !tbaa !24
  %t10 = load i64, ptr %l11, !tbaa !24
  %t11 = mul i64 %t10, 1
  %t12 = call ptr @__olang_scope_alloc(ptr %v3, i64 %t11)
  %t13 = insertvalue { i64, ptr } undef, i64 %t10, 0
  %t14 = insertvalue { i64, ptr } %t13, ptr %t12, 1
  store { i64, ptr } %t14, ptr %l12, !tbaa !27
  %t15 = getelementptr { i64, ptr }, ptr %l12, i32 0, i32 1
  %t16 = load ptr, ptr %t15, !tbaa !27
  %t17 = getelementptr { i64, ptr }, ptr %l10, i32 0, i32 1
  %t18 = load ptr, ptr %t17, !tbaa !27
  %t19 = load i64, ptr %l11, !tbaa !24
  %t20 = mul i64 %t19, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t16, ptr %t18, i64 %t20, i1 false)
  %t21 = load { i64, ptr }, ptr %l12, !tbaa !27
  store { i64, ptr } %t21, ptr %l10, !tbaa !27
  %t22 = load { i64, ptr }, ptr %l10, !tbaa !27
  store { i64, ptr } %t22, ptr %rv
  br label %ret
bb2:
  br label %bb3
bb3:
  %t23 = load ptr, ptr %l1, !tbaa !29
  store ptr %t23, ptr %l13, !tbaa !29
  store i1 false, ptr %l14, !tbaa !21
  %t24 = load ptr, ptr %l13, !tbaa !29
  %t25 = icmp ne ptr %t24, null
  br i1 %t25, label %bb4, label %bb5
bb4:
  %t27 = load ptr, ptr %l13, !tbaa !29
  %t28 = load i64, ptr %t27, !range !{i64 0, i64 28}
  %t30 = icmp eq i64 %t28, 12
  store i1 %t30, ptr %l14, !tbaa !21
  br label %bb5
bb5:
  %t31 = load i1, ptr %l14, !tbaa !21
  br i1 %t31, label %bb6, label %bb7
bb6:
  %t32 = load ptr, ptr %l1, !tbaa !29
  %t34 = getelementptr { i64, [4 x i64] }, ptr %t32, i32 0, i32 1
  %t35 = getelementptr { %"compiler/source:Span", ptr, i32 }, ptr %t34, i32 0, i32 1
  %t36 = load ptr, ptr %t35
  store ptr %t36, ptr %l3, !tbaa !29
  %t38 = load ptr, ptr %l1, !tbaa !29
  %t40 = getelementptr { i64, [4 x i64] }, ptr %t38, i32 0, i32 1
  %t41 = getelementptr { %"compiler/source:Span", ptr, i32 }, ptr %t40, i32 0, i32 2
  %t42 = load i32, ptr %t41
  store i32 %t42, ptr %l4, !tbaa !23
  br label %bb8
bb7:
  br label %bb19
bb8:
  store %olang.scope zeroinitializer, ptr %s2
  %t44 = load ptr, ptr %l0, !tbaa !29
  %t45 = load i32, ptr %l4, !tbaa !23
  %t48 = call { i64, ptr } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2etext(ptr %v0, ptr %v0, ptr %t44, i32 %t45)
  store { i64, ptr } %t48, ptr %l23
  br label %bb9
bb9:
  %t49 = load { i64, ptr }, ptr %l23, !tbaa !27
  %t50 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s2, { i64, ptr } %t49, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d5, i32 0, i32 1) })
  store i1 %t50, ptr %l24
  br label %bb10
bb10:
  %t51 = load i1, ptr %l24, !tbaa !21
  %t52 = xor i1 %t51, true
  br i1 %t52, label %bb11, label %bb12
bb11:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d6, i32 0, i32 1) }, ptr %l26, !tbaa !27
  %t54 = load { i64, ptr }, ptr %l26, !tbaa !27
  store { i64, ptr } %t54, ptr %l27, !tbaa !27
  %t55 = load { i64, ptr }, ptr %l27, !tbaa !27
  %t56 = extractvalue { i64, ptr } %t55, 0
  store i64 %t56, ptr %l28, !tbaa !24
  %t57 = load i64, ptr %l28, !tbaa !24
  %t58 = mul i64 %t57, 1
  %t59 = call ptr @__olang_scope_alloc(ptr %v3, i64 %t58)
  %t60 = insertvalue { i64, ptr } undef, i64 %t57, 0
  %t61 = insertvalue { i64, ptr } %t60, ptr %t59, 1
  store { i64, ptr } %t61, ptr %l29, !tbaa !27
  %t62 = getelementptr { i64, ptr }, ptr %l29, i32 0, i32 1
  %t63 = load ptr, ptr %t62, !tbaa !27
  %t64 = getelementptr { i64, ptr }, ptr %l27, i32 0, i32 1
  %t65 = load ptr, ptr %t64, !tbaa !27
  %t66 = load i64, ptr %l28, !tbaa !24
  %t67 = mul i64 %t66, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t63, ptr %t65, i64 %t67, i1 false)
  %t68 = load { i64, ptr }, ptr %l29, !tbaa !27
  store { i64, ptr } %t68, ptr %l27, !tbaa !27
  call void @__olang_scope_close(ptr %s2)
  %t69 = load { i64, ptr }, ptr %l27, !tbaa !27
  store { i64, ptr } %t69, ptr %rv
  br label %ret
bb12:
  br label %bb13
bb13:
  %t70 = load ptr, ptr %l0, !tbaa !29
  %t71 = load ptr, ptr %l3, !tbaa !29
  %t74 = call { i64, ptr } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2elenPath(ptr %v0, ptr %v1, ptr %s2, ptr %t70, ptr %t71, i64 0)
  store { i64, ptr } %t74, ptr %l32
  br label %bb14
bb14:
  %t75 = load { i64, ptr }, ptr %l32, !tbaa !27
  store { i64, ptr } %t75, ptr %l5, !tbaa !27
  %t76 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t78 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s2, ptr %s2, { i64, ptr } %t76, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d7, i32 0, i32 1) })
  store i1 %t78, ptr %l34
  br label %bb15
bb15:
  %t79 = load i1, ptr %l34, !tbaa !21
  br i1 %t79, label %bb16, label %bb17
bb16:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d8, i32 0, i32 1) }, ptr %l36, !tbaa !27
  %t80 = load { i64, ptr }, ptr %l36, !tbaa !27
  store { i64, ptr } %t80, ptr %l35, !tbaa !27
  br label %bb18
bb17:
  %t82 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t84 = extractvalue { i64, ptr } %t82, 1
  %t85 = extractvalue { i64, ptr } %t82, 0
  %t86 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d9, i32 0, i32 1) }, 1
  %t87 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d9, i32 0, i32 1) }, 0
  %t88 = add i64 %t85, %t87
  %t89 = call ptr @__olang_scope_alloc(ptr %v3, i64 %t88)
  call void @olang_textcopy(ptr %t89, ptr %t84, i64 %t85)
  %t90 = getelementptr i8, ptr %t89, i64 %t85
  call void @olang_textcopy(ptr %t90, ptr %t86, i64 %t87)
  %t91 = insertvalue { i64, ptr } undef, i64 %t88, 0
  %t92 = insertvalue { i64, ptr } %t91, ptr %t89, 1
  store { i64, ptr } %t92, ptr %l35, !tbaa !27
  br label %bb18
bb18:
  %t94 = load { i64, ptr }, ptr %l35, !tbaa !27
  %t95 = extractvalue { i64, ptr } %t94, 0
  store i64 %t95, ptr %l40, !tbaa !24
  %t96 = load i64, ptr %l40, !tbaa !24
  %t97 = mul i64 %t96, 1
  %t98 = call ptr @__olang_scope_alloc(ptr %v3, i64 %t97)
  %t99 = insertvalue { i64, ptr } undef, i64 %t96, 0
  %t100 = insertvalue { i64, ptr } %t99, ptr %t98, 1
  store { i64, ptr } %t100, ptr %l41, !tbaa !27
  %t101 = getelementptr { i64, ptr }, ptr %l41, i32 0, i32 1
  %t102 = load ptr, ptr %t101, !tbaa !27
  %t103 = getelementptr { i64, ptr }, ptr %l35, i32 0, i32 1
  %t104 = load ptr, ptr %t103, !tbaa !27
  %t105 = load i64, ptr %l40, !tbaa !24
  %t106 = mul i64 %t105, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t102, ptr %t104, i64 %t106, i1 false)
  %t107 = load { i64, ptr }, ptr %l41, !tbaa !27
  store { i64, ptr } %t107, ptr %l35, !tbaa !27
  call void @__olang_scope_close(ptr %s2)
  %t108 = load { i64, ptr }, ptr %l35, !tbaa !27
  store { i64, ptr } %t108, ptr %rv
  br label %ret
bb19:
  br i1 true, label %bb20, label %bb21
bb20:
  br label %bb22
bb21:
  br label %bb23
bb22:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d10, i32 0, i32 1) }, ptr %l42, !tbaa !27
  %t109 = load { i64, ptr }, ptr %l42, !tbaa !27
  store { i64, ptr } %t109, ptr %l43, !tbaa !27
  %t110 = load { i64, ptr }, ptr %l43, !tbaa !27
  %t111 = extractvalue { i64, ptr } %t110, 0
  store i64 %t111, ptr %l44, !tbaa !24
  %t112 = load i64, ptr %l44, !tbaa !24
  %t113 = mul i64 %t112, 1
  %t114 = call ptr @__olang_scope_alloc(ptr %v3, i64 %t113)
  %t115 = insertvalue { i64, ptr } undef, i64 %t112, 0
  %t116 = insertvalue { i64, ptr } %t115, ptr %t114, 1
  store { i64, ptr } %t116, ptr %l45, !tbaa !27
  %t117 = getelementptr { i64, ptr }, ptr %l45, i32 0, i32 1
  %t118 = load ptr, ptr %t117, !tbaa !27
  %t119 = getelementptr { i64, ptr }, ptr %l43, i32 0, i32 1
  %t120 = load ptr, ptr %t119, !tbaa !27
  %t121 = load i64, ptr %l44, !tbaa !24
  %t122 = mul i64 %t121, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t118, ptr %t120, i64 %t122, i1 false)
  %t123 = load { i64, ptr }, ptr %l45, !tbaa !27
  store { i64, ptr } %t123, ptr %l43, !tbaa !27
  %t124 = load { i64, ptr }, ptr %l43, !tbaa !27
  store { i64, ptr } %t124, ptr %rv
  br label %ret
bb23:
  call void @__olang_check_failed(ptr @olang_loc_7f496bc4f965d188_939cdcc04f80a0bc)
  unreachable
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eMember(ptr %v0, ptr %a0, i32 %a1, i32 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca i32
  %l3 = alloca { i64, ptr }
  %l5 = alloca ptr
  %l7 = alloca { i64, ptr }
  %l8 = alloca i64
  %l9 = alloca i64
  %l13 = alloca { i64, ptr }
  %l18 = alloca i1
  %l19 = alloca ptr
  %l23 = alloca ptr
  %l24 = alloca i32
  %l25 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l30 = alloca i32
  %l33 = alloca i1
  %l42 = alloca { i64, ptr }
  %l49 = alloca i1
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  store i32 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load i32, ptr %l2, !tbaa !23
  %t5 = call { i64, ptr } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eMembers(ptr %v0, ptr %v0, ptr %t1, i32 %t2)
  store { i64, ptr } %t5, ptr %l13
  br label %bb1
bb1:
  %t6 = load { i64, ptr }, ptr %l13, !tbaa !27
  store { i64, ptr } %t6, ptr %l3, !tbaa !27
  %t7 = load i32, ptr %l2, !tbaa !23
  %t9 = load ptr, ptr %l0, !tbaa !29
  %t11 = getelementptr %"compiler/generic:Program", ptr %t9, i32 0, i32 21
  %t15 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId_2c_20std_2fp_H78bce58497ad959bdf5762dbe74df8e1(ptr %v0, ptr %t11, i32 %t7)
  store i1 %t15, ptr %l18
  br label %bb2
bb2:
  %t16 = load i1, ptr %l18, !tbaa !21
  br i1 %t16, label %bb3, label %bb4
bb3:
  %t17 = load ptr, ptr %l0, !tbaa !29
  %t19 = getelementptr %"compiler/generic:Program", ptr %t17, i32 0, i32 21
  %t20 = load i32, ptr %l2, !tbaa !23
  %t23 = call { i32, ptr } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId_2c_20std_2fp_Hfa58d934e2b7178f7b33766972648144(ptr %v0, ptr %v0, ptr %t19, i32 %t20)
  %t24 = extractvalue { i32, ptr } %t23, 1
  %t25 = extractvalue { i32, ptr } %t23, 0
  store i32 %t25, ptr %l24
  %t26 = icmp ne i32 %t25, 0
  br i1 %t26, label %bb6, label %ok.27, !prof !99
ok.27:
  store ptr %t24, ptr %l23
  br label %bb5
bb4:
  br label %bb15
bb5:
  %t28 = load ptr, ptr %l23, !tbaa !29
  store ptr %t28, ptr %l19, !tbaa !29
  br label %bb9
bb6:
  br label %bb7
bb7:
  %t29 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId_2c_20Bool_3e_2ector(ptr %v0)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t29, ptr %l25
  br label %bb8
bb8:
  %t30 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l25
  %t31 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 72, i64 8)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t30, ptr %t31
  store ptr %t31, ptr %l19, !tbaa !29
  br label %bb9
bb9:
  %t33 = load ptr, ptr %l19, !tbaa !29
  store ptr %t33, ptr %l5, !tbaa !29
  %t34 = load ptr, ptr %l0, !tbaa !29
  %t36 = getelementptr %"compiler/generic:Program", ptr %t34, i32 0, i32 2
  %t37 = load i32, ptr %l1, !tbaa !23
  %t40 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePlain(ptr %v0, ptr %t36, i32 %t37)
  store i32 %t40, ptr %l30
  br label %bb10
bb10:
  %t41 = load i32, ptr %l30, !tbaa !23
  %t42 = load ptr, ptr %l5, !tbaa !29
  %t46 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId_2c_20Bool_3e_Hb3133f486435530b533aaf49461c92b5(ptr %v0, ptr %t42, i32 %t41)
  store i1 %t46, ptr %l33
  br label %bb11
bb11:
  %t47 = load i1, ptr %l33, !tbaa !21
  br i1 %t47, label %bb12, label %bb13
bb12:
  store i1 true, ptr %rv
  br label %ret
bb13:
  br label %bb14
bb14:
  br label %bb15
bb15:
  %t49 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t49, ptr %l7, !tbaa !27
  store i64 0, ptr %l8, !tbaa !24
  %t51 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t53 = extractvalue { i64, ptr } %t51, 0
  store i64 %t53, ptr %l9, !tbaa !24
  br label %bb16
bb16:
  %t55 = load i64, ptr %l8, !tbaa !24
  %t56 = load i64, ptr %l9, !tbaa !24
  %t59 = icmp slt i64 %t55, %t56
  %t61 = xor i1 %t59, true
  br i1 %t61, label %bb17, label %bb18
bb17:
  br label %bb25
bb18:
  br label %bb19
bb19:
  %t63 = load { i64, ptr }, ptr %l7, !tbaa !27
  store { i64, ptr } %t63, ptr %l42, !tbaa !27
  %t64 = load i64, ptr %l8, !tbaa !24
  %t66 = getelementptr { i64, ptr }, ptr %l42, i32 0, i32 1
  %t67 = load ptr, ptr %t66, !tbaa !27
  %t68 = getelementptr i32, ptr %t67, i64 %t64
  %t69 = load i32, ptr %t68, !tbaa !33
  %t71 = load ptr, ptr %l0, !tbaa !29
  %t73 = getelementptr %"compiler/generic:Program", ptr %t71, i32 0, i32 2
  %t74 = load i32, ptr %l1, !tbaa !23
  %t79 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eSame(ptr %v0, ptr %t73, i32 %t74, i32 %t69)
  store i1 %t79, ptr %l49
  br label %bb20
bb20:
  %t80 = load i1, ptr %l49, !tbaa !21
  br i1 %t80, label %bb21, label %bb22
bb21:
  store i1 true, ptr %rv
  br label %ret
bb22:
  br label %bb23
bb23:
  br label %bb24
bb24:
  %t82 = load i64, ptr %l8, !tbaa !24
  %t84 = add i64 %t82, 1
  store i64 %t84, ptr %l8, !tbaa !24
  br label %bb16
bb25:
  store i1 false, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eMethodSig(ptr %v0, ptr %a0, i64 %a1, i32 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l3 = alloca i32
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca %"compiler/generic:Binding"
  %l7 = alloca { i64, ptr }
  %l10 = alloca i32
  %l12 = alloca i64
  %l15 = alloca i64
  %l21 = alloca %"compiler/generic:Binding"
  %l23 = alloca ptr
  %l27 = alloca i32
  %l28 = alloca { i64, ptr }
  %l34 = alloca { i64, ptr }
  %l38 = alloca i32
  %l40 = alloca ptr
  %l41 = alloca i32
  %l42 = alloca i64
  %l46 = alloca i32
  %l47 = alloca i32
  %s0 = alloca %olang.scope
  %rv = alloca i32
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load i64, ptr %l1, !tbaa !24
  %t5 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eSig(ptr %v0, ptr %t1, i64 %t2)
  store i32 %t5, ptr %l10
  br label %bb1
bb1:
  %t6 = load i32, ptr %l10, !tbaa !23
  store i32 %t6, ptr %l3, !tbaa !23
  %t7 = load i64, ptr %l1, !tbaa !24
  %t9 = call i64 @compiler_2fgeneric_2eFnOwner(i64 %t7)
  store i64 %t9, ptr %l12
  br label %bb2
bb2:
  %t10 = load i64, ptr %l12, !tbaa !24
  store i64 %t10, ptr %l4, !tbaa !24
  %t11 = load ptr, ptr %l0, !tbaa !29
  %t12 = load i64, ptr %l4, !tbaa !24
  %t15 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eVarCount(ptr %v0, ptr %t11, i64 %t12)
  store i64 %t15, ptr %l15
  br label %bb3
bb3:
  %t16 = load i64, ptr %l15, !tbaa !24
  store i64 %t16, ptr %l5, !tbaa !24
  %t17 = load i64, ptr %l5, !tbaa !24
  %t19 = icmp eq i64 %t17, 0
  br i1 %t19, label %bb4, label %bb5
bb4:
  %t21 = load i32, ptr %l3, !tbaa !23
  call void @__olang_scope_close(ptr %s0)
  store i32 %t21, ptr %rv
  br label %ret
bb5:
  br label %bb6
bb6:
  %t23 = load i64, ptr %l4, !tbaa !24
  %t24 = load i64, ptr %l5, !tbaa !24
  %t27 = call %"compiler/generic:Binding" @compiler_2fgeneric_3aBinding_2ector(ptr %s0, i64 %t23, i64 %t24)
  store %"compiler/generic:Binding" %t27, ptr %l21
  br label %bb7
bb7:
  %t28 = load %"compiler/generic:Binding", ptr %l21
  store %"compiler/generic:Binding" %t28, ptr %l6
  %t29 = load ptr, ptr %l0, !tbaa !29
  %t31 = getelementptr %"compiler/generic:Program", ptr %t29, i32 0, i32 2
  store ptr %t31, ptr %l23, !tbaa !29
  %t32 = load ptr, ptr %l0, !tbaa !29
  %t34 = getelementptr %"compiler/generic:Program", ptr %t32, i32 0, i32 2
  %t35 = load i32, ptr %l3, !tbaa !23
  %t38 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParams(ptr %v0, ptr %t34, i32 %t35)
  store i32 %t38, ptr %l27
  br label %bb8
bb8:
  %t39 = load ptr, ptr %l23, !tbaa !29
  %t40 = load i32, ptr %l27, !tbaa !23
  %t41 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t39, i32 %t40)
  store { i64, ptr } %t41, ptr %l28
  br label %bb9
bb9:
  %t42 = load { i64, ptr }, ptr %l28, !tbaa !27
  store { i64, ptr } %t42, ptr %l7, !tbaa !27
  %t43 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t45 = extractvalue { i64, ptr } %t43, 0
  %t47 = icmp eq i64 %t45, 0
  br i1 %t47, label %bb10, label %bb11
bb10:
  %t49 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  call void @__olang_scope_close(ptr %s0)
  store i32 %t49, ptr %rv
  br label %ret
bb11:
  br label %bb12
bb12:
  %t51 = load ptr, ptr %l0, !tbaa !29
  %t52 = load { i64, ptr }, ptr %l7, !tbaa !27
  store { i64, ptr } %t52, ptr %l34, !tbaa !27
  %t53 = getelementptr { i64, ptr }, ptr %l34, i32 0, i32 1
  %t54 = load ptr, ptr %t53, !tbaa !27
  %t55 = getelementptr i32, ptr %t54, i64 0
  %t56 = load i32, ptr %t55, !tbaa !33
  %t62 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eUnifyArg(ptr %v0, ptr %s0, ptr %t51, i32 %t56, i32 %a2, ptr %l6, i1 false, i1 true)
  store i32 %t62, ptr %l38
  %t63 = icmp ne i32 %t62, 0
  br i1 %t63, label %bb14, label %ok.64, !prof !99
ok.64:
  br label %bb13
bb13:
  br label %bb16
bb14:
  br label %bb15
bb15:
  %t65 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  call void @__olang_scope_close(ptr %s0)
  store i32 %t65, ptr %rv
  br label %ret
bb16:
  %t67 = load ptr, ptr %l0, !tbaa !29
  store ptr %t67, ptr %l40, !tbaa !29
  %t68 = load i32, ptr %l3, !tbaa !23
  store i32 %t68, ptr %l41, !tbaa !23
  %t69 = load i64, ptr %l4, !tbaa !24
  store i64 %t69, ptr %l42, !tbaa !24
  %t70 = load ptr, ptr %l0, !tbaa !29
  %t72 = getelementptr %"compiler/generic:Program", ptr %t70, i32 0, i32 2
  %t73 = getelementptr %"compiler/generic:Binding", ptr %l6, i32 0, i32 2
  %t74 = load { i64, ptr }, ptr %t73, !tbaa !27
  %t77 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eList(ptr %v0, ptr %s0, ptr %t72, { i64, ptr } %t74)
  store i32 %t77, ptr %l46
  br label %bb17
bb17:
  %t78 = load ptr, ptr %l40, !tbaa !29
  %t79 = load i32, ptr %l41, !tbaa !23
  %t80 = load i64, ptr %l42, !tbaa !24
  %t81 = load i32, ptr %l46, !tbaa !23
  %t82 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eSubst(ptr %v0, ptr %t78, i32 %t79, i64 %t80, i32 %t81)
  store i32 %t82, ptr %l47
  br label %bb18
bb18:
  call void @__olang_scope_close(ptr %s0)
  %t83 = load i32, ptr %l47, !tbaa !23
  store i32 %t83, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eOwnerOf(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l5 = alloca %"compiler/generic:fnRow"
  %l7 = alloca i1
  %l12 = alloca i32
  %l13 = alloca i32
  %l17 = alloca i32
  %l18 = alloca i32
  %rv = alloca i32
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/generic:Program", ptr %t1, i32 0, i32 29
  %t4 = load i64, ptr %l1, !tbaa !24
  %t7 = call %"compiler/generic:fnRow" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fgeneric_3afnRow_3e_2eAt_3ccompiler_2fgeneric_3afnRow_3e(ptr %v0, ptr %v0, ptr %t3, i64 %t4)
  store %"compiler/generic:fnRow" %t7, ptr %l5
  br label %bb1
bb1:
  %t8 = getelementptr %"compiler/generic:fnRow", ptr %l5, i32 0, i32 1
  %t9 = load ptr, ptr %t8, !tbaa !29
  %t11 = call i1 @compiler_2fast_2ecompiler_2fast_3aFunc_2eIsBuilder(ptr %v0, ptr %t9)
  store i1 %t11, ptr %l7
  br label %bb2
bb2:
  %t12 = load i1, ptr %l7, !tbaa !21
  %t13 = xor i1 %t12, true
  br i1 %t13, label %bb3, label %bb4
bb3:
  %t15 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  store i32 %t15, ptr %rv
  br label %ret
bb4:
  br label %bb5
bb5:
  %t17 = load ptr, ptr %l0, !tbaa !29
  %t18 = load i64, ptr %l1, !tbaa !24
  %t21 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eSig(ptr %v0, ptr %t17, i64 %t18)
  store i32 %t21, ptr %l12
  br label %bb6
bb6:
  %t22 = load ptr, ptr %l0, !tbaa !29
  %t24 = getelementptr %"compiler/generic:Program", ptr %t22, i32 0, i32 43
  %t25 = load i64, ptr %l1, !tbaa !24
  %t28 = call { i32, i32 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2ftypes_3aTypeId_3e__H9861f6f09602cf23d49075e82ac9429b(ptr %v0, ptr %t24, i64 %t25)
  %t29 = extractvalue { i32, i32 } %t28, 1
  %t30 = extractvalue { i32, i32 } %t28, 0
  store i32 %t30, ptr %l18
  %t31 = icmp ne i32 %t30, 0
  br i1 %t31, label %bb8, label %ok.32, !prof !99
ok.32:
  store i32 %t29, ptr %l17
  br label %bb7
bb7:
  %t33 = load i32, ptr %l17, !tbaa !23
  store i32 %t33, ptr %l13, !tbaa !23
  br label %bb10
bb8:
  br label %bb9
bb9:
  %t34 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  store i32 %t34, ptr %l13, !tbaa !23
  br label %bb10
bb10:
  %t36 = load i32, ptr %l13, !tbaa !23
  store i32 %t36, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local { i32, i32 } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eParseCanon(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1) #0 {
entry:
  %l1 = alloca { i64, ptr }
  %l2 = alloca %"compiler/generic:cursor"
  %l3 = alloca i32
  %l5 = alloca %"compiler/generic:cursor"
  %l6 = alloca i32
  %l9 = alloca i32
  %l10 = alloca i32
  %s0 = alloca %olang.scope
  %rv = alloca { i32, i32 }
  store { i64, ptr } %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t3 = call %"compiler/generic:cursor" @compiler_2fgeneric_3acursor_2ector(ptr %v1, ptr %s0, { i64, ptr } %t1)
  store %"compiler/generic:cursor" %t3, ptr %l5
  br label %bb1
bb1:
  %t4 = load %"compiler/generic:cursor", ptr %l5
  store %"compiler/generic:cursor" %t4, ptr %l2
  %t8 = call { i32, i32 } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2ecanonType(ptr %v0, ptr %s0, ptr %a0, ptr %l2)
  %t9 = extractvalue { i32, i32 } %t8, 1
  %t10 = extractvalue { i32, i32 } %t8, 0
  store i32 %t10, ptr %l10
  %t11 = icmp ne i32 %t10, 0
  br i1 %t11, label %bb3, label %ok.12, !prof !99
ok.12:
  store i32 %t9, ptr %l9
  br label %bb2
bb2:
  %t13 = load i32, ptr %l9, !tbaa !23
  store i32 %t13, ptr %l6, !tbaa !23
  br label %bb4
bb3:
  %t14 = load i32, ptr %l10, !tbaa !23
  %t15 = lshr i32 %t14, 16
  %t16 = and i32 %t14, 65535
  %t17 = icmp eq i32 %t15, 1
  %t18 = select i1 %t17, i32 1, i32 0
  %t19 = icmp eq i32 %t15, 2
  %t20 = select i1 %t19, i32 2, i32 %t18
  %t21 = icmp eq i32 %t14, 0
  %t22 = shl i32 %t20, 16
  %t23 = or i32 %t22, %t16
  %t24 = select i1 %t21, i32 0, i32 %t23
  call void @__olang_scope_close(ptr %s0)
  %t26 = insertvalue { i32, i32 } zeroinitializer, i32 %t24, 0
  store { i32, i32 } %t26, ptr %rv
  br label %ret
bb4:
  %t27 = load i32, ptr %l6, !tbaa !23
  store i32 %t27, ptr %l3, !tbaa !23
  %t28 = getelementptr %"compiler/generic:cursor", ptr %l2, i32 0, i32 1
  %t29 = load i64, ptr %t28, !tbaa !24
  %t30 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t32 = extractvalue { i64, ptr } %t30, 0
  %t35 = icmp ne i64 %t29, %t32
  br i1 %t35, label %bb5, label %bb6
bb5:
  call void @__olang_scope_close(ptr %s0)
  %t38 = insertvalue { i32, i32 } zeroinitializer, i32 65536, 0
  store { i32, i32 } %t38, ptr %rv
  br label %ret
bb6:
  br label %bb7
bb7:
  %t39 = load i32, ptr %l3, !tbaa !23
  call void @__olang_scope_close(ptr %s0)
  %t41 = insertvalue { i32, i32 } zeroinitializer, i32 %t39, 1
  store { i32, i32 } %t41, ptr %rv
  br label %ret
ret:
  %rr = load { i32, i32 }, ptr %rv
  ret { i32, i32 } %rr
}

define dso_local i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2ePayloadField(ptr %v0, ptr %a0, i32 %a1, i64 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l3 = alloca { i64, ptr }
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %l14 = alloca i1
  %l18 = alloca ptr
  %l22 = alloca i32
  %l23 = alloca { i64, ptr }
  %l29 = alloca i64
  %l32 = alloca i64
  %l50 = alloca ptr
  %l53 = alloca { i64, ptr }
  %l56 = alloca i32
  %l57 = alloca i32
  %rv = alloca i64
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/generic:Program", ptr %t1, i32 0, i32 2
  %t4 = load i32, ptr %l1, !tbaa !23
  %t7 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrCarries(ptr %v0, ptr %t3, i32 %t4)
  store i1 %t7, ptr %l14
  br label %bb1
bb1:
  %t8 = load i1, ptr %l14, !tbaa !21
  %t9 = xor i1 %t8, true
  br i1 %t9, label %bb2, label %bb3
bb2:
  store i64 0, ptr %rv
  br label %ret
bb3:
  br label %bb4
bb4:
  %t12 = load ptr, ptr %l0, !tbaa !29
  %t14 = getelementptr %"compiler/generic:Program", ptr %t12, i32 0, i32 2
  store ptr %t14, ptr %l18, !tbaa !29
  %t15 = load ptr, ptr %l0, !tbaa !29
  %t17 = getelementptr %"compiler/generic:Program", ptr %t15, i32 0, i32 2
  %t18 = load i32, ptr %l1, !tbaa !23
  %t21 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrValItems(ptr %v0, ptr %t17, i32 %t18)
  store i32 %t21, ptr %l22
  br label %bb5
bb5:
  %t22 = load ptr, ptr %l18, !tbaa !29
  %t23 = load i32, ptr %l22, !tbaa !23
  %t24 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t22, i32 %t23)
  store { i64, ptr } %t24, ptr %l23
  br label %bb6
bb6:
  %t25 = load { i64, ptr }, ptr %l23, !tbaa !27
  store { i64, ptr } %t25, ptr %l3, !tbaa !27
  store i64 0, ptr %l4, !tbaa !24
  store i64 0, ptr %l5, !tbaa !24
  %t26 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t28 = extractvalue { i64, ptr } %t26, 0
  store i64 %t28, ptr %l6, !tbaa !24
  store i64 1, ptr %l7, !tbaa !24
  %t30 = load i64, ptr %l6, !tbaa !24
  %t31 = load i64, ptr %l5, !tbaa !24
  %t34 = icmp sgt i64 %t30, %t31
  br i1 %t34, label %bb7, label %bb8
bb7:
  %t36 = load i64, ptr %l7, !tbaa !24
  %t38 = icmp sgt i64 %t36, 0
  br i1 %t38, label %bb9, label %bb10
bb8:
  store i64 0, ptr %l29, !tbaa !24
  br label %bb12
bb9:
  %t40 = load i64, ptr %l6, !tbaa !24
  %t41 = load i64, ptr %l5, !tbaa !24
  %t44 = sub i64 %t40, %t41
  %t45 = load i64, ptr %l7, !tbaa !24
  %t48 = add i64 %t44, %t45
  %t50 = sub i64 %t48, 1
  %t51 = load i64, ptr %l7, !tbaa !24
  %t54 = sdiv i64 %t50, %t51
  store i64 %t54, ptr %l32, !tbaa !24
  br label %bb11
bb10:
  store i64 0, ptr %l32, !tbaa !24
  br label %bb11
bb11:
  %t56 = load i64, ptr %l32, !tbaa !24
  store i64 %t56, ptr %l29, !tbaa !24
  br label %bb12
bb12:
  %t57 = load i64, ptr %l29, !tbaa !24
  store i64 %t57, ptr %l8, !tbaa !24
  store i64 0, ptr %l9, !tbaa !24
  br label %bb13
bb13:
  %t58 = load i64, ptr %l9, !tbaa !24
  %t59 = load i64, ptr %l8, !tbaa !24
  %t62 = icmp slt i64 %t58, %t59
  %t64 = xor i1 %t62, true
  br i1 %t64, label %bb14, label %bb15
bb14:
  br label %bb26
bb15:
  br label %bb16
bb16:
  %t66 = load i64, ptr %l5, !tbaa !24
  %t67 = load i64, ptr %l9, !tbaa !24
  %t68 = load i64, ptr %l7, !tbaa !24
  %t71 = mul i64 %t67, %t68
  %t74 = add i64 %t66, %t71
  store i64 %t74, ptr %l10, !tbaa !24
  %t76 = load ptr, ptr %l0, !tbaa !29
  store ptr %t76, ptr %l50, !tbaa !29
  %t77 = load ptr, ptr %l0, !tbaa !29
  %t79 = getelementptr %"compiler/generic:Program", ptr %t77, i32 0, i32 2
  %t80 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t80, ptr %l53, !tbaa !27
  %t81 = load i64, ptr %l10, !tbaa !24
  %t83 = getelementptr { i64, ptr }, ptr %l53, i32 0, i32 1
  %t84 = load ptr, ptr %t83, !tbaa !27
  %t85 = getelementptr i32, ptr %t84, i64 %t81
  %t86 = load i32, ptr %t85, !tbaa !33
  %t89 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrOf(ptr %v0, ptr %t79, i32 %t86)
  store i32 %t89, ptr %l56
  br label %bb17
bb17:
  %t90 = load ptr, ptr %l50, !tbaa !29
  %t91 = load i32, ptr %l56, !tbaa !23
  %t92 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2ePayloadOf(ptr %v0, ptr %t90, i32 %t91)
  store i32 %t92, ptr %l57
  br label %bb18
bb18:
  %t93 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t94 = load i32, ptr %l57, !tbaa !23
  %t96 = icmp eq i32 %t94, %t93
  br i1 %t96, label %bb19, label %bb20
bb19:
  br label %bb25
bb20:
  br label %bb21
bb21:
  %t98 = load i64, ptr %l4, !tbaa !24
  %t100 = add i64 %t98, 1
  store i64 %t100, ptr %l4, !tbaa !24
  %t102 = load i64, ptr %l10, !tbaa !24
  %t106 = icmp eq i64 %t102, %a2
  br i1 %t106, label %bb22, label %bb23
bb22:
  %t108 = load i64, ptr %l4, !tbaa !24
  store i64 %t108, ptr %rv
  br label %ret
bb23:
  br label %bb24
bb24:
  br label %bb25
bb25:
  %t110 = load i64, ptr %l9, !tbaa !24
  %t112 = add i64 %t110, 1
  store i64 %t112, ptr %l9, !tbaa !24
  br label %bb13
bb26:
  store i64 0, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eSelfType(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca i64
  %l3 = alloca i64
  %l4 = alloca { i64, ptr }
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %l14 = alloca i64
  %l18 = alloca i64
  %l19 = alloca i64
  %l27 = alloca i64
  %l30 = alloca i64
  %l48 = alloca i64
  %l52 = alloca i32
  %l56 = alloca ptr
  %l57 = alloca i32
  %l61 = alloca i32
  %l62 = alloca i32
  %s0 = alloca %olang.scope
  %rv = alloca i32
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load i32, ptr %l1, !tbaa !23
  call void @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2edeclVars(ptr %v0, ptr %t1, i32 %t2)
  br label %bb1
bb1:
  %t5 = load i32, ptr %l1, !tbaa !23
  %t7 = call i64 @compiler_2fgeneric_2eDeclOwner(i32 %t5)
  store i64 %t7, ptr %l14
  br label %bb2
bb2:
  %t8 = load i64, ptr %l14, !tbaa !24
  store i64 %t8, ptr %l2, !tbaa !24
  %t9 = load ptr, ptr %l0, !tbaa !29
  %t11 = getelementptr %"compiler/generic:Program", ptr %t9, i32 0, i32 2
  %t12 = load i32, ptr %l1, !tbaa !23
  %t15 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclParams(ptr %v0, ptr %t11, i32 %t12)
  store i64 %t15, ptr %l18
  br label %bb3
bb3:
  %t16 = load i64, ptr %l18, !tbaa !24
  store i64 %t16, ptr %l3, !tbaa !24
  %t17 = load i64, ptr %l3, !tbaa !24
  store i64 %t17, ptr %l19, !tbaa !24
  %t18 = load i64, ptr %l19, !tbaa !24
  %t19 = icmp sge i64 %t18, 0
  br i1 %t19, label %bb4, label %bb5
bb4:
  %t21 = load i64, ptr %l19, !tbaa !24
  %t22 = icmp sle i64 %t21, 2305843009213693951
  br i1 %t22, label %bb6, label %bb7
bb5:
  call void @__olang_check_failed(ptr @olang_loc_8ed0ba4cde2484d3_77197335ab78eca7)
  unreachable
bb6:
  %t24 = load i64, ptr %l19, !tbaa !24
  %t25 = mul i64 %t24, 4
  %t26 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t25)
  %t27 = insertvalue { i64, ptr } undef, i64 %t24, 0
  %t28 = insertvalue { i64, ptr } %t27, ptr %t26, 1
  store { i64, ptr } %t28, ptr %l4, !tbaa !27
  store i64 0, ptr %l5, !tbaa !24
  %t30 = load i64, ptr %l3, !tbaa !24
  store i64 %t30, ptr %l6, !tbaa !24
  store i64 1, ptr %l7, !tbaa !24
  %t32 = load i64, ptr %l6, !tbaa !24
  %t33 = load i64, ptr %l5, !tbaa !24
  %t36 = icmp sgt i64 %t32, %t33
  br i1 %t36, label %bb8, label %bb9
bb7:
  call void @__olang_check_failed(ptr @olang_loc_8ed0ba4cde2484d3_77197335ab78eca7)
  unreachable
bb8:
  %t38 = load i64, ptr %l7, !tbaa !24
  %t40 = icmp sgt i64 %t38, 0
  br i1 %t40, label %bb10, label %bb11
bb9:
  store i64 0, ptr %l27, !tbaa !24
  br label %bb13
bb10:
  %t42 = load i64, ptr %l6, !tbaa !24
  %t43 = load i64, ptr %l5, !tbaa !24
  %t46 = sub i64 %t42, %t43
  %t47 = load i64, ptr %l7, !tbaa !24
  %t50 = add i64 %t46, %t47
  %t52 = sub i64 %t50, 1
  %t53 = load i64, ptr %l7, !tbaa !24
  %t56 = sdiv i64 %t52, %t53
  store i64 %t56, ptr %l30, !tbaa !24
  br label %bb12
bb11:
  store i64 0, ptr %l30, !tbaa !24
  br label %bb12
bb12:
  %t58 = load i64, ptr %l30, !tbaa !24
  store i64 %t58, ptr %l27, !tbaa !24
  br label %bb13
bb13:
  %t59 = load i64, ptr %l27, !tbaa !24
  store i64 %t59, ptr %l8, !tbaa !24
  store i64 0, ptr %l9, !tbaa !24
  br label %bb14
bb14:
  %t60 = load i64, ptr %l9, !tbaa !24
  %t61 = load i64, ptr %l8, !tbaa !24
  %t64 = icmp slt i64 %t60, %t61
  %t66 = xor i1 %t64, true
  br i1 %t66, label %bb15, label %bb16
bb15:
  br label %bb20
bb16:
  br label %bb17
bb17:
  %t68 = load i64, ptr %l5, !tbaa !24
  %t69 = load i64, ptr %l9, !tbaa !24
  %t70 = load i64, ptr %l7, !tbaa !24
  %t73 = mul i64 %t69, %t70
  %t76 = add i64 %t68, %t73
  store i64 %t76, ptr %l10, !tbaa !24
  %t78 = load i64, ptr %l10, !tbaa !24
  store i64 %t78, ptr %l48, !tbaa !24
  %t79 = load ptr, ptr %l0, !tbaa !29
  %t80 = load i64, ptr %l2, !tbaa !24
  %t81 = load i64, ptr %l10, !tbaa !24
  %t85 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eVarArg(ptr %v0, ptr %t79, i64 %t80, i64 %t81)
  store i32 %t85, ptr %l52
  br label %bb18
bb18:
  %t86 = load i32, ptr %l52, !tbaa !23
  %t87 = load i64, ptr %l48, !tbaa !24
  %t88 = getelementptr { i64, ptr }, ptr %l4, i32 0, i32 1
  %t89 = load ptr, ptr %t88, !tbaa !27
  %t90 = getelementptr i32, ptr %t89, i64 %t87
  store i32 %t86, ptr %t90, !tbaa !33
  br label %bb19
bb19:
  %t91 = load i64, ptr %l9, !tbaa !24
  %t93 = add i64 %t91, 1
  store i64 %t93, ptr %l9, !tbaa !24
  br label %bb14
bb20:
  %t95 = load ptr, ptr %l0, !tbaa !29
  %t97 = getelementptr %"compiler/generic:Program", ptr %t95, i32 0, i32 2
  store ptr %t97, ptr %l56, !tbaa !29
  %t98 = load i32, ptr %l1, !tbaa !23
  store i32 %t98, ptr %l57, !tbaa !23
  %t99 = load ptr, ptr %l0, !tbaa !29
  %t101 = getelementptr %"compiler/generic:Program", ptr %t99, i32 0, i32 2
  %t102 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t105 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eList(ptr %v0, ptr %s0, ptr %t101, { i64, ptr } %t102)
  store i32 %t105, ptr %l61
  br label %bb21
bb21:
  %t106 = load ptr, ptr %l56, !tbaa !29
  %t107 = load i32, ptr %l57, !tbaa !23
  %t108 = load i32, ptr %l61, !tbaa !23
  %t109 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eNamed(ptr %v0, ptr %t106, i32 %t107, i32 %t108)
  store i32 %t109, ptr %l62
  br label %bb22
bb22:
  call void @__olang_scope_close(ptr %s0)
  %t110 = load i32, ptr %l62, !tbaa !23
  store i32 %t110, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local { i64, ptr } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eTypeMethods(ptr %v0, ptr %v1, ptr %a0, i32 %a1, i64 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l3 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca %"compiler/generic:fnRow"
  %l13 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l16 = alloca i64
  %l20 = alloca { i64, ptr }
  %l21 = alloca { i64, ptr }
  %l22 = alloca i64
  %l23 = alloca { i64, ptr }
  %l26 = alloca i64
  %l30 = alloca i64
  %l33 = alloca i64
  %l54 = alloca %"compiler/generic:fnRow"
  %l58 = alloca i1
  %l60 = alloca i1
  %l65 = alloca ptr
  %l66 = alloca i64
  %l76 = alloca i64
  %l79 = alloca i1
  %l83 = alloca i1
  %l88 = alloca i1
  %l92 = alloca { i64, ptr }
  %l93 = alloca { i64, ptr }
  %l95 = alloca i1
  %l102 = alloca { i64, ptr }
  %l103 = alloca { i64, ptr }
  %l104 = alloca i64
  %l105 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %s1 = alloca %olang.scope
  %s3 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eallFns(ptr %v0, ptr %t1)
  br label %bb1
bb1:
  %t3 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %s0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t3, ptr %l13
  br label %bb2
bb2:
  %t4 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l13
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t4, ptr %l3
  %t5 = load ptr, ptr %l0, !tbaa !29
  %t6 = load i32, ptr %l1, !tbaa !23
  %t9 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2etypeKey(ptr %v0, ptr %t5, i32 %t6)
  store i64 %t9, ptr %l16
  br label %bb3
bb3:
  %t10 = load i64, ptr %l16, !tbaa !24
  store i64 %t10, ptr %l4, !tbaa !24
  %t11 = load i64, ptr %l4, !tbaa !24
  %t13 = icmp slt i64 %t11, 0
  br i1 %t13, label %bb4, label %bb5
bb4:
  store %olang.scope zeroinitializer, ptr %s1
  %t16 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eToArray_3cI64_3e(ptr %s0, ptr %s1, ptr %l3)
  store { i64, ptr } %t16, ptr %l20
  br label %bb6
bb5:
  br label %bb7
bb6:
  %t17 = load { i64, ptr }, ptr %l20, !tbaa !27
  store { i64, ptr } %t17, ptr %l21, !tbaa !27
  %t18 = load { i64, ptr }, ptr %l21, !tbaa !27
  %t19 = extractvalue { i64, ptr } %t18, 0
  store i64 %t19, ptr %l22, !tbaa !24
  %t20 = load i64, ptr %l22, !tbaa !24
  %t21 = mul i64 %t20, 8
  %t22 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t21)
  %t23 = insertvalue { i64, ptr } undef, i64 %t20, 0
  %t24 = insertvalue { i64, ptr } %t23, ptr %t22, 1
  store { i64, ptr } %t24, ptr %l23, !tbaa !27
  %t25 = getelementptr { i64, ptr }, ptr %l23, i32 0, i32 1
  %t26 = load ptr, ptr %t25, !tbaa !27
  %t27 = getelementptr { i64, ptr }, ptr %l21, i32 0, i32 1
  %t28 = load ptr, ptr %t27, !tbaa !27
  %t29 = load i64, ptr %l22, !tbaa !24
  %t30 = mul i64 %t29, 8
  call void @llvm.memmove.p0.p0.i64(ptr %t26, ptr %t28, i64 %t30, i1 false)
  %t31 = load { i64, ptr }, ptr %l23, !tbaa !27
  store { i64, ptr } %t31, ptr %l21, !tbaa !27
  call void @__olang_scope_close(ptr %s1)
  call void @__olang_scope_close(ptr %s0)
  %t32 = load { i64, ptr }, ptr %l21, !tbaa !27
  store { i64, ptr } %t32, ptr %rv
  br label %ret
bb7:
  store i64 0, ptr %l5, !tbaa !24
  %t33 = load ptr, ptr %l0, !tbaa !29
  %t35 = getelementptr %"compiler/generic:Program", ptr %t33, i32 0, i32 29
  %t37 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fgeneric_3afnRow_3e_2eLen_3ccompiler_2fgeneric_3afnRow_3e(ptr %v0, ptr %t35)
  store i64 %t37, ptr %l26
  br label %bb8
bb8:
  %t38 = load i64, ptr %l26, !tbaa !24
  store i64 %t38, ptr %l6, !tbaa !24
  store i64 1, ptr %l7, !tbaa !24
  %t39 = load i64, ptr %l6, !tbaa !24
  %t40 = load i64, ptr %l5, !tbaa !24
  %t43 = icmp sgt i64 %t39, %t40
  br i1 %t43, label %bb9, label %bb10
bb9:
  %t45 = load i64, ptr %l7, !tbaa !24
  %t47 = icmp sgt i64 %t45, 0
  br i1 %t47, label %bb11, label %bb12
bb10:
  store i64 0, ptr %l30, !tbaa !24
  br label %bb14
bb11:
  %t49 = load i64, ptr %l6, !tbaa !24
  %t50 = load i64, ptr %l5, !tbaa !24
  %t53 = sub i64 %t49, %t50
  %t54 = load i64, ptr %l7, !tbaa !24
  %t57 = add i64 %t53, %t54
  %t59 = sub i64 %t57, 1
  %t60 = load i64, ptr %l7, !tbaa !24
  %t63 = sdiv i64 %t59, %t60
  store i64 %t63, ptr %l33, !tbaa !24
  br label %bb13
bb12:
  store i64 0, ptr %l33, !tbaa !24
  br label %bb13
bb13:
  %t65 = load i64, ptr %l33, !tbaa !24
  store i64 %t65, ptr %l30, !tbaa !24
  br label %bb14
bb14:
  %t66 = load i64, ptr %l30, !tbaa !24
  store i64 %t66, ptr %l8, !tbaa !24
  store i64 0, ptr %l9, !tbaa !24
  br label %bb15
bb15:
  store %olang.scope zeroinitializer, ptr %s3
  %t67 = load i64, ptr %l9, !tbaa !24
  %t68 = load i64, ptr %l8, !tbaa !24
  %t71 = icmp slt i64 %t67, %t68
  %t73 = xor i1 %t71, true
  br i1 %t73, label %bb16, label %bb17
bb16:
  call void @__olang_scope_close(ptr %s3)
  br label %bb50
bb17:
  br label %bb18
bb18:
  %t75 = load i64, ptr %l5, !tbaa !24
  %t76 = load i64, ptr %l9, !tbaa !24
  %t77 = load i64, ptr %l7, !tbaa !24
  %t80 = mul i64 %t76, %t77
  %t83 = add i64 %t75, %t80
  store i64 %t83, ptr %l10, !tbaa !24
  %t85 = load ptr, ptr %l0, !tbaa !29
  %t87 = getelementptr %"compiler/generic:Program", ptr %t85, i32 0, i32 29
  %t88 = load i64, ptr %l10, !tbaa !24
  %t91 = call %"compiler/generic:fnRow" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fgeneric_3afnRow_3e_2eAt_3ccompiler_2fgeneric_3afnRow_3e(ptr %v0, ptr %v0, ptr %t87, i64 %t88)
  store %"compiler/generic:fnRow" %t91, ptr %l54
  br label %bb19
bb19:
  %t92 = load %"compiler/generic:fnRow", ptr %l54
  store %"compiler/generic:fnRow" %t92, ptr %l11
  %t93 = getelementptr %"compiler/generic:fnRow", ptr %l11, i32 0, i32 1
  %t94 = load ptr, ptr %t93, !tbaa !29
  %t96 = getelementptr %"compiler/ast:Func", ptr %t94, i32 0, i32 1
  %t97 = load ptr, ptr %t96, !tbaa !29
  %t99 = icmp eq ptr %t97, null
  br i1 %t99, label %bb20, label %bb21
bb20:
  store i1 true, ptr %l58, !tbaa !21
  br label %bb22
bb21:
  %t101 = getelementptr %"compiler/generic:fnRow", ptr %l11, i32 0, i32 2
  %t102 = load i1, ptr %t101, !tbaa !21
  store i1 %t102, ptr %l58, !tbaa !21
  br label %bb22
bb22:
  %t104 = load i1, ptr %l58, !tbaa !21
  br i1 %t104, label %bb23, label %bb24
bb23:
  store i1 true, ptr %l60, !tbaa !21
  br label %bb25
bb24:
  %t105 = getelementptr %"compiler/generic:fnRow", ptr %l11, i32 0, i32 1
  %t106 = load ptr, ptr %t105, !tbaa !29
  %t108 = getelementptr %"compiler/ast:Func", ptr %t106, i32 0, i32 5
  %t109 = load { i64, ptr }, ptr %t108, !tbaa !27
  %t111 = extractvalue { i64, ptr } %t109, 0
  %t113 = icmp sgt i64 %t111, 0
  store i1 %t113, ptr %l60, !tbaa !21
  br label %bb25
bb25:
  %t115 = load i1, ptr %l60, !tbaa !21
  br i1 %t115, label %bb26, label %bb27
bb26:
  call void @__olang_scope_close(ptr %s3)
  br label %bb49
bb27:
  br label %bb28
bb28:
  %t116 = load ptr, ptr %l0, !tbaa !29
  store ptr %t116, ptr %l65, !tbaa !29
  %t117 = getelementptr %"compiler/generic:fnRow", ptr %l11, i32 0, i32 0
  %t118 = load i64, ptr %t117, !tbaa !24
  store i64 %t118, ptr %l66, !tbaa !24
  %t119 = getelementptr %"compiler/generic:fnRow", ptr %l11, i32 0, i32 1
  %t120 = load ptr, ptr %t119, !tbaa !29
  %t122 = getelementptr %"compiler/ast:Func", ptr %t120, i32 0, i32 1
  %t123 = load ptr, ptr %t122, !tbaa !29
  %t125 = icmp eq ptr %t123, null
  br i1 %t125, label %bb29, label %bb30
bb29:
  call void @__olang_check_failed(ptr @olang_loc_8878e002d59779fd_75c347076df58361)
  unreachable
bb30:
  br label %bb31
bb31:
  %t127 = getelementptr %"compiler/generic:fnRow", ptr %l11, i32 0, i32 1
  %t128 = load ptr, ptr %t127, !tbaa !29
  %t130 = getelementptr %"compiler/ast:Func", ptr %t128, i32 0, i32 1
  %t131 = load ptr, ptr %t130, !tbaa !29
  %t134 = getelementptr %"compiler/ast:Param", ptr %t131, i32 0, i32 2
  %t135 = load ptr, ptr %t134, !tbaa !29
  %t136 = getelementptr %"compiler/generic:fnRow", ptr %l11, i32 0, i32 1
  %t137 = load ptr, ptr %t136, !tbaa !29
  %t139 = getelementptr %"compiler/ast:Func", ptr %t137, i32 0, i32 5
  %t140 = load { i64, ptr }, ptr %t139, !tbaa !27
  %t141 = load ptr, ptr %l65, !tbaa !29
  %t142 = load i64, ptr %l66, !tbaa !24
  %t145 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2erecvKey(ptr %v0, ptr %v0, ptr %v0, ptr %t141, i64 %t142, ptr %t135, { i64, ptr } %t140)
  store i64 %t145, ptr %l76
  br label %bb32
bb32:
  %t146 = load i64, ptr %l4, !tbaa !24
  %t147 = load i64, ptr %l76, !tbaa !24
  %t149 = icmp ne i64 %t147, %t146
  br i1 %t149, label %bb33, label %bb34
bb33:
  store i1 true, ptr %l79, !tbaa !21
  br label %bb36
bb34:
  %t151 = load ptr, ptr %l0, !tbaa !29
  %t152 = load i64, ptr %l10, !tbaa !24
  %t153 = load i32, ptr %l1, !tbaa !23
  %t157 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2erecvApplies(ptr %v0, ptr %t151, i64 %t152, i32 %t153)
  store i1 %t157, ptr %l83
  br label %bb35
bb35:
  %t158 = load i1, ptr %l83, !tbaa !21
  %t159 = xor i1 %t158, true
  store i1 %t159, ptr %l79, !tbaa !21
  br label %bb36
bb36:
  %t161 = load i1, ptr %l79, !tbaa !21
  br i1 %t161, label %bb37, label %bb38
bb37:
  call void @__olang_scope_close(ptr %s3)
  br label %bb49
bb38:
  br label %bb39
bb39:
  %t162 = getelementptr %"compiler/generic:fnRow", ptr %l11, i32 0, i32 0
  %t163 = load i64, ptr %t162, !tbaa !24
  %t167 = icmp ne i64 %t163, %a2
  br i1 %t167, label %bb40, label %bb41
bb40:
  %t169 = load ptr, ptr %l0, !tbaa !29
  %t170 = getelementptr %"compiler/generic:fnRow", ptr %l11, i32 0, i32 1
  %t171 = load ptr, ptr %t170, !tbaa !29
  %t173 = getelementptr %"compiler/ast:Func", ptr %t171, i32 0, i32 2
  %t174 = load i32, ptr %t173, !tbaa !23
  %t177 = call { i64, ptr } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2etext(ptr %v0, ptr %s3, ptr %t169, i32 %t174)
  store { i64, ptr } %t177, ptr %l92
  br label %bb42
bb41:
  store i1 false, ptr %l88, !tbaa !21
  br label %bb44
bb42:
  %t178 = load { i64, ptr }, ptr %l92, !tbaa !27
  store { i64, ptr } %t178, ptr %l93, !tbaa !27
  %t179 = getelementptr { i64, ptr }, ptr %l93, i32 0, i32 1
  %t180 = load ptr, ptr %t179, !tbaa !27
  %t181 = getelementptr i8, ptr %t180, i64 0
  %t182 = load i8, ptr %t181, !tbaa !32
  %t184 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aChar_2eIsUpper(i8 %t182)
  store i1 %t184, ptr %l95
  br label %bb43
bb43:
  %t185 = load i1, ptr %l95, !tbaa !21
  %t186 = xor i1 %t185, true
  store i1 %t186, ptr %l88, !tbaa !21
  br label %bb44
bb44:
  %t188 = load i1, ptr %l88, !tbaa !21
  br i1 %t188, label %bb45, label %bb46
bb45:
  call void @__olang_scope_close(ptr %s3)
  br label %bb49
bb46:
  br label %bb47
bb47:
  %t189 = load i64, ptr %l10, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %s0, ptr %l3, i64 %t189)
  br label %bb48
bb48:
  call void @__olang_scope_close(ptr %s3)
  br label %bb49
bb49:
  %t192 = load i64, ptr %l9, !tbaa !24
  %t194 = add i64 %t192, 1
  store i64 %t194, ptr %l9, !tbaa !24
  br label %bb15
bb50:
  %t197 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eToArray_3cI64_3e(ptr %s0, ptr %s0, ptr %l3)
  store { i64, ptr } %t197, ptr %l102
  br label %bb51
bb51:
  %t198 = load { i64, ptr }, ptr %l102, !tbaa !27
  store { i64, ptr } %t198, ptr %l103, !tbaa !27
  %t199 = load { i64, ptr }, ptr %l103, !tbaa !27
  %t200 = extractvalue { i64, ptr } %t199, 0
  store i64 %t200, ptr %l104, !tbaa !24
  %t201 = load i64, ptr %l104, !tbaa !24
  %t202 = mul i64 %t201, 8
  %t203 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t202)
  %t204 = insertvalue { i64, ptr } undef, i64 %t201, 0
  %t205 = insertvalue { i64, ptr } %t204, ptr %t203, 1
  store { i64, ptr } %t205, ptr %l105, !tbaa !27
  %t206 = getelementptr { i64, ptr }, ptr %l105, i32 0, i32 1
  %t207 = load ptr, ptr %t206, !tbaa !27
  %t208 = getelementptr { i64, ptr }, ptr %l103, i32 0, i32 1
  %t209 = load ptr, ptr %t208, !tbaa !27
  %t210 = load i64, ptr %l104, !tbaa !24
  %t211 = mul i64 %t210, 8
  call void @llvm.memmove.p0.p0.i64(ptr %t207, ptr %t209, i64 %t211, i1 false)
  %t212 = load { i64, ptr }, ptr %l105, !tbaa !27
  store { i64, ptr } %t212, ptr %l103, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  %t213 = load { i64, ptr }, ptr %l103, !tbaa !27
  store { i64, ptr } %t213, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local %"compiler/generic:Origin" @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eTypeOrigin(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l2 = alloca %"compiler/generic:Origin"
  %l6 = alloca %"compiler/generic:Origin"
  %l7 = alloca i32
  %rv = alloca %"compiler/generic:Origin"
  br label %start
start:
  br label %bb0
bb0:
  %t3 = getelementptr %"compiler/generic:Program", ptr %a0, i32 0, i32 52
  %t7 = call { i32, %"compiler/generic:Origin" } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId_2c_20compile_Hb8bca524fd2b8cbf323e30d364740da1(ptr %v0, ptr %t3, i32 %a1)
  %t8 = extractvalue { i32, %"compiler/generic:Origin" } %t7, 1
  %t9 = extractvalue { i32, %"compiler/generic:Origin" } %t7, 0
  store i32 %t9, ptr %l7
  %t10 = icmp ne i32 %t9, 0
  br i1 %t10, label %bb2, label %ok.11, !prof !99
ok.11:
  store %"compiler/generic:Origin" %t8, ptr %l6
  br label %bb1
bb1:
  %t12 = load %"compiler/generic:Origin", ptr %l6
  store %"compiler/generic:Origin" %t12, ptr %l2
  br label %bb4
bb2:
  br label %bb3
bb3:
  %t13 = load %"compiler/generic:Origin", ptr @G_2ecompiler_2fgeneric_2eNoOrigin
  store %"compiler/generic:Origin" %t13, ptr %l2
  br label %bb4
bb4:
  %t15 = load %"compiler/generic:Origin", ptr %l2
  store %"compiler/generic:Origin" %t15, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/generic:Origin", ptr %rv
  ret %"compiler/generic:Origin" %rr
}

define dso_local void @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eaddBuilder(ptr %v0, ptr %v1, ptr %a0, i64 %a1, ptr %a2, i64 %a3) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0"
  %l6 = alloca i64
  %l13 = alloca i64
  %l20 = alloca %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0"
  %l21 = alloca i64
  %l25 = alloca i64
  %l26 = alloca i32
  %l36 = alloca i1
  %l38 = alloca i64
  %l42 = alloca i64
  %l43 = alloca i32
  %s0 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store ptr %a2, ptr %l2
  store i64 %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = load ptr, ptr %l2, !tbaa !29
  %t5 = getelementptr %"compiler/ast:Func", ptr %t3, i32 0, i32 9
  %t6 = load ptr, ptr %t5, !tbaa !29
  %t7 = load ptr, ptr %l2, !tbaa !29
  %t9 = getelementptr %"compiler/ast:Func", ptr %t7, i32 0, i32 5
  %t10 = load { i64, ptr }, ptr %t9, !tbaa !27
  %t15 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2erecvKey(ptr %v0, ptr %v1, ptr %v1, ptr %t1, i64 %a1, ptr %t6, { i64, ptr } %t10)
  store i64 %t15, ptr %l13
  br label %bb1
bb1:
  %t16 = load i64, ptr %l13, !tbaa !24
  store i64 %t16, ptr %l4, !tbaa !24
  %t17 = load i64, ptr %l4, !tbaa !24
  %t19 = icmp slt i64 %t17, 0
  br i1 %t19, label %bb2, label %bb3
bb2:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb3:
  br label %bb4
bb4:
  %t21 = load i64, ptr %l4, !tbaa !24
  %t22 = load ptr, ptr %l2, !tbaa !29
  %t24 = getelementptr %"compiler/ast:Func", ptr %t22, i32 0, i32 10
  %t25 = load i32, ptr %t24, !tbaa !23
  %t27 = sext i32 %t25 to i64
  %t30 = call %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" @std_2fpair_3aPair_3cI64_2c_20I64_3e_2ector(ptr %s0, i64 %t21, i64 %t27)
  store %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t30, ptr %l20
  br label %bb5
bb5:
  %t31 = load %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %l20
  store %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t31, ptr %l5
  %t32 = load ptr, ptr %l0, !tbaa !29
  %t34 = getelementptr %"compiler/generic:Program", ptr %t32, i32 0, i32 40
  %t35 = load %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %l5
  %t38 = call { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H5696e1a008d256bf9453cde2b49c6c45(ptr %v0, ptr %t34, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t35)
  %t39 = extractvalue { i32, i64 } %t38, 1
  %t40 = extractvalue { i32, i64 } %t38, 0
  store i32 %t40, ptr %l26
  %t41 = icmp ne i32 %t40, 0
  br i1 %t41, label %bb7, label %ok.42, !prof !99
ok.42:
  store i64 %t39, ptr %l25
  br label %bb6
bb6:
  %t43 = load i64, ptr %l25, !tbaa !24
  store i64 %t43, ptr %l21, !tbaa !24
  br label %bb9
bb7:
  br label %bb8
bb8:
  store i64 -1, ptr %l21, !tbaa !24
  br label %bb9
bb9:
  %t44 = load i64, ptr %l21, !tbaa !24
  store i64 %t44, ptr %l6, !tbaa !24
  %t45 = load i64, ptr %l6, !tbaa !24
  %t47 = icmp slt i64 %t45, 0
  br i1 %t47, label %bb10, label %bb11
bb10:
  %t49 = load ptr, ptr %l0, !tbaa !29
  %t51 = getelementptr %"compiler/generic:Program", ptr %t49, i32 0, i32 40
  %t52 = load %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %l5
  %t53 = load i64, ptr %l3, !tbaa !24
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H31314c4e7281f5029d6d8eb3044cef10(ptr %v0, ptr %t51, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t52, i64 %t53)
  br label %bb12
bb11:
  br label %bb13
bb12:
  br label %bb25
bb13:
  %t57 = load ptr, ptr %l0, !tbaa !29
  %t59 = getelementptr %"compiler/generic:Program", ptr %t57, i32 0, i32 37
  %t60 = load i64, ptr %l6, !tbaa !24
  %t63 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2eHas_3cI64_2c_20I64_3e(ptr %v0, ptr %t59, i64 %t60)
  store i1 %t63, ptr %l36
  br label %bb14
bb14:
  %t64 = load i1, ptr %l36, !tbaa !21
  %t65 = xor i1 %t64, true
  br i1 %t65, label %bb15, label %bb16
bb15:
  br label %bb23
bb16:
  br label %bb17
bb17:
  %t67 = load ptr, ptr %l0, !tbaa !29
  %t69 = getelementptr %"compiler/generic:Program", ptr %t67, i32 0, i32 37
  %t70 = load i64, ptr %l6, !tbaa !24
  %t73 = call { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2eGet_3cI64_2c_20I64_3e(ptr %v0, ptr %t69, i64 %t70)
  %t74 = extractvalue { i32, i64 } %t73, 1
  %t75 = extractvalue { i32, i64 } %t73, 0
  store i32 %t75, ptr %l43
  %t76 = icmp ne i32 %t75, 0
  br i1 %t76, label %bb19, label %ok.77, !prof !99
ok.77:
  store i64 %t74, ptr %l42
  br label %bb18
bb18:
  %t78 = load i64, ptr %l42, !tbaa !24
  store i64 %t78, ptr %l38, !tbaa !24
  br label %bb21
bb19:
  br label %bb20
bb20:
  store i64 -1, ptr %l38, !tbaa !24
  br label %bb21
bb21:
  %t79 = load i64, ptr %l38, !tbaa !24
  store i64 %t79, ptr %l6, !tbaa !24
  br label %bb22
bb22:
  br label %bb13
bb23:
  %t80 = load ptr, ptr %l0, !tbaa !29
  %t82 = getelementptr %"compiler/generic:Program", ptr %t80, i32 0, i32 37
  %t83 = load i64, ptr %l6, !tbaa !24
  %t84 = load i64, ptr %l3, !tbaa !24
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2ePut_3cI64_2c_20I64_3e(ptr %v0, ptr %t82, i64 %t83, i64 %t84)
  br label %bb24
bb24:
  br label %bb25
bb25:
  %t88 = load i64, ptr %l4, !tbaa !24
  %t90 = ashr i64 %t88, 40
  %t92 = icmp eq i64 %t90, 4
  br i1 %t92, label %bb26, label %bb27
bb26:
  %t94 = load ptr, ptr %l0, !tbaa !29
  %t96 = getelementptr %"compiler/generic:Program", ptr %t94, i32 0, i32 41
  %t97 = load i64, ptr %l3, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %t96, i64 %t97)
  br label %bb28
bb27:
  br label %bb30
bb28:
  %t100 = load ptr, ptr %l0, !tbaa !29
  %t102 = getelementptr %"compiler/generic:Program", ptr %t100, i32 0, i32 42
  %t103 = load i64, ptr %l4, !tbaa !24
  %t104 = shl i64 1, 40
  %t106 = sub i64 %t104, 1
  %t109 = and i64 %t103, %t106
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %t102, i64 %t109)
  br label %bb29
bb29:
  br label %bb30
bb30:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2ealiasStep(ptr %v0, ptr %a0, i64 %a1, i32 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l3 = alloca ptr
  %l4 = alloca i64
  %l5 = alloca %"compiler/load:Import"
  %l10 = alloca ptr
  %l13 = alloca i64
  %l15 = alloca i64
  %l20 = alloca %"compiler/load:Import"
  %l23 = alloca i1
  %l28 = alloca i32
  %rv = alloca i64
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/generic:Program", ptr %t1, i32 0, i32 0
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t6 = getelementptr %"compiler/load:Loader", ptr %t4, i32 0, i32 10
  %t10 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H7bcf2aeb09afa796f4333e6ec8c3f63f(ptr %v0, ptr %v0, ptr %t6, i64 %a1)
  store ptr %t10, ptr %l10
  br label %bb1
bb1:
  %t11 = load ptr, ptr %l10, !tbaa !29
  %t13 = getelementptr %"compiler/load:Module", ptr %t11, i32 0, i32 11
  store ptr %t13, ptr %l3, !tbaa !29
  store i64 0, ptr %l4, !tbaa !24
  br label %bb2
bb2:
  %t15 = load i64, ptr %l4, !tbaa !24
  store i64 %t15, ptr %l13, !tbaa !24
  %t16 = load ptr, ptr %l3, !tbaa !29
  %t18 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fload_3aImport_3e_2eLen_3ccompiler_2fload_3aImport_3e(ptr %v0, ptr %t16)
  store i64 %t18, ptr %l15
  br label %bb3
bb3:
  %t19 = load i64, ptr %l13, !tbaa !24
  %t20 = load i64, ptr %l15, !tbaa !24
  %t21 = icmp slt i64 %t19, %t20
  %t23 = xor i1 %t21, true
  br i1 %t23, label %bb4, label %bb5
bb4:
  br label %bb16
bb5:
  br label %bb6
bb6:
  %t25 = load ptr, ptr %l3, !tbaa !29
  %t26 = load i64, ptr %l4, !tbaa !24
  %t29 = call %"compiler/load:Import" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fload_3aImport_3e_2eAt_3ccompiler_2fload_3aImport_3e(ptr %v0, ptr %v0, ptr %t25, i64 %t26)
  store %"compiler/load:Import" %t29, ptr %l20
  br label %bb7
bb7:
  %t30 = load %"compiler/load:Import", ptr %l20
  store %"compiler/load:Import" %t30, ptr %l5
  %t31 = getelementptr %"compiler/load:Import", ptr %l5, i32 0, i32 5
  %t32 = load i64, ptr %t31, !tbaa !24
  %t34 = icmp sge i64 %t32, 0
  br i1 %t34, label %bb8, label %bb9
bb8:
  %t36 = load ptr, ptr %l0, !tbaa !29
  %t38 = getelementptr %"compiler/generic:Program", ptr %t36, i32 0, i32 0
  %t39 = load ptr, ptr %t38, !tbaa !29
  %t41 = getelementptr %"compiler/load:Loader", ptr %t39, i32 0, i32 3
  %t42 = load ptr, ptr %t41, !tbaa !29
  %t43 = getelementptr %"compiler/load:Import", ptr %l5, i32 0, i32 2
  %t44 = load { i64, ptr }, ptr %t43, !tbaa !27
  %t47 = call i32 @compiler_2fsource_2ecompiler_2fsource_3aNames_2eIntern(ptr %v0, ptr %v0, ptr %t42, { i64, ptr } %t44)
  store i32 %t47, ptr %l28
  br label %bb10
bb9:
  store i1 false, ptr %l23, !tbaa !21
  br label %bb11
bb10:
  %t49 = load i32, ptr %l28, !tbaa !23
  %t51 = icmp eq i32 %t49, %a2
  store i1 %t51, ptr %l23, !tbaa !21
  br label %bb11
bb11:
  %t53 = load i1, ptr %l23, !tbaa !21
  br i1 %t53, label %bb12, label %bb13
bb12:
  %t54 = getelementptr %"compiler/load:Import", ptr %l5, i32 0, i32 5
  %t55 = load i64, ptr %t54, !tbaa !24
  store i64 %t55, ptr %rv
  br label %ret
bb13:
  br label %bb14
bb14:
  br label %bb15
bb15:
  %t57 = load i64, ptr %l4, !tbaa !24
  %t59 = add i64 %t57, 1
  store i64 %t59, ptr %l4, !tbaa !24
  br label %bb2
bb16:
  store i64 -1, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local void @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eanyCovers(ptr %v0, ptr %v1, ptr %a0, i32 %a1, ptr %a2, i64 %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca ptr
  %l3 = alloca i64
  %l4 = alloca { i64, ptr }
  %l5 = alloca i64
  %l6 = alloca i64
  %l10 = alloca i1
  %l14 = alloca i32
  %l18 = alloca i1
  %l21 = alloca i1
  %l26 = alloca { i64, ptr }
  %l34 = alloca { i64, ptr }
  %s2 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  store ptr %a2, ptr %l2
  store i64 %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load i64, ptr %l3, !tbaa !24
  %t3 = icmp sgt i64 %t1, 32
  br i1 %t3, label %bb1, label %bb2
bb1:
  store i1 true, ptr %l10, !tbaa !21
  br label %bb4
bb2:
  %t5 = load ptr, ptr %l0, !tbaa !29
  %t7 = getelementptr %"compiler/generic:Program", ptr %t5, i32 0, i32 2
  %t8 = load i32, ptr %l1, !tbaa !23
  %t11 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t7, i32 %t8)
  store i32 %t11, ptr %l14
  br label %bb3
bb3:
  %t12 = load i32, ptr %l14, !range !{i32 0, i32 33}
  %t14 = trunc i64 18 to i32
  %t15 = icmp eq i32 %t12, %t14
  %t17 = xor i1 %t15, true
  store i1 %t17, ptr %l10, !tbaa !21
  br label %bb4
bb4:
  %t19 = load i1, ptr %l10, !tbaa !21
  br i1 %t19, label %bb5, label %bb6
bb5:
  store i1 true, ptr %l18, !tbaa !21
  br label %bb8
bb6:
  %t20 = load ptr, ptr %l2, !tbaa !29
  %t21 = load i32, ptr %l1, !tbaa !23
  %t24 = call i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2eHas_3ccompiler_2ftypes_3aTypeId_3e(ptr %v1, ptr %t20, i32 %t21)
  store i1 %t24, ptr %l21
  br label %bb7
bb7:
  %t25 = load i1, ptr %l21, !tbaa !21
  store i1 %t25, ptr %l18, !tbaa !21
  br label %bb8
bb8:
  %t26 = load i1, ptr %l18, !tbaa !21
  br i1 %t26, label %bb9, label %bb10
bb9:
  br label %ret
bb10:
  br label %bb11
bb11:
  %t27 = load ptr, ptr %l2, !tbaa !29
  %t28 = load i32, ptr %l1, !tbaa !23
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2ePush_3ccompiler_2ftypes_3aTypeId_3e(ptr %v1, ptr %t27, i32 %t28)
  br label %bb12
bb12:
  store %olang.scope zeroinitializer, ptr %s2
  %t31 = load ptr, ptr %l0, !tbaa !29
  %t32 = load i32, ptr %l1, !tbaa !23
  %t35 = call { i64, ptr } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eExtended(ptr %v0, ptr %s2, ptr %t31, i32 %t32)
  store { i64, ptr } %t35, ptr %l26
  br label %bb13
bb13:
  %t36 = load { i64, ptr }, ptr %l26, !tbaa !27
  %t37 = extractvalue { i64, ptr } %t36, 0
  %t38 = extractvalue { i64, ptr } %t36, 1
  %t39 = mul i64 %t37, 4
  %t40 = call ptr @__olang_scope_alloc(ptr %s2, i64 %t39)
  call void @llvm.memcpy.p0.p0.i64(ptr %t40, ptr %t38, i64 %t39, i1 false)
  %t41 = insertvalue { i64, ptr } undef, i64 %t37, 0
  %t42 = insertvalue { i64, ptr } %t41, ptr %t40, 1
  store { i64, ptr } %t42, ptr %l4, !tbaa !27
  store i64 0, ptr %l5, !tbaa !24
  %t44 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t46 = extractvalue { i64, ptr } %t44, 0
  store i64 %t46, ptr %l6, !tbaa !24
  br label %bb14
bb14:
  %t48 = load i64, ptr %l5, !tbaa !24
  %t49 = load i64, ptr %l6, !tbaa !24
  %t52 = icmp slt i64 %t48, %t49
  %t54 = xor i1 %t52, true
  br i1 %t54, label %bb15, label %bb16
bb15:
  br label %bb20
bb16:
  br label %bb17
bb17:
  %t56 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t56, ptr %l34, !tbaa !27
  %t57 = load i64, ptr %l5, !tbaa !24
  %t59 = getelementptr { i64, ptr }, ptr %l34, i32 0, i32 1
  %t60 = load ptr, ptr %t59, !tbaa !27
  %t61 = getelementptr i32, ptr %t60, i64 %t57
  %t62 = load i32, ptr %t61, !tbaa !33
  %t64 = load ptr, ptr %l0, !tbaa !29
  %t66 = load ptr, ptr %l2, !tbaa !29
  %t67 = load i64, ptr %l3, !tbaa !24
  %t69 = add i64 %t67, 1
  call void @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eanyCovers(ptr %v0, ptr %v1, ptr %t64, i32 %t62, ptr %t66, i64 %t69)
  br label %bb18
bb18:
  br label %bb19
bb19:
  %t74 = load i64, ptr %l5, !tbaa !24
  %t76 = add i64 %t74, 1
  store i64 %t76, ptr %l5, !tbaa !24
  br label %bb14
bb20:
  call void @__olang_scope_close(ptr %s2)
  br label %ret
ret:
  ret void
}

define dso_local i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eanyReadsLocal(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, { i64, ptr } %a2) #0 {
entry:
  %l2 = alloca { i64, ptr }
  %l3 = alloca { i64, ptr }
  %l4 = alloca i64
  %l5 = alloca i64
  %l18 = alloca { i64, ptr }
  %l25 = alloca i1
  %rv = alloca i1
  store { i64, ptr } %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t3 = extractvalue { i64, ptr } %t1, 0
  %t5 = icmp eq i64 %t3, 0
  br i1 %t5, label %bb1, label %bb2
bb1:
  store i1 false, ptr %rv
  br label %ret
bb2:
  br label %bb3
bb3:
  %t8 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t8, ptr %l3, !tbaa !27
  store i64 0, ptr %l4, !tbaa !24
  %t10 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t12 = extractvalue { i64, ptr } %t10, 0
  store i64 %t12, ptr %l5, !tbaa !24
  br label %bb4
bb4:
  %t14 = load i64, ptr %l4, !tbaa !24
  %t15 = load i64, ptr %l5, !tbaa !24
  %t18 = icmp slt i64 %t14, %t15
  %t20 = xor i1 %t18, true
  br i1 %t20, label %bb5, label %bb6
bb5:
  br label %bb13
bb6:
  br label %bb7
bb7:
  %t22 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t22, ptr %l18, !tbaa !27
  %t23 = load i64, ptr %l4, !tbaa !24
  %t25 = getelementptr { i64, ptr }, ptr %l18, i32 0, i32 1
  %t26 = load ptr, ptr %t25, !tbaa !27
  %t27 = getelementptr ptr, ptr %t26, i64 %t23
  %t28 = load ptr, ptr %t27, !tbaa !39
  %t37 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2ereadsLocal(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, ptr %t28)
  store i1 %t37, ptr %l25
  br label %bb8
bb8:
  %t38 = load i1, ptr %l25, !tbaa !21
  br i1 %t38, label %bb9, label %bb10
bb9:
  store i1 true, ptr %rv
  br label %ret
bb10:
  br label %bb11
bb11:
  br label %bb12
bb12:
  %t40 = load i64, ptr %l4, !tbaa !24
  %t42 = add i64 %t40, 1
  store i64 %t42, ptr %l4, !tbaa !24
  br label %bb4
bb13:
  store i1 false, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2ecalleeType(ptr %v0, ptr %a0, %"compiler/names:Ref" %a1, i32 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/names:Ref"
  %l3 = alloca i32
  %l4 = alloca i64
  %l5 = alloca i32
  %l8 = alloca i1
  %l14 = alloca i32
  %l18 = alloca i64
  %l20 = alloca ptr
  %l24 = alloca i32
  %l25 = alloca i32
  %l32 = alloca i64
  %l38 = alloca i32
  %l39 = alloca ptr
  %l41 = alloca i64
  %l42 = alloca i64
  %l45 = alloca ptr
  %l49 = alloca i32
  %l50 = alloca i32
  %rv = alloca i32
  store ptr %a0, ptr %l0
  store %"compiler/names:Ref" %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = getelementptr %"compiler/names:Ref", ptr %l1, i32 0, i32 0
  %t2 = load i32, ptr %t1, !range !{i32 0, i32 9}
  %t4 = trunc i64 4 to i32
  %t5 = icmp eq i32 %t2, %t4
  br i1 %t5, label %bb1, label %bb2
bb1:
  %t7 = getelementptr %"compiler/names:Ref", ptr %l1, i32 0, i32 2
  %t8 = load i64, ptr %t7, !tbaa !24
  %t10 = icmp sge i64 %t8, 0
  store i1 %t10, ptr %l8, !tbaa !21
  br label %bb3
bb2:
  store i1 false, ptr %l8, !tbaa !21
  br label %bb3
bb3:
  %t12 = load i1, ptr %l8, !tbaa !21
  br i1 %t12, label %bb4, label %bb5
bb4:
  %t13 = load ptr, ptr %l0, !tbaa !29
  %t14 = getelementptr %"compiler/names:Ref", ptr %l1, i32 0, i32 1
  %t15 = load i64, ptr %t14, !tbaa !24
  %t16 = getelementptr %"compiler/names:Ref", ptr %l1, i32 0, i32 2
  %t17 = load i64, ptr %t16, !tbaa !24
  %t21 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eDeclFor(ptr %v0, ptr %t13, i64 %t15, i64 %t17)
  store i32 %t21, ptr %l14
  br label %bb6
bb5:
  br label %bb13
bb6:
  %t22 = load i32, ptr %l14, !tbaa !23
  store i32 %t22, ptr %l3, !tbaa !23
  %t23 = load ptr, ptr %l0, !tbaa !29
  %t25 = getelementptr %"compiler/generic:Program", ptr %t23, i32 0, i32 2
  %t26 = load i32, ptr %l3, !tbaa !23
  %t29 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclParams(ptr %v0, ptr %t25, i32 %t26)
  store i64 %t29, ptr %l18
  br label %bb7
bb7:
  %t30 = load i64, ptr %l18, !tbaa !24
  %t31 = icmp eq i64 %t30, 0
  br i1 %t31, label %bb8, label %bb9
bb8:
  %t33 = load ptr, ptr %l0, !tbaa !29
  store ptr %t33, ptr %l20, !tbaa !29
  %t34 = load ptr, ptr %l0, !tbaa !29
  %t36 = getelementptr %"compiler/generic:Program", ptr %t34, i32 0, i32 2
  %t37 = load i32, ptr %l3, !tbaa !23
  %t40 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eNamed(ptr %v0, ptr %t36, i32 %t37, i32 0)
  store i32 %t40, ptr %l24
  br label %bb10
bb9:
  br label %bb12
bb10:
  %t41 = load ptr, ptr %l20, !tbaa !29
  %t42 = load i32, ptr %l24, !tbaa !23
  %t43 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eheld(ptr %v0, ptr %t41, i32 %t42)
  store i32 %t43, ptr %l25
  br label %bb11
bb11:
  %t44 = load i32, ptr %l25, !tbaa !23
  store i32 %t44, ptr %rv
  br label %ret
bb12:
  %t45 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  store i32 %t45, ptr %rv
  br label %ret
bb13:
  %t47 = getelementptr %"compiler/names:Ref", ptr %l1, i32 0, i32 0
  %t48 = load i32, ptr %t47, !range !{i32 0, i32 9}
  %t50 = trunc i64 3 to i32
  %t51 = icmp eq i32 %t48, %t50
  br i1 %t51, label %bb14, label %bb15
bb14:
  %t53 = load ptr, ptr %l0, !tbaa !29
  %t54 = getelementptr %"compiler/names:Ref", ptr %l1, i32 0, i32 1
  %t55 = load i64, ptr %t54, !tbaa !24
  %t60 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnNamed(ptr %v0, ptr %t53, i64 %t55, i32 %a2)
  store i64 %t60, ptr %l32
  br label %bb16
bb15:
  br label %bb28
bb16:
  %t61 = load i64, ptr %l32, !tbaa !24
  store i64 %t61, ptr %l4, !tbaa !24
  %t62 = load i64, ptr %l4, !tbaa !24
  %t64 = icmp slt i64 %t62, 0
  br i1 %t64, label %bb17, label %bb18
bb17:
  %t66 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  store i32 %t66, ptr %rv
  br label %ret
bb18:
  br label %bb19
bb19:
  %t68 = load ptr, ptr %l0, !tbaa !29
  %t69 = load i64, ptr %l4, !tbaa !24
  %t72 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eSig(ptr %v0, ptr %t68, i64 %t69)
  store i32 %t72, ptr %l38
  br label %bb20
bb20:
  %t73 = load i32, ptr %l38, !tbaa !23
  store i32 %t73, ptr %l5, !tbaa !23
  %t74 = load ptr, ptr %l0, !tbaa !29
  store ptr %t74, ptr %l39, !tbaa !29
  %t75 = load i64, ptr %l4, !tbaa !24
  %t77 = call i64 @compiler_2fgeneric_2eFnOwner(i64 %t75)
  store i64 %t77, ptr %l41
  br label %bb21
bb21:
  %t78 = load ptr, ptr %l39, !tbaa !29
  %t79 = load i64, ptr %l41, !tbaa !24
  %t80 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eVarCount(ptr %v0, ptr %t78, i64 %t79)
  store i64 %t80, ptr %l42
  br label %bb22
bb22:
  %t81 = load i64, ptr %l42, !tbaa !24
  %t82 = icmp sgt i64 %t81, 0
  br i1 %t82, label %bb23, label %bb24
bb23:
  %t84 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  store i32 %t84, ptr %rv
  br label %ret
bb24:
  br label %bb25
bb25:
  %t86 = load ptr, ptr %l0, !tbaa !29
  store ptr %t86, ptr %l45, !tbaa !29
  %t87 = load ptr, ptr %l0, !tbaa !29
  %t89 = getelementptr %"compiler/generic:Program", ptr %t87, i32 0, i32 2
  %t90 = load i32, ptr %l5, !tbaa !23
  %t93 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eResult(ptr %v0, ptr %t89, i32 %t90)
  store i32 %t93, ptr %l49
  br label %bb26
bb26:
  %t94 = load ptr, ptr %l45, !tbaa !29
  %t95 = load i32, ptr %l49, !tbaa !23
  %t96 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eheld(ptr %v0, ptr %t94, i32 %t95)
  store i32 %t96, ptr %l50
  br label %bb27
bb27:
  %t97 = load i32, ptr %l50, !tbaa !23
  store i32 %t97, ptr %rv
  br label %ret
bb28:
  %t98 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  store i32 %t98, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local { i32, i32 } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2ecanonEnum(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l3 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l4 = alloca i64
  %l5 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l6 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l8 = alloca i1
  %l12 = alloca i64
  %l14 = alloca i1
  %l16 = alloca i1
  %l27 = alloca i1
  %l29 = alloca i8
  %l30 = alloca i1
  %l31 = alloca i1
  %l33 = alloca i8
  %l34 = alloca i1
  %l35 = alloca i1
  %l37 = alloca i8
  %l40 = alloca ptr
  %l43 = alloca ptr
  %l46 = alloca ptr
  %l48 = alloca { i64, ptr }
  %l49 = alloca i64
  %l51 = alloca i64
  %l52 = alloca i64
  %l57 = alloca i32
  %l59 = alloca i1
  %l60 = alloca ptr
  %l62 = alloca ptr
  %l63 = alloca i32
  %l66 = alloca i32
  %l67 = alloca i32
  %l69 = alloca i32
  %l72 = alloca ptr
  %l74 = alloca { i64, ptr }
  %l76 = alloca ptr
  %l78 = alloca { i64, ptr }
  %l79 = alloca i32
  %l83 = alloca i32
  %s0 = alloca %olang.scope
  %s1 = alloca %olang.scope
  %s4 = alloca %olang.scope
  %rv = alloca { i32, i32 }
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aNameId_3e_2ector(ptr %s0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1, ptr %l5
  br label %bb1
bb1:
  %t2 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l5
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t2, ptr %l2
  %t3 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2ector(ptr %s0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t3, ptr %l6
  br label %bb2
bb2:
  %t4 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l6
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t4, ptr %l3
  br label %bb3
bb3:
  store %olang.scope zeroinitializer, ptr %s1
  %t5 = load ptr, ptr %l1, !tbaa !29
  %t7 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3acursor_2eeat(ptr %v1, ptr %s1, ptr %t5, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d11, i32 0, i32 1) })
  store i1 %t7, ptr %l8
  br label %bb4
bb4:
  %t8 = load i1, ptr %l8, !tbaa !21
  %t9 = xor i1 %t8, true
  %t11 = xor i1 %t9, true
  br i1 %t11, label %bb5, label %bb6
bb5:
  call void @__olang_scope_close(ptr %s1)
  br label %bb55
bb6:
  br label %bb7
bb7:
  %t14 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aNameId_3e_2eLen_3ccompiler_2fsource_3aNameId_3e(ptr %s0, ptr %l2)
  store i64 %t14, ptr %l12
  br label %bb8
bb8:
  %t15 = load i64, ptr %l12, !tbaa !24
  %t16 = icmp sgt i64 %t15, 0
  br i1 %t16, label %bb9, label %bb10
bb9:
  %t18 = load ptr, ptr %l1, !tbaa !29
  %t20 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3acursor_2eeat(ptr %v1, ptr %s1, ptr %t18, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d12, i32 0, i32 1) })
  store i1 %t20, ptr %l16
  br label %bb11
bb10:
  store i1 false, ptr %l14, !tbaa !21
  br label %bb12
bb11:
  %t21 = load i1, ptr %l16, !tbaa !21
  %t22 = xor i1 %t21, true
  store i1 %t22, ptr %l14, !tbaa !21
  br label %bb12
bb12:
  %t24 = load i1, ptr %l14, !tbaa !21
  br i1 %t24, label %bb13, label %bb14
bb13:
  call void @__olang_scope_close(ptr %s1)
  call void @__olang_scope_close(ptr %s0)
  %t26 = insertvalue { i32, i32 } zeroinitializer, i32 65536, 0
  store { i32, i32 } %t26, ptr %rv
  br label %ret
bb14:
  br label %bb15
bb15:
  %t27 = load ptr, ptr %l1, !tbaa !29
  %t29 = getelementptr %"compiler/generic:cursor", ptr %t27, i32 0, i32 1
  %t30 = load i64, ptr %t29, !tbaa !24
  store i64 %t30, ptr %l4, !tbaa !24
  br label %bb16
bb16:
  %t32 = load ptr, ptr %l1, !tbaa !29
  %t34 = getelementptr %"compiler/generic:cursor", ptr %t32, i32 0, i32 1
  %t35 = load i64, ptr %t34, !tbaa !24
  %t36 = load ptr, ptr %l1, !tbaa !29
  %t38 = getelementptr %"compiler/generic:cursor", ptr %t36, i32 0, i32 0
  %t39 = load { i64, ptr }, ptr %t38, !tbaa !27
  %t41 = extractvalue { i64, ptr } %t39, 0
  %t44 = icmp slt i64 %t35, %t41
  br i1 %t44, label %bb17, label %bb18
bb17:
  %t46 = load ptr, ptr %l1, !tbaa !29
  %t48 = call i8 @compiler_2fgeneric_2ecompiler_2fgeneric_3acursor_2epeek(ptr %v1, ptr %t46)
  store i8 %t48, ptr %l29
  br label %bb19
bb18:
  store i1 false, ptr %l27, !tbaa !21
  br label %bb30
bb19:
  %t49 = load i8, ptr %l29, !tbaa !22
  %t50 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aChar_2eIsLetter(i8 %t49)
  store i1 %t50, ptr %l30
  br label %bb20
bb20:
  %t51 = load i1, ptr %l30, !tbaa !21
  br i1 %t51, label %bb21, label %bb22
bb21:
  store i1 true, ptr %l31, !tbaa !21
  br label %bb25
bb22:
  %t52 = load ptr, ptr %l1, !tbaa !29
  %t54 = call i8 @compiler_2fgeneric_2ecompiler_2fgeneric_3acursor_2epeek(ptr %v1, ptr %t52)
  store i8 %t54, ptr %l33
  br label %bb23
bb23:
  %t55 = load i8, ptr %l33, !tbaa !22
  %t56 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aChar_2eIsDigit(i8 %t55)
  store i1 %t56, ptr %l34
  br label %bb24
bb24:
  %t57 = load i1, ptr %l34, !tbaa !21
  store i1 %t57, ptr %l31, !tbaa !21
  br label %bb25
bb25:
  %t58 = load i1, ptr %l31, !tbaa !21
  br i1 %t58, label %bb26, label %bb27
bb26:
  store i1 true, ptr %l35, !tbaa !21
  br label %bb29
bb27:
  %t59 = load ptr, ptr %l1, !tbaa !29
  %t61 = call i8 @compiler_2fgeneric_2ecompiler_2fgeneric_3acursor_2epeek(ptr %v1, ptr %t59)
  store i8 %t61, ptr %l37
  br label %bb28
bb28:
  %t62 = load i8, ptr %l37, !tbaa !22
  %t63 = icmp eq i8 %t62, 95
  store i1 %t63, ptr %l35, !tbaa !21
  br label %bb29
bb29:
  %t65 = load i1, ptr %l35, !tbaa !21
  store i1 %t65, ptr %l27, !tbaa !21
  br label %bb30
bb30:
  %t66 = load i1, ptr %l27, !tbaa !21
  %t67 = xor i1 %t66, true
  br i1 %t67, label %bb31, label %bb32
bb31:
  br label %bb35
bb32:
  br label %bb33
bb33:
  %t69 = load ptr, ptr %l1, !tbaa !29
  store ptr %t69, ptr %l40, !tbaa !29
  %t70 = load ptr, ptr %l40, !tbaa !29
  %t71 = getelementptr %"compiler/generic:cursor", ptr %t70, i32 0, i32 1
  %t72 = load i64, ptr %t71, !tbaa !24
  %t74 = add i64 %t72, 1
  %t76 = load ptr, ptr %l40, !tbaa !29
  %t77 = getelementptr %"compiler/generic:cursor", ptr %t76, i32 0, i32 1
  store i64 %t74, ptr %t77, !tbaa !24
  br label %bb34
bb34:
  br label %bb16
bb35:
  store ptr %l2, ptr %l43, !tbaa !29
  %t78 = load ptr, ptr %l0, !tbaa !29
  %t80 = getelementptr %"compiler/generic:Program", ptr %t78, i32 0, i32 0
  %t81 = load ptr, ptr %t80, !tbaa !29
  %t83 = getelementptr %"compiler/load:Loader", ptr %t81, i32 0, i32 3
  %t84 = load ptr, ptr %t83, !tbaa !29
  store ptr %t84, ptr %l46, !tbaa !29
  %t85 = load ptr, ptr %l1, !tbaa !29
  %t87 = getelementptr %"compiler/generic:cursor", ptr %t85, i32 0, i32 0
  %t88 = load { i64, ptr }, ptr %t87, !tbaa !27
  store { i64, ptr } %t88, ptr %l48, !tbaa !27
  %t89 = load i64, ptr %l4, !tbaa !24
  store i64 %t89, ptr %l49, !tbaa !24
  %t90 = load ptr, ptr %l1, !tbaa !29
  %t92 = getelementptr %"compiler/generic:cursor", ptr %t90, i32 0, i32 1
  %t93 = load i64, ptr %t92, !tbaa !24
  store i64 %t93, ptr %l51, !tbaa !24
  %t94 = load { i64, ptr }, ptr %l48, !tbaa !27
  %t95 = extractvalue { i64, ptr } %t94, 0
  store i64 %t95, ptr %l52, !tbaa !24
  %t96 = load i64, ptr %l49, !tbaa !24
  %t97 = icmp sge i64 %t96, 0
  br i1 %t97, label %bb36, label %bb37
bb36:
  %t99 = load i64, ptr %l49, !tbaa !24
  %t100 = load i64, ptr %l51, !tbaa !24
  %t101 = icmp sle i64 %t99, %t100
  br i1 %t101, label %bb38, label %bb39
bb37:
  call void @__olang_check_failed(ptr @olang_loc_510ce85b2a9a6c03_b867f874fd10b7a7)
  unreachable
bb38:
  %t103 = load i64, ptr %l51, !tbaa !24
  %t104 = load i64, ptr %l52, !tbaa !24
  %t105 = icmp sle i64 %t103, %t104
  br i1 %t105, label %bb40, label %bb41
bb39:
  call void @__olang_check_failed(ptr @olang_loc_510ce85b2a9a6c03_b867f874fd10b7a7)
  unreachable
bb40:
  %t107 = getelementptr { i64, ptr }, ptr %l48, i32 0, i32 1
  %t108 = load ptr, ptr %t107, !tbaa !27
  %t109 = load i64, ptr %l49, !tbaa !24
  %t110 = load i64, ptr %l51, !tbaa !24
  %t111 = getelementptr i8, ptr %t108, i64 %t109
  %t112 = sub i64 %t110, %t109
  %t113 = insertvalue { i64, ptr } undef, i64 %t112, 0
  %t114 = insertvalue { i64, ptr } %t113, ptr %t111, 1
  %t115 = load ptr, ptr %l46, !tbaa !29
  %t117 = call i32 @compiler_2fsource_2ecompiler_2fsource_3aNames_2eIntern(ptr %v0, ptr %v1, ptr %t115, { i64, ptr } %t114)
  store i32 %t117, ptr %l57
  br label %bb42
bb41:
  call void @__olang_check_failed(ptr @olang_loc_510ce85b2a9a6c03_b867f874fd10b7a7)
  unreachable
bb42:
  %t118 = load ptr, ptr %l43, !tbaa !29
  %t119 = load i32, ptr %l57, !tbaa !23
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aNameId_3e_2ePush_3ccompiler_2fsource_3aNameId_3e(ptr %s0, ptr %t118, i32 %t119)
  br label %bb43
bb43:
  %t120 = load ptr, ptr %l1, !tbaa !29
  %t122 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3acursor_2eeat(ptr %v1, ptr %s1, ptr %t120, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d13, i32 0, i32 1) })
  store i1 %t122, ptr %l59
  br label %bb44
bb44:
  %t123 = load i1, ptr %l59, !tbaa !21
  br i1 %t123, label %bb45, label %bb46
bb45:
  store %olang.scope zeroinitializer, ptr %s4
  store ptr %l3, ptr %l60, !tbaa !29
  %t124 = load ptr, ptr %l0, !tbaa !29
  %t126 = getelementptr %"compiler/generic:Program", ptr %t124, i32 0, i32 2
  store ptr %t126, ptr %l62, !tbaa !29
  %t127 = load ptr, ptr %l0, !tbaa !29
  %t128 = load ptr, ptr %l1, !tbaa !29
  %t131 = call { i32, i32 } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2ecanonList(ptr %v0, ptr %v1, ptr %s4, ptr %t127, ptr %t128, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d14, i32 0, i32 1) })
  %t132 = extractvalue { i32, i32 } %t131, 1
  %t133 = extractvalue { i32, i32 } %t131, 0
  store i32 %t133, ptr %l67
  %t134 = icmp ne i32 %t133, 0
  br i1 %t134, label %bb48, label %ok.135, !prof !99
ok.135:
  store i32 %t132, ptr %l66
  br label %bb47
bb46:
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2ePush_3ccompiler_2ftypes_3aTypeId_3e(ptr %s0, ptr %l3, i32 0)
  br label %bb52
bb47:
  %t137 = load i32, ptr %l66, !tbaa !23
  store i32 %t137, ptr %l63, !tbaa !23
  br label %bb49
bb48:
  %t138 = load i32, ptr %l67, !tbaa !23
  %t139 = lshr i32 %t138, 16
  %t140 = and i32 %t138, 65535
  %t141 = icmp eq i32 %t139, 1
  %t142 = select i1 %t141, i32 1, i32 0
  %t143 = icmp eq i32 %t139, 2
  %t144 = select i1 %t143, i32 2, i32 %t142
  %t145 = icmp eq i32 %t138, 0
  %t146 = shl i32 %t144, 16
  %t147 = or i32 %t146, %t140
  %t148 = select i1 %t145, i32 0, i32 %t147
  call void @__olang_scope_close(ptr %s4)
  call void @__olang_scope_close(ptr %s1)
  call void @__olang_scope_close(ptr %s0)
  %t150 = insertvalue { i32, i32 } zeroinitializer, i32 %t148, 0
  store { i32, i32 } %t150, ptr %rv
  br label %ret
bb49:
  %t151 = load ptr, ptr %l62, !tbaa !29
  %t152 = load i32, ptr %l63, !tbaa !23
  %t153 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRecord(ptr %v0, ptr %t151, i32 %t152)
  store i32 %t153, ptr %l69
  br label %bb50
bb50:
  %t154 = load ptr, ptr %l60, !tbaa !29
  %t155 = load i32, ptr %l69, !tbaa !23
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2ePush_3ccompiler_2ftypes_3aTypeId_3e(ptr %s0, ptr %t154, i32 %t155)
  br label %bb51
bb51:
  call void @__olang_scope_close(ptr %s4)
  br label %bb53
bb52:
  br label %bb53
bb53:
  call void @__olang_scope_close(ptr %s1)
  br label %bb54
bb54:
  br label %bb3
bb55:
  %t156 = load ptr, ptr %l0, !tbaa !29
  %t158 = getelementptr %"compiler/generic:Program", ptr %t156, i32 0, i32 2
  store ptr %t158, ptr %l72, !tbaa !29
  %t160 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aNameId_3e_2eToArra_H4d02a0b2e27e8f31ffc99daa43750593(ptr %s0, ptr %s0, ptr %l2)
  store { i64, ptr } %t160, ptr %l74
  br label %bb56
bb56:
  %t161 = load ptr, ptr %l0, !tbaa !29
  %t163 = getelementptr %"compiler/generic:Program", ptr %t161, i32 0, i32 2
  store ptr %t163, ptr %l76, !tbaa !29
  %t165 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2eToArray_3ccompiler_2ftypes_3aTypeId_3e(ptr %s0, ptr %s0, ptr %l3)
  store { i64, ptr } %t165, ptr %l78
  br label %bb57
bb57:
  %t166 = load ptr, ptr %l76, !tbaa !29
  %t167 = load { i64, ptr }, ptr %l78, !tbaa !27
  %t168 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eList(ptr %v0, ptr %s0, ptr %t166, { i64, ptr } %t167)
  store i32 %t168, ptr %l79
  br label %bb58
bb58:
  %t169 = icmp sge i64 0, 0
  br i1 %t169, label %bb59, label %bb60
bb59:
  %t171 = icmp sle i64 0, 2305843009213693951
  br i1 %t171, label %bb61, label %bb62
bb60:
  call void @__olang_check_failed(ptr @olang_loc_3e2c33a947ef0926_eb9e7dc4e2170cd2)
  unreachable
bb61:
  %t173 = mul i64 0, 4
  %t174 = insertvalue { i64, ptr } undef, i64 0, 0
  %t175 = insertvalue { i64, ptr } %t174, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  %t176 = load ptr, ptr %l72, !tbaa !29
  %t177 = load { i64, ptr }, ptr %l74, !tbaa !27
  %t178 = load i32, ptr %l79, !tbaa !23
  %t180 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eAnonEnum(ptr %v0, ptr %s0, ptr %s0, ptr %t176, { i64, ptr } %t177, i32 %t178, { i64, ptr } %t175)
  store i32 %t180, ptr %l83
  br label %bb63
bb62:
  call void @__olang_check_failed(ptr @olang_loc_3e2c33a947ef0926_eb9e7dc4e2170cd2)
  unreachable
bb63:
  call void @__olang_scope_close(ptr %s0)
  %t181 = load i32, ptr %l83, !tbaa !23
  %t182 = insertvalue { i32, i32 } zeroinitializer, i32 %t181, 1
  store { i32, i32 } %t182, ptr %rv
  br label %ret
ret:
  %rr = load { i32, i32 }, ptr %rv
  ret { i32, i32 } %rr
}

define dso_local i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2econstOf(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, %"compiler/generic:folded" %a2, i32 %a3, ptr %a4) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca %"compiler/generic:folded"
  %l3 = alloca i32
  %l4 = alloca ptr
  %l5 = alloca %"compiler/source:Span"
  %l6 = alloca i32
  %l7 = alloca { i64, ptr }
  %l8 = alloca i64
  %l9 = alloca i1
  %l10 = alloca ptr
  %l11 = alloca i64
  %l12 = alloca %"compiler/generic:ConstAsk"
  %l13 = alloca { i64, ptr }
  %l14 = alloca { i64, ptr }
  %l15 = alloca i64
  %l16 = alloca %"std/prelude/map:MapIter.bf5835bb10600fe6a7fc1da14a6360d9"
  %l17 = alloca %"std/prelude/map:MapEntry.91de8c8eb84d52d1e58996aec31d85aa"
  %l24 = alloca ptr
  %l25 = alloca i32
  %l29 = alloca i64
  %l30 = alloca i32
  %l34 = alloca i1
  %l38 = alloca i1
  %l42 = alloca i1
  %l45 = alloca i1
  %l49 = alloca %"compiler/generic:folded"
  %l53 = alloca i1
  %l58 = alloca %"compiler/source:Span"
  %l60 = alloca ptr
  %l61 = alloca i64
  %l73 = alloca i32
  %l75 = alloca ptr
  %l79 = alloca i64
  %l87 = alloca %"compiler/generic:pattern"
  %l92 = alloca i1
  %l99 = alloca { i64, ptr }
  %l104 = alloca i1
  %l105 = alloca i64
  %l109 = alloca i64
  %l110 = alloca i32
  %l115 = alloca i32
  %l117 = alloca ptr
  %l118 = alloca i32
  %l122 = alloca i64
  %l123 = alloca i32
  %l126 = alloca i64
  %l128 = alloca i64
  %l133 = alloca %"compiler/generic:ConstAsk"
  %l136 = alloca i1
  %l143 = alloca i64
  %l149 = alloca i64
  %l155 = alloca %"std/prelude/map:MapIter.bf5835bb10600fe6a7fc1da14a6360d9"
  %l156 = alloca %"std/prelude/map:MapEntry.91de8c8eb84d52d1e58996aec31d85aa"
  %l158 = alloca %"std/prelude/map:MapEntry.91de8c8eb84d52d1e58996aec31d85aa"
  %l159 = alloca i32
  %l161 = alloca i1
  %l164 = alloca { i64, ptr }
  %l167 = alloca { i64, ptr }
  %l173 = alloca ptr
  %l183 = alloca %"compiler/generic:ConstAsk"
  %l185 = alloca i32
  %s2 = alloca %olang.scope
  %rv = alloca i32
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store %"compiler/generic:folded" %a2, ptr %l2
  store i32 %a3, ptr %l3
  store ptr %a4, ptr %l4
  br label %start
start:
  br label %bb0
bb0:
  %t1 = getelementptr %"compiler/generic:folded", ptr %l2, i32 0, i32 0
  %t2 = load i64, ptr %t1, !tbaa !24
  %t3 = load i64, ptr @G_2ecompiler_2fgeneric_2eFolded, !tbaa !24
  %t6 = icmp eq i64 %t2, %t3
  br i1 %t6, label %bb1, label %bb2
bb1:
  %t8 = load ptr, ptr %l0, !tbaa !29
  %t10 = getelementptr %"compiler/generic:Program", ptr %t8, i32 0, i32 2
  store ptr %t10, ptr %l24, !tbaa !29
  %t11 = load i32, ptr %l3, !tbaa !23
  store i32 %t11, ptr %l25, !tbaa !23
  %t12 = load ptr, ptr %l0, !tbaa !29
  %t13 = getelementptr %"compiler/generic:folded", ptr %l2, i32 0, i32 1
  %t14 = load i64, ptr %t13, !tbaa !24
  %t15 = load i32, ptr %l3, !tbaa !23
  %t19 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2ewrap(ptr %v0, ptr %t12, i64 %t14, i32 %t15)
  store i64 %t19, ptr %l29
  br label %bb3
bb2:
  br label %bb5
bb3:
  %t20 = load ptr, ptr %l24, !tbaa !29
  %t21 = load i32, ptr %l25, !tbaa !23
  %t22 = load i64, ptr %l29, !tbaa !24
  %t23 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eConst(ptr %v0, ptr %t20, i32 %t21, i64 %t22)
  store i32 %t23, ptr %l30
  br label %bb4
bb4:
  %t24 = load i32, ptr %l30, !tbaa !23
  store i32 %t24, ptr %rv
  br label %ret
bb5:
  %t25 = getelementptr %"compiler/generic:folded", ptr %l2, i32 0, i32 0
  %t26 = load i64, ptr %t25, !tbaa !24
  %t27 = load i64, ptr @G_2ecompiler_2fgeneric_2eUnfolded, !tbaa !24
  %t30 = icmp eq i64 %t26, %t27
  br i1 %t30, label %bb6, label %bb7
bb6:
  %t32 = load ptr, ptr %l4, !tbaa !29
  %t34 = icmp eq ptr %t32, null
  %t36 = xor i1 %t34, true
  store i1 %t36, ptr %l34, !tbaa !21
  br label %bb8
bb7:
  store i1 false, ptr %l34, !tbaa !21
  br label %bb8
bb8:
  %t38 = load i1, ptr %l34, !tbaa !21
  br i1 %t38, label %bb9, label %bb10
bb9:
  %t39 = load ptr, ptr %l1, !tbaa !29
  %t41 = getelementptr %"compiler/generic:Context", ptr %t39, i32 0, i32 1
  %t42 = load i64, ptr %t41, !tbaa !24
  %t44 = icmp sge i64 %t42, 0
  store i1 %t44, ptr %l38, !tbaa !21
  br label %bb11
bb10:
  store i1 false, ptr %l38, !tbaa !21
  br label %bb11
bb11:
  %t46 = load i1, ptr %l38, !tbaa !21
  br i1 %t46, label %bb12, label %bb13
bb12:
  %t47 = load ptr, ptr %l0, !tbaa !29
  %t48 = load ptr, ptr %l1, !tbaa !29
  %t51 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2evarsBound(ptr %v0, ptr %v1, ptr %t47, ptr %t48)
  store i1 %t51, ptr %l45
  br label %bb14
bb13:
  store i1 false, ptr %l42, !tbaa !21
  br label %bb15
bb14:
  %t52 = load i1, ptr %l45, !tbaa !21
  %t53 = xor i1 %t52, true
  store i1 %t53, ptr %l42, !tbaa !21
  br label %bb15
bb15:
  %t55 = load i1, ptr %l42, !tbaa !21
  br i1 %t55, label %bb16, label %bb17
bb16:
  store %olang.scope zeroinitializer, ptr %s2
  %t56 = load i64, ptr @G_2ecompiler_2fgeneric_2ePending, !tbaa !24
  %t57 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t60 = call %"compiler/generic:folded" @compiler_2fgeneric_3afolded_2ector(ptr %s2, i64 %t56, i64 0, i32 %t57)
  store %"compiler/generic:folded" %t60, ptr %l49
  br label %bb18
bb17:
  br label %bb19
bb18:
  %t61 = load %"compiler/generic:folded", ptr %l49
  store %"compiler/generic:folded" %t61, ptr %l2
  call void @__olang_scope_close(ptr %s2)
  br label %bb19
bb19:
  %t62 = getelementptr %"compiler/generic:folded", ptr %l2, i32 0, i32 0
  %t63 = load i64, ptr %t62, !tbaa !24
  %t64 = load i64, ptr @G_2ecompiler_2fgeneric_2ePending, !tbaa !24
  %t67 = icmp eq i64 %t63, %t64
  br i1 %t67, label %bb20, label %bb21
bb20:
  %t69 = load ptr, ptr %l4, !tbaa !29
  %t71 = icmp eq ptr %t69, null
  %t73 = xor i1 %t71, true
  store i1 %t73, ptr %l53, !tbaa !21
  br label %bb22
bb21:
  store i1 false, ptr %l53, !tbaa !21
  br label %bb22
bb22:
  %t75 = load i1, ptr %l53, !tbaa !21
  br i1 %t75, label %bb23, label %bb24
bb23:
  %t76 = load ptr, ptr %l4, !tbaa !29
  %t78 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v2, ptr %t76)
  store %"compiler/source:Span" %t78, ptr %l58
  br label %bb25
bb24:
  br label %bb32
bb25:
  %t79 = load %"compiler/source:Span", ptr %l58
  store %"compiler/source:Span" %t79, ptr %l5
  %t80 = load ptr, ptr %l0, !tbaa !29
  %t82 = getelementptr %"compiler/generic:Program", ptr %t80, i32 0, i32 2
  store ptr %t82, ptr %l60, !tbaa !29
  %t83 = ptrtoint ptr %v0 to i64
  store i64 %t83, ptr %l61, !tbaa !24
  %t84 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1
  br i1 %t84, label %bb26, label %bb27
bb26:
  %t86 = call ptr @__olang_region_make(ptr %v0)
  %t87 = ptrtoint ptr %t86 to i64
  store i64 %t87, ptr %l61, !tbaa !24
  br label %bb27
bb27:
  %t88 = load ptr, ptr %l1, !tbaa !29
  %t90 = getelementptr %"compiler/generic:Context", ptr %t88, i32 0, i32 1
  %t91 = load i64, ptr %t90, !tbaa !24
  %t92 = load ptr, ptr %l1, !tbaa !29
  %t94 = getelementptr %"compiler/generic:Context", ptr %t92, i32 0, i32 0
  %t95 = load i64, ptr %t94, !tbaa !24
  %t96 = getelementptr %"compiler/source:Span", ptr %l5, i32 0, i32 0
  %t97 = load i32, ptr %t96, !tbaa !23
  %t98 = getelementptr %"compiler/source:Span", ptr %l5, i32 0, i32 1
  %t99 = load i32, ptr %t98, !tbaa !23
  %t100 = load i32, ptr %l3, !tbaa !23
  %t102 = sext i32 %t100 to i64
  %t104 = call i64 @__olang_fmt_i64(ptr null, i64 %t91)
  %t105 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d15, i32 0, i32 1) }, 1
  %t106 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d15, i32 0, i32 1) }, 0
  %t107 = add i64 %t104, %t106
  %t109 = call i64 @__olang_fmt_i64(ptr null, i64 %t95)
  %t110 = add i64 %t107, %t109
  %t111 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d15, i32 0, i32 1) }, 1
  %t112 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d15, i32 0, i32 1) }, 0
  %t113 = add i64 %t110, %t112
  %t115 = sext i32 %t97 to i64
  %t116 = call i64 @__olang_fmt_i64(ptr null, i64 %t115)
  %t117 = add i64 %t113, %t116
  %t118 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d15, i32 0, i32 1) }, 1
  %t119 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d15, i32 0, i32 1) }, 0
  %t120 = add i64 %t117, %t119
  %t122 = sext i32 %t99 to i64
  %t123 = call i64 @__olang_fmt_i64(ptr null, i64 %t122)
  %t124 = add i64 %t120, %t123
  %t125 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d15, i32 0, i32 1) }, 1
  %t126 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d15, i32 0, i32 1) }, 0
  %t127 = add i64 %t124, %t126
  %t129 = call i64 @__olang_fmt_i64(ptr null, i64 %t102)
  %t130 = add i64 %t127, %t129
  %t131 = load i64, ptr %l61
  %t132 = inttoptr i64 %t131 to ptr
  %t133 = call ptr @__olang_scope_alloc(ptr %t132, i64 %t130)
  %t134 = call i64 @__olang_fmt_i64(ptr %t133, i64 %t91)
  %t135 = getelementptr i8, ptr %t133, i64 %t104
  call void @olang_textcopy(ptr %t135, ptr %t105, i64 %t106)
  %t136 = getelementptr i8, ptr %t135, i64 %t106
  %t137 = call i64 @__olang_fmt_i64(ptr %t136, i64 %t95)
  %t138 = getelementptr i8, ptr %t136, i64 %t109
  call void @olang_textcopy(ptr %t138, ptr %t111, i64 %t112)
  %t139 = getelementptr i8, ptr %t138, i64 %t112
  %t140 = call i64 @__olang_fmt_i64(ptr %t139, i64 %t115)
  %t141 = getelementptr i8, ptr %t139, i64 %t116
  call void @olang_textcopy(ptr %t141, ptr %t118, i64 %t119)
  %t142 = getelementptr i8, ptr %t141, i64 %t119
  %t143 = call i64 @__olang_fmt_i64(ptr %t142, i64 %t122)
  %t144 = getelementptr i8, ptr %t142, i64 %t123
  call void @olang_textcopy(ptr %t144, ptr %t125, i64 %t126)
  %t145 = getelementptr i8, ptr %t144, i64 %t126
  %t146 = call i64 @__olang_fmt_i64(ptr %t145, i64 %t102)
  %t147 = insertvalue { i64, ptr } undef, i64 %t130, 0
  %t148 = insertvalue { i64, ptr } %t147, ptr %t133, 1
  %t150 = load i64, ptr %l61
  %t151 = inttoptr i64 %t150 to ptr
  %t152 = extractvalue { i64, ptr } %t148, 0
  %t153 = extractvalue { i64, ptr } %t148, 1
  %t154 = mul i64 %t152, 1
  %t155 = call ptr @__olang_scope_alloc(ptr %t151, i64 %t154)
  call void @llvm.memcpy.p0.p0.i64(ptr %t155, ptr %t153, i64 %t154, i1 false)
  %t156 = insertvalue { i64, ptr } undef, i64 %t152, 0
  %t157 = insertvalue { i64, ptr } %t156, ptr %t155, 1
  %t158 = load ptr, ptr %l60, !tbaa !29
  %t160 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eConstExpr(ptr %v0, ptr %v0, ptr %t158, { i64, ptr } %t157)
  store i32 %t160, ptr %l73
  br label %bb28
bb28:
  %t161 = load i32, ptr %l73, !tbaa !23
  store i32 %t161, ptr %l6, !tbaa !23
  %t162 = load ptr, ptr %l0, !tbaa !29
  %t164 = getelementptr %"compiler/generic:Program", ptr %t162, i32 0, i32 28
  store ptr %t164, ptr %l75, !tbaa !29
  %t165 = load ptr, ptr %l0, !tbaa !29
  %t167 = getelementptr %"compiler/generic:Program", ptr %t165, i32 0, i32 2
  %t168 = load i32, ptr %l6, !tbaa !23
  %t171 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eA(ptr %v0, ptr %t167, i32 %t168)
  store i64 %t171, ptr %l79
  br label %bb29
bb29:
  %t172 = load ptr, ptr %l4, !tbaa !29
  %t174 = load ptr, ptr %l1, !tbaa !29
  %t176 = getelementptr %"compiler/generic:Context", ptr %t174, i32 0, i32 0
  %t177 = load i64, ptr %t176, !tbaa !24
  %t178 = load ptr, ptr %l1, !tbaa !29
  %t180 = getelementptr %"compiler/generic:Context", ptr %t178, i32 0, i32 1
  %t181 = load i64, ptr %t180, !tbaa !24
  %t182 = load i32, ptr %l3, !tbaa !23
  %t187 = call %"compiler/generic:pattern" @compiler_2fgeneric_3apattern_2ector(ptr %v2, ptr %v0, ptr %v0, ptr %t172, i64 %t177, i64 %t181, i32 %t182, ptr null)
  store %"compiler/generic:pattern" %t187, ptr %l87
  br label %bb30
bb30:
  %t188 = load ptr, ptr %l75, !tbaa !29
  %t189 = load i64, ptr %l79, !tbaa !24
  %t190 = load %"compiler/generic:pattern", ptr %l87
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2fgeneric_3apattern__Hf2f2cd44709958e8fc0de9f437e62e6b(ptr %v0, ptr %v0, ptr %t188, i64 %t189, %"compiler/generic:pattern" %t190)
  br label %bb31
bb31:
  %t191 = load i32, ptr %l6, !tbaa !23
  store i32 %t191, ptr %rv
  br label %ret
bb32:
  %t193 = getelementptr %"compiler/generic:folded", ptr %l2, i32 0, i32 0
  %t194 = load i64, ptr %t193, !tbaa !24
  %t195 = load i64, ptr @G_2ecompiler_2fgeneric_2eUnfolded, !tbaa !24
  %t198 = icmp eq i64 %t194, %t195
  br i1 %t198, label %bb33, label %bb34
bb33:
  %t200 = load ptr, ptr %l4, !tbaa !29
  %t202 = icmp eq ptr %t200, null
  %t204 = xor i1 %t202, true
  store i1 %t204, ptr %l92, !tbaa !21
  br label %bb35
bb34:
  store i1 false, ptr %l92, !tbaa !21
  br label %bb35
bb35:
  %t206 = load i1, ptr %l92, !tbaa !21
  br i1 %t206, label %bb36, label %bb37
bb36:
  %t207 = load ptr, ptr %l0, !tbaa !29
  %t208 = load ptr, ptr %l1, !tbaa !29
  %t209 = load ptr, ptr %l4, !tbaa !29
  %t213 = call { i64, ptr } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eLengthKey(ptr %v0, ptr %v1, ptr %v2, ptr %v0, ptr %t207, ptr %t208, ptr %t209)
  store { i64, ptr } %t213, ptr %l99
  br label %bb38
bb37:
  br label %bb87
bb38:
  %t214 = load { i64, ptr }, ptr %l99, !tbaa !27
  %t215 = extractvalue { i64, ptr } %t214, 0
  %t216 = extractvalue { i64, ptr } %t214, 1
  %t217 = mul i64 %t215, 1
  %t218 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t217)
  call void @llvm.memcpy.p0.p0.i64(ptr %t218, ptr %t216, i64 %t217, i1 false)
  %t219 = insertvalue { i64, ptr } undef, i64 %t215, 0
  %t220 = insertvalue { i64, ptr } %t219, ptr %t218, 1
  store { i64, ptr } %t220, ptr %l7, !tbaa !27
  %t222 = load ptr, ptr %l0, !tbaa !29
  %t224 = getelementptr %"compiler/generic:Program", ptr %t222, i32 0, i32 54
  %t225 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t228 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_H9b83f66eba65594537030636cb0b52b7(ptr %v0, ptr %v0, ptr %t224, { i64, ptr } %t225)
  store i1 %t228, ptr %l104
  br label %bb39
bb39:
  %t229 = load i1, ptr %l104, !tbaa !21
  br i1 %t229, label %bb40, label %bb41
bb40:
  %t230 = load ptr, ptr %l0, !tbaa !29
  %t232 = getelementptr %"compiler/generic:Program", ptr %t230, i32 0, i32 54
  %t233 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t236 = call { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_H9162e3b7f03fcbf954b681204d5f6cca(ptr %v0, ptr %v0, ptr %t232, { i64, ptr } %t233)
  %t237 = extractvalue { i32, i64 } %t236, 1
  %t238 = extractvalue { i32, i64 } %t236, 0
  store i32 %t238, ptr %l110
  %t239 = icmp ne i32 %t238, 0
  br i1 %t239, label %bb43, label %ok.240, !prof !99
ok.240:
  store i64 %t237, ptr %l109
  br label %bb42
bb41:
  br label %bb51
bb42:
  %t241 = load i64, ptr %l109, !tbaa !24
  store i64 %t241, ptr %l105, !tbaa !24
  br label %bb45
bb43:
  br label %bb44
bb44:
  %t242 = load i64, ptr @G_2ecompiler_2fgeneric_2eRunTimeLength, !tbaa !24
  store i64 %t242, ptr %l105, !tbaa !24
  br label %bb45
bb45:
  %t244 = load i64, ptr %l105, !tbaa !24
  store i64 %t244, ptr %l8, !tbaa !24
  %t245 = load i64, ptr %l8, !tbaa !24
  %t246 = load i64, ptr @G_2ecompiler_2fgeneric_2eRunTimeLength, !tbaa !24
  %t249 = icmp eq i64 %t245, %t246
  br i1 %t249, label %bb46, label %bb47
bb46:
  store i32 0, ptr %l115, !tbaa !23
  br label %bb50
bb47:
  %t251 = load ptr, ptr %l0, !tbaa !29
  %t253 = getelementptr %"compiler/generic:Program", ptr %t251, i32 0, i32 2
  store ptr %t253, ptr %l117, !tbaa !29
  %t254 = load i32, ptr %l3, !tbaa !23
  store i32 %t254, ptr %l118, !tbaa !23
  %t255 = load ptr, ptr %l0, !tbaa !29
  %t256 = load i64, ptr %l8, !tbaa !24
  %t257 = load i32, ptr %l3, !tbaa !23
  %t261 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2ewrap(ptr %v0, ptr %t255, i64 %t256, i32 %t257)
  store i64 %t261, ptr %l122
  br label %bb48
bb48:
  %t262 = load ptr, ptr %l117, !tbaa !29
  %t263 = load i32, ptr %l118, !tbaa !23
  %t264 = load i64, ptr %l122, !tbaa !24
  %t265 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eConst(ptr %v0, ptr %t262, i32 %t263, i64 %t264)
  store i32 %t265, ptr %l123
  br label %bb49
bb49:
  %t266 = load i32, ptr %l123, !tbaa !23
  store i32 %t266, ptr %l115, !tbaa !23
  br label %bb50
bb50:
  %t267 = load i32, ptr %l115, !tbaa !23
  store i32 %t267, ptr %rv
  br label %ret
bb51:
  store i1 false, ptr %l9, !tbaa !21
  %t268 = load ptr, ptr %l0, !tbaa !29
  %t270 = getelementptr %"compiler/generic:Program", ptr %t268, i32 0, i32 55
  store ptr %t270, ptr %l10, !tbaa !29
  store i64 0, ptr %l11, !tbaa !24
  br label %bb52
bb52:
  %t272 = load i64, ptr %l11, !tbaa !24
  store i64 %t272, ptr %l126, !tbaa !24
  %t273 = load ptr, ptr %l10, !tbaa !29
  %t275 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fgeneric_3aConstAsk_3e_2eLen_H192b02349624a37821a23e7def80c714(ptr %v0, ptr %t273)
  store i64 %t275, ptr %l128
  br label %bb53
bb53:
  %t276 = load i64, ptr %l126, !tbaa !24
  %t277 = load i64, ptr %l128, !tbaa !24
  %t278 = icmp slt i64 %t276, %t277
  %t280 = xor i1 %t278, true
  br i1 %t280, label %bb54, label %bb55
bb54:
  br label %bb63
bb55:
  br label %bb56
bb56:
  %t282 = load ptr, ptr %l10, !tbaa !29
  %t283 = load i64, ptr %l11, !tbaa !24
  %t286 = call %"compiler/generic:ConstAsk" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fgeneric_3aConstAsk_3e_2eAt__H3f4459851a287fa27378a94ef8fff763(ptr %v0, ptr %v0, ptr %t282, i64 %t283)
  store %"compiler/generic:ConstAsk" %t286, ptr %l133
  br label %bb57
bb57:
  %t287 = load %"compiler/generic:ConstAsk", ptr %l133
  store %"compiler/generic:ConstAsk" %t287, ptr %l12
  %t288 = getelementptr %"compiler/generic:ConstAsk", ptr %l12, i32 0, i32 6
  %t289 = load { i64, ptr }, ptr %t288, !tbaa !27
  %t290 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t293 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %v0, { i64, ptr } %t289, { i64, ptr } %t290)
  store i1 %t293, ptr %l136
  br label %bb58
bb58:
  %t294 = load i1, ptr %l136, !tbaa !21
  br i1 %t294, label %bb59, label %bb60
bb59:
  store i1 true, ptr %l9, !tbaa !21
  br label %bb61
bb60:
  br label %bb61
bb61:
  br label %bb62
bb62:
  %t295 = load i64, ptr %l11, !tbaa !24
  %t297 = add i64 %t295, 1
  store i64 %t297, ptr %l11, !tbaa !24
  br label %bb52
bb63:
  %t299 = load i1, ptr %l9, !tbaa !21
  %t301 = xor i1 %t299, true
  br i1 %t301, label %bb64, label %bb65
bb64:
  %t303 = load ptr, ptr %l1, !tbaa !29
  %t305 = getelementptr %"compiler/generic:Context", ptr %t303, i32 0, i32 2
  %t307 = call i64 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fsource_3aNameId_2c_20compil_H0e73c22773457b60eb954c2c4a2643e9(ptr %v1, ptr %t305)
  store i64 %t307, ptr %l143
  br label %bb66
bb65:
  br label %bb86
bb66:
  %t308 = load i64, ptr %l143, !tbaa !24
  %t309 = icmp sge i64 %t308, 0
  br i1 %t309, label %bb67, label %bb68
bb67:
  %t311 = load i64, ptr %l143, !tbaa !24
  %t312 = icmp sle i64 %t311, 2305843009213693951
  br i1 %t312, label %bb69, label %bb70
bb68:
  call void @__olang_check_failed(ptr @olang_loc_846e8cf19a14b6db_3af1bf273e789227)
  unreachable
bb69:
  %t314 = load i64, ptr %l143, !tbaa !24
  %t315 = mul i64 %t314, 4
  %t316 = call ptr @__olang_scope_alloc_zeroed(ptr %v0, i64 %t315)
  %t317 = insertvalue { i64, ptr } undef, i64 %t314, 0
  %t318 = insertvalue { i64, ptr } %t317, ptr %t316, 1
  store { i64, ptr } %t318, ptr %l13, !tbaa !27
  %t320 = load ptr, ptr %l1, !tbaa !29
  %t322 = getelementptr %"compiler/generic:Context", ptr %t320, i32 0, i32 2
  %t324 = call i64 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fsource_3aNameId_2c_20compil_H0e73c22773457b60eb954c2c4a2643e9(ptr %v1, ptr %t322)
  store i64 %t324, ptr %l149
  br label %bb71
bb70:
  call void @__olang_check_failed(ptr @olang_loc_846e8cf19a14b6db_3af1bf273e789227)
  unreachable
bb71:
  %t325 = load i64, ptr %l149, !tbaa !24
  %t326 = icmp sge i64 %t325, 0
  br i1 %t326, label %bb72, label %bb73
bb72:
  %t328 = load i64, ptr %l149, !tbaa !24
  %t329 = icmp sle i64 %t328, 2305843009213693951
  br i1 %t329, label %bb74, label %bb75
bb73:
  call void @__olang_check_failed(ptr @olang_loc_7486412f18d83346_49a9869342f97632)
  unreachable
bb74:
  %t331 = load i64, ptr %l149, !tbaa !24
  %t332 = mul i64 %t331, 4
  %t333 = call ptr @__olang_scope_alloc_zeroed(ptr %v0, i64 %t332)
  %t334 = insertvalue { i64, ptr } undef, i64 %t331, 0
  %t335 = insertvalue { i64, ptr } %t334, ptr %t333, 1
  store { i64, ptr } %t335, ptr %l14, !tbaa !27
  store i64 0, ptr %l15, !tbaa !24
  %t337 = load ptr, ptr %l1, !tbaa !29
  %t339 = getelementptr %"compiler/generic:Context", ptr %t337, i32 0, i32 2
  %t341 = call %"std/prelude/map:MapIter.bf5835bb10600fe6a7fc1da14a6360d9" @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fsource_3aNameId_2c_20compil_Ha72624ba64524ee3315305b5d1bfb369(ptr %v1, ptr %v1, ptr %t339)
  store %"std/prelude/map:MapIter.bf5835bb10600fe6a7fc1da14a6360d9" %t341, ptr %l155
  br label %bb76
bb75:
  call void @__olang_check_failed(ptr @olang_loc_7486412f18d83346_49a9869342f97632)
  unreachable
bb76:
  %t342 = load %"std/prelude/map:MapIter.bf5835bb10600fe6a7fc1da14a6360d9", ptr %l155
  store %"std/prelude/map:MapIter.bf5835bb10600fe6a7fc1da14a6360d9" %t342, ptr %l16
  br label %bb77
bb77:
  %t344 = call { i32, %"std/prelude/map:MapEntry.91de8c8eb84d52d1e58996aec31d85aa" } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMapIter_3ccompiler_2fsource_3aNameId_2c_20co_H6cf169b12565f300e9fe11f1c8d55061(ptr %v1, ptr %l16)
  %t345 = extractvalue { i32, %"std/prelude/map:MapEntry.91de8c8eb84d52d1e58996aec31d85aa" } %t344, 1
  %t346 = extractvalue { i32, %"std/prelude/map:MapEntry.91de8c8eb84d52d1e58996aec31d85aa" } %t344, 0
  store i32 %t346, ptr %l159
  %t347 = icmp ne i32 %t346, 0
  br i1 %t347, label %bb79, label %ok.348, !prof !99
ok.348:
  store %"std/prelude/map:MapEntry.91de8c8eb84d52d1e58996aec31d85aa" %t345, ptr %l158
  br label %bb78
bb78:
  %t349 = load %"std/prelude/map:MapEntry.91de8c8eb84d52d1e58996aec31d85aa", ptr %l158
  store %"std/prelude/map:MapEntry.91de8c8eb84d52d1e58996aec31d85aa" %t349, ptr %l156
  br label %bb81
bb79:
  %t350 = load i32, ptr %l159, !tbaa !23
  %t351 = ashr i32 %t350, 16
  %t353 = icmp eq i32 %t351, 1
  store i1 %t353, ptr %l161, !tbaa !21
  br label %bb80
bb80:
  br label %bb83
bb81:
  %t354 = load %"std/prelude/map:MapEntry.91de8c8eb84d52d1e58996aec31d85aa", ptr %l156
  store %"std/prelude/map:MapEntry.91de8c8eb84d52d1e58996aec31d85aa" %t354, ptr %l17
  %t355 = getelementptr %"std/prelude/map:MapEntry.91de8c8eb84d52d1e58996aec31d85aa", ptr %l17, i32 0, i32 0
  %t356 = load i32, ptr %t355, !tbaa !23
  %t358 = getelementptr %"std/prelude/map:MapEntry.91de8c8eb84d52d1e58996aec31d85aa", ptr %l17, i32 0, i32 1
  %t359 = load i32, ptr %t358, !tbaa !23
  %t361 = load { i64, ptr }, ptr %l13, !tbaa !27
  store { i64, ptr } %t361, ptr %l164, !tbaa !27
  %t362 = load i64, ptr %l15, !tbaa !24
  %t366 = getelementptr { i64, ptr }, ptr %l164, i32 0, i32 1
  %t367 = load ptr, ptr %t366, !tbaa !27
  %t368 = getelementptr i32, ptr %t367, i64 %t362
  store i32 %t356, ptr %t368, !tbaa !33
  %t369 = load { i64, ptr }, ptr %l14, !tbaa !27
  store { i64, ptr } %t369, ptr %l167, !tbaa !27
  %t370 = load i64, ptr %l15, !tbaa !24
  %t374 = getelementptr { i64, ptr }, ptr %l167, i32 0, i32 1
  %t375 = load ptr, ptr %t374, !tbaa !27
  %t376 = getelementptr i32, ptr %t375, i64 %t370
  store i32 %t359, ptr %t376, !tbaa !33
  %t377 = load i64, ptr %l15, !tbaa !24
  %t379 = add i64 %t377, 1
  store i64 %t379, ptr %l15, !tbaa !24
  br label %bb82
bb82:
  br label %bb77
bb83:
  %t381 = load ptr, ptr %l0, !tbaa !29
  %t383 = getelementptr %"compiler/generic:Program", ptr %t381, i32 0, i32 55
  store ptr %t383, ptr %l173, !tbaa !29
  %t384 = load ptr, ptr %l1, !tbaa !29
  %t386 = getelementptr %"compiler/generic:Context", ptr %t384, i32 0, i32 0
  %t387 = load i64, ptr %t386, !tbaa !24
  %t388 = load ptr, ptr %l4, !tbaa !29
  %t389 = load i32, ptr %l3, !tbaa !23
  %t390 = load ptr, ptr %l1, !tbaa !29
  %t392 = getelementptr %"compiler/generic:Context", ptr %t390, i32 0, i32 1
  %t393 = load i64, ptr %t392, !tbaa !24
  %t394 = load { i64, ptr }, ptr %l13, !tbaa !27
  %t395 = load { i64, ptr }, ptr %l14, !tbaa !27
  %t396 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t404 = call %"compiler/generic:ConstAsk" @compiler_2fgeneric_3aConstAsk_2ector(ptr %v2, ptr %v0, ptr %v0, ptr %v0, ptr %v0, i64 %t387, ptr %t388, i32 %t389, i64 %t393, { i64, ptr } %t394, { i64, ptr } %t395, { i64, ptr } %t396)
  store %"compiler/generic:ConstAsk" %t404, ptr %l183
  br label %bb84
bb84:
  %t405 = load ptr, ptr %l173, !tbaa !29
  %t406 = load %"compiler/generic:ConstAsk", ptr %l183
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fgeneric_3aConstAsk_3e_2ePus_H9314813d35e39659e36ddfdc05758427(ptr %v0, ptr %v0, ptr %t405, %"compiler/generic:ConstAsk" %t406)
  br label %bb85
bb85:
  br label %bb86
bb86:
  br label %bb87
bb87:
  %t407 = load ptr, ptr %l0, !tbaa !29
  %t409 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eUnknownConst(ptr %v0, ptr %t407)
  store i32 %t409, ptr %l185
  br label %bb88
bb88:
  %t410 = load i32, ptr %l185, !tbaa !23
  store i32 %t410, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2econstraintKey(ptr %v0, ptr %v1, ptr %a0, i64 %a1, ptr %a2) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca %"compiler/source:Span"
  %l4 = alloca %"compiler/names:Ref"
  %l5 = alloca ptr
  %l6 = alloca i1
  %l12 = alloca ptr
  %l15 = alloca i64
  %l17 = alloca %"compiler/names:Ref"
  %l20 = alloca i1
  %l26 = alloca i32
  %l27 = alloca i64
  %rv = alloca i64
  store ptr %a0, ptr %l0
  store ptr %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l2, !tbaa !29
  store ptr %t1, ptr %l5, !tbaa !29
  store i1 false, ptr %l6, !tbaa !21
  %t2 = load ptr, ptr %l5, !tbaa !29
  %t3 = icmp ne ptr %t2, null
  br i1 %t3, label %bb1, label %bb2
bb1:
  %t5 = load ptr, ptr %l5, !tbaa !29
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 8}
  %t8 = icmp eq i64 %t6, 0
  store i1 %t8, ptr %l6, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l6, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  %t10 = load ptr, ptr %l2, !tbaa !29
  %t12 = getelementptr { i64, [5 x i64] }, ptr %t10, i32 0, i32 1
  %t13 = getelementptr { %"compiler/source:Span", { i64, ptr }, { i64, ptr } }, ptr %t12, i32 0, i32 0
  %t14 = load %"compiler/source:Span", ptr %t13
  store %"compiler/source:Span" %t14, ptr %l3
  br label %bb5
bb4:
  br label %bb16
bb5:
  %t16 = load ptr, ptr %l0, !tbaa !29
  %t18 = getelementptr %"compiler/generic:Program", ptr %t16, i32 0, i32 1
  %t19 = load ptr, ptr %t18, !tbaa !29
  store ptr %t19, ptr %l12, !tbaa !29
  %t20 = load ptr, ptr %l0, !tbaa !29
  %t24 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2efile(ptr %v0, ptr %t20, i64 %a1)
  store i64 %t24, ptr %l15
  br label %bb6
bb6:
  %t25 = getelementptr %"compiler/source:Span", ptr %l3, i32 0, i32 0
  %t26 = load i32, ptr %t25, !tbaa !23
  %t27 = load ptr, ptr %l12, !tbaa !29
  %t28 = load i64, ptr %l15, !tbaa !24
  %t30 = call %"compiler/names:Ref" @compiler_2fnames_2ecompiler_2fnames_3aResolver_2eUse(ptr %v0, ptr %t27, i64 %t28, i32 %t26)
  store %"compiler/names:Ref" %t30, ptr %l17
  br label %bb7
bb7:
  %t31 = load %"compiler/names:Ref", ptr %l17
  store %"compiler/names:Ref" %t31, ptr %l4
  %t32 = getelementptr %"compiler/names:Ref", ptr %l4, i32 0, i32 0
  %t33 = load i32, ptr %t32, !range !{i32 0, i32 9}
  %t35 = trunc i64 4 to i32
  %t36 = icmp eq i32 %t33, %t35
  br i1 %t36, label %bb8, label %bb9
bb8:
  %t38 = getelementptr %"compiler/names:Ref", ptr %l4, i32 0, i32 2
  %t39 = load i64, ptr %t38, !tbaa !24
  %t41 = icmp sge i64 %t39, 0
  store i1 %t41, ptr %l20, !tbaa !21
  br label %bb10
bb9:
  store i1 false, ptr %l20, !tbaa !21
  br label %bb10
bb10:
  %t43 = load i1, ptr %l20, !tbaa !21
  br i1 %t43, label %bb11, label %bb12
bb11:
  %t44 = load ptr, ptr %l0, !tbaa !29
  %t45 = getelementptr %"compiler/names:Ref", ptr %l4, i32 0, i32 1
  %t46 = load i64, ptr %t45, !tbaa !24
  %t47 = getelementptr %"compiler/names:Ref", ptr %l4, i32 0, i32 2
  %t48 = load i64, ptr %t47, !tbaa !24
  %t52 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eDeclFor(ptr %v0, ptr %t44, i64 %t46, i64 %t48)
  store i32 %t52, ptr %l26
  br label %bb13
bb12:
  br label %bb15
bb13:
  %t53 = load i32, ptr %l26, !tbaa !23
  %t54 = call i64 @compiler_2fgeneric_2ekeyTrait(i32 %t53)
  store i64 %t54, ptr %l27
  br label %bb14
bb14:
  %t55 = load i64, ptr %l27, !tbaa !24
  store i64 %t55, ptr %rv
  br label %ret
bb15:
  store i64 -1, ptr %rv
  br label %ret
bb16:
  br i1 true, label %bb17, label %bb18
bb17:
  br label %bb19
bb18:
  br label %bb20
bb19:
  store i64 -1, ptr %rv
  br label %ret
bb20:
  call void @__olang_check_failed(ptr @olang_loc_6254d719be644cb8_ecba73ecf161ba54)
  unreachable
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local void @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2edeclVars(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca i64
  %l3 = alloca ptr
  %l4 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l5 = alloca { i64, ptr }
  %l6 = alloca i64
  %l7 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca i64
  %l12 = alloca i64
  %l13 = alloca i64
  %l14 = alloca i64
  %l15 = alloca %"compiler/generic:Context"
  %l16 = alloca i64
  %l17 = alloca i64
  %l18 = alloca i64
  %l19 = alloca i64
  %l20 = alloca i64
  %l21 = alloca i64
  %l22 = alloca i64
  %l23 = alloca ptr
  %l24 = alloca i32
  %l25 = alloca %"compiler/generic:varRow"
  %l27 = alloca i64
  %l28 = alloca i64
  %l32 = alloca i64
  %l33 = alloca i32
  %l37 = alloca ptr
  %l38 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l42 = alloca i1
  %l55 = alloca { i64, ptr }
  %l63 = alloca ptr
  %l64 = alloca i64
  %l66 = alloca { i64, ptr }
  %l69 = alloca i1
  %l80 = alloca i64
  %l83 = alloca i64
  %l102 = alloca { i64, ptr }
  %l107 = alloca ptr
  %l110 = alloca %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0"
  %l115 = alloca %"compiler/generic:Context"
  %l116 = alloca i64
  %l120 = alloca i64
  %l121 = alloca i32
  %l128 = alloca i64
  %l131 = alloca i64
  %l150 = alloca { i64, ptr }
  %l159 = alloca i32
  %l165 = alloca %"compiler/generic:varRow"
  %l167 = alloca ptr
  %l170 = alloca i64
  %l175 = alloca %"compiler/generic:varRow"
  %s0 = alloca %olang.scope
  %s9 = alloca %olang.scope
  %s12 = alloca %olang.scope
  %t183 = alloca %"compiler/generic:Context", align 8
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load i32, ptr %l1, !tbaa !23
  %t3 = call i64 @compiler_2fgeneric_2eDeclOwner(i32 %t1)
  store i64 %t3, ptr %l27
  br label %bb1
bb1:
  %t4 = load i64, ptr %l27, !tbaa !24
  store i64 %t4, ptr %l2, !tbaa !24
  %t5 = load ptr, ptr %l0, !tbaa !29
  %t7 = getelementptr %"compiler/generic:Program", ptr %t5, i32 0, i32 14
  %t8 = load i64, ptr %l2, !tbaa !24
  %t11 = call { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2eGet_3cI64_2c_20I64_3e(ptr %v0, ptr %t7, i64 %t8)
  %t12 = extractvalue { i32, i64 } %t11, 1
  %t13 = extractvalue { i32, i64 } %t11, 0
  store i32 %t13, ptr %l33
  %t14 = icmp ne i32 %t13, 0
  br i1 %t14, label %bb3, label %ok.15, !prof !99
ok.15:
  store i64 %t12, ptr %l32
  br label %bb2
bb2:
  %t16 = load i64, ptr %l32, !tbaa !24
  store i64 %t16, ptr %l28, !tbaa !24
  br label %bb5
bb3:
  br label %bb4
bb4:
  store i64 -1, ptr %l28, !tbaa !24
  br label %bb5
bb5:
  %t17 = load i64, ptr %l28, !tbaa !24
  %t18 = icmp sge i64 %t17, 0
  br i1 %t18, label %bb6, label %bb7
bb6:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb7:
  br label %bb8
bb8:
  %t20 = load ptr, ptr %l0, !tbaa !29
  %t21 = load i32, ptr %l1, !tbaa !23
  %t24 = call ptr @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2etypeDecl(ptr %v0, ptr %v0, ptr %t20, i32 %t21)
  store ptr %t24, ptr %l37
  br label %bb9
bb9:
  %t25 = load ptr, ptr %l37, !tbaa !29
  store ptr %t25, ptr %l3, !tbaa !29
  %t26 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aNameId_3e_2ector(ptr %s0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t26, ptr %l38
  br label %bb10
bb10:
  %t27 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l38
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t27, ptr %l4
  %t28 = load ptr, ptr %l3, !tbaa !29
  %t30 = icmp eq ptr %t28, null
  %t32 = xor i1 %t30, true
  br i1 %t32, label %bb11, label %bb12
bb11:
  %t34 = load ptr, ptr %l3, !tbaa !29
  %t36 = getelementptr %"compiler/ast:TypeDecl", ptr %t34, i32 0, i32 1
  %t37 = load { i64, ptr }, ptr %t36, !tbaa !27
  %t39 = extractvalue { i64, ptr } %t37, 0
  %t41 = icmp sgt i64 %t39, 0
  store i1 %t41, ptr %l42, !tbaa !21
  br label %bb13
bb12:
  store i1 false, ptr %l42, !tbaa !21
  br label %bb13
bb13:
  %t43 = load i1, ptr %l42, !tbaa !21
  br i1 %t43, label %bb14, label %bb15
bb14:
  %t44 = load ptr, ptr %l3, !tbaa !29
  %t46 = getelementptr %"compiler/ast:TypeDecl", ptr %t44, i32 0, i32 1
  %t47 = load { i64, ptr }, ptr %t46, !tbaa !27
  store { i64, ptr } %t47, ptr %l5, !tbaa !27
  store i64 0, ptr %l6, !tbaa !24
  %t49 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t51 = extractvalue { i64, ptr } %t49, 0
  store i64 %t51, ptr %l7, !tbaa !24
  br label %bb16
bb15:
  br label %bb23
bb16:
  %t53 = load i64, ptr %l6, !tbaa !24
  %t54 = load i64, ptr %l7, !tbaa !24
  %t57 = icmp slt i64 %t53, %t54
  %t59 = xor i1 %t57, true
  br i1 %t59, label %bb17, label %bb18
bb17:
  br label %bb22
bb18:
  br label %bb19
bb19:
  %t61 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t61, ptr %l55, !tbaa !27
  %t62 = load i64, ptr %l6, !tbaa !24
  %t64 = getelementptr { i64, ptr }, ptr %l55, i32 0, i32 1
  %t65 = load ptr, ptr %t64, !tbaa !27
  %t66 = getelementptr ptr, ptr %t65, i64 %t62
  %t67 = load ptr, ptr %t66, !tbaa !39
  %t71 = getelementptr %"compiler/ast:TypeParam", ptr %t67, i32 0, i32 1
  %t72 = load i32, ptr %t71, !tbaa !23
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aNameId_3e_2ePush_3ccompiler_2fsource_3aNameId_3e(ptr %s0, ptr %l4, i32 %t72)
  br label %bb20
bb20:
  br label %bb21
bb21:
  %t75 = load i64, ptr %l6, !tbaa !24
  %t77 = add i64 %t75, 1
  store i64 %t77, ptr %l6, !tbaa !24
  br label %bb16
bb22:
  br label %bb23
bb23:
  %t79 = load ptr, ptr %l0, !tbaa !29
  store ptr %t79, ptr %l63, !tbaa !29
  %t80 = load i64, ptr %l2, !tbaa !24
  store i64 %t80, ptr %l64, !tbaa !24
  %t82 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aNameId_3e_2eToArra_H4d02a0b2e27e8f31ffc99daa43750593(ptr %s0, ptr %s0, ptr %l4)
  store { i64, ptr } %t82, ptr %l66
  br label %bb24
bb24:
  %t83 = load ptr, ptr %l63, !tbaa !29
  %t84 = load i64, ptr %l64, !tbaa !24
  %t85 = load { i64, ptr }, ptr %l66, !tbaa !27
  call void @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eaddVars(ptr %v0, ptr %s0, ptr %t83, i64 %t84, { i64, ptr } %t85)
  br label %bb25
bb25:
  %t86 = load ptr, ptr %l3, !tbaa !29
  %t88 = icmp eq ptr %t86, null
  br i1 %t88, label %bb26, label %bb27
bb26:
  store i1 true, ptr %l69, !tbaa !21
  br label %bb28
bb27:
  %t90 = load ptr, ptr %l3, !tbaa !29
  %t92 = getelementptr %"compiler/ast:TypeDecl", ptr %t90, i32 0, i32 1
  %t93 = load { i64, ptr }, ptr %t92, !tbaa !27
  %t95 = extractvalue { i64, ptr } %t93, 0
  %t97 = icmp eq i64 %t95, 0
  store i1 %t97, ptr %l69, !tbaa !21
  br label %bb28
bb28:
  %t99 = load i1, ptr %l69, !tbaa !21
  br i1 %t99, label %bb29, label %bb30
bb29:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb30:
  br label %bb31
bb31:
  store i64 0, ptr %l9, !tbaa !24
  %t100 = load ptr, ptr %l3, !tbaa !29
  %t102 = getelementptr %"compiler/ast:TypeDecl", ptr %t100, i32 0, i32 1
  %t103 = load { i64, ptr }, ptr %t102, !tbaa !27
  %t105 = extractvalue { i64, ptr } %t103, 0
  store i64 %t105, ptr %l10, !tbaa !24
  store i64 1, ptr %l11, !tbaa !24
  %t107 = load i64, ptr %l10, !tbaa !24
  %t108 = load i64, ptr %l9, !tbaa !24
  %t111 = icmp sgt i64 %t107, %t108
  br i1 %t111, label %bb32, label %bb33
bb32:
  %t113 = load i64, ptr %l11, !tbaa !24
  %t115 = icmp sgt i64 %t113, 0
  br i1 %t115, label %bb34, label %bb35
bb33:
  store i64 0, ptr %l80, !tbaa !24
  br label %bb37
bb34:
  %t117 = load i64, ptr %l10, !tbaa !24
  %t118 = load i64, ptr %l9, !tbaa !24
  %t121 = sub i64 %t117, %t118
  %t122 = load i64, ptr %l11, !tbaa !24
  %t125 = add i64 %t121, %t122
  %t127 = sub i64 %t125, 1
  %t128 = load i64, ptr %l11, !tbaa !24
  %t131 = sdiv i64 %t127, %t128
  store i64 %t131, ptr %l83, !tbaa !24
  br label %bb36
bb35:
  store i64 0, ptr %l83, !tbaa !24
  br label %bb36
bb36:
  %t133 = load i64, ptr %l83, !tbaa !24
  store i64 %t133, ptr %l80, !tbaa !24
  br label %bb37
bb37:
  %t134 = load i64, ptr %l80, !tbaa !24
  store i64 %t134, ptr %l12, !tbaa !24
  store i64 0, ptr %l13, !tbaa !24
  br label %bb38
bb38:
  %t135 = load i64, ptr %l13, !tbaa !24
  %t136 = load i64, ptr %l12, !tbaa !24
  %t139 = icmp slt i64 %t135, %t136
  %t141 = xor i1 %t139, true
  br i1 %t141, label %bb39, label %bb40
bb39:
  br label %bb48
bb40:
  br label %bb41
bb41:
  %t143 = load i64, ptr %l9, !tbaa !24
  %t144 = load i64, ptr %l13, !tbaa !24
  %t145 = load i64, ptr %l11, !tbaa !24
  %t148 = mul i64 %t144, %t145
  %t151 = add i64 %t143, %t148
  store i64 %t151, ptr %l14, !tbaa !24
  %t153 = load ptr, ptr %l3, !tbaa !29
  %t155 = getelementptr %"compiler/ast:TypeDecl", ptr %t153, i32 0, i32 1
  %t156 = load { i64, ptr }, ptr %t155, !tbaa !27
  store { i64, ptr } %t156, ptr %l102, !tbaa !27
  %t157 = load i64, ptr %l14, !tbaa !24
  %t159 = getelementptr { i64, ptr }, ptr %l102, i32 0, i32 1
  %t160 = load ptr, ptr %t159, !tbaa !27
  %t161 = getelementptr ptr, ptr %t160, i64 %t157
  %t162 = load ptr, ptr %t161, !tbaa !39
  %t164 = getelementptr %"compiler/ast:TypeParam", ptr %t162, i32 0, i32 4
  %t165 = load i1, ptr %t164, !tbaa !21
  br i1 %t165, label %bb42, label %bb43
bb42:
  store %olang.scope zeroinitializer, ptr %s9
  %t167 = load ptr, ptr %l0, !tbaa !29
  %t169 = getelementptr %"compiler/generic:Program", ptr %t167, i32 0, i32 17
  store ptr %t169, ptr %l107, !tbaa !29
  %t170 = load i64, ptr %l2, !tbaa !24
  %t171 = load i64, ptr %l14, !tbaa !24
  %t174 = call %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" @std_2fpair_3aPair_3cI64_2c_20I64_3e_2ector(ptr %s9, i64 %t170, i64 %t171)
  store %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t174, ptr %l110
  br label %bb44
bb43:
  br label %bb46
bb44:
  %t175 = load ptr, ptr %l107, !tbaa !29
  %t176 = load %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %l110
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H1308596c866d4be061d9da9113abde88(ptr %v0, ptr %t175, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t176, i1 true)
  br label %bb45
bb45:
  call void @__olang_scope_close(ptr %s9)
  br label %bb46
bb46:
  br label %bb47
bb47:
  %t177 = load i64, ptr %l13, !tbaa !24
  %t179 = add i64 %t177, 1
  store i64 %t179, ptr %l13, !tbaa !24
  br label %bb38
bb48:
  %t181 = load ptr, ptr %l0, !tbaa !29
  %t182 = load i32, ptr %l1, !tbaa !23
  call void @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2edeclContext(ptr %t183, ptr %v0, ptr %s0, ptr %t181, i32 %t182)
  call void @llvm.memmove.p0.p0.i64(ptr %l115, ptr %t183, i64 160, i1 false)
  br label %bb49
bb49:
  call void @llvm.memmove.p0.p0.i64(ptr %l15, ptr %l115, i64 160, i1 false)
  %t186 = load ptr, ptr %l0, !tbaa !29
  %t188 = getelementptr %"compiler/generic:Program", ptr %t186, i32 0, i32 14
  %t189 = load i64, ptr %l2, !tbaa !24
  %t192 = call { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2eGet_3cI64_2c_20I64_3e(ptr %v0, ptr %t188, i64 %t189)
  %t193 = extractvalue { i32, i64 } %t192, 1
  %t194 = extractvalue { i32, i64 } %t192, 0
  store i32 %t194, ptr %l121
  %t195 = icmp ne i32 %t194, 0
  br i1 %t195, label %bb51, label %ok.196, !prof !99
ok.196:
  store i64 %t193, ptr %l120
  br label %bb50
bb50:
  %t197 = load i64, ptr %l120, !tbaa !24
  store i64 %t197, ptr %l116, !tbaa !24
  br label %bb53
bb51:
  br label %bb52
bb52:
  store i64 0, ptr %l116, !tbaa !24
  br label %bb53
bb53:
  %t198 = load i64, ptr %l116, !tbaa !24
  store i64 %t198, ptr %l16, !tbaa !24
  store i64 0, ptr %l17, !tbaa !24
  %t199 = load ptr, ptr %l3, !tbaa !29
  %t201 = getelementptr %"compiler/ast:TypeDecl", ptr %t199, i32 0, i32 1
  %t202 = load { i64, ptr }, ptr %t201, !tbaa !27
  %t204 = extractvalue { i64, ptr } %t202, 0
  store i64 %t204, ptr %l18, !tbaa !24
  store i64 1, ptr %l19, !tbaa !24
  %t206 = load i64, ptr %l18, !tbaa !24
  %t207 = load i64, ptr %l17, !tbaa !24
  %t210 = icmp sgt i64 %t206, %t207
  br i1 %t210, label %bb54, label %bb55
bb54:
  %t212 = load i64, ptr %l19, !tbaa !24
  %t214 = icmp sgt i64 %t212, 0
  br i1 %t214, label %bb56, label %bb57
bb55:
  store i64 0, ptr %l128, !tbaa !24
  br label %bb59
bb56:
  %t216 = load i64, ptr %l18, !tbaa !24
  %t217 = load i64, ptr %l17, !tbaa !24
  %t220 = sub i64 %t216, %t217
  %t221 = load i64, ptr %l19, !tbaa !24
  %t224 = add i64 %t220, %t221
  %t226 = sub i64 %t224, 1
  %t227 = load i64, ptr %l19, !tbaa !24
  %t230 = sdiv i64 %t226, %t227
  store i64 %t230, ptr %l131, !tbaa !24
  br label %bb58
bb57:
  store i64 0, ptr %l131, !tbaa !24
  br label %bb58
bb58:
  %t232 = load i64, ptr %l131, !tbaa !24
  store i64 %t232, ptr %l128, !tbaa !24
  br label %bb59
bb59:
  %t233 = load i64, ptr %l128, !tbaa !24
  store i64 %t233, ptr %l20, !tbaa !24
  store i64 0, ptr %l21, !tbaa !24
  br label %bb60
bb60:
  store %olang.scope zeroinitializer, ptr %s12
  %t234 = load i64, ptr %l21, !tbaa !24
  %t235 = load i64, ptr %l20, !tbaa !24
  %t238 = icmp slt i64 %t234, %t235
  %t240 = xor i1 %t238, true
  br i1 %t240, label %bb61, label %bb62
bb61:
  call void @__olang_scope_close(ptr %s12)
  br label %bb72
bb62:
  br label %bb63
bb63:
  %t242 = load i64, ptr %l17, !tbaa !24
  %t243 = load i64, ptr %l21, !tbaa !24
  %t244 = load i64, ptr %l19, !tbaa !24
  %t247 = mul i64 %t243, %t244
  %t250 = add i64 %t242, %t247
  store i64 %t250, ptr %l22, !tbaa !24
  %t252 = load ptr, ptr %l3, !tbaa !29
  %t254 = getelementptr %"compiler/ast:TypeDecl", ptr %t252, i32 0, i32 1
  %t255 = load { i64, ptr }, ptr %t254, !tbaa !27
  store { i64, ptr } %t255, ptr %l150, !tbaa !27
  %t256 = load i64, ptr %l22, !tbaa !24
  %t258 = getelementptr { i64, ptr }, ptr %l150, i32 0, i32 1
  %t259 = load ptr, ptr %t258, !tbaa !27
  %t260 = getelementptr ptr, ptr %t259, i64 %t256
  %t261 = load ptr, ptr %t260, !tbaa !39
  store ptr %t261, ptr %l23, !tbaa !29
  %t263 = load ptr, ptr %l23, !tbaa !29
  %t265 = getelementptr %"compiler/ast:TypeParam", ptr %t263, i32 0, i32 2
  %t266 = load ptr, ptr %t265, !tbaa !29
  %t268 = icmp eq ptr %t266, null
  br i1 %t268, label %bb64, label %bb65
bb64:
  call void @__olang_scope_close(ptr %s12)
  br label %bb71
bb65:
  br label %bb66
bb66:
  %t270 = load ptr, ptr %l0, !tbaa !29
  %t271 = load ptr, ptr %l23, !tbaa !29
  %t275 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eBoundOf(ptr %v0, ptr %s0, ptr %v0, ptr %t270, ptr %l15, ptr %t271)
  store i32 %t275, ptr %l159
  br label %bb67
bb67:
  %t276 = load i32, ptr %l159, !tbaa !23
  store i32 %t276, ptr %l24, !tbaa !23
  %t277 = load ptr, ptr %l0, !tbaa !29
  %t279 = getelementptr %"compiler/generic:Program", ptr %t277, i32 0, i32 16
  %t280 = load i64, ptr %l16, !tbaa !24
  %t281 = load i64, ptr %l22, !tbaa !24
  %t284 = add i64 %t280, %t281
  %t287 = call %"compiler/generic:varRow" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fgeneric_3avarRow_3e_2eAt_3ccompiler_2fgeneric_3avarRow_3e(ptr %v0, ptr %t279, i64 %t284)
  store %"compiler/generic:varRow" %t287, ptr %l165
  br label %bb68
bb68:
  %t288 = load %"compiler/generic:varRow", ptr %l165
  store %"compiler/generic:varRow" %t288, ptr %l25
  %t289 = load ptr, ptr %l0, !tbaa !29
  %t291 = getelementptr %"compiler/generic:Program", ptr %t289, i32 0, i32 16
  store ptr %t291, ptr %l167, !tbaa !29
  %t292 = load i64, ptr %l16, !tbaa !24
  %t293 = load i64, ptr %l22, !tbaa !24
  %t296 = add i64 %t292, %t293
  store i64 %t296, ptr %l170, !tbaa !24
  %t297 = load i64, ptr %l2, !tbaa !24
  %t298 = getelementptr %"compiler/generic:varRow", ptr %l25, i32 0, i32 1
  %t299 = load i32, ptr %t298, !tbaa !23
  %t300 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t301 = load i32, ptr %l24, !tbaa !23
  %t306 = call %"compiler/generic:varRow" @compiler_2fgeneric_3avarRow_2ector(ptr %s12, i64 %t297, i32 %t299, i32 %t300, i32 %t301)
  store %"compiler/generic:varRow" %t306, ptr %l175
  br label %bb69
bb69:
  %t307 = load ptr, ptr %l167, !tbaa !29
  %t308 = load i64, ptr %l170, !tbaa !24
  %t309 = load %"compiler/generic:varRow", ptr %l175
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fgeneric_3avarRow_3e_2eSetAt_H989a0ed1a318d7d0cbb6cc41385b33d2(ptr %v0, ptr %t307, i64 %t308, %"compiler/generic:varRow" %t309)
  br label %bb70
bb70:
  call void @__olang_scope_close(ptr %s12)
  br label %bb71
bb71:
  %t310 = load i64, ptr %l21, !tbaa !24
  %t312 = add i64 %t310, 1
  store i64 %t312, ptr %l21, !tbaa !24
  br label %bb60
bb72:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local ptr @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eerrorDecl(ptr %v0, ptr %v1, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l4 = alloca ptr
  %l8 = alloca i64
  %l9 = alloca ptr
  %l11 = alloca { i64, ptr }
  %l15 = alloca i32
  %l16 = alloca ptr
  %rv = alloca ptr
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/generic:Program", ptr %t1, i32 0, i32 0
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t6 = getelementptr %"compiler/load:Loader", ptr %t4, i32 0, i32 10
  store ptr %t6, ptr %l4, !tbaa !29
  %t7 = load ptr, ptr %l0, !tbaa !29
  %t9 = getelementptr %"compiler/generic:Program", ptr %t7, i32 0, i32 2
  %t10 = load i32, ptr %l1, !tbaa !23
  %t13 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclModule(ptr %v0, ptr %t9, i32 %t10)
  store i64 %t13, ptr %l8
  br label %bb1
bb1:
  %t14 = load ptr, ptr %l4, !tbaa !29
  %t15 = load i64, ptr %l8, !tbaa !24
  %t16 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H7bcf2aeb09afa796f4333e6ec8c3f63f(ptr %v0, ptr %v0, ptr %t14, i64 %t15)
  store ptr %t16, ptr %l9
  br label %bb2
bb2:
  %t17 = load ptr, ptr %l9, !tbaa !29
  %t19 = getelementptr %"compiler/load:Module", ptr %t17, i32 0, i32 8
  %t20 = load { i64, ptr }, ptr %t19, !tbaa !27
  store { i64, ptr } %t20, ptr %l11, !tbaa !27
  %t21 = load ptr, ptr %l0, !tbaa !29
  %t23 = getelementptr %"compiler/generic:Program", ptr %t21, i32 0, i32 2
  %t24 = load i32, ptr %l1, !tbaa !23
  %t27 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclName(ptr %v0, ptr %t23, i32 %t24)
  store i32 %t27, ptr %l15
  br label %bb3
bb3:
  %t28 = load { i64, ptr }, ptr %l11, !tbaa !27
  %t29 = load i32, ptr %l15, !tbaa !23
  %t30 = call ptr @compiler_2fgeneric_2eerrorDeclIn(ptr %v0, ptr %v1, { i64, ptr } %t28, i32 %t29)
  store ptr %t30, ptr %l16
  br label %bb4
bb4:
  %t31 = load ptr, ptr %l16, !tbaa !29
  store ptr %t31, ptr %rv
  br label %ret
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

define dso_local i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eerrorList(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, i1 %a2, { i64, ptr } %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i1
  %l3 = alloca { i64, ptr }
  %l4 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l5 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l6 = alloca { i64, ptr }
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca ptr
  %l10 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l12 = alloca i1
  %l19 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l27 = alloca { i64, ptr }
  %l30 = alloca ptr
  %l31 = alloca i64
  %l36 = alloca i1
  %l37 = alloca ptr
  %l38 = alloca i64
  %l50 = alloca ptr
  %l52 = alloca { i64, ptr }
  %l53 = alloca i32
  %s0 = alloca %olang.scope
  %s2 = alloca %olang.scope
  %rv = alloca i32
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store i1 %a2, ptr %l2
  store { i64, ptr } %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2ector(ptr %s0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1, ptr %l10
  br label %bb1
bb1:
  %t2 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l10
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t2, ptr %l4
  %t3 = load i1, ptr %l2, !tbaa !21
  br i1 %t3, label %bb2, label %bb3
bb2:
  %t5 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t7 = extractvalue { i64, ptr } %t5, 0
  %t9 = icmp eq i64 %t7, 0
  store i1 %t9, ptr %l12, !tbaa !21
  br label %bb4
bb3:
  store i1 false, ptr %l12, !tbaa !21
  br label %bb4
bb4:
  %t11 = load i1, ptr %l12, !tbaa !21
  br i1 %t11, label %bb5, label %bb6
bb5:
  %t12 = load i32, ptr @G_2ecompiler_2ftypes_2eDefaultErrT, !tbaa !23
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2ePush_3ccompiler_2ftypes_3aTypeId_3e(ptr %s0, ptr %l4, i32 %t12)
  br label %bb7
bb6:
  br label %bb8
bb7:
  br label %bb8
bb8:
  %t15 = load i1, ptr %l2, !tbaa !21
  br i1 %t15, label %bb9, label %bb10
bb9:
  store %olang.scope zeroinitializer, ptr %s2
  %t17 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2ector(ptr %s2, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t17, ptr %l19
  br label %bb11
bb10:
  br label %bb25
bb11:
  %t18 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l19
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t18, ptr %l5
  %t19 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t19, ptr %l6, !tbaa !27
  store i64 0, ptr %l7, !tbaa !24
  %t21 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t23 = extractvalue { i64, ptr } %t21, 0
  store i64 %t23, ptr %l8, !tbaa !24
  br label %bb12
bb12:
  %t25 = load i64, ptr %l7, !tbaa !24
  %t26 = load i64, ptr %l8, !tbaa !24
  %t29 = icmp slt i64 %t25, %t26
  %t31 = xor i1 %t29, true
  br i1 %t31, label %bb13, label %bb14
bb13:
  br label %bb23
bb14:
  br label %bb15
bb15:
  %t33 = load { i64, ptr }, ptr %l6, !tbaa !27
  store { i64, ptr } %t33, ptr %l27, !tbaa !27
  %t34 = load i64, ptr %l7, !tbaa !24
  %t36 = getelementptr { i64, ptr }, ptr %l27, i32 0, i32 1
  %t37 = load ptr, ptr %t36, !tbaa !27
  %t38 = getelementptr ptr, ptr %t37, i64 %t34
  %t39 = load ptr, ptr %t38, !tbaa !39
  store ptr %t39, ptr %l9, !tbaa !29
  %t41 = load ptr, ptr %l9, !tbaa !29
  store ptr %t41, ptr %l30, !tbaa !29
  %t42 = ptrtoint ptr %v2 to i64
  store i64 %t42, ptr %l31, !tbaa !24
  %t43 = load i1, ptr @olang_2esole_2eArray_3ccompiler_2fast_3aPath_26_3e_2e_2d1
  br i1 %t43, label %bb16, label %bb17
bb16:
  %t45 = load ptr, ptr %l30, !tbaa !29
  %t46 = call ptr @__olang_region_or(ptr %t45, ptr %v2)
  %t47 = ptrtoint ptr %t46 to i64
  store i64 %t47, ptr %l31, !tbaa !24
  br label %bb17
bb17:
  %t48 = load ptr, ptr %l0, !tbaa !29
  %t49 = load ptr, ptr %l1, !tbaa !29
  %t50 = load ptr, ptr %l9, !tbaa !29
  %t51 = load i64, ptr %l31
  %t52 = inttoptr i64 %t51 to ptr
  %t56 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eErrorItemKnown(ptr %v0, ptr %v1, ptr %t52, ptr %t48, ptr %t49, ptr %t50)
  store i1 %t56, ptr %l36
  br label %bb18
bb18:
  %t57 = load ptr, ptr %l9, !tbaa !29
  store ptr %t57, ptr %l37, !tbaa !29
  %t58 = ptrtoint ptr %v2 to i64
  store i64 %t58, ptr %l38, !tbaa !24
  %t59 = load i1, ptr @olang_2esole_2eArray_3ccompiler_2fast_3aPath_26_3e_2e_2d1
  br i1 %t59, label %bb19, label %bb20
bb19:
  %t61 = load ptr, ptr %l37, !tbaa !29
  %t62 = call ptr @__olang_region_or(ptr %t61, ptr %v2)
  %t63 = ptrtoint ptr %t62 to i64
  store i64 %t63, ptr %l38, !tbaa !24
  br label %bb20
bb20:
  %t64 = load ptr, ptr %l0, !tbaa !29
  %t65 = load ptr, ptr %l1, !tbaa !29
  %t66 = load ptr, ptr %l9, !tbaa !29
  %t67 = load i64, ptr %l38
  %t68 = inttoptr i64 %t67 to ptr
  call void @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eerrorSetEntries(ptr %v0, ptr %v1, ptr %t68, ptr %s2, ptr %t64, ptr %t65, ptr %t66, ptr %l5)
  br label %bb21
bb21:
  br label %bb22
bb22:
  %t73 = load i64, ptr %l7, !tbaa !24
  %t75 = add i64 %t73, 1
  store i64 %t75, ptr %l7, !tbaa !24
  br label %bb12
bb23:
  %t77 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2emergeEntries(ptr %v0, ptr %s2, ptr %s0, ptr %t77, ptr %l5, ptr %l4)
  br label %bb24
bb24:
  call void @__olang_scope_close(ptr %s2)
  br label %bb25
bb25:
  %t81 = load ptr, ptr %l0, !tbaa !29
  %t83 = getelementptr %"compiler/generic:Program", ptr %t81, i32 0, i32 2
  store ptr %t83, ptr %l50, !tbaa !29
  %t85 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2eToArray_3ccompiler_2ftypes_3aTypeId_3e(ptr %s0, ptr %s0, ptr %l4)
  store { i64, ptr } %t85, ptr %l52
  br label %bb26
bb26:
  %t86 = load ptr, ptr %l50, !tbaa !29
  %t87 = load { i64, ptr }, ptr %l52, !tbaa !27
  %t88 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eList(ptr %v0, ptr %s0, ptr %t86, { i64, ptr } %t87)
  store i32 %t88, ptr %l53
  br label %bb27
bb27:
  call void @__olang_scope_close(ptr %s0)
  %t89 = load i32, ptr %l53, !tbaa !23
  store i32 %t89, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local void @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eerrorSetEntries(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1, ptr %a2, ptr %a3) #0 {
entry:
  %l0 = alloca ptr
  %l4 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l5 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l6 = alloca ptr
  %l10 = alloca i32
  %s0 = alloca %olang.scope
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aDeclId_3e_2ector(ptr %s0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1, ptr %l5
  br label %bb1
bb1:
  %t2 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l5
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t2, ptr %l4
  %t3 = load ptr, ptr %l0, !tbaa !29
  store ptr %t3, ptr %l6, !tbaa !29
  %t4 = load ptr, ptr %l0, !tbaa !29
  %t10 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eerrorSetItem(ptr %v0, ptr %v1, ptr %v2, ptr %t4, ptr %a1, ptr %a2)
  store i32 %t10, ptr %l10
  br label %bb2
bb2:
  %t12 = load ptr, ptr %l6, !tbaa !29
  %t13 = load i32, ptr %l10, !tbaa !23
  call void @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eentriesOf(ptr %v0, ptr %v3, ptr %s0, ptr %t12, i32 %t13, ptr %a3, ptr %l4)
  br label %bb3
bb3:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eerrorType(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, ptr %a2) #0 {
entry:
  %l0 = alloca ptr
  %l3 = alloca i32
  %l7 = alloca i32
  %l11 = alloca i1
  %l13 = alloca ptr
  %l17 = alloca i32
  %l18 = alloca i32
  %rv = alloca i32
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t7 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2enamedType(ptr %v0, ptr %v1, ptr %v2, ptr %t1, ptr %a1, ptr %a2)
  store i32 %t7, ptr %l7
  br label %bb1
bb1:
  %t8 = load i32, ptr %l7, !tbaa !23
  store i32 %t8, ptr %l3, !tbaa !23
  %t9 = load i32, ptr %l3, !tbaa !23
  %t10 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t13 = icmp eq i32 %t9, %t10
  br i1 %t13, label %bb2, label %bb3
bb2:
  store i1 true, ptr %l11, !tbaa !21
  br label %bb6
bb3:
  %t15 = load ptr, ptr %l0, !tbaa !29
  %t17 = getelementptr %"compiler/generic:Program", ptr %t15, i32 0, i32 2
  store ptr %t17, ptr %l13, !tbaa !29
  %t18 = load ptr, ptr %l0, !tbaa !29
  %t20 = getelementptr %"compiler/generic:Program", ptr %t18, i32 0, i32 2
  %t21 = load i32, ptr %l3, !tbaa !23
  %t24 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %t20, i32 %t21)
  store i32 %t24, ptr %l17
  br label %bb4
bb4:
  %t25 = load ptr, ptr %l13, !tbaa !29
  %t26 = load i32, ptr %l17, !tbaa !23
  %t27 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclKindOf(ptr %v0, ptr %t25, i32 %t26)
  store i32 %t27, ptr %l18
  br label %bb5
bb5:
  %t28 = load i32, ptr %l18, !range !{i32 0, i32 6}
  %t30 = trunc i64 2 to i32
  %t31 = icmp eq i32 %t28, %t30
  %t33 = xor i1 %t31, true
  store i1 %t33, ptr %l11, !tbaa !21
  br label %bb6
bb6:
  %t35 = load i1, ptr %l11, !tbaa !21
  br i1 %t35, label %bb7, label %bb8
bb7:
  %t36 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  store i32 %t36, ptr %rv
  br label %ret
bb8:
  br label %bb9
bb9:
  %t38 = load i32, ptr %l3, !tbaa !23
  store i32 %t38, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local %"compiler/generic:folded" @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eeval(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, ptr %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca %"compiler/source:Span"
  %l4 = alloca i32
  %l5 = alloca ptr
  %l6 = alloca %"compiler/source:Span"
  %l7 = alloca i32
  %l8 = alloca i32
  %l9 = alloca ptr
  %l10 = alloca i32
  %l11 = alloca ptr
  %l12 = alloca ptr
  %l13 = alloca ptr
  %l14 = alloca ptr
  %l15 = alloca ptr
  %l16 = alloca ptr
  %l17 = alloca { i64, ptr }
  %l18 = alloca %"compiler/generic:folded"
  %l19 = alloca ptr
  %l20 = alloca i1
  %l32 = alloca %"compiler/generic:folded"
  %l33 = alloca ptr
  %l34 = alloca i1
  %l42 = alloca %"compiler/generic:folded"
  %l43 = alloca ptr
  %l44 = alloca i1
  %l51 = alloca ptr
  %l52 = alloca ptr
  %l53 = alloca %"compiler/source:Span"
  %l54 = alloca i32
  %l58 = alloca %"compiler/generic:folded"
  %l59 = alloca ptr
  %l60 = alloca i1
  %l71 = alloca %"compiler/generic:folded"
  %l72 = alloca ptr
  %l73 = alloca i1
  %l87 = alloca %"compiler/generic:folded"
  %l88 = alloca ptr
  %l89 = alloca i1
  %l103 = alloca %"compiler/generic:folded"
  %l104 = alloca ptr
  %l105 = alloca i1
  %l116 = alloca %"compiler/generic:folded"
  %l117 = alloca %"compiler/generic:folded"
  %s3 = alloca %olang.scope
  %rv = alloca %"compiler/generic:folded"
  %t90 = alloca i64
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store ptr %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l2, !tbaa !29
  store ptr %t1, ptr %l19, !tbaa !29
  store i1 false, ptr %l20, !tbaa !21
  %t2 = load ptr, ptr %l19, !tbaa !29
  %t3 = icmp ne ptr %t2, null
  br i1 %t3, label %bb1, label %bb2
bb1:
  %t5 = load ptr, ptr %l19, !tbaa !29
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 28}
  %t8 = icmp eq i64 %t6, 1
  store i1 %t8, ptr %l20, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l20, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  %t10 = load ptr, ptr %l2, !tbaa !29
  %t12 = getelementptr { i64, [4 x i64] }, ptr %t10, i32 0, i32 1
  %t13 = getelementptr { %"compiler/source:Span", i32 }, ptr %t12, i32 0, i32 0
  %t14 = load %"compiler/source:Span", ptr %t13
  store %"compiler/source:Span" %t14, ptr %l3
  %t16 = load ptr, ptr %l2, !tbaa !29
  %t18 = getelementptr { i64, [4 x i64] }, ptr %t16, i32 0, i32 1
  %t19 = getelementptr { %"compiler/source:Span", i32 }, ptr %t18, i32 0, i32 1
  %t20 = load i32, ptr %t19, !range !{i32 0, i32 113}
  store i32 %t20, ptr %l4
  br label %bb5
bb4:
  br label %bb7
bb5:
  %t22 = load ptr, ptr %l0, !tbaa !29
  %t23 = load ptr, ptr %l1, !tbaa !29
  %t25 = getelementptr %"compiler/generic:Context", ptr %t23, i32 0, i32 0
  %t26 = load i64, ptr %t25, !tbaa !24
  %t27 = load %"compiler/source:Span", ptr %l3
  %t28 = load i32, ptr %l4, !range !{i32 0, i32 113}
  %t33 = call %"compiler/generic:folded" @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eevalLit(ptr %v0, ptr %t22, i64 %t26, %"compiler/source:Span" %t27, i32 %t28)
  store %"compiler/generic:folded" %t33, ptr %l32
  br label %bb6
bb6:
  %t34 = load %"compiler/generic:folded", ptr %l32
  store %"compiler/generic:folded" %t34, ptr %l18
  br label %bb59
bb7:
  %t35 = load ptr, ptr %l2, !tbaa !29
  store ptr %t35, ptr %l33, !tbaa !29
  store i1 false, ptr %l34, !tbaa !21
  %t36 = load ptr, ptr %l33, !tbaa !29
  %t37 = icmp ne ptr %t36, null
  br i1 %t37, label %bb8, label %bb9
bb8:
  %t39 = load ptr, ptr %l33, !tbaa !29
  %t40 = load i64, ptr %t39, !range !{i64 0, i64 28}
  %t42 = icmp eq i64 %t40, 2
  store i1 %t42, ptr %l34, !tbaa !21
  br label %bb9
bb9:
  %t43 = load i1, ptr %l34, !tbaa !21
  br i1 %t43, label %bb10, label %bb11
bb10:
  %t44 = load ptr, ptr %l2, !tbaa !29
  %t46 = getelementptr { i64, [4 x i64] }, ptr %t44, i32 0, i32 1
  %t47 = getelementptr { %"compiler/source:Span", ptr }, ptr %t46, i32 0, i32 1
  %t48 = load ptr, ptr %t47
  store ptr %t48, ptr %l5, !tbaa !29
  br label %bb12
bb11:
  br label %bb14
bb12:
  %t50 = load ptr, ptr %l0, !tbaa !29
  %t51 = load ptr, ptr %l1, !tbaa !29
  %t52 = load ptr, ptr %l5, !tbaa !29
  %t56 = call %"compiler/generic:folded" @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eeval(ptr %v0, ptr %v1, ptr %v2, ptr %t50, ptr %t51, ptr %t52)
  store %"compiler/generic:folded" %t56, ptr %l42
  br label %bb13
bb13:
  %t57 = load %"compiler/generic:folded", ptr %l42
  store %"compiler/generic:folded" %t57, ptr %l18
  br label %bb59
bb14:
  %t58 = load ptr, ptr %l2, !tbaa !29
  store ptr %t58, ptr %l43, !tbaa !29
  store i1 false, ptr %l44, !tbaa !21
  %t59 = load ptr, ptr %l43, !tbaa !29
  %t60 = icmp ne ptr %t59, null
  br i1 %t60, label %bb15, label %bb16
bb15:
  %t62 = load ptr, ptr %l43, !tbaa !29
  %t63 = load i64, ptr %t62, !range !{i64 0, i64 28}
  %t65 = icmp eq i64 %t63, 0
  store i1 %t65, ptr %l44, !tbaa !21
  br label %bb16
bb16:
  %t66 = load i1, ptr %l44, !tbaa !21
  br i1 %t66, label %bb17, label %bb18
bb17:
  %t67 = load ptr, ptr %l2, !tbaa !29
  %t69 = getelementptr { i64, [4 x i64] }, ptr %t67, i32 0, i32 1
  %t70 = getelementptr { %"compiler/source:Span", i32 }, ptr %t69, i32 0, i32 0
  %t71 = load %"compiler/source:Span", ptr %t70
  store %"compiler/source:Span" %t71, ptr %l6
  %t73 = load ptr, ptr %l2, !tbaa !29
  %t75 = getelementptr { i64, [4 x i64] }, ptr %t73, i32 0, i32 1
  %t76 = getelementptr { %"compiler/source:Span", i32 }, ptr %t75, i32 0, i32 1
  %t77 = load i32, ptr %t76
  store i32 %t77, ptr %l7, !tbaa !23
  br label %bb19
bb18:
  br label %bb25
bb19:
  store %olang.scope zeroinitializer, ptr %s3
  %t79 = load ptr, ptr %l0, !tbaa !29
  store ptr %t79, ptr %l51, !tbaa !29
  %t80 = load ptr, ptr %l1, !tbaa !29
  store ptr %t80, ptr %l52, !tbaa !29
  %t81 = load %"compiler/source:Span", ptr %l6
  store %"compiler/source:Span" %t81, ptr %l53
  %t82 = load i32, ptr %l7, !tbaa !23
  store i32 %t82, ptr %l54, !tbaa !23
  %t83 = icmp sge i64 1, 0
  br i1 %t83, label %bb20, label %bb21
bb20:
  %t85 = icmp sle i64 1, 2305843009213693951
  br i1 %t85, label %bb22, label %bb23
bb21:
  call void @__olang_check_failed(ptr @olang_loc_3e60b6dd6ea07633_1a37389903bcd17)
  unreachable
bb22:
  %t87 = mul i64 1, 4
  %t88 = call ptr @__olang_scope_alloc(ptr %s3, i64 %t87)
  %t89 = load i32, ptr %l54, !tbaa !23
  store i64 0, ptr %t90
  br label %fill.91
fill.91:
  %t94 = load i64, ptr %t90
  %t95 = icmp slt i64 %t94, 1
  br i1 %t95, label %fillb.92, label %filld.93
fillb.92:
  %t96 = getelementptr i32, ptr %t88, i64 %t94
  store i32 %t89, ptr %t96
  %t97 = add i64 %t94, 1
  store i64 %t97, ptr %t90
  br label %fill.91
filld.93:
  %t98 = insertvalue { i64, ptr } undef, i64 1, 0
  %t99 = insertvalue { i64, ptr } %t98, ptr %t88, 1
  %t100 = load ptr, ptr %l51, !tbaa !29
  %t101 = load ptr, ptr %l52, !tbaa !29
  %t102 = load %"compiler/source:Span", ptr %l53
  %t104 = call %"compiler/generic:folded" @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2efoldPath(ptr %v0, ptr %v1, ptr %s3, ptr %t100, ptr %t101, %"compiler/source:Span" %t102, { i64, ptr } %t99)
  store %"compiler/generic:folded" %t104, ptr %l58
  br label %bb24
bb23:
  call void @__olang_check_failed(ptr @olang_loc_3e60b6dd6ea07633_1a37389903bcd17)
  unreachable
bb24:
  %t105 = load %"compiler/generic:folded", ptr %l58
  store %"compiler/generic:folded" %t105, ptr %l18
  call void @__olang_scope_close(ptr %s3)
  br label %bb59
bb25:
  %t106 = load ptr, ptr %l2, !tbaa !29
  store ptr %t106, ptr %l59, !tbaa !29
  store i1 false, ptr %l60, !tbaa !21
  %t107 = load ptr, ptr %l59, !tbaa !29
  %t108 = icmp ne ptr %t107, null
  br i1 %t108, label %bb26, label %bb27
bb26:
  %t110 = load ptr, ptr %l59, !tbaa !29
  %t111 = load i64, ptr %t110, !range !{i64 0, i64 28}
  %t113 = icmp eq i64 %t111, 3
  store i1 %t113, ptr %l60, !tbaa !21
  br label %bb27
bb27:
  %t114 = load i1, ptr %l60, !tbaa !21
  br i1 %t114, label %bb28, label %bb29
bb28:
  %t115 = load ptr, ptr %l2, !tbaa !29
  %t117 = getelementptr { i64, [4 x i64] }, ptr %t115, i32 0, i32 1
  %t118 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t117, i32 0, i32 1
  %t119 = load i32, ptr %t118, !range !{i32 0, i32 113}
  store i32 %t119, ptr %l8
  %t121 = load ptr, ptr %l2, !tbaa !29
  %t123 = getelementptr { i64, [4 x i64] }, ptr %t121, i32 0, i32 1
  %t124 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t123, i32 0, i32 2
  %t125 = load ptr, ptr %t124
  store ptr %t125, ptr %l9, !tbaa !29
  br label %bb30
bb29:
  br label %bb32
bb30:
  %t127 = load ptr, ptr %l0, !tbaa !29
  %t128 = load ptr, ptr %l1, !tbaa !29
  %t129 = load i32, ptr %l8, !range !{i32 0, i32 113}
  %t130 = load ptr, ptr %l9, !tbaa !29
  %t135 = call %"compiler/generic:folded" @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eevalUnary(ptr %v0, ptr %v1, ptr %v2, ptr %t127, ptr %t128, i32 %t129, ptr %t130)
  store %"compiler/generic:folded" %t135, ptr %l71
  br label %bb31
bb31:
  %t136 = load %"compiler/generic:folded", ptr %l71
  store %"compiler/generic:folded" %t136, ptr %l18
  br label %bb59
bb32:
  %t137 = load ptr, ptr %l2, !tbaa !29
  store ptr %t137, ptr %l72, !tbaa !29
  store i1 false, ptr %l73, !tbaa !21
  %t138 = load ptr, ptr %l72, !tbaa !29
  %t139 = icmp ne ptr %t138, null
  br i1 %t139, label %bb33, label %bb34
bb33:
  %t141 = load ptr, ptr %l72, !tbaa !29
  %t142 = load i64, ptr %t141, !range !{i64 0, i64 28}
  %t144 = icmp eq i64 %t142, 5
  store i1 %t144, ptr %l73, !tbaa !21
  br label %bb34
bb34:
  %t145 = load i1, ptr %l73, !tbaa !21
  br i1 %t145, label %bb35, label %bb36
bb35:
  %t146 = load ptr, ptr %l2, !tbaa !29
  %t148 = getelementptr { i64, [4 x i64] }, ptr %t146, i32 0, i32 1
  %t149 = getelementptr { %"compiler/source:Span", i32, ptr, ptr }, ptr %t148, i32 0, i32 1
  %t150 = load i32, ptr %t149, !range !{i32 0, i32 113}
  store i32 %t150, ptr %l10
  %t152 = load ptr, ptr %l2, !tbaa !29
  %t154 = getelementptr { i64, [4 x i64] }, ptr %t152, i32 0, i32 1
  %t155 = getelementptr { %"compiler/source:Span", i32, ptr, ptr }, ptr %t154, i32 0, i32 2
  %t156 = load ptr, ptr %t155
  store ptr %t156, ptr %l11, !tbaa !29
  %t158 = load ptr, ptr %l2, !tbaa !29
  %t160 = getelementptr { i64, [4 x i64] }, ptr %t158, i32 0, i32 1
  %t161 = getelementptr { %"compiler/source:Span", i32, ptr, ptr }, ptr %t160, i32 0, i32 3
  %t162 = load ptr, ptr %t161
  store ptr %t162, ptr %l12, !tbaa !29
  br label %bb37
bb36:
  br label %bb39
bb37:
  %t164 = load ptr, ptr %l0, !tbaa !29
  %t165 = load ptr, ptr %l1, !tbaa !29
  %t166 = load i32, ptr %l10, !range !{i32 0, i32 113}
  %t167 = load ptr, ptr %l11, !tbaa !29
  %t168 = load ptr, ptr %l12, !tbaa !29
  %t174 = call %"compiler/generic:folded" @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eevalBinary(ptr %v0, ptr %v1, ptr %v2, ptr %v2, ptr %t164, ptr %t165, i32 %t166, ptr %t167, ptr %t168)
  store %"compiler/generic:folded" %t174, ptr %l87
  br label %bb38
bb38:
  %t175 = load %"compiler/generic:folded", ptr %l87
  store %"compiler/generic:folded" %t175, ptr %l18
  br label %bb59
bb39:
  %t176 = load ptr, ptr %l2, !tbaa !29
  store ptr %t176, ptr %l88, !tbaa !29
  store i1 false, ptr %l89, !tbaa !21
  %t177 = load ptr, ptr %l88, !tbaa !29
  %t178 = icmp ne ptr %t177, null
  br i1 %t178, label %bb40, label %bb41
bb40:
  %t180 = load ptr, ptr %l88, !tbaa !29
  %t181 = load i64, ptr %t180, !range !{i64 0, i64 28}
  %t183 = icmp eq i64 %t181, 8
  store i1 %t183, ptr %l89, !tbaa !21
  br label %bb41
bb41:
  %t184 = load i1, ptr %l89, !tbaa !21
  br i1 %t184, label %bb42, label %bb43
bb42:
  %t185 = load ptr, ptr %l2, !tbaa !29
  %t187 = getelementptr { i64, [4 x i64] }, ptr %t185, i32 0, i32 1
  %t188 = getelementptr { %"compiler/source:Span", ptr, ptr, ptr }, ptr %t187, i32 0, i32 1
  %t189 = load ptr, ptr %t188
  store ptr %t189, ptr %l13, !tbaa !29
  %t191 = load ptr, ptr %l2, !tbaa !29
  %t193 = getelementptr { i64, [4 x i64] }, ptr %t191, i32 0, i32 1
  %t194 = getelementptr { %"compiler/source:Span", ptr, ptr, ptr }, ptr %t193, i32 0, i32 2
  %t195 = load ptr, ptr %t194
  store ptr %t195, ptr %l14, !tbaa !29
  %t197 = load ptr, ptr %l2, !tbaa !29
  %t199 = getelementptr { i64, [4 x i64] }, ptr %t197, i32 0, i32 1
  %t200 = getelementptr { %"compiler/source:Span", ptr, ptr, ptr }, ptr %t199, i32 0, i32 3
  %t201 = load ptr, ptr %t200
  store ptr %t201, ptr %l15, !tbaa !29
  br label %bb44
bb43:
  br label %bb46
bb44:
  %t203 = load ptr, ptr %l0, !tbaa !29
  %t204 = load ptr, ptr %l1, !tbaa !29
  %t205 = load ptr, ptr %l13, !tbaa !29
  %t206 = load ptr, ptr %l14, !tbaa !29
  %t207 = load ptr, ptr %l15, !tbaa !29
  %t213 = call %"compiler/generic:folded" @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eevalCond(ptr %v0, ptr %v1, ptr %v2, ptr %v2, ptr %v2, ptr %t203, ptr %t204, ptr %t205, ptr %t206, ptr %t207)
  store %"compiler/generic:folded" %t213, ptr %l103
  br label %bb45
bb45:
  %t214 = load %"compiler/generic:folded", ptr %l103
  store %"compiler/generic:folded" %t214, ptr %l18
  br label %bb59
bb46:
  %t215 = load ptr, ptr %l2, !tbaa !29
  store ptr %t215, ptr %l104, !tbaa !29
  store i1 false, ptr %l105, !tbaa !21
  %t216 = load ptr, ptr %l104, !tbaa !29
  %t217 = icmp ne ptr %t216, null
  br i1 %t217, label %bb47, label %bb48
bb47:
  %t219 = load ptr, ptr %l104, !tbaa !29
  %t220 = load i64, ptr %t219, !range !{i64 0, i64 28}
  %t222 = icmp eq i64 %t220, 10
  store i1 %t222, ptr %l105, !tbaa !21
  br label %bb48
bb48:
  %t223 = load i1, ptr %l105, !tbaa !21
  br i1 %t223, label %bb49, label %bb50
bb49:
  %t224 = load ptr, ptr %l2, !tbaa !29
  %t226 = getelementptr { i64, [4 x i64] }, ptr %t224, i32 0, i32 1
  %t227 = getelementptr { %"compiler/source:Span", ptr, { i64, ptr } }, ptr %t226, i32 0, i32 1
  %t228 = load ptr, ptr %t227
  store ptr %t228, ptr %l16, !tbaa !29
  %t230 = load ptr, ptr %l2, !tbaa !29
  %t232 = getelementptr { i64, [4 x i64] }, ptr %t230, i32 0, i32 1
  %t233 = getelementptr { %"compiler/source:Span", ptr, { i64, ptr } }, ptr %t232, i32 0, i32 2
  %t234 = load { i64, ptr }, ptr %t233
  store { i64, ptr } %t234, ptr %l17, !tbaa !27
  br label %bb51
bb50:
  br label %bb53
bb51:
  %t236 = load ptr, ptr %l0, !tbaa !29
  %t237 = load ptr, ptr %l1, !tbaa !29
  %t238 = load ptr, ptr %l16, !tbaa !29
  %t239 = load { i64, ptr }, ptr %l17, !tbaa !27
  %t244 = call %"compiler/generic:folded" @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eevalCall(ptr %v0, ptr %v1, ptr %v2, ptr %v2, ptr %t236, ptr %t237, ptr %t238, { i64, ptr } %t239)
  store %"compiler/generic:folded" %t244, ptr %l116
  br label %bb52
bb52:
  %t245 = load %"compiler/generic:folded", ptr %l116
  store %"compiler/generic:folded" %t245, ptr %l18
  br label %bb59
bb53:
  br i1 true, label %bb54, label %bb55
bb54:
  br label %bb56
bb55:
  br label %bb58
bb56:
  %t246 = call %"compiler/generic:folded" @compiler_2fgeneric_2efolded_2eunfolded()
  store %"compiler/generic:folded" %t246, ptr %l117
  br label %bb57
bb57:
  %t247 = load %"compiler/generic:folded", ptr %l117
  store %"compiler/generic:folded" %t247, ptr %l18
  br label %bb59
bb58:
  call void @__olang_check_failed(ptr @olang_loc_df0c974aeea04fc5_d4c449c0d39b6971)
  unreachable
bb59:
  %t248 = load %"compiler/generic:folded", ptr %l18
  store %"compiler/generic:folded" %t248, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/generic:folded", ptr %rv
  ret %"compiler/generic:folded" %rr
}

define dso_local %"compiler/generic:folded" @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eevalCall(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1, ptr %a2, { i64, ptr } %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca { i64, ptr }
  %l4 = alloca { i64, ptr }
  %l5 = alloca i32
  %l9 = alloca { i64, ptr }
  %l11 = alloca i1
  %l13 = alloca i32
  %l15 = alloca ptr
  %l20 = alloca i32
  %l21 = alloca i32
  %l22 = alloca i32
  %l28 = alloca i32
  %l31 = alloca i64
  %l35 = alloca i64
  %l39 = alloca i32
  %l40 = alloca %"compiler/generic:folded"
  %l43 = alloca %"compiler/generic:folded"
  %l48 = alloca %"compiler/generic:folded"
  %s0 = alloca %olang.scope
  %s2 = alloca %olang.scope
  %s3 = alloca %olang.scope
  %rv = alloca %"compiler/generic:folded"
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store ptr %a2, ptr %l2
  store { i64, ptr } %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load ptr, ptr %l2, !tbaa !29
  %t3 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t7 = call { i64, ptr } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eLenKey(ptr %v0, ptr %v2, ptr %v3, ptr %s0, ptr %t1, ptr %t2, { i64, ptr } %t3)
  store { i64, ptr } %t7, ptr %l9
  br label %bb1
bb1:
  %t8 = load { i64, ptr }, ptr %l9, !tbaa !27
  store { i64, ptr } %t8, ptr %l4, !tbaa !27
  %t9 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t11 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %s0, { i64, ptr } %t9, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d16, i32 0, i32 1) })
  store i1 %t11, ptr %l11
  br label %bb2
bb2:
  %t12 = load i1, ptr %l11, !tbaa !21
  %t13 = xor i1 %t12, true
  br i1 %t13, label %bb3, label %bb4
bb3:
  %t15 = load ptr, ptr %l1, !tbaa !29
  %t17 = getelementptr %"compiler/generic:Context", ptr %t15, i32 0, i32 2
  store ptr %t17, ptr %l15, !tbaa !29
  %t18 = load ptr, ptr %l0, !tbaa !29
  %t20 = getelementptr %"compiler/generic:Program", ptr %t18, i32 0, i32 0
  %t21 = load ptr, ptr %t20, !tbaa !29
  %t23 = getelementptr %"compiler/load:Loader", ptr %t21, i32 0, i32 3
  %t24 = load ptr, ptr %t23, !tbaa !29
  %t25 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t28 = call i32 @compiler_2fsource_2ecompiler_2fsource_3aNames_2eIntern(ptr %v0, ptr %s0, ptr %t24, { i64, ptr } %t25)
  store i32 %t28, ptr %l20
  br label %bb5
bb4:
  br label %bb21
bb5:
  %t29 = load ptr, ptr %l15, !tbaa !29
  %t30 = load i32, ptr %l20, !tbaa !23
  %t31 = call { i32, i32 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fsource_3aNameId_2c_20compil_Hfd0413fe7fd4e5914f6cad5b418b7a6d(ptr %v1, ptr %t29, i32 %t30)
  %t32 = extractvalue { i32, i32 } %t31, 1
  %t33 = extractvalue { i32, i32 } %t31, 0
  store i32 %t33, ptr %l22
  %t34 = icmp ne i32 %t33, 0
  br i1 %t34, label %bb7, label %ok.35, !prof !99
ok.35:
  store i32 %t32, ptr %l21
  br label %bb6
bb6:
  %t36 = load i32, ptr %l21, !tbaa !23
  store i32 %t36, ptr %l13, !tbaa !23
  br label %bb9
bb7:
  br label %bb8
bb8:
  store i32 -1, ptr %l13, !tbaa !23
  br label %bb9
bb9:
  %t37 = load i32, ptr %l13, !tbaa !23
  store i32 %t37, ptr %l5, !tbaa !23
  %t38 = load i32, ptr %l5, !tbaa !23
  %t40 = icmp sge i32 %t38, 0
  br i1 %t40, label %bb10, label %bb11
bb10:
  store %olang.scope zeroinitializer, ptr %s2
  %t42 = load ptr, ptr %l0, !tbaa !29
  %t44 = getelementptr %"compiler/generic:Program", ptr %t42, i32 0, i32 2
  %t45 = load i32, ptr %l5, !tbaa !23
  %t48 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t44, i32 %t45)
  store i32 %t48, ptr %l28
  br label %bb12
bb11:
  br label %bb20
bb12:
  %t49 = load i32, ptr %l28, !range !{i32 0, i32 33}
  %t51 = trunc i64 26 to i32
  %t52 = icmp eq i32 %t49, %t51
  br i1 %t52, label %bb13, label %bb14
bb13:
  store %olang.scope zeroinitializer, ptr %s3
  %t54 = load i64, ptr @G_2ecompiler_2fgeneric_2eFolded, !tbaa !24
  store i64 %t54, ptr %l31, !tbaa !24
  %t55 = load ptr, ptr %l0, !tbaa !29
  %t57 = getelementptr %"compiler/generic:Program", ptr %t55, i32 0, i32 2
  %t58 = load i32, ptr %l5, !tbaa !23
  %t61 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eConstValue(ptr %v0, ptr %t57, i32 %t58)
  store i64 %t61, ptr %l35
  br label %bb15
bb14:
  br label %bb18
bb15:
  %t62 = load ptr, ptr %l0, !tbaa !29
  %t64 = getelementptr %"compiler/generic:Program", ptr %t62, i32 0, i32 2
  %t65 = load i32, ptr %l5, !tbaa !23
  %t68 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eConstType(ptr %v0, ptr %t64, i32 %t65)
  store i32 %t68, ptr %l39
  br label %bb16
bb16:
  %t69 = load i64, ptr %l31, !tbaa !24
  %t70 = load i64, ptr %l35, !tbaa !24
  %t71 = load i32, ptr %l39, !tbaa !23
  %t72 = call %"compiler/generic:folded" @compiler_2fgeneric_3afolded_2ector(ptr %s3, i64 %t69, i64 %t70, i32 %t71)
  store %"compiler/generic:folded" %t72, ptr %l40
  br label %bb17
bb17:
  call void @__olang_scope_close(ptr %s3)
  call void @__olang_scope_close(ptr %s2)
  call void @__olang_scope_close(ptr %s0)
  %t73 = load %"compiler/generic:folded", ptr %l40
  store %"compiler/generic:folded" %t73, ptr %rv
  br label %ret
bb18:
  %t74 = load i64, ptr @G_2ecompiler_2fgeneric_2ePending, !tbaa !24
  %t75 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t78 = call %"compiler/generic:folded" @compiler_2fgeneric_3afolded_2ector(ptr %s2, i64 %t74, i64 0, i32 %t75)
  store %"compiler/generic:folded" %t78, ptr %l43
  br label %bb19
bb19:
  call void @__olang_scope_close(ptr %s2)
  call void @__olang_scope_close(ptr %s0)
  %t79 = load %"compiler/generic:folded", ptr %l43
  store %"compiler/generic:folded" %t79, ptr %rv
  br label %ret
bb20:
  br label %bb21
bb21:
  %t80 = load ptr, ptr %l0, !tbaa !29
  %t81 = load ptr, ptr %l1, !tbaa !29
  %t82 = load ptr, ptr %l2, !tbaa !29
  %t83 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t88 = call %"compiler/generic:folded" @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eevalConversion(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %t80, ptr %t81, ptr %t82, { i64, ptr } %t83)
  store %"compiler/generic:folded" %t88, ptr %l48
  br label %bb22
bb22:
  call void @__olang_scope_close(ptr %s0)
  %t89 = load %"compiler/generic:folded", ptr %l48
  store %"compiler/generic:folded" %t89, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/generic:folded", ptr %rv
  ret %"compiler/generic:folded" %rr
}

define dso_local %"compiler/generic:folded" @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eevalCond(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %a0, ptr %a1, ptr %a2, ptr %a3, ptr %a4) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l5 = alloca %"compiler/generic:folded"
  %l9 = alloca %"compiler/generic:folded"
  %l16 = alloca %"compiler/generic:folded"
  %l20 = alloca %"compiler/generic:folded"
  %l24 = alloca %"compiler/generic:folded"
  %rv = alloca %"compiler/generic:folded"
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load ptr, ptr %l1, !tbaa !29
  %t7 = call %"compiler/generic:folded" @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eeval(ptr %v0, ptr %v1, ptr %v3, ptr %t1, ptr %t2, ptr %a3)
  store %"compiler/generic:folded" %t7, ptr %l9
  br label %bb1
bb1:
  %t8 = load %"compiler/generic:folded", ptr %l9
  store %"compiler/generic:folded" %t8, ptr %l5
  %t9 = getelementptr %"compiler/generic:folded", ptr %l5, i32 0, i32 0
  %t10 = load i64, ptr %t9, !tbaa !24
  %t11 = load i64, ptr @G_2ecompiler_2fgeneric_2eFolded, !tbaa !24
  %t14 = icmp ne i64 %t10, %t11
  br i1 %t14, label %bb2, label %bb3
bb2:
  %t16 = load %"compiler/generic:folded", ptr %l5
  store %"compiler/generic:folded" %t16, ptr %rv
  br label %ret
bb3:
  br label %bb4
bb4:
  %t18 = getelementptr %"compiler/generic:folded", ptr %l5, i32 0, i32 1
  %t19 = load i64, ptr %t18, !tbaa !24
  %t21 = icmp ne i64 %t19, 0
  br i1 %t21, label %bb5, label %bb6
bb5:
  %t23 = load ptr, ptr %l0, !tbaa !29
  %t24 = load ptr, ptr %l1, !tbaa !29
  %t29 = call %"compiler/generic:folded" @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eeval(ptr %v0, ptr %v1, ptr %v2, ptr %t23, ptr %t24, ptr %a2)
  store %"compiler/generic:folded" %t29, ptr %l20
  br label %bb7
bb6:
  %t30 = load ptr, ptr %l0, !tbaa !29
  %t31 = load ptr, ptr %l1, !tbaa !29
  %t36 = call %"compiler/generic:folded" @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eeval(ptr %v0, ptr %v1, ptr %v4, ptr %t30, ptr %t31, ptr %a4)
  store %"compiler/generic:folded" %t36, ptr %l24
  br label %bb8
bb7:
  %t37 = load %"compiler/generic:folded", ptr %l20
  store %"compiler/generic:folded" %t37, ptr %l16
  br label %bb9
bb8:
  %t38 = load %"compiler/generic:folded", ptr %l24
  store %"compiler/generic:folded" %t38, ptr %l16
  br label %bb9
bb9:
  %t39 = load %"compiler/generic:folded", ptr %l16
  store %"compiler/generic:folded" %t39, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/generic:folded", ptr %rv
  ret %"compiler/generic:folded" %rr
}

define dso_local %"compiler/generic:folded" @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eevalConversion(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1, ptr %a2, { i64, ptr } %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca { i64, ptr }
  %l4 = alloca %"compiler/source:Span"
  %l5 = alloca i32
  %l6 = alloca i32
  %l7 = alloca %"compiler/generic:folded"
  %l11 = alloca %"compiler/generic:folded"
  %l12 = alloca ptr
  %l13 = alloca i1
  %l21 = alloca ptr
  %l25 = alloca i64
  %l27 = alloca %"compiler/names:Ref"
  %l31 = alloca %"compiler/generic:folded"
  %l33 = alloca ptr
  %l36 = alloca { i64, ptr }
  %l37 = alloca i32
  %l41 = alloca i1
  %l43 = alloca i1
  %l46 = alloca i1
  %l47 = alloca %"compiler/generic:folded"
  %l50 = alloca { i64, ptr }
  %l52 = alloca %"compiler/generic:folded"
  %l57 = alloca i64
  %l61 = alloca i64
  %l63 = alloca %"compiler/generic:folded"
  %l64 = alloca %"compiler/generic:folded"
  %s2 = alloca %olang.scope
  %rv = alloca %"compiler/generic:folded"
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store ptr %a2, ptr %l2
  store { i64, ptr } %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t3 = extractvalue { i64, ptr } %t1, 0
  %t5 = icmp ne i64 %t3, 1
  br i1 %t5, label %bb1, label %bb2
bb1:
  %t7 = call %"compiler/generic:folded" @compiler_2fgeneric_2efolded_2eunfolded()
  store %"compiler/generic:folded" %t7, ptr %l11
  br label %bb3
bb2:
  br label %bb4
bb3:
  %t8 = load %"compiler/generic:folded", ptr %l11
  store %"compiler/generic:folded" %t8, ptr %rv
  br label %ret
bb4:
  %t9 = load ptr, ptr %l2, !tbaa !29
  store ptr %t9, ptr %l12, !tbaa !29
  store i1 false, ptr %l13, !tbaa !21
  %t10 = load ptr, ptr %l12, !tbaa !29
  %t11 = icmp ne ptr %t10, null
  br i1 %t11, label %bb5, label %bb6
bb5:
  %t13 = load ptr, ptr %l12, !tbaa !29
  %t14 = load i64, ptr %t13, !range !{i64 0, i64 28}
  %t16 = icmp eq i64 %t14, 0
  store i1 %t16, ptr %l13, !tbaa !21
  br label %bb6
bb6:
  %t17 = load i1, ptr %l13, !tbaa !21
  br i1 %t17, label %bb7, label %bb8
bb7:
  %t18 = load ptr, ptr %l2, !tbaa !29
  %t20 = getelementptr { i64, [4 x i64] }, ptr %t18, i32 0, i32 1
  %t21 = getelementptr { %"compiler/source:Span", i32 }, ptr %t20, i32 0, i32 0
  %t22 = load %"compiler/source:Span", ptr %t21
  store %"compiler/source:Span" %t22, ptr %l4
  %t24 = load ptr, ptr %l2, !tbaa !29
  %t26 = getelementptr { i64, [4 x i64] }, ptr %t24, i32 0, i32 1
  %t27 = getelementptr { %"compiler/source:Span", i32 }, ptr %t26, i32 0, i32 1
  %t28 = load i32, ptr %t27
  store i32 %t28, ptr %l5, !tbaa !23
  br label %bb9
bb8:
  br label %bb33
bb9:
  store %olang.scope zeroinitializer, ptr %s2
  %t30 = load ptr, ptr %l0, !tbaa !29
  %t32 = getelementptr %"compiler/generic:Program", ptr %t30, i32 0, i32 1
  %t33 = load ptr, ptr %t32, !tbaa !29
  store ptr %t33, ptr %l21, !tbaa !29
  %t34 = load ptr, ptr %l0, !tbaa !29
  %t35 = load ptr, ptr %l1, !tbaa !29
  %t37 = getelementptr %"compiler/generic:Context", ptr %t35, i32 0, i32 0
  %t38 = load i64, ptr %t37, !tbaa !24
  %t41 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2efile(ptr %v0, ptr %t34, i64 %t38)
  store i64 %t41, ptr %l25
  br label %bb10
bb10:
  %t42 = getelementptr %"compiler/source:Span", ptr %l4, i32 0, i32 0
  %t43 = load i32, ptr %t42, !tbaa !23
  %t44 = load ptr, ptr %l21, !tbaa !29
  %t45 = load i64, ptr %l25, !tbaa !24
  %t47 = call %"compiler/names:Ref" @compiler_2fnames_2ecompiler_2fnames_3aResolver_2eUse(ptr %v0, ptr %t44, i64 %t45, i32 %t43)
  store %"compiler/names:Ref" %t47, ptr %l27
  br label %bb11
bb11:
  %t48 = getelementptr %"compiler/names:Ref", ptr %l27, i32 0, i32 0
  %t49 = load i32, ptr %t48, !range !{i32 0, i32 9}
  %t51 = trunc i64 7 to i32
  %t52 = icmp eq i32 %t49, %t51
  %t54 = xor i1 %t52, true
  br i1 %t54, label %bb12, label %bb13
bb12:
  %t56 = call %"compiler/generic:folded" @compiler_2fgeneric_2efolded_2eunfolded()
  store %"compiler/generic:folded" %t56, ptr %l31
  br label %bb14
bb13:
  br label %bb15
bb14:
  call void @__olang_scope_close(ptr %s2)
  %t57 = load %"compiler/generic:folded", ptr %l31
  store %"compiler/generic:folded" %t57, ptr %rv
  br label %ret
bb15:
  %t58 = load ptr, ptr %l0, !tbaa !29
  %t60 = getelementptr %"compiler/generic:Program", ptr %t58, i32 0, i32 2
  store ptr %t60, ptr %l33, !tbaa !29
  %t61 = load ptr, ptr %l0, !tbaa !29
  %t62 = load i32, ptr %l5, !tbaa !23
  %t65 = call { i64, ptr } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2etext(ptr %v0, ptr %v0, ptr %t61, i32 %t62)
  store { i64, ptr } %t65, ptr %l36
  br label %bb16
bb16:
  %t66 = load ptr, ptr %l33, !tbaa !29
  %t67 = load { i64, ptr }, ptr %l36, !tbaa !27
  %t68 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePrim(ptr %v0, ptr %v0, ptr %t66, { i64, ptr } %t67)
  store i32 %t68, ptr %l37
  br label %bb17
bb17:
  %t69 = load i32, ptr %l37, !tbaa !23
  store i32 %t69, ptr %l6, !tbaa !23
  %t70 = load ptr, ptr %l0, !tbaa !29
  %t72 = getelementptr %"compiler/generic:Program", ptr %t70, i32 0, i32 2
  %t73 = load i32, ptr %l6, !tbaa !23
  %t76 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsInt(ptr %v0, ptr %t72, i32 %t73)
  store i1 %t76, ptr %l41
  br label %bb18
bb18:
  %t77 = load i1, ptr %l41, !tbaa !21
  %t78 = xor i1 %t77, true
  br i1 %t78, label %bb19, label %bb20
bb19:
  store i1 true, ptr %l43, !tbaa !21
  br label %bb22
bb20:
  %t80 = load ptr, ptr %l0, !tbaa !29
  %t81 = load i32, ptr %l6, !tbaa !23
  %t84 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2ewide(ptr %v0, ptr %t80, i32 %t81)
  store i1 %t84, ptr %l46
  br label %bb21
bb21:
  %t85 = load i1, ptr %l46, !tbaa !21
  store i1 %t85, ptr %l43, !tbaa !21
  br label %bb22
bb22:
  %t86 = load i1, ptr %l43, !tbaa !21
  br i1 %t86, label %bb23, label %bb24
bb23:
  %t87 = call %"compiler/generic:folded" @compiler_2fgeneric_2efolded_2eunfolded()
  store %"compiler/generic:folded" %t87, ptr %l47
  br label %bb25
bb24:
  br label %bb26
bb25:
  call void @__olang_scope_close(ptr %s2)
  %t88 = load %"compiler/generic:folded", ptr %l47
  store %"compiler/generic:folded" %t88, ptr %rv
  br label %ret
bb26:
  %t89 = load ptr, ptr %l0, !tbaa !29
  %t90 = load ptr, ptr %l1, !tbaa !29
  %t91 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t91, ptr %l50, !tbaa !27
  %t92 = getelementptr { i64, ptr }, ptr %l50, i32 0, i32 1
  %t93 = load ptr, ptr %t92, !tbaa !27
  %t94 = getelementptr ptr, ptr %t93, i64 0
  %t95 = load ptr, ptr %t94, !tbaa !39
  %t99 = call %"compiler/generic:folded" @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eeval(ptr %v0, ptr %v1, ptr %v3, ptr %t89, ptr %t90, ptr %t95)
  store %"compiler/generic:folded" %t99, ptr %l52
  br label %bb27
bb27:
  %t100 = load %"compiler/generic:folded", ptr %l52
  store %"compiler/generic:folded" %t100, ptr %l7
  %t101 = getelementptr %"compiler/generic:folded", ptr %l7, i32 0, i32 0
  %t102 = load i64, ptr %t101, !tbaa !24
  %t103 = load i64, ptr @G_2ecompiler_2fgeneric_2eFolded, !tbaa !24
  %t106 = icmp ne i64 %t102, %t103
  br i1 %t106, label %bb28, label %bb29
bb28:
  %t108 = load %"compiler/generic:folded", ptr %l7
  call void @__olang_scope_close(ptr %s2)
  store %"compiler/generic:folded" %t108, ptr %rv
  br label %ret
bb29:
  br label %bb30
bb30:
  %t110 = load i64, ptr @G_2ecompiler_2fgeneric_2eFolded, !tbaa !24
  store i64 %t110, ptr %l57, !tbaa !24
  %t111 = load ptr, ptr %l0, !tbaa !29
  %t112 = getelementptr %"compiler/generic:folded", ptr %l7, i32 0, i32 1
  %t113 = load i64, ptr %t112, !tbaa !24
  %t114 = load i32, ptr %l6, !tbaa !23
  %t118 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2ewrap(ptr %v0, ptr %t111, i64 %t113, i32 %t114)
  store i64 %t118, ptr %l61
  br label %bb31
bb31:
  %t119 = load i32, ptr %l6, !tbaa !23
  %t120 = load i64, ptr %l57, !tbaa !24
  %t121 = load i64, ptr %l61, !tbaa !24
  %t123 = call %"compiler/generic:folded" @compiler_2fgeneric_3afolded_2ector(ptr %s2, i64 %t120, i64 %t121, i32 %t119)
  store %"compiler/generic:folded" %t123, ptr %l63
  br label %bb32
bb32:
  call void @__olang_scope_close(ptr %s2)
  %t124 = load %"compiler/generic:folded", ptr %l63
  store %"compiler/generic:folded" %t124, ptr %rv
  br label %ret
bb33:
  br i1 true, label %bb34, label %bb35
bb34:
  br label %bb36
bb35:
  br label %bb38
bb36:
  %t125 = call %"compiler/generic:folded" @compiler_2fgeneric_2efolded_2eunfolded()
  store %"compiler/generic:folded" %t125, ptr %l64
  br label %bb37
bb37:
  %t126 = load %"compiler/generic:folded", ptr %l64
  store %"compiler/generic:folded" %t126, ptr %rv
  br label %ret
bb38:
  call void @__olang_check_failed(ptr @olang_loc_1222b844891ca59c_eae6e2f85df83468)
  unreachable
ret:
  %rr = load %"compiler/generic:folded", ptr %rv
  ret %"compiler/generic:folded" %rr
}

define dso_local i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2efile(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l6 = alloca ptr
  %rv = alloca i64
  br label %start
start:
  br label %bb0
bb0:
  %t3 = getelementptr %"compiler/generic:Program", ptr %a0, i32 0, i32 0
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t6 = getelementptr %"compiler/load:Loader", ptr %t4, i32 0, i32 10
  %t10 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H7bcf2aeb09afa796f4333e6ec8c3f63f(ptr %v0, ptr %v0, ptr %t6, i64 %a1)
  store ptr %t10, ptr %l6
  br label %bb1
bb1:
  %t11 = load ptr, ptr %l6, !tbaa !29
  %t13 = getelementptr %"compiler/load:Module", ptr %t11, i32 0, i32 4
  %t14 = load i64, ptr %t13, !tbaa !24
  store i64 %t14, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local void @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2efnsIn(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca { i64, ptr }
  %l3 = alloca i1
  %l7 = alloca i1
  %l8 = alloca i32
  %l16 = alloca ptr
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/generic:Program", ptr %t1, i32 0, i32 30
  %t4 = load i64, ptr %l1, !tbaa !24
  %t7 = call { i32, i1 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2eGet_3cI64_2c_20Bool_3e(ptr %v0, ptr %t3, i64 %t4)
  %t8 = extractvalue { i32, i1 } %t7, 1
  %t9 = extractvalue { i32, i1 } %t7, 0
  store i32 %t9, ptr %l8
  %t10 = icmp ne i32 %t9, 0
  br i1 %t10, label %bb2, label %ok.11, !prof !99
ok.11:
  store i1 %t8, ptr %l7
  br label %bb1
bb1:
  %t12 = load i1, ptr %l7, !tbaa !21
  store i1 %t12, ptr %l3, !tbaa !21
  br label %bb4
bb2:
  br label %bb3
bb3:
  store i1 false, ptr %l3, !tbaa !21
  br label %bb4
bb4:
  %t13 = load i1, ptr %l3, !tbaa !21
  br i1 %t13, label %bb5, label %bb6
bb5:
  br label %ret
bb6:
  br label %bb7
bb7:
  %t14 = load ptr, ptr %l0, !tbaa !29
  %t16 = getelementptr %"compiler/generic:Program", ptr %t14, i32 0, i32 30
  %t17 = load i64, ptr %l1, !tbaa !24
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2ePut_3cI64_2c_20Bool_3e(ptr %v0, ptr %t16, i64 %t17, i1 true)
  br label %bb8
bb8:
  %t20 = load ptr, ptr %l0, !tbaa !29
  %t22 = getelementptr %"compiler/generic:Program", ptr %t20, i32 0, i32 0
  %t23 = load ptr, ptr %t22, !tbaa !29
  %t25 = getelementptr %"compiler/load:Loader", ptr %t23, i32 0, i32 10
  %t26 = load i64, ptr %l1, !tbaa !24
  %t29 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H7bcf2aeb09afa796f4333e6ec8c3f63f(ptr %v0, ptr %v0, ptr %t25, i64 %t26)
  store ptr %t29, ptr %l16
  br label %bb9
bb9:
  %t30 = load ptr, ptr %l16, !tbaa !29
  %t32 = getelementptr %"compiler/load:Module", ptr %t30, i32 0, i32 8
  %t33 = load { i64, ptr }, ptr %t32, !tbaa !27
  store { i64, ptr } %t33, ptr %l2, !tbaa !27
  %t35 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t37 = extractvalue { i64, ptr } %t35, 0
  %t39 = icmp sgt i64 %t37, 0
  br i1 %t39, label %bb10, label %bb11
bb10:
  %t41 = load ptr, ptr %l0, !tbaa !29
  %t42 = load i64, ptr %l1, !tbaa !24
  %t43 = load { i64, ptr }, ptr %l2, !tbaa !27
  call void @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eaddFns(ptr %v0, ptr %v0, ptr %t41, i64 %t42, { i64, ptr } %t43)
  br label %bb12
bb11:
  br label %bb13
bb12:
  br label %bb13
bb13:
  br label %ret
ret:
  ret void
}

define dso_local i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2efuncType(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, %"compiler/source:Span" %a2, ptr %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca %"compiler/source:Span"
  %l3 = alloca ptr
  %l4 = alloca i32
  %l5 = alloca { i64, ptr }
  %l6 = alloca %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0"
  %l11 = alloca i32
  %l17 = alloca ptr
  %l21 = alloca i32
  %l22 = alloca { i64, ptr }
  %l26 = alloca i1
  %l27 = alloca { i64, ptr }
  %l35 = alloca %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0"
  %l36 = alloca i1
  %l40 = alloca i1
  %l41 = alloca i32
  %l48 = alloca ptr
  %l49 = alloca ptr
  %l51 = alloca i64
  %l55 = alloca %"compiler/source:Span"
  %l56 = alloca { i64, [3 x i64] }
  %l57 = alloca %"compiler/diagmsg:Msg"
  %l58 = alloca i64
  %l60 = alloca ptr
  %l61 = alloca i32
  %l65 = alloca i32
  %l69 = alloca i32
  %l73 = alloca i32
  %l74 = alloca i32
  %l76 = alloca ptr
  %l77 = alloca i32
  %l82 = alloca i64
  %l83 = alloca i32
  %l85 = alloca ptr
  %l86 = alloca i32
  %l89 = alloca i64
  %l90 = alloca i32
  %s1 = alloca %olang.scope
  %s2 = alloca %olang.scope
  %rv = alloca i32
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store %"compiler/source:Span" %a2, ptr %l2
  store ptr %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load ptr, ptr %l1, !tbaa !29
  %t3 = load ptr, ptr %l3, !tbaa !29
  %t4 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t9 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2esigType(ptr %v0, ptr %v1, ptr %v2, ptr %t1, ptr %t2, ptr %t3, i32 %t4, i32 0)
  store i32 %t9, ptr %l11
  br label %bb1
bb1:
  %t10 = load i32, ptr %l11, !tbaa !23
  store i32 %t10, ptr %l4, !tbaa !23
  %t11 = load ptr, ptr %l0, !tbaa !29
  %t12 = load ptr, ptr %l1, !tbaa !29
  %t13 = load ptr, ptr %l3, !tbaa !29
  %t14 = load i32, ptr %l4, !tbaa !23
  call void @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eflagBans(ptr %v0, ptr %v1, ptr %v2, ptr %t11, ptr %t12, ptr %t13, i32 %t14, i1 false)
  br label %bb2
bb2:
  %t19 = load ptr, ptr %l0, !tbaa !29
  %t21 = getelementptr %"compiler/generic:Program", ptr %t19, i32 0, i32 2
  store ptr %t21, ptr %l17, !tbaa !29
  %t22 = load ptr, ptr %l0, !tbaa !29
  %t24 = getelementptr %"compiler/generic:Program", ptr %t22, i32 0, i32 2
  %t25 = load i32, ptr %l4, !tbaa !23
  %t28 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrors(ptr %v0, ptr %t24, i32 %t25)
  store i32 %t28, ptr %l21
  br label %bb3
bb3:
  %t29 = load ptr, ptr %l17, !tbaa !29
  %t30 = load i32, ptr %l21, !tbaa !23
  %t31 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t29, i32 %t30)
  store { i64, ptr } %t31, ptr %l22
  br label %bb4
bb4:
  %t32 = load { i64, ptr }, ptr %l22, !tbaa !27
  store { i64, ptr } %t32, ptr %l5, !tbaa !27
  %t33 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t35 = extractvalue { i64, ptr } %t33, 0
  %t37 = icmp eq i64 %t35, 1
  br i1 %t37, label %bb5, label %bb6
bb5:
  %t39 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t39, ptr %l27, !tbaa !27
  %t40 = getelementptr { i64, ptr }, ptr %l27, i32 0, i32 1
  %t41 = load ptr, ptr %t40, !tbaa !27
  %t42 = getelementptr i32, ptr %t41, i64 0
  %t43 = load i32, ptr %t42, !tbaa !33
  %t44 = load i32, ptr @G_2ecompiler_2ftypes_2eDefaultErrT, !tbaa !23
  %t47 = icmp eq i32 %t43, %t44
  store i1 %t47, ptr %l26, !tbaa !21
  br label %bb7
bb6:
  store i1 false, ptr %l26, !tbaa !21
  br label %bb7
bb7:
  %t49 = load i1, ptr %l26, !tbaa !21
  br i1 %t49, label %bb8, label %bb9
bb8:
  store %olang.scope zeroinitializer, ptr %s1
  %t50 = load ptr, ptr %l1, !tbaa !29
  %t52 = getelementptr %"compiler/generic:Context", ptr %t50, i32 0, i32 0
  %t53 = load i64, ptr %t52, !tbaa !24
  %t54 = getelementptr %"compiler/source:Span", ptr %l2, i32 0, i32 0
  %t55 = load i32, ptr %t54, !tbaa !23
  %t57 = sext i32 %t55 to i64
  %t60 = call %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" @std_2fpair_3aPair_3cI64_2c_20I64_3e_2ector(ptr %s1, i64 %t53, i64 %t57)
  store %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t60, ptr %l35
  br label %bb10
bb9:
  br label %bb27
bb10:
  %t61 = load %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %l35
  store %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t61, ptr %l6
  %t62 = load ptr, ptr %l0, !tbaa !29
  %t64 = getelementptr %"compiler/generic:Program", ptr %t62, i32 0, i32 25
  %t65 = load %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %l6
  %t68 = call { i32, i1 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H190b78e3c1eec037529224679e114a85(ptr %v0, ptr %t64, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t65)
  %t69 = extractvalue { i32, i1 } %t68, 1
  %t70 = extractvalue { i32, i1 } %t68, 0
  store i32 %t70, ptr %l41
  %t71 = icmp ne i32 %t70, 0
  br i1 %t71, label %bb12, label %ok.72, !prof !99
ok.72:
  store i1 %t69, ptr %l40
  br label %bb11
bb11:
  %t73 = load i1, ptr %l40, !tbaa !21
  store i1 %t73, ptr %l36, !tbaa !21
  br label %bb14
bb12:
  br label %bb13
bb13:
  store i1 false, ptr %l36, !tbaa !21
  br label %bb14
bb14:
  %t74 = load i1, ptr %l36, !tbaa !21
  %t75 = xor i1 %t74, true
  br i1 %t75, label %bb15, label %bb16
bb15:
  store %olang.scope zeroinitializer, ptr %s2
  %t77 = load ptr, ptr %l0, !tbaa !29
  %t79 = getelementptr %"compiler/generic:Program", ptr %t77, i32 0, i32 25
  %t80 = load %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %l6
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H1308596c866d4be061d9da9113abde88(ptr %v0, ptr %t79, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t80, i1 true)
  br label %bb17
bb16:
  br label %bb22
bb17:
  %t83 = load ptr, ptr %l0, !tbaa !29
  %t85 = getelementptr %"compiler/generic:Program", ptr %t83, i32 0, i32 0
  %t86 = load ptr, ptr %t85, !tbaa !29
  %t88 = getelementptr %"compiler/load:Loader", ptr %t86, i32 0, i32 4
  %t89 = load ptr, ptr %t88, !tbaa !29
  store ptr %t89, ptr %l48, !tbaa !29
  %t90 = load ptr, ptr %l0, !tbaa !29
  store ptr %t90, ptr %l49, !tbaa !29
  %t91 = load ptr, ptr %l1, !tbaa !29
  %t93 = getelementptr %"compiler/generic:Context", ptr %t91, i32 0, i32 0
  %t94 = load i64, ptr %t93, !tbaa !24
  store i64 %t94, ptr %l51, !tbaa !24
  %t95 = getelementptr %"compiler/source:Span", ptr %l2, i32 0, i32 0
  %t96 = load i32, ptr %t95, !tbaa !23
  %t97 = getelementptr %"compiler/source:Span", ptr %l2, i32 0, i32 0
  %t98 = load i32, ptr %t97, !tbaa !23
  %t100 = add i32 %t98, 2
  %t103 = call %"compiler/source:Span" @compiler_2fsource_3aSpan_2ector(ptr %s2, i32 %t96, i32 %t100)
  store %"compiler/source:Span" %t103, ptr %l55
  br label %bb18
bb18:
  %t104 = load ptr, ptr %l49, !tbaa !29
  %t105 = load i64, ptr %l51, !tbaa !24
  %t106 = load %"compiler/source:Span", ptr %l55
  %t107 = call { i64, [3 x i64] } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eat(ptr %v0, ptr %t104, i64 %t105, %"compiler/source:Span" %t106)
  store { i64, [3 x i64] } %t107, ptr %l56
  br label %bb19
bb19:
  %t108 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eFuncTypeErrsUnwritten(ptr %v0)
  store %"compiler/diagmsg:Msg" %t108, ptr %l57
  br label %bb20
bb20:
  %t109 = load ptr, ptr %l48, !tbaa !29
  %t110 = load { i64, [3 x i64] }, ptr %l56
  %t111 = load %"compiler/diagmsg:Msg", ptr %l57
  %t112 = call i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eError(ptr %v0, ptr %v0, ptr %t109, { i64, [3 x i64] } %t110, %"compiler/diagmsg:Msg" %t111)
  store i64 %t112, ptr %l58
  br label %bb21
bb21:
  call void @__olang_scope_close(ptr %s2)
  br label %bb22
bb22:
  %t113 = load ptr, ptr %l0, !tbaa !29
  %t115 = getelementptr %"compiler/generic:Program", ptr %t113, i32 0, i32 2
  store ptr %t115, ptr %l60, !tbaa !29
  %t116 = load i32, ptr %l4, !tbaa !23
  store i32 %t116, ptr %l61, !tbaa !23
  %t117 = load ptr, ptr %l0, !tbaa !29
  %t119 = getelementptr %"compiler/generic:Program", ptr %t117, i32 0, i32 2
  %t120 = load i32, ptr %l4, !tbaa !23
  %t123 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParams(ptr %v0, ptr %t119, i32 %t120)
  store i32 %t123, ptr %l65
  br label %bb23
bb23:
  %t124 = load ptr, ptr %l0, !tbaa !29
  %t126 = getelementptr %"compiler/generic:Program", ptr %t124, i32 0, i32 2
  %t127 = load i32, ptr %l4, !tbaa !23
  %t130 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eResult(ptr %v0, ptr %t126, i32 %t127)
  store i32 %t130, ptr %l69
  br label %bb24
bb24:
  %t131 = load ptr, ptr %l0, !tbaa !29
  %t133 = getelementptr %"compiler/generic:Program", ptr %t131, i32 0, i32 2
  %t134 = load i32, ptr %l4, !tbaa !23
  %t137 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eScopesOf(ptr %v0, ptr %t133, i32 %t134)
  store i32 %t137, ptr %l73
  br label %bb25
bb25:
  %t138 = load ptr, ptr %l60, !tbaa !29
  %t139 = load i32, ptr %l61, !tbaa !23
  %t140 = load i32, ptr %l65, !tbaa !23
  %t141 = load i32, ptr %l69, !tbaa !23
  %t142 = load i32, ptr %l73, !tbaa !23
  %t143 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRefunc(ptr %v0, ptr %t138, i32 %t139, i32 %t140, i32 %t141, i32 0, i32 %t142, i64 0)
  store i32 %t143, ptr %l74
  br label %bb26
bb26:
  %t144 = load i32, ptr %l74, !tbaa !23
  store i32 %t144, ptr %l4, !tbaa !23
  call void @__olang_scope_close(ptr %s1)
  br label %bb27
bb27:
  %t145 = load ptr, ptr %l0, !tbaa !29
  %t147 = getelementptr %"compiler/generic:Program", ptr %t145, i32 0, i32 2
  store ptr %t147, ptr %l76, !tbaa !29
  %t148 = load i32, ptr %l4, !tbaa !23
  store i32 %t148, ptr %l77, !tbaa !23
  %t149 = load ptr, ptr %l0, !tbaa !29
  %t150 = load ptr, ptr %l1, !tbaa !29
  %t151 = load ptr, ptr %l3, !tbaa !29
  %t152 = load i32, ptr %l4, !tbaa !23
  %t157 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2epromisesOf(ptr %v0, ptr %v1, ptr %v2, ptr %t149, ptr %t150, ptr %t151, i32 %t152)
  store i64 %t157, ptr %l82
  br label %bb28
bb28:
  %t158 = load ptr, ptr %l76, !tbaa !29
  %t159 = load i32, ptr %l77, !tbaa !23
  %t160 = load i64, ptr %l82, !tbaa !24
  %t161 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eWithPromises(ptr %v0, ptr %t158, i32 %t159, i64 %t160)
  store i32 %t161, ptr %l83
  br label %bb29
bb29:
  %t162 = load i32, ptr %l83, !tbaa !23
  store i32 %t162, ptr %l4, !tbaa !23
  %t163 = load ptr, ptr %l0, !tbaa !29
  %t165 = getelementptr %"compiler/generic:Program", ptr %t163, i32 0, i32 2
  store ptr %t165, ptr %l85, !tbaa !29
  %t166 = load i32, ptr %l4, !tbaa !23
  store i32 %t166, ptr %l86, !tbaa !23
  %t167 = load ptr, ptr %l0, !tbaa !29
  %t168 = load ptr, ptr %l3, !tbaa !29
  %t171 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eSigNames(ptr %v0, ptr %v2, ptr %t167, ptr %t168)
  store i64 %t171, ptr %l89
  br label %bb30
bb30:
  %t172 = load ptr, ptr %l85, !tbaa !29
  %t173 = load i32, ptr %l86, !tbaa !23
  %t174 = load i64, ptr %l89, !tbaa !24
  %t175 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eWithNames(ptr %v0, ptr %t172, i32 %t173, i64 %t174)
  store i32 %t175, ptr %l90
  br label %bb31
bb31:
  %t176 = load i32, ptr %l90, !tbaa !23
  store i32 %t176, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2einstanceArgs(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca { i64, ptr }
  %l3 = alloca { i64, ptr }
  %l4 = alloca { i64, ptr }
  %l5 = alloca i1
  %l6 = alloca i1
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca i64
  %l12 = alloca i64
  %l13 = alloca i32
  %l14 = alloca i32
  %l15 = alloca i32
  %l19 = alloca { i64, ptr }
  %l21 = alloca i64
  %l26 = alloca i64
  %l35 = alloca i64
  %l38 = alloca i64
  %l56 = alloca i64
  %l59 = alloca { i64, ptr }
  %l62 = alloca i32
  %l65 = alloca i32
  %l66 = alloca { i64, ptr }
  %l71 = alloca { i64, ptr }
  %l74 = alloca i32
  %l75 = alloca i64
  %l80 = alloca i32
  %l83 = alloca { i64, ptr }
  %l95 = alloca i32
  %l99 = alloca i32
  %l107 = alloca i32
  %l108 = alloca i32
  %l112 = alloca i32
  %l113 = alloca i32
  %s0 = alloca %olang.scope
  %rv = alloca i32
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/generic:Program", ptr %t1, i32 0, i32 2
  %t4 = load i32, ptr %l1, !tbaa !23
  %t7 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t3, i32 %t4)
  store { i64, ptr } %t7, ptr %l19
  br label %bb1
bb1:
  %t8 = load { i64, ptr }, ptr %l19, !tbaa !27
  store { i64, ptr } %t8, ptr %l2, !tbaa !27
  %t9 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t11 = extractvalue { i64, ptr } %t9, 0
  store i64 %t11, ptr %l21, !tbaa !24
  %t12 = load i64, ptr %l21, !tbaa !24
  %t13 = icmp sge i64 %t12, 0
  br i1 %t13, label %bb2, label %bb3
bb2:
  %t15 = load i64, ptr %l21, !tbaa !24
  %t16 = icmp sle i64 %t15, 2305843009213693951
  br i1 %t16, label %bb4, label %bb5
bb3:
  call void @__olang_check_failed(ptr @olang_loc_b8112a4d89490ffb_a06a8022a06c4bef)
  unreachable
bb4:
  %t18 = load i64, ptr %l21, !tbaa !24
  %t19 = mul i64 %t18, 4
  %t20 = call ptr @__olang_scope_alloc_zeroed(ptr %s0, i64 %t19)
  %t21 = insertvalue { i64, ptr } undef, i64 %t18, 0
  %t22 = insertvalue { i64, ptr } %t21, ptr %t20, 1
  store { i64, ptr } %t22, ptr %l3, !tbaa !27
  %t24 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t26 = extractvalue { i64, ptr } %t24, 0
  store i64 %t26, ptr %l26, !tbaa !24
  %t27 = load i64, ptr %l26, !tbaa !24
  %t28 = icmp sge i64 %t27, 0
  br i1 %t28, label %bb6, label %bb7
bb5:
  call void @__olang_check_failed(ptr @olang_loc_b8112a4d89490ffb_a06a8022a06c4bef)
  unreachable
bb6:
  %t30 = load i64, ptr %l26, !tbaa !24
  %t31 = icmp sle i64 %t30, 2305843009213693951
  br i1 %t31, label %bb8, label %bb9
bb7:
  call void @__olang_check_failed(ptr @olang_loc_efebc3387e505f66_7fb3af75c23c7b1a)
  unreachable
bb8:
  %t33 = load i64, ptr %l26, !tbaa !24
  %t34 = mul i64 %t33, 4
  %t35 = call ptr @__olang_scope_alloc_zeroed(ptr %s0, i64 %t34)
  %t36 = insertvalue { i64, ptr } undef, i64 %t33, 0
  %t37 = insertvalue { i64, ptr } %t36, ptr %t35, 1
  store { i64, ptr } %t37, ptr %l4, !tbaa !27
  store i1 false, ptr %l5, !tbaa !21
  store i1 false, ptr %l6, !tbaa !21
  store i64 0, ptr %l7, !tbaa !24
  %t39 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t41 = extractvalue { i64, ptr } %t39, 0
  store i64 %t41, ptr %l8, !tbaa !24
  store i64 1, ptr %l9, !tbaa !24
  %t43 = load i64, ptr %l8, !tbaa !24
  %t44 = load i64, ptr %l7, !tbaa !24
  %t47 = icmp sgt i64 %t43, %t44
  br i1 %t47, label %bb10, label %bb11
bb9:
  call void @__olang_check_failed(ptr @olang_loc_efebc3387e505f66_7fb3af75c23c7b1a)
  unreachable
bb10:
  %t49 = load i64, ptr %l9, !tbaa !24
  %t51 = icmp sgt i64 %t49, 0
  br i1 %t51, label %bb12, label %bb13
bb11:
  store i64 0, ptr %l35, !tbaa !24
  br label %bb15
bb12:
  %t53 = load i64, ptr %l8, !tbaa !24
  %t54 = load i64, ptr %l7, !tbaa !24
  %t57 = sub i64 %t53, %t54
  %t58 = load i64, ptr %l9, !tbaa !24
  %t61 = add i64 %t57, %t58
  %t63 = sub i64 %t61, 1
  %t64 = load i64, ptr %l9, !tbaa !24
  %t67 = sdiv i64 %t63, %t64
  store i64 %t67, ptr %l38, !tbaa !24
  br label %bb14
bb13:
  store i64 0, ptr %l38, !tbaa !24
  br label %bb14
bb14:
  %t69 = load i64, ptr %l38, !tbaa !24
  store i64 %t69, ptr %l35, !tbaa !24
  br label %bb15
bb15:
  %t70 = load i64, ptr %l35, !tbaa !24
  store i64 %t70, ptr %l10, !tbaa !24
  store i64 0, ptr %l11, !tbaa !24
  br label %bb16
bb16:
  %t71 = load i64, ptr %l11, !tbaa !24
  %t72 = load i64, ptr %l10, !tbaa !24
  %t75 = icmp slt i64 %t71, %t72
  %t77 = xor i1 %t75, true
  br i1 %t77, label %bb17, label %bb18
bb17:
  br label %bb33
bb18:
  br label %bb19
bb19:
  %t79 = load i64, ptr %l7, !tbaa !24
  %t80 = load i64, ptr %l11, !tbaa !24
  %t81 = load i64, ptr %l9, !tbaa !24
  %t84 = mul i64 %t80, %t81
  %t87 = add i64 %t79, %t84
  store i64 %t87, ptr %l12, !tbaa !24
  %t89 = load i64, ptr %l12, !tbaa !24
  store i64 %t89, ptr %l56, !tbaa !24
  %t90 = load ptr, ptr %l0, !tbaa !29
  %t92 = getelementptr %"compiler/generic:Program", ptr %t90, i32 0, i32 2
  %t93 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t93, ptr %l59, !tbaa !27
  %t94 = load i64, ptr %l12, !tbaa !24
  %t96 = getelementptr { i64, ptr }, ptr %l59, i32 0, i32 1
  %t97 = load ptr, ptr %t96, !tbaa !27
  %t98 = getelementptr i32, ptr %t97, i64 %t94
  %t99 = load i32, ptr %t98, !tbaa !33
  %t102 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t92, i32 %t99)
  store i32 %t102, ptr %l62
  br label %bb20
bb20:
  %t103 = load i32, ptr %l62, !range !{i32 0, i32 33}
  %t105 = trunc i64 21 to i32
  %t106 = icmp eq i32 %t103, %t105
  br i1 %t106, label %bb21, label %bb22
bb21:
  %t108 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t108, ptr %l66, !tbaa !27
  %t109 = load i64, ptr %l12, !tbaa !24
  %t111 = getelementptr { i64, ptr }, ptr %l66, i32 0, i32 1
  %t112 = load ptr, ptr %t111, !tbaa !27
  %t113 = getelementptr i32, ptr %t112, i64 %t109
  %t114 = load i32, ptr %t113, !tbaa !33
  store i32 %t114, ptr %l65, !tbaa !23
  br label %bb24
bb22:
  %t116 = load ptr, ptr %l0, !tbaa !29
  %t118 = getelementptr %"compiler/generic:Program", ptr %t116, i32 0, i32 2
  %t119 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t119, ptr %l71, !tbaa !27
  %t120 = load i64, ptr %l12, !tbaa !24
  %t122 = getelementptr { i64, ptr }, ptr %l71, i32 0, i32 1
  %t123 = load ptr, ptr %t122, !tbaa !27
  %t124 = getelementptr i32, ptr %t123, i64 %t120
  %t125 = load i32, ptr %t124, !tbaa !33
  %t128 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePlain(ptr %v0, ptr %t118, i32 %t125)
  store i32 %t128, ptr %l74
  br label %bb23
bb23:
  %t129 = load i32, ptr %l74, !tbaa !23
  store i32 %t129, ptr %l65, !tbaa !23
  br label %bb24
bb24:
  %t130 = load i32, ptr %l65, !tbaa !23
  %t131 = load i64, ptr %l56, !tbaa !24
  %t132 = getelementptr { i64, ptr }, ptr %l3, i32 0, i32 1
  %t133 = load ptr, ptr %t132, !tbaa !27
  %t134 = getelementptr i32, ptr %t133, i64 %t131
  store i32 %t130, ptr %t134, !tbaa !33
  %t135 = load i64, ptr %l12, !tbaa !24
  store i64 %t135, ptr %l75, !tbaa !24
  %t136 = load ptr, ptr %l0, !tbaa !29
  %t138 = getelementptr %"compiler/generic:Program", ptr %t136, i32 0, i32 2
  %t139 = load i64, ptr %l12, !tbaa !24
  %t141 = getelementptr { i64, ptr }, ptr %l3, i32 0, i32 1
  %t142 = load ptr, ptr %t141, !tbaa !27
  %t143 = getelementptr i32, ptr %t142, i64 %t139
  %t144 = load i32, ptr %t143, !tbaa !33
  %t147 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eUnnamed(ptr %v0, ptr %t138, i32 %t144)
  store i32 %t147, ptr %l80
  br label %bb25
bb25:
  %t148 = load i32, ptr %l80, !tbaa !23
  %t149 = load i64, ptr %l75, !tbaa !24
  %t150 = getelementptr { i64, ptr }, ptr %l4, i32 0, i32 1
  %t151 = load ptr, ptr %t150, !tbaa !27
  %t152 = getelementptr i32, ptr %t151, i64 %t149
  store i32 %t148, ptr %t152, !tbaa !33
  %t153 = load i64, ptr %l12, !tbaa !24
  %t155 = getelementptr { i64, ptr }, ptr %l3, i32 0, i32 1
  %t156 = load ptr, ptr %t155, !tbaa !27
  %t157 = getelementptr i32, ptr %t156, i64 %t153
  %t158 = load i32, ptr %t157, !tbaa !33
  %t159 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t159, ptr %l83, !tbaa !27
  %t160 = load i64, ptr %l12, !tbaa !24
  %t162 = getelementptr { i64, ptr }, ptr %l83, i32 0, i32 1
  %t163 = load ptr, ptr %t162, !tbaa !27
  %t164 = getelementptr i32, ptr %t163, i64 %t160
  %t165 = load i32, ptr %t164, !tbaa !33
  %t168 = icmp ne i32 %t158, %t165
  br i1 %t168, label %bb26, label %bb27
bb26:
  store i1 true, ptr %l5, !tbaa !21
  br label %bb28
bb27:
  br label %bb28
bb28:
  %t170 = load i64, ptr %l12, !tbaa !24
  %t172 = getelementptr { i64, ptr }, ptr %l4, i32 0, i32 1
  %t173 = load ptr, ptr %t172, !tbaa !27
  %t174 = getelementptr i32, ptr %t173, i64 %t170
  %t175 = load i32, ptr %t174, !tbaa !33
  %t176 = load i64, ptr %l12, !tbaa !24
  %t178 = getelementptr { i64, ptr }, ptr %l3, i32 0, i32 1
  %t179 = load ptr, ptr %t178, !tbaa !27
  %t180 = getelementptr i32, ptr %t179, i64 %t176
  %t181 = load i32, ptr %t180, !tbaa !33
  %t184 = icmp ne i32 %t175, %t181
  br i1 %t184, label %bb29, label %bb30
bb29:
  store i1 true, ptr %l6, !tbaa !21
  br label %bb31
bb30:
  br label %bb31
bb31:
  br label %bb32
bb32:
  %t186 = load i64, ptr %l11, !tbaa !24
  %t188 = add i64 %t186, 1
  store i64 %t188, ptr %l11, !tbaa !24
  br label %bb16
bb33:
  %t190 = load i1, ptr %l5, !tbaa !21
  br i1 %t190, label %bb34, label %bb35
bb34:
  %t192 = load ptr, ptr %l0, !tbaa !29
  %t194 = getelementptr %"compiler/generic:Program", ptr %t192, i32 0, i32 2
  %t195 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t198 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eList(ptr %v0, ptr %s0, ptr %t194, { i64, ptr } %t195)
  store i32 %t198, ptr %l99
  br label %bb36
bb35:
  %t199 = load i32, ptr %l1, !tbaa !23
  store i32 %t199, ptr %l95, !tbaa !23
  br label %bb37
bb36:
  %t201 = load i32, ptr %l99, !tbaa !23
  store i32 %t201, ptr %l95, !tbaa !23
  br label %bb37
bb37:
  %t202 = load i32, ptr %l95, !tbaa !23
  store i32 %t202, ptr %l13, !tbaa !23
  %t203 = load i1, ptr %l6, !tbaa !21
  %t205 = xor i1 %t203, true
  br i1 %t205, label %bb38, label %bb39
bb38:
  %t207 = load i32, ptr %l13, !tbaa !23
  call void @__olang_scope_close(ptr %s0)
  store i32 %t207, ptr %rv
  br label %ret
bb39:
  br label %bb40
bb40:
  %t209 = load ptr, ptr %l0, !tbaa !29
  %t211 = getelementptr %"compiler/generic:Program", ptr %t209, i32 0, i32 2
  %t212 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t215 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eList(ptr %v0, ptr %s0, ptr %t211, { i64, ptr } %t212)
  store i32 %t215, ptr %l107
  br label %bb41
bb41:
  %t216 = load i32, ptr %l107, !tbaa !23
  store i32 %t216, ptr %l14, !tbaa !23
  %t217 = load ptr, ptr %l0, !tbaa !29
  %t219 = getelementptr %"compiler/generic:Program", ptr %t217, i32 0, i32 46
  %t220 = load i32, ptr %l14, !tbaa !23
  %t223 = call { i32, i32 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aListId_2c_20compile_H6dc73389c50b0fe7ce755995350ae9cd(ptr %v0, ptr %t219, i32 %t220)
  %t224 = extractvalue { i32, i32 } %t223, 1
  %t225 = extractvalue { i32, i32 } %t223, 0
  store i32 %t225, ptr %l113
  %t226 = icmp ne i32 %t225, 0
  br i1 %t226, label %bb43, label %ok.227, !prof !99
ok.227:
  store i32 %t224, ptr %l112
  br label %bb42
bb42:
  %t228 = load i32, ptr %l112, !tbaa !23
  store i32 %t228, ptr %l108, !tbaa !23
  br label %bb45
bb43:
  br label %bb44
bb44:
  store i32 -1, ptr %l108, !tbaa !23
  br label %bb45
bb45:
  %t229 = load i32, ptr %l108, !tbaa !23
  store i32 %t229, ptr %l15, !tbaa !23
  %t230 = load i32, ptr %l15, !tbaa !23
  %t232 = icmp sge i32 %t230, 0
  br i1 %t232, label %bb46, label %bb47
bb46:
  %t234 = load i32, ptr %l15, !tbaa !23
  call void @__olang_scope_close(ptr %s0)
  store i32 %t234, ptr %rv
  br label %ret
bb47:
  br label %bb48
bb48:
  %t236 = load ptr, ptr %l0, !tbaa !29
  %t238 = getelementptr %"compiler/generic:Program", ptr %t236, i32 0, i32 46
  %t239 = load i32, ptr %l14, !tbaa !23
  %t240 = load i32, ptr %l13, !tbaa !23
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aListId_2c_20compile_Ha0a2a345eb8118fa74dc4419a52b5a9c(ptr %v0, ptr %t238, i32 %t239, i32 %t240)
  br label %bb49
bb49:
  %t244 = load i32, ptr %l13, !tbaa !23
  call void @__olang_scope_close(ptr %s0)
  store i32 %t244, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2einstanceLen(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1, ptr %a2, { i64, ptr } %a3) #0 {
entry:
  %l0 = alloca ptr
  %l4 = alloca { i64, ptr }
  %l8 = alloca { i64, ptr }
  %l10 = alloca i1
  %l12 = alloca i1
  %l14 = alloca ptr
  %l19 = alloca i32
  %l20 = alloca i1
  %s0 = alloca %olang.scope
  %rv = alloca i1
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t7 = call { i64, ptr } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eLenKey(ptr %v0, ptr %v2, ptr %v3, ptr %s0, ptr %t1, ptr %a2, { i64, ptr } %a3)
  store { i64, ptr } %t7, ptr %l8
  br label %bb1
bb1:
  %t8 = load { i64, ptr }, ptr %l8, !tbaa !27
  store { i64, ptr } %t8, ptr %l4, !tbaa !27
  %t9 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t11 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %s0, { i64, ptr } %t9, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d17, i32 0, i32 1) })
  store i1 %t11, ptr %l10
  br label %bb2
bb2:
  %t12 = load i1, ptr %l10, !tbaa !21
  %t13 = xor i1 %t12, true
  br i1 %t13, label %bb3, label %bb4
bb3:
  %t17 = getelementptr %"compiler/generic:Context", ptr %a1, i32 0, i32 2
  store ptr %t17, ptr %l14, !tbaa !29
  %t18 = load ptr, ptr %l0, !tbaa !29
  %t20 = getelementptr %"compiler/generic:Program", ptr %t18, i32 0, i32 0
  %t21 = load ptr, ptr %t20, !tbaa !29
  %t23 = getelementptr %"compiler/load:Loader", ptr %t21, i32 0, i32 3
  %t24 = load ptr, ptr %t23, !tbaa !29
  %t25 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t28 = call i32 @compiler_2fsource_2ecompiler_2fsource_3aNames_2eIntern(ptr %v0, ptr %s0, ptr %t24, { i64, ptr } %t25)
  store i32 %t28, ptr %l19
  br label %bb5
bb4:
  store i1 false, ptr %l12, !tbaa !21
  br label %bb7
bb5:
  %t29 = load ptr, ptr %l14, !tbaa !29
  %t30 = load i32, ptr %l19, !tbaa !23
  %t31 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fsource_3aNameId_2c_20compil_He6be2b0836caba7ddc59483ff74db438(ptr %v1, ptr %t29, i32 %t30)
  store i1 %t31, ptr %l20
  br label %bb6
bb6:
  %t32 = load i1, ptr %l20, !tbaa !21
  store i1 %t32, ptr %l12, !tbaa !21
  br label %bb7
bb7:
  call void @__olang_scope_close(ptr %s0)
  %t33 = load i1, ptr %l12, !tbaa !21
  store i1 %t33, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local { i64, ptr } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2elengthsDecidedOf(ptr %v0, ptr %v1, ptr %a0, i64 %a1, i64 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %lp4 = alloca ptr
  %l9 = alloca i1
  %l10 = alloca { i64, ptr }
  %l14 = alloca { i64, ptr }
  %l15 = alloca i32
  %l16 = alloca i64
  %l17 = alloca { i64, ptr }
  %l19 = alloca ptr
  %l20 = alloca i64
  %l24 = alloca %"compiler/generic:fnRow"
  %l29 = alloca i64
  %l32 = alloca ptr
  %l36 = alloca %"compiler/generic:fnRow"
  %l39 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load i64, ptr %l1, !tbaa !24
  %t3 = load ptr, ptr %l0, !tbaa !29
  %t5 = getelementptr %"compiler/generic:Program", ptr %t3, i32 0, i32 35
  %t9 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Array_3cBool_3e_3e_2eHas_3cI64_2c_20Array_3cBool_3e_3e(ptr %v0, ptr %t5, i64 %t1)
  store i1 %t9, ptr %l9
  br label %bb1
bb1:
  %t10 = load i1, ptr %l9, !tbaa !21
  br i1 %t10, label %bb2, label %bb3
bb2:
  %t11 = load ptr, ptr %l0, !tbaa !29
  %t13 = getelementptr %"compiler/generic:Program", ptr %t11, i32 0, i32 35
  %t14 = load i64, ptr %l1, !tbaa !24
  %t17 = call { i32, { i64, ptr } } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Array_3cBool_3e_3e_2eGet_3cI64_2c_20Array_3cBool_3e_3e(ptr %v0, ptr %v1, ptr %t13, i64 %t14)
  %t18 = extractvalue { i32, { i64, ptr } } %t17, 1
  %t19 = extractvalue { i32, { i64, ptr } } %t17, 0
  store i32 %t19, ptr %l15
  %t20 = icmp ne i32 %t19, 0
  br i1 %t20, label %bb5, label %ok.21, !prof !99
ok.21:
  store { i64, ptr } %t18, ptr %l14
  br label %bb4
bb3:
  br label %bb8
bb4:
  %t22 = load { i64, ptr }, ptr %l14, !tbaa !27
  %t23 = extractvalue { i64, ptr } %t22, 0
  store i64 %t23, ptr %l16, !tbaa !24
  %t24 = load i64, ptr %l16, !tbaa !24
  %t25 = mul i64 %t24, 1
  %t26 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t25)
  %t27 = insertvalue { i64, ptr } undef, i64 %t24, 0
  %t28 = insertvalue { i64, ptr } %t27, ptr %t26, 1
  store { i64, ptr } %t28, ptr %l17, !tbaa !27
  %t29 = getelementptr { i64, ptr }, ptr %l17, i32 0, i32 1
  %t30 = load ptr, ptr %t29, !tbaa !27
  %t31 = getelementptr { i64, ptr }, ptr %l14, i32 0, i32 1
  %t32 = load ptr, ptr %t31, !tbaa !27
  %t33 = load i64, ptr %l16, !tbaa !24
  %t34 = mul i64 %t33, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t30, ptr %t32, i64 %t34, i1 false)
  %t35 = load { i64, ptr }, ptr %l17, !tbaa !27
  store { i64, ptr } %t35, ptr %l10, !tbaa !27
  br label %bb7
bb5:
  br label %bb6
bb6:
  call void @__olang_check_failed(ptr @olang_loc_9b38dcb85fe2b78c_3b1a6cace8e1aa00)
  unreachable
bb7:
  call void @__olang_scope_close(ptr %s0)
  %t36 = load { i64, ptr }, ptr %l10, !tbaa !27
  store { i64, ptr } %t36, ptr %rv
  br label %ret
bb8:
  %t37 = load ptr, ptr %l0, !tbaa !29
  %t39 = getelementptr %"compiler/generic:Program", ptr %t37, i32 0, i32 35
  store ptr %t39, ptr %l19, !tbaa !29
  %t40 = load i64, ptr %l1, !tbaa !24
  store i64 %t40, ptr %l20, !tbaa !24
  %t41 = load ptr, ptr %l0, !tbaa !29
  %t43 = getelementptr %"compiler/generic:Program", ptr %t41, i32 0, i32 29
  %t44 = load i64, ptr %l1, !tbaa !24
  %t47 = call %"compiler/generic:fnRow" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fgeneric_3afnRow_3e_2eAt_3ccompiler_2fgeneric_3afnRow_3e(ptr %v0, ptr %v0, ptr %t43, i64 %t44)
  store %"compiler/generic:fnRow" %t47, ptr %l24
  br label %bb9
bb9:
  %t48 = getelementptr %"compiler/generic:fnRow", ptr %l24, i32 0, i32 1
  %t49 = load ptr, ptr %t48, !tbaa !29
  %t51 = getelementptr %"compiler/ast:Func", ptr %t49, i32 0, i32 3
  %t52 = load ptr, ptr %t51, !tbaa !29
  %t54 = getelementptr %"compiler/ast:Sig", ptr %t52, i32 0, i32 0
  %t55 = load { i64, ptr }, ptr %t54, !tbaa !27
  %t57 = extractvalue { i64, ptr } %t55, 0
  %t59 = add i64 %t57, 1
  store i64 %t59, ptr %l29, !tbaa !24
  %t60 = load i64, ptr %l29, !tbaa !24
  %t61 = icmp sge i64 %t60, 0
  br i1 %t61, label %bb10, label %bb11
bb10:
  %t63 = load i64, ptr %l29, !tbaa !24
  %t64 = mul i64 %t63, 1
  %t65 = call ptr @__olang_scope_alloc_zeroed(ptr %s0, i64 %t64)
  %t66 = insertvalue { i64, ptr } undef, i64 %t63, 0
  %t67 = insertvalue { i64, ptr } %t66, ptr %t65, 1
  %t68 = load ptr, ptr %l19, !tbaa !29
  %t69 = load i64, ptr %l20, !tbaa !24
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Array_3cBool_3e_3e_2ePut_3cI64_2c_20Array_3cBool_3e_3e(ptr %v0, ptr %t68, i64 %t69, { i64, ptr } %t67)
  br label %bb12
bb11:
  call void @__olang_check_failed(ptr @olang_loc_b6a09900eca87506_fcd5eabfc1944c82)
  unreachable
bb12:
  %t71 = load ptr, ptr %l0, !tbaa !29
  store ptr %t71, ptr %l32, !tbaa !29
  %t72 = load ptr, ptr %l0, !tbaa !29
  %t74 = getelementptr %"compiler/generic:Program", ptr %t72, i32 0, i32 29
  %t75 = load i64, ptr %l1, !tbaa !24
  %t78 = call %"compiler/generic:fnRow" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fgeneric_3afnRow_3e_2eAt_3ccompiler_2fgeneric_3afnRow_3e(ptr %v0, ptr %v0, ptr %t74, i64 %t75)
  store %"compiler/generic:fnRow" %t78, ptr %l36
  br label %bb13
bb13:
  %t80 = load ptr, ptr %l32, !tbaa !29
  %t83 = call { i64, ptr } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2elengthsDecided(ptr %v0, ptr %v0, ptr %v1, ptr %t80, ptr %l36, i64 %a2)
  store { i64, ptr } %t83, ptr %l39
  br label %bb14
bb14:
  %t84 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 16, i64 8)
  store ptr %t84, ptr %lp4
  %t85 = load { i64, ptr }, ptr %l39, !tbaa !27
  %t86 = load ptr, ptr %lp4
  store { i64, ptr } %t85, ptr %t86, !tbaa !27
  %t87 = load ptr, ptr %l0, !tbaa !29
  %t89 = getelementptr %"compiler/generic:Program", ptr %t87, i32 0, i32 35
  %t90 = load i64, ptr %l1, !tbaa !24
  %t91 = load ptr, ptr %lp4
  %t92 = load { i64, ptr }, ptr %t91, !tbaa !27
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Array_3cBool_3e_3e_2ePut_3cI64_2c_20Array_3cBool_3e_3e(ptr %v0, ptr %t89, i64 %t90, { i64, ptr } %t92)
  br label %bb15
bb15:
  %t96 = load ptr, ptr %lp4
  %t97 = load { i64, ptr }, ptr %t96, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  store { i64, ptr } %t97, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eliteralMade(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1, ptr %a2, i32 %a3, { i64, ptr } %a4) #0 {
entry:
  %l0 = alloca ptr
  %l3 = alloca i32
  %l4 = alloca { i64, ptr }
  %l8 = alloca i1
  %l12 = alloca i32
  %l18 = alloca ptr
  %l19 = alloca ptr
  %l20 = alloca ptr
  %l21 = alloca ptr
  %l25 = alloca i32
  %l27 = alloca i32
  %l29 = alloca ptr
  %l32 = alloca i32
  %l35 = alloca i32
  %l36 = alloca i32
  %s0 = alloca %olang.scope
  %rv = alloca i32
  store ptr %a0, ptr %l0
  store i32 %a3, ptr %l3
  store { i64, ptr } %a4, ptr %l4
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load i32, ptr %l3, !tbaa !23
  %t2 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t5 = icmp eq i32 %t1, %t2
  br i1 %t5, label %bb1, label %bb2
bb1:
  store i1 true, ptr %l8, !tbaa !21
  br label %bb4
bb2:
  %t7 = load ptr, ptr %l0, !tbaa !29
  %t9 = getelementptr %"compiler/generic:Program", ptr %t7, i32 0, i32 2
  %t10 = load i32, ptr %l3, !tbaa !23
  %t13 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t9, i32 %t10)
  store i32 %t13, ptr %l12
  br label %bb3
bb3:
  %t14 = load i32, ptr %l12, !range !{i32 0, i32 33}
  %t16 = trunc i64 19 to i32
  %t17 = icmp eq i32 %t14, %t16
  %t19 = xor i1 %t17, true
  store i1 %t19, ptr %l8, !tbaa !21
  br label %bb4
bb4:
  %t21 = load i1, ptr %l8, !tbaa !21
  br i1 %t21, label %bb5, label %bb6
bb5:
  %t22 = load i32, ptr %l3, !tbaa !23
  call void @__olang_scope_close(ptr %s0)
  store i32 %t22, ptr %rv
  br label %ret
bb6:
  br label %bb7
bb7:
  %t24 = load ptr, ptr %l0, !tbaa !29
  %t26 = getelementptr %"compiler/generic:Program", ptr %t24, i32 0, i32 2
  store ptr %t26, ptr %l18, !tbaa !29
  %t27 = load ptr, ptr %l0, !tbaa !29
  store ptr %t27, ptr %l19, !tbaa !29
  store ptr %a1, ptr %l20, !tbaa !29
  store ptr %a2, ptr %l21, !tbaa !29
  %t30 = load ptr, ptr %l0, !tbaa !29
  %t32 = getelementptr %"compiler/generic:Program", ptr %t30, i32 0, i32 2
  %t33 = load i32, ptr %l3, !tbaa !23
  %t36 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eElem(ptr %v0, ptr %t32, i32 %t33)
  store i32 %t36, ptr %l25
  br label %bb8
bb8:
  %t37 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t38 = load ptr, ptr %l19, !tbaa !29
  %t39 = load ptr, ptr %l20, !tbaa !29
  %t40 = load ptr, ptr %l21, !tbaa !29
  %t41 = load i32, ptr %l25, !tbaa !23
  %t43 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eitemsElem(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %t38, ptr %t39, ptr %t40, i32 %t41, { i64, ptr } %t37)
  store i32 %t43, ptr %l27
  br label %bb9
bb9:
  %t44 = load ptr, ptr %l0, !tbaa !29
  %t46 = getelementptr %"compiler/generic:Program", ptr %t44, i32 0, i32 2
  store ptr %t46, ptr %l29, !tbaa !29
  %t47 = load ptr, ptr %l0, !tbaa !29
  %t49 = getelementptr %"compiler/generic:Program", ptr %t47, i32 0, i32 2
  %t51 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePrim(ptr %v0, ptr %s0, ptr %t49, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d18, i32 0, i32 1) })
  store i32 %t51, ptr %l32
  br label %bb10
bb10:
  %t52 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t54 = extractvalue { i64, ptr } %t52, 0
  %t55 = load ptr, ptr %l29, !tbaa !29
  %t56 = load i32, ptr %l32, !tbaa !23
  %t58 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eConst(ptr %v0, ptr %t55, i32 %t56, i64 %t54)
  store i32 %t58, ptr %l35
  br label %bb11
bb11:
  %t59 = load ptr, ptr %l18, !tbaa !29
  %t60 = load i32, ptr %l27, !tbaa !23
  %t61 = load i32, ptr %l35, !tbaa !23
  %t62 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eArray(ptr %v0, ptr %t59, i32 %t60, i32 %t61)
  store i32 %t62, ptr %l36
  br label %bb12
bb12:
  call void @__olang_scope_close(ptr %s0)
  %t63 = load i32, ptr %l36, !tbaa !23
  store i32 %t63, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eliteralOf(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1, ptr %a2, { i64, ptr } %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca { i64, ptr }
  %l4 = alloca %"compiler/source:Span"
  %l5 = alloca i32
  %l6 = alloca %"compiler/names:Ref"
  %l7 = alloca i32
  %l8 = alloca ptr
  %l9 = alloca i1
  %l17 = alloca ptr
  %l21 = alloca i64
  %l23 = alloca %"compiler/names:Ref"
  %l27 = alloca i1
  %l31 = alloca i1
  %l36 = alloca ptr
  %l37 = alloca ptr
  %l38 = alloca %"compiler/source:Span"
  %l39 = alloca i32
  %l42 = alloca { i64, ptr }
  %l48 = alloca i32
  %l52 = alloca i32
  %l56 = alloca i32
  %s1 = alloca %olang.scope
  %rv = alloca i32
  %t80 = alloca i64
  %t97 = alloca { i64, [5 x i64] }, align 8
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store ptr %a2, ptr %l2
  store { i64, ptr } %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l2, !tbaa !29
  store ptr %t1, ptr %l8, !tbaa !29
  store i1 false, ptr %l9, !tbaa !21
  %t2 = load ptr, ptr %l8, !tbaa !29
  %t3 = icmp ne ptr %t2, null
  br i1 %t3, label %bb1, label %bb2
bb1:
  %t5 = load ptr, ptr %l8, !tbaa !29
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 28}
  %t8 = icmp eq i64 %t6, 0
  store i1 %t8, ptr %l9, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l9, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  %t10 = load ptr, ptr %l2, !tbaa !29
  %t12 = getelementptr { i64, [4 x i64] }, ptr %t10, i32 0, i32 1
  %t13 = getelementptr { %"compiler/source:Span", i32 }, ptr %t12, i32 0, i32 0
  %t14 = load %"compiler/source:Span", ptr %t13
  store %"compiler/source:Span" %t14, ptr %l4
  %t16 = load ptr, ptr %l2, !tbaa !29
  %t18 = getelementptr { i64, [4 x i64] }, ptr %t16, i32 0, i32 1
  %t19 = getelementptr { %"compiler/source:Span", i32 }, ptr %t18, i32 0, i32 1
  %t20 = load i32, ptr %t19
  store i32 %t20, ptr %l5, !tbaa !23
  br label %bb5
bb4:
  br label %bb30
bb5:
  store %olang.scope zeroinitializer, ptr %s1
  %t22 = load ptr, ptr %l0, !tbaa !29
  %t24 = getelementptr %"compiler/generic:Program", ptr %t22, i32 0, i32 1
  %t25 = load ptr, ptr %t24, !tbaa !29
  store ptr %t25, ptr %l17, !tbaa !29
  %t26 = load ptr, ptr %l0, !tbaa !29
  %t27 = load ptr, ptr %l1, !tbaa !29
  %t29 = getelementptr %"compiler/generic:Context", ptr %t27, i32 0, i32 0
  %t30 = load i64, ptr %t29, !tbaa !24
  %t33 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2efile(ptr %v0, ptr %t26, i64 %t30)
  store i64 %t33, ptr %l21
  br label %bb6
bb6:
  %t34 = getelementptr %"compiler/source:Span", ptr %l4, i32 0, i32 0
  %t35 = load i32, ptr %t34, !tbaa !23
  %t36 = load ptr, ptr %l17, !tbaa !29
  %t37 = load i64, ptr %l21, !tbaa !24
  %t39 = call %"compiler/names:Ref" @compiler_2fnames_2ecompiler_2fnames_3aResolver_2eUse(ptr %v0, ptr %t36, i64 %t37, i32 %t35)
  store %"compiler/names:Ref" %t39, ptr %l23
  br label %bb7
bb7:
  %t40 = load %"compiler/names:Ref", ptr %l23
  store %"compiler/names:Ref" %t40, ptr %l6
  %t41 = getelementptr %"compiler/names:Ref", ptr %l6, i32 0, i32 0
  %t42 = load i32, ptr %t41, !range !{i32 0, i32 9}
  %t44 = trunc i64 4 to i32
  %t45 = icmp eq i32 %t42, %t44
  %t47 = xor i1 %t45, true
  br i1 %t47, label %bb8, label %bb9
bb8:
  %t49 = getelementptr %"compiler/names:Ref", ptr %l6, i32 0, i32 0
  %t50 = load i32, ptr %t49, !range !{i32 0, i32 9}
  %t52 = trunc i64 7 to i32
  %t53 = icmp eq i32 %t50, %t52
  %t55 = xor i1 %t53, true
  store i1 %t55, ptr %l27, !tbaa !21
  br label %bb10
bb9:
  store i1 false, ptr %l27, !tbaa !21
  br label %bb10
bb10:
  %t57 = load i1, ptr %l27, !tbaa !21
  br i1 %t57, label %bb11, label %bb12
bb11:
  %t58 = getelementptr %"compiler/names:Ref", ptr %l6, i32 0, i32 0
  %t59 = load i32, ptr %t58, !range !{i32 0, i32 9}
  %t61 = trunc i64 8 to i32
  %t62 = icmp eq i32 %t59, %t61
  %t64 = xor i1 %t62, true
  store i1 %t64, ptr %l31, !tbaa !21
  br label %bb13
bb12:
  store i1 false, ptr %l31, !tbaa !21
  br label %bb13
bb13:
  %t66 = load i1, ptr %l31, !tbaa !21
  br i1 %t66, label %bb14, label %bb15
bb14:
  %t67 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  call void @__olang_scope_close(ptr %s1)
  store i32 %t67, ptr %rv
  br label %ret
bb15:
  br label %bb16
bb16:
  %t69 = load ptr, ptr %l0, !tbaa !29
  store ptr %t69, ptr %l36, !tbaa !29
  %t70 = load ptr, ptr %l1, !tbaa !29
  store ptr %t70, ptr %l37, !tbaa !29
  %t71 = load %"compiler/source:Span", ptr %l4
  store %"compiler/source:Span" %t71, ptr %l38
  %t72 = load i32, ptr %l5, !tbaa !23
  store i32 %t72, ptr %l39, !tbaa !23
  %t73 = icmp sge i64 1, 0
  br i1 %t73, label %bb17, label %bb18
bb17:
  %t75 = icmp sle i64 1, 2305843009213693951
  br i1 %t75, label %bb19, label %bb20
bb18:
  call void @__olang_check_failed(ptr @olang_loc_2edbc1bd270558db_85d99d8e9bee4edf)
  unreachable
bb19:
  %t77 = mul i64 1, 4
  %t78 = call ptr @__olang_scope_alloc(ptr %s1, i64 %t77)
  %t79 = load i32, ptr %l39, !tbaa !23
  store i64 0, ptr %t80
  br label %fill.81
fill.81:
  %t84 = load i64, ptr %t80
  %t85 = icmp slt i64 %t84, 1
  br i1 %t85, label %fillb.82, label %filld.83
fillb.82:
  %t86 = getelementptr i32, ptr %t78, i64 %t84
  store i32 %t79, ptr %t86
  %t87 = add i64 %t84, 1
  store i64 %t87, ptr %t80
  br label %fill.81
filld.83:
  %t88 = insertvalue { i64, ptr } undef, i64 1, 0
  %t89 = insertvalue { i64, ptr } %t88, ptr %t78, 1
  store { i64, ptr } %t89, ptr %l42, !tbaa !27
  %t90 = icmp sge i64 0, 0
  br i1 %t90, label %bb21, label %bb22
bb20:
  call void @__olang_check_failed(ptr @olang_loc_2edbc1bd270558db_85d99d8e9bee4edf)
  unreachable
bb21:
  %t92 = icmp sle i64 0, 1152921504606846975
  br i1 %t92, label %bb23, label %bb24
bb22:
  call void @__olang_check_failed(ptr @olang_loc_2edbc1bd270558db_85d99d8e9bee4edf)
  unreachable
bb23:
  %t94 = mul i64 0, 8
  %t95 = insertvalue { i64, ptr } undef, i64 0, 0
  %t96 = insertvalue { i64, ptr } %t95, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  store { i64, [5 x i64] } zeroinitializer, ptr %t97
  %t98 = getelementptr { i64, [5 x i64] }, ptr %t97, i32 0, i32 0
  store i64 0, ptr %t98
  %t99 = load %"compiler/source:Span", ptr %l38
  %t100 = insertvalue { %"compiler/source:Span", { i64, ptr }, { i64, ptr } } undef, %"compiler/source:Span" %t99, 0
  %t101 = load { i64, ptr }, ptr %l42, !tbaa !27
  %t102 = insertvalue { %"compiler/source:Span", { i64, ptr }, { i64, ptr } } %t100, { i64, ptr } %t101, 1
  %t104 = insertvalue { %"compiler/source:Span", { i64, ptr }, { i64, ptr } } %t102, { i64, ptr } %t96, 2
  %t105 = getelementptr { i64, [5 x i64] }, ptr %t97, i32 0, i32 1
  store { %"compiler/source:Span", { i64, ptr }, { i64, ptr } } %t104, ptr %t105
  %t106 = load { i64, [5 x i64] }, ptr %t97
  %t108 = call ptr @__olang_scope_alloc_a(ptr %s1, i64 48, i64 8)
  store { i64, [5 x i64] } %t106, ptr %t108
  %t109 = load ptr, ptr %l36, !tbaa !29
  %t110 = load ptr, ptr %l37, !tbaa !29
  %t112 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eResolve(ptr %v0, ptr %v1, ptr %s1, ptr %t109, ptr %t110, ptr %t108)
  store i32 %t112, ptr %l48
  br label %bb25
bb24:
  call void @__olang_check_failed(ptr @olang_loc_2edbc1bd270558db_85d99d8e9bee4edf)
  unreachable
bb25:
  %t113 = load i32, ptr %l48, !tbaa !23
  store i32 %t113, ptr %l7, !tbaa !23
  %t114 = load ptr, ptr %l0, !tbaa !29
  %t116 = getelementptr %"compiler/generic:Program", ptr %t114, i32 0, i32 2
  %t117 = load i32, ptr %l7, !tbaa !23
  %t120 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t116, i32 %t117)
  store i32 %t120, ptr %l52
  br label %bb26
bb26:
  %t121 = load i32, ptr %l52, !range !{i32 0, i32 33}
  %t123 = trunc i64 19 to i32
  %t124 = icmp eq i32 %t121, %t123
  %t126 = xor i1 %t124, true
  br i1 %t126, label %bb27, label %bb28
bb27:
  %t128 = load i32, ptr %l7, !tbaa !23
  store i32 %t128, ptr %l56, !tbaa !23
  br label %bb29
bb28:
  %t130 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  store i32 %t130, ptr %l56, !tbaa !23
  br label %bb29
bb29:
  call void @__olang_scope_close(ptr %s1)
  %t132 = load i32, ptr %l56, !tbaa !23
  store i32 %t132, ptr %rv
  br label %ret
bb30:
  br i1 true, label %bb31, label %bb32
bb31:
  br label %bb33
bb32:
  br label %bb34
bb33:
  %t133 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  store i32 %t133, ptr %rv
  br label %ret
bb34:
  call void @__olang_check_failed(ptr @olang_loc_7a3d6db3b893cc7d_3c2a4275e29a89)
  unreachable
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2enestedRows(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca i32
  %l6 = alloca i32
  %l7 = alloca i1
  %l10 = alloca ptr
  %l14 = alloca i32
  %l15 = alloca i64
  %l19 = alloca ptr
  %l23 = alloca i32
  %l24 = alloca i64
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/generic:Program", ptr %t1, i32 0, i32 2
  %t4 = load i32, ptr %l1, !tbaa !23
  %t7 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t3, i32 %t4)
  store i32 %t7, ptr %l6
  br label %bb1
bb1:
  %t8 = load i32, ptr %l6, !range !{i32 0, i32 33}
  store i32 %t8, ptr %l2
  %t9 = load i32, ptr %l2, !range !{i32 0, i32 33}
  %t11 = trunc i64 20 to i32
  %t12 = icmp eq i32 %t9, %t11
  br i1 %t12, label %bb2, label %bb3
bb2:
  br label %bb4
bb3:
  br label %bb7
bb4:
  %t14 = load ptr, ptr %l0, !tbaa !29
  store ptr %t14, ptr %l10, !tbaa !29
  %t15 = load ptr, ptr %l0, !tbaa !29
  %t17 = getelementptr %"compiler/generic:Program", ptr %t15, i32 0, i32 2
  %t18 = load i32, ptr %l1, !tbaa !23
  %t21 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eReferent(ptr %v0, ptr %t17, i32 %t18)
  store i32 %t21, ptr %l14
  br label %bb5
bb5:
  %t22 = load ptr, ptr %l10, !tbaa !29
  %t23 = load i32, ptr %l14, !tbaa !23
  %t24 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2elevelCount(ptr %v0, ptr %t22, i32 %t23, i1 false)
  store i64 %t24, ptr %l15
  br label %bb6
bb6:
  %t25 = load i64, ptr %l15, !tbaa !24
  %t26 = icmp sgt i64 %t25, 0
  store i1 %t26, ptr %l7, !tbaa !21
  br label %bb18
bb7:
  %t28 = load i32, ptr %l2, !range !{i32 0, i32 33}
  %t30 = trunc i64 19 to i32
  %t31 = icmp eq i32 %t28, %t30
  br i1 %t31, label %bb8, label %bb9
bb8:
  br label %bb10
bb9:
  br label %bb13
bb10:
  %t33 = load ptr, ptr %l0, !tbaa !29
  store ptr %t33, ptr %l19, !tbaa !29
  %t34 = load ptr, ptr %l0, !tbaa !29
  %t36 = getelementptr %"compiler/generic:Program", ptr %t34, i32 0, i32 2
  %t37 = load i32, ptr %l1, !tbaa !23
  %t40 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eElem(ptr %v0, ptr %t36, i32 %t37)
  store i32 %t40, ptr %l23
  br label %bb11
bb11:
  %t41 = load ptr, ptr %l19, !tbaa !29
  %t42 = load i32, ptr %l23, !tbaa !23
  %t43 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2elevelCount(ptr %v0, ptr %t41, i32 %t42, i1 true)
  store i64 %t43, ptr %l24
  br label %bb12
bb12:
  %t44 = load i64, ptr %l24, !tbaa !24
  %t45 = icmp sgt i64 %t44, 0
  store i1 %t45, ptr %l7, !tbaa !21
  br label %bb18
bb13:
  br i1 true, label %bb14, label %bb15
bb14:
  br label %bb16
bb15:
  br label %bb17
bb16:
  store i1 false, ptr %l7, !tbaa !21
  br label %bb18
bb17:
  call void @__olang_check_failed(ptr @olang_loc_c54f5b605d713a50_750f1643c90b13ac)
  unreachable
bb18:
  %t47 = load i1, ptr %l7, !tbaa !21
  store i1 %t47, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local void @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2enoteRawType(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca i32
  %l3 = alloca i32
  %l4 = alloca ptr
  %l5 = alloca ptr
  %l6 = alloca ptr
  %l7 = alloca i32
  %l11 = alloca i32
  %l15 = alloca i32
  %l18 = alloca i1
  %l22 = alloca i32
  %l24 = alloca ptr
  %l28 = alloca i32
  %l32 = alloca i32
  %l36 = alloca i1
  %l38 = alloca ptr
  %l42 = alloca i32
  %l43 = alloca i32
  %l50 = alloca i32
  %l54 = alloca i32
  %l59 = alloca ptr
  %l62 = alloca i1
  %l68 = alloca ptr
  %l69 = alloca i1
  %l76 = alloca ptr
  %l79 = alloca %"compiler/generic:Context"
  %l83 = alloca i32
  %l85 = alloca ptr
  %l89 = alloca i32
  %l90 = alloca i1
  %l91 = alloca i1
  %l93 = alloca ptr
  %l97 = alloca i32
  %l98 = alloca i64
  %s5 = alloca %olang.scope
  %t142 = alloca %"compiler/generic:Context", align 8
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/generic:Program", ptr %t1, i32 0, i32 2
  %t7 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %v0, ptr %t3, i32 %a1)
  store i32 %t7, ptr %l11
  br label %bb1
bb1:
  %t8 = load i32, ptr %l11, !tbaa !23
  store i32 %t8, ptr %l2, !tbaa !23
  %t9 = load ptr, ptr %l0, !tbaa !29
  %t11 = getelementptr %"compiler/generic:Program", ptr %t9, i32 0, i32 2
  %t12 = load i32, ptr %l2, !tbaa !23
  %t15 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t11, i32 %t12)
  store i32 %t15, ptr %l15
  br label %bb2
bb2:
  %t16 = load i32, ptr %l15, !range !{i32 0, i32 33}
  %t18 = trunc i64 19 to i32
  %t19 = icmp eq i32 %t16, %t18
  br i1 %t19, label %bb3, label %bb4
bb3:
  %t21 = load ptr, ptr %l0, !tbaa !29
  %t23 = getelementptr %"compiler/generic:Program", ptr %t21, i32 0, i32 2
  %t24 = load i32, ptr %l2, !tbaa !23
  %t27 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eLength(ptr %v0, ptr %t23, i32 %t24)
  store i32 %t27, ptr %l22
  br label %bb5
bb4:
  store i1 false, ptr %l18, !tbaa !21
  br label %bb6
bb5:
  %t28 = load i32, ptr %l22, !tbaa !23
  %t29 = icmp ne i32 %t28, 0
  store i1 %t29, ptr %l18, !tbaa !21
  br label %bb6
bb6:
  %t31 = load i1, ptr %l18, !tbaa !21
  br i1 %t31, label %bb7, label %bb8
bb7:
  %t32 = load ptr, ptr %l0, !tbaa !29
  store ptr %t32, ptr %l24, !tbaa !29
  %t33 = load ptr, ptr %l0, !tbaa !29
  %t35 = getelementptr %"compiler/generic:Program", ptr %t33, i32 0, i32 2
  %t36 = load i32, ptr %l2, !tbaa !23
  %t39 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eElem(ptr %v0, ptr %t35, i32 %t36)
  store i32 %t39, ptr %l28
  br label %bb9
bb8:
  br label %bb11
bb9:
  %t40 = load ptr, ptr %l24, !tbaa !29
  %t41 = load i32, ptr %l28, !tbaa !23
  call void @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2enoteRawType(ptr %v0, ptr %t40, i32 %t41)
  br label %bb10
bb10:
  br label %ret
bb11:
  %t42 = load ptr, ptr %l0, !tbaa !29
  %t44 = getelementptr %"compiler/generic:Program", ptr %t42, i32 0, i32 2
  %t45 = load i32, ptr %l2, !tbaa !23
  %t48 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t44, i32 %t45)
  store i32 %t48, ptr %l32
  br label %bb12
bb12:
  %t49 = load i32, ptr %l32, !range !{i32 0, i32 33}
  %t51 = trunc i64 18 to i32
  %t52 = icmp eq i32 %t49, %t51
  %t54 = xor i1 %t52, true
  br i1 %t54, label %bb13, label %bb14
bb13:
  store i1 true, ptr %l36, !tbaa !21
  br label %bb17
bb14:
  %t56 = load ptr, ptr %l0, !tbaa !29
  %t58 = getelementptr %"compiler/generic:Program", ptr %t56, i32 0, i32 2
  store ptr %t58, ptr %l38, !tbaa !29
  %t59 = load ptr, ptr %l0, !tbaa !29
  %t61 = getelementptr %"compiler/generic:Program", ptr %t59, i32 0, i32 2
  %t62 = load i32, ptr %l2, !tbaa !23
  %t65 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %t61, i32 %t62)
  store i32 %t65, ptr %l42
  br label %bb15
bb15:
  %t66 = load ptr, ptr %l38, !tbaa !29
  %t67 = load i32, ptr %l42, !tbaa !23
  %t68 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclKindOf(ptr %v0, ptr %t66, i32 %t67)
  store i32 %t68, ptr %l43
  br label %bb16
bb16:
  %t69 = load i32, ptr %l43, !range !{i32 0, i32 6}
  %t71 = trunc i64 1 to i32
  %t72 = icmp eq i32 %t69, %t71
  %t74 = xor i1 %t72, true
  store i1 %t74, ptr %l36, !tbaa !21
  br label %bb17
bb17:
  %t76 = load i1, ptr %l36, !tbaa !21
  br i1 %t76, label %bb18, label %bb19
bb18:
  br label %ret
bb19:
  br label %bb20
bb20:
  %t77 = load ptr, ptr %l0, !tbaa !29
  %t79 = getelementptr %"compiler/generic:Program", ptr %t77, i32 0, i32 2
  %t80 = load i32, ptr %l2, !tbaa !23
  %t83 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %t79, i32 %t80)
  store i32 %t83, ptr %l50
  br label %bb21
bb21:
  %t84 = load i32, ptr %l50, !tbaa !23
  store i32 %t84, ptr %l3, !tbaa !23
  %t85 = load ptr, ptr %l0, !tbaa !29
  %t87 = getelementptr %"compiler/generic:Program", ptr %t85, i32 0, i32 2
  %t88 = load i32, ptr %l2, !tbaa !23
  %t91 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRawType(ptr %v0, ptr %t87, i32 %t88)
  store i32 %t91, ptr %l54
  br label %bb22
bb22:
  %t92 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t93 = load i32, ptr %l54, !tbaa !23
  %t95 = icmp ne i32 %t93, %t92
  br i1 %t95, label %bb23, label %bb24
bb23:
  br label %ret
bb24:
  br label %bb25
bb25:
  %t97 = load ptr, ptr %l0, !tbaa !29
  %t98 = load i32, ptr %l3, !tbaa !23
  %t101 = call ptr @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2etypeDecl(ptr %v0, ptr %v0, ptr %t97, i32 %t98)
  store ptr %t101, ptr %l59
  br label %bb26
bb26:
  %t102 = load ptr, ptr %l59, !tbaa !29
  store ptr %t102, ptr %l4, !tbaa !29
  %t103 = load ptr, ptr %l4, !tbaa !29
  %t105 = icmp eq ptr %t103, null
  br i1 %t105, label %bb27, label %bb28
bb27:
  store i1 true, ptr %l62, !tbaa !21
  br label %bb29
bb28:
  %t107 = load ptr, ptr %l4, !tbaa !29
  %t109 = getelementptr %"compiler/ast:TypeDecl", ptr %t107, i32 0, i32 3
  %t110 = load ptr, ptr %t109, !tbaa !29
  %t112 = icmp eq ptr %t110, null
  store i1 %t112, ptr %l62, !tbaa !21
  br label %bb29
bb29:
  %t114 = load i1, ptr %l62, !tbaa !21
  br i1 %t114, label %bb30, label %bb31
bb30:
  br label %ret
bb31:
  br label %bb32
bb32:
  %t115 = load ptr, ptr %l4, !tbaa !29
  %t117 = getelementptr %"compiler/ast:TypeDecl", ptr %t115, i32 0, i32 3
  %t118 = load ptr, ptr %t117, !tbaa !29
  store ptr %t118, ptr %l5, !tbaa !29
  %t120 = load ptr, ptr %l5, !tbaa !29
  store ptr %t120, ptr %l68, !tbaa !29
  store i1 false, ptr %l69, !tbaa !21
  %t121 = load ptr, ptr %l68, !tbaa !29
  %t122 = icmp ne ptr %t121, null
  br i1 %t122, label %bb33, label %bb34
bb33:
  %t124 = load ptr, ptr %l68, !tbaa !29
  %t125 = load i64, ptr %t124, !range !{i64 0, i64 5}
  %t127 = icmp eq i64 %t125, 1
  store i1 %t127, ptr %l69, !tbaa !21
  br label %bb34
bb34:
  %t128 = load i1, ptr %l69, !tbaa !21
  br i1 %t128, label %bb35, label %bb36
bb35:
  %t129 = load ptr, ptr %l5, !tbaa !29
  %t131 = getelementptr { i64, [6 x i64] }, ptr %t129, i32 0, i32 1
  %t132 = getelementptr { { i64, ptr }, ptr }, ptr %t131, i32 0, i32 1
  %t133 = load ptr, ptr %t132
  store ptr %t133, ptr %l6, !tbaa !29
  br label %bb37
bb36:
  br label %bb54
bb37:
  store %olang.scope zeroinitializer, ptr %s5
  %t135 = load ptr, ptr %l6, !tbaa !29
  %t137 = icmp eq ptr %t135, null
  br i1 %t137, label %bb38, label %bb39
bb38:
  call void @__olang_scope_close(ptr %s5)
  br label %ret
bb39:
  br label %bb40
bb40:
  %t139 = load ptr, ptr %l0, !tbaa !29
  store ptr %t139, ptr %l76, !tbaa !29
  %t140 = load ptr, ptr %l0, !tbaa !29
  %t141 = load i32, ptr %l3, !tbaa !23
  call void @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2edeclContext(ptr %t142, ptr %v0, ptr %s5, ptr %t140, i32 %t141)
  call void @llvm.memmove.p0.p0.i64(ptr %l79, ptr %t142, i64 160, i1 false)
  br label %bb41
bb41:
  %t145 = call ptr @__olang_scope_alloc_a(ptr %s5, i64 160, i64 8)
  call void @llvm.memmove.p0.p0.i64(ptr %t145, ptr %l79, i64 160, i1 false)
  %t146 = load ptr, ptr %l6, !tbaa !29
  %t148 = load ptr, ptr %l76, !tbaa !29
  %t151 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eResolve(ptr %v0, ptr %s5, ptr %v0, ptr %t148, ptr %t145, ptr %t146)
  store i32 %t151, ptr %l83
  br label %bb42
bb42:
  %t152 = load i32, ptr %l83, !tbaa !23
  store i32 %t152, ptr %l7, !tbaa !23
  %t153 = load ptr, ptr %l0, !tbaa !29
  %t155 = getelementptr %"compiler/generic:Program", ptr %t153, i32 0, i32 2
  store ptr %t155, ptr %l85, !tbaa !29
  %t156 = load ptr, ptr %l0, !tbaa !29
  %t158 = getelementptr %"compiler/generic:Program", ptr %t156, i32 0, i32 2
  %t159 = load i32, ptr %l7, !tbaa !23
  %t162 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %v0, ptr %t158, i32 %t159)
  store i32 %t162, ptr %l89
  br label %bb43
bb43:
  %t163 = load ptr, ptr %l85, !tbaa !29
  %t164 = load i32, ptr %l89, !tbaa !23
  %t165 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsInt(ptr %v0, ptr %t163, i32 %t164)
  store i1 %t165, ptr %l90
  br label %bb44
bb44:
  %t166 = load i1, ptr %l90, !tbaa !21
  br i1 %t166, label %bb45, label %bb46
bb45:
  %t167 = load ptr, ptr %l0, !tbaa !29
  %t169 = getelementptr %"compiler/generic:Program", ptr %t167, i32 0, i32 2
  store ptr %t169, ptr %l93, !tbaa !29
  %t170 = load ptr, ptr %l0, !tbaa !29
  %t172 = getelementptr %"compiler/generic:Program", ptr %t170, i32 0, i32 2
  %t173 = load i32, ptr %l7, !tbaa !23
  %t176 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %v0, ptr %t172, i32 %t173)
  store i32 %t176, ptr %l97
  br label %bb47
bb46:
  store i1 false, ptr %l91, !tbaa !21
  br label %bb49
bb47:
  %t177 = load ptr, ptr %l93, !tbaa !29
  %t178 = load i32, ptr %l97, !tbaa !23
  %t179 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eBits(ptr %v0, ptr %t177, i32 %t178)
  store i64 %t179, ptr %l98
  br label %bb48
bb48:
  %t180 = load i64, ptr %l98, !tbaa !24
  %t181 = icmp sle i64 %t180, 64
  store i1 %t181, ptr %l91, !tbaa !21
  br label %bb49
bb49:
  %t183 = load i1, ptr %l91, !tbaa !21
  br i1 %t183, label %bb50, label %bb51
bb50:
  %t184 = load ptr, ptr %l0, !tbaa !29
  %t186 = getelementptr %"compiler/generic:Program", ptr %t184, i32 0, i32 2
  %t187 = load i32, ptr %l3, !tbaa !23
  %t188 = load i32, ptr %l7, !tbaa !23
  call void @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eSetRawType(ptr %v0, ptr %t186, i32 %t187, i32 %t188)
  br label %bb52
bb51:
  br label %bb53
bb52:
  br label %bb53
bb53:
  call void @__olang_scope_close(ptr %s5)
  br label %bb59
bb54:
  br i1 true, label %bb55, label %bb56
bb55:
  br label %bb57
bb56:
  br label %bb58
bb57:
  br label %bb59
bb58:
  call void @__olang_check_failed(ptr @olang_loc_a1c12b43cfcb5ca8_7f9e794136c316fc)
  unreachable
bb59:
  br label %ret
ret:
  ret void
}

define dso_local i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eparamTypes(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, { i64, ptr } %a2) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca { i64, ptr }
  %l3 = alloca { i64, ptr }
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l11 = alloca i64
  %l20 = alloca i64
  %l23 = alloca i64
  %l41 = alloca i64
  %l44 = alloca { i64, ptr }
  %l48 = alloca i32
  %l54 = alloca i32
  %s0 = alloca %olang.scope
  %rv = alloca i32
  store ptr %a0, ptr %l0
  store { i64, ptr } %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t3 = extractvalue { i64, ptr } %t1, 0
  store i64 %t3, ptr %l11, !tbaa !24
  %t4 = load i64, ptr %l11, !tbaa !24
  %t5 = icmp sge i64 %t4, 0
  br i1 %t5, label %bb1, label %bb2
bb1:
  %t7 = load i64, ptr %l11, !tbaa !24
  %t8 = icmp sle i64 %t7, 2305843009213693951
  br i1 %t8, label %bb3, label %bb4
bb2:
  call void @__olang_check_failed(ptr @olang_loc_1255cf76aedf9e7f_39892a6a8a5fd693)
  unreachable
bb3:
  %t10 = load i64, ptr %l11, !tbaa !24
  %t11 = mul i64 %t10, 4
  %t12 = call ptr @__olang_scope_alloc_zeroed(ptr %s0, i64 %t11)
  %t13 = insertvalue { i64, ptr } undef, i64 %t10, 0
  %t14 = insertvalue { i64, ptr } %t13, ptr %t12, 1
  store { i64, ptr } %t14, ptr %l3, !tbaa !27
  store i64 0, ptr %l4, !tbaa !24
  %t16 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t18 = extractvalue { i64, ptr } %t16, 0
  store i64 %t18, ptr %l5, !tbaa !24
  store i64 1, ptr %l6, !tbaa !24
  %t20 = load i64, ptr %l5, !tbaa !24
  %t21 = load i64, ptr %l4, !tbaa !24
  %t24 = icmp sgt i64 %t20, %t21
  br i1 %t24, label %bb5, label %bb6
bb4:
  call void @__olang_check_failed(ptr @olang_loc_1255cf76aedf9e7f_39892a6a8a5fd693)
  unreachable
bb5:
  %t26 = load i64, ptr %l6, !tbaa !24
  %t28 = icmp sgt i64 %t26, 0
  br i1 %t28, label %bb7, label %bb8
bb6:
  store i64 0, ptr %l20, !tbaa !24
  br label %bb10
bb7:
  %t30 = load i64, ptr %l5, !tbaa !24
  %t31 = load i64, ptr %l4, !tbaa !24
  %t34 = sub i64 %t30, %t31
  %t35 = load i64, ptr %l6, !tbaa !24
  %t38 = add i64 %t34, %t35
  %t40 = sub i64 %t38, 1
  %t41 = load i64, ptr %l6, !tbaa !24
  %t44 = sdiv i64 %t40, %t41
  store i64 %t44, ptr %l23, !tbaa !24
  br label %bb9
bb8:
  store i64 0, ptr %l23, !tbaa !24
  br label %bb9
bb9:
  %t46 = load i64, ptr %l23, !tbaa !24
  store i64 %t46, ptr %l20, !tbaa !24
  br label %bb10
bb10:
  %t47 = load i64, ptr %l20, !tbaa !24
  store i64 %t47, ptr %l7, !tbaa !24
  store i64 0, ptr %l8, !tbaa !24
  br label %bb11
bb11:
  %t48 = load i64, ptr %l8, !tbaa !24
  %t49 = load i64, ptr %l7, !tbaa !24
  %t52 = icmp slt i64 %t48, %t49
  %t54 = xor i1 %t52, true
  br i1 %t54, label %bb12, label %bb13
bb12:
  br label %bb17
bb13:
  br label %bb14
bb14:
  %t56 = load i64, ptr %l4, !tbaa !24
  %t57 = load i64, ptr %l8, !tbaa !24
  %t58 = load i64, ptr %l6, !tbaa !24
  %t61 = mul i64 %t57, %t58
  %t64 = add i64 %t56, %t61
  store i64 %t64, ptr %l9, !tbaa !24
  %t66 = load i64, ptr %l9, !tbaa !24
  store i64 %t66, ptr %l41, !tbaa !24
  %t67 = load ptr, ptr %l0, !tbaa !29
  %t69 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t69, ptr %l44, !tbaa !27
  %t70 = load i64, ptr %l9, !tbaa !24
  %t72 = getelementptr { i64, ptr }, ptr %l44, i32 0, i32 1
  %t73 = load ptr, ptr %t72, !tbaa !27
  %t74 = getelementptr ptr, ptr %t73, i64 %t70
  %t75 = load ptr, ptr %t74, !tbaa !39
  %t77 = getelementptr %"compiler/ast:Param", ptr %t75, i32 0, i32 2
  %t78 = load ptr, ptr %t77, !tbaa !29
  %t82 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eResolve(ptr %v0, ptr %v1, ptr %v2, ptr %t67, ptr %a1, ptr %t78)
  store i32 %t82, ptr %l48
  br label %bb15
bb15:
  %t83 = load i32, ptr %l48, !tbaa !23
  %t84 = load i64, ptr %l41, !tbaa !24
  %t85 = getelementptr { i64, ptr }, ptr %l3, i32 0, i32 1
  %t86 = load ptr, ptr %t85, !tbaa !27
  %t87 = getelementptr i32, ptr %t86, i64 %t84
  store i32 %t83, ptr %t87, !tbaa !33
  br label %bb16
bb16:
  %t88 = load i64, ptr %l8, !tbaa !24
  %t90 = add i64 %t88, 1
  store i64 %t90, ptr %l8, !tbaa !24
  br label %bb11
bb17:
  %t92 = load ptr, ptr %l0, !tbaa !29
  %t94 = getelementptr %"compiler/generic:Program", ptr %t92, i32 0, i32 2
  %t95 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t98 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eList(ptr %v0, ptr %s0, ptr %t94, { i64, ptr } %t95)
  store i32 %t98, ptr %l54
  br label %bb18
bb18:
  call void @__olang_scope_close(ptr %s0)
  %t99 = load i32, ptr %l54, !tbaa !23
  store i32 %t99, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2epayload(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, ptr %a2, i32 %a3) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca ptr
  %l10 = alloca { i64, ptr }
  %l15 = alloca ptr
  %l16 = alloca i32
  %l21 = alloca i32
  %l22 = alloca i32
  %l27 = alloca i32
  %l28 = alloca i32
  %l30 = alloca ptr
  %l35 = alloca i32
  %l36 = alloca i32
  %rv = alloca i32
  store ptr %a0, ptr %l0
  store ptr %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l2, !tbaa !29
  %t3 = getelementptr %"compiler/ast:CaseDecl", ptr %t1, i32 0, i32 2
  %t4 = load { i64, ptr }, ptr %t3, !tbaa !27
  %t6 = extractvalue { i64, ptr } %t4, 0
  %t8 = icmp eq i64 %t6, 0
  br i1 %t8, label %bb1, label %bb2
bb1:
  store i32 0, ptr %rv
  br label %ret
bb2:
  br label %bb3
bb3:
  %t11 = load ptr, ptr %l2, !tbaa !29
  %t13 = getelementptr %"compiler/ast:CaseDecl", ptr %t11, i32 0, i32 2
  %t14 = load { i64, ptr }, ptr %t13, !tbaa !27
  store { i64, ptr } %t14, ptr %l10, !tbaa !27
  %t15 = getelementptr { i64, ptr }, ptr %l10, i32 0, i32 1
  %t16 = load ptr, ptr %t15, !tbaa !27
  %t17 = getelementptr ptr, ptr %t16, i64 0
  %t18 = load ptr, ptr %t17, !tbaa !39
  %t20 = getelementptr %"compiler/ast:Param", ptr %t18, i32 0, i32 2
  %t21 = load ptr, ptr %t20, !tbaa !29
  %t23 = icmp eq ptr %t21, null
  br i1 %t23, label %bb4, label %bb5
bb4:
  %t25 = load ptr, ptr %l0, !tbaa !29
  %t27 = getelementptr %"compiler/generic:Program", ptr %t25, i32 0, i32 2
  store ptr %t27, ptr %l15, !tbaa !29
  %t28 = load ptr, ptr %l0, !tbaa !29
  %t30 = getelementptr %"compiler/generic:Program", ptr %t28, i32 0, i32 10
  %t33 = sext i32 %a3 to i64
  %t36 = call { i32, i32 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2ftypes_3aListId_3e__H9cb5d99387f926677a92c13412f9a8b2(ptr %v0, ptr %t30, i64 %t33)
  %t37 = extractvalue { i32, i32 } %t36, 1
  %t38 = extractvalue { i32, i32 } %t36, 0
  store i32 %t38, ptr %l22
  %t39 = icmp ne i32 %t38, 0
  br i1 %t39, label %bb7, label %ok.40, !prof !99
ok.40:
  store i32 %t37, ptr %l21
  br label %bb6
bb5:
  br label %bb12
bb6:
  %t41 = load i32, ptr %l21, !tbaa !23
  store i32 %t41, ptr %l16, !tbaa !23
  br label %bb10
bb7:
  br label %bb8
bb8:
  %t42 = load ptr, ptr %l0, !tbaa !29
  %t43 = load ptr, ptr %l2, !tbaa !29
  %t45 = getelementptr %"compiler/ast:CaseDecl", ptr %t43, i32 0, i32 2
  %t46 = load { i64, ptr }, ptr %t45, !tbaa !27
  %t48 = extractvalue { i64, ptr } %t46, 0
  %t51 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eunknowns(ptr %v0, ptr %t42, i64 %t48)
  store i32 %t51, ptr %l27
  br label %bb9
bb9:
  %t52 = load i32, ptr %l27, !tbaa !23
  store i32 %t52, ptr %l16, !tbaa !23
  br label %bb10
bb10:
  %t53 = load ptr, ptr %l15, !tbaa !29
  %t54 = load i32, ptr %l16, !tbaa !23
  %t55 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRecord(ptr %v0, ptr %t53, i32 %t54)
  store i32 %t55, ptr %l28
  br label %bb11
bb11:
  %t56 = load i32, ptr %l28, !tbaa !23
  store i32 %t56, ptr %rv
  br label %ret
bb12:
  %t57 = load ptr, ptr %l0, !tbaa !29
  %t59 = getelementptr %"compiler/generic:Program", ptr %t57, i32 0, i32 2
  store ptr %t59, ptr %l30, !tbaa !29
  %t60 = load ptr, ptr %l0, !tbaa !29
  %t62 = load ptr, ptr %l2, !tbaa !29
  %t64 = getelementptr %"compiler/ast:CaseDecl", ptr %t62, i32 0, i32 2
  %t65 = load { i64, ptr }, ptr %t64, !tbaa !27
  %t69 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eparamTypes(ptr %v0, ptr %v1, ptr %v2, ptr %t60, ptr %a1, { i64, ptr } %t65)
  store i32 %t69, ptr %l35
  br label %bb13
bb13:
  %t70 = load ptr, ptr %l30, !tbaa !29
  %t71 = load i32, ptr %l35, !tbaa !23
  %t72 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRecord(ptr %v0, ptr %t70, i32 %t71)
  store i32 %t72, ptr %l36
  br label %bb14
bb14:
  %t73 = load i32, ptr %l36, !tbaa !23
  store i32 %t73, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eperm(ptr %v0, ptr %a0, i32 %a1, i1 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l3 = alloca i64
  %l4 = alloca i32
  %l6 = alloca i64
  %l12 = alloca i32
  %l13 = alloca i32
  %l17 = alloca ptr
  %l21 = alloca i32
  %l25 = alloca i64
  %l28 = alloca i32
  %l32 = alloca ptr
  %l36 = alloca i64
  %l40 = alloca i64
  %l44 = alloca i64
  %l47 = alloca i32
  %rv = alloca i32
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  br i1 %a2, label %bb1, label %bb2
bb1:
  %t3 = load i64, ptr @G_2ecompiler_2ftypes_2eWritable, !tbaa !24
  store i64 %t3, ptr %l6, !tbaa !24
  br label %bb3
bb2:
  %t5 = load i64, ptr @G_2ecompiler_2ftypes_2eReadOnly, !tbaa !24
  store i64 %t5, ptr %l6, !tbaa !24
  br label %bb3
bb3:
  %t7 = load i64, ptr %l6, !tbaa !24
  store i64 %t7, ptr %l3, !tbaa !24
  %t8 = load ptr, ptr %l0, !tbaa !29
  %t10 = getelementptr %"compiler/generic:Program", ptr %t8, i32 0, i32 2
  %t11 = load i32, ptr %l1, !tbaa !23
  %t14 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t10, i32 %t11)
  store i32 %t14, ptr %l12
  br label %bb4
bb4:
  %t15 = load i32, ptr %l12, !range !{i32 0, i32 33}
  store i32 %t15, ptr %l4
  %t16 = load i32, ptr %l4, !range !{i32 0, i32 33}
  %t18 = trunc i64 20 to i32
  %t19 = icmp eq i32 %t16, %t18
  br i1 %t19, label %bb5, label %bb6
bb5:
  br label %bb7
bb6:
  br label %bb11
bb7:
  %t21 = load ptr, ptr %l0, !tbaa !29
  %t23 = getelementptr %"compiler/generic:Program", ptr %t21, i32 0, i32 2
  store ptr %t23, ptr %l17, !tbaa !29
  %t24 = load ptr, ptr %l0, !tbaa !29
  %t26 = getelementptr %"compiler/generic:Program", ptr %t24, i32 0, i32 2
  %t27 = load i32, ptr %l1, !tbaa !23
  %t30 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eReferent(ptr %v0, ptr %t26, i32 %t27)
  store i32 %t30, ptr %l21
  br label %bb8
bb8:
  %t31 = load ptr, ptr %l0, !tbaa !29
  %t33 = getelementptr %"compiler/generic:Program", ptr %t31, i32 0, i32 2
  %t34 = load i32, ptr %l1, !tbaa !23
  %t37 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePermOf(ptr %v0, ptr %t33, i32 %t34)
  store i64 %t37, ptr %l25
  br label %bb9
bb9:
  %t38 = load i64, ptr %l3, !tbaa !24
  %t39 = load i64, ptr %l25, !tbaa !24
  %t41 = or i64 %t39, %t38
  %t42 = load ptr, ptr %l17, !tbaa !29
  %t43 = load i32, ptr %l21, !tbaa !23
  %t45 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRef(ptr %v0, ptr %t42, i32 %t43, i64 %t41)
  store i32 %t45, ptr %l28
  br label %bb10
bb10:
  %t46 = load i32, ptr %l28, !tbaa !23
  store i32 %t46, ptr %l13, !tbaa !23
  br label %bb24
bb11:
  %t47 = load i32, ptr %l4, !range !{i32 0, i32 33}
  %t49 = trunc i64 25 to i32
  %t50 = icmp eq i32 %t47, %t49
  br i1 %t50, label %bb12, label %bb13
bb12:
  br label %bb14
bb13:
  br label %bb19
bb14:
  %t52 = load ptr, ptr %l0, !tbaa !29
  %t54 = getelementptr %"compiler/generic:Program", ptr %t52, i32 0, i32 2
  store ptr %t54, ptr %l32, !tbaa !29
  %t55 = load ptr, ptr %l0, !tbaa !29
  %t57 = getelementptr %"compiler/generic:Program", ptr %t55, i32 0, i32 2
  %t58 = load i32, ptr %l1, !tbaa !23
  %t61 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eA(ptr %v0, ptr %t57, i32 %t58)
  store i64 %t61, ptr %l36
  br label %bb15
bb15:
  %t62 = load ptr, ptr %l0, !tbaa !29
  %t64 = getelementptr %"compiler/generic:Program", ptr %t62, i32 0, i32 2
  %t65 = load i32, ptr %l1, !tbaa !23
  %t68 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eB(ptr %v0, ptr %t64, i32 %t65)
  store i64 %t68, ptr %l40
  br label %bb16
bb16:
  %t69 = load ptr, ptr %l0, !tbaa !29
  %t71 = getelementptr %"compiler/generic:Program", ptr %t69, i32 0, i32 2
  %t72 = load i32, ptr %l1, !tbaa !23
  %t75 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eC(ptr %v0, ptr %t71, i32 %t72)
  store i64 %t75, ptr %l44
  br label %bb17
bb17:
  %t76 = load i64, ptr %l3, !tbaa !24
  %t77 = load i64, ptr %l44, !tbaa !24
  %t79 = or i64 %t77, %t76
  %t80 = load ptr, ptr %l32, !tbaa !29
  %t81 = load i64, ptr %l36, !tbaa !24
  %t82 = load i64, ptr %l40, !tbaa !24
  %t84 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eVar(ptr %v0, ptr %t80, i64 %t81, i64 %t82, i64 %t79)
  store i32 %t84, ptr %l47
  br label %bb18
bb18:
  %t85 = load i32, ptr %l47, !tbaa !23
  store i32 %t85, ptr %l13, !tbaa !23
  br label %bb24
bb19:
  br i1 true, label %bb20, label %bb21
bb20:
  br label %bb22
bb21:
  br label %bb23
bb22:
  %t86 = load i32, ptr %l1, !tbaa !23
  store i32 %t86, ptr %l13, !tbaa !23
  br label %bb24
bb23:
  call void @__olang_check_failed(ptr @olang_loc_d28ca411b3c69834_cefe3fe6ba6de938)
  unreachable
bb24:
  %t88 = load i32, ptr %l13, !tbaa !23
  store i32 %t88, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2epreludeNamed(ptr %v0, ptr %v1, ptr %a0, i32 %a1, { i64, ptr } %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l3 = alloca i32
  %l4 = alloca i64
  %l8 = alloca i32
  %l16 = alloca i32
  %l20 = alloca i64
  %l23 = alloca i1
  %l24 = alloca i64
  %l28 = alloca i64
  %l30 = alloca i1
  %l35 = alloca ptr
  %l40 = alloca ptr
  %l44 = alloca i32
  %l45 = alloca { i64, ptr }
  %l47 = alloca i1
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/generic:Program", ptr %t1, i32 0, i32 2
  %t4 = load i32, ptr %l1, !tbaa !23
  %t7 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t3, i32 %t4)
  store i32 %t7, ptr %l8
  br label %bb1
bb1:
  %t8 = load i32, ptr %l8, !range !{i32 0, i32 33}
  %t10 = trunc i64 18 to i32
  %t11 = icmp eq i32 %t8, %t10
  %t13 = xor i1 %t11, true
  br i1 %t13, label %bb2, label %bb3
bb2:
  store i1 false, ptr %rv
  br label %ret
bb3:
  br label %bb4
bb4:
  %t16 = load ptr, ptr %l0, !tbaa !29
  %t18 = getelementptr %"compiler/generic:Program", ptr %t16, i32 0, i32 2
  %t19 = load i32, ptr %l1, !tbaa !23
  %t22 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %t18, i32 %t19)
  store i32 %t22, ptr %l16
  br label %bb5
bb5:
  %t23 = load i32, ptr %l16, !tbaa !23
  store i32 %t23, ptr %l3, !tbaa !23
  %t24 = load ptr, ptr %l0, !tbaa !29
  %t26 = getelementptr %"compiler/generic:Program", ptr %t24, i32 0, i32 2
  %t27 = load i32, ptr %l3, !tbaa !23
  %t30 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclModule(ptr %v0, ptr %t26, i32 %t27)
  store i64 %t30, ptr %l20
  br label %bb6
bb6:
  %t31 = load i64, ptr %l20, !tbaa !24
  store i64 %t31, ptr %l4, !tbaa !24
  %t32 = load i64, ptr %l4, !tbaa !24
  %t34 = icmp slt i64 %t32, 0
  br i1 %t34, label %bb7, label %bb8
bb7:
  store i1 true, ptr %l23, !tbaa !21
  br label %bb10
bb8:
  %t36 = load i64, ptr %l4, !tbaa !24
  store i64 %t36, ptr %l24, !tbaa !24
  %t37 = load ptr, ptr %l0, !tbaa !29
  %t39 = getelementptr %"compiler/generic:Program", ptr %t37, i32 0, i32 0
  %t40 = load ptr, ptr %t39, !tbaa !29
  %t42 = getelementptr %"compiler/load:Loader", ptr %t40, i32 0, i32 10
  %t44 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_Hb2d19b6b5ea5ab5a85c5720545345bd4(ptr %v0, ptr %t42)
  store i64 %t44, ptr %l28
  br label %bb9
bb9:
  %t45 = load i64, ptr %l24, !tbaa !24
  %t46 = load i64, ptr %l28, !tbaa !24
  %t47 = icmp sge i64 %t45, %t46
  store i1 %t47, ptr %l23, !tbaa !21
  br label %bb10
bb10:
  %t49 = load i1, ptr %l23, !tbaa !21
  br i1 %t49, label %bb11, label %bb12
bb11:
  store i1 true, ptr %l30, !tbaa !21
  br label %bb14
bb12:
  %t50 = load ptr, ptr %l0, !tbaa !29
  %t52 = getelementptr %"compiler/generic:Program", ptr %t50, i32 0, i32 0
  %t53 = load ptr, ptr %t52, !tbaa !29
  %t55 = getelementptr %"compiler/load:Loader", ptr %t53, i32 0, i32 10
  %t56 = load i64, ptr %l4, !tbaa !24
  %t59 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H7bcf2aeb09afa796f4333e6ec8c3f63f(ptr %v0, ptr %v0, ptr %t55, i64 %t56)
  store ptr %t59, ptr %l35
  br label %bb13
bb13:
  %t60 = load ptr, ptr %l35, !tbaa !29
  %t62 = getelementptr %"compiler/load:Module", ptr %t60, i32 0, i32 3
  %t63 = load i1, ptr %t62, !tbaa !21
  %t65 = xor i1 %t63, true
  store i1 %t65, ptr %l30, !tbaa !21
  br label %bb14
bb14:
  %t67 = load i1, ptr %l30, !tbaa !21
  br i1 %t67, label %bb15, label %bb16
bb15:
  store i1 false, ptr %rv
  br label %ret
bb16:
  br label %bb17
bb17:
  %t69 = load ptr, ptr %l0, !tbaa !29
  store ptr %t69, ptr %l40, !tbaa !29
  %t70 = load ptr, ptr %l0, !tbaa !29
  %t72 = getelementptr %"compiler/generic:Program", ptr %t70, i32 0, i32 2
  %t73 = load i32, ptr %l3, !tbaa !23
  %t76 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclName(ptr %v0, ptr %t72, i32 %t73)
  store i32 %t76, ptr %l44
  br label %bb18
bb18:
  %t77 = load ptr, ptr %l40, !tbaa !29
  %t78 = load i32, ptr %l44, !tbaa !23
  %t79 = call { i64, ptr } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2etext(ptr %v0, ptr %v0, ptr %t77, i32 %t78)
  store { i64, ptr } %t79, ptr %l45
  br label %bb19
bb19:
  %t81 = load { i64, ptr }, ptr %l45, !tbaa !27
  %t83 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %v1, { i64, ptr } %t81, { i64, ptr } %a2)
  store i1 %t83, ptr %l47
  br label %bb20
bb20:
  %t84 = load i1, ptr %l47, !tbaa !21
  store i1 %t84, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eprojectPath(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1, %"compiler/source:Span" %a2, i32 %a3, { i64, ptr } %a4, { i64, ptr } %a5) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca %"compiler/source:Span"
  %l4 = alloca { i64, ptr }
  %l5 = alloca { i64, ptr }
  %l6 = alloca i32
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca i64
  %l12 = alloca i64
  %l13 = alloca i32
  %l14 = alloca { i64, ptr }
  %l15 = alloca i64
  %l16 = alloca i64
  %l18 = alloca { i64, ptr }
  %l19 = alloca { i32, { i64, ptr } }
  %l20 = alloca i32
  %l21 = alloca { i64, ptr }
  %l28 = alloca i64
  %l31 = alloca i64
  %l56 = alloca i1
  %l59 = alloca ptr
  %l60 = alloca i64
  %l70 = alloca i32
  %l72 = alloca ptr
  %l76 = alloca i64
  %l78 = alloca i64
  %l80 = alloca i64
  %l81 = alloca i32
  %l82 = alloca %"compiler/source:Span"
  %l87 = alloca { i64, ptr }
  %l88 = alloca i64
  %l93 = alloca { i64, ptr }
  %l104 = alloca %"compiler/generic:pattern"
  %l107 = alloca { i64, ptr }
  %l110 = alloca { i64, ptr }
  %l114 = alloca { i32, { i64, ptr } }
  %l118 = alloca i1
  %l122 = alloca ptr
  %l127 = alloca { i64, [3 x i64] }
  %l128 = alloca { i64, ptr }
  %l131 = alloca { i64, ptr }
  %l134 = alloca %"compiler/diagmsg:Msg"
  %l135 = alloca i64
  %s2 = alloca %olang.scope
  %s9 = alloca %olang.scope
  %rv = alloca i32
  %t212 = alloca { i64, [5 x i64] }, align 8
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store %"compiler/source:Span" %a2, ptr %l2
  store { i64, ptr } %a4, ptr %l4
  store { i64, ptr } %a5, ptr %l5
  br label %start
start:
  br label %bb0
bb0:
  store i32 %a3, ptr %l6, !tbaa !23
  store i64 1, ptr %l7, !tbaa !24
  %t3 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t5 = extractvalue { i64, ptr } %t3, 0
  store i64 %t5, ptr %l8, !tbaa !24
  store i64 1, ptr %l9, !tbaa !24
  %t7 = load i64, ptr %l8, !tbaa !24
  %t8 = load i64, ptr %l7, !tbaa !24
  %t11 = icmp sgt i64 %t7, %t8
  br i1 %t11, label %bb1, label %bb2
bb1:
  %t13 = load i64, ptr %l9, !tbaa !24
  %t15 = icmp sgt i64 %t13, 0
  br i1 %t15, label %bb3, label %bb4
bb2:
  store i64 0, ptr %l28, !tbaa !24
  br label %bb6
bb3:
  %t17 = load i64, ptr %l8, !tbaa !24
  %t18 = load i64, ptr %l7, !tbaa !24
  %t21 = sub i64 %t17, %t18
  %t22 = load i64, ptr %l9, !tbaa !24
  %t25 = add i64 %t21, %t22
  %t27 = sub i64 %t25, 1
  %t28 = load i64, ptr %l9, !tbaa !24
  %t31 = sdiv i64 %t27, %t28
  store i64 %t31, ptr %l31, !tbaa !24
  br label %bb5
bb4:
  store i64 0, ptr %l31, !tbaa !24
  br label %bb5
bb5:
  %t33 = load i64, ptr %l31, !tbaa !24
  store i64 %t33, ptr %l28, !tbaa !24
  br label %bb6
bb6:
  %t34 = load i64, ptr %l28, !tbaa !24
  store i64 %t34, ptr %l10, !tbaa !24
  store i64 0, ptr %l11, !tbaa !24
  br label %bb7
bb7:
  store %olang.scope zeroinitializer, ptr %s2
  %t35 = load i64, ptr %l11, !tbaa !24
  %t36 = load i64, ptr %l10, !tbaa !24
  %t39 = icmp slt i64 %t35, %t36
  %t41 = xor i1 %t39, true
  br i1 %t41, label %bb8, label %bb9
bb8:
  call void @__olang_scope_close(ptr %s2)
  br label %bb45
bb9:
  br label %bb10
bb10:
  %t43 = load i64, ptr %l7, !tbaa !24
  %t44 = load i64, ptr %l11, !tbaa !24
  %t45 = load i64, ptr %l9, !tbaa !24
  %t48 = mul i64 %t44, %t45
  %t51 = add i64 %t43, %t48
  store i64 %t51, ptr %l12, !tbaa !24
  %t53 = load i32, ptr %l6, !tbaa !23
  %t54 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t57 = icmp eq i32 %t53, %t54
  br i1 %t57, label %bb11, label %bb12
bb11:
  %t59 = load i32, ptr %l6, !tbaa !23
  call void @__olang_scope_close(ptr %s2)
  store i32 %t59, ptr %rv
  br label %ret
bb12:
  br label %bb13
bb13:
  %t61 = load ptr, ptr %l0, !tbaa !29
  %t63 = getelementptr %"compiler/generic:Program", ptr %t61, i32 0, i32 2
  %t64 = load i32, ptr %l6, !tbaa !23
  %t67 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eClosed(ptr %v0, ptr %t63, i32 %t64)
  store i1 %t67, ptr %l56
  br label %bb14
bb14:
  %t68 = load i1, ptr %l56, !tbaa !21
  %t69 = xor i1 %t68, true
  br i1 %t69, label %bb15, label %bb16
bb15:
  %t71 = load ptr, ptr %l0, !tbaa !29
  %t73 = getelementptr %"compiler/generic:Program", ptr %t71, i32 0, i32 2
  store ptr %t73, ptr %l59, !tbaa !29
  %t74 = ptrtoint ptr %v0 to i64
  store i64 %t74, ptr %l60, !tbaa !24
  %t75 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1
  br i1 %t75, label %bb17, label %bb18
bb16:
  br label %bb33
bb17:
  %t77 = call ptr @__olang_region_make(ptr %v0)
  %t78 = ptrtoint ptr %t77 to i64
  store i64 %t78, ptr %l60, !tbaa !24
  br label %bb18
bb18:
  %t79 = load ptr, ptr %l1, !tbaa !29
  %t81 = getelementptr %"compiler/generic:Context", ptr %t79, i32 0, i32 1
  %t82 = load i64, ptr %t81, !tbaa !24
  %t83 = load ptr, ptr %l1, !tbaa !29
  %t85 = getelementptr %"compiler/generic:Context", ptr %t83, i32 0, i32 0
  %t86 = load i64, ptr %t85, !tbaa !24
  %t87 = getelementptr %"compiler/source:Span", ptr %l2, i32 0, i32 0
  %t88 = load i32, ptr %t87, !tbaa !23
  %t89 = getelementptr %"compiler/source:Span", ptr %l2, i32 0, i32 1
  %t90 = load i32, ptr %t89, !tbaa !23
  %t91 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d19, i32 0, i32 1) }, 1
  %t92 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d19, i32 0, i32 1) }, 0
  %t94 = call i64 @__olang_fmt_i64(ptr null, i64 %t82)
  %t95 = add i64 %t92, %t94
  %t96 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d20, i32 0, i32 1) }, 1
  %t97 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d20, i32 0, i32 1) }, 0
  %t98 = add i64 %t95, %t97
  %t100 = call i64 @__olang_fmt_i64(ptr null, i64 %t86)
  %t101 = add i64 %t98, %t100
  %t102 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d20, i32 0, i32 1) }, 1
  %t103 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d20, i32 0, i32 1) }, 0
  %t104 = add i64 %t101, %t103
  %t106 = sext i32 %t88 to i64
  %t107 = call i64 @__olang_fmt_i64(ptr null, i64 %t106)
  %t108 = add i64 %t104, %t107
  %t109 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d20, i32 0, i32 1) }, 1
  %t110 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d20, i32 0, i32 1) }, 0
  %t111 = add i64 %t108, %t110
  %t113 = sext i32 %t90 to i64
  %t114 = call i64 @__olang_fmt_i64(ptr null, i64 %t113)
  %t115 = add i64 %t111, %t114
  %t116 = load i64, ptr %l60
  %t117 = inttoptr i64 %t116 to ptr
  %t118 = call ptr @__olang_scope_alloc(ptr %t117, i64 %t115)
  call void @olang_textcopy(ptr %t118, ptr %t91, i64 %t92)
  %t119 = getelementptr i8, ptr %t118, i64 %t92
  %t120 = call i64 @__olang_fmt_i64(ptr %t119, i64 %t82)
  %t121 = getelementptr i8, ptr %t119, i64 %t94
  call void @olang_textcopy(ptr %t121, ptr %t96, i64 %t97)
  %t122 = getelementptr i8, ptr %t121, i64 %t97
  %t123 = call i64 @__olang_fmt_i64(ptr %t122, i64 %t86)
  %t124 = getelementptr i8, ptr %t122, i64 %t100
  call void @olang_textcopy(ptr %t124, ptr %t102, i64 %t103)
  %t125 = getelementptr i8, ptr %t124, i64 %t103
  %t126 = call i64 @__olang_fmt_i64(ptr %t125, i64 %t106)
  %t127 = getelementptr i8, ptr %t125, i64 %t107
  call void @olang_textcopy(ptr %t127, ptr %t109, i64 %t110)
  %t128 = getelementptr i8, ptr %t127, i64 %t110
  %t129 = call i64 @__olang_fmt_i64(ptr %t128, i64 %t113)
  %t130 = insertvalue { i64, ptr } undef, i64 %t115, 0
  %t131 = insertvalue { i64, ptr } %t130, ptr %t118, 1
  %t133 = load i64, ptr %l60
  %t134 = inttoptr i64 %t133 to ptr
  %t135 = extractvalue { i64, ptr } %t131, 0
  %t136 = extractvalue { i64, ptr } %t131, 1
  %t137 = mul i64 %t135, 1
  %t138 = call ptr @__olang_scope_alloc(ptr %t134, i64 %t137)
  call void @llvm.memcpy.p0.p0.i64(ptr %t138, ptr %t136, i64 %t137, i1 false)
  %t139 = insertvalue { i64, ptr } undef, i64 %t135, 0
  %t140 = insertvalue { i64, ptr } %t139, ptr %t138, 1
  %t141 = load ptr, ptr %l59, !tbaa !29
  %t143 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eConstExpr(ptr %v0, ptr %v0, ptr %t141, { i64, ptr } %t140)
  store i32 %t143, ptr %l70
  br label %bb19
bb19:
  %t144 = load i32, ptr %l70, !tbaa !23
  store i32 %t144, ptr %l13, !tbaa !23
  %t145 = load ptr, ptr %l0, !tbaa !29
  %t147 = getelementptr %"compiler/generic:Program", ptr %t145, i32 0, i32 28
  store ptr %t147, ptr %l72, !tbaa !29
  %t148 = load ptr, ptr %l0, !tbaa !29
  %t150 = getelementptr %"compiler/generic:Program", ptr %t148, i32 0, i32 2
  %t151 = load i32, ptr %l13, !tbaa !23
  %t154 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eA(ptr %v0, ptr %t150, i32 %t151)
  store i64 %t154, ptr %l76
  br label %bb20
bb20:
  %t155 = load ptr, ptr %l1, !tbaa !29
  %t157 = getelementptr %"compiler/generic:Context", ptr %t155, i32 0, i32 0
  %t158 = load i64, ptr %t157, !tbaa !24
  store i64 %t158, ptr %l78, !tbaa !24
  %t159 = load ptr, ptr %l1, !tbaa !29
  %t161 = getelementptr %"compiler/generic:Context", ptr %t159, i32 0, i32 1
  %t162 = load i64, ptr %t161, !tbaa !24
  store i64 %t162, ptr %l80, !tbaa !24
  %t163 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  store i32 %t163, ptr %l81, !tbaa !23
  %t164 = load %"compiler/source:Span", ptr %l2
  store %"compiler/source:Span" %t164, ptr %l82
  %t165 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t165, ptr %l14, !tbaa !27
  store i64 0, ptr %l15, !tbaa !24
  %t167 = load { i64, ptr }, ptr %l14, !tbaa !27
  %t169 = extractvalue { i64, ptr } %t167, 0
  store i64 %t169, ptr %l16, !tbaa !24
  %t171 = load i64, ptr %l16, !tbaa !24
  %t173 = mul i64 %t171, 4
  %t174 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t173)
  %t175 = insertvalue { i64, ptr } undef, i64 %t171, 0
  %t176 = insertvalue { i64, ptr } %t175, ptr %t174, 1
  store { i64, ptr } %t176, ptr %l87, !tbaa !27
  store i64 0, ptr %l88, !tbaa !24
  br label %bb21
bb21:
  %t177 = load i64, ptr %l15, !tbaa !24
  %t178 = load i64, ptr %l16, !tbaa !24
  %t181 = icmp slt i64 %t177, %t178
  %t183 = xor i1 %t181, true
  br i1 %t183, label %bb22, label %bb23
bb22:
  br label %bb26
bb23:
  br label %bb24
bb24:
  %t185 = load { i64, ptr }, ptr %l14, !tbaa !27
  store { i64, ptr } %t185, ptr %l93, !tbaa !27
  %t186 = load i64, ptr %l15, !tbaa !24
  %t188 = getelementptr { i64, ptr }, ptr %l93, i32 0, i32 1
  %t189 = load ptr, ptr %t188, !tbaa !27
  %t190 = getelementptr i32, ptr %t189, i64 %t186
  %t191 = load i32, ptr %t190, !tbaa !33
  %t195 = load i64, ptr %l88, !tbaa !24
  %t196 = getelementptr { i64, ptr }, ptr %l87, i32 0, i32 1
  %t197 = load ptr, ptr %t196, !tbaa !27
  %t198 = getelementptr i32, ptr %t197, i64 %t195
  store i32 %t191, ptr %t198, !tbaa !33
  %t199 = load i64, ptr %l88, !tbaa !24
  %t200 = add i64 %t199, 1
  store i64 %t200, ptr %l88, !tbaa !24
  br label %bb25
bb25:
  %t201 = load i64, ptr %l15, !tbaa !24
  %t203 = add i64 %t201, 1
  store i64 %t203, ptr %l15, !tbaa !24
  br label %bb21
bb26:
  %t205 = icmp sge i64 0, 0
  br i1 %t205, label %bb27, label %bb28
bb27:
  %t207 = icmp sle i64 0, 1152921504606846975
  br i1 %t207, label %bb29, label %bb30
bb28:
  call void @__olang_check_failed(ptr @olang_loc_53962b7b4c8887bb_135b696c144e88ef)
  unreachable
bb29:
  %t209 = mul i64 0, 8
  %t210 = insertvalue { i64, ptr } undef, i64 0, 0
  %t211 = insertvalue { i64, ptr } %t210, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  store { i64, [5 x i64] } zeroinitializer, ptr %t212
  %t213 = getelementptr { i64, [5 x i64] }, ptr %t212, i32 0, i32 0
  store i64 0, ptr %t213
  %t214 = load %"compiler/source:Span", ptr %l82
  %t215 = insertvalue { %"compiler/source:Span", { i64, ptr }, { i64, ptr } } undef, %"compiler/source:Span" %t214, 0
  %t216 = load { i64, ptr }, ptr %l87, !tbaa !27
  %t217 = insertvalue { %"compiler/source:Span", { i64, ptr }, { i64, ptr } } %t215, { i64, ptr } %t216, 1
  %t219 = insertvalue { %"compiler/source:Span", { i64, ptr }, { i64, ptr } } %t217, { i64, ptr } %t211, 2
  %t220 = getelementptr { i64, [5 x i64] }, ptr %t212, i32 0, i32 1
  store { %"compiler/source:Span", { i64, ptr }, { i64, ptr } } %t219, ptr %t220
  %t221 = load { i64, [5 x i64] }, ptr %t212
  %t223 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 48, i64 8)
  store { i64, [5 x i64] } %t221, ptr %t223
  %t224 = load i64, ptr %l78, !tbaa !24
  %t225 = load i64, ptr %l80, !tbaa !24
  %t226 = load i32, ptr %l81, !tbaa !23
  %t228 = call %"compiler/generic:pattern" @compiler_2fgeneric_3apattern_2ector(ptr %v0, ptr %v0, ptr %v0, ptr null, i64 %t224, i64 %t225, i32 %t226, ptr %t223)
  store %"compiler/generic:pattern" %t228, ptr %l104
  br label %bb31
bb30:
  call void @__olang_check_failed(ptr @olang_loc_53962b7b4c8887bb_135b696c144e88ef)
  unreachable
bb31:
  %t229 = load ptr, ptr %l72, !tbaa !29
  %t230 = load i64, ptr %l76, !tbaa !24
  %t231 = load %"compiler/generic:pattern", ptr %l104
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2fgeneric_3apattern__Hf2f2cd44709958e8fc0de9f437e62e6b(ptr %v0, ptr %v0, ptr %t229, i64 %t230, %"compiler/generic:pattern" %t231)
  br label %bb32
bb32:
  %t232 = load i32, ptr %l13, !tbaa !23
  call void @__olang_scope_close(ptr %s2)
  store i32 %t232, ptr %rv
  br label %ret
bb33:
  %t234 = load ptr, ptr %l0, !tbaa !29
  %t235 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t235, ptr %l107, !tbaa !27
  %t236 = load i64, ptr %l12, !tbaa !24
  %t238 = getelementptr { i64, ptr }, ptr %l107, i32 0, i32 1
  %t239 = load ptr, ptr %t238, !tbaa !27
  %t240 = getelementptr i32, ptr %t239, i64 %t236
  %t241 = load i32, ptr %t240, !tbaa !33
  %t244 = call { i64, ptr } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2etext(ptr %v0, ptr %v0, ptr %t234, i32 %t241)
  store { i64, ptr } %t244, ptr %l110
  br label %bb34
bb34:
  %t245 = load { i64, ptr }, ptr %l110, !tbaa !27
  store { i64, ptr } %t245, ptr %l18, !tbaa !27
  %t246 = load ptr, ptr %l0, !tbaa !29
  %t247 = load i32, ptr %l6, !tbaa !23
  %t248 = load { i64, ptr }, ptr %l18, !tbaa !27
  %t252 = call { i32, { i64, ptr } } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eProject(ptr %v0, ptr %v0, ptr %s2, ptr %t246, i32 %t247, { i64, ptr } %t248)
  store { i32, { i64, ptr } } %t252, ptr %l114
  br label %bb35
bb35:
  %t253 = load { i32, { i64, ptr } }, ptr %l114
  store { i32, { i64, ptr } } %t253, ptr %l19
  %t254 = getelementptr { i32, { i64, ptr } }, ptr %l19, i32 0, i32 0
  %t255 = load i32, ptr %t254, !tbaa !23
  store i32 %t255, ptr %l20, !tbaa !23
  %t257 = getelementptr { i32, { i64, ptr } }, ptr %l19, i32 0, i32 1
  %t258 = load { i64, ptr }, ptr %t257, !tbaa !27
  store { i64, ptr } %t258, ptr %l21, !tbaa !27
  %t260 = load { i64, ptr }, ptr %l21, !tbaa !27
  %t262 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s2, ptr %s2, { i64, ptr } %t260, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d21, i32 0, i32 1) })
  store i1 %t262, ptr %l118
  br label %bb36
bb36:
  %t263 = load i1, ptr %l118, !tbaa !21
  %t264 = xor i1 %t263, true
  br i1 %t264, label %bb37, label %bb38
bb37:
  store %olang.scope zeroinitializer, ptr %s9
  %t266 = load ptr, ptr %l0, !tbaa !29
  %t268 = getelementptr %"compiler/generic:Program", ptr %t266, i32 0, i32 0
  %t269 = load ptr, ptr %t268, !tbaa !29
  %t271 = getelementptr %"compiler/load:Loader", ptr %t269, i32 0, i32 4
  %t272 = load ptr, ptr %t271, !tbaa !29
  store ptr %t272, ptr %l122, !tbaa !29
  %t273 = load ptr, ptr %l0, !tbaa !29
  %t274 = load ptr, ptr %l1, !tbaa !29
  %t276 = getelementptr %"compiler/generic:Context", ptr %t274, i32 0, i32 0
  %t277 = load i64, ptr %t276, !tbaa !24
  %t278 = load %"compiler/source:Span", ptr %l2
  %t282 = call { i64, [3 x i64] } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eat(ptr %v0, ptr %t273, i64 %t277, %"compiler/source:Span" %t278)
  store { i64, [3 x i64] } %t282, ptr %l127
  br label %bb39
bb38:
  br label %bb43
bb39:
  %t283 = load { i64, ptr }, ptr %l18, !tbaa !27
  store { i64, ptr } %t283, ptr %l128, !tbaa !27
  %t284 = load ptr, ptr %l0, !tbaa !29
  %t285 = load i32, ptr %l6, !tbaa !23
  %t288 = call { i64, ptr } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eReflName(ptr %v0, ptr %s9, ptr %t284, i32 %t285)
  store { i64, ptr } %t288, ptr %l131
  br label %bb40
bb40:
  %t289 = load { i64, ptr }, ptr %l131, !tbaa !27
  %t290 = extractvalue { i64, ptr } %t289, 0
  %t291 = extractvalue { i64, ptr } %t289, 1
  %t292 = mul i64 %t290, 1
  %t293 = call ptr @__olang_scope_alloc(ptr %s9, i64 %t292)
  call void @llvm.memcpy.p0.p0.i64(ptr %t293, ptr %t291, i64 %t292, i1 false)
  %t294 = insertvalue { i64, ptr } undef, i64 %t290, 0
  %t295 = insertvalue { i64, ptr } %t294, ptr %t293, 1
  %t296 = load { i64, ptr }, ptr %l21, !tbaa !27
  %t297 = load { i64, ptr }, ptr %l128, !tbaa !27
  %t300 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eReflNoType(ptr %v0, ptr %s9, ptr %s2, ptr %v0, { i64, ptr } %t297, { i64, ptr } %t295, { i64, ptr } %t296)
  store %"compiler/diagmsg:Msg" %t300, ptr %l134
  br label %bb41
bb41:
  %t301 = load ptr, ptr %l122, !tbaa !29
  %t302 = load { i64, [3 x i64] }, ptr %l127
  %t303 = load %"compiler/diagmsg:Msg", ptr %l134
  %t304 = call i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eErrorOncePerLine(ptr %v0, ptr %v0, ptr %t301, { i64, [3 x i64] } %t302, %"compiler/diagmsg:Msg" %t303)
  store i64 %t304, ptr %l135
  br label %bb42
bb42:
  %t305 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  call void @__olang_scope_close(ptr %s9)
  call void @__olang_scope_close(ptr %s2)
  store i32 %t305, ptr %rv
  br label %ret
bb43:
  %t307 = load i32, ptr %l20, !tbaa !23
  store i32 %t307, ptr %l6, !tbaa !23
  call void @__olang_scope_close(ptr %s2)
  br label %bb44
bb44:
  %t309 = load i64, ptr %l11, !tbaa !24
  %t311 = add i64 %t309, 1
  store i64 %t311, ptr %l11, !tbaa !24
  br label %bb7
bb45:
  %t313 = load i32, ptr %l6, !tbaa !23
  store i32 %t313, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2epromiseParam(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1, ptr %a2, ptr %a3, i64 %a4) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca ptr
  %l5 = alloca i32
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca i64
  %l13 = alloca { i64, ptr }
  %l22 = alloca i64
  %l25 = alloca i64
  %l44 = alloca { i64, ptr }
  %l50 = alloca i1
  %l56 = alloca ptr
  %l57 = alloca ptr
  %l58 = alloca ptr
  %l61 = alloca { i64, ptr }
  %l62 = alloca %"compiler/diagmsg:Msg"
  %rv = alloca i64
  store ptr %a0, ptr %l0
  store ptr %a2, ptr %l2
  store ptr %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l3, !tbaa !29
  %t3 = getelementptr %"compiler/ast:Promise", ptr %t1, i32 0, i32 2
  %t4 = load { i64, ptr }, ptr %t3, !tbaa !27
  store { i64, ptr } %t4, ptr %l13, !tbaa !27
  %t7 = getelementptr { i64, ptr }, ptr %l13, i32 0, i32 1
  %t8 = load ptr, ptr %t7, !tbaa !27
  %t9 = getelementptr i32, ptr %t8, i64 %a4
  %t10 = load i32, ptr %t9, !tbaa !33
  store i32 %t10, ptr %l5, !tbaa !23
  store i64 0, ptr %l6, !tbaa !24
  %t12 = load ptr, ptr %l2, !tbaa !29
  %t14 = getelementptr %"compiler/ast:Sig", ptr %t12, i32 0, i32 0
  %t15 = load { i64, ptr }, ptr %t14, !tbaa !27
  %t17 = extractvalue { i64, ptr } %t15, 0
  store i64 %t17, ptr %l7, !tbaa !24
  store i64 1, ptr %l8, !tbaa !24
  %t19 = load i64, ptr %l7, !tbaa !24
  %t20 = load i64, ptr %l6, !tbaa !24
  %t23 = icmp sgt i64 %t19, %t20
  br i1 %t23, label %bb1, label %bb2
bb1:
  %t25 = load i64, ptr %l8, !tbaa !24
  %t27 = icmp sgt i64 %t25, 0
  br i1 %t27, label %bb3, label %bb4
bb2:
  store i64 0, ptr %l22, !tbaa !24
  br label %bb6
bb3:
  %t29 = load i64, ptr %l7, !tbaa !24
  %t30 = load i64, ptr %l6, !tbaa !24
  %t33 = sub i64 %t29, %t30
  %t34 = load i64, ptr %l8, !tbaa !24
  %t37 = add i64 %t33, %t34
  %t39 = sub i64 %t37, 1
  %t40 = load i64, ptr %l8, !tbaa !24
  %t43 = sdiv i64 %t39, %t40
  store i64 %t43, ptr %l25, !tbaa !24
  br label %bb5
bb4:
  store i64 0, ptr %l25, !tbaa !24
  br label %bb5
bb5:
  %t45 = load i64, ptr %l25, !tbaa !24
  store i64 %t45, ptr %l22, !tbaa !24
  br label %bb6
bb6:
  %t46 = load i64, ptr %l22, !tbaa !24
  store i64 %t46, ptr %l9, !tbaa !24
  store i64 0, ptr %l10, !tbaa !24
  br label %bb7
bb7:
  %t47 = load i64, ptr %l10, !tbaa !24
  %t48 = load i64, ptr %l9, !tbaa !24
  %t51 = icmp slt i64 %t47, %t48
  %t53 = xor i1 %t51, true
  br i1 %t53, label %bb8, label %bb9
bb8:
  br label %bb18
bb9:
  br label %bb10
bb10:
  %t55 = load i64, ptr %l6, !tbaa !24
  %t56 = load i64, ptr %l10, !tbaa !24
  %t57 = load i64, ptr %l8, !tbaa !24
  %t60 = mul i64 %t56, %t57
  %t63 = add i64 %t55, %t60
  store i64 %t63, ptr %l11, !tbaa !24
  %t65 = load ptr, ptr %l2, !tbaa !29
  %t67 = getelementptr %"compiler/ast:Sig", ptr %t65, i32 0, i32 0
  %t68 = load { i64, ptr }, ptr %t67, !tbaa !27
  store { i64, ptr } %t68, ptr %l44, !tbaa !27
  %t69 = load i64, ptr %l11, !tbaa !24
  %t71 = getelementptr { i64, ptr }, ptr %l44, i32 0, i32 1
  %t72 = load ptr, ptr %t71, !tbaa !27
  %t73 = getelementptr ptr, ptr %t72, i64 %t69
  %t74 = load ptr, ptr %t73, !tbaa !39
  %t76 = getelementptr %"compiler/ast:Param", ptr %t74, i32 0, i32 1
  %t77 = load i32, ptr %t76, !tbaa !23
  %t78 = load i32, ptr %l5, !tbaa !23
  %t81 = icmp eq i32 %t77, %t78
  br i1 %t81, label %bb11, label %bb12
bb11:
  %t83 = load i32, ptr %l5, !tbaa !23
  %t85 = icmp ne i32 %t83, 0
  store i1 %t85, ptr %l50, !tbaa !21
  br label %bb13
bb12:
  store i1 false, ptr %l50, !tbaa !21
  br label %bb13
bb13:
  %t87 = load i1, ptr %l50, !tbaa !21
  br i1 %t87, label %bb14, label %bb15
bb14:
  %t88 = load i64, ptr %l11, !tbaa !24
  store i64 %t88, ptr %rv
  br label %ret
bb15:
  br label %bb16
bb16:
  br label %bb17
bb17:
  %t90 = load i64, ptr %l10, !tbaa !24
  %t92 = add i64 %t90, 1
  store i64 %t92, ptr %l10, !tbaa !24
  br label %bb7
bb18:
  %t94 = load ptr, ptr %l0, !tbaa !29
  store ptr %t94, ptr %l56, !tbaa !29
  store ptr %a1, ptr %l57, !tbaa !29
  %t96 = load ptr, ptr %l3, !tbaa !29
  store ptr %t96, ptr %l58, !tbaa !29
  %t97 = load ptr, ptr %l0, !tbaa !29
  %t98 = load i32, ptr %l5, !tbaa !23
  %t101 = call { i64, ptr } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2etext(ptr %v0, ptr %v0, ptr %t97, i32 %t98)
  store { i64, ptr } %t101, ptr %l61
  br label %bb19
bb19:
  %t102 = load { i64, ptr }, ptr %l61, !tbaa !27
  %t103 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2ePromiseNoParam(ptr %v0, ptr %v0, { i64, ptr } %t102)
  store %"compiler/diagmsg:Msg" %t103, ptr %l62
  br label %bb20
bb20:
  %t104 = load ptr, ptr %l56, !tbaa !29
  %t105 = load ptr, ptr %l57, !tbaa !29
  %t106 = load ptr, ptr %l58, !tbaa !29
  %t107 = load %"compiler/diagmsg:Msg", ptr %l62
  call void @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2epromiseErr(ptr %v0, ptr %v1, ptr %v3, ptr %v0, ptr %t104, ptr %t105, ptr %t106, %"compiler/diagmsg:Msg" %t107)
  br label %bb21
bb21:
  store i64 -1, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local void @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2ereprReady(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca i32
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l13 = alloca i64
  %l16 = alloca i64
  %l37 = alloca i32
  %l41 = alloca i1
  %l44 = alloca i1
  %l47 = alloca ptr
  %l51 = alloca i32
  %l52 = alloca i32
  %l59 = alloca i32
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store i32 %a1, ptr %l2, !tbaa !23
  store i64 0, ptr %l3, !tbaa !24
  store i64 64, ptr %l4, !tbaa !24
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
  %t31 = load i64, ptr %l7, !tbaa !24
  %t32 = load i64, ptr %l6, !tbaa !24
  %t35 = icmp slt i64 %t31, %t32
  %t37 = xor i1 %t35, true
  br i1 %t37, label %bb8, label %bb9
bb8:
  br label %bb26
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
  %t51 = getelementptr %"compiler/generic:Program", ptr %t49, i32 0, i32 2
  %t52 = load i32, ptr %l2, !tbaa !23
  %t55 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t51, i32 %t52)
  store i32 %t55, ptr %l37
  br label %bb11
bb11:
  %t56 = load i32, ptr %l37, !range !{i32 0, i32 33}
  %t58 = trunc i64 18 to i32
  %t59 = icmp eq i32 %t56, %t58
  %t61 = xor i1 %t59, true
  br i1 %t61, label %bb12, label %bb13
bb12:
  store i1 true, ptr %l41, !tbaa !21
  br label %bb15
bb13:
  %t63 = load ptr, ptr %l0, !tbaa !29
  %t64 = load i32, ptr %l2, !tbaa !23
  %t67 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eBody(ptr %v0, ptr %t63, i32 %t64)
  store i1 %t67, ptr %l44
  br label %bb14
bb14:
  %t68 = load i1, ptr %l44, !tbaa !21
  %t69 = xor i1 %t68, true
  store i1 %t69, ptr %l41, !tbaa !21
  br label %bb15
bb15:
  %t71 = load i1, ptr %l41, !tbaa !21
  br i1 %t71, label %bb16, label %bb17
bb16:
  br label %ret
bb17:
  br label %bb18
bb18:
  %t72 = load ptr, ptr %l0, !tbaa !29
  %t74 = getelementptr %"compiler/generic:Program", ptr %t72, i32 0, i32 2
  store ptr %t74, ptr %l47, !tbaa !29
  %t75 = load ptr, ptr %l0, !tbaa !29
  %t77 = getelementptr %"compiler/generic:Program", ptr %t75, i32 0, i32 2
  %t78 = load i32, ptr %l2, !tbaa !23
  %t81 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %t77, i32 %t78)
  store i32 %t81, ptr %l51
  br label %bb19
bb19:
  %t82 = load ptr, ptr %l47, !tbaa !29
  %t83 = load i32, ptr %l51, !tbaa !23
  %t84 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclKindOf(ptr %v0, ptr %t82, i32 %t83)
  store i32 %t84, ptr %l52
  br label %bb20
bb20:
  %t85 = load i32, ptr %l52, !range !{i32 0, i32 6}
  %t87 = trunc i64 4 to i32
  %t88 = icmp eq i32 %t85, %t87
  %t90 = xor i1 %t88, true
  br i1 %t90, label %bb21, label %bb22
bb21:
  br label %ret
bb22:
  br label %bb23
bb23:
  %t92 = load ptr, ptr %l0, !tbaa !29
  %t94 = getelementptr %"compiler/generic:Program", ptr %t92, i32 0, i32 2
  %t95 = load i32, ptr %l2, !tbaa !23
  %t98 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eBase(ptr %v0, ptr %t94, i32 %t95)
  store i32 %t98, ptr %l59
  br label %bb24
bb24:
  %t99 = load i32, ptr %l59, !tbaa !23
  store i32 %t99, ptr %l2, !tbaa !23
  br label %bb25
bb25:
  %t100 = load i64, ptr %l7, !tbaa !24
  %t102 = add i64 %t100, 1
  store i64 %t102, ptr %l7, !tbaa !24
  br label %bb7
bb26:
  br label %ret
ret:
  ret void
}

define dso_local i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2esuppliedMeets(ptr %v0, ptr %v1, ptr %a0, i32 %a1, { i64, ptr } %a2, i32 %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca { i64, ptr }
  %l3 = alloca i32
  %l4 = alloca i32
  %l5 = alloca i32
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca i64
  %l12 = alloca i64
  %l13 = alloca i32
  %l14 = alloca i64
  %l15 = alloca i64
  %l16 = alloca i64
  %l17 = alloca i64
  %l18 = alloca i64
  %l19 = alloca i64
  %l22 = alloca i32
  %l24 = alloca ptr
  %l28 = alloca i32
  %l29 = alloca { i64, ptr }
  %l32 = alloca i1
  %l36 = alloca i32
  %l40 = alloca i1
  %l44 = alloca i32
  %l47 = alloca i32
  %l51 = alloca i32
  %l56 = alloca i64
  %l59 = alloca i64
  %l80 = alloca i1
  %l84 = alloca i64
  %l88 = alloca i32
  %l90 = alloca ptr
  %l93 = alloca { i64, ptr }
  %l96 = alloca { i64, ptr }
  %l97 = alloca i32
  %l101 = alloca i1
  %l107 = alloca i32
  %l114 = alloca i32
  %l119 = alloca i1
  %l122 = alloca i1
  %l124 = alloca i1
  %l128 = alloca i32
  %l131 = alloca i32
  %l135 = alloca i32
  %l140 = alloca i64
  %l143 = alloca i64
  %l164 = alloca i32
  %l170 = alloca i1
  %l176 = alloca i32
  %s0 = alloca %olang.scope
  %s5 = alloca %olang.scope
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  store { i64, ptr } %a2, ptr %l2
  store i32 %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/generic:Program", ptr %t1, i32 0, i32 2
  %t5 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePrim(ptr %v0, ptr %s0, ptr %t3, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d22, i32 0, i32 1) })
  store i32 %t5, ptr %l22
  br label %bb1
bb1:
  %t6 = load i32, ptr %l22, !tbaa !23
  store i32 %t6, ptr %l4, !tbaa !23
  %t7 = load ptr, ptr %l0, !tbaa !29
  %t9 = getelementptr %"compiler/generic:Program", ptr %t7, i32 0, i32 2
  store ptr %t9, ptr %l24, !tbaa !29
  %t10 = load ptr, ptr %l0, !tbaa !29
  %t12 = getelementptr %"compiler/generic:Program", ptr %t10, i32 0, i32 2
  %t13 = load i32, ptr %l3, !tbaa !23
  %t16 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParams(ptr %v0, ptr %t12, i32 %t13)
  store i32 %t16, ptr %l28
  br label %bb2
bb2:
  %t17 = load ptr, ptr %l24, !tbaa !29
  %t18 = load i32, ptr %l28, !tbaa !23
  %t19 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %s0, ptr %t17, i32 %t18)
  store { i64, ptr } %t19, ptr %l29
  br label %bb3
bb3:
  %t20 = load { i64, ptr }, ptr %l29, !tbaa !27
  %t21 = extractvalue { i64, ptr } %t20, 0
  %t23 = icmp ne i64 %t21, 0
  br i1 %t23, label %bb4, label %bb5
bb4:
  store i1 true, ptr %l32, !tbaa !21
  br label %bb7
bb5:
  %t25 = load ptr, ptr %l0, !tbaa !29
  %t27 = getelementptr %"compiler/generic:Program", ptr %t25, i32 0, i32 2
  %t28 = load i32, ptr %l3, !tbaa !23
  %t31 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrors(ptr %v0, ptr %t27, i32 %t28)
  store i32 %t31, ptr %l36
  br label %bb6
bb6:
  %t32 = load i32, ptr %l36, !tbaa !23
  %t33 = icmp ne i32 %t32, 0
  store i1 %t33, ptr %l32, !tbaa !21
  br label %bb7
bb7:
  %t35 = load i1, ptr %l32, !tbaa !21
  br i1 %t35, label %bb8, label %bb9
bb8:
  call void @__olang_scope_close(ptr %s0)
  store i1 false, ptr %rv
  br label %ret
bb9:
  br label %bb10
bb10:
  %t37 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t39 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v1, ptr %s0, { i64, ptr } %t37, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d23, i32 0, i32 1) })
  store i1 %t39, ptr %l40
  br label %bb11
bb11:
  %t40 = load i1, ptr %l40, !tbaa !21
  br i1 %t40, label %bb12, label %bb13
bb12:
  %t41 = load ptr, ptr %l0, !tbaa !29
  %t43 = getelementptr %"compiler/generic:Program", ptr %t41, i32 0, i32 2
  %t44 = load i32, ptr %l1, !tbaa !23
  %t47 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t43, i32 %t44)
  store i32 %t47, ptr %l44
  br label %bb14
bb13:
  br label %bb49
bb14:
  %t48 = load i32, ptr %l44, !range !{i32 0, i32 33}
  %t50 = trunc i64 20 to i32
  %t51 = icmp eq i32 %t48, %t50
  br i1 %t51, label %bb15, label %bb16
bb15:
  %t53 = load ptr, ptr %l0, !tbaa !29
  %t55 = getelementptr %"compiler/generic:Program", ptr %t53, i32 0, i32 2
  %t56 = load i32, ptr %l1, !tbaa !23
  %t59 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eReferent(ptr %v0, ptr %t55, i32 %t56)
  store i32 %t59, ptr %l51
  br label %bb17
bb16:
  %t60 = load i32, ptr %l1, !tbaa !23
  store i32 %t60, ptr %l47, !tbaa !23
  br label %bb18
bb17:
  %t62 = load i32, ptr %l51, !tbaa !23
  store i32 %t62, ptr %l47, !tbaa !23
  br label %bb18
bb18:
  %t63 = load i32, ptr %l47, !tbaa !23
  store i32 %t63, ptr %l5, !tbaa !23
  store i64 0, ptr %l6, !tbaa !24
  store i64 16, ptr %l7, !tbaa !24
  store i64 1, ptr %l8, !tbaa !24
  %t64 = load i64, ptr %l7, !tbaa !24
  %t65 = load i64, ptr %l6, !tbaa !24
  %t68 = icmp sgt i64 %t64, %t65
  br i1 %t68, label %bb19, label %bb20
bb19:
  %t70 = load i64, ptr %l8, !tbaa !24
  %t72 = icmp sgt i64 %t70, 0
  br i1 %t72, label %bb21, label %bb22
bb20:
  store i64 0, ptr %l56, !tbaa !24
  br label %bb24
bb21:
  %t74 = load i64, ptr %l7, !tbaa !24
  %t75 = load i64, ptr %l6, !tbaa !24
  %t78 = sub i64 %t74, %t75
  %t79 = load i64, ptr %l8, !tbaa !24
  %t82 = add i64 %t78, %t79
  %t84 = sub i64 %t82, 1
  %t85 = load i64, ptr %l8, !tbaa !24
  %t88 = sdiv i64 %t84, %t85
  store i64 %t88, ptr %l59, !tbaa !24
  br label %bb23
bb22:
  store i64 0, ptr %l59, !tbaa !24
  br label %bb23
bb23:
  %t90 = load i64, ptr %l59, !tbaa !24
  store i64 %t90, ptr %l56, !tbaa !24
  br label %bb24
bb24:
  %t91 = load i64, ptr %l56, !tbaa !24
  store i64 %t91, ptr %l9, !tbaa !24
  store i64 0, ptr %l10, !tbaa !24
  br label %bb25
bb25:
  %t92 = load i64, ptr %l10, !tbaa !24
  %t93 = load i64, ptr %l9, !tbaa !24
  %t96 = icmp slt i64 %t92, %t93
  %t98 = xor i1 %t96, true
  br i1 %t98, label %bb26, label %bb27
bb26:
  br label %bb48
bb27:
  br label %bb28
bb28:
  %t100 = load i64, ptr %l6, !tbaa !24
  %t101 = load i64, ptr %l10, !tbaa !24
  %t102 = load i64, ptr %l8, !tbaa !24
  %t105 = mul i64 %t101, %t102
  %t108 = add i64 %t100, %t105
  store i64 %t108, ptr %l11, !tbaa !24
  %t110 = load ptr, ptr %l0, !tbaa !29
  %t112 = getelementptr %"compiler/generic:Program", ptr %t110, i32 0, i32 2
  %t113 = load i32, ptr %l5, !tbaa !23
  %t116 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsFloat(ptr %v0, ptr %t112, i32 %t113)
  store i1 %t116, ptr %l80
  br label %bb29
bb29:
  %t117 = load i1, ptr %l80, !tbaa !21
  br i1 %t117, label %bb30, label %bb31
bb30:
  store %olang.scope zeroinitializer, ptr %s5
  %t118 = load ptr, ptr %l0, !tbaa !29
  %t120 = getelementptr %"compiler/generic:Program", ptr %t118, i32 0, i32 2
  %t121 = load i32, ptr %l5, !tbaa !23
  %t124 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eBits(ptr %v0, ptr %t120, i32 %t121)
  store i64 %t124, ptr %l84
  br label %bb32
bb31:
  br label %bb41
bb32:
  %t125 = load i64, ptr %l84, !tbaa !24
  store i64 %t125, ptr %l12, !tbaa !24
  %t126 = load ptr, ptr %l0, !tbaa !29
  %t128 = getelementptr %"compiler/generic:Program", ptr %t126, i32 0, i32 2
  %t129 = load i32, ptr %l3, !tbaa !23
  %t132 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eResult(ptr %v0, ptr %t128, i32 %t129)
  store i32 %t132, ptr %l88
  br label %bb33
bb33:
  %t133 = load ptr, ptr %l0, !tbaa !29
  %t135 = getelementptr %"compiler/generic:Program", ptr %t133, i32 0, i32 2
  store ptr %t135, ptr %l90, !tbaa !29
  %t136 = load i64, ptr %l12, !tbaa !24
  %t138 = icmp eq i64 %t136, 64
  br i1 %t138, label %bb34, label %bb35
bb34:
  store { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d24, i32 0, i32 1) }, ptr %l93, !tbaa !27
  br label %bb39
bb35:
  %t140 = load i64, ptr %l12, !tbaa !24
  %t142 = icmp eq i64 %t140, 32
  br i1 %t142, label %bb36, label %bb37
bb36:
  store { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d25, i32 0, i32 1) }, ptr %l96, !tbaa !27
  br label %bb38
bb37:
  store { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d26, i32 0, i32 1) }, ptr %l96, !tbaa !27
  br label %bb38
bb38:
  %t144 = load { i64, ptr }, ptr %l96, !tbaa !27
  store { i64, ptr } %t144, ptr %l93, !tbaa !27
  br label %bb39
bb39:
  %t145 = load ptr, ptr %l90, !tbaa !29
  %t146 = load { i64, ptr }, ptr %l93, !tbaa !27
  %t147 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePrim(ptr %v0, ptr %s5, ptr %t145, { i64, ptr } %t146)
  store i32 %t147, ptr %l97
  br label %bb40
bb40:
  %t148 = load i32, ptr %l88, !tbaa !23
  %t149 = load i32, ptr %l97, !tbaa !23
  %t150 = icmp eq i32 %t148, %t149
  call void @__olang_scope_close(ptr %s5)
  call void @__olang_scope_close(ptr %s0)
  store i1 %t150, ptr %rv
  br label %ret
bb41:
  %t152 = load ptr, ptr %l0, !tbaa !29
  %t153 = load i32, ptr %l5, !tbaa !23
  %t156 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eExtends(ptr %v0, ptr %t152, i32 %t153)
  store i1 %t156, ptr %l101
  br label %bb42
bb42:
  %t157 = load i1, ptr %l101, !tbaa !21
  %t158 = xor i1 %t157, true
  br i1 %t158, label %bb43, label %bb44
bb43:
  call void @__olang_scope_close(ptr %s0)
  store i1 false, ptr %rv
  br label %ret
bb44:
  br label %bb45
bb45:
  %t161 = load ptr, ptr %l0, !tbaa !29
  %t163 = getelementptr %"compiler/generic:Program", ptr %t161, i32 0, i32 2
  %t164 = load i32, ptr %l5, !tbaa !23
  %t167 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eBase(ptr %v0, ptr %t163, i32 %t164)
  store i32 %t167, ptr %l107
  br label %bb46
bb46:
  %t168 = load i32, ptr %l107, !tbaa !23
  store i32 %t168, ptr %l5, !tbaa !23
  br label %bb47
bb47:
  %t169 = load i64, ptr %l10, !tbaa !24
  %t171 = add i64 %t169, 1
  store i64 %t171, ptr %l10, !tbaa !24
  br label %bb25
bb48:
  call void @__olang_scope_close(ptr %s0)
  store i1 false, ptr %rv
  br label %ret
bb49:
  %t174 = load ptr, ptr %l0, !tbaa !29
  %t176 = getelementptr %"compiler/generic:Program", ptr %t174, i32 0, i32 2
  %t177 = load i32, ptr %l3, !tbaa !23
  %t180 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eResult(ptr %v0, ptr %t176, i32 %t177)
  store i32 %t180, ptr %l114
  br label %bb50
bb50:
  %t181 = load i32, ptr %l4, !tbaa !23
  %t182 = load i32, ptr %l114, !tbaa !23
  %t184 = icmp ne i32 %t182, %t181
  br i1 %t184, label %bb51, label %bb52
bb51:
  call void @__olang_scope_close(ptr %s0)
  store i1 false, ptr %rv
  br label %ret
bb52:
  br label %bb53
bb53:
  %t187 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t189 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v1, ptr %s0, { i64, ptr } %t187, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d27, i32 0, i32 1) })
  store i1 %t189, ptr %l119
  br label %bb54
bb54:
  %t190 = load i1, ptr %l119, !tbaa !21
  br i1 %t190, label %bb55, label %bb56
bb55:
  %t191 = load ptr, ptr %l0, !tbaa !29
  %t192 = load i32, ptr %l1, !tbaa !23
  %t195 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eHasHash(ptr %v0, ptr %t191, i32 %t192)
  store i1 %t195, ptr %l122
  br label %bb57
bb56:
  br label %bb58
bb57:
  call void @__olang_scope_close(ptr %s0)
  %t196 = load i1, ptr %l122, !tbaa !21
  store i1 %t196, ptr %rv
  br label %ret
bb58:
  %t197 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t199 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v1, ptr %s0, { i64, ptr } %t197, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d28, i32 0, i32 1) })
  store i1 %t199, ptr %l124
  br label %bb59
bb59:
  %t200 = load i1, ptr %l124, !tbaa !21
  br i1 %t200, label %bb60, label %bb61
bb60:
  %t201 = load ptr, ptr %l0, !tbaa !29
  %t203 = getelementptr %"compiler/generic:Program", ptr %t201, i32 0, i32 2
  %t204 = load i32, ptr %l1, !tbaa !23
  %t207 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t203, i32 %t204)
  store i32 %t207, ptr %l128
  br label %bb62
bb61:
  br label %bb88
bb62:
  %t208 = load i32, ptr %l128, !range !{i32 0, i32 33}
  %t210 = trunc i64 20 to i32
  %t211 = icmp eq i32 %t208, %t210
  br i1 %t211, label %bb63, label %bb64
bb63:
  %t213 = load ptr, ptr %l0, !tbaa !29
  %t215 = getelementptr %"compiler/generic:Program", ptr %t213, i32 0, i32 2
  %t216 = load i32, ptr %l1, !tbaa !23
  %t219 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eReferent(ptr %v0, ptr %t215, i32 %t216)
  store i32 %t219, ptr %l135
  br label %bb65
bb64:
  %t220 = load i32, ptr %l1, !tbaa !23
  store i32 %t220, ptr %l131, !tbaa !23
  br label %bb66
bb65:
  %t222 = load i32, ptr %l135, !tbaa !23
  store i32 %t222, ptr %l131, !tbaa !23
  br label %bb66
bb66:
  %t223 = load i32, ptr %l131, !tbaa !23
  store i32 %t223, ptr %l13, !tbaa !23
  store i64 0, ptr %l14, !tbaa !24
  store i64 16, ptr %l15, !tbaa !24
  store i64 1, ptr %l16, !tbaa !24
  %t224 = load i64, ptr %l15, !tbaa !24
  %t225 = load i64, ptr %l14, !tbaa !24
  %t228 = icmp sgt i64 %t224, %t225
  br i1 %t228, label %bb67, label %bb68
bb67:
  %t230 = load i64, ptr %l16, !tbaa !24
  %t232 = icmp sgt i64 %t230, 0
  br i1 %t232, label %bb69, label %bb70
bb68:
  store i64 0, ptr %l140, !tbaa !24
  br label %bb72
bb69:
  %t234 = load i64, ptr %l15, !tbaa !24
  %t235 = load i64, ptr %l14, !tbaa !24
  %t238 = sub i64 %t234, %t235
  %t239 = load i64, ptr %l16, !tbaa !24
  %t242 = add i64 %t238, %t239
  %t244 = sub i64 %t242, 1
  %t245 = load i64, ptr %l16, !tbaa !24
  %t248 = sdiv i64 %t244, %t245
  store i64 %t248, ptr %l143, !tbaa !24
  br label %bb71
bb70:
  store i64 0, ptr %l143, !tbaa !24
  br label %bb71
bb71:
  %t250 = load i64, ptr %l143, !tbaa !24
  store i64 %t250, ptr %l140, !tbaa !24
  br label %bb72
bb72:
  %t251 = load i64, ptr %l140, !tbaa !24
  store i64 %t251, ptr %l17, !tbaa !24
  store i64 0, ptr %l18, !tbaa !24
  br label %bb73
bb73:
  %t252 = load i64, ptr %l18, !tbaa !24
  %t253 = load i64, ptr %l17, !tbaa !24
  %t256 = icmp slt i64 %t252, %t253
  %t258 = xor i1 %t256, true
  br i1 %t258, label %bb74, label %bb75
bb74:
  br label %bb87
bb75:
  br label %bb76
bb76:
  %t260 = load i64, ptr %l14, !tbaa !24
  %t261 = load i64, ptr %l18, !tbaa !24
  %t262 = load i64, ptr %l16, !tbaa !24
  %t265 = mul i64 %t261, %t262
  %t268 = add i64 %t260, %t265
  store i64 %t268, ptr %l19, !tbaa !24
  %t270 = load ptr, ptr %l0, !tbaa !29
  %t272 = getelementptr %"compiler/generic:Program", ptr %t270, i32 0, i32 2
  %t273 = load i32, ptr %l13, !tbaa !23
  %t276 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t272, i32 %t273)
  store i32 %t276, ptr %l164
  br label %bb77
bb77:
  %t277 = load i32, ptr %l164, !range !{i32 0, i32 33}
  %t279 = trunc i64 19 to i32
  %t280 = icmp eq i32 %t277, %t279
  br i1 %t280, label %bb78, label %bb79
bb78:
  call void @__olang_scope_close(ptr %s0)
  store i1 true, ptr %rv
  br label %ret
bb79:
  br label %bb80
bb80:
  %t283 = load ptr, ptr %l0, !tbaa !29
  %t284 = load i32, ptr %l13, !tbaa !23
  %t287 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eExtends(ptr %v0, ptr %t283, i32 %t284)
  store i1 %t287, ptr %l170
  br label %bb81
bb81:
  %t288 = load i1, ptr %l170, !tbaa !21
  %t289 = xor i1 %t288, true
  br i1 %t289, label %bb82, label %bb83
bb82:
  call void @__olang_scope_close(ptr %s0)
  store i1 false, ptr %rv
  br label %ret
bb83:
  br label %bb84
bb84:
  %t292 = load ptr, ptr %l0, !tbaa !29
  %t294 = getelementptr %"compiler/generic:Program", ptr %t292, i32 0, i32 2
  %t295 = load i32, ptr %l13, !tbaa !23
  %t298 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eBase(ptr %v0, ptr %t294, i32 %t295)
  store i32 %t298, ptr %l176
  br label %bb85
bb85:
  %t299 = load i32, ptr %l176, !tbaa !23
  store i32 %t299, ptr %l13, !tbaa !23
  br label %bb86
bb86:
  %t300 = load i64, ptr %l18, !tbaa !24
  %t302 = add i64 %t300, 1
  store i64 %t302, ptr %l18, !tbaa !24
  br label %bb73
bb87:
  br label %bb88
bb88:
  call void @__olang_scope_close(ptr %s0)
  store i1 false, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eunendedIn(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1, ptr %a2, i64 %a3, i1 %a4) #0 {
entry:
  %l5 = alloca { i64, ptr }
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i32
  %l9 = alloca i32
  %l17 = alloca { i64, ptr }
  %l28 = alloca i32
  %rv = alloca i32
  br label %start
start:
  br label %bb0
bb0:
  store { i64, ptr } %a1, ptr %l5, !tbaa !27
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
  br label %bb13
bb3:
  br label %bb4
bb4:
  %t15 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t15, ptr %l17, !tbaa !27
  %t16 = load i64, ptr %l6, !tbaa !24
  %t18 = getelementptr { i64, ptr }, ptr %l17, i32 0, i32 1
  %t19 = load ptr, ptr %t18, !tbaa !27
  %t20 = getelementptr i32, ptr %t19, i64 %t16
  %t21 = load i32, ptr %t20, !tbaa !33
  store i32 %t21, ptr %l8, !tbaa !23
  %t23 = load i32, ptr %l8, !tbaa !23
  %t25 = icmp eq i32 %t23, 0
  br i1 %t25, label %bb5, label %bb6
bb5:
  br label %bb12
bb6:
  br label %bb7
bb7:
  %t28 = load i32, ptr %l8, !tbaa !23
  %t32 = add i64 %a3, 1
  %t39 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eunended(ptr %v0, ptr %v2, ptr %a0, i32 %t28, ptr %a2, i64 %t32, i1 %a4)
  store i32 %t39, ptr %l28
  br label %bb8
bb8:
  %t40 = load i32, ptr %l28, !tbaa !23
  store i32 %t40, ptr %l9, !tbaa !23
  %t41 = load i32, ptr %l9, !tbaa !23
  %t42 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t45 = icmp ne i32 %t41, %t42
  br i1 %t45, label %bb9, label %bb10
bb9:
  %t47 = load i32, ptr %l9, !tbaa !23
  store i32 %t47, ptr %rv
  br label %ret
bb10:
  br label %bb11
bb11:
  br label %bb12
bb12:
  %t49 = load i64, ptr %l6, !tbaa !24
  %t51 = add i64 %t49, 1
  store i64 %t51, ptr %l6, !tbaa !24
  br label %bb1
bb13:
  %t53 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  store i32 %t53, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eunendedNamed(ptr %v0, ptr %v1, ptr %a0, i32 %a1, ptr %a2, i64 %a3, i1 %a4) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca ptr
  %l3 = alloca i64
  %l4 = alloca i1
  %l5 = alloca i32
  %l8 = alloca i1
  %l9 = alloca i1
  %l12 = alloca i1
  %l18 = alloca ptr
  %l22 = alloca i32
  %l23 = alloca i32
  %l24 = alloca i32
  %l32 = alloca i32
  %l35 = alloca ptr
  %l37 = alloca ptr
  %l41 = alloca i32
  %l42 = alloca { i64, ptr }
  %l46 = alloca i32
  %l49 = alloca ptr
  %l53 = alloca i32
  %l58 = alloca i32
  %rv = alloca i32
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  store ptr %a2, ptr %l2
  store i64 %a3, ptr %l3
  store i1 %a4, ptr %l4
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l2, !tbaa !29
  %t2 = load i32, ptr %l1, !tbaa !23
  %t5 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId_2c_20Bool_3e_Hb3133f486435530b533aaf49461c92b5(ptr %v1, ptr %t1, i32 %t2)
  store i1 %t5, ptr %l8
  br label %bb1
bb1:
  %t6 = load i1, ptr %l8, !tbaa !21
  br i1 %t6, label %bb2, label %bb3
bb2:
  store i1 true, ptr %l9, !tbaa !21
  br label %bb5
bb3:
  %t7 = load ptr, ptr %l0, !tbaa !29
  %t8 = load i32, ptr %l1, !tbaa !23
  %t11 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eBody(ptr %v0, ptr %t7, i32 %t8)
  store i1 %t11, ptr %l12
  br label %bb4
bb4:
  %t12 = load i1, ptr %l12, !tbaa !21
  %t13 = xor i1 %t12, true
  store i1 %t13, ptr %l9, !tbaa !21
  br label %bb5
bb5:
  %t15 = load i1, ptr %l9, !tbaa !21
  br i1 %t15, label %bb6, label %bb7
bb6:
  %t16 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  store i32 %t16, ptr %rv
  br label %ret
bb7:
  br label %bb8
bb8:
  %t18 = load ptr, ptr %l2, !tbaa !29
  %t19 = load i32, ptr %l1, !tbaa !23
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId_2c_20Bool_3e_H64d9be73b6c9bed004c541bdf7f0ca0a(ptr %v1, ptr %t18, i32 %t19, i1 true)
  br label %bb9
bb9:
  %t22 = load ptr, ptr %l0, !tbaa !29
  %t24 = getelementptr %"compiler/generic:Program", ptr %t22, i32 0, i32 2
  store ptr %t24, ptr %l18, !tbaa !29
  %t25 = load ptr, ptr %l0, !tbaa !29
  %t27 = getelementptr %"compiler/generic:Program", ptr %t25, i32 0, i32 2
  %t28 = load i32, ptr %l1, !tbaa !23
  %t31 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %t27, i32 %t28)
  store i32 %t31, ptr %l22
  br label %bb10
bb10:
  %t32 = load ptr, ptr %l18, !tbaa !29
  %t33 = load i32, ptr %l22, !tbaa !23
  %t34 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclKindOf(ptr %v0, ptr %t32, i32 %t33)
  store i32 %t34, ptr %l23
  br label %bb11
bb11:
  %t35 = load i32, ptr %l23, !range !{i32 0, i32 6}
  store i32 %t35, ptr %l5
  %t36 = load i32, ptr %l5, !range !{i32 0, i32 6}
  %t38 = trunc i64 0 to i32
  %t39 = icmp eq i32 %t36, %t38
  br i1 %t39, label %bb12, label %bb13
bb12:
  br label %bb14
bb13:
  br label %bb16
bb14:
  %t41 = load ptr, ptr %l0, !tbaa !29
  %t42 = load i32, ptr %l1, !tbaa !23
  %t43 = load ptr, ptr %l2, !tbaa !29
  %t44 = load i64, ptr %l3, !tbaa !24
  %t45 = load i1, ptr %l4, !tbaa !21
  %t51 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eunendedFields(ptr %v0, ptr %v1, ptr %t41, i32 %t42, ptr %t43, i64 %t44, i1 %t45)
  store i32 %t51, ptr %l32
  br label %bb15
bb15:
  %t52 = load i32, ptr %l32, !tbaa !23
  store i32 %t52, ptr %l24, !tbaa !23
  br label %bb34
bb16:
  %t53 = load i32, ptr %l5, !range !{i32 0, i32 6}
  %t55 = trunc i64 1 to i32
  %t56 = icmp eq i32 %t53, %t55
  br i1 %t56, label %bb17, label %bb18
bb17:
  br label %bb19
bb18:
  br label %bb23
bb19:
  %t58 = load ptr, ptr %l0, !tbaa !29
  store ptr %t58, ptr %l35, !tbaa !29
  %t59 = load ptr, ptr %l0, !tbaa !29
  %t61 = getelementptr %"compiler/generic:Program", ptr %t59, i32 0, i32 2
  store ptr %t61, ptr %l37, !tbaa !29
  %t62 = load ptr, ptr %l0, !tbaa !29
  %t64 = getelementptr %"compiler/generic:Program", ptr %t62, i32 0, i32 2
  %t65 = load i32, ptr %l1, !tbaa !23
  %t68 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eCases(ptr %v0, ptr %t64, i32 %t65)
  store i32 %t68, ptr %l41
  br label %bb20
bb20:
  %t69 = load ptr, ptr %l37, !tbaa !29
  %t70 = load i32, ptr %l41, !tbaa !23
  %t71 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t69, i32 %t70)
  store { i64, ptr } %t71, ptr %l42
  br label %bb21
bb21:
  %t72 = load ptr, ptr %l2, !tbaa !29
  %t73 = load i64, ptr %l3, !tbaa !24
  %t74 = load i1, ptr %l4, !tbaa !21
  %t75 = load ptr, ptr %l35, !tbaa !29
  %t76 = load { i64, ptr }, ptr %l42, !tbaa !27
  %t80 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eunendedIn(ptr %v0, ptr %v0, ptr %v1, ptr %t75, { i64, ptr } %t76, ptr %t72, i64 %t73, i1 %t74)
  store i32 %t80, ptr %l46
  br label %bb22
bb22:
  %t81 = load i32, ptr %l46, !tbaa !23
  store i32 %t81, ptr %l24, !tbaa !23
  br label %bb34
bb23:
  %t82 = load i32, ptr %l5, !range !{i32 0, i32 6}
  %t84 = trunc i64 4 to i32
  %t85 = icmp eq i32 %t82, %t84
  br i1 %t85, label %bb24, label %bb25
bb24:
  br label %bb26
bb25:
  br label %bb29
bb26:
  %t87 = load ptr, ptr %l0, !tbaa !29
  store ptr %t87, ptr %l49, !tbaa !29
  %t88 = load ptr, ptr %l0, !tbaa !29
  %t90 = getelementptr %"compiler/generic:Program", ptr %t88, i32 0, i32 2
  %t91 = load i32, ptr %l1, !tbaa !23
  %t94 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eBase(ptr %v0, ptr %t90, i32 %t91)
  store i32 %t94, ptr %l53
  br label %bb27
bb27:
  %t95 = load ptr, ptr %l2, !tbaa !29
  %t96 = load i64, ptr %l3, !tbaa !24
  %t98 = add i64 %t96, 1
  %t99 = load i1, ptr %l4, !tbaa !21
  %t100 = load ptr, ptr %l49, !tbaa !29
  %t101 = load i32, ptr %l53, !tbaa !23
  %t105 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eunended(ptr %v0, ptr %v1, ptr %t100, i32 %t101, ptr %t95, i64 %t98, i1 %t99)
  store i32 %t105, ptr %l58
  br label %bb28
bb28:
  %t106 = load i32, ptr %l58, !tbaa !23
  store i32 %t106, ptr %l24, !tbaa !23
  br label %bb34
bb29:
  br i1 true, label %bb30, label %bb31
bb30:
  br label %bb32
bb31:
  br label %bb33
bb32:
  %t107 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  store i32 %t107, ptr %l24, !tbaa !23
  br label %bb34
bb33:
  call void @__olang_check_failed(ptr @olang_loc_c2b0e0f9c58e7130_5beafbe0f1fd477c)
  unreachable
bb34:
  %t109 = load i32, ptr %l24, !tbaa !23
  store i32 %t109, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2evarsBound(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l2 = alloca %"std/prelude/map:MapIter.bf5835bb10600fe6a7fc1da14a6360d9"
  %l3 = alloca %"std/prelude/map:MapEntry.91de8c8eb84d52d1e58996aec31d85aa"
  %l6 = alloca %"std/prelude/map:MapIter.bf5835bb10600fe6a7fc1da14a6360d9"
  %l7 = alloca %"std/prelude/map:MapEntry.91de8c8eb84d52d1e58996aec31d85aa"
  %l9 = alloca %"std/prelude/map:MapEntry.91de8c8eb84d52d1e58996aec31d85aa"
  %l10 = alloca i32
  %l12 = alloca i1
  %l16 = alloca i1
  %rv = alloca i1
  br label %start
start:
  br label %bb0
bb0:
  %t3 = getelementptr %"compiler/generic:Context", ptr %a1, i32 0, i32 2
  %t5 = call %"std/prelude/map:MapIter.bf5835bb10600fe6a7fc1da14a6360d9" @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fsource_3aNameId_2c_20compil_Ha72624ba64524ee3315305b5d1bfb369(ptr %v1, ptr %v1, ptr %t3)
  store %"std/prelude/map:MapIter.bf5835bb10600fe6a7fc1da14a6360d9" %t5, ptr %l6
  br label %bb1
bb1:
  %t6 = load %"std/prelude/map:MapIter.bf5835bb10600fe6a7fc1da14a6360d9", ptr %l6
  store %"std/prelude/map:MapIter.bf5835bb10600fe6a7fc1da14a6360d9" %t6, ptr %l2
  br label %bb2
bb2:
  %t8 = call { i32, %"std/prelude/map:MapEntry.91de8c8eb84d52d1e58996aec31d85aa" } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMapIter_3ccompiler_2fsource_3aNameId_2c_20co_H6cf169b12565f300e9fe11f1c8d55061(ptr %v1, ptr %l2)
  %t9 = extractvalue { i32, %"std/prelude/map:MapEntry.91de8c8eb84d52d1e58996aec31d85aa" } %t8, 1
  %t10 = extractvalue { i32, %"std/prelude/map:MapEntry.91de8c8eb84d52d1e58996aec31d85aa" } %t8, 0
  store i32 %t10, ptr %l10
  %t11 = icmp ne i32 %t10, 0
  br i1 %t11, label %bb4, label %ok.12, !prof !99
ok.12:
  store %"std/prelude/map:MapEntry.91de8c8eb84d52d1e58996aec31d85aa" %t9, ptr %l9
  br label %bb3
bb3:
  %t13 = load %"std/prelude/map:MapEntry.91de8c8eb84d52d1e58996aec31d85aa", ptr %l9
  store %"std/prelude/map:MapEntry.91de8c8eb84d52d1e58996aec31d85aa" %t13, ptr %l7
  br label %bb6
bb4:
  %t14 = load i32, ptr %l10, !tbaa !23
  %t15 = ashr i32 %t14, 16
  %t17 = icmp eq i32 %t15, 1
  store i1 %t17, ptr %l12, !tbaa !21
  br label %bb5
bb5:
  br label %bb12
bb6:
  %t18 = load %"std/prelude/map:MapEntry.91de8c8eb84d52d1e58996aec31d85aa", ptr %l7
  store %"std/prelude/map:MapEntry.91de8c8eb84d52d1e58996aec31d85aa" %t18, ptr %l3
  %t21 = getelementptr %"compiler/generic:Program", ptr %a0, i32 0, i32 2
  %t22 = getelementptr %"std/prelude/map:MapEntry.91de8c8eb84d52d1e58996aec31d85aa", ptr %l3, i32 0, i32 1
  %t23 = load i32, ptr %t22, !tbaa !23
  %t26 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eClosed(ptr %v0, ptr %t21, i32 %t23)
  store i1 %t26, ptr %l16
  br label %bb7
bb7:
  %t27 = load i1, ptr %l16, !tbaa !21
  %t28 = xor i1 %t27, true
  br i1 %t28, label %bb8, label %bb9
bb8:
  store i1 false, ptr %rv
  br label %ret
bb9:
  br label %bb10
bb10:
  br label %bb11
bb11:
  br label %bb2
bb12:
  store i1 true, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3agenRoots_2ecaseRoots(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l2 = alloca i64
  %l3 = alloca { i64, ptr }
  %l4 = alloca i64
  %l5 = alloca i64
  %l15 = alloca { i64, ptr }
  %l18 = alloca i64
  %l22 = alloca i64
  %rv = alloca i64
  br label %start
start:
  br label %bb0
bb0:
  store i64 0, ptr %l2, !tbaa !24
  %t3 = getelementptr %"compiler/ast:Match", ptr %a1, i32 0, i32 3
  %t4 = load { i64, ptr }, ptr %t3, !tbaa !27
  store { i64, ptr } %t4, ptr %l3, !tbaa !27
  store i64 0, ptr %l4, !tbaa !24
  %t6 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t8 = extractvalue { i64, ptr } %t6, 0
  store i64 %t8, ptr %l5, !tbaa !24
  br label %bb1
bb1:
  %t10 = load i64, ptr %l4, !tbaa !24
  %t11 = load i64, ptr %l5, !tbaa !24
  %t14 = icmp slt i64 %t10, %t11
  %t16 = xor i1 %t14, true
  br i1 %t16, label %bb2, label %bb3
bb2:
  br label %bb7
bb3:
  br label %bb4
bb4:
  %t18 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t18, ptr %l15, !tbaa !27
  %t19 = load i64, ptr %l4, !tbaa !24
  %t21 = getelementptr { i64, ptr }, ptr %l15, i32 0, i32 1
  %t22 = load ptr, ptr %t21, !tbaa !27
  %t23 = getelementptr ptr, ptr %t22, i64 %t19
  %t24 = load ptr, ptr %t23, !tbaa !39
  %t26 = load i64, ptr %l2, !tbaa !24
  store i64 %t26, ptr %l18, !tbaa !24
  %t30 = getelementptr %"compiler/ast:Case", ptr %t24, i32 0, i32 5
  %t31 = load ptr, ptr %t30, !tbaa !29
  %t34 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3agenRoots_2eroot(ptr %v0, ptr %v1, ptr %a0, ptr %t31)
  store i64 %t34, ptr %l22
  br label %bb5
bb5:
  %t35 = load i64, ptr %l18, !tbaa !24
  %t36 = load i64, ptr %l22, !tbaa !24
  %t37 = or i64 %t35, %t36
  store i64 %t37, ptr %l2, !tbaa !24
  br label %bb6
bb6:
  %t39 = load i64, ptr %l4, !tbaa !24
  %t41 = add i64 %t39, 1
  store i64 %t41, ptr %l4, !tbaa !24
  br label %bb1
bb7:
  %t43 = load i64, ptr %l2, !tbaa !24
  store i64 %t43, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local void @compiler_2fgeneric_2ecompiler_2fgeneric_3agenRoots_2egrow(ptr %v0, ptr %a0, i32 %a1, i64 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l5 = alloca i1
  %l8 = alloca i64
  %l11 = alloca ptr
  %l12 = alloca i32
  %l13 = alloca i64
  %l17 = alloca i64
  %l18 = alloca i32
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load i32, ptr %l1, !tbaa !23
  %t3 = icmp eq i32 %t1, 0
  br i1 %t3, label %bb1, label %bb2
bb1:
  store i1 true, ptr %l5, !tbaa !21
  br label %bb4
bb2:
  %t5 = load ptr, ptr %l0, !tbaa !29
  %t6 = load i32, ptr %l1, !tbaa !23
  %t9 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3agenRoots_2eparamBit(ptr %v0, ptr %t5, i32 %t6)
  store i64 %t9, ptr %l8
  br label %bb3
bb3:
  %t10 = load i64, ptr %l8, !tbaa !24
  %t11 = icmp sge i64 %t10, 0
  store i1 %t11, ptr %l5, !tbaa !21
  br label %bb4
bb4:
  %t13 = load i1, ptr %l5, !tbaa !21
  br i1 %t13, label %bb5, label %bb6
bb5:
  br label %ret
bb6:
  br label %bb7
bb7:
  %t14 = load ptr, ptr %l0, !tbaa !29
  %t16 = getelementptr %"compiler/generic:genRoots", ptr %t14, i32 0, i32 2
  store ptr %t16, ptr %l11, !tbaa !29
  %t17 = load i32, ptr %l1, !tbaa !23
  store i32 %t17, ptr %l12, !tbaa !23
  %t18 = load ptr, ptr %l0, !tbaa !29
  %t20 = getelementptr %"compiler/generic:genRoots", ptr %t18, i32 0, i32 2
  %t21 = load i32, ptr %l1, !tbaa !23
  %t24 = call { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fsource_3aNameId_2c_20I64_3e_H2a27ec2ae5362b2f0ac6d54f3e063c70(ptr %v0, ptr %t20, i32 %t21)
  %t25 = extractvalue { i32, i64 } %t24, 1
  %t26 = extractvalue { i32, i64 } %t24, 0
  store i32 %t26, ptr %l18
  %t27 = icmp ne i32 %t26, 0
  br i1 %t27, label %bb9, label %ok.28, !prof !99
ok.28:
  store i64 %t25, ptr %l17
  br label %bb8
bb8:
  %t29 = load i64, ptr %l17, !tbaa !24
  store i64 %t29, ptr %l13, !tbaa !24
  br label %bb11
bb9:
  br label %bb10
bb10:
  store i64 0, ptr %l13, !tbaa !24
  br label %bb11
bb11:
  %t31 = load i64, ptr %l13, !tbaa !24
  %t33 = or i64 %t31, %a2
  %t34 = load ptr, ptr %l11, !tbaa !29
  %t35 = load i32, ptr %l12, !tbaa !23
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fsource_3aNameId_2c_20I64_3e_H862756c16d115e5c03a79726209f69fa(ptr %v0, ptr %t34, i32 %t35, i64 %t33)
  br label %bb12
bb12:
  br label %ret
ret:
  ret void
}

define dso_local i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3agenRoots_2enameRoot(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca i64
  %l3 = alloca i64
  %l6 = alloca i64
  %l13 = alloca i1
  %l16 = alloca i64
  %l20 = alloca i64
  %l21 = alloca i32
  %l27 = alloca i64
  %rv = alloca i64
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load i32, ptr %l1, !tbaa !23
  %t5 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3agenRoots_2eparamBit(ptr %v0, ptr %t1, i32 %t2)
  store i64 %t5, ptr %l6
  br label %bb1
bb1:
  %t6 = load i64, ptr %l6, !tbaa !24
  store i64 %t6, ptr %l2, !tbaa !24
  %t7 = load i64, ptr %l2, !tbaa !24
  %t9 = icmp sge i64 %t7, 0
  br i1 %t9, label %bb2, label %bb3
bb2:
  %t11 = load i64, ptr %l2, !tbaa !24
  store i64 %t11, ptr %rv
  br label %ret
bb3:
  br label %bb4
bb4:
  %t13 = load ptr, ptr %l0, !tbaa !29
  %t15 = getelementptr %"compiler/generic:genRoots", ptr %t13, i32 0, i32 2
  %t16 = load i32, ptr %l1, !tbaa !23
  %t19 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fsource_3aNameId_2c_20I64_3e_Hf575c52a5a9e8993bae2b73c9c2548b3(ptr %v0, ptr %t15, i32 %t16)
  store i1 %t19, ptr %l13
  br label %bb5
bb5:
  %t20 = load i1, ptr %l13, !tbaa !21
  %t21 = xor i1 %t20, true
  br i1 %t21, label %bb6, label %bb7
bb6:
  store i64 0, ptr %rv
  br label %ret
bb7:
  br label %bb8
bb8:
  %t24 = load ptr, ptr %l0, !tbaa !29
  %t26 = getelementptr %"compiler/generic:genRoots", ptr %t24, i32 0, i32 2
  %t27 = load i32, ptr %l1, !tbaa !23
  %t30 = call { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fsource_3aNameId_2c_20I64_3e_H2a27ec2ae5362b2f0ac6d54f3e063c70(ptr %v0, ptr %t26, i32 %t27)
  %t31 = extractvalue { i32, i64 } %t30, 1
  %t32 = extractvalue { i32, i64 } %t30, 0
  store i32 %t32, ptr %l21
  %t33 = icmp ne i32 %t32, 0
  br i1 %t33, label %bb10, label %ok.34, !prof !99
ok.34:
  store i64 %t31, ptr %l20
  br label %bb9
bb9:
  %t35 = load i64, ptr %l20, !tbaa !24
  store i64 %t35, ptr %l16, !tbaa !24
  br label %bb12
bb10:
  br label %bb11
bb11:
  store i64 0, ptr %l16, !tbaa !24
  br label %bb12
bb12:
  %t36 = load i64, ptr %l16, !tbaa !24
  store i64 %t36, ptr %l3, !tbaa !24
  %t37 = load i64, ptr %l3, !tbaa !24
  %t38 = load i64, ptr @G_2ecompiler_2fgeneric_2eGenLocalBit, !tbaa !24
  %t40 = xor i64 %t38, -1
  %t43 = and i64 %t37, %t40
  %t45 = icmp ne i64 %t43, 0
  br i1 %t45, label %bb13, label %bb14
bb13:
  %t47 = load i64, ptr %l3, !tbaa !24
  store i64 %t47, ptr %l27, !tbaa !24
  br label %bb15
bb14:
  %t49 = load i64, ptr @G_2ecompiler_2fgeneric_2eGenLocalBit, !tbaa !24
  store i64 %t49, ptr %l27, !tbaa !24
  br label %bb15
bb15:
  %t51 = load i64, ptr %l27, !tbaa !24
  store i64 %t51, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local void @compiler_2fgeneric_2ecompiler_2fgeneric_3agenRoots_2estored(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca { i64, ptr }
  %l4 = alloca ptr
  %l5 = alloca i64
  %l6 = alloca { i64, ptr }
  %l7 = alloca i64
  %l8 = alloca i64
  %l10 = alloca ptr
  %l11 = alloca ptr
  %l12 = alloca i1
  %l19 = alloca ptr
  %l20 = alloca i1
  %l32 = alloca { i64, ptr }
  %l35 = alloca i64
  %l39 = alloca i64
  %l43 = alloca ptr
  %l45 = alloca i32
  %l47 = alloca ptr
  %l48 = alloca i1
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l1, !tbaa !29
  store ptr %t1, ptr %l11, !tbaa !29
  store i1 false, ptr %l12, !tbaa !21
  %t2 = load ptr, ptr %l11, !tbaa !29
  %t3 = icmp ne ptr %t2, null
  br i1 %t3, label %bb1, label %bb2
bb1:
  %t5 = load ptr, ptr %l11, !tbaa !29
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 28}
  %t8 = icmp eq i64 %t6, 10
  store i1 %t8, ptr %l12, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l12, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  %t10 = load ptr, ptr %l1, !tbaa !29
  %t12 = getelementptr { i64, [4 x i64] }, ptr %t10, i32 0, i32 1
  %t13 = getelementptr { %"compiler/source:Span", ptr, { i64, ptr } }, ptr %t12, i32 0, i32 1
  %t14 = load ptr, ptr %t13
  store ptr %t14, ptr %l2, !tbaa !29
  %t16 = load ptr, ptr %l1, !tbaa !29
  %t18 = getelementptr { i64, [4 x i64] }, ptr %t16, i32 0, i32 1
  %t19 = getelementptr { %"compiler/source:Span", ptr, { i64, ptr } }, ptr %t18, i32 0, i32 2
  %t20 = load { i64, ptr }, ptr %t19
  store { i64, ptr } %t20, ptr %l3, !tbaa !27
  br label %bb5
bb4:
  br label %bb26
bb5:
  %t22 = load ptr, ptr %l2, !tbaa !29
  store ptr %t22, ptr %l19, !tbaa !29
  store i1 false, ptr %l20, !tbaa !21
  %t23 = load ptr, ptr %l19, !tbaa !29
  %t24 = icmp ne ptr %t23, null
  br i1 %t24, label %bb6, label %bb7
bb6:
  %t26 = load ptr, ptr %l19, !tbaa !29
  %t27 = load i64, ptr %t26, !range !{i64 0, i64 28}
  %t29 = icmp eq i64 %t27, 12
  store i1 %t29, ptr %l20, !tbaa !21
  br label %bb7
bb7:
  %t30 = load i1, ptr %l20, !tbaa !21
  br i1 %t30, label %bb8, label %bb9
bb8:
  %t31 = load ptr, ptr %l2, !tbaa !29
  %t33 = getelementptr { i64, [4 x i64] }, ptr %t31, i32 0, i32 1
  %t34 = getelementptr { %"compiler/source:Span", ptr, i32 }, ptr %t33, i32 0, i32 1
  %t35 = load ptr, ptr %t34
  store ptr %t35, ptr %l4, !tbaa !29
  br label %bb10
bb9:
  br label %bb20
bb10:
  store i64 0, ptr %l5, !tbaa !24
  %t37 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t37, ptr %l6, !tbaa !27
  store i64 0, ptr %l7, !tbaa !24
  %t39 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t41 = extractvalue { i64, ptr } %t39, 0
  store i64 %t41, ptr %l8, !tbaa !24
  br label %bb11
bb11:
  %t43 = load i64, ptr %l7, !tbaa !24
  %t44 = load i64, ptr %l8, !tbaa !24
  %t47 = icmp slt i64 %t43, %t44
  %t49 = xor i1 %t47, true
  br i1 %t49, label %bb12, label %bb13
bb12:
  br label %bb17
bb13:
  br label %bb14
bb14:
  %t51 = load { i64, ptr }, ptr %l6, !tbaa !27
  store { i64, ptr } %t51, ptr %l32, !tbaa !27
  %t52 = load i64, ptr %l7, !tbaa !24
  %t54 = getelementptr { i64, ptr }, ptr %l32, i32 0, i32 1
  %t55 = load ptr, ptr %t54, !tbaa !27
  %t56 = getelementptr ptr, ptr %t55, i64 %t52
  %t57 = load ptr, ptr %t56, !tbaa !39
  %t59 = load i64, ptr %l5, !tbaa !24
  store i64 %t59, ptr %l35, !tbaa !24
  %t60 = load ptr, ptr %l0, !tbaa !29
  %t65 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3agenRoots_2eroot(ptr %v0, ptr %v1, ptr %t60, ptr %t57)
  store i64 %t65, ptr %l39
  br label %bb15
bb15:
  %t66 = load i64, ptr %l35, !tbaa !24
  %t67 = load i64, ptr %l39, !tbaa !24
  %t68 = or i64 %t66, %t67
  store i64 %t68, ptr %l5, !tbaa !24
  br label %bb16
bb16:
  %t70 = load i64, ptr %l7, !tbaa !24
  %t72 = add i64 %t70, 1
  store i64 %t72, ptr %l7, !tbaa !24
  br label %bb11
bb17:
  %t74 = load ptr, ptr %l0, !tbaa !29
  store ptr %t74, ptr %l43, !tbaa !29
  %t75 = load ptr, ptr %l4, !tbaa !29
  %t77 = call i32 @compiler_2fgeneric_2ebaseName(ptr %v1, ptr %t75)
  store i32 %t77, ptr %l45
  br label %bb18
bb18:
  %t78 = load i64, ptr %l5, !tbaa !24
  %t79 = load ptr, ptr %l43, !tbaa !29
  %t80 = load i32, ptr %l45, !tbaa !23
  call void @compiler_2fgeneric_2ecompiler_2fgeneric_3agenRoots_2egrow(ptr %v0, ptr %t79, i32 %t80, i64 %t78)
  br label %bb19
bb19:
  br label %bb25
bb20:
  br i1 true, label %bb21, label %bb22
bb21:
  br label %bb23
bb22:
  br label %bb24
bb23:
  br label %bb25
bb24:
  call void @__olang_check_failed(ptr @olang_loc_9c4890b7bb1b8338_bc401ee50d7cf5ac)
  unreachable
bb25:
  br label %bb38
bb26:
  %t82 = load ptr, ptr %l1, !tbaa !29
  store ptr %t82, ptr %l47, !tbaa !29
  store i1 false, ptr %l48, !tbaa !21
  %t83 = load ptr, ptr %l47, !tbaa !29
  %t84 = icmp ne ptr %t83, null
  br i1 %t84, label %bb27, label %bb28
bb27:
  %t86 = load ptr, ptr %l47, !tbaa !29
  %t87 = load i64, ptr %t86, !range !{i64 0, i64 28}
  %t89 = icmp eq i64 %t87, 19
  store i1 %t89, ptr %l48, !tbaa !21
  br label %bb28
bb28:
  %t90 = load i1, ptr %l48, !tbaa !21
  br i1 %t90, label %bb29, label %bb30
bb29:
  %t91 = load ptr, ptr %l1, !tbaa !29
  %t93 = getelementptr { i64, [4 x i64] }, ptr %t91, i32 0, i32 1
  %t94 = getelementptr { %"compiler/source:Span", ptr, { i64, ptr } }, ptr %t93, i32 0, i32 1
  %t95 = load ptr, ptr %t94
  store ptr %t95, ptr %l10, !tbaa !29
  br label %bb31
bb30:
  br label %bb33
bb31:
  %t97 = load ptr, ptr %l0, !tbaa !29
  %t98 = load ptr, ptr %l10, !tbaa !29
  call void @compiler_2fgeneric_2ecompiler_2fgeneric_3agenRoots_2estored(ptr %v0, ptr %v1, ptr %t97, ptr %t98)
  br label %bb32
bb32:
  br label %bb38
bb33:
  br i1 true, label %bb34, label %bb35
bb34:
  br label %bb36
bb35:
  br label %bb37
bb36:
  br label %bb38
bb37:
  call void @__olang_check_failed(ptr @olang_loc_a1cd62d4a2c4a909_c9084e1cb558785d)
  unreachable
bb38:
  br label %ret
ret:
  ret void
}

define dso_local { i64, ptr } @compiler_2fgeneric_2edescName(ptr %v0, i64 %a0) #0 {
entry:
  %l0 = alloca i64
  %l1 = alloca { i64, ptr }
  %l4 = alloca { i64, ptr }
  %l8 = alloca { i64, ptr }
  %l12 = alloca { i64, ptr }
  %l16 = alloca { i64, ptr }
  %l20 = alloca { i64, ptr }
  %l22 = alloca { i64, ptr }
  %l24 = alloca i64
  %l25 = alloca { i64, ptr }
  %rv = alloca { i64, ptr }
  store i64 %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load i64, ptr %l0, !tbaa !24
  %t3 = icmp eq i64 %t1, 1
  br i1 %t3, label %bb1, label %bb2
bb1:
  br label %bb3
bb2:
  br label %bb4
bb3:
  store { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d29, i32 0, i32 1) }, ptr %l4, !tbaa !27
  %t5 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t5, ptr %l1, !tbaa !27
  br label %bb25
bb4:
  %t7 = load i64, ptr %l0, !tbaa !24
  %t9 = icmp eq i64 %t7, 2
  br i1 %t9, label %bb5, label %bb6
bb5:
  br label %bb7
bb6:
  br label %bb8
bb7:
  store { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d30, i32 0, i32 1) }, ptr %l8, !tbaa !27
  %t11 = load { i64, ptr }, ptr %l8, !tbaa !27
  store { i64, ptr } %t11, ptr %l1, !tbaa !27
  br label %bb25
bb8:
  %t13 = load i64, ptr %l0, !tbaa !24
  %t15 = icmp eq i64 %t13, 3
  br i1 %t15, label %bb9, label %bb10
bb9:
  br label %bb11
bb10:
  br label %bb12
bb11:
  store { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d31, i32 0, i32 1) }, ptr %l12, !tbaa !27
  %t17 = load { i64, ptr }, ptr %l12, !tbaa !27
  store { i64, ptr } %t17, ptr %l1, !tbaa !27
  br label %bb25
bb12:
  %t19 = load i64, ptr %l0, !tbaa !24
  %t21 = icmp eq i64 %t19, 4
  br i1 %t21, label %bb13, label %bb14
bb13:
  br label %bb15
bb14:
  br label %bb16
bb15:
  store { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d32, i32 0, i32 1) }, ptr %l16, !tbaa !27
  %t23 = load { i64, ptr }, ptr %l16, !tbaa !27
  store { i64, ptr } %t23, ptr %l1, !tbaa !27
  br label %bb25
bb16:
  %t25 = load i64, ptr %l0, !tbaa !24
  %t27 = icmp eq i64 %t25, 5
  br i1 %t27, label %bb17, label %bb18
bb17:
  br label %bb19
bb18:
  br label %bb20
bb19:
  store { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d33, i32 0, i32 1) }, ptr %l20, !tbaa !27
  %t29 = load { i64, ptr }, ptr %l20, !tbaa !27
  store { i64, ptr } %t29, ptr %l1, !tbaa !27
  br label %bb25
bb20:
  br i1 true, label %bb21, label %bb22
bb21:
  br label %bb23
bb22:
  br label %bb24
bb23:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d34, i32 0, i32 1) }, ptr %l22, !tbaa !27
  %t31 = load { i64, ptr }, ptr %l22, !tbaa !27
  store { i64, ptr } %t31, ptr %l1, !tbaa !27
  br label %bb25
bb24:
  call void @__olang_check_failed(ptr @olang_loc_3ddf6b030a58b0c8_e2856651acfeaffc)
  unreachable
bb25:
  %t33 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t34 = extractvalue { i64, ptr } %t33, 0
  store i64 %t34, ptr %l24, !tbaa !24
  %t35 = load i64, ptr %l24, !tbaa !24
  %t36 = mul i64 %t35, 1
  %t37 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t36)
  %t38 = insertvalue { i64, ptr } undef, i64 %t35, 0
  %t39 = insertvalue { i64, ptr } %t38, ptr %t37, 1
  store { i64, ptr } %t39, ptr %l25, !tbaa !27
  %t40 = getelementptr { i64, ptr }, ptr %l25, i32 0, i32 1
  %t41 = load ptr, ptr %t40, !tbaa !27
  %t42 = getelementptr { i64, ptr }, ptr %l1, i32 0, i32 1
  %t43 = load ptr, ptr %t42, !tbaa !27
  %t44 = load i64, ptr %l24, !tbaa !24
  %t45 = mul i64 %t44, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t41, ptr %t43, i64 %t45, i1 false)
  %t46 = load { i64, ptr }, ptr %l25, !tbaa !27
  store { i64, ptr } %t46, ptr %l1, !tbaa !27
  %t47 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t47, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local ptr @compiler_2fgeneric_2eerrorDeclInIf(ptr %v0, ptr %v1, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca ptr
  %l3 = alloca ptr
  %l16 = alloca ptr
  %l32 = alloca ptr
  %l50 = alloca ptr
  %rv = alloca ptr
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
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
  br label %bb10
bb3:
  call void @__olang_check_failed(ptr @olang_loc_fe684dd4125d4b4d_99bf6f4db7396e79)
  unreachable
bb4:
  br label %bb5
bb5:
  %t17 = load ptr, ptr %l0, !tbaa !29
  %t19 = getelementptr %"compiler/ast:TopIf", ptr %t17, i32 0, i32 1
  %t20 = load ptr, ptr %t19, !tbaa !29
  %t23 = getelementptr %"compiler/ast:TopBranch", ptr %t20, i32 0, i32 1
  %t24 = load { i64, ptr }, ptr %t23, !tbaa !27
  %t25 = load i32, ptr %l1, !tbaa !23
  %t28 = call ptr @compiler_2fgeneric_2eerrorDeclIn(ptr %v0, ptr %v1, { i64, ptr } %t24, i32 %t25)
  store ptr %t28, ptr %l16
  br label %bb6
bb6:
  %t29 = load ptr, ptr %l16, !tbaa !29
  store ptr %t29, ptr %l2, !tbaa !29
  %t30 = load ptr, ptr %l2, !tbaa !29
  %t32 = icmp eq ptr %t30, null
  %t34 = xor i1 %t32, true
  br i1 %t34, label %bb7, label %bb8
bb7:
  %t36 = load ptr, ptr %l2, !tbaa !29
  store ptr %t36, ptr %rv
  br label %ret
bb8:
  br label %bb9
bb9:
  br label %bb10
bb10:
  %t39 = load ptr, ptr %l0, !tbaa !29
  %t41 = getelementptr %"compiler/ast:TopIf", ptr %t39, i32 0, i32 2
  %t42 = load ptr, ptr %t41, !tbaa !29
  %t44 = icmp eq ptr %t42, null
  %t46 = xor i1 %t44, true
  br i1 %t46, label %bb11, label %bb12
bb11:
  %t48 = load ptr, ptr %l0, !tbaa !29
  %t50 = getelementptr %"compiler/ast:TopIf", ptr %t48, i32 0, i32 2
  %t51 = load ptr, ptr %t50, !tbaa !29
  %t53 = icmp eq ptr %t51, null
  br i1 %t53, label %bb13, label %bb14
bb12:
  br label %bb20
bb13:
  call void @__olang_check_failed(ptr @olang_loc_42759df622c97166_e1be9b347935e452)
  unreachable
bb14:
  br label %bb15
bb15:
  %t55 = load ptr, ptr %l0, !tbaa !29
  %t57 = getelementptr %"compiler/ast:TopIf", ptr %t55, i32 0, i32 2
  %t58 = load ptr, ptr %t57, !tbaa !29
  %t59 = load i32, ptr %l1, !tbaa !23
  %t62 = call ptr @compiler_2fgeneric_2eerrorDeclInIf(ptr %v0, ptr %v1, ptr %t58, i32 %t59)
  store ptr %t62, ptr %l32
  br label %bb16
bb16:
  %t63 = load ptr, ptr %l32, !tbaa !29
  store ptr %t63, ptr %l3, !tbaa !29
  %t64 = load ptr, ptr %l3, !tbaa !29
  %t66 = icmp eq ptr %t64, null
  %t68 = xor i1 %t66, true
  br i1 %t68, label %bb17, label %bb18
bb17:
  %t70 = load ptr, ptr %l3, !tbaa !29
  store ptr %t70, ptr %rv
  br label %ret
bb18:
  br label %bb19
bb19:
  br label %bb20
bb20:
  %t73 = load ptr, ptr %l0, !tbaa !29
  %t75 = getelementptr %"compiler/ast:TopIf", ptr %t73, i32 0, i32 3
  %t76 = load ptr, ptr %t75, !tbaa !29
  %t78 = icmp eq ptr %t76, null
  %t80 = xor i1 %t78, true
  br i1 %t80, label %bb21, label %bb22
bb21:
  %t82 = load ptr, ptr %l0, !tbaa !29
  %t84 = getelementptr %"compiler/ast:TopIf", ptr %t82, i32 0, i32 3
  %t85 = load ptr, ptr %t84, !tbaa !29
  %t87 = icmp eq ptr %t85, null
  br i1 %t87, label %bb23, label %bb24
bb22:
  br label %bb27
bb23:
  call void @__olang_check_failed(ptr @olang_loc_cc60064df4ba0b57_d35c100e8c6c7d93)
  unreachable
bb24:
  br label %bb25
bb25:
  %t89 = load ptr, ptr %l0, !tbaa !29
  %t91 = getelementptr %"compiler/ast:TopIf", ptr %t89, i32 0, i32 3
  %t92 = load ptr, ptr %t91, !tbaa !29
  %t95 = getelementptr %"compiler/ast:TopBranch", ptr %t92, i32 0, i32 1
  %t96 = load { i64, ptr }, ptr %t95, !tbaa !27
  %t97 = load i32, ptr %l1, !tbaa !23
  %t100 = call ptr @compiler_2fgeneric_2eerrorDeclIn(ptr %v0, ptr %v1, { i64, ptr } %t96, i32 %t97)
  store ptr %t100, ptr %l50
  br label %bb26
bb26:
  %t101 = load ptr, ptr %l50, !tbaa !29
  store ptr %t101, ptr %rv
  br label %ret
bb27:
  store ptr null, ptr %rv
  br label %ret
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

define dso_local i1 @compiler_2fgeneric_2erefElem(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i1
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
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 8}
  %t8 = icmp eq i64 %t6, 3
  store i1 %t8, ptr %l4, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l4, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  %t10 = load ptr, ptr %l0, !tbaa !29
  %t12 = getelementptr { i64, [5 x i64] }, ptr %t10, i32 0, i32 1
  %t13 = getelementptr { %"compiler/source:Span", ptr, i1, i1 }, ptr %t12, i32 0, i32 2
  %t14 = load i1, ptr %t13
  store i1 %t14, ptr %l1, !tbaa !21
  br label %bb5
bb4:
  br label %bb6
bb5:
  %t16 = load i1, ptr %l1, !tbaa !21
  %t18 = xor i1 %t16, true
  store i1 %t18, ptr %l2, !tbaa !21
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
  call void @__olang_check_failed(ptr @olang_loc_d7d90d95615537d8_d1765b1244f9b03c)
  unreachable
bb11:
  %t20 = load i1, ptr %l2, !tbaa !21
  store i1 %t20, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i1 @compiler_2fgeneric_2eviewGenTy(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca { i64, ptr }
  %l4 = alloca i1
  %l5 = alloca ptr
  %l6 = alloca i1
  %l13 = alloca i1
  %l14 = alloca ptr
  %l15 = alloca i1
  %l23 = alloca i1
  %l27 = alloca { i64, ptr }
  %l29 = alloca { i64, ptr }
  %l30 = alloca i1
  %l31 = alloca i1
  %l35 = alloca { i64, ptr }
  %l37 = alloca { i64, ptr }
  %l38 = alloca i1
  %s2 = alloca %olang.scope
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l1, !tbaa !29
  store ptr %t1, ptr %l5, !tbaa !29
  store i1 false, ptr %l6, !tbaa !21
  %t2 = load ptr, ptr %l5, !tbaa !29
  %t3 = icmp ne ptr %t2, null
  br i1 %t3, label %bb1, label %bb2
bb1:
  %t5 = load ptr, ptr %l5, !tbaa !29
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 8}
  %t8 = icmp eq i64 %t6, 3
  store i1 %t8, ptr %l6, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l6, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  %t10 = load ptr, ptr %l1, !tbaa !29
  %t12 = getelementptr { i64, [5 x i64] }, ptr %t10, i32 0, i32 1
  %t13 = getelementptr { %"compiler/source:Span", ptr, i1, i1 }, ptr %t12, i32 0, i32 1
  %t14 = load ptr, ptr %t13
  store ptr %t14, ptr %l2, !tbaa !29
  br label %bb5
bb4:
  br label %bb7
bb5:
  %t16 = load ptr, ptr %l0, !tbaa !29
  %t17 = load ptr, ptr %l2, !tbaa !29
  %t20 = call i1 @compiler_2fgeneric_2eviewGenTy(ptr %v0, ptr %v1, ptr %t16, ptr %t17)
  store i1 %t20, ptr %l13
  br label %bb6
bb6:
  %t21 = load i1, ptr %l13, !tbaa !21
  store i1 %t21, ptr %l4, !tbaa !21
  br label %bb28
bb7:
  %t22 = load ptr, ptr %l1, !tbaa !29
  store ptr %t22, ptr %l14, !tbaa !29
  store i1 false, ptr %l15, !tbaa !21
  %t23 = load ptr, ptr %l14, !tbaa !29
  %t24 = icmp ne ptr %t23, null
  br i1 %t24, label %bb8, label %bb9
bb8:
  %t26 = load ptr, ptr %l14, !tbaa !29
  %t27 = load i64, ptr %t26, !range !{i64 0, i64 8}
  %t29 = icmp eq i64 %t27, 0
  store i1 %t29, ptr %l15, !tbaa !21
  br label %bb9
bb9:
  %t30 = load i1, ptr %l15, !tbaa !21
  br i1 %t30, label %bb10, label %bb11
bb10:
  %t31 = load ptr, ptr %l1, !tbaa !29
  %t33 = getelementptr { i64, [5 x i64] }, ptr %t31, i32 0, i32 1
  %t34 = getelementptr { %"compiler/source:Span", { i64, ptr }, { i64, ptr } }, ptr %t33, i32 0, i32 1
  %t35 = load { i64, ptr }, ptr %t34
  store { i64, ptr } %t35, ptr %l3, !tbaa !27
  br label %bb12
bb11:
  br label %bb23
bb12:
  store %olang.scope zeroinitializer, ptr %s2
  %t37 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t39 = extractvalue { i64, ptr } %t37, 0
  %t41 = icmp eq i64 %t39, 1
  br i1 %t41, label %bb13, label %bb14
bb13:
  %t43 = load ptr, ptr %l0, !tbaa !29
  %t45 = getelementptr %"compiler/generic:Program", ptr %t43, i32 0, i32 0
  %t46 = load ptr, ptr %t45, !tbaa !29
  %t48 = getelementptr %"compiler/load:Loader", ptr %t46, i32 0, i32 3
  %t49 = load ptr, ptr %t48, !tbaa !29
  %t50 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t50, ptr %l27, !tbaa !27
  %t51 = getelementptr { i64, ptr }, ptr %l27, i32 0, i32 1
  %t52 = load ptr, ptr %t51, !tbaa !27
  %t53 = getelementptr i32, ptr %t52, i64 0
  %t54 = load i32, ptr %t53, !tbaa !33
  %t57 = call { i64, ptr } @compiler_2fsource_2ecompiler_2fsource_3aNames_2eText(ptr %v0, ptr %v0, ptr %t49, i32 %t54)
  store { i64, ptr } %t57, ptr %l29
  br label %bb15
bb14:
  store i1 false, ptr %l23, !tbaa !21
  br label %bb22
bb15:
  %t58 = load { i64, ptr }, ptr %l29, !tbaa !27
  %t59 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s2, { i64, ptr } %t58, { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d35, i32 0, i32 1) })
  store i1 %t59, ptr %l30
  br label %bb16
bb16:
  %t60 = load i1, ptr %l30, !tbaa !21
  br i1 %t60, label %bb17, label %bb18
bb17:
  store i1 true, ptr %l31, !tbaa !21
  br label %bb21
bb18:
  %t61 = load ptr, ptr %l0, !tbaa !29
  %t63 = getelementptr %"compiler/generic:Program", ptr %t61, i32 0, i32 0
  %t64 = load ptr, ptr %t63, !tbaa !29
  %t66 = getelementptr %"compiler/load:Loader", ptr %t64, i32 0, i32 3
  %t67 = load ptr, ptr %t66, !tbaa !29
  %t68 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t68, ptr %l35, !tbaa !27
  %t69 = getelementptr { i64, ptr }, ptr %l35, i32 0, i32 1
  %t70 = load ptr, ptr %t69, !tbaa !27
  %t71 = getelementptr i32, ptr %t70, i64 0
  %t72 = load i32, ptr %t71, !tbaa !33
  %t75 = call { i64, ptr } @compiler_2fsource_2ecompiler_2fsource_3aNames_2eText(ptr %v0, ptr %v0, ptr %t67, i32 %t72)
  store { i64, ptr } %t75, ptr %l37
  br label %bb19
bb19:
  %t76 = load { i64, ptr }, ptr %l37, !tbaa !27
  %t77 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s2, { i64, ptr } %t76, { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d36, i32 0, i32 1) })
  store i1 %t77, ptr %l38
  br label %bb20
bb20:
  %t78 = load i1, ptr %l38, !tbaa !21
  store i1 %t78, ptr %l31, !tbaa !21
  br label %bb21
bb21:
  %t79 = load i1, ptr %l31, !tbaa !21
  store i1 %t79, ptr %l23, !tbaa !21
  br label %bb22
bb22:
  %t80 = load i1, ptr %l23, !tbaa !21
  store i1 %t80, ptr %l4, !tbaa !21
  call void @__olang_scope_close(ptr %s2)
  br label %bb28
bb23:
  br i1 true, label %bb24, label %bb25
bb24:
  br label %bb26
bb25:
  br label %bb27
bb26:
  store i1 false, ptr %l4, !tbaa !21
  br label %bb28
bb27:
  call void @__olang_check_failed(ptr @olang_loc_9e21964695e7b518_e551ec91ddd7cf74)
  unreachable
bb28:
  %t81 = load i1, ptr %l4, !tbaa !21
  store i1 %t81, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local void @compiler_2fgeneric_3aContext_2ector(ptr %out, ptr %v0, i64 %a0, i64 %a1) #0 {
entry:
  %l2 = alloca i64
  %l3 = alloca i64
  %l4 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l8 = alloca i64
  %l10 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l12 = alloca i64
  %l14 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l16 = alloca %"compiler/generic:Context"
  br label %start
start:
  br label %bb0
bb0:
  store i64 %a0, ptr %l2, !tbaa !24
  store i64 %a1, ptr %l3, !tbaa !24
  %t5 = ptrtoint ptr %v0 to i64
  store i64 %t5, ptr %l8, !tbaa !24
  %t6 = load i1, ptr @olang_2esole_2ecompiler_2fgeneric_3aContext_2e2
  br i1 %t6, label %bb1, label %bb2
bb1:
  %t8 = call ptr @__olang_region_make(ptr %v0)
  %t9 = ptrtoint ptr %t8 to i64
  store i64 %t9, ptr %l8, !tbaa !24
  br label %bb2
bb2:
  %t10 = load i64, ptr %l8
  %t11 = inttoptr i64 %t10 to ptr
  %t12 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fsource_3aNameId_Hcd3bbe8e64537e19c3182f51d0fe16c9(ptr %t11)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t12, ptr %l10
  br label %bb3
bb3:
  %t13 = load i1, ptr @olang_2esole_2ecompiler_2fgeneric_3aContext_2e2
  br i1 %t13, label %bb4, label %bb5
bb4:
  %t15 = load i64, ptr %l8
  %t16 = inttoptr i64 %t15 to ptr
  %t17 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l10, i32 0, i32 2
  %t18 = load { i64, ptr }, ptr %t17
  %t19 = extractvalue { i64, ptr } %t18, 1
  %t20 = call ptr @__olang_region_or(ptr %t19, ptr null)
  %t21 = call ptr @__olang_region_home(ptr %t20)
  %t22 = icmp ne ptr %t21, null
  %t23 = select i1 %t22, ptr %t21, ptr null
  %t24 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l10, i32 0, i32 1
  %t25 = load { i64, ptr }, ptr %t24
  %t26 = extractvalue { i64, ptr } %t25, 1
  %t27 = call ptr @__olang_region_or(ptr %t26, ptr null)
  %t28 = call ptr @__olang_region_home(ptr %t27)
  %t29 = icmp ne ptr %t28, null
  %t30 = select i1 %t29, ptr %t28, ptr %t23
  %t31 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l10, i32 0, i32 0
  %t32 = load { i64, ptr }, ptr %t31
  %t33 = extractvalue { i64, ptr } %t32, 1
  %t34 = call ptr @__olang_region_or(ptr %t33, ptr null)
  %t35 = call ptr @__olang_region_home(ptr %t34)
  %t36 = icmp ne ptr %t35, null
  %t37 = select i1 %t36, ptr %t35, ptr %t30
  %t38 = icmp eq ptr %t37, %t16
  call void @__olang_region_settle(ptr %t16, i1 %t38)
  br label %bb5
bb5:
  %t39 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l10
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t39, ptr %l4
  %t40 = ptrtoint ptr %v0 to i64
  store i64 %t40, ptr %l12, !tbaa !24
  %t41 = load i1, ptr @olang_2esole_2ecompiler_2fgeneric_3aContext_2e3
  br i1 %t41, label %bb6, label %bb7
bb6:
  %t43 = call ptr @__olang_region_make(ptr %v0)
  %t44 = ptrtoint ptr %t43 to i64
  store i64 %t44, ptr %l12, !tbaa !24
  br label %bb7
bb7:
  %t45 = load i64, ptr %l12
  %t46 = inttoptr i64 %t45 to ptr
  %t47 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fsource_3aNameId_Hcd3bbe8e64537e19c3182f51d0fe16c9(ptr %t46)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t47, ptr %l14
  br label %bb8
bb8:
  %t48 = load i1, ptr @olang_2esole_2ecompiler_2fgeneric_3aContext_2e3
  br i1 %t48, label %bb9, label %bb10
bb9:
  %t50 = load i64, ptr %l12
  %t51 = inttoptr i64 %t50 to ptr
  %t52 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l14, i32 0, i32 2
  %t53 = load { i64, ptr }, ptr %t52
  %t54 = extractvalue { i64, ptr } %t53, 1
  %t55 = call ptr @__olang_region_or(ptr %t54, ptr null)
  %t56 = call ptr @__olang_region_home(ptr %t55)
  %t57 = icmp ne ptr %t56, null
  %t58 = select i1 %t57, ptr %t56, ptr null
  %t59 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l14, i32 0, i32 1
  %t60 = load { i64, ptr }, ptr %t59
  %t61 = extractvalue { i64, ptr } %t60, 1
  %t62 = call ptr @__olang_region_or(ptr %t61, ptr null)
  %t63 = call ptr @__olang_region_home(ptr %t62)
  %t64 = icmp ne ptr %t63, null
  %t65 = select i1 %t64, ptr %t63, ptr %t58
  %t66 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l14, i32 0, i32 0
  %t67 = load { i64, ptr }, ptr %t66
  %t68 = extractvalue { i64, ptr } %t67, 1
  %t69 = call ptr @__olang_region_or(ptr %t68, ptr null)
  %t70 = call ptr @__olang_region_home(ptr %t69)
  %t71 = icmp ne ptr %t70, null
  %t72 = select i1 %t71, ptr %t70, ptr %t65
  %t73 = icmp eq ptr %t72, %t51
  call void @__olang_region_settle(ptr %t51, i1 %t73)
  br label %bb10
bb10:
  %t74 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l14
  %t75 = getelementptr %"compiler/generic:Context", ptr %l16, i32 0, i32 0
  %t76 = load i64, ptr %l2, !tbaa !24
  store i64 %t76, ptr %t75, !tbaa !24
  %t77 = getelementptr %"compiler/generic:Context", ptr %l16, i32 0, i32 1
  %t78 = load i64, ptr %l3, !tbaa !24
  store i64 %t78, ptr %t77, !tbaa !24
  %t79 = getelementptr %"compiler/generic:Context", ptr %l16, i32 0, i32 2
  %t80 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l4
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t80, ptr %t79
  %t81 = getelementptr %"compiler/generic:Context", ptr %l16, i32 0, i32 3
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t74, ptr %t81
  call void @llvm.memmove.p0.p0.i64(ptr %out, ptr %l16, i64 160, i1 false)
  br label %ret
ret:
  ret void
}

define dso_local %"compiler/generic:Desc" @compiler_2fgeneric_3aDesc_2ector(ptr %v0, i64 %a0, i32 %a1, i64 %a2, i64 %a3) #0 {
entry:
  %rv = alloca %"compiler/generic:Desc"
  br label %start
start:
  br label %bb0
bb0:
  %t10 = insertvalue %"compiler/generic:Desc" undef, i64 %a0, 0
  %t12 = insertvalue %"compiler/generic:Desc" %t10, i32 %a1, 1
  %t14 = insertvalue %"compiler/generic:Desc" %t12, i64 %a2, 2
  %t16 = insertvalue %"compiler/generic:Desc" %t14, i64 %a3, 3
  store %"compiler/generic:Desc" %t16, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/generic:Desc", ptr %rv
  ret %"compiler/generic:Desc" %rr
}

define dso_local %"compiler/generic:Unmet" @compiler_2fgeneric_3aUnmet_2ector(ptr %v0, i64 %a0, i32 %a1, i32 %a2, i1 %a3, i1 %a4, i1 %a5) #0 {
entry:
  %rv = alloca %"compiler/generic:Unmet"
  br label %start
start:
  br label %bb0
bb0:
  %t14 = insertvalue %"compiler/generic:Unmet" undef, i64 %a0, 0
  %t16 = insertvalue %"compiler/generic:Unmet" %t14, i32 %a1, 1
  %t18 = insertvalue %"compiler/generic:Unmet" %t16, i32 %a2, 2
  %t20 = insertvalue %"compiler/generic:Unmet" %t18, i1 %a3, 3
  %t22 = insertvalue %"compiler/generic:Unmet" %t20, i1 %a4, 4
  %t24 = insertvalue %"compiler/generic:Unmet" %t22, i1 %a5, 5
  store %"compiler/generic:Unmet" %t24, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/generic:Unmet", ptr %rv
  ret %"compiler/generic:Unmet" %rr
}

@.d0 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"Type" }>, align 8
@.d1 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"Base" }>, align 8
@.d2 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c"Element" }>, align 8
@.d3 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"Target" }>, align 8
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
declare void @llvm.memmove.p0.p0.i64(ptr, ptr, i64, i1)
declare ptr @__olang_scope_of(ptr, ptr) noinline
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
declare void @llvm.memcpy.p0.p0.i64(ptr, ptr, i64, i1)
@.d4 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d5 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"Len" }>, align 8
@.d6 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d7 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d8 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d9 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c".Len()" }>, align 8
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
@.d10 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d11 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"}" }>, align 8
@.d12 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d13 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"(" }>, align 8
@.d14 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c")" }>, align 8
@__olang_empty_array = external constant [16 x i64]
@olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1 = weak hidden constant i1 false
declare ptr @__olang_region_make(ptr) noinline
declare i64 @__olang_fmt_i64(ptr, i64)
@.d15 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c":" }>, align 8
declare noalias ptr @__olang_scope_alloc_zeroed(ptr, i64)
@olang_2esole_2eArray_3ccompiler_2fast_3aPath_26_3e_2e_2d1 = weak hidden constant i1 false
declare ptr @__olang_region_or(ptr, ptr)
@.d16 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d17 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d18 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"I64" }>, align 8
@.d19 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"refl:" }>, align 8
@.d20 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c":" }>, align 8
@.d21 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d22 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"I64" }>, align 8
@.d23 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"Bits" }>, align 8
@.d24 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"U64" }>, align 8
@.d25 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"U32" }>, align 8
@.d26 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"U16" }>, align 8
@.d27 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"Hash" }>, align 8
@.d28 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"Len" }>, align 8
@.d29 = private constant <{ i64, [9 x i8] }> <{ i64 0, [9 x i8] c"FieldInfo" }>, align 8
@.d30 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c"CaseInfo" }>, align 8
@.d31 = private constant <{ i64, [9 x i8] }> <{ i64 0, [9 x i8] c"ParamInfo" }>, align 8
@.d32 = private constant <{ i64, [10 x i8] }> <{ i64 0, [10 x i8] c"ResultInfo" }>, align 8
@.d33 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c"FuncInfo" }>, align 8
@.d34 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d35 = private constant <{ i64, [13 x i8] }> <{ i64 0, [13 x i8] c"ViewGenerator" }>, align 8
@.d36 = private constant <{ i64, [16 x i8] }> <{ i64 0, [16 x i8] c"HoldingGenerator" }>, align 8
@olang_2esole_2ecompiler_2fgeneric_3aContext_2e2 = weak hidden constant i1 false
define linkonce_odr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fsource_3aNameId_Hcd3bbe8e64537e19c3182f51d0fe16c9(ptr %v0) #0 {
entry:
  %l0 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %rv = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  br label %start
start:
  br label %bb0
bb0:
  %t1 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3ccompiler_2fsource_3aNameId_2c_20compiler_2ftypes_3aTypeId_3e_2ector(ptr %v0)
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
declare void @__olang_region_settle(ptr, i1)
@olang_2esole_2ecompiler_2fgeneric_3aContext_2e3 = weak hidden constant i1 false
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
@olang_loc_a84cb13cc99a358c_517fd3765f339d18 = external constant [0 x i8]
@olang_loc_b9fc8c34bb4a0c14_d84bd287e8577888 = external constant [0 x i8]
declare i8 @compiler_2fgeneric_2ecompiler_2fgeneric_3acursor_2epeek(ptr %v0, ptr %a0)
declare i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aChar_2eIsDigit(i8 %a0)
@olang_loc_92b6cfc99a3b7173_1ec9654ba3dea5bf = external constant [0 x i8]
declare { i32, i64 } @std_2fprelude_2ftext_3aRadix_2ector(ptr %v0, i64 %a0)
declare { i32, i64 } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eParseInt(ptr %v0, { i64, ptr } %a0, i64 %a1)
declare { i32, i64 } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eParseUint(ptr %v0, { i64, ptr } %a0, i64 %a1)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2ector(ptr %v0, i64 %a0)
declare { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2eToArray_3ccompiler_2ftypes_3aTypeId_3e(ptr %v0, ptr %v1, ptr %a0)
declare %"compiler/generic:Unmet" @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFirstUnmet(ptr %v0, ptr %a0, i64 %a1, i32 %a2)
declare %"compiler/generic:fnRow" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fgeneric_3afnRow_3e_2eAt_3ccompiler_2fgeneric_3afnRow_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i1 @compiler_2fast_2ecompiler_2fast_3aFunc_2eIsBuilder(ptr %v0, ptr %a0)
declare i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2erecvKey(ptr %v0, ptr %v1, ptr %v2, ptr %a0, i64 %a1, ptr %a2, { i64, ptr } %a3)
declare void @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eallFns(ptr %v0, ptr %a0)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eReferent(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePlain(ptr %v0, ptr %a0, i32 %a1)
declare i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2etypeKey(ptr %v0, ptr %a0, i32 %a1)
declare %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" @std_2fpair_3aPair_3cI64_2c_20I64_3e_2ector(ptr %v0, i64 %a0, i64 %a1)
declare { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H5696e1a008d256bf9453cde2b49c6c45(ptr %v0, ptr %a0, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %a1)
declare i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eownerApplies(ptr %v0, ptr %a0, i64 %a1, i32 %a2)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eClosed(ptr %v0, ptr %a0, i32 %a1)
declare { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2eGet_3cI64_2c_20I64_3e(ptr %v0, ptr %a0, i64 %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %a0)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %a0, i64 %a1)
declare i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eSatisfies(ptr %v0, ptr %a0, i32 %a1, i32 %a2)
declare i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2etypesOverlap(ptr %v0, ptr %a0, i32 %a1, i32 %a2, i64 %a3)
@G_2ecompiler_2ftypes_2eUnknownT = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\00\00\00\00" }>, align 8
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %a0, i32 %a1)
declare ptr @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2etypeDecl(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare void @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eCtorContext(ptr %out, ptr %v0, ptr %v1, ptr %a0, i32 %a1, i32 %a2)
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eparamsSig(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1, { i64, ptr } %a2, ptr %a3, i32 %a4)
@olang_loc_58d2bf46824473dc_520b730989ac43d8 = external constant [0 x i8]
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsErrVal(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrValName(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrValItems(ptr %v0, ptr %a0, i32 %a1)
declare { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrOf(ptr %v0, ptr %a0, i32 %a1)
declare { i64, ptr } @compiler_2fsource_2ecompiler_2fsource_3aNames_2eText(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare { i64, ptr } @compiler_2fload_2ecompiler_2fload_3aLoader_2eCSymbol(ptr %v0, ptr %v1, ptr %v2, ptr %a0, i64 %a1, { i64, ptr } %a2)
declare i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2ewrap(ptr %v0, ptr %a0, i64 %a1, i32 %a2)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eConst(ptr %v0, ptr %a0, i32 %a1, i64 %a2)
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eUnknownConst(ptr %v0, ptr %a0)
declare %"compiler/generic:instance" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fgeneric_3ainstance_3e_2eAt__Hf3965267bb92d0ee7aeaa2339e2e46fa(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare void @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2edeclContext(ptr %out, ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eArgs(ptr %v0, ptr %a0, i32 %a1)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fsource_3aNameId_2c_20compil_H943a9bb03970f71acf57214091669a7d(ptr %v0, ptr %a0, i32 %a1, i32 %a2)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fgeneric_3ainstance_3e_2eLen_Hf1590ba3dea8cd8a914b2a9f5344a2c6(ptr %v0, ptr %a0)
declare { i64, ptr } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eErrorMembers(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare { i64, ptr } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eErrorWords(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclName(ptr %v0, ptr %a0, i32 %a1)
declare i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_Heee1b38d7befb547e74946db4c0c1912(ptr %v0, ptr %a0, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %a1)
declare i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eLayoutState(ptr %v0, ptr %a0, i32 %a1)
@G_2ecompiler_2ftypes_2eLaidOut = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\02\00\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2ftypes_2eNoLayout = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\03\00\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2ftypes_2eLayingOut = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\01\00\00\00\00\00\00\00" }>, align 8
declare void @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eholdsItself(ptr %v0, ptr %a0, i32 %a1)
declare void @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eunbounded(ptr %v0, ptr %a0, i32 %a1)
declare void @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eSetLayoutState(ptr %v0, ptr %a0, i32 %a1, i64 %a2)
declare i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eBody(ptr %v0, ptr %a0, i32 %a1)
declare { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eEmbedded(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePacked(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eFields(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eComputeLayout(ptr %v0, ptr %a0, i32 %a1)
declare { i64, ptr } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2etext(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare { i64, ptr } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2elenPath(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, i64 %a2)
@olang_loc_7f496bc4f965d188_939cdcc04f80a0bc = external constant [0 x i8]
declare { i64, ptr } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eMembers(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId_2c_20std_2fp_H78bce58497ad959bdf5762dbe74df8e1(ptr %v0, ptr %a0, i32 %a1)
declare { i32, ptr } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId_2c_20std_2fp_Hfa58d934e2b7178f7b33766972648144(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId_2c_20Bool_3e_2ector(ptr %v0)
declare i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId_2c_20Bool_3e_Hb3133f486435530b533aaf49461c92b5(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eSame(ptr %v0, ptr %a0, i32 %a1, i32 %a2)
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eSig(ptr %v0, ptr %a0, i64 %a1)
declare i64 @compiler_2fgeneric_2eFnOwner(i64 %a0)
declare i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eVarCount(ptr %v0, ptr %a0, i64 %a1)
declare %"compiler/generic:Binding" @compiler_2fgeneric_3aBinding_2ector(ptr %v0, i64 %a0, i64 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParams(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eUnifyArg(ptr %v0, ptr %v1, ptr %a0, i32 %a1, i32 %a2, ptr %a3, i1 %a4, i1 %a5)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eList(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eSubst(ptr %v0, ptr %a0, i32 %a1, i64 %a2, i32 %a3)
declare { i32, i32 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2ftypes_3aTypeId_3e__H9861f6f09602cf23d49075e82ac9429b(ptr %v0, ptr %a0, i64 %a1)
declare %"compiler/generic:cursor" @compiler_2fgeneric_3acursor_2ector(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare { i32, i32 } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2ecanonType(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrCarries(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2ePayloadOf(ptr %v0, ptr %a0, i32 %a1)
declare i64 @compiler_2fgeneric_2eDeclOwner(i32 %a0)
declare i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclParams(ptr %v0, ptr %a0, i32 %a1)
@olang_loc_8ed0ba4cde2484d3_77197335ab78eca7 = external constant [0 x i8]
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eVarArg(ptr %v0, ptr %a0, i64 %a1, i64 %a2)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eNamed(ptr %v0, ptr %a0, i32 %a1, i32 %a2)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %v0, i64 %a0)
declare { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eToArray_3cI64_3e(ptr %v0, ptr %v1, ptr %a0)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fgeneric_3afnRow_3e_2eLen_3ccompiler_2fgeneric_3afnRow_3e(ptr %v0, ptr %a0)
@olang_loc_8878e002d59779fd_75c347076df58361 = external constant [0 x i8]
declare i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2erecvApplies(ptr %v0, ptr %a0, i64 %a1, i32 %a2)
declare i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aChar_2eIsUpper(i8 %a0)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %a0, i64 %a1)
declare { i32, %"compiler/generic:Origin" } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId_2c_20compile_Hb8bca524fd2b8cbf323e30d364740da1(ptr %v0, ptr %a0, i32 %a1)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H31314c4e7281f5029d6d8eb3044cef10(ptr %v0, ptr %a0, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %a1, i64 %a2)
declare i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2eHas_3cI64_2c_20I64_3e(ptr %v0, ptr %a0, i64 %a1)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2ePut_3cI64_2c_20I64_3e(ptr %v0, ptr %a0, i64 %a1, i64 %a2)
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H7bcf2aeb09afa796f4333e6ec8c3f63f(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fload_3aImport_3e_2eLen_3ccompiler_2fload_3aImport_3e(ptr %v0, ptr %a0)
declare %"compiler/load:Import" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fload_3aImport_3e_2eAt_3ccompiler_2fload_3aImport_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i32 @compiler_2fsource_2ecompiler_2fsource_3aNames_2eIntern(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2eHas_3ccompiler_2ftypes_3aTypeId_3e(ptr %v0, ptr %a0, i32 %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2ePush_3ccompiler_2ftypes_3aTypeId_3e(ptr %v0, ptr %a0, i32 %a1)
declare { i64, ptr } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eExtended(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2ereadsLocal(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, ptr %a2)
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eDeclFor(ptr %v0, ptr %a0, i64 %a1, i64 %a2)
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eheld(ptr %v0, ptr %a0, i32 %a1)
declare i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnNamed(ptr %v0, ptr %a0, i64 %a1, i32 %a2)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eResult(ptr %v0, ptr %a0, i32 %a1)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aNameId_3e_2ector(ptr %v0, i64 %a0)
declare i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3acursor_2eeat(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aNameId_3e_2eLen_3ccompiler_2fsource_3aNameId_3e(ptr %v0, ptr %a0)
declare i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aChar_2eIsLetter(i8 %a0)
@olang_loc_510ce85b2a9a6c03_b867f874fd10b7a7 = external constant [0 x i8]
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aNameId_3e_2ePush_3ccompiler_2fsource_3aNameId_3e(ptr %v0, ptr %a0, i32 %a1)
declare { i32, i32 } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2ecanonList(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, { i64, ptr } %a2)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRecord(ptr %v0, ptr %a0, i32 %a1)
declare { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aNameId_3e_2eToArra_H4d02a0b2e27e8f31ffc99daa43750593(ptr %v0, ptr %v1, ptr %a0)
@olang_loc_3e2c33a947ef0926_eb9e7dc4e2170cd2 = external constant [0 x i8]
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eAnonEnum(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1, i32 %a2, { i64, ptr } %a3)
declare %"compiler/generic:folded" @compiler_2fgeneric_3afolded_2ector(ptr %v0, i64 %a0, i64 %a1, i32 %a2)
declare %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v0, ptr %a0)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eConstExpr(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eA(ptr %v0, ptr %a0, i32 %a1)
declare %"compiler/generic:pattern" @compiler_2fgeneric_3apattern_2ector(ptr %v0, ptr %v1, ptr %v2, ptr %a0, i64 %a1, i64 %a2, i32 %a3, ptr %a4)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2fgeneric_3apattern__Hf2f2cd44709958e8fc0de9f437e62e6b(ptr %v0, ptr %v1, ptr %a0, i64 %a1, %"compiler/generic:pattern" %a2)
declare { i64, ptr } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eLengthKey(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1, ptr %a2)
declare i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_H9b83f66eba65594537030636cb0b52b7(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_H9162e3b7f03fcbf954b681204d5f6cca(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fgeneric_3aConstAsk_3e_2eLen_H192b02349624a37821a23e7def80c714(ptr %v0, ptr %a0)
declare %"compiler/generic:ConstAsk" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fgeneric_3aConstAsk_3e_2eAt__H3f4459851a287fa27378a94ef8fff763(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i64 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fsource_3aNameId_2c_20compil_H0e73c22773457b60eb954c2c4a2643e9(ptr %v0, ptr %a0)
@olang_loc_846e8cf19a14b6db_3af1bf273e789227 = external constant [0 x i8]
@olang_loc_7486412f18d83346_49a9869342f97632 = external constant [0 x i8]
declare %"std/prelude/map:MapIter.bf5835bb10600fe6a7fc1da14a6360d9" @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fsource_3aNameId_2c_20compil_Ha72624ba64524ee3315305b5d1bfb369(ptr %v0, ptr %v1, ptr %a0)
declare { i32, %"std/prelude/map:MapEntry.91de8c8eb84d52d1e58996aec31d85aa" } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMapIter_3ccompiler_2fsource_3aNameId_2c_20co_H6cf169b12565f300e9fe11f1c8d55061(ptr %v0, ptr %a0)
declare %"compiler/generic:ConstAsk" @compiler_2fgeneric_3aConstAsk_2ector(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, i64 %a0, ptr %a1, i32 %a2, i64 %a3, { i64, ptr } %a4, { i64, ptr } %a5, { i64, ptr } %a6)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fgeneric_3aConstAsk_3e_2ePus_H9314813d35e39659e36ddfdc05758427(ptr %v0, ptr %v1, ptr %a0, %"compiler/generic:ConstAsk" %a1)
declare %"compiler/names:Ref" @compiler_2fnames_2ecompiler_2fnames_3aResolver_2eUse(ptr %v0, ptr %a0, i64 %a1, i32 %a2)
declare i64 @compiler_2fgeneric_2ekeyTrait(i32 %a0)
@olang_loc_6254d719be644cb8_ecba73ecf161ba54 = external constant [0 x i8]
declare void @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eaddVars(ptr %v0, ptr %v1, ptr %a0, i64 %a1, { i64, ptr } %a2)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H1308596c866d4be061d9da9113abde88(ptr %v0, ptr %a0, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %a1, i1 %a2)
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eBoundOf(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, ptr %a2)
declare %"compiler/generic:varRow" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fgeneric_3avarRow_3e_2eAt_3ccompiler_2fgeneric_3avarRow_3e(ptr %v0, ptr %a0, i64 %a1)
declare %"compiler/generic:varRow" @compiler_2fgeneric_3avarRow_2ector(ptr %v0, i64 %a0, i32 %a1, i32 %a2, i32 %a3)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fgeneric_3avarRow_3e_2eSetAt_H989a0ed1a318d7d0cbb6cc41385b33d2(ptr %v0, ptr %a0, i64 %a1, %"compiler/generic:varRow" %a2)
declare i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclModule(ptr %v0, ptr %a0, i32 %a1)
declare ptr @compiler_2fgeneric_2eerrorDeclIn(ptr %v0, ptr %v1, { i64, ptr } %a0, i32 %a1)
@G_2ecompiler_2ftypes_2eDefaultErrT = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\10\00\00\00" }>, align 8
declare i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eErrorItemKnown(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, ptr %a2)
declare void @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2emergeEntries(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, ptr %a2)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aDeclId_3e_2ector(ptr %v0, i64 %a0)
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eerrorSetItem(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, ptr %a2)
declare void @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eentriesOf(ptr %v0, ptr %v1, ptr %v2, ptr %a0, i32 %a1, ptr %a2, ptr %a3)
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2enamedType(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, ptr %a2)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclKindOf(ptr %v0, ptr %a0, i32 %a1)
declare %"compiler/generic:folded" @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eevalLit(ptr %v0, ptr %a0, i64 %a1, %"compiler/source:Span" %a2, i32 %a3)
@olang_loc_3e60b6dd6ea07633_1a37389903bcd17 = external constant [0 x i8]
declare %"compiler/generic:folded" @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2efoldPath(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, %"compiler/source:Span" %a2, { i64, ptr } %a3)
declare %"compiler/generic:folded" @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eevalUnary(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, i32 %a2, ptr %a3)
declare %"compiler/generic:folded" @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eevalBinary(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1, i32 %a2, ptr %a3, ptr %a4)
declare %"compiler/generic:folded" @compiler_2fgeneric_2efolded_2eunfolded()
@olang_loc_df0c974aeea04fc5_d4c449c0d39b6971 = external constant [0 x i8]
declare { i32, i32 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fsource_3aNameId_2c_20compil_Hfd0413fe7fd4e5914f6cad5b418b7a6d(ptr %v0, ptr %a0, i32 %a1)
declare i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eConstValue(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eConstType(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePrim(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsInt(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2ewide(ptr %v0, ptr %a0, i32 %a1)
@olang_loc_1222b844891ca59c_eae6e2f85df83468 = external constant [0 x i8]
declare { i32, i1 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2eGet_3cI64_2c_20Bool_3e(ptr %v0, ptr %a0, i64 %a1)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2ePut_3cI64_2c_20Bool_3e(ptr %v0, ptr %a0, i64 %a1, i1 %a2)
declare void @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eaddFns(ptr %v0, ptr %v1, ptr %a0, i64 %a1, { i64, ptr } %a2)
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2esigType(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, ptr %a2, i32 %a3, i32 %a4)
declare void @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eflagBans(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, ptr %a2, i32 %a3, i1 %a4)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrors(ptr %v0, ptr %a0, i32 %a1)
declare { i32, i1 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H190b78e3c1eec037529224679e114a85(ptr %v0, ptr %a0, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %a1)
declare %"compiler/source:Span" @compiler_2fsource_3aSpan_2ector(ptr %v0, i32 %a0, i32 %a1)
declare { i64, [3 x i64] } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eat(ptr %v0, ptr %a0, i64 %a1, %"compiler/source:Span" %a2)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eFuncTypeErrsUnwritten(ptr %v0)
declare i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eError(ptr %v0, ptr %v1, ptr %a0, { i64, [3 x i64] } %a1, %"compiler/diagmsg:Msg" %a2)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eScopesOf(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRefunc(ptr %v0, ptr %a0, i32 %a1, i32 %a2, i32 %a3, i32 %a4, i32 %a5, i64 %a6)
declare i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2epromisesOf(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, ptr %a2, i32 %a3)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eWithPromises(ptr %v0, ptr %a0, i32 %a1, i64 %a2)
declare i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eSigNames(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eWithNames(ptr %v0, ptr %a0, i32 %a1, i64 %a2)
@olang_loc_b8112a4d89490ffb_a06a8022a06c4bef = external constant [0 x i8]
@olang_loc_efebc3387e505f66_7fb3af75c23c7b1a = external constant [0 x i8]
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eUnnamed(ptr %v0, ptr %a0, i32 %a1)
declare { i32, i32 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aListId_2c_20compile_H6dc73389c50b0fe7ce755995350ae9cd(ptr %v0, ptr %a0, i32 %a1)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aListId_2c_20compile_Ha0a2a345eb8118fa74dc4419a52b5a9c(ptr %v0, ptr %a0, i32 %a1, i32 %a2)
declare i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fsource_3aNameId_2c_20compil_He6be2b0836caba7ddc59483ff74db438(ptr %v0, ptr %a0, i32 %a1)
declare i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Array_3cBool_3e_3e_2eHas_3cI64_2c_20Array_3cBool_3e_3e(ptr %v0, ptr %a0, i64 %a1)
declare { i32, { i64, ptr } } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Array_3cBool_3e_3e_2eGet_3cI64_2c_20Array_3cBool_3e_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
@olang_loc_9b38dcb85fe2b78c_3b1a6cace8e1aa00 = external constant [0 x i8]
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Array_3cBool_3e_3e_2ePut_3cI64_2c_20Array_3cBool_3e_3e(ptr %v0, ptr %a0, i64 %a1, { i64, ptr } %a2)
@olang_loc_b6a09900eca87506_fcd5eabfc1944c82 = external constant [0 x i8]
declare { i64, ptr } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2elengthsDecided(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, i64 %a2)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eElem(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eitemsElem(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1, ptr %a2, i32 %a3, { i64, ptr } %a4)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eArray(ptr %v0, ptr %a0, i32 %a1, i32 %a2)
@olang_loc_2edbc1bd270558db_85d99d8e9bee4edf = external constant [0 x i8]
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eResolve(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, ptr %a2)
@olang_loc_7a3d6db3b893cc7d_3c2a4275e29a89 = external constant [0 x i8]
declare i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2elevelCount(ptr %v0, ptr %a0, i32 %a1, i1 %a2)
@olang_loc_c54f5b605d713a50_750f1643c90b13ac = external constant [0 x i8]
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eLength(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRawType(ptr %v0, ptr %a0, i32 %a1)
declare i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eBits(ptr %v0, ptr %a0, i32 %a1)
declare void @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eSetRawType(ptr %v0, ptr %a0, i32 %a1, i32 %a2)
@olang_loc_a1c12b43cfcb5ca8_7f9e794136c316fc = external constant [0 x i8]
@olang_loc_1255cf76aedf9e7f_39892a6a8a5fd693 = external constant [0 x i8]
declare { i32, i32 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2ftypes_3aListId_3e__H9cb5d99387f926677a92c13412f9a8b2(ptr %v0, ptr %a0, i64 %a1)
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eunknowns(ptr %v0, ptr %a0, i64 %a1)
@G_2ecompiler_2ftypes_2eWritable = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\01\00\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2ftypes_2eReadOnly = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>, align 8
declare i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePermOf(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRef(ptr %v0, ptr %a0, i32 %a1, i64 %a2)
declare i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eB(ptr %v0, ptr %a0, i32 %a1)
declare i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eC(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eVar(ptr %v0, ptr %a0, i64 %a1, i64 %a2, i64 %a3)
@olang_loc_d28ca411b3c69834_cefe3fe6ba6de938 = external constant [0 x i8]
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_Hb2d19b6b5ea5ab5a85c5720545345bd4(ptr %v0, ptr %a0)
@olang_loc_53962b7b4c8887bb_135b696c144e88ef = external constant [0 x i8]
declare { i32, { i64, ptr } } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eProject(ptr %v0, ptr %v1, ptr %v2, ptr %a0, i32 %a1, { i64, ptr } %a2)
declare { i64, ptr } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eReflName(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eReflNoType(ptr %v0, ptr %v1, ptr %v2, ptr %v3, { i64, ptr } %a0, { i64, ptr } %a1, { i64, ptr } %a2)
declare i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eErrorOncePerLine(ptr %v0, ptr %v1, ptr %a0, { i64, [3 x i64] } %a1, %"compiler/diagmsg:Msg" %a2)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2ePromiseNoParam(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare void @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2epromiseErr(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1, ptr %a2, %"compiler/diagmsg:Msg" %a3)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eBase(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsFloat(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eExtends(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eHasHash(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eunended(ptr %v0, ptr %v1, ptr %a0, i32 %a1, ptr %a2, i64 %a3, i1 %a4)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId_2c_20Bool_3e_H64d9be73b6c9bed004c541bdf7f0ca0a(ptr %v0, ptr %a0, i32 %a1, i1 %a2)
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eunendedFields(ptr %v0, ptr %v1, ptr %a0, i32 %a1, ptr %a2, i64 %a3, i1 %a4)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eCases(ptr %v0, ptr %a0, i32 %a1)
@olang_loc_c2b0e0f9c58e7130_5beafbe0f1fd477c = external constant [0 x i8]
declare i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3agenRoots_2eroot(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3agenRoots_2eparamBit(ptr %v0, ptr %a0, i32 %a1)
declare { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fsource_3aNameId_2c_20I64_3e_H2a27ec2ae5362b2f0ac6d54f3e063c70(ptr %v0, ptr %a0, i32 %a1)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fsource_3aNameId_2c_20I64_3e_H862756c16d115e5c03a79726209f69fa(ptr %v0, ptr %a0, i32 %a1, i64 %a2)
declare i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fsource_3aNameId_2c_20I64_3e_Hf575c52a5a9e8993bae2b73c9c2548b3(ptr %v0, ptr %a0, i32 %a1)
@olang_loc_9c4890b7bb1b8338_bc401ee50d7cf5ac = external constant [0 x i8]
@olang_loc_a1cd62d4a2c4a909_c9084e1cb558785d = external constant [0 x i8]
@olang_loc_3ddf6b030a58b0c8_e2856651acfeaffc = external constant [0 x i8]
@olang_loc_fe684dd4125d4b4d_99bf6f4db7396e79 = external constant [0 x i8]
@olang_loc_42759df622c97166_e1be9b347935e452 = external constant [0 x i8]
@olang_loc_cc60064df4ba0b57_d35c100e8c6c7d93 = external constant [0 x i8]
@olang_loc_d7d90d95615537d8_d1765b1244f9b03c = external constant [0 x i8]
@olang_loc_9e21964695e7b518_e551ec91ddd7cf74 = external constant [0 x i8]
declare %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3ccompiler_2fsource_3aNameId_2c_20compiler_2ftypes_3aTypeId_3e_2ector(ptr %v0)

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
