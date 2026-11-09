source_filename = "compiler_generic-1.quick.ll"
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
%"std/prelude/iterator:ViewGenerator.00c7c71992d6e1815cd052c47b979cdd" = type { { ptr, ptr } }
%"compiler/generic:fnRow" = type { i64, ptr, i1 }
%"compiler/generic:Program" = type { ptr, ptr, %"compiler/types:Table", %"compiler/facts:Table", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"compiler/generic:Origin", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"compiler/types:Table" = type { ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" = type { { i64, ptr }, i64, i64 }
%"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" = type { { i64, ptr }, { i64, ptr }, { i64, ptr }, i64, i64, i64 }
%"compiler/facts:Table" = type { %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, i64 }
%"compiler/generic:Origin" = type { i64, %"compiler/source:Span", i64, i32 }
%"compiler/source:Span" = type { i32, i32 }
%"compiler/ast:Func" = type { %"compiler/source:Span", ptr, i32, ptr, { i64, ptr }, { i64, ptr }, i1, i1, { i64, ptr }, ptr, i32 }
%"compiler/generic:Unmet" = type { i64, i32, i32, i1, i1, i1 }
%"compiler/generic:Context" = type { i64, i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"compiler/generic:Binding" = type { i64, i64, { i64, ptr }, { i64, ptr }, { i64, ptr } }
%"compiler/ast:TypeDecl" = type { i32, { i64, ptr }, i1, ptr, { i64, ptr }, i32, i1 }
%"compiler/generic:Desc" = type { i64, i32, i64, i64 }
%"std/pair:Pair.d0636885f2b44490dbc61e56fa468a20" = type { i64, i32 }
%"std/prelude/text:StringBuilder" = type { %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/generic:instance" = type { i64, i32, i32, { i64, ptr }, { i64, ptr }, %"compiler/generic:Origin" }
%"compiler/load:Loader" = type { { i64, ptr }, ptr, ptr, ptr, ptr, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", { i64, ptr }, { i64, ptr }, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", { i64, ptr }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/load:Module" = type { { i64, ptr }, { i64, ptr }, { i64, ptr }, i1, i64, i1, ptr, ptr, { i64, ptr }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr, ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr, ptr, ptr, i1, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, { i64, ptr }, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"compiler/generic:folded" = type { i64, i64, i32 }
%"compiler/generic:ConstAsk" = type { i64, ptr, i32, i64, { i64, ptr }, { i64, ptr }, { i64, ptr } }
%"std/prelude/map:MapIter.bf5835bb10600fe6a7fc1da14a6360d9" = type { ptr, i64 }
%"std/prelude/map:MapEntry.91de8c8eb84d52d1e58996aec31d85aa" = type { i32, i32 }
%"compiler/ast:Sig" = type { { i64, ptr }, { i64, ptr }, i1, { i64, ptr }, i1, ptr, i1, i1, { i64, ptr } }
%"compiler/generic:pattern" = type { ptr, i64, i64, i32, ptr }
%"compiler/generic:varRow" = type { i64, i32, i32, i32 }
%"compiler/generic:cursor" = type { { i64, ptr }, i64 }
%"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" = type { i64, i64 }
%"compiler/ast:TypeParam" = type { %"compiler/source:Span", i32, ptr, { i64, ptr }, i1 }
%"compiler/ast:TopIf" = type { ptr, ptr, ptr, ptr }
%"compiler/ast:TopBranch" = type { %"compiler/source:Span", { i64, ptr }, i64 }
%"compiler/names:Ref" = type { i32, i64, i64 }
%"compiler/ast:Path" = type { %"compiler/source:Span", { i64, ptr } }
%"compiler/diagmsg:Msg" = type { i32, { i64, ptr }, { i64, ptr } }
%"compiler/ast:Promise" = type { %"compiler/source:Span", i32, { i64, ptr } }
%"compiler/generic:genRoots" = type { { i64, ptr }, { i64, ptr }, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64 }
%"compiler/cond:Consts" = type { %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/fetch:Fetcher" = type { { i64, ptr }, { i64, ptr }, { i64, ptr }, i1, i1, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/source:Names" = type { %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"compiler/diag:Diagnostics" = type { i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, i1, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", { i64, [3 x i64] }, { i64, ptr }, { i64, ptr }, i1, i1 }
%"compiler/ast:StructBody" = type { { i64, ptr }, ptr, { i64, ptr }, %"compiler/source:Span", { i64, ptr }, { i64, ptr } }
%"compiler/ast:VarDecl" = type { { i64, ptr }, { i64, ptr }, ptr, { i64, ptr }, i1, i1, { i64, ptr }, i1 }
define dso_local %"std/prelude/iterator:ViewGenerator.00c7c71992d6e1815cd052c47b979cdd" @compiler_2fgeneric_2eFieldDecls.walk(ptr %v0, ptr %v1, ptr %a0) alwaysinline #0 {
entry:
  %l3 = alloca %"std/prelude/iterator:ViewGenerator.00c7c71992d6e1815cd052c47b979cdd"
  %rv = alloca %"std/prelude/iterator:ViewGenerator.00c7c71992d6e1815cd052c47b979cdd"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = getelementptr { ptr, ptr }, ptr null, i32 1
  %t3 = ptrtoint ptr %t2 to i64
  %t4 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 %t3, i64 8)
  %t5 = getelementptr { ptr, ptr }, ptr %t4, i32 0, i32 0
  store ptr %a0, ptr %t5, !tbaa !28
  call void @__olang_scope_escape(ptr %v0)
  %t7 = getelementptr { ptr, ptr }, ptr %t4, i32 0, i32 1
  store ptr %v0, ptr %t7, !tbaa !28
  %t8 = call ptr @olang_lambda_0.coro(ptr %t4, ptr %v1)
  %t9 = insertvalue { ptr, ptr } undef, ptr @olang_lambda_0.wnext, 0
  %t10 = insertvalue { ptr, ptr } %t9, ptr %t8, 1
  %t12 = extractvalue { ptr, ptr } %t10, 0
  %t13 = extractvalue { ptr, ptr } %t10, 1
  %t14 = call %"std/prelude/iterator:ViewGenerator.00c7c71992d6e1815cd052c47b979cdd" @std_2fprelude_2fiterator_3aViewGenerator_3ccompiler_2fast_3aVarDecl_3e_2ector(ptr %v0, ptr %v1, ptr %t12, ptr %t13)
  store %"std/prelude/iterator:ViewGenerator.00c7c71992d6e1815cd052c47b979cdd" %t14, ptr %l3
  br label %bb1
bb1:
  %t15 = load %"std/prelude/iterator:ViewGenerator.00c7c71992d6e1815cd052c47b979cdd", ptr %l3
  store %"std/prelude/iterator:ViewGenerator.00c7c71992d6e1815cd052c47b979cdd" %t15, ptr %rv
  br label %ret
ret:
  %rr = load %"std/prelude/iterator:ViewGenerator.00c7c71992d6e1815cd052c47b979cdd", ptr %rv
  ret %"std/prelude/iterator:ViewGenerator.00c7c71992d6e1815cd052c47b979cdd" %rr
}

define dso_local i1 @compiler_2fgeneric_2eLengthDecided(ptr %v0, ptr %v1, { i64, ptr } %a0, i64 %a1, i64 %a2, { i64, ptr } %a3) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l1 = alloca i64
  %l2 = alloca i64
  %l4 = alloca { i64, ptr }
  %l5 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca { i64, ptr }
  %l17 = alloca i64
  %l18 = alloca { i64, ptr }
  %l19 = alloca i64
  %l20 = alloca i64
  %l21 = alloca i64
  %l27 = alloca i64
  %l28 = alloca i32
  %l39 = alloca i1
  %l40 = alloca { i64, ptr }
  %l44 = alloca i1
  %l45 = alloca i1
  %l46 = alloca { i64, ptr }
  %l50 = alloca i1
  %l51 = alloca i1
  %l52 = alloca { i64, ptr }
  %l57 = alloca i1
  %l58 = alloca { i64, ptr }
  %l67 = alloca i1
  %l68 = alloca { i64, ptr }
  %l76 = alloca { i64, ptr }
  %l77 = alloca i64
  %l78 = alloca i64
  %l79 = alloca i64
  %l84 = alloca { i64, ptr }
  %l86 = alloca i1
  %l87 = alloca i1
  %l89 = alloca i1
  %l90 = alloca i1
  %l92 = alloca i1
  %l93 = alloca i1
  %l95 = alloca i1
  %l99 = alloca { i64, ptr }
  %l100 = alloca i1
  %l101 = alloca i1
  %l104 = alloca { i64, ptr }
  %l105 = alloca i1
  %l106 = alloca i1
  %l108 = alloca i1
  %l109 = alloca i1
  %l112 = alloca { i64, ptr }
  %l113 = alloca i1
  %l117 = alloca { i64, ptr }
  %l118 = alloca i1
  %l119 = alloca i1
  %l122 = alloca { i64, ptr }
  %l123 = alloca i1
  %l124 = alloca i1
  %l126 = alloca i1
  %s0 = alloca %olang.scope
  %s2 = alloca %olang.scope
  %rv = alloca i1
  store { i64, ptr } %a0, ptr %l0
  store i64 %a1, ptr %l1
  store i64 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t3 = extractvalue { i64, ptr } %a3, 1
  %t4 = extractvalue { i64, ptr } %a3, 0
  %t5 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d1, i32 0, i32 1) }, 1
  %t6 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d1, i32 0, i32 1) }, 0
  %t7 = add i64 %t4, %t6
  %t8 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t7)
  call void @olang_textcopy(ptr %t8, ptr %t3, i64 %t4)
  %t9 = getelementptr i8, ptr %t8, i64 %t4
  call void @olang_textcopy(ptr %t9, ptr %t5, i64 %t6)
  %t10 = insertvalue { i64, ptr } undef, i64 %t7, 0
  %t11 = insertvalue { i64, ptr } %t10, ptr %t8, 1
  store { i64, ptr } %t11, ptr %l4, !tbaa !27
  %t13 = load i64, ptr %l1, !tbaa !24
  store i64 %t13, ptr %l5, !tbaa !24
  br label %bb1
bb1:
  store %olang.scope zeroinitializer, ptr %s2
  %t15 = load i64, ptr %l5, !tbaa !24
  %t16 = load i64, ptr %l2, !tbaa !24
  %t19 = icmp slt i64 %t15, %t16
  %t21 = xor i1 %t19, true
  br i1 %t21, label %bb2, label %bb3
bb2:
  call void @__olang_scope_close(ptr %s2)
  br label %bb93
bb3:
  br label %bb4
bb4:
  %t23 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t23, ptr %l18, !tbaa !27
  %t24 = load i64, ptr %l5, !tbaa !24
  store i64 %t24, ptr %l19, !tbaa !24
  %t25 = load i64, ptr %l2, !tbaa !24
  store i64 %t25, ptr %l20, !tbaa !24
  %t26 = load { i64, ptr }, ptr %l18, !tbaa !27
  %t27 = extractvalue { i64, ptr } %t26, 0
  store i64 %t27, ptr %l21, !tbaa !24
  %t28 = load i64, ptr %l19, !tbaa !24
  %t29 = icmp sge i64 %t28, 0
  br i1 %t29, label %bb5, label %bb6
bb5:
  %t31 = load i64, ptr %l19, !tbaa !24
  %t32 = load i64, ptr %l20, !tbaa !24
  %t33 = icmp sle i64 %t31, %t32
  br i1 %t33, label %bb7, label %bb8
bb6:
  call void @__olang_check_failed(ptr @olang_loc_c152c1cd1761af15_fc7472910c385f59)
  unreachable
bb7:
  %t35 = load i64, ptr %l20, !tbaa !24
  %t36 = load i64, ptr %l21, !tbaa !24
  %t37 = icmp sle i64 %t35, %t36
  br i1 %t37, label %bb9, label %bb10
bb8:
  call void @__olang_check_failed(ptr @olang_loc_c152c1cd1761af15_fc7472910c385f59)
  unreachable
bb9:
  %t39 = getelementptr { i64, ptr }, ptr %l18, i32 0, i32 1
  %t40 = load ptr, ptr %t39, !tbaa !27
  %t41 = load i64, ptr %l19, !tbaa !24
  %t42 = load i64, ptr %l20, !tbaa !24
  %t43 = getelementptr i8, ptr %t40, i64 %t41
  %t44 = sub i64 %t42, %t41
  %t45 = insertvalue { i64, ptr } undef, i64 %t44, 0
  %t46 = insertvalue { i64, ptr } %t45, ptr %t43, 1
  %t47 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t50 = call { i32, i64 } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eFind(ptr %v0, ptr %s0, { i64, ptr } %t46, { i64, ptr } %t47)
  %t51 = extractvalue { i32, i64 } %t50, 1
  %t52 = extractvalue { i32, i64 } %t50, 0
  store i32 %t52, ptr %l28
  %t53 = icmp ne i32 %t52, 0
  br i1 %t53, label %bb12, label %ok.54, !prof !99
ok.54:
  store i64 %t51, ptr %l27
  br label %bb11
bb10:
  call void @__olang_check_failed(ptr @olang_loc_c152c1cd1761af15_fc7472910c385f59)
  unreachable
bb11:
  %t55 = load i64, ptr %l27, !tbaa !24
  store i64 %t55, ptr %l17, !tbaa !24
  br label %bb14
bb12:
  br label %bb13
bb13:
  call void @__olang_scope_close(ptr %s2)
  call void @__olang_scope_close(ptr %s0)
  store i1 false, ptr %rv
  br label %ret
bb14:
  %t57 = load i64, ptr %l17, !tbaa !24
  %t58 = load i64, ptr %l5, !tbaa !24
  %t62 = add i64 %t58, %t57
  store i64 %t62, ptr %l7, !tbaa !24
  %t64 = load i64, ptr %l7, !tbaa !24
  %t65 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t67 = extractvalue { i64, ptr } %t65, 0
  %t70 = add i64 %t64, %t67
  store i64 %t70, ptr %l5, !tbaa !24
  %t72 = load i64, ptr %l7, !tbaa !24
  %t74 = icmp sgt i64 %t72, 0
  br i1 %t74, label %bb15, label %bb16
bb15:
  %t76 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t76, ptr %l40, !tbaa !27
  %t77 = load i64, ptr %l7, !tbaa !24
  %t79 = sub i64 %t77, 1
  %t81 = getelementptr { i64, ptr }, ptr %l40, i32 0, i32 1
  %t82 = load ptr, ptr %t81, !tbaa !27
  %t83 = getelementptr i8, ptr %t82, i64 %t79
  %t84 = load i8, ptr %t83, !tbaa !32
  %t86 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aChar_2eIsLetter(i8 %t84)
  store i1 %t86, ptr %l44
  br label %bb17
bb16:
  store i1 false, ptr %l39, !tbaa !21
  br label %bb28
bb17:
  %t87 = load i1, ptr %l44, !tbaa !21
  br i1 %t87, label %bb18, label %bb19
bb18:
  store i1 true, ptr %l45, !tbaa !21
  br label %bb21
bb19:
  %t88 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t88, ptr %l46, !tbaa !27
  %t89 = load i64, ptr %l7, !tbaa !24
  %t91 = sub i64 %t89, 1
  %t93 = getelementptr { i64, ptr }, ptr %l46, i32 0, i32 1
  %t94 = load ptr, ptr %t93, !tbaa !27
  %t95 = getelementptr i8, ptr %t94, i64 %t91
  %t96 = load i8, ptr %t95, !tbaa !32
  %t98 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aChar_2eIsDigit(i8 %t96)
  store i1 %t98, ptr %l50
  br label %bb20
bb20:
  %t99 = load i1, ptr %l50, !tbaa !21
  store i1 %t99, ptr %l45, !tbaa !21
  br label %bb21
bb21:
  %t100 = load i1, ptr %l45, !tbaa !21
  br i1 %t100, label %bb22, label %bb23
bb22:
  store i1 true, ptr %l51, !tbaa !21
  br label %bb24
bb23:
  %t101 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t101, ptr %l52, !tbaa !27
  %t102 = load i64, ptr %l7, !tbaa !24
  %t104 = sub i64 %t102, 1
  %t106 = getelementptr { i64, ptr }, ptr %l52, i32 0, i32 1
  %t107 = load ptr, ptr %t106, !tbaa !27
  %t108 = getelementptr i8, ptr %t107, i64 %t104
  %t109 = load i8, ptr %t108, !tbaa !32
  %t111 = icmp eq i8 %t109, 95
  store i1 %t111, ptr %l51, !tbaa !21
  br label %bb24
bb24:
  %t113 = load i1, ptr %l51, !tbaa !21
  br i1 %t113, label %bb25, label %bb26
bb25:
  store i1 true, ptr %l57, !tbaa !21
  br label %bb27
bb26:
  %t114 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t114, ptr %l58, !tbaa !27
  %t115 = load i64, ptr %l7, !tbaa !24
  %t117 = sub i64 %t115, 1
  %t119 = getelementptr { i64, ptr }, ptr %l58, i32 0, i32 1
  %t120 = load ptr, ptr %t119, !tbaa !27
  %t121 = getelementptr i8, ptr %t120, i64 %t117
  %t122 = load i8, ptr %t121, !tbaa !32
  %t124 = icmp eq i8 %t122, 46
  store i1 %t124, ptr %l57, !tbaa !21
  br label %bb27
bb27:
  %t126 = load i1, ptr %l57, !tbaa !21
  store i1 %t126, ptr %l39, !tbaa !21
  br label %bb28
bb28:
  %t127 = load i1, ptr %l39, !tbaa !21
  br i1 %t127, label %bb29, label %bb30
bb29:
  call void @__olang_scope_close(ptr %s2)
  br label %bb92
bb30:
  br label %bb31
bb31:
  %t128 = load i64, ptr %l7, !tbaa !24
  store i64 %t128, ptr %l8, !tbaa !24
  br label %bb32
bb32:
  %t130 = load i64, ptr %l8, !tbaa !24
  %t131 = load i64, ptr %l1, !tbaa !24
  %t134 = icmp sgt i64 %t130, %t131
  br i1 %t134, label %bb33, label %bb34
bb33:
  %t136 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t136, ptr %l68, !tbaa !27
  %t137 = load i64, ptr %l8, !tbaa !24
  %t139 = sub i64 %t137, 1
  %t141 = getelementptr { i64, ptr }, ptr %l68, i32 0, i32 1
  %t142 = load ptr, ptr %t141, !tbaa !27
  %t143 = getelementptr i8, ptr %t142, i64 %t139
  %t144 = load i8, ptr %t143, !tbaa !32
  %t146 = icmp ne i8 %t144, 10
  store i1 %t146, ptr %l67, !tbaa !21
  br label %bb35
bb34:
  store i1 false, ptr %l67, !tbaa !21
  br label %bb35
bb35:
  %t148 = load i1, ptr %l67, !tbaa !21
  %t149 = xor i1 %t148, true
  br i1 %t149, label %bb36, label %bb37
bb36:
  br label %bb40
bb37:
  br label %bb38
bb38:
  %t151 = load i64, ptr %l8, !tbaa !24
  %t153 = sub i64 %t151, 1
  store i64 %t153, ptr %l8, !tbaa !24
  br label %bb39
bb39:
  br label %bb32
bb40:
  %t155 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t155, ptr %l76, !tbaa !27
  %t156 = load i64, ptr %l8, !tbaa !24
  store i64 %t156, ptr %l77, !tbaa !24
  %t157 = load i64, ptr %l7, !tbaa !24
  store i64 %t157, ptr %l78, !tbaa !24
  %t158 = load { i64, ptr }, ptr %l76, !tbaa !27
  %t159 = extractvalue { i64, ptr } %t158, 0
  store i64 %t159, ptr %l79, !tbaa !24
  %t160 = load i64, ptr %l77, !tbaa !24
  %t161 = icmp sge i64 %t160, 0
  br i1 %t161, label %bb41, label %bb42
bb41:
  %t163 = load i64, ptr %l77, !tbaa !24
  %t164 = load i64, ptr %l78, !tbaa !24
  %t165 = icmp sle i64 %t163, %t164
  br i1 %t165, label %bb43, label %bb44
bb42:
  call void @__olang_check_failed(ptr @olang_loc_e975feb741415938_3766dae77ababfac)
  unreachable
bb43:
  %t167 = load i64, ptr %l78, !tbaa !24
  %t168 = load i64, ptr %l79, !tbaa !24
  %t169 = icmp sle i64 %t167, %t168
  br i1 %t169, label %bb45, label %bb46
bb44:
  call void @__olang_check_failed(ptr @olang_loc_e975feb741415938_3766dae77ababfac)
  unreachable
bb45:
  %t171 = getelementptr { i64, ptr }, ptr %l76, i32 0, i32 1
  %t172 = load ptr, ptr %t171, !tbaa !27
  %t173 = load i64, ptr %l77, !tbaa !24
  %t174 = load i64, ptr %l78, !tbaa !24
  %t175 = getelementptr i8, ptr %t172, i64 %t173
  %t176 = sub i64 %t174, %t173
  %t177 = insertvalue { i64, ptr } undef, i64 %t176, 0
  %t178 = insertvalue { i64, ptr } %t177, ptr %t175, 1
  %t180 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eTrimStart(ptr %v0, ptr %v0, { i64, ptr } %t178)
  store { i64, ptr } %t180, ptr %l84
  br label %bb47
bb46:
  call void @__olang_check_failed(ptr @olang_loc_e975feb741415938_3766dae77ababfac)
  unreachable
bb47:
  %t181 = load { i64, ptr }, ptr %l84, !tbaa !27
  store { i64, ptr } %t181, ptr %l9, !tbaa !27
  %t182 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t184 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %v0, ptr %s2, { i64, ptr } %t182, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d2, i32 0, i32 1) })
  store i1 %t184, ptr %l86
  br label %bb48
bb48:
  %t185 = load i1, ptr %l86, !tbaa !21
  br i1 %t185, label %bb49, label %bb50
bb49:
  store i1 true, ptr %l87, !tbaa !21
  br label %bb52
bb50:
  %t186 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t188 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %v0, ptr %s2, { i64, ptr } %t186, { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d3, i32 0, i32 1) })
  store i1 %t188, ptr %l89
  br label %bb51
bb51:
  %t189 = load i1, ptr %l89, !tbaa !21
  store i1 %t189, ptr %l87, !tbaa !21
  br label %bb52
bb52:
  %t190 = load i1, ptr %l87, !tbaa !21
  br i1 %t190, label %bb53, label %bb54
bb53:
  store i1 true, ptr %l90, !tbaa !21
  br label %bb56
bb54:
  %t191 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t193 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %v0, ptr %s2, { i64, ptr } %t191, { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d4, i32 0, i32 1) })
  store i1 %t193, ptr %l92
  br label %bb55
bb55:
  %t194 = load i1, ptr %l92, !tbaa !21
  store i1 %t194, ptr %l90, !tbaa !21
  br label %bb56
bb56:
  %t195 = load i1, ptr %l90, !tbaa !21
  br i1 %t195, label %bb57, label %bb58
bb57:
  store i1 true, ptr %l93, !tbaa !21
  br label %bb60
bb58:
  %t196 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t198 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %v0, ptr %s2, { i64, ptr } %t196, { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d5, i32 0, i32 1) })
  store i1 %t198, ptr %l95
  br label %bb59
bb59:
  %t199 = load i1, ptr %l95, !tbaa !21
  store i1 %t199, ptr %l93, !tbaa !21
  br label %bb60
bb60:
  %t200 = load i1, ptr %l93, !tbaa !21
  br i1 %t200, label %bb61, label %bb62
bb61:
  call void @__olang_scope_close(ptr %s2)
  call void @__olang_scope_close(ptr %s0)
  store i1 true, ptr %rv
  br label %ret
bb62:
  br label %bb63
bb63:
  %t202 = load { i64, ptr }, ptr %l9, !tbaa !27
  store { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d6, i32 0, i32 1) }, ptr %l99, !tbaa !27
  %t205 = load { i64, ptr }, ptr %l99, !tbaa !27
  %t206 = call i1 @std_2fprelude_2farray_2eArray_3cstd_2fprelude_2ftext_3aChar_3e_2eContains_3cstd_2fprelude_2ftext_3aChar_3e(ptr %v0, ptr %s2, { i64, ptr } %t202, { i64, ptr } %t205)
  store i1 %t206, ptr %l100
  br label %bb64
bb64:
  %t207 = load i1, ptr %l100, !tbaa !21
  br i1 %t207, label %bb65, label %bb66
bb65:
  store i1 true, ptr %l101, !tbaa !21
  br label %bb68
bb66:
  %t208 = load { i64, ptr }, ptr %l9, !tbaa !27
  store { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d7, i32 0, i32 1) }, ptr %l104, !tbaa !27
  %t211 = load { i64, ptr }, ptr %l104, !tbaa !27
  %t212 = call i1 @std_2fprelude_2farray_2eArray_3cstd_2fprelude_2ftext_3aChar_3e_2eContains_3cstd_2fprelude_2ftext_3aChar_3e(ptr %v0, ptr %s2, { i64, ptr } %t208, { i64, ptr } %t211)
  store i1 %t212, ptr %l105
  br label %bb67
bb67:
  %t213 = load i1, ptr %l105, !tbaa !21
  store i1 %t213, ptr %l101, !tbaa !21
  br label %bb68
bb68:
  %t214 = load i1, ptr %l101, !tbaa !21
  br i1 %t214, label %bb69, label %bb70
bb69:
  store i1 true, ptr %l106, !tbaa !21
  br label %bb72
bb70:
  %t215 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t217 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEndsWith(ptr %v0, ptr %s2, { i64, ptr } %t215, { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d8, i32 0, i32 1) })
  store i1 %t217, ptr %l108
  br label %bb71
bb71:
  %t218 = load i1, ptr %l108, !tbaa !21
  store i1 %t218, ptr %l106, !tbaa !21
  br label %bb72
bb72:
  %t219 = load i1, ptr %l106, !tbaa !21
  br i1 %t219, label %bb73, label %bb74
bb73:
  store i1 true, ptr %l109, !tbaa !21
  br label %bb76
bb74:
  %t220 = load { i64, ptr }, ptr %l9, !tbaa !27
  store { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d9, i32 0, i32 1) }, ptr %l112, !tbaa !27
  %t223 = load { i64, ptr }, ptr %l112, !tbaa !27
  %t224 = call i1 @std_2fprelude_2farray_2eArray_3cstd_2fprelude_2ftext_3aChar_3e_2eContains_3cstd_2fprelude_2ftext_3aChar_3e(ptr %v0, ptr %s2, { i64, ptr } %t220, { i64, ptr } %t223)
  store i1 %t224, ptr %l113
  br label %bb75
bb75:
  %t225 = load i1, ptr %l113, !tbaa !21
  store i1 %t225, ptr %l109, !tbaa !21
  br label %bb76
bb76:
  %t226 = load i1, ptr %l109, !tbaa !21
  br i1 %t226, label %bb77, label %bb78
bb77:
  call void @__olang_scope_close(ptr %s2)
  call void @__olang_scope_close(ptr %s0)
  store i1 true, ptr %rv
  br label %ret
bb78:
  br label %bb79
bb79:
  %t228 = load { i64, ptr }, ptr %l9, !tbaa !27
  store { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d10, i32 0, i32 1) }, ptr %l117, !tbaa !27
  %t231 = load { i64, ptr }, ptr %l117, !tbaa !27
  %t232 = call i1 @std_2fprelude_2farray_2eArray_3cstd_2fprelude_2ftext_3aChar_3e_2eContains_3cstd_2fprelude_2ftext_3aChar_3e(ptr %v0, ptr %s2, { i64, ptr } %t228, { i64, ptr } %t231)
  store i1 %t232, ptr %l118
  br label %bb80
bb80:
  %t233 = load i1, ptr %l118, !tbaa !21
  br i1 %t233, label %bb81, label %bb82
bb81:
  %t234 = load { i64, ptr }, ptr %l9, !tbaa !27
  store { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d11, i32 0, i32 1) }, ptr %l122, !tbaa !27
  %t237 = load { i64, ptr }, ptr %l122, !tbaa !27
  %t238 = call i1 @std_2fprelude_2farray_2eArray_3cstd_2fprelude_2ftext_3aChar_3e_2eContains_3cstd_2fprelude_2ftext_3aChar_3e(ptr %v0, ptr %s2, { i64, ptr } %t234, { i64, ptr } %t237)
  store i1 %t238, ptr %l123
  br label %bb83
bb82:
  store i1 false, ptr %l119, !tbaa !21
  br label %bb84
bb83:
  %t239 = load i1, ptr %l123, !tbaa !21
  store i1 %t239, ptr %l119, !tbaa !21
  br label %bb84
bb84:
  %t240 = load i1, ptr %l119, !tbaa !21
  br i1 %t240, label %bb85, label %bb86
bb85:
  %t241 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t243 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEndsWith(ptr %v0, ptr %s2, { i64, ptr } %t241, { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d12, i32 0, i32 1) })
  store i1 %t243, ptr %l126
  br label %bb87
bb86:
  store i1 false, ptr %l124, !tbaa !21
  br label %bb88
bb87:
  %t244 = load i1, ptr %l126, !tbaa !21
  store i1 %t244, ptr %l124, !tbaa !21
  br label %bb88
bb88:
  %t245 = load i1, ptr %l124, !tbaa !21
  br i1 %t245, label %bb89, label %bb90
bb89:
  call void @__olang_scope_close(ptr %s2)
  call void @__olang_scope_close(ptr %s0)
  store i1 true, ptr %rv
  br label %ret
bb90:
  br label %bb91
bb91:
  call void @__olang_scope_close(ptr %s2)
  br label %bb92
bb92:
  br label %bb1
bb93:
  call void @__olang_scope_close(ptr %s0)
  store i1 false, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eAnyDefault(ptr %v0, ptr %a0, i32 %a1, i32 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l3 = alloca { i64, ptr }
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca i32
  %l12 = alloca { i64, ptr }
  %l13 = alloca i64
  %l14 = alloca i64
  %l19 = alloca { i64, ptr }
  %l22 = alloca i64
  %l26 = alloca i64
  %l29 = alloca i64
  %l50 = alloca i64
  %l54 = alloca %"compiler/generic:fnRow"
  %l62 = alloca i64
  %l72 = alloca { i64, ptr }
  %l78 = alloca i32
  %s0 = alloca %olang.scope
  %s2 = alloca %olang.scope
  %rv = alloca i64
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eallFns(ptr %v0, ptr %t1)
  br label %bb1
bb1:
  %t3 = load ptr, ptr %l0, !tbaa !29
  %t7 = call { i64, ptr } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eAnyCovers(ptr %v0, ptr %s0, ptr %t3, i32 %a1)
  store { i64, ptr } %t7, ptr %l19
  br label %bb2
bb2:
  %t8 = load { i64, ptr }, ptr %l19, !tbaa !27
  store { i64, ptr } %t8, ptr %l3, !tbaa !27
  store i64 0, ptr %l4, !tbaa !24
  %t9 = load ptr, ptr %l0, !tbaa !29
  %t11 = getelementptr %"compiler/generic:Program", ptr %t9, i32 0, i32 38
  %t13 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %t11)
  store i64 %t13, ptr %l22
  br label %bb3
bb3:
  %t14 = load i64, ptr %l22, !tbaa !24
  store i64 %t14, ptr %l5, !tbaa !24
  store i64 1, ptr %l6, !tbaa !24
  %t15 = load i64, ptr %l5, !tbaa !24
  %t16 = load i64, ptr %l4, !tbaa !24
  %t19 = icmp sgt i64 %t15, %t16
  br i1 %t19, label %bb4, label %bb5
bb4:
  %t21 = load i64, ptr %l6, !tbaa !24
  %t23 = icmp sgt i64 %t21, 0
  br i1 %t23, label %bb6, label %bb7
bb5:
  store i64 0, ptr %l26, !tbaa !24
  br label %bb9
bb6:
  %t25 = load i64, ptr %l5, !tbaa !24
  %t26 = load i64, ptr %l4, !tbaa !24
  %t29 = sub i64 %t25, %t26
  %t30 = load i64, ptr %l6, !tbaa !24
  %t33 = add i64 %t29, %t30
  %t35 = sub i64 %t33, 1
  %t36 = load i64, ptr %l6, !tbaa !24
  %t39 = sdiv i64 %t35, %t36
  store i64 %t39, ptr %l29, !tbaa !24
  br label %bb8
bb7:
  store i64 0, ptr %l29, !tbaa !24
  br label %bb8
bb8:
  %t41 = load i64, ptr %l29, !tbaa !24
  store i64 %t41, ptr %l26, !tbaa !24
  br label %bb9
bb9:
  %t42 = load i64, ptr %l26, !tbaa !24
  store i64 %t42, ptr %l7, !tbaa !24
  store i64 0, ptr %l8, !tbaa !24
  br label %bb10
bb10:
  store %olang.scope zeroinitializer, ptr %s2
  %t43 = load i64, ptr %l8, !tbaa !24
  %t44 = load i64, ptr %l7, !tbaa !24
  %t47 = icmp slt i64 %t43, %t44
  %t49 = xor i1 %t47, true
  br i1 %t49, label %bb11, label %bb12
bb11:
  call void @__olang_scope_close(ptr %s2)
  br label %bb31
bb12:
  br label %bb13
bb13:
  %t51 = load i64, ptr %l4, !tbaa !24
  %t52 = load i64, ptr %l8, !tbaa !24
  %t53 = load i64, ptr %l6, !tbaa !24
  %t56 = mul i64 %t52, %t53
  %t59 = add i64 %t51, %t56
  store i64 %t59, ptr %l9, !tbaa !24
  %t61 = load ptr, ptr %l0, !tbaa !29
  %t63 = getelementptr %"compiler/generic:Program", ptr %t61, i32 0, i32 38
  %t64 = load i64, ptr %l9, !tbaa !24
  %t67 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t63, i64 %t64)
  store i64 %t67, ptr %l50
  br label %bb14
bb14:
  %t68 = load i64, ptr %l50, !tbaa !24
  store i64 %t68, ptr %l10, !tbaa !24
  %t69 = load ptr, ptr %l0, !tbaa !29
  %t71 = getelementptr %"compiler/generic:Program", ptr %t69, i32 0, i32 29
  %t72 = load i64, ptr %l10, !tbaa !24
  %t75 = call %"compiler/generic:fnRow" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fgeneric_3afnRow_3e_2eAt_3ccompiler_2fgeneric_3afnRow_3e(ptr %v0, ptr %s2, ptr %t71, i64 %t72)
  store %"compiler/generic:fnRow" %t75, ptr %l54
  br label %bb15
bb15:
  %t76 = getelementptr %"compiler/generic:fnRow", ptr %l54, i32 0, i32 1
  %t77 = load ptr, ptr %t76, !tbaa !29
  %t79 = getelementptr %"compiler/ast:Func", ptr %t77, i32 0, i32 2
  %t80 = load i32, ptr %t79, !tbaa !23
  %t84 = icmp ne i32 %t80, %a2
  br i1 %t84, label %bb16, label %bb17
bb16:
  call void @__olang_scope_close(ptr %s2)
  br label %bb30
bb17:
  br label %bb18
bb18:
  %t86 = load ptr, ptr %l0, !tbaa !29
  %t88 = getelementptr %"compiler/generic:Program", ptr %t86, i32 0, i32 39
  %t89 = load i64, ptr %l9, !tbaa !24
  %t92 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t88, i64 %t89)
  store i64 %t92, ptr %l62
  br label %bb19
bb19:
  %t93 = load i64, ptr %l62, !tbaa !24
  %t94 = trunc i64 %t93 to i32
  store i32 %t94, ptr %l11, !tbaa !23
  %t97 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t97, ptr %l12, !tbaa !27
  store i64 0, ptr %l13, !tbaa !24
  %t99 = load { i64, ptr }, ptr %l12, !tbaa !27
  %t101 = extractvalue { i64, ptr } %t99, 0
  store i64 %t101, ptr %l14, !tbaa !24
  br label %bb20
bb20:
  %t103 = load i64, ptr %l13, !tbaa !24
  %t104 = load i64, ptr %l14, !tbaa !24
  %t107 = icmp slt i64 %t103, %t104
  %t109 = xor i1 %t107, true
  br i1 %t109, label %bb21, label %bb22
bb21:
  br label %bb29
bb22:
  br label %bb23
bb23:
  %t111 = load { i64, ptr }, ptr %l12, !tbaa !27
  store { i64, ptr } %t111, ptr %l72, !tbaa !27
  %t112 = load i64, ptr %l13, !tbaa !24
  %t114 = getelementptr { i64, ptr }, ptr %l72, i32 0, i32 1
  %t115 = load ptr, ptr %t114, !tbaa !27
  %t116 = getelementptr i32, ptr %t115, i64 %t112
  %t117 = load i32, ptr %t116, !tbaa !33
  %t119 = load ptr, ptr %l0, !tbaa !29
  %t121 = getelementptr %"compiler/generic:Program", ptr %t119, i32 0, i32 2
  %t125 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %t121, i32 %t117)
  store i32 %t125, ptr %l78
  br label %bb24
bb24:
  %t126 = load i32, ptr %l11, !tbaa !23
  %t127 = load i32, ptr %l78, !tbaa !23
  %t129 = icmp eq i32 %t127, %t126
  br i1 %t129, label %bb25, label %bb26
bb25:
  %t131 = load i64, ptr %l10, !tbaa !24
  call void @__olang_scope_close(ptr %s2)
  call void @__olang_scope_close(ptr %s0)
  store i64 %t131, ptr %rv
  br label %ret
bb26:
  br label %bb27
bb27:
  br label %bb28
bb28:
  %t133 = load i64, ptr %l13, !tbaa !24
  %t135 = add i64 %t133, 1
  store i64 %t135, ptr %l13, !tbaa !24
  br label %bb20
bb29:
  call void @__olang_scope_close(ptr %s2)
  br label %bb30
bb30:
  %t137 = load i64, ptr %l8, !tbaa !24
  %t139 = add i64 %t137, 1
  store i64 %t139, ptr %l8, !tbaa !24
  br label %bb10
bb31:
  call void @__olang_scope_close(ptr %s0)
  store i64 -1, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
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

define dso_local i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eCtorSig(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l4 = alloca i32
  %rv = alloca i32
  br label %start
start:
  br label %bb0
bb0:
  %t5 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eCtorSigAt(ptr %v0, ptr %a0, i32 %a1, i32 0)
  store i32 %t5, ptr %l4
  br label %bb1
bb1:
  %t6 = load i32, ptr %l4, !tbaa !23
  store i32 %t6, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local void @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eDeclContext(ptr %out, ptr %v0, ptr %v1, ptr %a0, i32 %a1) #0 {
entry:
  %l4 = alloca %"compiler/generic:Context"
  %t3 = alloca %"compiler/generic:Context", align 8
  br label %start
start:
  br label %bb0
bb0:
  call void @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2edeclContext(ptr %t3, ptr %v0, ptr %v1, ptr %a0, i32 %a1)
  call void @llvm.memmove.p0.p0.i64(ptr %l4, ptr %t3, i64 160, i1 false)
  br label %bb1
bb1:
  call void @llvm.memmove.p0.p0.i64(ptr %out, ptr %l4, i64 160, i1 false)
  br label %ret
ret:
  ret void
}

define dso_local i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eDefaultAt(ptr %v0, ptr %a0, i64 %a1, i32 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca i32
  %l3 = alloca i32
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca { i64, ptr }
  %l7 = alloca i32
  %l8 = alloca i32
  %l9 = alloca i64
  %l10 = alloca %"compiler/generic:Binding"
  %l11 = alloca i32
  %l12 = alloca { i64, ptr }
  %l13 = alloca i64
  %l14 = alloca i64
  %l16 = alloca i64
  %l17 = alloca i64
  %l18 = alloca i64
  %l19 = alloca i64
  %l20 = alloca i64
  %l24 = alloca i32
  %l26 = alloca i64
  %l29 = alloca i64
  %l31 = alloca ptr
  %l35 = alloca i32
  %l36 = alloca { i64, ptr }
  %l41 = alloca { i64, ptr }
  %l47 = alloca i32
  %l53 = alloca i32
  %l57 = alloca i32
  %l61 = alloca i1
  %l65 = alloca i64
  %l72 = alloca i64
  %l75 = alloca %"compiler/generic:Binding"
  %l80 = alloca i32
  %l84 = alloca i1
  %l88 = alloca i32
  %l95 = alloca i32
  %l96 = alloca { i64, ptr }
  %l108 = alloca { i64, ptr }
  %l123 = alloca i64
  %l126 = alloca i64
  %l145 = alloca { i64, ptr }
  %l151 = alloca i1
  %l155 = alloca ptr
  %l159 = alloca i32
  %l162 = alloca i1
  %l164 = alloca ptr
  %l165 = alloca i32
  %l166 = alloca i64
  %l170 = alloca i32
  %l171 = alloca i32
  %s0 = alloca %olang.scope
  %rv = alloca i32
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  store i32 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load i64, ptr %l1, !tbaa !24
  %t5 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eSig(ptr %v0, ptr %t1, i64 %t2)
  store i32 %t5, ptr %l24
  br label %bb1
bb1:
  %t6 = load i32, ptr %l24, !tbaa !23
  store i32 %t6, ptr %l3, !tbaa !23
  %t7 = load i64, ptr %l1, !tbaa !24
  %t9 = call i64 @compiler_2fgeneric_2eFnOwner(i64 %t7)
  store i64 %t9, ptr %l26
  br label %bb2
bb2:
  %t10 = load i64, ptr %l26, !tbaa !24
  store i64 %t10, ptr %l4, !tbaa !24
  %t11 = load ptr, ptr %l0, !tbaa !29
  %t12 = load i64, ptr %l4, !tbaa !24
  %t15 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eVarCount(ptr %v0, ptr %t11, i64 %t12)
  store i64 %t15, ptr %l29
  br label %bb3
bb3:
  %t16 = load i64, ptr %l29, !tbaa !24
  store i64 %t16, ptr %l5, !tbaa !24
  %t17 = load ptr, ptr %l0, !tbaa !29
  %t19 = getelementptr %"compiler/generic:Program", ptr %t17, i32 0, i32 2
  store ptr %t19, ptr %l31, !tbaa !29
  %t20 = load ptr, ptr %l0, !tbaa !29
  %t22 = getelementptr %"compiler/generic:Program", ptr %t20, i32 0, i32 2
  %t23 = load i32, ptr %l3, !tbaa !23
  %t26 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParams(ptr %v0, ptr %t22, i32 %t23)
  store i32 %t26, ptr %l35
  br label %bb4
bb4:
  %t27 = load ptr, ptr %l31, !tbaa !29
  %t28 = load i32, ptr %l35, !tbaa !23
  %t29 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t27, i32 %t28)
  store { i64, ptr } %t29, ptr %l36
  br label %bb5
bb5:
  %t30 = load { i64, ptr }, ptr %l36, !tbaa !27
  store { i64, ptr } %t30, ptr %l6, !tbaa !27
  %t31 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t33 = extractvalue { i64, ptr } %t31, 0
  %t35 = icmp eq i64 %t33, 0
  br i1 %t35, label %bb6, label %bb7
bb6:
  %t37 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  call void @__olang_scope_close(ptr %s0)
  store i32 %t37, ptr %rv
  br label %ret
bb7:
  br label %bb8
bb8:
  %t39 = load { i64, ptr }, ptr %l6, !tbaa !27
  store { i64, ptr } %t39, ptr %l41, !tbaa !27
  %t40 = getelementptr { i64, ptr }, ptr %l41, i32 0, i32 1
  %t41 = load ptr, ptr %t40, !tbaa !27
  %t42 = getelementptr i32, ptr %t41, i64 0
  %t43 = load i32, ptr %t42, !tbaa !33
  store i32 %t43, ptr %l7, !tbaa !23
  %t45 = load i32, ptr %l7, !tbaa !23
  store i32 %t45, ptr %l8, !tbaa !23
  %t47 = load ptr, ptr %l0, !tbaa !29
  %t49 = getelementptr %"compiler/generic:Program", ptr %t47, i32 0, i32 2
  %t50 = load i32, ptr %l8, !tbaa !23
  %t53 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t49, i32 %t50)
  store i32 %t53, ptr %l47
  br label %bb9
bb9:
  %t54 = load i32, ptr %l47, !range !{i32 0, i32 33}
  %t56 = trunc i64 20 to i32
  %t57 = icmp eq i32 %t54, %t56
  br i1 %t57, label %bb10, label %bb11
bb10:
  %t59 = load ptr, ptr %l0, !tbaa !29
  %t61 = getelementptr %"compiler/generic:Program", ptr %t59, i32 0, i32 2
  %t62 = load i32, ptr %l8, !tbaa !23
  %t65 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eReferent(ptr %v0, ptr %t61, i32 %t62)
  store i32 %t65, ptr %l53
  br label %bb12
bb11:
  br label %bb13
bb12:
  %t66 = load i32, ptr %l53, !tbaa !23
  store i32 %t66, ptr %l8, !tbaa !23
  br label %bb13
bb13:
  %t67 = load ptr, ptr %l0, !tbaa !29
  %t69 = getelementptr %"compiler/generic:Program", ptr %t67, i32 0, i32 2
  %t70 = load i32, ptr %l8, !tbaa !23
  %t73 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t69, i32 %t70)
  store i32 %t73, ptr %l57
  br label %bb14
bb14:
  %t74 = load i32, ptr %l57, !range !{i32 0, i32 33}
  %t76 = trunc i64 25 to i32
  %t77 = icmp eq i32 %t74, %t76
  %t79 = xor i1 %t77, true
  br i1 %t79, label %bb15, label %bb16
bb15:
  store i1 true, ptr %l61, !tbaa !21
  br label %bb18
bb16:
  %t81 = load ptr, ptr %l0, !tbaa !29
  %t83 = getelementptr %"compiler/generic:Program", ptr %t81, i32 0, i32 2
  %t84 = load i32, ptr %l8, !tbaa !23
  %t87 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eA(ptr %v0, ptr %t83, i32 %t84)
  store i64 %t87, ptr %l65
  br label %bb17
bb17:
  %t88 = load i64, ptr %l4, !tbaa !24
  %t89 = load i64, ptr %l65, !tbaa !24
  %t91 = icmp ne i64 %t89, %t88
  store i1 %t91, ptr %l61, !tbaa !21
  br label %bb18
bb18:
  %t93 = load i1, ptr %l61, !tbaa !21
  br i1 %t93, label %bb19, label %bb20
bb19:
  %t94 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  call void @__olang_scope_close(ptr %s0)
  store i32 %t94, ptr %rv
  br label %ret
bb20:
  br label %bb21
bb21:
  %t96 = load ptr, ptr %l0, !tbaa !29
  %t98 = getelementptr %"compiler/generic:Program", ptr %t96, i32 0, i32 2
  %t99 = load i32, ptr %l8, !tbaa !23
  %t102 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eB(ptr %v0, ptr %t98, i32 %t99)
  store i64 %t102, ptr %l72
  br label %bb22
bb22:
  %t103 = load i64, ptr %l72, !tbaa !24
  store i64 %t103, ptr %l9, !tbaa !24
  %t104 = load i64, ptr %l4, !tbaa !24
  %t105 = load i64, ptr %l5, !tbaa !24
  %t108 = call %"compiler/generic:Binding" @compiler_2fgeneric_3aBinding_2ector(ptr %s0, i64 %t104, i64 %t105)
  store %"compiler/generic:Binding" %t108, ptr %l75
  br label %bb23
bb23:
  %t109 = load %"compiler/generic:Binding", ptr %l75
  store %"compiler/generic:Binding" %t109, ptr %l10
  %t110 = load i32, ptr %l2, !tbaa !23
  store i32 %t110, ptr %l11, !tbaa !23
  %t112 = load ptr, ptr %l0, !tbaa !29
  %t114 = getelementptr %"compiler/generic:Program", ptr %t112, i32 0, i32 2
  %t115 = load i32, ptr %l7, !tbaa !23
  %t118 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t114, i32 %t115)
  store i32 %t118, ptr %l80
  br label %bb24
bb24:
  %t119 = load i32, ptr %l80, !range !{i32 0, i32 33}
  %t121 = trunc i64 20 to i32
  %t122 = icmp eq i32 %t119, %t121
  %t124 = xor i1 %t122, true
  br i1 %t124, label %bb25, label %bb26
bb25:
  %t126 = load ptr, ptr %l0, !tbaa !29
  %t128 = getelementptr %"compiler/generic:Program", ptr %t126, i32 0, i32 2
  %t129 = load i32, ptr %l2, !tbaa !23
  %t132 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t128, i32 %t129)
  store i32 %t132, ptr %l88
  br label %bb27
bb26:
  store i1 false, ptr %l84, !tbaa !21
  br label %bb28
bb27:
  %t133 = load i32, ptr %l88, !range !{i32 0, i32 33}
  %t135 = trunc i64 29 to i32
  %t136 = icmp eq i32 %t133, %t135
  store i1 %t136, ptr %l84, !tbaa !21
  br label %bb28
bb28:
  %t138 = load i1, ptr %l84, !tbaa !21
  br i1 %t138, label %bb29, label %bb30
bb29:
  %t139 = load ptr, ptr %l0, !tbaa !29
  %t141 = getelementptr %"compiler/generic:Program", ptr %t139, i32 0, i32 2
  %t142 = load i32, ptr %l2, !tbaa !23
  %t143 = load i64, ptr @G_2ecompiler_2ftypes_2eReadOnly, !tbaa !24
  %t147 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRef(ptr %v0, ptr %t141, i32 %t142, i64 %t143)
  store i32 %t147, ptr %l95
  br label %bb31
bb30:
  br label %bb32
bb31:
  %t148 = load i32, ptr %l95, !tbaa !23
  store i32 %t148, ptr %l11, !tbaa !23
  br label %bb32
bb32:
  %t149 = getelementptr %"compiler/generic:Binding", ptr %l10, i32 0, i32 2
  %t150 = load { i64, ptr }, ptr %t149, !tbaa !27
  store { i64, ptr } %t150, ptr %l96, !tbaa !27
  %t151 = load i64, ptr %l9, !tbaa !24
  %t152 = load i32, ptr %l11, !tbaa !23
  %t155 = getelementptr { i64, ptr }, ptr %l96, i32 0, i32 1
  %t156 = load ptr, ptr %t155, !tbaa !27
  %t157 = getelementptr i32, ptr %t156, i64 %t151
  store i32 %t152, ptr %t157, !tbaa !33
  %t158 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eInferThroughBounds(ptr %v0, ptr %s0, ptr %t158, ptr %l10)
  br label %bb33
bb33:
  %t161 = getelementptr %"compiler/generic:Binding", ptr %l10, i32 0, i32 2
  %t162 = load { i64, ptr }, ptr %t161, !tbaa !27
  store { i64, ptr } %t162, ptr %l12, !tbaa !27
  store i64 0, ptr %l13, !tbaa !24
  %t164 = load { i64, ptr }, ptr %l12, !tbaa !27
  %t166 = extractvalue { i64, ptr } %t164, 0
  store i64 %t166, ptr %l14, !tbaa !24
  br label %bb34
bb34:
  %t168 = load i64, ptr %l13, !tbaa !24
  %t169 = load i64, ptr %l14, !tbaa !24
  %t172 = icmp slt i64 %t168, %t169
  %t174 = xor i1 %t172, true
  br i1 %t174, label %bb35, label %bb36
bb35:
  br label %bb42
bb36:
  br label %bb37
bb37:
  %t176 = load { i64, ptr }, ptr %l12, !tbaa !27
  store { i64, ptr } %t176, ptr %l108, !tbaa !27
  %t177 = load i64, ptr %l13, !tbaa !24
  %t179 = getelementptr { i64, ptr }, ptr %l108, i32 0, i32 1
  %t180 = load ptr, ptr %t179, !tbaa !27
  %t181 = getelementptr i32, ptr %t180, i64 %t177
  %t182 = load i32, ptr %t181, !tbaa !33
  %t185 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t188 = icmp eq i32 %t182, %t185
  br i1 %t188, label %bb38, label %bb39
bb38:
  %t190 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  call void @__olang_scope_close(ptr %s0)
  store i32 %t190, ptr %rv
  br label %ret
bb39:
  br label %bb40
bb40:
  br label %bb41
bb41:
  %t192 = load i64, ptr %l13, !tbaa !24
  %t194 = add i64 %t192, 1
  store i64 %t194, ptr %l13, !tbaa !24
  br label %bb34
bb42:
  store i64 0, ptr %l16, !tbaa !24
  %t196 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t198 = extractvalue { i64, ptr } %t196, 0
  %t200 = sub i64 %t198, 1
  store i64 %t200, ptr %l17, !tbaa !24
  store i64 1, ptr %l18, !tbaa !24
  %t202 = load i64, ptr %l17, !tbaa !24
  %t203 = load i64, ptr %l16, !tbaa !24
  %t206 = icmp sgt i64 %t202, %t203
  br i1 %t206, label %bb43, label %bb44
bb43:
  %t208 = load i64, ptr %l18, !tbaa !24
  %t210 = icmp sgt i64 %t208, 0
  br i1 %t210, label %bb45, label %bb46
bb44:
  store i64 0, ptr %l123, !tbaa !24
  br label %bb48
bb45:
  %t212 = load i64, ptr %l17, !tbaa !24
  %t213 = load i64, ptr %l16, !tbaa !24
  %t216 = sub i64 %t212, %t213
  %t217 = load i64, ptr %l18, !tbaa !24
  %t220 = add i64 %t216, %t217
  %t222 = sub i64 %t220, 1
  %t223 = load i64, ptr %l18, !tbaa !24
  %t226 = sdiv i64 %t222, %t223
  store i64 %t226, ptr %l126, !tbaa !24
  br label %bb47
bb46:
  store i64 0, ptr %l126, !tbaa !24
  br label %bb47
bb47:
  %t228 = load i64, ptr %l126, !tbaa !24
  store i64 %t228, ptr %l123, !tbaa !24
  br label %bb48
bb48:
  %t229 = load i64, ptr %l123, !tbaa !24
  store i64 %t229, ptr %l19, !tbaa !24
  store i64 0, ptr %l20, !tbaa !24
  br label %bb49
bb49:
  %t230 = load i64, ptr %l20, !tbaa !24
  %t231 = load i64, ptr %l19, !tbaa !24
  %t234 = icmp slt i64 %t230, %t231
  %t236 = xor i1 %t234, true
  br i1 %t236, label %bb50, label %bb51
bb50:
  br label %bb58
bb51:
  br label %bb52
bb52:
  %t238 = load i64, ptr %l16, !tbaa !24
  %t239 = load i64, ptr %l20, !tbaa !24
  %t240 = load i64, ptr %l18, !tbaa !24
  %t243 = mul i64 %t239, %t240
  %t246 = add i64 %t238, %t243
  %t248 = load ptr, ptr %l0, !tbaa !29
  %t249 = load { i64, ptr }, ptr %l6, !tbaa !27
  store { i64, ptr } %t249, ptr %l145, !tbaa !27
  %t252 = add i64 %t246, 1
  %t254 = getelementptr { i64, ptr }, ptr %l145, i32 0, i32 1
  %t255 = load ptr, ptr %t254, !tbaa !27
  %t256 = getelementptr i32, ptr %t255, i64 %t252
  %t257 = load i32, ptr %t256, !tbaa !33
  %t258 = load i64, ptr %l4, !tbaa !24
  %t259 = load i64, ptr %l9, !tbaa !24
  %t264 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2ementionsVar(ptr %v0, ptr %t248, i32 %t257, i64 %t258, i64 %t259, i64 0)
  store i1 %t264, ptr %l151
  br label %bb53
bb53:
  %t265 = load i1, ptr %l151, !tbaa !21
  br i1 %t265, label %bb54, label %bb55
bb54:
  %t266 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  call void @__olang_scope_close(ptr %s0)
  store i32 %t266, ptr %rv
  br label %ret
bb55:
  br label %bb56
bb56:
  br label %bb57
bb57:
  %t268 = load i64, ptr %l20, !tbaa !24
  %t270 = add i64 %t268, 1
  store i64 %t270, ptr %l20, !tbaa !24
  br label %bb49
bb58:
  %t272 = load ptr, ptr %l0, !tbaa !29
  store ptr %t272, ptr %l155, !tbaa !29
  %t273 = load ptr, ptr %l0, !tbaa !29
  %t275 = getelementptr %"compiler/generic:Program", ptr %t273, i32 0, i32 2
  %t276 = load i32, ptr %l3, !tbaa !23
  %t279 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eResult(ptr %v0, ptr %t275, i32 %t276)
  store i32 %t279, ptr %l159
  br label %bb59
bb59:
  %t280 = load i64, ptr %l4, !tbaa !24
  %t281 = load i64, ptr %l9, !tbaa !24
  %t282 = load ptr, ptr %l155, !tbaa !29
  %t283 = load i32, ptr %l159, !tbaa !23
  %t286 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2ementionsVar(ptr %v0, ptr %t282, i32 %t283, i64 %t280, i64 %t281, i64 0)
  store i1 %t286, ptr %l162
  br label %bb60
bb60:
  %t287 = load i1, ptr %l162, !tbaa !21
  br i1 %t287, label %bb61, label %bb62
bb61:
  %t288 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  call void @__olang_scope_close(ptr %s0)
  store i32 %t288, ptr %rv
  br label %ret
bb62:
  br label %bb63
bb63:
  %t290 = load ptr, ptr %l0, !tbaa !29
  store ptr %t290, ptr %l164, !tbaa !29
  %t291 = load i32, ptr %l3, !tbaa !23
  store i32 %t291, ptr %l165, !tbaa !23
  %t292 = load i64, ptr %l4, !tbaa !24
  store i64 %t292, ptr %l166, !tbaa !24
  %t293 = load ptr, ptr %l0, !tbaa !29
  %t295 = getelementptr %"compiler/generic:Program", ptr %t293, i32 0, i32 2
  %t296 = getelementptr %"compiler/generic:Binding", ptr %l10, i32 0, i32 2
  %t297 = load { i64, ptr }, ptr %t296, !tbaa !27
  %t300 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eList(ptr %v0, ptr %s0, ptr %t295, { i64, ptr } %t297)
  store i32 %t300, ptr %l170
  br label %bb64
bb64:
  %t301 = load ptr, ptr %l164, !tbaa !29
  %t302 = load i32, ptr %l165, !tbaa !23
  %t303 = load i64, ptr %l166, !tbaa !24
  %t304 = load i32, ptr %l170, !tbaa !23
  %t305 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eSubst(ptr %v0, ptr %t301, i32 %t302, i64 %t303, i32 %t304)
  store i32 %t305, ptr %l171
  br label %bb65
bb65:
  call void @__olang_scope_close(ptr %s0)
  %t306 = load i32, ptr %l171, !tbaa !23
  store i32 %t306, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eDefaultMethods(ptr %v0, ptr %v1, ptr %a0, i32 %a1, i32 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %lp3 = alloca ptr
  %l4 = alloca i32
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca i64
  %l12 = alloca i32
  %l13 = alloca ptr
  %l14 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l19 = alloca i32
  %l22 = alloca i32
  %l26 = alloca i32
  %l30 = alloca i64
  %l34 = alloca i64
  %l37 = alloca i64
  %l58 = alloca i64
  %l62 = alloca %"compiler/generic:fnRow"
  %l70 = alloca i64
  %l75 = alloca ptr
  %l78 = alloca i1
  %l82 = alloca ptr
  %l83 = alloca i32
  %l90 = alloca i1
  %s2 = alloca %olang.scope
  %rv = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %v1, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1, ptr %l14
  br label %bb1
bb1:
  %t2 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 32, i64 8)
  store ptr %t2, ptr %lp3
  %t3 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l14
  %t4 = load ptr, ptr %lp3
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t3, ptr %t4
  %t5 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eallFns(ptr %v0, ptr %t5)
  br label %bb2
bb2:
  %t7 = load ptr, ptr %l0, !tbaa !29
  %t9 = getelementptr %"compiler/generic:Program", ptr %t7, i32 0, i32 2
  %t10 = load i32, ptr %l1, !tbaa !23
  %t13 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t9, i32 %t10)
  store i32 %t13, ptr %l19
  br label %bb3
bb3:
  %t14 = load i32, ptr %l19, !range !{i32 0, i32 33}
  %t16 = trunc i64 20 to i32
  %t17 = icmp eq i32 %t14, %t16
  br i1 %t17, label %bb4, label %bb5
bb4:
  %t19 = load ptr, ptr %l0, !tbaa !29
  %t21 = getelementptr %"compiler/generic:Program", ptr %t19, i32 0, i32 2
  %t22 = load i32, ptr %l1, !tbaa !23
  %t25 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eReferent(ptr %v0, ptr %t21, i32 %t22)
  store i32 %t25, ptr %l26
  br label %bb6
bb5:
  %t26 = load i32, ptr %l1, !tbaa !23
  store i32 %t26, ptr %l22, !tbaa !23
  br label %bb7
bb6:
  %t28 = load i32, ptr %l26, !tbaa !23
  store i32 %t28, ptr %l22, !tbaa !23
  br label %bb7
bb7:
  %t29 = load i32, ptr %l22, !tbaa !23
  store i32 %t29, ptr %l4, !tbaa !23
  store i64 0, ptr %l5, !tbaa !24
  %t30 = load ptr, ptr %l0, !tbaa !29
  %t32 = getelementptr %"compiler/generic:Program", ptr %t30, i32 0, i32 38
  %t34 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %t32)
  store i64 %t34, ptr %l30
  br label %bb8
bb8:
  %t35 = load i64, ptr %l30, !tbaa !24
  store i64 %t35, ptr %l6, !tbaa !24
  store i64 1, ptr %l7, !tbaa !24
  %t36 = load i64, ptr %l6, !tbaa !24
  %t37 = load i64, ptr %l5, !tbaa !24
  %t40 = icmp sgt i64 %t36, %t37
  br i1 %t40, label %bb9, label %bb10
bb9:
  %t42 = load i64, ptr %l7, !tbaa !24
  %t44 = icmp sgt i64 %t42, 0
  br i1 %t44, label %bb11, label %bb12
bb10:
  store i64 0, ptr %l34, !tbaa !24
  br label %bb14
bb11:
  %t46 = load i64, ptr %l6, !tbaa !24
  %t47 = load i64, ptr %l5, !tbaa !24
  %t50 = sub i64 %t46, %t47
  %t51 = load i64, ptr %l7, !tbaa !24
  %t54 = add i64 %t50, %t51
  %t56 = sub i64 %t54, 1
  %t57 = load i64, ptr %l7, !tbaa !24
  %t60 = sdiv i64 %t56, %t57
  store i64 %t60, ptr %l37, !tbaa !24
  br label %bb13
bb12:
  store i64 0, ptr %l37, !tbaa !24
  br label %bb13
bb13:
  %t62 = load i64, ptr %l37, !tbaa !24
  store i64 %t62, ptr %l34, !tbaa !24
  br label %bb14
bb14:
  %t63 = load i64, ptr %l34, !tbaa !24
  store i64 %t63, ptr %l8, !tbaa !24
  store i64 0, ptr %l9, !tbaa !24
  br label %bb15
bb15:
  store %olang.scope zeroinitializer, ptr %s2
  %t64 = load i64, ptr %l9, !tbaa !24
  %t65 = load i64, ptr %l8, !tbaa !24
  %t68 = icmp slt i64 %t64, %t65
  %t70 = xor i1 %t68, true
  br i1 %t70, label %bb16, label %bb17
bb16:
  call void @__olang_scope_close(ptr %s2)
  br label %bb41
bb17:
  br label %bb18
bb18:
  %t72 = load i64, ptr %l5, !tbaa !24
  %t73 = load i64, ptr %l9, !tbaa !24
  %t74 = load i64, ptr %l7, !tbaa !24
  %t77 = mul i64 %t73, %t74
  %t80 = add i64 %t72, %t77
  store i64 %t80, ptr %l10, !tbaa !24
  %t82 = load ptr, ptr %l0, !tbaa !29
  %t84 = getelementptr %"compiler/generic:Program", ptr %t82, i32 0, i32 38
  %t85 = load i64, ptr %l10, !tbaa !24
  %t88 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t84, i64 %t85)
  store i64 %t88, ptr %l58
  br label %bb19
bb19:
  %t89 = load i64, ptr %l58, !tbaa !24
  store i64 %t89, ptr %l11, !tbaa !24
  %t90 = load ptr, ptr %l0, !tbaa !29
  %t92 = getelementptr %"compiler/generic:Program", ptr %t90, i32 0, i32 29
  %t93 = load i64, ptr %l11, !tbaa !24
  %t96 = call %"compiler/generic:fnRow" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fgeneric_3afnRow_3e_2eAt_3ccompiler_2fgeneric_3afnRow_3e(ptr %v0, ptr %s2, ptr %t92, i64 %t93)
  store %"compiler/generic:fnRow" %t96, ptr %l62
  br label %bb20
bb20:
  %t97 = getelementptr %"compiler/generic:fnRow", ptr %l62, i32 0, i32 1
  %t98 = load ptr, ptr %t97, !tbaa !29
  %t100 = getelementptr %"compiler/ast:Func", ptr %t98, i32 0, i32 2
  %t101 = load i32, ptr %t100, !tbaa !23
  %t105 = icmp ne i32 %t101, %a2
  br i1 %t105, label %bb21, label %bb22
bb21:
  call void @__olang_scope_close(ptr %s2)
  br label %bb40
bb22:
  br label %bb23
bb23:
  %t107 = load ptr, ptr %l0, !tbaa !29
  %t109 = getelementptr %"compiler/generic:Program", ptr %t107, i32 0, i32 39
  %t110 = load i64, ptr %l10, !tbaa !24
  %t113 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t109, i64 %t110)
  store i64 %t113, ptr %l70
  br label %bb24
bb24:
  %t114 = load i64, ptr %l70, !tbaa !24
  %t115 = trunc i64 %t114 to i32
  store i32 %t115, ptr %l12, !tbaa !23
  %t118 = load ptr, ptr %l0, !tbaa !29
  %t119 = load i32, ptr %l12, !tbaa !23
  %t122 = call ptr @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2etypeDecl(ptr %v0, ptr %v0, ptr %t118, i32 %t119)
  store ptr %t122, ptr %l75
  br label %bb25
bb25:
  %t123 = load ptr, ptr %l75, !tbaa !29
  store ptr %t123, ptr %l13, !tbaa !29
  %t124 = load ptr, ptr %l13, !tbaa !29
  %t126 = icmp eq ptr %t124, null
  br i1 %t126, label %bb26, label %bb27
bb26:
  store i1 true, ptr %l78, !tbaa !21
  br label %bb28
bb27:
  %t128 = load ptr, ptr %l13, !tbaa !29
  %t130 = getelementptr %"compiler/ast:TypeDecl", ptr %t128, i32 0, i32 3
  %t131 = load ptr, ptr %t130, !tbaa !29
  %t133 = icmp eq ptr %t131, null
  store i1 %t133, ptr %l78, !tbaa !21
  br label %bb28
bb28:
  %t135 = load i1, ptr %l78, !tbaa !21
  br i1 %t135, label %bb29, label %bb30
bb29:
  call void @__olang_scope_close(ptr %s2)
  br label %bb40
bb30:
  br label %bb31
bb31:
  %t136 = load ptr, ptr %l0, !tbaa !29
  store ptr %t136, ptr %l82, !tbaa !29
  %t137 = load i32, ptr %l12, !tbaa !23
  store i32 %t137, ptr %l83, !tbaa !23
  %t138 = load ptr, ptr %l13, !tbaa !29
  %t140 = getelementptr %"compiler/ast:TypeDecl", ptr %t138, i32 0, i32 3
  %t141 = load ptr, ptr %t140, !tbaa !29
  %t143 = icmp eq ptr %t141, null
  br i1 %t143, label %bb32, label %bb33
bb32:
  call void @__olang_check_failed(ptr @olang_loc_e3e3caa307fb777e_fe02cb9db66a417a)
  unreachable
bb33:
  br label %bb34
bb34:
  %t145 = load ptr, ptr %l13, !tbaa !29
  %t147 = getelementptr %"compiler/ast:TypeDecl", ptr %t145, i32 0, i32 3
  %t148 = load ptr, ptr %t147, !tbaa !29
  %t149 = load i32, ptr %l4, !tbaa !23
  %t150 = load ptr, ptr %l82, !tbaa !29
  %t151 = load i32, ptr %l83, !tbaa !23
  %t154 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2etraitReaches(ptr %v0, ptr %v0, ptr %t150, i32 %t151, ptr %t148, i32 %t149)
  store i1 %t154, ptr %l90
  br label %bb35
bb35:
  %t155 = load i1, ptr %l90, !tbaa !21
  br i1 %t155, label %bb36, label %bb37
bb36:
  %t156 = load ptr, ptr %lp3
  %t157 = load i64, ptr %l11, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v1, ptr %t156, i64 %t157)
  br label %bb38
bb37:
  br label %bb39
bb38:
  br label %bb39
bb39:
  call void @__olang_scope_close(ptr %s2)
  br label %bb40
bb40:
  %t160 = load i64, ptr %l9, !tbaa !24
  %t162 = add i64 %t160, 1
  store i64 %t162, ptr %l9, !tbaa !24
  br label %bb15
bb41:
  %t164 = load ptr, ptr %lp3
  %t165 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t164
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t165, ptr %rv
  br label %ret
ret:
  %rr = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %rv
  ret %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %rr
}

define dso_local { i32, { i64, ptr } } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eDescType(ptr %v0, ptr %v1, ptr %a0, %"compiler/generic:Desc" %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/generic:Desc"
  %l2 = alloca i32
  %l3 = alloca i32
  %l4 = alloca { i64, ptr }
  %l5 = alloca { i64, ptr }
  %l6 = alloca { i64, ptr }
  %l7 = alloca %"compiler/generic:Desc"
  %l8 = alloca i64
  %l9 = alloca i32
  %l10 = alloca { i64, ptr }
  %l11 = alloca { i64, ptr }
  %l18 = alloca i32
  %l21 = alloca i1
  %l23 = alloca ptr
  %l27 = alloca i32
  %l28 = alloca { i64, ptr }
  %l33 = alloca i32
  %l34 = alloca { i64, ptr }
  %l38 = alloca { i64, ptr }
  %l40 = alloca { i32, { i64, ptr } }
  %l41 = alloca { i64, ptr }
  %l42 = alloca i64
  %l43 = alloca { i64, ptr }
  %l46 = alloca i1
  %l48 = alloca ptr
  %l52 = alloca i32
  %l53 = alloca { i64, ptr }
  %l58 = alloca i1
  %l59 = alloca { i64, ptr }
  %l64 = alloca { i64, ptr }
  %l66 = alloca { i32, { i64, ptr } }
  %l67 = alloca { i64, ptr }
  %l68 = alloca i64
  %l69 = alloca { i64, ptr }
  %l71 = alloca ptr
  %l74 = alloca { i64, ptr }
  %l77 = alloca i32
  %l78 = alloca { i64, ptr }
  %l83 = alloca i32
  %l84 = alloca { i64, ptr }
  %l88 = alloca { i64, ptr }
  %l90 = alloca { i32, { i64, ptr } }
  %l91 = alloca { i64, ptr }
  %l92 = alloca i64
  %l93 = alloca { i64, ptr }
  %l95 = alloca { i64, ptr }
  %l97 = alloca { i32, { i64, ptr } }
  %l98 = alloca { i64, ptr }
  %l99 = alloca i64
  %l100 = alloca { i64, ptr }
  %l106 = alloca %"compiler/generic:Desc"
  %l114 = alloca %"compiler/generic:fnRow"
  %l122 = alloca i32
  %l125 = alloca i32
  %l129 = alloca i32
  %l134 = alloca { i64, ptr }
  %l136 = alloca { i32, { i64, ptr } }
  %l137 = alloca { i64, ptr }
  %l138 = alloca i64
  %l139 = alloca { i64, ptr }
  %l141 = alloca ptr
  %l145 = alloca i32
  %l146 = alloca { i64, ptr }
  %l153 = alloca i32
  %l154 = alloca { i64, ptr }
  %l160 = alloca { i64, ptr }
  %l162 = alloca { i32, { i64, ptr } }
  %l163 = alloca { i64, ptr }
  %l164 = alloca i64
  %l165 = alloca { i64, ptr }
  %l170 = alloca { i64, ptr }
  %l172 = alloca { i32, { i64, ptr } }
  %l173 = alloca { i64, ptr }
  %l174 = alloca i64
  %l175 = alloca { i64, ptr }
  %l182 = alloca { i64, ptr }
  %l187 = alloca i32
  %l191 = alloca { i64, ptr }
  %l193 = alloca { i32, { i64, ptr } }
  %l194 = alloca { i64, ptr }
  %l195 = alloca i64
  %l196 = alloca { i64, ptr }
  %l198 = alloca { i64, ptr }
  %l200 = alloca { i32, { i64, ptr } }
  %l201 = alloca { i64, ptr }
  %l202 = alloca i64
  %l203 = alloca { i64, ptr }
  %s10 = alloca %olang.scope
  %rv = alloca { i32, { i64, ptr } }
  store ptr %a0, ptr %l0
  store %"compiler/generic:Desc" %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = getelementptr %"compiler/generic:Desc", ptr %l1, i32 0, i32 1
  %t2 = load i32, ptr %t1, !tbaa !23
  store i32 %t2, ptr %l2, !tbaa !23
  %t4 = getelementptr %"compiler/generic:Desc", ptr %l1, i32 0, i32 0
  %t5 = load i64, ptr %t4, !tbaa !24
  %t6 = load i64, ptr @G_2ecompiler_2fgeneric_2eDescField, !tbaa !24
  %t9 = icmp eq i64 %t5, %t6
  br i1 %t9, label %bb1, label %bb2
bb1:
  %t11 = load ptr, ptr %l0, !tbaa !29
  %t12 = load i32, ptr %l2, !tbaa !23
  %t15 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eReflUnder(ptr %v0, ptr %t11, i32 %t12)
  store i32 %t15, ptr %l18
  br label %bb3
bb2:
  br label %bb30
bb3:
  %t16 = load i32, ptr %l18, !tbaa !23
  store i32 %t16, ptr %l3, !tbaa !23
  %t17 = load ptr, ptr %l0, !tbaa !29
  %t18 = load i32, ptr %l3, !tbaa !23
  %t21 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eisStructT(ptr %v0, ptr %t17, i32 %t18)
  store i1 %t21, ptr %l21
  br label %bb4
bb4:
  %t22 = load i1, ptr %l21, !tbaa !21
  br i1 %t22, label %bb5, label %bb6
bb5:
  %t23 = load ptr, ptr %l0, !tbaa !29
  %t25 = getelementptr %"compiler/generic:Program", ptr %t23, i32 0, i32 2
  store ptr %t25, ptr %l23, !tbaa !29
  %t26 = load ptr, ptr %l0, !tbaa !29
  %t28 = getelementptr %"compiler/generic:Program", ptr %t26, i32 0, i32 2
  %t29 = load i32, ptr %l3, !tbaa !23
  %t32 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eFields(ptr %v0, ptr %t28, i32 %t29)
  store i32 %t32, ptr %l27
  br label %bb7
bb6:
  br label %bb12
bb7:
  %t33 = load ptr, ptr %l23, !tbaa !29
  %t34 = load i32, ptr %l27, !tbaa !23
  %t35 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t33, i32 %t34)
  store { i64, ptr } %t35, ptr %l28
  br label %bb8
bb8:
  %t36 = load { i64, ptr }, ptr %l28, !tbaa !27
  store { i64, ptr } %t36, ptr %l4, !tbaa !27
  %t37 = getelementptr %"compiler/generic:Desc", ptr %l1, i32 0, i32 3
  %t38 = load i64, ptr %t37, !tbaa !24
  %t39 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t41 = extractvalue { i64, ptr } %t39, 0
  %t44 = icmp slt i64 %t38, %t41
  br i1 %t44, label %bb9, label %bb10
bb9:
  %t46 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t46, ptr %l34, !tbaa !27
  %t47 = getelementptr %"compiler/generic:Desc", ptr %l1, i32 0, i32 3
  %t48 = load i64, ptr %t47, !tbaa !24
  %t50 = getelementptr { i64, ptr }, ptr %l34, i32 0, i32 1
  %t51 = load ptr, ptr %t50, !tbaa !27
  %t52 = getelementptr i32, ptr %t51, i64 %t48
  %t53 = load i32, ptr %t52, !tbaa !33
  store i32 %t53, ptr %l33, !tbaa !23
  br label %bb11
bb10:
  %t55 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  store i32 %t55, ptr %l33, !tbaa !23
  br label %bb11
bb11:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d13, i32 0, i32 1) }, ptr %l38, !tbaa !27
  %t57 = load { i64, ptr }, ptr %l38, !tbaa !27
  %t58 = load i32, ptr %l33, !tbaa !23
  %t59 = insertvalue { i32, { i64, ptr } } undef, i32 %t58, 0
  %t61 = insertvalue { i32, { i64, ptr } } %t59, { i64, ptr } %t57, 1
  store { i32, { i64, ptr } } %t61, ptr %l40
  %t62 = getelementptr { i32, { i64, ptr } }, ptr %l40, i32 0, i32 1
  %t63 = load { i64, ptr }, ptr %t62, !tbaa !27
  store { i64, ptr } %t63, ptr %l41, !tbaa !27
  %t64 = load { i64, ptr }, ptr %l41, !tbaa !27
  %t65 = extractvalue { i64, ptr } %t64, 0
  store i64 %t65, ptr %l42, !tbaa !24
  %t66 = load i64, ptr %l42, !tbaa !24
  %t67 = mul i64 %t66, 1
  %t68 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t67)
  %t69 = insertvalue { i64, ptr } undef, i64 %t66, 0
  %t70 = insertvalue { i64, ptr } %t69, ptr %t68, 1
  store { i64, ptr } %t70, ptr %l43, !tbaa !27
  %t71 = getelementptr { i64, ptr }, ptr %l43, i32 0, i32 1
  %t72 = load ptr, ptr %t71, !tbaa !27
  %t73 = getelementptr { i64, ptr }, ptr %l41, i32 0, i32 1
  %t74 = load ptr, ptr %t73, !tbaa !27
  %t75 = load i64, ptr %l42, !tbaa !24
  %t76 = mul i64 %t75, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t72, ptr %t74, i64 %t76, i1 false)
  %t77 = load { i64, ptr }, ptr %l43, !tbaa !27
  %t78 = getelementptr { i32, { i64, ptr } }, ptr %l40, i32 0, i32 1
  store { i64, ptr } %t77, ptr %t78, !tbaa !27
  %t79 = load { i32, { i64, ptr } }, ptr %l40
  store { i32, { i64, ptr } } %t79, ptr %rv
  br label %ret
bb12:
  %t80 = load ptr, ptr %l0, !tbaa !29
  %t81 = load i32, ptr %l3, !tbaa !23
  %t84 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eisEnumT(ptr %v0, ptr %t80, i32 %t81)
  store i1 %t84, ptr %l46
  br label %bb13
bb13:
  %t85 = load i1, ptr %l46, !tbaa !21
  br i1 %t85, label %bb14, label %bb15
bb14:
  %t86 = load ptr, ptr %l0, !tbaa !29
  %t88 = getelementptr %"compiler/generic:Program", ptr %t86, i32 0, i32 2
  store ptr %t88, ptr %l48, !tbaa !29
  %t89 = load ptr, ptr %l0, !tbaa !29
  %t91 = getelementptr %"compiler/generic:Program", ptr %t89, i32 0, i32 2
  %t92 = load i32, ptr %l3, !tbaa !23
  %t95 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eCases(ptr %v0, ptr %t91, i32 %t92)
  store i32 %t95, ptr %l52
  br label %bb16
bb15:
  br label %bb29
bb16:
  %t96 = load ptr, ptr %l48, !tbaa !29
  %t97 = load i32, ptr %l52, !tbaa !23
  %t98 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t96, i32 %t97)
  store { i64, ptr } %t98, ptr %l53
  br label %bb17
bb17:
  %t99 = load { i64, ptr }, ptr %l53, !tbaa !27
  store { i64, ptr } %t99, ptr %l5, !tbaa !27
  %t100 = getelementptr %"compiler/generic:Desc", ptr %l1, i32 0, i32 2
  %t101 = load i64, ptr %t100, !tbaa !24
  %t102 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t104 = extractvalue { i64, ptr } %t102, 0
  %t107 = icmp sge i64 %t101, %t104
  br i1 %t107, label %bb18, label %bb19
bb18:
  store i1 true, ptr %l58, !tbaa !21
  br label %bb20
bb19:
  %t109 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t109, ptr %l59, !tbaa !27
  %t110 = getelementptr %"compiler/generic:Desc", ptr %l1, i32 0, i32 2
  %t111 = load i64, ptr %t110, !tbaa !24
  %t113 = getelementptr { i64, ptr }, ptr %l59, i32 0, i32 1
  %t114 = load ptr, ptr %t113, !tbaa !27
  %t115 = getelementptr i32, ptr %t114, i64 %t111
  %t116 = load i32, ptr %t115, !tbaa !33
  %t118 = icmp eq i32 %t116, 0
  store i1 %t118, ptr %l58, !tbaa !21
  br label %bb20
bb20:
  %t120 = load i1, ptr %l58, !tbaa !21
  br i1 %t120, label %bb21, label %bb22
bb21:
  %t121 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d14, i32 0, i32 1) }, ptr %l64, !tbaa !27
  %t122 = load { i64, ptr }, ptr %l64, !tbaa !27
  %t124 = insertvalue { i32, { i64, ptr } } undef, i32 %t121, 0
  %t126 = insertvalue { i32, { i64, ptr } } %t124, { i64, ptr } %t122, 1
  store { i32, { i64, ptr } } %t126, ptr %l66
  %t127 = getelementptr { i32, { i64, ptr } }, ptr %l66, i32 0, i32 1
  %t128 = load { i64, ptr }, ptr %t127, !tbaa !27
  store { i64, ptr } %t128, ptr %l67, !tbaa !27
  %t129 = load { i64, ptr }, ptr %l67, !tbaa !27
  %t130 = extractvalue { i64, ptr } %t129, 0
  store i64 %t130, ptr %l68, !tbaa !24
  %t131 = load i64, ptr %l68, !tbaa !24
  %t132 = mul i64 %t131, 1
  %t133 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t132)
  %t134 = insertvalue { i64, ptr } undef, i64 %t131, 0
  %t135 = insertvalue { i64, ptr } %t134, ptr %t133, 1
  store { i64, ptr } %t135, ptr %l69, !tbaa !27
  %t136 = getelementptr { i64, ptr }, ptr %l69, i32 0, i32 1
  %t137 = load ptr, ptr %t136, !tbaa !27
  %t138 = getelementptr { i64, ptr }, ptr %l67, i32 0, i32 1
  %t139 = load ptr, ptr %t138, !tbaa !27
  %t140 = load i64, ptr %l68, !tbaa !24
  %t141 = mul i64 %t140, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t137, ptr %t139, i64 %t141, i1 false)
  %t142 = load { i64, ptr }, ptr %l69, !tbaa !27
  %t143 = getelementptr { i32, { i64, ptr } }, ptr %l66, i32 0, i32 1
  store { i64, ptr } %t142, ptr %t143, !tbaa !27
  %t144 = load { i32, { i64, ptr } }, ptr %l66
  store { i32, { i64, ptr } } %t144, ptr %rv
  br label %ret
bb22:
  br label %bb23
bb23:
  %t145 = load ptr, ptr %l0, !tbaa !29
  %t147 = getelementptr %"compiler/generic:Program", ptr %t145, i32 0, i32 2
  store ptr %t147, ptr %l71, !tbaa !29
  %t148 = load ptr, ptr %l0, !tbaa !29
  %t150 = getelementptr %"compiler/generic:Program", ptr %t148, i32 0, i32 2
  %t151 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t151, ptr %l74, !tbaa !27
  %t152 = getelementptr %"compiler/generic:Desc", ptr %l1, i32 0, i32 2
  %t153 = load i64, ptr %t152, !tbaa !24
  %t155 = getelementptr { i64, ptr }, ptr %l74, i32 0, i32 1
  %t156 = load ptr, ptr %t155, !tbaa !27
  %t157 = getelementptr i32, ptr %t156, i64 %t153
  %t158 = load i32, ptr %t157, !tbaa !33
  %t161 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParts(ptr %v0, ptr %t150, i32 %t158)
  store i32 %t161, ptr %l77
  br label %bb24
bb24:
  %t162 = load ptr, ptr %l71, !tbaa !29
  %t163 = load i32, ptr %l77, !tbaa !23
  %t164 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t162, i32 %t163)
  store { i64, ptr } %t164, ptr %l78
  br label %bb25
bb25:
  %t165 = load { i64, ptr }, ptr %l78, !tbaa !27
  store { i64, ptr } %t165, ptr %l6, !tbaa !27
  %t166 = getelementptr %"compiler/generic:Desc", ptr %l1, i32 0, i32 3
  %t167 = load i64, ptr %t166, !tbaa !24
  %t168 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t170 = extractvalue { i64, ptr } %t168, 0
  %t173 = icmp slt i64 %t167, %t170
  br i1 %t173, label %bb26, label %bb27
bb26:
  %t175 = load { i64, ptr }, ptr %l6, !tbaa !27
  store { i64, ptr } %t175, ptr %l84, !tbaa !27
  %t176 = getelementptr %"compiler/generic:Desc", ptr %l1, i32 0, i32 3
  %t177 = load i64, ptr %t176, !tbaa !24
  %t179 = getelementptr { i64, ptr }, ptr %l84, i32 0, i32 1
  %t180 = load ptr, ptr %t179, !tbaa !27
  %t181 = getelementptr i32, ptr %t180, i64 %t177
  %t182 = load i32, ptr %t181, !tbaa !33
  store i32 %t182, ptr %l83, !tbaa !23
  br label %bb28
bb27:
  %t184 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  store i32 %t184, ptr %l83, !tbaa !23
  br label %bb28
bb28:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d15, i32 0, i32 1) }, ptr %l88, !tbaa !27
  %t186 = load { i64, ptr }, ptr %l88, !tbaa !27
  %t187 = load i32, ptr %l83, !tbaa !23
  %t188 = insertvalue { i32, { i64, ptr } } undef, i32 %t187, 0
  %t190 = insertvalue { i32, { i64, ptr } } %t188, { i64, ptr } %t186, 1
  store { i32, { i64, ptr } } %t190, ptr %l90
  %t191 = getelementptr { i32, { i64, ptr } }, ptr %l90, i32 0, i32 1
  %t192 = load { i64, ptr }, ptr %t191, !tbaa !27
  store { i64, ptr } %t192, ptr %l91, !tbaa !27
  %t193 = load { i64, ptr }, ptr %l91, !tbaa !27
  %t194 = extractvalue { i64, ptr } %t193, 0
  store i64 %t194, ptr %l92, !tbaa !24
  %t195 = load i64, ptr %l92, !tbaa !24
  %t196 = mul i64 %t195, 1
  %t197 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t196)
  %t198 = insertvalue { i64, ptr } undef, i64 %t195, 0
  %t199 = insertvalue { i64, ptr } %t198, ptr %t197, 1
  store { i64, ptr } %t199, ptr %l93, !tbaa !27
  %t200 = getelementptr { i64, ptr }, ptr %l93, i32 0, i32 1
  %t201 = load ptr, ptr %t200, !tbaa !27
  %t202 = getelementptr { i64, ptr }, ptr %l91, i32 0, i32 1
  %t203 = load ptr, ptr %t202, !tbaa !27
  %t204 = load i64, ptr %l92, !tbaa !24
  %t205 = mul i64 %t204, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t201, ptr %t203, i64 %t205, i1 false)
  %t206 = load { i64, ptr }, ptr %l93, !tbaa !27
  %t207 = getelementptr { i32, { i64, ptr } }, ptr %l90, i32 0, i32 1
  store { i64, ptr } %t206, ptr %t207, !tbaa !27
  %t208 = load { i32, { i64, ptr } }, ptr %l90
  store { i32, { i64, ptr } } %t208, ptr %rv
  br label %ret
bb29:
  %t209 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d16, i32 0, i32 1) }, ptr %l95, !tbaa !27
  %t210 = load { i64, ptr }, ptr %l95, !tbaa !27
  %t212 = insertvalue { i32, { i64, ptr } } undef, i32 %t209, 0
  %t214 = insertvalue { i32, { i64, ptr } } %t212, { i64, ptr } %t210, 1
  store { i32, { i64, ptr } } %t214, ptr %l97
  %t215 = getelementptr { i32, { i64, ptr } }, ptr %l97, i32 0, i32 1
  %t216 = load { i64, ptr }, ptr %t215, !tbaa !27
  store { i64, ptr } %t216, ptr %l98, !tbaa !27
  %t217 = load { i64, ptr }, ptr %l98, !tbaa !27
  %t218 = extractvalue { i64, ptr } %t217, 0
  store i64 %t218, ptr %l99, !tbaa !24
  %t219 = load i64, ptr %l99, !tbaa !24
  %t220 = mul i64 %t219, 1
  %t221 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t220)
  %t222 = insertvalue { i64, ptr } undef, i64 %t219, 0
  %t223 = insertvalue { i64, ptr } %t222, ptr %t221, 1
  store { i64, ptr } %t223, ptr %l100, !tbaa !27
  %t224 = getelementptr { i64, ptr }, ptr %l100, i32 0, i32 1
  %t225 = load ptr, ptr %t224, !tbaa !27
  %t226 = getelementptr { i64, ptr }, ptr %l98, i32 0, i32 1
  %t227 = load ptr, ptr %t226, !tbaa !27
  %t228 = load i64, ptr %l99, !tbaa !24
  %t229 = mul i64 %t228, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t225, ptr %t227, i64 %t229, i1 false)
  %t230 = load { i64, ptr }, ptr %l100, !tbaa !27
  %t231 = getelementptr { i32, { i64, ptr } }, ptr %l97, i32 0, i32 1
  store { i64, ptr } %t230, ptr %t231, !tbaa !27
  %t232 = load { i32, { i64, ptr } }, ptr %l97
  store { i32, { i64, ptr } } %t232, ptr %rv
  br label %ret
bb30:
  %t233 = getelementptr %"compiler/generic:Desc", ptr %l1, i32 0, i32 0
  %t234 = load i64, ptr %t233, !tbaa !24
  %t235 = load i64, ptr @G_2ecompiler_2fgeneric_2eDescParam, !tbaa !24
  %t238 = icmp eq i64 %t234, %t235
  br i1 %t238, label %bb31, label %bb32
bb31:
  %t240 = load ptr, ptr %l0, !tbaa !29
  %t241 = load i32, ptr %l2, !tbaa !23
  %t244 = call %"compiler/generic:Desc" @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eDescOf(ptr %v0, ptr %t240, i32 %t241)
  store %"compiler/generic:Desc" %t244, ptr %l106
  br label %bb33
bb32:
  br label %bb54
bb33:
  %t245 = load %"compiler/generic:Desc", ptr %l106
  store %"compiler/generic:Desc" %t245, ptr %l7
  store i64 0, ptr %l8, !tbaa !24
  %t246 = getelementptr %"compiler/generic:Desc", ptr %l7, i32 0, i32 0
  %t247 = load i64, ptr %t246, !tbaa !24
  %t248 = load i64, ptr @G_2ecompiler_2fgeneric_2eDescFunc, !tbaa !24
  %t251 = icmp eq i64 %t247, %t248
  br i1 %t251, label %bb34, label %bb35
bb34:
  %t253 = getelementptr %"compiler/generic:Desc", ptr %l7, i32 0, i32 1
  %t254 = load i32, ptr %t253, !tbaa !23
  store i32 %t254, ptr %l2, !tbaa !23
  %t256 = load ptr, ptr %l0, !tbaa !29
  %t258 = getelementptr %"compiler/generic:Program", ptr %t256, i32 0, i32 29
  %t259 = getelementptr %"compiler/generic:Desc", ptr %l7, i32 0, i32 2
  %t260 = load i64, ptr %t259, !tbaa !24
  %t263 = call %"compiler/generic:fnRow" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fgeneric_3afnRow_3e_2eAt_3ccompiler_2fgeneric_3afnRow_3e(ptr %v0, ptr %v0, ptr %t258, i64 %t260)
  store %"compiler/generic:fnRow" %t263, ptr %l114
  br label %bb36
bb35:
  br label %bb40
bb36:
  %t264 = getelementptr %"compiler/generic:fnRow", ptr %l114, i32 0, i32 1
  %t265 = load ptr, ptr %t264, !tbaa !29
  %t267 = getelementptr %"compiler/ast:Func", ptr %t265, i32 0, i32 1
  %t268 = load ptr, ptr %t267, !tbaa !29
  %t270 = icmp eq ptr %t268, null
  %t272 = xor i1 %t270, true
  br i1 %t272, label %bb37, label %bb38
bb37:
  store i64 1, ptr %l8, !tbaa !24
  br label %bb39
bb38:
  br label %bb39
bb39:
  br label %bb40
bb40:
  %t274 = load ptr, ptr %l0, !tbaa !29
  %t276 = getelementptr %"compiler/generic:Program", ptr %t274, i32 0, i32 2
  %t277 = load i32, ptr %l2, !tbaa !23
  %t280 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t276, i32 %t277)
  store i32 %t280, ptr %l122
  br label %bb41
bb41:
  %t281 = load i32, ptr %l122, !range !{i32 0, i32 33}
  %t283 = trunc i64 21 to i32
  %t284 = icmp eq i32 %t281, %t283
  br i1 %t284, label %bb42, label %bb43
bb42:
  %t286 = load i32, ptr %l2, !tbaa !23
  store i32 %t286, ptr %l125, !tbaa !23
  br label %bb45
bb43:
  %t288 = load ptr, ptr %l0, !tbaa !29
  %t289 = load i32, ptr %l2, !tbaa !23
  %t292 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eCtorSig(ptr %v0, ptr %t288, i32 %t289)
  store i32 %t292, ptr %l129
  br label %bb44
bb44:
  %t293 = load i32, ptr %l129, !tbaa !23
  store i32 %t293, ptr %l125, !tbaa !23
  br label %bb45
bb45:
  %t294 = load i32, ptr %l125, !tbaa !23
  store i32 %t294, ptr %l9, !tbaa !23
  %t295 = load i32, ptr %l9, !tbaa !23
  %t296 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t299 = icmp eq i32 %t295, %t296
  br i1 %t299, label %bb46, label %bb47
bb46:
  %t301 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d17, i32 0, i32 1) }, ptr %l134, !tbaa !27
  %t302 = load { i64, ptr }, ptr %l134, !tbaa !27
  %t304 = insertvalue { i32, { i64, ptr } } undef, i32 %t301, 0
  %t306 = insertvalue { i32, { i64, ptr } } %t304, { i64, ptr } %t302, 1
  store { i32, { i64, ptr } } %t306, ptr %l136
  %t307 = getelementptr { i32, { i64, ptr } }, ptr %l136, i32 0, i32 1
  %t308 = load { i64, ptr }, ptr %t307, !tbaa !27
  store { i64, ptr } %t308, ptr %l137, !tbaa !27
  %t309 = load { i64, ptr }, ptr %l137, !tbaa !27
  %t310 = extractvalue { i64, ptr } %t309, 0
  store i64 %t310, ptr %l138, !tbaa !24
  %t311 = load i64, ptr %l138, !tbaa !24
  %t312 = mul i64 %t311, 1
  %t313 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t312)
  %t314 = insertvalue { i64, ptr } undef, i64 %t311, 0
  %t315 = insertvalue { i64, ptr } %t314, ptr %t313, 1
  store { i64, ptr } %t315, ptr %l139, !tbaa !27
  %t316 = getelementptr { i64, ptr }, ptr %l139, i32 0, i32 1
  %t317 = load ptr, ptr %t316, !tbaa !27
  %t318 = getelementptr { i64, ptr }, ptr %l137, i32 0, i32 1
  %t319 = load ptr, ptr %t318, !tbaa !27
  %t320 = load i64, ptr %l138, !tbaa !24
  %t321 = mul i64 %t320, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t317, ptr %t319, i64 %t321, i1 false)
  %t322 = load { i64, ptr }, ptr %l139, !tbaa !27
  %t323 = getelementptr { i32, { i64, ptr } }, ptr %l136, i32 0, i32 1
  store { i64, ptr } %t322, ptr %t323, !tbaa !27
  %t324 = load { i32, { i64, ptr } }, ptr %l136
  store { i32, { i64, ptr } } %t324, ptr %rv
  br label %ret
bb47:
  br label %bb48
bb48:
  %t325 = load ptr, ptr %l0, !tbaa !29
  %t327 = getelementptr %"compiler/generic:Program", ptr %t325, i32 0, i32 2
  store ptr %t327, ptr %l141, !tbaa !29
  %t328 = load ptr, ptr %l0, !tbaa !29
  %t330 = getelementptr %"compiler/generic:Program", ptr %t328, i32 0, i32 2
  %t331 = load i32, ptr %l9, !tbaa !23
  %t334 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParams(ptr %v0, ptr %t330, i32 %t331)
  store i32 %t334, ptr %l145
  br label %bb49
bb49:
  %t335 = load ptr, ptr %l141, !tbaa !29
  %t336 = load i32, ptr %l145, !tbaa !23
  %t337 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t335, i32 %t336)
  store { i64, ptr } %t337, ptr %l146
  br label %bb50
bb50:
  %t338 = load { i64, ptr }, ptr %l146, !tbaa !27
  store { i64, ptr } %t338, ptr %l10, !tbaa !27
  %t339 = getelementptr %"compiler/generic:Desc", ptr %l1, i32 0, i32 3
  %t340 = load i64, ptr %t339, !tbaa !24
  %t341 = load i64, ptr %l8, !tbaa !24
  %t344 = add i64 %t340, %t341
  %t345 = load { i64, ptr }, ptr %l10, !tbaa !27
  %t347 = extractvalue { i64, ptr } %t345, 0
  %t350 = icmp slt i64 %t344, %t347
  br i1 %t350, label %bb51, label %bb52
bb51:
  %t352 = load { i64, ptr }, ptr %l10, !tbaa !27
  store { i64, ptr } %t352, ptr %l154, !tbaa !27
  %t353 = getelementptr %"compiler/generic:Desc", ptr %l1, i32 0, i32 3
  %t354 = load i64, ptr %t353, !tbaa !24
  %t355 = load i64, ptr %l8, !tbaa !24
  %t358 = add i64 %t354, %t355
  %t360 = getelementptr { i64, ptr }, ptr %l154, i32 0, i32 1
  %t361 = load ptr, ptr %t360, !tbaa !27
  %t362 = getelementptr i32, ptr %t361, i64 %t358
  %t363 = load i32, ptr %t362, !tbaa !33
  store i32 %t363, ptr %l153, !tbaa !23
  br label %bb53
bb52:
  %t365 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  store i32 %t365, ptr %l153, !tbaa !23
  br label %bb53
bb53:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d18, i32 0, i32 1) }, ptr %l160, !tbaa !27
  %t367 = load { i64, ptr }, ptr %l160, !tbaa !27
  %t368 = load i32, ptr %l153, !tbaa !23
  %t369 = insertvalue { i32, { i64, ptr } } undef, i32 %t368, 0
  %t371 = insertvalue { i32, { i64, ptr } } %t369, { i64, ptr } %t367, 1
  store { i32, { i64, ptr } } %t371, ptr %l162
  %t372 = getelementptr { i32, { i64, ptr } }, ptr %l162, i32 0, i32 1
  %t373 = load { i64, ptr }, ptr %t372, !tbaa !27
  store { i64, ptr } %t373, ptr %l163, !tbaa !27
  %t374 = load { i64, ptr }, ptr %l163, !tbaa !27
  %t375 = extractvalue { i64, ptr } %t374, 0
  store i64 %t375, ptr %l164, !tbaa !24
  %t376 = load i64, ptr %l164, !tbaa !24
  %t377 = mul i64 %t376, 1
  %t378 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t377)
  %t379 = insertvalue { i64, ptr } undef, i64 %t376, 0
  %t380 = insertvalue { i64, ptr } %t379, ptr %t378, 1
  store { i64, ptr } %t380, ptr %l165, !tbaa !27
  %t381 = getelementptr { i64, ptr }, ptr %l165, i32 0, i32 1
  %t382 = load ptr, ptr %t381, !tbaa !27
  %t383 = getelementptr { i64, ptr }, ptr %l163, i32 0, i32 1
  %t384 = load ptr, ptr %t383, !tbaa !27
  %t385 = load i64, ptr %l164, !tbaa !24
  %t386 = mul i64 %t385, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t382, ptr %t384, i64 %t386, i1 false)
  %t387 = load { i64, ptr }, ptr %l165, !tbaa !27
  %t388 = getelementptr { i32, { i64, ptr } }, ptr %l162, i32 0, i32 1
  store { i64, ptr } %t387, ptr %t388, !tbaa !27
  %t389 = load { i32, { i64, ptr } }, ptr %l162
  store { i32, { i64, ptr } } %t389, ptr %rv
  br label %ret
bb54:
  %t390 = getelementptr %"compiler/generic:Desc", ptr %l1, i32 0, i32 0
  %t391 = load i64, ptr %t390, !tbaa !24
  %t392 = load i64, ptr @G_2ecompiler_2fgeneric_2eDescFunc, !tbaa !24
  %t395 = icmp eq i64 %t391, %t392
  br i1 %t395, label %bb55, label %bb56
bb55:
  %t397 = load i32, ptr %l2, !tbaa !23
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d19, i32 0, i32 1) }, ptr %l170, !tbaa !27
  %t398 = load { i64, ptr }, ptr %l170, !tbaa !27
  %t400 = insertvalue { i32, { i64, ptr } } undef, i32 %t397, 0
  %t402 = insertvalue { i32, { i64, ptr } } %t400, { i64, ptr } %t398, 1
  store { i32, { i64, ptr } } %t402, ptr %l172
  %t403 = getelementptr { i32, { i64, ptr } }, ptr %l172, i32 0, i32 1
  %t404 = load { i64, ptr }, ptr %t403, !tbaa !27
  store { i64, ptr } %t404, ptr %l173, !tbaa !27
  %t405 = load { i64, ptr }, ptr %l173, !tbaa !27
  %t406 = extractvalue { i64, ptr } %t405, 0
  store i64 %t406, ptr %l174, !tbaa !24
  %t407 = load i64, ptr %l174, !tbaa !24
  %t408 = mul i64 %t407, 1
  %t409 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t408)
  %t410 = insertvalue { i64, ptr } undef, i64 %t407, 0
  %t411 = insertvalue { i64, ptr } %t410, ptr %t409, 1
  store { i64, ptr } %t411, ptr %l175, !tbaa !27
  %t412 = getelementptr { i64, ptr }, ptr %l175, i32 0, i32 1
  %t413 = load ptr, ptr %t412, !tbaa !27
  %t414 = getelementptr { i64, ptr }, ptr %l173, i32 0, i32 1
  %t415 = load ptr, ptr %t414, !tbaa !27
  %t416 = load i64, ptr %l174, !tbaa !24
  %t417 = mul i64 %t416, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t413, ptr %t415, i64 %t417, i1 false)
  %t418 = load { i64, ptr }, ptr %l175, !tbaa !27
  %t419 = getelementptr { i32, { i64, ptr } }, ptr %l172, i32 0, i32 1
  store { i64, ptr } %t418, ptr %t419, !tbaa !27
  %t420 = load { i32, { i64, ptr } }, ptr %l172
  store { i32, { i64, ptr } } %t420, ptr %rv
  br label %ret
bb56:
  br label %bb57
bb57:
  %t421 = getelementptr %"compiler/generic:Desc", ptr %l1, i32 0, i32 0
  %t422 = load i64, ptr %t421, !tbaa !24
  %t423 = load i64, ptr @G_2ecompiler_2fgeneric_2eDescResult, !tbaa !24
  %t426 = icmp eq i64 %t422, %t423
  br i1 %t426, label %bb58, label %bb59
bb58:
  store %olang.scope zeroinitializer, ptr %s10
  %t428 = load ptr, ptr %l0, !tbaa !29
  %t430 = getelementptr %"compiler/generic:Program", ptr %t428, i32 0, i32 2
  %t431 = load i32, ptr %l2, !tbaa !23
  %t434 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eResults(ptr %v0, ptr %s10, ptr %t430, i32 %t431)
  store { i64, ptr } %t434, ptr %l182
  br label %bb60
bb59:
  br label %bb64
bb60:
  %t435 = load { i64, ptr }, ptr %l182, !tbaa !27
  store { i64, ptr } %t435, ptr %l11, !tbaa !27
  %t436 = getelementptr %"compiler/generic:Desc", ptr %l1, i32 0, i32 3
  %t437 = load i64, ptr %t436, !tbaa !24
  %t438 = load { i64, ptr }, ptr %l11, !tbaa !27
  %t440 = extractvalue { i64, ptr } %t438, 0
  %t443 = icmp slt i64 %t437, %t440
  br i1 %t443, label %bb61, label %bb62
bb61:
  %t445 = getelementptr %"compiler/generic:Desc", ptr %l1, i32 0, i32 3
  %t446 = load i64, ptr %t445, !tbaa !24
  %t448 = getelementptr { i64, ptr }, ptr %l11, i32 0, i32 1
  %t449 = load ptr, ptr %t448, !tbaa !27
  %t450 = getelementptr i32, ptr %t449, i64 %t446
  %t451 = load i32, ptr %t450, !tbaa !33
  store i32 %t451, ptr %l187, !tbaa !23
  br label %bb63
bb62:
  %t453 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  store i32 %t453, ptr %l187, !tbaa !23
  br label %bb63
bb63:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d20, i32 0, i32 1) }, ptr %l191, !tbaa !27
  %t455 = load { i64, ptr }, ptr %l191, !tbaa !27
  %t456 = load i32, ptr %l187, !tbaa !23
  %t457 = insertvalue { i32, { i64, ptr } } undef, i32 %t456, 0
  %t459 = insertvalue { i32, { i64, ptr } } %t457, { i64, ptr } %t455, 1
  store { i32, { i64, ptr } } %t459, ptr %l193
  %t460 = getelementptr { i32, { i64, ptr } }, ptr %l193, i32 0, i32 1
  %t461 = load { i64, ptr }, ptr %t460, !tbaa !27
  store { i64, ptr } %t461, ptr %l194, !tbaa !27
  %t462 = load { i64, ptr }, ptr %l194, !tbaa !27
  %t463 = extractvalue { i64, ptr } %t462, 0
  store i64 %t463, ptr %l195, !tbaa !24
  %t464 = load i64, ptr %l195, !tbaa !24
  %t465 = mul i64 %t464, 1
  %t466 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t465)
  %t467 = insertvalue { i64, ptr } undef, i64 %t464, 0
  %t468 = insertvalue { i64, ptr } %t467, ptr %t466, 1
  store { i64, ptr } %t468, ptr %l196, !tbaa !27
  %t469 = getelementptr { i64, ptr }, ptr %l196, i32 0, i32 1
  %t470 = load ptr, ptr %t469, !tbaa !27
  %t471 = getelementptr { i64, ptr }, ptr %l194, i32 0, i32 1
  %t472 = load ptr, ptr %t471, !tbaa !27
  %t473 = load i64, ptr %l195, !tbaa !24
  %t474 = mul i64 %t473, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t470, ptr %t472, i64 %t474, i1 false)
  %t475 = load { i64, ptr }, ptr %l196, !tbaa !27
  %t476 = getelementptr { i32, { i64, ptr } }, ptr %l193, i32 0, i32 1
  store { i64, ptr } %t475, ptr %t476, !tbaa !27
  call void @__olang_scope_close(ptr %s10)
  %t477 = load { i32, { i64, ptr } }, ptr %l193
  store { i32, { i64, ptr } } %t477, ptr %rv
  br label %ret
bb64:
  %t478 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  store { i64, ptr } { i64 57, ptr getelementptr inbounds (<{ i64, [57 x i8] }>, ptr @.d21, i32 0, i32 1) }, ptr %l198, !tbaa !27
  %t479 = load { i64, ptr }, ptr %l198, !tbaa !27
  %t481 = insertvalue { i32, { i64, ptr } } undef, i32 %t478, 0
  %t483 = insertvalue { i32, { i64, ptr } } %t481, { i64, ptr } %t479, 1
  store { i32, { i64, ptr } } %t483, ptr %l200
  %t484 = getelementptr { i32, { i64, ptr } }, ptr %l200, i32 0, i32 1
  %t485 = load { i64, ptr }, ptr %t484, !tbaa !27
  store { i64, ptr } %t485, ptr %l201, !tbaa !27
  %t486 = load { i64, ptr }, ptr %l201, !tbaa !27
  %t487 = extractvalue { i64, ptr } %t486, 0
  store i64 %t487, ptr %l202, !tbaa !24
  %t488 = load i64, ptr %l202, !tbaa !24
  %t489 = mul i64 %t488, 1
  %t490 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t489)
  %t491 = insertvalue { i64, ptr } undef, i64 %t488, 0
  %t492 = insertvalue { i64, ptr } %t491, ptr %t490, 1
  store { i64, ptr } %t492, ptr %l203, !tbaa !27
  %t493 = getelementptr { i64, ptr }, ptr %l203, i32 0, i32 1
  %t494 = load ptr, ptr %t493, !tbaa !27
  %t495 = getelementptr { i64, ptr }, ptr %l201, i32 0, i32 1
  %t496 = load ptr, ptr %t495, !tbaa !27
  %t497 = load i64, ptr %l202, !tbaa !24
  %t498 = mul i64 %t497, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t494, ptr %t496, i64 %t498, i1 false)
  %t499 = load { i64, ptr }, ptr %l203, !tbaa !27
  %t500 = getelementptr { i32, { i64, ptr } }, ptr %l200, i32 0, i32 1
  store { i64, ptr } %t499, ptr %t500, !tbaa !27
  %t501 = load { i32, { i64, ptr } }, ptr %l200
  store { i32, { i64, ptr } } %t501, ptr %rv
  br label %ret
ret:
  %rr = load { i32, { i64, ptr } }, ptr %rv
  ret { i32, { i64, ptr } } %rr
}

define dso_local { i64, ptr } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eErrValCodes(ptr %v0, ptr %v1, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l3 = alloca { i64, ptr }
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l12 = alloca i64
  %l13 = alloca i64
  %l14 = alloca i64
  %l15 = alloca i64
  %l16 = alloca i64
  %l17 = alloca i64
  %l18 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l22 = alloca i32
  %l27 = alloca { i64, ptr }
  %l28 = alloca { i64, ptr }
  %l29 = alloca i64
  %l30 = alloca { i64, ptr }
  %l32 = alloca ptr
  %l36 = alloca i32
  %l37 = alloca { i64, ptr }
  %l43 = alloca i64
  %l46 = alloca i64
  %l65 = alloca ptr
  %l68 = alloca { i64, ptr }
  %l71 = alloca i32
  %l72 = alloca i32
  %l75 = alloca { i64, ptr }
  %l81 = alloca i64
  %l84 = alloca i64
  %l104 = alloca i1
  %l107 = alloca { i64, ptr }
  %l110 = alloca i64
  %l111 = alloca i64
  %l126 = alloca { i64, ptr }
  %l127 = alloca { i64, ptr }
  %l128 = alloca i64
  %l129 = alloca { i64, ptr }
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
  %t1 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %s0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1, ptr %l18
  br label %bb1
bb1:
  %t2 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l18
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t2, ptr %l2
  %t3 = load ptr, ptr %l0, !tbaa !29
  %t5 = getelementptr %"compiler/generic:Program", ptr %t3, i32 0, i32 2
  %t6 = load i32, ptr %l1, !tbaa !23
  %t9 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t5, i32 %t6)
  store i32 %t9, ptr %l22
  br label %bb2
bb2:
  %t10 = load i32, ptr %l22, !range !{i32 0, i32 33}
  %t12 = trunc i64 32 to i32
  %t13 = icmp eq i32 %t10, %t12
  %t15 = xor i1 %t13, true
  br i1 %t15, label %bb3, label %bb4
bb3:
  store %olang.scope zeroinitializer, ptr %s1
  %t18 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eToArray_3cI64_3e(ptr %s0, ptr %s1, ptr %l2)
  store { i64, ptr } %t18, ptr %l27
  br label %bb5
bb4:
  br label %bb6
bb5:
  %t19 = load { i64, ptr }, ptr %l27, !tbaa !27
  store { i64, ptr } %t19, ptr %l28, !tbaa !27
  %t20 = load { i64, ptr }, ptr %l28, !tbaa !27
  %t21 = extractvalue { i64, ptr } %t20, 0
  store i64 %t21, ptr %l29, !tbaa !24
  %t22 = load i64, ptr %l29, !tbaa !24
  %t23 = mul i64 %t22, 8
  %t24 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t23)
  %t25 = insertvalue { i64, ptr } undef, i64 %t22, 0
  %t26 = insertvalue { i64, ptr } %t25, ptr %t24, 1
  store { i64, ptr } %t26, ptr %l30, !tbaa !27
  %t27 = getelementptr { i64, ptr }, ptr %l30, i32 0, i32 1
  %t28 = load ptr, ptr %t27, !tbaa !27
  %t29 = getelementptr { i64, ptr }, ptr %l28, i32 0, i32 1
  %t30 = load ptr, ptr %t29, !tbaa !27
  %t31 = load i64, ptr %l29, !tbaa !24
  %t32 = mul i64 %t31, 8
  call void @llvm.memmove.p0.p0.i64(ptr %t28, ptr %t30, i64 %t32, i1 false)
  %t33 = load { i64, ptr }, ptr %l30, !tbaa !27
  store { i64, ptr } %t33, ptr %l28, !tbaa !27
  call void @__olang_scope_close(ptr %s1)
  call void @__olang_scope_close(ptr %s0)
  %t34 = load { i64, ptr }, ptr %l28, !tbaa !27
  store { i64, ptr } %t34, ptr %rv
  br label %ret
bb6:
  %t35 = load ptr, ptr %l0, !tbaa !29
  %t37 = getelementptr %"compiler/generic:Program", ptr %t35, i32 0, i32 2
  store ptr %t37, ptr %l32, !tbaa !29
  %t38 = load ptr, ptr %l0, !tbaa !29
  %t40 = getelementptr %"compiler/generic:Program", ptr %t38, i32 0, i32 2
  %t41 = load i32, ptr %l1, !tbaa !23
  %t44 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrValItems(ptr %v0, ptr %t40, i32 %t41)
  store i32 %t44, ptr %l36
  br label %bb7
bb7:
  %t45 = load ptr, ptr %l32, !tbaa !29
  %t46 = load i32, ptr %l36, !tbaa !23
  %t47 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t45, i32 %t46)
  store { i64, ptr } %t47, ptr %l37
  br label %bb8
bb8:
  %t48 = load { i64, ptr }, ptr %l37, !tbaa !27
  store { i64, ptr } %t48, ptr %l3, !tbaa !27
  store i64 0, ptr %l4, !tbaa !24
  %t49 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t51 = extractvalue { i64, ptr } %t49, 0
  store i64 %t51, ptr %l5, !tbaa !24
  store i64 1, ptr %l6, !tbaa !24
  %t53 = load i64, ptr %l5, !tbaa !24
  %t54 = load i64, ptr %l4, !tbaa !24
  %t57 = icmp sgt i64 %t53, %t54
  br i1 %t57, label %bb9, label %bb10
bb9:
  %t59 = load i64, ptr %l6, !tbaa !24
  %t61 = icmp sgt i64 %t59, 0
  br i1 %t61, label %bb11, label %bb12
bb10:
  store i64 0, ptr %l43, !tbaa !24
  br label %bb14
bb11:
  %t63 = load i64, ptr %l5, !tbaa !24
  %t64 = load i64, ptr %l4, !tbaa !24
  %t67 = sub i64 %t63, %t64
  %t68 = load i64, ptr %l6, !tbaa !24
  %t71 = add i64 %t67, %t68
  %t73 = sub i64 %t71, 1
  %t74 = load i64, ptr %l6, !tbaa !24
  %t77 = sdiv i64 %t73, %t74
  store i64 %t77, ptr %l46, !tbaa !24
  br label %bb13
bb12:
  store i64 0, ptr %l46, !tbaa !24
  br label %bb13
bb13:
  %t79 = load i64, ptr %l46, !tbaa !24
  store i64 %t79, ptr %l43, !tbaa !24
  br label %bb14
bb14:
  %t80 = load i64, ptr %l43, !tbaa !24
  store i64 %t80, ptr %l7, !tbaa !24
  store i64 0, ptr %l8, !tbaa !24
  br label %bb15
bb15:
  store %olang.scope zeroinitializer, ptr %s3
  %t81 = load i64, ptr %l8, !tbaa !24
  %t82 = load i64, ptr %l7, !tbaa !24
  %t85 = icmp slt i64 %t81, %t82
  %t87 = xor i1 %t85, true
  br i1 %t87, label %bb16, label %bb17
bb16:
  call void @__olang_scope_close(ptr %s3)
  br label %bb43
bb17:
  br label %bb18
bb18:
  %t89 = load i64, ptr %l4, !tbaa !24
  %t90 = load i64, ptr %l8, !tbaa !24
  %t91 = load i64, ptr %l6, !tbaa !24
  %t94 = mul i64 %t90, %t91
  %t97 = add i64 %t89, %t94
  store i64 %t97, ptr %l9, !tbaa !24
  %t99 = load ptr, ptr %l0, !tbaa !29
  %t101 = getelementptr %"compiler/generic:Program", ptr %t99, i32 0, i32 2
  store ptr %t101, ptr %l65, !tbaa !29
  %t102 = load ptr, ptr %l0, !tbaa !29
  %t104 = getelementptr %"compiler/generic:Program", ptr %t102, i32 0, i32 2
  %t105 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t105, ptr %l68, !tbaa !27
  %t106 = load i64, ptr %l9, !tbaa !24
  %t108 = getelementptr { i64, ptr }, ptr %l68, i32 0, i32 1
  %t109 = load ptr, ptr %t108, !tbaa !27
  %t110 = getelementptr i32, ptr %t109, i64 %t106
  %t111 = load i32, ptr %t110, !tbaa !33
  %t114 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrOf(ptr %v0, ptr %t104, i32 %t111)
  store i32 %t114, ptr %l71
  br label %bb19
bb19:
  %t115 = load ptr, ptr %l65, !tbaa !29
  %t116 = load i32, ptr %l71, !tbaa !23
  %t117 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %t115, i32 %t116)
  store i32 %t117, ptr %l72
  br label %bb20
bb20:
  %t118 = load i32, ptr %l72, !tbaa !23
  %t119 = load ptr, ptr %l0, !tbaa !29
  %t123 = call { i64, ptr } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eErrorWords(ptr %v0, ptr %s3, ptr %t119, i32 %t118)
  store { i64, ptr } %t123, ptr %l75
  br label %bb21
bb21:
  %t124 = load { i64, ptr }, ptr %l75, !tbaa !27
  store i64 0, ptr %l12, !tbaa !24
  %t127 = extractvalue { i64, ptr } %t124, 0
  store i64 %t127, ptr %l13, !tbaa !24
  store i64 1, ptr %l14, !tbaa !24
  %t129 = load i64, ptr %l13, !tbaa !24
  %t130 = load i64, ptr %l12, !tbaa !24
  %t133 = icmp sgt i64 %t129, %t130
  br i1 %t133, label %bb22, label %bb23
bb22:
  %t135 = load i64, ptr %l14, !tbaa !24
  %t137 = icmp sgt i64 %t135, 0
  br i1 %t137, label %bb24, label %bb25
bb23:
  store i64 0, ptr %l81, !tbaa !24
  br label %bb27
bb24:
  %t139 = load i64, ptr %l13, !tbaa !24
  %t140 = load i64, ptr %l12, !tbaa !24
  %t143 = sub i64 %t139, %t140
  %t144 = load i64, ptr %l14, !tbaa !24
  %t147 = add i64 %t143, %t144
  %t149 = sub i64 %t147, 1
  %t150 = load i64, ptr %l14, !tbaa !24
  %t153 = sdiv i64 %t149, %t150
  store i64 %t153, ptr %l84, !tbaa !24
  br label %bb26
bb25:
  store i64 0, ptr %l84, !tbaa !24
  br label %bb26
bb26:
  %t155 = load i64, ptr %l84, !tbaa !24
  store i64 %t155, ptr %l81, !tbaa !24
  br label %bb27
bb27:
  %t156 = load i64, ptr %l81, !tbaa !24
  store i64 %t156, ptr %l15, !tbaa !24
  store i64 0, ptr %l16, !tbaa !24
  br label %bb28
bb28:
  %t157 = load i64, ptr %l16, !tbaa !24
  %t158 = load i64, ptr %l15, !tbaa !24
  %t161 = icmp slt i64 %t157, %t158
  %t163 = xor i1 %t161, true
  br i1 %t163, label %bb29, label %bb30
bb29:
  br label %bb41
bb30:
  br label %bb31
bb31:
  %t165 = load i64, ptr %l12, !tbaa !24
  %t166 = load i64, ptr %l16, !tbaa !24
  %t167 = load i64, ptr %l14, !tbaa !24
  %t170 = mul i64 %t166, %t167
  %t173 = add i64 %t165, %t170
  store i64 %t173, ptr %l17, !tbaa !24
  %t175 = load i64, ptr %l17, !tbaa !24
  %t177 = icmp slt i64 %t175, 64
  br i1 %t177, label %bb32, label %bb33
bb32:
  %t179 = load ptr, ptr %l0, !tbaa !29
  %t181 = getelementptr %"compiler/generic:Program", ptr %t179, i32 0, i32 2
  %t182 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t182, ptr %l107, !tbaa !27
  %t183 = load i64, ptr %l9, !tbaa !24
  %t185 = getelementptr { i64, ptr }, ptr %l107, i32 0, i32 1
  %t186 = load ptr, ptr %t185, !tbaa !27
  %t187 = getelementptr i32, ptr %t186, i64 %t183
  %t188 = load i32, ptr %t187, !tbaa !33
  %t191 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrMask(ptr %v0, ptr %t181, i32 %t188)
  store i64 %t191, ptr %l110
  br label %bb34
bb33:
  store i1 false, ptr %l104, !tbaa !21
  br label %bb35
bb34:
  %t192 = load i64, ptr %l17, !tbaa !24
  store i64 %t192, ptr %l111, !tbaa !24
  %t193 = load i64, ptr %l111, !tbaa !24
  %t194 = load i64, ptr %l111, !tbaa !24
  %t195 = shl i64 1, %t194
  %t196 = load i64, ptr %l110, !tbaa !65
  %t198 = and i64 %t196, %t195
  %t200 = icmp eq i64 %t198, 0
  store i1 %t200, ptr %l104, !tbaa !21
  br label %bb35
bb35:
  %t202 = load i1, ptr %l104, !tbaa !21
  br i1 %t202, label %bb36, label %bb37
bb36:
  br label %bb40
bb37:
  br label %bb38
bb38:
  %t203 = load i64, ptr %l9, !tbaa !24
  %t205 = add i64 %t203, 1
  %t207 = shl i64 %t205, 16
  %t208 = load i64, ptr %l17, !tbaa !24
  %t211 = or i64 %t207, %t208
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %s0, ptr %l2, i64 %t211)
  br label %bb39
bb39:
  br label %bb40
bb40:
  %t214 = load i64, ptr %l16, !tbaa !24
  %t216 = add i64 %t214, 1
  store i64 %t216, ptr %l16, !tbaa !24
  br label %bb28
bb41:
  call void @__olang_scope_close(ptr %s3)
  br label %bb42
bb42:
  %t218 = load i64, ptr %l8, !tbaa !24
  %t220 = add i64 %t218, 1
  store i64 %t220, ptr %l8, !tbaa !24
  br label %bb15
bb43:
  %t223 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eToArray_3cI64_3e(ptr %s0, ptr %s0, ptr %l2)
  store { i64, ptr } %t223, ptr %l126
  br label %bb44
bb44:
  %t224 = load { i64, ptr }, ptr %l126, !tbaa !27
  store { i64, ptr } %t224, ptr %l127, !tbaa !27
  %t225 = load { i64, ptr }, ptr %l127, !tbaa !27
  %t226 = extractvalue { i64, ptr } %t225, 0
  store i64 %t226, ptr %l128, !tbaa !24
  %t227 = load i64, ptr %l128, !tbaa !24
  %t228 = mul i64 %t227, 8
  %t229 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t228)
  %t230 = insertvalue { i64, ptr } undef, i64 %t227, 0
  %t231 = insertvalue { i64, ptr } %t230, ptr %t229, 1
  store { i64, ptr } %t231, ptr %l129, !tbaa !27
  %t232 = getelementptr { i64, ptr }, ptr %l129, i32 0, i32 1
  %t233 = load ptr, ptr %t232, !tbaa !27
  %t234 = getelementptr { i64, ptr }, ptr %l127, i32 0, i32 1
  %t235 = load ptr, ptr %t234, !tbaa !27
  %t236 = load i64, ptr %l128, !tbaa !24
  %t237 = mul i64 %t236, 8
  call void @llvm.memmove.p0.p0.i64(ptr %t233, ptr %t235, i64 %t237, i1 false)
  %t238 = load { i64, ptr }, ptr %l129, !tbaa !27
  store { i64, ptr } %t238, ptr %l127, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  %t239 = load { i64, ptr }, ptr %l127, !tbaa !27
  store { i64, ptr } %t239, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
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

define dso_local i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eErrsHeld(ptr %v0, ptr %a0, i32 %a1, i32 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca i32
  %l3 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l4 = alloca { i64, ptr }
  %l5 = alloca i64
  %l6 = alloca i64
  %l8 = alloca { i64, ptr }
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca i32
  %l16 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l20 = alloca { i64, ptr }
  %l27 = alloca { i64, ptr }
  %l37 = alloca { i64, ptr }
  %l44 = alloca { i64, ptr }
  %l50 = alloca i1
  %l54 = alloca i1
  %s0 = alloca %olang.scope
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  store i32 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load i32, ptr %l1, !tbaa !23
  %t2 = load i32, ptr %l2, !tbaa !23
  %t5 = icmp eq i32 %t1, %t2
  br i1 %t5, label %bb1, label %bb2
bb1:
  call void @__olang_scope_close(ptr %s0)
  store i1 true, ptr %rv
  br label %ret
bb2:
  br label %bb3
bb3:
  %t8 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2ector(ptr %s0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t8, ptr %l16
  br label %bb4
bb4:
  %t9 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l16
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t9, ptr %l3
  %t10 = load ptr, ptr %l0, !tbaa !29
  %t12 = getelementptr %"compiler/generic:Program", ptr %t10, i32 0, i32 2
  %t13 = load i32, ptr %l2, !tbaa !23
  %t16 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t12, i32 %t13)
  store { i64, ptr } %t16, ptr %l20
  br label %bb5
bb5:
  %t17 = load { i64, ptr }, ptr %l20, !tbaa !27
  store { i64, ptr } %t17, ptr %l4, !tbaa !27
  store i64 0, ptr %l5, !tbaa !24
  %t18 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t20 = extractvalue { i64, ptr } %t18, 0
  store i64 %t20, ptr %l6, !tbaa !24
  br label %bb6
bb6:
  %t22 = load i64, ptr %l5, !tbaa !24
  %t23 = load i64, ptr %l6, !tbaa !24
  %t26 = icmp slt i64 %t22, %t23
  %t28 = xor i1 %t26, true
  br i1 %t28, label %bb7, label %bb8
bb7:
  br label %bb12
bb8:
  br label %bb9
bb9:
  %t30 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t30, ptr %l27, !tbaa !27
  %t31 = load i64, ptr %l5, !tbaa !24
  %t33 = getelementptr { i64, ptr }, ptr %l27, i32 0, i32 1
  %t34 = load ptr, ptr %t33, !tbaa !27
  %t35 = getelementptr i32, ptr %t34, i64 %t31
  %t36 = load i32, ptr %t35, !tbaa !33
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2ePush_3ccompiler_2ftypes_3aTypeId_3e(ptr %s0, ptr %l3, i32 %t36)
  br label %bb10
bb10:
  br label %bb11
bb11:
  %t41 = load i64, ptr %l5, !tbaa !24
  %t43 = add i64 %t41, 1
  store i64 %t43, ptr %l5, !tbaa !24
  br label %bb6
bb12:
  %t45 = load ptr, ptr %l0, !tbaa !29
  %t47 = getelementptr %"compiler/generic:Program", ptr %t45, i32 0, i32 2
  %t48 = load i32, ptr %l1, !tbaa !23
  %t51 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t47, i32 %t48)
  store { i64, ptr } %t51, ptr %l37
  br label %bb13
bb13:
  %t52 = load { i64, ptr }, ptr %l37, !tbaa !27
  store { i64, ptr } %t52, ptr %l8, !tbaa !27
  store i64 0, ptr %l9, !tbaa !24
  %t53 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t55 = extractvalue { i64, ptr } %t53, 0
  store i64 %t55, ptr %l10, !tbaa !24
  br label %bb14
bb14:
  %t57 = load i64, ptr %l9, !tbaa !24
  %t58 = load i64, ptr %l10, !tbaa !24
  %t61 = icmp slt i64 %t57, %t58
  %t63 = xor i1 %t61, true
  br i1 %t63, label %bb15, label %bb16
bb15:
  br label %bb26
bb16:
  br label %bb17
bb17:
  %t65 = load { i64, ptr }, ptr %l8, !tbaa !27
  store { i64, ptr } %t65, ptr %l44, !tbaa !27
  %t66 = load i64, ptr %l9, !tbaa !24
  %t68 = getelementptr { i64, ptr }, ptr %l44, i32 0, i32 1
  %t69 = load ptr, ptr %t68, !tbaa !27
  %t70 = getelementptr i32, ptr %t69, i64 %t66
  %t71 = load i32, ptr %t70, !tbaa !33
  store i32 %t71, ptr %l11, !tbaa !23
  %t73 = load i32, ptr %l11, !tbaa !23
  %t74 = load i32, ptr @G_2ecompiler_2ftypes_2eDefaultErrT, !tbaa !23
  %t77 = icmp eq i32 %t73, %t74
  br i1 %t77, label %bb18, label %bb19
bb18:
  store i1 true, ptr %l50, !tbaa !21
  br label %bb21
bb19:
  %t79 = load ptr, ptr %l0, !tbaa !29
  %t80 = load i32, ptr %l11, !tbaa !23
  %t84 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eentryHeld(ptr %v0, ptr %s0, ptr %t79, i32 %t80, ptr %l3)
  store i1 %t84, ptr %l54
  br label %bb20
bb20:
  %t85 = load i1, ptr %l54, !tbaa !21
  %t86 = xor i1 %t85, true
  store i1 %t86, ptr %l50, !tbaa !21
  br label %bb21
bb21:
  %t88 = load i1, ptr %l50, !tbaa !21
  br i1 %t88, label %bb22, label %bb23
bb22:
  call void @__olang_scope_close(ptr %s0)
  store i1 false, ptr %rv
  br label %ret
bb23:
  br label %bb24
bb24:
  br label %bb25
bb25:
  %t90 = load i64, ptr %l9, !tbaa !24
  %t92 = add i64 %t90, 1
  store i64 %t92, ptr %l9, !tbaa !24
  br label %bb14
bb26:
  call void @__olang_scope_close(ptr %s0)
  store i1 true, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
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

define dso_local i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnInstance(ptr %v0, ptr %a0, i64 %a1, i32 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l3 = alloca i32
  %l4 = alloca %"std/pair:Pair.d0636885f2b44490dbc61e56fa468a20"
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i32
  %l8 = alloca %"compiler/generic:fnRow"
  %l9 = alloca %"std/prelude/text:StringBuilder"
  %l10 = alloca i32
  %l11 = alloca { i64, ptr }
  %l12 = alloca i64
  %l13 = alloca i64
  %l14 = alloca i64
  %l15 = alloca i64
  %l16 = alloca i64
  %l17 = alloca i64
  %l18 = alloca { i64, ptr }
  %l21 = alloca i32
  %l24 = alloca %"std/pair:Pair.d0636885f2b44490dbc61e56fa468a20"
  %l25 = alloca i64
  %l29 = alloca i64
  %l30 = alloca i32
  %l35 = alloca i64
  %l36 = alloca ptr
  %l39 = alloca i32
  %l42 = alloca i32
  %l46 = alloca %"compiler/generic:fnRow"
  %l47 = alloca %"std/prelude/text:StringBuilder"
  %l48 = alloca ptr
  %l53 = alloca ptr
  %l62 = alloca ptr
  %l66 = alloca i32
  %l67 = alloca { i64, ptr }
  %l68 = alloca { i64, ptr }
  %l70 = alloca ptr
  %l72 = alloca ptr
  %l76 = alloca i32
  %l79 = alloca i32
  %l83 = alloca i32
  %l86 = alloca { i64, ptr }
  %l89 = alloca ptr
  %l93 = alloca { i64, ptr }
  %l97 = alloca { i64, ptr }
  %l107 = alloca i64
  %l110 = alloca i64
  %l131 = alloca ptr
  %l134 = alloca { i64, ptr }
  %l138 = alloca { i64, ptr }
  %l145 = alloca i64
  %l147 = alloca { i64, ptr }
  %l150 = alloca ptr
  %l151 = alloca i64
  %l152 = alloca i32
  %l153 = alloca i32
  %l154 = alloca i64
  %l157 = alloca { i64, ptr }
  %l162 = alloca %"compiler/generic:instance"
  %s0 = alloca %olang.scope
  %s2 = alloca %olang.scope
  %s5 = alloca %olang.scope
  %s6 = alloca %olang.scope
  %rv = alloca i64
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t5 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2einstanceArgs(ptr %v0, ptr %t1, i32 %a2)
  store i32 %t5, ptr %l21
  br label %bb1
bb1:
  %t6 = load i32, ptr %l21, !tbaa !23
  store i32 %t6, ptr %l3, !tbaa !23
  %t7 = load i64, ptr %l1, !tbaa !24
  %t8 = load i32, ptr %l3, !tbaa !23
  %t11 = call %"std/pair:Pair.d0636885f2b44490dbc61e56fa468a20" @std_2fpair_3aPair_3cI64_2c_20compiler_2ftypes_3aListId_3e_2ector(ptr %s0, i64 %t7, i32 %t8)
  store %"std/pair:Pair.d0636885f2b44490dbc61e56fa468a20" %t11, ptr %l24
  br label %bb2
bb2:
  %t12 = load %"std/pair:Pair.d0636885f2b44490dbc61e56fa468a20", ptr %l24
  store %"std/pair:Pair.d0636885f2b44490dbc61e56fa468a20" %t12, ptr %l4
  %t13 = load ptr, ptr %l0, !tbaa !29
  %t15 = getelementptr %"compiler/generic:Program", ptr %t13, i32 0, i32 45
  %t16 = load %"std/pair:Pair.d0636885f2b44490dbc61e56fa468a20", ptr %l4
  %t19 = call { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20compiler__Hfc7ca136f786d4bb067f513e5dea5730(ptr %v0, ptr %t15, %"std/pair:Pair.d0636885f2b44490dbc61e56fa468a20" %t16)
  %t20 = extractvalue { i32, i64 } %t19, 1
  %t21 = extractvalue { i32, i64 } %t19, 0
  store i32 %t21, ptr %l30
  %t22 = icmp ne i32 %t21, 0
  br i1 %t22, label %bb4, label %ok.23, !prof !99
ok.23:
  store i64 %t20, ptr %l29
  br label %bb3
bb3:
  %t24 = load i64, ptr %l29, !tbaa !24
  store i64 %t24, ptr %l25, !tbaa !24
  br label %bb6
bb4:
  br label %bb5
bb5:
  store i64 -1, ptr %l25, !tbaa !24
  br label %bb6
bb6:
  %t25 = load i64, ptr %l25, !tbaa !24
  store i64 %t25, ptr %l5, !tbaa !24
  %t26 = load i64, ptr %l5, !tbaa !24
  %t28 = icmp sge i64 %t26, 0
  br i1 %t28, label %bb7, label %bb8
bb7:
  %t30 = load i64, ptr %l5, !tbaa !24
  call void @__olang_scope_close(ptr %s0)
  store i64 %t30, ptr %rv
  br label %ret
bb8:
  br label %bb9
bb9:
  %t32 = load i64, ptr %l1, !tbaa !24
  %t34 = call i64 @compiler_2fgeneric_2eFnOwner(i64 %t32)
  store i64 %t34, ptr %l35
  br label %bb10
bb10:
  %t35 = load i64, ptr %l35, !tbaa !24
  store i64 %t35, ptr %l6, !tbaa !24
  %t36 = load ptr, ptr %l0, !tbaa !29
  store ptr %t36, ptr %l36, !tbaa !29
  %t37 = load ptr, ptr %l0, !tbaa !29
  %t38 = load i64, ptr %l1, !tbaa !24
  %t41 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eSig(ptr %v0, ptr %t37, i64 %t38)
  store i32 %t41, ptr %l39
  br label %bb11
bb11:
  %t42 = load i64, ptr %l6, !tbaa !24
  %t43 = load i32, ptr %l3, !tbaa !23
  %t44 = load ptr, ptr %l36, !tbaa !29
  %t45 = load i32, ptr %l39, !tbaa !23
  %t48 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eSubst(ptr %v0, ptr %t44, i32 %t45, i64 %t42, i32 %t43)
  store i32 %t48, ptr %l42
  br label %bb12
bb12:
  %t49 = load i32, ptr %l42, !tbaa !23
  store i32 %t49, ptr %l7, !tbaa !23
  %t50 = load ptr, ptr %l0, !tbaa !29
  %t52 = getelementptr %"compiler/generic:Program", ptr %t50, i32 0, i32 29
  %t53 = load i64, ptr %l1, !tbaa !24
  %t56 = call %"compiler/generic:fnRow" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fgeneric_3afnRow_3e_2eAt_3ccompiler_2fgeneric_3afnRow_3e(ptr %v0, ptr %v0, ptr %t52, i64 %t53)
  store %"compiler/generic:fnRow" %t56, ptr %l46
  br label %bb13
bb13:
  %t57 = load %"compiler/generic:fnRow", ptr %l46
  store %"compiler/generic:fnRow" %t57, ptr %l8
  %t58 = call %"std/prelude/text:StringBuilder" @std_2fprelude_2ftext_3aStringBuilder_2ector(ptr %s0)
  store %"std/prelude/text:StringBuilder" %t58, ptr %l47
  br label %bb14
bb14:
  %t59 = load %"std/prelude/text:StringBuilder", ptr %l47
  store %"std/prelude/text:StringBuilder" %t59, ptr %l9
  store ptr %l9, ptr %l48, !tbaa !29
  %t60 = load ptr, ptr %l0, !tbaa !29
  %t62 = getelementptr %"compiler/generic:Program", ptr %t60, i32 0, i32 0
  %t63 = load ptr, ptr %t62, !tbaa !29
  %t65 = getelementptr %"compiler/load:Loader", ptr %t63, i32 0, i32 10
  %t66 = getelementptr %"compiler/generic:fnRow", ptr %l8, i32 0, i32 0
  %t67 = load i64, ptr %t66, !tbaa !24
  %t70 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H7bcf2aeb09afa796f4333e6ec8c3f63f(ptr %v0, ptr %v0, ptr %t65, i64 %t67)
  store ptr %t70, ptr %l53
  br label %bb15
bb15:
  %t71 = load ptr, ptr %l53, !tbaa !29
  %t73 = getelementptr %"compiler/load:Module", ptr %t71, i32 0, i32 2
  %t74 = load { i64, ptr }, ptr %t73, !tbaa !27
  %t75 = load ptr, ptr %l48, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %v0, ptr %t75, { i64, ptr } %t74)
  br label %bb16
bb16:
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePushChar(ptr %s0, ptr %l9, i8 46)
  br label %bb17
bb17:
  %t78 = getelementptr %"compiler/generic:fnRow", ptr %l8, i32 0, i32 1
  %t79 = load ptr, ptr %t78, !tbaa !29
  %t81 = getelementptr %"compiler/ast:Func", ptr %t79, i32 0, i32 1
  %t82 = load ptr, ptr %t81, !tbaa !29
  %t84 = icmp eq ptr %t82, null
  %t86 = xor i1 %t84, true
  br i1 %t86, label %bb18, label %bb19
bb18:
  store %olang.scope zeroinitializer, ptr %s2
  %t88 = load ptr, ptr %l0, !tbaa !29
  %t90 = getelementptr %"compiler/generic:Program", ptr %t88, i32 0, i32 2
  store ptr %t90, ptr %l62, !tbaa !29
  %t91 = load ptr, ptr %l0, !tbaa !29
  %t93 = getelementptr %"compiler/generic:Program", ptr %t91, i32 0, i32 2
  %t94 = load i32, ptr %l7, !tbaa !23
  %t97 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParams(ptr %v0, ptr %t93, i32 %t94)
  store i32 %t97, ptr %l66
  br label %bb20
bb19:
  br label %bb30
bb20:
  %t98 = load ptr, ptr %l62, !tbaa !29
  %t99 = load i32, ptr %l66, !tbaa !23
  %t100 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %s2, ptr %t98, i32 %t99)
  store { i64, ptr } %t100, ptr %l67
  br label %bb21
bb21:
  %t101 = load { i64, ptr }, ptr %l67, !tbaa !27
  store { i64, ptr } %t101, ptr %l68, !tbaa !27
  %t102 = getelementptr { i64, ptr }, ptr %l68, i32 0, i32 1
  %t103 = load ptr, ptr %t102, !tbaa !27
  %t104 = getelementptr i32, ptr %t103, i64 0
  %t105 = load i32, ptr %t104, !tbaa !33
  store i32 %t105, ptr %l10, !tbaa !23
  store ptr %l9, ptr %l70, !tbaa !29
  %t107 = load ptr, ptr %l0, !tbaa !29
  %t109 = getelementptr %"compiler/generic:Program", ptr %t107, i32 0, i32 2
  store ptr %t109, ptr %l72, !tbaa !29
  %t110 = load ptr, ptr %l0, !tbaa !29
  %t112 = getelementptr %"compiler/generic:Program", ptr %t110, i32 0, i32 2
  %t113 = load i32, ptr %l10, !tbaa !23
  %t116 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t112, i32 %t113)
  store i32 %t116, ptr %l76
  br label %bb22
bb22:
  %t117 = load i32, ptr %l76, !range !{i32 0, i32 33}
  %t119 = trunc i64 20 to i32
  %t120 = icmp eq i32 %t117, %t119
  br i1 %t120, label %bb23, label %bb24
bb23:
  %t122 = load ptr, ptr %l0, !tbaa !29
  %t124 = getelementptr %"compiler/generic:Program", ptr %t122, i32 0, i32 2
  %t125 = load i32, ptr %l10, !tbaa !23
  %t128 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eReferent(ptr %v0, ptr %t124, i32 %t125)
  store i32 %t128, ptr %l83
  br label %bb25
bb24:
  %t129 = load i32, ptr %l10, !tbaa !23
  store i32 %t129, ptr %l79, !tbaa !23
  br label %bb26
bb25:
  %t131 = load i32, ptr %l83, !tbaa !23
  store i32 %t131, ptr %l79, !tbaa !23
  br label %bb26
bb26:
  %t133 = inttoptr i64 0 to ptr
  %t134 = load ptr, ptr %l72, !tbaa !29
  %t135 = load i32, ptr %l79, !tbaa !23
  %t136 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eCanon(ptr %v0, ptr %s2, ptr %t133, ptr %t134, i32 %t135)
  store { i64, ptr } %t136, ptr %l86
  br label %bb27
bb27:
  %t137 = load { i64, ptr }, ptr %l86, !tbaa !27
  %t138 = extractvalue { i64, ptr } %t137, 0
  %t139 = extractvalue { i64, ptr } %t137, 1
  %t140 = mul i64 %t138, 1
  %t141 = call ptr @__olang_scope_alloc(ptr %s2, i64 %t140)
  call void @llvm.memcpy.p0.p0.i64(ptr %t141, ptr %t139, i64 %t140, i1 false)
  %t142 = insertvalue { i64, ptr } undef, i64 %t138, 0
  %t143 = insertvalue { i64, ptr } %t142, ptr %t141, 1
  %t144 = load ptr, ptr %l70, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s2, ptr %t144, { i64, ptr } %t143)
  br label %bb28
bb28:
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePushChar(ptr %s0, ptr %l9, i8 46)
  br label %bb29
bb29:
  call void @__olang_scope_close(ptr %s2)
  br label %bb30
bb30:
  store ptr %l9, ptr %l89, !tbaa !29
  %t147 = load ptr, ptr %l0, !tbaa !29
  %t148 = getelementptr %"compiler/generic:fnRow", ptr %l8, i32 0, i32 1
  %t149 = load ptr, ptr %t148, !tbaa !29
  %t151 = getelementptr %"compiler/ast:Func", ptr %t149, i32 0, i32 2
  %t152 = load i32, ptr %t151, !tbaa !23
  %t155 = call { i64, ptr } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2etext(ptr %v0, ptr %v0, ptr %t147, i32 %t152)
  store { i64, ptr } %t155, ptr %l93
  br label %bb31
bb31:
  %t156 = load ptr, ptr %l89, !tbaa !29
  %t157 = load { i64, ptr }, ptr %l93, !tbaa !27
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %v0, ptr %t156, { i64, ptr } %t157)
  br label %bb32
bb32:
  %t158 = load ptr, ptr %l0, !tbaa !29
  %t160 = getelementptr %"compiler/generic:Program", ptr %t158, i32 0, i32 2
  %t161 = load i32, ptr %l3, !tbaa !23
  %t164 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t160, i32 %t161)
  store { i64, ptr } %t164, ptr %l97
  br label %bb33
bb33:
  %t165 = load { i64, ptr }, ptr %l97, !tbaa !27
  store { i64, ptr } %t165, ptr %l11, !tbaa !27
  %t166 = load { i64, ptr }, ptr %l11, !tbaa !27
  %t168 = extractvalue { i64, ptr } %t166, 0
  %t170 = icmp sgt i64 %t168, 0
  br i1 %t170, label %bb34, label %bb35
bb34:
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePushChar(ptr %s0, ptr %l9, i8 60)
  br label %bb36
bb35:
  br label %bb56
bb36:
  store i64 0, ptr %l12, !tbaa !24
  %t173 = load { i64, ptr }, ptr %l11, !tbaa !27
  %t175 = extractvalue { i64, ptr } %t173, 0
  store i64 %t175, ptr %l13, !tbaa !24
  store i64 1, ptr %l14, !tbaa !24
  %t177 = load i64, ptr %l13, !tbaa !24
  %t178 = load i64, ptr %l12, !tbaa !24
  %t181 = icmp sgt i64 %t177, %t178
  br i1 %t181, label %bb37, label %bb38
bb37:
  %t183 = load i64, ptr %l14, !tbaa !24
  %t185 = icmp sgt i64 %t183, 0
  br i1 %t185, label %bb39, label %bb40
bb38:
  store i64 0, ptr %l107, !tbaa !24
  br label %bb42
bb39:
  %t187 = load i64, ptr %l13, !tbaa !24
  %t188 = load i64, ptr %l12, !tbaa !24
  %t191 = sub i64 %t187, %t188
  %t192 = load i64, ptr %l14, !tbaa !24
  %t195 = add i64 %t191, %t192
  %t197 = sub i64 %t195, 1
  %t198 = load i64, ptr %l14, !tbaa !24
  %t201 = sdiv i64 %t197, %t198
  store i64 %t201, ptr %l110, !tbaa !24
  br label %bb41
bb40:
  store i64 0, ptr %l110, !tbaa !24
  br label %bb41
bb41:
  %t203 = load i64, ptr %l110, !tbaa !24
  store i64 %t203, ptr %l107, !tbaa !24
  br label %bb42
bb42:
  %t204 = load i64, ptr %l107, !tbaa !24
  store i64 %t204, ptr %l15, !tbaa !24
  store i64 0, ptr %l16, !tbaa !24
  br label %bb43
bb43:
  store %olang.scope zeroinitializer, ptr %s5
  %t205 = load i64, ptr %l16, !tbaa !24
  %t206 = load i64, ptr %l15, !tbaa !24
  %t209 = icmp slt i64 %t205, %t206
  %t211 = xor i1 %t209, true
  br i1 %t211, label %bb44, label %bb45
bb44:
  call void @__olang_scope_close(ptr %s5)
  br label %bb54
bb45:
  br label %bb46
bb46:
  %t213 = load i64, ptr %l12, !tbaa !24
  %t214 = load i64, ptr %l16, !tbaa !24
  %t215 = load i64, ptr %l14, !tbaa !24
  %t218 = mul i64 %t214, %t215
  %t221 = add i64 %t213, %t218
  store i64 %t221, ptr %l17, !tbaa !24
  %t223 = load i64, ptr %l17, !tbaa !24
  %t225 = icmp sgt i64 %t223, 0
  br i1 %t225, label %bb47, label %bb48
bb47:
  store %olang.scope zeroinitializer, ptr %s6
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s6, ptr %l9, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d22, i32 0, i32 1) })
  br label %bb49
bb48:
  br label %bb50
bb49:
  call void @__olang_scope_close(ptr %s6)
  br label %bb50
bb50:
  store ptr %l9, ptr %l131, !tbaa !29
  %t228 = load ptr, ptr %l0, !tbaa !29
  %t230 = getelementptr %"compiler/generic:Program", ptr %t228, i32 0, i32 2
  %t231 = load { i64, ptr }, ptr %l11, !tbaa !27
  store { i64, ptr } %t231, ptr %l134, !tbaa !27
  %t232 = load i64, ptr %l17, !tbaa !24
  %t234 = getelementptr { i64, ptr }, ptr %l134, i32 0, i32 1
  %t235 = load ptr, ptr %t234, !tbaa !27
  %t236 = getelementptr i32, ptr %t235, i64 %t232
  %t237 = load i32, ptr %t236, !tbaa !33
  %t239 = inttoptr i64 0 to ptr
  %t242 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eCanon(ptr %v0, ptr %s5, ptr %t239, ptr %t230, i32 %t237)
  store { i64, ptr } %t242, ptr %l138
  br label %bb51
bb51:
  %t243 = load { i64, ptr }, ptr %l138, !tbaa !27
  %t244 = extractvalue { i64, ptr } %t243, 0
  %t245 = extractvalue { i64, ptr } %t243, 1
  %t246 = mul i64 %t244, 1
  %t247 = call ptr @__olang_scope_alloc(ptr %s5, i64 %t246)
  call void @llvm.memcpy.p0.p0.i64(ptr %t247, ptr %t245, i64 %t246, i1 false)
  %t248 = insertvalue { i64, ptr } undef, i64 %t244, 0
  %t249 = insertvalue { i64, ptr } %t248, ptr %t247, 1
  %t250 = load ptr, ptr %l131, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s5, ptr %t250, { i64, ptr } %t249)
  br label %bb52
bb52:
  call void @__olang_scope_close(ptr %s5)
  br label %bb53
bb53:
  %t252 = load i64, ptr %l16, !tbaa !24
  %t254 = add i64 %t252, 1
  store i64 %t254, ptr %l16, !tbaa !24
  br label %bb43
bb54:
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePushChar(ptr %s0, ptr %l9, i8 62)
  br label %bb55
bb55:
  br label %bb56
bb56:
  %t257 = load ptr, ptr %l0, !tbaa !29
  %t259 = getelementptr %"compiler/generic:Program", ptr %t257, i32 0, i32 44
  %t261 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fgeneric_3ainstance_3e_2eLen_Hf1590ba3dea8cd8a914b2a9f5344a2c6(ptr %v0, ptr %t259)
  store i64 %t261, ptr %l145
  br label %bb57
bb57:
  %t262 = load i64, ptr %l145, !tbaa !24
  store i64 %t262, ptr %l5, !tbaa !24
  %t264 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %s0, ptr %v0, ptr %l9)
  store { i64, ptr } %t264, ptr %l147
  br label %bb58
bb58:
  %t265 = load { i64, ptr }, ptr %l147, !tbaa !27
  %t266 = extractvalue { i64, ptr } %t265, 0
  %t267 = extractvalue { i64, ptr } %t265, 1
  %t268 = mul i64 %t266, 1
  %t269 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t268)
  call void @llvm.memcpy.p0.p0.i64(ptr %t269, ptr %t267, i64 %t268, i1 false)
  %t270 = insertvalue { i64, ptr } undef, i64 %t266, 0
  %t271 = insertvalue { i64, ptr } %t270, ptr %t269, 1
  store { i64, ptr } %t271, ptr %l18, !tbaa !27
  %t273 = load ptr, ptr %l0, !tbaa !29
  %t275 = getelementptr %"compiler/generic:Program", ptr %t273, i32 0, i32 44
  store ptr %t275, ptr %l150, !tbaa !29
  %t276 = load i64, ptr %l1, !tbaa !24
  store i64 %t276, ptr %l151, !tbaa !24
  %t277 = load i32, ptr %l3, !tbaa !23
  store i32 %t277, ptr %l152, !tbaa !23
  %t278 = load i32, ptr %l7, !tbaa !23
  store i32 %t278, ptr %l153, !tbaa !23
  %t279 = ptrtoint ptr %v0 to i64
  store i64 %t279, ptr %l154, !tbaa !24
  %t280 = load i1, ptr @olang_2esole_2ecompiler_2fgeneric_3ainstance_2e3
  br i1 %t280, label %bb59, label %bb60
bb59:
  %t282 = call ptr @__olang_region_make(ptr %v0)
  %t283 = ptrtoint ptr %t282 to i64
  store i64 %t283, ptr %l154, !tbaa !24
  br label %bb60
bb60:
  %t284 = load { i64, ptr }, ptr %l18, !tbaa !27
  %t285 = load i64, ptr %l154
  %t286 = inttoptr i64 %t285 to ptr
  %t288 = call { i64, ptr } @compiler_2ftypes_2eSymbol(ptr %v0, ptr %t286, { i64, ptr } %t284)
  store { i64, ptr } %t288, ptr %l157
  br label %bb61
bb61:
  %t289 = load { i64, ptr }, ptr %l157, !tbaa !27
  %t290 = load i64, ptr %l154
  %t291 = inttoptr i64 %t290 to ptr
  %t292 = extractvalue { i64, ptr } %t289, 0
  %t293 = extractvalue { i64, ptr } %t289, 1
  %t294 = mul i64 %t292, 1
  %t295 = call ptr @__olang_scope_alloc(ptr %t291, i64 %t294)
  call void @llvm.memcpy.p0.p0.i64(ptr %t295, ptr %t293, i64 %t294, i1 false)
  %t296 = insertvalue { i64, ptr } undef, i64 %t292, 0
  %t297 = insertvalue { i64, ptr } %t296, ptr %t295, 1
  %t298 = load { i64, ptr }, ptr %l18, !tbaa !27
  %t299 = load ptr, ptr %l0, !tbaa !29
  %t301 = getelementptr %"compiler/generic:Program", ptr %t299, i32 0, i32 51
  %t302 = load %"compiler/generic:Origin", ptr %t301
  %t303 = load i64, ptr %l151, !tbaa !24
  %t304 = load i32, ptr %l152, !tbaa !23
  %t305 = load i32, ptr %l153, !tbaa !23
  %t309 = call %"compiler/generic:instance" @compiler_2fgeneric_3ainstance_2ector(ptr %v0, ptr %v0, ptr %v0, i64 %t303, i32 %t304, i32 %t305, { i64, ptr } %t297, { i64, ptr } %t298, %"compiler/generic:Origin" %t302)
  store %"compiler/generic:instance" %t309, ptr %l162
  br label %bb62
bb62:
  %t310 = load ptr, ptr %l150, !tbaa !29
  %t311 = load %"compiler/generic:instance", ptr %l162
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fgeneric_3ainstance_3e_2ePus_Hca36cd1c69200a0db62aadeba49cf6ed(ptr %v0, ptr %v0, ptr %t310, %"compiler/generic:instance" %t311)
  br label %bb63
bb63:
  %t312 = load ptr, ptr %l0, !tbaa !29
  %t314 = getelementptr %"compiler/generic:Program", ptr %t312, i32 0, i32 45
  %t315 = load %"std/pair:Pair.d0636885f2b44490dbc61e56fa468a20", ptr %l4
  %t316 = load i64, ptr %l5, !tbaa !24
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20compiler__H5edca056502a242264473f986489341f(ptr %v0, ptr %t314, %"std/pair:Pair.d0636885f2b44490dbc61e56fa468a20" %t315, i64 %t316)
  br label %bb64
bb64:
  %t320 = load i64, ptr %l5, !tbaa !24
  call void @__olang_scope_close(ptr %s0)
  store i64 %t320, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFoldLength(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, ptr %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca i32
  %l4 = alloca %"compiler/generic:folded"
  %l5 = alloca { i64, ptr }
  %l6 = alloca i64
  %l7 = alloca i1
  %l8 = alloca ptr
  %l9 = alloca i64
  %l10 = alloca %"compiler/generic:ConstAsk"
  %l11 = alloca { i64, ptr }
  %l12 = alloca { i64, ptr }
  %l13 = alloca i64
  %l14 = alloca %"std/prelude/map:MapIter.bf5835bb10600fe6a7fc1da14a6360d9"
  %l15 = alloca %"std/prelude/map:MapEntry.91de8c8eb84d52d1e58996aec31d85aa"
  %l20 = alloca i1
  %l25 = alloca i1
  %l29 = alloca i32
  %l33 = alloca %"compiler/generic:folded"
  %l37 = alloca i1
  %l41 = alloca i1
  %l44 = alloca i1
  %l48 = alloca { i64, ptr }
  %l53 = alloca i1
  %l54 = alloca i64
  %l58 = alloca i64
  %l59 = alloca i32
  %l64 = alloca i32
  %l69 = alloca i32
  %l72 = alloca i64
  %l74 = alloca i64
  %l79 = alloca %"compiler/generic:ConstAsk"
  %l82 = alloca i1
  %l89 = alloca i64
  %l95 = alloca i64
  %l101 = alloca %"std/prelude/map:MapIter.bf5835bb10600fe6a7fc1da14a6360d9"
  %l102 = alloca %"std/prelude/map:MapEntry.91de8c8eb84d52d1e58996aec31d85aa"
  %l104 = alloca %"std/prelude/map:MapEntry.91de8c8eb84d52d1e58996aec31d85aa"
  %l105 = alloca i32
  %l107 = alloca i1
  %l110 = alloca { i64, ptr }
  %l113 = alloca { i64, ptr }
  %l119 = alloca ptr
  %l129 = alloca %"compiler/generic:ConstAsk"
  %l131 = alloca i32
  %l135 = alloca i1
  %l139 = alloca i1
  %l140 = alloca i1
  %l144 = alloca i1
  %l148 = alloca i1
  %l150 = alloca i1
  %l152 = alloca i1
  %l158 = alloca i1
  %l162 = alloca i1
  %l166 = alloca i1
  %l175 = alloca i32
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
  %t3 = icmp eq ptr %t1, null
  br i1 %t3, label %bb1, label %bb2
bb1:
  store i1 true, ptr %l20, !tbaa !21
  br label %bb4
bb2:
  %t5 = load ptr, ptr %l0, !tbaa !29
  %t6 = load ptr, ptr %l1, !tbaa !29
  %t7 = load ptr, ptr %l2, !tbaa !29
  %t12 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2ereadsLocal(ptr %v0, ptr %v1, ptr %v2, ptr %t5, ptr %t6, ptr %t7)
  store i1 %t12, ptr %l25
  br label %bb3
bb3:
  %t13 = load i1, ptr %l25, !tbaa !21
  store i1 %t13, ptr %l20, !tbaa !21
  br label %bb4
bb4:
  %t14 = load i1, ptr %l20, !tbaa !21
  br i1 %t14, label %bb5, label %bb6
bb5:
  call void @__olang_scope_close(ptr %s0)
  store i32 0, ptr %rv
  br label %ret
bb6:
  br label %bb7
bb7:
  %t16 = load ptr, ptr %l0, !tbaa !29
  %t18 = getelementptr %"compiler/generic:Program", ptr %t16, i32 0, i32 2
  %t20 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePrim(ptr %v0, ptr %s0, ptr %t18, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d23, i32 0, i32 1) })
  store i32 %t20, ptr %l29
  br label %bb8
bb8:
  %t21 = load i32, ptr %l29, !tbaa !23
  store i32 %t21, ptr %l3, !tbaa !23
  %t22 = load ptr, ptr %l0, !tbaa !29
  %t23 = load ptr, ptr %l1, !tbaa !29
  %t24 = load ptr, ptr %l2, !tbaa !29
  %t28 = call %"compiler/generic:folded" @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eeval(ptr %v0, ptr %v1, ptr %v2, ptr %t22, ptr %t23, ptr %t24)
  store %"compiler/generic:folded" %t28, ptr %l33
  br label %bb9
bb9:
  %t29 = load %"compiler/generic:folded", ptr %l33
  store %"compiler/generic:folded" %t29, ptr %l4
  %t30 = getelementptr %"compiler/generic:folded", ptr %l4, i32 0, i32 0
  %t31 = load i64, ptr %t30, !tbaa !24
  %t32 = load i64, ptr @G_2ecompiler_2fgeneric_2eUnfolded, !tbaa !24
  %t35 = icmp eq i64 %t31, %t32
  br i1 %t35, label %bb10, label %bb11
bb10:
  %t37 = load ptr, ptr %l1, !tbaa !29
  %t39 = getelementptr %"compiler/generic:Context", ptr %t37, i32 0, i32 1
  %t40 = load i64, ptr %t39, !tbaa !24
  %t42 = icmp slt i64 %t40, 0
  br i1 %t42, label %bb12, label %bb13
bb11:
  store i1 false, ptr %l37, !tbaa !21
  br label %bb16
bb12:
  store i1 true, ptr %l41, !tbaa !21
  br label %bb15
bb13:
  %t44 = load ptr, ptr %l0, !tbaa !29
  %t45 = load ptr, ptr %l1, !tbaa !29
  %t48 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2evarsBound(ptr %v0, ptr %v1, ptr %t44, ptr %t45)
  store i1 %t48, ptr %l44
  br label %bb14
bb14:
  %t49 = load i1, ptr %l44, !tbaa !21
  store i1 %t49, ptr %l41, !tbaa !21
  br label %bb15
bb15:
  %t50 = load i1, ptr %l41, !tbaa !21
  store i1 %t50, ptr %l37, !tbaa !21
  br label %bb16
bb16:
  %t51 = load i1, ptr %l37, !tbaa !21
  br i1 %t51, label %bb17, label %bb18
bb17:
  %t52 = load ptr, ptr %l0, !tbaa !29
  %t53 = load ptr, ptr %l1, !tbaa !29
  %t54 = load ptr, ptr %l2, !tbaa !29
  %t58 = call { i64, ptr } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eLengthKey(ptr %v0, ptr %v1, ptr %v2, ptr %v0, ptr %t52, ptr %t53, ptr %t54)
  store { i64, ptr } %t58, ptr %l48
  br label %bb19
bb18:
  br label %bb68
bb19:
  %t59 = load { i64, ptr }, ptr %l48, !tbaa !27
  %t60 = extractvalue { i64, ptr } %t59, 0
  %t61 = extractvalue { i64, ptr } %t59, 1
  %t62 = mul i64 %t60, 1
  %t63 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t62)
  call void @llvm.memcpy.p0.p0.i64(ptr %t63, ptr %t61, i64 %t62, i1 false)
  %t64 = insertvalue { i64, ptr } undef, i64 %t60, 0
  %t65 = insertvalue { i64, ptr } %t64, ptr %t63, 1
  store { i64, ptr } %t65, ptr %l5, !tbaa !27
  %t67 = load ptr, ptr %l0, !tbaa !29
  %t69 = getelementptr %"compiler/generic:Program", ptr %t67, i32 0, i32 54
  %t70 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t73 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_H9b83f66eba65594537030636cb0b52b7(ptr %v0, ptr %v0, ptr %t69, { i64, ptr } %t70)
  store i1 %t73, ptr %l53
  br label %bb20
bb20:
  %t74 = load i1, ptr %l53, !tbaa !21
  br i1 %t74, label %bb21, label %bb22
bb21:
  %t75 = load ptr, ptr %l0, !tbaa !29
  %t77 = getelementptr %"compiler/generic:Program", ptr %t75, i32 0, i32 54
  %t78 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t81 = call { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_H9162e3b7f03fcbf954b681204d5f6cca(ptr %v0, ptr %v0, ptr %t77, { i64, ptr } %t78)
  %t82 = extractvalue { i32, i64 } %t81, 1
  %t83 = extractvalue { i32, i64 } %t81, 0
  store i32 %t83, ptr %l59
  %t84 = icmp ne i32 %t83, 0
  br i1 %t84, label %bb24, label %ok.85, !prof !99
ok.85:
  store i64 %t82, ptr %l58
  br label %bb23
bb22:
  br label %bb31
bb23:
  %t86 = load i64, ptr %l58, !tbaa !24
  store i64 %t86, ptr %l54, !tbaa !24
  br label %bb26
bb24:
  br label %bb25
bb25:
  %t87 = load i64, ptr @G_2ecompiler_2fgeneric_2eRunTimeLength, !tbaa !24
  store i64 %t87, ptr %l54, !tbaa !24
  br label %bb26
bb26:
  %t89 = load i64, ptr %l54, !tbaa !24
  store i64 %t89, ptr %l6, !tbaa !24
  %t90 = load i64, ptr %l6, !tbaa !24
  %t91 = load i64, ptr @G_2ecompiler_2fgeneric_2eRunTimeLength, !tbaa !24
  %t94 = icmp eq i64 %t90, %t91
  br i1 %t94, label %bb27, label %bb28
bb27:
  store i32 0, ptr %l64, !tbaa !23
  br label %bb30
bb28:
  %t96 = load ptr, ptr %l0, !tbaa !29
  %t98 = getelementptr %"compiler/generic:Program", ptr %t96, i32 0, i32 2
  %t99 = load i32, ptr %l3, !tbaa !23
  %t100 = load i64, ptr %l6, !tbaa !24
  %t104 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eConst(ptr %v0, ptr %t98, i32 %t99, i64 %t100)
  store i32 %t104, ptr %l69
  br label %bb29
bb29:
  %t105 = load i32, ptr %l69, !tbaa !23
  store i32 %t105, ptr %l64, !tbaa !23
  br label %bb30
bb30:
  call void @__olang_scope_close(ptr %s0)
  %t106 = load i32, ptr %l64, !tbaa !23
  store i32 %t106, ptr %rv
  br label %ret
bb31:
  store i1 false, ptr %l7, !tbaa !21
  %t107 = load ptr, ptr %l0, !tbaa !29
  %t109 = getelementptr %"compiler/generic:Program", ptr %t107, i32 0, i32 55
  store ptr %t109, ptr %l8, !tbaa !29
  store i64 0, ptr %l9, !tbaa !24
  br label %bb32
bb32:
  %t111 = load i64, ptr %l9, !tbaa !24
  store i64 %t111, ptr %l72, !tbaa !24
  %t112 = load ptr, ptr %l8, !tbaa !29
  %t114 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fgeneric_3aConstAsk_3e_2eLen_H192b02349624a37821a23e7def80c714(ptr %v0, ptr %t112)
  store i64 %t114, ptr %l74
  br label %bb33
bb33:
  %t115 = load i64, ptr %l72, !tbaa !24
  %t116 = load i64, ptr %l74, !tbaa !24
  %t117 = icmp slt i64 %t115, %t116
  %t119 = xor i1 %t117, true
  br i1 %t119, label %bb34, label %bb35
bb34:
  br label %bb43
bb35:
  br label %bb36
bb36:
  %t121 = load ptr, ptr %l8, !tbaa !29
  %t122 = load i64, ptr %l9, !tbaa !24
  %t125 = call %"compiler/generic:ConstAsk" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fgeneric_3aConstAsk_3e_2eAt__H3f4459851a287fa27378a94ef8fff763(ptr %v0, ptr %v0, ptr %t121, i64 %t122)
  store %"compiler/generic:ConstAsk" %t125, ptr %l79
  br label %bb37
bb37:
  %t126 = load %"compiler/generic:ConstAsk", ptr %l79
  store %"compiler/generic:ConstAsk" %t126, ptr %l10
  %t127 = getelementptr %"compiler/generic:ConstAsk", ptr %l10, i32 0, i32 6
  %t128 = load { i64, ptr }, ptr %t127, !tbaa !27
  %t129 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t132 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %v0, { i64, ptr } %t128, { i64, ptr } %t129)
  store i1 %t132, ptr %l82
  br label %bb38
bb38:
  %t133 = load i1, ptr %l82, !tbaa !21
  br i1 %t133, label %bb39, label %bb40
bb39:
  store i1 true, ptr %l7, !tbaa !21
  br label %bb41
bb40:
  br label %bb41
bb41:
  br label %bb42
bb42:
  %t134 = load i64, ptr %l9, !tbaa !24
  %t136 = add i64 %t134, 1
  store i64 %t136, ptr %l9, !tbaa !24
  br label %bb32
bb43:
  %t138 = load i1, ptr %l7, !tbaa !21
  %t140 = xor i1 %t138, true
  br i1 %t140, label %bb44, label %bb45
bb44:
  %t142 = load ptr, ptr %l1, !tbaa !29
  %t144 = getelementptr %"compiler/generic:Context", ptr %t142, i32 0, i32 2
  %t146 = call i64 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fsource_3aNameId_2c_20compil_H0e73c22773457b60eb954c2c4a2643e9(ptr %v1, ptr %t144)
  store i64 %t146, ptr %l89
  br label %bb46
bb45:
  br label %bb66
bb46:
  %t147 = load i64, ptr %l89, !tbaa !24
  %t148 = icmp sge i64 %t147, 0
  br i1 %t148, label %bb47, label %bb48
bb47:
  %t150 = load i64, ptr %l89, !tbaa !24
  %t151 = icmp sle i64 %t150, 2305843009213693951
  br i1 %t151, label %bb49, label %bb50
bb48:
  call void @__olang_check_failed(ptr @olang_loc_99cf014ebb3d252c_a323a427e7fb0b10)
  unreachable
bb49:
  %t153 = load i64, ptr %l89, !tbaa !24
  %t154 = mul i64 %t153, 4
  %t155 = call ptr @__olang_scope_alloc_zeroed(ptr %v0, i64 %t154)
  %t156 = insertvalue { i64, ptr } undef, i64 %t153, 0
  %t157 = insertvalue { i64, ptr } %t156, ptr %t155, 1
  store { i64, ptr } %t157, ptr %l11, !tbaa !27
  %t159 = load ptr, ptr %l1, !tbaa !29
  %t161 = getelementptr %"compiler/generic:Context", ptr %t159, i32 0, i32 2
  %t163 = call i64 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fsource_3aNameId_2c_20compil_H0e73c22773457b60eb954c2c4a2643e9(ptr %v1, ptr %t161)
  store i64 %t163, ptr %l95
  br label %bb51
bb50:
  call void @__olang_check_failed(ptr @olang_loc_99cf014ebb3d252c_a323a427e7fb0b10)
  unreachable
bb51:
  %t164 = load i64, ptr %l95, !tbaa !24
  %t165 = icmp sge i64 %t164, 0
  br i1 %t165, label %bb52, label %bb53
bb52:
  %t167 = load i64, ptr %l95, !tbaa !24
  %t168 = icmp sle i64 %t167, 2305843009213693951
  br i1 %t168, label %bb54, label %bb55
bb53:
  call void @__olang_check_failed(ptr @olang_loc_9c491d6513909eb9_b2019bc0b634333d)
  unreachable
bb54:
  %t170 = load i64, ptr %l95, !tbaa !24
  %t171 = mul i64 %t170, 4
  %t172 = call ptr @__olang_scope_alloc_zeroed(ptr %v0, i64 %t171)
  %t173 = insertvalue { i64, ptr } undef, i64 %t170, 0
  %t174 = insertvalue { i64, ptr } %t173, ptr %t172, 1
  store { i64, ptr } %t174, ptr %l12, !tbaa !27
  store i64 0, ptr %l13, !tbaa !24
  %t176 = load ptr, ptr %l1, !tbaa !29
  %t178 = getelementptr %"compiler/generic:Context", ptr %t176, i32 0, i32 2
  %t180 = call %"std/prelude/map:MapIter.bf5835bb10600fe6a7fc1da14a6360d9" @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fsource_3aNameId_2c_20compil_Ha72624ba64524ee3315305b5d1bfb369(ptr %v1, ptr %v1, ptr %t178)
  store %"std/prelude/map:MapIter.bf5835bb10600fe6a7fc1da14a6360d9" %t180, ptr %l101
  br label %bb56
bb55:
  call void @__olang_check_failed(ptr @olang_loc_9c491d6513909eb9_b2019bc0b634333d)
  unreachable
bb56:
  %t181 = load %"std/prelude/map:MapIter.bf5835bb10600fe6a7fc1da14a6360d9", ptr %l101
  store %"std/prelude/map:MapIter.bf5835bb10600fe6a7fc1da14a6360d9" %t181, ptr %l14
  br label %bb57
bb57:
  %t183 = call { i32, %"std/prelude/map:MapEntry.91de8c8eb84d52d1e58996aec31d85aa" } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMapIter_3ccompiler_2fsource_3aNameId_2c_20co_H6cf169b12565f300e9fe11f1c8d55061(ptr %v1, ptr %l14)
  %t184 = extractvalue { i32, %"std/prelude/map:MapEntry.91de8c8eb84d52d1e58996aec31d85aa" } %t183, 1
  %t185 = extractvalue { i32, %"std/prelude/map:MapEntry.91de8c8eb84d52d1e58996aec31d85aa" } %t183, 0
  store i32 %t185, ptr %l105
  %t186 = icmp ne i32 %t185, 0
  br i1 %t186, label %bb59, label %ok.187, !prof !99
ok.187:
  store %"std/prelude/map:MapEntry.91de8c8eb84d52d1e58996aec31d85aa" %t184, ptr %l104
  br label %bb58
bb58:
  %t188 = load %"std/prelude/map:MapEntry.91de8c8eb84d52d1e58996aec31d85aa", ptr %l104
  store %"std/prelude/map:MapEntry.91de8c8eb84d52d1e58996aec31d85aa" %t188, ptr %l102
  br label %bb61
bb59:
  %t189 = load i32, ptr %l105, !tbaa !23
  %t190 = ashr i32 %t189, 16
  %t192 = icmp eq i32 %t190, 1
  store i1 %t192, ptr %l107, !tbaa !21
  br label %bb60
bb60:
  br label %bb63
bb61:
  %t193 = load %"std/prelude/map:MapEntry.91de8c8eb84d52d1e58996aec31d85aa", ptr %l102
  store %"std/prelude/map:MapEntry.91de8c8eb84d52d1e58996aec31d85aa" %t193, ptr %l15
  %t194 = getelementptr %"std/prelude/map:MapEntry.91de8c8eb84d52d1e58996aec31d85aa", ptr %l15, i32 0, i32 0
  %t195 = load i32, ptr %t194, !tbaa !23
  %t197 = getelementptr %"std/prelude/map:MapEntry.91de8c8eb84d52d1e58996aec31d85aa", ptr %l15, i32 0, i32 1
  %t198 = load i32, ptr %t197, !tbaa !23
  %t200 = load { i64, ptr }, ptr %l11, !tbaa !27
  store { i64, ptr } %t200, ptr %l110, !tbaa !27
  %t201 = load i64, ptr %l13, !tbaa !24
  %t205 = getelementptr { i64, ptr }, ptr %l110, i32 0, i32 1
  %t206 = load ptr, ptr %t205, !tbaa !27
  %t207 = getelementptr i32, ptr %t206, i64 %t201
  store i32 %t195, ptr %t207, !tbaa !33
  %t208 = load { i64, ptr }, ptr %l12, !tbaa !27
  store { i64, ptr } %t208, ptr %l113, !tbaa !27
  %t209 = load i64, ptr %l13, !tbaa !24
  %t213 = getelementptr { i64, ptr }, ptr %l113, i32 0, i32 1
  %t214 = load ptr, ptr %t213, !tbaa !27
  %t215 = getelementptr i32, ptr %t214, i64 %t209
  store i32 %t198, ptr %t215, !tbaa !33
  %t216 = load i64, ptr %l13, !tbaa !24
  %t218 = add i64 %t216, 1
  store i64 %t218, ptr %l13, !tbaa !24
  br label %bb62
bb62:
  br label %bb57
bb63:
  %t220 = load ptr, ptr %l0, !tbaa !29
  %t222 = getelementptr %"compiler/generic:Program", ptr %t220, i32 0, i32 55
  store ptr %t222, ptr %l119, !tbaa !29
  %t223 = load ptr, ptr %l1, !tbaa !29
  %t225 = getelementptr %"compiler/generic:Context", ptr %t223, i32 0, i32 0
  %t226 = load i64, ptr %t225, !tbaa !24
  %t227 = load ptr, ptr %l2, !tbaa !29
  %t228 = load i32, ptr %l3, !tbaa !23
  %t229 = load ptr, ptr %l1, !tbaa !29
  %t231 = getelementptr %"compiler/generic:Context", ptr %t229, i32 0, i32 1
  %t232 = load i64, ptr %t231, !tbaa !24
  %t233 = load { i64, ptr }, ptr %l11, !tbaa !27
  %t234 = load { i64, ptr }, ptr %l12, !tbaa !27
  %t235 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t243 = call %"compiler/generic:ConstAsk" @compiler_2fgeneric_3aConstAsk_2ector(ptr %v2, ptr %v0, ptr %v0, ptr %v0, ptr %v0, i64 %t226, ptr %t227, i32 %t228, i64 %t232, { i64, ptr } %t233, { i64, ptr } %t234, { i64, ptr } %t235)
  store %"compiler/generic:ConstAsk" %t243, ptr %l129
  br label %bb64
bb64:
  %t244 = load ptr, ptr %l119, !tbaa !29
  %t245 = load %"compiler/generic:ConstAsk", ptr %l129
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fgeneric_3aConstAsk_3e_2ePus_H9314813d35e39659e36ddfdc05758427(ptr %v0, ptr %v0, ptr %t244, %"compiler/generic:ConstAsk" %t245)
  br label %bb65
bb65:
  br label %bb66
bb66:
  %t246 = load ptr, ptr %l0, !tbaa !29
  %t248 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eUnknownConst(ptr %v0, ptr %t246)
  store i32 %t248, ptr %l131
  br label %bb67
bb67:
  call void @__olang_scope_close(ptr %s0)
  %t249 = load i32, ptr %l131, !tbaa !23
  store i32 %t249, ptr %rv
  br label %ret
bb68:
  %t250 = getelementptr %"compiler/generic:folded", ptr %l4, i32 0, i32 0
  %t251 = load i64, ptr %t250, !tbaa !24
  %t252 = load i64, ptr @G_2ecompiler_2fgeneric_2eFolded, !tbaa !24
  %t255 = icmp eq i64 %t251, %t252
  br i1 %t255, label %bb69, label %bb70
bb69:
  %t257 = load ptr, ptr %l0, !tbaa !29
  %t259 = getelementptr %"compiler/generic:Program", ptr %t257, i32 0, i32 2
  %t260 = getelementptr %"compiler/generic:folded", ptr %l4, i32 0, i32 2
  %t261 = load i32, ptr %t260, !tbaa !23
  %t264 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsInt(ptr %v0, ptr %t259, i32 %t261)
  store i1 %t264, ptr %l139
  br label %bb71
bb70:
  store i1 false, ptr %l135, !tbaa !21
  br label %bb72
bb71:
  %t265 = load i1, ptr %l139, !tbaa !21
  store i1 %t265, ptr %l135, !tbaa !21
  br label %bb72
bb72:
  %t266 = load i1, ptr %l135, !tbaa !21
  br i1 %t266, label %bb73, label %bb74
bb73:
  %t267 = getelementptr %"compiler/generic:folded", ptr %l4, i32 0, i32 2
  %t268 = load i32, ptr %t267, !tbaa !23
  %t269 = load i32, ptr %l3, !tbaa !23
  %t272 = icmp ne i32 %t268, %t269
  store i1 %t272, ptr %l140, !tbaa !21
  br label %bb75
bb74:
  store i1 false, ptr %l140, !tbaa !21
  br label %bb75
bb75:
  %t274 = load i1, ptr %l140, !tbaa !21
  br i1 %t274, label %bb76, label %bb77
bb76:
  %t275 = load ptr, ptr %l0, !tbaa !29
  %t276 = getelementptr %"compiler/generic:folded", ptr %l4, i32 0, i32 2
  %t277 = load i32, ptr %t276, !tbaa !23
  %t278 = load i32, ptr %l3, !tbaa !23
  %t282 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFlows(ptr %v0, ptr %t275, i32 %t277, i32 %t278)
  store i1 %t282, ptr %l148
  br label %bb78
bb77:
  store i1 false, ptr %l144, !tbaa !21
  br label %bb79
bb78:
  %t283 = load i1, ptr %l148, !tbaa !21
  %t284 = xor i1 %t283, true
  store i1 %t284, ptr %l144, !tbaa !21
  br label %bb79
bb79:
  %t286 = load i1, ptr %l144, !tbaa !21
  br i1 %t286, label %bb80, label %bb81
bb80:
  %t287 = load ptr, ptr %l2, !tbaa !29
  %t289 = call i1 @compiler_2fgeneric_2elitOnly(ptr %v2, ptr %t287)
  store i1 %t289, ptr %l152
  br label %bb82
bb81:
  store i1 false, ptr %l150, !tbaa !21
  br label %bb83
bb82:
  %t290 = load i1, ptr %l152, !tbaa !21
  %t291 = xor i1 %t290, true
  store i1 %t291, ptr %l150, !tbaa !21
  br label %bb83
bb83:
  %t293 = load i1, ptr %l150, !tbaa !21
  br i1 %t293, label %bb84, label %bb85
bb84:
  call void @__olang_scope_close(ptr %s0)
  store i32 0, ptr %rv
  br label %ret
bb85:
  br label %bb86
bb86:
  %t295 = getelementptr %"compiler/generic:folded", ptr %l4, i32 0, i32 0
  %t296 = load i64, ptr %t295, !tbaa !24
  %t297 = load i64, ptr @G_2ecompiler_2fgeneric_2eFolded, !tbaa !24
  %t300 = icmp eq i64 %t296, %t297
  br i1 %t300, label %bb87, label %bb88
bb87:
  %t302 = getelementptr %"compiler/generic:folded", ptr %l4, i32 0, i32 2
  %t303 = load i32, ptr %t302, !tbaa !23
  %t304 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t307 = icmp ne i32 %t303, %t304
  store i1 %t307, ptr %l158, !tbaa !21
  br label %bb89
bb88:
  store i1 false, ptr %l158, !tbaa !21
  br label %bb89
bb89:
  %t309 = load i1, ptr %l158, !tbaa !21
  br i1 %t309, label %bb90, label %bb91
bb90:
  %t310 = load ptr, ptr %l0, !tbaa !29
  %t312 = getelementptr %"compiler/generic:Program", ptr %t310, i32 0, i32 2
  %t313 = getelementptr %"compiler/generic:folded", ptr %l4, i32 0, i32 2
  %t314 = load i32, ptr %t313, !tbaa !23
  %t317 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsInt(ptr %v0, ptr %t312, i32 %t314)
  store i1 %t317, ptr %l166
  br label %bb92
bb91:
  store i1 false, ptr %l162, !tbaa !21
  br label %bb93
bb92:
  %t318 = load i1, ptr %l166, !tbaa !21
  %t319 = xor i1 %t318, true
  store i1 %t319, ptr %l162, !tbaa !21
  br label %bb93
bb93:
  %t321 = load i1, ptr %l162, !tbaa !21
  br i1 %t321, label %bb94, label %bb95
bb94:
  call void @__olang_scope_close(ptr %s0)
  store i32 0, ptr %rv
  br label %ret
bb95:
  br label %bb96
bb96:
  %t323 = load ptr, ptr %l0, !tbaa !29
  %t324 = load ptr, ptr %l1, !tbaa !29
  %t325 = load %"compiler/generic:folded", ptr %l4
  %t326 = load i32, ptr %l3, !tbaa !23
  %t327 = load ptr, ptr %l2, !tbaa !29
  %t334 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2econstOf(ptr %v0, ptr %v1, ptr %v2, ptr %t323, ptr %t324, %"compiler/generic:folded" %t325, i32 %t326, ptr %t327)
  store i32 %t334, ptr %l175
  br label %bb97
bb97:
  call void @__olang_scope_close(ptr %s0)
  %t335 = load i32, ptr %l175, !tbaa !23
  store i32 %t335, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFuncDescriptor(ptr %v0, ptr %a0, i64 %a1, i32 %a2, i32 %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca i32
  %l3 = alloca i32
  %l4 = alloca i32
  %l5 = alloca i32
  %l6 = alloca i64
  %l9 = alloca i32
  %l16 = alloca i32
  %l19 = alloca i32
  %l23 = alloca i32
  %l30 = alloca i32
  %l37 = alloca i64
  %l42 = alloca ptr
  %l43 = alloca i32
  %l45 = alloca ptr
  %l46 = alloca i32
  %l48 = alloca ptr
  %l51 = alloca i32
  %l53 = alloca i32
  %l54 = alloca { i64, ptr }
  %l55 = alloca i32
  %l56 = alloca i32
  %s0 = alloca %olang.scope
  %rv = alloca i32
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  store i32 %a2, ptr %l2
  store i32 %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load i64, ptr @G_2ecompiler_2fgeneric_2eDescFunc, !tbaa !24
  %t5 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2edescDecl(ptr %v0, ptr %t1, i64 %t2)
  store i32 %t5, ptr %l9
  br label %bb1
bb1:
  %t6 = load i32, ptr %l9, !tbaa !23
  store i32 %t6, ptr %l4, !tbaa !23
  %t7 = load i32, ptr %l4, !tbaa !23
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
  %t13 = load i32, ptr %l2, !tbaa !23
  %t14 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t17 = icmp eq i32 %t13, %t14
  br i1 %t17, label %bb5, label %bb6
bb5:
  %t19 = load ptr, ptr %l0, !tbaa !29
  %t20 = load i64, ptr %l1, !tbaa !24
  %t23 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eSig(ptr %v0, ptr %t19, i64 %t20)
  store i32 %t23, ptr %l19
  br label %bb7
bb6:
  %t24 = load ptr, ptr %l0, !tbaa !29
  %t25 = load i64, ptr %l1, !tbaa !24
  %t26 = load i32, ptr %l2, !tbaa !23
  %t30 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eMethodSig(ptr %v0, ptr %t24, i64 %t25, i32 %t26)
  store i32 %t30, ptr %l23
  br label %bb8
bb7:
  %t31 = load i32, ptr %l19, !tbaa !23
  store i32 %t31, ptr %l16, !tbaa !23
  br label %bb9
bb8:
  %t32 = load i32, ptr %l23, !tbaa !23
  store i32 %t32, ptr %l16, !tbaa !23
  br label %bb9
bb9:
  %t33 = load i32, ptr %l16, !tbaa !23
  store i32 %t33, ptr %l5, !tbaa !23
  %t34 = load i32, ptr %l3, !tbaa !23
  %t35 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t38 = icmp ne i32 %t34, %t35
  br i1 %t38, label %bb10, label %bb11
bb10:
  %t40 = load ptr, ptr %l0, !tbaa !29
  %t41 = load i64, ptr %l1, !tbaa !24
  %t42 = load i32, ptr %l3, !tbaa !23
  %t46 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eBuilderSig(ptr %v0, ptr %t40, i64 %t41, i32 %t42)
  store i32 %t46, ptr %l30
  br label %bb12
bb11:
  br label %bb13
bb12:
  %t47 = load i32, ptr %l30, !tbaa !23
  store i32 %t47, ptr %l5, !tbaa !23
  br label %bb13
bb13:
  %t48 = load i32, ptr %l5, !tbaa !23
  %t49 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t52 = icmp eq i32 %t48, %t49
  br i1 %t52, label %bb14, label %bb15
bb14:
  %t54 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  call void @__olang_scope_close(ptr %s0)
  store i32 %t54, ptr %rv
  br label %ret
bb15:
  br label %bb16
bb16:
  %t56 = load ptr, ptr %l0, !tbaa !29
  %t57 = load i64, ptr %l1, !tbaa !24
  %t60 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnKey(ptr %v0, ptr %t56, i64 %t57)
  store i64 %t60, ptr %l37
  br label %bb17
bb17:
  %t61 = load i64, ptr %l37, !tbaa !24
  store i64 %t61, ptr %l6, !tbaa !24
  %t62 = load ptr, ptr %l0, !tbaa !29
  %t64 = getelementptr %"compiler/generic:Program", ptr %t62, i32 0, i32 31
  %t65 = load i64, ptr %l6, !tbaa !24
  %t66 = load i64, ptr %l1, !tbaa !24
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2ePut_3cI64_2c_20I64_3e(ptr %v0, ptr %t64, i64 %t65, i64 %t66)
  br label %bb18
bb18:
  %t70 = load ptr, ptr %l0, !tbaa !29
  store ptr %t70, ptr %l42, !tbaa !29
  %t71 = load i32, ptr %l4, !tbaa !23
  store i32 %t71, ptr %l43, !tbaa !23
  %t72 = load ptr, ptr %l0, !tbaa !29
  %t74 = getelementptr %"compiler/generic:Program", ptr %t72, i32 0, i32 2
  store ptr %t74, ptr %l45, !tbaa !29
  %t75 = load i32, ptr %l5, !tbaa !23
  store i32 %t75, ptr %l46, !tbaa !23
  %t76 = load ptr, ptr %l0, !tbaa !29
  %t78 = getelementptr %"compiler/generic:Program", ptr %t76, i32 0, i32 2
  store ptr %t78, ptr %l48, !tbaa !29
  %t79 = load ptr, ptr %l0, !tbaa !29
  %t81 = getelementptr %"compiler/generic:Program", ptr %t79, i32 0, i32 2
  %t83 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePrim(ptr %v0, ptr %s0, ptr %t81, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d24, i32 0, i32 1) })
  store i32 %t83, ptr %l51
  br label %bb19
bb19:
  %t84 = load i64, ptr %l6, !tbaa !24
  %t85 = load ptr, ptr %l48, !tbaa !29
  %t86 = load i32, ptr %l51, !tbaa !23
  %t88 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eConst(ptr %v0, ptr %t85, i32 %t86, i64 %t84)
  store i32 %t88, ptr %l53
  br label %bb20
bb20:
  %t89 = mul i64 2, 4
  %t90 = call ptr @__olang_scope_alloc_zeroed(ptr %s0, i64 %t89)
  %t91 = insertvalue { i64, ptr } undef, i64 2, 0
  %t92 = insertvalue { i64, ptr } %t91, ptr %t90, 1
  store { i64, ptr } %t92, ptr %l54, !tbaa !27
  %t93 = load i32, ptr %l46, !tbaa !23
  %t94 = getelementptr { i64, ptr }, ptr %l54, i32 0, i32 1
  %t95 = load ptr, ptr %t94, !tbaa !27
  %t96 = getelementptr i32, ptr %t95, i64 0
  store i32 %t93, ptr %t96, !tbaa !33
  %t97 = load i32, ptr %l53, !tbaa !23
  %t98 = getelementptr { i64, ptr }, ptr %l54, i32 0, i32 1
  %t99 = load ptr, ptr %t98, !tbaa !27
  %t100 = getelementptr i32, ptr %t99, i64 1
  store i32 %t97, ptr %t100, !tbaa !33
  %t101 = load ptr, ptr %l45, !tbaa !29
  %t102 = load { i64, ptr }, ptr %l54, !tbaa !27
  %t103 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eList(ptr %v0, ptr %s0, ptr %t101, { i64, ptr } %t102)
  store i32 %t103, ptr %l55
  br label %bb21
bb21:
  %t104 = load ptr, ptr %l42, !tbaa !29
  %t105 = load i32, ptr %l43, !tbaa !23
  %t106 = load i32, ptr %l55, !tbaa !23
  %t107 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eInstance(ptr %v0, ptr %t104, i32 %t105, i32 %t106)
  store i32 %t107, ptr %l56
  br label %bb22
bb22:
  call void @__olang_scope_close(ptr %s0)
  %t108 = load i32, ptr %l56, !tbaa !23
  store i32 %t108, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eGenerational(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l5 = alloca i32
  %l8 = alloca i1
  %l10 = alloca ptr
  %l14 = alloca i32
  %l16 = alloca i1
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
  store i32 %t7, ptr %l5
  br label %bb1
bb1:
  %t8 = load i32, ptr %l5, !range !{i32 0, i32 33}
  %t10 = trunc i64 18 to i32
  %t11 = icmp eq i32 %t8, %t10
  br i1 %t11, label %bb2, label %bb3
bb2:
  %t13 = load ptr, ptr %l0, !tbaa !29
  %t15 = getelementptr %"compiler/generic:Program", ptr %t13, i32 0, i32 5
  store ptr %t15, ptr %l10, !tbaa !29
  %t16 = load ptr, ptr %l0, !tbaa !29
  %t18 = getelementptr %"compiler/generic:Program", ptr %t16, i32 0, i32 2
  %t19 = load i32, ptr %l1, !tbaa !23
  %t22 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %t18, i32 %t19)
  store i32 %t22, ptr %l14
  br label %bb4
bb3:
  store i1 false, ptr %l8, !tbaa !21
  br label %bb6
bb4:
  %t23 = load i32, ptr %l14, !tbaa !23
  %t24 = sext i32 %t23 to i64
  %t25 = load ptr, ptr %l10, !tbaa !29
  %t27 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2ftext_3aString_H3993e9d21a27b6abd527556382000d9e(ptr %v0, ptr %t25, i64 %t24)
  store i1 %t27, ptr %l16
  br label %bb5
bb5:
  %t28 = load i1, ptr %l16, !tbaa !21
  store i1 %t28, ptr %l8, !tbaa !21
  br label %bb6
bb6:
  %t29 = load i1, ptr %l8, !tbaa !21
  store i1 %t29, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eLibrary(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l1 = alloca i64
  %l4 = alloca i1
  %l9 = alloca ptr
  %l12 = alloca i1
  %s0 = alloca %olang.scope
  %rv = alloca i1
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
  %t7 = getelementptr %"compiler/generic:Program", ptr %a0, i32 0, i32 0
  %t8 = load ptr, ptr %t7, !tbaa !29
  %t10 = getelementptr %"compiler/load:Loader", ptr %t8, i32 0, i32 10
  %t11 = load i64, ptr %l1, !tbaa !24
  %t14 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H7bcf2aeb09afa796f4333e6ec8c3f63f(ptr %v0, ptr %v0, ptr %t10, i64 %t11)
  store ptr %t14, ptr %l9
  br label %bb3
bb2:
  store i1 false, ptr %l4, !tbaa !21
  br label %bb5
bb3:
  %t15 = load ptr, ptr %l9, !tbaa !29
  %t17 = getelementptr %"compiler/load:Module", ptr %t15, i32 0, i32 2
  %t18 = load { i64, ptr }, ptr %t17, !tbaa !27
  %t20 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %v0, ptr %s0, { i64, ptr } %t18, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d25, i32 0, i32 1) })
  store i1 %t20, ptr %l12
  br label %bb4
bb4:
  %t21 = load i1, ptr %l12, !tbaa !21
  store i1 %t21, ptr %l4, !tbaa !21
  br label %bb5
bb5:
  call void @__olang_scope_close(ptr %s0)
  %t22 = load i1, ptr %l4, !tbaa !21
  store i1 %t22, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local { i64, ptr } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eModuleFns(ptr %v0, ptr %v1, ptr %a0, i64 %a1, i64 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l3 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca %"compiler/generic:fnRow"
  %l13 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l16 = alloca i64
  %l20 = alloca i64
  %l23 = alloca i64
  %l44 = alloca %"compiler/generic:fnRow"
  %l48 = alloca i1
  %l50 = alloca i1
  %l55 = alloca i1
  %l57 = alloca i1
  %l58 = alloca i1
  %l66 = alloca i1
  %l70 = alloca { i64, ptr }
  %l71 = alloca { i64, ptr }
  %l73 = alloca i1
  %l80 = alloca { i64, ptr }
  %l81 = alloca { i64, ptr }
  %l82 = alloca i64
  %l83 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %s2 = alloca %olang.scope
  %rv = alloca { i64, ptr }
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
  %t5 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %s0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t5, ptr %l13
  br label %bb2
bb2:
  %t6 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l13
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t6, ptr %l3
  store i64 0, ptr %l4, !tbaa !24
  %t7 = load ptr, ptr %l0, !tbaa !29
  %t9 = getelementptr %"compiler/generic:Program", ptr %t7, i32 0, i32 29
  %t11 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fgeneric_3afnRow_3e_2eLen_3ccompiler_2fgeneric_3afnRow_3e(ptr %v0, ptr %t9)
  store i64 %t11, ptr %l16
  br label %bb3
bb3:
  %t12 = load i64, ptr %l16, !tbaa !24
  store i64 %t12, ptr %l5, !tbaa !24
  store i64 1, ptr %l6, !tbaa !24
  %t13 = load i64, ptr %l5, !tbaa !24
  %t14 = load i64, ptr %l4, !tbaa !24
  %t17 = icmp sgt i64 %t13, %t14
  br i1 %t17, label %bb4, label %bb5
bb4:
  %t19 = load i64, ptr %l6, !tbaa !24
  %t21 = icmp sgt i64 %t19, 0
  br i1 %t21, label %bb6, label %bb7
bb5:
  store i64 0, ptr %l20, !tbaa !24
  br label %bb9
bb6:
  %t23 = load i64, ptr %l5, !tbaa !24
  %t24 = load i64, ptr %l4, !tbaa !24
  %t27 = sub i64 %t23, %t24
  %t28 = load i64, ptr %l6, !tbaa !24
  %t31 = add i64 %t27, %t28
  %t33 = sub i64 %t31, 1
  %t34 = load i64, ptr %l6, !tbaa !24
  %t37 = sdiv i64 %t33, %t34
  store i64 %t37, ptr %l23, !tbaa !24
  br label %bb8
bb7:
  store i64 0, ptr %l23, !tbaa !24
  br label %bb8
bb8:
  %t39 = load i64, ptr %l23, !tbaa !24
  store i64 %t39, ptr %l20, !tbaa !24
  br label %bb9
bb9:
  %t40 = load i64, ptr %l20, !tbaa !24
  store i64 %t40, ptr %l7, !tbaa !24
  store i64 0, ptr %l8, !tbaa !24
  br label %bb10
bb10:
  store %olang.scope zeroinitializer, ptr %s2
  %t41 = load i64, ptr %l8, !tbaa !24
  %t42 = load i64, ptr %l7, !tbaa !24
  %t45 = icmp slt i64 %t41, %t42
  %t47 = xor i1 %t45, true
  br i1 %t47, label %bb11, label %bb12
bb11:
  call void @__olang_scope_close(ptr %s2)
  br label %bb41
bb12:
  br label %bb13
bb13:
  %t49 = load i64, ptr %l4, !tbaa !24
  %t50 = load i64, ptr %l8, !tbaa !24
  %t51 = load i64, ptr %l6, !tbaa !24
  %t54 = mul i64 %t50, %t51
  %t57 = add i64 %t49, %t54
  store i64 %t57, ptr %l9, !tbaa !24
  %t59 = load ptr, ptr %l0, !tbaa !29
  %t61 = getelementptr %"compiler/generic:Program", ptr %t59, i32 0, i32 29
  %t62 = load i64, ptr %l9, !tbaa !24
  %t65 = call %"compiler/generic:fnRow" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fgeneric_3afnRow_3e_2eAt_3ccompiler_2fgeneric_3afnRow_3e(ptr %v0, ptr %v0, ptr %t61, i64 %t62)
  store %"compiler/generic:fnRow" %t65, ptr %l44
  br label %bb14
bb14:
  %t66 = load %"compiler/generic:fnRow", ptr %l44
  store %"compiler/generic:fnRow" %t66, ptr %l10
  %t67 = getelementptr %"compiler/generic:fnRow", ptr %l10, i32 0, i32 0
  %t68 = load i64, ptr %t67, !tbaa !24
  %t69 = load i64, ptr %l1, !tbaa !24
  %t72 = icmp ne i64 %t68, %t69
  br i1 %t72, label %bb15, label %bb16
bb15:
  store i1 true, ptr %l48, !tbaa !21
  br label %bb17
bb16:
  %t74 = getelementptr %"compiler/generic:fnRow", ptr %l10, i32 0, i32 2
  %t75 = load i1, ptr %t74, !tbaa !21
  store i1 %t75, ptr %l48, !tbaa !21
  br label %bb17
bb17:
  %t77 = load i1, ptr %l48, !tbaa !21
  br i1 %t77, label %bb18, label %bb19
bb18:
  store i1 true, ptr %l50, !tbaa !21
  br label %bb20
bb19:
  %t78 = getelementptr %"compiler/generic:fnRow", ptr %l10, i32 0, i32 1
  %t79 = load ptr, ptr %t78, !tbaa !29
  %t81 = getelementptr %"compiler/ast:Func", ptr %t79, i32 0, i32 1
  %t82 = load ptr, ptr %t81, !tbaa !29
  %t84 = icmp eq ptr %t82, null
  %t86 = xor i1 %t84, true
  store i1 %t86, ptr %l50, !tbaa !21
  br label %bb20
bb20:
  %t88 = load i1, ptr %l50, !tbaa !21
  br i1 %t88, label %bb21, label %bb22
bb21:
  store i1 true, ptr %l55, !tbaa !21
  br label %bb24
bb22:
  %t89 = getelementptr %"compiler/generic:fnRow", ptr %l10, i32 0, i32 1
  %t90 = load ptr, ptr %t89, !tbaa !29
  %t92 = call i1 @compiler_2fast_2ecompiler_2fast_3aFunc_2eIsBuilder(ptr %v0, ptr %t90)
  store i1 %t92, ptr %l57
  br label %bb23
bb23:
  %t93 = load i1, ptr %l57, !tbaa !21
  store i1 %t93, ptr %l55, !tbaa !21
  br label %bb24
bb24:
  %t94 = load i1, ptr %l55, !tbaa !21
  br i1 %t94, label %bb25, label %bb26
bb25:
  store i1 true, ptr %l58, !tbaa !21
  br label %bb27
bb26:
  %t95 = getelementptr %"compiler/generic:fnRow", ptr %l10, i32 0, i32 1
  %t96 = load ptr, ptr %t95, !tbaa !29
  %t98 = getelementptr %"compiler/ast:Func", ptr %t96, i32 0, i32 5
  %t99 = load { i64, ptr }, ptr %t98, !tbaa !27
  %t101 = extractvalue { i64, ptr } %t99, 0
  %t103 = icmp sgt i64 %t101, 0
  store i1 %t103, ptr %l58, !tbaa !21
  br label %bb27
bb27:
  %t105 = load i1, ptr %l58, !tbaa !21
  br i1 %t105, label %bb28, label %bb29
bb28:
  call void @__olang_scope_close(ptr %s2)
  br label %bb40
bb29:
  br label %bb30
bb30:
  %t106 = load i64, ptr %l1, !tbaa !24
  %t110 = icmp ne i64 %t106, %a2
  br i1 %t110, label %bb31, label %bb32
bb31:
  %t112 = load ptr, ptr %l0, !tbaa !29
  %t113 = getelementptr %"compiler/generic:fnRow", ptr %l10, i32 0, i32 1
  %t114 = load ptr, ptr %t113, !tbaa !29
  %t116 = getelementptr %"compiler/ast:Func", ptr %t114, i32 0, i32 2
  %t117 = load i32, ptr %t116, !tbaa !23
  %t120 = call { i64, ptr } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2etext(ptr %v0, ptr %s2, ptr %t112, i32 %t117)
  store { i64, ptr } %t120, ptr %l70
  br label %bb33
bb32:
  store i1 false, ptr %l66, !tbaa !21
  br label %bb35
bb33:
  %t121 = load { i64, ptr }, ptr %l70, !tbaa !27
  store { i64, ptr } %t121, ptr %l71, !tbaa !27
  %t122 = getelementptr { i64, ptr }, ptr %l71, i32 0, i32 1
  %t123 = load ptr, ptr %t122, !tbaa !27
  %t124 = getelementptr i8, ptr %t123, i64 0
  %t125 = load i8, ptr %t124, !tbaa !32
  %t127 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aChar_2eIsUpper(i8 %t125)
  store i1 %t127, ptr %l73
  br label %bb34
bb34:
  %t128 = load i1, ptr %l73, !tbaa !21
  %t129 = xor i1 %t128, true
  store i1 %t129, ptr %l66, !tbaa !21
  br label %bb35
bb35:
  %t131 = load i1, ptr %l66, !tbaa !21
  br i1 %t131, label %bb36, label %bb37
bb36:
  call void @__olang_scope_close(ptr %s2)
  br label %bb40
bb37:
  br label %bb38
bb38:
  %t132 = load i64, ptr %l9, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %s0, ptr %l3, i64 %t132)
  br label %bb39
bb39:
  call void @__olang_scope_close(ptr %s2)
  br label %bb40
bb40:
  %t135 = load i64, ptr %l8, !tbaa !24
  %t137 = add i64 %t135, 1
  store i64 %t137, ptr %l8, !tbaa !24
  br label %bb10
bb41:
  %t140 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eToArray_3cI64_3e(ptr %s0, ptr %s0, ptr %l3)
  store { i64, ptr } %t140, ptr %l80
  br label %bb42
bb42:
  %t141 = load { i64, ptr }, ptr %l80, !tbaa !27
  store { i64, ptr } %t141, ptr %l81, !tbaa !27
  %t142 = load { i64, ptr }, ptr %l81, !tbaa !27
  %t143 = extractvalue { i64, ptr } %t142, 0
  store i64 %t143, ptr %l82, !tbaa !24
  %t144 = load i64, ptr %l82, !tbaa !24
  %t145 = mul i64 %t144, 8
  %t146 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t145)
  %t147 = insertvalue { i64, ptr } undef, i64 %t144, 0
  %t148 = insertvalue { i64, ptr } %t147, ptr %t146, 1
  store { i64, ptr } %t148, ptr %l83, !tbaa !27
  %t149 = getelementptr { i64, ptr }, ptr %l83, i32 0, i32 1
  %t150 = load ptr, ptr %t149, !tbaa !27
  %t151 = getelementptr { i64, ptr }, ptr %l81, i32 0, i32 1
  %t152 = load ptr, ptr %t151, !tbaa !27
  %t153 = load i64, ptr %l82, !tbaa !24
  %t154 = mul i64 %t153, 8
  call void @llvm.memmove.p0.p0.i64(ptr %t150, ptr %t152, i64 %t154, i1 false)
  %t155 = load { i64, ptr }, ptr %l83, !tbaa !27
  store { i64, ptr } %t155, ptr %l81, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  %t156 = load { i64, ptr }, ptr %l81, !tbaa !27
  store { i64, ptr } %t156, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eRaisedFields(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca i32
  %l4 = alloca ptr
  %l8 = alloca i32
  %l10 = alloca i32
  %l11 = alloca i32
  %rv = alloca i32
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/generic:Program", ptr %t1, i32 0, i32 10
  store ptr %t3, ptr %l4, !tbaa !29
  %t4 = load ptr, ptr %l0, !tbaa !29
  %t6 = getelementptr %"compiler/generic:Program", ptr %t4, i32 0, i32 2
  %t10 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %t6, i32 %a1)
  store i32 %t10, ptr %l8
  br label %bb1
bb1:
  %t11 = load i32, ptr %l8, !tbaa !23
  %t12 = sext i32 %t11 to i64
  %t13 = load ptr, ptr %l4, !tbaa !29
  %t15 = call { i32, i32 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2ftypes_3aListId_3e__H9cb5d99387f926677a92c13412f9a8b2(ptr %v0, ptr %t13, i64 %t12)
  %t16 = extractvalue { i32, i32 } %t15, 1
  %t17 = extractvalue { i32, i32 } %t15, 0
  store i32 %t17, ptr %l11
  %t18 = icmp ne i32 %t17, 0
  br i1 %t18, label %bb3, label %ok.19, !prof !99
ok.19:
  store i32 %t16, ptr %l10
  br label %bb2
bb2:
  %t20 = load i32, ptr %l10, !tbaa !23
  store i32 %t20, ptr %l2, !tbaa !23
  br label %bb5
bb3:
  br label %bb4
bb4:
  store i32 0, ptr %l2, !tbaa !23
  br label %bb5
bb5:
  %t21 = load i32, ptr %l2, !tbaa !23
  store i32 %t21, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local { { i64, ptr }, { i64, ptr } } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eReflItems(ptr %v0, ptr %v1, ptr %a0, i32 %a1, i64 %a2, i64 %a3, i64 %a4) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca i64
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca [0 x i64]
  %l6 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca i64
  %l13 = alloca %"compiler/generic:Desc"
  %l14 = alloca i64
  %l15 = alloca i64
  %l16 = alloca i64
  %l17 = alloca i64
  %l18 = alloca i64
  %l20 = alloca i64
  %l21 = alloca i64
  %l22 = alloca i64
  %l23 = alloca i64
  %l24 = alloca i64
  %l26 = alloca i32
  %l27 = alloca i64
  %l28 = alloca i64
  %l29 = alloca i64
  %l30 = alloca i64
  %l31 = alloca i64
  %l33 = alloca i32
  %l34 = alloca i64
  %l35 = alloca i64
  %l36 = alloca i64
  %l37 = alloca i64
  %l38 = alloca i64
  %l40 = alloca i64
  %l41 = alloca i64
  %l42 = alloca i64
  %l43 = alloca i64
  %l44 = alloca i64
  %l46 = alloca { i64, ptr }
  %l47 = alloca i1
  %l48 = alloca i64
  %l49 = alloca i64
  %l50 = alloca i64
  %l51 = alloca i64
  %l52 = alloca i64
  %l53 = alloca i64
  %l55 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l62 = alloca i32
  %l66 = alloca [0 x i64]
  %l67 = alloca { i64, ptr }
  %l68 = alloca { i64, ptr }
  %l70 = alloca { { i64, ptr }, { i64, ptr } }
  %l71 = alloca { i64, ptr }
  %l72 = alloca i64
  %l73 = alloca { i64, ptr }
  %l74 = alloca { i64, ptr }
  %l75 = alloca i64
  %l76 = alloca { i64, ptr }
  %l80 = alloca { i64, ptr }
  %l85 = alloca i64
  %l88 = alloca i64
  %l111 = alloca { i64, ptr }
  %l113 = alloca { i64, ptr }
  %l115 = alloca { { i64, ptr }, { i64, ptr } }
  %l116 = alloca { i64, ptr }
  %l117 = alloca i64
  %l118 = alloca { i64, ptr }
  %l119 = alloca { i64, ptr }
  %l120 = alloca i64
  %l121 = alloca { i64, ptr }
  %l128 = alloca { i64, ptr }
  %l129 = alloca { i64, ptr }
  %l131 = alloca { { i64, ptr }, { i64, ptr } }
  %l132 = alloca { i64, ptr }
  %l133 = alloca i64
  %l134 = alloca { i64, ptr }
  %l141 = alloca { i64, ptr }
  %l142 = alloca { i64, ptr }
  %l144 = alloca { { i64, ptr }, { i64, ptr } }
  %l145 = alloca { i64, ptr }
  %l146 = alloca i64
  %l147 = alloca { i64, ptr }
  %l154 = alloca i32
  %l158 = alloca i1
  %l161 = alloca i1
  %l163 = alloca [0 x i64]
  %l164 = alloca { i64, ptr }
  %l165 = alloca { i64, ptr }
  %l167 = alloca { { i64, ptr }, { i64, ptr } }
  %l168 = alloca { i64, ptr }
  %l169 = alloca i64
  %l170 = alloca { i64, ptr }
  %l171 = alloca { i64, ptr }
  %l172 = alloca i64
  %l173 = alloca { i64, ptr }
  %l177 = alloca { i64, ptr }
  %l178 = alloca { i64, ptr }
  %l180 = alloca { { i64, ptr }, { i64, ptr } }
  %l181 = alloca { i64, ptr }
  %l182 = alloca i64
  %l183 = alloca { i64, ptr }
  %l189 = alloca %"compiler/generic:Desc"
  %l196 = alloca %"compiler/generic:fnRow"
  %l204 = alloca i64
  %l207 = alloca i64
  %l230 = alloca { i64, ptr }
  %l232 = alloca { i64, ptr }
  %l234 = alloca { { i64, ptr }, { i64, ptr } }
  %l235 = alloca { i64, ptr }
  %l236 = alloca i64
  %l237 = alloca { i64, ptr }
  %l238 = alloca { i64, ptr }
  %l239 = alloca i64
  %l240 = alloca { i64, ptr }
  %l244 = alloca i32
  %l248 = alloca ptr
  %l252 = alloca i32
  %l253 = alloca { i64, ptr }
  %l258 = alloca i64
  %l261 = alloca i64
  %l284 = alloca { i64, ptr }
  %l286 = alloca { i64, ptr }
  %l288 = alloca { { i64, ptr }, { i64, ptr } }
  %l289 = alloca { i64, ptr }
  %l290 = alloca i64
  %l291 = alloca { i64, ptr }
  %l292 = alloca { i64, ptr }
  %l293 = alloca i64
  %l294 = alloca { i64, ptr }
  %l298 = alloca i32
  %l301 = alloca i32
  %l304 = alloca i32
  %l309 = alloca [0 x i64]
  %l310 = alloca { i64, ptr }
  %l311 = alloca { i64, ptr }
  %l313 = alloca { { i64, ptr }, { i64, ptr } }
  %l314 = alloca { i64, ptr }
  %l315 = alloca i64
  %l316 = alloca { i64, ptr }
  %l317 = alloca { i64, ptr }
  %l318 = alloca i64
  %l319 = alloca { i64, ptr }
  %l321 = alloca ptr
  %l325 = alloca i32
  %l326 = alloca { i64, ptr }
  %l331 = alloca i64
  %l334 = alloca i64
  %l357 = alloca { i64, ptr }
  %l359 = alloca { i64, ptr }
  %l361 = alloca { { i64, ptr }, { i64, ptr } }
  %l362 = alloca { i64, ptr }
  %l363 = alloca i64
  %l364 = alloca { i64, ptr }
  %l365 = alloca { i64, ptr }
  %l366 = alloca i64
  %l367 = alloca { i64, ptr }
  %l370 = alloca i32
  %l377 = alloca i32
  %l382 = alloca { i64, ptr }
  %l387 = alloca i64
  %l390 = alloca i64
  %l413 = alloca { i64, ptr }
  %l415 = alloca { i64, ptr }
  %l417 = alloca { { i64, ptr }, { i64, ptr } }
  %l418 = alloca { i64, ptr }
  %l419 = alloca i64
  %l420 = alloca { i64, ptr }
  %l421 = alloca { i64, ptr }
  %l422 = alloca i64
  %l423 = alloca { i64, ptr }
  %l426 = alloca i1
  %l430 = alloca { i64, ptr }
  %l435 = alloca i64
  %l438 = alloca i64
  %l461 = alloca { i64, ptr }
  %l463 = alloca { i64, ptr }
  %l465 = alloca { { i64, ptr }, { i64, ptr } }
  %l466 = alloca { i64, ptr }
  %l467 = alloca i64
  %l468 = alloca { i64, ptr }
  %l469 = alloca { i64, ptr }
  %l470 = alloca i64
  %l471 = alloca { i64, ptr }
  %l474 = alloca i1
  %l475 = alloca { i64, ptr }
  %l476 = alloca { i64, ptr }
  %l478 = alloca { { i64, ptr }, { i64, ptr } }
  %l479 = alloca { i64, ptr }
  %l480 = alloca i64
  %l481 = alloca { i64, ptr }
  %l482 = alloca { i64, ptr }
  %l483 = alloca i64
  %l484 = alloca { i64, ptr }
  %l485 = alloca [0 x i64]
  %l486 = alloca { i64, ptr }
  %l487 = alloca { i64, ptr }
  %l489 = alloca { { i64, ptr }, { i64, ptr } }
  %l490 = alloca { i64, ptr }
  %l491 = alloca i64
  %l492 = alloca { i64, ptr }
  %l493 = alloca { i64, ptr }
  %l494 = alloca i64
  %l495 = alloca { i64, ptr }
  %l496 = alloca [0 x i32]
  %l497 = alloca { i64, ptr }
  %l501 = alloca i32
  %l504 = alloca i1
  %l507 = alloca [0 x i64]
  %l508 = alloca { i64, ptr }
  %l509 = alloca { i64, ptr }
  %l511 = alloca { { i64, ptr }, { i64, ptr } }
  %l512 = alloca { i64, ptr }
  %l513 = alloca i64
  %l514 = alloca { i64, ptr }
  %l515 = alloca { i64, ptr }
  %l516 = alloca i64
  %l517 = alloca { i64, ptr }
  %l520 = alloca i1
  %l523 = alloca { i64, ptr }
  %l525 = alloca i64
  %l529 = alloca i1
  %l530 = alloca i1
  %l536 = alloca { i64, ptr }
  %l538 = alloca i64
  %l542 = alloca i1
  %l543 = alloca [0 x i64]
  %l544 = alloca { i64, ptr }
  %l545 = alloca { i64, ptr }
  %l547 = alloca { { i64, ptr }, { i64, ptr } }
  %l548 = alloca { i64, ptr }
  %l549 = alloca i64
  %l550 = alloca { i64, ptr }
  %l551 = alloca { i64, ptr }
  %l552 = alloca i64
  %l553 = alloca { i64, ptr }
  %l554 = alloca [0 x i64]
  %l555 = alloca { i64, ptr }
  %l556 = alloca { i64, ptr }
  %l558 = alloca { { i64, ptr }, { i64, ptr } }
  %l559 = alloca { i64, ptr }
  %l560 = alloca i64
  %l561 = alloca { i64, ptr }
  %l562 = alloca { i64, ptr }
  %l563 = alloca i64
  %l564 = alloca { i64, ptr }
  %l566 = alloca ptr
  %l570 = alloca i32
  %l571 = alloca i64
  %l574 = alloca i1
  %l577 = alloca i1
  %l579 = alloca i1
  %l582 = alloca ptr
  %l584 = alloca ptr
  %l588 = alloca i32
  %l589 = alloca i64
  %l590 = alloca ptr
  %l593 = alloca i1
  %l596 = alloca i1
  %l597 = alloca i64
  %l601 = alloca i64
  %l603 = alloca i1
  %l608 = alloca ptr
  %l616 = alloca i64
  %l619 = alloca i64
  %l638 = alloca i1
  %l642 = alloca { i64, ptr }
  %l643 = alloca { i64, ptr }
  %l645 = alloca i1
  %l651 = alloca { i64, ptr }
  %l653 = alloca { i64, ptr }
  %l655 = alloca { { i64, ptr }, { i64, ptr } }
  %l656 = alloca { i64, ptr }
  %l657 = alloca i64
  %l658 = alloca { i64, ptr }
  %l659 = alloca { i64, ptr }
  %l660 = alloca i64
  %l661 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %s1 = alloca %olang.scope
  %s2 = alloca %olang.scope
  %s3 = alloca %olang.scope
  %s9 = alloca %olang.scope
  %s10 = alloca %olang.scope
  %s11 = alloca %olang.scope
  %s15 = alloca %olang.scope
  %s16 = alloca %olang.scope
  %s19 = alloca %olang.scope
  %s20 = alloca %olang.scope
  %s23 = alloca %olang.scope
  %s24 = alloca %olang.scope
  %s25 = alloca %olang.scope
  %s28 = alloca %olang.scope
  %s29 = alloca %olang.scope
  %s33 = alloca %olang.scope
  %s39 = alloca %olang.scope
  %s40 = alloca %olang.scope
  %s42 = alloca %olang.scope
  %rv = alloca { { i64, ptr }, { i64, ptr } }
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  store i64 %a2, ptr %l2
  store i64 %a3, ptr %l3
  store i64 %a4, ptr %l4
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  store [0 x i64] zeroinitializer, ptr %l5
  %t2 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %s0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t2, ptr %l55
  br label %bb1
bb1:
  %t3 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l55
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t3, ptr %l6
  %t4 = load i64, ptr %l2, !tbaa !24
  %t5 = load i64, ptr @G_2ecompiler_2fgeneric_2eListResults, !tbaa !24
  %t8 = icmp eq i64 %t4, %t5
  br i1 %t8, label %bb2, label %bb3
bb2:
  store %olang.scope zeroinitializer, ptr %s1
  %t10 = load ptr, ptr %l0, !tbaa !29
  %t12 = getelementptr %"compiler/generic:Program", ptr %t10, i32 0, i32 2
  %t13 = load i32, ptr %l1, !tbaa !23
  %t16 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t12, i32 %t13)
  store i32 %t16, ptr %l62
  br label %bb4
bb3:
  br label %bb23
bb4:
  %t17 = load i32, ptr %l62, !range !{i32 0, i32 33}
  %t19 = trunc i64 21 to i32
  %t20 = icmp eq i32 %t17, %t19
  %t22 = xor i1 %t20, true
  br i1 %t22, label %bb5, label %bb6
bb5:
  store %olang.scope zeroinitializer, ptr %s2
  %t24 = load [0 x i64], ptr %l5
  store [0 x i64] %t24, ptr %l66
  %t25 = mul i64 0, 8
  %t26 = insertvalue { i64, ptr } undef, i64 0, 0
  %t27 = insertvalue { i64, ptr } %t26, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  store { i64, ptr } %t27, ptr %l67, !tbaa !27
  %t28 = getelementptr { i64, ptr }, ptr %l67, i32 0, i32 1
  %t29 = load ptr, ptr %t28, !tbaa !27
  %t30 = mul i64 0, 8
  call void @llvm.memmove.p0.p0.i64(ptr %t29, ptr %l66, i64 %t30, i1 false)
  store { i64, ptr } { i64 32, ptr getelementptr inbounds (<{ i64, [32 x i8] }>, ptr @.d26, i32 0, i32 1) }, ptr %l68, !tbaa !27
  %t31 = load { i64, ptr }, ptr %l68, !tbaa !27
  %t32 = load { i64, ptr }, ptr %l67, !tbaa !27
  %t33 = insertvalue { { i64, ptr }, { i64, ptr } } undef, { i64, ptr } %t32, 0
  %t35 = insertvalue { { i64, ptr }, { i64, ptr } } %t33, { i64, ptr } %t31, 1
  store { { i64, ptr }, { i64, ptr } } %t35, ptr %l70
  %t36 = getelementptr { { i64, ptr }, { i64, ptr } }, ptr %l70, i32 0, i32 0
  %t37 = load { i64, ptr }, ptr %t36, !tbaa !27
  store { i64, ptr } %t37, ptr %l71, !tbaa !27
  %t38 = load { i64, ptr }, ptr %l71, !tbaa !27
  %t39 = extractvalue { i64, ptr } %t38, 0
  store i64 %t39, ptr %l72, !tbaa !24
  %t40 = load i64, ptr %l72, !tbaa !24
  %t41 = mul i64 %t40, 8
  %t42 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t41)
  %t43 = insertvalue { i64, ptr } undef, i64 %t40, 0
  %t44 = insertvalue { i64, ptr } %t43, ptr %t42, 1
  store { i64, ptr } %t44, ptr %l73, !tbaa !27
  %t45 = getelementptr { i64, ptr }, ptr %l73, i32 0, i32 1
  %t46 = load ptr, ptr %t45, !tbaa !27
  %t47 = getelementptr { i64, ptr }, ptr %l71, i32 0, i32 1
  %t48 = load ptr, ptr %t47, !tbaa !27
  %t49 = load i64, ptr %l72, !tbaa !24
  %t50 = mul i64 %t49, 8
  call void @llvm.memmove.p0.p0.i64(ptr %t46, ptr %t48, i64 %t50, i1 false)
  %t51 = load { i64, ptr }, ptr %l73, !tbaa !27
  %t52 = getelementptr { { i64, ptr }, { i64, ptr } }, ptr %l70, i32 0, i32 0
  store { i64, ptr } %t51, ptr %t52, !tbaa !27
  %t53 = getelementptr { { i64, ptr }, { i64, ptr } }, ptr %l70, i32 0, i32 1
  %t54 = load { i64, ptr }, ptr %t53, !tbaa !27
  store { i64, ptr } %t54, ptr %l74, !tbaa !27
  %t55 = load { i64, ptr }, ptr %l74, !tbaa !27
  %t56 = extractvalue { i64, ptr } %t55, 0
  store i64 %t56, ptr %l75, !tbaa !24
  %t57 = load i64, ptr %l75, !tbaa !24
  %t58 = mul i64 %t57, 1
  %t59 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t58)
  %t60 = insertvalue { i64, ptr } undef, i64 %t57, 0
  %t61 = insertvalue { i64, ptr } %t60, ptr %t59, 1
  store { i64, ptr } %t61, ptr %l76, !tbaa !27
  %t62 = getelementptr { i64, ptr }, ptr %l76, i32 0, i32 1
  %t63 = load ptr, ptr %t62, !tbaa !27
  %t64 = getelementptr { i64, ptr }, ptr %l74, i32 0, i32 1
  %t65 = load ptr, ptr %t64, !tbaa !27
  %t66 = load i64, ptr %l75, !tbaa !24
  %t67 = mul i64 %t66, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t63, ptr %t65, i64 %t67, i1 false)
  %t68 = load { i64, ptr }, ptr %l76, !tbaa !27
  %t69 = getelementptr { { i64, ptr }, { i64, ptr } }, ptr %l70, i32 0, i32 1
  store { i64, ptr } %t68, ptr %t69, !tbaa !27
  call void @__olang_scope_close(ptr %s2)
  call void @__olang_scope_close(ptr %s1)
  call void @__olang_scope_close(ptr %s0)
  %t70 = load { { i64, ptr }, { i64, ptr } }, ptr %l70
  store { { i64, ptr }, { i64, ptr } } %t70, ptr %rv
  br label %ret
bb6:
  br label %bb7
bb7:
  store %olang.scope zeroinitializer, ptr %s3
  store i64 0, ptr %l7, !tbaa !24
  %t71 = load ptr, ptr %l0, !tbaa !29
  %t73 = getelementptr %"compiler/generic:Program", ptr %t71, i32 0, i32 2
  %t74 = load i32, ptr %l1, !tbaa !23
  %t77 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eResults(ptr %v0, ptr %s3, ptr %t73, i32 %t74)
  store { i64, ptr } %t77, ptr %l80
  br label %bb8
bb8:
  %t78 = load { i64, ptr }, ptr %l80, !tbaa !27
  %t79 = extractvalue { i64, ptr } %t78, 0
  store i64 %t79, ptr %l8, !tbaa !24
  store i64 1, ptr %l9, !tbaa !24
  %t81 = load i64, ptr %l8, !tbaa !24
  %t82 = load i64, ptr %l7, !tbaa !24
  %t85 = icmp sgt i64 %t81, %t82
  br i1 %t85, label %bb9, label %bb10
bb9:
  %t87 = load i64, ptr %l9, !tbaa !24
  %t89 = icmp sgt i64 %t87, 0
  br i1 %t89, label %bb11, label %bb12
bb10:
  store i64 0, ptr %l85, !tbaa !24
  br label %bb14
bb11:
  %t91 = load i64, ptr %l8, !tbaa !24
  %t92 = load i64, ptr %l7, !tbaa !24
  %t95 = sub i64 %t91, %t92
  %t96 = load i64, ptr %l9, !tbaa !24
  %t99 = add i64 %t95, %t96
  %t101 = sub i64 %t99, 1
  %t102 = load i64, ptr %l9, !tbaa !24
  %t105 = sdiv i64 %t101, %t102
  store i64 %t105, ptr %l88, !tbaa !24
  br label %bb13
bb12:
  store i64 0, ptr %l88, !tbaa !24
  br label %bb13
bb13:
  %t107 = load i64, ptr %l88, !tbaa !24
  store i64 %t107, ptr %l85, !tbaa !24
  br label %bb14
bb14:
  %t108 = load i64, ptr %l85, !tbaa !24
  store i64 %t108, ptr %l10, !tbaa !24
  store i64 0, ptr %l11, !tbaa !24
  br label %bb15
bb15:
  %t109 = load i64, ptr %l11, !tbaa !24
  %t110 = load i64, ptr %l10, !tbaa !24
  %t113 = icmp slt i64 %t109, %t110
  %t115 = xor i1 %t113, true
  br i1 %t115, label %bb16, label %bb17
bb16:
  br label %bb21
bb17:
  br label %bb18
bb18:
  %t117 = load i64, ptr %l7, !tbaa !24
  %t118 = load i64, ptr %l11, !tbaa !24
  %t119 = load i64, ptr %l9, !tbaa !24
  %t122 = mul i64 %t118, %t119
  %t125 = add i64 %t117, %t122
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %s0, ptr %l6, i64 %t125)
  br label %bb19
bb19:
  br label %bb20
bb20:
  %t130 = load i64, ptr %l11, !tbaa !24
  %t132 = add i64 %t130, 1
  store i64 %t132, ptr %l11, !tbaa !24
  br label %bb15
bb21:
  call void @__olang_scope_close(ptr %s3)
  %t135 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eToArray_3cI64_3e(ptr %s0, ptr %s1, ptr %l6)
  store { i64, ptr } %t135, ptr %l111
  br label %bb22
bb22:
  %t136 = load { i64, ptr }, ptr %l111, !tbaa !27
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d27, i32 0, i32 1) }, ptr %l113, !tbaa !27
  %t137 = load { i64, ptr }, ptr %l113, !tbaa !27
  %t139 = insertvalue { { i64, ptr }, { i64, ptr } } undef, { i64, ptr } %t136, 0
  %t141 = insertvalue { { i64, ptr }, { i64, ptr } } %t139, { i64, ptr } %t137, 1
  store { { i64, ptr }, { i64, ptr } } %t141, ptr %l115
  %t142 = getelementptr { { i64, ptr }, { i64, ptr } }, ptr %l115, i32 0, i32 0
  %t143 = load { i64, ptr }, ptr %t142, !tbaa !27
  store { i64, ptr } %t143, ptr %l116, !tbaa !27
  %t144 = load { i64, ptr }, ptr %l116, !tbaa !27
  %t145 = extractvalue { i64, ptr } %t144, 0
  store i64 %t145, ptr %l117, !tbaa !24
  %t146 = load i64, ptr %l117, !tbaa !24
  %t147 = mul i64 %t146, 8
  %t148 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t147)
  %t149 = insertvalue { i64, ptr } undef, i64 %t146, 0
  %t150 = insertvalue { i64, ptr } %t149, ptr %t148, 1
  store { i64, ptr } %t150, ptr %l118, !tbaa !27
  %t151 = getelementptr { i64, ptr }, ptr %l118, i32 0, i32 1
  %t152 = load ptr, ptr %t151, !tbaa !27
  %t153 = getelementptr { i64, ptr }, ptr %l116, i32 0, i32 1
  %t154 = load ptr, ptr %t153, !tbaa !27
  %t155 = load i64, ptr %l117, !tbaa !24
  %t156 = mul i64 %t155, 8
  call void @llvm.memmove.p0.p0.i64(ptr %t152, ptr %t154, i64 %t156, i1 false)
  %t157 = load { i64, ptr }, ptr %l118, !tbaa !27
  %t158 = getelementptr { { i64, ptr }, { i64, ptr } }, ptr %l115, i32 0, i32 0
  store { i64, ptr } %t157, ptr %t158, !tbaa !27
  %t159 = getelementptr { { i64, ptr }, { i64, ptr } }, ptr %l115, i32 0, i32 1
  %t160 = load { i64, ptr }, ptr %t159, !tbaa !27
  store { i64, ptr } %t160, ptr %l119, !tbaa !27
  %t161 = load { i64, ptr }, ptr %l119, !tbaa !27
  %t162 = extractvalue { i64, ptr } %t161, 0
  store i64 %t162, ptr %l120, !tbaa !24
  %t163 = load i64, ptr %l120, !tbaa !24
  %t164 = mul i64 %t163, 1
  %t165 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t164)
  %t166 = insertvalue { i64, ptr } undef, i64 %t163, 0
  %t167 = insertvalue { i64, ptr } %t166, ptr %t165, 1
  store { i64, ptr } %t167, ptr %l121, !tbaa !27
  %t168 = getelementptr { i64, ptr }, ptr %l121, i32 0, i32 1
  %t169 = load ptr, ptr %t168, !tbaa !27
  %t170 = getelementptr { i64, ptr }, ptr %l119, i32 0, i32 1
  %t171 = load ptr, ptr %t170, !tbaa !27
  %t172 = load i64, ptr %l120, !tbaa !24
  %t173 = mul i64 %t172, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t169, ptr %t171, i64 %t173, i1 false)
  %t174 = load { i64, ptr }, ptr %l121, !tbaa !27
  %t175 = getelementptr { { i64, ptr }, { i64, ptr } }, ptr %l115, i32 0, i32 1
  store { i64, ptr } %t174, ptr %t175, !tbaa !27
  call void @__olang_scope_close(ptr %s1)
  call void @__olang_scope_close(ptr %s0)
  %t176 = load { { i64, ptr }, { i64, ptr } }, ptr %l115
  store { { i64, ptr }, { i64, ptr } } %t176, ptr %rv
  br label %ret
bb23:
  %t177 = load i64, ptr %l2, !tbaa !24
  %t178 = load i64, ptr @G_2ecompiler_2fgeneric_2eListFunctions, !tbaa !24
  %t181 = icmp eq i64 %t177, %t178
  br i1 %t181, label %bb24, label %bb25
bb24:
  %t183 = load ptr, ptr %l0, !tbaa !29
  %t184 = load i64, ptr %l3, !tbaa !24
  %t185 = load i64, ptr %l4, !tbaa !24
  %t189 = call { i64, ptr } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eModuleFns(ptr %v0, ptr %v1, ptr %t183, i64 %t184, i64 %t185)
  store { i64, ptr } %t189, ptr %l128
  br label %bb26
bb25:
  br label %bb27
bb26:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d28, i32 0, i32 1) }, ptr %l129, !tbaa !27
  %t190 = load { i64, ptr }, ptr %l129, !tbaa !27
  %t191 = load { i64, ptr }, ptr %l128, !tbaa !27
  %t192 = insertvalue { { i64, ptr }, { i64, ptr } } undef, { i64, ptr } %t191, 0
  %t194 = insertvalue { { i64, ptr }, { i64, ptr } } %t192, { i64, ptr } %t190, 1
  store { { i64, ptr }, { i64, ptr } } %t194, ptr %l131
  %t195 = getelementptr { { i64, ptr }, { i64, ptr } }, ptr %l131, i32 0, i32 1
  %t196 = load { i64, ptr }, ptr %t195, !tbaa !27
  store { i64, ptr } %t196, ptr %l132, !tbaa !27
  %t197 = load { i64, ptr }, ptr %l132, !tbaa !27
  %t198 = extractvalue { i64, ptr } %t197, 0
  store i64 %t198, ptr %l133, !tbaa !24
  %t199 = load i64, ptr %l133, !tbaa !24
  %t200 = mul i64 %t199, 1
  %t201 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t200)
  %t202 = insertvalue { i64, ptr } undef, i64 %t199, 0
  %t203 = insertvalue { i64, ptr } %t202, ptr %t201, 1
  store { i64, ptr } %t203, ptr %l134, !tbaa !27
  %t204 = getelementptr { i64, ptr }, ptr %l134, i32 0, i32 1
  %t205 = load ptr, ptr %t204, !tbaa !27
  %t206 = getelementptr { i64, ptr }, ptr %l132, i32 0, i32 1
  %t207 = load ptr, ptr %t206, !tbaa !27
  %t208 = load i64, ptr %l133, !tbaa !24
  %t209 = mul i64 %t208, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t205, ptr %t207, i64 %t209, i1 false)
  %t210 = load { i64, ptr }, ptr %l134, !tbaa !27
  %t211 = getelementptr { { i64, ptr }, { i64, ptr } }, ptr %l131, i32 0, i32 1
  store { i64, ptr } %t210, ptr %t211, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  %t212 = load { { i64, ptr }, { i64, ptr } }, ptr %l131
  store { { i64, ptr }, { i64, ptr } } %t212, ptr %rv
  br label %ret
bb27:
  %t213 = load i64, ptr %l2, !tbaa !24
  %t214 = load i64, ptr @G_2ecompiler_2fgeneric_2eListBuilders, !tbaa !24
  %t217 = icmp eq i64 %t213, %t214
  br i1 %t217, label %bb28, label %bb29
bb28:
  %t219 = load ptr, ptr %l0, !tbaa !29
  %t220 = load i32, ptr %l1, !tbaa !23
  %t221 = load i64, ptr %l4, !tbaa !24
  %t225 = call { i64, ptr } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eTypeBuilders(ptr %v0, ptr %v1, ptr %t219, i32 %t220, i64 %t221)
  store { i64, ptr } %t225, ptr %l141
  br label %bb30
bb29:
  br label %bb31
bb30:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d29, i32 0, i32 1) }, ptr %l142, !tbaa !27
  %t226 = load { i64, ptr }, ptr %l142, !tbaa !27
  %t227 = load { i64, ptr }, ptr %l141, !tbaa !27
  %t228 = insertvalue { { i64, ptr }, { i64, ptr } } undef, { i64, ptr } %t227, 0
  %t230 = insertvalue { { i64, ptr }, { i64, ptr } } %t228, { i64, ptr } %t226, 1
  store { { i64, ptr }, { i64, ptr } } %t230, ptr %l144
  %t231 = getelementptr { { i64, ptr }, { i64, ptr } }, ptr %l144, i32 0, i32 1
  %t232 = load { i64, ptr }, ptr %t231, !tbaa !27
  store { i64, ptr } %t232, ptr %l145, !tbaa !27
  %t233 = load { i64, ptr }, ptr %l145, !tbaa !27
  %t234 = extractvalue { i64, ptr } %t233, 0
  store i64 %t234, ptr %l146, !tbaa !24
  %t235 = load i64, ptr %l146, !tbaa !24
  %t236 = mul i64 %t235, 1
  %t237 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t236)
  %t238 = insertvalue { i64, ptr } undef, i64 %t235, 0
  %t239 = insertvalue { i64, ptr } %t238, ptr %t237, 1
  store { i64, ptr } %t239, ptr %l147, !tbaa !27
  %t240 = getelementptr { i64, ptr }, ptr %l147, i32 0, i32 1
  %t241 = load ptr, ptr %t240, !tbaa !27
  %t242 = getelementptr { i64, ptr }, ptr %l145, i32 0, i32 1
  %t243 = load ptr, ptr %t242, !tbaa !27
  %t244 = load i64, ptr %l146, !tbaa !24
  %t245 = mul i64 %t244, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t241, ptr %t243, i64 %t245, i1 false)
  %t246 = load { i64, ptr }, ptr %l147, !tbaa !27
  %t247 = getelementptr { { i64, ptr }, { i64, ptr } }, ptr %l144, i32 0, i32 1
  store { i64, ptr } %t246, ptr %t247, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  %t248 = load { { i64, ptr }, { i64, ptr } }, ptr %l144
  store { { i64, ptr }, { i64, ptr } } %t248, ptr %rv
  br label %ret
bb31:
  %t249 = load i64, ptr %l2, !tbaa !24
  %t250 = load i64, ptr @G_2ecompiler_2fgeneric_2eListMethods, !tbaa !24
  %t253 = icmp eq i64 %t249, %t250
  br i1 %t253, label %bb32, label %bb33
bb32:
  %t255 = load ptr, ptr %l0, !tbaa !29
  %t257 = getelementptr %"compiler/generic:Program", ptr %t255, i32 0, i32 2
  %t258 = load i32, ptr %l1, !tbaa !23
  %t261 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t257, i32 %t258)
  store i32 %t261, ptr %l154
  br label %bb34
bb33:
  br label %bb43
bb34:
  %t262 = load i32, ptr %l154, !range !{i32 0, i32 33}
  %t264 = trunc i64 18 to i32
  %t265 = icmp eq i32 %t262, %t264
  %t267 = xor i1 %t265, true
  br i1 %t267, label %bb35, label %bb36
bb35:
  store i1 true, ptr %l158, !tbaa !21
  br label %bb38
bb36:
  %t269 = load ptr, ptr %l0, !tbaa !29
  %t270 = load i32, ptr %l1, !tbaa !23
  %t273 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eBody(ptr %v0, ptr %t269, i32 %t270)
  store i1 %t273, ptr %l161
  br label %bb37
bb37:
  %t274 = load i1, ptr %l161, !tbaa !21
  %t275 = xor i1 %t274, true
  store i1 %t275, ptr %l158, !tbaa !21
  br label %bb38
bb38:
  %t277 = load i1, ptr %l158, !tbaa !21
  br i1 %t277, label %bb39, label %bb40
bb39:
  store %olang.scope zeroinitializer, ptr %s9
  %t278 = load [0 x i64], ptr %l5
  store [0 x i64] %t278, ptr %l163
  %t279 = mul i64 0, 8
  %t280 = insertvalue { i64, ptr } undef, i64 0, 0
  %t281 = insertvalue { i64, ptr } %t280, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  store { i64, ptr } %t281, ptr %l164, !tbaa !27
  %t282 = getelementptr { i64, ptr }, ptr %l164, i32 0, i32 1
  %t283 = load ptr, ptr %t282, !tbaa !27
  %t284 = mul i64 0, 8
  call void @llvm.memmove.p0.p0.i64(ptr %t283, ptr %l163, i64 %t284, i1 false)
  store { i64, ptr } { i64 50, ptr getelementptr inbounds (<{ i64, [50 x i8] }>, ptr @.d30, i32 0, i32 1) }, ptr %l165, !tbaa !27
  %t285 = load { i64, ptr }, ptr %l165, !tbaa !27
  %t286 = load { i64, ptr }, ptr %l164, !tbaa !27
  %t287 = insertvalue { { i64, ptr }, { i64, ptr } } undef, { i64, ptr } %t286, 0
  %t289 = insertvalue { { i64, ptr }, { i64, ptr } } %t287, { i64, ptr } %t285, 1
  store { { i64, ptr }, { i64, ptr } } %t289, ptr %l167
  %t290 = getelementptr { { i64, ptr }, { i64, ptr } }, ptr %l167, i32 0, i32 0
  %t291 = load { i64, ptr }, ptr %t290, !tbaa !27
  store { i64, ptr } %t291, ptr %l168, !tbaa !27
  %t292 = load { i64, ptr }, ptr %l168, !tbaa !27
  %t293 = extractvalue { i64, ptr } %t292, 0
  store i64 %t293, ptr %l169, !tbaa !24
  %t294 = load i64, ptr %l169, !tbaa !24
  %t295 = mul i64 %t294, 8
  %t296 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t295)
  %t297 = insertvalue { i64, ptr } undef, i64 %t294, 0
  %t298 = insertvalue { i64, ptr } %t297, ptr %t296, 1
  store { i64, ptr } %t298, ptr %l170, !tbaa !27
  %t299 = getelementptr { i64, ptr }, ptr %l170, i32 0, i32 1
  %t300 = load ptr, ptr %t299, !tbaa !27
  %t301 = getelementptr { i64, ptr }, ptr %l168, i32 0, i32 1
  %t302 = load ptr, ptr %t301, !tbaa !27
  %t303 = load i64, ptr %l169, !tbaa !24
  %t304 = mul i64 %t303, 8
  call void @llvm.memmove.p0.p0.i64(ptr %t300, ptr %t302, i64 %t304, i1 false)
  %t305 = load { i64, ptr }, ptr %l170, !tbaa !27
  %t306 = getelementptr { { i64, ptr }, { i64, ptr } }, ptr %l167, i32 0, i32 0
  store { i64, ptr } %t305, ptr %t306, !tbaa !27
  %t307 = getelementptr { { i64, ptr }, { i64, ptr } }, ptr %l167, i32 0, i32 1
  %t308 = load { i64, ptr }, ptr %t307, !tbaa !27
  store { i64, ptr } %t308, ptr %l171, !tbaa !27
  %t309 = load { i64, ptr }, ptr %l171, !tbaa !27
  %t310 = extractvalue { i64, ptr } %t309, 0
  store i64 %t310, ptr %l172, !tbaa !24
  %t311 = load i64, ptr %l172, !tbaa !24
  %t312 = mul i64 %t311, 1
  %t313 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t312)
  %t314 = insertvalue { i64, ptr } undef, i64 %t311, 0
  %t315 = insertvalue { i64, ptr } %t314, ptr %t313, 1
  store { i64, ptr } %t315, ptr %l173, !tbaa !27
  %t316 = getelementptr { i64, ptr }, ptr %l173, i32 0, i32 1
  %t317 = load ptr, ptr %t316, !tbaa !27
  %t318 = getelementptr { i64, ptr }, ptr %l171, i32 0, i32 1
  %t319 = load ptr, ptr %t318, !tbaa !27
  %t320 = load i64, ptr %l172, !tbaa !24
  %t321 = mul i64 %t320, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t317, ptr %t319, i64 %t321, i1 false)
  %t322 = load { i64, ptr }, ptr %l173, !tbaa !27
  %t323 = getelementptr { { i64, ptr }, { i64, ptr } }, ptr %l167, i32 0, i32 1
  store { i64, ptr } %t322, ptr %t323, !tbaa !27
  call void @__olang_scope_close(ptr %s9)
  call void @__olang_scope_close(ptr %s0)
  %t324 = load { { i64, ptr }, { i64, ptr } }, ptr %l167
  store { { i64, ptr }, { i64, ptr } } %t324, ptr %rv
  br label %ret
bb40:
  br label %bb41
bb41:
  %t325 = load ptr, ptr %l0, !tbaa !29
  %t326 = load i32, ptr %l1, !tbaa !23
  %t327 = load i64, ptr %l4, !tbaa !24
  %t331 = call { i64, ptr } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eTypeMethods(ptr %v0, ptr %v1, ptr %t325, i32 %t326, i64 %t327)
  store { i64, ptr } %t331, ptr %l177
  br label %bb42
bb42:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d31, i32 0, i32 1) }, ptr %l178, !tbaa !27
  %t332 = load { i64, ptr }, ptr %l178, !tbaa !27
  %t333 = load { i64, ptr }, ptr %l177, !tbaa !27
  %t334 = insertvalue { { i64, ptr }, { i64, ptr } } undef, { i64, ptr } %t333, 0
  %t336 = insertvalue { { i64, ptr }, { i64, ptr } } %t334, { i64, ptr } %t332, 1
  store { { i64, ptr }, { i64, ptr } } %t336, ptr %l180
  %t337 = getelementptr { { i64, ptr }, { i64, ptr } }, ptr %l180, i32 0, i32 1
  %t338 = load { i64, ptr }, ptr %t337, !tbaa !27
  store { i64, ptr } %t338, ptr %l181, !tbaa !27
  %t339 = load { i64, ptr }, ptr %l181, !tbaa !27
  %t340 = extractvalue { i64, ptr } %t339, 0
  store i64 %t340, ptr %l182, !tbaa !24
  %t341 = load i64, ptr %l182, !tbaa !24
  %t342 = mul i64 %t341, 1
  %t343 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t342)
  %t344 = insertvalue { i64, ptr } undef, i64 %t341, 0
  %t345 = insertvalue { i64, ptr } %t344, ptr %t343, 1
  store { i64, ptr } %t345, ptr %l183, !tbaa !27
  %t346 = getelementptr { i64, ptr }, ptr %l183, i32 0, i32 1
  %t347 = load ptr, ptr %t346, !tbaa !27
  %t348 = getelementptr { i64, ptr }, ptr %l181, i32 0, i32 1
  %t349 = load ptr, ptr %t348, !tbaa !27
  %t350 = load i64, ptr %l182, !tbaa !24
  %t351 = mul i64 %t350, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t347, ptr %t349, i64 %t351, i1 false)
  %t352 = load { i64, ptr }, ptr %l183, !tbaa !27
  %t353 = getelementptr { { i64, ptr }, { i64, ptr } }, ptr %l180, i32 0, i32 1
  store { i64, ptr } %t352, ptr %t353, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  %t354 = load { { i64, ptr }, { i64, ptr } }, ptr %l180
  store { { i64, ptr }, { i64, ptr } } %t354, ptr %rv
  br label %ret
bb43:
  %t355 = load i64, ptr %l2, !tbaa !24
  %t356 = load i64, ptr @G_2ecompiler_2fgeneric_2eListParams, !tbaa !24
  %t359 = icmp eq i64 %t355, %t356
  br i1 %t359, label %bb44, label %bb45
bb44:
  store %olang.scope zeroinitializer, ptr %s10
  %t361 = load ptr, ptr %l0, !tbaa !29
  %t362 = load i32, ptr %l1, !tbaa !23
  %t365 = call %"compiler/generic:Desc" @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eDescOf(ptr %v0, ptr %t361, i32 %t362)
  store %"compiler/generic:Desc" %t365, ptr %l189
  br label %bb46
bb45:
  br label %bb109
bb46:
  %t366 = load %"compiler/generic:Desc", ptr %l189
  store %"compiler/generic:Desc" %t366, ptr %l13
  %t367 = getelementptr %"compiler/generic:Desc", ptr %l13, i32 0, i32 0
  %t368 = load i64, ptr %t367, !tbaa !24
  %t369 = load i64, ptr @G_2ecompiler_2fgeneric_2eDescFunc, !tbaa !24
  %t372 = icmp eq i64 %t368, %t369
  br i1 %t372, label %bb47, label %bb48
bb47:
  store %olang.scope zeroinitializer, ptr %s11
  store i64 0, ptr %l14, !tbaa !24
  %t374 = load ptr, ptr %l0, !tbaa !29
  %t376 = getelementptr %"compiler/generic:Program", ptr %t374, i32 0, i32 29
  %t377 = getelementptr %"compiler/generic:Desc", ptr %l13, i32 0, i32 2
  %t378 = load i64, ptr %t377, !tbaa !24
  %t381 = call %"compiler/generic:fnRow" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fgeneric_3afnRow_3e_2eAt_3ccompiler_2fgeneric_3afnRow_3e(ptr %v0, ptr %v0, ptr %t376, i64 %t378)
  store %"compiler/generic:fnRow" %t381, ptr %l196
  br label %bb49
bb48:
  br label %bb64
bb49:
  %t382 = getelementptr %"compiler/generic:fnRow", ptr %l196, i32 0, i32 1
  %t383 = load ptr, ptr %t382, !tbaa !29
  %t385 = getelementptr %"compiler/ast:Func", ptr %t383, i32 0, i32 3
  %t386 = load ptr, ptr %t385, !tbaa !29
  %t388 = getelementptr %"compiler/ast:Sig", ptr %t386, i32 0, i32 0
  %t389 = load { i64, ptr }, ptr %t388, !tbaa !27
  %t391 = extractvalue { i64, ptr } %t389, 0
  store i64 %t391, ptr %l15, !tbaa !24
  store i64 1, ptr %l16, !tbaa !24
  %t393 = load i64, ptr %l15, !tbaa !24
  %t394 = load i64, ptr %l14, !tbaa !24
  %t397 = icmp sgt i64 %t393, %t394
  br i1 %t397, label %bb50, label %bb51
bb50:
  %t399 = load i64, ptr %l16, !tbaa !24
  %t401 = icmp sgt i64 %t399, 0
  br i1 %t401, label %bb52, label %bb53
bb51:
  store i64 0, ptr %l204, !tbaa !24
  br label %bb55
bb52:
  %t403 = load i64, ptr %l15, !tbaa !24
  %t404 = load i64, ptr %l14, !tbaa !24
  %t407 = sub i64 %t403, %t404
  %t408 = load i64, ptr %l16, !tbaa !24
  %t411 = add i64 %t407, %t408
  %t413 = sub i64 %t411, 1
  %t414 = load i64, ptr %l16, !tbaa !24
  %t417 = sdiv i64 %t413, %t414
  store i64 %t417, ptr %l207, !tbaa !24
  br label %bb54
bb53:
  store i64 0, ptr %l207, !tbaa !24
  br label %bb54
bb54:
  %t419 = load i64, ptr %l207, !tbaa !24
  store i64 %t419, ptr %l204, !tbaa !24
  br label %bb55
bb55:
  %t420 = load i64, ptr %l204, !tbaa !24
  store i64 %t420, ptr %l17, !tbaa !24
  store i64 0, ptr %l18, !tbaa !24
  br label %bb56
bb56:
  %t421 = load i64, ptr %l18, !tbaa !24
  %t422 = load i64, ptr %l17, !tbaa !24
  %t425 = icmp slt i64 %t421, %t422
  %t427 = xor i1 %t425, true
  br i1 %t427, label %bb57, label %bb58
bb57:
  br label %bb62
bb58:
  br label %bb59
bb59:
  %t429 = load i64, ptr %l14, !tbaa !24
  %t430 = load i64, ptr %l18, !tbaa !24
  %t431 = load i64, ptr %l16, !tbaa !24
  %t434 = mul i64 %t430, %t431
  %t437 = add i64 %t429, %t434
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %s0, ptr %l6, i64 %t437)
  br label %bb60
bb60:
  br label %bb61
bb61:
  %t442 = load i64, ptr %l18, !tbaa !24
  %t444 = add i64 %t442, 1
  store i64 %t444, ptr %l18, !tbaa !24
  br label %bb56
bb62:
  %t447 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eToArray_3cI64_3e(ptr %s0, ptr %s11, ptr %l6)
  store { i64, ptr } %t447, ptr %l230
  br label %bb63
bb63:
  %t448 = load { i64, ptr }, ptr %l230, !tbaa !27
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d32, i32 0, i32 1) }, ptr %l232, !tbaa !27
  %t449 = load { i64, ptr }, ptr %l232, !tbaa !27
  %t451 = insertvalue { { i64, ptr }, { i64, ptr } } undef, { i64, ptr } %t448, 0
  %t453 = insertvalue { { i64, ptr }, { i64, ptr } } %t451, { i64, ptr } %t449, 1
  store { { i64, ptr }, { i64, ptr } } %t453, ptr %l234
  %t454 = getelementptr { { i64, ptr }, { i64, ptr } }, ptr %l234, i32 0, i32 0
  %t455 = load { i64, ptr }, ptr %t454, !tbaa !27
  store { i64, ptr } %t455, ptr %l235, !tbaa !27
  %t456 = load { i64, ptr }, ptr %l235, !tbaa !27
  %t457 = extractvalue { i64, ptr } %t456, 0
  store i64 %t457, ptr %l236, !tbaa !24
  %t458 = load i64, ptr %l236, !tbaa !24
  %t459 = mul i64 %t458, 8
  %t460 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t459)
  %t461 = insertvalue { i64, ptr } undef, i64 %t458, 0
  %t462 = insertvalue { i64, ptr } %t461, ptr %t460, 1
  store { i64, ptr } %t462, ptr %l237, !tbaa !27
  %t463 = getelementptr { i64, ptr }, ptr %l237, i32 0, i32 1
  %t464 = load ptr, ptr %t463, !tbaa !27
  %t465 = getelementptr { i64, ptr }, ptr %l235, i32 0, i32 1
  %t466 = load ptr, ptr %t465, !tbaa !27
  %t467 = load i64, ptr %l236, !tbaa !24
  %t468 = mul i64 %t467, 8
  call void @llvm.memmove.p0.p0.i64(ptr %t464, ptr %t466, i64 %t468, i1 false)
  %t469 = load { i64, ptr }, ptr %l237, !tbaa !27
  %t470 = getelementptr { { i64, ptr }, { i64, ptr } }, ptr %l234, i32 0, i32 0
  store { i64, ptr } %t469, ptr %t470, !tbaa !27
  %t471 = getelementptr { { i64, ptr }, { i64, ptr } }, ptr %l234, i32 0, i32 1
  %t472 = load { i64, ptr }, ptr %t471, !tbaa !27
  store { i64, ptr } %t472, ptr %l238, !tbaa !27
  %t473 = load { i64, ptr }, ptr %l238, !tbaa !27
  %t474 = extractvalue { i64, ptr } %t473, 0
  store i64 %t474, ptr %l239, !tbaa !24
  %t475 = load i64, ptr %l239, !tbaa !24
  %t476 = mul i64 %t475, 1
  %t477 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t476)
  %t478 = insertvalue { i64, ptr } undef, i64 %t475, 0
  %t479 = insertvalue { i64, ptr } %t478, ptr %t477, 1
  store { i64, ptr } %t479, ptr %l240, !tbaa !27
  %t480 = getelementptr { i64, ptr }, ptr %l240, i32 0, i32 1
  %t481 = load ptr, ptr %t480, !tbaa !27
  %t482 = getelementptr { i64, ptr }, ptr %l238, i32 0, i32 1
  %t483 = load ptr, ptr %t482, !tbaa !27
  %t484 = load i64, ptr %l239, !tbaa !24
  %t485 = mul i64 %t484, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t481, ptr %t483, i64 %t485, i1 false)
  %t486 = load { i64, ptr }, ptr %l240, !tbaa !27
  %t487 = getelementptr { { i64, ptr }, { i64, ptr } }, ptr %l234, i32 0, i32 1
  store { i64, ptr } %t486, ptr %t487, !tbaa !27
  call void @__olang_scope_close(ptr %s11)
  call void @__olang_scope_close(ptr %s10)
  call void @__olang_scope_close(ptr %s0)
  %t488 = load { { i64, ptr }, { i64, ptr } }, ptr %l234
  store { { i64, ptr }, { i64, ptr } } %t488, ptr %rv
  br label %ret
bb64:
  %t489 = load ptr, ptr %l0, !tbaa !29
  %t491 = getelementptr %"compiler/generic:Program", ptr %t489, i32 0, i32 2
  %t492 = load i32, ptr %l1, !tbaa !23
  %t495 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t491, i32 %t492)
  store i32 %t495, ptr %l244
  br label %bb65
bb65:
  %t496 = load i32, ptr %l244, !range !{i32 0, i32 33}
  %t498 = trunc i64 21 to i32
  %t499 = icmp eq i32 %t496, %t498
  br i1 %t499, label %bb66, label %bb67
bb66:
  store %olang.scope zeroinitializer, ptr %s15
  store %olang.scope zeroinitializer, ptr %s16
  store i64 0, ptr %l20, !tbaa !24
  %t501 = load ptr, ptr %l0, !tbaa !29
  %t503 = getelementptr %"compiler/generic:Program", ptr %t501, i32 0, i32 2
  store ptr %t503, ptr %l248, !tbaa !29
  %t504 = load ptr, ptr %l0, !tbaa !29
  %t506 = getelementptr %"compiler/generic:Program", ptr %t504, i32 0, i32 2
  %t507 = load i32, ptr %l1, !tbaa !23
  %t510 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParams(ptr %v0, ptr %t506, i32 %t507)
  store i32 %t510, ptr %l252
  br label %bb68
bb67:
  br label %bb84
bb68:
  %t511 = load ptr, ptr %l248, !tbaa !29
  %t512 = load i32, ptr %l252, !tbaa !23
  %t513 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %s16, ptr %t511, i32 %t512)
  store { i64, ptr } %t513, ptr %l253
  br label %bb69
bb69:
  %t514 = load { i64, ptr }, ptr %l253, !tbaa !27
  %t515 = extractvalue { i64, ptr } %t514, 0
  store i64 %t515, ptr %l21, !tbaa !24
  store i64 1, ptr %l22, !tbaa !24
  %t517 = load i64, ptr %l21, !tbaa !24
  %t518 = load i64, ptr %l20, !tbaa !24
  %t521 = icmp sgt i64 %t517, %t518
  br i1 %t521, label %bb70, label %bb71
bb70:
  %t523 = load i64, ptr %l22, !tbaa !24
  %t525 = icmp sgt i64 %t523, 0
  br i1 %t525, label %bb72, label %bb73
bb71:
  store i64 0, ptr %l258, !tbaa !24
  br label %bb75
bb72:
  %t527 = load i64, ptr %l21, !tbaa !24
  %t528 = load i64, ptr %l20, !tbaa !24
  %t531 = sub i64 %t527, %t528
  %t532 = load i64, ptr %l22, !tbaa !24
  %t535 = add i64 %t531, %t532
  %t537 = sub i64 %t535, 1
  %t538 = load i64, ptr %l22, !tbaa !24
  %t541 = sdiv i64 %t537, %t538
  store i64 %t541, ptr %l261, !tbaa !24
  br label %bb74
bb73:
  store i64 0, ptr %l261, !tbaa !24
  br label %bb74
bb74:
  %t543 = load i64, ptr %l261, !tbaa !24
  store i64 %t543, ptr %l258, !tbaa !24
  br label %bb75
bb75:
  %t544 = load i64, ptr %l258, !tbaa !24
  store i64 %t544, ptr %l23, !tbaa !24
  store i64 0, ptr %l24, !tbaa !24
  br label %bb76
bb76:
  %t545 = load i64, ptr %l24, !tbaa !24
  %t546 = load i64, ptr %l23, !tbaa !24
  %t549 = icmp slt i64 %t545, %t546
  %t551 = xor i1 %t549, true
  br i1 %t551, label %bb77, label %bb78
bb77:
  br label %bb82
bb78:
  br label %bb79
bb79:
  %t553 = load i64, ptr %l20, !tbaa !24
  %t554 = load i64, ptr %l24, !tbaa !24
  %t555 = load i64, ptr %l22, !tbaa !24
  %t558 = mul i64 %t554, %t555
  %t561 = add i64 %t553, %t558
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %s0, ptr %l6, i64 %t561)
  br label %bb80
bb80:
  br label %bb81
bb81:
  %t566 = load i64, ptr %l24, !tbaa !24
  %t568 = add i64 %t566, 1
  store i64 %t568, ptr %l24, !tbaa !24
  br label %bb76
bb82:
  call void @__olang_scope_close(ptr %s16)
  %t571 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eToArray_3cI64_3e(ptr %s0, ptr %s15, ptr %l6)
  store { i64, ptr } %t571, ptr %l284
  br label %bb83
bb83:
  %t572 = load { i64, ptr }, ptr %l284, !tbaa !27
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d33, i32 0, i32 1) }, ptr %l286, !tbaa !27
  %t573 = load { i64, ptr }, ptr %l286, !tbaa !27
  %t575 = insertvalue { { i64, ptr }, { i64, ptr } } undef, { i64, ptr } %t572, 0
  %t577 = insertvalue { { i64, ptr }, { i64, ptr } } %t575, { i64, ptr } %t573, 1
  store { { i64, ptr }, { i64, ptr } } %t577, ptr %l288
  %t578 = getelementptr { { i64, ptr }, { i64, ptr } }, ptr %l288, i32 0, i32 0
  %t579 = load { i64, ptr }, ptr %t578, !tbaa !27
  store { i64, ptr } %t579, ptr %l289, !tbaa !27
  %t580 = load { i64, ptr }, ptr %l289, !tbaa !27
  %t581 = extractvalue { i64, ptr } %t580, 0
  store i64 %t581, ptr %l290, !tbaa !24
  %t582 = load i64, ptr %l290, !tbaa !24
  %t583 = mul i64 %t582, 8
  %t584 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t583)
  %t585 = insertvalue { i64, ptr } undef, i64 %t582, 0
  %t586 = insertvalue { i64, ptr } %t585, ptr %t584, 1
  store { i64, ptr } %t586, ptr %l291, !tbaa !27
  %t587 = getelementptr { i64, ptr }, ptr %l291, i32 0, i32 1
  %t588 = load ptr, ptr %t587, !tbaa !27
  %t589 = getelementptr { i64, ptr }, ptr %l289, i32 0, i32 1
  %t590 = load ptr, ptr %t589, !tbaa !27
  %t591 = load i64, ptr %l290, !tbaa !24
  %t592 = mul i64 %t591, 8
  call void @llvm.memmove.p0.p0.i64(ptr %t588, ptr %t590, i64 %t592, i1 false)
  %t593 = load { i64, ptr }, ptr %l291, !tbaa !27
  %t594 = getelementptr { { i64, ptr }, { i64, ptr } }, ptr %l288, i32 0, i32 0
  store { i64, ptr } %t593, ptr %t594, !tbaa !27
  %t595 = getelementptr { { i64, ptr }, { i64, ptr } }, ptr %l288, i32 0, i32 1
  %t596 = load { i64, ptr }, ptr %t595, !tbaa !27
  store { i64, ptr } %t596, ptr %l292, !tbaa !27
  %t597 = load { i64, ptr }, ptr %l292, !tbaa !27
  %t598 = extractvalue { i64, ptr } %t597, 0
  store i64 %t598, ptr %l293, !tbaa !24
  %t599 = load i64, ptr %l293, !tbaa !24
  %t600 = mul i64 %t599, 1
  %t601 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t600)
  %t602 = insertvalue { i64, ptr } undef, i64 %t599, 0
  %t603 = insertvalue { i64, ptr } %t602, ptr %t601, 1
  store { i64, ptr } %t603, ptr %l294, !tbaa !27
  %t604 = getelementptr { i64, ptr }, ptr %l294, i32 0, i32 1
  %t605 = load ptr, ptr %t604, !tbaa !27
  %t606 = getelementptr { i64, ptr }, ptr %l292, i32 0, i32 1
  %t607 = load ptr, ptr %t606, !tbaa !27
  %t608 = load i64, ptr %l293, !tbaa !24
  %t609 = mul i64 %t608, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t605, ptr %t607, i64 %t609, i1 false)
  %t610 = load { i64, ptr }, ptr %l294, !tbaa !27
  %t611 = getelementptr { { i64, ptr }, { i64, ptr } }, ptr %l288, i32 0, i32 1
  store { i64, ptr } %t610, ptr %t611, !tbaa !27
  call void @__olang_scope_close(ptr %s15)
  call void @__olang_scope_close(ptr %s10)
  call void @__olang_scope_close(ptr %s0)
  %t612 = load { { i64, ptr }, { i64, ptr } }, ptr %l288
  store { { i64, ptr }, { i64, ptr } } %t612, ptr %rv
  br label %ret
bb84:
  %t613 = load ptr, ptr %l0, !tbaa !29
  %t615 = getelementptr %"compiler/generic:Program", ptr %t613, i32 0, i32 2
  %t616 = load i32, ptr %l1, !tbaa !23
  %t619 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t615, i32 %t616)
  store i32 %t619, ptr %l298
  br label %bb85
bb85:
  %t620 = load i32, ptr %l298, !range !{i32 0, i32 33}
  %t622 = trunc i64 18 to i32
  %t623 = icmp eq i32 %t620, %t622
  br i1 %t623, label %bb86, label %bb87
bb86:
  %t625 = load ptr, ptr %l0, !tbaa !29
  %t626 = load i32, ptr %l1, !tbaa !23
  %t629 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eCtorSig(ptr %v0, ptr %t625, i32 %t626)
  store i32 %t629, ptr %l304
  br label %bb88
bb87:
  %t630 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  store i32 %t630, ptr %l301, !tbaa !23
  br label %bb89
bb88:
  %t632 = load i32, ptr %l304, !tbaa !23
  store i32 %t632, ptr %l301, !tbaa !23
  br label %bb89
bb89:
  %t633 = load i32, ptr %l301, !tbaa !23
  store i32 %t633, ptr %l26, !tbaa !23
  %t634 = load i32, ptr %l26, !tbaa !23
  %t635 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t638 = icmp eq i32 %t634, %t635
  br i1 %t638, label %bb90, label %bb91
bb90:
  store %olang.scope zeroinitializer, ptr %s19
  %t640 = load [0 x i64], ptr %l5
  store [0 x i64] %t640, ptr %l309
  %t641 = mul i64 0, 8
  %t642 = insertvalue { i64, ptr } undef, i64 0, 0
  %t643 = insertvalue { i64, ptr } %t642, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  store { i64, ptr } %t643, ptr %l310, !tbaa !27
  %t644 = getelementptr { i64, ptr }, ptr %l310, i32 0, i32 1
  %t645 = load ptr, ptr %t644, !tbaa !27
  %t646 = mul i64 0, 8
  call void @llvm.memmove.p0.p0.i64(ptr %t645, ptr %l309, i64 %t646, i1 false)
  store { i64, ptr } { i64 66, ptr getelementptr inbounds (<{ i64, [66 x i8] }>, ptr @.d34, i32 0, i32 1) }, ptr %l311, !tbaa !27
  %t647 = load { i64, ptr }, ptr %l311, !tbaa !27
  %t648 = load { i64, ptr }, ptr %l310, !tbaa !27
  %t649 = insertvalue { { i64, ptr }, { i64, ptr } } undef, { i64, ptr } %t648, 0
  %t651 = insertvalue { { i64, ptr }, { i64, ptr } } %t649, { i64, ptr } %t647, 1
  store { { i64, ptr }, { i64, ptr } } %t651, ptr %l313
  %t652 = getelementptr { { i64, ptr }, { i64, ptr } }, ptr %l313, i32 0, i32 0
  %t653 = load { i64, ptr }, ptr %t652, !tbaa !27
  store { i64, ptr } %t653, ptr %l314, !tbaa !27
  %t654 = load { i64, ptr }, ptr %l314, !tbaa !27
  %t655 = extractvalue { i64, ptr } %t654, 0
  store i64 %t655, ptr %l315, !tbaa !24
  %t656 = load i64, ptr %l315, !tbaa !24
  %t657 = mul i64 %t656, 8
  %t658 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t657)
  %t659 = insertvalue { i64, ptr } undef, i64 %t656, 0
  %t660 = insertvalue { i64, ptr } %t659, ptr %t658, 1
  store { i64, ptr } %t660, ptr %l316, !tbaa !27
  %t661 = getelementptr { i64, ptr }, ptr %l316, i32 0, i32 1
  %t662 = load ptr, ptr %t661, !tbaa !27
  %t663 = getelementptr { i64, ptr }, ptr %l314, i32 0, i32 1
  %t664 = load ptr, ptr %t663, !tbaa !27
  %t665 = load i64, ptr %l315, !tbaa !24
  %t666 = mul i64 %t665, 8
  call void @llvm.memmove.p0.p0.i64(ptr %t662, ptr %t664, i64 %t666, i1 false)
  %t667 = load { i64, ptr }, ptr %l316, !tbaa !27
  %t668 = getelementptr { { i64, ptr }, { i64, ptr } }, ptr %l313, i32 0, i32 0
  store { i64, ptr } %t667, ptr %t668, !tbaa !27
  %t669 = getelementptr { { i64, ptr }, { i64, ptr } }, ptr %l313, i32 0, i32 1
  %t670 = load { i64, ptr }, ptr %t669, !tbaa !27
  store { i64, ptr } %t670, ptr %l317, !tbaa !27
  %t671 = load { i64, ptr }, ptr %l317, !tbaa !27
  %t672 = extractvalue { i64, ptr } %t671, 0
  store i64 %t672, ptr %l318, !tbaa !24
  %t673 = load i64, ptr %l318, !tbaa !24
  %t674 = mul i64 %t673, 1
  %t675 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t674)
  %t676 = insertvalue { i64, ptr } undef, i64 %t673, 0
  %t677 = insertvalue { i64, ptr } %t676, ptr %t675, 1
  store { i64, ptr } %t677, ptr %l319, !tbaa !27
  %t678 = getelementptr { i64, ptr }, ptr %l319, i32 0, i32 1
  %t679 = load ptr, ptr %t678, !tbaa !27
  %t680 = getelementptr { i64, ptr }, ptr %l317, i32 0, i32 1
  %t681 = load ptr, ptr %t680, !tbaa !27
  %t682 = load i64, ptr %l318, !tbaa !24
  %t683 = mul i64 %t682, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t679, ptr %t681, i64 %t683, i1 false)
  %t684 = load { i64, ptr }, ptr %l319, !tbaa !27
  %t685 = getelementptr { { i64, ptr }, { i64, ptr } }, ptr %l313, i32 0, i32 1
  store { i64, ptr } %t684, ptr %t685, !tbaa !27
  call void @__olang_scope_close(ptr %s19)
  call void @__olang_scope_close(ptr %s10)
  call void @__olang_scope_close(ptr %s0)
  %t686 = load { { i64, ptr }, { i64, ptr } }, ptr %l313
  store { { i64, ptr }, { i64, ptr } } %t686, ptr %rv
  br label %ret
bb91:
  br label %bb92
bb92:
  store %olang.scope zeroinitializer, ptr %s20
  store i64 0, ptr %l27, !tbaa !24
  %t687 = load ptr, ptr %l0, !tbaa !29
  %t689 = getelementptr %"compiler/generic:Program", ptr %t687, i32 0, i32 2
  store ptr %t689, ptr %l321, !tbaa !29
  %t690 = load ptr, ptr %l0, !tbaa !29
  %t692 = getelementptr %"compiler/generic:Program", ptr %t690, i32 0, i32 2
  %t693 = load i32, ptr %l26, !tbaa !23
  %t696 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParams(ptr %v0, ptr %t692, i32 %t693)
  store i32 %t696, ptr %l325
  br label %bb93
bb93:
  %t697 = load ptr, ptr %l321, !tbaa !29
  %t698 = load i32, ptr %l325, !tbaa !23
  %t699 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %s20, ptr %t697, i32 %t698)
  store { i64, ptr } %t699, ptr %l326
  br label %bb94
bb94:
  %t700 = load { i64, ptr }, ptr %l326, !tbaa !27
  %t701 = extractvalue { i64, ptr } %t700, 0
  store i64 %t701, ptr %l28, !tbaa !24
  store i64 1, ptr %l29, !tbaa !24
  %t703 = load i64, ptr %l28, !tbaa !24
  %t704 = load i64, ptr %l27, !tbaa !24
  %t707 = icmp sgt i64 %t703, %t704
  br i1 %t707, label %bb95, label %bb96
bb95:
  %t709 = load i64, ptr %l29, !tbaa !24
  %t711 = icmp sgt i64 %t709, 0
  br i1 %t711, label %bb97, label %bb98
bb96:
  store i64 0, ptr %l331, !tbaa !24
  br label %bb100
bb97:
  %t713 = load i64, ptr %l28, !tbaa !24
  %t714 = load i64, ptr %l27, !tbaa !24
  %t717 = sub i64 %t713, %t714
  %t718 = load i64, ptr %l29, !tbaa !24
  %t721 = add i64 %t717, %t718
  %t723 = sub i64 %t721, 1
  %t724 = load i64, ptr %l29, !tbaa !24
  %t727 = sdiv i64 %t723, %t724
  store i64 %t727, ptr %l334, !tbaa !24
  br label %bb99
bb98:
  store i64 0, ptr %l334, !tbaa !24
  br label %bb99
bb99:
  %t729 = load i64, ptr %l334, !tbaa !24
  store i64 %t729, ptr %l331, !tbaa !24
  br label %bb100
bb100:
  %t730 = load i64, ptr %l331, !tbaa !24
  store i64 %t730, ptr %l30, !tbaa !24
  store i64 0, ptr %l31, !tbaa !24
  br label %bb101
bb101:
  %t731 = load i64, ptr %l31, !tbaa !24
  %t732 = load i64, ptr %l30, !tbaa !24
  %t735 = icmp slt i64 %t731, %t732
  %t737 = xor i1 %t735, true
  br i1 %t737, label %bb102, label %bb103
bb102:
  br label %bb107
bb103:
  br label %bb104
bb104:
  %t739 = load i64, ptr %l27, !tbaa !24
  %t740 = load i64, ptr %l31, !tbaa !24
  %t741 = load i64, ptr %l29, !tbaa !24
  %t744 = mul i64 %t740, %t741
  %t747 = add i64 %t739, %t744
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %s0, ptr %l6, i64 %t747)
  br label %bb105
bb105:
  br label %bb106
bb106:
  %t752 = load i64, ptr %l31, !tbaa !24
  %t754 = add i64 %t752, 1
  store i64 %t754, ptr %l31, !tbaa !24
  br label %bb101
bb107:
  call void @__olang_scope_close(ptr %s20)
  %t757 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eToArray_3cI64_3e(ptr %s0, ptr %s10, ptr %l6)
  store { i64, ptr } %t757, ptr %l357
  br label %bb108
bb108:
  %t758 = load { i64, ptr }, ptr %l357, !tbaa !27
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d35, i32 0, i32 1) }, ptr %l359, !tbaa !27
  %t759 = load { i64, ptr }, ptr %l359, !tbaa !27
  %t761 = insertvalue { { i64, ptr }, { i64, ptr } } undef, { i64, ptr } %t758, 0
  %t763 = insertvalue { { i64, ptr }, { i64, ptr } } %t761, { i64, ptr } %t759, 1
  store { { i64, ptr }, { i64, ptr } } %t763, ptr %l361
  %t764 = getelementptr { { i64, ptr }, { i64, ptr } }, ptr %l361, i32 0, i32 0
  %t765 = load { i64, ptr }, ptr %t764, !tbaa !27
  store { i64, ptr } %t765, ptr %l362, !tbaa !27
  %t766 = load { i64, ptr }, ptr %l362, !tbaa !27
  %t767 = extractvalue { i64, ptr } %t766, 0
  store i64 %t767, ptr %l363, !tbaa !24
  %t768 = load i64, ptr %l363, !tbaa !24
  %t769 = mul i64 %t768, 8
  %t770 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t769)
  %t771 = insertvalue { i64, ptr } undef, i64 %t768, 0
  %t772 = insertvalue { i64, ptr } %t771, ptr %t770, 1
  store { i64, ptr } %t772, ptr %l364, !tbaa !27
  %t773 = getelementptr { i64, ptr }, ptr %l364, i32 0, i32 1
  %t774 = load ptr, ptr %t773, !tbaa !27
  %t775 = getelementptr { i64, ptr }, ptr %l362, i32 0, i32 1
  %t776 = load ptr, ptr %t775, !tbaa !27
  %t777 = load i64, ptr %l363, !tbaa !24
  %t778 = mul i64 %t777, 8
  call void @llvm.memmove.p0.p0.i64(ptr %t774, ptr %t776, i64 %t778, i1 false)
  %t779 = load { i64, ptr }, ptr %l364, !tbaa !27
  %t780 = getelementptr { { i64, ptr }, { i64, ptr } }, ptr %l361, i32 0, i32 0
  store { i64, ptr } %t779, ptr %t780, !tbaa !27
  %t781 = getelementptr { { i64, ptr }, { i64, ptr } }, ptr %l361, i32 0, i32 1
  %t782 = load { i64, ptr }, ptr %t781, !tbaa !27
  store { i64, ptr } %t782, ptr %l365, !tbaa !27
  %t783 = load { i64, ptr }, ptr %l365, !tbaa !27
  %t784 = extractvalue { i64, ptr } %t783, 0
  store i64 %t784, ptr %l366, !tbaa !24
  %t785 = load i64, ptr %l366, !tbaa !24
  %t786 = mul i64 %t785, 1
  %t787 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t786)
  %t788 = insertvalue { i64, ptr } undef, i64 %t785, 0
  %t789 = insertvalue { i64, ptr } %t788, ptr %t787, 1
  store { i64, ptr } %t789, ptr %l367, !tbaa !27
  %t790 = getelementptr { i64, ptr }, ptr %l367, i32 0, i32 1
  %t791 = load ptr, ptr %t790, !tbaa !27
  %t792 = getelementptr { i64, ptr }, ptr %l365, i32 0, i32 1
  %t793 = load ptr, ptr %t792, !tbaa !27
  %t794 = load i64, ptr %l366, !tbaa !24
  %t795 = mul i64 %t794, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t791, ptr %t793, i64 %t795, i1 false)
  %t796 = load { i64, ptr }, ptr %l367, !tbaa !27
  %t797 = getelementptr { { i64, ptr }, { i64, ptr } }, ptr %l361, i32 0, i32 1
  store { i64, ptr } %t796, ptr %t797, !tbaa !27
  call void @__olang_scope_close(ptr %s10)
  call void @__olang_scope_close(ptr %s0)
  %t798 = load { { i64, ptr }, { i64, ptr } }, ptr %l361
  store { { i64, ptr }, { i64, ptr } } %t798, ptr %rv
  br label %ret
bb109:
  %t799 = load ptr, ptr %l0, !tbaa !29
  %t800 = load i32, ptr %l1, !tbaa !23
  %t803 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eReflUnder(ptr %v0, ptr %t799, i32 %t800)
  store i32 %t803, ptr %l370
  br label %bb110
bb110:
  %t804 = load i32, ptr %l370, !tbaa !23
  store i32 %t804, ptr %l33, !tbaa !23
  %t805 = load i64, ptr %l2, !tbaa !24
  %t806 = load i64, ptr @G_2ecompiler_2fgeneric_2eListCases, !tbaa !24
  %t809 = icmp eq i64 %t805, %t806
  br i1 %t809, label %bb111, label %bb112
bb111:
  store %olang.scope zeroinitializer, ptr %s23
  %t811 = load ptr, ptr %l0, !tbaa !29
  %t813 = getelementptr %"compiler/generic:Program", ptr %t811, i32 0, i32 2
  %t814 = load i32, ptr %l33, !tbaa !23
  %t817 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t813, i32 %t814)
  store i32 %t817, ptr %l377
  br label %bb113
bb112:
  br label %bb155
bb113:
  %t818 = load i32, ptr %l377, !range !{i32 0, i32 33}
  %t820 = trunc i64 32 to i32
  %t821 = icmp eq i32 %t818, %t820
  br i1 %t821, label %bb114, label %bb115
bb114:
  store %olang.scope zeroinitializer, ptr %s24
  store %olang.scope zeroinitializer, ptr %s25
  store i64 0, ptr %l34, !tbaa !24
  %t823 = load ptr, ptr %l0, !tbaa !29
  %t824 = load i32, ptr %l33, !tbaa !23
  %t827 = call { i64, ptr } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eErrValCodes(ptr %v0, ptr %s25, ptr %t823, i32 %t824)
  store { i64, ptr } %t827, ptr %l382
  br label %bb116
bb115:
  br label %bb131
bb116:
  %t828 = load { i64, ptr }, ptr %l382, !tbaa !27
  %t829 = extractvalue { i64, ptr } %t828, 0
  store i64 %t829, ptr %l35, !tbaa !24
  store i64 1, ptr %l36, !tbaa !24
  %t831 = load i64, ptr %l35, !tbaa !24
  %t832 = load i64, ptr %l34, !tbaa !24
  %t835 = icmp sgt i64 %t831, %t832
  br i1 %t835, label %bb117, label %bb118
bb117:
  %t837 = load i64, ptr %l36, !tbaa !24
  %t839 = icmp sgt i64 %t837, 0
  br i1 %t839, label %bb119, label %bb120
bb118:
  store i64 0, ptr %l387, !tbaa !24
  br label %bb122
bb119:
  %t841 = load i64, ptr %l35, !tbaa !24
  %t842 = load i64, ptr %l34, !tbaa !24
  %t845 = sub i64 %t841, %t842
  %t846 = load i64, ptr %l36, !tbaa !24
  %t849 = add i64 %t845, %t846
  %t851 = sub i64 %t849, 1
  %t852 = load i64, ptr %l36, !tbaa !24
  %t855 = sdiv i64 %t851, %t852
  store i64 %t855, ptr %l390, !tbaa !24
  br label %bb121
bb120:
  store i64 0, ptr %l390, !tbaa !24
  br label %bb121
bb121:
  %t857 = load i64, ptr %l390, !tbaa !24
  store i64 %t857, ptr %l387, !tbaa !24
  br label %bb122
bb122:
  %t858 = load i64, ptr %l387, !tbaa !24
  store i64 %t858, ptr %l37, !tbaa !24
  store i64 0, ptr %l38, !tbaa !24
  br label %bb123
bb123:
  %t859 = load i64, ptr %l38, !tbaa !24
  %t860 = load i64, ptr %l37, !tbaa !24
  %t863 = icmp slt i64 %t859, %t860
  %t865 = xor i1 %t863, true
  br i1 %t865, label %bb124, label %bb125
bb124:
  br label %bb129
bb125:
  br label %bb126
bb126:
  %t867 = load i64, ptr %l34, !tbaa !24
  %t868 = load i64, ptr %l38, !tbaa !24
  %t869 = load i64, ptr %l36, !tbaa !24
  %t872 = mul i64 %t868, %t869
  %t875 = add i64 %t867, %t872
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %s0, ptr %l6, i64 %t875)
  br label %bb127
bb127:
  br label %bb128
bb128:
  %t880 = load i64, ptr %l38, !tbaa !24
  %t882 = add i64 %t880, 1
  store i64 %t882, ptr %l38, !tbaa !24
  br label %bb123
bb129:
  call void @__olang_scope_close(ptr %s25)
  %t885 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eToArray_3cI64_3e(ptr %s0, ptr %s24, ptr %l6)
  store { i64, ptr } %t885, ptr %l413
  br label %bb130
bb130:
  %t886 = load { i64, ptr }, ptr %l413, !tbaa !27
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d36, i32 0, i32 1) }, ptr %l415, !tbaa !27
  %t887 = load { i64, ptr }, ptr %l415, !tbaa !27
  %t889 = insertvalue { { i64, ptr }, { i64, ptr } } undef, { i64, ptr } %t886, 0
  %t891 = insertvalue { { i64, ptr }, { i64, ptr } } %t889, { i64, ptr } %t887, 1
  store { { i64, ptr }, { i64, ptr } } %t891, ptr %l417
  %t892 = getelementptr { { i64, ptr }, { i64, ptr } }, ptr %l417, i32 0, i32 0
  %t893 = load { i64, ptr }, ptr %t892, !tbaa !27
  store { i64, ptr } %t893, ptr %l418, !tbaa !27
  %t894 = load { i64, ptr }, ptr %l418, !tbaa !27
  %t895 = extractvalue { i64, ptr } %t894, 0
  store i64 %t895, ptr %l419, !tbaa !24
  %t896 = load i64, ptr %l419, !tbaa !24
  %t897 = mul i64 %t896, 8
  %t898 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t897)
  %t899 = insertvalue { i64, ptr } undef, i64 %t896, 0
  %t900 = insertvalue { i64, ptr } %t899, ptr %t898, 1
  store { i64, ptr } %t900, ptr %l420, !tbaa !27
  %t901 = getelementptr { i64, ptr }, ptr %l420, i32 0, i32 1
  %t902 = load ptr, ptr %t901, !tbaa !27
  %t903 = getelementptr { i64, ptr }, ptr %l418, i32 0, i32 1
  %t904 = load ptr, ptr %t903, !tbaa !27
  %t905 = load i64, ptr %l419, !tbaa !24
  %t906 = mul i64 %t905, 8
  call void @llvm.memmove.p0.p0.i64(ptr %t902, ptr %t904, i64 %t906, i1 false)
  %t907 = load { i64, ptr }, ptr %l420, !tbaa !27
  %t908 = getelementptr { { i64, ptr }, { i64, ptr } }, ptr %l417, i32 0, i32 0
  store { i64, ptr } %t907, ptr %t908, !tbaa !27
  %t909 = getelementptr { { i64, ptr }, { i64, ptr } }, ptr %l417, i32 0, i32 1
  %t910 = load { i64, ptr }, ptr %t909, !tbaa !27
  store { i64, ptr } %t910, ptr %l421, !tbaa !27
  %t911 = load { i64, ptr }, ptr %l421, !tbaa !27
  %t912 = extractvalue { i64, ptr } %t911, 0
  store i64 %t912, ptr %l422, !tbaa !24
  %t913 = load i64, ptr %l422, !tbaa !24
  %t914 = mul i64 %t913, 1
  %t915 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t914)
  %t916 = insertvalue { i64, ptr } undef, i64 %t913, 0
  %t917 = insertvalue { i64, ptr } %t916, ptr %t915, 1
  store { i64, ptr } %t917, ptr %l423, !tbaa !27
  %t918 = getelementptr { i64, ptr }, ptr %l423, i32 0, i32 1
  %t919 = load ptr, ptr %t918, !tbaa !27
  %t920 = getelementptr { i64, ptr }, ptr %l421, i32 0, i32 1
  %t921 = load ptr, ptr %t920, !tbaa !27
  %t922 = load i64, ptr %l422, !tbaa !24
  %t923 = mul i64 %t922, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t919, ptr %t921, i64 %t923, i1 false)
  %t924 = load { i64, ptr }, ptr %l423, !tbaa !27
  %t925 = getelementptr { { i64, ptr }, { i64, ptr } }, ptr %l417, i32 0, i32 1
  store { i64, ptr } %t924, ptr %t925, !tbaa !27
  call void @__olang_scope_close(ptr %s24)
  call void @__olang_scope_close(ptr %s23)
  call void @__olang_scope_close(ptr %s0)
  %t926 = load { { i64, ptr }, { i64, ptr } }, ptr %l417
  store { { i64, ptr }, { i64, ptr } } %t926, ptr %rv
  br label %ret
bb131:
  %t927 = load ptr, ptr %l0, !tbaa !29
  %t928 = load i32, ptr %l33, !tbaa !23
  %t931 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eisEnumT(ptr %v0, ptr %t927, i32 %t928)
  store i1 %t931, ptr %l426
  br label %bb132
bb132:
  %t932 = load i1, ptr %l426, !tbaa !21
  br i1 %t932, label %bb133, label %bb134
bb133:
  store %olang.scope zeroinitializer, ptr %s28
  store %olang.scope zeroinitializer, ptr %s29
  store i64 0, ptr %l40, !tbaa !24
  %t933 = load ptr, ptr %l0, !tbaa !29
  %t935 = getelementptr %"compiler/generic:Program", ptr %t933, i32 0, i32 2
  %t936 = load i32, ptr %l33, !tbaa !23
  %t939 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eCaseNames(ptr %v0, ptr %s29, ptr %t935, i32 %t936)
  store { i64, ptr } %t939, ptr %l430
  br label %bb135
bb134:
  br label %bb150
bb135:
  %t940 = load { i64, ptr }, ptr %l430, !tbaa !27
  %t941 = extractvalue { i64, ptr } %t940, 0
  store i64 %t941, ptr %l41, !tbaa !24
  store i64 1, ptr %l42, !tbaa !24
  %t943 = load i64, ptr %l41, !tbaa !24
  %t944 = load i64, ptr %l40, !tbaa !24
  %t947 = icmp sgt i64 %t943, %t944
  br i1 %t947, label %bb136, label %bb137
bb136:
  %t949 = load i64, ptr %l42, !tbaa !24
  %t951 = icmp sgt i64 %t949, 0
  br i1 %t951, label %bb138, label %bb139
bb137:
  store i64 0, ptr %l435, !tbaa !24
  br label %bb141
bb138:
  %t953 = load i64, ptr %l41, !tbaa !24
  %t954 = load i64, ptr %l40, !tbaa !24
  %t957 = sub i64 %t953, %t954
  %t958 = load i64, ptr %l42, !tbaa !24
  %t961 = add i64 %t957, %t958
  %t963 = sub i64 %t961, 1
  %t964 = load i64, ptr %l42, !tbaa !24
  %t967 = sdiv i64 %t963, %t964
  store i64 %t967, ptr %l438, !tbaa !24
  br label %bb140
bb139:
  store i64 0, ptr %l438, !tbaa !24
  br label %bb140
bb140:
  %t969 = load i64, ptr %l438, !tbaa !24
  store i64 %t969, ptr %l435, !tbaa !24
  br label %bb141
bb141:
  %t970 = load i64, ptr %l435, !tbaa !24
  store i64 %t970, ptr %l43, !tbaa !24
  store i64 0, ptr %l44, !tbaa !24
  br label %bb142
bb142:
  %t971 = load i64, ptr %l44, !tbaa !24
  %t972 = load i64, ptr %l43, !tbaa !24
  %t975 = icmp slt i64 %t971, %t972
  %t977 = xor i1 %t975, true
  br i1 %t977, label %bb143, label %bb144
bb143:
  br label %bb148
bb144:
  br label %bb145
bb145:
  %t979 = load i64, ptr %l40, !tbaa !24
  %t980 = load i64, ptr %l44, !tbaa !24
  %t981 = load i64, ptr %l42, !tbaa !24
  %t984 = mul i64 %t980, %t981
  %t987 = add i64 %t979, %t984
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %s0, ptr %l6, i64 %t987)
  br label %bb146
bb146:
  br label %bb147
bb147:
  %t992 = load i64, ptr %l44, !tbaa !24
  %t994 = add i64 %t992, 1
  store i64 %t994, ptr %l44, !tbaa !24
  br label %bb142
bb148:
  call void @__olang_scope_close(ptr %s29)
  %t997 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eToArray_3cI64_3e(ptr %s0, ptr %s28, ptr %l6)
  store { i64, ptr } %t997, ptr %l461
  br label %bb149
bb149:
  %t998 = load { i64, ptr }, ptr %l461, !tbaa !27
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d37, i32 0, i32 1) }, ptr %l463, !tbaa !27
  %t999 = load { i64, ptr }, ptr %l463, !tbaa !27
  %t1001 = insertvalue { { i64, ptr }, { i64, ptr } } undef, { i64, ptr } %t998, 0
  %t1003 = insertvalue { { i64, ptr }, { i64, ptr } } %t1001, { i64, ptr } %t999, 1
  store { { i64, ptr }, { i64, ptr } } %t1003, ptr %l465
  %t1004 = getelementptr { { i64, ptr }, { i64, ptr } }, ptr %l465, i32 0, i32 0
  %t1005 = load { i64, ptr }, ptr %t1004, !tbaa !27
  store { i64, ptr } %t1005, ptr %l466, !tbaa !27
  %t1006 = load { i64, ptr }, ptr %l466, !tbaa !27
  %t1007 = extractvalue { i64, ptr } %t1006, 0
  store i64 %t1007, ptr %l467, !tbaa !24
  %t1008 = load i64, ptr %l467, !tbaa !24
  %t1009 = mul i64 %t1008, 8
  %t1010 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t1009)
  %t1011 = insertvalue { i64, ptr } undef, i64 %t1008, 0
  %t1012 = insertvalue { i64, ptr } %t1011, ptr %t1010, 1
  store { i64, ptr } %t1012, ptr %l468, !tbaa !27
  %t1013 = getelementptr { i64, ptr }, ptr %l468, i32 0, i32 1
  %t1014 = load ptr, ptr %t1013, !tbaa !27
  %t1015 = getelementptr { i64, ptr }, ptr %l466, i32 0, i32 1
  %t1016 = load ptr, ptr %t1015, !tbaa !27
  %t1017 = load i64, ptr %l467, !tbaa !24
  %t1018 = mul i64 %t1017, 8
  call void @llvm.memmove.p0.p0.i64(ptr %t1014, ptr %t1016, i64 %t1018, i1 false)
  %t1019 = load { i64, ptr }, ptr %l468, !tbaa !27
  %t1020 = getelementptr { { i64, ptr }, { i64, ptr } }, ptr %l465, i32 0, i32 0
  store { i64, ptr } %t1019, ptr %t1020, !tbaa !27
  %t1021 = getelementptr { { i64, ptr }, { i64, ptr } }, ptr %l465, i32 0, i32 1
  %t1022 = load { i64, ptr }, ptr %t1021, !tbaa !27
  store { i64, ptr } %t1022, ptr %l469, !tbaa !27
  %t1023 = load { i64, ptr }, ptr %l469, !tbaa !27
  %t1024 = extractvalue { i64, ptr } %t1023, 0
  store i64 %t1024, ptr %l470, !tbaa !24
  %t1025 = load i64, ptr %l470, !tbaa !24
  %t1026 = mul i64 %t1025, 1
  %t1027 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t1026)
  %t1028 = insertvalue { i64, ptr } undef, i64 %t1025, 0
  %t1029 = insertvalue { i64, ptr } %t1028, ptr %t1027, 1
  store { i64, ptr } %t1029, ptr %l471, !tbaa !27
  %t1030 = getelementptr { i64, ptr }, ptr %l471, i32 0, i32 1
  %t1031 = load ptr, ptr %t1030, !tbaa !27
  %t1032 = getelementptr { i64, ptr }, ptr %l469, i32 0, i32 1
  %t1033 = load ptr, ptr %t1032, !tbaa !27
  %t1034 = load i64, ptr %l470, !tbaa !24
  %t1035 = mul i64 %t1034, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t1031, ptr %t1033, i64 %t1035, i1 false)
  %t1036 = load { i64, ptr }, ptr %l471, !tbaa !27
  %t1037 = getelementptr { { i64, ptr }, { i64, ptr } }, ptr %l465, i32 0, i32 1
  store { i64, ptr } %t1036, ptr %t1037, !tbaa !27
  call void @__olang_scope_close(ptr %s28)
  call void @__olang_scope_close(ptr %s23)
  call void @__olang_scope_close(ptr %s0)
  %t1038 = load { { i64, ptr }, { i64, ptr } }, ptr %l465
  store { { i64, ptr }, { i64, ptr } } %t1038, ptr %rv
  br label %ret
bb150:
  %t1039 = load ptr, ptr %l0, !tbaa !29
  %t1040 = load i32, ptr %l33, !tbaa !23
  %t1043 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eisStructT(ptr %v0, ptr %t1039, i32 %t1040)
  store i1 %t1043, ptr %l474
  br label %bb151
bb151:
  %t1044 = load i1, ptr %l474, !tbaa !21
  br i1 %t1044, label %bb152, label %bb153
bb152:
  %t1045 = mul i64 1, 8
  %t1046 = call ptr @__olang_scope_alloc_zeroed(ptr %v1, i64 %t1045)
  %t1047 = insertvalue { i64, ptr } undef, i64 1, 0
  %t1048 = insertvalue { i64, ptr } %t1047, ptr %t1046, 1
  store { i64, ptr } %t1048, ptr %l475, !tbaa !27
  %t1049 = getelementptr { i64, ptr }, ptr %l475, i32 0, i32 1
  %t1050 = load ptr, ptr %t1049, !tbaa !27
  %t1051 = getelementptr i64, ptr %t1050, i64 0
  store i64 0, ptr %t1051, !tbaa !34
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d38, i32 0, i32 1) }, ptr %l476, !tbaa !27
  %t1052 = load { i64, ptr }, ptr %l476, !tbaa !27
  %t1053 = load { i64, ptr }, ptr %l475, !tbaa !27
  %t1054 = insertvalue { { i64, ptr }, { i64, ptr } } undef, { i64, ptr } %t1053, 0
  %t1056 = insertvalue { { i64, ptr }, { i64, ptr } } %t1054, { i64, ptr } %t1052, 1
  store { { i64, ptr }, { i64, ptr } } %t1056, ptr %l478
  %t1057 = getelementptr { { i64, ptr }, { i64, ptr } }, ptr %l478, i32 0, i32 0
  %t1058 = load { i64, ptr }, ptr %t1057, !tbaa !27
  store { i64, ptr } %t1058, ptr %l479, !tbaa !27
  %t1059 = load { i64, ptr }, ptr %l479, !tbaa !27
  %t1060 = extractvalue { i64, ptr } %t1059, 0
  store i64 %t1060, ptr %l480, !tbaa !24
  %t1061 = load i64, ptr %l480, !tbaa !24
  %t1062 = mul i64 %t1061, 8
  %t1063 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t1062)
  %t1064 = insertvalue { i64, ptr } undef, i64 %t1061, 0
  %t1065 = insertvalue { i64, ptr } %t1064, ptr %t1063, 1
  store { i64, ptr } %t1065, ptr %l481, !tbaa !27
  %t1066 = getelementptr { i64, ptr }, ptr %l481, i32 0, i32 1
  %t1067 = load ptr, ptr %t1066, !tbaa !27
  %t1068 = getelementptr { i64, ptr }, ptr %l479, i32 0, i32 1
  %t1069 = load ptr, ptr %t1068, !tbaa !27
  %t1070 = load i64, ptr %l480, !tbaa !24
  %t1071 = mul i64 %t1070, 8
  call void @llvm.memmove.p0.p0.i64(ptr %t1067, ptr %t1069, i64 %t1071, i1 false)
  %t1072 = load { i64, ptr }, ptr %l481, !tbaa !27
  %t1073 = getelementptr { { i64, ptr }, { i64, ptr } }, ptr %l478, i32 0, i32 0
  store { i64, ptr } %t1072, ptr %t1073, !tbaa !27
  %t1074 = getelementptr { { i64, ptr }, { i64, ptr } }, ptr %l478, i32 0, i32 1
  %t1075 = load { i64, ptr }, ptr %t1074, !tbaa !27
  store { i64, ptr } %t1075, ptr %l482, !tbaa !27
  %t1076 = load { i64, ptr }, ptr %l482, !tbaa !27
  %t1077 = extractvalue { i64, ptr } %t1076, 0
  store i64 %t1077, ptr %l483, !tbaa !24
  %t1078 = load i64, ptr %l483, !tbaa !24
  %t1079 = mul i64 %t1078, 1
  %t1080 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t1079)
  %t1081 = insertvalue { i64, ptr } undef, i64 %t1078, 0
  %t1082 = insertvalue { i64, ptr } %t1081, ptr %t1080, 1
  store { i64, ptr } %t1082, ptr %l484, !tbaa !27
  %t1083 = getelementptr { i64, ptr }, ptr %l484, i32 0, i32 1
  %t1084 = load ptr, ptr %t1083, !tbaa !27
  %t1085 = getelementptr { i64, ptr }, ptr %l482, i32 0, i32 1
  %t1086 = load ptr, ptr %t1085, !tbaa !27
  %t1087 = load i64, ptr %l483, !tbaa !24
  %t1088 = mul i64 %t1087, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t1084, ptr %t1086, i64 %t1088, i1 false)
  %t1089 = load { i64, ptr }, ptr %l484, !tbaa !27
  %t1090 = getelementptr { { i64, ptr }, { i64, ptr } }, ptr %l478, i32 0, i32 1
  store { i64, ptr } %t1089, ptr %t1090, !tbaa !27
  call void @__olang_scope_close(ptr %s23)
  call void @__olang_scope_close(ptr %s0)
  %t1091 = load { { i64, ptr }, { i64, ptr } }, ptr %l478
  store { { i64, ptr }, { i64, ptr } } %t1091, ptr %rv
  br label %ret
bb153:
  br label %bb154
bb154:
  %t1092 = load [0 x i64], ptr %l5
  store [0 x i64] %t1092, ptr %l485
  %t1093 = mul i64 0, 8
  %t1094 = insertvalue { i64, ptr } undef, i64 0, 0
  %t1095 = insertvalue { i64, ptr } %t1094, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  store { i64, ptr } %t1095, ptr %l486, !tbaa !27
  %t1096 = getelementptr { i64, ptr }, ptr %l486, i32 0, i32 1
  %t1097 = load ptr, ptr %t1096, !tbaa !27
  %t1098 = mul i64 0, 8
  call void @llvm.memmove.p0.p0.i64(ptr %t1097, ptr %l485, i64 %t1098, i1 false)
  store { i64, ptr } { i64 36, ptr getelementptr inbounds (<{ i64, [36 x i8] }>, ptr @.d39, i32 0, i32 1) }, ptr %l487, !tbaa !27
  %t1099 = load { i64, ptr }, ptr %l487, !tbaa !27
  %t1100 = load { i64, ptr }, ptr %l486, !tbaa !27
  %t1101 = insertvalue { { i64, ptr }, { i64, ptr } } undef, { i64, ptr } %t1100, 0
  %t1103 = insertvalue { { i64, ptr }, { i64, ptr } } %t1101, { i64, ptr } %t1099, 1
  store { { i64, ptr }, { i64, ptr } } %t1103, ptr %l489
  %t1104 = getelementptr { { i64, ptr }, { i64, ptr } }, ptr %l489, i32 0, i32 0
  %t1105 = load { i64, ptr }, ptr %t1104, !tbaa !27
  store { i64, ptr } %t1105, ptr %l490, !tbaa !27
  %t1106 = load { i64, ptr }, ptr %l490, !tbaa !27
  %t1107 = extractvalue { i64, ptr } %t1106, 0
  store i64 %t1107, ptr %l491, !tbaa !24
  %t1108 = load i64, ptr %l491, !tbaa !24
  %t1109 = mul i64 %t1108, 8
  %t1110 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t1109)
  %t1111 = insertvalue { i64, ptr } undef, i64 %t1108, 0
  %t1112 = insertvalue { i64, ptr } %t1111, ptr %t1110, 1
  store { i64, ptr } %t1112, ptr %l492, !tbaa !27
  %t1113 = getelementptr { i64, ptr }, ptr %l492, i32 0, i32 1
  %t1114 = load ptr, ptr %t1113, !tbaa !27
  %t1115 = getelementptr { i64, ptr }, ptr %l490, i32 0, i32 1
  %t1116 = load ptr, ptr %t1115, !tbaa !27
  %t1117 = load i64, ptr %l491, !tbaa !24
  %t1118 = mul i64 %t1117, 8
  call void @llvm.memmove.p0.p0.i64(ptr %t1114, ptr %t1116, i64 %t1118, i1 false)
  %t1119 = load { i64, ptr }, ptr %l492, !tbaa !27
  %t1120 = getelementptr { { i64, ptr }, { i64, ptr } }, ptr %l489, i32 0, i32 0
  store { i64, ptr } %t1119, ptr %t1120, !tbaa !27
  %t1121 = getelementptr { { i64, ptr }, { i64, ptr } }, ptr %l489, i32 0, i32 1
  %t1122 = load { i64, ptr }, ptr %t1121, !tbaa !27
  store { i64, ptr } %t1122, ptr %l493, !tbaa !27
  %t1123 = load { i64, ptr }, ptr %l493, !tbaa !27
  %t1124 = extractvalue { i64, ptr } %t1123, 0
  store i64 %t1124, ptr %l494, !tbaa !24
  %t1125 = load i64, ptr %l494, !tbaa !24
  %t1126 = mul i64 %t1125, 1
  %t1127 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t1126)
  %t1128 = insertvalue { i64, ptr } undef, i64 %t1125, 0
  %t1129 = insertvalue { i64, ptr } %t1128, ptr %t1127, 1
  store { i64, ptr } %t1129, ptr %l495, !tbaa !27
  %t1130 = getelementptr { i64, ptr }, ptr %l495, i32 0, i32 1
  %t1131 = load ptr, ptr %t1130, !tbaa !27
  %t1132 = getelementptr { i64, ptr }, ptr %l493, i32 0, i32 1
  %t1133 = load ptr, ptr %t1132, !tbaa !27
  %t1134 = load i64, ptr %l494, !tbaa !24
  %t1135 = mul i64 %t1134, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t1131, ptr %t1133, i64 %t1135, i1 false)
  %t1136 = load { i64, ptr }, ptr %l495, !tbaa !27
  %t1137 = getelementptr { { i64, ptr }, { i64, ptr } }, ptr %l489, i32 0, i32 1
  store { i64, ptr } %t1136, ptr %t1137, !tbaa !27
  call void @__olang_scope_close(ptr %s23)
  call void @__olang_scope_close(ptr %s0)
  %t1138 = load { { i64, ptr }, { i64, ptr } }, ptr %l489
  store { { i64, ptr }, { i64, ptr } } %t1138, ptr %rv
  br label %ret
bb155:
  store [0 x i32] zeroinitializer, ptr %l496
  %t1139 = mul i64 0, 4
  %t1140 = insertvalue { i64, ptr } undef, i64 0, 0
  %t1141 = insertvalue { i64, ptr } %t1140, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  store { i64, ptr } %t1141, ptr %l497, !tbaa !27
  %t1142 = getelementptr { i64, ptr }, ptr %l497, i32 0, i32 1
  %t1143 = load ptr, ptr %t1142, !tbaa !27
  %t1144 = mul i64 0, 4
  call void @llvm.memmove.p0.p0.i64(ptr %t1143, ptr %l496, i64 %t1144, i1 false)
  %t1145 = load { i64, ptr }, ptr %l497, !tbaa !27
  store { i64, ptr } %t1145, ptr %l46, !tbaa !27
  %t1146 = load ptr, ptr %l0, !tbaa !29
  %t1148 = getelementptr %"compiler/generic:Program", ptr %t1146, i32 0, i32 2
  %t1149 = load i32, ptr %l33, !tbaa !23
  %t1152 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t1148, i32 %t1149)
  store i32 %t1152, ptr %l501
  br label %bb156
bb156:
  %t1153 = load i32, ptr %l501, !range !{i32 0, i32 33}
  %t1155 = trunc i64 32 to i32
  %t1156 = icmp eq i32 %t1153, %t1155
  br i1 %t1156, label %bb157, label %bb158
bb157:
  %t1158 = load i64, ptr %l3, !tbaa !24
  %t1160 = icmp sge i64 %t1158, 0
  store i1 %t1160, ptr %l504, !tbaa !21
  br label %bb159
bb158:
  store i1 false, ptr %l504, !tbaa !21
  br label %bb159
bb159:
  %t1162 = load i1, ptr %l504, !tbaa !21
  br i1 %t1162, label %bb160, label %bb161
bb160:
  store %olang.scope zeroinitializer, ptr %s33
  %t1163 = load [0 x i64], ptr %l5
  store [0 x i64] %t1163, ptr %l507
  %t1164 = mul i64 0, 8
  %t1165 = insertvalue { i64, ptr } undef, i64 0, 0
  %t1166 = insertvalue { i64, ptr } %t1165, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  store { i64, ptr } %t1166, ptr %l508, !tbaa !27
  %t1167 = getelementptr { i64, ptr }, ptr %l508, i32 0, i32 1
  %t1168 = load ptr, ptr %t1167, !tbaa !27
  %t1169 = mul i64 0, 8
  call void @llvm.memmove.p0.p0.i64(ptr %t1168, ptr %l507, i64 %t1169, i1 false)
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d40, i32 0, i32 1) }, ptr %l509, !tbaa !27
  %t1170 = load { i64, ptr }, ptr %l509, !tbaa !27
  %t1171 = load { i64, ptr }, ptr %l508, !tbaa !27
  %t1172 = insertvalue { { i64, ptr }, { i64, ptr } } undef, { i64, ptr } %t1171, 0
  %t1174 = insertvalue { { i64, ptr }, { i64, ptr } } %t1172, { i64, ptr } %t1170, 1
  store { { i64, ptr }, { i64, ptr } } %t1174, ptr %l511
  %t1175 = getelementptr { { i64, ptr }, { i64, ptr } }, ptr %l511, i32 0, i32 0
  %t1176 = load { i64, ptr }, ptr %t1175, !tbaa !27
  store { i64, ptr } %t1176, ptr %l512, !tbaa !27
  %t1177 = load { i64, ptr }, ptr %l512, !tbaa !27
  %t1178 = extractvalue { i64, ptr } %t1177, 0
  store i64 %t1178, ptr %l513, !tbaa !24
  %t1179 = load i64, ptr %l513, !tbaa !24
  %t1180 = mul i64 %t1179, 8
  %t1181 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t1180)
  %t1182 = insertvalue { i64, ptr } undef, i64 %t1179, 0
  %t1183 = insertvalue { i64, ptr } %t1182, ptr %t1181, 1
  store { i64, ptr } %t1183, ptr %l514, !tbaa !27
  %t1184 = getelementptr { i64, ptr }, ptr %l514, i32 0, i32 1
  %t1185 = load ptr, ptr %t1184, !tbaa !27
  %t1186 = getelementptr { i64, ptr }, ptr %l512, i32 0, i32 1
  %t1187 = load ptr, ptr %t1186, !tbaa !27
  %t1188 = load i64, ptr %l513, !tbaa !24
  %t1189 = mul i64 %t1188, 8
  call void @llvm.memmove.p0.p0.i64(ptr %t1185, ptr %t1187, i64 %t1189, i1 false)
  %t1190 = load { i64, ptr }, ptr %l514, !tbaa !27
  %t1191 = getelementptr { { i64, ptr }, { i64, ptr } }, ptr %l511, i32 0, i32 0
  store { i64, ptr } %t1190, ptr %t1191, !tbaa !27
  %t1192 = getelementptr { { i64, ptr }, { i64, ptr } }, ptr %l511, i32 0, i32 1
  %t1193 = load { i64, ptr }, ptr %t1192, !tbaa !27
  store { i64, ptr } %t1193, ptr %l515, !tbaa !27
  %t1194 = load { i64, ptr }, ptr %l515, !tbaa !27
  %t1195 = extractvalue { i64, ptr } %t1194, 0
  store i64 %t1195, ptr %l516, !tbaa !24
  %t1196 = load i64, ptr %l516, !tbaa !24
  %t1197 = mul i64 %t1196, 1
  %t1198 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t1197)
  %t1199 = insertvalue { i64, ptr } undef, i64 %t1196, 0
  %t1200 = insertvalue { i64, ptr } %t1199, ptr %t1198, 1
  store { i64, ptr } %t1200, ptr %l517, !tbaa !27
  %t1201 = getelementptr { i64, ptr }, ptr %l517, i32 0, i32 1
  %t1202 = load ptr, ptr %t1201, !tbaa !27
  %t1203 = getelementptr { i64, ptr }, ptr %l515, i32 0, i32 1
  %t1204 = load ptr, ptr %t1203, !tbaa !27
  %t1205 = load i64, ptr %l516, !tbaa !24
  %t1206 = mul i64 %t1205, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t1202, ptr %t1204, i64 %t1206, i1 false)
  %t1207 = load { i64, ptr }, ptr %l517, !tbaa !27
  %t1208 = getelementptr { { i64, ptr }, { i64, ptr } }, ptr %l511, i32 0, i32 1
  store { i64, ptr } %t1207, ptr %t1208, !tbaa !27
  call void @__olang_scope_close(ptr %s33)
  call void @__olang_scope_close(ptr %s0)
  %t1209 = load { { i64, ptr }, { i64, ptr } }, ptr %l511
  store { { i64, ptr }, { i64, ptr } } %t1209, ptr %rv
  br label %ret
bb161:
  %t1210 = load ptr, ptr %l0, !tbaa !29
  %t1211 = load i32, ptr %l33, !tbaa !23
  %t1214 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eisStructT(ptr %v0, ptr %t1210, i32 %t1211)
  store i1 %t1214, ptr %l520
  br label %bb162
bb162:
  %t1215 = load i1, ptr %l520, !tbaa !21
  br i1 %t1215, label %bb163, label %bb164
bb163:
  %t1216 = load ptr, ptr %l0, !tbaa !29
  %t1217 = load i32, ptr %l33, !tbaa !23
  %t1220 = call { i64, ptr } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFieldNames(ptr %v0, ptr %s0, ptr %t1216, i32 %t1217)
  store { i64, ptr } %t1220, ptr %l523
  br label %bb165
bb164:
  %t1221 = load ptr, ptr %l0, !tbaa !29
  %t1222 = load i32, ptr %l33, !tbaa !23
  %t1225 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eisEnumT(ptr %v0, ptr %t1221, i32 %t1222)
  store i1 %t1225, ptr %l529
  br label %bb169
bb165:
  %t1226 = load { i64, ptr }, ptr %l46, !tbaa !27
  %t1227 = extractvalue { i64, ptr } %t1226, 0
  %t1228 = load { i64, ptr }, ptr %l523, !tbaa !27
  %t1229 = extractvalue { i64, ptr } %t1228, 0
  store i64 %t1229, ptr %l525, !tbaa !24
  %t1231 = load i64, ptr %l525, !tbaa !24
  %t1232 = icmp eq i64 %t1227, %t1231
  br i1 %t1232, label %bb166, label %bb167
bb166:
  %t1234 = getelementptr { i64, ptr }, ptr %l46, i32 0, i32 1
  %t1235 = load ptr, ptr %t1234, !tbaa !27
  %t1236 = getelementptr { i64, ptr }, ptr %l523, i32 0, i32 1
  %t1237 = load ptr, ptr %t1236, !tbaa !27
  %t1238 = load i64, ptr %l525, !tbaa !24
  %t1239 = mul i64 %t1238, 4
  call void @llvm.memmove.p0.p0.i64(ptr %t1235, ptr %t1237, i64 %t1239, i1 false)
  br label %bb168
bb167:
  %t1240 = load { i64, ptr }, ptr %l523, !tbaa !27
  store { i64, ptr } %t1240, ptr %l46, !tbaa !27
  br label %bb168
bb168:
  br label %bb183
bb169:
  %t1241 = load i1, ptr %l529, !tbaa !21
  br i1 %t1241, label %bb170, label %bb171
bb170:
  %t1242 = load i64, ptr %l3, !tbaa !24
  %t1244 = icmp sge i64 %t1242, 0
  store i1 %t1244, ptr %l530, !tbaa !21
  br label %bb172
bb171:
  store i1 false, ptr %l530, !tbaa !21
  br label %bb172
bb172:
  %t1246 = load i1, ptr %l530, !tbaa !21
  br i1 %t1246, label %bb173, label %bb174
bb173:
  %t1247 = load ptr, ptr %l0, !tbaa !29
  %t1248 = load i32, ptr %l33, !tbaa !23
  %t1249 = load i64, ptr %l3, !tbaa !24
  %t1253 = call { i64, ptr } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eCaseFieldNames(ptr %v0, ptr %s0, ptr %t1247, i32 %t1248, i64 %t1249)
  store { i64, ptr } %t1253, ptr %l536
  br label %bb175
bb174:
  %t1254 = load ptr, ptr %l0, !tbaa !29
  %t1255 = load i32, ptr %l33, !tbaa !23
  %t1258 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eisEnumT(ptr %v0, ptr %t1254, i32 %t1255)
  store i1 %t1258, ptr %l542
  br label %bb179
bb175:
  %t1259 = load { i64, ptr }, ptr %l46, !tbaa !27
  %t1260 = extractvalue { i64, ptr } %t1259, 0
  %t1261 = load { i64, ptr }, ptr %l536, !tbaa !27
  %t1262 = extractvalue { i64, ptr } %t1261, 0
  store i64 %t1262, ptr %l538, !tbaa !24
  %t1264 = load i64, ptr %l538, !tbaa !24
  %t1265 = icmp eq i64 %t1260, %t1264
  br i1 %t1265, label %bb176, label %bb177
bb176:
  %t1267 = getelementptr { i64, ptr }, ptr %l46, i32 0, i32 1
  %t1268 = load ptr, ptr %t1267, !tbaa !27
  %t1269 = getelementptr { i64, ptr }, ptr %l536, i32 0, i32 1
  %t1270 = load ptr, ptr %t1269, !tbaa !27
  %t1271 = load i64, ptr %l538, !tbaa !24
  %t1272 = mul i64 %t1271, 4
  call void @llvm.memmove.p0.p0.i64(ptr %t1268, ptr %t1270, i64 %t1272, i1 false)
  br label %bb178
bb177:
  %t1273 = load { i64, ptr }, ptr %l536, !tbaa !27
  store { i64, ptr } %t1273, ptr %l46, !tbaa !27
  br label %bb178
bb178:
  br label %bb182
bb179:
  %t1274 = load i1, ptr %l542, !tbaa !21
  br i1 %t1274, label %bb180, label %bb181
bb180:
  store %olang.scope zeroinitializer, ptr %s39
  %t1275 = load [0 x i64], ptr %l5
  store [0 x i64] %t1275, ptr %l543
  %t1276 = mul i64 0, 8
  %t1277 = insertvalue { i64, ptr } undef, i64 0, 0
  %t1278 = insertvalue { i64, ptr } %t1277, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  store { i64, ptr } %t1278, ptr %l544, !tbaa !27
  %t1279 = getelementptr { i64, ptr }, ptr %l544, i32 0, i32 1
  %t1280 = load ptr, ptr %t1279, !tbaa !27
  %t1281 = mul i64 0, 8
  call void @llvm.memmove.p0.p0.i64(ptr %t1280, ptr %l543, i64 %t1281, i1 false)
  store { i64, ptr } { i64 71, ptr getelementptr inbounds (<{ i64, [71 x i8] }>, ptr @.d41, i32 0, i32 1) }, ptr %l545, !tbaa !27
  %t1282 = load { i64, ptr }, ptr %l545, !tbaa !27
  %t1283 = load { i64, ptr }, ptr %l544, !tbaa !27
  %t1284 = insertvalue { { i64, ptr }, { i64, ptr } } undef, { i64, ptr } %t1283, 0
  %t1286 = insertvalue { { i64, ptr }, { i64, ptr } } %t1284, { i64, ptr } %t1282, 1
  store { { i64, ptr }, { i64, ptr } } %t1286, ptr %l547
  %t1287 = getelementptr { { i64, ptr }, { i64, ptr } }, ptr %l547, i32 0, i32 0
  %t1288 = load { i64, ptr }, ptr %t1287, !tbaa !27
  store { i64, ptr } %t1288, ptr %l548, !tbaa !27
  %t1289 = load { i64, ptr }, ptr %l548, !tbaa !27
  %t1290 = extractvalue { i64, ptr } %t1289, 0
  store i64 %t1290, ptr %l549, !tbaa !24
  %t1291 = load i64, ptr %l549, !tbaa !24
  %t1292 = mul i64 %t1291, 8
  %t1293 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t1292)
  %t1294 = insertvalue { i64, ptr } undef, i64 %t1291, 0
  %t1295 = insertvalue { i64, ptr } %t1294, ptr %t1293, 1
  store { i64, ptr } %t1295, ptr %l550, !tbaa !27
  %t1296 = getelementptr { i64, ptr }, ptr %l550, i32 0, i32 1
  %t1297 = load ptr, ptr %t1296, !tbaa !27
  %t1298 = getelementptr { i64, ptr }, ptr %l548, i32 0, i32 1
  %t1299 = load ptr, ptr %t1298, !tbaa !27
  %t1300 = load i64, ptr %l549, !tbaa !24
  %t1301 = mul i64 %t1300, 8
  call void @llvm.memmove.p0.p0.i64(ptr %t1297, ptr %t1299, i64 %t1301, i1 false)
  %t1302 = load { i64, ptr }, ptr %l550, !tbaa !27
  %t1303 = getelementptr { { i64, ptr }, { i64, ptr } }, ptr %l547, i32 0, i32 0
  store { i64, ptr } %t1302, ptr %t1303, !tbaa !27
  %t1304 = getelementptr { { i64, ptr }, { i64, ptr } }, ptr %l547, i32 0, i32 1
  %t1305 = load { i64, ptr }, ptr %t1304, !tbaa !27
  store { i64, ptr } %t1305, ptr %l551, !tbaa !27
  %t1306 = load { i64, ptr }, ptr %l551, !tbaa !27
  %t1307 = extractvalue { i64, ptr } %t1306, 0
  store i64 %t1307, ptr %l552, !tbaa !24
  %t1308 = load i64, ptr %l552, !tbaa !24
  %t1309 = mul i64 %t1308, 1
  %t1310 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t1309)
  %t1311 = insertvalue { i64, ptr } undef, i64 %t1308, 0
  %t1312 = insertvalue { i64, ptr } %t1311, ptr %t1310, 1
  store { i64, ptr } %t1312, ptr %l553, !tbaa !27
  %t1313 = getelementptr { i64, ptr }, ptr %l553, i32 0, i32 1
  %t1314 = load ptr, ptr %t1313, !tbaa !27
  %t1315 = getelementptr { i64, ptr }, ptr %l551, i32 0, i32 1
  %t1316 = load ptr, ptr %t1315, !tbaa !27
  %t1317 = load i64, ptr %l552, !tbaa !24
  %t1318 = mul i64 %t1317, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t1314, ptr %t1316, i64 %t1318, i1 false)
  %t1319 = load { i64, ptr }, ptr %l553, !tbaa !27
  %t1320 = getelementptr { { i64, ptr }, { i64, ptr } }, ptr %l547, i32 0, i32 1
  store { i64, ptr } %t1319, ptr %t1320, !tbaa !27
  call void @__olang_scope_close(ptr %s39)
  call void @__olang_scope_close(ptr %s0)
  %t1321 = load { { i64, ptr }, { i64, ptr } }, ptr %l547
  store { { i64, ptr }, { i64, ptr } } %t1321, ptr %rv
  br label %ret
bb181:
  store %olang.scope zeroinitializer, ptr %s40
  %t1322 = load [0 x i64], ptr %l5
  store [0 x i64] %t1322, ptr %l554
  %t1323 = mul i64 0, 8
  %t1324 = insertvalue { i64, ptr } undef, i64 0, 0
  %t1325 = insertvalue { i64, ptr } %t1324, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  store { i64, ptr } %t1325, ptr %l555, !tbaa !27
  %t1326 = getelementptr { i64, ptr }, ptr %l555, i32 0, i32 1
  %t1327 = load ptr, ptr %t1326, !tbaa !27
  %t1328 = mul i64 0, 8
  call void @llvm.memmove.p0.p0.i64(ptr %t1327, ptr %l554, i64 %t1328, i1 false)
  store { i64, ptr } { i64 44, ptr getelementptr inbounds (<{ i64, [44 x i8] }>, ptr @.d42, i32 0, i32 1) }, ptr %l556, !tbaa !27
  %t1329 = load { i64, ptr }, ptr %l556, !tbaa !27
  %t1330 = load { i64, ptr }, ptr %l555, !tbaa !27
  %t1331 = insertvalue { { i64, ptr }, { i64, ptr } } undef, { i64, ptr } %t1330, 0
  %t1333 = insertvalue { { i64, ptr }, { i64, ptr } } %t1331, { i64, ptr } %t1329, 1
  store { { i64, ptr }, { i64, ptr } } %t1333, ptr %l558
  %t1334 = getelementptr { { i64, ptr }, { i64, ptr } }, ptr %l558, i32 0, i32 0
  %t1335 = load { i64, ptr }, ptr %t1334, !tbaa !27
  store { i64, ptr } %t1335, ptr %l559, !tbaa !27
  %t1336 = load { i64, ptr }, ptr %l559, !tbaa !27
  %t1337 = extractvalue { i64, ptr } %t1336, 0
  store i64 %t1337, ptr %l560, !tbaa !24
  %t1338 = load i64, ptr %l560, !tbaa !24
  %t1339 = mul i64 %t1338, 8
  %t1340 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t1339)
  %t1341 = insertvalue { i64, ptr } undef, i64 %t1338, 0
  %t1342 = insertvalue { i64, ptr } %t1341, ptr %t1340, 1
  store { i64, ptr } %t1342, ptr %l561, !tbaa !27
  %t1343 = getelementptr { i64, ptr }, ptr %l561, i32 0, i32 1
  %t1344 = load ptr, ptr %t1343, !tbaa !27
  %t1345 = getelementptr { i64, ptr }, ptr %l559, i32 0, i32 1
  %t1346 = load ptr, ptr %t1345, !tbaa !27
  %t1347 = load i64, ptr %l560, !tbaa !24
  %t1348 = mul i64 %t1347, 8
  call void @llvm.memmove.p0.p0.i64(ptr %t1344, ptr %t1346, i64 %t1348, i1 false)
  %t1349 = load { i64, ptr }, ptr %l561, !tbaa !27
  %t1350 = getelementptr { { i64, ptr }, { i64, ptr } }, ptr %l558, i32 0, i32 0
  store { i64, ptr } %t1349, ptr %t1350, !tbaa !27
  %t1351 = getelementptr { { i64, ptr }, { i64, ptr } }, ptr %l558, i32 0, i32 1
  %t1352 = load { i64, ptr }, ptr %t1351, !tbaa !27
  store { i64, ptr } %t1352, ptr %l562, !tbaa !27
  %t1353 = load { i64, ptr }, ptr %l562, !tbaa !27
  %t1354 = extractvalue { i64, ptr } %t1353, 0
  store i64 %t1354, ptr %l563, !tbaa !24
  %t1355 = load i64, ptr %l563, !tbaa !24
  %t1356 = mul i64 %t1355, 1
  %t1357 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t1356)
  %t1358 = insertvalue { i64, ptr } undef, i64 %t1355, 0
  %t1359 = insertvalue { i64, ptr } %t1358, ptr %t1357, 1
  store { i64, ptr } %t1359, ptr %l564, !tbaa !27
  %t1360 = getelementptr { i64, ptr }, ptr %l564, i32 0, i32 1
  %t1361 = load ptr, ptr %t1360, !tbaa !27
  %t1362 = getelementptr { i64, ptr }, ptr %l562, i32 0, i32 1
  %t1363 = load ptr, ptr %t1362, !tbaa !27
  %t1364 = load i64, ptr %l563, !tbaa !24
  %t1365 = mul i64 %t1364, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t1361, ptr %t1363, i64 %t1365, i1 false)
  %t1366 = load { i64, ptr }, ptr %l564, !tbaa !27
  %t1367 = getelementptr { { i64, ptr }, { i64, ptr } }, ptr %l558, i32 0, i32 1
  store { i64, ptr } %t1366, ptr %t1367, !tbaa !27
  call void @__olang_scope_close(ptr %s40)
  call void @__olang_scope_close(ptr %s0)
  %t1368 = load { { i64, ptr }, { i64, ptr } }, ptr %l558
  store { { i64, ptr }, { i64, ptr } } %t1368, ptr %rv
  br label %ret
bb182:
  br label %bb183
bb183:
  br label %bb184
bb184:
  %t1369 = load ptr, ptr %l0, !tbaa !29
  %t1371 = getelementptr %"compiler/generic:Program", ptr %t1369, i32 0, i32 2
  store ptr %t1371, ptr %l566, !tbaa !29
  %t1372 = load ptr, ptr %l0, !tbaa !29
  %t1374 = getelementptr %"compiler/generic:Program", ptr %t1372, i32 0, i32 2
  %t1375 = load i32, ptr %l33, !tbaa !23
  %t1378 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %t1374, i32 %t1375)
  store i32 %t1378, ptr %l570
  br label %bb185
bb185:
  %t1379 = load ptr, ptr %l566, !tbaa !29
  %t1380 = load i32, ptr %l570, !tbaa !23
  %t1381 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclModule(ptr %v0, ptr %t1379, i32 %t1380)
  store i64 %t1381, ptr %l571
  br label %bb186
bb186:
  %t1382 = load i64, ptr %l4, !tbaa !24
  %t1383 = load i64, ptr %l571, !tbaa !24
  %t1385 = icmp eq i64 %t1383, %t1382
  br i1 %t1385, label %bb187, label %bb188
bb187:
  store i1 true, ptr %l574, !tbaa !21
  br label %bb190
bb188:
  %t1387 = load ptr, ptr %l0, !tbaa !29
  %t1388 = load i32, ptr %l33, !tbaa !23
  %t1391 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eisStructT(ptr %v0, ptr %t1387, i32 %t1388)
  store i1 %t1391, ptr %l577
  br label %bb189
bb189:
  %t1392 = load i1, ptr %l577, !tbaa !21
  %t1393 = xor i1 %t1392, true
  store i1 %t1393, ptr %l574, !tbaa !21
  br label %bb190
bb190:
  %t1395 = load i1, ptr %l574, !tbaa !21
  br i1 %t1395, label %bb191, label %bb192
bb191:
  store i1 true, ptr %l579, !tbaa !21
  br label %bb196
bb192:
  %t1396 = load ptr, ptr %l0, !tbaa !29
  %t1398 = getelementptr %"compiler/generic:Program", ptr %t1396, i32 0, i32 0
  %t1399 = load ptr, ptr %t1398, !tbaa !29
  %t1401 = getelementptr %"compiler/load:Loader", ptr %t1399, i32 0, i32 10
  store ptr %t1401, ptr %l582, !tbaa !29
  %t1402 = load ptr, ptr %l0, !tbaa !29
  %t1404 = getelementptr %"compiler/generic:Program", ptr %t1402, i32 0, i32 2
  store ptr %t1404, ptr %l584, !tbaa !29
  %t1405 = load ptr, ptr %l0, !tbaa !29
  %t1407 = getelementptr %"compiler/generic:Program", ptr %t1405, i32 0, i32 2
  %t1408 = load i32, ptr %l33, !tbaa !23
  %t1411 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %t1407, i32 %t1408)
  store i32 %t1411, ptr %l588
  br label %bb193
bb193:
  %t1412 = load ptr, ptr %l584, !tbaa !29
  %t1413 = load i32, ptr %l588, !tbaa !23
  %t1414 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclModule(ptr %v0, ptr %t1412, i32 %t1413)
  store i64 %t1414, ptr %l589
  br label %bb194
bb194:
  %t1415 = load ptr, ptr %l582, !tbaa !29
  %t1416 = load i64, ptr %l589, !tbaa !24
  %t1417 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H7bcf2aeb09afa796f4333e6ec8c3f63f(ptr %v0, ptr %v0, ptr %t1415, i64 %t1416)
  store ptr %t1417, ptr %l590
  br label %bb195
bb195:
  %t1418 = load ptr, ptr %l590, !tbaa !29
  %t1420 = getelementptr %"compiler/load:Module", ptr %t1418, i32 0, i32 30
  %t1421 = load i1, ptr %t1420, !tbaa !21
  store i1 %t1421, ptr %l579, !tbaa !21
  br label %bb196
bb196:
  %t1423 = load i1, ptr %l579, !tbaa !21
  br i1 %t1423, label %bb197, label %bb198
bb197:
  store i1 true, ptr %l593, !tbaa !21
  br label %bb207
bb198:
  %t1424 = load i64, ptr %l4, !tbaa !24
  %t1426 = icmp sge i64 %t1424, 0
  br i1 %t1426, label %bb199, label %bb200
bb199:
  %t1428 = load i64, ptr %l4, !tbaa !24
  store i64 %t1428, ptr %l597, !tbaa !24
  %t1429 = load ptr, ptr %l0, !tbaa !29
  %t1431 = getelementptr %"compiler/generic:Program", ptr %t1429, i32 0, i32 0
  %t1432 = load ptr, ptr %t1431, !tbaa !29
  %t1434 = getelementptr %"compiler/load:Loader", ptr %t1432, i32 0, i32 10
  %t1436 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_Hb2d19b6b5ea5ab5a85c5720545345bd4(ptr %v0, ptr %t1434)
  store i64 %t1436, ptr %l601
  br label %bb201
bb200:
  store i1 false, ptr %l596, !tbaa !21
  br label %bb202
bb201:
  %t1437 = load i64, ptr %l597, !tbaa !24
  %t1438 = load i64, ptr %l601, !tbaa !24
  %t1439 = icmp slt i64 %t1437, %t1438
  store i1 %t1439, ptr %l596, !tbaa !21
  br label %bb202
bb202:
  %t1441 = load i1, ptr %l596, !tbaa !21
  br i1 %t1441, label %bb203, label %bb204
bb203:
  %t1442 = load ptr, ptr %l0, !tbaa !29
  %t1444 = getelementptr %"compiler/generic:Program", ptr %t1442, i32 0, i32 0
  %t1445 = load ptr, ptr %t1444, !tbaa !29
  %t1447 = getelementptr %"compiler/load:Loader", ptr %t1445, i32 0, i32 10
  %t1448 = load i64, ptr %l4, !tbaa !24
  %t1451 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H7bcf2aeb09afa796f4333e6ec8c3f63f(ptr %v0, ptr %v0, ptr %t1447, i64 %t1448)
  store ptr %t1451, ptr %l608
  br label %bb205
bb204:
  store i1 false, ptr %l603, !tbaa !21
  br label %bb206
bb205:
  %t1452 = load ptr, ptr %l608, !tbaa !29
  %t1454 = getelementptr %"compiler/load:Module", ptr %t1452, i32 0, i32 3
  %t1455 = load i1, ptr %t1454, !tbaa !21
  store i1 %t1455, ptr %l603, !tbaa !21
  br label %bb206
bb206:
  %t1457 = load i1, ptr %l603, !tbaa !21
  store i1 %t1457, ptr %l593, !tbaa !21
  br label %bb207
bb207:
  %t1458 = load i1, ptr %l593, !tbaa !21
  store i1 %t1458, ptr %l47, !tbaa !21
  store i64 0, ptr %l48, !tbaa !24
  %t1459 = load { i64, ptr }, ptr %l46, !tbaa !27
  %t1461 = extractvalue { i64, ptr } %t1459, 0
  store i64 %t1461, ptr %l49, !tbaa !24
  store i64 1, ptr %l50, !tbaa !24
  %t1463 = load i64, ptr %l49, !tbaa !24
  %t1464 = load i64, ptr %l48, !tbaa !24
  %t1467 = icmp sgt i64 %t1463, %t1464
  br i1 %t1467, label %bb208, label %bb209
bb208:
  %t1469 = load i64, ptr %l50, !tbaa !24
  %t1471 = icmp sgt i64 %t1469, 0
  br i1 %t1471, label %bb210, label %bb211
bb209:
  store i64 0, ptr %l616, !tbaa !24
  br label %bb213
bb210:
  %t1473 = load i64, ptr %l49, !tbaa !24
  %t1474 = load i64, ptr %l48, !tbaa !24
  %t1477 = sub i64 %t1473, %t1474
  %t1478 = load i64, ptr %l50, !tbaa !24
  %t1481 = add i64 %t1477, %t1478
  %t1483 = sub i64 %t1481, 1
  %t1484 = load i64, ptr %l50, !tbaa !24
  %t1487 = sdiv i64 %t1483, %t1484
  store i64 %t1487, ptr %l619, !tbaa !24
  br label %bb212
bb211:
  store i64 0, ptr %l619, !tbaa !24
  br label %bb212
bb212:
  %t1489 = load i64, ptr %l619, !tbaa !24
  store i64 %t1489, ptr %l616, !tbaa !24
  br label %bb213
bb213:
  %t1490 = load i64, ptr %l616, !tbaa !24
  store i64 %t1490, ptr %l51, !tbaa !24
  store i64 0, ptr %l52, !tbaa !24
  br label %bb214
bb214:
  store %olang.scope zeroinitializer, ptr %s42
  %t1491 = load i64, ptr %l52, !tbaa !24
  %t1492 = load i64, ptr %l51, !tbaa !24
  %t1495 = icmp slt i64 %t1491, %t1492
  %t1497 = xor i1 %t1495, true
  br i1 %t1497, label %bb215, label %bb216
bb215:
  call void @__olang_scope_close(ptr %s42)
  br label %bb228
bb216:
  br label %bb217
bb217:
  %t1499 = load i64, ptr %l48, !tbaa !24
  %t1500 = load i64, ptr %l52, !tbaa !24
  %t1501 = load i64, ptr %l50, !tbaa !24
  %t1504 = mul i64 %t1500, %t1501
  %t1507 = add i64 %t1499, %t1504
  store i64 %t1507, ptr %l53, !tbaa !24
  %t1509 = load i1, ptr %l47, !tbaa !21
  br i1 %t1509, label %bb218, label %bb219
bb218:
  store i1 true, ptr %l638, !tbaa !21
  br label %bb222
bb219:
  %t1511 = load ptr, ptr %l0, !tbaa !29
  %t1512 = load i64, ptr %l53, !tbaa !24
  %t1514 = getelementptr { i64, ptr }, ptr %l46, i32 0, i32 1
  %t1515 = load ptr, ptr %t1514, !tbaa !27
  %t1516 = getelementptr i32, ptr %t1515, i64 %t1512
  %t1517 = load i32, ptr %t1516, !tbaa !33
  %t1520 = call { i64, ptr } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2etext(ptr %v0, ptr %s42, ptr %t1511, i32 %t1517)
  store { i64, ptr } %t1520, ptr %l642
  br label %bb220
bb220:
  %t1521 = load { i64, ptr }, ptr %l642, !tbaa !27
  store { i64, ptr } %t1521, ptr %l643, !tbaa !27
  %t1522 = getelementptr { i64, ptr }, ptr %l643, i32 0, i32 1
  %t1523 = load ptr, ptr %t1522, !tbaa !27
  %t1524 = getelementptr i8, ptr %t1523, i64 0
  %t1525 = load i8, ptr %t1524, !tbaa !32
  %t1527 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aChar_2eIsUpper(i8 %t1525)
  store i1 %t1527, ptr %l645
  br label %bb221
bb221:
  %t1528 = load i1, ptr %l645, !tbaa !21
  store i1 %t1528, ptr %l638, !tbaa !21
  br label %bb222
bb222:
  %t1529 = load i1, ptr %l638, !tbaa !21
  br i1 %t1529, label %bb223, label %bb224
bb223:
  %t1530 = load i64, ptr %l53, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %s0, ptr %l6, i64 %t1530)
  br label %bb225
bb224:
  br label %bb226
bb225:
  br label %bb226
bb226:
  call void @__olang_scope_close(ptr %s42)
  br label %bb227
bb227:
  %t1533 = load i64, ptr %l52, !tbaa !24
  %t1535 = add i64 %t1533, 1
  store i64 %t1535, ptr %l52, !tbaa !24
  br label %bb214
bb228:
  %t1538 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eToArray_3cI64_3e(ptr %s0, ptr %s0, ptr %l6)
  store { i64, ptr } %t1538, ptr %l651
  br label %bb229
bb229:
  %t1539 = load { i64, ptr }, ptr %l651, !tbaa !27
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d43, i32 0, i32 1) }, ptr %l653, !tbaa !27
  %t1540 = load { i64, ptr }, ptr %l653, !tbaa !27
  %t1542 = insertvalue { { i64, ptr }, { i64, ptr } } undef, { i64, ptr } %t1539, 0
  %t1544 = insertvalue { { i64, ptr }, { i64, ptr } } %t1542, { i64, ptr } %t1540, 1
  store { { i64, ptr }, { i64, ptr } } %t1544, ptr %l655
  %t1545 = getelementptr { { i64, ptr }, { i64, ptr } }, ptr %l655, i32 0, i32 0
  %t1546 = load { i64, ptr }, ptr %t1545, !tbaa !27
  store { i64, ptr } %t1546, ptr %l656, !tbaa !27
  %t1547 = load { i64, ptr }, ptr %l656, !tbaa !27
  %t1548 = extractvalue { i64, ptr } %t1547, 0
  store i64 %t1548, ptr %l657, !tbaa !24
  %t1549 = load i64, ptr %l657, !tbaa !24
  %t1550 = mul i64 %t1549, 8
  %t1551 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t1550)
  %t1552 = insertvalue { i64, ptr } undef, i64 %t1549, 0
  %t1553 = insertvalue { i64, ptr } %t1552, ptr %t1551, 1
  store { i64, ptr } %t1553, ptr %l658, !tbaa !27
  %t1554 = getelementptr { i64, ptr }, ptr %l658, i32 0, i32 1
  %t1555 = load ptr, ptr %t1554, !tbaa !27
  %t1556 = getelementptr { i64, ptr }, ptr %l656, i32 0, i32 1
  %t1557 = load ptr, ptr %t1556, !tbaa !27
  %t1558 = load i64, ptr %l657, !tbaa !24
  %t1559 = mul i64 %t1558, 8
  call void @llvm.memmove.p0.p0.i64(ptr %t1555, ptr %t1557, i64 %t1559, i1 false)
  %t1560 = load { i64, ptr }, ptr %l658, !tbaa !27
  %t1561 = getelementptr { { i64, ptr }, { i64, ptr } }, ptr %l655, i32 0, i32 0
  store { i64, ptr } %t1560, ptr %t1561, !tbaa !27
  %t1562 = getelementptr { { i64, ptr }, { i64, ptr } }, ptr %l655, i32 0, i32 1
  %t1563 = load { i64, ptr }, ptr %t1562, !tbaa !27
  store { i64, ptr } %t1563, ptr %l659, !tbaa !27
  %t1564 = load { i64, ptr }, ptr %l659, !tbaa !27
  %t1565 = extractvalue { i64, ptr } %t1564, 0
  store i64 %t1565, ptr %l660, !tbaa !24
  %t1566 = load i64, ptr %l660, !tbaa !24
  %t1567 = mul i64 %t1566, 1
  %t1568 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t1567)
  %t1569 = insertvalue { i64, ptr } undef, i64 %t1566, 0
  %t1570 = insertvalue { i64, ptr } %t1569, ptr %t1568, 1
  store { i64, ptr } %t1570, ptr %l661, !tbaa !27
  %t1571 = getelementptr { i64, ptr }, ptr %l661, i32 0, i32 1
  %t1572 = load ptr, ptr %t1571, !tbaa !27
  %t1573 = getelementptr { i64, ptr }, ptr %l659, i32 0, i32 1
  %t1574 = load ptr, ptr %t1573, !tbaa !27
  %t1575 = load i64, ptr %l660, !tbaa !24
  %t1576 = mul i64 %t1575, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t1572, ptr %t1574, i64 %t1576, i1 false)
  %t1577 = load { i64, ptr }, ptr %l661, !tbaa !27
  %t1578 = getelementptr { { i64, ptr }, { i64, ptr } }, ptr %l655, i32 0, i32 1
  store { i64, ptr } %t1577, ptr %t1578, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  %t1579 = load { { i64, ptr }, { i64, ptr } }, ptr %l655
  store { { i64, ptr }, { i64, ptr } } %t1579, ptr %rv
  br label %ret
ret:
  %rr = load { { i64, ptr }, { i64, ptr } }, ptr %rv
  ret { { i64, ptr }, { i64, ptr } } %rr
}

define dso_local i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eSlotKey(ptr %v0, ptr %a0, i32 %a1, i64 %a2) #0 {
entry:
  %l1 = alloca i32
  %l5 = alloca i64
  %l6 = alloca i64
  %l9 = alloca { i64, ptr }
  %rv = alloca i64
  store i32 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load i32, ptr %l1, !tbaa !23
  %t3 = sext i32 %t1 to i64
  %t5 = mul i64 %t3, 65536
  store i64 %t5, ptr %l5, !tbaa !24
  store i64 %a2, ptr %l6, !tbaa !24
  %t8 = load i32, ptr %l1, !tbaa !23
  %t11 = call { i64, ptr } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eAnySlots(ptr %v0, ptr %v0, ptr %a0, i32 %t8)
  store { i64, ptr } %t11, ptr %l9
  br label %bb1
bb1:
  %t12 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t13 = extractvalue { i64, ptr } %t12, 0
  %t14 = load i64, ptr %l6, !tbaa !24
  %t16 = srem i64 %t14, %t13
  %t17 = load i64, ptr %l5, !tbaa !24
  %t19 = add i64 %t17, %t16
  store i64 %t19, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eSubst(ptr %v0, ptr %a0, i32 %a1, i64 %a2, i32 %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca i64
  %l3 = alloca i32
  %l4 = alloca { i64, ptr }
  %l5 = alloca i32
  %l6 = alloca i32
  %l7 = alloca { i64, ptr }
  %l8 = alloca i64
  %l9 = alloca %"compiler/generic:pattern"
  %l10 = alloca %"compiler/generic:Context"
  %l12 = alloca i64
  %l13 = alloca i64
  %l14 = alloca i64
  %l15 = alloca i64
  %l16 = alloca i64
  %l17 = alloca i64
  %l18 = alloca i32
  %l22 = alloca { i64, ptr }
  %l26 = alloca i32
  %l32 = alloca i64
  %l35 = alloca i1
  %l39 = alloca i64
  %l44 = alloca { i64, ptr }
  %l48 = alloca i64
  %l53 = alloca i32
  %l56 = alloca i1
  %l59 = alloca i1
  %l61 = alloca ptr
  %l65 = alloca i32
  %l66 = alloca { i64, ptr }
  %l70 = alloca i1
  %l73 = alloca { i64, ptr }
  %l75 = alloca i32
  %l78 = alloca { i64, ptr }
  %l83 = alloca i64
  %l87 = alloca i1
  %l91 = alloca i32
  %l95 = alloca ptr
  %l99 = alloca i32
  %l103 = alloca i64
  %l106 = alloca i32
  %l110 = alloca %"compiler/generic:pattern"
  %l112 = alloca ptr
  %l116 = alloca i64
  %l117 = alloca %"compiler/generic:pattern"
  %l118 = alloca i32
  %l120 = alloca %"compiler/generic:pattern"
  %l130 = alloca %"compiler/generic:Context"
  %l133 = alloca i64
  %l138 = alloca i64
  %l141 = alloca i64
  %l163 = alloca ptr
  %l167 = alloca %"compiler/generic:varRow"
  %l169 = alloca { i64, ptr }
  %l180 = alloca i32
  %l181 = alloca ptr
  %l182 = alloca ptr
  %l187 = alloca i32
  %l193 = alloca i32
  %l196 = alloca ptr
  %l200 = alloca i32
  %l201 = alloca ptr
  %l205 = alloca i32
  %l208 = alloca i32
  %l209 = alloca i32
  %l213 = alloca ptr
  %l214 = alloca ptr
  %l218 = alloca i32
  %l221 = alloca i32
  %l222 = alloca ptr
  %l226 = alloca i32
  %l229 = alloca i32
  %l230 = alloca i32
  %l234 = alloca ptr
  %l235 = alloca ptr
  %l239 = alloca i32
  %l242 = alloca i32
  %l246 = alloca i64
  %l247 = alloca i32
  %l253 = alloca i32
  %l261 = alloca i32
  %l263 = alloca ptr
  %l264 = alloca ptr
  %l268 = alloca i32
  %l271 = alloca i32
  %l272 = alloca ptr
  %l276 = alloca i32
  %l279 = alloca i32
  %l280 = alloca ptr
  %l284 = alloca i32
  %l287 = alloca i32
  %l291 = alloca i32
  %l295 = alloca i64
  %l299 = alloca i1
  %l300 = alloca i32
  %l304 = alloca i64
  %l305 = alloca i32
  %l308 = alloca ptr
  %l309 = alloca ptr
  %l313 = alloca i32
  %l316 = alloca i32
  %l317 = alloca i32
  %l321 = alloca ptr
  %l322 = alloca ptr
  %l326 = alloca i32
  %l329 = alloca i32
  %l330 = alloca i32
  %l334 = alloca ptr
  %l335 = alloca ptr
  %l339 = alloca i32
  %l342 = alloca i32
  %l343 = alloca i32
  %l347 = alloca ptr
  %l351 = alloca { i64, ptr }
  %l352 = alloca ptr
  %l356 = alloca i32
  %l359 = alloca i32
  %l363 = alloca { i64, ptr }
  %l364 = alloca i32
  %l368 = alloca ptr
  %l369 = alloca ptr
  %l373 = alloca i32
  %l376 = alloca i32
  %l377 = alloca i32
  %s6 = alloca %olang.scope
  %rv = alloca i32
  %t229 = alloca %"compiler/generic:Context", align 8
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  store i64 %a2, ptr %l2
  store i32 %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/generic:Program", ptr %t1, i32 0, i32 2
  %t4 = load i32, ptr %l3, !tbaa !23
  %t7 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t3, i32 %t4)
  store { i64, ptr } %t7, ptr %l22
  br label %bb1
bb1:
  %t8 = load { i64, ptr }, ptr %l22, !tbaa !27
  store { i64, ptr } %t8, ptr %l4, !tbaa !27
  %t9 = load ptr, ptr %l0, !tbaa !29
  %t11 = getelementptr %"compiler/generic:Program", ptr %t9, i32 0, i32 2
  %t12 = load i32, ptr %l1, !tbaa !23
  %t15 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t11, i32 %t12)
  store i32 %t15, ptr %l26
  br label %bb2
bb2:
  %t16 = load i32, ptr %l26, !range !{i32 0, i32 33}
  store i32 %t16, ptr %l5
  %t17 = load i32, ptr %l5, !range !{i32 0, i32 33}
  %t19 = trunc i64 25 to i32
  %t20 = icmp eq i32 %t17, %t19
  br i1 %t20, label %bb3, label %bb4
bb3:
  br label %bb5
bb4:
  br label %bb43
bb5:
  %t22 = load ptr, ptr %l0, !tbaa !29
  %t24 = getelementptr %"compiler/generic:Program", ptr %t22, i32 0, i32 2
  %t25 = load i32, ptr %l1, !tbaa !23
  %t28 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eA(ptr %v0, ptr %t24, i32 %t25)
  store i64 %t28, ptr %l32
  br label %bb6
bb6:
  %t29 = load i64, ptr %l2, !tbaa !24
  %t30 = load i64, ptr %l32, !tbaa !24
  %t32 = icmp ne i64 %t30, %t29
  br i1 %t32, label %bb7, label %bb8
bb7:
  store i1 true, ptr %l35, !tbaa !21
  br label %bb10
bb8:
  %t34 = load ptr, ptr %l0, !tbaa !29
  %t36 = getelementptr %"compiler/generic:Program", ptr %t34, i32 0, i32 2
  %t37 = load i32, ptr %l1, !tbaa !23
  %t40 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eB(ptr %v0, ptr %t36, i32 %t37)
  store i64 %t40, ptr %l39
  br label %bb9
bb9:
  %t41 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t43 = extractvalue { i64, ptr } %t41, 0
  %t44 = load i64, ptr %l39, !tbaa !24
  %t46 = icmp sge i64 %t44, %t43
  store i1 %t46, ptr %l35, !tbaa !21
  br label %bb10
bb10:
  %t48 = load i1, ptr %l35, !tbaa !21
  br i1 %t48, label %bb11, label %bb12
bb11:
  %t49 = load i32, ptr %l1, !tbaa !23
  store i32 %t49, ptr %rv
  br label %ret
bb12:
  br label %bb13
bb13:
  %t51 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t51, ptr %l44, !tbaa !27
  %t52 = load ptr, ptr %l0, !tbaa !29
  %t54 = getelementptr %"compiler/generic:Program", ptr %t52, i32 0, i32 2
  %t55 = load i32, ptr %l1, !tbaa !23
  %t58 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eB(ptr %v0, ptr %t54, i32 %t55)
  store i64 %t58, ptr %l48
  br label %bb14
bb14:
  %t59 = load i64, ptr %l48, !tbaa !24
  %t60 = getelementptr { i64, ptr }, ptr %l44, i32 0, i32 1
  %t61 = load ptr, ptr %t60, !tbaa !27
  %t62 = getelementptr i32, ptr %t61, i64 %t59
  %t63 = load i32, ptr %t62, !tbaa !33
  store i32 %t63, ptr %l6, !tbaa !23
  %t65 = load ptr, ptr %l0, !tbaa !29
  %t67 = getelementptr %"compiler/generic:Program", ptr %t65, i32 0, i32 2
  %t68 = load i32, ptr %l6, !tbaa !23
  %t71 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t67, i32 %t68)
  store i32 %t71, ptr %l53
  br label %bb15
bb15:
  %t72 = load i32, ptr %l53, !range !{i32 0, i32 33}
  %t74 = trunc i64 30 to i32
  %t75 = icmp eq i32 %t72, %t74
  br i1 %t75, label %bb16, label %bb17
bb16:
  %t77 = load ptr, ptr %l0, !tbaa !29
  %t78 = load i32, ptr %l1, !tbaa !23
  %t81 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eIsErrVar(ptr %v0, ptr %t77, i32 %t78)
  store i1 %t81, ptr %l59
  br label %bb18
bb17:
  store i1 false, ptr %l56, !tbaa !21
  br label %bb19
bb18:
  %t82 = load i1, ptr %l59, !tbaa !21
  store i1 %t82, ptr %l56, !tbaa !21
  br label %bb19
bb19:
  %t83 = load i1, ptr %l56, !tbaa !21
  br i1 %t83, label %bb20, label %bb21
bb20:
  %t84 = load ptr, ptr %l0, !tbaa !29
  %t86 = getelementptr %"compiler/generic:Program", ptr %t84, i32 0, i32 2
  store ptr %t86, ptr %l61, !tbaa !29
  %t87 = load ptr, ptr %l0, !tbaa !29
  %t89 = getelementptr %"compiler/generic:Program", ptr %t87, i32 0, i32 2
  %t90 = load i32, ptr %l6, !tbaa !23
  %t93 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrSetItems(ptr %v0, ptr %t89, i32 %t90)
  store i32 %t93, ptr %l65
  br label %bb22
bb21:
  br label %bb31
bb22:
  %t94 = load ptr, ptr %l61, !tbaa !29
  %t95 = load i32, ptr %l65, !tbaa !23
  %t96 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t94, i32 %t95)
  store { i64, ptr } %t96, ptr %l66
  br label %bb23
bb23:
  %t97 = load { i64, ptr }, ptr %l66, !tbaa !27
  store { i64, ptr } %t97, ptr %l7, !tbaa !27
  %t98 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t100 = extractvalue { i64, ptr } %t98, 0
  %t102 = icmp eq i64 %t100, 1
  br i1 %t102, label %bb24, label %bb25
bb24:
  %t104 = load ptr, ptr %l0, !tbaa !29
  %t106 = getelementptr %"compiler/generic:Program", ptr %t104, i32 0, i32 2
  %t107 = load { i64, ptr }, ptr %l7, !tbaa !27
  store { i64, ptr } %t107, ptr %l73, !tbaa !27
  %t108 = getelementptr { i64, ptr }, ptr %l73, i32 0, i32 1
  %t109 = load ptr, ptr %t108, !tbaa !27
  %t110 = getelementptr i32, ptr %t109, i64 0
  %t111 = load i32, ptr %t110, !tbaa !33
  %t114 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t106, i32 %t111)
  store i32 %t114, ptr %l75
  br label %bb26
bb25:
  store i1 false, ptr %l70, !tbaa !21
  br label %bb27
bb26:
  %t115 = load i32, ptr %l75, !range !{i32 0, i32 33}
  %t117 = trunc i64 25 to i32
  %t118 = icmp eq i32 %t115, %t117
  store i1 %t118, ptr %l70, !tbaa !21
  br label %bb27
bb27:
  %t120 = load i1, ptr %l70, !tbaa !21
  br i1 %t120, label %bb28, label %bb29
bb28:
  %t121 = load { i64, ptr }, ptr %l7, !tbaa !27
  store { i64, ptr } %t121, ptr %l78, !tbaa !27
  %t122 = getelementptr { i64, ptr }, ptr %l78, i32 0, i32 1
  %t123 = load ptr, ptr %t122, !tbaa !27
  %t124 = getelementptr i32, ptr %t123, i64 0
  %t125 = load i32, ptr %t124, !tbaa !33
  store i32 %t125, ptr %rv
  br label %ret
bb29:
  br label %bb30
bb30:
  br label %bb31
bb31:
  %t127 = load ptr, ptr %l0, !tbaa !29
  %t129 = getelementptr %"compiler/generic:Program", ptr %t127, i32 0, i32 2
  %t130 = load i32, ptr %l1, !tbaa !23
  %t133 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eC(ptr %v0, ptr %t129, i32 %t130)
  store i64 %t133, ptr %l83
  br label %bb32
bb32:
  %t134 = load i64, ptr %l83, !tbaa !24
  store i64 %t134, ptr %l8, !tbaa !24
  %t135 = load i64, ptr %l8, !tbaa !24
  %t136 = load i64, ptr @G_2ecompiler_2ftypes_2eReadOnly, !tbaa !24
  %t139 = icmp ne i64 %t135, %t136
  br i1 %t139, label %bb33, label %bb34
bb33:
  %t141 = load ptr, ptr %l0, !tbaa !29
  %t143 = getelementptr %"compiler/generic:Program", ptr %t141, i32 0, i32 2
  %t144 = load i32, ptr %l6, !tbaa !23
  %t147 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t143, i32 %t144)
  store i32 %t147, ptr %l91
  br label %bb35
bb34:
  store i1 false, ptr %l87, !tbaa !21
  br label %bb36
bb35:
  %t148 = load i32, ptr %l91, !range !{i32 0, i32 33}
  %t150 = trunc i64 20 to i32
  %t151 = icmp eq i32 %t148, %t150
  store i1 %t151, ptr %l87, !tbaa !21
  br label %bb36
bb36:
  %t153 = load i1, ptr %l87, !tbaa !21
  br i1 %t153, label %bb37, label %bb38
bb37:
  %t154 = load ptr, ptr %l0, !tbaa !29
  %t156 = getelementptr %"compiler/generic:Program", ptr %t154, i32 0, i32 2
  store ptr %t156, ptr %l95, !tbaa !29
  %t157 = load ptr, ptr %l0, !tbaa !29
  %t159 = getelementptr %"compiler/generic:Program", ptr %t157, i32 0, i32 2
  %t160 = load i32, ptr %l6, !tbaa !23
  %t163 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eReferent(ptr %v0, ptr %t159, i32 %t160)
  store i32 %t163, ptr %l99
  br label %bb39
bb38:
  br label %bb42
bb39:
  %t164 = load ptr, ptr %l0, !tbaa !29
  %t166 = getelementptr %"compiler/generic:Program", ptr %t164, i32 0, i32 2
  %t167 = load i32, ptr %l6, !tbaa !23
  %t170 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePermOf(ptr %v0, ptr %t166, i32 %t167)
  store i64 %t170, ptr %l103
  br label %bb40
bb40:
  %t171 = load i64, ptr %l8, !tbaa !24
  %t172 = load i64, ptr %l103, !tbaa !24
  %t174 = or i64 %t172, %t171
  %t175 = load ptr, ptr %l95, !tbaa !29
  %t176 = load i32, ptr %l99, !tbaa !23
  %t178 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRef(ptr %v0, ptr %t175, i32 %t176, i64 %t174)
  store i32 %t178, ptr %l106
  br label %bb41
bb41:
  %t179 = load i32, ptr %l106, !tbaa !23
  store i32 %t179, ptr %rv
  br label %ret
bb42:
  %t180 = load i32, ptr %l6, !tbaa !23
  store i32 %t180, ptr %rv
  br label %ret
bb43:
  %t182 = load i32, ptr %l5, !range !{i32 0, i32 33}
  %t184 = trunc i64 27 to i32
  %t185 = icmp eq i32 %t182, %t184
  br i1 %t185, label %bb44, label %bb45
bb44:
  br label %bb46
bb45:
  br label %bb86
bb46:
  store %olang.scope zeroinitializer, ptr %s6
  %t187 = load ptr, ptr %l0, !tbaa !29
  %t189 = getelementptr %"compiler/generic:Program", ptr %t187, i32 0, i32 28
  store ptr %t189, ptr %l112, !tbaa !29
  %t190 = load ptr, ptr %l0, !tbaa !29
  %t192 = getelementptr %"compiler/generic:Program", ptr %t190, i32 0, i32 2
  %t193 = load i32, ptr %l1, !tbaa !23
  %t196 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eA(ptr %v0, ptr %t192, i32 %t193)
  store i64 %t196, ptr %l116
  br label %bb47
bb47:
  %t197 = load ptr, ptr %l112, !tbaa !29
  %t198 = load i64, ptr %l116, !tbaa !24
  %t199 = call { i32, %"compiler/generic:pattern" } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2fgeneric_3apattern__He653b1131e20b64758f13c09ef1dc8c5(ptr %v0, ptr %v0, ptr %t197, i64 %t198)
  %t200 = extractvalue { i32, %"compiler/generic:pattern" } %t199, 1
  %t201 = extractvalue { i32, %"compiler/generic:pattern" } %t199, 0
  store i32 %t201, ptr %l118
  %t202 = icmp ne i32 %t201, 0
  br i1 %t202, label %bb49, label %ok.203, !prof !99
ok.203:
  store %"compiler/generic:pattern" %t200, ptr %l117
  br label %bb48
bb48:
  %t204 = load %"compiler/generic:pattern", ptr %l117
  store %"compiler/generic:pattern" %t204, ptr %l110
  br label %bb52
bb49:
  br label %bb50
bb50:
  %t205 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t207 = call %"compiler/generic:pattern" @compiler_2fgeneric_3apattern_2ector(ptr %v0, ptr %v0, ptr %v0, ptr null, i64 -1, i64 -2, i32 %t205, ptr null)
  store %"compiler/generic:pattern" %t207, ptr %l120
  br label %bb51
bb51:
  %t208 = load %"compiler/generic:pattern", ptr %l120
  store %"compiler/generic:pattern" %t208, ptr %l110
  br label %bb52
bb52:
  %t209 = load %"compiler/generic:pattern", ptr %l110
  store %"compiler/generic:pattern" %t209, ptr %l9
  %t210 = getelementptr %"compiler/generic:pattern", ptr %l9, i32 0, i32 2
  %t211 = load i64, ptr %t210, !tbaa !24
  %t213 = icmp eq i64 %t211, -2
  br i1 %t213, label %bb53, label %bb54
bb53:
  %t215 = load i32, ptr %l1, !tbaa !23
  call void @__olang_scope_close(ptr %s6)
  store i32 %t215, ptr %rv
  br label %ret
bb54:
  br label %bb55
bb55:
  %t217 = getelementptr %"compiler/generic:pattern", ptr %l9, i32 0, i32 2
  %t218 = load i64, ptr %t217, !tbaa !24
  %t219 = load i64, ptr %l2, !tbaa !24
  %t222 = icmp ne i64 %t218, %t219
  br i1 %t222, label %bb56, label %bb57
bb56:
  %t224 = load i32, ptr %l1, !tbaa !23
  call void @__olang_scope_close(ptr %s6)
  store i32 %t224, ptr %rv
  br label %ret
bb57:
  br label %bb58
bb58:
  %t226 = getelementptr %"compiler/generic:pattern", ptr %l9, i32 0, i32 1
  %t227 = load i64, ptr %t226, !tbaa !24
  %t228 = load i64, ptr %l2, !tbaa !24
  call void @compiler_2fgeneric_3aContext_2ector(ptr %t229, ptr %s6, i64 %t227, i64 %t228)
  call void @llvm.memmove.p0.p0.i64(ptr %l130, ptr %t229, i64 160, i1 false)
  br label %bb59
bb59:
  call void @llvm.memmove.p0.p0.i64(ptr %l10, ptr %l130, i64 160, i1 false)
  %t232 = load ptr, ptr %l0, !tbaa !29
  %t233 = load i64, ptr %l2, !tbaa !24
  %t236 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eVarCount(ptr %v0, ptr %t232, i64 %t233)
  store i64 %t236, ptr %l133
  br label %bb60
bb60:
  %t237 = load i64, ptr %l133, !tbaa !24
  store i64 0, ptr %l12, !tbaa !24
  store i64 %t237, ptr %l13, !tbaa !24
  store i64 1, ptr %l14, !tbaa !24
  %t240 = load i64, ptr %l13, !tbaa !24
  %t241 = load i64, ptr %l12, !tbaa !24
  %t244 = icmp sgt i64 %t240, %t241
  br i1 %t244, label %bb61, label %bb62
bb61:
  %t246 = load i64, ptr %l14, !tbaa !24
  %t248 = icmp sgt i64 %t246, 0
  br i1 %t248, label %bb63, label %bb64
bb62:
  store i64 0, ptr %l138, !tbaa !24
  br label %bb66
bb63:
  %t250 = load i64, ptr %l13, !tbaa !24
  %t251 = load i64, ptr %l12, !tbaa !24
  %t254 = sub i64 %t250, %t251
  %t255 = load i64, ptr %l14, !tbaa !24
  %t258 = add i64 %t254, %t255
  %t260 = sub i64 %t258, 1
  %t261 = load i64, ptr %l14, !tbaa !24
  %t264 = sdiv i64 %t260, %t261
  store i64 %t264, ptr %l141, !tbaa !24
  br label %bb65
bb64:
  store i64 0, ptr %l141, !tbaa !24
  br label %bb65
bb65:
  %t266 = load i64, ptr %l141, !tbaa !24
  store i64 %t266, ptr %l138, !tbaa !24
  br label %bb66
bb66:
  %t267 = load i64, ptr %l138, !tbaa !24
  store i64 %t267, ptr %l15, !tbaa !24
  store i64 0, ptr %l16, !tbaa !24
  br label %bb67
bb67:
  %t268 = load i64, ptr %l16, !tbaa !24
  %t269 = load i64, ptr %l15, !tbaa !24
  %t272 = icmp slt i64 %t268, %t269
  %t274 = xor i1 %t272, true
  br i1 %t274, label %bb68, label %bb69
bb68:
  br label %bb77
bb69:
  br label %bb70
bb70:
  %t276 = load i64, ptr %l12, !tbaa !24
  %t277 = load i64, ptr %l16, !tbaa !24
  %t278 = load i64, ptr %l14, !tbaa !24
  %t281 = mul i64 %t277, %t278
  %t284 = add i64 %t276, %t281
  store i64 %t284, ptr %l17, !tbaa !24
  %t286 = load i64, ptr %l17, !tbaa !24
  %t287 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t289 = extractvalue { i64, ptr } %t287, 0
  %t292 = icmp slt i64 %t286, %t289
  br i1 %t292, label %bb71, label %bb72
bb71:
  %t294 = getelementptr %"compiler/generic:Context", ptr %l10, i32 0, i32 2
  store ptr %t294, ptr %l163, !tbaa !29
  %t295 = load ptr, ptr %l0, !tbaa !29
  %t296 = load i64, ptr %l2, !tbaa !24
  %t297 = load i64, ptr %l17, !tbaa !24
  %t301 = call %"compiler/generic:varRow" @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eVarAt(ptr %v0, ptr %t295, i64 %t296, i64 %t297)
  store %"compiler/generic:varRow" %t301, ptr %l167
  br label %bb73
bb72:
  br label %bb75
bb73:
  %t302 = getelementptr %"compiler/generic:varRow", ptr %l167, i32 0, i32 1
  %t303 = load i32, ptr %t302, !tbaa !23
  %t304 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t304, ptr %l169, !tbaa !27
  %t305 = load i64, ptr %l17, !tbaa !24
  %t307 = getelementptr { i64, ptr }, ptr %l169, i32 0, i32 1
  %t308 = load ptr, ptr %t307, !tbaa !27
  %t309 = getelementptr i32, ptr %t308, i64 %t305
  %t310 = load i32, ptr %t309, !tbaa !33
  %t311 = load ptr, ptr %l163, !tbaa !29
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fsource_3aNameId_2c_20compil_H943a9bb03970f71acf57214091669a7d(ptr %s6, ptr %t311, i32 %t303, i32 %t310)
  br label %bb74
bb74:
  br label %bb75
bb75:
  br label %bb76
bb76:
  %t314 = load i64, ptr %l16, !tbaa !24
  %t316 = add i64 %t314, 1
  store i64 %t316, ptr %l16, !tbaa !24
  br label %bb67
bb77:
  %t318 = getelementptr %"compiler/generic:pattern", ptr %l9, i32 0, i32 4
  %t319 = load ptr, ptr %t318, !tbaa !29
  %t321 = icmp eq ptr %t319, null
  %t323 = xor i1 %t321, true
  br i1 %t323, label %bb78, label %bb79
bb78:
  %t325 = load ptr, ptr %l0, !tbaa !29
  %t326 = getelementptr %"compiler/generic:pattern", ptr %l9, i32 0, i32 4
  %t327 = load ptr, ptr %t326, !tbaa !29
  %t331 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eResolve(ptr %v0, ptr %s6, ptr %v0, ptr %t325, ptr %l10, ptr %t327)
  store i32 %t331, ptr %l180
  br label %bb80
bb79:
  br label %bb81
bb80:
  call void @__olang_scope_close(ptr %s6)
  %t332 = load i32, ptr %l180, !tbaa !23
  store i32 %t332, ptr %rv
  br label %ret
bb81:
  %t333 = load ptr, ptr %l0, !tbaa !29
  store ptr %t333, ptr %l181, !tbaa !29
  store ptr %l10, ptr %l182, !tbaa !29
  %t334 = getelementptr %"compiler/generic:pattern", ptr %l9, i32 0, i32 0
  %t335 = load ptr, ptr %t334, !tbaa !29
  %t337 = icmp eq ptr %t335, null
  br i1 %t337, label %bb82, label %bb83
bb82:
  call void @__olang_check_failed(ptr @olang_loc_58f0122f37ec3c06_2c6a4c04431557c2)
  unreachable
bb83:
  br label %bb84
bb84:
  %t339 = getelementptr %"compiler/generic:pattern", ptr %l9, i32 0, i32 0
  %t340 = load ptr, ptr %t339, !tbaa !29
  %t341 = getelementptr %"compiler/generic:pattern", ptr %l9, i32 0, i32 3
  %t342 = load i32, ptr %t341, !tbaa !23
  %t343 = load ptr, ptr %l181, !tbaa !29
  %t344 = load ptr, ptr %l182, !tbaa !29
  %t347 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2efold(ptr %v0, ptr %s6, ptr %v0, ptr %t343, ptr %t344, ptr %t340, i32 %t342)
  store i32 %t347, ptr %l187
  br label %bb85
bb85:
  call void @__olang_scope_close(ptr %s6)
  %t348 = load i32, ptr %l187, !tbaa !23
  store i32 %t348, ptr %rv
  br label %ret
bb86:
  %t349 = load i32, ptr %l5, !range !{i32 0, i32 33}
  %t351 = trunc i64 18 to i32
  %t352 = icmp eq i32 %t349, %t351
  br i1 %t352, label %bb87, label %bb88
bb87:
  br label %bb89
bb88:
  br label %bb98
bb89:
  %t354 = load ptr, ptr %l0, !tbaa !29
  %t356 = getelementptr %"compiler/generic:Program", ptr %t354, i32 0, i32 2
  %t357 = load i32, ptr %l1, !tbaa !23
  %t360 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eArgs(ptr %v0, ptr %t356, i32 %t357)
  store i32 %t360, ptr %l193
  br label %bb90
bb90:
  %t361 = load i32, ptr %l193, !tbaa !23
  %t362 = icmp eq i32 %t361, 0
  br i1 %t362, label %bb91, label %bb92
bb91:
  %t364 = load i32, ptr %l1, !tbaa !23
  store i32 %t364, ptr %rv
  br label %ret
bb92:
  br label %bb93
bb93:
  %t366 = load ptr, ptr %l0, !tbaa !29
  store ptr %t366, ptr %l196, !tbaa !29
  %t367 = load ptr, ptr %l0, !tbaa !29
  %t369 = getelementptr %"compiler/generic:Program", ptr %t367, i32 0, i32 2
  %t370 = load i32, ptr %l1, !tbaa !23
  %t373 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %t369, i32 %t370)
  store i32 %t373, ptr %l200
  br label %bb94
bb94:
  %t374 = load ptr, ptr %l0, !tbaa !29
  store ptr %t374, ptr %l201, !tbaa !29
  %t375 = load ptr, ptr %l0, !tbaa !29
  %t377 = getelementptr %"compiler/generic:Program", ptr %t375, i32 0, i32 2
  %t378 = load i32, ptr %l1, !tbaa !23
  %t381 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eArgs(ptr %v0, ptr %t377, i32 %t378)
  store i32 %t381, ptr %l205
  br label %bb95
bb95:
  %t382 = load i64, ptr %l2, !tbaa !24
  %t383 = load i32, ptr %l3, !tbaa !23
  %t384 = load ptr, ptr %l201, !tbaa !29
  %t385 = load i32, ptr %l205, !tbaa !23
  %t388 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2esubstList(ptr %v0, ptr %t384, i32 %t385, i64 %t382, i32 %t383)
  store i32 %t388, ptr %l208
  br label %bb96
bb96:
  %t389 = load ptr, ptr %l196, !tbaa !29
  %t390 = load i32, ptr %l200, !tbaa !23
  %t391 = load i32, ptr %l208, !tbaa !23
  %t392 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eInstance(ptr %v0, ptr %t389, i32 %t390, i32 %t391)
  store i32 %t392, ptr %l209
  br label %bb97
bb97:
  %t393 = load i32, ptr %l209, !tbaa !23
  store i32 %t393, ptr %rv
  br label %ret
bb98:
  %t394 = load i32, ptr %l5, !range !{i32 0, i32 33}
  %t396 = trunc i64 19 to i32
  %t397 = icmp eq i32 %t394, %t396
  br i1 %t397, label %bb99, label %bb100
bb99:
  br label %bb101
bb100:
  br label %bb107
bb101:
  %t399 = load ptr, ptr %l0, !tbaa !29
  %t401 = getelementptr %"compiler/generic:Program", ptr %t399, i32 0, i32 2
  store ptr %t401, ptr %l213, !tbaa !29
  %t402 = load ptr, ptr %l0, !tbaa !29
  store ptr %t402, ptr %l214, !tbaa !29
  %t403 = load ptr, ptr %l0, !tbaa !29
  %t405 = getelementptr %"compiler/generic:Program", ptr %t403, i32 0, i32 2
  %t406 = load i32, ptr %l1, !tbaa !23
  %t409 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eElem(ptr %v0, ptr %t405, i32 %t406)
  store i32 %t409, ptr %l218
  br label %bb102
bb102:
  %t410 = load i64, ptr %l2, !tbaa !24
  %t411 = load i32, ptr %l3, !tbaa !23
  %t412 = load ptr, ptr %l214, !tbaa !29
  %t413 = load i32, ptr %l218, !tbaa !23
  %t416 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eSubst(ptr %v0, ptr %t412, i32 %t413, i64 %t410, i32 %t411)
  store i32 %t416, ptr %l221
  br label %bb103
bb103:
  %t417 = load ptr, ptr %l0, !tbaa !29
  store ptr %t417, ptr %l222, !tbaa !29
  %t418 = load ptr, ptr %l0, !tbaa !29
  %t420 = getelementptr %"compiler/generic:Program", ptr %t418, i32 0, i32 2
  %t421 = load i32, ptr %l1, !tbaa !23
  %t424 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eLength(ptr %v0, ptr %t420, i32 %t421)
  store i32 %t424, ptr %l226
  br label %bb104
bb104:
  %t425 = load i64, ptr %l2, !tbaa !24
  %t426 = load i32, ptr %l3, !tbaa !23
  %t427 = load ptr, ptr %l222, !tbaa !29
  %t428 = load i32, ptr %l226, !tbaa !23
  %t431 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eSubst(ptr %v0, ptr %t427, i32 %t428, i64 %t425, i32 %t426)
  store i32 %t431, ptr %l229
  br label %bb105
bb105:
  %t432 = load ptr, ptr %l213, !tbaa !29
  %t433 = load i32, ptr %l221, !tbaa !23
  %t434 = load i32, ptr %l229, !tbaa !23
  %t435 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eArray(ptr %v0, ptr %t432, i32 %t433, i32 %t434)
  store i32 %t435, ptr %l230
  br label %bb106
bb106:
  %t436 = load i32, ptr %l230, !tbaa !23
  store i32 %t436, ptr %rv
  br label %ret
bb107:
  %t437 = load i32, ptr %l5, !range !{i32 0, i32 33}
  %t439 = trunc i64 20 to i32
  %t440 = icmp eq i32 %t437, %t439
  br i1 %t440, label %bb108, label %bb109
bb108:
  br label %bb110
bb109:
  br label %bb115
bb110:
  %t442 = load ptr, ptr %l0, !tbaa !29
  %t444 = getelementptr %"compiler/generic:Program", ptr %t442, i32 0, i32 2
  store ptr %t444, ptr %l234, !tbaa !29
  %t445 = load ptr, ptr %l0, !tbaa !29
  store ptr %t445, ptr %l235, !tbaa !29
  %t446 = load ptr, ptr %l0, !tbaa !29
  %t448 = getelementptr %"compiler/generic:Program", ptr %t446, i32 0, i32 2
  %t449 = load i32, ptr %l1, !tbaa !23
  %t452 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eReferent(ptr %v0, ptr %t448, i32 %t449)
  store i32 %t452, ptr %l239
  br label %bb111
bb111:
  %t453 = load i64, ptr %l2, !tbaa !24
  %t454 = load i32, ptr %l3, !tbaa !23
  %t455 = load ptr, ptr %l235, !tbaa !29
  %t456 = load i32, ptr %l239, !tbaa !23
  %t459 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eSubst(ptr %v0, ptr %t455, i32 %t456, i64 %t453, i32 %t454)
  store i32 %t459, ptr %l242
  br label %bb112
bb112:
  %t460 = load ptr, ptr %l0, !tbaa !29
  %t462 = getelementptr %"compiler/generic:Program", ptr %t460, i32 0, i32 2
  %t463 = load i32, ptr %l1, !tbaa !23
  %t466 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePermOf(ptr %v0, ptr %t462, i32 %t463)
  store i64 %t466, ptr %l246
  br label %bb113
bb113:
  %t467 = load ptr, ptr %l234, !tbaa !29
  %t468 = load i32, ptr %l242, !tbaa !23
  %t469 = load i64, ptr %l246, !tbaa !24
  %t470 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRef(ptr %v0, ptr %t467, i32 %t468, i64 %t469)
  store i32 %t470, ptr %l247
  br label %bb114
bb114:
  %t471 = load i32, ptr %l247, !tbaa !23
  store i32 %t471, ptr %rv
  br label %ret
bb115:
  %t472 = load i32, ptr %l5, !range !{i32 0, i32 33}
  %t474 = trunc i64 21 to i32
  %t475 = icmp eq i32 %t472, %t474
  br i1 %t475, label %bb116, label %bb117
bb116:
  br label %bb118
bb117:
  br label %bb135
bb118:
  %t477 = load ptr, ptr %l0, !tbaa !29
  %t479 = getelementptr %"compiler/generic:Program", ptr %t477, i32 0, i32 2
  %t480 = load i32, ptr %l1, !tbaa !23
  %t483 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eFuncTag(ptr %v0, ptr %t479, i32 %t480)
  store i32 %t483, ptr %l253
  br label %bb119
bb119:
  %t484 = load i32, ptr %l253, !tbaa !23
  store i32 %t484, ptr %l18, !tbaa !23
  %t485 = load i32, ptr %l18, !tbaa !23
  %t486 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t489 = icmp ne i32 %t485, %t486
  br i1 %t489, label %bb120, label %bb121
bb120:
  %t491 = load ptr, ptr %l0, !tbaa !29
  %t492 = load i32, ptr %l18, !tbaa !23
  %t493 = load i64, ptr %l2, !tbaa !24
  %t494 = load i32, ptr %l3, !tbaa !23
  %t499 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eSubst(ptr %v0, ptr %t491, i32 %t492, i64 %t493, i32 %t494)
  store i32 %t499, ptr %l261
  br label %bb122
bb121:
  br label %bb123
bb122:
  %t500 = load i32, ptr %l261, !tbaa !23
  store i32 %t500, ptr %l18, !tbaa !23
  br label %bb123
bb123:
  %t501 = load ptr, ptr %l0, !tbaa !29
  %t503 = getelementptr %"compiler/generic:Program", ptr %t501, i32 0, i32 2
  store ptr %t503, ptr %l263, !tbaa !29
  %t504 = load ptr, ptr %l0, !tbaa !29
  store ptr %t504, ptr %l264, !tbaa !29
  %t505 = load ptr, ptr %l0, !tbaa !29
  %t507 = getelementptr %"compiler/generic:Program", ptr %t505, i32 0, i32 2
  %t508 = load i32, ptr %l1, !tbaa !23
  %t511 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParams(ptr %v0, ptr %t507, i32 %t508)
  store i32 %t511, ptr %l268
  br label %bb124
bb124:
  %t512 = load i64, ptr %l2, !tbaa !24
  %t513 = load i32, ptr %l3, !tbaa !23
  %t514 = load ptr, ptr %l264, !tbaa !29
  %t515 = load i32, ptr %l268, !tbaa !23
  %t518 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2esubstList(ptr %v0, ptr %t514, i32 %t515, i64 %t512, i32 %t513)
  store i32 %t518, ptr %l271
  br label %bb125
bb125:
  %t519 = load ptr, ptr %l0, !tbaa !29
  store ptr %t519, ptr %l272, !tbaa !29
  %t520 = load ptr, ptr %l0, !tbaa !29
  %t522 = getelementptr %"compiler/generic:Program", ptr %t520, i32 0, i32 2
  %t523 = load i32, ptr %l1, !tbaa !23
  %t526 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eResult(ptr %v0, ptr %t522, i32 %t523)
  store i32 %t526, ptr %l276
  br label %bb126
bb126:
  %t527 = load i64, ptr %l2, !tbaa !24
  %t528 = load i32, ptr %l3, !tbaa !23
  %t529 = load ptr, ptr %l272, !tbaa !29
  %t530 = load i32, ptr %l276, !tbaa !23
  %t533 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eSubst(ptr %v0, ptr %t529, i32 %t530, i64 %t527, i32 %t528)
  store i32 %t533, ptr %l279
  br label %bb127
bb127:
  %t534 = load ptr, ptr %l0, !tbaa !29
  store ptr %t534, ptr %l280, !tbaa !29
  %t535 = load ptr, ptr %l0, !tbaa !29
  %t537 = getelementptr %"compiler/generic:Program", ptr %t535, i32 0, i32 2
  %t538 = load i32, ptr %l1, !tbaa !23
  %t541 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrors(ptr %v0, ptr %t537, i32 %t538)
  store i32 %t541, ptr %l284
  br label %bb128
bb128:
  %t542 = load i64, ptr %l2, !tbaa !24
  %t543 = load i32, ptr %l3, !tbaa !23
  %t544 = load ptr, ptr %l280, !tbaa !29
  %t545 = load i32, ptr %l284, !tbaa !23
  %t548 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2esubstErrs(ptr %v0, ptr %t544, i32 %t545, i64 %t542, i32 %t543)
  store i32 %t548, ptr %l287
  br label %bb129
bb129:
  %t549 = load ptr, ptr %l0, !tbaa !29
  %t551 = getelementptr %"compiler/generic:Program", ptr %t549, i32 0, i32 2
  %t552 = load i32, ptr %l1, !tbaa !23
  %t555 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eScopesOf(ptr %v0, ptr %t551, i32 %t552)
  store i32 %t555, ptr %l291
  br label %bb130
bb130:
  %t556 = load ptr, ptr %l0, !tbaa !29
  %t558 = getelementptr %"compiler/generic:Program", ptr %t556, i32 0, i32 2
  %t559 = load i32, ptr %l1, !tbaa !23
  %t562 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eNamesIdOf(ptr %v0, ptr %t558, i32 %t559)
  store i64 %t562, ptr %l295
  br label %bb131
bb131:
  %t563 = load ptr, ptr %l0, !tbaa !29
  %t565 = getelementptr %"compiler/generic:Program", ptr %t563, i32 0, i32 2
  %t566 = load i32, ptr %l1, !tbaa !23
  %t569 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eFuncNullable(ptr %v0, ptr %t565, i32 %t566)
  store i1 %t569, ptr %l299
  br label %bb132
bb132:
  %t570 = load i32, ptr %l18, !tbaa !23
  store i32 %t570, ptr %l300, !tbaa !23
  %t571 = load ptr, ptr %l0, !tbaa !29
  %t573 = getelementptr %"compiler/generic:Program", ptr %t571, i32 0, i32 2
  %t574 = load i32, ptr %l1, !tbaa !23
  %t577 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePromisesOf(ptr %v0, ptr %t573, i32 %t574)
  store i64 %t577, ptr %l304
  br label %bb133
bb133:
  %t578 = load ptr, ptr %l263, !tbaa !29
  %t579 = load i32, ptr %l271, !tbaa !23
  %t580 = load i32, ptr %l279, !tbaa !23
  %t581 = load i32, ptr %l287, !tbaa !23
  %t582 = load i32, ptr %l291, !tbaa !23
  %t583 = load i64, ptr %l295, !tbaa !24
  %t584 = load i1, ptr %l299, !tbaa !21
  %t585 = load i32, ptr %l300, !tbaa !23
  %t586 = load i64, ptr %l304, !tbaa !24
  %t587 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eFunc(ptr %v0, ptr %t578, i32 %t579, i32 %t580, i32 %t581, i32 %t582, i64 %t583, i1 %t584, i32 %t585, i64 %t586)
  store i32 %t587, ptr %l305
  br label %bb134
bb134:
  %t588 = load i32, ptr %l305, !tbaa !23
  store i32 %t588, ptr %rv
  br label %ret
bb135:
  %t589 = load i32, ptr %l5, !range !{i32 0, i32 33}
  %t591 = trunc i64 30 to i32
  %t592 = icmp eq i32 %t589, %t591
  br i1 %t592, label %bb136, label %bb137
bb136:
  br label %bb138
bb137:
  br label %bb142
bb138:
  %t594 = load ptr, ptr %l0, !tbaa !29
  store ptr %t594, ptr %l308, !tbaa !29
  %t595 = load ptr, ptr %l0, !tbaa !29
  store ptr %t595, ptr %l309, !tbaa !29
  %t596 = load ptr, ptr %l0, !tbaa !29
  %t598 = getelementptr %"compiler/generic:Program", ptr %t596, i32 0, i32 2
  %t599 = load i32, ptr %l1, !tbaa !23
  %t602 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrSetItems(ptr %v0, ptr %t598, i32 %t599)
  store i32 %t602, ptr %l313
  br label %bb139
bb139:
  %t603 = load i64, ptr %l2, !tbaa !24
  %t604 = load i32, ptr %l3, !tbaa !23
  %t605 = load ptr, ptr %l309, !tbaa !29
  %t606 = load i32, ptr %l313, !tbaa !23
  %t609 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2esubstErrs(ptr %v0, ptr %t605, i32 %t606, i64 %t603, i32 %t604)
  store i32 %t609, ptr %l316
  br label %bb140
bb140:
  %t610 = load ptr, ptr %l308, !tbaa !29
  %t611 = load i32, ptr %l316, !tbaa !23
  %t612 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eErrSetOf(ptr %v0, ptr %t610, i32 %t611)
  store i32 %t612, ptr %l317
  br label %bb141
bb141:
  %t613 = load i32, ptr %l317, !tbaa !23
  store i32 %t613, ptr %rv
  br label %ret
bb142:
  %t614 = load i32, ptr %l5, !range !{i32 0, i32 33}
  %t616 = trunc i64 22 to i32
  %t617 = icmp eq i32 %t614, %t616
  br i1 %t617, label %bb143, label %bb144
bb143:
  br label %bb145
bb144:
  br label %bb149
bb145:
  %t619 = load ptr, ptr %l0, !tbaa !29
  %t621 = getelementptr %"compiler/generic:Program", ptr %t619, i32 0, i32 2
  store ptr %t621, ptr %l321, !tbaa !29
  %t622 = load ptr, ptr %l0, !tbaa !29
  store ptr %t622, ptr %l322, !tbaa !29
  %t623 = load ptr, ptr %l0, !tbaa !29
  %t625 = getelementptr %"compiler/generic:Program", ptr %t623, i32 0, i32 2
  %t626 = load i32, ptr %l1, !tbaa !23
  %t629 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParts(ptr %v0, ptr %t625, i32 %t626)
  store i32 %t629, ptr %l326
  br label %bb146
bb146:
  %t630 = load i64, ptr %l2, !tbaa !24
  %t631 = load i32, ptr %l3, !tbaa !23
  %t632 = load ptr, ptr %l322, !tbaa !29
  %t633 = load i32, ptr %l326, !tbaa !23
  %t636 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2esubstList(ptr %v0, ptr %t632, i32 %t633, i64 %t630, i32 %t631)
  store i32 %t636, ptr %l329
  br label %bb147
bb147:
  %t637 = load ptr, ptr %l321, !tbaa !29
  %t638 = load i32, ptr %l329, !tbaa !23
  %t639 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eTuple(ptr %v0, ptr %t637, i32 %t638)
  store i32 %t639, ptr %l330
  br label %bb148
bb148:
  %t640 = load i32, ptr %l330, !tbaa !23
  store i32 %t640, ptr %rv
  br label %ret
bb149:
  %t641 = load i32, ptr %l5, !range !{i32 0, i32 33}
  %t643 = trunc i64 23 to i32
  %t644 = icmp eq i32 %t641, %t643
  br i1 %t644, label %bb150, label %bb151
bb150:
  br label %bb152
bb151:
  br label %bb156
bb152:
  %t646 = load ptr, ptr %l0, !tbaa !29
  %t648 = getelementptr %"compiler/generic:Program", ptr %t646, i32 0, i32 2
  store ptr %t648, ptr %l334, !tbaa !29
  %t649 = load ptr, ptr %l0, !tbaa !29
  store ptr %t649, ptr %l335, !tbaa !29
  %t650 = load ptr, ptr %l0, !tbaa !29
  %t652 = getelementptr %"compiler/generic:Program", ptr %t650, i32 0, i32 2
  %t653 = load i32, ptr %l1, !tbaa !23
  %t656 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParts(ptr %v0, ptr %t652, i32 %t653)
  store i32 %t656, ptr %l339
  br label %bb153
bb153:
  %t657 = load i64, ptr %l2, !tbaa !24
  %t658 = load i32, ptr %l3, !tbaa !23
  %t659 = load ptr, ptr %l335, !tbaa !29
  %t660 = load i32, ptr %l339, !tbaa !23
  %t663 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2esubstList(ptr %v0, ptr %t659, i32 %t660, i64 %t657, i32 %t658)
  store i32 %t663, ptr %l342
  br label %bb154
bb154:
  %t664 = load ptr, ptr %l334, !tbaa !29
  %t665 = load i32, ptr %l342, !tbaa !23
  %t666 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRecord(ptr %v0, ptr %t664, i32 %t665)
  store i32 %t666, ptr %l343
  br label %bb155
bb155:
  %t667 = load i32, ptr %l343, !tbaa !23
  store i32 %t667, ptr %rv
  br label %ret
bb156:
  %t668 = load i32, ptr %l5, !range !{i32 0, i32 33}
  %t670 = trunc i64 24 to i32
  %t671 = icmp eq i32 %t668, %t670
  br i1 %t671, label %bb157, label %bb158
bb157:
  br label %bb159
bb158:
  br label %bb165
bb159:
  %t673 = load ptr, ptr %l0, !tbaa !29
  %t675 = getelementptr %"compiler/generic:Program", ptr %t673, i32 0, i32 2
  store ptr %t675, ptr %l347, !tbaa !29
  %t676 = load ptr, ptr %l0, !tbaa !29
  %t678 = getelementptr %"compiler/generic:Program", ptr %t676, i32 0, i32 2
  %t679 = load i32, ptr %l1, !tbaa !23
  %t682 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eShapeNames(ptr %v0, ptr %v0, ptr %t678, i32 %t679)
  store { i64, ptr } %t682, ptr %l351
  br label %bb160
bb160:
  %t683 = load ptr, ptr %l0, !tbaa !29
  store ptr %t683, ptr %l352, !tbaa !29
  %t684 = load ptr, ptr %l0, !tbaa !29
  %t686 = getelementptr %"compiler/generic:Program", ptr %t684, i32 0, i32 2
  %t687 = load i32, ptr %l1, !tbaa !23
  %t690 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eShapeCases(ptr %v0, ptr %t686, i32 %t687)
  store i32 %t690, ptr %l356
  br label %bb161
bb161:
  %t691 = load i64, ptr %l2, !tbaa !24
  %t692 = load i32, ptr %l3, !tbaa !23
  %t693 = load ptr, ptr %l352, !tbaa !29
  %t694 = load i32, ptr %l356, !tbaa !23
  %t697 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2esubstList(ptr %v0, ptr %t693, i32 %t694, i64 %t691, i32 %t692)
  store i32 %t697, ptr %l359
  br label %bb162
bb162:
  %t698 = load ptr, ptr %l0, !tbaa !29
  %t700 = getelementptr %"compiler/generic:Program", ptr %t698, i32 0, i32 2
  %t701 = load i32, ptr %l1, !tbaa !23
  %t704 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eShapeFields(ptr %v0, ptr %v0, ptr %t700, i32 %t701)
  store { i64, ptr } %t704, ptr %l363
  br label %bb163
bb163:
  %t705 = load ptr, ptr %l347, !tbaa !29
  %t706 = load { i64, ptr }, ptr %l351, !tbaa !27
  %t707 = load i32, ptr %l359, !tbaa !23
  %t708 = load { i64, ptr }, ptr %l363, !tbaa !27
  %t709 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eAnonEnum(ptr %v0, ptr %v0, ptr %v0, ptr %t705, { i64, ptr } %t706, i32 %t707, { i64, ptr } %t708)
  store i32 %t709, ptr %l364
  br label %bb164
bb164:
  %t710 = load i32, ptr %l364, !tbaa !23
  store i32 %t710, ptr %rv
  br label %ret
bb165:
  %t711 = load i32, ptr %l5, !range !{i32 0, i32 33}
  %t713 = trunc i64 29 to i32
  %t714 = icmp eq i32 %t711, %t713
  br i1 %t714, label %bb166, label %bb167
bb166:
  br label %bb168
bb167:
  br label %bb172
bb168:
  %t716 = load ptr, ptr %l0, !tbaa !29
  %t718 = getelementptr %"compiler/generic:Program", ptr %t716, i32 0, i32 2
  store ptr %t718, ptr %l368, !tbaa !29
  %t719 = load ptr, ptr %l0, !tbaa !29
  store ptr %t719, ptr %l369, !tbaa !29
  %t720 = load ptr, ptr %l0, !tbaa !29
  %t722 = getelementptr %"compiler/generic:Program", ptr %t720, i32 0, i32 2
  %t723 = load i32, ptr %l1, !tbaa !23
  %t726 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eAnyTrait(ptr %v0, ptr %t722, i32 %t723)
  store i32 %t726, ptr %l373
  br label %bb169
bb169:
  %t727 = load i64, ptr %l2, !tbaa !24
  %t728 = load i32, ptr %l3, !tbaa !23
  %t729 = load ptr, ptr %l369, !tbaa !29
  %t730 = load i32, ptr %l373, !tbaa !23
  %t733 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eSubst(ptr %v0, ptr %t729, i32 %t730, i64 %t727, i32 %t728)
  store i32 %t733, ptr %l376
  br label %bb170
bb170:
  %t734 = load ptr, ptr %l368, !tbaa !29
  %t735 = load i32, ptr %l376, !tbaa !23
  %t736 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eAny(ptr %v0, ptr %t734, i32 %t735)
  store i32 %t736, ptr %l377
  br label %bb171
bb171:
  %t737 = load i32, ptr %l377, !tbaa !23
  store i32 %t737, ptr %rv
  br label %ret
bb172:
  br i1 true, label %bb173, label %bb174
bb173:
  br label %bb175
bb174:
  br label %bb176
bb175:
  %t738 = load i32, ptr %l1, !tbaa !23
  store i32 %t738, ptr %rv
  br label %ret
bb176:
  call void @__olang_check_failed(ptr @olang_loc_55e2d1aec6f2d594_eb547a8d425546e0)
  unreachable
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local ptr @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eTypeDecl(ptr %v0, ptr %v1, ptr %a0, i32 %a1) #0 {
entry:
  %l4 = alloca ptr
  %rv = alloca ptr
  br label %start
start:
  br label %bb0
bb0:
  %t5 = call ptr @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2etypeDecl(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
  store ptr %t5, ptr %l4
  br label %bb1
bb1:
  %t6 = load ptr, ptr %l4, !tbaa !29
  store ptr %t6, ptr %rv
  br label %ret
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

define dso_local i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eVarArg(ptr %v0, ptr %a0, i64 %a1, i64 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca i64
  %l3 = alloca i32
  %l9 = alloca i32
  %l13 = alloca i1
  %l14 = alloca i32
  %l15 = alloca ptr
  %l19 = alloca i32
  %l20 = alloca i32
  %rv = alloca i32
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  store i64 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/generic:Program", ptr %t1, i32 0, i32 2
  %t4 = load i64, ptr %l1, !tbaa !24
  %t5 = load i64, ptr %l2, !tbaa !24
  %t6 = load i64, ptr @G_2ecompiler_2ftypes_2eReadOnly, !tbaa !24
  %t11 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eVar(ptr %v0, ptr %t3, i64 %t4, i64 %t5, i64 %t6)
  store i32 %t11, ptr %l9
  br label %bb1
bb1:
  %t12 = load i32, ptr %l9, !tbaa !23
  store i32 %t12, ptr %l3, !tbaa !23
  %t13 = load ptr, ptr %l0, !tbaa !29
  %t14 = load i64, ptr %l1, !tbaa !24
  %t15 = load i64, ptr %l2, !tbaa !24
  %t19 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eErrVarAt(ptr %v0, ptr %t13, i64 %t14, i64 %t15)
  store i1 %t19, ptr %l13
  br label %bb2
bb2:
  %t20 = load i1, ptr %l13, !tbaa !21
  br i1 %t20, label %bb3, label %bb4
bb3:
  %t21 = load ptr, ptr %l0, !tbaa !29
  store ptr %t21, ptr %l15, !tbaa !29
  %t22 = load ptr, ptr %l0, !tbaa !29
  %t24 = getelementptr %"compiler/generic:Program", ptr %t22, i32 0, i32 2
  %t25 = load i32, ptr %l3, !tbaa !23
  %t28 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eList1(ptr %v0, ptr %t24, i32 %t25)
  store i32 %t28, ptr %l19
  br label %bb5
bb4:
  %t29 = load i32, ptr %l3, !tbaa !23
  store i32 %t29, ptr %l14, !tbaa !23
  br label %bb7
bb5:
  %t31 = load ptr, ptr %l15, !tbaa !29
  %t32 = load i32, ptr %l19, !tbaa !23
  %t33 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eErrSetOf(ptr %v0, ptr %t31, i32 %t32)
  store i32 %t33, ptr %l20
  br label %bb6
bb6:
  %t34 = load i32, ptr %l20, !tbaa !23
  store i32 %t34, ptr %l14, !tbaa !23
  br label %bb7
bb7:
  %t35 = load i32, ptr %l14, !tbaa !23
  store i32 %t35, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eVarCount(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l4 = alloca i1
  %l13 = alloca i64
  %l17 = alloca i64
  %l18 = alloca i32
  %rv = alloca i64
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load i64, ptr %l1, !tbaa !24
  %t3 = icmp sge i64 %t1, 0
  br i1 %t3, label %bb1, label %bb2
bb1:
  %t5 = load i64, ptr %l1, !tbaa !24
  %t7 = srem i64 %t5, 2
  %t9 = icmp eq i64 %t7, 0
  store i1 %t9, ptr %l4, !tbaa !21
  br label %bb3
bb2:
  store i1 false, ptr %l4, !tbaa !21
  br label %bb3
bb3:
  %t11 = load i1, ptr %l4, !tbaa !21
  br i1 %t11, label %bb4, label %bb5
bb4:
  %t12 = load ptr, ptr %l0, !tbaa !29
  %t13 = load i64, ptr %l1, !tbaa !24
  %t15 = sdiv i64 %t13, 2
  %t17 = trunc i64 %t15 to i32
  call void @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2edeclVars(ptr %v0, ptr %t12, i32 %t17)
  br label %bb6
bb5:
  br label %bb7
bb6:
  br label %bb7
bb7:
  %t21 = load ptr, ptr %l0, !tbaa !29
  %t23 = getelementptr %"compiler/generic:Program", ptr %t21, i32 0, i32 15
  %t24 = load i64, ptr %l1, !tbaa !24
  %t27 = call { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2eGet_3cI64_2c_20I64_3e(ptr %v0, ptr %t23, i64 %t24)
  %t28 = extractvalue { i32, i64 } %t27, 1
  %t29 = extractvalue { i32, i64 } %t27, 0
  store i32 %t29, ptr %l18
  %t30 = icmp ne i32 %t29, 0
  br i1 %t30, label %bb9, label %ok.31, !prof !99
ok.31:
  store i64 %t28, ptr %l17
  br label %bb8
bb8:
  %t32 = load i64, ptr %l17, !tbaa !24
  store i64 %t32, ptr %l13, !tbaa !24
  br label %bb11
bb9:
  br label %bb10
bb10:
  store i64 0, ptr %l13, !tbaa !24
  br label %bb11
bb11:
  %t33 = load i64, ptr %l13, !tbaa !24
  store i64 %t33, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local { i32, i32 } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2ecanonInner(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i1
  %l6 = alloca i32
  %l7 = alloca i32
  %l8 = alloca i32
  %l9 = alloca i64
  %l10 = alloca { i64, ptr }
  %l11 = alloca i32
  %l12 = alloca i64
  %l13 = alloca i32
  %l14 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l17 = alloca i1
  %l18 = alloca i32
  %l22 = alloca i32
  %l23 = alloca i32
  %l26 = alloca i1
  %l27 = alloca i32
  %l31 = alloca i32
  %l32 = alloca i32
  %l45 = alloca ptr
  %l47 = alloca { i64, ptr }
  %l48 = alloca i1
  %l50 = alloca i32
  %l53 = alloca i32
  %l54 = alloca i32
  %l57 = alloca i1
  %l60 = alloca i32
  %l65 = alloca i32
  %l66 = alloca i32
  %l71 = alloca i1
  %l73 = alloca ptr
  %l74 = alloca i32
  %l77 = alloca i32
  %l78 = alloca i32
  %l80 = alloca i32
  %l82 = alloca i1
  %l83 = alloca i32
  %l86 = alloca i32
  %l87 = alloca i32
  %l90 = alloca i1
  %l92 = alloca ptr
  %l93 = alloca i32
  %l96 = alloca i32
  %l97 = alloca i32
  %l99 = alloca i32
  %l101 = alloca i1
  %l102 = alloca i32
  %l105 = alloca i32
  %l106 = alloca i32
  %l109 = alloca i1
  %l111 = alloca ptr
  %l114 = alloca i32
  %l115 = alloca i64
  %l117 = alloca i64
  %l118 = alloca i32
  %l120 = alloca i32
  %l122 = alloca i1
  %l129 = alloca i32
  %l138 = alloca i1
  %l140 = alloca i8
  %l141 = alloca i1
  %l143 = alloca ptr
  %l147 = alloca { i64, ptr }
  %l148 = alloca i64
  %l150 = alloca i64
  %l151 = alloca i64
  %l157 = alloca i8
  %l160 = alloca i1
  %l163 = alloca i1
  %l166 = alloca i1
  %l171 = alloca i32
  %l177 = alloca ptr
  %l188 = alloca i1
  %l190 = alloca i8
  %l191 = alloca i1
  %l192 = alloca i1
  %l194 = alloca i8
  %l196 = alloca i1
  %l198 = alloca i8
  %l201 = alloca ptr
  %l204 = alloca i32
  %l205 = alloca ptr
  %l206 = alloca { i64, ptr }
  %l208 = alloca { i64, ptr }
  %l209 = alloca i64
  %l211 = alloca i64
  %l212 = alloca i64
  %l217 = alloca i32
  %l218 = alloca i32
  %l221 = alloca i1
  %l225 = alloca i32
  %l228 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l230 = alloca i64
  %l231 = alloca i64
  %l235 = alloca i64
  %l238 = alloca ptr
  %l239 = alloca i32
  %l242 = alloca i32
  %l243 = alloca i32
  %l246 = alloca i1
  %l248 = alloca i1
  %l251 = alloca ptr
  %l252 = alloca i32
  %l254 = alloca ptr
  %l256 = alloca { i64, ptr }
  %l257 = alloca i32
  %l258 = alloca i32
  %s0 = alloca %olang.scope
  %s3 = alloca %olang.scope
  %s4 = alloca %olang.scope
  %s8 = alloca %olang.scope
  %s10 = alloca %olang.scope
  %s11 = alloca %olang.scope
  %s12 = alloca %olang.scope
  %s15 = alloca %olang.scope
  %s22 = alloca %olang.scope
  %rv = alloca { i32, i32 }
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l1, !tbaa !29
  %t3 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3acursor_2eeat(ptr %v1, ptr %s0, ptr %t1, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d44, i32 0, i32 1) })
  store i1 %t3, ptr %l17
  br label %bb1
bb1:
  %t4 = load i1, ptr %l17, !tbaa !21
  br i1 %t4, label %bb2, label %bb3
bb2:
  %t5 = load ptr, ptr %l0, !tbaa !29
  %t6 = load ptr, ptr %l1, !tbaa !29
  %t7 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t11 = call { i32, i32 } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2ecanonFunc(ptr %v0, ptr %v1, ptr %t5, ptr %t6, i1 false, i32 %t7)
  %t12 = extractvalue { i32, i32 } %t11, 1
  %t13 = extractvalue { i32, i32 } %t11, 0
  store i32 %t13, ptr %l23
  %t14 = icmp ne i32 %t13, 0
  br i1 %t14, label %bb5, label %ok.15, !prof !99
ok.15:
  store i32 %t12, ptr %l22
  br label %bb4
bb3:
  br label %bb7
bb4:
  %t16 = load i32, ptr %l22, !tbaa !23
  store i32 %t16, ptr %l18, !tbaa !23
  br label %bb6
bb5:
  %t17 = load i32, ptr %l23, !tbaa !23
  %t18 = lshr i32 %t17, 16
  %t19 = and i32 %t17, 65535
  %t20 = icmp eq i32 %t18, 1
  %t21 = select i1 %t20, i32 1, i32 0
  %t22 = icmp eq i32 %t18, 2
  %t23 = select i1 %t22, i32 2, i32 %t21
  %t24 = icmp eq i32 %t17, 0
  %t25 = shl i32 %t23, 16
  %t26 = or i32 %t25, %t19
  %t27 = select i1 %t24, i32 0, i32 %t26
  call void @__olang_scope_close(ptr %s0)
  %t29 = insertvalue { i32, i32 } zeroinitializer, i32 %t27, 0
  store { i32, i32 } %t29, ptr %rv
  br label %ret
bb6:
  call void @__olang_scope_close(ptr %s0)
  %t30 = load i32, ptr %l18, !tbaa !23
  %t31 = insertvalue { i32, i32 } zeroinitializer, i32 %t30, 1
  store { i32, i32 } %t31, ptr %rv
  br label %ret
bb7:
  %t32 = load ptr, ptr %l1, !tbaa !29
  %t34 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3acursor_2eeat(ptr %v1, ptr %s0, ptr %t32, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d45, i32 0, i32 1) })
  store i1 %t34, ptr %l26
  br label %bb8
bb8:
  %t35 = load i1, ptr %l26, !tbaa !21
  br i1 %t35, label %bb9, label %bb10
bb9:
  %t36 = load ptr, ptr %l0, !tbaa !29
  %t37 = load ptr, ptr %l1, !tbaa !29
  %t38 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t42 = call { i32, i32 } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2ecanonFunc(ptr %v0, ptr %v1, ptr %t36, ptr %t37, i1 true, i32 %t38)
  %t43 = extractvalue { i32, i32 } %t42, 1
  %t44 = extractvalue { i32, i32 } %t42, 0
  store i32 %t44, ptr %l32
  %t45 = icmp ne i32 %t44, 0
  br i1 %t45, label %bb12, label %ok.46, !prof !99
ok.46:
  store i32 %t43, ptr %l31
  br label %bb11
bb10:
  br label %bb14
bb11:
  %t47 = load i32, ptr %l31, !tbaa !23
  store i32 %t47, ptr %l27, !tbaa !23
  br label %bb13
bb12:
  %t48 = load i32, ptr %l32, !tbaa !23
  %t49 = lshr i32 %t48, 16
  %t50 = and i32 %t48, 65535
  %t51 = icmp eq i32 %t49, 1
  %t52 = select i1 %t51, i32 1, i32 0
  %t53 = icmp eq i32 %t49, 2
  %t54 = select i1 %t53, i32 2, i32 %t52
  %t55 = icmp eq i32 %t48, 0
  %t56 = shl i32 %t54, 16
  %t57 = or i32 %t56, %t50
  %t58 = select i1 %t55, i32 0, i32 %t57
  call void @__olang_scope_close(ptr %s0)
  %t60 = insertvalue { i32, i32 } zeroinitializer, i32 %t58, 0
  store { i32, i32 } %t60, ptr %rv
  br label %ret
bb13:
  call void @__olang_scope_close(ptr %s0)
  %t61 = load i32, ptr %l27, !tbaa !23
  %t62 = insertvalue { i32, i32 } zeroinitializer, i32 %t61, 1
  store { i32, i32 } %t62, ptr %rv
  br label %ret
bb14:
  store %olang.scope zeroinitializer, ptr %s3
  %t63 = insertvalue [2 x i1] undef, i1 false, 0
  %t64 = insertvalue [2 x i1] %t63, i1 true, 1
  %t66 = call ptr @__olang_scope_alloc_a(ptr %s3, i64 2, i64 8)
  store [2 x i1] %t64, ptr %t66
  store ptr %t66, ptr %l2
  store i64 0, ptr %l3, !tbaa !24
  %t68 = load ptr, ptr %l2
  store i64 2, ptr %l4, !tbaa !24
  br label %bb15
bb15:
  store %olang.scope zeroinitializer, ptr %s4
  %t71 = load i64, ptr %l3, !tbaa !24
  %t72 = load i64, ptr %l4, !tbaa !24
  %t75 = icmp slt i64 %t71, %t72
  %t77 = xor i1 %t75, true
  br i1 %t77, label %bb16, label %bb17
bb16:
  call void @__olang_scope_close(ptr %s4)
  br label %bb37
bb17:
  br label %bb18
bb18:
  %t79 = load ptr, ptr %l2
  %t80 = load i64, ptr %l3, !tbaa !24
  %t83 = getelementptr [2 x i1], ptr %t79, i64 0, i64 %t80
  %t84 = load i1, ptr %t83, !tbaa !31
  store i1 %t84, ptr %l5, !tbaa !21
  %t86 = load ptr, ptr %l1, !tbaa !29
  store ptr %t86, ptr %l45, !tbaa !29
  %t87 = load i1, ptr %l5, !tbaa !21
  br i1 %t87, label %bb19, label %bb20
bb19:
  store { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d46, i32 0, i32 1) }, ptr %l47, !tbaa !27
  br label %bb21
bb20:
  store { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d47, i32 0, i32 1) }, ptr %l47, !tbaa !27
  br label %bb21
bb21:
  %t89 = load ptr, ptr %l45, !tbaa !29
  %t90 = load { i64, ptr }, ptr %l47, !tbaa !27
  %t91 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3acursor_2eeat(ptr %v1, ptr %s4, ptr %t89, { i64, ptr } %t90)
  store i1 %t91, ptr %l48
  br label %bb22
bb22:
  %t92 = load i1, ptr %l48, !tbaa !21
  %t93 = xor i1 %t92, true
  br i1 %t93, label %bb23, label %bb24
bb23:
  call void @__olang_scope_close(ptr %s4)
  br label %bb36
bb24:
  br label %bb25
bb25:
  %t95 = load ptr, ptr %l0, !tbaa !29
  %t96 = load ptr, ptr %l1, !tbaa !29
  %t99 = call { i32, i32 } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2ecanonType(ptr %v0, ptr %v1, ptr %t95, ptr %t96)
  %t100 = extractvalue { i32, i32 } %t99, 1
  %t101 = extractvalue { i32, i32 } %t99, 0
  store i32 %t101, ptr %l54
  %t102 = icmp ne i32 %t101, 0
  br i1 %t102, label %bb27, label %ok.103, !prof !99
ok.103:
  store i32 %t100, ptr %l53
  br label %bb26
bb26:
  %t104 = load i32, ptr %l53, !tbaa !23
  store i32 %t104, ptr %l50, !tbaa !23
  br label %bb28
bb27:
  %t105 = load i32, ptr %l54, !tbaa !23
  %t106 = lshr i32 %t105, 16
  %t107 = and i32 %t105, 65535
  %t108 = icmp eq i32 %t106, 1
  %t109 = select i1 %t108, i32 1, i32 0
  %t110 = icmp eq i32 %t106, 2
  %t111 = select i1 %t110, i32 2, i32 %t109
  %t112 = icmp eq i32 %t105, 0
  %t113 = shl i32 %t111, 16
  %t114 = or i32 %t113, %t107
  %t115 = select i1 %t112, i32 0, i32 %t114
  call void @__olang_scope_close(ptr %s4)
  call void @__olang_scope_close(ptr %s3)
  call void @__olang_scope_close(ptr %s0)
  %t117 = insertvalue { i32, i32 } zeroinitializer, i32 %t115, 0
  store { i32, i32 } %t117, ptr %rv
  br label %ret
bb28:
  %t118 = load i32, ptr %l50, !tbaa !23
  store i32 %t118, ptr %l6, !tbaa !23
  %t119 = load ptr, ptr %l1, !tbaa !29
  %t121 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3acursor_2eeat(ptr %v1, ptr %s4, ptr %t119, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d48, i32 0, i32 1) })
  store i1 %t121, ptr %l57
  br label %bb29
bb29:
  %t122 = load i1, ptr %l57, !tbaa !21
  %t123 = xor i1 %t122, true
  br i1 %t123, label %bb30, label %bb31
bb30:
  call void @__olang_scope_close(ptr %s4)
  call void @__olang_scope_close(ptr %s3)
  call void @__olang_scope_close(ptr %s0)
  %t126 = insertvalue { i32, i32 } zeroinitializer, i32 65536, 0
  store { i32, i32 } %t126, ptr %rv
  br label %ret
bb31:
  br label %bb32
bb32:
  %t127 = load ptr, ptr %l0, !tbaa !29
  %t128 = load ptr, ptr %l1, !tbaa !29
  %t129 = load i1, ptr %l5, !tbaa !21
  %t130 = load i32, ptr %l6, !tbaa !23
  %t135 = call { i32, i32 } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2ecanonFunc(ptr %v0, ptr %v1, ptr %t127, ptr %t128, i1 %t129, i32 %t130)
  %t136 = extractvalue { i32, i32 } %t135, 1
  %t137 = extractvalue { i32, i32 } %t135, 0
  store i32 %t137, ptr %l66
  %t138 = icmp ne i32 %t137, 0
  br i1 %t138, label %bb34, label %ok.139, !prof !99
ok.139:
  store i32 %t136, ptr %l65
  br label %bb33
bb33:
  %t140 = load i32, ptr %l65, !tbaa !23
  store i32 %t140, ptr %l60, !tbaa !23
  br label %bb35
bb34:
  %t141 = load i32, ptr %l66, !tbaa !23
  %t142 = lshr i32 %t141, 16
  %t143 = and i32 %t141, 65535
  %t144 = icmp eq i32 %t142, 1
  %t145 = select i1 %t144, i32 1, i32 0
  %t146 = icmp eq i32 %t142, 2
  %t147 = select i1 %t146, i32 2, i32 %t145
  %t148 = icmp eq i32 %t141, 0
  %t149 = shl i32 %t147, 16
  %t150 = or i32 %t149, %t143
  %t151 = select i1 %t148, i32 0, i32 %t150
  call void @__olang_scope_close(ptr %s4)
  call void @__olang_scope_close(ptr %s3)
  call void @__olang_scope_close(ptr %s0)
  %t153 = insertvalue { i32, i32 } zeroinitializer, i32 %t151, 0
  store { i32, i32 } %t153, ptr %rv
  br label %ret
bb35:
  call void @__olang_scope_close(ptr %s4)
  call void @__olang_scope_close(ptr %s3)
  call void @__olang_scope_close(ptr %s0)
  %t154 = load i32, ptr %l60, !tbaa !23
  %t155 = insertvalue { i32, i32 } zeroinitializer, i32 %t154, 1
  store { i32, i32 } %t155, ptr %rv
  br label %ret
bb36:
  %t156 = load i64, ptr %l3, !tbaa !24
  %t158 = add i64 %t156, 1
  store i64 %t158, ptr %l3, !tbaa !24
  br label %bb15
bb37:
  call void @__olang_scope_close(ptr %s3)
  %t160 = load ptr, ptr %l1, !tbaa !29
  %t162 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3acursor_2eeat(ptr %v1, ptr %s0, ptr %t160, { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d49, i32 0, i32 1) })
  store i1 %t162, ptr %l71
  br label %bb38
bb38:
  %t163 = load i1, ptr %l71, !tbaa !21
  br i1 %t163, label %bb39, label %bb40
bb39:
  store %olang.scope zeroinitializer, ptr %s8
  %t164 = load ptr, ptr %l0, !tbaa !29
  %t166 = getelementptr %"compiler/generic:Program", ptr %t164, i32 0, i32 2
  store ptr %t166, ptr %l73, !tbaa !29
  %t167 = load ptr, ptr %l0, !tbaa !29
  %t168 = load ptr, ptr %l1, !tbaa !29
  %t171 = call { i32, i32 } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2ecanonList(ptr %v0, ptr %v1, ptr %s8, ptr %t167, ptr %t168, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d50, i32 0, i32 1) })
  %t172 = extractvalue { i32, i32 } %t171, 1
  %t173 = extractvalue { i32, i32 } %t171, 0
  store i32 %t173, ptr %l78
  %t174 = icmp ne i32 %t173, 0
  br i1 %t174, label %bb42, label %ok.175, !prof !99
ok.175:
  store i32 %t172, ptr %l77
  br label %bb41
bb40:
  br label %bb45
bb41:
  %t176 = load i32, ptr %l77, !tbaa !23
  store i32 %t176, ptr %l74, !tbaa !23
  br label %bb43
bb42:
  %t177 = load i32, ptr %l78, !tbaa !23
  %t178 = lshr i32 %t177, 16
  %t179 = and i32 %t177, 65535
  %t180 = icmp eq i32 %t178, 1
  %t181 = select i1 %t180, i32 1, i32 0
  %t182 = icmp eq i32 %t178, 2
  %t183 = select i1 %t182, i32 2, i32 %t181
  %t184 = icmp eq i32 %t177, 0
  %t185 = shl i32 %t183, 16
  %t186 = or i32 %t185, %t179
  %t187 = select i1 %t184, i32 0, i32 %t186
  call void @__olang_scope_close(ptr %s8)
  call void @__olang_scope_close(ptr %s0)
  %t189 = insertvalue { i32, i32 } zeroinitializer, i32 %t187, 0
  store { i32, i32 } %t189, ptr %rv
  br label %ret
bb43:
  %t190 = load ptr, ptr %l73, !tbaa !29
  %t191 = load i32, ptr %l74, !tbaa !23
  %t192 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRecord(ptr %v0, ptr %t190, i32 %t191)
  store i32 %t192, ptr %l80
  br label %bb44
bb44:
  call void @__olang_scope_close(ptr %s8)
  call void @__olang_scope_close(ptr %s0)
  %t193 = load i32, ptr %l80, !tbaa !23
  %t194 = insertvalue { i32, i32 } zeroinitializer, i32 %t193, 1
  store { i32, i32 } %t194, ptr %rv
  br label %ret
bb45:
  %t195 = load ptr, ptr %l1, !tbaa !29
  %t197 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3acursor_2eeat(ptr %v1, ptr %s0, ptr %t195, { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d51, i32 0, i32 1) })
  store i1 %t197, ptr %l82
  br label %bb46
bb46:
  %t198 = load i1, ptr %l82, !tbaa !21
  br i1 %t198, label %bb47, label %bb48
bb47:
  %t199 = load ptr, ptr %l0, !tbaa !29
  %t200 = load ptr, ptr %l1, !tbaa !29
  %t203 = call { i32, i32 } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2ecanonEnum(ptr %v0, ptr %v1, ptr %t199, ptr %t200)
  %t204 = extractvalue { i32, i32 } %t203, 1
  %t205 = extractvalue { i32, i32 } %t203, 0
  store i32 %t205, ptr %l87
  %t206 = icmp ne i32 %t205, 0
  br i1 %t206, label %bb50, label %ok.207, !prof !99
ok.207:
  store i32 %t204, ptr %l86
  br label %bb49
bb48:
  br label %bb52
bb49:
  %t208 = load i32, ptr %l86, !tbaa !23
  store i32 %t208, ptr %l83, !tbaa !23
  br label %bb51
bb50:
  %t209 = load i32, ptr %l87, !tbaa !23
  %t210 = lshr i32 %t209, 16
  %t211 = and i32 %t209, 65535
  %t212 = icmp eq i32 %t210, 1
  %t213 = select i1 %t212, i32 1, i32 0
  %t214 = icmp eq i32 %t210, 2
  %t215 = select i1 %t214, i32 2, i32 %t213
  %t216 = icmp eq i32 %t209, 0
  %t217 = shl i32 %t215, 16
  %t218 = or i32 %t217, %t211
  %t219 = select i1 %t216, i32 0, i32 %t218
  call void @__olang_scope_close(ptr %s0)
  %t221 = insertvalue { i32, i32 } zeroinitializer, i32 %t219, 0
  store { i32, i32 } %t221, ptr %rv
  br label %ret
bb51:
  call void @__olang_scope_close(ptr %s0)
  %t222 = load i32, ptr %l83, !tbaa !23
  %t223 = insertvalue { i32, i32 } zeroinitializer, i32 %t222, 1
  store { i32, i32 } %t223, ptr %rv
  br label %ret
bb52:
  %t224 = load ptr, ptr %l1, !tbaa !29
  %t226 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3acursor_2eeat(ptr %v1, ptr %s0, ptr %t224, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d52, i32 0, i32 1) })
  store i1 %t226, ptr %l90
  br label %bb53
bb53:
  %t227 = load i1, ptr %l90, !tbaa !21
  br i1 %t227, label %bb54, label %bb55
bb54:
  store %olang.scope zeroinitializer, ptr %s10
  %t228 = load ptr, ptr %l0, !tbaa !29
  %t230 = getelementptr %"compiler/generic:Program", ptr %t228, i32 0, i32 2
  store ptr %t230, ptr %l92, !tbaa !29
  %t231 = load ptr, ptr %l0, !tbaa !29
  %t232 = load ptr, ptr %l1, !tbaa !29
  %t235 = call { i32, i32 } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2ecanonList(ptr %v0, ptr %v1, ptr %s10, ptr %t231, ptr %t232, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d53, i32 0, i32 1) })
  %t236 = extractvalue { i32, i32 } %t235, 1
  %t237 = extractvalue { i32, i32 } %t235, 0
  store i32 %t237, ptr %l97
  %t238 = icmp ne i32 %t237, 0
  br i1 %t238, label %bb57, label %ok.239, !prof !99
ok.239:
  store i32 %t236, ptr %l96
  br label %bb56
bb55:
  br label %bb60
bb56:
  %t240 = load i32, ptr %l96, !tbaa !23
  store i32 %t240, ptr %l93, !tbaa !23
  br label %bb58
bb57:
  %t241 = load i32, ptr %l97, !tbaa !23
  %t242 = lshr i32 %t241, 16
  %t243 = and i32 %t241, 65535
  %t244 = icmp eq i32 %t242, 1
  %t245 = select i1 %t244, i32 1, i32 0
  %t246 = icmp eq i32 %t242, 2
  %t247 = select i1 %t246, i32 2, i32 %t245
  %t248 = icmp eq i32 %t241, 0
  %t249 = shl i32 %t247, 16
  %t250 = or i32 %t249, %t243
  %t251 = select i1 %t248, i32 0, i32 %t250
  call void @__olang_scope_close(ptr %s10)
  call void @__olang_scope_close(ptr %s0)
  %t253 = insertvalue { i32, i32 } zeroinitializer, i32 %t251, 0
  store { i32, i32 } %t253, ptr %rv
  br label %ret
bb58:
  %t254 = load ptr, ptr %l92, !tbaa !29
  %t255 = load i32, ptr %l93, !tbaa !23
  %t256 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eTuple(ptr %v0, ptr %t254, i32 %t255)
  store i32 %t256, ptr %l99
  br label %bb59
bb59:
  call void @__olang_scope_close(ptr %s10)
  call void @__olang_scope_close(ptr %s0)
  %t257 = load i32, ptr %l99, !tbaa !23
  %t258 = insertvalue { i32, i32 } zeroinitializer, i32 %t257, 1
  store { i32, i32 } %t258, ptr %rv
  br label %ret
bb60:
  %t259 = load ptr, ptr %l1, !tbaa !29
  %t261 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3acursor_2eeat(ptr %v1, ptr %s0, ptr %t259, { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d54, i32 0, i32 1) })
  store i1 %t261, ptr %l101
  br label %bb61
bb61:
  %t262 = load i1, ptr %l101, !tbaa !21
  br i1 %t262, label %bb62, label %bb63
bb62:
  store %olang.scope zeroinitializer, ptr %s11
  %t263 = load ptr, ptr %l0, !tbaa !29
  %t264 = load ptr, ptr %l1, !tbaa !29
  %t267 = call { i32, i32 } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2ecanonType(ptr %v0, ptr %v1, ptr %t263, ptr %t264)
  %t268 = extractvalue { i32, i32 } %t267, 1
  %t269 = extractvalue { i32, i32 } %t267, 0
  store i32 %t269, ptr %l106
  %t270 = icmp ne i32 %t269, 0
  br i1 %t270, label %bb65, label %ok.271, !prof !99
ok.271:
  store i32 %t268, ptr %l105
  br label %bb64
bb63:
  br label %bb81
bb64:
  %t272 = load i32, ptr %l105, !tbaa !23
  store i32 %t272, ptr %l102, !tbaa !23
  br label %bb66
bb65:
  %t273 = load i32, ptr %l106, !tbaa !23
  %t274 = lshr i32 %t273, 16
  %t275 = and i32 %t273, 65535
  %t276 = icmp eq i32 %t274, 1
  %t277 = select i1 %t276, i32 1, i32 0
  %t278 = icmp eq i32 %t274, 2
  %t279 = select i1 %t278, i32 2, i32 %t277
  %t280 = icmp eq i32 %t273, 0
  %t281 = shl i32 %t279, 16
  %t282 = or i32 %t281, %t275
  %t283 = select i1 %t280, i32 0, i32 %t282
  call void @__olang_scope_close(ptr %s11)
  call void @__olang_scope_close(ptr %s0)
  %t285 = insertvalue { i32, i32 } zeroinitializer, i32 %t283, 0
  store { i32, i32 } %t285, ptr %rv
  br label %ret
bb66:
  %t286 = load i32, ptr %l102, !tbaa !23
  store i32 %t286, ptr %l7, !tbaa !23
  store i32 0, ptr %l8, !tbaa !23
  %t287 = load ptr, ptr %l1, !tbaa !29
  %t289 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3acursor_2eeat(ptr %v1, ptr %s11, ptr %t287, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d55, i32 0, i32 1) })
  store i1 %t289, ptr %l109
  br label %bb67
bb67:
  %t290 = load i1, ptr %l109, !tbaa !21
  br i1 %t290, label %bb68, label %bb69
bb68:
  store %olang.scope zeroinitializer, ptr %s12
  %t291 = load ptr, ptr %l0, !tbaa !29
  %t293 = getelementptr %"compiler/generic:Program", ptr %t291, i32 0, i32 2
  store ptr %t293, ptr %l111, !tbaa !29
  %t294 = load ptr, ptr %l0, !tbaa !29
  %t296 = getelementptr %"compiler/generic:Program", ptr %t294, i32 0, i32 2
  %t298 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePrim(ptr %v0, ptr %s12, ptr %t296, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d56, i32 0, i32 1) })
  store i32 %t298, ptr %l114
  br label %bb70
bb69:
  br label %bb75
bb70:
  %t299 = load ptr, ptr %l1, !tbaa !29
  %t301 = call { i32, i64 } @compiler_2fgeneric_2ecanonNumber(ptr %v1, ptr %t299)
  %t302 = extractvalue { i32, i64 } %t301, 1
  %t303 = extractvalue { i32, i64 } %t301, 0
  store i32 %t303, ptr %l118
  %t304 = icmp ne i32 %t303, 0
  br i1 %t304, label %bb72, label %ok.305, !prof !99
ok.305:
  store i64 %t302, ptr %l117
  br label %bb71
bb71:
  %t306 = load i64, ptr %l117, !tbaa !24
  store i64 %t306, ptr %l115, !tbaa !24
  br label %bb73
bb72:
  %t307 = load i32, ptr %l118, !tbaa !23
  %t308 = lshr i32 %t307, 16
  %t309 = and i32 %t307, 65535
  %t310 = icmp eq i32 %t308, 1
  %t311 = select i1 %t310, i32 1, i32 0
  %t312 = icmp eq i32 %t307, 0
  %t313 = shl i32 %t311, 16
  %t314 = or i32 %t313, %t309
  %t315 = select i1 %t312, i32 0, i32 %t314
  call void @__olang_scope_close(ptr %s12)
  call void @__olang_scope_close(ptr %s11)
  call void @__olang_scope_close(ptr %s0)
  %t317 = insertvalue { i32, i32 } zeroinitializer, i32 %t315, 0
  store { i32, i32 } %t317, ptr %rv
  br label %ret
bb73:
  %t318 = load ptr, ptr %l111, !tbaa !29
  %t319 = load i32, ptr %l114, !tbaa !23
  %t320 = load i64, ptr %l115, !tbaa !24
  %t321 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eConst(ptr %v0, ptr %t318, i32 %t319, i64 %t320)
  store i32 %t321, ptr %l120
  br label %bb74
bb74:
  %t322 = load i32, ptr %l120, !tbaa !23
  store i32 %t322, ptr %l8, !tbaa !23
  call void @__olang_scope_close(ptr %s12)
  br label %bb75
bb75:
  %t323 = load ptr, ptr %l1, !tbaa !29
  %t325 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3acursor_2eeat(ptr %v1, ptr %s11, ptr %t323, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d57, i32 0, i32 1) })
  store i1 %t325, ptr %l122
  br label %bb76
bb76:
  %t326 = load i1, ptr %l122, !tbaa !21
  %t327 = xor i1 %t326, true
  br i1 %t327, label %bb77, label %bb78
bb77:
  call void @__olang_scope_close(ptr %s11)
  call void @__olang_scope_close(ptr %s0)
  %t330 = insertvalue { i32, i32 } zeroinitializer, i32 65536, 0
  store { i32, i32 } %t330, ptr %rv
  br label %ret
bb78:
  br label %bb79
bb79:
  %t331 = load ptr, ptr %l0, !tbaa !29
  %t333 = getelementptr %"compiler/generic:Program", ptr %t331, i32 0, i32 2
  %t334 = load i32, ptr %l7, !tbaa !23
  %t335 = load i32, ptr %l8, !tbaa !23
  %t339 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eArray(ptr %v0, ptr %t333, i32 %t334, i32 %t335)
  store i32 %t339, ptr %l129
  br label %bb80
bb80:
  call void @__olang_scope_close(ptr %s11)
  call void @__olang_scope_close(ptr %s0)
  %t340 = load i32, ptr %l129, !tbaa !23
  %t341 = insertvalue { i32, i32 } zeroinitializer, i32 %t340, 1
  store { i32, i32 } %t341, ptr %rv
  br label %ret
bb81:
  %t342 = load ptr, ptr %l1, !tbaa !29
  %t344 = getelementptr %"compiler/generic:cursor", ptr %t342, i32 0, i32 1
  %t345 = load i64, ptr %t344, !tbaa !24
  store i64 %t345, ptr %l9, !tbaa !24
  br label %bb82
bb82:
  %t347 = load ptr, ptr %l1, !tbaa !29
  %t349 = getelementptr %"compiler/generic:cursor", ptr %t347, i32 0, i32 1
  %t350 = load i64, ptr %t349, !tbaa !24
  %t351 = load ptr, ptr %l1, !tbaa !29
  %t353 = getelementptr %"compiler/generic:cursor", ptr %t351, i32 0, i32 0
  %t354 = load { i64, ptr }, ptr %t353, !tbaa !27
  %t356 = extractvalue { i64, ptr } %t354, 0
  %t359 = icmp slt i64 %t350, %t356
  br i1 %t359, label %bb83, label %bb84
bb83:
  %t361 = load ptr, ptr %l1, !tbaa !29
  %t363 = call i8 @compiler_2fgeneric_2ecompiler_2fgeneric_3acursor_2epeek(ptr %v1, ptr %t361)
  store i8 %t363, ptr %l140
  br label %bb85
bb84:
  store i1 false, ptr %l138, !tbaa !21
  br label %bb87
bb85:
  %t364 = load i8, ptr %l140, !tbaa !22
  %t365 = call i1 @compiler_2fgeneric_2enameChar(i8 %t364)
  store i1 %t365, ptr %l141
  br label %bb86
bb86:
  %t366 = load i1, ptr %l141, !tbaa !21
  store i1 %t366, ptr %l138, !tbaa !21
  br label %bb87
bb87:
  %t367 = load i1, ptr %l138, !tbaa !21
  %t368 = xor i1 %t367, true
  br i1 %t368, label %bb88, label %bb89
bb88:
  br label %bb92
bb89:
  br label %bb90
bb90:
  %t370 = load ptr, ptr %l1, !tbaa !29
  store ptr %t370, ptr %l143, !tbaa !29
  %t371 = load ptr, ptr %l143, !tbaa !29
  %t372 = getelementptr %"compiler/generic:cursor", ptr %t371, i32 0, i32 1
  %t373 = load i64, ptr %t372, !tbaa !24
  %t375 = add i64 %t373, 1
  %t377 = load ptr, ptr %l143, !tbaa !29
  %t378 = getelementptr %"compiler/generic:cursor", ptr %t377, i32 0, i32 1
  store i64 %t375, ptr %t378, !tbaa !24
  br label %bb91
bb91:
  br label %bb82
bb92:
  %t379 = load ptr, ptr %l1, !tbaa !29
  %t381 = getelementptr %"compiler/generic:cursor", ptr %t379, i32 0, i32 0
  %t382 = load { i64, ptr }, ptr %t381, !tbaa !27
  store { i64, ptr } %t382, ptr %l147, !tbaa !27
  %t383 = load i64, ptr %l9, !tbaa !24
  store i64 %t383, ptr %l148, !tbaa !24
  %t384 = load ptr, ptr %l1, !tbaa !29
  %t386 = getelementptr %"compiler/generic:cursor", ptr %t384, i32 0, i32 1
  %t387 = load i64, ptr %t386, !tbaa !24
  store i64 %t387, ptr %l150, !tbaa !24
  %t388 = load { i64, ptr }, ptr %l147, !tbaa !27
  %t389 = extractvalue { i64, ptr } %t388, 0
  store i64 %t389, ptr %l151, !tbaa !24
  %t390 = load i64, ptr %l148, !tbaa !24
  %t391 = icmp sge i64 %t390, 0
  br i1 %t391, label %bb93, label %bb94
bb93:
  %t393 = load i64, ptr %l148, !tbaa !24
  %t394 = load i64, ptr %l150, !tbaa !24
  %t395 = icmp sle i64 %t393, %t394
  br i1 %t395, label %bb95, label %bb96
bb94:
  call void @__olang_check_failed(ptr @olang_loc_22c778cd655270ba_6d5936a0bf98512e)
  unreachable
bb95:
  %t397 = load i64, ptr %l150, !tbaa !24
  %t398 = load i64, ptr %l151, !tbaa !24
  %t399 = icmp sle i64 %t397, %t398
  br i1 %t399, label %bb97, label %bb98
bb96:
  call void @__olang_check_failed(ptr @olang_loc_22c778cd655270ba_6d5936a0bf98512e)
  unreachable
bb97:
  %t401 = getelementptr { i64, ptr }, ptr %l147, i32 0, i32 1
  %t402 = load ptr, ptr %t401, !tbaa !27
  %t403 = load i64, ptr %l148, !tbaa !24
  %t404 = load i64, ptr %l150, !tbaa !24
  %t405 = getelementptr i8, ptr %t402, i64 %t403
  %t406 = sub i64 %t404, %t403
  %t407 = insertvalue { i64, ptr } undef, i64 %t406, 0
  %t408 = insertvalue { i64, ptr } %t407, ptr %t405, 1
  store { i64, ptr } %t408, ptr %l10, !tbaa !27
  %t410 = load ptr, ptr %l1, !tbaa !29
  %t412 = call i8 @compiler_2fgeneric_2ecompiler_2fgeneric_3acursor_2epeek(ptr %v1, ptr %t410)
  store i8 %t412, ptr %l157
  br label %bb99
bb98:
  call void @__olang_check_failed(ptr @olang_loc_22c778cd655270ba_6d5936a0bf98512e)
  unreachable
bb99:
  %t413 = load i8, ptr %l157, !tbaa !22
  %t414 = icmp ne i8 %t413, 58
  br i1 %t414, label %bb100, label %bb101
bb100:
  store %olang.scope zeroinitializer, ptr %s15
  %t416 = load { i64, ptr }, ptr %l10, !tbaa !27
  %t418 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v1, ptr %s15, { i64, ptr } %t416, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d58, i32 0, i32 1) })
  store i1 %t418, ptr %l160
  br label %bb102
bb101:
  br label %bb118
bb102:
  %t419 = load i1, ptr %l160, !tbaa !21
  br i1 %t419, label %bb103, label %bb104
bb103:
  %t420 = load i32, ptr @G_2ecompiler_2ftypes_2eBoolT, !tbaa !23
  call void @__olang_scope_close(ptr %s15)
  call void @__olang_scope_close(ptr %s0)
  %t422 = insertvalue { i32, i32 } zeroinitializer, i32 %t420, 1
  store { i32, i32 } %t422, ptr %rv
  br label %ret
bb104:
  br label %bb105
bb105:
  %t423 = load { i64, ptr }, ptr %l10, !tbaa !27
  %t425 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v1, ptr %s15, { i64, ptr } %t423, { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d59, i32 0, i32 1) })
  store i1 %t425, ptr %l163
  br label %bb106
bb106:
  %t426 = load i1, ptr %l163, !tbaa !21
  br i1 %t426, label %bb107, label %bb108
bb107:
  %t427 = load i32, ptr @G_2ecompiler_2ftypes_2eDefaultErrT, !tbaa !23
  call void @__olang_scope_close(ptr %s15)
  call void @__olang_scope_close(ptr %s0)
  %t429 = insertvalue { i32, i32 } zeroinitializer, i32 %t427, 1
  store { i32, i32 } %t429, ptr %rv
  br label %ret
bb108:
  br label %bb109
bb109:
  %t430 = load { i64, ptr }, ptr %l10, !tbaa !27
  %t432 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v1, ptr %s15, { i64, ptr } %t430, { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d60, i32 0, i32 1) })
  store i1 %t432, ptr %l166
  br label %bb110
bb110:
  %t433 = load i1, ptr %l166, !tbaa !21
  br i1 %t433, label %bb111, label %bb112
bb111:
  %t434 = load i32, ptr @G_2ecompiler_2ftypes_2eNoreturnT, !tbaa !23
  call void @__olang_scope_close(ptr %s15)
  call void @__olang_scope_close(ptr %s0)
  %t436 = insertvalue { i32, i32 } zeroinitializer, i32 %t434, 1
  store { i32, i32 } %t436, ptr %rv
  br label %ret
bb112:
  br label %bb113
bb113:
  %t437 = load ptr, ptr %l0, !tbaa !29
  %t439 = getelementptr %"compiler/generic:Program", ptr %t437, i32 0, i32 2
  %t440 = load { i64, ptr }, ptr %l10, !tbaa !27
  %t443 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePrim(ptr %v0, ptr %v1, ptr %t439, { i64, ptr } %t440)
  store i32 %t443, ptr %l171
  br label %bb114
bb114:
  %t444 = load i32, ptr %l171, !tbaa !23
  store i32 %t444, ptr %l11, !tbaa !23
  %t445 = load i32, ptr %l11, !tbaa !23
  %t446 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t449 = icmp eq i32 %t445, %t446
  br i1 %t449, label %bb115, label %bb116
bb115:
  call void @__olang_scope_close(ptr %s15)
  call void @__olang_scope_close(ptr %s0)
  %t452 = insertvalue { i32, i32 } zeroinitializer, i32 65536, 0
  store { i32, i32 } %t452, ptr %rv
  br label %ret
bb116:
  br label %bb117
bb117:
  %t453 = load i32, ptr %l11, !tbaa !23
  call void @__olang_scope_close(ptr %s15)
  call void @__olang_scope_close(ptr %s0)
  %t455 = insertvalue { i32, i32 } zeroinitializer, i32 %t453, 1
  store { i32, i32 } %t455, ptr %rv
  br label %ret
bb118:
  %t456 = load ptr, ptr %l1, !tbaa !29
  store ptr %t456, ptr %l177, !tbaa !29
  %t457 = load ptr, ptr %l177, !tbaa !29
  %t458 = getelementptr %"compiler/generic:cursor", ptr %t457, i32 0, i32 1
  %t459 = load i64, ptr %t458, !tbaa !24
  %t461 = add i64 %t459, 1
  %t463 = load ptr, ptr %l177, !tbaa !29
  %t464 = getelementptr %"compiler/generic:cursor", ptr %t463, i32 0, i32 1
  store i64 %t461, ptr %t464, !tbaa !24
  %t465 = load ptr, ptr %l1, !tbaa !29
  %t467 = getelementptr %"compiler/generic:cursor", ptr %t465, i32 0, i32 1
  %t468 = load i64, ptr %t467, !tbaa !24
  store i64 %t468, ptr %l12, !tbaa !24
  br label %bb119
bb119:
  %t470 = load ptr, ptr %l1, !tbaa !29
  %t472 = getelementptr %"compiler/generic:cursor", ptr %t470, i32 0, i32 1
  %t473 = load i64, ptr %t472, !tbaa !24
  %t474 = load ptr, ptr %l1, !tbaa !29
  %t476 = getelementptr %"compiler/generic:cursor", ptr %t474, i32 0, i32 0
  %t477 = load { i64, ptr }, ptr %t476, !tbaa !27
  %t479 = extractvalue { i64, ptr } %t477, 0
  %t482 = icmp slt i64 %t473, %t479
  br i1 %t482, label %bb120, label %bb121
bb120:
  %t484 = load ptr, ptr %l1, !tbaa !29
  %t486 = call i8 @compiler_2fgeneric_2ecompiler_2fgeneric_3acursor_2epeek(ptr %v1, ptr %t484)
  store i8 %t486, ptr %l190
  br label %bb122
bb121:
  store i1 false, ptr %l188, !tbaa !21
  br label %bb124
bb122:
  %t487 = load i8, ptr %l190, !tbaa !22
  %t488 = call i1 @compiler_2fgeneric_2enameChar(i8 %t487)
  store i1 %t488, ptr %l191
  br label %bb123
bb123:
  %t489 = load i1, ptr %l191, !tbaa !21
  store i1 %t489, ptr %l188, !tbaa !21
  br label %bb124
bb124:
  %t490 = load i1, ptr %l188, !tbaa !21
  br i1 %t490, label %bb125, label %bb126
bb125:
  %t491 = load ptr, ptr %l1, !tbaa !29
  %t493 = call i8 @compiler_2fgeneric_2ecompiler_2fgeneric_3acursor_2epeek(ptr %v1, ptr %t491)
  store i8 %t493, ptr %l194
  br label %bb127
bb126:
  store i1 false, ptr %l192, !tbaa !21
  br label %bb128
bb127:
  %t494 = load i8, ptr %l194, !tbaa !22
  %t495 = icmp ne i8 %t494, 47
  store i1 %t495, ptr %l192, !tbaa !21
  br label %bb128
bb128:
  %t497 = load i1, ptr %l192, !tbaa !21
  br i1 %t497, label %bb129, label %bb130
bb129:
  %t498 = load ptr, ptr %l1, !tbaa !29
  %t500 = call i8 @compiler_2fgeneric_2ecompiler_2fgeneric_3acursor_2epeek(ptr %v1, ptr %t498)
  store i8 %t500, ptr %l198
  br label %bb131
bb130:
  store i1 false, ptr %l196, !tbaa !21
  br label %bb132
bb131:
  %t501 = load i8, ptr %l198, !tbaa !22
  %t502 = icmp ne i8 %t501, 46
  store i1 %t502, ptr %l196, !tbaa !21
  br label %bb132
bb132:
  %t504 = load i1, ptr %l196, !tbaa !21
  %t505 = xor i1 %t504, true
  br i1 %t505, label %bb133, label %bb134
bb133:
  br label %bb137
bb134:
  br label %bb135
bb135:
  %t507 = load ptr, ptr %l1, !tbaa !29
  store ptr %t507, ptr %l201, !tbaa !29
  %t508 = load ptr, ptr %l201, !tbaa !29
  %t509 = getelementptr %"compiler/generic:cursor", ptr %t508, i32 0, i32 1
  %t510 = load i64, ptr %t509, !tbaa !24
  %t512 = add i64 %t510, 1
  %t514 = load ptr, ptr %l201, !tbaa !29
  %t515 = getelementptr %"compiler/generic:cursor", ptr %t514, i32 0, i32 1
  store i64 %t512, ptr %t515, !tbaa !24
  br label %bb136
bb136:
  br label %bb119
bb137:
  %t516 = load ptr, ptr %l0, !tbaa !29
  store ptr %t516, ptr %l205, !tbaa !29
  %t517 = load { i64, ptr }, ptr %l10, !tbaa !27
  store { i64, ptr } %t517, ptr %l206, !tbaa !27
  %t518 = load ptr, ptr %l1, !tbaa !29
  %t520 = getelementptr %"compiler/generic:cursor", ptr %t518, i32 0, i32 0
  %t521 = load { i64, ptr }, ptr %t520, !tbaa !27
  store { i64, ptr } %t521, ptr %l208, !tbaa !27
  %t522 = load i64, ptr %l12, !tbaa !24
  store i64 %t522, ptr %l209, !tbaa !24
  %t523 = load ptr, ptr %l1, !tbaa !29
  %t525 = getelementptr %"compiler/generic:cursor", ptr %t523, i32 0, i32 1
  %t526 = load i64, ptr %t525, !tbaa !24
  store i64 %t526, ptr %l211, !tbaa !24
  %t527 = load { i64, ptr }, ptr %l208, !tbaa !27
  %t528 = extractvalue { i64, ptr } %t527, 0
  store i64 %t528, ptr %l212, !tbaa !24
  %t529 = load i64, ptr %l209, !tbaa !24
  %t530 = icmp sge i64 %t529, 0
  br i1 %t530, label %bb138, label %bb139
bb138:
  %t532 = load i64, ptr %l209, !tbaa !24
  %t533 = load i64, ptr %l211, !tbaa !24
  %t534 = icmp sle i64 %t532, %t533
  br i1 %t534, label %bb140, label %bb141
bb139:
  call void @__olang_check_failed(ptr @olang_loc_55983e17b45d1397_8723e16cd5d53a2b)
  unreachable
bb140:
  %t536 = load i64, ptr %l211, !tbaa !24
  %t537 = load i64, ptr %l212, !tbaa !24
  %t538 = icmp sle i64 %t536, %t537
  br i1 %t538, label %bb142, label %bb143
bb141:
  call void @__olang_check_failed(ptr @olang_loc_55983e17b45d1397_8723e16cd5d53a2b)
  unreachable
bb142:
  %t540 = getelementptr { i64, ptr }, ptr %l208, i32 0, i32 1
  %t541 = load ptr, ptr %t540, !tbaa !27
  %t542 = load i64, ptr %l209, !tbaa !24
  %t543 = load i64, ptr %l211, !tbaa !24
  %t544 = getelementptr i8, ptr %t541, i64 %t542
  %t545 = sub i64 %t543, %t542
  %t546 = insertvalue { i64, ptr } undef, i64 %t545, 0
  %t547 = insertvalue { i64, ptr } %t546, ptr %t544, 1
  %t548 = load ptr, ptr %l205, !tbaa !29
  %t549 = load { i64, ptr }, ptr %l206, !tbaa !27
  %t551 = call { i32, i32 } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFindDecl(ptr %v0, ptr %v1, ptr %v1, ptr %t548, { i64, ptr } %t549, { i64, ptr } %t547)
  %t552 = extractvalue { i32, i32 } %t551, 1
  %t553 = extractvalue { i32, i32 } %t551, 0
  store i32 %t553, ptr %l218
  %t554 = icmp ne i32 %t553, 0
  br i1 %t554, label %bb145, label %ok.555, !prof !99
ok.555:
  store i32 %t552, ptr %l217
  br label %bb144
bb143:
  call void @__olang_check_failed(ptr @olang_loc_55983e17b45d1397_8723e16cd5d53a2b)
  unreachable
bb144:
  %t556 = load i32, ptr %l217, !tbaa !23
  store i32 %t556, ptr %l204, !tbaa !23
  br label %bb146
bb145:
  %t557 = load i32, ptr %l218, !tbaa !23
  %t558 = lshr i32 %t557, 16
  %t559 = and i32 %t557, 65535
  %t560 = icmp eq i32 %t558, 1
  %t561 = select i1 %t560, i32 2, i32 0
  %t562 = icmp eq i32 %t557, 0
  %t563 = shl i32 %t561, 16
  %t564 = or i32 %t563, %t559
  %t565 = select i1 %t562, i32 0, i32 %t564
  call void @__olang_scope_close(ptr %s0)
  %t567 = insertvalue { i32, i32 } zeroinitializer, i32 %t565, 0
  store { i32, i32 } %t567, ptr %rv
  br label %ret
bb146:
  %t568 = load i32, ptr %l204, !tbaa !23
  store i32 %t568, ptr %l13, !tbaa !23
  %t569 = load ptr, ptr %l1, !tbaa !29
  %t571 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3acursor_2eeat(ptr %v1, ptr %s0, ptr %t569, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d61, i32 0, i32 1) })
  store i1 %t571, ptr %l221
  br label %bb147
bb147:
  %t572 = load i1, ptr %l221, !tbaa !21
  %t573 = xor i1 %t572, true
  br i1 %t573, label %bb148, label %bb149
bb148:
  %t575 = load ptr, ptr %l0, !tbaa !29
  %t576 = load i32, ptr %l13, !tbaa !23
  %t579 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eInstance(ptr %v0, ptr %t575, i32 %t576, i32 0)
  store i32 %t579, ptr %l225
  br label %bb150
bb149:
  br label %bb151
bb150:
  call void @__olang_scope_close(ptr %s0)
  %t580 = load i32, ptr %l225, !tbaa !23
  %t581 = insertvalue { i32, i32 } zeroinitializer, i32 %t580, 1
  store { i32, i32 } %t581, ptr %rv
  br label %ret
bb151:
  %t582 = load ptr, ptr %l0, !tbaa !29
  %t583 = load i32, ptr %l13, !tbaa !23
  call void @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2edeclVars(ptr %v0, ptr %t582, i32 %t583)
  br label %bb152
bb152:
  %t586 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2ector(ptr %s0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t586, ptr %l228
  br label %bb153
bb153:
  %t587 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l228
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t587, ptr %l14
  br label %bb154
bb154:
  store %olang.scope zeroinitializer, ptr %s22
  %t589 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2eLen_3ccompiler_2ftypes_3aTypeId_3e(ptr %s0, ptr %l14)
  store i64 %t589, ptr %l230
  br label %bb155
bb155:
  %t590 = load i64, ptr %l230, !tbaa !24
  store i64 %t590, ptr %l231, !tbaa !24
  %t592 = load ptr, ptr %l0, !tbaa !29
  %t594 = getelementptr %"compiler/generic:Program", ptr %t592, i32 0, i32 2
  %t595 = load i32, ptr %l13, !tbaa !23
  %t598 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclParams(ptr %v0, ptr %t594, i32 %t595)
  store i64 %t598, ptr %l235
  br label %bb156
bb156:
  %t599 = load i64, ptr %l231, !tbaa !24
  %t600 = load i64, ptr %l235, !tbaa !24
  %t601 = icmp sge i64 %t599, %t600
  br i1 %t601, label %bb157, label %bb158
bb157:
  call void @__olang_scope_close(ptr %s22)
  call void @__olang_scope_close(ptr %s0)
  %t604 = insertvalue { i32, i32 } zeroinitializer, i32 65536, 0
  store { i32, i32 } %t604, ptr %rv
  br label %ret
bb158:
  br label %bb159
bb159:
  store ptr %l14, ptr %l238, !tbaa !29
  %t605 = load ptr, ptr %l0, !tbaa !29
  %t606 = load ptr, ptr %l1, !tbaa !29
  %t609 = call { i32, i32 } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2ecanonType(ptr %v0, ptr %v1, ptr %t605, ptr %t606)
  %t610 = extractvalue { i32, i32 } %t609, 1
  %t611 = extractvalue { i32, i32 } %t609, 0
  store i32 %t611, ptr %l243
  %t612 = icmp ne i32 %t611, 0
  br i1 %t612, label %bb161, label %ok.613, !prof !99
ok.613:
  store i32 %t610, ptr %l242
  br label %bb160
bb160:
  %t614 = load i32, ptr %l242, !tbaa !23
  store i32 %t614, ptr %l239, !tbaa !23
  br label %bb162
bb161:
  %t615 = load i32, ptr %l243, !tbaa !23
  %t616 = lshr i32 %t615, 16
  %t617 = and i32 %t615, 65535
  %t618 = icmp eq i32 %t616, 1
  %t619 = select i1 %t618, i32 1, i32 0
  %t620 = icmp eq i32 %t616, 2
  %t621 = select i1 %t620, i32 2, i32 %t619
  %t622 = icmp eq i32 %t615, 0
  %t623 = shl i32 %t621, 16
  %t624 = or i32 %t623, %t617
  %t625 = select i1 %t622, i32 0, i32 %t624
  call void @__olang_scope_close(ptr %s22)
  call void @__olang_scope_close(ptr %s0)
  %t627 = insertvalue { i32, i32 } zeroinitializer, i32 %t625, 0
  store { i32, i32 } %t627, ptr %rv
  br label %ret
bb162:
  %t628 = load ptr, ptr %l238, !tbaa !29
  %t629 = load i32, ptr %l239, !tbaa !23
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2ePush_3ccompiler_2ftypes_3aTypeId_3e(ptr %s0, ptr %t628, i32 %t629)
  br label %bb163
bb163:
  %t630 = load ptr, ptr %l1, !tbaa !29
  %t632 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3acursor_2eeat(ptr %v1, ptr %s22, ptr %t630, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d62, i32 0, i32 1) })
  store i1 %t632, ptr %l246
  br label %bb164
bb164:
  %t633 = load i1, ptr %l246, !tbaa !21
  br i1 %t633, label %bb165, label %bb166
bb165:
  call void @__olang_scope_close(ptr %s22)
  br label %bb173
bb166:
  br label %bb167
bb167:
  %t634 = load ptr, ptr %l1, !tbaa !29
  %t636 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3acursor_2eeat(ptr %v1, ptr %s22, ptr %t634, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d63, i32 0, i32 1) })
  store i1 %t636, ptr %l248
  br label %bb168
bb168:
  %t637 = load i1, ptr %l248, !tbaa !21
  %t638 = xor i1 %t637, true
  br i1 %t638, label %bb169, label %bb170
bb169:
  call void @__olang_scope_close(ptr %s22)
  call void @__olang_scope_close(ptr %s0)
  %t641 = insertvalue { i32, i32 } zeroinitializer, i32 65536, 0
  store { i32, i32 } %t641, ptr %rv
  br label %ret
bb170:
  br label %bb171
bb171:
  call void @__olang_scope_close(ptr %s22)
  br label %bb172
bb172:
  br label %bb154
bb173:
  %t642 = load ptr, ptr %l0, !tbaa !29
  store ptr %t642, ptr %l251, !tbaa !29
  %t643 = load i32, ptr %l13, !tbaa !23
  store i32 %t643, ptr %l252, !tbaa !23
  %t644 = load ptr, ptr %l0, !tbaa !29
  %t646 = getelementptr %"compiler/generic:Program", ptr %t644, i32 0, i32 2
  store ptr %t646, ptr %l254, !tbaa !29
  %t648 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2eToArray_3ccompiler_2ftypes_3aTypeId_3e(ptr %s0, ptr %s0, ptr %l14)
  store { i64, ptr } %t648, ptr %l256
  br label %bb174
bb174:
  %t649 = load ptr, ptr %l254, !tbaa !29
  %t650 = load { i64, ptr }, ptr %l256, !tbaa !27
  %t651 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eList(ptr %v0, ptr %s0, ptr %t649, { i64, ptr } %t650)
  store i32 %t651, ptr %l257
  br label %bb175
bb175:
  %t652 = load ptr, ptr %l251, !tbaa !29
  %t653 = load i32, ptr %l252, !tbaa !23
  %t654 = load i32, ptr %l257, !tbaa !23
  %t655 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eInstance(ptr %v0, ptr %t652, i32 %t653, i32 %t654)
  store i32 %t655, ptr %l258
  br label %bb176
bb176:
  call void @__olang_scope_close(ptr %s0)
  %t656 = load i32, ptr %l258, !tbaa !23
  %t657 = insertvalue { i32, i32 } zeroinitializer, i32 %t656, 1
  store { i32, i32 } %t657, ptr %rv
  br label %ret
ret:
  %rr = load { i32, i32 }, ptr %rv
  ret { i32, i32 } %rr
}

define dso_local { i32, i32 } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2ecanonList(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, { i64, ptr } %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca { i64, ptr }
  %l3 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l4 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l7 = alloca i1
  %l9 = alloca ptr
  %l10 = alloca i32
  %l13 = alloca i32
  %l14 = alloca i32
  %l18 = alloca i1
  %l20 = alloca i1
  %l24 = alloca ptr
  %l26 = alloca { i64, ptr }
  %l27 = alloca i32
  %s0 = alloca %olang.scope
  %s2 = alloca %olang.scope
  %rv = alloca { i32, i32 }
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store { i64, ptr } %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2ector(ptr %s0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1, ptr %l4
  br label %bb1
bb1:
  %t2 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l4
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t2, ptr %l3
  %t3 = load ptr, ptr %l1, !tbaa !29
  %t4 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t7 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3acursor_2eeat(ptr %v1, ptr %v2, ptr %t3, { i64, ptr } %t4)
  store i1 %t7, ptr %l7
  br label %bb2
bb2:
  %t8 = load i1, ptr %l7, !tbaa !21
  br i1 %t8, label %bb3, label %bb4
bb3:
  call void @__olang_scope_close(ptr %s0)
  %t10 = insertvalue { i32, i32 } zeroinitializer, i32 0, 1
  store { i32, i32 } %t10, ptr %rv
  br label %ret
bb4:
  br label %bb5
bb5:
  br label %bb6
bb6:
  store %olang.scope zeroinitializer, ptr %s2
  store ptr %l3, ptr %l9, !tbaa !29
  %t11 = load ptr, ptr %l0, !tbaa !29
  %t12 = load ptr, ptr %l1, !tbaa !29
  %t15 = call { i32, i32 } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2ecanonType(ptr %v0, ptr %v1, ptr %t11, ptr %t12)
  %t16 = extractvalue { i32, i32 } %t15, 1
  %t17 = extractvalue { i32, i32 } %t15, 0
  store i32 %t17, ptr %l14
  %t18 = icmp ne i32 %t17, 0
  br i1 %t18, label %bb8, label %ok.19, !prof !99
ok.19:
  store i32 %t16, ptr %l13
  br label %bb7
bb7:
  %t20 = load i32, ptr %l13, !tbaa !23
  store i32 %t20, ptr %l10, !tbaa !23
  br label %bb9
bb8:
  %t21 = load i32, ptr %l14, !tbaa !23
  %t22 = lshr i32 %t21, 16
  %t23 = and i32 %t21, 65535
  %t24 = icmp eq i32 %t22, 1
  %t25 = select i1 %t24, i32 1, i32 0
  %t26 = icmp eq i32 %t22, 2
  %t27 = select i1 %t26, i32 2, i32 %t25
  %t28 = icmp eq i32 %t21, 0
  %t29 = shl i32 %t27, 16
  %t30 = or i32 %t29, %t23
  %t31 = select i1 %t28, i32 0, i32 %t30
  call void @__olang_scope_close(ptr %s2)
  call void @__olang_scope_close(ptr %s0)
  %t33 = insertvalue { i32, i32 } zeroinitializer, i32 %t31, 0
  store { i32, i32 } %t33, ptr %rv
  br label %ret
bb9:
  %t34 = load ptr, ptr %l9, !tbaa !29
  %t35 = load i32, ptr %l10, !tbaa !23
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2ePush_3ccompiler_2ftypes_3aTypeId_3e(ptr %s0, ptr %t34, i32 %t35)
  br label %bb10
bb10:
  %t36 = load ptr, ptr %l1, !tbaa !29
  %t37 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t40 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3acursor_2eeat(ptr %v1, ptr %v2, ptr %t36, { i64, ptr } %t37)
  store i1 %t40, ptr %l18
  br label %bb11
bb11:
  %t41 = load i1, ptr %l18, !tbaa !21
  br i1 %t41, label %bb12, label %bb13
bb12:
  call void @__olang_scope_close(ptr %s2)
  br label %bb20
bb13:
  br label %bb14
bb14:
  %t42 = load ptr, ptr %l1, !tbaa !29
  %t44 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3acursor_2eeat(ptr %v1, ptr %s2, ptr %t42, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d64, i32 0, i32 1) })
  store i1 %t44, ptr %l20
  br label %bb15
bb15:
  %t45 = load i1, ptr %l20, !tbaa !21
  %t46 = xor i1 %t45, true
  br i1 %t46, label %bb16, label %bb17
bb16:
  call void @__olang_scope_close(ptr %s2)
  call void @__olang_scope_close(ptr %s0)
  %t49 = insertvalue { i32, i32 } zeroinitializer, i32 65536, 0
  store { i32, i32 } %t49, ptr %rv
  br label %ret
bb17:
  br label %bb18
bb18:
  call void @__olang_scope_close(ptr %s2)
  br label %bb19
bb19:
  br label %bb6
bb20:
  %t50 = load ptr, ptr %l0, !tbaa !29
  %t52 = getelementptr %"compiler/generic:Program", ptr %t50, i32 0, i32 2
  store ptr %t52, ptr %l24, !tbaa !29
  %t54 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2eToArray_3ccompiler_2ftypes_3aTypeId_3e(ptr %s0, ptr %s0, ptr %l3)
  store { i64, ptr } %t54, ptr %l26
  br label %bb21
bb21:
  %t55 = load ptr, ptr %l24, !tbaa !29
  %t56 = load { i64, ptr }, ptr %l26, !tbaa !27
  %t57 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eList(ptr %v0, ptr %s0, ptr %t55, { i64, ptr } %t56)
  store i32 %t57, ptr %l27
  br label %bb22
bb22:
  call void @__olang_scope_close(ptr %s0)
  %t58 = load i32, ptr %l27, !tbaa !23
  %t59 = insertvalue { i32, i32 } zeroinitializer, i32 %t58, 1
  store { i32, i32 } %t59, ptr %rv
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
  %l71 = alloca i32
  %l73 = alloca ptr
  %l77 = alloca i64
  %l85 = alloca %"compiler/generic:pattern"
  %l90 = alloca i1
  %l97 = alloca { i64, ptr }
  %l102 = alloca i1
  %l103 = alloca i64
  %l107 = alloca i64
  %l108 = alloca i32
  %l113 = alloca i32
  %l115 = alloca ptr
  %l116 = alloca i32
  %l120 = alloca i64
  %l121 = alloca i32
  %l124 = alloca i64
  %l126 = alloca i64
  %l131 = alloca %"compiler/generic:ConstAsk"
  %l134 = alloca i1
  %l141 = alloca i64
  %l147 = alloca i64
  %l153 = alloca %"std/prelude/map:MapIter.bf5835bb10600fe6a7fc1da14a6360d9"
  %l154 = alloca %"std/prelude/map:MapEntry.91de8c8eb84d52d1e58996aec31d85aa"
  %l156 = alloca %"std/prelude/map:MapEntry.91de8c8eb84d52d1e58996aec31d85aa"
  %l157 = alloca i32
  %l159 = alloca i1
  %l162 = alloca { i64, ptr }
  %l165 = alloca { i64, ptr }
  %l171 = alloca ptr
  %l181 = alloca %"compiler/generic:ConstAsk"
  %l183 = alloca i32
  %s2 = alloca %olang.scope
  %s3 = alloca %olang.scope
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
  store %olang.scope zeroinitializer, ptr %s3
  %t76 = load ptr, ptr %l4, !tbaa !29
  %t78 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v2, ptr %t76)
  store %"compiler/source:Span" %t78, ptr %l58
  br label %bb25
bb24:
  br label %bb30
bb25:
  %t79 = load %"compiler/source:Span", ptr %l58
  store %"compiler/source:Span" %t79, ptr %l5
  %t80 = load ptr, ptr %l0, !tbaa !29
  %t82 = getelementptr %"compiler/generic:Program", ptr %t80, i32 0, i32 2
  %t83 = load ptr, ptr %l1, !tbaa !29
  %t85 = getelementptr %"compiler/generic:Context", ptr %t83, i32 0, i32 1
  %t86 = load i64, ptr %t85, !tbaa !24
  %t87 = load ptr, ptr %l1, !tbaa !29
  %t89 = getelementptr %"compiler/generic:Context", ptr %t87, i32 0, i32 0
  %t90 = load i64, ptr %t89, !tbaa !24
  %t91 = getelementptr %"compiler/source:Span", ptr %l5, i32 0, i32 0
  %t92 = load i32, ptr %t91, !tbaa !23
  %t93 = getelementptr %"compiler/source:Span", ptr %l5, i32 0, i32 1
  %t94 = load i32, ptr %t93, !tbaa !23
  %t95 = load i32, ptr %l3, !tbaa !23
  %t97 = sext i32 %t95 to i64
  %t99 = call i64 @__olang_fmt_i64(ptr null, i64 %t86)
  %t100 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d65, i32 0, i32 1) }, 1
  %t101 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d65, i32 0, i32 1) }, 0
  %t102 = add i64 %t99, %t101
  %t104 = call i64 @__olang_fmt_i64(ptr null, i64 %t90)
  %t105 = add i64 %t102, %t104
  %t106 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d65, i32 0, i32 1) }, 1
  %t107 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d65, i32 0, i32 1) }, 0
  %t108 = add i64 %t105, %t107
  %t110 = sext i32 %t92 to i64
  %t111 = call i64 @__olang_fmt_i64(ptr null, i64 %t110)
  %t112 = add i64 %t108, %t111
  %t113 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d65, i32 0, i32 1) }, 1
  %t114 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d65, i32 0, i32 1) }, 0
  %t115 = add i64 %t112, %t114
  %t117 = sext i32 %t94 to i64
  %t118 = call i64 @__olang_fmt_i64(ptr null, i64 %t117)
  %t119 = add i64 %t115, %t118
  %t120 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d65, i32 0, i32 1) }, 1
  %t121 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d65, i32 0, i32 1) }, 0
  %t122 = add i64 %t119, %t121
  %t124 = call i64 @__olang_fmt_i64(ptr null, i64 %t97)
  %t125 = add i64 %t122, %t124
  %t126 = call ptr @__olang_scope_alloc(ptr %s3, i64 %t125)
  %t127 = call i64 @__olang_fmt_i64(ptr %t126, i64 %t86)
  %t128 = getelementptr i8, ptr %t126, i64 %t99
  call void @olang_textcopy(ptr %t128, ptr %t100, i64 %t101)
  %t129 = getelementptr i8, ptr %t128, i64 %t101
  %t130 = call i64 @__olang_fmt_i64(ptr %t129, i64 %t90)
  %t131 = getelementptr i8, ptr %t129, i64 %t104
  call void @olang_textcopy(ptr %t131, ptr %t106, i64 %t107)
  %t132 = getelementptr i8, ptr %t131, i64 %t107
  %t133 = call i64 @__olang_fmt_i64(ptr %t132, i64 %t110)
  %t134 = getelementptr i8, ptr %t132, i64 %t111
  call void @olang_textcopy(ptr %t134, ptr %t113, i64 %t114)
  %t135 = getelementptr i8, ptr %t134, i64 %t114
  %t136 = call i64 @__olang_fmt_i64(ptr %t135, i64 %t117)
  %t137 = getelementptr i8, ptr %t135, i64 %t118
  call void @olang_textcopy(ptr %t137, ptr %t120, i64 %t121)
  %t138 = getelementptr i8, ptr %t137, i64 %t121
  %t139 = call i64 @__olang_fmt_i64(ptr %t138, i64 %t97)
  %t140 = insertvalue { i64, ptr } undef, i64 %t125, 0
  %t141 = insertvalue { i64, ptr } %t140, ptr %t126, 1
  %t143 = extractvalue { i64, ptr } %t141, 0
  %t144 = extractvalue { i64, ptr } %t141, 1
  %t145 = mul i64 %t143, 1
  %t146 = call ptr @__olang_scope_alloc(ptr %s3, i64 %t145)
  call void @llvm.memcpy.p0.p0.i64(ptr %t146, ptr %t144, i64 %t145, i1 false)
  %t147 = insertvalue { i64, ptr } undef, i64 %t143, 0
  %t148 = insertvalue { i64, ptr } %t147, ptr %t146, 1
  %t151 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eConstExpr(ptr %v0, ptr %s3, ptr %t82, { i64, ptr } %t148)
  store i32 %t151, ptr %l71
  br label %bb26
bb26:
  %t152 = load i32, ptr %l71, !tbaa !23
  store i32 %t152, ptr %l6, !tbaa !23
  %t153 = load ptr, ptr %l0, !tbaa !29
  %t155 = getelementptr %"compiler/generic:Program", ptr %t153, i32 0, i32 28
  store ptr %t155, ptr %l73, !tbaa !29
  %t156 = load ptr, ptr %l0, !tbaa !29
  %t158 = getelementptr %"compiler/generic:Program", ptr %t156, i32 0, i32 2
  %t159 = load i32, ptr %l6, !tbaa !23
  %t162 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eA(ptr %v0, ptr %t158, i32 %t159)
  store i64 %t162, ptr %l77
  br label %bb27
bb27:
  %t163 = load ptr, ptr %l4, !tbaa !29
  %t165 = load ptr, ptr %l1, !tbaa !29
  %t167 = getelementptr %"compiler/generic:Context", ptr %t165, i32 0, i32 0
  %t168 = load i64, ptr %t167, !tbaa !24
  %t169 = load ptr, ptr %l1, !tbaa !29
  %t171 = getelementptr %"compiler/generic:Context", ptr %t169, i32 0, i32 1
  %t172 = load i64, ptr %t171, !tbaa !24
  %t173 = load i32, ptr %l3, !tbaa !23
  %t178 = call %"compiler/generic:pattern" @compiler_2fgeneric_3apattern_2ector(ptr %v2, ptr %v0, ptr %v0, ptr %t163, i64 %t168, i64 %t172, i32 %t173, ptr null)
  store %"compiler/generic:pattern" %t178, ptr %l85
  br label %bb28
bb28:
  %t179 = load ptr, ptr %l73, !tbaa !29
  %t180 = load i64, ptr %l77, !tbaa !24
  %t181 = load %"compiler/generic:pattern", ptr %l85
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2fgeneric_3apattern__Hf2f2cd44709958e8fc0de9f437e62e6b(ptr %v0, ptr %v0, ptr %t179, i64 %t180, %"compiler/generic:pattern" %t181)
  br label %bb29
bb29:
  %t182 = load i32, ptr %l6, !tbaa !23
  call void @__olang_scope_close(ptr %s3)
  store i32 %t182, ptr %rv
  br label %ret
bb30:
  %t184 = getelementptr %"compiler/generic:folded", ptr %l2, i32 0, i32 0
  %t185 = load i64, ptr %t184, !tbaa !24
  %t186 = load i64, ptr @G_2ecompiler_2fgeneric_2eUnfolded, !tbaa !24
  %t189 = icmp eq i64 %t185, %t186
  br i1 %t189, label %bb31, label %bb32
bb31:
  %t191 = load ptr, ptr %l4, !tbaa !29
  %t193 = icmp eq ptr %t191, null
  %t195 = xor i1 %t193, true
  store i1 %t195, ptr %l90, !tbaa !21
  br label %bb33
bb32:
  store i1 false, ptr %l90, !tbaa !21
  br label %bb33
bb33:
  %t197 = load i1, ptr %l90, !tbaa !21
  br i1 %t197, label %bb34, label %bb35
bb34:
  %t198 = load ptr, ptr %l0, !tbaa !29
  %t199 = load ptr, ptr %l1, !tbaa !29
  %t200 = load ptr, ptr %l4, !tbaa !29
  %t204 = call { i64, ptr } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eLengthKey(ptr %v0, ptr %v1, ptr %v2, ptr %v0, ptr %t198, ptr %t199, ptr %t200)
  store { i64, ptr } %t204, ptr %l97
  br label %bb36
bb35:
  br label %bb85
bb36:
  %t205 = load { i64, ptr }, ptr %l97, !tbaa !27
  %t206 = extractvalue { i64, ptr } %t205, 0
  %t207 = extractvalue { i64, ptr } %t205, 1
  %t208 = mul i64 %t206, 1
  %t209 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t208)
  call void @llvm.memcpy.p0.p0.i64(ptr %t209, ptr %t207, i64 %t208, i1 false)
  %t210 = insertvalue { i64, ptr } undef, i64 %t206, 0
  %t211 = insertvalue { i64, ptr } %t210, ptr %t209, 1
  store { i64, ptr } %t211, ptr %l7, !tbaa !27
  %t213 = load ptr, ptr %l0, !tbaa !29
  %t215 = getelementptr %"compiler/generic:Program", ptr %t213, i32 0, i32 54
  %t216 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t219 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_H9b83f66eba65594537030636cb0b52b7(ptr %v0, ptr %v0, ptr %t215, { i64, ptr } %t216)
  store i1 %t219, ptr %l102
  br label %bb37
bb37:
  %t220 = load i1, ptr %l102, !tbaa !21
  br i1 %t220, label %bb38, label %bb39
bb38:
  %t221 = load ptr, ptr %l0, !tbaa !29
  %t223 = getelementptr %"compiler/generic:Program", ptr %t221, i32 0, i32 54
  %t224 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t227 = call { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_H9162e3b7f03fcbf954b681204d5f6cca(ptr %v0, ptr %v0, ptr %t223, { i64, ptr } %t224)
  %t228 = extractvalue { i32, i64 } %t227, 1
  %t229 = extractvalue { i32, i64 } %t227, 0
  store i32 %t229, ptr %l108
  %t230 = icmp ne i32 %t229, 0
  br i1 %t230, label %bb41, label %ok.231, !prof !99
ok.231:
  store i64 %t228, ptr %l107
  br label %bb40
bb39:
  br label %bb49
bb40:
  %t232 = load i64, ptr %l107, !tbaa !24
  store i64 %t232, ptr %l103, !tbaa !24
  br label %bb43
bb41:
  br label %bb42
bb42:
  %t233 = load i64, ptr @G_2ecompiler_2fgeneric_2eRunTimeLength, !tbaa !24
  store i64 %t233, ptr %l103, !tbaa !24
  br label %bb43
bb43:
  %t235 = load i64, ptr %l103, !tbaa !24
  store i64 %t235, ptr %l8, !tbaa !24
  %t236 = load i64, ptr %l8, !tbaa !24
  %t237 = load i64, ptr @G_2ecompiler_2fgeneric_2eRunTimeLength, !tbaa !24
  %t240 = icmp eq i64 %t236, %t237
  br i1 %t240, label %bb44, label %bb45
bb44:
  store i32 0, ptr %l113, !tbaa !23
  br label %bb48
bb45:
  %t242 = load ptr, ptr %l0, !tbaa !29
  %t244 = getelementptr %"compiler/generic:Program", ptr %t242, i32 0, i32 2
  store ptr %t244, ptr %l115, !tbaa !29
  %t245 = load i32, ptr %l3, !tbaa !23
  store i32 %t245, ptr %l116, !tbaa !23
  %t246 = load ptr, ptr %l0, !tbaa !29
  %t247 = load i64, ptr %l8, !tbaa !24
  %t248 = load i32, ptr %l3, !tbaa !23
  %t252 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2ewrap(ptr %v0, ptr %t246, i64 %t247, i32 %t248)
  store i64 %t252, ptr %l120
  br label %bb46
bb46:
  %t253 = load ptr, ptr %l115, !tbaa !29
  %t254 = load i32, ptr %l116, !tbaa !23
  %t255 = load i64, ptr %l120, !tbaa !24
  %t256 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eConst(ptr %v0, ptr %t253, i32 %t254, i64 %t255)
  store i32 %t256, ptr %l121
  br label %bb47
bb47:
  %t257 = load i32, ptr %l121, !tbaa !23
  store i32 %t257, ptr %l113, !tbaa !23
  br label %bb48
bb48:
  %t258 = load i32, ptr %l113, !tbaa !23
  store i32 %t258, ptr %rv
  br label %ret
bb49:
  store i1 false, ptr %l9, !tbaa !21
  %t259 = load ptr, ptr %l0, !tbaa !29
  %t261 = getelementptr %"compiler/generic:Program", ptr %t259, i32 0, i32 55
  store ptr %t261, ptr %l10, !tbaa !29
  store i64 0, ptr %l11, !tbaa !24
  br label %bb50
bb50:
  %t263 = load i64, ptr %l11, !tbaa !24
  store i64 %t263, ptr %l124, !tbaa !24
  %t264 = load ptr, ptr %l10, !tbaa !29
  %t266 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fgeneric_3aConstAsk_3e_2eLen_H192b02349624a37821a23e7def80c714(ptr %v0, ptr %t264)
  store i64 %t266, ptr %l126
  br label %bb51
bb51:
  %t267 = load i64, ptr %l124, !tbaa !24
  %t268 = load i64, ptr %l126, !tbaa !24
  %t269 = icmp slt i64 %t267, %t268
  %t271 = xor i1 %t269, true
  br i1 %t271, label %bb52, label %bb53
bb52:
  br label %bb61
bb53:
  br label %bb54
bb54:
  %t273 = load ptr, ptr %l10, !tbaa !29
  %t274 = load i64, ptr %l11, !tbaa !24
  %t277 = call %"compiler/generic:ConstAsk" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fgeneric_3aConstAsk_3e_2eAt__H3f4459851a287fa27378a94ef8fff763(ptr %v0, ptr %v0, ptr %t273, i64 %t274)
  store %"compiler/generic:ConstAsk" %t277, ptr %l131
  br label %bb55
bb55:
  %t278 = load %"compiler/generic:ConstAsk", ptr %l131
  store %"compiler/generic:ConstAsk" %t278, ptr %l12
  %t279 = getelementptr %"compiler/generic:ConstAsk", ptr %l12, i32 0, i32 6
  %t280 = load { i64, ptr }, ptr %t279, !tbaa !27
  %t281 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t284 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %v0, { i64, ptr } %t280, { i64, ptr } %t281)
  store i1 %t284, ptr %l134
  br label %bb56
bb56:
  %t285 = load i1, ptr %l134, !tbaa !21
  br i1 %t285, label %bb57, label %bb58
bb57:
  store i1 true, ptr %l9, !tbaa !21
  br label %bb59
bb58:
  br label %bb59
bb59:
  br label %bb60
bb60:
  %t286 = load i64, ptr %l11, !tbaa !24
  %t288 = add i64 %t286, 1
  store i64 %t288, ptr %l11, !tbaa !24
  br label %bb50
bb61:
  %t290 = load i1, ptr %l9, !tbaa !21
  %t292 = xor i1 %t290, true
  br i1 %t292, label %bb62, label %bb63
bb62:
  %t294 = load ptr, ptr %l1, !tbaa !29
  %t296 = getelementptr %"compiler/generic:Context", ptr %t294, i32 0, i32 2
  %t298 = call i64 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fsource_3aNameId_2c_20compil_H0e73c22773457b60eb954c2c4a2643e9(ptr %v1, ptr %t296)
  store i64 %t298, ptr %l141
  br label %bb64
bb63:
  br label %bb84
bb64:
  %t299 = load i64, ptr %l141, !tbaa !24
  %t300 = icmp sge i64 %t299, 0
  br i1 %t300, label %bb65, label %bb66
bb65:
  %t302 = load i64, ptr %l141, !tbaa !24
  %t303 = icmp sle i64 %t302, 2305843009213693951
  br i1 %t303, label %bb67, label %bb68
bb66:
  call void @__olang_check_failed(ptr @olang_loc_846e8cf19a14b6db_3af1bf273e789227)
  unreachable
bb67:
  %t305 = load i64, ptr %l141, !tbaa !24
  %t306 = mul i64 %t305, 4
  %t307 = call ptr @__olang_scope_alloc_zeroed(ptr %v0, i64 %t306)
  %t308 = insertvalue { i64, ptr } undef, i64 %t305, 0
  %t309 = insertvalue { i64, ptr } %t308, ptr %t307, 1
  store { i64, ptr } %t309, ptr %l13, !tbaa !27
  %t311 = load ptr, ptr %l1, !tbaa !29
  %t313 = getelementptr %"compiler/generic:Context", ptr %t311, i32 0, i32 2
  %t315 = call i64 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fsource_3aNameId_2c_20compil_H0e73c22773457b60eb954c2c4a2643e9(ptr %v1, ptr %t313)
  store i64 %t315, ptr %l147
  br label %bb69
bb68:
  call void @__olang_check_failed(ptr @olang_loc_846e8cf19a14b6db_3af1bf273e789227)
  unreachable
bb69:
  %t316 = load i64, ptr %l147, !tbaa !24
  %t317 = icmp sge i64 %t316, 0
  br i1 %t317, label %bb70, label %bb71
bb70:
  %t319 = load i64, ptr %l147, !tbaa !24
  %t320 = icmp sle i64 %t319, 2305843009213693951
  br i1 %t320, label %bb72, label %bb73
bb71:
  call void @__olang_check_failed(ptr @olang_loc_7486412f18d83346_49a9869342f97632)
  unreachable
bb72:
  %t322 = load i64, ptr %l147, !tbaa !24
  %t323 = mul i64 %t322, 4
  %t324 = call ptr @__olang_scope_alloc_zeroed(ptr %v0, i64 %t323)
  %t325 = insertvalue { i64, ptr } undef, i64 %t322, 0
  %t326 = insertvalue { i64, ptr } %t325, ptr %t324, 1
  store { i64, ptr } %t326, ptr %l14, !tbaa !27
  store i64 0, ptr %l15, !tbaa !24
  %t328 = load ptr, ptr %l1, !tbaa !29
  %t330 = getelementptr %"compiler/generic:Context", ptr %t328, i32 0, i32 2
  %t332 = call %"std/prelude/map:MapIter.bf5835bb10600fe6a7fc1da14a6360d9" @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fsource_3aNameId_2c_20compil_Ha72624ba64524ee3315305b5d1bfb369(ptr %v1, ptr %v1, ptr %t330)
  store %"std/prelude/map:MapIter.bf5835bb10600fe6a7fc1da14a6360d9" %t332, ptr %l153
  br label %bb74
bb73:
  call void @__olang_check_failed(ptr @olang_loc_7486412f18d83346_49a9869342f97632)
  unreachable
bb74:
  %t333 = load %"std/prelude/map:MapIter.bf5835bb10600fe6a7fc1da14a6360d9", ptr %l153
  store %"std/prelude/map:MapIter.bf5835bb10600fe6a7fc1da14a6360d9" %t333, ptr %l16
  br label %bb75
bb75:
  %t335 = call { i32, %"std/prelude/map:MapEntry.91de8c8eb84d52d1e58996aec31d85aa" } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMapIter_3ccompiler_2fsource_3aNameId_2c_20co_H6cf169b12565f300e9fe11f1c8d55061(ptr %v1, ptr %l16)
  %t336 = extractvalue { i32, %"std/prelude/map:MapEntry.91de8c8eb84d52d1e58996aec31d85aa" } %t335, 1
  %t337 = extractvalue { i32, %"std/prelude/map:MapEntry.91de8c8eb84d52d1e58996aec31d85aa" } %t335, 0
  store i32 %t337, ptr %l157
  %t338 = icmp ne i32 %t337, 0
  br i1 %t338, label %bb77, label %ok.339, !prof !99
ok.339:
  store %"std/prelude/map:MapEntry.91de8c8eb84d52d1e58996aec31d85aa" %t336, ptr %l156
  br label %bb76
bb76:
  %t340 = load %"std/prelude/map:MapEntry.91de8c8eb84d52d1e58996aec31d85aa", ptr %l156
  store %"std/prelude/map:MapEntry.91de8c8eb84d52d1e58996aec31d85aa" %t340, ptr %l154
  br label %bb79
bb77:
  %t341 = load i32, ptr %l157, !tbaa !23
  %t342 = ashr i32 %t341, 16
  %t344 = icmp eq i32 %t342, 1
  store i1 %t344, ptr %l159, !tbaa !21
  br label %bb78
bb78:
  br label %bb81
bb79:
  %t345 = load %"std/prelude/map:MapEntry.91de8c8eb84d52d1e58996aec31d85aa", ptr %l154
  store %"std/prelude/map:MapEntry.91de8c8eb84d52d1e58996aec31d85aa" %t345, ptr %l17
  %t346 = getelementptr %"std/prelude/map:MapEntry.91de8c8eb84d52d1e58996aec31d85aa", ptr %l17, i32 0, i32 0
  %t347 = load i32, ptr %t346, !tbaa !23
  %t349 = getelementptr %"std/prelude/map:MapEntry.91de8c8eb84d52d1e58996aec31d85aa", ptr %l17, i32 0, i32 1
  %t350 = load i32, ptr %t349, !tbaa !23
  %t352 = load { i64, ptr }, ptr %l13, !tbaa !27
  store { i64, ptr } %t352, ptr %l162, !tbaa !27
  %t353 = load i64, ptr %l15, !tbaa !24
  %t357 = getelementptr { i64, ptr }, ptr %l162, i32 0, i32 1
  %t358 = load ptr, ptr %t357, !tbaa !27
  %t359 = getelementptr i32, ptr %t358, i64 %t353
  store i32 %t347, ptr %t359, !tbaa !33
  %t360 = load { i64, ptr }, ptr %l14, !tbaa !27
  store { i64, ptr } %t360, ptr %l165, !tbaa !27
  %t361 = load i64, ptr %l15, !tbaa !24
  %t365 = getelementptr { i64, ptr }, ptr %l165, i32 0, i32 1
  %t366 = load ptr, ptr %t365, !tbaa !27
  %t367 = getelementptr i32, ptr %t366, i64 %t361
  store i32 %t350, ptr %t367, !tbaa !33
  %t368 = load i64, ptr %l15, !tbaa !24
  %t370 = add i64 %t368, 1
  store i64 %t370, ptr %l15, !tbaa !24
  br label %bb80
bb80:
  br label %bb75
bb81:
  %t372 = load ptr, ptr %l0, !tbaa !29
  %t374 = getelementptr %"compiler/generic:Program", ptr %t372, i32 0, i32 55
  store ptr %t374, ptr %l171, !tbaa !29
  %t375 = load ptr, ptr %l1, !tbaa !29
  %t377 = getelementptr %"compiler/generic:Context", ptr %t375, i32 0, i32 0
  %t378 = load i64, ptr %t377, !tbaa !24
  %t379 = load ptr, ptr %l4, !tbaa !29
  %t380 = load i32, ptr %l3, !tbaa !23
  %t381 = load ptr, ptr %l1, !tbaa !29
  %t383 = getelementptr %"compiler/generic:Context", ptr %t381, i32 0, i32 1
  %t384 = load i64, ptr %t383, !tbaa !24
  %t385 = load { i64, ptr }, ptr %l13, !tbaa !27
  %t386 = load { i64, ptr }, ptr %l14, !tbaa !27
  %t387 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t395 = call %"compiler/generic:ConstAsk" @compiler_2fgeneric_3aConstAsk_2ector(ptr %v2, ptr %v0, ptr %v0, ptr %v0, ptr %v0, i64 %t378, ptr %t379, i32 %t380, i64 %t384, { i64, ptr } %t385, { i64, ptr } %t386, { i64, ptr } %t387)
  store %"compiler/generic:ConstAsk" %t395, ptr %l181
  br label %bb82
bb82:
  %t396 = load ptr, ptr %l171, !tbaa !29
  %t397 = load %"compiler/generic:ConstAsk", ptr %l181
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fgeneric_3aConstAsk_3e_2ePus_H9314813d35e39659e36ddfdc05758427(ptr %v0, ptr %v0, ptr %t396, %"compiler/generic:ConstAsk" %t397)
  br label %bb83
bb83:
  br label %bb84
bb84:
  br label %bb85
bb85:
  %t398 = load ptr, ptr %l0, !tbaa !29
  %t400 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eUnknownConst(ptr %v0, ptr %t398)
  store i32 %t400, ptr %l183
  br label %bb86
bb86:
  %t401 = load i32, ptr %l183, !tbaa !23
  store i32 %t401, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
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

define dso_local i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2edeclaresEq(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca ptr
  %l3 = alloca i32
  %l7 = alloca i32
  %l8 = alloca i1
  %l9 = alloca i1
  %l10 = alloca ptr
  %l11 = alloca i32
  %l15 = alloca i32
  %l16 = alloca i1
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
  store ptr %t1, ptr %l2, !tbaa !29
  %t2 = load i32, ptr %l1, !tbaa !23
  store i32 %t2, ptr %l3, !tbaa !23
  %t3 = load ptr, ptr %l0, !tbaa !29
  %t5 = getelementptr %"compiler/generic:Program", ptr %t3, i32 0, i32 0
  %t6 = load ptr, ptr %t5, !tbaa !29
  %t8 = getelementptr %"compiler/load:Loader", ptr %t6, i32 0, i32 3
  %t9 = load ptr, ptr %t8, !tbaa !29
  %t11 = call i32 @compiler_2fsource_2ecompiler_2fsource_3aNames_2eIntern(ptr %v0, ptr %s0, ptr %t9, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d66, i32 0, i32 1) })
  store i32 %t11, ptr %l7
  br label %bb1
bb1:
  %t12 = load ptr, ptr %l2, !tbaa !29
  %t13 = load i32, ptr %l3, !tbaa !23
  %t14 = load i32, ptr %l7, !tbaa !23
  %t15 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eownMethod(ptr %v0, ptr %t12, i32 %t13, i32 %t14)
  store i1 %t15, ptr %l8
  br label %bb2
bb2:
  %t16 = load i1, ptr %l8, !tbaa !21
  br i1 %t16, label %bb3, label %bb4
bb3:
  store i1 true, ptr %l9, !tbaa !21
  br label %bb7
bb4:
  %t17 = load ptr, ptr %l0, !tbaa !29
  store ptr %t17, ptr %l10, !tbaa !29
  %t18 = load i32, ptr %l1, !tbaa !23
  store i32 %t18, ptr %l11, !tbaa !23
  %t19 = load ptr, ptr %l0, !tbaa !29
  %t21 = getelementptr %"compiler/generic:Program", ptr %t19, i32 0, i32 0
  %t22 = load ptr, ptr %t21, !tbaa !29
  %t24 = getelementptr %"compiler/load:Loader", ptr %t22, i32 0, i32 3
  %t25 = load ptr, ptr %t24, !tbaa !29
  %t27 = call i32 @compiler_2fsource_2ecompiler_2fsource_3aNames_2eIntern(ptr %v0, ptr %s0, ptr %t25, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d67, i32 0, i32 1) })
  store i32 %t27, ptr %l15
  br label %bb5
bb5:
  %t28 = load ptr, ptr %l10, !tbaa !29
  %t29 = load i32, ptr %l11, !tbaa !23
  %t30 = load i32, ptr %l15, !tbaa !23
  %t31 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eownMethod(ptr %v0, ptr %t28, i32 %t29, i32 %t30)
  store i1 %t31, ptr %l16
  br label %bb6
bb6:
  %t32 = load i1, ptr %l16, !tbaa !21
  store i1 %t32, ptr %l9, !tbaa !21
  br label %bb7
bb7:
  call void @__olang_scope_close(ptr %s0)
  %t33 = load i1, ptr %l9, !tbaa !21
  store i1 %t33, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
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

define dso_local %"compiler/generic:folded" @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eevalUnary(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, i32 %a2, ptr %a3) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca i32
  %l4 = alloca %"compiler/generic:folded"
  %l8 = alloca %"compiler/generic:folded"
  %l13 = alloca %"compiler/generic:folded"
  %l16 = alloca i64
  %l21 = alloca i64
  %l23 = alloca %"compiler/generic:folded"
  %l26 = alloca i64
  %l31 = alloca i64
  %l33 = alloca %"compiler/generic:folded"
  %l40 = alloca %"compiler/generic:folded"
  %l41 = alloca %"compiler/generic:folded"
  %s0 = alloca %olang.scope
  %rv = alloca %"compiler/generic:folded"
  store ptr %a0, ptr %l0
  store i32 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t7 = call %"compiler/generic:folded" @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eeval(ptr %v0, ptr %v1, ptr %v2, ptr %t1, ptr %a1, ptr %a3)
  store %"compiler/generic:folded" %t7, ptr %l8
  br label %bb1
bb1:
  %t8 = load %"compiler/generic:folded", ptr %l8
  store %"compiler/generic:folded" %t8, ptr %l4
  %t9 = getelementptr %"compiler/generic:folded", ptr %l4, i32 0, i32 0
  %t10 = load i64, ptr %t9, !tbaa !24
  %t11 = load i64, ptr @G_2ecompiler_2fgeneric_2eFolded, !tbaa !24
  %t14 = icmp ne i64 %t10, %t11
  br i1 %t14, label %bb2, label %bb3
bb2:
  %t16 = load %"compiler/generic:folded", ptr %l4
  call void @__olang_scope_close(ptr %s0)
  store %"compiler/generic:folded" %t16, ptr %rv
  br label %ret
bb3:
  br label %bb4
bb4:
  %t18 = load i32, ptr %l2, !range !{i32 0, i32 114}
  %t20 = trunc i64 69 to i32
  %t21 = icmp eq i32 %t18, %t20
  br i1 %t21, label %bb5, label %bb6
bb5:
  br label %bb7
bb6:
  br label %bb10
bb7:
  %t23 = load i64, ptr @G_2ecompiler_2fgeneric_2eFolded, !tbaa !24
  store i64 %t23, ptr %l16, !tbaa !24
  %t24 = load ptr, ptr %l0, !tbaa !29
  %t25 = getelementptr %"compiler/generic:folded", ptr %l4, i32 0, i32 1
  %t26 = load i64, ptr %t25, !tbaa !24
  %t28 = sub i64 0, %t26
  %t29 = getelementptr %"compiler/generic:folded", ptr %l4, i32 0, i32 2
  %t30 = load i32, ptr %t29, !tbaa !23
  %t34 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2ewrap(ptr %v0, ptr %t24, i64 %t28, i32 %t30)
  store i64 %t34, ptr %l21
  br label %bb8
bb8:
  %t35 = getelementptr %"compiler/generic:folded", ptr %l4, i32 0, i32 2
  %t36 = load i32, ptr %t35, !tbaa !23
  %t37 = load i64, ptr %l16, !tbaa !24
  %t38 = load i64, ptr %l21, !tbaa !24
  %t40 = call %"compiler/generic:folded" @compiler_2fgeneric_3afolded_2ector(ptr %s0, i64 %t37, i64 %t38, i32 %t36)
  store %"compiler/generic:folded" %t40, ptr %l23
  br label %bb9
bb9:
  %t41 = load %"compiler/generic:folded", ptr %l23
  store %"compiler/generic:folded" %t41, ptr %l13
  br label %bb27
bb10:
  %t42 = load i32, ptr %l2, !range !{i32 0, i32 114}
  %t44 = trunc i64 104 to i32
  %t45 = icmp eq i32 %t42, %t44
  br i1 %t45, label %bb11, label %bb12
bb11:
  br label %bb13
bb12:
  br label %bb16
bb13:
  %t47 = load i64, ptr @G_2ecompiler_2fgeneric_2eFolded, !tbaa !24
  store i64 %t47, ptr %l26, !tbaa !24
  %t48 = load ptr, ptr %l0, !tbaa !29
  %t49 = getelementptr %"compiler/generic:folded", ptr %l4, i32 0, i32 1
  %t50 = load i64, ptr %t49, !tbaa !24
  %t52 = xor i64 %t50, -1
  %t53 = getelementptr %"compiler/generic:folded", ptr %l4, i32 0, i32 2
  %t54 = load i32, ptr %t53, !tbaa !23
  %t58 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2ewrap(ptr %v0, ptr %t48, i64 %t52, i32 %t54)
  store i64 %t58, ptr %l31
  br label %bb14
bb14:
  %t59 = getelementptr %"compiler/generic:folded", ptr %l4, i32 0, i32 2
  %t60 = load i32, ptr %t59, !tbaa !23
  %t61 = load i64, ptr %l26, !tbaa !24
  %t62 = load i64, ptr %l31, !tbaa !24
  %t64 = call %"compiler/generic:folded" @compiler_2fgeneric_3afolded_2ector(ptr %s0, i64 %t61, i64 %t62, i32 %t60)
  store %"compiler/generic:folded" %t64, ptr %l33
  br label %bb15
bb15:
  %t65 = load %"compiler/generic:folded", ptr %l33
  store %"compiler/generic:folded" %t65, ptr %l13
  br label %bb27
bb16:
  %t66 = load i32, ptr %l2, !range !{i32 0, i32 114}
  %t68 = trunc i64 48 to i32
  %t69 = icmp eq i32 %t66, %t68
  br i1 %t69, label %bb17, label %bb18
bb17:
  br label %bb19
bb18:
  br label %bb21
bb19:
  %t71 = load i64, ptr @G_2ecompiler_2fgeneric_2eFolded, !tbaa !24
  %t72 = getelementptr %"compiler/generic:folded", ptr %l4, i32 0, i32 1
  %t73 = load i64, ptr %t72, !tbaa !24
  %t75 = sub i64 1, %t73
  %t76 = load i32, ptr @G_2ecompiler_2ftypes_2eBoolT, !tbaa !23
  %t80 = call %"compiler/generic:folded" @compiler_2fgeneric_3afolded_2ector(ptr %s0, i64 %t71, i64 %t75, i32 %t76)
  store %"compiler/generic:folded" %t80, ptr %l40
  br label %bb20
bb20:
  %t81 = load %"compiler/generic:folded", ptr %l40
  store %"compiler/generic:folded" %t81, ptr %l13
  br label %bb27
bb21:
  br i1 true, label %bb22, label %bb23
bb22:
  br label %bb24
bb23:
  br label %bb26
bb24:
  %t82 = call %"compiler/generic:folded" @compiler_2fgeneric_2efolded_2eunfolded()
  store %"compiler/generic:folded" %t82, ptr %l41
  br label %bb25
bb25:
  %t83 = load %"compiler/generic:folded", ptr %l41
  store %"compiler/generic:folded" %t83, ptr %l13
  br label %bb27
bb26:
  call void @__olang_check_failed(ptr @olang_loc_5392f566c0fc8331_15db183dd26dbb85)
  unreachable
bb27:
  call void @__olang_scope_close(ptr %s0)
  %t84 = load %"compiler/generic:folded", ptr %l13
  store %"compiler/generic:folded" %t84, ptr %rv
  br label %ret
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

define dso_local i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2efold(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, ptr %a2, i32 %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l4 = alloca ptr
  %l5 = alloca ptr
  %l9 = alloca %"compiler/generic:folded"
  %l13 = alloca i32
  %rv = alloca i32
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store ptr %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1, ptr %l4, !tbaa !29
  %t2 = load ptr, ptr %l1, !tbaa !29
  store ptr %t2, ptr %l5, !tbaa !29
  %t3 = load ptr, ptr %l0, !tbaa !29
  %t4 = load ptr, ptr %l1, !tbaa !29
  %t5 = load ptr, ptr %l2, !tbaa !29
  %t9 = call %"compiler/generic:folded" @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eeval(ptr %v0, ptr %v1, ptr %v2, ptr %t3, ptr %t4, ptr %t5)
  store %"compiler/generic:folded" %t9, ptr %l9
  br label %bb1
bb1:
  %t11 = load ptr, ptr %l2, !tbaa !29
  %t13 = load ptr, ptr %l4, !tbaa !29
  %t14 = load ptr, ptr %l5, !tbaa !29
  %t15 = load %"compiler/generic:folded", ptr %l9
  %t18 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2econstOf(ptr %v0, ptr %v1, ptr %v2, ptr %t13, ptr %t14, %"compiler/generic:folded" %t15, i32 %a3, ptr %t11)
  store i32 %t18, ptr %l13
  br label %bb2
bb2:
  %t19 = load i32, ptr %l13, !tbaa !23
  store i32 %t19, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local ptr @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eglobalInIf(ptr %v0, ptr %v1, ptr %v2, ptr %a0, i64 %a1, ptr %a2, i64 %a3, i64 %a4, i32 %a5) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca ptr
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i32
  %l9 = alloca i1
  %l19 = alloca ptr
  %l20 = alloca i64
  %l29 = alloca ptr
  %l34 = alloca ptr
  %l35 = alloca i64
  %l45 = alloca ptr
  %l50 = alloca i1
  %l55 = alloca ptr
  %l56 = alloca i64
  %l65 = alloca ptr
  %rv = alloca ptr
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  store ptr %a2, ptr %l2
  store i64 %a3, ptr %l3
  store i64 %a4, ptr %l4
  store i32 %a5, ptr %l5
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
  store i1 false, ptr %l9, !tbaa !21
  br label %bb6
bb3:
  call void @__olang_check_failed(ptr @olang_loc_514348f953d022bc_74505ba6df313dd0)
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
  store i1 %t25, ptr %l9, !tbaa !21
  br label %bb6
bb6:
  %t27 = load i1, ptr %l9, !tbaa !21
  br i1 %t27, label %bb7, label %bb8
bb7:
  %t28 = load ptr, ptr %l0, !tbaa !29
  store ptr %t28, ptr %l19, !tbaa !29
  %t29 = load i64, ptr %l1, !tbaa !24
  store i64 %t29, ptr %l20, !tbaa !24
  %t30 = load ptr, ptr %l2, !tbaa !29
  %t32 = getelementptr %"compiler/ast:TopIf", ptr %t30, i32 0, i32 1
  %t33 = load ptr, ptr %t32, !tbaa !29
  %t35 = icmp eq ptr %t33, null
  br i1 %t35, label %bb9, label %bb10
bb8:
  br label %bb13
bb9:
  call void @__olang_check_failed(ptr @olang_loc_514348f953d022bc_74505ba6df313dd0)
  unreachable
bb10:
  br label %bb11
bb11:
  %t37 = load ptr, ptr %l2, !tbaa !29
  %t39 = getelementptr %"compiler/ast:TopIf", ptr %t37, i32 0, i32 1
  %t40 = load ptr, ptr %t39, !tbaa !29
  %t43 = getelementptr %"compiler/ast:TopBranch", ptr %t40, i32 0, i32 1
  %t44 = load { i64, ptr }, ptr %t43, !tbaa !27
  %t45 = load i32, ptr %l5, !tbaa !23
  %t46 = load ptr, ptr %l19, !tbaa !29
  %t47 = load i64, ptr %l20, !tbaa !24
  %t50 = call ptr @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eglobalIn(ptr %v0, ptr %v1, ptr %v2, ptr %t46, i64 %t47, { i64, ptr } %t44, i32 %t45)
  store ptr %t50, ptr %l29
  br label %bb12
bb12:
  %t51 = load ptr, ptr %l29, !tbaa !29
  store ptr %t51, ptr %rv
  br label %ret
bb13:
  %t52 = load ptr, ptr %l2, !tbaa !29
  %t54 = getelementptr %"compiler/ast:TopIf", ptr %t52, i32 0, i32 2
  %t55 = load ptr, ptr %t54, !tbaa !29
  %t57 = icmp eq ptr %t55, null
  %t59 = xor i1 %t57, true
  br i1 %t59, label %bb14, label %bb15
bb14:
  %t61 = load ptr, ptr %l0, !tbaa !29
  store ptr %t61, ptr %l34, !tbaa !29
  %t62 = load i64, ptr %l1, !tbaa !24
  store i64 %t62, ptr %l35, !tbaa !24
  %t63 = load ptr, ptr %l2, !tbaa !29
  %t65 = getelementptr %"compiler/ast:TopIf", ptr %t63, i32 0, i32 2
  %t66 = load ptr, ptr %t65, !tbaa !29
  %t68 = icmp eq ptr %t66, null
  br i1 %t68, label %bb16, label %bb17
bb15:
  br label %bb20
bb16:
  call void @__olang_check_failed(ptr @olang_loc_289ae50874ea0e2b_45680487effe832f)
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
  %t78 = load i32, ptr %l5, !tbaa !23
  %t79 = load ptr, ptr %l34, !tbaa !29
  %t80 = load i64, ptr %l35, !tbaa !24
  %t85 = call ptr @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eglobalInIf(ptr %v0, ptr %v1, ptr %v2, ptr %t79, i64 %t80, ptr %t73, i64 %t74, i64 %t77, i32 %t78)
  store ptr %t85, ptr %l45
  br label %bb19
bb19:
  %t86 = load ptr, ptr %l45, !tbaa !29
  store ptr %t86, ptr %rv
  br label %ret
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
  store i1 %t102, ptr %l50, !tbaa !21
  br label %bb23
bb22:
  store i1 false, ptr %l50, !tbaa !21
  br label %bb23
bb23:
  %t104 = load i1, ptr %l50, !tbaa !21
  br i1 %t104, label %bb24, label %bb25
bb24:
  %t105 = load ptr, ptr %l0, !tbaa !29
  store ptr %t105, ptr %l55, !tbaa !29
  %t106 = load i64, ptr %l1, !tbaa !24
  store i64 %t106, ptr %l56, !tbaa !24
  %t107 = load ptr, ptr %l2, !tbaa !29
  %t109 = getelementptr %"compiler/ast:TopIf", ptr %t107, i32 0, i32 3
  %t110 = load ptr, ptr %t109, !tbaa !29
  %t112 = icmp eq ptr %t110, null
  br i1 %t112, label %bb26, label %bb27
bb25:
  br label %bb30
bb26:
  call void @__olang_check_failed(ptr @olang_loc_d51864a21628ffaa_68720bbe5c137f7e)
  unreachable
bb27:
  br label %bb28
bb28:
  %t114 = load ptr, ptr %l2, !tbaa !29
  %t116 = getelementptr %"compiler/ast:TopIf", ptr %t114, i32 0, i32 3
  %t117 = load ptr, ptr %t116, !tbaa !29
  %t120 = getelementptr %"compiler/ast:TopBranch", ptr %t117, i32 0, i32 1
  %t121 = load { i64, ptr }, ptr %t120, !tbaa !27
  %t122 = load i32, ptr %l5, !tbaa !23
  %t123 = load ptr, ptr %l55, !tbaa !29
  %t124 = load i64, ptr %l56, !tbaa !24
  %t127 = call ptr @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eglobalIn(ptr %v0, ptr %v1, ptr %v2, ptr %t123, i64 %t124, { i64, ptr } %t121, i32 %t122)
  store ptr %t127, ptr %l65
  br label %bb29
bb29:
  %t128 = load ptr, ptr %l65, !tbaa !29
  store ptr %t128, ptr %rv
  br label %ret
bb30:
  store ptr null, ptr %rv
  br label %ret
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

define dso_local i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eheld(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l5 = alloca i32
  %l9 = alloca i1
  %l12 = alloca i1
  %l18 = alloca i1
  %l23 = alloca i32
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
  %t7 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t3, i32 %t4)
  store i32 %t7, ptr %l5
  br label %bb1
bb1:
  %t8 = load i32, ptr %l5, !range !{i32 0, i32 33}
  %t10 = trunc i64 18 to i32
  %t11 = icmp eq i32 %t8, %t10
  %t13 = xor i1 %t11, true
  br i1 %t13, label %bb2, label %bb3
bb2:
  store i1 true, ptr %l9, !tbaa !21
  br label %bb5
bb3:
  %t15 = load ptr, ptr %l0, !tbaa !29
  %t16 = load i32, ptr %l1, !tbaa !23
  %t19 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eBody(ptr %v0, ptr %t15, i32 %t16)
  store i1 %t19, ptr %l12
  br label %bb4
bb4:
  %t20 = load i1, ptr %l12, !tbaa !21
  %t21 = xor i1 %t20, true
  store i1 %t21, ptr %l9, !tbaa !21
  br label %bb5
bb5:
  %t23 = load i1, ptr %l9, !tbaa !21
  br i1 %t23, label %bb6, label %bb7
bb6:
  %t24 = load i32, ptr %l1, !tbaa !23
  store i32 %t24, ptr %rv
  br label %ret
bb7:
  br label %bb8
bb8:
  %t26 = load ptr, ptr %l0, !tbaa !29
  %t28 = getelementptr %"compiler/generic:Program", ptr %t26, i32 0, i32 2
  %t29 = load i32, ptr %l1, !tbaa !23
  %t32 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eNeedsDrop(ptr %v0, ptr %t28, i32 %t29)
  store i1 %t32, ptr %l18
  br label %bb9
bb9:
  %t33 = load i1, ptr %l18, !tbaa !21
  br i1 %t33, label %bb10, label %bb11
bb10:
  %t34 = load ptr, ptr %l0, !tbaa !29
  %t36 = getelementptr %"compiler/generic:Program", ptr %t34, i32 0, i32 2
  %t37 = load i32, ptr %l1, !tbaa !23
  %t38 = load i64, ptr @G_2ecompiler_2ftypes_2eReadOnly, !tbaa !24
  %t42 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRef(ptr %v0, ptr %t36, i32 %t37, i64 %t38)
  store i32 %t42, ptr %l23
  br label %bb12
bb11:
  br label %bb13
bb12:
  %t43 = load i32, ptr %l23, !tbaa !23
  store i32 %t43, ptr %rv
  br label %ret
bb13:
  %t44 = load i32, ptr %l1, !tbaa !23
  store i32 %t44, ptr %rv
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
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 30}
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

define dso_local i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2enamedType(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, ptr %a2) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca %"compiler/names:Ref"
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %l12 = alloca i64
  %l14 = alloca ptr
  %l18 = alloca i64
  %l21 = alloca %"compiler/names:Ref"
  %l30 = alloca i1
  %l35 = alloca ptr
  %l39 = alloca i32
  %l40 = alloca i32
  %l51 = alloca i64
  %l54 = alloca i64
  %l75 = alloca { i64, ptr }
  %l78 = alloca i64
  %l87 = alloca { i64, ptr }
  %l91 = alloca i64
  %l96 = alloca ptr
  %l100 = alloca i32
  %l101 = alloca i32
  %rv = alloca i32
  store ptr %a0, ptr %l0
  store ptr %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/generic:Program", ptr %t1, i32 0, i32 1
  %t4 = load ptr, ptr %t3, !tbaa !29
  store ptr %t4, ptr %l14, !tbaa !29
  %t5 = load ptr, ptr %l0, !tbaa !29
  %t8 = getelementptr %"compiler/generic:Context", ptr %a1, i32 0, i32 0
  %t9 = load i64, ptr %t8, !tbaa !24
  %t12 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2efile(ptr %v0, ptr %t5, i64 %t9)
  store i64 %t12, ptr %l18
  br label %bb1
bb1:
  %t13 = load ptr, ptr %l2, !tbaa !29
  %t15 = getelementptr %"compiler/ast:Path", ptr %t13, i32 0, i32 0
  %t16 = getelementptr %"compiler/source:Span", ptr %t15, i32 0, i32 0
  %t17 = load i32, ptr %t16, !tbaa !23
  %t18 = load ptr, ptr %l14, !tbaa !29
  %t19 = load i64, ptr %l18, !tbaa !24
  %t21 = call %"compiler/names:Ref" @compiler_2fnames_2ecompiler_2fnames_3aResolver_2eUse(ptr %v0, ptr %t18, i64 %t19, i32 %t17)
  store %"compiler/names:Ref" %t21, ptr %l21
  br label %bb2
bb2:
  %t22 = load %"compiler/names:Ref", ptr %l21
  store %"compiler/names:Ref" %t22, ptr %l3
  %t23 = load ptr, ptr %l2, !tbaa !29
  %t25 = getelementptr %"compiler/ast:Path", ptr %t23, i32 0, i32 1
  %t26 = load { i64, ptr }, ptr %t25, !tbaa !27
  %t28 = extractvalue { i64, ptr } %t26, 0
  store i64 %t28, ptr %l4, !tbaa !24
  %t30 = load i64, ptr %l4, !tbaa !24
  %t32 = icmp eq i64 %t30, 1
  br i1 %t32, label %bb3, label %bb4
bb3:
  %t34 = getelementptr %"compiler/names:Ref", ptr %l3, i32 0, i32 0
  %t35 = load i32, ptr %t34, !range !{i32 0, i32 9}
  %t37 = trunc i64 4 to i32
  %t38 = icmp eq i32 %t35, %t37
  %t40 = xor i1 %t38, true
  br i1 %t40, label %bb5, label %bb6
bb4:
  br label %bb13
bb5:
  store i1 true, ptr %l30, !tbaa !21
  br label %bb7
bb6:
  %t42 = getelementptr %"compiler/names:Ref", ptr %l3, i32 0, i32 2
  %t43 = load i64, ptr %t42, !tbaa !24
  %t45 = icmp slt i64 %t43, 0
  store i1 %t45, ptr %l30, !tbaa !21
  br label %bb7
bb7:
  %t47 = load i1, ptr %l30, !tbaa !21
  br i1 %t47, label %bb8, label %bb9
bb8:
  %t48 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  store i32 %t48, ptr %rv
  br label %ret
bb9:
  br label %bb10
bb10:
  %t50 = load ptr, ptr %l0, !tbaa !29
  %t52 = getelementptr %"compiler/generic:Program", ptr %t50, i32 0, i32 2
  store ptr %t52, ptr %l35, !tbaa !29
  %t53 = load ptr, ptr %l0, !tbaa !29
  %t54 = getelementptr %"compiler/names:Ref", ptr %l3, i32 0, i32 1
  %t55 = load i64, ptr %t54, !tbaa !24
  %t56 = getelementptr %"compiler/names:Ref", ptr %l3, i32 0, i32 2
  %t57 = load i64, ptr %t56, !tbaa !24
  %t61 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eDeclFor(ptr %v0, ptr %t53, i64 %t55, i64 %t57)
  store i32 %t61, ptr %l39
  br label %bb11
bb11:
  %t62 = load ptr, ptr %l35, !tbaa !29
  %t63 = load i32, ptr %l39, !tbaa !23
  %t64 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eNamed(ptr %v0, ptr %t62, i32 %t63, i32 0)
  store i32 %t64, ptr %l40
  br label %bb12
bb12:
  %t65 = load i32, ptr %l40, !tbaa !23
  store i32 %t65, ptr %rv
  br label %ret
bb13:
  %t66 = getelementptr %"compiler/names:Ref", ptr %l3, i32 0, i32 0
  %t67 = load i32, ptr %t66, !range !{i32 0, i32 9}
  %t69 = trunc i64 5 to i32
  %t70 = icmp eq i32 %t67, %t69
  %t72 = xor i1 %t70, true
  br i1 %t72, label %bb14, label %bb15
bb14:
  %t74 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  store i32 %t74, ptr %rv
  br label %ret
bb15:
  br label %bb16
bb16:
  %t76 = getelementptr %"compiler/names:Ref", ptr %l3, i32 0, i32 1
  %t77 = load i64, ptr %t76, !tbaa !24
  store i64 %t77, ptr %l5, !tbaa !24
  store i64 1, ptr %l6, !tbaa !24
  %t79 = load i64, ptr %l4, !tbaa !24
  %t81 = sub i64 %t79, 1
  store i64 %t81, ptr %l7, !tbaa !24
  store i64 1, ptr %l8, !tbaa !24
  %t83 = load i64, ptr %l7, !tbaa !24
  %t84 = load i64, ptr %l6, !tbaa !24
  %t87 = icmp sgt i64 %t83, %t84
  br i1 %t87, label %bb17, label %bb18
bb17:
  %t89 = load i64, ptr %l8, !tbaa !24
  %t91 = icmp sgt i64 %t89, 0
  br i1 %t91, label %bb19, label %bb20
bb18:
  store i64 0, ptr %l51, !tbaa !24
  br label %bb22
bb19:
  %t93 = load i64, ptr %l7, !tbaa !24
  %t94 = load i64, ptr %l6, !tbaa !24
  %t97 = sub i64 %t93, %t94
  %t98 = load i64, ptr %l8, !tbaa !24
  %t101 = add i64 %t97, %t98
  %t103 = sub i64 %t101, 1
  %t104 = load i64, ptr %l8, !tbaa !24
  %t107 = sdiv i64 %t103, %t104
  store i64 %t107, ptr %l54, !tbaa !24
  br label %bb21
bb20:
  store i64 0, ptr %l54, !tbaa !24
  br label %bb21
bb21:
  %t109 = load i64, ptr %l54, !tbaa !24
  store i64 %t109, ptr %l51, !tbaa !24
  br label %bb22
bb22:
  %t110 = load i64, ptr %l51, !tbaa !24
  store i64 %t110, ptr %l9, !tbaa !24
  store i64 0, ptr %l10, !tbaa !24
  br label %bb23
bb23:
  %t111 = load i64, ptr %l10, !tbaa !24
  %t112 = load i64, ptr %l9, !tbaa !24
  %t115 = icmp slt i64 %t111, %t112
  %t117 = xor i1 %t115, true
  br i1 %t117, label %bb24, label %bb25
bb24:
  br label %bb32
bb25:
  br label %bb26
bb26:
  %t119 = load i64, ptr %l6, !tbaa !24
  %t120 = load i64, ptr %l10, !tbaa !24
  %t121 = load i64, ptr %l8, !tbaa !24
  %t124 = mul i64 %t120, %t121
  %t127 = add i64 %t119, %t124
  %t129 = load ptr, ptr %l0, !tbaa !29
  %t130 = load i64, ptr %l5, !tbaa !24
  %t131 = load ptr, ptr %l2, !tbaa !29
  %t133 = getelementptr %"compiler/ast:Path", ptr %t131, i32 0, i32 1
  %t134 = load { i64, ptr }, ptr %t133, !tbaa !27
  store { i64, ptr } %t134, ptr %l75, !tbaa !27
  %t137 = getelementptr { i64, ptr }, ptr %l75, i32 0, i32 1
  %t138 = load ptr, ptr %t137, !tbaa !27
  %t139 = getelementptr i32, ptr %t138, i64 %t127
  %t140 = load i32, ptr %t139, !tbaa !33
  %t144 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2ealiasStep(ptr %v0, ptr %t129, i64 %t130, i32 %t140)
  store i64 %t144, ptr %l78
  br label %bb27
bb27:
  %t145 = load i64, ptr %l78, !tbaa !24
  store i64 %t145, ptr %l5, !tbaa !24
  %t146 = load i64, ptr %l5, !tbaa !24
  %t148 = icmp slt i64 %t146, 0
  br i1 %t148, label %bb28, label %bb29
bb28:
  %t150 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  store i32 %t150, ptr %rv
  br label %ret
bb29:
  br label %bb30
bb30:
  br label %bb31
bb31:
  %t152 = load i64, ptr %l10, !tbaa !24
  %t154 = add i64 %t152, 1
  store i64 %t154, ptr %l10, !tbaa !24
  br label %bb23
bb32:
  %t156 = load ptr, ptr %l0, !tbaa !29
  %t157 = load i64, ptr %l5, !tbaa !24
  %t158 = load ptr, ptr %l2, !tbaa !29
  %t160 = getelementptr %"compiler/ast:Path", ptr %t158, i32 0, i32 1
  %t161 = load { i64, ptr }, ptr %t160, !tbaa !27
  store { i64, ptr } %t161, ptr %l87, !tbaa !27
  %t162 = load i64, ptr %l4, !tbaa !24
  %t164 = sub i64 %t162, 1
  %t166 = getelementptr { i64, ptr }, ptr %l87, i32 0, i32 1
  %t167 = load ptr, ptr %t166, !tbaa !27
  %t168 = getelementptr i32, ptr %t167, i64 %t164
  %t169 = load i32, ptr %t168, !tbaa !33
  %t173 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eTypeEntry(ptr %v0, ptr %t156, i64 %t157, i32 %t169)
  store i64 %t173, ptr %l91
  br label %bb33
bb33:
  %t174 = load i64, ptr %l91, !tbaa !24
  store i64 %t174, ptr %l12, !tbaa !24
  %t175 = load i64, ptr %l12, !tbaa !24
  %t177 = icmp slt i64 %t175, 0
  br i1 %t177, label %bb34, label %bb35
bb34:
  %t179 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  store i32 %t179, ptr %rv
  br label %ret
bb35:
  br label %bb36
bb36:
  %t181 = load ptr, ptr %l0, !tbaa !29
  %t183 = getelementptr %"compiler/generic:Program", ptr %t181, i32 0, i32 2
  store ptr %t183, ptr %l96, !tbaa !29
  %t184 = load ptr, ptr %l0, !tbaa !29
  %t185 = load i64, ptr %l5, !tbaa !24
  %t186 = load i64, ptr %l12, !tbaa !24
  %t190 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eDeclFor(ptr %v0, ptr %t184, i64 %t185, i64 %t186)
  store i32 %t190, ptr %l100
  br label %bb37
bb37:
  %t191 = load ptr, ptr %l96, !tbaa !29
  %t192 = load i32, ptr %l100, !tbaa !23
  %t193 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eNamed(ptr %v0, ptr %t191, i32 %t192, i32 0)
  store i32 %t193, ptr %l101
  br label %bb38
bb38:
  %t194 = load i32, ptr %l101, !tbaa !23
  store i32 %t194, ptr %rv
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

define dso_local i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2epromisesOf(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, ptr %a2, i32 %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca i32
  %l4 = alloca i64
  %l5 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l6 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l7 = alloca { i64, ptr }
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca ptr
  %l11 = alloca i64
  %l12 = alloca i64
  %l13 = alloca { i64, ptr }
  %l14 = alloca i64
  %l15 = alloca i64
  %l16 = alloca i64
  %l17 = alloca i64
  %l18 = alloca i64
  %l19 = alloca i64
  %l20 = alloca { i64, ptr }
  %l21 = alloca i64
  %l22 = alloca i64
  %l29 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l30 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l39 = alloca { i64, ptr }
  %l44 = alloca i64
  %l51 = alloca ptr
  %l52 = alloca ptr
  %l53 = alloca ptr
  %l56 = alloca { i64, ptr }
  %l57 = alloca %"compiler/diagmsg:Msg"
  %l61 = alloca i1
  %l64 = alloca ptr
  %l65 = alloca ptr
  %l66 = alloca ptr
  %l67 = alloca %"compiler/diagmsg:Msg"
  %l71 = alloca i1
  %l74 = alloca i1
  %l76 = alloca ptr
  %l77 = alloca ptr
  %l78 = alloca ptr
  %l79 = alloca %"compiler/diagmsg:Msg"
  %l87 = alloca i64
  %l95 = alloca i1
  %l96 = alloca ptr
  %l97 = alloca ptr
  %l98 = alloca ptr
  %l101 = alloca { i64, ptr }
  %l103 = alloca { i64, ptr }
  %l106 = alloca %"compiler/diagmsg:Msg"
  %l109 = alloca i1
  %l111 = alloca ptr
  %l112 = alloca ptr
  %l113 = alloca ptr
  %l114 = alloca %"compiler/diagmsg:Msg"
  %l115 = alloca ptr
  %l117 = alloca ptr
  %l121 = alloca i32
  %l122 = alloca { i64, ptr }
  %l123 = alloca { i64, ptr }
  %l126 = alloca i1
  %l128 = alloca ptr
  %l129 = alloca ptr
  %l130 = alloca ptr
  %l133 = alloca { i64, ptr }
  %l135 = alloca { i64, ptr }
  %l136 = alloca %"compiler/diagmsg:Msg"
  %l145 = alloca { i64, ptr }
  %l150 = alloca i64
  %l155 = alloca i64
  %l158 = alloca i64
  %l179 = alloca i64
  %l182 = alloca i1
  %l187 = alloca i64
  %l190 = alloca i1
  %l195 = alloca i64
  %l198 = alloca ptr
  %l199 = alloca ptr
  %l200 = alloca ptr
  %l202 = alloca ptr
  %l204 = alloca ptr
  %l205 = alloca i32
  %l208 = alloca i64
  %l209 = alloca i32
  %l214 = alloca { i64, ptr }
  %l216 = alloca %"compiler/diagmsg:Msg"
  %l226 = alloca { i64, ptr }
  %l239 = alloca i1
  %l241 = alloca i64
  %l243 = alloca ptr
  %l244 = alloca ptr
  %l246 = alloca { i64, ptr }
  %l247 = alloca ptr
  %l248 = alloca %"compiler/diagmsg:Msg"
  %l250 = alloca ptr
  %l251 = alloca i64
  %l253 = alloca { i64, ptr }
  %l255 = alloca { i64, ptr }
  %l256 = alloca i64
  %s0 = alloca %olang.scope
  %s3 = alloca %olang.scope
  %s5 = alloca %olang.scope
  %s6 = alloca %olang.scope
  %s7 = alloca %olang.scope
  %s10 = alloca %olang.scope
  %s12 = alloca %olang.scope
  %s13 = alloca %olang.scope
  %s14 = alloca %olang.scope
  %s18 = alloca %olang.scope
  %s24 = alloca %olang.scope
  %rv = alloca i64
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store ptr %a2, ptr %l2
  store i32 %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l2, !tbaa !29
  %t3 = getelementptr %"compiler/ast:Sig", ptr %t1, i32 0, i32 8
  %t4 = load { i64, ptr }, ptr %t3, !tbaa !27
  %t6 = extractvalue { i64, ptr } %t4, 0
  %t8 = icmp eq i64 %t6, 0
  br i1 %t8, label %bb1, label %bb2
bb1:
  call void @__olang_scope_close(ptr %s0)
  store i64 0, ptr %rv
  br label %ret
bb2:
  br label %bb3
bb3:
  store i64 0, ptr %l4, !tbaa !24
  %t11 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %s0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t11, ptr %l29
  br label %bb4
bb4:
  %t12 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l29
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t12, ptr %l5
  %t13 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %s0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t13, ptr %l30
  br label %bb5
bb5:
  %t14 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l30
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t14, ptr %l6
  %t15 = load ptr, ptr %l2, !tbaa !29
  %t17 = getelementptr %"compiler/ast:Sig", ptr %t15, i32 0, i32 8
  %t18 = load { i64, ptr }, ptr %t17, !tbaa !27
  store { i64, ptr } %t18, ptr %l7, !tbaa !27
  store i64 0, ptr %l8, !tbaa !24
  %t20 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t22 = extractvalue { i64, ptr } %t20, 0
  store i64 %t22, ptr %l9, !tbaa !24
  br label %bb6
bb6:
  store %olang.scope zeroinitializer, ptr %s3
  %t24 = load i64, ptr %l8, !tbaa !24
  %t25 = load i64, ptr %l9, !tbaa !24
  %t28 = icmp slt i64 %t24, %t25
  %t30 = xor i1 %t28, true
  br i1 %t30, label %bb7, label %bb8
bb7:
  call void @__olang_scope_close(ptr %s3)
  br label %bb109
bb8:
  br label %bb9
bb9:
  %t32 = load { i64, ptr }, ptr %l7, !tbaa !27
  store { i64, ptr } %t32, ptr %l39, !tbaa !27
  %t33 = load i64, ptr %l8, !tbaa !24
  %t35 = getelementptr { i64, ptr }, ptr %l39, i32 0, i32 1
  %t36 = load ptr, ptr %t35, !tbaa !27
  %t37 = getelementptr ptr, ptr %t36, i64 %t33
  %t38 = load ptr, ptr %t37, !tbaa !39
  store ptr %t38, ptr %l10, !tbaa !29
  %t40 = load ptr, ptr %l10, !tbaa !29
  %t42 = getelementptr %"compiler/ast:Promise", ptr %t40, i32 0, i32 1
  %t43 = load i32, ptr %t42, !range !{i32 0, i32 114}
  %t45 = call i64 @compiler_2fgeneric_2epromiseBit(i32 %t43)
  store i64 %t45, ptr %l44
  br label %bb10
bb10:
  %t46 = load i64, ptr %l44, !tbaa !24
  store i64 %t46, ptr %l11, !tbaa !24
  %t47 = load i64, ptr %l11, !tbaa !24
  %t49 = icmp ne i64 %t47, 0
  br i1 %t49, label %bb11, label %bb12
bb11:
  %t51 = load i64, ptr %l4, !tbaa !24
  %t52 = load i64, ptr %l11, !tbaa !24
  %t55 = and i64 %t51, %t52
  %t57 = icmp ne i64 %t55, 0
  br i1 %t57, label %bb13, label %bb14
bb12:
  br label %bb36
bb13:
  store %olang.scope zeroinitializer, ptr %s5
  %t59 = load ptr, ptr %l0, !tbaa !29
  store ptr %t59, ptr %l51, !tbaa !29
  %t60 = load ptr, ptr %l1, !tbaa !29
  store ptr %t60, ptr %l52, !tbaa !29
  %t61 = load ptr, ptr %l10, !tbaa !29
  store ptr %t61, ptr %l53, !tbaa !29
  %t62 = load ptr, ptr %l10, !tbaa !29
  %t64 = getelementptr %"compiler/ast:Promise", ptr %t62, i32 0, i32 1
  %t65 = load i32, ptr %t64, !range !{i32 0, i32 114}
  %t67 = call { i64, ptr } @compiler_2ftoken_2ecompiler_2ftoken_3aTok_2eText(ptr %s5, i32 %t65)
  store { i64, ptr } %t67, ptr %l56
  br label %bb15
bb14:
  br label %bb18
bb15:
  %t68 = load { i64, ptr }, ptr %l56, !tbaa !27
  %t69 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2ePromiseTwice(ptr %s5, ptr %s5, { i64, ptr } %t68)
  store %"compiler/diagmsg:Msg" %t69, ptr %l57
  br label %bb16
bb16:
  %t70 = load ptr, ptr %l51, !tbaa !29
  %t71 = load ptr, ptr %l52, !tbaa !29
  %t72 = load ptr, ptr %l53, !tbaa !29
  %t73 = load %"compiler/diagmsg:Msg", ptr %l57
  call void @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2epromiseErr(ptr %v0, ptr %v1, ptr %v2, ptr %s5, ptr %t70, ptr %t71, ptr %t72, %"compiler/diagmsg:Msg" %t73)
  br label %bb17
bb17:
  call void @__olang_scope_close(ptr %s5)
  br label %bb18
bb18:
  %t74 = load ptr, ptr %l10, !tbaa !29
  %t76 = getelementptr %"compiler/ast:Promise", ptr %t74, i32 0, i32 1
  %t77 = load i32, ptr %t76, !range !{i32 0, i32 114}
  %t79 = trunc i64 57 to i32
  %t80 = icmp eq i32 %t77, %t79
  br i1 %t80, label %bb19, label %bb20
bb19:
  %t82 = load ptr, ptr %l2, !tbaa !29
  %t84 = getelementptr %"compiler/ast:Sig", ptr %t82, i32 0, i32 4
  %t85 = load i1, ptr %t84, !tbaa !21
  store i1 %t85, ptr %l61, !tbaa !21
  br label %bb21
bb20:
  store i1 false, ptr %l61, !tbaa !21
  br label %bb21
bb21:
  %t87 = load i1, ptr %l61, !tbaa !21
  br i1 %t87, label %bb22, label %bb23
bb22:
  store %olang.scope zeroinitializer, ptr %s6
  %t88 = load ptr, ptr %l0, !tbaa !29
  store ptr %t88, ptr %l64, !tbaa !29
  %t89 = load ptr, ptr %l1, !tbaa !29
  store ptr %t89, ptr %l65, !tbaa !29
  %t90 = load ptr, ptr %l10, !tbaa !29
  store ptr %t90, ptr %l66, !tbaa !29
  %t91 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2ePromiseReturnsNoreturn(ptr %s6)
  store %"compiler/diagmsg:Msg" %t91, ptr %l67
  br label %bb24
bb23:
  br label %bb26
bb24:
  %t92 = load ptr, ptr %l64, !tbaa !29
  %t93 = load ptr, ptr %l65, !tbaa !29
  %t94 = load ptr, ptr %l66, !tbaa !29
  %t95 = load %"compiler/diagmsg:Msg", ptr %l67
  call void @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2epromiseErr(ptr %v0, ptr %v1, ptr %v2, ptr %s6, ptr %t92, ptr %t93, ptr %t94, %"compiler/diagmsg:Msg" %t95)
  br label %bb25
bb25:
  call void @__olang_scope_close(ptr %s6)
  br label %bb26
bb26:
  %t96 = load ptr, ptr %l10, !tbaa !29
  %t98 = getelementptr %"compiler/ast:Promise", ptr %t96, i32 0, i32 1
  %t99 = load i32, ptr %t98, !range !{i32 0, i32 114}
  %t101 = trunc i64 66 to i32
  %t102 = icmp eq i32 %t99, %t101
  br i1 %t102, label %bb27, label %bb28
bb27:
  %t104 = load ptr, ptr %l0, !tbaa !29
  %t105 = load i32, ptr %l3, !tbaa !23
  %t108 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eresultMayHold(ptr %v0, ptr %t104, i32 %t105)
  store i1 %t108, ptr %l74
  br label %bb29
bb28:
  store i1 false, ptr %l71, !tbaa !21
  br label %bb30
bb29:
  %t109 = load i1, ptr %l74, !tbaa !21
  %t110 = xor i1 %t109, true
  store i1 %t110, ptr %l71, !tbaa !21
  br label %bb30
bb30:
  %t112 = load i1, ptr %l71, !tbaa !21
  br i1 %t112, label %bb31, label %bb32
bb31:
  store %olang.scope zeroinitializer, ptr %s7
  %t113 = load ptr, ptr %l0, !tbaa !29
  store ptr %t113, ptr %l76, !tbaa !29
  %t114 = load ptr, ptr %l1, !tbaa !29
  store ptr %t114, ptr %l77, !tbaa !29
  %t115 = load ptr, ptr %l10, !tbaa !29
  store ptr %t115, ptr %l78, !tbaa !29
  %t116 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2ePromiseBorrowsNothing(ptr %s7, ptr %s7, { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d68, i32 0, i32 1) })
  store %"compiler/diagmsg:Msg" %t116, ptr %l79
  br label %bb33
bb32:
  br label %bb35
bb33:
  %t117 = load ptr, ptr %l76, !tbaa !29
  %t118 = load ptr, ptr %l77, !tbaa !29
  %t119 = load ptr, ptr %l78, !tbaa !29
  %t120 = load %"compiler/diagmsg:Msg", ptr %l79
  call void @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2epromiseErr(ptr %v0, ptr %v1, ptr %v2, ptr %s7, ptr %t117, ptr %t118, ptr %t119, %"compiler/diagmsg:Msg" %t120)
  br label %bb34
bb34:
  call void @__olang_scope_close(ptr %s7)
  br label %bb35
bb35:
  %t121 = load i64, ptr %l4, !tbaa !24
  %t122 = load i64, ptr %l11, !tbaa !24
  %t125 = or i64 %t121, %t122
  store i64 %t125, ptr %l4, !tbaa !24
  call void @__olang_scope_close(ptr %s3)
  br label %bb108
bb36:
  %t127 = load ptr, ptr %l0, !tbaa !29
  %t128 = load ptr, ptr %l1, !tbaa !29
  %t129 = load ptr, ptr %l2, !tbaa !29
  %t130 = load ptr, ptr %l10, !tbaa !29
  %t135 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2epromiseParam(ptr %v0, ptr %v1, ptr %v2, ptr %v2, ptr %t127, ptr %t128, ptr %t129, ptr %t130, i64 0)
  store i64 %t135, ptr %l87
  br label %bb37
bb37:
  %t136 = load i64, ptr %l87, !tbaa !24
  store i64 %t136, ptr %l12, !tbaa !24
  %t137 = load i64, ptr %l12, !tbaa !24
  %t139 = icmp slt i64 %t137, 0
  br i1 %t139, label %bb38, label %bb39
bb38:
  call void @__olang_scope_close(ptr %s3)
  br label %bb108
bb39:
  br label %bb40
bb40:
  %t141 = load ptr, ptr %l10, !tbaa !29
  %t143 = getelementptr %"compiler/ast:Promise", ptr %t141, i32 0, i32 1
  %t144 = load i32, ptr %t143, !range !{i32 0, i32 114}
  %t146 = trunc i64 65 to i32
  %t147 = icmp eq i32 %t144, %t146
  br i1 %t147, label %bb41, label %bb42
bb41:
  %t149 = load i64, ptr %l12, !tbaa !24
  %t152 = call i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eHas_3cI64_3e(ptr %s0, ptr %l5, i64 %t149)
  store i1 %t152, ptr %l95
  br label %bb43
bb42:
  br label %bb66
bb43:
  %t153 = load i1, ptr %l95, !tbaa !21
  br i1 %t153, label %bb44, label %bb45
bb44:
  store %olang.scope zeroinitializer, ptr %s10
  %t154 = load ptr, ptr %l0, !tbaa !29
  store ptr %t154, ptr %l96, !tbaa !29
  %t155 = load ptr, ptr %l1, !tbaa !29
  store ptr %t155, ptr %l97, !tbaa !29
  %t156 = load ptr, ptr %l10, !tbaa !29
  store ptr %t156, ptr %l98, !tbaa !29
  %t157 = load ptr, ptr %l0, !tbaa !29
  %t158 = load ptr, ptr %l10, !tbaa !29
  %t160 = getelementptr %"compiler/ast:Promise", ptr %t158, i32 0, i32 2
  %t161 = load { i64, ptr }, ptr %t160, !tbaa !27
  store { i64, ptr } %t161, ptr %l101, !tbaa !27
  %t162 = getelementptr { i64, ptr }, ptr %l101, i32 0, i32 1
  %t163 = load ptr, ptr %t162, !tbaa !27
  %t164 = getelementptr i32, ptr %t163, i64 0
  %t165 = load i32, ptr %t164, !tbaa !33
  %t168 = call { i64, ptr } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2etext(ptr %v0, ptr %s10, ptr %t157, i32 %t165)
  store { i64, ptr } %t168, ptr %l103
  br label %bb46
bb45:
  br label %bb49
bb46:
  %t169 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d69, i32 0, i32 1) }, 1
  %t170 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d69, i32 0, i32 1) }, 0
  %t171 = load { i64, ptr }, ptr %l103, !tbaa !27
  %t172 = extractvalue { i64, ptr } %t171, 1
  %t173 = extractvalue { i64, ptr } %t171, 0
  %t174 = add i64 %t170, %t173
  %t175 = call ptr @__olang_scope_alloc(ptr %s10, i64 %t174)
  call void @olang_textcopy(ptr %t175, ptr %t169, i64 %t170)
  %t176 = getelementptr i8, ptr %t175, i64 %t170
  call void @olang_textcopy(ptr %t176, ptr %t172, i64 %t173)
  %t177 = insertvalue { i64, ptr } undef, i64 %t174, 0
  %t178 = insertvalue { i64, ptr } %t177, ptr %t175, 1
  %t180 = extractvalue { i64, ptr } %t178, 0
  %t181 = extractvalue { i64, ptr } %t178, 1
  %t182 = mul i64 %t180, 1
  %t183 = call ptr @__olang_scope_alloc(ptr %s10, i64 %t182)
  call void @llvm.memcpy.p0.p0.i64(ptr %t183, ptr %t181, i64 %t182, i1 false)
  %t184 = insertvalue { i64, ptr } undef, i64 %t180, 0
  %t185 = insertvalue { i64, ptr } %t184, ptr %t183, 1
  %t187 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2ePromiseTwice(ptr %s10, ptr %s10, { i64, ptr } %t185)
  store %"compiler/diagmsg:Msg" %t187, ptr %l106
  br label %bb47
bb47:
  %t188 = load ptr, ptr %l96, !tbaa !29
  %t189 = load ptr, ptr %l97, !tbaa !29
  %t190 = load ptr, ptr %l98, !tbaa !29
  %t191 = load %"compiler/diagmsg:Msg", ptr %l106
  call void @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2epromiseErr(ptr %v0, ptr %v1, ptr %v2, ptr %s10, ptr %t188, ptr %t189, ptr %t190, %"compiler/diagmsg:Msg" %t191)
  br label %bb48
bb48:
  call void @__olang_scope_close(ptr %s10)
  br label %bb49
bb49:
  %t192 = load ptr, ptr %l0, !tbaa !29
  %t193 = load i32, ptr %l3, !tbaa !23
  %t196 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eresultMayHold(ptr %v0, ptr %t192, i32 %t193)
  store i1 %t196, ptr %l109
  br label %bb50
bb50:
  %t197 = load i1, ptr %l109, !tbaa !21
  %t198 = xor i1 %t197, true
  br i1 %t198, label %bb51, label %bb52
bb51:
  store %olang.scope zeroinitializer, ptr %s12
  %t200 = load ptr, ptr %l0, !tbaa !29
  store ptr %t200, ptr %l111, !tbaa !29
  %t201 = load ptr, ptr %l1, !tbaa !29
  store ptr %t201, ptr %l112, !tbaa !29
  %t202 = load ptr, ptr %l10, !tbaa !29
  store ptr %t202, ptr %l113, !tbaa !29
  %t203 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2ePromiseBorrowsNothing(ptr %s12, ptr %s12, { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d70, i32 0, i32 1) })
  store %"compiler/diagmsg:Msg" %t203, ptr %l114
  br label %bb53
bb52:
  store %olang.scope zeroinitializer, ptr %s13
  %t204 = load ptr, ptr %l0, !tbaa !29
  store ptr %t204, ptr %l115, !tbaa !29
  %t205 = load ptr, ptr %l0, !tbaa !29
  %t207 = getelementptr %"compiler/generic:Program", ptr %t205, i32 0, i32 2
  store ptr %t207, ptr %l117, !tbaa !29
  %t208 = load ptr, ptr %l0, !tbaa !29
  %t210 = getelementptr %"compiler/generic:Program", ptr %t208, i32 0, i32 2
  %t211 = load i32, ptr %l3, !tbaa !23
  %t214 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParams(ptr %v0, ptr %t210, i32 %t211)
  store i32 %t214, ptr %l121
  br label %bb55
bb53:
  %t215 = load ptr, ptr %l111, !tbaa !29
  %t216 = load ptr, ptr %l112, !tbaa !29
  %t217 = load ptr, ptr %l113, !tbaa !29
  %t218 = load %"compiler/diagmsg:Msg", ptr %l114
  call void @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2epromiseErr(ptr %v0, ptr %v1, ptr %v2, ptr %s12, ptr %t215, ptr %t216, ptr %t217, %"compiler/diagmsg:Msg" %t218)
  br label %bb54
bb54:
  call void @__olang_scope_close(ptr %s12)
  br label %bb64
bb55:
  %t219 = load ptr, ptr %l117, !tbaa !29
  %t220 = load i32, ptr %l121, !tbaa !23
  %t221 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %s13, ptr %t219, i32 %t220)
  store { i64, ptr } %t221, ptr %l122
  br label %bb56
bb56:
  %t222 = load { i64, ptr }, ptr %l122, !tbaa !27
  store { i64, ptr } %t222, ptr %l123, !tbaa !27
  %t223 = load i64, ptr %l12, !tbaa !24
  %t225 = getelementptr { i64, ptr }, ptr %l123, i32 0, i32 1
  %t226 = load ptr, ptr %t225, !tbaa !27
  %t227 = getelementptr i32, ptr %t226, i64 %t223
  %t228 = load i32, ptr %t227, !tbaa !33
  %t229 = load ptr, ptr %l115, !tbaa !29
  %t231 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2emayHold(ptr %v0, ptr %t229, i32 %t228)
  store i1 %t231, ptr %l126
  br label %bb57
bb57:
  %t232 = load i1, ptr %l126, !tbaa !21
  %t233 = xor i1 %t232, true
  br i1 %t233, label %bb58, label %bb59
bb58:
  store %olang.scope zeroinitializer, ptr %s14
  %t235 = load ptr, ptr %l0, !tbaa !29
  store ptr %t235, ptr %l128, !tbaa !29
  %t236 = load ptr, ptr %l1, !tbaa !29
  store ptr %t236, ptr %l129, !tbaa !29
  %t237 = load ptr, ptr %l10, !tbaa !29
  store ptr %t237, ptr %l130, !tbaa !29
  %t238 = load ptr, ptr %l0, !tbaa !29
  %t239 = load ptr, ptr %l10, !tbaa !29
  %t241 = getelementptr %"compiler/ast:Promise", ptr %t239, i32 0, i32 2
  %t242 = load { i64, ptr }, ptr %t241, !tbaa !27
  store { i64, ptr } %t242, ptr %l133, !tbaa !27
  %t243 = getelementptr { i64, ptr }, ptr %l133, i32 0, i32 1
  %t244 = load ptr, ptr %t243, !tbaa !27
  %t245 = getelementptr i32, ptr %t244, i64 0
  %t246 = load i32, ptr %t245, !tbaa !33
  %t249 = call { i64, ptr } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2etext(ptr %v0, ptr %v0, ptr %t238, i32 %t246)
  store { i64, ptr } %t249, ptr %l135
  br label %bb60
bb59:
  br label %bb63
bb60:
  %t250 = load { i64, ptr }, ptr %l135, !tbaa !27
  %t251 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2ePromiseBorrowsValue(ptr %v0, ptr %s14, { i64, ptr } %t250)
  store %"compiler/diagmsg:Msg" %t251, ptr %l136
  br label %bb61
bb61:
  %t252 = load ptr, ptr %l128, !tbaa !29
  %t253 = load ptr, ptr %l129, !tbaa !29
  %t254 = load ptr, ptr %l130, !tbaa !29
  %t255 = load %"compiler/diagmsg:Msg", ptr %l136
  call void @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2epromiseErr(ptr %v0, ptr %v1, ptr %v2, ptr %s14, ptr %t252, ptr %t253, ptr %t254, %"compiler/diagmsg:Msg" %t255)
  br label %bb62
bb62:
  call void @__olang_scope_close(ptr %s14)
  br label %bb63
bb63:
  call void @__olang_scope_close(ptr %s13)
  br label %bb64
bb64:
  %t256 = load i64, ptr %l12, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %s0, ptr %l5, i64 %t256)
  br label %bb65
bb65:
  call void @__olang_scope_close(ptr %s3)
  br label %bb108
bb66:
  %t259 = load ptr, ptr %l0, !tbaa !29
  %t260 = load ptr, ptr %l1, !tbaa !29
  %t261 = load ptr, ptr %l2, !tbaa !29
  %t262 = load i32, ptr %l3, !tbaa !23
  %t263 = load ptr, ptr %l10, !tbaa !29
  %t264 = load i64, ptr %l12, !tbaa !24
  %t271 = call { i64, ptr } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2ekeepsPromise(ptr %v0, ptr %v1, ptr %v2, ptr %v2, ptr %s3, ptr %t259, ptr %t260, ptr %t261, i32 %t262, ptr %t263, i64 %t264)
  store { i64, ptr } %t271, ptr %l145
  br label %bb67
bb67:
  %t272 = load { i64, ptr }, ptr %l145, !tbaa !27
  store { i64, ptr } %t272, ptr %l13, !tbaa !27
  %t273 = load { i64, ptr }, ptr %l13, !tbaa !27
  %t275 = extractvalue { i64, ptr } %t273, 0
  %t277 = icmp eq i64 %t275, 0
  br i1 %t277, label %bb68, label %bb69
bb68:
  call void @__olang_scope_close(ptr %s3)
  br label %bb108
bb69:
  br label %bb70
bb70:
  store i64 0, ptr %l14, !tbaa !24
  %t280 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %s0, ptr %l6)
  store i64 %t280, ptr %l150
  br label %bb71
bb71:
  %t281 = load i64, ptr %l150, !tbaa !24
  %t282 = sdiv i64 %t281, 3
  store i64 %t282, ptr %l15, !tbaa !24
  store i64 1, ptr %l16, !tbaa !24
  %t284 = load i64, ptr %l15, !tbaa !24
  %t285 = load i64, ptr %l14, !tbaa !24
  %t288 = icmp sgt i64 %t284, %t285
  br i1 %t288, label %bb72, label %bb73
bb72:
  %t290 = load i64, ptr %l16, !tbaa !24
  %t292 = icmp sgt i64 %t290, 0
  br i1 %t292, label %bb74, label %bb75
bb73:
  store i64 0, ptr %l155, !tbaa !24
  br label %bb77
bb74:
  %t294 = load i64, ptr %l15, !tbaa !24
  %t295 = load i64, ptr %l14, !tbaa !24
  %t298 = sub i64 %t294, %t295
  %t299 = load i64, ptr %l16, !tbaa !24
  %t302 = add i64 %t298, %t299
  %t304 = sub i64 %t302, 1
  %t305 = load i64, ptr %l16, !tbaa !24
  %t308 = sdiv i64 %t304, %t305
  store i64 %t308, ptr %l158, !tbaa !24
  br label %bb76
bb75:
  store i64 0, ptr %l158, !tbaa !24
  br label %bb76
bb76:
  %t310 = load i64, ptr %l158, !tbaa !24
  store i64 %t310, ptr %l155, !tbaa !24
  br label %bb77
bb77:
  %t311 = load i64, ptr %l155, !tbaa !24
  store i64 %t311, ptr %l17, !tbaa !24
  store i64 0, ptr %l18, !tbaa !24
  br label %bb78
bb78:
  %t312 = load i64, ptr %l18, !tbaa !24
  %t313 = load i64, ptr %l17, !tbaa !24
  %t316 = icmp slt i64 %t312, %t313
  %t318 = xor i1 %t316, true
  br i1 %t318, label %bb79, label %bb80
bb79:
  br label %bb100
bb80:
  br label %bb81
bb81:
  %t320 = load i64, ptr %l14, !tbaa !24
  %t321 = load i64, ptr %l18, !tbaa !24
  %t322 = load i64, ptr %l16, !tbaa !24
  %t325 = mul i64 %t321, %t322
  %t328 = add i64 %t320, %t325
  store i64 %t328, ptr %l19, !tbaa !24
  %t330 = load i64, ptr %l19, !tbaa !24
  %t332 = mul i64 3, %t330
  %t335 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %s0, ptr %l6, i64 %t332)
  store i64 %t335, ptr %l179
  br label %bb82
bb82:
  %t336 = getelementptr { i64, ptr }, ptr %l13, i32 0, i32 1
  %t337 = load ptr, ptr %t336, !tbaa !27
  %t338 = getelementptr i64, ptr %t337, i64 0
  %t339 = load i64, ptr %t338, !tbaa !34
  %t340 = load i64, ptr %l179, !tbaa !24
  %t342 = icmp eq i64 %t340, %t339
  br i1 %t342, label %bb83, label %bb84
bb83:
  %t344 = load i64, ptr %l19, !tbaa !24
  %t346 = mul i64 3, %t344
  %t348 = add i64 %t346, 1
  %t351 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %s0, ptr %l6, i64 %t348)
  store i64 %t351, ptr %l187
  br label %bb85
bb84:
  store i1 false, ptr %l182, !tbaa !21
  br label %bb86
bb85:
  %t352 = getelementptr { i64, ptr }, ptr %l13, i32 0, i32 1
  %t353 = load ptr, ptr %t352, !tbaa !27
  %t354 = getelementptr i64, ptr %t353, i64 1
  %t355 = load i64, ptr %t354, !tbaa !34
  %t356 = load i64, ptr %l187, !tbaa !24
  %t358 = icmp eq i64 %t356, %t355
  store i1 %t358, ptr %l182, !tbaa !21
  br label %bb86
bb86:
  %t360 = load i1, ptr %l182, !tbaa !21
  br i1 %t360, label %bb87, label %bb88
bb87:
  %t361 = load i64, ptr %l19, !tbaa !24
  %t363 = mul i64 3, %t361
  %t365 = add i64 %t363, 2
  %t368 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %s0, ptr %l6, i64 %t365)
  store i64 %t368, ptr %l195
  br label %bb89
bb88:
  store i1 false, ptr %l190, !tbaa !21
  br label %bb90
bb89:
  %t369 = getelementptr { i64, ptr }, ptr %l13, i32 0, i32 1
  %t370 = load ptr, ptr %t369, !tbaa !27
  %t371 = getelementptr i64, ptr %t370, i64 2
  %t372 = load i64, ptr %t371, !tbaa !34
  %t373 = load i64, ptr %l195, !tbaa !24
  %t375 = icmp eq i64 %t373, %t372
  store i1 %t375, ptr %l190, !tbaa !21
  br label %bb90
bb90:
  %t377 = load i1, ptr %l190, !tbaa !21
  br i1 %t377, label %bb91, label %bb92
bb91:
  store %olang.scope zeroinitializer, ptr %s18
  %t378 = load ptr, ptr %l0, !tbaa !29
  store ptr %t378, ptr %l198, !tbaa !29
  %t379 = load ptr, ptr %l1, !tbaa !29
  store ptr %t379, ptr %l199, !tbaa !29
  %t380 = load ptr, ptr %l10, !tbaa !29
  store ptr %t380, ptr %l200, !tbaa !29
  %t381 = load ptr, ptr %l0, !tbaa !29
  %t383 = getelementptr %"compiler/generic:Program", ptr %t381, i32 0, i32 2
  store ptr %t383, ptr %l202, !tbaa !29
  %t384 = load ptr, ptr %l0, !tbaa !29
  %t386 = getelementptr %"compiler/generic:Program", ptr %t384, i32 0, i32 2
  store ptr %t386, ptr %l204, !tbaa !29
  %t387 = load i32, ptr %l3, !tbaa !23
  store i32 %t387, ptr %l205, !tbaa !23
  %t388 = load ptr, ptr %l0, !tbaa !29
  %t389 = load ptr, ptr %l2, !tbaa !29
  %t392 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eSigNames(ptr %v0, ptr %v2, ptr %t388, ptr %t389)
  store i64 %t392, ptr %l208
  br label %bb93
bb92:
  br label %bb98
bb93:
  %t393 = load ptr, ptr %l204, !tbaa !29
  %t394 = load i32, ptr %l205, !tbaa !23
  %t395 = load i64, ptr %l208, !tbaa !24
  %t396 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eWithNames(ptr %v0, ptr %t393, i32 %t394, i64 %t395)
  store i32 %t396, ptr %l209
  br label %bb94
bb94:
  %t397 = getelementptr { i64, ptr }, ptr %l13, i32 0, i32 1
  %t398 = load ptr, ptr %t397, !tbaa !27
  %t399 = getelementptr i64, ptr %t398, i64 0
  %t400 = load i64, ptr %t399, !tbaa !34
  %t401 = getelementptr { i64, ptr }, ptr %l13, i32 0, i32 1
  %t402 = load ptr, ptr %t401, !tbaa !27
  %t403 = getelementptr i64, ptr %t402, i64 1
  %t404 = load i64, ptr %t403, !tbaa !34
  %t405 = getelementptr { i64, ptr }, ptr %l13, i32 0, i32 1
  %t406 = load ptr, ptr %t405, !tbaa !27
  %t407 = getelementptr i64, ptr %t406, i64 2
  %t408 = load i64, ptr %t407, !tbaa !34
  %t410 = inttoptr i64 0 to ptr
  %t411 = load ptr, ptr %l202, !tbaa !29
  %t412 = load i32, ptr %l209, !tbaa !23
  %t416 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKeepsText(ptr %v0, ptr %s18, ptr %t410, ptr %t411, i32 %t412, i64 %t400, i64 %t404, i64 %t408)
  store { i64, ptr } %t416, ptr %l214
  br label %bb95
bb95:
  %t417 = load { i64, ptr }, ptr %l214, !tbaa !27
  %t418 = extractvalue { i64, ptr } %t417, 0
  %t419 = extractvalue { i64, ptr } %t417, 1
  %t420 = mul i64 %t418, 1
  %t421 = call ptr @__olang_scope_alloc(ptr %s18, i64 %t420)
  call void @llvm.memcpy.p0.p0.i64(ptr %t421, ptr %t419, i64 %t420, i1 false)
  %t422 = insertvalue { i64, ptr } undef, i64 %t418, 0
  %t423 = insertvalue { i64, ptr } %t422, ptr %t421, 1
  %t425 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2ePromiseTwice(ptr %s18, ptr %s18, { i64, ptr } %t423)
  store %"compiler/diagmsg:Msg" %t425, ptr %l216
  br label %bb96
bb96:
  %t426 = load ptr, ptr %l198, !tbaa !29
  %t427 = load ptr, ptr %l199, !tbaa !29
  %t428 = load ptr, ptr %l200, !tbaa !29
  %t429 = load %"compiler/diagmsg:Msg", ptr %l216
  call void @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2epromiseErr(ptr %v0, ptr %v1, ptr %v2, ptr %s18, ptr %t426, ptr %t427, ptr %t428, %"compiler/diagmsg:Msg" %t429)
  br label %bb97
bb97:
  call void @__olang_scope_close(ptr %s18)
  br label %bb98
bb98:
  br label %bb99
bb99:
  %t430 = load i64, ptr %l18, !tbaa !24
  %t432 = add i64 %t430, 1
  store i64 %t432, ptr %l18, !tbaa !24
  br label %bb78
bb100:
  %t434 = load { i64, ptr }, ptr %l13, !tbaa !27
  store { i64, ptr } %t434, ptr %l20, !tbaa !27
  store i64 0, ptr %l21, !tbaa !24
  %t436 = load { i64, ptr }, ptr %l20, !tbaa !27
  %t438 = extractvalue { i64, ptr } %t436, 0
  store i64 %t438, ptr %l22, !tbaa !24
  br label %bb101
bb101:
  %t440 = load i64, ptr %l21, !tbaa !24
  %t441 = load i64, ptr %l22, !tbaa !24
  %t444 = icmp slt i64 %t440, %t441
  %t446 = xor i1 %t444, true
  br i1 %t446, label %bb102, label %bb103
bb102:
  br label %bb107
bb103:
  br label %bb104
bb104:
  %t448 = load { i64, ptr }, ptr %l20, !tbaa !27
  store { i64, ptr } %t448, ptr %l226, !tbaa !27
  %t449 = load i64, ptr %l21, !tbaa !24
  %t451 = getelementptr { i64, ptr }, ptr %l226, i32 0, i32 1
  %t452 = load ptr, ptr %t451, !tbaa !27
  %t453 = getelementptr i64, ptr %t452, i64 %t449
  %t454 = load i64, ptr %t453, !tbaa !34
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %s0, ptr %l6, i64 %t454)
  br label %bb105
bb105:
  br label %bb106
bb106:
  %t459 = load i64, ptr %l21, !tbaa !24
  %t461 = add i64 %t459, 1
  store i64 %t461, ptr %l21, !tbaa !24
  br label %bb101
bb107:
  call void @__olang_scope_close(ptr %s3)
  br label %bb108
bb108:
  %t463 = load i64, ptr %l8, !tbaa !24
  %t465 = add i64 %t463, 1
  store i64 %t465, ptr %l8, !tbaa !24
  br label %bb6
bb109:
  %t467 = load i64, ptr %l4, !tbaa !24
  %t468 = load i64, ptr @G_2ecompiler_2ftypes_2ePromNoborrow, !tbaa !24
  %t471 = and i64 %t467, %t468
  %t473 = icmp ne i64 %t471, 0
  br i1 %t473, label %bb110, label %bb111
bb110:
  %t476 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %s0, ptr %l5)
  store i64 %t476, ptr %l241
  br label %bb112
bb111:
  store i1 false, ptr %l239, !tbaa !21
  br label %bb113
bb112:
  %t477 = load i64, ptr %l241, !tbaa !24
  %t478 = icmp sgt i64 %t477, 0
  store i1 %t478, ptr %l239, !tbaa !21
  br label %bb113
bb113:
  %t480 = load i1, ptr %l239, !tbaa !21
  br i1 %t480, label %bb114, label %bb115
bb114:
  store %olang.scope zeroinitializer, ptr %s24
  %t481 = load ptr, ptr %l0, !tbaa !29
  store ptr %t481, ptr %l243, !tbaa !29
  %t482 = load ptr, ptr %l1, !tbaa !29
  store ptr %t482, ptr %l244, !tbaa !29
  %t483 = load ptr, ptr %l2, !tbaa !29
  %t485 = getelementptr %"compiler/ast:Sig", ptr %t483, i32 0, i32 8
  %t486 = load { i64, ptr }, ptr %t485, !tbaa !27
  store { i64, ptr } %t486, ptr %l246, !tbaa !27
  %t487 = getelementptr { i64, ptr }, ptr %l246, i32 0, i32 1
  %t488 = load ptr, ptr %t487, !tbaa !27
  %t489 = getelementptr ptr, ptr %t488, i64 0
  %t490 = load ptr, ptr %t489, !tbaa !39
  store ptr %t490, ptr %l247, !tbaa !29
  %t491 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2ePromiseBorrowsBoth(ptr %s24)
  store %"compiler/diagmsg:Msg" %t491, ptr %l248
  br label %bb116
bb115:
  br label %bb118
bb116:
  %t492 = load ptr, ptr %l243, !tbaa !29
  %t493 = load ptr, ptr %l244, !tbaa !29
  %t494 = load ptr, ptr %l247, !tbaa !29
  %t495 = load %"compiler/diagmsg:Msg", ptr %l248
  call void @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2epromiseErr(ptr %v0, ptr %v1, ptr %v2, ptr %s24, ptr %t492, ptr %t493, ptr %t494, %"compiler/diagmsg:Msg" %t495)
  br label %bb117
bb117:
  call void @__olang_scope_close(ptr %s24)
  br label %bb118
bb118:
  %t496 = load ptr, ptr %l0, !tbaa !29
  %t498 = getelementptr %"compiler/generic:Program", ptr %t496, i32 0, i32 2
  store ptr %t498, ptr %l250, !tbaa !29
  %t499 = load i64, ptr %l4, !tbaa !24
  store i64 %t499, ptr %l251, !tbaa !24
  %t501 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eToArray_3cI64_3e(ptr %s0, ptr %s0, ptr %l5)
  store { i64, ptr } %t501, ptr %l253
  br label %bb119
bb119:
  %t503 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eToArray_3cI64_3e(ptr %s0, ptr %s0, ptr %l6)
  store { i64, ptr } %t503, ptr %l255
  br label %bb120
bb120:
  %t504 = load ptr, ptr %l250, !tbaa !29
  %t505 = load i64, ptr %l251, !tbaa !24
  %t506 = load { i64, ptr }, ptr %l253, !tbaa !27
  %t507 = load { i64, ptr }, ptr %l255, !tbaa !27
  %t508 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePromises(ptr %v0, ptr %s0, ptr %s0, ptr %t504, i64 %t505, { i64, ptr } %t506, { i64, ptr } %t507)
  store i64 %t508, ptr %l256
  br label %bb121
bb121:
  call void @__olang_scope_close(ptr %s0)
  %t509 = load i64, ptr %l256, !tbaa !24
  store i64 %t509, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2erecvOf(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca { i64, ptr }
  %l4 = alloca ptr
  %l6 = alloca ptr
  %l9 = alloca i32
  %l10 = alloca i32
  %l11 = alloca { i64, ptr }
  %l18 = alloca { i64, ptr }
  %l20 = alloca i32
  %l23 = alloca i32
  %l26 = alloca { i64, ptr }
  %l28 = alloca i32
  %l29 = alloca { i64, ptr }
  %rv = alloca i32
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/generic:Program", ptr %t1, i32 0, i32 2
  store ptr %t3, ptr %l4, !tbaa !29
  %t4 = load ptr, ptr %l0, !tbaa !29
  %t6 = getelementptr %"compiler/generic:Program", ptr %t4, i32 0, i32 2
  store ptr %t6, ptr %l6, !tbaa !29
  %t7 = load ptr, ptr %l0, !tbaa !29
  %t11 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eSig(ptr %v0, ptr %t7, i64 %a1)
  store i32 %t11, ptr %l9
  br label %bb1
bb1:
  %t12 = load ptr, ptr %l6, !tbaa !29
  %t13 = load i32, ptr %l9, !tbaa !23
  %t14 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParams(ptr %v0, ptr %t12, i32 %t13)
  store i32 %t14, ptr %l10
  br label %bb2
bb2:
  %t15 = load ptr, ptr %l4, !tbaa !29
  %t16 = load i32, ptr %l10, !tbaa !23
  %t17 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t15, i32 %t16)
  store { i64, ptr } %t17, ptr %l11
  br label %bb3
bb3:
  %t18 = load { i64, ptr }, ptr %l11, !tbaa !27
  store { i64, ptr } %t18, ptr %l2, !tbaa !27
  %t19 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t21 = extractvalue { i64, ptr } %t19, 0
  %t23 = icmp eq i64 %t21, 0
  br i1 %t23, label %bb4, label %bb5
bb4:
  %t25 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  store i32 %t25, ptr %rv
  br label %ret
bb5:
  br label %bb6
bb6:
  %t27 = load ptr, ptr %l0, !tbaa !29
  %t29 = getelementptr %"compiler/generic:Program", ptr %t27, i32 0, i32 2
  %t30 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t30, ptr %l18, !tbaa !27
  %t31 = getelementptr { i64, ptr }, ptr %l18, i32 0, i32 1
  %t32 = load ptr, ptr %t31, !tbaa !27
  %t33 = getelementptr i32, ptr %t32, i64 0
  %t34 = load i32, ptr %t33, !tbaa !33
  %t37 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t29, i32 %t34)
  store i32 %t37, ptr %l20
  br label %bb7
bb7:
  %t38 = load i32, ptr %l20, !range !{i32 0, i32 33}
  %t40 = trunc i64 20 to i32
  %t41 = icmp eq i32 %t38, %t40
  br i1 %t41, label %bb8, label %bb9
bb8:
  %t43 = load ptr, ptr %l0, !tbaa !29
  %t45 = getelementptr %"compiler/generic:Program", ptr %t43, i32 0, i32 2
  %t46 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t46, ptr %l26, !tbaa !27
  %t47 = getelementptr { i64, ptr }, ptr %l26, i32 0, i32 1
  %t48 = load ptr, ptr %t47, !tbaa !27
  %t49 = getelementptr i32, ptr %t48, i64 0
  %t50 = load i32, ptr %t49, !tbaa !33
  %t53 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eReferent(ptr %v0, ptr %t45, i32 %t50)
  store i32 %t53, ptr %l28
  br label %bb10
bb9:
  %t54 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t54, ptr %l29, !tbaa !27
  %t55 = getelementptr { i64, ptr }, ptr %l29, i32 0, i32 1
  %t56 = load ptr, ptr %t55, !tbaa !27
  %t57 = getelementptr i32, ptr %t56, i64 0
  %t58 = load i32, ptr %t57, !tbaa !33
  store i32 %t58, ptr %l23, !tbaa !23
  br label %bb11
bb10:
  %t60 = load i32, ptr %l28, !tbaa !23
  store i32 %t60, ptr %l23, !tbaa !23
  br label %bb11
bb11:
  %t61 = load i32, ptr %l23, !tbaa !23
  store i32 %t61, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
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

define dso_local i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2esealedBy(ptr %v0, ptr %a0, i32 %a1, i32 %a2, i64 %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l4 = alloca i64
  %l5 = alloca i32
  %l8 = alloca i64
  %l12 = alloca %"compiler/generic:fnRow"
  %l20 = alloca i32
  %l23 = alloca i32
  %l27 = alloca i32
  %l32 = alloca i32
  %l36 = alloca i1
  %l37 = alloca ptr
  %l41 = alloca i32
  %l42 = alloca i64
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
  %t5 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eDeclModule(ptr %v0, ptr %t1, i32 %a2)
  store i64 %t5, ptr %l8
  br label %bb1
bb1:
  %t6 = load i64, ptr %l8, !tbaa !24
  store i64 %t6, ptr %l4, !tbaa !24
  %t7 = load ptr, ptr %l0, !tbaa !29
  %t9 = getelementptr %"compiler/generic:Program", ptr %t7, i32 0, i32 29
  %t13 = call %"compiler/generic:fnRow" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fgeneric_3afnRow_3e_2eAt_3ccompiler_2fgeneric_3afnRow_3e(ptr %v0, ptr %s0, ptr %t9, i64 %a3)
  store %"compiler/generic:fnRow" %t13, ptr %l12
  br label %bb2
bb2:
  %t14 = getelementptr %"compiler/generic:fnRow", ptr %l12, i32 0, i32 0
  %t15 = load i64, ptr %t14, !tbaa !24
  %t16 = load i64, ptr %l4, !tbaa !24
  %t19 = icmp ne i64 %t15, %t16
  br i1 %t19, label %bb3, label %bb4
bb3:
  call void @__olang_scope_close(ptr %s0)
  store i1 false, ptr %rv
  br label %ret
bb4:
  br label %bb5
bb5:
  %t22 = load ptr, ptr %l0, !tbaa !29
  %t24 = getelementptr %"compiler/generic:Program", ptr %t22, i32 0, i32 2
  %t25 = load i32, ptr %l1, !tbaa !23
  %t28 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t24, i32 %t25)
  store i32 %t28, ptr %l20
  br label %bb6
bb6:
  %t29 = load i32, ptr %l20, !range !{i32 0, i32 33}
  %t31 = trunc i64 20 to i32
  %t32 = icmp eq i32 %t29, %t31
  br i1 %t32, label %bb7, label %bb8
bb7:
  %t34 = load ptr, ptr %l0, !tbaa !29
  %t36 = getelementptr %"compiler/generic:Program", ptr %t34, i32 0, i32 2
  %t37 = load i32, ptr %l1, !tbaa !23
  %t40 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eReferent(ptr %v0, ptr %t36, i32 %t37)
  store i32 %t40, ptr %l27
  br label %bb9
bb8:
  %t41 = load i32, ptr %l1, !tbaa !23
  store i32 %t41, ptr %l23, !tbaa !23
  br label %bb10
bb9:
  %t43 = load i32, ptr %l27, !tbaa !23
  store i32 %t43, ptr %l23, !tbaa !23
  br label %bb10
bb10:
  %t44 = load i32, ptr %l23, !tbaa !23
  store i32 %t44, ptr %l5, !tbaa !23
  %t45 = load ptr, ptr %l0, !tbaa !29
  %t47 = getelementptr %"compiler/generic:Program", ptr %t45, i32 0, i32 2
  %t48 = load i32, ptr %l5, !tbaa !23
  %t51 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t47, i32 %t48)
  store i32 %t51, ptr %l32
  br label %bb11
bb11:
  %t52 = load i32, ptr %l32, !range !{i32 0, i32 33}
  %t54 = trunc i64 18 to i32
  %t55 = icmp eq i32 %t52, %t54
  %t57 = xor i1 %t55, true
  br i1 %t57, label %bb12, label %bb13
bb12:
  store i1 true, ptr %l36, !tbaa !21
  br label %bb16
bb13:
  %t59 = load ptr, ptr %l0, !tbaa !29
  store ptr %t59, ptr %l37, !tbaa !29
  %t60 = load ptr, ptr %l0, !tbaa !29
  %t62 = getelementptr %"compiler/generic:Program", ptr %t60, i32 0, i32 2
  %t63 = load i32, ptr %l5, !tbaa !23
  %t66 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %t62, i32 %t63)
  store i32 %t66, ptr %l41
  br label %bb14
bb14:
  %t67 = load ptr, ptr %l37, !tbaa !29
  %t68 = load i32, ptr %l41, !tbaa !23
  %t69 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eDeclModule(ptr %v0, ptr %t67, i32 %t68)
  store i64 %t69, ptr %l42
  br label %bb15
bb15:
  %t70 = load i64, ptr %l4, !tbaa !24
  %t71 = load i64, ptr %l42, !tbaa !24
  %t73 = icmp eq i64 %t71, %t70
  store i1 %t73, ptr %l36, !tbaa !21
  br label %bb16
bb16:
  call void @__olang_scope_close(ptr %s0)
  %t75 = load i1, ptr %l36, !tbaa !21
  store i1 %t75, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2esubstList(ptr %v0, ptr %a0, i32 %a1, i64 %a2, i32 %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l4 = alloca { i64, ptr }
  %l5 = alloca { i64, ptr }
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca i64
  %l18 = alloca { i64, ptr }
  %l20 = alloca i64
  %l29 = alloca i64
  %l32 = alloca i64
  %l50 = alloca i64
  %l52 = alloca { i64, ptr }
  %l57 = alloca i32
  %l63 = alloca i32
  %s0 = alloca %olang.scope
  %rv = alloca i32
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
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
  %t10 = load i32, ptr %l1, !tbaa !23
  %t13 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t9, i32 %t10)
  store { i64, ptr } %t13, ptr %l18
  br label %bb4
bb4:
  %t14 = load { i64, ptr }, ptr %l18, !tbaa !27
  store { i64, ptr } %t14, ptr %l4, !tbaa !27
  %t15 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t17 = extractvalue { i64, ptr } %t15, 0
  store i64 %t17, ptr %l20, !tbaa !24
  %t18 = load i64, ptr %l20, !tbaa !24
  %t19 = icmp sge i64 %t18, 0
  br i1 %t19, label %bb5, label %bb6
bb5:
  %t21 = load i64, ptr %l20, !tbaa !24
  %t22 = icmp sle i64 %t21, 2305843009213693951
  br i1 %t22, label %bb7, label %bb8
bb6:
  call void @__olang_check_failed(ptr @olang_loc_4439a413e01d0c26_16c6d6890310944a)
  unreachable
bb7:
  %t24 = load i64, ptr %l20, !tbaa !24
  %t25 = mul i64 %t24, 4
  %t26 = call ptr @__olang_scope_alloc_zeroed(ptr %s0, i64 %t25)
  %t27 = insertvalue { i64, ptr } undef, i64 %t24, 0
  %t28 = insertvalue { i64, ptr } %t27, ptr %t26, 1
  store { i64, ptr } %t28, ptr %l5, !tbaa !27
  store i64 0, ptr %l6, !tbaa !24
  %t30 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t32 = extractvalue { i64, ptr } %t30, 0
  store i64 %t32, ptr %l7, !tbaa !24
  store i64 1, ptr %l8, !tbaa !24
  %t34 = load i64, ptr %l7, !tbaa !24
  %t35 = load i64, ptr %l6, !tbaa !24
  %t38 = icmp sgt i64 %t34, %t35
  br i1 %t38, label %bb9, label %bb10
bb8:
  call void @__olang_check_failed(ptr @olang_loc_4439a413e01d0c26_16c6d6890310944a)
  unreachable
bb9:
  %t40 = load i64, ptr %l8, !tbaa !24
  %t42 = icmp sgt i64 %t40, 0
  br i1 %t42, label %bb11, label %bb12
bb10:
  store i64 0, ptr %l29, !tbaa !24
  br label %bb14
bb11:
  %t44 = load i64, ptr %l7, !tbaa !24
  %t45 = load i64, ptr %l6, !tbaa !24
  %t48 = sub i64 %t44, %t45
  %t49 = load i64, ptr %l8, !tbaa !24
  %t52 = add i64 %t48, %t49
  %t54 = sub i64 %t52, 1
  %t55 = load i64, ptr %l8, !tbaa !24
  %t58 = sdiv i64 %t54, %t55
  store i64 %t58, ptr %l32, !tbaa !24
  br label %bb13
bb12:
  store i64 0, ptr %l32, !tbaa !24
  br label %bb13
bb13:
  %t60 = load i64, ptr %l32, !tbaa !24
  store i64 %t60, ptr %l29, !tbaa !24
  br label %bb14
bb14:
  %t61 = load i64, ptr %l29, !tbaa !24
  store i64 %t61, ptr %l9, !tbaa !24
  store i64 0, ptr %l10, !tbaa !24
  br label %bb15
bb15:
  %t62 = load i64, ptr %l10, !tbaa !24
  %t63 = load i64, ptr %l9, !tbaa !24
  %t66 = icmp slt i64 %t62, %t63
  %t68 = xor i1 %t66, true
  br i1 %t68, label %bb16, label %bb17
bb16:
  br label %bb21
bb17:
  br label %bb18
bb18:
  %t70 = load i64, ptr %l6, !tbaa !24
  %t71 = load i64, ptr %l10, !tbaa !24
  %t72 = load i64, ptr %l8, !tbaa !24
  %t75 = mul i64 %t71, %t72
  %t78 = add i64 %t70, %t75
  store i64 %t78, ptr %l11, !tbaa !24
  %t80 = load i64, ptr %l11, !tbaa !24
  store i64 %t80, ptr %l50, !tbaa !24
  %t81 = load ptr, ptr %l0, !tbaa !29
  %t82 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t82, ptr %l52, !tbaa !27
  %t83 = load i64, ptr %l11, !tbaa !24
  %t85 = getelementptr { i64, ptr }, ptr %l52, i32 0, i32 1
  %t86 = load ptr, ptr %t85, !tbaa !27
  %t87 = getelementptr i32, ptr %t86, i64 %t83
  %t88 = load i32, ptr %t87, !tbaa !33
  %t95 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eSubst(ptr %v0, ptr %t81, i32 %t88, i64 %a2, i32 %a3)
  store i32 %t95, ptr %l57
  br label %bb19
bb19:
  %t96 = load i32, ptr %l57, !tbaa !23
  %t97 = load i64, ptr %l50, !tbaa !24
  %t98 = getelementptr { i64, ptr }, ptr %l5, i32 0, i32 1
  %t99 = load ptr, ptr %t98, !tbaa !27
  %t100 = getelementptr i32, ptr %t99, i64 %t97
  store i32 %t96, ptr %t100, !tbaa !33
  br label %bb20
bb20:
  %t101 = load i64, ptr %l10, !tbaa !24
  %t103 = add i64 %t101, 1
  store i64 %t103, ptr %l10, !tbaa !24
  br label %bb15
bb21:
  %t105 = load ptr, ptr %l0, !tbaa !29
  %t107 = getelementptr %"compiler/generic:Program", ptr %t105, i32 0, i32 2
  %t108 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t111 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eList(ptr %v0, ptr %s0, ptr %t107, { i64, ptr } %t108)
  store i32 %t111, ptr %l63
  br label %bb22
bb22:
  call void @__olang_scope_close(ptr %s0)
  %t112 = load i32, ptr %l63, !tbaa !23
  store i32 %t112, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eunknowns(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l3 = alloca ptr
  %l4 = alloca i64
  %l5 = alloca i32
  %l9 = alloca i32
  %s0 = alloca %olang.scope
  %rv = alloca i32
  %t16 = alloca i64
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t3 = getelementptr %"compiler/generic:Program", ptr %a0, i32 0, i32 2
  store ptr %t3, ptr %l3, !tbaa !29
  store i64 %a1, ptr %l4, !tbaa !24
  %t5 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  store i32 %t5, ptr %l5, !tbaa !23
  %t6 = load i64, ptr %l4, !tbaa !24
  %t7 = icmp sge i64 %t6, 0
  br i1 %t7, label %bb1, label %bb2
bb1:
  %t9 = load i64, ptr %l4, !tbaa !24
  %t10 = icmp sle i64 %t9, 2305843009213693951
  br i1 %t10, label %bb3, label %bb4
bb2:
  call void @__olang_check_failed(ptr @olang_loc_b7daf7406ba778a4_42e2bd1e0b6e1610)
  unreachable
bb3:
  %t12 = load i64, ptr %l4, !tbaa !24
  %t13 = mul i64 %t12, 4
  %t14 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t13)
  %t15 = load i32, ptr %l5, !tbaa !23
  store i64 0, ptr %t16
  br label %fill.17
fill.17:
  %t20 = load i64, ptr %t16
  %t21 = icmp slt i64 %t20, %t12
  br i1 %t21, label %fillb.18, label %filld.19
fillb.18:
  %t22 = getelementptr i32, ptr %t14, i64 %t20
  store i32 %t15, ptr %t22
  %t23 = add i64 %t20, 1
  store i64 %t23, ptr %t16
  br label %fill.17
filld.19:
  %t24 = insertvalue { i64, ptr } undef, i64 %t12, 0
  %t25 = insertvalue { i64, ptr } %t24, ptr %t14, 1
  %t26 = load ptr, ptr %l3, !tbaa !29
  %t28 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eList(ptr %v0, ptr %s0, ptr %t26, { i64, ptr } %t25)
  store i32 %t28, ptr %l9
  br label %bb5
bb4:
  call void @__olang_check_failed(ptr @olang_loc_b7daf7406ba778a4_42e2bd1e0b6e1610)
  unreachable
bb5:
  call void @__olang_scope_close(ptr %s0)
  %t29 = load i32, ptr %l9, !tbaa !23
  store i32 %t29, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
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

define dso_local i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3agenRoots_2eroot(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i32
  %l3 = alloca ptr
  %l4 = alloca ptr
  %l5 = alloca ptr
  %l6 = alloca ptr
  %l7 = alloca ptr
  %l8 = alloca ptr
  %l9 = alloca ptr
  %l13 = alloca i64
  %l14 = alloca ptr
  %l15 = alloca i1
  %l22 = alloca i64
  %l23 = alloca ptr
  %l24 = alloca i1
  %l29 = alloca ptr
  %l30 = alloca i1
  %l35 = alloca ptr
  %l36 = alloca i1
  %l41 = alloca ptr
  %l42 = alloca i1
  %l50 = alloca i64
  %l51 = alloca ptr
  %l52 = alloca i1
  %l57 = alloca ptr
  %l58 = alloca i1
  %l63 = alloca ptr
  %l64 = alloca i1
  %l69 = alloca ptr
  %l70 = alloca i1
  %l78 = alloca i64
  %l79 = alloca ptr
  %l80 = alloca i1
  %l88 = alloca i64
  %l89 = alloca ptr
  %l90 = alloca i1
  %l100 = alloca i64
  %l104 = alloca i64
  %l106 = alloca ptr
  %l107 = alloca i1
  %l114 = alloca i64
  %l115 = alloca ptr
  %l116 = alloca i1
  %l123 = alloca i64
  %rv = alloca i64
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
  store i64 0, ptr %rv
  br label %ret
bb2:
  br label %bb3
bb3:
  %t6 = load ptr, ptr %l1, !tbaa !29
  store ptr %t6, ptr %l14, !tbaa !29
  store i1 false, ptr %l15, !tbaa !21
  %t7 = load ptr, ptr %l14, !tbaa !29
  %t8 = icmp ne ptr %t7, null
  br i1 %t8, label %bb4, label %bb5
bb4:
  %t10 = load ptr, ptr %l14, !tbaa !29
  %t11 = load i64, ptr %t10, !range !{i64 0, i64 30}
  %t13 = icmp eq i64 %t11, 0
  store i1 %t13, ptr %l15, !tbaa !21
  br label %bb5
bb5:
  %t14 = load i1, ptr %l15, !tbaa !21
  br i1 %t14, label %bb6, label %bb7
bb6:
  %t15 = load ptr, ptr %l1, !tbaa !29
  %t17 = getelementptr { i64, [4 x i64] }, ptr %t15, i32 0, i32 1
  %t18 = getelementptr { %"compiler/source:Span", i32 }, ptr %t17, i32 0, i32 1
  %t19 = load i32, ptr %t18
  store i32 %t19, ptr %l2, !tbaa !23
  br label %bb8
bb7:
  br label %bb10
bb8:
  %t21 = load ptr, ptr %l0, !tbaa !29
  %t22 = load i32, ptr %l2, !tbaa !23
  %t25 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3agenRoots_2enameRoot(ptr %v0, ptr %t21, i32 %t22)
  store i64 %t25, ptr %l22
  br label %bb9
bb9:
  %t26 = load i64, ptr %l22, !tbaa !24
  store i64 %t26, ptr %l13, !tbaa !24
  br label %bb82
bb10:
  %t27 = load ptr, ptr %l1, !tbaa !29
  store ptr %t27, ptr %l23, !tbaa !29
  store i1 false, ptr %l24, !tbaa !21
  %t28 = load ptr, ptr %l23, !tbaa !29
  %t29 = icmp ne ptr %t28, null
  br i1 %t29, label %bb11, label %bb12
bb11:
  %t31 = load ptr, ptr %l23, !tbaa !29
  %t32 = load i64, ptr %t31, !range !{i64 0, i64 30}
  %t34 = icmp eq i64 %t32, 2
  store i1 %t34, ptr %l24, !tbaa !21
  br label %bb12
bb12:
  %t35 = load i1, ptr %l24, !tbaa !21
  br i1 %t35, label %bb13, label %bb14
bb13:
  %t36 = load ptr, ptr %l1, !tbaa !29
  %t38 = getelementptr { i64, [4 x i64] }, ptr %t36, i32 0, i32 1
  %t39 = getelementptr { %"compiler/source:Span", ptr }, ptr %t38, i32 0, i32 1
  %t40 = load ptr, ptr %t39
  store ptr %t40, ptr %l3, !tbaa !29
  br label %bb27
bb14:
  %t42 = load ptr, ptr %l1, !tbaa !29
  store ptr %t42, ptr %l29, !tbaa !29
  store i1 false, ptr %l30, !tbaa !21
  %t43 = load ptr, ptr %l29, !tbaa !29
  %t44 = icmp ne ptr %t43, null
  br i1 %t44, label %bb15, label %bb16
bb15:
  %t46 = load ptr, ptr %l29, !tbaa !29
  %t47 = load i64, ptr %t46, !range !{i64 0, i64 30}
  %t49 = icmp eq i64 %t47, 26
  store i1 %t49, ptr %l30, !tbaa !21
  br label %bb16
bb16:
  %t50 = load i1, ptr %l30, !tbaa !21
  br i1 %t50, label %bb17, label %bb18
bb17:
  %t51 = load ptr, ptr %l1, !tbaa !29
  %t53 = getelementptr { i64, [4 x i64] }, ptr %t51, i32 0, i32 1
  %t54 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t53, i32 0, i32 2
  %t55 = load ptr, ptr %t54
  store ptr %t55, ptr %l3, !tbaa !29
  br label %bb27
bb18:
  %t57 = load ptr, ptr %l1, !tbaa !29
  store ptr %t57, ptr %l35, !tbaa !29
  store i1 false, ptr %l36, !tbaa !21
  %t58 = load ptr, ptr %l35, !tbaa !29
  %t59 = icmp ne ptr %t58, null
  br i1 %t59, label %bb19, label %bb20
bb19:
  %t61 = load ptr, ptr %l35, !tbaa !29
  %t62 = load i64, ptr %t61, !range !{i64 0, i64 30}
  %t64 = icmp eq i64 %t62, 28
  store i1 %t64, ptr %l36, !tbaa !21
  br label %bb20
bb20:
  %t65 = load i1, ptr %l36, !tbaa !21
  br i1 %t65, label %bb21, label %bb22
bb21:
  %t66 = load ptr, ptr %l1, !tbaa !29
  %t68 = getelementptr { i64, [4 x i64] }, ptr %t66, i32 0, i32 1
  %t69 = getelementptr { %"compiler/source:Span", ptr }, ptr %t68, i32 0, i32 1
  %t70 = load ptr, ptr %t69
  store ptr %t70, ptr %l3, !tbaa !29
  br label %bb27
bb22:
  %t72 = load ptr, ptr %l1, !tbaa !29
  store ptr %t72, ptr %l41, !tbaa !29
  store i1 false, ptr %l42, !tbaa !21
  %t73 = load ptr, ptr %l41, !tbaa !29
  %t74 = icmp ne ptr %t73, null
  br i1 %t74, label %bb23, label %bb24
bb23:
  %t76 = load ptr, ptr %l41, !tbaa !29
  %t77 = load i64, ptr %t76, !range !{i64 0, i64 30}
  %t79 = icmp eq i64 %t77, 4
  store i1 %t79, ptr %l42, !tbaa !21
  br label %bb24
bb24:
  %t80 = load i1, ptr %l42, !tbaa !21
  br i1 %t80, label %bb25, label %bb26
bb25:
  %t81 = load ptr, ptr %l1, !tbaa !29
  %t83 = getelementptr { i64, [4 x i64] }, ptr %t81, i32 0, i32 1
  %t84 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t83, i32 0, i32 2
  %t85 = load ptr, ptr %t84
  store ptr %t85, ptr %l3, !tbaa !29
  br label %bb27
bb26:
  br label %bb29
bb27:
  %t87 = load ptr, ptr %l0, !tbaa !29
  %t88 = load ptr, ptr %l3, !tbaa !29
  %t92 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3agenRoots_2eroot(ptr %v0, ptr %v1, ptr %t87, ptr %t88)
  store i64 %t92, ptr %l50
  br label %bb28
bb28:
  %t93 = load i64, ptr %l50, !tbaa !24
  store i64 %t93, ptr %l13, !tbaa !24
  br label %bb82
bb29:
  %t94 = load ptr, ptr %l1, !tbaa !29
  store ptr %t94, ptr %l51, !tbaa !29
  store i1 false, ptr %l52, !tbaa !21
  %t95 = load ptr, ptr %l51, !tbaa !29
  %t96 = icmp ne ptr %t95, null
  br i1 %t96, label %bb30, label %bb31
bb30:
  %t98 = load ptr, ptr %l51, !tbaa !29
  %t99 = load i64, ptr %t98, !range !{i64 0, i64 30}
  %t101 = icmp eq i64 %t99, 14
  store i1 %t101, ptr %l52, !tbaa !21
  br label %bb31
bb31:
  %t102 = load i1, ptr %l52, !tbaa !21
  br i1 %t102, label %bb32, label %bb33
bb32:
  %t103 = load ptr, ptr %l1, !tbaa !29
  %t105 = getelementptr { i64, [4 x i64] }, ptr %t103, i32 0, i32 1
  %t106 = getelementptr { %"compiler/source:Span", ptr, i32 }, ptr %t105, i32 0, i32 1
  %t107 = load ptr, ptr %t106
  store ptr %t107, ptr %l4, !tbaa !29
  br label %bb46
bb33:
  %t109 = load ptr, ptr %l1, !tbaa !29
  store ptr %t109, ptr %l57, !tbaa !29
  store i1 false, ptr %l58, !tbaa !21
  %t110 = load ptr, ptr %l57, !tbaa !29
  %t111 = icmp ne ptr %t110, null
  br i1 %t111, label %bb34, label %bb35
bb34:
  %t113 = load ptr, ptr %l57, !tbaa !29
  %t114 = load i64, ptr %t113, !range !{i64 0, i64 30}
  %t116 = icmp eq i64 %t114, 15
  store i1 %t116, ptr %l58, !tbaa !21
  br label %bb35
bb35:
  %t117 = load i1, ptr %l58, !tbaa !21
  br i1 %t117, label %bb36, label %bb37
bb36:
  %t118 = load ptr, ptr %l1, !tbaa !29
  %t120 = getelementptr { i64, [4 x i64] }, ptr %t118, i32 0, i32 1
  %t121 = getelementptr { %"compiler/source:Span", ptr, { i64, ptr } }, ptr %t120, i32 0, i32 1
  %t122 = load ptr, ptr %t121
  store ptr %t122, ptr %l4, !tbaa !29
  br label %bb46
bb37:
  %t124 = load ptr, ptr %l1, !tbaa !29
  store ptr %t124, ptr %l63, !tbaa !29
  store i1 false, ptr %l64, !tbaa !21
  %t125 = load ptr, ptr %l63, !tbaa !29
  %t126 = icmp ne ptr %t125, null
  br i1 %t126, label %bb38, label %bb39
bb38:
  %t128 = load ptr, ptr %l63, !tbaa !29
  %t129 = load i64, ptr %t128, !range !{i64 0, i64 30}
  %t131 = icmp eq i64 %t129, 16
  store i1 %t131, ptr %l64, !tbaa !21
  br label %bb39
bb39:
  %t132 = load i1, ptr %l64, !tbaa !21
  br i1 %t132, label %bb40, label %bb41
bb40:
  %t133 = load ptr, ptr %l1, !tbaa !29
  %t135 = getelementptr { i64, [4 x i64] }, ptr %t133, i32 0, i32 1
  %t136 = getelementptr { %"compiler/source:Span", ptr, ptr, ptr }, ptr %t135, i32 0, i32 1
  %t137 = load ptr, ptr %t136
  store ptr %t137, ptr %l4, !tbaa !29
  br label %bb46
bb41:
  %t139 = load ptr, ptr %l1, !tbaa !29
  store ptr %t139, ptr %l69, !tbaa !29
  store i1 false, ptr %l70, !tbaa !21
  %t140 = load ptr, ptr %l69, !tbaa !29
  %t141 = icmp ne ptr %t140, null
  br i1 %t141, label %bb42, label %bb43
bb42:
  %t143 = load ptr, ptr %l69, !tbaa !29
  %t144 = load i64, ptr %t143, !range !{i64 0, i64 30}
  %t146 = icmp eq i64 %t144, 11
  store i1 %t146, ptr %l70, !tbaa !21
  br label %bb43
bb43:
  %t147 = load i1, ptr %l70, !tbaa !21
  br i1 %t147, label %bb44, label %bb45
bb44:
  %t148 = load ptr, ptr %l1, !tbaa !29
  %t150 = getelementptr { i64, [4 x i64] }, ptr %t148, i32 0, i32 1
  %t151 = getelementptr { %"compiler/source:Span", ptr, ptr }, ptr %t150, i32 0, i32 1
  %t152 = load ptr, ptr %t151
  store ptr %t152, ptr %l4, !tbaa !29
  br label %bb46
bb45:
  br label %bb48
bb46:
  %t154 = load ptr, ptr %l0, !tbaa !29
  %t155 = load ptr, ptr %l4, !tbaa !29
  %t159 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3agenRoots_2eroot(ptr %v0, ptr %v1, ptr %t154, ptr %t155)
  store i64 %t159, ptr %l78
  br label %bb47
bb47:
  %t160 = load i64, ptr %l78, !tbaa !24
  store i64 %t160, ptr %l13, !tbaa !24
  br label %bb82
bb48:
  %t161 = load ptr, ptr %l1, !tbaa !29
  store ptr %t161, ptr %l79, !tbaa !29
  store i1 false, ptr %l80, !tbaa !21
  %t162 = load ptr, ptr %l79, !tbaa !29
  %t163 = icmp ne ptr %t162, null
  br i1 %t163, label %bb49, label %bb50
bb49:
  %t165 = load ptr, ptr %l79, !tbaa !29
  %t166 = load i64, ptr %t165, !range !{i64 0, i64 30}
  %t168 = icmp eq i64 %t166, 21
  store i1 %t168, ptr %l80, !tbaa !21
  br label %bb50
bb50:
  %t169 = load i1, ptr %l80, !tbaa !21
  br i1 %t169, label %bb51, label %bb52
bb51:
  %t170 = load ptr, ptr %l1, !tbaa !29
  %t172 = getelementptr { i64, [4 x i64] }, ptr %t170, i32 0, i32 1
  %t173 = getelementptr { %"compiler/source:Span", ptr, { i64, ptr } }, ptr %t172, i32 0, i32 1
  %t174 = load ptr, ptr %t173
  store ptr %t174, ptr %l5, !tbaa !29
  br label %bb53
bb52:
  br label %bb55
bb53:
  %t176 = load ptr, ptr %l0, !tbaa !29
  %t177 = load ptr, ptr %l5, !tbaa !29
  %t181 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3agenRoots_2eroot(ptr %v0, ptr %v1, ptr %t176, ptr %t177)
  store i64 %t181, ptr %l88
  br label %bb54
bb54:
  %t182 = load i64, ptr %l88, !tbaa !24
  store i64 %t182, ptr %l13, !tbaa !24
  br label %bb82
bb55:
  %t183 = load ptr, ptr %l1, !tbaa !29
  store ptr %t183, ptr %l89, !tbaa !29
  store i1 false, ptr %l90, !tbaa !21
  %t184 = load ptr, ptr %l89, !tbaa !29
  %t185 = icmp ne ptr %t184, null
  br i1 %t185, label %bb56, label %bb57
bb56:
  %t187 = load ptr, ptr %l89, !tbaa !29
  %t188 = load i64, ptr %t187, !range !{i64 0, i64 30}
  %t190 = icmp eq i64 %t188, 8
  store i1 %t190, ptr %l90, !tbaa !21
  br label %bb57
bb57:
  %t191 = load i1, ptr %l90, !tbaa !21
  br i1 %t191, label %bb58, label %bb59
bb58:
  %t192 = load ptr, ptr %l1, !tbaa !29
  %t194 = getelementptr { i64, [4 x i64] }, ptr %t192, i32 0, i32 1
  %t195 = getelementptr { %"compiler/source:Span", ptr, ptr, ptr }, ptr %t194, i32 0, i32 1
  %t196 = load ptr, ptr %t195
  store ptr %t196, ptr %l6, !tbaa !29
  %t198 = load ptr, ptr %l1, !tbaa !29
  %t200 = getelementptr { i64, [4 x i64] }, ptr %t198, i32 0, i32 1
  %t201 = getelementptr { %"compiler/source:Span", ptr, ptr, ptr }, ptr %t200, i32 0, i32 3
  %t202 = load ptr, ptr %t201
  store ptr %t202, ptr %l7, !tbaa !29
  br label %bb60
bb59:
  br label %bb63
bb60:
  %t204 = load ptr, ptr %l0, !tbaa !29
  %t205 = load ptr, ptr %l6, !tbaa !29
  %t209 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3agenRoots_2eroot(ptr %v0, ptr %v1, ptr %t204, ptr %t205)
  store i64 %t209, ptr %l100
  br label %bb61
bb61:
  %t210 = load ptr, ptr %l0, !tbaa !29
  %t211 = load ptr, ptr %l7, !tbaa !29
  %t215 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3agenRoots_2eroot(ptr %v0, ptr %v1, ptr %t210, ptr %t211)
  store i64 %t215, ptr %l104
  br label %bb62
bb62:
  %t216 = load i64, ptr %l100, !tbaa !24
  %t217 = load i64, ptr %l104, !tbaa !24
  %t218 = or i64 %t216, %t217
  store i64 %t218, ptr %l13, !tbaa !24
  br label %bb82
bb63:
  %t220 = load ptr, ptr %l1, !tbaa !29
  store ptr %t220, ptr %l106, !tbaa !29
  store i1 false, ptr %l107, !tbaa !21
  %t221 = load ptr, ptr %l106, !tbaa !29
  %t222 = icmp ne ptr %t221, null
  br i1 %t222, label %bb64, label %bb65
bb64:
  %t224 = load ptr, ptr %l106, !tbaa !29
  %t225 = load i64, ptr %t224, !range !{i64 0, i64 30}
  %t227 = icmp eq i64 %t225, 12
  store i1 %t227, ptr %l107, !tbaa !21
  br label %bb65
bb65:
  %t228 = load i1, ptr %l107, !tbaa !21
  br i1 %t228, label %bb66, label %bb67
bb66:
  %t229 = load ptr, ptr %l1, !tbaa !29
  %t231 = getelementptr { i64, [4 x i64] }, ptr %t229, i32 0, i32 1
  %t232 = getelementptr { %"compiler/source:Span", ptr, { i64, ptr } }, ptr %t231, i32 0, i32 1
  %t233 = load ptr, ptr %t232
  store ptr %t233, ptr %l8, !tbaa !29
  br label %bb68
bb67:
  br label %bb70
bb68:
  %t235 = load ptr, ptr %l0, !tbaa !29
  %t236 = load ptr, ptr %l8, !tbaa !29
  %t239 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3agenRoots_2ecallRoot(ptr %v0, ptr %v1, ptr %t235, ptr %t236)
  store i64 %t239, ptr %l114
  br label %bb69
bb69:
  %t240 = load i64, ptr %l114, !tbaa !24
  store i64 %t240, ptr %l13, !tbaa !24
  br label %bb82
bb70:
  %t241 = load ptr, ptr %l1, !tbaa !29
  store ptr %t241, ptr %l115, !tbaa !29
  store i1 false, ptr %l116, !tbaa !21
  %t242 = load ptr, ptr %l115, !tbaa !29
  %t243 = icmp ne ptr %t242, null
  br i1 %t243, label %bb71, label %bb72
bb71:
  %t245 = load ptr, ptr %l115, !tbaa !29
  %t246 = load i64, ptr %t245, !range !{i64 0, i64 30}
  %t248 = icmp eq i64 %t246, 23
  store i1 %t248, ptr %l116, !tbaa !21
  br label %bb72
bb72:
  %t249 = load i1, ptr %l116, !tbaa !21
  br i1 %t249, label %bb73, label %bb74
bb73:
  %t250 = load ptr, ptr %l1, !tbaa !29
  %t252 = getelementptr { i64, [4 x i64] }, ptr %t250, i32 0, i32 1
  %t253 = getelementptr { %"compiler/source:Span", ptr }, ptr %t252, i32 0, i32 1
  %t254 = load ptr, ptr %t253
  store ptr %t254, ptr %l9, !tbaa !29
  br label %bb75
bb74:
  br label %bb77
bb75:
  %t256 = load ptr, ptr %l0, !tbaa !29
  %t257 = load ptr, ptr %l9, !tbaa !29
  %t260 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3agenRoots_2ecaseRoots(ptr %v0, ptr %v1, ptr %t256, ptr %t257)
  store i64 %t260, ptr %l123
  br label %bb76
bb76:
  %t261 = load i64, ptr %l123, !tbaa !24
  store i64 %t261, ptr %l13, !tbaa !24
  br label %bb82
bb77:
  br i1 true, label %bb78, label %bb79
bb78:
  br label %bb80
bb79:
  br label %bb81
bb80:
  store i64 0, ptr %l13, !tbaa !24
  br label %bb82
bb81:
  call void @__olang_check_failed(ptr @olang_loc_3ab543dc145c7b05_675409dfde5f91a1)
  unreachable
bb82:
  %t262 = load i64, ptr %l13, !tbaa !24
  store i64 %t262, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local void @compiler_2fgeneric_2eerrIntroductions(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca { i64, ptr }
  %l3 = alloca { i64, ptr }
  %l4 = alloca i64
  %l5 = alloca i64
  %l7 = alloca ptr
  %l8 = alloca ptr
  %l9 = alloca { i64, ptr }
  %l10 = alloca { i64, ptr }
  %l11 = alloca i64
  %l12 = alloca i64
  %l13 = alloca ptr
  %l16 = alloca ptr
  %l17 = alloca i1
  %l29 = alloca { i64, ptr }
  %l37 = alloca ptr
  %l38 = alloca i1
  %l46 = alloca ptr
  %l47 = alloca i1
  %l54 = alloca ptr
  %l55 = alloca i1
  %l67 = alloca { i64, ptr }
  %l76 = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = icmp eq ptr %t1, null
  br i1 %t3, label %bb1, label %bb2
bb1:
  br label %ret
bb2:
  br label %bb3
bb3:
  %t5 = load ptr, ptr %l0, !tbaa !29
  store ptr %t5, ptr %l16, !tbaa !29
  store i1 false, ptr %l17, !tbaa !21
  %t6 = load ptr, ptr %l16, !tbaa !29
  %t7 = icmp ne ptr %t6, null
  br i1 %t7, label %bb4, label %bb5
bb4:
  %t9 = load ptr, ptr %l16, !tbaa !29
  %t10 = load i64, ptr %t9, !range !{i64 0, i64 8}
  %t12 = icmp eq i64 %t10, 0
  store i1 %t12, ptr %l17, !tbaa !21
  br label %bb5
bb5:
  %t13 = load i1, ptr %l17, !tbaa !21
  br i1 %t13, label %bb6, label %bb7
bb6:
  %t14 = load ptr, ptr %l0, !tbaa !29
  %t16 = getelementptr { i64, [5 x i64] }, ptr %t14, i32 0, i32 1
  %t17 = getelementptr { %"compiler/source:Span", { i64, ptr }, { i64, ptr } }, ptr %t16, i32 0, i32 2
  %t18 = load { i64, ptr }, ptr %t17
  store { i64, ptr } %t18, ptr %l2, !tbaa !27
  br label %bb8
bb7:
  br label %bb16
bb8:
  %t20 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t20, ptr %l3, !tbaa !27
  store i64 0, ptr %l4, !tbaa !24
  %t22 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t24 = extractvalue { i64, ptr } %t22, 0
  store i64 %t24, ptr %l5, !tbaa !24
  br label %bb9
bb9:
  %t26 = load i64, ptr %l4, !tbaa !24
  %t27 = load i64, ptr %l5, !tbaa !24
  %t30 = icmp slt i64 %t26, %t27
  %t32 = xor i1 %t30, true
  br i1 %t32, label %bb10, label %bb11
bb10:
  br label %bb15
bb11:
  br label %bb12
bb12:
  %t34 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t34, ptr %l29, !tbaa !27
  %t35 = load i64, ptr %l4, !tbaa !24
  %t37 = getelementptr { i64, ptr }, ptr %l29, i32 0, i32 1
  %t38 = load ptr, ptr %t37, !tbaa !27
  %t39 = getelementptr ptr, ptr %t38, i64 %t35
  %t40 = load ptr, ptr %t39, !tbaa !39
  %t44 = load ptr, ptr %l1, !tbaa !29
  call void @compiler_2fgeneric_2eerrIntroductions(ptr %v0, ptr %v1, ptr %t40, ptr %t44)
  br label %bb13
bb13:
  br label %bb14
bb14:
  %t47 = load i64, ptr %l4, !tbaa !24
  %t49 = add i64 %t47, 1
  store i64 %t49, ptr %l4, !tbaa !24
  br label %bb9
bb15:
  br label %bb51
bb16:
  %t51 = load ptr, ptr %l0, !tbaa !29
  store ptr %t51, ptr %l37, !tbaa !29
  store i1 false, ptr %l38, !tbaa !21
  %t52 = load ptr, ptr %l37, !tbaa !29
  %t53 = icmp ne ptr %t52, null
  br i1 %t53, label %bb17, label %bb18
bb17:
  %t55 = load ptr, ptr %l37, !tbaa !29
  %t56 = load i64, ptr %t55, !range !{i64 0, i64 8}
  %t58 = icmp eq i64 %t56, 3
  store i1 %t58, ptr %l38, !tbaa !21
  br label %bb18
bb18:
  %t59 = load i1, ptr %l38, !tbaa !21
  br i1 %t59, label %bb19, label %bb20
bb19:
  %t60 = load ptr, ptr %l0, !tbaa !29
  %t62 = getelementptr { i64, [5 x i64] }, ptr %t60, i32 0, i32 1
  %t63 = getelementptr { %"compiler/source:Span", ptr, i1, i1 }, ptr %t62, i32 0, i32 1
  %t64 = load ptr, ptr %t63
  store ptr %t64, ptr %l7, !tbaa !29
  br label %bb21
bb20:
  br label %bb23
bb21:
  %t66 = load ptr, ptr %l7, !tbaa !29
  %t68 = load ptr, ptr %l1, !tbaa !29
  call void @compiler_2fgeneric_2eerrIntroductions(ptr %v0, ptr %v1, ptr %t66, ptr %t68)
  br label %bb22
bb22:
  br label %bb51
bb23:
  %t71 = load ptr, ptr %l0, !tbaa !29
  store ptr %t71, ptr %l46, !tbaa !29
  store i1 false, ptr %l47, !tbaa !21
  %t72 = load ptr, ptr %l46, !tbaa !29
  %t73 = icmp ne ptr %t72, null
  br i1 %t73, label %bb24, label %bb25
bb24:
  %t75 = load ptr, ptr %l46, !tbaa !29
  %t76 = load i64, ptr %t75, !range !{i64 0, i64 8}
  %t78 = icmp eq i64 %t76, 4
  store i1 %t78, ptr %l47, !tbaa !21
  br label %bb25
bb25:
  %t79 = load i1, ptr %l47, !tbaa !21
  br i1 %t79, label %bb26, label %bb27
bb26:
  %t80 = load ptr, ptr %l0, !tbaa !29
  %t82 = getelementptr { i64, [5 x i64] }, ptr %t80, i32 0, i32 1
  %t83 = getelementptr { %"compiler/source:Span", ptr, i1 }, ptr %t82, i32 0, i32 1
  %t84 = load ptr, ptr %t83
  store ptr %t84, ptr %l8, !tbaa !29
  br label %bb28
bb27:
  br label %bb30
bb28:
  %t86 = load ptr, ptr %l8, !tbaa !29
  %t87 = load ptr, ptr %l1, !tbaa !29
  call void @compiler_2fgeneric_2eerrIntroductions(ptr %v0, ptr %v1, ptr %t86, ptr %t87)
  br label %bb29
bb29:
  br label %bb51
bb30:
  %t90 = load ptr, ptr %l0, !tbaa !29
  store ptr %t90, ptr %l54, !tbaa !29
  store i1 false, ptr %l55, !tbaa !21
  %t91 = load ptr, ptr %l54, !tbaa !29
  %t92 = icmp ne ptr %t91, null
  br i1 %t92, label %bb31, label %bb32
bb31:
  %t94 = load ptr, ptr %l54, !tbaa !29
  %t95 = load i64, ptr %t94, !range !{i64 0, i64 8}
  %t97 = icmp eq i64 %t95, 6
  store i1 %t97, ptr %l55, !tbaa !21
  br label %bb32
bb32:
  %t98 = load i1, ptr %l55, !tbaa !21
  br i1 %t98, label %bb33, label %bb34
bb33:
  %t99 = load ptr, ptr %l0, !tbaa !29
  %t101 = getelementptr { i64, [5 x i64] }, ptr %t99, i32 0, i32 1
  %t102 = getelementptr { %"compiler/source:Span", { i64, ptr } }, ptr %t101, i32 0, i32 1
  %t103 = load { i64, ptr }, ptr %t102
  store { i64, ptr } %t103, ptr %l9, !tbaa !27
  br label %bb35
bb34:
  br label %bb46
bb35:
  %t105 = load { i64, ptr }, ptr %l9, !tbaa !27
  store { i64, ptr } %t105, ptr %l10, !tbaa !27
  store i64 0, ptr %l11, !tbaa !24
  %t107 = load { i64, ptr }, ptr %l10, !tbaa !27
  %t109 = extractvalue { i64, ptr } %t107, 0
  store i64 %t109, ptr %l12, !tbaa !24
  br label %bb36
bb36:
  %t111 = load i64, ptr %l11, !tbaa !24
  %t112 = load i64, ptr %l12, !tbaa !24
  %t115 = icmp slt i64 %t111, %t112
  %t117 = xor i1 %t115, true
  br i1 %t117, label %bb37, label %bb38
bb37:
  br label %bb45
bb38:
  br label %bb39
bb39:
  %t119 = load { i64, ptr }, ptr %l10, !tbaa !27
  store { i64, ptr } %t119, ptr %l67, !tbaa !27
  %t120 = load i64, ptr %l11, !tbaa !24
  %t122 = getelementptr { i64, ptr }, ptr %l67, i32 0, i32 1
  %t123 = load ptr, ptr %t122, !tbaa !27
  %t124 = getelementptr ptr, ptr %t123, i64 %t120
  %t125 = load ptr, ptr %t124, !tbaa !39
  store ptr %t125, ptr %l13, !tbaa !29
  %t127 = load ptr, ptr %l13, !tbaa !29
  %t129 = getelementptr %"compiler/ast:Path", ptr %t127, i32 0, i32 1
  %t130 = load { i64, ptr }, ptr %t129, !tbaa !27
  %t132 = extractvalue { i64, ptr } %t130, 0
  %t134 = icmp eq i64 %t132, 1
  br i1 %t134, label %bb40, label %bb41
bb40:
  %t136 = load ptr, ptr %l1, !tbaa !29
  %t137 = load ptr, ptr %l13, !tbaa !29
  %t139 = getelementptr %"compiler/ast:Path", ptr %t137, i32 0, i32 1
  %t140 = load { i64, ptr }, ptr %t139, !tbaa !27
  store { i64, ptr } %t140, ptr %l76, !tbaa !27
  %t141 = getelementptr { i64, ptr }, ptr %l76, i32 0, i32 1
  %t142 = load ptr, ptr %t141, !tbaa !27
  %t143 = getelementptr i32, ptr %t142, i64 0
  %t144 = load i32, ptr %t143, !tbaa !33
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aNameId_3e_2ePush_3ccompiler_2fsource_3aNameId_3e(ptr %v1, ptr %t136, i32 %t144)
  br label %bb42
bb41:
  br label %bb43
bb42:
  br label %bb43
bb43:
  br label %bb44
bb44:
  %t147 = load i64, ptr %l11, !tbaa !24
  %t149 = add i64 %t147, 1
  store i64 %t149, ptr %l11, !tbaa !24
  br label %bb36
bb45:
  br label %bb51
bb46:
  br i1 true, label %bb47, label %bb48
bb47:
  br label %bb49
bb48:
  br label %bb50
bb49:
  br label %bb51
bb50:
  call void @__olang_check_failed(ptr @olang_loc_eaf5f33dabe0acea_7261a28798d177ae)
  unreachable
bb51:
  br label %ret
ret:
  ret void
}

define dso_local i64 @compiler_2fgeneric_2epromiseBit(i32 %a0) #0 {
entry:
  %l0 = alloca i32
  %l1 = alloca i64
  %rv = alloca i64
  store i32 %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load i32, ptr %l0, !range !{i32 0, i32 114}
  %t3 = trunc i64 57 to i32
  %t4 = icmp eq i32 %t1, %t3
  br i1 %t4, label %bb1, label %bb2
bb1:
  br label %bb3
bb2:
  br label %bb4
bb3:
  %t6 = load i64, ptr @G_2ecompiler_2ftypes_2ePromReturns, !tbaa !24
  store i64 %t6, ptr %l1, !tbaa !24
  br label %bb37
bb4:
  %t8 = load i32, ptr %l0, !range !{i32 0, i32 114}
  %t10 = trunc i64 58 to i32
  %t11 = icmp eq i32 %t8, %t10
  br i1 %t11, label %bb5, label %bb6
bb5:
  br label %bb7
bb6:
  br label %bb8
bb7:
  %t13 = load i64, ptr @G_2ecompiler_2ftypes_2ePromNoalloc, !tbaa !24
  store i64 %t13, ptr %l1, !tbaa !24
  br label %bb37
bb8:
  %t15 = load i32, ptr %l0, !range !{i32 0, i32 114}
  %t17 = trunc i64 59 to i32
  %t18 = icmp eq i32 %t15, %t17
  br i1 %t18, label %bb9, label %bb10
bb9:
  br label %bb11
bb10:
  br label %bb12
bb11:
  %t20 = load i64, ptr @G_2ecompiler_2ftypes_2ePromNoblock, !tbaa !24
  store i64 %t20, ptr %l1, !tbaa !24
  br label %bb37
bb12:
  %t22 = load i32, ptr %l0, !range !{i32 0, i32 114}
  %t24 = trunc i64 60 to i32
  %t25 = icmp eq i32 %t22, %t24
  br i1 %t25, label %bb13, label %bb14
bb13:
  br label %bb15
bb14:
  br label %bb16
bb15:
  %t27 = load i64, ptr @G_2ecompiler_2ftypes_2ePromNospawn, !tbaa !24
  store i64 %t27, ptr %l1, !tbaa !24
  br label %bb37
bb16:
  %t29 = load i32, ptr %l0, !range !{i32 0, i32 114}
  %t31 = trunc i64 61 to i32
  %t32 = icmp eq i32 %t29, %t31
  br i1 %t32, label %bb17, label %bb18
bb17:
  br label %bb19
bb18:
  br label %bb20
bb19:
  %t34 = load i64, ptr @G_2ecompiler_2ftypes_2ePromNorecurse, !tbaa !24
  store i64 %t34, ptr %l1, !tbaa !24
  br label %bb37
bb20:
  %t36 = load i32, ptr %l0, !range !{i32 0, i32 114}
  %t38 = trunc i64 62 to i32
  %t39 = icmp eq i32 %t36, %t38
  br i1 %t39, label %bb21, label %bb22
bb21:
  br label %bb23
bb22:
  br label %bb24
bb23:
  %t41 = load i64, ptr @G_2ecompiler_2ftypes_2ePromNoextern, !tbaa !24
  store i64 %t41, ptr %l1, !tbaa !24
  br label %bb37
bb24:
  %t43 = load i32, ptr %l0, !range !{i32 0, i32 114}
  %t45 = trunc i64 63 to i32
  %t46 = icmp eq i32 %t43, %t45
  br i1 %t46, label %bb25, label %bb26
bb25:
  br label %bb27
bb26:
  br label %bb28
bb27:
  %t48 = load i64, ptr @G_2ecompiler_2ftypes_2ePromPure, !tbaa !24
  store i64 %t48, ptr %l1, !tbaa !24
  br label %bb37
bb28:
  %t50 = load i32, ptr %l0, !range !{i32 0, i32 114}
  %t52 = trunc i64 66 to i32
  %t53 = icmp eq i32 %t50, %t52
  br i1 %t53, label %bb29, label %bb30
bb29:
  br label %bb31
bb30:
  br label %bb32
bb31:
  %t55 = load i64, ptr @G_2ecompiler_2ftypes_2ePromNoborrow, !tbaa !24
  store i64 %t55, ptr %l1, !tbaa !24
  br label %bb37
bb32:
  br i1 true, label %bb33, label %bb34
bb33:
  br label %bb35
bb34:
  br label %bb36
bb35:
  store i64 0, ptr %l1, !tbaa !24
  br label %bb37
bb36:
  call void @__olang_check_failed(ptr @olang_loc_5e6ea17f09d33e2_77348db42693dffe)
  unreachable
bb37:
  %t57 = load i64, ptr %l1, !tbaa !24
  store i64 %t57, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local void @compiler_2fgeneric_2etestLoad(ptr %out, ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %lp2 = alloca ptr
  %lp3 = alloca ptr
  %l9 = alloca i32
  %l11 = alloca i1
  %l14 = alloca %"compiler/cond:Consts"
  %l16 = alloca ptr
  %l17 = alloca i64
  %l19 = alloca i64
  %l23 = alloca { i64, ptr }
  %l24 = alloca i64
  %l29 = alloca %"compiler/fetch:Fetcher"
  %l30 = alloca ptr
  %l31 = alloca i64
  %l33 = alloca %"compiler/source:Names"
  %l34 = alloca ptr
  %l35 = alloca %"compiler/diag:Diagnostics"
  %l37 = alloca %"compiler/load:Loader"
  %l42 = alloca i64
  %l43 = alloca %"compiler/load:Loader"
  %s0 = alloca %olang.scope
  %t35 = alloca %"compiler/cond:Consts", align 8
  %t108 = alloca %"compiler/fetch:Fetcher", align 8
  %t132 = alloca %"compiler/diag:Diagnostics", align 8
  %t134 = alloca %"compiler/load:Loader", align 8
  store { i64, ptr } %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t3 = extractvalue { i64, ptr } %t1, 1
  %t4 = extractvalue { i64, ptr } %t1, 0
  %t5 = extractvalue { i64, ptr } { i64 11, ptr getelementptr inbounds (<{ i64, [11 x i8] }>, ptr @.d71, i32 0, i32 1) }, 1
  %t6 = extractvalue { i64, ptr } { i64 11, ptr getelementptr inbounds (<{ i64, [11 x i8] }>, ptr @.d71, i32 0, i32 1) }, 0
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
  %t23 = call i32 @std_2fos_2eWriteFile(ptr %s0, ptr %v1, { i64, ptr } %t18, { i64, ptr } %a1)
  store i32 %t23, ptr %l9
  %t24 = icmp ne i32 %t23, 0
  br i1 %t24, label %bb2, label %ok.25, !prof !99
ok.25:
  br label %bb1
bb1:
  br label %bb6
bb2:
  %t26 = load i32, ptr %l9, !tbaa !23
  %t27 = ashr i32 %t26, 16
  %t29 = icmp eq i32 %t27, 1
  store i1 %t29, ptr %l11, !tbaa !21
  %t30 = load i32, ptr %l9, !tbaa !23
  %t31 = ashr i32 %t30, 16
  %t33 = icmp eq i32 %t31, 1
  br i1 %t33, label %bb3, label %bb4
bb3:
  call void @__olang_errpay_pop()
  br label %bb4
bb4:
  br label %bb5
bb5:
  br label %bb6
bb6:
  call void @compiler_2fcond_3aConsts_2ector(ptr %t35, ptr %v2)
  call void @llvm.memmove.p0.p0.i64(ptr %l14, ptr %t35, i64 224, i1 false)
  br label %bb7
bb7:
  %t36 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 224, i64 8)
  store ptr %t36, ptr %lp2
  %t37 = load ptr, ptr %lp2
  call void @llvm.memmove.p0.p0.i64(ptr %t37, ptr %l14, i64 224, i1 false)
  %t38 = load ptr, ptr %lp2
  call void @compiler_2fcond_2ecompiler_2fcond_3aConsts_2eBuiltins(ptr %v2, ptr %s0, ptr %s0, ptr %s0, ptr %t38, { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d72, i32 0, i32 1) }, { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d73, i32 0, i32 1) }, { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d74, i32 0, i32 1) }, i64 128, i64 0, i1 false, i1 false, i1 false)
  br label %bb8
bb8:
  %t40 = load ptr, ptr %lp2
  store ptr %t40, ptr %l16, !tbaa !29
  %t41 = ptrtoint ptr %v2 to i64
  store i64 %t41, ptr %l17, !tbaa !24
  %t42 = load i1, ptr @olang_2esole_2ecompiler_2fload_3aLoader_2e2
  br i1 %t42, label %bb9, label %bb10
bb9:
  %t44 = call ptr @__olang_region_make(ptr %v2)
  %t45 = ptrtoint ptr %t44 to i64
  store i64 %t45, ptr %l17, !tbaa !24
  br label %bb10
bb10:
  %t46 = load i64, ptr %l17
  %t47 = inttoptr i64 %t46 to ptr
  %t48 = ptrtoint ptr %t47 to i64
  store i64 %t48, ptr %l19, !tbaa !24
  %t49 = load i1, ptr @olang_2esole_2ecompiler_2ffetch_3aFetcher_2e0
  br i1 %t49, label %bb11, label %bb12
bb11:
  %t51 = load i64, ptr %l17
  %t52 = inttoptr i64 %t51 to ptr
  %t53 = call ptr @__olang_region_make(ptr %t52)
  %t54 = ptrtoint ptr %t53 to i64
  store i64 %t54, ptr %l19, !tbaa !24
  br label %bb12
bb12:
  %t55 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t57 = extractvalue { i64, ptr } %t55, 1
  %t58 = extractvalue { i64, ptr } %t55, 0
  %t59 = extractvalue { i64, ptr } { i64 11, ptr getelementptr inbounds (<{ i64, [11 x i8] }>, ptr @.d75, i32 0, i32 1) }, 1
  %t60 = extractvalue { i64, ptr } { i64 11, ptr getelementptr inbounds (<{ i64, [11 x i8] }>, ptr @.d75, i32 0, i32 1) }, 0
  %t61 = add i64 %t58, %t60
  %t62 = load i64, ptr %l19
  %t63 = inttoptr i64 %t62 to ptr
  %t64 = call ptr @__olang_scope_alloc(ptr %t63, i64 %t61)
  call void @olang_textcopy(ptr %t64, ptr %t57, i64 %t58)
  %t65 = getelementptr i8, ptr %t64, i64 %t58
  call void @olang_textcopy(ptr %t65, ptr %t59, i64 %t60)
  %t66 = insertvalue { i64, ptr } undef, i64 %t61, 0
  %t67 = insertvalue { i64, ptr } %t66, ptr %t64, 1
  %t69 = load i64, ptr %l19
  %t70 = inttoptr i64 %t69 to ptr
  %t71 = extractvalue { i64, ptr } %t67, 0
  %t72 = extractvalue { i64, ptr } %t67, 1
  %t73 = mul i64 %t71, 1
  %t74 = call ptr @__olang_scope_alloc(ptr %t70, i64 %t73)
  call void @llvm.memcpy.p0.p0.i64(ptr %t74, ptr %t72, i64 %t73, i1 false)
  %t75 = insertvalue { i64, ptr } undef, i64 %t71, 0
  %t76 = insertvalue { i64, ptr } %t75, ptr %t74, 1
  store { i64, ptr } %t76, ptr %l23, !tbaa !27
  %t77 = load i64, ptr %l17
  %t78 = inttoptr i64 %t77 to ptr
  %t79 = ptrtoint ptr %t78 to i64
  store i64 %t79, ptr %l24, !tbaa !24
  %t80 = load i1, ptr @olang_2esole_2ecompiler_2ffetch_3aFetcher_2e1
  br i1 %t80, label %bb13, label %bb14
bb13:
  %t82 = load i64, ptr %l17
  %t83 = inttoptr i64 %t82 to ptr
  %t84 = call ptr @__olang_region_make(ptr %t83)
  %t85 = ptrtoint ptr %t84 to i64
  store i64 %t85, ptr %l24, !tbaa !24
  br label %bb14
bb14:
  %t86 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t88 = extractvalue { i64, ptr } %t86, 1
  %t89 = extractvalue { i64, ptr } %t86, 0
  %t90 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d76, i32 0, i32 1) }, 1
  %t91 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d76, i32 0, i32 1) }, 0
  %t92 = add i64 %t89, %t91
  %t93 = load i64, ptr %l24
  %t94 = inttoptr i64 %t93 to ptr
  %t95 = call ptr @__olang_scope_alloc(ptr %t94, i64 %t92)
  call void @olang_textcopy(ptr %t95, ptr %t88, i64 %t89)
  %t96 = getelementptr i8, ptr %t95, i64 %t89
  call void @olang_textcopy(ptr %t96, ptr %t90, i64 %t91)
  %t97 = insertvalue { i64, ptr } undef, i64 %t92, 0
  %t98 = insertvalue { i64, ptr } %t97, ptr %t95, 1
  %t100 = load i64, ptr %l24
  %t101 = inttoptr i64 %t100 to ptr
  %t102 = extractvalue { i64, ptr } %t98, 0
  %t103 = extractvalue { i64, ptr } %t98, 1
  %t104 = mul i64 %t102, 1
  %t105 = call ptr @__olang_scope_alloc(ptr %t101, i64 %t104)
  call void @llvm.memcpy.p0.p0.i64(ptr %t105, ptr %t103, i64 %t104, i1 false)
  %t106 = insertvalue { i64, ptr } undef, i64 %t102, 0
  %t107 = insertvalue { i64, ptr } %t106, ptr %t105, 1
  %t109 = load i64, ptr %l17
  %t110 = inttoptr i64 %t109 to ptr
  %t111 = load i64, ptr %l17
  %t112 = inttoptr i64 %t111 to ptr
  %t113 = load i64, ptr %l17
  %t114 = inttoptr i64 %t113 to ptr
  %t115 = load { i64, ptr }, ptr %l23, !tbaa !27
  call void @compiler_2ffetch_3aFetcher_2ector(ptr %t108, ptr %t110, ptr %t112, ptr %v2, ptr %t114, { i64, ptr } %t115, { i64, ptr } %t107, { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d77, i32 0, i32 1) }, i1 false, i1 true)
  call void @llvm.memmove.p0.p0.i64(ptr %l29, ptr %t108, i64 184, i1 false)
  br label %bb15
bb15:
  %t117 = load i64, ptr %l17
  %t118 = inttoptr i64 %t117 to ptr
  %t119 = call ptr @__olang_scope_alloc_a(ptr %t118, i64 184, i64 8)
  call void @llvm.memmove.p0.p0.i64(ptr %t119, ptr %l29, i64 184, i1 false)
  store ptr %t119, ptr %l30, !tbaa !29
  %t120 = ptrtoint ptr %v2 to i64
  store i64 %t120, ptr %l31, !tbaa !24
  %t121 = load i1, ptr @olang_2esole_2ecompiler_2fload_3aLoader_2e3
  br i1 %t121, label %bb16, label %bb17
bb16:
  %t123 = call ptr @__olang_region_make(ptr %v2)
  %t124 = ptrtoint ptr %t123 to i64
  store i64 %t124, ptr %l31, !tbaa !24
  br label %bb17
bb17:
  %t125 = load i64, ptr %l31
  %t126 = inttoptr i64 %t125 to ptr
  %t127 = call %"compiler/source:Names" @compiler_2fsource_3aNames_2ector(ptr %t126)
  store %"compiler/source:Names" %t127, ptr %l33
  br label %bb18
bb18:
  %t128 = load %"compiler/source:Names", ptr %l33
  %t129 = load i64, ptr %l31
  %t130 = inttoptr i64 %t129 to ptr
  %t131 = call ptr @__olang_scope_alloc_a(ptr %t130, i64 104, i64 8)
  store %"compiler/source:Names" %t128, ptr %t131
  store ptr %t131, ptr %l34, !tbaa !29
  call void @compiler_2fdiag_3aDiagnostics_2ector(ptr %t132, ptr %v2, i1 false)
  call void @llvm.memmove.p0.p0.i64(ptr %l35, ptr %t132, i64 544, i1 false)
  br label %bb19
bb19:
  %t133 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 544, i64 8)
  call void @llvm.memmove.p0.p0.i64(ptr %t133, ptr %l35, i64 544, i1 false)
  %t135 = load ptr, ptr %l16, !tbaa !29
  %t136 = load ptr, ptr %l30, !tbaa !29
  %t137 = load ptr, ptr %l34, !tbaa !29
  call void @compiler_2fload_3aLoader_2ector(ptr %t134, ptr %v2, ptr %v2, ptr %v2, ptr %v2, ptr %v2, ptr %v2, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d78, i32 0, i32 1) }, ptr %t135, ptr %t136, ptr %t137, ptr %t133)
  call void @llvm.memmove.p0.p0.i64(ptr %l37, ptr %t134, i64 680, i1 false)
  br label %bb20
bb20:
  %t139 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 680, i64 8)
  store ptr %t139, ptr %lp3
  %t140 = load ptr, ptr %lp3
  call void @llvm.memmove.p0.p0.i64(ptr %t140, ptr %l37, i64 680, i1 false)
  %t141 = load ptr, ptr %lp3
  %t142 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t144 = extractvalue { i64, ptr } %t142, 1
  %t145 = extractvalue { i64, ptr } %t142, 0
  %t146 = extractvalue { i64, ptr } { i64 11, ptr getelementptr inbounds (<{ i64, [11 x i8] }>, ptr @.d79, i32 0, i32 1) }, 1
  %t147 = extractvalue { i64, ptr } { i64 11, ptr getelementptr inbounds (<{ i64, [11 x i8] }>, ptr @.d79, i32 0, i32 1) }, 0
  %t148 = add i64 %t145, %t147
  %t149 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t148)
  call void @olang_textcopy(ptr %t149, ptr %t144, i64 %t145)
  %t150 = getelementptr i8, ptr %t149, i64 %t145
  call void @olang_textcopy(ptr %t150, ptr %t146, i64 %t147)
  %t151 = insertvalue { i64, ptr } undef, i64 %t148, 0
  %t152 = insertvalue { i64, ptr } %t151, ptr %t149, 1
  %t154 = extractvalue { i64, ptr } %t152, 0
  %t155 = extractvalue { i64, ptr } %t152, 1
  %t156 = mul i64 %t154, 1
  %t157 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t156)
  call void @llvm.memcpy.p0.p0.i64(ptr %t157, ptr %t155, i64 %t156, i1 false)
  %t158 = insertvalue { i64, ptr } undef, i64 %t154, 0
  %t159 = insertvalue { i64, ptr } %t158, ptr %t157, 1
  %t162 = call i64 @compiler_2fload_2ecompiler_2fload_3aLoader_2eLoad(ptr %v2, ptr %s0, ptr %t141, { i64, ptr } %t159)
  store i64 %t162, ptr %l42
  br label %bb21
bb21:
  %t163 = load ptr, ptr %lp3
  call void @llvm.memmove.p0.p0.i64(ptr %l43, ptr %t163, i64 680, i1 false)
  call void @__olang_scope_close(ptr %s0)
  call void @llvm.memmove.p0.p0.i64(ptr %out, ptr %l43, i64 680, i1 false)
  br label %ret
ret:
  ret void
}

define dso_local %"compiler/generic:fnRow" @compiler_2fgeneric_3afnRow_2ector(ptr %v0, ptr %v1, i64 %a0, ptr %a1, i1 %a2) #0 {
entry:
  %rv = alloca %"compiler/generic:fnRow"
  br label %start
start:
  br label %bb0
bb0:
  %t8 = insertvalue %"compiler/generic:fnRow" undef, i64 %a0, 0
  %t10 = insertvalue %"compiler/generic:fnRow" %t8, ptr %a1, 1
  %t12 = insertvalue %"compiler/generic:fnRow" %t10, i1 %a2, 2
  store %"compiler/generic:fnRow" %t12, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/generic:fnRow", ptr %rv
  ret %"compiler/generic:fnRow" %rr
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
define internal { i32, ptr } @olang_lambda_0(ptr %env, ptr %v0) #0 {
entry:
  %p = call ptr @llvm.coro.promise(ptr %env, i32 8, i1 false)
  %pr = getelementptr { { i32, ptr }, i32, ptr, ptr }, ptr %p, i32 0, i32 1
  %running = load i32, ptr %pr
  switch i32 %running, label %again [ i32 0, label %go i32 2, label %drop ]
again:
  call void @__olang_check_failed(ptr @.c80)
  unreachable
drop:
  call void @llvm.coro.destroy(ptr %env)
  br label %over
go:
  %done = call i1 @llvm.coro.done(ptr %env)
  br i1 %done, label %over, label %run
run:
  %pv0 = getelementptr { { i32, ptr }, i32, ptr, ptr }, ptr %p, i32 0, i32 3
  store ptr %v0, ptr %pv0
  store i32 1, ptr %pr
  call void @llvm.coro.resume(ptr %env)
  store i32 0, ptr %pr
  %r = load { i32, ptr }, ptr %p
  ret { i32, ptr } %r
over:
  %x = insertvalue { i32, ptr } zeroinitializer, i32 65536, 0
  ret { i32, ptr } %x
}

define internal { i32, ptr } @olang_lambda_0.wnext(ptr %env, ptr %v0) alwaysinline #0 {
entry:
  %p = call ptr @llvm.coro.promise(ptr %env, i32 8, i1 false)
  %pr = getelementptr { { i32, ptr }, i32, ptr, ptr }, ptr %p, i32 0, i32 1
  %running = load i32, ptr %pr
  %stop = icmp eq i32 %running, 2
  br i1 %stop, label %drop, label %run
drop:
  call void @llvm.coro.destroy(ptr %env)
  br label %over
run:
  %pv0 = getelementptr { { i32, ptr }, i32, ptr, ptr }, ptr %p, i32 0, i32 3
  store ptr %v0, ptr %pv0
  call void @llvm.coro.resume(ptr %env)
  %r = load { i32, ptr }, ptr %p
  ret { i32, ptr } %r
over:
  %x = insertvalue { i32, ptr } zeroinitializer, i32 65536, 0
  ret { i32, ptr } %x
}

define internal ptr @olang_lambda_0.coro(ptr %env, ptr %home) presplitcoroutine alwaysinline #0 {
entry:
  %prom = alloca { { i32, ptr }, i32, ptr, ptr }, align 8
  store { { i32, ptr }, i32, ptr, ptr } zeroinitializer, ptr %prom
  %rv = getelementptr { { i32, ptr }, i32, ptr, ptr }, ptr %prom, i32 0, i32 0
  %l0 = alloca ptr
  %l2 = alloca { i64, ptr }
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca ptr
  %l6 = alloca ptr
  %l16 = alloca { i64, ptr }
  %l19 = alloca ptr
  %l20 = alloca i1
  %cid = call token @llvm.coro.id(i32 8, ptr %prom, ptr null, ptr null)
  %cneed = call i1 @llvm.coro.alloc(token %cid)
  br i1 %cneed, label %coro.alloc, label %coro.begin
coro.alloc:
  %csz = call i64 @llvm.coro.size.i64()
  %cal = call i64 @llvm.coro.align.i64()
  %cmem0 = call ptr @__olang_scope_alloc_a(ptr %home, i64 %csz, i64 %cal)
  br label %coro.begin
coro.begin:
  %cmem = phi ptr [ null, %entry ], [ %cmem0, %coro.alloc ]
  %hdl = call ptr @llvm.coro.begin(token %cid, ptr %cmem)
  %cp0 = getelementptr { ptr, ptr }, ptr %env, i32 0, i32 0
  %cv0 = load ptr, ptr %cp0, !tbaa !28
  store ptr %cv0, ptr %l0
  %vq0 = getelementptr { ptr, ptr }, ptr %env, i32 0, i32 1
  %vr0 = load ptr, ptr %vq0, !tbaa !28
  %vc0 = call ptr @__olang_capture_scope(ptr %vr0)
  br label %start
start:
  %is = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %is, label %gen.end [ i8 0, label %gen.go i8 1, label %gen.fresh ]
gen.fresh:
  br label %gen.free
gen.go:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t5 = getelementptr %"compiler/ast:StructBody", ptr %t1, i32 0, i32 2
  %t6 = load { i64, ptr }, ptr %t5, !tbaa !27
  store { i64, ptr } %t6, ptr %l2, !tbaa !27
  store i64 0, ptr %l3, !tbaa !24
  %t8 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t10 = extractvalue { i64, ptr } %t8, 0
  store i64 %t10, ptr %l4, !tbaa !24
  br label %bb1
bb1:
  %t12 = load i64, ptr %l3, !tbaa !24
  %t13 = load i64, ptr %l4, !tbaa !24
  %t16 = icmp slt i64 %t12, %t13
  %t18 = xor i1 %t16, true
  br i1 %t18, label %bb2, label %bb3
bb2:
  br label %bb22
bb3:
  br label %bb4
bb4:
  %t20 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t20, ptr %l16, !tbaa !27
  %t21 = load i64, ptr %l3, !tbaa !24
  %t23 = getelementptr { i64, ptr }, ptr %l16, i32 0, i32 1
  %t24 = load ptr, ptr %t23, !tbaa !27
  %t25 = getelementptr ptr, ptr %t24, i64 %t21
  %t26 = load ptr, ptr %t25, !tbaa !39
  store ptr %t26, ptr %l5, !tbaa !29
  %t28 = load ptr, ptr %l5, !tbaa !29
  store ptr %t28, ptr %l19, !tbaa !29
  store i1 false, ptr %l20, !tbaa !21
  %t29 = load ptr, ptr %l19, !tbaa !29
  %t30 = icmp ne ptr %t29, null
  br i1 %t30, label %bb5, label %bb6
bb5:
  %t32 = load ptr, ptr %l19, !tbaa !29
  %t33 = load i64, ptr %t32, !range !{i64 0, i64 22}
  %t35 = icmp eq i64 %t33, 1
  store i1 %t35, ptr %l20, !tbaa !21
  br label %bb6
bb6:
  %t36 = load i1, ptr %l20, !tbaa !21
  br i1 %t36, label %bb7, label %bb8
bb7:
  %t37 = load ptr, ptr %l5, !tbaa !29
  %t39 = getelementptr { i64, [4 x i64] }, ptr %t37, i32 0, i32 1
  %t40 = getelementptr { %"compiler/source:Span", ptr }, ptr %t39, i32 0, i32 1
  %t41 = load ptr, ptr %t40
  store ptr %t41, ptr %l6, !tbaa !29
  br label %bb9
bb8:
  br label %bb15
bb9:
  %t43 = load ptr, ptr %l6, !tbaa !29
  %t45 = getelementptr %"compiler/ast:VarDecl", ptr %t43, i32 0, i32 5
  %t46 = load i1, ptr %t45, !tbaa !21
  br i1 %t46, label %bb10, label %bb11
bb10:
  %t48 = load ptr, ptr %l6, !tbaa !29
  %t50 = insertvalue { i32, ptr } zeroinitializer, ptr %t48, 1
  store { i32, ptr } %t50, ptr %rv
  %t51 = call i8 @llvm.coro.suspend(token none, i1 false)
  switch i8 %t51, label %gen.end [ i8 0, label %gen.res.52 i8 1, label %gen.drop.53 ]
gen.res.52:
  br label %bb12
gen.drop.53:
  br label %bb13
bb11:
  br label %bb14
bb12:
  br label %bb14
bb13:
  br label %gen.free
bb14:
  br label %bb20
bb15:
  br i1 true, label %bb16, label %bb17
bb16:
  br label %bb18
bb17:
  br label %bb19
bb18:
  br label %bb20
bb19:
  call void @__olang_check_failed(ptr @olang_loc_4e9784bcac016c39_bf9d00668e70ebe5)
  unreachable
bb20:
  br label %bb21
bb21:
  %t54 = load i64, ptr %l3, !tbaa !24
  %t56 = add i64 %t54, 1
  store i64 %t56, ptr %l3, !tbaa !24
  br label %bb1
bb22:
  %t59 = insertvalue { i32, ptr } zeroinitializer, i32 65536, 0
  store { i32, ptr } %t59, ptr %rv
  br label %ret
ret:
  %fs = call i8 @llvm.coro.suspend(token none, i1 true)
  switch i8 %fs, label %gen.end [ i8 0, label %gen.dead i8 1, label %gen.free ]
gen.dead:
  unreachable
gen.free:
  %fm = call ptr @llvm.coro.free(token %cid, ptr %hdl)
  br label %gen.end
gen.end:
  %ce = call i1 @llvm.coro.end(ptr %hdl, i1 false, token none)
  ret ptr %hdl
}

define internal void @olang_lambda_0.drop(ptr %h, ptr %scope) #0 {
entry:
  %p = call ptr @llvm.coro.promise(ptr %h, i32 8, i1 false)
  %pr = getelementptr { { i32, ptr }, i32, ptr, ptr }, ptr %p, i32 0, i32 1
  %r = load i32, ptr %pr
  %idle = icmp eq i32 %r, 0
  br i1 %idle, label %d, label %x
d:
  call void @llvm.coro.destroy(ptr %h)
  br label %x
x:
  ret void
}

@.d1 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c".Len()" }>, align 8
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
@.d2 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"if " }>, align 8
@.d3 = private constant <{ i64, [10 x i8] }> <{ i64 0, [10 x i8] c"} else if " }>, align 8
@.d4 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c"assert " }>, align 8
@.d5 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"match " }>, align 8
@.d6 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c" if " }>, align 8
@.d7 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c"comptime" }>, align 8
@.d8 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"Array<" }>, align 8
@.d9 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c">(" }>, align 8
@.d10 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"[" }>, align 8
@.d11 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c" for " }>, align 8
@.d12 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"range " }>, align 8
declare void @llvm.memmove.p0.p0.i64(ptr, ptr, i64, i1)
@.d13 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d14 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d15 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d16 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d17 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d18 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d19 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d20 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d21 = private constant <{ i64, [57 x i8] }> <{ i64 0, [57 x i8] c"a case has no type of its own - its fields have, c.Fields" }>, align 8
declare ptr @__olang_scope_of(ptr, ptr) noinline
declare void @llvm.memcpy.p0.p0.i64(ptr, ptr, i64, i1)
@.d22 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c", " }>, align 8
@olang_2esole_2ecompiler_2fgeneric_3ainstance_2e3 = weak hidden constant i1 false
declare ptr @__olang_region_make(ptr) noinline
@.d23 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"I64" }>, align 8
declare noalias ptr @__olang_scope_alloc_zeroed(ptr, i64)
@.d24 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"I64" }>, align 8
@.d25 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"std/" }>, align 8
@__olang_empty_array = external constant [16 x i64]
@.d26 = private constant <{ i64, [32 x i8] }> <{ i64 0, [32 x i8] c"only a function type has results" }>, align 8
@.d27 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d28 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d29 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d30 = private constant <{ i64, [50 x i8] }> <{ i64 0, [50 x i8] c"only a type a program declares has methods to walk" }>, align 8
@.d31 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d32 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d33 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d34 = private constant <{ i64, [66 x i8] }> <{ i64 0, [66 x i8] c"only a function type and a type with a constructor have parameters" }>, align 8
@.d35 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d36 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d37 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d38 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d39 = private constant <{ i64, [36 x i8] }> <{ i64 0, [36 x i8] c"only a struct and an enum have cases" }>, align 8
@.d40 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d41 = private constant <{ i64, [71 x i8] }> <{ i64 0, [71 x i8] c"an enum's fields are its cases' - walk T.Cases, then each case's Fields" }>, align 8
@.d42 = private constant <{ i64, [44 x i8] }> <{ i64 0, [44 x i8] c"only a struct and an enum's case have fields" }>, align 8
@.d43 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d44 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"fn(" }>, align 8
@.d45 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"fn?(" }>, align 8
@.d46 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"fn?[" }>, align 8
@.d47 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"fn[" }>, align 8
@.d48 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"](" }>, align 8
@.d49 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c"struct(" }>, align 8
@.d50 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c")" }>, align 8
@.d51 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"enum{" }>, align 8
@.d52 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"(" }>, align 8
@.d53 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c")" }>, align 8
@.d54 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"Array<" }>, align 8
@.d55 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c", " }>, align 8
@.d56 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"I64" }>, align 8
@.d57 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c">" }>, align 8
@.d58 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"Bool" }>, align 8
@.d59 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c"default" }>, align 8
@.d60 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c"noreturn" }>, align 8
@.d61 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"<" }>, align 8
@.d62 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c">" }>, align 8
@.d63 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c", " }>, align 8
@.d64 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c", " }>, align 8
declare i64 @__olang_fmt_i64(ptr, i64)
@.d65 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c":" }>, align 8
@.d66 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"Eq" }>, align 8
@.d67 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"eq" }>, align 8
@.d68 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c"noborrow" }>, align 8
@.d69 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c"borrows " }>, align 8
@.d70 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c"borrows" }>, align 8
@.d71 = private constant <{ i64, [11 x i8] }> <{ i64 0, [11 x i8] c"/main.olang" }>, align 8
declare void @__olang_errpay_pop()
@.d72 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"linux" }>, align 8
@.d73 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"x86_64" }>, align 8
@.d74 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"x86-64" }>, align 8
@olang_2esole_2ecompiler_2fload_3aLoader_2e2 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2ffetch_3aFetcher_2e0 = weak hidden constant i1 false
@.d75 = private constant <{ i64, [11 x i8] }> <{ i64 0, [11 x i8] c"/olang.lock" }>, align 8
@olang_2esole_2ecompiler_2ffetch_3aFetcher_2e1 = weak hidden constant i1 false
@.d76 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"/cache" }>, align 8
@.d77 = private constant <{ i64, [16 x i8] }> <{ i64 0, [16 x i8] c"file:///nowhere/" }>, align 8
@olang_2esole_2ecompiler_2fload_3aLoader_2e3 = weak hidden constant i1 false
@.d78 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"std" }>, align 8
@.d79 = private constant <{ i64, [11 x i8] }> <{ i64 0, [11 x i8] c"/main.olang" }>, align 8
declare noalias ptr @__olang_scope_alloc_slow(ptr, i64, i64) noinline
@__olang_self = external thread_local(initialexec) global ptr
declare ptr @llvm.coro.promise(ptr, i32, i1)
@.c80 = private unnamed_addr constant [87 x i8] c"compiler/generic.olang:2491: a generator asked for its next value inside its own walk\0A\00"
declare void @llvm.coro.destroy(ptr)
declare i1 @llvm.coro.done(ptr)
declare void @llvm.coro.resume(ptr)
declare token @llvm.coro.id(i32, ptr, ptr, ptr)
declare i1 @llvm.coro.alloc(token)
declare i64 @llvm.coro.size.i64()
declare i64 @llvm.coro.align.i64()
declare ptr @llvm.coro.begin(token, ptr)
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
declare i8 @llvm.coro.suspend(token, i1)
declare ptr @llvm.coro.free(token, ptr)
declare i1 @llvm.coro.end(ptr, i1, token)
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
declare %"std/prelude/iterator:ViewGenerator.00c7c71992d6e1815cd052c47b979cdd" @std_2fprelude_2fiterator_3aViewGenerator_3ccompiler_2fast_3aVarDecl_3e_2ector(ptr %v0, ptr %v1, ptr %a0c, ptr %a0e)
@olang_loc_c152c1cd1761af15_fc7472910c385f59 = external constant [0 x i8]
declare { i32, i64 } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eFind(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
declare i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aChar_2eIsLetter(i8 %a0)
declare i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aChar_2eIsDigit(i8 %a0)
@olang_loc_e975feb741415938_3766dae77ababfac = external constant [0 x i8]
declare { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eTrimStart(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
declare i1 @std_2fprelude_2farray_2eArray_3cstd_2fprelude_2ftext_3aChar_3e_2eContains_3cstd_2fprelude_2ftext_3aChar_3e(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
declare i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEndsWith(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
declare void @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eallFns(ptr %v0, ptr %a0)
declare { i64, ptr } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eAnyCovers(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %a0)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %a0, i64 %a1)
declare %"compiler/generic:fnRow" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fgeneric_3afnRow_3e_2eAt_3ccompiler_2fgeneric_3afnRow_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %a0, i32 %a1)
declare %"compiler/generic:Unmet" @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFirstUnmet(ptr %v0, ptr %a0, i64 %a1, i32 %a2)
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eCtorSigAt(ptr %v0, ptr %a0, i32 %a1, i32 %a2)
declare void @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2edeclContext(ptr %out, ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eSig(ptr %v0, ptr %a0, i64 %a1)
declare i64 @compiler_2fgeneric_2eFnOwner(i64 %a0)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParams(ptr %v0, ptr %a0, i32 %a1)
declare { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
@G_2ecompiler_2ftypes_2eUnknownT = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\00\00\00\00" }>, align 8
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eReferent(ptr %v0, ptr %a0, i32 %a1)
declare i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eA(ptr %v0, ptr %a0, i32 %a1)
declare i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eB(ptr %v0, ptr %a0, i32 %a1)
declare %"compiler/generic:Binding" @compiler_2fgeneric_3aBinding_2ector(ptr %v0, i64 %a0, i64 %a1)
@G_2ecompiler_2ftypes_2eReadOnly = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>, align 8
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRef(ptr %v0, ptr %a0, i32 %a1, i64 %a2)
declare void @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eInferThroughBounds(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2ementionsVar(ptr %v0, ptr %a0, i32 %a1, i64 %a2, i64 %a3, i64 %a4)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eResult(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eList(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %v0, i64 %a0)
declare ptr @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2etypeDecl(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
@olang_loc_e3e3caa307fb777e_fe02cb9db66a417a = external constant [0 x i8]
declare i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2etraitReaches(ptr %v0, ptr %v1, ptr %a0, i32 %a1, ptr %a2, i32 %a3)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %a0, i64 %a1)
@G_2ecompiler_2fgeneric_2eDescField = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\01\00\00\00\00\00\00\00" }>, align 8
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eReflUnder(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eisStructT(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eFields(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eisEnumT(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eCases(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParts(ptr %v0, ptr %a0, i32 %a1)
@G_2ecompiler_2fgeneric_2eDescParam = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\03\00\00\00\00\00\00\00" }>, align 8
declare %"compiler/generic:Desc" @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eDescOf(ptr %v0, ptr %a0, i32 %a1)
@G_2ecompiler_2fgeneric_2eDescFunc = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\05\00\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2fgeneric_2eDescResult = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\04\00\00\00\00\00\00\00" }>, align 8
declare { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eResults(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eToArray_3cI64_3e(ptr %v0, ptr %v1, ptr %a0)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrValItems(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrOf(ptr %v0, ptr %a0, i32 %a1)
declare { i64, ptr } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eErrorWords(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrMask(ptr %v0, ptr %a0, i32 %a1)
declare void @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eerrorSetEntries(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1, ptr %a2, ptr %a3)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2ector(ptr %v0, i64 %a0)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2ePush_3ccompiler_2ftypes_3aTypeId_3e(ptr %v0, ptr %a0, i32 %a1)
@G_2ecompiler_2ftypes_2eDefaultErrT = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\10\00\00\00" }>, align 8
declare i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eentryHeld(ptr %v0, ptr %v1, ptr %a0, i32 %a1, ptr %a2)
declare { i64, ptr } @compiler_2fsource_2ecompiler_2fsource_3aNames_2eText(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare { i64, ptr } @compiler_2fload_2ecompiler_2fload_3aLoader_2eCSymbol(ptr %v0, ptr %v1, ptr %v2, ptr %a0, i64 %a1, { i64, ptr } %a2)
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2einstanceArgs(ptr %v0, ptr %a0, i32 %a1)
declare %"std/pair:Pair.d0636885f2b44490dbc61e56fa468a20" @std_2fpair_3aPair_3cI64_2c_20compiler_2ftypes_3aListId_3e_2ector(ptr %v0, i64 %a0, i32 %a1)
declare { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20compiler__Hfc7ca136f786d4bb067f513e5dea5730(ptr %v0, ptr %a0, %"std/pair:Pair.d0636885f2b44490dbc61e56fa468a20" %a1)
declare %"std/prelude/text:StringBuilder" @std_2fprelude_2ftext_3aStringBuilder_2ector(ptr %v0)
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H7bcf2aeb09afa796f4333e6ec8c3f63f(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePushChar(ptr %v0, ptr %a0, i8 %a1)
declare { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eCanon(ptr %v0, ptr %v1, ptr %v2, ptr %a0, i32 %a1)
declare { i64, ptr } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2etext(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fgeneric_3ainstance_3e_2eLen_Hf1590ba3dea8cd8a914b2a9f5344a2c6(ptr %v0, ptr %a0)
declare { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %v0, ptr %v1, ptr %a0)
declare { i64, ptr } @compiler_2ftypes_2eSymbol(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare %"compiler/generic:instance" @compiler_2fgeneric_3ainstance_2ector(ptr %v0, ptr %v1, ptr %v2, i64 %a0, i32 %a1, i32 %a2, { i64, ptr } %a3, { i64, ptr } %a4, %"compiler/generic:Origin" %a5)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fgeneric_3ainstance_3e_2ePus_Hca36cd1c69200a0db62aadeba49cf6ed(ptr %v0, ptr %v1, ptr %a0, %"compiler/generic:instance" %a1)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20compiler__H5edca056502a242264473f986489341f(ptr %v0, ptr %a0, %"std/pair:Pair.d0636885f2b44490dbc61e56fa468a20" %a1, i64 %a2)
declare i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2ereadsLocal(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, ptr %a2)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePrim(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare %"compiler/generic:folded" @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eeval(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, ptr %a2)
@G_2ecompiler_2fgeneric_2eUnfolded = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\02\00\00\00\00\00\00\00" }>, align 8
declare i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2evarsBound(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare { i64, ptr } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eLengthKey(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1, ptr %a2)
declare i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_H9b83f66eba65594537030636cb0b52b7(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_H9162e3b7f03fcbf954b681204d5f6cca(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
@G_2ecompiler_2fgeneric_2eRunTimeLength = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\00\00\00\00\00\00\00\80" }>, align 8
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eConst(ptr %v0, ptr %a0, i32 %a1, i64 %a2)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fgeneric_3aConstAsk_3e_2eLen_H192b02349624a37821a23e7def80c714(ptr %v0, ptr %a0)
declare %"compiler/generic:ConstAsk" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fgeneric_3aConstAsk_3e_2eAt__H3f4459851a287fa27378a94ef8fff763(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
declare i64 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fsource_3aNameId_2c_20compil_H0e73c22773457b60eb954c2c4a2643e9(ptr %v0, ptr %a0)
@olang_loc_99cf014ebb3d252c_a323a427e7fb0b10 = external constant [0 x i8]
@olang_loc_9c491d6513909eb9_b2019bc0b634333d = external constant [0 x i8]
declare %"std/prelude/map:MapIter.bf5835bb10600fe6a7fc1da14a6360d9" @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fsource_3aNameId_2c_20compil_Ha72624ba64524ee3315305b5d1bfb369(ptr %v0, ptr %v1, ptr %a0)
declare { i32, %"std/prelude/map:MapEntry.91de8c8eb84d52d1e58996aec31d85aa" } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMapIter_3ccompiler_2fsource_3aNameId_2c_20co_H6cf169b12565f300e9fe11f1c8d55061(ptr %v0, ptr %a0)
declare %"compiler/generic:ConstAsk" @compiler_2fgeneric_3aConstAsk_2ector(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, i64 %a0, ptr %a1, i32 %a2, i64 %a3, { i64, ptr } %a4, { i64, ptr } %a5, { i64, ptr } %a6)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fgeneric_3aConstAsk_3e_2ePus_H9314813d35e39659e36ddfdc05758427(ptr %v0, ptr %v1, ptr %a0, %"compiler/generic:ConstAsk" %a1)
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eUnknownConst(ptr %v0, ptr %a0)
@G_2ecompiler_2fgeneric_2eFolded = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>, align 8
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsInt(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFlows(ptr %v0, ptr %a0, i32 %a1, i32 %a2)
declare i1 @compiler_2fgeneric_2elitOnly(ptr %v0, ptr %a0)
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2edescDecl(ptr %v0, ptr %a0, i64 %a1)
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eMethodSig(ptr %v0, ptr %a0, i64 %a1, i32 %a2)
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eBuilderSig(ptr %v0, ptr %a0, i64 %a1, i32 %a2)
declare i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnKey(ptr %v0, ptr %a0, i64 %a1)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2ePut_3cI64_2c_20I64_3e(ptr %v0, ptr %a0, i64 %a1, i64 %a2)
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eInstance(ptr %v0, ptr %a0, i32 %a1, i32 %a2)
declare i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2ftext_3aString_H3993e9d21a27b6abd527556382000d9e(ptr %v0, ptr %a0, i64 %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fgeneric_3afnRow_3e_2eLen_3ccompiler_2fgeneric_3afnRow_3e(ptr %v0, ptr %a0)
declare i1 @compiler_2fast_2ecompiler_2fast_3aFunc_2eIsBuilder(ptr %v0, ptr %a0)
declare i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aChar_2eIsUpper(i8 %a0)
declare { i32, i32 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2ftypes_3aListId_3e__H9cb5d99387f926677a92c13412f9a8b2(ptr %v0, ptr %a0, i64 %a1)
@G_2ecompiler_2fgeneric_2eListResults = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\03\00\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2fgeneric_2eListFunctions = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\04\00\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2fgeneric_2eListBuilders = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\06\00\00\00\00\00\00\00" }>, align 8
declare { i64, ptr } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eTypeBuilders(ptr %v0, ptr %v1, ptr %a0, i32 %a1, i64 %a2)
@G_2ecompiler_2fgeneric_2eListMethods = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\05\00\00\00\00\00\00\00" }>, align 8
declare i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eBody(ptr %v0, ptr %a0, i32 %a1)
declare { i64, ptr } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eTypeMethods(ptr %v0, ptr %v1, ptr %a0, i32 %a1, i64 %a2)
@G_2ecompiler_2fgeneric_2eListParams = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\02\00\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2fgeneric_2eListCases = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\01\00\00\00\00\00\00\00" }>, align 8
declare { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eCaseNames(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare { i64, ptr } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFieldNames(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare { i64, ptr } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eCaseFieldNames(ptr %v0, ptr %v1, ptr %a0, i32 %a1, i64 %a2)
declare i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclModule(ptr %v0, ptr %a0, i32 %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_Hb2d19b6b5ea5ab5a85c5720545345bd4(ptr %v0, ptr %a0)
declare { i64, ptr } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eAnySlots(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eIsErrVar(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrSetItems(ptr %v0, ptr %a0, i32 %a1)
declare i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eC(ptr %v0, ptr %a0, i32 %a1)
declare i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePermOf(ptr %v0, ptr %a0, i32 %a1)
declare { i32, %"compiler/generic:pattern" } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2fgeneric_3apattern__He653b1131e20b64758f13c09ef1dc8c5(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare %"compiler/generic:pattern" @compiler_2fgeneric_3apattern_2ector(ptr %v0, ptr %v1, ptr %v2, ptr %a0, i64 %a1, i64 %a2, i32 %a3, ptr %a4)
declare void @compiler_2fgeneric_3aContext_2ector(ptr %out, ptr %v0, i64 %a0, i64 %a1)
declare %"compiler/generic:varRow" @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eVarAt(ptr %v0, ptr %a0, i64 %a1, i64 %a2)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fsource_3aNameId_2c_20compil_H943a9bb03970f71acf57214091669a7d(ptr %v0, ptr %a0, i32 %a1, i32 %a2)
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eResolve(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, ptr %a2)
@olang_loc_58f0122f37ec3c06_2c6a4c04431557c2 = external constant [0 x i8]
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eArgs(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eElem(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eLength(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eArray(ptr %v0, ptr %a0, i32 %a1, i32 %a2)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eFuncTag(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrors(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2esubstErrs(ptr %v0, ptr %a0, i32 %a1, i64 %a2, i32 %a3)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eScopesOf(ptr %v0, ptr %a0, i32 %a1)
declare i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eNamesIdOf(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eFuncNullable(ptr %v0, ptr %a0, i32 %a1)
declare i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePromisesOf(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eFunc(ptr %v0, ptr %a0, i32 %a1, i32 %a2, i32 %a3, i32 %a4, i64 %a5, i1 %a6, i32 %a7, i64 %a8)
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eErrSetOf(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eTuple(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRecord(ptr %v0, ptr %a0, i32 %a1)
declare { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eShapeNames(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eShapeCases(ptr %v0, ptr %a0, i32 %a1)
declare { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eShapeFields(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eAnonEnum(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1, i32 %a2, { i64, ptr } %a3)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eAnyTrait(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eAny(ptr %v0, ptr %a0, i32 %a1)
@olang_loc_55e2d1aec6f2d594_eb547a8d425546e0 = external constant [0 x i8]
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eVar(ptr %v0, ptr %a0, i64 %a1, i64 %a2, i64 %a3)
declare i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eErrVarAt(ptr %v0, ptr %a0, i64 %a1, i64 %a2)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eList1(ptr %v0, ptr %a0, i32 %a1)
declare { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2eGet_3cI64_2c_20I64_3e(ptr %v0, ptr %a0, i64 %a1)
declare i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3acursor_2eeat(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare { i32, i32 } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2ecanonFunc(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i1 %a2, i32 %a3)
declare { i32, i32 } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2ecanonType(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare { i32, i32 } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2ecanonEnum(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare { i32, i64 } @compiler_2fgeneric_2ecanonNumber(ptr %v0, ptr %a0)
declare i8 @compiler_2fgeneric_2ecompiler_2fgeneric_3acursor_2epeek(ptr %v0, ptr %a0)
declare i1 @compiler_2fgeneric_2enameChar(i8 %a0)
@olang_loc_22c778cd655270ba_6d5936a0bf98512e = external constant [0 x i8]
@G_2ecompiler_2ftypes_2eBoolT = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\02\00\00\00" }>, align 8
@G_2ecompiler_2ftypes_2eNoreturnT = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\11\00\00\00" }>, align 8
@olang_loc_55983e17b45d1397_8723e16cd5d53a2b = external constant [0 x i8]
declare { i32, i32 } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFindDecl(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1, { i64, ptr } %a2)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2eLen_3ccompiler_2ftypes_3aTypeId_3e(ptr %v0, ptr %a0)
declare i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclParams(ptr %v0, ptr %a0, i32 %a1)
declare { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2eToArray_3ccompiler_2ftypes_3aTypeId_3e(ptr %v0, ptr %v1, ptr %a0)
declare i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2ewrap(ptr %v0, ptr %a0, i64 %a1, i32 %a2)
@G_2ecompiler_2fgeneric_2ePending = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\01\00\00\00\00\00\00\00" }>, align 8
declare %"compiler/generic:folded" @compiler_2fgeneric_3afolded_2ector(ptr %v0, i64 %a0, i64 %a1, i32 %a2)
declare %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v0, ptr %a0)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eConstExpr(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2fgeneric_3apattern__Hf2f2cd44709958e8fc0de9f437e62e6b(ptr %v0, ptr %v1, ptr %a0, i64 %a1, %"compiler/generic:pattern" %a2)
@olang_loc_846e8cf19a14b6db_3af1bf273e789227 = external constant [0 x i8]
@olang_loc_7486412f18d83346_49a9869342f97632 = external constant [0 x i8]
declare i64 @compiler_2fgeneric_2eDeclOwner(i32 %a0)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aNameId_3e_2ector(ptr %v0, i64 %a0)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aNameId_3e_2ePush_3ccompiler_2fsource_3aNameId_3e(ptr %v0, ptr %a0, i32 %a1)
declare { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aNameId_3e_2eToArra_H4d02a0b2e27e8f31ffc99daa43750593(ptr %v0, ptr %v1, ptr %a0)
declare void @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eaddVars(ptr %v0, ptr %v1, ptr %a0, i64 %a1, { i64, ptr } %a2)
declare %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" @std_2fpair_3aPair_3cI64_2c_20I64_3e_2ector(ptr %v0, i64 %a0, i64 %a1)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H1308596c866d4be061d9da9113abde88(ptr %v0, ptr %a0, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %a1, i1 %a2)
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eBoundOf(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, ptr %a2)
declare %"compiler/generic:varRow" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fgeneric_3avarRow_3e_2eAt_3ccompiler_2fgeneric_3avarRow_3e(ptr %v0, ptr %a0, i64 %a1)
declare %"compiler/generic:varRow" @compiler_2fgeneric_3avarRow_2ector(ptr %v0, i64 %a0, i32 %a1, i32 %a2, i32 %a3)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fgeneric_3avarRow_3e_2eSetAt_H989a0ed1a318d7d0cbb6cc41385b33d2(ptr %v0, ptr %a0, i64 %a1, %"compiler/generic:varRow" %a2)
declare i32 @compiler_2fsource_2ecompiler_2fsource_3aNames_2eIntern(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eownMethod(ptr %v0, ptr %a0, i32 %a1, i32 %a2)
declare %"compiler/generic:folded" @compiler_2fgeneric_2efolded_2eunfolded()
@olang_loc_5392f566c0fc8331_15db183dd26dbb85 = external constant [0 x i8]
declare { i32, i1 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2eGet_3cI64_2c_20Bool_3e(ptr %v0, ptr %a0, i64 %a1)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2ePut_3cI64_2c_20Bool_3e(ptr %v0, ptr %a0, i64 %a1, i1 %a2)
declare void @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eaddFns(ptr %v0, ptr %v1, ptr %a0, i64 %a1, { i64, ptr } %a2)
@olang_loc_514348f953d022bc_74505ba6df313dd0 = external constant [0 x i8]
declare ptr @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eglobalIn(ptr %v0, ptr %v1, ptr %v2, ptr %a0, i64 %a1, { i64, ptr } %a2, i32 %a3)
@olang_loc_289ae50874ea0e2b_45680487effe832f = external constant [0 x i8]
@olang_loc_d51864a21628ffaa_68720bbe5c137f7e = external constant [0 x i8]
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eNeedsDrop(ptr %v0, ptr %a0, i32 %a1)
declare %"compiler/names:Ref" @compiler_2fnames_2ecompiler_2fnames_3aResolver_2eUse(ptr %v0, ptr %a0, i64 %a1, i32 %a2)
@olang_loc_2edbc1bd270558db_85d99d8e9bee4edf = external constant [0 x i8]
@olang_loc_7a3d6db3b893cc7d_3c2a4275e29a89 = external constant [0 x i8]
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eDeclFor(ptr %v0, ptr %a0, i64 %a1, i64 %a2)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eNamed(ptr %v0, ptr %a0, i32 %a1, i32 %a2)
declare i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2ealiasStep(ptr %v0, ptr %a0, i64 %a1, i32 %a2)
declare i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eTypeEntry(ptr %v0, ptr %a0, i64 %a1, i32 %a2)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclName(ptr %v0, ptr %a0, i32 %a1)
declare { i64, ptr } @compiler_2ftoken_2ecompiler_2ftoken_3aTok_2eText(ptr %v0, i32 %a0)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2ePromiseTwice(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare void @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2epromiseErr(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1, ptr %a2, %"compiler/diagmsg:Msg" %a3)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2ePromiseReturnsNoreturn(ptr %v0)
declare i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eresultMayHold(ptr %v0, ptr %a0, i32 %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2ePromiseBorrowsNothing(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2epromiseParam(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1, ptr %a2, ptr %a3, i64 %a4)
declare i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eHas_3cI64_3e(ptr %v0, ptr %a0, i64 %a1)
declare i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2emayHold(ptr %v0, ptr %a0, i32 %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2ePromiseBorrowsValue(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare { i64, ptr } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2ekeepsPromise(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %a0, ptr %a1, ptr %a2, i32 %a3, ptr %a4, i64 %a5)
declare i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eSigNames(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eWithNames(ptr %v0, ptr %a0, i32 %a1, i64 %a2)
declare { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKeepsText(ptr %v0, ptr %v1, ptr %v2, ptr %a0, i32 %a1, i64 %a2, i64 %a3, i64 %a4)
@G_2ecompiler_2ftypes_2ePromNoborrow = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\80\00\00\00\00\00\00\00" }>, align 8
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2ePromiseBorrowsBoth(ptr %v0)
declare i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePromises(ptr %v0, ptr %v1, ptr %v2, ptr %a0, i64 %a1, { i64, ptr } %a2, { i64, ptr } %a3)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclKindOf(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eBase(ptr %v0, ptr %a0, i32 %a1)
declare i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eDeclModule(ptr %v0, ptr %a0, i32 %a1)
@olang_loc_4439a413e01d0c26_16c6d6890310944a = external constant [0 x i8]
@olang_loc_b7daf7406ba778a4_42e2bd1e0b6e1610 = external constant [0 x i8]
declare i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3agenRoots_2eparamBit(ptr %v0, ptr %a0, i32 %a1)
declare { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fsource_3aNameId_2c_20I64_3e_H2a27ec2ae5362b2f0ac6d54f3e063c70(ptr %v0, ptr %a0, i32 %a1)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fsource_3aNameId_2c_20I64_3e_H862756c16d115e5c03a79726209f69fa(ptr %v0, ptr %a0, i32 %a1, i64 %a2)
declare i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3agenRoots_2enameRoot(ptr %v0, ptr %a0, i32 %a1)
declare i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3agenRoots_2ecallRoot(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3agenRoots_2ecaseRoots(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
@olang_loc_3ab543dc145c7b05_675409dfde5f91a1 = external constant [0 x i8]
@olang_loc_eaf5f33dabe0acea_7261a28798d177ae = external constant [0 x i8]
@G_2ecompiler_2ftypes_2ePromReturns = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\01\00\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2ftypes_2ePromNoalloc = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\02\00\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2ftypes_2ePromNoblock = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\04\00\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2ftypes_2ePromNospawn = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\08\00\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2ftypes_2ePromNorecurse = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\10\00\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2ftypes_2ePromNoextern = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\20\00\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2ftypes_2ePromPure = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\40\00\00\00\00\00\00\00" }>, align 8
@olang_loc_5e6ea17f09d33e2_77348db42693dffe = external constant [0 x i8]
declare i32 @std_2fos_2eWriteFile(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
declare void @compiler_2fcond_3aConsts_2ector(ptr %out, ptr %v0)
declare void @compiler_2fcond_2ecompiler_2fcond_3aConsts_2eBuiltins(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, { i64, ptr } %a1, { i64, ptr } %a2, { i64, ptr } %a3, i64 %a4, i64 %a5, i1 %a6, i1 %a7, i1 %a8)
declare void @compiler_2ffetch_3aFetcher_2ector(ptr %out, ptr %v0, ptr %v1, ptr %v2, ptr %v3, { i64, ptr } %a0, { i64, ptr } %a1, { i64, ptr } %a2, i1 %a3, i1 %a4)
declare %"compiler/source:Names" @compiler_2fsource_3aNames_2ector(ptr %v0)
declare void @compiler_2fdiag_3aDiagnostics_2ector(ptr %out, ptr %v0, i1 %a0)
declare void @compiler_2fload_3aLoader_2ector(ptr %out, ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %v5, { i64, ptr } %a0, ptr %a1, ptr %a2, ptr %a3, ptr %a4)
declare i64 @compiler_2fload_2ecompiler_2fload_3aLoader_2eLoad(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
@olang_loc_4e9784bcac016c39_bf9d00668e70ebe5 = external constant [0 x i8]

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
