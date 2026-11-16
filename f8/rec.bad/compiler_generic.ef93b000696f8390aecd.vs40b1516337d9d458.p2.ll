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
%"std/prelude/iterator:ViewGenerator.00c7c71992d6e1815cd052c47b979cdd" = type { { ptr, ptr } }
%"compiler/generic:Binding" = type { i64, i64, { i64, ptr }, { i64, ptr }, { i64, ptr } }
%"compiler/generic:Program" = type { ptr, ptr, %"compiler/types:Table", %"compiler/facts:Table", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"compiler/generic:Origin", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"compiler/types:Table" = type { ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" = type { { i64, ptr }, i64, i64 }
%"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" = type { { i64, ptr }, { i64, ptr }, { i64, ptr }, i64, i64, i64 }
%"compiler/facts:Table" = type { %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, i64 }
%"compiler/generic:Origin" = type { i64, %"compiler/source:Span", i64, i32 }
%"compiler/source:Span" = type { i32, i32 }
%"compiler/generic:Context" = type { i64, i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"compiler/ast:TypeDecl" = type { i32, { i64, ptr }, i1, ptr, { i64, ptr }, i32, i1 }
%"compiler/ast:StructBody" = type { { i64, ptr }, ptr, { i64, ptr }, %"compiler/source:Span", { i64, ptr }, { i64, ptr } }
%"compiler/ast:CaseDecl" = type { %"compiler/source:Span", i32, { i64, ptr }, i1, ptr, { i64, ptr } }
%"compiler/ast:Param" = type { %"compiler/source:Span", i32, ptr, ptr, { i64, ptr } }
%"compiler/ast:Func" = type { %"compiler/source:Span", ptr, i32, ptr, { i64, ptr }, { i64, ptr }, i1, i1, { i64, ptr }, ptr, i32 }
%"compiler/ast:Sig" = type { { i64, ptr }, { i64, ptr }, i1, { i64, ptr }, i1, i1, i1, { i64, ptr } }
%"compiler/ast:TypeParam" = type { %"compiler/source:Span", i32, ptr, { i64, ptr }, i1 }
%"compiler/generic:Desc" = type { i64, i32, i64, i64 }
%"compiler/load:Loader" = type { { i64, ptr }, ptr, ptr, ptr, ptr, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", { i64, ptr }, { i64, ptr }, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", { i64, ptr }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/load:Module" = type { { i64, ptr }, { i64, ptr }, { i64, ptr }, i1, i64, i1, ptr, ptr, { i64, ptr }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr, ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr, ptr, ptr, i1, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, { i64, ptr }, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"compiler/diagmsg:Msg" = type { i32, { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr } }
%"compiler/ast:Path" = type { %"compiler/source:Span", { i64, ptr } }
%"compiler/msgs:Nearest" = type { { i64, ptr }, { i64, ptr }, i64 }
%"compiler/source:Source" = type { { i64, ptr }, { i64, ptr }, { i64, ptr } }
%"compiler/ast:VarDecl" = type { { i64, ptr }, { i64, ptr }, ptr, { i64, ptr }, i1, i1, { i64, ptr }, i1 }
%"compiler/generic:fnRow" = type { i64, ptr, i1 }
%"compiler/generic:varRow" = type { i64, i32, i32, i32 }
%"compiler/generic:instance" = type { i64, i32, i32, { i64, ptr }, { i64, ptr }, %"compiler/generic:Origin" }
%"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" = type { i64, i64 }
%"compiler/generic:Unmet" = type { i64, i32, i32, i1, i1, i1 }
%"compiler/generic:AnyTable" = type { i32, i32, i32, i64, %"compiler/source:Span", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"std/prelude/text:StringBuilder" = type { %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/names:Entry" = type { i32, %"compiler/source:Span", i32, i1, ptr }
%"compiler/names:Resolver" = type { ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i1, i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"compiler/names:Table" = type { %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"compiler/ast:TopIf" = type { ptr, ptr, ptr, ptr }
%"compiler/names:Ref" = type { i32, i64, i64 }
%"compiler/generic:folded" = type { i64, i64, i32 }
%"compiler/ast:Promise" = type { %"compiler/source:Span", i32, { i64, ptr } }
%"compiler/generic:cursor" = type { { i64, ptr }, i64 }
%"compiler/generic:genRoots" = type { { i64, ptr }, { i64, ptr }, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64 }
%"compiler/diag:Said" = type { { i64, ptr }, i64, i64, { i64, ptr } }
%"compiler/cond:Consts" = type { %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/fetch:Fetcher" = type { { i64, ptr }, { i64, ptr }, { i64, ptr }, i1, i1, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/source:Names" = type { %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"compiler/diag:Diagnostics" = type { i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, i1, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", { i64, [3 x i64] }, { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, i1, i1, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
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

define dso_local i64 @compiler_2fgeneric_2eWrittenTypes(ptr %v0, { i64, ptr } %a0) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l1 = alloca i64
  %l6 = alloca i1
  %l7 = alloca { i64, ptr }
  %l11 = alloca i1
  %l12 = alloca i64
  %rv = alloca i64
  store { i64, ptr } %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t3 = extractvalue { i64, ptr } %t1, 0
  store i64 %t3, ptr %l1, !tbaa !24
  %t5 = load i64, ptr %l1, !tbaa !24
  %t7 = icmp sgt i64 %t5, 0
  br i1 %t7, label %bb1, label %bb2
bb1:
  %t9 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t9, ptr %l7, !tbaa !27
  %t10 = load i64, ptr %l1, !tbaa !24
  %t12 = sub i64 %t10, 1
  %t14 = getelementptr { i64, ptr }, ptr %l7, i32 0, i32 1
  %t15 = load ptr, ptr %t14, !tbaa !27
  %t16 = getelementptr ptr, ptr %t15, i64 %t12
  %t17 = load ptr, ptr %t16, !tbaa !39
  %t19 = call i1 @compiler_2fgeneric_2eisErrsArg(ptr %v0, ptr %t17)
  store i1 %t19, ptr %l11
  br label %bb3
bb2:
  store i1 false, ptr %l6, !tbaa !21
  br label %bb4
bb3:
  %t20 = load i1, ptr %l11, !tbaa !21
  store i1 %t20, ptr %l6, !tbaa !21
  br label %bb4
bb4:
  %t21 = load i1, ptr %l6, !tbaa !21
  br i1 %t21, label %bb5, label %bb6
bb5:
  %t22 = load i64, ptr %l1, !tbaa !24
  %t24 = sub i64 %t22, 1
  store i64 %t24, ptr %l12, !tbaa !24
  br label %bb7
bb6:
  %t26 = load i64, ptr %l1, !tbaa !24
  store i64 %t26, ptr %l12, !tbaa !24
  br label %bb7
bb7:
  %t28 = load i64, ptr %l12, !tbaa !24
  store i64 %t28, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local i64 @compiler_2fgeneric_2echangedVals(ptr %v0, ptr %v1, { i64, ptr } %a0, ptr %a1) #0 {
entry:
  %l1 = alloca ptr
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
  %l39 = alloca { i64, ptr }
  %rv = alloca i64
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store i64 0, ptr %l2, !tbaa !24
  store i64 0, ptr %l3, !tbaa !24
  %t1 = load ptr, ptr %l1, !tbaa !29
  %t3 = getelementptr %"compiler/generic:Binding", ptr %t1, i32 0, i32 1
  %t4 = load i64, ptr %t3, !tbaa !24
  store i64 %t4, ptr %l4, !tbaa !24
  store i64 1, ptr %l5, !tbaa !24
  %t6 = load i64, ptr %l4, !tbaa !24
  %t7 = load i64, ptr %l3, !tbaa !24
  %t10 = icmp sgt i64 %t6, %t7
  br i1 %t10, label %bb1, label %bb2
bb1:
  %t12 = load i64, ptr %l5, !tbaa !24
  %t14 = icmp sgt i64 %t12, 0
  br i1 %t14, label %bb3, label %bb4
bb2:
  store i64 0, ptr %l14, !tbaa !24
  br label %bb6
bb3:
  %t16 = load i64, ptr %l4, !tbaa !24
  %t17 = load i64, ptr %l3, !tbaa !24
  %t20 = sub i64 %t16, %t17
  %t21 = load i64, ptr %l5, !tbaa !24
  %t24 = add i64 %t20, %t21
  %t26 = sub i64 %t24, 1
  %t27 = load i64, ptr %l5, !tbaa !24
  %t30 = sdiv i64 %t26, %t27
  store i64 %t30, ptr %l17, !tbaa !24
  br label %bb5
bb4:
  store i64 0, ptr %l17, !tbaa !24
  br label %bb5
bb5:
  %t32 = load i64, ptr %l17, !tbaa !24
  store i64 %t32, ptr %l14, !tbaa !24
  br label %bb6
bb6:
  %t33 = load i64, ptr %l14, !tbaa !24
  store i64 %t33, ptr %l6, !tbaa !24
  store i64 0, ptr %l7, !tbaa !24
  br label %bb7
bb7:
  %t34 = load i64, ptr %l7, !tbaa !24
  %t35 = load i64, ptr %l6, !tbaa !24
  %t38 = icmp slt i64 %t34, %t35
  %t40 = xor i1 %t38, true
  br i1 %t40, label %bb8, label %bb9
bb8:
  br label %bb15
bb9:
  br label %bb10
bb10:
  %t42 = load i64, ptr %l3, !tbaa !24
  %t43 = load i64, ptr %l7, !tbaa !24
  %t44 = load i64, ptr %l5, !tbaa !24
  %t47 = mul i64 %t43, %t44
  %t50 = add i64 %t42, %t47
  store i64 %t50, ptr %l8, !tbaa !24
  store { i64, ptr } %a0, ptr %l35, !tbaa !27
  %t53 = load i64, ptr %l8, !tbaa !24
  %t55 = getelementptr { i64, ptr }, ptr %l35, i32 0, i32 1
  %t56 = load ptr, ptr %t55, !tbaa !27
  %t57 = getelementptr i32, ptr %t56, i64 %t53
  %t58 = load i32, ptr %t57, !tbaa !33
  %t59 = load ptr, ptr %l1, !tbaa !29
  %t61 = getelementptr %"compiler/generic:Binding", ptr %t59, i32 0, i32 2
  %t62 = load { i64, ptr }, ptr %t61, !tbaa !27
  store { i64, ptr } %t62, ptr %l39, !tbaa !27
  %t63 = load i64, ptr %l8, !tbaa !24
  %t65 = getelementptr { i64, ptr }, ptr %l39, i32 0, i32 1
  %t66 = load ptr, ptr %t65, !tbaa !27
  %t67 = getelementptr i32, ptr %t66, i64 %t63
  %t68 = load i32, ptr %t67, !tbaa !33
  %t71 = icmp ne i32 %t58, %t68
  br i1 %t71, label %bb11, label %bb12
bb11:
  %t73 = load i64, ptr %l2, !tbaa !24
  %t75 = add i64 %t73, 1
  store i64 %t75, ptr %l2, !tbaa !24
  br label %bb13
bb12:
  br label %bb13
bb13:
  br label %bb14
bb14:
  %t77 = load i64, ptr %l7, !tbaa !24
  %t79 = add i64 %t77, 1
  store i64 %t79, ptr %l7, !tbaa !24
  br label %bb7
bb15:
  %t81 = load i64, ptr %l2, !tbaa !24
  store i64 %t81, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
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

define dso_local i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eApply(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, i32 %a2, { i64, ptr } %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i32
  %l3 = alloca { i64, ptr }
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i1
  %l7 = alloca { i64, ptr }
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca i64
  %l12 = alloca i64
  %l13 = alloca i64
  %l19 = alloca i64
  %l24 = alloca i1
  %l25 = alloca { i64, ptr }
  %l29 = alloca i1
  %l32 = alloca i1
  %l34 = alloca i64
  %l42 = alloca i1
  %l47 = alloca i64
  %l55 = alloca i64
  %l58 = alloca i64
  %l80 = alloca i1
  %l83 = alloca i1
  %l84 = alloca i64
  %l86 = alloca i32
  %l89 = alloca { i64, ptr }
  %l92 = alloca i32
  %l94 = alloca i32
  %l95 = alloca i64
  %l98 = alloca { i64, ptr }
  %l102 = alloca i32
  %l105 = alloca ptr
  %l106 = alloca i32
  %l110 = alloca i32
  %l111 = alloca i32
  %s0 = alloca %olang.scope
  %rv = alloca i32
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store i32 %a2, ptr %l2
  store { i64, ptr } %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load i32, ptr %l2, !tbaa !23
  call void @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2edeclVars(ptr %v0, ptr %t1, i32 %t2)
  br label %bb1
bb1:
  %t5 = load ptr, ptr %l0, !tbaa !29
  %t7 = getelementptr %"compiler/generic:Program", ptr %t5, i32 0, i32 2
  %t8 = load i32, ptr %l2, !tbaa !23
  %t11 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclParams(ptr %v0, ptr %t7, i32 %t8)
  store i64 %t11, ptr %l19
  br label %bb2
bb2:
  %t12 = load i64, ptr %l19, !tbaa !24
  store i64 %t12, ptr %l4, !tbaa !24
  %t13 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t15 = extractvalue { i64, ptr } %t13, 0
  store i64 %t15, ptr %l5, !tbaa !24
  %t17 = load i64, ptr %l5, !tbaa !24
  %t19 = icmp sgt i64 %t17, 0
  br i1 %t19, label %bb3, label %bb4
bb3:
  %t21 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t21, ptr %l25, !tbaa !27
  %t22 = load i64, ptr %l5, !tbaa !24
  %t24 = sub i64 %t22, 1
  %t26 = getelementptr { i64, ptr }, ptr %l25, i32 0, i32 1
  %t27 = load ptr, ptr %t26, !tbaa !27
  %t28 = getelementptr ptr, ptr %t27, i64 %t24
  %t29 = load ptr, ptr %t28, !tbaa !39
  %t31 = call i1 @compiler_2fgeneric_2eisErrsArg(ptr %v2, ptr %t29)
  store i1 %t31, ptr %l29
  br label %bb5
bb4:
  store i1 false, ptr %l24, !tbaa !21
  br label %bb6
bb5:
  %t32 = load i1, ptr %l29, !tbaa !21
  store i1 %t32, ptr %l24, !tbaa !21
  br label %bb6
bb6:
  %t33 = load i1, ptr %l24, !tbaa !21
  store i1 %t33, ptr %l6, !tbaa !21
  %t34 = load ptr, ptr %l0, !tbaa !29
  %t35 = load i32, ptr %l2, !tbaa !23
  %t38 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eHasErrParam(ptr %v0, ptr %t34, i32 %t35)
  store i1 %t38, ptr %l32
  br label %bb7
bb7:
  %t39 = load i1, ptr %l32, !tbaa !21
  br i1 %t39, label %bb8, label %bb9
bb8:
  %t40 = load i1, ptr %l6, !tbaa !21
  br i1 %t40, label %bb10, label %bb11
bb9:
  %t42 = load i1, ptr %l6, !tbaa !21
  br i1 %t42, label %bb16, label %bb17
bb10:
  %t44 = load i64, ptr %l5, !tbaa !24
  store i64 %t44, ptr %l34, !tbaa !24
  br label %bb12
bb11:
  %t46 = load i64, ptr %l5, !tbaa !24
  %t48 = add i64 %t46, 1
  store i64 %t48, ptr %l34, !tbaa !24
  br label %bb12
bb12:
  %t50 = load i64, ptr %l4, !tbaa !24
  %t51 = load i64, ptr %l34, !tbaa !24
  %t53 = icmp ne i64 %t51, %t50
  br i1 %t53, label %bb13, label %bb14
bb13:
  %t55 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  call void @__olang_scope_close(ptr %s0)
  store i32 %t55, ptr %rv
  br label %ret
bb14:
  br label %bb15
bb15:
  br label %bb22
bb16:
  store i1 true, ptr %l42, !tbaa !21
  br label %bb18
bb17:
  %t57 = load i64, ptr %l4, !tbaa !24
  %t58 = load i64, ptr %l5, !tbaa !24
  %t61 = icmp ne i64 %t57, %t58
  store i1 %t61, ptr %l42, !tbaa !21
  br label %bb18
bb18:
  %t63 = load i1, ptr %l42, !tbaa !21
  br i1 %t63, label %bb19, label %bb20
bb19:
  %t64 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  call void @__olang_scope_close(ptr %s0)
  store i32 %t64, ptr %rv
  br label %ret
bb20:
  br label %bb21
bb21:
  br label %bb22
bb22:
  %t66 = load i64, ptr %l4, !tbaa !24
  store i64 %t66, ptr %l47, !tbaa !24
  %t67 = load i64, ptr %l47, !tbaa !24
  %t68 = icmp sge i64 %t67, 0
  br i1 %t68, label %bb23, label %bb24
bb23:
  %t70 = load i64, ptr %l47, !tbaa !24
  %t71 = icmp sle i64 %t70, 2305843009213693951
  br i1 %t71, label %bb25, label %bb26
bb24:
  call void @__olang_check_failed(ptr @olang_loc_9ad358ce4cd92925_29c80ed6090eef61)
  unreachable
bb25:
  %t73 = load i64, ptr %l47, !tbaa !24
  %t74 = mul i64 %t73, 4
  %t75 = call ptr @__olang_scope_alloc_zeroed(ptr %s0, i64 %t74)
  %t76 = insertvalue { i64, ptr } undef, i64 %t73, 0
  %t77 = insertvalue { i64, ptr } %t76, ptr %t75, 1
  store { i64, ptr } %t77, ptr %l7, !tbaa !27
  store i64 0, ptr %l8, !tbaa !24
  %t79 = load i64, ptr %l4, !tbaa !24
  store i64 %t79, ptr %l9, !tbaa !24
  store i64 1, ptr %l10, !tbaa !24
  %t81 = load i64, ptr %l9, !tbaa !24
  %t82 = load i64, ptr %l8, !tbaa !24
  %t85 = icmp sgt i64 %t81, %t82
  br i1 %t85, label %bb27, label %bb28
bb26:
  call void @__olang_check_failed(ptr @olang_loc_9ad358ce4cd92925_29c80ed6090eef61)
  unreachable
bb27:
  %t87 = load i64, ptr %l10, !tbaa !24
  %t89 = icmp sgt i64 %t87, 0
  br i1 %t89, label %bb29, label %bb30
bb28:
  store i64 0, ptr %l55, !tbaa !24
  br label %bb32
bb29:
  %t91 = load i64, ptr %l9, !tbaa !24
  %t92 = load i64, ptr %l8, !tbaa !24
  %t95 = sub i64 %t91, %t92
  %t96 = load i64, ptr %l10, !tbaa !24
  %t99 = add i64 %t95, %t96
  %t101 = sub i64 %t99, 1
  %t102 = load i64, ptr %l10, !tbaa !24
  %t105 = sdiv i64 %t101, %t102
  store i64 %t105, ptr %l58, !tbaa !24
  br label %bb31
bb30:
  store i64 0, ptr %l58, !tbaa !24
  br label %bb31
bb31:
  %t107 = load i64, ptr %l58, !tbaa !24
  store i64 %t107, ptr %l55, !tbaa !24
  br label %bb32
bb32:
  %t108 = load i64, ptr %l55, !tbaa !24
  store i64 %t108, ptr %l11, !tbaa !24
  store i64 0, ptr %l12, !tbaa !24
  br label %bb33
bb33:
  %t109 = load i64, ptr %l12, !tbaa !24
  %t110 = load i64, ptr %l11, !tbaa !24
  %t113 = icmp slt i64 %t109, %t110
  %t115 = xor i1 %t113, true
  br i1 %t115, label %bb34, label %bb35
bb34:
  br label %bb51
bb35:
  br label %bb36
bb36:
  %t117 = load i64, ptr %l8, !tbaa !24
  %t118 = load i64, ptr %l12, !tbaa !24
  %t119 = load i64, ptr %l10, !tbaa !24
  %t122 = mul i64 %t118, %t119
  %t125 = add i64 %t117, %t122
  store i64 %t125, ptr %l13, !tbaa !24
  %t127 = load i64, ptr %l13, !tbaa !24
  %t128 = load i64, ptr %l4, !tbaa !24
  %t130 = sub i64 %t128, 1
  %t133 = icmp eq i64 %t127, %t130
  br i1 %t133, label %bb37, label %bb38
bb37:
  %t135 = load ptr, ptr %l0, !tbaa !29
  %t136 = load i32, ptr %l2, !tbaa !23
  %t139 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eHasErrParam(ptr %v0, ptr %t135, i32 %t136)
  store i1 %t139, ptr %l83
  br label %bb39
bb38:
  store i1 false, ptr %l80, !tbaa !21
  br label %bb40
bb39:
  %t140 = load i1, ptr %l83, !tbaa !21
  store i1 %t140, ptr %l80, !tbaa !21
  br label %bb40
bb40:
  %t141 = load i1, ptr %l80, !tbaa !21
  br i1 %t141, label %bb41, label %bb42
bb41:
  %t142 = load i64, ptr %l13, !tbaa !24
  store i64 %t142, ptr %l84, !tbaa !24
  %t143 = load i1, ptr %l6, !tbaa !21
  br i1 %t143, label %bb43, label %bb44
bb42:
  %t145 = load i64, ptr %l13, !tbaa !24
  store i64 %t145, ptr %l95, !tbaa !24
  %t146 = load ptr, ptr %l0, !tbaa !29
  %t147 = load ptr, ptr %l1, !tbaa !29
  %t148 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t148, ptr %l98, !tbaa !27
  %t149 = load i64, ptr %l13, !tbaa !24
  %t151 = getelementptr { i64, ptr }, ptr %l98, i32 0, i32 1
  %t152 = load ptr, ptr %t151, !tbaa !27
  %t153 = getelementptr ptr, ptr %t152, i64 %t149
  %t154 = load ptr, ptr %t153, !tbaa !39
  %t159 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eResolve(ptr %v0, ptr %v1, ptr %v2, ptr %t146, ptr %t147, ptr %t154)
  store i32 %t159, ptr %l102
  br label %bb48
bb43:
  %t160 = load ptr, ptr %l0, !tbaa !29
  %t161 = load ptr, ptr %l1, !tbaa !29
  %t162 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t162, ptr %l89, !tbaa !27
  %t163 = load i64, ptr %l13, !tbaa !24
  %t165 = getelementptr { i64, ptr }, ptr %l89, i32 0, i32 1
  %t166 = load ptr, ptr %t165, !tbaa !27
  %t167 = getelementptr ptr, ptr %t166, i64 %t163
  %t168 = load ptr, ptr %t167, !tbaa !39
  %t172 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eerrsArg(ptr %v0, ptr %v1, ptr %v2, ptr %t160, ptr %t161, ptr %t168)
  store i32 %t172, ptr %l92
  br label %bb45
bb44:
  %t173 = load ptr, ptr %l0, !tbaa !29
  %t175 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eErrSetOf(ptr %v0, ptr %t173, i32 0)
  store i32 %t175, ptr %l94
  br label %bb46
bb45:
  %t176 = load i32, ptr %l92, !tbaa !23
  store i32 %t176, ptr %l86, !tbaa !23
  br label %bb47
bb46:
  %t177 = load i32, ptr %l94, !tbaa !23
  store i32 %t177, ptr %l86, !tbaa !23
  br label %bb47
bb47:
  %t178 = load i32, ptr %l86, !tbaa !23
  %t179 = load i64, ptr %l84, !tbaa !24
  %t180 = getelementptr { i64, ptr }, ptr %l7, i32 0, i32 1
  %t181 = load ptr, ptr %t180, !tbaa !27
  %t182 = getelementptr i32, ptr %t181, i64 %t179
  store i32 %t178, ptr %t182, !tbaa !33
  br label %bb49
bb48:
  %t183 = load i32, ptr %l102, !tbaa !23
  %t184 = load i64, ptr %l95, !tbaa !24
  %t185 = getelementptr { i64, ptr }, ptr %l7, i32 0, i32 1
  %t186 = load ptr, ptr %t185, !tbaa !27
  %t187 = getelementptr i32, ptr %t186, i64 %t184
  store i32 %t183, ptr %t187, !tbaa !33
  br label %bb49
bb49:
  br label %bb50
bb50:
  %t188 = load i64, ptr %l12, !tbaa !24
  %t190 = add i64 %t188, 1
  store i64 %t190, ptr %l12, !tbaa !24
  br label %bb33
bb51:
  %t192 = load ptr, ptr %l0, !tbaa !29
  store ptr %t192, ptr %l105, !tbaa !29
  %t193 = load i32, ptr %l2, !tbaa !23
  store i32 %t193, ptr %l106, !tbaa !23
  %t194 = load ptr, ptr %l0, !tbaa !29
  %t196 = getelementptr %"compiler/generic:Program", ptr %t194, i32 0, i32 2
  %t197 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t200 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eList(ptr %v0, ptr %s0, ptr %t196, { i64, ptr } %t197)
  store i32 %t200, ptr %l110
  br label %bb52
bb52:
  %t201 = load ptr, ptr %l105, !tbaa !29
  %t202 = load i32, ptr %l106, !tbaa !23
  %t203 = load i32, ptr %l110, !tbaa !23
  %t204 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eInstance(ptr %v0, ptr %t201, i32 %t202, i32 %t203)
  store i32 %t204, ptr %l111
  br label %bb53
bb53:
  call void @__olang_scope_close(ptr %s0)
  %t205 = load i32, ptr %l111, !tbaa !23
  store i32 %t205, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eArgsFit(ptr %v0, ptr %v1, ptr %a0, i32 %a1, { i64, ptr } %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca { i64, ptr }
  %l3 = alloca i64
  %l8 = alloca i1
  %l9 = alloca { i64, ptr }
  %l13 = alloca i1
  %l14 = alloca i1
  %l17 = alloca i1
  %l21 = alloca i64
  %l24 = alloca i64
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  store { i64, ptr } %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t3 = extractvalue { i64, ptr } %t1, 0
  store i64 %t3, ptr %l3, !tbaa !24
  %t5 = load i64, ptr %l3, !tbaa !24
  %t7 = icmp sgt i64 %t5, 0
  br i1 %t7, label %bb1, label %bb2
bb1:
  %t9 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t9, ptr %l9, !tbaa !27
  %t10 = load i64, ptr %l3, !tbaa !24
  %t12 = sub i64 %t10, 1
  %t14 = getelementptr { i64, ptr }, ptr %l9, i32 0, i32 1
  %t15 = load ptr, ptr %t14, !tbaa !27
  %t16 = getelementptr ptr, ptr %t15, i64 %t12
  %t17 = load ptr, ptr %t16, !tbaa !39
  %t19 = call i1 @compiler_2fgeneric_2eisErrsArg(ptr %v1, ptr %t17)
  store i1 %t19, ptr %l13
  br label %bb3
bb2:
  store i1 false, ptr %l8, !tbaa !21
  br label %bb4
bb3:
  %t20 = load i1, ptr %l13, !tbaa !21
  store i1 %t20, ptr %l8, !tbaa !21
  br label %bb4
bb4:
  %t21 = load i1, ptr %l8, !tbaa !21
  br i1 %t21, label %bb5, label %bb6
bb5:
  %t22 = load ptr, ptr %l0, !tbaa !29
  %t23 = load i32, ptr %l1, !tbaa !23
  %t26 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eHasErrParam(ptr %v0, ptr %t22, i32 %t23)
  store i1 %t26, ptr %l17
  br label %bb7
bb6:
  store i1 false, ptr %l14, !tbaa !21
  br label %bb8
bb7:
  %t27 = load i1, ptr %l17, !tbaa !21
  %t28 = xor i1 %t27, true
  store i1 %t28, ptr %l14, !tbaa !21
  br label %bb8
bb8:
  %t30 = load i1, ptr %l14, !tbaa !21
  br i1 %t30, label %bb9, label %bb10
bb9:
  store i1 false, ptr %rv
  br label %ret
bb10:
  br label %bb11
bb11:
  %t32 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t34 = call i64 @compiler_2fgeneric_2eWrittenTypes(ptr %v1, { i64, ptr } %t32)
  store i64 %t34, ptr %l21
  br label %bb12
bb12:
  %t35 = load ptr, ptr %l0, !tbaa !29
  %t36 = load i32, ptr %l1, !tbaa !23
  %t39 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eWrittenArity(ptr %v0, ptr %t35, i32 %t36)
  store i64 %t39, ptr %l24
  br label %bb13
bb13:
  %t40 = load i64, ptr %l21, !tbaa !24
  %t41 = load i64, ptr %l24, !tbaa !24
  %t42 = icmp eq i64 %t40, %t41
  store i1 %t42, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eBody(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca i32
  %l3 = alloca i32
  %l4 = alloca i64
  %l5 = alloca i32
  %l6 = alloca i32
  %l8 = alloca i32
  %l9 = alloca ptr
  %l10 = alloca %"compiler/generic:Context"
  %l11 = alloca ptr
  %l12 = alloca ptr
  %l13 = alloca { i64, ptr }
  %l14 = alloca { i64, ptr }
  %l15 = alloca { i64, ptr }
  %l16 = alloca i64
  %l17 = alloca i64
  %l18 = alloca i64
  %l19 = alloca i64
  %l20 = alloca i64
  %l21 = alloca i64
  %l22 = alloca ptr
  %l26 = alloca i32
  %l34 = alloca i1
  %l39 = alloca i32
  %l42 = alloca i32
  %l48 = alloca i1
  %l52 = alloca i64
  %l56 = alloca i32
  %l60 = alloca i32
  %l65 = alloca i1
  %l66 = alloca i32
  %l69 = alloca i32
  %l70 = alloca ptr
  %l74 = alloca i32
  %l77 = alloca i32
  %l79 = alloca ptr
  %l80 = alloca i32
  %l81 = alloca i32
  %l85 = alloca i1
  %l89 = alloca ptr
  %l90 = alloca i32
  %l94 = alloca { i64, ptr }
  %l95 = alloca ptr
  %l99 = alloca i32
  %l102 = alloca i32
  %l106 = alloca ptr
  %l107 = alloca i32
  %l108 = alloca ptr
  %l112 = alloca i32
  %l115 = alloca i32
  %l122 = alloca i1
  %l126 = alloca i32
  %l129 = alloca ptr
  %l133 = alloca i32
  %l136 = alloca ptr
  %l140 = alloca i32
  %l144 = alloca ptr
  %l157 = alloca %"compiler/generic:Context"
  %l160 = alloca ptr
  %l161 = alloca i1
  %l167 = alloca ptr
  %l168 = alloca i32
  %l172 = alloca i32
  %l176 = alloca ptr
  %l177 = alloca i1
  %l183 = alloca i64
  %l188 = alloca i64
  %l197 = alloca i64
  %l200 = alloca i64
  %l219 = alloca { i64, ptr }
  %l223 = alloca i64
  %l226 = alloca { i64, ptr }
  %l230 = alloca i32
  %l234 = alloca ptr
  %l235 = alloca i32
  %l236 = alloca { i64, ptr }
  %l240 = alloca i32
  %l241 = alloca ptr
  %l242 = alloca i1
  %l248 = alloca ptr
  %l249 = alloca i32
  %l254 = alloca i32
  %l255 = alloca ptr
  %l256 = alloca i1
  %l259 = alloca ptr
  %l260 = alloca i1
  %s0 = alloca %olang.scope
  %s16 = alloca %olang.scope
  %rv = alloca i1
  %t266 = alloca %"compiler/generic:Context", align 8
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
  store i32 %t7, ptr %l26
  br label %bb1
bb1:
  %t8 = load i32, ptr %l26, !range !{i32 0, i32 33}
  %t10 = trunc i64 18 to i32
  %t11 = icmp eq i32 %t8, %t10
  %t13 = xor i1 %t11, true
  br i1 %t13, label %bb2, label %bb3
bb2:
  call void @__olang_scope_close(ptr %s0)
  store i1 true, ptr %rv
  br label %ret
bb3:
  br label %bb4
bb4:
  %t16 = load ptr, ptr %l0, !tbaa !29
  %t18 = getelementptr %"compiler/generic:Program", ptr %t16, i32 0, i32 2
  %t19 = load i32, ptr %l1, !tbaa !23
  %t22 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eHasBody(ptr %v0, ptr %t18, i32 %t19)
  store i1 %t22, ptr %l34
  br label %bb5
bb5:
  %t23 = load i1, ptr %l34, !tbaa !21
  br i1 %t23, label %bb6, label %bb7
bb6:
  call void @__olang_scope_close(ptr %s0)
  store i1 true, ptr %rv
  br label %ret
bb7:
  br label %bb8
bb8:
  %t25 = load ptr, ptr %l0, !tbaa !29
  %t27 = getelementptr %"compiler/generic:Program", ptr %t25, i32 0, i32 2
  %t28 = load i32, ptr %l1, !tbaa !23
  %t31 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %t27, i32 %t28)
  store i32 %t31, ptr %l39
  br label %bb9
bb9:
  %t32 = load i32, ptr %l39, !tbaa !23
  store i32 %t32, ptr %l2, !tbaa !23
  %t33 = load ptr, ptr %l0, !tbaa !29
  %t34 = load i32, ptr %l2, !tbaa !23
  %t37 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eSelfType(ptr %v0, ptr %t33, i32 %t34)
  store i32 %t37, ptr %l42
  br label %bb10
bb10:
  %t38 = load i32, ptr %l42, !tbaa !23
  store i32 %t38, ptr %l3, !tbaa !23
  %t39 = load i32, ptr %l1, !tbaa !23
  %t40 = load i32, ptr %l3, !tbaa !23
  %t43 = icmp ne i32 %t39, %t40
  br i1 %t43, label %bb11, label %bb12
bb11:
  %t45 = load ptr, ptr %l0, !tbaa !29
  %t46 = load i32, ptr %l3, !tbaa !23
  %t49 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eBody(ptr %v0, ptr %t45, i32 %t46)
  store i1 %t49, ptr %l48
  br label %bb13
bb12:
  br label %bb76
bb13:
  %t50 = load i1, ptr %l48, !tbaa !21
  %t51 = xor i1 %t50, true
  br i1 %t51, label %bb14, label %bb15
bb14:
  call void @__olang_scope_close(ptr %s0)
  store i1 false, ptr %rv
  br label %ret
bb15:
  br label %bb16
bb16:
  %t54 = load i32, ptr %l2, !tbaa !23
  %t56 = call i64 @compiler_2fgeneric_2eDeclOwner(i32 %t54)
  store i64 %t56, ptr %l52
  br label %bb17
bb17:
  %t57 = load i64, ptr %l52, !tbaa !24
  store i64 %t57, ptr %l4, !tbaa !24
  %t58 = load ptr, ptr %l0, !tbaa !29
  %t60 = getelementptr %"compiler/generic:Program", ptr %t58, i32 0, i32 2
  %t61 = load i32, ptr %l1, !tbaa !23
  %t64 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eArgs(ptr %v0, ptr %t60, i32 %t61)
  store i32 %t64, ptr %l56
  br label %bb18
bb18:
  %t65 = load i32, ptr %l56, !tbaa !23
  store i32 %t65, ptr %l5, !tbaa !23
  %t66 = load ptr, ptr %l0, !tbaa !29
  %t68 = getelementptr %"compiler/generic:Program", ptr %t66, i32 0, i32 2
  %t69 = load i32, ptr %l2, !tbaa !23
  %t72 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclKindOf(ptr %v0, ptr %t68, i32 %t69)
  store i32 %t72, ptr %l60
  br label %bb19
bb19:
  %t73 = load i32, ptr %l60, !range !{i32 0, i32 6}
  store i32 %t73, ptr %l6
  %t74 = load i32, ptr %l6, !range !{i32 0, i32 6}
  %t76 = trunc i64 0 to i32
  %t77 = icmp eq i32 %t74, %t76
  br i1 %t77, label %bb20, label %bb21
bb20:
  br label %bb22
bb21:
  br label %bb32
bb22:
  %t79 = load ptr, ptr %l0, !tbaa !29
  %t80 = load i32, ptr %l1, !tbaa !23
  %t83 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eIsColumns(ptr %v0, ptr %t79, i32 %t80)
  store i1 %t83, ptr %l65
  br label %bb23
bb23:
  %t84 = load i1, ptr %l65, !tbaa !21
  br i1 %t84, label %bb24, label %bb25
bb24:
  %t85 = load ptr, ptr %l0, !tbaa !29
  %t86 = load i32, ptr %l1, !tbaa !23
  %t89 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2ecolumnFields(ptr %v0, ptr %t85, i32 %t86)
  store i32 %t89, ptr %l69
  br label %bb26
bb25:
  %t90 = load ptr, ptr %l0, !tbaa !29
  store ptr %t90, ptr %l70, !tbaa !29
  %t91 = load ptr, ptr %l0, !tbaa !29
  %t93 = getelementptr %"compiler/generic:Program", ptr %t91, i32 0, i32 2
  %t94 = load i32, ptr %l3, !tbaa !23
  %t97 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eFields(ptr %v0, ptr %t93, i32 %t94)
  store i32 %t97, ptr %l74
  br label %bb27
bb26:
  %t98 = load i32, ptr %l69, !tbaa !23
  store i32 %t98, ptr %l66, !tbaa !23
  br label %bb29
bb27:
  %t99 = load i64, ptr %l4, !tbaa !24
  %t100 = load i32, ptr %l5, !tbaa !23
  %t101 = load ptr, ptr %l70, !tbaa !29
  %t102 = load i32, ptr %l74, !tbaa !23
  %t105 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2esubstList(ptr %v0, ptr %t101, i32 %t102, i64 %t99, i32 %t100)
  store i32 %t105, ptr %l77
  br label %bb28
bb28:
  %t106 = load i32, ptr %l77, !tbaa !23
  store i32 %t106, ptr %l66, !tbaa !23
  br label %bb29
bb29:
  %t107 = load i32, ptr %l66, !tbaa !23
  %t108 = load ptr, ptr %l0, !tbaa !29
  %t110 = getelementptr %"compiler/generic:Program", ptr %t108, i32 0, i32 2
  store ptr %t110, ptr %l79, !tbaa !29
  %t111 = load i32, ptr %l1, !tbaa !23
  store i32 %t111, ptr %l80, !tbaa !23
  store i32 %t107, ptr %l81, !tbaa !23
  %t113 = load ptr, ptr %l0, !tbaa !29
  %t115 = getelementptr %"compiler/generic:Program", ptr %t113, i32 0, i32 2
  %t116 = load i32, ptr %l3, !tbaa !23
  %t119 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDtorWritten(ptr %v0, ptr %t115, i32 %t116)
  store i1 %t119, ptr %l85
  br label %bb30
bb30:
  %t120 = load ptr, ptr %l79, !tbaa !29
  %t121 = load i32, ptr %l80, !tbaa !23
  %t122 = load i32, ptr %l81, !tbaa !23
  %t123 = load i1, ptr %l85, !tbaa !21
  call void @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eSetStructBody(ptr %v0, ptr %t120, i32 %t121, i32 %t122, i1 %t123)
  br label %bb31
bb31:
  br label %bb53
bb32:
  %t124 = load i32, ptr %l6, !range !{i32 0, i32 6}
  %t126 = trunc i64 1 to i32
  %t127 = icmp eq i32 %t124, %t126
  br i1 %t127, label %bb33, label %bb34
bb33:
  br label %bb35
bb34:
  br label %bb40
bb35:
  %t129 = load ptr, ptr %l0, !tbaa !29
  %t131 = getelementptr %"compiler/generic:Program", ptr %t129, i32 0, i32 2
  store ptr %t131, ptr %l89, !tbaa !29
  %t132 = load i32, ptr %l1, !tbaa !23
  store i32 %t132, ptr %l90, !tbaa !23
  %t133 = load ptr, ptr %l0, !tbaa !29
  %t135 = getelementptr %"compiler/generic:Program", ptr %t133, i32 0, i32 2
  %t136 = load i32, ptr %l3, !tbaa !23
  %t139 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eCaseNames(ptr %v0, ptr %v0, ptr %t135, i32 %t136)
  store { i64, ptr } %t139, ptr %l94
  br label %bb36
bb36:
  %t140 = load ptr, ptr %l0, !tbaa !29
  store ptr %t140, ptr %l95, !tbaa !29
  %t141 = load ptr, ptr %l0, !tbaa !29
  %t143 = getelementptr %"compiler/generic:Program", ptr %t141, i32 0, i32 2
  %t144 = load i32, ptr %l3, !tbaa !23
  %t147 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eCases(ptr %v0, ptr %t143, i32 %t144)
  store i32 %t147, ptr %l99
  br label %bb37
bb37:
  %t148 = load i64, ptr %l4, !tbaa !24
  %t149 = load i32, ptr %l5, !tbaa !23
  %t150 = load ptr, ptr %l95, !tbaa !29
  %t151 = load i32, ptr %l99, !tbaa !23
  %t154 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2esubstList(ptr %v0, ptr %t150, i32 %t151, i64 %t148, i32 %t149)
  store i32 %t154, ptr %l102
  br label %bb38
bb38:
  %t155 = load ptr, ptr %l89, !tbaa !29
  %t156 = load i32, ptr %l90, !tbaa !23
  %t157 = load { i64, ptr }, ptr %l94, !tbaa !27
  %t158 = load i32, ptr %l102, !tbaa !23
  call void @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eSetEnumBody(ptr %v0, ptr %v0, ptr %t155, i32 %t156, { i64, ptr } %t157, i32 %t158)
  br label %bb39
bb39:
  br label %bb53
bb40:
  %t159 = load i32, ptr %l6, !range !{i32 0, i32 6}
  %t161 = trunc i64 4 to i32
  %t162 = icmp eq i32 %t159, %t161
  br i1 %t162, label %bb41, label %bb42
bb41:
  br label %bb43
bb42:
  br label %bb47
bb43:
  %t164 = load ptr, ptr %l0, !tbaa !29
  %t166 = getelementptr %"compiler/generic:Program", ptr %t164, i32 0, i32 2
  store ptr %t166, ptr %l106, !tbaa !29
  %t167 = load i32, ptr %l1, !tbaa !23
  store i32 %t167, ptr %l107, !tbaa !23
  %t168 = load ptr, ptr %l0, !tbaa !29
  store ptr %t168, ptr %l108, !tbaa !29
  %t169 = load ptr, ptr %l0, !tbaa !29
  %t171 = getelementptr %"compiler/generic:Program", ptr %t169, i32 0, i32 2
  %t172 = load i32, ptr %l3, !tbaa !23
  %t175 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eBase(ptr %v0, ptr %t171, i32 %t172)
  store i32 %t175, ptr %l112
  br label %bb44
bb44:
  %t176 = load i64, ptr %l4, !tbaa !24
  %t177 = load i32, ptr %l5, !tbaa !23
  %t178 = load ptr, ptr %l108, !tbaa !29
  %t179 = load i32, ptr %l112, !tbaa !23
  %t182 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eSubst(ptr %v0, ptr %t178, i32 %t179, i64 %t176, i32 %t177)
  store i32 %t182, ptr %l115
  br label %bb45
bb45:
  %t183 = load ptr, ptr %l106, !tbaa !29
  %t184 = load i32, ptr %l107, !tbaa !23
  %t185 = load i32, ptr %l115, !tbaa !23
  call void @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eSetOverBody(ptr %v0, ptr %t183, i32 %t184, i32 %t185)
  br label %bb46
bb46:
  br label %bb53
bb47:
  br i1 true, label %bb48, label %bb49
bb48:
  br label %bb50
bb49:
  br label %bb52
bb50:
  %t186 = load ptr, ptr %l0, !tbaa !29
  %t188 = getelementptr %"compiler/generic:Program", ptr %t186, i32 0, i32 2
  %t189 = load i32, ptr %l1, !tbaa !23
  call void @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eSetEmptyBody(ptr %v0, ptr %t188, i32 %t189)
  br label %bb51
bb51:
  br label %bb53
bb52:
  call void @__olang_check_failed(ptr @olang_loc_dbe52b8ce495020a_fa2e1742f6a7a7de)
  unreachable
bb53:
  %t192 = load ptr, ptr %l0, !tbaa !29
  %t194 = getelementptr %"compiler/generic:Program", ptr %t192, i32 0, i32 2
  %t195 = load i32, ptr %l1, !tbaa !23
  %t198 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eClosed(ptr %v0, ptr %t194, i32 %t195)
  store i1 %t198, ptr %l122
  br label %bb54
bb54:
  %t199 = load i1, ptr %l122, !tbaa !21
  br i1 %t199, label %bb55, label %bb56
bb55:
  %t200 = load ptr, ptr %l0, !tbaa !29
  %t202 = getelementptr %"compiler/generic:Program", ptr %t200, i32 0, i32 2
  %t203 = load i32, ptr %l2, !tbaa !23
  %t206 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclKindOf(ptr %v0, ptr %t202, i32 %t203)
  store i32 %t206, ptr %l126
  br label %bb57
bb56:
  br label %bb75
bb57:
  %t207 = load i32, ptr %l126, !range !{i32 0, i32 6}
  store i32 %t207, ptr %l8
  %t208 = load i32, ptr %l8, !range !{i32 0, i32 6}
  %t210 = trunc i64 0 to i32
  %t211 = icmp eq i32 %t208, %t210
  br i1 %t211, label %bb58, label %bb59
bb58:
  br label %bb60
bb59:
  br label %bb63
bb60:
  %t213 = load ptr, ptr %l0, !tbaa !29
  store ptr %t213, ptr %l129, !tbaa !29
  %t214 = load ptr, ptr %l0, !tbaa !29
  %t216 = getelementptr %"compiler/generic:Program", ptr %t214, i32 0, i32 2
  %t217 = load i32, ptr %l1, !tbaa !23
  %t220 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eFields(ptr %v0, ptr %t216, i32 %t217)
  store i32 %t220, ptr %l133
  br label %bb61
bb61:
  %t221 = load ptr, ptr %l129, !tbaa !29
  %t222 = load i32, ptr %l133, !tbaa !23
  call void @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eexpandList(ptr %v0, ptr %t221, i32 %t222, i64 0)
  br label %bb62
bb62:
  br label %bb74
bb63:
  %t223 = load i32, ptr %l8, !range !{i32 0, i32 6}
  %t225 = trunc i64 1 to i32
  %t226 = icmp eq i32 %t223, %t225
  br i1 %t226, label %bb64, label %bb65
bb64:
  br label %bb66
bb65:
  br label %bb69
bb66:
  %t228 = load ptr, ptr %l0, !tbaa !29
  store ptr %t228, ptr %l136, !tbaa !29
  %t229 = load ptr, ptr %l0, !tbaa !29
  %t231 = getelementptr %"compiler/generic:Program", ptr %t229, i32 0, i32 2
  %t232 = load i32, ptr %l1, !tbaa !23
  %t235 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eCases(ptr %v0, ptr %t231, i32 %t232)
  store i32 %t235, ptr %l140
  br label %bb67
bb67:
  %t236 = load ptr, ptr %l136, !tbaa !29
  %t237 = load i32, ptr %l140, !tbaa !23
  call void @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eexpandList(ptr %v0, ptr %t236, i32 %t237, i64 0)
  br label %bb68
bb68:
  br label %bb74
bb69:
  br i1 true, label %bb70, label %bb71
bb70:
  br label %bb72
bb71:
  br label %bb73
bb72:
  br label %bb74
bb73:
  call void @__olang_check_failed(ptr @olang_loc_19a69728787b464b_16ae308be2e5745f)
  unreachable
bb74:
  br label %bb75
bb75:
  call void @__olang_scope_close(ptr %s0)
  store i1 true, ptr %rv
  br label %ret
bb76:
  %t239 = load ptr, ptr %l0, !tbaa !29
  %t240 = load i32, ptr %l2, !tbaa !23
  %t243 = call ptr @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2etypeDecl(ptr %v0, ptr %v0, ptr %t239, i32 %t240)
  store ptr %t243, ptr %l144
  br label %bb77
bb77:
  %t244 = load ptr, ptr %l144, !tbaa !29
  store ptr %t244, ptr %l9, !tbaa !29
  %t245 = load ptr, ptr %l9, !tbaa !29
  %t247 = icmp eq ptr %t245, null
  br i1 %t247, label %bb78, label %bb79
bb78:
  %t249 = load ptr, ptr %l0, !tbaa !29
  %t251 = getelementptr %"compiler/generic:Program", ptr %t249, i32 0, i32 2
  %t252 = load i32, ptr %l1, !tbaa !23
  call void @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eSetEmptyBody(ptr %v0, ptr %t251, i32 %t252)
  br label %bb80
bb79:
  br label %bb81
bb80:
  call void @__olang_scope_close(ptr %s0)
  store i1 true, ptr %rv
  br label %ret
bb81:
  %t256 = load ptr, ptr %l9, !tbaa !29
  %t258 = getelementptr %"compiler/ast:TypeDecl", ptr %t256, i32 0, i32 3
  %t259 = load ptr, ptr %t258, !tbaa !29
  %t261 = icmp eq ptr %t259, null
  br i1 %t261, label %bb82, label %bb83
bb82:
  call void @__olang_scope_close(ptr %s0)
  store i1 false, ptr %rv
  br label %ret
bb83:
  br label %bb84
bb84:
  %t264 = load ptr, ptr %l0, !tbaa !29
  %t265 = load i32, ptr %l2, !tbaa !23
  call void @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2edeclContext(ptr %t266, ptr %v0, ptr %s0, ptr %t264, i32 %t265)
  call void @llvm.memmove.p0.p0.i64(ptr %l157, ptr %t266, i64 160, i1 false)
  br label %bb85
bb85:
  call void @llvm.memmove.p0.p0.i64(ptr %l10, ptr %l157, i64 160, i1 false)
  %t269 = load ptr, ptr %l9, !tbaa !29
  %t271 = getelementptr %"compiler/ast:TypeDecl", ptr %t269, i32 0, i32 3
  %t272 = load ptr, ptr %t271, !tbaa !29
  store ptr %t272, ptr %l11, !tbaa !29
  %t274 = load ptr, ptr %l11, !tbaa !29
  store ptr %t274, ptr %l160, !tbaa !29
  store i1 false, ptr %l161, !tbaa !21
  %t275 = load ptr, ptr %l160, !tbaa !29
  %t276 = icmp ne ptr %t275, null
  br i1 %t276, label %bb86, label %bb87
bb86:
  %t278 = load ptr, ptr %l160, !tbaa !29
  %t279 = load i64, ptr %t278, !range !{i64 0, i64 5}
  %t281 = icmp eq i64 %t279, 0
  store i1 %t281, ptr %l161, !tbaa !21
  br label %bb87
bb87:
  %t282 = load i1, ptr %l161, !tbaa !21
  br i1 %t282, label %bb88, label %bb89
bb88:
  %t283 = load ptr, ptr %l11, !tbaa !29
  %t285 = getelementptr { i64, [6 x i64] }, ptr %t283, i32 0, i32 1
  %t286 = getelementptr { ptr }, ptr %t285, i32 0, i32 0
  %t287 = load ptr, ptr %t286
  store ptr %t287, ptr %l12, !tbaa !29
  br label %bb90
bb89:
  br label %bb93
bb90:
  %t289 = load ptr, ptr %l0, !tbaa !29
  %t291 = getelementptr %"compiler/generic:Program", ptr %t289, i32 0, i32 2
  store ptr %t291, ptr %l167, !tbaa !29
  %t292 = load i32, ptr %l1, !tbaa !23
  store i32 %t292, ptr %l168, !tbaa !23
  %t293 = load ptr, ptr %l0, !tbaa !29
  %t294 = load ptr, ptr %l12, !tbaa !29
  %t298 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2efields(ptr %v0, ptr %s0, ptr %v0, ptr %t293, ptr %l10, ptr %t294)
  store i32 %t298, ptr %l172
  br label %bb91
bb91:
  %t299 = load ptr, ptr %l12, !tbaa !29
  %t301 = getelementptr %"compiler/ast:StructBody", ptr %t299, i32 0, i32 3
  %t302 = getelementptr %"compiler/source:Span", ptr %t301, i32 0, i32 1
  %t303 = load i32, ptr %t302, !tbaa !23
  %t305 = icmp sgt i32 %t303, 0
  %t306 = load ptr, ptr %l167, !tbaa !29
  %t307 = load i32, ptr %l168, !tbaa !23
  %t308 = load i32, ptr %l172, !tbaa !23
  call void @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eSetStructBody(ptr %v0, ptr %t306, i32 %t307, i32 %t308, i1 %t305)
  br label %bb92
bb92:
  br label %bb142
bb93:
  %t310 = load ptr, ptr %l11, !tbaa !29
  store ptr %t310, ptr %l176, !tbaa !29
  store i1 false, ptr %l177, !tbaa !21
  %t311 = load ptr, ptr %l176, !tbaa !29
  %t312 = icmp ne ptr %t311, null
  br i1 %t312, label %bb94, label %bb95
bb94:
  %t314 = load ptr, ptr %l176, !tbaa !29
  %t315 = load i64, ptr %t314, !range !{i64 0, i64 5}
  %t317 = icmp eq i64 %t315, 1
  store i1 %t317, ptr %l177, !tbaa !21
  br label %bb95
bb95:
  %t318 = load i1, ptr %l177, !tbaa !21
  br i1 %t318, label %bb96, label %bb97
bb96:
  %t319 = load ptr, ptr %l11, !tbaa !29
  %t321 = getelementptr { i64, [6 x i64] }, ptr %t319, i32 0, i32 1
  %t322 = getelementptr { { i64, ptr }, ptr }, ptr %t321, i32 0, i32 0
  %t323 = load { i64, ptr }, ptr %t322
  store { i64, ptr } %t323, ptr %l13, !tbaa !27
  br label %bb98
bb97:
  br label %bb122
bb98:
  store %olang.scope zeroinitializer, ptr %s16
  %t325 = load { i64, ptr }, ptr %l13, !tbaa !27
  %t327 = extractvalue { i64, ptr } %t325, 0
  store i64 %t327, ptr %l183, !tbaa !24
  %t328 = load i64, ptr %l183, !tbaa !24
  %t329 = icmp sge i64 %t328, 0
  br i1 %t329, label %bb99, label %bb100
bb99:
  %t331 = load i64, ptr %l183, !tbaa !24
  %t332 = icmp sle i64 %t331, 2305843009213693951
  br i1 %t332, label %bb101, label %bb102
bb100:
  call void @__olang_check_failed(ptr @olang_loc_e3a2ba8c5e067247_8b3ee33876f19483)
  unreachable
bb101:
  %t334 = load i64, ptr %l183, !tbaa !24
  %t335 = mul i64 %t334, 4
  %t336 = call ptr @__olang_scope_alloc_zeroed(ptr %s16, i64 %t335)
  %t337 = insertvalue { i64, ptr } undef, i64 %t334, 0
  %t338 = insertvalue { i64, ptr } %t337, ptr %t336, 1
  store { i64, ptr } %t338, ptr %l14, !tbaa !27
  %t340 = load { i64, ptr }, ptr %l13, !tbaa !27
  %t342 = extractvalue { i64, ptr } %t340, 0
  store i64 %t342, ptr %l188, !tbaa !24
  %t343 = load i64, ptr %l188, !tbaa !24
  %t344 = icmp sge i64 %t343, 0
  br i1 %t344, label %bb103, label %bb104
bb102:
  call void @__olang_check_failed(ptr @olang_loc_e3a2ba8c5e067247_8b3ee33876f19483)
  unreachable
bb103:
  %t346 = load i64, ptr %l188, !tbaa !24
  %t347 = icmp sle i64 %t346, 2305843009213693951
  br i1 %t347, label %bb105, label %bb106
bb104:
  call void @__olang_check_failed(ptr @olang_loc_9761a243a5640f52_e0132c3d672b758e)
  unreachable
bb105:
  %t349 = load i64, ptr %l188, !tbaa !24
  %t350 = mul i64 %t349, 4
  %t351 = call ptr @__olang_scope_alloc_zeroed(ptr %s16, i64 %t350)
  %t352 = insertvalue { i64, ptr } undef, i64 %t349, 0
  %t353 = insertvalue { i64, ptr } %t352, ptr %t351, 1
  store { i64, ptr } %t353, ptr %l15, !tbaa !27
  store i64 0, ptr %l16, !tbaa !24
  %t355 = load { i64, ptr }, ptr %l13, !tbaa !27
  %t357 = extractvalue { i64, ptr } %t355, 0
  store i64 %t357, ptr %l17, !tbaa !24
  store i64 1, ptr %l18, !tbaa !24
  %t359 = load i64, ptr %l17, !tbaa !24
  %t360 = load i64, ptr %l16, !tbaa !24
  %t363 = icmp sgt i64 %t359, %t360
  br i1 %t363, label %bb107, label %bb108
bb106:
  call void @__olang_check_failed(ptr @olang_loc_9761a243a5640f52_e0132c3d672b758e)
  unreachable
bb107:
  %t365 = load i64, ptr %l18, !tbaa !24
  %t367 = icmp sgt i64 %t365, 0
  br i1 %t367, label %bb109, label %bb110
bb108:
  store i64 0, ptr %l197, !tbaa !24
  br label %bb112
bb109:
  %t369 = load i64, ptr %l17, !tbaa !24
  %t370 = load i64, ptr %l16, !tbaa !24
  %t373 = sub i64 %t369, %t370
  %t374 = load i64, ptr %l18, !tbaa !24
  %t377 = add i64 %t373, %t374
  %t379 = sub i64 %t377, 1
  %t380 = load i64, ptr %l18, !tbaa !24
  %t383 = sdiv i64 %t379, %t380
  store i64 %t383, ptr %l200, !tbaa !24
  br label %bb111
bb110:
  store i64 0, ptr %l200, !tbaa !24
  br label %bb111
bb111:
  %t385 = load i64, ptr %l200, !tbaa !24
  store i64 %t385, ptr %l197, !tbaa !24
  br label %bb112
bb112:
  %t386 = load i64, ptr %l197, !tbaa !24
  store i64 %t386, ptr %l19, !tbaa !24
  store i64 0, ptr %l20, !tbaa !24
  br label %bb113
bb113:
  %t387 = load i64, ptr %l20, !tbaa !24
  %t388 = load i64, ptr %l19, !tbaa !24
  %t391 = icmp slt i64 %t387, %t388
  %t393 = xor i1 %t391, true
  br i1 %t393, label %bb114, label %bb115
bb114:
  br label %bb119
bb115:
  br label %bb116
bb116:
  %t395 = load i64, ptr %l16, !tbaa !24
  %t396 = load i64, ptr %l20, !tbaa !24
  %t397 = load i64, ptr %l18, !tbaa !24
  %t400 = mul i64 %t396, %t397
  %t403 = add i64 %t395, %t400
  store i64 %t403, ptr %l21, !tbaa !24
  %t405 = load i64, ptr %l21, !tbaa !24
  %t406 = load { i64, ptr }, ptr %l13, !tbaa !27
  store { i64, ptr } %t406, ptr %l219, !tbaa !27
  %t407 = load i64, ptr %l21, !tbaa !24
  %t409 = getelementptr { i64, ptr }, ptr %l219, i32 0, i32 1
  %t410 = load ptr, ptr %t409, !tbaa !27
  %t411 = getelementptr ptr, ptr %t410, i64 %t407
  %t412 = load ptr, ptr %t411, !tbaa !39
  %t414 = getelementptr %"compiler/ast:CaseDecl", ptr %t412, i32 0, i32 1
  %t415 = load i32, ptr %t414, !tbaa !23
  %t418 = getelementptr { i64, ptr }, ptr %l14, i32 0, i32 1
  %t419 = load ptr, ptr %t418, !tbaa !27
  %t420 = getelementptr i32, ptr %t419, i64 %t405
  store i32 %t415, ptr %t420, !tbaa !33
  %t421 = load i64, ptr %l21, !tbaa !24
  store i64 %t421, ptr %l223, !tbaa !24
  %t422 = load ptr, ptr %l0, !tbaa !29
  %t423 = load { i64, ptr }, ptr %l13, !tbaa !27
  store { i64, ptr } %t423, ptr %l226, !tbaa !27
  %t424 = load i64, ptr %l21, !tbaa !24
  %t426 = getelementptr { i64, ptr }, ptr %l226, i32 0, i32 1
  %t427 = load ptr, ptr %t426, !tbaa !27
  %t428 = getelementptr ptr, ptr %t427, i64 %t424
  %t429 = load ptr, ptr %t428, !tbaa !39
  %t430 = load i32, ptr %l2, !tbaa !23
  %t435 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2epayload(ptr %v0, ptr %s0, ptr %v0, ptr %t422, ptr %l10, ptr %t429, i32 %t430)
  store i32 %t435, ptr %l230
  br label %bb117
bb117:
  %t436 = load i32, ptr %l230, !tbaa !23
  %t437 = load i64, ptr %l223, !tbaa !24
  %t438 = getelementptr { i64, ptr }, ptr %l15, i32 0, i32 1
  %t439 = load ptr, ptr %t438, !tbaa !27
  %t440 = getelementptr i32, ptr %t439, i64 %t437
  store i32 %t436, ptr %t440, !tbaa !33
  br label %bb118
bb118:
  %t441 = load i64, ptr %l20, !tbaa !24
  %t443 = add i64 %t441, 1
  store i64 %t443, ptr %l20, !tbaa !24
  br label %bb113
bb119:
  %t445 = load ptr, ptr %l0, !tbaa !29
  %t447 = getelementptr %"compiler/generic:Program", ptr %t445, i32 0, i32 2
  store ptr %t447, ptr %l234, !tbaa !29
  %t448 = load i32, ptr %l1, !tbaa !23
  store i32 %t448, ptr %l235, !tbaa !23
  %t449 = load { i64, ptr }, ptr %l14, !tbaa !27
  store { i64, ptr } %t449, ptr %l236, !tbaa !27
  %t450 = load ptr, ptr %l0, !tbaa !29
  %t452 = getelementptr %"compiler/generic:Program", ptr %t450, i32 0, i32 2
  %t453 = load { i64, ptr }, ptr %l15, !tbaa !27
  %t456 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eList(ptr %v0, ptr %s16, ptr %t452, { i64, ptr } %t453)
  store i32 %t456, ptr %l240
  br label %bb120
bb120:
  %t457 = load ptr, ptr %l234, !tbaa !29
  %t458 = load i32, ptr %l235, !tbaa !23
  %t459 = load { i64, ptr }, ptr %l236, !tbaa !27
  %t460 = load i32, ptr %l240, !tbaa !23
  call void @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eSetEnumBody(ptr %v0, ptr %s16, ptr %t457, i32 %t458, { i64, ptr } %t459, i32 %t460)
  br label %bb121
bb121:
  call void @__olang_scope_close(ptr %s16)
  br label %bb142
bb122:
  %t461 = load ptr, ptr %l11, !tbaa !29
  store ptr %t461, ptr %l241, !tbaa !29
  store i1 false, ptr %l242, !tbaa !21
  %t462 = load ptr, ptr %l241, !tbaa !29
  %t463 = icmp ne ptr %t462, null
  br i1 %t463, label %bb123, label %bb124
bb123:
  %t465 = load ptr, ptr %l241, !tbaa !29
  %t466 = load i64, ptr %t465, !range !{i64 0, i64 5}
  %t468 = icmp eq i64 %t466, 3
  store i1 %t468, ptr %l242, !tbaa !21
  br label %bb124
bb124:
  %t469 = load i1, ptr %l242, !tbaa !21
  br i1 %t469, label %bb125, label %bb126
bb125:
  %t470 = load ptr, ptr %l11, !tbaa !29
  %t472 = getelementptr { i64, [6 x i64] }, ptr %t470, i32 0, i32 1
  %t473 = getelementptr { ptr, ptr }, ptr %t472, i32 0, i32 0
  %t474 = load ptr, ptr %t473
  store ptr %t474, ptr %l22, !tbaa !29
  br label %bb127
bb126:
  br label %bb130
bb127:
  %t476 = load ptr, ptr %l0, !tbaa !29
  %t478 = getelementptr %"compiler/generic:Program", ptr %t476, i32 0, i32 2
  store ptr %t478, ptr %l248, !tbaa !29
  %t479 = load i32, ptr %l1, !tbaa !23
  store i32 %t479, ptr %l249, !tbaa !23
  %t480 = load ptr, ptr %l0, !tbaa !29
  %t481 = load ptr, ptr %l22, !tbaa !29
  %t486 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eResolve(ptr %v0, ptr %s0, ptr %v0, ptr %t480, ptr %l10, ptr %t481)
  store i32 %t486, ptr %l254
  br label %bb128
bb128:
  %t487 = load ptr, ptr %l248, !tbaa !29
  %t488 = load i32, ptr %l249, !tbaa !23
  %t489 = load i32, ptr %l254, !tbaa !23
  call void @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eSetOverBody(ptr %v0, ptr %t487, i32 %t488, i32 %t489)
  br label %bb129
bb129:
  br label %bb142
bb130:
  %t490 = load ptr, ptr %l11, !tbaa !29
  store ptr %t490, ptr %l255, !tbaa !29
  store i1 false, ptr %l256, !tbaa !21
  %t491 = load ptr, ptr %l255, !tbaa !29
  %t492 = icmp ne ptr %t491, null
  br i1 %t492, label %bb131, label %bb132
bb131:
  %t494 = load ptr, ptr %l255, !tbaa !29
  %t495 = load i64, ptr %t494, !range !{i64 0, i64 5}
  %t497 = icmp eq i64 %t495, 2
  store i1 %t497, ptr %l256, !tbaa !21
  br label %bb132
bb132:
  %t498 = load i1, ptr %l256, !tbaa !21
  br i1 %t498, label %bb133, label %bb134
bb133:
  br label %bb139
bb134:
  %t499 = load ptr, ptr %l11, !tbaa !29
  store ptr %t499, ptr %l259, !tbaa !29
  store i1 false, ptr %l260, !tbaa !21
  %t500 = load ptr, ptr %l259, !tbaa !29
  %t501 = icmp ne ptr %t500, null
  br i1 %t501, label %bb135, label %bb136
bb135:
  %t503 = load ptr, ptr %l259, !tbaa !29
  %t504 = load i64, ptr %t503, !range !{i64 0, i64 5}
  %t506 = icmp eq i64 %t504, 4
  store i1 %t506, ptr %l260, !tbaa !21
  br label %bb136
bb136:
  %t507 = load i1, ptr %l260, !tbaa !21
  br i1 %t507, label %bb137, label %bb138
bb137:
  br label %bb139
bb138:
  br label %bb141
bb139:
  %t508 = load ptr, ptr %l0, !tbaa !29
  %t510 = getelementptr %"compiler/generic:Program", ptr %t508, i32 0, i32 2
  %t511 = load i32, ptr %l1, !tbaa !23
  call void @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eSetEmptyBody(ptr %v0, ptr %t510, i32 %t511)
  br label %bb140
bb140:
  br label %bb142
bb141:
  call void @__olang_check_failed(ptr @olang_loc_e47f82bcf36ef746_b94daf5318f6e942)
  unreachable
bb142:
  call void @__olang_scope_close(ptr %s0)
  store i1 true, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eBuilderSig(ptr %v0, ptr %a0, i64 %a1, i32 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l3 = alloca i32
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca { i64, ptr }
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca i64
  %l12 = alloca i64
  %l15 = alloca i32
  %l17 = alloca i64
  %l20 = alloca i64
  %l27 = alloca { i64, ptr }
  %l32 = alloca i64
  %l35 = alloca i64
  %l57 = alloca i64
  %l63 = alloca i32
  %l66 = alloca ptr
  %l67 = alloca i32
  %l68 = alloca i64
  %l72 = alloca i32
  %l73 = alloca i32
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
  store i32 %t5, ptr %l15
  br label %bb1
bb1:
  %t6 = load i32, ptr %l15, !tbaa !23
  store i32 %t6, ptr %l3, !tbaa !23
  %t7 = load i64, ptr %l1, !tbaa !24
  %t9 = call i64 @compiler_2fgeneric_2eFnOwner(i64 %t7)
  store i64 %t9, ptr %l17
  br label %bb2
bb2:
  %t10 = load i64, ptr %l17, !tbaa !24
  store i64 %t10, ptr %l4, !tbaa !24
  %t11 = load ptr, ptr %l0, !tbaa !29
  %t12 = load i64, ptr %l4, !tbaa !24
  %t15 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eVarCount(ptr %v0, ptr %t11, i64 %t12)
  store i64 %t15, ptr %l20
  br label %bb3
bb3:
  %t16 = load i64, ptr %l20, !tbaa !24
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
  %t23 = load ptr, ptr %l0, !tbaa !29
  %t24 = load i64, ptr %l1, !tbaa !24
  %t29 = call { i64, ptr } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eOwnerBinding(ptr %v0, ptr %s0, ptr %t23, i64 %t24, i32 %a2)
  store { i64, ptr } %t29, ptr %l27
  br label %bb7
bb7:
  %t30 = load { i64, ptr }, ptr %l27, !tbaa !27
  store { i64, ptr } %t30, ptr %l6, !tbaa !27
  store i64 0, ptr %l7, !tbaa !24
  %t31 = load i64, ptr %l5, !tbaa !24
  store i64 %t31, ptr %l8, !tbaa !24
  store i64 1, ptr %l9, !tbaa !24
  %t33 = load i64, ptr %l8, !tbaa !24
  %t34 = load i64, ptr %l7, !tbaa !24
  %t37 = icmp sgt i64 %t33, %t34
  br i1 %t37, label %bb8, label %bb9
bb8:
  %t39 = load i64, ptr %l9, !tbaa !24
  %t41 = icmp sgt i64 %t39, 0
  br i1 %t41, label %bb10, label %bb11
bb9:
  store i64 0, ptr %l32, !tbaa !24
  br label %bb13
bb10:
  %t43 = load i64, ptr %l8, !tbaa !24
  %t44 = load i64, ptr %l7, !tbaa !24
  %t47 = sub i64 %t43, %t44
  %t48 = load i64, ptr %l9, !tbaa !24
  %t51 = add i64 %t47, %t48
  %t53 = sub i64 %t51, 1
  %t54 = load i64, ptr %l9, !tbaa !24
  %t57 = sdiv i64 %t53, %t54
  store i64 %t57, ptr %l35, !tbaa !24
  br label %bb12
bb11:
  store i64 0, ptr %l35, !tbaa !24
  br label %bb12
bb12:
  %t59 = load i64, ptr %l35, !tbaa !24
  store i64 %t59, ptr %l32, !tbaa !24
  br label %bb13
bb13:
  %t60 = load i64, ptr %l32, !tbaa !24
  store i64 %t60, ptr %l10, !tbaa !24
  store i64 0, ptr %l11, !tbaa !24
  br label %bb14
bb14:
  %t61 = load i64, ptr %l11, !tbaa !24
  %t62 = load i64, ptr %l10, !tbaa !24
  %t65 = icmp slt i64 %t61, %t62
  %t67 = xor i1 %t65, true
  br i1 %t67, label %bb15, label %bb16
bb15:
  br label %bb23
bb16:
  br label %bb17
bb17:
  %t69 = load i64, ptr %l7, !tbaa !24
  %t70 = load i64, ptr %l11, !tbaa !24
  %t71 = load i64, ptr %l9, !tbaa !24
  %t74 = mul i64 %t70, %t71
  %t77 = add i64 %t69, %t74
  store i64 %t77, ptr %l12, !tbaa !24
  %t79 = load i64, ptr %l12, !tbaa !24
  %t81 = getelementptr { i64, ptr }, ptr %l6, i32 0, i32 1
  %t82 = load ptr, ptr %t81, !tbaa !27
  %t83 = getelementptr i32, ptr %t82, i64 %t79
  %t84 = load i32, ptr %t83, !tbaa !33
  %t85 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t88 = icmp eq i32 %t84, %t85
  br i1 %t88, label %bb18, label %bb19
bb18:
  %t90 = load i64, ptr %l12, !tbaa !24
  store i64 %t90, ptr %l57, !tbaa !24
  %t91 = load ptr, ptr %l0, !tbaa !29
  %t93 = getelementptr %"compiler/generic:Program", ptr %t91, i32 0, i32 2
  %t94 = load i64, ptr %l4, !tbaa !24
  %t95 = load i64, ptr %l12, !tbaa !24
  %t96 = load i64, ptr @G_2ecompiler_2ftypes_2eReadOnly, !tbaa !24
  %t101 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eVar(ptr %v0, ptr %t93, i64 %t94, i64 %t95, i64 %t96)
  store i32 %t101, ptr %l63
  br label %bb20
bb19:
  br label %bb21
bb20:
  %t102 = load i32, ptr %l63, !tbaa !23
  %t103 = load i64, ptr %l57, !tbaa !24
  %t104 = getelementptr { i64, ptr }, ptr %l6, i32 0, i32 1
  %t105 = load ptr, ptr %t104, !tbaa !27
  %t106 = getelementptr i32, ptr %t105, i64 %t103
  store i32 %t102, ptr %t106, !tbaa !33
  br label %bb21
bb21:
  br label %bb22
bb22:
  %t107 = load i64, ptr %l11, !tbaa !24
  %t109 = add i64 %t107, 1
  store i64 %t109, ptr %l11, !tbaa !24
  br label %bb14
bb23:
  %t111 = load ptr, ptr %l0, !tbaa !29
  store ptr %t111, ptr %l66, !tbaa !29
  %t112 = load i32, ptr %l3, !tbaa !23
  store i32 %t112, ptr %l67, !tbaa !23
  %t113 = load i64, ptr %l4, !tbaa !24
  store i64 %t113, ptr %l68, !tbaa !24
  %t114 = load ptr, ptr %l0, !tbaa !29
  %t116 = getelementptr %"compiler/generic:Program", ptr %t114, i32 0, i32 2
  %t117 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t120 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eList(ptr %v0, ptr %s0, ptr %t116, { i64, ptr } %t117)
  store i32 %t120, ptr %l72
  br label %bb24
bb24:
  %t121 = load ptr, ptr %l66, !tbaa !29
  %t122 = load i32, ptr %l67, !tbaa !23
  %t123 = load i64, ptr %l68, !tbaa !24
  %t124 = load i32, ptr %l72, !tbaa !23
  %t125 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eSubst(ptr %v0, ptr %t121, i32 %t122, i64 %t123, i32 %t124)
  store i32 %t125, ptr %l73
  br label %bb25
bb25:
  call void @__olang_scope_close(ptr %s0)
  %t126 = load i32, ptr %l73, !tbaa !23
  store i32 %t126, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local { i64, ptr } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eCaseFieldNames(ptr %v0, ptr %v1, ptr %a0, i32 %a1, i64 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca i64
  %l3 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l4 = alloca ptr
  %l5 = alloca ptr
  %l6 = alloca { i64, ptr }
  %l7 = alloca { i64, ptr }
  %l8 = alloca i64
  %l9 = alloca i64
  %l11 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l15 = alloca i32
  %l20 = alloca { i64, ptr }
  %l21 = alloca { i64, ptr }
  %l22 = alloca i64
  %l23 = alloca { i64, ptr }
  %l24 = alloca ptr
  %l28 = alloca i32
  %l29 = alloca ptr
  %l32 = alloca i1
  %l37 = alloca { i64, ptr }
  %l38 = alloca { i64, ptr }
  %l39 = alloca i64
  %l40 = alloca { i64, ptr }
  %l43 = alloca ptr
  %l44 = alloca i1
  %l51 = alloca i1
  %l56 = alloca i1
  %l57 = alloca { i64, ptr }
  %l63 = alloca { i64, ptr }
  %l73 = alloca { i64, ptr }
  %l82 = alloca { i64, ptr }
  %l83 = alloca { i64, ptr }
  %l84 = alloca i64
  %l85 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %s1 = alloca %olang.scope
  %s2 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  store i64 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aNameId_3e_2ector(ptr %s0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1, ptr %l11
  br label %bb1
bb1:
  %t2 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l11
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t2, ptr %l3
  %t3 = load ptr, ptr %l0, !tbaa !29
  %t5 = getelementptr %"compiler/generic:Program", ptr %t3, i32 0, i32 2
  %t6 = load i32, ptr %l1, !tbaa !23
  %t9 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t5, i32 %t6)
  store i32 %t9, ptr %l15
  br label %bb2
bb2:
  %t10 = load i32, ptr %l15, !range !{i32 0, i32 33}
  %t12 = trunc i64 18 to i32
  %t13 = icmp eq i32 %t10, %t12
  %t15 = xor i1 %t13, true
  br i1 %t15, label %bb3, label %bb4
bb3:
  store %olang.scope zeroinitializer, ptr %s1
  %t18 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aNameId_3e_2eToArra_H4d02a0b2e27e8f31ffc99daa43750593(ptr %s0, ptr %s1, ptr %l3)
  store { i64, ptr } %t18, ptr %l20
  br label %bb5
bb4:
  br label %bb6
bb5:
  %t19 = load { i64, ptr }, ptr %l20, !tbaa !27
  store { i64, ptr } %t19, ptr %l21, !tbaa !27
  %t20 = load { i64, ptr }, ptr %l21, !tbaa !27
  %t21 = extractvalue { i64, ptr } %t20, 0
  store i64 %t21, ptr %l22, !tbaa !24
  %t22 = load i64, ptr %l22, !tbaa !24
  %t23 = mul i64 %t22, 4
  %t24 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t23)
  %t25 = insertvalue { i64, ptr } undef, i64 %t22, 0
  %t26 = insertvalue { i64, ptr } %t25, ptr %t24, 1
  store { i64, ptr } %t26, ptr %l23, !tbaa !27
  %t27 = getelementptr { i64, ptr }, ptr %l23, i32 0, i32 1
  %t28 = load ptr, ptr %t27, !tbaa !27
  %t29 = getelementptr { i64, ptr }, ptr %l21, i32 0, i32 1
  %t30 = load ptr, ptr %t29, !tbaa !27
  %t31 = load i64, ptr %l22, !tbaa !24
  %t32 = mul i64 %t31, 4
  call void @llvm.memmove.p0.p0.i64(ptr %t28, ptr %t30, i64 %t32, i1 false)
  %t33 = load { i64, ptr }, ptr %l23, !tbaa !27
  store { i64, ptr } %t33, ptr %l21, !tbaa !27
  call void @__olang_scope_close(ptr %s1)
  call void @__olang_scope_close(ptr %s0)
  %t34 = load { i64, ptr }, ptr %l21, !tbaa !27
  store { i64, ptr } %t34, ptr %rv
  br label %ret
bb6:
  %t35 = load ptr, ptr %l0, !tbaa !29
  store ptr %t35, ptr %l24, !tbaa !29
  %t36 = load ptr, ptr %l0, !tbaa !29
  %t38 = getelementptr %"compiler/generic:Program", ptr %t36, i32 0, i32 2
  %t39 = load i32, ptr %l1, !tbaa !23
  %t42 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %t38, i32 %t39)
  store i32 %t42, ptr %l28
  br label %bb7
bb7:
  %t43 = load ptr, ptr %l24, !tbaa !29
  %t44 = load i32, ptr %l28, !tbaa !23
  %t45 = call ptr @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2etypeDecl(ptr %v0, ptr %v0, ptr %t43, i32 %t44)
  store ptr %t45, ptr %l29
  br label %bb8
bb8:
  %t46 = load ptr, ptr %l29, !tbaa !29
  store ptr %t46, ptr %l4, !tbaa !29
  %t47 = load ptr, ptr %l4, !tbaa !29
  %t49 = icmp eq ptr %t47, null
  br i1 %t49, label %bb9, label %bb10
bb9:
  store i1 true, ptr %l32, !tbaa !21
  br label %bb11
bb10:
  %t51 = load ptr, ptr %l4, !tbaa !29
  %t53 = getelementptr %"compiler/ast:TypeDecl", ptr %t51, i32 0, i32 3
  %t54 = load ptr, ptr %t53, !tbaa !29
  %t56 = icmp eq ptr %t54, null
  store i1 %t56, ptr %l32, !tbaa !21
  br label %bb11
bb11:
  %t58 = load i1, ptr %l32, !tbaa !21
  br i1 %t58, label %bb12, label %bb13
bb12:
  store %olang.scope zeroinitializer, ptr %s2
  %t60 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aNameId_3e_2eToArra_H4d02a0b2e27e8f31ffc99daa43750593(ptr %s0, ptr %s2, ptr %l3)
  store { i64, ptr } %t60, ptr %l37
  br label %bb14
bb13:
  br label %bb15
bb14:
  %t61 = load { i64, ptr }, ptr %l37, !tbaa !27
  store { i64, ptr } %t61, ptr %l38, !tbaa !27
  %t62 = load { i64, ptr }, ptr %l38, !tbaa !27
  %t63 = extractvalue { i64, ptr } %t62, 0
  store i64 %t63, ptr %l39, !tbaa !24
  %t64 = load i64, ptr %l39, !tbaa !24
  %t65 = mul i64 %t64, 4
  %t66 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t65)
  %t67 = insertvalue { i64, ptr } undef, i64 %t64, 0
  %t68 = insertvalue { i64, ptr } %t67, ptr %t66, 1
  store { i64, ptr } %t68, ptr %l40, !tbaa !27
  %t69 = getelementptr { i64, ptr }, ptr %l40, i32 0, i32 1
  %t70 = load ptr, ptr %t69, !tbaa !27
  %t71 = getelementptr { i64, ptr }, ptr %l38, i32 0, i32 1
  %t72 = load ptr, ptr %t71, !tbaa !27
  %t73 = load i64, ptr %l39, !tbaa !24
  %t74 = mul i64 %t73, 4
  call void @llvm.memmove.p0.p0.i64(ptr %t70, ptr %t72, i64 %t74, i1 false)
  %t75 = load { i64, ptr }, ptr %l40, !tbaa !27
  store { i64, ptr } %t75, ptr %l38, !tbaa !27
  call void @__olang_scope_close(ptr %s2)
  call void @__olang_scope_close(ptr %s0)
  %t76 = load { i64, ptr }, ptr %l38, !tbaa !27
  store { i64, ptr } %t76, ptr %rv
  br label %ret
bb15:
  %t77 = load ptr, ptr %l4, !tbaa !29
  %t79 = getelementptr %"compiler/ast:TypeDecl", ptr %t77, i32 0, i32 3
  %t80 = load ptr, ptr %t79, !tbaa !29
  store ptr %t80, ptr %l5, !tbaa !29
  %t82 = load ptr, ptr %l5, !tbaa !29
  store ptr %t82, ptr %l43, !tbaa !29
  store i1 false, ptr %l44, !tbaa !21
  %t83 = load ptr, ptr %l43, !tbaa !29
  %t84 = icmp ne ptr %t83, null
  br i1 %t84, label %bb16, label %bb17
bb16:
  %t86 = load ptr, ptr %l43, !tbaa !29
  %t87 = load i64, ptr %t86, !range !{i64 0, i64 5}
  %t89 = icmp eq i64 %t87, 1
  store i1 %t89, ptr %l44, !tbaa !21
  br label %bb17
bb17:
  %t90 = load i1, ptr %l44, !tbaa !21
  br i1 %t90, label %bb18, label %bb19
bb18:
  %t91 = load ptr, ptr %l5, !tbaa !29
  %t93 = getelementptr { i64, [6 x i64] }, ptr %t91, i32 0, i32 1
  %t94 = getelementptr { { i64, ptr }, ptr }, ptr %t93, i32 0, i32 0
  %t95 = load { i64, ptr }, ptr %t94
  store { i64, ptr } %t95, ptr %l6, !tbaa !27
  br label %bb20
bb19:
  br label %bb37
bb20:
  %t97 = load i64, ptr %l2, !tbaa !24
  %t99 = icmp sge i64 %t97, 0
  br i1 %t99, label %bb21, label %bb22
bb21:
  %t101 = load i64, ptr %l2, !tbaa !24
  %t102 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t104 = extractvalue { i64, ptr } %t102, 0
  %t107 = icmp slt i64 %t101, %t104
  store i1 %t107, ptr %l51, !tbaa !21
  br label %bb23
bb22:
  store i1 false, ptr %l51, !tbaa !21
  br label %bb23
bb23:
  %t109 = load i1, ptr %l51, !tbaa !21
  br i1 %t109, label %bb24, label %bb25
bb24:
  %t110 = load { i64, ptr }, ptr %l6, !tbaa !27
  store { i64, ptr } %t110, ptr %l57, !tbaa !27
  %t111 = load i64, ptr %l2, !tbaa !24
  %t113 = getelementptr { i64, ptr }, ptr %l57, i32 0, i32 1
  %t114 = load ptr, ptr %t113, !tbaa !27
  %t115 = getelementptr ptr, ptr %t114, i64 %t111
  %t116 = load ptr, ptr %t115, !tbaa !39
  %t118 = getelementptr %"compiler/ast:CaseDecl", ptr %t116, i32 0, i32 2
  %t119 = load { i64, ptr }, ptr %t118, !tbaa !27
  %t121 = extractvalue { i64, ptr } %t119, 0
  %t123 = icmp sgt i64 %t121, 0
  store i1 %t123, ptr %l56, !tbaa !21
  br label %bb26
bb25:
  store i1 false, ptr %l56, !tbaa !21
  br label %bb26
bb26:
  %t125 = load i1, ptr %l56, !tbaa !21
  br i1 %t125, label %bb27, label %bb28
bb27:
  %t126 = load { i64, ptr }, ptr %l6, !tbaa !27
  store { i64, ptr } %t126, ptr %l63, !tbaa !27
  %t127 = load i64, ptr %l2, !tbaa !24
  %t129 = getelementptr { i64, ptr }, ptr %l63, i32 0, i32 1
  %t130 = load ptr, ptr %t129, !tbaa !27
  %t131 = getelementptr ptr, ptr %t130, i64 %t127
  %t132 = load ptr, ptr %t131, !tbaa !39
  %t134 = getelementptr %"compiler/ast:CaseDecl", ptr %t132, i32 0, i32 2
  %t135 = load { i64, ptr }, ptr %t134, !tbaa !27
  store { i64, ptr } %t135, ptr %l7, !tbaa !27
  store i64 0, ptr %l8, !tbaa !24
  %t137 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t139 = extractvalue { i64, ptr } %t137, 0
  store i64 %t139, ptr %l9, !tbaa !24
  br label %bb29
bb28:
  br label %bb36
bb29:
  %t141 = load i64, ptr %l8, !tbaa !24
  %t142 = load i64, ptr %l9, !tbaa !24
  %t145 = icmp slt i64 %t141, %t142
  %t147 = xor i1 %t145, true
  br i1 %t147, label %bb30, label %bb31
bb30:
  br label %bb35
bb31:
  br label %bb32
bb32:
  %t149 = load { i64, ptr }, ptr %l7, !tbaa !27
  store { i64, ptr } %t149, ptr %l73, !tbaa !27
  %t150 = load i64, ptr %l8, !tbaa !24
  %t152 = getelementptr { i64, ptr }, ptr %l73, i32 0, i32 1
  %t153 = load ptr, ptr %t152, !tbaa !27
  %t154 = getelementptr ptr, ptr %t153, i64 %t150
  %t155 = load ptr, ptr %t154, !tbaa !39
  %t159 = getelementptr %"compiler/ast:Param", ptr %t155, i32 0, i32 1
  %t160 = load i32, ptr %t159, !tbaa !23
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aNameId_3e_2ePush_3ccompiler_2fsource_3aNameId_3e(ptr %s0, ptr %l3, i32 %t160)
  br label %bb33
bb33:
  br label %bb34
bb34:
  %t163 = load i64, ptr %l8, !tbaa !24
  %t165 = add i64 %t163, 1
  store i64 %t165, ptr %l8, !tbaa !24
  br label %bb29
bb35:
  br label %bb36
bb36:
  br label %bb42
bb37:
  br i1 true, label %bb38, label %bb39
bb38:
  br label %bb40
bb39:
  br label %bb41
bb40:
  br label %bb42
bb41:
  call void @__olang_check_failed(ptr @olang_loc_418de96ceb9602da_9cbeacdc8e10376e)
  unreachable
bb42:
  %t168 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aNameId_3e_2eToArra_H4d02a0b2e27e8f31ffc99daa43750593(ptr %s0, ptr %s0, ptr %l3)
  store { i64, ptr } %t168, ptr %l82
  br label %bb43
bb43:
  %t169 = load { i64, ptr }, ptr %l82, !tbaa !27
  store { i64, ptr } %t169, ptr %l83, !tbaa !27
  %t170 = load { i64, ptr }, ptr %l83, !tbaa !27
  %t171 = extractvalue { i64, ptr } %t170, 0
  store i64 %t171, ptr %l84, !tbaa !24
  %t172 = load i64, ptr %l84, !tbaa !24
  %t173 = mul i64 %t172, 4
  %t174 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t173)
  %t175 = insertvalue { i64, ptr } undef, i64 %t172, 0
  %t176 = insertvalue { i64, ptr } %t175, ptr %t174, 1
  store { i64, ptr } %t176, ptr %l85, !tbaa !27
  %t177 = getelementptr { i64, ptr }, ptr %l85, i32 0, i32 1
  %t178 = load ptr, ptr %t177, !tbaa !27
  %t179 = getelementptr { i64, ptr }, ptr %l83, i32 0, i32 1
  %t180 = load ptr, ptr %t179, !tbaa !27
  %t181 = load i64, ptr %l84, !tbaa !24
  %t182 = mul i64 %t181, 4
  call void @llvm.memmove.p0.p0.i64(ptr %t178, ptr %t180, i64 %t182, i1 false)
  %t183 = load { i64, ptr }, ptr %l85, !tbaa !27
  store { i64, ptr } %t183, ptr %l83, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  %t184 = load { i64, ptr }, ptr %l83, !tbaa !27
  store { i64, ptr } %t184, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local { i64, ptr } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eCtorParams(ptr %v0, ptr %v1, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %lp2 = alloca ptr
  %l3 = alloca ptr
  %l4 = alloca ptr
  %l5 = alloca ptr
  %l6 = alloca ptr
  %l11 = alloca i32
  %l17 = alloca ptr
  %l21 = alloca i32
  %l22 = alloca ptr
  %l25 = alloca i1
  %l33 = alloca ptr
  %l34 = alloca i1
  %l41 = alloca ptr
  %l42 = alloca i1
  %rv = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 0, i64 8)
  store ptr %t1, ptr %lp2
  %t3 = load ptr, ptr %lp2
  store [0 x ptr] zeroinitializer, ptr %t3
  %t4 = load ptr, ptr %l0, !tbaa !29
  %t6 = getelementptr %"compiler/generic:Program", ptr %t4, i32 0, i32 2
  %t7 = load i32, ptr %l1, !tbaa !23
  %t10 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t6, i32 %t7)
  store i32 %t10, ptr %l11
  br label %bb1
bb1:
  %t11 = load i32, ptr %l11, !range !{i32 0, i32 33}
  %t13 = trunc i64 18 to i32
  %t14 = icmp eq i32 %t11, %t13
  %t16 = xor i1 %t14, true
  br i1 %t16, label %bb2, label %bb3
bb2:
  %t18 = load ptr, ptr %lp2
  %t20 = insertvalue { i64, ptr } undef, i64 0, 0
  %t21 = insertvalue { i64, ptr } %t20, ptr %t18, 1
  store { i64, ptr } %t21, ptr %rv
  br label %ret
bb3:
  br label %bb4
bb4:
  %t23 = load ptr, ptr %l0, !tbaa !29
  store ptr %t23, ptr %l17, !tbaa !29
  %t24 = load ptr, ptr %l0, !tbaa !29
  %t26 = getelementptr %"compiler/generic:Program", ptr %t24, i32 0, i32 2
  %t27 = load i32, ptr %l1, !tbaa !23
  %t30 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %t26, i32 %t27)
  store i32 %t30, ptr %l21
  br label %bb5
bb5:
  %t31 = load ptr, ptr %l17, !tbaa !29
  %t32 = load i32, ptr %l21, !tbaa !23
  %t33 = call ptr @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2etypeDecl(ptr %v0, ptr %v0, ptr %t31, i32 %t32)
  store ptr %t33, ptr %l22
  br label %bb6
bb6:
  %t34 = load ptr, ptr %l22, !tbaa !29
  store ptr %t34, ptr %l3, !tbaa !29
  %t35 = load ptr, ptr %l3, !tbaa !29
  %t37 = icmp eq ptr %t35, null
  br i1 %t37, label %bb7, label %bb8
bb7:
  store i1 true, ptr %l25, !tbaa !21
  br label %bb9
bb8:
  %t39 = load ptr, ptr %l3, !tbaa !29
  %t41 = getelementptr %"compiler/ast:TypeDecl", ptr %t39, i32 0, i32 3
  %t42 = load ptr, ptr %t41, !tbaa !29
  %t44 = icmp eq ptr %t42, null
  store i1 %t44, ptr %l25, !tbaa !21
  br label %bb9
bb9:
  %t46 = load i1, ptr %l25, !tbaa !21
  br i1 %t46, label %bb10, label %bb11
bb10:
  %t47 = load ptr, ptr %lp2
  %t49 = insertvalue { i64, ptr } undef, i64 0, 0
  %t50 = insertvalue { i64, ptr } %t49, ptr %t47, 1
  store { i64, ptr } %t50, ptr %rv
  br label %ret
bb11:
  br label %bb12
bb12:
  %t52 = load ptr, ptr %l3, !tbaa !29
  %t54 = getelementptr %"compiler/ast:TypeDecl", ptr %t52, i32 0, i32 3
  %t55 = load ptr, ptr %t54, !tbaa !29
  store ptr %t55, ptr %l4, !tbaa !29
  %t57 = load ptr, ptr %l4, !tbaa !29
  store ptr %t57, ptr %l33, !tbaa !29
  store i1 false, ptr %l34, !tbaa !21
  %t58 = load ptr, ptr %l33, !tbaa !29
  %t59 = icmp ne ptr %t58, null
  br i1 %t59, label %bb13, label %bb14
bb13:
  %t61 = load ptr, ptr %l33, !tbaa !29
  %t62 = load i64, ptr %t61, !range !{i64 0, i64 5}
  %t64 = icmp eq i64 %t62, 0
  store i1 %t64, ptr %l34, !tbaa !21
  br label %bb14
bb14:
  %t65 = load i1, ptr %l34, !tbaa !21
  br i1 %t65, label %bb15, label %bb16
bb15:
  %t66 = load ptr, ptr %l4, !tbaa !29
  %t68 = getelementptr { i64, [6 x i64] }, ptr %t66, i32 0, i32 1
  %t69 = getelementptr { ptr }, ptr %t68, i32 0, i32 0
  %t70 = load ptr, ptr %t69
  store ptr %t70, ptr %l5, !tbaa !29
  br label %bb17
bb16:
  br label %bb18
bb17:
  %t72 = load ptr, ptr %l5, !tbaa !29
  %t74 = getelementptr %"compiler/ast:StructBody", ptr %t72, i32 0, i32 0
  %t75 = load { i64, ptr }, ptr %t74, !tbaa !27
  store { i64, ptr } %t75, ptr %rv
  br label %ret
bb18:
  %t77 = load ptr, ptr %l4, !tbaa !29
  store ptr %t77, ptr %l41, !tbaa !29
  store i1 false, ptr %l42, !tbaa !21
  %t78 = load ptr, ptr %l41, !tbaa !29
  %t79 = icmp ne ptr %t78, null
  br i1 %t79, label %bb19, label %bb20
bb19:
  %t81 = load ptr, ptr %l41, !tbaa !29
  %t82 = load i64, ptr %t81, !range !{i64 0, i64 5}
  %t84 = icmp eq i64 %t82, 3
  store i1 %t84, ptr %l42, !tbaa !21
  br label %bb20
bb20:
  %t85 = load i1, ptr %l42, !tbaa !21
  br i1 %t85, label %bb21, label %bb22
bb21:
  %t86 = load ptr, ptr %l4, !tbaa !29
  %t88 = getelementptr { i64, [6 x i64] }, ptr %t86, i32 0, i32 1
  %t89 = getelementptr { ptr, ptr }, ptr %t88, i32 0, i32 1
  %t90 = load ptr, ptr %t89
  store ptr %t90, ptr %l6, !tbaa !29
  br label %bb23
bb22:
  br label %bb27
bb23:
  %t92 = load ptr, ptr %l6, !tbaa !29
  %t94 = icmp eq ptr %t92, null
  %t96 = xor i1 %t94, true
  br i1 %t96, label %bb24, label %bb25
bb24:
  %t98 = load ptr, ptr %l6, !tbaa !29
  %t100 = getelementptr %"compiler/ast:Func", ptr %t98, i32 0, i32 3
  %t101 = load ptr, ptr %t100, !tbaa !29
  %t103 = getelementptr %"compiler/ast:Sig", ptr %t101, i32 0, i32 0
  %t104 = load { i64, ptr }, ptr %t103, !tbaa !27
  store { i64, ptr } %t104, ptr %rv
  br label %ret
bb25:
  br label %bb26
bb26:
  br label %bb32
bb27:
  br i1 true, label %bb28, label %bb29
bb28:
  br label %bb30
bb29:
  br label %bb31
bb30:
  br label %bb32
bb31:
  call void @__olang_check_failed(ptr @olang_loc_41496c53cef75c6_a63bcc71a26a0752)
  unreachable
bb32:
  %t106 = load ptr, ptr %lp2
  %t108 = insertvalue { i64, ptr } undef, i64 0, 0
  %t109 = insertvalue { i64, ptr } %t108, ptr %t106, 1
  store { i64, ptr } %t109, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
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

define dso_local i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eDeclModule(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l6 = alloca i64
  %rv = alloca i64
  br label %start
start:
  br label %bb0
bb0:
  %t3 = getelementptr %"compiler/generic:Program", ptr %a0, i32 0, i32 12
  %t6 = sext i32 %a1 to i64
  %t9 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t3, i64 %t6)
  store i64 %t9, ptr %l6
  br label %bb1
bb1:
  %t10 = load i64, ptr %l6, !tbaa !24
  store i64 %t10, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eDeclWord(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca ptr
  %l6 = alloca i32
  %l11 = alloca ptr
  %l15 = alloca i32
  %l16 = alloca ptr
  %l20 = alloca i32
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
  store i32 %t7, ptr %l6
  br label %bb1
bb1:
  %t8 = load i32, ptr %l6, !range !{i32 0, i32 33}
  %t10 = trunc i64 18 to i32
  %t11 = icmp eq i32 %t8, %t10
  %t13 = xor i1 %t11, true
  br i1 %t13, label %bb2, label %bb3
bb2:
  store i32 0, ptr %rv
  br label %ret
bb3:
  br label %bb4
bb4:
  %t16 = load ptr, ptr %l0, !tbaa !29
  store ptr %t16, ptr %l11, !tbaa !29
  %t17 = load ptr, ptr %l0, !tbaa !29
  %t19 = getelementptr %"compiler/generic:Program", ptr %t17, i32 0, i32 2
  %t20 = load i32, ptr %l1, !tbaa !23
  %t23 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %t19, i32 %t20)
  store i32 %t23, ptr %l15
  br label %bb5
bb5:
  %t24 = load ptr, ptr %l11, !tbaa !29
  %t25 = load i32, ptr %l15, !tbaa !23
  %t26 = call ptr @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2etypeDecl(ptr %v0, ptr %v0, ptr %t24, i32 %t25)
  store ptr %t26, ptr %l16
  br label %bb6
bb6:
  %t27 = load ptr, ptr %l16, !tbaa !29
  store ptr %t27, ptr %l2, !tbaa !29
  %t28 = load ptr, ptr %l2, !tbaa !29
  %t30 = icmp eq ptr %t28, null
  %t32 = xor i1 %t30, true
  br i1 %t32, label %bb7, label %bb8
bb7:
  %t34 = load ptr, ptr %l2, !tbaa !29
  %t36 = getelementptr %"compiler/ast:TypeDecl", ptr %t34, i32 0, i32 5
  %t37 = load i32, ptr %t36, !range !{i32 0, i32 3}
  store i32 %t37, ptr %l20
  br label %bb9
bb8:
  store i32 0, ptr %l20
  br label %bb9
bb9:
  %t40 = load i32, ptr %l20, !range !{i32 0, i32 3}
  store i32 %t40, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eDeclaredFunc(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca ptr
  %l3 = alloca ptr
  %l4 = alloca ptr
  %l5 = alloca i32
  %l9 = alloca i32
  %l13 = alloca i1
  %l15 = alloca ptr
  %l19 = alloca i32
  %l20 = alloca i32
  %l25 = alloca ptr
  %l29 = alloca i32
  %l30 = alloca ptr
  %l33 = alloca i1
  %l40 = alloca ptr
  %l41 = alloca i1
  %l47 = alloca i1
  %l53 = alloca i1
  %l59 = alloca i32
  %l63 = alloca i32
  %l69 = alloca ptr
  %l73 = alloca i32
  %l77 = alloca i32
  %l81 = alloca i32
  %l85 = alloca i32
  %l89 = alloca i64
  %l90 = alloca i32
  %l94 = alloca i64
  %l95 = alloca i32
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
  store i32 %t7, ptr %l9
  br label %bb1
bb1:
  %t8 = load i32, ptr %l9, !range !{i32 0, i32 33}
  %t10 = trunc i64 18 to i32
  %t11 = icmp eq i32 %t8, %t10
  %t13 = xor i1 %t11, true
  br i1 %t13, label %bb2, label %bb3
bb2:
  store i1 true, ptr %l13, !tbaa !21
  br label %bb6
bb3:
  %t15 = load ptr, ptr %l0, !tbaa !29
  %t17 = getelementptr %"compiler/generic:Program", ptr %t15, i32 0, i32 2
  store ptr %t17, ptr %l15, !tbaa !29
  %t18 = load ptr, ptr %l0, !tbaa !29
  %t20 = getelementptr %"compiler/generic:Program", ptr %t18, i32 0, i32 2
  %t21 = load i32, ptr %l1, !tbaa !23
  %t24 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %t20, i32 %t21)
  store i32 %t24, ptr %l19
  br label %bb4
bb4:
  %t25 = load ptr, ptr %l15, !tbaa !29
  %t26 = load i32, ptr %l19, !tbaa !23
  %t27 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclKindOf(ptr %v0, ptr %t25, i32 %t26)
  store i32 %t27, ptr %l20
  br label %bb5
bb5:
  %t28 = load i32, ptr %l20, !range !{i32 0, i32 6}
  %t30 = trunc i64 4 to i32
  %t31 = icmp eq i32 %t28, %t30
  %t33 = xor i1 %t31, true
  store i1 %t33, ptr %l13, !tbaa !21
  br label %bb6
bb6:
  %t35 = load i1, ptr %l13, !tbaa !21
  br i1 %t35, label %bb7, label %bb8
bb7:
  %t36 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  store i32 %t36, ptr %rv
  br label %ret
bb8:
  br label %bb9
bb9:
  %t38 = load ptr, ptr %l0, !tbaa !29
  store ptr %t38, ptr %l25, !tbaa !29
  %t39 = load ptr, ptr %l0, !tbaa !29
  %t41 = getelementptr %"compiler/generic:Program", ptr %t39, i32 0, i32 2
  %t42 = load i32, ptr %l1, !tbaa !23
  %t45 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %t41, i32 %t42)
  store i32 %t45, ptr %l29
  br label %bb10
bb10:
  %t46 = load ptr, ptr %l25, !tbaa !29
  %t47 = load i32, ptr %l29, !tbaa !23
  %t48 = call ptr @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2etypeDecl(ptr %v0, ptr %v0, ptr %t46, i32 %t47)
  store ptr %t48, ptr %l30
  br label %bb11
bb11:
  %t49 = load ptr, ptr %l30, !tbaa !29
  store ptr %t49, ptr %l2, !tbaa !29
  %t50 = load ptr, ptr %l2, !tbaa !29
  %t52 = icmp eq ptr %t50, null
  br i1 %t52, label %bb12, label %bb13
bb12:
  store i1 true, ptr %l33, !tbaa !21
  br label %bb14
bb13:
  %t54 = load ptr, ptr %l2, !tbaa !29
  %t56 = getelementptr %"compiler/ast:TypeDecl", ptr %t54, i32 0, i32 3
  %t57 = load ptr, ptr %t56, !tbaa !29
  %t59 = icmp eq ptr %t57, null
  store i1 %t59, ptr %l33, !tbaa !21
  br label %bb14
bb14:
  %t61 = load i1, ptr %l33, !tbaa !21
  br i1 %t61, label %bb15, label %bb16
bb15:
  %t62 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  store i32 %t62, ptr %rv
  br label %ret
bb16:
  br label %bb17
bb17:
  %t64 = load ptr, ptr %l2, !tbaa !29
  %t66 = getelementptr %"compiler/ast:TypeDecl", ptr %t64, i32 0, i32 3
  %t67 = load ptr, ptr %t66, !tbaa !29
  store ptr %t67, ptr %l3, !tbaa !29
  %t69 = load ptr, ptr %l3, !tbaa !29
  store ptr %t69, ptr %l40, !tbaa !29
  store i1 false, ptr %l41, !tbaa !21
  %t70 = load ptr, ptr %l40, !tbaa !29
  %t71 = icmp ne ptr %t70, null
  br i1 %t71, label %bb18, label %bb19
bb18:
  %t73 = load ptr, ptr %l40, !tbaa !29
  %t74 = load i64, ptr %t73, !range !{i64 0, i64 5}
  %t76 = icmp eq i64 %t74, 3
  store i1 %t76, ptr %l41, !tbaa !21
  br label %bb19
bb19:
  %t77 = load i1, ptr %l41, !tbaa !21
  br i1 %t77, label %bb20, label %bb21
bb20:
  %t78 = load ptr, ptr %l3, !tbaa !29
  %t80 = getelementptr { i64, [6 x i64] }, ptr %t78, i32 0, i32 1
  %t81 = getelementptr { ptr, ptr }, ptr %t80, i32 0, i32 0
  %t82 = load ptr, ptr %t81
  store ptr %t82, ptr %l4, !tbaa !29
  br label %bb22
bb21:
  br label %bb27
bb22:
  %t84 = load ptr, ptr %l4, !tbaa !29
  %t86 = call i1 @compiler_2fast_2ecompiler_2fast_3aTypeRef_2eIsFunc(ptr %v0, ptr %t84)
  store i1 %t86, ptr %l47
  br label %bb23
bb23:
  %t87 = load i1, ptr %l47, !tbaa !21
  %t88 = xor i1 %t87, true
  br i1 %t88, label %bb24, label %bb25
bb24:
  %t90 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  store i32 %t90, ptr %rv
  br label %ret
bb25:
  br label %bb26
bb26:
  br label %bb32
bb27:
  br i1 true, label %bb28, label %bb29
bb28:
  br label %bb30
bb29:
  br label %bb31
bb30:
  %t92 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  store i32 %t92, ptr %rv
  br label %ret
bb31:
  call void @__olang_check_failed(ptr @olang_loc_793add10df93614a_995dc047d9acd1be)
  unreachable
bb32:
  %t94 = load ptr, ptr %l0, !tbaa !29
  %t95 = load i32, ptr %l1, !tbaa !23
  %t98 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eBody(ptr %v0, ptr %t94, i32 %t95)
  store i1 %t98, ptr %l53
  br label %bb33
bb33:
  %t99 = load i1, ptr %l53, !tbaa !21
  %t100 = xor i1 %t99, true
  br i1 %t100, label %bb34, label %bb35
bb34:
  %t102 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  store i32 %t102, ptr %rv
  br label %ret
bb35:
  br label %bb36
bb36:
  %t104 = load ptr, ptr %l0, !tbaa !29
  %t106 = getelementptr %"compiler/generic:Program", ptr %t104, i32 0, i32 2
  %t107 = load i32, ptr %l1, !tbaa !23
  %t110 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eBase(ptr %v0, ptr %t106, i32 %t107)
  store i32 %t110, ptr %l59
  br label %bb37
bb37:
  %t111 = load i32, ptr %l59, !tbaa !23
  store i32 %t111, ptr %l5, !tbaa !23
  %t112 = load ptr, ptr %l0, !tbaa !29
  %t114 = getelementptr %"compiler/generic:Program", ptr %t112, i32 0, i32 2
  %t115 = load i32, ptr %l5, !tbaa !23
  %t118 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t114, i32 %t115)
  store i32 %t118, ptr %l63
  br label %bb38
bb38:
  %t119 = load i32, ptr %l63, !range !{i32 0, i32 33}
  %t121 = trunc i64 21 to i32
  %t122 = icmp eq i32 %t119, %t121
  %t124 = xor i1 %t122, true
  br i1 %t124, label %bb39, label %bb40
bb39:
  %t126 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  store i32 %t126, ptr %rv
  br label %ret
bb40:
  br label %bb41
bb41:
  %t128 = load ptr, ptr %l0, !tbaa !29
  %t130 = getelementptr %"compiler/generic:Program", ptr %t128, i32 0, i32 2
  store ptr %t130, ptr %l69, !tbaa !29
  %t131 = load ptr, ptr %l0, !tbaa !29
  %t133 = getelementptr %"compiler/generic:Program", ptr %t131, i32 0, i32 2
  %t134 = load i32, ptr %l5, !tbaa !23
  %t137 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParams(ptr %v0, ptr %t133, i32 %t134)
  store i32 %t137, ptr %l73
  br label %bb42
bb42:
  %t138 = load ptr, ptr %l0, !tbaa !29
  %t140 = getelementptr %"compiler/generic:Program", ptr %t138, i32 0, i32 2
  %t141 = load i32, ptr %l5, !tbaa !23
  %t144 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eResult(ptr %v0, ptr %t140, i32 %t141)
  store i32 %t144, ptr %l77
  br label %bb43
bb43:
  %t145 = load ptr, ptr %l0, !tbaa !29
  %t147 = getelementptr %"compiler/generic:Program", ptr %t145, i32 0, i32 2
  %t148 = load i32, ptr %l5, !tbaa !23
  %t151 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrors(ptr %v0, ptr %t147, i32 %t148)
  store i32 %t151, ptr %l81
  br label %bb44
bb44:
  %t152 = load ptr, ptr %l0, !tbaa !29
  %t154 = getelementptr %"compiler/generic:Program", ptr %t152, i32 0, i32 2
  %t155 = load i32, ptr %l5, !tbaa !23
  %t158 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eScopesOf(ptr %v0, ptr %t154, i32 %t155)
  store i32 %t158, ptr %l85
  br label %bb45
bb45:
  %t159 = load ptr, ptr %l0, !tbaa !29
  %t161 = getelementptr %"compiler/generic:Program", ptr %t159, i32 0, i32 2
  %t162 = load i32, ptr %l5, !tbaa !23
  %t165 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eNamesIdOf(ptr %v0, ptr %t161, i32 %t162)
  store i64 %t165, ptr %l89
  br label %bb46
bb46:
  %t166 = load i32, ptr %l1, !tbaa !23
  store i32 %t166, ptr %l90, !tbaa !23
  %t167 = load ptr, ptr %l0, !tbaa !29
  %t169 = getelementptr %"compiler/generic:Program", ptr %t167, i32 0, i32 2
  %t170 = load i32, ptr %l5, !tbaa !23
  %t173 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePromisesOf(ptr %v0, ptr %t169, i32 %t170)
  store i64 %t173, ptr %l94
  br label %bb47
bb47:
  %t174 = load ptr, ptr %l69, !tbaa !29
  %t175 = load i32, ptr %l73, !tbaa !23
  %t176 = load i32, ptr %l77, !tbaa !23
  %t177 = load i32, ptr %l81, !tbaa !23
  %t178 = load i32, ptr %l85, !tbaa !23
  %t179 = load i64, ptr %l89, !tbaa !24
  %t180 = load i32, ptr %l90, !tbaa !23
  %t181 = load i64, ptr %l94, !tbaa !24
  %t182 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eFunc(ptr %v0, ptr %t174, i32 %t175, i32 %t176, i32 %t177, i32 %t178, i64 %t179, i1 false, i32 %t180, i64 %t181)
  store i32 %t182, ptr %l95
  br label %bb48
bb48:
  %t183 = load i32, ptr %l95, !tbaa !23
  store i32 %t183, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
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

define dso_local %"compiler/generic:Desc" @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eDescOf(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca %"compiler/generic:Desc"
  %l3 = alloca i32
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
  %l17 = alloca i64
  %l18 = alloca i64
  %l19 = alloca i64
  %l23 = alloca %"compiler/generic:Desc"
  %l27 = alloca i1
  %l31 = alloca i32
  %l39 = alloca i32
  %l42 = alloca ptr
  %l46 = alloca i64
  %l47 = alloca ptr
  %l50 = alloca i1
  %l54 = alloca ptr
  %l58 = alloca i32
  %l59 = alloca { i64, ptr }
  %l67 = alloca i64
  %l70 = alloca i64
  %l88 = alloca i32
  %l91 = alloca i32
  %l98 = alloca i64
  %l101 = alloca i64
  %l121 = alloca { i64, ptr }
  %l124 = alloca i32
  %l136 = alloca { i64, ptr }
  %l138 = alloca i64
  %l139 = alloca i64
  %l143 = alloca i64
  %l144 = alloca i32
  %l149 = alloca { i64, ptr }
  %l153 = alloca %"compiler/generic:Desc"
  %l157 = alloca i1
  %l161 = alloca i64
  %l164 = alloca { i64, ptr }
  %l166 = alloca i64
  %l169 = alloca { i64, ptr }
  %l174 = alloca i64
  %l176 = alloca { i64, ptr }
  %l180 = alloca %"compiler/generic:Desc"
  %s0 = alloca %olang.scope
  %s5 = alloca %olang.scope
  %s11 = alloca %olang.scope
  %rv = alloca %"compiler/generic:Desc"
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load i64, ptr @G_2ecompiler_2fgeneric_2eDescNone, !tbaa !24
  %t2 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t5 = call %"compiler/generic:Desc" @compiler_2fgeneric_3aDesc_2ector(ptr %s0, i64 %t1, i32 %t2, i64 0, i64 0)
  store %"compiler/generic:Desc" %t5, ptr %l23
  br label %bb1
bb1:
  %t6 = load %"compiler/generic:Desc", ptr %l23
  store %"compiler/generic:Desc" %t6, ptr %l2
  %t7 = load i32, ptr %l1, !tbaa !23
  %t8 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t11 = icmp eq i32 %t7, %t8
  br i1 %t11, label %bb2, label %bb3
bb2:
  store i1 true, ptr %l27, !tbaa !21
  br label %bb5
bb3:
  %t13 = load ptr, ptr %l0, !tbaa !29
  %t15 = getelementptr %"compiler/generic:Program", ptr %t13, i32 0, i32 2
  %t16 = load i32, ptr %l1, !tbaa !23
  %t19 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t15, i32 %t16)
  store i32 %t19, ptr %l31
  br label %bb4
bb4:
  %t20 = load i32, ptr %l31, !range !{i32 0, i32 33}
  %t22 = trunc i64 18 to i32
  %t23 = icmp eq i32 %t20, %t22
  %t25 = xor i1 %t23, true
  store i1 %t25, ptr %l27, !tbaa !21
  br label %bb5
bb5:
  %t27 = load i1, ptr %l27, !tbaa !21
  br i1 %t27, label %bb6, label %bb7
bb6:
  %t28 = load %"compiler/generic:Desc", ptr %l2
  call void @__olang_scope_close(ptr %s0)
  store %"compiler/generic:Desc" %t28, ptr %rv
  br label %ret
bb7:
  br label %bb8
bb8:
  %t30 = load ptr, ptr %l0, !tbaa !29
  %t32 = getelementptr %"compiler/generic:Program", ptr %t30, i32 0, i32 2
  %t33 = load i32, ptr %l1, !tbaa !23
  %t36 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %t32, i32 %t33)
  store i32 %t36, ptr %l39
  br label %bb9
bb9:
  %t37 = load i32, ptr %l39, !tbaa !23
  store i32 %t37, ptr %l3, !tbaa !23
  %t38 = load ptr, ptr %l0, !tbaa !29
  %t40 = getelementptr %"compiler/generic:Program", ptr %t38, i32 0, i32 0
  %t41 = load ptr, ptr %t40, !tbaa !29
  %t43 = getelementptr %"compiler/load:Loader", ptr %t41, i32 0, i32 10
  store ptr %t43, ptr %l42, !tbaa !29
  %t44 = load ptr, ptr %l0, !tbaa !29
  %t46 = getelementptr %"compiler/generic:Program", ptr %t44, i32 0, i32 2
  %t47 = load i32, ptr %l3, !tbaa !23
  %t50 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclModule(ptr %v0, ptr %t46, i32 %t47)
  store i64 %t50, ptr %l46
  br label %bb10
bb10:
  %t51 = load ptr, ptr %l42, !tbaa !29
  %t52 = load i64, ptr %l46, !tbaa !24
  %t53 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H7bcf2aeb09afa796f4333e6ec8c3f63f(ptr %v0, ptr %v0, ptr %t51, i64 %t52)
  store ptr %t53, ptr %l47
  br label %bb11
bb11:
  %t54 = load ptr, ptr %l47, !tbaa !29
  %t56 = getelementptr %"compiler/load:Module", ptr %t54, i32 0, i32 2
  %t57 = load { i64, ptr }, ptr %t56, !tbaa !27
  %t59 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t57, { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d13, i32 0, i32 1) })
  store i1 %t59, ptr %l50
  br label %bb12
bb12:
  %t60 = load i1, ptr %l50, !tbaa !21
  %t61 = xor i1 %t60, true
  br i1 %t61, label %bb13, label %bb14
bb13:
  %t63 = load %"compiler/generic:Desc", ptr %l2
  call void @__olang_scope_close(ptr %s0)
  store %"compiler/generic:Desc" %t63, ptr %rv
  br label %ret
bb14:
  br label %bb15
bb15:
  %t65 = load ptr, ptr %l0, !tbaa !29
  %t67 = getelementptr %"compiler/generic:Program", ptr %t65, i32 0, i32 2
  store ptr %t67, ptr %l54, !tbaa !29
  %t68 = load ptr, ptr %l0, !tbaa !29
  %t70 = getelementptr %"compiler/generic:Program", ptr %t68, i32 0, i32 2
  %t71 = load i32, ptr %l1, !tbaa !23
  %t74 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eArgs(ptr %v0, ptr %t70, i32 %t71)
  store i32 %t74, ptr %l58
  br label %bb16
bb16:
  %t75 = load ptr, ptr %l54, !tbaa !29
  %t76 = load i32, ptr %l58, !tbaa !23
  %t77 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t75, i32 %t76)
  store { i64, ptr } %t77, ptr %l59
  br label %bb17
bb17:
  %t78 = load { i64, ptr }, ptr %l59, !tbaa !27
  store { i64, ptr } %t78, ptr %l4, !tbaa !27
  %t79 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t81 = extractvalue { i64, ptr } %t79, 0
  %t83 = icmp slt i64 %t81, 2
  br i1 %t83, label %bb18, label %bb19
bb18:
  %t85 = load %"compiler/generic:Desc", ptr %l2
  call void @__olang_scope_close(ptr %s0)
  store %"compiler/generic:Desc" %t85, ptr %rv
  br label %ret
bb19:
  br label %bb20
bb20:
  store i64 1, ptr %l5, !tbaa !24
  store i64 6, ptr %l6, !tbaa !24
  store i64 1, ptr %l7, !tbaa !24
  %t87 = load i64, ptr %l6, !tbaa !24
  %t88 = load i64, ptr %l5, !tbaa !24
  %t91 = icmp sgt i64 %t87, %t88
  br i1 %t91, label %bb21, label %bb22
bb21:
  %t93 = load i64, ptr %l7, !tbaa !24
  %t95 = icmp sgt i64 %t93, 0
  br i1 %t95, label %bb23, label %bb24
bb22:
  store i64 0, ptr %l67, !tbaa !24
  br label %bb26
bb23:
  %t97 = load i64, ptr %l6, !tbaa !24
  %t98 = load i64, ptr %l5, !tbaa !24
  %t101 = sub i64 %t97, %t98
  %t102 = load i64, ptr %l7, !tbaa !24
  %t105 = add i64 %t101, %t102
  %t107 = sub i64 %t105, 1
  %t108 = load i64, ptr %l7, !tbaa !24
  %t111 = sdiv i64 %t107, %t108
  store i64 %t111, ptr %l70, !tbaa !24
  br label %bb25
bb24:
  store i64 0, ptr %l70, !tbaa !24
  br label %bb25
bb25:
  %t113 = load i64, ptr %l70, !tbaa !24
  store i64 %t113, ptr %l67, !tbaa !24
  br label %bb26
bb26:
  %t114 = load i64, ptr %l67, !tbaa !24
  store i64 %t114, ptr %l8, !tbaa !24
  store i64 0, ptr %l9, !tbaa !24
  br label %bb27
bb27:
  store %olang.scope zeroinitializer, ptr %s5
  %t115 = load i64, ptr %l9, !tbaa !24
  %t116 = load i64, ptr %l8, !tbaa !24
  %t119 = icmp slt i64 %t115, %t116
  %t121 = xor i1 %t119, true
  br i1 %t121, label %bb28, label %bb29
bb28:
  call void @__olang_scope_close(ptr %s5)
  br label %bb73
bb29:
  br label %bb30
bb30:
  %t123 = load i64, ptr %l5, !tbaa !24
  %t124 = load i64, ptr %l9, !tbaa !24
  %t125 = load i64, ptr %l7, !tbaa !24
  %t128 = mul i64 %t124, %t125
  %t131 = add i64 %t123, %t128
  store i64 %t131, ptr %l10, !tbaa !24
  %t133 = load i32, ptr %l3, !tbaa !23
  store i32 %t133, ptr %l88, !tbaa !23
  %t134 = load ptr, ptr %l0, !tbaa !29
  %t135 = load i64, ptr %l10, !tbaa !24
  %t138 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2edescDecl(ptr %v0, ptr %t134, i64 %t135)
  store i32 %t138, ptr %l91
  br label %bb31
bb31:
  %t139 = load i32, ptr %l88, !tbaa !23
  %t140 = load i32, ptr %l91, !tbaa !23
  %t141 = icmp ne i32 %t139, %t140
  br i1 %t141, label %bb32, label %bb33
bb32:
  call void @__olang_scope_close(ptr %s5)
  br label %bb72
bb33:
  br label %bb34
bb34:
  store i64 1, ptr %l11, !tbaa !24
  %t143 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t145 = extractvalue { i64, ptr } %t143, 0
  store i64 %t145, ptr %l12, !tbaa !24
  store i64 1, ptr %l13, !tbaa !24
  %t147 = load i64, ptr %l12, !tbaa !24
  %t148 = load i64, ptr %l11, !tbaa !24
  %t151 = icmp sgt i64 %t147, %t148
  br i1 %t151, label %bb35, label %bb36
bb35:
  %t153 = load i64, ptr %l13, !tbaa !24
  %t155 = icmp sgt i64 %t153, 0
  br i1 %t155, label %bb37, label %bb38
bb36:
  store i64 0, ptr %l98, !tbaa !24
  br label %bb40
bb37:
  %t157 = load i64, ptr %l12, !tbaa !24
  %t158 = load i64, ptr %l11, !tbaa !24
  %t161 = sub i64 %t157, %t158
  %t162 = load i64, ptr %l13, !tbaa !24
  %t165 = add i64 %t161, %t162
  %t167 = sub i64 %t165, 1
  %t168 = load i64, ptr %l13, !tbaa !24
  %t171 = sdiv i64 %t167, %t168
  store i64 %t171, ptr %l101, !tbaa !24
  br label %bb39
bb38:
  store i64 0, ptr %l101, !tbaa !24
  br label %bb39
bb39:
  %t173 = load i64, ptr %l101, !tbaa !24
  store i64 %t173, ptr %l98, !tbaa !24
  br label %bb40
bb40:
  %t174 = load i64, ptr %l98, !tbaa !24
  store i64 %t174, ptr %l14, !tbaa !24
  store i64 0, ptr %l15, !tbaa !24
  br label %bb41
bb41:
  %t175 = load i64, ptr %l15, !tbaa !24
  %t176 = load i64, ptr %l14, !tbaa !24
  %t179 = icmp slt i64 %t175, %t176
  %t181 = xor i1 %t179, true
  br i1 %t181, label %bb42, label %bb43
bb42:
  br label %bb50
bb43:
  br label %bb44
bb44:
  %t183 = load i64, ptr %l11, !tbaa !24
  %t184 = load i64, ptr %l15, !tbaa !24
  %t185 = load i64, ptr %l13, !tbaa !24
  %t188 = mul i64 %t184, %t185
  %t191 = add i64 %t183, %t188
  %t193 = load ptr, ptr %l0, !tbaa !29
  %t195 = getelementptr %"compiler/generic:Program", ptr %t193, i32 0, i32 2
  %t196 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t196, ptr %l121, !tbaa !27
  %t199 = getelementptr { i64, ptr }, ptr %l121, i32 0, i32 1
  %t200 = load ptr, ptr %t199, !tbaa !27
  %t201 = getelementptr i32, ptr %t200, i64 %t191
  %t202 = load i32, ptr %t201, !tbaa !33
  %t205 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t195, i32 %t202)
  store i32 %t205, ptr %l124
  br label %bb45
bb45:
  %t206 = load i32, ptr %l124, !range !{i32 0, i32 33}
  %t208 = trunc i64 26 to i32
  %t209 = icmp eq i32 %t206, %t208
  %t211 = xor i1 %t209, true
  br i1 %t211, label %bb46, label %bb47
bb46:
  %t213 = load %"compiler/generic:Desc", ptr %l2
  call void @__olang_scope_close(ptr %s5)
  call void @__olang_scope_close(ptr %s0)
  store %"compiler/generic:Desc" %t213, ptr %rv
  br label %ret
bb47:
  br label %bb48
bb48:
  br label %bb49
bb49:
  %t215 = load i64, ptr %l15, !tbaa !24
  %t217 = add i64 %t215, 1
  store i64 %t217, ptr %l15, !tbaa !24
  br label %bb41
bb50:
  %t219 = load i64, ptr %l10, !tbaa !24
  %t220 = load i64, ptr @G_2ecompiler_2fgeneric_2eDescFunc, !tbaa !24
  %t223 = icmp eq i64 %t219, %t220
  br i1 %t223, label %bb51, label %bb52
bb51:
  store %olang.scope zeroinitializer, ptr %s11
  %t225 = load ptr, ptr %l0, !tbaa !29
  %t227 = getelementptr %"compiler/generic:Program", ptr %t225, i32 0, i32 2
  %t228 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t228, ptr %l136, !tbaa !27
  %t229 = getelementptr { i64, ptr }, ptr %l136, i32 0, i32 1
  %t230 = load ptr, ptr %t229, !tbaa !27
  %t231 = getelementptr i32, ptr %t230, i64 1
  %t232 = load i32, ptr %t231, !tbaa !33
  %t235 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eConstValue(ptr %v0, ptr %t227, i32 %t232)
  store i64 %t235, ptr %l138
  br label %bb53
bb52:
  br label %bb62
bb53:
  %t236 = load i64, ptr %l138, !tbaa !24
  store i64 %t236, ptr %l17, !tbaa !24
  %t237 = load ptr, ptr %l0, !tbaa !29
  %t239 = getelementptr %"compiler/generic:Program", ptr %t237, i32 0, i32 31
  %t240 = load i64, ptr %l17, !tbaa !24
  %t243 = call { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2eGet_3cI64_2c_20I64_3e(ptr %v0, ptr %t239, i64 %t240)
  %t244 = extractvalue { i32, i64 } %t243, 1
  %t245 = extractvalue { i32, i64 } %t243, 0
  store i32 %t245, ptr %l144
  %t246 = icmp ne i32 %t245, 0
  br i1 %t246, label %bb55, label %ok.247, !prof !99
ok.247:
  store i64 %t244, ptr %l143
  br label %bb54
bb54:
  %t248 = load i64, ptr %l143, !tbaa !24
  store i64 %t248, ptr %l139, !tbaa !24
  br label %bb57
bb55:
  br label %bb56
bb56:
  store i64 -1, ptr %l139, !tbaa !24
  br label %bb57
bb57:
  %t249 = load i64, ptr %l139, !tbaa !24
  store i64 %t249, ptr %l18, !tbaa !24
  %t250 = load i64, ptr %l18, !tbaa !24
  %t252 = icmp slt i64 %t250, 0
  br i1 %t252, label %bb58, label %bb59
bb58:
  %t254 = load %"compiler/generic:Desc", ptr %l2
  call void @__olang_scope_close(ptr %s11)
  call void @__olang_scope_close(ptr %s5)
  call void @__olang_scope_close(ptr %s0)
  store %"compiler/generic:Desc" %t254, ptr %rv
  br label %ret
bb59:
  br label %bb60
bb60:
  %t256 = load i64, ptr %l10, !tbaa !24
  %t257 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t257, ptr %l149, !tbaa !27
  %t258 = getelementptr { i64, ptr }, ptr %l149, i32 0, i32 1
  %t259 = load ptr, ptr %t258, !tbaa !27
  %t260 = getelementptr i32, ptr %t259, i64 0
  %t261 = load i32, ptr %t260, !tbaa !33
  %t262 = load i64, ptr %l18, !tbaa !24
  %t263 = load i64, ptr %l17, !tbaa !24
  %t268 = call %"compiler/generic:Desc" @compiler_2fgeneric_3aDesc_2ector(ptr %s11, i64 %t256, i32 %t261, i64 %t262, i64 %t263)
  store %"compiler/generic:Desc" %t268, ptr %l153
  br label %bb61
bb61:
  call void @__olang_scope_close(ptr %s11)
  call void @__olang_scope_close(ptr %s5)
  call void @__olang_scope_close(ptr %s0)
  %t269 = load %"compiler/generic:Desc", ptr %l153
  store %"compiler/generic:Desc" %t269, ptr %rv
  br label %ret
bb62:
  %t270 = load i64, ptr %l10, !tbaa !24
  %t271 = load i64, ptr @G_2ecompiler_2fgeneric_2eDescField, !tbaa !24
  %t274 = icmp eq i64 %t270, %t271
  br i1 %t274, label %bb63, label %bb64
bb63:
  store i1 true, ptr %l157, !tbaa !21
  br label %bb65
bb64:
  %t276 = load i64, ptr %l10, !tbaa !24
  %t277 = load i64, ptr @G_2ecompiler_2fgeneric_2eDescCase, !tbaa !24
  %t280 = icmp eq i64 %t276, %t277
  store i1 %t280, ptr %l157, !tbaa !21
  br label %bb65
bb65:
  %t282 = load i1, ptr %l157, !tbaa !21
  br i1 %t282, label %bb66, label %bb67
bb66:
  %t283 = load ptr, ptr %l0, !tbaa !29
  %t285 = getelementptr %"compiler/generic:Program", ptr %t283, i32 0, i32 2
  %t286 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t286, ptr %l164, !tbaa !27
  %t287 = getelementptr { i64, ptr }, ptr %l164, i32 0, i32 1
  %t288 = load ptr, ptr %t287, !tbaa !27
  %t289 = getelementptr i32, ptr %t288, i64 1
  %t290 = load i32, ptr %t289, !tbaa !33
  %t293 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eConstValue(ptr %v0, ptr %t285, i32 %t290)
  store i64 %t293, ptr %l166
  br label %bb68
bb67:
  store i64 0, ptr %l161, !tbaa !24
  br label %bb69
bb68:
  %t294 = load i64, ptr %l166, !tbaa !24
  store i64 %t294, ptr %l161, !tbaa !24
  br label %bb69
bb69:
  %t295 = load i64, ptr %l161, !tbaa !24
  store i64 %t295, ptr %l19, !tbaa !24
  %t296 = load ptr, ptr %l0, !tbaa !29
  %t298 = getelementptr %"compiler/generic:Program", ptr %t296, i32 0, i32 2
  %t299 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t299, ptr %l169, !tbaa !27
  %t300 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t302 = extractvalue { i64, ptr } %t300, 0
  %t304 = sub i64 %t302, 1
  %t306 = getelementptr { i64, ptr }, ptr %l169, i32 0, i32 1
  %t307 = load ptr, ptr %t306, !tbaa !27
  %t308 = getelementptr i32, ptr %t307, i64 %t304
  %t309 = load i32, ptr %t308, !tbaa !33
  %t312 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eConstValue(ptr %v0, ptr %t298, i32 %t309)
  store i64 %t312, ptr %l174
  br label %bb70
bb70:
  %t313 = load i64, ptr %l174, !tbaa !24
  %t314 = load i64, ptr %l10, !tbaa !24
  %t315 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t315, ptr %l176, !tbaa !27
  %t316 = getelementptr { i64, ptr }, ptr %l176, i32 0, i32 1
  %t317 = load ptr, ptr %t316, !tbaa !27
  %t318 = getelementptr i32, ptr %t317, i64 0
  %t319 = load i32, ptr %t318, !tbaa !33
  %t320 = load i64, ptr %l19, !tbaa !24
  %t326 = call %"compiler/generic:Desc" @compiler_2fgeneric_3aDesc_2ector(ptr %s5, i64 %t314, i32 %t319, i64 %t320, i64 %t313)
  store %"compiler/generic:Desc" %t326, ptr %l180
  br label %bb71
bb71:
  call void @__olang_scope_close(ptr %s5)
  call void @__olang_scope_close(ptr %s0)
  %t327 = load %"compiler/generic:Desc", ptr %l180
  store %"compiler/generic:Desc" %t327, ptr %rv
  br label %ret
bb72:
  %t328 = load i64, ptr %l9, !tbaa !24
  %t330 = add i64 %t328, 1
  store i64 %t330, ptr %l9, !tbaa !24
  br label %bb27
bb73:
  %t332 = load %"compiler/generic:Desc", ptr %l2
  call void @__olang_scope_close(ptr %s0)
  store %"compiler/generic:Desc" %t332, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/generic:Desc", ptr %rv
  ret %"compiler/generic:Desc" %rr
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
  %t68 = insertvalue { ptr, ptr } undef, ptr @olang_lambda_14, 0
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

define dso_local i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eErrSetUnion(ptr %v0, ptr %a0, i32 %a1, i32 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l3 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l4 = alloca { i64, ptr }
  %l5 = alloca i64
  %l6 = alloca i64
  %l8 = alloca { i64, ptr }
  %l9 = alloca i64
  %l10 = alloca i64
  %l12 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l14 = alloca ptr
  %l18 = alloca i32
  %l19 = alloca { i64, ptr }
  %l26 = alloca { i64, ptr }
  %l34 = alloca ptr
  %l38 = alloca i32
  %l39 = alloca { i64, ptr }
  %l46 = alloca { i64, ptr }
  %l53 = alloca ptr
  %l55 = alloca ptr
  %l57 = alloca { i64, ptr }
  %l58 = alloca i32
  %l59 = alloca i32
  %s0 = alloca %olang.scope
  %rv = alloca i32
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2ector(ptr %s0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1, ptr %l12
  br label %bb1
bb1:
  %t2 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l12
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t2, ptr %l3
  %t3 = load ptr, ptr %l0, !tbaa !29
  %t5 = getelementptr %"compiler/generic:Program", ptr %t3, i32 0, i32 2
  store ptr %t5, ptr %l14, !tbaa !29
  %t6 = load ptr, ptr %l0, !tbaa !29
  %t8 = getelementptr %"compiler/generic:Program", ptr %t6, i32 0, i32 2
  %t12 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrSetItems(ptr %v0, ptr %t8, i32 %a1)
  store i32 %t12, ptr %l18
  br label %bb2
bb2:
  %t13 = load ptr, ptr %l14, !tbaa !29
  %t14 = load i32, ptr %l18, !tbaa !23
  %t15 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t13, i32 %t14)
  store { i64, ptr } %t15, ptr %l19
  br label %bb3
bb3:
  %t16 = load { i64, ptr }, ptr %l19, !tbaa !27
  store { i64, ptr } %t16, ptr %l4, !tbaa !27
  store i64 0, ptr %l5, !tbaa !24
  %t17 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t19 = extractvalue { i64, ptr } %t17, 0
  store i64 %t19, ptr %l6, !tbaa !24
  br label %bb4
bb4:
  %t21 = load i64, ptr %l5, !tbaa !24
  %t22 = load i64, ptr %l6, !tbaa !24
  %t25 = icmp slt i64 %t21, %t22
  %t27 = xor i1 %t25, true
  br i1 %t27, label %bb5, label %bb6
bb5:
  br label %bb10
bb6:
  br label %bb7
bb7:
  %t29 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t29, ptr %l26, !tbaa !27
  %t30 = load i64, ptr %l5, !tbaa !24
  %t32 = getelementptr { i64, ptr }, ptr %l26, i32 0, i32 1
  %t33 = load ptr, ptr %t32, !tbaa !27
  %t34 = getelementptr i32, ptr %t33, i64 %t30
  %t35 = load i32, ptr %t34, !tbaa !33
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2ePush_3ccompiler_2ftypes_3aTypeId_3e(ptr %s0, ptr %l3, i32 %t35)
  br label %bb8
bb8:
  br label %bb9
bb9:
  %t40 = load i64, ptr %l5, !tbaa !24
  %t42 = add i64 %t40, 1
  store i64 %t42, ptr %l5, !tbaa !24
  br label %bb4
bb10:
  %t44 = load ptr, ptr %l0, !tbaa !29
  %t46 = getelementptr %"compiler/generic:Program", ptr %t44, i32 0, i32 2
  store ptr %t46, ptr %l34, !tbaa !29
  %t47 = load ptr, ptr %l0, !tbaa !29
  %t49 = getelementptr %"compiler/generic:Program", ptr %t47, i32 0, i32 2
  %t53 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrSetItems(ptr %v0, ptr %t49, i32 %a2)
  store i32 %t53, ptr %l38
  br label %bb11
bb11:
  %t54 = load ptr, ptr %l34, !tbaa !29
  %t55 = load i32, ptr %l38, !tbaa !23
  %t56 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t54, i32 %t55)
  store { i64, ptr } %t56, ptr %l39
  br label %bb12
bb12:
  %t57 = load { i64, ptr }, ptr %l39, !tbaa !27
  store { i64, ptr } %t57, ptr %l8, !tbaa !27
  store i64 0, ptr %l9, !tbaa !24
  %t58 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t60 = extractvalue { i64, ptr } %t58, 0
  store i64 %t60, ptr %l10, !tbaa !24
  br label %bb13
bb13:
  %t62 = load i64, ptr %l9, !tbaa !24
  %t63 = load i64, ptr %l10, !tbaa !24
  %t66 = icmp slt i64 %t62, %t63
  %t68 = xor i1 %t66, true
  br i1 %t68, label %bb14, label %bb15
bb14:
  br label %bb19
bb15:
  br label %bb16
bb16:
  %t70 = load { i64, ptr }, ptr %l8, !tbaa !27
  store { i64, ptr } %t70, ptr %l46, !tbaa !27
  %t71 = load i64, ptr %l9, !tbaa !24
  %t73 = getelementptr { i64, ptr }, ptr %l46, i32 0, i32 1
  %t74 = load ptr, ptr %t73, !tbaa !27
  %t75 = getelementptr i32, ptr %t74, i64 %t71
  %t76 = load i32, ptr %t75, !tbaa !33
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2ePush_3ccompiler_2ftypes_3aTypeId_3e(ptr %s0, ptr %l3, i32 %t76)
  br label %bb17
bb17:
  br label %bb18
bb18:
  %t81 = load i64, ptr %l9, !tbaa !24
  %t83 = add i64 %t81, 1
  store i64 %t83, ptr %l9, !tbaa !24
  br label %bb13
bb19:
  %t85 = load ptr, ptr %l0, !tbaa !29
  store ptr %t85, ptr %l53, !tbaa !29
  %t86 = load ptr, ptr %l0, !tbaa !29
  %t88 = getelementptr %"compiler/generic:Program", ptr %t86, i32 0, i32 2
  store ptr %t88, ptr %l55, !tbaa !29
  %t90 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2eToArray_3ccompiler_2ftypes_3aTypeId_3e(ptr %s0, ptr %s0, ptr %l3)
  store { i64, ptr } %t90, ptr %l57
  br label %bb20
bb20:
  %t91 = load ptr, ptr %l55, !tbaa !29
  %t92 = load { i64, ptr }, ptr %l57, !tbaa !27
  %t93 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eList(ptr %v0, ptr %s0, ptr %t91, { i64, ptr } %t92)
  store i32 %t93, ptr %l58
  br label %bb21
bb21:
  %t94 = load ptr, ptr %l53, !tbaa !29
  %t95 = load i32, ptr %l58, !tbaa !23
  %t96 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eErrSetOf(ptr %v0, ptr %t94, i32 %t95)
  store i32 %t96, ptr %l59
  br label %bb22
bb22:
  call void @__olang_scope_close(ptr %s0)
  %t97 = load i32, ptr %l59, !tbaa !23
  store i32 %t97, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
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

define dso_local i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eErrVarIndex(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca i64
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l10 = alloca i64
  %l13 = alloca i32
  %l16 = alloca i64
  %l20 = alloca i64
  %l23 = alloca i64
  %l44 = alloca i1
  %rv = alloca i64
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load i64, ptr %l1, !tbaa !24
  %t3 = call i64 @compiler_2fgeneric_2eFnOwner(i64 %t1)
  store i64 %t3, ptr %l10
  br label %bb1
bb1:
  %t4 = load i64, ptr %l10, !tbaa !24
  store i64 %t4, ptr %l2, !tbaa !24
  %t5 = load ptr, ptr %l0, !tbaa !29
  %t6 = load i64, ptr %l1, !tbaa !24
  %t9 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eSig(ptr %v0, ptr %t5, i64 %t6)
  store i32 %t9, ptr %l13
  br label %bb2
bb2:
  store i64 0, ptr %l3, !tbaa !24
  %t10 = load ptr, ptr %l0, !tbaa !29
  %t11 = load i64, ptr %l2, !tbaa !24
  %t14 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eVarCount(ptr %v0, ptr %t10, i64 %t11)
  store i64 %t14, ptr %l16
  br label %bb3
bb3:
  %t15 = load i64, ptr %l16, !tbaa !24
  store i64 %t15, ptr %l4, !tbaa !24
  store i64 1, ptr %l5, !tbaa !24
  %t16 = load i64, ptr %l4, !tbaa !24
  %t17 = load i64, ptr %l3, !tbaa !24
  %t20 = icmp sgt i64 %t16, %t17
  br i1 %t20, label %bb4, label %bb5
bb4:
  %t22 = load i64, ptr %l5, !tbaa !24
  %t24 = icmp sgt i64 %t22, 0
  br i1 %t24, label %bb6, label %bb7
bb5:
  store i64 0, ptr %l20, !tbaa !24
  br label %bb9
bb6:
  %t26 = load i64, ptr %l4, !tbaa !24
  %t27 = load i64, ptr %l3, !tbaa !24
  %t30 = sub i64 %t26, %t27
  %t31 = load i64, ptr %l5, !tbaa !24
  %t34 = add i64 %t30, %t31
  %t36 = sub i64 %t34, 1
  %t37 = load i64, ptr %l5, !tbaa !24
  %t40 = sdiv i64 %t36, %t37
  store i64 %t40, ptr %l23, !tbaa !24
  br label %bb8
bb7:
  store i64 0, ptr %l23, !tbaa !24
  br label %bb8
bb8:
  %t42 = load i64, ptr %l23, !tbaa !24
  store i64 %t42, ptr %l20, !tbaa !24
  br label %bb9
bb9:
  %t43 = load i64, ptr %l20, !tbaa !24
  store i64 %t43, ptr %l6, !tbaa !24
  store i64 0, ptr %l7, !tbaa !24
  br label %bb10
bb10:
  %t44 = load i64, ptr %l7, !tbaa !24
  %t45 = load i64, ptr %l6, !tbaa !24
  %t48 = icmp slt i64 %t44, %t45
  %t50 = xor i1 %t48, true
  br i1 %t50, label %bb11, label %bb12
bb11:
  br label %bb19
bb12:
  br label %bb13
bb13:
  %t52 = load i64, ptr %l3, !tbaa !24
  %t53 = load i64, ptr %l7, !tbaa !24
  %t54 = load i64, ptr %l5, !tbaa !24
  %t57 = mul i64 %t53, %t54
  %t60 = add i64 %t52, %t57
  store i64 %t60, ptr %l8, !tbaa !24
  %t62 = load ptr, ptr %l0, !tbaa !29
  %t63 = load i64, ptr %l2, !tbaa !24
  %t64 = load i64, ptr %l8, !tbaa !24
  %t68 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eErrVarAt(ptr %v0, ptr %t62, i64 %t63, i64 %t64)
  store i1 %t68, ptr %l44
  br label %bb14
bb14:
  %t69 = load i1, ptr %l44, !tbaa !21
  br i1 %t69, label %bb15, label %bb16
bb15:
  %t70 = load i64, ptr %l8, !tbaa !24
  store i64 %t70, ptr %rv
  br label %ret
bb16:
  br label %bb17
bb17:
  br label %bb18
bb18:
  %t72 = load i64, ptr %l7, !tbaa !24
  %t74 = add i64 %t72, 1
  store i64 %t74, ptr %l7, !tbaa !24
  br label %bb10
bb19:
  store i64 -1, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eErrorItemKnown(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, ptr %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca { i64, [3 x i64] }
  %l4 = alloca i32
  %l5 = alloca i64
  %l6 = alloca i32
  %l7 = alloca i32
  %l8 = alloca { i64, ptr }
  %l9 = alloca i1
  %l10 = alloca i64
  %l11 = alloca i64
  %l12 = alloca i64
  %l13 = alloca i64
  %l14 = alloca i64
  %l16 = alloca { i64, ptr }
  %l17 = alloca ptr
  %l18 = alloca { i64, ptr }
  %l19 = alloca i64
  %l20 = alloca i64
  %l22 = alloca ptr
  %l23 = alloca { i64, ptr }
  %l28 = alloca i1
  %l32 = alloca i32
  %l41 = alloca { i64, [3 x i64] }
  %l46 = alloca i1
  %l50 = alloca { i64, ptr }
  %l52 = alloca i1
  %l55 = alloca ptr
  %l56 = alloca { i64, [3 x i64] }
  %l59 = alloca { i64, ptr }
  %l61 = alloca { i64, ptr }
  %l62 = alloca { i64, ptr }
  %l64 = alloca %"compiler/diagmsg:Msg"
  %l65 = alloca i64
  %l70 = alloca i32
  %l76 = alloca ptr
  %l77 = alloca { i64, [3 x i64] }
  %l78 = alloca ptr
  %l80 = alloca ptr
  %l84 = alloca i32
  %l85 = alloca i32
  %l86 = alloca { i64, ptr }
  %l87 = alloca { i64, ptr }
  %l89 = alloca %"compiler/diagmsg:Msg"
  %l90 = alloca i64
  %l97 = alloca ptr
  %l98 = alloca ptr
  %l100 = alloca %"compiler/source:Span"
  %l102 = alloca { i64, ptr }
  %l104 = alloca i64
  %l105 = alloca i64
  %l110 = alloca %"compiler/ast:Path"
  %l112 = alloca i32
  %l117 = alloca { i64, ptr }
  %l121 = alloca ptr
  %l125 = alloca i32
  %l126 = alloca { i64, ptr }
  %l132 = alloca i64
  %l135 = alloca i64
  %l153 = alloca { i64, ptr }
  %l158 = alloca i1
  %l159 = alloca ptr
  %l163 = alloca i32
  %l164 = alloca i1
  %l168 = alloca ptr
  %l170 = alloca ptr
  %l174 = alloca i32
  %l175 = alloca i32
  %l176 = alloca { i64, ptr }
  %l180 = alloca ptr
  %l181 = alloca { i64, [3 x i64] }
  %l183 = alloca %"compiler/diagmsg:Msg"
  %l184 = alloca i64
  %l187 = alloca { i64, ptr }
  %l188 = alloca %"compiler/msgs:Nearest"
  %l197 = alloca { i64, ptr }
  %l200 = alloca ptr
  %l203 = alloca { i64, ptr }
  %l208 = alloca ptr
  %l209 = alloca { i64, [3 x i64] }
  %l210 = alloca { i64, ptr }
  %l213 = alloca { i64, ptr }
  %l214 = alloca { i64, ptr }
  %l215 = alloca { i64, ptr }
  %l217 = alloca { i64, ptr }
  %l219 = alloca %"compiler/diagmsg:Msg"
  %l220 = alloca i64
  %l227 = alloca ptr
  %l234 = alloca { i64, ptr }
  %l237 = alloca i64
  %l240 = alloca i64
  %l241 = alloca i64
  %l248 = alloca ptr
  %l249 = alloca { i64, [3 x i64] }
  %l251 = alloca { i64, ptr }
  %l252 = alloca { i64, ptr }
  %l257 = alloca { i64, ptr }
  %l259 = alloca %"compiler/diagmsg:Msg"
  %l260 = alloca i64
  %s0 = alloca %olang.scope
  %s2 = alloca %olang.scope
  %s3 = alloca %olang.scope
  %s4 = alloca %olang.scope
  %s5 = alloca %olang.scope
  %s11 = alloca %olang.scope
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store ptr %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l2, !tbaa !29
  %t3 = getelementptr %"compiler/ast:Path", ptr %t1, i32 0, i32 1
  %t4 = load { i64, ptr }, ptr %t3, !tbaa !27
  %t6 = extractvalue { i64, ptr } %t4, 0
  %t8 = icmp eq i64 %t6, 0
  br i1 %t8, label %bb1, label %bb2
bb1:
  store i1 true, ptr %l28, !tbaa !21
  br label %bb4
bb2:
  %t10 = load ptr, ptr %l0, !tbaa !29
  %t11 = load ptr, ptr %l1, !tbaa !29
  %t12 = load ptr, ptr %l2, !tbaa !29
  %t16 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eerrorSetItem(ptr %v0, ptr %v1, ptr %v2, ptr %t10, ptr %t11, ptr %t12)
  store i32 %t16, ptr %l32
  br label %bb3
bb3:
  %t17 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t18 = load i32, ptr %l32, !tbaa !23
  %t20 = icmp ne i32 %t18, %t17
  store i1 %t20, ptr %l28, !tbaa !21
  br label %bb4
bb4:
  %t22 = load i1, ptr %l28, !tbaa !21
  br i1 %t22, label %bb5, label %bb6
bb5:
  call void @__olang_scope_close(ptr %s0)
  store i1 true, ptr %rv
  br label %ret
bb6:
  br label %bb7
bb7:
  %t24 = load ptr, ptr %l0, !tbaa !29
  %t25 = load ptr, ptr %l1, !tbaa !29
  %t27 = getelementptr %"compiler/generic:Context", ptr %t25, i32 0, i32 0
  %t28 = load i64, ptr %t27, !tbaa !24
  %t29 = load ptr, ptr %l2, !tbaa !29
  %t31 = getelementptr %"compiler/ast:Path", ptr %t29, i32 0, i32 0
  %t32 = load %"compiler/source:Span", ptr %t31
  %t36 = call { i64, [3 x i64] } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eat(ptr %v0, ptr %t24, i64 %t28, %"compiler/source:Span" %t32)
  store { i64, [3 x i64] } %t36, ptr %l41
  br label %bb8
bb8:
  %t37 = load { i64, [3 x i64] }, ptr %l41
  store { i64, [3 x i64] } %t37, ptr %l3
  %t38 = load ptr, ptr %l2, !tbaa !29
  %t40 = getelementptr %"compiler/ast:Path", ptr %t38, i32 0, i32 1
  %t41 = load { i64, ptr }, ptr %t40, !tbaa !27
  %t43 = extractvalue { i64, ptr } %t41, 0
  %t45 = icmp eq i64 %t43, 1
  br i1 %t45, label %bb9, label %bb10
bb9:
  %t47 = load ptr, ptr %l1, !tbaa !29
  %t49 = getelementptr %"compiler/generic:Context", ptr %t47, i32 0, i32 2
  %t50 = load ptr, ptr %l2, !tbaa !29
  %t52 = getelementptr %"compiler/ast:Path", ptr %t50, i32 0, i32 1
  %t53 = load { i64, ptr }, ptr %t52, !tbaa !27
  store { i64, ptr } %t53, ptr %l50, !tbaa !27
  %t54 = getelementptr { i64, ptr }, ptr %l50, i32 0, i32 1
  %t55 = load ptr, ptr %t54, !tbaa !27
  %t56 = getelementptr i32, ptr %t55, i64 0
  %t57 = load i32, ptr %t56, !tbaa !33
  %t60 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fsource_3aNameId_2c_20compil_He6be2b0836caba7ddc59483ff74db438(ptr %v1, ptr %t49, i32 %t57)
  store i1 %t60, ptr %l52
  br label %bb11
bb10:
  store i1 false, ptr %l46, !tbaa !21
  br label %bb12
bb11:
  %t61 = load i1, ptr %l52, !tbaa !21
  store i1 %t61, ptr %l46, !tbaa !21
  br label %bb12
bb12:
  %t62 = load i1, ptr %l46, !tbaa !21
  br i1 %t62, label %bb13, label %bb14
bb13:
  store %olang.scope zeroinitializer, ptr %s2
  %t63 = load ptr, ptr %l0, !tbaa !29
  %t65 = getelementptr %"compiler/generic:Program", ptr %t63, i32 0, i32 0
  %t66 = load ptr, ptr %t65, !tbaa !29
  %t68 = getelementptr %"compiler/load:Loader", ptr %t66, i32 0, i32 4
  %t69 = load ptr, ptr %t68, !tbaa !29
  store ptr %t69, ptr %l55, !tbaa !29
  %t70 = load { i64, [3 x i64] }, ptr %l3
  store { i64, [3 x i64] } %t70, ptr %l56
  %t71 = load ptr, ptr %l0, !tbaa !29
  %t72 = load ptr, ptr %l2, !tbaa !29
  %t74 = getelementptr %"compiler/ast:Path", ptr %t72, i32 0, i32 1
  %t75 = load { i64, ptr }, ptr %t74, !tbaa !27
  store { i64, ptr } %t75, ptr %l59, !tbaa !27
  %t76 = getelementptr { i64, ptr }, ptr %l59, i32 0, i32 1
  %t77 = load ptr, ptr %t76, !tbaa !27
  %t78 = getelementptr i32, ptr %t77, i64 0
  %t79 = load i32, ptr %t78, !tbaa !33
  %t82 = call { i64, ptr } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2etext(ptr %v0, ptr %v0, ptr %t71, i32 %t79)
  store { i64, ptr } %t82, ptr %l61
  br label %bb15
bb14:
  br label %bb19
bb15:
  %t83 = load { i64, ptr }, ptr %l61, !tbaa !27
  %t84 = call { i64, ptr } @compiler_2fmsgs_2eTok(ptr %v0, ptr %s2, { i64, ptr } %t83)
  store { i64, ptr } %t84, ptr %l62
  br label %bb16
bb16:
  %t85 = load { i64, ptr }, ptr %l62, !tbaa !27
  %t86 = extractvalue { i64, ptr } %t85, 0
  %t87 = extractvalue { i64, ptr } %t85, 1
  %t88 = mul i64 %t86, 1
  %t89 = call ptr @__olang_scope_alloc(ptr %s2, i64 %t88)
  call void @llvm.memcpy.p0.p0.i64(ptr %t89, ptr %t87, i64 %t88, i1 false)
  %t90 = insertvalue { i64, ptr } undef, i64 %t86, 0
  %t91 = insertvalue { i64, ptr } %t90, ptr %t89, 1
  %t93 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eTypeVarNotErrorSet(ptr %s2, ptr %v0, { i64, ptr } %t91)
  store %"compiler/diagmsg:Msg" %t93, ptr %l64
  br label %bb17
bb17:
  %t94 = load ptr, ptr %l55, !tbaa !29
  %t95 = load { i64, [3 x i64] }, ptr %l56
  %t96 = load %"compiler/diagmsg:Msg", ptr %l64
  %t97 = call i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eErrorOncePerLine(ptr %v0, ptr %v0, ptr %t94, { i64, [3 x i64] } %t95, %"compiler/diagmsg:Msg" %t96)
  store i64 %t97, ptr %l65
  br label %bb18
bb18:
  call void @__olang_scope_close(ptr %s2)
  call void @__olang_scope_close(ptr %s0)
  store i1 false, ptr %rv
  br label %ret
bb19:
  %t99 = load ptr, ptr %l0, !tbaa !29
  %t100 = load ptr, ptr %l1, !tbaa !29
  %t101 = load ptr, ptr %l2, !tbaa !29
  %t105 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2enamedType(ptr %v0, ptr %v1, ptr %v2, ptr %t99, ptr %t100, ptr %t101)
  store i32 %t105, ptr %l70
  br label %bb20
bb20:
  %t106 = load i32, ptr %l70, !tbaa !23
  store i32 %t106, ptr %l4, !tbaa !23
  %t107 = load i32, ptr %l4, !tbaa !23
  %t108 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t111 = icmp ne i32 %t107, %t108
  br i1 %t111, label %bb21, label %bb22
bb21:
  store %olang.scope zeroinitializer, ptr %s3
  %t113 = load ptr, ptr %l0, !tbaa !29
  %t115 = getelementptr %"compiler/generic:Program", ptr %t113, i32 0, i32 0
  %t116 = load ptr, ptr %t115, !tbaa !29
  %t118 = getelementptr %"compiler/load:Loader", ptr %t116, i32 0, i32 4
  %t119 = load ptr, ptr %t118, !tbaa !29
  store ptr %t119, ptr %l76, !tbaa !29
  %t120 = load { i64, [3 x i64] }, ptr %l3
  store { i64, [3 x i64] } %t120, ptr %l77
  %t121 = load ptr, ptr %l0, !tbaa !29
  store ptr %t121, ptr %l78, !tbaa !29
  %t122 = load ptr, ptr %l0, !tbaa !29
  %t124 = getelementptr %"compiler/generic:Program", ptr %t122, i32 0, i32 2
  store ptr %t124, ptr %l80, !tbaa !29
  %t125 = load ptr, ptr %l0, !tbaa !29
  %t127 = getelementptr %"compiler/generic:Program", ptr %t125, i32 0, i32 2
  %t128 = load i32, ptr %l4, !tbaa !23
  %t131 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %t127, i32 %t128)
  store i32 %t131, ptr %l84
  br label %bb23
bb22:
  br label %bb29
bb23:
  %t132 = load ptr, ptr %l80, !tbaa !29
  %t133 = load i32, ptr %l84, !tbaa !23
  %t134 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclName(ptr %v0, ptr %t132, i32 %t133)
  store i32 %t134, ptr %l85
  br label %bb24
bb24:
  %t135 = load ptr, ptr %l78, !tbaa !29
  %t136 = load i32, ptr %l85, !tbaa !23
  %t137 = call { i64, ptr } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2etext(ptr %v0, ptr %v0, ptr %t135, i32 %t136)
  store { i64, ptr } %t137, ptr %l86
  br label %bb25
bb25:
  %t138 = load { i64, ptr }, ptr %l86, !tbaa !27
  %t139 = call { i64, ptr } @compiler_2fmsgs_2eTok(ptr %v0, ptr %s3, { i64, ptr } %t138)
  store { i64, ptr } %t139, ptr %l87
  br label %bb26
bb26:
  %t140 = load { i64, ptr }, ptr %l87, !tbaa !27
  %t141 = extractvalue { i64, ptr } %t140, 0
  %t142 = extractvalue { i64, ptr } %t140, 1
  %t143 = mul i64 %t141, 1
  %t144 = call ptr @__olang_scope_alloc(ptr %s3, i64 %t143)
  call void @llvm.memcpy.p0.p0.i64(ptr %t144, ptr %t142, i64 %t143, i1 false)
  %t145 = insertvalue { i64, ptr } undef, i64 %t141, 0
  %t146 = insertvalue { i64, ptr } %t145, ptr %t144, 1
  %t148 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eNotAnErrorType(ptr %s3, ptr %v0, { i64, ptr } %t146)
  store %"compiler/diagmsg:Msg" %t148, ptr %l89
  br label %bb27
bb27:
  %t149 = load ptr, ptr %l76, !tbaa !29
  %t150 = load { i64, [3 x i64] }, ptr %l77
  %t151 = load %"compiler/diagmsg:Msg", ptr %l89
  %t152 = call i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eErrorOncePerLine(ptr %v0, ptr %v0, ptr %t149, { i64, [3 x i64] } %t150, %"compiler/diagmsg:Msg" %t151)
  store i64 %t152, ptr %l90
  br label %bb28
bb28:
  call void @__olang_scope_close(ptr %s3)
  call void @__olang_scope_close(ptr %s0)
  store i1 false, ptr %rv
  br label %ret
bb29:
  %t154 = load ptr, ptr %l2, !tbaa !29
  %t156 = getelementptr %"compiler/ast:Path", ptr %t154, i32 0, i32 1
  %t157 = load { i64, ptr }, ptr %t156, !tbaa !27
  %t159 = extractvalue { i64, ptr } %t157, 0
  store i64 %t159, ptr %l5, !tbaa !24
  %t161 = load i64, ptr %l5, !tbaa !24
  %t163 = icmp sge i64 %t161, 2
  br i1 %t163, label %bb30, label %bb31
bb30:
  store %olang.scope zeroinitializer, ptr %s4
  %t165 = load ptr, ptr %l0, !tbaa !29
  store ptr %t165, ptr %l97, !tbaa !29
  %t166 = load ptr, ptr %l1, !tbaa !29
  store ptr %t166, ptr %l98, !tbaa !29
  %t167 = load ptr, ptr %l2, !tbaa !29
  %t169 = getelementptr %"compiler/ast:Path", ptr %t167, i32 0, i32 0
  %t170 = load %"compiler/source:Span", ptr %t169
  store %"compiler/source:Span" %t170, ptr %l100
  %t171 = load ptr, ptr %l2, !tbaa !29
  %t173 = getelementptr %"compiler/ast:Path", ptr %t171, i32 0, i32 1
  %t174 = load { i64, ptr }, ptr %t173, !tbaa !27
  store { i64, ptr } %t174, ptr %l102, !tbaa !27
  %t175 = load i64, ptr %l5, !tbaa !24
  %t177 = sub i64 %t175, 1
  store i64 %t177, ptr %l104, !tbaa !24
  %t178 = load { i64, ptr }, ptr %l102, !tbaa !27
  %t179 = extractvalue { i64, ptr } %t178, 0
  store i64 %t179, ptr %l105, !tbaa !24
  %t180 = icmp sge i64 0, 0
  br i1 %t180, label %bb32, label %bb33
bb31:
  br label %bb88
bb32:
  %t182 = load i64, ptr %l104, !tbaa !24
  %t183 = icmp sle i64 0, %t182
  br i1 %t183, label %bb34, label %bb35
bb33:
  call void @__olang_check_failed(ptr @olang_loc_1dc2a8cf17e248a5_de4d607536776161)
  unreachable
bb34:
  %t185 = load i64, ptr %l104, !tbaa !24
  %t186 = load i64, ptr %l105, !tbaa !24
  %t187 = icmp sle i64 %t185, %t186
  br i1 %t187, label %bb36, label %bb37
bb35:
  call void @__olang_check_failed(ptr @olang_loc_1dc2a8cf17e248a5_de4d607536776161)
  unreachable
bb36:
  %t189 = getelementptr { i64, ptr }, ptr %l102, i32 0, i32 1
  %t190 = load ptr, ptr %t189, !tbaa !27
  %t191 = load i64, ptr %l104, !tbaa !24
  %t192 = getelementptr i32, ptr %t190, i64 0
  %t193 = sub i64 %t191, 0
  %t194 = insertvalue { i64, ptr } undef, i64 %t193, 0
  %t195 = insertvalue { i64, ptr } %t194, ptr %t192, 1
  %t196 = load %"compiler/source:Span", ptr %l100
  %t198 = call %"compiler/ast:Path" @compiler_2fast_3aPath_2ector(ptr %v2, ptr %s4, %"compiler/source:Span" %t196, { i64, ptr } %t195)
  store %"compiler/ast:Path" %t198, ptr %l110
  br label %bb38
bb37:
  call void @__olang_check_failed(ptr @olang_loc_1dc2a8cf17e248a5_de4d607536776161)
  unreachable
bb38:
  %t199 = load ptr, ptr %l97, !tbaa !29
  %t200 = load ptr, ptr %l98, !tbaa !29
  %t202 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eerrorType(ptr %v0, ptr %v1, ptr %s4, ptr %t199, ptr %t200, ptr %l110)
  store i32 %t202, ptr %l112
  br label %bb39
bb39:
  %t203 = load i32, ptr %l112, !tbaa !23
  store i32 %t203, ptr %l6, !tbaa !23
  %t204 = load i32, ptr %l6, !tbaa !23
  %t205 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t208 = icmp ne i32 %t204, %t205
  br i1 %t208, label %bb40, label %bb41
bb40:
  store %olang.scope zeroinitializer, ptr %s5
  %t210 = load ptr, ptr %l2, !tbaa !29
  %t212 = getelementptr %"compiler/ast:Path", ptr %t210, i32 0, i32 1
  %t213 = load { i64, ptr }, ptr %t212, !tbaa !27
  store { i64, ptr } %t213, ptr %l117, !tbaa !27
  %t214 = load i64, ptr %l5, !tbaa !24
  %t216 = sub i64 %t214, 1
  %t218 = getelementptr { i64, ptr }, ptr %l117, i32 0, i32 1
  %t219 = load ptr, ptr %t218, !tbaa !27
  %t220 = getelementptr i32, ptr %t219, i64 %t216
  %t221 = load i32, ptr %t220, !tbaa !33
  store i32 %t221, ptr %l7, !tbaa !23
  %t223 = load ptr, ptr %l0, !tbaa !29
  store ptr %t223, ptr %l121, !tbaa !29
  %t224 = load ptr, ptr %l0, !tbaa !29
  %t226 = getelementptr %"compiler/generic:Program", ptr %t224, i32 0, i32 2
  %t227 = load i32, ptr %l6, !tbaa !23
  %t230 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %t226, i32 %t227)
  store i32 %t230, ptr %l125
  br label %bb42
bb41:
  br label %bb87
bb42:
  %t231 = load ptr, ptr %l121, !tbaa !29
  %t232 = load i32, ptr %l125, !tbaa !23
  %t233 = call { i64, ptr } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eErrorWords(ptr %v0, ptr %s5, ptr %t231, i32 %t232)
  store { i64, ptr } %t233, ptr %l126
  br label %bb43
bb43:
  %t234 = load { i64, ptr }, ptr %l126, !tbaa !27
  store { i64, ptr } %t234, ptr %l8, !tbaa !27
  store i1 false, ptr %l9, !tbaa !21
  store i64 0, ptr %l10, !tbaa !24
  %t235 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t237 = extractvalue { i64, ptr } %t235, 0
  store i64 %t237, ptr %l11, !tbaa !24
  store i64 1, ptr %l12, !tbaa !24
  %t239 = load i64, ptr %l11, !tbaa !24
  %t240 = load i64, ptr %l10, !tbaa !24
  %t243 = icmp sgt i64 %t239, %t240
  br i1 %t243, label %bb44, label %bb45
bb44:
  %t245 = load i64, ptr %l12, !tbaa !24
  %t247 = icmp sgt i64 %t245, 0
  br i1 %t247, label %bb46, label %bb47
bb45:
  store i64 0, ptr %l132, !tbaa !24
  br label %bb49
bb46:
  %t249 = load i64, ptr %l11, !tbaa !24
  %t250 = load i64, ptr %l10, !tbaa !24
  %t253 = sub i64 %t249, %t250
  %t254 = load i64, ptr %l12, !tbaa !24
  %t257 = add i64 %t253, %t254
  %t259 = sub i64 %t257, 1
  %t260 = load i64, ptr %l12, !tbaa !24
  %t263 = sdiv i64 %t259, %t260
  store i64 %t263, ptr %l135, !tbaa !24
  br label %bb48
bb47:
  store i64 0, ptr %l135, !tbaa !24
  br label %bb48
bb48:
  %t265 = load i64, ptr %l135, !tbaa !24
  store i64 %t265, ptr %l132, !tbaa !24
  br label %bb49
bb49:
  %t266 = load i64, ptr %l132, !tbaa !24
  store i64 %t266, ptr %l13, !tbaa !24
  store i64 0, ptr %l14, !tbaa !24
  br label %bb50
bb50:
  %t267 = load i64, ptr %l14, !tbaa !24
  %t268 = load i64, ptr %l13, !tbaa !24
  %t271 = icmp slt i64 %t267, %t268
  %t273 = xor i1 %t271, true
  br i1 %t273, label %bb51, label %bb52
bb51:
  br label %bb63
bb52:
  br label %bb53
bb53:
  %t275 = load i64, ptr %l10, !tbaa !24
  %t276 = load i64, ptr %l14, !tbaa !24
  %t277 = load i64, ptr %l12, !tbaa !24
  %t280 = mul i64 %t276, %t277
  %t283 = add i64 %t275, %t280
  %t285 = load { i64, ptr }, ptr %l8, !tbaa !27
  store { i64, ptr } %t285, ptr %l153, !tbaa !27
  %t288 = getelementptr { i64, ptr }, ptr %l153, i32 0, i32 1
  %t289 = load ptr, ptr %t288, !tbaa !27
  %t290 = getelementptr i32, ptr %t289, i64 %t283
  %t291 = load i32, ptr %t290, !tbaa !33
  %t292 = load i32, ptr %l7, !tbaa !23
  %t295 = icmp eq i32 %t291, %t292
  br i1 %t295, label %bb54, label %bb55
bb54:
  %t297 = load ptr, ptr %l0, !tbaa !29
  store ptr %t297, ptr %l159, !tbaa !29
  %t298 = load ptr, ptr %l0, !tbaa !29
  %t300 = getelementptr %"compiler/generic:Program", ptr %t298, i32 0, i32 2
  %t301 = load i32, ptr %l6, !tbaa !23
  %t304 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %t300, i32 %t301)
  store i32 %t304, ptr %l163
  br label %bb56
bb55:
  store i1 false, ptr %l158, !tbaa !21
  br label %bb58
bb56:
  %t305 = load ptr, ptr %l159, !tbaa !29
  %t306 = load i32, ptr %l163, !tbaa !23
  %t307 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eIsRaisedError(ptr %v0, ptr %t305, i32 %t306)
  store i1 %t307, ptr %l164
  br label %bb57
bb57:
  %t308 = load i1, ptr %l164, !tbaa !21
  %t309 = xor i1 %t308, true
  store i1 %t309, ptr %l158, !tbaa !21
  br label %bb58
bb58:
  %t311 = load i1, ptr %l158, !tbaa !21
  br i1 %t311, label %bb59, label %bb60
bb59:
  store i1 true, ptr %l9, !tbaa !21
  br label %bb61
bb60:
  br label %bb61
bb61:
  br label %bb62
bb62:
  %t312 = load i64, ptr %l14, !tbaa !24
  %t314 = add i64 %t312, 1
  store i64 %t314, ptr %l14, !tbaa !24
  br label %bb50
bb63:
  %t316 = load ptr, ptr %l0, !tbaa !29
  store ptr %t316, ptr %l168, !tbaa !29
  %t317 = load ptr, ptr %l0, !tbaa !29
  %t319 = getelementptr %"compiler/generic:Program", ptr %t317, i32 0, i32 2
  store ptr %t319, ptr %l170, !tbaa !29
  %t320 = load ptr, ptr %l0, !tbaa !29
  %t322 = getelementptr %"compiler/generic:Program", ptr %t320, i32 0, i32 2
  %t323 = load i32, ptr %l6, !tbaa !23
  %t326 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %t322, i32 %t323)
  store i32 %t326, ptr %l174
  br label %bb64
bb64:
  %t327 = load ptr, ptr %l170, !tbaa !29
  %t328 = load i32, ptr %l174, !tbaa !23
  %t329 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclName(ptr %v0, ptr %t327, i32 %t328)
  store i32 %t329, ptr %l175
  br label %bb65
bb65:
  %t330 = load ptr, ptr %l168, !tbaa !29
  %t331 = load i32, ptr %l175, !tbaa !23
  %t332 = call { i64, ptr } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2etext(ptr %v0, ptr %v0, ptr %t330, i32 %t331)
  store { i64, ptr } %t332, ptr %l176
  br label %bb66
bb66:
  %t333 = load { i64, ptr }, ptr %l176, !tbaa !27
  store { i64, ptr } %t333, ptr %l16, !tbaa !27
  %t334 = load i1, ptr %l9, !tbaa !21
  br i1 %t334, label %bb67, label %bb68
bb67:
  %t336 = load ptr, ptr %l0, !tbaa !29
  %t338 = getelementptr %"compiler/generic:Program", ptr %t336, i32 0, i32 0
  %t339 = load ptr, ptr %t338, !tbaa !29
  %t341 = getelementptr %"compiler/load:Loader", ptr %t339, i32 0, i32 4
  %t342 = load ptr, ptr %t341, !tbaa !29
  store ptr %t342, ptr %l180, !tbaa !29
  %t343 = load { i64, [3 x i64] }, ptr %l3
  store { i64, [3 x i64] } %t343, ptr %l181
  %t344 = load { i64, ptr }, ptr %l16, !tbaa !27
  %t346 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eErrorWordTooFar(ptr %v0, ptr %v0, { i64, ptr } %t344)
  store %"compiler/diagmsg:Msg" %t346, ptr %l183
  br label %bb69
bb68:
  store %olang.scope zeroinitializer, ptr %s11
  %t347 = load ptr, ptr %l0, !tbaa !29
  %t348 = load i32, ptr %l7, !tbaa !23
  %t351 = call { i64, ptr } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2etext(ptr %v0, ptr %v0, ptr %t347, i32 %t348)
  store { i64, ptr } %t351, ptr %l187
  br label %bb71
bb69:
  %t352 = load ptr, ptr %l180, !tbaa !29
  %t353 = load { i64, [3 x i64] }, ptr %l181
  %t354 = load %"compiler/diagmsg:Msg", ptr %l183
  %t355 = call i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eErrorOncePerLine(ptr %v0, ptr %v0, ptr %t352, { i64, [3 x i64] } %t353, %"compiler/diagmsg:Msg" %t354)
  store i64 %t355, ptr %l184
  br label %bb70
bb70:
  br label %bb86
bb71:
  %t356 = load { i64, ptr }, ptr %l187, !tbaa !27
  %t357 = call %"compiler/msgs:Nearest" @compiler_2fmsgs_3aNearest_2ector(ptr %v0, ptr %s11, { i64, ptr } %t356)
  store %"compiler/msgs:Nearest" %t357, ptr %l188
  br label %bb72
bb72:
  %t358 = load %"compiler/msgs:Nearest", ptr %l188
  %t359 = call ptr @__olang_scope_alloc_a(ptr %s11, i64 40, i64 8)
  store %"compiler/msgs:Nearest" %t358, ptr %t359
  store ptr %t359, ptr %l17, !tbaa !29
  %t361 = load { i64, ptr }, ptr %l8, !tbaa !27
  store { i64, ptr } %t361, ptr %l18, !tbaa !27
  store i64 0, ptr %l19, !tbaa !24
  %t363 = load { i64, ptr }, ptr %l18, !tbaa !27
  %t365 = extractvalue { i64, ptr } %t363, 0
  store i64 %t365, ptr %l20, !tbaa !24
  br label %bb73
bb73:
  %t367 = load i64, ptr %l19, !tbaa !24
  %t368 = load i64, ptr %l20, !tbaa !24
  %t371 = icmp slt i64 %t367, %t368
  %t373 = xor i1 %t371, true
  br i1 %t373, label %bb74, label %bb75
bb74:
  br label %bb80
bb75:
  br label %bb76
bb76:
  %t375 = load { i64, ptr }, ptr %l18, !tbaa !27
  store { i64, ptr } %t375, ptr %l197, !tbaa !27
  %t376 = load i64, ptr %l19, !tbaa !24
  %t378 = getelementptr { i64, ptr }, ptr %l197, i32 0, i32 1
  %t379 = load ptr, ptr %t378, !tbaa !27
  %t380 = getelementptr i32, ptr %t379, i64 %t376
  %t381 = load i32, ptr %t380, !tbaa !33
  %t383 = load ptr, ptr %l17, !tbaa !29
  store ptr %t383, ptr %l200, !tbaa !29
  %t384 = load ptr, ptr %l0, !tbaa !29
  %t388 = call { i64, ptr } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2etext(ptr %v0, ptr %v0, ptr %t384, i32 %t381)
  store { i64, ptr } %t388, ptr %l203
  br label %bb77
bb77:
  %t389 = load ptr, ptr %l200, !tbaa !29
  %t390 = load { i64, ptr }, ptr %l203, !tbaa !27
  call void @compiler_2fmsgs_2ecompiler_2fmsgs_3aNearest_2eOffer(ptr %s11, ptr %v0, ptr %t389, { i64, ptr } %t390)
  br label %bb78
bb78:
  br label %bb79
bb79:
  %t391 = load i64, ptr %l19, !tbaa !24
  %t393 = add i64 %t391, 1
  store i64 %t393, ptr %l19, !tbaa !24
  br label %bb73
bb80:
  %t395 = load ptr, ptr %l0, !tbaa !29
  %t397 = getelementptr %"compiler/generic:Program", ptr %t395, i32 0, i32 0
  %t398 = load ptr, ptr %t397, !tbaa !29
  %t400 = getelementptr %"compiler/load:Loader", ptr %t398, i32 0, i32 4
  %t401 = load ptr, ptr %t400, !tbaa !29
  store ptr %t401, ptr %l208, !tbaa !29
  %t402 = load { i64, [3 x i64] }, ptr %l3
  store { i64, [3 x i64] } %t402, ptr %l209
  %t403 = load { i64, ptr }, ptr %l16, !tbaa !27
  store { i64, ptr } %t403, ptr %l210, !tbaa !27
  %t404 = load ptr, ptr %l0, !tbaa !29
  %t405 = load i32, ptr %l7, !tbaa !23
  %t408 = call { i64, ptr } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2etext(ptr %v0, ptr %v0, ptr %t404, i32 %t405)
  store { i64, ptr } %t408, ptr %l213
  br label %bb81
bb81:
  %t409 = load { i64, ptr }, ptr %l213, !tbaa !27
  %t410 = call { i64, ptr } @compiler_2fmsgs_2eTok(ptr %v0, ptr %s11, { i64, ptr } %t409)
  store { i64, ptr } %t410, ptr %l214
  br label %bb82
bb82:
  %t411 = load { i64, ptr }, ptr %l214, !tbaa !27
  %t412 = extractvalue { i64, ptr } %t411, 0
  %t413 = extractvalue { i64, ptr } %t411, 1
  %t414 = mul i64 %t412, 1
  %t415 = call ptr @__olang_scope_alloc(ptr %s11, i64 %t414)
  call void @llvm.memcpy.p0.p0.i64(ptr %t415, ptr %t413, i64 %t414, i1 false)
  %t416 = insertvalue { i64, ptr } undef, i64 %t412, 0
  %t417 = insertvalue { i64, ptr } %t416, ptr %t415, 1
  store { i64, ptr } %t417, ptr %l215, !tbaa !27
  %t418 = load ptr, ptr %l17, !tbaa !29
  %t420 = call { i64, ptr } @compiler_2fmsgs_2ecompiler_2fmsgs_3aNearest_2eHint(ptr %s11, ptr %s11, ptr %t418)
  store { i64, ptr } %t420, ptr %l217
  br label %bb83
bb83:
  %t421 = load { i64, ptr }, ptr %l217, !tbaa !27
  %t422 = extractvalue { i64, ptr } %t421, 0
  %t423 = extractvalue { i64, ptr } %t421, 1
  %t424 = mul i64 %t422, 1
  %t425 = call ptr @__olang_scope_alloc(ptr %s11, i64 %t424)
  call void @llvm.memcpy.p0.p0.i64(ptr %t425, ptr %t423, i64 %t424, i1 false)
  %t426 = insertvalue { i64, ptr } undef, i64 %t422, 0
  %t427 = insertvalue { i64, ptr } %t426, ptr %t425, 1
  %t428 = load { i64, ptr }, ptr %l210, !tbaa !27
  %t429 = load { i64, ptr }, ptr %l215, !tbaa !27
  %t431 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eNoSuchErrorWord(ptr %v0, ptr %s11, ptr %s11, ptr %v0, { i64, ptr } %t428, { i64, ptr } %t429, { i64, ptr } %t427)
  store %"compiler/diagmsg:Msg" %t431, ptr %l219
  br label %bb84
bb84:
  %t432 = load ptr, ptr %l208, !tbaa !29
  %t433 = load { i64, [3 x i64] }, ptr %l209
  %t434 = load %"compiler/diagmsg:Msg", ptr %l219
  %t435 = call i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eErrorOncePerLine(ptr %v0, ptr %v0, ptr %t432, { i64, [3 x i64] } %t433, %"compiler/diagmsg:Msg" %t434)
  store i64 %t435, ptr %l220
  br label %bb85
bb85:
  call void @__olang_scope_close(ptr %s11)
  br label %bb86
bb86:
  call void @__olang_scope_close(ptr %s5)
  call void @__olang_scope_close(ptr %s4)
  call void @__olang_scope_close(ptr %s0)
  store i1 false, ptr %rv
  br label %ret
bb87:
  call void @__olang_scope_close(ptr %s4)
  br label %bb88
bb88:
  %t437 = load ptr, ptr %l0, !tbaa !29
  %t439 = getelementptr %"compiler/generic:Program", ptr %t437, i32 0, i32 0
  %t440 = load ptr, ptr %t439, !tbaa !29
  %t442 = getelementptr %"compiler/load:Loader", ptr %t440, i32 0, i32 10
  %t443 = load ptr, ptr %l1, !tbaa !29
  %t445 = getelementptr %"compiler/generic:Context", ptr %t443, i32 0, i32 0
  %t446 = load i64, ptr %t445, !tbaa !24
  %t449 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H7bcf2aeb09afa796f4333e6ec8c3f63f(ptr %v0, ptr %v0, ptr %t442, i64 %t446)
  store ptr %t449, ptr %l227
  br label %bb89
bb89:
  %t450 = load ptr, ptr %l227, !tbaa !29
  %t452 = getelementptr %"compiler/load:Module", ptr %t450, i32 0, i32 6
  %t453 = load ptr, ptr %t452, !tbaa !29
  store ptr %t453, ptr %l22, !tbaa !29
  %t455 = load ptr, ptr %l22, !tbaa !29
  %t457 = icmp eq ptr %t455, null
  br i1 %t457, label %bb90, label %bb91
bb90:
  call void @__olang_check_failed(ptr @olang_loc_f1cf7ccb88a76b40_782fc340d5d627c)
  unreachable
bb91:
  br label %bb92
bb92:
  %t459 = load ptr, ptr %l22, !tbaa !29
  %t462 = getelementptr %"compiler/source:Source", ptr %t459, i32 0, i32 1
  %t463 = load { i64, ptr }, ptr %t462, !tbaa !27
  store { i64, ptr } %t463, ptr %l234, !tbaa !27
  %t464 = load ptr, ptr %l2, !tbaa !29
  %t466 = getelementptr %"compiler/ast:Path", ptr %t464, i32 0, i32 0
  %t467 = getelementptr %"compiler/source:Span", ptr %t466, i32 0, i32 0
  %t468 = load i32, ptr %t467, !tbaa !23
  %t470 = sext i32 %t468 to i64
  store i64 %t470, ptr %l237, !tbaa !24
  %t471 = load ptr, ptr %l2, !tbaa !29
  %t473 = getelementptr %"compiler/ast:Path", ptr %t471, i32 0, i32 0
  %t474 = getelementptr %"compiler/source:Span", ptr %t473, i32 0, i32 1
  %t475 = load i32, ptr %t474, !tbaa !23
  %t477 = sext i32 %t475 to i64
  store i64 %t477, ptr %l240, !tbaa !24
  %t478 = load { i64, ptr }, ptr %l234, !tbaa !27
  %t479 = extractvalue { i64, ptr } %t478, 0
  store i64 %t479, ptr %l241, !tbaa !24
  %t480 = load i64, ptr %l237, !tbaa !24
  %t481 = icmp sge i64 %t480, 0
  br i1 %t481, label %bb93, label %bb94
bb93:
  %t483 = load i64, ptr %l237, !tbaa !24
  %t484 = load i64, ptr %l240, !tbaa !24
  %t485 = icmp sle i64 %t483, %t484
  br i1 %t485, label %bb95, label %bb96
bb94:
  call void @__olang_check_failed(ptr @olang_loc_7655d9c19e1e4e63_9fb1b21e00b7825f)
  unreachable
bb95:
  %t487 = load i64, ptr %l240, !tbaa !24
  %t488 = load i64, ptr %l241, !tbaa !24
  %t489 = icmp sle i64 %t487, %t488
  br i1 %t489, label %bb97, label %bb98
bb96:
  call void @__olang_check_failed(ptr @olang_loc_7655d9c19e1e4e63_9fb1b21e00b7825f)
  unreachable
bb97:
  %t491 = getelementptr { i64, ptr }, ptr %l234, i32 0, i32 1
  %t492 = load ptr, ptr %t491, !tbaa !27
  %t493 = load i64, ptr %l237, !tbaa !24
  %t494 = load i64, ptr %l240, !tbaa !24
  %t495 = getelementptr i8, ptr %t492, i64 %t493
  %t496 = sub i64 %t494, %t493
  %t497 = insertvalue { i64, ptr } undef, i64 %t496, 0
  %t498 = insertvalue { i64, ptr } %t497, ptr %t495, 1
  store { i64, ptr } %t498, ptr %l23, !tbaa !27
  %t500 = load ptr, ptr %l0, !tbaa !29
  %t502 = getelementptr %"compiler/generic:Program", ptr %t500, i32 0, i32 0
  %t503 = load ptr, ptr %t502, !tbaa !29
  %t505 = getelementptr %"compiler/load:Loader", ptr %t503, i32 0, i32 4
  %t506 = load ptr, ptr %t505, !tbaa !29
  store ptr %t506, ptr %l248, !tbaa !29
  %t507 = load { i64, [3 x i64] }, ptr %l3
  store { i64, [3 x i64] } %t507, ptr %l249
  %t508 = load { i64, ptr }, ptr %l23, !tbaa !27
  %t510 = call { i64, ptr } @compiler_2fmsgs_2eTok(ptr %v0, ptr %s0, { i64, ptr } %t508)
  store { i64, ptr } %t510, ptr %l251
  br label %bb99
bb98:
  call void @__olang_check_failed(ptr @olang_loc_7655d9c19e1e4e63_9fb1b21e00b7825f)
  unreachable
bb99:
  %t511 = load { i64, ptr }, ptr %l251, !tbaa !27
  %t512 = extractvalue { i64, ptr } %t511, 0
  %t513 = extractvalue { i64, ptr } %t511, 1
  %t514 = mul i64 %t512, 1
  %t515 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t514)
  call void @llvm.memcpy.p0.p0.i64(ptr %t515, ptr %t513, i64 %t514, i1 false)
  %t516 = insertvalue { i64, ptr } undef, i64 %t512, 0
  %t517 = insertvalue { i64, ptr } %t516, ptr %t515, 1
  store { i64, ptr } %t517, ptr %l252, !tbaa !27
  %t518 = load ptr, ptr %l0, !tbaa !29
  %t519 = load ptr, ptr %l1, !tbaa !29
  %t521 = getelementptr %"compiler/generic:Context", ptr %t519, i32 0, i32 0
  %t522 = load i64, ptr %t521, !tbaa !24
  %t523 = load { i64, ptr }, ptr %l23, !tbaa !27
  %t527 = call { i64, ptr } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eErrorTypeHint(ptr %v0, ptr %v0, ptr %s0, ptr %t518, i64 %t522, { i64, ptr } %t523)
  store { i64, ptr } %t527, ptr %l257
  br label %bb100
bb100:
  %t528 = load { i64, ptr }, ptr %l257, !tbaa !27
  %t529 = extractvalue { i64, ptr } %t528, 0
  %t530 = extractvalue { i64, ptr } %t528, 1
  %t531 = mul i64 %t529, 1
  %t532 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t531)
  call void @llvm.memcpy.p0.p0.i64(ptr %t532, ptr %t530, i64 %t531, i1 false)
  %t533 = insertvalue { i64, ptr } undef, i64 %t529, 0
  %t534 = insertvalue { i64, ptr } %t533, ptr %t532, 1
  %t535 = load { i64, ptr }, ptr %l252, !tbaa !27
  %t537 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eUnknownErrorType(ptr %s0, ptr %s0, ptr %v0, { i64, ptr } %t535, { i64, ptr } %t534)
  store %"compiler/diagmsg:Msg" %t537, ptr %l259
  br label %bb101
bb101:
  %t538 = load ptr, ptr %l248, !tbaa !29
  %t539 = load { i64, [3 x i64] }, ptr %l249
  %t540 = load %"compiler/diagmsg:Msg", ptr %l259
  %t541 = call i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eErrorOncePerLine(ptr %v0, ptr %v0, ptr %t538, { i64, [3 x i64] } %t539, %"compiler/diagmsg:Msg" %t540)
  store i64 %t541, ptr %l260
  br label %bb102
bb102:
  call void @__olang_scope_close(ptr %s0)
  store i1 false, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local { i64, ptr } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFieldNames(ptr %v0, ptr %v1, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l3 = alloca ptr
  %l4 = alloca ptr
  %l5 = alloca ptr
  %l6 = alloca %"std/prelude/iterator:ViewGenerator.00c7c71992d6e1815cd052c47b979cdd"
  %l8 = alloca { i64, ptr }
  %l9 = alloca i64
  %l10 = alloca i64
  %l12 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l16 = alloca i32
  %l21 = alloca { i64, ptr }
  %l22 = alloca { i64, ptr }
  %l23 = alloca i64
  %l24 = alloca { i64, ptr }
  %l27 = alloca i1
  %l28 = alloca ptr
  %l31 = alloca i32
  %l32 = alloca { i64, ptr }
  %l33 = alloca ptr
  %l37 = alloca i32
  %l38 = alloca ptr
  %l41 = alloca i1
  %l46 = alloca { i64, ptr }
  %l47 = alloca { i64, ptr }
  %l48 = alloca i64
  %l49 = alloca { i64, ptr }
  %l52 = alloca ptr
  %l53 = alloca i1
  %l59 = alloca %"std/prelude/iterator:ViewGenerator.00c7c71992d6e1815cd052c47b979cdd"
  %l60 = alloca ptr
  %l62 = alloca ptr
  %l63 = alloca i32
  %l65 = alloca i1
  %l74 = alloca { i64, ptr }
  %l82 = alloca { i64, ptr }
  %l83 = alloca { i64, ptr }
  %l84 = alloca i64
  %l85 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %s1 = alloca %olang.scope
  %s3 = alloca %olang.scope
  %s5 = alloca %olang.scope
  %wh5 = alloca ptr
  %wc5 = alloca ptr
  %ws5 = alloca i32
  %rv = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aNameId_3e_2ector(ptr %s0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1, ptr %l12
  br label %bb1
bb1:
  %t2 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l12
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t2, ptr %l2
  %t3 = load ptr, ptr %l0, !tbaa !29
  %t5 = getelementptr %"compiler/generic:Program", ptr %t3, i32 0, i32 2
  %t6 = load i32, ptr %l1, !tbaa !23
  %t9 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t5, i32 %t6)
  store i32 %t9, ptr %l16
  br label %bb2
bb2:
  %t10 = load i32, ptr %l16, !range !{i32 0, i32 33}
  %t12 = trunc i64 18 to i32
  %t13 = icmp eq i32 %t10, %t12
  %t15 = xor i1 %t13, true
  br i1 %t15, label %bb3, label %bb4
bb3:
  store %olang.scope zeroinitializer, ptr %s1
  %t18 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aNameId_3e_2eToArra_H4d02a0b2e27e8f31ffc99daa43750593(ptr %s0, ptr %s1, ptr %l2)
  store { i64, ptr } %t18, ptr %l21
  br label %bb5
bb4:
  br label %bb6
bb5:
  %t19 = load { i64, ptr }, ptr %l21, !tbaa !27
  store { i64, ptr } %t19, ptr %l22, !tbaa !27
  %t20 = load { i64, ptr }, ptr %l22, !tbaa !27
  %t21 = extractvalue { i64, ptr } %t20, 0
  store i64 %t21, ptr %l23, !tbaa !24
  %t22 = load i64, ptr %l23, !tbaa !24
  %t23 = mul i64 %t22, 4
  %t24 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t23)
  %t25 = insertvalue { i64, ptr } undef, i64 %t22, 0
  %t26 = insertvalue { i64, ptr } %t25, ptr %t24, 1
  store { i64, ptr } %t26, ptr %l24, !tbaa !27
  %t27 = getelementptr { i64, ptr }, ptr %l24, i32 0, i32 1
  %t28 = load ptr, ptr %t27, !tbaa !27
  %t29 = getelementptr { i64, ptr }, ptr %l22, i32 0, i32 1
  %t30 = load ptr, ptr %t29, !tbaa !27
  %t31 = load i64, ptr %l23, !tbaa !24
  %t32 = mul i64 %t31, 4
  call void @llvm.memmove.p0.p0.i64(ptr %t28, ptr %t30, i64 %t32, i1 false)
  %t33 = load { i64, ptr }, ptr %l24, !tbaa !27
  store { i64, ptr } %t33, ptr %l22, !tbaa !27
  call void @__olang_scope_close(ptr %s1)
  call void @__olang_scope_close(ptr %s0)
  %t34 = load { i64, ptr }, ptr %l22, !tbaa !27
  store { i64, ptr } %t34, ptr %rv
  br label %ret
bb6:
  %t35 = load ptr, ptr %l0, !tbaa !29
  %t36 = load i32, ptr %l1, !tbaa !23
  %t39 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eIsColumns(ptr %v0, ptr %t35, i32 %t36)
  store i1 %t39, ptr %l27
  br label %bb7
bb7:
  %t40 = load i1, ptr %l27, !tbaa !21
  br i1 %t40, label %bb8, label %bb9
bb8:
  %t41 = load ptr, ptr %l0, !tbaa !29
  store ptr %t41, ptr %l28, !tbaa !29
  %t42 = load ptr, ptr %l0, !tbaa !29
  %t43 = load i32, ptr %l1, !tbaa !23
  %t46 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eColumnsRow(ptr %v0, ptr %t42, i32 %t43)
  store i32 %t46, ptr %l31
  br label %bb10
bb9:
  br label %bb12
bb10:
  %t47 = load ptr, ptr %l28, !tbaa !29
  %t48 = load i32, ptr %l31, !tbaa !23
  %t49 = call { i64, ptr } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFieldNames(ptr %v0, ptr %v1, ptr %t47, i32 %t48)
  store { i64, ptr } %t49, ptr %l32
  br label %bb11
bb11:
  call void @__olang_scope_close(ptr %s0)
  %t50 = load { i64, ptr }, ptr %l32, !tbaa !27
  store { i64, ptr } %t50, ptr %rv
  br label %ret
bb12:
  %t51 = load ptr, ptr %l0, !tbaa !29
  store ptr %t51, ptr %l33, !tbaa !29
  %t52 = load ptr, ptr %l0, !tbaa !29
  %t54 = getelementptr %"compiler/generic:Program", ptr %t52, i32 0, i32 2
  %t55 = load i32, ptr %l1, !tbaa !23
  %t58 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %t54, i32 %t55)
  store i32 %t58, ptr %l37
  br label %bb13
bb13:
  %t59 = load ptr, ptr %l33, !tbaa !29
  %t60 = load i32, ptr %l37, !tbaa !23
  %t61 = call ptr @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2etypeDecl(ptr %v0, ptr %v0, ptr %t59, i32 %t60)
  store ptr %t61, ptr %l38
  br label %bb14
bb14:
  %t62 = load ptr, ptr %l38, !tbaa !29
  store ptr %t62, ptr %l3, !tbaa !29
  %t63 = load ptr, ptr %l3, !tbaa !29
  %t65 = icmp eq ptr %t63, null
  br i1 %t65, label %bb15, label %bb16
bb15:
  store i1 true, ptr %l41, !tbaa !21
  br label %bb17
bb16:
  %t67 = load ptr, ptr %l3, !tbaa !29
  %t69 = getelementptr %"compiler/ast:TypeDecl", ptr %t67, i32 0, i32 3
  %t70 = load ptr, ptr %t69, !tbaa !29
  %t72 = icmp eq ptr %t70, null
  store i1 %t72, ptr %l41, !tbaa !21
  br label %bb17
bb17:
  %t74 = load i1, ptr %l41, !tbaa !21
  br i1 %t74, label %bb18, label %bb19
bb18:
  store %olang.scope zeroinitializer, ptr %s3
  %t76 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aNameId_3e_2eToArra_H4d02a0b2e27e8f31ffc99daa43750593(ptr %s0, ptr %s3, ptr %l2)
  store { i64, ptr } %t76, ptr %l46
  br label %bb20
bb19:
  br label %bb21
bb20:
  %t77 = load { i64, ptr }, ptr %l46, !tbaa !27
  store { i64, ptr } %t77, ptr %l47, !tbaa !27
  %t78 = load { i64, ptr }, ptr %l47, !tbaa !27
  %t79 = extractvalue { i64, ptr } %t78, 0
  store i64 %t79, ptr %l48, !tbaa !24
  %t80 = load i64, ptr %l48, !tbaa !24
  %t81 = mul i64 %t80, 4
  %t82 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t81)
  %t83 = insertvalue { i64, ptr } undef, i64 %t80, 0
  %t84 = insertvalue { i64, ptr } %t83, ptr %t82, 1
  store { i64, ptr } %t84, ptr %l49, !tbaa !27
  %t85 = getelementptr { i64, ptr }, ptr %l49, i32 0, i32 1
  %t86 = load ptr, ptr %t85, !tbaa !27
  %t87 = getelementptr { i64, ptr }, ptr %l47, i32 0, i32 1
  %t88 = load ptr, ptr %t87, !tbaa !27
  %t89 = load i64, ptr %l48, !tbaa !24
  %t90 = mul i64 %t89, 4
  call void @llvm.memmove.p0.p0.i64(ptr %t86, ptr %t88, i64 %t90, i1 false)
  %t91 = load { i64, ptr }, ptr %l49, !tbaa !27
  store { i64, ptr } %t91, ptr %l47, !tbaa !27
  call void @__olang_scope_close(ptr %s3)
  call void @__olang_scope_close(ptr %s0)
  %t92 = load { i64, ptr }, ptr %l47, !tbaa !27
  store { i64, ptr } %t92, ptr %rv
  br label %ret
bb21:
  %t93 = load ptr, ptr %l3, !tbaa !29
  %t95 = getelementptr %"compiler/ast:TypeDecl", ptr %t93, i32 0, i32 3
  %t96 = load ptr, ptr %t95, !tbaa !29
  store ptr %t96, ptr %l4, !tbaa !29
  %t98 = load ptr, ptr %l4, !tbaa !29
  store ptr %t98, ptr %l52, !tbaa !29
  store i1 false, ptr %l53, !tbaa !21
  %t99 = load ptr, ptr %l52, !tbaa !29
  %t100 = icmp ne ptr %t99, null
  br i1 %t100, label %bb22, label %bb23
bb22:
  %t102 = load ptr, ptr %l52, !tbaa !29
  %t103 = load i64, ptr %t102, !range !{i64 0, i64 5}
  %t105 = icmp eq i64 %t103, 0
  store i1 %t105, ptr %l53, !tbaa !21
  br label %bb23
bb23:
  %t106 = load i1, ptr %l53, !tbaa !21
  br i1 %t106, label %bb24, label %bb25
bb24:
  %t107 = load ptr, ptr %l4, !tbaa !29
  %t109 = getelementptr { i64, [6 x i64] }, ptr %t107, i32 0, i32 1
  %t110 = getelementptr { ptr }, ptr %t109, i32 0, i32 0
  %t111 = load ptr, ptr %t110
  store ptr %t111, ptr %l5, !tbaa !29
  br label %bb26
bb25:
  br label %bb42
bb26:
  store %olang.scope zeroinitializer, ptr %s5
  %t113 = load ptr, ptr %l5, !tbaa !29
  %t115 = call %"std/prelude/iterator:ViewGenerator.00c7c71992d6e1815cd052c47b979cdd" @compiler_2fgeneric_2eFieldDecls.walk(ptr %v0, ptr %s5, ptr %t113)
  %t116 = extractvalue %"std/prelude/iterator:ViewGenerator.00c7c71992d6e1815cd052c47b979cdd" %t115, 0, 1
  %t117 = extractvalue %"std/prelude/iterator:ViewGenerator.00c7c71992d6e1815cd052c47b979cdd" %t115, 0, 0
  store ptr %t116, ptr %wh5
  store ptr %t117, ptr %wc5
  store %"std/prelude/iterator:ViewGenerator.00c7c71992d6e1815cd052c47b979cdd" %t115, ptr %l59
  br label %bb27
bb27:
  %t118 = load %"std/prelude/iterator:ViewGenerator.00c7c71992d6e1815cd052c47b979cdd", ptr %l59
  store %"std/prelude/iterator:ViewGenerator.00c7c71992d6e1815cd052c47b979cdd" %t118, ptr %l6
  br label %bb28
bb28:
  %t120 = call { i32, ptr } @std_2fprelude_2fiterator_2estd_2fprelude_2fiterator_3aViewGenerator_3ccompiler_2fast_3aV_Hf179e857cb72c72900f4614cd5df5a25(ptr %s5, ptr %l6)
  %t121 = extractvalue { i32, ptr } %t120, 1
  %t122 = extractvalue { i32, ptr } %t120, 0
  store i32 %t122, ptr %l63
  %t123 = icmp ne i32 %t122, 0
  br i1 %t123, label %bb30, label %ok.124, !prof !99
ok.124:
  store ptr %t121, ptr %l62
  br label %bb29
bb29:
  %t125 = load ptr, ptr %l62, !tbaa !29
  store ptr %t125, ptr %l60, !tbaa !29
  br label %bb32
bb30:
  %t126 = load i32, ptr %l63, !tbaa !23
  %t127 = ashr i32 %t126, 16
  %t129 = icmp eq i32 %t127, 1
  store i1 %t129, ptr %l65, !tbaa !21
  br label %bb31
bb31:
  br label %bb41
bb32:
  %t130 = load ptr, ptr %l60, !tbaa !29
  %t133 = getelementptr %"compiler/ast:VarDecl", ptr %t130, i32 0, i32 0
  %t134 = load { i64, ptr }, ptr %t133, !tbaa !27
  store { i64, ptr } %t134, ptr %l8, !tbaa !27
  store i64 0, ptr %l9, !tbaa !24
  %t136 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t138 = extractvalue { i64, ptr } %t136, 0
  store i64 %t138, ptr %l10, !tbaa !24
  br label %bb33
bb33:
  %t140 = load i64, ptr %l9, !tbaa !24
  %t141 = load i64, ptr %l10, !tbaa !24
  %t144 = icmp slt i64 %t140, %t141
  %t146 = xor i1 %t144, true
  br i1 %t146, label %bb34, label %bb35
bb34:
  br label %bb39
bb35:
  br label %bb36
bb36:
  %t148 = load { i64, ptr }, ptr %l8, !tbaa !27
  store { i64, ptr } %t148, ptr %l74, !tbaa !27
  %t149 = load i64, ptr %l9, !tbaa !24
  %t151 = getelementptr { i64, ptr }, ptr %l74, i32 0, i32 1
  %t152 = load ptr, ptr %t151, !tbaa !27
  %t153 = getelementptr i32, ptr %t152, i64 %t149
  %t154 = load i32, ptr %t153, !tbaa !33
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aNameId_3e_2ePush_3ccompiler_2fsource_3aNameId_3e(ptr %s0, ptr %l2, i32 %t154)
  br label %bb37
bb37:
  br label %bb38
bb38:
  %t159 = load i64, ptr %l9, !tbaa !24
  %t161 = add i64 %t159, 1
  store i64 %t161, ptr %l9, !tbaa !24
  br label %bb33
bb39:
  br label %bb40
bb40:
  br label %bb28
bb41:
  store i32 0, ptr %ws5
  br label %wend5
wend5.c0:
  call void @__olang_scope_close(ptr %s5)
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
  call void @__olang_check_failed(ptr @olang_loc_2a66b784d9289786_f31abe169e6a7bb2)
  unreachable
bb47:
  %t164 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aNameId_3e_2eToArra_H4d02a0b2e27e8f31ffc99daa43750593(ptr %s0, ptr %s0, ptr %l2)
  store { i64, ptr } %t164, ptr %l82
  br label %bb48
bb48:
  %t165 = load { i64, ptr }, ptr %l82, !tbaa !27
  store { i64, ptr } %t165, ptr %l83, !tbaa !27
  %t166 = load { i64, ptr }, ptr %l83, !tbaa !27
  %t167 = extractvalue { i64, ptr } %t166, 0
  store i64 %t167, ptr %l84, !tbaa !24
  %t168 = load i64, ptr %l84, !tbaa !24
  %t169 = mul i64 %t168, 4
  %t170 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t169)
  %t171 = insertvalue { i64, ptr } undef, i64 %t168, 0
  %t172 = insertvalue { i64, ptr } %t171, ptr %t170, 1
  store { i64, ptr } %t172, ptr %l85, !tbaa !27
  %t173 = getelementptr { i64, ptr }, ptr %l85, i32 0, i32 1
  %t174 = load ptr, ptr %t173, !tbaa !27
  %t175 = getelementptr { i64, ptr }, ptr %l83, i32 0, i32 1
  %t176 = load ptr, ptr %t175, !tbaa !27
  %t177 = load i64, ptr %l84, !tbaa !24
  %t178 = mul i64 %t177, 4
  call void @llvm.memmove.p0.p0.i64(ptr %t174, ptr %t176, i64 %t178, i1 false)
  %t179 = load { i64, ptr }, ptr %l85, !tbaa !27
  store { i64, ptr } %t179, ptr %l83, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  %t180 = load { i64, ptr }, ptr %l83, !tbaa !27
  store { i64, ptr } %t180, ptr %rv
  br label %ret
wend5:
  %t181 = load ptr, ptr %wh5
  %t182 = load ptr, ptr %wc5
  %t183 = call ptr @llvm.coro.promise(ptr %t181, i32 8, i1 false)
  %t184 = getelementptr { { i32, ptr }, i32 }, ptr %t183, i32 0, i32 1
  store i32 2, ptr %t184
  %t185 = call { i32, ptr } %t182(ptr %t181, ptr null)
  %t186 = load i32, ptr %ws5
  switch i32 %t186, label %wend5.c0 [ ]
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local ptr @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnDecl(ptr %v0, ptr %v1, ptr %a0, i64 %a1) #0 {
entry:
  %l5 = alloca %"compiler/generic:fnRow"
  %rv = alloca ptr
  br label %start
start:
  br label %bb0
bb0:
  %t3 = getelementptr %"compiler/generic:Program", ptr %a0, i32 0, i32 29
  %t7 = call %"compiler/generic:fnRow" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fgeneric_3afnRow_3e_2eAt_3ccompiler_2fgeneric_3afnRow_3e(ptr %v0, ptr %v1, ptr %t3, i64 %a1)
  store %"compiler/generic:fnRow" %t7, ptr %l5
  br label %bb1
bb1:
  %t8 = getelementptr %"compiler/generic:fnRow", ptr %l5, i32 0, i32 1
  %t9 = load ptr, ptr %t8, !tbaa !29
  store ptr %t9, ptr %rv
  br label %ret
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
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

define dso_local i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnTooDeep(ptr %v0, ptr %a0, i64 %a1, i32 %a2, { i64, [3 x i64] } %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l4 = alloca { i64, ptr }
  %l5 = alloca i64
  %l6 = alloca i64
  %l11 = alloca { i64, ptr }
  %l18 = alloca { i64, ptr }
  %l24 = alloca i64
  %l27 = alloca i1
  %l32 = alloca i1
  %l33 = alloca i32
  %l41 = alloca ptr
  %l42 = alloca { i64, [3 x i64] }
  %l43 = alloca %"compiler/diagmsg:Msg"
  %l44 = alloca i64
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/generic:Program", ptr %t1, i32 0, i32 2
  %t7 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t3, i32 %a2)
  store { i64, ptr } %t7, ptr %l11
  br label %bb1
bb1:
  %t8 = load { i64, ptr }, ptr %l11, !tbaa !27
  store { i64, ptr } %t8, ptr %l4, !tbaa !27
  store i64 0, ptr %l5, !tbaa !24
  %t9 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t11 = extractvalue { i64, ptr } %t9, 0
  store i64 %t11, ptr %l6, !tbaa !24
  br label %bb2
bb2:
  %t13 = load i64, ptr %l5, !tbaa !24
  %t14 = load i64, ptr %l6, !tbaa !24
  %t17 = icmp slt i64 %t13, %t14
  %t19 = xor i1 %t17, true
  br i1 %t19, label %bb3, label %bb4
bb3:
  br label %bb21
bb4:
  br label %bb5
bb5:
  %t21 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t21, ptr %l18, !tbaa !27
  %t22 = load i64, ptr %l5, !tbaa !24
  %t24 = getelementptr { i64, ptr }, ptr %l18, i32 0, i32 1
  %t25 = load ptr, ptr %t24, !tbaa !27
  %t26 = getelementptr i32, ptr %t25, i64 %t22
  %t27 = load i32, ptr %t26, !tbaa !33
  %t29 = load ptr, ptr %l0, !tbaa !29
  %t31 = getelementptr %"compiler/generic:Program", ptr %t29, i32 0, i32 2
  %t35 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDepth(ptr %v0, ptr %t31, i32 %t27)
  store i64 %t35, ptr %l24
  br label %bb6
bb6:
  %t36 = load i64, ptr @G_2ecompiler_2fgeneric_2eMaxDepth, !tbaa !24
  %t37 = load i64, ptr %l24, !tbaa !24
  %t39 = icmp sgt i64 %t37, %t36
  br i1 %t39, label %bb7, label %bb8
bb7:
  %t41 = load ptr, ptr %l0, !tbaa !29
  %t43 = getelementptr %"compiler/generic:Program", ptr %t41, i32 0, i32 47
  %t44 = load i64, ptr %l1, !tbaa !24
  %t46 = sub i64 -1, %t44
  %t49 = call { i32, i1 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2eGet_3cI64_2c_20Bool_3e(ptr %v0, ptr %t43, i64 %t46)
  %t50 = extractvalue { i32, i1 } %t49, 1
  %t51 = extractvalue { i32, i1 } %t49, 0
  store i32 %t51, ptr %l33
  %t52 = icmp ne i32 %t51, 0
  br i1 %t52, label %bb10, label %ok.53, !prof !99
ok.53:
  store i1 %t50, ptr %l32
  br label %bb9
bb8:
  br label %bb19
bb9:
  %t54 = load i1, ptr %l32, !tbaa !21
  store i1 %t54, ptr %l27, !tbaa !21
  br label %bb12
bb10:
  br label %bb11
bb11:
  store i1 false, ptr %l27, !tbaa !21
  br label %bb12
bb12:
  %t55 = load i1, ptr %l27, !tbaa !21
  %t56 = xor i1 %t55, true
  br i1 %t56, label %bb13, label %bb14
bb13:
  %t58 = load ptr, ptr %l0, !tbaa !29
  %t60 = getelementptr %"compiler/generic:Program", ptr %t58, i32 0, i32 47
  %t61 = load i64, ptr %l1, !tbaa !24
  %t63 = sub i64 -1, %t61
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2ePut_3cI64_2c_20Bool_3e(ptr %v0, ptr %t60, i64 %t63, i1 true)
  br label %bb15
bb14:
  br label %bb18
bb15:
  %t66 = load ptr, ptr %l0, !tbaa !29
  %t68 = getelementptr %"compiler/generic:Program", ptr %t66, i32 0, i32 0
  %t69 = load ptr, ptr %t68, !tbaa !29
  %t71 = getelementptr %"compiler/load:Loader", ptr %t69, i32 0, i32 4
  %t72 = load ptr, ptr %t71, !tbaa !29
  store ptr %t72, ptr %l41, !tbaa !29
  store { i64, [3 x i64] } %a3, ptr %l42
  %t74 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eUnboundedInstantiation(ptr %v0)
  store %"compiler/diagmsg:Msg" %t74, ptr %l43
  br label %bb16
bb16:
  %t75 = load ptr, ptr %l41, !tbaa !29
  %t76 = load { i64, [3 x i64] }, ptr %l42
  %t77 = load %"compiler/diagmsg:Msg", ptr %l43
  %t78 = call i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eError(ptr %v0, ptr %v0, ptr %t75, { i64, [3 x i64] } %t76, %"compiler/diagmsg:Msg" %t77)
  store i64 %t78, ptr %l44
  br label %bb17
bb17:
  br label %bb18
bb18:
  store i1 true, ptr %rv
  br label %ret
bb19:
  br label %bb20
bb20:
  %t80 = load i64, ptr %l5, !tbaa !24
  %t82 = add i64 %t80, 1
  store i64 %t82, ptr %l5, !tbaa !24
  br label %bb2
bb21:
  store i1 false, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eGlobalStorage(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, ptr %a2, i32 %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l4 = alloca i32
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %l15 = alloca i32
  %l17 = alloca i1
  %l25 = alloca i64
  %l28 = alloca i64
  %l47 = alloca { i64, ptr }
  %l52 = alloca i1
  %l62 = alloca { i64, ptr }
  %l66 = alloca i32
  %rv = alloca i32
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store ptr %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load ptr, ptr %l1, !tbaa !29
  %t3 = load ptr, ptr %l2, !tbaa !29
  %t5 = getelementptr %"compiler/ast:VarDecl", ptr %t3, i32 0, i32 2
  %t6 = load ptr, ptr %t5, !tbaa !29
  %t10 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eResolve(ptr %v0, ptr %v1, ptr %v2, ptr %t1, ptr %t2, ptr %t6)
  store i32 %t10, ptr %l15
  br label %bb1
bb1:
  %t11 = load i32, ptr %l15, !tbaa !23
  store i32 %t11, ptr %l4, !tbaa !23
  %t12 = load ptr, ptr %l2, !tbaa !29
  %t14 = call i1 @compiler_2fgeneric_2emutableGlobal(ptr %v2, ptr %t12)
  store i1 %t14, ptr %l17
  br label %bb2
bb2:
  %t15 = load i1, ptr %l17, !tbaa !21
  br i1 %t15, label %bb3, label %bb4
bb3:
  %t16 = load i32, ptr %l4, !tbaa !23
  store i32 %t16, ptr %rv
  br label %ret
bb4:
  br label %bb5
bb5:
  store i64 0, ptr %l5, !tbaa !24
  %t18 = load ptr, ptr %l2, !tbaa !29
  %t20 = getelementptr %"compiler/ast:VarDecl", ptr %t18, i32 0, i32 0
  %t21 = load { i64, ptr }, ptr %t20, !tbaa !27
  %t23 = extractvalue { i64, ptr } %t21, 0
  store i64 %t23, ptr %l6, !tbaa !24
  store i64 1, ptr %l7, !tbaa !24
  %t25 = load i64, ptr %l6, !tbaa !24
  %t26 = load i64, ptr %l5, !tbaa !24
  %t29 = icmp sgt i64 %t25, %t26
  br i1 %t29, label %bb6, label %bb7
bb6:
  %t31 = load i64, ptr %l7, !tbaa !24
  %t33 = icmp sgt i64 %t31, 0
  br i1 %t33, label %bb8, label %bb9
bb7:
  store i64 0, ptr %l25, !tbaa !24
  br label %bb11
bb8:
  %t35 = load i64, ptr %l6, !tbaa !24
  %t36 = load i64, ptr %l5, !tbaa !24
  %t39 = sub i64 %t35, %t36
  %t40 = load i64, ptr %l7, !tbaa !24
  %t43 = add i64 %t39, %t40
  %t45 = sub i64 %t43, 1
  %t46 = load i64, ptr %l7, !tbaa !24
  %t49 = sdiv i64 %t45, %t46
  store i64 %t49, ptr %l28, !tbaa !24
  br label %bb10
bb9:
  store i64 0, ptr %l28, !tbaa !24
  br label %bb10
bb10:
  %t51 = load i64, ptr %l28, !tbaa !24
  store i64 %t51, ptr %l25, !tbaa !24
  br label %bb11
bb11:
  %t52 = load i64, ptr %l25, !tbaa !24
  store i64 %t52, ptr %l8, !tbaa !24
  store i64 0, ptr %l9, !tbaa !24
  br label %bb12
bb12:
  %t53 = load i64, ptr %l9, !tbaa !24
  %t54 = load i64, ptr %l8, !tbaa !24
  %t57 = icmp slt i64 %t53, %t54
  %t59 = xor i1 %t57, true
  br i1 %t59, label %bb13, label %bb14
bb13:
  br label %bb24
bb14:
  br label %bb15
bb15:
  %t61 = load i64, ptr %l5, !tbaa !24
  %t62 = load i64, ptr %l9, !tbaa !24
  %t63 = load i64, ptr %l7, !tbaa !24
  %t66 = mul i64 %t62, %t63
  %t69 = add i64 %t61, %t66
  store i64 %t69, ptr %l10, !tbaa !24
  %t71 = load ptr, ptr %l2, !tbaa !29
  %t73 = getelementptr %"compiler/ast:VarDecl", ptr %t71, i32 0, i32 0
  %t74 = load { i64, ptr }, ptr %t73, !tbaa !27
  store { i64, ptr } %t74, ptr %l47, !tbaa !27
  %t75 = load i64, ptr %l10, !tbaa !24
  %t77 = getelementptr { i64, ptr }, ptr %l47, i32 0, i32 1
  %t78 = load ptr, ptr %t77, !tbaa !27
  %t79 = getelementptr i32, ptr %t78, i64 %t75
  %t80 = load i32, ptr %t79, !tbaa !33
  %t84 = icmp eq i32 %t80, %a3
  br i1 %t84, label %bb16, label %bb17
bb16:
  %t86 = load i64, ptr %l10, !tbaa !24
  %t87 = load ptr, ptr %l2, !tbaa !29
  %t89 = getelementptr %"compiler/ast:VarDecl", ptr %t87, i32 0, i32 3
  %t90 = load { i64, ptr }, ptr %t89, !tbaa !27
  %t92 = extractvalue { i64, ptr } %t90, 0
  %t95 = icmp slt i64 %t86, %t92
  store i1 %t95, ptr %l52, !tbaa !21
  br label %bb18
bb17:
  store i1 false, ptr %l52, !tbaa !21
  br label %bb18
bb18:
  %t97 = load i1, ptr %l52, !tbaa !21
  br i1 %t97, label %bb19, label %bb20
bb19:
  %t98 = load ptr, ptr %l0, !tbaa !29
  %t99 = load ptr, ptr %l1, !tbaa !29
  %t100 = load i32, ptr %l4, !tbaa !23
  %t101 = load ptr, ptr %l2, !tbaa !29
  %t103 = getelementptr %"compiler/ast:VarDecl", ptr %t101, i32 0, i32 3
  %t104 = load { i64, ptr }, ptr %t103, !tbaa !27
  store { i64, ptr } %t104, ptr %l62, !tbaa !27
  %t105 = load i64, ptr %l10, !tbaa !24
  %t107 = getelementptr { i64, ptr }, ptr %l62, i32 0, i32 1
  %t108 = load ptr, ptr %t107, !tbaa !27
  %t109 = getelementptr ptr, ptr %t108, i64 %t105
  %t110 = load ptr, ptr %t109, !tbaa !39
  %t116 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eStorageOf(ptr %v0, ptr %v1, ptr %v2, ptr %t98, ptr %t99, i32 %t100, ptr %t110)
  store i32 %t116, ptr %l66
  br label %bb21
bb20:
  br label %bb22
bb21:
  %t117 = load i32, ptr %l66, !tbaa !23
  store i32 %t117, ptr %rv
  br label %ret
bb22:
  br label %bb23
bb23:
  %t118 = load i64, ptr %l9, !tbaa !24
  %t120 = add i64 %t118, 1
  store i64 %t120, ptr %l9, !tbaa !24
  br label %bb12
bb24:
  %t122 = load i32, ptr %l4, !tbaa !23
  store i32 %t122, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eHasErrParam(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca i64
  %l8 = alloca i64
  %l11 = alloca i1
  %l12 = alloca ptr
  %l14 = alloca i64
  %l17 = alloca i1
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load i32, ptr %l1, !tbaa !23
  call void @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2edeclVars(ptr %v0, ptr %t1, i32 %t2)
  br label %bb1
bb1:
  %t5 = load ptr, ptr %l0, !tbaa !29
  %t7 = getelementptr %"compiler/generic:Program", ptr %t5, i32 0, i32 2
  %t8 = load i32, ptr %l1, !tbaa !23
  %t11 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclParams(ptr %v0, ptr %t7, i32 %t8)
  store i64 %t11, ptr %l8
  br label %bb2
bb2:
  %t12 = load i64, ptr %l8, !tbaa !24
  store i64 %t12, ptr %l2, !tbaa !24
  %t13 = load i64, ptr %l2, !tbaa !24
  %t15 = icmp sgt i64 %t13, 0
  br i1 %t15, label %bb3, label %bb4
bb3:
  %t17 = load ptr, ptr %l0, !tbaa !29
  store ptr %t17, ptr %l12, !tbaa !29
  %t18 = load i32, ptr %l1, !tbaa !23
  %t20 = call i64 @compiler_2fgeneric_2eDeclOwner(i32 %t18)
  store i64 %t20, ptr %l14
  br label %bb5
bb4:
  store i1 false, ptr %l11, !tbaa !21
  br label %bb7
bb5:
  %t21 = load i64, ptr %l2, !tbaa !24
  %t23 = sub i64 %t21, 1
  %t24 = load ptr, ptr %l12, !tbaa !29
  %t25 = load i64, ptr %l14, !tbaa !24
  %t27 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eErrVarAt(ptr %v0, ptr %t24, i64 %t25, i64 %t23)
  store i1 %t27, ptr %l17
  br label %bb6
bb6:
  %t28 = load i1, ptr %l17, !tbaa !21
  store i1 %t28, ptr %l11, !tbaa !21
  br label %bb7
bb7:
  %t29 = load i1, ptr %l11, !tbaa !21
  store i1 %t29, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eHasHash(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l4 = alloca i1
  %rv = alloca i1
  br label %start
start:
  br label %bb0
bb0:
  %t5 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2ehasHash(ptr %v0, ptr %a0, i32 %a1, i64 0)
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

define dso_local i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eInfer(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1, ptr %a2, ptr %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca ptr
  %l4 = alloca i32
  %l5 = alloca ptr
  %l6 = alloca i32
  %l7 = alloca ptr
  %l8 = alloca %"compiler/source:Span"
  %l9 = alloca i32
  %l10 = alloca ptr
  %l11 = alloca { i64, ptr }
  %l12 = alloca { i64, ptr }
  %l13 = alloca ptr
  %l14 = alloca { i64, ptr }
  %l15 = alloca ptr
  %l16 = alloca { i64, ptr }
  %l17 = alloca ptr
  %l18 = alloca ptr
  %l19 = alloca i32
  %l20 = alloca ptr
  %l21 = alloca ptr
  %l25 = alloca i32
  %l26 = alloca ptr
  %l27 = alloca i1
  %l34 = alloca i32
  %l35 = alloca ptr
  %l36 = alloca i1
  %l46 = alloca i32
  %l47 = alloca ptr
  %l48 = alloca i1
  %l60 = alloca i32
  %l61 = alloca ptr
  %l62 = alloca i1
  %l69 = alloca i32
  %l72 = alloca i32
  %l73 = alloca i32
  %l78 = alloca i32
  %l79 = alloca ptr
  %l80 = alloca i1
  %l87 = alloca ptr
  %l88 = alloca ptr
  %l89 = alloca ptr
  %l93 = alloca i32
  %l95 = alloca i32
  %l96 = alloca ptr
  %l97 = alloca i1
  %l106 = alloca i32
  %l107 = alloca ptr
  %l108 = alloca i1
  %l119 = alloca i32
  %l120 = alloca ptr
  %l121 = alloca i1
  %l133 = alloca i32
  %l134 = alloca ptr
  %l135 = alloca i1
  %l145 = alloca i32
  %l146 = alloca ptr
  %l147 = alloca i1
  %l156 = alloca i32
  %l157 = alloca ptr
  %l158 = alloca i1
  %l173 = alloca i32
  %rv = alloca i32
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store ptr %a2, ptr %l2
  store ptr %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l3, !tbaa !29
  %t3 = icmp eq ptr %t1, null
  br i1 %t3, label %bb1, label %bb2
bb1:
  %t5 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  store i32 %t5, ptr %rv
  br label %ret
bb2:
  br label %bb3
bb3:
  %t7 = load ptr, ptr %l3, !tbaa !29
  store ptr %t7, ptr %l26, !tbaa !29
  store i1 false, ptr %l27, !tbaa !21
  %t8 = load ptr, ptr %l26, !tbaa !29
  %t9 = icmp ne ptr %t8, null
  br i1 %t9, label %bb4, label %bb5
bb4:
  %t11 = load ptr, ptr %l26, !tbaa !29
  %t12 = load i64, ptr %t11, !range !{i64 0, i64 28}
  %t14 = icmp eq i64 %t12, 1
  store i1 %t14, ptr %l27, !tbaa !21
  br label %bb5
bb5:
  %t15 = load i1, ptr %l27, !tbaa !21
  br i1 %t15, label %bb6, label %bb7
bb6:
  %t16 = load ptr, ptr %l3, !tbaa !29
  %t18 = getelementptr { i64, [4 x i64] }, ptr %t16, i32 0, i32 1
  %t19 = getelementptr { %"compiler/source:Span", i32 }, ptr %t18, i32 0, i32 1
  %t20 = load i32, ptr %t19, !range !{i32 0, i32 113}
  store i32 %t20, ptr %l4
  br label %bb8
bb7:
  br label %bb10
bb8:
  %t22 = load ptr, ptr %l0, !tbaa !29
  %t23 = load i32, ptr %l4, !range !{i32 0, i32 113}
  %t26 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eliteralType(ptr %v0, ptr %t22, i32 %t23)
  store i32 %t26, ptr %l34
  br label %bb9
bb9:
  %t27 = load i32, ptr %l34, !tbaa !23
  store i32 %t27, ptr %l25, !tbaa !23
  br label %bb90
bb10:
  %t28 = load ptr, ptr %l3, !tbaa !29
  store ptr %t28, ptr %l35, !tbaa !29
  store i1 false, ptr %l36, !tbaa !21
  %t29 = load ptr, ptr %l35, !tbaa !29
  %t30 = icmp ne ptr %t29, null
  br i1 %t30, label %bb11, label %bb12
bb11:
  %t32 = load ptr, ptr %l35, !tbaa !29
  %t33 = load i64, ptr %t32, !range !{i64 0, i64 28}
  %t35 = icmp eq i64 %t33, 2
  store i1 %t35, ptr %l36, !tbaa !21
  br label %bb12
bb12:
  %t36 = load i1, ptr %l36, !tbaa !21
  br i1 %t36, label %bb13, label %bb14
bb13:
  %t37 = load ptr, ptr %l3, !tbaa !29
  %t39 = getelementptr { i64, [4 x i64] }, ptr %t37, i32 0, i32 1
  %t40 = getelementptr { %"compiler/source:Span", ptr }, ptr %t39, i32 0, i32 1
  %t41 = load ptr, ptr %t40
  store ptr %t41, ptr %l5, !tbaa !29
  br label %bb15
bb14:
  br label %bb17
bb15:
  %t43 = load ptr, ptr %l0, !tbaa !29
  %t44 = load ptr, ptr %l1, !tbaa !29
  %t45 = load ptr, ptr %l2, !tbaa !29
  %t46 = load ptr, ptr %l5, !tbaa !29
  %t52 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eInfer(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %t43, ptr %t44, ptr %t45, ptr %t46)
  store i32 %t52, ptr %l46
  br label %bb16
bb16:
  %t53 = load i32, ptr %l46, !tbaa !23
  store i32 %t53, ptr %l25, !tbaa !23
  br label %bb90
bb17:
  %t54 = load ptr, ptr %l3, !tbaa !29
  store ptr %t54, ptr %l47, !tbaa !29
  store i1 false, ptr %l48, !tbaa !21
  %t55 = load ptr, ptr %l47, !tbaa !29
  %t56 = icmp ne ptr %t55, null
  br i1 %t56, label %bb18, label %bb19
bb18:
  %t58 = load ptr, ptr %l47, !tbaa !29
  %t59 = load i64, ptr %t58, !range !{i64 0, i64 28}
  %t61 = icmp eq i64 %t59, 3
  store i1 %t61, ptr %l48, !tbaa !21
  br label %bb19
bb19:
  %t62 = load i1, ptr %l48, !tbaa !21
  br i1 %t62, label %bb20, label %bb21
bb20:
  %t63 = load ptr, ptr %l3, !tbaa !29
  %t65 = getelementptr { i64, [4 x i64] }, ptr %t63, i32 0, i32 1
  %t66 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t65, i32 0, i32 1
  %t67 = load i32, ptr %t66, !range !{i32 0, i32 113}
  store i32 %t67, ptr %l6
  %t69 = load ptr, ptr %l3, !tbaa !29
  %t71 = getelementptr { i64, [4 x i64] }, ptr %t69, i32 0, i32 1
  %t72 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t71, i32 0, i32 2
  %t73 = load ptr, ptr %t72
  store ptr %t73, ptr %l7, !tbaa !29
  br label %bb22
bb21:
  br label %bb24
bb22:
  %t75 = load ptr, ptr %l0, !tbaa !29
  %t76 = load ptr, ptr %l1, !tbaa !29
  %t77 = load ptr, ptr %l2, !tbaa !29
  %t78 = load i32, ptr %l6, !range !{i32 0, i32 113}
  %t79 = load ptr, ptr %l7, !tbaa !29
  %t85 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eunaryType(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %t75, ptr %t76, ptr %t77, i32 %t78, ptr %t79)
  store i32 %t85, ptr %l60
  br label %bb23
bb23:
  %t86 = load i32, ptr %l60, !tbaa !23
  store i32 %t86, ptr %l25, !tbaa !23
  br label %bb90
bb24:
  %t87 = load ptr, ptr %l3, !tbaa !29
  store ptr %t87, ptr %l61, !tbaa !29
  store i1 false, ptr %l62, !tbaa !21
  %t88 = load ptr, ptr %l61, !tbaa !29
  %t89 = icmp ne ptr %t88, null
  br i1 %t89, label %bb25, label %bb26
bb25:
  %t91 = load ptr, ptr %l61, !tbaa !29
  %t92 = load i64, ptr %t91, !range !{i64 0, i64 28}
  %t94 = icmp eq i64 %t92, 0
  store i1 %t94, ptr %l62, !tbaa !21
  br label %bb26
bb26:
  %t95 = load i1, ptr %l62, !tbaa !21
  br i1 %t95, label %bb27, label %bb28
bb27:
  %t96 = load ptr, ptr %l3, !tbaa !29
  %t98 = getelementptr { i64, [4 x i64] }, ptr %t96, i32 0, i32 1
  %t99 = getelementptr { %"compiler/source:Span", i32 }, ptr %t98, i32 0, i32 0
  %t100 = load %"compiler/source:Span", ptr %t99
  store %"compiler/source:Span" %t100, ptr %l8
  %t102 = load ptr, ptr %l3, !tbaa !29
  %t104 = getelementptr { i64, [4 x i64] }, ptr %t102, i32 0, i32 1
  %t105 = getelementptr { %"compiler/source:Span", i32 }, ptr %t104, i32 0, i32 1
  %t106 = load i32, ptr %t105
  store i32 %t106, ptr %l9, !tbaa !23
  br label %bb29
bb28:
  br label %bb35
bb29:
  %t108 = load ptr, ptr %l2, !tbaa !29
  %t109 = load i32, ptr %l9, !tbaa !23
  %t112 = call { i32, i32 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fsource_3aNameId_2c_20compil_Hfd0413fe7fd4e5914f6cad5b418b7a6d(ptr %v2, ptr %t108, i32 %t109)
  %t113 = extractvalue { i32, i32 } %t112, 1
  %t114 = extractvalue { i32, i32 } %t112, 0
  store i32 %t114, ptr %l73
  %t115 = icmp ne i32 %t114, 0
  br i1 %t115, label %bb31, label %ok.116, !prof !99
ok.116:
  store i32 %t113, ptr %l72
  br label %bb30
bb30:
  %t117 = load i32, ptr %l72, !tbaa !23
  store i32 %t117, ptr %l69, !tbaa !23
  br label %bb34
bb31:
  br label %bb32
bb32:
  %t118 = load ptr, ptr %l0, !tbaa !29
  %t119 = load ptr, ptr %l1, !tbaa !29
  %t120 = load %"compiler/source:Span", ptr %l8
  %t121 = load i32, ptr %l9, !tbaa !23
  %t126 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2enameType(ptr %v0, ptr %v1, ptr %t118, ptr %t119, %"compiler/source:Span" %t120, i32 %t121)
  store i32 %t126, ptr %l78
  br label %bb33
bb33:
  %t127 = load i32, ptr %l78, !tbaa !23
  store i32 %t127, ptr %l69, !tbaa !23
  br label %bb34
bb34:
  %t128 = load i32, ptr %l69, !tbaa !23
  store i32 %t128, ptr %l25, !tbaa !23
  br label %bb90
bb35:
  %t129 = load ptr, ptr %l3, !tbaa !29
  store ptr %t129, ptr %l79, !tbaa !29
  store i1 false, ptr %l80, !tbaa !21
  %t130 = load ptr, ptr %l79, !tbaa !29
  %t131 = icmp ne ptr %t130, null
  br i1 %t131, label %bb36, label %bb37
bb36:
  %t133 = load ptr, ptr %l79, !tbaa !29
  %t134 = load i64, ptr %t133, !range !{i64 0, i64 28}
  %t136 = icmp eq i64 %t134, 16
  store i1 %t136, ptr %l80, !tbaa !21
  br label %bb37
bb37:
  %t137 = load i1, ptr %l80, !tbaa !21
  br i1 %t137, label %bb38, label %bb39
bb38:
  %t138 = load ptr, ptr %l3, !tbaa !29
  %t140 = getelementptr { i64, [4 x i64] }, ptr %t138, i32 0, i32 1
  %t141 = getelementptr { %"compiler/source:Span", ptr, { i64, ptr } }, ptr %t140, i32 0, i32 1
  %t142 = load ptr, ptr %t141
  store ptr %t142, ptr %l10, !tbaa !29
  %t144 = load ptr, ptr %l3, !tbaa !29
  %t146 = getelementptr { i64, [4 x i64] }, ptr %t144, i32 0, i32 1
  %t147 = getelementptr { %"compiler/source:Span", ptr, { i64, ptr } }, ptr %t146, i32 0, i32 2
  %t148 = load { i64, ptr }, ptr %t147
  store { i64, ptr } %t148, ptr %l11, !tbaa !27
  br label %bb40
bb39:
  br label %bb43
bb40:
  %t150 = load ptr, ptr %l0, !tbaa !29
  store ptr %t150, ptr %l87, !tbaa !29
  %t151 = load ptr, ptr %l1, !tbaa !29
  store ptr %t151, ptr %l88, !tbaa !29
  %t152 = load ptr, ptr %l2, !tbaa !29
  store ptr %t152, ptr %l89, !tbaa !29
  %t153 = load ptr, ptr %l0, !tbaa !29
  %t154 = load ptr, ptr %l1, !tbaa !29
  %t155 = load ptr, ptr %l10, !tbaa !29
  %t159 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eResolve(ptr %v0, ptr %v1, ptr %v3, ptr %t153, ptr %t154, ptr %t155)
  store i32 %t159, ptr %l93
  br label %bb41
bb41:
  %t160 = load { i64, ptr }, ptr %l11, !tbaa !27
  %t161 = load ptr, ptr %l87, !tbaa !29
  %t162 = load ptr, ptr %l88, !tbaa !29
  %t163 = load ptr, ptr %l89, !tbaa !29
  %t164 = load i32, ptr %l93, !tbaa !23
  %t166 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eliteralMade(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %t161, ptr %t162, ptr %t163, i32 %t164, { i64, ptr } %t160)
  store i32 %t166, ptr %l95
  br label %bb42
bb42:
  %t167 = load i32, ptr %l95, !tbaa !23
  store i32 %t167, ptr %l25, !tbaa !23
  br label %bb90
bb43:
  %t168 = load ptr, ptr %l3, !tbaa !29
  store ptr %t168, ptr %l96, !tbaa !29
  store i1 false, ptr %l97, !tbaa !21
  %t169 = load ptr, ptr %l96, !tbaa !29
  %t170 = icmp ne ptr %t169, null
  br i1 %t170, label %bb44, label %bb45
bb44:
  %t172 = load ptr, ptr %l96, !tbaa !29
  %t173 = load i64, ptr %t172, !range !{i64 0, i64 28}
  %t175 = icmp eq i64 %t173, 17
  store i1 %t175, ptr %l97, !tbaa !21
  br label %bb45
bb45:
  %t176 = load i1, ptr %l97, !tbaa !21
  br i1 %t176, label %bb46, label %bb47
bb46:
  %t177 = load ptr, ptr %l3, !tbaa !29
  %t179 = getelementptr { i64, [4 x i64] }, ptr %t177, i32 0, i32 1
  %t180 = getelementptr { %"compiler/source:Span", { i64, ptr } }, ptr %t179, i32 0, i32 1
  %t181 = load { i64, ptr }, ptr %t180
  store { i64, ptr } %t181, ptr %l12, !tbaa !27
  br label %bb48
bb47:
  br label %bb50
bb48:
  %t183 = load ptr, ptr %l0, !tbaa !29
  %t184 = load ptr, ptr %l1, !tbaa !29
  %t185 = load ptr, ptr %l2, !tbaa !29
  %t186 = load { i64, ptr }, ptr %l12, !tbaa !27
  %t191 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eownLiteral(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %t183, ptr %t184, ptr %t185, { i64, ptr } %t186)
  store i32 %t191, ptr %l106
  br label %bb49
bb49:
  %t192 = load i32, ptr %l106, !tbaa !23
  store i32 %t192, ptr %l25, !tbaa !23
  br label %bb90
bb50:
  %t193 = load ptr, ptr %l3, !tbaa !29
  store ptr %t193, ptr %l107, !tbaa !29
  store i1 false, ptr %l108, !tbaa !21
  %t194 = load ptr, ptr %l107, !tbaa !29
  %t195 = icmp ne ptr %t194, null
  br i1 %t195, label %bb51, label %bb52
bb51:
  %t197 = load ptr, ptr %l107, !tbaa !29
  %t198 = load i64, ptr %t197, !range !{i64 0, i64 28}
  %t200 = icmp eq i64 %t198, 13
  store i1 %t200, ptr %l108, !tbaa !21
  br label %bb52
bb52:
  %t201 = load i1, ptr %l108, !tbaa !21
  br i1 %t201, label %bb53, label %bb54
bb53:
  %t202 = load ptr, ptr %l3, !tbaa !29
  %t204 = getelementptr { i64, [4 x i64] }, ptr %t202, i32 0, i32 1
  %t205 = getelementptr { %"compiler/source:Span", ptr, { i64, ptr } }, ptr %t204, i32 0, i32 1
  %t206 = load ptr, ptr %t205
  store ptr %t206, ptr %l13, !tbaa !29
  %t208 = load ptr, ptr %l3, !tbaa !29
  %t210 = getelementptr { i64, [4 x i64] }, ptr %t208, i32 0, i32 1
  %t211 = getelementptr { %"compiler/source:Span", ptr, { i64, ptr } }, ptr %t210, i32 0, i32 2
  %t212 = load { i64, ptr }, ptr %t211
  store { i64, ptr } %t212, ptr %l14, !tbaa !27
  br label %bb55
bb54:
  br label %bb57
bb55:
  %t214 = load ptr, ptr %l0, !tbaa !29
  %t215 = load ptr, ptr %l1, !tbaa !29
  %t216 = load ptr, ptr %l13, !tbaa !29
  %t217 = load { i64, ptr }, ptr %l14, !tbaa !27
  %t222 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eliteralOf(ptr %v0, ptr %v1, ptr %v3, ptr %v3, ptr %t214, ptr %t215, ptr %t216, { i64, ptr } %t217)
  store i32 %t222, ptr %l119
  br label %bb56
bb56:
  %t223 = load i32, ptr %l119, !tbaa !23
  store i32 %t223, ptr %l25, !tbaa !23
  br label %bb90
bb57:
  %t224 = load ptr, ptr %l3, !tbaa !29
  store ptr %t224, ptr %l120, !tbaa !29
  store i1 false, ptr %l121, !tbaa !21
  %t225 = load ptr, ptr %l120, !tbaa !29
  %t226 = icmp ne ptr %t225, null
  br i1 %t226, label %bb58, label %bb59
bb58:
  %t228 = load ptr, ptr %l120, !tbaa !29
  %t229 = load i64, ptr %t228, !range !{i64 0, i64 28}
  %t231 = icmp eq i64 %t229, 10
  store i1 %t231, ptr %l121, !tbaa !21
  br label %bb59
bb59:
  %t232 = load i1, ptr %l121, !tbaa !21
  br i1 %t232, label %bb60, label %bb61
bb60:
  %t233 = load ptr, ptr %l3, !tbaa !29
  %t235 = getelementptr { i64, [4 x i64] }, ptr %t233, i32 0, i32 1
  %t236 = getelementptr { %"compiler/source:Span", ptr, { i64, ptr } }, ptr %t235, i32 0, i32 1
  %t237 = load ptr, ptr %t236
  store ptr %t237, ptr %l15, !tbaa !29
  %t239 = load ptr, ptr %l3, !tbaa !29
  %t241 = getelementptr { i64, [4 x i64] }, ptr %t239, i32 0, i32 1
  %t242 = getelementptr { %"compiler/source:Span", ptr, { i64, ptr } }, ptr %t241, i32 0, i32 2
  %t243 = load { i64, ptr }, ptr %t242
  store { i64, ptr } %t243, ptr %l16, !tbaa !27
  br label %bb62
bb61:
  br label %bb64
bb62:
  %t245 = load ptr, ptr %l0, !tbaa !29
  %t246 = load ptr, ptr %l1, !tbaa !29
  %t247 = load ptr, ptr %l2, !tbaa !29
  %t248 = load ptr, ptr %l15, !tbaa !29
  %t249 = load { i64, ptr }, ptr %l16, !tbaa !27
  %t255 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2emadeType(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v3, ptr %t245, ptr %t246, ptr %t247, ptr %t248, { i64, ptr } %t249)
  store i32 %t255, ptr %l133
  br label %bb63
bb63:
  %t256 = load i32, ptr %l133, !tbaa !23
  store i32 %t256, ptr %l25, !tbaa !23
  br label %bb90
bb64:
  %t257 = load ptr, ptr %l3, !tbaa !29
  store ptr %t257, ptr %l134, !tbaa !29
  store i1 false, ptr %l135, !tbaa !21
  %t258 = load ptr, ptr %l134, !tbaa !29
  %t259 = icmp ne ptr %t258, null
  br i1 %t259, label %bb65, label %bb66
bb65:
  %t261 = load ptr, ptr %l134, !tbaa !29
  %t262 = load i64, ptr %t261, !range !{i64 0, i64 28}
  %t264 = icmp eq i64 %t262, 19
  store i1 %t264, ptr %l135, !tbaa !21
  br label %bb66
bb66:
  %t265 = load i1, ptr %l135, !tbaa !21
  br i1 %t265, label %bb67, label %bb68
bb67:
  %t266 = load ptr, ptr %l3, !tbaa !29
  %t268 = getelementptr { i64, [4 x i64] }, ptr %t266, i32 0, i32 1
  %t269 = getelementptr { %"compiler/source:Span", ptr, { i64, ptr } }, ptr %t268, i32 0, i32 1
  %t270 = load ptr, ptr %t269
  store ptr %t270, ptr %l17, !tbaa !29
  br label %bb69
bb68:
  br label %bb71
bb69:
  %t272 = load ptr, ptr %l0, !tbaa !29
  %t273 = load ptr, ptr %l1, !tbaa !29
  %t274 = load ptr, ptr %l2, !tbaa !29
  %t275 = load ptr, ptr %l17, !tbaa !29
  %t281 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eInfer(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %t272, ptr %t273, ptr %t274, ptr %t275)
  store i32 %t281, ptr %l145
  br label %bb70
bb70:
  %t282 = load i32, ptr %l145, !tbaa !23
  store i32 %t282, ptr %l25, !tbaa !23
  br label %bb90
bb71:
  %t283 = load ptr, ptr %l3, !tbaa !29
  store ptr %t283, ptr %l146, !tbaa !29
  store i1 false, ptr %l147, !tbaa !21
  %t284 = load ptr, ptr %l146, !tbaa !29
  %t285 = icmp ne ptr %t284, null
  br i1 %t285, label %bb72, label %bb73
bb72:
  %t287 = load ptr, ptr %l146, !tbaa !29
  %t288 = load i64, ptr %t287, !range !{i64 0, i64 28}
  %t290 = icmp eq i64 %t288, 9
  store i1 %t290, ptr %l147, !tbaa !21
  br label %bb73
bb73:
  %t291 = load i1, ptr %l147, !tbaa !21
  br i1 %t291, label %bb74, label %bb75
bb74:
  %t292 = load ptr, ptr %l3, !tbaa !29
  %t294 = getelementptr { i64, [4 x i64] }, ptr %t292, i32 0, i32 1
  %t295 = getelementptr { %"compiler/source:Span", ptr, ptr }, ptr %t294, i32 0, i32 2
  %t296 = load ptr, ptr %t295
  store ptr %t296, ptr %l18, !tbaa !29
  br label %bb76
bb75:
  br label %bb78
bb76:
  %t298 = load ptr, ptr %l0, !tbaa !29
  %t299 = load ptr, ptr %l1, !tbaa !29
  %t300 = load ptr, ptr %l18, !tbaa !29
  %t305 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eResolve(ptr %v0, ptr %v1, ptr %v3, ptr %t298, ptr %t299, ptr %t300)
  store i32 %t305, ptr %l156
  br label %bb77
bb77:
  %t306 = load i32, ptr %l156, !tbaa !23
  store i32 %t306, ptr %l25, !tbaa !23
  br label %bb90
bb78:
  %t307 = load ptr, ptr %l3, !tbaa !29
  store ptr %t307, ptr %l157, !tbaa !29
  store i1 false, ptr %l158, !tbaa !21
  %t308 = load ptr, ptr %l157, !tbaa !29
  %t309 = icmp ne ptr %t308, null
  br i1 %t309, label %bb79, label %bb80
bb79:
  %t311 = load ptr, ptr %l157, !tbaa !29
  %t312 = load i64, ptr %t311, !range !{i64 0, i64 28}
  %t314 = icmp eq i64 %t312, 5
  store i1 %t314, ptr %l158, !tbaa !21
  br label %bb80
bb80:
  %t315 = load i1, ptr %l158, !tbaa !21
  br i1 %t315, label %bb81, label %bb82
bb81:
  %t316 = load ptr, ptr %l3, !tbaa !29
  %t318 = getelementptr { i64, [4 x i64] }, ptr %t316, i32 0, i32 1
  %t319 = getelementptr { %"compiler/source:Span", i32, ptr, ptr }, ptr %t318, i32 0, i32 1
  %t320 = load i32, ptr %t319, !range !{i32 0, i32 113}
  store i32 %t320, ptr %l19
  %t322 = load ptr, ptr %l3, !tbaa !29
  %t324 = getelementptr { i64, [4 x i64] }, ptr %t322, i32 0, i32 1
  %t325 = getelementptr { %"compiler/source:Span", i32, ptr, ptr }, ptr %t324, i32 0, i32 2
  %t326 = load ptr, ptr %t325
  store ptr %t326, ptr %l20, !tbaa !29
  %t328 = load ptr, ptr %l3, !tbaa !29
  %t330 = getelementptr { i64, [4 x i64] }, ptr %t328, i32 0, i32 1
  %t331 = getelementptr { %"compiler/source:Span", i32, ptr, ptr }, ptr %t330, i32 0, i32 3
  %t332 = load ptr, ptr %t331
  store ptr %t332, ptr %l21, !tbaa !29
  br label %bb83
bb82:
  br label %bb85
bb83:
  %t334 = load ptr, ptr %l0, !tbaa !29
  %t335 = load ptr, ptr %l1, !tbaa !29
  %t336 = load ptr, ptr %l2, !tbaa !29
  %t337 = load i32, ptr %l19, !range !{i32 0, i32 113}
  %t338 = load ptr, ptr %l20, !tbaa !29
  %t339 = load ptr, ptr %l21, !tbaa !29
  %t346 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2ebinaryType(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v3, ptr %t334, ptr %t335, ptr %t336, i32 %t337, ptr %t338, ptr %t339)
  store i32 %t346, ptr %l173
  br label %bb84
bb84:
  %t347 = load i32, ptr %l173, !tbaa !23
  store i32 %t347, ptr %l25, !tbaa !23
  br label %bb90
bb85:
  br i1 true, label %bb86, label %bb87
bb86:
  br label %bb88
bb87:
  br label %bb89
bb88:
  %t348 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  store i32 %t348, ptr %l25, !tbaa !23
  br label %bb90
bb89:
  call void @__olang_check_failed(ptr @olang_loc_11d82d97bd847b16_4486c403bf4d327a)
  unreachable
bb90:
  %t350 = load i32, ptr %l25, !tbaa !23
  store i32 %t350, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local void @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eInferThroughBounds(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i64
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i1
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca i64
  %l12 = alloca i64
  %l13 = alloca i64
  %l14 = alloca i64
  %l15 = alloca %"compiler/generic:varRow"
  %l21 = alloca i64
  %l24 = alloca i64
  %l47 = alloca i64
  %l50 = alloca i64
  %l72 = alloca %"compiler/generic:varRow"
  %l76 = alloca i1
  %l78 = alloca { i64, ptr }
  %l85 = alloca { i64, ptr }
  %l90 = alloca i64
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store i64 0, ptr %l2, !tbaa !24
  %t1 = load ptr, ptr %l1, !tbaa !29
  %t3 = getelementptr %"compiler/generic:Binding", ptr %t1, i32 0, i32 1
  %t4 = load i64, ptr %t3, !tbaa !24
  store i64 %t4, ptr %l3, !tbaa !24
  store i64 1, ptr %l4, !tbaa !24
  %t6 = load i64, ptr %l3, !tbaa !24
  %t7 = load i64, ptr %l2, !tbaa !24
  %t10 = icmp sgt i64 %t6, %t7
  br i1 %t10, label %bb1, label %bb2
bb1:
  %t12 = load i64, ptr %l4, !tbaa !24
  %t14 = icmp sgt i64 %t12, 0
  br i1 %t14, label %bb3, label %bb4
bb2:
  store i64 0, ptr %l21, !tbaa !24
  br label %bb6
bb3:
  %t16 = load i64, ptr %l3, !tbaa !24
  %t17 = load i64, ptr %l2, !tbaa !24
  %t20 = sub i64 %t16, %t17
  %t21 = load i64, ptr %l4, !tbaa !24
  %t24 = add i64 %t20, %t21
  %t26 = sub i64 %t24, 1
  %t27 = load i64, ptr %l4, !tbaa !24
  %t30 = sdiv i64 %t26, %t27
  store i64 %t30, ptr %l24, !tbaa !24
  br label %bb5
bb4:
  store i64 0, ptr %l24, !tbaa !24
  br label %bb5
bb5:
  %t32 = load i64, ptr %l24, !tbaa !24
  store i64 %t32, ptr %l21, !tbaa !24
  br label %bb6
bb6:
  %t33 = load i64, ptr %l21, !tbaa !24
  store i64 %t33, ptr %l5, !tbaa !24
  store i64 0, ptr %l6, !tbaa !24
  br label %bb7
bb7:
  %t34 = load i64, ptr %l6, !tbaa !24
  %t35 = load i64, ptr %l5, !tbaa !24
  %t38 = icmp slt i64 %t34, %t35
  %t40 = xor i1 %t38, true
  br i1 %t40, label %bb8, label %bb9
bb8:
  br label %bb38
bb9:
  br label %bb10
bb10:
  %t42 = load i64, ptr %l2, !tbaa !24
  %t43 = load i64, ptr %l6, !tbaa !24
  %t44 = load i64, ptr %l4, !tbaa !24
  %t47 = mul i64 %t43, %t44
  %t50 = add i64 %t42, %t47
  store i64 %t50, ptr %l7, !tbaa !24
  store i1 false, ptr %l8, !tbaa !21
  store i64 0, ptr %l9, !tbaa !24
  %t52 = load ptr, ptr %l1, !tbaa !29
  %t54 = getelementptr %"compiler/generic:Binding", ptr %t52, i32 0, i32 1
  %t55 = load i64, ptr %t54, !tbaa !24
  store i64 %t55, ptr %l10, !tbaa !24
  store i64 1, ptr %l11, !tbaa !24
  %t57 = load i64, ptr %l10, !tbaa !24
  %t58 = load i64, ptr %l9, !tbaa !24
  %t61 = icmp sgt i64 %t57, %t58
  br i1 %t61, label %bb11, label %bb12
bb11:
  %t63 = load i64, ptr %l11, !tbaa !24
  %t65 = icmp sgt i64 %t63, 0
  br i1 %t65, label %bb13, label %bb14
bb12:
  store i64 0, ptr %l47, !tbaa !24
  br label %bb16
bb13:
  %t67 = load i64, ptr %l10, !tbaa !24
  %t68 = load i64, ptr %l9, !tbaa !24
  %t71 = sub i64 %t67, %t68
  %t72 = load i64, ptr %l11, !tbaa !24
  %t75 = add i64 %t71, %t72
  %t77 = sub i64 %t75, 1
  %t78 = load i64, ptr %l11, !tbaa !24
  %t81 = sdiv i64 %t77, %t78
  store i64 %t81, ptr %l50, !tbaa !24
  br label %bb15
bb14:
  store i64 0, ptr %l50, !tbaa !24
  br label %bb15
bb15:
  %t83 = load i64, ptr %l50, !tbaa !24
  store i64 %t83, ptr %l47, !tbaa !24
  br label %bb16
bb16:
  %t84 = load i64, ptr %l47, !tbaa !24
  store i64 %t84, ptr %l12, !tbaa !24
  store i64 0, ptr %l13, !tbaa !24
  br label %bb17
bb17:
  %t85 = load i64, ptr %l13, !tbaa !24
  %t86 = load i64, ptr %l12, !tbaa !24
  %t89 = icmp slt i64 %t85, %t86
  %t91 = xor i1 %t89, true
  br i1 %t91, label %bb18, label %bb19
bb18:
  br label %bb33
bb19:
  br label %bb20
bb20:
  %t93 = load i64, ptr %l9, !tbaa !24
  %t94 = load i64, ptr %l13, !tbaa !24
  %t95 = load i64, ptr %l11, !tbaa !24
  %t98 = mul i64 %t94, %t95
  %t101 = add i64 %t93, %t98
  store i64 %t101, ptr %l14, !tbaa !24
  %t103 = load ptr, ptr %l0, !tbaa !29
  %t104 = load ptr, ptr %l1, !tbaa !29
  %t106 = getelementptr %"compiler/generic:Binding", ptr %t104, i32 0, i32 0
  %t107 = load i64, ptr %t106, !tbaa !24
  %t108 = load i64, ptr %l14, !tbaa !24
  %t112 = call %"compiler/generic:varRow" @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eVarAt(ptr %v0, ptr %t103, i64 %t107, i64 %t108)
  store %"compiler/generic:varRow" %t112, ptr %l72
  br label %bb21
bb21:
  %t113 = load %"compiler/generic:varRow", ptr %l72
  store %"compiler/generic:varRow" %t113, ptr %l15
  %t114 = getelementptr %"compiler/generic:varRow", ptr %l15, i32 0, i32 3
  %t115 = load i32, ptr %t114, !tbaa !23
  %t116 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t119 = icmp eq i32 %t115, %t116
  br i1 %t119, label %bb22, label %bb23
bb22:
  store i1 true, ptr %l76, !tbaa !21
  br label %bb24
bb23:
  %t121 = load ptr, ptr %l1, !tbaa !29
  %t123 = getelementptr %"compiler/generic:Binding", ptr %t121, i32 0, i32 2
  %t124 = load { i64, ptr }, ptr %t123, !tbaa !27
  store { i64, ptr } %t124, ptr %l78, !tbaa !27
  %t125 = load i64, ptr %l14, !tbaa !24
  %t127 = getelementptr { i64, ptr }, ptr %l78, i32 0, i32 1
  %t128 = load ptr, ptr %t127, !tbaa !27
  %t129 = getelementptr i32, ptr %t128, i64 %t125
  %t130 = load i32, ptr %t129, !tbaa !33
  %t131 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t134 = icmp eq i32 %t130, %t131
  store i1 %t134, ptr %l76, !tbaa !21
  br label %bb24
bb24:
  %t136 = load i1, ptr %l76, !tbaa !21
  br i1 %t136, label %bb25, label %bb26
bb25:
  br label %bb32
bb26:
  br label %bb27
bb27:
  %t137 = load ptr, ptr %l0, !tbaa !29
  %t138 = load ptr, ptr %l1, !tbaa !29
  %t140 = getelementptr %"compiler/generic:Binding", ptr %t138, i32 0, i32 2
  %t141 = load { i64, ptr }, ptr %t140, !tbaa !27
  store { i64, ptr } %t141, ptr %l85, !tbaa !27
  %t142 = load i64, ptr %l14, !tbaa !24
  %t144 = getelementptr { i64, ptr }, ptr %l85, i32 0, i32 1
  %t145 = load ptr, ptr %t144, !tbaa !27
  %t146 = getelementptr i32, ptr %t145, i64 %t142
  %t147 = load i32, ptr %t146, !tbaa !33
  %t148 = getelementptr %"compiler/generic:varRow", ptr %l15, i32 0, i32 3
  %t149 = load i32, ptr %t148, !tbaa !23
  %t150 = load ptr, ptr %l1, !tbaa !29
  %t155 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eunifyBound(ptr %v0, ptr %v1, ptr %t137, i32 %t147, i32 %t149, ptr %t150, i64 0)
  store i64 %t155, ptr %l90
  br label %bb28
bb28:
  %t156 = load i64, ptr %l90, !tbaa !24
  %t157 = icmp sgt i64 %t156, 0
  br i1 %t157, label %bb29, label %bb30
bb29:
  store i1 true, ptr %l8, !tbaa !21
  br label %bb31
bb30:
  br label %bb31
bb31:
  br label %bb32
bb32:
  %t159 = load i64, ptr %l13, !tbaa !24
  %t161 = add i64 %t159, 1
  store i64 %t161, ptr %l13, !tbaa !24
  br label %bb17
bb33:
  %t163 = load i1, ptr %l8, !tbaa !21
  %t165 = xor i1 %t163, true
  br i1 %t165, label %bb34, label %bb35
bb34:
  br label %bb38
bb35:
  br label %bb36
bb36:
  br label %bb37
bb37:
  %t167 = load i64, ptr %l6, !tbaa !24
  %t169 = add i64 %t167, 1
  store i64 %t169, ptr %l6, !tbaa !24
  br label %bb7
bb38:
  br label %ret
ret:
  ret void
}

define dso_local { i64, ptr } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eInstanceName(ptr %v0, ptr %v1, ptr %a0, i64 %a1) #0 {
entry:
  %l5 = alloca %"compiler/generic:instance"
  %rv = alloca { i64, ptr }
  br label %start
start:
  br label %bb0
bb0:
  %t3 = getelementptr %"compiler/generic:Program", ptr %a0, i32 0, i32 44
  %t7 = call %"compiler/generic:instance" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fgeneric_3ainstance_3e_2eAt__Hf3965267bb92d0ee7aeaa2339e2e46fa(ptr %v0, ptr %v1, ptr %t3, i64 %a1)
  store %"compiler/generic:instance" %t7, ptr %l5
  br label %bb1
bb1:
  %t8 = getelementptr %"compiler/generic:instance", ptr %l5, i32 0, i32 3
  %t9 = load { i64, ptr }, ptr %t8, !tbaa !27
  store { i64, ptr } %t9, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eInstanceSig(ptr %v0, ptr %a0, i64 %a1) #0 {
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
  %t8 = getelementptr %"compiler/generic:instance", ptr %l5, i32 0, i32 2
  %t9 = load i32, ptr %t8, !tbaa !23
  call void @__olang_scope_close(ptr %s0)
  store i32 %t9, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local { i64, ptr } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eInstanceText(ptr %v0, ptr %v1, ptr %a0, i64 %a1) #0 {
entry:
  %l5 = alloca %"compiler/generic:instance"
  %rv = alloca { i64, ptr }
  br label %start
start:
  br label %bb0
bb0:
  %t3 = getelementptr %"compiler/generic:Program", ptr %a0, i32 0, i32 44
  %t7 = call %"compiler/generic:instance" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fgeneric_3ainstance_3e_2eAt__Hf3965267bb92d0ee7aeaa2339e2e46fa(ptr %v0, ptr %v1, ptr %t3, i64 %a1)
  store %"compiler/generic:instance" %t7, ptr %l5
  br label %bb1
bb1:
  %t8 = getelementptr %"compiler/generic:instance", ptr %l5, i32 0, i32 4
  %t9 = load { i64, ptr }, ptr %t8, !tbaa !27
  store { i64, ptr } %t9, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eIsClosedTrait(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca ptr
  %l3 = alloca ptr
  %l4 = alloca { i64, ptr }
  %l8 = alloca i32
  %l13 = alloca ptr
  %l17 = alloca i32
  %l18 = alloca ptr
  %l21 = alloca i1
  %l28 = alloca ptr
  %l29 = alloca i1
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
  store ptr %t16, ptr %l13, !tbaa !29
  %t17 = load ptr, ptr %l0, !tbaa !29
  %t19 = getelementptr %"compiler/generic:Program", ptr %t17, i32 0, i32 2
  %t20 = load i32, ptr %l1, !tbaa !23
  %t23 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %t19, i32 %t20)
  store i32 %t23, ptr %l17
  br label %bb5
bb5:
  %t24 = load ptr, ptr %l13, !tbaa !29
  %t25 = load i32, ptr %l17, !tbaa !23
  %t26 = call ptr @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2etypeDecl(ptr %v0, ptr %v0, ptr %t24, i32 %t25)
  store ptr %t26, ptr %l18
  br label %bb6
bb6:
  %t27 = load ptr, ptr %l18, !tbaa !29
  store ptr %t27, ptr %l2, !tbaa !29
  %t28 = load ptr, ptr %l2, !tbaa !29
  %t30 = icmp eq ptr %t28, null
  br i1 %t30, label %bb7, label %bb8
bb7:
  store i1 true, ptr %l21, !tbaa !21
  br label %bb9
bb8:
  %t32 = load ptr, ptr %l2, !tbaa !29
  %t34 = getelementptr %"compiler/ast:TypeDecl", ptr %t32, i32 0, i32 3
  %t35 = load ptr, ptr %t34, !tbaa !29
  %t37 = icmp eq ptr %t35, null
  store i1 %t37, ptr %l21, !tbaa !21
  br label %bb9
bb9:
  %t39 = load i1, ptr %l21, !tbaa !21
  br i1 %t39, label %bb10, label %bb11
bb10:
  store i1 false, ptr %rv
  br label %ret
bb11:
  br label %bb12
bb12:
  %t41 = load ptr, ptr %l2, !tbaa !29
  %t43 = getelementptr %"compiler/ast:TypeDecl", ptr %t41, i32 0, i32 3
  %t44 = load ptr, ptr %t43, !tbaa !29
  store ptr %t44, ptr %l3, !tbaa !29
  %t46 = load ptr, ptr %l3, !tbaa !29
  store ptr %t46, ptr %l28, !tbaa !29
  store i1 false, ptr %l29, !tbaa !21
  %t47 = load ptr, ptr %l28, !tbaa !29
  %t48 = icmp ne ptr %t47, null
  br i1 %t48, label %bb13, label %bb14
bb13:
  %t50 = load ptr, ptr %l28, !tbaa !29
  %t51 = load i64, ptr %t50, !range !{i64 0, i64 5}
  %t53 = icmp eq i64 %t51, 2
  store i1 %t53, ptr %l29, !tbaa !21
  br label %bb14
bb14:
  %t54 = load i1, ptr %l29, !tbaa !21
  br i1 %t54, label %bb15, label %bb16
bb15:
  %t55 = load ptr, ptr %l3, !tbaa !29
  %t57 = getelementptr { i64, [6 x i64] }, ptr %t55, i32 0, i32 1
  %t58 = getelementptr { { i64, ptr }, { i64, ptr }, { i64, ptr } }, ptr %t57, i32 0, i32 2
  %t59 = load { i64, ptr }, ptr %t58
  store { i64, ptr } %t59, ptr %l4, !tbaa !27
  br label %bb17
bb16:
  br label %bb18
bb17:
  %t61 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t63 = extractvalue { i64, ptr } %t61, 0
  %t65 = icmp sgt i64 %t63, 0
  store i1 %t65, ptr %rv
  br label %ret
bb18:
  br i1 true, label %bb19, label %bb20
bb19:
  br label %bb21
bb20:
  br label %bb22
bb21:
  store i1 false, ptr %rv
  br label %ret
bb22:
  call void @__olang_check_failed(ptr @olang_loc_23dbec30ec11f2fa_ab3fa8ca5a280626)
  unreachable
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eIsColumnVec(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l4 = alloca i1
  %s0 = alloca %olang.scope
  %rv = alloca i1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t5 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2epreludeNamed(ptr %v0, ptr %s0, ptr %a0, i32 %a1, { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d15, i32 0, i32 1) })
  store i1 %t5, ptr %l4
  br label %bb1
bb1:
  call void @__olang_scope_close(ptr %s0)
  %t6 = load i1, ptr %l4, !tbaa !21
  store i1 %t6, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eIsEntry(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca ptr
  %l5 = alloca i64
  %l13 = alloca ptr
  %l17 = alloca i1
  %l19 = alloca i1
  %l21 = alloca i1
  %l27 = alloca { i64, ptr }
  %l28 = alloca i1
  %s0 = alloca %olang.scope
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load i64, ptr %l1, !tbaa !24
  %t5 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnModule(ptr %v0, ptr %t1, i64 %t2)
  store i64 %t5, ptr %l5
  br label %bb1
bb1:
  %t6 = load ptr, ptr %l0, !tbaa !29
  %t8 = getelementptr %"compiler/generic:Program", ptr %t6, i32 0, i32 0
  %t9 = load ptr, ptr %t8, !tbaa !29
  %t11 = getelementptr %"compiler/load:Loader", ptr %t9, i32 0, i32 12
  %t12 = load i64, ptr %t11, !tbaa !24
  %t13 = load i64, ptr %l5, !tbaa !24
  %t15 = icmp ne i64 %t13, %t12
  br i1 %t15, label %bb2, label %bb3
bb2:
  call void @__olang_scope_close(ptr %s0)
  store i1 false, ptr %rv
  br label %ret
bb3:
  br label %bb4
bb4:
  %t18 = load ptr, ptr %l0, !tbaa !29
  %t19 = load i64, ptr %l1, !tbaa !24
  %t22 = call ptr @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnDecl(ptr %v0, ptr %v0, ptr %t18, i64 %t19)
  store ptr %t22, ptr %l13
  br label %bb5
bb5:
  %t23 = load ptr, ptr %l13, !tbaa !29
  store ptr %t23, ptr %l2, !tbaa !29
  %t24 = load ptr, ptr %l2, !tbaa !29
  %t26 = getelementptr %"compiler/ast:Func", ptr %t24, i32 0, i32 1
  %t27 = load ptr, ptr %t26, !tbaa !29
  %t29 = icmp eq ptr %t27, null
  br i1 %t29, label %bb6, label %bb7
bb6:
  %t31 = load ptr, ptr %l2, !tbaa !29
  %t33 = call i1 @compiler_2fast_2ecompiler_2fast_3aFunc_2eIsBuilder(ptr %v0, ptr %t31)
  store i1 %t33, ptr %l19
  br label %bb8
bb7:
  store i1 false, ptr %l17, !tbaa !21
  br label %bb9
bb8:
  %t34 = load i1, ptr %l19, !tbaa !21
  %t35 = xor i1 %t34, true
  store i1 %t35, ptr %l17, !tbaa !21
  br label %bb9
bb9:
  %t37 = load i1, ptr %l17, !tbaa !21
  br i1 %t37, label %bb10, label %bb11
bb10:
  %t38 = load ptr, ptr %l0, !tbaa !29
  %t40 = getelementptr %"compiler/generic:Program", ptr %t38, i32 0, i32 0
  %t41 = load ptr, ptr %t40, !tbaa !29
  %t43 = getelementptr %"compiler/load:Loader", ptr %t41, i32 0, i32 3
  %t44 = load ptr, ptr %t43, !tbaa !29
  %t45 = load ptr, ptr %l2, !tbaa !29
  %t47 = getelementptr %"compiler/ast:Func", ptr %t45, i32 0, i32 2
  %t48 = load i32, ptr %t47, !tbaa !23
  %t51 = call { i64, ptr } @compiler_2fsource_2ecompiler_2fsource_3aNames_2eText(ptr %v0, ptr %v0, ptr %t44, i32 %t48)
  store { i64, ptr } %t51, ptr %l27
  br label %bb12
bb11:
  store i1 false, ptr %l21, !tbaa !21
  br label %bb14
bb12:
  %t52 = load { i64, ptr }, ptr %l27, !tbaa !27
  %t53 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t52, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d16, i32 0, i32 1) })
  store i1 %t53, ptr %l28
  br label %bb13
bb13:
  %t54 = load i1, ptr %l28, !tbaa !21
  store i1 %t54, ptr %l21, !tbaa !21
  br label %bb14
bb14:
  call void @__olang_scope_close(ptr %s0)
  %t55 = load i1, ptr %l21, !tbaa !21
  store i1 %t55, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eIsErrVar(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l5 = alloca i32
  %l8 = alloca i1
  %l9 = alloca i1
  %l11 = alloca ptr
  %l15 = alloca i64
  %l19 = alloca i64
  %l20 = alloca %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0"
  %l21 = alloca i1
  %l22 = alloca i32
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
  %t3 = getelementptr %"compiler/generic:Program", ptr %t1, i32 0, i32 2
  %t4 = load i32, ptr %l1, !tbaa !23
  %t7 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t3, i32 %t4)
  store i32 %t7, ptr %l5
  br label %bb1
bb1:
  %t8 = load i32, ptr %l5, !range !{i32 0, i32 33}
  %t10 = trunc i64 25 to i32
  %t11 = icmp eq i32 %t8, %t10
  br i1 %t11, label %bb2, label %bb3
bb2:
  %t13 = load ptr, ptr %l0, !tbaa !29
  %t15 = getelementptr %"compiler/generic:Program", ptr %t13, i32 0, i32 17
  store ptr %t15, ptr %l11, !tbaa !29
  %t16 = load ptr, ptr %l0, !tbaa !29
  %t18 = getelementptr %"compiler/generic:Program", ptr %t16, i32 0, i32 2
  %t19 = load i32, ptr %l1, !tbaa !23
  %t22 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eA(ptr %v0, ptr %t18, i32 %t19)
  store i64 %t22, ptr %l15
  br label %bb4
bb3:
  store i1 false, ptr %l8, !tbaa !21
  br label %bb11
bb4:
  %t23 = load ptr, ptr %l0, !tbaa !29
  %t25 = getelementptr %"compiler/generic:Program", ptr %t23, i32 0, i32 2
  %t26 = load i32, ptr %l1, !tbaa !23
  %t29 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eB(ptr %v0, ptr %t25, i32 %t26)
  store i64 %t29, ptr %l19
  br label %bb5
bb5:
  %t30 = load i64, ptr %l15, !tbaa !24
  %t31 = load i64, ptr %l19, !tbaa !24
  %t32 = call %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" @std_2fpair_3aPair_3cI64_2c_20I64_3e_2ector(ptr %s0, i64 %t30, i64 %t31)
  store %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t32, ptr %l20
  br label %bb6
bb6:
  %t33 = load ptr, ptr %l11, !tbaa !29
  %t34 = load %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %l20
  %t35 = call { i32, i1 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H190b78e3c1eec037529224679e114a85(ptr %v0, ptr %t33, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t34)
  %t36 = extractvalue { i32, i1 } %t35, 1
  %t37 = extractvalue { i32, i1 } %t35, 0
  store i32 %t37, ptr %l22
  %t38 = icmp ne i32 %t37, 0
  br i1 %t38, label %bb8, label %ok.39, !prof !99
ok.39:
  store i1 %t36, ptr %l21
  br label %bb7
bb7:
  %t40 = load i1, ptr %l21, !tbaa !21
  store i1 %t40, ptr %l9, !tbaa !21
  br label %bb10
bb8:
  br label %bb9
bb9:
  store i1 false, ptr %l9, !tbaa !21
  br label %bb10
bb10:
  %t41 = load i1, ptr %l9, !tbaa !21
  store i1 %t41, ptr %l8, !tbaa !21
  br label %bb11
bb11:
  call void @__olang_scope_close(ptr %s0)
  %t42 = load i1, ptr %l8, !tbaa !21
  store i1 %t42, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eMeetsBound(ptr %v0, ptr %a0, i64 %a1, i64 %a2, i32 %a3, i32 %a4) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca i64
  %l4 = alloca i32
  %l5 = alloca %"compiler/generic:varRow"
  %l6 = alloca { i64, ptr }
  %l7 = alloca { i64, ptr }
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca i64
  %l12 = alloca i64
  %l13 = alloca i64
  %l14 = alloca i32
  %l18 = alloca %"compiler/generic:varRow"
  %l26 = alloca { i64, ptr }
  %l28 = alloca i64
  %l37 = alloca i64
  %l40 = alloca i64
  %l58 = alloca i64
  %l62 = alloca i32
  %l64 = alloca { i64, ptr }
  %l69 = alloca ptr
  %l70 = alloca i32
  %l71 = alloca i64
  %l75 = alloca i32
  %l76 = alloca i32
  %l80 = alloca i1
  %l86 = alloca %"compiler/generic:Unmet"
  %s0 = alloca %olang.scope
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  store i64 %a2, ptr %l2
  store i32 %a4, ptr %l4
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load i64, ptr %l1, !tbaa !24
  %t3 = load i64, ptr %l2, !tbaa !24
  %t7 = call %"compiler/generic:varRow" @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eVarAt(ptr %v0, ptr %t1, i64 %t2, i64 %t3)
  store %"compiler/generic:varRow" %t7, ptr %l18
  br label %bb1
bb1:
  %t8 = load %"compiler/generic:varRow", ptr %l18
  store %"compiler/generic:varRow" %t8, ptr %l5
  %t9 = getelementptr %"compiler/generic:varRow", ptr %l5, i32 0, i32 3
  %t10 = load i32, ptr %t9, !tbaa !23
  %t11 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t14 = icmp eq i32 %t10, %t11
  br i1 %t14, label %bb2, label %bb3
bb2:
  call void @__olang_scope_close(ptr %s0)
  store i1 true, ptr %rv
  br label %ret
bb3:
  br label %bb4
bb4:
  %t17 = load ptr, ptr %l0, !tbaa !29
  %t19 = getelementptr %"compiler/generic:Program", ptr %t17, i32 0, i32 2
  %t23 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t19, i32 %a3)
  store { i64, ptr } %t23, ptr %l26
  br label %bb5
bb5:
  %t24 = load { i64, ptr }, ptr %l26, !tbaa !27
  store { i64, ptr } %t24, ptr %l6, !tbaa !27
  %t25 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t27 = extractvalue { i64, ptr } %t25, 0
  store i64 %t27, ptr %l28, !tbaa !24
  %t28 = load i64, ptr %l28, !tbaa !24
  %t29 = icmp sge i64 %t28, 0
  br i1 %t29, label %bb6, label %bb7
bb6:
  %t31 = load i64, ptr %l28, !tbaa !24
  %t32 = icmp sle i64 %t31, 2305843009213693951
  br i1 %t32, label %bb8, label %bb9
bb7:
  call void @__olang_check_failed(ptr @olang_loc_5d5ac97d78861951_ba50dfe20371558d)
  unreachable
bb8:
  %t34 = load i64, ptr %l28, !tbaa !24
  %t35 = mul i64 %t34, 4
  %t36 = call ptr @__olang_scope_alloc_zeroed(ptr %s0, i64 %t35)
  %t37 = insertvalue { i64, ptr } undef, i64 %t34, 0
  %t38 = insertvalue { i64, ptr } %t37, ptr %t36, 1
  store { i64, ptr } %t38, ptr %l7, !tbaa !27
  store i64 0, ptr %l8, !tbaa !24
  %t40 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t42 = extractvalue { i64, ptr } %t40, 0
  store i64 %t42, ptr %l9, !tbaa !24
  store i64 1, ptr %l10, !tbaa !24
  %t44 = load i64, ptr %l9, !tbaa !24
  %t45 = load i64, ptr %l8, !tbaa !24
  %t48 = icmp sgt i64 %t44, %t45
  br i1 %t48, label %bb10, label %bb11
bb9:
  call void @__olang_check_failed(ptr @olang_loc_5d5ac97d78861951_ba50dfe20371558d)
  unreachable
bb10:
  %t50 = load i64, ptr %l10, !tbaa !24
  %t52 = icmp sgt i64 %t50, 0
  br i1 %t52, label %bb12, label %bb13
bb11:
  store i64 0, ptr %l37, !tbaa !24
  br label %bb15
bb12:
  %t54 = load i64, ptr %l9, !tbaa !24
  %t55 = load i64, ptr %l8, !tbaa !24
  %t58 = sub i64 %t54, %t55
  %t59 = load i64, ptr %l10, !tbaa !24
  %t62 = add i64 %t58, %t59
  %t64 = sub i64 %t62, 1
  %t65 = load i64, ptr %l10, !tbaa !24
  %t68 = sdiv i64 %t64, %t65
  store i64 %t68, ptr %l40, !tbaa !24
  br label %bb14
bb13:
  store i64 0, ptr %l40, !tbaa !24
  br label %bb14
bb14:
  %t70 = load i64, ptr %l40, !tbaa !24
  store i64 %t70, ptr %l37, !tbaa !24
  br label %bb15
bb15:
  %t71 = load i64, ptr %l37, !tbaa !24
  store i64 %t71, ptr %l11, !tbaa !24
  store i64 0, ptr %l12, !tbaa !24
  br label %bb16
bb16:
  %t72 = load i64, ptr %l12, !tbaa !24
  %t73 = load i64, ptr %l11, !tbaa !24
  %t76 = icmp slt i64 %t72, %t73
  %t78 = xor i1 %t76, true
  br i1 %t78, label %bb17, label %bb18
bb17:
  br label %bb24
bb18:
  br label %bb19
bb19:
  %t80 = load i64, ptr %l8, !tbaa !24
  %t81 = load i64, ptr %l12, !tbaa !24
  %t82 = load i64, ptr %l10, !tbaa !24
  %t85 = mul i64 %t81, %t82
  %t88 = add i64 %t80, %t85
  store i64 %t88, ptr %l13, !tbaa !24
  %t90 = load i64, ptr %l13, !tbaa !24
  store i64 %t90, ptr %l58, !tbaa !24
  %t91 = load i64, ptr %l13, !tbaa !24
  %t92 = load i64, ptr %l2, !tbaa !24
  %t95 = icmp eq i64 %t91, %t92
  br i1 %t95, label %bb20, label %bb21
bb20:
  %t97 = load i32, ptr %l4, !tbaa !23
  store i32 %t97, ptr %l62, !tbaa !23
  br label %bb22
bb21:
  %t99 = load { i64, ptr }, ptr %l6, !tbaa !27
  store { i64, ptr } %t99, ptr %l64, !tbaa !27
  %t100 = load i64, ptr %l13, !tbaa !24
  %t102 = getelementptr { i64, ptr }, ptr %l64, i32 0, i32 1
  %t103 = load ptr, ptr %t102, !tbaa !27
  %t104 = getelementptr i32, ptr %t103, i64 %t100
  %t105 = load i32, ptr %t104, !tbaa !33
  store i32 %t105, ptr %l62, !tbaa !23
  br label %bb22
bb22:
  %t107 = load i32, ptr %l62, !tbaa !23
  %t108 = load i64, ptr %l58, !tbaa !24
  %t109 = getelementptr { i64, ptr }, ptr %l7, i32 0, i32 1
  %t110 = load ptr, ptr %t109, !tbaa !27
  %t111 = getelementptr i32, ptr %t110, i64 %t108
  store i32 %t107, ptr %t111, !tbaa !33
  br label %bb23
bb23:
  %t112 = load i64, ptr %l12, !tbaa !24
  %t114 = add i64 %t112, 1
  store i64 %t114, ptr %l12, !tbaa !24
  br label %bb16
bb24:
  %t116 = load ptr, ptr %l0, !tbaa !29
  store ptr %t116, ptr %l69, !tbaa !29
  %t117 = getelementptr %"compiler/generic:varRow", ptr %l5, i32 0, i32 3
  %t118 = load i32, ptr %t117, !tbaa !23
  store i32 %t118, ptr %l70, !tbaa !23
  %t119 = load i64, ptr %l1, !tbaa !24
  store i64 %t119, ptr %l71, !tbaa !24
  %t120 = load ptr, ptr %l0, !tbaa !29
  %t122 = getelementptr %"compiler/generic:Program", ptr %t120, i32 0, i32 2
  %t123 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t126 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eList(ptr %v0, ptr %s0, ptr %t122, { i64, ptr } %t123)
  store i32 %t126, ptr %l75
  br label %bb25
bb25:
  %t127 = load ptr, ptr %l69, !tbaa !29
  %t128 = load i32, ptr %l70, !tbaa !23
  %t129 = load i64, ptr %l71, !tbaa !24
  %t130 = load i32, ptr %l75, !tbaa !23
  %t131 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eSubst(ptr %v0, ptr %t127, i32 %t128, i64 %t129, i32 %t130)
  store i32 %t131, ptr %l76
  br label %bb26
bb26:
  %t132 = load i32, ptr %l76, !tbaa !23
  store i32 %t132, ptr %l14, !tbaa !23
  %t133 = load ptr, ptr %l0, !tbaa !29
  %t135 = getelementptr %"compiler/generic:Program", ptr %t133, i32 0, i32 2
  %t136 = load i32, ptr %l14, !tbaa !23
  %t139 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eClosed(ptr %v0, ptr %t135, i32 %t136)
  store i1 %t139, ptr %l80
  br label %bb27
bb27:
  %t140 = load i1, ptr %l80, !tbaa !21
  %t141 = xor i1 %t140, true
  br i1 %t141, label %bb28, label %bb29
bb28:
  call void @__olang_scope_close(ptr %s0)
  store i1 true, ptr %rv
  br label %ret
bb29:
  br label %bb30
bb30:
  %t144 = load ptr, ptr %l0, !tbaa !29
  %t145 = load i32, ptr %l4, !tbaa !23
  %t146 = load i32, ptr %l14, !tbaa !23
  %t150 = call %"compiler/generic:Unmet" @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eMissing(ptr %v0, ptr %t144, i32 %t145, i32 %t146, i1 true, i64 0)
  store %"compiler/generic:Unmet" %t150, ptr %l86
  br label %bb31
bb31:
  %t151 = getelementptr %"compiler/generic:Unmet", ptr %l86, i32 0, i32 0
  %t152 = load i64, ptr %t151, !tbaa !24
  %t154 = icmp slt i64 %t152, 0
  call void @__olang_scope_close(ptr %s0)
  store i1 %t154, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
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

define dso_local i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eMethodOverlap(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca %"compiler/generic:fnRow"
  %l3 = alloca i64
  %l4 = alloca i64
  %l8 = alloca %"compiler/generic:fnRow"
  %l13 = alloca ptr
  %l14 = alloca i64
  %l24 = alloca i64
  %l28 = alloca i64
  %l30 = alloca ptr
  %l35 = alloca %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0"
  %l36 = alloca i64
  %l37 = alloca i32
  %l40 = alloca i1
  %l47 = alloca i1
  %l50 = alloca i1
  %l52 = alloca i1
  %l53 = alloca ptr
  %l56 = alloca i32
  %l59 = alloca i32
  %l60 = alloca i1
  %l62 = alloca i64
  %l66 = alloca i64
  %l67 = alloca i32
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
  %t9 = getelementptr %"compiler/generic:fnRow", ptr %l2, i32 0, i32 1
  %t10 = load ptr, ptr %t9, !tbaa !29
  %t12 = getelementptr %"compiler/ast:Func", ptr %t10, i32 0, i32 1
  %t13 = load ptr, ptr %t12, !tbaa !29
  %t15 = icmp eq ptr %t13, null
  br i1 %t15, label %bb2, label %bb3
bb2:
  call void @__olang_scope_close(ptr %s0)
  store i64 -1, ptr %rv
  br label %ret
bb3:
  br label %bb4
bb4:
  %t18 = load ptr, ptr %l0, !tbaa !29
  store ptr %t18, ptr %l13, !tbaa !29
  %t19 = getelementptr %"compiler/generic:fnRow", ptr %l2, i32 0, i32 0
  %t20 = load i64, ptr %t19, !tbaa !24
  store i64 %t20, ptr %l14, !tbaa !24
  %t21 = getelementptr %"compiler/generic:fnRow", ptr %l2, i32 0, i32 1
  %t22 = load ptr, ptr %t21, !tbaa !29
  %t24 = getelementptr %"compiler/ast:Func", ptr %t22, i32 0, i32 1
  %t25 = load ptr, ptr %t24, !tbaa !29
  %t27 = icmp eq ptr %t25, null
  br i1 %t27, label %bb5, label %bb6
bb5:
  call void @__olang_check_failed(ptr @olang_loc_68cd11c72d3db33f_352ec9aa512a8333)
  unreachable
bb6:
  br label %bb7
bb7:
  %t29 = getelementptr %"compiler/generic:fnRow", ptr %l2, i32 0, i32 1
  %t30 = load ptr, ptr %t29, !tbaa !29
  %t32 = getelementptr %"compiler/ast:Func", ptr %t30, i32 0, i32 1
  %t33 = load ptr, ptr %t32, !tbaa !29
  %t36 = getelementptr %"compiler/ast:Param", ptr %t33, i32 0, i32 2
  %t37 = load ptr, ptr %t36, !tbaa !29
  %t38 = getelementptr %"compiler/generic:fnRow", ptr %l2, i32 0, i32 1
  %t39 = load ptr, ptr %t38, !tbaa !29
  %t41 = getelementptr %"compiler/ast:Func", ptr %t39, i32 0, i32 5
  %t42 = load { i64, ptr }, ptr %t41, !tbaa !27
  %t43 = load ptr, ptr %l13, !tbaa !29
  %t44 = load i64, ptr %l14, !tbaa !24
  %t47 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2erecvKey(ptr %v0, ptr %v0, ptr %v0, ptr %t43, i64 %t44, ptr %t37, { i64, ptr } %t42)
  store i64 %t47, ptr %l24
  br label %bb8
bb8:
  %t48 = load i64, ptr %l24, !tbaa !24
  store i64 %t48, ptr %l3, !tbaa !24
  %t49 = load i64, ptr %l3, !tbaa !24
  %t51 = icmp slt i64 %t49, 0
  br i1 %t51, label %bb9, label %bb10
bb9:
  call void @__olang_scope_close(ptr %s0)
  store i64 -1, ptr %rv
  br label %ret
bb10:
  br label %bb11
bb11:
  %t54 = load ptr, ptr %l0, !tbaa !29
  %t56 = getelementptr %"compiler/generic:Program", ptr %t54, i32 0, i32 36
  store ptr %t56, ptr %l30, !tbaa !29
  %t57 = load i64, ptr %l3, !tbaa !24
  %t58 = getelementptr %"compiler/generic:fnRow", ptr %l2, i32 0, i32 1
  %t59 = load ptr, ptr %t58, !tbaa !29
  %t61 = getelementptr %"compiler/ast:Func", ptr %t59, i32 0, i32 2
  %t62 = load i32, ptr %t61, !tbaa !23
  %t64 = sext i32 %t62 to i64
  %t67 = call %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" @std_2fpair_3aPair_3cI64_2c_20I64_3e_2ector(ptr %s0, i64 %t57, i64 %t64)
  store %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t67, ptr %l35
  br label %bb12
bb12:
  %t68 = load ptr, ptr %l30, !tbaa !29
  %t69 = load %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %l35
  %t70 = call { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H5696e1a008d256bf9453cde2b49c6c45(ptr %v0, ptr %t68, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t69)
  %t71 = extractvalue { i32, i64 } %t70, 1
  %t72 = extractvalue { i32, i64 } %t70, 0
  store i32 %t72, ptr %l37
  %t73 = icmp ne i32 %t72, 0
  br i1 %t73, label %bb14, label %ok.74, !prof !99
ok.74:
  store i64 %t71, ptr %l36
  br label %bb13
bb13:
  %t75 = load i64, ptr %l36, !tbaa !24
  store i64 %t75, ptr %l28, !tbaa !24
  br label %bb16
bb14:
  br label %bb15
bb15:
  store i64 -1, ptr %l28, !tbaa !24
  br label %bb16
bb16:
  %t76 = load i64, ptr %l28, !tbaa !24
  store i64 %t76, ptr %l4, !tbaa !24
  br label %bb17
bb17:
  %t77 = load i64, ptr %l4, !tbaa !24
  %t79 = icmp sge i64 %t77, 0
  br i1 %t79, label %bb18, label %bb19
bb18:
  %t81 = load i64, ptr %l4, !tbaa !24
  %t82 = load i64, ptr %l1, !tbaa !24
  %t85 = icmp ne i64 %t81, %t82
  store i1 %t85, ptr %l40, !tbaa !21
  br label %bb20
bb19:
  store i1 false, ptr %l40, !tbaa !21
  br label %bb20
bb20:
  %t87 = load i1, ptr %l40, !tbaa !21
  %t88 = xor i1 %t87, true
  br i1 %t88, label %bb21, label %bb22
bb21:
  br label %bb40
bb22:
  br label %bb23
bb23:
  %t90 = load ptr, ptr %l0, !tbaa !29
  %t91 = load i64, ptr %l4, !tbaa !24
  %t94 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2erecvExact(ptr %v0, ptr %t90, i64 %t91)
  store i1 %t94, ptr %l47
  br label %bb24
bb24:
  %t95 = load ptr, ptr %l0, !tbaa !29
  %t96 = load i64, ptr %l1, !tbaa !24
  %t99 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2erecvExact(ptr %v0, ptr %t95, i64 %t96)
  store i1 %t99, ptr %l50
  br label %bb25
bb25:
  %t100 = load i1, ptr %l47, !tbaa !21
  %t101 = load i1, ptr %l50, !tbaa !21
  %t102 = icmp eq i1 %t100, %t101
  br i1 %t102, label %bb26, label %bb27
bb26:
  %t104 = load ptr, ptr %l0, !tbaa !29
  store ptr %t104, ptr %l53, !tbaa !29
  %t105 = load ptr, ptr %l0, !tbaa !29
  %t106 = load i64, ptr %l4, !tbaa !24
  %t109 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2erecvOf(ptr %v0, ptr %t105, i64 %t106)
  store i32 %t109, ptr %l56
  br label %bb28
bb27:
  store i1 false, ptr %l52, !tbaa !21
  br label %bb31
bb28:
  %t110 = load ptr, ptr %l0, !tbaa !29
  %t111 = load i64, ptr %l1, !tbaa !24
  %t114 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2erecvOf(ptr %v0, ptr %t110, i64 %t111)
  store i32 %t114, ptr %l59
  br label %bb29
bb29:
  %t115 = load ptr, ptr %l53, !tbaa !29
  %t116 = load i32, ptr %l56, !tbaa !23
  %t117 = load i32, ptr %l59, !tbaa !23
  %t118 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2etypesOverlap(ptr %v0, ptr %t115, i32 %t116, i32 %t117, i64 0)
  store i1 %t118, ptr %l60
  br label %bb30
bb30:
  %t119 = load i1, ptr %l60, !tbaa !21
  store i1 %t119, ptr %l52, !tbaa !21
  br label %bb31
bb31:
  %t120 = load i1, ptr %l52, !tbaa !21
  br i1 %t120, label %bb32, label %bb33
bb32:
  %t121 = load i64, ptr %l4, !tbaa !24
  call void @__olang_scope_close(ptr %s0)
  store i64 %t121, ptr %rv
  br label %ret
bb33:
  br label %bb34
bb34:
  %t123 = load ptr, ptr %l0, !tbaa !29
  %t125 = getelementptr %"compiler/generic:Program", ptr %t123, i32 0, i32 37
  %t126 = load i64, ptr %l4, !tbaa !24
  %t129 = call { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2eGet_3cI64_2c_20I64_3e(ptr %v0, ptr %t125, i64 %t126)
  %t130 = extractvalue { i32, i64 } %t129, 1
  %t131 = extractvalue { i32, i64 } %t129, 0
  store i32 %t131, ptr %l67
  %t132 = icmp ne i32 %t131, 0
  br i1 %t132, label %bb36, label %ok.133, !prof !99
ok.133:
  store i64 %t130, ptr %l66
  br label %bb35
bb35:
  %t134 = load i64, ptr %l66, !tbaa !24
  store i64 %t134, ptr %l62, !tbaa !24
  br label %bb38
bb36:
  br label %bb37
bb37:
  store i64 -1, ptr %l62, !tbaa !24
  br label %bb38
bb38:
  %t135 = load i64, ptr %l62, !tbaa !24
  store i64 %t135, ptr %l4, !tbaa !24
  br label %bb39
bb39:
  br label %bb17
bb40:
  call void @__olang_scope_close(ptr %s0)
  store i64 -1, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local %"compiler/generic:Unmet" @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eMissing(ptr %v0, ptr %a0, i32 %a1, i32 %a2, i1 %a3, i64 %a4) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca i32
  %l3 = alloca i1
  %l4 = alloca i64
  %l5 = alloca { i64, ptr }
  %l6 = alloca i64
  %l7 = alloca i64
  %l9 = alloca %"compiler/generic:Unmet"
  %l10 = alloca i32
  %l11 = alloca { i64, ptr }
  %l12 = alloca i64
  %l13 = alloca i64
  %l15 = alloca i32
  %l16 = alloca ptr
  %l17 = alloca ptr
  %l18 = alloca { i64, ptr }
  %l19 = alloca { i64, ptr }
  %l20 = alloca { i64, ptr }
  %l21 = alloca { i64, ptr }
  %l22 = alloca i64
  %l23 = alloca i64
  %l24 = alloca ptr
  %l25 = alloca i32
  %l26 = alloca %"compiler/generic:Unmet"
  %l27 = alloca { i64, ptr }
  %l28 = alloca i64
  %l29 = alloca i64
  %l30 = alloca ptr
  %l31 = alloca i1
  %l32 = alloca i32
  %l33 = alloca i1
  %l36 = alloca %"compiler/generic:Unmet"
  %l40 = alloca i32
  %l44 = alloca ptr
  %l48 = alloca i32
  %l49 = alloca { i64, ptr }
  %l56 = alloca { i64, ptr }
  %l65 = alloca %"compiler/generic:Unmet"
  %l71 = alloca %"compiler/generic:Unmet"
  %l75 = alloca i32
  %l80 = alloca %"compiler/generic:Unmet"
  %l84 = alloca i32
  %l87 = alloca i32
  %l91 = alloca i32
  %l96 = alloca i32
  %l99 = alloca ptr
  %l103 = alloca i32
  %l104 = alloca { i64, ptr }
  %l112 = alloca { i64, ptr }
  %l119 = alloca i1
  %l120 = alloca %"compiler/generic:Unmet"
  %l124 = alloca %"compiler/generic:Unmet"
  %l128 = alloca i32
  %l131 = alloca ptr
  %l134 = alloca i1
  %l139 = alloca %"compiler/generic:Unmet"
  %l142 = alloca ptr
  %l143 = alloca i1
  %l153 = alloca i1
  %l157 = alloca i1
  %l161 = alloca i1
  %l164 = alloca %"compiler/generic:Unmet"
  %l172 = alloca { i64, ptr }
  %l175 = alloca ptr
  %l176 = alloca ptr
  %l179 = alloca %"compiler/generic:Context"
  %l183 = alloca i32
  %l185 = alloca i64
  %l189 = alloca i32
  %l190 = alloca i32
  %l194 = alloca i32
  %l198 = alloca i1
  %l208 = alloca %"compiler/generic:Unmet"
  %l221 = alloca { i64, ptr }
  %l225 = alloca i1
  %l226 = alloca ptr
  %l227 = alloca i32
  %l231 = alloca i32
  %l233 = alloca i1
  %l237 = alloca %"compiler/generic:Unmet"
  %l238 = alloca ptr
  %l239 = alloca i32
  %l240 = alloca i32
  %l244 = alloca i32
  %l246 = alloca i1
  %l250 = alloca { i64, ptr }
  %l251 = alloca i1
  %l256 = alloca i32
  %l259 = alloca i32
  %l263 = alloca i32
  %l268 = alloca i32
  %l272 = alloca i1
  %l273 = alloca ptr
  %l277 = alloca i32
  %l278 = alloca i64
  %l281 = alloca i64
  %l283 = alloca i32
  %l285 = alloca i32
  %l287 = alloca i1
  %l289 = alloca %"compiler/generic:Unmet"
  %l292 = alloca %"compiler/generic:Unmet"
  %l294 = alloca %"compiler/generic:Unmet"
  %s7 = alloca %olang.scope
  %s8 = alloca %olang.scope
  %s9 = alloca %olang.scope
  %s13 = alloca %olang.scope
  %s15 = alloca %olang.scope
  %s17 = alloca %olang.scope
  %s22 = alloca %olang.scope
  %s23 = alloca %olang.scope
  %s27 = alloca %olang.scope
  %rv = alloca %"compiler/generic:Unmet"
  %t304 = alloca %"compiler/generic:Context", align 8
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  store i32 %a2, ptr %l2
  store i1 %a3, ptr %l3
  store i64 %a4, ptr %l4
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load i64, ptr %l4, !tbaa !24
  %t3 = icmp sgt i64 %t1, 32
  br i1 %t3, label %bb1, label %bb2
bb1:
  %t5 = call %"compiler/generic:Unmet" @compiler_2fgeneric_2eUnmet_2emet()
  store %"compiler/generic:Unmet" %t5, ptr %l36
  br label %bb3
bb2:
  br label %bb4
bb3:
  %t6 = load %"compiler/generic:Unmet", ptr %l36
  store %"compiler/generic:Unmet" %t6, ptr %rv
  br label %ret
bb4:
  %t7 = load ptr, ptr %l0, !tbaa !29
  %t9 = getelementptr %"compiler/generic:Program", ptr %t7, i32 0, i32 2
  %t10 = load i32, ptr %l2, !tbaa !23
  %t13 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t9, i32 %t10)
  store i32 %t13, ptr %l40
  br label %bb5
bb5:
  %t14 = load i32, ptr %l40, !range !{i32 0, i32 33}
  %t16 = trunc i64 22 to i32
  %t17 = icmp eq i32 %t14, %t16
  br i1 %t17, label %bb6, label %bb7
bb6:
  %t19 = load ptr, ptr %l0, !tbaa !29
  %t21 = getelementptr %"compiler/generic:Program", ptr %t19, i32 0, i32 2
  store ptr %t21, ptr %l44, !tbaa !29
  %t22 = load ptr, ptr %l0, !tbaa !29
  %t24 = getelementptr %"compiler/generic:Program", ptr %t22, i32 0, i32 2
  %t25 = load i32, ptr %l2, !tbaa !23
  %t28 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParts(ptr %v0, ptr %t24, i32 %t25)
  store i32 %t28, ptr %l48
  br label %bb8
bb7:
  br label %bb21
bb8:
  %t29 = load ptr, ptr %l44, !tbaa !29
  %t30 = load i32, ptr %l48, !tbaa !23
  %t31 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t29, i32 %t30)
  store { i64, ptr } %t31, ptr %l49
  br label %bb9
bb9:
  %t32 = load { i64, ptr }, ptr %l49, !tbaa !27
  store { i64, ptr } %t32, ptr %l5, !tbaa !27
  store i64 0, ptr %l6, !tbaa !24
  %t33 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t35 = extractvalue { i64, ptr } %t33, 0
  store i64 %t35, ptr %l7, !tbaa !24
  br label %bb10
bb10:
  %t37 = load i64, ptr %l6, !tbaa !24
  %t38 = load i64, ptr %l7, !tbaa !24
  %t41 = icmp slt i64 %t37, %t38
  %t43 = xor i1 %t41, true
  br i1 %t43, label %bb11, label %bb12
bb11:
  br label %bb19
bb12:
  br label %bb13
bb13:
  %t45 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t45, ptr %l56, !tbaa !27
  %t46 = load i64, ptr %l6, !tbaa !24
  %t48 = getelementptr { i64, ptr }, ptr %l56, i32 0, i32 1
  %t49 = load ptr, ptr %t48, !tbaa !27
  %t50 = getelementptr i32, ptr %t49, i64 %t46
  %t51 = load i32, ptr %t50, !tbaa !33
  %t53 = load ptr, ptr %l0, !tbaa !29
  %t54 = load i32, ptr %l1, !tbaa !23
  %t56 = load i1, ptr %l3, !tbaa !21
  %t57 = load i64, ptr %l4, !tbaa !24
  %t59 = add i64 %t57, 1
  %t65 = call %"compiler/generic:Unmet" @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eMissing(ptr %v0, ptr %t53, i32 %t54, i32 %t51, i1 %t56, i64 %t59)
  store %"compiler/generic:Unmet" %t65, ptr %l65
  br label %bb14
bb14:
  %t66 = load %"compiler/generic:Unmet", ptr %l65
  store %"compiler/generic:Unmet" %t66, ptr %l9
  %t67 = getelementptr %"compiler/generic:Unmet", ptr %l9, i32 0, i32 0
  %t68 = load i64, ptr %t67, !tbaa !24
  %t70 = icmp sge i64 %t68, 0
  br i1 %t70, label %bb15, label %bb16
bb15:
  %t72 = load %"compiler/generic:Unmet", ptr %l9
  store %"compiler/generic:Unmet" %t72, ptr %rv
  br label %ret
bb16:
  br label %bb17
bb17:
  br label %bb18
bb18:
  %t74 = load i64, ptr %l6, !tbaa !24
  %t76 = add i64 %t74, 1
  store i64 %t76, ptr %l6, !tbaa !24
  br label %bb10
bb19:
  %t78 = call %"compiler/generic:Unmet" @compiler_2fgeneric_2eUnmet_2emet()
  store %"compiler/generic:Unmet" %t78, ptr %l71
  br label %bb20
bb20:
  %t79 = load %"compiler/generic:Unmet", ptr %l71
  store %"compiler/generic:Unmet" %t79, ptr %rv
  br label %ret
bb21:
  %t80 = load ptr, ptr %l0, !tbaa !29
  %t82 = getelementptr %"compiler/generic:Program", ptr %t80, i32 0, i32 2
  %t83 = load i32, ptr %l2, !tbaa !23
  %t86 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t82, i32 %t83)
  store i32 %t86, ptr %l75
  br label %bb22
bb22:
  %t87 = load i32, ptr %l75, !range !{i32 0, i32 33}
  %t89 = trunc i64 18 to i32
  %t90 = icmp eq i32 %t87, %t89
  %t92 = xor i1 %t90, true
  br i1 %t92, label %bb23, label %bb24
bb23:
  store %olang.scope zeroinitializer, ptr %s7
  %t94 = load i32, ptr %l2, !tbaa !23
  %t96 = call %"compiler/generic:Unmet" @compiler_2fgeneric_3aUnmet_2ector(ptr %s7, i64 0, i32 %t94, i32 0, i1 false, i1 false, i1 false)
  store %"compiler/generic:Unmet" %t96, ptr %l80
  br label %bb25
bb24:
  br label %bb26
bb25:
  call void @__olang_scope_close(ptr %s7)
  %t97 = load %"compiler/generic:Unmet", ptr %l80
  store %"compiler/generic:Unmet" %t97, ptr %rv
  br label %ret
bb26:
  %t98 = load ptr, ptr %l0, !tbaa !29
  %t100 = getelementptr %"compiler/generic:Program", ptr %t98, i32 0, i32 2
  %t101 = load i32, ptr %l1, !tbaa !23
  %t104 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t100, i32 %t101)
  store i32 %t104, ptr %l84
  br label %bb27
bb27:
  %t105 = load i32, ptr %l84, !range !{i32 0, i32 33}
  %t107 = trunc i64 20 to i32
  %t108 = icmp eq i32 %t105, %t107
  br i1 %t108, label %bb28, label %bb29
bb28:
  %t110 = load ptr, ptr %l0, !tbaa !29
  %t112 = getelementptr %"compiler/generic:Program", ptr %t110, i32 0, i32 2
  %t113 = load i32, ptr %l1, !tbaa !23
  %t116 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eReferent(ptr %v0, ptr %t112, i32 %t113)
  store i32 %t116, ptr %l91
  br label %bb30
bb29:
  %t117 = load i32, ptr %l1, !tbaa !23
  store i32 %t117, ptr %l87, !tbaa !23
  br label %bb31
bb30:
  %t119 = load i32, ptr %l91, !tbaa !23
  store i32 %t119, ptr %l87, !tbaa !23
  br label %bb31
bb31:
  %t120 = load i32, ptr %l87, !tbaa !23
  store i32 %t120, ptr %l10, !tbaa !23
  %t121 = load ptr, ptr %l0, !tbaa !29
  %t123 = getelementptr %"compiler/generic:Program", ptr %t121, i32 0, i32 2
  %t124 = load i32, ptr %l10, !tbaa !23
  %t127 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t123, i32 %t124)
  store i32 %t127, ptr %l96
  br label %bb32
bb32:
  %t128 = load i32, ptr %l96, !range !{i32 0, i32 33}
  %t130 = trunc i64 29 to i32
  %t131 = icmp eq i32 %t128, %t130
  br i1 %t131, label %bb33, label %bb34
bb33:
  store %olang.scope zeroinitializer, ptr %s8
  store %olang.scope zeroinitializer, ptr %s9
  %t133 = load ptr, ptr %l0, !tbaa !29
  store ptr %t133, ptr %l99, !tbaa !29
  %t134 = load ptr, ptr %l0, !tbaa !29
  %t136 = getelementptr %"compiler/generic:Program", ptr %t134, i32 0, i32 2
  %t137 = load i32, ptr %l10, !tbaa !23
  %t140 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eAnyTrait(ptr %v0, ptr %t136, i32 %t137)
  store i32 %t140, ptr %l103
  br label %bb35
bb34:
  br label %bb49
bb35:
  %t141 = load ptr, ptr %l99, !tbaa !29
  %t142 = load i32, ptr %l103, !tbaa !23
  %t143 = call { i64, ptr } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eAnyCovers(ptr %v0, ptr %s9, ptr %t141, i32 %t142)
  store { i64, ptr } %t143, ptr %l104
  br label %bb36
bb36:
  %t144 = load { i64, ptr }, ptr %l104, !tbaa !27
  %t145 = extractvalue { i64, ptr } %t144, 0
  %t146 = extractvalue { i64, ptr } %t144, 1
  %t147 = mul i64 %t145, 4
  %t148 = call ptr @__olang_scope_alloc(ptr %s9, i64 %t147)
  call void @llvm.memcpy.p0.p0.i64(ptr %t148, ptr %t146, i64 %t147, i1 false)
  %t149 = insertvalue { i64, ptr } undef, i64 %t145, 0
  %t150 = insertvalue { i64, ptr } %t149, ptr %t148, 1
  store { i64, ptr } %t150, ptr %l11, !tbaa !27
  store i64 0, ptr %l12, !tbaa !24
  %t152 = load { i64, ptr }, ptr %l11, !tbaa !27
  %t154 = extractvalue { i64, ptr } %t152, 0
  store i64 %t154, ptr %l13, !tbaa !24
  br label %bb37
bb37:
  %t156 = load i64, ptr %l12, !tbaa !24
  %t157 = load i64, ptr %l13, !tbaa !24
  %t160 = icmp slt i64 %t156, %t157
  %t162 = xor i1 %t160, true
  br i1 %t162, label %bb38, label %bb39
bb38:
  br label %bb47
bb39:
  br label %bb40
bb40:
  %t164 = load { i64, ptr }, ptr %l11, !tbaa !27
  store { i64, ptr } %t164, ptr %l112, !tbaa !27
  %t165 = load i64, ptr %l12, !tbaa !24
  %t167 = getelementptr { i64, ptr }, ptr %l112, i32 0, i32 1
  %t168 = load ptr, ptr %t167, !tbaa !27
  %t169 = getelementptr i32, ptr %t168, i64 %t165
  %t170 = load i32, ptr %t169, !tbaa !33
  %t172 = load ptr, ptr %l0, !tbaa !29
  %t174 = getelementptr %"compiler/generic:Program", ptr %t172, i32 0, i32 2
  %t176 = load i32, ptr %l2, !tbaa !23
  %t180 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eSame(ptr %v0, ptr %t174, i32 %t170, i32 %t176)
  store i1 %t180, ptr %l119
  br label %bb41
bb41:
  %t181 = load i1, ptr %l119, !tbaa !21
  br i1 %t181, label %bb42, label %bb43
bb42:
  %t182 = call %"compiler/generic:Unmet" @compiler_2fgeneric_2eUnmet_2emet()
  store %"compiler/generic:Unmet" %t182, ptr %l120
  br label %bb44
bb43:
  br label %bb45
bb44:
  call void @__olang_scope_close(ptr %s9)
  call void @__olang_scope_close(ptr %s8)
  %t183 = load %"compiler/generic:Unmet", ptr %l120
  store %"compiler/generic:Unmet" %t183, ptr %rv
  br label %ret
bb45:
  br label %bb46
bb46:
  %t184 = load i64, ptr %l12, !tbaa !24
  %t186 = add i64 %t184, 1
  store i64 %t186, ptr %l12, !tbaa !24
  br label %bb37
bb47:
  call void @__olang_scope_close(ptr %s9)
  %t188 = load i32, ptr %l2, !tbaa !23
  %t190 = call %"compiler/generic:Unmet" @compiler_2fgeneric_3aUnmet_2ector(ptr %s8, i64 0, i32 %t188, i32 0, i1 false, i1 false, i1 false)
  store %"compiler/generic:Unmet" %t190, ptr %l124
  br label %bb48
bb48:
  call void @__olang_scope_close(ptr %s8)
  %t191 = load %"compiler/generic:Unmet", ptr %l124
  store %"compiler/generic:Unmet" %t191, ptr %rv
  br label %ret
bb49:
  %t192 = load ptr, ptr %l0, !tbaa !29
  %t194 = getelementptr %"compiler/generic:Program", ptr %t192, i32 0, i32 2
  %t195 = load i32, ptr %l2, !tbaa !23
  %t198 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %t194, i32 %t195)
  store i32 %t198, ptr %l128
  br label %bb50
bb50:
  %t199 = load i32, ptr %l128, !tbaa !23
  store i32 %t199, ptr %l15, !tbaa !23
  %t200 = load ptr, ptr %l0, !tbaa !29
  %t201 = load i32, ptr %l15, !tbaa !23
  %t204 = call ptr @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2etypeDecl(ptr %v0, ptr %v0, ptr %t200, i32 %t201)
  store ptr %t204, ptr %l131
  br label %bb51
bb51:
  %t205 = load ptr, ptr %l131, !tbaa !29
  store ptr %t205, ptr %l16, !tbaa !29
  %t206 = load ptr, ptr %l16, !tbaa !29
  %t208 = icmp eq ptr %t206, null
  br i1 %t208, label %bb52, label %bb53
bb52:
  store i1 true, ptr %l134, !tbaa !21
  br label %bb54
bb53:
  %t210 = load ptr, ptr %l16, !tbaa !29
  %t212 = getelementptr %"compiler/ast:TypeDecl", ptr %t210, i32 0, i32 3
  %t213 = load ptr, ptr %t212, !tbaa !29
  %t215 = icmp eq ptr %t213, null
  store i1 %t215, ptr %l134, !tbaa !21
  br label %bb54
bb54:
  %t217 = load i1, ptr %l134, !tbaa !21
  br i1 %t217, label %bb55, label %bb56
bb55:
  store %olang.scope zeroinitializer, ptr %s13
  %t218 = load i32, ptr %l2, !tbaa !23
  %t220 = call %"compiler/generic:Unmet" @compiler_2fgeneric_3aUnmet_2ector(ptr %s13, i64 0, i32 %t218, i32 0, i1 false, i1 false, i1 false)
  store %"compiler/generic:Unmet" %t220, ptr %l139
  br label %bb57
bb56:
  br label %bb58
bb57:
  call void @__olang_scope_close(ptr %s13)
  %t221 = load %"compiler/generic:Unmet", ptr %l139
  store %"compiler/generic:Unmet" %t221, ptr %rv
  br label %ret
bb58:
  %t222 = load ptr, ptr %l16, !tbaa !29
  %t224 = getelementptr %"compiler/ast:TypeDecl", ptr %t222, i32 0, i32 3
  %t225 = load ptr, ptr %t224, !tbaa !29
  store ptr %t225, ptr %l17, !tbaa !29
  %t227 = load ptr, ptr %l17, !tbaa !29
  store ptr %t227, ptr %l142, !tbaa !29
  store i1 false, ptr %l143, !tbaa !21
  %t228 = load ptr, ptr %l142, !tbaa !29
  %t229 = icmp ne ptr %t228, null
  br i1 %t229, label %bb59, label %bb60
bb59:
  %t231 = load ptr, ptr %l142, !tbaa !29
  %t232 = load i64, ptr %t231, !range !{i64 0, i64 5}
  %t234 = icmp eq i64 %t232, 2
  store i1 %t234, ptr %l143, !tbaa !21
  br label %bb60
bb60:
  %t235 = load i1, ptr %l143, !tbaa !21
  br i1 %t235, label %bb61, label %bb62
bb61:
  %t236 = load ptr, ptr %l17, !tbaa !29
  %t238 = getelementptr { i64, [6 x i64] }, ptr %t236, i32 0, i32 1
  %t239 = getelementptr { { i64, ptr }, { i64, ptr }, { i64, ptr } }, ptr %t238, i32 0, i32 0
  %t240 = load { i64, ptr }, ptr %t239
  store { i64, ptr } %t240, ptr %l18, !tbaa !27
  %t242 = load ptr, ptr %l17, !tbaa !29
  %t244 = getelementptr { i64, [6 x i64] }, ptr %t242, i32 0, i32 1
  %t245 = getelementptr { { i64, ptr }, { i64, ptr }, { i64, ptr } }, ptr %t244, i32 0, i32 1
  %t246 = load { i64, ptr }, ptr %t245
  store { i64, ptr } %t246, ptr %l19, !tbaa !27
  %t248 = load ptr, ptr %l17, !tbaa !29
  %t250 = getelementptr { i64, [6 x i64] }, ptr %t248, i32 0, i32 1
  %t251 = getelementptr { { i64, ptr }, { i64, ptr }, { i64, ptr } }, ptr %t250, i32 0, i32 2
  %t252 = load { i64, ptr }, ptr %t251
  store { i64, ptr } %t252, ptr %l20, !tbaa !27
  br label %bb63
bb62:
  br label %bb137
bb63:
  %t254 = load i1, ptr %l3, !tbaa !21
  br i1 %t254, label %bb64, label %bb65
bb64:
  %t256 = load { i64, ptr }, ptr %l20, !tbaa !27
  %t258 = extractvalue { i64, ptr } %t256, 0
  %t260 = icmp sgt i64 %t258, 0
  store i1 %t260, ptr %l153, !tbaa !21
  br label %bb66
bb65:
  store i1 false, ptr %l153, !tbaa !21
  br label %bb66
bb66:
  %t262 = load i1, ptr %l153, !tbaa !21
  br i1 %t262, label %bb67, label %bb68
bb67:
  %t263 = load ptr, ptr %l0, !tbaa !29
  %t264 = load i32, ptr %l1, !tbaa !23
  %t265 = load i32, ptr %l2, !tbaa !23
  %t269 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eMember(ptr %v0, ptr %t263, i32 %t264, i32 %t265)
  store i1 %t269, ptr %l161
  br label %bb69
bb68:
  store i1 false, ptr %l157, !tbaa !21
  br label %bb70
bb69:
  %t270 = load i1, ptr %l161, !tbaa !21
  %t271 = xor i1 %t270, true
  store i1 %t271, ptr %l157, !tbaa !21
  br label %bb70
bb70:
  %t273 = load i1, ptr %l157, !tbaa !21
  br i1 %t273, label %bb71, label %bb72
bb71:
  store %olang.scope zeroinitializer, ptr %s15
  %t274 = load i32, ptr %l2, !tbaa !23
  %t276 = call %"compiler/generic:Unmet" @compiler_2fgeneric_3aUnmet_2ector(ptr %s15, i64 0, i32 %t274, i32 0, i1 false, i1 false, i1 true)
  store %"compiler/generic:Unmet" %t276, ptr %l164
  br label %bb73
bb72:
  br label %bb74
bb73:
  call void @__olang_scope_close(ptr %s15)
  %t277 = load %"compiler/generic:Unmet", ptr %l164
  store %"compiler/generic:Unmet" %t277, ptr %rv
  br label %ret
bb74:
  %t278 = load { i64, ptr }, ptr %l19, !tbaa !27
  store { i64, ptr } %t278, ptr %l21, !tbaa !27
  store i64 0, ptr %l22, !tbaa !24
  %t280 = load { i64, ptr }, ptr %l21, !tbaa !27
  %t282 = extractvalue { i64, ptr } %t280, 0
  store i64 %t282, ptr %l23, !tbaa !24
  br label %bb75
bb75:
  store %olang.scope zeroinitializer, ptr %s17
  %t284 = load i64, ptr %l22, !tbaa !24
  %t285 = load i64, ptr %l23, !tbaa !24
  %t288 = icmp slt i64 %t284, %t285
  %t290 = xor i1 %t288, true
  br i1 %t290, label %bb76, label %bb77
bb76:
  call void @__olang_scope_close(ptr %s17)
  br label %bb96
bb77:
  br label %bb78
bb78:
  %t292 = load { i64, ptr }, ptr %l21, !tbaa !27
  store { i64, ptr } %t292, ptr %l172, !tbaa !27
  %t293 = load i64, ptr %l22, !tbaa !24
  %t295 = getelementptr { i64, ptr }, ptr %l172, i32 0, i32 1
  %t296 = load ptr, ptr %t295, !tbaa !27
  %t297 = getelementptr ptr, ptr %t296, i64 %t293
  %t298 = load ptr, ptr %t297, !tbaa !39
  store ptr %t298, ptr %l24, !tbaa !29
  %t300 = load ptr, ptr %l0, !tbaa !29
  store ptr %t300, ptr %l175, !tbaa !29
  %t301 = load ptr, ptr %l0, !tbaa !29
  store ptr %t301, ptr %l176, !tbaa !29
  %t302 = load ptr, ptr %l0, !tbaa !29
  %t303 = load i32, ptr %l15, !tbaa !23
  call void @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2edeclContext(ptr %t304, ptr %v0, ptr %s17, ptr %t302, i32 %t303)
  call void @llvm.memmove.p0.p0.i64(ptr %l179, ptr %t304, i64 160, i1 false)
  br label %bb79
bb79:
  %t307 = call ptr @__olang_scope_alloc_a(ptr %s17, i64 160, i64 8)
  call void @llvm.memmove.p0.p0.i64(ptr %t307, ptr %l179, i64 160, i1 false)
  %t308 = load ptr, ptr %l24, !tbaa !29
  %t310 = load ptr, ptr %l176, !tbaa !29
  %t313 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eResolve(ptr %v0, ptr %s17, ptr %v0, ptr %t310, ptr %t307, ptr %t308)
  store i32 %t313, ptr %l183
  br label %bb80
bb80:
  %t314 = load i32, ptr %l15, !tbaa !23
  %t316 = call i64 @compiler_2fgeneric_2eDeclOwner(i32 %t314)
  store i64 %t316, ptr %l185
  br label %bb81
bb81:
  %t317 = load ptr, ptr %l0, !tbaa !29
  %t319 = getelementptr %"compiler/generic:Program", ptr %t317, i32 0, i32 2
  %t320 = load i32, ptr %l2, !tbaa !23
  %t323 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eArgs(ptr %v0, ptr %t319, i32 %t320)
  store i32 %t323, ptr %l189
  br label %bb82
bb82:
  %t324 = load ptr, ptr %l175, !tbaa !29
  %t325 = load i32, ptr %l183, !tbaa !23
  %t326 = load i64, ptr %l185, !tbaa !24
  %t327 = load i32, ptr %l189, !tbaa !23
  %t328 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eSubst(ptr %v0, ptr %t324, i32 %t325, i64 %t326, i32 %t327)
  store i32 %t328, ptr %l190
  br label %bb83
bb83:
  %t329 = load i32, ptr %l190, !tbaa !23
  store i32 %t329, ptr %l25, !tbaa !23
  %t330 = load ptr, ptr %l0, !tbaa !29
  %t332 = getelementptr %"compiler/generic:Program", ptr %t330, i32 0, i32 2
  %t333 = load i32, ptr %l25, !tbaa !23
  %t336 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t332, i32 %t333)
  store i32 %t336, ptr %l194
  br label %bb84
bb84:
  %t337 = load i32, ptr %l194, !range !{i32 0, i32 33}
  %t339 = trunc i64 18 to i32
  %t340 = icmp eq i32 %t337, %t339
  %t342 = xor i1 %t340, true
  br i1 %t342, label %bb85, label %bb86
bb85:
  store i1 true, ptr %l198, !tbaa !21
  br label %bb87
bb86:
  %t344 = load i32, ptr %l25, !tbaa !23
  %t345 = load i32, ptr %l2, !tbaa !23
  %t348 = icmp eq i32 %t344, %t345
  store i1 %t348, ptr %l198, !tbaa !21
  br label %bb87
bb87:
  %t350 = load i1, ptr %l198, !tbaa !21
  br i1 %t350, label %bb88, label %bb89
bb88:
  call void @__olang_scope_close(ptr %s17)
  br label %bb95
bb89:
  br label %bb90
bb90:
  %t351 = load ptr, ptr %l0, !tbaa !29
  %t352 = load i32, ptr %l1, !tbaa !23
  %t353 = load i32, ptr %l25, !tbaa !23
  %t354 = load i1, ptr %l3, !tbaa !21
  %t355 = load i64, ptr %l4, !tbaa !24
  %t357 = add i64 %t355, 1
  %t363 = call %"compiler/generic:Unmet" @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eMissing(ptr %v0, ptr %t351, i32 %t352, i32 %t353, i1 %t354, i64 %t357)
  store %"compiler/generic:Unmet" %t363, ptr %l208
  br label %bb91
bb91:
  %t364 = load %"compiler/generic:Unmet", ptr %l208
  store %"compiler/generic:Unmet" %t364, ptr %l26
  %t365 = getelementptr %"compiler/generic:Unmet", ptr %l26, i32 0, i32 0
  %t366 = load i64, ptr %t365, !tbaa !24
  %t368 = icmp sge i64 %t366, 0
  br i1 %t368, label %bb92, label %bb93
bb92:
  %t370 = load %"compiler/generic:Unmet", ptr %l26
  call void @__olang_scope_close(ptr %s17)
  store %"compiler/generic:Unmet" %t370, ptr %rv
  br label %ret
bb93:
  br label %bb94
bb94:
  call void @__olang_scope_close(ptr %s17)
  br label %bb95
bb95:
  %t372 = load i64, ptr %l22, !tbaa !24
  %t374 = add i64 %t372, 1
  store i64 %t374, ptr %l22, !tbaa !24
  br label %bb75
bb96:
  %t376 = load { i64, ptr }, ptr %l18, !tbaa !27
  store { i64, ptr } %t376, ptr %l27, !tbaa !27
  store i64 0, ptr %l28, !tbaa !24
  %t378 = load { i64, ptr }, ptr %l27, !tbaa !27
  %t380 = extractvalue { i64, ptr } %t378, 0
  store i64 %t380, ptr %l29, !tbaa !24
  br label %bb97
bb97:
  store %olang.scope zeroinitializer, ptr %s22
  %t382 = load i64, ptr %l28, !tbaa !24
  %t383 = load i64, ptr %l29, !tbaa !24
  %t386 = icmp slt i64 %t382, %t383
  %t388 = xor i1 %t386, true
  br i1 %t388, label %bb98, label %bb99
bb98:
  call void @__olang_scope_close(ptr %s22)
  br label %bb135
bb99:
  br label %bb100
bb100:
  %t390 = load { i64, ptr }, ptr %l27, !tbaa !27
  store { i64, ptr } %t390, ptr %l221, !tbaa !27
  %t391 = load i64, ptr %l28, !tbaa !24
  %t393 = getelementptr { i64, ptr }, ptr %l221, i32 0, i32 1
  %t394 = load ptr, ptr %t393, !tbaa !27
  %t395 = getelementptr ptr, ptr %t394, i64 %t391
  %t396 = load ptr, ptr %t395, !tbaa !39
  store ptr %t396, ptr %l30, !tbaa !29
  %t398 = load ptr, ptr %l30, !tbaa !29
  %t400 = call i1 @compiler_2fast_2ecompiler_2fast_3aFunc_2eIsBuilder(ptr %v0, ptr %t398)
  store i1 %t400, ptr %l225
  br label %bb101
bb101:
  %t401 = load i1, ptr %l225, !tbaa !21
  br i1 %t401, label %bb102, label %bb103
bb102:
  store %olang.scope zeroinitializer, ptr %s23
  %t402 = load ptr, ptr %l0, !tbaa !29
  store ptr %t402, ptr %l226, !tbaa !29
  %t403 = load i32, ptr %l15, !tbaa !23
  store i32 %t403, ptr %l227, !tbaa !23
  %t404 = load ptr, ptr %l0, !tbaa !29
  %t406 = getelementptr %"compiler/generic:Program", ptr %t404, i32 0, i32 2
  %t407 = load i32, ptr %l2, !tbaa !23
  %t410 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eArgs(ptr %v0, ptr %t406, i32 %t407)
  store i32 %t410, ptr %l231
  br label %bb104
bb103:
  br label %bb110
bb104:
  %t411 = load ptr, ptr %l30, !tbaa !29
  %t412 = load ptr, ptr %l226, !tbaa !29
  %t413 = load i32, ptr %l227, !tbaa !23
  %t414 = load i32, ptr %l231, !tbaa !23
  %t416 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2emeetsBuilder(ptr %v0, ptr %v0, ptr %t412, i32 %t413, i32 %t414, ptr %t411)
  store i1 %t416, ptr %l233
  br label %bb105
bb105:
  %t417 = load i1, ptr %l233, !tbaa !21
  br i1 %t417, label %bb106, label %bb107
bb106:
  call void @__olang_scope_close(ptr %s23)
  call void @__olang_scope_close(ptr %s22)
  br label %bb134
bb107:
  br label %bb108
bb108:
  %t418 = load i32, ptr %l2, !tbaa !23
  %t419 = load ptr, ptr %l30, !tbaa !29
  %t421 = getelementptr %"compiler/ast:Func", ptr %t419, i32 0, i32 2
  %t422 = load i32, ptr %t421, !tbaa !23
  %t425 = call %"compiler/generic:Unmet" @compiler_2fgeneric_3aUnmet_2ector(ptr %s23, i64 0, i32 %t418, i32 %t422, i1 true, i1 false, i1 false)
  store %"compiler/generic:Unmet" %t425, ptr %l237
  br label %bb109
bb109:
  call void @__olang_scope_close(ptr %s23)
  call void @__olang_scope_close(ptr %s22)
  %t426 = load %"compiler/generic:Unmet", ptr %l237
  store %"compiler/generic:Unmet" %t426, ptr %rv
  br label %ret
bb110:
  %t427 = load ptr, ptr %l0, !tbaa !29
  store ptr %t427, ptr %l238, !tbaa !29
  %t428 = load i32, ptr %l1, !tbaa !23
  store i32 %t428, ptr %l239, !tbaa !23
  %t429 = load i32, ptr %l15, !tbaa !23
  store i32 %t429, ptr %l240, !tbaa !23
  %t430 = load ptr, ptr %l0, !tbaa !29
  %t432 = getelementptr %"compiler/generic:Program", ptr %t430, i32 0, i32 2
  %t433 = load i32, ptr %l2, !tbaa !23
  %t436 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eArgs(ptr %v0, ptr %t432, i32 %t433)
  store i32 %t436, ptr %l244
  br label %bb111
bb111:
  %t437 = load ptr, ptr %l30, !tbaa !29
  %t438 = load ptr, ptr %l238, !tbaa !29
  %t439 = load i32, ptr %l239, !tbaa !23
  %t440 = load i32, ptr %l240, !tbaa !23
  %t441 = load i32, ptr %l244, !tbaa !23
  %t443 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2emeets(ptr %v0, ptr %v0, ptr %t438, i32 %t439, i32 %t440, i32 %t441, ptr %t437)
  store i1 %t443, ptr %l246
  br label %bb112
bb112:
  %t444 = load i1, ptr %l246, !tbaa !21
  br i1 %t444, label %bb113, label %bb114
bb113:
  call void @__olang_scope_close(ptr %s22)
  br label %bb134
bb114:
  br label %bb115
bb115:
  %t445 = load ptr, ptr %l0, !tbaa !29
  %t446 = load ptr, ptr %l30, !tbaa !29
  %t448 = getelementptr %"compiler/ast:Func", ptr %t446, i32 0, i32 2
  %t449 = load i32, ptr %t448, !tbaa !23
  %t452 = call { i64, ptr } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2etext(ptr %v0, ptr %v0, ptr %t445, i32 %t449)
  store { i64, ptr } %t452, ptr %l250
  br label %bb116
bb116:
  %t453 = load { i64, ptr }, ptr %l250, !tbaa !27
  %t454 = call i1 @compiler_2fload_2ePublic(ptr %v0, { i64, ptr } %t453)
  store i1 %t454, ptr %l251
  br label %bb117
bb117:
  %t455 = load i1, ptr %l251, !tbaa !21
  %t456 = xor i1 %t455, true
  store i1 %t456, ptr %l31, !tbaa !21
  %t458 = load ptr, ptr %l0, !tbaa !29
  %t460 = getelementptr %"compiler/generic:Program", ptr %t458, i32 0, i32 2
  %t461 = load i32, ptr %l1, !tbaa !23
  %t464 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t460, i32 %t461)
  store i32 %t464, ptr %l256
  br label %bb118
bb118:
  %t465 = load i32, ptr %l256, !range !{i32 0, i32 33}
  %t467 = trunc i64 20 to i32
  %t468 = icmp eq i32 %t465, %t467
  br i1 %t468, label %bb119, label %bb120
bb119:
  %t470 = load ptr, ptr %l0, !tbaa !29
  %t472 = getelementptr %"compiler/generic:Program", ptr %t470, i32 0, i32 2
  %t473 = load i32, ptr %l1, !tbaa !23
  %t476 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eReferent(ptr %v0, ptr %t472, i32 %t473)
  store i32 %t476, ptr %l263
  br label %bb121
bb120:
  %t477 = load i32, ptr %l1, !tbaa !23
  store i32 %t477, ptr %l259, !tbaa !23
  br label %bb122
bb121:
  %t479 = load i32, ptr %l263, !tbaa !23
  store i32 %t479, ptr %l259, !tbaa !23
  br label %bb122
bb122:
  %t480 = load i32, ptr %l259, !tbaa !23
  store i32 %t480, ptr %l32, !tbaa !23
  %t481 = load ptr, ptr %l0, !tbaa !29
  %t483 = getelementptr %"compiler/generic:Program", ptr %t481, i32 0, i32 2
  %t484 = load i32, ptr %l32, !tbaa !23
  %t487 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t483, i32 %t484)
  store i32 %t487, ptr %l268
  br label %bb123
bb123:
  %t488 = load i32, ptr %l268, !range !{i32 0, i32 33}
  %t490 = trunc i64 18 to i32
  %t491 = icmp eq i32 %t488, %t490
  %t493 = xor i1 %t491, true
  br i1 %t493, label %bb124, label %bb125
bb124:
  store i1 true, ptr %l272, !tbaa !21
  br label %bb129
bb125:
  %t495 = load ptr, ptr %l0, !tbaa !29
  store ptr %t495, ptr %l273, !tbaa !29
  %t496 = load ptr, ptr %l0, !tbaa !29
  %t498 = getelementptr %"compiler/generic:Program", ptr %t496, i32 0, i32 2
  %t499 = load i32, ptr %l32, !tbaa !23
  %t502 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %t498, i32 %t499)
  store i32 %t502, ptr %l277
  br label %bb126
bb126:
  %t503 = load ptr, ptr %l273, !tbaa !29
  %t504 = load i32, ptr %l277, !tbaa !23
  %t505 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eDeclModule(ptr %v0, ptr %t503, i32 %t504)
  store i64 %t505, ptr %l278
  br label %bb127
bb127:
  %t506 = load ptr, ptr %l0, !tbaa !29
  %t507 = load i32, ptr %l15, !tbaa !23
  %t510 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eDeclModule(ptr %v0, ptr %t506, i32 %t507)
  store i64 %t510, ptr %l281
  br label %bb128
bb128:
  %t511 = load i64, ptr %l278, !tbaa !24
  %t512 = load i64, ptr %l281, !tbaa !24
  %t513 = icmp ne i64 %t511, %t512
  store i1 %t513, ptr %l272, !tbaa !21
  br label %bb129
bb129:
  %t515 = load i1, ptr %l272, !tbaa !21
  store i1 %t515, ptr %l33, !tbaa !21
  %t516 = load i32, ptr %l2, !tbaa !23
  store i32 %t516, ptr %l283, !tbaa !23
  %t517 = load ptr, ptr %l30, !tbaa !29
  %t519 = getelementptr %"compiler/ast:Func", ptr %t517, i32 0, i32 2
  %t520 = load i32, ptr %t519, !tbaa !23
  store i32 %t520, ptr %l285, !tbaa !23
  %t521 = load i1, ptr %l31, !tbaa !21
  br i1 %t521, label %bb130, label %bb131
bb130:
  %t523 = load i1, ptr %l33, !tbaa !21
  store i1 %t523, ptr %l287, !tbaa !21
  br label %bb132
bb131:
  store i1 false, ptr %l287, !tbaa !21
  br label %bb132
bb132:
  %t525 = load i32, ptr %l283, !tbaa !23
  %t526 = load i32, ptr %l285, !tbaa !23
  %t527 = load i1, ptr %l287, !tbaa !21
  %t528 = call %"compiler/generic:Unmet" @compiler_2fgeneric_3aUnmet_2ector(ptr %s22, i64 0, i32 %t525, i32 %t526, i1 true, i1 %t527, i1 false)
  store %"compiler/generic:Unmet" %t528, ptr %l289
  br label %bb133
bb133:
  call void @__olang_scope_close(ptr %s22)
  %t529 = load %"compiler/generic:Unmet", ptr %l289
  store %"compiler/generic:Unmet" %t529, ptr %rv
  br label %ret
bb134:
  %t530 = load i64, ptr %l28, !tbaa !24
  %t532 = add i64 %t530, 1
  store i64 %t532, ptr %l28, !tbaa !24
  br label %bb97
bb135:
  %t534 = call %"compiler/generic:Unmet" @compiler_2fgeneric_2eUnmet_2emet()
  store %"compiler/generic:Unmet" %t534, ptr %l292
  br label %bb136
bb136:
  %t535 = load %"compiler/generic:Unmet", ptr %l292
  store %"compiler/generic:Unmet" %t535, ptr %rv
  br label %ret
bb137:
  br i1 true, label %bb138, label %bb139
bb138:
  br label %bb140
bb139:
  br label %bb142
bb140:
  store %olang.scope zeroinitializer, ptr %s27
  %t536 = load i32, ptr %l2, !tbaa !23
  %t538 = call %"compiler/generic:Unmet" @compiler_2fgeneric_3aUnmet_2ector(ptr %s27, i64 0, i32 %t536, i32 0, i1 false, i1 false, i1 false)
  store %"compiler/generic:Unmet" %t538, ptr %l294
  br label %bb141
bb141:
  call void @__olang_scope_close(ptr %s27)
  %t539 = load %"compiler/generic:Unmet", ptr %l294
  store %"compiler/generic:Unmet" %t539, ptr %rv
  br label %ret
bb142:
  call void @__olang_check_failed(ptr @olang_loc_baaca818f0e4393a_2cd871f7f771e33e)
  unreachable
ret:
  %rr = load %"compiler/generic:Unmet", ptr %rv
  ret %"compiler/generic:Unmet" %rr
}

define dso_local i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eNewAnyTable(ptr %v0, ptr %a0, i32 %a1, i32 %a2, i64 %a3, %"compiler/source:Span" %a4) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca i32
  %l5 = alloca i64
  %l7 = alloca ptr
  %l11 = alloca i32
  %l12 = alloca i32
  %l13 = alloca ptr
  %l17 = alloca i32
  %l18 = alloca i32
  %l21 = alloca %"compiler/generic:AnyTable"
  %l24 = alloca i64
  %l27 = alloca ptr
  %l31 = alloca i32
  %l35 = alloca %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0"
  %s0 = alloca %olang.scope
  %rv = alloca i64
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  store i32 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/generic:Program", ptr %t1, i32 0, i32 61
  store ptr %t3, ptr %l7, !tbaa !29
  %t4 = load ptr, ptr %l0, !tbaa !29
  %t6 = getelementptr %"compiler/generic:Program", ptr %t4, i32 0, i32 2
  %t7 = load i32, ptr %l1, !tbaa !23
  %t10 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePlain(ptr %v0, ptr %t6, i32 %t7)
  store i32 %t10, ptr %l11
  br label %bb1
bb1:
  %t11 = load i32, ptr %l2, !tbaa !23
  store i32 %t11, ptr %l12, !tbaa !23
  %t12 = load ptr, ptr %l0, !tbaa !29
  store ptr %t12, ptr %l13, !tbaa !29
  %t13 = load ptr, ptr %l0, !tbaa !29
  %t15 = getelementptr %"compiler/generic:Program", ptr %t13, i32 0, i32 2
  %t16 = load i32, ptr %l1, !tbaa !23
  %t19 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePlain(ptr %v0, ptr %t15, i32 %t16)
  store i32 %t19, ptr %l17
  br label %bb2
bb2:
  %t20 = load ptr, ptr %l13, !tbaa !29
  %t21 = load i32, ptr %l17, !tbaa !23
  %t22 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eAnyStored(ptr %v0, ptr %t20, i32 %t21)
  store i32 %t22, ptr %l18
  br label %bb3
bb3:
  %t25 = load i32, ptr %l11, !tbaa !23
  %t26 = load i32, ptr %l12, !tbaa !23
  %t27 = load i32, ptr %l18, !tbaa !23
  %t30 = call %"compiler/generic:AnyTable" @compiler_2fgeneric_3aAnyTable_2ector(ptr %s0, i32 %t25, i32 %t26, i32 %t27, i64 %a3, %"compiler/source:Span" %a4)
  store %"compiler/generic:AnyTable" %t30, ptr %l21
  br label %bb4
bb4:
  %t31 = load ptr, ptr %l7, !tbaa !29
  %t32 = load %"compiler/generic:AnyTable", ptr %l21
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fgeneric_3aAnyTable_3e_2ePus_H18461b16f088a87daf519df5031429e6(ptr %v0, ptr %s0, ptr %t31, %"compiler/generic:AnyTable" %t32)
  br label %bb5
bb5:
  %t33 = load ptr, ptr %l0, !tbaa !29
  %t35 = getelementptr %"compiler/generic:Program", ptr %t33, i32 0, i32 61
  %t37 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fgeneric_3aAnyTable_3e_2eLen_H9daf28210c013890fd7cb07d1d61ba6e(ptr %v0, ptr %t35)
  store i64 %t37, ptr %l24
  br label %bb6
bb6:
  %t38 = load i64, ptr %l24, !tbaa !24
  %t39 = sub i64 %t38, 1
  store i64 %t39, ptr %l5, !tbaa !24
  %t41 = load ptr, ptr %l0, !tbaa !29
  %t43 = getelementptr %"compiler/generic:Program", ptr %t41, i32 0, i32 62
  store ptr %t43, ptr %l27, !tbaa !29
  %t44 = load ptr, ptr %l0, !tbaa !29
  %t46 = getelementptr %"compiler/generic:Program", ptr %t44, i32 0, i32 2
  %t47 = load i32, ptr %l1, !tbaa !23
  %t50 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePlain(ptr %v0, ptr %t46, i32 %t47)
  store i32 %t50, ptr %l31
  br label %bb7
bb7:
  %t51 = load i32, ptr %l31, !tbaa !23
  %t52 = sext i32 %t51 to i64
  %t53 = load i32, ptr %l2, !tbaa !23
  %t55 = sext i32 %t53 to i64
  %t58 = call %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" @std_2fpair_3aPair_3cI64_2c_20I64_3e_2ector(ptr %s0, i64 %t52, i64 %t55)
  store %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t58, ptr %l35
  br label %bb8
bb8:
  %t59 = load i64, ptr %l5, !tbaa !24
  %t60 = load ptr, ptr %l27, !tbaa !29
  %t61 = load %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %l35
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H31314c4e7281f5029d6d8eb3044cef10(ptr %v0, ptr %t60, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t61, i64 %t59)
  br label %bb9
bb9:
  %t63 = load i64, ptr %l5, !tbaa !24
  call void @__olang_scope_close(ptr %s0)
  store i64 %t63, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local { i64, ptr } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eOwnerBinding(ptr %v0, ptr %v1, ptr %a0, i64 %a1, i32 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca %"compiler/generic:Binding"
  %l6 = alloca i32
  %lp7 = alloca ptr
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca i64
  %l12 = alloca i64
  %l13 = alloca i64
  %l15 = alloca i64
  %l18 = alloca i64
  %l21 = alloca %"compiler/generic:Binding"
  %l24 = alloca i32
  %l27 = alloca i1
  %l35 = alloca i32
  %l36 = alloca i64
  %l44 = alloca i64
  %l47 = alloca i64
  %l66 = alloca { i64, ptr }
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
  %t3 = call i64 @compiler_2fgeneric_2eFnOwner(i64 %t1)
  store i64 %t3, ptr %l15
  br label %bb1
bb1:
  %t4 = load i64, ptr %l15, !tbaa !24
  store i64 %t4, ptr %l3, !tbaa !24
  %t5 = load ptr, ptr %l0, !tbaa !29
  %t6 = load i64, ptr %l3, !tbaa !24
  %t9 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eVarCount(ptr %v0, ptr %t5, i64 %t6)
  store i64 %t9, ptr %l18
  br label %bb2
bb2:
  %t10 = load i64, ptr %l18, !tbaa !24
  store i64 %t10, ptr %l4, !tbaa !24
  %t11 = load i64, ptr %l3, !tbaa !24
  %t12 = load i64, ptr %l4, !tbaa !24
  %t15 = call %"compiler/generic:Binding" @compiler_2fgeneric_3aBinding_2ector(ptr %s0, i64 %t11, i64 %t12)
  store %"compiler/generic:Binding" %t15, ptr %l21
  br label %bb3
bb3:
  %t16 = load %"compiler/generic:Binding", ptr %l21
  store %"compiler/generic:Binding" %t16, ptr %l5
  %t17 = load ptr, ptr %l0, !tbaa !29
  %t18 = load i64, ptr %l1, !tbaa !24
  %t21 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eOwnerOf(ptr %v0, ptr %t17, i64 %t18)
  store i32 %t21, ptr %l24
  br label %bb4
bb4:
  %t22 = load i32, ptr %l24, !tbaa !23
  store i32 %t22, ptr %l6, !tbaa !23
  %t23 = load i64, ptr %l4, !tbaa !24
  %t25 = icmp sgt i64 %t23, 0
  br i1 %t25, label %bb5, label %bb6
bb5:
  %t27 = load i32, ptr %l6, !tbaa !23
  %t28 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t31 = icmp ne i32 %t27, %t28
  store i1 %t31, ptr %l27, !tbaa !21
  br label %bb7
bb6:
  store i1 false, ptr %l27, !tbaa !21
  br label %bb7
bb7:
  %t33 = load i1, ptr %l27, !tbaa !21
  br i1 %t33, label %bb8, label %bb9
bb8:
  %t34 = load ptr, ptr %l0, !tbaa !29
  %t35 = load i32, ptr %l6, !tbaa !23
  %t41 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eUnifyArg(ptr %v0, ptr %s0, ptr %t34, i32 %t35, i32 %a2, ptr %l5, i1 false, i1 true)
  store i32 %t41, ptr %l35
  %t42 = icmp ne i32 %t41, 0
  br i1 %t42, label %bb11, label %ok.43, !prof !99
ok.43:
  br label %bb10
bb9:
  br label %bb14
bb10:
  br label %bb13
bb11:
  br label %bb12
bb12:
  br label %bb13
bb13:
  br label %bb14
bb14:
  %t44 = load i64, ptr %l4, !tbaa !24
  store i64 %t44, ptr %l36, !tbaa !24
  %t45 = load i64, ptr %l36, !tbaa !24
  %t46 = icmp sge i64 %t45, 0
  br i1 %t46, label %bb15, label %bb16
bb15:
  %t48 = load i64, ptr %l36, !tbaa !24
  %t49 = icmp sle i64 %t48, 2305843009213693951
  br i1 %t49, label %bb17, label %bb18
bb16:
  call void @__olang_check_failed(ptr @olang_loc_32a7c4e006637d05_92e776a6ed722011)
  unreachable
bb17:
  %t51 = load i64, ptr %l36, !tbaa !24
  %t52 = mul i64 %t51, 4
  %t53 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t52)
  %t54 = insertvalue { i64, ptr } undef, i64 %t51, 0
  %t55 = insertvalue { i64, ptr } %t54, ptr %t53, 1
  %t56 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 16, i64 8)
  store ptr %t56, ptr %lp7
  %t58 = load ptr, ptr %lp7
  store { i64, ptr } %t55, ptr %t58, !tbaa !27
  store i64 0, ptr %l8, !tbaa !24
  %t59 = load i64, ptr %l4, !tbaa !24
  store i64 %t59, ptr %l9, !tbaa !24
  store i64 1, ptr %l10, !tbaa !24
  %t61 = load i64, ptr %l9, !tbaa !24
  %t62 = load i64, ptr %l8, !tbaa !24
  %t65 = icmp sgt i64 %t61, %t62
  br i1 %t65, label %bb19, label %bb20
bb18:
  call void @__olang_check_failed(ptr @olang_loc_32a7c4e006637d05_92e776a6ed722011)
  unreachable
bb19:
  %t67 = load i64, ptr %l10, !tbaa !24
  %t69 = icmp sgt i64 %t67, 0
  br i1 %t69, label %bb21, label %bb22
bb20:
  store i64 0, ptr %l44, !tbaa !24
  br label %bb24
bb21:
  %t71 = load i64, ptr %l9, !tbaa !24
  %t72 = load i64, ptr %l8, !tbaa !24
  %t75 = sub i64 %t71, %t72
  %t76 = load i64, ptr %l10, !tbaa !24
  %t79 = add i64 %t75, %t76
  %t81 = sub i64 %t79, 1
  %t82 = load i64, ptr %l10, !tbaa !24
  %t85 = sdiv i64 %t81, %t82
  store i64 %t85, ptr %l47, !tbaa !24
  br label %bb23
bb22:
  store i64 0, ptr %l47, !tbaa !24
  br label %bb23
bb23:
  %t87 = load i64, ptr %l47, !tbaa !24
  store i64 %t87, ptr %l44, !tbaa !24
  br label %bb24
bb24:
  %t88 = load i64, ptr %l44, !tbaa !24
  store i64 %t88, ptr %l11, !tbaa !24
  store i64 0, ptr %l12, !tbaa !24
  br label %bb25
bb25:
  %t89 = load i64, ptr %l12, !tbaa !24
  %t90 = load i64, ptr %l11, !tbaa !24
  %t93 = icmp slt i64 %t89, %t90
  %t95 = xor i1 %t93, true
  br i1 %t95, label %bb26, label %bb27
bb26:
  br label %bb30
bb27:
  br label %bb28
bb28:
  %t97 = load i64, ptr %l8, !tbaa !24
  %t98 = load i64, ptr %l12, !tbaa !24
  %t99 = load i64, ptr %l10, !tbaa !24
  %t102 = mul i64 %t98, %t99
  %t105 = add i64 %t97, %t102
  store i64 %t105, ptr %l13, !tbaa !24
  %t107 = load i64, ptr %l13, !tbaa !24
  %t108 = getelementptr %"compiler/generic:Binding", ptr %l5, i32 0, i32 2
  %t109 = load { i64, ptr }, ptr %t108, !tbaa !27
  store { i64, ptr } %t109, ptr %l66, !tbaa !27
  %t110 = load i64, ptr %l13, !tbaa !24
  %t112 = getelementptr { i64, ptr }, ptr %l66, i32 0, i32 1
  %t113 = load ptr, ptr %t112, !tbaa !27
  %t114 = getelementptr i32, ptr %t113, i64 %t110
  %t115 = load i32, ptr %t114, !tbaa !33
  %t117 = load ptr, ptr %lp7
  %t119 = getelementptr { i64, ptr }, ptr %t117, i32 0, i32 1
  %t120 = load ptr, ptr %t119, !tbaa !27
  %t121 = getelementptr i32, ptr %t120, i64 %t107
  store i32 %t115, ptr %t121, !tbaa !33
  br label %bb29
bb29:
  %t122 = load i64, ptr %l12, !tbaa !24
  %t124 = add i64 %t122, 1
  store i64 %t124, ptr %l12, !tbaa !24
  br label %bb25
bb30:
  %t126 = load ptr, ptr %lp7
  %t127 = load { i64, ptr }, ptr %t126, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  store { i64, ptr } %t127, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
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

define dso_local i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eResolve(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, ptr %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca %"compiler/source:Span"
  %l4 = alloca { i64, ptr }
  %l5 = alloca { i64, ptr }
  %l6 = alloca %"compiler/source:Span"
  %l7 = alloca ptr
  %l8 = alloca ptr
  %l9 = alloca %"compiler/source:Span"
  %l10 = alloca ptr
  %l11 = alloca i1
  %l12 = alloca ptr
  %l13 = alloca i1
  %l14 = alloca ptr
  %l15 = alloca ptr
  %l19 = alloca i32
  %l20 = alloca ptr
  %l21 = alloca i1
  %l35 = alloca i32
  %l36 = alloca ptr
  %l37 = alloca i1
  %l48 = alloca i32
  %l49 = alloca ptr
  %l50 = alloca i1
  %l58 = alloca i32
  %l59 = alloca ptr
  %l60 = alloca i1
  %l69 = alloca ptr
  %l70 = alloca ptr
  %l71 = alloca %"compiler/source:Span"
  %l76 = alloca i32
  %l78 = alloca i32
  %l79 = alloca ptr
  %l80 = alloca i1
  %l87 = alloca ptr
  %l91 = alloca i32
  %l93 = alloca i32
  %l94 = alloca ptr
  %l95 = alloca i1
  %l101 = alloca ptr
  %l106 = alloca i32
  %l107 = alloca i32
  %l108 = alloca ptr
  %l109 = alloca i1
  %l113 = alloca ptr
  %l114 = alloca i1
  %l120 = alloca ptr
  %l122 = alloca ptr
  %l127 = alloca i32
  %l128 = alloca i32
  %l130 = alloca i32
  %rv = alloca i32
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store ptr %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l2, !tbaa !29
  %t3 = icmp eq ptr %t1, null
  br i1 %t3, label %bb1, label %bb2
bb1:
  %t5 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  store i32 %t5, ptr %rv
  br label %ret
bb2:
  br label %bb3
bb3:
  %t7 = load ptr, ptr %l2, !tbaa !29
  store ptr %t7, ptr %l20, !tbaa !29
  store i1 false, ptr %l21, !tbaa !21
  %t8 = load ptr, ptr %l20, !tbaa !29
  %t9 = icmp ne ptr %t8, null
  br i1 %t9, label %bb4, label %bb5
bb4:
  %t11 = load ptr, ptr %l20, !tbaa !29
  %t12 = load i64, ptr %t11, !range !{i64 0, i64 8}
  %t14 = icmp eq i64 %t12, 0
  store i1 %t14, ptr %l21, !tbaa !21
  br label %bb5
bb5:
  %t15 = load i1, ptr %l21, !tbaa !21
  br i1 %t15, label %bb6, label %bb7
bb6:
  %t16 = load ptr, ptr %l2, !tbaa !29
  %t18 = getelementptr { i64, [5 x i64] }, ptr %t16, i32 0, i32 1
  %t19 = getelementptr { %"compiler/source:Span", { i64, ptr }, { i64, ptr } }, ptr %t18, i32 0, i32 0
  %t20 = load %"compiler/source:Span", ptr %t19
  store %"compiler/source:Span" %t20, ptr %l3
  %t22 = load ptr, ptr %l2, !tbaa !29
  %t24 = getelementptr { i64, [5 x i64] }, ptr %t22, i32 0, i32 1
  %t25 = getelementptr { %"compiler/source:Span", { i64, ptr }, { i64, ptr } }, ptr %t24, i32 0, i32 1
  %t26 = load { i64, ptr }, ptr %t25
  store { i64, ptr } %t26, ptr %l4, !tbaa !27
  %t28 = load ptr, ptr %l2, !tbaa !29
  %t30 = getelementptr { i64, [5 x i64] }, ptr %t28, i32 0, i32 1
  %t31 = getelementptr { %"compiler/source:Span", { i64, ptr }, { i64, ptr } }, ptr %t30, i32 0, i32 2
  %t32 = load { i64, ptr }, ptr %t31
  store { i64, ptr } %t32, ptr %l5, !tbaa !27
  br label %bb8
bb7:
  br label %bb10
bb8:
  %t34 = load ptr, ptr %l0, !tbaa !29
  %t35 = load ptr, ptr %l1, !tbaa !29
  %t36 = load %"compiler/source:Span", ptr %l3
  %t37 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t38 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t44 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2enamed(ptr %v0, ptr %v1, ptr %v2, ptr %v2, ptr %t34, ptr %t35, %"compiler/source:Span" %t36, { i64, ptr } %t37, { i64, ptr } %t38)
  store i32 %t44, ptr %l35
  br label %bb9
bb9:
  %t45 = load i32, ptr %l35, !tbaa !23
  store i32 %t45, ptr %l19, !tbaa !23
  br label %bb64
bb10:
  %t46 = load ptr, ptr %l2, !tbaa !29
  store ptr %t46, ptr %l36, !tbaa !29
  store i1 false, ptr %l37, !tbaa !21
  %t47 = load ptr, ptr %l36, !tbaa !29
  %t48 = icmp ne ptr %t47, null
  br i1 %t48, label %bb11, label %bb12
bb11:
  %t50 = load ptr, ptr %l36, !tbaa !29
  %t51 = load i64, ptr %t50, !range !{i64 0, i64 8}
  %t53 = icmp eq i64 %t51, 1
  store i1 %t53, ptr %l37, !tbaa !21
  br label %bb12
bb12:
  %t54 = load i1, ptr %l37, !tbaa !21
  br i1 %t54, label %bb13, label %bb14
bb13:
  %t55 = load ptr, ptr %l2, !tbaa !29
  %t57 = getelementptr { i64, [5 x i64] }, ptr %t55, i32 0, i32 1
  %t58 = getelementptr { %"compiler/source:Span", ptr }, ptr %t57, i32 0, i32 0
  %t59 = load %"compiler/source:Span", ptr %t58
  store %"compiler/source:Span" %t59, ptr %l6
  %t61 = load ptr, ptr %l2, !tbaa !29
  %t63 = getelementptr { i64, [5 x i64] }, ptr %t61, i32 0, i32 1
  %t64 = getelementptr { %"compiler/source:Span", ptr }, ptr %t63, i32 0, i32 1
  %t65 = load ptr, ptr %t64
  store ptr %t65, ptr %l7, !tbaa !29
  br label %bb15
bb14:
  br label %bb17
bb15:
  %t67 = load ptr, ptr %l0, !tbaa !29
  %t68 = load ptr, ptr %l1, !tbaa !29
  %t69 = load %"compiler/source:Span", ptr %l6
  %t70 = load ptr, ptr %l7, !tbaa !29
  %t75 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2efuncType(ptr %v0, ptr %v1, ptr %v2, ptr %t67, ptr %t68, %"compiler/source:Span" %t69, ptr %t70)
  store i32 %t75, ptr %l48
  br label %bb16
bb16:
  %t76 = load i32, ptr %l48, !tbaa !23
  store i32 %t76, ptr %l19, !tbaa !23
  br label %bb64
bb17:
  %t77 = load ptr, ptr %l2, !tbaa !29
  store ptr %t77, ptr %l49, !tbaa !29
  store i1 false, ptr %l50, !tbaa !21
  %t78 = load ptr, ptr %l49, !tbaa !29
  %t79 = icmp ne ptr %t78, null
  br i1 %t79, label %bb18, label %bb19
bb18:
  %t81 = load ptr, ptr %l49, !tbaa !29
  %t82 = load i64, ptr %t81, !range !{i64 0, i64 8}
  %t84 = icmp eq i64 %t82, 2
  store i1 %t84, ptr %l50, !tbaa !21
  br label %bb19
bb19:
  %t85 = load i1, ptr %l50, !tbaa !21
  br i1 %t85, label %bb20, label %bb21
bb20:
  %t86 = load ptr, ptr %l2, !tbaa !29
  %t88 = getelementptr { i64, [5 x i64] }, ptr %t86, i32 0, i32 1
  %t89 = getelementptr { %"compiler/source:Span", ptr }, ptr %t88, i32 0, i32 1
  %t90 = load ptr, ptr %t89
  store ptr %t90, ptr %l8, !tbaa !29
  br label %bb22
bb21:
  br label %bb24
bb22:
  %t92 = load ptr, ptr %l0, !tbaa !29
  %t93 = load ptr, ptr %l1, !tbaa !29
  %t94 = load ptr, ptr %l8, !tbaa !29
  %t98 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eshape(ptr %v0, ptr %v1, ptr %v2, ptr %t92, ptr %t93, ptr %t94)
  store i32 %t98, ptr %l58
  br label %bb23
bb23:
  %t99 = load i32, ptr %l58, !tbaa !23
  store i32 %t99, ptr %l19, !tbaa !23
  br label %bb64
bb24:
  %t100 = load ptr, ptr %l2, !tbaa !29
  store ptr %t100, ptr %l59, !tbaa !29
  store i1 false, ptr %l60, !tbaa !21
  %t101 = load ptr, ptr %l59, !tbaa !29
  %t102 = icmp ne ptr %t101, null
  br i1 %t102, label %bb25, label %bb26
bb25:
  %t104 = load ptr, ptr %l59, !tbaa !29
  %t105 = load i64, ptr %t104, !range !{i64 0, i64 8}
  %t107 = icmp eq i64 %t105, 3
  store i1 %t107, ptr %l60, !tbaa !21
  br label %bb26
bb26:
  %t108 = load i1, ptr %l60, !tbaa !21
  br i1 %t108, label %bb27, label %bb28
bb27:
  %t109 = load ptr, ptr %l2, !tbaa !29
  %t111 = getelementptr { i64, [5 x i64] }, ptr %t109, i32 0, i32 1
  %t112 = getelementptr { %"compiler/source:Span", ptr, i1, i1 }, ptr %t111, i32 0, i32 0
  %t113 = load %"compiler/source:Span", ptr %t112
  store %"compiler/source:Span" %t113, ptr %l9
  %t115 = load ptr, ptr %l2, !tbaa !29
  %t117 = getelementptr { i64, [5 x i64] }, ptr %t115, i32 0, i32 1
  %t118 = getelementptr { %"compiler/source:Span", ptr, i1, i1 }, ptr %t117, i32 0, i32 1
  %t119 = load ptr, ptr %t118
  store ptr %t119, ptr %l10, !tbaa !29
  %t121 = load ptr, ptr %l2, !tbaa !29
  %t123 = getelementptr { i64, [5 x i64] }, ptr %t121, i32 0, i32 1
  %t124 = getelementptr { %"compiler/source:Span", ptr, i1, i1 }, ptr %t123, i32 0, i32 2
  %t125 = load i1, ptr %t124
  store i1 %t125, ptr %l11, !tbaa !21
  br label %bb29
bb28:
  br label %bb32
bb29:
  %t127 = load ptr, ptr %l0, !tbaa !29
  store ptr %t127, ptr %l69, !tbaa !29
  %t128 = load ptr, ptr %l1, !tbaa !29
  store ptr %t128, ptr %l70, !tbaa !29
  %t129 = load %"compiler/source:Span", ptr %l9
  store %"compiler/source:Span" %t129, ptr %l71
  %t130 = load ptr, ptr %l0, !tbaa !29
  %t131 = load ptr, ptr %l1, !tbaa !29
  %t132 = load ptr, ptr %l10, !tbaa !29
  %t137 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eResolve(ptr %v0, ptr %v1, ptr %v2, ptr %t130, ptr %t131, ptr %t132)
  store i32 %t137, ptr %l76
  br label %bb30
bb30:
  %t138 = load i1, ptr %l11, !tbaa !21
  %t139 = load ptr, ptr %l69, !tbaa !29
  %t140 = load ptr, ptr %l70, !tbaa !29
  %t141 = load %"compiler/source:Span", ptr %l71
  %t142 = load i32, ptr %l76, !tbaa !23
  %t144 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2erefType(ptr %v0, ptr %v1, ptr %t139, ptr %t140, %"compiler/source:Span" %t141, i32 %t142, i1 %t138)
  store i32 %t144, ptr %l78
  br label %bb31
bb31:
  %t145 = load i32, ptr %l78, !tbaa !23
  store i32 %t145, ptr %l19, !tbaa !23
  br label %bb64
bb32:
  %t146 = load ptr, ptr %l2, !tbaa !29
  store ptr %t146, ptr %l79, !tbaa !29
  store i1 false, ptr %l80, !tbaa !21
  %t147 = load ptr, ptr %l79, !tbaa !29
  %t148 = icmp ne ptr %t147, null
  br i1 %t148, label %bb33, label %bb34
bb33:
  %t150 = load ptr, ptr %l79, !tbaa !29
  %t151 = load i64, ptr %t150, !range !{i64 0, i64 8}
  %t153 = icmp eq i64 %t151, 4
  store i1 %t153, ptr %l80, !tbaa !21
  br label %bb34
bb34:
  %t154 = load i1, ptr %l80, !tbaa !21
  br i1 %t154, label %bb35, label %bb36
bb35:
  %t155 = load ptr, ptr %l2, !tbaa !29
  %t157 = getelementptr { i64, [5 x i64] }, ptr %t155, i32 0, i32 1
  %t158 = getelementptr { %"compiler/source:Span", ptr, i1 }, ptr %t157, i32 0, i32 1
  %t159 = load ptr, ptr %t158
  store ptr %t159, ptr %l12, !tbaa !29
  %t161 = load ptr, ptr %l2, !tbaa !29
  %t163 = getelementptr { i64, [5 x i64] }, ptr %t161, i32 0, i32 1
  %t164 = getelementptr { %"compiler/source:Span", ptr, i1 }, ptr %t163, i32 0, i32 2
  %t165 = load i1, ptr %t164
  store i1 %t165, ptr %l13, !tbaa !21
  br label %bb37
bb36:
  br label %bb40
bb37:
  %t167 = load ptr, ptr %l0, !tbaa !29
  store ptr %t167, ptr %l87, !tbaa !29
  %t168 = load ptr, ptr %l0, !tbaa !29
  %t169 = load ptr, ptr %l1, !tbaa !29
  %t170 = load ptr, ptr %l12, !tbaa !29
  %t174 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eResolve(ptr %v0, ptr %v1, ptr %v2, ptr %t168, ptr %t169, ptr %t170)
  store i32 %t174, ptr %l91
  br label %bb38
bb38:
  %t175 = load i1, ptr %l13, !tbaa !21
  %t176 = load ptr, ptr %l87, !tbaa !29
  %t177 = load i32, ptr %l91, !tbaa !23
  %t179 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eperm(ptr %v0, ptr %t176, i32 %t177, i1 %t175)
  store i32 %t179, ptr %l93
  br label %bb39
bb39:
  %t180 = load i32, ptr %l93, !tbaa !23
  store i32 %t180, ptr %l19, !tbaa !23
  br label %bb64
bb40:
  %t181 = load ptr, ptr %l2, !tbaa !29
  store ptr %t181, ptr %l94, !tbaa !29
  store i1 false, ptr %l95, !tbaa !21
  %t182 = load ptr, ptr %l94, !tbaa !29
  %t183 = icmp ne ptr %t182, null
  br i1 %t183, label %bb41, label %bb42
bb41:
  %t185 = load ptr, ptr %l94, !tbaa !29
  %t186 = load i64, ptr %t185, !range !{i64 0, i64 8}
  %t188 = icmp eq i64 %t186, 5
  store i1 %t188, ptr %l95, !tbaa !21
  br label %bb42
bb42:
  %t189 = load i1, ptr %l95, !tbaa !21
  br i1 %t189, label %bb43, label %bb44
bb43:
  %t190 = load ptr, ptr %l2, !tbaa !29
  %t192 = getelementptr { i64, [5 x i64] }, ptr %t190, i32 0, i32 1
  %t193 = getelementptr { %"compiler/source:Span", ptr }, ptr %t192, i32 0, i32 1
  %t194 = load ptr, ptr %t193
  store ptr %t194, ptr %l14, !tbaa !29
  br label %bb45
bb44:
  br label %bb48
bb45:
  %t196 = load ptr, ptr %l0, !tbaa !29
  %t198 = getelementptr %"compiler/generic:Program", ptr %t196, i32 0, i32 2
  store ptr %t198, ptr %l101, !tbaa !29
  %t199 = load ptr, ptr %l0, !tbaa !29
  %t200 = load ptr, ptr %l1, !tbaa !29
  %t201 = load ptr, ptr %l14, !tbaa !29
  %t206 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eResolve(ptr %v0, ptr %v1, ptr %v2, ptr %t199, ptr %t200, ptr %t201)
  store i32 %t206, ptr %l106
  br label %bb46
bb46:
  %t207 = load ptr, ptr %l101, !tbaa !29
  %t208 = load i32, ptr %l106, !tbaa !23
  %t209 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eAny(ptr %v0, ptr %t207, i32 %t208)
  store i32 %t209, ptr %l107
  br label %bb47
bb47:
  %t210 = load i32, ptr %l107, !tbaa !23
  store i32 %t210, ptr %l19, !tbaa !23
  br label %bb64
bb48:
  %t211 = load ptr, ptr %l2, !tbaa !29
  store ptr %t211, ptr %l108, !tbaa !29
  store i1 false, ptr %l109, !tbaa !21
  %t212 = load ptr, ptr %l108, !tbaa !29
  %t213 = icmp ne ptr %t212, null
  br i1 %t213, label %bb49, label %bb50
bb49:
  %t215 = load ptr, ptr %l108, !tbaa !29
  %t216 = load i64, ptr %t215, !range !{i64 0, i64 8}
  %t218 = icmp eq i64 %t216, 6
  store i1 %t218, ptr %l109, !tbaa !21
  br label %bb50
bb50:
  %t219 = load i1, ptr %l109, !tbaa !21
  br i1 %t219, label %bb51, label %bb52
bb51:
  br label %bb53
bb52:
  br label %bb54
bb53:
  %t220 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  store i32 %t220, ptr %l19, !tbaa !23
  br label %bb64
bb54:
  %t222 = load ptr, ptr %l2, !tbaa !29
  store ptr %t222, ptr %l113, !tbaa !29
  store i1 false, ptr %l114, !tbaa !21
  %t223 = load ptr, ptr %l113, !tbaa !29
  %t224 = icmp ne ptr %t223, null
  br i1 %t224, label %bb55, label %bb56
bb55:
  %t226 = load ptr, ptr %l113, !tbaa !29
  %t227 = load i64, ptr %t226, !range !{i64 0, i64 8}
  %t229 = icmp eq i64 %t227, 7
  store i1 %t229, ptr %l114, !tbaa !21
  br label %bb56
bb56:
  %t230 = load i1, ptr %l114, !tbaa !21
  br i1 %t230, label %bb57, label %bb58
bb57:
  %t231 = load ptr, ptr %l2, !tbaa !29
  %t233 = getelementptr { i64, [5 x i64] }, ptr %t231, i32 0, i32 1
  %t234 = getelementptr { %"compiler/source:Span", ptr }, ptr %t233, i32 0, i32 1
  %t235 = load ptr, ptr %t234
  store ptr %t235, ptr %l15, !tbaa !29
  br label %bb59
bb58:
  br label %bb63
bb59:
  %t237 = load ptr, ptr %l0, !tbaa !29
  %t239 = getelementptr %"compiler/generic:Program", ptr %t237, i32 0, i32 2
  store ptr %t239, ptr %l120, !tbaa !29
  %t240 = load ptr, ptr %l0, !tbaa !29
  %t242 = getelementptr %"compiler/generic:Program", ptr %t240, i32 0, i32 2
  store ptr %t242, ptr %l122, !tbaa !29
  %t243 = load ptr, ptr %l0, !tbaa !29
  %t244 = load ptr, ptr %l1, !tbaa !29
  %t245 = load ptr, ptr %l15, !tbaa !29
  %t250 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eResolve(ptr %v0, ptr %v1, ptr %v2, ptr %t243, ptr %t244, ptr %t245)
  store i32 %t250, ptr %l127
  br label %bb60
bb60:
  %t251 = load ptr, ptr %l122, !tbaa !29
  %t252 = load i32, ptr %l127, !tbaa !23
  %t253 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eArray(ptr %v0, ptr %t251, i32 %t252, i32 0)
  store i32 %t253, ptr %l128
  br label %bb61
bb61:
  %t254 = load i64, ptr @G_2ecompiler_2ftypes_2eSpread, !tbaa !24
  %t255 = load ptr, ptr %l120, !tbaa !29
  %t256 = load i32, ptr %l128, !tbaa !23
  %t258 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRef(ptr %v0, ptr %t255, i32 %t256, i64 %t254)
  store i32 %t258, ptr %l130
  br label %bb62
bb62:
  %t259 = load i32, ptr %l130, !tbaa !23
  store i32 %t259, ptr %l19, !tbaa !23
  br label %bb64
bb63:
  call void @__olang_check_failed(ptr @olang_loc_e146017c26ab6c4e_50202815c87e77c2)
  unreachable
bb64:
  %t260 = load i32, ptr %l19, !tbaa !23
  store i32 %t260, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
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

define dso_local { i64, ptr } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eTypeBuilders(ptr %v0, ptr %v1, ptr %a0, i32 %a1, i64 %a2) #0 {
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
  %l56 = alloca i1
  %l58 = alloca i1
  %l60 = alloca i1
  %l71 = alloca i64
  %l74 = alloca i1
  %l78 = alloca i1
  %l83 = alloca i1
  %l87 = alloca { i64, ptr }
  %l88 = alloca { i64, ptr }
  %l90 = alloca i1
  %l97 = alloca { i64, ptr }
  %l98 = alloca { i64, ptr }
  %l99 = alloca i64
  %l100 = alloca { i64, ptr }
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
  br label %bb48
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
  %t96 = call i1 @compiler_2fast_2ecompiler_2fast_3aFunc_2eIsBuilder(ptr %v0, ptr %t94)
  store i1 %t96, ptr %l56
  br label %bb20
bb20:
  %t97 = load i1, ptr %l56, !tbaa !21
  %t98 = xor i1 %t97, true
  br i1 %t98, label %bb21, label %bb22
bb21:
  store i1 true, ptr %l58, !tbaa !21
  br label %bb23
bb22:
  %t100 = getelementptr %"compiler/generic:fnRow", ptr %l11, i32 0, i32 2
  %t101 = load i1, ptr %t100, !tbaa !21
  store i1 %t101, ptr %l58, !tbaa !21
  br label %bb23
bb23:
  %t103 = load i1, ptr %l58, !tbaa !21
  br i1 %t103, label %bb24, label %bb25
bb24:
  store i1 true, ptr %l60, !tbaa !21
  br label %bb26
bb25:
  %t104 = getelementptr %"compiler/generic:fnRow", ptr %l11, i32 0, i32 1
  %t105 = load ptr, ptr %t104, !tbaa !29
  %t107 = getelementptr %"compiler/ast:Func", ptr %t105, i32 0, i32 5
  %t108 = load { i64, ptr }, ptr %t107, !tbaa !27
  %t110 = extractvalue { i64, ptr } %t108, 0
  %t112 = icmp sgt i64 %t110, 0
  store i1 %t112, ptr %l60, !tbaa !21
  br label %bb26
bb26:
  %t114 = load i1, ptr %l60, !tbaa !21
  br i1 %t114, label %bb27, label %bb28
bb27:
  call void @__olang_scope_close(ptr %s3)
  br label %bb47
bb28:
  br label %bb29
bb29:
  %t115 = load ptr, ptr %l0, !tbaa !29
  %t116 = getelementptr %"compiler/generic:fnRow", ptr %l11, i32 0, i32 0
  %t117 = load i64, ptr %t116, !tbaa !24
  %t118 = getelementptr %"compiler/generic:fnRow", ptr %l11, i32 0, i32 1
  %t119 = load ptr, ptr %t118, !tbaa !29
  %t121 = getelementptr %"compiler/ast:Func", ptr %t119, i32 0, i32 9
  %t122 = load ptr, ptr %t121, !tbaa !29
  %t123 = getelementptr %"compiler/generic:fnRow", ptr %l11, i32 0, i32 1
  %t124 = load ptr, ptr %t123, !tbaa !29
  %t126 = getelementptr %"compiler/ast:Func", ptr %t124, i32 0, i32 5
  %t127 = load { i64, ptr }, ptr %t126, !tbaa !27
  %t132 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2erecvKey(ptr %v0, ptr %v0, ptr %v0, ptr %t115, i64 %t117, ptr %t122, { i64, ptr } %t127)
  store i64 %t132, ptr %l71
  br label %bb30
bb30:
  %t133 = load i64, ptr %l4, !tbaa !24
  %t134 = load i64, ptr %l71, !tbaa !24
  %t136 = icmp ne i64 %t134, %t133
  br i1 %t136, label %bb31, label %bb32
bb31:
  store i1 true, ptr %l74, !tbaa !21
  br label %bb34
bb32:
  %t138 = load ptr, ptr %l0, !tbaa !29
  %t139 = load i64, ptr %l10, !tbaa !24
  %t140 = load i32, ptr %l1, !tbaa !23
  %t144 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eownerApplies(ptr %v0, ptr %t138, i64 %t139, i32 %t140)
  store i1 %t144, ptr %l78
  br label %bb33
bb33:
  %t145 = load i1, ptr %l78, !tbaa !21
  %t146 = xor i1 %t145, true
  store i1 %t146, ptr %l74, !tbaa !21
  br label %bb34
bb34:
  %t148 = load i1, ptr %l74, !tbaa !21
  br i1 %t148, label %bb35, label %bb36
bb35:
  call void @__olang_scope_close(ptr %s3)
  br label %bb47
bb36:
  br label %bb37
bb37:
  %t149 = getelementptr %"compiler/generic:fnRow", ptr %l11, i32 0, i32 0
  %t150 = load i64, ptr %t149, !tbaa !24
  %t154 = icmp ne i64 %t150, %a2
  br i1 %t154, label %bb38, label %bb39
bb38:
  %t156 = load ptr, ptr %l0, !tbaa !29
  %t157 = getelementptr %"compiler/generic:fnRow", ptr %l11, i32 0, i32 1
  %t158 = load ptr, ptr %t157, !tbaa !29
  %t160 = getelementptr %"compiler/ast:Func", ptr %t158, i32 0, i32 10
  %t161 = load i32, ptr %t160, !tbaa !23
  %t164 = call { i64, ptr } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2etext(ptr %v0, ptr %s3, ptr %t156, i32 %t161)
  store { i64, ptr } %t164, ptr %l87
  br label %bb40
bb39:
  store i1 false, ptr %l83, !tbaa !21
  br label %bb42
bb40:
  %t165 = load { i64, ptr }, ptr %l87, !tbaa !27
  store { i64, ptr } %t165, ptr %l88, !tbaa !27
  %t166 = getelementptr { i64, ptr }, ptr %l88, i32 0, i32 1
  %t167 = load ptr, ptr %t166, !tbaa !27
  %t168 = getelementptr i8, ptr %t167, i64 0
  %t169 = load i8, ptr %t168, !tbaa !32
  %t171 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aChar_2eIsUpper(i8 %t169)
  store i1 %t171, ptr %l90
  br label %bb41
bb41:
  %t172 = load i1, ptr %l90, !tbaa !21
  %t173 = xor i1 %t172, true
  store i1 %t173, ptr %l83, !tbaa !21
  br label %bb42
bb42:
  %t175 = load i1, ptr %l83, !tbaa !21
  br i1 %t175, label %bb43, label %bb44
bb43:
  call void @__olang_scope_close(ptr %s3)
  br label %bb47
bb44:
  br label %bb45
bb45:
  %t176 = load i64, ptr %l10, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %s0, ptr %l3, i64 %t176)
  br label %bb46
bb46:
  call void @__olang_scope_close(ptr %s3)
  br label %bb47
bb47:
  %t179 = load i64, ptr %l9, !tbaa !24
  %t181 = add i64 %t179, 1
  store i64 %t181, ptr %l9, !tbaa !24
  br label %bb15
bb48:
  %t184 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eToArray_3cI64_3e(ptr %s0, ptr %s0, ptr %l3)
  store { i64, ptr } %t184, ptr %l97
  br label %bb49
bb49:
  %t185 = load { i64, ptr }, ptr %l97, !tbaa !27
  store { i64, ptr } %t185, ptr %l98, !tbaa !27
  %t186 = load { i64, ptr }, ptr %l98, !tbaa !27
  %t187 = extractvalue { i64, ptr } %t186, 0
  store i64 %t187, ptr %l99, !tbaa !24
  %t188 = load i64, ptr %l99, !tbaa !24
  %t189 = mul i64 %t188, 8
  %t190 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t189)
  %t191 = insertvalue { i64, ptr } undef, i64 %t188, 0
  %t192 = insertvalue { i64, ptr } %t191, ptr %t190, 1
  store { i64, ptr } %t192, ptr %l100, !tbaa !27
  %t193 = getelementptr { i64, ptr }, ptr %l100, i32 0, i32 1
  %t194 = load ptr, ptr %t193, !tbaa !27
  %t195 = getelementptr { i64, ptr }, ptr %l98, i32 0, i32 1
  %t196 = load ptr, ptr %t195, !tbaa !27
  %t197 = load i64, ptr %l99, !tbaa !24
  %t198 = mul i64 %t197, 8
  call void @llvm.memmove.p0.p0.i64(ptr %t194, ptr %t196, i64 %t198, i1 false)
  %t199 = load { i64, ptr }, ptr %l100, !tbaa !27
  store { i64, ptr } %t199, ptr %l98, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  %t200 = load { i64, ptr }, ptr %l98, !tbaa !27
  store { i64, ptr } %t200, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
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

define dso_local i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eTypeEntry(ptr %v0, ptr %a0, i64 %a1, i32 %a2) #0 {
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
  %l10 = alloca i1
  %l14 = alloca i1
  %l15 = alloca i32
  %l21 = alloca ptr
  %l24 = alloca i64
  %l28 = alloca i64
  %l31 = alloca i64
  %l52 = alloca %"compiler/names:Entry"
  %l56 = alloca ptr
  %l57 = alloca i64
  %l61 = alloca %"compiler/names:Entry"
  %l64 = alloca %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0"
  %l71 = alloca i64
  %l73 = alloca ptr
  %l77 = alloca %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0"
  %l78 = alloca i64
  %l79 = alloca i32
  %s0 = alloca %olang.scope
  %s3 = alloca %olang.scope
  %s4 = alloca %olang.scope
  %rv = alloca i64
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/generic:Program", ptr %t1, i32 0, i32 23
  %t4 = load i64, ptr %l1, !tbaa !24
  %t7 = call { i32, i1 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2eGet_3cI64_2c_20Bool_3e(ptr %v0, ptr %t3, i64 %t4)
  %t8 = extractvalue { i32, i1 } %t7, 1
  %t9 = extractvalue { i32, i1 } %t7, 0
  store i32 %t9, ptr %l15
  %t10 = icmp ne i32 %t9, 0
  br i1 %t10, label %bb2, label %ok.11, !prof !99
ok.11:
  store i1 %t8, ptr %l14
  br label %bb1
bb1:
  %t12 = load i1, ptr %l14, !tbaa !21
  store i1 %t12, ptr %l10, !tbaa !21
  br label %bb4
bb2:
  br label %bb3
bb3:
  store i1 false, ptr %l10, !tbaa !21
  br label %bb4
bb4:
  %t13 = load i1, ptr %l10, !tbaa !21
  %t14 = xor i1 %t13, true
  br i1 %t14, label %bb5, label %bb6
bb5:
  %t16 = load ptr, ptr %l0, !tbaa !29
  %t18 = getelementptr %"compiler/generic:Program", ptr %t16, i32 0, i32 1
  %t19 = load ptr, ptr %t18, !tbaa !29
  %t21 = getelementptr %"compiler/names:Resolver", ptr %t19, i32 0, i32 1
  %t22 = load i64, ptr %l1, !tbaa !24
  %t25 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fnames_3aTable_26_3e_2_Hc2ccbbc5952c057a60f016e9cc1626d2(ptr %v0, ptr %v0, ptr %t21, i64 %t22)
  store ptr %t25, ptr %l21
  br label %bb7
bb6:
  br label %bb29
bb7:
  %t26 = load ptr, ptr %l21, !tbaa !29
  store ptr %t26, ptr %l3, !tbaa !29
  store i64 0, ptr %l4, !tbaa !24
  %t27 = load ptr, ptr %l3, !tbaa !29
  %t29 = getelementptr %"compiler/names:Table", ptr %t27, i32 0, i32 0
  %t31 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fnames_3aEntry_3e_2eLen_3ccompiler_2fnames_3aEntry_3e(ptr %v0, ptr %t29)
  store i64 %t31, ptr %l24
  br label %bb8
bb8:
  %t32 = load i64, ptr %l24, !tbaa !24
  store i64 %t32, ptr %l5, !tbaa !24
  store i64 1, ptr %l6, !tbaa !24
  %t33 = load i64, ptr %l5, !tbaa !24
  %t34 = load i64, ptr %l4, !tbaa !24
  %t37 = icmp sgt i64 %t33, %t34
  br i1 %t37, label %bb9, label %bb10
bb9:
  %t39 = load i64, ptr %l6, !tbaa !24
  %t41 = icmp sgt i64 %t39, 0
  br i1 %t41, label %bb11, label %bb12
bb10:
  store i64 0, ptr %l28, !tbaa !24
  br label %bb14
bb11:
  %t43 = load i64, ptr %l5, !tbaa !24
  %t44 = load i64, ptr %l4, !tbaa !24
  %t47 = sub i64 %t43, %t44
  %t48 = load i64, ptr %l6, !tbaa !24
  %t51 = add i64 %t47, %t48
  %t53 = sub i64 %t51, 1
  %t54 = load i64, ptr %l6, !tbaa !24
  %t57 = sdiv i64 %t53, %t54
  store i64 %t57, ptr %l31, !tbaa !24
  br label %bb13
bb12:
  store i64 0, ptr %l31, !tbaa !24
  br label %bb13
bb13:
  %t59 = load i64, ptr %l31, !tbaa !24
  store i64 %t59, ptr %l28, !tbaa !24
  br label %bb14
bb14:
  %t60 = load i64, ptr %l28, !tbaa !24
  store i64 %t60, ptr %l7, !tbaa !24
  store i64 0, ptr %l8, !tbaa !24
  br label %bb15
bb15:
  store %olang.scope zeroinitializer, ptr %s3
  %t61 = load i64, ptr %l8, !tbaa !24
  %t62 = load i64, ptr %l7, !tbaa !24
  %t65 = icmp slt i64 %t61, %t62
  %t67 = xor i1 %t65, true
  br i1 %t67, label %bb16, label %bb17
bb16:
  call void @__olang_scope_close(ptr %s3)
  br label %bb27
bb17:
  br label %bb18
bb18:
  %t69 = load i64, ptr %l4, !tbaa !24
  %t70 = load i64, ptr %l8, !tbaa !24
  %t71 = load i64, ptr %l6, !tbaa !24
  %t74 = mul i64 %t70, %t71
  %t77 = add i64 %t69, %t74
  store i64 %t77, ptr %l9, !tbaa !24
  %t79 = load ptr, ptr %l3, !tbaa !29
  %t81 = getelementptr %"compiler/names:Table", ptr %t79, i32 0, i32 0
  %t82 = load i64, ptr %l9, !tbaa !24
  %t85 = call %"compiler/names:Entry" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fnames_3aEntry_3e_2eAt_3ccompiler_2fnames_3aEntry_3e(ptr %v0, ptr %s3, ptr %t81, i64 %t82)
  store %"compiler/names:Entry" %t85, ptr %l52
  br label %bb19
bb19:
  %t86 = getelementptr %"compiler/names:Entry", ptr %l52, i32 0, i32 2
  %t87 = load i32, ptr %t86, !range !{i32 0, i32 9}
  %t89 = trunc i64 4 to i32
  %t90 = icmp eq i32 %t87, %t89
  br i1 %t90, label %bb20, label %bb21
bb20:
  store %olang.scope zeroinitializer, ptr %s4
  %t92 = load ptr, ptr %l0, !tbaa !29
  %t94 = getelementptr %"compiler/generic:Program", ptr %t92, i32 0, i32 22
  store ptr %t94, ptr %l56, !tbaa !29
  %t95 = load i64, ptr %l1, !tbaa !24
  store i64 %t95, ptr %l57, !tbaa !24
  %t96 = load ptr, ptr %l3, !tbaa !29
  %t98 = getelementptr %"compiler/names:Table", ptr %t96, i32 0, i32 0
  %t99 = load i64, ptr %l9, !tbaa !24
  %t102 = call %"compiler/names:Entry" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fnames_3aEntry_3e_2eAt_3ccompiler_2fnames_3aEntry_3e(ptr %v0, ptr %s4, ptr %t98, i64 %t99)
  store %"compiler/names:Entry" %t102, ptr %l61
  br label %bb22
bb21:
  br label %bb25
bb22:
  %t103 = getelementptr %"compiler/names:Entry", ptr %l61, i32 0, i32 0
  %t104 = load i32, ptr %t103, !tbaa !23
  %t106 = sext i32 %t104 to i64
  %t107 = load i64, ptr %l57, !tbaa !24
  %t109 = call %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" @std_2fpair_3aPair_3cI64_2c_20I64_3e_2ector(ptr %s4, i64 %t107, i64 %t106)
  store %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t109, ptr %l64
  br label %bb23
bb23:
  %t110 = load i64, ptr %l9, !tbaa !24
  %t111 = load ptr, ptr %l56, !tbaa !29
  %t112 = load %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %l64
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H31314c4e7281f5029d6d8eb3044cef10(ptr %v0, ptr %t111, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t112, i64 %t110)
  br label %bb24
bb24:
  call void @__olang_scope_close(ptr %s4)
  br label %bb25
bb25:
  call void @__olang_scope_close(ptr %s3)
  br label %bb26
bb26:
  %t114 = load i64, ptr %l8, !tbaa !24
  %t116 = add i64 %t114, 1
  store i64 %t116, ptr %l8, !tbaa !24
  br label %bb15
bb27:
  %t118 = load ptr, ptr %l0, !tbaa !29
  %t120 = getelementptr %"compiler/generic:Program", ptr %t118, i32 0, i32 23
  %t121 = load i64, ptr %l1, !tbaa !24
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2ePut_3cI64_2c_20Bool_3e(ptr %v0, ptr %t120, i64 %t121, i1 true)
  br label %bb28
bb28:
  br label %bb29
bb29:
  %t124 = load ptr, ptr %l0, !tbaa !29
  %t126 = getelementptr %"compiler/generic:Program", ptr %t124, i32 0, i32 22
  store ptr %t126, ptr %l73, !tbaa !29
  %t127 = load i64, ptr %l1, !tbaa !24
  %t130 = sext i32 %a2 to i64
  %t133 = call %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" @std_2fpair_3aPair_3cI64_2c_20I64_3e_2ector(ptr %s0, i64 %t127, i64 %t130)
  store %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t133, ptr %l77
  br label %bb30
bb30:
  %t134 = load ptr, ptr %l73, !tbaa !29
  %t135 = load %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %l77
  %t136 = call { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H5696e1a008d256bf9453cde2b49c6c45(ptr %v0, ptr %t134, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t135)
  %t137 = extractvalue { i32, i64 } %t136, 1
  %t138 = extractvalue { i32, i64 } %t136, 0
  store i32 %t138, ptr %l79
  %t139 = icmp ne i32 %t138, 0
  br i1 %t139, label %bb32, label %ok.140, !prof !99
ok.140:
  store i64 %t137, ptr %l78
  br label %bb31
bb31:
  %t141 = load i64, ptr %l78, !tbaa !24
  store i64 %t141, ptr %l71, !tbaa !24
  br label %bb34
bb32:
  br label %bb33
bb33:
  store i64 -1, ptr %l71, !tbaa !24
  br label %bb34
bb34:
  call void @__olang_scope_close(ptr %s0)
  %t142 = load i64, ptr %l71, !tbaa !24
  store i64 %t142, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eUnendedDrop(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l2 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l3 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l7 = alloca i32
  %s0 = alloca %olang.scope
  %rv = alloca i32
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId_2c_20Bool_3e(ptr %s0)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t1, ptr %l3
  br label %bb1
bb1:
  %t2 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l3
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t2, ptr %l2
  %t8 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eunended(ptr %v0, ptr %s0, ptr %a0, i32 %a1, ptr %l2, i64 0, i1 false)
  store i32 %t8, ptr %l7
  br label %bb2
bb2:
  call void @__olang_scope_close(ptr %s0)
  %t9 = load i32, ptr %l7, !tbaa !23
  store i32 %t9, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eUnifyErrors(ptr %v0, ptr %v1, ptr %a0, i32 %a1, i32 %a2, ptr %a3) #0 {
entry:
  %l8 = alloca i32
  %rv = alloca i32
  br label %start
start:
  br label %bb0
bb0:
  %t9 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eunifyErrs(ptr %v0, ptr %v1, ptr %a0, i32 %a1, i32 %a2, ptr %a3)
  store i32 %t9, ptr %l8
  %t10 = icmp ne i32 %t9, 0
  br i1 %t10, label %bb2, label %ok.11, !prof !99
ok.11:
  br label %bb1
bb1:
  br label %bb3
bb2:
  %t12 = load i32, ptr %l8, !tbaa !23
  %t13 = lshr i32 %t12, 16
  %t14 = and i32 %t12, 65535
  %t15 = icmp eq i32 %t13, 1
  %t16 = select i1 %t15, i32 1, i32 0
  %t17 = icmp eq i32 %t12, 0
  %t18 = shl i32 %t16, 16
  %t19 = or i32 %t18, %t14
  %t20 = select i1 %t17, i32 0, i32 %t19
  store i32 %t20, ptr %rv
  br label %ret
bb3:
  store i32 0, ptr %rv
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

define dso_local %"compiler/generic:varRow" @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eVarAt(ptr %v0, ptr %a0, i64 %a1, i64 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l4 = alloca ptr
  %l5 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i32
  %l13 = alloca %"compiler/generic:varRow"
  %rv = alloca %"compiler/generic:varRow"
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/generic:Program", ptr %t1, i32 0, i32 16
  store ptr %t3, ptr %l4, !tbaa !29
  %t4 = load ptr, ptr %l0, !tbaa !29
  %t6 = getelementptr %"compiler/generic:Program", ptr %t4, i32 0, i32 14
  %t10 = call { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2eGet_3cI64_2c_20I64_3e(ptr %v0, ptr %t6, i64 %a1)
  %t11 = extractvalue { i32, i64 } %t10, 1
  %t12 = extractvalue { i32, i64 } %t10, 0
  store i32 %t12, ptr %l10
  %t13 = icmp ne i32 %t12, 0
  br i1 %t13, label %bb2, label %ok.14, !prof !99
ok.14:
  store i64 %t11, ptr %l9
  br label %bb1
bb1:
  %t15 = load i64, ptr %l9, !tbaa !24
  store i64 %t15, ptr %l5, !tbaa !24
  br label %bb4
bb2:
  br label %bb3
bb3:
  store i64 0, ptr %l5, !tbaa !24
  br label %bb4
bb4:
  %t17 = load i64, ptr %l5, !tbaa !24
  %t19 = add i64 %t17, %a2
  %t20 = load ptr, ptr %l4, !tbaa !29
  %t22 = call %"compiler/generic:varRow" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fgeneric_3avarRow_3e_2eAt_3ccompiler_2fgeneric_3avarRow_3e(ptr %v0, ptr %t20, i64 %t19)
  store %"compiler/generic:varRow" %t22, ptr %l13
  br label %bb5
bb5:
  %t23 = load %"compiler/generic:varRow", ptr %l13
  store %"compiler/generic:varRow" %t23, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/generic:varRow", ptr %rv
  ret %"compiler/generic:varRow" %rr
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

define dso_local i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eWeakField(ptr %v0, ptr %a0, i32 %a1, i64 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l6 = alloca i32
  %l9 = alloca i1
  %l11 = alloca ptr
  %l15 = alloca i32
  %l19 = alloca i1
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
  %t3 = getelementptr %"compiler/generic:Program", ptr %t1, i32 0, i32 2
  %t4 = load i32, ptr %l1, !tbaa !23
  %t7 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t3, i32 %t4)
  store i32 %t7, ptr %l6
  br label %bb1
bb1:
  %t8 = load i32, ptr %l6, !range !{i32 0, i32 33}
  %t10 = trunc i64 18 to i32
  %t11 = icmp eq i32 %t8, %t10
  br i1 %t11, label %bb2, label %bb3
bb2:
  %t13 = load ptr, ptr %l0, !tbaa !29
  %t15 = getelementptr %"compiler/generic:Program", ptr %t13, i32 0, i32 7
  store ptr %t15, ptr %l11, !tbaa !29
  %t16 = load ptr, ptr %l0, !tbaa !29
  %t18 = getelementptr %"compiler/generic:Program", ptr %t16, i32 0, i32 2
  %t19 = load i32, ptr %l1, !tbaa !23
  %t22 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %t18, i32 %t19)
  store i32 %t22, ptr %l15
  br label %bb4
bb3:
  store i1 false, ptr %l9, !tbaa !21
  br label %bb6
bb4:
  %t23 = load i32, ptr %l15, !tbaa !23
  %t24 = sext i32 %t23 to i64
  %t27 = call i64 @__olang_fmt_i64(ptr null, i64 %t24)
  %t28 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d17, i32 0, i32 1) }, 1
  %t29 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d17, i32 0, i32 1) }, 0
  %t30 = add i64 %t27, %t29
  %t32 = call i64 @__olang_fmt_i64(ptr null, i64 %a2)
  %t33 = add i64 %t30, %t32
  %t34 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t33)
  %t35 = call i64 @__olang_fmt_i64(ptr %t34, i64 %t24)
  %t36 = getelementptr i8, ptr %t34, i64 %t27
  call void @olang_textcopy(ptr %t36, ptr %t28, i64 %t29)
  %t37 = getelementptr i8, ptr %t36, i64 %t29
  %t38 = call i64 @__olang_fmt_i64(ptr %t37, i64 %a2)
  %t39 = insertvalue { i64, ptr } undef, i64 %t33, 0
  %t40 = insertvalue { i64, ptr } %t39, ptr %t34, 1
  %t41 = load ptr, ptr %l11, !tbaa !29
  %t43 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_2c_20Boo_Hb38d151ad2865ce380f5e3d42761bdf3(ptr %v0, ptr %t41, { i64, ptr } %t40)
  store i1 %t43, ptr %l19
  br label %bb5
bb5:
  %t44 = load i1, ptr %l19, !tbaa !21
  store i1 %t44, ptr %l9, !tbaa !21
  br label %bb6
bb6:
  call void @__olang_scope_close(ptr %s0)
  %t45 = load i1, ptr %l9, !tbaa !21
  store i1 %t45, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eWrittenArity(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l5 = alloca i64
  %l8 = alloca i1
  %l9 = alloca i64
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
  %t7 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclParams(ptr %v0, ptr %t3, i32 %t4)
  store i64 %t7, ptr %l5
  br label %bb1
bb1:
  %t8 = load ptr, ptr %l0, !tbaa !29
  %t9 = load i32, ptr %l1, !tbaa !23
  %t12 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eHasErrParam(ptr %v0, ptr %t8, i32 %t9)
  store i1 %t12, ptr %l8
  br label %bb2
bb2:
  %t13 = load i1, ptr %l8, !tbaa !21
  br i1 %t13, label %bb3, label %bb4
bb3:
  store i64 1, ptr %l9, !tbaa !24
  br label %bb5
bb4:
  store i64 0, ptr %l9, !tbaa !24
  br label %bb5
bb5:
  %t14 = load i64, ptr %l5, !tbaa !24
  %t15 = load i64, ptr %l9, !tbaa !24
  %t16 = sub i64 %t14, %t15
  store i64 %t16, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local void @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eaddFns(ptr %v0, ptr %v1, ptr %a0, i64 %a1, { i64, ptr } %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l3 = alloca { i64, ptr }
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca ptr
  %l7 = alloca ptr
  %l8 = alloca ptr
  %l9 = alloca { i64, ptr }
  %l10 = alloca ptr
  %l18 = alloca { i64, ptr }
  %l21 = alloca ptr
  %l22 = alloca i1
  %l30 = alloca ptr
  %l31 = alloca i1
  %l39 = alloca ptr
  %l40 = alloca i1
  %l48 = alloca ptr
  %l49 = alloca i1
  %l54 = alloca ptr
  %l55 = alloca i64
  %l56 = alloca ptr
  %l58 = alloca ptr
  %l59 = alloca i64
  %l65 = alloca %"compiler/source:Span"
  %l67 = alloca i64
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
  br label %bb44
bb3:
  br label %bb4
bb4:
  %t15 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t15, ptr %l18, !tbaa !27
  %t16 = load i64, ptr %l4, !tbaa !24
  %t18 = getelementptr { i64, ptr }, ptr %l18, i32 0, i32 1
  %t19 = load ptr, ptr %t18, !tbaa !27
  %t20 = getelementptr ptr, ptr %t19, i64 %t16
  %t21 = load ptr, ptr %t20, !tbaa !39
  store ptr %t21, ptr %l6, !tbaa !29
  %t23 = load ptr, ptr %l6, !tbaa !29
  store ptr %t23, ptr %l21, !tbaa !29
  store i1 false, ptr %l22, !tbaa !21
  %t24 = load ptr, ptr %l21, !tbaa !29
  %t25 = icmp ne ptr %t24, null
  br i1 %t25, label %bb5, label %bb6
bb5:
  %t27 = load ptr, ptr %l21, !tbaa !29
  %t28 = load i64, ptr %t27, !range !{i64 0, i64 11}
  %t30 = icmp eq i64 %t28, 0
  store i1 %t30, ptr %l22, !tbaa !21
  br label %bb6
bb6:
  %t31 = load i1, ptr %l22, !tbaa !21
  br i1 %t31, label %bb7, label %bb8
bb7:
  %t32 = load ptr, ptr %l6, !tbaa !29
  %t34 = getelementptr { i64, [8 x i64] }, ptr %t32, i32 0, i32 1
  %t35 = getelementptr { ptr }, ptr %t34, i32 0, i32 0
  %t36 = load ptr, ptr %t35
  store ptr %t36, ptr %l7, !tbaa !29
  br label %bb9
bb8:
  br label %bb11
bb9:
  %t38 = load ptr, ptr %l0, !tbaa !29
  %t39 = load i64, ptr %l1, !tbaa !24
  %t40 = load ptr, ptr %l7, !tbaa !29
  call void @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eaddFn(ptr %v0, ptr %v1, ptr %t38, i64 %t39, ptr %t40, i1 false)
  br label %bb10
bb10:
  br label %bb42
bb11:
  %t44 = load ptr, ptr %l6, !tbaa !29
  store ptr %t44, ptr %l30, !tbaa !29
  store i1 false, ptr %l31, !tbaa !21
  %t45 = load ptr, ptr %l30, !tbaa !29
  %t46 = icmp ne ptr %t45, null
  br i1 %t46, label %bb12, label %bb13
bb12:
  %t48 = load ptr, ptr %l30, !tbaa !29
  %t49 = load i64, ptr %t48, !range !{i64 0, i64 11}
  %t51 = icmp eq i64 %t49, 1
  store i1 %t51, ptr %l31, !tbaa !21
  br label %bb13
bb13:
  %t52 = load i1, ptr %l31, !tbaa !21
  br i1 %t52, label %bb14, label %bb15
bb14:
  %t53 = load ptr, ptr %l6, !tbaa !29
  %t55 = getelementptr { i64, [8 x i64] }, ptr %t53, i32 0, i32 1
  %t56 = getelementptr { ptr }, ptr %t55, i32 0, i32 0
  %t57 = load ptr, ptr %t56
  store ptr %t57, ptr %l8, !tbaa !29
  br label %bb16
bb15:
  br label %bb18
bb16:
  %t59 = load ptr, ptr %l0, !tbaa !29
  %t60 = load i64, ptr %l1, !tbaa !24
  %t61 = load ptr, ptr %l8, !tbaa !29
  call void @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eaddFn(ptr %v0, ptr %v1, ptr %t59, i64 %t60, ptr %t61, i1 true)
  br label %bb17
bb17:
  br label %bb42
bb18:
  %t65 = load ptr, ptr %l6, !tbaa !29
  store ptr %t65, ptr %l39, !tbaa !29
  store i1 false, ptr %l40, !tbaa !21
  %t66 = load ptr, ptr %l39, !tbaa !29
  %t67 = icmp ne ptr %t66, null
  br i1 %t67, label %bb19, label %bb20
bb19:
  %t69 = load ptr, ptr %l39, !tbaa !29
  %t70 = load i64, ptr %t69, !range !{i64 0, i64 11}
  %t72 = icmp eq i64 %t70, 10
  store i1 %t72, ptr %l40, !tbaa !21
  br label %bb20
bb20:
  %t73 = load i1, ptr %l40, !tbaa !21
  br i1 %t73, label %bb21, label %bb22
bb21:
  %t74 = load ptr, ptr %l6, !tbaa !29
  %t76 = getelementptr { i64, [8 x i64] }, ptr %t74, i32 0, i32 1
  %t77 = getelementptr { %"compiler/source:Span", %"compiler/source:Span", { i64, ptr } }, ptr %t76, i32 0, i32 2
  %t78 = load { i64, ptr }, ptr %t77
  store { i64, ptr } %t78, ptr %l9, !tbaa !27
  br label %bb23
bb22:
  br label %bb25
bb23:
  %t80 = load ptr, ptr %l0, !tbaa !29
  %t81 = load i64, ptr %l1, !tbaa !24
  %t82 = load { i64, ptr }, ptr %l9, !tbaa !27
  call void @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eaddFns(ptr %v0, ptr %v1, ptr %t80, i64 %t81, { i64, ptr } %t82)
  br label %bb24
bb24:
  br label %bb42
bb25:
  %t86 = load ptr, ptr %l6, !tbaa !29
  store ptr %t86, ptr %l48, !tbaa !29
  store i1 false, ptr %l49, !tbaa !21
  %t87 = load ptr, ptr %l48, !tbaa !29
  %t88 = icmp ne ptr %t87, null
  br i1 %t88, label %bb26, label %bb27
bb26:
  %t90 = load ptr, ptr %l48, !tbaa !29
  %t91 = load i64, ptr %t90, !range !{i64 0, i64 11}
  %t93 = icmp eq i64 %t91, 7
  store i1 %t93, ptr %l49, !tbaa !21
  br label %bb27
bb27:
  %t94 = load i1, ptr %l49, !tbaa !21
  br i1 %t94, label %bb28, label %bb29
bb28:
  %t95 = load ptr, ptr %l6, !tbaa !29
  %t97 = getelementptr { i64, [8 x i64] }, ptr %t95, i32 0, i32 1
  %t98 = getelementptr { %"compiler/source:Span", ptr }, ptr %t97, i32 0, i32 1
  %t99 = load ptr, ptr %t98
  store ptr %t99, ptr %l10, !tbaa !29
  br label %bb30
bb29:
  br label %bb37
bb30:
  %t101 = load ptr, ptr %l0, !tbaa !29
  store ptr %t101, ptr %l54, !tbaa !29
  %t102 = load i64, ptr %l1, !tbaa !24
  store i64 %t102, ptr %l55, !tbaa !24
  %t103 = load ptr, ptr %l10, !tbaa !29
  store ptr %t103, ptr %l56, !tbaa !29
  %t104 = load ptr, ptr %l0, !tbaa !29
  %t106 = getelementptr %"compiler/generic:Program", ptr %t104, i32 0, i32 0
  %t107 = load ptr, ptr %t106, !tbaa !29
  store ptr %t107, ptr %l58, !tbaa !29
  %t108 = load i64, ptr %l1, !tbaa !24
  store i64 %t108, ptr %l59, !tbaa !24
  %t109 = load ptr, ptr %l10, !tbaa !29
  %t111 = getelementptr %"compiler/ast:TopIf", ptr %t109, i32 0, i32 0
  %t112 = load ptr, ptr %t111, !tbaa !29
  %t114 = icmp eq ptr %t112, null
  br i1 %t114, label %bb31, label %bb32
bb31:
  call void @__olang_check_failed(ptr @olang_loc_4e2b009ec27e80b_3f74010bfbf746f)
  unreachable
bb32:
  br label %bb33
bb33:
  %t116 = load ptr, ptr %l10, !tbaa !29
  %t118 = getelementptr %"compiler/ast:TopIf", ptr %t116, i32 0, i32 0
  %t119 = load ptr, ptr %t118, !tbaa !29
  %t121 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v1, ptr %t119)
  store %"compiler/source:Span" %t121, ptr %l65
  br label %bb34
bb34:
  %t122 = getelementptr %"compiler/source:Span", ptr %l65, i32 0, i32 0
  %t123 = load i32, ptr %t122, !tbaa !23
  %t124 = load ptr, ptr %l58, !tbaa !29
  %t125 = load i64, ptr %l59, !tbaa !24
  %t127 = call i64 @compiler_2fload_2ecompiler_2fload_3aLoader_2eChosen(ptr %v0, ptr %t124, i64 %t125, i32 %t123)
  store i64 %t127, ptr %l67
  br label %bb35
bb35:
  %t128 = load ptr, ptr %l54, !tbaa !29
  %t129 = load i64, ptr %l55, !tbaa !24
  %t130 = load ptr, ptr %l56, !tbaa !29
  %t131 = load i64, ptr %l67, !tbaa !24
  call void @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eaddFnsIf(ptr %v0, ptr %v1, ptr %t128, i64 %t129, ptr %t130, i64 %t131, i64 0)
  br label %bb36
bb36:
  br label %bb42
bb37:
  br i1 true, label %bb38, label %bb39
bb38:
  br label %bb40
bb39:
  br label %bb41
bb40:
  br label %bb42
bb41:
  call void @__olang_check_failed(ptr @olang_loc_8b73386467b8fdb3_4742e8850cea3c57)
  unreachable
bb42:
  br label %bb43
bb43:
  %t132 = load i64, ptr %l4, !tbaa !24
  %t134 = add i64 %t132, 1
  store i64 %t134, ptr %l4, !tbaa !24
  br label %bb1
bb44:
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eallFns(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca i64
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l11 = alloca i64
  %l20 = alloca i64
  %l23 = alloca i64
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/generic:Program", ptr %t1, i32 0, i32 0
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t6 = getelementptr %"compiler/load:Loader", ptr %t4, i32 0, i32 10
  %t8 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_Hb2d19b6b5ea5ab5a85c5720545345bd4(ptr %v0, ptr %t6)
  store i64 %t8, ptr %l11
  br label %bb1
bb1:
  %t9 = load i64, ptr %l11, !tbaa !24
  store i64 %t9, ptr %l1, !tbaa !24
  %t10 = load ptr, ptr %l0, !tbaa !29
  %t12 = getelementptr %"compiler/generic:Program", ptr %t10, i32 0, i32 32
  %t13 = load i64, ptr %t12, !tbaa !24
  %t14 = load i64, ptr %l1, !tbaa !24
  %t17 = icmp eq i64 %t13, %t14
  br i1 %t17, label %bb2, label %bb3
bb2:
  br label %ret
bb3:
  br label %bb4
bb4:
  store i64 0, ptr %l2, !tbaa !24
  %t19 = load i64, ptr %l1, !tbaa !24
  store i64 %t19, ptr %l3, !tbaa !24
  store i64 1, ptr %l4, !tbaa !24
  %t21 = load i64, ptr %l3, !tbaa !24
  %t22 = load i64, ptr %l2, !tbaa !24
  %t25 = icmp sgt i64 %t21, %t22
  br i1 %t25, label %bb5, label %bb6
bb5:
  %t27 = load i64, ptr %l4, !tbaa !24
  %t29 = icmp sgt i64 %t27, 0
  br i1 %t29, label %bb7, label %bb8
bb6:
  store i64 0, ptr %l20, !tbaa !24
  br label %bb10
bb7:
  %t31 = load i64, ptr %l3, !tbaa !24
  %t32 = load i64, ptr %l2, !tbaa !24
  %t35 = sub i64 %t31, %t32
  %t36 = load i64, ptr %l4, !tbaa !24
  %t39 = add i64 %t35, %t36
  %t41 = sub i64 %t39, 1
  %t42 = load i64, ptr %l4, !tbaa !24
  %t45 = sdiv i64 %t41, %t42
  store i64 %t45, ptr %l23, !tbaa !24
  br label %bb9
bb8:
  store i64 0, ptr %l23, !tbaa !24
  br label %bb9
bb9:
  %t47 = load i64, ptr %l23, !tbaa !24
  store i64 %t47, ptr %l20, !tbaa !24
  br label %bb10
bb10:
  %t48 = load i64, ptr %l20, !tbaa !24
  store i64 %t48, ptr %l5, !tbaa !24
  store i64 0, ptr %l6, !tbaa !24
  br label %bb11
bb11:
  %t49 = load i64, ptr %l6, !tbaa !24
  %t50 = load i64, ptr %l5, !tbaa !24
  %t53 = icmp slt i64 %t49, %t50
  %t55 = xor i1 %t53, true
  br i1 %t55, label %bb12, label %bb13
bb12:
  br label %bb17
bb13:
  br label %bb14
bb14:
  %t57 = load i64, ptr %l2, !tbaa !24
  %t58 = load i64, ptr %l6, !tbaa !24
  %t59 = load i64, ptr %l4, !tbaa !24
  %t62 = mul i64 %t58, %t59
  %t65 = add i64 %t57, %t62
  %t67 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2efnsIn(ptr %v0, ptr %t67, i64 %t65)
  br label %bb15
bb15:
  br label %bb16
bb16:
  %t71 = load i64, ptr %l6, !tbaa !24
  %t73 = add i64 %t71, 1
  store i64 %t73, ptr %l6, !tbaa !24
  br label %bb11
bb17:
  %t75 = load ptr, ptr %l0, !tbaa !29
  %t76 = load i64, ptr %l1, !tbaa !24
  %t79 = getelementptr %"compiler/generic:Program", ptr %t75, i32 0, i32 32
  store i64 %t76, ptr %t79, !tbaa !24
  br label %ret
ret:
  ret void
}

define dso_local i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2earrayMade(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1, ptr %a2, i32 %a3, { i64, ptr } %a4) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l4 = alloca { i64, ptr }
  %l5 = alloca i32
  %l6 = alloca i32
  %l10 = alloca i32
  %l14 = alloca i1
  %l18 = alloca i32
  %l21 = alloca i1
  %l25 = alloca i32
  %l30 = alloca { i64, ptr }
  %l33 = alloca i32
  %l37 = alloca i32
  %l40 = alloca i1
  %l44 = alloca i32
  %l46 = alloca i1
  %l50 = alloca i1
  %l53 = alloca ptr
  %l54 = alloca i32
  %l57 = alloca { i64, ptr }
  %l60 = alloca i32
  %l61 = alloca i32
  %rv = alloca i32
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store { i64, ptr } %a4, ptr %l4
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/generic:Program", ptr %t1, i32 0, i32 2
  %t7 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eElem(ptr %v0, ptr %t3, i32 %a3)
  store i32 %t7, ptr %l10
  br label %bb1
bb1:
  %t8 = load i32, ptr %l10, !tbaa !23
  store i32 %t8, ptr %l5, !tbaa !23
  %t9 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t11 = extractvalue { i64, ptr } %t9, 0
  %t13 = icmp eq i64 %t11, 2
  br i1 %t13, label %bb2, label %bb3
bb2:
  %t15 = load ptr, ptr %l0, !tbaa !29
  %t17 = getelementptr %"compiler/generic:Program", ptr %t15, i32 0, i32 2
  %t18 = load i32, ptr %l5, !tbaa !23
  %t21 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t17, i32 %t18)
  store i32 %t21, ptr %l18
  br label %bb4
bb3:
  store i1 false, ptr %l14, !tbaa !21
  br label %bb5
bb4:
  %t22 = load i32, ptr %l18, !range !{i32 0, i32 33}
  %t24 = trunc i64 19 to i32
  %t25 = icmp eq i32 %t22, %t24
  store i1 %t25, ptr %l14, !tbaa !21
  br label %bb5
bb5:
  %t27 = load i1, ptr %l14, !tbaa !21
  br i1 %t27, label %bb6, label %bb7
bb6:
  %t28 = load ptr, ptr %l0, !tbaa !29
  %t30 = getelementptr %"compiler/generic:Program", ptr %t28, i32 0, i32 2
  %t31 = load i32, ptr %l5, !tbaa !23
  %t34 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eLength(ptr %v0, ptr %t30, i32 %t31)
  store i32 %t34, ptr %l25
  br label %bb8
bb7:
  store i1 false, ptr %l21, !tbaa !21
  br label %bb9
bb8:
  %t35 = load i32, ptr %l25, !tbaa !23
  %t36 = icmp eq i32 %t35, 0
  store i1 %t36, ptr %l21, !tbaa !21
  br label %bb9
bb9:
  %t38 = load i1, ptr %l21, !tbaa !21
  br i1 %t38, label %bb10, label %bb11
bb10:
  %t39 = load ptr, ptr %l0, !tbaa !29
  %t40 = load ptr, ptr %l1, !tbaa !29
  %t42 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t42, ptr %l30, !tbaa !27
  %t43 = getelementptr { i64, ptr }, ptr %l30, i32 0, i32 1
  %t44 = load ptr, ptr %t43, !tbaa !27
  %t45 = getelementptr ptr, ptr %t44, i64 1
  %t46 = load ptr, ptr %t45, !tbaa !39
  %t52 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eInfer(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %t39, ptr %t40, ptr %a2, ptr %t46)
  store i32 %t52, ptr %l33
  br label %bb12
bb11:
  br label %bb25
bb12:
  %t53 = load i32, ptr %l33, !tbaa !23
  store i32 %t53, ptr %l6, !tbaa !23
  %t54 = load ptr, ptr %l0, !tbaa !29
  %t56 = getelementptr %"compiler/generic:Program", ptr %t54, i32 0, i32 2
  %t57 = load i32, ptr %l6, !tbaa !23
  %t60 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t56, i32 %t57)
  store i32 %t60, ptr %l37
  br label %bb13
bb13:
  %t61 = load i32, ptr %l37, !range !{i32 0, i32 33}
  %t63 = trunc i64 19 to i32
  %t64 = icmp eq i32 %t61, %t63
  br i1 %t64, label %bb14, label %bb15
bb14:
  %t66 = load ptr, ptr %l0, !tbaa !29
  %t68 = getelementptr %"compiler/generic:Program", ptr %t66, i32 0, i32 2
  %t69 = load i32, ptr %l6, !tbaa !23
  %t72 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eLength(ptr %v0, ptr %t68, i32 %t69)
  store i32 %t72, ptr %l44
  br label %bb16
bb15:
  store i1 false, ptr %l40, !tbaa !21
  br label %bb17
bb16:
  %t73 = load i32, ptr %l44, !tbaa !23
  %t74 = icmp ne i32 %t73, 0
  store i1 %t74, ptr %l40, !tbaa !21
  br label %bb17
bb17:
  %t76 = load i1, ptr %l40, !tbaa !21
  br i1 %t76, label %bb18, label %bb19
bb18:
  %t77 = load ptr, ptr %l0, !tbaa !29
  %t78 = load i32, ptr %l6, !tbaa !23
  %t79 = load i32, ptr %l5, !tbaa !23
  %t83 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eLengthsOnly(ptr %v0, ptr %t77, i32 %t78, i32 %t79)
  store i1 %t83, ptr %l50
  br label %bb20
bb19:
  store i1 false, ptr %l46, !tbaa !21
  br label %bb21
bb20:
  %t84 = load i1, ptr %l50, !tbaa !21
  store i1 %t84, ptr %l46, !tbaa !21
  br label %bb21
bb21:
  %t85 = load i1, ptr %l46, !tbaa !21
  br i1 %t85, label %bb22, label %bb23
bb22:
  %t86 = load i32, ptr %l6, !tbaa !23
  store i32 %t86, ptr %l5, !tbaa !23
  br label %bb24
bb23:
  br label %bb24
bb24:
  br label %bb25
bb25:
  %t88 = load ptr, ptr %l0, !tbaa !29
  %t90 = getelementptr %"compiler/generic:Program", ptr %t88, i32 0, i32 2
  store ptr %t90, ptr %l53, !tbaa !29
  %t91 = load i32, ptr %l5, !tbaa !23
  store i32 %t91, ptr %l54, !tbaa !23
  %t92 = load ptr, ptr %l0, !tbaa !29
  %t93 = load ptr, ptr %l1, !tbaa !29
  %t94 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t94, ptr %l57, !tbaa !27
  %t95 = getelementptr { i64, ptr }, ptr %l57, i32 0, i32 1
  %t96 = load ptr, ptr %t95, !tbaa !27
  %t97 = getelementptr ptr, ptr %t96, i64 0
  %t98 = load ptr, ptr %t97, !tbaa !39
  %t103 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFoldLength(ptr %v0, ptr %v1, ptr %v3, ptr %t92, ptr %t93, ptr %t98)
  store i32 %t103, ptr %l60
  br label %bb26
bb26:
  %t104 = load ptr, ptr %l53, !tbaa !29
  %t105 = load i32, ptr %l54, !tbaa !23
  %t106 = load i32, ptr %l60, !tbaa !23
  %t107 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eArray(ptr %v0, ptr %t104, i32 %t105, i32 %t106)
  store i32 %t107, ptr %l61
  br label %bb27
bb27:
  %t108 = load i32, ptr %l61, !tbaa !23
  store i32 %t108, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2ecallType(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1, ptr %a2, ptr %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l3 = alloca ptr
  %l4 = alloca ptr
  %l5 = alloca { i64, ptr }
  %l6 = alloca %"compiler/source:Span"
  %l7 = alloca i32
  %l8 = alloca %"compiler/names:Ref"
  %l9 = alloca %"compiler/source:Span"
  %l10 = alloca ptr
  %l11 = alloca i32
  %l12 = alloca %"compiler/names:Ref"
  %l13 = alloca i32
  %l14 = alloca i64
  %l15 = alloca i32
  %l16 = alloca ptr
  %l17 = alloca i1
  %l28 = alloca i32
  %l29 = alloca ptr
  %l30 = alloca i1
  %l38 = alloca ptr
  %l42 = alloca i64
  %l44 = alloca %"compiler/names:Ref"
  %l49 = alloca { i64, ptr }
  %l50 = alloca i1
  %l51 = alloca i32
  %l54 = alloca ptr
  %l57 = alloca { i64, ptr }
  %l58 = alloca i32
  %l62 = alloca i32
  %l63 = alloca ptr
  %l64 = alloca i1
  %l74 = alloca ptr
  %l78 = alloca i64
  %l80 = alloca %"compiler/names:Ref"
  %l87 = alloca i32
  %l93 = alloca i32
  %l100 = alloca { i64, ptr }
  %l101 = alloca i1
  %l102 = alloca i1
  %l105 = alloca i1
  %l108 = alloca i32
  %l112 = alloca i64
  %l119 = alloca i32
  %l123 = alloca i32
  %l128 = alloca i32
  %s3 = alloca %olang.scope
  %s4 = alloca %olang.scope
  %s7 = alloca %olang.scope
  %rv = alloca i32
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store ptr %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l3, !tbaa !29
  store ptr %t1, ptr %l16, !tbaa !29
  store i1 false, ptr %l17, !tbaa !21
  %t2 = load ptr, ptr %l16, !tbaa !29
  %t3 = icmp ne ptr %t2, null
  br i1 %t3, label %bb1, label %bb2
bb1:
  %t5 = load ptr, ptr %l16, !tbaa !29
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 28}
  %t8 = icmp eq i64 %t6, 11
  store i1 %t8, ptr %l17, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l17, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  %t10 = load ptr, ptr %l3, !tbaa !29
  %t12 = getelementptr { i64, [4 x i64] }, ptr %t10, i32 0, i32 1
  %t13 = getelementptr { %"compiler/source:Span", ptr, { i64, ptr } }, ptr %t12, i32 0, i32 1
  %t14 = load ptr, ptr %t13
  store ptr %t14, ptr %l4, !tbaa !29
  %t16 = load ptr, ptr %l3, !tbaa !29
  %t18 = getelementptr { i64, [4 x i64] }, ptr %t16, i32 0, i32 1
  %t19 = getelementptr { %"compiler/source:Span", ptr, { i64, ptr } }, ptr %t18, i32 0, i32 2
  %t20 = load { i64, ptr }, ptr %t19
  store { i64, ptr } %t20, ptr %l5, !tbaa !27
  br label %bb5
bb4:
  br label %bb7
bb5:
  %t22 = load ptr, ptr %l0, !tbaa !29
  %t23 = load ptr, ptr %l1, !tbaa !29
  %t24 = load ptr, ptr %l4, !tbaa !29
  %t25 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t30 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2egenericCall(ptr %v0, ptr %v1, ptr %v3, ptr %v3, ptr %t22, ptr %t23, ptr %t24, { i64, ptr } %t25)
  store i32 %t30, ptr %l28
  br label %bb6
bb6:
  %t31 = load i32, ptr %l28, !tbaa !23
  store i32 %t31, ptr %rv
  br label %ret
bb7:
  %t32 = load ptr, ptr %l3, !tbaa !29
  store ptr %t32, ptr %l29, !tbaa !29
  store i1 false, ptr %l30, !tbaa !21
  %t33 = load ptr, ptr %l29, !tbaa !29
  %t34 = icmp ne ptr %t33, null
  br i1 %t34, label %bb8, label %bb9
bb8:
  %t36 = load ptr, ptr %l29, !tbaa !29
  %t37 = load i64, ptr %t36, !range !{i64 0, i64 28}
  %t39 = icmp eq i64 %t37, 0
  store i1 %t39, ptr %l30, !tbaa !21
  br label %bb9
bb9:
  %t40 = load i1, ptr %l30, !tbaa !21
  br i1 %t40, label %bb10, label %bb11
bb10:
  %t41 = load ptr, ptr %l3, !tbaa !29
  %t43 = getelementptr { i64, [4 x i64] }, ptr %t41, i32 0, i32 1
  %t44 = getelementptr { %"compiler/source:Span", i32 }, ptr %t43, i32 0, i32 0
  %t45 = load %"compiler/source:Span", ptr %t44
  store %"compiler/source:Span" %t45, ptr %l6
  %t47 = load ptr, ptr %l3, !tbaa !29
  %t49 = getelementptr { i64, [4 x i64] }, ptr %t47, i32 0, i32 1
  %t50 = getelementptr { %"compiler/source:Span", i32 }, ptr %t49, i32 0, i32 1
  %t51 = load i32, ptr %t50
  store i32 %t51, ptr %l7, !tbaa !23
  br label %bb12
bb11:
  br label %bb26
bb12:
  %t53 = load ptr, ptr %l0, !tbaa !29
  %t55 = getelementptr %"compiler/generic:Program", ptr %t53, i32 0, i32 1
  %t56 = load ptr, ptr %t55, !tbaa !29
  store ptr %t56, ptr %l38, !tbaa !29
  %t57 = load ptr, ptr %l0, !tbaa !29
  %t58 = load ptr, ptr %l1, !tbaa !29
  %t60 = getelementptr %"compiler/generic:Context", ptr %t58, i32 0, i32 0
  %t61 = load i64, ptr %t60, !tbaa !24
  %t64 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2efile(ptr %v0, ptr %t57, i64 %t61)
  store i64 %t64, ptr %l42
  br label %bb13
bb13:
  %t65 = getelementptr %"compiler/source:Span", ptr %l6, i32 0, i32 0
  %t66 = load i32, ptr %t65, !tbaa !23
  %t67 = load ptr, ptr %l38, !tbaa !29
  %t68 = load i64, ptr %l42, !tbaa !24
  %t70 = call %"compiler/names:Ref" @compiler_2fnames_2ecompiler_2fnames_3aResolver_2eUse(ptr %v0, ptr %t67, i64 %t68, i32 %t66)
  store %"compiler/names:Ref" %t70, ptr %l44
  br label %bb14
bb14:
  %t71 = load %"compiler/names:Ref", ptr %l44
  store %"compiler/names:Ref" %t71, ptr %l8
  %t72 = getelementptr %"compiler/names:Ref", ptr %l8, i32 0, i32 0
  %t73 = load i32, ptr %t72, !range !{i32 0, i32 9}
  %t75 = trunc i64 7 to i32
  %t76 = icmp eq i32 %t73, %t75
  br i1 %t76, label %bb15, label %bb16
bb15:
  store %olang.scope zeroinitializer, ptr %s3
  %t78 = load ptr, ptr %l0, !tbaa !29
  %t79 = load i32, ptr %l7, !tbaa !23
  %t82 = call { i64, ptr } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2etext(ptr %v0, ptr %v0, ptr %t78, i32 %t79)
  store { i64, ptr } %t82, ptr %l49
  br label %bb17
bb16:
  br label %bb24
bb17:
  %t83 = load { i64, ptr }, ptr %l49, !tbaa !27
  %t84 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s3, { i64, ptr } %t83, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d18, i32 0, i32 1) })
  store i1 %t84, ptr %l50
  br label %bb18
bb18:
  %t85 = load i1, ptr %l50, !tbaa !21
  br i1 %t85, label %bb19, label %bb20
bb19:
  %t86 = load i32, ptr @G_2ecompiler_2ftypes_2eBoolT, !tbaa !23
  store i32 %t86, ptr %l51, !tbaa !23
  br label %bb23
bb20:
  %t88 = load ptr, ptr %l0, !tbaa !29
  %t90 = getelementptr %"compiler/generic:Program", ptr %t88, i32 0, i32 2
  store ptr %t90, ptr %l54, !tbaa !29
  %t91 = load ptr, ptr %l0, !tbaa !29
  %t92 = load i32, ptr %l7, !tbaa !23
  %t95 = call { i64, ptr } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2etext(ptr %v0, ptr %v0, ptr %t91, i32 %t92)
  store { i64, ptr } %t95, ptr %l57
  br label %bb21
bb21:
  %t96 = load ptr, ptr %l54, !tbaa !29
  %t97 = load { i64, ptr }, ptr %l57, !tbaa !27
  %t98 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePrim(ptr %v0, ptr %v0, ptr %t96, { i64, ptr } %t97)
  store i32 %t98, ptr %l58
  br label %bb22
bb22:
  %t99 = load i32, ptr %l58, !tbaa !23
  store i32 %t99, ptr %l51, !tbaa !23
  br label %bb23
bb23:
  call void @__olang_scope_close(ptr %s3)
  %t100 = load i32, ptr %l51, !tbaa !23
  store i32 %t100, ptr %rv
  br label %ret
bb24:
  %t101 = load ptr, ptr %l0, !tbaa !29
  %t102 = load %"compiler/names:Ref", ptr %l8
  %t103 = load i32, ptr %l7, !tbaa !23
  %t107 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2ecalleeType(ptr %v0, ptr %t101, %"compiler/names:Ref" %t102, i32 %t103)
  store i32 %t107, ptr %l62
  br label %bb25
bb25:
  %t108 = load i32, ptr %l62, !tbaa !23
  store i32 %t108, ptr %rv
  br label %ret
bb26:
  %t109 = load ptr, ptr %l3, !tbaa !29
  store ptr %t109, ptr %l63, !tbaa !29
  store i1 false, ptr %l64, !tbaa !21
  %t110 = load ptr, ptr %l63, !tbaa !29
  %t111 = icmp ne ptr %t110, null
  br i1 %t111, label %bb27, label %bb28
bb27:
  %t113 = load ptr, ptr %l63, !tbaa !29
  %t114 = load i64, ptr %t113, !range !{i64 0, i64 28}
  %t116 = icmp eq i64 %t114, 12
  store i1 %t116, ptr %l64, !tbaa !21
  br label %bb28
bb28:
  %t117 = load i1, ptr %l64, !tbaa !21
  br i1 %t117, label %bb29, label %bb30
bb29:
  %t118 = load ptr, ptr %l3, !tbaa !29
  %t120 = getelementptr { i64, [4 x i64] }, ptr %t118, i32 0, i32 1
  %t121 = getelementptr { %"compiler/source:Span", ptr, i32 }, ptr %t120, i32 0, i32 0
  %t122 = load %"compiler/source:Span", ptr %t121
  store %"compiler/source:Span" %t122, ptr %l9
  %t124 = load ptr, ptr %l3, !tbaa !29
  %t126 = getelementptr { i64, [4 x i64] }, ptr %t124, i32 0, i32 1
  %t127 = getelementptr { %"compiler/source:Span", ptr, i32 }, ptr %t126, i32 0, i32 1
  %t128 = load ptr, ptr %t127
  store ptr %t128, ptr %l10, !tbaa !29
  %t130 = load ptr, ptr %l3, !tbaa !29
  %t132 = getelementptr { i64, [4 x i64] }, ptr %t130, i32 0, i32 1
  %t133 = getelementptr { %"compiler/source:Span", ptr, i32 }, ptr %t132, i32 0, i32 2
  %t134 = load i32, ptr %t133
  store i32 %t134, ptr %l11, !tbaa !23
  br label %bb31
bb30:
  br label %bb61
bb31:
  store %olang.scope zeroinitializer, ptr %s4
  %t136 = load ptr, ptr %l0, !tbaa !29
  %t138 = getelementptr %"compiler/generic:Program", ptr %t136, i32 0, i32 1
  %t139 = load ptr, ptr %t138, !tbaa !29
  store ptr %t139, ptr %l74, !tbaa !29
  %t140 = load ptr, ptr %l0, !tbaa !29
  %t141 = load ptr, ptr %l1, !tbaa !29
  %t143 = getelementptr %"compiler/generic:Context", ptr %t141, i32 0, i32 0
  %t144 = load i64, ptr %t143, !tbaa !24
  %t147 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2efile(ptr %v0, ptr %t140, i64 %t144)
  store i64 %t147, ptr %l78
  br label %bb32
bb32:
  %t148 = getelementptr %"compiler/source:Span", ptr %l9, i32 0, i32 1
  %t149 = load i32, ptr %t148, !tbaa !23
  %t150 = load ptr, ptr %l74, !tbaa !29
  %t151 = load i64, ptr %l78, !tbaa !24
  %t153 = call %"compiler/names:Ref" @compiler_2fnames_2ecompiler_2fnames_3aResolver_2eMember(ptr %v0, ptr %t150, i64 %t151, i32 %t149)
  store %"compiler/names:Ref" %t153, ptr %l80
  br label %bb33
bb33:
  %t154 = load %"compiler/names:Ref", ptr %l80
  store %"compiler/names:Ref" %t154, ptr %l12
  %t155 = getelementptr %"compiler/names:Ref", ptr %l12, i32 0, i32 0
  %t156 = load i32, ptr %t155, !range !{i32 0, i32 9}
  %t158 = trunc i64 0 to i32
  %t159 = icmp eq i32 %t156, %t158
  %t161 = xor i1 %t159, true
  br i1 %t161, label %bb34, label %bb35
bb34:
  %t163 = load ptr, ptr %l0, !tbaa !29
  %t164 = load %"compiler/names:Ref", ptr %l12
  %t165 = load i32, ptr %l11, !tbaa !23
  %t169 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2ecalleeType(ptr %v0, ptr %t163, %"compiler/names:Ref" %t164, i32 %t165)
  store i32 %t169, ptr %l87
  br label %bb36
bb35:
  br label %bb37
bb36:
  call void @__olang_scope_close(ptr %s4)
  %t170 = load i32, ptr %l87, !tbaa !23
  store i32 %t170, ptr %rv
  br label %ret
bb37:
  %t171 = load ptr, ptr %l0, !tbaa !29
  %t172 = load ptr, ptr %l1, !tbaa !29
  %t174 = load ptr, ptr %l10, !tbaa !29
  %t180 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eInfer(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %t171, ptr %t172, ptr %a2, ptr %t174)
  store i32 %t180, ptr %l93
  br label %bb38
bb38:
  %t181 = load i32, ptr %l93, !tbaa !23
  store i32 %t181, ptr %l13, !tbaa !23
  %t182 = load i32, ptr %l13, !tbaa !23
  %t183 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t186 = icmp eq i32 %t182, %t183
  br i1 %t186, label %bb39, label %bb40
bb39:
  %t188 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  call void @__olang_scope_close(ptr %s4)
  store i32 %t188, ptr %rv
  br label %ret
bb40:
  br label %bb41
bb41:
  %t190 = load ptr, ptr %l0, !tbaa !29
  %t191 = load i32, ptr %l11, !tbaa !23
  %t194 = call { i64, ptr } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2etext(ptr %v0, ptr %v0, ptr %t190, i32 %t191)
  store { i64, ptr } %t194, ptr %l100
  br label %bb42
bb42:
  %t195 = load { i64, ptr }, ptr %l100, !tbaa !27
  %t196 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s4, { i64, ptr } %t195, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d19, i32 0, i32 1) })
  store i1 %t196, ptr %l101
  br label %bb43
bb43:
  %t197 = load i1, ptr %l101, !tbaa !21
  br i1 %t197, label %bb44, label %bb45
bb44:
  %t198 = load ptr, ptr %l0, !tbaa !29
  %t199 = load i32, ptr %l13, !tbaa !23
  %t202 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eisArray(ptr %v0, ptr %t198, i32 %t199)
  store i1 %t202, ptr %l105
  br label %bb46
bb45:
  store i1 false, ptr %l102, !tbaa !21
  br label %bb47
bb46:
  %t203 = load i1, ptr %l105, !tbaa !21
  store i1 %t203, ptr %l102, !tbaa !21
  br label %bb47
bb47:
  %t204 = load i1, ptr %l102, !tbaa !21
  br i1 %t204, label %bb48, label %bb49
bb48:
  store %olang.scope zeroinitializer, ptr %s7
  %t205 = load ptr, ptr %l0, !tbaa !29
  %t207 = getelementptr %"compiler/generic:Program", ptr %t205, i32 0, i32 2
  %t209 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePrim(ptr %v0, ptr %s7, ptr %t207, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d20, i32 0, i32 1) })
  store i32 %t209, ptr %l108
  br label %bb50
bb49:
  br label %bb51
bb50:
  call void @__olang_scope_close(ptr %s7)
  call void @__olang_scope_close(ptr %s4)
  %t210 = load i32, ptr %l108, !tbaa !23
  store i32 %t210, ptr %rv
  br label %ret
bb51:
  %t211 = load ptr, ptr %l0, !tbaa !29
  %t212 = load i32, ptr %l13, !tbaa !23
  %t213 = load i32, ptr %l11, !tbaa !23
  %t217 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eMethodOf(ptr %v0, ptr %t211, i32 %t212, i32 %t213)
  store i64 %t217, ptr %l112
  br label %bb52
bb52:
  %t218 = load i64, ptr %l112, !tbaa !24
  store i64 %t218, ptr %l14, !tbaa !24
  %t219 = load i64, ptr %l14, !tbaa !24
  %t221 = icmp slt i64 %t219, 0
  br i1 %t221, label %bb53, label %bb54
bb53:
  %t223 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  call void @__olang_scope_close(ptr %s4)
  store i32 %t223, ptr %rv
  br label %ret
bb54:
  br label %bb55
bb55:
  %t225 = load ptr, ptr %l0, !tbaa !29
  %t226 = load i64, ptr %l14, !tbaa !24
  %t227 = load i32, ptr %l13, !tbaa !23
  %t231 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eMethodSig(ptr %v0, ptr %t225, i64 %t226, i32 %t227)
  store i32 %t231, ptr %l119
  br label %bb56
bb56:
  %t232 = load i32, ptr %l119, !tbaa !23
  store i32 %t232, ptr %l15, !tbaa !23
  %t233 = load i32, ptr %l15, !tbaa !23
  %t234 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t237 = icmp eq i32 %t233, %t234
  br i1 %t237, label %bb57, label %bb58
bb57:
  %t239 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  store i32 %t239, ptr %l123, !tbaa !23
  br label %bb60
bb58:
  %t241 = load ptr, ptr %l0, !tbaa !29
  %t243 = getelementptr %"compiler/generic:Program", ptr %t241, i32 0, i32 2
  %t244 = load i32, ptr %l15, !tbaa !23
  %t247 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eResult(ptr %v0, ptr %t243, i32 %t244)
  store i32 %t247, ptr %l128
  br label %bb59
bb59:
  %t248 = load i32, ptr %l128, !tbaa !23
  store i32 %t248, ptr %l123, !tbaa !23
  br label %bb60
bb60:
  call void @__olang_scope_close(ptr %s4)
  %t249 = load i32, ptr %l123, !tbaa !23
  store i32 %t249, ptr %rv
  br label %ret
bb61:
  br i1 true, label %bb62, label %bb63
bb62:
  br label %bb64
bb63:
  br label %bb65
bb64:
  %t250 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  store i32 %t250, ptr %rv
  br label %ret
bb65:
  call void @__olang_check_failed(ptr @olang_loc_a87b58072a15a8a_ec80af628fdc0e7e)
  unreachable
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
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

define dso_local i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eerrsArg(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, ptr %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca { i64, ptr }
  %l4 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l5 = alloca { i64, ptr }
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca ptr
  %l9 = alloca ptr
  %l10 = alloca i1
  %l15 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l23 = alloca { i64, ptr }
  %l29 = alloca i1
  %l36 = alloca ptr
  %l38 = alloca ptr
  %l40 = alloca { i64, ptr }
  %l41 = alloca i32
  %l42 = alloca i32
  %l44 = alloca i32
  %s1 = alloca %olang.scope
  %rv = alloca i32
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store ptr %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l2, !tbaa !29
  store ptr %t1, ptr %l9, !tbaa !29
  store i1 false, ptr %l10, !tbaa !21
  %t2 = load ptr, ptr %l9, !tbaa !29
  %t3 = icmp ne ptr %t2, null
  br i1 %t3, label %bb1, label %bb2
bb1:
  %t5 = load ptr, ptr %l9, !tbaa !29
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 8}
  %t8 = icmp eq i64 %t6, 6
  store i1 %t8, ptr %l10, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l10, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  %t10 = load ptr, ptr %l2, !tbaa !29
  %t12 = getelementptr { i64, [5 x i64] }, ptr %t10, i32 0, i32 1
  %t13 = getelementptr { %"compiler/source:Span", { i64, ptr } }, ptr %t12, i32 0, i32 1
  %t14 = load { i64, ptr }, ptr %t13
  store { i64, ptr } %t14, ptr %l3, !tbaa !27
  br label %bb5
bb4:
  br label %bb18
bb5:
  store %olang.scope zeroinitializer, ptr %s1
  %t16 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2ector(ptr %s1, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t16, ptr %l15
  br label %bb6
bb6:
  %t17 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l15
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t17, ptr %l4
  %t18 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t18, ptr %l5, !tbaa !27
  store i64 0, ptr %l6, !tbaa !24
  %t20 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t22 = extractvalue { i64, ptr } %t20, 0
  store i64 %t22, ptr %l7, !tbaa !24
  br label %bb7
bb7:
  %t24 = load i64, ptr %l6, !tbaa !24
  %t25 = load i64, ptr %l7, !tbaa !24
  %t28 = icmp slt i64 %t24, %t25
  %t30 = xor i1 %t28, true
  br i1 %t30, label %bb8, label %bb9
bb8:
  br label %bb14
bb9:
  br label %bb10
bb10:
  %t32 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t32, ptr %l23, !tbaa !27
  %t33 = load i64, ptr %l6, !tbaa !24
  %t35 = getelementptr { i64, ptr }, ptr %l23, i32 0, i32 1
  %t36 = load ptr, ptr %t35, !tbaa !27
  %t37 = getelementptr ptr, ptr %t36, i64 %t33
  %t38 = load ptr, ptr %t37, !tbaa !39
  store ptr %t38, ptr %l8, !tbaa !29
  %t40 = load ptr, ptr %l0, !tbaa !29
  %t41 = load ptr, ptr %l1, !tbaa !29
  %t42 = load ptr, ptr %l8, !tbaa !29
  %t46 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eErrorItemKnown(ptr %v0, ptr %v1, ptr %v2, ptr %t40, ptr %t41, ptr %t42)
  store i1 %t46, ptr %l29
  br label %bb11
bb11:
  %t47 = load ptr, ptr %l0, !tbaa !29
  %t48 = load ptr, ptr %l1, !tbaa !29
  %t49 = load ptr, ptr %l8, !tbaa !29
  call void @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eerrorSetEntries(ptr %v0, ptr %v1, ptr %v2, ptr %s1, ptr %t47, ptr %t48, ptr %t49, ptr %l4)
  br label %bb12
bb12:
  br label %bb13
bb13:
  %t54 = load i64, ptr %l6, !tbaa !24
  %t56 = add i64 %t54, 1
  store i64 %t56, ptr %l6, !tbaa !24
  br label %bb7
bb14:
  %t58 = load ptr, ptr %l0, !tbaa !29
  store ptr %t58, ptr %l36, !tbaa !29
  %t59 = load ptr, ptr %l0, !tbaa !29
  %t61 = getelementptr %"compiler/generic:Program", ptr %t59, i32 0, i32 2
  store ptr %t61, ptr %l38, !tbaa !29
  %t63 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2eToArray_3ccompiler_2ftypes_3aTypeId_3e(ptr %s1, ptr %s1, ptr %l4)
  store { i64, ptr } %t63, ptr %l40
  br label %bb15
bb15:
  %t64 = load ptr, ptr %l38, !tbaa !29
  %t65 = load { i64, ptr }, ptr %l40, !tbaa !27
  %t66 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eList(ptr %v0, ptr %s1, ptr %t64, { i64, ptr } %t65)
  store i32 %t66, ptr %l41
  br label %bb16
bb16:
  %t67 = load ptr, ptr %l36, !tbaa !29
  %t68 = load i32, ptr %l41, !tbaa !23
  %t69 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eErrSetOf(ptr %v0, ptr %t67, i32 %t68)
  store i32 %t69, ptr %l42
  br label %bb17
bb17:
  call void @__olang_scope_close(ptr %s1)
  %t70 = load i32, ptr %l42, !tbaa !23
  store i32 %t70, ptr %rv
  br label %ret
bb18:
  br i1 true, label %bb19, label %bb20
bb19:
  br label %bb21
bb20:
  br label %bb23
bb21:
  %t71 = load ptr, ptr %l0, !tbaa !29
  %t73 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eErrSetOf(ptr %v0, ptr %t71, i32 0)
  store i32 %t73, ptr %l44
  br label %bb22
bb22:
  %t74 = load i32, ptr %l44, !tbaa !23
  store i32 %t74, ptr %rv
  br label %ret
bb23:
  call void @__olang_check_failed(ptr @olang_loc_24f0f81fc570bea6_c6e464f22cc6b362)
  unreachable
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local void @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eexpand(ptr %v0, ptr %a0, i32 %a1, i64 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca i64
  %l3 = alloca i32
  %l4 = alloca i32
  %l9 = alloca i1
  %l16 = alloca i32
  %l22 = alloca i32
  %l25 = alloca i1
  %l29 = alloca i1
  %l33 = alloca i64
  %l37 = alloca i1
  %l41 = alloca ptr
  %l45 = alloca i32
  %l50 = alloca ptr
  %l56 = alloca i1
  %l59 = alloca i1
  %l60 = alloca ptr
  %l65 = alloca ptr
  %l69 = alloca i32
  %l74 = alloca ptr
  %l78 = alloca i32
  %l85 = alloca ptr
  %l89 = alloca i32
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  store i64 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load i64, ptr %l2, !tbaa !24
  %t2 = load i64, ptr @G_2ecompiler_2fgeneric_2eMaxDepth, !tbaa !24
  %t4 = mul i64 4, %t2
  %t7 = icmp sgt i64 %t1, %t4
  br i1 %t7, label %bb1, label %bb2
bb1:
  store i1 true, ptr %l9, !tbaa !21
  br label %bb3
bb2:
  %t9 = load i32, ptr %l1, !tbaa !23
  %t10 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t13 = icmp eq i32 %t9, %t10
  store i1 %t13, ptr %l9, !tbaa !21
  br label %bb3
bb3:
  %t15 = load i1, ptr %l9, !tbaa !21
  br i1 %t15, label %bb4, label %bb5
bb4:
  br label %ret
bb5:
  br label %bb6
bb6:
  %t16 = load ptr, ptr %l0, !tbaa !29
  %t18 = getelementptr %"compiler/generic:Program", ptr %t16, i32 0, i32 2
  %t19 = load i32, ptr %l1, !tbaa !23
  %t22 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t18, i32 %t19)
  store i32 %t22, ptr %l16
  br label %bb7
bb7:
  %t23 = load i32, ptr %l16, !range !{i32 0, i32 33}
  store i32 %t23, ptr %l3
  %t24 = load i32, ptr %l3, !range !{i32 0, i32 33}
  %t26 = trunc i64 18 to i32
  %t27 = icmp eq i32 %t24, %t26
  br i1 %t27, label %bb8, label %bb9
bb8:
  br label %bb10
bb9:
  br label %bb34
bb10:
  %t29 = load ptr, ptr %l0, !tbaa !29
  %t31 = getelementptr %"compiler/generic:Program", ptr %t29, i32 0, i32 2
  %t32 = load i32, ptr %l1, !tbaa !23
  %t35 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eArgs(ptr %v0, ptr %t31, i32 %t32)
  store i32 %t35, ptr %l22
  br label %bb11
bb11:
  %t36 = load i32, ptr %l22, !tbaa !23
  store i32 %t36, ptr %l4, !tbaa !23
  %t37 = load i32, ptr %l4, !tbaa !23
  %t39 = icmp eq i32 %t37, 0
  br i1 %t39, label %bb12, label %bb13
bb12:
  store i1 true, ptr %l25, !tbaa !21
  br label %bb15
bb13:
  %t41 = load ptr, ptr %l0, !tbaa !29
  %t43 = getelementptr %"compiler/generic:Program", ptr %t41, i32 0, i32 2
  %t44 = load i32, ptr %l1, !tbaa !23
  %t47 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eHasBody(ptr %v0, ptr %t43, i32 %t44)
  store i1 %t47, ptr %l29
  br label %bb14
bb14:
  %t48 = load i1, ptr %l29, !tbaa !21
  store i1 %t48, ptr %l25, !tbaa !21
  br label %bb15
bb15:
  %t49 = load i1, ptr %l25, !tbaa !21
  br i1 %t49, label %bb16, label %bb17
bb16:
  br label %ret
bb17:
  br label %bb18
bb18:
  %t50 = load ptr, ptr %l0, !tbaa !29
  %t52 = getelementptr %"compiler/generic:Program", ptr %t50, i32 0, i32 2
  %t53 = load i32, ptr %l1, !tbaa !23
  %t56 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDepth(ptr %v0, ptr %t52, i32 %t53)
  store i64 %t56, ptr %l33
  br label %bb19
bb19:
  %t57 = load i64, ptr @G_2ecompiler_2fgeneric_2eMaxDepth, !tbaa !24
  %t59 = add i64 %t57, 1
  %t60 = load i64, ptr %l33, !tbaa !24
  %t62 = icmp sgt i64 %t60, %t59
  br i1 %t62, label %bb20, label %bb21
bb20:
  store i1 true, ptr %l37, !tbaa !21
  br label %bb22
bb21:
  %t64 = load ptr, ptr %l0, !tbaa !29
  %t66 = getelementptr %"compiler/generic:Program", ptr %t64, i32 0, i32 48
  %t67 = load i64, ptr %t66, !tbaa !24
  %t69 = icmp sgt i64 %t67, 200
  store i1 %t69, ptr %l37, !tbaa !21
  br label %bb22
bb22:
  %t71 = load i1, ptr %l37, !tbaa !21
  br i1 %t71, label %bb23, label %bb24
bb23:
  %t72 = load ptr, ptr %l0, !tbaa !29
  store ptr %t72, ptr %l41, !tbaa !29
  %t73 = load ptr, ptr %l0, !tbaa !29
  %t75 = getelementptr %"compiler/generic:Program", ptr %t73, i32 0, i32 2
  %t76 = load i32, ptr %l1, !tbaa !23
  %t79 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %t75, i32 %t76)
  store i32 %t79, ptr %l45
  br label %bb25
bb24:
  br label %bb27
bb25:
  %t80 = load ptr, ptr %l41, !tbaa !29
  %t81 = load i32, ptr %l45, !tbaa !23
  call void @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eunbounded(ptr %v0, ptr %t80, i32 %t81)
  br label %bb26
bb26:
  br label %ret
bb27:
  %t82 = load ptr, ptr %l0, !tbaa !29
  %t83 = load i32, ptr %l4, !tbaa !23
  %t84 = load i64, ptr %l2, !tbaa !24
  %t86 = add i64 %t84, 1
  call void @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eexpandList(ptr %v0, ptr %t82, i32 %t83, i64 %t86)
  br label %bb28
bb28:
  %t90 = load ptr, ptr %l0, !tbaa !29
  store ptr %t90, ptr %l50, !tbaa !29
  %t91 = load ptr, ptr %l50, !tbaa !29
  %t92 = getelementptr %"compiler/generic:Program", ptr %t91, i32 0, i32 48
  %t93 = load i64, ptr %t92, !tbaa !24
  %t95 = add i64 %t93, 1
  %t97 = load ptr, ptr %l50, !tbaa !29
  %t98 = getelementptr %"compiler/generic:Program", ptr %t97, i32 0, i32 48
  store i64 %t95, ptr %t98, !tbaa !24
  %t99 = load ptr, ptr %l0, !tbaa !29
  %t101 = getelementptr %"compiler/generic:Program", ptr %t99, i32 0, i32 2
  %t102 = load i32, ptr %l1, !tbaa !23
  %t105 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eClosed(ptr %v0, ptr %t101, i32 %t102)
  store i1 %t105, ptr %l56
  br label %bb29
bb29:
  %t106 = load i1, ptr %l56, !tbaa !21
  br i1 %t106, label %bb30, label %bb31
bb30:
  %t107 = load ptr, ptr %l0, !tbaa !29
  %t108 = load i32, ptr %l1, !tbaa !23
  %t111 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eBody(ptr %v0, ptr %t107, i32 %t108)
  store i1 %t111, ptr %l59
  br label %bb32
bb31:
  br label %bb33
bb32:
  br label %bb33
bb33:
  %t112 = load ptr, ptr %l0, !tbaa !29
  store ptr %t112, ptr %l60, !tbaa !29
  %t113 = load ptr, ptr %l60, !tbaa !29
  %t114 = getelementptr %"compiler/generic:Program", ptr %t113, i32 0, i32 48
  %t115 = load i64, ptr %t114, !tbaa !24
  %t117 = sub i64 %t115, 1
  %t119 = load ptr, ptr %l60, !tbaa !29
  %t120 = getelementptr %"compiler/generic:Program", ptr %t119, i32 0, i32 48
  store i64 %t117, ptr %t120, !tbaa !24
  br label %bb59
bb34:
  %t121 = load i32, ptr %l3, !range !{i32 0, i32 33}
  %t123 = trunc i64 20 to i32
  %t124 = icmp eq i32 %t121, %t123
  br i1 %t124, label %bb35, label %bb36
bb35:
  br label %bb37
bb36:
  br label %bb40
bb37:
  %t126 = load ptr, ptr %l0, !tbaa !29
  store ptr %t126, ptr %l65, !tbaa !29
  %t127 = load ptr, ptr %l0, !tbaa !29
  %t129 = getelementptr %"compiler/generic:Program", ptr %t127, i32 0, i32 2
  %t130 = load i32, ptr %l1, !tbaa !23
  %t133 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eReferent(ptr %v0, ptr %t129, i32 %t130)
  store i32 %t133, ptr %l69
  br label %bb38
bb38:
  %t134 = load i64, ptr %l2, !tbaa !24
  %t136 = add i64 %t134, 1
  %t137 = load ptr, ptr %l65, !tbaa !29
  %t138 = load i32, ptr %l69, !tbaa !23
  call void @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eexpand(ptr %v0, ptr %t137, i32 %t138, i64 %t136)
  br label %bb39
bb39:
  br label %bb59
bb40:
  %t140 = load i32, ptr %l3, !range !{i32 0, i32 33}
  %t142 = trunc i64 19 to i32
  %t143 = icmp eq i32 %t140, %t142
  br i1 %t143, label %bb41, label %bb42
bb41:
  br label %bb43
bb42:
  br label %bb46
bb43:
  %t145 = load ptr, ptr %l0, !tbaa !29
  store ptr %t145, ptr %l74, !tbaa !29
  %t146 = load ptr, ptr %l0, !tbaa !29
  %t148 = getelementptr %"compiler/generic:Program", ptr %t146, i32 0, i32 2
  %t149 = load i32, ptr %l1, !tbaa !23
  %t152 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eElem(ptr %v0, ptr %t148, i32 %t149)
  store i32 %t152, ptr %l78
  br label %bb44
bb44:
  %t153 = load i64, ptr %l2, !tbaa !24
  %t155 = add i64 %t153, 1
  %t156 = load ptr, ptr %l74, !tbaa !29
  %t157 = load i32, ptr %l78, !tbaa !23
  call void @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eexpand(ptr %v0, ptr %t156, i32 %t157, i64 %t155)
  br label %bb45
bb45:
  br label %bb59
bb46:
  %t159 = load i32, ptr %l3, !range !{i32 0, i32 33}
  %t161 = trunc i64 22 to i32
  %t162 = icmp eq i32 %t159, %t161
  br i1 %t162, label %bb47, label %bb48
bb47:
  br label %bb51
bb48:
  %t164 = load i32, ptr %l3, !range !{i32 0, i32 33}
  %t166 = trunc i64 23 to i32
  %t167 = icmp eq i32 %t164, %t166
  br i1 %t167, label %bb49, label %bb50
bb49:
  br label %bb51
bb50:
  br label %bb54
bb51:
  %t169 = load ptr, ptr %l0, !tbaa !29
  store ptr %t169, ptr %l85, !tbaa !29
  %t170 = load ptr, ptr %l0, !tbaa !29
  %t172 = getelementptr %"compiler/generic:Program", ptr %t170, i32 0, i32 2
  %t173 = load i32, ptr %l1, !tbaa !23
  %t176 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParts(ptr %v0, ptr %t172, i32 %t173)
  store i32 %t176, ptr %l89
  br label %bb52
bb52:
  %t177 = load i64, ptr %l2, !tbaa !24
  %t179 = add i64 %t177, 1
  %t180 = load ptr, ptr %l85, !tbaa !29
  %t181 = load i32, ptr %l89, !tbaa !23
  call void @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eexpandList(ptr %v0, ptr %t180, i32 %t181, i64 %t179)
  br label %bb53
bb53:
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
  call void @__olang_check_failed(ptr @olang_loc_8c836894b35cad82_296f4aeeea10268e)
  unreachable
bb59:
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eexpandList(ptr %v0, ptr %a0, i32 %a1, i64 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l3 = alloca { i64, ptr }
  %l4 = alloca i64
  %l5 = alloca i64
  %l12 = alloca { i64, ptr }
  %l19 = alloca { i64, ptr }
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
  br label %ret
bb2:
  br label %bb3
bb3:
  %t5 = load ptr, ptr %l0, !tbaa !29
  %t7 = getelementptr %"compiler/generic:Program", ptr %t5, i32 0, i32 2
  %t8 = load i32, ptr %l1, !tbaa !23
  %t11 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t7, i32 %t8)
  store { i64, ptr } %t11, ptr %l12
  br label %bb4
bb4:
  %t12 = load { i64, ptr }, ptr %l12, !tbaa !27
  store { i64, ptr } %t12, ptr %l3, !tbaa !27
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
  %t30 = getelementptr i32, ptr %t29, i64 %t26
  %t31 = load i32, ptr %t30, !tbaa !33
  %t33 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eexpand(ptr %v0, ptr %t33, i32 %t31, i64 %a2)
  br label %bb9
bb9:
  br label %bb10
bb10:
  %t39 = load i64, ptr %l4, !tbaa !24
  %t41 = add i64 %t39, 1
  store i64 %t41, ptr %l4, !tbaa !24
  br label %bb5
bb11:
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eflagBans(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, ptr %a2, i32 %a3, i1 %a4) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca i32
  %l5 = alloca { i64, ptr }
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca i64
  %l12 = alloca { i64, ptr }
  %l13 = alloca i64
  %l14 = alloca i64
  %l15 = alloca i64
  %l16 = alloca i64
  %l17 = alloca i64
  %l18 = alloca i64
  %l19 = alloca i64
  %l20 = alloca i64
  %l21 = alloca ptr
  %l25 = alloca { i64, ptr }
  %l34 = alloca i64
  %l37 = alloca i64
  %l59 = alloca i1
  %l67 = alloca ptr
  %l68 = alloca ptr
  %l70 = alloca i64
  %l72 = alloca { i64, ptr }
  %l75 = alloca %"compiler/source:Span"
  %l76 = alloca { i64, [3 x i64] }
  %l77 = alloca %"compiler/diagmsg:Msg"
  %l78 = alloca i64
  %l84 = alloca i1
  %l89 = alloca ptr
  %l93 = alloca i32
  %l94 = alloca { i64, ptr }
  %l96 = alloca i64
  %l103 = alloca i64
  %l106 = alloca i64
  %l132 = alloca i1
  %l135 = alloca { i64, ptr }
  %l138 = alloca i1
  %l140 = alloca i1
  %l143 = alloca { i64, ptr }
  %l146 = alloca i64
  %l151 = alloca { i64, ptr }
  %l156 = alloca ptr
  %l162 = alloca { i64, [3 x i64] }
  %l166 = alloca { i64, ptr }
  %l167 = alloca { i64, ptr }
  %l169 = alloca %"compiler/diagmsg:Msg"
  %l170 = alloca i64
  %s0 = alloca %olang.scope
  %s8 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store ptr %a2, ptr %l2
  store i32 %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/generic:Program", ptr %t1, i32 0, i32 2
  %t4 = load i32, ptr %l3, !tbaa !23
  %t7 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eResults(ptr %v0, ptr %s0, ptr %t3, i32 %t4)
  store { i64, ptr } %t7, ptr %l25
  br label %bb1
bb1:
  %t8 = load { i64, ptr }, ptr %l25, !tbaa !27
  store { i64, ptr } %t8, ptr %l5, !tbaa !27
  %t9 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t11 = extractvalue { i64, ptr } %t9, 0
  %t13 = icmp sgt i64 %t11, 1
  br i1 %t13, label %bb2, label %bb3
bb2:
  store i64 0, ptr %l6, !tbaa !24
  %t15 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t17 = extractvalue { i64, ptr } %t15, 0
  store i64 %t17, ptr %l7, !tbaa !24
  store i64 1, ptr %l8, !tbaa !24
  %t19 = load i64, ptr %l7, !tbaa !24
  %t20 = load i64, ptr %l6, !tbaa !24
  %t23 = icmp sgt i64 %t19, %t20
  br i1 %t23, label %bb4, label %bb5
bb3:
  br label %bb26
bb4:
  %t25 = load i64, ptr %l8, !tbaa !24
  %t27 = icmp sgt i64 %t25, 0
  br i1 %t27, label %bb6, label %bb7
bb5:
  store i64 0, ptr %l34, !tbaa !24
  br label %bb9
bb6:
  %t29 = load i64, ptr %l7, !tbaa !24
  %t30 = load i64, ptr %l6, !tbaa !24
  %t33 = sub i64 %t29, %t30
  %t34 = load i64, ptr %l8, !tbaa !24
  %t37 = add i64 %t33, %t34
  %t39 = sub i64 %t37, 1
  %t40 = load i64, ptr %l8, !tbaa !24
  %t43 = sdiv i64 %t39, %t40
  store i64 %t43, ptr %l37, !tbaa !24
  br label %bb8
bb7:
  store i64 0, ptr %l37, !tbaa !24
  br label %bb8
bb8:
  %t45 = load i64, ptr %l37, !tbaa !24
  store i64 %t45, ptr %l34, !tbaa !24
  br label %bb9
bb9:
  %t46 = load i64, ptr %l34, !tbaa !24
  store i64 %t46, ptr %l9, !tbaa !24
  store i64 0, ptr %l10, !tbaa !24
  br label %bb10
bb10:
  %t47 = load i64, ptr %l10, !tbaa !24
  %t48 = load i64, ptr %l9, !tbaa !24
  %t51 = icmp slt i64 %t47, %t48
  %t53 = xor i1 %t51, true
  br i1 %t53, label %bb11, label %bb12
bb11:
  br label %bb25
bb12:
  br label %bb13
bb13:
  %t55 = load i64, ptr %l6, !tbaa !24
  %t56 = load i64, ptr %l10, !tbaa !24
  %t57 = load i64, ptr %l8, !tbaa !24
  %t60 = mul i64 %t56, %t57
  %t63 = add i64 %t55, %t60
  store i64 %t63, ptr %l11, !tbaa !24
  %t65 = load i64, ptr %l11, !tbaa !24
  %t67 = getelementptr { i64, ptr }, ptr %l5, i32 0, i32 1
  %t68 = load ptr, ptr %t67, !tbaa !27
  %t69 = getelementptr i32, ptr %t68, i64 %t65
  %t70 = load i32, ptr %t69, !tbaa !33
  %t71 = load i32, ptr @G_2ecompiler_2ftypes_2eBoolT, !tbaa !23
  %t74 = icmp eq i32 %t70, %t71
  br i1 %t74, label %bb14, label %bb15
bb14:
  %t76 = load i64, ptr %l11, !tbaa !24
  %t77 = load ptr, ptr %l2, !tbaa !29
  %t79 = getelementptr %"compiler/ast:Sig", ptr %t77, i32 0, i32 1
  %t80 = load { i64, ptr }, ptr %t79, !tbaa !27
  %t82 = extractvalue { i64, ptr } %t80, 0
  %t85 = icmp slt i64 %t76, %t82
  store i1 %t85, ptr %l59, !tbaa !21
  br label %bb16
bb15:
  store i1 false, ptr %l59, !tbaa !21
  br label %bb16
bb16:
  %t87 = load i1, ptr %l59, !tbaa !21
  br i1 %t87, label %bb17, label %bb18
bb17:
  %t88 = load ptr, ptr %l0, !tbaa !29
  %t90 = getelementptr %"compiler/generic:Program", ptr %t88, i32 0, i32 0
  %t91 = load ptr, ptr %t90, !tbaa !29
  %t93 = getelementptr %"compiler/load:Loader", ptr %t91, i32 0, i32 4
  %t94 = load ptr, ptr %t93, !tbaa !29
  store ptr %t94, ptr %l67, !tbaa !29
  %t95 = load ptr, ptr %l0, !tbaa !29
  store ptr %t95, ptr %l68, !tbaa !29
  %t96 = load ptr, ptr %l1, !tbaa !29
  %t98 = getelementptr %"compiler/generic:Context", ptr %t96, i32 0, i32 0
  %t99 = load i64, ptr %t98, !tbaa !24
  store i64 %t99, ptr %l70, !tbaa !24
  %t100 = load ptr, ptr %l2, !tbaa !29
  %t102 = getelementptr %"compiler/ast:Sig", ptr %t100, i32 0, i32 1
  %t103 = load { i64, ptr }, ptr %t102, !tbaa !27
  store { i64, ptr } %t103, ptr %l72, !tbaa !27
  %t104 = load i64, ptr %l11, !tbaa !24
  %t106 = getelementptr { i64, ptr }, ptr %l72, i32 0, i32 1
  %t107 = load ptr, ptr %t106, !tbaa !27
  %t108 = getelementptr ptr, ptr %t107, i64 %t104
  %t109 = load ptr, ptr %t108, !tbaa !39
  %t111 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aTypeRef_2eSpan(ptr %v2, ptr %t109)
  store %"compiler/source:Span" %t111, ptr %l75
  br label %bb19
bb18:
  br label %bb23
bb19:
  %t112 = load ptr, ptr %l68, !tbaa !29
  %t113 = load i64, ptr %l70, !tbaa !24
  %t114 = load %"compiler/source:Span", ptr %l75
  %t115 = call { i64, [3 x i64] } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eat(ptr %v0, ptr %t112, i64 %t113, %"compiler/source:Span" %t114)
  store { i64, [3 x i64] } %t115, ptr %l76
  br label %bb20
bb20:
  %t116 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eFlagAmongResults(ptr %v0)
  store %"compiler/diagmsg:Msg" %t116, ptr %l77
  br label %bb21
bb21:
  %t117 = load ptr, ptr %l67, !tbaa !29
  %t118 = load { i64, [3 x i64] }, ptr %l76
  %t119 = load %"compiler/diagmsg:Msg", ptr %l77
  %t120 = call i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eErrorOncePerLine(ptr %v0, ptr %v0, ptr %t117, { i64, [3 x i64] } %t118, %"compiler/diagmsg:Msg" %t119)
  store i64 %t120, ptr %l78
  br label %bb22
bb22:
  br label %bb23
bb23:
  br label %bb24
bb24:
  %t121 = load i64, ptr %l10, !tbaa !24
  %t123 = add i64 %t121, 1
  store i64 %t123, ptr %l10, !tbaa !24
  br label %bb10
bb25:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb26:
  %t125 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t127 = extractvalue { i64, ptr } %t125, 0
  %t129 = icmp ne i64 %t127, 1
  br i1 %t129, label %bb27, label %bb28
bb27:
  store i1 true, ptr %l84, !tbaa !21
  br label %bb29
bb28:
  %t131 = getelementptr { i64, ptr }, ptr %l5, i32 0, i32 1
  %t132 = load ptr, ptr %t131, !tbaa !27
  %t133 = getelementptr i32, ptr %t132, i64 0
  %t134 = load i32, ptr %t133, !tbaa !33
  %t135 = load i32, ptr @G_2ecompiler_2ftypes_2eBoolT, !tbaa !23
  %t138 = icmp ne i32 %t134, %t135
  store i1 %t138, ptr %l84, !tbaa !21
  br label %bb29
bb29:
  %t140 = load i1, ptr %l84, !tbaa !21
  br i1 %t140, label %bb30, label %bb31
bb30:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb31:
  br label %bb32
bb32:
  %t141 = load ptr, ptr %l0, !tbaa !29
  %t143 = getelementptr %"compiler/generic:Program", ptr %t141, i32 0, i32 2
  store ptr %t143, ptr %l89, !tbaa !29
  %t144 = load ptr, ptr %l0, !tbaa !29
  %t146 = getelementptr %"compiler/generic:Program", ptr %t144, i32 0, i32 2
  %t147 = load i32, ptr %l3, !tbaa !23
  %t150 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParams(ptr %v0, ptr %t146, i32 %t147)
  store i32 %t150, ptr %l93
  br label %bb33
bb33:
  %t151 = load ptr, ptr %l89, !tbaa !29
  %t152 = load i32, ptr %l93, !tbaa !23
  %t153 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t151, i32 %t152)
  store { i64, ptr } %t153, ptr %l94
  br label %bb34
bb34:
  %t154 = load { i64, ptr }, ptr %l94, !tbaa !27
  store { i64, ptr } %t154, ptr %l12, !tbaa !27
  br i1 %a4, label %bb35, label %bb36
bb35:
  store i64 1, ptr %l96, !tbaa !24
  br label %bb37
bb36:
  store i64 0, ptr %l96, !tbaa !24
  br label %bb37
bb37:
  %t157 = load i64, ptr %l96, !tbaa !24
  store i64 %t157, ptr %l13, !tbaa !24
  %t158 = load i64, ptr %l13, !tbaa !24
  store i64 %t158, ptr %l14, !tbaa !24
  %t160 = load { i64, ptr }, ptr %l12, !tbaa !27
  %t162 = extractvalue { i64, ptr } %t160, 0
  store i64 %t162, ptr %l15, !tbaa !24
  store i64 1, ptr %l16, !tbaa !24
  %t164 = load i64, ptr %l15, !tbaa !24
  %t165 = load i64, ptr %l14, !tbaa !24
  %t168 = icmp sgt i64 %t164, %t165
  br i1 %t168, label %bb38, label %bb39
bb38:
  %t170 = load i64, ptr %l16, !tbaa !24
  %t172 = icmp sgt i64 %t170, 0
  br i1 %t172, label %bb40, label %bb41
bb39:
  store i64 0, ptr %l103, !tbaa !24
  br label %bb43
bb40:
  %t174 = load i64, ptr %l15, !tbaa !24
  %t175 = load i64, ptr %l14, !tbaa !24
  %t178 = sub i64 %t174, %t175
  %t179 = load i64, ptr %l16, !tbaa !24
  %t182 = add i64 %t178, %t179
  %t184 = sub i64 %t182, 1
  %t185 = load i64, ptr %l16, !tbaa !24
  %t188 = sdiv i64 %t184, %t185
  store i64 %t188, ptr %l106, !tbaa !24
  br label %bb42
bb41:
  store i64 0, ptr %l106, !tbaa !24
  br label %bb42
bb42:
  %t190 = load i64, ptr %l106, !tbaa !24
  store i64 %t190, ptr %l103, !tbaa !24
  br label %bb43
bb43:
  %t191 = load i64, ptr %l103, !tbaa !24
  store i64 %t191, ptr %l17, !tbaa !24
  store i64 0, ptr %l18, !tbaa !24
  br label %bb44
bb44:
  store %olang.scope zeroinitializer, ptr %s8
  %t192 = load i64, ptr %l18, !tbaa !24
  %t193 = load i64, ptr %l17, !tbaa !24
  %t196 = icmp slt i64 %t192, %t193
  %t198 = xor i1 %t196, true
  br i1 %t198, label %bb45, label %bb46
bb45:
  call void @__olang_scope_close(ptr %s8)
  br label %bb65
bb46:
  br label %bb47
bb47:
  %t200 = load i64, ptr %l14, !tbaa !24
  %t201 = load i64, ptr %l18, !tbaa !24
  %t202 = load i64, ptr %l16, !tbaa !24
  %t205 = mul i64 %t201, %t202
  %t208 = add i64 %t200, %t205
  store i64 %t208, ptr %l19, !tbaa !24
  %t210 = load i64, ptr %l19, !tbaa !24
  %t211 = load i64, ptr %l13, !tbaa !24
  %t214 = sub i64 %t210, %t211
  store i64 %t214, ptr %l20, !tbaa !24
  %t216 = load i64, ptr %l20, !tbaa !24
  %t217 = load ptr, ptr %l2, !tbaa !29
  %t219 = getelementptr %"compiler/ast:Sig", ptr %t217, i32 0, i32 0
  %t220 = load { i64, ptr }, ptr %t219, !tbaa !27
  %t222 = extractvalue { i64, ptr } %t220, 0
  %t225 = icmp sge i64 %t216, %t222
  br i1 %t225, label %bb48, label %bb49
bb48:
  store i1 true, ptr %l132, !tbaa !21
  br label %bb51
bb49:
  %t227 = load ptr, ptr %l0, !tbaa !29
  %t229 = getelementptr %"compiler/generic:Program", ptr %t227, i32 0, i32 2
  %t230 = load { i64, ptr }, ptr %l12, !tbaa !27
  store { i64, ptr } %t230, ptr %l135, !tbaa !27
  %t231 = load i64, ptr %l19, !tbaa !24
  %t233 = getelementptr { i64, ptr }, ptr %l135, i32 0, i32 1
  %t234 = load ptr, ptr %t233, !tbaa !27
  %t235 = getelementptr i32, ptr %t234, i64 %t231
  %t236 = load i32, ptr %t235, !tbaa !33
  %t239 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsRef(ptr %v0, ptr %t229, i32 %t236)
  store i1 %t239, ptr %l138
  br label %bb50
bb50:
  %t240 = load i1, ptr %l138, !tbaa !21
  %t241 = xor i1 %t240, true
  store i1 %t241, ptr %l132, !tbaa !21
  br label %bb51
bb51:
  %t243 = load i1, ptr %l132, !tbaa !21
  br i1 %t243, label %bb52, label %bb53
bb52:
  store i1 true, ptr %l140, !tbaa !21
  br label %bb55
bb53:
  %t244 = load ptr, ptr %l0, !tbaa !29
  %t246 = getelementptr %"compiler/generic:Program", ptr %t244, i32 0, i32 2
  %t247 = load { i64, ptr }, ptr %l12, !tbaa !27
  store { i64, ptr } %t247, ptr %l143, !tbaa !27
  %t248 = load i64, ptr %l19, !tbaa !24
  %t250 = getelementptr { i64, ptr }, ptr %l143, i32 0, i32 1
  %t251 = load ptr, ptr %t250, !tbaa !27
  %t252 = getelementptr i32, ptr %t251, i64 %t248
  %t253 = load i32, ptr %t252, !tbaa !33
  %t256 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePermOf(ptr %v0, ptr %t246, i32 %t253)
  store i64 %t256, ptr %l146
  br label %bb54
bb54:
  %t257 = load i64, ptr @G_2ecompiler_2ftypes_2eWritable, !tbaa !24
  %t258 = load i64, ptr %l146, !tbaa !24
  %t260 = and i64 %t258, %t257
  %t262 = icmp eq i64 %t260, 0
  store i1 %t262, ptr %l140, !tbaa !21
  br label %bb55
bb55:
  %t264 = load i1, ptr %l140, !tbaa !21
  br i1 %t264, label %bb56, label %bb57
bb56:
  call void @__olang_scope_close(ptr %s8)
  br label %bb64
bb57:
  br label %bb58
bb58:
  %t265 = load ptr, ptr %l2, !tbaa !29
  %t267 = getelementptr %"compiler/ast:Sig", ptr %t265, i32 0, i32 0
  %t268 = load { i64, ptr }, ptr %t267, !tbaa !27
  store { i64, ptr } %t268, ptr %l151, !tbaa !27
  %t269 = load i64, ptr %l20, !tbaa !24
  %t271 = getelementptr { i64, ptr }, ptr %l151, i32 0, i32 1
  %t272 = load ptr, ptr %t271, !tbaa !27
  %t273 = getelementptr ptr, ptr %t272, i64 %t269
  %t274 = load ptr, ptr %t273, !tbaa !39
  store ptr %t274, ptr %l21, !tbaa !29
  %t276 = load ptr, ptr %l0, !tbaa !29
  %t278 = getelementptr %"compiler/generic:Program", ptr %t276, i32 0, i32 0
  %t279 = load ptr, ptr %t278, !tbaa !29
  %t281 = getelementptr %"compiler/load:Loader", ptr %t279, i32 0, i32 4
  %t282 = load ptr, ptr %t281, !tbaa !29
  store ptr %t282, ptr %l156, !tbaa !29
  %t283 = load ptr, ptr %l0, !tbaa !29
  %t284 = load ptr, ptr %l1, !tbaa !29
  %t286 = getelementptr %"compiler/generic:Context", ptr %t284, i32 0, i32 0
  %t287 = load i64, ptr %t286, !tbaa !24
  %t288 = load ptr, ptr %l21, !tbaa !29
  %t290 = getelementptr %"compiler/ast:Param", ptr %t288, i32 0, i32 0
  %t291 = load %"compiler/source:Span", ptr %t290
  %t295 = call { i64, [3 x i64] } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eat(ptr %v0, ptr %t283, i64 %t287, %"compiler/source:Span" %t291)
  store { i64, [3 x i64] } %t295, ptr %l162
  br label %bb59
bb59:
  %t296 = load ptr, ptr %l0, !tbaa !29
  %t297 = load ptr, ptr %l21, !tbaa !29
  %t299 = getelementptr %"compiler/ast:Param", ptr %t297, i32 0, i32 1
  %t300 = load i32, ptr %t299, !tbaa !23
  %t303 = call { i64, ptr } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2etext(ptr %v0, ptr %v0, ptr %t296, i32 %t300)
  store { i64, ptr } %t303, ptr %l166
  br label %bb60
bb60:
  %t304 = load { i64, ptr }, ptr %l166, !tbaa !27
  %t305 = call { i64, ptr } @compiler_2fmsgs_2eTok(ptr %v0, ptr %s8, { i64, ptr } %t304)
  store { i64, ptr } %t305, ptr %l167
  br label %bb61
bb61:
  %t306 = load { i64, ptr }, ptr %l167, !tbaa !27
  %t307 = extractvalue { i64, ptr } %t306, 0
  %t308 = extractvalue { i64, ptr } %t306, 1
  %t309 = mul i64 %t307, 1
  %t310 = call ptr @__olang_scope_alloc(ptr %s8, i64 %t309)
  call void @llvm.memcpy.p0.p0.i64(ptr %t310, ptr %t308, i64 %t309, i1 false)
  %t311 = insertvalue { i64, ptr } undef, i64 %t307, 0
  %t312 = insertvalue { i64, ptr } %t311, ptr %t310, 1
  %t314 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eFlagWithOutParam(ptr %s8, ptr %v0, { i64, ptr } %t312)
  store %"compiler/diagmsg:Msg" %t314, ptr %l169
  br label %bb62
bb62:
  %t315 = load ptr, ptr %l156, !tbaa !29
  %t316 = load { i64, [3 x i64] }, ptr %l162
  %t317 = load %"compiler/diagmsg:Msg", ptr %l169
  %t318 = call i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eErrorOncePerLine(ptr %v0, ptr %v0, ptr %t315, { i64, [3 x i64] } %t316, %"compiler/diagmsg:Msg" %t317)
  store i64 %t318, ptr %l170
  br label %bb63
bb63:
  call void @__olang_scope_close(ptr %s8)
  br label %bb64
bb64:
  %t319 = load i64, ptr %l18, !tbaa !24
  %t321 = add i64 %t319, 1
  store i64 %t321, ptr %l18, !tbaa !24
  br label %bb44
bb65:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local %"compiler/generic:folded" @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2efoldGlobal(ptr %v0, ptr %a0, i64 %a1, i32 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca i32
  %l3 = alloca ptr
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca i64
  %l12 = alloca %"compiler/generic:Context"
  %l13 = alloca %"compiler/generic:folded"
  %l14 = alloca i32
  %l18 = alloca ptr
  %l21 = alloca %"compiler/generic:folded"
  %l27 = alloca i1
  %l31 = alloca i1
  %l32 = alloca i32
  %l33 = alloca %"compiler/generic:folded"
  %l40 = alloca i64
  %l43 = alloca i64
  %l62 = alloca { i64, ptr }
  %l75 = alloca %"compiler/generic:folded"
  %l80 = alloca %"compiler/generic:Context"
  %l84 = alloca { i64, ptr }
  %l87 = alloca %"compiler/generic:folded"
  %l94 = alloca i1
  %l104 = alloca i32
  %l107 = alloca i1
  %l108 = alloca %"compiler/generic:folded"
  %l109 = alloca i64
  %l113 = alloca i64
  %l115 = alloca %"compiler/generic:folded"
  %s0 = alloca %olang.scope
  %rv = alloca %"compiler/generic:folded"
  %t134 = alloca %"compiler/generic:Context", align 8
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
  %t3 = load i32, ptr %l2, !tbaa !23
  %t7 = call ptr @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eglobalDecl(ptr %v0, ptr %v0, ptr %t1, i64 %t2, i32 %t3)
  store ptr %t7, ptr %l18
  br label %bb1
bb1:
  %t8 = load ptr, ptr %l18, !tbaa !29
  store ptr %t8, ptr %l3, !tbaa !29
  %t9 = load ptr, ptr %l3, !tbaa !29
  %t11 = icmp eq ptr %t9, null
  br i1 %t11, label %bb2, label %bb3
bb2:
  %t13 = call %"compiler/generic:folded" @compiler_2fgeneric_2efolded_2eunfolded()
  store %"compiler/generic:folded" %t13, ptr %l21
  br label %bb4
bb3:
  br label %bb5
bb4:
  call void @__olang_scope_close(ptr %s0)
  %t14 = load %"compiler/generic:folded", ptr %l21
  store %"compiler/generic:folded" %t14, ptr %rv
  br label %ret
bb5:
  %t15 = load i64, ptr %l1, !tbaa !24
  %t17 = shl i64 %t15, 32
  %t18 = load i32, ptr %l2, !tbaa !23
  %t20 = sext i32 %t18 to i64
  %t23 = or i64 %t17, %t20
  store i64 %t23, ptr %l4, !tbaa !24
  %t25 = load ptr, ptr %l0, !tbaa !29
  %t27 = getelementptr %"compiler/generic:Program", ptr %t25, i32 0, i32 49
  %t28 = load i64, ptr %l4, !tbaa !24
  %t31 = call { i32, i1 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2eGet_3cI64_2c_20Bool_3e(ptr %v0, ptr %t27, i64 %t28)
  %t32 = extractvalue { i32, i1 } %t31, 1
  %t33 = extractvalue { i32, i1 } %t31, 0
  store i32 %t33, ptr %l32
  %t34 = icmp ne i32 %t33, 0
  br i1 %t34, label %bb7, label %ok.35, !prof !99
ok.35:
  store i1 %t32, ptr %l31
  br label %bb6
bb6:
  %t36 = load i1, ptr %l31, !tbaa !21
  store i1 %t36, ptr %l27, !tbaa !21
  br label %bb9
bb7:
  br label %bb8
bb8:
  store i1 false, ptr %l27, !tbaa !21
  br label %bb9
bb9:
  %t37 = load i1, ptr %l27, !tbaa !21
  br i1 %t37, label %bb10, label %bb11
bb10:
  %t38 = call %"compiler/generic:folded" @compiler_2fgeneric_2efolded_2eunfolded()
  store %"compiler/generic:folded" %t38, ptr %l33
  br label %bb12
bb11:
  br label %bb13
bb12:
  call void @__olang_scope_close(ptr %s0)
  %t39 = load %"compiler/generic:folded", ptr %l33
  store %"compiler/generic:folded" %t39, ptr %rv
  br label %ret
bb13:
  store i64 0, ptr %l5, !tbaa !24
  store i64 0, ptr %l6, !tbaa !24
  %t40 = load ptr, ptr %l3, !tbaa !29
  %t42 = getelementptr %"compiler/ast:VarDecl", ptr %t40, i32 0, i32 0
  %t43 = load { i64, ptr }, ptr %t42, !tbaa !27
  %t45 = extractvalue { i64, ptr } %t43, 0
  store i64 %t45, ptr %l7, !tbaa !24
  store i64 1, ptr %l8, !tbaa !24
  %t47 = load i64, ptr %l7, !tbaa !24
  %t48 = load i64, ptr %l6, !tbaa !24
  %t51 = icmp sgt i64 %t47, %t48
  br i1 %t51, label %bb14, label %bb15
bb14:
  %t53 = load i64, ptr %l8, !tbaa !24
  %t55 = icmp sgt i64 %t53, 0
  br i1 %t55, label %bb16, label %bb17
bb15:
  store i64 0, ptr %l40, !tbaa !24
  br label %bb19
bb16:
  %t57 = load i64, ptr %l7, !tbaa !24
  %t58 = load i64, ptr %l6, !tbaa !24
  %t61 = sub i64 %t57, %t58
  %t62 = load i64, ptr %l8, !tbaa !24
  %t65 = add i64 %t61, %t62
  %t67 = sub i64 %t65, 1
  %t68 = load i64, ptr %l8, !tbaa !24
  %t71 = sdiv i64 %t67, %t68
  store i64 %t71, ptr %l43, !tbaa !24
  br label %bb18
bb17:
  store i64 0, ptr %l43, !tbaa !24
  br label %bb18
bb18:
  %t73 = load i64, ptr %l43, !tbaa !24
  store i64 %t73, ptr %l40, !tbaa !24
  br label %bb19
bb19:
  %t74 = load i64, ptr %l40, !tbaa !24
  store i64 %t74, ptr %l9, !tbaa !24
  store i64 0, ptr %l10, !tbaa !24
  br label %bb20
bb20:
  %t75 = load i64, ptr %l10, !tbaa !24
  %t76 = load i64, ptr %l9, !tbaa !24
  %t79 = icmp slt i64 %t75, %t76
  %t81 = xor i1 %t79, true
  br i1 %t81, label %bb21, label %bb22
bb21:
  br label %bb28
bb22:
  br label %bb23
bb23:
  %t83 = load i64, ptr %l6, !tbaa !24
  %t84 = load i64, ptr %l10, !tbaa !24
  %t85 = load i64, ptr %l8, !tbaa !24
  %t88 = mul i64 %t84, %t85
  %t91 = add i64 %t83, %t88
  store i64 %t91, ptr %l11, !tbaa !24
  %t93 = load ptr, ptr %l3, !tbaa !29
  %t95 = getelementptr %"compiler/ast:VarDecl", ptr %t93, i32 0, i32 0
  %t96 = load { i64, ptr }, ptr %t95, !tbaa !27
  store { i64, ptr } %t96, ptr %l62, !tbaa !27
  %t97 = load i64, ptr %l11, !tbaa !24
  %t99 = getelementptr { i64, ptr }, ptr %l62, i32 0, i32 1
  %t100 = load ptr, ptr %t99, !tbaa !27
  %t101 = getelementptr i32, ptr %t100, i64 %t97
  %t102 = load i32, ptr %t101, !tbaa !33
  %t103 = load i32, ptr %l2, !tbaa !23
  %t106 = icmp eq i32 %t102, %t103
  br i1 %t106, label %bb24, label %bb25
bb24:
  %t108 = load i64, ptr %l11, !tbaa !24
  store i64 %t108, ptr %l5, !tbaa !24
  br label %bb26
bb25:
  br label %bb26
bb26:
  br label %bb27
bb27:
  %t110 = load i64, ptr %l10, !tbaa !24
  %t112 = add i64 %t110, 1
  store i64 %t112, ptr %l10, !tbaa !24
  br label %bb20
bb28:
  %t114 = load i64, ptr %l5, !tbaa !24
  %t115 = load ptr, ptr %l3, !tbaa !29
  %t117 = getelementptr %"compiler/ast:VarDecl", ptr %t115, i32 0, i32 3
  %t118 = load { i64, ptr }, ptr %t117, !tbaa !27
  %t120 = extractvalue { i64, ptr } %t118, 0
  %t123 = icmp sge i64 %t114, %t120
  br i1 %t123, label %bb29, label %bb30
bb29:
  %t125 = call %"compiler/generic:folded" @compiler_2fgeneric_2efolded_2eunfolded()
  store %"compiler/generic:folded" %t125, ptr %l75
  br label %bb31
bb30:
  br label %bb32
bb31:
  call void @__olang_scope_close(ptr %s0)
  %t126 = load %"compiler/generic:folded", ptr %l75
  store %"compiler/generic:folded" %t126, ptr %rv
  br label %ret
bb32:
  %t127 = load ptr, ptr %l0, !tbaa !29
  %t129 = getelementptr %"compiler/generic:Program", ptr %t127, i32 0, i32 49
  %t130 = load i64, ptr %l4, !tbaa !24
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2ePut_3cI64_2c_20Bool_3e(ptr %v0, ptr %t129, i64 %t130, i1 true)
  br label %bb33
bb33:
  %t133 = load i64, ptr %l1, !tbaa !24
  call void @compiler_2fgeneric_3aContext_2ector(ptr %t134, ptr %s0, i64 %t133, i64 -1)
  call void @llvm.memmove.p0.p0.i64(ptr %l80, ptr %t134, i64 160, i1 false)
  br label %bb34
bb34:
  call void @llvm.memmove.p0.p0.i64(ptr %l12, ptr %l80, i64 160, i1 false)
  %t136 = load ptr, ptr %l0, !tbaa !29
  %t137 = load ptr, ptr %l3, !tbaa !29
  %t139 = getelementptr %"compiler/ast:VarDecl", ptr %t137, i32 0, i32 3
  %t140 = load { i64, ptr }, ptr %t139, !tbaa !27
  store { i64, ptr } %t140, ptr %l84, !tbaa !27
  %t141 = load i64, ptr %l5, !tbaa !24
  %t143 = getelementptr { i64, ptr }, ptr %l84, i32 0, i32 1
  %t144 = load ptr, ptr %t143, !tbaa !27
  %t145 = getelementptr ptr, ptr %t144, i64 %t141
  %t146 = load ptr, ptr %t145, !tbaa !39
  %t150 = call %"compiler/generic:folded" @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eeval(ptr %v0, ptr %s0, ptr %v0, ptr %t136, ptr %l12, ptr %t146)
  store %"compiler/generic:folded" %t150, ptr %l87
  br label %bb35
bb35:
  %t151 = load %"compiler/generic:folded", ptr %l87
  store %"compiler/generic:folded" %t151, ptr %l13
  %t152 = load ptr, ptr %l0, !tbaa !29
  %t154 = getelementptr %"compiler/generic:Program", ptr %t152, i32 0, i32 49
  %t155 = load i64, ptr %l4, !tbaa !24
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2ePut_3cI64_2c_20Bool_3e(ptr %v0, ptr %t154, i64 %t155, i1 false)
  br label %bb36
bb36:
  %t158 = getelementptr %"compiler/generic:folded", ptr %l13, i32 0, i32 0
  %t159 = load i64, ptr %t158, !tbaa !24
  %t160 = load i64, ptr @G_2ecompiler_2fgeneric_2eFolded, !tbaa !24
  %t163 = icmp ne i64 %t159, %t160
  br i1 %t163, label %bb37, label %bb38
bb37:
  store i1 true, ptr %l94, !tbaa !21
  br label %bb39
bb38:
  %t165 = load ptr, ptr %l3, !tbaa !29
  %t167 = getelementptr %"compiler/ast:VarDecl", ptr %t165, i32 0, i32 2
  %t168 = load ptr, ptr %t167, !tbaa !29
  %t170 = icmp eq ptr %t168, null
  store i1 %t170, ptr %l94, !tbaa !21
  br label %bb39
bb39:
  %t172 = load i1, ptr %l94, !tbaa !21
  br i1 %t172, label %bb40, label %bb41
bb40:
  %t173 = load %"compiler/generic:folded", ptr %l13
  call void @__olang_scope_close(ptr %s0)
  store %"compiler/generic:folded" %t173, ptr %rv
  br label %ret
bb41:
  br label %bb42
bb42:
  %t175 = load ptr, ptr %l0, !tbaa !29
  %t176 = load ptr, ptr %l3, !tbaa !29
  %t178 = getelementptr %"compiler/ast:VarDecl", ptr %t176, i32 0, i32 2
  %t179 = load ptr, ptr %t178, !tbaa !29
  %t184 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eResolve(ptr %v0, ptr %s0, ptr %v0, ptr %t175, ptr %l12, ptr %t179)
  store i32 %t184, ptr %l104
  br label %bb43
bb43:
  %t185 = load i32, ptr %l104, !tbaa !23
  store i32 %t185, ptr %l14, !tbaa !23
  %t186 = load ptr, ptr %l0, !tbaa !29
  %t187 = load i32, ptr %l14, !tbaa !23
  %t190 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2ewide(ptr %v0, ptr %t186, i32 %t187)
  store i1 %t190, ptr %l107
  br label %bb44
bb44:
  %t191 = load i1, ptr %l107, !tbaa !21
  br i1 %t191, label %bb45, label %bb46
bb45:
  %t192 = call %"compiler/generic:folded" @compiler_2fgeneric_2efolded_2eunfolded()
  store %"compiler/generic:folded" %t192, ptr %l108
  br label %bb47
bb46:
  br label %bb48
bb47:
  call void @__olang_scope_close(ptr %s0)
  %t193 = load %"compiler/generic:folded", ptr %l108
  store %"compiler/generic:folded" %t193, ptr %rv
  br label %ret
bb48:
  %t194 = load i64, ptr @G_2ecompiler_2fgeneric_2eFolded, !tbaa !24
  store i64 %t194, ptr %l109, !tbaa !24
  %t195 = load ptr, ptr %l0, !tbaa !29
  %t196 = getelementptr %"compiler/generic:folded", ptr %l13, i32 0, i32 1
  %t197 = load i64, ptr %t196, !tbaa !24
  %t198 = load i32, ptr %l14, !tbaa !23
  %t202 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2ewrap(ptr %v0, ptr %t195, i64 %t197, i32 %t198)
  store i64 %t202, ptr %l113
  br label %bb49
bb49:
  %t203 = load i32, ptr %l14, !tbaa !23
  %t204 = load i64, ptr %l109, !tbaa !24
  %t205 = load i64, ptr %l113, !tbaa !24
  %t207 = call %"compiler/generic:folded" @compiler_2fgeneric_3afolded_2ector(ptr %s0, i64 %t204, i64 %t205, i32 %t203)
  store %"compiler/generic:folded" %t207, ptr %l115
  br label %bb50
bb50:
  call void @__olang_scope_close(ptr %s0)
  %t208 = load %"compiler/generic:folded", ptr %l115
  store %"compiler/generic:folded" %t208, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/generic:folded", ptr %rv
  ret %"compiler/generic:folded" %rr
}

define dso_local %"compiler/generic:folded" @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2efoldPath(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, %"compiler/source:Span" %a2, { i64, ptr } %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca %"compiler/source:Span"
  %l3 = alloca { i64, ptr }
  %l4 = alloca i32
  %l5 = alloca i64
  %l6 = alloca %"compiler/names:Ref"
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca i64
  %l16 = alloca i32
  %l19 = alloca { i64, ptr }
  %l21 = alloca i32
  %l22 = alloca i32
  %l28 = alloca i32
  %l31 = alloca i64
  %l35 = alloca i64
  %l39 = alloca i32
  %l40 = alloca %"compiler/generic:folded"
  %l43 = alloca %"compiler/generic:folded"
  %l50 = alloca ptr
  %l54 = alloca i64
  %l56 = alloca %"compiler/names:Ref"
  %l60 = alloca %"compiler/generic:folded"
  %l68 = alloca i64
  %l71 = alloca i64
  %l91 = alloca { i64, ptr }
  %l94 = alloca i64
  %l97 = alloca %"compiler/generic:folded"
  %l102 = alloca { i64, ptr }
  %l107 = alloca %"compiler/generic:folded"
  %s2 = alloca %olang.scope
  %s3 = alloca %olang.scope
  %rv = alloca %"compiler/generic:folded"
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store %"compiler/source:Span" %a2, ptr %l2
  store { i64, ptr } %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t3 = extractvalue { i64, ptr } %t1, 0
  %t5 = icmp eq i64 %t3, 1
  br i1 %t5, label %bb1, label %bb2
bb1:
  %t7 = load ptr, ptr %l1, !tbaa !29
  %t9 = getelementptr %"compiler/generic:Context", ptr %t7, i32 0, i32 2
  %t10 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t10, ptr %l19, !tbaa !27
  %t11 = getelementptr { i64, ptr }, ptr %l19, i32 0, i32 1
  %t12 = load ptr, ptr %t11, !tbaa !27
  %t13 = getelementptr i32, ptr %t12, i64 0
  %t14 = load i32, ptr %t13, !tbaa !33
  %t17 = call { i32, i32 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fsource_3aNameId_2c_20compil_Hfd0413fe7fd4e5914f6cad5b418b7a6d(ptr %v1, ptr %t9, i32 %t14)
  %t18 = extractvalue { i32, i32 } %t17, 1
  %t19 = extractvalue { i32, i32 } %t17, 0
  store i32 %t19, ptr %l22
  %t20 = icmp ne i32 %t19, 0
  br i1 %t20, label %bb4, label %ok.21, !prof !99
ok.21:
  store i32 %t18, ptr %l21
  br label %bb3
bb2:
  br label %bb18
bb3:
  %t22 = load i32, ptr %l21, !tbaa !23
  store i32 %t22, ptr %l16, !tbaa !23
  br label %bb6
bb4:
  br label %bb5
bb5:
  store i32 -1, ptr %l16, !tbaa !23
  br label %bb6
bb6:
  %t23 = load i32, ptr %l16, !tbaa !23
  store i32 %t23, ptr %l4, !tbaa !23
  %t24 = load i32, ptr %l4, !tbaa !23
  %t26 = icmp sge i32 %t24, 0
  br i1 %t26, label %bb7, label %bb8
bb7:
  store %olang.scope zeroinitializer, ptr %s2
  %t28 = load ptr, ptr %l0, !tbaa !29
  %t30 = getelementptr %"compiler/generic:Program", ptr %t28, i32 0, i32 2
  %t31 = load i32, ptr %l4, !tbaa !23
  %t34 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t30, i32 %t31)
  store i32 %t34, ptr %l28
  br label %bb9
bb8:
  br label %bb17
bb9:
  %t35 = load i32, ptr %l28, !range !{i32 0, i32 33}
  %t37 = trunc i64 26 to i32
  %t38 = icmp eq i32 %t35, %t37
  br i1 %t38, label %bb10, label %bb11
bb10:
  store %olang.scope zeroinitializer, ptr %s3
  %t40 = load i64, ptr @G_2ecompiler_2fgeneric_2eFolded, !tbaa !24
  store i64 %t40, ptr %l31, !tbaa !24
  %t41 = load ptr, ptr %l0, !tbaa !29
  %t43 = getelementptr %"compiler/generic:Program", ptr %t41, i32 0, i32 2
  %t44 = load i32, ptr %l4, !tbaa !23
  %t47 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eConstValue(ptr %v0, ptr %t43, i32 %t44)
  store i64 %t47, ptr %l35
  br label %bb12
bb11:
  br label %bb15
bb12:
  %t48 = load ptr, ptr %l0, !tbaa !29
  %t50 = getelementptr %"compiler/generic:Program", ptr %t48, i32 0, i32 2
  %t51 = load i32, ptr %l4, !tbaa !23
  %t54 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eConstType(ptr %v0, ptr %t50, i32 %t51)
  store i32 %t54, ptr %l39
  br label %bb13
bb13:
  %t55 = load i64, ptr %l31, !tbaa !24
  %t56 = load i64, ptr %l35, !tbaa !24
  %t57 = load i32, ptr %l39, !tbaa !23
  %t58 = call %"compiler/generic:folded" @compiler_2fgeneric_3afolded_2ector(ptr %s3, i64 %t55, i64 %t56, i32 %t57)
  store %"compiler/generic:folded" %t58, ptr %l40
  br label %bb14
bb14:
  call void @__olang_scope_close(ptr %s3)
  call void @__olang_scope_close(ptr %s2)
  %t59 = load %"compiler/generic:folded", ptr %l40
  store %"compiler/generic:folded" %t59, ptr %rv
  br label %ret
bb15:
  %t60 = load i64, ptr @G_2ecompiler_2fgeneric_2ePending, !tbaa !24
  %t61 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t64 = call %"compiler/generic:folded" @compiler_2fgeneric_3afolded_2ector(ptr %s2, i64 %t60, i64 0, i32 %t61)
  store %"compiler/generic:folded" %t64, ptr %l43
  br label %bb16
bb16:
  call void @__olang_scope_close(ptr %s2)
  %t65 = load %"compiler/generic:folded", ptr %l43
  store %"compiler/generic:folded" %t65, ptr %rv
  br label %ret
bb17:
  br label %bb18
bb18:
  %t66 = load ptr, ptr %l1, !tbaa !29
  %t68 = getelementptr %"compiler/generic:Context", ptr %t66, i32 0, i32 0
  %t69 = load i64, ptr %t68, !tbaa !24
  store i64 %t69, ptr %l5, !tbaa !24
  %t71 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t73 = extractvalue { i64, ptr } %t71, 0
  %t75 = icmp sgt i64 %t73, 1
  br i1 %t75, label %bb19, label %bb20
bb19:
  %t77 = load ptr, ptr %l0, !tbaa !29
  %t79 = getelementptr %"compiler/generic:Program", ptr %t77, i32 0, i32 1
  %t80 = load ptr, ptr %t79, !tbaa !29
  store ptr %t80, ptr %l50, !tbaa !29
  %t81 = load ptr, ptr %l0, !tbaa !29
  %t82 = load ptr, ptr %l1, !tbaa !29
  %t84 = getelementptr %"compiler/generic:Context", ptr %t82, i32 0, i32 0
  %t85 = load i64, ptr %t84, !tbaa !24
  %t88 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2efile(ptr %v0, ptr %t81, i64 %t85)
  store i64 %t88, ptr %l54
  br label %bb21
bb20:
  br label %bb44
bb21:
  %t89 = getelementptr %"compiler/source:Span", ptr %l2, i32 0, i32 0
  %t90 = load i32, ptr %t89, !tbaa !23
  %t91 = load ptr, ptr %l50, !tbaa !29
  %t92 = load i64, ptr %l54, !tbaa !24
  %t94 = call %"compiler/names:Ref" @compiler_2fnames_2ecompiler_2fnames_3aResolver_2eUse(ptr %v0, ptr %t91, i64 %t92, i32 %t90)
  store %"compiler/names:Ref" %t94, ptr %l56
  br label %bb22
bb22:
  %t95 = load %"compiler/names:Ref", ptr %l56
  store %"compiler/names:Ref" %t95, ptr %l6
  %t96 = getelementptr %"compiler/names:Ref", ptr %l6, i32 0, i32 0
  %t97 = load i32, ptr %t96, !range !{i32 0, i32 9}
  %t99 = trunc i64 5 to i32
  %t100 = icmp eq i32 %t97, %t99
  %t102 = xor i1 %t100, true
  br i1 %t102, label %bb23, label %bb24
bb23:
  %t104 = call %"compiler/generic:folded" @compiler_2fgeneric_2efolded_2eunfolded()
  store %"compiler/generic:folded" %t104, ptr %l60
  br label %bb25
bb24:
  br label %bb26
bb25:
  %t105 = load %"compiler/generic:folded", ptr %l60
  store %"compiler/generic:folded" %t105, ptr %rv
  br label %ret
bb26:
  %t106 = getelementptr %"compiler/names:Ref", ptr %l6, i32 0, i32 1
  %t107 = load i64, ptr %t106, !tbaa !24
  store i64 %t107, ptr %l5, !tbaa !24
  store i64 1, ptr %l7, !tbaa !24
  %t109 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t111 = extractvalue { i64, ptr } %t109, 0
  %t113 = sub i64 %t111, 1
  store i64 %t113, ptr %l8, !tbaa !24
  store i64 1, ptr %l9, !tbaa !24
  %t115 = load i64, ptr %l8, !tbaa !24
  %t116 = load i64, ptr %l7, !tbaa !24
  %t119 = icmp sgt i64 %t115, %t116
  br i1 %t119, label %bb27, label %bb28
bb27:
  %t121 = load i64, ptr %l9, !tbaa !24
  %t123 = icmp sgt i64 %t121, 0
  br i1 %t123, label %bb29, label %bb30
bb28:
  store i64 0, ptr %l68, !tbaa !24
  br label %bb32
bb29:
  %t125 = load i64, ptr %l8, !tbaa !24
  %t126 = load i64, ptr %l7, !tbaa !24
  %t129 = sub i64 %t125, %t126
  %t130 = load i64, ptr %l9, !tbaa !24
  %t133 = add i64 %t129, %t130
  %t135 = sub i64 %t133, 1
  %t136 = load i64, ptr %l9, !tbaa !24
  %t139 = sdiv i64 %t135, %t136
  store i64 %t139, ptr %l71, !tbaa !24
  br label %bb31
bb30:
  store i64 0, ptr %l71, !tbaa !24
  br label %bb31
bb31:
  %t141 = load i64, ptr %l71, !tbaa !24
  store i64 %t141, ptr %l68, !tbaa !24
  br label %bb32
bb32:
  %t142 = load i64, ptr %l68, !tbaa !24
  store i64 %t142, ptr %l10, !tbaa !24
  store i64 0, ptr %l11, !tbaa !24
  br label %bb33
bb33:
  %t143 = load i64, ptr %l11, !tbaa !24
  %t144 = load i64, ptr %l10, !tbaa !24
  %t147 = icmp slt i64 %t143, %t144
  %t149 = xor i1 %t147, true
  br i1 %t149, label %bb34, label %bb35
bb34:
  br label %bb43
bb35:
  br label %bb36
bb36:
  %t151 = load i64, ptr %l7, !tbaa !24
  %t152 = load i64, ptr %l11, !tbaa !24
  %t153 = load i64, ptr %l9, !tbaa !24
  %t156 = mul i64 %t152, %t153
  %t159 = add i64 %t151, %t156
  %t161 = load ptr, ptr %l0, !tbaa !29
  %t162 = load i64, ptr %l5, !tbaa !24
  %t163 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t163, ptr %l91, !tbaa !27
  %t166 = getelementptr { i64, ptr }, ptr %l91, i32 0, i32 1
  %t167 = load ptr, ptr %t166, !tbaa !27
  %t168 = getelementptr i32, ptr %t167, i64 %t159
  %t169 = load i32, ptr %t168, !tbaa !33
  %t173 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2ealiasStep(ptr %v0, ptr %t161, i64 %t162, i32 %t169)
  store i64 %t173, ptr %l94
  br label %bb37
bb37:
  %t174 = load i64, ptr %l94, !tbaa !24
  store i64 %t174, ptr %l5, !tbaa !24
  %t175 = load i64, ptr %l5, !tbaa !24
  %t177 = icmp slt i64 %t175, 0
  br i1 %t177, label %bb38, label %bb39
bb38:
  %t179 = call %"compiler/generic:folded" @compiler_2fgeneric_2efolded_2eunfolded()
  store %"compiler/generic:folded" %t179, ptr %l97
  br label %bb40
bb39:
  br label %bb41
bb40:
  %t180 = load %"compiler/generic:folded", ptr %l97
  store %"compiler/generic:folded" %t180, ptr %rv
  br label %ret
bb41:
  br label %bb42
bb42:
  %t181 = load i64, ptr %l11, !tbaa !24
  %t183 = add i64 %t181, 1
  store i64 %t183, ptr %l11, !tbaa !24
  br label %bb33
bb43:
  br label %bb44
bb44:
  %t185 = load ptr, ptr %l0, !tbaa !29
  %t186 = load i64, ptr %l5, !tbaa !24
  %t187 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t187, ptr %l102, !tbaa !27
  %t188 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t190 = extractvalue { i64, ptr } %t188, 0
  %t192 = sub i64 %t190, 1
  %t194 = getelementptr { i64, ptr }, ptr %l102, i32 0, i32 1
  %t195 = load ptr, ptr %t194, !tbaa !27
  %t196 = getelementptr i32, ptr %t195, i64 %t192
  %t197 = load i32, ptr %t196, !tbaa !33
  %t201 = call %"compiler/generic:folded" @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2efoldGlobal(ptr %v0, ptr %t185, i64 %t186, i32 %t197)
  store %"compiler/generic:folded" %t201, ptr %l107
  br label %bb45
bb45:
  %t202 = load %"compiler/generic:folded", ptr %l107
  store %"compiler/generic:folded" %t202, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/generic:folded", ptr %rv
  ret %"compiler/generic:folded" %rr
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
  %t19 = call { i32, i32 } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFindDecl(ptr %v0, ptr %s0, ptr %s0, ptr %t17, { i64, ptr } { i64 20, ptr getelementptr inbounds (<{ i64, [20 x i8] }>, ptr @.d21, i32 0, i32 1) }, { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d22, i32 0, i32 1) })
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
  %t44 = call { i32, i32 } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFindDecl(ptr %v0, ptr %s0, ptr %s0, ptr %t42, { i64, ptr } { i64 20, ptr getelementptr inbounds (<{ i64, [20 x i8] }>, ptr @.d23, i32 0, i32 1) }, { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d24, i32 0, i32 1) })
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

define dso_local ptr @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eglobalIn(ptr %v0, ptr %v1, ptr %v2, ptr %a0, i64 %a1, { i64, ptr } %a2, i32 %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca { i64, ptr }
  %l3 = alloca i32
  %l4 = alloca { i64, ptr }
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca ptr
  %l8 = alloca ptr
  %l9 = alloca ptr
  %l10 = alloca ptr
  %l22 = alloca { i64, ptr }
  %l25 = alloca ptr
  %l26 = alloca i1
  %l34 = alloca i1
  %l37 = alloca ptr
  %l38 = alloca i1
  %l43 = alloca ptr
  %l44 = alloca i64
  %l45 = alloca ptr
  %l47 = alloca ptr
  %l48 = alloca i64
  %l54 = alloca %"compiler/source:Span"
  %l56 = alloca i64
  %l58 = alloca ptr
  %rv = alloca ptr
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  store { i64, ptr } %a2, ptr %l2
  store i32 %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t3 = extractvalue { i64, ptr } %t1, 0
  %t5 = icmp eq i64 %t3, 0
  br i1 %t5, label %bb1, label %bb2
bb1:
  store ptr null, ptr %rv
  br label %ret
bb2:
  br label %bb3
bb3:
  %t8 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t8, ptr %l4, !tbaa !27
  store i64 0, ptr %l5, !tbaa !24
  %t10 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t12 = extractvalue { i64, ptr } %t10, 0
  store i64 %t12, ptr %l6, !tbaa !24
  br label %bb4
bb4:
  %t14 = load i64, ptr %l5, !tbaa !24
  %t15 = load i64, ptr %l6, !tbaa !24
  %t18 = icmp slt i64 %t14, %t15
  %t20 = xor i1 %t18, true
  br i1 %t20, label %bb5, label %bb6
bb5:
  br label %bb39
bb6:
  br label %bb7
bb7:
  %t22 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t22, ptr %l22, !tbaa !27
  %t23 = load i64, ptr %l5, !tbaa !24
  %t25 = getelementptr { i64, ptr }, ptr %l22, i32 0, i32 1
  %t26 = load ptr, ptr %t25, !tbaa !27
  %t27 = getelementptr ptr, ptr %t26, i64 %t23
  %t28 = load ptr, ptr %t27, !tbaa !39
  store ptr %t28, ptr %l7, !tbaa !29
  %t30 = load ptr, ptr %l7, !tbaa !29
  store ptr %t30, ptr %l25, !tbaa !29
  store i1 false, ptr %l26, !tbaa !21
  %t31 = load ptr, ptr %l25, !tbaa !29
  %t32 = icmp ne ptr %t31, null
  br i1 %t32, label %bb8, label %bb9
bb8:
  %t34 = load ptr, ptr %l25, !tbaa !29
  %t35 = load i64, ptr %t34, !range !{i64 0, i64 11}
  %t37 = icmp eq i64 %t35, 3
  store i1 %t37, ptr %l26, !tbaa !21
  br label %bb9
bb9:
  %t38 = load i1, ptr %l26, !tbaa !21
  br i1 %t38, label %bb10, label %bb11
bb10:
  %t39 = load ptr, ptr %l7, !tbaa !29
  %t41 = getelementptr { i64, [8 x i64] }, ptr %t39, i32 0, i32 1
  %t42 = getelementptr { %"compiler/source:Span", ptr }, ptr %t41, i32 0, i32 1
  %t43 = load ptr, ptr %t42
  store ptr %t43, ptr %l8, !tbaa !29
  br label %bb12
bb11:
  br label %bb17
bb12:
  %t45 = load ptr, ptr %l8, !tbaa !29
  %t47 = getelementptr %"compiler/ast:VarDecl", ptr %t45, i32 0, i32 0
  %t48 = load { i64, ptr }, ptr %t47, !tbaa !27
  %t49 = load i32, ptr %l3, !tbaa !23
  %t52 = call i1 @std_2fprelude_2farray_2eArray_3ccompiler_2fsource_3aNameId_3e_2eHas_3ccompiler_2fsource_3aNameId_3e(ptr %v1, { i64, ptr } %t48, i32 %t49)
  store i1 %t52, ptr %l34
  br label %bb13
bb13:
  %t53 = load i1, ptr %l34, !tbaa !21
  br i1 %t53, label %bb14, label %bb15
bb14:
  %t54 = load ptr, ptr %l8, !tbaa !29
  store ptr %t54, ptr %rv
  br label %ret
bb15:
  br label %bb16
bb16:
  br label %bb37
bb17:
  %t57 = load ptr, ptr %l7, !tbaa !29
  store ptr %t57, ptr %l37, !tbaa !29
  store i1 false, ptr %l38, !tbaa !21
  %t58 = load ptr, ptr %l37, !tbaa !29
  %t59 = icmp ne ptr %t58, null
  br i1 %t59, label %bb18, label %bb19
bb18:
  %t61 = load ptr, ptr %l37, !tbaa !29
  %t62 = load i64, ptr %t61, !range !{i64 0, i64 11}
  %t64 = icmp eq i64 %t62, 7
  store i1 %t64, ptr %l38, !tbaa !21
  br label %bb19
bb19:
  %t65 = load i1, ptr %l38, !tbaa !21
  br i1 %t65, label %bb20, label %bb21
bb20:
  %t66 = load ptr, ptr %l7, !tbaa !29
  %t68 = getelementptr { i64, [8 x i64] }, ptr %t66, i32 0, i32 1
  %t69 = getelementptr { %"compiler/source:Span", ptr }, ptr %t68, i32 0, i32 1
  %t70 = load ptr, ptr %t69
  store ptr %t70, ptr %l9, !tbaa !29
  br label %bb22
bb21:
  br label %bb32
bb22:
  %t72 = load ptr, ptr %l0, !tbaa !29
  store ptr %t72, ptr %l43, !tbaa !29
  %t73 = load i64, ptr %l1, !tbaa !24
  store i64 %t73, ptr %l44, !tbaa !24
  %t74 = load ptr, ptr %l9, !tbaa !29
  store ptr %t74, ptr %l45, !tbaa !29
  %t75 = load ptr, ptr %l0, !tbaa !29
  %t77 = getelementptr %"compiler/generic:Program", ptr %t75, i32 0, i32 0
  %t78 = load ptr, ptr %t77, !tbaa !29
  store ptr %t78, ptr %l47, !tbaa !29
  %t79 = load i64, ptr %l1, !tbaa !24
  store i64 %t79, ptr %l48, !tbaa !24
  %t80 = load ptr, ptr %l9, !tbaa !29
  %t82 = getelementptr %"compiler/ast:TopIf", ptr %t80, i32 0, i32 0
  %t83 = load ptr, ptr %t82, !tbaa !29
  %t85 = icmp eq ptr %t83, null
  br i1 %t85, label %bb23, label %bb24
bb23:
  call void @__olang_check_failed(ptr @olang_loc_7d389628c92035eb_c8010a4fd10bb547)
  unreachable
bb24:
  br label %bb25
bb25:
  %t87 = load ptr, ptr %l9, !tbaa !29
  %t89 = getelementptr %"compiler/ast:TopIf", ptr %t87, i32 0, i32 0
  %t90 = load ptr, ptr %t89, !tbaa !29
  %t92 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v1, ptr %t90)
  store %"compiler/source:Span" %t92, ptr %l54
  br label %bb26
bb26:
  %t93 = getelementptr %"compiler/source:Span", ptr %l54, i32 0, i32 0
  %t94 = load i32, ptr %t93, !tbaa !23
  %t95 = load ptr, ptr %l47, !tbaa !29
  %t96 = load i64, ptr %l48, !tbaa !24
  %t98 = call i64 @compiler_2fload_2ecompiler_2fload_3aLoader_2eChosen(ptr %v0, ptr %t95, i64 %t96, i32 %t94)
  store i64 %t98, ptr %l56
  br label %bb27
bb27:
  %t99 = load i32, ptr %l3, !tbaa !23
  %t100 = load ptr, ptr %l43, !tbaa !29
  %t101 = load i64, ptr %l44, !tbaa !24
  %t102 = load ptr, ptr %l45, !tbaa !29
  %t103 = load i64, ptr %l56, !tbaa !24
  %t105 = call ptr @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eglobalInIf(ptr %v0, ptr %v1, ptr %v2, ptr %t100, i64 %t101, ptr %t102, i64 %t103, i64 0, i32 %t99)
  store ptr %t105, ptr %l58
  br label %bb28
bb28:
  %t106 = load ptr, ptr %l58, !tbaa !29
  store ptr %t106, ptr %l10, !tbaa !29
  %t107 = load ptr, ptr %l10, !tbaa !29
  %t109 = icmp eq ptr %t107, null
  %t111 = xor i1 %t109, true
  br i1 %t111, label %bb29, label %bb30
bb29:
  %t113 = load ptr, ptr %l10, !tbaa !29
  store ptr %t113, ptr %rv
  br label %ret
bb30:
  br label %bb31
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
  call void @__olang_check_failed(ptr @olang_loc_a7facd254843b013_ee8f88ceeae7df5f)
  unreachable
bb37:
  br label %bb38
bb38:
  %t116 = load i64, ptr %l5, !tbaa !24
  %t118 = add i64 %t116, 1
  store i64 %t118, ptr %l5, !tbaa !24
  br label %bb4
bb39:
  store ptr null, ptr %rv
  br label %ret
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

define dso_local i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2ehasHash(ptr %v0, ptr %a0, i32 %a1, i64 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca i64
  %l3 = alloca i32
  %l4 = alloca i32
  %l5 = alloca i32
  %l6 = alloca i64
  %l7 = alloca i32
  %l14 = alloca i32
  %l17 = alloca i1
  %l20 = alloca i1
  %l30 = alloca i32
  %l36 = alloca i32
  %l40 = alloca i32
  %l43 = alloca ptr
  %l47 = alloca i32
  %l50 = alloca i1
  %l54 = alloca i32
  %l57 = alloca i1
  %l60 = alloca i1
  %l61 = alloca i1
  %l63 = alloca ptr
  %l67 = alloca i32
  %l68 = alloca i32
  %l71 = alloca i1
  %l73 = alloca ptr
  %l77 = alloca i32
  %l78 = alloca i32
  %l81 = alloca i1
  %l84 = alloca i1
  %l86 = alloca i1
  %l90 = alloca i64
  %l92 = alloca ptr
  %l94 = alloca ptr
  %l98 = alloca i32
  %l99 = alloca i32
  %l102 = alloca i1
  %l105 = alloca i1
  %l106 = alloca i1
  %l110 = alloca i64
  %l112 = alloca i1
  %l113 = alloca ptr
  %l114 = alloca i32
  %l118 = alloca i64
  %l119 = alloca i1
  %l123 = alloca i64
  %l129 = alloca i1
  %l135 = alloca i1
  %l136 = alloca i1
  %l139 = alloca i1
  %l143 = alloca i1
  %l144 = alloca i1
  %l145 = alloca ptr
  %l146 = alloca i32
  %l150 = alloca i32
  %l151 = alloca i1
  %l158 = alloca ptr
  %l162 = alloca i32
  %l165 = alloca i1
  %l170 = alloca ptr
  %l174 = alloca i32
  %l176 = alloca i1
  %l179 = alloca ptr
  %l183 = alloca i32
  %l185 = alloca i1
  %l190 = alloca i1
  %l194 = alloca ptr
  %l198 = alloca i32
  %l199 = alloca i32
  %l202 = alloca ptr
  %l206 = alloca i32
  %l208 = alloca i1
  %l211 = alloca ptr
  %l215 = alloca i32
  %l217 = alloca i1
  %l220 = alloca i1
  %l222 = alloca ptr
  %l226 = alloca i32
  %l227 = alloca i32
  %l230 = alloca ptr
  %l234 = alloca i32
  %l237 = alloca i1
  %s0 = alloca %olang.scope
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  store i64 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load i64, ptr %l2, !tbaa !24
  %t3 = icmp sgt i64 %t1, 16
  br i1 %t3, label %bb1, label %bb2
bb1:
  call void @__olang_scope_close(ptr %s0)
  store i1 true, ptr %rv
  br label %ret
bb2:
  br label %bb3
bb3:
  %t6 = load ptr, ptr %l0, !tbaa !29
  %t8 = getelementptr %"compiler/generic:Program", ptr %t6, i32 0, i32 2
  %t9 = load i32, ptr %l1, !tbaa !23
  %t12 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t8, i32 %t9)
  store i32 %t12, ptr %l14
  br label %bb4
bb4:
  %t13 = load i32, ptr %l14, !range !{i32 0, i32 33}
  store i32 %t13, ptr %l3
  %t14 = load i32, ptr %l3, !range !{i32 0, i32 33}
  %t16 = trunc i64 0 to i32
  %t17 = icmp eq i32 %t14, %t16
  br i1 %t17, label %bb5, label %bb6
bb5:
  store i1 true, ptr %l17, !tbaa !21
  br label %bb7
bb6:
  %t19 = load i32, ptr %l3, !range !{i32 0, i32 33}
  %t21 = trunc i64 25 to i32
  %t22 = icmp eq i32 %t19, %t21
  store i1 %t22, ptr %l17, !tbaa !21
  br label %bb7
bb7:
  %t24 = load i1, ptr %l17, !tbaa !21
  br i1 %t24, label %bb8, label %bb9
bb8:
  store i1 true, ptr %l20, !tbaa !21
  br label %bb10
bb9:
  %t25 = load i32, ptr %l3, !range !{i32 0, i32 33}
  %t27 = trunc i64 27 to i32
  %t28 = icmp eq i32 %t25, %t27
  store i1 %t28, ptr %l20, !tbaa !21
  br label %bb10
bb10:
  %t30 = load i1, ptr %l20, !tbaa !21
  br i1 %t30, label %bb11, label %bb12
bb11:
  call void @__olang_scope_close(ptr %s0)
  store i1 true, ptr %rv
  br label %ret
bb12:
  br label %bb13
bb13:
  %t32 = load i32, ptr %l3, !range !{i32 0, i32 33}
  %t34 = trunc i64 32 to i32
  %t35 = icmp eq i32 %t32, %t34
  br i1 %t35, label %bb14, label %bb15
bb14:
  call void @__olang_scope_close(ptr %s0)
  store i1 true, ptr %rv
  br label %ret
bb15:
  br label %bb16
bb16:
  %t38 = load ptr, ptr %l0, !tbaa !29
  %t40 = getelementptr %"compiler/generic:Program", ptr %t38, i32 0, i32 0
  %t41 = load ptr, ptr %t40, !tbaa !29
  %t43 = getelementptr %"compiler/load:Loader", ptr %t41, i32 0, i32 3
  %t44 = load ptr, ptr %t43, !tbaa !29
  %t46 = call i32 @compiler_2fsource_2ecompiler_2fsource_3aNames_2eIntern(ptr %v0, ptr %s0, ptr %t44, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d25, i32 0, i32 1) })
  store i32 %t46, ptr %l30
  br label %bb17
bb17:
  %t47 = load i32, ptr %l30, !tbaa !23
  store i32 %t47, ptr %l4, !tbaa !23
  %t48 = load i32, ptr %l3, !range !{i32 0, i32 33}
  %t50 = trunc i64 20 to i32
  %t51 = icmp eq i32 %t48, %t50
  br i1 %t51, label %bb18, label %bb19
bb18:
  %t53 = load ptr, ptr %l0, !tbaa !29
  %t55 = getelementptr %"compiler/generic:Program", ptr %t53, i32 0, i32 2
  %t56 = load i32, ptr %l1, !tbaa !23
  %t59 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eReferent(ptr %v0, ptr %t55, i32 %t56)
  store i32 %t59, ptr %l36
  br label %bb20
bb19:
  br label %bb66
bb20:
  %t60 = load i32, ptr %l36, !tbaa !23
  store i32 %t60, ptr %l5, !tbaa !23
  %t61 = load ptr, ptr %l0, !tbaa !29
  %t63 = getelementptr %"compiler/generic:Program", ptr %t61, i32 0, i32 2
  %t64 = load i32, ptr %l5, !tbaa !23
  %t67 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t63, i32 %t64)
  store i32 %t67, ptr %l40
  br label %bb21
bb21:
  %t68 = load i32, ptr %l40, !range !{i32 0, i32 33}
  %t70 = trunc i64 19 to i32
  %t71 = icmp eq i32 %t68, %t70
  br i1 %t71, label %bb22, label %bb23
bb22:
  %t73 = load ptr, ptr %l0, !tbaa !29
  store ptr %t73, ptr %l43, !tbaa !29
  %t74 = load ptr, ptr %l0, !tbaa !29
  %t76 = getelementptr %"compiler/generic:Program", ptr %t74, i32 0, i32 2
  %t77 = load i32, ptr %l5, !tbaa !23
  %t80 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eElem(ptr %v0, ptr %t76, i32 %t77)
  store i32 %t80, ptr %l47
  br label %bb24
bb23:
  br label %bb26
bb24:
  %t81 = load i64, ptr %l2, !tbaa !24
  %t83 = add i64 %t81, 1
  %t84 = load ptr, ptr %l43, !tbaa !29
  %t85 = load i32, ptr %l47, !tbaa !23
  %t87 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2ehasHash(ptr %v0, ptr %t84, i32 %t85, i64 %t83)
  store i1 %t87, ptr %l50
  br label %bb25
bb25:
  call void @__olang_scope_close(ptr %s0)
  %t88 = load i1, ptr %l50, !tbaa !21
  store i1 %t88, ptr %rv
  br label %ret
bb26:
  %t89 = load ptr, ptr %l0, !tbaa !29
  %t91 = getelementptr %"compiler/generic:Program", ptr %t89, i32 0, i32 2
  %t92 = load i32, ptr %l5, !tbaa !23
  %t95 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t91, i32 %t92)
  store i32 %t95, ptr %l54
  br label %bb27
bb27:
  %t96 = load i32, ptr %l54, !range !{i32 0, i32 33}
  %t98 = trunc i64 18 to i32
  %t99 = icmp eq i32 %t96, %t98
  br i1 %t99, label %bb28, label %bb29
bb28:
  %t101 = load ptr, ptr %l0, !tbaa !29
  %t102 = load i32, ptr %l5, !tbaa !23
  %t105 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eBody(ptr %v0, ptr %t101, i32 %t102)
  store i1 %t105, ptr %l60
  br label %bb30
bb29:
  store i1 false, ptr %l57, !tbaa !21
  br label %bb31
bb30:
  %t106 = load i1, ptr %l60, !tbaa !21
  store i1 %t106, ptr %l57, !tbaa !21
  br label %bb31
bb31:
  %t107 = load i1, ptr %l57, !tbaa !21
  br i1 %t107, label %bb32, label %bb33
bb32:
  %t108 = load ptr, ptr %l0, !tbaa !29
  %t110 = getelementptr %"compiler/generic:Program", ptr %t108, i32 0, i32 2
  store ptr %t110, ptr %l63, !tbaa !29
  %t111 = load ptr, ptr %l0, !tbaa !29
  %t113 = getelementptr %"compiler/generic:Program", ptr %t111, i32 0, i32 2
  %t114 = load i32, ptr %l5, !tbaa !23
  %t117 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %t113, i32 %t114)
  store i32 %t117, ptr %l67
  br label %bb34
bb33:
  store i1 false, ptr %l61, !tbaa !21
  br label %bb36
bb34:
  %t118 = load ptr, ptr %l63, !tbaa !29
  %t119 = load i32, ptr %l67, !tbaa !23
  %t120 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclKindOf(ptr %v0, ptr %t118, i32 %t119)
  store i32 %t120, ptr %l68
  br label %bb35
bb35:
  %t121 = load i32, ptr %l68, !range !{i32 0, i32 6}
  %t123 = trunc i64 4 to i32
  %t124 = icmp eq i32 %t121, %t123
  store i1 %t124, ptr %l61, !tbaa !21
  br label %bb36
bb36:
  %t126 = load i1, ptr %l61, !tbaa !21
  br i1 %t126, label %bb37, label %bb38
bb37:
  %t127 = load ptr, ptr %l0, !tbaa !29
  %t129 = getelementptr %"compiler/generic:Program", ptr %t127, i32 0, i32 2
  store ptr %t129, ptr %l73, !tbaa !29
  %t130 = load ptr, ptr %l0, !tbaa !29
  %t132 = getelementptr %"compiler/generic:Program", ptr %t130, i32 0, i32 2
  %t133 = load i32, ptr %l5, !tbaa !23
  %t136 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eBase(ptr %v0, ptr %t132, i32 %t133)
  store i32 %t136, ptr %l77
  br label %bb39
bb38:
  store i1 false, ptr %l71, !tbaa !21
  br label %bb41
bb39:
  %t137 = load ptr, ptr %l73, !tbaa !29
  %t138 = load i32, ptr %l77, !tbaa !23
  %t139 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t137, i32 %t138)
  store i32 %t139, ptr %l78
  br label %bb40
bb40:
  %t140 = load i32, ptr %l78, !range !{i32 0, i32 33}
  %t142 = trunc i64 19 to i32
  %t143 = icmp eq i32 %t140, %t142
  store i1 %t143, ptr %l71, !tbaa !21
  br label %bb41
bb41:
  %t145 = load i1, ptr %l71, !tbaa !21
  br i1 %t145, label %bb42, label %bb43
bb42:
  %t146 = load ptr, ptr %l0, !tbaa !29
  %t147 = load i32, ptr %l5, !tbaa !23
  %t150 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2edeclaresEq(ptr %v0, ptr %t146, i32 %t147)
  store i1 %t150, ptr %l84
  br label %bb44
bb43:
  store i1 false, ptr %l81, !tbaa !21
  br label %bb45
bb44:
  %t151 = load i1, ptr %l84, !tbaa !21
  %t152 = xor i1 %t151, true
  store i1 %t152, ptr %l81, !tbaa !21
  br label %bb45
bb45:
  %t154 = load i1, ptr %l81, !tbaa !21
  br i1 %t154, label %bb46, label %bb47
bb46:
  %t155 = load ptr, ptr %l0, !tbaa !29
  %t156 = load i32, ptr %l5, !tbaa !23
  %t157 = load i32, ptr %l4, !tbaa !23
  %t161 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eMethodOf(ptr %v0, ptr %t155, i32 %t156, i32 %t157)
  store i64 %t161, ptr %l90
  br label %bb48
bb47:
  store i1 false, ptr %l86, !tbaa !21
  br label %bb49
bb48:
  %t162 = load i64, ptr %l90, !tbaa !24
  %t163 = icmp slt i64 %t162, 0
  store i1 %t163, ptr %l86, !tbaa !21
  br label %bb49
bb49:
  %t165 = load i1, ptr %l86, !tbaa !21
  br i1 %t165, label %bb50, label %bb51
bb50:
  %t166 = load ptr, ptr %l0, !tbaa !29
  store ptr %t166, ptr %l92, !tbaa !29
  %t167 = load ptr, ptr %l0, !tbaa !29
  %t169 = getelementptr %"compiler/generic:Program", ptr %t167, i32 0, i32 2
  store ptr %t169, ptr %l94, !tbaa !29
  %t170 = load ptr, ptr %l0, !tbaa !29
  %t172 = getelementptr %"compiler/generic:Program", ptr %t170, i32 0, i32 2
  %t173 = load i32, ptr %l5, !tbaa !23
  %t176 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eBase(ptr %v0, ptr %t172, i32 %t173)
  store i32 %t176, ptr %l98
  br label %bb52
bb51:
  br label %bb55
bb52:
  %t177 = load ptr, ptr %l94, !tbaa !29
  %t178 = load i32, ptr %l98, !tbaa !23
  %t179 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eElem(ptr %v0, ptr %t177, i32 %t178)
  store i32 %t179, ptr %l99
  br label %bb53
bb53:
  %t180 = load i64, ptr %l2, !tbaa !24
  %t182 = add i64 %t180, 1
  %t183 = load ptr, ptr %l92, !tbaa !29
  %t184 = load i32, ptr %l99, !tbaa !23
  %t186 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2ehasHash(ptr %v0, ptr %t183, i32 %t184, i64 %t182)
  store i1 %t186, ptr %l102
  br label %bb54
bb54:
  call void @__olang_scope_close(ptr %s0)
  %t187 = load i1, ptr %l102, !tbaa !21
  store i1 %t187, ptr %rv
  br label %ret
bb55:
  %t188 = load ptr, ptr %l0, !tbaa !29
  %t189 = load i32, ptr %l5, !tbaa !23
  %t192 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2edeclaresEq(ptr %v0, ptr %t188, i32 %t189)
  store i1 %t192, ptr %l105
  br label %bb56
bb56:
  %t193 = load i1, ptr %l105, !tbaa !21
  br i1 %t193, label %bb57, label %bb58
bb57:
  %t194 = load ptr, ptr %l0, !tbaa !29
  %t195 = load i32, ptr %l5, !tbaa !23
  %t196 = load i32, ptr %l4, !tbaa !23
  %t200 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eMethodOf(ptr %v0, ptr %t194, i32 %t195, i32 %t196)
  store i64 %t200, ptr %l110
  br label %bb59
bb58:
  store i1 false, ptr %l106, !tbaa !21
  br label %bb60
bb59:
  %t201 = load i64, ptr %l110, !tbaa !24
  %t202 = icmp sge i64 %t201, 0
  store i1 %t202, ptr %l106, !tbaa !21
  br label %bb60
bb60:
  %t204 = load i1, ptr %l106, !tbaa !21
  br i1 %t204, label %bb61, label %bb62
bb61:
  %t205 = load ptr, ptr %l0, !tbaa !29
  store ptr %t205, ptr %l113, !tbaa !29
  %t206 = load i32, ptr %l5, !tbaa !23
  store i32 %t206, ptr %l114, !tbaa !23
  %t207 = load ptr, ptr %l0, !tbaa !29
  %t208 = load i32, ptr %l5, !tbaa !23
  %t209 = load i32, ptr %l4, !tbaa !23
  %t213 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eMethodOf(ptr %v0, ptr %t207, i32 %t208, i32 %t209)
  store i64 %t213, ptr %l118
  br label %bb63
bb62:
  store i1 false, ptr %l112, !tbaa !21
  br label %bb65
bb63:
  %t214 = load ptr, ptr %l113, !tbaa !29
  %t215 = load i32, ptr %l114, !tbaa !23
  %t216 = load i64, ptr %l118, !tbaa !24
  %t217 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2ehashShaped(ptr %v0, ptr %t214, i32 %t215, i64 %t216)
  store i1 %t217, ptr %l119
  br label %bb64
bb64:
  %t218 = load i1, ptr %l119, !tbaa !21
  store i1 %t218, ptr %l112, !tbaa !21
  br label %bb65
bb65:
  call void @__olang_scope_close(ptr %s0)
  %t219 = load i1, ptr %l112, !tbaa !21
  store i1 %t219, ptr %rv
  br label %ret
bb66:
  %t220 = load ptr, ptr %l0, !tbaa !29
  %t221 = load i32, ptr %l1, !tbaa !23
  %t222 = load i32, ptr %l4, !tbaa !23
  %t226 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eMethodOf(ptr %v0, ptr %t220, i32 %t221, i32 %t222)
  store i64 %t226, ptr %l123
  br label %bb67
bb67:
  %t227 = load i64, ptr %l123, !tbaa !24
  store i64 %t227, ptr %l6, !tbaa !24
  %t228 = load i64, ptr %l6, !tbaa !24
  %t230 = icmp sge i64 %t228, 0
  br i1 %t230, label %bb68, label %bb69
bb68:
  %t232 = load ptr, ptr %l0, !tbaa !29
  %t233 = load i32, ptr %l1, !tbaa !23
  %t234 = load i64, ptr %l6, !tbaa !24
  %t238 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2ehashShaped(ptr %v0, ptr %t232, i32 %t233, i64 %t234)
  store i1 %t238, ptr %l129
  br label %bb70
bb69:
  br label %bb79
bb70:
  %t239 = load i1, ptr %l129, !tbaa !21
  %t240 = xor i1 %t239, true
  br i1 %t240, label %bb71, label %bb72
bb71:
  call void @__olang_scope_close(ptr %s0)
  store i1 false, ptr %rv
  br label %ret
bb72:
  br label %bb73
bb73:
  %t243 = load ptr, ptr %l0, !tbaa !29
  %t244 = load i32, ptr %l1, !tbaa !23
  %t245 = load i32, ptr %l4, !tbaa !23
  %t249 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eownMethod(ptr %v0, ptr %t243, i32 %t244, i32 %t245)
  store i1 %t249, ptr %l135
  br label %bb74
bb74:
  %t250 = load i1, ptr %l135, !tbaa !21
  br i1 %t250, label %bb75, label %bb76
bb75:
  store i1 true, ptr %l136, !tbaa !21
  br label %bb78
bb76:
  %t251 = load ptr, ptr %l0, !tbaa !29
  %t252 = load i32, ptr %l1, !tbaa !23
  %t255 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2edeclaresEq(ptr %v0, ptr %t251, i32 %t252)
  store i1 %t255, ptr %l139
  br label %bb77
bb77:
  %t256 = load i1, ptr %l139, !tbaa !21
  %t257 = xor i1 %t256, true
  store i1 %t257, ptr %l136, !tbaa !21
  br label %bb78
bb78:
  call void @__olang_scope_close(ptr %s0)
  %t259 = load i1, ptr %l136, !tbaa !21
  store i1 %t259, ptr %rv
  br label %ret
bb79:
  %t260 = load ptr, ptr %l0, !tbaa !29
  %t261 = load i32, ptr %l1, !tbaa !23
  %t264 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2edeclaresEq(ptr %v0, ptr %t260, i32 %t261)
  store i1 %t264, ptr %l143
  br label %bb80
bb80:
  %t265 = load i1, ptr %l143, !tbaa !21
  br i1 %t265, label %bb81, label %bb82
bb81:
  store i1 true, ptr %l144, !tbaa !21
  br label %bb85
bb82:
  %t266 = load ptr, ptr %l0, !tbaa !29
  store ptr %t266, ptr %l145, !tbaa !29
  %t267 = load i32, ptr %l1, !tbaa !23
  store i32 %t267, ptr %l146, !tbaa !23
  %t268 = load ptr, ptr %l0, !tbaa !29
  %t270 = getelementptr %"compiler/generic:Program", ptr %t268, i32 0, i32 0
  %t271 = load ptr, ptr %t270, !tbaa !29
  %t273 = getelementptr %"compiler/load:Loader", ptr %t271, i32 0, i32 3
  %t274 = load ptr, ptr %t273, !tbaa !29
  %t276 = call i32 @compiler_2fsource_2ecompiler_2fsource_3aNames_2eIntern(ptr %v0, ptr %s0, ptr %t274, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d26, i32 0, i32 1) })
  store i32 %t276, ptr %l150
  br label %bb83
bb83:
  %t277 = load ptr, ptr %l145, !tbaa !29
  %t278 = load i32, ptr %l146, !tbaa !23
  %t279 = load i32, ptr %l150, !tbaa !23
  %t280 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eownMethod(ptr %v0, ptr %t277, i32 %t278, i32 %t279)
  store i1 %t280, ptr %l151
  br label %bb84
bb84:
  %t281 = load i1, ptr %l151, !tbaa !21
  store i1 %t281, ptr %l144, !tbaa !21
  br label %bb85
bb85:
  %t282 = load i1, ptr %l144, !tbaa !21
  br i1 %t282, label %bb86, label %bb87
bb86:
  call void @__olang_scope_close(ptr %s0)
  store i1 false, ptr %rv
  br label %ret
bb87:
  br label %bb88
bb88:
  %t284 = load i32, ptr %l3, !range !{i32 0, i32 33}
  %t286 = trunc i64 31 to i32
  %t287 = icmp eq i32 %t284, %t286
  br i1 %t287, label %bb89, label %bb90
bb89:
  call void @__olang_scope_close(ptr %s0)
  store i1 true, ptr %rv
  br label %ret
bb90:
  br label %bb91
bb91:
  %t290 = load i32, ptr %l3, !range !{i32 0, i32 33}
  %t292 = trunc i64 19 to i32
  %t293 = icmp eq i32 %t290, %t292
  br i1 %t293, label %bb92, label %bb93
bb92:
  br label %bb94
bb93:
  br label %bb97
bb94:
  %t295 = load ptr, ptr %l0, !tbaa !29
  store ptr %t295, ptr %l158, !tbaa !29
  %t296 = load ptr, ptr %l0, !tbaa !29
  %t298 = getelementptr %"compiler/generic:Program", ptr %t296, i32 0, i32 2
  %t299 = load i32, ptr %l1, !tbaa !23
  %t302 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eElem(ptr %v0, ptr %t298, i32 %t299)
  store i32 %t302, ptr %l162
  br label %bb95
bb95:
  %t303 = load i64, ptr %l2, !tbaa !24
  %t305 = add i64 %t303, 1
  %t306 = load ptr, ptr %l158, !tbaa !29
  %t307 = load i32, ptr %l162, !tbaa !23
  %t309 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2ehasHash(ptr %v0, ptr %t306, i32 %t307, i64 %t305)
  store i1 %t309, ptr %l165
  br label %bb96
bb96:
  call void @__olang_scope_close(ptr %s0)
  %t310 = load i1, ptr %l165, !tbaa !21
  store i1 %t310, ptr %rv
  br label %ret
bb97:
  %t311 = load i32, ptr %l3, !range !{i32 0, i32 33}
  %t313 = trunc i64 22 to i32
  %t314 = icmp eq i32 %t311, %t313
  br i1 %t314, label %bb98, label %bb99
bb98:
  br label %bb102
bb99:
  %t316 = load i32, ptr %l3, !range !{i32 0, i32 33}
  %t318 = trunc i64 23 to i32
  %t319 = icmp eq i32 %t316, %t318
  br i1 %t319, label %bb100, label %bb101
bb100:
  br label %bb102
bb101:
  br label %bb105
bb102:
  %t321 = load ptr, ptr %l0, !tbaa !29
  store ptr %t321, ptr %l170, !tbaa !29
  %t322 = load ptr, ptr %l0, !tbaa !29
  %t324 = getelementptr %"compiler/generic:Program", ptr %t322, i32 0, i32 2
  %t325 = load i32, ptr %l1, !tbaa !23
  %t328 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParts(ptr %v0, ptr %t324, i32 %t325)
  store i32 %t328, ptr %l174
  br label %bb103
bb103:
  %t329 = load i64, ptr %l2, !tbaa !24
  %t330 = load ptr, ptr %l170, !tbaa !29
  %t331 = load i32, ptr %l174, !tbaa !23
  %t333 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2ehashesAll(ptr %v0, ptr %t330, i32 %t331, i64 %t329)
  store i1 %t333, ptr %l176
  br label %bb104
bb104:
  call void @__olang_scope_close(ptr %s0)
  %t334 = load i1, ptr %l176, !tbaa !21
  store i1 %t334, ptr %rv
  br label %ret
bb105:
  %t335 = load i32, ptr %l3, !range !{i32 0, i32 33}
  %t337 = trunc i64 24 to i32
  %t338 = icmp eq i32 %t335, %t337
  br i1 %t338, label %bb106, label %bb107
bb106:
  br label %bb108
bb107:
  br label %bb111
bb108:
  %t340 = load ptr, ptr %l0, !tbaa !29
  store ptr %t340, ptr %l179, !tbaa !29
  %t341 = load ptr, ptr %l0, !tbaa !29
  %t343 = getelementptr %"compiler/generic:Program", ptr %t341, i32 0, i32 2
  %t344 = load i32, ptr %l1, !tbaa !23
  %t347 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eShapeCases(ptr %v0, ptr %t343, i32 %t344)
  store i32 %t347, ptr %l183
  br label %bb109
bb109:
  %t348 = load i64, ptr %l2, !tbaa !24
  %t349 = load ptr, ptr %l179, !tbaa !29
  %t350 = load i32, ptr %l183, !tbaa !23
  %t352 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2ehashesAll(ptr %v0, ptr %t349, i32 %t350, i64 %t348)
  store i1 %t352, ptr %l185
  br label %bb110
bb110:
  call void @__olang_scope_close(ptr %s0)
  %t353 = load i1, ptr %l185, !tbaa !21
  store i1 %t353, ptr %rv
  br label %ret
bb111:
  %t354 = load i32, ptr %l3, !range !{i32 0, i32 33}
  %t356 = trunc i64 18 to i32
  %t357 = icmp eq i32 %t354, %t356
  br i1 %t357, label %bb112, label %bb113
bb112:
  br label %bb114
bb113:
  br label %bb141
bb114:
  %t359 = load ptr, ptr %l0, !tbaa !29
  %t360 = load i32, ptr %l1, !tbaa !23
  %t363 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eBody(ptr %v0, ptr %t359, i32 %t360)
  store i1 %t363, ptr %l190
  br label %bb115
bb115:
  %t364 = load i1, ptr %l190, !tbaa !21
  %t365 = xor i1 %t364, true
  br i1 %t365, label %bb116, label %bb117
bb116:
  call void @__olang_scope_close(ptr %s0)
  store i1 true, ptr %rv
  br label %ret
bb117:
  br label %bb118
bb118:
  %t368 = load ptr, ptr %l0, !tbaa !29
  %t370 = getelementptr %"compiler/generic:Program", ptr %t368, i32 0, i32 2
  store ptr %t370, ptr %l194, !tbaa !29
  %t371 = load ptr, ptr %l0, !tbaa !29
  %t373 = getelementptr %"compiler/generic:Program", ptr %t371, i32 0, i32 2
  %t374 = load i32, ptr %l1, !tbaa !23
  %t377 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %t373, i32 %t374)
  store i32 %t377, ptr %l198
  br label %bb119
bb119:
  %t378 = load ptr, ptr %l194, !tbaa !29
  %t379 = load i32, ptr %l198, !tbaa !23
  %t380 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclKindOf(ptr %v0, ptr %t378, i32 %t379)
  store i32 %t380, ptr %l199
  br label %bb120
bb120:
  %t381 = load i32, ptr %l199, !range !{i32 0, i32 6}
  store i32 %t381, ptr %l7
  %t382 = load i32, ptr %l7, !range !{i32 0, i32 6}
  %t384 = trunc i64 0 to i32
  %t385 = icmp eq i32 %t382, %t384
  br i1 %t385, label %bb121, label %bb122
bb121:
  %t387 = load ptr, ptr %l0, !tbaa !29
  store ptr %t387, ptr %l202, !tbaa !29
  %t388 = load ptr, ptr %l0, !tbaa !29
  %t390 = getelementptr %"compiler/generic:Program", ptr %t388, i32 0, i32 2
  %t391 = load i32, ptr %l1, !tbaa !23
  %t394 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eFields(ptr %v0, ptr %t390, i32 %t391)
  store i32 %t394, ptr %l206
  br label %bb123
bb122:
  br label %bb125
bb123:
  %t395 = load i64, ptr %l2, !tbaa !24
  %t396 = load ptr, ptr %l202, !tbaa !29
  %t397 = load i32, ptr %l206, !tbaa !23
  %t399 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2ehashesAll(ptr %v0, ptr %t396, i32 %t397, i64 %t395)
  store i1 %t399, ptr %l208
  br label %bb124
bb124:
  call void @__olang_scope_close(ptr %s0)
  %t400 = load i1, ptr %l208, !tbaa !21
  store i1 %t400, ptr %rv
  br label %ret
bb125:
  %t401 = load i32, ptr %l7, !range !{i32 0, i32 6}
  %t403 = trunc i64 1 to i32
  %t404 = icmp eq i32 %t401, %t403
  br i1 %t404, label %bb126, label %bb127
bb126:
  %t406 = load ptr, ptr %l0, !tbaa !29
  store ptr %t406, ptr %l211, !tbaa !29
  %t407 = load ptr, ptr %l0, !tbaa !29
  %t409 = getelementptr %"compiler/generic:Program", ptr %t407, i32 0, i32 2
  %t410 = load i32, ptr %l1, !tbaa !23
  %t413 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eCases(ptr %v0, ptr %t409, i32 %t410)
  store i32 %t413, ptr %l215
  br label %bb128
bb127:
  br label %bb130
bb128:
  %t414 = load i64, ptr %l2, !tbaa !24
  %t415 = load ptr, ptr %l211, !tbaa !29
  %t416 = load i32, ptr %l215, !tbaa !23
  %t418 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2ehashesAll(ptr %v0, ptr %t415, i32 %t416, i64 %t414)
  store i1 %t418, ptr %l217
  br label %bb129
bb129:
  call void @__olang_scope_close(ptr %s0)
  %t419 = load i1, ptr %l217, !tbaa !21
  store i1 %t419, ptr %rv
  br label %ret
bb130:
  %t420 = load i32, ptr %l7, !range !{i32 0, i32 6}
  %t422 = trunc i64 4 to i32
  %t423 = icmp eq i32 %t420, %t422
  br i1 %t423, label %bb131, label %bb132
bb131:
  %t425 = load ptr, ptr %l0, !tbaa !29
  %t427 = getelementptr %"compiler/generic:Program", ptr %t425, i32 0, i32 2
  store ptr %t427, ptr %l222, !tbaa !29
  %t428 = load ptr, ptr %l0, !tbaa !29
  %t430 = getelementptr %"compiler/generic:Program", ptr %t428, i32 0, i32 2
  %t431 = load i32, ptr %l1, !tbaa !23
  %t434 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eBase(ptr %v0, ptr %t430, i32 %t431)
  store i32 %t434, ptr %l226
  br label %bb133
bb132:
  store i1 false, ptr %l220, !tbaa !21
  br label %bb135
bb133:
  %t435 = load ptr, ptr %l222, !tbaa !29
  %t436 = load i32, ptr %l226, !tbaa !23
  %t437 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t435, i32 %t436)
  store i32 %t437, ptr %l227
  br label %bb134
bb134:
  %t438 = load i32, ptr %l227, !range !{i32 0, i32 33}
  %t440 = trunc i64 19 to i32
  %t441 = icmp eq i32 %t438, %t440
  store i1 %t441, ptr %l220, !tbaa !21
  br label %bb135
bb135:
  %t443 = load i1, ptr %l220, !tbaa !21
  br i1 %t443, label %bb136, label %bb137
bb136:
  %t444 = load ptr, ptr %l0, !tbaa !29
  store ptr %t444, ptr %l230, !tbaa !29
  %t445 = load ptr, ptr %l0, !tbaa !29
  %t447 = getelementptr %"compiler/generic:Program", ptr %t445, i32 0, i32 2
  %t448 = load i32, ptr %l1, !tbaa !23
  %t451 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eBase(ptr %v0, ptr %t447, i32 %t448)
  store i32 %t451, ptr %l234
  br label %bb138
bb137:
  br label %bb140
bb138:
  %t452 = load i64, ptr %l2, !tbaa !24
  %t454 = add i64 %t452, 1
  %t455 = load ptr, ptr %l230, !tbaa !29
  %t456 = load i32, ptr %l234, !tbaa !23
  %t458 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2ehasHash(ptr %v0, ptr %t455, i32 %t456, i64 %t454)
  store i1 %t458, ptr %l237
  br label %bb139
bb139:
  call void @__olang_scope_close(ptr %s0)
  %t459 = load i1, ptr %l237, !tbaa !21
  store i1 %t459, ptr %rv
  br label %ret
bb140:
  call void @__olang_scope_close(ptr %s0)
  store i1 false, ptr %rv
  br label %ret
bb141:
  br i1 true, label %bb142, label %bb143
bb142:
  br label %bb144
bb143:
  br label %bb145
bb144:
  call void @__olang_scope_close(ptr %s0)
  store i1 false, ptr %rv
  br label %ret
bb145:
  call void @__olang_check_failed(ptr @olang_loc_ee8d77a4a1fda3da_cc07c41aef88f656)
  unreachable
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local { i64, ptr } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2elenPath(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, i64 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i64
  %l3 = alloca i32
  %l4 = alloca ptr
  %l5 = alloca ptr
  %l6 = alloca { i64, ptr }
  %l7 = alloca { i64, ptr }
  %l10 = alloca { i64, ptr }
  %l11 = alloca { i64, ptr }
  %l12 = alloca i64
  %l13 = alloca { i64, ptr }
  %l14 = alloca ptr
  %l15 = alloca i1
  %l22 = alloca { i64, ptr }
  %l24 = alloca ptr
  %l25 = alloca i1
  %l34 = alloca { i64, ptr }
  %l35 = alloca ptr
  %l36 = alloca i1
  %l46 = alloca { i64, ptr }
  %l47 = alloca { i64, ptr }
  %l48 = alloca i64
  %l49 = alloca { i64, ptr }
  %l54 = alloca { i64, ptr }
  %l56 = alloca i1
  %l57 = alloca { i64, ptr }
  %l58 = alloca { i64, ptr }
  %l62 = alloca i64
  %l63 = alloca { i64, ptr }
  %l64 = alloca { i64, ptr }
  %l65 = alloca { i64, ptr }
  %l66 = alloca i64
  %l67 = alloca { i64, ptr }
  %s2 = alloca %olang.scope
  %s5 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store i64 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load i64, ptr %l2, !tbaa !24
  %t3 = icmp sgt i64 %t1, 8
  br i1 %t3, label %bb1, label %bb2
bb1:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d27, i32 0, i32 1) }, ptr %l10, !tbaa !27
  %t5 = load { i64, ptr }, ptr %l10, !tbaa !27
  store { i64, ptr } %t5, ptr %l11, !tbaa !27
  %t6 = load { i64, ptr }, ptr %l11, !tbaa !27
  %t7 = extractvalue { i64, ptr } %t6, 0
  store i64 %t7, ptr %l12, !tbaa !24
  %t8 = load i64, ptr %l12, !tbaa !24
  %t9 = mul i64 %t8, 1
  %t10 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t9)
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
  store { i64, ptr } %t19, ptr %l11, !tbaa !27
  %t20 = load { i64, ptr }, ptr %l11, !tbaa !27
  store { i64, ptr } %t20, ptr %rv
  br label %ret
bb2:
  br label %bb3
bb3:
  %t21 = load ptr, ptr %l1, !tbaa !29
  store ptr %t21, ptr %l14, !tbaa !29
  store i1 false, ptr %l15, !tbaa !21
  %t22 = load ptr, ptr %l14, !tbaa !29
  %t23 = icmp ne ptr %t22, null
  br i1 %t23, label %bb4, label %bb5
bb4:
  %t25 = load ptr, ptr %l14, !tbaa !29
  %t26 = load i64, ptr %t25, !range !{i64 0, i64 28}
  %t28 = icmp eq i64 %t26, 0
  store i1 %t28, ptr %l15, !tbaa !21
  br label %bb5
bb5:
  %t29 = load i1, ptr %l15, !tbaa !21
  br i1 %t29, label %bb6, label %bb7
bb6:
  %t30 = load ptr, ptr %l1, !tbaa !29
  %t32 = getelementptr { i64, [4 x i64] }, ptr %t30, i32 0, i32 1
  %t33 = getelementptr { %"compiler/source:Span", i32 }, ptr %t32, i32 0, i32 1
  %t34 = load i32, ptr %t33
  store i32 %t34, ptr %l3, !tbaa !23
  br label %bb8
bb7:
  br label %bb10
bb8:
  store %olang.scope zeroinitializer, ptr %s2
  %t36 = load ptr, ptr %l0, !tbaa !29
  %t37 = load i32, ptr %l3, !tbaa !23
  %t40 = call { i64, ptr } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2etext(ptr %v0, ptr %s2, ptr %t36, i32 %t37)
  store { i64, ptr } %t40, ptr %l22
  br label %bb9
bb9:
  %t41 = load { i64, ptr }, ptr %l22, !tbaa !27
  %t42 = extractvalue { i64, ptr } %t41, 1
  %t43 = extractvalue { i64, ptr } %t41, 0
  %t44 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t43)
  call void @olang_textcopy(ptr %t44, ptr %t42, i64 %t43)
  %t45 = insertvalue { i64, ptr } undef, i64 %t43, 0
  %t46 = insertvalue { i64, ptr } %t45, ptr %t44, 1
  call void @__olang_scope_close(ptr %s2)
  store { i64, ptr } %t46, ptr %rv
  br label %ret
bb10:
  %t48 = load ptr, ptr %l1, !tbaa !29
  store ptr %t48, ptr %l24, !tbaa !29
  store i1 false, ptr %l25, !tbaa !21
  %t49 = load ptr, ptr %l24, !tbaa !29
  %t50 = icmp ne ptr %t49, null
  br i1 %t50, label %bb11, label %bb12
bb11:
  %t52 = load ptr, ptr %l24, !tbaa !29
  %t53 = load i64, ptr %t52, !range !{i64 0, i64 28}
  %t55 = icmp eq i64 %t53, 2
  store i1 %t55, ptr %l25, !tbaa !21
  br label %bb12
bb12:
  %t56 = load i1, ptr %l25, !tbaa !21
  br i1 %t56, label %bb13, label %bb14
bb13:
  %t57 = load ptr, ptr %l1, !tbaa !29
  %t59 = getelementptr { i64, [4 x i64] }, ptr %t57, i32 0, i32 1
  %t60 = getelementptr { %"compiler/source:Span", ptr }, ptr %t59, i32 0, i32 1
  %t61 = load ptr, ptr %t60
  store ptr %t61, ptr %l4, !tbaa !29
  br label %bb15
bb14:
  br label %bb17
bb15:
  %t63 = load ptr, ptr %l0, !tbaa !29
  %t64 = load ptr, ptr %l4, !tbaa !29
  %t65 = load i64, ptr %l2, !tbaa !24
  %t67 = add i64 %t65, 1
  %t71 = call { i64, ptr } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2elenPath(ptr %v0, ptr %v1, ptr %v2, ptr %t63, ptr %t64, i64 %t67)
  store { i64, ptr } %t71, ptr %l34
  br label %bb16
bb16:
  %t72 = load { i64, ptr }, ptr %l34, !tbaa !27
  store { i64, ptr } %t72, ptr %rv
  br label %ret
bb17:
  %t73 = load ptr, ptr %l1, !tbaa !29
  store ptr %t73, ptr %l35, !tbaa !29
  store i1 false, ptr %l36, !tbaa !21
  %t74 = load ptr, ptr %l35, !tbaa !29
  %t75 = icmp ne ptr %t74, null
  br i1 %t75, label %bb18, label %bb19
bb18:
  %t77 = load ptr, ptr %l35, !tbaa !29
  %t78 = load i64, ptr %t77, !range !{i64 0, i64 28}
  %t80 = icmp eq i64 %t78, 13
  store i1 %t80, ptr %l36, !tbaa !21
  br label %bb19
bb19:
  %t81 = load i1, ptr %l36, !tbaa !21
  br i1 %t81, label %bb20, label %bb21
bb20:
  %t82 = load ptr, ptr %l1, !tbaa !29
  %t84 = getelementptr { i64, [4 x i64] }, ptr %t82, i32 0, i32 1
  %t85 = getelementptr { %"compiler/source:Span", ptr, { i64, ptr } }, ptr %t84, i32 0, i32 1
  %t86 = load ptr, ptr %t85
  store ptr %t86, ptr %l5, !tbaa !29
  %t88 = load ptr, ptr %l1, !tbaa !29
  %t90 = getelementptr { i64, [4 x i64] }, ptr %t88, i32 0, i32 1
  %t91 = getelementptr { %"compiler/source:Span", ptr, { i64, ptr } }, ptr %t90, i32 0, i32 2
  %t92 = load { i64, ptr }, ptr %t91
  store { i64, ptr } %t92, ptr %l6, !tbaa !27
  br label %bb22
bb21:
  br label %bb31
bb22:
  store %olang.scope zeroinitializer, ptr %s5
  %t94 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t96 = extractvalue { i64, ptr } %t94, 0
  %t98 = icmp ne i64 %t96, 1
  br i1 %t98, label %bb23, label %bb24
bb23:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d28, i32 0, i32 1) }, ptr %l46, !tbaa !27
  %t100 = load { i64, ptr }, ptr %l46, !tbaa !27
  store { i64, ptr } %t100, ptr %l47, !tbaa !27
  %t101 = load { i64, ptr }, ptr %l47, !tbaa !27
  %t102 = extractvalue { i64, ptr } %t101, 0
  store i64 %t102, ptr %l48, !tbaa !24
  %t103 = load i64, ptr %l48, !tbaa !24
  %t104 = mul i64 %t103, 1
  %t105 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t104)
  %t106 = insertvalue { i64, ptr } undef, i64 %t103, 0
  %t107 = insertvalue { i64, ptr } %t106, ptr %t105, 1
  store { i64, ptr } %t107, ptr %l49, !tbaa !27
  %t108 = getelementptr { i64, ptr }, ptr %l49, i32 0, i32 1
  %t109 = load ptr, ptr %t108, !tbaa !27
  %t110 = getelementptr { i64, ptr }, ptr %l47, i32 0, i32 1
  %t111 = load ptr, ptr %t110, !tbaa !27
  %t112 = load i64, ptr %l48, !tbaa !24
  %t113 = mul i64 %t112, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t109, ptr %t111, i64 %t113, i1 false)
  %t114 = load { i64, ptr }, ptr %l49, !tbaa !27
  store { i64, ptr } %t114, ptr %l47, !tbaa !27
  call void @__olang_scope_close(ptr %s5)
  %t115 = load { i64, ptr }, ptr %l47, !tbaa !27
  store { i64, ptr } %t115, ptr %rv
  br label %ret
bb24:
  br label %bb25
bb25:
  %t116 = load ptr, ptr %l0, !tbaa !29
  %t117 = load ptr, ptr %l5, !tbaa !29
  %t118 = load i64, ptr %l2, !tbaa !24
  %t120 = add i64 %t118, 1
  %t124 = call { i64, ptr } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2elenPath(ptr %v0, ptr %v1, ptr %s5, ptr %t116, ptr %t117, i64 %t120)
  store { i64, ptr } %t124, ptr %l54
  br label %bb26
bb26:
  %t125 = load { i64, ptr }, ptr %l54, !tbaa !27
  store { i64, ptr } %t125, ptr %l7, !tbaa !27
  %t126 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t128 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s5, ptr %s5, { i64, ptr } %t126, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d29, i32 0, i32 1) })
  store i1 %t128, ptr %l56
  br label %bb27
bb27:
  %t129 = load i1, ptr %l56, !tbaa !21
  br i1 %t129, label %bb28, label %bb29
bb28:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d30, i32 0, i32 1) }, ptr %l58, !tbaa !27
  %t130 = load { i64, ptr }, ptr %l58, !tbaa !27
  store { i64, ptr } %t130, ptr %l57, !tbaa !27
  br label %bb30
bb29:
  %t132 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t134 = extractvalue { i64, ptr } %t132, 1
  %t135 = extractvalue { i64, ptr } %t132, 0
  %t136 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d31, i32 0, i32 1) }, 1
  %t137 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d31, i32 0, i32 1) }, 0
  %t138 = add i64 %t135, %t137
  %t139 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t138)
  call void @olang_textcopy(ptr %t139, ptr %t134, i64 %t135)
  %t140 = getelementptr i8, ptr %t139, i64 %t135
  call void @olang_textcopy(ptr %t140, ptr %t136, i64 %t137)
  %t141 = insertvalue { i64, ptr } undef, i64 %t138, 0
  %t142 = insertvalue { i64, ptr } %t141, ptr %t139, 1
  store { i64, ptr } %t142, ptr %l57, !tbaa !27
  br label %bb30
bb30:
  %t144 = load { i64, ptr }, ptr %l57, !tbaa !27
  %t145 = extractvalue { i64, ptr } %t144, 0
  store i64 %t145, ptr %l62, !tbaa !24
  %t146 = load i64, ptr %l62, !tbaa !24
  %t147 = mul i64 %t146, 1
  %t148 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t147)
  %t149 = insertvalue { i64, ptr } undef, i64 %t146, 0
  %t150 = insertvalue { i64, ptr } %t149, ptr %t148, 1
  store { i64, ptr } %t150, ptr %l63, !tbaa !27
  %t151 = getelementptr { i64, ptr }, ptr %l63, i32 0, i32 1
  %t152 = load ptr, ptr %t151, !tbaa !27
  %t153 = getelementptr { i64, ptr }, ptr %l57, i32 0, i32 1
  %t154 = load ptr, ptr %t153, !tbaa !27
  %t155 = load i64, ptr %l62, !tbaa !24
  %t156 = mul i64 %t155, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t152, ptr %t154, i64 %t156, i1 false)
  %t157 = load { i64, ptr }, ptr %l63, !tbaa !27
  store { i64, ptr } %t157, ptr %l57, !tbaa !27
  call void @__olang_scope_close(ptr %s5)
  %t158 = load { i64, ptr }, ptr %l57, !tbaa !27
  store { i64, ptr } %t158, ptr %rv
  br label %ret
bb31:
  br i1 true, label %bb32, label %bb33
bb32:
  br label %bb34
bb33:
  br label %bb35
bb34:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d32, i32 0, i32 1) }, ptr %l64, !tbaa !27
  %t159 = load { i64, ptr }, ptr %l64, !tbaa !27
  store { i64, ptr } %t159, ptr %l65, !tbaa !27
  %t160 = load { i64, ptr }, ptr %l65, !tbaa !27
  %t161 = extractvalue { i64, ptr } %t160, 0
  store i64 %t161, ptr %l66, !tbaa !24
  %t162 = load i64, ptr %l66, !tbaa !24
  %t163 = mul i64 %t162, 1
  %t164 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t163)
  %t165 = insertvalue { i64, ptr } undef, i64 %t162, 0
  %t166 = insertvalue { i64, ptr } %t165, ptr %t164, 1
  store { i64, ptr } %t166, ptr %l67, !tbaa !27
  %t167 = getelementptr { i64, ptr }, ptr %l67, i32 0, i32 1
  %t168 = load ptr, ptr %t167, !tbaa !27
  %t169 = getelementptr { i64, ptr }, ptr %l65, i32 0, i32 1
  %t170 = load ptr, ptr %t169, !tbaa !27
  %t171 = load i64, ptr %l66, !tbaa !24
  %t172 = mul i64 %t171, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t168, ptr %t170, i64 %t172, i1 false)
  %t173 = load { i64, ptr }, ptr %l67, !tbaa !27
  store { i64, ptr } %t173, ptr %l65, !tbaa !27
  %t174 = load { i64, ptr }, ptr %l65, !tbaa !27
  store { i64, ptr } %t174, ptr %rv
  br label %ret
bb35:
  call void @__olang_check_failed(ptr @olang_loc_cffe0474e3afc296_35ccea70755633e2)
  unreachable
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2emayHold(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l5 = alloca i1
  %rv = alloca i1
  br label %start
start:
  br label %bb0
bb0:
  %t3 = getelementptr %"compiler/generic:Program", ptr %a0, i32 0, i32 2
  %t7 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eHoldsRefs(ptr %v0, ptr %t3, i32 %a1)
  store i1 %t7, ptr %l5
  br label %bb1
bb1:
  %t8 = load i1, ptr %l5, !tbaa !21
  store i1 %t8, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2emeets(ptr %v0, ptr %v1, ptr %a0, i32 %a1, i32 %a2, i32 %a3, ptr %a4) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca i32
  %l4 = alloca ptr
  %l5 = alloca i64
  %l6 = alloca %"compiler/generic:Context"
  %l7 = alloca i32
  %l8 = alloca i32
  %l9 = alloca { i64, ptr }
  %l10 = alloca { i64, ptr }
  %l11 = alloca i64
  %l12 = alloca i64
  %l13 = alloca i64
  %l14 = alloca i64
  %l15 = alloca i64
  %l16 = alloca i64
  %l17 = alloca i32
  %l18 = alloca i32
  %l23 = alloca i64
  %l26 = alloca %"compiler/generic:Context"
  %l27 = alloca ptr
  %l33 = alloca i32
  %l35 = alloca i64
  %l37 = alloca i32
  %l40 = alloca ptr
  %l41 = alloca i32
  %l45 = alloca { i64, ptr }
  %l47 = alloca i1
  %l51 = alloca { i64, ptr }
  %l52 = alloca i1
  %l54 = alloca i1
  %l59 = alloca i1
  %l65 = alloca { i64, ptr }
  %l66 = alloca i1
  %l67 = alloca i1
  %l72 = alloca i1
  %l74 = alloca i1
  %l77 = alloca i1
  %l82 = alloca i32
  %l88 = alloca ptr
  %l92 = alloca i32
  %l93 = alloca { i64, ptr }
  %l95 = alloca ptr
  %l99 = alloca i32
  %l100 = alloca { i64, ptr }
  %l111 = alloca i1
  %l114 = alloca { i64, ptr }
  %l116 = alloca i32
  %l119 = alloca i1
  %l122 = alloca { i64, ptr }
  %l124 = alloca i64
  %l134 = alloca i64
  %l137 = alloca i64
  %l156 = alloca { i64, ptr }
  %l160 = alloca { i64, ptr }
  %l163 = alloca i1
  %l171 = alloca i32
  %l175 = alloca i32
  %l180 = alloca i1
  %l181 = alloca i1
  %l185 = alloca i1
  %l189 = alloca i1
  %l190 = alloca ptr
  %l194 = alloca i32
  %l198 = alloca i32
  %l199 = alloca i1
  %s0 = alloca %olang.scope
  %rv = alloca i1
  %t14 = alloca %"compiler/generic:Context", align 8
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  store i32 %a2, ptr %l2
  store ptr %a4, ptr %l4
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load i32, ptr %l1, !tbaa !23
  %t3 = load ptr, ptr %l4, !tbaa !29
  %t5 = getelementptr %"compiler/ast:Func", ptr %t3, i32 0, i32 2
  %t6 = load i32, ptr %t5, !tbaa !23
  %t10 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eMethodOf(ptr %v0, ptr %t1, i32 %t2, i32 %t6)
  store i64 %t10, ptr %l23
  br label %bb1
bb1:
  %t11 = load i64, ptr %l23, !tbaa !24
  store i64 %t11, ptr %l5, !tbaa !24
  %t12 = load ptr, ptr %l0, !tbaa !29
  %t13 = load i32, ptr %l2, !tbaa !23
  call void @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2edeclContext(ptr %t14, ptr %v0, ptr %s0, ptr %t12, i32 %t13)
  call void @llvm.memmove.p0.p0.i64(ptr %l26, ptr %t14, i64 160, i1 false)
  br label %bb2
bb2:
  call void @llvm.memmove.p0.p0.i64(ptr %l6, ptr %l26, i64 160, i1 false)
  %t17 = load ptr, ptr %l0, !tbaa !29
  store ptr %t17, ptr %l27, !tbaa !29
  %t18 = load ptr, ptr %l0, !tbaa !29
  %t19 = load ptr, ptr %l4, !tbaa !29
  %t21 = getelementptr %"compiler/ast:Func", ptr %t19, i32 0, i32 3
  %t22 = load ptr, ptr %t21, !tbaa !29
  %t23 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t28 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2esigType(ptr %v0, ptr %s0, ptr %v1, ptr %t18, ptr %l6, ptr %t22, i32 %t23, i32 0)
  store i32 %t28, ptr %l33
  br label %bb3
bb3:
  %t29 = load i32, ptr %l2, !tbaa !23
  %t31 = call i64 @compiler_2fgeneric_2eDeclOwner(i32 %t29)
  store i64 %t31, ptr %l35
  br label %bb4
bb4:
  %t33 = load ptr, ptr %l27, !tbaa !29
  %t34 = load i32, ptr %l33, !tbaa !23
  %t35 = load i64, ptr %l35, !tbaa !24
  %t37 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eSubst(ptr %v0, ptr %t33, i32 %t34, i64 %t35, i32 %a3)
  store i32 %t37, ptr %l37
  br label %bb5
bb5:
  %t38 = load i32, ptr %l37, !tbaa !23
  store i32 %t38, ptr %l7, !tbaa !23
  %t39 = load i64, ptr %l5, !tbaa !24
  %t41 = icmp slt i64 %t39, 0
  br i1 %t41, label %bb6, label %bb7
bb6:
  %t43 = load ptr, ptr %l0, !tbaa !29
  store ptr %t43, ptr %l40, !tbaa !29
  %t44 = load i32, ptr %l1, !tbaa !23
  store i32 %t44, ptr %l41, !tbaa !23
  %t45 = load ptr, ptr %l0, !tbaa !29
  %t46 = load ptr, ptr %l4, !tbaa !29
  %t48 = getelementptr %"compiler/ast:Func", ptr %t46, i32 0, i32 2
  %t49 = load i32, ptr %t48, !tbaa !23
  %t52 = call { i64, ptr } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2etext(ptr %v0, ptr %v0, ptr %t45, i32 %t49)
  store { i64, ptr } %t52, ptr %l45
  br label %bb8
bb7:
  br label %bb10
bb8:
  %t53 = load i32, ptr %l7, !tbaa !23
  %t54 = load ptr, ptr %l40, !tbaa !29
  %t55 = load i32, ptr %l41, !tbaa !23
  %t56 = load { i64, ptr }, ptr %l45, !tbaa !27
  %t58 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2esuppliedMeets(ptr %v0, ptr %v0, ptr %t54, i32 %t55, { i64, ptr } %t56, i32 %t53)
  store i1 %t58, ptr %l47
  br label %bb9
bb9:
  call void @__olang_scope_close(ptr %s0)
  %t59 = load i1, ptr %l47, !tbaa !21
  store i1 %t59, ptr %rv
  br label %ret
bb10:
  %t60 = load ptr, ptr %l0, !tbaa !29
  %t61 = load ptr, ptr %l4, !tbaa !29
  %t63 = getelementptr %"compiler/ast:Func", ptr %t61, i32 0, i32 2
  %t64 = load i32, ptr %t63, !tbaa !23
  %t67 = call { i64, ptr } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2etext(ptr %v0, ptr %v0, ptr %t60, i32 %t64)
  store { i64, ptr } %t67, ptr %l51
  br label %bb11
bb11:
  %t68 = load { i64, ptr }, ptr %l51, !tbaa !27
  %t69 = call i1 @compiler_2fload_2ePublic(ptr %v0, { i64, ptr } %t68)
  store i1 %t69, ptr %l52
  br label %bb12
bb12:
  %t70 = load i1, ptr %l52, !tbaa !21
  %t71 = xor i1 %t70, true
  br i1 %t71, label %bb13, label %bb14
bb13:
  %t73 = load ptr, ptr %l0, !tbaa !29
  %t74 = load i32, ptr %l1, !tbaa !23
  %t75 = load i32, ptr %l2, !tbaa !23
  %t76 = load i64, ptr %l5, !tbaa !24
  %t81 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2esealedBy(ptr %v0, ptr %t73, i32 %t74, i32 %t75, i64 %t76)
  store i1 %t81, ptr %l59
  br label %bb15
bb14:
  store i1 false, ptr %l54, !tbaa !21
  br label %bb16
bb15:
  %t82 = load i1, ptr %l59, !tbaa !21
  %t83 = xor i1 %t82, true
  store i1 %t83, ptr %l54, !tbaa !21
  br label %bb16
bb16:
  %t85 = load i1, ptr %l54, !tbaa !21
  br i1 %t85, label %bb17, label %bb18
bb17:
  call void @__olang_scope_close(ptr %s0)
  store i1 false, ptr %rv
  br label %ret
bb18:
  br label %bb19
bb19:
  %t87 = load ptr, ptr %l0, !tbaa !29
  %t88 = load ptr, ptr %l4, !tbaa !29
  %t90 = getelementptr %"compiler/ast:Func", ptr %t88, i32 0, i32 2
  %t91 = load i32, ptr %t90, !tbaa !23
  %t94 = call { i64, ptr } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2etext(ptr %v0, ptr %v0, ptr %t87, i32 %t91)
  store { i64, ptr } %t94, ptr %l65
  br label %bb20
bb20:
  %t95 = load { i64, ptr }, ptr %l65, !tbaa !27
  %t96 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t95, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d33, i32 0, i32 1) })
  store i1 %t96, ptr %l66
  br label %bb21
bb21:
  %t97 = load i1, ptr %l66, !tbaa !21
  br i1 %t97, label %bb22, label %bb23
bb22:
  %t98 = load ptr, ptr %l0, !tbaa !29
  %t99 = load i32, ptr %l1, !tbaa !23
  %t100 = load ptr, ptr %l4, !tbaa !29
  %t102 = getelementptr %"compiler/ast:Func", ptr %t100, i32 0, i32 2
  %t103 = load i32, ptr %t102, !tbaa !23
  %t107 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eownMethod(ptr %v0, ptr %t98, i32 %t99, i32 %t103)
  store i1 %t107, ptr %l72
  br label %bb24
bb23:
  store i1 false, ptr %l67, !tbaa !21
  br label %bb25
bb24:
  %t108 = load i1, ptr %l72, !tbaa !21
  %t109 = xor i1 %t108, true
  store i1 %t109, ptr %l67, !tbaa !21
  br label %bb25
bb25:
  %t111 = load i1, ptr %l67, !tbaa !21
  br i1 %t111, label %bb26, label %bb27
bb26:
  %t112 = load ptr, ptr %l0, !tbaa !29
  %t113 = load i32, ptr %l1, !tbaa !23
  %t116 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2edeclaresEq(ptr %v0, ptr %t112, i32 %t113)
  store i1 %t116, ptr %l77
  br label %bb28
bb27:
  store i1 false, ptr %l74, !tbaa !21
  br label %bb29
bb28:
  %t117 = load i1, ptr %l77, !tbaa !21
  store i1 %t117, ptr %l74, !tbaa !21
  br label %bb29
bb29:
  %t118 = load i1, ptr %l74, !tbaa !21
  br i1 %t118, label %bb30, label %bb31
bb30:
  call void @__olang_scope_close(ptr %s0)
  store i1 false, ptr %rv
  br label %ret
bb31:
  br label %bb32
bb32:
  %t120 = load ptr, ptr %l0, !tbaa !29
  %t121 = load i64, ptr %l5, !tbaa !24
  %t122 = load i32, ptr %l1, !tbaa !23
  %t126 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eMethodSig(ptr %v0, ptr %t120, i64 %t121, i32 %t122)
  store i32 %t126, ptr %l82
  br label %bb33
bb33:
  %t127 = load i32, ptr %l82, !tbaa !23
  store i32 %t127, ptr %l8, !tbaa !23
  %t128 = load i32, ptr %l8, !tbaa !23
  %t129 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t132 = icmp eq i32 %t128, %t129
  br i1 %t132, label %bb34, label %bb35
bb34:
  call void @__olang_scope_close(ptr %s0)
  store i1 false, ptr %rv
  br label %ret
bb35:
  br label %bb36
bb36:
  %t135 = load ptr, ptr %l0, !tbaa !29
  %t137 = getelementptr %"compiler/generic:Program", ptr %t135, i32 0, i32 2
  store ptr %t137, ptr %l88, !tbaa !29
  %t138 = load ptr, ptr %l0, !tbaa !29
  %t140 = getelementptr %"compiler/generic:Program", ptr %t138, i32 0, i32 2
  %t141 = load i32, ptr %l8, !tbaa !23
  %t144 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParams(ptr %v0, ptr %t140, i32 %t141)
  store i32 %t144, ptr %l92
  br label %bb37
bb37:
  %t145 = load ptr, ptr %l88, !tbaa !29
  %t146 = load i32, ptr %l92, !tbaa !23
  %t147 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t145, i32 %t146)
  store { i64, ptr } %t147, ptr %l93
  br label %bb38
bb38:
  %t148 = load { i64, ptr }, ptr %l93, !tbaa !27
  store { i64, ptr } %t148, ptr %l9, !tbaa !27
  %t149 = load ptr, ptr %l0, !tbaa !29
  %t151 = getelementptr %"compiler/generic:Program", ptr %t149, i32 0, i32 2
  store ptr %t151, ptr %l95, !tbaa !29
  %t152 = load ptr, ptr %l0, !tbaa !29
  %t154 = getelementptr %"compiler/generic:Program", ptr %t152, i32 0, i32 2
  %t155 = load i32, ptr %l7, !tbaa !23
  %t158 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParams(ptr %v0, ptr %t154, i32 %t155)
  store i32 %t158, ptr %l99
  br label %bb39
bb39:
  %t159 = load ptr, ptr %l95, !tbaa !29
  %t160 = load i32, ptr %l99, !tbaa !23
  %t161 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t159, i32 %t160)
  store { i64, ptr } %t161, ptr %l100
  br label %bb40
bb40:
  %t162 = load { i64, ptr }, ptr %l100, !tbaa !27
  store { i64, ptr } %t162, ptr %l10, !tbaa !27
  %t163 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t165 = extractvalue { i64, ptr } %t163, 0
  %t166 = load { i64, ptr }, ptr %l10, !tbaa !27
  %t168 = extractvalue { i64, ptr } %t166, 0
  %t170 = add i64 %t168, 1
  %t173 = icmp ne i64 %t165, %t170
  br i1 %t173, label %bb41, label %bb42
bb41:
  call void @__olang_scope_close(ptr %s0)
  store i1 false, ptr %rv
  br label %ret
bb42:
  br label %bb43
bb43:
  %t176 = load ptr, ptr %l4, !tbaa !29
  %t178 = getelementptr %"compiler/ast:Func", ptr %t176, i32 0, i32 1
  %t179 = load ptr, ptr %t178, !tbaa !29
  %t181 = icmp eq ptr %t179, null
  br i1 %t181, label %bb44, label %bb45
bb44:
  %t183 = load ptr, ptr %l0, !tbaa !29
  %t185 = getelementptr %"compiler/generic:Program", ptr %t183, i32 0, i32 2
  %t186 = load { i64, ptr }, ptr %l9, !tbaa !27
  store { i64, ptr } %t186, ptr %l114, !tbaa !27
  %t187 = getelementptr { i64, ptr }, ptr %l114, i32 0, i32 1
  %t188 = load ptr, ptr %t187, !tbaa !27
  %t189 = getelementptr i32, ptr %t188, i64 0
  %t190 = load i32, ptr %t189, !tbaa !33
  %t193 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t185, i32 %t190)
  store i32 %t193, ptr %l116
  br label %bb46
bb45:
  store i1 false, ptr %l111, !tbaa !21
  br label %bb47
bb46:
  %t194 = load i32, ptr %l116, !range !{i32 0, i32 33}
  %t196 = trunc i64 20 to i32
  %t197 = icmp eq i32 %t194, %t196
  store i1 %t197, ptr %l111, !tbaa !21
  br label %bb47
bb47:
  %t199 = load i1, ptr %l111, !tbaa !21
  br i1 %t199, label %bb48, label %bb49
bb48:
  %t200 = load ptr, ptr %l0, !tbaa !29
  %t202 = getelementptr %"compiler/generic:Program", ptr %t200, i32 0, i32 2
  %t203 = load { i64, ptr }, ptr %l9, !tbaa !27
  store { i64, ptr } %t203, ptr %l122, !tbaa !27
  %t204 = getelementptr { i64, ptr }, ptr %l122, i32 0, i32 1
  %t205 = load ptr, ptr %t204, !tbaa !27
  %t206 = getelementptr i32, ptr %t205, i64 0
  %t207 = load i32, ptr %t206, !tbaa !33
  %t210 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePermOf(ptr %v0, ptr %t202, i32 %t207)
  store i64 %t210, ptr %l124
  br label %bb50
bb49:
  store i1 false, ptr %l119, !tbaa !21
  br label %bb51
bb50:
  %t211 = load i64, ptr @G_2ecompiler_2ftypes_2eWritable, !tbaa !24
  %t212 = load i64, ptr %l124, !tbaa !24
  %t214 = and i64 %t212, %t211
  %t216 = icmp ne i64 %t214, 0
  store i1 %t216, ptr %l119, !tbaa !21
  br label %bb51
bb51:
  %t218 = load i1, ptr %l119, !tbaa !21
  br i1 %t218, label %bb52, label %bb53
bb52:
  call void @__olang_scope_close(ptr %s0)
  store i1 false, ptr %rv
  br label %ret
bb53:
  br label %bb54
bb54:
  store i64 0, ptr %l11, !tbaa !24
  %t220 = load { i64, ptr }, ptr %l10, !tbaa !27
  %t222 = extractvalue { i64, ptr } %t220, 0
  store i64 %t222, ptr %l12, !tbaa !24
  store i64 1, ptr %l13, !tbaa !24
  %t224 = load i64, ptr %l12, !tbaa !24
  %t225 = load i64, ptr %l11, !tbaa !24
  %t228 = icmp sgt i64 %t224, %t225
  br i1 %t228, label %bb55, label %bb56
bb55:
  %t230 = load i64, ptr %l13, !tbaa !24
  %t232 = icmp sgt i64 %t230, 0
  br i1 %t232, label %bb57, label %bb58
bb56:
  store i64 0, ptr %l134, !tbaa !24
  br label %bb60
bb57:
  %t234 = load i64, ptr %l12, !tbaa !24
  %t235 = load i64, ptr %l11, !tbaa !24
  %t238 = sub i64 %t234, %t235
  %t239 = load i64, ptr %l13, !tbaa !24
  %t242 = add i64 %t238, %t239
  %t244 = sub i64 %t242, 1
  %t245 = load i64, ptr %l13, !tbaa !24
  %t248 = sdiv i64 %t244, %t245
  store i64 %t248, ptr %l137, !tbaa !24
  br label %bb59
bb58:
  store i64 0, ptr %l137, !tbaa !24
  br label %bb59
bb59:
  %t250 = load i64, ptr %l137, !tbaa !24
  store i64 %t250, ptr %l134, !tbaa !24
  br label %bb60
bb60:
  %t251 = load i64, ptr %l134, !tbaa !24
  store i64 %t251, ptr %l14, !tbaa !24
  store i64 0, ptr %l15, !tbaa !24
  br label %bb61
bb61:
  %t252 = load i64, ptr %l15, !tbaa !24
  %t253 = load i64, ptr %l14, !tbaa !24
  %t256 = icmp slt i64 %t252, %t253
  %t258 = xor i1 %t256, true
  br i1 %t258, label %bb62, label %bb63
bb62:
  br label %bb70
bb63:
  br label %bb64
bb64:
  %t260 = load i64, ptr %l11, !tbaa !24
  %t261 = load i64, ptr %l15, !tbaa !24
  %t262 = load i64, ptr %l13, !tbaa !24
  %t265 = mul i64 %t261, %t262
  %t268 = add i64 %t260, %t265
  store i64 %t268, ptr %l16, !tbaa !24
  %t270 = load ptr, ptr %l0, !tbaa !29
  %t271 = load { i64, ptr }, ptr %l9, !tbaa !27
  store { i64, ptr } %t271, ptr %l156, !tbaa !27
  %t272 = load i64, ptr %l16, !tbaa !24
  %t274 = add i64 %t272, 1
  %t276 = getelementptr { i64, ptr }, ptr %l156, i32 0, i32 1
  %t277 = load ptr, ptr %t276, !tbaa !27
  %t278 = getelementptr i32, ptr %t277, i64 %t274
  %t279 = load i32, ptr %t278, !tbaa !33
  %t280 = load { i64, ptr }, ptr %l10, !tbaa !27
  store { i64, ptr } %t280, ptr %l160, !tbaa !27
  %t281 = load i64, ptr %l16, !tbaa !24
  %t283 = getelementptr { i64, ptr }, ptr %l160, i32 0, i32 1
  %t284 = load ptr, ptr %t283, !tbaa !27
  %t285 = getelementptr i32, ptr %t284, i64 %t281
  %t286 = load i32, ptr %t285, !tbaa !33
  %t290 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2esameUpToShape(ptr %v0, ptr %t270, i32 %t279, i32 %t286)
  store i1 %t290, ptr %l163
  br label %bb65
bb65:
  %t291 = load i1, ptr %l163, !tbaa !21
  %t292 = xor i1 %t291, true
  br i1 %t292, label %bb66, label %bb67
bb66:
  call void @__olang_scope_close(ptr %s0)
  store i1 false, ptr %rv
  br label %ret
bb67:
  br label %bb68
bb68:
  br label %bb69
bb69:
  %t295 = load i64, ptr %l15, !tbaa !24
  %t297 = add i64 %t295, 1
  store i64 %t297, ptr %l15, !tbaa !24
  br label %bb61
bb70:
  %t299 = load ptr, ptr %l0, !tbaa !29
  %t301 = getelementptr %"compiler/generic:Program", ptr %t299, i32 0, i32 2
  %t302 = load i32, ptr %l8, !tbaa !23
  %t305 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eResult(ptr %v0, ptr %t301, i32 %t302)
  store i32 %t305, ptr %l171
  br label %bb71
bb71:
  %t306 = load i32, ptr %l171, !tbaa !23
  store i32 %t306, ptr %l17, !tbaa !23
  %t307 = load ptr, ptr %l0, !tbaa !29
  %t309 = getelementptr %"compiler/generic:Program", ptr %t307, i32 0, i32 2
  %t310 = load i32, ptr %l7, !tbaa !23
  %t313 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eResult(ptr %v0, ptr %t309, i32 %t310)
  store i32 %t313, ptr %l175
  br label %bb72
bb72:
  %t314 = load i32, ptr %l175, !tbaa !23
  store i32 %t314, ptr %l18, !tbaa !23
  %t315 = load ptr, ptr %l0, !tbaa !29
  %t317 = getelementptr %"compiler/generic:Program", ptr %t315, i32 0, i32 2
  %t318 = load i32, ptr %l17, !tbaa !23
  %t319 = load i32, ptr %l18, !tbaa !23
  %t323 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eSame(ptr %v0, ptr %t317, i32 %t318, i32 %t319)
  store i1 %t323, ptr %l180
  br label %bb73
bb73:
  %t324 = load i1, ptr %l180, !tbaa !21
  br i1 %t324, label %bb74, label %bb75
bb74:
  store i1 true, ptr %l181, !tbaa !21
  br label %bb79
bb75:
  %t325 = load i32, ptr %l17, !tbaa !23
  %t326 = load i32, ptr @G_2ecompiler_2ftypes_2eNoreturnT, !tbaa !23
  %t329 = icmp eq i32 %t325, %t326
  br i1 %t329, label %bb76, label %bb77
bb76:
  %t331 = load i32, ptr %l18, !tbaa !23
  %t332 = load i32, ptr @G_2ecompiler_2ftypes_2eVoidT, !tbaa !23
  %t335 = icmp eq i32 %t331, %t332
  store i1 %t335, ptr %l185, !tbaa !21
  br label %bb78
bb77:
  store i1 false, ptr %l185, !tbaa !21
  br label %bb78
bb78:
  %t337 = load i1, ptr %l185, !tbaa !21
  store i1 %t337, ptr %l181, !tbaa !21
  br label %bb79
bb79:
  %t338 = load i1, ptr %l181, !tbaa !21
  br i1 %t338, label %bb80, label %bb81
bb80:
  %t339 = load ptr, ptr %l0, !tbaa !29
  store ptr %t339, ptr %l190, !tbaa !29
  %t340 = load ptr, ptr %l0, !tbaa !29
  %t342 = getelementptr %"compiler/generic:Program", ptr %t340, i32 0, i32 2
  %t343 = load i32, ptr %l8, !tbaa !23
  %t346 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrors(ptr %v0, ptr %t342, i32 %t343)
  store i32 %t346, ptr %l194
  br label %bb82
bb81:
  store i1 false, ptr %l189, !tbaa !21
  br label %bb85
bb82:
  %t347 = load ptr, ptr %l0, !tbaa !29
  %t349 = getelementptr %"compiler/generic:Program", ptr %t347, i32 0, i32 2
  %t350 = load i32, ptr %l7, !tbaa !23
  %t353 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrors(ptr %v0, ptr %t349, i32 %t350)
  store i32 %t353, ptr %l198
  br label %bb83
bb83:
  %t354 = load ptr, ptr %l190, !tbaa !29
  %t355 = load i32, ptr %l194, !tbaa !23
  %t356 = load i32, ptr %l198, !tbaa !23
  %t357 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eErrsHeld(ptr %v0, ptr %t354, i32 %t355, i32 %t356)
  store i1 %t357, ptr %l199
  br label %bb84
bb84:
  %t358 = load i1, ptr %l199, !tbaa !21
  store i1 %t358, ptr %l189, !tbaa !21
  br label %bb85
bb85:
  call void @__olang_scope_close(ptr %s0)
  %t359 = load i1, ptr %l189, !tbaa !21
  store i1 %t359, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2ementionsVar(ptr %v0, ptr %a0, i32 %a1, i64 %a2, i64 %a3, i64 %a4) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca i64
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i32
  %l12 = alloca i32
  %l18 = alloca i64
  %l21 = alloca i1
  %l25 = alloca i64
  %l30 = alloca ptr
  %l34 = alloca i32
  %l39 = alloca i1
  %l42 = alloca ptr
  %l46 = alloca i32
  %l51 = alloca i1
  %l54 = alloca ptr
  %l58 = alloca i32
  %l63 = alloca i1
  %l66 = alloca ptr
  %l70 = alloca i32
  %l74 = alloca i1
  %l79 = alloca ptr
  %l83 = alloca i32
  %l87 = alloca i1
  %l90 = alloca ptr
  %l94 = alloca i32
  %l98 = alloca i1
  %l99 = alloca i1
  %l100 = alloca ptr
  %l104 = alloca i32
  %l109 = alloca i1
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  store i64 %a2, ptr %l2
  store i64 %a3, ptr %l3
  store i64 %a4, ptr %l4
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load i64, ptr %l4, !tbaa !24
  %t3 = icmp sgt i64 %t1, 32
  br i1 %t3, label %bb1, label %bb2
bb1:
  store i1 false, ptr %rv
  br label %ret
bb2:
  br label %bb3
bb3:
  %t6 = load ptr, ptr %l0, !tbaa !29
  %t8 = getelementptr %"compiler/generic:Program", ptr %t6, i32 0, i32 2
  %t9 = load i32, ptr %l1, !tbaa !23
  %t12 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t8, i32 %t9)
  store i32 %t12, ptr %l12
  br label %bb4
bb4:
  %t13 = load i32, ptr %l12, !range !{i32 0, i32 33}
  store i32 %t13, ptr %l5
  %t14 = load i32, ptr %l5, !range !{i32 0, i32 33}
  %t16 = trunc i64 25 to i32
  %t17 = icmp eq i32 %t14, %t16
  br i1 %t17, label %bb5, label %bb6
bb5:
  br label %bb7
bb6:
  br label %bb13
bb7:
  %t19 = load ptr, ptr %l0, !tbaa !29
  %t21 = getelementptr %"compiler/generic:Program", ptr %t19, i32 0, i32 2
  %t22 = load i32, ptr %l1, !tbaa !23
  %t25 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eA(ptr %v0, ptr %t21, i32 %t22)
  store i64 %t25, ptr %l18
  br label %bb8
bb8:
  %t26 = load i64, ptr %l2, !tbaa !24
  %t27 = load i64, ptr %l18, !tbaa !24
  %t29 = icmp eq i64 %t27, %t26
  br i1 %t29, label %bb9, label %bb10
bb9:
  %t31 = load ptr, ptr %l0, !tbaa !29
  %t33 = getelementptr %"compiler/generic:Program", ptr %t31, i32 0, i32 2
  %t34 = load i32, ptr %l1, !tbaa !23
  %t37 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eB(ptr %v0, ptr %t33, i32 %t34)
  store i64 %t37, ptr %l25
  br label %bb11
bb10:
  store i1 false, ptr %l21, !tbaa !21
  br label %bb12
bb11:
  %t38 = load i64, ptr %l3, !tbaa !24
  %t39 = load i64, ptr %l25, !tbaa !24
  %t41 = icmp eq i64 %t39, %t38
  store i1 %t41, ptr %l21, !tbaa !21
  br label %bb12
bb12:
  %t43 = load i1, ptr %l21, !tbaa !21
  store i1 %t43, ptr %rv
  br label %ret
bb13:
  %t44 = load i32, ptr %l5, !range !{i32 0, i32 33}
  %t46 = trunc i64 20 to i32
  %t47 = icmp eq i32 %t44, %t46
  br i1 %t47, label %bb14, label %bb15
bb14:
  br label %bb16
bb15:
  br label %bb19
bb16:
  %t49 = load ptr, ptr %l0, !tbaa !29
  store ptr %t49, ptr %l30, !tbaa !29
  %t50 = load ptr, ptr %l0, !tbaa !29
  %t52 = getelementptr %"compiler/generic:Program", ptr %t50, i32 0, i32 2
  %t53 = load i32, ptr %l1, !tbaa !23
  %t56 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eReferent(ptr %v0, ptr %t52, i32 %t53)
  store i32 %t56, ptr %l34
  br label %bb17
bb17:
  %t57 = load i64, ptr %l2, !tbaa !24
  %t58 = load i64, ptr %l3, !tbaa !24
  %t59 = load i64, ptr %l4, !tbaa !24
  %t61 = add i64 %t59, 1
  %t62 = load ptr, ptr %l30, !tbaa !29
  %t63 = load i32, ptr %l34, !tbaa !23
  %t67 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2ementionsVar(ptr %v0, ptr %t62, i32 %t63, i64 %t57, i64 %t58, i64 %t61)
  store i1 %t67, ptr %l39
  br label %bb18
bb18:
  %t68 = load i1, ptr %l39, !tbaa !21
  store i1 %t68, ptr %rv
  br label %ret
bb19:
  %t69 = load i32, ptr %l5, !range !{i32 0, i32 33}
  %t71 = trunc i64 19 to i32
  %t72 = icmp eq i32 %t69, %t71
  br i1 %t72, label %bb20, label %bb21
bb20:
  br label %bb22
bb21:
  br label %bb25
bb22:
  %t74 = load ptr, ptr %l0, !tbaa !29
  store ptr %t74, ptr %l42, !tbaa !29
  %t75 = load ptr, ptr %l0, !tbaa !29
  %t77 = getelementptr %"compiler/generic:Program", ptr %t75, i32 0, i32 2
  %t78 = load i32, ptr %l1, !tbaa !23
  %t81 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eElem(ptr %v0, ptr %t77, i32 %t78)
  store i32 %t81, ptr %l46
  br label %bb23
bb23:
  %t82 = load i64, ptr %l2, !tbaa !24
  %t83 = load i64, ptr %l3, !tbaa !24
  %t84 = load i64, ptr %l4, !tbaa !24
  %t86 = add i64 %t84, 1
  %t87 = load ptr, ptr %l42, !tbaa !29
  %t88 = load i32, ptr %l46, !tbaa !23
  %t92 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2ementionsVar(ptr %v0, ptr %t87, i32 %t88, i64 %t82, i64 %t83, i64 %t86)
  store i1 %t92, ptr %l51
  br label %bb24
bb24:
  %t93 = load i1, ptr %l51, !tbaa !21
  store i1 %t93, ptr %rv
  br label %ret
bb25:
  %t94 = load i32, ptr %l5, !range !{i32 0, i32 33}
  %t96 = trunc i64 29 to i32
  %t97 = icmp eq i32 %t94, %t96
  br i1 %t97, label %bb26, label %bb27
bb26:
  br label %bb28
bb27:
  br label %bb31
bb28:
  %t99 = load ptr, ptr %l0, !tbaa !29
  store ptr %t99, ptr %l54, !tbaa !29
  %t100 = load ptr, ptr %l0, !tbaa !29
  %t102 = getelementptr %"compiler/generic:Program", ptr %t100, i32 0, i32 2
  %t103 = load i32, ptr %l1, !tbaa !23
  %t106 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eAnyTrait(ptr %v0, ptr %t102, i32 %t103)
  store i32 %t106, ptr %l58
  br label %bb29
bb29:
  %t107 = load i64, ptr %l2, !tbaa !24
  %t108 = load i64, ptr %l3, !tbaa !24
  %t109 = load i64, ptr %l4, !tbaa !24
  %t111 = add i64 %t109, 1
  %t112 = load ptr, ptr %l54, !tbaa !29
  %t113 = load i32, ptr %l58, !tbaa !23
  %t117 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2ementionsVar(ptr %v0, ptr %t112, i32 %t113, i64 %t107, i64 %t108, i64 %t111)
  store i1 %t117, ptr %l63
  br label %bb30
bb30:
  %t118 = load i1, ptr %l63, !tbaa !21
  store i1 %t118, ptr %rv
  br label %ret
bb31:
  %t119 = load i32, ptr %l5, !range !{i32 0, i32 33}
  %t121 = trunc i64 18 to i32
  %t122 = icmp eq i32 %t119, %t121
  br i1 %t122, label %bb32, label %bb33
bb32:
  br label %bb34
bb33:
  br label %bb37
bb34:
  %t124 = load ptr, ptr %l0, !tbaa !29
  store ptr %t124, ptr %l66, !tbaa !29
  %t125 = load ptr, ptr %l0, !tbaa !29
  %t127 = getelementptr %"compiler/generic:Program", ptr %t125, i32 0, i32 2
  %t128 = load i32, ptr %l1, !tbaa !23
  %t131 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eArgs(ptr %v0, ptr %t127, i32 %t128)
  store i32 %t131, ptr %l70
  br label %bb35
bb35:
  %t132 = load i64, ptr %l2, !tbaa !24
  %t133 = load i64, ptr %l3, !tbaa !24
  %t134 = load i64, ptr %l4, !tbaa !24
  %t135 = load ptr, ptr %l66, !tbaa !29
  %t136 = load i32, ptr %l70, !tbaa !23
  %t140 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2ementionsList(ptr %v0, ptr %t135, i32 %t136, i64 %t132, i64 %t133, i64 %t134)
  store i1 %t140, ptr %l74
  br label %bb36
bb36:
  %t141 = load i1, ptr %l74, !tbaa !21
  store i1 %t141, ptr %rv
  br label %ret
bb37:
  %t142 = load i32, ptr %l5, !range !{i32 0, i32 33}
  %t144 = trunc i64 22 to i32
  %t145 = icmp eq i32 %t142, %t144
  br i1 %t145, label %bb38, label %bb39
bb38:
  br label %bb42
bb39:
  %t147 = load i32, ptr %l5, !range !{i32 0, i32 33}
  %t149 = trunc i64 23 to i32
  %t150 = icmp eq i32 %t147, %t149
  br i1 %t150, label %bb40, label %bb41
bb40:
  br label %bb42
bb41:
  br label %bb45
bb42:
  %t152 = load ptr, ptr %l0, !tbaa !29
  store ptr %t152, ptr %l79, !tbaa !29
  %t153 = load ptr, ptr %l0, !tbaa !29
  %t155 = getelementptr %"compiler/generic:Program", ptr %t153, i32 0, i32 2
  %t156 = load i32, ptr %l1, !tbaa !23
  %t159 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParts(ptr %v0, ptr %t155, i32 %t156)
  store i32 %t159, ptr %l83
  br label %bb43
bb43:
  %t160 = load i64, ptr %l2, !tbaa !24
  %t161 = load i64, ptr %l3, !tbaa !24
  %t162 = load i64, ptr %l4, !tbaa !24
  %t163 = load ptr, ptr %l79, !tbaa !29
  %t164 = load i32, ptr %l83, !tbaa !23
  %t168 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2ementionsList(ptr %v0, ptr %t163, i32 %t164, i64 %t160, i64 %t161, i64 %t162)
  store i1 %t168, ptr %l87
  br label %bb44
bb44:
  %t169 = load i1, ptr %l87, !tbaa !21
  store i1 %t169, ptr %rv
  br label %ret
bb45:
  %t170 = load i32, ptr %l5, !range !{i32 0, i32 33}
  %t172 = trunc i64 21 to i32
  %t173 = icmp eq i32 %t170, %t172
  br i1 %t173, label %bb46, label %bb47
bb46:
  br label %bb48
bb47:
  br label %bb56
bb48:
  %t175 = load ptr, ptr %l0, !tbaa !29
  store ptr %t175, ptr %l90, !tbaa !29
  %t176 = load ptr, ptr %l0, !tbaa !29
  %t178 = getelementptr %"compiler/generic:Program", ptr %t176, i32 0, i32 2
  %t179 = load i32, ptr %l1, !tbaa !23
  %t182 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParams(ptr %v0, ptr %t178, i32 %t179)
  store i32 %t182, ptr %l94
  br label %bb49
bb49:
  %t183 = load i64, ptr %l2, !tbaa !24
  %t184 = load i64, ptr %l3, !tbaa !24
  %t185 = load i64, ptr %l4, !tbaa !24
  %t186 = load ptr, ptr %l90, !tbaa !29
  %t187 = load i32, ptr %l94, !tbaa !23
  %t191 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2ementionsList(ptr %v0, ptr %t186, i32 %t187, i64 %t183, i64 %t184, i64 %t185)
  store i1 %t191, ptr %l98
  br label %bb50
bb50:
  %t192 = load i1, ptr %l98, !tbaa !21
  br i1 %t192, label %bb51, label %bb52
bb51:
  store i1 true, ptr %l99, !tbaa !21
  br label %bb55
bb52:
  %t193 = load ptr, ptr %l0, !tbaa !29
  store ptr %t193, ptr %l100, !tbaa !29
  %t194 = load ptr, ptr %l0, !tbaa !29
  %t196 = getelementptr %"compiler/generic:Program", ptr %t194, i32 0, i32 2
  %t197 = load i32, ptr %l1, !tbaa !23
  %t200 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eResult(ptr %v0, ptr %t196, i32 %t197)
  store i32 %t200, ptr %l104
  br label %bb53
bb53:
  %t201 = load i64, ptr %l2, !tbaa !24
  %t202 = load i64, ptr %l3, !tbaa !24
  %t203 = load i64, ptr %l4, !tbaa !24
  %t205 = add i64 %t203, 1
  %t206 = load ptr, ptr %l100, !tbaa !29
  %t207 = load i32, ptr %l104, !tbaa !23
  %t211 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2ementionsVar(ptr %v0, ptr %t206, i32 %t207, i64 %t201, i64 %t202, i64 %t205)
  store i1 %t211, ptr %l109
  br label %bb54
bb54:
  %t212 = load i1, ptr %l109, !tbaa !21
  store i1 %t212, ptr %l99, !tbaa !21
  br label %bb55
bb55:
  %t213 = load i1, ptr %l99, !tbaa !21
  store i1 %t213, ptr %rv
  br label %ret
bb56:
  br i1 true, label %bb57, label %bb58
bb57:
  br label %bb59
bb58:
  br label %bb60
bb59:
  store i1 false, ptr %rv
  br label %ret
bb60:
  call void @__olang_check_failed(ptr @olang_loc_536ccd1a63d69f5a_f4e0a4d3c2cbc46e)
  unreachable
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local void @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2emergeEntries(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, ptr %a2) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca ptr
  %l4 = alloca i64
  %l5 = alloca i32
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca i64
  %l12 = alloca i64
  %l14 = alloca i64
  %l16 = alloca i64
  %l21 = alloca i32
  %l23 = alloca i64
  %l27 = alloca i64
  %l30 = alloca i64
  %l51 = alloca i1
  %l53 = alloca ptr
  %l56 = alloca i32
  %l57 = alloca i32
  %l61 = alloca i32
  %l71 = alloca ptr
  %l74 = alloca i32
  %l75 = alloca i32
  %l79 = alloca i1
  %l83 = alloca i32
  %l87 = alloca ptr
  %l88 = alloca i64
  %l92 = alloca i32
  %l93 = alloca ptr
  %l94 = alloca i64
  %l96 = alloca ptr
  %l100 = alloca i32
  %l102 = alloca ptr
  %l105 = alloca i32
  %l106 = alloca i64
  %l110 = alloca i64
  %l112 = alloca i32
  store ptr %a0, ptr %l0
  store ptr %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  store ptr %a1, ptr %l3, !tbaa !29
  store i64 0, ptr %l4, !tbaa !24
  br label %bb1
bb1:
  %t3 = load i64, ptr %l4, !tbaa !24
  store i64 %t3, ptr %l14, !tbaa !24
  %t4 = load ptr, ptr %l3, !tbaa !29
  %t6 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2eLen_3ccompiler_2ftypes_3aTypeId_3e(ptr %v1, ptr %t4)
  store i64 %t6, ptr %l16
  br label %bb2
bb2:
  %t7 = load i64, ptr %l14, !tbaa !24
  %t8 = load i64, ptr %l16, !tbaa !24
  %t9 = icmp slt i64 %t7, %t8
  %t11 = xor i1 %t9, true
  br i1 %t11, label %bb3, label %bb4
bb3:
  br label %bb51
bb4:
  br label %bb5
bb5:
  %t13 = load ptr, ptr %l3, !tbaa !29
  %t14 = load i64, ptr %l4, !tbaa !24
  %t17 = call i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2eAt_3ccompiler_2ftypes_3aTypeId_3e(ptr %v1, ptr %t13, i64 %t14)
  store i32 %t17, ptr %l21
  br label %bb6
bb6:
  %t18 = load i32, ptr %l21, !tbaa !23
  store i32 %t18, ptr %l5, !tbaa !23
  store i64 -1, ptr %l6, !tbaa !24
  store i64 0, ptr %l7, !tbaa !24
  %t19 = load ptr, ptr %l2, !tbaa !29
  %t21 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2eLen_3ccompiler_2ftypes_3aTypeId_3e(ptr %v2, ptr %t19)
  store i64 %t21, ptr %l23
  br label %bb7
bb7:
  %t22 = load i64, ptr %l23, !tbaa !24
  store i64 %t22, ptr %l8, !tbaa !24
  store i64 1, ptr %l9, !tbaa !24
  %t23 = load i64, ptr %l8, !tbaa !24
  %t24 = load i64, ptr %l7, !tbaa !24
  %t27 = icmp sgt i64 %t23, %t24
  br i1 %t27, label %bb8, label %bb9
bb8:
  %t29 = load i64, ptr %l9, !tbaa !24
  %t31 = icmp sgt i64 %t29, 0
  br i1 %t31, label %bb10, label %bb11
bb9:
  store i64 0, ptr %l27, !tbaa !24
  br label %bb13
bb10:
  %t33 = load i64, ptr %l8, !tbaa !24
  %t34 = load i64, ptr %l7, !tbaa !24
  %t37 = sub i64 %t33, %t34
  %t38 = load i64, ptr %l9, !tbaa !24
  %t41 = add i64 %t37, %t38
  %t43 = sub i64 %t41, 1
  %t44 = load i64, ptr %l9, !tbaa !24
  %t47 = sdiv i64 %t43, %t44
  store i64 %t47, ptr %l30, !tbaa !24
  br label %bb12
bb11:
  store i64 0, ptr %l30, !tbaa !24
  br label %bb12
bb12:
  %t49 = load i64, ptr %l30, !tbaa !24
  store i64 %t49, ptr %l27, !tbaa !24
  br label %bb13
bb13:
  %t50 = load i64, ptr %l27, !tbaa !24
  store i64 %t50, ptr %l10, !tbaa !24
  store i64 0, ptr %l11, !tbaa !24
  br label %bb14
bb14:
  %t51 = load i64, ptr %l11, !tbaa !24
  %t52 = load i64, ptr %l10, !tbaa !24
  %t55 = icmp slt i64 %t51, %t52
  %t57 = xor i1 %t55, true
  br i1 %t57, label %bb15, label %bb16
bb15:
  br label %bb28
bb16:
  br label %bb17
bb17:
  %t59 = load i64, ptr %l7, !tbaa !24
  %t60 = load i64, ptr %l11, !tbaa !24
  %t61 = load i64, ptr %l9, !tbaa !24
  %t64 = mul i64 %t60, %t61
  %t67 = add i64 %t59, %t64
  store i64 %t67, ptr %l12, !tbaa !24
  %t69 = load i32, ptr %l5, !tbaa !23
  %t70 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t73 = icmp ne i32 %t69, %t70
  br i1 %t73, label %bb18, label %bb19
bb18:
  %t75 = load ptr, ptr %l0, !tbaa !29
  %t77 = getelementptr %"compiler/generic:Program", ptr %t75, i32 0, i32 2
  store ptr %t77, ptr %l53, !tbaa !29
  %t78 = load ptr, ptr %l2, !tbaa !29
  %t79 = load i64, ptr %l12, !tbaa !24
  %t82 = call i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2eAt_3ccompiler_2ftypes_3aTypeId_3e(ptr %v2, ptr %t78, i64 %t79)
  store i32 %t82, ptr %l56
  br label %bb20
bb19:
  store i1 false, ptr %l51, !tbaa !21
  br label %bb23
bb20:
  %t83 = load ptr, ptr %l53, !tbaa !29
  %t84 = load i32, ptr %l56, !tbaa !23
  %t85 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrOf(ptr %v0, ptr %t83, i32 %t84)
  store i32 %t85, ptr %l57
  br label %bb21
bb21:
  %t86 = load ptr, ptr %l0, !tbaa !29
  %t88 = getelementptr %"compiler/generic:Program", ptr %t86, i32 0, i32 2
  %t89 = load i32, ptr %l5, !tbaa !23
  %t92 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrOf(ptr %v0, ptr %t88, i32 %t89)
  store i32 %t92, ptr %l61
  br label %bb22
bb22:
  %t93 = load i32, ptr %l57, !tbaa !23
  %t94 = load i32, ptr %l61, !tbaa !23
  %t95 = icmp eq i32 %t93, %t94
  store i1 %t95, ptr %l51, !tbaa !21
  br label %bb23
bb23:
  %t97 = load i1, ptr %l51, !tbaa !21
  br i1 %t97, label %bb24, label %bb25
bb24:
  %t98 = load i64, ptr %l12, !tbaa !24
  store i64 %t98, ptr %l6, !tbaa !24
  br label %bb26
bb25:
  br label %bb26
bb26:
  br label %bb27
bb27:
  %t100 = load i64, ptr %l11, !tbaa !24
  %t102 = add i64 %t100, 1
  store i64 %t102, ptr %l11, !tbaa !24
  br label %bb14
bb28:
  %t104 = load i64, ptr %l6, !tbaa !24
  %t106 = icmp slt i64 %t104, 0
  br i1 %t106, label %bb29, label %bb30
bb29:
  %t108 = load ptr, ptr %l2, !tbaa !29
  %t109 = load i32, ptr %l5, !tbaa !23
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2ePush_3ccompiler_2ftypes_3aTypeId_3e(ptr %v2, ptr %t108, i32 %t109)
  br label %bb31
bb30:
  %t112 = load ptr, ptr %l0, !tbaa !29
  %t114 = getelementptr %"compiler/generic:Program", ptr %t112, i32 0, i32 2
  store ptr %t114, ptr %l71, !tbaa !29
  %t115 = load ptr, ptr %l2, !tbaa !29
  %t116 = load i64, ptr %l6, !tbaa !24
  %t119 = call i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2eAt_3ccompiler_2ftypes_3aTypeId_3e(ptr %v2, ptr %t115, i64 %t116)
  store i32 %t119, ptr %l74
  br label %bb32
bb31:
  br label %bb49
bb32:
  %t120 = load ptr, ptr %l71, !tbaa !29
  %t121 = load i32, ptr %l74, !tbaa !23
  %t122 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t120, i32 %t121)
  store i32 %t122, ptr %l75
  br label %bb33
bb33:
  %t123 = load i32, ptr %l75, !range !{i32 0, i32 33}
  %t125 = trunc i64 28 to i32
  %t126 = icmp eq i32 %t123, %t125
  %t128 = xor i1 %t126, true
  br i1 %t128, label %bb34, label %bb35
bb34:
  store i1 true, ptr %l79, !tbaa !21
  br label %bb37
bb35:
  %t130 = load ptr, ptr %l0, !tbaa !29
  %t132 = getelementptr %"compiler/generic:Program", ptr %t130, i32 0, i32 2
  %t133 = load i32, ptr %l5, !tbaa !23
  %t136 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t132, i32 %t133)
  store i32 %t136, ptr %l83
  br label %bb36
bb36:
  %t137 = load i32, ptr %l83, !range !{i32 0, i32 33}
  %t139 = trunc i64 28 to i32
  %t140 = icmp eq i32 %t137, %t139
  %t142 = xor i1 %t140, true
  store i1 %t142, ptr %l79, !tbaa !21
  br label %bb37
bb37:
  %t144 = load i1, ptr %l79, !tbaa !21
  br i1 %t144, label %bb38, label %bb39
bb38:
  %t145 = load ptr, ptr %l2, !tbaa !29
  store ptr %t145, ptr %l87, !tbaa !29
  %t146 = load i64, ptr %l6, !tbaa !24
  store i64 %t146, ptr %l88, !tbaa !24
  %t147 = load ptr, ptr %l0, !tbaa !29
  %t149 = getelementptr %"compiler/generic:Program", ptr %t147, i32 0, i32 2
  %t150 = load i32, ptr %l5, !tbaa !23
  %t153 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrOf(ptr %v0, ptr %t149, i32 %t150)
  store i32 %t153, ptr %l92
  br label %bb40
bb39:
  %t154 = load ptr, ptr %l2, !tbaa !29
  store ptr %t154, ptr %l93, !tbaa !29
  %t155 = load i64, ptr %l6, !tbaa !24
  store i64 %t155, ptr %l94, !tbaa !24
  %t156 = load ptr, ptr %l0, !tbaa !29
  %t158 = getelementptr %"compiler/generic:Program", ptr %t156, i32 0, i32 2
  store ptr %t158, ptr %l96, !tbaa !29
  %t159 = load ptr, ptr %l0, !tbaa !29
  %t161 = getelementptr %"compiler/generic:Program", ptr %t159, i32 0, i32 2
  %t162 = load i32, ptr %l5, !tbaa !23
  %t165 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrOf(ptr %v0, ptr %t161, i32 %t162)
  store i32 %t165, ptr %l100
  br label %bb42
bb40:
  %t166 = load ptr, ptr %l87, !tbaa !29
  %t167 = load i64, ptr %l88, !tbaa !24
  %t168 = load i32, ptr %l92, !tbaa !23
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2eSetAt_3ccompiler_2ftypes_3aTypeId_3e(ptr %v2, ptr %t166, i64 %t167, i32 %t168)
  br label %bb41
bb41:
  br label %bb48
bb42:
  %t169 = load ptr, ptr %l0, !tbaa !29
  %t171 = getelementptr %"compiler/generic:Program", ptr %t169, i32 0, i32 2
  store ptr %t171, ptr %l102, !tbaa !29
  %t172 = load ptr, ptr %l2, !tbaa !29
  %t173 = load i64, ptr %l6, !tbaa !24
  %t176 = call i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2eAt_3ccompiler_2ftypes_3aTypeId_3e(ptr %v2, ptr %t172, i64 %t173)
  store i32 %t176, ptr %l105
  br label %bb43
bb43:
  %t177 = load ptr, ptr %l102, !tbaa !29
  %t178 = load i32, ptr %l105, !tbaa !23
  %t179 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrMask(ptr %v0, ptr %t177, i32 %t178)
  store i64 %t179, ptr %l106
  br label %bb44
bb44:
  %t180 = load ptr, ptr %l0, !tbaa !29
  %t182 = getelementptr %"compiler/generic:Program", ptr %t180, i32 0, i32 2
  %t183 = load i32, ptr %l5, !tbaa !23
  %t186 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrMask(ptr %v0, ptr %t182, i32 %t183)
  store i64 %t186, ptr %l110
  br label %bb45
bb45:
  %t187 = load i64, ptr %l106, !tbaa !65
  %t188 = load i64, ptr %l110, !tbaa !65
  %t189 = or i64 %t187, %t188
  %t190 = load ptr, ptr %l96, !tbaa !29
  %t191 = load i32, ptr %l100, !tbaa !23
  %t193 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrWords(ptr %v0, ptr %t190, i32 %t191, i64 %t189)
  store i32 %t193, ptr %l112
  br label %bb46
bb46:
  %t194 = load ptr, ptr %l93, !tbaa !29
  %t195 = load i64, ptr %l94, !tbaa !24
  %t196 = load i32, ptr %l112, !tbaa !23
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2eSetAt_3ccompiler_2ftypes_3aTypeId_3e(ptr %v2, ptr %t194, i64 %t195, i32 %t196)
  br label %bb47
bb47:
  br label %bb48
bb48:
  br label %bb49
bb49:
  br label %bb50
bb50:
  %t197 = load i64, ptr %l4, !tbaa !24
  %t199 = add i64 %t197, 1
  store i64 %t199, ptr %l4, !tbaa !24
  br label %bb1
bb51:
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2enamedPartsReady(ptr %v0, ptr %a0, i32 %a1, i64 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca i64
  %l3 = alloca i32
  %l4 = alloca { i64, ptr }
  %l5 = alloca i64
  %l6 = alloca i64
  %l8 = alloca { i64, ptr }
  %l9 = alloca i64
  %l10 = alloca i64
  %l13 = alloca ptr
  %l17 = alloca i32
  %l18 = alloca i32
  %l22 = alloca ptr
  %l26 = alloca i32
  %l27 = alloca { i64, ptr }
  %l34 = alloca { i64, ptr }
  %l46 = alloca ptr
  %l50 = alloca i32
  %l51 = alloca { i64, ptr }
  %l58 = alloca { i64, ptr }
  %l69 = alloca ptr
  %l73 = alloca i32
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  store i64 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/generic:Program", ptr %t1, i32 0, i32 2
  store ptr %t3, ptr %l13, !tbaa !29
  %t4 = load ptr, ptr %l0, !tbaa !29
  %t6 = getelementptr %"compiler/generic:Program", ptr %t4, i32 0, i32 2
  %t7 = load i32, ptr %l1, !tbaa !23
  %t10 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %t6, i32 %t7)
  store i32 %t10, ptr %l17
  br label %bb1
bb1:
  %t11 = load ptr, ptr %l13, !tbaa !29
  %t12 = load i32, ptr %l17, !tbaa !23
  %t13 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclKindOf(ptr %v0, ptr %t11, i32 %t12)
  store i32 %t13, ptr %l18
  br label %bb2
bb2:
  %t14 = load i32, ptr %l18, !range !{i32 0, i32 6}
  store i32 %t14, ptr %l3
  %t15 = load i32, ptr %l3, !range !{i32 0, i32 6}
  %t17 = trunc i64 0 to i32
  %t18 = icmp eq i32 %t15, %t17
  br i1 %t18, label %bb3, label %bb4
bb3:
  br label %bb5
bb4:
  br label %bb15
bb5:
  %t20 = load ptr, ptr %l0, !tbaa !29
  %t22 = getelementptr %"compiler/generic:Program", ptr %t20, i32 0, i32 2
  store ptr %t22, ptr %l22, !tbaa !29
  %t23 = load ptr, ptr %l0, !tbaa !29
  %t25 = getelementptr %"compiler/generic:Program", ptr %t23, i32 0, i32 2
  %t26 = load i32, ptr %l1, !tbaa !23
  %t29 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eFields(ptr %v0, ptr %t25, i32 %t26)
  store i32 %t29, ptr %l26
  br label %bb6
bb6:
  %t30 = load ptr, ptr %l22, !tbaa !29
  %t31 = load i32, ptr %l26, !tbaa !23
  %t32 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t30, i32 %t31)
  store { i64, ptr } %t32, ptr %l27
  br label %bb7
bb7:
  %t33 = load { i64, ptr }, ptr %l27, !tbaa !27
  store { i64, ptr } %t33, ptr %l4, !tbaa !27
  store i64 0, ptr %l5, !tbaa !24
  %t34 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t36 = extractvalue { i64, ptr } %t34, 0
  store i64 %t36, ptr %l6, !tbaa !24
  br label %bb8
bb8:
  %t38 = load i64, ptr %l5, !tbaa !24
  %t39 = load i64, ptr %l6, !tbaa !24
  %t42 = icmp slt i64 %t38, %t39
  %t44 = xor i1 %t42, true
  br i1 %t44, label %bb9, label %bb10
bb9:
  br label %bb14
bb10:
  br label %bb11
bb11:
  %t46 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t46, ptr %l34, !tbaa !27
  %t47 = load i64, ptr %l5, !tbaa !24
  %t49 = getelementptr { i64, ptr }, ptr %l34, i32 0, i32 1
  %t50 = load ptr, ptr %t49, !tbaa !27
  %t51 = getelementptr i32, ptr %t50, i64 %t47
  %t52 = load i32, ptr %t51, !tbaa !33
  %t54 = load ptr, ptr %l0, !tbaa !29
  %t56 = load i64, ptr %l2, !tbaa !24
  %t58 = add i64 %t56, 1
  call void @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2epartsReady(ptr %v0, ptr %t54, i32 %t52, i64 %t58)
  br label %bb12
bb12:
  br label %bb13
bb13:
  %t62 = load i64, ptr %l5, !tbaa !24
  %t64 = add i64 %t62, 1
  store i64 %t64, ptr %l5, !tbaa !24
  br label %bb8
bb14:
  br label %bb39
bb15:
  %t66 = load i32, ptr %l3, !range !{i32 0, i32 6}
  %t68 = trunc i64 1 to i32
  %t69 = icmp eq i32 %t66, %t68
  br i1 %t69, label %bb16, label %bb17
bb16:
  br label %bb18
bb17:
  br label %bb28
bb18:
  %t71 = load ptr, ptr %l0, !tbaa !29
  %t73 = getelementptr %"compiler/generic:Program", ptr %t71, i32 0, i32 2
  store ptr %t73, ptr %l46, !tbaa !29
  %t74 = load ptr, ptr %l0, !tbaa !29
  %t76 = getelementptr %"compiler/generic:Program", ptr %t74, i32 0, i32 2
  %t77 = load i32, ptr %l1, !tbaa !23
  %t80 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eCases(ptr %v0, ptr %t76, i32 %t77)
  store i32 %t80, ptr %l50
  br label %bb19
bb19:
  %t81 = load ptr, ptr %l46, !tbaa !29
  %t82 = load i32, ptr %l50, !tbaa !23
  %t83 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t81, i32 %t82)
  store { i64, ptr } %t83, ptr %l51
  br label %bb20
bb20:
  %t84 = load { i64, ptr }, ptr %l51, !tbaa !27
  store { i64, ptr } %t84, ptr %l8, !tbaa !27
  store i64 0, ptr %l9, !tbaa !24
  %t85 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t87 = extractvalue { i64, ptr } %t85, 0
  store i64 %t87, ptr %l10, !tbaa !24
  br label %bb21
bb21:
  %t89 = load i64, ptr %l9, !tbaa !24
  %t90 = load i64, ptr %l10, !tbaa !24
  %t93 = icmp slt i64 %t89, %t90
  %t95 = xor i1 %t93, true
  br i1 %t95, label %bb22, label %bb23
bb22:
  br label %bb27
bb23:
  br label %bb24
bb24:
  %t97 = load { i64, ptr }, ptr %l8, !tbaa !27
  store { i64, ptr } %t97, ptr %l58, !tbaa !27
  %t98 = load i64, ptr %l9, !tbaa !24
  %t100 = getelementptr { i64, ptr }, ptr %l58, i32 0, i32 1
  %t101 = load ptr, ptr %t100, !tbaa !27
  %t102 = getelementptr i32, ptr %t101, i64 %t98
  %t103 = load i32, ptr %t102, !tbaa !33
  %t105 = load ptr, ptr %l0, !tbaa !29
  %t107 = load i64, ptr %l2, !tbaa !24
  %t109 = add i64 %t107, 1
  call void @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2epartsReady(ptr %v0, ptr %t105, i32 %t103, i64 %t109)
  br label %bb25
bb25:
  br label %bb26
bb26:
  %t113 = load i64, ptr %l9, !tbaa !24
  %t115 = add i64 %t113, 1
  store i64 %t115, ptr %l9, !tbaa !24
  br label %bb21
bb27:
  br label %bb39
bb28:
  %t117 = load i32, ptr %l3, !range !{i32 0, i32 6}
  %t119 = trunc i64 4 to i32
  %t120 = icmp eq i32 %t117, %t119
  br i1 %t120, label %bb29, label %bb30
bb29:
  br label %bb31
bb30:
  br label %bb34
bb31:
  %t122 = load ptr, ptr %l0, !tbaa !29
  store ptr %t122, ptr %l69, !tbaa !29
  %t123 = load ptr, ptr %l0, !tbaa !29
  %t125 = getelementptr %"compiler/generic:Program", ptr %t123, i32 0, i32 2
  %t126 = load i32, ptr %l1, !tbaa !23
  %t129 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eBase(ptr %v0, ptr %t125, i32 %t126)
  store i32 %t129, ptr %l73
  br label %bb32
bb32:
  %t130 = load i64, ptr %l2, !tbaa !24
  %t132 = add i64 %t130, 1
  %t133 = load ptr, ptr %l69, !tbaa !29
  %t134 = load i32, ptr %l73, !tbaa !23
  call void @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2epartsReady(ptr %v0, ptr %t133, i32 %t134, i64 %t132)
  br label %bb33
bb33:
  br label %bb39
bb34:
  br i1 true, label %bb35, label %bb36
bb35:
  br label %bb37
bb36:
  br label %bb38
bb37:
  br label %bb39
bb38:
  call void @__olang_check_failed(ptr @olang_loc_d8871aa8b676c7fe_520748c7780fd5d2)
  unreachable
bb39:
  br label %ret
ret:
  ret void
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

define dso_local void @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2epromiseErr(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1, ptr %a2, %"compiler/diagmsg:Msg" %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l4 = alloca %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0"
  %l10 = alloca %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0"
  %l11 = alloca i1
  %l15 = alloca i1
  %l16 = alloca i32
  %l22 = alloca ptr
  %l28 = alloca { i64, [3 x i64] }
  %l30 = alloca i64
  %s0 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store ptr %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l1, !tbaa !29
  %t3 = getelementptr %"compiler/generic:Context", ptr %t1, i32 0, i32 0
  %t4 = load i64, ptr %t3, !tbaa !24
  %t5 = load ptr, ptr %l2, !tbaa !29
  %t7 = getelementptr %"compiler/ast:Promise", ptr %t5, i32 0, i32 0
  %t8 = getelementptr %"compiler/source:Span", ptr %t7, i32 0, i32 0
  %t9 = load i32, ptr %t8, !tbaa !23
  %t11 = sext i32 %t9 to i64
  %t14 = call %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" @std_2fpair_3aPair_3cI64_2c_20I64_3e_2ector(ptr %s0, i64 %t4, i64 %t11)
  store %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t14, ptr %l10
  br label %bb1
bb1:
  %t15 = load %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %l10
  store %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t15, ptr %l4
  %t16 = load ptr, ptr %l0, !tbaa !29
  %t18 = getelementptr %"compiler/generic:Program", ptr %t16, i32 0, i32 26
  %t19 = load %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %l4
  %t22 = call { i32, i1 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H190b78e3c1eec037529224679e114a85(ptr %v0, ptr %t18, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t19)
  %t23 = extractvalue { i32, i1 } %t22, 1
  %t24 = extractvalue { i32, i1 } %t22, 0
  store i32 %t24, ptr %l16
  %t25 = icmp ne i32 %t24, 0
  br i1 %t25, label %bb3, label %ok.26, !prof !99
ok.26:
  store i1 %t23, ptr %l15
  br label %bb2
bb2:
  %t27 = load i1, ptr %l15, !tbaa !21
  store i1 %t27, ptr %l11, !tbaa !21
  br label %bb5
bb3:
  br label %bb4
bb4:
  store i1 false, ptr %l11, !tbaa !21
  br label %bb5
bb5:
  %t28 = load i1, ptr %l11, !tbaa !21
  br i1 %t28, label %bb6, label %bb7
bb6:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb7:
  br label %bb8
bb8:
  %t29 = load ptr, ptr %l0, !tbaa !29
  %t31 = getelementptr %"compiler/generic:Program", ptr %t29, i32 0, i32 26
  %t32 = load %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %l4
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H1308596c866d4be061d9da9113abde88(ptr %v0, ptr %t31, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t32, i1 true)
  br label %bb9
bb9:
  %t35 = load ptr, ptr %l0, !tbaa !29
  %t37 = getelementptr %"compiler/generic:Program", ptr %t35, i32 0, i32 0
  %t38 = load ptr, ptr %t37, !tbaa !29
  %t40 = getelementptr %"compiler/load:Loader", ptr %t38, i32 0, i32 4
  %t41 = load ptr, ptr %t40, !tbaa !29
  store ptr %t41, ptr %l22, !tbaa !29
  %t42 = load ptr, ptr %l0, !tbaa !29
  %t43 = load ptr, ptr %l1, !tbaa !29
  %t45 = getelementptr %"compiler/generic:Context", ptr %t43, i32 0, i32 0
  %t46 = load i64, ptr %t45, !tbaa !24
  %t47 = load ptr, ptr %l2, !tbaa !29
  %t49 = getelementptr %"compiler/ast:Promise", ptr %t47, i32 0, i32 0
  %t50 = load %"compiler/source:Span", ptr %t49
  %t54 = call { i64, [3 x i64] } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eat(ptr %v0, ptr %t42, i64 %t46, %"compiler/source:Span" %t50)
  store { i64, [3 x i64] } %t54, ptr %l28
  br label %bb10
bb10:
  %t56 = load ptr, ptr %l22, !tbaa !29
  %t57 = load { i64, [3 x i64] }, ptr %l28
  %t59 = call i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eError(ptr %v0, ptr %v3, ptr %t56, { i64, [3 x i64] } %t57, %"compiler/diagmsg:Msg" %a3)
  store i64 %t59, ptr %l30
  br label %bb11
bb11:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2ereadsLocal(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, ptr %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca %"compiler/source:Span"
  %l4 = alloca i32
  %l5 = alloca i32
  %l6 = alloca ptr
  %l7 = alloca ptr
  %l8 = alloca ptr
  %l9 = alloca ptr
  %l10 = alloca ptr
  %l11 = alloca ptr
  %l12 = alloca ptr
  %l13 = alloca { i64, ptr }
  %l14 = alloca ptr
  %l15 = alloca { i64, ptr }
  %l19 = alloca ptr
  %l20 = alloca i1
  %l28 = alloca ptr
  %l32 = alloca i64
  %l34 = alloca %"compiler/names:Ref"
  %l38 = alloca i1
  %l40 = alloca ptr
  %l41 = alloca i32
  %l45 = alloca i32
  %l46 = alloca i32
  %l48 = alloca i32
  %l54 = alloca i1
  %l57 = alloca i1
  %l58 = alloca ptr
  %l59 = alloca i1
  %l62 = alloca ptr
  %l63 = alloca i1
  %l66 = alloca ptr
  %l67 = alloca i1
  %l72 = alloca ptr
  %l73 = alloca i1
  %l78 = alloca ptr
  %l79 = alloca i1
  %l84 = alloca ptr
  %l85 = alloca i1
  %l90 = alloca ptr
  %l91 = alloca i1
  %l96 = alloca ptr
  %l97 = alloca i1
  %l106 = alloca i1
  %l107 = alloca ptr
  %l108 = alloca i1
  %l119 = alloca i1
  %l120 = alloca i1
  %l125 = alloca i1
  %l126 = alloca ptr
  %l127 = alloca i1
  %l140 = alloca i1
  %l141 = alloca i1
  %l146 = alloca i1
  %l147 = alloca i1
  %l152 = alloca i1
  %l153 = alloca ptr
  %l154 = alloca i1
  %l165 = alloca i1
  %l167 = alloca i1
  %l172 = alloca i1
  %l173 = alloca i1
  %l177 = alloca i1
  %l178 = alloca ptr
  %l179 = alloca i1
  %l190 = alloca i1
  %l191 = alloca i1
  %l195 = alloca i1
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store ptr %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l2, !tbaa !29
  %t3 = icmp eq ptr %t1, null
  br i1 %t3, label %bb1, label %bb2
bb1:
  store i1 false, ptr %rv
  br label %ret
bb2:
  br label %bb3
bb3:
  %t6 = load ptr, ptr %l2, !tbaa !29
  store ptr %t6, ptr %l19, !tbaa !29
  store i1 false, ptr %l20, !tbaa !21
  %t7 = load ptr, ptr %l19, !tbaa !29
  %t8 = icmp ne ptr %t7, null
  br i1 %t8, label %bb4, label %bb5
bb4:
  %t10 = load ptr, ptr %l19, !tbaa !29
  %t11 = load i64, ptr %t10, !range !{i64 0, i64 28}
  %t13 = icmp eq i64 %t11, 0
  store i1 %t13, ptr %l20, !tbaa !21
  br label %bb5
bb5:
  %t14 = load i1, ptr %l20, !tbaa !21
  br i1 %t14, label %bb6, label %bb7
bb6:
  %t15 = load ptr, ptr %l2, !tbaa !29
  %t17 = getelementptr { i64, [4 x i64] }, ptr %t15, i32 0, i32 1
  %t18 = getelementptr { %"compiler/source:Span", i32 }, ptr %t17, i32 0, i32 0
  %t19 = load %"compiler/source:Span", ptr %t18
  store %"compiler/source:Span" %t19, ptr %l3
  %t21 = load ptr, ptr %l2, !tbaa !29
  %t23 = getelementptr { i64, [4 x i64] }, ptr %t21, i32 0, i32 1
  %t24 = getelementptr { %"compiler/source:Span", i32 }, ptr %t23, i32 0, i32 1
  %t25 = load i32, ptr %t24
  store i32 %t25, ptr %l4, !tbaa !23
  br label %bb8
bb7:
  br label %bb25
bb8:
  %t27 = load ptr, ptr %l0, !tbaa !29
  %t29 = getelementptr %"compiler/generic:Program", ptr %t27, i32 0, i32 1
  %t30 = load ptr, ptr %t29, !tbaa !29
  store ptr %t30, ptr %l28, !tbaa !29
  %t31 = load ptr, ptr %l0, !tbaa !29
  %t32 = load ptr, ptr %l1, !tbaa !29
  %t34 = getelementptr %"compiler/generic:Context", ptr %t32, i32 0, i32 0
  %t35 = load i64, ptr %t34, !tbaa !24
  %t38 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2efile(ptr %v0, ptr %t31, i64 %t35)
  store i64 %t38, ptr %l32
  br label %bb9
bb9:
  %t39 = getelementptr %"compiler/source:Span", ptr %l3, i32 0, i32 0
  %t40 = load i32, ptr %t39, !tbaa !23
  %t41 = load ptr, ptr %l28, !tbaa !29
  %t42 = load i64, ptr %l32, !tbaa !24
  %t44 = call %"compiler/names:Ref" @compiler_2fnames_2ecompiler_2fnames_3aResolver_2eUse(ptr %v0, ptr %t41, i64 %t42, i32 %t40)
  store %"compiler/names:Ref" %t44, ptr %l34
  br label %bb10
bb10:
  %t45 = getelementptr %"compiler/names:Ref", ptr %l34, i32 0, i32 0
  %t46 = load i32, ptr %t45, !range !{i32 0, i32 9}
  store i32 %t46, ptr %l5
  %t48 = load i32, ptr %l5, !range !{i32 0, i32 9}
  %t50 = trunc i64 1 to i32
  %t51 = icmp eq i32 %t48, %t50
  br i1 %t51, label %bb11, label %bb12
bb11:
  %t53 = load ptr, ptr %l0, !tbaa !29
  %t55 = getelementptr %"compiler/generic:Program", ptr %t53, i32 0, i32 2
  store ptr %t55, ptr %l40, !tbaa !29
  %t56 = load ptr, ptr %l1, !tbaa !29
  %t58 = getelementptr %"compiler/generic:Context", ptr %t56, i32 0, i32 2
  %t59 = load i32, ptr %l4, !tbaa !23
  %t62 = call { i32, i32 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fsource_3aNameId_2c_20compil_Hfd0413fe7fd4e5914f6cad5b418b7a6d(ptr %v1, ptr %t58, i32 %t59)
  %t63 = extractvalue { i32, i32 } %t62, 1
  %t64 = extractvalue { i32, i32 } %t62, 0
  store i32 %t64, ptr %l46
  %t65 = icmp ne i32 %t64, 0
  br i1 %t65, label %bb14, label %ok.66, !prof !99
ok.66:
  store i32 %t63, ptr %l45
  br label %bb13
bb12:
  store i1 false, ptr %l38, !tbaa !21
  br label %bb18
bb13:
  %t67 = load i32, ptr %l45, !tbaa !23
  store i32 %t67, ptr %l41, !tbaa !23
  br label %bb16
bb14:
  br label %bb15
bb15:
  %t68 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  store i32 %t68, ptr %l41, !tbaa !23
  br label %bb16
bb16:
  %t70 = load ptr, ptr %l40, !tbaa !29
  %t71 = load i32, ptr %l41, !tbaa !23
  %t72 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t70, i32 %t71)
  store i32 %t72, ptr %l48
  br label %bb17
bb17:
  %t73 = load i32, ptr %l48, !range !{i32 0, i32 33}
  %t75 = trunc i64 26 to i32
  %t76 = icmp eq i32 %t73, %t75
  store i1 %t76, ptr %l38, !tbaa !21
  br label %bb18
bb18:
  %t78 = load i1, ptr %l38, !tbaa !21
  br i1 %t78, label %bb19, label %bb20
bb19:
  store i1 false, ptr %rv
  br label %ret
bb20:
  br label %bb21
bb21:
  %t80 = load i32, ptr %l5, !range !{i32 0, i32 9}
  %t82 = trunc i64 1 to i32
  %t83 = icmp eq i32 %t80, %t82
  br i1 %t83, label %bb22, label %bb23
bb22:
  store i1 true, ptr %l54, !tbaa !21
  br label %bb24
bb23:
  %t85 = load i32, ptr %l5, !range !{i32 0, i32 9}
  %t87 = trunc i64 0 to i32
  %t88 = icmp eq i32 %t85, %t87
  store i1 %t88, ptr %l54, !tbaa !21
  br label %bb24
bb24:
  %t90 = load i1, ptr %l54, !tbaa !21
  store i1 %t90, ptr %rv
  br label %ret
bb25:
  br i1 true, label %bb26, label %bb27
bb26:
  br label %bb28
bb27:
  br label %bb29
bb28:
  br label %bb30
bb29:
  call void @__olang_check_failed(ptr @olang_loc_a46b2f31ebf5190e_f847dc4b865f1d9a)
  unreachable
bb30:
  %t91 = load ptr, ptr %l2, !tbaa !29
  store ptr %t91, ptr %l58, !tbaa !29
  store i1 false, ptr %l59, !tbaa !21
  %t92 = load ptr, ptr %l58, !tbaa !29
  %t93 = icmp ne ptr %t92, null
  br i1 %t93, label %bb31, label %bb32
bb31:
  %t95 = load ptr, ptr %l58, !tbaa !29
  %t96 = load i64, ptr %t95, !range !{i64 0, i64 28}
  %t98 = icmp eq i64 %t96, 1
  store i1 %t98, ptr %l59, !tbaa !21
  br label %bb32
bb32:
  %t99 = load i1, ptr %l59, !tbaa !21
  br i1 %t99, label %bb33, label %bb34
bb33:
  br label %bb39
bb34:
  %t100 = load ptr, ptr %l2, !tbaa !29
  store ptr %t100, ptr %l62, !tbaa !29
  store i1 false, ptr %l63, !tbaa !21
  %t101 = load ptr, ptr %l62, !tbaa !29
  %t102 = icmp ne ptr %t101, null
  br i1 %t102, label %bb35, label %bb36
bb35:
  %t104 = load ptr, ptr %l62, !tbaa !29
  %t105 = load i64, ptr %t104, !range !{i64 0, i64 28}
  %t107 = icmp eq i64 %t105, 23
  store i1 %t107, ptr %l63, !tbaa !21
  br label %bb36
bb36:
  %t108 = load i1, ptr %l63, !tbaa !21
  br i1 %t108, label %bb37, label %bb38
bb37:
  br label %bb39
bb38:
  br label %bb40
bb39:
  store i1 false, ptr %l57, !tbaa !21
  br label %bb124
bb40:
  %t109 = load ptr, ptr %l2, !tbaa !29
  store ptr %t109, ptr %l66, !tbaa !29
  store i1 false, ptr %l67, !tbaa !21
  %t110 = load ptr, ptr %l66, !tbaa !29
  %t111 = icmp ne ptr %t110, null
  br i1 %t111, label %bb41, label %bb42
bb41:
  %t113 = load ptr, ptr %l66, !tbaa !29
  %t114 = load i64, ptr %t113, !range !{i64 0, i64 28}
  %t116 = icmp eq i64 %t114, 2
  store i1 %t116, ptr %l67, !tbaa !21
  br label %bb42
bb42:
  %t117 = load i1, ptr %l67, !tbaa !21
  br i1 %t117, label %bb43, label %bb44
bb43:
  %t118 = load ptr, ptr %l2, !tbaa !29
  %t120 = getelementptr { i64, [4 x i64] }, ptr %t118, i32 0, i32 1
  %t121 = getelementptr { %"compiler/source:Span", ptr }, ptr %t120, i32 0, i32 1
  %t122 = load ptr, ptr %t121
  store ptr %t122, ptr %l6, !tbaa !29
  br label %bb65
bb44:
  %t124 = load ptr, ptr %l2, !tbaa !29
  store ptr %t124, ptr %l72, !tbaa !29
  store i1 false, ptr %l73, !tbaa !21
  %t125 = load ptr, ptr %l72, !tbaa !29
  %t126 = icmp ne ptr %t125, null
  br i1 %t126, label %bb45, label %bb46
bb45:
  %t128 = load ptr, ptr %l72, !tbaa !29
  %t129 = load i64, ptr %t128, !range !{i64 0, i64 28}
  %t131 = icmp eq i64 %t129, 24
  store i1 %t131, ptr %l73, !tbaa !21
  br label %bb46
bb46:
  %t132 = load i1, ptr %l73, !tbaa !21
  br i1 %t132, label %bb47, label %bb48
bb47:
  %t133 = load ptr, ptr %l2, !tbaa !29
  %t135 = getelementptr { i64, [4 x i64] }, ptr %t133, i32 0, i32 1
  %t136 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t135, i32 0, i32 2
  %t137 = load ptr, ptr %t136
  store ptr %t137, ptr %l6, !tbaa !29
  br label %bb65
bb48:
  %t139 = load ptr, ptr %l2, !tbaa !29
  store ptr %t139, ptr %l78, !tbaa !29
  store i1 false, ptr %l79, !tbaa !21
  %t140 = load ptr, ptr %l78, !tbaa !29
  %t141 = icmp ne ptr %t140, null
  br i1 %t141, label %bb49, label %bb50
bb49:
  %t143 = load ptr, ptr %l78, !tbaa !29
  %t144 = load i64, ptr %t143, !range !{i64 0, i64 28}
  %t146 = icmp eq i64 %t144, 26
  store i1 %t146, ptr %l79, !tbaa !21
  br label %bb50
bb50:
  %t147 = load i1, ptr %l79, !tbaa !21
  br i1 %t147, label %bb51, label %bb52
bb51:
  %t148 = load ptr, ptr %l2, !tbaa !29
  %t150 = getelementptr { i64, [4 x i64] }, ptr %t148, i32 0, i32 1
  %t151 = getelementptr { %"compiler/source:Span", ptr }, ptr %t150, i32 0, i32 1
  %t152 = load ptr, ptr %t151
  store ptr %t152, ptr %l6, !tbaa !29
  br label %bb65
bb52:
  %t154 = load ptr, ptr %l2, !tbaa !29
  store ptr %t154, ptr %l84, !tbaa !29
  store i1 false, ptr %l85, !tbaa !21
  %t155 = load ptr, ptr %l84, !tbaa !29
  %t156 = icmp ne ptr %t155, null
  br i1 %t156, label %bb53, label %bb54
bb53:
  %t158 = load ptr, ptr %l84, !tbaa !29
  %t159 = load i64, ptr %t158, !range !{i64 0, i64 28}
  %t161 = icmp eq i64 %t159, 3
  store i1 %t161, ptr %l85, !tbaa !21
  br label %bb54
bb54:
  %t162 = load i1, ptr %l85, !tbaa !21
  br i1 %t162, label %bb55, label %bb56
bb55:
  %t163 = load ptr, ptr %l2, !tbaa !29
  %t165 = getelementptr { i64, [4 x i64] }, ptr %t163, i32 0, i32 1
  %t166 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t165, i32 0, i32 2
  %t167 = load ptr, ptr %t166
  store ptr %t167, ptr %l6, !tbaa !29
  br label %bb65
bb56:
  %t169 = load ptr, ptr %l2, !tbaa !29
  store ptr %t169, ptr %l90, !tbaa !29
  store i1 false, ptr %l91, !tbaa !21
  %t170 = load ptr, ptr %l90, !tbaa !29
  %t171 = icmp ne ptr %t170, null
  br i1 %t171, label %bb57, label %bb58
bb57:
  %t173 = load ptr, ptr %l90, !tbaa !29
  %t174 = load i64, ptr %t173, !range !{i64 0, i64 28}
  %t176 = icmp eq i64 %t174, 12
  store i1 %t176, ptr %l91, !tbaa !21
  br label %bb58
bb58:
  %t177 = load i1, ptr %l91, !tbaa !21
  br i1 %t177, label %bb59, label %bb60
bb59:
  %t178 = load ptr, ptr %l2, !tbaa !29
  %t180 = getelementptr { i64, [4 x i64] }, ptr %t178, i32 0, i32 1
  %t181 = getelementptr { %"compiler/source:Span", ptr, i32 }, ptr %t180, i32 0, i32 1
  %t182 = load ptr, ptr %t181
  store ptr %t182, ptr %l6, !tbaa !29
  br label %bb65
bb60:
  %t184 = load ptr, ptr %l2, !tbaa !29
  store ptr %t184, ptr %l96, !tbaa !29
  store i1 false, ptr %l97, !tbaa !21
  %t185 = load ptr, ptr %l96, !tbaa !29
  %t186 = icmp ne ptr %t185, null
  br i1 %t186, label %bb61, label %bb62
bb61:
  %t188 = load ptr, ptr %l96, !tbaa !29
  %t189 = load i64, ptr %t188, !range !{i64 0, i64 28}
  %t191 = icmp eq i64 %t189, 11
  store i1 %t191, ptr %l97, !tbaa !21
  br label %bb62
bb62:
  %t192 = load i1, ptr %l97, !tbaa !21
  br i1 %t192, label %bb63, label %bb64
bb63:
  %t193 = load ptr, ptr %l2, !tbaa !29
  %t195 = getelementptr { i64, [4 x i64] }, ptr %t193, i32 0, i32 1
  %t196 = getelementptr { %"compiler/source:Span", ptr, { i64, ptr } }, ptr %t195, i32 0, i32 1
  %t197 = load ptr, ptr %t196
  store ptr %t197, ptr %l6, !tbaa !29
  br label %bb65
bb64:
  br label %bb67
bb65:
  %t199 = load ptr, ptr %l0, !tbaa !29
  %t200 = load ptr, ptr %l1, !tbaa !29
  %t201 = load ptr, ptr %l6, !tbaa !29
  %t206 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2ereadsLocal(ptr %v0, ptr %v1, ptr %v2, ptr %t199, ptr %t200, ptr %t201)
  store i1 %t206, ptr %l106
  br label %bb66
bb66:
  %t207 = load i1, ptr %l106, !tbaa !21
  store i1 %t207, ptr %l57, !tbaa !21
  br label %bb124
bb67:
  %t208 = load ptr, ptr %l2, !tbaa !29
  store ptr %t208, ptr %l107, !tbaa !29
  store i1 false, ptr %l108, !tbaa !21
  %t209 = load ptr, ptr %l107, !tbaa !29
  %t210 = icmp ne ptr %t209, null
  br i1 %t210, label %bb68, label %bb69
bb68:
  %t212 = load ptr, ptr %l107, !tbaa !29
  %t213 = load i64, ptr %t212, !range !{i64 0, i64 28}
  %t215 = icmp eq i64 %t213, 5
  store i1 %t215, ptr %l108, !tbaa !21
  br label %bb69
bb69:
  %t216 = load i1, ptr %l108, !tbaa !21
  br i1 %t216, label %bb70, label %bb71
bb70:
  %t217 = load ptr, ptr %l2, !tbaa !29
  %t219 = getelementptr { i64, [4 x i64] }, ptr %t217, i32 0, i32 1
  %t220 = getelementptr { %"compiler/source:Span", i32, ptr, ptr }, ptr %t219, i32 0, i32 2
  %t221 = load ptr, ptr %t220
  store ptr %t221, ptr %l7, !tbaa !29
  %t223 = load ptr, ptr %l2, !tbaa !29
  %t225 = getelementptr { i64, [4 x i64] }, ptr %t223, i32 0, i32 1
  %t226 = getelementptr { %"compiler/source:Span", i32, ptr, ptr }, ptr %t225, i32 0, i32 3
  %t227 = load ptr, ptr %t226
  store ptr %t227, ptr %l8, !tbaa !29
  br label %bb72
bb71:
  br label %bb78
bb72:
  %t229 = load ptr, ptr %l0, !tbaa !29
  %t230 = load ptr, ptr %l1, !tbaa !29
  %t231 = load ptr, ptr %l7, !tbaa !29
  %t236 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2ereadsLocal(ptr %v0, ptr %v1, ptr %v2, ptr %t229, ptr %t230, ptr %t231)
  store i1 %t236, ptr %l119
  br label %bb73
bb73:
  %t237 = load i1, ptr %l119, !tbaa !21
  br i1 %t237, label %bb74, label %bb75
bb74:
  store i1 true, ptr %l120, !tbaa !21
  br label %bb77
bb75:
  %t238 = load ptr, ptr %l0, !tbaa !29
  %t239 = load ptr, ptr %l1, !tbaa !29
  %t240 = load ptr, ptr %l8, !tbaa !29
  %t245 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2ereadsLocal(ptr %v0, ptr %v1, ptr %v2, ptr %t238, ptr %t239, ptr %t240)
  store i1 %t245, ptr %l125
  br label %bb76
bb76:
  %t246 = load i1, ptr %l125, !tbaa !21
  store i1 %t246, ptr %l120, !tbaa !21
  br label %bb77
bb77:
  %t247 = load i1, ptr %l120, !tbaa !21
  store i1 %t247, ptr %l57, !tbaa !21
  br label %bb124
bb78:
  %t248 = load ptr, ptr %l2, !tbaa !29
  store ptr %t248, ptr %l126, !tbaa !29
  store i1 false, ptr %l127, !tbaa !21
  %t249 = load ptr, ptr %l126, !tbaa !29
  %t250 = icmp ne ptr %t249, null
  br i1 %t250, label %bb79, label %bb80
bb79:
  %t252 = load ptr, ptr %l126, !tbaa !29
  %t253 = load i64, ptr %t252, !range !{i64 0, i64 28}
  %t255 = icmp eq i64 %t253, 8
  store i1 %t255, ptr %l127, !tbaa !21
  br label %bb80
bb80:
  %t256 = load i1, ptr %l127, !tbaa !21
  br i1 %t256, label %bb81, label %bb82
bb81:
  %t257 = load ptr, ptr %l2, !tbaa !29
  %t259 = getelementptr { i64, [4 x i64] }, ptr %t257, i32 0, i32 1
  %t260 = getelementptr { %"compiler/source:Span", ptr, ptr, ptr }, ptr %t259, i32 0, i32 1
  %t261 = load ptr, ptr %t260
  store ptr %t261, ptr %l9, !tbaa !29
  %t263 = load ptr, ptr %l2, !tbaa !29
  %t265 = getelementptr { i64, [4 x i64] }, ptr %t263, i32 0, i32 1
  %t266 = getelementptr { %"compiler/source:Span", ptr, ptr, ptr }, ptr %t265, i32 0, i32 2
  %t267 = load ptr, ptr %t266
  store ptr %t267, ptr %l10, !tbaa !29
  %t269 = load ptr, ptr %l2, !tbaa !29
  %t271 = getelementptr { i64, [4 x i64] }, ptr %t269, i32 0, i32 1
  %t272 = getelementptr { %"compiler/source:Span", ptr, ptr, ptr }, ptr %t271, i32 0, i32 3
  %t273 = load ptr, ptr %t272
  store ptr %t273, ptr %l11, !tbaa !29
  br label %bb83
bb82:
  br label %bb93
bb83:
  %t275 = load ptr, ptr %l0, !tbaa !29
  %t276 = load ptr, ptr %l1, !tbaa !29
  %t277 = load ptr, ptr %l9, !tbaa !29
  %t282 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2ereadsLocal(ptr %v0, ptr %v1, ptr %v2, ptr %t275, ptr %t276, ptr %t277)
  store i1 %t282, ptr %l140
  br label %bb84
bb84:
  %t283 = load i1, ptr %l140, !tbaa !21
  br i1 %t283, label %bb85, label %bb86
bb85:
  store i1 true, ptr %l141, !tbaa !21
  br label %bb88
bb86:
  %t284 = load ptr, ptr %l0, !tbaa !29
  %t285 = load ptr, ptr %l1, !tbaa !29
  %t286 = load ptr, ptr %l10, !tbaa !29
  %t291 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2ereadsLocal(ptr %v0, ptr %v1, ptr %v2, ptr %t284, ptr %t285, ptr %t286)
  store i1 %t291, ptr %l146
  br label %bb87
bb87:
  %t292 = load i1, ptr %l146, !tbaa !21
  store i1 %t292, ptr %l141, !tbaa !21
  br label %bb88
bb88:
  %t293 = load i1, ptr %l141, !tbaa !21
  br i1 %t293, label %bb89, label %bb90
bb89:
  store i1 true, ptr %l147, !tbaa !21
  br label %bb92
bb90:
  %t294 = load ptr, ptr %l0, !tbaa !29
  %t295 = load ptr, ptr %l1, !tbaa !29
  %t296 = load ptr, ptr %l11, !tbaa !29
  %t301 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2ereadsLocal(ptr %v0, ptr %v1, ptr %v2, ptr %t294, ptr %t295, ptr %t296)
  store i1 %t301, ptr %l152
  br label %bb91
bb91:
  %t302 = load i1, ptr %l152, !tbaa !21
  store i1 %t302, ptr %l147, !tbaa !21
  br label %bb92
bb92:
  %t303 = load i1, ptr %l147, !tbaa !21
  store i1 %t303, ptr %l57, !tbaa !21
  br label %bb124
bb93:
  %t304 = load ptr, ptr %l2, !tbaa !29
  store ptr %t304, ptr %l153, !tbaa !29
  store i1 false, ptr %l154, !tbaa !21
  %t305 = load ptr, ptr %l153, !tbaa !29
  %t306 = icmp ne ptr %t305, null
  br i1 %t306, label %bb94, label %bb95
bb94:
  %t308 = load ptr, ptr %l153, !tbaa !29
  %t309 = load i64, ptr %t308, !range !{i64 0, i64 28}
  %t311 = icmp eq i64 %t309, 10
  store i1 %t311, ptr %l154, !tbaa !21
  br label %bb95
bb95:
  %t312 = load i1, ptr %l154, !tbaa !21
  br i1 %t312, label %bb96, label %bb97
bb96:
  %t313 = load ptr, ptr %l2, !tbaa !29
  %t315 = getelementptr { i64, [4 x i64] }, ptr %t313, i32 0, i32 1
  %t316 = getelementptr { %"compiler/source:Span", ptr, { i64, ptr } }, ptr %t315, i32 0, i32 1
  %t317 = load ptr, ptr %t316
  store ptr %t317, ptr %l12, !tbaa !29
  %t319 = load ptr, ptr %l2, !tbaa !29
  %t321 = getelementptr { i64, [4 x i64] }, ptr %t319, i32 0, i32 1
  %t322 = getelementptr { %"compiler/source:Span", ptr, { i64, ptr } }, ptr %t321, i32 0, i32 2
  %t323 = load { i64, ptr }, ptr %t322
  store { i64, ptr } %t323, ptr %l13, !tbaa !27
  br label %bb98
bb97:
  br label %bb108
bb98:
  %t325 = load ptr, ptr %l0, !tbaa !29
  %t326 = load ptr, ptr %l1, !tbaa !29
  %t327 = load ptr, ptr %l12, !tbaa !29
  %t328 = load { i64, ptr }, ptr %l13, !tbaa !27
  %t333 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2einstanceLen(ptr %v0, ptr %v1, ptr %v2, ptr %v2, ptr %t325, ptr %t326, ptr %t327, { i64, ptr } %t328)
  store i1 %t333, ptr %l165
  br label %bb99
bb99:
  %t334 = load i1, ptr %l165, !tbaa !21
  %t335 = xor i1 %t334, true
  br i1 %t335, label %bb100, label %bb101
bb100:
  %t337 = load ptr, ptr %l0, !tbaa !29
  %t338 = load ptr, ptr %l1, !tbaa !29
  %t339 = load ptr, ptr %l12, !tbaa !29
  %t344 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2ereadsLocal(ptr %v0, ptr %v1, ptr %v2, ptr %t337, ptr %t338, ptr %t339)
  store i1 %t344, ptr %l172
  br label %bb102
bb101:
  store i1 false, ptr %l167, !tbaa !21
  br label %bb107
bb102:
  %t345 = load i1, ptr %l172, !tbaa !21
  br i1 %t345, label %bb103, label %bb104
bb103:
  store i1 true, ptr %l173, !tbaa !21
  br label %bb106
bb104:
  %t346 = load ptr, ptr %l0, !tbaa !29
  %t347 = load ptr, ptr %l1, !tbaa !29
  %t348 = load { i64, ptr }, ptr %l13, !tbaa !27
  %t352 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eanyReadsLocal(ptr %v0, ptr %v1, ptr %v2, ptr %t346, ptr %t347, { i64, ptr } %t348)
  store i1 %t352, ptr %l177
  br label %bb105
bb105:
  %t353 = load i1, ptr %l177, !tbaa !21
  store i1 %t353, ptr %l173, !tbaa !21
  br label %bb106
bb106:
  %t354 = load i1, ptr %l173, !tbaa !21
  store i1 %t354, ptr %l167, !tbaa !21
  br label %bb107
bb107:
  %t355 = load i1, ptr %l167, !tbaa !21
  store i1 %t355, ptr %l57, !tbaa !21
  br label %bb124
bb108:
  %t356 = load ptr, ptr %l2, !tbaa !29
  store ptr %t356, ptr %l178, !tbaa !29
  store i1 false, ptr %l179, !tbaa !21
  %t357 = load ptr, ptr %l178, !tbaa !29
  %t358 = icmp ne ptr %t357, null
  br i1 %t358, label %bb109, label %bb110
bb109:
  %t360 = load ptr, ptr %l178, !tbaa !29
  %t361 = load i64, ptr %t360, !range !{i64 0, i64 28}
  %t363 = icmp eq i64 %t361, 13
  store i1 %t363, ptr %l179, !tbaa !21
  br label %bb110
bb110:
  %t364 = load i1, ptr %l179, !tbaa !21
  br i1 %t364, label %bb111, label %bb112
bb111:
  %t365 = load ptr, ptr %l2, !tbaa !29
  %t367 = getelementptr { i64, [4 x i64] }, ptr %t365, i32 0, i32 1
  %t368 = getelementptr { %"compiler/source:Span", ptr, { i64, ptr } }, ptr %t367, i32 0, i32 1
  %t369 = load ptr, ptr %t368
  store ptr %t369, ptr %l14, !tbaa !29
  %t371 = load ptr, ptr %l2, !tbaa !29
  %t373 = getelementptr { i64, [4 x i64] }, ptr %t371, i32 0, i32 1
  %t374 = getelementptr { %"compiler/source:Span", ptr, { i64, ptr } }, ptr %t373, i32 0, i32 2
  %t375 = load { i64, ptr }, ptr %t374
  store { i64, ptr } %t375, ptr %l15, !tbaa !27
  br label %bb113
bb112:
  br label %bb119
bb113:
  %t377 = load ptr, ptr %l0, !tbaa !29
  %t378 = load ptr, ptr %l1, !tbaa !29
  %t379 = load ptr, ptr %l14, !tbaa !29
  %t384 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2ereadsLocal(ptr %v0, ptr %v1, ptr %v2, ptr %t377, ptr %t378, ptr %t379)
  store i1 %t384, ptr %l190
  br label %bb114
bb114:
  %t385 = load i1, ptr %l190, !tbaa !21
  br i1 %t385, label %bb115, label %bb116
bb115:
  store i1 true, ptr %l191, !tbaa !21
  br label %bb118
bb116:
  %t386 = load ptr, ptr %l0, !tbaa !29
  %t387 = load ptr, ptr %l1, !tbaa !29
  %t388 = load { i64, ptr }, ptr %l15, !tbaa !27
  %t392 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eanyReadsLocal(ptr %v0, ptr %v1, ptr %v2, ptr %t386, ptr %t387, { i64, ptr } %t388)
  store i1 %t392, ptr %l195
  br label %bb117
bb117:
  %t393 = load i1, ptr %l195, !tbaa !21
  store i1 %t393, ptr %l191, !tbaa !21
  br label %bb118
bb118:
  %t394 = load i1, ptr %l191, !tbaa !21
  store i1 %t394, ptr %l57, !tbaa !21
  br label %bb124
bb119:
  br i1 true, label %bb120, label %bb121
bb120:
  br label %bb122
bb121:
  br label %bb123
bb122:
  store i1 true, ptr %l57, !tbaa !21
  br label %bb124
bb123:
  call void @__olang_check_failed(ptr @olang_loc_d5893f1f042b494f_34caff30dd5c379b)
  unreachable
bb124:
  %t395 = load i1, ptr %l57, !tbaa !21
  store i1 %t395, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2erecvApplies(ptr %v0, ptr %a0, i64 %a1, i32 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca i32
  %l3 = alloca { i64, ptr }
  %l4 = alloca i32
  %l5 = alloca i64
  %l6 = alloca i64
  %l10 = alloca i32
  %l14 = alloca i1
  %l16 = alloca ptr
  %l20 = alloca i32
  %l21 = alloca { i64, ptr }
  %l26 = alloca ptr
  %l28 = alloca ptr
  %l31 = alloca i32
  %l32 = alloca i32
  %l33 = alloca { i64, ptr }
  %l40 = alloca { i64, ptr }
  %l42 = alloca i32
  %l45 = alloca i32
  %l48 = alloca { i64, ptr }
  %l50 = alloca i32
  %l51 = alloca { i64, ptr }
  %l56 = alloca i32
  %l60 = alloca i1
  %l64 = alloca i32
  %l68 = alloca i32
  %l72 = alloca i64
  %l75 = alloca i64
  %l79 = alloca ptr
  %l83 = alloca i32
  %l87 = alloca i32
  %l88 = alloca i1
  %l94 = alloca i1
  %s0 = alloca %olang.scope
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  store i32 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/generic:Program", ptr %t1, i32 0, i32 2
  %t4 = load i32, ptr %l2, !tbaa !23
  %t7 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t3, i32 %t4)
  store i32 %t7, ptr %l10
  br label %bb1
bb1:
  %t8 = load i32, ptr %l10, !range !{i32 0, i32 33}
  %t10 = trunc i64 18 to i32
  %t11 = icmp eq i32 %t8, %t10
  %t13 = xor i1 %t11, true
  br i1 %t13, label %bb2, label %bb3
bb2:
  store i1 true, ptr %l14, !tbaa !21
  br label %bb6
bb3:
  %t15 = load ptr, ptr %l0, !tbaa !29
  %t17 = getelementptr %"compiler/generic:Program", ptr %t15, i32 0, i32 2
  store ptr %t17, ptr %l16, !tbaa !29
  %t18 = load ptr, ptr %l0, !tbaa !29
  %t20 = getelementptr %"compiler/generic:Program", ptr %t18, i32 0, i32 2
  %t21 = load i32, ptr %l2, !tbaa !23
  %t24 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eArgs(ptr %v0, ptr %t20, i32 %t21)
  store i32 %t24, ptr %l20
  br label %bb4
bb4:
  %t25 = load ptr, ptr %l16, !tbaa !29
  %t26 = load i32, ptr %l20, !tbaa !23
  %t27 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %s0, ptr %t25, i32 %t26)
  store { i64, ptr } %t27, ptr %l21
  br label %bb5
bb5:
  %t28 = load { i64, ptr }, ptr %l21, !tbaa !27
  %t29 = extractvalue { i64, ptr } %t28, 0
  %t31 = icmp eq i64 %t29, 0
  store i1 %t31, ptr %l14, !tbaa !21
  br label %bb6
bb6:
  %t33 = load i1, ptr %l14, !tbaa !21
  br i1 %t33, label %bb7, label %bb8
bb7:
  call void @__olang_scope_close(ptr %s0)
  store i1 true, ptr %rv
  br label %ret
bb8:
  br label %bb9
bb9:
  %t35 = load ptr, ptr %l0, !tbaa !29
  %t37 = getelementptr %"compiler/generic:Program", ptr %t35, i32 0, i32 2
  store ptr %t37, ptr %l26, !tbaa !29
  %t38 = load ptr, ptr %l0, !tbaa !29
  %t40 = getelementptr %"compiler/generic:Program", ptr %t38, i32 0, i32 2
  store ptr %t40, ptr %l28, !tbaa !29
  %t41 = load ptr, ptr %l0, !tbaa !29
  %t42 = load i64, ptr %l1, !tbaa !24
  %t45 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eSig(ptr %v0, ptr %t41, i64 %t42)
  store i32 %t45, ptr %l31
  br label %bb10
bb10:
  %t46 = load ptr, ptr %l28, !tbaa !29
  %t47 = load i32, ptr %l31, !tbaa !23
  %t48 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParams(ptr %v0, ptr %t46, i32 %t47)
  store i32 %t48, ptr %l32
  br label %bb11
bb11:
  %t49 = load ptr, ptr %l26, !tbaa !29
  %t50 = load i32, ptr %l32, !tbaa !23
  %t51 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t49, i32 %t50)
  store { i64, ptr } %t51, ptr %l33
  br label %bb12
bb12:
  %t52 = load { i64, ptr }, ptr %l33, !tbaa !27
  store { i64, ptr } %t52, ptr %l3, !tbaa !27
  %t53 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t55 = extractvalue { i64, ptr } %t53, 0
  %t57 = icmp eq i64 %t55, 0
  br i1 %t57, label %bb13, label %bb14
bb13:
  call void @__olang_scope_close(ptr %s0)
  store i1 true, ptr %rv
  br label %ret
bb14:
  br label %bb15
bb15:
  %t60 = load ptr, ptr %l0, !tbaa !29
  %t62 = getelementptr %"compiler/generic:Program", ptr %t60, i32 0, i32 2
  %t63 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t63, ptr %l40, !tbaa !27
  %t64 = getelementptr { i64, ptr }, ptr %l40, i32 0, i32 1
  %t65 = load ptr, ptr %t64, !tbaa !27
  %t66 = getelementptr i32, ptr %t65, i64 0
  %t67 = load i32, ptr %t66, !tbaa !33
  %t70 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t62, i32 %t67)
  store i32 %t70, ptr %l42
  br label %bb16
bb16:
  %t71 = load i32, ptr %l42, !range !{i32 0, i32 33}
  %t73 = trunc i64 20 to i32
  %t74 = icmp eq i32 %t71, %t73
  br i1 %t74, label %bb17, label %bb18
bb17:
  %t76 = load ptr, ptr %l0, !tbaa !29
  %t78 = getelementptr %"compiler/generic:Program", ptr %t76, i32 0, i32 2
  %t79 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t79, ptr %l48, !tbaa !27
  %t80 = getelementptr { i64, ptr }, ptr %l48, i32 0, i32 1
  %t81 = load ptr, ptr %t80, !tbaa !27
  %t82 = getelementptr i32, ptr %t81, i64 0
  %t83 = load i32, ptr %t82, !tbaa !33
  %t86 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eReferent(ptr %v0, ptr %t78, i32 %t83)
  store i32 %t86, ptr %l50
  br label %bb19
bb18:
  %t87 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t87, ptr %l51, !tbaa !27
  %t88 = getelementptr { i64, ptr }, ptr %l51, i32 0, i32 1
  %t89 = load ptr, ptr %t88, !tbaa !27
  %t90 = getelementptr i32, ptr %t89, i64 0
  %t91 = load i32, ptr %t90, !tbaa !33
  store i32 %t91, ptr %l45, !tbaa !23
  br label %bb20
bb19:
  %t93 = load i32, ptr %l50, !tbaa !23
  store i32 %t93, ptr %l45, !tbaa !23
  br label %bb20
bb20:
  %t94 = load i32, ptr %l45, !tbaa !23
  store i32 %t94, ptr %l4, !tbaa !23
  %t95 = load ptr, ptr %l0, !tbaa !29
  %t97 = getelementptr %"compiler/generic:Program", ptr %t95, i32 0, i32 2
  %t98 = load i32, ptr %l4, !tbaa !23
  %t101 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t97, i32 %t98)
  store i32 %t101, ptr %l56
  br label %bb21
bb21:
  %t102 = load i32, ptr %l56, !range !{i32 0, i32 33}
  %t104 = trunc i64 18 to i32
  %t105 = icmp eq i32 %t102, %t104
  %t107 = xor i1 %t105, true
  br i1 %t107, label %bb22, label %bb23
bb22:
  store i1 true, ptr %l60, !tbaa !21
  br label %bb26
bb23:
  %t109 = load ptr, ptr %l0, !tbaa !29
  %t111 = getelementptr %"compiler/generic:Program", ptr %t109, i32 0, i32 2
  %t112 = load i32, ptr %l4, !tbaa !23
  %t115 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %t111, i32 %t112)
  store i32 %t115, ptr %l64
  br label %bb24
bb24:
  %t116 = load ptr, ptr %l0, !tbaa !29
  %t118 = getelementptr %"compiler/generic:Program", ptr %t116, i32 0, i32 2
  %t119 = load i32, ptr %l2, !tbaa !23
  %t122 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %t118, i32 %t119)
  store i32 %t122, ptr %l68
  br label %bb25
bb25:
  %t123 = load i32, ptr %l64, !tbaa !23
  %t124 = load i32, ptr %l68, !tbaa !23
  %t125 = icmp ne i32 %t123, %t124
  store i1 %t125, ptr %l60, !tbaa !21
  br label %bb26
bb26:
  %t127 = load i1, ptr %l60, !tbaa !21
  br i1 %t127, label %bb27, label %bb28
bb27:
  call void @__olang_scope_close(ptr %s0)
  store i1 true, ptr %rv
  br label %ret
bb28:
  br label %bb29
bb29:
  %t129 = load i64, ptr %l1, !tbaa !24
  %t131 = call i64 @compiler_2fgeneric_2eFnOwner(i64 %t129)
  store i64 %t131, ptr %l72
  br label %bb30
bb30:
  %t132 = load i64, ptr %l72, !tbaa !24
  store i64 %t132, ptr %l5, !tbaa !24
  %t133 = load ptr, ptr %l0, !tbaa !29
  %t134 = load i64, ptr %l5, !tbaa !24
  %t137 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eVarCount(ptr %v0, ptr %t133, i64 %t134)
  store i64 %t137, ptr %l75
  br label %bb31
bb31:
  %t138 = load i64, ptr %l75, !tbaa !24
  store i64 %t138, ptr %l6, !tbaa !24
  %t139 = load i64, ptr %l6, !tbaa !24
  %t141 = icmp eq i64 %t139, 0
  br i1 %t141, label %bb32, label %bb33
bb32:
  %t143 = load ptr, ptr %l0, !tbaa !29
  %t145 = getelementptr %"compiler/generic:Program", ptr %t143, i32 0, i32 2
  store ptr %t145, ptr %l79, !tbaa !29
  %t146 = load ptr, ptr %l0, !tbaa !29
  %t148 = getelementptr %"compiler/generic:Program", ptr %t146, i32 0, i32 2
  %t149 = load i32, ptr %l4, !tbaa !23
  %t152 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePlain(ptr %v0, ptr %t148, i32 %t149)
  store i32 %t152, ptr %l83
  br label %bb34
bb33:
  br label %bb37
bb34:
  %t153 = load ptr, ptr %l0, !tbaa !29
  %t155 = getelementptr %"compiler/generic:Program", ptr %t153, i32 0, i32 2
  %t156 = load i32, ptr %l2, !tbaa !23
  %t159 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePlain(ptr %v0, ptr %t155, i32 %t156)
  store i32 %t159, ptr %l87
  br label %bb35
bb35:
  %t160 = load ptr, ptr %l79, !tbaa !29
  %t161 = load i32, ptr %l83, !tbaa !23
  %t162 = load i32, ptr %l87, !tbaa !23
  %t163 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eSame(ptr %v0, ptr %t160, i32 %t161, i32 %t162)
  store i1 %t163, ptr %l88
  br label %bb36
bb36:
  call void @__olang_scope_close(ptr %s0)
  %t164 = load i1, ptr %l88, !tbaa !21
  store i1 %t164, ptr %rv
  br label %ret
bb37:
  %t165 = load ptr, ptr %l0, !tbaa !29
  %t166 = load i32, ptr %l4, !tbaa !23
  %t167 = load i32, ptr %l2, !tbaa !23
  %t168 = load i64, ptr %l5, !tbaa !24
  %t169 = load i64, ptr %l6, !tbaa !24
  %t175 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eMatches(ptr %v0, ptr %t165, i32 %t166, i32 %t167, i64 %t168, i64 %t169, i1 true)
  store i1 %t175, ptr %l94
  br label %bb38
bb38:
  call void @__olang_scope_close(ptr %s0)
  %t176 = load i1, ptr %l94, !tbaa !21
  store i1 %t176, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local void @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2ereflName(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i32 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i32
  %l3 = alloca i32
  %l4 = alloca { i64, ptr }
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
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
  %l23 = alloca i64
  %l24 = alloca i64
  %l25 = alloca i64
  %l26 = alloca i64
  %l27 = alloca { i64, ptr }
  %l28 = alloca i64
  %l29 = alloca i64
  %l30 = alloca i64
  %l31 = alloca i64
  %l32 = alloca i64
  %l33 = alloca i64
  %l34 = alloca i32
  %l35 = alloca i32
  %l36 = alloca { i64, ptr }
  %l37 = alloca i64
  %l38 = alloca i64
  %l39 = alloca i64
  %l40 = alloca i64
  %l41 = alloca i64
  %l42 = alloca i64
  %l46 = alloca i32
  %l49 = alloca ptr
  %l50 = alloca ptr
  %l52 = alloca ptr
  %l56 = alloca i32
  %l57 = alloca i32
  %l58 = alloca { i64, ptr }
  %l60 = alloca ptr
  %l64 = alloca i32
  %l65 = alloca { i64, ptr }
  %l70 = alloca i1
  %l73 = alloca { i64, ptr }
  %l77 = alloca i32
  %l80 = alloca i1
  %l83 = alloca { i64, ptr }
  %l87 = alloca i32
  %l98 = alloca i64
  %l101 = alloca i64
  %l124 = alloca { i64, ptr }
  %l133 = alloca ptr
  %l134 = alloca ptr
  %l138 = alloca i32
  %l145 = alloca i64
  %l151 = alloca ptr
  %l152 = alloca ptr
  %l156 = alloca i32
  %l157 = alloca ptr
  %l162 = alloca { i64, ptr }
  %l168 = alloca i32
  %l171 = alloca ptr
  %l172 = alloca ptr
  %l176 = alloca i32
  %l177 = alloca ptr
  %l181 = alloca i1
  %l182 = alloca { i64, ptr }
  %l183 = alloca ptr
  %l187 = alloca i1
  %l188 = alloca { i64, ptr }
  %l190 = alloca ptr
  %l194 = alloca i32
  %l195 = alloca { i64, ptr }
  %l201 = alloca i64
  %l204 = alloca i64
  %l227 = alloca { i64, ptr }
  %l236 = alloca { i64, ptr }
  %l242 = alloca i64
  %l245 = alloca i64
  %l263 = alloca ptr
  %l266 = alloca { i64, ptr }
  %l274 = alloca ptr
  %l278 = alloca i32
  %l279 = alloca { i64, ptr }
  %l285 = alloca i64
  %l288 = alloca i64
  %l306 = alloca ptr
  %l309 = alloca { i64, ptr }
  %l312 = alloca { i64, ptr }
  %l315 = alloca i32
  %l319 = alloca i1
  %l323 = alloca i32
  %l326 = alloca ptr
  %l327 = alloca ptr
  %l329 = alloca ptr
  %l333 = alloca i32
  %l334 = alloca i32
  %l335 = alloca { i64, ptr }
  %l338 = alloca ptr
  %l343 = alloca { i64, ptr }
  %l347 = alloca ptr
  %l351 = alloca i64
  %l359 = alloca i32
  %l361 = alloca ptr
  %l365 = alloca i32
  %l366 = alloca { i64, ptr }
  %l369 = alloca ptr
  %l370 = alloca ptr
  %l374 = alloca i32
  %l375 = alloca { i64, ptr }
  %l385 = alloca i64
  %l388 = alloca i64
  %l409 = alloca ptr
  %l410 = alloca ptr
  %l412 = alloca ptr
  %l414 = alloca ptr
  %l417 = alloca { i64, ptr }
  %l420 = alloca i32
  %l421 = alloca i32
  %l422 = alloca i32
  %l423 = alloca { i64, ptr }
  %l430 = alloca ptr
  %l435 = alloca { i64, ptr }
  %s6 = alloca %olang.scope
  %s8 = alloca %olang.scope
  %s9 = alloca %olang.scope
  %s10 = alloca %olang.scope
  %s11 = alloca %olang.scope
  %s12 = alloca %olang.scope
  %s15 = alloca %olang.scope
  %s18 = alloca %olang.scope
  %s21 = alloca %olang.scope
  %s24 = alloca %olang.scope
  %s32 = alloca %olang.scope
  %s35 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store i32 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/generic:Program", ptr %t1, i32 0, i32 2
  %t4 = load i32, ptr %l2, !tbaa !23
  %t7 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t3, i32 %t4)
  store i32 %t7, ptr %l46
  br label %bb1
bb1:
  %t8 = load i32, ptr %l46, !range !{i32 0, i32 33}
  store i32 %t8, ptr %l3
  %t9 = load i32, ptr %l3, !range !{i32 0, i32 33}
  %t11 = trunc i64 18 to i32
  %t12 = icmp eq i32 %t9, %t11
  br i1 %t12, label %bb2, label %bb3
bb2:
  br label %bb4
bb3:
  br label %bb44
bb4:
  %t14 = load ptr, ptr %l1, !tbaa !29
  store ptr %t14, ptr %l49, !tbaa !29
  %t15 = load ptr, ptr %l0, !tbaa !29
  store ptr %t15, ptr %l50, !tbaa !29
  %t16 = load ptr, ptr %l0, !tbaa !29
  %t18 = getelementptr %"compiler/generic:Program", ptr %t16, i32 0, i32 2
  store ptr %t18, ptr %l52, !tbaa !29
  %t19 = load ptr, ptr %l0, !tbaa !29
  %t21 = getelementptr %"compiler/generic:Program", ptr %t19, i32 0, i32 2
  %t22 = load i32, ptr %l2, !tbaa !23
  %t25 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %t21, i32 %t22)
  store i32 %t25, ptr %l56
  br label %bb5
bb5:
  %t26 = load ptr, ptr %l52, !tbaa !29
  %t27 = load i32, ptr %l56, !tbaa !23
  %t28 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclName(ptr %v0, ptr %t26, i32 %t27)
  store i32 %t28, ptr %l57
  br label %bb6
bb6:
  %t29 = load ptr, ptr %l50, !tbaa !29
  %t30 = load i32, ptr %l57, !tbaa !23
  %t31 = call { i64, ptr } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2etext(ptr %v0, ptr %v0, ptr %t29, i32 %t30)
  store { i64, ptr } %t31, ptr %l58
  br label %bb7
bb7:
  %t32 = load ptr, ptr %l49, !tbaa !29
  %t33 = load { i64, ptr }, ptr %l58, !tbaa !27
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v1, ptr %v0, ptr %t32, { i64, ptr } %t33)
  br label %bb8
bb8:
  %t34 = load ptr, ptr %l0, !tbaa !29
  %t36 = getelementptr %"compiler/generic:Program", ptr %t34, i32 0, i32 2
  store ptr %t36, ptr %l60, !tbaa !29
  %t37 = load ptr, ptr %l0, !tbaa !29
  %t39 = getelementptr %"compiler/generic:Program", ptr %t37, i32 0, i32 2
  %t40 = load i32, ptr %l2, !tbaa !23
  %t43 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eArgs(ptr %v0, ptr %t39, i32 %t40)
  store i32 %t43, ptr %l64
  br label %bb9
bb9:
  %t44 = load ptr, ptr %l60, !tbaa !29
  %t45 = load i32, ptr %l64, !tbaa !23
  %t46 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t44, i32 %t45)
  store { i64, ptr } %t46, ptr %l65
  br label %bb10
bb10:
  %t47 = load { i64, ptr }, ptr %l65, !tbaa !27
  store { i64, ptr } %t47, ptr %l4, !tbaa !27
  %t48 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t50 = extractvalue { i64, ptr } %t48, 0
  store i64 %t50, ptr %l5, !tbaa !24
  %t52 = load i64, ptr %l5, !tbaa !24
  %t54 = icmp sgt i64 %t52, 0
  br i1 %t54, label %bb11, label %bb12
bb11:
  %t56 = load ptr, ptr %l0, !tbaa !29
  %t58 = getelementptr %"compiler/generic:Program", ptr %t56, i32 0, i32 2
  %t59 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t59, ptr %l73, !tbaa !27
  %t60 = load i64, ptr %l5, !tbaa !24
  %t62 = sub i64 %t60, 1
  %t64 = getelementptr { i64, ptr }, ptr %l73, i32 0, i32 1
  %t65 = load ptr, ptr %t64, !tbaa !27
  %t66 = getelementptr i32, ptr %t65, i64 %t62
  %t67 = load i32, ptr %t66, !tbaa !33
  %t70 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t58, i32 %t67)
  store i32 %t70, ptr %l77
  br label %bb13
bb12:
  store i1 false, ptr %l70, !tbaa !21
  br label %bb14
bb13:
  %t71 = load i32, ptr %l77, !range !{i32 0, i32 33}
  %t73 = trunc i64 30 to i32
  %t74 = icmp eq i32 %t71, %t73
  store i1 %t74, ptr %l70, !tbaa !21
  br label %bb14
bb14:
  %t76 = load i1, ptr %l70, !tbaa !21
  br i1 %t76, label %bb15, label %bb16
bb15:
  %t77 = load ptr, ptr %l0, !tbaa !29
  %t79 = getelementptr %"compiler/generic:Program", ptr %t77, i32 0, i32 2
  %t80 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t80, ptr %l83, !tbaa !27
  %t81 = load i64, ptr %l5, !tbaa !24
  %t83 = sub i64 %t81, 1
  %t85 = getelementptr { i64, ptr }, ptr %l83, i32 0, i32 1
  %t86 = load ptr, ptr %t85, !tbaa !27
  %t87 = getelementptr i32, ptr %t86, i64 %t83
  %t88 = load i32, ptr %t87, !tbaa !33
  %t91 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrSetItems(ptr %v0, ptr %t79, i32 %t88)
  store i32 %t91, ptr %l87
  br label %bb17
bb16:
  store i1 false, ptr %l80, !tbaa !21
  br label %bb18
bb17:
  %t92 = load i32, ptr %l87, !tbaa !23
  %t93 = icmp eq i32 %t92, 0
  store i1 %t93, ptr %l80, !tbaa !21
  br label %bb18
bb18:
  %t95 = load i1, ptr %l80, !tbaa !21
  br i1 %t95, label %bb19, label %bb20
bb19:
  %t96 = load i64, ptr %l5, !tbaa !24
  %t98 = sub i64 %t96, 1
  store i64 %t98, ptr %l5, !tbaa !24
  br label %bb21
bb20:
  br label %bb21
bb21:
  %t100 = load i64, ptr %l5, !tbaa !24
  %t102 = icmp sgt i64 %t100, 0
  br i1 %t102, label %bb22, label %bb23
bb22:
  %t104 = load ptr, ptr %l1, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePushChar(ptr %v1, ptr %t104, i8 60)
  br label %bb24
bb23:
  br label %bb43
bb24:
  store i64 0, ptr %l6, !tbaa !24
  %t106 = load i64, ptr %l5, !tbaa !24
  store i64 %t106, ptr %l7, !tbaa !24
  store i64 1, ptr %l8, !tbaa !24
  %t108 = load i64, ptr %l7, !tbaa !24
  %t109 = load i64, ptr %l6, !tbaa !24
  %t112 = icmp sgt i64 %t108, %t109
  br i1 %t112, label %bb25, label %bb26
bb25:
  %t114 = load i64, ptr %l8, !tbaa !24
  %t116 = icmp sgt i64 %t114, 0
  br i1 %t116, label %bb27, label %bb28
bb26:
  store i64 0, ptr %l98, !tbaa !24
  br label %bb30
bb27:
  %t118 = load i64, ptr %l7, !tbaa !24
  %t119 = load i64, ptr %l6, !tbaa !24
  %t122 = sub i64 %t118, %t119
  %t123 = load i64, ptr %l8, !tbaa !24
  %t126 = add i64 %t122, %t123
  %t128 = sub i64 %t126, 1
  %t129 = load i64, ptr %l8, !tbaa !24
  %t132 = sdiv i64 %t128, %t129
  store i64 %t132, ptr %l101, !tbaa !24
  br label %bb29
bb28:
  store i64 0, ptr %l101, !tbaa !24
  br label %bb29
bb29:
  %t134 = load i64, ptr %l101, !tbaa !24
  store i64 %t134, ptr %l98, !tbaa !24
  br label %bb30
bb30:
  %t135 = load i64, ptr %l98, !tbaa !24
  store i64 %t135, ptr %l9, !tbaa !24
  store i64 0, ptr %l10, !tbaa !24
  br label %bb31
bb31:
  %t136 = load i64, ptr %l10, !tbaa !24
  %t137 = load i64, ptr %l9, !tbaa !24
  %t140 = icmp slt i64 %t136, %t137
  %t142 = xor i1 %t140, true
  br i1 %t142, label %bb32, label %bb33
bb32:
  br label %bb41
bb33:
  br label %bb34
bb34:
  %t144 = load i64, ptr %l6, !tbaa !24
  %t145 = load i64, ptr %l10, !tbaa !24
  %t146 = load i64, ptr %l8, !tbaa !24
  %t149 = mul i64 %t145, %t146
  %t152 = add i64 %t144, %t149
  store i64 %t152, ptr %l11, !tbaa !24
  %t154 = load i64, ptr %l11, !tbaa !24
  %t156 = icmp sgt i64 %t154, 0
  br i1 %t156, label %bb35, label %bb36
bb35:
  store %olang.scope zeroinitializer, ptr %s6
  %t158 = load ptr, ptr %l1, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v1, ptr %s6, ptr %t158, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d34, i32 0, i32 1) })
  br label %bb37
bb36:
  br label %bb38
bb37:
  call void @__olang_scope_close(ptr %s6)
  br label %bb38
bb38:
  %t160 = load ptr, ptr %l0, !tbaa !29
  %t161 = load ptr, ptr %l1, !tbaa !29
  %t162 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t162, ptr %l124, !tbaa !27
  %t163 = load i64, ptr %l11, !tbaa !24
  %t165 = getelementptr { i64, ptr }, ptr %l124, i32 0, i32 1
  %t166 = load ptr, ptr %t165, !tbaa !27
  %t167 = getelementptr i32, ptr %t166, i64 %t163
  %t168 = load i32, ptr %t167, !tbaa !33
  call void @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2ereflName(ptr %v0, ptr %v1, ptr %t160, ptr %t161, i32 %t168)
  br label %bb39
bb39:
  br label %bb40
bb40:
  %t172 = load i64, ptr %l10, !tbaa !24
  %t174 = add i64 %t172, 1
  store i64 %t174, ptr %l10, !tbaa !24
  br label %bb31
bb41:
  %t176 = load ptr, ptr %l1, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePushChar(ptr %v1, ptr %t176, i8 62)
  br label %bb42
bb42:
  br label %bb43
bb43:
  br label %bb212
bb44:
  %t178 = load i32, ptr %l3, !range !{i32 0, i32 33}
  %t180 = trunc i64 19 to i32
  %t181 = icmp eq i32 %t178, %t180
  br i1 %t181, label %bb45, label %bb46
bb45:
  br label %bb47
bb46:
  br label %bb52
bb47:
  store %olang.scope zeroinitializer, ptr %s8
  %t183 = load ptr, ptr %l1, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v1, ptr %s8, ptr %t183, { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d35, i32 0, i32 1) })
  br label %bb48
bb48:
  %t185 = load ptr, ptr %l0, !tbaa !29
  store ptr %t185, ptr %l133, !tbaa !29
  %t186 = load ptr, ptr %l1, !tbaa !29
  store ptr %t186, ptr %l134, !tbaa !29
  %t187 = load ptr, ptr %l0, !tbaa !29
  %t189 = getelementptr %"compiler/generic:Program", ptr %t187, i32 0, i32 2
  %t190 = load i32, ptr %l2, !tbaa !23
  %t193 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eElem(ptr %v0, ptr %t189, i32 %t190)
  store i32 %t193, ptr %l138
  br label %bb49
bb49:
  %t194 = load ptr, ptr %l133, !tbaa !29
  %t195 = load ptr, ptr %l134, !tbaa !29
  %t196 = load i32, ptr %l138, !tbaa !23
  call void @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2ereflName(ptr %v0, ptr %v1, ptr %t194, ptr %t195, i32 %t196)
  br label %bb50
bb50:
  %t197 = load ptr, ptr %l1, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePushChar(ptr %v1, ptr %t197, i8 62)
  br label %bb51
bb51:
  call void @__olang_scope_close(ptr %s8)
  br label %bb212
bb52:
  %t199 = load i32, ptr %l3, !range !{i32 0, i32 33}
  %t201 = trunc i64 20 to i32
  %t202 = icmp eq i32 %t199, %t201
  br i1 %t202, label %bb53, label %bb54
bb53:
  br label %bb55
bb54:
  br label %bb67
bb55:
  store %olang.scope zeroinitializer, ptr %s9
  %t204 = load ptr, ptr %l0, !tbaa !29
  %t206 = getelementptr %"compiler/generic:Program", ptr %t204, i32 0, i32 2
  %t207 = load i32, ptr %l2, !tbaa !23
  %t210 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePermOf(ptr %v0, ptr %t206, i32 %t207)
  store i64 %t210, ptr %l145
  br label %bb56
bb56:
  %t211 = load i64, ptr %l145, !tbaa !24
  store i64 %t211, ptr %l12, !tbaa !24
  %t212 = load i64, ptr %l12, !tbaa !24
  %t213 = load i64, ptr @G_2ecompiler_2ftypes_2eWritable, !tbaa !24
  %t216 = and i64 %t212, %t213
  %t218 = icmp ne i64 %t216, 0
  br i1 %t218, label %bb57, label %bb58
bb57:
  store %olang.scope zeroinitializer, ptr %s10
  %t220 = load ptr, ptr %l1, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v1, ptr %s10, ptr %t220, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d36, i32 0, i32 1) })
  br label %bb59
bb58:
  br label %bb60
bb59:
  call void @__olang_scope_close(ptr %s10)
  br label %bb60
bb60:
  %t222 = load ptr, ptr %l0, !tbaa !29
  store ptr %t222, ptr %l151, !tbaa !29
  %t223 = load ptr, ptr %l1, !tbaa !29
  store ptr %t223, ptr %l152, !tbaa !29
  %t224 = load ptr, ptr %l0, !tbaa !29
  %t226 = getelementptr %"compiler/generic:Program", ptr %t224, i32 0, i32 2
  %t227 = load i32, ptr %l2, !tbaa !23
  %t230 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eReferent(ptr %v0, ptr %t226, i32 %t227)
  store i32 %t230, ptr %l156
  br label %bb61
bb61:
  %t231 = load ptr, ptr %l151, !tbaa !29
  %t232 = load ptr, ptr %l152, !tbaa !29
  %t233 = load i32, ptr %l156, !tbaa !23
  call void @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2ereflName(ptr %v0, ptr %v1, ptr %t231, ptr %t232, i32 %t233)
  br label %bb62
bb62:
  %t234 = load ptr, ptr %l1, !tbaa !29
  store ptr %t234, ptr %l157, !tbaa !29
  %t235 = load i64, ptr %l12, !tbaa !24
  %t236 = load i64, ptr @G_2ecompiler_2ftypes_2eNullable, !tbaa !24
  %t239 = and i64 %t235, %t236
  %t241 = icmp ne i64 %t239, 0
  br i1 %t241, label %bb63, label %bb64
bb63:
  store { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d37, i32 0, i32 1) }, ptr %l162, !tbaa !27
  br label %bb65
bb64:
  store { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d38, i32 0, i32 1) }, ptr %l162, !tbaa !27
  br label %bb65
bb65:
  %t243 = load ptr, ptr %l157, !tbaa !29
  %t244 = load { i64, ptr }, ptr %l162, !tbaa !27
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v1, ptr %s9, ptr %t243, { i64, ptr } %t244)
  br label %bb66
bb66:
  call void @__olang_scope_close(ptr %s9)
  br label %bb212
bb67:
  %t245 = load i32, ptr %l3, !range !{i32 0, i32 33}
  %t247 = trunc i64 21 to i32
  %t248 = icmp eq i32 %t245, %t247
  br i1 %t248, label %bb68, label %bb69
bb68:
  br label %bb70
bb69:
  br label %bb157
bb70:
  store %olang.scope zeroinitializer, ptr %s11
  %t250 = load ptr, ptr %l0, !tbaa !29
  %t252 = getelementptr %"compiler/generic:Program", ptr %t250, i32 0, i32 2
  %t253 = load i32, ptr %l2, !tbaa !23
  %t256 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eFuncTag(ptr %v0, ptr %t252, i32 %t253)
  store i32 %t256, ptr %l168
  br label %bb71
bb71:
  %t257 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t258 = load i32, ptr %l168, !tbaa !23
  %t260 = icmp ne i32 %t258, %t257
  br i1 %t260, label %bb72, label %bb73
bb72:
  store %olang.scope zeroinitializer, ptr %s12
  %t262 = load ptr, ptr %l0, !tbaa !29
  store ptr %t262, ptr %l171, !tbaa !29
  %t263 = load ptr, ptr %l1, !tbaa !29
  store ptr %t263, ptr %l172, !tbaa !29
  %t264 = load ptr, ptr %l0, !tbaa !29
  %t266 = getelementptr %"compiler/generic:Program", ptr %t264, i32 0, i32 2
  %t267 = load i32, ptr %l2, !tbaa !23
  %t270 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eFuncTag(ptr %v0, ptr %t266, i32 %t267)
  store i32 %t270, ptr %l176
  br label %bb74
bb73:
  br label %bb81
bb74:
  %t271 = load ptr, ptr %l171, !tbaa !29
  %t272 = load ptr, ptr %l172, !tbaa !29
  %t273 = load i32, ptr %l176, !tbaa !23
  call void @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2ereflName(ptr %v0, ptr %v1, ptr %t271, ptr %t272, i32 %t273)
  br label %bb75
bb75:
  %t274 = load ptr, ptr %l1, !tbaa !29
  store ptr %t274, ptr %l177, !tbaa !29
  %t275 = load ptr, ptr %l0, !tbaa !29
  %t277 = getelementptr %"compiler/generic:Program", ptr %t275, i32 0, i32 2
  %t278 = load i32, ptr %l2, !tbaa !23
  %t281 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eFuncNullable(ptr %v0, ptr %t277, i32 %t278)
  store i1 %t281, ptr %l181
  br label %bb76
bb76:
  %t282 = load i1, ptr %l181, !tbaa !21
  br i1 %t282, label %bb77, label %bb78
bb77:
  store { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d39, i32 0, i32 1) }, ptr %l182, !tbaa !27
  br label %bb79
bb78:
  store { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d40, i32 0, i32 1) }, ptr %l182, !tbaa !27
  br label %bb79
bb79:
  %t283 = load ptr, ptr %l177, !tbaa !29
  %t284 = load { i64, ptr }, ptr %l182, !tbaa !27
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v1, ptr %s12, ptr %t283, { i64, ptr } %t284)
  br label %bb80
bb80:
  call void @__olang_scope_close(ptr %s12)
  call void @__olang_scope_close(ptr %s11)
  br label %ret
bb81:
  %t285 = load ptr, ptr %l1, !tbaa !29
  store ptr %t285, ptr %l183, !tbaa !29
  %t286 = load ptr, ptr %l0, !tbaa !29
  %t288 = getelementptr %"compiler/generic:Program", ptr %t286, i32 0, i32 2
  %t289 = load i32, ptr %l2, !tbaa !23
  %t292 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eFuncNullable(ptr %v0, ptr %t288, i32 %t289)
  store i1 %t292, ptr %l187
  br label %bb82
bb82:
  %t293 = load i1, ptr %l187, !tbaa !21
  br i1 %t293, label %bb83, label %bb84
bb83:
  store { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d41, i32 0, i32 1) }, ptr %l188, !tbaa !27
  br label %bb85
bb84:
  store { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d42, i32 0, i32 1) }, ptr %l188, !tbaa !27
  br label %bb85
bb85:
  %t294 = load ptr, ptr %l183, !tbaa !29
  %t295 = load { i64, ptr }, ptr %l188, !tbaa !27
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v1, ptr %s11, ptr %t294, { i64, ptr } %t295)
  br label %bb86
bb86:
  %t296 = load ptr, ptr %l0, !tbaa !29
  %t298 = getelementptr %"compiler/generic:Program", ptr %t296, i32 0, i32 2
  store ptr %t298, ptr %l190, !tbaa !29
  %t299 = load ptr, ptr %l0, !tbaa !29
  %t301 = getelementptr %"compiler/generic:Program", ptr %t299, i32 0, i32 2
  %t302 = load i32, ptr %l2, !tbaa !23
  %t305 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParams(ptr %v0, ptr %t301, i32 %t302)
  store i32 %t305, ptr %l194
  br label %bb87
bb87:
  %t306 = load ptr, ptr %l190, !tbaa !29
  %t307 = load i32, ptr %l194, !tbaa !23
  %t308 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t306, i32 %t307)
  store { i64, ptr } %t308, ptr %l195
  br label %bb88
bb88:
  %t309 = load { i64, ptr }, ptr %l195, !tbaa !27
  store { i64, ptr } %t309, ptr %l13, !tbaa !27
  store i64 0, ptr %l14, !tbaa !24
  %t310 = load { i64, ptr }, ptr %l13, !tbaa !27
  %t312 = extractvalue { i64, ptr } %t310, 0
  store i64 %t312, ptr %l15, !tbaa !24
  store i64 1, ptr %l16, !tbaa !24
  %t314 = load i64, ptr %l15, !tbaa !24
  %t315 = load i64, ptr %l14, !tbaa !24
  %t318 = icmp sgt i64 %t314, %t315
  br i1 %t318, label %bb89, label %bb90
bb89:
  %t320 = load i64, ptr %l16, !tbaa !24
  %t322 = icmp sgt i64 %t320, 0
  br i1 %t322, label %bb91, label %bb92
bb90:
  store i64 0, ptr %l201, !tbaa !24
  br label %bb94
bb91:
  %t324 = load i64, ptr %l15, !tbaa !24
  %t325 = load i64, ptr %l14, !tbaa !24
  %t328 = sub i64 %t324, %t325
  %t329 = load i64, ptr %l16, !tbaa !24
  %t332 = add i64 %t328, %t329
  %t334 = sub i64 %t332, 1
  %t335 = load i64, ptr %l16, !tbaa !24
  %t338 = sdiv i64 %t334, %t335
  store i64 %t338, ptr %l204, !tbaa !24
  br label %bb93
bb92:
  store i64 0, ptr %l204, !tbaa !24
  br label %bb93
bb93:
  %t340 = load i64, ptr %l204, !tbaa !24
  store i64 %t340, ptr %l201, !tbaa !24
  br label %bb94
bb94:
  %t341 = load i64, ptr %l201, !tbaa !24
  store i64 %t341, ptr %l17, !tbaa !24
  store i64 0, ptr %l18, !tbaa !24
  br label %bb95
bb95:
  %t342 = load i64, ptr %l18, !tbaa !24
  %t343 = load i64, ptr %l17, !tbaa !24
  %t346 = icmp slt i64 %t342, %t343
  %t348 = xor i1 %t346, true
  br i1 %t348, label %bb96, label %bb97
bb96:
  br label %bb105
bb97:
  br label %bb98
bb98:
  %t350 = load i64, ptr %l14, !tbaa !24
  %t351 = load i64, ptr %l18, !tbaa !24
  %t352 = load i64, ptr %l16, !tbaa !24
  %t355 = mul i64 %t351, %t352
  %t358 = add i64 %t350, %t355
  store i64 %t358, ptr %l19, !tbaa !24
  %t360 = load i64, ptr %l19, !tbaa !24
  %t362 = icmp sgt i64 %t360, 0
  br i1 %t362, label %bb99, label %bb100
bb99:
  store %olang.scope zeroinitializer, ptr %s15
  %t364 = load ptr, ptr %l1, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v1, ptr %s15, ptr %t364, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d43, i32 0, i32 1) })
  br label %bb101
bb100:
  br label %bb102
bb101:
  call void @__olang_scope_close(ptr %s15)
  br label %bb102
bb102:
  %t366 = load ptr, ptr %l0, !tbaa !29
  %t367 = load ptr, ptr %l1, !tbaa !29
  %t368 = load { i64, ptr }, ptr %l13, !tbaa !27
  store { i64, ptr } %t368, ptr %l227, !tbaa !27
  %t369 = load i64, ptr %l19, !tbaa !24
  %t371 = getelementptr { i64, ptr }, ptr %l227, i32 0, i32 1
  %t372 = load ptr, ptr %t371, !tbaa !27
  %t373 = getelementptr i32, ptr %t372, i64 %t369
  %t374 = load i32, ptr %t373, !tbaa !33
  call void @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2ereflName(ptr %v0, ptr %v1, ptr %t366, ptr %t367, i32 %t374)
  br label %bb103
bb103:
  br label %bb104
bb104:
  %t378 = load i64, ptr %l18, !tbaa !24
  %t380 = add i64 %t378, 1
  store i64 %t380, ptr %l18, !tbaa !24
  br label %bb95
bb105:
  %t382 = load ptr, ptr %l1, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePushChar(ptr %v1, ptr %t382, i8 41)
  br label %bb106
bb106:
  %t384 = load ptr, ptr %l0, !tbaa !29
  %t386 = getelementptr %"compiler/generic:Program", ptr %t384, i32 0, i32 2
  %t387 = load i32, ptr %l2, !tbaa !23
  %t390 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eResults(ptr %v0, ptr %s11, ptr %t386, i32 %t387)
  store { i64, ptr } %t390, ptr %l236
  br label %bb107
bb107:
  %t391 = load { i64, ptr }, ptr %l236, !tbaa !27
  store { i64, ptr } %t391, ptr %l20, !tbaa !27
  store i64 0, ptr %l21, !tbaa !24
  %t392 = load { i64, ptr }, ptr %l20, !tbaa !27
  %t394 = extractvalue { i64, ptr } %t392, 0
  store i64 %t394, ptr %l22, !tbaa !24
  store i64 1, ptr %l23, !tbaa !24
  %t396 = load i64, ptr %l22, !tbaa !24
  %t397 = load i64, ptr %l21, !tbaa !24
  %t400 = icmp sgt i64 %t396, %t397
  br i1 %t400, label %bb108, label %bb109
bb108:
  %t402 = load i64, ptr %l23, !tbaa !24
  %t404 = icmp sgt i64 %t402, 0
  br i1 %t404, label %bb110, label %bb111
bb109:
  store i64 0, ptr %l242, !tbaa !24
  br label %bb113
bb110:
  %t406 = load i64, ptr %l22, !tbaa !24
  %t407 = load i64, ptr %l21, !tbaa !24
  %t410 = sub i64 %t406, %t407
  %t411 = load i64, ptr %l23, !tbaa !24
  %t414 = add i64 %t410, %t411
  %t416 = sub i64 %t414, 1
  %t417 = load i64, ptr %l23, !tbaa !24
  %t420 = sdiv i64 %t416, %t417
  store i64 %t420, ptr %l245, !tbaa !24
  br label %bb112
bb111:
  store i64 0, ptr %l245, !tbaa !24
  br label %bb112
bb112:
  %t422 = load i64, ptr %l245, !tbaa !24
  store i64 %t422, ptr %l242, !tbaa !24
  br label %bb113
bb113:
  %t423 = load i64, ptr %l242, !tbaa !24
  store i64 %t423, ptr %l24, !tbaa !24
  store i64 0, ptr %l25, !tbaa !24
  br label %bb114
bb114:
  store %olang.scope zeroinitializer, ptr %s18
  %t424 = load i64, ptr %l25, !tbaa !24
  %t425 = load i64, ptr %l24, !tbaa !24
  %t428 = icmp slt i64 %t424, %t425
  %t430 = xor i1 %t428, true
  br i1 %t430, label %bb115, label %bb116
bb115:
  call void @__olang_scope_close(ptr %s18)
  br label %bb124
bb116:
  br label %bb117
bb117:
  %t432 = load i64, ptr %l21, !tbaa !24
  %t433 = load i64, ptr %l25, !tbaa !24
  %t434 = load i64, ptr %l23, !tbaa !24
  %t437 = mul i64 %t433, %t434
  %t440 = add i64 %t432, %t437
  store i64 %t440, ptr %l26, !tbaa !24
  %t442 = load ptr, ptr %l1, !tbaa !29
  store ptr %t442, ptr %l263, !tbaa !29
  %t443 = load i64, ptr %l26, !tbaa !24
  %t445 = icmp sgt i64 %t443, 0
  br i1 %t445, label %bb118, label %bb119
bb118:
  store { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d44, i32 0, i32 1) }, ptr %l266, !tbaa !27
  br label %bb120
bb119:
  store { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d45, i32 0, i32 1) }, ptr %l266, !tbaa !27
  br label %bb120
bb120:
  %t447 = load ptr, ptr %l263, !tbaa !29
  %t448 = load { i64, ptr }, ptr %l266, !tbaa !27
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v1, ptr %s18, ptr %t447, { i64, ptr } %t448)
  br label %bb121
bb121:
  %t449 = load ptr, ptr %l0, !tbaa !29
  %t450 = load ptr, ptr %l1, !tbaa !29
  %t451 = load i64, ptr %l26, !tbaa !24
  %t453 = getelementptr { i64, ptr }, ptr %l20, i32 0, i32 1
  %t454 = load ptr, ptr %t453, !tbaa !27
  %t455 = getelementptr i32, ptr %t454, i64 %t451
  %t456 = load i32, ptr %t455, !tbaa !33
  call void @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2ereflName(ptr %v0, ptr %v1, ptr %t449, ptr %t450, i32 %t456)
  br label %bb122
bb122:
  call void @__olang_scope_close(ptr %s18)
  br label %bb123
bb123:
  %t460 = load i64, ptr %l25, !tbaa !24
  %t462 = add i64 %t460, 1
  store i64 %t462, ptr %l25, !tbaa !24
  br label %bb114
bb124:
  %t464 = load ptr, ptr %l0, !tbaa !29
  %t466 = getelementptr %"compiler/generic:Program", ptr %t464, i32 0, i32 2
  store ptr %t466, ptr %l274, !tbaa !29
  %t467 = load ptr, ptr %l0, !tbaa !29
  %t469 = getelementptr %"compiler/generic:Program", ptr %t467, i32 0, i32 2
  %t470 = load i32, ptr %l2, !tbaa !23
  %t473 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrors(ptr %v0, ptr %t469, i32 %t470)
  store i32 %t473, ptr %l278
  br label %bb125
bb125:
  %t474 = load ptr, ptr %l274, !tbaa !29
  %t475 = load i32, ptr %l278, !tbaa !23
  %t476 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t474, i32 %t475)
  store { i64, ptr } %t476, ptr %l279
  br label %bb126
bb126:
  %t477 = load { i64, ptr }, ptr %l279, !tbaa !27
  store { i64, ptr } %t477, ptr %l27, !tbaa !27
  store i64 0, ptr %l28, !tbaa !24
  %t478 = load { i64, ptr }, ptr %l27, !tbaa !27
  %t480 = extractvalue { i64, ptr } %t478, 0
  store i64 %t480, ptr %l29, !tbaa !24
  store i64 1, ptr %l30, !tbaa !24
  %t482 = load i64, ptr %l29, !tbaa !24
  %t483 = load i64, ptr %l28, !tbaa !24
  %t486 = icmp sgt i64 %t482, %t483
  br i1 %t486, label %bb127, label %bb128
bb127:
  %t488 = load i64, ptr %l30, !tbaa !24
  %t490 = icmp sgt i64 %t488, 0
  br i1 %t490, label %bb129, label %bb130
bb128:
  store i64 0, ptr %l285, !tbaa !24
  br label %bb132
bb129:
  %t492 = load i64, ptr %l29, !tbaa !24
  %t493 = load i64, ptr %l28, !tbaa !24
  %t496 = sub i64 %t492, %t493
  %t497 = load i64, ptr %l30, !tbaa !24
  %t500 = add i64 %t496, %t497
  %t502 = sub i64 %t500, 1
  %t503 = load i64, ptr %l30, !tbaa !24
  %t506 = sdiv i64 %t502, %t503
  store i64 %t506, ptr %l288, !tbaa !24
  br label %bb131
bb130:
  store i64 0, ptr %l288, !tbaa !24
  br label %bb131
bb131:
  %t508 = load i64, ptr %l288, !tbaa !24
  store i64 %t508, ptr %l285, !tbaa !24
  br label %bb132
bb132:
  %t509 = load i64, ptr %l285, !tbaa !24
  store i64 %t509, ptr %l31, !tbaa !24
  store i64 0, ptr %l32, !tbaa !24
  br label %bb133
bb133:
  store %olang.scope zeroinitializer, ptr %s21
  %t510 = load i64, ptr %l32, !tbaa !24
  %t511 = load i64, ptr %l31, !tbaa !24
  %t514 = icmp slt i64 %t510, %t511
  %t516 = xor i1 %t514, true
  br i1 %t516, label %bb134, label %bb135
bb134:
  call void @__olang_scope_close(ptr %s21)
  br label %bb154
bb135:
  br label %bb136
bb136:
  %t518 = load i64, ptr %l28, !tbaa !24
  %t519 = load i64, ptr %l32, !tbaa !24
  %t520 = load i64, ptr %l30, !tbaa !24
  %t523 = mul i64 %t519, %t520
  %t526 = add i64 %t518, %t523
  store i64 %t526, ptr %l33, !tbaa !24
  %t528 = load ptr, ptr %l1, !tbaa !29
  store ptr %t528, ptr %l306, !tbaa !29
  %t529 = load i64, ptr %l33, !tbaa !24
  %t531 = icmp sgt i64 %t529, 0
  br i1 %t531, label %bb137, label %bb138
bb137:
  store { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d46, i32 0, i32 1) }, ptr %l309, !tbaa !27
  br label %bb139
bb138:
  store { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d47, i32 0, i32 1) }, ptr %l309, !tbaa !27
  br label %bb139
bb139:
  %t533 = load ptr, ptr %l306, !tbaa !29
  %t534 = load { i64, ptr }, ptr %l309, !tbaa !27
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v1, ptr %s21, ptr %t533, { i64, ptr } %t534)
  br label %bb140
bb140:
  %t535 = load ptr, ptr %l0, !tbaa !29
  %t537 = getelementptr %"compiler/generic:Program", ptr %t535, i32 0, i32 2
  %t538 = load { i64, ptr }, ptr %l27, !tbaa !27
  store { i64, ptr } %t538, ptr %l312, !tbaa !27
  %t539 = load i64, ptr %l33, !tbaa !24
  %t541 = getelementptr { i64, ptr }, ptr %l312, i32 0, i32 1
  %t542 = load ptr, ptr %t541, !tbaa !27
  %t543 = getelementptr i32, ptr %t542, i64 %t539
  %t544 = load i32, ptr %t543, !tbaa !33
  %t547 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrOf(ptr %v0, ptr %t537, i32 %t544)
  store i32 %t547, ptr %l315
  br label %bb141
bb141:
  %t548 = load i32, ptr %l315, !tbaa !23
  store i32 %t548, ptr %l34, !tbaa !23
  %t549 = load i32, ptr %l34, !tbaa !23
  %t550 = load i32, ptr @G_2ecompiler_2ftypes_2eDefaultErrT, !tbaa !23
  %t553 = icmp ne i32 %t549, %t550
  br i1 %t553, label %bb142, label %bb143
bb142:
  %t555 = load ptr, ptr %l0, !tbaa !29
  %t557 = getelementptr %"compiler/generic:Program", ptr %t555, i32 0, i32 2
  %t558 = load i32, ptr %l34, !tbaa !23
  %t561 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t557, i32 %t558)
  store i32 %t561, ptr %l323
  br label %bb144
bb143:
  store i1 false, ptr %l319, !tbaa !21
  br label %bb145
bb144:
  %t562 = load i32, ptr %l323, !range !{i32 0, i32 33}
  %t564 = trunc i64 18 to i32
  %t565 = icmp eq i32 %t562, %t564
  store i1 %t565, ptr %l319, !tbaa !21
  br label %bb145
bb145:
  %t567 = load i1, ptr %l319, !tbaa !21
  br i1 %t567, label %bb146, label %bb147
bb146:
  %t568 = load ptr, ptr %l1, !tbaa !29
  store ptr %t568, ptr %l326, !tbaa !29
  %t569 = load ptr, ptr %l0, !tbaa !29
  store ptr %t569, ptr %l327, !tbaa !29
  %t570 = load ptr, ptr %l0, !tbaa !29
  %t572 = getelementptr %"compiler/generic:Program", ptr %t570, i32 0, i32 2
  store ptr %t572, ptr %l329, !tbaa !29
  %t573 = load ptr, ptr %l0, !tbaa !29
  %t575 = getelementptr %"compiler/generic:Program", ptr %t573, i32 0, i32 2
  %t576 = load i32, ptr %l34, !tbaa !23
  %t579 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %t575, i32 %t576)
  store i32 %t579, ptr %l333
  br label %bb148
bb147:
  br label %bb152
bb148:
  %t580 = load ptr, ptr %l329, !tbaa !29
  %t581 = load i32, ptr %l333, !tbaa !23
  %t582 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclName(ptr %v0, ptr %t580, i32 %t581)
  store i32 %t582, ptr %l334
  br label %bb149
bb149:
  %t583 = load ptr, ptr %l327, !tbaa !29
  %t584 = load i32, ptr %l334, !tbaa !23
  %t585 = call { i64, ptr } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2etext(ptr %v0, ptr %v0, ptr %t583, i32 %t584)
  store { i64, ptr } %t585, ptr %l335
  br label %bb150
bb150:
  %t586 = load ptr, ptr %l326, !tbaa !29
  %t587 = load { i64, ptr }, ptr %l335, !tbaa !27
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v1, ptr %v0, ptr %t586, { i64, ptr } %t587)
  br label %bb151
bb151:
  br label %bb152
bb152:
  call void @__olang_scope_close(ptr %s21)
  br label %bb153
bb153:
  %t588 = load i64, ptr %l32, !tbaa !24
  %t590 = add i64 %t588, 1
  store i64 %t590, ptr %l32, !tbaa !24
  br label %bb133
bb154:
  %t592 = load ptr, ptr %l1, !tbaa !29
  store ptr %t592, ptr %l338, !tbaa !29
  %t593 = load ptr, ptr %l0, !tbaa !29
  %t595 = getelementptr %"compiler/generic:Program", ptr %t593, i32 0, i32 2
  %t596 = load i32, ptr %l2, !tbaa !23
  %t598 = inttoptr i64 0 to ptr
  %t601 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePromiseText(ptr %v0, ptr %s11, ptr %t598, ptr %t595, i32 %t596)
  store { i64, ptr } %t601, ptr %l343
  br label %bb155
bb155:
  %t602 = load { i64, ptr }, ptr %l343, !tbaa !27
  %t603 = extractvalue { i64, ptr } %t602, 0
  %t604 = extractvalue { i64, ptr } %t602, 1
  %t605 = mul i64 %t603, 1
  %t606 = call ptr @__olang_scope_alloc(ptr %s11, i64 %t605)
  call void @llvm.memcpy.p0.p0.i64(ptr %t606, ptr %t604, i64 %t605, i1 false)
  %t607 = insertvalue { i64, ptr } undef, i64 %t603, 0
  %t608 = insertvalue { i64, ptr } %t607, ptr %t606, 1
  %t609 = load ptr, ptr %l338, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v1, ptr %s11, ptr %t609, { i64, ptr } %t608)
  br label %bb156
bb156:
  call void @__olang_scope_close(ptr %s11)
  br label %bb212
bb157:
  %t611 = load i32, ptr %l3, !range !{i32 0, i32 33}
  %t613 = trunc i64 26 to i32
  %t614 = icmp eq i32 %t611, %t613
  br i1 %t614, label %bb158, label %bb159
bb158:
  br label %bb160
bb159:
  br label %bb163
bb160:
  store %olang.scope zeroinitializer, ptr %s24
  %t616 = load ptr, ptr %l1, !tbaa !29
  store ptr %t616, ptr %l347, !tbaa !29
  %t617 = load ptr, ptr %l0, !tbaa !29
  %t619 = getelementptr %"compiler/generic:Program", ptr %t617, i32 0, i32 2
  %t620 = load i32, ptr %l2, !tbaa !23
  %t623 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eConstValue(ptr %v0, ptr %t619, i32 %t620)
  store i64 %t623, ptr %l351
  br label %bb161
bb161:
  %t624 = load i64, ptr %l351, !tbaa !24
  %t625 = call i64 @__olang_fmt_i64(ptr null, i64 %t624)
  %t626 = call ptr @__olang_scope_alloc(ptr %s24, i64 %t625)
  %t627 = call i64 @__olang_fmt_i64(ptr %t626, i64 %t624)
  %t628 = insertvalue { i64, ptr } undef, i64 %t625, 0
  %t629 = insertvalue { i64, ptr } %t628, ptr %t626, 1
  %t631 = extractvalue { i64, ptr } %t629, 0
  %t632 = extractvalue { i64, ptr } %t629, 1
  %t633 = mul i64 %t631, 1
  %t634 = call ptr @__olang_scope_alloc(ptr %s24, i64 %t633)
  call void @llvm.memcpy.p0.p0.i64(ptr %t634, ptr %t632, i64 %t633, i1 false)
  %t635 = insertvalue { i64, ptr } undef, i64 %t631, 0
  %t636 = insertvalue { i64, ptr } %t635, ptr %t634, 1
  %t637 = load ptr, ptr %l347, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v1, ptr %s24, ptr %t637, { i64, ptr } %t636)
  br label %bb162
bb162:
  call void @__olang_scope_close(ptr %s24)
  br label %bb212
bb163:
  %t639 = load i32, ptr %l3, !range !{i32 0, i32 33}
  %t641 = trunc i64 32 to i32
  %t642 = icmp eq i32 %t639, %t641
  br i1 %t642, label %bb164, label %bb165
bb164:
  br label %bb166
bb165:
  br label %bb205
bb166:
  %t644 = load ptr, ptr %l0, !tbaa !29
  %t646 = getelementptr %"compiler/generic:Program", ptr %t644, i32 0, i32 2
  %t647 = load i32, ptr %l2, !tbaa !23
  %t650 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrValName(ptr %v0, ptr %t646, i32 %t647)
  store i32 %t650, ptr %l359
  br label %bb167
bb167:
  %t651 = load i32, ptr %l359, !tbaa !23
  store i32 %t651, ptr %l35, !tbaa !23
  %t652 = load ptr, ptr %l0, !tbaa !29
  %t654 = getelementptr %"compiler/generic:Program", ptr %t652, i32 0, i32 2
  store ptr %t654, ptr %l361, !tbaa !29
  %t655 = load ptr, ptr %l0, !tbaa !29
  %t657 = getelementptr %"compiler/generic:Program", ptr %t655, i32 0, i32 2
  %t658 = load i32, ptr %l2, !tbaa !23
  %t661 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrValItems(ptr %v0, ptr %t657, i32 %t658)
  store i32 %t661, ptr %l365
  br label %bb168
bb168:
  %t662 = load ptr, ptr %l361, !tbaa !29
  %t663 = load i32, ptr %l365, !tbaa !23
  %t664 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t662, i32 %t663)
  store { i64, ptr } %t664, ptr %l366
  br label %bb169
bb169:
  %t665 = load { i64, ptr }, ptr %l366, !tbaa !27
  store { i64, ptr } %t665, ptr %l36, !tbaa !27
  %t666 = load i32, ptr %l35, !tbaa !23
  %t668 = icmp sge i32 %t666, 0
  br i1 %t668, label %bb170, label %bb171
bb170:
  %t670 = load ptr, ptr %l1, !tbaa !29
  store ptr %t670, ptr %l369, !tbaa !29
  %t671 = load ptr, ptr %l0, !tbaa !29
  store ptr %t671, ptr %l370, !tbaa !29
  %t672 = load ptr, ptr %l0, !tbaa !29
  %t674 = getelementptr %"compiler/generic:Program", ptr %t672, i32 0, i32 2
  %t675 = load i32, ptr %l35, !tbaa !23
  %t678 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclName(ptr %v0, ptr %t674, i32 %t675)
  store i32 %t678, ptr %l374
  br label %bb172
bb171:
  %t679 = load { i64, ptr }, ptr %l36, !tbaa !27
  %t681 = extractvalue { i64, ptr } %t679, 0
  %t683 = icmp ne i64 %t681, 1
  br i1 %t683, label %bb175, label %bb176
bb172:
  %t685 = load ptr, ptr %l370, !tbaa !29
  %t686 = load i32, ptr %l374, !tbaa !23
  %t687 = call { i64, ptr } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2etext(ptr %v0, ptr %v0, ptr %t685, i32 %t686)
  store { i64, ptr } %t687, ptr %l375
  br label %bb173
bb173:
  %t688 = load ptr, ptr %l369, !tbaa !29
  %t689 = load { i64, ptr }, ptr %l375, !tbaa !27
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v1, ptr %v0, ptr %t688, { i64, ptr } %t689)
  br label %bb174
bb174:
  br label %bb204
bb175:
  %t690 = load ptr, ptr %l1, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePushChar(ptr %v1, ptr %t690, i8 123)
  br label %bb177
bb176:
  br label %bb178
bb177:
  br label %bb178
bb178:
  store i64 0, ptr %l37, !tbaa !24
  %t692 = load { i64, ptr }, ptr %l36, !tbaa !27
  %t694 = extractvalue { i64, ptr } %t692, 0
  store i64 %t694, ptr %l38, !tbaa !24
  store i64 1, ptr %l39, !tbaa !24
  %t696 = load i64, ptr %l38, !tbaa !24
  %t697 = load i64, ptr %l37, !tbaa !24
  %t700 = icmp sgt i64 %t696, %t697
  br i1 %t700, label %bb179, label %bb180
bb179:
  %t702 = load i64, ptr %l39, !tbaa !24
  %t704 = icmp sgt i64 %t702, 0
  br i1 %t704, label %bb181, label %bb182
bb180:
  store i64 0, ptr %l385, !tbaa !24
  br label %bb184
bb181:
  %t706 = load i64, ptr %l38, !tbaa !24
  %t707 = load i64, ptr %l37, !tbaa !24
  %t710 = sub i64 %t706, %t707
  %t711 = load i64, ptr %l39, !tbaa !24
  %t714 = add i64 %t710, %t711
  %t716 = sub i64 %t714, 1
  %t717 = load i64, ptr %l39, !tbaa !24
  %t720 = sdiv i64 %t716, %t717
  store i64 %t720, ptr %l388, !tbaa !24
  br label %bb183
bb182:
  store i64 0, ptr %l388, !tbaa !24
  br label %bb183
bb183:
  %t722 = load i64, ptr %l388, !tbaa !24
  store i64 %t722, ptr %l385, !tbaa !24
  br label %bb184
bb184:
  %t723 = load i64, ptr %l385, !tbaa !24
  store i64 %t723, ptr %l40, !tbaa !24
  store i64 0, ptr %l41, !tbaa !24
  br label %bb185
bb185:
  %t724 = load i64, ptr %l41, !tbaa !24
  %t725 = load i64, ptr %l40, !tbaa !24
  %t728 = icmp slt i64 %t724, %t725
  %t730 = xor i1 %t728, true
  br i1 %t730, label %bb186, label %bb187
bb186:
  br label %bb199
bb187:
  br label %bb188
bb188:
  %t732 = load i64, ptr %l37, !tbaa !24
  %t733 = load i64, ptr %l41, !tbaa !24
  %t734 = load i64, ptr %l39, !tbaa !24
  %t737 = mul i64 %t733, %t734
  %t740 = add i64 %t732, %t737
  store i64 %t740, ptr %l42, !tbaa !24
  %t742 = load i64, ptr %l42, !tbaa !24
  %t744 = icmp sgt i64 %t742, 0
  br i1 %t744, label %bb189, label %bb190
bb189:
  store %olang.scope zeroinitializer, ptr %s32
  %t746 = load ptr, ptr %l1, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v1, ptr %s32, ptr %t746, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d48, i32 0, i32 1) })
  br label %bb191
bb190:
  br label %bb192
bb191:
  call void @__olang_scope_close(ptr %s32)
  br label %bb192
bb192:
  %t748 = load ptr, ptr %l1, !tbaa !29
  store ptr %t748, ptr %l409, !tbaa !29
  %t749 = load ptr, ptr %l0, !tbaa !29
  store ptr %t749, ptr %l410, !tbaa !29
  %t750 = load ptr, ptr %l0, !tbaa !29
  %t752 = getelementptr %"compiler/generic:Program", ptr %t750, i32 0, i32 2
  store ptr %t752, ptr %l412, !tbaa !29
  %t753 = load ptr, ptr %l0, !tbaa !29
  %t755 = getelementptr %"compiler/generic:Program", ptr %t753, i32 0, i32 2
  store ptr %t755, ptr %l414, !tbaa !29
  %t756 = load ptr, ptr %l0, !tbaa !29
  %t758 = getelementptr %"compiler/generic:Program", ptr %t756, i32 0, i32 2
  %t759 = load { i64, ptr }, ptr %l36, !tbaa !27
  store { i64, ptr } %t759, ptr %l417, !tbaa !27
  %t760 = load i64, ptr %l42, !tbaa !24
  %t762 = getelementptr { i64, ptr }, ptr %l417, i32 0, i32 1
  %t763 = load ptr, ptr %t762, !tbaa !27
  %t764 = getelementptr i32, ptr %t763, i64 %t760
  %t765 = load i32, ptr %t764, !tbaa !33
  %t768 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrOf(ptr %v0, ptr %t758, i32 %t765)
  store i32 %t768, ptr %l420
  br label %bb193
bb193:
  %t769 = load ptr, ptr %l414, !tbaa !29
  %t770 = load i32, ptr %l420, !tbaa !23
  %t771 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %t769, i32 %t770)
  store i32 %t771, ptr %l421
  br label %bb194
bb194:
  %t772 = load ptr, ptr %l412, !tbaa !29
  %t773 = load i32, ptr %l421, !tbaa !23
  %t774 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclName(ptr %v0, ptr %t772, i32 %t773)
  store i32 %t774, ptr %l422
  br label %bb195
bb195:
  %t775 = load ptr, ptr %l410, !tbaa !29
  %t776 = load i32, ptr %l422, !tbaa !23
  %t777 = call { i64, ptr } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2etext(ptr %v0, ptr %v0, ptr %t775, i32 %t776)
  store { i64, ptr } %t777, ptr %l423
  br label %bb196
bb196:
  %t778 = load ptr, ptr %l409, !tbaa !29
  %t779 = load { i64, ptr }, ptr %l423, !tbaa !27
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v1, ptr %v0, ptr %t778, { i64, ptr } %t779)
  br label %bb197
bb197:
  br label %bb198
bb198:
  %t780 = load i64, ptr %l41, !tbaa !24
  %t782 = add i64 %t780, 1
  store i64 %t782, ptr %l41, !tbaa !24
  br label %bb185
bb199:
  %t784 = load { i64, ptr }, ptr %l36, !tbaa !27
  %t786 = extractvalue { i64, ptr } %t784, 0
  %t788 = icmp ne i64 %t786, 1
  br i1 %t788, label %bb200, label %bb201
bb200:
  %t790 = load ptr, ptr %l1, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePushChar(ptr %v1, ptr %t790, i8 125)
  br label %bb202
bb201:
  br label %bb203
bb202:
  br label %bb203
bb203:
  br label %bb204
bb204:
  br label %bb212
bb205:
  br i1 true, label %bb206, label %bb207
bb206:
  br label %bb208
bb207:
  br label %bb211
bb208:
  store %olang.scope zeroinitializer, ptr %s35
  %t792 = load ptr, ptr %l1, !tbaa !29
  store ptr %t792, ptr %l430, !tbaa !29
  %t793 = load ptr, ptr %l0, !tbaa !29
  %t795 = getelementptr %"compiler/generic:Program", ptr %t793, i32 0, i32 2
  %t796 = load i32, ptr %l2, !tbaa !23
  %t798 = inttoptr i64 0 to ptr
  %t801 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eCanon(ptr %v0, ptr %s35, ptr %t798, ptr %t795, i32 %t796)
  store { i64, ptr } %t801, ptr %l435
  br label %bb209
bb209:
  %t802 = load { i64, ptr }, ptr %l435, !tbaa !27
  %t803 = extractvalue { i64, ptr } %t802, 0
  %t804 = extractvalue { i64, ptr } %t802, 1
  %t805 = mul i64 %t803, 1
  %t806 = call ptr @__olang_scope_alloc(ptr %s35, i64 %t805)
  call void @llvm.memcpy.p0.p0.i64(ptr %t806, ptr %t804, i64 %t805, i1 false)
  %t807 = insertvalue { i64, ptr } undef, i64 %t803, 0
  %t808 = insertvalue { i64, ptr } %t807, ptr %t806, 1
  %t809 = load ptr, ptr %l430, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v1, ptr %s35, ptr %t809, { i64, ptr } %t808)
  br label %bb210
bb210:
  call void @__olang_scope_close(ptr %s35)
  br label %bb212
bb211:
  call void @__olang_check_failed(ptr @olang_loc_4061a14fd68eb9ea_8e3a57d2843d246e)
  unreachable
bb212:
  br label %ret
ret:
  ret void
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

define dso_local void @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eunbounded(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca i64
  %l3 = alloca %"compiler/names:Entry"
  %l4 = alloca i1
  %l9 = alloca i1
  %l10 = alloca i32
  %l19 = alloca i64
  %l24 = alloca ptr
  %l26 = alloca ptr
  %l31 = alloca i64
  %l32 = alloca %"compiler/names:Entry"
  %l35 = alloca ptr
  %l39 = alloca { i64, [3 x i64] }
  %l40 = alloca %"compiler/diagmsg:Msg"
  %l41 = alloca i64
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/generic:Program", ptr %t1, i32 0, i32 47
  %t4 = load i32, ptr %l1, !tbaa !23
  %t6 = sext i32 %t4 to i64
  %t9 = call { i32, i1 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2eGet_3cI64_2c_20Bool_3e(ptr %v0, ptr %t3, i64 %t6)
  %t10 = extractvalue { i32, i1 } %t9, 1
  %t11 = extractvalue { i32, i1 } %t9, 0
  store i32 %t11, ptr %l10
  %t12 = icmp ne i32 %t11, 0
  br i1 %t12, label %bb2, label %ok.13, !prof !99
ok.13:
  store i1 %t10, ptr %l9
  br label %bb1
bb1:
  %t14 = load i1, ptr %l9, !tbaa !21
  store i1 %t14, ptr %l4, !tbaa !21
  br label %bb4
bb2:
  br label %bb3
bb3:
  store i1 false, ptr %l4, !tbaa !21
  br label %bb4
bb4:
  %t15 = load i1, ptr %l4, !tbaa !21
  br i1 %t15, label %bb5, label %bb6
bb5:
  br label %ret
bb6:
  br label %bb7
bb7:
  %t16 = load ptr, ptr %l0, !tbaa !29
  %t18 = getelementptr %"compiler/generic:Program", ptr %t16, i32 0, i32 47
  %t19 = load i32, ptr %l1, !tbaa !23
  %t21 = sext i32 %t19 to i64
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2ePut_3cI64_2c_20Bool_3e(ptr %v0, ptr %t18, i64 %t21, i1 true)
  br label %bb8
bb8:
  %t24 = load ptr, ptr %l0, !tbaa !29
  %t26 = getelementptr %"compiler/generic:Program", ptr %t24, i32 0, i32 12
  %t27 = load i32, ptr %l1, !tbaa !23
  %t29 = sext i32 %t27 to i64
  %t32 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t26, i64 %t29)
  store i64 %t32, ptr %l19
  br label %bb9
bb9:
  %t33 = load i64, ptr %l19, !tbaa !24
  store i64 %t33, ptr %l2, !tbaa !24
  %t34 = load ptr, ptr %l0, !tbaa !29
  %t36 = getelementptr %"compiler/generic:Program", ptr %t34, i32 0, i32 1
  %t37 = load ptr, ptr %t36, !tbaa !29
  %t39 = getelementptr %"compiler/names:Resolver", ptr %t37, i32 0, i32 1
  %t40 = load i64, ptr %l2, !tbaa !24
  %t43 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fnames_3aTable_26_3e_2_Hc2ccbbc5952c057a60f016e9cc1626d2(ptr %v0, ptr %v0, ptr %t39, i64 %t40)
  store ptr %t43, ptr %l24
  br label %bb10
bb10:
  %t44 = load ptr, ptr %l24, !tbaa !29
  %t46 = getelementptr %"compiler/names:Table", ptr %t44, i32 0, i32 0
  store ptr %t46, ptr %l26, !tbaa !29
  %t47 = load ptr, ptr %l0, !tbaa !29
  %t49 = getelementptr %"compiler/generic:Program", ptr %t47, i32 0, i32 13
  %t50 = load i32, ptr %l1, !tbaa !23
  %t52 = sext i32 %t50 to i64
  %t55 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t49, i64 %t52)
  store i64 %t55, ptr %l31
  br label %bb11
bb11:
  %t56 = load ptr, ptr %l26, !tbaa !29
  %t57 = load i64, ptr %l31, !tbaa !24
  %t58 = call %"compiler/names:Entry" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fnames_3aEntry_3e_2eAt_3ccompiler_2fnames_3aEntry_3e(ptr %v0, ptr %v0, ptr %t56, i64 %t57)
  store %"compiler/names:Entry" %t58, ptr %l32
  br label %bb12
bb12:
  %t59 = load %"compiler/names:Entry", ptr %l32
  store %"compiler/names:Entry" %t59, ptr %l3
  %t60 = load ptr, ptr %l0, !tbaa !29
  %t62 = getelementptr %"compiler/generic:Program", ptr %t60, i32 0, i32 0
  %t63 = load ptr, ptr %t62, !tbaa !29
  %t65 = getelementptr %"compiler/load:Loader", ptr %t63, i32 0, i32 4
  %t66 = load ptr, ptr %t65, !tbaa !29
  store ptr %t66, ptr %l35, !tbaa !29
  %t67 = load ptr, ptr %l0, !tbaa !29
  %t68 = load i64, ptr %l2, !tbaa !24
  %t69 = getelementptr %"compiler/names:Entry", ptr %l3, i32 0, i32 1
  %t70 = load %"compiler/source:Span", ptr %t69
  %t74 = call { i64, [3 x i64] } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eat(ptr %v0, ptr %t67, i64 %t68, %"compiler/source:Span" %t70)
  store { i64, [3 x i64] } %t74, ptr %l39
  br label %bb13
bb13:
  %t75 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eUnboundedInstantiation(ptr %v0)
  store %"compiler/diagmsg:Msg" %t75, ptr %l40
  br label %bb14
bb14:
  %t76 = load ptr, ptr %l35, !tbaa !29
  %t77 = load { i64, [3 x i64] }, ptr %l39
  %t78 = load %"compiler/diagmsg:Msg", ptr %l40
  %t79 = call i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eError(ptr %v0, ptr %v0, ptr %t76, { i64, [3 x i64] } %t77, %"compiler/diagmsg:Msg" %t78)
  store i64 %t79, ptr %l41
  br label %bb15
bb15:
  br label %ret
ret:
  ret void
}

define dso_local i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eunendedFields(ptr %v0, ptr %v1, ptr %a0, i32 %a1, ptr %a2, i64 %a3, i1 %a4) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca ptr
  %l3 = alloca i64
  %l5 = alloca i1
  %l6 = alloca { i64, ptr }
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i32
  %l10 = alloca i32
  %l11 = alloca i32
  %l15 = alloca i1
  %l17 = alloca ptr
  %l21 = alloca i32
  %l22 = alloca { i64, ptr }
  %l29 = alloca { i64, ptr }
  %l37 = alloca i32
  %l39 = alloca i1
  %l43 = alloca i32
  %l46 = alloca i32
  %l47 = alloca ptr
  %l51 = alloca i32
  %l54 = alloca i32
  %l61 = alloca i32
  %rv = alloca i32
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  store ptr %a2, ptr %l2
  store i64 %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/generic:Program", ptr %t1, i32 0, i32 2
  %t4 = load i32, ptr %l1, !tbaa !23
  %t7 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eEnds(ptr %v0, ptr %t3, i32 %t4)
  store i1 %t7, ptr %l15
  br label %bb1
bb1:
  %t8 = load i1, ptr %l15, !tbaa !21
  store i1 %t8, ptr %l5, !tbaa !21
  %t9 = load ptr, ptr %l0, !tbaa !29
  %t11 = getelementptr %"compiler/generic:Program", ptr %t9, i32 0, i32 2
  store ptr %t11, ptr %l17, !tbaa !29
  %t12 = load ptr, ptr %l0, !tbaa !29
  %t14 = getelementptr %"compiler/generic:Program", ptr %t12, i32 0, i32 2
  %t15 = load i32, ptr %l1, !tbaa !23
  %t18 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eFields(ptr %v0, ptr %t14, i32 %t15)
  store i32 %t18, ptr %l21
  br label %bb2
bb2:
  %t19 = load ptr, ptr %l17, !tbaa !29
  %t20 = load i32, ptr %l21, !tbaa !23
  %t21 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t19, i32 %t20)
  store { i64, ptr } %t21, ptr %l22
  br label %bb3
bb3:
  %t22 = load { i64, ptr }, ptr %l22, !tbaa !27
  store { i64, ptr } %t22, ptr %l6, !tbaa !27
  store i64 0, ptr %l7, !tbaa !24
  %t23 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t25 = extractvalue { i64, ptr } %t23, 0
  store i64 %t25, ptr %l8, !tbaa !24
  br label %bb4
bb4:
  %t27 = load i64, ptr %l7, !tbaa !24
  %t28 = load i64, ptr %l8, !tbaa !24
  %t31 = icmp slt i64 %t27, %t28
  %t33 = xor i1 %t31, true
  br i1 %t33, label %bb5, label %bb6
bb5:
  br label %bb26
bb6:
  br label %bb7
bb7:
  %t35 = load { i64, ptr }, ptr %l6, !tbaa !27
  store { i64, ptr } %t35, ptr %l29, !tbaa !27
  %t36 = load i64, ptr %l7, !tbaa !24
  %t38 = getelementptr { i64, ptr }, ptr %l29, i32 0, i32 1
  %t39 = load ptr, ptr %t38, !tbaa !27
  %t40 = getelementptr i32, ptr %t39, i64 %t36
  %t41 = load i32, ptr %t40, !tbaa !33
  store i32 %t41, ptr %l9, !tbaa !23
  %t43 = load i32, ptr %l9, !tbaa !23
  %t45 = icmp eq i32 %t43, 0
  br i1 %t45, label %bb8, label %bb9
bb8:
  br label %bb25
bb9:
  br label %bb10
bb10:
  %t47 = load ptr, ptr %l0, !tbaa !29
  %t49 = getelementptr %"compiler/generic:Program", ptr %t47, i32 0, i32 2
  %t50 = load i32, ptr %l9, !tbaa !23
  %t53 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %v0, ptr %t49, i32 %t50)
  store i32 %t53, ptr %l37
  br label %bb11
bb11:
  %t54 = load i32, ptr %l37, !tbaa !23
  store i32 %t54, ptr %l10, !tbaa !23
  %t55 = load i1, ptr %l5, !tbaa !21
  br i1 %t55, label %bb12, label %bb13
bb12:
  %t57 = load ptr, ptr %l0, !tbaa !29
  %t59 = getelementptr %"compiler/generic:Program", ptr %t57, i32 0, i32 2
  %t60 = load i32, ptr %l10, !tbaa !23
  %t63 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t59, i32 %t60)
  store i32 %t63, ptr %l43
  br label %bb14
bb13:
  store i1 false, ptr %l39, !tbaa !21
  br label %bb15
bb14:
  %t64 = load i32, ptr %l43, !range !{i32 0, i32 33}
  %t66 = trunc i64 19 to i32
  %t67 = icmp eq i32 %t64, %t66
  store i1 %t67, ptr %l39, !tbaa !21
  br label %bb15
bb15:
  %t69 = load i1, ptr %l39, !tbaa !21
  br i1 %t69, label %bb16, label %bb17
bb16:
  %t70 = load ptr, ptr %l0, !tbaa !29
  store ptr %t70, ptr %l47, !tbaa !29
  %t71 = load ptr, ptr %l0, !tbaa !29
  %t73 = getelementptr %"compiler/generic:Program", ptr %t71, i32 0, i32 2
  %t74 = load i32, ptr %l10, !tbaa !23
  %t77 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eElem(ptr %v0, ptr %t73, i32 %t74)
  store i32 %t77, ptr %l51
  br label %bb18
bb17:
  %t78 = load ptr, ptr %l0, !tbaa !29
  %t79 = load i32, ptr %l9, !tbaa !23
  %t80 = load ptr, ptr %l2, !tbaa !29
  %t81 = load i64, ptr %l3, !tbaa !24
  %t83 = add i64 %t81, 1
  %t90 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eunended(ptr %v0, ptr %v1, ptr %t78, i32 %t79, ptr %t80, i64 %t83, i1 %a4)
  store i32 %t90, ptr %l61
  br label %bb20
bb18:
  %t91 = load ptr, ptr %l2, !tbaa !29
  %t92 = load i64, ptr %l3, !tbaa !24
  %t93 = load ptr, ptr %l47, !tbaa !29
  %t94 = load i32, ptr %l51, !tbaa !23
  %t97 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2ebufferUnended(ptr %v0, ptr %v1, ptr %t93, i32 %t94, ptr %t91, i64 %t92)
  store i32 %t97, ptr %l54
  br label %bb19
bb19:
  %t98 = load i32, ptr %l54, !tbaa !23
  store i32 %t98, ptr %l46, !tbaa !23
  br label %bb21
bb20:
  %t99 = load i32, ptr %l61, !tbaa !23
  store i32 %t99, ptr %l46, !tbaa !23
  br label %bb21
bb21:
  %t100 = load i32, ptr %l46, !tbaa !23
  store i32 %t100, ptr %l11, !tbaa !23
  %t101 = load i32, ptr %l11, !tbaa !23
  %t102 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t105 = icmp ne i32 %t101, %t102
  br i1 %t105, label %bb22, label %bb23
bb22:
  %t107 = load i32, ptr %l11, !tbaa !23
  store i32 %t107, ptr %rv
  br label %ret
bb23:
  br label %bb24
bb24:
  br label %bb25
bb25:
  %t109 = load i64, ptr %l7, !tbaa !24
  %t111 = add i64 %t109, 1
  store i64 %t111, ptr %l7, !tbaa !24
  br label %bb4
bb26:
  %t113 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  store i32 %t113, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eunifyLists(ptr %v0, ptr %v1, ptr %a0, i32 %a1, i32 %a2, ptr %a3, i1 %a4) #0 {
entry:
  %l0 = alloca ptr
  %l5 = alloca { i64, ptr }
  %l6 = alloca { i64, ptr }
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca i64
  %l12 = alloca i64
  %l16 = alloca { i64, ptr }
  %l20 = alloca { i64, ptr }
  %l32 = alloca i64
  %l35 = alloca i64
  %l54 = alloca { i64, ptr }
  %l57 = alloca { i64, ptr }
  %l62 = alloca i32
  %rv = alloca i32
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/generic:Program", ptr %t1, i32 0, i32 2
  %t7 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t3, i32 %a1)
  store { i64, ptr } %t7, ptr %l16
  br label %bb1
bb1:
  %t8 = load { i64, ptr }, ptr %l16, !tbaa !27
  store { i64, ptr } %t8, ptr %l5, !tbaa !27
  %t9 = load ptr, ptr %l0, !tbaa !29
  %t11 = getelementptr %"compiler/generic:Program", ptr %t9, i32 0, i32 2
  %t15 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t11, i32 %a2)
  store { i64, ptr } %t15, ptr %l20
  br label %bb2
bb2:
  %t16 = load { i64, ptr }, ptr %l20, !tbaa !27
  store { i64, ptr } %t16, ptr %l6, !tbaa !27
  %t17 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t19 = extractvalue { i64, ptr } %t17, 0
  %t20 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t22 = extractvalue { i64, ptr } %t20, 0
  %t25 = icmp ne i64 %t19, %t22
  br i1 %t25, label %bb3, label %bb4
bb3:
  store i32 65536, ptr %rv
  br label %ret
bb4:
  br label %bb5
bb5:
  store i64 0, ptr %l7, !tbaa !24
  %t28 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t30 = extractvalue { i64, ptr } %t28, 0
  store i64 %t30, ptr %l8, !tbaa !24
  store i64 1, ptr %l9, !tbaa !24
  %t32 = load i64, ptr %l8, !tbaa !24
  %t33 = load i64, ptr %l7, !tbaa !24
  %t36 = icmp sgt i64 %t32, %t33
  br i1 %t36, label %bb6, label %bb7
bb6:
  %t38 = load i64, ptr %l9, !tbaa !24
  %t40 = icmp sgt i64 %t38, 0
  br i1 %t40, label %bb8, label %bb9
bb7:
  store i64 0, ptr %l32, !tbaa !24
  br label %bb11
bb8:
  %t42 = load i64, ptr %l8, !tbaa !24
  %t43 = load i64, ptr %l7, !tbaa !24
  %t46 = sub i64 %t42, %t43
  %t47 = load i64, ptr %l9, !tbaa !24
  %t50 = add i64 %t46, %t47
  %t52 = sub i64 %t50, 1
  %t53 = load i64, ptr %l9, !tbaa !24
  %t56 = sdiv i64 %t52, %t53
  store i64 %t56, ptr %l35, !tbaa !24
  br label %bb10
bb9:
  store i64 0, ptr %l35, !tbaa !24
  br label %bb10
bb10:
  %t58 = load i64, ptr %l35, !tbaa !24
  store i64 %t58, ptr %l32, !tbaa !24
  br label %bb11
bb11:
  %t59 = load i64, ptr %l32, !tbaa !24
  store i64 %t59, ptr %l10, !tbaa !24
  store i64 0, ptr %l11, !tbaa !24
  br label %bb12
bb12:
  %t60 = load i64, ptr %l11, !tbaa !24
  %t61 = load i64, ptr %l10, !tbaa !24
  %t64 = icmp slt i64 %t60, %t61
  %t66 = xor i1 %t64, true
  br i1 %t66, label %bb13, label %bb14
bb13:
  br label %bb20
bb14:
  br label %bb15
bb15:
  %t68 = load i64, ptr %l7, !tbaa !24
  %t69 = load i64, ptr %l11, !tbaa !24
  %t70 = load i64, ptr %l9, !tbaa !24
  %t73 = mul i64 %t69, %t70
  %t76 = add i64 %t68, %t73
  store i64 %t76, ptr %l12, !tbaa !24
  %t78 = load ptr, ptr %l0, !tbaa !29
  %t79 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t79, ptr %l54, !tbaa !27
  %t80 = load i64, ptr %l12, !tbaa !24
  %t82 = getelementptr { i64, ptr }, ptr %l54, i32 0, i32 1
  %t83 = load ptr, ptr %t82, !tbaa !27
  %t84 = getelementptr i32, ptr %t83, i64 %t80
  %t85 = load i32, ptr %t84, !tbaa !33
  %t86 = load { i64, ptr }, ptr %l6, !tbaa !27
  store { i64, ptr } %t86, ptr %l57, !tbaa !27
  %t87 = load i64, ptr %l12, !tbaa !24
  %t89 = getelementptr { i64, ptr }, ptr %l57, i32 0, i32 1
  %t90 = load ptr, ptr %t89, !tbaa !27
  %t91 = getelementptr i32, ptr %t90, i64 %t87
  %t92 = load i32, ptr %t91, !tbaa !33
  %t100 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eUnify(ptr %v0, ptr %v1, ptr %t78, i32 %t85, i32 %t92, ptr %a3, i1 false, i1 %a4)
  store i32 %t100, ptr %l62
  %t101 = icmp ne i32 %t100, 0
  br i1 %t101, label %bb17, label %ok.102, !prof !99
ok.102:
  br label %bb16
bb16:
  br label %bb18
bb17:
  %t103 = load i32, ptr %l62, !tbaa !23
  %t104 = lshr i32 %t103, 16
  %t105 = and i32 %t103, 65535
  %t106 = icmp eq i32 %t104, 1
  %t107 = select i1 %t106, i32 1, i32 0
  %t108 = icmp eq i32 %t103, 0
  %t109 = shl i32 %t107, 16
  %t110 = or i32 %t109, %t105
  %t111 = select i1 %t108, i32 0, i32 %t110
  store i32 %t111, ptr %rv
  br label %ret
bb18:
  br label %bb19
bb19:
  %t113 = load i64, ptr %l11, !tbaa !24
  %t115 = add i64 %t113, 1
  store i64 %t115, ptr %l11, !tbaa !24
  br label %bb12
bb20:
  store i32 0, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eunsubst(ptr %v0, ptr %v1, ptr %a0, i32 %a1, i64 %a2, { i64, ptr } %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca i64
  %l3 = alloca { i64, ptr }
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i32
  %l11 = alloca { i64, ptr }
  %l12 = alloca { i64, ptr }
  %l13 = alloca i64
  %l14 = alloca i64
  %l15 = alloca i64
  %l16 = alloca i64
  %l17 = alloca i64
  %l18 = alloca i64
  %l24 = alloca i64
  %l27 = alloca i64
  %l45 = alloca { i64, ptr }
  %l55 = alloca i32
  %l61 = alloca i32
  %l67 = alloca i32
  %l71 = alloca ptr
  %l75 = alloca i32
  %l76 = alloca { i64, ptr }
  %l78 = alloca i64
  %l87 = alloca i64
  %l90 = alloca i64
  %l108 = alloca i64
  %l110 = alloca { i64, ptr }
  %l115 = alloca i32
  %l118 = alloca ptr
  %l122 = alloca i32
  %l126 = alloca i32
  %l127 = alloca i32
  %l131 = alloca ptr
  %l132 = alloca ptr
  %l136 = alloca i32
  %l139 = alloca i32
  %l140 = alloca ptr
  %l144 = alloca i32
  %l147 = alloca i32
  %l148 = alloca i32
  %l152 = alloca ptr
  %l153 = alloca ptr
  %l157 = alloca i32
  %l160 = alloca i32
  %l164 = alloca i64
  %l165 = alloca i32
  %l169 = alloca ptr
  %l170 = alloca ptr
  %l174 = alloca i32
  %l177 = alloca i32
  %l178 = alloca i32
  %s5 = alloca %olang.scope
  %rv = alloca i32
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  store i64 %a2, ptr %l2
  store { i64, ptr } %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  store i64 0, ptr %l4, !tbaa !24
  %t1 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t3 = extractvalue { i64, ptr } %t1, 0
  store i64 %t3, ptr %l5, !tbaa !24
  store i64 1, ptr %l6, !tbaa !24
  %t5 = load i64, ptr %l5, !tbaa !24
  %t6 = load i64, ptr %l4, !tbaa !24
  %t9 = icmp sgt i64 %t5, %t6
  br i1 %t9, label %bb1, label %bb2
bb1:
  %t11 = load i64, ptr %l6, !tbaa !24
  %t13 = icmp sgt i64 %t11, 0
  br i1 %t13, label %bb3, label %bb4
bb2:
  store i64 0, ptr %l24, !tbaa !24
  br label %bb6
bb3:
  %t15 = load i64, ptr %l5, !tbaa !24
  %t16 = load i64, ptr %l4, !tbaa !24
  %t19 = sub i64 %t15, %t16
  %t20 = load i64, ptr %l6, !tbaa !24
  %t23 = add i64 %t19, %t20
  %t25 = sub i64 %t23, 1
  %t26 = load i64, ptr %l6, !tbaa !24
  %t29 = sdiv i64 %t25, %t26
  store i64 %t29, ptr %l27, !tbaa !24
  br label %bb5
bb4:
  store i64 0, ptr %l27, !tbaa !24
  br label %bb5
bb5:
  %t31 = load i64, ptr %l27, !tbaa !24
  store i64 %t31, ptr %l24, !tbaa !24
  br label %bb6
bb6:
  %t32 = load i64, ptr %l24, !tbaa !24
  store i64 %t32, ptr %l7, !tbaa !24
  store i64 0, ptr %l8, !tbaa !24
  br label %bb7
bb7:
  %t33 = load i64, ptr %l8, !tbaa !24
  %t34 = load i64, ptr %l7, !tbaa !24
  %t37 = icmp slt i64 %t33, %t34
  %t39 = xor i1 %t37, true
  br i1 %t39, label %bb8, label %bb9
bb8:
  br label %bb16
bb9:
  br label %bb10
bb10:
  %t41 = load i64, ptr %l4, !tbaa !24
  %t42 = load i64, ptr %l8, !tbaa !24
  %t43 = load i64, ptr %l6, !tbaa !24
  %t46 = mul i64 %t42, %t43
  %t49 = add i64 %t41, %t46
  store i64 %t49, ptr %l9, !tbaa !24
  %t51 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t51, ptr %l45, !tbaa !27
  %t52 = load i64, ptr %l9, !tbaa !24
  %t54 = getelementptr { i64, ptr }, ptr %l45, i32 0, i32 1
  %t55 = load ptr, ptr %t54, !tbaa !27
  %t56 = getelementptr i32, ptr %t55, i64 %t52
  %t57 = load i32, ptr %t56, !tbaa !33
  %t58 = load i32, ptr %l1, !tbaa !23
  %t61 = icmp eq i32 %t57, %t58
  br i1 %t61, label %bb11, label %bb12
bb11:
  %t63 = load ptr, ptr %l0, !tbaa !29
  %t65 = getelementptr %"compiler/generic:Program", ptr %t63, i32 0, i32 2
  %t66 = load i64, ptr %l2, !tbaa !24
  %t67 = load i64, ptr %l9, !tbaa !24
  %t68 = load i64, ptr @G_2ecompiler_2ftypes_2eReadOnly, !tbaa !24
  %t73 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eVar(ptr %v0, ptr %t65, i64 %t66, i64 %t67, i64 %t68)
  store i32 %t73, ptr %l55
  br label %bb13
bb12:
  br label %bb14
bb13:
  %t74 = load i32, ptr %l55, !tbaa !23
  store i32 %t74, ptr %rv
  br label %ret
bb14:
  br label %bb15
bb15:
  %t75 = load i64, ptr %l8, !tbaa !24
  %t77 = add i64 %t75, 1
  store i64 %t77, ptr %l8, !tbaa !24
  br label %bb7
bb16:
  %t79 = load ptr, ptr %l0, !tbaa !29
  %t81 = getelementptr %"compiler/generic:Program", ptr %t79, i32 0, i32 2
  %t82 = load i32, ptr %l1, !tbaa !23
  %t85 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t81, i32 %t82)
  store i32 %t85, ptr %l61
  br label %bb17
bb17:
  %t86 = load i32, ptr %l61, !range !{i32 0, i32 33}
  store i32 %t86, ptr %l10
  %t87 = load i32, ptr %l10, !range !{i32 0, i32 33}
  %t89 = trunc i64 18 to i32
  %t90 = icmp eq i32 %t87, %t89
  br i1 %t90, label %bb18, label %bb19
bb18:
  br label %bb20
bb19:
  br label %bb47
bb20:
  store %olang.scope zeroinitializer, ptr %s5
  %t92 = load ptr, ptr %l0, !tbaa !29
  %t94 = getelementptr %"compiler/generic:Program", ptr %t92, i32 0, i32 2
  %t95 = load i32, ptr %l1, !tbaa !23
  %t98 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eArgs(ptr %v0, ptr %t94, i32 %t95)
  store i32 %t98, ptr %l67
  br label %bb21
bb21:
  %t99 = load i32, ptr %l67, !tbaa !23
  %t100 = icmp eq i32 %t99, 0
  br i1 %t100, label %bb22, label %bb23
bb22:
  %t102 = load i32, ptr %l1, !tbaa !23
  call void @__olang_scope_close(ptr %s5)
  store i32 %t102, ptr %rv
  br label %ret
bb23:
  br label %bb24
bb24:
  %t104 = load ptr, ptr %l0, !tbaa !29
  %t106 = getelementptr %"compiler/generic:Program", ptr %t104, i32 0, i32 2
  store ptr %t106, ptr %l71, !tbaa !29
  %t107 = load ptr, ptr %l0, !tbaa !29
  %t109 = getelementptr %"compiler/generic:Program", ptr %t107, i32 0, i32 2
  %t110 = load i32, ptr %l1, !tbaa !23
  %t113 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eArgs(ptr %v0, ptr %t109, i32 %t110)
  store i32 %t113, ptr %l75
  br label %bb25
bb25:
  %t114 = load ptr, ptr %l71, !tbaa !29
  %t115 = load i32, ptr %l75, !tbaa !23
  %t116 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t114, i32 %t115)
  store { i64, ptr } %t116, ptr %l76
  br label %bb26
bb26:
  %t117 = load { i64, ptr }, ptr %l76, !tbaa !27
  store { i64, ptr } %t117, ptr %l11, !tbaa !27
  %t118 = load { i64, ptr }, ptr %l11, !tbaa !27
  %t120 = extractvalue { i64, ptr } %t118, 0
  store i64 %t120, ptr %l78, !tbaa !24
  %t121 = load i64, ptr %l78, !tbaa !24
  %t122 = icmp sge i64 %t121, 0
  br i1 %t122, label %bb27, label %bb28
bb27:
  %t124 = load i64, ptr %l78, !tbaa !24
  %t125 = icmp sle i64 %t124, 2305843009213693951
  br i1 %t125, label %bb29, label %bb30
bb28:
  call void @__olang_check_failed(ptr @olang_loc_dbc69524847f1d49_8831f326edbf0acd)
  unreachable
bb29:
  %t127 = load i64, ptr %l78, !tbaa !24
  %t128 = mul i64 %t127, 4
  %t129 = call ptr @__olang_scope_alloc_zeroed(ptr %s5, i64 %t128)
  %t130 = insertvalue { i64, ptr } undef, i64 %t127, 0
  %t131 = insertvalue { i64, ptr } %t130, ptr %t129, 1
  store { i64, ptr } %t131, ptr %l12, !tbaa !27
  store i64 0, ptr %l13, !tbaa !24
  %t133 = load { i64, ptr }, ptr %l11, !tbaa !27
  %t135 = extractvalue { i64, ptr } %t133, 0
  store i64 %t135, ptr %l14, !tbaa !24
  store i64 1, ptr %l15, !tbaa !24
  %t137 = load i64, ptr %l14, !tbaa !24
  %t138 = load i64, ptr %l13, !tbaa !24
  %t141 = icmp sgt i64 %t137, %t138
  br i1 %t141, label %bb31, label %bb32
bb30:
  call void @__olang_check_failed(ptr @olang_loc_dbc69524847f1d49_8831f326edbf0acd)
  unreachable
bb31:
  %t143 = load i64, ptr %l15, !tbaa !24
  %t145 = icmp sgt i64 %t143, 0
  br i1 %t145, label %bb33, label %bb34
bb32:
  store i64 0, ptr %l87, !tbaa !24
  br label %bb36
bb33:
  %t147 = load i64, ptr %l14, !tbaa !24
  %t148 = load i64, ptr %l13, !tbaa !24
  %t151 = sub i64 %t147, %t148
  %t152 = load i64, ptr %l15, !tbaa !24
  %t155 = add i64 %t151, %t152
  %t157 = sub i64 %t155, 1
  %t158 = load i64, ptr %l15, !tbaa !24
  %t161 = sdiv i64 %t157, %t158
  store i64 %t161, ptr %l90, !tbaa !24
  br label %bb35
bb34:
  store i64 0, ptr %l90, !tbaa !24
  br label %bb35
bb35:
  %t163 = load i64, ptr %l90, !tbaa !24
  store i64 %t163, ptr %l87, !tbaa !24
  br label %bb36
bb36:
  %t164 = load i64, ptr %l87, !tbaa !24
  store i64 %t164, ptr %l16, !tbaa !24
  store i64 0, ptr %l17, !tbaa !24
  br label %bb37
bb37:
  %t165 = load i64, ptr %l17, !tbaa !24
  %t166 = load i64, ptr %l16, !tbaa !24
  %t169 = icmp slt i64 %t165, %t166
  %t171 = xor i1 %t169, true
  br i1 %t171, label %bb38, label %bb39
bb38:
  br label %bb43
bb39:
  br label %bb40
bb40:
  %t173 = load i64, ptr %l13, !tbaa !24
  %t174 = load i64, ptr %l17, !tbaa !24
  %t175 = load i64, ptr %l15, !tbaa !24
  %t178 = mul i64 %t174, %t175
  %t181 = add i64 %t173, %t178
  store i64 %t181, ptr %l18, !tbaa !24
  %t183 = load i64, ptr %l18, !tbaa !24
  store i64 %t183, ptr %l108, !tbaa !24
  %t184 = load ptr, ptr %l0, !tbaa !29
  %t185 = load { i64, ptr }, ptr %l11, !tbaa !27
  store { i64, ptr } %t185, ptr %l110, !tbaa !27
  %t186 = load i64, ptr %l18, !tbaa !24
  %t188 = getelementptr { i64, ptr }, ptr %l110, i32 0, i32 1
  %t189 = load ptr, ptr %t188, !tbaa !27
  %t190 = getelementptr i32, ptr %t189, i64 %t186
  %t191 = load i32, ptr %t190, !tbaa !33
  %t192 = load i64, ptr %l2, !tbaa !24
  %t193 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t198 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eunsubst(ptr %v0, ptr %v1, ptr %t184, i32 %t191, i64 %t192, { i64, ptr } %t193)
  store i32 %t198, ptr %l115
  br label %bb41
bb41:
  %t199 = load i32, ptr %l115, !tbaa !23
  %t200 = load i64, ptr %l108, !tbaa !24
  %t201 = getelementptr { i64, ptr }, ptr %l12, i32 0, i32 1
  %t202 = load ptr, ptr %t201, !tbaa !27
  %t203 = getelementptr i32, ptr %t202, i64 %t200
  store i32 %t199, ptr %t203, !tbaa !33
  br label %bb42
bb42:
  %t204 = load i64, ptr %l17, !tbaa !24
  %t206 = add i64 %t204, 1
  store i64 %t206, ptr %l17, !tbaa !24
  br label %bb37
bb43:
  %t208 = load ptr, ptr %l0, !tbaa !29
  store ptr %t208, ptr %l118, !tbaa !29
  %t209 = load ptr, ptr %l0, !tbaa !29
  %t211 = getelementptr %"compiler/generic:Program", ptr %t209, i32 0, i32 2
  %t212 = load i32, ptr %l1, !tbaa !23
  %t215 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %t211, i32 %t212)
  store i32 %t215, ptr %l122
  br label %bb44
bb44:
  %t216 = load ptr, ptr %l0, !tbaa !29
  %t218 = getelementptr %"compiler/generic:Program", ptr %t216, i32 0, i32 2
  %t219 = load { i64, ptr }, ptr %l12, !tbaa !27
  %t222 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eList(ptr %v0, ptr %s5, ptr %t218, { i64, ptr } %t219)
  store i32 %t222, ptr %l126
  br label %bb45
bb45:
  %t223 = load ptr, ptr %l118, !tbaa !29
  %t224 = load i32, ptr %l122, !tbaa !23
  %t225 = load i32, ptr %l126, !tbaa !23
  %t226 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eInstance(ptr %v0, ptr %t223, i32 %t224, i32 %t225)
  store i32 %t226, ptr %l127
  br label %bb46
bb46:
  call void @__olang_scope_close(ptr %s5)
  %t227 = load i32, ptr %l127, !tbaa !23
  store i32 %t227, ptr %rv
  br label %ret
bb47:
  %t228 = load i32, ptr %l10, !range !{i32 0, i32 33}
  %t230 = trunc i64 19 to i32
  %t231 = icmp eq i32 %t228, %t230
  br i1 %t231, label %bb48, label %bb49
bb48:
  br label %bb50
bb49:
  br label %bb56
bb50:
  %t233 = load ptr, ptr %l0, !tbaa !29
  %t235 = getelementptr %"compiler/generic:Program", ptr %t233, i32 0, i32 2
  store ptr %t235, ptr %l131, !tbaa !29
  %t236 = load ptr, ptr %l0, !tbaa !29
  store ptr %t236, ptr %l132, !tbaa !29
  %t237 = load ptr, ptr %l0, !tbaa !29
  %t239 = getelementptr %"compiler/generic:Program", ptr %t237, i32 0, i32 2
  %t240 = load i32, ptr %l1, !tbaa !23
  %t243 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eElem(ptr %v0, ptr %t239, i32 %t240)
  store i32 %t243, ptr %l136
  br label %bb51
bb51:
  %t244 = load i64, ptr %l2, !tbaa !24
  %t245 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t246 = load ptr, ptr %l132, !tbaa !29
  %t247 = load i32, ptr %l136, !tbaa !23
  %t250 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eunsubst(ptr %v0, ptr %v1, ptr %t246, i32 %t247, i64 %t244, { i64, ptr } %t245)
  store i32 %t250, ptr %l139
  br label %bb52
bb52:
  %t251 = load ptr, ptr %l0, !tbaa !29
  store ptr %t251, ptr %l140, !tbaa !29
  %t252 = load ptr, ptr %l0, !tbaa !29
  %t254 = getelementptr %"compiler/generic:Program", ptr %t252, i32 0, i32 2
  %t255 = load i32, ptr %l1, !tbaa !23
  %t258 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eLength(ptr %v0, ptr %t254, i32 %t255)
  store i32 %t258, ptr %l144
  br label %bb53
bb53:
  %t259 = load i64, ptr %l2, !tbaa !24
  %t260 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t261 = load ptr, ptr %l140, !tbaa !29
  %t262 = load i32, ptr %l144, !tbaa !23
  %t265 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eunsubst(ptr %v0, ptr %v1, ptr %t261, i32 %t262, i64 %t259, { i64, ptr } %t260)
  store i32 %t265, ptr %l147
  br label %bb54
bb54:
  %t266 = load ptr, ptr %l131, !tbaa !29
  %t267 = load i32, ptr %l139, !tbaa !23
  %t268 = load i32, ptr %l147, !tbaa !23
  %t269 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eArray(ptr %v0, ptr %t266, i32 %t267, i32 %t268)
  store i32 %t269, ptr %l148
  br label %bb55
bb55:
  %t270 = load i32, ptr %l148, !tbaa !23
  store i32 %t270, ptr %rv
  br label %ret
bb56:
  %t271 = load i32, ptr %l10, !range !{i32 0, i32 33}
  %t273 = trunc i64 20 to i32
  %t274 = icmp eq i32 %t271, %t273
  br i1 %t274, label %bb57, label %bb58
bb57:
  br label %bb59
bb58:
  br label %bb64
bb59:
  %t276 = load ptr, ptr %l0, !tbaa !29
  %t278 = getelementptr %"compiler/generic:Program", ptr %t276, i32 0, i32 2
  store ptr %t278, ptr %l152, !tbaa !29
  %t279 = load ptr, ptr %l0, !tbaa !29
  store ptr %t279, ptr %l153, !tbaa !29
  %t280 = load ptr, ptr %l0, !tbaa !29
  %t282 = getelementptr %"compiler/generic:Program", ptr %t280, i32 0, i32 2
  %t283 = load i32, ptr %l1, !tbaa !23
  %t286 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eReferent(ptr %v0, ptr %t282, i32 %t283)
  store i32 %t286, ptr %l157
  br label %bb60
bb60:
  %t287 = load i64, ptr %l2, !tbaa !24
  %t288 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t289 = load ptr, ptr %l153, !tbaa !29
  %t290 = load i32, ptr %l157, !tbaa !23
  %t293 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eunsubst(ptr %v0, ptr %v1, ptr %t289, i32 %t290, i64 %t287, { i64, ptr } %t288)
  store i32 %t293, ptr %l160
  br label %bb61
bb61:
  %t294 = load ptr, ptr %l0, !tbaa !29
  %t296 = getelementptr %"compiler/generic:Program", ptr %t294, i32 0, i32 2
  %t297 = load i32, ptr %l1, !tbaa !23
  %t300 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePermOf(ptr %v0, ptr %t296, i32 %t297)
  store i64 %t300, ptr %l164
  br label %bb62
bb62:
  %t301 = load ptr, ptr %l152, !tbaa !29
  %t302 = load i32, ptr %l160, !tbaa !23
  %t303 = load i64, ptr %l164, !tbaa !24
  %t304 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRef(ptr %v0, ptr %t301, i32 %t302, i64 %t303)
  store i32 %t304, ptr %l165
  br label %bb63
bb63:
  %t305 = load i32, ptr %l165, !tbaa !23
  store i32 %t305, ptr %rv
  br label %ret
bb64:
  %t306 = load i32, ptr %l10, !range !{i32 0, i32 33}
  %t308 = trunc i64 29 to i32
  %t309 = icmp eq i32 %t306, %t308
  br i1 %t309, label %bb65, label %bb66
bb65:
  br label %bb67
bb66:
  br label %bb71
bb67:
  %t311 = load ptr, ptr %l0, !tbaa !29
  %t313 = getelementptr %"compiler/generic:Program", ptr %t311, i32 0, i32 2
  store ptr %t313, ptr %l169, !tbaa !29
  %t314 = load ptr, ptr %l0, !tbaa !29
  store ptr %t314, ptr %l170, !tbaa !29
  %t315 = load ptr, ptr %l0, !tbaa !29
  %t317 = getelementptr %"compiler/generic:Program", ptr %t315, i32 0, i32 2
  %t318 = load i32, ptr %l1, !tbaa !23
  %t321 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eAnyTrait(ptr %v0, ptr %t317, i32 %t318)
  store i32 %t321, ptr %l174
  br label %bb68
bb68:
  %t322 = load i64, ptr %l2, !tbaa !24
  %t323 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t324 = load ptr, ptr %l170, !tbaa !29
  %t325 = load i32, ptr %l174, !tbaa !23
  %t328 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eunsubst(ptr %v0, ptr %v1, ptr %t324, i32 %t325, i64 %t322, { i64, ptr } %t323)
  store i32 %t328, ptr %l177
  br label %bb69
bb69:
  %t329 = load ptr, ptr %l169, !tbaa !29
  %t330 = load i32, ptr %l177, !tbaa !23
  %t331 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eAny(ptr %v0, ptr %t329, i32 %t330)
  store i32 %t331, ptr %l178
  br label %bb70
bb70:
  %t332 = load i32, ptr %l178, !tbaa !23
  store i32 %t332, ptr %rv
  br label %ret
bb71:
  br i1 true, label %bb72, label %bb73
bb72:
  br label %bb74
bb73:
  br label %bb75
bb74:
  %t333 = load i32, ptr %l1, !tbaa !23
  store i32 %t333, ptr %rv
  br label %ret
bb75:
  call void @__olang_check_failed(ptr @olang_loc_737134d81da26253_60c38b193f08901f)
  unreachable
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eviewNext(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca ptr
  %l4 = alloca ptr
  %l9 = alloca i1
  %l16 = alloca { i64, ptr }
  %l17 = alloca i1
  %l19 = alloca i1
  %l25 = alloca ptr
  %l28 = alloca i1
  %l40 = alloca i1
  %l41 = alloca ptr
  %l42 = alloca i1
  %l50 = alloca i1
  %l53 = alloca i1
  %l54 = alloca ptr
  %l67 = alloca i1
  %s0 = alloca %olang.scope
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l1, !tbaa !29
  %t3 = getelementptr %"compiler/generic:fnRow", ptr %t1, i32 0, i32 1
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t6 = getelementptr %"compiler/ast:Func", ptr %t4, i32 0, i32 1
  %t7 = load ptr, ptr %t6, !tbaa !29
  %t9 = icmp eq ptr %t7, null
  br i1 %t9, label %bb1, label %bb2
bb1:
  store i1 true, ptr %l9, !tbaa !21
  br label %bb5
bb2:
  %t11 = load ptr, ptr %l0, !tbaa !29
  %t13 = getelementptr %"compiler/generic:Program", ptr %t11, i32 0, i32 0
  %t14 = load ptr, ptr %t13, !tbaa !29
  %t16 = getelementptr %"compiler/load:Loader", ptr %t14, i32 0, i32 3
  %t17 = load ptr, ptr %t16, !tbaa !29
  %t18 = load ptr, ptr %l1, !tbaa !29
  %t20 = getelementptr %"compiler/generic:fnRow", ptr %t18, i32 0, i32 1
  %t21 = load ptr, ptr %t20, !tbaa !29
  %t23 = getelementptr %"compiler/ast:Func", ptr %t21, i32 0, i32 2
  %t24 = load i32, ptr %t23, !tbaa !23
  %t27 = call { i64, ptr } @compiler_2fsource_2ecompiler_2fsource_3aNames_2eText(ptr %v0, ptr %v0, ptr %t17, i32 %t24)
  store { i64, ptr } %t27, ptr %l16
  br label %bb3
bb3:
  %t28 = load { i64, ptr }, ptr %l16, !tbaa !27
  %t29 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t28, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d49, i32 0, i32 1) })
  store i1 %t29, ptr %l17
  br label %bb4
bb4:
  %t30 = load i1, ptr %l17, !tbaa !21
  %t31 = xor i1 %t30, true
  store i1 %t31, ptr %l9, !tbaa !21
  br label %bb5
bb5:
  %t33 = load i1, ptr %l9, !tbaa !21
  br i1 %t33, label %bb6, label %bb7
bb6:
  store i1 true, ptr %l19, !tbaa !21
  br label %bb10
bb7:
  %t34 = load ptr, ptr %l0, !tbaa !29
  %t36 = getelementptr %"compiler/generic:Program", ptr %t34, i32 0, i32 0
  %t37 = load ptr, ptr %t36, !tbaa !29
  %t39 = getelementptr %"compiler/load:Loader", ptr %t37, i32 0, i32 10
  %t40 = load ptr, ptr %l1, !tbaa !29
  %t42 = getelementptr %"compiler/generic:fnRow", ptr %t40, i32 0, i32 0
  %t43 = load i64, ptr %t42, !tbaa !24
  %t46 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H7bcf2aeb09afa796f4333e6ec8c3f63f(ptr %v0, ptr %v0, ptr %t39, i64 %t43)
  store ptr %t46, ptr %l25
  br label %bb8
bb8:
  %t47 = load ptr, ptr %l25, !tbaa !29
  %t49 = getelementptr %"compiler/load:Module", ptr %t47, i32 0, i32 2
  %t50 = load { i64, ptr }, ptr %t49, !tbaa !27
  %t52 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t50, { i64, ptr } { i64 20, ptr getelementptr inbounds (<{ i64, [20 x i8] }>, ptr @.d50, i32 0, i32 1) })
  store i1 %t52, ptr %l28
  br label %bb9
bb9:
  %t53 = load i1, ptr %l28, !tbaa !21
  %t54 = xor i1 %t53, true
  store i1 %t54, ptr %l19, !tbaa !21
  br label %bb10
bb10:
  %t56 = load i1, ptr %l19, !tbaa !21
  br i1 %t56, label %bb11, label %bb12
bb11:
  call void @__olang_scope_close(ptr %s0)
  store i1 false, ptr %rv
  br label %ret
bb12:
  br label %bb13
bb13:
  %t58 = load ptr, ptr %l1, !tbaa !29
  %t60 = getelementptr %"compiler/generic:fnRow", ptr %t58, i32 0, i32 1
  %t61 = load ptr, ptr %t60, !tbaa !29
  %t63 = getelementptr %"compiler/ast:Func", ptr %t61, i32 0, i32 1
  %t64 = load ptr, ptr %t63, !tbaa !29
  %t66 = icmp eq ptr %t64, null
  br i1 %t66, label %bb14, label %bb15
bb14:
  call void @__olang_check_failed(ptr @olang_loc_ea43b29642517977_1af2b7cce6fe287b)
  unreachable
bb15:
  br label %bb16
bb16:
  %t68 = load ptr, ptr %l1, !tbaa !29
  %t70 = getelementptr %"compiler/generic:fnRow", ptr %t68, i32 0, i32 1
  %t71 = load ptr, ptr %t70, !tbaa !29
  %t73 = getelementptr %"compiler/ast:Func", ptr %t71, i32 0, i32 1
  %t74 = load ptr, ptr %t73, !tbaa !29
  %t77 = getelementptr %"compiler/ast:Param", ptr %t74, i32 0, i32 2
  %t78 = load ptr, ptr %t77, !tbaa !29
  store ptr %t78, ptr %l2, !tbaa !29
  %t80 = load ptr, ptr %l2, !tbaa !29
  store ptr %t80, ptr %l41, !tbaa !29
  store i1 false, ptr %l42, !tbaa !21
  %t81 = load ptr, ptr %l41, !tbaa !29
  %t82 = icmp ne ptr %t81, null
  br i1 %t82, label %bb17, label %bb18
bb17:
  %t84 = load ptr, ptr %l41, !tbaa !29
  %t85 = load i64, ptr %t84, !range !{i64 0, i64 8}
  %t87 = icmp eq i64 %t85, 4
  store i1 %t87, ptr %l42, !tbaa !21
  br label %bb18
bb18:
  %t88 = load i1, ptr %l42, !tbaa !21
  br i1 %t88, label %bb19, label %bb20
bb19:
  %t89 = load ptr, ptr %l2, !tbaa !29
  %t91 = getelementptr { i64, [5 x i64] }, ptr %t89, i32 0, i32 1
  %t92 = getelementptr { %"compiler/source:Span", ptr, i1 }, ptr %t91, i32 0, i32 1
  %t93 = load ptr, ptr %t92
  store ptr %t93, ptr %l3, !tbaa !29
  br label %bb21
bb20:
  br label %bb26
bb21:
  %t95 = load ptr, ptr %l3, !tbaa !29
  %t97 = icmp eq ptr %t95, null
  %t99 = xor i1 %t97, true
  br i1 %t99, label %bb22, label %bb23
bb22:
  %t101 = load ptr, ptr %l0, !tbaa !29
  %t102 = load ptr, ptr %l3, !tbaa !29
  %t105 = call i1 @compiler_2fgeneric_2eviewGenTy(ptr %v0, ptr %v1, ptr %t101, ptr %t102)
  store i1 %t105, ptr %l53
  br label %bb24
bb23:
  store i1 false, ptr %l50, !tbaa !21
  br label %bb25
bb24:
  %t106 = load i1, ptr %l53, !tbaa !21
  store i1 %t106, ptr %l50, !tbaa !21
  br label %bb25
bb25:
  %t107 = load i1, ptr %l50, !tbaa !21
  store i1 %t107, ptr %l40, !tbaa !21
  br label %bb38
bb26:
  br i1 true, label %bb27, label %bb28
bb27:
  br label %bb29
bb28:
  br label %bb37
bb29:
  %t108 = load ptr, ptr %l0, !tbaa !29
  store ptr %t108, ptr %l54, !tbaa !29
  %t109 = load ptr, ptr %l1, !tbaa !29
  %t111 = getelementptr %"compiler/generic:fnRow", ptr %t109, i32 0, i32 1
  %t112 = load ptr, ptr %t111, !tbaa !29
  %t114 = getelementptr %"compiler/ast:Func", ptr %t112, i32 0, i32 1
  %t115 = load ptr, ptr %t114, !tbaa !29
  %t117 = icmp eq ptr %t115, null
  br i1 %t117, label %bb30, label %bb31
bb30:
  call void @__olang_check_failed(ptr @olang_loc_2ac89deeabe02958_a25efd24ea33a60c)
  unreachable
bb31:
  br label %bb32
bb32:
  %t119 = load ptr, ptr %l1, !tbaa !29
  %t121 = getelementptr %"compiler/generic:fnRow", ptr %t119, i32 0, i32 1
  %t122 = load ptr, ptr %t121, !tbaa !29
  %t124 = getelementptr %"compiler/ast:Func", ptr %t122, i32 0, i32 1
  %t125 = load ptr, ptr %t124, !tbaa !29
  %t128 = getelementptr %"compiler/ast:Param", ptr %t125, i32 0, i32 2
  %t129 = load ptr, ptr %t128, !tbaa !29
  store ptr %t129, ptr %l4, !tbaa !29
  %t131 = load ptr, ptr %l4, !tbaa !29
  %t133 = icmp eq ptr %t131, null
  br i1 %t133, label %bb33, label %bb34
bb33:
  call void @__olang_check_failed(ptr @olang_loc_2ac89deeabe02958_a25efd24ea33a60c)
  unreachable
bb34:
  br label %bb35
bb35:
  %t135 = load ptr, ptr %l4, !tbaa !29
  %t136 = load ptr, ptr %l54, !tbaa !29
  %t138 = call i1 @compiler_2fgeneric_2eviewGenTy(ptr %v0, ptr %v1, ptr %t136, ptr %t135)
  store i1 %t138, ptr %l67
  br label %bb36
bb36:
  %t139 = load i1, ptr %l67, !tbaa !21
  store i1 %t139, ptr %l40, !tbaa !21
  br label %bb38
bb37:
  call void @__olang_check_failed(ptr @olang_loc_97cd5f16af0b6614_78a73ec613500ec8)
  unreachable
bb38:
  call void @__olang_scope_close(ptr %s0)
  %t140 = load i1, ptr %l40, !tbaa !21
  store i1 %t140, ptr %rv
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

define dso_local i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3acursor_2eeat(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca { i64, ptr }
  %l13 = alloca { i64, ptr }
  %l15 = alloca i64
  %l20 = alloca i64
  %l21 = alloca i64
  %l27 = alloca i1
  %l30 = alloca ptr
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store { i64, ptr } %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/generic:cursor", ptr %t1, i32 0, i32 1
  %t4 = load i64, ptr %t3, !tbaa !24
  %t5 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t7 = extractvalue { i64, ptr } %t5, 0
  %t10 = add i64 %t4, %t7
  %t11 = load ptr, ptr %l0, !tbaa !29
  %t13 = getelementptr %"compiler/generic:cursor", ptr %t11, i32 0, i32 0
  %t14 = load { i64, ptr }, ptr %t13, !tbaa !27
  %t16 = extractvalue { i64, ptr } %t14, 0
  %t19 = icmp sgt i64 %t10, %t16
  br i1 %t19, label %bb1, label %bb2
bb1:
  store i1 false, ptr %rv
  br label %ret
bb2:
  br label %bb3
bb3:
  %t22 = load ptr, ptr %l0, !tbaa !29
  %t24 = getelementptr %"compiler/generic:cursor", ptr %t22, i32 0, i32 0
  %t25 = load { i64, ptr }, ptr %t24, !tbaa !27
  store { i64, ptr } %t25, ptr %l13, !tbaa !27
  %t26 = load ptr, ptr %l0, !tbaa !29
  %t28 = getelementptr %"compiler/generic:cursor", ptr %t26, i32 0, i32 1
  %t29 = load i64, ptr %t28, !tbaa !24
  store i64 %t29, ptr %l15, !tbaa !24
  %t30 = load ptr, ptr %l0, !tbaa !29
  %t32 = getelementptr %"compiler/generic:cursor", ptr %t30, i32 0, i32 1
  %t33 = load i64, ptr %t32, !tbaa !24
  %t34 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t36 = extractvalue { i64, ptr } %t34, 0
  %t39 = add i64 %t33, %t36
  store i64 %t39, ptr %l20, !tbaa !24
  %t40 = load { i64, ptr }, ptr %l13, !tbaa !27
  %t41 = extractvalue { i64, ptr } %t40, 0
  store i64 %t41, ptr %l21, !tbaa !24
  %t42 = load i64, ptr %l15, !tbaa !24
  %t43 = icmp sge i64 %t42, 0
  br i1 %t43, label %bb4, label %bb5
bb4:
  %t45 = load i64, ptr %l15, !tbaa !24
  %t46 = load i64, ptr %l20, !tbaa !24
  %t47 = icmp sle i64 %t45, %t46
  br i1 %t47, label %bb6, label %bb7
bb5:
  call void @__olang_check_failed(ptr @olang_loc_759448a6dcc06fe9_971bda559b794c25)
  unreachable
bb6:
  %t49 = load i64, ptr %l20, !tbaa !24
  %t50 = load i64, ptr %l21, !tbaa !24
  %t51 = icmp sle i64 %t49, %t50
  br i1 %t51, label %bb8, label %bb9
bb7:
  call void @__olang_check_failed(ptr @olang_loc_759448a6dcc06fe9_971bda559b794c25)
  unreachable
bb8:
  %t53 = getelementptr { i64, ptr }, ptr %l13, i32 0, i32 1
  %t54 = load ptr, ptr %t53, !tbaa !27
  %t55 = load i64, ptr %l15, !tbaa !24
  %t56 = load i64, ptr %l20, !tbaa !24
  %t57 = getelementptr i8, ptr %t54, i64 %t55
  %t58 = sub i64 %t56, %t55
  %t59 = insertvalue { i64, ptr } undef, i64 %t58, 0
  %t60 = insertvalue { i64, ptr } %t59, ptr %t57, 1
  %t61 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t64 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %v1, { i64, ptr } %t60, { i64, ptr } %t61)
  store i1 %t64, ptr %l27
  br label %bb10
bb9:
  call void @__olang_check_failed(ptr @olang_loc_759448a6dcc06fe9_971bda559b794c25)
  unreachable
bb10:
  %t65 = load i1, ptr %l27, !tbaa !21
  %t66 = xor i1 %t65, true
  br i1 %t66, label %bb11, label %bb12
bb11:
  store i1 false, ptr %rv
  br label %ret
bb12:
  br label %bb13
bb13:
  %t69 = load ptr, ptr %l0, !tbaa !29
  store ptr %t69, ptr %l30, !tbaa !29
  %t70 = load ptr, ptr %l30, !tbaa !29
  %t71 = getelementptr %"compiler/generic:cursor", ptr %t70, i32 0, i32 1
  %t72 = load i64, ptr %t71, !tbaa !24
  %t73 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t75 = extractvalue { i64, ptr } %t73, 0
  %t78 = add i64 %t72, %t75
  %t80 = load ptr, ptr %l30, !tbaa !29
  %t81 = getelementptr %"compiler/generic:cursor", ptr %t80, i32 0, i32 1
  store i64 %t78, ptr %t81, !tbaa !24
  store i1 true, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local void @compiler_2fgeneric_2ecompiler_2fgeneric_3agenRoots_2estmts(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1) #0 {
entry:
  %l2 = alloca { i64, ptr }
  %l3 = alloca i64
  %l4 = alloca i64
  %l13 = alloca { i64, ptr }
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
  br label %bb7
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
  call void @compiler_2fgeneric_2ecompiler_2fgeneric_3agenRoots_2estmt(ptr %v0, ptr %v1, ptr %a0, ptr %t21)
  br label %bb5
bb5:
  br label %bb6
bb6:
  %t28 = load i64, ptr %l3, !tbaa !24
  %t30 = add i64 %t28, 1
  store i64 %t30, ptr %l3, !tbaa !24
  br label %bb1
bb7:
  br label %ret
ret:
  ret void
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

define dso_local { i64, ptr } @compiler_2fgeneric_2efieldAttrs(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1, i32 %a2, { i64, ptr } %a3) #0 {
entry:
  %l1 = alloca ptr
  %l4 = alloca { i64, ptr }
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca ptr
  %l12 = alloca i1
  %l27 = alloca { i64, ptr }
  %rv = alloca { i64, ptr }
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
  store i1 true, ptr %l12, !tbaa !21
  br label %bb3
bb2:
  %t10 = load ptr, ptr %l1, !tbaa !29
  %t12 = getelementptr %"compiler/ast:VarDecl", ptr %t10, i32 0, i32 3
  %t13 = load { i64, ptr }, ptr %t12, !tbaa !27
  %t15 = extractvalue { i64, ptr } %t13, 0
  %t17 = icmp sgt i64 %t15, 0
  store i1 %t17, ptr %l12, !tbaa !21
  br label %bb3
bb3:
  %t19 = load i1, ptr %l12, !tbaa !21
  br i1 %t19, label %bb4, label %bb5
bb4:
  %t20 = load ptr, ptr %l1, !tbaa !29
  %t22 = getelementptr %"compiler/ast:VarDecl", ptr %t20, i32 0, i32 6
  %t23 = load { i64, ptr }, ptr %t22, !tbaa !27
  store { i64, ptr } %t23, ptr %rv
  br label %ret
bb5:
  br label %bb6
bb6:
  %t27 = getelementptr %"compiler/ast:StructBody", ptr %a0, i32 0, i32 0
  %t28 = load { i64, ptr }, ptr %t27, !tbaa !27
  store { i64, ptr } %t28, ptr %l4, !tbaa !27
  store i64 0, ptr %l5, !tbaa !24
  %t30 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t32 = extractvalue { i64, ptr } %t30, 0
  store i64 %t32, ptr %l6, !tbaa !24
  br label %bb7
bb7:
  %t34 = load i64, ptr %l5, !tbaa !24
  %t35 = load i64, ptr %l6, !tbaa !24
  %t38 = icmp slt i64 %t34, %t35
  %t40 = xor i1 %t38, true
  br i1 %t40, label %bb8, label %bb9
bb8:
  br label %bb15
bb9:
  br label %bb10
bb10:
  %t42 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t42, ptr %l27, !tbaa !27
  %t43 = load i64, ptr %l5, !tbaa !24
  %t45 = getelementptr { i64, ptr }, ptr %l27, i32 0, i32 1
  %t46 = load ptr, ptr %t45, !tbaa !27
  %t47 = getelementptr ptr, ptr %t46, i64 %t43
  %t48 = load ptr, ptr %t47, !tbaa !39
  store ptr %t48, ptr %l7, !tbaa !29
  %t50 = load ptr, ptr %l7, !tbaa !29
  %t52 = getelementptr %"compiler/ast:Param", ptr %t50, i32 0, i32 1
  %t53 = load i32, ptr %t52, !tbaa !23
  %t57 = icmp eq i32 %t53, %a2
  br i1 %t57, label %bb11, label %bb12
bb11:
  %t59 = load ptr, ptr %l7, !tbaa !29
  %t61 = getelementptr %"compiler/ast:Param", ptr %t59, i32 0, i32 4
  %t62 = load { i64, ptr }, ptr %t61, !tbaa !27
  store { i64, ptr } %t62, ptr %rv
  br label %ret
bb12:
  br label %bb13
bb13:
  br label %bb14
bb14:
  %t64 = load i64, ptr %l5, !tbaa !24
  %t66 = add i64 %t64, 1
  store i64 %t66, ptr %l5, !tbaa !24
  br label %bb7
bb15:
  store { i64, ptr } %a3, ptr %rv
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

define dso_local i1 @compiler_2fgeneric_2eisErrsArg(ptr %v0, ptr %a0) #0 {
entry:
  %l1 = alloca i1
  %l2 = alloca ptr
  %l3 = alloca i1
  %rv = alloca i1
  br label %start
start:
  br label %bb0
bb0:
  store ptr %a0, ptr %l2, !tbaa !29
  store i1 false, ptr %l3, !tbaa !21
  %t2 = load ptr, ptr %l2, !tbaa !29
  %t3 = icmp ne ptr %t2, null
  br i1 %t3, label %bb1, label %bb2
bb1:
  %t5 = load ptr, ptr %l2, !tbaa !29
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 8}
  %t8 = icmp eq i64 %t6, 6
  store i1 %t8, ptr %l3, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l3, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  br label %bb5
bb4:
  br label %bb6
bb5:
  store i1 true, ptr %l1, !tbaa !21
  br label %bb11
bb6:
  br i1 true, label %bb7, label %bb8
bb7:
  br label %bb9
bb8:
  br label %bb10
bb9:
  store i1 false, ptr %l1, !tbaa !21
  br label %bb11
bb10:
  call void @__olang_check_failed(ptr @olang_loc_90309fa9b0fb789a_4b8ce68c657018ae)
  unreachable
bb11:
  %t10 = load i1, ptr %l1, !tbaa !21
  store i1 %t10, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i1 @compiler_2fgeneric_2emadeByCall(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i1
  %l3 = alloca ptr
  %l4 = alloca i1
  %l7 = alloca ptr
  %l8 = alloca i1
  %l13 = alloca ptr
  %l14 = alloca i1
  %l20 = alloca i1
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
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 28}
  %t8 = icmp eq i64 %t6, 10
  store i1 %t8, ptr %l4, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l4, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  br label %bb5
bb4:
  br label %bb6
bb5:
  store i1 true, ptr %l2, !tbaa !21
  br label %bb22
bb6:
  %t10 = load ptr, ptr %l0, !tbaa !29
  store ptr %t10, ptr %l7, !tbaa !29
  store i1 false, ptr %l8, !tbaa !21
  %t11 = load ptr, ptr %l7, !tbaa !29
  %t12 = icmp ne ptr %t11, null
  br i1 %t12, label %bb7, label %bb8
bb7:
  %t14 = load ptr, ptr %l7, !tbaa !29
  %t15 = load i64, ptr %t14, !range !{i64 0, i64 28}
  %t17 = icmp eq i64 %t15, 2
  store i1 %t17, ptr %l8, !tbaa !21
  br label %bb8
bb8:
  %t18 = load i1, ptr %l8, !tbaa !21
  br i1 %t18, label %bb9, label %bb10
bb9:
  %t19 = load ptr, ptr %l0, !tbaa !29
  %t21 = getelementptr { i64, [4 x i64] }, ptr %t19, i32 0, i32 1
  %t22 = getelementptr { %"compiler/source:Span", ptr }, ptr %t21, i32 0, i32 1
  %t23 = load ptr, ptr %t22
  store ptr %t23, ptr %l1, !tbaa !29
  br label %bb15
bb10:
  %t25 = load ptr, ptr %l0, !tbaa !29
  store ptr %t25, ptr %l13, !tbaa !29
  store i1 false, ptr %l14, !tbaa !21
  %t26 = load ptr, ptr %l13, !tbaa !29
  %t27 = icmp ne ptr %t26, null
  br i1 %t27, label %bb11, label %bb12
bb11:
  %t29 = load ptr, ptr %l13, !tbaa !29
  %t30 = load i64, ptr %t29, !range !{i64 0, i64 28}
  %t32 = icmp eq i64 %t30, 19
  store i1 %t32, ptr %l14, !tbaa !21
  br label %bb12
bb12:
  %t33 = load i1, ptr %l14, !tbaa !21
  br i1 %t33, label %bb13, label %bb14
bb13:
  %t34 = load ptr, ptr %l0, !tbaa !29
  %t36 = getelementptr { i64, [4 x i64] }, ptr %t34, i32 0, i32 1
  %t37 = getelementptr { %"compiler/source:Span", ptr, { i64, ptr } }, ptr %t36, i32 0, i32 1
  %t38 = load ptr, ptr %t37
  store ptr %t38, ptr %l1, !tbaa !29
  br label %bb15
bb14:
  br label %bb17
bb15:
  %t40 = load ptr, ptr %l1, !tbaa !29
  %t42 = call i1 @compiler_2fgeneric_2emadeByCall(ptr %v0, ptr %t40)
  store i1 %t42, ptr %l20
  br label %bb16
bb16:
  %t43 = load i1, ptr %l20, !tbaa !21
  store i1 %t43, ptr %l2, !tbaa !21
  br label %bb22
bb17:
  br i1 true, label %bb18, label %bb19
bb18:
  br label %bb20
bb19:
  br label %bb21
bb20:
  store i1 false, ptr %l2, !tbaa !21
  br label %bb22
bb21:
  call void @__olang_check_failed(ptr @olang_loc_56a9f796d6022e8a_9e3c205a980da41e)
  unreachable
bb22:
  %t44 = load i1, ptr %l2, !tbaa !21
  store i1 %t44, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
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
  %t1 = load i32, ptr %l0, !range !{i32 0, i32 113}
  %t3 = trunc i64 56 to i32
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
  %t8 = load i32, ptr %l0, !range !{i32 0, i32 113}
  %t10 = trunc i64 57 to i32
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
  %t15 = load i32, ptr %l0, !range !{i32 0, i32 113}
  %t17 = trunc i64 58 to i32
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
  %t22 = load i32, ptr %l0, !range !{i32 0, i32 113}
  %t24 = trunc i64 59 to i32
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
  %t29 = load i32, ptr %l0, !range !{i32 0, i32 113}
  %t31 = trunc i64 60 to i32
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
  %t36 = load i32, ptr %l0, !range !{i32 0, i32 113}
  %t38 = trunc i64 61 to i32
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
  %t43 = load i32, ptr %l0, !range !{i32 0, i32 113}
  %t45 = trunc i64 62 to i32
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
  %t50 = load i32, ptr %l0, !range !{i32 0, i32 113}
  %t52 = trunc i64 65 to i32
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

define dso_local { i64, ptr } @compiler_2fgeneric_2esaidRules(ptr %v0, ptr %v1, ptr %a0) #0 {
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
  %l38 = alloca ptr
  %l39 = alloca i64
  %l44 = alloca i64
  %l45 = alloca %"compiler/load:Loader"
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
  %t5 = extractvalue { i64, ptr } { i64 11, ptr getelementptr inbounds (<{ i64, [11 x i8] }>, ptr @.d51, i32 0, i32 1) }, 1
  %t6 = extractvalue { i64, ptr } { i64 11, ptr getelementptr inbounds (<{ i64, [11 x i8] }>, ptr @.d51, i32 0, i32 1) }, 0
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
  call void @compiler_2fcond_2ecompiler_2fcond_3aConsts_2eBuiltins(ptr %v2, ptr %v2, ptr %v2, ptr %v2, ptr %t38, { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d52, i32 0, i32 1) }, { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d53, i32 0, i32 1) }, { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d54, i32 0, i32 1) }, i64 128, i64 0, i1 false, i1 false, i1 false)
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
  %t59 = extractvalue { i64, ptr } { i64 11, ptr getelementptr inbounds (<{ i64, [11 x i8] }>, ptr @.d55, i32 0, i32 1) }, 1
  %t60 = extractvalue { i64, ptr } { i64 11, ptr getelementptr inbounds (<{ i64, [11 x i8] }>, ptr @.d55, i32 0, i32 1) }, 0
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
  %t90 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d56, i32 0, i32 1) }, 1
  %t91 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d56, i32 0, i32 1) }, 0
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
  call void @compiler_2ffetch_3aFetcher_2ector(ptr %t108, ptr %t110, ptr %t112, ptr %v2, ptr %t114, { i64, ptr } %t115, { i64, ptr } %t107, { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d57, i32 0, i32 1) }, i1 false, i1 true)
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
  call void @llvm.memmove.p0.p0.i64(ptr %l35, ptr %t132, i64 704, i1 false)
  br label %bb19
bb19:
  %t133 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 704, i64 8)
  call void @llvm.memmove.p0.p0.i64(ptr %t133, ptr %l35, i64 704, i1 false)
  %t135 = load ptr, ptr %l16, !tbaa !29
  %t136 = load ptr, ptr %l30, !tbaa !29
  %t137 = load ptr, ptr %l34, !tbaa !29
  call void @compiler_2fload_3aLoader_2ector(ptr %t134, ptr %v2, ptr %v2, ptr %v2, ptr %v2, ptr %v2, ptr %v2, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d58, i32 0, i32 1) }, ptr %t135, ptr %t136, ptr %t137, ptr %t133)
  call void @llvm.memmove.p0.p0.i64(ptr %l37, ptr %t134, i64 752, i1 false)
  br label %bb20
bb20:
  %t139 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 752, i64 8)
  store ptr %t139, ptr %lp3
  %t140 = load ptr, ptr %lp3
  call void @llvm.memmove.p0.p0.i64(ptr %t140, ptr %l37, i64 752, i1 false)
  %t141 = load ptr, ptr %lp3
  store ptr %t141, ptr %l38, !tbaa !29
  %t142 = ptrtoint ptr %v2 to i64
  store i64 %t142, ptr %l39, !tbaa !24
  %t143 = load i1, ptr @olang_2esole_2ecompiler_2fload_3aModule_2e0
  br i1 %t143, label %bb21, label %bb22
bb21:
  %t145 = call ptr @__olang_region_make(ptr %v2)
  %t146 = ptrtoint ptr %t145 to i64
  store i64 %t146, ptr %l39, !tbaa !24
  br label %bb22
bb22:
  %t147 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t149 = extractvalue { i64, ptr } %t147, 1
  %t150 = extractvalue { i64, ptr } %t147, 0
  %t151 = extractvalue { i64, ptr } { i64 11, ptr getelementptr inbounds (<{ i64, [11 x i8] }>, ptr @.d59, i32 0, i32 1) }, 1
  %t152 = extractvalue { i64, ptr } { i64 11, ptr getelementptr inbounds (<{ i64, [11 x i8] }>, ptr @.d59, i32 0, i32 1) }, 0
  %t153 = add i64 %t150, %t152
  %t154 = load i64, ptr %l39
  %t155 = inttoptr i64 %t154 to ptr
  %t156 = call ptr @__olang_scope_alloc(ptr %t155, i64 %t153)
  call void @olang_textcopy(ptr %t156, ptr %t149, i64 %t150)
  %t157 = getelementptr i8, ptr %t156, i64 %t150
  call void @olang_textcopy(ptr %t157, ptr %t151, i64 %t152)
  %t158 = insertvalue { i64, ptr } undef, i64 %t153, 0
  %t159 = insertvalue { i64, ptr } %t158, ptr %t156, 1
  %t161 = load i64, ptr %l39
  %t162 = inttoptr i64 %t161 to ptr
  %t163 = extractvalue { i64, ptr } %t159, 0
  %t164 = extractvalue { i64, ptr } %t159, 1
  %t165 = mul i64 %t163, 1
  %t166 = call ptr @__olang_scope_alloc(ptr %t162, i64 %t165)
  call void @llvm.memcpy.p0.p0.i64(ptr %t166, ptr %t164, i64 %t165, i1 false)
  %t167 = insertvalue { i64, ptr } undef, i64 %t163, 0
  %t168 = insertvalue { i64, ptr } %t167, ptr %t166, 1
  %t169 = load ptr, ptr %l38, !tbaa !29
  %t171 = call i64 @compiler_2fload_2ecompiler_2fload_3aLoader_2eLoad(ptr %v2, ptr %v2, ptr %t169, { i64, ptr } %t168)
  store i64 %t171, ptr %l44
  br label %bb23
bb23:
  %t172 = load ptr, ptr %lp3
  call void @llvm.memmove.p0.p0.i64(ptr %l45, ptr %t172, i64 752, i1 false)
  call void @__olang_scope_close(ptr %s0)
  call void @llvm.memmove.p0.p0.i64(ptr %out, ptr %l45, i64 752, i1 false)
  br label %ret
ret:
  ret void
}

define dso_local %"compiler/generic:Binding" @compiler_2fgeneric_3aBinding_2ector(ptr %v0, i64 %a0, i64 %a1) #0 {
entry:
  %l1 = alloca i64
  %l2 = alloca i64
  %l3 = alloca i64
  %l4 = alloca { i64, ptr }
  %l5 = alloca { i64, ptr }
  %l9 = alloca i64
  %l11 = alloca i64
  %l15 = alloca i64
  %l17 = alloca i64
  %l20 = alloca i64
  %l22 = alloca i64
  %rv = alloca %"compiler/generic:Binding"
  store i64 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store i64 %a0, ptr %l2, !tbaa !24
  %t3 = load i64, ptr %l1, !tbaa !24
  store i64 %t3, ptr %l3, !tbaa !24
  %t5 = ptrtoint ptr %v0 to i64
  store i64 %t5, ptr %l9, !tbaa !24
  %t6 = load i1, ptr @olang_2esole_2ecompiler_2fgeneric_3aBinding_2e2
  br i1 %t6, label %bb1, label %bb2
bb1:
  %t8 = call ptr @__olang_region_make(ptr %v0)
  %t9 = ptrtoint ptr %t8 to i64
  store i64 %t9, ptr %l9, !tbaa !24
  br label %bb2
bb2:
  %t10 = load i64, ptr %l1, !tbaa !24
  store i64 %t10, ptr %l11, !tbaa !24
  %t11 = load i64, ptr %l11, !tbaa !24
  %t12 = icmp sge i64 %t11, 0
  br i1 %t12, label %bb3, label %bb4
bb3:
  %t14 = load i64, ptr %l11, !tbaa !24
  %t15 = icmp sle i64 %t14, 2305843009213693951
  br i1 %t15, label %bb5, label %bb6
bb4:
  call void @__olang_check_failed(ptr @olang_loc_8e4da92f4f682bfd_d3a5cd4c92991ca9)
  unreachable
bb5:
  %t17 = load i64, ptr %l11, !tbaa !24
  %t18 = mul i64 %t17, 4
  %t19 = load i64, ptr %l9
  %t20 = inttoptr i64 %t19 to ptr
  %t21 = call ptr @__olang_scope_alloc_zeroed(ptr %t20, i64 %t18)
  %t22 = insertvalue { i64, ptr } undef, i64 %t17, 0
  %t23 = insertvalue { i64, ptr } %t22, ptr %t21, 1
  store { i64, ptr } %t23, ptr %l4, !tbaa !27
  %t25 = ptrtoint ptr %v0 to i64
  store i64 %t25, ptr %l15, !tbaa !24
  %t26 = load i1, ptr @olang_2esole_2ecompiler_2fgeneric_3aBinding_2e3
  br i1 %t26, label %bb7, label %bb8
bb6:
  call void @__olang_check_failed(ptr @olang_loc_8e4da92f4f682bfd_d3a5cd4c92991ca9)
  unreachable
bb7:
  %t28 = call ptr @__olang_region_make(ptr %v0)
  %t29 = ptrtoint ptr %t28 to i64
  store i64 %t29, ptr %l15, !tbaa !24
  br label %bb8
bb8:
  %t30 = load i64, ptr %l1, !tbaa !24
  store i64 %t30, ptr %l17, !tbaa !24
  %t31 = load i64, ptr %l17, !tbaa !24
  %t32 = icmp sge i64 %t31, 0
  br i1 %t32, label %bb9, label %bb10
bb9:
  %t34 = load i64, ptr %l17, !tbaa !24
  %t35 = mul i64 %t34, 1
  %t36 = load i64, ptr %l15
  %t37 = inttoptr i64 %t36 to ptr
  %t38 = call ptr @__olang_scope_alloc_zeroed(ptr %t37, i64 %t35)
  %t39 = insertvalue { i64, ptr } undef, i64 %t34, 0
  %t40 = insertvalue { i64, ptr } %t39, ptr %t38, 1
  store { i64, ptr } %t40, ptr %l5, !tbaa !27
  %t42 = ptrtoint ptr %v0 to i64
  store i64 %t42, ptr %l20, !tbaa !24
  %t43 = load i1, ptr @olang_2esole_2ecompiler_2fgeneric_3aBinding_2e4
  br i1 %t43, label %bb11, label %bb12
bb10:
  call void @__olang_check_failed(ptr @olang_loc_d2716e3b81e17ed0_f7580b05837cd1dc)
  unreachable
bb11:
  %t45 = call ptr @__olang_region_make(ptr %v0)
  %t46 = ptrtoint ptr %t45 to i64
  store i64 %t46, ptr %l20, !tbaa !24
  br label %bb12
bb12:
  %t47 = load i64, ptr %l1, !tbaa !24
  store i64 %t47, ptr %l22, !tbaa !24
  %t48 = load i64, ptr %l22, !tbaa !24
  %t49 = icmp sge i64 %t48, 0
  br i1 %t49, label %bb13, label %bb14
bb13:
  %t51 = load i64, ptr %l22, !tbaa !24
  %t52 = mul i64 %t51, 1
  %t53 = load i64, ptr %l20
  %t54 = inttoptr i64 %t53 to ptr
  %t55 = call ptr @__olang_scope_alloc_zeroed(ptr %t54, i64 %t52)
  %t56 = insertvalue { i64, ptr } undef, i64 %t51, 0
  %t57 = insertvalue { i64, ptr } %t56, ptr %t55, 1
  %t59 = load i64, ptr %l2, !tbaa !24
  %t60 = insertvalue %"compiler/generic:Binding" undef, i64 %t59, 0
  %t61 = load i64, ptr %l3, !tbaa !24
  %t62 = insertvalue %"compiler/generic:Binding" %t60, i64 %t61, 1
  %t63 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t64 = insertvalue %"compiler/generic:Binding" %t62, { i64, ptr } %t63, 2
  %t65 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t66 = insertvalue %"compiler/generic:Binding" %t64, { i64, ptr } %t65, 3
  %t68 = insertvalue %"compiler/generic:Binding" %t66, { i64, ptr } %t57, 4
  store %"compiler/generic:Binding" %t68, ptr %rv
  br label %ret
bb14:
  call void @__olang_check_failed(ptr @olang_loc_7f889b865e0796f3_e5c04d4d88f5fb3f)
  unreachable
ret:
  %rr = load %"compiler/generic:Binding", ptr %rv
  ret %"compiler/generic:Binding" %rr
}

define dso_local %"compiler/generic:genRoots" @compiler_2fgeneric_3agenRoots_2ector(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1) #0 {
entry:
  %l2 = alloca { i64, ptr }
  %l3 = alloca { i64, ptr }
  %l8 = alloca i64
  %l10 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %rv = alloca %"compiler/generic:genRoots"
  br label %start
start:
  br label %bb0
bb0:
  store { i64, ptr } %a0, ptr %l2, !tbaa !27
  store { i64, ptr } %a1, ptr %l3, !tbaa !27
  %t5 = ptrtoint ptr %v2 to i64
  store i64 %t5, ptr %l8, !tbaa !24
  %t6 = load i1, ptr @olang_2esole_2ecompiler_2fgeneric_3agenRoots_2e2
  br i1 %t6, label %bb1, label %bb2
bb1:
  %t8 = call ptr @__olang_region_make(ptr %v2)
  %t9 = ptrtoint ptr %t8 to i64
  store i64 %t9, ptr %l8, !tbaa !24
  br label %bb2
bb2:
  %t10 = load i64, ptr %l8
  %t11 = inttoptr i64 %t10 to ptr
  %t12 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fsource_3aNameId_2c_20I64_3e(ptr %t11)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t12, ptr %l10
  br label %bb3
bb3:
  %t13 = load i1, ptr @olang_2esole_2ecompiler_2fgeneric_3agenRoots_2e2
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
  %t40 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t41 = insertvalue %"compiler/generic:genRoots" undef, { i64, ptr } %t40, 0
  %t42 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t43 = insertvalue %"compiler/generic:genRoots" %t41, { i64, ptr } %t42, 1
  %t45 = insertvalue %"compiler/generic:genRoots" %t43, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t39, 2
  %t47 = insertvalue %"compiler/generic:genRoots" %t45, i64 0, 3
  store %"compiler/generic:genRoots" %t47, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/generic:genRoots", ptr %rv
  ret %"compiler/generic:genRoots" %rr
}

define dso_local %"compiler/generic:instance" @compiler_2fgeneric_3ainstance_2ector(ptr %v0, ptr %v1, ptr %v2, i64 %a0, i32 %a1, i32 %a2, { i64, ptr } %a3, { i64, ptr } %a4, %"compiler/generic:Origin" %a5) #0 {
entry:
  %rv = alloca %"compiler/generic:instance"
  br label %start
start:
  br label %bb0
bb0:
  %t14 = insertvalue %"compiler/generic:instance" undef, i64 %a0, 0
  %t16 = insertvalue %"compiler/generic:instance" %t14, i32 %a1, 1
  %t18 = insertvalue %"compiler/generic:instance" %t16, i32 %a2, 2
  %t20 = insertvalue %"compiler/generic:instance" %t18, { i64, ptr } %a3, 3
  %t22 = insertvalue %"compiler/generic:instance" %t20, { i64, ptr } %a4, 4
  %t24 = insertvalue %"compiler/generic:instance" %t22, %"compiler/generic:Origin" %a5, 5
  store %"compiler/generic:instance" %t24, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/generic:instance", ptr %rv
  ret %"compiler/generic:instance" %rr
}

define dso_local %"compiler/generic:varRow" @compiler_2fgeneric_3avarRow_2ector(ptr %v0, i64 %a0, i32 %a1, i32 %a2, i32 %a3) #0 {
entry:
  %rv = alloca %"compiler/generic:varRow"
  br label %start
start:
  br label %bb0
bb0:
  %t10 = insertvalue %"compiler/generic:varRow" undef, i64 %a0, 0
  %t12 = insertvalue %"compiler/generic:varRow" %t10, i32 %a1, 1
  %t14 = insertvalue %"compiler/generic:varRow" %t12, i32 %a2, 2
  %t16 = insertvalue %"compiler/generic:varRow" %t14, i32 %a3, 3
  store %"compiler/generic:varRow" %t16, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/generic:varRow", ptr %rv
  ret %"compiler/generic:varRow" %rr
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
  call void @__olang_check_failed(ptr @.c60)
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
declare noalias ptr @__olang_scope_alloc_zeroed(ptr, i64)
declare void @llvm.memmove.p0.p0.i64(ptr, ptr, i64, i1)
@__olang_empty_array = external constant [16 x i64]
declare ptr @__olang_scope_of(ptr, ptr) noinline
@.d13 = private constant <{ i64, [19 x i8] }> <{ i64 0, [19 x i8] c"std/prelude/reflect" }>, align 8
define internal i1 @olang_lambda_14(ptr %env, i32 %a0, i32 %a1) #0 {
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

declare void @llvm.memcpy.p0.p0.i64(ptr, ptr, i64, i1)
declare ptr @llvm.coro.promise(ptr, i32, i1)
@.d15 = private constant <{ i64, [9 x i8] }> <{ i64 0, [9 x i8] c"ColumnVec" }>, align 8
@.d16 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"main" }>, align 8
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

define linkonce_odr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId_2c_20Bool_3e(ptr %v0) #0 {
entry:
  %l0 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %rv = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  br label %start
start:
  br label %bb0
bb0:
  %t1 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId_2c_20Bool_3e_2ector(ptr %v0)
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

declare i64 @__olang_fmt_i64(ptr, i64)
@.d17 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d18 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"Bool" }>, align 8
@.d19 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"Len" }>, align 8
@.d20 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"I64" }>, align 8
@.d21 = private constant <{ i64, [20 x i8] }> <{ i64 0, [20 x i8] c"std/prelude/iterator" }>, align 8
@.d22 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c"Iterator" }>, align 8
@.d23 = private constant <{ i64, [20 x i8] }> <{ i64 0, [20 x i8] c"std/prelude/iterator" }>, align 8
@.d24 = private constant <{ i64, [9 x i8] }> <{ i64 0, [9 x i8] c"Generator" }>, align 8
@.d25 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"Hash" }>, align 8
@.d26 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"hash" }>, align 8
@.d27 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d28 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d29 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d30 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d31 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"[0]" }>, align 8
@.d32 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d33 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"Hash" }>, align 8
@.d34 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c", " }>, align 8
@.d35 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"Array<" }>, align 8
@.d36 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"mut " }>, align 8
@.d37 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"?&" }>, align 8
@.d38 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"&" }>, align 8
@.d39 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"?&" }>, align 8
@.d40 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"&" }>, align 8
@.d41 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"fn?&(" }>, align 8
@.d42 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"fn&(" }>, align 8
@.d43 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c", " }>, align 8
@.d44 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c", " }>, align 8
@.d45 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d46 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c", " }>, align 8
@.d47 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c" ? " }>, align 8
@.d48 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c", " }>, align 8
@.d49 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"Next" }>, align 8
@.d50 = private constant <{ i64, [20 x i8] }> <{ i64 0, [20 x i8] c"std/prelude/iterator" }>, align 8
@olang_2esole_2ecompiler_2fgeneric_3agenRoots_2e0 = weak hidden constant i1 false
declare ptr @__olang_region_make(ptr) noinline
@olang_2esole_2ecompiler_2fgeneric_3agenRoots_2e1 = weak hidden constant i1 false
declare i64 @llvm.ctpop.i64(i64)
declare i64 @llvm.cttz.i64(i64, i1)
@.d51 = private constant <{ i64, [11 x i8] }> <{ i64 0, [11 x i8] c"/main.olang" }>, align 8
declare void @__olang_errpay_pop()
@.d52 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"linux" }>, align 8
@.d53 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"x86_64" }>, align 8
@.d54 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"x86-64" }>, align 8
@olang_2esole_2ecompiler_2fload_3aLoader_2e2 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2ffetch_3aFetcher_2e0 = weak hidden constant i1 false
@.d55 = private constant <{ i64, [11 x i8] }> <{ i64 0, [11 x i8] c"/olang.lock" }>, align 8
@olang_2esole_2ecompiler_2ffetch_3aFetcher_2e1 = weak hidden constant i1 false
@.d56 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"/cache" }>, align 8
@.d57 = private constant <{ i64, [16 x i8] }> <{ i64 0, [16 x i8] c"file:///nowhere/" }>, align 8
@olang_2esole_2ecompiler_2fload_3aLoader_2e3 = weak hidden constant i1 false
@.d58 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"std" }>, align 8
@olang_2esole_2ecompiler_2fload_3aModule_2e0 = weak hidden constant i1 false
@.d59 = private constant <{ i64, [11 x i8] }> <{ i64 0, [11 x i8] c"/main.olang" }>, align 8
@olang_2esole_2ecompiler_2fgeneric_3aBinding_2e2 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2fgeneric_3aBinding_2e3 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2fgeneric_3aBinding_2e4 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2fgeneric_3agenRoots_2e2 = weak hidden constant i1 false
define linkonce_odr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fsource_3aNameId_2c_20I64_3e(ptr %v0) #0 {
entry:
  %l0 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %rv = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  br label %start
start:
  br label %bb0
bb0:
  %t1 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3ccompiler_2fsource_3aNameId_2c_20I64_3e_2ector(ptr %v0)
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

declare ptr @__olang_region_or(ptr, ptr)
declare ptr @__olang_region_home(ptr)
declare void @__olang_region_settle(ptr, i1)
declare noalias ptr @__olang_scope_alloc_slow(ptr, i64, i64) noinline
@__olang_self = external thread_local(initialexec) global ptr
@.c60 = private unnamed_addr constant [87 x i8] c"compiler/generic.olang:2529: a generator asked for its next value inside its own walk\0A\00"
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
declare void @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2edeclVars(ptr %v0, ptr %a0, i32 %a1)
declare i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclParams(ptr %v0, ptr %a0, i32 %a1)
@G_2ecompiler_2ftypes_2eUnknownT = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\00\00\00\00" }>, align 8
@olang_loc_9ad358ce4cd92925_29c80ed6090eef61 = external constant [0 x i8]
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eList(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eInstance(ptr %v0, ptr %a0, i32 %a1, i32 %a2)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eHasBody(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eSelfType(ptr %v0, ptr %a0, i32 %a1)
declare i64 @compiler_2fgeneric_2eDeclOwner(i32 %a0)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eArgs(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclKindOf(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eIsColumns(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2ecolumnFields(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eFields(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2esubstList(ptr %v0, ptr %a0, i32 %a1, i64 %a2, i32 %a3)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDtorWritten(ptr %v0, ptr %a0, i32 %a1)
declare void @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eSetStructBody(ptr %v0, ptr %a0, i32 %a1, i32 %a2, i1 %a3)
declare { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eCaseNames(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eCases(ptr %v0, ptr %a0, i32 %a1)
declare void @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eSetEnumBody(ptr %v0, ptr %v1, ptr %a0, i32 %a1, { i64, ptr } %a2, i32 %a3)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eBase(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eSubst(ptr %v0, ptr %a0, i32 %a1, i64 %a2, i32 %a3)
declare void @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eSetOverBody(ptr %v0, ptr %a0, i32 %a1, i32 %a2)
declare void @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eSetEmptyBody(ptr %v0, ptr %a0, i32 %a1)
@olang_loc_dbe52b8ce495020a_fa2e1742f6a7a7de = external constant [0 x i8]
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eClosed(ptr %v0, ptr %a0, i32 %a1)
@olang_loc_19a69728787b464b_16ae308be2e5745f = external constant [0 x i8]
declare void @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2edeclContext(ptr %out, ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2efields(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, ptr %a2)
@olang_loc_e3a2ba8c5e067247_8b3ee33876f19483 = external constant [0 x i8]
@olang_loc_9761a243a5640f52_e0132c3d672b758e = external constant [0 x i8]
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2epayload(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, ptr %a2, i32 %a3)
@olang_loc_e47f82bcf36ef746_b94daf5318f6e942 = external constant [0 x i8]
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eSig(ptr %v0, ptr %a0, i64 %a1)
declare i64 @compiler_2fgeneric_2eFnOwner(i64 %a0)
@G_2ecompiler_2ftypes_2eReadOnly = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>, align 8
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eVar(ptr %v0, ptr %a0, i64 %a1, i64 %a2, i64 %a3)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aNameId_3e_2ector(ptr %v0, i64 %a0)
declare { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aNameId_3e_2eToArra_H4d02a0b2e27e8f31ffc99daa43750593(ptr %v0, ptr %v1, ptr %a0)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aNameId_3e_2ePush_3ccompiler_2fsource_3aNameId_3e(ptr %v0, ptr %a0, i32 %a1)
@olang_loc_418de96ceb9602da_9cbeacdc8e10376e = external constant [0 x i8]
@olang_loc_41496c53cef75c6_a63bcc71a26a0752 = external constant [0 x i8]
declare i64 @compiler_2fgeneric_2eCtorOwner(i32 %a0)
declare { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2eGet_3cI64_2c_20I64_3e(ptr %v0, ptr %a0, i64 %a1)
@olang_loc_d755241afe0bd865_b911a572fa08ed19 = external constant [0 x i8]
@olang_loc_716010ab97145947_4b2ed26da3fa7223 = external constant [0 x i8]
declare i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aNameId_3e_2eHas_3ccompiler_2fsource_3aNameId_3e(ptr %v0, ptr %a0, i32 %a1)
declare void @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eaddVars(ptr %v0, ptr %v1, ptr %a0, i64 %a1, { i64, ptr } %a2)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %a0, i64 %a1)
declare void @compiler_2fgeneric_3aContext_2ector(ptr %out, ptr %v0, i64 %a0, i64 %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aNameId_3e_2eLen_3ccompiler_2fsource_3aNameId_3e(ptr %v0, ptr %a0)
declare i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aNameId_3e_2eAt_3ccompiler_2fsource_3aNameId_3e(ptr %v0, ptr %a0, i64 %a1)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fsource_3aNameId_2c_20compil_H943a9bb03970f71acf57214091669a7d(ptr %v0, ptr %a0, i32 %a1, i32 %a2)
declare void @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2econstraint(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, ptr %a2)
declare i1 @compiler_2fast_2ecompiler_2fast_3aTypeRef_2eIsFunc(ptr %v0, ptr %a0)
@olang_loc_793add10df93614a_995dc047d9acd1be = external constant [0 x i8]
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParams(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eResult(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrors(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eScopesOf(ptr %v0, ptr %a0, i32 %a1)
declare i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eNamesIdOf(ptr %v0, ptr %a0, i32 %a1)
declare i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePromisesOf(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eFunc(ptr %v0, ptr %a0, i32 %a1, i32 %a2, i32 %a3, i32 %a4, i64 %a5, i1 %a6, i32 %a7, i64 %a8)
declare { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eReferent(ptr %v0, ptr %a0, i32 %a1)
declare i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eA(ptr %v0, ptr %a0, i32 %a1)
declare i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eB(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRef(ptr %v0, ptr %a0, i32 %a1, i64 %a2)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eDefaultMethods(ptr %v0, ptr %v1, ptr %a0, i32 %a1, i32 %a2)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %a0)
@G_2ecompiler_2fgeneric_2eDescNone = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>, align 8
declare %"compiler/generic:Desc" @compiler_2fgeneric_3aDesc_2ector(ptr %v0, i64 %a0, i32 %a1, i64 %a2, i64 %a3)
declare i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclModule(ptr %v0, ptr %a0, i32 %a1)
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H7bcf2aeb09afa796f4333e6ec8c3f63f(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2edescDecl(ptr %v0, ptr %a0, i64 %a1)
@G_2ecompiler_2fgeneric_2eDescFunc = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\05\00\00\00\00\00\00\00" }>, align 8
declare i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eConstValue(ptr %v0, ptr %a0, i32 %a1)
@G_2ecompiler_2fgeneric_2eDescField = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\01\00\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2fgeneric_2eDescCase = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\02\00\00\00\00\00\00\00" }>, align 8
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2ector(ptr %v0, i64 %a0)
@G_2ecompiler_2ftypes_2eDefaultErrT = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\10\00\00\00" }>, align 8
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2ePush_3ccompiler_2ftypes_3aTypeId_3e(ptr %v0, ptr %a0, i32 %a1)
declare { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2eToArray_3ccompiler_2ftypes_3aTypeId_3e(ptr %v0, ptr %v1, ptr %a0)
declare void @std_2fprelude_2farray_2eArray_3ccompiler_2ftypes_3aTypeId_3e_2eSort_3ccompiler_2ftypes_3aTypeId_2c_20_3f_3e(ptr %v0, ptr %v1, { i64, ptr } %a0, ptr %a1c, ptr %a1e)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrSet(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrSetItems(ptr %v0, ptr %a0, i32 %a1)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %v0, i64 %a0)
declare { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eToArray_3cI64_3e(ptr %v0, ptr %v1, ptr %a0)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrValItems(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrOf(ptr %v0, ptr %a0, i32 %a1)
declare { i64, ptr } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eErrorWords(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrMask(ptr %v0, ptr %a0, i32 %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %a0, i64 %a1)
declare i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eErrVarAt(ptr %v0, ptr %a0, i64 %a1, i64 %a2)
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eerrorSetItem(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, ptr %a2)
declare { i64, [3 x i64] } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eat(ptr %v0, ptr %a0, i64 %a1, %"compiler/source:Span" %a2)
declare i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fsource_3aNameId_2c_20compil_He6be2b0836caba7ddc59483ff74db438(ptr %v0, ptr %a0, i32 %a1)
declare { i64, ptr } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2etext(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare { i64, ptr } @compiler_2fmsgs_2eTok(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eTypeVarNotErrorSet(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eErrorOncePerLine(ptr %v0, ptr %v1, ptr %a0, { i64, [3 x i64] } %a1, %"compiler/diagmsg:Msg" %a2)
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2enamedType(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, ptr %a2)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclName(ptr %v0, ptr %a0, i32 %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eNotAnErrorType(ptr %v0, ptr %v1, { i64, ptr } %a0)
@olang_loc_1dc2a8cf17e248a5_de4d607536776161 = external constant [0 x i8]
declare %"compiler/ast:Path" @compiler_2fast_3aPath_2ector(ptr %v0, ptr %v1, %"compiler/source:Span" %a0, { i64, ptr } %a1)
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eerrorType(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, ptr %a2)
declare i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eIsRaisedError(ptr %v0, ptr %a0, i32 %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eErrorWordTooFar(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare %"compiler/msgs:Nearest" @compiler_2fmsgs_3aNearest_2ector(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare void @compiler_2fmsgs_2ecompiler_2fmsgs_3aNearest_2eOffer(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare { i64, ptr } @compiler_2fmsgs_2ecompiler_2fmsgs_3aNearest_2eHint(ptr %v0, ptr %v1, ptr %a0)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eNoSuchErrorWord(ptr %v0, ptr %v1, ptr %v2, ptr %v3, { i64, ptr } %a0, { i64, ptr } %a1, { i64, ptr } %a2)
@olang_loc_f1cf7ccb88a76b40_782fc340d5d627c = external constant [0 x i8]
@olang_loc_7655d9c19e1e4e63_9fb1b21e00b7825f = external constant [0 x i8]
declare { i64, ptr } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eErrorTypeHint(ptr %v0, ptr %v1, ptr %v2, ptr %a0, i64 %a1, { i64, ptr } %a2)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eUnknownErrorType(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1)
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eColumnsRow(ptr %v0, ptr %a0, i32 %a1)
declare { i32, ptr } @std_2fprelude_2fiterator_2estd_2fprelude_2fiterator_3aViewGenerator_3ccompiler_2fast_3aV_Hf179e857cb72c72900f4614cd5df5a25(ptr %v0, ptr %a0)
@olang_loc_2a66b784d9289786_f31abe169e6a7bb2 = external constant [0 x i8]
declare %"compiler/generic:fnRow" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fgeneric_3afnRow_3e_2eAt_3ccompiler_2fgeneric_3afnRow_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDepth(ptr %v0, ptr %a0, i32 %a1)
@G_2ecompiler_2fgeneric_2eMaxDepth = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\30\00\00\00\00\00\00\00" }>, align 8
declare { i32, i1 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2eGet_3cI64_2c_20Bool_3e(ptr %v0, ptr %a0, i64 %a1)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2ePut_3cI64_2c_20Bool_3e(ptr %v0, ptr %a0, i64 %a1, i1 %a2)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eUnboundedInstantiation(ptr %v0)
declare i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eError(ptr %v0, ptr %v1, ptr %a0, { i64, [3 x i64] } %a1, %"compiler/diagmsg:Msg" %a2)
declare i1 @compiler_2fgeneric_2emutableGlobal(ptr %v0, ptr %a0)
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eliteralType(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eunaryType(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1, ptr %a2, i32 %a3, ptr %a4)
declare { i32, i32 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fsource_3aNameId_2c_20compil_Hfd0413fe7fd4e5914f6cad5b418b7a6d(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2enameType(ptr %v0, ptr %v1, ptr %a0, ptr %a1, %"compiler/source:Span" %a2, i32 %a3)
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eliteralMade(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1, ptr %a2, i32 %a3, { i64, ptr } %a4)
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eownLiteral(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1, ptr %a2, { i64, ptr } %a3)
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eliteralOf(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1, ptr %a2, { i64, ptr } %a3)
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2emadeType(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %a0, ptr %a1, ptr %a2, ptr %a3, { i64, ptr } %a4)
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2ebinaryType(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %a0, ptr %a1, ptr %a2, i32 %a3, ptr %a4, ptr %a5)
@olang_loc_11d82d97bd847b16_4486c403bf4d327a = external constant [0 x i8]
declare i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eunifyBound(ptr %v0, ptr %v1, ptr %a0, i32 %a1, i32 %a2, ptr %a3, i64 %a4)
declare %"compiler/generic:instance" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fgeneric_3ainstance_3e_2eAt__Hf3965267bb92d0ee7aeaa2339e2e46fa(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
@olang_loc_23dbec30ec11f2fa_ab3fa8ca5a280626 = external constant [0 x i8]
declare i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2epreludeNamed(ptr %v0, ptr %v1, ptr %a0, i32 %a1, { i64, ptr } %a2)
declare i1 @compiler_2fast_2ecompiler_2fast_3aFunc_2eIsBuilder(ptr %v0, ptr %a0)
declare { i64, ptr } @compiler_2fsource_2ecompiler_2fsource_3aNames_2eText(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" @std_2fpair_3aPair_3cI64_2c_20I64_3e_2ector(ptr %v0, i64 %a0, i64 %a1)
declare { i32, i1 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H190b78e3c1eec037529224679e114a85(ptr %v0, ptr %a0, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %a1)
@olang_loc_5d5ac97d78861951_ba50dfe20371558d = external constant [0 x i8]
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eFuncTag(ptr %v0, ptr %a0, i32 %a1)
declare i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2etypeKey(ptr %v0, ptr %a0, i32 %a1)
declare { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H5696e1a008d256bf9453cde2b49c6c45(ptr %v0, ptr %a0, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %a1)
declare i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2erecvExact(ptr %v0, ptr %a0, i64 %a1)
declare i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eextends(ptr %v0, ptr %a0, i32 %a1)
@olang_loc_68cd11c72d3db33f_352ec9aa512a8333 = external constant [0 x i8]
declare i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2erecvKey(ptr %v0, ptr %v1, ptr %v2, ptr %a0, i64 %a1, ptr %a2, { i64, ptr } %a3)
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2erecvOf(ptr %v0, ptr %a0, i64 %a1)
declare %"compiler/generic:Unmet" @compiler_2fgeneric_2eUnmet_2emet()
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParts(ptr %v0, ptr %a0, i32 %a1)
declare %"compiler/generic:Unmet" @compiler_2fgeneric_3aUnmet_2ector(ptr %v0, i64 %a0, i32 %a1, i32 %a2, i1 %a3, i1 %a4, i1 %a5)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eAnyTrait(ptr %v0, ptr %a0, i32 %a1)
declare { i64, ptr } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eAnyCovers(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eSame(ptr %v0, ptr %a0, i32 %a1, i32 %a2)
declare i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eMember(ptr %v0, ptr %a0, i32 %a1, i32 %a2)
declare i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2emeetsBuilder(ptr %v0, ptr %v1, ptr %a0, i32 %a1, i32 %a2, ptr %a3)
declare i1 @compiler_2fload_2ePublic(ptr %v0, { i64, ptr } %a0)
@olang_loc_baaca818f0e4393a_2cd871f7f771e33e = external constant [0 x i8]
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePlain(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eAnyStored(ptr %v0, ptr %a0, i32 %a1)
declare %"compiler/generic:AnyTable" @compiler_2fgeneric_3aAnyTable_2ector(ptr %v0, i32 %a0, i32 %a1, i32 %a2, i64 %a3, %"compiler/source:Span" %a4)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fgeneric_3aAnyTable_3e_2ePus_H18461b16f088a87daf519df5031429e6(ptr %v0, ptr %v1, ptr %a0, %"compiler/generic:AnyTable" %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fgeneric_3aAnyTable_3e_2eLen_H9daf28210c013890fd7cb07d1d61ba6e(ptr %v0, ptr %a0)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H31314c4e7281f5029d6d8eb3044cef10(ptr %v0, ptr %a0, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %a1, i64 %a2)
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eOwnerOf(ptr %v0, ptr %a0, i64 %a1)
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eUnifyArg(ptr %v0, ptr %v1, ptr %a0, i32 %a1, i32 %a2, ptr %a3, i1 %a4, i1 %a5)
@olang_loc_32a7c4e006637d05_92e776a6ed722011 = external constant [0 x i8]
declare %"std/prelude/text:StringBuilder" @std_2fprelude_2ftext_3aStringBuilder_2ector(ptr %v0)
declare { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %v0, ptr %v1, ptr %a0)
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2enamed(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1, %"compiler/source:Span" %a2, { i64, ptr } %a3, { i64, ptr } %a4)
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2efuncType(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, %"compiler/source:Span" %a2, ptr %a3)
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eshape(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, ptr %a2)
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2erefType(ptr %v0, ptr %v1, ptr %a0, ptr %a1, %"compiler/source:Span" %a2, i32 %a3, i1 %a4)
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eperm(ptr %v0, ptr %a0, i32 %a1, i1 %a2)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eAny(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eArray(ptr %v0, ptr %a0, i32 %a1, i32 %a2)
@G_2ecompiler_2ftypes_2eSpread = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\08\00\00\00\00\00\00\00" }>, align 8
@olang_loc_e146017c26ab6c4e_50202815c87e77c2 = external constant [0 x i8]
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eLength(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eElem(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eLengthsOnly(ptr %v0, ptr %a0, i32 %a1, i32 %a2)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fgeneric_3afnRow_3e_2eLen_3ccompiler_2fgeneric_3afnRow_3e(ptr %v0, ptr %a0)
declare i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eownerApplies(ptr %v0, ptr %a0, i64 %a1, i32 %a2)
declare i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aChar_2eIsUpper(i8 %a0)
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fnames_3aTable_26_3e_2_Hc2ccbbc5952c057a60f016e9cc1626d2(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fnames_3aEntry_3e_2eLen_3ccompiler_2fnames_3aEntry_3e(ptr %v0, ptr %a0)
declare %"compiler/names:Entry" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fnames_3aEntry_3e_2eAt_3ccompiler_2fnames_3aEntry_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eunended(ptr %v0, ptr %v1, ptr %a0, i32 %a1, ptr %a2, i64 %a3, i1 %a4)
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eunifyErrs(ptr %v0, ptr %v1, ptr %a0, i32 %a1, i32 %a2, ptr %a3)
declare %"compiler/generic:varRow" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fgeneric_3avarRow_3e_2eAt_3ccompiler_2fgeneric_3avarRow_3e(ptr %v0, ptr %a0, i64 %a1)
declare i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_2c_20Boo_Hb38d151ad2865ce380f5e3d42761bdf3(ptr %v0, ptr %a0, { i64, ptr } %a1)
declare void @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eaddFn(ptr %v0, ptr %v1, ptr %a0, i64 %a1, ptr %a2, i1 %a3)
@olang_loc_4e2b009ec27e80b_3f74010bfbf746f = external constant [0 x i8]
declare %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v0, ptr %a0)
declare i64 @compiler_2fload_2ecompiler_2fload_3aLoader_2eChosen(ptr %v0, ptr %a0, i64 %a1, i32 %a2)
declare void @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eaddFnsIf(ptr %v0, ptr %v1, ptr %a0, i64 %a1, ptr %a2, i64 %a3, i64 %a4)
@olang_loc_8b73386467b8fdb3_4742e8850cea3c57 = external constant [0 x i8]
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_Hb2d19b6b5ea5ab5a85c5720545345bd4(ptr %v0, ptr %a0)
declare void @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2efnsIn(ptr %v0, ptr %a0, i64 %a1)
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFoldLength(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, ptr %a2)
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2egenericCall(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1, ptr %a2, { i64, ptr } %a3)
declare i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2efile(ptr %v0, ptr %a0, i64 %a1)
declare %"compiler/names:Ref" @compiler_2fnames_2ecompiler_2fnames_3aResolver_2eUse(ptr %v0, ptr %a0, i64 %a1, i32 %a2)
@G_2ecompiler_2ftypes_2eBoolT = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\02\00\00\00" }>, align 8
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePrim(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2ecalleeType(ptr %v0, ptr %a0, %"compiler/names:Ref" %a1, i32 %a2)
declare %"compiler/names:Ref" @compiler_2fnames_2ecompiler_2fnames_3aResolver_2eMember(ptr %v0, ptr %a0, i64 %a1, i32 %a2)
declare i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eisArray(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eMethodSig(ptr %v0, ptr %a0, i64 %a1, i32 %a2)
@olang_loc_a87b58072a15a8a_ec80af628fdc0e7e = external constant [0 x i8]
declare i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eLess(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
declare void @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eerrorSetEntries(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1, ptr %a2, ptr %a3)
@olang_loc_24f0f81fc570bea6_c6e464f22cc6b362 = external constant [0 x i8]
@olang_loc_8c836894b35cad82_296f4aeeea10268e = external constant [0 x i8]
declare { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eResults(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aTypeRef_2eSpan(ptr %v0, ptr %a0)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eFlagAmongResults(ptr %v0)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsRef(ptr %v0, ptr %a0, i32 %a1)
declare i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePermOf(ptr %v0, ptr %a0, i32 %a1)
@G_2ecompiler_2ftypes_2eWritable = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\01\00\00\00\00\00\00\00" }>, align 8
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eFlagWithOutParam(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare ptr @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eglobalDecl(ptr %v0, ptr %v1, ptr %a0, i64 %a1, i32 %a2)
declare %"compiler/generic:folded" @compiler_2fgeneric_2efolded_2eunfolded()
declare %"compiler/generic:folded" @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eeval(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, ptr %a2)
@G_2ecompiler_2fgeneric_2eFolded = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>, align 8
declare i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2ewide(ptr %v0, ptr %a0, i32 %a1)
declare %"compiler/generic:folded" @compiler_2fgeneric_3afolded_2ector(ptr %v0, i64 %a0, i64 %a1, i32 %a2)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eConstType(ptr %v0, ptr %a0, i32 %a1)
@G_2ecompiler_2fgeneric_2ePending = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\01\00\00\00\00\00\00\00" }>, align 8
declare i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2ealiasStep(ptr %v0, ptr %a0, i64 %a1, i32 %a2)
declare { i32, i32 } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFindDecl(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1, { i64, ptr } %a2)
declare i1 @std_2fprelude_2farray_2eArray_3ccompiler_2fsource_3aNameId_3e_2eHas_3ccompiler_2fsource_3aNameId_3e(ptr %v0, { i64, ptr } %a0, i32 %a1)
@olang_loc_7d389628c92035eb_c8010a4fd10bb547 = external constant [0 x i8]
declare ptr @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eglobalInIf(ptr %v0, ptr %v1, ptr %v2, ptr %a0, i64 %a1, ptr %a2, i64 %a3, i64 %a4, i32 %a5)
@olang_loc_a7facd254843b013_ee8f88ceeae7df5f = external constant [0 x i8]
declare i32 @compiler_2fsource_2ecompiler_2fsource_3aNames_2eIntern(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2edeclaresEq(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2ehashShaped(ptr %v0, ptr %a0, i32 %a1, i64 %a2)
declare i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eownMethod(ptr %v0, ptr %a0, i32 %a1, i32 %a2)
declare i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2ehashesAll(ptr %v0, ptr %a0, i32 %a1, i64 %a2)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eShapeCases(ptr %v0, ptr %a0, i32 %a1)
@olang_loc_ee8d77a4a1fda3da_cc07c41aef88f656 = external constant [0 x i8]
@olang_loc_cffe0474e3afc296_35ccea70755633e2 = external constant [0 x i8]
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eHoldsRefs(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2esigType(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, ptr %a2, i32 %a3, i32 %a4)
declare i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2esuppliedMeets(ptr %v0, ptr %v1, ptr %a0, i32 %a1, { i64, ptr } %a2, i32 %a3)
declare i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2esealedBy(ptr %v0, ptr %a0, i32 %a1, i32 %a2, i64 %a3)
declare i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2esameUpToShape(ptr %v0, ptr %a0, i32 %a1, i32 %a2)
@G_2ecompiler_2ftypes_2eNoreturnT = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\11\00\00\00" }>, align 8
@G_2ecompiler_2ftypes_2eVoidT = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\01\00\00\00" }>, align 8
declare i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eErrsHeld(ptr %v0, ptr %a0, i32 %a1, i32 %a2)
declare i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2ementionsList(ptr %v0, ptr %a0, i32 %a1, i64 %a2, i64 %a3, i64 %a4)
@olang_loc_536ccd1a63d69f5a_f4e0a4d3c2cbc46e = external constant [0 x i8]
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2eLen_3ccompiler_2ftypes_3aTypeId_3e(ptr %v0, ptr %a0)
declare i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2eAt_3ccompiler_2ftypes_3aTypeId_3e(ptr %v0, ptr %a0, i64 %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2eSetAt_3ccompiler_2ftypes_3aTypeId_3e(ptr %v0, ptr %a0, i64 %a1, i32 %a2)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrWords(ptr %v0, ptr %a0, i32 %a1, i64 %a2)
declare void @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2epartsReady(ptr %v0, ptr %a0, i32 %a1, i64 %a2)
@olang_loc_d8871aa8b676c7fe_520748c7780fd5d2 = external constant [0 x i8]
declare void @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2ereprReady(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %v0, ptr %a0, i32 %a1)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H1308596c866d4be061d9da9113abde88(ptr %v0, ptr %a0, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %a1, i1 %a2)
@olang_loc_a46b2f31ebf5190e_f847dc4b865f1d9a = external constant [0 x i8]
declare i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2einstanceLen(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1, ptr %a2, { i64, ptr } %a3)
declare i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eanyReadsLocal(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, { i64, ptr } %a2)
@olang_loc_d5893f1f042b494f_34caff30dd5c379b = external constant [0 x i8]
declare i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eMatches(ptr %v0, ptr %a0, i32 %a1, i32 %a2, i64 %a3, i64 %a4, i1 %a5)
declare void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePushChar(ptr %v0, ptr %a0, i8 %a1)
@G_2ecompiler_2ftypes_2eNullable = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\04\00\00\00\00\00\00\00" }>, align 8
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eFuncNullable(ptr %v0, ptr %a0, i32 %a1)
declare { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePromiseText(ptr %v0, ptr %v1, ptr %v2, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrValName(ptr %v0, ptr %a0, i32 %a1)
declare { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eCanon(ptr %v0, ptr %v1, ptr %v2, ptr %a0, i32 %a1)
@olang_loc_4061a14fd68eb9ea_8e3a57d2843d246e = external constant [0 x i8]
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eEnds(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2ebufferUnended(ptr %v0, ptr %v1, ptr %a0, i32 %a1, ptr %a2, i64 %a3)
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eUnify(ptr %v0, ptr %v1, ptr %a0, i32 %a1, i32 %a2, ptr %a3, i1 %a4, i1 %a5)
@olang_loc_dbc69524847f1d49_8831f326edbf0acd = external constant [0 x i8]
@olang_loc_737134d81da26253_60c38b193f08901f = external constant [0 x i8]
@olang_loc_ea43b29642517977_1af2b7cce6fe287b = external constant [0 x i8]
declare i1 @compiler_2fgeneric_2eviewGenTy(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
@olang_loc_2ac89deeabe02958_a25efd24ea33a60c = external constant [0 x i8]
@olang_loc_97cd5f16af0b6614_78a73ec613500ec8 = external constant [0 x i8]
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsInt(ptr %v0, ptr %a0, i32 %a1)
declare i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eBits(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsUnsigned(ptr %v0, ptr %a0, i32 %a1)
@olang_loc_759448a6dcc06fe9_971bda559b794c25 = external constant [0 x i8]
declare void @compiler_2fgeneric_2ecompiler_2fgeneric_3agenRoots_2estmt(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
@olang_loc_eaf5f33dabe0acea_7261a28798d177ae = external constant [0 x i8]
declare i1 @compiler_2fgeneric_2eborrowableElem(ptr %v0, ptr %a0)
@G_2ecompiler_2fgeneric_2eGenPerTurn = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\FF\FF\FF\FF\FF\FF\FF\FF" }>, align 8
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cBool_3e_2ector(ptr %v0, i64 %a0)
@olang_loc_2a0d238d6764ffeb_7f54c8a7a483f2b7 = external constant [0 x i8]
@olang_loc_b16df8c761b5d07c_6405a14de8d58098 = external constant [0 x i8]
declare i1 @compiler_2fgeneric_2ebyValueParam(ptr %v0, ptr %a0)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2ePush_3cBool_3e(ptr %v0, ptr %a0, i1 %a1)
declare { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eToArray_3cBool_3e(ptr %v0, ptr %v1, ptr %a0)
@G_2ecompiler_2fgeneric_2eGenLocalBit = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\00\00\00\00\00\00\00\40" }>, align 8
@G_2ecompiler_2fgeneric_2eGenFromReturn = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\FE\FF\FF\FF\FF\FF\FF\FF" }>, align 8
@olang_loc_90309fa9b0fb789a_4b8ce68c657018ae = external constant [0 x i8]
@olang_loc_56a9f796d6022e8a_9e3c205a980da41e = external constant [0 x i8]
@olang_loc_37cc75ab1588e90a_e29aa2825954cfde = external constant [0 x i8]
@G_2ecompiler_2ftypes_2ePromReturns = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\01\00\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2ftypes_2ePromNoalloc = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\02\00\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2ftypes_2ePromNoblock = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\04\00\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2ftypes_2ePromNospawn = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\08\00\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2ftypes_2ePromNorecurse = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\10\00\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2ftypes_2ePromNoextern = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\20\00\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2ftypes_2ePromPure = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\40\00\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2ftypes_2ePromNoborrow = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\80\00\00\00\00\00\00\00" }>, align 8
@olang_loc_5e6ea17f09d33e2_77348db42693dffe = external constant [0 x i8]
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eAllSaid(ptr %v0, ptr %v1, ptr %a0)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fdiag_3aSaid_3e_2eLen_3ccompiler_2fdiag_3aSaid_3e(ptr %v0, ptr %a0)
declare %"compiler/diag:Said" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fdiag_3aSaid_3e_2eAt_3ccompiler_2fdiag_3aSaid_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i32 @std_2fos_2eWriteFile(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
declare void @compiler_2fcond_3aConsts_2ector(ptr %out, ptr %v0)
declare void @compiler_2fcond_2ecompiler_2fcond_3aConsts_2eBuiltins(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, { i64, ptr } %a1, { i64, ptr } %a2, { i64, ptr } %a3, i64 %a4, i64 %a5, i1 %a6, i1 %a7, i1 %a8)
declare void @compiler_2ffetch_3aFetcher_2ector(ptr %out, ptr %v0, ptr %v1, ptr %v2, ptr %v3, { i64, ptr } %a0, { i64, ptr } %a1, { i64, ptr } %a2, i1 %a3, i1 %a4)
declare %"compiler/source:Names" @compiler_2fsource_3aNames_2ector(ptr %v0)
declare void @compiler_2fdiag_3aDiagnostics_2ector(ptr %out, ptr %v0, i1 %a0)
declare void @compiler_2fload_3aLoader_2ector(ptr %out, ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %v5, { i64, ptr } %a0, ptr %a1, ptr %a2, ptr %a3, ptr %a4)
declare i64 @compiler_2fload_2ecompiler_2fload_3aLoader_2eLoad(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
@olang_loc_8e4da92f4f682bfd_d3a5cd4c92991ca9 = external constant [0 x i8]
@olang_loc_d2716e3b81e17ed0_f7580b05837cd1dc = external constant [0 x i8]
@olang_loc_7f889b865e0796f3_e5c04d4d88f5fb3f = external constant [0 x i8]
@olang_loc_4e9784bcac016c39_bf9d00668e70ebe5 = external constant [0 x i8]
declare %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3ccompiler_2fsource_3aNameId_2c_20compiler_2ftypes_3aTypeId_3e_2ector(ptr %v0)
declare %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId_2c_20Bool_3e_2ector(ptr %v0)
declare %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3ccompiler_2fsource_3aNameId_2c_20I64_3e_2ector(ptr %v0)

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
