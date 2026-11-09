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
%"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" = type { { i64, ptr }, i64, i64 }
%"compiler/ast:TypeParam" = type { %"compiler/source:Span", i32, ptr, { i64, ptr }, i1 }
%"compiler/source:Span" = type { i32, i32 }
%"compiler/generic:Program" = type { ptr, ptr, %"compiler/types:Table", %"compiler/facts:Table", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"compiler/generic:Origin", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"compiler/types:Table" = type { ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" = type { { i64, ptr }, { i64, ptr }, { i64, ptr }, i64, i64, i64 }
%"compiler/facts:Table" = type { %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, i64 }
%"compiler/generic:Origin" = type { i64, %"compiler/source:Span", i64, i32 }
%"compiler/generic:Context" = type { i64, i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"compiler/ast:TypeDecl" = type { i32, { i64, ptr }, i1, ptr, { i64, ptr }, i32, i1 }
%"compiler/ast:StructBody" = type { { i64, ptr }, ptr, { i64, ptr }, %"compiler/source:Span", { i64, ptr }, { i64, ptr } }
%"compiler/generic:fnRow" = type { i64, ptr, i1 }
%"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" = type { i64, i64 }
%"compiler/generic:instance" = type { i64, i32, i32, { i64, ptr }, { i64, ptr }, %"compiler/generic:Origin" }
%"compiler/generic:Binding" = type { i64, i64, { i64, ptr }, { i64, ptr }, { i64, ptr } }
%"compiler/generic:Desc" = type { i64, i32, i64, i64 }
%"std/prelude/text:StringBuilder" = type { %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/generic:Unmet" = type { i64, i32, i32, i1, i1, i1 }
%"compiler/ast:TopIf" = type { ptr, ptr, ptr, ptr }
%"compiler/ast:TopBranch" = type { %"compiler/source:Span", { i64, ptr }, i64 }
%"compiler/ast:CaseDecl" = type { %"compiler/source:Span", i32, { i64, ptr }, i1, ptr, { i64, ptr } }
%"compiler/ast:Param" = type { %"compiler/source:Span", i32, ptr, ptr, { i64, ptr } }
%"compiler/load:Loader" = type { { i64, ptr }, ptr, ptr, ptr, ptr, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", { i64, ptr }, { i64, ptr }, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", { i64, ptr }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/load:Module" = type { { i64, ptr }, { i64, ptr }, { i64, ptr }, i1, i64, i1, ptr, ptr, { i64, ptr }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr, ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr, ptr, ptr, i1, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, { i64, ptr }, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"compiler/generic:folded" = type { i64, i64, i32 }
%"std/prelude/iterator:ViewGenerator.00c7c71992d6e1815cd052c47b979cdd" = type { { ptr, ptr } }
%"compiler/ast:VarDecl" = type { { i64, ptr }, { i64, ptr }, ptr, { i64, ptr }, i1, i1, { i64, ptr }, i1 }
%"compiler/names:Entry" = type { i32, %"compiler/source:Span", i32, i1, ptr }
%"compiler/diagmsg:Msg" = type { i32, { i64, ptr }, { i64, ptr } }
%"compiler/names:Resolver" = type { ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i1, i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"compiler/names:Table" = type { %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"compiler/names:Ref" = type { i32, i64, i64 }
%"compiler/ast:Path" = type { %"compiler/source:Span", { i64, ptr } }
%"compiler/ast:Promise" = type { %"compiler/source:Span", i32, { i64, ptr } }
%"compiler/generic:pattern" = type { ptr, i64, i64, i32, ptr }
%"compiler/ast:Sig" = type { { i64, ptr }, { i64, ptr }, i1, { i64, ptr }, i1, ptr, i1, i1, { i64, ptr } }
%"std/prelude/map:MapIter.bf5835bb10600fe6a7fc1da14a6360d9" = type { ptr, i64 }
%"std/prelude/map:MapEntry.91de8c8eb84d52d1e58996aec31d85aa" = type { i32, i32 }
%"compiler/ast:For3" = type { ptr, ptr, ptr, { i64, ptr } }
%"compiler/ast:Catch" = type { %"compiler/source:Span", { i64, ptr }, { i64, ptr }, { i64, ptr }, i1, i32, %"compiler/source:Span" }
%"compiler/ast:JoinS" = type { i1, { i64, ptr }, { i64, ptr } }
%"compiler/ast:Multi" = type { { i64, ptr }, i1, { i64, ptr } }
%"compiler/generic:genRoots" = type { { i64, ptr }, { i64, ptr }, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64 }
%"compiler/ast:ForIn" = type { i32, i32, ptr, i1, { i64, ptr }, { i64, ptr }, i1 }
%"compiler/ast:Func" = type { %"compiler/source:Span", ptr, i32, ptr, { i64, ptr }, { i64, ptr }, i1, i1, { i64, ptr }, ptr, i32 }
define dso_local i1 @compiler_2fgeneric_2eIsErrsArgOf(ptr %v0, ptr %a0) #0 {
entry:
  %l2 = alloca i1
  %rv = alloca i1
  br label %start
start:
  br label %bb0
bb0:
  %t3 = call i1 @compiler_2fgeneric_2eisErrsArg(ptr %v0, ptr %a0)
  store i1 %t3, ptr %l2
  br label %bb1
bb1:
  %t4 = load i1, ptr %l2, !tbaa !21
  store i1 %t4, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local { { i64, ptr }, i64 } @compiler_2fgeneric_2ecallAround(ptr %v0, ptr %v1, { i64, ptr } %a0, i64 %a1, i64 %a2) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l1 = alloca i64
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i8
  %l7 = alloca i64
  %l8 = alloca i64
  %l15 = alloca { i64, ptr }
  %l20 = alloca i1
  %l23 = alloca i1
  %l30 = alloca i1
  %l33 = alloca i1
  %l42 = alloca i1
  %l45 = alloca { i64, ptr }
  %l47 = alloca { { i64, ptr }, i64 }
  %l48 = alloca { i64, ptr }
  %l49 = alloca i64
  %l50 = alloca { i64, ptr }
  %l53 = alloca i1
  %l63 = alloca i1
  %l64 = alloca { i64, ptr }
  %l68 = alloca { i64, ptr }
  %l70 = alloca { { i64, ptr }, i64 }
  %l71 = alloca { i64, ptr }
  %l72 = alloca i64
  %l73 = alloca { i64, ptr }
  %l79 = alloca i1
  %l80 = alloca { i64, ptr }
  %l84 = alloca i1
  %l85 = alloca i1
  %l86 = alloca { i64, ptr }
  %l90 = alloca i1
  %l91 = alloca i1
  %l92 = alloca { i64, ptr }
  %l103 = alloca i1
  %l107 = alloca i1
  %l108 = alloca { i64, ptr }
  %l113 = alloca { i64, ptr }
  %l115 = alloca { { i64, ptr }, i64 }
  %l116 = alloca { i64, ptr }
  %l117 = alloca i64
  %l118 = alloca { i64, ptr }
  %l119 = alloca { i64, ptr }
  %l120 = alloca i64
  %l121 = alloca i64
  %l122 = alloca i64
  %rv = alloca { { i64, ptr }, i64 }
  store { i64, ptr } %a0, ptr %l0
  store i64 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store i64 0, ptr %l3, !tbaa !24
  store i64 0, ptr %l4, !tbaa !24
  %t3 = sub i64 %a2, 1
  store i64 %t3, ptr %l5, !tbaa !24
  br label %bb1
bb1:
  %t5 = load i64, ptr %l5, !tbaa !24
  %t6 = load i64, ptr %l1, !tbaa !24
  %t9 = icmp sge i64 %t5, %t6
  %t11 = xor i1 %t9, true
  br i1 %t11, label %bb2, label %bb3
bb2:
  br label %bb39
bb3:
  br label %bb4
bb4:
  %t13 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t13, ptr %l15, !tbaa !27
  %t14 = load i64, ptr %l5, !tbaa !24
  %t16 = getelementptr { i64, ptr }, ptr %l15, i32 0, i32 1
  %t17 = load ptr, ptr %t16, !tbaa !27
  %t18 = getelementptr i8, ptr %t17, i64 %t14
  %t19 = load i8, ptr %t18, !tbaa !32
  store i8 %t19, ptr %l6, !tbaa !22
  %t21 = load i8, ptr %l6, !tbaa !22
  %t23 = icmp eq i8 %t21, 41
  br i1 %t23, label %bb5, label %bb6
bb5:
  store i1 true, ptr %l20, !tbaa !21
  br label %bb7
bb6:
  %t25 = load i8, ptr %l6, !tbaa !22
  %t27 = icmp eq i8 %t25, 93
  store i1 %t27, ptr %l20, !tbaa !21
  br label %bb7
bb7:
  %t29 = load i1, ptr %l20, !tbaa !21
  br i1 %t29, label %bb8, label %bb9
bb8:
  store i1 true, ptr %l23, !tbaa !21
  br label %bb10
bb9:
  %t30 = load i8, ptr %l6, !tbaa !22
  %t32 = icmp eq i8 %t30, 125
  store i1 %t32, ptr %l23, !tbaa !21
  br label %bb10
bb10:
  %t34 = load i1, ptr %l23, !tbaa !21
  br i1 %t34, label %bb11, label %bb12
bb11:
  %t35 = load i64, ptr %l3, !tbaa !24
  %t37 = add i64 %t35, 1
  store i64 %t37, ptr %l3, !tbaa !24
  br label %bb13
bb12:
  br label %bb13
bb13:
  %t39 = load i8, ptr %l6, !tbaa !22
  %t41 = icmp eq i8 %t39, 40
  br i1 %t41, label %bb14, label %bb15
bb14:
  store i1 true, ptr %l30, !tbaa !21
  br label %bb16
bb15:
  %t43 = load i8, ptr %l6, !tbaa !22
  %t45 = icmp eq i8 %t43, 91
  store i1 %t45, ptr %l30, !tbaa !21
  br label %bb16
bb16:
  %t47 = load i1, ptr %l30, !tbaa !21
  br i1 %t47, label %bb17, label %bb18
bb17:
  store i1 true, ptr %l33, !tbaa !21
  br label %bb19
bb18:
  %t48 = load i8, ptr %l6, !tbaa !22
  %t50 = icmp eq i8 %t48, 123
  store i1 %t50, ptr %l33, !tbaa !21
  br label %bb19
bb19:
  %t52 = load i1, ptr %l33, !tbaa !21
  br i1 %t52, label %bb20, label %bb21
bb20:
  %t53 = load i64, ptr %l3, !tbaa !24
  %t55 = icmp eq i64 %t53, 0
  br i1 %t55, label %bb22, label %bb23
bb21:
  br label %bb25
bb22:
  br label %bb39
bb23:
  br label %bb24
bb24:
  %t57 = load i64, ptr %l3, !tbaa !24
  %t59 = sub i64 %t57, 1
  store i64 %t59, ptr %l3, !tbaa !24
  br label %bb25
bb25:
  %t61 = load i8, ptr %l6, !tbaa !22
  %t63 = icmp eq i8 %t61, 10
  br i1 %t63, label %bb26, label %bb27
bb26:
  %t65 = load i64, ptr %l3, !tbaa !24
  %t67 = icmp eq i64 %t65, 0
  store i1 %t67, ptr %l42, !tbaa !21
  br label %bb28
bb27:
  store i1 false, ptr %l42, !tbaa !21
  br label %bb28
bb28:
  %t69 = load i1, ptr %l42, !tbaa !21
  br i1 %t69, label %bb29, label %bb30
bb29:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d0, i32 0, i32 1) }, ptr %l45, !tbaa !27
  %t70 = load { i64, ptr }, ptr %l45, !tbaa !27
  %t72 = insertvalue { { i64, ptr }, i64 } undef, { i64, ptr } %t70, 0
  %t73 = insertvalue { { i64, ptr }, i64 } %t72, i64 0, 1
  store { { i64, ptr }, i64 } %t73, ptr %l47
  %t74 = getelementptr { { i64, ptr }, i64 }, ptr %l47, i32 0, i32 0
  %t75 = load { i64, ptr }, ptr %t74, !tbaa !27
  store { i64, ptr } %t75, ptr %l48, !tbaa !27
  %t76 = load { i64, ptr }, ptr %l48, !tbaa !27
  %t77 = extractvalue { i64, ptr } %t76, 0
  store i64 %t77, ptr %l49, !tbaa !24
  %t78 = load i64, ptr %l49, !tbaa !24
  %t79 = mul i64 %t78, 1
  %t80 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t79)
  %t81 = insertvalue { i64, ptr } undef, i64 %t78, 0
  %t82 = insertvalue { i64, ptr } %t81, ptr %t80, 1
  store { i64, ptr } %t82, ptr %l50, !tbaa !27
  %t83 = getelementptr { i64, ptr }, ptr %l50, i32 0, i32 1
  %t84 = load ptr, ptr %t83, !tbaa !27
  %t85 = getelementptr { i64, ptr }, ptr %l48, i32 0, i32 1
  %t86 = load ptr, ptr %t85, !tbaa !27
  %t87 = load i64, ptr %l49, !tbaa !24
  %t88 = mul i64 %t87, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t84, ptr %t86, i64 %t88, i1 false)
  %t89 = load { i64, ptr }, ptr %l50, !tbaa !27
  %t90 = getelementptr { { i64, ptr }, i64 }, ptr %l47, i32 0, i32 0
  store { i64, ptr } %t89, ptr %t90, !tbaa !27
  %t91 = load { { i64, ptr }, i64 }, ptr %l47
  store { { i64, ptr }, i64 } %t91, ptr %rv
  br label %ret
bb30:
  br label %bb31
bb31:
  %t92 = load i8, ptr %l6, !tbaa !22
  %t94 = icmp eq i8 %t92, 44
  br i1 %t94, label %bb32, label %bb33
bb32:
  %t96 = load i64, ptr %l3, !tbaa !24
  %t98 = icmp eq i64 %t96, 0
  store i1 %t98, ptr %l53, !tbaa !21
  br label %bb34
bb33:
  store i1 false, ptr %l53, !tbaa !21
  br label %bb34
bb34:
  %t100 = load i1, ptr %l53, !tbaa !21
  br i1 %t100, label %bb35, label %bb36
bb35:
  %t101 = load i64, ptr %l4, !tbaa !24
  %t103 = add i64 %t101, 1
  store i64 %t103, ptr %l4, !tbaa !24
  br label %bb37
bb36:
  br label %bb37
bb37:
  %t105 = load i64, ptr %l5, !tbaa !24
  %t107 = sub i64 %t105, 1
  store i64 %t107, ptr %l5, !tbaa !24
  br label %bb38
bb38:
  br label %bb1
bb39:
  %t109 = load i64, ptr %l5, !tbaa !24
  %t110 = load i64, ptr %l1, !tbaa !24
  %t113 = icmp slt i64 %t109, %t110
  br i1 %t113, label %bb40, label %bb41
bb40:
  store i1 true, ptr %l63, !tbaa !21
  br label %bb42
bb41:
  %t115 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t115, ptr %l64, !tbaa !27
  %t116 = load i64, ptr %l5, !tbaa !24
  %t118 = getelementptr { i64, ptr }, ptr %l64, i32 0, i32 1
  %t119 = load ptr, ptr %t118, !tbaa !27
  %t120 = getelementptr i8, ptr %t119, i64 %t116
  %t121 = load i8, ptr %t120, !tbaa !32
  %t123 = icmp ne i8 %t121, 40
  store i1 %t123, ptr %l63, !tbaa !21
  br label %bb42
bb42:
  %t125 = load i1, ptr %l63, !tbaa !21
  br i1 %t125, label %bb43, label %bb44
bb43:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d1, i32 0, i32 1) }, ptr %l68, !tbaa !27
  %t126 = load { i64, ptr }, ptr %l68, !tbaa !27
  %t128 = insertvalue { { i64, ptr }, i64 } undef, { i64, ptr } %t126, 0
  %t129 = insertvalue { { i64, ptr }, i64 } %t128, i64 0, 1
  store { { i64, ptr }, i64 } %t129, ptr %l70
  %t130 = getelementptr { { i64, ptr }, i64 }, ptr %l70, i32 0, i32 0
  %t131 = load { i64, ptr }, ptr %t130, !tbaa !27
  store { i64, ptr } %t131, ptr %l71, !tbaa !27
  %t132 = load { i64, ptr }, ptr %l71, !tbaa !27
  %t133 = extractvalue { i64, ptr } %t132, 0
  store i64 %t133, ptr %l72, !tbaa !24
  %t134 = load i64, ptr %l72, !tbaa !24
  %t135 = mul i64 %t134, 1
  %t136 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t135)
  %t137 = insertvalue { i64, ptr } undef, i64 %t134, 0
  %t138 = insertvalue { i64, ptr } %t137, ptr %t136, 1
  store { i64, ptr } %t138, ptr %l73, !tbaa !27
  %t139 = getelementptr { i64, ptr }, ptr %l73, i32 0, i32 1
  %t140 = load ptr, ptr %t139, !tbaa !27
  %t141 = getelementptr { i64, ptr }, ptr %l71, i32 0, i32 1
  %t142 = load ptr, ptr %t141, !tbaa !27
  %t143 = load i64, ptr %l72, !tbaa !24
  %t144 = mul i64 %t143, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t140, ptr %t142, i64 %t144, i1 false)
  %t145 = load { i64, ptr }, ptr %l73, !tbaa !27
  %t146 = getelementptr { { i64, ptr }, i64 }, ptr %l70, i32 0, i32 0
  store { i64, ptr } %t145, ptr %t146, !tbaa !27
  %t147 = load { { i64, ptr }, i64 }, ptr %l70
  store { { i64, ptr }, i64 } %t147, ptr %rv
  br label %ret
bb44:
  br label %bb45
bb45:
  %t148 = load i64, ptr %l5, !tbaa !24
  store i64 %t148, ptr %l7, !tbaa !24
  %t150 = load i64, ptr %l7, !tbaa !24
  store i64 %t150, ptr %l8, !tbaa !24
  br label %bb46
bb46:
  %t152 = load i64, ptr %l8, !tbaa !24
  %t153 = load i64, ptr %l1, !tbaa !24
  %t156 = icmp sgt i64 %t152, %t153
  br i1 %t156, label %bb47, label %bb48
bb47:
  %t158 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t158, ptr %l80, !tbaa !27
  %t159 = load i64, ptr %l8, !tbaa !24
  %t161 = sub i64 %t159, 1
  %t163 = getelementptr { i64, ptr }, ptr %l80, i32 0, i32 1
  %t164 = load ptr, ptr %t163, !tbaa !27
  %t165 = getelementptr i8, ptr %t164, i64 %t161
  %t166 = load i8, ptr %t165, !tbaa !32
  %t168 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aChar_2eIsLetter(i8 %t166)
  store i1 %t168, ptr %l84
  br label %bb49
bb48:
  store i1 false, ptr %l79, !tbaa !21
  br label %bb57
bb49:
  %t169 = load i1, ptr %l84, !tbaa !21
  br i1 %t169, label %bb50, label %bb51
bb50:
  store i1 true, ptr %l85, !tbaa !21
  br label %bb53
bb51:
  %t170 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t170, ptr %l86, !tbaa !27
  %t171 = load i64, ptr %l8, !tbaa !24
  %t173 = sub i64 %t171, 1
  %t175 = getelementptr { i64, ptr }, ptr %l86, i32 0, i32 1
  %t176 = load ptr, ptr %t175, !tbaa !27
  %t177 = getelementptr i8, ptr %t176, i64 %t173
  %t178 = load i8, ptr %t177, !tbaa !32
  %t180 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aChar_2eIsDigit(i8 %t178)
  store i1 %t180, ptr %l90
  br label %bb52
bb52:
  %t181 = load i1, ptr %l90, !tbaa !21
  store i1 %t181, ptr %l85, !tbaa !21
  br label %bb53
bb53:
  %t182 = load i1, ptr %l85, !tbaa !21
  br i1 %t182, label %bb54, label %bb55
bb54:
  store i1 true, ptr %l91, !tbaa !21
  br label %bb56
bb55:
  %t183 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t183, ptr %l92, !tbaa !27
  %t184 = load i64, ptr %l8, !tbaa !24
  %t186 = sub i64 %t184, 1
  %t188 = getelementptr { i64, ptr }, ptr %l92, i32 0, i32 1
  %t189 = load ptr, ptr %t188, !tbaa !27
  %t190 = getelementptr i8, ptr %t189, i64 %t186
  %t191 = load i8, ptr %t190, !tbaa !32
  %t193 = icmp eq i8 %t191, 95
  store i1 %t193, ptr %l91, !tbaa !21
  br label %bb56
bb56:
  %t195 = load i1, ptr %l91, !tbaa !21
  store i1 %t195, ptr %l79, !tbaa !21
  br label %bb57
bb57:
  %t196 = load i1, ptr %l79, !tbaa !21
  %t197 = xor i1 %t196, true
  br i1 %t197, label %bb58, label %bb59
bb58:
  br label %bb62
bb59:
  br label %bb60
bb60:
  %t199 = load i64, ptr %l8, !tbaa !24
  %t201 = sub i64 %t199, 1
  store i64 %t201, ptr %l8, !tbaa !24
  br label %bb61
bb61:
  br label %bb46
bb62:
  %t203 = load i64, ptr %l8, !tbaa !24
  %t204 = load i64, ptr %l7, !tbaa !24
  %t207 = icmp eq i64 %t203, %t204
  br i1 %t207, label %bb63, label %bb64
bb63:
  store i1 true, ptr %l103, !tbaa !21
  br label %bb68
bb64:
  %t209 = load i64, ptr %l8, !tbaa !24
  %t210 = load i64, ptr %l1, !tbaa !24
  %t213 = icmp sgt i64 %t209, %t210
  br i1 %t213, label %bb65, label %bb66
bb65:
  %t215 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t215, ptr %l108, !tbaa !27
  %t216 = load i64, ptr %l8, !tbaa !24
  %t218 = sub i64 %t216, 1
  %t220 = getelementptr { i64, ptr }, ptr %l108, i32 0, i32 1
  %t221 = load ptr, ptr %t220, !tbaa !27
  %t222 = getelementptr i8, ptr %t221, i64 %t218
  %t223 = load i8, ptr %t222, !tbaa !32
  %t225 = icmp eq i8 %t223, 46
  store i1 %t225, ptr %l107, !tbaa !21
  br label %bb67
bb66:
  store i1 false, ptr %l107, !tbaa !21
  br label %bb67
bb67:
  %t227 = load i1, ptr %l107, !tbaa !21
  store i1 %t227, ptr %l103, !tbaa !21
  br label %bb68
bb68:
  %t228 = load i1, ptr %l103, !tbaa !21
  br i1 %t228, label %bb69, label %bb70
bb69:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d2, i32 0, i32 1) }, ptr %l113, !tbaa !27
  %t229 = load { i64, ptr }, ptr %l113, !tbaa !27
  %t231 = insertvalue { { i64, ptr }, i64 } undef, { i64, ptr } %t229, 0
  %t232 = insertvalue { { i64, ptr }, i64 } %t231, i64 0, 1
  store { { i64, ptr }, i64 } %t232, ptr %l115
  %t233 = getelementptr { { i64, ptr }, i64 }, ptr %l115, i32 0, i32 0
  %t234 = load { i64, ptr }, ptr %t233, !tbaa !27
  store { i64, ptr } %t234, ptr %l116, !tbaa !27
  %t235 = load { i64, ptr }, ptr %l116, !tbaa !27
  %t236 = extractvalue { i64, ptr } %t235, 0
  store i64 %t236, ptr %l117, !tbaa !24
  %t237 = load i64, ptr %l117, !tbaa !24
  %t238 = mul i64 %t237, 1
  %t239 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t238)
  %t240 = insertvalue { i64, ptr } undef, i64 %t237, 0
  %t241 = insertvalue { i64, ptr } %t240, ptr %t239, 1
  store { i64, ptr } %t241, ptr %l118, !tbaa !27
  %t242 = getelementptr { i64, ptr }, ptr %l118, i32 0, i32 1
  %t243 = load ptr, ptr %t242, !tbaa !27
  %t244 = getelementptr { i64, ptr }, ptr %l116, i32 0, i32 1
  %t245 = load ptr, ptr %t244, !tbaa !27
  %t246 = load i64, ptr %l117, !tbaa !24
  %t247 = mul i64 %t246, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t243, ptr %t245, i64 %t247, i1 false)
  %t248 = load { i64, ptr }, ptr %l118, !tbaa !27
  %t249 = getelementptr { { i64, ptr }, i64 }, ptr %l115, i32 0, i32 0
  store { i64, ptr } %t248, ptr %t249, !tbaa !27
  %t250 = load { { i64, ptr }, i64 }, ptr %l115
  store { { i64, ptr }, i64 } %t250, ptr %rv
  br label %ret
bb70:
  br label %bb71
bb71:
  %t251 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t251, ptr %l119, !tbaa !27
  %t252 = load i64, ptr %l8, !tbaa !24
  store i64 %t252, ptr %l120, !tbaa !24
  %t253 = load i64, ptr %l7, !tbaa !24
  store i64 %t253, ptr %l121, !tbaa !24
  %t254 = load { i64, ptr }, ptr %l119, !tbaa !27
  %t255 = extractvalue { i64, ptr } %t254, 0
  store i64 %t255, ptr %l122, !tbaa !24
  %t256 = load i64, ptr %l120, !tbaa !24
  %t257 = icmp sge i64 %t256, 0
  br i1 %t257, label %bb72, label %bb73
bb72:
  %t259 = load i64, ptr %l120, !tbaa !24
  %t260 = load i64, ptr %l121, !tbaa !24
  %t261 = icmp sle i64 %t259, %t260
  br i1 %t261, label %bb74, label %bb75
bb73:
  call void @__olang_check_failed(ptr @olang_loc_6056ece582ef2ce2_c67ea0947e494cde)
  unreachable
bb74:
  %t263 = load i64, ptr %l121, !tbaa !24
  %t264 = load i64, ptr %l122, !tbaa !24
  %t265 = icmp sle i64 %t263, %t264
  br i1 %t265, label %bb76, label %bb77
bb75:
  call void @__olang_check_failed(ptr @olang_loc_6056ece582ef2ce2_c67ea0947e494cde)
  unreachable
bb76:
  %t267 = getelementptr { i64, ptr }, ptr %l119, i32 0, i32 1
  %t268 = load ptr, ptr %t267, !tbaa !27
  %t269 = load i64, ptr %l120, !tbaa !24
  %t270 = load i64, ptr %l121, !tbaa !24
  %t271 = getelementptr i8, ptr %t268, i64 %t269
  %t272 = sub i64 %t270, %t269
  %t273 = insertvalue { i64, ptr } undef, i64 %t272, 0
  %t274 = insertvalue { i64, ptr } %t273, ptr %t271, 1
  %t276 = extractvalue { i64, ptr } %t274, 1
  %t277 = extractvalue { i64, ptr } %t274, 0
  %t278 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t277)
  call void @olang_textcopy(ptr %t278, ptr %t276, i64 %t277)
  %t279 = insertvalue { i64, ptr } undef, i64 %t277, 0
  %t280 = insertvalue { i64, ptr } %t279, ptr %t278, 1
  %t281 = load i64, ptr %l4, !tbaa !24
  %t283 = insertvalue { { i64, ptr }, i64 } undef, { i64, ptr } %t280, 0
  %t285 = insertvalue { { i64, ptr }, i64 } %t283, i64 %t281, 1
  store { { i64, ptr }, i64 } %t285, ptr %rv
  br label %ret
bb77:
  call void @__olang_check_failed(ptr @olang_loc_6056ece582ef2ce2_c67ea0947e494cde)
  unreachable
ret:
  %rr = load { { i64, ptr }, i64 }, ptr %rv
  ret { { i64, ptr }, i64 } %rr
}

define dso_local void @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eAllFns(ptr %v0, ptr %a0) #0 {
entry:
  br label %start
start:
  br label %bb0
bb0:
  call void @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eallFns(ptr %v0, ptr %a0)
  br label %bb1
bb1:
  br label %ret
ret:
  ret void
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

define dso_local i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eBoundOf(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, ptr %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l4 = alloca { i64, ptr }
  %l5 = alloca i64
  %l6 = alloca i64
  %l16 = alloca i32
  %l17 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l18 = alloca ptr
  %l23 = alloca i32
  %l32 = alloca { i64, ptr }
  %l35 = alloca ptr
  %l40 = alloca i32
  %l44 = alloca ptr
  %l46 = alloca ptr
  %l48 = alloca { i64, ptr }
  %l49 = alloca i32
  %l50 = alloca i32
  %s0 = alloca %olang.scope
  %rv = alloca i32
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store ptr %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l2, !tbaa !29
  %t3 = getelementptr %"compiler/ast:TypeParam", ptr %t1, i32 0, i32 3
  %t4 = load { i64, ptr }, ptr %t3, !tbaa !27
  %t6 = extractvalue { i64, ptr } %t4, 0
  %t8 = icmp eq i64 %t6, 0
  br i1 %t8, label %bb1, label %bb2
bb1:
  %t10 = load ptr, ptr %l0, !tbaa !29
  %t11 = load ptr, ptr %l1, !tbaa !29
  %t12 = load ptr, ptr %l2, !tbaa !29
  %t14 = getelementptr %"compiler/ast:TypeParam", ptr %t12, i32 0, i32 2
  %t15 = load ptr, ptr %t14, !tbaa !29
  %t19 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eResolve(ptr %v0, ptr %v1, ptr %v2, ptr %t10, ptr %t11, ptr %t15)
  store i32 %t19, ptr %l16
  br label %bb3
bb2:
  br label %bb4
bb3:
  call void @__olang_scope_close(ptr %s0)
  %t20 = load i32, ptr %l16, !tbaa !23
  store i32 %t20, ptr %rv
  br label %ret
bb4:
  %t21 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2ector(ptr %s0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t21, ptr %l17
  br label %bb5
bb5:
  %t22 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l17
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t22, ptr %l3
  store ptr %l3, ptr %l18, !tbaa !29
  %t23 = load ptr, ptr %l0, !tbaa !29
  %t24 = load ptr, ptr %l1, !tbaa !29
  %t25 = load ptr, ptr %l2, !tbaa !29
  %t27 = getelementptr %"compiler/ast:TypeParam", ptr %t25, i32 0, i32 2
  %t28 = load ptr, ptr %t27, !tbaa !29
  %t32 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eResolve(ptr %v0, ptr %v1, ptr %v2, ptr %t23, ptr %t24, ptr %t28)
  store i32 %t32, ptr %l23
  br label %bb6
bb6:
  %t33 = load ptr, ptr %l18, !tbaa !29
  %t34 = load i32, ptr %l23, !tbaa !23
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2ePush_3ccompiler_2ftypes_3aTypeId_3e(ptr %s0, ptr %t33, i32 %t34)
  br label %bb7
bb7:
  %t35 = load ptr, ptr %l2, !tbaa !29
  %t37 = getelementptr %"compiler/ast:TypeParam", ptr %t35, i32 0, i32 3
  %t38 = load { i64, ptr }, ptr %t37, !tbaa !27
  store { i64, ptr } %t38, ptr %l4, !tbaa !27
  store i64 0, ptr %l5, !tbaa !24
  %t40 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t42 = extractvalue { i64, ptr } %t40, 0
  store i64 %t42, ptr %l6, !tbaa !24
  br label %bb8
bb8:
  %t44 = load i64, ptr %l5, !tbaa !24
  %t45 = load i64, ptr %l6, !tbaa !24
  %t48 = icmp slt i64 %t44, %t45
  %t50 = xor i1 %t48, true
  br i1 %t50, label %bb9, label %bb10
bb9:
  br label %bb15
bb10:
  br label %bb11
bb11:
  %t52 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t52, ptr %l32, !tbaa !27
  %t53 = load i64, ptr %l5, !tbaa !24
  %t55 = getelementptr { i64, ptr }, ptr %l32, i32 0, i32 1
  %t56 = load ptr, ptr %t55, !tbaa !27
  %t57 = getelementptr ptr, ptr %t56, i64 %t53
  %t58 = load ptr, ptr %t57, !tbaa !39
  store ptr %l3, ptr %l35, !tbaa !29
  %t60 = load ptr, ptr %l0, !tbaa !29
  %t61 = load ptr, ptr %l1, !tbaa !29
  %t67 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eResolve(ptr %v0, ptr %v1, ptr %v2, ptr %t60, ptr %t61, ptr %t58)
  store i32 %t67, ptr %l40
  br label %bb12
bb12:
  %t68 = load ptr, ptr %l35, !tbaa !29
  %t69 = load i32, ptr %l40, !tbaa !23
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2ePush_3ccompiler_2ftypes_3aTypeId_3e(ptr %s0, ptr %t68, i32 %t69)
  br label %bb13
bb13:
  br label %bb14
bb14:
  %t70 = load i64, ptr %l5, !tbaa !24
  %t72 = add i64 %t70, 1
  store i64 %t72, ptr %l5, !tbaa !24
  br label %bb8
bb15:
  %t74 = load ptr, ptr %l0, !tbaa !29
  %t76 = getelementptr %"compiler/generic:Program", ptr %t74, i32 0, i32 2
  store ptr %t76, ptr %l44, !tbaa !29
  %t77 = load ptr, ptr %l0, !tbaa !29
  %t79 = getelementptr %"compiler/generic:Program", ptr %t77, i32 0, i32 2
  store ptr %t79, ptr %l46, !tbaa !29
  %t81 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2eToArray_3ccompiler_2ftypes_3aTypeId_3e(ptr %s0, ptr %s0, ptr %l3)
  store { i64, ptr } %t81, ptr %l48
  br label %bb16
bb16:
  %t82 = load ptr, ptr %l46, !tbaa !29
  %t83 = load { i64, ptr }, ptr %l48, !tbaa !27
  %t84 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eList(ptr %v0, ptr %s0, ptr %t82, { i64, ptr } %t83)
  store i32 %t84, ptr %l49
  br label %bb17
bb17:
  %t85 = load ptr, ptr %l44, !tbaa !29
  %t86 = load i32, ptr %l49, !tbaa !23
  %t87 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eTuple(ptr %v0, ptr %t85, i32 %t86)
  store i32 %t87, ptr %l50
  br label %bb18
bb18:
  call void @__olang_scope_close(ptr %s0)
  %t88 = load i32, ptr %l50, !tbaa !23
  store i32 %t88, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eColumnsRow(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca { i64, ptr }
  %l5 = alloca i1
  %l7 = alloca i1
  %l10 = alloca i1
  %l14 = alloca ptr
  %l18 = alloca i32
  %l19 = alloca { i64, ptr }
  %l23 = alloca i32
  %l24 = alloca { i64, ptr }
  %rv = alloca i32
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load i32, ptr %l1, !tbaa !23
  %t5 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eIsColumns(ptr %v0, ptr %t1, i32 %t2)
  store i1 %t5, ptr %l5
  br label %bb1
bb1:
  %t6 = load i1, ptr %l5, !tbaa !21
  %t7 = xor i1 %t6, true
  br i1 %t7, label %bb2, label %bb3
bb2:
  %t9 = load ptr, ptr %l0, !tbaa !29
  %t10 = load i32, ptr %l1, !tbaa !23
  %t13 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eIsColumnVec(ptr %v0, ptr %t9, i32 %t10)
  store i1 %t13, ptr %l10
  br label %bb4
bb3:
  store i1 false, ptr %l7, !tbaa !21
  br label %bb5
bb4:
  %t14 = load i1, ptr %l10, !tbaa !21
  %t15 = xor i1 %t14, true
  store i1 %t15, ptr %l7, !tbaa !21
  br label %bb5
bb5:
  %t17 = load i1, ptr %l7, !tbaa !21
  br i1 %t17, label %bb6, label %bb7
bb6:
  %t18 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  store i32 %t18, ptr %rv
  br label %ret
bb7:
  br label %bb8
bb8:
  %t20 = load ptr, ptr %l0, !tbaa !29
  %t22 = getelementptr %"compiler/generic:Program", ptr %t20, i32 0, i32 2
  store ptr %t22, ptr %l14, !tbaa !29
  %t23 = load ptr, ptr %l0, !tbaa !29
  %t25 = getelementptr %"compiler/generic:Program", ptr %t23, i32 0, i32 2
  %t26 = load i32, ptr %l1, !tbaa !23
  %t29 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eArgs(ptr %v0, ptr %t25, i32 %t26)
  store i32 %t29, ptr %l18
  br label %bb9
bb9:
  %t30 = load ptr, ptr %l14, !tbaa !29
  %t31 = load i32, ptr %l18, !tbaa !23
  %t32 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t30, i32 %t31)
  store { i64, ptr } %t32, ptr %l19
  br label %bb10
bb10:
  %t33 = load { i64, ptr }, ptr %l19, !tbaa !27
  store { i64, ptr } %t33, ptr %l2, !tbaa !27
  %t34 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t36 = extractvalue { i64, ptr } %t34, 0
  %t38 = icmp eq i64 %t36, 1
  br i1 %t38, label %bb11, label %bb12
bb11:
  %t40 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t40, ptr %l24, !tbaa !27
  %t41 = getelementptr { i64, ptr }, ptr %l24, i32 0, i32 1
  %t42 = load ptr, ptr %t41, !tbaa !27
  %t43 = getelementptr i32, ptr %t42, i64 0
  %t44 = load i32, ptr %t43, !tbaa !33
  store i32 %t44, ptr %l23, !tbaa !23
  br label %bb13
bb12:
  %t46 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  store i32 %t46, ptr %l23, !tbaa !23
  br label %bb13
bb13:
  %t48 = load i32, ptr %l23, !tbaa !23
  store i32 %t48, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eCtorVars(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca i64
  %l3 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l4 = alloca ptr
  %l5 = alloca { i64, ptr }
  %l6 = alloca ptr
  %l7 = alloca ptr
  %l8 = alloca { i64, ptr }
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca ptr
  %l12 = alloca %"compiler/generic:Context"
  %l13 = alloca i64
  %l14 = alloca i64
  %l15 = alloca i64
  %l16 = alloca i64
  %l17 = alloca i64
  %l18 = alloca i64
  %l19 = alloca { i64, ptr }
  %l20 = alloca i64
  %l21 = alloca i64
  %l24 = alloca i64
  %l25 = alloca i64
  %l29 = alloca i64
  %l30 = alloca i32
  %l34 = alloca i64
  %l35 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l38 = alloca ptr
  %l45 = alloca i1
  %l50 = alloca i1
  %l57 = alloca ptr
  %l58 = alloca i1
  %l75 = alloca { i64, ptr }
  %l81 = alloca i1
  %l88 = alloca ptr
  %l89 = alloca i64
  %l91 = alloca { i64, ptr }
  %l99 = alloca i64
  %l101 = alloca %"compiler/generic:Context"
  %l103 = alloca i64
  %l107 = alloca i64
  %l110 = alloca i64
  %l128 = alloca ptr
  %l131 = alloca i32
  %l137 = alloca i32
  %l147 = alloca { i64, ptr }
  %l152 = alloca ptr
  %l157 = alloca i64
  %s0 = alloca %olang.scope
  %s10 = alloca %olang.scope
  %rv = alloca i64
  %t164 = alloca %"compiler/generic:Context", align 8
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load i32, ptr %l1, !tbaa !23
  %t3 = call i64 @compiler_2fgeneric_2eCtorOwner(i32 %t1)
  store i64 %t3, ptr %l24
  br label %bb1
bb1:
  %t4 = load i64, ptr %l24, !tbaa !24
  store i64 %t4, ptr %l2, !tbaa !24
  %t5 = load ptr, ptr %l0, !tbaa !29
  %t7 = getelementptr %"compiler/generic:Program", ptr %t5, i32 0, i32 14
  %t8 = load i64, ptr %l2, !tbaa !24
  %t11 = call { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2eGet_3cI64_2c_20I64_3e(ptr %v0, ptr %t7, i64 %t8)
  %t12 = extractvalue { i32, i64 } %t11, 1
  %t13 = extractvalue { i32, i64 } %t11, 0
  store i32 %t13, ptr %l30
  %t14 = icmp ne i32 %t13, 0
  br i1 %t14, label %bb3, label %ok.15, !prof !99
ok.15:
  store i64 %t12, ptr %l29
  br label %bb2
bb2:
  %t16 = load i64, ptr %l29, !tbaa !24
  store i64 %t16, ptr %l25, !tbaa !24
  br label %bb5
bb3:
  br label %bb4
bb4:
  store i64 -1, ptr %l25, !tbaa !24
  br label %bb5
bb5:
  %t17 = load i64, ptr %l25, !tbaa !24
  %t18 = icmp sge i64 %t17, 0
  br i1 %t18, label %bb6, label %bb7
bb6:
  %t20 = load ptr, ptr %l0, !tbaa !29
  %t21 = load i64, ptr %l2, !tbaa !24
  %t24 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eVarCount(ptr %v0, ptr %t20, i64 %t21)
  store i64 %t24, ptr %l34
  br label %bb8
bb7:
  br label %bb9
bb8:
  call void @__olang_scope_close(ptr %s0)
  %t25 = load i64, ptr %l34, !tbaa !24
  store i64 %t25, ptr %rv
  br label %ret
bb9:
  %t26 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aNameId_3e_2ector(ptr %s0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t26, ptr %l35
  br label %bb10
bb10:
  %t27 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l35
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t27, ptr %l3
  %t28 = load ptr, ptr %l0, !tbaa !29
  %t29 = load i32, ptr %l1, !tbaa !23
  %t32 = call ptr @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2etypeDecl(ptr %v0, ptr %v0, ptr %t28, i32 %t29)
  store ptr %t32, ptr %l38
  br label %bb11
bb11:
  %t33 = load ptr, ptr %l38, !tbaa !29
  store ptr %t33, ptr %l4, !tbaa !29
  %t34 = icmp sge i64 0, 0
  br i1 %t34, label %bb12, label %bb13
bb12:
  %t36 = icmp sle i64 0, 1152921504606846975
  br i1 %t36, label %bb14, label %bb15
bb13:
  call void @__olang_check_failed(ptr @olang_loc_d755241afe0bd865_b911a572fa08ed19)
  unreachable
bb14:
  %t38 = mul i64 0, 8
  %t39 = insertvalue { i64, ptr } undef, i64 0, 0
  %t40 = insertvalue { i64, ptr } %t39, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  store { i64, ptr } %t40, ptr %l5, !tbaa !27
  %t42 = load ptr, ptr %l4, !tbaa !29
  %t44 = icmp eq ptr %t42, null
  %t46 = xor i1 %t44, true
  br i1 %t46, label %bb16, label %bb17
bb15:
  call void @__olang_check_failed(ptr @olang_loc_d755241afe0bd865_b911a572fa08ed19)
  unreachable
bb16:
  %t48 = load ptr, ptr %l4, !tbaa !29
  %t50 = getelementptr %"compiler/ast:TypeDecl", ptr %t48, i32 0, i32 3
  %t51 = load ptr, ptr %t50, !tbaa !29
  %t53 = icmp eq ptr %t51, null
  %t55 = xor i1 %t53, true
  store i1 %t55, ptr %l45, !tbaa !21
  br label %bb18
bb17:
  store i1 false, ptr %l45, !tbaa !21
  br label %bb18
bb18:
  %t57 = load i1, ptr %l45, !tbaa !21
  br i1 %t57, label %bb19, label %bb20
bb19:
  %t58 = load ptr, ptr %l4, !tbaa !29
  %t60 = getelementptr %"compiler/ast:TypeDecl", ptr %t58, i32 0, i32 1
  %t61 = load { i64, ptr }, ptr %t60, !tbaa !27
  %t63 = extractvalue { i64, ptr } %t61, 0
  %t65 = icmp eq i64 %t63, 0
  store i1 %t65, ptr %l50, !tbaa !21
  br label %bb21
bb20:
  store i1 false, ptr %l50, !tbaa !21
  br label %bb21
bb21:
  %t67 = load i1, ptr %l50, !tbaa !21
  br i1 %t67, label %bb22, label %bb23
bb22:
  %t68 = load ptr, ptr %l4, !tbaa !29
  %t70 = getelementptr %"compiler/ast:TypeDecl", ptr %t68, i32 0, i32 3
  %t71 = load ptr, ptr %t70, !tbaa !29
  store ptr %t71, ptr %l6, !tbaa !29
  %t73 = load ptr, ptr %l6, !tbaa !29
  store ptr %t73, ptr %l57, !tbaa !29
  store i1 false, ptr %l58, !tbaa !21
  %t74 = load ptr, ptr %l57, !tbaa !29
  %t75 = icmp ne ptr %t74, null
  br i1 %t75, label %bb24, label %bb25
bb23:
  br label %bb35
bb24:
  %t77 = load ptr, ptr %l57, !tbaa !29
  %t78 = load i64, ptr %t77, !range !{i64 0, i64 5}
  %t80 = icmp eq i64 %t78, 0
  store i1 %t80, ptr %l58, !tbaa !21
  br label %bb25
bb25:
  %t81 = load i1, ptr %l58, !tbaa !21
  br i1 %t81, label %bb26, label %bb27
bb26:
  %t82 = load ptr, ptr %l6, !tbaa !29
  %t84 = getelementptr { i64, [6 x i64] }, ptr %t82, i32 0, i32 1
  %t85 = getelementptr { ptr }, ptr %t84, i32 0, i32 0
  %t86 = load ptr, ptr %t85
  store ptr %t86, ptr %l7, !tbaa !29
  br label %bb28
bb27:
  br label %bb29
bb28:
  %t88 = load ptr, ptr %l7, !tbaa !29
  %t90 = getelementptr %"compiler/ast:StructBody", ptr %t88, i32 0, i32 5
  %t91 = load { i64, ptr }, ptr %t90, !tbaa !27
  store { i64, ptr } %t91, ptr %l5, !tbaa !27
  br label %bb34
bb29:
  br i1 true, label %bb30, label %bb31
bb30:
  br label %bb32
bb31:
  br label %bb33
bb32:
  br label %bb34
bb33:
  call void @__olang_check_failed(ptr @olang_loc_716010ab97145947_4b2ed26da3fa7223)
  unreachable
bb34:
  br label %bb35
bb35:
  %t93 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t95 = extractvalue { i64, ptr } %t93, 0
  %t97 = icmp sgt i64 %t95, 0
  br i1 %t97, label %bb36, label %bb37
bb36:
  %t99 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t99, ptr %l8, !tbaa !27
  store i64 0, ptr %l9, !tbaa !24
  %t101 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t103 = extractvalue { i64, ptr } %t101, 0
  store i64 %t103, ptr %l10, !tbaa !24
  br label %bb38
bb37:
  br label %bb49
bb38:
  %t105 = load i64, ptr %l9, !tbaa !24
  %t106 = load i64, ptr %l10, !tbaa !24
  %t109 = icmp slt i64 %t105, %t106
  %t111 = xor i1 %t109, true
  br i1 %t111, label %bb39, label %bb40
bb39:
  br label %bb48
bb40:
  br label %bb41
bb41:
  %t113 = load { i64, ptr }, ptr %l8, !tbaa !27
  store { i64, ptr } %t113, ptr %l75, !tbaa !27
  %t114 = load i64, ptr %l9, !tbaa !24
  %t116 = getelementptr { i64, ptr }, ptr %l75, i32 0, i32 1
  %t117 = load ptr, ptr %t116, !tbaa !27
  %t118 = getelementptr ptr, ptr %t117, i64 %t114
  %t119 = load ptr, ptr %t118, !tbaa !39
  store ptr %t119, ptr %l11, !tbaa !29
  %t121 = load ptr, ptr %l11, !tbaa !29
  %t123 = getelementptr %"compiler/ast:TypeParam", ptr %t121, i32 0, i32 1
  %t124 = load i32, ptr %t123, !tbaa !23
  %t127 = call i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aNameId_3e_2eHas_3ccompiler_2fsource_3aNameId_3e(ptr %s0, ptr %l3, i32 %t124)
  store i1 %t127, ptr %l81
  br label %bb42
bb42:
  %t128 = load i1, ptr %l81, !tbaa !21
  %t129 = xor i1 %t128, true
  br i1 %t129, label %bb43, label %bb44
bb43:
  %t131 = load ptr, ptr %l11, !tbaa !29
  %t133 = getelementptr %"compiler/ast:TypeParam", ptr %t131, i32 0, i32 1
  %t134 = load i32, ptr %t133, !tbaa !23
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aNameId_3e_2ePush_3ccompiler_2fsource_3aNameId_3e(ptr %s0, ptr %l3, i32 %t134)
  br label %bb45
bb44:
  br label %bb46
bb45:
  br label %bb46
bb46:
  br label %bb47
bb47:
  %t137 = load i64, ptr %l9, !tbaa !24
  %t139 = add i64 %t137, 1
  store i64 %t139, ptr %l9, !tbaa !24
  br label %bb38
bb48:
  br label %bb49
bb49:
  %t141 = load ptr, ptr %l0, !tbaa !29
  store ptr %t141, ptr %l88, !tbaa !29
  %t142 = load i64, ptr %l2, !tbaa !24
  store i64 %t142, ptr %l89, !tbaa !24
  %t144 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aNameId_3e_2eToArra_H4d02a0b2e27e8f31ffc99daa43750593(ptr %s0, ptr %s0, ptr %l3)
  store { i64, ptr } %t144, ptr %l91
  br label %bb50
bb50:
  %t145 = load ptr, ptr %l88, !tbaa !29
  %t146 = load i64, ptr %l89, !tbaa !24
  %t147 = load { i64, ptr }, ptr %l91, !tbaa !27
  call void @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eaddVars(ptr %v0, ptr %s0, ptr %t145, i64 %t146, { i64, ptr } %t147)
  br label %bb51
bb51:
  %t148 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t150 = extractvalue { i64, ptr } %t148, 0
  %t152 = icmp sgt i64 %t150, 0
  br i1 %t152, label %bb52, label %bb53
bb52:
  store %olang.scope zeroinitializer, ptr %s10
  %t154 = load ptr, ptr %l0, !tbaa !29
  %t156 = getelementptr %"compiler/generic:Program", ptr %t154, i32 0, i32 12
  %t157 = load i32, ptr %l1, !tbaa !23
  %t159 = sext i32 %t157 to i64
  %t162 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t156, i64 %t159)
  store i64 %t162, ptr %l99
  br label %bb54
bb53:
  br label %bb79
bb54:
  %t163 = load i64, ptr %l2, !tbaa !24
  %t165 = load i64, ptr %l99, !tbaa !24
  call void @compiler_2fgeneric_3aContext_2ector(ptr %t164, ptr %s10, i64 %t165, i64 %t163)
  call void @llvm.memmove.p0.p0.i64(ptr %l101, ptr %t164, i64 160, i1 false)
  br label %bb55
bb55:
  call void @llvm.memmove.p0.p0.i64(ptr %l12, ptr %l101, i64 160, i1 false)
  store i64 0, ptr %l13, !tbaa !24
  %t168 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aNameId_3e_2eLen_3ccompiler_2fsource_3aNameId_3e(ptr %s0, ptr %l3)
  store i64 %t168, ptr %l103
  br label %bb56
bb56:
  %t169 = load i64, ptr %l103, !tbaa !24
  store i64 %t169, ptr %l14, !tbaa !24
  store i64 1, ptr %l15, !tbaa !24
  %t170 = load i64, ptr %l14, !tbaa !24
  %t171 = load i64, ptr %l13, !tbaa !24
  %t174 = icmp sgt i64 %t170, %t171
  br i1 %t174, label %bb57, label %bb58
bb57:
  %t176 = load i64, ptr %l15, !tbaa !24
  %t178 = icmp sgt i64 %t176, 0
  br i1 %t178, label %bb59, label %bb60
bb58:
  store i64 0, ptr %l107, !tbaa !24
  br label %bb62
bb59:
  %t180 = load i64, ptr %l14, !tbaa !24
  %t181 = load i64, ptr %l13, !tbaa !24
  %t184 = sub i64 %t180, %t181
  %t185 = load i64, ptr %l15, !tbaa !24
  %t188 = add i64 %t184, %t185
  %t190 = sub i64 %t188, 1
  %t191 = load i64, ptr %l15, !tbaa !24
  %t194 = sdiv i64 %t190, %t191
  store i64 %t194, ptr %l110, !tbaa !24
  br label %bb61
bb60:
  store i64 0, ptr %l110, !tbaa !24
  br label %bb61
bb61:
  %t196 = load i64, ptr %l110, !tbaa !24
  store i64 %t196, ptr %l107, !tbaa !24
  br label %bb62
bb62:
  %t197 = load i64, ptr %l107, !tbaa !24
  store i64 %t197, ptr %l16, !tbaa !24
  store i64 0, ptr %l17, !tbaa !24
  br label %bb63
bb63:
  %t198 = load i64, ptr %l17, !tbaa !24
  %t199 = load i64, ptr %l16, !tbaa !24
  %t202 = icmp slt i64 %t198, %t199
  %t204 = xor i1 %t202, true
  br i1 %t204, label %bb64, label %bb65
bb64:
  br label %bb71
bb65:
  br label %bb66
bb66:
  %t206 = load i64, ptr %l13, !tbaa !24
  %t207 = load i64, ptr %l17, !tbaa !24
  %t208 = load i64, ptr %l15, !tbaa !24
  %t211 = mul i64 %t207, %t208
  %t214 = add i64 %t206, %t211
  store i64 %t214, ptr %l18, !tbaa !24
  %t216 = getelementptr %"compiler/generic:Context", ptr %l12, i32 0, i32 2
  store ptr %t216, ptr %l128, !tbaa !29
  %t217 = load i64, ptr %l18, !tbaa !24
  %t220 = call i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aNameId_3e_2eAt_3ccompiler_2fsource_3aNameId_3e(ptr %s0, ptr %l3, i64 %t217)
  store i32 %t220, ptr %l131
  br label %bb67
bb67:
  %t221 = load ptr, ptr %l0, !tbaa !29
  %t223 = getelementptr %"compiler/generic:Program", ptr %t221, i32 0, i32 2
  %t224 = load i64, ptr %l2, !tbaa !24
  %t225 = load i64, ptr %l18, !tbaa !24
  %t226 = load i64, ptr @G_2ecompiler_2ftypes_2eReadOnly, !tbaa !24
  %t231 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eVar(ptr %v0, ptr %t223, i64 %t224, i64 %t225, i64 %t226)
  store i32 %t231, ptr %l137
  br label %bb68
bb68:
  %t232 = load ptr, ptr %l128, !tbaa !29
  %t233 = load i32, ptr %l131, !tbaa !23
  %t234 = load i32, ptr %l137, !tbaa !23
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fsource_3aNameId_2c_20compil_H943a9bb03970f71acf57214091669a7d(ptr %s10, ptr %t232, i32 %t233, i32 %t234)
  br label %bb69
bb69:
  br label %bb70
bb70:
  %t235 = load i64, ptr %l17, !tbaa !24
  %t237 = add i64 %t235, 1
  store i64 %t237, ptr %l17, !tbaa !24
  br label %bb63
bb71:
  %t239 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t239, ptr %l19, !tbaa !27
  store i64 0, ptr %l20, !tbaa !24
  %t241 = load { i64, ptr }, ptr %l19, !tbaa !27
  %t243 = extractvalue { i64, ptr } %t241, 0
  store i64 %t243, ptr %l21, !tbaa !24
  br label %bb72
bb72:
  %t245 = load i64, ptr %l20, !tbaa !24
  %t246 = load i64, ptr %l21, !tbaa !24
  %t249 = icmp slt i64 %t245, %t246
  %t251 = xor i1 %t249, true
  br i1 %t251, label %bb73, label %bb74
bb73:
  br label %bb78
bb74:
  br label %bb75
bb75:
  %t253 = load { i64, ptr }, ptr %l19, !tbaa !27
  store { i64, ptr } %t253, ptr %l147, !tbaa !27
  %t254 = load i64, ptr %l20, !tbaa !24
  %t256 = getelementptr { i64, ptr }, ptr %l147, i32 0, i32 1
  %t257 = load ptr, ptr %t256, !tbaa !27
  %t258 = getelementptr ptr, ptr %t257, i64 %t254
  %t259 = load ptr, ptr %t258, !tbaa !39
  %t261 = load ptr, ptr %l0, !tbaa !29
  store ptr %t259, ptr %l152, !tbaa !29
  %t263 = load ptr, ptr %l152, !tbaa !29
  %t264 = call ptr @__olang_scope_of(ptr %t263, ptr null)
  %t265 = ptrtoint ptr %t264 to i64
  %t267 = inttoptr i64 %t265 to ptr
  %t270 = load ptr, ptr %l152, !tbaa !29
  call void @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2econstraint(ptr %v0, ptr %s10, ptr %t267, ptr %t261, ptr %l12, ptr %t270)
  br label %bb76
bb76:
  br label %bb77
bb77:
  %t271 = load i64, ptr %l20, !tbaa !24
  %t273 = add i64 %t271, 1
  store i64 %t273, ptr %l20, !tbaa !24
  br label %bb72
bb78:
  call void @__olang_scope_close(ptr %s10)
  br label %bb79
bb79:
  %t276 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aNameId_3e_2eLen_3ccompiler_2fsource_3aNameId_3e(ptr %s0, ptr %l3)
  store i64 %t276, ptr %l157
  br label %bb80
bb80:
  call void @__olang_scope_close(ptr %s0)
  %t277 = load i64, ptr %l157, !tbaa !24
  store i64 %t277, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eDefaultMethod(ptr %v0, ptr %a0, i32 %a1, i32 %a2) #0 {
entry:
  %l3 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l7 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l9 = alloca i64
  %l11 = alloca i64
  %l13 = alloca i64
  %s0 = alloca %olang.scope
  %rv = alloca i64
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t7 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eDefaultMethods(ptr %v0, ptr %s0, ptr %a0, i32 %a1, i32 %a2)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t7, ptr %l7
  br label %bb1
bb1:
  %t8 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l7
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t8, ptr %l3
  %t10 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %s0, ptr %l3)
  store i64 %t10, ptr %l9
  br label %bb2
bb2:
  %t11 = load i64, ptr %l9, !tbaa !24
  %t12 = icmp sgt i64 %t11, 0
  br i1 %t12, label %bb3, label %bb4
bb3:
  %t15 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %s0, ptr %l3, i64 0)
  store i64 %t15, ptr %l13
  br label %bb5
bb4:
  store i64 -1, ptr %l11, !tbaa !24
  br label %bb6
bb5:
  %t16 = load i64, ptr %l13, !tbaa !24
  store i64 %t16, ptr %l11, !tbaa !24
  br label %bb6
bb6:
  call void @__olang_scope_close(ptr %s0)
  %t17 = load i64, ptr %l11, !tbaa !24
  store i64 %t17, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eDescriptor(ptr %v0, ptr %a0, i64 %a1, i32 %a2, i64 %a3, i64 %a4) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l5 = alloca i32
  %l6 = alloca i32
  %l7 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l10 = alloca i32
  %l16 = alloca i32
  %l17 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l23 = alloca i1
  %l27 = alloca ptr
  %l32 = alloca i32
  %l36 = alloca ptr
  %l41 = alloca i32
  %l42 = alloca ptr
  %l43 = alloca i32
  %l45 = alloca ptr
  %l47 = alloca { i64, ptr }
  %l48 = alloca i32
  %l49 = alloca i32
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
  %t5 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2edescDecl(ptr %v0, ptr %t1, i64 %t2)
  store i32 %t5, ptr %l10
  br label %bb1
bb1:
  %t6 = load i32, ptr %l10, !tbaa !23
  store i32 %t6, ptr %l5, !tbaa !23
  %t7 = load i32, ptr %l5, !tbaa !23
  %t9 = icmp slt i32 %t7, 0
  br i1 %t9, label %bb2, label %bb3
bb2:
  %t11 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  call void @__olang_scope_close(ptr %s0)
  store i32 %t11, ptr %rv
  br label %ret
bb3:
  br label %bb4
bb4:
  %t13 = load ptr, ptr %l0, !tbaa !29
  %t15 = getelementptr %"compiler/generic:Program", ptr %t13, i32 0, i32 2
  %t17 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePrim(ptr %v0, ptr %s0, ptr %t15, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d3, i32 0, i32 1) })
  store i32 %t17, ptr %l16
  br label %bb5
bb5:
  %t18 = load i32, ptr %l16, !tbaa !23
  store i32 %t18, ptr %l6, !tbaa !23
  %t19 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2ector(ptr %s0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t19, ptr %l17
  br label %bb6
bb6:
  %t20 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l17
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t20, ptr %l7
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2ePush_3ccompiler_2ftypes_3aTypeId_3e(ptr %s0, ptr %l7, i32 %a2)
  br label %bb7
bb7:
  %t24 = load i64, ptr %l1, !tbaa !24
  %t25 = load i64, ptr @G_2ecompiler_2fgeneric_2eDescField, !tbaa !24
  %t28 = icmp eq i64 %t24, %t25
  br i1 %t28, label %bb8, label %bb9
bb8:
  store i1 true, ptr %l23, !tbaa !21
  br label %bb10
bb9:
  %t30 = load i64, ptr %l1, !tbaa !24
  %t31 = load i64, ptr @G_2ecompiler_2fgeneric_2eDescCase, !tbaa !24
  %t34 = icmp eq i64 %t30, %t31
  store i1 %t34, ptr %l23, !tbaa !21
  br label %bb10
bb10:
  %t36 = load i1, ptr %l23, !tbaa !21
  br i1 %t36, label %bb11, label %bb12
bb11:
  store ptr %l7, ptr %l27, !tbaa !29
  %t37 = load ptr, ptr %l0, !tbaa !29
  %t39 = getelementptr %"compiler/generic:Program", ptr %t37, i32 0, i32 2
  %t40 = load i32, ptr %l6, !tbaa !23
  %t45 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eConst(ptr %v0, ptr %t39, i32 %t40, i64 %a3)
  store i32 %t45, ptr %l32
  br label %bb13
bb12:
  br label %bb15
bb13:
  %t46 = load ptr, ptr %l27, !tbaa !29
  %t47 = load i32, ptr %l32, !tbaa !23
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2ePush_3ccompiler_2ftypes_3aTypeId_3e(ptr %s0, ptr %t46, i32 %t47)
  br label %bb14
bb14:
  br label %bb15
bb15:
  %t48 = load i64, ptr %l1, !tbaa !24
  %t49 = load i64, ptr @G_2ecompiler_2fgeneric_2eDescCase, !tbaa !24
  %t52 = icmp ne i64 %t48, %t49
  br i1 %t52, label %bb16, label %bb17
bb16:
  store ptr %l7, ptr %l36, !tbaa !29
  %t54 = load ptr, ptr %l0, !tbaa !29
  %t56 = getelementptr %"compiler/generic:Program", ptr %t54, i32 0, i32 2
  %t57 = load i32, ptr %l6, !tbaa !23
  %t62 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eConst(ptr %v0, ptr %t56, i32 %t57, i64 %a4)
  store i32 %t62, ptr %l41
  br label %bb18
bb17:
  br label %bb20
bb18:
  %t63 = load ptr, ptr %l36, !tbaa !29
  %t64 = load i32, ptr %l41, !tbaa !23
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2ePush_3ccompiler_2ftypes_3aTypeId_3e(ptr %s0, ptr %t63, i32 %t64)
  br label %bb19
bb19:
  br label %bb20
bb20:
  %t65 = load ptr, ptr %l0, !tbaa !29
  store ptr %t65, ptr %l42, !tbaa !29
  %t66 = load i32, ptr %l5, !tbaa !23
  store i32 %t66, ptr %l43, !tbaa !23
  %t67 = load ptr, ptr %l0, !tbaa !29
  %t69 = getelementptr %"compiler/generic:Program", ptr %t67, i32 0, i32 2
  store ptr %t69, ptr %l45, !tbaa !29
  %t71 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2eToArray_3ccompiler_2ftypes_3aTypeId_3e(ptr %s0, ptr %s0, ptr %l7)
  store { i64, ptr } %t71, ptr %l47
  br label %bb21
bb21:
  %t72 = load ptr, ptr %l45, !tbaa !29
  %t73 = load { i64, ptr }, ptr %l47, !tbaa !27
  %t74 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eList(ptr %v0, ptr %s0, ptr %t72, { i64, ptr } %t73)
  store i32 %t74, ptr %l48
  br label %bb22
bb22:
  %t75 = load ptr, ptr %l42, !tbaa !29
  %t76 = load i32, ptr %l43, !tbaa !23
  %t77 = load i32, ptr %l48, !tbaa !23
  %t78 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eInstance(ptr %v0, ptr %t75, i32 %t76, i32 %t77)
  store i32 %t78, ptr %l49
  br label %bb23
bb23:
  call void @__olang_scope_close(ptr %s0)
  %t79 = load i32, ptr %l49, !tbaa !23
  store i32 %t79, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local void @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eEntriesOf(ptr %v0, ptr %v1, ptr %a0, i32 %a1, ptr %a2) #0 {
entry:
  %l3 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l4 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %s0 = alloca %olang.scope
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aDeclId_3e_2ector(ptr %s0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1, ptr %l4
  br label %bb1
bb1:
  %t2 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l4
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t2, ptr %l3
  call void @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eentriesOf(ptr %v0, ptr %v1, ptr %s0, ptr %a0, i32 %a1, ptr %a2, ptr %l3)
  br label %bb2
bb2:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eErrSetOf(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l3 = alloca { i64, ptr }
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i32
  %l7 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l8 = alloca { i64, ptr }
  %l9 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l13 = alloca { i64, ptr }
  %l20 = alloca { i64, ptr }
  %l26 = alloca i1
  %l34 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l39 = alloca { i64, ptr }
  %l44 = alloca ptr
  %l48 = alloca i32
  %l49 = alloca i32
  %s0 = alloca %olang.scope
  %rv = alloca i32
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2ector(ptr %s0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1, ptr %l9
  br label %bb1
bb1:
  %t2 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l9
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t2, ptr %l2
  %t3 = load ptr, ptr %l0, !tbaa !29
  %t5 = getelementptr %"compiler/generic:Program", ptr %t3, i32 0, i32 2
  %t9 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t5, i32 %a1)
  store { i64, ptr } %t9, ptr %l13
  br label %bb2
bb2:
  %t10 = load { i64, ptr }, ptr %l13, !tbaa !27
  store { i64, ptr } %t10, ptr %l3, !tbaa !27
  store i64 0, ptr %l4, !tbaa !24
  %t11 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t13 = extractvalue { i64, ptr } %t11, 0
  store i64 %t13, ptr %l5, !tbaa !24
  br label %bb3
bb3:
  %t15 = load i64, ptr %l4, !tbaa !24
  %t16 = load i64, ptr %l5, !tbaa !24
  %t19 = icmp slt i64 %t15, %t16
  %t21 = xor i1 %t19, true
  br i1 %t21, label %bb4, label %bb5
bb4:
  br label %bb15
bb5:
  br label %bb6
bb6:
  %t23 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t23, ptr %l20, !tbaa !27
  %t24 = load i64, ptr %l4, !tbaa !24
  %t26 = getelementptr { i64, ptr }, ptr %l20, i32 0, i32 1
  %t27 = load ptr, ptr %t26, !tbaa !27
  %t28 = getelementptr i32, ptr %t27, i64 %t24
  %t29 = load i32, ptr %t28, !tbaa !33
  store i32 %t29, ptr %l6, !tbaa !23
  %t31 = load i32, ptr %l6, !tbaa !23
  %t32 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t35 = icmp ne i32 %t31, %t32
  br i1 %t35, label %bb7, label %bb8
bb7:
  %t37 = load i32, ptr %l6, !tbaa !23
  %t38 = load i32, ptr @G_2ecompiler_2ftypes_2eDefaultErrT, !tbaa !23
  %t41 = icmp ne i32 %t37, %t38
  store i1 %t41, ptr %l26, !tbaa !21
  br label %bb9
bb8:
  store i1 false, ptr %l26, !tbaa !21
  br label %bb9
bb9:
  %t43 = load i1, ptr %l26, !tbaa !21
  br i1 %t43, label %bb10, label %bb11
bb10:
  %t44 = load i32, ptr %l6, !tbaa !23
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2ePush_3ccompiler_2ftypes_3aTypeId_3e(ptr %s0, ptr %l2, i32 %t44)
  br label %bb12
bb11:
  br label %bb13
bb12:
  br label %bb13
bb13:
  br label %bb14
bb14:
  %t47 = load i64, ptr %l4, !tbaa !24
  %t49 = add i64 %t47, 1
  store i64 %t49, ptr %l4, !tbaa !24
  br label %bb3
bb15:
  %t51 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2ector(ptr %s0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t51, ptr %l34
  br label %bb16
bb16:
  %t52 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l34
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t52, ptr %l7
  %t53 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2emergeEntries(ptr %v0, ptr %s0, ptr %s0, ptr %t53, ptr %l2, ptr %l7)
  br label %bb17
bb17:
  %t58 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2eToArray_3ccompiler_2ftypes_3aTypeId_3e(ptr %s0, ptr %s0, ptr %l7)
  store { i64, ptr } %t58, ptr %l39
  br label %bb18
bb18:
  %t59 = load { i64, ptr }, ptr %l39, !tbaa !27
  store { i64, ptr } %t59, ptr %l8, !tbaa !27
  %t60 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t61 = load ptr, ptr %l0, !tbaa !29
  %t62 = getelementptr { ptr, ptr }, ptr null, i32 1
  %t63 = ptrtoint ptr %t62 to i64
  %t64 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 %t63, i64 8)
  %t65 = getelementptr { ptr, ptr }, ptr %t64, i32 0, i32 0
  store ptr %t61, ptr %t65, !tbaa !28
  call void @__olang_scope_escape(ptr %v0)
  %t67 = getelementptr { ptr, ptr }, ptr %t64, i32 0, i32 1
  store ptr %v0, ptr %t67, !tbaa !28
  %t68 = insertvalue { ptr, ptr } undef, ptr @olang_lambda_4, 0
  %t69 = insertvalue { ptr, ptr } %t68, ptr %t64, 1
  %t72 = extractvalue { ptr, ptr } %t69, 0
  %t73 = extractvalue { ptr, ptr } %t69, 1
  call void @std_2fprelude_2farray_2eArray_3ccompiler_2ftypes_3aTypeId_3e_2eSort_3ccompiler_2ftypes_3aTypeId_2c_20_3f_3e(ptr %s0, ptr %v0, { i64, ptr } %t60, ptr %t72, ptr %t73)
  br label %bb19
bb19:
  %t74 = load ptr, ptr %l0, !tbaa !29
  %t76 = getelementptr %"compiler/generic:Program", ptr %t74, i32 0, i32 2
  store ptr %t76, ptr %l44, !tbaa !29
  %t77 = load ptr, ptr %l0, !tbaa !29
  %t79 = getelementptr %"compiler/generic:Program", ptr %t77, i32 0, i32 2
  %t80 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t83 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eList(ptr %v0, ptr %s0, ptr %t79, { i64, ptr } %t80)
  store i32 %t83, ptr %l48
  br label %bb20
bb20:
  %t84 = load ptr, ptr %l44, !tbaa !29
  %t85 = load i32, ptr %l48, !tbaa !23
  %t86 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrSet(ptr %v0, ptr %t84, i32 %t85)
  store i32 %t86, ptr %l49
  br label %bb21
bb21:
  call void @__olang_scope_close(ptr %s0)
  %t87 = load i32, ptr %l49, !tbaa !23
  store i32 %t87, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnModule(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l5 = alloca %"compiler/generic:fnRow"
  %s0 = alloca %olang.scope
  %rv = alloca i64
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
  %t8 = getelementptr %"compiler/generic:fnRow", ptr %l5, i32 0, i32 0
  %t9 = load i64, ptr %t8, !tbaa !24
  call void @__olang_scope_close(ptr %s0)
  store i64 %t9, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnNamed(ptr %v0, ptr %a0, i64 %a1, i32 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l5 = alloca i64
  %l7 = alloca ptr
  %l11 = alloca %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0"
  %l12 = alloca i64
  %l13 = alloca i32
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
  %t2 = load i64, ptr %l1, !tbaa !24
  call void @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2efnsIn(ptr %v0, ptr %t1, i64 %t2)
  br label %bb1
bb1:
  %t5 = load ptr, ptr %l0, !tbaa !29
  %t7 = getelementptr %"compiler/generic:Program", ptr %t5, i32 0, i32 34
  store ptr %t7, ptr %l7, !tbaa !29
  %t8 = load i64, ptr %l1, !tbaa !24
  %t11 = sext i32 %a2 to i64
  %t14 = call %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" @std_2fpair_3aPair_3cI64_2c_20I64_3e_2ector(ptr %s0, i64 %t8, i64 %t11)
  store %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t14, ptr %l11
  br label %bb2
bb2:
  %t15 = load ptr, ptr %l7, !tbaa !29
  %t16 = load %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %l11
  %t17 = call { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H5696e1a008d256bf9453cde2b49c6c45(ptr %v0, ptr %t15, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t16)
  %t18 = extractvalue { i32, i64 } %t17, 1
  %t19 = extractvalue { i32, i64 } %t17, 0
  store i32 %t19, ptr %l13
  %t20 = icmp ne i32 %t19, 0
  br i1 %t20, label %bb4, label %ok.21, !prof !99
ok.21:
  store i64 %t18, ptr %l12
  br label %bb3
bb3:
  %t22 = load i64, ptr %l12, !tbaa !24
  store i64 %t22, ptr %l5, !tbaa !24
  br label %bb6
bb4:
  br label %bb5
bb5:
  store i64 -1, ptr %l5, !tbaa !24
  br label %bb6
bb6:
  call void @__olang_scope_close(ptr %s0)
  %t23 = load i64, ptr %l5, !tbaa !24
  store i64 %t23, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eImmut(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l4 = alloca i32
  %l11 = alloca i32
  %l15 = alloca i1
  %l18 = alloca i1
  %l20 = alloca i1
  %l22 = alloca ptr
  %l26 = alloca i32
  %l27 = alloca i32
  %l32 = alloca ptr
  %l36 = alloca i32
  %l37 = alloca i1
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load i32, ptr %l1, !tbaa !23
  %t5 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eDeclWord(ptr %v0, ptr %t1, i32 %t2)
  store i32 %t5, ptr %l4
  br label %bb1
bb1:
  %t6 = load i32, ptr %l4, !range !{i32 0, i32 3}
  %t8 = trunc i64 1 to i32
  %t9 = icmp eq i32 %t6, %t8
  br i1 %t9, label %bb2, label %bb3
bb2:
  store i1 true, ptr %rv
  br label %ret
bb3:
  br label %bb4
bb4:
  %t12 = load ptr, ptr %l0, !tbaa !29
  %t14 = getelementptr %"compiler/generic:Program", ptr %t12, i32 0, i32 2
  %t15 = load i32, ptr %l1, !tbaa !23
  %t18 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t14, i32 %t15)
  store i32 %t18, ptr %l11
  br label %bb5
bb5:
  %t19 = load i32, ptr %l11, !range !{i32 0, i32 33}
  %t21 = trunc i64 18 to i32
  %t22 = icmp eq i32 %t19, %t21
  %t24 = xor i1 %t22, true
  br i1 %t24, label %bb6, label %bb7
bb6:
  store i1 true, ptr %l15, !tbaa !21
  br label %bb9
bb7:
  %t26 = load ptr, ptr %l0, !tbaa !29
  %t27 = load i32, ptr %l1, !tbaa !23
  %t30 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eBody(ptr %v0, ptr %t26, i32 %t27)
  store i1 %t30, ptr %l18
  br label %bb8
bb8:
  %t31 = load i1, ptr %l18, !tbaa !21
  %t32 = xor i1 %t31, true
  store i1 %t32, ptr %l15, !tbaa !21
  br label %bb9
bb9:
  %t34 = load i1, ptr %l15, !tbaa !21
  br i1 %t34, label %bb10, label %bb11
bb10:
  store i1 true, ptr %l20, !tbaa !21
  br label %bb14
bb11:
  %t35 = load ptr, ptr %l0, !tbaa !29
  %t37 = getelementptr %"compiler/generic:Program", ptr %t35, i32 0, i32 2
  store ptr %t37, ptr %l22, !tbaa !29
  %t38 = load ptr, ptr %l0, !tbaa !29
  %t40 = getelementptr %"compiler/generic:Program", ptr %t38, i32 0, i32 2
  %t41 = load i32, ptr %l1, !tbaa !23
  %t44 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %t40, i32 %t41)
  store i32 %t44, ptr %l26
  br label %bb12
bb12:
  %t45 = load ptr, ptr %l22, !tbaa !29
  %t46 = load i32, ptr %l26, !tbaa !23
  %t47 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclKindOf(ptr %v0, ptr %t45, i32 %t46)
  store i32 %t47, ptr %l27
  br label %bb13
bb13:
  %t48 = load i32, ptr %l27, !range !{i32 0, i32 6}
  %t50 = trunc i64 4 to i32
  %t51 = icmp eq i32 %t48, %t50
  %t53 = xor i1 %t51, true
  store i1 %t53, ptr %l20, !tbaa !21
  br label %bb14
bb14:
  %t55 = load i1, ptr %l20, !tbaa !21
  br i1 %t55, label %bb15, label %bb16
bb15:
  store i1 false, ptr %rv
  br label %ret
bb16:
  br label %bb17
bb17:
  %t57 = load ptr, ptr %l0, !tbaa !29
  store ptr %t57, ptr %l32, !tbaa !29
  %t58 = load ptr, ptr %l0, !tbaa !29
  %t60 = getelementptr %"compiler/generic:Program", ptr %t58, i32 0, i32 2
  %t61 = load i32, ptr %l1, !tbaa !23
  %t64 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eBase(ptr %v0, ptr %t60, i32 %t61)
  store i32 %t64, ptr %l36
  br label %bb18
bb18:
  %t65 = load ptr, ptr %l32, !tbaa !29
  %t66 = load i32, ptr %l36, !tbaa !23
  %t67 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eImmut(ptr %v0, ptr %t65, i32 %t66)
  store i1 %t67, ptr %l37
  br label %bb19
bb19:
  %t68 = load i1, ptr %l37, !tbaa !21
  store i1 %t68, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local %"compiler/generic:Origin" @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eInstanceOrigin(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l5 = alloca %"compiler/generic:instance"
  %s0 = alloca %olang.scope
  %rv = alloca %"compiler/generic:Origin"
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
  %t8 = getelementptr %"compiler/generic:instance", ptr %l5, i32 0, i32 5
  %t9 = load %"compiler/generic:Origin", ptr %t8
  call void @__olang_scope_close(ptr %s0)
  store %"compiler/generic:Origin" %t9, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/generic:Origin", ptr %rv
  ret %"compiler/generic:Origin" %rr
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
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d5, i32 0, i32 1) }, ptr %l9, !tbaa !27
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
  %t28 = load i64, ptr %t27, !range !{i64 0, i64 30}
  %t30 = icmp eq i64 %t28, 14
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
  %t50 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s2, { i64, ptr } %t49, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d6, i32 0, i32 1) })
  store i1 %t50, ptr %l24
  br label %bb10
bb10:
  %t51 = load i1, ptr %l24, !tbaa !21
  %t52 = xor i1 %t51, true
  br i1 %t52, label %bb11, label %bb12
bb11:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d7, i32 0, i32 1) }, ptr %l26, !tbaa !27
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
  %t78 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s2, ptr %s2, { i64, ptr } %t76, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d8, i32 0, i32 1) })
  store i1 %t78, ptr %l34
  br label %bb15
bb15:
  %t79 = load i1, ptr %l34, !tbaa !21
  br i1 %t79, label %bb16, label %bb17
bb16:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d9, i32 0, i32 1) }, ptr %l36, !tbaa !27
  %t80 = load { i64, ptr }, ptr %l36, !tbaa !27
  store { i64, ptr } %t80, ptr %l35, !tbaa !27
  br label %bb18
bb17:
  %t82 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t84 = extractvalue { i64, ptr } %t82, 1
  %t85 = extractvalue { i64, ptr } %t82, 0
  %t86 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d10, i32 0, i32 1) }, 1
  %t87 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d10, i32 0, i32 1) }, 0
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
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d11, i32 0, i32 1) }, ptr %l42, !tbaa !27
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

define dso_local i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eMethodOf(ptr %v0, ptr %a0, i32 %a1, i32 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l3 = alloca i32
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca i64
  %l12 = alloca i64
  %l17 = alloca i32
  %l20 = alloca i32
  %l24 = alloca i32
  %l29 = alloca i32
  %l35 = alloca i32
  %l39 = alloca i64
  %l42 = alloca i64
  %l62 = alloca i64
  %l66 = alloca i64
  %l68 = alloca ptr
  %l72 = alloca %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0"
  %l73 = alloca i64
  %l74 = alloca i32
  %l83 = alloca i1
  %l86 = alloca i1
  %l91 = alloca i64
  %l95 = alloca i64
  %l96 = alloca i32
  %l101 = alloca i32
  %l105 = alloca i1
  %l108 = alloca i1
  %l112 = alloca ptr
  %l116 = alloca i32
  %l117 = alloca i32
  %l121 = alloca i1
  %l122 = alloca ptr
  %l126 = alloca i32
  %l127 = alloca i1
  %l133 = alloca i32
  %s3 = alloca %olang.scope
  %rv = alloca i64
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
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
  %t6 = load i32, ptr %l1, !tbaa !23
  %t9 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t5, i32 %t6)
  store i32 %t9, ptr %l17
  br label %bb2
bb2:
  %t10 = load i32, ptr %l17, !range !{i32 0, i32 33}
  %t12 = trunc i64 20 to i32
  %t13 = icmp eq i32 %t10, %t12
  br i1 %t13, label %bb3, label %bb4
bb3:
  %t15 = load ptr, ptr %l0, !tbaa !29
  %t17 = getelementptr %"compiler/generic:Program", ptr %t15, i32 0, i32 2
  %t18 = load i32, ptr %l1, !tbaa !23
  %t21 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eReferent(ptr %v0, ptr %t17, i32 %t18)
  store i32 %t21, ptr %l24
  br label %bb5
bb4:
  %t22 = load i32, ptr %l1, !tbaa !23
  store i32 %t22, ptr %l20, !tbaa !23
  br label %bb6
bb5:
  %t24 = load i32, ptr %l24, !tbaa !23
  store i32 %t24, ptr %l20, !tbaa !23
  br label %bb6
bb6:
  %t25 = load i32, ptr %l20, !tbaa !23
  store i32 %t25, ptr %l3, !tbaa !23
  %t26 = load ptr, ptr %l0, !tbaa !29
  %t28 = getelementptr %"compiler/generic:Program", ptr %t26, i32 0, i32 2
  %t29 = load i32, ptr %l3, !tbaa !23
  %t32 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eFuncTag(ptr %v0, ptr %t28, i32 %t29)
  store i32 %t32, ptr %l29
  br label %bb7
bb7:
  %t33 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t34 = load i32, ptr %l29, !tbaa !23
  %t36 = icmp ne i32 %t34, %t33
  br i1 %t36, label %bb8, label %bb9
bb8:
  %t38 = load ptr, ptr %l0, !tbaa !29
  %t40 = getelementptr %"compiler/generic:Program", ptr %t38, i32 0, i32 2
  %t41 = load i32, ptr %l3, !tbaa !23
  %t44 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eFuncTag(ptr %v0, ptr %t40, i32 %t41)
  store i32 %t44, ptr %l35
  br label %bb10
bb9:
  br label %bb11
bb10:
  %t45 = load i32, ptr %l35, !tbaa !23
  store i32 %t45, ptr %l3, !tbaa !23
  br label %bb11
bb11:
  store i64 0, ptr %l4, !tbaa !24
  store i64 16, ptr %l5, !tbaa !24
  store i64 1, ptr %l6, !tbaa !24
  %t46 = load i64, ptr %l5, !tbaa !24
  %t47 = load i64, ptr %l4, !tbaa !24
  %t50 = icmp sgt i64 %t46, %t47
  br i1 %t50, label %bb12, label %bb13
bb12:
  %t52 = load i64, ptr %l6, !tbaa !24
  %t54 = icmp sgt i64 %t52, 0
  br i1 %t54, label %bb14, label %bb15
bb13:
  store i64 0, ptr %l39, !tbaa !24
  br label %bb17
bb14:
  %t56 = load i64, ptr %l5, !tbaa !24
  %t57 = load i64, ptr %l4, !tbaa !24
  %t60 = sub i64 %t56, %t57
  %t61 = load i64, ptr %l6, !tbaa !24
  %t64 = add i64 %t60, %t61
  %t66 = sub i64 %t64, 1
  %t67 = load i64, ptr %l6, !tbaa !24
  %t70 = sdiv i64 %t66, %t67
  store i64 %t70, ptr %l42, !tbaa !24
  br label %bb16
bb15:
  store i64 0, ptr %l42, !tbaa !24
  br label %bb16
bb16:
  %t72 = load i64, ptr %l42, !tbaa !24
  store i64 %t72, ptr %l39, !tbaa !24
  br label %bb17
bb17:
  %t73 = load i64, ptr %l39, !tbaa !24
  store i64 %t73, ptr %l7, !tbaa !24
  store i64 0, ptr %l8, !tbaa !24
  br label %bb18
bb18:
  store %olang.scope zeroinitializer, ptr %s3
  %t74 = load i64, ptr %l8, !tbaa !24
  %t75 = load i64, ptr %l7, !tbaa !24
  %t78 = icmp slt i64 %t74, %t75
  %t80 = xor i1 %t78, true
  br i1 %t80, label %bb19, label %bb20
bb19:
  call void @__olang_scope_close(ptr %s3)
  br label %bb75
bb20:
  br label %bb21
bb21:
  %t82 = load i64, ptr %l4, !tbaa !24
  %t83 = load i64, ptr %l8, !tbaa !24
  %t84 = load i64, ptr %l6, !tbaa !24
  %t87 = mul i64 %t83, %t84
  %t90 = add i64 %t82, %t87
  store i64 %t90, ptr %l9, !tbaa !24
  %t92 = load ptr, ptr %l0, !tbaa !29
  %t93 = load i32, ptr %l3, !tbaa !23
  %t96 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2etypeKey(ptr %v0, ptr %t92, i32 %t93)
  store i64 %t96, ptr %l62
  br label %bb22
bb22:
  %t97 = load i64, ptr %l62, !tbaa !24
  store i64 %t97, ptr %l10, !tbaa !24
  %t98 = load i64, ptr %l10, !tbaa !24
  %t100 = icmp slt i64 %t98, 0
  br i1 %t100, label %bb23, label %bb24
bb23:
  call void @__olang_scope_close(ptr %s3)
  store i64 -1, ptr %rv
  br label %ret
bb24:
  br label %bb25
bb25:
  %t103 = load ptr, ptr %l0, !tbaa !29
  %t105 = getelementptr %"compiler/generic:Program", ptr %t103, i32 0, i32 36
  store ptr %t105, ptr %l68, !tbaa !29
  %t106 = load i64, ptr %l10, !tbaa !24
  %t109 = sext i32 %a2 to i64
  %t112 = call %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" @std_2fpair_3aPair_3cI64_2c_20I64_3e_2ector(ptr %s3, i64 %t106, i64 %t109)
  store %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t112, ptr %l72
  br label %bb26
bb26:
  %t113 = load ptr, ptr %l68, !tbaa !29
  %t114 = load %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %l72
  %t115 = call { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H5696e1a008d256bf9453cde2b49c6c45(ptr %v0, ptr %t113, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t114)
  %t116 = extractvalue { i32, i64 } %t115, 1
  %t117 = extractvalue { i32, i64 } %t115, 0
  store i32 %t117, ptr %l74
  %t118 = icmp ne i32 %t117, 0
  br i1 %t118, label %bb28, label %ok.119, !prof !99
ok.119:
  store i64 %t116, ptr %l73
  br label %bb27
bb27:
  %t120 = load i64, ptr %l73, !tbaa !24
  store i64 %t120, ptr %l66, !tbaa !24
  br label %bb30
bb28:
  br label %bb29
bb29:
  store i64 -1, ptr %l66, !tbaa !24
  br label %bb30
bb30:
  %t121 = load i64, ptr %l66, !tbaa !24
  store i64 %t121, ptr %l11, !tbaa !24
  %t122 = load i64, ptr %l11, !tbaa !24
  %t124 = icmp sge i64 %t122, 0
  br i1 %t124, label %bb31, label %bb32
bb31:
  store i64 -1, ptr %l12, !tbaa !24
  br label %bb33
bb32:
  br label %bb54
bb33:
  %t126 = load i64, ptr %l11, !tbaa !24
  %t128 = icmp sge i64 %t126, 0
  %t130 = xor i1 %t128, true
  br i1 %t130, label %bb34, label %bb35
bb34:
  br label %bb53
bb35:
  br label %bb36
bb36:
  %t132 = load ptr, ptr %l0, !tbaa !29
  %t133 = load i64, ptr %l11, !tbaa !24
  %t134 = load i32, ptr %l3, !tbaa !23
  %t138 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2erecvApplies(ptr %v0, ptr %t132, i64 %t133, i32 %t134)
  store i1 %t138, ptr %l83
  br label %bb37
bb37:
  %t139 = load i1, ptr %l83, !tbaa !21
  br i1 %t139, label %bb38, label %bb39
bb38:
  %t140 = load ptr, ptr %l0, !tbaa !29
  %t141 = load i64, ptr %l11, !tbaa !24
  %t144 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2erecvExact(ptr %v0, ptr %t140, i64 %t141)
  store i1 %t144, ptr %l86
  br label %bb40
bb39:
  br label %bb47
bb40:
  %t145 = load i1, ptr %l86, !tbaa !21
  br i1 %t145, label %bb41, label %bb42
bb41:
  %t146 = load i64, ptr %l11, !tbaa !24
  call void @__olang_scope_close(ptr %s3)
  store i64 %t146, ptr %rv
  br label %ret
bb42:
  br label %bb43
bb43:
  %t148 = load i64, ptr %l12, !tbaa !24
  %t150 = icmp slt i64 %t148, 0
  br i1 %t150, label %bb44, label %bb45
bb44:
  %t152 = load i64, ptr %l11, !tbaa !24
  store i64 %t152, ptr %l12, !tbaa !24
  br label %bb46
bb45:
  br label %bb46
bb46:
  br label %bb47
bb47:
  %t154 = load ptr, ptr %l0, !tbaa !29
  %t156 = getelementptr %"compiler/generic:Program", ptr %t154, i32 0, i32 37
  %t157 = load i64, ptr %l11, !tbaa !24
  %t160 = call { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2eGet_3cI64_2c_20I64_3e(ptr %v0, ptr %t156, i64 %t157)
  %t161 = extractvalue { i32, i64 } %t160, 1
  %t162 = extractvalue { i32, i64 } %t160, 0
  store i32 %t162, ptr %l96
  %t163 = icmp ne i32 %t162, 0
  br i1 %t163, label %bb49, label %ok.164, !prof !99
ok.164:
  store i64 %t161, ptr %l95
  br label %bb48
bb48:
  %t165 = load i64, ptr %l95, !tbaa !24
  store i64 %t165, ptr %l91, !tbaa !24
  br label %bb51
bb49:
  br label %bb50
bb50:
  store i64 -1, ptr %l91, !tbaa !24
  br label %bb51
bb51:
  %t166 = load i64, ptr %l91, !tbaa !24
  store i64 %t166, ptr %l11, !tbaa !24
  br label %bb52
bb52:
  br label %bb33
bb53:
  %t167 = load i64, ptr %l12, !tbaa !24
  call void @__olang_scope_close(ptr %s3)
  store i64 %t167, ptr %rv
  br label %ret
bb54:
  %t169 = load ptr, ptr %l0, !tbaa !29
  %t171 = getelementptr %"compiler/generic:Program", ptr %t169, i32 0, i32 2
  %t172 = load i32, ptr %l3, !tbaa !23
  %t175 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t171, i32 %t172)
  store i32 %t175, ptr %l101
  br label %bb55
bb55:
  %t176 = load i32, ptr %l101, !range !{i32 0, i32 33}
  %t178 = trunc i64 18 to i32
  %t179 = icmp eq i32 %t176, %t178
  %t181 = xor i1 %t179, true
  br i1 %t181, label %bb56, label %bb57
bb56:
  store i1 true, ptr %l105, !tbaa !21
  br label %bb59
bb57:
  %t183 = load ptr, ptr %l0, !tbaa !29
  %t184 = load i32, ptr %l3, !tbaa !23
  %t187 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eBody(ptr %v0, ptr %t183, i32 %t184)
  store i1 %t187, ptr %l108
  br label %bb58
bb58:
  %t188 = load i1, ptr %l108, !tbaa !21
  %t189 = xor i1 %t188, true
  store i1 %t189, ptr %l105, !tbaa !21
  br label %bb59
bb59:
  %t191 = load i1, ptr %l105, !tbaa !21
  br i1 %t191, label %bb60, label %bb61
bb60:
  call void @__olang_scope_close(ptr %s3)
  store i64 -1, ptr %rv
  br label %ret
bb61:
  br label %bb62
bb62:
  %t193 = load ptr, ptr %l0, !tbaa !29
  %t195 = getelementptr %"compiler/generic:Program", ptr %t193, i32 0, i32 2
  store ptr %t195, ptr %l112, !tbaa !29
  %t196 = load ptr, ptr %l0, !tbaa !29
  %t198 = getelementptr %"compiler/generic:Program", ptr %t196, i32 0, i32 2
  %t199 = load i32, ptr %l3, !tbaa !23
  %t202 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %t198, i32 %t199)
  store i32 %t202, ptr %l116
  br label %bb63
bb63:
  %t203 = load ptr, ptr %l112, !tbaa !29
  %t204 = load i32, ptr %l116, !tbaa !23
  %t205 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclKindOf(ptr %v0, ptr %t203, i32 %t204)
  store i32 %t205, ptr %l117
  br label %bb64
bb64:
  %t206 = load i32, ptr %l117, !range !{i32 0, i32 6}
  %t208 = trunc i64 4 to i32
  %t209 = icmp eq i32 %t206, %t208
  %t211 = xor i1 %t209, true
  br i1 %t211, label %bb65, label %bb66
bb65:
  store i1 true, ptr %l121, !tbaa !21
  br label %bb69
bb66:
  %t213 = load ptr, ptr %l0, !tbaa !29
  store ptr %t213, ptr %l122, !tbaa !29
  %t214 = load ptr, ptr %l0, !tbaa !29
  %t216 = getelementptr %"compiler/generic:Program", ptr %t214, i32 0, i32 2
  %t217 = load i32, ptr %l3, !tbaa !23
  %t220 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %t216, i32 %t217)
  store i32 %t220, ptr %l126
  br label %bb67
bb67:
  %t221 = load ptr, ptr %l122, !tbaa !29
  %t222 = load i32, ptr %l126, !tbaa !23
  %t223 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eextends(ptr %v0, ptr %t221, i32 %t222)
  store i1 %t223, ptr %l127
  br label %bb68
bb68:
  %t224 = load i1, ptr %l127, !tbaa !21
  %t225 = xor i1 %t224, true
  store i1 %t225, ptr %l121, !tbaa !21
  br label %bb69
bb69:
  %t227 = load i1, ptr %l121, !tbaa !21
  br i1 %t227, label %bb70, label %bb71
bb70:
  call void @__olang_scope_close(ptr %s3)
  store i64 -1, ptr %rv
  br label %ret
bb71:
  br label %bb72
bb72:
  %t229 = load ptr, ptr %l0, !tbaa !29
  %t231 = getelementptr %"compiler/generic:Program", ptr %t229, i32 0, i32 2
  %t232 = load i32, ptr %l3, !tbaa !23
  %t235 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eBase(ptr %v0, ptr %t231, i32 %t232)
  store i32 %t235, ptr %l133
  br label %bb73
bb73:
  %t236 = load i32, ptr %l133, !tbaa !23
  store i32 %t236, ptr %l3, !tbaa !23
  call void @__olang_scope_close(ptr %s3)
  br label %bb74
bb74:
  %t237 = load i64, ptr %l8, !tbaa !24
  %t239 = add i64 %t237, 1
  store i64 %t239, ptr %l8, !tbaa !24
  br label %bb18
bb75:
  store i64 -1, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
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

define dso_local { i32, { i64, ptr } } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eProject(ptr %v0, ptr %v1, ptr %v2, ptr %a0, i32 %a1, { i64, ptr } %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca { i64, ptr }
  %l3 = alloca %"compiler/generic:Desc"
  %l4 = alloca i32
  %l5 = alloca %"compiler/generic:Desc"
  %l7 = alloca i1
  %l10 = alloca %"compiler/generic:Desc"
  %l15 = alloca { i64, ptr }
  %l17 = alloca { i32, { i64, ptr } }
  %l18 = alloca { i64, ptr }
  %l19 = alloca i64
  %l20 = alloca { i64, ptr }
  %l23 = alloca { i32, { i64, ptr } }
  %l24 = alloca { i64, ptr }
  %l25 = alloca i64
  %l26 = alloca { i64, ptr }
  %l28 = alloca i1
  %l32 = alloca i32
  %l35 = alloca i1
  %l38 = alloca i1
  %l39 = alloca i1
  %l41 = alloca ptr
  %l45 = alloca i32
  %l46 = alloca i32
  %l52 = alloca i32
  %l53 = alloca { i64, ptr }
  %l55 = alloca { i32, { i64, ptr } }
  %l56 = alloca { i64, ptr }
  %l57 = alloca i64
  %l58 = alloca { i64, ptr }
  %l60 = alloca { i64, ptr }
  %l62 = alloca { i32, { i64, ptr } }
  %l63 = alloca { i64, ptr }
  %l64 = alloca i64
  %l65 = alloca { i64, ptr }
  %l67 = alloca i1
  %l70 = alloca i32
  %l74 = alloca i32
  %l80 = alloca i32
  %l81 = alloca { i64, ptr }
  %l83 = alloca { i32, { i64, ptr } }
  %l84 = alloca { i64, ptr }
  %l85 = alloca i64
  %l86 = alloca { i64, ptr }
  %l89 = alloca i32
  %l94 = alloca i32
  %l95 = alloca { i64, ptr }
  %l97 = alloca { i32, { i64, ptr } }
  %l98 = alloca { i64, ptr }
  %l99 = alloca i64
  %l100 = alloca { i64, ptr }
  %l102 = alloca { i64, ptr }
  %l104 = alloca { i32, { i64, ptr } }
  %l105 = alloca { i64, ptr }
  %l106 = alloca i64
  %l107 = alloca { i64, ptr }
  %l109 = alloca i1
  %l113 = alloca i32
  %l119 = alloca i32
  %l120 = alloca { i64, ptr }
  %l122 = alloca { i32, { i64, ptr } }
  %l123 = alloca { i64, ptr }
  %l124 = alloca i64
  %l125 = alloca { i64, ptr }
  %l127 = alloca { i64, ptr }
  %l129 = alloca { i32, { i64, ptr } }
  %l130 = alloca { i64, ptr }
  %l131 = alloca i64
  %l132 = alloca { i64, ptr }
  %l134 = alloca i1
  %l138 = alloca i32
  %l141 = alloca ptr
  %l145 = alloca i32
  %l146 = alloca i32
  %l147 = alloca { i64, ptr }
  %l149 = alloca { i32, { i64, ptr } }
  %l150 = alloca { i64, ptr }
  %l151 = alloca i64
  %l152 = alloca { i64, ptr }
  %l155 = alloca %"compiler/generic:Desc"
  %l159 = alloca ptr
  %l163 = alloca i32
  %l164 = alloca i32
  %l165 = alloca { i64, ptr }
  %l167 = alloca { i32, { i64, ptr } }
  %l168 = alloca { i64, ptr }
  %l169 = alloca i64
  %l170 = alloca { i64, ptr }
  %l172 = alloca { i64, ptr }
  %l174 = alloca { i32, { i64, ptr } }
  %l175 = alloca { i64, ptr }
  %l176 = alloca i64
  %l177 = alloca { i64, ptr }
  %l179 = alloca { i64, ptr }
  %l181 = alloca { i32, { i64, ptr } }
  %l182 = alloca { i64, ptr }
  %l183 = alloca i64
  %l184 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %rv = alloca { i32, { i64, ptr } }
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  store { i64, ptr } %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t3 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v1, ptr %s0, { i64, ptr } %t1, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d12, i32 0, i32 1) })
  store i1 %t3, ptr %l7
  br label %bb1
bb1:
  %t4 = load i1, ptr %l7, !tbaa !21
  br i1 %t4, label %bb2, label %bb3
bb2:
  %t5 = load ptr, ptr %l0, !tbaa !29
  %t6 = load i32, ptr %l1, !tbaa !23
  %t9 = call %"compiler/generic:Desc" @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eDescOf(ptr %v0, ptr %t5, i32 %t6)
  store %"compiler/generic:Desc" %t9, ptr %l10
  br label %bb4
bb3:
  br label %bb9
bb4:
  %t10 = load %"compiler/generic:Desc", ptr %l10
  store %"compiler/generic:Desc" %t10, ptr %l3
  %t11 = getelementptr %"compiler/generic:Desc", ptr %l3, i32 0, i32 0
  %t12 = load i64, ptr %t11, !tbaa !24
  %t13 = load i64, ptr @G_2ecompiler_2fgeneric_2eDescNone, !tbaa !24
  %t16 = icmp eq i64 %t12, %t13
  br i1 %t16, label %bb5, label %bb6
bb5:
  %t18 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  store { i64, ptr } { i64 60, ptr getelementptr inbounds (<{ i64, [60 x i8] }>, ptr @.d13, i32 0, i32 1) }, ptr %l15, !tbaa !27
  %t19 = load { i64, ptr }, ptr %l15, !tbaa !27
  %t21 = insertvalue { i32, { i64, ptr } } undef, i32 %t18, 0
  %t23 = insertvalue { i32, { i64, ptr } } %t21, { i64, ptr } %t19, 1
  store { i32, { i64, ptr } } %t23, ptr %l17
  %t24 = getelementptr { i32, { i64, ptr } }, ptr %l17, i32 0, i32 1
  %t25 = load { i64, ptr }, ptr %t24, !tbaa !27
  store { i64, ptr } %t25, ptr %l18, !tbaa !27
  %t26 = load { i64, ptr }, ptr %l18, !tbaa !27
  %t27 = extractvalue { i64, ptr } %t26, 0
  store i64 %t27, ptr %l19, !tbaa !24
  %t28 = load i64, ptr %l19, !tbaa !24
  %t29 = mul i64 %t28, 1
  %t30 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t29)
  %t31 = insertvalue { i64, ptr } undef, i64 %t28, 0
  %t32 = insertvalue { i64, ptr } %t31, ptr %t30, 1
  store { i64, ptr } %t32, ptr %l20, !tbaa !27
  %t33 = getelementptr { i64, ptr }, ptr %l20, i32 0, i32 1
  %t34 = load ptr, ptr %t33, !tbaa !27
  %t35 = getelementptr { i64, ptr }, ptr %l18, i32 0, i32 1
  %t36 = load ptr, ptr %t35, !tbaa !27
  %t37 = load i64, ptr %l19, !tbaa !24
  %t38 = mul i64 %t37, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t34, ptr %t36, i64 %t38, i1 false)
  %t39 = load { i64, ptr }, ptr %l20, !tbaa !27
  %t40 = getelementptr { i32, { i64, ptr } }, ptr %l17, i32 0, i32 1
  store { i64, ptr } %t39, ptr %t40, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  %t41 = load { i32, { i64, ptr } }, ptr %l17
  store { i32, { i64, ptr } } %t41, ptr %rv
  br label %ret
bb6:
  br label %bb7
bb7:
  %t42 = load ptr, ptr %l0, !tbaa !29
  %t43 = load %"compiler/generic:Desc", ptr %l3
  %t46 = call { i32, { i64, ptr } } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eDescType(ptr %v0, ptr %v2, ptr %t42, %"compiler/generic:Desc" %t43)
  store { i32, { i64, ptr } } %t46, ptr %l23
  br label %bb8
bb8:
  %t47 = getelementptr { i32, { i64, ptr } }, ptr %l23, i32 0, i32 1
  %t48 = load { i64, ptr }, ptr %t47, !tbaa !27
  store { i64, ptr } %t48, ptr %l24, !tbaa !27
  %t49 = load { i64, ptr }, ptr %l24, !tbaa !27
  %t50 = extractvalue { i64, ptr } %t49, 0
  store i64 %t50, ptr %l25, !tbaa !24
  %t51 = load i64, ptr %l25, !tbaa !24
  %t52 = mul i64 %t51, 1
  %t53 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t52)
  %t54 = insertvalue { i64, ptr } undef, i64 %t51, 0
  %t55 = insertvalue { i64, ptr } %t54, ptr %t53, 1
  store { i64, ptr } %t55, ptr %l26, !tbaa !27
  %t56 = getelementptr { i64, ptr }, ptr %l26, i32 0, i32 1
  %t57 = load ptr, ptr %t56, !tbaa !27
  %t58 = getelementptr { i64, ptr }, ptr %l24, i32 0, i32 1
  %t59 = load ptr, ptr %t58, !tbaa !27
  %t60 = load i64, ptr %l25, !tbaa !24
  %t61 = mul i64 %t60, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t57, ptr %t59, i64 %t61, i1 false)
  %t62 = load { i64, ptr }, ptr %l26, !tbaa !27
  %t63 = getelementptr { i32, { i64, ptr } }, ptr %l23, i32 0, i32 1
  store { i64, ptr } %t62, ptr %t63, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  %t64 = load { i32, { i64, ptr } }, ptr %l23
  store { i32, { i64, ptr } } %t64, ptr %rv
  br label %ret
bb9:
  %t65 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t67 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v1, ptr %s0, { i64, ptr } %t65, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d14, i32 0, i32 1) })
  store i1 %t67, ptr %l28
  br label %bb10
bb10:
  %t68 = load i1, ptr %l28, !tbaa !21
  br i1 %t68, label %bb11, label %bb12
bb11:
  %t69 = load ptr, ptr %l0, !tbaa !29
  %t71 = getelementptr %"compiler/generic:Program", ptr %t69, i32 0, i32 2
  %t72 = load i32, ptr %l1, !tbaa !23
  %t75 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t71, i32 %t72)
  store i32 %t75, ptr %l32
  br label %bb13
bb12:
  br label %bb27
bb13:
  %t76 = load i32, ptr %l32, !range !{i32 0, i32 33}
  %t78 = trunc i64 18 to i32
  %t79 = icmp eq i32 %t76, %t78
  br i1 %t79, label %bb14, label %bb15
bb14:
  %t81 = load ptr, ptr %l0, !tbaa !29
  %t82 = load i32, ptr %l1, !tbaa !23
  %t85 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eBody(ptr %v0, ptr %t81, i32 %t82)
  store i1 %t85, ptr %l38
  br label %bb16
bb15:
  store i1 false, ptr %l35, !tbaa !21
  br label %bb17
bb16:
  %t86 = load i1, ptr %l38, !tbaa !21
  store i1 %t86, ptr %l35, !tbaa !21
  br label %bb17
bb17:
  %t87 = load i1, ptr %l35, !tbaa !21
  br i1 %t87, label %bb18, label %bb19
bb18:
  %t88 = load ptr, ptr %l0, !tbaa !29
  %t90 = getelementptr %"compiler/generic:Program", ptr %t88, i32 0, i32 2
  store ptr %t90, ptr %l41, !tbaa !29
  %t91 = load ptr, ptr %l0, !tbaa !29
  %t93 = getelementptr %"compiler/generic:Program", ptr %t91, i32 0, i32 2
  %t94 = load i32, ptr %l1, !tbaa !23
  %t97 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %t93, i32 %t94)
  store i32 %t97, ptr %l45
  br label %bb20
bb19:
  store i1 false, ptr %l39, !tbaa !21
  br label %bb22
bb20:
  %t98 = load ptr, ptr %l41, !tbaa !29
  %t99 = load i32, ptr %l45, !tbaa !23
  %t100 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclKindOf(ptr %v0, ptr %t98, i32 %t99)
  store i32 %t100, ptr %l46
  br label %bb21
bb21:
  %t101 = load i32, ptr %l46, !range !{i32 0, i32 6}
  %t103 = trunc i64 4 to i32
  %t104 = icmp eq i32 %t101, %t103
  store i1 %t104, ptr %l39, !tbaa !21
  br label %bb22
bb22:
  %t106 = load i1, ptr %l39, !tbaa !21
  br i1 %t106, label %bb23, label %bb24
bb23:
  %t107 = load ptr, ptr %l0, !tbaa !29
  %t109 = getelementptr %"compiler/generic:Program", ptr %t107, i32 0, i32 2
  %t110 = load i32, ptr %l1, !tbaa !23
  %t113 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eBase(ptr %v0, ptr %t109, i32 %t110)
  store i32 %t113, ptr %l52
  br label %bb25
bb24:
  br label %bb26
bb25:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d15, i32 0, i32 1) }, ptr %l53, !tbaa !27
  %t114 = load { i64, ptr }, ptr %l53, !tbaa !27
  %t115 = load i32, ptr %l52, !tbaa !23
  %t116 = insertvalue { i32, { i64, ptr } } undef, i32 %t115, 0
  %t118 = insertvalue { i32, { i64, ptr } } %t116, { i64, ptr } %t114, 1
  store { i32, { i64, ptr } } %t118, ptr %l55
  %t119 = getelementptr { i32, { i64, ptr } }, ptr %l55, i32 0, i32 1
  %t120 = load { i64, ptr }, ptr %t119, !tbaa !27
  store { i64, ptr } %t120, ptr %l56, !tbaa !27
  %t121 = load { i64, ptr }, ptr %l56, !tbaa !27
  %t122 = extractvalue { i64, ptr } %t121, 0
  store i64 %t122, ptr %l57, !tbaa !24
  %t123 = load i64, ptr %l57, !tbaa !24
  %t124 = mul i64 %t123, 1
  %t125 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t124)
  %t126 = insertvalue { i64, ptr } undef, i64 %t123, 0
  %t127 = insertvalue { i64, ptr } %t126, ptr %t125, 1
  store { i64, ptr } %t127, ptr %l58, !tbaa !27
  %t128 = getelementptr { i64, ptr }, ptr %l58, i32 0, i32 1
  %t129 = load ptr, ptr %t128, !tbaa !27
  %t130 = getelementptr { i64, ptr }, ptr %l56, i32 0, i32 1
  %t131 = load ptr, ptr %t130, !tbaa !27
  %t132 = load i64, ptr %l57, !tbaa !24
  %t133 = mul i64 %t132, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t129, ptr %t131, i64 %t133, i1 false)
  %t134 = load { i64, ptr }, ptr %l58, !tbaa !27
  %t135 = getelementptr { i32, { i64, ptr } }, ptr %l55, i32 0, i32 1
  store { i64, ptr } %t134, ptr %t135, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  %t136 = load { i32, { i64, ptr } }, ptr %l55
  store { i32, { i64, ptr } } %t136, ptr %rv
  br label %ret
bb26:
  %t137 = load i32, ptr %l1, !tbaa !23
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d16, i32 0, i32 1) }, ptr %l60, !tbaa !27
  %t138 = load { i64, ptr }, ptr %l60, !tbaa !27
  %t140 = insertvalue { i32, { i64, ptr } } undef, i32 %t137, 0
  %t142 = insertvalue { i32, { i64, ptr } } %t140, { i64, ptr } %t138, 1
  store { i32, { i64, ptr } } %t142, ptr %l62
  %t143 = getelementptr { i32, { i64, ptr } }, ptr %l62, i32 0, i32 1
  %t144 = load { i64, ptr }, ptr %t143, !tbaa !27
  store { i64, ptr } %t144, ptr %l63, !tbaa !27
  %t145 = load { i64, ptr }, ptr %l63, !tbaa !27
  %t146 = extractvalue { i64, ptr } %t145, 0
  store i64 %t146, ptr %l64, !tbaa !24
  %t147 = load i64, ptr %l64, !tbaa !24
  %t148 = mul i64 %t147, 1
  %t149 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t148)
  %t150 = insertvalue { i64, ptr } undef, i64 %t147, 0
  %t151 = insertvalue { i64, ptr } %t150, ptr %t149, 1
  store { i64, ptr } %t151, ptr %l65, !tbaa !27
  %t152 = getelementptr { i64, ptr }, ptr %l65, i32 0, i32 1
  %t153 = load ptr, ptr %t152, !tbaa !27
  %t154 = getelementptr { i64, ptr }, ptr %l63, i32 0, i32 1
  %t155 = load ptr, ptr %t154, !tbaa !27
  %t156 = load i64, ptr %l64, !tbaa !24
  %t157 = mul i64 %t156, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t153, ptr %t155, i64 %t157, i1 false)
  %t158 = load { i64, ptr }, ptr %l65, !tbaa !27
  %t159 = getelementptr { i32, { i64, ptr } }, ptr %l62, i32 0, i32 1
  store { i64, ptr } %t158, ptr %t159, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  %t160 = load { i32, { i64, ptr } }, ptr %l62
  store { i32, { i64, ptr } } %t160, ptr %rv
  br label %ret
bb27:
  %t161 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t163 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v1, ptr %s0, { i64, ptr } %t161, { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d17, i32 0, i32 1) })
  store i1 %t163, ptr %l67
  br label %bb28
bb28:
  %t164 = load i1, ptr %l67, !tbaa !21
  br i1 %t164, label %bb29, label %bb30
bb29:
  %t165 = load ptr, ptr %l0, !tbaa !29
  %t166 = load i32, ptr %l1, !tbaa !23
  %t169 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eReflUnder(ptr %v0, ptr %t165, i32 %t166)
  store i32 %t169, ptr %l70
  br label %bb31
bb30:
  br label %bb42
bb31:
  %t170 = load i32, ptr %l70, !tbaa !23
  store i32 %t170, ptr %l4, !tbaa !23
  %t171 = load ptr, ptr %l0, !tbaa !29
  %t173 = getelementptr %"compiler/generic:Program", ptr %t171, i32 0, i32 2
  %t174 = load i32, ptr %l4, !tbaa !23
  %t177 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t173, i32 %t174)
  store i32 %t177, ptr %l74
  br label %bb32
bb32:
  %t178 = load i32, ptr %l74, !range !{i32 0, i32 33}
  %t180 = trunc i64 19 to i32
  %t181 = icmp eq i32 %t178, %t180
  br i1 %t181, label %bb33, label %bb34
bb33:
  %t183 = load ptr, ptr %l0, !tbaa !29
  %t185 = getelementptr %"compiler/generic:Program", ptr %t183, i32 0, i32 2
  %t186 = load i32, ptr %l4, !tbaa !23
  %t189 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eElem(ptr %v0, ptr %t185, i32 %t186)
  store i32 %t189, ptr %l80
  br label %bb35
bb34:
  br label %bb36
bb35:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d18, i32 0, i32 1) }, ptr %l81, !tbaa !27
  %t190 = load { i64, ptr }, ptr %l81, !tbaa !27
  %t191 = load i32, ptr %l80, !tbaa !23
  %t192 = insertvalue { i32, { i64, ptr } } undef, i32 %t191, 0
  %t194 = insertvalue { i32, { i64, ptr } } %t192, { i64, ptr } %t190, 1
  store { i32, { i64, ptr } } %t194, ptr %l83
  %t195 = getelementptr { i32, { i64, ptr } }, ptr %l83, i32 0, i32 1
  %t196 = load { i64, ptr }, ptr %t195, !tbaa !27
  store { i64, ptr } %t196, ptr %l84, !tbaa !27
  %t197 = load { i64, ptr }, ptr %l84, !tbaa !27
  %t198 = extractvalue { i64, ptr } %t197, 0
  store i64 %t198, ptr %l85, !tbaa !24
  %t199 = load i64, ptr %l85, !tbaa !24
  %t200 = mul i64 %t199, 1
  %t201 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t200)
  %t202 = insertvalue { i64, ptr } undef, i64 %t199, 0
  %t203 = insertvalue { i64, ptr } %t202, ptr %t201, 1
  store { i64, ptr } %t203, ptr %l86, !tbaa !27
  %t204 = getelementptr { i64, ptr }, ptr %l86, i32 0, i32 1
  %t205 = load ptr, ptr %t204, !tbaa !27
  %t206 = getelementptr { i64, ptr }, ptr %l84, i32 0, i32 1
  %t207 = load ptr, ptr %t206, !tbaa !27
  %t208 = load i64, ptr %l85, !tbaa !24
  %t209 = mul i64 %t208, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t205, ptr %t207, i64 %t209, i1 false)
  %t210 = load { i64, ptr }, ptr %l86, !tbaa !27
  %t211 = getelementptr { i32, { i64, ptr } }, ptr %l83, i32 0, i32 1
  store { i64, ptr } %t210, ptr %t211, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  %t212 = load { i32, { i64, ptr } }, ptr %l83
  store { i32, { i64, ptr } } %t212, ptr %rv
  br label %ret
bb36:
  %t213 = load ptr, ptr %l0, !tbaa !29
  %t214 = load i32, ptr %l4, !tbaa !23
  %t217 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eColumnsRow(ptr %v0, ptr %t213, i32 %t214)
  store i32 %t217, ptr %l89
  br label %bb37
bb37:
  %t218 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t219 = load i32, ptr %l89, !tbaa !23
  %t221 = icmp ne i32 %t219, %t218
  br i1 %t221, label %bb38, label %bb39
bb38:
  %t223 = load ptr, ptr %l0, !tbaa !29
  %t224 = load i32, ptr %l4, !tbaa !23
  %t227 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eColumnsRow(ptr %v0, ptr %t223, i32 %t224)
  store i32 %t227, ptr %l94
  br label %bb40
bb39:
  br label %bb41
bb40:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d19, i32 0, i32 1) }, ptr %l95, !tbaa !27
  %t228 = load { i64, ptr }, ptr %l95, !tbaa !27
  %t229 = load i32, ptr %l94, !tbaa !23
  %t230 = insertvalue { i32, { i64, ptr } } undef, i32 %t229, 0
  %t232 = insertvalue { i32, { i64, ptr } } %t230, { i64, ptr } %t228, 1
  store { i32, { i64, ptr } } %t232, ptr %l97
  %t233 = getelementptr { i32, { i64, ptr } }, ptr %l97, i32 0, i32 1
  %t234 = load { i64, ptr }, ptr %t233, !tbaa !27
  store { i64, ptr } %t234, ptr %l98, !tbaa !27
  %t235 = load { i64, ptr }, ptr %l98, !tbaa !27
  %t236 = extractvalue { i64, ptr } %t235, 0
  store i64 %t236, ptr %l99, !tbaa !24
  %t237 = load i64, ptr %l99, !tbaa !24
  %t238 = mul i64 %t237, 1
  %t239 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t238)
  %t240 = insertvalue { i64, ptr } undef, i64 %t237, 0
  %t241 = insertvalue { i64, ptr } %t240, ptr %t239, 1
  store { i64, ptr } %t241, ptr %l100, !tbaa !27
  %t242 = getelementptr { i64, ptr }, ptr %l100, i32 0, i32 1
  %t243 = load ptr, ptr %t242, !tbaa !27
  %t244 = getelementptr { i64, ptr }, ptr %l98, i32 0, i32 1
  %t245 = load ptr, ptr %t244, !tbaa !27
  %t246 = load i64, ptr %l99, !tbaa !24
  %t247 = mul i64 %t246, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t243, ptr %t245, i64 %t247, i1 false)
  %t248 = load { i64, ptr }, ptr %l100, !tbaa !27
  %t249 = getelementptr { i32, { i64, ptr } }, ptr %l97, i32 0, i32 1
  store { i64, ptr } %t248, ptr %t249, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  %t250 = load { i32, { i64, ptr } }, ptr %l97
  store { i32, { i64, ptr } } %t250, ptr %rv
  br label %ret
bb41:
  %t251 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  store { i64, ptr } { i64 56, ptr getelementptr inbounds (<{ i64, [56 x i8] }>, ptr @.d20, i32 0, i32 1) }, ptr %l102, !tbaa !27
  %t252 = load { i64, ptr }, ptr %l102, !tbaa !27
  %t254 = insertvalue { i32, { i64, ptr } } undef, i32 %t251, 0
  %t256 = insertvalue { i32, { i64, ptr } } %t254, { i64, ptr } %t252, 1
  store { i32, { i64, ptr } } %t256, ptr %l104
  %t257 = getelementptr { i32, { i64, ptr } }, ptr %l104, i32 0, i32 1
  %t258 = load { i64, ptr }, ptr %t257, !tbaa !27
  store { i64, ptr } %t258, ptr %l105, !tbaa !27
  %t259 = load { i64, ptr }, ptr %l105, !tbaa !27
  %t260 = extractvalue { i64, ptr } %t259, 0
  store i64 %t260, ptr %l106, !tbaa !24
  %t261 = load i64, ptr %l106, !tbaa !24
  %t262 = mul i64 %t261, 1
  %t263 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t262)
  %t264 = insertvalue { i64, ptr } undef, i64 %t261, 0
  %t265 = insertvalue { i64, ptr } %t264, ptr %t263, 1
  store { i64, ptr } %t265, ptr %l107, !tbaa !27
  %t266 = getelementptr { i64, ptr }, ptr %l107, i32 0, i32 1
  %t267 = load ptr, ptr %t266, !tbaa !27
  %t268 = getelementptr { i64, ptr }, ptr %l105, i32 0, i32 1
  %t269 = load ptr, ptr %t268, !tbaa !27
  %t270 = load i64, ptr %l106, !tbaa !24
  %t271 = mul i64 %t270, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t267, ptr %t269, i64 %t271, i1 false)
  %t272 = load { i64, ptr }, ptr %l107, !tbaa !27
  %t273 = getelementptr { i32, { i64, ptr } }, ptr %l104, i32 0, i32 1
  store { i64, ptr } %t272, ptr %t273, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  %t274 = load { i32, { i64, ptr } }, ptr %l104
  store { i32, { i64, ptr } } %t274, ptr %rv
  br label %ret
bb42:
  %t275 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t277 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v1, ptr %s0, { i64, ptr } %t275, { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d21, i32 0, i32 1) })
  store i1 %t277, ptr %l109
  br label %bb43
bb43:
  %t278 = load i1, ptr %l109, !tbaa !21
  br i1 %t278, label %bb44, label %bb45
bb44:
  %t279 = load ptr, ptr %l0, !tbaa !29
  %t281 = getelementptr %"compiler/generic:Program", ptr %t279, i32 0, i32 2
  %t282 = load i32, ptr %l1, !tbaa !23
  %t285 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t281, i32 %t282)
  store i32 %t285, ptr %l113
  br label %bb46
bb45:
  br label %bb51
bb46:
  %t286 = load i32, ptr %l113, !range !{i32 0, i32 33}
  %t288 = trunc i64 20 to i32
  %t289 = icmp eq i32 %t286, %t288
  br i1 %t289, label %bb47, label %bb48
bb47:
  %t291 = load ptr, ptr %l0, !tbaa !29
  %t293 = getelementptr %"compiler/generic:Program", ptr %t291, i32 0, i32 2
  %t294 = load i32, ptr %l1, !tbaa !23
  %t297 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eReferent(ptr %v0, ptr %t293, i32 %t294)
  store i32 %t297, ptr %l119
  br label %bb49
bb48:
  br label %bb50
bb49:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d22, i32 0, i32 1) }, ptr %l120, !tbaa !27
  %t298 = load { i64, ptr }, ptr %l120, !tbaa !27
  %t299 = load i32, ptr %l119, !tbaa !23
  %t300 = insertvalue { i32, { i64, ptr } } undef, i32 %t299, 0
  %t302 = insertvalue { i32, { i64, ptr } } %t300, { i64, ptr } %t298, 1
  store { i32, { i64, ptr } } %t302, ptr %l122
  %t303 = getelementptr { i32, { i64, ptr } }, ptr %l122, i32 0, i32 1
  %t304 = load { i64, ptr }, ptr %t303, !tbaa !27
  store { i64, ptr } %t304, ptr %l123, !tbaa !27
  %t305 = load { i64, ptr }, ptr %l123, !tbaa !27
  %t306 = extractvalue { i64, ptr } %t305, 0
  store i64 %t306, ptr %l124, !tbaa !24
  %t307 = load i64, ptr %l124, !tbaa !24
  %t308 = mul i64 %t307, 1
  %t309 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t308)
  %t310 = insertvalue { i64, ptr } undef, i64 %t307, 0
  %t311 = insertvalue { i64, ptr } %t310, ptr %t309, 1
  store { i64, ptr } %t311, ptr %l125, !tbaa !27
  %t312 = getelementptr { i64, ptr }, ptr %l125, i32 0, i32 1
  %t313 = load ptr, ptr %t312, !tbaa !27
  %t314 = getelementptr { i64, ptr }, ptr %l123, i32 0, i32 1
  %t315 = load ptr, ptr %t314, !tbaa !27
  %t316 = load i64, ptr %l124, !tbaa !24
  %t317 = mul i64 %t316, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t313, ptr %t315, i64 %t317, i1 false)
  %t318 = load { i64, ptr }, ptr %l125, !tbaa !27
  %t319 = getelementptr { i32, { i64, ptr } }, ptr %l122, i32 0, i32 1
  store { i64, ptr } %t318, ptr %t319, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  %t320 = load { i32, { i64, ptr } }, ptr %l122
  store { i32, { i64, ptr } } %t320, ptr %rv
  br label %ret
bb50:
  %t321 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  store { i64, ptr } { i64 29, ptr getelementptr inbounds (<{ i64, [29 x i8] }>, ptr @.d23, i32 0, i32 1) }, ptr %l127, !tbaa !27
  %t322 = load { i64, ptr }, ptr %l127, !tbaa !27
  %t324 = insertvalue { i32, { i64, ptr } } undef, i32 %t321, 0
  %t326 = insertvalue { i32, { i64, ptr } } %t324, { i64, ptr } %t322, 1
  store { i32, { i64, ptr } } %t326, ptr %l129
  %t327 = getelementptr { i32, { i64, ptr } }, ptr %l129, i32 0, i32 1
  %t328 = load { i64, ptr }, ptr %t327, !tbaa !27
  store { i64, ptr } %t328, ptr %l130, !tbaa !27
  %t329 = load { i64, ptr }, ptr %l130, !tbaa !27
  %t330 = extractvalue { i64, ptr } %t329, 0
  store i64 %t330, ptr %l131, !tbaa !24
  %t331 = load i64, ptr %l131, !tbaa !24
  %t332 = mul i64 %t331, 1
  %t333 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t332)
  %t334 = insertvalue { i64, ptr } undef, i64 %t331, 0
  %t335 = insertvalue { i64, ptr } %t334, ptr %t333, 1
  store { i64, ptr } %t335, ptr %l132, !tbaa !27
  %t336 = getelementptr { i64, ptr }, ptr %l132, i32 0, i32 1
  %t337 = load ptr, ptr %t336, !tbaa !27
  %t338 = getelementptr { i64, ptr }, ptr %l130, i32 0, i32 1
  %t339 = load ptr, ptr %t338, !tbaa !27
  %t340 = load i64, ptr %l131, !tbaa !24
  %t341 = mul i64 %t340, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t337, ptr %t339, i64 %t341, i1 false)
  %t342 = load { i64, ptr }, ptr %l132, !tbaa !27
  %t343 = getelementptr { i32, { i64, ptr } }, ptr %l129, i32 0, i32 1
  store { i64, ptr } %t342, ptr %t343, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  %t344 = load { i32, { i64, ptr } }, ptr %l129
  store { i32, { i64, ptr } } %t344, ptr %rv
  br label %ret
bb51:
  %t345 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t347 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v1, ptr %s0, { i64, ptr } %t345, { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d24, i32 0, i32 1) })
  store i1 %t347, ptr %l134
  br label %bb52
bb52:
  %t348 = load i1, ptr %l134, !tbaa !21
  br i1 %t348, label %bb53, label %bb54
bb53:
  %t349 = load ptr, ptr %l0, !tbaa !29
  %t351 = getelementptr %"compiler/generic:Program", ptr %t349, i32 0, i32 2
  %t352 = load i32, ptr %l1, !tbaa !23
  %t355 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t351, i32 %t352)
  store i32 %t355, ptr %l138
  br label %bb55
bb54:
  br label %bb67
bb55:
  %t356 = load i32, ptr %l138, !range !{i32 0, i32 33}
  %t358 = trunc i64 21 to i32
  %t359 = icmp eq i32 %t356, %t358
  br i1 %t359, label %bb56, label %bb57
bb56:
  %t361 = load ptr, ptr %l0, !tbaa !29
  store ptr %t361, ptr %l141, !tbaa !29
  %t362 = load ptr, ptr %l0, !tbaa !29
  %t364 = getelementptr %"compiler/generic:Program", ptr %t362, i32 0, i32 2
  %t365 = load i32, ptr %l1, !tbaa !23
  %t368 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrors(ptr %v0, ptr %t364, i32 %t365)
  store i32 %t368, ptr %l145
  br label %bb58
bb57:
  br label %bb60
bb58:
  %t369 = load ptr, ptr %l141, !tbaa !29
  %t370 = load i32, ptr %l145, !tbaa !23
  %t371 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eErrSetOf(ptr %v0, ptr %t369, i32 %t370)
  store i32 %t371, ptr %l146
  br label %bb59
bb59:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d25, i32 0, i32 1) }, ptr %l147, !tbaa !27
  %t372 = load { i64, ptr }, ptr %l147, !tbaa !27
  %t373 = load i32, ptr %l146, !tbaa !23
  %t374 = insertvalue { i32, { i64, ptr } } undef, i32 %t373, 0
  %t376 = insertvalue { i32, { i64, ptr } } %t374, { i64, ptr } %t372, 1
  store { i32, { i64, ptr } } %t376, ptr %l149
  %t377 = getelementptr { i32, { i64, ptr } }, ptr %l149, i32 0, i32 1
  %t378 = load { i64, ptr }, ptr %t377, !tbaa !27
  store { i64, ptr } %t378, ptr %l150, !tbaa !27
  %t379 = load { i64, ptr }, ptr %l150, !tbaa !27
  %t380 = extractvalue { i64, ptr } %t379, 0
  store i64 %t380, ptr %l151, !tbaa !24
  %t381 = load i64, ptr %l151, !tbaa !24
  %t382 = mul i64 %t381, 1
  %t383 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t382)
  %t384 = insertvalue { i64, ptr } undef, i64 %t381, 0
  %t385 = insertvalue { i64, ptr } %t384, ptr %t383, 1
  store { i64, ptr } %t385, ptr %l152, !tbaa !27
  %t386 = getelementptr { i64, ptr }, ptr %l152, i32 0, i32 1
  %t387 = load ptr, ptr %t386, !tbaa !27
  %t388 = getelementptr { i64, ptr }, ptr %l150, i32 0, i32 1
  %t389 = load ptr, ptr %t388, !tbaa !27
  %t390 = load i64, ptr %l151, !tbaa !24
  %t391 = mul i64 %t390, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t387, ptr %t389, i64 %t391, i1 false)
  %t392 = load { i64, ptr }, ptr %l152, !tbaa !27
  %t393 = getelementptr { i32, { i64, ptr } }, ptr %l149, i32 0, i32 1
  store { i64, ptr } %t392, ptr %t393, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  %t394 = load { i32, { i64, ptr } }, ptr %l149
  store { i32, { i64, ptr } } %t394, ptr %rv
  br label %ret
bb60:
  %t395 = load ptr, ptr %l0, !tbaa !29
  %t396 = load i32, ptr %l1, !tbaa !23
  %t399 = call %"compiler/generic:Desc" @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eDescOf(ptr %v0, ptr %t395, i32 %t396)
  store %"compiler/generic:Desc" %t399, ptr %l155
  br label %bb61
bb61:
  %t400 = load %"compiler/generic:Desc", ptr %l155
  store %"compiler/generic:Desc" %t400, ptr %l5
  %t401 = getelementptr %"compiler/generic:Desc", ptr %l5, i32 0, i32 0
  %t402 = load i64, ptr %t401, !tbaa !24
  %t403 = load i64, ptr @G_2ecompiler_2fgeneric_2eDescFunc, !tbaa !24
  %t406 = icmp eq i64 %t402, %t403
  br i1 %t406, label %bb62, label %bb63
bb62:
  %t408 = load ptr, ptr %l0, !tbaa !29
  store ptr %t408, ptr %l159, !tbaa !29
  %t409 = load ptr, ptr %l0, !tbaa !29
  %t411 = getelementptr %"compiler/generic:Program", ptr %t409, i32 0, i32 2
  %t412 = getelementptr %"compiler/generic:Desc", ptr %l5, i32 0, i32 1
  %t413 = load i32, ptr %t412, !tbaa !23
  %t416 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrors(ptr %v0, ptr %t411, i32 %t413)
  store i32 %t416, ptr %l163
  br label %bb64
bb63:
  br label %bb66
bb64:
  %t417 = load ptr, ptr %l159, !tbaa !29
  %t418 = load i32, ptr %l163, !tbaa !23
  %t419 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eErrSetOf(ptr %v0, ptr %t417, i32 %t418)
  store i32 %t419, ptr %l164
  br label %bb65
bb65:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d26, i32 0, i32 1) }, ptr %l165, !tbaa !27
  %t420 = load { i64, ptr }, ptr %l165, !tbaa !27
  %t421 = load i32, ptr %l164, !tbaa !23
  %t422 = insertvalue { i32, { i64, ptr } } undef, i32 %t421, 0
  %t424 = insertvalue { i32, { i64, ptr } } %t422, { i64, ptr } %t420, 1
  store { i32, { i64, ptr } } %t424, ptr %l167
  %t425 = getelementptr { i32, { i64, ptr } }, ptr %l167, i32 0, i32 1
  %t426 = load { i64, ptr }, ptr %t425, !tbaa !27
  store { i64, ptr } %t426, ptr %l168, !tbaa !27
  %t427 = load { i64, ptr }, ptr %l168, !tbaa !27
  %t428 = extractvalue { i64, ptr } %t427, 0
  store i64 %t428, ptr %l169, !tbaa !24
  %t429 = load i64, ptr %l169, !tbaa !24
  %t430 = mul i64 %t429, 1
  %t431 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t430)
  %t432 = insertvalue { i64, ptr } undef, i64 %t429, 0
  %t433 = insertvalue { i64, ptr } %t432, ptr %t431, 1
  store { i64, ptr } %t433, ptr %l170, !tbaa !27
  %t434 = getelementptr { i64, ptr }, ptr %l170, i32 0, i32 1
  %t435 = load ptr, ptr %t434, !tbaa !27
  %t436 = getelementptr { i64, ptr }, ptr %l168, i32 0, i32 1
  %t437 = load ptr, ptr %t436, !tbaa !27
  %t438 = load i64, ptr %l169, !tbaa !24
  %t439 = mul i64 %t438, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t435, ptr %t437, i64 %t439, i1 false)
  %t440 = load { i64, ptr }, ptr %l170, !tbaa !27
  %t441 = getelementptr { i32, { i64, ptr } }, ptr %l167, i32 0, i32 1
  store { i64, ptr } %t440, ptr %t441, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  %t442 = load { i32, { i64, ptr } }, ptr %l167
  store { i32, { i64, ptr } } %t442, ptr %rv
  br label %ret
bb66:
  %t443 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  store { i64, ptr } { i64 31, ptr getelementptr inbounds (<{ i64, [31 x i8] }>, ptr @.d27, i32 0, i32 1) }, ptr %l172, !tbaa !27
  %t444 = load { i64, ptr }, ptr %l172, !tbaa !27
  %t446 = insertvalue { i32, { i64, ptr } } undef, i32 %t443, 0
  %t448 = insertvalue { i32, { i64, ptr } } %t446, { i64, ptr } %t444, 1
  store { i32, { i64, ptr } } %t448, ptr %l174
  %t449 = getelementptr { i32, { i64, ptr } }, ptr %l174, i32 0, i32 1
  %t450 = load { i64, ptr }, ptr %t449, !tbaa !27
  store { i64, ptr } %t450, ptr %l175, !tbaa !27
  %t451 = load { i64, ptr }, ptr %l175, !tbaa !27
  %t452 = extractvalue { i64, ptr } %t451, 0
  store i64 %t452, ptr %l176, !tbaa !24
  %t453 = load i64, ptr %l176, !tbaa !24
  %t454 = mul i64 %t453, 1
  %t455 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t454)
  %t456 = insertvalue { i64, ptr } undef, i64 %t453, 0
  %t457 = insertvalue { i64, ptr } %t456, ptr %t455, 1
  store { i64, ptr } %t457, ptr %l177, !tbaa !27
  %t458 = getelementptr { i64, ptr }, ptr %l177, i32 0, i32 1
  %t459 = load ptr, ptr %t458, !tbaa !27
  %t460 = getelementptr { i64, ptr }, ptr %l175, i32 0, i32 1
  %t461 = load ptr, ptr %t460, !tbaa !27
  %t462 = load i64, ptr %l176, !tbaa !24
  %t463 = mul i64 %t462, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t459, ptr %t461, i64 %t463, i1 false)
  %t464 = load { i64, ptr }, ptr %l177, !tbaa !27
  %t465 = getelementptr { i32, { i64, ptr } }, ptr %l174, i32 0, i32 1
  store { i64, ptr } %t464, ptr %t465, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  %t466 = load { i32, { i64, ptr } }, ptr %l174
  store { i32, { i64, ptr } } %t466, ptr %rv
  br label %ret
bb67:
  %t467 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  store { i64, ptr } { i64 99, ptr getelementptr inbounds (<{ i64, [99 x i8] }>, ptr @.d28, i32 0, i32 1) }, ptr %l179, !tbaa !27
  %t468 = load { i64, ptr }, ptr %l179, !tbaa !27
  %t470 = insertvalue { i32, { i64, ptr } } undef, i32 %t467, 0
  %t472 = insertvalue { i32, { i64, ptr } } %t470, { i64, ptr } %t468, 1
  store { i32, { i64, ptr } } %t472, ptr %l181
  %t473 = getelementptr { i32, { i64, ptr } }, ptr %l181, i32 0, i32 1
  %t474 = load { i64, ptr }, ptr %t473, !tbaa !27
  store { i64, ptr } %t474, ptr %l182, !tbaa !27
  %t475 = load { i64, ptr }, ptr %l182, !tbaa !27
  %t476 = extractvalue { i64, ptr } %t475, 0
  store i64 %t476, ptr %l183, !tbaa !24
  %t477 = load i64, ptr %l183, !tbaa !24
  %t478 = mul i64 %t477, 1
  %t479 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t478)
  %t480 = insertvalue { i64, ptr } undef, i64 %t477, 0
  %t481 = insertvalue { i64, ptr } %t480, ptr %t479, 1
  store { i64, ptr } %t481, ptr %l184, !tbaa !27
  %t482 = getelementptr { i64, ptr }, ptr %l184, i32 0, i32 1
  %t483 = load ptr, ptr %t482, !tbaa !27
  %t484 = getelementptr { i64, ptr }, ptr %l182, i32 0, i32 1
  %t485 = load ptr, ptr %t484, !tbaa !27
  %t486 = load i64, ptr %l183, !tbaa !24
  %t487 = mul i64 %t486, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t483, ptr %t485, i64 %t487, i1 false)
  %t488 = load { i64, ptr }, ptr %l184, !tbaa !27
  %t489 = getelementptr { i32, { i64, ptr } }, ptr %l181, i32 0, i32 1
  store { i64, ptr } %t488, ptr %t489, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  %t490 = load { i32, { i64, ptr } }, ptr %l181
  store { i32, { i64, ptr } } %t490, ptr %rv
  br label %ret
ret:
  %rr = load { i32, { i64, ptr } }, ptr %rv
  ret { i32, { i64, ptr } } %rr
}

define dso_local { i64, ptr } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eReflName(ptr %v0, ptr %v1, ptr %a0, i32 %a1) #0 {
entry:
  %l2 = alloca %"std/prelude/text:StringBuilder"
  %l3 = alloca %"std/prelude/text:StringBuilder"
  %l8 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = call %"std/prelude/text:StringBuilder" @std_2fprelude_2ftext_3aStringBuilder_2ector(ptr %s0)
  store %"std/prelude/text:StringBuilder" %t1, ptr %l3
  br label %bb1
bb1:
  %t2 = load %"std/prelude/text:StringBuilder", ptr %l3
  store %"std/prelude/text:StringBuilder" %t2, ptr %l2
  call void @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2ereflName(ptr %v0, ptr %s0, ptr %a0, ptr %l2, i32 %a1)
  br label %bb2
bb2:
  %t9 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %s0, ptr %v1, ptr %l2)
  store { i64, ptr } %t9, ptr %l8
  br label %bb3
bb3:
  call void @__olang_scope_close(ptr %s0)
  %t10 = load { i64, ptr }, ptr %l8, !tbaa !27
  store { i64, ptr } %t10, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eSatisfies(ptr %v0, ptr %a0, i32 %a1, i32 %a2) #0 {
entry:
  %l6 = alloca %"compiler/generic:Unmet"
  %rv = alloca i1
  br label %start
start:
  br label %bb0
bb0:
  %t7 = call %"compiler/generic:Unmet" @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eMissing(ptr %v0, ptr %a0, i32 %a1, i32 %a2, i1 true, i64 0)
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

define dso_local i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eStorageOf(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, i32 %a2, ptr %a3) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca i32
  %l3 = alloca ptr
  %l4 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l5 = alloca i32
  %l8 = alloca i1
  %l12 = alloca i32
  %l16 = alloca i1
  %l20 = alloca i32
  %l23 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l29 = alloca i32
  %l33 = alloca i32
  %l37 = alloca i1
  %l41 = alloca i32
  %l44 = alloca ptr
  %l48 = alloca i32
  %l52 = alloca i32
  %l53 = alloca i1
  %s0 = alloca %olang.scope
  %rv = alloca i32
  store ptr %a0, ptr %l0
  store i32 %a2, ptr %l2
  store ptr %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l3, !tbaa !29
  %t3 = icmp eq ptr %t1, null
  br i1 %t3, label %bb1, label %bb2
bb1:
  store i1 true, ptr %l8, !tbaa !21
  br label %bb4
bb2:
  %t5 = load ptr, ptr %l0, !tbaa !29
  %t7 = getelementptr %"compiler/generic:Program", ptr %t5, i32 0, i32 2
  %t8 = load i32, ptr %l2, !tbaa !23
  %t11 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t7, i32 %t8)
  store i32 %t11, ptr %l12
  br label %bb3
bb3:
  %t12 = load i32, ptr %l12, !range !{i32 0, i32 33}
  %t14 = trunc i64 19 to i32
  %t15 = icmp eq i32 %t12, %t14
  %t17 = xor i1 %t15, true
  store i1 %t17, ptr %l8, !tbaa !21
  br label %bb4
bb4:
  %t19 = load i1, ptr %l8, !tbaa !21
  br i1 %t19, label %bb5, label %bb6
bb5:
  store i1 true, ptr %l16, !tbaa !21
  br label %bb8
bb6:
  %t20 = load ptr, ptr %l0, !tbaa !29
  %t22 = getelementptr %"compiler/generic:Program", ptr %t20, i32 0, i32 2
  %t23 = load i32, ptr %l2, !tbaa !23
  %t26 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eLength(ptr %v0, ptr %t22, i32 %t23)
  store i32 %t26, ptr %l20
  br label %bb7
bb7:
  %t27 = load i32, ptr %l20, !tbaa !23
  %t28 = icmp ne i32 %t27, 0
  store i1 %t28, ptr %l16, !tbaa !21
  br label %bb8
bb8:
  %t30 = load i1, ptr %l16, !tbaa !21
  br i1 %t30, label %bb9, label %bb10
bb9:
  %t31 = load i32, ptr %l2, !tbaa !23
  call void @__olang_scope_close(ptr %s0)
  store i32 %t31, ptr %rv
  br label %ret
bb10:
  br label %bb11
bb11:
  %t33 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fsource_3aNameId_Hcd3bbe8e64537e19c3182f51d0fe16c9(ptr %s0)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t33, ptr %l23
  br label %bb12
bb12:
  %t34 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l23
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t34, ptr %l4
  %t35 = load ptr, ptr %l0, !tbaa !29
  %t37 = load ptr, ptr %l3, !tbaa !29
  %t43 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eInfer(ptr %v0, ptr %v1, ptr %s0, ptr %v2, ptr %t35, ptr %a1, ptr %l4, ptr %t37)
  store i32 %t43, ptr %l29
  br label %bb13
bb13:
  %t44 = load i32, ptr %l29, !tbaa !23
  store i32 %t44, ptr %l5, !tbaa !23
  %t45 = load ptr, ptr %l0, !tbaa !29
  %t47 = getelementptr %"compiler/generic:Program", ptr %t45, i32 0, i32 2
  %t48 = load i32, ptr %l5, !tbaa !23
  %t51 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t47, i32 %t48)
  store i32 %t51, ptr %l33
  br label %bb14
bb14:
  %t52 = load i32, ptr %l33, !range !{i32 0, i32 33}
  %t54 = trunc i64 19 to i32
  %t55 = icmp eq i32 %t52, %t54
  %t57 = xor i1 %t55, true
  br i1 %t57, label %bb15, label %bb16
bb15:
  store i1 true, ptr %l37, !tbaa !21
  br label %bb18
bb16:
  %t59 = load ptr, ptr %l0, !tbaa !29
  %t61 = getelementptr %"compiler/generic:Program", ptr %t59, i32 0, i32 2
  %t62 = load i32, ptr %l5, !tbaa !23
  %t65 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eLength(ptr %v0, ptr %t61, i32 %t62)
  store i32 %t65, ptr %l41
  br label %bb17
bb17:
  %t66 = load i32, ptr %l41, !tbaa !23
  %t67 = icmp eq i32 %t66, 0
  store i1 %t67, ptr %l37, !tbaa !21
  br label %bb18
bb18:
  %t69 = load i1, ptr %l37, !tbaa !21
  br i1 %t69, label %bb19, label %bb20
bb19:
  %t70 = load i32, ptr %l2, !tbaa !23
  call void @__olang_scope_close(ptr %s0)
  store i32 %t70, ptr %rv
  br label %ret
bb20:
  br label %bb21
bb21:
  %t72 = load ptr, ptr %l0, !tbaa !29
  store ptr %t72, ptr %l44, !tbaa !29
  %t73 = load ptr, ptr %l0, !tbaa !29
  %t75 = getelementptr %"compiler/generic:Program", ptr %t73, i32 0, i32 2
  %t76 = load i32, ptr %l5, !tbaa !23
  %t79 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eElem(ptr %v0, ptr %t75, i32 %t76)
  store i32 %t79, ptr %l48
  br label %bb22
bb22:
  %t80 = load ptr, ptr %l0, !tbaa !29
  %t82 = getelementptr %"compiler/generic:Program", ptr %t80, i32 0, i32 2
  %t83 = load i32, ptr %l2, !tbaa !23
  %t86 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eElem(ptr %v0, ptr %t82, i32 %t83)
  store i32 %t86, ptr %l52
  br label %bb23
bb23:
  %t87 = load ptr, ptr %l44, !tbaa !29
  %t88 = load i32, ptr %l48, !tbaa !23
  %t89 = load i32, ptr %l52, !tbaa !23
  %t90 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eLengthsOnly(ptr %v0, ptr %t87, i32 %t88, i32 %t89)
  store i1 %t90, ptr %l53
  br label %bb24
bb24:
  %t91 = load i1, ptr %l53, !tbaa !21
  %t92 = xor i1 %t91, true
  br i1 %t92, label %bb25, label %bb26
bb25:
  %t94 = load i32, ptr %l2, !tbaa !23
  call void @__olang_scope_close(ptr %s0)
  store i32 %t94, ptr %rv
  br label %ret
bb26:
  br label %bb27
bb27:
  %t96 = load i32, ptr %l5, !tbaa !23
  call void @__olang_scope_close(ptr %s0)
  store i32 %t96, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eUnsubst(ptr %v0, ptr %a0, i32 %a1, i64 %a2, i32 %a3) #0 {
entry:
  %l0 = alloca ptr
  %l4 = alloca { i64, ptr }
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
  %l20 = alloca { i64, ptr }
  %l26 = alloca i64
  %l29 = alloca i64
  %l51 = alloca i64
  %l54 = alloca i64
  %l72 = alloca { i64, ptr }
  %l75 = alloca { i64, ptr }
  %l88 = alloca i32
  %rv = alloca i32
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/generic:Program", ptr %t1, i32 0, i32 2
  %t7 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t3, i32 %a3)
  store { i64, ptr } %t7, ptr %l20
  br label %bb1
bb1:
  %t8 = load { i64, ptr }, ptr %l20, !tbaa !27
  store { i64, ptr } %t8, ptr %l4, !tbaa !27
  store i64 0, ptr %l5, !tbaa !24
  %t9 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t11 = extractvalue { i64, ptr } %t9, 0
  store i64 %t11, ptr %l6, !tbaa !24
  store i64 1, ptr %l7, !tbaa !24
  %t13 = load i64, ptr %l6, !tbaa !24
  %t14 = load i64, ptr %l5, !tbaa !24
  %t17 = icmp sgt i64 %t13, %t14
  br i1 %t17, label %bb2, label %bb3
bb2:
  %t19 = load i64, ptr %l7, !tbaa !24
  %t21 = icmp sgt i64 %t19, 0
  br i1 %t21, label %bb4, label %bb5
bb3:
  store i64 0, ptr %l26, !tbaa !24
  br label %bb7
bb4:
  %t23 = load i64, ptr %l6, !tbaa !24
  %t24 = load i64, ptr %l5, !tbaa !24
  %t27 = sub i64 %t23, %t24
  %t28 = load i64, ptr %l7, !tbaa !24
  %t31 = add i64 %t27, %t28
  %t33 = sub i64 %t31, 1
  %t34 = load i64, ptr %l7, !tbaa !24
  %t37 = sdiv i64 %t33, %t34
  store i64 %t37, ptr %l29, !tbaa !24
  br label %bb6
bb5:
  store i64 0, ptr %l29, !tbaa !24
  br label %bb6
bb6:
  %t39 = load i64, ptr %l29, !tbaa !24
  store i64 %t39, ptr %l26, !tbaa !24
  br label %bb7
bb7:
  %t40 = load i64, ptr %l26, !tbaa !24
  store i64 %t40, ptr %l8, !tbaa !24
  store i64 0, ptr %l9, !tbaa !24
  br label %bb8
bb8:
  %t41 = load i64, ptr %l9, !tbaa !24
  %t42 = load i64, ptr %l8, !tbaa !24
  %t45 = icmp slt i64 %t41, %t42
  %t47 = xor i1 %t45, true
  br i1 %t47, label %bb9, label %bb10
bb9:
  br label %bb28
bb10:
  br label %bb11
bb11:
  %t49 = load i64, ptr %l5, !tbaa !24
  %t50 = load i64, ptr %l9, !tbaa !24
  %t51 = load i64, ptr %l7, !tbaa !24
  %t54 = mul i64 %t50, %t51
  %t57 = add i64 %t49, %t54
  store i64 %t57, ptr %l10, !tbaa !24
  store i64 0, ptr %l11, !tbaa !24
  %t59 = load i64, ptr %l10, !tbaa !24
  store i64 %t59, ptr %l12, !tbaa !24
  store i64 1, ptr %l13, !tbaa !24
  %t61 = load i64, ptr %l12, !tbaa !24
  %t62 = load i64, ptr %l11, !tbaa !24
  %t65 = icmp sgt i64 %t61, %t62
  br i1 %t65, label %bb12, label %bb13
bb12:
  %t67 = load i64, ptr %l13, !tbaa !24
  %t69 = icmp sgt i64 %t67, 0
  br i1 %t69, label %bb14, label %bb15
bb13:
  store i64 0, ptr %l51, !tbaa !24
  br label %bb17
bb14:
  %t71 = load i64, ptr %l12, !tbaa !24
  %t72 = load i64, ptr %l11, !tbaa !24
  %t75 = sub i64 %t71, %t72
  %t76 = load i64, ptr %l13, !tbaa !24
  %t79 = add i64 %t75, %t76
  %t81 = sub i64 %t79, 1
  %t82 = load i64, ptr %l13, !tbaa !24
  %t85 = sdiv i64 %t81, %t82
  store i64 %t85, ptr %l54, !tbaa !24
  br label %bb16
bb15:
  store i64 0, ptr %l54, !tbaa !24
  br label %bb16
bb16:
  %t87 = load i64, ptr %l54, !tbaa !24
  store i64 %t87, ptr %l51, !tbaa !24
  br label %bb17
bb17:
  %t88 = load i64, ptr %l51, !tbaa !24
  store i64 %t88, ptr %l14, !tbaa !24
  store i64 0, ptr %l15, !tbaa !24
  br label %bb18
bb18:
  %t89 = load i64, ptr %l15, !tbaa !24
  %t90 = load i64, ptr %l14, !tbaa !24
  %t93 = icmp slt i64 %t89, %t90
  %t95 = xor i1 %t93, true
  br i1 %t95, label %bb19, label %bb20
bb19:
  br label %bb26
bb20:
  br label %bb21
bb21:
  %t97 = load i64, ptr %l11, !tbaa !24
  %t98 = load i64, ptr %l15, !tbaa !24
  %t99 = load i64, ptr %l13, !tbaa !24
  %t102 = mul i64 %t98, %t99
  %t105 = add i64 %t97, %t102
  %t107 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t107, ptr %l72, !tbaa !27
  %t108 = load i64, ptr %l10, !tbaa !24
  %t110 = getelementptr { i64, ptr }, ptr %l72, i32 0, i32 1
  %t111 = load ptr, ptr %t110, !tbaa !27
  %t112 = getelementptr i32, ptr %t111, i64 %t108
  %t113 = load i32, ptr %t112, !tbaa !33
  %t114 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t114, ptr %l75, !tbaa !27
  %t117 = getelementptr { i64, ptr }, ptr %l75, i32 0, i32 1
  %t118 = load ptr, ptr %t117, !tbaa !27
  %t119 = getelementptr i32, ptr %t118, i64 %t105
  %t120 = load i32, ptr %t119, !tbaa !33
  %t123 = icmp eq i32 %t113, %t120
  br i1 %t123, label %bb22, label %bb23
bb22:
  %t125 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  store i32 %t125, ptr %rv
  br label %ret
bb23:
  br label %bb24
bb24:
  br label %bb25
bb25:
  %t127 = load i64, ptr %l15, !tbaa !24
  %t129 = add i64 %t127, 1
  store i64 %t129, ptr %l15, !tbaa !24
  br label %bb18
bb26:
  br label %bb27
bb27:
  %t131 = load i64, ptr %l9, !tbaa !24
  %t133 = add i64 %t131, 1
  store i64 %t133, ptr %l9, !tbaa !24
  br label %bb8
bb28:
  %t135 = load ptr, ptr %l0, !tbaa !29
  %t138 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t143 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eunsubst(ptr %v0, ptr %v0, ptr %t135, i32 %a1, i64 %a2, { i64, ptr } %t138)
  store i32 %t143, ptr %l88
  br label %bb29
bb29:
  %t144 = load i32, ptr %l88, !tbaa !23
  store i32 %t144, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local void @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eaddFnsIf(ptr %v0, ptr %v1, ptr %a0, i64 %a1, ptr %a2, i64 %a3, i64 %a4) #0 {
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
  call void @__olang_check_failed(ptr @olang_loc_6578d57707832f1c_86539f83bfff8b08)
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
  call void @__olang_check_failed(ptr @olang_loc_6578d57707832f1c_86539f83bfff8b08)
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
  call void @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eaddFns(ptr %v0, ptr %v1, ptr %t45, i64 %t46, { i64, ptr } %t44)
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
  call void @__olang_check_failed(ptr @olang_loc_8ca182a09b46660b_89b944af5f42b927)
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
  call void @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eaddFnsIf(ptr %v0, ptr %v1, ptr %t74, i64 %t75, ptr %t69, i64 %t70, i64 %t73)
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
  call void @__olang_check_failed(ptr @olang_loc_e2462b885589950a_643da267921b7c76)
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
  call void @__olang_check_failed(ptr @olang_loc_e2462b885589950a_643da267921b7c76)
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
  call void @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eaddFns(ptr %v0, ptr %v1, ptr %t135, i64 %t136, { i64, ptr } %t134)
  br label %bb35
bb35:
  br label %bb36
bb36:
  br label %ret
ret:
  ret void
}

define dso_local i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eanonEnum(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, { i64, ptr } %a2) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca { i64, ptr }
  %l3 = alloca { i64, ptr }
  %l4 = alloca { i64, ptr }
  %l5 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca i64
  %l12 = alloca { i64, ptr }
  %l13 = alloca i64
  %l14 = alloca i64
  %l17 = alloca i64
  %l22 = alloca i64
  %l26 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l32 = alloca i64
  %l35 = alloca i64
  %l54 = alloca { i64, ptr }
  %l58 = alloca i64
  %l61 = alloca { i64, ptr }
  %l64 = alloca i32
  %l65 = alloca { i64, ptr }
  %l71 = alloca { i64, ptr }
  %l81 = alloca { i64, ptr }
  %l92 = alloca ptr
  %l93 = alloca { i64, ptr }
  %l97 = alloca i32
  %l99 = alloca { i64, ptr }
  %l100 = alloca i32
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
  store i64 %t3, ptr %l17, !tbaa !24
  %t4 = load i64, ptr %l17, !tbaa !24
  %t5 = icmp sge i64 %t4, 0
  br i1 %t5, label %bb1, label %bb2
bb1:
  %t7 = load i64, ptr %l17, !tbaa !24
  %t8 = icmp sle i64 %t7, 2305843009213693951
  br i1 %t8, label %bb3, label %bb4
bb2:
  call void @__olang_check_failed(ptr @olang_loc_c23c218140effa50_4db4b783113412a4)
  unreachable
bb3:
  %t10 = load i64, ptr %l17, !tbaa !24
  %t11 = mul i64 %t10, 4
  %t12 = call ptr @__olang_scope_alloc_zeroed(ptr %s0, i64 %t11)
  %t13 = insertvalue { i64, ptr } undef, i64 %t10, 0
  %t14 = insertvalue { i64, ptr } %t13, ptr %t12, 1
  store { i64, ptr } %t14, ptr %l3, !tbaa !27
  %t16 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t18 = extractvalue { i64, ptr } %t16, 0
  store i64 %t18, ptr %l22, !tbaa !24
  %t19 = load i64, ptr %l22, !tbaa !24
  %t20 = icmp sge i64 %t19, 0
  br i1 %t20, label %bb5, label %bb6
bb4:
  call void @__olang_check_failed(ptr @olang_loc_c23c218140effa50_4db4b783113412a4)
  unreachable
bb5:
  %t22 = load i64, ptr %l22, !tbaa !24
  %t23 = icmp sle i64 %t22, 2305843009213693951
  br i1 %t23, label %bb7, label %bb8
bb6:
  call void @__olang_check_failed(ptr @olang_loc_7e185c750e76a77d_541671d994da32b1)
  unreachable
bb7:
  %t25 = load i64, ptr %l22, !tbaa !24
  %t26 = mul i64 %t25, 4
  %t27 = call ptr @__olang_scope_alloc_zeroed(ptr %s0, i64 %t26)
  %t28 = insertvalue { i64, ptr } undef, i64 %t25, 0
  %t29 = insertvalue { i64, ptr } %t28, ptr %t27, 1
  store { i64, ptr } %t29, ptr %l4, !tbaa !27
  %t31 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aNameId_3e_2ector(ptr %s0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t31, ptr %l26
  br label %bb9
bb8:
  call void @__olang_check_failed(ptr @olang_loc_7e185c750e76a77d_541671d994da32b1)
  unreachable
bb9:
  %t32 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l26
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t32, ptr %l5
  store i64 0, ptr %l6, !tbaa !24
  %t33 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t35 = extractvalue { i64, ptr } %t33, 0
  store i64 %t35, ptr %l7, !tbaa !24
  store i64 1, ptr %l8, !tbaa !24
  %t37 = load i64, ptr %l7, !tbaa !24
  %t38 = load i64, ptr %l6, !tbaa !24
  %t41 = icmp sgt i64 %t37, %t38
  br i1 %t41, label %bb10, label %bb11
bb10:
  %t43 = load i64, ptr %l8, !tbaa !24
  %t45 = icmp sgt i64 %t43, 0
  br i1 %t45, label %bb12, label %bb13
bb11:
  store i64 0, ptr %l32, !tbaa !24
  br label %bb15
bb12:
  %t47 = load i64, ptr %l7, !tbaa !24
  %t48 = load i64, ptr %l6, !tbaa !24
  %t51 = sub i64 %t47, %t48
  %t52 = load i64, ptr %l8, !tbaa !24
  %t55 = add i64 %t51, %t52
  %t57 = sub i64 %t55, 1
  %t58 = load i64, ptr %l8, !tbaa !24
  %t61 = sdiv i64 %t57, %t58
  store i64 %t61, ptr %l35, !tbaa !24
  br label %bb14
bb13:
  store i64 0, ptr %l35, !tbaa !24
  br label %bb14
bb14:
  %t63 = load i64, ptr %l35, !tbaa !24
  store i64 %t63, ptr %l32, !tbaa !24
  br label %bb15
bb15:
  %t64 = load i64, ptr %l32, !tbaa !24
  store i64 %t64, ptr %l9, !tbaa !24
  store i64 0, ptr %l10, !tbaa !24
  br label %bb16
bb16:
  %t65 = load i64, ptr %l10, !tbaa !24
  %t66 = load i64, ptr %l9, !tbaa !24
  %t69 = icmp slt i64 %t65, %t66
  %t71 = xor i1 %t69, true
  br i1 %t71, label %bb17, label %bb18
bb17:
  br label %bb32
bb18:
  br label %bb19
bb19:
  %t73 = load i64, ptr %l6, !tbaa !24
  %t74 = load i64, ptr %l10, !tbaa !24
  %t75 = load i64, ptr %l8, !tbaa !24
  %t78 = mul i64 %t74, %t75
  %t81 = add i64 %t73, %t78
  store i64 %t81, ptr %l11, !tbaa !24
  %t83 = load i64, ptr %l11, !tbaa !24
  %t84 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t84, ptr %l54, !tbaa !27
  %t85 = load i64, ptr %l11, !tbaa !24
  %t87 = getelementptr { i64, ptr }, ptr %l54, i32 0, i32 1
  %t88 = load ptr, ptr %t87, !tbaa !27
  %t89 = getelementptr ptr, ptr %t88, i64 %t85
  %t90 = load ptr, ptr %t89, !tbaa !39
  %t92 = getelementptr %"compiler/ast:CaseDecl", ptr %t90, i32 0, i32 1
  %t93 = load i32, ptr %t92, !tbaa !23
  %t96 = getelementptr { i64, ptr }, ptr %l3, i32 0, i32 1
  %t97 = load ptr, ptr %t96, !tbaa !27
  %t98 = getelementptr i32, ptr %t97, i64 %t83
  store i32 %t93, ptr %t98, !tbaa !33
  %t99 = load i64, ptr %l11, !tbaa !24
  store i64 %t99, ptr %l58, !tbaa !24
  %t100 = load ptr, ptr %l0, !tbaa !29
  %t102 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t102, ptr %l61, !tbaa !27
  %t103 = load i64, ptr %l11, !tbaa !24
  %t105 = getelementptr { i64, ptr }, ptr %l61, i32 0, i32 1
  %t106 = load ptr, ptr %t105, !tbaa !27
  %t107 = getelementptr ptr, ptr %t106, i64 %t103
  %t108 = load ptr, ptr %t107, !tbaa !39
  %t112 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2epayload(ptr %v0, ptr %v1, ptr %v2, ptr %t100, ptr %a1, ptr %t108, i32 -1)
  store i32 %t112, ptr %l64
  br label %bb20
bb20:
  %t113 = load i32, ptr %l64, !tbaa !23
  %t114 = load i64, ptr %l58, !tbaa !24
  %t115 = getelementptr { i64, ptr }, ptr %l4, i32 0, i32 1
  %t116 = load ptr, ptr %t115, !tbaa !27
  %t117 = getelementptr i32, ptr %t116, i64 %t114
  store i32 %t113, ptr %t117, !tbaa !33
  %t118 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t118, ptr %l65, !tbaa !27
  %t119 = load i64, ptr %l11, !tbaa !24
  %t121 = getelementptr { i64, ptr }, ptr %l65, i32 0, i32 1
  %t122 = load ptr, ptr %t121, !tbaa !27
  %t123 = getelementptr ptr, ptr %t122, i64 %t119
  %t124 = load ptr, ptr %t123, !tbaa !39
  %t126 = getelementptr %"compiler/ast:CaseDecl", ptr %t124, i32 0, i32 2
  %t127 = load { i64, ptr }, ptr %t126, !tbaa !27
  %t129 = extractvalue { i64, ptr } %t127, 0
  %t131 = icmp sgt i64 %t129, 0
  br i1 %t131, label %bb21, label %bb22
bb21:
  %t133 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t133, ptr %l71, !tbaa !27
  %t134 = load i64, ptr %l11, !tbaa !24
  %t136 = getelementptr { i64, ptr }, ptr %l71, i32 0, i32 1
  %t137 = load ptr, ptr %t136, !tbaa !27
  %t138 = getelementptr ptr, ptr %t137, i64 %t134
  %t139 = load ptr, ptr %t138, !tbaa !39
  %t141 = getelementptr %"compiler/ast:CaseDecl", ptr %t139, i32 0, i32 2
  %t142 = load { i64, ptr }, ptr %t141, !tbaa !27
  store { i64, ptr } %t142, ptr %l12, !tbaa !27
  store i64 0, ptr %l13, !tbaa !24
  %t144 = load { i64, ptr }, ptr %l12, !tbaa !27
  %t146 = extractvalue { i64, ptr } %t144, 0
  store i64 %t146, ptr %l14, !tbaa !24
  br label %bb23
bb22:
  br label %bb30
bb23:
  %t148 = load i64, ptr %l13, !tbaa !24
  %t149 = load i64, ptr %l14, !tbaa !24
  %t152 = icmp slt i64 %t148, %t149
  %t154 = xor i1 %t152, true
  br i1 %t154, label %bb24, label %bb25
bb24:
  br label %bb29
bb25:
  br label %bb26
bb26:
  %t156 = load { i64, ptr }, ptr %l12, !tbaa !27
  store { i64, ptr } %t156, ptr %l81, !tbaa !27
  %t157 = load i64, ptr %l13, !tbaa !24
  %t159 = getelementptr { i64, ptr }, ptr %l81, i32 0, i32 1
  %t160 = load ptr, ptr %t159, !tbaa !27
  %t161 = getelementptr ptr, ptr %t160, i64 %t157
  %t162 = load ptr, ptr %t161, !tbaa !39
  %t166 = getelementptr %"compiler/ast:Param", ptr %t162, i32 0, i32 1
  %t167 = load i32, ptr %t166, !tbaa !23
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aNameId_3e_2ePush_3ccompiler_2fsource_3aNameId_3e(ptr %s0, ptr %l5, i32 %t167)
  br label %bb27
bb27:
  br label %bb28
bb28:
  %t170 = load i64, ptr %l13, !tbaa !24
  %t172 = add i64 %t170, 1
  store i64 %t172, ptr %l13, !tbaa !24
  br label %bb23
bb29:
  br label %bb30
bb30:
  br label %bb31
bb31:
  %t174 = load i64, ptr %l10, !tbaa !24
  %t176 = add i64 %t174, 1
  store i64 %t176, ptr %l10, !tbaa !24
  br label %bb16
bb32:
  %t178 = load ptr, ptr %l0, !tbaa !29
  %t180 = getelementptr %"compiler/generic:Program", ptr %t178, i32 0, i32 2
  store ptr %t180, ptr %l92, !tbaa !29
  %t181 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t181, ptr %l93, !tbaa !27
  %t182 = load ptr, ptr %l0, !tbaa !29
  %t184 = getelementptr %"compiler/generic:Program", ptr %t182, i32 0, i32 2
  %t185 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t188 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eList(ptr %v0, ptr %s0, ptr %t184, { i64, ptr } %t185)
  store i32 %t188, ptr %l97
  br label %bb33
bb33:
  %t190 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aNameId_3e_2eToArra_H4d02a0b2e27e8f31ffc99daa43750593(ptr %s0, ptr %s0, ptr %l5)
  store { i64, ptr } %t190, ptr %l99
  br label %bb34
bb34:
  %t191 = load ptr, ptr %l92, !tbaa !29
  %t192 = load { i64, ptr }, ptr %l93, !tbaa !27
  %t193 = load i32, ptr %l97, !tbaa !23
  %t194 = load { i64, ptr }, ptr %l99, !tbaa !27
  %t195 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eAnonEnum(ptr %v0, ptr %s0, ptr %s0, ptr %t191, { i64, ptr } %t192, i32 %t193, { i64, ptr } %t194)
  store i32 %t195, ptr %l100
  br label %bb35
bb35:
  call void @__olang_scope_close(ptr %s0)
  %t196 = load i32, ptr %l100, !tbaa !23
  store i32 %t196, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2ebufferUnended(ptr %v0, ptr %v1, ptr %a0, i32 %a1, ptr %a2, i64 %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l7 = alloca i1
  %l9 = alloca i1
  %l13 = alloca i1
  %l14 = alloca i1
  %l18 = alloca i1
  %l26 = alloca i32
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
  %t7 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsRef(ptr %v0, ptr %t3, i32 %t4)
  store i1 %t7, ptr %l7
  br label %bb1
bb1:
  %t8 = load i1, ptr %l7, !tbaa !21
  %t9 = xor i1 %t8, true
  br i1 %t9, label %bb2, label %bb3
bb2:
  %t11 = load ptr, ptr %l0, !tbaa !29
  %t13 = getelementptr %"compiler/generic:Program", ptr %t11, i32 0, i32 2
  %t14 = load i32, ptr %l1, !tbaa !23
  %t17 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eNeedsDrop(ptr %v0, ptr %t13, i32 %t14)
  store i1 %t17, ptr %l13
  br label %bb4
bb3:
  store i1 false, ptr %l9, !tbaa !21
  br label %bb5
bb4:
  %t18 = load i1, ptr %l13, !tbaa !21
  store i1 %t18, ptr %l9, !tbaa !21
  br label %bb5
bb5:
  %t19 = load i1, ptr %l9, !tbaa !21
  br i1 %t19, label %bb6, label %bb7
bb6:
  %t20 = load ptr, ptr %l0, !tbaa !29
  %t22 = getelementptr %"compiler/generic:Program", ptr %t20, i32 0, i32 2
  %t23 = load i32, ptr %l1, !tbaa !23
  %t26 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eUnique(ptr %v0, ptr %t22, i32 %t23)
  store i1 %t26, ptr %l18
  br label %bb8
bb7:
  store i1 false, ptr %l14, !tbaa !21
  br label %bb9
bb8:
  %t27 = load i1, ptr %l18, !tbaa !21
  %t28 = xor i1 %t27, true
  store i1 %t28, ptr %l14, !tbaa !21
  br label %bb9
bb9:
  %t30 = load i1, ptr %l14, !tbaa !21
  br i1 %t30, label %bb10, label %bb11
bb10:
  %t31 = load i32, ptr %l1, !tbaa !23
  store i32 %t31, ptr %rv
  br label %ret
bb11:
  br label %bb12
bb12:
  %t33 = load ptr, ptr %l0, !tbaa !29
  %t34 = load i32, ptr %l1, !tbaa !23
  %t38 = add i64 %a3, 1
  %t43 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eunended(ptr %v0, ptr %v1, ptr %t33, i32 %t34, ptr %a2, i64 %t38, i1 false)
  store i32 %t43, ptr %l26
  br label %bb13
bb13:
  %t44 = load i32, ptr %l26, !tbaa !23
  store i32 %t44, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eentryHeld(ptr %v0, ptr %v1, ptr %a0, i32 %a1, ptr %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l3 = alloca ptr
  %l4 = alloca i64
  %l5 = alloca i32
  %l7 = alloca i64
  %l9 = alloca i64
  %l14 = alloca i32
  %l18 = alloca i32
  %l22 = alloca i32
  %l24 = alloca i1
  %l28 = alloca i64
  %l32 = alloca i64
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store ptr %a2, ptr %l3, !tbaa !29
  store i64 0, ptr %l4, !tbaa !24
  br label %bb1
bb1:
  %t3 = load i64, ptr %l4, !tbaa !24
  store i64 %t3, ptr %l7, !tbaa !24
  %t4 = load ptr, ptr %l3, !tbaa !29
  %t6 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2eLen_3ccompiler_2ftypes_3aTypeId_3e(ptr %v1, ptr %t4)
  store i64 %t6, ptr %l9
  br label %bb2
bb2:
  %t7 = load i64, ptr %l7, !tbaa !24
  %t8 = load i64, ptr %l9, !tbaa !24
  %t9 = icmp slt i64 %t7, %t8
  %t11 = xor i1 %t9, true
  br i1 %t11, label %bb3, label %bb4
bb3:
  br label %bb18
bb4:
  br label %bb5
bb5:
  %t13 = load ptr, ptr %l3, !tbaa !29
  %t14 = load i64, ptr %l4, !tbaa !24
  %t17 = call i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2eAt_3ccompiler_2ftypes_3aTypeId_3e(ptr %v1, ptr %t13, i64 %t14)
  store i32 %t17, ptr %l14
  br label %bb6
bb6:
  %t18 = load i32, ptr %l14, !tbaa !23
  store i32 %t18, ptr %l5, !tbaa !23
  %t19 = load ptr, ptr %l0, !tbaa !29
  %t21 = getelementptr %"compiler/generic:Program", ptr %t19, i32 0, i32 2
  %t22 = load i32, ptr %l5, !tbaa !23
  %t25 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrOf(ptr %v0, ptr %t21, i32 %t22)
  store i32 %t25, ptr %l18
  br label %bb7
bb7:
  %t26 = load ptr, ptr %l0, !tbaa !29
  %t28 = getelementptr %"compiler/generic:Program", ptr %t26, i32 0, i32 2
  %t29 = load i32, ptr %l1, !tbaa !23
  %t32 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrOf(ptr %v0, ptr %t28, i32 %t29)
  store i32 %t32, ptr %l22
  br label %bb8
bb8:
  %t33 = load i32, ptr %l18, !tbaa !23
  %t34 = load i32, ptr %l22, !tbaa !23
  %t35 = icmp eq i32 %t33, %t34
  br i1 %t35, label %bb9, label %bb10
bb9:
  %t37 = load ptr, ptr %l0, !tbaa !29
  %t39 = getelementptr %"compiler/generic:Program", ptr %t37, i32 0, i32 2
  %t40 = load i32, ptr %l1, !tbaa !23
  %t43 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrMask(ptr %v0, ptr %t39, i32 %t40)
  store i64 %t43, ptr %l28
  br label %bb11
bb10:
  store i1 false, ptr %l24, !tbaa !21
  br label %bb13
bb11:
  %t44 = load ptr, ptr %l0, !tbaa !29
  %t46 = getelementptr %"compiler/generic:Program", ptr %t44, i32 0, i32 2
  %t47 = load i32, ptr %l5, !tbaa !23
  %t50 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrMask(ptr %v0, ptr %t46, i32 %t47)
  store i64 %t50, ptr %l32
  br label %bb12
bb12:
  %t51 = load i64, ptr %l32, !tbaa !65
  %t52 = xor i64 %t51, -1
  %t53 = load i64, ptr %l28, !tbaa !65
  %t55 = and i64 %t53, %t52
  %t57 = icmp eq i64 %t55, 0
  store i1 %t57, ptr %l24, !tbaa !21
  br label %bb13
bb13:
  %t59 = load i1, ptr %l24, !tbaa !21
  br i1 %t59, label %bb14, label %bb15
bb14:
  store i1 true, ptr %rv
  br label %ret
bb15:
  br label %bb16
bb16:
  br label %bb17
bb17:
  %t61 = load i64, ptr %l4, !tbaa !24
  %t63 = add i64 %t61, 1
  store i64 %t63, ptr %l4, !tbaa !24
  br label %bb1
bb18:
  store i1 false, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eerrBefore(ptr %v0, ptr %a0, i32 %a1, i32 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca i32
  %l3 = alloca i1
  %l4 = alloca i1
  %l5 = alloca i32
  %l6 = alloca i32
  %l7 = alloca { i64, ptr }
  %l8 = alloca { i64, ptr }
  %l12 = alloca i32
  %l15 = alloca i1
  %l19 = alloca i32
  %l25 = alloca i32
  %l28 = alloca i1
  %l32 = alloca i32
  %l36 = alloca i1
  %l45 = alloca i64
  %l49 = alloca i64
  %l51 = alloca i1
  %l55 = alloca i64
  %l59 = alloca i64
  %l61 = alloca i1
  %l65 = alloca i64
  %l69 = alloca i64
  %l72 = alloca ptr
  %l76 = alloca i32
  %l77 = alloca i32
  %l79 = alloca ptr
  %l83 = alloca i32
  %l84 = alloca i32
  %l87 = alloca ptr
  %l91 = alloca i64
  %l92 = alloca ptr
  %l97 = alloca ptr
  %l101 = alloca i64
  %l102 = alloca ptr
  %l107 = alloca i1
  %l111 = alloca i1
  %l112 = alloca ptr
  %l116 = alloca i32
  %l117 = alloca { i64, ptr }
  %l118 = alloca ptr
  %l122 = alloca i32
  %l123 = alloca { i64, ptr }
  %l124 = alloca i1
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  store i32 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/generic:Program", ptr %t1, i32 0, i32 2
  %t4 = load i32, ptr %l1, !tbaa !23
  %t7 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t3, i32 %t4)
  store i32 %t7, ptr %l12
  br label %bb1
bb1:
  %t8 = load i32, ptr %l12, !range !{i32 0, i32 33}
  %t10 = trunc i64 25 to i32
  %t11 = icmp eq i32 %t8, %t10
  br i1 %t11, label %bb2, label %bb3
bb2:
  store i1 true, ptr %l15, !tbaa !21
  br label %bb5
bb3:
  %t13 = load ptr, ptr %l0, !tbaa !29
  %t15 = getelementptr %"compiler/generic:Program", ptr %t13, i32 0, i32 2
  %t16 = load i32, ptr %l1, !tbaa !23
  %t19 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t15, i32 %t16)
  store i32 %t19, ptr %l19
  br label %bb4
bb4:
  %t20 = load i32, ptr %l19, !range !{i32 0, i32 33}
  %t22 = trunc i64 27 to i32
  %t23 = icmp eq i32 %t20, %t22
  store i1 %t23, ptr %l15, !tbaa !21
  br label %bb5
bb5:
  %t25 = load i1, ptr %l15, !tbaa !21
  store i1 %t25, ptr %l3, !tbaa !21
  %t26 = load ptr, ptr %l0, !tbaa !29
  %t28 = getelementptr %"compiler/generic:Program", ptr %t26, i32 0, i32 2
  %t29 = load i32, ptr %l2, !tbaa !23
  %t32 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t28, i32 %t29)
  store i32 %t32, ptr %l25
  br label %bb6
bb6:
  %t33 = load i32, ptr %l25, !range !{i32 0, i32 33}
  %t35 = trunc i64 25 to i32
  %t36 = icmp eq i32 %t33, %t35
  br i1 %t36, label %bb7, label %bb8
bb7:
  store i1 true, ptr %l28, !tbaa !21
  br label %bb10
bb8:
  %t38 = load ptr, ptr %l0, !tbaa !29
  %t40 = getelementptr %"compiler/generic:Program", ptr %t38, i32 0, i32 2
  %t41 = load i32, ptr %l2, !tbaa !23
  %t44 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t40, i32 %t41)
  store i32 %t44, ptr %l32
  br label %bb9
bb9:
  %t45 = load i32, ptr %l32, !range !{i32 0, i32 33}
  %t47 = trunc i64 27 to i32
  %t48 = icmp eq i32 %t45, %t47
  store i1 %t48, ptr %l28, !tbaa !21
  br label %bb10
bb10:
  %t50 = load i1, ptr %l28, !tbaa !21
  store i1 %t50, ptr %l4, !tbaa !21
  %t51 = load i1, ptr %l3, !tbaa !21
  br i1 %t51, label %bb11, label %bb12
bb11:
  store i1 true, ptr %l36, !tbaa !21
  br label %bb13
bb12:
  %t53 = load i1, ptr %l4, !tbaa !21
  store i1 %t53, ptr %l36, !tbaa !21
  br label %bb13
bb13:
  %t55 = load i1, ptr %l36, !tbaa !21
  br i1 %t55, label %bb14, label %bb15
bb14:
  %t56 = load i1, ptr %l3, !tbaa !21
  %t57 = load i1, ptr %l4, !tbaa !21
  %t60 = icmp ne i1 %t56, %t57
  br i1 %t60, label %bb16, label %bb17
bb15:
  br label %bb31
bb16:
  %t62 = load i1, ptr %l4, !tbaa !21
  store i1 %t62, ptr %rv
  br label %ret
bb17:
  br label %bb18
bb18:
  %t64 = load ptr, ptr %l0, !tbaa !29
  %t66 = getelementptr %"compiler/generic:Program", ptr %t64, i32 0, i32 2
  %t67 = load i32, ptr %l1, !tbaa !23
  %t70 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eA(ptr %v0, ptr %t66, i32 %t67)
  store i64 %t70, ptr %l45
  br label %bb19
bb19:
  %t71 = load ptr, ptr %l0, !tbaa !29
  %t73 = getelementptr %"compiler/generic:Program", ptr %t71, i32 0, i32 2
  %t74 = load i32, ptr %l2, !tbaa !23
  %t77 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eA(ptr %v0, ptr %t73, i32 %t74)
  store i64 %t77, ptr %l49
  br label %bb20
bb20:
  %t78 = load i64, ptr %l45, !tbaa !24
  %t79 = load i64, ptr %l49, !tbaa !24
  %t80 = icmp slt i64 %t78, %t79
  br i1 %t80, label %bb21, label %bb22
bb21:
  store i1 true, ptr %l51, !tbaa !21
  br label %bb30
bb22:
  %t82 = load ptr, ptr %l0, !tbaa !29
  %t84 = getelementptr %"compiler/generic:Program", ptr %t82, i32 0, i32 2
  %t85 = load i32, ptr %l1, !tbaa !23
  %t88 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eA(ptr %v0, ptr %t84, i32 %t85)
  store i64 %t88, ptr %l55
  br label %bb23
bb23:
  %t89 = load ptr, ptr %l0, !tbaa !29
  %t91 = getelementptr %"compiler/generic:Program", ptr %t89, i32 0, i32 2
  %t92 = load i32, ptr %l2, !tbaa !23
  %t95 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eA(ptr %v0, ptr %t91, i32 %t92)
  store i64 %t95, ptr %l59
  br label %bb24
bb24:
  %t96 = load i64, ptr %l55, !tbaa !24
  %t97 = load i64, ptr %l59, !tbaa !24
  %t98 = icmp eq i64 %t96, %t97
  br i1 %t98, label %bb25, label %bb26
bb25:
  %t100 = load ptr, ptr %l0, !tbaa !29
  %t102 = getelementptr %"compiler/generic:Program", ptr %t100, i32 0, i32 2
  %t103 = load i32, ptr %l1, !tbaa !23
  %t106 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eB(ptr %v0, ptr %t102, i32 %t103)
  store i64 %t106, ptr %l65
  br label %bb27
bb26:
  store i1 false, ptr %l61, !tbaa !21
  br label %bb29
bb27:
  %t107 = load ptr, ptr %l0, !tbaa !29
  %t109 = getelementptr %"compiler/generic:Program", ptr %t107, i32 0, i32 2
  %t110 = load i32, ptr %l2, !tbaa !23
  %t113 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eB(ptr %v0, ptr %t109, i32 %t110)
  store i64 %t113, ptr %l69
  br label %bb28
bb28:
  %t114 = load i64, ptr %l65, !tbaa !24
  %t115 = load i64, ptr %l69, !tbaa !24
  %t116 = icmp slt i64 %t114, %t115
  store i1 %t116, ptr %l61, !tbaa !21
  br label %bb29
bb29:
  %t118 = load i1, ptr %l61, !tbaa !21
  store i1 %t118, ptr %l51, !tbaa !21
  br label %bb30
bb30:
  %t119 = load i1, ptr %l51, !tbaa !21
  store i1 %t119, ptr %rv
  br label %ret
bb31:
  %t120 = load ptr, ptr %l0, !tbaa !29
  %t122 = getelementptr %"compiler/generic:Program", ptr %t120, i32 0, i32 2
  store ptr %t122, ptr %l72, !tbaa !29
  %t123 = load ptr, ptr %l0, !tbaa !29
  %t125 = getelementptr %"compiler/generic:Program", ptr %t123, i32 0, i32 2
  %t126 = load i32, ptr %l1, !tbaa !23
  %t129 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrOf(ptr %v0, ptr %t125, i32 %t126)
  store i32 %t129, ptr %l76
  br label %bb32
bb32:
  %t130 = load ptr, ptr %l72, !tbaa !29
  %t131 = load i32, ptr %l76, !tbaa !23
  %t132 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %t130, i32 %t131)
  store i32 %t132, ptr %l77
  br label %bb33
bb33:
  %t133 = load i32, ptr %l77, !tbaa !23
  store i32 %t133, ptr %l5, !tbaa !23
  %t134 = load ptr, ptr %l0, !tbaa !29
  %t136 = getelementptr %"compiler/generic:Program", ptr %t134, i32 0, i32 2
  store ptr %t136, ptr %l79, !tbaa !29
  %t137 = load ptr, ptr %l0, !tbaa !29
  %t139 = getelementptr %"compiler/generic:Program", ptr %t137, i32 0, i32 2
  %t140 = load i32, ptr %l2, !tbaa !23
  %t143 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrOf(ptr %v0, ptr %t139, i32 %t140)
  store i32 %t143, ptr %l83
  br label %bb34
bb34:
  %t144 = load ptr, ptr %l79, !tbaa !29
  %t145 = load i32, ptr %l83, !tbaa !23
  %t146 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %t144, i32 %t145)
  store i32 %t146, ptr %l84
  br label %bb35
bb35:
  %t147 = load i32, ptr %l84, !tbaa !23
  store i32 %t147, ptr %l6, !tbaa !23
  %t148 = load ptr, ptr %l0, !tbaa !29
  %t150 = getelementptr %"compiler/generic:Program", ptr %t148, i32 0, i32 0
  %t151 = load ptr, ptr %t150, !tbaa !29
  %t153 = getelementptr %"compiler/load:Loader", ptr %t151, i32 0, i32 10
  store ptr %t153, ptr %l87, !tbaa !29
  %t154 = load ptr, ptr %l0, !tbaa !29
  %t156 = getelementptr %"compiler/generic:Program", ptr %t154, i32 0, i32 2
  %t157 = load i32, ptr %l5, !tbaa !23
  %t160 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclModule(ptr %v0, ptr %t156, i32 %t157)
  store i64 %t160, ptr %l91
  br label %bb36
bb36:
  %t161 = load ptr, ptr %l87, !tbaa !29
  %t162 = load i64, ptr %l91, !tbaa !24
  %t163 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H7bcf2aeb09afa796f4333e6ec8c3f63f(ptr %v0, ptr %v0, ptr %t161, i64 %t162)
  store ptr %t163, ptr %l92
  br label %bb37
bb37:
  %t164 = load ptr, ptr %l92, !tbaa !29
  %t166 = getelementptr %"compiler/load:Module", ptr %t164, i32 0, i32 2
  %t167 = load { i64, ptr }, ptr %t166, !tbaa !27
  store { i64, ptr } %t167, ptr %l7, !tbaa !27
  %t169 = load ptr, ptr %l0, !tbaa !29
  %t171 = getelementptr %"compiler/generic:Program", ptr %t169, i32 0, i32 0
  %t172 = load ptr, ptr %t171, !tbaa !29
  %t174 = getelementptr %"compiler/load:Loader", ptr %t172, i32 0, i32 10
  store ptr %t174, ptr %l97, !tbaa !29
  %t175 = load ptr, ptr %l0, !tbaa !29
  %t177 = getelementptr %"compiler/generic:Program", ptr %t175, i32 0, i32 2
  %t178 = load i32, ptr %l6, !tbaa !23
  %t181 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclModule(ptr %v0, ptr %t177, i32 %t178)
  store i64 %t181, ptr %l101
  br label %bb38
bb38:
  %t182 = load ptr, ptr %l97, !tbaa !29
  %t183 = load i64, ptr %l101, !tbaa !24
  %t184 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H7bcf2aeb09afa796f4333e6ec8c3f63f(ptr %v0, ptr %v0, ptr %t182, i64 %t183)
  store ptr %t184, ptr %l102
  br label %bb39
bb39:
  %t185 = load ptr, ptr %l102, !tbaa !29
  %t187 = getelementptr %"compiler/load:Module", ptr %t185, i32 0, i32 2
  %t188 = load { i64, ptr }, ptr %t187, !tbaa !27
  store { i64, ptr } %t188, ptr %l8, !tbaa !27
  %t190 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t191 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t194 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %v0, { i64, ptr } %t190, { i64, ptr } %t191)
  store i1 %t194, ptr %l107
  br label %bb40
bb40:
  %t195 = load i1, ptr %l107, !tbaa !21
  %t196 = xor i1 %t195, true
  br i1 %t196, label %bb41, label %bb42
bb41:
  %t198 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t199 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t202 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eLess(ptr %v0, ptr %v0, { i64, ptr } %t198, { i64, ptr } %t199)
  store i1 %t202, ptr %l111
  br label %bb43
bb42:
  br label %bb44
bb43:
  %t203 = load i1, ptr %l111, !tbaa !21
  store i1 %t203, ptr %rv
  br label %ret
bb44:
  %t204 = load ptr, ptr %l0, !tbaa !29
  store ptr %t204, ptr %l112, !tbaa !29
  %t205 = load ptr, ptr %l0, !tbaa !29
  %t207 = getelementptr %"compiler/generic:Program", ptr %t205, i32 0, i32 2
  %t208 = load i32, ptr %l5, !tbaa !23
  %t211 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclName(ptr %v0, ptr %t207, i32 %t208)
  store i32 %t211, ptr %l116
  br label %bb45
bb45:
  %t212 = load ptr, ptr %l112, !tbaa !29
  %t213 = load i32, ptr %l116, !tbaa !23
  %t214 = call { i64, ptr } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2etext(ptr %v0, ptr %v0, ptr %t212, i32 %t213)
  store { i64, ptr } %t214, ptr %l117
  br label %bb46
bb46:
  %t215 = load ptr, ptr %l0, !tbaa !29
  store ptr %t215, ptr %l118, !tbaa !29
  %t216 = load ptr, ptr %l0, !tbaa !29
  %t218 = getelementptr %"compiler/generic:Program", ptr %t216, i32 0, i32 2
  %t219 = load i32, ptr %l6, !tbaa !23
  %t222 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclName(ptr %v0, ptr %t218, i32 %t219)
  store i32 %t222, ptr %l122
  br label %bb47
bb47:
  %t223 = load ptr, ptr %l118, !tbaa !29
  %t224 = load i32, ptr %l122, !tbaa !23
  %t225 = call { i64, ptr } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2etext(ptr %v0, ptr %v0, ptr %t223, i32 %t224)
  store { i64, ptr } %t225, ptr %l123
  br label %bb48
bb48:
  %t226 = load { i64, ptr }, ptr %l117, !tbaa !27
  %t227 = load { i64, ptr }, ptr %l123, !tbaa !27
  %t228 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eLess(ptr %v0, ptr %v0, { i64, ptr } %t226, { i64, ptr } %t227)
  store i1 %t228, ptr %l124
  br label %bb49
bb49:
  %t229 = load i1, ptr %l124, !tbaa !21
  store i1 %t229, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
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
  %t11 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %s0, { i64, ptr } %t9, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d29, i32 0, i32 1) })
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

define dso_local %"compiler/generic:folded" @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eevalLit(ptr %v0, ptr %a0, i64 %a1, %"compiler/source:Span" %a2, i32 %a3) #0 {
entry:
  %l0 = alloca ptr
  %l3 = alloca i32
  %l4 = alloca ptr
  %l5 = alloca { i64, ptr }
  %l12 = alloca ptr
  %l19 = alloca { i64, ptr }
  %l22 = alloca i64
  %l23 = alloca { i64, ptr }
  %l24 = alloca i64
  %l25 = alloca i32
  %l26 = alloca i64
  %l27 = alloca i32
  %l28 = alloca i64
  %l29 = alloca { i64, ptr }
  %l30 = alloca i64
  %l31 = alloca i32
  %l32 = alloca i64
  %l33 = alloca i32
  %l34 = alloca %"compiler/generic:folded"
  %l35 = alloca i64
  %l37 = alloca i64
  %l40 = alloca i32
  %l41 = alloca %"compiler/generic:folded"
  %l45 = alloca %"compiler/generic:folded"
  %l48 = alloca i64
  %l50 = alloca i1
  %l51 = alloca i64
  %l53 = alloca %"compiler/generic:folded"
  %l54 = alloca %"compiler/generic:folded"
  %s1 = alloca %olang.scope
  %s2 = alloca %olang.scope
  %s4 = alloca %olang.scope
  %rv = alloca %"compiler/generic:folded"
  store ptr %a0, ptr %l0
  store i32 %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/generic:Program", ptr %t1, i32 0, i32 0
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t6 = getelementptr %"compiler/load:Loader", ptr %t4, i32 0, i32 10
  %t10 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H7bcf2aeb09afa796f4333e6ec8c3f63f(ptr %v0, ptr %v0, ptr %t6, i64 %a1)
  store ptr %t10, ptr %l12
  br label %bb1
bb1:
  %t11 = load ptr, ptr %l12, !tbaa !29
  %t13 = getelementptr %"compiler/load:Module", ptr %t11, i32 0, i32 6
  %t14 = load ptr, ptr %t13, !tbaa !29
  store ptr %t14, ptr %l4, !tbaa !29
  %t16 = load ptr, ptr %l4, !tbaa !29
  %t18 = icmp eq ptr %t16, null
  br i1 %t18, label %bb2, label %bb3
bb2:
  call void @__olang_check_failed(ptr @olang_loc_886433b88e29f460_704fa105f63225d4)
  unreachable
bb3:
  br label %bb4
bb4:
  %t20 = load ptr, ptr %l4, !tbaa !29
  %t24 = call { i64, ptr } @compiler_2fsource_2ecompiler_2fsource_3aSource_2eTextOf(ptr %v0, ptr %v0, ptr %t20, %"compiler/source:Span" %a2)
  store { i64, ptr } %t24, ptr %l19
  br label %bb5
bb5:
  %t25 = load { i64, ptr }, ptr %l19, !tbaa !27
  store { i64, ptr } %t25, ptr %l5, !tbaa !27
  %t26 = load i32, ptr %l3, !range !{i32 0, i32 114}
  %t28 = trunc i64 2 to i32
  %t29 = icmp eq i32 %t26, %t28
  br i1 %t29, label %bb6, label %bb7
bb6:
  br label %bb8
bb7:
  br label %bb25
bb8:
  store %olang.scope zeroinitializer, ptr %s1
  %t31 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t31, ptr %l23, !tbaa !27
  %t32 = call { i32, i64 } @std_2fprelude_2ftext_3aRadix_2ector(ptr %s1, i64 0)
  %t33 = extractvalue { i32, i64 } %t32, 1
  %t34 = extractvalue { i32, i64 } %t32, 0
  store i32 %t34, ptr %l25
  %t35 = icmp ne i32 %t34, 0
  br i1 %t35, label %bb10, label %ok.36, !prof !99
ok.36:
  store i64 %t33, ptr %l24
  br label %bb9
bb9:
  %t37 = load { i64, ptr }, ptr %l23, !tbaa !27
  %t38 = load i64, ptr %l24, !tbaa !24
  %t39 = call { i32, i64 } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eParseInt(ptr %v0, { i64, ptr } %t37, i64 %t38)
  %t40 = extractvalue { i32, i64 } %t39, 1
  %t41 = extractvalue { i32, i64 } %t39, 0
  store i32 %t41, ptr %l27
  %t42 = icmp ne i32 %t41, 0
  br i1 %t42, label %bb13, label %ok.43, !prof !99
ok.43:
  store i64 %t40, ptr %l26
  br label %bb12
bb10:
  br label %bb11
bb11:
  store %olang.scope zeroinitializer, ptr %s2
  %t44 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t44, ptr %l29, !tbaa !27
  %t45 = call { i32, i64 } @std_2fprelude_2ftext_3aRadix_2ector(ptr %s2, i64 0)
  %t46 = extractvalue { i32, i64 } %t45, 1
  %t47 = extractvalue { i32, i64 } %t45, 0
  store i32 %t47, ptr %l31
  %t48 = icmp ne i32 %t47, 0
  br i1 %t48, label %bb15, label %ok.49, !prof !99
ok.49:
  store i64 %t46, ptr %l30
  br label %bb14
bb12:
  %t50 = load i64, ptr %l26, !tbaa !24
  store i64 %t50, ptr %l22, !tbaa !24
  br label %bb23
bb13:
  br label %bb11
bb14:
  %t51 = load { i64, ptr }, ptr %l29, !tbaa !27
  %t52 = load i64, ptr %l30, !tbaa !24
  %t53 = call { i32, i64 } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eParseUint(ptr %v0, { i64, ptr } %t51, i64 %t52)
  %t54 = extractvalue { i32, i64 } %t53, 1
  %t55 = extractvalue { i32, i64 } %t53, 0
  store i32 %t55, ptr %l33
  %t56 = icmp ne i32 %t55, 0
  br i1 %t56, label %bb18, label %ok.57, !prof !99
ok.57:
  store i64 %t54, ptr %l32
  br label %bb17
bb15:
  br label %bb16
bb16:
  %t58 = call %"compiler/generic:folded" @compiler_2fgeneric_2efolded_2eunfolded()
  store %"compiler/generic:folded" %t58, ptr %l34
  br label %bb19
bb17:
  %t59 = load i64, ptr %l32, !tbaa !65
  store i64 %t59, ptr %l28, !tbaa !65
  br label %bb20
bb18:
  br label %bb16
bb19:
  call void @__olang_scope_close(ptr %s2)
  call void @__olang_scope_close(ptr %s1)
  %t60 = load %"compiler/generic:folded", ptr %l34
  store %"compiler/generic:folded" %t60, ptr %rv
  br label %ret
bb20:
  %t61 = load i64, ptr %l28, !tbaa !65
  %t62 = load i64, ptr @G_2ecompiler_2fgeneric_2eFolded, !tbaa !24
  store i64 %t62, ptr %l35, !tbaa !24
  store i64 %t61, ptr %l37, !tbaa !24
  %t65 = load ptr, ptr %l0, !tbaa !29
  %t67 = getelementptr %"compiler/generic:Program", ptr %t65, i32 0, i32 2
  %t69 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePrim(ptr %v0, ptr %s2, ptr %t67, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d30, i32 0, i32 1) })
  store i32 %t69, ptr %l40
  br label %bb21
bb21:
  %t70 = load i64, ptr %l35, !tbaa !24
  %t71 = load i64, ptr %l37, !tbaa !24
  %t72 = load i32, ptr %l40, !tbaa !23
  %t73 = call %"compiler/generic:folded" @compiler_2fgeneric_3afolded_2ector(ptr %s2, i64 %t70, i64 %t71, i32 %t72)
  store %"compiler/generic:folded" %t73, ptr %l41
  br label %bb22
bb22:
  call void @__olang_scope_close(ptr %s2)
  call void @__olang_scope_close(ptr %s1)
  %t74 = load %"compiler/generic:folded", ptr %l41
  store %"compiler/generic:folded" %t74, ptr %rv
  br label %ret
bb23:
  %t75 = load i64, ptr %l22, !tbaa !24
  %t76 = load i64, ptr @G_2ecompiler_2fgeneric_2eFolded, !tbaa !24
  %t78 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t82 = call %"compiler/generic:folded" @compiler_2fgeneric_3afolded_2ector(ptr %s1, i64 %t76, i64 %t75, i32 %t78)
  store %"compiler/generic:folded" %t82, ptr %l45
  br label %bb24
bb24:
  call void @__olang_scope_close(ptr %s1)
  %t83 = load %"compiler/generic:folded", ptr %l45
  store %"compiler/generic:folded" %t83, ptr %rv
  br label %ret
bb25:
  %t84 = load i32, ptr %l3, !range !{i32 0, i32 114}
  %t86 = trunc i64 6 to i32
  %t87 = icmp eq i32 %t84, %t86
  br i1 %t87, label %bb26, label %bb27
bb26:
  br label %bb28
bb27:
  br label %bb34
bb28:
  store %olang.scope zeroinitializer, ptr %s4
  %t89 = load i64, ptr @G_2ecompiler_2fgeneric_2eFolded, !tbaa !24
  store i64 %t89, ptr %l48, !tbaa !24
  %t90 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t92 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s4, { i64, ptr } %t90, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d31, i32 0, i32 1) })
  store i1 %t92, ptr %l50
  br label %bb29
bb29:
  %t93 = load i1, ptr %l50, !tbaa !21
  br i1 %t93, label %bb30, label %bb31
bb30:
  store i64 1, ptr %l51, !tbaa !24
  br label %bb32
bb31:
  store i64 0, ptr %l51, !tbaa !24
  br label %bb32
bb32:
  %t94 = load i32, ptr @G_2ecompiler_2ftypes_2eBoolT, !tbaa !23
  %t95 = load i64, ptr %l48, !tbaa !24
  %t96 = load i64, ptr %l51, !tbaa !24
  %t98 = call %"compiler/generic:folded" @compiler_2fgeneric_3afolded_2ector(ptr %s4, i64 %t95, i64 %t96, i32 %t94)
  store %"compiler/generic:folded" %t98, ptr %l53
  br label %bb33
bb33:
  call void @__olang_scope_close(ptr %s4)
  %t99 = load %"compiler/generic:folded", ptr %l53
  store %"compiler/generic:folded" %t99, ptr %rv
  br label %ret
bb34:
  br i1 true, label %bb35, label %bb36
bb35:
  br label %bb37
bb36:
  br label %bb39
bb37:
  %t100 = call %"compiler/generic:folded" @compiler_2fgeneric_2efolded_2eunfolded()
  store %"compiler/generic:folded" %t100, ptr %l54
  br label %bb38
bb38:
  %t101 = load %"compiler/generic:folded", ptr %l54
  store %"compiler/generic:folded" %t101, ptr %rv
  br label %ret
bb39:
  call void @__olang_check_failed(ptr @olang_loc_cbe34de7626751c6_f090548a7d71387a)
  unreachable
ret:
  %rr = load %"compiler/generic:folded", ptr %rv
  ret %"compiler/generic:folded" %rr
}

define dso_local i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2efields(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, ptr %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l4 = alloca { i64, ptr }
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca ptr
  %l8 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l9 = alloca %"std/prelude/iterator:ViewGenerator.00c7c71992d6e1815cd052c47b979cdd"
  %l10 = alloca ptr
  %l11 = alloca i64
  %l12 = alloca i64
  %l13 = alloca i64
  %l14 = alloca i64
  %l15 = alloca i64
  %l16 = alloca i64
  %l17 = alloca i32
  %l18 = alloca ptr
  %l19 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l28 = alloca { i64, ptr }
  %l35 = alloca ptr
  %l37 = alloca i32
  %l42 = alloca i32
  %l45 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l52 = alloca %"std/prelude/iterator:ViewGenerator.00c7c71992d6e1815cd052c47b979cdd"
  %l53 = alloca ptr
  %l55 = alloca ptr
  %l56 = alloca i32
  %l58 = alloca i1
  %l65 = alloca i64
  %l68 = alloca i64
  %l94 = alloca ptr
  %l96 = alloca { i64, ptr }
  %l100 = alloca ptr
  %l101 = alloca ptr
  %l106 = alloca i32
  %l107 = alloca i32
  %l112 = alloca ptr
  %l113 = alloca ptr
  %l118 = alloca i32
  %l124 = alloca ptr
  %l126 = alloca { i64, ptr }
  %l130 = alloca i32
  %l131 = alloca i32
  %l134 = alloca { i64, ptr }
  %l137 = alloca i32
  %l138 = alloca i32
  %l142 = alloca { i64, ptr }
  %l151 = alloca ptr
  %l153 = alloca { i64, ptr }
  %l154 = alloca i32
  %s0 = alloca %olang.scope
  %s6 = alloca %olang.scope
  %wh6 = alloca ptr
  %wc6 = alloca ptr
  %ws6 = alloca i32
  %rv = alloca i32
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store ptr %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fsource_3aNameId_Hcd3bbe8e64537e19c3182f51d0fe16c9(ptr %s0)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t1, ptr %l19
  br label %bb1
bb1:
  %t2 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l19
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t2, ptr %l3
  %t3 = load ptr, ptr %l2, !tbaa !29
  %t5 = getelementptr %"compiler/ast:StructBody", ptr %t3, i32 0, i32 0
  %t6 = load { i64, ptr }, ptr %t5, !tbaa !27
  store { i64, ptr } %t6, ptr %l4, !tbaa !27
  store i64 0, ptr %l5, !tbaa !24
  %t8 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t10 = extractvalue { i64, ptr } %t8, 0
  store i64 %t10, ptr %l6, !tbaa !24
  br label %bb2
bb2:
  %t12 = load i64, ptr %l5, !tbaa !24
  %t13 = load i64, ptr %l6, !tbaa !24
  %t16 = icmp slt i64 %t12, %t13
  %t18 = xor i1 %t16, true
  br i1 %t18, label %bb3, label %bb4
bb3:
  br label %bb12
bb4:
  br label %bb5
bb5:
  %t20 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t20, ptr %l28, !tbaa !27
  %t21 = load i64, ptr %l5, !tbaa !24
  %t23 = getelementptr { i64, ptr }, ptr %l28, i32 0, i32 1
  %t24 = load ptr, ptr %t23, !tbaa !27
  %t25 = getelementptr ptr, ptr %t24, i64 %t21
  %t26 = load ptr, ptr %t25, !tbaa !39
  store ptr %t26, ptr %l7, !tbaa !29
  %t28 = load ptr, ptr %l7, !tbaa !29
  %t30 = getelementptr %"compiler/ast:Param", ptr %t28, i32 0, i32 2
  %t31 = load ptr, ptr %t30, !tbaa !29
  %t33 = icmp eq ptr %t31, null
  %t35 = xor i1 %t33, true
  br i1 %t35, label %bb6, label %bb7
bb6:
  store ptr %l3, ptr %l35, !tbaa !29
  %t37 = load ptr, ptr %l7, !tbaa !29
  %t39 = getelementptr %"compiler/ast:Param", ptr %t37, i32 0, i32 1
  %t40 = load i32, ptr %t39, !tbaa !23
  store i32 %t40, ptr %l37, !tbaa !23
  %t41 = load ptr, ptr %l0, !tbaa !29
  %t42 = load ptr, ptr %l1, !tbaa !29
  %t43 = load ptr, ptr %l7, !tbaa !29
  %t45 = getelementptr %"compiler/ast:Param", ptr %t43, i32 0, i32 2
  %t46 = load ptr, ptr %t45, !tbaa !29
  %t50 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eResolve(ptr %v0, ptr %v1, ptr %v2, ptr %t41, ptr %t42, ptr %t46)
  store i32 %t50, ptr %l42
  br label %bb8
bb7:
  br label %bb10
bb8:
  %t51 = load ptr, ptr %l35, !tbaa !29
  %t52 = load i32, ptr %l37, !tbaa !23
  %t53 = load i32, ptr %l42, !tbaa !23
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fsource_3aNameId_2c_20compil_H943a9bb03970f71acf57214091669a7d(ptr %s0, ptr %t51, i32 %t52, i32 %t53)
  br label %bb9
bb9:
  br label %bb10
bb10:
  br label %bb11
bb11:
  %t54 = load i64, ptr %l5, !tbaa !24
  %t56 = add i64 %t54, 1
  store i64 %t56, ptr %l5, !tbaa !24
  br label %bb2
bb12:
  %t58 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2ector(ptr %s0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t58, ptr %l45
  br label %bb13
bb13:
  %t59 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l45
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t59, ptr %l8
  %t60 = load ptr, ptr %l2, !tbaa !29
  %t62 = getelementptr %"compiler/ast:StructBody", ptr %t60, i32 0, i32 2
  %t63 = load { i64, ptr }, ptr %t62, !tbaa !27
  %t65 = extractvalue { i64, ptr } %t63, 0
  %t67 = icmp eq i64 %t65, 0
  br i1 %t67, label %bb14, label %bb15
bb14:
  call void @__olang_scope_close(ptr %s0)
  store i32 0, ptr %rv
  br label %ret
bb15:
  br label %bb16
bb16:
  store %olang.scope zeroinitializer, ptr %s6
  %t70 = load ptr, ptr %l2, !tbaa !29
  %t72 = call %"std/prelude/iterator:ViewGenerator.00c7c71992d6e1815cd052c47b979cdd" @compiler_2fgeneric_2eFieldDecls.walk(ptr %v2, ptr %s6, ptr %t70)
  %t73 = extractvalue %"std/prelude/iterator:ViewGenerator.00c7c71992d6e1815cd052c47b979cdd" %t72, 0, 1
  %t74 = extractvalue %"std/prelude/iterator:ViewGenerator.00c7c71992d6e1815cd052c47b979cdd" %t72, 0, 0
  store ptr %t73, ptr %wh6
  store ptr %t74, ptr %wc6
  store %"std/prelude/iterator:ViewGenerator.00c7c71992d6e1815cd052c47b979cdd" %t72, ptr %l52
  br label %bb17
bb17:
  %t75 = load %"std/prelude/iterator:ViewGenerator.00c7c71992d6e1815cd052c47b979cdd", ptr %l52
  store %"std/prelude/iterator:ViewGenerator.00c7c71992d6e1815cd052c47b979cdd" %t75, ptr %l9
  br label %bb18
bb18:
  %t77 = call { i32, ptr } @std_2fprelude_2fiterator_2estd_2fprelude_2fiterator_3aViewGenerator_3ccompiler_2fast_3aV_Hf179e857cb72c72900f4614cd5df5a25(ptr %s6, ptr %l9)
  %t78 = extractvalue { i32, ptr } %t77, 1
  %t79 = extractvalue { i32, ptr } %t77, 0
  store i32 %t79, ptr %l56
  %t80 = icmp ne i32 %t79, 0
  br i1 %t80, label %bb20, label %ok.81, !prof !99
ok.81:
  store ptr %t78, ptr %l55
  br label %bb19
bb19:
  %t82 = load ptr, ptr %l55, !tbaa !29
  store ptr %t82, ptr %l53, !tbaa !29
  br label %bb22
bb20:
  %t83 = load i32, ptr %l56, !tbaa !23
  %t84 = ashr i32 %t83, 16
  %t86 = icmp eq i32 %t84, 1
  store i1 %t86, ptr %l58, !tbaa !21
  br label %bb21
bb21:
  br label %bb58
bb22:
  %t87 = load ptr, ptr %l53, !tbaa !29
  store ptr %t87, ptr %l10, !tbaa !29
  store i64 0, ptr %l11, !tbaa !24
  %t88 = load ptr, ptr %l10, !tbaa !29
  %t90 = getelementptr %"compiler/ast:VarDecl", ptr %t88, i32 0, i32 0
  %t91 = load { i64, ptr }, ptr %t90, !tbaa !27
  %t93 = extractvalue { i64, ptr } %t91, 0
  store i64 %t93, ptr %l12, !tbaa !24
  store i64 1, ptr %l13, !tbaa !24
  %t95 = load i64, ptr %l12, !tbaa !24
  %t96 = load i64, ptr %l11, !tbaa !24
  %t99 = icmp sgt i64 %t95, %t96
  br i1 %t99, label %bb23, label %bb24
bb23:
  %t101 = load i64, ptr %l13, !tbaa !24
  %t103 = icmp sgt i64 %t101, 0
  br i1 %t103, label %bb25, label %bb26
bb24:
  store i64 0, ptr %l65, !tbaa !24
  br label %bb28
bb25:
  %t105 = load i64, ptr %l12, !tbaa !24
  %t106 = load i64, ptr %l11, !tbaa !24
  %t109 = sub i64 %t105, %t106
  %t110 = load i64, ptr %l13, !tbaa !24
  %t113 = add i64 %t109, %t110
  %t115 = sub i64 %t113, 1
  %t116 = load i64, ptr %l13, !tbaa !24
  %t119 = sdiv i64 %t115, %t116
  store i64 %t119, ptr %l68, !tbaa !24
  br label %bb27
bb26:
  store i64 0, ptr %l68, !tbaa !24
  br label %bb27
bb27:
  %t121 = load i64, ptr %l68, !tbaa !24
  store i64 %t121, ptr %l65, !tbaa !24
  br label %bb28
bb28:
  %t122 = load i64, ptr %l65, !tbaa !24
  store i64 %t122, ptr %l14, !tbaa !24
  store i64 0, ptr %l15, !tbaa !24
  br label %bb29
bb29:
  %t123 = load i64, ptr %l15, !tbaa !24
  %t124 = load i64, ptr %l14, !tbaa !24
  %t127 = icmp slt i64 %t123, %t124
  %t129 = xor i1 %t127, true
  br i1 %t129, label %bb30, label %bb31
bb30:
  br label %bb56
bb31:
  br label %bb32
bb32:
  %t131 = load i64, ptr %l11, !tbaa !24
  %t132 = load i64, ptr %l15, !tbaa !24
  %t133 = load i64, ptr %l13, !tbaa !24
  %t136 = mul i64 %t132, %t133
  %t139 = add i64 %t131, %t136
  store i64 %t139, ptr %l16, !tbaa !24
  %t141 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  store i32 %t141, ptr %l17, !tbaa !23
  %t143 = load ptr, ptr %l10, !tbaa !29
  %t145 = getelementptr %"compiler/ast:VarDecl", ptr %t143, i32 0, i32 4
  %t146 = load i1, ptr %t145, !tbaa !21
  br i1 %t146, label %bb33, label %bb34
bb33:
  %t148 = load i64, ptr %l16, !tbaa !24
  %t149 = load ptr, ptr %l10, !tbaa !29
  %t151 = getelementptr %"compiler/ast:VarDecl", ptr %t149, i32 0, i32 3
  %t152 = load { i64, ptr }, ptr %t151, !tbaa !27
  %t154 = extractvalue { i64, ptr } %t152, 0
  %t157 = icmp slt i64 %t148, %t154
  br i1 %t157, label %bb35, label %bb36
bb34:
  %t159 = load ptr, ptr %l10, !tbaa !29
  %t161 = getelementptr %"compiler/ast:VarDecl", ptr %t159, i32 0, i32 2
  %t162 = load ptr, ptr %t161, !tbaa !29
  %t164 = icmp eq ptr %t162, null
  %t166 = xor i1 %t164, true
  br i1 %t166, label %bb40, label %bb41
bb35:
  %t168 = load ptr, ptr %l10, !tbaa !29
  %t170 = getelementptr %"compiler/ast:VarDecl", ptr %t168, i32 0, i32 3
  %t171 = load { i64, ptr }, ptr %t170, !tbaa !27
  store { i64, ptr } %t171, ptr %l96, !tbaa !27
  %t172 = load i64, ptr %l16, !tbaa !24
  %t174 = getelementptr { i64, ptr }, ptr %l96, i32 0, i32 1
  %t175 = load ptr, ptr %t174, !tbaa !27
  %t176 = getelementptr ptr, ptr %t175, i64 %t172
  %t177 = load ptr, ptr %t176, !tbaa !39
  store ptr %t177, ptr %l94, !tbaa !29
  br label %bb37
bb36:
  store ptr null, ptr %l94, !tbaa !29
  br label %bb37
bb37:
  %t180 = load ptr, ptr %l94, !tbaa !29
  store ptr %t180, ptr %l18, !tbaa !29
  %t181 = load ptr, ptr %l0, !tbaa !29
  store ptr %t181, ptr %l100, !tbaa !29
  %t182 = load ptr, ptr %l18, !tbaa !29
  store ptr %t182, ptr %l101, !tbaa !29
  %t183 = load ptr, ptr %l0, !tbaa !29
  %t184 = load ptr, ptr %l1, !tbaa !29
  %t185 = load ptr, ptr %l18, !tbaa !29
  %t190 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eInfer(ptr %v0, ptr %v1, ptr %s0, ptr %v2, ptr %t183, ptr %t184, ptr %l3, ptr %t185)
  store i32 %t190, ptr %l106
  br label %bb38
bb38:
  %t191 = load ptr, ptr %l100, !tbaa !29
  %t192 = load ptr, ptr %l101, !tbaa !29
  %t193 = load i32, ptr %l106, !tbaa !23
  %t194 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eslotOf(ptr %v0, ptr %v2, ptr %t191, ptr %t192, i32 %t193)
  store i32 %t194, ptr %l107
  br label %bb39
bb39:
  %t195 = load i32, ptr %l107, !tbaa !23
  store i32 %t195, ptr %l17, !tbaa !23
  br label %bb52
bb40:
  %t196 = load ptr, ptr %l0, !tbaa !29
  store ptr %t196, ptr %l112, !tbaa !29
  %t197 = load ptr, ptr %l1, !tbaa !29
  store ptr %t197, ptr %l113, !tbaa !29
  %t198 = load ptr, ptr %l0, !tbaa !29
  %t199 = load ptr, ptr %l1, !tbaa !29
  %t200 = load ptr, ptr %l10, !tbaa !29
  %t202 = getelementptr %"compiler/ast:VarDecl", ptr %t200, i32 0, i32 2
  %t203 = load ptr, ptr %t202, !tbaa !29
  %t207 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eResolve(ptr %v0, ptr %v1, ptr %v2, ptr %t198, ptr %t199, ptr %t203)
  store i32 %t207, ptr %l118
  br label %bb42
bb41:
  %t208 = load ptr, ptr %l10, !tbaa !29
  %t210 = getelementptr %"compiler/ast:VarDecl", ptr %t208, i32 0, i32 0
  %t211 = load { i64, ptr }, ptr %t210, !tbaa !27
  store { i64, ptr } %t211, ptr %l134, !tbaa !27
  %t212 = load i64, ptr %l16, !tbaa !24
  %t214 = getelementptr { i64, ptr }, ptr %l134, i32 0, i32 1
  %t215 = load ptr, ptr %t214, !tbaa !27
  %t216 = getelementptr i32, ptr %t215, i64 %t212
  %t217 = load i32, ptr %t216, !tbaa !33
  %t220 = call { i32, i32 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fsource_3aNameId_2c_20compil_Hfd0413fe7fd4e5914f6cad5b418b7a6d(ptr %s0, ptr %l3, i32 %t217)
  %t221 = extractvalue { i32, i32 } %t220, 1
  %t222 = extractvalue { i32, i32 } %t220, 0
  store i32 %t222, ptr %l138
  %t223 = icmp ne i32 %t222, 0
  br i1 %t223, label %bb48, label %ok.224, !prof !99
ok.224:
  store i32 %t221, ptr %l137
  br label %bb47
bb42:
  %t225 = load i64, ptr %l16, !tbaa !24
  %t226 = load ptr, ptr %l10, !tbaa !29
  %t228 = getelementptr %"compiler/ast:VarDecl", ptr %t226, i32 0, i32 3
  %t229 = load { i64, ptr }, ptr %t228, !tbaa !27
  %t231 = extractvalue { i64, ptr } %t229, 0
  %t234 = icmp slt i64 %t225, %t231
  br i1 %t234, label %bb43, label %bb44
bb43:
  %t236 = load ptr, ptr %l10, !tbaa !29
  %t238 = getelementptr %"compiler/ast:VarDecl", ptr %t236, i32 0, i32 3
  %t239 = load { i64, ptr }, ptr %t238, !tbaa !27
  store { i64, ptr } %t239, ptr %l126, !tbaa !27
  %t240 = load i64, ptr %l16, !tbaa !24
  %t242 = getelementptr { i64, ptr }, ptr %l126, i32 0, i32 1
  %t243 = load ptr, ptr %t242, !tbaa !27
  %t244 = getelementptr ptr, ptr %t243, i64 %t240
  %t245 = load ptr, ptr %t244, !tbaa !39
  store ptr %t245, ptr %l124, !tbaa !29
  br label %bb45
bb44:
  store ptr null, ptr %l124, !tbaa !29
  br label %bb45
bb45:
  %t248 = load ptr, ptr %l112, !tbaa !29
  %t249 = load ptr, ptr %l113, !tbaa !29
  %t250 = load i32, ptr %l118, !tbaa !23
  %t251 = load ptr, ptr %l124, !tbaa !29
  %t252 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eStorageOf(ptr %v0, ptr %v1, ptr %v2, ptr %t248, ptr %t249, i32 %t250, ptr %t251)
  store i32 %t252, ptr %l130
  br label %bb46
bb46:
  %t253 = load i32, ptr %l130, !tbaa !23
  store i32 %t253, ptr %l17, !tbaa !23
  br label %bb51
bb47:
  %t254 = load i32, ptr %l137, !tbaa !23
  store i32 %t254, ptr %l131, !tbaa !23
  br label %bb50
bb48:
  br label %bb49
bb49:
  %t255 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  store i32 %t255, ptr %l131, !tbaa !23
  br label %bb50
bb50:
  %t257 = load i32, ptr %l131, !tbaa !23
  store i32 %t257, ptr %l17, !tbaa !23
  br label %bb51
bb51:
  br label %bb52
bb52:
  %t258 = load ptr, ptr %l10, !tbaa !29
  %t260 = getelementptr %"compiler/ast:VarDecl", ptr %t258, i32 0, i32 0
  %t261 = load { i64, ptr }, ptr %t260, !tbaa !27
  store { i64, ptr } %t261, ptr %l142, !tbaa !27
  %t262 = load i64, ptr %l16, !tbaa !24
  %t264 = getelementptr { i64, ptr }, ptr %l142, i32 0, i32 1
  %t265 = load ptr, ptr %t264, !tbaa !27
  %t266 = getelementptr i32, ptr %t265, i64 %t262
  %t267 = load i32, ptr %t266, !tbaa !33
  %t268 = load i32, ptr %l17, !tbaa !23
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fsource_3aNameId_2c_20compil_H943a9bb03970f71acf57214091669a7d(ptr %s0, ptr %l3, i32 %t267, i32 %t268)
  br label %bb53
bb53:
  %t272 = load i32, ptr %l17, !tbaa !23
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2ePush_3ccompiler_2ftypes_3aTypeId_3e(ptr %s0, ptr %l8, i32 %t272)
  br label %bb54
bb54:
  br label %bb55
bb55:
  %t275 = load i64, ptr %l15, !tbaa !24
  %t277 = add i64 %t275, 1
  store i64 %t277, ptr %l15, !tbaa !24
  br label %bb29
bb56:
  br label %bb57
bb57:
  br label %bb18
bb58:
  store i32 0, ptr %ws6
  br label %wend6
wend6.c0:
  call void @__olang_scope_close(ptr %s6)
  %t279 = load ptr, ptr %l0, !tbaa !29
  %t281 = getelementptr %"compiler/generic:Program", ptr %t279, i32 0, i32 2
  store ptr %t281, ptr %l151, !tbaa !29
  %t283 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2eToArray_3ccompiler_2ftypes_3aTypeId_3e(ptr %s0, ptr %s0, ptr %l8)
  store { i64, ptr } %t283, ptr %l153
  br label %bb59
bb59:
  %t284 = load ptr, ptr %l151, !tbaa !29
  %t285 = load { i64, ptr }, ptr %l153, !tbaa !27
  %t286 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eList(ptr %v0, ptr %s0, ptr %t284, { i64, ptr } %t285)
  store i32 %t286, ptr %l154
  br label %bb60
bb60:
  call void @__olang_scope_close(ptr %s0)
  %t287 = load i32, ptr %l154, !tbaa !23
  store i32 %t287, ptr %rv
  br label %ret
wend6:
  %t288 = load ptr, ptr %wh6
  %t289 = load ptr, ptr %wc6
  %t290 = call ptr @llvm.coro.promise(ptr %t288, i32 8, i1 false)
  %t291 = getelementptr { { i32, ptr }, i32 }, ptr %t290, i32 0, i32 1
  store i32 2, ptr %t291
  %t292 = call { i32, ptr } %t289(ptr %t288, ptr null)
  %t293 = load i32, ptr %ws6
  switch i32 %t293, label %wend6.c0 [ ]
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2egeneratorOf(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca i32
  %l7 = alloca i32
  %l12 = alloca i32
  %l14 = alloca i32
  %l15 = alloca i32
  %l20 = alloca i32
  %l24 = alloca i32
  %l26 = alloca i32
  %l27 = alloca i32
  %l29 = alloca ptr
  %l30 = alloca i32
  %l34 = alloca i32
  %l35 = alloca i32
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
  %t7 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t3, i32 %t4)
  store i32 %t7, ptr %l7
  br label %bb1
bb1:
  %t8 = load i32, ptr %l7, !range !{i32 0, i32 33}
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
  %t19 = call { i32, i32 } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFindDecl(ptr %v0, ptr %s0, ptr %s0, ptr %t17, { i64, ptr } { i64 20, ptr getelementptr inbounds (<{ i64, [20 x i8] }>, ptr @.d32, i32 0, i32 1) }, { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d33, i32 0, i32 1) })
  %t20 = extractvalue { i32, i32 } %t19, 1
  %t21 = extractvalue { i32, i32 } %t19, 0
  store i32 %t21, ptr %l15
  %t22 = icmp ne i32 %t21, 0
  br i1 %t22, label %bb6, label %ok.23, !prof !99
ok.23:
  store i32 %t20, ptr %l14
  br label %bb5
bb5:
  %t24 = load i32, ptr %l14, !tbaa !23
  store i32 %t24, ptr %l12, !tbaa !23
  br label %bb8
bb6:
  br label %bb7
bb7:
  %t25 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  call void @__olang_scope_close(ptr %s0)
  store i32 %t25, ptr %rv
  br label %ret
bb8:
  %t27 = load i32, ptr %l12, !tbaa !23
  store i32 %t27, ptr %l2, !tbaa !23
  %t28 = load ptr, ptr %l0, !tbaa !29
  %t30 = getelementptr %"compiler/generic:Program", ptr %t28, i32 0, i32 2
  %t31 = load i32, ptr %l1, !tbaa !23
  %t34 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %t30, i32 %t31)
  store i32 %t34, ptr %l20
  br label %bb9
bb9:
  %t35 = load i32, ptr %l2, !tbaa !23
  %t36 = load i32, ptr %l20, !tbaa !23
  %t38 = icmp ne i32 %t36, %t35
  br i1 %t38, label %bb10, label %bb11
bb10:
  %t40 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  call void @__olang_scope_close(ptr %s0)
  store i32 %t40, ptr %rv
  br label %ret
bb11:
  br label %bb12
bb12:
  %t42 = load ptr, ptr %l0, !tbaa !29
  %t44 = call { i32, i32 } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFindDecl(ptr %v0, ptr %s0, ptr %s0, ptr %t42, { i64, ptr } { i64 20, ptr getelementptr inbounds (<{ i64, [20 x i8] }>, ptr @.d34, i32 0, i32 1) }, { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d35, i32 0, i32 1) })
  %t45 = extractvalue { i32, i32 } %t44, 1
  %t46 = extractvalue { i32, i32 } %t44, 0
  store i32 %t46, ptr %l27
  %t47 = icmp ne i32 %t46, 0
  br i1 %t47, label %bb14, label %ok.48, !prof !99
ok.48:
  store i32 %t45, ptr %l26
  br label %bb13
bb13:
  %t49 = load i32, ptr %l26, !tbaa !23
  store i32 %t49, ptr %l24, !tbaa !23
  br label %bb16
bb14:
  br label %bb15
bb15:
  %t50 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  call void @__olang_scope_close(ptr %s0)
  store i32 %t50, ptr %rv
  br label %ret
bb16:
  %t52 = load i32, ptr %l24, !tbaa !23
  %t53 = load ptr, ptr %l0, !tbaa !29
  store ptr %t53, ptr %l29, !tbaa !29
  store i32 %t52, ptr %l30, !tbaa !23
  %t55 = load ptr, ptr %l0, !tbaa !29
  %t57 = getelementptr %"compiler/generic:Program", ptr %t55, i32 0, i32 2
  %t58 = load i32, ptr %l1, !tbaa !23
  %t61 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eArgs(ptr %v0, ptr %t57, i32 %t58)
  store i32 %t61, ptr %l34
  br label %bb17
bb17:
  %t62 = load ptr, ptr %l29, !tbaa !29
  %t63 = load i32, ptr %l30, !tbaa !23
  %t64 = load i32, ptr %l34, !tbaa !23
  %t65 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eInstance(ptr %v0, ptr %t62, i32 %t63, i32 %t64)
  store i32 %t65, ptr %l35
  br label %bb18
bb18:
  call void @__olang_scope_close(ptr %s0)
  %t66 = load i32, ptr %l35, !tbaa !23
  store i32 %t66, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local void @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eholdsItself(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca i32
  %l3 = alloca i64
  %l4 = alloca %"compiler/names:Entry"
  %l8 = alloca i32
  %l15 = alloca i32
  %l16 = alloca i1
  %l21 = alloca i1
  %l22 = alloca i32
  %l31 = alloca i64
  %l36 = alloca ptr
  %l38 = alloca ptr
  %l43 = alloca i64
  %l44 = alloca %"compiler/names:Entry"
  %l47 = alloca ptr
  %l51 = alloca { i64, [3 x i64] }
  %l56 = alloca { i64, ptr }
  %l58 = alloca { i64, ptr }
  %l60 = alloca %"compiler/diagmsg:Msg"
  %l61 = alloca i64
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
  br label %ret
bb3:
  br label %bb4
bb4:
  %t15 = load ptr, ptr %l0, !tbaa !29
  %t17 = getelementptr %"compiler/generic:Program", ptr %t15, i32 0, i32 2
  %t18 = load i32, ptr %l1, !tbaa !23
  %t21 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %t17, i32 %t18)
  store i32 %t21, ptr %l15
  br label %bb5
bb5:
  %t22 = load i32, ptr %l15, !tbaa !23
  store i32 %t22, ptr %l2, !tbaa !23
  %t23 = load ptr, ptr %l0, !tbaa !29
  %t25 = getelementptr %"compiler/generic:Program", ptr %t23, i32 0, i32 47
  %t26 = load i32, ptr %l2, !tbaa !23
  %t28 = sext i32 %t26 to i64
  %t31 = call { i32, i1 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2eGet_3cI64_2c_20Bool_3e(ptr %v0, ptr %t25, i64 %t28)
  %t32 = extractvalue { i32, i1 } %t31, 1
  %t33 = extractvalue { i32, i1 } %t31, 0
  store i32 %t33, ptr %l22
  %t34 = icmp ne i32 %t33, 0
  br i1 %t34, label %bb7, label %ok.35, !prof !99
ok.35:
  store i1 %t32, ptr %l21
  br label %bb6
bb6:
  %t36 = load i1, ptr %l21, !tbaa !21
  store i1 %t36, ptr %l16, !tbaa !21
  br label %bb9
bb7:
  br label %bb8
bb8:
  store i1 false, ptr %l16, !tbaa !21
  br label %bb9
bb9:
  %t37 = load i1, ptr %l16, !tbaa !21
  br i1 %t37, label %bb10, label %bb11
bb10:
  br label %ret
bb11:
  br label %bb12
bb12:
  %t38 = load ptr, ptr %l0, !tbaa !29
  %t40 = getelementptr %"compiler/generic:Program", ptr %t38, i32 0, i32 47
  %t41 = load i32, ptr %l2, !tbaa !23
  %t43 = sext i32 %t41 to i64
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2ePut_3cI64_2c_20Bool_3e(ptr %v0, ptr %t40, i64 %t43, i1 true)
  br label %bb13
bb13:
  %t46 = load ptr, ptr %l0, !tbaa !29
  %t48 = getelementptr %"compiler/generic:Program", ptr %t46, i32 0, i32 12
  %t49 = load i32, ptr %l2, !tbaa !23
  %t51 = sext i32 %t49 to i64
  %t54 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t48, i64 %t51)
  store i64 %t54, ptr %l31
  br label %bb14
bb14:
  %t55 = load i64, ptr %l31, !tbaa !24
  store i64 %t55, ptr %l3, !tbaa !24
  %t56 = load ptr, ptr %l0, !tbaa !29
  %t58 = getelementptr %"compiler/generic:Program", ptr %t56, i32 0, i32 1
  %t59 = load ptr, ptr %t58, !tbaa !29
  %t61 = getelementptr %"compiler/names:Resolver", ptr %t59, i32 0, i32 1
  %t62 = load i64, ptr %l3, !tbaa !24
  %t65 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fnames_3aTable_26_3e_2_Hc2ccbbc5952c057a60f016e9cc1626d2(ptr %v0, ptr %v0, ptr %t61, i64 %t62)
  store ptr %t65, ptr %l36
  br label %bb15
bb15:
  %t66 = load ptr, ptr %l36, !tbaa !29
  %t68 = getelementptr %"compiler/names:Table", ptr %t66, i32 0, i32 0
  store ptr %t68, ptr %l38, !tbaa !29
  %t69 = load ptr, ptr %l0, !tbaa !29
  %t71 = getelementptr %"compiler/generic:Program", ptr %t69, i32 0, i32 13
  %t72 = load i32, ptr %l2, !tbaa !23
  %t74 = sext i32 %t72 to i64
  %t77 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t71, i64 %t74)
  store i64 %t77, ptr %l43
  br label %bb16
bb16:
  %t78 = load ptr, ptr %l38, !tbaa !29
  %t79 = load i64, ptr %l43, !tbaa !24
  %t80 = call %"compiler/names:Entry" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fnames_3aEntry_3e_2eAt_3ccompiler_2fnames_3aEntry_3e(ptr %v0, ptr %v0, ptr %t78, i64 %t79)
  store %"compiler/names:Entry" %t80, ptr %l44
  br label %bb17
bb17:
  %t81 = load %"compiler/names:Entry", ptr %l44
  store %"compiler/names:Entry" %t81, ptr %l4
  %t82 = load ptr, ptr %l0, !tbaa !29
  %t84 = getelementptr %"compiler/generic:Program", ptr %t82, i32 0, i32 0
  %t85 = load ptr, ptr %t84, !tbaa !29
  %t87 = getelementptr %"compiler/load:Loader", ptr %t85, i32 0, i32 4
  %t88 = load ptr, ptr %t87, !tbaa !29
  store ptr %t88, ptr %l47, !tbaa !29
  %t89 = load ptr, ptr %l0, !tbaa !29
  %t90 = load i64, ptr %l3, !tbaa !24
  %t91 = getelementptr %"compiler/names:Entry", ptr %l4, i32 0, i32 1
  %t92 = load %"compiler/source:Span", ptr %t91
  %t96 = call { i64, [3 x i64] } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eat(ptr %v0, ptr %t89, i64 %t90, %"compiler/source:Span" %t92)
  store { i64, [3 x i64] } %t96, ptr %l51
  br label %bb18
bb18:
  %t97 = load ptr, ptr %l0, !tbaa !29
  %t99 = getelementptr %"compiler/generic:Program", ptr %t97, i32 0, i32 2
  %t100 = load i32, ptr %l1, !tbaa !23
  %t102 = inttoptr i64 0 to ptr
  %t105 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eCanon(ptr %v0, ptr %v0, ptr %t102, ptr %t99, i32 %t100)
  store { i64, ptr } %t105, ptr %l56
  br label %bb19
bb19:
  %t106 = load { i64, ptr }, ptr %l56, !tbaa !27
  %t107 = extractvalue { i64, ptr } %t106, 0
  %t108 = extractvalue { i64, ptr } %t106, 1
  %t109 = mul i64 %t107, 1
  %t110 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t109)
  call void @llvm.memcpy.p0.p0.i64(ptr %t110, ptr %t108, i64 %t109, i1 false)
  %t111 = insertvalue { i64, ptr } undef, i64 %t107, 0
  %t112 = insertvalue { i64, ptr } %t111, ptr %t110, 1
  %t114 = call { i64, ptr } @compiler_2fmsgs_2eTok(ptr %v0, ptr %v0, { i64, ptr } %t112)
  store { i64, ptr } %t114, ptr %l58
  br label %bb20
bb20:
  %t115 = load { i64, ptr }, ptr %l58, !tbaa !27
  %t116 = extractvalue { i64, ptr } %t115, 0
  %t117 = extractvalue { i64, ptr } %t115, 1
  %t118 = mul i64 %t116, 1
  %t119 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t118)
  call void @llvm.memcpy.p0.p0.i64(ptr %t119, ptr %t117, i64 %t118, i1 false)
  %t120 = insertvalue { i64, ptr } undef, i64 %t116, 0
  %t121 = insertvalue { i64, ptr } %t120, ptr %t119, 1
  %t123 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eTypeHoldsItself(ptr %v0, ptr %v0, { i64, ptr } %t121)
  store %"compiler/diagmsg:Msg" %t123, ptr %l60
  br label %bb21
bb21:
  %t124 = load ptr, ptr %l47, !tbaa !29
  %t125 = load { i64, [3 x i64] }, ptr %l51
  %t126 = load %"compiler/diagmsg:Msg", ptr %l60
  %t127 = call i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eError(ptr %v0, ptr %v0, ptr %t124, { i64, [3 x i64] } %t125, %"compiler/diagmsg:Msg" %t126)
  store i64 %t127, ptr %l61
  br label %bb22
bb22:
  br label %ret
ret:
  ret void
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
  %t11 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %s0, { i64, ptr } %t9, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d36, i32 0, i32 1) })
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

define dso_local void @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eintroductions(ptr %v0, ptr %v1, ptr %v2, ptr %a0, i64 %a1, ptr %a2, ptr %a3, i1 %a4) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca ptr
  %l3 = alloca ptr
  %l4 = alloca i1
  %l5 = alloca %"compiler/source:Span"
  %l6 = alloca { i64, ptr }
  %l7 = alloca { i64, ptr }
  %l8 = alloca { i64, ptr }
  %l9 = alloca i64
  %l10 = alloca i64
  %l12 = alloca ptr
  %l13 = alloca ptr
  %l14 = alloca ptr
  %l15 = alloca { i64, ptr }
  %l16 = alloca { i64, ptr }
  %l17 = alloca i64
  %l18 = alloca i64
  %l19 = alloca ptr
  %l22 = alloca ptr
  %l23 = alloca i1
  %l33 = alloca i1
  %l37 = alloca i1
  %l42 = alloca ptr
  %l45 = alloca i64
  %l47 = alloca %"compiler/names:Ref"
  %l50 = alloca i1
  %l52 = alloca { i64, ptr }
  %l54 = alloca i1
  %l57 = alloca { i64, ptr }
  %l66 = alloca { i64, ptr }
  %l76 = alloca ptr
  %l77 = alloca i1
  %l88 = alloca ptr
  %l89 = alloca i1
  %l99 = alloca ptr
  %l100 = alloca i1
  %l105 = alloca ptr
  %l106 = alloca i1
  %l117 = alloca ptr
  %l118 = alloca i1
  %l130 = alloca { i64, ptr }
  %l137 = alloca i1
  %l139 = alloca ptr
  %l142 = alloca i64
  %l145 = alloca %"compiler/names:Ref"
  %l148 = alloca i1
  %l151 = alloca { i64, ptr }
  %l153 = alloca i1
  %l157 = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  store ptr %a2, ptr %l2
  store ptr %a3, ptr %l3
  store i1 %a4, ptr %l4
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l2, !tbaa !29
  %t3 = icmp eq ptr %t1, null
  br i1 %t3, label %bb1, label %bb2
bb1:
  br label %ret
bb2:
  br label %bb3
bb3:
  %t5 = load ptr, ptr %l2, !tbaa !29
  store ptr %t5, ptr %l22, !tbaa !29
  store i1 false, ptr %l23, !tbaa !21
  %t6 = load ptr, ptr %l22, !tbaa !29
  %t7 = icmp ne ptr %t6, null
  br i1 %t7, label %bb4, label %bb5
bb4:
  %t9 = load ptr, ptr %l22, !tbaa !29
  %t10 = load i64, ptr %t9, !range !{i64 0, i64 8}
  %t12 = icmp eq i64 %t10, 0
  store i1 %t12, ptr %l23, !tbaa !21
  br label %bb5
bb5:
  %t13 = load i1, ptr %l23, !tbaa !21
  br i1 %t13, label %bb6, label %bb7
bb6:
  %t14 = load ptr, ptr %l2, !tbaa !29
  %t16 = getelementptr { i64, [5 x i64] }, ptr %t14, i32 0, i32 1
  %t17 = getelementptr { %"compiler/source:Span", { i64, ptr }, { i64, ptr } }, ptr %t16, i32 0, i32 0
  %t18 = load %"compiler/source:Span", ptr %t17
  store %"compiler/source:Span" %t18, ptr %l5
  %t20 = load ptr, ptr %l2, !tbaa !29
  %t22 = getelementptr { i64, [5 x i64] }, ptr %t20, i32 0, i32 1
  %t23 = getelementptr { %"compiler/source:Span", { i64, ptr }, { i64, ptr } }, ptr %t22, i32 0, i32 1
  %t24 = load { i64, ptr }, ptr %t23
  store { i64, ptr } %t24, ptr %l6, !tbaa !27
  %t26 = load ptr, ptr %l2, !tbaa !29
  %t28 = getelementptr { i64, [5 x i64] }, ptr %t26, i32 0, i32 1
  %t29 = getelementptr { %"compiler/source:Span", { i64, ptr }, { i64, ptr } }, ptr %t28, i32 0, i32 2
  %t30 = load { i64, ptr }, ptr %t29
  store { i64, ptr } %t30, ptr %l7, !tbaa !27
  br label %bb8
bb7:
  br label %bb35
bb8:
  %t32 = load i1, ptr %l4, !tbaa !21
  br i1 %t32, label %bb9, label %bb10
bb9:
  %t34 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t36 = extractvalue { i64, ptr } %t34, 0
  %t38 = icmp eq i64 %t36, 1
  store i1 %t38, ptr %l33, !tbaa !21
  br label %bb11
bb10:
  store i1 false, ptr %l33, !tbaa !21
  br label %bb11
bb11:
  %t40 = load i1, ptr %l33, !tbaa !21
  br i1 %t40, label %bb12, label %bb13
bb12:
  %t41 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t43 = extractvalue { i64, ptr } %t41, 0
  %t45 = icmp eq i64 %t43, 0
  store i1 %t45, ptr %l37, !tbaa !21
  br label %bb14
bb13:
  store i1 false, ptr %l37, !tbaa !21
  br label %bb14
bb14:
  %t47 = load i1, ptr %l37, !tbaa !21
  br i1 %t47, label %bb15, label %bb16
bb15:
  %t48 = load ptr, ptr %l0, !tbaa !29
  %t50 = getelementptr %"compiler/generic:Program", ptr %t48, i32 0, i32 1
  %t51 = load ptr, ptr %t50, !tbaa !29
  store ptr %t51, ptr %l42, !tbaa !29
  %t52 = load ptr, ptr %l0, !tbaa !29
  %t53 = load i64, ptr %l1, !tbaa !24
  %t56 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2efile(ptr %v0, ptr %t52, i64 %t53)
  store i64 %t56, ptr %l45
  br label %bb17
bb16:
  br label %bb27
bb17:
  %t57 = getelementptr %"compiler/source:Span", ptr %l5, i32 0, i32 0
  %t58 = load i32, ptr %t57, !tbaa !23
  %t59 = load ptr, ptr %l42, !tbaa !29
  %t60 = load i64, ptr %l45, !tbaa !24
  %t62 = call %"compiler/names:Ref" @compiler_2fnames_2ecompiler_2fnames_3aResolver_2eUse(ptr %v0, ptr %t59, i64 %t60, i32 %t58)
  store %"compiler/names:Ref" %t62, ptr %l47
  br label %bb18
bb18:
  %t63 = getelementptr %"compiler/names:Ref", ptr %l47, i32 0, i32 0
  %t64 = load i32, ptr %t63, !range !{i32 0, i32 9}
  %t66 = trunc i64 8 to i32
  %t67 = icmp eq i32 %t64, %t66
  br i1 %t67, label %bb19, label %bb20
bb19:
  %t69 = load ptr, ptr %l3, !tbaa !29
  %t70 = load { i64, ptr }, ptr %l6, !tbaa !27
  store { i64, ptr } %t70, ptr %l52, !tbaa !27
  %t71 = getelementptr { i64, ptr }, ptr %l52, i32 0, i32 1
  %t72 = load ptr, ptr %t71, !tbaa !27
  %t73 = getelementptr i32, ptr %t72, i64 0
  %t74 = load i32, ptr %t73, !tbaa !33
  %t77 = call i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aNameId_3e_2eHas_3ccompiler_2fsource_3aNameId_3e(ptr %v2, ptr %t69, i32 %t74)
  store i1 %t77, ptr %l54
  br label %bb21
bb20:
  store i1 false, ptr %l50, !tbaa !21
  br label %bb22
bb21:
  %t78 = load i1, ptr %l54, !tbaa !21
  %t79 = xor i1 %t78, true
  store i1 %t79, ptr %l50, !tbaa !21
  br label %bb22
bb22:
  %t81 = load i1, ptr %l50, !tbaa !21
  br i1 %t81, label %bb23, label %bb24
bb23:
  %t82 = load ptr, ptr %l3, !tbaa !29
  %t83 = load { i64, ptr }, ptr %l6, !tbaa !27
  store { i64, ptr } %t83, ptr %l57, !tbaa !27
  %t84 = getelementptr { i64, ptr }, ptr %l57, i32 0, i32 1
  %t85 = load ptr, ptr %t84, !tbaa !27
  %t86 = getelementptr i32, ptr %t85, i64 0
  %t87 = load i32, ptr %t86, !tbaa !33
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aNameId_3e_2ePush_3ccompiler_2fsource_3aNameId_3e(ptr %v2, ptr %t82, i32 %t87)
  br label %bb25
bb24:
  br label %bb26
bb25:
  br label %bb26
bb26:
  br label %ret
bb27:
  %t90 = load { i64, ptr }, ptr %l7, !tbaa !27
  store { i64, ptr } %t90, ptr %l8, !tbaa !27
  store i64 0, ptr %l9, !tbaa !24
  %t92 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t94 = extractvalue { i64, ptr } %t92, 0
  store i64 %t94, ptr %l10, !tbaa !24
  br label %bb28
bb28:
  %t96 = load i64, ptr %l9, !tbaa !24
  %t97 = load i64, ptr %l10, !tbaa !24
  %t100 = icmp slt i64 %t96, %t97
  %t102 = xor i1 %t100, true
  br i1 %t102, label %bb29, label %bb30
bb29:
  br label %bb34
bb30:
  br label %bb31
bb31:
  %t104 = load { i64, ptr }, ptr %l8, !tbaa !27
  store { i64, ptr } %t104, ptr %l66, !tbaa !27
  %t105 = load i64, ptr %l9, !tbaa !24
  %t107 = getelementptr { i64, ptr }, ptr %l66, i32 0, i32 1
  %t108 = load ptr, ptr %t107, !tbaa !27
  %t109 = getelementptr ptr, ptr %t108, i64 %t105
  %t110 = load ptr, ptr %t109, !tbaa !39
  %t112 = load ptr, ptr %l0, !tbaa !29
  %t113 = load i64, ptr %l1, !tbaa !24
  %t116 = load ptr, ptr %l3, !tbaa !29
  call void @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eintroductions(ptr %v0, ptr %v1, ptr %v2, ptr %t112, i64 %t113, ptr %t110, ptr %t116, i1 true)
  br label %bb32
bb32:
  br label %bb33
bb33:
  %t121 = load i64, ptr %l9, !tbaa !24
  %t123 = add i64 %t121, 1
  store i64 %t123, ptr %l9, !tbaa !24
  br label %bb28
bb34:
  br label %bb90
bb35:
  %t125 = load ptr, ptr %l2, !tbaa !29
  store ptr %t125, ptr %l76, !tbaa !29
  store i1 false, ptr %l77, !tbaa !21
  %t126 = load ptr, ptr %l76, !tbaa !29
  %t127 = icmp ne ptr %t126, null
  br i1 %t127, label %bb36, label %bb37
bb36:
  %t129 = load ptr, ptr %l76, !tbaa !29
  %t130 = load i64, ptr %t129, !range !{i64 0, i64 8}
  %t132 = icmp eq i64 %t130, 3
  store i1 %t132, ptr %l77, !tbaa !21
  br label %bb37
bb37:
  %t133 = load i1, ptr %l77, !tbaa !21
  br i1 %t133, label %bb38, label %bb39
bb38:
  %t134 = load ptr, ptr %l2, !tbaa !29
  %t136 = getelementptr { i64, [5 x i64] }, ptr %t134, i32 0, i32 1
  %t137 = getelementptr { %"compiler/source:Span", ptr, i1, i1 }, ptr %t136, i32 0, i32 1
  %t138 = load ptr, ptr %t137
  store ptr %t138, ptr %l12, !tbaa !29
  br label %bb40
bb39:
  br label %bb42
bb40:
  %t140 = load ptr, ptr %l0, !tbaa !29
  %t141 = load i64, ptr %l1, !tbaa !24
  %t142 = load ptr, ptr %l12, !tbaa !29
  %t144 = load ptr, ptr %l3, !tbaa !29
  %t145 = load i1, ptr %l4, !tbaa !21
  call void @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eintroductions(ptr %v0, ptr %v1, ptr %v2, ptr %t140, i64 %t141, ptr %t142, ptr %t144, i1 %t145)
  br label %bb41
bb41:
  br label %bb90
bb42:
  %t151 = load ptr, ptr %l2, !tbaa !29
  store ptr %t151, ptr %l88, !tbaa !29
  store i1 false, ptr %l89, !tbaa !21
  %t152 = load ptr, ptr %l88, !tbaa !29
  %t153 = icmp ne ptr %t152, null
  br i1 %t153, label %bb43, label %bb44
bb43:
  %t155 = load ptr, ptr %l88, !tbaa !29
  %t156 = load i64, ptr %t155, !range !{i64 0, i64 8}
  %t158 = icmp eq i64 %t156, 4
  store i1 %t158, ptr %l89, !tbaa !21
  br label %bb44
bb44:
  %t159 = load i1, ptr %l89, !tbaa !21
  br i1 %t159, label %bb45, label %bb46
bb45:
  %t160 = load ptr, ptr %l2, !tbaa !29
  %t162 = getelementptr { i64, [5 x i64] }, ptr %t160, i32 0, i32 1
  %t163 = getelementptr { %"compiler/source:Span", ptr, i1 }, ptr %t162, i32 0, i32 1
  %t164 = load ptr, ptr %t163
  store ptr %t164, ptr %l13, !tbaa !29
  br label %bb47
bb46:
  br label %bb49
bb47:
  %t166 = load ptr, ptr %l0, !tbaa !29
  %t167 = load i64, ptr %l1, !tbaa !24
  %t168 = load ptr, ptr %l13, !tbaa !29
  %t169 = load ptr, ptr %l3, !tbaa !29
  %t170 = load i1, ptr %l4, !tbaa !21
  call void @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eintroductions(ptr %v0, ptr %v1, ptr %v2, ptr %t166, i64 %t167, ptr %t168, ptr %t169, i1 %t170)
  br label %bb48
bb48:
  br label %bb90
bb49:
  %t176 = load ptr, ptr %l2, !tbaa !29
  store ptr %t176, ptr %l99, !tbaa !29
  store i1 false, ptr %l100, !tbaa !21
  %t177 = load ptr, ptr %l99, !tbaa !29
  %t178 = icmp ne ptr %t177, null
  br i1 %t178, label %bb50, label %bb51
bb50:
  %t180 = load ptr, ptr %l99, !tbaa !29
  %t181 = load i64, ptr %t180, !range !{i64 0, i64 8}
  %t183 = icmp eq i64 %t181, 5
  store i1 %t183, ptr %l100, !tbaa !21
  br label %bb51
bb51:
  %t184 = load i1, ptr %l100, !tbaa !21
  br i1 %t184, label %bb52, label %bb53
bb52:
  %t185 = load ptr, ptr %l2, !tbaa !29
  %t187 = getelementptr { i64, [5 x i64] }, ptr %t185, i32 0, i32 1
  %t188 = getelementptr { %"compiler/source:Span", ptr }, ptr %t187, i32 0, i32 1
  %t189 = load ptr, ptr %t188
  store ptr %t189, ptr %l14, !tbaa !29
  br label %bb58
bb53:
  %t191 = load ptr, ptr %l2, !tbaa !29
  store ptr %t191, ptr %l105, !tbaa !29
  store i1 false, ptr %l106, !tbaa !21
  %t192 = load ptr, ptr %l105, !tbaa !29
  %t193 = icmp ne ptr %t192, null
  br i1 %t193, label %bb54, label %bb55
bb54:
  %t195 = load ptr, ptr %l105, !tbaa !29
  %t196 = load i64, ptr %t195, !range !{i64 0, i64 8}
  %t198 = icmp eq i64 %t196, 7
  store i1 %t198, ptr %l106, !tbaa !21
  br label %bb55
bb55:
  %t199 = load i1, ptr %l106, !tbaa !21
  br i1 %t199, label %bb56, label %bb57
bb56:
  %t200 = load ptr, ptr %l2, !tbaa !29
  %t202 = getelementptr { i64, [5 x i64] }, ptr %t200, i32 0, i32 1
  %t203 = getelementptr { %"compiler/source:Span", ptr }, ptr %t202, i32 0, i32 1
  %t204 = load ptr, ptr %t203
  store ptr %t204, ptr %l14, !tbaa !29
  br label %bb58
bb57:
  br label %bb60
bb58:
  %t206 = load ptr, ptr %l0, !tbaa !29
  %t207 = load i64, ptr %l1, !tbaa !24
  %t208 = load ptr, ptr %l14, !tbaa !29
  %t210 = load ptr, ptr %l3, !tbaa !29
  %t211 = load i1, ptr %l4, !tbaa !21
  call void @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eintroductions(ptr %v0, ptr %v1, ptr %v2, ptr %t206, i64 %t207, ptr %t208, ptr %t210, i1 %t211)
  br label %bb59
bb59:
  br label %bb90
bb60:
  %t217 = load ptr, ptr %l2, !tbaa !29
  store ptr %t217, ptr %l117, !tbaa !29
  store i1 false, ptr %l118, !tbaa !21
  %t218 = load ptr, ptr %l117, !tbaa !29
  %t219 = icmp ne ptr %t218, null
  br i1 %t219, label %bb61, label %bb62
bb61:
  %t221 = load ptr, ptr %l117, !tbaa !29
  %t222 = load i64, ptr %t221, !range !{i64 0, i64 8}
  %t224 = icmp eq i64 %t222, 6
  store i1 %t224, ptr %l118, !tbaa !21
  br label %bb62
bb62:
  %t225 = load i1, ptr %l118, !tbaa !21
  br i1 %t225, label %bb63, label %bb64
bb63:
  %t226 = load ptr, ptr %l2, !tbaa !29
  %t228 = getelementptr { i64, [5 x i64] }, ptr %t226, i32 0, i32 1
  %t229 = getelementptr { %"compiler/source:Span", { i64, ptr } }, ptr %t228, i32 0, i32 1
  %t230 = load { i64, ptr }, ptr %t229
  store { i64, ptr } %t230, ptr %l15, !tbaa !27
  br label %bb65
bb64:
  br label %bb85
bb65:
  %t232 = load { i64, ptr }, ptr %l15, !tbaa !27
  store { i64, ptr } %t232, ptr %l16, !tbaa !27
  store i64 0, ptr %l17, !tbaa !24
  %t234 = load { i64, ptr }, ptr %l16, !tbaa !27
  %t236 = extractvalue { i64, ptr } %t234, 0
  store i64 %t236, ptr %l18, !tbaa !24
  br label %bb66
bb66:
  %t238 = load i64, ptr %l17, !tbaa !24
  %t239 = load i64, ptr %l18, !tbaa !24
  %t242 = icmp slt i64 %t238, %t239
  %t244 = xor i1 %t242, true
  br i1 %t244, label %bb67, label %bb68
bb67:
  br label %bb84
bb68:
  br label %bb69
bb69:
  %t246 = load { i64, ptr }, ptr %l16, !tbaa !27
  store { i64, ptr } %t246, ptr %l130, !tbaa !27
  %t247 = load i64, ptr %l17, !tbaa !24
  %t249 = getelementptr { i64, ptr }, ptr %l130, i32 0, i32 1
  %t250 = load ptr, ptr %t249, !tbaa !27
  %t251 = getelementptr ptr, ptr %t250, i64 %t247
  %t252 = load ptr, ptr %t251, !tbaa !39
  store ptr %t252, ptr %l19, !tbaa !29
  %t254 = load ptr, ptr %l19, !tbaa !29
  %t256 = getelementptr %"compiler/ast:Path", ptr %t254, i32 0, i32 1
  %t257 = load { i64, ptr }, ptr %t256, !tbaa !27
  %t259 = extractvalue { i64, ptr } %t257, 0
  %t261 = icmp eq i64 %t259, 1
  br i1 %t261, label %bb70, label %bb71
bb70:
  %t263 = load ptr, ptr %l0, !tbaa !29
  %t265 = getelementptr %"compiler/generic:Program", ptr %t263, i32 0, i32 1
  %t266 = load ptr, ptr %t265, !tbaa !29
  store ptr %t266, ptr %l139, !tbaa !29
  %t267 = load ptr, ptr %l0, !tbaa !29
  %t268 = load i64, ptr %l1, !tbaa !24
  %t271 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2efile(ptr %v0, ptr %t267, i64 %t268)
  store i64 %t271, ptr %l142
  br label %bb72
bb71:
  store i1 false, ptr %l137, !tbaa !21
  br label %bb74
bb72:
  %t272 = load ptr, ptr %l19, !tbaa !29
  %t274 = getelementptr %"compiler/ast:Path", ptr %t272, i32 0, i32 0
  %t275 = getelementptr %"compiler/source:Span", ptr %t274, i32 0, i32 0
  %t276 = load i32, ptr %t275, !tbaa !23
  %t277 = load ptr, ptr %l139, !tbaa !29
  %t278 = load i64, ptr %l142, !tbaa !24
  %t280 = call %"compiler/names:Ref" @compiler_2fnames_2ecompiler_2fnames_3aResolver_2eUse(ptr %v0, ptr %t277, i64 %t278, i32 %t276)
  store %"compiler/names:Ref" %t280, ptr %l145
  br label %bb73
bb73:
  %t281 = getelementptr %"compiler/names:Ref", ptr %l145, i32 0, i32 0
  %t282 = load i32, ptr %t281, !range !{i32 0, i32 9}
  %t284 = trunc i64 8 to i32
  %t285 = icmp eq i32 %t282, %t284
  store i1 %t285, ptr %l137, !tbaa !21
  br label %bb74
bb74:
  %t287 = load i1, ptr %l137, !tbaa !21
  br i1 %t287, label %bb75, label %bb76
bb75:
  %t288 = load ptr, ptr %l3, !tbaa !29
  %t289 = load ptr, ptr %l19, !tbaa !29
  %t291 = getelementptr %"compiler/ast:Path", ptr %t289, i32 0, i32 1
  %t292 = load { i64, ptr }, ptr %t291, !tbaa !27
  store { i64, ptr } %t292, ptr %l151, !tbaa !27
  %t293 = getelementptr { i64, ptr }, ptr %l151, i32 0, i32 1
  %t294 = load ptr, ptr %t293, !tbaa !27
  %t295 = getelementptr i32, ptr %t294, i64 0
  %t296 = load i32, ptr %t295, !tbaa !33
  %t299 = call i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aNameId_3e_2eHas_3ccompiler_2fsource_3aNameId_3e(ptr %v2, ptr %t288, i32 %t296)
  store i1 %t299, ptr %l153
  br label %bb77
bb76:
  store i1 false, ptr %l148, !tbaa !21
  br label %bb78
bb77:
  %t300 = load i1, ptr %l153, !tbaa !21
  %t301 = xor i1 %t300, true
  store i1 %t301, ptr %l148, !tbaa !21
  br label %bb78
bb78:
  %t303 = load i1, ptr %l148, !tbaa !21
  br i1 %t303, label %bb79, label %bb80
bb79:
  %t304 = load ptr, ptr %l3, !tbaa !29
  %t305 = load ptr, ptr %l19, !tbaa !29
  %t307 = getelementptr %"compiler/ast:Path", ptr %t305, i32 0, i32 1
  %t308 = load { i64, ptr }, ptr %t307, !tbaa !27
  store { i64, ptr } %t308, ptr %l157, !tbaa !27
  %t309 = getelementptr { i64, ptr }, ptr %l157, i32 0, i32 1
  %t310 = load ptr, ptr %t309, !tbaa !27
  %t311 = getelementptr i32, ptr %t310, i64 0
  %t312 = load i32, ptr %t311, !tbaa !33
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aNameId_3e_2ePush_3ccompiler_2fsource_3aNameId_3e(ptr %v2, ptr %t304, i32 %t312)
  br label %bb81
bb80:
  br label %bb82
bb81:
  br label %bb82
bb82:
  br label %bb83
bb83:
  %t315 = load i64, ptr %l17, !tbaa !24
  %t317 = add i64 %t315, 1
  store i64 %t317, ptr %l17, !tbaa !24
  br label %bb66
bb84:
  br label %bb90
bb85:
  br i1 true, label %bb86, label %bb87
bb86:
  br label %bb88
bb87:
  br label %bb89
bb88:
  br label %bb90
bb89:
  call void @__olang_check_failed(ptr @olang_loc_e8d533ef83292235_9ed3ad18ce9fa601)
  unreachable
bb90:
  br label %ret
ret:
  ret void
}

define dso_local i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eisVar(ptr %v0, ptr %v1, ptr %a0, i32 %a1, ptr %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l6 = alloca i32
  %l9 = alloca i1
  %l13 = alloca i64
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
  %t10 = trunc i64 25 to i32
  %t11 = icmp eq i32 %t8, %t10
  br i1 %t11, label %bb2, label %bb3
bb2:
  %t13 = load ptr, ptr %l0, !tbaa !29
  %t15 = getelementptr %"compiler/generic:Program", ptr %t13, i32 0, i32 2
  %t16 = load i32, ptr %l1, !tbaa !23
  %t19 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eA(ptr %v0, ptr %t15, i32 %t16)
  store i64 %t19, ptr %l13
  br label %bb4
bb3:
  store i1 false, ptr %l9, !tbaa !21
  br label %bb5
bb4:
  %t22 = getelementptr %"compiler/generic:Binding", ptr %a2, i32 0, i32 0
  %t23 = load i64, ptr %t22, !tbaa !24
  %t24 = load i64, ptr %l13, !tbaa !24
  %t26 = icmp eq i64 %t24, %t23
  store i1 %t26, ptr %l9, !tbaa !21
  br label %bb5
bb5:
  %t28 = load i1, ptr %l9, !tbaa !21
  store i1 %t28, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local { i64, ptr } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2ekeepsPromise(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %a0, ptr %a1, ptr %a2, i32 %a3, ptr %a4, i64 %a5) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l4 = alloca ptr
  %l5 = alloca i64
  %l6 = alloca [0 x i64]
  %l7 = alloca { i64, ptr }
  %l8 = alloca i64
  %l9 = alloca i32
  %l10 = alloca i32
  %l11 = alloca { i64, ptr }
  %l12 = alloca { i64, ptr }
  %l13 = alloca i64
  %l14 = alloca i64
  %l15 = alloca i64
  %l16 = alloca i64
  %l17 = alloca i64
  %l18 = alloca i64
  %l21 = alloca ptr
  %l25 = alloca i32
  %l26 = alloca { i64, ptr }
  %l28 = alloca { i64, ptr }
  %l31 = alloca i1
  %l33 = alloca i1
  %l36 = alloca { i64, ptr }
  %l39 = alloca i1
  %l41 = alloca ptr
  %l42 = alloca ptr
  %l43 = alloca ptr
  %l46 = alloca { i64, ptr }
  %l48 = alloca { i64, ptr }
  %l49 = alloca %"compiler/diagmsg:Msg"
  %l50 = alloca [0 x i64]
  %l51 = alloca { i64, ptr }
  %l58 = alloca [3 x i64]
  %l59 = alloca { i64, ptr }
  %l64 = alloca i64
  %l67 = alloca [0 x i64]
  %l68 = alloca { i64, ptr }
  %l72 = alloca ptr
  %l73 = alloca ptr
  %l74 = alloca ptr
  %l77 = alloca { i64, ptr }
  %l79 = alloca { i64, ptr }
  %l80 = alloca %"compiler/diagmsg:Msg"
  %l81 = alloca [0 x i64]
  %l82 = alloca { i64, ptr }
  %l84 = alloca { i64, ptr }
  %l87 = alloca i1
  %l89 = alloca ptr
  %l90 = alloca ptr
  %l91 = alloca ptr
  %l94 = alloca { i64, ptr }
  %l96 = alloca { i64, ptr }
  %l97 = alloca %"compiler/diagmsg:Msg"
  %l98 = alloca [0 x i64]
  %l99 = alloca { i64, ptr }
  %l106 = alloca [3 x i64]
  %l107 = alloca { i64, ptr }
  %l112 = alloca ptr
  %l113 = alloca ptr
  %l114 = alloca ptr
  %l117 = alloca { i64, ptr }
  %l119 = alloca { i64, ptr }
  %l122 = alloca { i64, ptr }
  %l124 = alloca { i64, ptr }
  %l125 = alloca %"compiler/diagmsg:Msg"
  %l126 = alloca [0 x i64]
  %l127 = alloca { i64, ptr }
  %l129 = alloca { i64, ptr }
  %l131 = alloca { i64, ptr }
  %l137 = alloca i1
  %l141 = alloca i32
  %l145 = alloca i32
  %l152 = alloca [3 x i64]
  %l153 = alloca { i64, ptr }
  %l156 = alloca { i64, ptr }
  %l159 = alloca i1
  %l161 = alloca ptr
  %l162 = alloca ptr
  %l163 = alloca ptr
  %l166 = alloca { i64, ptr }
  %l169 = alloca { i64, ptr }
  %l171 = alloca { i64, ptr }
  %l172 = alloca %"compiler/diagmsg:Msg"
  %l173 = alloca [0 x i64]
  %l174 = alloca { i64, ptr }
  %l178 = alloca i1
  %l179 = alloca i1
  %l181 = alloca ptr
  %l185 = alloca i32
  %l186 = alloca i32
  %l190 = alloca ptr
  %l194 = alloca i32
  %l195 = alloca { i64, ptr }
  %l201 = alloca i64
  %l204 = alloca i64
  %l226 = alloca i1
  %l231 = alloca i1
  %l233 = alloca { i64, ptr }
  %l236 = alloca i1
  %l238 = alloca ptr
  %l239 = alloca ptr
  %l240 = alloca ptr
  %l243 = alloca { i64, ptr }
  %l245 = alloca { i64, ptr }
  %l248 = alloca { i64, ptr }
  %l251 = alloca %"compiler/diagmsg:Msg"
  %l252 = alloca [0 x i64]
  %l253 = alloca { i64, ptr }
  %l260 = alloca [3 x i64]
  %l261 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %s14 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store ptr %a4, ptr %l4
  store i64 %a5, ptr %l5
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  store [0 x i64] zeroinitializer, ptr %l6
  %t2 = load ptr, ptr %l0, !tbaa !29
  %t4 = getelementptr %"compiler/generic:Program", ptr %t2, i32 0, i32 2
  store ptr %t4, ptr %l21, !tbaa !29
  %t5 = load ptr, ptr %l0, !tbaa !29
  %t7 = getelementptr %"compiler/generic:Program", ptr %t5, i32 0, i32 2
  %t11 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParams(ptr %v0, ptr %t7, i32 %a3)
  store i32 %t11, ptr %l25
  br label %bb1
bb1:
  %t12 = load ptr, ptr %l21, !tbaa !29
  %t13 = load i32, ptr %l25, !tbaa !23
  %t14 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t12, i32 %t13)
  store { i64, ptr } %t14, ptr %l26
  br label %bb2
bb2:
  %t15 = load { i64, ptr }, ptr %l26, !tbaa !27
  store { i64, ptr } %t15, ptr %l7, !tbaa !27
  %t16 = load ptr, ptr %l0, !tbaa !29
  %t17 = load { i64, ptr }, ptr %l7, !tbaa !27
  store { i64, ptr } %t17, ptr %l28, !tbaa !27
  %t18 = load i64, ptr %l5, !tbaa !24
  %t20 = getelementptr { i64, ptr }, ptr %l28, i32 0, i32 1
  %t21 = load ptr, ptr %t20, !tbaa !27
  %t22 = getelementptr i32, ptr %t21, i64 %t18
  %t23 = load i32, ptr %t22, !tbaa !33
  %t26 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2emayHold(ptr %v0, ptr %t16, i32 %t23)
  store i1 %t26, ptr %l31
  br label %bb3
bb3:
  %t27 = load i1, ptr %l31, !tbaa !21
  %t28 = xor i1 %t27, true
  br i1 %t28, label %bb4, label %bb5
bb4:
  %t30 = load ptr, ptr %l0, !tbaa !29
  %t32 = getelementptr %"compiler/generic:Program", ptr %t30, i32 0, i32 2
  %t33 = load { i64, ptr }, ptr %l7, !tbaa !27
  store { i64, ptr } %t33, ptr %l36, !tbaa !27
  %t34 = load i64, ptr %l5, !tbaa !24
  %t36 = getelementptr { i64, ptr }, ptr %l36, i32 0, i32 1
  %t37 = load ptr, ptr %t36, !tbaa !27
  %t38 = getelementptr i32, ptr %t37, i64 %t34
  %t39 = load i32, ptr %t38, !tbaa !33
  %t42 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eUnique(ptr %v0, ptr %t32, i32 %t39)
  store i1 %t42, ptr %l39
  br label %bb6
bb5:
  store i1 false, ptr %l33, !tbaa !21
  br label %bb7
bb6:
  %t43 = load i1, ptr %l39, !tbaa !21
  %t44 = xor i1 %t43, true
  store i1 %t44, ptr %l33, !tbaa !21
  br label %bb7
bb7:
  %t46 = load i1, ptr %l33, !tbaa !21
  br i1 %t46, label %bb8, label %bb9
bb8:
  %t47 = load ptr, ptr %l0, !tbaa !29
  store ptr %t47, ptr %l41, !tbaa !29
  %t48 = load ptr, ptr %l1, !tbaa !29
  store ptr %t48, ptr %l42, !tbaa !29
  %t49 = load ptr, ptr %l4, !tbaa !29
  store ptr %t49, ptr %l43, !tbaa !29
  %t50 = load ptr, ptr %l0, !tbaa !29
  %t51 = load ptr, ptr %l4, !tbaa !29
  %t53 = getelementptr %"compiler/ast:Promise", ptr %t51, i32 0, i32 2
  %t54 = load { i64, ptr }, ptr %t53, !tbaa !27
  store { i64, ptr } %t54, ptr %l46, !tbaa !27
  %t55 = getelementptr { i64, ptr }, ptr %l46, i32 0, i32 1
  %t56 = load ptr, ptr %t55, !tbaa !27
  %t57 = getelementptr i32, ptr %t56, i64 0
  %t58 = load i32, ptr %t57, !tbaa !33
  %t61 = call { i64, ptr } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2etext(ptr %v0, ptr %v0, ptr %t50, i32 %t58)
  store { i64, ptr } %t61, ptr %l48
  br label %bb10
bb9:
  br label %bb13
bb10:
  %t62 = load { i64, ptr }, ptr %l48, !tbaa !27
  %t63 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2ePromiseKeepsValue(ptr %v0, ptr %v0, { i64, ptr } %t62)
  store %"compiler/diagmsg:Msg" %t63, ptr %l49
  br label %bb11
bb11:
  %t64 = load ptr, ptr %l41, !tbaa !29
  %t65 = load ptr, ptr %l42, !tbaa !29
  %t66 = load ptr, ptr %l43, !tbaa !29
  %t67 = load %"compiler/diagmsg:Msg", ptr %l49
  call void @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2epromiseErr(ptr %v0, ptr %v1, ptr %v3, ptr %v0, ptr %t64, ptr %t65, ptr %t66, %"compiler/diagmsg:Msg" %t67)
  br label %bb12
bb12:
  %t68 = load [0 x i64], ptr %l6
  store [0 x i64] %t68, ptr %l50
  %t69 = mul i64 0, 8
  %t70 = insertvalue { i64, ptr } undef, i64 0, 0
  %t71 = insertvalue { i64, ptr } %t70, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  store { i64, ptr } %t71, ptr %l51, !tbaa !27
  %t72 = getelementptr { i64, ptr }, ptr %l51, i32 0, i32 1
  %t73 = load ptr, ptr %t72, !tbaa !27
  %t74 = mul i64 0, 8
  call void @llvm.memmove.p0.p0.i64(ptr %t73, ptr %l50, i64 %t74, i1 false)
  call void @__olang_scope_close(ptr %s0)
  %t75 = load { i64, ptr }, ptr %l51, !tbaa !27
  store { i64, ptr } %t75, ptr %rv
  br label %ret
bb13:
  %t76 = load ptr, ptr %l4, !tbaa !29
  %t78 = getelementptr %"compiler/ast:Promise", ptr %t76, i32 0, i32 2
  %t79 = load { i64, ptr }, ptr %t78, !tbaa !27
  %t81 = extractvalue { i64, ptr } %t79, 0
  %t83 = icmp eq i64 %t81, 1
  br i1 %t83, label %bb14, label %bb15
bb14:
  %t85 = load i64, ptr %l5, !tbaa !24
  %t86 = load i64, ptr @G_2ecompiler_2ftypes_2eKeepsHome, !tbaa !24
  %t88 = insertvalue [3 x i64] undef, i64 %t85, 0
  %t90 = insertvalue [3 x i64] %t88, i64 %t86, 1
  %t91 = insertvalue [3 x i64] %t90, i64 0, 2
  store [3 x i64] %t91, ptr %l58
  %t92 = mul i64 3, 8
  %t93 = call ptr @__olang_scope_alloc(ptr %v4, i64 %t92)
  %t94 = insertvalue { i64, ptr } undef, i64 3, 0
  %t95 = insertvalue { i64, ptr } %t94, ptr %t93, 1
  store { i64, ptr } %t95, ptr %l59, !tbaa !27
  %t96 = getelementptr { i64, ptr }, ptr %l59, i32 0, i32 1
  %t97 = load ptr, ptr %t96, !tbaa !27
  %t98 = mul i64 3, 8
  call void @llvm.memmove.p0.p0.i64(ptr %t97, ptr %l58, i64 %t98, i1 false)
  call void @__olang_scope_close(ptr %s0)
  %t99 = load { i64, ptr }, ptr %l59, !tbaa !27
  store { i64, ptr } %t99, ptr %rv
  br label %ret
bb15:
  br label %bb16
bb16:
  %t100 = load ptr, ptr %l0, !tbaa !29
  %t101 = load ptr, ptr %l1, !tbaa !29
  %t103 = load ptr, ptr %l4, !tbaa !29
  %t108 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2epromiseParam(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %t100, ptr %t101, ptr %a2, ptr %t103, i64 1)
  store i64 %t108, ptr %l64
  br label %bb17
bb17:
  %t109 = load i64, ptr %l64, !tbaa !24
  store i64 %t109, ptr %l8, !tbaa !24
  %t110 = load i64, ptr %l8, !tbaa !24
  %t112 = icmp slt i64 %t110, 0
  br i1 %t112, label %bb18, label %bb19
bb18:
  %t114 = load [0 x i64], ptr %l6
  store [0 x i64] %t114, ptr %l67
  %t115 = mul i64 0, 8
  %t116 = insertvalue { i64, ptr } undef, i64 0, 0
  %t117 = insertvalue { i64, ptr } %t116, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  store { i64, ptr } %t117, ptr %l68, !tbaa !27
  %t118 = getelementptr { i64, ptr }, ptr %l68, i32 0, i32 1
  %t119 = load ptr, ptr %t118, !tbaa !27
  %t120 = mul i64 0, 8
  call void @llvm.memmove.p0.p0.i64(ptr %t119, ptr %l67, i64 %t120, i1 false)
  call void @__olang_scope_close(ptr %s0)
  %t121 = load { i64, ptr }, ptr %l68, !tbaa !27
  store { i64, ptr } %t121, ptr %rv
  br label %ret
bb19:
  br label %bb20
bb20:
  %t122 = load i64, ptr %l8, !tbaa !24
  %t123 = load i64, ptr %l5, !tbaa !24
  %t126 = icmp eq i64 %t122, %t123
  br i1 %t126, label %bb21, label %bb22
bb21:
  %t128 = load ptr, ptr %l0, !tbaa !29
  store ptr %t128, ptr %l72, !tbaa !29
  %t129 = load ptr, ptr %l1, !tbaa !29
  store ptr %t129, ptr %l73, !tbaa !29
  %t130 = load ptr, ptr %l4, !tbaa !29
  store ptr %t130, ptr %l74, !tbaa !29
  %t131 = load ptr, ptr %l0, !tbaa !29
  %t132 = load ptr, ptr %l4, !tbaa !29
  %t134 = getelementptr %"compiler/ast:Promise", ptr %t132, i32 0, i32 2
  %t135 = load { i64, ptr }, ptr %t134, !tbaa !27
  store { i64, ptr } %t135, ptr %l77, !tbaa !27
  %t136 = getelementptr { i64, ptr }, ptr %l77, i32 0, i32 1
  %t137 = load ptr, ptr %t136, !tbaa !27
  %t138 = getelementptr i32, ptr %t137, i64 0
  %t139 = load i32, ptr %t138, !tbaa !33
  %t142 = call { i64, ptr } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2etext(ptr %v0, ptr %v0, ptr %t131, i32 %t139)
  store { i64, ptr } %t142, ptr %l79
  br label %bb23
bb22:
  br label %bb26
bb23:
  %t143 = load { i64, ptr }, ptr %l79, !tbaa !27
  %t144 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2ePromiseKeepsSelf(ptr %v0, ptr %v0, { i64, ptr } %t143)
  store %"compiler/diagmsg:Msg" %t144, ptr %l80
  br label %bb24
bb24:
  %t145 = load ptr, ptr %l72, !tbaa !29
  %t146 = load ptr, ptr %l73, !tbaa !29
  %t147 = load ptr, ptr %l74, !tbaa !29
  %t148 = load %"compiler/diagmsg:Msg", ptr %l80
  call void @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2epromiseErr(ptr %v0, ptr %v1, ptr %v3, ptr %v0, ptr %t145, ptr %t146, ptr %t147, %"compiler/diagmsg:Msg" %t148)
  br label %bb25
bb25:
  %t149 = load [0 x i64], ptr %l6
  store [0 x i64] %t149, ptr %l81
  %t150 = mul i64 0, 8
  %t151 = insertvalue { i64, ptr } undef, i64 0, 0
  %t152 = insertvalue { i64, ptr } %t151, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  store { i64, ptr } %t152, ptr %l82, !tbaa !27
  %t153 = getelementptr { i64, ptr }, ptr %l82, i32 0, i32 1
  %t154 = load ptr, ptr %t153, !tbaa !27
  %t155 = mul i64 0, 8
  call void @llvm.memmove.p0.p0.i64(ptr %t154, ptr %l81, i64 %t155, i1 false)
  call void @__olang_scope_close(ptr %s0)
  %t156 = load { i64, ptr }, ptr %l82, !tbaa !27
  store { i64, ptr } %t156, ptr %rv
  br label %ret
bb26:
  %t157 = load ptr, ptr %l0, !tbaa !29
  %t158 = load { i64, ptr }, ptr %l7, !tbaa !27
  store { i64, ptr } %t158, ptr %l84, !tbaa !27
  %t159 = load i64, ptr %l8, !tbaa !24
  %t161 = getelementptr { i64, ptr }, ptr %l84, i32 0, i32 1
  %t162 = load ptr, ptr %t161, !tbaa !27
  %t163 = getelementptr i32, ptr %t162, i64 %t159
  %t164 = load i32, ptr %t163, !tbaa !33
  %t167 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2emayHold(ptr %v0, ptr %t157, i32 %t164)
  store i1 %t167, ptr %l87
  br label %bb27
bb27:
  %t168 = load i1, ptr %l87, !tbaa !21
  %t169 = xor i1 %t168, true
  br i1 %t169, label %bb28, label %bb29
bb28:
  %t171 = load ptr, ptr %l0, !tbaa !29
  store ptr %t171, ptr %l89, !tbaa !29
  %t172 = load ptr, ptr %l1, !tbaa !29
  store ptr %t172, ptr %l90, !tbaa !29
  %t173 = load ptr, ptr %l4, !tbaa !29
  store ptr %t173, ptr %l91, !tbaa !29
  %t174 = load ptr, ptr %l0, !tbaa !29
  %t175 = load ptr, ptr %l4, !tbaa !29
  %t177 = getelementptr %"compiler/ast:Promise", ptr %t175, i32 0, i32 2
  %t178 = load { i64, ptr }, ptr %t177, !tbaa !27
  store { i64, ptr } %t178, ptr %l94, !tbaa !27
  %t179 = getelementptr { i64, ptr }, ptr %l94, i32 0, i32 1
  %t180 = load ptr, ptr %t179, !tbaa !27
  %t181 = getelementptr i32, ptr %t180, i64 1
  %t182 = load i32, ptr %t181, !tbaa !33
  %t185 = call { i64, ptr } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2etext(ptr %v0, ptr %v0, ptr %t174, i32 %t182)
  store { i64, ptr } %t185, ptr %l96
  br label %bb30
bb29:
  br label %bb33
bb30:
  %t186 = load { i64, ptr }, ptr %l96, !tbaa !27
  %t187 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2ePromiseKeepsInValue(ptr %v0, ptr %v0, { i64, ptr } %t186)
  store %"compiler/diagmsg:Msg" %t187, ptr %l97
  br label %bb31
bb31:
  %t188 = load ptr, ptr %l89, !tbaa !29
  %t189 = load ptr, ptr %l90, !tbaa !29
  %t190 = load ptr, ptr %l91, !tbaa !29
  %t191 = load %"compiler/diagmsg:Msg", ptr %l97
  call void @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2epromiseErr(ptr %v0, ptr %v1, ptr %v3, ptr %v0, ptr %t188, ptr %t189, ptr %t190, %"compiler/diagmsg:Msg" %t191)
  br label %bb32
bb32:
  %t192 = load [0 x i64], ptr %l6
  store [0 x i64] %t192, ptr %l98
  %t193 = mul i64 0, 8
  %t194 = insertvalue { i64, ptr } undef, i64 0, 0
  %t195 = insertvalue { i64, ptr } %t194, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  store { i64, ptr } %t195, ptr %l99, !tbaa !27
  %t196 = getelementptr { i64, ptr }, ptr %l99, i32 0, i32 1
  %t197 = load ptr, ptr %t196, !tbaa !27
  %t198 = mul i64 0, 8
  call void @llvm.memmove.p0.p0.i64(ptr %t197, ptr %l98, i64 %t198, i1 false)
  call void @__olang_scope_close(ptr %s0)
  %t199 = load { i64, ptr }, ptr %l99, !tbaa !27
  store { i64, ptr } %t199, ptr %rv
  br label %ret
bb33:
  %t200 = load ptr, ptr %l4, !tbaa !29
  %t202 = getelementptr %"compiler/ast:Promise", ptr %t200, i32 0, i32 2
  %t203 = load { i64, ptr }, ptr %t202, !tbaa !27
  %t205 = extractvalue { i64, ptr } %t203, 0
  %t207 = icmp eq i64 %t205, 2
  br i1 %t207, label %bb34, label %bb35
bb34:
  %t209 = load i64, ptr %l5, !tbaa !24
  %t210 = load i64, ptr %l8, !tbaa !24
  %t212 = insertvalue [3 x i64] undef, i64 %t209, 0
  %t214 = insertvalue [3 x i64] %t212, i64 %t210, 1
  %t215 = insertvalue [3 x i64] %t214, i64 0, 2
  store [3 x i64] %t215, ptr %l106
  %t216 = mul i64 3, 8
  %t217 = call ptr @__olang_scope_alloc(ptr %v4, i64 %t216)
  %t218 = insertvalue { i64, ptr } undef, i64 3, 0
  %t219 = insertvalue { i64, ptr } %t218, ptr %t217, 1
  store { i64, ptr } %t219, ptr %l107, !tbaa !27
  %t220 = getelementptr { i64, ptr }, ptr %l107, i32 0, i32 1
  %t221 = load ptr, ptr %t220, !tbaa !27
  %t222 = mul i64 3, 8
  call void @llvm.memmove.p0.p0.i64(ptr %t221, ptr %l106, i64 %t222, i1 false)
  call void @__olang_scope_close(ptr %s0)
  %t223 = load { i64, ptr }, ptr %l107, !tbaa !27
  store { i64, ptr } %t223, ptr %rv
  br label %ret
bb35:
  br label %bb36
bb36:
  %t224 = load ptr, ptr %l4, !tbaa !29
  %t226 = getelementptr %"compiler/ast:Promise", ptr %t224, i32 0, i32 2
  %t227 = load { i64, ptr }, ptr %t226, !tbaa !27
  %t229 = extractvalue { i64, ptr } %t227, 0
  %t231 = icmp sgt i64 %t229, 3
  br i1 %t231, label %bb37, label %bb38
bb37:
  %t233 = load ptr, ptr %l0, !tbaa !29
  store ptr %t233, ptr %l112, !tbaa !29
  %t234 = load ptr, ptr %l1, !tbaa !29
  store ptr %t234, ptr %l113, !tbaa !29
  %t235 = load ptr, ptr %l4, !tbaa !29
  store ptr %t235, ptr %l114, !tbaa !29
  %t236 = load ptr, ptr %l0, !tbaa !29
  %t237 = load ptr, ptr %l4, !tbaa !29
  %t239 = getelementptr %"compiler/ast:Promise", ptr %t237, i32 0, i32 2
  %t240 = load { i64, ptr }, ptr %t239, !tbaa !27
  store { i64, ptr } %t240, ptr %l117, !tbaa !27
  %t241 = getelementptr { i64, ptr }, ptr %l117, i32 0, i32 1
  %t242 = load ptr, ptr %t241, !tbaa !27
  %t243 = getelementptr i32, ptr %t242, i64 1
  %t244 = load i32, ptr %t243, !tbaa !33
  %t247 = call { i64, ptr } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2etext(ptr %v0, ptr %v0, ptr %t236, i32 %t244)
  store { i64, ptr } %t247, ptr %l119
  br label %bb39
bb38:
  br label %bb43
bb39:
  %t248 = load ptr, ptr %l0, !tbaa !29
  %t249 = load ptr, ptr %l4, !tbaa !29
  %t251 = getelementptr %"compiler/ast:Promise", ptr %t249, i32 0, i32 2
  %t252 = load { i64, ptr }, ptr %t251, !tbaa !27
  store { i64, ptr } %t252, ptr %l122, !tbaa !27
  %t253 = getelementptr { i64, ptr }, ptr %l122, i32 0, i32 1
  %t254 = load ptr, ptr %t253, !tbaa !27
  %t255 = getelementptr i32, ptr %t254, i64 2
  %t256 = load i32, ptr %t255, !tbaa !33
  %t259 = call { i64, ptr } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2etext(ptr %v0, ptr %v0, ptr %t248, i32 %t256)
  store { i64, ptr } %t259, ptr %l124
  br label %bb40
bb40:
  %t260 = load { i64, ptr }, ptr %l119, !tbaa !27
  %t261 = load { i64, ptr }, ptr %l124, !tbaa !27
  %t262 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2ePromiseKeepsPath(ptr %v0, ptr %v0, ptr %v0, { i64, ptr } %t260, { i64, ptr } %t261)
  store %"compiler/diagmsg:Msg" %t262, ptr %l125
  br label %bb41
bb41:
  %t263 = load ptr, ptr %l112, !tbaa !29
  %t264 = load ptr, ptr %l113, !tbaa !29
  %t265 = load ptr, ptr %l114, !tbaa !29
  %t266 = load %"compiler/diagmsg:Msg", ptr %l125
  call void @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2epromiseErr(ptr %v0, ptr %v1, ptr %v3, ptr %v0, ptr %t263, ptr %t264, ptr %t265, %"compiler/diagmsg:Msg" %t266)
  br label %bb42
bb42:
  %t267 = load [0 x i64], ptr %l6
  store [0 x i64] %t267, ptr %l126
  %t268 = mul i64 0, 8
  %t269 = insertvalue { i64, ptr } undef, i64 0, 0
  %t270 = insertvalue { i64, ptr } %t269, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  store { i64, ptr } %t270, ptr %l127, !tbaa !27
  %t271 = getelementptr { i64, ptr }, ptr %l127, i32 0, i32 1
  %t272 = load ptr, ptr %t271, !tbaa !27
  %t273 = mul i64 0, 8
  call void @llvm.memmove.p0.p0.i64(ptr %t272, ptr %l126, i64 %t273, i1 false)
  call void @__olang_scope_close(ptr %s0)
  %t274 = load { i64, ptr }, ptr %l127, !tbaa !27
  store { i64, ptr } %t274, ptr %rv
  br label %ret
bb43:
  %t275 = load ptr, ptr %l4, !tbaa !29
  %t277 = getelementptr %"compiler/ast:Promise", ptr %t275, i32 0, i32 2
  %t278 = load { i64, ptr }, ptr %t277, !tbaa !27
  store { i64, ptr } %t278, ptr %l129, !tbaa !27
  %t279 = getelementptr { i64, ptr }, ptr %l129, i32 0, i32 1
  %t280 = load ptr, ptr %t279, !tbaa !27
  %t281 = getelementptr i32, ptr %t280, i64 2
  %t282 = load i32, ptr %t281, !tbaa !33
  store i32 %t282, ptr %l9, !tbaa !23
  %t284 = load { i64, ptr }, ptr %l7, !tbaa !27
  store { i64, ptr } %t284, ptr %l131, !tbaa !27
  %t285 = load i64, ptr %l8, !tbaa !24
  %t287 = getelementptr { i64, ptr }, ptr %l131, i32 0, i32 1
  %t288 = load ptr, ptr %t287, !tbaa !27
  %t289 = getelementptr i32, ptr %t288, i64 %t285
  %t290 = load i32, ptr %t289, !tbaa !33
  store i32 %t290, ptr %l10, !tbaa !23
  %t292 = load ptr, ptr %l0, !tbaa !29
  %t294 = getelementptr %"compiler/generic:Program", ptr %t292, i32 0, i32 2
  %t295 = load i32, ptr %l10, !tbaa !23
  %t298 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsRef(ptr %v0, ptr %t294, i32 %t295)
  store i1 %t298, ptr %l137
  br label %bb44
bb44:
  %t299 = load i1, ptr %l137, !tbaa !21
  br i1 %t299, label %bb45, label %bb46
bb45:
  %t300 = load ptr, ptr %l0, !tbaa !29
  %t302 = getelementptr %"compiler/generic:Program", ptr %t300, i32 0, i32 2
  %t303 = load i32, ptr %l10, !tbaa !23
  %t306 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eReferent(ptr %v0, ptr %t302, i32 %t303)
  store i32 %t306, ptr %l141
  br label %bb47
bb46:
  br label %bb48
bb47:
  %t307 = load i32, ptr %l141, !tbaa !23
  store i32 %t307, ptr %l10, !tbaa !23
  br label %bb48
bb48:
  %t308 = load ptr, ptr %l0, !tbaa !29
  %t310 = getelementptr %"compiler/generic:Program", ptr %t308, i32 0, i32 2
  %t311 = load i32, ptr %l10, !tbaa !23
  %t314 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t310, i32 %t311)
  store i32 %t314, ptr %l145
  br label %bb49
bb49:
  %t315 = load i32, ptr %l145, !range !{i32 0, i32 33}
  %t317 = trunc i64 25 to i32
  %t318 = icmp eq i32 %t315, %t317
  br i1 %t318, label %bb50, label %bb51
bb50:
  %t320 = load i64, ptr %l5, !tbaa !24
  %t321 = load i64, ptr %l8, !tbaa !24
  %t322 = load i32, ptr %l9, !tbaa !23
  %t324 = sext i32 %t322 to i64
  %t326 = insertvalue [3 x i64] undef, i64 %t320, 0
  %t328 = insertvalue [3 x i64] %t326, i64 %t321, 1
  %t330 = insertvalue [3 x i64] %t328, i64 %t324, 2
  store [3 x i64] %t330, ptr %l152
  %t331 = mul i64 3, 8
  %t332 = call ptr @__olang_scope_alloc(ptr %v4, i64 %t331)
  %t333 = insertvalue { i64, ptr } undef, i64 3, 0
  %t334 = insertvalue { i64, ptr } %t333, ptr %t332, 1
  store { i64, ptr } %t334, ptr %l153, !tbaa !27
  %t335 = getelementptr { i64, ptr }, ptr %l153, i32 0, i32 1
  %t336 = load ptr, ptr %t335, !tbaa !27
  %t337 = mul i64 3, 8
  call void @llvm.memmove.p0.p0.i64(ptr %t336, ptr %l152, i64 %t337, i1 false)
  call void @__olang_scope_close(ptr %s0)
  %t338 = load { i64, ptr }, ptr %l153, !tbaa !27
  store { i64, ptr } %t338, ptr %rv
  br label %ret
bb51:
  br label %bb52
bb52:
  %t339 = load ptr, ptr %l0, !tbaa !29
  %t340 = load i32, ptr %l10, !tbaa !23
  %t343 = call { i64, ptr } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFieldNames(ptr %v0, ptr %s0, ptr %t339, i32 %t340)
  store { i64, ptr } %t343, ptr %l156
  br label %bb53
bb53:
  %t344 = load { i64, ptr }, ptr %l156, !tbaa !27
  store { i64, ptr } %t344, ptr %l11, !tbaa !27
  %t345 = load { i64, ptr }, ptr %l11, !tbaa !27
  %t346 = load i32, ptr %l9, !tbaa !23
  %t349 = call i1 @std_2fprelude_2farray_2eArray_3ccompiler_2fsource_3aNameId_3e_2eHas_3ccompiler_2fsource_3aNameId_3e(ptr %s0, { i64, ptr } %t345, i32 %t346)
  store i1 %t349, ptr %l159
  br label %bb54
bb54:
  %t350 = load i1, ptr %l159, !tbaa !21
  %t351 = xor i1 %t350, true
  br i1 %t351, label %bb55, label %bb56
bb55:
  %t353 = load ptr, ptr %l0, !tbaa !29
  store ptr %t353, ptr %l161, !tbaa !29
  %t354 = load ptr, ptr %l1, !tbaa !29
  store ptr %t354, ptr %l162, !tbaa !29
  %t355 = load ptr, ptr %l4, !tbaa !29
  store ptr %t355, ptr %l163, !tbaa !29
  %t356 = load ptr, ptr %l0, !tbaa !29
  %t357 = load i32, ptr %l9, !tbaa !23
  %t360 = call { i64, ptr } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2etext(ptr %v0, ptr %v0, ptr %t356, i32 %t357)
  store { i64, ptr } %t360, ptr %l166
  br label %bb57
bb56:
  br label %bb61
bb57:
  %t361 = load ptr, ptr %l0, !tbaa !29
  %t362 = load ptr, ptr %l4, !tbaa !29
  %t364 = getelementptr %"compiler/ast:Promise", ptr %t362, i32 0, i32 2
  %t365 = load { i64, ptr }, ptr %t364, !tbaa !27
  store { i64, ptr } %t365, ptr %l169, !tbaa !27
  %t366 = getelementptr { i64, ptr }, ptr %l169, i32 0, i32 1
  %t367 = load ptr, ptr %t366, !tbaa !27
  %t368 = getelementptr i32, ptr %t367, i64 1
  %t369 = load i32, ptr %t368, !tbaa !33
  %t372 = call { i64, ptr } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2etext(ptr %v0, ptr %v0, ptr %t361, i32 %t369)
  store { i64, ptr } %t372, ptr %l171
  br label %bb58
bb58:
  %t373 = load { i64, ptr }, ptr %l166, !tbaa !27
  %t374 = load { i64, ptr }, ptr %l171, !tbaa !27
  %t375 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2ePromiseKeepsField(ptr %v0, ptr %v0, ptr %v0, { i64, ptr } %t373, { i64, ptr } %t374)
  store %"compiler/diagmsg:Msg" %t375, ptr %l172
  br label %bb59
bb59:
  %t376 = load ptr, ptr %l161, !tbaa !29
  %t377 = load ptr, ptr %l162, !tbaa !29
  %t378 = load ptr, ptr %l163, !tbaa !29
  %t379 = load %"compiler/diagmsg:Msg", ptr %l172
  call void @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2epromiseErr(ptr %v0, ptr %v1, ptr %v3, ptr %v0, ptr %t376, ptr %t377, ptr %t378, %"compiler/diagmsg:Msg" %t379)
  br label %bb60
bb60:
  %t380 = load [0 x i64], ptr %l6
  store [0 x i64] %t380, ptr %l173
  %t381 = mul i64 0, 8
  %t382 = insertvalue { i64, ptr } undef, i64 0, 0
  %t383 = insertvalue { i64, ptr } %t382, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  store { i64, ptr } %t383, ptr %l174, !tbaa !27
  %t384 = getelementptr { i64, ptr }, ptr %l174, i32 0, i32 1
  %t385 = load ptr, ptr %t384, !tbaa !27
  %t386 = mul i64 0, 8
  call void @llvm.memmove.p0.p0.i64(ptr %t385, ptr %l173, i64 %t386, i1 false)
  call void @__olang_scope_close(ptr %s0)
  %t387 = load { i64, ptr }, ptr %l174, !tbaa !27
  store { i64, ptr } %t387, ptr %rv
  br label %ret
bb61:
  %t388 = load ptr, ptr %l0, !tbaa !29
  %t390 = getelementptr %"compiler/generic:Program", ptr %t388, i32 0, i32 2
  %t391 = load i32, ptr %l10, !tbaa !23
  %t394 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eHasBody(ptr %v0, ptr %t390, i32 %t391)
  store i1 %t394, ptr %l178
  br label %bb62
bb62:
  %t395 = load i1, ptr %l178, !tbaa !21
  br i1 %t395, label %bb63, label %bb64
bb63:
  %t396 = load ptr, ptr %l0, !tbaa !29
  %t398 = getelementptr %"compiler/generic:Program", ptr %t396, i32 0, i32 2
  store ptr %t398, ptr %l181, !tbaa !29
  %t399 = load ptr, ptr %l0, !tbaa !29
  %t401 = getelementptr %"compiler/generic:Program", ptr %t399, i32 0, i32 2
  %t402 = load i32, ptr %l10, !tbaa !23
  %t405 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %t401, i32 %t402)
  store i32 %t405, ptr %l185
  br label %bb65
bb64:
  store i1 false, ptr %l179, !tbaa !21
  br label %bb67
bb65:
  %t406 = load ptr, ptr %l181, !tbaa !29
  %t407 = load i32, ptr %l185, !tbaa !23
  %t408 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclKindOf(ptr %v0, ptr %t406, i32 %t407)
  store i32 %t408, ptr %l186
  br label %bb66
bb66:
  %t409 = load i32, ptr %l186, !range !{i32 0, i32 6}
  %t411 = trunc i64 0 to i32
  %t412 = icmp eq i32 %t409, %t411
  store i1 %t412, ptr %l179, !tbaa !21
  br label %bb67
bb67:
  %t414 = load i1, ptr %l179, !tbaa !21
  br i1 %t414, label %bb68, label %bb69
bb68:
  %t415 = load ptr, ptr %l0, !tbaa !29
  %t417 = getelementptr %"compiler/generic:Program", ptr %t415, i32 0, i32 2
  store ptr %t417, ptr %l190, !tbaa !29
  %t418 = load ptr, ptr %l0, !tbaa !29
  %t420 = getelementptr %"compiler/generic:Program", ptr %t418, i32 0, i32 2
  %t421 = load i32, ptr %l10, !tbaa !23
  %t424 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eFields(ptr %v0, ptr %t420, i32 %t421)
  store i32 %t424, ptr %l194
  br label %bb70
bb69:
  br label %bb98
bb70:
  %t425 = load ptr, ptr %l190, !tbaa !29
  %t426 = load i32, ptr %l194, !tbaa !23
  %t427 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t425, i32 %t426)
  store { i64, ptr } %t427, ptr %l195
  br label %bb71
bb71:
  %t428 = load { i64, ptr }, ptr %l195, !tbaa !27
  store { i64, ptr } %t428, ptr %l12, !tbaa !27
  store i64 0, ptr %l13, !tbaa !24
  %t429 = load { i64, ptr }, ptr %l11, !tbaa !27
  %t431 = extractvalue { i64, ptr } %t429, 0
  store i64 %t431, ptr %l14, !tbaa !24
  store i64 1, ptr %l15, !tbaa !24
  %t433 = load i64, ptr %l14, !tbaa !24
  %t434 = load i64, ptr %l13, !tbaa !24
  %t437 = icmp sgt i64 %t433, %t434
  br i1 %t437, label %bb72, label %bb73
bb72:
  %t439 = load i64, ptr %l15, !tbaa !24
  %t441 = icmp sgt i64 %t439, 0
  br i1 %t441, label %bb74, label %bb75
bb73:
  store i64 0, ptr %l201, !tbaa !24
  br label %bb77
bb74:
  %t443 = load i64, ptr %l14, !tbaa !24
  %t444 = load i64, ptr %l13, !tbaa !24
  %t447 = sub i64 %t443, %t444
  %t448 = load i64, ptr %l15, !tbaa !24
  %t451 = add i64 %t447, %t448
  %t453 = sub i64 %t451, 1
  %t454 = load i64, ptr %l15, !tbaa !24
  %t457 = sdiv i64 %t453, %t454
  store i64 %t457, ptr %l204, !tbaa !24
  br label %bb76
bb75:
  store i64 0, ptr %l204, !tbaa !24
  br label %bb76
bb76:
  %t459 = load i64, ptr %l204, !tbaa !24
  store i64 %t459, ptr %l201, !tbaa !24
  br label %bb77
bb77:
  %t460 = load i64, ptr %l201, !tbaa !24
  store i64 %t460, ptr %l16, !tbaa !24
  store i64 0, ptr %l17, !tbaa !24
  br label %bb78
bb78:
  %t461 = load i64, ptr %l17, !tbaa !24
  %t462 = load i64, ptr %l16, !tbaa !24
  %t465 = icmp slt i64 %t461, %t462
  %t467 = xor i1 %t465, true
  br i1 %t467, label %bb79, label %bb80
bb79:
  br label %bb97
bb80:
  br label %bb81
bb81:
  %t469 = load i64, ptr %l13, !tbaa !24
  %t470 = load i64, ptr %l17, !tbaa !24
  %t471 = load i64, ptr %l15, !tbaa !24
  %t474 = mul i64 %t470, %t471
  %t477 = add i64 %t469, %t474
  store i64 %t477, ptr %l18, !tbaa !24
  %t479 = load i64, ptr %l18, !tbaa !24
  %t481 = getelementptr { i64, ptr }, ptr %l11, i32 0, i32 1
  %t482 = load ptr, ptr %t481, !tbaa !27
  %t483 = getelementptr i32, ptr %t482, i64 %t479
  %t484 = load i32, ptr %t483, !tbaa !33
  %t485 = load i32, ptr %l9, !tbaa !23
  %t488 = icmp eq i32 %t484, %t485
  br i1 %t488, label %bb82, label %bb83
bb82:
  %t490 = load i64, ptr %l18, !tbaa !24
  %t491 = load { i64, ptr }, ptr %l12, !tbaa !27
  %t493 = extractvalue { i64, ptr } %t491, 0
  %t496 = icmp slt i64 %t490, %t493
  store i1 %t496, ptr %l226, !tbaa !21
  br label %bb84
bb83:
  store i1 false, ptr %l226, !tbaa !21
  br label %bb84
bb84:
  %t498 = load i1, ptr %l226, !tbaa !21
  br i1 %t498, label %bb85, label %bb86
bb85:
  %t499 = load ptr, ptr %l0, !tbaa !29
  %t500 = load { i64, ptr }, ptr %l12, !tbaa !27
  store { i64, ptr } %t500, ptr %l233, !tbaa !27
  %t501 = load i64, ptr %l18, !tbaa !24
  %t503 = getelementptr { i64, ptr }, ptr %l233, i32 0, i32 1
  %t504 = load ptr, ptr %t503, !tbaa !27
  %t505 = getelementptr i32, ptr %t504, i64 %t501
  %t506 = load i32, ptr %t505, !tbaa !33
  %t509 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2emayHold(ptr %v0, ptr %t499, i32 %t506)
  store i1 %t509, ptr %l236
  br label %bb87
bb86:
  store i1 false, ptr %l231, !tbaa !21
  br label %bb88
bb87:
  %t510 = load i1, ptr %l236, !tbaa !21
  %t511 = xor i1 %t510, true
  store i1 %t511, ptr %l231, !tbaa !21
  br label %bb88
bb88:
  %t513 = load i1, ptr %l231, !tbaa !21
  br i1 %t513, label %bb89, label %bb90
bb89:
  store %olang.scope zeroinitializer, ptr %s14
  %t514 = load ptr, ptr %l0, !tbaa !29
  store ptr %t514, ptr %l238, !tbaa !29
  %t515 = load ptr, ptr %l1, !tbaa !29
  store ptr %t515, ptr %l239, !tbaa !29
  %t516 = load ptr, ptr %l4, !tbaa !29
  store ptr %t516, ptr %l240, !tbaa !29
  %t517 = load ptr, ptr %l0, !tbaa !29
  %t518 = load ptr, ptr %l4, !tbaa !29
  %t520 = getelementptr %"compiler/ast:Promise", ptr %t518, i32 0, i32 2
  %t521 = load { i64, ptr }, ptr %t520, !tbaa !27
  store { i64, ptr } %t521, ptr %l243, !tbaa !27
  %t522 = getelementptr { i64, ptr }, ptr %l243, i32 0, i32 1
  %t523 = load ptr, ptr %t522, !tbaa !27
  %t524 = getelementptr i32, ptr %t523, i64 1
  %t525 = load i32, ptr %t524, !tbaa !33
  %t528 = call { i64, ptr } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2etext(ptr %v0, ptr %s14, ptr %t517, i32 %t525)
  store { i64, ptr } %t528, ptr %l245
  br label %bb91
bb90:
  br label %bb95
bb91:
  %t529 = load ptr, ptr %l0, !tbaa !29
  %t530 = load i32, ptr %l9, !tbaa !23
  %t533 = call { i64, ptr } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2etext(ptr %v0, ptr %s14, ptr %t529, i32 %t530)
  store { i64, ptr } %t533, ptr %l248
  br label %bb92
bb92:
  %t534 = load { i64, ptr }, ptr %l245, !tbaa !27
  %t535 = extractvalue { i64, ptr } %t534, 1
  %t536 = extractvalue { i64, ptr } %t534, 0
  %t537 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d37, i32 0, i32 1) }, 1
  %t538 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d37, i32 0, i32 1) }, 0
  %t539 = add i64 %t536, %t538
  %t540 = load { i64, ptr }, ptr %l248, !tbaa !27
  %t541 = extractvalue { i64, ptr } %t540, 1
  %t542 = extractvalue { i64, ptr } %t540, 0
  %t543 = add i64 %t539, %t542
  %t544 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t543)
  call void @olang_textcopy(ptr %t544, ptr %t535, i64 %t536)
  %t545 = getelementptr i8, ptr %t544, i64 %t536
  call void @olang_textcopy(ptr %t545, ptr %t537, i64 %t538)
  %t546 = getelementptr i8, ptr %t545, i64 %t538
  call void @olang_textcopy(ptr %t546, ptr %t541, i64 %t542)
  %t547 = insertvalue { i64, ptr } undef, i64 %t543, 0
  %t548 = insertvalue { i64, ptr } %t547, ptr %t544, 1
  %t550 = extractvalue { i64, ptr } %t548, 0
  %t551 = extractvalue { i64, ptr } %t548, 1
  %t552 = mul i64 %t550, 1
  %t553 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t552)
  call void @llvm.memcpy.p0.p0.i64(ptr %t553, ptr %t551, i64 %t552, i1 false)
  %t554 = insertvalue { i64, ptr } undef, i64 %t550, 0
  %t555 = insertvalue { i64, ptr } %t554, ptr %t553, 1
  %t557 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2ePromiseKeepsInValue(ptr %v0, ptr %v0, { i64, ptr } %t555)
  store %"compiler/diagmsg:Msg" %t557, ptr %l251
  br label %bb93
bb93:
  %t558 = load ptr, ptr %l238, !tbaa !29
  %t559 = load ptr, ptr %l239, !tbaa !29
  %t560 = load ptr, ptr %l240, !tbaa !29
  %t561 = load %"compiler/diagmsg:Msg", ptr %l251
  call void @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2epromiseErr(ptr %v0, ptr %v1, ptr %v3, ptr %v0, ptr %t558, ptr %t559, ptr %t560, %"compiler/diagmsg:Msg" %t561)
  br label %bb94
bb94:
  %t562 = load [0 x i64], ptr %l6
  store [0 x i64] %t562, ptr %l252
  %t563 = mul i64 0, 8
  %t564 = insertvalue { i64, ptr } undef, i64 0, 0
  %t565 = insertvalue { i64, ptr } %t564, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  store { i64, ptr } %t565, ptr %l253, !tbaa !27
  %t566 = getelementptr { i64, ptr }, ptr %l253, i32 0, i32 1
  %t567 = load ptr, ptr %t566, !tbaa !27
  %t568 = mul i64 0, 8
  call void @llvm.memmove.p0.p0.i64(ptr %t567, ptr %l252, i64 %t568, i1 false)
  call void @__olang_scope_close(ptr %s14)
  call void @__olang_scope_close(ptr %s0)
  %t569 = load { i64, ptr }, ptr %l253, !tbaa !27
  store { i64, ptr } %t569, ptr %rv
  br label %ret
bb95:
  br label %bb96
bb96:
  %t570 = load i64, ptr %l17, !tbaa !24
  %t572 = add i64 %t570, 1
  store i64 %t572, ptr %l17, !tbaa !24
  br label %bb78
bb97:
  br label %bb98
bb98:
  %t574 = load i64, ptr %l5, !tbaa !24
  %t575 = load i64, ptr %l8, !tbaa !24
  %t576 = load i32, ptr %l9, !tbaa !23
  %t578 = sext i32 %t576 to i64
  %t580 = insertvalue [3 x i64] undef, i64 %t574, 0
  %t582 = insertvalue [3 x i64] %t580, i64 %t575, 1
  %t584 = insertvalue [3 x i64] %t582, i64 %t578, 2
  store [3 x i64] %t584, ptr %l260
  %t585 = mul i64 3, 8
  %t586 = call ptr @__olang_scope_alloc(ptr %v4, i64 %t585)
  %t587 = insertvalue { i64, ptr } undef, i64 3, 0
  %t588 = insertvalue { i64, ptr } %t587, ptr %t586, 1
  store { i64, ptr } %t588, ptr %l261, !tbaa !27
  %t589 = getelementptr { i64, ptr }, ptr %l261, i32 0, i32 1
  %t590 = load ptr, ptr %t589, !tbaa !27
  %t591 = mul i64 3, 8
  call void @llvm.memmove.p0.p0.i64(ptr %t590, ptr %l260, i64 %t591, i1 false)
  call void @__olang_scope_close(ptr %s0)
  %t592 = load { i64, ptr }, ptr %l261, !tbaa !27
  store { i64, ptr } %t592, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2emadeType(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %a0, ptr %a1, ptr %a2, ptr %a3, { i64, ptr } %a4) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca ptr
  %l4 = alloca { i64, ptr }
  %l5 = alloca i32
  %l6 = alloca %"compiler/source:Span"
  %l7 = alloca i32
  %l8 = alloca { i64, ptr }
  %l13 = alloca i32
  %l14 = alloca ptr
  %l15 = alloca i1
  %l18 = alloca i1
  %l20 = alloca ptr
  %l21 = alloca i1
  %l33 = alloca ptr
  %l37 = alloca i64
  %l39 = alloca %"compiler/names:Ref"
  %l42 = alloca i1
  %l45 = alloca { i64, ptr }
  %l46 = alloca i1
  %l47 = alloca i1
  %l51 = alloca i1
  %l55 = alloca i1
  %l59 = alloca i32
  %l67 = alloca i32
  %s1 = alloca %olang.scope
  %rv = alloca i32
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store ptr %a2, ptr %l2
  store ptr %a3, ptr %l3
  store { i64, ptr } %a4, ptr %l4
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load ptr, ptr %l1, !tbaa !29
  %t3 = load ptr, ptr %l2, !tbaa !29
  %t4 = load ptr, ptr %l3, !tbaa !29
  %t9 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2ecallType(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %t1, ptr %t2, ptr %t3, ptr %t4)
  store i32 %t9, ptr %l13
  br label %bb1
bb1:
  %t10 = load i32, ptr %l13, !tbaa !23
  store i32 %t10, ptr %l5, !tbaa !23
  %t11 = load ptr, ptr %l3, !tbaa !29
  store ptr %t11, ptr %l14, !tbaa !29
  store i1 false, ptr %l15, !tbaa !21
  %t12 = load ptr, ptr %l14, !tbaa !29
  %t13 = icmp ne ptr %t12, null
  br i1 %t13, label %bb2, label %bb3
bb2:
  %t15 = load ptr, ptr %l14, !tbaa !29
  %t16 = load i64, ptr %t15, !range !{i64 0, i64 30}
  %t18 = icmp eq i64 %t16, 13
  store i1 %t18, ptr %l15, !tbaa !21
  br label %bb3
bb3:
  %t19 = load i1, ptr %l15, !tbaa !21
  br i1 %t19, label %bb4, label %bb5
bb4:
  %t20 = load ptr, ptr %l3, !tbaa !29
  %t22 = getelementptr { i64, [4 x i64] }, ptr %t20, i32 0, i32 1
  %t23 = getelementptr { %"compiler/source:Span", ptr, { i64, ptr } }, ptr %t22, i32 0, i32 1
  %t24 = load ptr, ptr %t23
  store ptr %t24, ptr %l20, !tbaa !29
  store i1 false, ptr %l21, !tbaa !21
  %t25 = load ptr, ptr %l20, !tbaa !29
  %t26 = icmp ne ptr %t25, null
  br i1 %t26, label %bb6, label %bb7
bb5:
  store i1 false, ptr %l18, !tbaa !21
  br label %bb8
bb6:
  %t28 = load ptr, ptr %l20, !tbaa !29
  %t29 = load i64, ptr %t28, !range !{i64 0, i64 30}
  %t31 = icmp eq i64 %t29, 0
  store i1 %t31, ptr %l21, !tbaa !21
  br label %bb7
bb7:
  %t32 = load i1, ptr %l21, !tbaa !21
  store i1 %t32, ptr %l18, !tbaa !21
  br label %bb8
bb8:
  %t33 = load i1, ptr %l18, !tbaa !21
  br i1 %t33, label %bb9, label %bb10
bb9:
  %t34 = load ptr, ptr %l3, !tbaa !29
  %t36 = getelementptr { i64, [4 x i64] }, ptr %t34, i32 0, i32 1
  %t37 = getelementptr { %"compiler/source:Span", ptr, { i64, ptr } }, ptr %t36, i32 0, i32 1
  %t38 = load ptr, ptr %t37
  %t40 = getelementptr { i64, [4 x i64] }, ptr %t38, i32 0, i32 1
  %t41 = getelementptr { %"compiler/source:Span", i32 }, ptr %t40, i32 0, i32 0
  %t42 = load %"compiler/source:Span", ptr %t41
  store %"compiler/source:Span" %t42, ptr %l6
  %t44 = load ptr, ptr %l3, !tbaa !29
  %t46 = getelementptr { i64, [4 x i64] }, ptr %t44, i32 0, i32 1
  %t47 = getelementptr { %"compiler/source:Span", ptr, { i64, ptr } }, ptr %t46, i32 0, i32 1
  %t48 = load ptr, ptr %t47
  %t50 = getelementptr { i64, [4 x i64] }, ptr %t48, i32 0, i32 1
  %t51 = getelementptr { %"compiler/source:Span", i32 }, ptr %t50, i32 0, i32 1
  %t52 = load i32, ptr %t51
  store i32 %t52, ptr %l7, !tbaa !23
  %t54 = load ptr, ptr %l3, !tbaa !29
  %t56 = getelementptr { i64, [4 x i64] }, ptr %t54, i32 0, i32 1
  %t57 = getelementptr { %"compiler/source:Span", ptr, { i64, ptr } }, ptr %t56, i32 0, i32 2
  %t58 = load { i64, ptr }, ptr %t57
  store { i64, ptr } %t58, ptr %l8, !tbaa !27
  br label %bb11
bb10:
  br label %bb33
bb11:
  store %olang.scope zeroinitializer, ptr %s1
  %t60 = load ptr, ptr %l0, !tbaa !29
  %t62 = getelementptr %"compiler/generic:Program", ptr %t60, i32 0, i32 1
  %t63 = load ptr, ptr %t62, !tbaa !29
  store ptr %t63, ptr %l33, !tbaa !29
  %t64 = load ptr, ptr %l0, !tbaa !29
  %t65 = load ptr, ptr %l1, !tbaa !29
  %t67 = getelementptr %"compiler/generic:Context", ptr %t65, i32 0, i32 0
  %t68 = load i64, ptr %t67, !tbaa !24
  %t71 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2efile(ptr %v0, ptr %t64, i64 %t68)
  store i64 %t71, ptr %l37
  br label %bb12
bb12:
  %t72 = getelementptr %"compiler/source:Span", ptr %l6, i32 0, i32 0
  %t73 = load i32, ptr %t72, !tbaa !23
  %t74 = load ptr, ptr %l33, !tbaa !29
  %t75 = load i64, ptr %l37, !tbaa !24
  %t77 = call %"compiler/names:Ref" @compiler_2fnames_2ecompiler_2fnames_3aResolver_2eUse(ptr %v0, ptr %t74, i64 %t75, i32 %t73)
  store %"compiler/names:Ref" %t77, ptr %l39
  br label %bb13
bb13:
  %t78 = getelementptr %"compiler/names:Ref", ptr %l39, i32 0, i32 0
  %t79 = load i32, ptr %t78, !range !{i32 0, i32 9}
  %t81 = trunc i64 7 to i32
  %t82 = icmp eq i32 %t79, %t81
  br i1 %t82, label %bb14, label %bb15
bb14:
  %t84 = load ptr, ptr %l0, !tbaa !29
  %t85 = load i32, ptr %l7, !tbaa !23
  %t88 = call { i64, ptr } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2etext(ptr %v0, ptr %v0, ptr %t84, i32 %t85)
  store { i64, ptr } %t88, ptr %l45
  br label %bb16
bb15:
  store i1 false, ptr %l42, !tbaa !21
  br label %bb18
bb16:
  %t89 = load { i64, ptr }, ptr %l45, !tbaa !27
  %t90 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s1, { i64, ptr } %t89, { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d38, i32 0, i32 1) })
  store i1 %t90, ptr %l46
  br label %bb17
bb17:
  %t91 = load i1, ptr %l46, !tbaa !21
  store i1 %t91, ptr %l42, !tbaa !21
  br label %bb18
bb18:
  %t92 = load i1, ptr %l42, !tbaa !21
  br i1 %t92, label %bb19, label %bb20
bb19:
  %t93 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t95 = extractvalue { i64, ptr } %t93, 0
  %t97 = icmp eq i64 %t95, 1
  store i1 %t97, ptr %l47, !tbaa !21
  br label %bb21
bb20:
  store i1 false, ptr %l47, !tbaa !21
  br label %bb21
bb21:
  %t99 = load i1, ptr %l47, !tbaa !21
  br i1 %t99, label %bb22, label %bb23
bb22:
  %t100 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t102 = extractvalue { i64, ptr } %t100, 0
  %t104 = icmp sgt i64 %t102, 0
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
  %t109 = getelementptr %"compiler/generic:Program", ptr %t107, i32 0, i32 2
  %t110 = load i32, ptr %l5, !tbaa !23
  %t113 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t109, i32 %t110)
  store i32 %t113, ptr %l59
  br label %bb27
bb26:
  store i1 false, ptr %l55, !tbaa !21
  br label %bb28
bb27:
  %t114 = load i32, ptr %l59, !range !{i32 0, i32 33}
  %t116 = trunc i64 19 to i32
  %t117 = icmp eq i32 %t114, %t116
  store i1 %t117, ptr %l55, !tbaa !21
  br label %bb28
bb28:
  %t119 = load i1, ptr %l55, !tbaa !21
  br i1 %t119, label %bb29, label %bb30
bb29:
  %t120 = load ptr, ptr %l0, !tbaa !29
  %t121 = load ptr, ptr %l1, !tbaa !29
  %t122 = load ptr, ptr %l2, !tbaa !29
  %t123 = load i32, ptr %l5, !tbaa !23
  %t124 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t130 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2earrayMade(ptr %v0, ptr %v1, ptr %v2, ptr %v4, ptr %t120, ptr %t121, ptr %t122, i32 %t123, { i64, ptr } %t124)
  store i32 %t130, ptr %l67
  br label %bb31
bb30:
  br label %bb32
bb31:
  call void @__olang_scope_close(ptr %s1)
  %t131 = load i32, ptr %l67, !tbaa !23
  store i32 %t131, ptr %rv
  br label %ret
bb32:
  call void @__olang_scope_close(ptr %s1)
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
  call void @__olang_check_failed(ptr @olang_loc_5761ebb5a70d3685_c26bb19c18fbb051)
  unreachable
bb38:
  %t132 = load i32, ptr %l5, !tbaa !23
  store i32 %t132, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2emeet(ptr %v0, ptr %a0, %"compiler/generic:folded" %a1, %"compiler/generic:folded" %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/generic:folded"
  %l2 = alloca %"compiler/generic:folded"
  %l6 = alloca i1
  %l17 = alloca i64
  %l20 = alloca i32
  %l22 = alloca ptr
  %l25 = alloca i32
  %l27 = alloca i32
  %l34 = alloca i64
  %l37 = alloca i32
  %l39 = alloca ptr
  %l40 = alloca i32
  %l43 = alloca i32
  %l44 = alloca i32
  %l48 = alloca i32
  %s2 = alloca %olang.scope
  %s3 = alloca %olang.scope
  %rv = alloca i32
  store ptr %a0, ptr %l0
  store %"compiler/generic:folded" %a1, ptr %l1
  store %"compiler/generic:folded" %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = getelementptr %"compiler/generic:folded", ptr %l1, i32 0, i32 2
  %t2 = load i32, ptr %t1, !tbaa !23
  %t3 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t6 = icmp eq i32 %t2, %t3
  br i1 %t6, label %bb1, label %bb2
bb1:
  %t8 = getelementptr %"compiler/generic:folded", ptr %l2, i32 0, i32 2
  %t9 = load i32, ptr %t8, !tbaa !23
  %t10 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t13 = icmp eq i32 %t9, %t10
  store i1 %t13, ptr %l6, !tbaa !21
  br label %bb3
bb2:
  store i1 false, ptr %l6, !tbaa !21
  br label %bb3
bb3:
  %t15 = load i1, ptr %l6, !tbaa !21
  br i1 %t15, label %bb4, label %bb5
bb4:
  %t16 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  store i32 %t16, ptr %rv
  br label %ret
bb5:
  br label %bb6
bb6:
  %t18 = getelementptr %"compiler/generic:folded", ptr %l1, i32 0, i32 2
  %t19 = load i32, ptr %t18, !tbaa !23
  %t20 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t23 = icmp eq i32 %t19, %t20
  br i1 %t23, label %bb7, label %bb8
bb7:
  store %olang.scope zeroinitializer, ptr %s2
  %t25 = load ptr, ptr %l0, !tbaa !29
  %t26 = getelementptr %"compiler/generic:folded", ptr %l1, i32 0, i32 1
  %t27 = load i64, ptr %t26, !tbaa !24
  %t28 = getelementptr %"compiler/generic:folded", ptr %l2, i32 0, i32 2
  %t29 = load i32, ptr %t28, !tbaa !23
  %t33 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2ewrap(ptr %v0, ptr %t25, i64 %t27, i32 %t29)
  store i64 %t33, ptr %l17
  br label %bb9
bb8:
  br label %bb15
bb9:
  %t34 = getelementptr %"compiler/generic:folded", ptr %l1, i32 0, i32 1
  %t35 = load i64, ptr %t34, !tbaa !24
  %t36 = load i64, ptr %l17, !tbaa !24
  %t38 = icmp eq i64 %t36, %t35
  br i1 %t38, label %bb10, label %bb11
bb10:
  %t40 = getelementptr %"compiler/generic:folded", ptr %l2, i32 0, i32 2
  %t41 = load i32, ptr %t40, !tbaa !23
  store i32 %t41, ptr %l20, !tbaa !23
  br label %bb14
bb11:
  %t43 = load ptr, ptr %l0, !tbaa !29
  store ptr %t43, ptr %l22, !tbaa !29
  %t44 = load ptr, ptr %l0, !tbaa !29
  %t46 = getelementptr %"compiler/generic:Program", ptr %t44, i32 0, i32 2
  %t48 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePrim(ptr %v0, ptr %s2, ptr %t46, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d39, i32 0, i32 1) })
  store i32 %t48, ptr %l25
  br label %bb12
bb12:
  %t49 = getelementptr %"compiler/generic:folded", ptr %l2, i32 0, i32 2
  %t50 = load i32, ptr %t49, !tbaa !23
  %t51 = load ptr, ptr %l22, !tbaa !29
  %t52 = load i32, ptr %l25, !tbaa !23
  %t54 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2emeetTyped(ptr %v0, ptr %t51, i32 %t52, i32 %t50)
  store i32 %t54, ptr %l27
  br label %bb13
bb13:
  %t55 = load i32, ptr %l27, !tbaa !23
  store i32 %t55, ptr %l20, !tbaa !23
  br label %bb14
bb14:
  call void @__olang_scope_close(ptr %s2)
  %t56 = load i32, ptr %l20, !tbaa !23
  store i32 %t56, ptr %rv
  br label %ret
bb15:
  %t57 = getelementptr %"compiler/generic:folded", ptr %l2, i32 0, i32 2
  %t58 = load i32, ptr %t57, !tbaa !23
  %t59 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t62 = icmp eq i32 %t58, %t59
  br i1 %t62, label %bb16, label %bb17
bb16:
  store %olang.scope zeroinitializer, ptr %s3
  %t64 = load ptr, ptr %l0, !tbaa !29
  %t65 = getelementptr %"compiler/generic:folded", ptr %l2, i32 0, i32 1
  %t66 = load i64, ptr %t65, !tbaa !24
  %t67 = getelementptr %"compiler/generic:folded", ptr %l1, i32 0, i32 2
  %t68 = load i32, ptr %t67, !tbaa !23
  %t72 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2ewrap(ptr %v0, ptr %t64, i64 %t66, i32 %t68)
  store i64 %t72, ptr %l34
  br label %bb18
bb17:
  br label %bb24
bb18:
  %t73 = getelementptr %"compiler/generic:folded", ptr %l2, i32 0, i32 1
  %t74 = load i64, ptr %t73, !tbaa !24
  %t75 = load i64, ptr %l34, !tbaa !24
  %t77 = icmp eq i64 %t75, %t74
  br i1 %t77, label %bb19, label %bb20
bb19:
  %t79 = getelementptr %"compiler/generic:folded", ptr %l1, i32 0, i32 2
  %t80 = load i32, ptr %t79, !tbaa !23
  store i32 %t80, ptr %l37, !tbaa !23
  br label %bb23
bb20:
  %t82 = load ptr, ptr %l0, !tbaa !29
  store ptr %t82, ptr %l39, !tbaa !29
  %t83 = getelementptr %"compiler/generic:folded", ptr %l1, i32 0, i32 2
  %t84 = load i32, ptr %t83, !tbaa !23
  store i32 %t84, ptr %l40, !tbaa !23
  %t85 = load ptr, ptr %l0, !tbaa !29
  %t87 = getelementptr %"compiler/generic:Program", ptr %t85, i32 0, i32 2
  %t89 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePrim(ptr %v0, ptr %s3, ptr %t87, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d40, i32 0, i32 1) })
  store i32 %t89, ptr %l43
  br label %bb21
bb21:
  %t90 = load ptr, ptr %l39, !tbaa !29
  %t91 = load i32, ptr %l40, !tbaa !23
  %t92 = load i32, ptr %l43, !tbaa !23
  %t93 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2emeetTyped(ptr %v0, ptr %t90, i32 %t91, i32 %t92)
  store i32 %t93, ptr %l44
  br label %bb22
bb22:
  %t94 = load i32, ptr %l44, !tbaa !23
  store i32 %t94, ptr %l37, !tbaa !23
  br label %bb23
bb23:
  call void @__olang_scope_close(ptr %s3)
  %t95 = load i32, ptr %l37, !tbaa !23
  store i32 %t95, ptr %rv
  br label %ret
bb24:
  %t96 = load ptr, ptr %l0, !tbaa !29
  %t97 = getelementptr %"compiler/generic:folded", ptr %l1, i32 0, i32 2
  %t98 = load i32, ptr %t97, !tbaa !23
  %t99 = getelementptr %"compiler/generic:folded", ptr %l2, i32 0, i32 2
  %t100 = load i32, ptr %t99, !tbaa !23
  %t104 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2emeetTyped(ptr %v0, ptr %t96, i32 %t98, i32 %t100)
  store i32 %t104, ptr %l48
  br label %bb25
bb25:
  %t105 = load i32, ptr %l48, !tbaa !23
  store i32 %t105, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local void @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2emembers(ptr %v0, ptr %v1, ptr %a0, i32 %a1, ptr %a2, i64 %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca ptr
  %l3 = alloca i64
  %l4 = alloca i32
  %l5 = alloca ptr
  %l6 = alloca ptr
  %l7 = alloca { i64, ptr }
  %l8 = alloca %"compiler/generic:Context"
  %l9 = alloca { i64, ptr }
  %l10 = alloca i64
  %l11 = alloca i64
  %l13 = alloca i32
  %l16 = alloca i1
  %l20 = alloca i32
  %l27 = alloca i32
  %l30 = alloca ptr
  %l33 = alloca i1
  %l39 = alloca ptr
  %l40 = alloca i1
  %l47 = alloca %"compiler/generic:Context"
  %l55 = alloca { i64, ptr }
  %l58 = alloca ptr
  %l63 = alloca i32
  %l65 = alloca i64
  %l69 = alloca i32
  %l70 = alloca i32
  %l73 = alloca i1
  %l81 = alloca i1
  %s3 = alloca %olang.scope
  %t68 = alloca %"compiler/generic:Context", align 8
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
  store i1 true, ptr %l16, !tbaa !21
  br label %bb4
bb2:
  %t5 = load ptr, ptr %l0, !tbaa !29
  %t7 = getelementptr %"compiler/generic:Program", ptr %t5, i32 0, i32 2
  %t8 = load i32, ptr %l1, !tbaa !23
  %t11 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t7, i32 %t8)
  store i32 %t11, ptr %l20
  br label %bb3
bb3:
  %t12 = load i32, ptr %l20, !range !{i32 0, i32 33}
  %t14 = trunc i64 18 to i32
  %t15 = icmp eq i32 %t12, %t14
  %t17 = xor i1 %t15, true
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
  %t20 = load ptr, ptr %l0, !tbaa !29
  %t22 = getelementptr %"compiler/generic:Program", ptr %t20, i32 0, i32 2
  %t23 = load i32, ptr %l1, !tbaa !23
  %t26 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %t22, i32 %t23)
  store i32 %t26, ptr %l27
  br label %bb8
bb8:
  %t27 = load i32, ptr %l27, !tbaa !23
  store i32 %t27, ptr %l4, !tbaa !23
  %t28 = load ptr, ptr %l0, !tbaa !29
  %t29 = load i32, ptr %l4, !tbaa !23
  %t32 = call ptr @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2etypeDecl(ptr %v0, ptr %v0, ptr %t28, i32 %t29)
  store ptr %t32, ptr %l30
  br label %bb9
bb9:
  %t33 = load ptr, ptr %l30, !tbaa !29
  store ptr %t33, ptr %l5, !tbaa !29
  %t34 = load ptr, ptr %l5, !tbaa !29
  %t36 = icmp eq ptr %t34, null
  br i1 %t36, label %bb10, label %bb11
bb10:
  store i1 true, ptr %l33, !tbaa !21
  br label %bb12
bb11:
  %t38 = load ptr, ptr %l5, !tbaa !29
  %t40 = getelementptr %"compiler/ast:TypeDecl", ptr %t38, i32 0, i32 3
  %t41 = load ptr, ptr %t40, !tbaa !29
  %t43 = icmp eq ptr %t41, null
  store i1 %t43, ptr %l33, !tbaa !21
  br label %bb12
bb12:
  %t45 = load i1, ptr %l33, !tbaa !21
  br i1 %t45, label %bb13, label %bb14
bb13:
  br label %ret
bb14:
  br label %bb15
bb15:
  %t46 = load ptr, ptr %l5, !tbaa !29
  %t48 = getelementptr %"compiler/ast:TypeDecl", ptr %t46, i32 0, i32 3
  %t49 = load ptr, ptr %t48, !tbaa !29
  store ptr %t49, ptr %l6, !tbaa !29
  %t51 = load ptr, ptr %l6, !tbaa !29
  store ptr %t51, ptr %l39, !tbaa !29
  store i1 false, ptr %l40, !tbaa !21
  %t52 = load ptr, ptr %l39, !tbaa !29
  %t53 = icmp ne ptr %t52, null
  br i1 %t53, label %bb16, label %bb17
bb16:
  %t55 = load ptr, ptr %l39, !tbaa !29
  %t56 = load i64, ptr %t55, !range !{i64 0, i64 5}
  %t58 = icmp eq i64 %t56, 2
  store i1 %t58, ptr %l40, !tbaa !21
  br label %bb17
bb17:
  %t59 = load i1, ptr %l40, !tbaa !21
  br i1 %t59, label %bb18, label %bb19
bb18:
  %t60 = load ptr, ptr %l6, !tbaa !29
  %t62 = getelementptr { i64, [6 x i64] }, ptr %t60, i32 0, i32 1
  %t63 = getelementptr { { i64, ptr }, { i64, ptr }, { i64, ptr } }, ptr %t62, i32 0, i32 2
  %t64 = load { i64, ptr }, ptr %t63
  store { i64, ptr } %t64, ptr %l7, !tbaa !27
  br label %bb20
bb19:
  br label %bb42
bb20:
  store %olang.scope zeroinitializer, ptr %s3
  %t66 = load ptr, ptr %l0, !tbaa !29
  %t67 = load i32, ptr %l4, !tbaa !23
  call void @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2edeclContext(ptr %t68, ptr %v0, ptr %s3, ptr %t66, i32 %t67)
  call void @llvm.memmove.p0.p0.i64(ptr %l47, ptr %t68, i64 160, i1 false)
  br label %bb21
bb21:
  call void @llvm.memmove.p0.p0.i64(ptr %l8, ptr %l47, i64 160, i1 false)
  %t71 = load { i64, ptr }, ptr %l7, !tbaa !27
  store { i64, ptr } %t71, ptr %l9, !tbaa !27
  store i64 0, ptr %l10, !tbaa !24
  %t73 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t75 = extractvalue { i64, ptr } %t73, 0
  store i64 %t75, ptr %l11, !tbaa !24
  br label %bb22
bb22:
  %t77 = load i64, ptr %l10, !tbaa !24
  %t78 = load i64, ptr %l11, !tbaa !24
  %t81 = icmp slt i64 %t77, %t78
  %t83 = xor i1 %t81, true
  br i1 %t83, label %bb23, label %bb24
bb23:
  br label %bb41
bb24:
  br label %bb25
bb25:
  %t85 = load { i64, ptr }, ptr %l9, !tbaa !27
  store { i64, ptr } %t85, ptr %l55, !tbaa !27
  %t86 = load i64, ptr %l10, !tbaa !24
  %t88 = getelementptr { i64, ptr }, ptr %l55, i32 0, i32 1
  %t89 = load ptr, ptr %t88, !tbaa !27
  %t90 = getelementptr ptr, ptr %t89, i64 %t86
  %t91 = load ptr, ptr %t90, !tbaa !39
  %t93 = load ptr, ptr %l0, !tbaa !29
  store ptr %t93, ptr %l58, !tbaa !29
  %t94 = load ptr, ptr %l0, !tbaa !29
  %t100 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eResolve(ptr %v0, ptr %s3, ptr %v0, ptr %t94, ptr %l8, ptr %t91)
  store i32 %t100, ptr %l63
  br label %bb26
bb26:
  %t101 = load i32, ptr %l4, !tbaa !23
  %t103 = call i64 @compiler_2fgeneric_2eDeclOwner(i32 %t101)
  store i64 %t103, ptr %l65
  br label %bb27
bb27:
  %t104 = load ptr, ptr %l0, !tbaa !29
  %t106 = getelementptr %"compiler/generic:Program", ptr %t104, i32 0, i32 2
  %t107 = load i32, ptr %l1, !tbaa !23
  %t110 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eArgs(ptr %v0, ptr %t106, i32 %t107)
  store i32 %t110, ptr %l69
  br label %bb28
bb28:
  %t111 = load ptr, ptr %l58, !tbaa !29
  %t112 = load i32, ptr %l63, !tbaa !23
  %t113 = load i64, ptr %l65, !tbaa !24
  %t114 = load i32, ptr %l69, !tbaa !23
  %t115 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eSubst(ptr %v0, ptr %t111, i32 %t112, i64 %t113, i32 %t114)
  store i32 %t115, ptr %l70
  br label %bb29
bb29:
  %t116 = load i32, ptr %l70, !tbaa !23
  store i32 %t116, ptr %l13, !tbaa !23
  %t117 = load ptr, ptr %l0, !tbaa !29
  %t118 = load i32, ptr %l13, !tbaa !23
  %t121 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eIsClosedTrait(ptr %v0, ptr %t117, i32 %t118)
  store i1 %t121, ptr %l73
  br label %bb30
bb30:
  %t122 = load i1, ptr %l73, !tbaa !21
  br i1 %t122, label %bb31, label %bb32
bb31:
  %t123 = load ptr, ptr %l0, !tbaa !29
  %t124 = load i32, ptr %l13, !tbaa !23
  %t125 = load ptr, ptr %l2, !tbaa !29
  %t126 = load i64, ptr %l3, !tbaa !24
  %t128 = add i64 %t126, 1
  call void @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2emembers(ptr %v0, ptr %v1, ptr %t123, i32 %t124, ptr %t125, i64 %t128)
  br label %bb33
bb32:
  %t133 = load ptr, ptr %l2, !tbaa !29
  %t134 = load i32, ptr %l13, !tbaa !23
  %t137 = call i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2eHas_3ccompiler_2ftypes_3aTypeId_3e(ptr %v1, ptr %t133, i32 %t134)
  store i1 %t137, ptr %l81
  br label %bb34
bb33:
  br label %bb39
bb34:
  %t138 = load i1, ptr %l81, !tbaa !21
  %t139 = xor i1 %t138, true
  br i1 %t139, label %bb35, label %bb36
bb35:
  %t141 = load ptr, ptr %l2, !tbaa !29
  %t142 = load i32, ptr %l13, !tbaa !23
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2ePush_3ccompiler_2ftypes_3aTypeId_3e(ptr %v1, ptr %t141, i32 %t142)
  br label %bb37
bb36:
  br label %bb38
bb37:
  br label %bb38
bb38:
  br label %bb39
bb39:
  br label %bb40
bb40:
  %t145 = load i64, ptr %l10, !tbaa !24
  %t147 = add i64 %t145, 1
  store i64 %t147, ptr %l10, !tbaa !24
  br label %bb22
bb41:
  call void @__olang_scope_close(ptr %s3)
  br label %bb47
bb42:
  br i1 true, label %bb43, label %bb44
bb43:
  br label %bb45
bb44:
  br label %bb46
bb45:
  br label %bb47
bb46:
  call void @__olang_check_failed(ptr @olang_loc_7c1b9fa6eff766ef_29392a9ca6e4fd4b)
  unreachable
bb47:
  br label %ret
ret:
  ret void
}

define dso_local i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2enameType(ptr %v0, ptr %v1, ptr %a0, ptr %a1, %"compiler/source:Span" %a2, i32 %a3) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca %"compiler/source:Span"
  %l3 = alloca i32
  %l4 = alloca %"compiler/names:Ref"
  %l5 = alloca ptr
  %l6 = alloca %"compiler/generic:Context"
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca i64
  %l12 = alloca i64
  %l13 = alloca i64
  %l14 = alloca i64
  %l15 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l16 = alloca i32
  %l18 = alloca ptr
  %l22 = alloca i64
  %l24 = alloca %"compiler/names:Ref"
  %l28 = alloca i1
  %l35 = alloca ptr
  %l40 = alloca %"compiler/generic:Context"
  %l45 = alloca i1
  %l53 = alloca i32
  %l59 = alloca i1
  %l63 = alloca i1
  %l64 = alloca i32
  %l72 = alloca i64
  %l75 = alloca i64
  %l94 = alloca { i64, ptr }
  %l111 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l116 = alloca { i64, ptr }
  %l120 = alloca i32
  %s0 = alloca %olang.scope
  %rv = alloca i32
  %t53 = alloca %"compiler/generic:Context", align 8
  store ptr %a0, ptr %l0
  store %"compiler/source:Span" %a2, ptr %l2
  store i32 %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/generic:Program", ptr %t1, i32 0, i32 1
  %t4 = load ptr, ptr %t3, !tbaa !29
  store ptr %t4, ptr %l18, !tbaa !29
  %t5 = load ptr, ptr %l0, !tbaa !29
  %t8 = getelementptr %"compiler/generic:Context", ptr %a1, i32 0, i32 0
  %t9 = load i64, ptr %t8, !tbaa !24
  %t12 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2efile(ptr %v0, ptr %t5, i64 %t9)
  store i64 %t12, ptr %l22
  br label %bb1
bb1:
  %t13 = getelementptr %"compiler/source:Span", ptr %l2, i32 0, i32 0
  %t14 = load i32, ptr %t13, !tbaa !23
  %t15 = load ptr, ptr %l18, !tbaa !29
  %t16 = load i64, ptr %l22, !tbaa !24
  %t18 = call %"compiler/names:Ref" @compiler_2fnames_2ecompiler_2fnames_3aResolver_2eUse(ptr %v0, ptr %t15, i64 %t16, i32 %t14)
  store %"compiler/names:Ref" %t18, ptr %l24
  br label %bb2
bb2:
  %t19 = load %"compiler/names:Ref", ptr %l24
  store %"compiler/names:Ref" %t19, ptr %l4
  %t20 = getelementptr %"compiler/names:Ref", ptr %l4, i32 0, i32 0
  %t21 = load i32, ptr %t20, !range !{i32 0, i32 9}
  %t23 = trunc i64 2 to i32
  %t24 = icmp eq i32 %t21, %t23
  %t26 = xor i1 %t24, true
  br i1 %t26, label %bb3, label %bb4
bb3:
  store i1 true, ptr %l28, !tbaa !21
  br label %bb5
bb4:
  %t28 = getelementptr %"compiler/names:Ref", ptr %l4, i32 0, i32 2
  %t29 = load i64, ptr %t28, !tbaa !24
  %t31 = icmp slt i64 %t29, 0
  store i1 %t31, ptr %l28, !tbaa !21
  br label %bb5
bb5:
  %t33 = load i1, ptr %l28, !tbaa !21
  br i1 %t33, label %bb6, label %bb7
bb6:
  %t34 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  call void @__olang_scope_close(ptr %s0)
  store i32 %t34, ptr %rv
  br label %ret
bb7:
  br label %bb8
bb8:
  %t36 = load ptr, ptr %l0, !tbaa !29
  %t37 = getelementptr %"compiler/names:Ref", ptr %l4, i32 0, i32 1
  %t38 = load i64, ptr %t37, !tbaa !24
  %t39 = load i32, ptr %l3, !tbaa !23
  %t43 = call ptr @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eanyGlobal(ptr %v0, ptr %v0, ptr %t36, i64 %t38, i32 %t39)
  store ptr %t43, ptr %l35
  br label %bb9
bb9:
  %t44 = load ptr, ptr %l35, !tbaa !29
  store ptr %t44, ptr %l5, !tbaa !29
  %t45 = load ptr, ptr %l5, !tbaa !29
  %t47 = icmp eq ptr %t45, null
  br i1 %t47, label %bb10, label %bb11
bb10:
  %t49 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  call void @__olang_scope_close(ptr %s0)
  store i32 %t49, ptr %rv
  br label %ret
bb11:
  br label %bb12
bb12:
  %t51 = getelementptr %"compiler/names:Ref", ptr %l4, i32 0, i32 1
  %t52 = load i64, ptr %t51, !tbaa !24
  call void @compiler_2fgeneric_3aContext_2ector(ptr %t53, ptr %s0, i64 %t52, i64 -1)
  call void @llvm.memmove.p0.p0.i64(ptr %l40, ptr %t53, i64 160, i1 false)
  br label %bb13
bb13:
  call void @llvm.memmove.p0.p0.i64(ptr %l6, ptr %l40, i64 160, i1 false)
  %t55 = load ptr, ptr %l5, !tbaa !29
  %t57 = getelementptr %"compiler/ast:VarDecl", ptr %t55, i32 0, i32 2
  %t58 = load ptr, ptr %t57, !tbaa !29
  %t60 = icmp eq ptr %t58, null
  %t62 = xor i1 %t60, true
  br i1 %t62, label %bb14, label %bb15
bb14:
  %t64 = load ptr, ptr %l5, !tbaa !29
  %t66 = getelementptr %"compiler/ast:VarDecl", ptr %t64, i32 0, i32 4
  %t67 = load i1, ptr %t66, !tbaa !21
  %t69 = xor i1 %t67, true
  store i1 %t69, ptr %l45, !tbaa !21
  br label %bb16
bb15:
  store i1 false, ptr %l45, !tbaa !21
  br label %bb16
bb16:
  %t71 = load i1, ptr %l45, !tbaa !21
  br i1 %t71, label %bb17, label %bb18
bb17:
  %t72 = load ptr, ptr %l0, !tbaa !29
  %t73 = load ptr, ptr %l5, !tbaa !29
  %t74 = load i32, ptr %l3, !tbaa !23
  %t79 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eGlobalStorage(ptr %v0, ptr %s0, ptr %v0, ptr %t72, ptr %l6, ptr %t73, i32 %t74)
  store i32 %t79, ptr %l53
  br label %bb19
bb18:
  br label %bb20
bb19:
  call void @__olang_scope_close(ptr %s0)
  %t80 = load i32, ptr %l53, !tbaa !23
  store i32 %t80, ptr %rv
  br label %ret
bb20:
  %t81 = getelementptr %"compiler/names:Ref", ptr %l4, i32 0, i32 1
  %t82 = load i64, ptr %t81, !tbaa !24
  %t84 = shl i64 %t82, 32
  %t85 = load i32, ptr %l3, !tbaa !23
  %t87 = sext i32 %t85 to i64
  %t90 = or i64 %t84, %t87
  store i64 %t90, ptr %l7, !tbaa !24
  %t92 = load ptr, ptr %l0, !tbaa !29
  %t94 = getelementptr %"compiler/generic:Program", ptr %t92, i32 0, i32 49
  %t95 = load i64, ptr %l7, !tbaa !24
  %t98 = call { i32, i1 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2eGet_3cI64_2c_20Bool_3e(ptr %v0, ptr %t94, i64 %t95)
  %t99 = extractvalue { i32, i1 } %t98, 1
  %t100 = extractvalue { i32, i1 } %t98, 0
  store i32 %t100, ptr %l64
  %t101 = icmp ne i32 %t100, 0
  br i1 %t101, label %bb22, label %ok.102, !prof !99
ok.102:
  store i1 %t99, ptr %l63
  br label %bb21
bb21:
  %t103 = load i1, ptr %l63, !tbaa !21
  store i1 %t103, ptr %l59, !tbaa !21
  br label %bb24
bb22:
  br label %bb23
bb23:
  store i1 false, ptr %l59, !tbaa !21
  br label %bb24
bb24:
  %t104 = load i1, ptr %l59, !tbaa !21
  br i1 %t104, label %bb25, label %bb26
bb25:
  %t105 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  call void @__olang_scope_close(ptr %s0)
  store i32 %t105, ptr %rv
  br label %ret
bb26:
  br label %bb27
bb27:
  store i64 0, ptr %l8, !tbaa !24
  store i64 0, ptr %l9, !tbaa !24
  %t107 = load ptr, ptr %l5, !tbaa !29
  %t109 = getelementptr %"compiler/ast:VarDecl", ptr %t107, i32 0, i32 0
  %t110 = load { i64, ptr }, ptr %t109, !tbaa !27
  %t112 = extractvalue { i64, ptr } %t110, 0
  store i64 %t112, ptr %l10, !tbaa !24
  store i64 1, ptr %l11, !tbaa !24
  %t114 = load i64, ptr %l10, !tbaa !24
  %t115 = load i64, ptr %l9, !tbaa !24
  %t118 = icmp sgt i64 %t114, %t115
  br i1 %t118, label %bb28, label %bb29
bb28:
  %t120 = load i64, ptr %l11, !tbaa !24
  %t122 = icmp sgt i64 %t120, 0
  br i1 %t122, label %bb30, label %bb31
bb29:
  store i64 0, ptr %l72, !tbaa !24
  br label %bb33
bb30:
  %t124 = load i64, ptr %l10, !tbaa !24
  %t125 = load i64, ptr %l9, !tbaa !24
  %t128 = sub i64 %t124, %t125
  %t129 = load i64, ptr %l11, !tbaa !24
  %t132 = add i64 %t128, %t129
  %t134 = sub i64 %t132, 1
  %t135 = load i64, ptr %l11, !tbaa !24
  %t138 = sdiv i64 %t134, %t135
  store i64 %t138, ptr %l75, !tbaa !24
  br label %bb32
bb31:
  store i64 0, ptr %l75, !tbaa !24
  br label %bb32
bb32:
  %t140 = load i64, ptr %l75, !tbaa !24
  store i64 %t140, ptr %l72, !tbaa !24
  br label %bb33
bb33:
  %t141 = load i64, ptr %l72, !tbaa !24
  store i64 %t141, ptr %l12, !tbaa !24
  store i64 0, ptr %l13, !tbaa !24
  br label %bb34
bb34:
  %t142 = load i64, ptr %l13, !tbaa !24
  %t143 = load i64, ptr %l12, !tbaa !24
  %t146 = icmp slt i64 %t142, %t143
  %t148 = xor i1 %t146, true
  br i1 %t148, label %bb35, label %bb36
bb35:
  br label %bb42
bb36:
  br label %bb37
bb37:
  %t150 = load i64, ptr %l9, !tbaa !24
  %t151 = load i64, ptr %l13, !tbaa !24
  %t152 = load i64, ptr %l11, !tbaa !24
  %t155 = mul i64 %t151, %t152
  %t158 = add i64 %t150, %t155
  store i64 %t158, ptr %l14, !tbaa !24
  %t160 = load ptr, ptr %l5, !tbaa !29
  %t162 = getelementptr %"compiler/ast:VarDecl", ptr %t160, i32 0, i32 0
  %t163 = load { i64, ptr }, ptr %t162, !tbaa !27
  store { i64, ptr } %t163, ptr %l94, !tbaa !27
  %t164 = load i64, ptr %l14, !tbaa !24
  %t166 = getelementptr { i64, ptr }, ptr %l94, i32 0, i32 1
  %t167 = load ptr, ptr %t166, !tbaa !27
  %t168 = getelementptr i32, ptr %t167, i64 %t164
  %t169 = load i32, ptr %t168, !tbaa !33
  %t170 = load i32, ptr %l3, !tbaa !23
  %t173 = icmp eq i32 %t169, %t170
  br i1 %t173, label %bb38, label %bb39
bb38:
  %t175 = load i64, ptr %l14, !tbaa !24
  store i64 %t175, ptr %l8, !tbaa !24
  br label %bb40
bb39:
  br label %bb40
bb40:
  br label %bb41
bb41:
  %t177 = load i64, ptr %l13, !tbaa !24
  %t179 = add i64 %t177, 1
  store i64 %t179, ptr %l13, !tbaa !24
  br label %bb34
bb42:
  %t181 = load i64, ptr %l8, !tbaa !24
  %t182 = load ptr, ptr %l5, !tbaa !29
  %t184 = getelementptr %"compiler/ast:VarDecl", ptr %t182, i32 0, i32 3
  %t185 = load { i64, ptr }, ptr %t184, !tbaa !27
  %t187 = extractvalue { i64, ptr } %t185, 0
  %t190 = icmp sge i64 %t181, %t187
  br i1 %t190, label %bb43, label %bb44
bb43:
  %t192 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  call void @__olang_scope_close(ptr %s0)
  store i32 %t192, ptr %rv
  br label %ret
bb44:
  br label %bb45
bb45:
  %t194 = load ptr, ptr %l0, !tbaa !29
  %t196 = getelementptr %"compiler/generic:Program", ptr %t194, i32 0, i32 49
  %t197 = load i64, ptr %l7, !tbaa !24
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2ePut_3cI64_2c_20Bool_3e(ptr %v0, ptr %t196, i64 %t197, i1 true)
  br label %bb46
bb46:
  %t200 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fsource_3aNameId_Hcd3bbe8e64537e19c3182f51d0fe16c9(ptr %s0)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t200, ptr %l111
  br label %bb47
bb47:
  %t201 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l111
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t201, ptr %l15
  %t202 = load ptr, ptr %l0, !tbaa !29
  %t203 = load ptr, ptr %l5, !tbaa !29
  %t205 = getelementptr %"compiler/ast:VarDecl", ptr %t203, i32 0, i32 3
  %t206 = load { i64, ptr }, ptr %t205, !tbaa !27
  store { i64, ptr } %t206, ptr %l116, !tbaa !27
  %t207 = load i64, ptr %l8, !tbaa !24
  %t209 = getelementptr { i64, ptr }, ptr %l116, i32 0, i32 1
  %t210 = load ptr, ptr %t209, !tbaa !27
  %t211 = getelementptr ptr, ptr %t210, i64 %t207
  %t212 = load ptr, ptr %t211, !tbaa !39
  %t218 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eInfer(ptr %v0, ptr %s0, ptr %s0, ptr %v0, ptr %t202, ptr %l6, ptr %l15, ptr %t212)
  store i32 %t218, ptr %l120
  br label %bb48
bb48:
  %t219 = load i32, ptr %l120, !tbaa !23
  store i32 %t219, ptr %l16, !tbaa !23
  %t220 = load ptr, ptr %l0, !tbaa !29
  %t222 = getelementptr %"compiler/generic:Program", ptr %t220, i32 0, i32 49
  %t223 = load i64, ptr %l7, !tbaa !24
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2ePut_3cI64_2c_20Bool_3e(ptr %v0, ptr %t222, i64 %t223, i1 false)
  br label %bb49
bb49:
  %t226 = load i32, ptr %l16, !tbaa !23
  call void @__olang_scope_close(ptr %s0)
  store i32 %t226, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2enamed(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1, %"compiler/source:Span" %a2, { i64, ptr } %a3, { i64, ptr } %a4) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca %"compiler/source:Span"
  %l3 = alloca { i64, ptr }
  %l4 = alloca { i64, ptr }
  %l5 = alloca i32
  %l6 = alloca %"compiler/names:Ref"
  %l7 = alloca i32
  %l8 = alloca { i64, ptr }
  %l9 = alloca i32
  %l10 = alloca i32
  %l11 = alloca %"compiler/names:Ref"
  %l12 = alloca i32
  %l13 = alloca { i64, ptr }
  %l14 = alloca i32
  %l20 = alloca { i64, ptr }
  %l22 = alloca i32
  %l31 = alloca i32
  %l33 = alloca ptr
  %l37 = alloca i64
  %l38 = alloca i32
  %l40 = alloca { i64, ptr }
  %l42 = alloca { i64, ptr }
  %l46 = alloca %"compiler/names:Ref"
  %l49 = alloca i1
  %l55 = alloca i32
  %l59 = alloca i64
  %l62 = alloca ptr
  %l63 = alloca ptr
  %l64 = alloca %"compiler/source:Span"
  %l65 = alloca ptr
  %l66 = alloca ptr
  %l67 = alloca i32
  %l71 = alloca i32
  %l74 = alloca i32
  %l78 = alloca { i64, ptr }
  %l80 = alloca { i64, ptr }
  %l82 = alloca i1
  %l83 = alloca i32
  %l88 = alloca i32
  %l99 = alloca i32
  %l103 = alloca i32
  %l106 = alloca { i64, ptr }
  %l108 = alloca i32
  %l109 = alloca i32
  %l112 = alloca i1
  %l115 = alloca i1
  %l116 = alloca i1
  %l120 = alloca i32
  %l128 = alloca ptr
  %l132 = alloca i64
  %l134 = alloca %"compiler/names:Ref"
  %l139 = alloca { i64, ptr }
  %l144 = alloca { i64, ptr }
  %l146 = alloca i1
  %l152 = alloca ptr
  %l155 = alloca { i64, ptr }
  %l158 = alloca i32
  %l159 = alloca i32
  %l161 = alloca i1
  %l166 = alloca i32
  %l175 = alloca i32
  %l179 = alloca i32
  %l186 = alloca ptr
  %l190 = alloca i32
  %l191 = alloca i32
  %l196 = alloca i32
  %s1 = alloca %olang.scope
  %s3 = alloca %olang.scope
  %s5 = alloca %olang.scope
  %s10 = alloca %olang.scope
  %rv = alloca i32
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store %"compiler/source:Span" %a2, ptr %l2
  store { i64, ptr } %a3, ptr %l3
  store { i64, ptr } %a4, ptr %l4
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t3 = extractvalue { i64, ptr } %t1, 0
  %t5 = icmp sge i64 %t3, 2
  br i1 %t5, label %bb1, label %bb2
bb1:
  store %olang.scope zeroinitializer, ptr %s1
  %t7 = load ptr, ptr %l0, !tbaa !29
  %t8 = load ptr, ptr %l1, !tbaa !29
  %t9 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t9, ptr %l20, !tbaa !27
  %t10 = getelementptr { i64, ptr }, ptr %l20, i32 0, i32 1
  %t11 = load ptr, ptr %t10, !tbaa !27
  %t12 = getelementptr i32, ptr %t11, i64 0
  %t13 = load i32, ptr %t12, !tbaa !33
  %t17 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2ereflHead(ptr %v0, ptr %v1, ptr %t7, ptr %t8, i32 %t13)
  store i32 %t17, ptr %l22
  br label %bb3
bb2:
  br label %bb41
bb3:
  %t18 = load i32, ptr %l22, !tbaa !23
  store i32 %t18, ptr %l5, !tbaa !23
  %t19 = load i32, ptr %l5, !tbaa !23
  %t21 = icmp sge i32 %t19, 0
  br i1 %t21, label %bb4, label %bb5
bb4:
  %t23 = load ptr, ptr %l0, !tbaa !29
  %t24 = load ptr, ptr %l1, !tbaa !29
  %t25 = load %"compiler/source:Span", ptr %l2
  %t26 = load i32, ptr %l5, !tbaa !23
  %t27 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t28 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t35 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eprojectPath(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %t23, ptr %t24, %"compiler/source:Span" %t25, i32 %t26, { i64, ptr } %t27, { i64, ptr } %t28)
  store i32 %t35, ptr %l31
  br label %bb6
bb5:
  br label %bb7
bb6:
  call void @__olang_scope_close(ptr %s1)
  %t36 = load i32, ptr %l31, !tbaa !23
  store i32 %t36, ptr %rv
  br label %ret
bb7:
  %t37 = load ptr, ptr %l0, !tbaa !29
  %t39 = getelementptr %"compiler/generic:Program", ptr %t37, i32 0, i32 1
  %t40 = load ptr, ptr %t39, !tbaa !29
  store ptr %t40, ptr %l33, !tbaa !29
  %t41 = load ptr, ptr %l0, !tbaa !29
  %t42 = load ptr, ptr %l1, !tbaa !29
  %t44 = getelementptr %"compiler/generic:Context", ptr %t42, i32 0, i32 0
  %t45 = load i64, ptr %t44, !tbaa !24
  %t48 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2efile(ptr %v0, ptr %t41, i64 %t45)
  store i64 %t48, ptr %l37
  br label %bb8
bb8:
  %t49 = getelementptr %"compiler/source:Span", ptr %l2, i32 0, i32 0
  %t50 = load i32, ptr %t49, !tbaa !23
  store i32 %t50, ptr %l38, !tbaa !23
  %t51 = load ptr, ptr %l0, !tbaa !29
  %t52 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t52, ptr %l40, !tbaa !27
  %t53 = getelementptr { i64, ptr }, ptr %l40, i32 0, i32 1
  %t54 = load ptr, ptr %t53, !tbaa !27
  %t55 = getelementptr i32, ptr %t54, i64 0
  %t56 = load i32, ptr %t55, !tbaa !33
  %t59 = call { i64, ptr } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2etext(ptr %v0, ptr %s1, ptr %t51, i32 %t56)
  store { i64, ptr } %t59, ptr %l42
  br label %bb9
bb9:
  %t60 = load { i64, ptr }, ptr %l42, !tbaa !27
  %t61 = extractvalue { i64, ptr } %t60, 0
  %t63 = trunc i64 %t61 to i32
  %t64 = load i32, ptr %l38, !tbaa !23
  %t66 = add i32 %t64, %t63
  %t67 = load ptr, ptr %l33, !tbaa !29
  %t68 = load i64, ptr %l37, !tbaa !24
  %t70 = call %"compiler/names:Ref" @compiler_2fnames_2ecompiler_2fnames_3aResolver_2eMember(ptr %v0, ptr %t67, i64 %t68, i32 %t66)
  store %"compiler/names:Ref" %t70, ptr %l46
  br label %bb10
bb10:
  %t71 = load %"compiler/names:Ref", ptr %l46
  store %"compiler/names:Ref" %t71, ptr %l6
  %t72 = getelementptr %"compiler/names:Ref", ptr %l6, i32 0, i32 0
  %t73 = load i32, ptr %t72, !range !{i32 0, i32 9}
  %t75 = trunc i64 4 to i32
  %t76 = icmp eq i32 %t73, %t75
  br i1 %t76, label %bb11, label %bb12
bb11:
  %t78 = getelementptr %"compiler/names:Ref", ptr %l6, i32 0, i32 2
  %t79 = load i64, ptr %t78, !tbaa !24
  %t81 = icmp sge i64 %t79, 0
  store i1 %t81, ptr %l49, !tbaa !21
  br label %bb13
bb12:
  store i1 false, ptr %l49, !tbaa !21
  br label %bb13
bb13:
  %t83 = load i1, ptr %l49, !tbaa !21
  br i1 %t83, label %bb14, label %bb15
bb14:
  store %olang.scope zeroinitializer, ptr %s3
  %t84 = load ptr, ptr %l0, !tbaa !29
  %t85 = getelementptr %"compiler/names:Ref", ptr %l6, i32 0, i32 1
  %t86 = load i64, ptr %t85, !tbaa !24
  %t87 = getelementptr %"compiler/names:Ref", ptr %l6, i32 0, i32 2
  %t88 = load i64, ptr %t87, !tbaa !24
  %t92 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eDeclFor(ptr %v0, ptr %t84, i64 %t86, i64 %t88)
  store i32 %t92, ptr %l55
  br label %bb16
bb15:
  br label %bb27
bb16:
  %t93 = load i32, ptr %l55, !tbaa !23
  store i32 %t93, ptr %l7, !tbaa !23
  %t94 = load ptr, ptr %l0, !tbaa !29
  %t96 = getelementptr %"compiler/generic:Program", ptr %t94, i32 0, i32 2
  %t97 = load i32, ptr %l7, !tbaa !23
  %t100 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclParams(ptr %v0, ptr %t96, i32 %t97)
  store i64 %t100, ptr %l59
  br label %bb17
bb17:
  %t101 = load i64, ptr %l59, !tbaa !24
  %t102 = icmp sgt i64 %t101, 0
  br i1 %t102, label %bb18, label %bb19
bb18:
  %t104 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  call void @__olang_scope_close(ptr %s3)
  call void @__olang_scope_close(ptr %s1)
  store i32 %t104, ptr %rv
  br label %ret
bb19:
  br label %bb20
bb20:
  %t106 = load ptr, ptr %l0, !tbaa !29
  store ptr %t106, ptr %l62, !tbaa !29
  %t107 = load ptr, ptr %l1, !tbaa !29
  store ptr %t107, ptr %l63, !tbaa !29
  %t108 = load %"compiler/source:Span", ptr %l2
  store %"compiler/source:Span" %t108, ptr %l64
  %t109 = load ptr, ptr %l0, !tbaa !29
  store ptr %t109, ptr %l65, !tbaa !29
  %t110 = load ptr, ptr %l1, !tbaa !29
  store ptr %t110, ptr %l66, !tbaa !29
  %t111 = load i32, ptr %l7, !tbaa !23
  store i32 %t111, ptr %l67, !tbaa !23
  %t112 = icmp sge i64 0, 0
  br i1 %t112, label %bb21, label %bb22
bb21:
  %t114 = icmp sle i64 0, 1152921504606846975
  br i1 %t114, label %bb23, label %bb24
bb22:
  call void @__olang_check_failed(ptr @olang_loc_147ec6f96d1bbdbe_f0c6b18ae87ff0f2)
  unreachable
bb23:
  %t116 = mul i64 0, 8
  %t117 = insertvalue { i64, ptr } undef, i64 0, 0
  %t118 = insertvalue { i64, ptr } %t117, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  %t119 = load ptr, ptr %l65, !tbaa !29
  %t120 = load ptr, ptr %l66, !tbaa !29
  %t121 = load i32, ptr %l67, !tbaa !23
  %t123 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eApply(ptr %v0, ptr %v1, ptr %s3, ptr %t119, ptr %t120, i32 %t121, { i64, ptr } %t118)
  store i32 %t123, ptr %l71
  br label %bb25
bb24:
  call void @__olang_check_failed(ptr @olang_loc_147ec6f96d1bbdbe_f0c6b18ae87ff0f2)
  unreachable
bb25:
  %t124 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t125 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t126 = load ptr, ptr %l62, !tbaa !29
  %t127 = load ptr, ptr %l63, !tbaa !29
  %t128 = load %"compiler/source:Span", ptr %l64
  %t129 = load i32, ptr %l71, !tbaa !23
  %t132 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eprojectPath(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %t126, ptr %t127, %"compiler/source:Span" %t128, i32 %t129, { i64, ptr } %t124, { i64, ptr } %t125)
  store i32 %t132, ptr %l74
  br label %bb26
bb26:
  call void @__olang_scope_close(ptr %s3)
  call void @__olang_scope_close(ptr %s1)
  %t133 = load i32, ptr %l74, !tbaa !23
  store i32 %t133, ptr %rv
  br label %ret
bb27:
  %t134 = getelementptr %"compiler/names:Ref", ptr %l6, i32 0, i32 0
  %t135 = load i32, ptr %t134, !range !{i32 0, i32 9}
  %t137 = trunc i64 7 to i32
  %t138 = icmp eq i32 %t135, %t137
  br i1 %t138, label %bb28, label %bb29
bb28:
  store %olang.scope zeroinitializer, ptr %s5
  %t140 = load ptr, ptr %l0, !tbaa !29
  %t141 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t141, ptr %l78, !tbaa !27
  %t142 = getelementptr { i64, ptr }, ptr %l78, i32 0, i32 1
  %t143 = load ptr, ptr %t142, !tbaa !27
  %t144 = getelementptr i32, ptr %t143, i64 0
  %t145 = load i32, ptr %t144, !tbaa !33
  %t148 = call { i64, ptr } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2etext(ptr %v0, ptr %v0, ptr %t140, i32 %t145)
  store { i64, ptr } %t148, ptr %l80
  br label %bb30
bb29:
  br label %bb40
bb30:
  %t149 = load { i64, ptr }, ptr %l80, !tbaa !27
  store { i64, ptr } %t149, ptr %l8, !tbaa !27
  %t150 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t152 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s5, { i64, ptr } %t150, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d41, i32 0, i32 1) })
  store i1 %t152, ptr %l82
  br label %bb31
bb31:
  %t153 = load i1, ptr %l82, !tbaa !21
  br i1 %t153, label %bb32, label %bb33
bb32:
  %t154 = load i32, ptr @G_2ecompiler_2ftypes_2eBoolT, !tbaa !23
  store i32 %t154, ptr %l83, !tbaa !23
  br label %bb35
bb33:
  %t156 = load ptr, ptr %l0, !tbaa !29
  %t158 = getelementptr %"compiler/generic:Program", ptr %t156, i32 0, i32 2
  %t159 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t162 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePrim(ptr %v0, ptr %v0, ptr %t158, { i64, ptr } %t159)
  store i32 %t162, ptr %l88
  br label %bb34
bb34:
  %t163 = load i32, ptr %l88, !tbaa !23
  store i32 %t163, ptr %l83, !tbaa !23
  br label %bb35
bb35:
  %t164 = load i32, ptr %l83, !tbaa !23
  store i32 %t164, ptr %l9, !tbaa !23
  %t165 = load i32, ptr %l9, !tbaa !23
  %t166 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t169 = icmp eq i32 %t165, %t166
  br i1 %t169, label %bb36, label %bb37
bb36:
  %t171 = load i32, ptr %l9, !tbaa !23
  call void @__olang_scope_close(ptr %s5)
  call void @__olang_scope_close(ptr %s1)
  store i32 %t171, ptr %rv
  br label %ret
bb37:
  br label %bb38
bb38:
  %t173 = load ptr, ptr %l0, !tbaa !29
  %t174 = load ptr, ptr %l1, !tbaa !29
  %t175 = load %"compiler/source:Span", ptr %l2
  %t176 = load i32, ptr %l9, !tbaa !23
  %t177 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t178 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t185 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eprojectPath(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %t173, ptr %t174, %"compiler/source:Span" %t175, i32 %t176, { i64, ptr } %t177, { i64, ptr } %t178)
  store i32 %t185, ptr %l99
  br label %bb39
bb39:
  call void @__olang_scope_close(ptr %s5)
  call void @__olang_scope_close(ptr %s1)
  %t186 = load i32, ptr %l99, !tbaa !23
  store i32 %t186, ptr %rv
  br label %ret
bb40:
  call void @__olang_scope_close(ptr %s1)
  br label %bb41
bb41:
  %t187 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t189 = extractvalue { i64, ptr } %t187, 0
  %t191 = icmp eq i64 %t189, 1
  br i1 %t191, label %bb42, label %bb43
bb42:
  %t193 = load ptr, ptr %l1, !tbaa !29
  %t195 = getelementptr %"compiler/generic:Context", ptr %t193, i32 0, i32 2
  %t196 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t196, ptr %l106, !tbaa !27
  %t197 = getelementptr { i64, ptr }, ptr %l106, i32 0, i32 1
  %t198 = load ptr, ptr %t197, !tbaa !27
  %t199 = getelementptr i32, ptr %t198, i64 0
  %t200 = load i32, ptr %t199, !tbaa !33
  %t203 = call { i32, i32 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fsource_3aNameId_2c_20compil_Hfd0413fe7fd4e5914f6cad5b418b7a6d(ptr %v1, ptr %t195, i32 %t200)
  %t204 = extractvalue { i32, i32 } %t203, 1
  %t205 = extractvalue { i32, i32 } %t203, 0
  store i32 %t205, ptr %l109
  %t206 = icmp ne i32 %t205, 0
  br i1 %t206, label %bb45, label %ok.207, !prof !99
ok.207:
  store i32 %t204, ptr %l108
  br label %bb44
bb43:
  br label %bb62
bb44:
  %t208 = load i32, ptr %l108, !tbaa !23
  store i32 %t208, ptr %l103, !tbaa !23
  br label %bb47
bb45:
  br label %bb46
bb46:
  store i32 -1, ptr %l103, !tbaa !23
  br label %bb47
bb47:
  %t209 = load i32, ptr %l103, !tbaa !23
  store i32 %t209, ptr %l10, !tbaa !23
  %t210 = load i32, ptr %l10, !tbaa !23
  %t212 = icmp sge i32 %t210, 0
  br i1 %t212, label %bb48, label %bb49
bb48:
  %t214 = load ptr, ptr %l0, !tbaa !29
  %t215 = load i32, ptr %l10, !tbaa !23
  %t218 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eIsErrVar(ptr %v0, ptr %t214, i32 %t215)
  store i1 %t218, ptr %l115
  br label %bb50
bb49:
  store i1 false, ptr %l112, !tbaa !21
  br label %bb55
bb50:
  %t219 = load i1, ptr %l115, !tbaa !21
  br i1 %t219, label %bb51, label %bb52
bb51:
  store i1 true, ptr %l116, !tbaa !21
  br label %bb54
bb52:
  %t220 = load ptr, ptr %l0, !tbaa !29
  %t222 = getelementptr %"compiler/generic:Program", ptr %t220, i32 0, i32 2
  %t223 = load i32, ptr %l10, !tbaa !23
  %t226 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t222, i32 %t223)
  store i32 %t226, ptr %l120
  br label %bb53
bb53:
  %t227 = load i32, ptr %l120, !range !{i32 0, i32 33}
  %t229 = trunc i64 30 to i32
  %t230 = icmp eq i32 %t227, %t229
  store i1 %t230, ptr %l116, !tbaa !21
  br label %bb54
bb54:
  %t232 = load i1, ptr %l116, !tbaa !21
  store i1 %t232, ptr %l112, !tbaa !21
  br label %bb55
bb55:
  %t233 = load i1, ptr %l112, !tbaa !21
  br i1 %t233, label %bb56, label %bb57
bb56:
  %t234 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  store i32 %t234, ptr %rv
  br label %ret
bb57:
  br label %bb58
bb58:
  %t236 = load i32, ptr %l10, !tbaa !23
  %t238 = icmp sge i32 %t236, 0
  br i1 %t238, label %bb59, label %bb60
bb59:
  %t240 = load i32, ptr %l10, !tbaa !23
  store i32 %t240, ptr %rv
  br label %ret
bb60:
  br label %bb61
bb61:
  br label %bb62
bb62:
  %t242 = load ptr, ptr %l0, !tbaa !29
  %t244 = getelementptr %"compiler/generic:Program", ptr %t242, i32 0, i32 1
  %t245 = load ptr, ptr %t244, !tbaa !29
  store ptr %t245, ptr %l128, !tbaa !29
  %t246 = load ptr, ptr %l0, !tbaa !29
  %t247 = load ptr, ptr %l1, !tbaa !29
  %t249 = getelementptr %"compiler/generic:Context", ptr %t247, i32 0, i32 0
  %t250 = load i64, ptr %t249, !tbaa !24
  %t253 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2efile(ptr %v0, ptr %t246, i64 %t250)
  store i64 %t253, ptr %l132
  br label %bb63
bb63:
  %t254 = getelementptr %"compiler/source:Span", ptr %l2, i32 0, i32 0
  %t255 = load i32, ptr %t254, !tbaa !23
  %t256 = load ptr, ptr %l128, !tbaa !29
  %t257 = load i64, ptr %l132, !tbaa !24
  %t259 = call %"compiler/names:Ref" @compiler_2fnames_2ecompiler_2fnames_3aResolver_2eUse(ptr %v0, ptr %t256, i64 %t257, i32 %t255)
  store %"compiler/names:Ref" %t259, ptr %l134
  br label %bb64
bb64:
  %t260 = load %"compiler/names:Ref", ptr %l134
  store %"compiler/names:Ref" %t260, ptr %l11
  %t261 = getelementptr %"compiler/names:Ref", ptr %l11, i32 0, i32 0
  %t262 = load i32, ptr %t261, !range !{i32 0, i32 9}
  store i32 %t262, ptr %l12
  %t264 = load i32, ptr %l12, !range !{i32 0, i32 9}
  %t266 = trunc i64 7 to i32
  %t267 = icmp eq i32 %t264, %t266
  br i1 %t267, label %bb65, label %bb66
bb65:
  br label %bb67
bb66:
  br label %bb83
bb67:
  store %olang.scope zeroinitializer, ptr %s10
  %t269 = load ptr, ptr %l0, !tbaa !29
  %t270 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t270, ptr %l139, !tbaa !27
  %t271 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t273 = extractvalue { i64, ptr } %t271, 0
  %t275 = sub i64 %t273, 1
  %t277 = getelementptr { i64, ptr }, ptr %l139, i32 0, i32 1
  %t278 = load ptr, ptr %t277, !tbaa !27
  %t279 = getelementptr i32, ptr %t278, i64 %t275
  %t280 = load i32, ptr %t279, !tbaa !33
  %t283 = call { i64, ptr } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2etext(ptr %v0, ptr %v0, ptr %t269, i32 %t280)
  store { i64, ptr } %t283, ptr %l144
  br label %bb68
bb68:
  %t284 = load { i64, ptr }, ptr %l144, !tbaa !27
  store { i64, ptr } %t284, ptr %l13, !tbaa !27
  %t285 = load { i64, ptr }, ptr %l13, !tbaa !27
  %t287 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s10, { i64, ptr } %t285, { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d42, i32 0, i32 1) })
  store i1 %t287, ptr %l146
  br label %bb69
bb69:
  %t288 = load i1, ptr %l146, !tbaa !21
  br i1 %t288, label %bb70, label %bb71
bb70:
  %t289 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t291 = extractvalue { i64, ptr } %t289, 0
  %t293 = icmp ne i64 %t291, 1
  br i1 %t293, label %bb72, label %bb73
bb71:
  br label %bb77
bb72:
  %t295 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  call void @__olang_scope_close(ptr %s10)
  store i32 %t295, ptr %rv
  br label %ret
bb73:
  br label %bb74
bb74:
  %t297 = load ptr, ptr %l0, !tbaa !29
  %t299 = getelementptr %"compiler/generic:Program", ptr %t297, i32 0, i32 2
  store ptr %t299, ptr %l152, !tbaa !29
  %t300 = load ptr, ptr %l0, !tbaa !29
  %t301 = load ptr, ptr %l1, !tbaa !29
  %t302 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t302, ptr %l155, !tbaa !27
  %t303 = getelementptr { i64, ptr }, ptr %l155, i32 0, i32 1
  %t304 = load ptr, ptr %t303, !tbaa !27
  %t305 = getelementptr ptr, ptr %t304, i64 0
  %t306 = load ptr, ptr %t305, !tbaa !39
  %t311 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eResolve(ptr %v0, ptr %v1, ptr %v3, ptr %t300, ptr %t301, ptr %t306)
  store i32 %t311, ptr %l158
  br label %bb75
bb75:
  %t312 = load ptr, ptr %l152, !tbaa !29
  %t313 = load i32, ptr %l158, !tbaa !23
  %t314 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eArray(ptr %v0, ptr %t312, i32 %t313, i32 0)
  store i32 %t314, ptr %l159
  br label %bb76
bb76:
  call void @__olang_scope_close(ptr %s10)
  %t315 = load i32, ptr %l159, !tbaa !23
  store i32 %t315, ptr %rv
  br label %ret
bb77:
  %t316 = load { i64, ptr }, ptr %l13, !tbaa !27
  %t318 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s10, { i64, ptr } %t316, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d43, i32 0, i32 1) })
  store i1 %t318, ptr %l161
  br label %bb78
bb78:
  %t319 = load i1, ptr %l161, !tbaa !21
  br i1 %t319, label %bb79, label %bb80
bb79:
  %t320 = load i32, ptr @G_2ecompiler_2ftypes_2eBoolT, !tbaa !23
  call void @__olang_scope_close(ptr %s10)
  store i32 %t320, ptr %rv
  br label %ret
bb80:
  br label %bb81
bb81:
  %t322 = load ptr, ptr %l0, !tbaa !29
  %t324 = getelementptr %"compiler/generic:Program", ptr %t322, i32 0, i32 2
  %t325 = load { i64, ptr }, ptr %l13, !tbaa !27
  %t328 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePrim(ptr %v0, ptr %v0, ptr %t324, { i64, ptr } %t325)
  store i32 %t328, ptr %l166
  br label %bb82
bb82:
  call void @__olang_scope_close(ptr %s10)
  %t329 = load i32, ptr %l166, !tbaa !23
  store i32 %t329, ptr %rv
  br label %ret
bb83:
  %t330 = load i32, ptr %l12, !range !{i32 0, i32 9}
  %t332 = trunc i64 4 to i32
  %t333 = icmp eq i32 %t330, %t332
  br i1 %t333, label %bb84, label %bb85
bb84:
  br label %bb86
bb85:
  br label %bb101
bb86:
  %t335 = getelementptr %"compiler/names:Ref", ptr %l11, i32 0, i32 2
  %t336 = load i64, ptr %t335, !tbaa !24
  %t338 = icmp slt i64 %t336, 0
  br i1 %t338, label %bb87, label %bb88
bb87:
  %t340 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  store i32 %t340, ptr %rv
  br label %ret
bb88:
  br label %bb89
bb89:
  %t342 = load ptr, ptr %l0, !tbaa !29
  %t343 = getelementptr %"compiler/names:Ref", ptr %l11, i32 0, i32 1
  %t344 = load i64, ptr %t343, !tbaa !24
  %t345 = getelementptr %"compiler/names:Ref", ptr %l11, i32 0, i32 2
  %t346 = load i64, ptr %t345, !tbaa !24
  %t350 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eDeclFor(ptr %v0, ptr %t342, i64 %t344, i64 %t346)
  store i32 %t350, ptr %l175
  br label %bb90
bb90:
  %t351 = load i32, ptr %l175, !tbaa !23
  store i32 %t351, ptr %l14, !tbaa !23
  %t352 = load ptr, ptr %l0, !tbaa !29
  %t354 = getelementptr %"compiler/generic:Program", ptr %t352, i32 0, i32 2
  %t355 = load i32, ptr %l14, !tbaa !23
  %t358 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclKindOf(ptr %v0, ptr %t354, i32 %t355)
  store i32 %t358, ptr %l179
  br label %bb91
bb91:
  %t359 = load i32, ptr %l179, !range !{i32 0, i32 6}
  %t361 = trunc i64 2 to i32
  %t362 = icmp eq i32 %t359, %t361
  br i1 %t362, label %bb92, label %bb93
bb92:
  %t364 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t366 = extractvalue { i64, ptr } %t364, 0
  %t368 = icmp sgt i64 %t366, 0
  br i1 %t368, label %bb94, label %bb95
bb93:
  br label %bb99
bb94:
  %t370 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  store i32 %t370, ptr %rv
  br label %ret
bb95:
  br label %bb96
bb96:
  %t372 = load ptr, ptr %l0, !tbaa !29
  store ptr %t372, ptr %l186, !tbaa !29
  %t373 = load ptr, ptr %l0, !tbaa !29
  %t375 = getelementptr %"compiler/generic:Program", ptr %t373, i32 0, i32 2
  %t376 = load i32, ptr %l14, !tbaa !23
  %t379 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eNamed(ptr %v0, ptr %t375, i32 %t376, i32 0)
  store i32 %t379, ptr %l190
  br label %bb97
bb97:
  %t380 = load ptr, ptr %l186, !tbaa !29
  %t381 = load i32, ptr %l190, !tbaa !23
  %t382 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eErrValOfType(ptr %v0, ptr %t380, i32 %t381)
  store i32 %t382, ptr %l191
  br label %bb98
bb98:
  %t383 = load i32, ptr %l191, !tbaa !23
  store i32 %t383, ptr %rv
  br label %ret
bb99:
  %t384 = load ptr, ptr %l0, !tbaa !29
  %t385 = load ptr, ptr %l1, !tbaa !29
  %t386 = load i32, ptr %l14, !tbaa !23
  %t387 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t392 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eApply(ptr %v0, ptr %v1, ptr %v3, ptr %t384, ptr %t385, i32 %t386, { i64, ptr } %t387)
  store i32 %t392, ptr %l196
  br label %bb100
bb100:
  %t393 = load i32, ptr %l196, !tbaa !23
  store i32 %t393, ptr %rv
  br label %ret
bb101:
  br i1 true, label %bb102, label %bb103
bb102:
  br label %bb104
bb103:
  br label %bb105
bb104:
  %t394 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  store i32 %t394, ptr %rv
  br label %ret
bb105:
  call void @__olang_check_failed(ptr @olang_loc_d7edc9d7694f5654_b586e68500b77530)
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

define dso_local i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2enumberOf(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l7 = alloca i32
  %rv = alloca i32
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load i32, ptr %l1, !tbaa !23
  call void @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2ereprReady(ptr %v0, ptr %t1, i32 %t2)
  br label %bb1
bb1:
  %t5 = load ptr, ptr %l0, !tbaa !29
  %t7 = getelementptr %"compiler/generic:Program", ptr %t5, i32 0, i32 2
  %t8 = load i32, ptr %l1, !tbaa !23
  %t11 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %v0, ptr %t7, i32 %t8)
  store i32 %t11, ptr %l7
  br label %bb2
bb2:
  %t12 = load i32, ptr %l7, !tbaa !23
  store i32 %t12, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
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
  %t91 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d44, i32 0, i32 1) }, 1
  %t92 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d44, i32 0, i32 1) }, 0
  %t94 = call i64 @__olang_fmt_i64(ptr null, i64 %t82)
  %t95 = add i64 %t92, %t94
  %t96 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d45, i32 0, i32 1) }, 1
  %t97 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d45, i32 0, i32 1) }, 0
  %t98 = add i64 %t95, %t97
  %t100 = call i64 @__olang_fmt_i64(ptr null, i64 %t86)
  %t101 = add i64 %t98, %t100
  %t102 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d45, i32 0, i32 1) }, 1
  %t103 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d45, i32 0, i32 1) }, 0
  %t104 = add i64 %t101, %t103
  %t106 = sext i32 %t88 to i64
  %t107 = call i64 @__olang_fmt_i64(ptr null, i64 %t106)
  %t108 = add i64 %t104, %t107
  %t109 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d45, i32 0, i32 1) }, 1
  %t110 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d45, i32 0, i32 1) }, 0
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
  %t262 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s2, ptr %s2, { i64, ptr } %t260, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d46, i32 0, i32 1) })
  store i1 %t262, ptr %l118
  br label %bb36
bb36:
  %t263 = load i1, ptr %l118, !tbaa !21
  %t264 = xor i1 %t263, true
  br i1 %t264, label %bb37, label %bb38
bb37:
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
  %t288 = call { i64, ptr } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eReflName(ptr %v0, ptr %v0, ptr %t284, i32 %t285)
  store { i64, ptr } %t288, ptr %l131
  br label %bb40
bb40:
  %t289 = load { i64, ptr }, ptr %l131, !tbaa !27
  %t290 = extractvalue { i64, ptr } %t289, 0
  %t291 = extractvalue { i64, ptr } %t289, 1
  %t292 = mul i64 %t290, 1
  %t293 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t292)
  call void @llvm.memcpy.p0.p0.i64(ptr %t293, ptr %t291, i64 %t292, i1 false)
  %t294 = insertvalue { i64, ptr } undef, i64 %t290, 0
  %t295 = insertvalue { i64, ptr } %t294, ptr %t293, 1
  %t296 = load { i64, ptr }, ptr %l21, !tbaa !27
  %t297 = load { i64, ptr }, ptr %l128, !tbaa !27
  %t300 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eReflNoType(ptr %v0, ptr %v0, ptr %s2, ptr %v0, { i64, ptr } %t297, { i64, ptr } %t295, { i64, ptr } %t296)
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

define dso_local i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eshape(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, ptr %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca { i64, ptr }
  %l4 = alloca ptr
  %l5 = alloca i32
  %l6 = alloca ptr
  %l7 = alloca i1
  %l15 = alloca i32
  %l16 = alloca ptr
  %l17 = alloca i1
  %l23 = alloca ptr
  %l28 = alloca i32
  %l29 = alloca i32
  %rv = alloca i32
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store ptr %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l2, !tbaa !29
  store ptr %t1, ptr %l6, !tbaa !29
  store i1 false, ptr %l7, !tbaa !21
  %t2 = load ptr, ptr %l6, !tbaa !29
  %t3 = icmp ne ptr %t2, null
  br i1 %t3, label %bb1, label %bb2
bb1:
  %t5 = load ptr, ptr %l6, !tbaa !29
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 5}
  %t8 = icmp eq i64 %t6, 1
  store i1 %t8, ptr %l7, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l7, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  %t10 = load ptr, ptr %l2, !tbaa !29
  %t12 = getelementptr { i64, [6 x i64] }, ptr %t10, i32 0, i32 1
  %t13 = getelementptr { { i64, ptr }, ptr }, ptr %t12, i32 0, i32 0
  %t14 = load { i64, ptr }, ptr %t13
  store { i64, ptr } %t14, ptr %l3, !tbaa !27
  br label %bb5
bb4:
  br label %bb7
bb5:
  %t16 = load ptr, ptr %l0, !tbaa !29
  %t17 = load ptr, ptr %l1, !tbaa !29
  %t18 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t22 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eanonEnum(ptr %v0, ptr %v1, ptr %v2, ptr %t16, ptr %t17, { i64, ptr } %t18)
  store i32 %t22, ptr %l15
  br label %bb6
bb6:
  %t23 = load i32, ptr %l15, !tbaa !23
  store i32 %t23, ptr %l5, !tbaa !23
  br label %bb20
bb7:
  %t24 = load ptr, ptr %l2, !tbaa !29
  store ptr %t24, ptr %l16, !tbaa !29
  store i1 false, ptr %l17, !tbaa !21
  %t25 = load ptr, ptr %l16, !tbaa !29
  %t26 = icmp ne ptr %t25, null
  br i1 %t26, label %bb8, label %bb9
bb8:
  %t28 = load ptr, ptr %l16, !tbaa !29
  %t29 = load i64, ptr %t28, !range !{i64 0, i64 5}
  %t31 = icmp eq i64 %t29, 0
  store i1 %t31, ptr %l17, !tbaa !21
  br label %bb9
bb9:
  %t32 = load i1, ptr %l17, !tbaa !21
  br i1 %t32, label %bb10, label %bb11
bb10:
  %t33 = load ptr, ptr %l2, !tbaa !29
  %t35 = getelementptr { i64, [6 x i64] }, ptr %t33, i32 0, i32 1
  %t36 = getelementptr { ptr }, ptr %t35, i32 0, i32 0
  %t37 = load ptr, ptr %t36
  store ptr %t37, ptr %l4, !tbaa !29
  br label %bb12
bb11:
  br label %bb15
bb12:
  %t39 = load ptr, ptr %l0, !tbaa !29
  %t41 = getelementptr %"compiler/generic:Program", ptr %t39, i32 0, i32 2
  store ptr %t41, ptr %l23, !tbaa !29
  %t42 = load ptr, ptr %l0, !tbaa !29
  %t43 = load ptr, ptr %l1, !tbaa !29
  %t44 = load ptr, ptr %l4, !tbaa !29
  %t46 = getelementptr %"compiler/ast:StructBody", ptr %t44, i32 0, i32 0
  %t47 = load { i64, ptr }, ptr %t46, !tbaa !27
  %t51 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eparamTypes(ptr %v0, ptr %v1, ptr %v2, ptr %t42, ptr %t43, { i64, ptr } %t47)
  store i32 %t51, ptr %l28
  br label %bb13
bb13:
  %t52 = load ptr, ptr %l23, !tbaa !29
  %t53 = load i32, ptr %l28, !tbaa !23
  %t54 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRecord(ptr %v0, ptr %t52, i32 %t53)
  store i32 %t54, ptr %l29
  br label %bb14
bb14:
  %t55 = load i32, ptr %l29, !tbaa !23
  store i32 %t55, ptr %l5, !tbaa !23
  br label %bb20
bb15:
  br i1 true, label %bb16, label %bb17
bb16:
  br label %bb18
bb17:
  br label %bb19
bb18:
  %t56 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  store i32 %t56, ptr %l5, !tbaa !23
  br label %bb20
bb19:
  call void @__olang_check_failed(ptr @olang_loc_a096310d429842c5_b38f3d186616d6e9)
  unreachable
bb20:
  %t58 = load i32, ptr %l5, !tbaa !23
  store i32 %t58, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2esigType(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, ptr %a2, i32 %a3, i32 %a4) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca i32
  %l4 = alloca i32
  %l5 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l6 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l7 = alloca { i64, ptr }
  %l8 = alloca i64
  %l9 = alloca i64
  %l11 = alloca i32
  %l12 = alloca { i64, ptr }
  %l13 = alloca { i64, ptr }
  %l14 = alloca i64
  %l15 = alloca i64
  %l16 = alloca i64
  %l17 = alloca i64
  %l18 = alloca i64
  %l19 = alloca i64
  %l20 = alloca i32
  %l21 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l22 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l38 = alloca { i64, ptr }
  %l41 = alloca ptr
  %l46 = alloca i32
  %l54 = alloca i64
  %l60 = alloca i64
  %l70 = alloca i64
  %l73 = alloca i64
  %l91 = alloca i64
  %l95 = alloca { i64, ptr }
  %l99 = alloca i32
  %l100 = alloca i64
  %l105 = alloca i32
  %l108 = alloca i64
  %l123 = alloca ptr
  %l127 = alloca i32
  %l128 = alloca i32
  %l133 = alloca ptr
  %l134 = alloca i64
  %l136 = alloca { i64, ptr }
  %l138 = alloca i32
  %l140 = alloca ptr
  %l142 = alloca ptr
  %l144 = alloca { i64, ptr }
  %l145 = alloca i32
  %l146 = alloca i32
  %l153 = alloca i32
  %l155 = alloca i32
  %s0 = alloca %olang.scope
  %rv = alloca i32
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store ptr %a2, ptr %l2
  store i32 %a3, ptr %l3
  store i32 %a4, ptr %l4
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2ector(ptr %s0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1, ptr %l21
  br label %bb1
bb1:
  %t2 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l21
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t2, ptr %l5
  %t3 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %s0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t3, ptr %l22
  br label %bb2
bb2:
  %t4 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l22
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t4, ptr %l6
  %t5 = load i32, ptr %l3, !tbaa !23
  %t6 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t9 = icmp ne i32 %t5, %t6
  br i1 %t9, label %bb3, label %bb4
bb3:
  %t11 = load i32, ptr %l3, !tbaa !23
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2ePush_3ccompiler_2ftypes_3aTypeId_3e(ptr %s0, ptr %l5, i32 %t11)
  br label %bb5
bb4:
  br label %bb7
bb5:
  %t14 = load i64, ptr @G_2ecompiler_2ftypes_2eOwnScope, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %s0, ptr %l6, i64 %t14)
  br label %bb6
bb6:
  br label %bb7
bb7:
  %t17 = load ptr, ptr %l2, !tbaa !29
  %t19 = getelementptr %"compiler/ast:Sig", ptr %t17, i32 0, i32 0
  %t20 = load { i64, ptr }, ptr %t19, !tbaa !27
  store { i64, ptr } %t20, ptr %l7, !tbaa !27
  store i64 0, ptr %l8, !tbaa !24
  %t22 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t24 = extractvalue { i64, ptr } %t22, 0
  store i64 %t24, ptr %l9, !tbaa !24
  br label %bb8
bb8:
  %t26 = load i64, ptr %l8, !tbaa !24
  %t27 = load i64, ptr %l9, !tbaa !24
  %t30 = icmp slt i64 %t26, %t27
  %t32 = xor i1 %t30, true
  br i1 %t32, label %bb9, label %bb10
bb9:
  br label %bb16
bb10:
  br label %bb11
bb11:
  %t34 = load { i64, ptr }, ptr %l7, !tbaa !27
  store { i64, ptr } %t34, ptr %l38, !tbaa !27
  %t35 = load i64, ptr %l8, !tbaa !24
  %t37 = getelementptr { i64, ptr }, ptr %l38, i32 0, i32 1
  %t38 = load ptr, ptr %t37, !tbaa !27
  %t39 = getelementptr ptr, ptr %t38, i64 %t35
  %t40 = load ptr, ptr %t39, !tbaa !39
  store ptr %l5, ptr %l41, !tbaa !29
  %t42 = load ptr, ptr %l0, !tbaa !29
  %t43 = load ptr, ptr %l1, !tbaa !29
  %t46 = getelementptr %"compiler/ast:Param", ptr %t40, i32 0, i32 2
  %t47 = load ptr, ptr %t46, !tbaa !29
  %t51 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eResolve(ptr %v0, ptr %v1, ptr %v2, ptr %t42, ptr %t43, ptr %t47)
  store i32 %t51, ptr %l46
  br label %bb12
bb12:
  %t52 = load ptr, ptr %l41, !tbaa !29
  %t53 = load i32, ptr %l46, !tbaa !23
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2ePush_3ccompiler_2ftypes_3aTypeId_3e(ptr %s0, ptr %t52, i32 %t53)
  br label %bb13
bb13:
  %t54 = load i64, ptr @G_2ecompiler_2ftypes_2eOwnScope, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %s0, ptr %l6, i64 %t54)
  br label %bb14
bb14:
  br label %bb15
bb15:
  %t57 = load i64, ptr %l8, !tbaa !24
  %t59 = add i64 %t57, 1
  store i64 %t59, ptr %l8, !tbaa !24
  br label %bb8
bb16:
  %t61 = load i32, ptr @G_2ecompiler_2ftypes_2eVoidT, !tbaa !23
  store i32 %t61, ptr %l11, !tbaa !23
  %t63 = load ptr, ptr %l2, !tbaa !29
  %t65 = getelementptr %"compiler/ast:Sig", ptr %t63, i32 0, i32 1
  %t66 = load { i64, ptr }, ptr %t65, !tbaa !27
  %t68 = extractvalue { i64, ptr } %t66, 0
  store i64 %t68, ptr %l54, !tbaa !24
  %t69 = load i64, ptr %l54, !tbaa !24
  %t70 = icmp sge i64 %t69, 0
  br i1 %t70, label %bb17, label %bb18
bb17:
  %t72 = load i64, ptr %l54, !tbaa !24
  %t73 = icmp sle i64 %t72, 1152921504606846975
  br i1 %t73, label %bb19, label %bb20
bb18:
  call void @__olang_check_failed(ptr @olang_loc_54bd96e956108342_da8868fc65879bde)
  unreachable
bb19:
  %t75 = load i64, ptr %l54, !tbaa !24
  %t76 = mul i64 %t75, 8
  %t77 = call ptr @__olang_scope_alloc_zeroed(ptr %s0, i64 %t76)
  %t78 = insertvalue { i64, ptr } undef, i64 %t75, 0
  %t79 = insertvalue { i64, ptr } %t78, ptr %t77, 1
  store { i64, ptr } %t79, ptr %l12, !tbaa !27
  %t81 = load ptr, ptr %l2, !tbaa !29
  %t83 = getelementptr %"compiler/ast:Sig", ptr %t81, i32 0, i32 1
  %t84 = load { i64, ptr }, ptr %t83, !tbaa !27
  %t86 = extractvalue { i64, ptr } %t84, 0
  store i64 %t86, ptr %l60, !tbaa !24
  %t87 = load i64, ptr %l60, !tbaa !24
  %t88 = icmp sge i64 %t87, 0
  br i1 %t88, label %bb21, label %bb22
bb20:
  call void @__olang_check_failed(ptr @olang_loc_54bd96e956108342_da8868fc65879bde)
  unreachable
bb21:
  %t90 = load i64, ptr %l60, !tbaa !24
  %t91 = icmp sle i64 %t90, 2305843009213693951
  br i1 %t91, label %bb23, label %bb24
bb22:
  call void @__olang_check_failed(ptr @olang_loc_34a33f37e9dd7af7_611a685a34d67113)
  unreachable
bb23:
  %t93 = load i64, ptr %l60, !tbaa !24
  %t94 = mul i64 %t93, 4
  %t95 = call ptr @__olang_scope_alloc_zeroed(ptr %s0, i64 %t94)
  %t96 = insertvalue { i64, ptr } undef, i64 %t93, 0
  %t97 = insertvalue { i64, ptr } %t96, ptr %t95, 1
  store { i64, ptr } %t97, ptr %l13, !tbaa !27
  store i64 0, ptr %l14, !tbaa !24
  %t99 = load ptr, ptr %l2, !tbaa !29
  %t101 = getelementptr %"compiler/ast:Sig", ptr %t99, i32 0, i32 1
  %t102 = load { i64, ptr }, ptr %t101, !tbaa !27
  %t104 = extractvalue { i64, ptr } %t102, 0
  store i64 %t104, ptr %l15, !tbaa !24
  store i64 1, ptr %l16, !tbaa !24
  %t106 = load i64, ptr %l15, !tbaa !24
  %t107 = load i64, ptr %l14, !tbaa !24
  %t110 = icmp sgt i64 %t106, %t107
  br i1 %t110, label %bb25, label %bb26
bb24:
  call void @__olang_check_failed(ptr @olang_loc_34a33f37e9dd7af7_611a685a34d67113)
  unreachable
bb25:
  %t112 = load i64, ptr %l16, !tbaa !24
  %t114 = icmp sgt i64 %t112, 0
  br i1 %t114, label %bb27, label %bb28
bb26:
  store i64 0, ptr %l70, !tbaa !24
  br label %bb30
bb27:
  %t116 = load i64, ptr %l15, !tbaa !24
  %t117 = load i64, ptr %l14, !tbaa !24
  %t120 = sub i64 %t116, %t117
  %t121 = load i64, ptr %l16, !tbaa !24
  %t124 = add i64 %t120, %t121
  %t126 = sub i64 %t124, 1
  %t127 = load i64, ptr %l16, !tbaa !24
  %t130 = sdiv i64 %t126, %t127
  store i64 %t130, ptr %l73, !tbaa !24
  br label %bb29
bb28:
  store i64 0, ptr %l73, !tbaa !24
  br label %bb29
bb29:
  %t132 = load i64, ptr %l73, !tbaa !24
  store i64 %t132, ptr %l70, !tbaa !24
  br label %bb30
bb30:
  %t133 = load i64, ptr %l70, !tbaa !24
  store i64 %t133, ptr %l17, !tbaa !24
  store i64 0, ptr %l18, !tbaa !24
  br label %bb31
bb31:
  %t134 = load i64, ptr %l18, !tbaa !24
  %t135 = load i64, ptr %l17, !tbaa !24
  %t138 = icmp slt i64 %t134, %t135
  %t140 = xor i1 %t138, true
  br i1 %t140, label %bb32, label %bb33
bb32:
  br label %bb41
bb33:
  br label %bb34
bb34:
  %t142 = load i64, ptr %l14, !tbaa !24
  %t143 = load i64, ptr %l18, !tbaa !24
  %t144 = load i64, ptr %l16, !tbaa !24
  %t147 = mul i64 %t143, %t144
  %t150 = add i64 %t142, %t147
  store i64 %t150, ptr %l19, !tbaa !24
  %t152 = load i64, ptr %l19, !tbaa !24
  store i64 %t152, ptr %l91, !tbaa !24
  %t153 = load ptr, ptr %l0, !tbaa !29
  %t154 = load ptr, ptr %l1, !tbaa !29
  %t155 = load ptr, ptr %l2, !tbaa !29
  %t157 = getelementptr %"compiler/ast:Sig", ptr %t155, i32 0, i32 1
  %t158 = load { i64, ptr }, ptr %t157, !tbaa !27
  store { i64, ptr } %t158, ptr %l95, !tbaa !27
  %t159 = load i64, ptr %l19, !tbaa !24
  %t161 = getelementptr { i64, ptr }, ptr %l95, i32 0, i32 1
  %t162 = load ptr, ptr %t161, !tbaa !27
  %t163 = getelementptr ptr, ptr %t162, i64 %t159
  %t164 = load ptr, ptr %t163, !tbaa !39
  %t169 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eResolve(ptr %v0, ptr %v1, ptr %v2, ptr %t153, ptr %t154, ptr %t164)
  store i32 %t169, ptr %l99
  br label %bb35
bb35:
  %t170 = load i32, ptr %l99, !tbaa !23
  %t171 = load i64, ptr %l91, !tbaa !24
  %t172 = getelementptr { i64, ptr }, ptr %l13, i32 0, i32 1
  %t173 = load ptr, ptr %t172, !tbaa !27
  %t174 = getelementptr i32, ptr %t173, i64 %t171
  store i32 %t170, ptr %t174, !tbaa !33
  %t175 = load i64, ptr %l19, !tbaa !24
  store i64 %t175, ptr %l100, !tbaa !24
  %t176 = load ptr, ptr %l0, !tbaa !29
  %t178 = getelementptr %"compiler/generic:Program", ptr %t176, i32 0, i32 2
  %t179 = load i64, ptr %l19, !tbaa !24
  %t181 = getelementptr { i64, ptr }, ptr %l13, i32 0, i32 1
  %t182 = load ptr, ptr %t181, !tbaa !27
  %t183 = getelementptr i32, ptr %t182, i64 %t179
  %t184 = load i32, ptr %t183, !tbaa !33
  %t187 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t178, i32 %t184)
  store i32 %t187, ptr %l105
  br label %bb36
bb36:
  %t188 = load i32, ptr %l105, !range !{i32 0, i32 33}
  %t190 = trunc i64 25 to i32
  %t191 = icmp eq i32 %t188, %t190
  br i1 %t191, label %bb37, label %bb38
bb37:
  %t193 = load i64, ptr @G_2ecompiler_2ftypes_2eFromTypeVar, !tbaa !24
  store i64 %t193, ptr %l108, !tbaa !24
  br label %bb39
bb38:
  %t195 = load i64, ptr @G_2ecompiler_2ftypes_2eOwnScope, !tbaa !24
  store i64 %t195, ptr %l108, !tbaa !24
  br label %bb39
bb39:
  %t197 = load i64, ptr %l108, !tbaa !24
  %t198 = load i64, ptr %l100, !tbaa !24
  %t199 = getelementptr { i64, ptr }, ptr %l12, i32 0, i32 1
  %t200 = load ptr, ptr %t199, !tbaa !27
  %t201 = getelementptr i64, ptr %t200, i64 %t198
  store i64 %t197, ptr %t201, !tbaa !34
  br label %bb40
bb40:
  %t202 = load i64, ptr %l18, !tbaa !24
  %t204 = add i64 %t202, 1
  store i64 %t204, ptr %l18, !tbaa !24
  br label %bb31
bb41:
  %t206 = load ptr, ptr %l2, !tbaa !29
  %t208 = getelementptr %"compiler/ast:Sig", ptr %t206, i32 0, i32 1
  %t209 = load { i64, ptr }, ptr %t208, !tbaa !27
  %t211 = extractvalue { i64, ptr } %t209, 0
  %t213 = icmp eq i64 %t211, 1
  br i1 %t213, label %bb42, label %bb43
bb42:
  %t215 = getelementptr { i64, ptr }, ptr %l13, i32 0, i32 1
  %t216 = load ptr, ptr %t215, !tbaa !27
  %t217 = getelementptr i32, ptr %t216, i64 0
  %t218 = load i32, ptr %t217, !tbaa !33
  store i32 %t218, ptr %l11, !tbaa !23
  br label %bb49
bb43:
  %t220 = load ptr, ptr %l2, !tbaa !29
  %t222 = getelementptr %"compiler/ast:Sig", ptr %t220, i32 0, i32 1
  %t223 = load { i64, ptr }, ptr %t222, !tbaa !27
  %t225 = extractvalue { i64, ptr } %t223, 0
  %t227 = icmp sgt i64 %t225, 1
  br i1 %t227, label %bb44, label %bb45
bb44:
  %t229 = load ptr, ptr %l0, !tbaa !29
  %t231 = getelementptr %"compiler/generic:Program", ptr %t229, i32 0, i32 2
  store ptr %t231, ptr %l123, !tbaa !29
  %t232 = load ptr, ptr %l0, !tbaa !29
  %t234 = getelementptr %"compiler/generic:Program", ptr %t232, i32 0, i32 2
  %t235 = load { i64, ptr }, ptr %l13, !tbaa !27
  %t238 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eList(ptr %v0, ptr %s0, ptr %t234, { i64, ptr } %t235)
  store i32 %t238, ptr %l127
  br label %bb46
bb45:
  br label %bb48
bb46:
  %t239 = load ptr, ptr %l123, !tbaa !29
  %t240 = load i32, ptr %l127, !tbaa !23
  %t241 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eTuple(ptr %v0, ptr %t239, i32 %t240)
  store i32 %t241, ptr %l128
  br label %bb47
bb47:
  %t242 = load i32, ptr %l128, !tbaa !23
  store i32 %t242, ptr %l11, !tbaa !23
  br label %bb48
bb48:
  br label %bb49
bb49:
  %t243 = load ptr, ptr %l2, !tbaa !29
  %t245 = getelementptr %"compiler/ast:Sig", ptr %t243, i32 0, i32 4
  %t246 = load i1, ptr %t245, !tbaa !21
  br i1 %t246, label %bb50, label %bb51
bb50:
  %t248 = load i32, ptr @G_2ecompiler_2ftypes_2eNoreturnT, !tbaa !23
  store i32 %t248, ptr %l11, !tbaa !23
  br label %bb52
bb51:
  br label %bb52
bb52:
  %t250 = load ptr, ptr %l0, !tbaa !29
  %t252 = getelementptr %"compiler/generic:Program", ptr %t250, i32 0, i32 2
  store ptr %t252, ptr %l133, !tbaa !29
  %t253 = load i64, ptr @G_2ecompiler_2ftypes_2eRoleFn, !tbaa !24
  store i64 %t253, ptr %l134, !tbaa !24
  %t255 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eToArray_3cI64_3e(ptr %s0, ptr %s0, ptr %l6)
  store { i64, ptr } %t255, ptr %l136
  br label %bb53
bb53:
  %t256 = load { i64, ptr }, ptr %l12, !tbaa !27
  %t257 = load ptr, ptr %l133, !tbaa !29
  %t258 = load i64, ptr %l134, !tbaa !24
  %t259 = load { i64, ptr }, ptr %l136, !tbaa !27
  %t261 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eScopes(ptr %v0, ptr %s0, ptr %s0, ptr %t257, i64 %t258, { i64, ptr } %t259, { i64, ptr } %t256)
  store i32 %t261, ptr %l138
  br label %bb54
bb54:
  %t262 = load i32, ptr %l138, !tbaa !23
  store i32 %t262, ptr %l20, !tbaa !23
  %t263 = load ptr, ptr %l0, !tbaa !29
  %t265 = getelementptr %"compiler/generic:Program", ptr %t263, i32 0, i32 2
  store ptr %t265, ptr %l140, !tbaa !29
  %t266 = load ptr, ptr %l0, !tbaa !29
  %t268 = getelementptr %"compiler/generic:Program", ptr %t266, i32 0, i32 2
  store ptr %t268, ptr %l142, !tbaa !29
  %t270 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2eToArray_3ccompiler_2ftypes_3aTypeId_3e(ptr %s0, ptr %s0, ptr %l5)
  store { i64, ptr } %t270, ptr %l144
  br label %bb55
bb55:
  %t271 = load ptr, ptr %l142, !tbaa !29
  %t272 = load { i64, ptr }, ptr %l144, !tbaa !27
  %t273 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eList(ptr %v0, ptr %s0, ptr %t271, { i64, ptr } %t272)
  store i32 %t273, ptr %l145
  br label %bb56
bb56:
  %t274 = load i32, ptr %l11, !tbaa !23
  store i32 %t274, ptr %l146, !tbaa !23
  %t275 = load ptr, ptr %l0, !tbaa !29
  %t276 = load ptr, ptr %l1, !tbaa !29
  %t277 = load ptr, ptr %l2, !tbaa !29
  %t279 = getelementptr %"compiler/ast:Sig", ptr %t277, i32 0, i32 2
  %t280 = load i1, ptr %t279, !tbaa !21
  %t281 = load ptr, ptr %l2, !tbaa !29
  %t283 = getelementptr %"compiler/ast:Sig", ptr %t281, i32 0, i32 3
  %t284 = load { i64, ptr }, ptr %t283, !tbaa !27
  %t289 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eerrorList(ptr %v0, ptr %v1, ptr %v2, ptr %t275, ptr %t276, i1 %t280, { i64, ptr } %t284)
  store i32 %t289, ptr %l153
  br label %bb57
bb57:
  %t290 = load i32, ptr %l20, !tbaa !23
  %t291 = load ptr, ptr %l140, !tbaa !29
  %t292 = load i32, ptr %l145, !tbaa !23
  %t293 = load i32, ptr %l146, !tbaa !23
  %t294 = load i32, ptr %l153, !tbaa !23
  %t296 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eFunc(ptr %v0, ptr %t291, i32 %t292, i32 %t293, i32 %t294, i32 %t290, i64 0, i1 false, i32 0, i64 0)
  store i32 %t296, ptr %l155
  br label %bb58
bb58:
  call void @__olang_scope_close(ptr %s0)
  %t297 = load i32, ptr %l155, !tbaa !23
  store i32 %t297, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2esubstErrs(ptr %v0, ptr %a0, i32 %a1, i64 %a2, i32 %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca i64
  %l3 = alloca i32
  %l4 = alloca { i64, ptr }
  %l5 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l6 = alloca i1
  %l7 = alloca { i64, ptr }
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i32
  %l11 = alloca i32
  %l12 = alloca { i64, ptr }
  %l13 = alloca i64
  %l14 = alloca i64
  %l16 = alloca i32
  %l17 = alloca { i64, ptr }
  %l18 = alloca i64
  %l19 = alloca i64
  %l21 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l28 = alloca { i64, ptr }
  %l29 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l33 = alloca { i64, ptr }
  %l40 = alloca { i64, ptr }
  %l46 = alloca i32
  %l53 = alloca i32
  %l60 = alloca i32
  %l64 = alloca ptr
  %l68 = alloca i32
  %l69 = alloca { i64, ptr }
  %l76 = alloca { i64, ptr }
  %l91 = alloca i32
  %l94 = alloca i1
  %l98 = alloca i64
  %l101 = alloca i1
  %l105 = alloca i64
  %l109 = alloca { i64, ptr }
  %l113 = alloca i64
  %l118 = alloca i32
  %l122 = alloca ptr
  %l126 = alloca i32
  %l127 = alloca { i64, ptr }
  %l134 = alloca { i64, ptr }
  %l144 = alloca i32
  %l156 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l161 = alloca ptr
  %l163 = alloca { i64, ptr }
  %l164 = alloca i32
  %s0 = alloca %olang.scope
  %rv = alloca i32
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  store i64 %a2, ptr %l2
  store i32 %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load i32, ptr %l1, !tbaa !23
  %t3 = icmp eq i32 %t1, 0
  br i1 %t3, label %bb1, label %bb2
bb1:
  %t5 = load i32, ptr %l1, !tbaa !23
  call void @__olang_scope_close(ptr %s0)
  store i32 %t5, ptr %rv
  br label %ret
bb2:
  br label %bb3
bb3:
  %t7 = load ptr, ptr %l0, !tbaa !29
  %t9 = getelementptr %"compiler/generic:Program", ptr %t7, i32 0, i32 2
  %t10 = load i32, ptr %l3, !tbaa !23
  %t13 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t9, i32 %t10)
  store { i64, ptr } %t13, ptr %l28
  br label %bb4
bb4:
  %t14 = load { i64, ptr }, ptr %l28, !tbaa !27
  store { i64, ptr } %t14, ptr %l4, !tbaa !27
  %t15 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2ector(ptr %s0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t15, ptr %l29
  br label %bb5
bb5:
  %t16 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l29
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t16, ptr %l5
  store i1 false, ptr %l6, !tbaa !21
  %t17 = load ptr, ptr %l0, !tbaa !29
  %t19 = getelementptr %"compiler/generic:Program", ptr %t17, i32 0, i32 2
  %t20 = load i32, ptr %l1, !tbaa !23
  %t23 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t19, i32 %t20)
  store { i64, ptr } %t23, ptr %l33
  br label %bb6
bb6:
  %t24 = load { i64, ptr }, ptr %l33, !tbaa !27
  store { i64, ptr } %t24, ptr %l7, !tbaa !27
  store i64 0, ptr %l8, !tbaa !24
  %t25 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t27 = extractvalue { i64, ptr } %t25, 0
  store i64 %t27, ptr %l9, !tbaa !24
  br label %bb7
bb7:
  %t29 = load i64, ptr %l8, !tbaa !24
  %t30 = load i64, ptr %l9, !tbaa !24
  %t33 = icmp slt i64 %t29, %t30
  %t35 = xor i1 %t33, true
  br i1 %t35, label %bb8, label %bb9
bb8:
  br label %bb69
bb9:
  br label %bb10
bb10:
  %t37 = load { i64, ptr }, ptr %l7, !tbaa !27
  store { i64, ptr } %t37, ptr %l40, !tbaa !27
  %t38 = load i64, ptr %l8, !tbaa !24
  %t40 = getelementptr { i64, ptr }, ptr %l40, i32 0, i32 1
  %t41 = load ptr, ptr %t40, !tbaa !27
  %t42 = getelementptr i32, ptr %t41, i64 %t38
  %t43 = load i32, ptr %t42, !tbaa !33
  store i32 %t43, ptr %l10, !tbaa !23
  %t45 = load ptr, ptr %l0, !tbaa !29
  %t47 = getelementptr %"compiler/generic:Program", ptr %t45, i32 0, i32 2
  %t48 = load i32, ptr %l10, !tbaa !23
  %t51 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t47, i32 %t48)
  store i32 %t51, ptr %l46
  br label %bb11
bb11:
  %t52 = load i32, ptr %l46, !range !{i32 0, i32 33}
  %t54 = trunc i64 27 to i32
  %t55 = icmp eq i32 %t52, %t54
  br i1 %t55, label %bb12, label %bb13
bb12:
  %t57 = load ptr, ptr %l0, !tbaa !29
  %t58 = load i32, ptr %l10, !tbaa !23
  %t59 = load i64, ptr %l2, !tbaa !24
  %t60 = load i32, ptr %l3, !tbaa !23
  %t65 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eSubst(ptr %v0, ptr %t57, i32 %t58, i64 %t59, i32 %t60)
  store i32 %t65, ptr %l53
  br label %bb14
bb13:
  %t66 = load ptr, ptr %l0, !tbaa !29
  %t68 = getelementptr %"compiler/generic:Program", ptr %t66, i32 0, i32 2
  %t69 = load i32, ptr %l10, !tbaa !23
  %t72 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t68, i32 %t69)
  store i32 %t72, ptr %l91
  br label %bb35
bb14:
  %t73 = load i32, ptr %l53, !tbaa !23
  store i32 %t73, ptr %l11, !tbaa !23
  %t74 = load i32, ptr %l11, !tbaa !23
  %t75 = load i32, ptr %l10, !tbaa !23
  %t78 = icmp ne i32 %t74, %t75
  br i1 %t78, label %bb15, label %bb16
bb15:
  store i1 true, ptr %l6, !tbaa !21
  br label %bb17
bb16:
  br label %bb17
bb17:
  %t80 = load ptr, ptr %l0, !tbaa !29
  %t82 = getelementptr %"compiler/generic:Program", ptr %t80, i32 0, i32 2
  %t83 = load i32, ptr %l11, !tbaa !23
  %t86 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t82, i32 %t83)
  store i32 %t86, ptr %l60
  br label %bb18
bb18:
  %t87 = load i32, ptr %l60, !range !{i32 0, i32 33}
  %t89 = trunc i64 30 to i32
  %t90 = icmp eq i32 %t87, %t89
  br i1 %t90, label %bb19, label %bb20
bb19:
  %t92 = load ptr, ptr %l0, !tbaa !29
  %t94 = getelementptr %"compiler/generic:Program", ptr %t92, i32 0, i32 2
  store ptr %t94, ptr %l64, !tbaa !29
  %t95 = load ptr, ptr %l0, !tbaa !29
  %t97 = getelementptr %"compiler/generic:Program", ptr %t95, i32 0, i32 2
  %t98 = load i32, ptr %l11, !tbaa !23
  %t101 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrSetItems(ptr %v0, ptr %t97, i32 %t98)
  store i32 %t101, ptr %l68
  br label %bb21
bb20:
  %t102 = load i32, ptr %l11, !tbaa !23
  %t103 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t106 = icmp ne i32 %t102, %t103
  br i1 %t106, label %bb30, label %bb31
bb21:
  %t108 = load ptr, ptr %l64, !tbaa !29
  %t109 = load i32, ptr %l68, !tbaa !23
  %t110 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t108, i32 %t109)
  store { i64, ptr } %t110, ptr %l69
  br label %bb22
bb22:
  %t111 = load { i64, ptr }, ptr %l69, !tbaa !27
  store { i64, ptr } %t111, ptr %l12, !tbaa !27
  store i64 0, ptr %l13, !tbaa !24
  %t112 = load { i64, ptr }, ptr %l12, !tbaa !27
  %t114 = extractvalue { i64, ptr } %t112, 0
  store i64 %t114, ptr %l14, !tbaa !24
  br label %bb23
bb23:
  %t116 = load i64, ptr %l13, !tbaa !24
  %t117 = load i64, ptr %l14, !tbaa !24
  %t120 = icmp slt i64 %t116, %t117
  %t122 = xor i1 %t120, true
  br i1 %t122, label %bb24, label %bb25
bb24:
  br label %bb29
bb25:
  br label %bb26
bb26:
  %t124 = load { i64, ptr }, ptr %l12, !tbaa !27
  store { i64, ptr } %t124, ptr %l76, !tbaa !27
  %t125 = load i64, ptr %l13, !tbaa !24
  %t127 = getelementptr { i64, ptr }, ptr %l76, i32 0, i32 1
  %t128 = load ptr, ptr %t127, !tbaa !27
  %t129 = getelementptr i32, ptr %t128, i64 %t125
  %t130 = load i32, ptr %t129, !tbaa !33
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2ePush_3ccompiler_2ftypes_3aTypeId_3e(ptr %s0, ptr %l5, i32 %t130)
  br label %bb27
bb27:
  br label %bb28
bb28:
  %t135 = load i64, ptr %l13, !tbaa !24
  %t137 = add i64 %t135, 1
  store i64 %t137, ptr %l13, !tbaa !24
  br label %bb23
bb29:
  br label %bb34
bb30:
  %t139 = load i32, ptr %l11, !tbaa !23
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2ePush_3ccompiler_2ftypes_3aTypeId_3e(ptr %s0, ptr %l5, i32 %t139)
  br label %bb32
bb31:
  br label %bb33
bb32:
  br label %bb33
bb33:
  br label %bb34
bb34:
  br label %bb67
bb35:
  %t142 = load i32, ptr %l91, !range !{i32 0, i32 33}
  %t144 = trunc i64 25 to i32
  %t145 = icmp eq i32 %t142, %t144
  br i1 %t145, label %bb36, label %bb37
bb36:
  %t147 = load ptr, ptr %l0, !tbaa !29
  %t149 = getelementptr %"compiler/generic:Program", ptr %t147, i32 0, i32 2
  %t150 = load i32, ptr %l10, !tbaa !23
  %t153 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eA(ptr %v0, ptr %t149, i32 %t150)
  store i64 %t153, ptr %l98
  br label %bb38
bb37:
  store i1 false, ptr %l94, !tbaa !21
  br label %bb39
bb38:
  %t154 = load i64, ptr %l2, !tbaa !24
  %t155 = load i64, ptr %l98, !tbaa !24
  %t157 = icmp eq i64 %t155, %t154
  store i1 %t157, ptr %l94, !tbaa !21
  br label %bb39
bb39:
  %t159 = load i1, ptr %l94, !tbaa !21
  br i1 %t159, label %bb40, label %bb41
bb40:
  %t160 = load ptr, ptr %l0, !tbaa !29
  %t162 = getelementptr %"compiler/generic:Program", ptr %t160, i32 0, i32 2
  %t163 = load i32, ptr %l10, !tbaa !23
  %t166 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eB(ptr %v0, ptr %t162, i32 %t163)
  store i64 %t166, ptr %l105
  br label %bb42
bb41:
  store i1 false, ptr %l101, !tbaa !21
  br label %bb43
bb42:
  %t167 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t169 = extractvalue { i64, ptr } %t167, 0
  %t170 = load i64, ptr %l105, !tbaa !24
  %t172 = icmp slt i64 %t170, %t169
  store i1 %t172, ptr %l101, !tbaa !21
  br label %bb43
bb43:
  %t174 = load i1, ptr %l101, !tbaa !21
  br i1 %t174, label %bb44, label %bb45
bb44:
  %t175 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t175, ptr %l109, !tbaa !27
  %t176 = load ptr, ptr %l0, !tbaa !29
  %t178 = getelementptr %"compiler/generic:Program", ptr %t176, i32 0, i32 2
  %t179 = load i32, ptr %l10, !tbaa !23
  %t182 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eB(ptr %v0, ptr %t178, i32 %t179)
  store i64 %t182, ptr %l113
  br label %bb46
bb45:
  %t183 = load i32, ptr %l10, !tbaa !23
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2ePush_3ccompiler_2ftypes_3aTypeId_3e(ptr %s0, ptr %l5, i32 %t183)
  br label %bb65
bb46:
  %t186 = load i64, ptr %l113, !tbaa !24
  %t187 = getelementptr { i64, ptr }, ptr %l109, i32 0, i32 1
  %t188 = load ptr, ptr %t187, !tbaa !27
  %t189 = getelementptr i32, ptr %t188, i64 %t186
  %t190 = load i32, ptr %t189, !tbaa !33
  store i32 %t190, ptr %l16, !tbaa !23
  store i1 true, ptr %l6, !tbaa !21
  %t192 = load ptr, ptr %l0, !tbaa !29
  %t194 = getelementptr %"compiler/generic:Program", ptr %t192, i32 0, i32 2
  %t195 = load i32, ptr %l16, !tbaa !23
  %t198 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t194, i32 %t195)
  store i32 %t198, ptr %l118
  br label %bb47
bb47:
  %t199 = load i32, ptr %l118, !range !{i32 0, i32 33}
  %t201 = trunc i64 30 to i32
  %t202 = icmp eq i32 %t199, %t201
  br i1 %t202, label %bb48, label %bb49
bb48:
  %t204 = load ptr, ptr %l0, !tbaa !29
  %t206 = getelementptr %"compiler/generic:Program", ptr %t204, i32 0, i32 2
  store ptr %t206, ptr %l122, !tbaa !29
  %t207 = load ptr, ptr %l0, !tbaa !29
  %t209 = getelementptr %"compiler/generic:Program", ptr %t207, i32 0, i32 2
  %t210 = load i32, ptr %l16, !tbaa !23
  %t213 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrSetItems(ptr %v0, ptr %t209, i32 %t210)
  store i32 %t213, ptr %l126
  br label %bb50
bb49:
  %t214 = load ptr, ptr %l0, !tbaa !29
  %t216 = getelementptr %"compiler/generic:Program", ptr %t214, i32 0, i32 2
  %t217 = load i32, ptr %l16, !tbaa !23
  %t220 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t216, i32 %t217)
  store i32 %t220, ptr %l144
  br label %bb59
bb50:
  %t221 = load ptr, ptr %l122, !tbaa !29
  %t222 = load i32, ptr %l126, !tbaa !23
  %t223 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t221, i32 %t222)
  store { i64, ptr } %t223, ptr %l127
  br label %bb51
bb51:
  %t224 = load { i64, ptr }, ptr %l127, !tbaa !27
  store { i64, ptr } %t224, ptr %l17, !tbaa !27
  store i64 0, ptr %l18, !tbaa !24
  %t225 = load { i64, ptr }, ptr %l17, !tbaa !27
  %t227 = extractvalue { i64, ptr } %t225, 0
  store i64 %t227, ptr %l19, !tbaa !24
  br label %bb52
bb52:
  %t229 = load i64, ptr %l18, !tbaa !24
  %t230 = load i64, ptr %l19, !tbaa !24
  %t233 = icmp slt i64 %t229, %t230
  %t235 = xor i1 %t233, true
  br i1 %t235, label %bb53, label %bb54
bb53:
  br label %bb58
bb54:
  br label %bb55
bb55:
  %t237 = load { i64, ptr }, ptr %l17, !tbaa !27
  store { i64, ptr } %t237, ptr %l134, !tbaa !27
  %t238 = load i64, ptr %l18, !tbaa !24
  %t240 = getelementptr { i64, ptr }, ptr %l134, i32 0, i32 1
  %t241 = load ptr, ptr %t240, !tbaa !27
  %t242 = getelementptr i32, ptr %t241, i64 %t238
  %t243 = load i32, ptr %t242, !tbaa !33
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2ePush_3ccompiler_2ftypes_3aTypeId_3e(ptr %s0, ptr %l5, i32 %t243)
  br label %bb56
bb56:
  br label %bb57
bb57:
  %t248 = load i64, ptr %l18, !tbaa !24
  %t250 = add i64 %t248, 1
  store i64 %t250, ptr %l18, !tbaa !24
  br label %bb52
bb58:
  br label %bb64
bb59:
  %t252 = load i32, ptr %l144, !range !{i32 0, i32 33}
  %t254 = trunc i64 25 to i32
  %t255 = icmp eq i32 %t252, %t254
  br i1 %t255, label %bb60, label %bb61
bb60:
  %t257 = load i32, ptr %l16, !tbaa !23
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2ePush_3ccompiler_2ftypes_3aTypeId_3e(ptr %s0, ptr %l5, i32 %t257)
  br label %bb62
bb61:
  br label %bb63
bb62:
  br label %bb63
bb63:
  br label %bb64
bb64:
  br label %bb66
bb65:
  br label %bb66
bb66:
  br label %bb67
bb67:
  br label %bb68
bb68:
  %t260 = load i64, ptr %l8, !tbaa !24
  %t262 = add i64 %t260, 1
  store i64 %t262, ptr %l8, !tbaa !24
  br label %bb7
bb69:
  %t264 = load i1, ptr %l6, !tbaa !21
  %t266 = xor i1 %t264, true
  br i1 %t266, label %bb70, label %bb71
bb70:
  %t268 = load i32, ptr %l1, !tbaa !23
  call void @__olang_scope_close(ptr %s0)
  store i32 %t268, ptr %rv
  br label %ret
bb71:
  br label %bb72
bb72:
  %t270 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2ector(ptr %s0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t270, ptr %l156
  br label %bb73
bb73:
  %t271 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l156
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t271, ptr %l21
  %t272 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2emergeEntries(ptr %v0, ptr %s0, ptr %s0, ptr %t272, ptr %l5, ptr %l21)
  br label %bb74
bb74:
  %t276 = load ptr, ptr %l0, !tbaa !29
  %t278 = getelementptr %"compiler/generic:Program", ptr %t276, i32 0, i32 2
  store ptr %t278, ptr %l161, !tbaa !29
  %t280 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2eToArray_3ccompiler_2ftypes_3aTypeId_3e(ptr %s0, ptr %s0, ptr %l21)
  store { i64, ptr } %t280, ptr %l163
  br label %bb75
bb75:
  %t281 = load ptr, ptr %l161, !tbaa !29
  %t282 = load { i64, ptr }, ptr %l163, !tbaa !27
  %t283 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eList(ptr %v0, ptr %s0, ptr %t281, { i64, ptr } %t282)
  store i32 %t283, ptr %l164
  br label %bb76
bb76:
  call void @__olang_scope_close(ptr %s0)
  %t284 = load i32, ptr %l164, !tbaa !23
  store i32 %t284, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2etextType(ptr %v0, ptr %a0) #0 {
entry:
  %l2 = alloca i32
  %s0 = alloca %olang.scope
  %rv = alloca i32
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t3 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2epreludeType(ptr %v0, ptr %s0, ptr %s0, ptr %a0, { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d47, i32 0, i32 1) }, { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d48, i32 0, i32 1) })
  store i32 %t3, ptr %l2
  br label %bb1
bb1:
  call void @__olang_scope_close(ptr %s0)
  %t4 = load i32, ptr %l2, !tbaa !23
  store i32 %t4, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local ptr @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2etypeDecl(ptr %v0, ptr %v1, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l4 = alloca ptr
  %l9 = alloca i64
  %l10 = alloca ptr
  %l12 = alloca ptr
  %l17 = alloca i64
  %l18 = alloca %"compiler/names:Entry"
  %rv = alloca ptr
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/generic:Program", ptr %t1, i32 0, i32 1
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t6 = getelementptr %"compiler/names:Resolver", ptr %t4, i32 0, i32 1
  store ptr %t6, ptr %l4, !tbaa !29
  %t7 = load ptr, ptr %l0, !tbaa !29
  %t9 = getelementptr %"compiler/generic:Program", ptr %t7, i32 0, i32 12
  %t10 = load i32, ptr %l1, !tbaa !23
  %t12 = sext i32 %t10 to i64
  %t15 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t9, i64 %t12)
  store i64 %t15, ptr %l9
  br label %bb1
bb1:
  %t16 = load ptr, ptr %l4, !tbaa !29
  %t17 = load i64, ptr %l9, !tbaa !24
  %t18 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fnames_3aTable_26_3e_2_Hc2ccbbc5952c057a60f016e9cc1626d2(ptr %v0, ptr %v0, ptr %t16, i64 %t17)
  store ptr %t18, ptr %l10
  br label %bb2
bb2:
  %t19 = load ptr, ptr %l10, !tbaa !29
  %t21 = getelementptr %"compiler/names:Table", ptr %t19, i32 0, i32 0
  store ptr %t21, ptr %l12, !tbaa !29
  %t22 = load ptr, ptr %l0, !tbaa !29
  %t24 = getelementptr %"compiler/generic:Program", ptr %t22, i32 0, i32 13
  %t25 = load i32, ptr %l1, !tbaa !23
  %t27 = sext i32 %t25 to i64
  %t30 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t24, i64 %t27)
  store i64 %t30, ptr %l17
  br label %bb3
bb3:
  %t31 = load ptr, ptr %l12, !tbaa !29
  %t32 = load i64, ptr %l17, !tbaa !24
  %t33 = call %"compiler/names:Entry" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fnames_3aEntry_3e_2eAt_3ccompiler_2fnames_3aEntry_3e(ptr %v0, ptr %v1, ptr %t31, i64 %t32)
  store %"compiler/names:Entry" %t33, ptr %l18
  br label %bb4
bb4:
  %t34 = getelementptr %"compiler/names:Entry", ptr %l18, i32 0, i32 4
  %t35 = load ptr, ptr %t34, !tbaa !29
  store ptr %t35, ptr %rv
  br label %ret
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

define dso_local i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2etypesOverlap(ptr %v0, ptr %a0, i32 %a1, i32 %a2, i64 %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca i32
  %l3 = alloca i64
  %l4 = alloca i32
  %l5 = alloca i32
  %l6 = alloca { i64, ptr }
  %l7 = alloca { i64, ptr }
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca i64
  %l12 = alloca i64
  %l13 = alloca i64
  %l20 = alloca i32
  %l24 = alloca i32
  %l28 = alloca i1
  %l35 = alloca i1
  %l41 = alloca i1
  %l47 = alloca i32
  %l51 = alloca i32
  %l55 = alloca ptr
  %l59 = alloca i32
  %l60 = alloca { i64, ptr }
  %l62 = alloca ptr
  %l66 = alloca i32
  %l67 = alloca { i64, ptr }
  %l78 = alloca ptr
  %l82 = alloca i32
  %l86 = alloca i32
  %l87 = alloca i1
  %l93 = alloca i64
  %l96 = alloca i64
  %l115 = alloca { i64, ptr }
  %l118 = alloca { i64, ptr }
  %l123 = alloca i1
  %l132 = alloca i1
  %l133 = alloca i1
  %l137 = alloca i1
  %l139 = alloca ptr
  %l143 = alloca i32
  %l147 = alloca i32
  %l148 = alloca i1
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  store i32 %a2, ptr %l2
  store i64 %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load i64, ptr %l3, !tbaa !24
  %t3 = icmp sgt i64 %t1, 32
  br i1 %t3, label %bb1, label %bb2
bb1:
  store i1 true, ptr %rv
  br label %ret
bb2:
  br label %bb3
bb3:
  %t6 = load ptr, ptr %l0, !tbaa !29
  %t8 = getelementptr %"compiler/generic:Program", ptr %t6, i32 0, i32 2
  %t9 = load i32, ptr %l1, !tbaa !23
  %t12 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t8, i32 %t9)
  store i32 %t12, ptr %l20
  br label %bb4
bb4:
  %t13 = load i32, ptr %l20, !range !{i32 0, i32 33}
  store i32 %t13, ptr %l4
  %t14 = load ptr, ptr %l0, !tbaa !29
  %t16 = getelementptr %"compiler/generic:Program", ptr %t14, i32 0, i32 2
  %t17 = load i32, ptr %l2, !tbaa !23
  %t20 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t16, i32 %t17)
  store i32 %t20, ptr %l24
  br label %bb5
bb5:
  %t21 = load i32, ptr %l24, !range !{i32 0, i32 33}
  store i32 %t21, ptr %l5
  %t22 = load i32, ptr %l1, !tbaa !23
  %t23 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t26 = icmp eq i32 %t22, %t23
  br i1 %t26, label %bb6, label %bb7
bb6:
  store i1 true, ptr %l28, !tbaa !21
  br label %bb8
bb7:
  %t28 = load i32, ptr %l2, !tbaa !23
  %t29 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t32 = icmp eq i32 %t28, %t29
  store i1 %t32, ptr %l28, !tbaa !21
  br label %bb8
bb8:
  %t34 = load i1, ptr %l28, !tbaa !21
  br i1 %t34, label %bb9, label %bb10
bb9:
  store i1 false, ptr %rv
  br label %ret
bb10:
  br label %bb11
bb11:
  %t36 = load i32, ptr %l4, !range !{i32 0, i32 33}
  %t38 = trunc i64 25 to i32
  %t39 = icmp eq i32 %t36, %t38
  br i1 %t39, label %bb12, label %bb13
bb12:
  store i1 true, ptr %l35, !tbaa !21
  br label %bb14
bb13:
  %t41 = load i32, ptr %l5, !range !{i32 0, i32 33}
  %t43 = trunc i64 25 to i32
  %t44 = icmp eq i32 %t41, %t43
  store i1 %t44, ptr %l35, !tbaa !21
  br label %bb14
bb14:
  %t46 = load i1, ptr %l35, !tbaa !21
  br i1 %t46, label %bb15, label %bb16
bb15:
  store i1 true, ptr %rv
  br label %ret
bb16:
  br label %bb17
bb17:
  %t48 = load i32, ptr %l4, !range !{i32 0, i32 33}
  %t50 = trunc i64 18 to i32
  %t51 = icmp eq i32 %t48, %t50
  br i1 %t51, label %bb18, label %bb19
bb18:
  %t53 = load i32, ptr %l5, !range !{i32 0, i32 33}
  %t55 = trunc i64 18 to i32
  %t56 = icmp eq i32 %t53, %t55
  store i1 %t56, ptr %l41, !tbaa !21
  br label %bb20
bb19:
  store i1 false, ptr %l41, !tbaa !21
  br label %bb20
bb20:
  %t58 = load i1, ptr %l41, !tbaa !21
  br i1 %t58, label %bb21, label %bb22
bb21:
  %t59 = load ptr, ptr %l0, !tbaa !29
  %t61 = getelementptr %"compiler/generic:Program", ptr %t59, i32 0, i32 2
  %t62 = load i32, ptr %l1, !tbaa !23
  %t65 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %t61, i32 %t62)
  store i32 %t65, ptr %l47
  br label %bb23
bb22:
  br label %bb57
bb23:
  %t66 = load ptr, ptr %l0, !tbaa !29
  %t68 = getelementptr %"compiler/generic:Program", ptr %t66, i32 0, i32 2
  %t69 = load i32, ptr %l2, !tbaa !23
  %t72 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %t68, i32 %t69)
  store i32 %t72, ptr %l51
  br label %bb24
bb24:
  %t73 = load i32, ptr %l47, !tbaa !23
  %t74 = load i32, ptr %l51, !tbaa !23
  %t75 = icmp ne i32 %t73, %t74
  br i1 %t75, label %bb25, label %bb26
bb25:
  store i1 false, ptr %rv
  br label %ret
bb26:
  br label %bb27
bb27:
  %t78 = load ptr, ptr %l0, !tbaa !29
  %t80 = getelementptr %"compiler/generic:Program", ptr %t78, i32 0, i32 2
  store ptr %t80, ptr %l55, !tbaa !29
  %t81 = load ptr, ptr %l0, !tbaa !29
  %t83 = getelementptr %"compiler/generic:Program", ptr %t81, i32 0, i32 2
  %t84 = load i32, ptr %l1, !tbaa !23
  %t87 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eArgs(ptr %v0, ptr %t83, i32 %t84)
  store i32 %t87, ptr %l59
  br label %bb28
bb28:
  %t88 = load ptr, ptr %l55, !tbaa !29
  %t89 = load i32, ptr %l59, !tbaa !23
  %t90 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t88, i32 %t89)
  store { i64, ptr } %t90, ptr %l60
  br label %bb29
bb29:
  %t91 = load { i64, ptr }, ptr %l60, !tbaa !27
  store { i64, ptr } %t91, ptr %l6, !tbaa !27
  %t92 = load ptr, ptr %l0, !tbaa !29
  %t94 = getelementptr %"compiler/generic:Program", ptr %t92, i32 0, i32 2
  store ptr %t94, ptr %l62, !tbaa !29
  %t95 = load ptr, ptr %l0, !tbaa !29
  %t97 = getelementptr %"compiler/generic:Program", ptr %t95, i32 0, i32 2
  %t98 = load i32, ptr %l2, !tbaa !23
  %t101 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eArgs(ptr %v0, ptr %t97, i32 %t98)
  store i32 %t101, ptr %l66
  br label %bb30
bb30:
  %t102 = load ptr, ptr %l62, !tbaa !29
  %t103 = load i32, ptr %l66, !tbaa !23
  %t104 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t102, i32 %t103)
  store { i64, ptr } %t104, ptr %l67
  br label %bb31
bb31:
  %t105 = load { i64, ptr }, ptr %l67, !tbaa !27
  store { i64, ptr } %t105, ptr %l7, !tbaa !27
  %t106 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t108 = extractvalue { i64, ptr } %t106, 0
  %t109 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t111 = extractvalue { i64, ptr } %t109, 0
  %t114 = icmp ne i64 %t108, %t111
  br i1 %t114, label %bb32, label %bb33
bb32:
  store i1 false, ptr %rv
  br label %ret
bb33:
  br label %bb34
bb34:
  %t117 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t119 = extractvalue { i64, ptr } %t117, 0
  %t121 = icmp eq i64 %t119, 0
  br i1 %t121, label %bb35, label %bb36
bb35:
  %t123 = load ptr, ptr %l0, !tbaa !29
  %t125 = getelementptr %"compiler/generic:Program", ptr %t123, i32 0, i32 2
  store ptr %t125, ptr %l78, !tbaa !29
  %t126 = load ptr, ptr %l0, !tbaa !29
  %t128 = getelementptr %"compiler/generic:Program", ptr %t126, i32 0, i32 2
  %t129 = load i32, ptr %l1, !tbaa !23
  %t132 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePlain(ptr %v0, ptr %t128, i32 %t129)
  store i32 %t132, ptr %l82
  br label %bb37
bb36:
  br label %bb40
bb37:
  %t133 = load ptr, ptr %l0, !tbaa !29
  %t135 = getelementptr %"compiler/generic:Program", ptr %t133, i32 0, i32 2
  %t136 = load i32, ptr %l2, !tbaa !23
  %t139 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePlain(ptr %v0, ptr %t135, i32 %t136)
  store i32 %t139, ptr %l86
  br label %bb38
bb38:
  %t140 = load ptr, ptr %l78, !tbaa !29
  %t141 = load i32, ptr %l82, !tbaa !23
  %t142 = load i32, ptr %l86, !tbaa !23
  %t143 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eSame(ptr %v0, ptr %t140, i32 %t141, i32 %t142)
  store i1 %t143, ptr %l87
  br label %bb39
bb39:
  %t144 = load i1, ptr %l87, !tbaa !21
  store i1 %t144, ptr %rv
  br label %ret
bb40:
  store i64 0, ptr %l8, !tbaa !24
  %t145 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t147 = extractvalue { i64, ptr } %t145, 0
  store i64 %t147, ptr %l9, !tbaa !24
  store i64 1, ptr %l10, !tbaa !24
  %t149 = load i64, ptr %l9, !tbaa !24
  %t150 = load i64, ptr %l8, !tbaa !24
  %t153 = icmp sgt i64 %t149, %t150
  br i1 %t153, label %bb41, label %bb42
bb41:
  %t155 = load i64, ptr %l10, !tbaa !24
  %t157 = icmp sgt i64 %t155, 0
  br i1 %t157, label %bb43, label %bb44
bb42:
  store i64 0, ptr %l93, !tbaa !24
  br label %bb46
bb43:
  %t159 = load i64, ptr %l9, !tbaa !24
  %t160 = load i64, ptr %l8, !tbaa !24
  %t163 = sub i64 %t159, %t160
  %t164 = load i64, ptr %l10, !tbaa !24
  %t167 = add i64 %t163, %t164
  %t169 = sub i64 %t167, 1
  %t170 = load i64, ptr %l10, !tbaa !24
  %t173 = sdiv i64 %t169, %t170
  store i64 %t173, ptr %l96, !tbaa !24
  br label %bb45
bb44:
  store i64 0, ptr %l96, !tbaa !24
  br label %bb45
bb45:
  %t175 = load i64, ptr %l96, !tbaa !24
  store i64 %t175, ptr %l93, !tbaa !24
  br label %bb46
bb46:
  %t176 = load i64, ptr %l93, !tbaa !24
  store i64 %t176, ptr %l11, !tbaa !24
  store i64 0, ptr %l12, !tbaa !24
  br label %bb47
bb47:
  %t177 = load i64, ptr %l12, !tbaa !24
  %t178 = load i64, ptr %l11, !tbaa !24
  %t181 = icmp slt i64 %t177, %t178
  %t183 = xor i1 %t181, true
  br i1 %t183, label %bb48, label %bb49
bb48:
  br label %bb56
bb49:
  br label %bb50
bb50:
  %t185 = load i64, ptr %l8, !tbaa !24
  %t186 = load i64, ptr %l12, !tbaa !24
  %t187 = load i64, ptr %l10, !tbaa !24
  %t190 = mul i64 %t186, %t187
  %t193 = add i64 %t185, %t190
  store i64 %t193, ptr %l13, !tbaa !24
  %t195 = load ptr, ptr %l0, !tbaa !29
  %t196 = load { i64, ptr }, ptr %l6, !tbaa !27
  store { i64, ptr } %t196, ptr %l115, !tbaa !27
  %t197 = load i64, ptr %l13, !tbaa !24
  %t199 = getelementptr { i64, ptr }, ptr %l115, i32 0, i32 1
  %t200 = load ptr, ptr %t199, !tbaa !27
  %t201 = getelementptr i32, ptr %t200, i64 %t197
  %t202 = load i32, ptr %t201, !tbaa !33
  %t203 = load { i64, ptr }, ptr %l7, !tbaa !27
  store { i64, ptr } %t203, ptr %l118, !tbaa !27
  %t204 = load i64, ptr %l13, !tbaa !24
  %t206 = getelementptr { i64, ptr }, ptr %l118, i32 0, i32 1
  %t207 = load ptr, ptr %t206, !tbaa !27
  %t208 = getelementptr i32, ptr %t207, i64 %t204
  %t209 = load i32, ptr %t208, !tbaa !33
  %t210 = load i64, ptr %l3, !tbaa !24
  %t212 = add i64 %t210, 1
  %t217 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2etypesOverlap(ptr %v0, ptr %t195, i32 %t202, i32 %t209, i64 %t212)
  store i1 %t217, ptr %l123
  br label %bb51
bb51:
  %t218 = load i1, ptr %l123, !tbaa !21
  %t219 = xor i1 %t218, true
  br i1 %t219, label %bb52, label %bb53
bb52:
  store i1 false, ptr %rv
  br label %ret
bb53:
  br label %bb54
bb54:
  br label %bb55
bb55:
  %t222 = load i64, ptr %l12, !tbaa !24
  %t224 = add i64 %t222, 1
  store i64 %t224, ptr %l12, !tbaa !24
  br label %bb47
bb56:
  store i1 true, ptr %rv
  br label %ret
bb57:
  %t227 = load ptr, ptr %l0, !tbaa !29
  %t229 = getelementptr %"compiler/generic:Program", ptr %t227, i32 0, i32 2
  %t230 = load i32, ptr %l1, !tbaa !23
  %t233 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eClosed(ptr %v0, ptr %t229, i32 %t230)
  store i1 %t233, ptr %l132
  br label %bb58
bb58:
  %t234 = load i1, ptr %l132, !tbaa !21
  br i1 %t234, label %bb59, label %bb60
bb59:
  %t235 = load ptr, ptr %l0, !tbaa !29
  %t237 = getelementptr %"compiler/generic:Program", ptr %t235, i32 0, i32 2
  %t238 = load i32, ptr %l2, !tbaa !23
  %t241 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eClosed(ptr %v0, ptr %t237, i32 %t238)
  store i1 %t241, ptr %l137
  br label %bb61
bb60:
  store i1 false, ptr %l133, !tbaa !21
  br label %bb62
bb61:
  %t242 = load i1, ptr %l137, !tbaa !21
  store i1 %t242, ptr %l133, !tbaa !21
  br label %bb62
bb62:
  %t243 = load i1, ptr %l133, !tbaa !21
  br i1 %t243, label %bb63, label %bb64
bb63:
  %t244 = load ptr, ptr %l0, !tbaa !29
  %t246 = getelementptr %"compiler/generic:Program", ptr %t244, i32 0, i32 2
  store ptr %t246, ptr %l139, !tbaa !29
  %t247 = load ptr, ptr %l0, !tbaa !29
  %t249 = getelementptr %"compiler/generic:Program", ptr %t247, i32 0, i32 2
  %t250 = load i32, ptr %l1, !tbaa !23
  %t253 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePlain(ptr %v0, ptr %t249, i32 %t250)
  store i32 %t253, ptr %l143
  br label %bb65
bb64:
  br label %bb68
bb65:
  %t254 = load ptr, ptr %l0, !tbaa !29
  %t256 = getelementptr %"compiler/generic:Program", ptr %t254, i32 0, i32 2
  %t257 = load i32, ptr %l2, !tbaa !23
  %t260 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePlain(ptr %v0, ptr %t256, i32 %t257)
  store i32 %t260, ptr %l147
  br label %bb66
bb66:
  %t261 = load ptr, ptr %l139, !tbaa !29
  %t262 = load i32, ptr %l143, !tbaa !23
  %t263 = load i32, ptr %l147, !tbaa !23
  %t264 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eSame(ptr %v0, ptr %t261, i32 %t262, i32 %t263)
  store i1 %t264, ptr %l148
  br label %bb67
bb67:
  %t265 = load i1, ptr %l148, !tbaa !21
  store i1 %t265, ptr %rv
  br label %ret
bb68:
  store i1 true, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eunended(ptr %v0, ptr %v1, ptr %a0, i32 %a1, ptr %a2, i64 %a3, i1 %a4) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca i64
  %l4 = alloca i1
  %l5 = alloca i32
  %l6 = alloca i32
  %l13 = alloca i32
  %l17 = alloca i32
  %l18 = alloca i32
  %l21 = alloca ptr
  %l25 = alloca i32
  %l29 = alloca i32
  %l33 = alloca i1
  %l37 = alloca i32
  %l39 = alloca i1
  %l41 = alloca ptr
  %l45 = alloca i32
  %l46 = alloca i1
  %l47 = alloca i32
  %l51 = alloca i32
  %l52 = alloca ptr
  %l56 = alloca i32
  %l61 = alloca i32
  %l66 = alloca ptr
  %l68 = alloca ptr
  %l72 = alloca i32
  %l73 = alloca { i64, ptr }
  %l77 = alloca i32
  %l80 = alloca ptr
  %l82 = alloca ptr
  %l86 = alloca i32
  %l87 = alloca { i64, ptr }
  %l91 = alloca i32
  %l99 = alloca i32
  %rv = alloca i32
  store ptr %a0, ptr %l0
  store ptr %a2, ptr %l2
  store i64 %a3, ptr %l3
  store i1 %a4, ptr %l4
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load i64, ptr %l3, !tbaa !24
  %t3 = icmp sgt i64 %t1, 32
  br i1 %t3, label %bb1, label %bb2
bb1:
  %t5 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  store i32 %t5, ptr %rv
  br label %ret
bb2:
  br label %bb3
bb3:
  %t7 = load ptr, ptr %l0, !tbaa !29
  %t9 = getelementptr %"compiler/generic:Program", ptr %t7, i32 0, i32 2
  %t13 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %v0, ptr %t9, i32 %a1)
  store i32 %t13, ptr %l13
  br label %bb4
bb4:
  %t14 = load i32, ptr %l13, !tbaa !23
  store i32 %t14, ptr %l5, !tbaa !23
  %t15 = load ptr, ptr %l0, !tbaa !29
  %t17 = getelementptr %"compiler/generic:Program", ptr %t15, i32 0, i32 2
  %t18 = load i32, ptr %l5, !tbaa !23
  %t21 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t17, i32 %t18)
  store i32 %t21, ptr %l17
  br label %bb5
bb5:
  %t22 = load i32, ptr %l17, !range !{i32 0, i32 33}
  store i32 %t22, ptr %l6
  %t23 = load i32, ptr %l6, !range !{i32 0, i32 33}
  %t25 = trunc i64 20 to i32
  %t26 = icmp eq i32 %t23, %t25
  br i1 %t26, label %bb6, label %bb7
bb6:
  br label %bb8
bb7:
  br label %bb11
bb8:
  %t28 = load ptr, ptr %l0, !tbaa !29
  store ptr %t28, ptr %l21, !tbaa !29
  %t29 = load ptr, ptr %l0, !tbaa !29
  %t31 = getelementptr %"compiler/generic:Program", ptr %t29, i32 0, i32 2
  %t32 = load i32, ptr %l5, !tbaa !23
  %t35 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eReferent(ptr %v0, ptr %t31, i32 %t32)
  store i32 %t35, ptr %l25
  br label %bb9
bb9:
  %t36 = load ptr, ptr %l2, !tbaa !29
  %t37 = load i64, ptr %l3, !tbaa !24
  %t39 = add i64 %t37, 1
  %t40 = load ptr, ptr %l21, !tbaa !29
  %t41 = load i32, ptr %l25, !tbaa !23
  %t44 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eunended(ptr %v0, ptr %v1, ptr %t40, i32 %t41, ptr %t36, i64 %t39, i1 true)
  store i32 %t44, ptr %l29
  br label %bb10
bb10:
  %t45 = load i32, ptr %l29, !tbaa !23
  store i32 %t45, ptr %l18, !tbaa !23
  br label %bb56
bb11:
  %t46 = load i32, ptr %l6, !range !{i32 0, i32 33}
  %t48 = trunc i64 19 to i32
  %t49 = icmp eq i32 %t46, %t48
  br i1 %t49, label %bb12, label %bb13
bb12:
  br label %bb14
bb13:
  br label %bb30
bb14:
  %t51 = load i1, ptr %l4, !tbaa !21
  br i1 %t51, label %bb15, label %bb16
bb15:
  %t53 = load ptr, ptr %l0, !tbaa !29
  %t55 = getelementptr %"compiler/generic:Program", ptr %t53, i32 0, i32 2
  %t56 = load i32, ptr %l5, !tbaa !23
  %t59 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eLength(ptr %v0, ptr %t55, i32 %t56)
  store i32 %t59, ptr %l37
  br label %bb17
bb16:
  store i1 false, ptr %l33, !tbaa !21
  br label %bb18
bb17:
  %t60 = load i32, ptr %l37, !tbaa !23
  %t61 = icmp eq i32 %t60, 0
  store i1 %t61, ptr %l33, !tbaa !21
  br label %bb18
bb18:
  %t63 = load i1, ptr %l33, !tbaa !21
  br i1 %t63, label %bb19, label %bb20
bb19:
  %t64 = load ptr, ptr %l0, !tbaa !29
  %t66 = getelementptr %"compiler/generic:Program", ptr %t64, i32 0, i32 2
  store ptr %t66, ptr %l41, !tbaa !29
  %t67 = load ptr, ptr %l0, !tbaa !29
  %t69 = getelementptr %"compiler/generic:Program", ptr %t67, i32 0, i32 2
  %t70 = load i32, ptr %l5, !tbaa !23
  %t73 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eElem(ptr %v0, ptr %t69, i32 %t70)
  store i32 %t73, ptr %l45
  br label %bb21
bb20:
  store i1 false, ptr %l39, !tbaa !21
  br label %bb23
bb21:
  %t74 = load ptr, ptr %l41, !tbaa !29
  %t75 = load i32, ptr %l45, !tbaa !23
  %t76 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eNeedsDrop(ptr %v0, ptr %t74, i32 %t75)
  store i1 %t76, ptr %l46
  br label %bb22
bb22:
  %t77 = load i1, ptr %l46, !tbaa !21
  store i1 %t77, ptr %l39, !tbaa !21
  br label %bb23
bb23:
  %t78 = load i1, ptr %l39, !tbaa !21
  br i1 %t78, label %bb24, label %bb25
bb24:
  %t79 = load ptr, ptr %l0, !tbaa !29
  %t81 = getelementptr %"compiler/generic:Program", ptr %t79, i32 0, i32 2
  %t82 = load i32, ptr %l5, !tbaa !23
  %t85 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eElem(ptr %v0, ptr %t81, i32 %t82)
  store i32 %t85, ptr %l51
  br label %bb26
bb25:
  %t86 = load ptr, ptr %l0, !tbaa !29
  store ptr %t86, ptr %l52, !tbaa !29
  %t87 = load ptr, ptr %l0, !tbaa !29
  %t89 = getelementptr %"compiler/generic:Program", ptr %t87, i32 0, i32 2
  %t90 = load i32, ptr %l5, !tbaa !23
  %t93 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eElem(ptr %v0, ptr %t89, i32 %t90)
  store i32 %t93, ptr %l56
  br label %bb27
bb26:
  %t94 = load i32, ptr %l51, !tbaa !23
  store i32 %t94, ptr %l47, !tbaa !23
  br label %bb29
bb27:
  %t95 = load ptr, ptr %l2, !tbaa !29
  %t96 = load i64, ptr %l3, !tbaa !24
  %t98 = add i64 %t96, 1
  %t99 = load i1, ptr %l4, !tbaa !21
  %t100 = load ptr, ptr %l52, !tbaa !29
  %t101 = load i32, ptr %l56, !tbaa !23
  %t105 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eunended(ptr %v0, ptr %v1, ptr %t100, i32 %t101, ptr %t95, i64 %t98, i1 %t99)
  store i32 %t105, ptr %l61
  br label %bb28
bb28:
  %t106 = load i32, ptr %l61, !tbaa !23
  store i32 %t106, ptr %l47, !tbaa !23
  br label %bb29
bb29:
  %t107 = load i32, ptr %l47, !tbaa !23
  store i32 %t107, ptr %l18, !tbaa !23
  br label %bb56
bb30:
  %t108 = load i32, ptr %l6, !range !{i32 0, i32 33}
  %t110 = trunc i64 23 to i32
  %t111 = icmp eq i32 %t108, %t110
  br i1 %t111, label %bb31, label %bb32
bb31:
  br label %bb35
bb32:
  %t113 = load i32, ptr %l6, !range !{i32 0, i32 33}
  %t115 = trunc i64 22 to i32
  %t116 = icmp eq i32 %t113, %t115
  br i1 %t116, label %bb33, label %bb34
bb33:
  br label %bb35
bb34:
  br label %bb39
bb35:
  %t118 = load ptr, ptr %l0, !tbaa !29
  store ptr %t118, ptr %l66, !tbaa !29
  %t119 = load ptr, ptr %l0, !tbaa !29
  %t121 = getelementptr %"compiler/generic:Program", ptr %t119, i32 0, i32 2
  store ptr %t121, ptr %l68, !tbaa !29
  %t122 = load ptr, ptr %l0, !tbaa !29
  %t124 = getelementptr %"compiler/generic:Program", ptr %t122, i32 0, i32 2
  %t125 = load i32, ptr %l5, !tbaa !23
  %t128 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParts(ptr %v0, ptr %t124, i32 %t125)
  store i32 %t128, ptr %l72
  br label %bb36
bb36:
  %t129 = load ptr, ptr %l68, !tbaa !29
  %t130 = load i32, ptr %l72, !tbaa !23
  %t131 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t129, i32 %t130)
  store { i64, ptr } %t131, ptr %l73
  br label %bb37
bb37:
  %t132 = load ptr, ptr %l2, !tbaa !29
  %t133 = load i64, ptr %l3, !tbaa !24
  %t134 = load i1, ptr %l4, !tbaa !21
  %t135 = load ptr, ptr %l66, !tbaa !29
  %t136 = load { i64, ptr }, ptr %l73, !tbaa !27
  %t140 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eunendedIn(ptr %v0, ptr %v0, ptr %v1, ptr %t135, { i64, ptr } %t136, ptr %t132, i64 %t133, i1 %t134)
  store i32 %t140, ptr %l77
  br label %bb38
bb38:
  %t141 = load i32, ptr %l77, !tbaa !23
  store i32 %t141, ptr %l18, !tbaa !23
  br label %bb56
bb39:
  %t142 = load i32, ptr %l6, !range !{i32 0, i32 33}
  %t144 = trunc i64 24 to i32
  %t145 = icmp eq i32 %t142, %t144
  br i1 %t145, label %bb40, label %bb41
bb40:
  br label %bb42
bb41:
  br label %bb46
bb42:
  %t147 = load ptr, ptr %l0, !tbaa !29
  store ptr %t147, ptr %l80, !tbaa !29
  %t148 = load ptr, ptr %l0, !tbaa !29
  %t150 = getelementptr %"compiler/generic:Program", ptr %t148, i32 0, i32 2
  store ptr %t150, ptr %l82, !tbaa !29
  %t151 = load ptr, ptr %l0, !tbaa !29
  %t153 = getelementptr %"compiler/generic:Program", ptr %t151, i32 0, i32 2
  %t154 = load i32, ptr %l5, !tbaa !23
  %t157 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eShapeCases(ptr %v0, ptr %t153, i32 %t154)
  store i32 %t157, ptr %l86
  br label %bb43
bb43:
  %t158 = load ptr, ptr %l82, !tbaa !29
  %t159 = load i32, ptr %l86, !tbaa !23
  %t160 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t158, i32 %t159)
  store { i64, ptr } %t160, ptr %l87
  br label %bb44
bb44:
  %t161 = load ptr, ptr %l2, !tbaa !29
  %t162 = load i64, ptr %l3, !tbaa !24
  %t163 = load i1, ptr %l4, !tbaa !21
  %t164 = load ptr, ptr %l80, !tbaa !29
  %t165 = load { i64, ptr }, ptr %l87, !tbaa !27
  %t169 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eunendedIn(ptr %v0, ptr %v0, ptr %v1, ptr %t164, { i64, ptr } %t165, ptr %t161, i64 %t162, i1 %t163)
  store i32 %t169, ptr %l91
  br label %bb45
bb45:
  %t170 = load i32, ptr %l91, !tbaa !23
  store i32 %t170, ptr %l18, !tbaa !23
  br label %bb56
bb46:
  %t171 = load i32, ptr %l6, !range !{i32 0, i32 33}
  %t173 = trunc i64 18 to i32
  %t174 = icmp eq i32 %t171, %t173
  br i1 %t174, label %bb47, label %bb48
bb47:
  br label %bb49
bb48:
  br label %bb51
bb49:
  %t176 = load ptr, ptr %l0, !tbaa !29
  %t177 = load i32, ptr %l5, !tbaa !23
  %t178 = load ptr, ptr %l2, !tbaa !29
  %t179 = load i64, ptr %l3, !tbaa !24
  %t180 = load i1, ptr %l4, !tbaa !21
  %t186 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eunendedNamed(ptr %v0, ptr %v1, ptr %t176, i32 %t177, ptr %t178, i64 %t179, i1 %t180)
  store i32 %t186, ptr %l99
  br label %bb50
bb50:
  %t187 = load i32, ptr %l99, !tbaa !23
  store i32 %t187, ptr %l18, !tbaa !23
  br label %bb56
bb51:
  br i1 true, label %bb52, label %bb53
bb52:
  br label %bb54
bb53:
  br label %bb55
bb54:
  %t188 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  store i32 %t188, ptr %l18, !tbaa !23
  br label %bb56
bb55:
  call void @__olang_check_failed(ptr @olang_loc_e6b22f697499a1dd_b3ee10b0849b47b1)
  unreachable
bb56:
  %t190 = load i32, ptr %l18, !tbaa !23
  store i32 %t190, ptr %rv
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

define dso_local i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2ewide(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l5 = alloca i1
  %l7 = alloca ptr
  %l10 = alloca i32
  %l11 = alloca i64
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load i32, ptr %l1, !tbaa !23
  %t2 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t5 = icmp ne i32 %t1, %t2
  br i1 %t5, label %bb1, label %bb2
bb1:
  %t7 = load ptr, ptr %l0, !tbaa !29
  %t9 = getelementptr %"compiler/generic:Program", ptr %t7, i32 0, i32 2
  store ptr %t9, ptr %l7, !tbaa !29
  %t10 = load ptr, ptr %l0, !tbaa !29
  %t11 = load i32, ptr %l1, !tbaa !23
  %t14 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2enumberOf(ptr %v0, ptr %t10, i32 %t11)
  store i32 %t14, ptr %l10
  br label %bb3
bb2:
  store i1 false, ptr %l5, !tbaa !21
  br label %bb5
bb3:
  %t15 = load ptr, ptr %l7, !tbaa !29
  %t16 = load i32, ptr %l10, !tbaa !23
  %t17 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eBits(ptr %v0, ptr %t15, i32 %t16)
  store i64 %t17, ptr %l11
  br label %bb4
bb4:
  %t18 = load i64, ptr %l11, !tbaa !24
  %t19 = icmp sgt i64 %t18, 64
  store i1 %t19, ptr %l5, !tbaa !21
  br label %bb5
bb5:
  %t21 = load i1, ptr %l5, !tbaa !21
  store i1 %t21, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2ewrap(ptr %v0, ptr %a0, i64 %a1, i32 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l3 = alloca i32
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l9 = alloca i32
  %l13 = alloca i1
  %l19 = alloca i64
  %l23 = alloca i64
  %l32 = alloca i1
  %l34 = alloca i1
  %l37 = alloca i64
  %rv = alloca i64
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t5 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2enumberOf(ptr %v0, ptr %t1, i32 %a2)
  store i32 %t5, ptr %l9
  br label %bb1
bb1:
  %t6 = load i32, ptr %l9, !tbaa !23
  store i32 %t6, ptr %l3, !tbaa !23
  %t7 = load ptr, ptr %l0, !tbaa !29
  %t9 = getelementptr %"compiler/generic:Program", ptr %t7, i32 0, i32 2
  %t10 = load i32, ptr %l3, !tbaa !23
  %t13 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsInt(ptr %v0, ptr %t9, i32 %t10)
  store i1 %t13, ptr %l13
  br label %bb2
bb2:
  %t14 = load i1, ptr %l13, !tbaa !21
  %t15 = xor i1 %t14, true
  br i1 %t15, label %bb3, label %bb4
bb3:
  %t17 = load i64, ptr %l1, !tbaa !24
  store i64 %t17, ptr %rv
  br label %ret
bb4:
  br label %bb5
bb5:
  %t19 = load ptr, ptr %l0, !tbaa !29
  %t21 = getelementptr %"compiler/generic:Program", ptr %t19, i32 0, i32 2
  %t22 = load i32, ptr %l3, !tbaa !23
  %t25 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eBits(ptr %v0, ptr %t21, i32 %t22)
  store i64 %t25, ptr %l19
  br label %bb6
bb6:
  %t26 = load i64, ptr %l19, !tbaa !24
  store i64 %t26, ptr %l4, !tbaa !24
  %t27 = load i64, ptr %l4, !tbaa !24
  %t29 = icmp sge i64 %t27, 64
  br i1 %t29, label %bb7, label %bb8
bb7:
  %t31 = load i64, ptr %l1, !tbaa !24
  store i64 %t31, ptr %rv
  br label %ret
bb8:
  br label %bb9
bb9:
  %t33 = load i64, ptr %l4, !tbaa !24
  store i64 %t33, ptr %l23, !tbaa !24
  %t34 = load i64, ptr %l23, !tbaa !24
  %t35 = load i64, ptr %l23, !tbaa !24
  %t36 = shl i64 1, %t35
  %t38 = sub i64 %t36, 1
  store i64 %t38, ptr %l5, !tbaa !24
  %t40 = load i64, ptr %l1, !tbaa !24
  %t41 = load i64, ptr %l5, !tbaa !24
  %t44 = and i64 %t40, %t41
  store i64 %t44, ptr %l6, !tbaa !24
  %t46 = load ptr, ptr %l0, !tbaa !29
  %t48 = getelementptr %"compiler/generic:Program", ptr %t46, i32 0, i32 2
  %t49 = load i32, ptr %l3, !tbaa !23
  %t52 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsUnsigned(ptr %v0, ptr %t48, i32 %t49)
  store i1 %t52, ptr %l32
  br label %bb10
bb10:
  %t53 = load i1, ptr %l32, !tbaa !21
  %t54 = xor i1 %t53, true
  br i1 %t54, label %bb11, label %bb12
bb11:
  %t56 = load i64, ptr %l6, !tbaa !24
  %t57 = load i64, ptr %l4, !tbaa !24
  %t59 = sub i64 %t57, 1
  store i64 %t59, ptr %l37, !tbaa !24
  %t61 = load i64, ptr %l37, !tbaa !24
  %t62 = load i64, ptr %l37, !tbaa !24
  %t63 = ashr i64 %t56, %t62
  %t65 = and i64 %t63, 1
  %t67 = icmp eq i64 %t65, 1
  store i1 %t67, ptr %l34, !tbaa !21
  br label %bb13
bb12:
  store i1 false, ptr %l34, !tbaa !21
  br label %bb13
bb13:
  %t69 = load i1, ptr %l34, !tbaa !21
  br i1 %t69, label %bb14, label %bb15
bb14:
  %t70 = load i64, ptr %l6, !tbaa !24
  %t71 = load i64, ptr %l5, !tbaa !24
  %t73 = xor i64 %t71, -1
  %t76 = or i64 %t70, %t73
  store i64 %t76, ptr %l6, !tbaa !24
  br label %bb16
bb15:
  br label %bb16
bb16:
  %t78 = load i64, ptr %l6, !tbaa !24
  store i64 %t78, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3agenRoots_2ecallRoot(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca i64
  %l4 = alloca ptr
  %l5 = alloca i1
  %l13 = alloca i64
  %rv = alloca i64
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l1, !tbaa !29
  store ptr %t1, ptr %l4, !tbaa !29
  store i1 false, ptr %l5, !tbaa !21
  %t2 = load ptr, ptr %l4, !tbaa !29
  %t3 = icmp ne ptr %t2, null
  br i1 %t3, label %bb1, label %bb2
bb1:
  %t5 = load ptr, ptr %l4, !tbaa !29
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 30}
  %t8 = icmp eq i64 %t6, 14
  store i1 %t8, ptr %l5, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l5, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  %t10 = load ptr, ptr %l1, !tbaa !29
  %t12 = getelementptr { i64, [4 x i64] }, ptr %t10, i32 0, i32 1
  %t13 = getelementptr { %"compiler/source:Span", ptr, i32 }, ptr %t12, i32 0, i32 1
  %t14 = load ptr, ptr %t13
  store ptr %t14, ptr %l2, !tbaa !29
  br label %bb5
bb4:
  br label %bb7
bb5:
  %t17 = load ptr, ptr %l2, !tbaa !29
  %t21 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3agenRoots_2eroot(ptr %v0, ptr %v1, ptr %a0, ptr %t17)
  store i64 %t21, ptr %l13
  br label %bb6
bb6:
  %t22 = load i64, ptr %l13, !tbaa !24
  store i64 %t22, ptr %l3, !tbaa !24
  br label %bb12
bb7:
  br i1 true, label %bb8, label %bb9
bb8:
  br label %bb10
bb9:
  br label %bb11
bb10:
  store i64 0, ptr %l3, !tbaa !24
  br label %bb12
bb11:
  call void @__olang_check_failed(ptr @olang_loc_5dbf3bacf45043d5_48a0238198051071)
  unreachable
bb12:
  %t23 = load i64, ptr %l3, !tbaa !24
  store i64 %t23, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local void @compiler_2fgeneric_2ecompiler_2fgeneric_3agenRoots_2einner(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca { i64, ptr }
  %l3 = alloca ptr
  %l4 = alloca ptr
  %l5 = alloca { i64, ptr }
  %l6 = alloca { i64, ptr }
  %l7 = alloca i64
  %l8 = alloca i64
  %l10 = alloca ptr
  %l11 = alloca ptr
  %l12 = alloca { i64, ptr }
  %l13 = alloca i64
  %l14 = alloca i64
  %l16 = alloca ptr
  %l17 = alloca i1
  %l22 = alloca ptr
  %l23 = alloca i1
  %l28 = alloca ptr
  %l29 = alloca i1
  %l34 = alloca ptr
  %l35 = alloca i1
  %l42 = alloca ptr
  %l43 = alloca i1
  %l59 = alloca ptr
  %l60 = alloca i1
  %l77 = alloca { i64, ptr }
  %l85 = alloca ptr
  %l86 = alloca i1
  %l94 = alloca ptr
  %l95 = alloca i1
  %l111 = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l1, !tbaa !29
  store ptr %t1, ptr %l16, !tbaa !29
  store i1 false, ptr %l17, !tbaa !21
  %t2 = load ptr, ptr %l16, !tbaa !29
  %t3 = icmp ne ptr %t2, null
  br i1 %t3, label %bb1, label %bb2
bb1:
  %t5 = load ptr, ptr %l16, !tbaa !29
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 22}
  %t8 = icmp eq i64 %t6, 6
  store i1 %t8, ptr %l17, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l17, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  %t10 = load ptr, ptr %l1, !tbaa !29
  %t12 = getelementptr { i64, [4 x i64] }, ptr %t10, i32 0, i32 1
  %t13 = getelementptr { %"compiler/source:Span", { i64, ptr } }, ptr %t12, i32 0, i32 1
  %t14 = load { i64, ptr }, ptr %t13
  store { i64, ptr } %t14, ptr %l2, !tbaa !27
  br label %bb17
bb4:
  %t16 = load ptr, ptr %l1, !tbaa !29
  store ptr %t16, ptr %l22, !tbaa !29
  store i1 false, ptr %l23, !tbaa !21
  %t17 = load ptr, ptr %l22, !tbaa !29
  %t18 = icmp ne ptr %t17, null
  br i1 %t18, label %bb5, label %bb6
bb5:
  %t20 = load ptr, ptr %l22, !tbaa !29
  %t21 = load i64, ptr %t20, !range !{i64 0, i64 22}
  %t23 = icmp eq i64 %t21, 20
  store i1 %t23, ptr %l23, !tbaa !21
  br label %bb6
bb6:
  %t24 = load i1, ptr %l23, !tbaa !21
  br i1 %t24, label %bb7, label %bb8
bb7:
  %t25 = load ptr, ptr %l1, !tbaa !29
  %t27 = getelementptr { i64, [4 x i64] }, ptr %t25, i32 0, i32 1
  %t28 = getelementptr { %"compiler/source:Span", { i64, ptr } }, ptr %t27, i32 0, i32 1
  %t29 = load { i64, ptr }, ptr %t28
  store { i64, ptr } %t29, ptr %l2, !tbaa !27
  br label %bb17
bb8:
  %t31 = load ptr, ptr %l1, !tbaa !29
  store ptr %t31, ptr %l28, !tbaa !29
  store i1 false, ptr %l29, !tbaa !21
  %t32 = load ptr, ptr %l28, !tbaa !29
  %t33 = icmp ne ptr %t32, null
  br i1 %t33, label %bb9, label %bb10
bb9:
  %t35 = load ptr, ptr %l28, !tbaa !29
  %t36 = load i64, ptr %t35, !range !{i64 0, i64 22}
  %t38 = icmp eq i64 %t36, 7
  store i1 %t38, ptr %l29, !tbaa !21
  br label %bb10
bb10:
  %t39 = load i1, ptr %l29, !tbaa !21
  br i1 %t39, label %bb11, label %bb12
bb11:
  %t40 = load ptr, ptr %l1, !tbaa !29
  %t42 = getelementptr { i64, [4 x i64] }, ptr %t40, i32 0, i32 1
  %t43 = getelementptr { %"compiler/source:Span", ptr, { i64, ptr } }, ptr %t42, i32 0, i32 2
  %t44 = load { i64, ptr }, ptr %t43
  store { i64, ptr } %t44, ptr %l2, !tbaa !27
  br label %bb17
bb12:
  %t46 = load ptr, ptr %l1, !tbaa !29
  store ptr %t46, ptr %l34, !tbaa !29
  store i1 false, ptr %l35, !tbaa !21
  %t47 = load ptr, ptr %l34, !tbaa !29
  %t48 = icmp ne ptr %t47, null
  br i1 %t48, label %bb13, label %bb14
bb13:
  %t50 = load ptr, ptr %l34, !tbaa !29
  %t51 = load i64, ptr %t50, !range !{i64 0, i64 22}
  %t53 = icmp eq i64 %t51, 10
  store i1 %t53, ptr %l35, !tbaa !21
  br label %bb14
bb14:
  %t54 = load i1, ptr %l35, !tbaa !21
  br i1 %t54, label %bb15, label %bb16
bb15:
  %t55 = load ptr, ptr %l1, !tbaa !29
  %t57 = getelementptr { i64, [4 x i64] }, ptr %t55, i32 0, i32 1
  %t58 = getelementptr { %"compiler/source:Span", { i64, ptr }, ptr }, ptr %t57, i32 0, i32 1
  %t59 = load { i64, ptr }, ptr %t58
  store { i64, ptr } %t59, ptr %l2, !tbaa !27
  br label %bb17
bb16:
  br label %bb19
bb17:
  %t61 = load ptr, ptr %l0, !tbaa !29
  %t62 = load { i64, ptr }, ptr %l2, !tbaa !27
  call void @compiler_2fgeneric_2ecompiler_2fgeneric_3agenRoots_2estmts(ptr %v0, ptr %v1, ptr %t61, { i64, ptr } %t62)
  br label %bb18
bb18:
  br label %bb68
bb19:
  %t65 = load ptr, ptr %l1, !tbaa !29
  store ptr %t65, ptr %l42, !tbaa !29
  store i1 false, ptr %l43, !tbaa !21
  %t66 = load ptr, ptr %l42, !tbaa !29
  %t67 = icmp ne ptr %t66, null
  br i1 %t67, label %bb20, label %bb21
bb20:
  %t69 = load ptr, ptr %l42, !tbaa !29
  %t70 = load i64, ptr %t69, !range !{i64 0, i64 22}
  %t72 = icmp eq i64 %t70, 8
  store i1 %t72, ptr %l43, !tbaa !21
  br label %bb21
bb21:
  %t73 = load i1, ptr %l43, !tbaa !21
  br i1 %t73, label %bb22, label %bb23
bb22:
  %t74 = load ptr, ptr %l1, !tbaa !29
  %t76 = getelementptr { i64, [4 x i64] }, ptr %t74, i32 0, i32 1
  %t77 = getelementptr { %"compiler/source:Span", ptr }, ptr %t76, i32 0, i32 1
  %t78 = load ptr, ptr %t77
  store ptr %t78, ptr %l3, !tbaa !29
  br label %bb24
bb23:
  br label %bb28
bb24:
  %t80 = load ptr, ptr %l0, !tbaa !29
  %t81 = load ptr, ptr %l3, !tbaa !29
  %t83 = getelementptr %"compiler/ast:For3", ptr %t81, i32 0, i32 0
  %t84 = load ptr, ptr %t83, !tbaa !29
  call void @compiler_2fgeneric_2ecompiler_2fgeneric_3agenRoots_2estmt(ptr %v0, ptr %v1, ptr %t80, ptr %t84)
  br label %bb25
bb25:
  %t88 = load ptr, ptr %l0, !tbaa !29
  %t89 = load ptr, ptr %l3, !tbaa !29
  %t91 = getelementptr %"compiler/ast:For3", ptr %t89, i32 0, i32 2
  %t92 = load ptr, ptr %t91, !tbaa !29
  call void @compiler_2fgeneric_2ecompiler_2fgeneric_3agenRoots_2estmt(ptr %v0, ptr %v1, ptr %t88, ptr %t92)
  br label %bb26
bb26:
  %t96 = load ptr, ptr %l0, !tbaa !29
  %t97 = load ptr, ptr %l3, !tbaa !29
  %t99 = getelementptr %"compiler/ast:For3", ptr %t97, i32 0, i32 3
  %t100 = load { i64, ptr }, ptr %t99, !tbaa !27
  call void @compiler_2fgeneric_2ecompiler_2fgeneric_3agenRoots_2estmts(ptr %v0, ptr %v1, ptr %t96, { i64, ptr } %t100)
  br label %bb27
bb27:
  br label %bb68
bb28:
  %t103 = load ptr, ptr %l1, !tbaa !29
  store ptr %t103, ptr %l59, !tbaa !29
  store i1 false, ptr %l60, !tbaa !21
  %t104 = load ptr, ptr %l59, !tbaa !29
  %t105 = icmp ne ptr %t104, null
  br i1 %t105, label %bb29, label %bb30
bb29:
  %t107 = load ptr, ptr %l59, !tbaa !29
  %t108 = load i64, ptr %t107, !range !{i64 0, i64 22}
  %t110 = icmp eq i64 %t108, 4
  store i1 %t110, ptr %l60, !tbaa !21
  br label %bb30
bb30:
  %t111 = load i1, ptr %l60, !tbaa !21
  br i1 %t111, label %bb31, label %bb32
bb31:
  %t112 = load ptr, ptr %l1, !tbaa !29
  %t114 = getelementptr { i64, [4 x i64] }, ptr %t112, i32 0, i32 1
  %t115 = getelementptr { %"compiler/source:Span", ptr, { i64, ptr } }, ptr %t114, i32 0, i32 1
  %t116 = load ptr, ptr %t115
  store ptr %t116, ptr %l4, !tbaa !29
  %t118 = load ptr, ptr %l1, !tbaa !29
  %t120 = getelementptr { i64, [4 x i64] }, ptr %t118, i32 0, i32 1
  %t121 = getelementptr { %"compiler/source:Span", ptr, { i64, ptr } }, ptr %t120, i32 0, i32 2
  %t122 = load { i64, ptr }, ptr %t121
  store { i64, ptr } %t122, ptr %l5, !tbaa !27
  br label %bb33
bb32:
  br label %bb42
bb33:
  %t124 = load ptr, ptr %l0, !tbaa !29
  %t125 = load ptr, ptr %l4, !tbaa !29
  call void @compiler_2fgeneric_2ecompiler_2fgeneric_3agenRoots_2estmt(ptr %v0, ptr %v1, ptr %t124, ptr %t125)
  br label %bb34
bb34:
  %t129 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t129, ptr %l6, !tbaa !27
  store i64 0, ptr %l7, !tbaa !24
  %t131 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t133 = extractvalue { i64, ptr } %t131, 0
  store i64 %t133, ptr %l8, !tbaa !24
  br label %bb35
bb35:
  %t135 = load i64, ptr %l7, !tbaa !24
  %t136 = load i64, ptr %l8, !tbaa !24
  %t139 = icmp slt i64 %t135, %t136
  %t141 = xor i1 %t139, true
  br i1 %t141, label %bb36, label %bb37
bb36:
  br label %bb41
bb37:
  br label %bb38
bb38:
  %t143 = load { i64, ptr }, ptr %l6, !tbaa !27
  store { i64, ptr } %t143, ptr %l77, !tbaa !27
  %t144 = load i64, ptr %l7, !tbaa !24
  %t146 = getelementptr { i64, ptr }, ptr %l77, i32 0, i32 1
  %t147 = load ptr, ptr %t146, !tbaa !27
  %t148 = getelementptr ptr, ptr %t147, i64 %t144
  %t149 = load ptr, ptr %t148, !tbaa !39
  %t151 = load ptr, ptr %l0, !tbaa !29
  %t154 = getelementptr %"compiler/ast:Catch", ptr %t149, i32 0, i32 2
  %t155 = load { i64, ptr }, ptr %t154, !tbaa !27
  call void @compiler_2fgeneric_2ecompiler_2fgeneric_3agenRoots_2estmts(ptr %v0, ptr %v1, ptr %t151, { i64, ptr } %t155)
  br label %bb39
bb39:
  br label %bb40
bb40:
  %t158 = load i64, ptr %l7, !tbaa !24
  %t160 = add i64 %t158, 1
  store i64 %t160, ptr %l7, !tbaa !24
  br label %bb35
bb41:
  br label %bb68
bb42:
  %t162 = load ptr, ptr %l1, !tbaa !29
  store ptr %t162, ptr %l85, !tbaa !29
  store i1 false, ptr %l86, !tbaa !21
  %t163 = load ptr, ptr %l85, !tbaa !29
  %t164 = icmp ne ptr %t163, null
  br i1 %t164, label %bb43, label %bb44
bb43:
  %t166 = load ptr, ptr %l85, !tbaa !29
  %t167 = load i64, ptr %t166, !range !{i64 0, i64 22}
  %t169 = icmp eq i64 %t167, 19
  store i1 %t169, ptr %l86, !tbaa !21
  br label %bb44
bb44:
  %t170 = load i1, ptr %l86, !tbaa !21
  br i1 %t170, label %bb45, label %bb46
bb45:
  %t171 = load ptr, ptr %l1, !tbaa !29
  %t173 = getelementptr { i64, [4 x i64] }, ptr %t171, i32 0, i32 1
  %t174 = getelementptr { %"compiler/source:Span", ptr, i1 }, ptr %t173, i32 0, i32 1
  %t175 = load ptr, ptr %t174
  store ptr %t175, ptr %l10, !tbaa !29
  br label %bb47
bb46:
  br label %bb49
bb47:
  %t177 = load ptr, ptr %l0, !tbaa !29
  %t178 = load ptr, ptr %l10, !tbaa !29
  call void @compiler_2fgeneric_2ecompiler_2fgeneric_3agenRoots_2estmt(ptr %v0, ptr %v1, ptr %t177, ptr %t178)
  br label %bb48
bb48:
  br label %bb68
bb49:
  %t182 = load ptr, ptr %l1, !tbaa !29
  store ptr %t182, ptr %l94, !tbaa !29
  store i1 false, ptr %l95, !tbaa !21
  %t183 = load ptr, ptr %l94, !tbaa !29
  %t184 = icmp ne ptr %t183, null
  br i1 %t184, label %bb50, label %bb51
bb50:
  %t186 = load ptr, ptr %l94, !tbaa !29
  %t187 = load i64, ptr %t186, !range !{i64 0, i64 22}
  %t189 = icmp eq i64 %t187, 18
  store i1 %t189, ptr %l95, !tbaa !21
  br label %bb51
bb51:
  %t190 = load i1, ptr %l95, !tbaa !21
  br i1 %t190, label %bb52, label %bb53
bb52:
  %t191 = load ptr, ptr %l1, !tbaa !29
  %t193 = getelementptr { i64, [4 x i64] }, ptr %t191, i32 0, i32 1
  %t194 = getelementptr { %"compiler/source:Span", ptr }, ptr %t193, i32 0, i32 1
  %t195 = load ptr, ptr %t194
  store ptr %t195, ptr %l11, !tbaa !29
  br label %bb54
bb53:
  br label %bb63
bb54:
  %t197 = load ptr, ptr %l0, !tbaa !29
  %t198 = load ptr, ptr %l11, !tbaa !29
  %t200 = getelementptr %"compiler/ast:JoinS", ptr %t198, i32 0, i32 1
  %t201 = load { i64, ptr }, ptr %t200, !tbaa !27
  call void @compiler_2fgeneric_2ecompiler_2fgeneric_3agenRoots_2estmts(ptr %v0, ptr %v1, ptr %t197, { i64, ptr } %t201)
  br label %bb55
bb55:
  %t204 = load ptr, ptr %l11, !tbaa !29
  %t206 = getelementptr %"compiler/ast:JoinS", ptr %t204, i32 0, i32 2
  %t207 = load { i64, ptr }, ptr %t206, !tbaa !27
  store { i64, ptr } %t207, ptr %l12, !tbaa !27
  store i64 0, ptr %l13, !tbaa !24
  %t209 = load { i64, ptr }, ptr %l12, !tbaa !27
  %t211 = extractvalue { i64, ptr } %t209, 0
  store i64 %t211, ptr %l14, !tbaa !24
  br label %bb56
bb56:
  %t213 = load i64, ptr %l13, !tbaa !24
  %t214 = load i64, ptr %l14, !tbaa !24
  %t217 = icmp slt i64 %t213, %t214
  %t219 = xor i1 %t217, true
  br i1 %t219, label %bb57, label %bb58
bb57:
  br label %bb62
bb58:
  br label %bb59
bb59:
  %t221 = load { i64, ptr }, ptr %l12, !tbaa !27
  store { i64, ptr } %t221, ptr %l111, !tbaa !27
  %t222 = load i64, ptr %l13, !tbaa !24
  %t224 = getelementptr { i64, ptr }, ptr %l111, i32 0, i32 1
  %t225 = load ptr, ptr %t224, !tbaa !27
  %t226 = getelementptr ptr, ptr %t225, i64 %t222
  %t227 = load ptr, ptr %t226, !tbaa !39
  %t229 = load ptr, ptr %l0, !tbaa !29
  %t232 = getelementptr %"compiler/ast:Catch", ptr %t227, i32 0, i32 2
  %t233 = load { i64, ptr }, ptr %t232, !tbaa !27
  call void @compiler_2fgeneric_2ecompiler_2fgeneric_3agenRoots_2estmts(ptr %v0, ptr %v1, ptr %t229, { i64, ptr } %t233)
  br label %bb60
bb60:
  br label %bb61
bb61:
  %t236 = load i64, ptr %l13, !tbaa !24
  %t238 = add i64 %t236, 1
  store i64 %t238, ptr %l13, !tbaa !24
  br label %bb56
bb62:
  br label %bb68
bb63:
  br i1 true, label %bb64, label %bb65
bb64:
  br label %bb66
bb65:
  br label %bb67
bb66:
  br label %bb68
bb67:
  call void @__olang_check_failed(ptr @olang_loc_c61310131704fb2f_f27aa7cba89c0bc3)
  unreachable
bb68:
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2fgeneric_2ecompiler_2fgeneric_3agenRoots_2estmt(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca ptr
  %l4 = alloca i64
  %l5 = alloca { i64, ptr }
  %l6 = alloca i64
  %l7 = alloca i64
  %l9 = alloca { i64, ptr }
  %l10 = alloca i64
  %l11 = alloca i64
  %l13 = alloca ptr
  %l14 = alloca ptr
  %l15 = alloca ptr
  %l16 = alloca ptr
  %l17 = alloca ptr
  %l19 = alloca { i64, ptr }
  %l20 = alloca i64
  %l21 = alloca i64
  %l23 = alloca ptr
  %l24 = alloca ptr
  %l27 = alloca ptr
  %l28 = alloca i1
  %l35 = alloca ptr
  %l36 = alloca i1
  %l49 = alloca { i64, ptr }
  %l52 = alloca i64
  %l56 = alloca i64
  %l68 = alloca { i64, ptr }
  %l71 = alloca ptr
  %l73 = alloca i32
  %l77 = alloca ptr
  %l78 = alloca i1
  %l85 = alloca ptr
  %l87 = alloca i32
  %l91 = alloca i64
  %l92 = alloca ptr
  %l93 = alloca i1
  %l100 = alloca ptr
  %l101 = alloca i1
  %l106 = alloca ptr
  %l107 = alloca i64
  %l111 = alloca i64
  %l115 = alloca ptr
  %l116 = alloca i1
  %l125 = alloca i64
  %l141 = alloca { i64, ptr }
  %l149 = alloca ptr
  %l150 = alloca i1
  %l158 = alloca ptr
  %l159 = alloca i1
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
  store ptr %t5, ptr %l27, !tbaa !29
  store i1 false, ptr %l28, !tbaa !21
  %t6 = load ptr, ptr %l27, !tbaa !29
  %t7 = icmp ne ptr %t6, null
  br i1 %t7, label %bb4, label %bb5
bb4:
  %t9 = load ptr, ptr %l27, !tbaa !29
  %t10 = load i64, ptr %t9, !range !{i64 0, i64 22}
  %t12 = icmp eq i64 %t10, 1
  store i1 %t12, ptr %l28, !tbaa !21
  br label %bb5
bb5:
  %t13 = load i1, ptr %l28, !tbaa !21
  br i1 %t13, label %bb6, label %bb7
bb6:
  %t14 = load ptr, ptr %l1, !tbaa !29
  %t16 = getelementptr { i64, [4 x i64] }, ptr %t14, i32 0, i32 1
  %t17 = getelementptr { %"compiler/source:Span", ptr }, ptr %t16, i32 0, i32 1
  %t18 = load ptr, ptr %t17
  store ptr %t18, ptr %l2, !tbaa !29
  br label %bb8
bb7:
  br label %bb10
bb8:
  %t20 = load ptr, ptr %l0, !tbaa !29
  %t21 = load ptr, ptr %l2, !tbaa !29
  call void @compiler_2fgeneric_2ecompiler_2fgeneric_3agenRoots_2edeclared(ptr %v0, ptr %v1, ptr %t20, ptr %t21)
  br label %bb9
bb9:
  br label %bb91
bb10:
  %t24 = load ptr, ptr %l1, !tbaa !29
  store ptr %t24, ptr %l35, !tbaa !29
  store i1 false, ptr %l36, !tbaa !21
  %t25 = load ptr, ptr %l35, !tbaa !29
  %t26 = icmp ne ptr %t25, null
  br i1 %t26, label %bb11, label %bb12
bb11:
  %t28 = load ptr, ptr %l35, !tbaa !29
  %t29 = load i64, ptr %t28, !range !{i64 0, i64 22}
  %t31 = icmp eq i64 %t29, 2
  store i1 %t31, ptr %l36, !tbaa !21
  br label %bb12
bb12:
  %t32 = load i1, ptr %l36, !tbaa !21
  br i1 %t32, label %bb13, label %bb14
bb13:
  %t33 = load ptr, ptr %l1, !tbaa !29
  %t35 = getelementptr { i64, [4 x i64] }, ptr %t33, i32 0, i32 1
  %t36 = getelementptr { %"compiler/source:Span", ptr }, ptr %t35, i32 0, i32 1
  %t37 = load ptr, ptr %t36
  store ptr %t37, ptr %l3, !tbaa !29
  br label %bb15
bb14:
  br label %bb31
bb15:
  store i64 0, ptr %l4, !tbaa !24
  %t39 = load ptr, ptr %l3, !tbaa !29
  %t41 = getelementptr %"compiler/ast:Multi", ptr %t39, i32 0, i32 2
  %t42 = load { i64, ptr }, ptr %t41, !tbaa !27
  store { i64, ptr } %t42, ptr %l5, !tbaa !27
  store i64 0, ptr %l6, !tbaa !24
  %t44 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t46 = extractvalue { i64, ptr } %t44, 0
  store i64 %t46, ptr %l7, !tbaa !24
  br label %bb16
bb16:
  %t48 = load i64, ptr %l6, !tbaa !24
  %t49 = load i64, ptr %l7, !tbaa !24
  %t52 = icmp slt i64 %t48, %t49
  %t54 = xor i1 %t52, true
  br i1 %t54, label %bb17, label %bb18
bb17:
  br label %bb22
bb18:
  br label %bb19
bb19:
  %t56 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t56, ptr %l49, !tbaa !27
  %t57 = load i64, ptr %l6, !tbaa !24
  %t59 = getelementptr { i64, ptr }, ptr %l49, i32 0, i32 1
  %t60 = load ptr, ptr %t59, !tbaa !27
  %t61 = getelementptr ptr, ptr %t60, i64 %t57
  %t62 = load ptr, ptr %t61, !tbaa !39
  %t64 = load i64, ptr %l4, !tbaa !24
  store i64 %t64, ptr %l52, !tbaa !24
  %t65 = load ptr, ptr %l0, !tbaa !29
  %t70 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3agenRoots_2eroot(ptr %v0, ptr %v1, ptr %t65, ptr %t62)
  store i64 %t70, ptr %l56
  br label %bb20
bb20:
  %t71 = load i64, ptr %l52, !tbaa !24
  %t72 = load i64, ptr %l56, !tbaa !24
  %t73 = or i64 %t71, %t72
  store i64 %t73, ptr %l4, !tbaa !24
  br label %bb21
bb21:
  %t75 = load i64, ptr %l6, !tbaa !24
  %t77 = add i64 %t75, 1
  store i64 %t77, ptr %l6, !tbaa !24
  br label %bb16
bb22:
  %t79 = load ptr, ptr %l3, !tbaa !29
  %t81 = getelementptr %"compiler/ast:Multi", ptr %t79, i32 0, i32 0
  %t82 = load { i64, ptr }, ptr %t81, !tbaa !27
  store { i64, ptr } %t82, ptr %l9, !tbaa !27
  store i64 0, ptr %l10, !tbaa !24
  %t84 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t86 = extractvalue { i64, ptr } %t84, 0
  store i64 %t86, ptr %l11, !tbaa !24
  br label %bb23
bb23:
  %t88 = load i64, ptr %l10, !tbaa !24
  %t89 = load i64, ptr %l11, !tbaa !24
  %t92 = icmp slt i64 %t88, %t89
  %t94 = xor i1 %t92, true
  br i1 %t94, label %bb24, label %bb25
bb24:
  br label %bb30
bb25:
  br label %bb26
bb26:
  %t96 = load { i64, ptr }, ptr %l9, !tbaa !27
  store { i64, ptr } %t96, ptr %l68, !tbaa !27
  %t97 = load i64, ptr %l10, !tbaa !24
  %t99 = getelementptr { i64, ptr }, ptr %l68, i32 0, i32 1
  %t100 = load ptr, ptr %t99, !tbaa !27
  %t101 = getelementptr ptr, ptr %t100, i64 %t97
  %t102 = load ptr, ptr %t101, !tbaa !39
  %t104 = load ptr, ptr %l0, !tbaa !29
  store ptr %t104, ptr %l71, !tbaa !29
  %t107 = call i32 @compiler_2fgeneric_2ebaseName(ptr %v1, ptr %t102)
  store i32 %t107, ptr %l73
  br label %bb27
bb27:
  %t108 = load i64, ptr %l4, !tbaa !24
  %t109 = load ptr, ptr %l71, !tbaa !29
  %t110 = load i32, ptr %l73, !tbaa !23
  call void @compiler_2fgeneric_2ecompiler_2fgeneric_3agenRoots_2egrow(ptr %v0, ptr %t109, i32 %t110, i64 %t108)
  br label %bb28
bb28:
  br label %bb29
bb29:
  %t112 = load i64, ptr %l10, !tbaa !24
  %t114 = add i64 %t112, 1
  store i64 %t114, ptr %l10, !tbaa !24
  br label %bb23
bb30:
  br label %bb91
bb31:
  %t116 = load ptr, ptr %l1, !tbaa !29
  store ptr %t116, ptr %l77, !tbaa !29
  store i1 false, ptr %l78, !tbaa !21
  %t117 = load ptr, ptr %l77, !tbaa !29
  %t118 = icmp ne ptr %t117, null
  br i1 %t118, label %bb32, label %bb33
bb32:
  %t120 = load ptr, ptr %l77, !tbaa !29
  %t121 = load i64, ptr %t120, !range !{i64 0, i64 22}
  %t123 = icmp eq i64 %t121, 3
  store i1 %t123, ptr %l78, !tbaa !21
  br label %bb33
bb33:
  %t124 = load i1, ptr %l78, !tbaa !21
  br i1 %t124, label %bb34, label %bb35
bb34:
  %t125 = load ptr, ptr %l1, !tbaa !29
  %t127 = getelementptr { i64, [4 x i64] }, ptr %t125, i32 0, i32 1
  %t128 = getelementptr { %"compiler/source:Span", i32, ptr, ptr }, ptr %t127, i32 0, i32 2
  %t129 = load ptr, ptr %t128
  store ptr %t129, ptr %l13, !tbaa !29
  %t131 = load ptr, ptr %l1, !tbaa !29
  %t133 = getelementptr { i64, [4 x i64] }, ptr %t131, i32 0, i32 1
  %t134 = getelementptr { %"compiler/source:Span", i32, ptr, ptr }, ptr %t133, i32 0, i32 3
  %t135 = load ptr, ptr %t134
  store ptr %t135, ptr %l14, !tbaa !29
  br label %bb36
bb35:
  br label %bb40
bb36:
  %t137 = load ptr, ptr %l0, !tbaa !29
  store ptr %t137, ptr %l85, !tbaa !29
  %t138 = load ptr, ptr %l13, !tbaa !29
  %t140 = call i32 @compiler_2fgeneric_2ebaseName(ptr %v1, ptr %t138)
  store i32 %t140, ptr %l87
  br label %bb37
bb37:
  %t141 = load ptr, ptr %l0, !tbaa !29
  %t142 = load ptr, ptr %l14, !tbaa !29
  %t146 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3agenRoots_2eroot(ptr %v0, ptr %v1, ptr %t141, ptr %t142)
  store i64 %t146, ptr %l91
  br label %bb38
bb38:
  %t147 = load ptr, ptr %l85, !tbaa !29
  %t148 = load i32, ptr %l87, !tbaa !23
  %t149 = load i64, ptr %l91, !tbaa !24
  call void @compiler_2fgeneric_2ecompiler_2fgeneric_3agenRoots_2egrow(ptr %v0, ptr %t147, i32 %t148, i64 %t149)
  br label %bb39
bb39:
  br label %bb91
bb40:
  %t150 = load ptr, ptr %l1, !tbaa !29
  store ptr %t150, ptr %l92, !tbaa !29
  store i1 false, ptr %l93, !tbaa !21
  %t151 = load ptr, ptr %l92, !tbaa !29
  %t152 = icmp ne ptr %t151, null
  br i1 %t152, label %bb41, label %bb42
bb41:
  %t154 = load ptr, ptr %l92, !tbaa !29
  %t155 = load i64, ptr %t154, !range !{i64 0, i64 22}
  %t157 = icmp eq i64 %t155, 0
  store i1 %t157, ptr %l93, !tbaa !21
  br label %bb42
bb42:
  %t158 = load i1, ptr %l93, !tbaa !21
  br i1 %t158, label %bb43, label %bb44
bb43:
  %t159 = load ptr, ptr %l1, !tbaa !29
  %t161 = getelementptr { i64, [4 x i64] }, ptr %t159, i32 0, i32 1
  %t162 = getelementptr { %"compiler/source:Span", ptr }, ptr %t161, i32 0, i32 1
  %t163 = load ptr, ptr %t162
  store ptr %t163, ptr %l15, !tbaa !29
  br label %bb45
bb44:
  br label %bb47
bb45:
  %t165 = load ptr, ptr %l0, !tbaa !29
  %t166 = load ptr, ptr %l15, !tbaa !29
  call void @compiler_2fgeneric_2ecompiler_2fgeneric_3agenRoots_2estored(ptr %v0, ptr %v1, ptr %t165, ptr %t166)
  br label %bb46
bb46:
  br label %bb91
bb47:
  %t169 = load ptr, ptr %l1, !tbaa !29
  store ptr %t169, ptr %l100, !tbaa !29
  store i1 false, ptr %l101, !tbaa !21
  %t170 = load ptr, ptr %l100, !tbaa !29
  %t171 = icmp ne ptr %t170, null
  br i1 %t171, label %bb48, label %bb49
bb48:
  %t173 = load ptr, ptr %l100, !tbaa !29
  %t174 = load i64, ptr %t173, !range !{i64 0, i64 22}
  %t176 = icmp eq i64 %t174, 21
  store i1 %t176, ptr %l101, !tbaa !21
  br label %bb49
bb49:
  %t177 = load i1, ptr %l101, !tbaa !21
  br i1 %t177, label %bb50, label %bb51
bb50:
  %t178 = load ptr, ptr %l1, !tbaa !29
  %t180 = getelementptr { i64, [4 x i64] }, ptr %t178, i32 0, i32 1
  %t181 = getelementptr { %"compiler/source:Span", ptr }, ptr %t180, i32 0, i32 1
  %t182 = load ptr, ptr %t181
  store ptr %t182, ptr %l16, !tbaa !29
  br label %bb52
bb51:
  br label %bb55
bb52:
  %t184 = load ptr, ptr %l0, !tbaa !29
  store ptr %t184, ptr %l106, !tbaa !29
  %t185 = load ptr, ptr %l106, !tbaa !29
  %t186 = getelementptr %"compiler/generic:genRoots", ptr %t185, i32 0, i32 3
  %t187 = load i64, ptr %t186, !tbaa !24
  store i64 %t187, ptr %l107, !tbaa !24
  %t188 = load ptr, ptr %l0, !tbaa !29
  %t189 = load ptr, ptr %l16, !tbaa !29
  %t193 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3agenRoots_2eroot(ptr %v0, ptr %v1, ptr %t188, ptr %t189)
  store i64 %t193, ptr %l111
  br label %bb53
bb53:
  %t194 = load i64, ptr %l107, !tbaa !24
  %t195 = load i64, ptr %l111, !tbaa !24
  %t196 = or i64 %t194, %t195
  %t198 = load ptr, ptr %l106, !tbaa !29
  %t199 = getelementptr %"compiler/generic:genRoots", ptr %t198, i32 0, i32 3
  store i64 %t196, ptr %t199, !tbaa !24
  %t200 = load ptr, ptr %l0, !tbaa !29
  %t201 = load ptr, ptr %l16, !tbaa !29
  call void @compiler_2fgeneric_2ecompiler_2fgeneric_3agenRoots_2estored(ptr %v0, ptr %v1, ptr %t200, ptr %t201)
  br label %bb54
bb54:
  br label %bb91
bb55:
  %t204 = load ptr, ptr %l1, !tbaa !29
  store ptr %t204, ptr %l115, !tbaa !29
  store i1 false, ptr %l116, !tbaa !21
  %t205 = load ptr, ptr %l115, !tbaa !29
  %t206 = icmp ne ptr %t205, null
  br i1 %t206, label %bb56, label %bb57
bb56:
  %t208 = load ptr, ptr %l115, !tbaa !29
  %t209 = load i64, ptr %t208, !range !{i64 0, i64 22}
  %t211 = icmp eq i64 %t209, 9
  store i1 %t211, ptr %l116, !tbaa !21
  br label %bb57
bb57:
  %t212 = load i1, ptr %l116, !tbaa !21
  br i1 %t212, label %bb58, label %bb59
bb58:
  %t213 = load ptr, ptr %l1, !tbaa !29
  %t215 = getelementptr { i64, [4 x i64] }, ptr %t213, i32 0, i32 1
  %t216 = getelementptr { %"compiler/source:Span", ptr }, ptr %t215, i32 0, i32 1
  %t217 = load ptr, ptr %t216
  store ptr %t217, ptr %l17, !tbaa !29
  br label %bb60
bb59:
  br label %bb71
bb60:
  %t219 = load ptr, ptr %l0, !tbaa !29
  %t220 = load ptr, ptr %l17, !tbaa !29
  %t222 = getelementptr %"compiler/ast:ForIn", ptr %t220, i32 0, i32 2
  %t223 = load ptr, ptr %t222, !tbaa !29
  %t227 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3agenRoots_2eroot(ptr %v0, ptr %v1, ptr %t219, ptr %t223)
  store i64 %t227, ptr %l125
  br label %bb61
bb61:
  %t228 = load i64, ptr %l125, !tbaa !24
  %t229 = load ptr, ptr %l0, !tbaa !29
  %t230 = load ptr, ptr %l17, !tbaa !29
  %t232 = getelementptr %"compiler/ast:ForIn", ptr %t230, i32 0, i32 1
  %t233 = load i32, ptr %t232, !tbaa !23
  call void @compiler_2fgeneric_2ecompiler_2fgeneric_3agenRoots_2egrow(ptr %v0, ptr %t229, i32 %t233, i64 %t228)
  br label %bb62
bb62:
  %t238 = load ptr, ptr %l0, !tbaa !29
  %t239 = load ptr, ptr %l17, !tbaa !29
  %t241 = getelementptr %"compiler/ast:ForIn", ptr %t239, i32 0, i32 4
  %t242 = load { i64, ptr }, ptr %t241, !tbaa !27
  call void @compiler_2fgeneric_2ecompiler_2fgeneric_3agenRoots_2estmts(ptr %v0, ptr %v1, ptr %t238, { i64, ptr } %t242)
  br label %bb63
bb63:
  %t245 = load ptr, ptr %l17, !tbaa !29
  %t247 = getelementptr %"compiler/ast:ForIn", ptr %t245, i32 0, i32 5
  %t248 = load { i64, ptr }, ptr %t247, !tbaa !27
  store { i64, ptr } %t248, ptr %l19, !tbaa !27
  store i64 0, ptr %l20, !tbaa !24
  %t250 = load { i64, ptr }, ptr %l19, !tbaa !27
  %t252 = extractvalue { i64, ptr } %t250, 0
  store i64 %t252, ptr %l21, !tbaa !24
  br label %bb64
bb64:
  %t254 = load i64, ptr %l20, !tbaa !24
  %t255 = load i64, ptr %l21, !tbaa !24
  %t258 = icmp slt i64 %t254, %t255
  %t260 = xor i1 %t258, true
  br i1 %t260, label %bb65, label %bb66
bb65:
  br label %bb70
bb66:
  br label %bb67
bb67:
  %t262 = load { i64, ptr }, ptr %l19, !tbaa !27
  store { i64, ptr } %t262, ptr %l141, !tbaa !27
  %t263 = load i64, ptr %l20, !tbaa !24
  %t265 = getelementptr { i64, ptr }, ptr %l141, i32 0, i32 1
  %t266 = load ptr, ptr %t265, !tbaa !27
  %t267 = getelementptr ptr, ptr %t266, i64 %t263
  %t268 = load ptr, ptr %t267, !tbaa !39
  %t270 = load ptr, ptr %l0, !tbaa !29
  %t273 = getelementptr %"compiler/ast:Catch", ptr %t268, i32 0, i32 2
  %t274 = load { i64, ptr }, ptr %t273, !tbaa !27
  call void @compiler_2fgeneric_2ecompiler_2fgeneric_3agenRoots_2estmts(ptr %v0, ptr %v1, ptr %t270, { i64, ptr } %t274)
  br label %bb68
bb68:
  br label %bb69
bb69:
  %t277 = load i64, ptr %l20, !tbaa !24
  %t279 = add i64 %t277, 1
  store i64 %t279, ptr %l20, !tbaa !24
  br label %bb64
bb70:
  br label %bb91
bb71:
  %t281 = load ptr, ptr %l1, !tbaa !29
  store ptr %t281, ptr %l149, !tbaa !29
  store i1 false, ptr %l150, !tbaa !21
  %t282 = load ptr, ptr %l149, !tbaa !29
  %t283 = icmp ne ptr %t282, null
  br i1 %t283, label %bb72, label %bb73
bb72:
  %t285 = load ptr, ptr %l149, !tbaa !29
  %t286 = load i64, ptr %t285, !range !{i64 0, i64 22}
  %t288 = icmp eq i64 %t286, 5
  store i1 %t288, ptr %l150, !tbaa !21
  br label %bb73
bb73:
  %t289 = load i1, ptr %l150, !tbaa !21
  br i1 %t289, label %bb74, label %bb75
bb74:
  %t290 = load ptr, ptr %l1, !tbaa !29
  %t292 = getelementptr { i64, [4 x i64] }, ptr %t290, i32 0, i32 1
  %t293 = getelementptr { %"compiler/source:Span", ptr }, ptr %t292, i32 0, i32 1
  %t294 = load ptr, ptr %t293
  store ptr %t294, ptr %l23, !tbaa !29
  br label %bb76
bb75:
  br label %bb78
bb76:
  %t296 = load ptr, ptr %l0, !tbaa !29
  %t297 = load ptr, ptr %l23, !tbaa !29
  call void @compiler_2fgeneric_2ecompiler_2fgeneric_3agenRoots_2ebranches(ptr %v0, ptr %v1, ptr %t296, ptr %t297)
  br label %bb77
bb77:
  br label %bb91
bb78:
  %t301 = load ptr, ptr %l1, !tbaa !29
  store ptr %t301, ptr %l158, !tbaa !29
  store i1 false, ptr %l159, !tbaa !21
  %t302 = load ptr, ptr %l158, !tbaa !29
  %t303 = icmp ne ptr %t302, null
  br i1 %t303, label %bb79, label %bb80
bb79:
  %t305 = load ptr, ptr %l158, !tbaa !29
  %t306 = load i64, ptr %t305, !range !{i64 0, i64 22}
  %t308 = icmp eq i64 %t306, 11
  store i1 %t308, ptr %l159, !tbaa !21
  br label %bb80
bb80:
  %t309 = load i1, ptr %l159, !tbaa !21
  br i1 %t309, label %bb81, label %bb82
bb81:
  %t310 = load ptr, ptr %l1, !tbaa !29
  %t312 = getelementptr { i64, [4 x i64] }, ptr %t310, i32 0, i32 1
  %t313 = getelementptr { %"compiler/source:Span", ptr }, ptr %t312, i32 0, i32 1
  %t314 = load ptr, ptr %t313
  store ptr %t314, ptr %l24, !tbaa !29
  br label %bb83
bb82:
  br label %bb85
bb83:
  %t316 = load ptr, ptr %l0, !tbaa !29
  %t317 = load ptr, ptr %l24, !tbaa !29
  call void @compiler_2fgeneric_2ecompiler_2fgeneric_3agenRoots_2ematched(ptr %v0, ptr %v1, ptr %t316, ptr %t317)
  br label %bb84
bb84:
  br label %bb91
bb85:
  br i1 true, label %bb86, label %bb87
bb86:
  br label %bb88
bb87:
  br label %bb90
bb88:
  %t320 = load ptr, ptr %l0, !tbaa !29
  %t321 = load ptr, ptr %l1, !tbaa !29
  call void @compiler_2fgeneric_2ecompiler_2fgeneric_3agenRoots_2einner(ptr %v0, ptr %v1, ptr %t320, ptr %t321)
  br label %bb89
bb89:
  br label %bb91
bb90:
  call void @__olang_check_failed(ptr @olang_loc_df5307d3a8bec99f_effac078aaeab34b)
  unreachable
bb91:
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
  store { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d49, i32 0, i32 1) }, ptr %l4, !tbaa !27
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
  store { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d50, i32 0, i32 1) }, ptr %l8, !tbaa !27
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
  store { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d51, i32 0, i32 1) }, ptr %l12, !tbaa !27
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
  store { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d52, i32 0, i32 1) }, ptr %l16, !tbaa !27
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
  store { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d53, i32 0, i32 1) }, ptr %l20, !tbaa !27
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
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d54, i32 0, i32 1) }, ptr %l22, !tbaa !27
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

define dso_local i64 @compiler_2fgeneric_2egenElemOf(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l2 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l3 = alloca { i64, ptr }
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca ptr
  %l7 = alloca %"compiler/generic:genRoots"
  %l8 = alloca i64
  %l10 = alloca i1
  %l13 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l14 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l19 = alloca ptr
  %l27 = alloca ptr
  %l33 = alloca i1
  %l43 = alloca { i64, ptr }
  %l49 = alloca ptr
  %l51 = alloca i1
  %l54 = alloca i64
  %l57 = alloca { i64, ptr }
  %l58 = alloca i64
  %l61 = alloca { i64, ptr }
  %l62 = alloca %"compiler/generic:genRoots"
  %l77 = alloca i1
  %s0 = alloca %olang.scope
  %rv = alloca i64
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = call i1 @compiler_2fgeneric_2eborrowableElem(ptr %v0, ptr %t1)
  store i1 %t3, ptr %l10
  br label %bb1
bb1:
  %t4 = load i1, ptr %l10, !tbaa !21
  %t5 = xor i1 %t4, true
  br i1 %t5, label %bb2, label %bb3
bb2:
  %t7 = load i64, ptr @G_2ecompiler_2fgeneric_2eGenPerTurn, !tbaa !24
  call void @__olang_scope_close(ptr %s0)
  store i64 %t7, ptr %rv
  br label %ret
bb3:
  br label %bb4
bb4:
  %t9 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aNameId_3e_2ector(ptr %s0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t9, ptr %l13
  br label %bb5
bb5:
  %t10 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l13
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t10, ptr %l1
  %t11 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cBool_3e_2ector(ptr %s0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t11, ptr %l14
  br label %bb6
bb6:
  %t12 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l14
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t12, ptr %l2
  %t13 = load ptr, ptr %l0, !tbaa !29
  %t15 = getelementptr %"compiler/ast:Func", ptr %t13, i32 0, i32 1
  %t16 = load ptr, ptr %t15, !tbaa !29
  %t18 = icmp eq ptr %t16, null
  %t20 = xor i1 %t18, true
  br i1 %t20, label %bb7, label %bb8
bb7:
  store ptr %l1, ptr %l19, !tbaa !29
  %t22 = load ptr, ptr %l0, !tbaa !29
  %t24 = getelementptr %"compiler/ast:Func", ptr %t22, i32 0, i32 1
  %t25 = load ptr, ptr %t24, !tbaa !29
  %t27 = icmp eq ptr %t25, null
  br i1 %t27, label %bb9, label %bb10
bb8:
  br label %bb18
bb9:
  call void @__olang_check_failed(ptr @olang_loc_2a0d238d6764ffeb_7f54c8a7a483f2b7)
  unreachable
bb10:
  br label %bb11
bb11:
  %t29 = load ptr, ptr %l0, !tbaa !29
  %t31 = getelementptr %"compiler/ast:Func", ptr %t29, i32 0, i32 1
  %t32 = load ptr, ptr %t31, !tbaa !29
  %t35 = getelementptr %"compiler/ast:Param", ptr %t32, i32 0, i32 1
  %t36 = load i32, ptr %t35, !tbaa !23
  %t37 = load ptr, ptr %l19, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aNameId_3e_2ePush_3ccompiler_2fsource_3aNameId_3e(ptr %s0, ptr %t37, i32 %t36)
  br label %bb12
bb12:
  store ptr %l2, ptr %l27, !tbaa !29
  %t39 = load ptr, ptr %l0, !tbaa !29
  %t41 = getelementptr %"compiler/ast:Func", ptr %t39, i32 0, i32 1
  %t42 = load ptr, ptr %t41, !tbaa !29
  %t44 = icmp eq ptr %t42, null
  br i1 %t44, label %bb13, label %bb14
bb13:
  call void @__olang_check_failed(ptr @olang_loc_b16df8c761b5d07c_6405a14de8d58098)
  unreachable
bb14:
  br label %bb15
bb15:
  %t46 = load ptr, ptr %l0, !tbaa !29
  %t48 = getelementptr %"compiler/ast:Func", ptr %t46, i32 0, i32 1
  %t49 = load ptr, ptr %t48, !tbaa !29
  %t51 = call i1 @compiler_2fgeneric_2ebyValueParam(ptr %v0, ptr %t49)
  store i1 %t51, ptr %l33
  br label %bb16
bb16:
  %t52 = load ptr, ptr %l27, !tbaa !29
  %t53 = load i1, ptr %l33, !tbaa !21
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2ePush_3cBool_3e(ptr %s0, ptr %t52, i1 %t53)
  br label %bb17
bb17:
  br label %bb18
bb18:
  %t54 = load ptr, ptr %l0, !tbaa !29
  %t56 = getelementptr %"compiler/ast:Func", ptr %t54, i32 0, i32 3
  %t57 = load ptr, ptr %t56, !tbaa !29
  %t59 = getelementptr %"compiler/ast:Sig", ptr %t57, i32 0, i32 0
  %t60 = load { i64, ptr }, ptr %t59, !tbaa !27
  store { i64, ptr } %t60, ptr %l3, !tbaa !27
  store i64 0, ptr %l4, !tbaa !24
  %t62 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t64 = extractvalue { i64, ptr } %t62, 0
  store i64 %t64, ptr %l5, !tbaa !24
  br label %bb19
bb19:
  %t66 = load i64, ptr %l4, !tbaa !24
  %t67 = load i64, ptr %l5, !tbaa !24
  %t70 = icmp slt i64 %t66, %t67
  %t72 = xor i1 %t70, true
  br i1 %t72, label %bb20, label %bb21
bb20:
  br label %bb27
bb21:
  br label %bb22
bb22:
  %t74 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t74, ptr %l43, !tbaa !27
  %t75 = load i64, ptr %l4, !tbaa !24
  %t77 = getelementptr { i64, ptr }, ptr %l43, i32 0, i32 1
  %t78 = load ptr, ptr %t77, !tbaa !27
  %t79 = getelementptr ptr, ptr %t78, i64 %t75
  %t80 = load ptr, ptr %t79, !tbaa !39
  store ptr %t80, ptr %l6, !tbaa !29
  %t82 = load ptr, ptr %l6, !tbaa !29
  %t84 = getelementptr %"compiler/ast:Param", ptr %t82, i32 0, i32 1
  %t85 = load i32, ptr %t84, !tbaa !23
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aNameId_3e_2ePush_3ccompiler_2fsource_3aNameId_3e(ptr %s0, ptr %l1, i32 %t85)
  br label %bb23
bb23:
  store ptr %l2, ptr %l49, !tbaa !29
  %t88 = load ptr, ptr %l6, !tbaa !29
  %t90 = call i1 @compiler_2fgeneric_2ebyValueParam(ptr %v0, ptr %t88)
  store i1 %t90, ptr %l51
  br label %bb24
bb24:
  %t91 = load ptr, ptr %l49, !tbaa !29
  %t92 = load i1, ptr %l51, !tbaa !21
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2ePush_3cBool_3e(ptr %s0, ptr %t91, i1 %t92)
  br label %bb25
bb25:
  br label %bb26
bb26:
  %t93 = load i64, ptr %l4, !tbaa !24
  %t95 = add i64 %t93, 1
  store i64 %t95, ptr %l4, !tbaa !24
  br label %bb19
bb27:
  %t97 = ptrtoint ptr %s0 to i64
  store i64 %t97, ptr %l54, !tbaa !24
  %t98 = load i1, ptr @olang_2esole_2ecompiler_2fgeneric_3agenRoots_2e0
  br i1 %t98, label %bb28, label %bb29
bb28:
  %t100 = call ptr @__olang_region_make(ptr %s0)
  %t101 = ptrtoint ptr %t100 to i64
  store i64 %t101, ptr %l54, !tbaa !24
  br label %bb29
bb29:
  %t102 = load i64, ptr %l54
  %t103 = inttoptr i64 %t102 to ptr
  %t105 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aNameId_3e_2eToArra_H4d02a0b2e27e8f31ffc99daa43750593(ptr %s0, ptr %t103, ptr %l1)
  store { i64, ptr } %t105, ptr %l57
  br label %bb30
bb30:
  %t106 = ptrtoint ptr %s0 to i64
  store i64 %t106, ptr %l58, !tbaa !24
  %t107 = load i1, ptr @olang_2esole_2ecompiler_2fgeneric_3agenRoots_2e1
  br i1 %t107, label %bb31, label %bb32
bb31:
  %t109 = call ptr @__olang_region_make(ptr %s0)
  %t110 = ptrtoint ptr %t109 to i64
  store i64 %t110, ptr %l58, !tbaa !24
  br label %bb32
bb32:
  %t111 = load i64, ptr %l58
  %t112 = inttoptr i64 %t111 to ptr
  %t114 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eToArray_3cBool_3e(ptr %s0, ptr %t112, ptr %l2)
  store { i64, ptr } %t114, ptr %l61
  br label %bb33
bb33:
  %t115 = load { i64, ptr }, ptr %l57, !tbaa !27
  %t116 = load { i64, ptr }, ptr %l61, !tbaa !27
  %t117 = call %"compiler/generic:genRoots" @compiler_2fgeneric_3agenRoots_2ector(ptr %s0, ptr %s0, ptr %s0, { i64, ptr } %t115, { i64, ptr } %t116)
  store %"compiler/generic:genRoots" %t117, ptr %l62
  br label %bb34
bb34:
  %t118 = load %"compiler/generic:genRoots", ptr %l62
  store %"compiler/generic:genRoots" %t118, ptr %l7
  %t119 = load ptr, ptr %l0, !tbaa !29
  %t121 = getelementptr %"compiler/ast:Func", ptr %t119, i32 0, i32 4
  %t122 = load { i64, ptr }, ptr %t121, !tbaa !27
  call void @compiler_2fgeneric_2ecompiler_2fgeneric_3agenRoots_2estmts(ptr %s0, ptr %v0, ptr %l7, { i64, ptr } %t122)
  br label %bb35
bb35:
  %t125 = load ptr, ptr %l0, !tbaa !29
  %t127 = getelementptr %"compiler/ast:Func", ptr %t125, i32 0, i32 4
  %t128 = load { i64, ptr }, ptr %t127, !tbaa !27
  call void @compiler_2fgeneric_2ecompiler_2fgeneric_3agenRoots_2estmts(ptr %s0, ptr %v0, ptr %l7, { i64, ptr } %t128)
  br label %bb36
bb36:
  %t131 = getelementptr %"compiler/generic:genRoots", ptr %l7, i32 0, i32 3
  %t132 = load i64, ptr %t131, !tbaa !24
  store i64 %t132, ptr %l8, !tbaa !24
  %t134 = load i64, ptr %l8, !tbaa !24
  %t136 = icmp eq i64 %t134, 0
  br i1 %t136, label %bb37, label %bb38
bb37:
  %t138 = load i64, ptr @G_2ecompiler_2fgeneric_2eGenPerTurn, !tbaa !24
  call void @__olang_scope_close(ptr %s0)
  store i64 %t138, ptr %rv
  br label %ret
bb38:
  br label %bb39
bb39:
  %t140 = load i64, ptr %l8, !tbaa !24
  %t141 = load i64, ptr @G_2ecompiler_2fgeneric_2eGenLocalBit, !tbaa !24
  %t144 = and i64 %t140, %t141
  %t146 = icmp ne i64 %t144, 0
  br i1 %t146, label %bb40, label %bb41
bb40:
  store i1 true, ptr %l77, !tbaa !21
  br label %bb42
bb41:
  %t148 = load i64, ptr %l8, !tbaa !24
  %t150 = call i64 @llvm.ctpop.i64(i64 %t148)
  %t152 = icmp ne i64 %t150, 1
  store i1 %t152, ptr %l77, !tbaa !21
  br label %bb42
bb42:
  %t154 = load i1, ptr %l77, !tbaa !21
  br i1 %t154, label %bb43, label %bb44
bb43:
  %t155 = load i64, ptr @G_2ecompiler_2fgeneric_2eGenFromReturn, !tbaa !24
  call void @__olang_scope_close(ptr %s0)
  store i64 %t155, ptr %rv
  br label %ret
bb44:
  br label %bb45
bb45:
  %t157 = load i64, ptr %l8, !tbaa !24
  %t159 = call i64 @llvm.cttz.i64(i64 %t157, i1 false)
  call void @__olang_scope_close(ptr %s0)
  store i64 %t159, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local i1 @compiler_2fgeneric_2ementionsName(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca { i64, ptr }
  %l3 = alloca { i64, ptr }
  %l4 = alloca { i64, ptr }
  %l5 = alloca i64
  %l6 = alloca i64
  %l8 = alloca ptr
  %l9 = alloca ptr
  %l10 = alloca ptr
  %l11 = alloca { i64, ptr }
  %l12 = alloca { i64, ptr }
  %l13 = alloca i64
  %l14 = alloca i64
  %l15 = alloca ptr
  %l19 = alloca ptr
  %l20 = alloca i1
  %l30 = alloca i1
  %l31 = alloca { i64, ptr }
  %l43 = alloca { i64, ptr }
  %l49 = alloca i1
  %l54 = alloca ptr
  %l55 = alloca i1
  %l63 = alloca i1
  %l64 = alloca ptr
  %l65 = alloca i1
  %l72 = alloca i1
  %l73 = alloca ptr
  %l74 = alloca i1
  %l79 = alloca ptr
  %l80 = alloca i1
  %l88 = alloca i1
  %l89 = alloca ptr
  %l90 = alloca i1
  %l102 = alloca { i64, ptr }
  %l109 = alloca i1
  %l111 = alloca { i64, ptr }
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = icmp eq ptr %t1, null
  br i1 %t3, label %bb1, label %bb2
bb1:
  store i1 false, ptr %rv
  br label %ret
bb2:
  br label %bb3
bb3:
  %t6 = load ptr, ptr %l0, !tbaa !29
  store ptr %t6, ptr %l19, !tbaa !29
  store i1 false, ptr %l20, !tbaa !21
  %t7 = load ptr, ptr %l19, !tbaa !29
  %t8 = icmp ne ptr %t7, null
  br i1 %t8, label %bb4, label %bb5
bb4:
  %t10 = load ptr, ptr %l19, !tbaa !29
  %t11 = load i64, ptr %t10, !range !{i64 0, i64 8}
  %t13 = icmp eq i64 %t11, 0
  store i1 %t13, ptr %l20, !tbaa !21
  br label %bb5
bb5:
  %t14 = load i1, ptr %l20, !tbaa !21
  br i1 %t14, label %bb6, label %bb7
bb6:
  %t15 = load ptr, ptr %l0, !tbaa !29
  %t17 = getelementptr { i64, [5 x i64] }, ptr %t15, i32 0, i32 1
  %t18 = getelementptr { %"compiler/source:Span", { i64, ptr }, { i64, ptr } }, ptr %t17, i32 0, i32 1
  %t19 = load { i64, ptr }, ptr %t18
  store { i64, ptr } %t19, ptr %l2, !tbaa !27
  %t21 = load ptr, ptr %l0, !tbaa !29
  %t23 = getelementptr { i64, [5 x i64] }, ptr %t21, i32 0, i32 1
  %t24 = getelementptr { %"compiler/source:Span", { i64, ptr }, { i64, ptr } }, ptr %t23, i32 0, i32 2
  %t25 = load { i64, ptr }, ptr %t24
  store { i64, ptr } %t25, ptr %l3, !tbaa !27
  br label %bb8
bb7:
  br label %bb25
bb8:
  %t27 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t29 = extractvalue { i64, ptr } %t27, 0
  %t31 = icmp eq i64 %t29, 1
  br i1 %t31, label %bb9, label %bb10
bb9:
  %t33 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t33, ptr %l31, !tbaa !27
  %t34 = getelementptr { i64, ptr }, ptr %l31, i32 0, i32 1
  %t35 = load ptr, ptr %t34, !tbaa !27
  %t36 = getelementptr i32, ptr %t35, i64 0
  %t37 = load i32, ptr %t36, !tbaa !33
  %t38 = load i32, ptr %l1, !tbaa !23
  %t41 = icmp eq i32 %t37, %t38
  store i1 %t41, ptr %l30, !tbaa !21
  br label %bb11
bb10:
  store i1 false, ptr %l30, !tbaa !21
  br label %bb11
bb11:
  %t43 = load i1, ptr %l30, !tbaa !21
  br i1 %t43, label %bb12, label %bb13
bb12:
  store i1 true, ptr %rv
  br label %ret
bb13:
  br label %bb14
bb14:
  %t45 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t45, ptr %l4, !tbaa !27
  store i64 0, ptr %l5, !tbaa !24
  %t47 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t49 = extractvalue { i64, ptr } %t47, 0
  store i64 %t49, ptr %l6, !tbaa !24
  br label %bb15
bb15:
  %t51 = load i64, ptr %l5, !tbaa !24
  %t52 = load i64, ptr %l6, !tbaa !24
  %t55 = icmp slt i64 %t51, %t52
  %t57 = xor i1 %t55, true
  br i1 %t57, label %bb16, label %bb17
bb16:
  br label %bb24
bb17:
  br label %bb18
bb18:
  %t59 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t59, ptr %l43, !tbaa !27
  %t60 = load i64, ptr %l5, !tbaa !24
  %t62 = getelementptr { i64, ptr }, ptr %l43, i32 0, i32 1
  %t63 = load ptr, ptr %t62, !tbaa !27
  %t64 = getelementptr ptr, ptr %t63, i64 %t60
  %t65 = load ptr, ptr %t64, !tbaa !39
  %t69 = load i32, ptr %l1, !tbaa !23
  %t72 = call i1 @compiler_2fgeneric_2ementionsName(ptr %v0, ptr %t65, i32 %t69)
  store i1 %t72, ptr %l49
  br label %bb19
bb19:
  %t73 = load i1, ptr %l49, !tbaa !21
  br i1 %t73, label %bb20, label %bb21
bb20:
  store i1 true, ptr %rv
  br label %ret
bb21:
  br label %bb22
bb22:
  br label %bb23
bb23:
  %t75 = load i64, ptr %l5, !tbaa !24
  %t77 = add i64 %t75, 1
  store i64 %t77, ptr %l5, !tbaa !24
  br label %bb15
bb24:
  store i1 false, ptr %rv
  br label %ret
bb25:
  %t80 = load ptr, ptr %l0, !tbaa !29
  store ptr %t80, ptr %l54, !tbaa !29
  store i1 false, ptr %l55, !tbaa !21
  %t81 = load ptr, ptr %l54, !tbaa !29
  %t82 = icmp ne ptr %t81, null
  br i1 %t82, label %bb26, label %bb27
bb26:
  %t84 = load ptr, ptr %l54, !tbaa !29
  %t85 = load i64, ptr %t84, !range !{i64 0, i64 8}
  %t87 = icmp eq i64 %t85, 3
  store i1 %t87, ptr %l55, !tbaa !21
  br label %bb27
bb27:
  %t88 = load i1, ptr %l55, !tbaa !21
  br i1 %t88, label %bb28, label %bb29
bb28:
  %t89 = load ptr, ptr %l0, !tbaa !29
  %t91 = getelementptr { i64, [5 x i64] }, ptr %t89, i32 0, i32 1
  %t92 = getelementptr { %"compiler/source:Span", ptr, i1, i1 }, ptr %t91, i32 0, i32 1
  %t93 = load ptr, ptr %t92
  store ptr %t93, ptr %l8, !tbaa !29
  br label %bb30
bb29:
  br label %bb32
bb30:
  %t95 = load ptr, ptr %l8, !tbaa !29
  %t97 = load i32, ptr %l1, !tbaa !23
  %t100 = call i1 @compiler_2fgeneric_2ementionsName(ptr %v0, ptr %t95, i32 %t97)
  store i1 %t100, ptr %l63
  br label %bb31
bb31:
  %t101 = load i1, ptr %l63, !tbaa !21
  store i1 %t101, ptr %rv
  br label %ret
bb32:
  %t102 = load ptr, ptr %l0, !tbaa !29
  store ptr %t102, ptr %l64, !tbaa !29
  store i1 false, ptr %l65, !tbaa !21
  %t103 = load ptr, ptr %l64, !tbaa !29
  %t104 = icmp ne ptr %t103, null
  br i1 %t104, label %bb33, label %bb34
bb33:
  %t106 = load ptr, ptr %l64, !tbaa !29
  %t107 = load i64, ptr %t106, !range !{i64 0, i64 8}
  %t109 = icmp eq i64 %t107, 4
  store i1 %t109, ptr %l65, !tbaa !21
  br label %bb34
bb34:
  %t110 = load i1, ptr %l65, !tbaa !21
  br i1 %t110, label %bb35, label %bb36
bb35:
  %t111 = load ptr, ptr %l0, !tbaa !29
  %t113 = getelementptr { i64, [5 x i64] }, ptr %t111, i32 0, i32 1
  %t114 = getelementptr { %"compiler/source:Span", ptr, i1 }, ptr %t113, i32 0, i32 1
  %t115 = load ptr, ptr %t114
  store ptr %t115, ptr %l9, !tbaa !29
  br label %bb37
bb36:
  br label %bb39
bb37:
  %t117 = load ptr, ptr %l9, !tbaa !29
  %t118 = load i32, ptr %l1, !tbaa !23
  %t121 = call i1 @compiler_2fgeneric_2ementionsName(ptr %v0, ptr %t117, i32 %t118)
  store i1 %t121, ptr %l72
  br label %bb38
bb38:
  %t122 = load i1, ptr %l72, !tbaa !21
  store i1 %t122, ptr %rv
  br label %ret
bb39:
  %t123 = load ptr, ptr %l0, !tbaa !29
  store ptr %t123, ptr %l73, !tbaa !29
  store i1 false, ptr %l74, !tbaa !21
  %t124 = load ptr, ptr %l73, !tbaa !29
  %t125 = icmp ne ptr %t124, null
  br i1 %t125, label %bb40, label %bb41
bb40:
  %t127 = load ptr, ptr %l73, !tbaa !29
  %t128 = load i64, ptr %t127, !range !{i64 0, i64 8}
  %t130 = icmp eq i64 %t128, 5
  store i1 %t130, ptr %l74, !tbaa !21
  br label %bb41
bb41:
  %t131 = load i1, ptr %l74, !tbaa !21
  br i1 %t131, label %bb42, label %bb43
bb42:
  %t132 = load ptr, ptr %l0, !tbaa !29
  %t134 = getelementptr { i64, [5 x i64] }, ptr %t132, i32 0, i32 1
  %t135 = getelementptr { %"compiler/source:Span", ptr }, ptr %t134, i32 0, i32 1
  %t136 = load ptr, ptr %t135
  store ptr %t136, ptr %l10, !tbaa !29
  br label %bb48
bb43:
  %t138 = load ptr, ptr %l0, !tbaa !29
  store ptr %t138, ptr %l79, !tbaa !29
  store i1 false, ptr %l80, !tbaa !21
  %t139 = load ptr, ptr %l79, !tbaa !29
  %t140 = icmp ne ptr %t139, null
  br i1 %t140, label %bb44, label %bb45
bb44:
  %t142 = load ptr, ptr %l79, !tbaa !29
  %t143 = load i64, ptr %t142, !range !{i64 0, i64 8}
  %t145 = icmp eq i64 %t143, 7
  store i1 %t145, ptr %l80, !tbaa !21
  br label %bb45
bb45:
  %t146 = load i1, ptr %l80, !tbaa !21
  br i1 %t146, label %bb46, label %bb47
bb46:
  %t147 = load ptr, ptr %l0, !tbaa !29
  %t149 = getelementptr { i64, [5 x i64] }, ptr %t147, i32 0, i32 1
  %t150 = getelementptr { %"compiler/source:Span", ptr }, ptr %t149, i32 0, i32 1
  %t151 = load ptr, ptr %t150
  store ptr %t151, ptr %l10, !tbaa !29
  br label %bb48
bb47:
  br label %bb50
bb48:
  %t153 = load ptr, ptr %l10, !tbaa !29
  %t155 = load i32, ptr %l1, !tbaa !23
  %t158 = call i1 @compiler_2fgeneric_2ementionsName(ptr %v0, ptr %t153, i32 %t155)
  store i1 %t158, ptr %l88
  br label %bb49
bb49:
  %t159 = load i1, ptr %l88, !tbaa !21
  store i1 %t159, ptr %rv
  br label %ret
bb50:
  %t160 = load ptr, ptr %l0, !tbaa !29
  store ptr %t160, ptr %l89, !tbaa !29
  store i1 false, ptr %l90, !tbaa !21
  %t161 = load ptr, ptr %l89, !tbaa !29
  %t162 = icmp ne ptr %t161, null
  br i1 %t162, label %bb51, label %bb52
bb51:
  %t164 = load ptr, ptr %l89, !tbaa !29
  %t165 = load i64, ptr %t164, !range !{i64 0, i64 8}
  %t167 = icmp eq i64 %t165, 6
  store i1 %t167, ptr %l90, !tbaa !21
  br label %bb52
bb52:
  %t168 = load i1, ptr %l90, !tbaa !21
  br i1 %t168, label %bb53, label %bb54
bb53:
  %t169 = load ptr, ptr %l0, !tbaa !29
  %t171 = getelementptr { i64, [5 x i64] }, ptr %t169, i32 0, i32 1
  %t172 = getelementptr { %"compiler/source:Span", { i64, ptr } }, ptr %t171, i32 0, i32 1
  %t173 = load { i64, ptr }, ptr %t172
  store { i64, ptr } %t173, ptr %l11, !tbaa !27
  br label %bb55
bb54:
  br label %bb68
bb55:
  %t175 = load { i64, ptr }, ptr %l11, !tbaa !27
  store { i64, ptr } %t175, ptr %l12, !tbaa !27
  store i64 0, ptr %l13, !tbaa !24
  %t177 = load { i64, ptr }, ptr %l12, !tbaa !27
  %t179 = extractvalue { i64, ptr } %t177, 0
  store i64 %t179, ptr %l14, !tbaa !24
  br label %bb56
bb56:
  %t181 = load i64, ptr %l13, !tbaa !24
  %t182 = load i64, ptr %l14, !tbaa !24
  %t185 = icmp slt i64 %t181, %t182
  %t187 = xor i1 %t185, true
  br i1 %t187, label %bb57, label %bb58
bb57:
  br label %bb67
bb58:
  br label %bb59
bb59:
  %t189 = load { i64, ptr }, ptr %l12, !tbaa !27
  store { i64, ptr } %t189, ptr %l102, !tbaa !27
  %t190 = load i64, ptr %l13, !tbaa !24
  %t192 = getelementptr { i64, ptr }, ptr %l102, i32 0, i32 1
  %t193 = load ptr, ptr %t192, !tbaa !27
  %t194 = getelementptr ptr, ptr %t193, i64 %t190
  %t195 = load ptr, ptr %t194, !tbaa !39
  store ptr %t195, ptr %l15, !tbaa !29
  %t197 = load ptr, ptr %l15, !tbaa !29
  %t199 = getelementptr %"compiler/ast:Path", ptr %t197, i32 0, i32 1
  %t200 = load { i64, ptr }, ptr %t199, !tbaa !27
  %t202 = extractvalue { i64, ptr } %t200, 0
  %t204 = icmp eq i64 %t202, 1
  br i1 %t204, label %bb60, label %bb61
bb60:
  %t206 = load ptr, ptr %l15, !tbaa !29
  %t208 = getelementptr %"compiler/ast:Path", ptr %t206, i32 0, i32 1
  %t209 = load { i64, ptr }, ptr %t208, !tbaa !27
  store { i64, ptr } %t209, ptr %l111, !tbaa !27
  %t210 = getelementptr { i64, ptr }, ptr %l111, i32 0, i32 1
  %t211 = load ptr, ptr %t210, !tbaa !27
  %t212 = getelementptr i32, ptr %t211, i64 0
  %t213 = load i32, ptr %t212, !tbaa !33
  %t214 = load i32, ptr %l1, !tbaa !23
  %t217 = icmp eq i32 %t213, %t214
  store i1 %t217, ptr %l109, !tbaa !21
  br label %bb62
bb61:
  store i1 false, ptr %l109, !tbaa !21
  br label %bb62
bb62:
  %t219 = load i1, ptr %l109, !tbaa !21
  br i1 %t219, label %bb63, label %bb64
bb63:
  store i1 true, ptr %rv
  br label %ret
bb64:
  br label %bb65
bb65:
  br label %bb66
bb66:
  %t221 = load i64, ptr %l13, !tbaa !24
  %t223 = add i64 %t221, 1
  store i64 %t223, ptr %l13, !tbaa !24
  br label %bb56
bb67:
  store i1 false, ptr %rv
  br label %ret
bb68:
  br i1 true, label %bb69, label %bb70
bb69:
  br label %bb71
bb70:
  br label %bb72
bb71:
  store i1 false, ptr %rv
  br label %ret
bb72:
  call void @__olang_check_failed(ptr @olang_loc_37cc75ab1588e90a_e29aa2825954cfde)
  unreachable
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

@.d0 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
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
@.d1 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d2 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
declare void @__olang_check_failed(ptr) cold noreturn
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
@__olang_empty_array = external constant [16 x i64]
declare ptr @__olang_scope_of(ptr, ptr) noinline
@.d3 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"I64" }>, align 8
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
define internal i1 @olang_lambda_4(ptr %env, i32 %a0, i32 %a1) #0 {
entry:
  %l6 = alloca i1
  %rv = alloca i1
  %cp0 = getelementptr { ptr, ptr }, ptr %env, i32 0, i32 0
  %cv0 = load ptr, ptr %cp0, !tbaa !28
  %vq0 = getelementptr { ptr, ptr }, ptr %env, i32 0, i32 1
  %vr0 = load ptr, ptr %vq0, !tbaa !28
  %vc0 = call ptr @__olang_capture_scope(ptr %vr0)
  br label %start
start:
  br label %bb0
bb0:
  %t7 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eerrBefore(ptr %vc0, ptr %cv0, i32 %a0, i32 %a1)
  store i1 %t7, ptr %l6
  br label %bb1
bb1:
  %t8 = load i1, ptr %l6, !tbaa !21
  store i1 %t8, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

@.d5 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d6 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"Len" }>, align 8
@.d7 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d8 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d9 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d10 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c".Len()" }>, align 8
@.d11 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d12 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"Type" }>, align 8
@.d13 = private constant <{ i64, [60 x i8] }> <{ i64 0, [60 x i8] c"only a field, a parameter, a result or a function has a Type" }>, align 8
@.d14 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"Base" }>, align 8
@.d15 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d16 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d17 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c"Element" }>, align 8
@.d18 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d19 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d20 = private constant <{ i64, [56 x i8] }> <{ i64 0, [56 x i8] c"only an array, a Columns and a ColumnVec have an Element" }>, align 8
@.d21 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"Target" }>, align 8
@.d22 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d23 = private constant <{ i64, [29 x i8] }> <{ i64 0, [29 x i8] c"only a reference has a Target" }>, align 8
@.d24 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"Errors" }>, align 8
@.d25 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d26 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d27 = private constant <{ i64, [31 x i8] }> <{ i64 0, [31 x i8] c"only a function type has Errors" }>, align 8
@.d28 = private constant <{ i64, [99 x i8] }> <{ i64 0, [99 x i8] c"a type's reflected types are Base, Element and Target, a field's, a parameter's and a result's Type" }>, align 8
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

declare noalias ptr @__olang_scope_alloc_zeroed(ptr, i64)
@olang_2esole_2eArray_3ccompiler_2fast_3aPath_26_3e_2e_2d1 = weak hidden constant i1 false
declare ptr @__olang_region_or(ptr, ptr)
@.d29 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d30 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"U64" }>, align 8
@.d31 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"true" }>, align 8
declare ptr @llvm.coro.promise(ptr, i32, i1)
@.d32 = private constant <{ i64, [20 x i8] }> <{ i64 0, [20 x i8] c"std/prelude/iterator" }>, align 8
@.d33 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c"Iterator" }>, align 8
@.d34 = private constant <{ i64, [20 x i8] }> <{ i64 0, [20 x i8] c"std/prelude/iterator" }>, align 8
@.d35 = private constant <{ i64, [9 x i8] }> <{ i64 0, [9 x i8] c"Generator" }>, align 8
declare void @llvm.memcpy.p0.p0.i64(ptr, ptr, i64, i1)
@.d36 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d37 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"." }>, align 8
@.d38 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"Array" }>, align 8
@.d39 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"I64" }>, align 8
@.d40 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"I64" }>, align 8
@.d41 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"Bool" }>, align 8
@.d42 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"Array" }>, align 8
@.d43 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"Bool" }>, align 8
@olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1 = weak hidden constant i1 false
declare ptr @__olang_region_make(ptr) noinline
@.d44 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"refl:" }>, align 8
declare i64 @__olang_fmt_i64(ptr, i64)
@.d45 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c":" }>, align 8
@.d46 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d47 = private constant <{ i64, [16 x i8] }> <{ i64 0, [16 x i8] c"std/prelude/text" }>, align 8
@.d48 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"String" }>, align 8
@.d49 = private constant <{ i64, [9 x i8] }> <{ i64 0, [9 x i8] c"FieldInfo" }>, align 8
@.d50 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c"CaseInfo" }>, align 8
@.d51 = private constant <{ i64, [9 x i8] }> <{ i64 0, [9 x i8] c"ParamInfo" }>, align 8
@.d52 = private constant <{ i64, [10 x i8] }> <{ i64 0, [10 x i8] c"ResultInfo" }>, align 8
@.d53 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c"FuncInfo" }>, align 8
@.d54 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@olang_2esole_2ecompiler_2fgeneric_3agenRoots_2e0 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2fgeneric_3agenRoots_2e1 = weak hidden constant i1 false
declare i64 @llvm.ctpop.i64(i64)
declare i64 @llvm.cttz.i64(i64, i1)
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
declare i1 @compiler_2fgeneric_2eisErrsArg(ptr %v0, ptr %a0)
declare i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aChar_2eIsLetter(i8 %a0)
declare i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aChar_2eIsDigit(i8 %a0)
@olang_loc_6056ece582ef2ce2_c67ea0947e494cde = external constant [0 x i8]
declare void @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eallFns(ptr %v0, ptr %a0)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2ector(ptr %v0, i64 %a0)
declare void @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eanyCovers(ptr %v0, ptr %v1, ptr %a0, i32 %a1, ptr %a2, i64 %a3)
declare { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2eToArray_3ccompiler_2ftypes_3aTypeId_3e(ptr %v0, ptr %v1, ptr %a0)
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eResolve(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, ptr %a2)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2ePush_3ccompiler_2ftypes_3aTypeId_3e(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eList(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eTuple(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eIsColumns(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eIsColumnVec(ptr %v0, ptr %a0, i32 %a1)
@G_2ecompiler_2ftypes_2eUnknownT = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\00\00\00\00" }>, align 8
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eArgs(ptr %v0, ptr %a0, i32 %a1)
declare { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare i64 @compiler_2fgeneric_2eCtorOwner(i32 %a0)
declare { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2eGet_3cI64_2c_20I64_3e(ptr %v0, ptr %a0, i64 %a1)
declare i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eVarCount(ptr %v0, ptr %a0, i64 %a1)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aNameId_3e_2ector(ptr %v0, i64 %a0)
@olang_loc_d755241afe0bd865_b911a572fa08ed19 = external constant [0 x i8]
@olang_loc_716010ab97145947_4b2ed26da3fa7223 = external constant [0 x i8]
declare i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aNameId_3e_2eHas_3ccompiler_2fsource_3aNameId_3e(ptr %v0, ptr %a0, i32 %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aNameId_3e_2ePush_3ccompiler_2fsource_3aNameId_3e(ptr %v0, ptr %a0, i32 %a1)
declare { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aNameId_3e_2eToArra_H4d02a0b2e27e8f31ffc99daa43750593(ptr %v0, ptr %v1, ptr %a0)
declare void @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eaddVars(ptr %v0, ptr %v1, ptr %a0, i64 %a1, { i64, ptr } %a2)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %a0, i64 %a1)
declare void @compiler_2fgeneric_3aContext_2ector(ptr %out, ptr %v0, i64 %a0, i64 %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aNameId_3e_2eLen_3ccompiler_2fsource_3aNameId_3e(ptr %v0, ptr %a0)
declare i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aNameId_3e_2eAt_3ccompiler_2fsource_3aNameId_3e(ptr %v0, ptr %a0, i64 %a1)
@G_2ecompiler_2ftypes_2eReadOnly = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>, align 8
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eVar(ptr %v0, ptr %a0, i64 %a1, i64 %a2, i64 %a3)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fsource_3aNameId_2c_20compil_H943a9bb03970f71acf57214091669a7d(ptr %v0, ptr %a0, i32 %a1, i32 %a2)
declare void @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2econstraint(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, ptr %a2)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eDefaultMethods(ptr %v0, ptr %v1, ptr %a0, i32 %a1, i32 %a2)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %a0)
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2edescDecl(ptr %v0, ptr %a0, i64 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePrim(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
@G_2ecompiler_2fgeneric_2eDescField = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\01\00\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2fgeneric_2eDescCase = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\02\00\00\00\00\00\00\00" }>, align 8
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eConst(ptr %v0, ptr %a0, i32 %a1, i64 %a2)
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eInstance(ptr %v0, ptr %a0, i32 %a1, i32 %a2)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aDeclId_3e_2ector(ptr %v0, i64 %a0)
declare void @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eentriesOf(ptr %v0, ptr %v1, ptr %v2, ptr %a0, i32 %a1, ptr %a2, ptr %a3)
@G_2ecompiler_2ftypes_2eDefaultErrT = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\10\00\00\00" }>, align 8
declare void @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2emergeEntries(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, ptr %a2)
declare void @std_2fprelude_2farray_2eArray_3ccompiler_2ftypes_3aTypeId_3e_2eSort_3ccompiler_2ftypes_3aTypeId_2c_20_3f_3e(ptr %v0, ptr %v1, { i64, ptr } %a0, ptr %a1c, ptr %a1e)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrSet(ptr %v0, ptr %a0, i32 %a1)
declare %"compiler/generic:fnRow" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fgeneric_3afnRow_3e_2eAt_3ccompiler_2fgeneric_3afnRow_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare void @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2efnsIn(ptr %v0, ptr %a0, i64 %a1)
declare %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" @std_2fpair_3aPair_3cI64_2c_20I64_3e_2ector(ptr %v0, i64 %a0, i64 %a1)
declare { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H5696e1a008d256bf9453cde2b49c6c45(ptr %v0, ptr %a0, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %a1)
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eDeclWord(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eBody(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclKindOf(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eBase(ptr %v0, ptr %a0, i32 %a1)
declare %"compiler/generic:instance" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fgeneric_3ainstance_3e_2eAt__Hf3965267bb92d0ee7aeaa2339e2e46fa(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare { i64, ptr } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eErrorMembers(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare { i64, ptr } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2etext(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
declare { i64, ptr } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2elenPath(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, i64 %a2)
@olang_loc_7f496bc4f965d188_939cdcc04f80a0bc = external constant [0 x i8]
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eReferent(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eFuncTag(ptr %v0, ptr %a0, i32 %a1)
declare i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2etypeKey(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2erecvApplies(ptr %v0, ptr %a0, i64 %a1, i32 %a2)
declare i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2erecvExact(ptr %v0, ptr %a0, i64 %a1)
declare i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eextends(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eSig(ptr %v0, ptr %a0, i64 %a1)
declare i64 @compiler_2fgeneric_2eFnOwner(i64 %a0)
declare %"compiler/generic:Binding" @compiler_2fgeneric_3aBinding_2ector(ptr %v0, i64 %a0, i64 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParams(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eUnifyArg(ptr %v0, ptr %v1, ptr %a0, i32 %a1, i32 %a2, ptr %a3, i1 %a4, i1 %a5)
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eSubst(ptr %v0, ptr %a0, i32 %a1, i64 %a2, i32 %a3)
declare %"compiler/generic:Desc" @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eDescOf(ptr %v0, ptr %a0, i32 %a1)
@G_2ecompiler_2fgeneric_2eDescNone = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>, align 8
declare { i32, { i64, ptr } } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eDescType(ptr %v0, ptr %v1, ptr %a0, %"compiler/generic:Desc" %a1)
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eReflUnder(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eElem(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrors(ptr %v0, ptr %a0, i32 %a1)
@G_2ecompiler_2fgeneric_2eDescFunc = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\05\00\00\00\00\00\00\00" }>, align 8
declare %"std/prelude/text:StringBuilder" @std_2fprelude_2ftext_3aStringBuilder_2ector(ptr %v0)
declare void @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2ereflName(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i32 %a2)
declare { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %v0, ptr %v1, ptr %a0)
declare %"compiler/generic:Unmet" @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eMissing(ptr %v0, ptr %a0, i32 %a1, i32 %a2, i1 %a3, i64 %a4)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eLength(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eInfer(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1, ptr %a2, ptr %a3)
declare i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eLengthsOnly(ptr %v0, ptr %a0, i32 %a1, i32 %a2)
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eunsubst(ptr %v0, ptr %v1, ptr %a0, i32 %a1, i64 %a2, { i64, ptr } %a3)
@olang_loc_6578d57707832f1c_86539f83bfff8b08 = external constant [0 x i8]
declare void @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eaddFns(ptr %v0, ptr %v1, ptr %a0, i64 %a1, { i64, ptr } %a2)
@olang_loc_8ca182a09b46660b_89b944af5f42b927 = external constant [0 x i8]
@olang_loc_e2462b885589950a_643da267921b7c76 = external constant [0 x i8]
@olang_loc_c23c218140effa50_4db4b783113412a4 = external constant [0 x i8]
@olang_loc_7e185c750e76a77d_541671d994da32b1 = external constant [0 x i8]
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2epayload(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, ptr %a2, i32 %a3)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eAnonEnum(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1, i32 %a2, { i64, ptr } %a3)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsRef(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eNeedsDrop(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eUnique(ptr %v0, ptr %a0, i32 %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2eLen_3ccompiler_2ftypes_3aTypeId_3e(ptr %v0, ptr %a0)
declare i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2eAt_3ccompiler_2ftypes_3aTypeId_3e(ptr %v0, ptr %a0, i64 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrOf(ptr %v0, ptr %a0, i32 %a1)
declare i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrMask(ptr %v0, ptr %a0, i32 %a1)
declare i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eA(ptr %v0, ptr %a0, i32 %a1)
declare i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eB(ptr %v0, ptr %a0, i32 %a1)
declare i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclModule(ptr %v0, ptr %a0, i32 %a1)
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H7bcf2aeb09afa796f4333e6ec8c3f63f(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eLess(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclName(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eErrorItemKnown(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, ptr %a2)
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eerrorSetItem(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, ptr %a2)
declare i32 @compiler_2fsource_2ecompiler_2fsource_3aNames_2eIntern(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare { i32, i32 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fsource_3aNameId_2c_20compil_Hfd0413fe7fd4e5914f6cad5b418b7a6d(ptr %v0, ptr %a0, i32 %a1)
@G_2ecompiler_2fgeneric_2eFolded = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>, align 8
declare i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eConstValue(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eConstType(ptr %v0, ptr %a0, i32 %a1)
declare %"compiler/generic:folded" @compiler_2fgeneric_3afolded_2ector(ptr %v0, i64 %a0, i64 %a1, i32 %a2)
@G_2ecompiler_2fgeneric_2ePending = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\01\00\00\00\00\00\00\00" }>, align 8
declare %"compiler/generic:folded" @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eevalConversion(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1, ptr %a2, { i64, ptr } %a3)
@olang_loc_886433b88e29f460_704fa105f63225d4 = external constant [0 x i8]
declare { i64, ptr } @compiler_2fsource_2ecompiler_2fsource_3aSource_2eTextOf(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1)
declare { i32, i64 } @std_2fprelude_2ftext_3aRadix_2ector(ptr %v0, i64 %a0)
declare { i32, i64 } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eParseInt(ptr %v0, { i64, ptr } %a0, i64 %a1)
declare { i32, i64 } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eParseUint(ptr %v0, { i64, ptr } %a0, i64 %a1)
declare %"compiler/generic:folded" @compiler_2fgeneric_2efolded_2eunfolded()
@G_2ecompiler_2ftypes_2eBoolT = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\02\00\00\00" }>, align 8
@olang_loc_cbe34de7626751c6_f090548a7d71387a = external constant [0 x i8]
declare %"std/prelude/iterator:ViewGenerator.00c7c71992d6e1815cd052c47b979cdd" @compiler_2fgeneric_2eFieldDecls.walk(ptr %v0, ptr %v1, ptr %a0)
declare { i32, ptr } @std_2fprelude_2fiterator_2estd_2fprelude_2fiterator_3aViewGenerator_3ccompiler_2fast_3aV_Hf179e857cb72c72900f4614cd5df5a25(ptr %v0, ptr %a0)
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eslotOf(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i32 %a2)
declare { i32, i32 } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFindDecl(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1, { i64, ptr } %a2)
declare { i32, i1 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2eGet_3cI64_2c_20Bool_3e(ptr %v0, ptr %a0, i64 %a1)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2ePut_3cI64_2c_20Bool_3e(ptr %v0, ptr %a0, i64 %a1, i1 %a2)
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fnames_3aTable_26_3e_2_Hc2ccbbc5952c057a60f016e9cc1626d2(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare %"compiler/names:Entry" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fnames_3aEntry_3e_2eAt_3ccompiler_2fnames_3aEntry_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare { i64, [3 x i64] } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eat(ptr %v0, ptr %a0, i64 %a1, %"compiler/source:Span" %a2)
declare { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eCanon(ptr %v0, ptr %v1, ptr %v2, ptr %a0, i32 %a1)
declare { i64, ptr } @compiler_2fmsgs_2eTok(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eTypeHoldsItself(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eError(ptr %v0, ptr %v1, ptr %a0, { i64, [3 x i64] } %a1, %"compiler/diagmsg:Msg" %a2)
declare i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fsource_3aNameId_2c_20compil_He6be2b0836caba7ddc59483ff74db438(ptr %v0, ptr %a0, i32 %a1)
declare i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2efile(ptr %v0, ptr %a0, i64 %a1)
declare %"compiler/names:Ref" @compiler_2fnames_2ecompiler_2fnames_3aResolver_2eUse(ptr %v0, ptr %a0, i64 %a1, i32 %a2)
@olang_loc_e8d533ef83292235_9ed3ad18ce9fa601 = external constant [0 x i8]
declare i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2emayHold(ptr %v0, ptr %a0, i32 %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2ePromiseKeepsValue(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare void @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2epromiseErr(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1, ptr %a2, %"compiler/diagmsg:Msg" %a3)
@G_2ecompiler_2ftypes_2eKeepsHome = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\FF\FF\FF\FF\FF\FF\FF\FF" }>, align 8
declare i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2epromiseParam(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1, ptr %a2, ptr %a3, i64 %a4)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2ePromiseKeepsSelf(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2ePromiseKeepsInValue(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2ePromiseKeepsPath(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1)
declare { i64, ptr } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFieldNames(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare i1 @std_2fprelude_2farray_2eArray_3ccompiler_2fsource_3aNameId_3e_2eHas_3ccompiler_2fsource_3aNameId_3e(ptr %v0, { i64, ptr } %a0, i32 %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2ePromiseKeepsField(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eHasBody(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eFields(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2ecallType(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1, ptr %a2, ptr %a3)
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2earrayMade(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1, ptr %a2, i32 %a3, { i64, ptr } %a4)
@olang_loc_5761ebb5a70d3685_c26bb19c18fbb051 = external constant [0 x i8]
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2emeetTyped(ptr %v0, ptr %a0, i32 %a1, i32 %a2)
declare void @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2edeclContext(ptr %out, ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare i64 @compiler_2fgeneric_2eDeclOwner(i32 %a0)
declare i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eIsClosedTrait(ptr %v0, ptr %a0, i32 %a1)
declare i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2eHas_3ccompiler_2ftypes_3aTypeId_3e(ptr %v0, ptr %a0, i32 %a1)
@olang_loc_7c1b9fa6eff766ef_29392a9ca6e4fd4b = external constant [0 x i8]
declare ptr @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eanyGlobal(ptr %v0, ptr %v1, ptr %a0, i64 %a1, i32 %a2)
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eGlobalStorage(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, ptr %a2, i32 %a3)
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2ereflHead(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i32 %a2)
declare %"compiler/names:Ref" @compiler_2fnames_2ecompiler_2fnames_3aResolver_2eMember(ptr %v0, ptr %a0, i64 %a1, i32 %a2)
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eDeclFor(ptr %v0, ptr %a0, i64 %a1, i64 %a2)
declare i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclParams(ptr %v0, ptr %a0, i32 %a1)
@olang_loc_147ec6f96d1bbdbe_f0c6b18ae87ff0f2 = external constant [0 x i8]
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eApply(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, i32 %a2, { i64, ptr } %a3)
declare i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eIsErrVar(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eArray(ptr %v0, ptr %a0, i32 %a1, i32 %a2)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eNamed(ptr %v0, ptr %a0, i32 %a1, i32 %a2)
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eErrValOfType(ptr %v0, ptr %a0, i32 %a1)
@olang_loc_d7edc9d7694f5654_b586e68500b77530 = external constant [0 x i8]
declare i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2elevelCount(ptr %v0, ptr %a0, i32 %a1, i1 %a2)
@olang_loc_c54f5b605d713a50_750f1643c90b13ac = external constant [0 x i8]
declare void @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2ereprReady(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eClosed(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eConstExpr(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
@olang_loc_53962b7b4c8887bb_135b696c144e88ef = external constant [0 x i8]
declare %"compiler/generic:pattern" @compiler_2fgeneric_3apattern_2ector(ptr %v0, ptr %v1, ptr %v2, ptr %a0, i64 %a1, i64 %a2, i32 %a3, ptr %a4)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2fgeneric_3apattern__Hf2f2cd44709958e8fc0de9f437e62e6b(ptr %v0, ptr %v1, ptr %a0, i64 %a1, %"compiler/generic:pattern" %a2)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eReflNoType(ptr %v0, ptr %v1, ptr %v2, ptr %v3, { i64, ptr } %a0, { i64, ptr } %a1, { i64, ptr } %a2)
declare i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eErrorOncePerLine(ptr %v0, ptr %v1, ptr %a0, { i64, [3 x i64] } %a1, %"compiler/diagmsg:Msg" %a2)
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eparamTypes(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, { i64, ptr } %a2)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRecord(ptr %v0, ptr %a0, i32 %a1)
@olang_loc_a096310d429842c5_b38f3d186616d6e9 = external constant [0 x i8]
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %v0, i64 %a0)
@G_2ecompiler_2ftypes_2eOwnScope = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\FF\FF\FF\FF\FF\FF\FF\FF" }>, align 8
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %a0, i64 %a1)
@G_2ecompiler_2ftypes_2eVoidT = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\01\00\00\00" }>, align 8
@olang_loc_54bd96e956108342_da8868fc65879bde = external constant [0 x i8]
@olang_loc_34a33f37e9dd7af7_611a685a34d67113 = external constant [0 x i8]
@G_2ecompiler_2ftypes_2eFromTypeVar = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\FE\FF\FF\FF\FF\FF\FF\FF" }>, align 8
@G_2ecompiler_2ftypes_2eNoreturnT = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\11\00\00\00" }>, align 8
@G_2ecompiler_2ftypes_2eRoleFn = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>, align 8
declare { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eToArray_3cI64_3e(ptr %v0, ptr %v1, ptr %a0)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eScopes(ptr %v0, ptr %v1, ptr %v2, ptr %a0, i64 %a1, { i64, ptr } %a2, { i64, ptr } %a3)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eFunc(ptr %v0, ptr %a0, i32 %a1, i32 %a2, i32 %a3, i32 %a4, i64 %a5, i1 %a6, i32 %a7, i64 %a8)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrSetItems(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2epreludeType(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1, { i64, ptr } %a2)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePlain(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eSame(ptr %v0, ptr %a0, i32 %a1, i32 %a2)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParts(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eunendedIn(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1, ptr %a2, i64 %a3, i1 %a4)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eShapeCases(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eunendedNamed(ptr %v0, ptr %v1, ptr %a0, i32 %a1, ptr %a2, i64 %a3, i1 %a4)
@olang_loc_e6b22f697499a1dd_b3ee10b0849b47b1 = external constant [0 x i8]
declare %"std/prelude/map:MapIter.bf5835bb10600fe6a7fc1da14a6360d9" @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fsource_3aNameId_2c_20compil_Ha72624ba64524ee3315305b5d1bfb369(ptr %v0, ptr %v1, ptr %a0)
declare { i32, %"std/prelude/map:MapEntry.91de8c8eb84d52d1e58996aec31d85aa" } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMapIter_3ccompiler_2fsource_3aNameId_2c_20co_H6cf169b12565f300e9fe11f1c8d55061(ptr %v0, ptr %a0)
declare i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eBits(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsInt(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsUnsigned(ptr %v0, ptr %a0, i32 %a1)
declare i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3agenRoots_2eroot(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
@olang_loc_5dbf3bacf45043d5_48a0238198051071 = external constant [0 x i8]
declare void @compiler_2fgeneric_2ecompiler_2fgeneric_3agenRoots_2estmts(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
@olang_loc_c61310131704fb2f_f27aa7cba89c0bc3 = external constant [0 x i8]
declare void @compiler_2fgeneric_2ecompiler_2fgeneric_3agenRoots_2edeclared(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i32 @compiler_2fgeneric_2ebaseName(ptr %v0, ptr %a0)
declare void @compiler_2fgeneric_2ecompiler_2fgeneric_3agenRoots_2egrow(ptr %v0, ptr %a0, i32 %a1, i64 %a2)
declare void @compiler_2fgeneric_2ecompiler_2fgeneric_3agenRoots_2estored(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare void @compiler_2fgeneric_2ecompiler_2fgeneric_3agenRoots_2ebranches(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare void @compiler_2fgeneric_2ecompiler_2fgeneric_3agenRoots_2ematched(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
@olang_loc_df5307d3a8bec99f_effac078aaeab34b = external constant [0 x i8]
@olang_loc_3ddf6b030a58b0c8_e2856651acfeaffc = external constant [0 x i8]
declare i1 @compiler_2fgeneric_2eborrowableElem(ptr %v0, ptr %a0)
@G_2ecompiler_2fgeneric_2eGenPerTurn = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\FF\FF\FF\FF\FF\FF\FF\FF" }>, align 8
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cBool_3e_2ector(ptr %v0, i64 %a0)
@olang_loc_2a0d238d6764ffeb_7f54c8a7a483f2b7 = external constant [0 x i8]
@olang_loc_b16df8c761b5d07c_6405a14de8d58098 = external constant [0 x i8]
declare i1 @compiler_2fgeneric_2ebyValueParam(ptr %v0, ptr %a0)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2ePush_3cBool_3e(ptr %v0, ptr %a0, i1 %a1)
declare { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eToArray_3cBool_3e(ptr %v0, ptr %v1, ptr %a0)
declare %"compiler/generic:genRoots" @compiler_2fgeneric_3agenRoots_2ector(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1)
@G_2ecompiler_2fgeneric_2eGenLocalBit = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\00\00\00\00\00\00\00\40" }>, align 8
@G_2ecompiler_2fgeneric_2eGenFromReturn = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\FE\FF\FF\FF\FF\FF\FF\FF" }>, align 8
@olang_loc_37cc75ab1588e90a_e29aa2825954cfde = external constant [0 x i8]
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

attributes #0 = { null_pointer_is_valid "target-cpu"="sapphirerapids" "target-features"="+64bit,+adx,+aes,+amx-bf16,+amx-int8,+amx-tile,+avx,+avx2,-avx512bf16,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512fp16,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+avxvnni,+bmi,+bmi2,+cldemote,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+evex512,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+movdir64b,+movdiri,+pclmul,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+rtm,+sahf,+serialize,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+tsxldtrk,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-complex,-amx-fp16,-avx10.1-256,-avx10.1-512,-avx512er,-avx512pf,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnniint16,-avxvnniint8,-clzero,-cmpccxadd,-enqcmd,-fma4,-hreset,-kl,-lwp,-mwaitx,-pconfig,-pku,-prefetchi,-prefetchwt1,-ptwrite,-raoint,-rdpru,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-uintr,-usermsr,-waitpkg,-widekl,-xop" "prefer-vector-width"="512" nounwind }
