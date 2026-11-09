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
%"compiler/needs:walker" = type { ptr, i64, i64, i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" = type { { i64, ptr }, { i64, ptr }, { i64, ptr }, i64, i64, i64 }
%"compiler/generic:varRow" = type { i64, i32, i32, i32 }
%"compiler/check:Checker" = type { ptr, ptr, i1, i1, i1, i1, i64, i64, i1, ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i1, { i64, [3 x i64] }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i32, i64, %"compiler/source:Span", i32, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"compiler/source:Span", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i64, i32, i1, i1, %"compiler/source:Span", %"compiler/source:Span", %"compiler/source:Span", %"compiler/source:Span", %"compiler/source:Span", { i64, ptr }, i32, i32, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, i1, i64, i64, i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, i1, i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, i64, i64, i64, i64, i64, i64, i64, i1, i1, i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, i1, i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, i1, i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/text:StringBuilder", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/source:Span" = type { i32, i32 }
%"std/prelude/text:StringBuilder" = type { %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/generic:Program" = type { ptr, ptr, %"compiler/types:Table", %"compiler/facts:Table", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"compiler/generic:Origin", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"compiler/types:Table" = type { ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"compiler/facts:Table" = type { %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, i64 }
%"compiler/generic:Origin" = type { i64, %"compiler/source:Span", i64, i32 }
%"compiler/load:Loader" = type { { i64, ptr }, ptr, ptr, ptr, ptr, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", { i64, ptr }, { i64, ptr }, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", { i64, ptr }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/names:Ref" = type { i32, i64, i64 }
%"compiler/ast:Catch" = type { %"compiler/source:Span", { i64, ptr }, { i64, ptr }, { i64, ptr }, i1, i32, %"compiler/source:Span" }
%"compiler/ast:VarDecl" = type { { i64, ptr }, { i64, ptr }, ptr, { i64, ptr }, i1, i1, { i64, ptr }, i1 }
%"compiler/ast:Chain" = type { { i64, ptr }, { i64, ptr } }
%"compiler/ast:ForIn" = type { i32, i32, ptr, i1, { i64, ptr }, { i64, ptr }, i1 }
%"compiler/ast:If" = type { ptr, ptr, ptr }
%"compiler/ast:Branch" = type { %"compiler/source:Span", { i64, ptr }, i64 }
%"compiler/ast:Match" = type { %"compiler/source:Span", ptr, i1, { i64, ptr } }
%"compiler/ast:Case" = type { %"compiler/source:Span", { i64, ptr }, { i64, ptr }, ptr, { i64, ptr }, ptr }
%"compiler/ast:Compr" = type { ptr, ptr, i32, i32, ptr, ptr, i1, i64 }
%"compiler/load:Module" = type { { i64, ptr }, { i64, ptr }, { i64, ptr }, i1, i64, i1, ptr, ptr, { i64, ptr }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr, ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr, ptr, ptr, i1, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, { i64, ptr }, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"compiler/ast:Func" = type { %"compiler/source:Span", ptr, i32, ptr, { i64, ptr }, { i64, ptr }, i1, i1, { i64, ptr }, ptr, i32 }
%"compiler/ast:Param" = type { %"compiler/source:Span", i32, ptr, ptr, { i64, ptr } }
%"compiler/ast:Sig" = type { { i64, ptr }, { i64, ptr }, i1, { i64, ptr }, i1, ptr, i1, i1, { i64, ptr } }
%"compiler/ast:Multi" = type { { i64, ptr }, i1, { i64, ptr } }
%"compiler/ast:For3" = type { ptr, ptr, ptr, { i64, ptr } }
%"compiler/ast:JoinS" = type { i1, { i64, ptr }, { i64, ptr } }
%"compiler/ast:TypeDecl" = type { i32, { i64, ptr }, i1, ptr, { i64, ptr }, i32, i1 }
define dso_local { i64, ptr } @compiler_2fneeds_2eLines(ptr %v0, ptr %v1, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca ptr
  %lp3 = alloca ptr
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l14 = alloca %"compiler/needs:walker"
  %l17 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l19 = alloca i64
  %l22 = alloca i64
  %l26 = alloca i64
  %l29 = alloca i64
  %l49 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l51 = alloca i64
  %l53 = alloca ptr
  %l54 = alloca i64
  %l59 = alloca ptr
  %l64 = alloca %"compiler/generic:varRow"
  %l66 = alloca { i64, ptr }
  %l68 = alloca { i64, ptr }
  %l74 = alloca { i64, ptr }
  %l75 = alloca { i64, ptr }
  %l76 = alloca i64
  %l77 = alloca { i64, ptr }
  %s2 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  %t3 = alloca %"compiler/needs:walker", align 8
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load i64, ptr %l1, !tbaa !24
  call void @compiler_2fneeds_3awalker_2ector(ptr %t3, ptr %v0, ptr %v0, ptr %t1, i64 %t2, i64 0)
  call void @llvm.memmove.p0.p0.i64(ptr %l14, ptr %t3, i64 280, i1 false)
  br label %bb1
bb1:
  %t6 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 280, i64 8)
  call void @llvm.memmove.p0.p0.i64(ptr %t6, ptr %l14, i64 280, i1 false)
  store ptr %t6, ptr %l2, !tbaa !29
  %t8 = load ptr, ptr %l2, !tbaa !29
  call void @compiler_2fneeds_2ecompiler_2fneeds_3awalker_2erun(ptr %v0, ptr %t8)
  br label %bb2
bb2:
  %t10 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2ector(ptr %v1, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t10, ptr %l17
  br label %bb3
bb3:
  %t11 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 32, i64 8)
  store ptr %t11, ptr %lp3
  %t12 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l17
  %t13 = load ptr, ptr %lp3
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t12, ptr %t13
  %t14 = load i64, ptr %l1, !tbaa !24
  %t16 = call i64 @compiler_2fgeneric_2eFnOwner(i64 %t14)
  store i64 %t16, ptr %l19
  br label %bb4
bb4:
  %t17 = load i64, ptr %l19, !tbaa !24
  store i64 %t17, ptr %l4, !tbaa !24
  store i64 0, ptr %l5, !tbaa !24
  %t18 = load ptr, ptr %l2, !tbaa !29
  %t20 = getelementptr %"compiler/needs:walker", ptr %t18, i32 0, i32 7
  %t22 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2fvec_3aVec_3cstd_2fprel_Hbb0b9cf8ae0bb786ffc6cf28ae45ef64(ptr %v0, ptr %t20)
  store i64 %t22, ptr %l22
  br label %bb5
bb5:
  %t23 = load i64, ptr %l22, !tbaa !24
  store i64 %t23, ptr %l6, !tbaa !24
  store i64 1, ptr %l7, !tbaa !24
  %t24 = load i64, ptr %l6, !tbaa !24
  %t25 = load i64, ptr %l5, !tbaa !24
  %t28 = icmp sgt i64 %t24, %t25
  br i1 %t28, label %bb6, label %bb7
bb6:
  %t30 = load i64, ptr %l7, !tbaa !24
  %t32 = icmp sgt i64 %t30, 0
  br i1 %t32, label %bb8, label %bb9
bb7:
  store i64 0, ptr %l26, !tbaa !24
  br label %bb11
bb8:
  %t34 = load i64, ptr %l6, !tbaa !24
  %t35 = load i64, ptr %l5, !tbaa !24
  %t38 = sub i64 %t34, %t35
  %t39 = load i64, ptr %l7, !tbaa !24
  %t42 = add i64 %t38, %t39
  %t44 = sub i64 %t42, 1
  %t45 = load i64, ptr %l7, !tbaa !24
  %t48 = sdiv i64 %t44, %t45
  store i64 %t48, ptr %l29, !tbaa !24
  br label %bb10
bb9:
  store i64 0, ptr %l29, !tbaa !24
  br label %bb10
bb10:
  %t50 = load i64, ptr %l29, !tbaa !24
  store i64 %t50, ptr %l26, !tbaa !24
  br label %bb11
bb11:
  %t51 = load i64, ptr %l26, !tbaa !24
  store i64 %t51, ptr %l8, !tbaa !24
  store i64 0, ptr %l9, !tbaa !24
  br label %bb12
bb12:
  store %olang.scope zeroinitializer, ptr %s2
  %t52 = load i64, ptr %l9, !tbaa !24
  %t53 = load i64, ptr %l8, !tbaa !24
  %t56 = icmp slt i64 %t52, %t53
  %t58 = xor i1 %t56, true
  br i1 %t58, label %bb13, label %bb14
bb13:
  call void @__olang_scope_close(ptr %s2)
  br label %bb28
bb14:
  br label %bb15
bb15:
  %t60 = load i64, ptr %l5, !tbaa !24
  %t61 = load i64, ptr %l9, !tbaa !24
  %t62 = load i64, ptr %l7, !tbaa !24
  %t65 = mul i64 %t61, %t62
  %t68 = add i64 %t60, %t65
  store i64 %t68, ptr %l10, !tbaa !24
  %t70 = load ptr, ptr %l2, !tbaa !29
  %t71 = load i64, ptr %l10, !tbaa !24
  %t74 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2fneeds_2ecompiler_2fneeds_3awalker_2eunpromised(ptr %v0, ptr %s2, ptr %t70, i64 %t71)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t74, ptr %l49
  br label %bb16
bb16:
  %t75 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l49
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t75, ptr %l11
  %t77 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %s2, ptr %l11)
  store i64 %t77, ptr %l51
  br label %bb17
bb17:
  %t78 = load i64, ptr %l51, !tbaa !24
  %t79 = icmp eq i64 %t78, 0
  br i1 %t79, label %bb18, label %bb19
bb18:
  call void @__olang_scope_close(ptr %s2)
  br label %bb27
bb19:
  br label %bb20
bb20:
  %t81 = load ptr, ptr %lp3
  store ptr %t81, ptr %l53, !tbaa !29
  %t82 = ptrtoint ptr %v1 to i64
  store i64 %t82, ptr %l54, !tbaa !24
  %t83 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1
  br i1 %t83, label %bb21, label %bb22
bb21:
  %t85 = call ptr @__olang_region_make(ptr %v1)
  %t86 = ptrtoint ptr %t85 to i64
  store i64 %t86, ptr %l54, !tbaa !24
  br label %bb22
bb22:
  %t87 = load ptr, ptr %l0, !tbaa !29
  %t89 = getelementptr %"compiler/check:Checker", ptr %t87, i32 0, i32 1
  %t90 = load ptr, ptr %t89, !tbaa !29
  %t92 = getelementptr %"compiler/generic:Program", ptr %t90, i32 0, i32 0
  %t93 = load ptr, ptr %t92, !tbaa !29
  %t95 = getelementptr %"compiler/load:Loader", ptr %t93, i32 0, i32 3
  %t96 = load ptr, ptr %t95, !tbaa !29
  store ptr %t96, ptr %l59, !tbaa !29
  %t97 = load ptr, ptr %l0, !tbaa !29
  %t99 = getelementptr %"compiler/check:Checker", ptr %t97, i32 0, i32 1
  %t100 = load ptr, ptr %t99, !tbaa !29
  %t101 = load i64, ptr %l4, !tbaa !24
  %t102 = load i64, ptr %l10, !tbaa !24
  %t106 = call %"compiler/generic:varRow" @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eVarAt(ptr %v0, ptr %t100, i64 %t101, i64 %t102)
  store %"compiler/generic:varRow" %t106, ptr %l64
  br label %bb23
bb23:
  %t107 = getelementptr %"compiler/generic:varRow", ptr %l64, i32 0, i32 1
  %t108 = load i32, ptr %t107, !tbaa !23
  %t109 = load ptr, ptr %l59, !tbaa !29
  %t111 = call { i64, ptr } @compiler_2fsource_2ecompiler_2fsource_3aNames_2eText(ptr %v0, ptr %s2, ptr %t109, i32 %t108)
  store { i64, ptr } %t111, ptr %l66
  br label %bb24
bb24:
  %t113 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2eJoin(ptr %s2, ptr %s2, ptr %s2, ptr %l11, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d0, i32 0, i32 1) })
  store { i64, ptr } %t113, ptr %l68
  br label %bb25
bb25:
  %t114 = load { i64, ptr }, ptr %l66, !tbaa !27
  %t115 = extractvalue { i64, ptr } %t114, 1
  %t116 = extractvalue { i64, ptr } %t114, 0
  %t117 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d1, i32 0, i32 1) }, 1
  %t118 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d1, i32 0, i32 1) }, 0
  %t119 = add i64 %t116, %t118
  %t120 = load { i64, ptr }, ptr %l68, !tbaa !27
  %t121 = extractvalue { i64, ptr } %t120, 1
  %t122 = extractvalue { i64, ptr } %t120, 0
  %t123 = add i64 %t119, %t122
  %t124 = load i64, ptr %l54
  %t125 = inttoptr i64 %t124 to ptr
  %t126 = call ptr @__olang_scope_alloc(ptr %t125, i64 %t123)
  call void @olang_textcopy(ptr %t126, ptr %t115, i64 %t116)
  %t127 = getelementptr i8, ptr %t126, i64 %t116
  call void @olang_textcopy(ptr %t127, ptr %t117, i64 %t118)
  %t128 = getelementptr i8, ptr %t127, i64 %t118
  call void @olang_textcopy(ptr %t128, ptr %t121, i64 %t122)
  %t129 = insertvalue { i64, ptr } undef, i64 %t123, 0
  %t130 = insertvalue { i64, ptr } %t129, ptr %t126, 1
  %t132 = load i64, ptr %l54
  %t133 = inttoptr i64 %t132 to ptr
  %t134 = extractvalue { i64, ptr } %t130, 0
  %t135 = extractvalue { i64, ptr } %t130, 1
  %t136 = mul i64 %t134, 1
  %t137 = call ptr @__olang_scope_alloc(ptr %t133, i64 %t136)
  call void @llvm.memcpy.p0.p0.i64(ptr %t137, ptr %t135, i64 %t136, i1 false)
  %t138 = insertvalue { i64, ptr } undef, i64 %t134, 0
  %t139 = insertvalue { i64, ptr } %t138, ptr %t137, 1
  %t140 = load ptr, ptr %l53, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v1, ptr %v1, ptr %t140, { i64, ptr } %t139)
  br label %bb26
bb26:
  call void @__olang_scope_close(ptr %s2)
  br label %bb27
bb27:
  %t142 = load i64, ptr %l9, !tbaa !24
  %t144 = add i64 %t142, 1
  store i64 %t144, ptr %l9, !tbaa !24
  br label %bb12
bb28:
  %t146 = load ptr, ptr %lp3
  %t148 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H835e186358a312b102cd15b4faa0b451(ptr %v1, ptr %v1, ptr %t146)
  store { i64, ptr } %t148, ptr %l74
  br label %bb29
bb29:
  %t149 = load { i64, ptr }, ptr %l74, !tbaa !27
  store { i64, ptr } %t149, ptr %l75, !tbaa !27
  %t150 = load { i64, ptr }, ptr %l75, !tbaa !27
  %t151 = extractvalue { i64, ptr } %t150, 0
  store i64 %t151, ptr %l76, !tbaa !24
  %t152 = load i64, ptr %l76, !tbaa !24
  %t153 = mul i64 %t152, 16
  %t154 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t153)
  %t155 = insertvalue { i64, ptr } undef, i64 %t152, 0
  %t156 = insertvalue { i64, ptr } %t155, ptr %t154, 1
  store { i64, ptr } %t156, ptr %l77, !tbaa !27
  %t157 = getelementptr { i64, ptr }, ptr %l77, i32 0, i32 1
  %t158 = load ptr, ptr %t157, !tbaa !27
  %t159 = getelementptr { i64, ptr }, ptr %l75, i32 0, i32 1
  %t160 = load ptr, ptr %t159, !tbaa !27
  %t161 = load i64, ptr %l76, !tbaa !24
  %t162 = mul i64 %t161, 16
  call void @llvm.memmove.p0.p0.i64(ptr %t158, ptr %t160, i64 %t162, i1 false)
  %t163 = load { i64, ptr }, ptr %l77, !tbaa !27
  store { i64, ptr } %t163, ptr %l75, !tbaa !27
  %t164 = load { i64, ptr }, ptr %l75, !tbaa !27
  store { i64, ptr } %t164, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local { i64, ptr } @compiler_2fneeds_2ebinaryNeed(ptr %v0, i32 %a0) #0 {
entry:
  %l0 = alloca i32
  %l1 = alloca { i64, ptr }
  %l4 = alloca { i64, ptr }
  %l8 = alloca { i64, ptr }
  %l12 = alloca { i64, ptr }
  %l16 = alloca { i64, ptr }
  %l20 = alloca { i64, ptr }
  %l24 = alloca { i64, ptr }
  %l34 = alloca { i64, ptr }
  %l38 = alloca { i64, ptr }
  %l42 = alloca { i64, ptr }
  %l46 = alloca { i64, ptr }
  %l50 = alloca { i64, ptr }
  %l54 = alloca { i64, ptr }
  %l56 = alloca { i64, ptr }
  %l58 = alloca i64
  %l59 = alloca { i64, ptr }
  %rv = alloca { i64, ptr }
  store i32 %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load i32, ptr %l0, !range !{i32 0, i32 114}
  %t3 = trunc i64 68 to i32
  %t4 = icmp eq i32 %t1, %t3
  br i1 %t4, label %bb1, label %bb2
bb1:
  br label %bb3
bb2:
  br label %bb4
bb3:
  store { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d2, i32 0, i32 1) }, ptr %l4, !tbaa !27
  %t6 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t6, ptr %l1, !tbaa !27
  br label %bb59
bb4:
  %t8 = load i32, ptr %l0, !range !{i32 0, i32 114}
  %t10 = trunc i64 69 to i32
  %t11 = icmp eq i32 %t8, %t10
  br i1 %t11, label %bb5, label %bb6
bb5:
  br label %bb7
bb6:
  br label %bb8
bb7:
  store { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d3, i32 0, i32 1) }, ptr %l8, !tbaa !27
  %t13 = load { i64, ptr }, ptr %l8, !tbaa !27
  store { i64, ptr } %t13, ptr %l1, !tbaa !27
  br label %bb59
bb8:
  %t15 = load i32, ptr %l0, !range !{i32 0, i32 114}
  %t17 = trunc i64 70 to i32
  %t18 = icmp eq i32 %t15, %t17
  br i1 %t18, label %bb9, label %bb10
bb9:
  br label %bb11
bb10:
  br label %bb12
bb11:
  store { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d4, i32 0, i32 1) }, ptr %l12, !tbaa !27
  %t20 = load { i64, ptr }, ptr %l12, !tbaa !27
  store { i64, ptr } %t20, ptr %l1, !tbaa !27
  br label %bb59
bb12:
  %t22 = load i32, ptr %l0, !range !{i32 0, i32 114}
  %t24 = trunc i64 72 to i32
  %t25 = icmp eq i32 %t22, %t24
  br i1 %t25, label %bb13, label %bb14
bb13:
  br label %bb15
bb14:
  br label %bb16
bb15:
  store { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d5, i32 0, i32 1) }, ptr %l16, !tbaa !27
  %t27 = load { i64, ptr }, ptr %l16, !tbaa !27
  store { i64, ptr } %t27, ptr %l1, !tbaa !27
  br label %bb59
bb16:
  %t29 = load i32, ptr %l0, !range !{i32 0, i32 114}
  %t31 = trunc i64 73 to i32
  %t32 = icmp eq i32 %t29, %t31
  br i1 %t32, label %bb17, label %bb18
bb17:
  br label %bb19
bb18:
  br label %bb20
bb19:
  store { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d6, i32 0, i32 1) }, ptr %l20, !tbaa !27
  %t34 = load { i64, ptr }, ptr %l20, !tbaa !27
  store { i64, ptr } %t34, ptr %l1, !tbaa !27
  br label %bb59
bb20:
  %t36 = load i32, ptr %l0, !range !{i32 0, i32 114}
  %t38 = trunc i64 74 to i32
  %t39 = icmp eq i32 %t36, %t38
  br i1 %t39, label %bb21, label %bb22
bb21:
  br label %bb23
bb22:
  br label %bb24
bb23:
  store { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d7, i32 0, i32 1) }, ptr %l24, !tbaa !27
  %t41 = load { i64, ptr }, ptr %l24, !tbaa !27
  store { i64, ptr } %t41, ptr %l1, !tbaa !27
  br label %bb59
bb24:
  %t43 = load i32, ptr %l0, !range !{i32 0, i32 114}
  %t45 = trunc i64 97 to i32
  %t46 = icmp eq i32 %t43, %t45
  br i1 %t46, label %bb25, label %bb26
bb25:
  br label %bb33
bb26:
  %t48 = load i32, ptr %l0, !range !{i32 0, i32 114}
  %t50 = trunc i64 99 to i32
  %t51 = icmp eq i32 %t48, %t50
  br i1 %t51, label %bb27, label %bb28
bb27:
  br label %bb33
bb28:
  %t53 = load i32, ptr %l0, !range !{i32 0, i32 114}
  %t55 = trunc i64 98 to i32
  %t56 = icmp eq i32 %t53, %t55
  br i1 %t56, label %bb29, label %bb30
bb29:
  br label %bb33
bb30:
  %t58 = load i32, ptr %l0, !range !{i32 0, i32 114}
  %t60 = trunc i64 100 to i32
  %t61 = icmp eq i32 %t58, %t60
  br i1 %t61, label %bb31, label %bb32
bb31:
  br label %bb33
bb32:
  br label %bb34
bb33:
  store { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d8, i32 0, i32 1) }, ptr %l34, !tbaa !27
  %t63 = load { i64, ptr }, ptr %l34, !tbaa !27
  store { i64, ptr } %t63, ptr %l1, !tbaa !27
  br label %bb59
bb34:
  %t65 = load i32, ptr %l0, !range !{i32 0, i32 114}
  %t67 = trunc i64 101 to i32
  %t68 = icmp eq i32 %t65, %t67
  br i1 %t68, label %bb35, label %bb36
bb35:
  br label %bb37
bb36:
  br label %bb38
bb37:
  store { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d9, i32 0, i32 1) }, ptr %l38, !tbaa !27
  %t70 = load { i64, ptr }, ptr %l38, !tbaa !27
  store { i64, ptr } %t70, ptr %l1, !tbaa !27
  br label %bb59
bb38:
  %t72 = load i32, ptr %l0, !range !{i32 0, i32 114}
  %t74 = trunc i64 102 to i32
  %t75 = icmp eq i32 %t72, %t74
  br i1 %t75, label %bb39, label %bb40
bb39:
  br label %bb41
bb40:
  br label %bb42
bb41:
  store { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d10, i32 0, i32 1) }, ptr %l42, !tbaa !27
  %t77 = load { i64, ptr }, ptr %l42, !tbaa !27
  store { i64, ptr } %t77, ptr %l1, !tbaa !27
  br label %bb59
bb42:
  %t79 = load i32, ptr %l0, !range !{i32 0, i32 114}
  %t81 = trunc i64 103 to i32
  %t82 = icmp eq i32 %t79, %t81
  br i1 %t82, label %bb43, label %bb44
bb43:
  br label %bb45
bb44:
  br label %bb46
bb45:
  store { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d11, i32 0, i32 1) }, ptr %l46, !tbaa !27
  %t84 = load { i64, ptr }, ptr %l46, !tbaa !27
  store { i64, ptr } %t84, ptr %l1, !tbaa !27
  br label %bb59
bb46:
  %t86 = load i32, ptr %l0, !range !{i32 0, i32 114}
  %t88 = trunc i64 106 to i32
  %t89 = icmp eq i32 %t86, %t88
  br i1 %t89, label %bb47, label %bb48
bb47:
  br label %bb49
bb48:
  br label %bb50
bb49:
  store { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d12, i32 0, i32 1) }, ptr %l50, !tbaa !27
  %t91 = load { i64, ptr }, ptr %l50, !tbaa !27
  store { i64, ptr } %t91, ptr %l1, !tbaa !27
  br label %bb59
bb50:
  %t93 = load i32, ptr %l0, !range !{i32 0, i32 114}
  %t95 = trunc i64 107 to i32
  %t96 = icmp eq i32 %t93, %t95
  br i1 %t96, label %bb51, label %bb52
bb51:
  br label %bb53
bb52:
  br label %bb54
bb53:
  store { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d13, i32 0, i32 1) }, ptr %l54, !tbaa !27
  %t98 = load { i64, ptr }, ptr %l54, !tbaa !27
  store { i64, ptr } %t98, ptr %l1, !tbaa !27
  br label %bb59
bb54:
  br i1 true, label %bb55, label %bb56
bb55:
  br label %bb57
bb56:
  br label %bb58
bb57:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d14, i32 0, i32 1) }, ptr %l56, !tbaa !27
  %t100 = load { i64, ptr }, ptr %l56, !tbaa !27
  store { i64, ptr } %t100, ptr %l1, !tbaa !27
  br label %bb59
bb58:
  call void @__olang_check_failed(ptr @olang_loc_eb8dbdd343cc2ec5_7e04d3ec09c5f0b9)
  unreachable
bb59:
  %t102 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t103 = extractvalue { i64, ptr } %t102, 0
  store i64 %t103, ptr %l58, !tbaa !24
  %t104 = load i64, ptr %l58, !tbaa !24
  %t105 = mul i64 %t104, 1
  %t106 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t105)
  %t107 = insertvalue { i64, ptr } undef, i64 %t104, 0
  %t108 = insertvalue { i64, ptr } %t107, ptr %t106, 1
  store { i64, ptr } %t108, ptr %l59, !tbaa !27
  %t109 = getelementptr { i64, ptr }, ptr %l59, i32 0, i32 1
  %t110 = load ptr, ptr %t109, !tbaa !27
  %t111 = getelementptr { i64, ptr }, ptr %l1, i32 0, i32 1
  %t112 = load ptr, ptr %t111, !tbaa !27
  %t113 = load i64, ptr %l58, !tbaa !24
  %t114 = mul i64 %t113, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t110, ptr %t112, i64 %t114, i1 false)
  %t115 = load { i64, ptr }, ptr %l59, !tbaa !27
  store { i64, ptr } %t115, ptr %l1, !tbaa !27
  %t116 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t116, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local void @compiler_2fneeds_2ecompiler_2fneeds_3awalker_2eassign(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, ptr %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l3 = alloca ptr
  %l4 = alloca { i64, ptr }
  %l5 = alloca { i64, ptr }
  %l6 = alloca i64
  %l7 = alloca i64
  %l9 = alloca ptr
  %l10 = alloca i1
  %l17 = alloca ptr
  %l21 = alloca i64
  %l32 = alloca { i64, ptr }
  %s1 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l1, !tbaa !29
  store ptr %t1, ptr %l9, !tbaa !29
  store i1 false, ptr %l10, !tbaa !21
  %t2 = load ptr, ptr %l9, !tbaa !29
  %t3 = icmp ne ptr %t2, null
  br i1 %t3, label %bb1, label %bb2
bb1:
  %t5 = load ptr, ptr %l9, !tbaa !29
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 30}
  %t8 = icmp eq i64 %t6, 15
  store i1 %t8, ptr %l10, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l10, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  %t10 = load ptr, ptr %l1, !tbaa !29
  %t12 = getelementptr { i64, [4 x i64] }, ptr %t10, i32 0, i32 1
  %t13 = getelementptr { %"compiler/source:Span", ptr, { i64, ptr } }, ptr %t12, i32 0, i32 1
  %t14 = load ptr, ptr %t13
  store ptr %t14, ptr %l3, !tbaa !29
  %t16 = load ptr, ptr %l1, !tbaa !29
  %t18 = getelementptr { i64, [4 x i64] }, ptr %t16, i32 0, i32 1
  %t19 = getelementptr { %"compiler/source:Span", ptr, { i64, ptr } }, ptr %t18, i32 0, i32 2
  %t20 = load { i64, ptr }, ptr %t19
  store { i64, ptr } %t20, ptr %l4, !tbaa !27
  br label %bb5
bb4:
  br label %bb16
bb5:
  store %olang.scope zeroinitializer, ptr %s1
  %t22 = load ptr, ptr %l0, !tbaa !29
  store ptr %t22, ptr %l17, !tbaa !29
  %t23 = load ptr, ptr %l0, !tbaa !29
  %t24 = load ptr, ptr %l3, !tbaa !29
  %t28 = call i64 @compiler_2fneeds_2ecompiler_2fneeds_3awalker_2evalOf(ptr %v0, ptr %v1, ptr %t23, ptr %t24)
  store i64 %t28, ptr %l21
  br label %bb6
bb6:
  %t29 = load ptr, ptr %l17, !tbaa !29
  %t30 = load i64, ptr %l21, !tbaa !24
  call void @compiler_2fneeds_2ecompiler_2fneeds_3awalker_2eneed(ptr %v0, ptr %s1, ptr %t29, i64 %t30, { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d15, i32 0, i32 1) })
  br label %bb7
bb7:
  %t31 = load ptr, ptr %l0, !tbaa !29
  %t32 = load ptr, ptr %l3, !tbaa !29
  call void @compiler_2fneeds_2ecompiler_2fneeds_3awalker_2eexpr(ptr %v0, ptr %v1, ptr %t31, ptr %t32)
  br label %bb8
bb8:
  %t36 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t36, ptr %l5, !tbaa !27
  store i64 0, ptr %l6, !tbaa !24
  %t38 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t40 = extractvalue { i64, ptr } %t38, 0
  store i64 %t40, ptr %l7, !tbaa !24
  br label %bb9
bb9:
  %t42 = load i64, ptr %l6, !tbaa !24
  %t43 = load i64, ptr %l7, !tbaa !24
  %t46 = icmp slt i64 %t42, %t43
  %t48 = xor i1 %t46, true
  br i1 %t48, label %bb10, label %bb11
bb10:
  br label %bb15
bb11:
  br label %bb12
bb12:
  %t50 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t50, ptr %l32, !tbaa !27
  %t51 = load i64, ptr %l6, !tbaa !24
  %t53 = getelementptr { i64, ptr }, ptr %l32, i32 0, i32 1
  %t54 = load ptr, ptr %t53, !tbaa !27
  %t55 = getelementptr ptr, ptr %t54, i64 %t51
  %t56 = load ptr, ptr %t55, !tbaa !39
  %t58 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2fneeds_2ecompiler_2fneeds_3awalker_2eexpr(ptr %v0, ptr %v1, ptr %t58, ptr %t56)
  br label %bb13
bb13:
  br label %bb14
bb14:
  %t63 = load i64, ptr %l6, !tbaa !24
  %t65 = add i64 %t63, 1
  store i64 %t65, ptr %l6, !tbaa !24
  br label %bb9
bb15:
  call void @__olang_scope_close(ptr %s1)
  br label %bb22
bb16:
  br i1 true, label %bb17, label %bb18
bb17:
  br label %bb19
bb18:
  br label %bb21
bb19:
  %t67 = load ptr, ptr %l0, !tbaa !29
  %t68 = load ptr, ptr %l1, !tbaa !29
  call void @compiler_2fneeds_2ecompiler_2fneeds_3awalker_2eexpr(ptr %v0, ptr %v1, ptr %t67, ptr %t68)
  br label %bb20
bb20:
  br label %bb22
bb21:
  call void @__olang_check_failed(ptr @olang_loc_e9926bfe55a51c67_a6d583928ea9cdb3)
  unreachable
bb22:
  %t72 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2fneeds_2ecompiler_2fneeds_3awalker_2eexpr(ptr %v0, ptr %v2, ptr %t72, ptr %a2)
  br label %bb23
bb23:
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2fneeds_2ecompiler_2fneeds_3awalker_2ebinary(ptr %v0, ptr %v1, ptr %v2, ptr %a0, i32 %a1, ptr %a2, ptr %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca ptr
  %l3 = alloca ptr
  %l4 = alloca { i64, ptr }
  %l7 = alloca ptr
  %l11 = alloca i64
  %l13 = alloca { i64, ptr }
  %l15 = alloca i1
  %l17 = alloca ptr
  %l21 = alloca i64
  %s1 = alloca %olang.scope
  %s2 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  store ptr %a2, ptr %l2
  store ptr %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load i32, ptr %l1, !range !{i32 0, i32 114}
  %t3 = trunc i64 27 to i32
  %t4 = icmp eq i32 %t1, %t3
  br i1 %t4, label %bb1, label %bb2
bb1:
  store %olang.scope zeroinitializer, ptr %s1
  %t6 = load ptr, ptr %l0, !tbaa !29
  store ptr %t6, ptr %l7, !tbaa !29
  %t7 = load ptr, ptr %l0, !tbaa !29
  %t8 = load ptr, ptr %l3, !tbaa !29
  %t12 = call i64 @compiler_2fneeds_2ecompiler_2fneeds_3awalker_2evalOf(ptr %v0, ptr %v2, ptr %t7, ptr %t8)
  store i64 %t12, ptr %l11
  br label %bb3
bb2:
  store %olang.scope zeroinitializer, ptr %s2
  %t13 = load i32, ptr %l1, !range !{i32 0, i32 114}
  %t15 = call { i64, ptr } @compiler_2fneeds_2ebinaryNeed(ptr %s2, i32 %t13)
  store { i64, ptr } %t15, ptr %l13
  br label %bb5
bb3:
  %t16 = load ptr, ptr %l7, !tbaa !29
  %t17 = load i64, ptr %l11, !tbaa !24
  call void @compiler_2fneeds_2ecompiler_2fneeds_3awalker_2eneed(ptr %v0, ptr %s1, ptr %t16, i64 %t17, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d16, i32 0, i32 1) })
  br label %bb4
bb4:
  call void @__olang_scope_close(ptr %s1)
  br label %bb12
bb5:
  %t18 = load { i64, ptr }, ptr %l13, !tbaa !27
  store { i64, ptr } %t18, ptr %l4, !tbaa !27
  %t19 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t21 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s2, ptr %s2, { i64, ptr } %t19, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d17, i32 0, i32 1) })
  store i1 %t21, ptr %l15
  br label %bb6
bb6:
  %t22 = load i1, ptr %l15, !tbaa !21
  %t23 = xor i1 %t22, true
  br i1 %t23, label %bb7, label %bb8
bb7:
  %t25 = load ptr, ptr %l0, !tbaa !29
  store ptr %t25, ptr %l17, !tbaa !29
  %t26 = load ptr, ptr %l0, !tbaa !29
  %t27 = load ptr, ptr %l2, !tbaa !29
  %t31 = call i64 @compiler_2fneeds_2ecompiler_2fneeds_3awalker_2evalOf(ptr %v0, ptr %v1, ptr %t26, ptr %t27)
  store i64 %t31, ptr %l21
  br label %bb9
bb8:
  br label %bb11
bb9:
  %t32 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t33 = load ptr, ptr %l17, !tbaa !29
  %t34 = load i64, ptr %l21, !tbaa !24
  call void @compiler_2fneeds_2ecompiler_2fneeds_3awalker_2eneed(ptr %v0, ptr %s2, ptr %t33, i64 %t34, { i64, ptr } %t32)
  br label %bb10
bb10:
  br label %bb11
bb11:
  call void @__olang_scope_close(ptr %s2)
  br label %bb12
bb12:
  %t36 = load ptr, ptr %l0, !tbaa !29
  %t37 = load ptr, ptr %l2, !tbaa !29
  call void @compiler_2fneeds_2ecompiler_2fneeds_3awalker_2eexpr(ptr %v0, ptr %v1, ptr %t36, ptr %t37)
  br label %bb13
bb13:
  %t41 = load ptr, ptr %l0, !tbaa !29
  %t42 = load ptr, ptr %l3, !tbaa !29
  call void @compiler_2fneeds_2ecompiler_2fneeds_3awalker_2eexpr(ptr %v0, ptr %v2, ptr %t41, ptr %t42)
  br label %bb14
bb14:
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2fneeds_2ecompiler_2fneeds_3awalker_2ecall(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, { i64, ptr } %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca { i64, ptr }
  %l3 = alloca i32
  %l4 = alloca i32
  %l5 = alloca ptr
  %l6 = alloca i32
  %l7 = alloca { i64, ptr }
  %l8 = alloca i64
  %l9 = alloca i64
  %l11 = alloca ptr
  %l12 = alloca i1
  %l15 = alloca i1
  %l17 = alloca ptr
  %l18 = alloca i1
  %l29 = alloca i1
  %l30 = alloca ptr
  %l31 = alloca i64
  %l35 = alloca i64
  %l36 = alloca i32
  %l43 = alloca { i64, ptr }
  %l46 = alloca ptr
  %l47 = alloca i1
  %l54 = alloca ptr
  %l58 = alloca i64
  %l65 = alloca { i64, ptr }
  %l71 = alloca ptr
  %l75 = alloca i64
  %l86 = alloca { i64, ptr }
  %s1 = alloca %olang.scope
  %s3 = alloca %olang.scope
  %s5 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store { i64, ptr } %a2, ptr %l2
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
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 30}
  %t8 = icmp eq i64 %t6, 14
  store i1 %t8, ptr %l12, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l12, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  %t10 = load ptr, ptr %l1, !tbaa !29
  %t12 = getelementptr { i64, [4 x i64] }, ptr %t10, i32 0, i32 1
  %t13 = getelementptr { %"compiler/source:Span", ptr, i32 }, ptr %t12, i32 0, i32 1
  %t14 = load ptr, ptr %t13
  store ptr %t14, ptr %l17, !tbaa !29
  store i1 false, ptr %l18, !tbaa !21
  %t15 = load ptr, ptr %l17, !tbaa !29
  %t16 = icmp ne ptr %t15, null
  br i1 %t16, label %bb5, label %bb6
bb4:
  store i1 false, ptr %l15, !tbaa !21
  br label %bb7
bb5:
  %t18 = load ptr, ptr %l17, !tbaa !29
  %t19 = load i64, ptr %t18, !range !{i64 0, i64 30}
  %t21 = icmp eq i64 %t19, 0
  store i1 %t21, ptr %l18, !tbaa !21
  br label %bb6
bb6:
  %t22 = load i1, ptr %l18, !tbaa !21
  store i1 %t22, ptr %l15, !tbaa !21
  br label %bb7
bb7:
  %t23 = load i1, ptr %l15, !tbaa !21
  br i1 %t23, label %bb8, label %bb9
bb8:
  %t24 = load ptr, ptr %l1, !tbaa !29
  %t26 = getelementptr { i64, [4 x i64] }, ptr %t24, i32 0, i32 1
  %t27 = getelementptr { %"compiler/source:Span", ptr, i32 }, ptr %t26, i32 0, i32 1
  %t28 = load ptr, ptr %t27
  %t30 = getelementptr { i64, [4 x i64] }, ptr %t28, i32 0, i32 1
  %t31 = getelementptr { %"compiler/source:Span", i32 }, ptr %t30, i32 0, i32 1
  %t32 = load i32, ptr %t31
  store i32 %t32, ptr %l3, !tbaa !23
  %t34 = load ptr, ptr %l1, !tbaa !29
  %t36 = getelementptr { i64, [4 x i64] }, ptr %t34, i32 0, i32 1
  %t37 = getelementptr { %"compiler/source:Span", ptr, i32 }, ptr %t36, i32 0, i32 2
  %t38 = load i32, ptr %t37
  store i32 %t38, ptr %l4, !tbaa !23
  br label %bb10
bb9:
  br label %bb20
bb10:
  %t40 = load ptr, ptr %l0, !tbaa !29
  %t42 = getelementptr %"compiler/needs:walker", ptr %t40, i32 0, i32 4
  %t43 = load i32, ptr %l3, !tbaa !23
  %t46 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fsource_3aNameId_2c_20I64_3e_Hf575c52a5a9e8993bae2b73c9c2548b3(ptr %v0, ptr %t42, i32 %t43)
  store i1 %t46, ptr %l29
  br label %bb11
bb11:
  %t47 = load i1, ptr %l29, !tbaa !21
  br i1 %t47, label %bb12, label %bb13
bb12:
  store %olang.scope zeroinitializer, ptr %s1
  %t48 = load ptr, ptr %l0, !tbaa !29
  store ptr %t48, ptr %l30, !tbaa !29
  %t49 = load ptr, ptr %l0, !tbaa !29
  %t51 = getelementptr %"compiler/needs:walker", ptr %t49, i32 0, i32 4
  %t52 = load i32, ptr %l3, !tbaa !23
  %t55 = call { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fsource_3aNameId_2c_20I64_3e_H2a27ec2ae5362b2f0ac6d54f3e063c70(ptr %v0, ptr %t51, i32 %t52)
  %t56 = extractvalue { i32, i64 } %t55, 1
  %t57 = extractvalue { i32, i64 } %t55, 0
  store i32 %t57, ptr %l36
  %t58 = icmp ne i32 %t57, 0
  br i1 %t58, label %bb15, label %ok.59, !prof !99
ok.59:
  store i64 %t56, ptr %l35
  br label %bb14
bb13:
  br label %bb20
bb14:
  %t60 = load i64, ptr %l35, !tbaa !24
  store i64 %t60, ptr %l31, !tbaa !24
  br label %bb17
bb15:
  br label %bb16
bb16:
  store i64 -1, ptr %l31, !tbaa !24
  br label %bb17
bb17:
  %t61 = load ptr, ptr %l0, !tbaa !29
  %t63 = getelementptr %"compiler/needs:walker", ptr %t61, i32 0, i32 0
  %t64 = load ptr, ptr %t63, !tbaa !29
  %t66 = getelementptr %"compiler/check:Checker", ptr %t64, i32 0, i32 1
  %t67 = load ptr, ptr %t66, !tbaa !29
  %t69 = getelementptr %"compiler/generic:Program", ptr %t67, i32 0, i32 0
  %t70 = load ptr, ptr %t69, !tbaa !29
  %t72 = getelementptr %"compiler/load:Loader", ptr %t70, i32 0, i32 3
  %t73 = load ptr, ptr %t72, !tbaa !29
  %t74 = load i32, ptr %l4, !tbaa !23
  %t77 = call { i64, ptr } @compiler_2fsource_2ecompiler_2fsource_3aNames_2eText(ptr %v0, ptr %s1, ptr %t73, i32 %t74)
  store { i64, ptr } %t77, ptr %l43
  br label %bb18
bb18:
  %t78 = load { i64, ptr }, ptr %l43, !tbaa !27
  %t79 = extractvalue { i64, ptr } %t78, 1
  %t80 = extractvalue { i64, ptr } %t78, 0
  %t81 = extractvalue { i64, ptr } { i64 12, ptr getelementptr inbounds (<{ i64, [12 x i8] }>, ptr @.d18, i32 0, i32 1) }, 1
  %t82 = extractvalue { i64, ptr } { i64 12, ptr getelementptr inbounds (<{ i64, [12 x i8] }>, ptr @.d18, i32 0, i32 1) }, 0
  %t83 = add i64 %t80, %t82
  %t84 = call ptr @__olang_scope_alloc(ptr %s1, i64 %t83)
  call void @olang_textcopy(ptr %t84, ptr %t79, i64 %t80)
  %t85 = getelementptr i8, ptr %t84, i64 %t80
  call void @olang_textcopy(ptr %t85, ptr %t81, i64 %t82)
  %t86 = insertvalue { i64, ptr } undef, i64 %t83, 0
  %t87 = insertvalue { i64, ptr } %t86, ptr %t84, 1
  %t89 = extractvalue { i64, ptr } %t87, 0
  %t90 = extractvalue { i64, ptr } %t87, 1
  %t91 = mul i64 %t89, 1
  %t92 = call ptr @__olang_scope_alloc(ptr %s1, i64 %t91)
  call void @llvm.memcpy.p0.p0.i64(ptr %t92, ptr %t90, i64 %t91, i1 false)
  %t93 = insertvalue { i64, ptr } undef, i64 %t89, 0
  %t94 = insertvalue { i64, ptr } %t93, ptr %t92, 1
  %t95 = load ptr, ptr %l30, !tbaa !29
  %t96 = load i64, ptr %l31, !tbaa !24
  call void @compiler_2fneeds_2ecompiler_2fneeds_3awalker_2eneed(ptr %v0, ptr %s1, ptr %t95, i64 %t96, { i64, ptr } %t94)
  br label %bb19
bb19:
  call void @__olang_scope_close(ptr %s1)
  br label %bb38
bb20:
  %t98 = load ptr, ptr %l1, !tbaa !29
  store ptr %t98, ptr %l46, !tbaa !29
  store i1 false, ptr %l47, !tbaa !21
  %t99 = load ptr, ptr %l46, !tbaa !29
  %t100 = icmp ne ptr %t99, null
  br i1 %t100, label %bb21, label %bb22
bb21:
  %t102 = load ptr, ptr %l46, !tbaa !29
  %t103 = load i64, ptr %t102, !range !{i64 0, i64 30}
  %t105 = icmp eq i64 %t103, 14
  store i1 %t105, ptr %l47, !tbaa !21
  br label %bb22
bb22:
  %t106 = load i1, ptr %l47, !tbaa !21
  br i1 %t106, label %bb23, label %bb24
bb23:
  %t107 = load ptr, ptr %l1, !tbaa !29
  %t109 = getelementptr { i64, [4 x i64] }, ptr %t107, i32 0, i32 1
  %t110 = getelementptr { %"compiler/source:Span", ptr, i32 }, ptr %t109, i32 0, i32 1
  %t111 = load ptr, ptr %t110
  store ptr %t111, ptr %l5, !tbaa !29
  %t113 = load ptr, ptr %l1, !tbaa !29
  %t115 = getelementptr { i64, [4 x i64] }, ptr %t113, i32 0, i32 1
  %t116 = getelementptr { %"compiler/source:Span", ptr, i32 }, ptr %t115, i32 0, i32 2
  %t117 = load i32, ptr %t116
  store i32 %t117, ptr %l6, !tbaa !23
  br label %bb25
bb24:
  br label %bb30
bb25:
  store %olang.scope zeroinitializer, ptr %s3
  %t119 = load ptr, ptr %l0, !tbaa !29
  store ptr %t119, ptr %l54, !tbaa !29
  %t120 = load ptr, ptr %l0, !tbaa !29
  %t121 = load ptr, ptr %l5, !tbaa !29
  %t125 = call i64 @compiler_2fneeds_2ecompiler_2fneeds_3awalker_2evalOf(ptr %v0, ptr %v1, ptr %t120, ptr %t121)
  store i64 %t125, ptr %l58
  br label %bb26
bb26:
  %t126 = load ptr, ptr %l0, !tbaa !29
  %t128 = getelementptr %"compiler/needs:walker", ptr %t126, i32 0, i32 0
  %t129 = load ptr, ptr %t128, !tbaa !29
  %t131 = getelementptr %"compiler/check:Checker", ptr %t129, i32 0, i32 1
  %t132 = load ptr, ptr %t131, !tbaa !29
  %t134 = getelementptr %"compiler/generic:Program", ptr %t132, i32 0, i32 0
  %t135 = load ptr, ptr %t134, !tbaa !29
  %t137 = getelementptr %"compiler/load:Loader", ptr %t135, i32 0, i32 3
  %t138 = load ptr, ptr %t137, !tbaa !29
  %t139 = load i32, ptr %l6, !tbaa !23
  %t142 = call { i64, ptr } @compiler_2fsource_2ecompiler_2fsource_3aNames_2eText(ptr %v0, ptr %s3, ptr %t138, i32 %t139)
  store { i64, ptr } %t142, ptr %l65
  br label %bb27
bb27:
  %t143 = load { i64, ptr }, ptr %l65, !tbaa !27
  %t144 = extractvalue { i64, ptr } %t143, 1
  %t145 = extractvalue { i64, ptr } %t143, 0
  %t146 = call ptr @__olang_scope_alloc(ptr %s3, i64 %t145)
  call void @olang_textcopy(ptr %t146, ptr %t144, i64 %t145)
  %t147 = insertvalue { i64, ptr } undef, i64 %t145, 0
  %t148 = insertvalue { i64, ptr } %t147, ptr %t146, 1
  %t150 = extractvalue { i64, ptr } %t148, 0
  %t151 = extractvalue { i64, ptr } %t148, 1
  %t152 = mul i64 %t150, 1
  %t153 = call ptr @__olang_scope_alloc(ptr %s3, i64 %t152)
  call void @llvm.memcpy.p0.p0.i64(ptr %t153, ptr %t151, i64 %t152, i1 false)
  %t154 = insertvalue { i64, ptr } undef, i64 %t150, 0
  %t155 = insertvalue { i64, ptr } %t154, ptr %t153, 1
  %t156 = load ptr, ptr %l54, !tbaa !29
  %t157 = load i64, ptr %l58, !tbaa !24
  call void @compiler_2fneeds_2ecompiler_2fneeds_3awalker_2eneed(ptr %v0, ptr %s3, ptr %t156, i64 %t157, { i64, ptr } %t155)
  br label %bb28
bb28:
  %t159 = load ptr, ptr %l0, !tbaa !29
  %t160 = load ptr, ptr %l5, !tbaa !29
  call void @compiler_2fneeds_2ecompiler_2fneeds_3awalker_2eexpr(ptr %v0, ptr %v1, ptr %t159, ptr %t160)
  br label %bb29
bb29:
  call void @__olang_scope_close(ptr %s3)
  br label %bb38
bb30:
  br i1 true, label %bb31, label %bb32
bb31:
  br label %bb33
bb32:
  br label %bb37
bb33:
  store %olang.scope zeroinitializer, ptr %s5
  %t164 = load ptr, ptr %l0, !tbaa !29
  store ptr %t164, ptr %l71, !tbaa !29
  %t165 = load ptr, ptr %l0, !tbaa !29
  %t166 = load ptr, ptr %l1, !tbaa !29
  %t170 = call i64 @compiler_2fneeds_2ecompiler_2fneeds_3awalker_2evalOf(ptr %v0, ptr %v1, ptr %t165, ptr %t166)
  store i64 %t170, ptr %l75
  br label %bb34
bb34:
  %t171 = load ptr, ptr %l71, !tbaa !29
  %t172 = load i64, ptr %l75, !tbaa !24
  call void @compiler_2fneeds_2ecompiler_2fneeds_3awalker_2eneed(ptr %v0, ptr %s5, ptr %t171, i64 %t172, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d19, i32 0, i32 1) })
  br label %bb35
bb35:
  %t173 = load ptr, ptr %l0, !tbaa !29
  %t174 = load ptr, ptr %l1, !tbaa !29
  %t175 = load { i64, ptr }, ptr %l2, !tbaa !27
  call void @compiler_2fneeds_2ecompiler_2fneeds_3awalker_2ethrough(ptr %v0, ptr %v1, ptr %v2, ptr %t173, ptr %t174, { i64, ptr } %t175)
  br label %bb36
bb36:
  call void @__olang_scope_close(ptr %s5)
  br label %bb38
bb37:
  call void @__olang_check_failed(ptr @olang_loc_585fa5a01a72b2ac_16d8ccfed8d78ee8)
  unreachable
bb38:
  %t179 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t179, ptr %l7, !tbaa !27
  store i64 0, ptr %l8, !tbaa !24
  %t181 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t183 = extractvalue { i64, ptr } %t181, 0
  store i64 %t183, ptr %l9, !tbaa !24
  br label %bb39
bb39:
  %t185 = load i64, ptr %l8, !tbaa !24
  %t186 = load i64, ptr %l9, !tbaa !24
  %t189 = icmp slt i64 %t185, %t186
  %t191 = xor i1 %t189, true
  br i1 %t191, label %bb40, label %bb41
bb40:
  br label %bb45
bb41:
  br label %bb42
bb42:
  %t193 = load { i64, ptr }, ptr %l7, !tbaa !27
  store { i64, ptr } %t193, ptr %l86, !tbaa !27
  %t194 = load i64, ptr %l8, !tbaa !24
  %t196 = getelementptr { i64, ptr }, ptr %l86, i32 0, i32 1
  %t197 = load ptr, ptr %t196, !tbaa !27
  %t198 = getelementptr ptr, ptr %t197, i64 %t194
  %t199 = load ptr, ptr %t198, !tbaa !39
  %t201 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2fneeds_2ecompiler_2fneeds_3awalker_2eexpr(ptr %v0, ptr %v2, ptr %t201, ptr %t199)
  br label %bb43
bb43:
  br label %bb44
bb44:
  %t206 = load i64, ptr %l8, !tbaa !24
  %t208 = add i64 %t206, 1
  store i64 %t208, ptr %l8, !tbaa !24
  br label %bb39
bb45:
  br label %ret
ret:
  ret void
}

define dso_local i64 @compiler_2fneeds_2ecompiler_2fneeds_3awalker_2ecalled(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca %"compiler/source:Span"
  %l3 = alloca i32
  %l4 = alloca %"compiler/names:Ref"
  %l5 = alloca %"compiler/source:Span"
  %l6 = alloca i32
  %l7 = alloca %"compiler/names:Ref"
  %l8 = alloca ptr
  %l9 = alloca ptr
  %l10 = alloca i1
  %l24 = alloca %"compiler/names:Ref"
  %l27 = alloca i64
  %l33 = alloca i64
  %l34 = alloca ptr
  %l35 = alloca i1
  %l49 = alloca %"compiler/names:Ref"
  %l52 = alloca i64
  %l58 = alloca i64
  %l59 = alloca ptr
  %l60 = alloca i1
  %l67 = alloca i64
  %rv = alloca i64
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l1, !tbaa !29
  store ptr %t1, ptr %l9, !tbaa !29
  store i1 false, ptr %l10, !tbaa !21
  %t2 = load ptr, ptr %l9, !tbaa !29
  %t3 = icmp ne ptr %t2, null
  br i1 %t3, label %bb1, label %bb2
bb1:
  %t5 = load ptr, ptr %l9, !tbaa !29
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 30}
  %t8 = icmp eq i64 %t6, 0
  store i1 %t8, ptr %l10, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l10, !tbaa !21
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
  br label %bb11
bb5:
  %t22 = load ptr, ptr %l0, !tbaa !29
  %t24 = getelementptr %"compiler/needs:walker", ptr %t22, i32 0, i32 0
  %t25 = load ptr, ptr %t24, !tbaa !29
  %t27 = getelementptr %"compiler/check:Checker", ptr %t25, i32 0, i32 1
  %t28 = load ptr, ptr %t27, !tbaa !29
  %t30 = getelementptr %"compiler/generic:Program", ptr %t28, i32 0, i32 1
  %t31 = load ptr, ptr %t30, !tbaa !29
  %t32 = load ptr, ptr %l0, !tbaa !29
  %t34 = getelementptr %"compiler/needs:walker", ptr %t32, i32 0, i32 3
  %t35 = load i64, ptr %t34, !tbaa !24
  %t36 = getelementptr %"compiler/source:Span", ptr %l2, i32 0, i32 0
  %t37 = load i32, ptr %t36, !tbaa !23
  %t41 = call %"compiler/names:Ref" @compiler_2fnames_2ecompiler_2fnames_3aResolver_2eUse(ptr %v0, ptr %t31, i64 %t35, i32 %t37)
  store %"compiler/names:Ref" %t41, ptr %l24
  br label %bb6
bb6:
  %t42 = load %"compiler/names:Ref", ptr %l24
  store %"compiler/names:Ref" %t42, ptr %l4
  %t43 = getelementptr %"compiler/names:Ref", ptr %l4, i32 0, i32 0
  %t44 = load i32, ptr %t43, !range !{i32 0, i32 9}
  %t46 = trunc i64 3 to i32
  %t47 = icmp eq i32 %t44, %t46
  br i1 %t47, label %bb7, label %bb8
bb7:
  %t49 = load ptr, ptr %l0, !tbaa !29
  %t51 = getelementptr %"compiler/needs:walker", ptr %t49, i32 0, i32 0
  %t52 = load ptr, ptr %t51, !tbaa !29
  %t54 = getelementptr %"compiler/check:Checker", ptr %t52, i32 0, i32 1
  %t55 = load ptr, ptr %t54, !tbaa !29
  %t56 = getelementptr %"compiler/names:Ref", ptr %l4, i32 0, i32 1
  %t57 = load i64, ptr %t56, !tbaa !24
  %t58 = load i32, ptr %l3, !tbaa !23
  %t62 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnNamed(ptr %v0, ptr %t55, i64 %t57, i32 %t58)
  store i64 %t62, ptr %l33
  br label %bb9
bb8:
  store i64 -1, ptr %l27, !tbaa !24
  br label %bb10
bb9:
  %t63 = load i64, ptr %l33, !tbaa !24
  store i64 %t63, ptr %l27, !tbaa !24
  br label %bb10
bb10:
  %t64 = load i64, ptr %l27, !tbaa !24
  store i64 %t64, ptr %rv
  br label %ret
bb11:
  %t65 = load ptr, ptr %l1, !tbaa !29
  store ptr %t65, ptr %l34, !tbaa !29
  store i1 false, ptr %l35, !tbaa !21
  %t66 = load ptr, ptr %l34, !tbaa !29
  %t67 = icmp ne ptr %t66, null
  br i1 %t67, label %bb12, label %bb13
bb12:
  %t69 = load ptr, ptr %l34, !tbaa !29
  %t70 = load i64, ptr %t69, !range !{i64 0, i64 30}
  %t72 = icmp eq i64 %t70, 14
  store i1 %t72, ptr %l35, !tbaa !21
  br label %bb13
bb13:
  %t73 = load i1, ptr %l35, !tbaa !21
  br i1 %t73, label %bb14, label %bb15
bb14:
  %t74 = load ptr, ptr %l1, !tbaa !29
  %t76 = getelementptr { i64, [4 x i64] }, ptr %t74, i32 0, i32 1
  %t77 = getelementptr { %"compiler/source:Span", ptr, i32 }, ptr %t76, i32 0, i32 0
  %t78 = load %"compiler/source:Span", ptr %t77
  store %"compiler/source:Span" %t78, ptr %l5
  %t80 = load ptr, ptr %l1, !tbaa !29
  %t82 = getelementptr { i64, [4 x i64] }, ptr %t80, i32 0, i32 1
  %t83 = getelementptr { %"compiler/source:Span", ptr, i32 }, ptr %t82, i32 0, i32 2
  %t84 = load i32, ptr %t83
  store i32 %t84, ptr %l6, !tbaa !23
  br label %bb16
bb15:
  br label %bb22
bb16:
  %t86 = load ptr, ptr %l0, !tbaa !29
  %t88 = getelementptr %"compiler/needs:walker", ptr %t86, i32 0, i32 0
  %t89 = load ptr, ptr %t88, !tbaa !29
  %t91 = getelementptr %"compiler/check:Checker", ptr %t89, i32 0, i32 1
  %t92 = load ptr, ptr %t91, !tbaa !29
  %t94 = getelementptr %"compiler/generic:Program", ptr %t92, i32 0, i32 1
  %t95 = load ptr, ptr %t94, !tbaa !29
  %t96 = load ptr, ptr %l0, !tbaa !29
  %t98 = getelementptr %"compiler/needs:walker", ptr %t96, i32 0, i32 3
  %t99 = load i64, ptr %t98, !tbaa !24
  %t100 = getelementptr %"compiler/source:Span", ptr %l5, i32 0, i32 1
  %t101 = load i32, ptr %t100, !tbaa !23
  %t105 = call %"compiler/names:Ref" @compiler_2fnames_2ecompiler_2fnames_3aResolver_2eMember(ptr %v0, ptr %t95, i64 %t99, i32 %t101)
  store %"compiler/names:Ref" %t105, ptr %l49
  br label %bb17
bb17:
  %t106 = load %"compiler/names:Ref", ptr %l49
  store %"compiler/names:Ref" %t106, ptr %l7
  %t107 = getelementptr %"compiler/names:Ref", ptr %l7, i32 0, i32 0
  %t108 = load i32, ptr %t107, !range !{i32 0, i32 9}
  %t110 = trunc i64 3 to i32
  %t111 = icmp eq i32 %t108, %t110
  br i1 %t111, label %bb18, label %bb19
bb18:
  %t113 = load ptr, ptr %l0, !tbaa !29
  %t115 = getelementptr %"compiler/needs:walker", ptr %t113, i32 0, i32 0
  %t116 = load ptr, ptr %t115, !tbaa !29
  %t118 = getelementptr %"compiler/check:Checker", ptr %t116, i32 0, i32 1
  %t119 = load ptr, ptr %t118, !tbaa !29
  %t120 = getelementptr %"compiler/names:Ref", ptr %l7, i32 0, i32 1
  %t121 = load i64, ptr %t120, !tbaa !24
  %t122 = load i32, ptr %l6, !tbaa !23
  %t126 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnNamed(ptr %v0, ptr %t119, i64 %t121, i32 %t122)
  store i64 %t126, ptr %l58
  br label %bb20
bb19:
  store i64 -1, ptr %l52, !tbaa !24
  br label %bb21
bb20:
  %t127 = load i64, ptr %l58, !tbaa !24
  store i64 %t127, ptr %l52, !tbaa !24
  br label %bb21
bb21:
  %t128 = load i64, ptr %l52, !tbaa !24
  store i64 %t128, ptr %rv
  br label %ret
bb22:
  %t129 = load ptr, ptr %l1, !tbaa !29
  store ptr %t129, ptr %l59, !tbaa !29
  store i1 false, ptr %l60, !tbaa !21
  %t130 = load ptr, ptr %l59, !tbaa !29
  %t131 = icmp ne ptr %t130, null
  br i1 %t131, label %bb23, label %bb24
bb23:
  %t133 = load ptr, ptr %l59, !tbaa !29
  %t134 = load i64, ptr %t133, !range !{i64 0, i64 30}
  %t136 = icmp eq i64 %t134, 13
  store i1 %t136, ptr %l60, !tbaa !21
  br label %bb24
bb24:
  %t137 = load i1, ptr %l60, !tbaa !21
  br i1 %t137, label %bb25, label %bb26
bb25:
  %t138 = load ptr, ptr %l1, !tbaa !29
  %t140 = getelementptr { i64, [4 x i64] }, ptr %t138, i32 0, i32 1
  %t141 = getelementptr { %"compiler/source:Span", ptr, { i64, ptr } }, ptr %t140, i32 0, i32 1
  %t142 = load ptr, ptr %t141
  store ptr %t142, ptr %l8, !tbaa !29
  br label %bb27
bb26:
  br label %bb29
bb27:
  %t144 = load ptr, ptr %l0, !tbaa !29
  %t145 = load ptr, ptr %l8, !tbaa !29
  %t148 = call i64 @compiler_2fneeds_2ecompiler_2fneeds_3awalker_2ecalled(ptr %v0, ptr %v1, ptr %t144, ptr %t145)
  store i64 %t148, ptr %l67
  br label %bb28
bb28:
  %t149 = load i64, ptr %l67, !tbaa !24
  store i64 %t149, ptr %rv
  br label %ret
bb29:
  br i1 true, label %bb30, label %bb31
bb30:
  br label %bb32
bb31:
  br label %bb33
bb32:
  store i64 -1, ptr %rv
  br label %ret
bb33:
  call void @__olang_check_failed(ptr @olang_loc_905d4a0f3532f957_2b4330c2b114d9a3)
  unreachable
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local void @compiler_2fneeds_2ecompiler_2fneeds_3awalker_2ecatches(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca { i64, ptr }
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca ptr
  %l6 = alloca { i64, ptr }
  %l7 = alloca i64
  %l8 = alloca i64
  %l17 = alloca { i64, ptr }
  %l31 = alloca { i64, ptr }
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
  br label %bb14
bb3:
  br label %bb4
bb4:
  %t15 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t15, ptr %l17, !tbaa !27
  %t16 = load i64, ptr %l3, !tbaa !24
  %t18 = getelementptr { i64, ptr }, ptr %l17, i32 0, i32 1
  %t19 = load ptr, ptr %t18, !tbaa !27
  %t20 = getelementptr ptr, ptr %t19, i64 %t16
  %t21 = load ptr, ptr %t20, !tbaa !39
  store ptr %t21, ptr %l5, !tbaa !29
  %t23 = load ptr, ptr %l0, !tbaa !29
  %t24 = load ptr, ptr %l5, !tbaa !29
  %t26 = getelementptr %"compiler/ast:Catch", ptr %t24, i32 0, i32 2
  %t27 = load { i64, ptr }, ptr %t26, !tbaa !27
  call void @compiler_2fneeds_2ecompiler_2fneeds_3awalker_2estmts(ptr %v0, ptr %v1, ptr %t23, { i64, ptr } %t27)
  br label %bb5
bb5:
  %t30 = load ptr, ptr %l5, !tbaa !29
  %t32 = getelementptr %"compiler/ast:Catch", ptr %t30, i32 0, i32 3
  %t33 = load { i64, ptr }, ptr %t32, !tbaa !27
  store { i64, ptr } %t33, ptr %l6, !tbaa !27
  store i64 0, ptr %l7, !tbaa !24
  %t35 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t37 = extractvalue { i64, ptr } %t35, 0
  store i64 %t37, ptr %l8, !tbaa !24
  br label %bb6
bb6:
  %t39 = load i64, ptr %l7, !tbaa !24
  %t40 = load i64, ptr %l8, !tbaa !24
  %t43 = icmp slt i64 %t39, %t40
  %t45 = xor i1 %t43, true
  br i1 %t45, label %bb7, label %bb8
bb7:
  br label %bb12
bb8:
  br label %bb9
bb9:
  %t47 = load { i64, ptr }, ptr %l6, !tbaa !27
  store { i64, ptr } %t47, ptr %l31, !tbaa !27
  %t48 = load i64, ptr %l7, !tbaa !24
  %t50 = getelementptr { i64, ptr }, ptr %l31, i32 0, i32 1
  %t51 = load ptr, ptr %t50, !tbaa !27
  %t52 = getelementptr ptr, ptr %t51, i64 %t48
  %t53 = load ptr, ptr %t52, !tbaa !39
  %t55 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2fneeds_2ecompiler_2fneeds_3awalker_2eexpr(ptr %v0, ptr %v1, ptr %t55, ptr %t53)
  br label %bb10
bb10:
  br label %bb11
bb11:
  %t60 = load i64, ptr %l7, !tbaa !24
  %t62 = add i64 %t60, 1
  store i64 %t62, ptr %l7, !tbaa !24
  br label %bb6
bb12:
  br label %bb13
bb13:
  %t64 = load i64, ptr %l3, !tbaa !24
  %t66 = add i64 %t64, 1
  store i64 %t66, ptr %l3, !tbaa !24
  br label %bb1
bb14:
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2fneeds_2ecompiler_2fneeds_3awalker_2edecl(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i64
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca { i64, ptr }
  %l11 = alloca i64
  %l12 = alloca i64
  %l20 = alloca i64
  %l23 = alloca i64
  %l43 = alloca { i64, ptr }
  %l51 = alloca i1
  %l59 = alloca { i64, ptr }
  %l63 = alloca i64
  %l69 = alloca { i64, ptr }
  %l75 = alloca { i64, ptr }
  %l78 = alloca i64
  %l84 = alloca { i64, ptr }
  %l98 = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store i64 0, ptr %l2, !tbaa !24
  %t1 = load ptr, ptr %l1, !tbaa !29
  %t3 = getelementptr %"compiler/ast:VarDecl", ptr %t1, i32 0, i32 0
  %t4 = load { i64, ptr }, ptr %t3, !tbaa !27
  %t6 = extractvalue { i64, ptr } %t4, 0
  store i64 %t6, ptr %l3, !tbaa !24
  store i64 1, ptr %l4, !tbaa !24
  %t8 = load i64, ptr %l3, !tbaa !24
  %t9 = load i64, ptr %l2, !tbaa !24
  %t12 = icmp sgt i64 %t8, %t9
  br i1 %t12, label %bb1, label %bb2
bb1:
  %t14 = load i64, ptr %l4, !tbaa !24
  %t16 = icmp sgt i64 %t14, 0
  br i1 %t16, label %bb3, label %bb4
bb2:
  store i64 0, ptr %l20, !tbaa !24
  br label %bb6
bb3:
  %t18 = load i64, ptr %l3, !tbaa !24
  %t19 = load i64, ptr %l2, !tbaa !24
  %t22 = sub i64 %t18, %t19
  %t23 = load i64, ptr %l4, !tbaa !24
  %t26 = add i64 %t22, %t23
  %t28 = sub i64 %t26, 1
  %t29 = load i64, ptr %l4, !tbaa !24
  %t32 = sdiv i64 %t28, %t29
  store i64 %t32, ptr %l23, !tbaa !24
  br label %bb5
bb4:
  store i64 0, ptr %l23, !tbaa !24
  br label %bb5
bb5:
  %t34 = load i64, ptr %l23, !tbaa !24
  store i64 %t34, ptr %l20, !tbaa !24
  br label %bb6
bb6:
  %t35 = load i64, ptr %l20, !tbaa !24
  store i64 %t35, ptr %l5, !tbaa !24
  store i64 0, ptr %l6, !tbaa !24
  br label %bb7
bb7:
  %t36 = load i64, ptr %l6, !tbaa !24
  %t37 = load i64, ptr %l5, !tbaa !24
  %t40 = icmp slt i64 %t36, %t37
  %t42 = xor i1 %t40, true
  br i1 %t42, label %bb8, label %bb9
bb8:
  br label %bb29
bb9:
  br label %bb10
bb10:
  %t44 = load i64, ptr %l2, !tbaa !24
  %t45 = load i64, ptr %l6, !tbaa !24
  %t46 = load i64, ptr %l4, !tbaa !24
  %t49 = mul i64 %t45, %t46
  %t52 = add i64 %t44, %t49
  store i64 %t52, ptr %l7, !tbaa !24
  %t54 = load ptr, ptr %l0, !tbaa !29
  %t55 = load ptr, ptr %l1, !tbaa !29
  %t57 = getelementptr %"compiler/ast:VarDecl", ptr %t55, i32 0, i32 0
  %t58 = load { i64, ptr }, ptr %t57, !tbaa !27
  store { i64, ptr } %t58, ptr %l43, !tbaa !27
  %t59 = load i64, ptr %l7, !tbaa !24
  %t61 = getelementptr { i64, ptr }, ptr %l43, i32 0, i32 1
  %t62 = load ptr, ptr %t61, !tbaa !27
  %t63 = getelementptr i32, ptr %t62, i64 %t59
  %t64 = load i32, ptr %t63, !tbaa !33
  %t65 = load ptr, ptr %l1, !tbaa !29
  %t67 = getelementptr %"compiler/ast:VarDecl", ptr %t65, i32 0, i32 2
  %t68 = load ptr, ptr %t67, !tbaa !29
  call void @compiler_2fneeds_2ecompiler_2fneeds_3awalker_2eparam(ptr %v0, ptr %v1, ptr %t54, i32 %t64, ptr %t68)
  br label %bb11
bb11:
  %t72 = load ptr, ptr %l1, !tbaa !29
  %t74 = getelementptr %"compiler/ast:VarDecl", ptr %t72, i32 0, i32 4
  %t75 = load i1, ptr %t74, !tbaa !21
  %t77 = xor i1 %t75, true
  br i1 %t77, label %bb12, label %bb13
bb12:
  store i1 true, ptr %l51, !tbaa !21
  br label %bb14
bb13:
  %t79 = load i64, ptr %l7, !tbaa !24
  %t80 = load ptr, ptr %l1, !tbaa !29
  %t82 = getelementptr %"compiler/ast:VarDecl", ptr %t80, i32 0, i32 3
  %t83 = load { i64, ptr }, ptr %t82, !tbaa !27
  %t85 = extractvalue { i64, ptr } %t83, 0
  %t88 = icmp sge i64 %t79, %t85
  store i1 %t88, ptr %l51, !tbaa !21
  br label %bb14
bb14:
  %t90 = load i1, ptr %l51, !tbaa !21
  br i1 %t90, label %bb15, label %bb16
bb15:
  br label %bb28
bb16:
  br label %bb17
bb17:
  %t91 = load ptr, ptr %l0, !tbaa !29
  %t92 = load ptr, ptr %l1, !tbaa !29
  %t94 = getelementptr %"compiler/ast:VarDecl", ptr %t92, i32 0, i32 3
  %t95 = load { i64, ptr }, ptr %t94, !tbaa !27
  store { i64, ptr } %t95, ptr %l59, !tbaa !27
  %t96 = load i64, ptr %l7, !tbaa !24
  %t98 = getelementptr { i64, ptr }, ptr %l59, i32 0, i32 1
  %t99 = load ptr, ptr %t98, !tbaa !27
  %t100 = getelementptr ptr, ptr %t99, i64 %t96
  %t101 = load ptr, ptr %t100, !tbaa !39
  %t105 = call i64 @compiler_2fneeds_2ecompiler_2fneeds_3awalker_2evalOf(ptr %v0, ptr %v1, ptr %t91, ptr %t101)
  store i64 %t105, ptr %l63
  br label %bb18
bb18:
  %t106 = load i64, ptr %l63, !tbaa !24
  store i64 %t106, ptr %l8, !tbaa !24
  %t107 = load i64, ptr %l8, !tbaa !24
  %t109 = icmp sge i64 %t107, 0
  br i1 %t109, label %bb19, label %bb20
bb19:
  %t111 = load ptr, ptr %l0, !tbaa !29
  %t113 = getelementptr %"compiler/needs:walker", ptr %t111, i32 0, i32 5
  %t114 = load ptr, ptr %l1, !tbaa !29
  %t116 = getelementptr %"compiler/ast:VarDecl", ptr %t114, i32 0, i32 0
  %t117 = load { i64, ptr }, ptr %t116, !tbaa !27
  store { i64, ptr } %t117, ptr %l69, !tbaa !27
  %t118 = load i64, ptr %l7, !tbaa !24
  %t120 = getelementptr { i64, ptr }, ptr %l69, i32 0, i32 1
  %t121 = load ptr, ptr %t120, !tbaa !27
  %t122 = getelementptr i32, ptr %t121, i64 %t118
  %t123 = load i32, ptr %t122, !tbaa !33
  %t124 = load i64, ptr %l8, !tbaa !24
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fsource_3aNameId_2c_20I64_3e_H862756c16d115e5c03a79726209f69fa(ptr %v0, ptr %t113, i32 %t123, i64 %t124)
  br label %bb21
bb20:
  br label %bb22
bb21:
  br label %bb22
bb22:
  %t128 = load ptr, ptr %l0, !tbaa !29
  %t129 = load ptr, ptr %l1, !tbaa !29
  %t131 = getelementptr %"compiler/ast:VarDecl", ptr %t129, i32 0, i32 3
  %t132 = load { i64, ptr }, ptr %t131, !tbaa !27
  store { i64, ptr } %t132, ptr %l75, !tbaa !27
  %t133 = load i64, ptr %l7, !tbaa !24
  %t135 = getelementptr { i64, ptr }, ptr %l75, i32 0, i32 1
  %t136 = load ptr, ptr %t135, !tbaa !27
  %t137 = getelementptr ptr, ptr %t136, i64 %t133
  %t138 = load ptr, ptr %t137, !tbaa !39
  %t141 = call i64 @compiler_2fneeds_2ecompiler_2fneeds_3awalker_2eelemsOf(ptr %v0, ptr %v1, ptr %t128, ptr %t138)
  store i64 %t141, ptr %l78
  br label %bb23
bb23:
  %t142 = load i64, ptr %l78, !tbaa !24
  store i64 %t142, ptr %l9, !tbaa !24
  %t143 = load i64, ptr %l9, !tbaa !24
  %t145 = icmp sge i64 %t143, 0
  br i1 %t145, label %bb24, label %bb25
bb24:
  %t147 = load ptr, ptr %l0, !tbaa !29
  %t149 = getelementptr %"compiler/needs:walker", ptr %t147, i32 0, i32 6
  %t150 = load ptr, ptr %l1, !tbaa !29
  %t152 = getelementptr %"compiler/ast:VarDecl", ptr %t150, i32 0, i32 0
  %t153 = load { i64, ptr }, ptr %t152, !tbaa !27
  store { i64, ptr } %t153, ptr %l84, !tbaa !27
  %t154 = load i64, ptr %l7, !tbaa !24
  %t156 = getelementptr { i64, ptr }, ptr %l84, i32 0, i32 1
  %t157 = load ptr, ptr %t156, !tbaa !27
  %t158 = getelementptr i32, ptr %t157, i64 %t154
  %t159 = load i32, ptr %t158, !tbaa !33
  %t160 = load i64, ptr %l9, !tbaa !24
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fsource_3aNameId_2c_20I64_3e_H862756c16d115e5c03a79726209f69fa(ptr %v0, ptr %t149, i32 %t159, i64 %t160)
  br label %bb26
bb25:
  br label %bb27
bb26:
  br label %bb27
bb27:
  br label %bb28
bb28:
  %t164 = load i64, ptr %l6, !tbaa !24
  %t166 = add i64 %t164, 1
  store i64 %t166, ptr %l6, !tbaa !24
  br label %bb7
bb29:
  %t168 = load ptr, ptr %l1, !tbaa !29
  %t170 = getelementptr %"compiler/ast:VarDecl", ptr %t168, i32 0, i32 3
  %t171 = load { i64, ptr }, ptr %t170, !tbaa !27
  store { i64, ptr } %t171, ptr %l10, !tbaa !27
  store i64 0, ptr %l11, !tbaa !24
  %t173 = load { i64, ptr }, ptr %l10, !tbaa !27
  %t175 = extractvalue { i64, ptr } %t173, 0
  store i64 %t175, ptr %l12, !tbaa !24
  br label %bb30
bb30:
  %t177 = load i64, ptr %l11, !tbaa !24
  %t178 = load i64, ptr %l12, !tbaa !24
  %t181 = icmp slt i64 %t177, %t178
  %t183 = xor i1 %t181, true
  br i1 %t183, label %bb31, label %bb32
bb31:
  br label %bb36
bb32:
  br label %bb33
bb33:
  %t185 = load { i64, ptr }, ptr %l10, !tbaa !27
  store { i64, ptr } %t185, ptr %l98, !tbaa !27
  %t186 = load i64, ptr %l11, !tbaa !24
  %t188 = getelementptr { i64, ptr }, ptr %l98, i32 0, i32 1
  %t189 = load ptr, ptr %t188, !tbaa !27
  %t190 = getelementptr ptr, ptr %t189, i64 %t186
  %t191 = load ptr, ptr %t190, !tbaa !39
  %t193 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2fneeds_2ecompiler_2fneeds_3awalker_2eexpr(ptr %v0, ptr %v1, ptr %t193, ptr %t191)
  br label %bb34
bb34:
  br label %bb35
bb35:
  %t198 = load i64, ptr %l11, !tbaa !24
  %t200 = add i64 %t198, 1
  store i64 %t200, ptr %l11, !tbaa !24
  br label %bb30
bb36:
  br label %ret
ret:
  ret void
}

define dso_local i64 @compiler_2fneeds_2ecompiler_2fneeds_3awalker_2eelemOf(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca { i64, ptr }
  %l3 = alloca { i64, ptr }
  %l4 = alloca { i64, ptr }
  %l5 = alloca ptr
  %l6 = alloca ptr
  %l10 = alloca ptr
  %l11 = alloca i1
  %l23 = alloca { i64, ptr }
  %l28 = alloca { i64, ptr }
  %l32 = alloca i1
  %l34 = alloca i1
  %l36 = alloca i1
  %l38 = alloca i1
  %l42 = alloca { i64, ptr }
  %l45 = alloca i64
  %l46 = alloca ptr
  %l47 = alloca i1
  %l55 = alloca i64
  %l56 = alloca ptr
  %l57 = alloca i1
  %l64 = alloca i64
  %s2 = alloca %olang.scope
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
  store i64 -1, ptr %rv
  br label %ret
bb2:
  br label %bb3
bb3:
  %t6 = load ptr, ptr %l1, !tbaa !29
  store ptr %t6, ptr %l10, !tbaa !29
  store i1 false, ptr %l11, !tbaa !21
  %t7 = load ptr, ptr %l10, !tbaa !29
  %t8 = icmp ne ptr %t7, null
  br i1 %t8, label %bb4, label %bb5
bb4:
  %t10 = load ptr, ptr %l10, !tbaa !29
  %t11 = load i64, ptr %t10, !range !{i64 0, i64 8}
  %t13 = icmp eq i64 %t11, 0
  store i1 %t13, ptr %l11, !tbaa !21
  br label %bb5
bb5:
  %t14 = load i1, ptr %l11, !tbaa !21
  br i1 %t14, label %bb6, label %bb7
bb6:
  %t15 = load ptr, ptr %l1, !tbaa !29
  %t17 = getelementptr { i64, [5 x i64] }, ptr %t15, i32 0, i32 1
  %t18 = getelementptr { %"compiler/source:Span", { i64, ptr }, { i64, ptr } }, ptr %t17, i32 0, i32 1
  %t19 = load { i64, ptr }, ptr %t18
  store { i64, ptr } %t19, ptr %l2, !tbaa !27
  %t21 = load ptr, ptr %l1, !tbaa !29
  %t23 = getelementptr { i64, [5 x i64] }, ptr %t21, i32 0, i32 1
  %t24 = getelementptr { %"compiler/source:Span", { i64, ptr }, { i64, ptr } }, ptr %t23, i32 0, i32 2
  %t25 = load { i64, ptr }, ptr %t24
  store { i64, ptr } %t25, ptr %l3, !tbaa !27
  br label %bb8
bb7:
  br label %bb22
bb8:
  store %olang.scope zeroinitializer, ptr %s2
  %t27 = load ptr, ptr %l0, !tbaa !29
  %t29 = getelementptr %"compiler/needs:walker", ptr %t27, i32 0, i32 0
  %t30 = load ptr, ptr %t29, !tbaa !29
  %t32 = getelementptr %"compiler/check:Checker", ptr %t30, i32 0, i32 1
  %t33 = load ptr, ptr %t32, !tbaa !29
  %t35 = getelementptr %"compiler/generic:Program", ptr %t33, i32 0, i32 0
  %t36 = load ptr, ptr %t35, !tbaa !29
  %t38 = getelementptr %"compiler/load:Loader", ptr %t36, i32 0, i32 3
  %t39 = load ptr, ptr %t38, !tbaa !29
  %t40 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t40, ptr %l23, !tbaa !27
  %t41 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t43 = extractvalue { i64, ptr } %t41, 0
  %t45 = sub i64 %t43, 1
  %t47 = getelementptr { i64, ptr }, ptr %l23, i32 0, i32 1
  %t48 = load ptr, ptr %t47, !tbaa !27
  %t49 = getelementptr i32, ptr %t48, i64 %t45
  %t50 = load i32, ptr %t49, !tbaa !33
  %t53 = call { i64, ptr } @compiler_2fsource_2ecompiler_2fsource_3aNames_2eText(ptr %v0, ptr %v0, ptr %t39, i32 %t50)
  store { i64, ptr } %t53, ptr %l28
  br label %bb9
bb9:
  %t54 = load { i64, ptr }, ptr %l28, !tbaa !27
  store { i64, ptr } %t54, ptr %l4, !tbaa !27
  %t55 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t57 = extractvalue { i64, ptr } %t55, 0
  %t59 = icmp ne i64 %t57, 1
  br i1 %t59, label %bb10, label %bb11
bb10:
  store i1 true, ptr %l32, !tbaa !21
  br label %bb17
bb11:
  %t61 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t63 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s2, { i64, ptr } %t61, { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d20, i32 0, i32 1) })
  store i1 %t63, ptr %l34
  br label %bb12
bb12:
  %t64 = load i1, ptr %l34, !tbaa !21
  %t65 = xor i1 %t64, true
  br i1 %t65, label %bb13, label %bb14
bb13:
  %t67 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t69 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s2, { i64, ptr } %t67, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d21, i32 0, i32 1) })
  store i1 %t69, ptr %l38
  br label %bb15
bb14:
  store i1 false, ptr %l36, !tbaa !21
  br label %bb16
bb15:
  %t70 = load i1, ptr %l38, !tbaa !21
  %t71 = xor i1 %t70, true
  store i1 %t71, ptr %l36, !tbaa !21
  br label %bb16
bb16:
  %t73 = load i1, ptr %l36, !tbaa !21
  store i1 %t73, ptr %l32, !tbaa !21
  br label %bb17
bb17:
  %t74 = load i1, ptr %l32, !tbaa !21
  br i1 %t74, label %bb18, label %bb19
bb18:
  call void @__olang_scope_close(ptr %s2)
  store i64 -1, ptr %rv
  br label %ret
bb19:
  br label %bb20
bb20:
  %t76 = load ptr, ptr %l0, !tbaa !29
  %t77 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t77, ptr %l42, !tbaa !27
  %t78 = getelementptr { i64, ptr }, ptr %l42, i32 0, i32 1
  %t79 = load ptr, ptr %t78, !tbaa !27
  %t80 = getelementptr ptr, ptr %t79, i64 0
  %t81 = load ptr, ptr %t80, !tbaa !39
  %t85 = call i64 @compiler_2fneeds_2ecompiler_2fneeds_3awalker_2evarOf(ptr %v0, ptr %v1, ptr %t76, ptr %t81)
  store i64 %t85, ptr %l45
  br label %bb21
bb21:
  call void @__olang_scope_close(ptr %s2)
  %t86 = load i64, ptr %l45, !tbaa !24
  store i64 %t86, ptr %rv
  br label %ret
bb22:
  %t87 = load ptr, ptr %l1, !tbaa !29
  store ptr %t87, ptr %l46, !tbaa !29
  store i1 false, ptr %l47, !tbaa !21
  %t88 = load ptr, ptr %l46, !tbaa !29
  %t89 = icmp ne ptr %t88, null
  br i1 %t89, label %bb23, label %bb24
bb23:
  %t91 = load ptr, ptr %l46, !tbaa !29
  %t92 = load i64, ptr %t91, !range !{i64 0, i64 8}
  %t94 = icmp eq i64 %t92, 3
  store i1 %t94, ptr %l47, !tbaa !21
  br label %bb24
bb24:
  %t95 = load i1, ptr %l47, !tbaa !21
  br i1 %t95, label %bb25, label %bb26
bb25:
  %t96 = load ptr, ptr %l1, !tbaa !29
  %t98 = getelementptr { i64, [5 x i64] }, ptr %t96, i32 0, i32 1
  %t99 = getelementptr { %"compiler/source:Span", ptr, i1, i1 }, ptr %t98, i32 0, i32 1
  %t100 = load ptr, ptr %t99
  store ptr %t100, ptr %l5, !tbaa !29
  br label %bb27
bb26:
  br label %bb29
bb27:
  %t102 = load ptr, ptr %l0, !tbaa !29
  %t103 = load ptr, ptr %l5, !tbaa !29
  %t107 = call i64 @compiler_2fneeds_2ecompiler_2fneeds_3awalker_2eelemOf(ptr %v0, ptr %v1, ptr %t102, ptr %t103)
  store i64 %t107, ptr %l55
  br label %bb28
bb28:
  %t108 = load i64, ptr %l55, !tbaa !24
  store i64 %t108, ptr %rv
  br label %ret
bb29:
  %t109 = load ptr, ptr %l1, !tbaa !29
  store ptr %t109, ptr %l56, !tbaa !29
  store i1 false, ptr %l57, !tbaa !21
  %t110 = load ptr, ptr %l56, !tbaa !29
  %t111 = icmp ne ptr %t110, null
  br i1 %t111, label %bb30, label %bb31
bb30:
  %t113 = load ptr, ptr %l56, !tbaa !29
  %t114 = load i64, ptr %t113, !range !{i64 0, i64 8}
  %t116 = icmp eq i64 %t114, 4
  store i1 %t116, ptr %l57, !tbaa !21
  br label %bb31
bb31:
  %t117 = load i1, ptr %l57, !tbaa !21
  br i1 %t117, label %bb32, label %bb33
bb32:
  %t118 = load ptr, ptr %l1, !tbaa !29
  %t120 = getelementptr { i64, [5 x i64] }, ptr %t118, i32 0, i32 1
  %t121 = getelementptr { %"compiler/source:Span", ptr, i1 }, ptr %t120, i32 0, i32 1
  %t122 = load ptr, ptr %t121
  store ptr %t122, ptr %l6, !tbaa !29
  br label %bb34
bb33:
  br label %bb36
bb34:
  %t124 = load ptr, ptr %l0, !tbaa !29
  %t125 = load ptr, ptr %l6, !tbaa !29
  %t128 = call i64 @compiler_2fneeds_2ecompiler_2fneeds_3awalker_2eelemOf(ptr %v0, ptr %v1, ptr %t124, ptr %t125)
  store i64 %t128, ptr %l64
  br label %bb35
bb35:
  %t129 = load i64, ptr %l64, !tbaa !24
  store i64 %t129, ptr %rv
  br label %ret
bb36:
  br i1 true, label %bb37, label %bb38
bb37:
  br label %bb39
bb38:
  br label %bb40
bb39:
  store i64 -1, ptr %rv
  br label %ret
bb40:
  call void @__olang_check_failed(ptr @olang_loc_4d743041a8b20a6_9c6741a6974fda52)
  unreachable
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local i64 @compiler_2fneeds_2ecompiler_2fneeds_3awalker_2eelemsOf(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i32
  %l3 = alloca ptr
  %l4 = alloca ptr
  %l5 = alloca i1
  %l10 = alloca i64
  %l14 = alloca i64
  %l15 = alloca i32
  %l16 = alloca ptr
  %l17 = alloca i1
  %l24 = alloca i64
  %rv = alloca i64
  store ptr %a0, ptr %l0
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
  %t8 = icmp eq i64 %t6, 0
  store i1 %t8, ptr %l5, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l5, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  %t10 = load ptr, ptr %l1, !tbaa !29
  %t12 = getelementptr { i64, [4 x i64] }, ptr %t10, i32 0, i32 1
  %t13 = getelementptr { %"compiler/source:Span", i32 }, ptr %t12, i32 0, i32 1
  %t14 = load i32, ptr %t13
  store i32 %t14, ptr %l2, !tbaa !23
  br label %bb5
bb4:
  br label %bb10
bb5:
  %t16 = load ptr, ptr %l0, !tbaa !29
  %t18 = getelementptr %"compiler/needs:walker", ptr %t16, i32 0, i32 6
  %t19 = load i32, ptr %l2, !tbaa !23
  %t22 = call { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fsource_3aNameId_2c_20I64_3e_H2a27ec2ae5362b2f0ac6d54f3e063c70(ptr %v0, ptr %t18, i32 %t19)
  %t23 = extractvalue { i32, i64 } %t22, 1
  %t24 = extractvalue { i32, i64 } %t22, 0
  store i32 %t24, ptr %l15
  %t25 = icmp ne i32 %t24, 0
  br i1 %t25, label %bb7, label %ok.26, !prof !99
ok.26:
  store i64 %t23, ptr %l14
  br label %bb6
bb6:
  %t27 = load i64, ptr %l14, !tbaa !24
  store i64 %t27, ptr %l10, !tbaa !24
  br label %bb9
bb7:
  br label %bb8
bb8:
  store i64 -1, ptr %l10, !tbaa !24
  br label %bb9
bb9:
  %t28 = load i64, ptr %l10, !tbaa !24
  store i64 %t28, ptr %rv
  br label %ret
bb10:
  %t29 = load ptr, ptr %l1, !tbaa !29
  store ptr %t29, ptr %l16, !tbaa !29
  store i1 false, ptr %l17, !tbaa !21
  %t30 = load ptr, ptr %l16, !tbaa !29
  %t31 = icmp ne ptr %t30, null
  br i1 %t31, label %bb11, label %bb12
bb11:
  %t33 = load ptr, ptr %l16, !tbaa !29
  %t34 = load i64, ptr %t33, !range !{i64 0, i64 30}
  %t36 = icmp eq i64 %t34, 2
  store i1 %t36, ptr %l17, !tbaa !21
  br label %bb12
bb12:
  %t37 = load i1, ptr %l17, !tbaa !21
  br i1 %t37, label %bb13, label %bb14
bb13:
  %t38 = load ptr, ptr %l1, !tbaa !29
  %t40 = getelementptr { i64, [4 x i64] }, ptr %t38, i32 0, i32 1
  %t41 = getelementptr { %"compiler/source:Span", ptr }, ptr %t40, i32 0, i32 1
  %t42 = load ptr, ptr %t41
  store ptr %t42, ptr %l3, !tbaa !29
  br label %bb15
bb14:
  br label %bb17
bb15:
  %t44 = load ptr, ptr %l0, !tbaa !29
  %t45 = load ptr, ptr %l3, !tbaa !29
  %t48 = call i64 @compiler_2fneeds_2ecompiler_2fneeds_3awalker_2eelemsOf(ptr %v0, ptr %v1, ptr %t44, ptr %t45)
  store i64 %t48, ptr %l24
  br label %bb16
bb16:
  %t49 = load i64, ptr %l24, !tbaa !24
  store i64 %t49, ptr %rv
  br label %ret
bb17:
  br i1 true, label %bb18, label %bb19
bb18:
  br label %bb20
bb19:
  br label %bb21
bb20:
  store i64 -1, ptr %rv
  br label %ret
bb21:
  call void @__olang_check_failed(ptr @olang_loc_854f045945ef731f_8132536c615b0d13)
  unreachable
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local void @compiler_2fneeds_2ecompiler_2fneeds_3awalker_2eexpr(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i32
  %l3 = alloca ptr
  %l4 = alloca i32
  %l5 = alloca ptr
  %l6 = alloca ptr
  %l7 = alloca ptr
  %l8 = alloca ptr
  %l9 = alloca ptr
  %l10 = alloca { i64, ptr }
  %l11 = alloca i64
  %l12 = alloca i64
  %l13 = alloca ptr
  %l14 = alloca ptr
  %l15 = alloca { i64, ptr }
  %l16 = alloca ptr
  %l17 = alloca i32
  %l18 = alloca ptr
  %l19 = alloca { i64, ptr }
  %l20 = alloca { i64, ptr }
  %l21 = alloca i64
  %l22 = alloca i64
  %l24 = alloca ptr
  %l25 = alloca ptr
  %l26 = alloca ptr
  %l29 = alloca ptr
  %l30 = alloca i1
  %l39 = alloca ptr
  %l43 = alloca i64
  %l47 = alloca ptr
  %l48 = alloca i1
  %l61 = alloca ptr
  %l62 = alloca i1
  %l69 = alloca ptr
  %l73 = alloca i64
  %l80 = alloca ptr
  %l81 = alloca i1
  %l94 = alloca { i64, ptr }
  %l97 = alloca ptr
  %l101 = alloca i64
  %l107 = alloca ptr
  %l108 = alloca i1
  %l118 = alloca ptr
  %l119 = alloca i1
  %l126 = alloca ptr
  %l130 = alloca i64
  %l137 = alloca { i64, ptr }
  %l143 = alloca ptr
  %l144 = alloca i1
  %l151 = alloca ptr
  %l155 = alloca i64
  %l166 = alloca { i64, ptr }
  %l174 = alloca ptr
  %l175 = alloca i1
  %l184 = alloca ptr
  %l188 = alloca i64
  %s3 = alloca %olang.scope
  %s5 = alloca %olang.scope
  %s8 = alloca %olang.scope
  %s11 = alloca %olang.scope
  %s13 = alloca %olang.scope
  %s17 = alloca %olang.scope
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
  store ptr %t5, ptr %l29, !tbaa !29
  store i1 false, ptr %l30, !tbaa !21
  %t6 = load ptr, ptr %l29, !tbaa !29
  %t7 = icmp ne ptr %t6, null
  br i1 %t7, label %bb4, label %bb5
bb4:
  %t9 = load ptr, ptr %l29, !tbaa !29
  %t10 = load i64, ptr %t9, !range !{i64 0, i64 30}
  %t12 = icmp eq i64 %t10, 3
  store i1 %t12, ptr %l30, !tbaa !21
  br label %bb5
bb5:
  %t13 = load i1, ptr %l30, !tbaa !21
  br i1 %t13, label %bb6, label %bb7
bb6:
  %t14 = load ptr, ptr %l1, !tbaa !29
  %t16 = getelementptr { i64, [4 x i64] }, ptr %t14, i32 0, i32 1
  %t17 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t16, i32 0, i32 1
  %t18 = load i32, ptr %t17, !range !{i32 0, i32 114}
  store i32 %t18, ptr %l2
  %t20 = load ptr, ptr %l1, !tbaa !29
  %t22 = getelementptr { i64, [4 x i64] }, ptr %t20, i32 0, i32 1
  %t23 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t22, i32 0, i32 2
  %t24 = load ptr, ptr %t23
  store ptr %t24, ptr %l3, !tbaa !29
  br label %bb8
bb7:
  br label %bb15
bb8:
  %t26 = load i32, ptr %l2, !range !{i32 0, i32 114}
  %t28 = trunc i64 69 to i32
  %t29 = icmp eq i32 %t26, %t28
  br i1 %t29, label %bb9, label %bb10
bb9:
  store %olang.scope zeroinitializer, ptr %s3
  %t31 = load ptr, ptr %l0, !tbaa !29
  store ptr %t31, ptr %l39, !tbaa !29
  %t32 = load ptr, ptr %l0, !tbaa !29
  %t33 = load ptr, ptr %l3, !tbaa !29
  %t37 = call i64 @compiler_2fneeds_2ecompiler_2fneeds_3awalker_2evalOf(ptr %v0, ptr %v1, ptr %t32, ptr %t33)
  store i64 %t37, ptr %l43
  br label %bb11
bb10:
  br label %bb13
bb11:
  %t38 = load ptr, ptr %l39, !tbaa !29
  %t39 = load i64, ptr %l43, !tbaa !24
  call void @compiler_2fneeds_2ecompiler_2fneeds_3awalker_2eneed(ptr %v0, ptr %s3, ptr %t38, i64 %t39, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d22, i32 0, i32 1) })
  br label %bb12
bb12:
  call void @__olang_scope_close(ptr %s3)
  br label %bb13
bb13:
  %t40 = load ptr, ptr %l0, !tbaa !29
  %t41 = load ptr, ptr %l3, !tbaa !29
  call void @compiler_2fneeds_2ecompiler_2fneeds_3awalker_2eexpr(ptr %v0, ptr %v1, ptr %t40, ptr %t41)
  br label %bb14
bb14:
  br label %bb97
bb15:
  %t45 = load ptr, ptr %l1, !tbaa !29
  store ptr %t45, ptr %l47, !tbaa !29
  store i1 false, ptr %l48, !tbaa !21
  %t46 = load ptr, ptr %l47, !tbaa !29
  %t47 = icmp ne ptr %t46, null
  br i1 %t47, label %bb16, label %bb17
bb16:
  %t49 = load ptr, ptr %l47, !tbaa !29
  %t50 = load i64, ptr %t49, !range !{i64 0, i64 30}
  %t52 = icmp eq i64 %t50, 5
  store i1 %t52, ptr %l48, !tbaa !21
  br label %bb17
bb17:
  %t53 = load i1, ptr %l48, !tbaa !21
  br i1 %t53, label %bb18, label %bb19
bb18:
  %t54 = load ptr, ptr %l1, !tbaa !29
  %t56 = getelementptr { i64, [4 x i64] }, ptr %t54, i32 0, i32 1
  %t57 = getelementptr { %"compiler/source:Span", i32, ptr, ptr }, ptr %t56, i32 0, i32 1
  %t58 = load i32, ptr %t57, !range !{i32 0, i32 114}
  store i32 %t58, ptr %l4
  %t60 = load ptr, ptr %l1, !tbaa !29
  %t62 = getelementptr { i64, [4 x i64] }, ptr %t60, i32 0, i32 1
  %t63 = getelementptr { %"compiler/source:Span", i32, ptr, ptr }, ptr %t62, i32 0, i32 2
  %t64 = load ptr, ptr %t63
  store ptr %t64, ptr %l5, !tbaa !29
  %t66 = load ptr, ptr %l1, !tbaa !29
  %t68 = getelementptr { i64, [4 x i64] }, ptr %t66, i32 0, i32 1
  %t69 = getelementptr { %"compiler/source:Span", i32, ptr, ptr }, ptr %t68, i32 0, i32 3
  %t70 = load ptr, ptr %t69
  store ptr %t70, ptr %l6, !tbaa !29
  br label %bb20
bb19:
  br label %bb22
bb20:
  %t72 = load ptr, ptr %l0, !tbaa !29
  %t73 = load i32, ptr %l4, !range !{i32 0, i32 114}
  %t74 = load ptr, ptr %l5, !tbaa !29
  %t75 = load ptr, ptr %l6, !tbaa !29
  call void @compiler_2fneeds_2ecompiler_2fneeds_3awalker_2ebinary(ptr %v0, ptr %v1, ptr %v1, ptr %t72, i32 %t73, ptr %t74, ptr %t75)
  br label %bb21
bb21:
  br label %bb97
bb22:
  %t80 = load ptr, ptr %l1, !tbaa !29
  store ptr %t80, ptr %l61, !tbaa !29
  store i1 false, ptr %l62, !tbaa !21
  %t81 = load ptr, ptr %l61, !tbaa !29
  %t82 = icmp ne ptr %t81, null
  br i1 %t82, label %bb23, label %bb24
bb23:
  %t84 = load ptr, ptr %l61, !tbaa !29
  %t85 = load i64, ptr %t84, !range !{i64 0, i64 30}
  %t87 = icmp eq i64 %t85, 6
  store i1 %t87, ptr %l62, !tbaa !21
  br label %bb24
bb24:
  %t88 = load i1, ptr %l62, !tbaa !21
  br i1 %t88, label %bb25, label %bb26
bb25:
  %t89 = load ptr, ptr %l1, !tbaa !29
  %t91 = getelementptr { i64, [4 x i64] }, ptr %t89, i32 0, i32 1
  %t92 = getelementptr { %"compiler/source:Span", ptr, ptr }, ptr %t91, i32 0, i32 1
  %t93 = load ptr, ptr %t92
  store ptr %t93, ptr %l7, !tbaa !29
  %t95 = load ptr, ptr %l1, !tbaa !29
  %t97 = getelementptr { i64, [4 x i64] }, ptr %t95, i32 0, i32 1
  %t98 = getelementptr { %"compiler/source:Span", ptr, ptr }, ptr %t97, i32 0, i32 2
  %t99 = load ptr, ptr %t98
  store ptr %t99, ptr %l8, !tbaa !29
  br label %bb27
bb26:
  br label %bb32
bb27:
  store %olang.scope zeroinitializer, ptr %s5
  %t101 = load ptr, ptr %l0, !tbaa !29
  store ptr %t101, ptr %l69, !tbaa !29
  %t102 = load ptr, ptr %l0, !tbaa !29
  %t103 = load ptr, ptr %l8, !tbaa !29
  %t107 = call i64 @compiler_2fneeds_2ecompiler_2fneeds_3awalker_2evalOf(ptr %v0, ptr %v1, ptr %t102, ptr %t103)
  store i64 %t107, ptr %l73
  br label %bb28
bb28:
  %t108 = load ptr, ptr %l69, !tbaa !29
  %t109 = load i64, ptr %l73, !tbaa !24
  call void @compiler_2fneeds_2ecompiler_2fneeds_3awalker_2eneed(ptr %v0, ptr %s5, ptr %t108, i64 %t109, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d23, i32 0, i32 1) })
  br label %bb29
bb29:
  %t110 = load ptr, ptr %l0, !tbaa !29
  %t111 = load ptr, ptr %l7, !tbaa !29
  call void @compiler_2fneeds_2ecompiler_2fneeds_3awalker_2eexpr(ptr %v0, ptr %v1, ptr %t110, ptr %t111)
  br label %bb30
bb30:
  %t115 = load ptr, ptr %l0, !tbaa !29
  %t116 = load ptr, ptr %l8, !tbaa !29
  call void @compiler_2fneeds_2ecompiler_2fneeds_3awalker_2eexpr(ptr %v0, ptr %v1, ptr %t115, ptr %t116)
  br label %bb31
bb31:
  call void @__olang_scope_close(ptr %s5)
  br label %bb97
bb32:
  %t120 = load ptr, ptr %l1, !tbaa !29
  store ptr %t120, ptr %l80, !tbaa !29
  store i1 false, ptr %l81, !tbaa !21
  %t121 = load ptr, ptr %l80, !tbaa !29
  %t122 = icmp ne ptr %t121, null
  br i1 %t122, label %bb33, label %bb34
bb33:
  %t124 = load ptr, ptr %l80, !tbaa !29
  %t125 = load i64, ptr %t124, !range !{i64 0, i64 30}
  %t127 = icmp eq i64 %t125, 7
  store i1 %t127, ptr %l81, !tbaa !21
  br label %bb34
bb34:
  %t128 = load i1, ptr %l81, !tbaa !21
  br i1 %t128, label %bb35, label %bb36
bb35:
  %t129 = load ptr, ptr %l1, !tbaa !29
  %t131 = getelementptr { i64, [4 x i64] }, ptr %t129, i32 0, i32 1
  %t132 = getelementptr { %"compiler/source:Span", ptr }, ptr %t131, i32 0, i32 1
  %t133 = load ptr, ptr %t132
  store ptr %t133, ptr %l9, !tbaa !29
  br label %bb37
bb36:
  br label %bb47
bb37:
  %t135 = load ptr, ptr %l9, !tbaa !29
  %t137 = getelementptr %"compiler/ast:Chain", ptr %t135, i32 0, i32 1
  %t138 = load { i64, ptr }, ptr %t137, !tbaa !27
  store { i64, ptr } %t138, ptr %l10, !tbaa !27
  store i64 0, ptr %l11, !tbaa !24
  %t140 = load { i64, ptr }, ptr %l10, !tbaa !27
  %t142 = extractvalue { i64, ptr } %t140, 0
  store i64 %t142, ptr %l12, !tbaa !24
  br label %bb38
bb38:
  store %olang.scope zeroinitializer, ptr %s8
  %t144 = load i64, ptr %l11, !tbaa !24
  %t145 = load i64, ptr %l12, !tbaa !24
  %t148 = icmp slt i64 %t144, %t145
  %t150 = xor i1 %t148, true
  br i1 %t150, label %bb39, label %bb40
bb39:
  call void @__olang_scope_close(ptr %s8)
  br label %bb46
bb40:
  br label %bb41
bb41:
  %t152 = load { i64, ptr }, ptr %l10, !tbaa !27
  store { i64, ptr } %t152, ptr %l94, !tbaa !27
  %t153 = load i64, ptr %l11, !tbaa !24
  %t155 = getelementptr { i64, ptr }, ptr %l94, i32 0, i32 1
  %t156 = load ptr, ptr %t155, !tbaa !27
  %t157 = getelementptr ptr, ptr %t156, i64 %t153
  %t158 = load ptr, ptr %t157, !tbaa !39
  store ptr %t158, ptr %l13, !tbaa !29
  %t160 = load ptr, ptr %l0, !tbaa !29
  store ptr %t160, ptr %l97, !tbaa !29
  %t161 = load ptr, ptr %l0, !tbaa !29
  %t162 = load ptr, ptr %l13, !tbaa !29
  %t166 = call i64 @compiler_2fneeds_2ecompiler_2fneeds_3awalker_2evalOf(ptr %v0, ptr %v1, ptr %t161, ptr %t162)
  store i64 %t166, ptr %l101
  br label %bb42
bb42:
  %t167 = load ptr, ptr %l97, !tbaa !29
  %t168 = load i64, ptr %l101, !tbaa !24
  call void @compiler_2fneeds_2ecompiler_2fneeds_3awalker_2eneed(ptr %v0, ptr %s8, ptr %t167, i64 %t168, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d24, i32 0, i32 1) })
  br label %bb43
bb43:
  %t169 = load ptr, ptr %l0, !tbaa !29
  %t170 = load ptr, ptr %l13, !tbaa !29
  call void @compiler_2fneeds_2ecompiler_2fneeds_3awalker_2eexpr(ptr %v0, ptr %v1, ptr %t169, ptr %t170)
  br label %bb44
bb44:
  call void @__olang_scope_close(ptr %s8)
  br label %bb45
bb45:
  %t174 = load i64, ptr %l11, !tbaa !24
  %t176 = add i64 %t174, 1
  store i64 %t176, ptr %l11, !tbaa !24
  br label %bb38
bb46:
  br label %bb97
bb47:
  %t178 = load ptr, ptr %l1, !tbaa !29
  store ptr %t178, ptr %l107, !tbaa !29
  store i1 false, ptr %l108, !tbaa !21
  %t179 = load ptr, ptr %l107, !tbaa !29
  %t180 = icmp ne ptr %t179, null
  br i1 %t180, label %bb48, label %bb49
bb48:
  %t182 = load ptr, ptr %l107, !tbaa !29
  %t183 = load i64, ptr %t182, !range !{i64 0, i64 30}
  %t185 = icmp eq i64 %t183, 12
  store i1 %t185, ptr %l108, !tbaa !21
  br label %bb49
bb49:
  %t186 = load i1, ptr %l108, !tbaa !21
  br i1 %t186, label %bb50, label %bb51
bb50:
  %t187 = load ptr, ptr %l1, !tbaa !29
  %t189 = getelementptr { i64, [4 x i64] }, ptr %t187, i32 0, i32 1
  %t190 = getelementptr { %"compiler/source:Span", ptr, { i64, ptr } }, ptr %t189, i32 0, i32 1
  %t191 = load ptr, ptr %t190
  store ptr %t191, ptr %l14, !tbaa !29
  %t193 = load ptr, ptr %l1, !tbaa !29
  %t195 = getelementptr { i64, [4 x i64] }, ptr %t193, i32 0, i32 1
  %t196 = getelementptr { %"compiler/source:Span", ptr, { i64, ptr } }, ptr %t195, i32 0, i32 2
  %t197 = load { i64, ptr }, ptr %t196
  store { i64, ptr } %t197, ptr %l15, !tbaa !27
  br label %bb52
bb51:
  br label %bb54
bb52:
  %t199 = load ptr, ptr %l0, !tbaa !29
  %t200 = load ptr, ptr %l14, !tbaa !29
  %t201 = load { i64, ptr }, ptr %l15, !tbaa !27
  call void @compiler_2fneeds_2ecompiler_2fneeds_3awalker_2ecall(ptr %v0, ptr %v1, ptr %v1, ptr %t199, ptr %t200, { i64, ptr } %t201)
  br label %bb53
bb53:
  br label %bb97
bb54:
  %t205 = load ptr, ptr %l1, !tbaa !29
  store ptr %t205, ptr %l118, !tbaa !29
  store i1 false, ptr %l119, !tbaa !21
  %t206 = load ptr, ptr %l118, !tbaa !29
  %t207 = icmp ne ptr %t206, null
  br i1 %t207, label %bb55, label %bb56
bb55:
  %t209 = load ptr, ptr %l118, !tbaa !29
  %t210 = load i64, ptr %t209, !range !{i64 0, i64 30}
  %t212 = icmp eq i64 %t210, 14
  store i1 %t212, ptr %l119, !tbaa !21
  br label %bb56
bb56:
  %t213 = load i1, ptr %l119, !tbaa !21
  br i1 %t213, label %bb57, label %bb58
bb57:
  %t214 = load ptr, ptr %l1, !tbaa !29
  %t216 = getelementptr { i64, [4 x i64] }, ptr %t214, i32 0, i32 1
  %t217 = getelementptr { %"compiler/source:Span", ptr, i32 }, ptr %t216, i32 0, i32 1
  %t218 = load ptr, ptr %t217
  store ptr %t218, ptr %l16, !tbaa !29
  %t220 = load ptr, ptr %l1, !tbaa !29
  %t222 = getelementptr { i64, [4 x i64] }, ptr %t220, i32 0, i32 1
  %t223 = getelementptr { %"compiler/source:Span", ptr, i32 }, ptr %t222, i32 0, i32 2
  %t224 = load i32, ptr %t223
  store i32 %t224, ptr %l17, !tbaa !23
  br label %bb59
bb58:
  br label %bb64
bb59:
  store %olang.scope zeroinitializer, ptr %s11
  %t226 = load ptr, ptr %l0, !tbaa !29
  store ptr %t226, ptr %l126, !tbaa !29
  %t227 = load ptr, ptr %l0, !tbaa !29
  %t228 = load ptr, ptr %l16, !tbaa !29
  %t232 = call i64 @compiler_2fneeds_2ecompiler_2fneeds_3awalker_2evalOf(ptr %v0, ptr %v1, ptr %t227, ptr %t228)
  store i64 %t232, ptr %l130
  br label %bb60
bb60:
  %t233 = load ptr, ptr %l0, !tbaa !29
  %t235 = getelementptr %"compiler/needs:walker", ptr %t233, i32 0, i32 0
  %t236 = load ptr, ptr %t235, !tbaa !29
  %t238 = getelementptr %"compiler/check:Checker", ptr %t236, i32 0, i32 1
  %t239 = load ptr, ptr %t238, !tbaa !29
  %t241 = getelementptr %"compiler/generic:Program", ptr %t239, i32 0, i32 0
  %t242 = load ptr, ptr %t241, !tbaa !29
  %t244 = getelementptr %"compiler/load:Loader", ptr %t242, i32 0, i32 3
  %t245 = load ptr, ptr %t244, !tbaa !29
  %t246 = load i32, ptr %l17, !tbaa !23
  %t249 = call { i64, ptr } @compiler_2fsource_2ecompiler_2fsource_3aNames_2eText(ptr %v0, ptr %s11, ptr %t245, i32 %t246)
  store { i64, ptr } %t249, ptr %l137
  br label %bb61
bb61:
  %t250 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d25, i32 0, i32 1) }, 1
  %t251 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d25, i32 0, i32 1) }, 0
  %t252 = load { i64, ptr }, ptr %l137, !tbaa !27
  %t253 = extractvalue { i64, ptr } %t252, 1
  %t254 = extractvalue { i64, ptr } %t252, 0
  %t255 = add i64 %t251, %t254
  %t256 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d26, i32 0, i32 1) }, 1
  %t257 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d26, i32 0, i32 1) }, 0
  %t258 = add i64 %t255, %t257
  %t259 = call ptr @__olang_scope_alloc(ptr %s11, i64 %t258)
  call void @olang_textcopy(ptr %t259, ptr %t250, i64 %t251)
  %t260 = getelementptr i8, ptr %t259, i64 %t251
  call void @olang_textcopy(ptr %t260, ptr %t253, i64 %t254)
  %t261 = getelementptr i8, ptr %t260, i64 %t254
  call void @olang_textcopy(ptr %t261, ptr %t256, i64 %t257)
  %t262 = insertvalue { i64, ptr } undef, i64 %t258, 0
  %t263 = insertvalue { i64, ptr } %t262, ptr %t259, 1
  %t265 = extractvalue { i64, ptr } %t263, 0
  %t266 = extractvalue { i64, ptr } %t263, 1
  %t267 = mul i64 %t265, 1
  %t268 = call ptr @__olang_scope_alloc(ptr %s11, i64 %t267)
  call void @llvm.memcpy.p0.p0.i64(ptr %t268, ptr %t266, i64 %t267, i1 false)
  %t269 = insertvalue { i64, ptr } undef, i64 %t265, 0
  %t270 = insertvalue { i64, ptr } %t269, ptr %t268, 1
  %t271 = load ptr, ptr %l126, !tbaa !29
  %t272 = load i64, ptr %l130, !tbaa !24
  call void @compiler_2fneeds_2ecompiler_2fneeds_3awalker_2eneed(ptr %v0, ptr %s11, ptr %t271, i64 %t272, { i64, ptr } %t270)
  br label %bb62
bb62:
  %t274 = load ptr, ptr %l0, !tbaa !29
  %t275 = load ptr, ptr %l16, !tbaa !29
  call void @compiler_2fneeds_2ecompiler_2fneeds_3awalker_2eexpr(ptr %v0, ptr %v1, ptr %t274, ptr %t275)
  br label %bb63
bb63:
  call void @__olang_scope_close(ptr %s11)
  br label %bb97
bb64:
  %t279 = load ptr, ptr %l1, !tbaa !29
  store ptr %t279, ptr %l143, !tbaa !29
  store i1 false, ptr %l144, !tbaa !21
  %t280 = load ptr, ptr %l143, !tbaa !29
  %t281 = icmp ne ptr %t280, null
  br i1 %t281, label %bb65, label %bb66
bb65:
  %t283 = load ptr, ptr %l143, !tbaa !29
  %t284 = load i64, ptr %t283, !range !{i64 0, i64 30}
  %t286 = icmp eq i64 %t284, 15
  store i1 %t286, ptr %l144, !tbaa !21
  br label %bb66
bb66:
  %t287 = load i1, ptr %l144, !tbaa !21
  br i1 %t287, label %bb67, label %bb68
bb67:
  %t288 = load ptr, ptr %l1, !tbaa !29
  %t290 = getelementptr { i64, [4 x i64] }, ptr %t288, i32 0, i32 1
  %t291 = getelementptr { %"compiler/source:Span", ptr, { i64, ptr } }, ptr %t290, i32 0, i32 1
  %t292 = load ptr, ptr %t291
  store ptr %t292, ptr %l18, !tbaa !29
  %t294 = load ptr, ptr %l1, !tbaa !29
  %t296 = getelementptr { i64, [4 x i64] }, ptr %t294, i32 0, i32 1
  %t297 = getelementptr { %"compiler/source:Span", ptr, { i64, ptr } }, ptr %t296, i32 0, i32 2
  %t298 = load { i64, ptr }, ptr %t297
  store { i64, ptr } %t298, ptr %l19, !tbaa !27
  br label %bb69
bb68:
  br label %bb80
bb69:
  store %olang.scope zeroinitializer, ptr %s13
  %t300 = load ptr, ptr %l0, !tbaa !29
  store ptr %t300, ptr %l151, !tbaa !29
  %t301 = load ptr, ptr %l0, !tbaa !29
  %t302 = load ptr, ptr %l18, !tbaa !29
  %t306 = call i64 @compiler_2fneeds_2ecompiler_2fneeds_3awalker_2evalOf(ptr %v0, ptr %v1, ptr %t301, ptr %t302)
  store i64 %t306, ptr %l155
  br label %bb70
bb70:
  %t307 = load ptr, ptr %l151, !tbaa !29
  %t308 = load i64, ptr %l155, !tbaa !24
  call void @compiler_2fneeds_2ecompiler_2fneeds_3awalker_2eneed(ptr %v0, ptr %s13, ptr %t307, i64 %t308, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d27, i32 0, i32 1) })
  br label %bb71
bb71:
  %t309 = load ptr, ptr %l0, !tbaa !29
  %t310 = load ptr, ptr %l18, !tbaa !29
  call void @compiler_2fneeds_2ecompiler_2fneeds_3awalker_2eexpr(ptr %v0, ptr %v1, ptr %t309, ptr %t310)
  br label %bb72
bb72:
  %t314 = load { i64, ptr }, ptr %l19, !tbaa !27
  store { i64, ptr } %t314, ptr %l20, !tbaa !27
  store i64 0, ptr %l21, !tbaa !24
  %t316 = load { i64, ptr }, ptr %l20, !tbaa !27
  %t318 = extractvalue { i64, ptr } %t316, 0
  store i64 %t318, ptr %l22, !tbaa !24
  br label %bb73
bb73:
  %t320 = load i64, ptr %l21, !tbaa !24
  %t321 = load i64, ptr %l22, !tbaa !24
  %t324 = icmp slt i64 %t320, %t321
  %t326 = xor i1 %t324, true
  br i1 %t326, label %bb74, label %bb75
bb74:
  br label %bb79
bb75:
  br label %bb76
bb76:
  %t328 = load { i64, ptr }, ptr %l20, !tbaa !27
  store { i64, ptr } %t328, ptr %l166, !tbaa !27
  %t329 = load i64, ptr %l21, !tbaa !24
  %t331 = getelementptr { i64, ptr }, ptr %l166, i32 0, i32 1
  %t332 = load ptr, ptr %t331, !tbaa !27
  %t333 = getelementptr ptr, ptr %t332, i64 %t329
  %t334 = load ptr, ptr %t333, !tbaa !39
  %t336 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2fneeds_2ecompiler_2fneeds_3awalker_2eexpr(ptr %v0, ptr %v1, ptr %t336, ptr %t334)
  br label %bb77
bb77:
  br label %bb78
bb78:
  %t341 = load i64, ptr %l21, !tbaa !24
  %t343 = add i64 %t341, 1
  store i64 %t343, ptr %l21, !tbaa !24
  br label %bb73
bb79:
  call void @__olang_scope_close(ptr %s13)
  br label %bb97
bb80:
  %t345 = load ptr, ptr %l1, !tbaa !29
  store ptr %t345, ptr %l174, !tbaa !29
  store i1 false, ptr %l175, !tbaa !21
  %t346 = load ptr, ptr %l174, !tbaa !29
  %t347 = icmp ne ptr %t346, null
  br i1 %t347, label %bb81, label %bb82
bb81:
  %t349 = load ptr, ptr %l174, !tbaa !29
  %t350 = load i64, ptr %t349, !range !{i64 0, i64 30}
  %t352 = icmp eq i64 %t350, 16
  store i1 %t352, ptr %l175, !tbaa !21
  br label %bb82
bb82:
  %t353 = load i1, ptr %l175, !tbaa !21
  br i1 %t353, label %bb83, label %bb84
bb83:
  %t354 = load ptr, ptr %l1, !tbaa !29
  %t356 = getelementptr { i64, [4 x i64] }, ptr %t354, i32 0, i32 1
  %t357 = getelementptr { %"compiler/source:Span", ptr, ptr, ptr }, ptr %t356, i32 0, i32 1
  %t358 = load ptr, ptr %t357
  store ptr %t358, ptr %l24, !tbaa !29
  %t360 = load ptr, ptr %l1, !tbaa !29
  %t362 = getelementptr { i64, [4 x i64] }, ptr %t360, i32 0, i32 1
  %t363 = getelementptr { %"compiler/source:Span", ptr, ptr, ptr }, ptr %t362, i32 0, i32 2
  %t364 = load ptr, ptr %t363
  store ptr %t364, ptr %l25, !tbaa !29
  %t366 = load ptr, ptr %l1, !tbaa !29
  %t368 = getelementptr { i64, [4 x i64] }, ptr %t366, i32 0, i32 1
  %t369 = getelementptr { %"compiler/source:Span", ptr, ptr, ptr }, ptr %t368, i32 0, i32 3
  %t370 = load ptr, ptr %t369
  store ptr %t370, ptr %l26, !tbaa !29
  br label %bb85
bb84:
  br label %bb91
bb85:
  store %olang.scope zeroinitializer, ptr %s17
  %t372 = load ptr, ptr %l0, !tbaa !29
  store ptr %t372, ptr %l184, !tbaa !29
  %t373 = load ptr, ptr %l0, !tbaa !29
  %t374 = load ptr, ptr %l24, !tbaa !29
  %t378 = call i64 @compiler_2fneeds_2ecompiler_2fneeds_3awalker_2evalOf(ptr %v0, ptr %v1, ptr %t373, ptr %t374)
  store i64 %t378, ptr %l188
  br label %bb86
bb86:
  %t379 = load ptr, ptr %l184, !tbaa !29
  %t380 = load i64, ptr %l188, !tbaa !24
  call void @compiler_2fneeds_2ecompiler_2fneeds_3awalker_2eneed(ptr %v0, ptr %s17, ptr %t379, i64 %t380, { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d28, i32 0, i32 1) })
  br label %bb87
bb87:
  %t381 = load ptr, ptr %l0, !tbaa !29
  %t382 = load ptr, ptr %l24, !tbaa !29
  call void @compiler_2fneeds_2ecompiler_2fneeds_3awalker_2eexpr(ptr %v0, ptr %v1, ptr %t381, ptr %t382)
  br label %bb88
bb88:
  %t386 = load ptr, ptr %l0, !tbaa !29
  %t387 = load ptr, ptr %l25, !tbaa !29
  call void @compiler_2fneeds_2ecompiler_2fneeds_3awalker_2eexpr(ptr %v0, ptr %v1, ptr %t386, ptr %t387)
  br label %bb89
bb89:
  %t390 = load ptr, ptr %l0, !tbaa !29
  %t391 = load ptr, ptr %l26, !tbaa !29
  call void @compiler_2fneeds_2ecompiler_2fneeds_3awalker_2eexpr(ptr %v0, ptr %v1, ptr %t390, ptr %t391)
  br label %bb90
bb90:
  call void @__olang_scope_close(ptr %s17)
  br label %bb97
bb91:
  br i1 true, label %bb92, label %bb93
bb92:
  br label %bb94
bb93:
  br label %bb96
bb94:
  %t394 = load ptr, ptr %l0, !tbaa !29
  %t395 = load ptr, ptr %l1, !tbaa !29
  call void @compiler_2fneeds_2ecompiler_2fneeds_3awalker_2eparts(ptr %v0, ptr %v1, ptr %t394, ptr %t395)
  br label %bb95
bb95:
  br label %bb97
bb96:
  call void @__olang_check_failed(ptr @olang_loc_21eaca0c6a8c7fc1_c6101a29af81bc15)
  unreachable
bb97:
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2fneeds_2ecompiler_2fneeds_3awalker_2eforIn(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i64
  %l6 = alloca i64
  %l14 = alloca ptr
  %l19 = alloca i64
  %s2 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load ptr, ptr %l1, !tbaa !29
  %t4 = getelementptr %"compiler/ast:ForIn", ptr %t2, i32 0, i32 2
  %t5 = load ptr, ptr %t4, !tbaa !29
  %t8 = call i64 @compiler_2fneeds_2ecompiler_2fneeds_3awalker_2eelemsOf(ptr %v0, ptr %v1, ptr %t1, ptr %t5)
  store i64 %t8, ptr %l6
  br label %bb1
bb1:
  %t9 = load i64, ptr %l6, !tbaa !24
  store i64 %t9, ptr %l2, !tbaa !24
  %t10 = load i64, ptr %l2, !tbaa !24
  %t12 = icmp sge i64 %t10, 0
  br i1 %t12, label %bb2, label %bb3
bb2:
  %t14 = load ptr, ptr %l0, !tbaa !29
  %t16 = getelementptr %"compiler/needs:walker", ptr %t14, i32 0, i32 5
  %t17 = load ptr, ptr %l1, !tbaa !29
  %t19 = getelementptr %"compiler/ast:ForIn", ptr %t17, i32 0, i32 1
  %t20 = load i32, ptr %t19, !tbaa !23
  %t21 = load i64, ptr %l2, !tbaa !24
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fsource_3aNameId_2c_20I64_3e_H862756c16d115e5c03a79726209f69fa(ptr %v0, ptr %t16, i32 %t20, i64 %t21)
  br label %bb4
bb3:
  store %olang.scope zeroinitializer, ptr %s2
  %t25 = load ptr, ptr %l0, !tbaa !29
  store ptr %t25, ptr %l14, !tbaa !29
  %t26 = load ptr, ptr %l0, !tbaa !29
  %t27 = load ptr, ptr %l1, !tbaa !29
  %t29 = getelementptr %"compiler/ast:ForIn", ptr %t27, i32 0, i32 2
  %t30 = load ptr, ptr %t29, !tbaa !29
  %t34 = call i64 @compiler_2fneeds_2ecompiler_2fneeds_3awalker_2evalOf(ptr %v0, ptr %v1, ptr %t26, ptr %t30)
  store i64 %t34, ptr %l19
  br label %bb5
bb4:
  br label %bb7
bb5:
  %t35 = load ptr, ptr %l14, !tbaa !29
  %t36 = load i64, ptr %l19, !tbaa !24
  call void @compiler_2fneeds_2ecompiler_2fneeds_3awalker_2eneed(ptr %v0, ptr %s2, ptr %t35, i64 %t36, { i64, ptr } { i64 34, ptr getelementptr inbounds (<{ i64, [34 x i8] }>, ptr @.d29, i32 0, i32 1) })
  br label %bb6
bb6:
  call void @__olang_scope_close(ptr %s2)
  br label %bb7
bb7:
  %t37 = load ptr, ptr %l0, !tbaa !29
  %t38 = load ptr, ptr %l1, !tbaa !29
  %t40 = getelementptr %"compiler/ast:ForIn", ptr %t38, i32 0, i32 2
  %t41 = load ptr, ptr %t40, !tbaa !29
  call void @compiler_2fneeds_2ecompiler_2fneeds_3awalker_2eexpr(ptr %v0, ptr %v1, ptr %t37, ptr %t41)
  br label %bb8
bb8:
  %t45 = load ptr, ptr %l0, !tbaa !29
  %t46 = load ptr, ptr %l1, !tbaa !29
  %t48 = getelementptr %"compiler/ast:ForIn", ptr %t46, i32 0, i32 4
  %t49 = load { i64, ptr }, ptr %t48, !tbaa !27
  call void @compiler_2fneeds_2ecompiler_2fneeds_3awalker_2estmts(ptr %v0, ptr %v1, ptr %t45, { i64, ptr } %t49)
  br label %bb9
bb9:
  %t52 = load ptr, ptr %l0, !tbaa !29
  %t53 = load ptr, ptr %l1, !tbaa !29
  %t55 = getelementptr %"compiler/ast:ForIn", ptr %t53, i32 0, i32 5
  %t56 = load { i64, ptr }, ptr %t55, !tbaa !27
  call void @compiler_2fneeds_2ecompiler_2fneeds_3awalker_2ecatches(ptr %v0, ptr %v1, ptr %t52, { i64, ptr } %t56)
  br label %bb10
bb10:
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2fneeds_2ecompiler_2fneeds_3awalker_2eifStmt(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l5 = alloca i1
  %l13 = alloca ptr
  %l25 = alloca ptr
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load ptr, ptr %l1, !tbaa !29
  %t4 = getelementptr %"compiler/ast:If", ptr %t2, i32 0, i32 0
  %t5 = load ptr, ptr %t4, !tbaa !29
  %t8 = call i1 @compiler_2fneeds_2ecompiler_2fneeds_3awalker_2ereflects(ptr %v0, ptr %v1, ptr %t1, ptr %t5)
  store i1 %t8, ptr %l5
  br label %bb1
bb1:
  %t9 = load i1, ptr %l5, !tbaa !21
  br i1 %t9, label %bb2, label %bb3
bb2:
  br label %ret
bb3:
  br label %bb4
bb4:
  %t10 = load ptr, ptr %l0, !tbaa !29
  %t11 = load ptr, ptr %l1, !tbaa !29
  %t13 = getelementptr %"compiler/ast:If", ptr %t11, i32 0, i32 0
  %t14 = load ptr, ptr %t13, !tbaa !29
  call void @compiler_2fneeds_2ecompiler_2fneeds_3awalker_2eexpr(ptr %v0, ptr %v1, ptr %t10, ptr %t14)
  br label %bb5
bb5:
  %t17 = load ptr, ptr %l1, !tbaa !29
  %t19 = getelementptr %"compiler/ast:If", ptr %t17, i32 0, i32 1
  %t20 = load ptr, ptr %t19, !tbaa !29
  %t22 = icmp eq ptr %t20, null
  %t24 = xor i1 %t22, true
  br i1 %t24, label %bb6, label %bb7
bb6:
  %t26 = load ptr, ptr %l0, !tbaa !29
  store ptr %t26, ptr %l13, !tbaa !29
  %t27 = load ptr, ptr %l1, !tbaa !29
  %t29 = getelementptr %"compiler/ast:If", ptr %t27, i32 0, i32 1
  %t30 = load ptr, ptr %t29, !tbaa !29
  %t32 = icmp eq ptr %t30, null
  br i1 %t32, label %bb8, label %bb9
bb7:
  br label %bb12
bb8:
  call void @__olang_check_failed(ptr @olang_loc_9c9e5b16a9737640_c9291bd1f0d77b3c)
  unreachable
bb9:
  br label %bb10
bb10:
  %t34 = load ptr, ptr %l1, !tbaa !29
  %t36 = getelementptr %"compiler/ast:If", ptr %t34, i32 0, i32 1
  %t37 = load ptr, ptr %t36, !tbaa !29
  %t40 = getelementptr %"compiler/ast:Branch", ptr %t37, i32 0, i32 1
  %t41 = load { i64, ptr }, ptr %t40, !tbaa !27
  %t42 = load ptr, ptr %l13, !tbaa !29
  call void @compiler_2fneeds_2ecompiler_2fneeds_3awalker_2estmts(ptr %v0, ptr %v1, ptr %t42, { i64, ptr } %t41)
  br label %bb11
bb11:
  br label %bb12
bb12:
  %t44 = load ptr, ptr %l1, !tbaa !29
  %t46 = getelementptr %"compiler/ast:If", ptr %t44, i32 0, i32 2
  %t47 = load ptr, ptr %t46, !tbaa !29
  %t49 = icmp eq ptr %t47, null
  %t51 = xor i1 %t49, true
  br i1 %t51, label %bb13, label %bb14
bb13:
  %t53 = load ptr, ptr %l0, !tbaa !29
  store ptr %t53, ptr %l25, !tbaa !29
  %t54 = load ptr, ptr %l1, !tbaa !29
  %t56 = getelementptr %"compiler/ast:If", ptr %t54, i32 0, i32 2
  %t57 = load ptr, ptr %t56, !tbaa !29
  %t59 = icmp eq ptr %t57, null
  br i1 %t59, label %bb15, label %bb16
bb14:
  br label %bb19
bb15:
  call void @__olang_check_failed(ptr @olang_loc_8cbabffa04a291df_a080b7e111f166ab)
  unreachable
bb16:
  br label %bb17
bb17:
  %t61 = load ptr, ptr %l1, !tbaa !29
  %t63 = getelementptr %"compiler/ast:If", ptr %t61, i32 0, i32 2
  %t64 = load ptr, ptr %t63, !tbaa !29
  %t65 = load ptr, ptr %l25, !tbaa !29
  call void @compiler_2fneeds_2ecompiler_2fneeds_3awalker_2estmt(ptr %v0, ptr %v1, ptr %t65, ptr %t64)
  br label %bb18
bb18:
  br label %bb19
bb19:
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2fneeds_2ecompiler_2fneeds_3awalker_2ematchOf(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca { i64, ptr }
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca ptr
  %l20 = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l1, !tbaa !29
  %t3 = getelementptr %"compiler/ast:Match", ptr %t1, i32 0, i32 2
  %t4 = load i1, ptr %t3, !tbaa !21
  br i1 %t4, label %bb1, label %bb2
bb1:
  br label %ret
bb2:
  br label %bb3
bb3:
  %t6 = load ptr, ptr %l0, !tbaa !29
  %t7 = load ptr, ptr %l1, !tbaa !29
  %t9 = getelementptr %"compiler/ast:Match", ptr %t7, i32 0, i32 1
  %t10 = load ptr, ptr %t9, !tbaa !29
  call void @compiler_2fneeds_2ecompiler_2fneeds_3awalker_2eexpr(ptr %v0, ptr %v1, ptr %t6, ptr %t10)
  br label %bb4
bb4:
  %t14 = load ptr, ptr %l1, !tbaa !29
  %t16 = getelementptr %"compiler/ast:Match", ptr %t14, i32 0, i32 3
  %t17 = load { i64, ptr }, ptr %t16, !tbaa !27
  store { i64, ptr } %t17, ptr %l2, !tbaa !27
  store i64 0, ptr %l3, !tbaa !24
  %t19 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t21 = extractvalue { i64, ptr } %t19, 0
  store i64 %t21, ptr %l4, !tbaa !24
  br label %bb5
bb5:
  %t23 = load i64, ptr %l3, !tbaa !24
  %t24 = load i64, ptr %l4, !tbaa !24
  %t27 = icmp slt i64 %t23, %t24
  %t29 = xor i1 %t27, true
  br i1 %t29, label %bb6, label %bb7
bb6:
  br label %bb13
bb7:
  br label %bb8
bb8:
  %t31 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t31, ptr %l20, !tbaa !27
  %t32 = load i64, ptr %l3, !tbaa !24
  %t34 = getelementptr { i64, ptr }, ptr %l20, i32 0, i32 1
  %t35 = load ptr, ptr %t34, !tbaa !27
  %t36 = getelementptr ptr, ptr %t35, i64 %t32
  %t37 = load ptr, ptr %t36, !tbaa !39
  store ptr %t37, ptr %l5, !tbaa !29
  %t39 = load ptr, ptr %l0, !tbaa !29
  %t40 = load ptr, ptr %l5, !tbaa !29
  %t42 = getelementptr %"compiler/ast:Case", ptr %t40, i32 0, i32 3
  %t43 = load ptr, ptr %t42, !tbaa !29
  call void @compiler_2fneeds_2ecompiler_2fneeds_3awalker_2eexpr(ptr %v0, ptr %v1, ptr %t39, ptr %t43)
  br label %bb9
bb9:
  %t46 = load ptr, ptr %l0, !tbaa !29
  %t47 = load ptr, ptr %l5, !tbaa !29
  %t49 = getelementptr %"compiler/ast:Case", ptr %t47, i32 0, i32 4
  %t50 = load { i64, ptr }, ptr %t49, !tbaa !27
  call void @compiler_2fneeds_2ecompiler_2fneeds_3awalker_2estmts(ptr %v0, ptr %v1, ptr %t46, { i64, ptr } %t50)
  br label %bb10
bb10:
  %t53 = load ptr, ptr %l0, !tbaa !29
  %t54 = load ptr, ptr %l5, !tbaa !29
  %t56 = getelementptr %"compiler/ast:Case", ptr %t54, i32 0, i32 5
  %t57 = load ptr, ptr %t56, !tbaa !29
  call void @compiler_2fneeds_2ecompiler_2fneeds_3awalker_2eexpr(ptr %v0, ptr %v1, ptr %t53, ptr %t57)
  br label %bb11
bb11:
  br label %bb12
bb12:
  %t60 = load i64, ptr %l3, !tbaa !24
  %t62 = add i64 %t60, 1
  store i64 %t62, ptr %l3, !tbaa !24
  br label %bb5
bb13:
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2fneeds_2ecompiler_2fneeds_3awalker_2eneed(ptr %v0, ptr %v1, ptr %a0, i64 %a1, { i64, ptr } %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca { i64, ptr }
  %l5 = alloca i1
  %l6 = alloca i64
  %l9 = alloca i64
  %l11 = alloca i1
  %l15 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l17 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l20 = alloca i1
  %l24 = alloca ptr
  %l25 = alloca i64
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  store { i64, ptr } %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
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
  %t8 = getelementptr %"compiler/needs:walker", ptr %t6, i32 0, i32 7
  %t10 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2fvec_3aVec_3cstd_2fprel_Hbb0b9cf8ae0bb786ffc6cf28ae45ef64(ptr %v0, ptr %t8)
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
  br label %bb10
bb6:
  %t16 = load ptr, ptr %l0, !tbaa !29
  %t18 = getelementptr %"compiler/needs:walker", ptr %t16, i32 0, i32 7
  %t19 = load i64, ptr %l1, !tbaa !24
  %t22 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2fvec_3aVec_3cstd_2fprel_H21d8db2bdfeb46fab755f8173a35f95e(ptr %v0, ptr %v0, ptr %t18, i64 %t19)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t22, ptr %l15
  br label %bb7
bb7:
  %t24 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e(ptr %v0, ptr %l15)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t24, ptr %l17
  br label %bb8
bb8:
  %t25 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t28 = call i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H0127831368543eff3b7740d7d3240080(ptr %v0, ptr %v1, ptr %l17, { i64, ptr } %t25)
  store i1 %t28, ptr %l20
  br label %bb9
bb9:
  %t29 = load i1, ptr %l20, !tbaa !21
  store i1 %t29, ptr %l11, !tbaa !21
  br label %bb10
bb10:
  %t30 = load i1, ptr %l11, !tbaa !21
  br i1 %t30, label %bb11, label %bb12
bb11:
  br label %ret
bb12:
  br label %bb13
bb13:
  %t31 = load ptr, ptr %l0, !tbaa !29
  %t33 = getelementptr %"compiler/needs:walker", ptr %t31, i32 0, i32 7
  %t34 = load i64, ptr %l1, !tbaa !24
  %t37 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2fvec_3aVec_3cstd_2fprel_H7b5f712395151d264e9eac052c719793(ptr %v0, ptr %v0, ptr %t33, i64 %t34)
  store ptr %t37, ptr %l24
  br label %bb14
bb14:
  %t38 = ptrtoint ptr %v0 to i64
  store i64 %t38, ptr %l25, !tbaa !24
  %t39 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1
  br i1 %t39, label %bb15, label %bb16
bb15:
  %t41 = call ptr @__olang_region_make(ptr %v0)
  %t42 = ptrtoint ptr %t41 to i64
  store i64 %t42, ptr %l25, !tbaa !24
  br label %bb16
bb16:
  %t43 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t45 = extractvalue { i64, ptr } %t43, 1
  %t46 = extractvalue { i64, ptr } %t43, 0
  %t47 = load i64, ptr %l25
  %t48 = inttoptr i64 %t47 to ptr
  %t49 = call ptr @__olang_scope_alloc(ptr %t48, i64 %t46)
  call void @olang_textcopy(ptr %t49, ptr %t45, i64 %t46)
  %t50 = insertvalue { i64, ptr } undef, i64 %t46, 0
  %t51 = insertvalue { i64, ptr } %t50, ptr %t49, 1
  %t53 = load i64, ptr %l25
  %t54 = inttoptr i64 %t53 to ptr
  %t55 = extractvalue { i64, ptr } %t51, 0
  %t56 = extractvalue { i64, ptr } %t51, 1
  %t57 = mul i64 %t55, 1
  %t58 = call ptr @__olang_scope_alloc(ptr %t54, i64 %t57)
  call void @llvm.memcpy.p0.p0.i64(ptr %t58, ptr %t56, i64 %t57, i1 false)
  %t59 = insertvalue { i64, ptr } undef, i64 %t55, 0
  %t60 = insertvalue { i64, ptr } %t59, ptr %t58, 1
  %t61 = load ptr, ptr %l24, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v0, ptr %v0, ptr %t61, { i64, ptr } %t60)
  br label %bb17
bb17:
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2fneeds_2ecompiler_2fneeds_3awalker_2eparam(ptr %v0, ptr %v1, ptr %a0, i32 %a1, ptr %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca ptr
  %l3 = alloca i64
  %l4 = alloca i64
  %l7 = alloca i64
  %l16 = alloca i64
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  store ptr %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load ptr, ptr %l2, !tbaa !29
  %t5 = call i64 @compiler_2fneeds_2ecompiler_2fneeds_3awalker_2evarOf(ptr %v0, ptr %v1, ptr %t1, ptr %t2)
  store i64 %t5, ptr %l7
  br label %bb1
bb1:
  %t6 = load i64, ptr %l7, !tbaa !24
  store i64 %t6, ptr %l3, !tbaa !24
  %t7 = load i64, ptr %l3, !tbaa !24
  %t9 = icmp sge i64 %t7, 0
  br i1 %t9, label %bb2, label %bb3
bb2:
  %t11 = load ptr, ptr %l0, !tbaa !29
  %t13 = getelementptr %"compiler/needs:walker", ptr %t11, i32 0, i32 5
  %t14 = load i32, ptr %l1, !tbaa !23
  %t15 = load i64, ptr %l3, !tbaa !24
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fsource_3aNameId_2c_20I64_3e_H862756c16d115e5c03a79726209f69fa(ptr %v0, ptr %t13, i32 %t14, i64 %t15)
  br label %bb4
bb3:
  br label %bb5
bb4:
  br label %bb5
bb5:
  %t19 = load ptr, ptr %l0, !tbaa !29
  %t20 = load ptr, ptr %l2, !tbaa !29
  %t23 = call i64 @compiler_2fneeds_2ecompiler_2fneeds_3awalker_2eelemOf(ptr %v0, ptr %v1, ptr %t19, ptr %t20)
  store i64 %t23, ptr %l16
  br label %bb6
bb6:
  %t24 = load i64, ptr %l16, !tbaa !24
  store i64 %t24, ptr %l4, !tbaa !24
  %t25 = load i64, ptr %l4, !tbaa !24
  %t27 = icmp sge i64 %t25, 0
  br i1 %t27, label %bb7, label %bb8
bb7:
  %t29 = load ptr, ptr %l0, !tbaa !29
  %t31 = getelementptr %"compiler/needs:walker", ptr %t29, i32 0, i32 6
  %t32 = load i32, ptr %l1, !tbaa !23
  %t33 = load i64, ptr %l4, !tbaa !24
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fsource_3aNameId_2c_20I64_3e_H862756c16d115e5c03a79726209f69fa(ptr %v0, ptr %t31, i32 %t32, i64 %t33)
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

define dso_local void @compiler_2fneeds_2ecompiler_2fneeds_3awalker_2eparts(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca ptr
  %l4 = alloca ptr
  %l5 = alloca ptr
  %l6 = alloca ptr
  %l7 = alloca ptr
  %l8 = alloca ptr
  %l9 = alloca { i64, ptr }
  %l10 = alloca { i64, ptr }
  %l11 = alloca i64
  %l12 = alloca i64
  %l14 = alloca ptr
  %l15 = alloca { i64, ptr }
  %l16 = alloca ptr
  %l17 = alloca ptr
  %l18 = alloca ptr
  %l19 = alloca ptr
  %l20 = alloca i1
  %l25 = alloca ptr
  %l26 = alloca i1
  %l31 = alloca ptr
  %l32 = alloca i1
  %l37 = alloca ptr
  %l38 = alloca i1
  %l46 = alloca ptr
  %l47 = alloca i1
  %l55 = alloca ptr
  %l56 = alloca i1
  %l69 = alloca ptr
  %l70 = alloca i1
  %l88 = alloca ptr
  %l89 = alloca i1
  %l94 = alloca ptr
  %l95 = alloca i1
  %l100 = alloca ptr
  %l101 = alloca i1
  %l106 = alloca ptr
  %l107 = alloca i1
  %l119 = alloca { i64, ptr }
  %l127 = alloca ptr
  %l128 = alloca i1
  %l140 = alloca ptr
  %l141 = alloca i1
  %l148 = alloca ptr
  %l149 = alloca i1
  %l165 = alloca ptr
  %l166 = alloca i1
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l1, !tbaa !29
  store ptr %t1, ptr %l19, !tbaa !29
  store i1 false, ptr %l20, !tbaa !21
  %t2 = load ptr, ptr %l19, !tbaa !29
  %t3 = icmp ne ptr %t2, null
  br i1 %t3, label %bb1, label %bb2
bb1:
  %t5 = load ptr, ptr %l19, !tbaa !29
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 30}
  %t8 = icmp eq i64 %t6, 2
  store i1 %t8, ptr %l20, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l20, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  %t10 = load ptr, ptr %l1, !tbaa !29
  %t12 = getelementptr { i64, [4 x i64] }, ptr %t10, i32 0, i32 1
  %t13 = getelementptr { %"compiler/source:Span", ptr }, ptr %t12, i32 0, i32 1
  %t14 = load ptr, ptr %t13
  store ptr %t14, ptr %l2, !tbaa !29
  br label %bb17
bb4:
  %t16 = load ptr, ptr %l1, !tbaa !29
  store ptr %t16, ptr %l25, !tbaa !29
  store i1 false, ptr %l26, !tbaa !21
  %t17 = load ptr, ptr %l25, !tbaa !29
  %t18 = icmp ne ptr %t17, null
  br i1 %t18, label %bb5, label %bb6
bb5:
  %t20 = load ptr, ptr %l25, !tbaa !29
  %t21 = load i64, ptr %t20, !range !{i64 0, i64 30}
  %t23 = icmp eq i64 %t21, 4
  store i1 %t23, ptr %l26, !tbaa !21
  br label %bb6
bb6:
  %t24 = load i1, ptr %l26, !tbaa !21
  br i1 %t24, label %bb7, label %bb8
bb7:
  %t25 = load ptr, ptr %l1, !tbaa !29
  %t27 = getelementptr { i64, [4 x i64] }, ptr %t25, i32 0, i32 1
  %t28 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t27, i32 0, i32 2
  %t29 = load ptr, ptr %t28
  store ptr %t29, ptr %l2, !tbaa !29
  br label %bb17
bb8:
  %t31 = load ptr, ptr %l1, !tbaa !29
  store ptr %t31, ptr %l31, !tbaa !29
  store i1 false, ptr %l32, !tbaa !21
  %t32 = load ptr, ptr %l31, !tbaa !29
  %t33 = icmp ne ptr %t32, null
  br i1 %t33, label %bb9, label %bb10
bb9:
  %t35 = load ptr, ptr %l31, !tbaa !29
  %t36 = load i64, ptr %t35, !range !{i64 0, i64 30}
  %t38 = icmp eq i64 %t36, 26
  store i1 %t38, ptr %l32, !tbaa !21
  br label %bb10
bb10:
  %t39 = load i1, ptr %l32, !tbaa !21
  br i1 %t39, label %bb11, label %bb12
bb11:
  %t40 = load ptr, ptr %l1, !tbaa !29
  %t42 = getelementptr { i64, [4 x i64] }, ptr %t40, i32 0, i32 1
  %t43 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t42, i32 0, i32 2
  %t44 = load ptr, ptr %t43
  store ptr %t44, ptr %l2, !tbaa !29
  br label %bb17
bb12:
  %t46 = load ptr, ptr %l1, !tbaa !29
  store ptr %t46, ptr %l37, !tbaa !29
  store i1 false, ptr %l38, !tbaa !21
  %t47 = load ptr, ptr %l37, !tbaa !29
  %t48 = icmp ne ptr %t47, null
  br i1 %t48, label %bb13, label %bb14
bb13:
  %t50 = load ptr, ptr %l37, !tbaa !29
  %t51 = load i64, ptr %t50, !range !{i64 0, i64 30}
  %t53 = icmp eq i64 %t51, 11
  store i1 %t53, ptr %l38, !tbaa !21
  br label %bb14
bb14:
  %t54 = load i1, ptr %l38, !tbaa !21
  br i1 %t54, label %bb15, label %bb16
bb15:
  %t55 = load ptr, ptr %l1, !tbaa !29
  %t57 = getelementptr { i64, [4 x i64] }, ptr %t55, i32 0, i32 1
  %t58 = getelementptr { %"compiler/source:Span", ptr, ptr }, ptr %t57, i32 0, i32 1
  %t59 = load ptr, ptr %t58
  store ptr %t59, ptr %l2, !tbaa !29
  br label %bb17
bb16:
  br label %bb19
bb17:
  %t61 = load ptr, ptr %l0, !tbaa !29
  %t62 = load ptr, ptr %l2, !tbaa !29
  call void @compiler_2fneeds_2ecompiler_2fneeds_3awalker_2eexpr(ptr %v0, ptr %v1, ptr %t61, ptr %t62)
  br label %bb18
bb18:
  br label %bb104
bb19:
  %t66 = load ptr, ptr %l1, !tbaa !29
  store ptr %t66, ptr %l46, !tbaa !29
  store i1 false, ptr %l47, !tbaa !21
  %t67 = load ptr, ptr %l46, !tbaa !29
  %t68 = icmp ne ptr %t67, null
  br i1 %t68, label %bb20, label %bb21
bb20:
  %t70 = load ptr, ptr %l46, !tbaa !29
  %t71 = load i64, ptr %t70, !range !{i64 0, i64 30}
  %t73 = icmp eq i64 %t71, 9
  store i1 %t73, ptr %l47, !tbaa !21
  br label %bb21
bb21:
  %t74 = load i1, ptr %l47, !tbaa !21
  br i1 %t74, label %bb22, label %bb23
bb22:
  %t75 = load ptr, ptr %l1, !tbaa !29
  %t77 = getelementptr { i64, [4 x i64] }, ptr %t75, i32 0, i32 1
  %t78 = getelementptr { %"compiler/source:Span", ptr, ptr, i1 }, ptr %t77, i32 0, i32 1
  %t79 = load ptr, ptr %t78
  store ptr %t79, ptr %l3, !tbaa !29
  br label %bb24
bb23:
  br label %bb26
bb24:
  %t81 = load ptr, ptr %l0, !tbaa !29
  %t82 = load ptr, ptr %l3, !tbaa !29
  call void @compiler_2fneeds_2ecompiler_2fneeds_3awalker_2eexpr(ptr %v0, ptr %v1, ptr %t81, ptr %t82)
  br label %bb25
bb25:
  br label %bb104
bb26:
  %t86 = load ptr, ptr %l1, !tbaa !29
  store ptr %t86, ptr %l55, !tbaa !29
  store i1 false, ptr %l56, !tbaa !21
  %t87 = load ptr, ptr %l55, !tbaa !29
  %t88 = icmp ne ptr %t87, null
  br i1 %t88, label %bb27, label %bb28
bb27:
  %t90 = load ptr, ptr %l55, !tbaa !29
  %t91 = load i64, ptr %t90, !range !{i64 0, i64 30}
  %t93 = icmp eq i64 %t91, 10
  store i1 %t93, ptr %l56, !tbaa !21
  br label %bb28
bb28:
  %t94 = load i1, ptr %l56, !tbaa !21
  br i1 %t94, label %bb29, label %bb30
bb29:
  %t95 = load ptr, ptr %l1, !tbaa !29
  %t97 = getelementptr { i64, [4 x i64] }, ptr %t95, i32 0, i32 1
  %t98 = getelementptr { %"compiler/source:Span", ptr, ptr, i1 }, ptr %t97, i32 0, i32 1
  %t99 = load ptr, ptr %t98
  store ptr %t99, ptr %l4, !tbaa !29
  %t101 = load ptr, ptr %l1, !tbaa !29
  %t103 = getelementptr { i64, [4 x i64] }, ptr %t101, i32 0, i32 1
  %t104 = getelementptr { %"compiler/source:Span", ptr, ptr, i1 }, ptr %t103, i32 0, i32 2
  %t105 = load ptr, ptr %t104
  store ptr %t105, ptr %l5, !tbaa !29
  br label %bb31
bb30:
  br label %bb34
bb31:
  %t107 = load ptr, ptr %l0, !tbaa !29
  %t108 = load ptr, ptr %l4, !tbaa !29
  call void @compiler_2fneeds_2ecompiler_2fneeds_3awalker_2eexpr(ptr %v0, ptr %v1, ptr %t107, ptr %t108)
  br label %bb32
bb32:
  %t112 = load ptr, ptr %l0, !tbaa !29
  %t113 = load ptr, ptr %l5, !tbaa !29
  call void @compiler_2fneeds_2ecompiler_2fneeds_3awalker_2eexpr(ptr %v0, ptr %v1, ptr %t112, ptr %t113)
  br label %bb33
bb33:
  br label %bb104
bb34:
  %t117 = load ptr, ptr %l1, !tbaa !29
  store ptr %t117, ptr %l69, !tbaa !29
  store i1 false, ptr %l70, !tbaa !21
  %t118 = load ptr, ptr %l69, !tbaa !29
  %t119 = icmp ne ptr %t118, null
  br i1 %t119, label %bb35, label %bb36
bb35:
  %t121 = load ptr, ptr %l69, !tbaa !29
  %t122 = load i64, ptr %t121, !range !{i64 0, i64 30}
  %t124 = icmp eq i64 %t122, 8
  store i1 %t124, ptr %l70, !tbaa !21
  br label %bb36
bb36:
  %t125 = load i1, ptr %l70, !tbaa !21
  br i1 %t125, label %bb37, label %bb38
bb37:
  %t126 = load ptr, ptr %l1, !tbaa !29
  %t128 = getelementptr { i64, [4 x i64] }, ptr %t126, i32 0, i32 1
  %t129 = getelementptr { %"compiler/source:Span", ptr, ptr, ptr }, ptr %t128, i32 0, i32 1
  %t130 = load ptr, ptr %t129
  store ptr %t130, ptr %l6, !tbaa !29
  %t132 = load ptr, ptr %l1, !tbaa !29
  %t134 = getelementptr { i64, [4 x i64] }, ptr %t132, i32 0, i32 1
  %t135 = getelementptr { %"compiler/source:Span", ptr, ptr, ptr }, ptr %t134, i32 0, i32 2
  %t136 = load ptr, ptr %t135
  store ptr %t136, ptr %l7, !tbaa !29
  %t138 = load ptr, ptr %l1, !tbaa !29
  %t140 = getelementptr { i64, [4 x i64] }, ptr %t138, i32 0, i32 1
  %t141 = getelementptr { %"compiler/source:Span", ptr, ptr, ptr }, ptr %t140, i32 0, i32 3
  %t142 = load ptr, ptr %t141
  store ptr %t142, ptr %l8, !tbaa !29
  br label %bb39
bb38:
  br label %bb43
bb39:
  %t144 = load ptr, ptr %l0, !tbaa !29
  %t145 = load ptr, ptr %l6, !tbaa !29
  call void @compiler_2fneeds_2ecompiler_2fneeds_3awalker_2eexpr(ptr %v0, ptr %v1, ptr %t144, ptr %t145)
  br label %bb40
bb40:
  %t149 = load ptr, ptr %l0, !tbaa !29
  %t150 = load ptr, ptr %l7, !tbaa !29
  call void @compiler_2fneeds_2ecompiler_2fneeds_3awalker_2eexpr(ptr %v0, ptr %v1, ptr %t149, ptr %t150)
  br label %bb41
bb41:
  %t154 = load ptr, ptr %l0, !tbaa !29
  %t155 = load ptr, ptr %l8, !tbaa !29
  call void @compiler_2fneeds_2ecompiler_2fneeds_3awalker_2eexpr(ptr %v0, ptr %v1, ptr %t154, ptr %t155)
  br label %bb42
bb42:
  br label %bb104
bb43:
  %t159 = load ptr, ptr %l1, !tbaa !29
  store ptr %t159, ptr %l88, !tbaa !29
  store i1 false, ptr %l89, !tbaa !21
  %t160 = load ptr, ptr %l88, !tbaa !29
  %t161 = icmp ne ptr %t160, null
  br i1 %t161, label %bb44, label %bb45
bb44:
  %t163 = load ptr, ptr %l88, !tbaa !29
  %t164 = load i64, ptr %t163, !range !{i64 0, i64 30}
  %t166 = icmp eq i64 %t164, 17
  store i1 %t166, ptr %l89, !tbaa !21
  br label %bb45
bb45:
  %t167 = load i1, ptr %l89, !tbaa !21
  br i1 %t167, label %bb46, label %bb47
bb46:
  %t168 = load ptr, ptr %l1, !tbaa !29
  %t170 = getelementptr { i64, [4 x i64] }, ptr %t168, i32 0, i32 1
  %t171 = getelementptr { %"compiler/source:Span", ptr, { i64, ptr } }, ptr %t170, i32 0, i32 2
  %t172 = load { i64, ptr }, ptr %t171
  store { i64, ptr } %t172, ptr %l9, !tbaa !27
  br label %bb60
bb47:
  %t174 = load ptr, ptr %l1, !tbaa !29
  store ptr %t174, ptr %l94, !tbaa !29
  store i1 false, ptr %l95, !tbaa !21
  %t175 = load ptr, ptr %l94, !tbaa !29
  %t176 = icmp ne ptr %t175, null
  br i1 %t176, label %bb48, label %bb49
bb48:
  %t178 = load ptr, ptr %l94, !tbaa !29
  %t179 = load i64, ptr %t178, !range !{i64 0, i64 30}
  %t181 = icmp eq i64 %t179, 18
  store i1 %t181, ptr %l95, !tbaa !21
  br label %bb49
bb49:
  %t182 = load i1, ptr %l95, !tbaa !21
  br i1 %t182, label %bb50, label %bb51
bb50:
  %t183 = load ptr, ptr %l1, !tbaa !29
  %t185 = getelementptr { i64, [4 x i64] }, ptr %t183, i32 0, i32 1
  %t186 = getelementptr { %"compiler/source:Span", { i64, ptr } }, ptr %t185, i32 0, i32 1
  %t187 = load { i64, ptr }, ptr %t186
  store { i64, ptr } %t187, ptr %l9, !tbaa !27
  br label %bb60
bb51:
  %t189 = load ptr, ptr %l1, !tbaa !29
  store ptr %t189, ptr %l100, !tbaa !29
  store i1 false, ptr %l101, !tbaa !21
  %t190 = load ptr, ptr %l100, !tbaa !29
  %t191 = icmp ne ptr %t190, null
  br i1 %t191, label %bb52, label %bb53
bb52:
  %t193 = load ptr, ptr %l100, !tbaa !29
  %t194 = load i64, ptr %t193, !range !{i64 0, i64 30}
  %t196 = icmp eq i64 %t194, 20
  store i1 %t196, ptr %l101, !tbaa !21
  br label %bb53
bb53:
  %t197 = load i1, ptr %l101, !tbaa !21
  br i1 %t197, label %bb54, label %bb55
bb54:
  %t198 = load ptr, ptr %l1, !tbaa !29
  %t200 = getelementptr { i64, [4 x i64] }, ptr %t198, i32 0, i32 1
  %t201 = getelementptr { %"compiler/source:Span", { i64, ptr } }, ptr %t200, i32 0, i32 1
  %t202 = load { i64, ptr }, ptr %t201
  store { i64, ptr } %t202, ptr %l9, !tbaa !27
  br label %bb60
bb55:
  %t204 = load ptr, ptr %l1, !tbaa !29
  store ptr %t204, ptr %l106, !tbaa !29
  store i1 false, ptr %l107, !tbaa !21
  %t205 = load ptr, ptr %l106, !tbaa !29
  %t206 = icmp ne ptr %t205, null
  br i1 %t206, label %bb56, label %bb57
bb56:
  %t208 = load ptr, ptr %l106, !tbaa !29
  %t209 = load i64, ptr %t208, !range !{i64 0, i64 30}
  %t211 = icmp eq i64 %t209, 24
  store i1 %t211, ptr %l107, !tbaa !21
  br label %bb57
bb57:
  %t212 = load i1, ptr %l107, !tbaa !21
  br i1 %t212, label %bb58, label %bb59
bb58:
  %t213 = load ptr, ptr %l1, !tbaa !29
  %t215 = getelementptr { i64, [4 x i64] }, ptr %t213, i32 0, i32 1
  %t216 = getelementptr { %"compiler/source:Span", { i64, ptr } }, ptr %t215, i32 0, i32 1
  %t217 = load { i64, ptr }, ptr %t216
  store { i64, ptr } %t217, ptr %l9, !tbaa !27
  br label %bb60
bb59:
  br label %bb68
bb60:
  %t219 = load { i64, ptr }, ptr %l9, !tbaa !27
  store { i64, ptr } %t219, ptr %l10, !tbaa !27
  store i64 0, ptr %l11, !tbaa !24
  %t221 = load { i64, ptr }, ptr %l10, !tbaa !27
  %t223 = extractvalue { i64, ptr } %t221, 0
  store i64 %t223, ptr %l12, !tbaa !24
  br label %bb61
bb61:
  %t225 = load i64, ptr %l11, !tbaa !24
  %t226 = load i64, ptr %l12, !tbaa !24
  %t229 = icmp slt i64 %t225, %t226
  %t231 = xor i1 %t229, true
  br i1 %t231, label %bb62, label %bb63
bb62:
  br label %bb67
bb63:
  br label %bb64
bb64:
  %t233 = load { i64, ptr }, ptr %l10, !tbaa !27
  store { i64, ptr } %t233, ptr %l119, !tbaa !27
  %t234 = load i64, ptr %l11, !tbaa !24
  %t236 = getelementptr { i64, ptr }, ptr %l119, i32 0, i32 1
  %t237 = load ptr, ptr %t236, !tbaa !27
  %t238 = getelementptr ptr, ptr %t237, i64 %t234
  %t239 = load ptr, ptr %t238, !tbaa !39
  %t241 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2fneeds_2ecompiler_2fneeds_3awalker_2eexpr(ptr %v0, ptr %v1, ptr %t241, ptr %t239)
  br label %bb65
bb65:
  br label %bb66
bb66:
  %t246 = load i64, ptr %l11, !tbaa !24
  %t248 = add i64 %t246, 1
  store i64 %t248, ptr %l11, !tbaa !24
  br label %bb61
bb67:
  br label %bb104
bb68:
  %t250 = load ptr, ptr %l1, !tbaa !29
  store ptr %t250, ptr %l127, !tbaa !29
  store i1 false, ptr %l128, !tbaa !21
  %t251 = load ptr, ptr %l127, !tbaa !29
  %t252 = icmp ne ptr %t251, null
  br i1 %t252, label %bb69, label %bb70
bb69:
  %t254 = load ptr, ptr %l127, !tbaa !29
  %t255 = load i64, ptr %t254, !range !{i64 0, i64 30}
  %t257 = icmp eq i64 %t255, 21
  store i1 %t257, ptr %l128, !tbaa !21
  br label %bb70
bb70:
  %t258 = load i1, ptr %l128, !tbaa !21
  br i1 %t258, label %bb71, label %bb72
bb71:
  %t259 = load ptr, ptr %l1, !tbaa !29
  %t261 = getelementptr { i64, [4 x i64] }, ptr %t259, i32 0, i32 1
  %t262 = getelementptr { %"compiler/source:Span", ptr, { i64, ptr } }, ptr %t261, i32 0, i32 1
  %t263 = load ptr, ptr %t262
  store ptr %t263, ptr %l14, !tbaa !29
  %t265 = load ptr, ptr %l1, !tbaa !29
  %t267 = getelementptr { i64, [4 x i64] }, ptr %t265, i32 0, i32 1
  %t268 = getelementptr { %"compiler/source:Span", ptr, { i64, ptr } }, ptr %t267, i32 0, i32 2
  %t269 = load { i64, ptr }, ptr %t268
  store { i64, ptr } %t269, ptr %l15, !tbaa !27
  br label %bb73
bb72:
  br label %bb76
bb73:
  %t271 = load ptr, ptr %l0, !tbaa !29
  %t272 = load ptr, ptr %l14, !tbaa !29
  call void @compiler_2fneeds_2ecompiler_2fneeds_3awalker_2eexpr(ptr %v0, ptr %v1, ptr %t271, ptr %t272)
  br label %bb74
bb74:
  %t276 = load ptr, ptr %l0, !tbaa !29
  %t277 = load { i64, ptr }, ptr %l15, !tbaa !27
  call void @compiler_2fneeds_2ecompiler_2fneeds_3awalker_2ecatches(ptr %v0, ptr %v1, ptr %t276, { i64, ptr } %t277)
  br label %bb75
bb75:
  br label %bb104
bb76:
  %t280 = load ptr, ptr %l1, !tbaa !29
  store ptr %t280, ptr %l140, !tbaa !29
  store i1 false, ptr %l141, !tbaa !21
  %t281 = load ptr, ptr %l140, !tbaa !29
  %t282 = icmp ne ptr %t281, null
  br i1 %t282, label %bb77, label %bb78
bb77:
  %t284 = load ptr, ptr %l140, !tbaa !29
  %t285 = load i64, ptr %t284, !range !{i64 0, i64 30}
  %t287 = icmp eq i64 %t285, 23
  store i1 %t287, ptr %l141, !tbaa !21
  br label %bb78
bb78:
  %t288 = load i1, ptr %l141, !tbaa !21
  br i1 %t288, label %bb79, label %bb80
bb79:
  %t289 = load ptr, ptr %l1, !tbaa !29
  %t291 = getelementptr { i64, [4 x i64] }, ptr %t289, i32 0, i32 1
  %t292 = getelementptr { %"compiler/source:Span", ptr }, ptr %t291, i32 0, i32 1
  %t293 = load ptr, ptr %t292
  store ptr %t293, ptr %l16, !tbaa !29
  br label %bb81
bb80:
  br label %bb83
bb81:
  %t295 = load ptr, ptr %l0, !tbaa !29
  %t296 = load ptr, ptr %l16, !tbaa !29
  call void @compiler_2fneeds_2ecompiler_2fneeds_3awalker_2ematchOf(ptr %v0, ptr %v1, ptr %t295, ptr %t296)
  br label %bb82
bb82:
  br label %bb104
bb83:
  %t299 = load ptr, ptr %l1, !tbaa !29
  store ptr %t299, ptr %l148, !tbaa !29
  store i1 false, ptr %l149, !tbaa !21
  %t300 = load ptr, ptr %l148, !tbaa !29
  %t301 = icmp ne ptr %t300, null
  br i1 %t301, label %bb84, label %bb85
bb84:
  %t303 = load ptr, ptr %l148, !tbaa !29
  %t304 = load i64, ptr %t303, !range !{i64 0, i64 30}
  %t306 = icmp eq i64 %t304, 19
  store i1 %t306, ptr %l149, !tbaa !21
  br label %bb85
bb85:
  %t307 = load i1, ptr %l149, !tbaa !21
  br i1 %t307, label %bb86, label %bb87
bb86:
  %t308 = load ptr, ptr %l1, !tbaa !29
  %t310 = getelementptr { i64, [4 x i64] }, ptr %t308, i32 0, i32 1
  %t311 = getelementptr { %"compiler/source:Span", ptr }, ptr %t310, i32 0, i32 1
  %t312 = load ptr, ptr %t311
  store ptr %t312, ptr %l17, !tbaa !29
  br label %bb88
bb87:
  br label %bb92
bb88:
  %t314 = load ptr, ptr %l0, !tbaa !29
  %t315 = load ptr, ptr %l17, !tbaa !29
  %t317 = getelementptr %"compiler/ast:Compr", ptr %t315, i32 0, i32 4
  %t318 = load ptr, ptr %t317, !tbaa !29
  call void @compiler_2fneeds_2ecompiler_2fneeds_3awalker_2eexpr(ptr %v0, ptr %v1, ptr %t314, ptr %t318)
  br label %bb89
bb89:
  %t322 = load ptr, ptr %l0, !tbaa !29
  %t323 = load ptr, ptr %l17, !tbaa !29
  %t325 = getelementptr %"compiler/ast:Compr", ptr %t323, i32 0, i32 1
  %t326 = load ptr, ptr %t325, !tbaa !29
  call void @compiler_2fneeds_2ecompiler_2fneeds_3awalker_2eexpr(ptr %v0, ptr %v1, ptr %t322, ptr %t326)
  br label %bb90
bb90:
  %t330 = load ptr, ptr %l0, !tbaa !29
  %t331 = load ptr, ptr %l17, !tbaa !29
  %t333 = getelementptr %"compiler/ast:Compr", ptr %t331, i32 0, i32 5
  %t334 = load ptr, ptr %t333, !tbaa !29
  call void @compiler_2fneeds_2ecompiler_2fneeds_3awalker_2eexpr(ptr %v0, ptr %v1, ptr %t330, ptr %t334)
  br label %bb91
bb91:
  br label %bb104
bb92:
  %t337 = load ptr, ptr %l1, !tbaa !29
  store ptr %t337, ptr %l165, !tbaa !29
  store i1 false, ptr %l166, !tbaa !21
  %t338 = load ptr, ptr %l165, !tbaa !29
  %t339 = icmp ne ptr %t338, null
  br i1 %t339, label %bb93, label %bb94
bb93:
  %t341 = load ptr, ptr %l165, !tbaa !29
  %t342 = load i64, ptr %t341, !range !{i64 0, i64 30}
  %t344 = icmp eq i64 %t342, 27
  store i1 %t344, ptr %l166, !tbaa !21
  br label %bb94
bb94:
  %t345 = load i1, ptr %l166, !tbaa !21
  br i1 %t345, label %bb95, label %bb96
bb95:
  %t346 = load ptr, ptr %l1, !tbaa !29
  %t348 = getelementptr { i64, [4 x i64] }, ptr %t346, i32 0, i32 1
  %t349 = getelementptr { %"compiler/source:Span", ptr }, ptr %t348, i32 0, i32 1
  %t350 = load ptr, ptr %t349
  store ptr %t350, ptr %l18, !tbaa !29
  br label %bb97
bb96:
  br label %bb99
bb97:
  %t352 = load ptr, ptr %l0, !tbaa !29
  %t353 = load ptr, ptr %l18, !tbaa !29
  call void @compiler_2fneeds_2ecompiler_2fneeds_3awalker_2eexpr(ptr %v0, ptr %v1, ptr %t352, ptr %t353)
  br label %bb98
bb98:
  br label %bb104
bb99:
  br i1 true, label %bb100, label %bb101
bb100:
  br label %bb102
bb101:
  br label %bb103
bb102:
  br label %bb104
bb103:
  call void @__olang_check_failed(ptr @olang_loc_9f3ed7f83038a02_b8cf4e04baa63c1e)
  unreachable
bb104:
  br label %ret
ret:
  ret void
}

define dso_local i1 @compiler_2fneeds_2ecompiler_2fneeds_3awalker_2ereflects(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i32
  %l3 = alloca ptr
  %l4 = alloca ptr
  %l5 = alloca ptr
  %l6 = alloca ptr
  %l7 = alloca ptr
  %l8 = alloca { i64, ptr }
  %l9 = alloca { i64, ptr }
  %l10 = alloca i64
  %l11 = alloca i64
  %l16 = alloca ptr
  %l17 = alloca i1
  %l20 = alloca i1
  %l22 = alloca ptr
  %l23 = alloca i1
  %l32 = alloca i1
  %l33 = alloca ptr
  %l34 = alloca i1
  %l42 = alloca i1
  %l43 = alloca ptr
  %l44 = alloca i1
  %l54 = alloca i1
  %l55 = alloca i1
  %l59 = alloca i1
  %l60 = alloca ptr
  %l61 = alloca i1
  %l66 = alloca ptr
  %l67 = alloca i1
  %l75 = alloca i1
  %l76 = alloca ptr
  %l77 = alloca i1
  %l87 = alloca i1
  %l96 = alloca { i64, ptr }
  %l102 = alloca i1
  %rv = alloca i1
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
  store i1 false, ptr %rv
  br label %ret
bb2:
  br label %bb3
bb3:
  %t6 = load ptr, ptr %l1, !tbaa !29
  store ptr %t6, ptr %l16, !tbaa !29
  store i1 false, ptr %l17, !tbaa !21
  %t7 = load ptr, ptr %l16, !tbaa !29
  %t8 = icmp ne ptr %t7, null
  br i1 %t8, label %bb4, label %bb5
bb4:
  %t10 = load ptr, ptr %l16, !tbaa !29
  %t11 = load i64, ptr %t10, !range !{i64 0, i64 30}
  %t13 = icmp eq i64 %t11, 14
  store i1 %t13, ptr %l17, !tbaa !21
  br label %bb5
bb5:
  %t14 = load i1, ptr %l17, !tbaa !21
  br i1 %t14, label %bb6, label %bb7
bb6:
  %t15 = load ptr, ptr %l1, !tbaa !29
  %t17 = getelementptr { i64, [4 x i64] }, ptr %t15, i32 0, i32 1
  %t18 = getelementptr { %"compiler/source:Span", ptr, i32 }, ptr %t17, i32 0, i32 1
  %t19 = load ptr, ptr %t18
  store ptr %t19, ptr %l22, !tbaa !29
  store i1 false, ptr %l23, !tbaa !21
  %t20 = load ptr, ptr %l22, !tbaa !29
  %t21 = icmp ne ptr %t20, null
  br i1 %t21, label %bb8, label %bb9
bb7:
  store i1 false, ptr %l20, !tbaa !21
  br label %bb10
bb8:
  %t23 = load ptr, ptr %l22, !tbaa !29
  %t24 = load i64, ptr %t23, !range !{i64 0, i64 30}
  %t26 = icmp eq i64 %t24, 0
  store i1 %t26, ptr %l23, !tbaa !21
  br label %bb9
bb9:
  %t27 = load i1, ptr %l23, !tbaa !21
  store i1 %t27, ptr %l20, !tbaa !21
  br label %bb10
bb10:
  %t28 = load i1, ptr %l20, !tbaa !21
  br i1 %t28, label %bb11, label %bb12
bb11:
  %t29 = load ptr, ptr %l1, !tbaa !29
  %t31 = getelementptr { i64, [4 x i64] }, ptr %t29, i32 0, i32 1
  %t32 = getelementptr { %"compiler/source:Span", ptr, i32 }, ptr %t31, i32 0, i32 1
  %t33 = load ptr, ptr %t32
  %t35 = getelementptr { i64, [4 x i64] }, ptr %t33, i32 0, i32 1
  %t36 = getelementptr { %"compiler/source:Span", i32 }, ptr %t35, i32 0, i32 1
  %t37 = load i32, ptr %t36
  store i32 %t37, ptr %l2, !tbaa !23
  br label %bb13
bb12:
  br label %bb15
bb13:
  %t39 = load ptr, ptr %l0, !tbaa !29
  %t41 = getelementptr %"compiler/needs:walker", ptr %t39, i32 0, i32 4
  %t42 = load i32, ptr %l2, !tbaa !23
  %t45 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fsource_3aNameId_2c_20I64_3e_Hf575c52a5a9e8993bae2b73c9c2548b3(ptr %v0, ptr %t41, i32 %t42)
  store i1 %t45, ptr %l32
  br label %bb14
bb14:
  %t46 = load i1, ptr %l32, !tbaa !21
  store i1 %t46, ptr %rv
  br label %ret
bb15:
  %t47 = load ptr, ptr %l1, !tbaa !29
  store ptr %t47, ptr %l33, !tbaa !29
  store i1 false, ptr %l34, !tbaa !21
  %t48 = load ptr, ptr %l33, !tbaa !29
  %t49 = icmp ne ptr %t48, null
  br i1 %t49, label %bb16, label %bb17
bb16:
  %t51 = load ptr, ptr %l33, !tbaa !29
  %t52 = load i64, ptr %t51, !range !{i64 0, i64 30}
  %t54 = icmp eq i64 %t52, 14
  store i1 %t54, ptr %l34, !tbaa !21
  br label %bb17
bb17:
  %t55 = load i1, ptr %l34, !tbaa !21
  br i1 %t55, label %bb18, label %bb19
bb18:
  %t56 = load ptr, ptr %l1, !tbaa !29
  %t58 = getelementptr { i64, [4 x i64] }, ptr %t56, i32 0, i32 1
  %t59 = getelementptr { %"compiler/source:Span", ptr, i32 }, ptr %t58, i32 0, i32 1
  %t60 = load ptr, ptr %t59
  store ptr %t60, ptr %l3, !tbaa !29
  br label %bb20
bb19:
  br label %bb22
bb20:
  %t62 = load ptr, ptr %l0, !tbaa !29
  %t63 = load ptr, ptr %l3, !tbaa !29
  %t67 = call i1 @compiler_2fneeds_2ecompiler_2fneeds_3awalker_2ereflects(ptr %v0, ptr %v1, ptr %t62, ptr %t63)
  store i1 %t67, ptr %l42
  br label %bb21
bb21:
  %t68 = load i1, ptr %l42, !tbaa !21
  store i1 %t68, ptr %rv
  br label %ret
bb22:
  %t69 = load ptr, ptr %l1, !tbaa !29
  store ptr %t69, ptr %l43, !tbaa !29
  store i1 false, ptr %l44, !tbaa !21
  %t70 = load ptr, ptr %l43, !tbaa !29
  %t71 = icmp ne ptr %t70, null
  br i1 %t71, label %bb23, label %bb24
bb23:
  %t73 = load ptr, ptr %l43, !tbaa !29
  %t74 = load i64, ptr %t73, !range !{i64 0, i64 30}
  %t76 = icmp eq i64 %t74, 5
  store i1 %t76, ptr %l44, !tbaa !21
  br label %bb24
bb24:
  %t77 = load i1, ptr %l44, !tbaa !21
  br i1 %t77, label %bb25, label %bb26
bb25:
  %t78 = load ptr, ptr %l1, !tbaa !29
  %t80 = getelementptr { i64, [4 x i64] }, ptr %t78, i32 0, i32 1
  %t81 = getelementptr { %"compiler/source:Span", i32, ptr, ptr }, ptr %t80, i32 0, i32 2
  %t82 = load ptr, ptr %t81
  store ptr %t82, ptr %l4, !tbaa !29
  %t84 = load ptr, ptr %l1, !tbaa !29
  %t86 = getelementptr { i64, [4 x i64] }, ptr %t84, i32 0, i32 1
  %t87 = getelementptr { %"compiler/source:Span", i32, ptr, ptr }, ptr %t86, i32 0, i32 3
  %t88 = load ptr, ptr %t87
  store ptr %t88, ptr %l5, !tbaa !29
  br label %bb27
bb26:
  br label %bb33
bb27:
  %t90 = load ptr, ptr %l0, !tbaa !29
  %t91 = load ptr, ptr %l4, !tbaa !29
  %t95 = call i1 @compiler_2fneeds_2ecompiler_2fneeds_3awalker_2ereflects(ptr %v0, ptr %v1, ptr %t90, ptr %t91)
  store i1 %t95, ptr %l54
  br label %bb28
bb28:
  %t96 = load i1, ptr %l54, !tbaa !21
  br i1 %t96, label %bb29, label %bb30
bb29:
  store i1 true, ptr %l55, !tbaa !21
  br label %bb32
bb30:
  %t97 = load ptr, ptr %l0, !tbaa !29
  %t98 = load ptr, ptr %l5, !tbaa !29
  %t102 = call i1 @compiler_2fneeds_2ecompiler_2fneeds_3awalker_2ereflects(ptr %v0, ptr %v1, ptr %t97, ptr %t98)
  store i1 %t102, ptr %l59
  br label %bb31
bb31:
  %t103 = load i1, ptr %l59, !tbaa !21
  store i1 %t103, ptr %l55, !tbaa !21
  br label %bb32
bb32:
  %t104 = load i1, ptr %l55, !tbaa !21
  store i1 %t104, ptr %rv
  br label %ret
bb33:
  %t105 = load ptr, ptr %l1, !tbaa !29
  store ptr %t105, ptr %l60, !tbaa !29
  store i1 false, ptr %l61, !tbaa !21
  %t106 = load ptr, ptr %l60, !tbaa !29
  %t107 = icmp ne ptr %t106, null
  br i1 %t107, label %bb34, label %bb35
bb34:
  %t109 = load ptr, ptr %l60, !tbaa !29
  %t110 = load i64, ptr %t109, !range !{i64 0, i64 30}
  %t112 = icmp eq i64 %t110, 3
  store i1 %t112, ptr %l61, !tbaa !21
  br label %bb35
bb35:
  %t113 = load i1, ptr %l61, !tbaa !21
  br i1 %t113, label %bb36, label %bb37
bb36:
  %t114 = load ptr, ptr %l1, !tbaa !29
  %t116 = getelementptr { i64, [4 x i64] }, ptr %t114, i32 0, i32 1
  %t117 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t116, i32 0, i32 2
  %t118 = load ptr, ptr %t117
  store ptr %t118, ptr %l6, !tbaa !29
  br label %bb42
bb37:
  %t120 = load ptr, ptr %l1, !tbaa !29
  store ptr %t120, ptr %l66, !tbaa !29
  store i1 false, ptr %l67, !tbaa !21
  %t121 = load ptr, ptr %l66, !tbaa !29
  %t122 = icmp ne ptr %t121, null
  br i1 %t122, label %bb38, label %bb39
bb38:
  %t124 = load ptr, ptr %l66, !tbaa !29
  %t125 = load i64, ptr %t124, !range !{i64 0, i64 30}
  %t127 = icmp eq i64 %t125, 2
  store i1 %t127, ptr %l67, !tbaa !21
  br label %bb39
bb39:
  %t128 = load i1, ptr %l67, !tbaa !21
  br i1 %t128, label %bb40, label %bb41
bb40:
  %t129 = load ptr, ptr %l1, !tbaa !29
  %t131 = getelementptr { i64, [4 x i64] }, ptr %t129, i32 0, i32 1
  %t132 = getelementptr { %"compiler/source:Span", ptr }, ptr %t131, i32 0, i32 1
  %t133 = load ptr, ptr %t132
  store ptr %t133, ptr %l6, !tbaa !29
  br label %bb42
bb41:
  br label %bb44
bb42:
  %t135 = load ptr, ptr %l0, !tbaa !29
  %t136 = load ptr, ptr %l6, !tbaa !29
  %t140 = call i1 @compiler_2fneeds_2ecompiler_2fneeds_3awalker_2ereflects(ptr %v0, ptr %v1, ptr %t135, ptr %t136)
  store i1 %t140, ptr %l75
  br label %bb43
bb43:
  %t141 = load i1, ptr %l75, !tbaa !21
  store i1 %t141, ptr %rv
  br label %ret
bb44:
  %t142 = load ptr, ptr %l1, !tbaa !29
  store ptr %t142, ptr %l76, !tbaa !29
  store i1 false, ptr %l77, !tbaa !21
  %t143 = load ptr, ptr %l76, !tbaa !29
  %t144 = icmp ne ptr %t143, null
  br i1 %t144, label %bb45, label %bb46
bb45:
  %t146 = load ptr, ptr %l76, !tbaa !29
  %t147 = load i64, ptr %t146, !range !{i64 0, i64 30}
  %t149 = icmp eq i64 %t147, 12
  store i1 %t149, ptr %l77, !tbaa !21
  br label %bb46
bb46:
  %t150 = load i1, ptr %l77, !tbaa !21
  br i1 %t150, label %bb47, label %bb48
bb47:
  %t151 = load ptr, ptr %l1, !tbaa !29
  %t153 = getelementptr { i64, [4 x i64] }, ptr %t151, i32 0, i32 1
  %t154 = getelementptr { %"compiler/source:Span", ptr, { i64, ptr } }, ptr %t153, i32 0, i32 1
  %t155 = load ptr, ptr %t154
  store ptr %t155, ptr %l7, !tbaa !29
  %t157 = load ptr, ptr %l1, !tbaa !29
  %t159 = getelementptr { i64, [4 x i64] }, ptr %t157, i32 0, i32 1
  %t160 = getelementptr { %"compiler/source:Span", ptr, { i64, ptr } }, ptr %t159, i32 0, i32 2
  %t161 = load { i64, ptr }, ptr %t160
  store { i64, ptr } %t161, ptr %l8, !tbaa !27
  br label %bb49
bb48:
  br label %bb64
bb49:
  %t163 = load ptr, ptr %l0, !tbaa !29
  %t164 = load ptr, ptr %l7, !tbaa !29
  %t168 = call i1 @compiler_2fneeds_2ecompiler_2fneeds_3awalker_2ereflects(ptr %v0, ptr %v1, ptr %t163, ptr %t164)
  store i1 %t168, ptr %l87
  br label %bb50
bb50:
  %t169 = load i1, ptr %l87, !tbaa !21
  br i1 %t169, label %bb51, label %bb52
bb51:
  store i1 true, ptr %rv
  br label %ret
bb52:
  br label %bb53
bb53:
  %t171 = load { i64, ptr }, ptr %l8, !tbaa !27
  store { i64, ptr } %t171, ptr %l9, !tbaa !27
  store i64 0, ptr %l10, !tbaa !24
  %t173 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t175 = extractvalue { i64, ptr } %t173, 0
  store i64 %t175, ptr %l11, !tbaa !24
  br label %bb54
bb54:
  %t177 = load i64, ptr %l10, !tbaa !24
  %t178 = load i64, ptr %l11, !tbaa !24
  %t181 = icmp slt i64 %t177, %t178
  %t183 = xor i1 %t181, true
  br i1 %t183, label %bb55, label %bb56
bb55:
  br label %bb63
bb56:
  br label %bb57
bb57:
  %t185 = load { i64, ptr }, ptr %l9, !tbaa !27
  store { i64, ptr } %t185, ptr %l96, !tbaa !27
  %t186 = load i64, ptr %l10, !tbaa !24
  %t188 = getelementptr { i64, ptr }, ptr %l96, i32 0, i32 1
  %t189 = load ptr, ptr %t188, !tbaa !27
  %t190 = getelementptr ptr, ptr %t189, i64 %t186
  %t191 = load ptr, ptr %t190, !tbaa !39
  %t193 = load ptr, ptr %l0, !tbaa !29
  %t198 = call i1 @compiler_2fneeds_2ecompiler_2fneeds_3awalker_2ereflects(ptr %v0, ptr %v1, ptr %t193, ptr %t191)
  store i1 %t198, ptr %l102
  br label %bb58
bb58:
  %t199 = load i1, ptr %l102, !tbaa !21
  br i1 %t199, label %bb59, label %bb60
bb59:
  store i1 true, ptr %rv
  br label %ret
bb60:
  br label %bb61
bb61:
  br label %bb62
bb62:
  %t201 = load i64, ptr %l10, !tbaa !24
  %t203 = add i64 %t201, 1
  store i64 %t203, ptr %l10, !tbaa !24
  br label %bb54
bb63:
  store i1 false, ptr %rv
  br label %ret
bb64:
  br i1 true, label %bb65, label %bb66
bb65:
  br label %bb67
bb66:
  br label %bb68
bb67:
  store i1 false, ptr %rv
  br label %ret
bb68:
  call void @__olang_check_failed(ptr @olang_loc_fa47b13b1fa62ba2_f81ee9a5bb5727e6)
  unreachable
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local void @compiler_2fneeds_2ecompiler_2fneeds_3awalker_2erun(ptr %v0, ptr %a0) #0 {
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
  %l9 = alloca { i64, ptr }
  %l10 = alloca i64
  %l11 = alloca i64
  %l12 = alloca ptr
  %l15 = alloca i64
  %l21 = alloca ptr
  %l22 = alloca ptr
  %l27 = alloca ptr
  %l33 = alloca i64
  %l34 = alloca ptr
  %l41 = alloca i64
  %l45 = alloca i64
  %l48 = alloca i64
  %l67 = alloca ptr
  %l68 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l74 = alloca i1
  %l77 = alloca ptr
  %l83 = alloca %"compiler/generic:varRow"
  %l90 = alloca i64
  %l96 = alloca ptr
  %l103 = alloca i32
  %l120 = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/needs:walker", ptr %t1, i32 0, i32 1
  %t4 = load i64, ptr %t3, !tbaa !24
  %t6 = call i64 @compiler_2fgeneric_2eFnOwner(i64 %t4)
  store i64 %t6, ptr %l15
  br label %bb1
bb1:
  %t7 = load i64, ptr %l15, !tbaa !24
  store i64 %t7, ptr %l1, !tbaa !24
  %t8 = load ptr, ptr %l0, !tbaa !29
  %t10 = getelementptr %"compiler/needs:walker", ptr %t8, i32 0, i32 0
  %t11 = load ptr, ptr %t10, !tbaa !29
  %t13 = getelementptr %"compiler/check:Checker", ptr %t11, i32 0, i32 1
  %t14 = load ptr, ptr %t13, !tbaa !29
  %t15 = load ptr, ptr %l0, !tbaa !29
  %t17 = getelementptr %"compiler/needs:walker", ptr %t15, i32 0, i32 1
  %t18 = load i64, ptr %t17, !tbaa !24
  %t21 = call ptr @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnDecl(ptr %v0, ptr %v0, ptr %t14, i64 %t18)
  store ptr %t21, ptr %l21
  br label %bb2
bb2:
  %t22 = load ptr, ptr %l21, !tbaa !29
  store ptr %t22, ptr %l2, !tbaa !29
  %t23 = load ptr, ptr %l0, !tbaa !29
  store ptr %t23, ptr %l22, !tbaa !29
  %t24 = load ptr, ptr %l0, !tbaa !29
  %t26 = getelementptr %"compiler/needs:walker", ptr %t24, i32 0, i32 0
  %t27 = load ptr, ptr %t26, !tbaa !29
  %t29 = getelementptr %"compiler/check:Checker", ptr %t27, i32 0, i32 1
  %t30 = load ptr, ptr %t29, !tbaa !29
  %t32 = getelementptr %"compiler/generic:Program", ptr %t30, i32 0, i32 0
  %t33 = load ptr, ptr %t32, !tbaa !29
  %t35 = getelementptr %"compiler/load:Loader", ptr %t33, i32 0, i32 10
  store ptr %t35, ptr %l27, !tbaa !29
  %t36 = load ptr, ptr %l0, !tbaa !29
  %t38 = getelementptr %"compiler/needs:walker", ptr %t36, i32 0, i32 0
  %t39 = load ptr, ptr %t38, !tbaa !29
  %t41 = getelementptr %"compiler/check:Checker", ptr %t39, i32 0, i32 1
  %t42 = load ptr, ptr %t41, !tbaa !29
  %t43 = load ptr, ptr %l0, !tbaa !29
  %t45 = getelementptr %"compiler/needs:walker", ptr %t43, i32 0, i32 1
  %t46 = load i64, ptr %t45, !tbaa !24
  %t49 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnModule(ptr %v0, ptr %t42, i64 %t46)
  store i64 %t49, ptr %l33
  br label %bb3
bb3:
  %t50 = load ptr, ptr %l27, !tbaa !29
  %t51 = load i64, ptr %l33, !tbaa !24
  %t52 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H7bcf2aeb09afa796f4333e6ec8c3f63f(ptr %v0, ptr %v0, ptr %t50, i64 %t51)
  store ptr %t52, ptr %l34
  br label %bb4
bb4:
  %t53 = load ptr, ptr %l34, !tbaa !29
  %t55 = getelementptr %"compiler/load:Module", ptr %t53, i32 0, i32 4
  %t56 = load i64, ptr %t55, !tbaa !24
  %t58 = load ptr, ptr %l22, !tbaa !29
  %t59 = getelementptr %"compiler/needs:walker", ptr %t58, i32 0, i32 3
  store i64 %t56, ptr %t59, !tbaa !24
  store i64 0, ptr %l3, !tbaa !24
  %t60 = load ptr, ptr %l0, !tbaa !29
  %t62 = getelementptr %"compiler/needs:walker", ptr %t60, i32 0, i32 0
  %t63 = load ptr, ptr %t62, !tbaa !29
  %t65 = getelementptr %"compiler/check:Checker", ptr %t63, i32 0, i32 1
  %t66 = load ptr, ptr %t65, !tbaa !29
  %t67 = load i64, ptr %l1, !tbaa !24
  %t70 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eVarCount(ptr %v0, ptr %t66, i64 %t67)
  store i64 %t70, ptr %l41
  br label %bb5
bb5:
  %t71 = load i64, ptr %l41, !tbaa !24
  store i64 %t71, ptr %l4, !tbaa !24
  store i64 1, ptr %l5, !tbaa !24
  %t72 = load i64, ptr %l4, !tbaa !24
  %t73 = load i64, ptr %l3, !tbaa !24
  %t76 = icmp sgt i64 %t72, %t73
  br i1 %t76, label %bb6, label %bb7
bb6:
  %t78 = load i64, ptr %l5, !tbaa !24
  %t80 = icmp sgt i64 %t78, 0
  br i1 %t80, label %bb8, label %bb9
bb7:
  store i64 0, ptr %l45, !tbaa !24
  br label %bb11
bb8:
  %t82 = load i64, ptr %l4, !tbaa !24
  %t83 = load i64, ptr %l3, !tbaa !24
  %t86 = sub i64 %t82, %t83
  %t87 = load i64, ptr %l5, !tbaa !24
  %t90 = add i64 %t86, %t87
  %t92 = sub i64 %t90, 1
  %t93 = load i64, ptr %l5, !tbaa !24
  %t96 = sdiv i64 %t92, %t93
  store i64 %t96, ptr %l48, !tbaa !24
  br label %bb10
bb9:
  store i64 0, ptr %l48, !tbaa !24
  br label %bb10
bb10:
  %t98 = load i64, ptr %l48, !tbaa !24
  store i64 %t98, ptr %l45, !tbaa !24
  br label %bb11
bb11:
  %t99 = load i64, ptr %l45, !tbaa !24
  store i64 %t99, ptr %l6, !tbaa !24
  store i64 0, ptr %l7, !tbaa !24
  br label %bb12
bb12:
  %t100 = load i64, ptr %l7, !tbaa !24
  %t101 = load i64, ptr %l6, !tbaa !24
  %t104 = icmp slt i64 %t100, %t101
  %t106 = xor i1 %t104, true
  br i1 %t106, label %bb13, label %bb14
bb13:
  br label %bb25
bb14:
  br label %bb15
bb15:
  %t108 = load i64, ptr %l3, !tbaa !24
  %t109 = load i64, ptr %l7, !tbaa !24
  %t110 = load i64, ptr %l5, !tbaa !24
  %t113 = mul i64 %t109, %t110
  %t116 = add i64 %t108, %t113
  store i64 %t116, ptr %l8, !tbaa !24
  %t118 = load ptr, ptr %l0, !tbaa !29
  %t120 = getelementptr %"compiler/needs:walker", ptr %t118, i32 0, i32 7
  store ptr %t120, ptr %l67, !tbaa !29
  %t121 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2ector(ptr %v0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t121, ptr %l68
  br label %bb16
bb16:
  %t122 = load ptr, ptr %l67, !tbaa !29
  %t123 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l68
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2fvec_3aVec_3cstd_2fprel_H40771be639b3022d183b79789a9eab56(ptr %v0, ptr %v0, ptr %t122, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t123)
  br label %bb17
bb17:
  %t124 = load ptr, ptr %l0, !tbaa !29
  %t126 = getelementptr %"compiler/needs:walker", ptr %t124, i32 0, i32 0
  %t127 = load ptr, ptr %t126, !tbaa !29
  %t129 = getelementptr %"compiler/check:Checker", ptr %t127, i32 0, i32 1
  %t130 = load ptr, ptr %t129, !tbaa !29
  %t131 = load i64, ptr %l1, !tbaa !24
  %t132 = load i64, ptr %l8, !tbaa !24
  %t136 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eErrVarAt(ptr %v0, ptr %t130, i64 %t131, i64 %t132)
  store i1 %t136, ptr %l74
  br label %bb18
bb18:
  %t137 = load i1, ptr %l74, !tbaa !21
  %t138 = xor i1 %t137, true
  br i1 %t138, label %bb19, label %bb20
bb19:
  %t140 = load ptr, ptr %l0, !tbaa !29
  %t142 = getelementptr %"compiler/needs:walker", ptr %t140, i32 0, i32 4
  store ptr %t142, ptr %l77, !tbaa !29
  %t143 = load ptr, ptr %l0, !tbaa !29
  %t145 = getelementptr %"compiler/needs:walker", ptr %t143, i32 0, i32 0
  %t146 = load ptr, ptr %t145, !tbaa !29
  %t148 = getelementptr %"compiler/check:Checker", ptr %t146, i32 0, i32 1
  %t149 = load ptr, ptr %t148, !tbaa !29
  %t150 = load i64, ptr %l1, !tbaa !24
  %t151 = load i64, ptr %l8, !tbaa !24
  %t155 = call %"compiler/generic:varRow" @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eVarAt(ptr %v0, ptr %t149, i64 %t150, i64 %t151)
  store %"compiler/generic:varRow" %t155, ptr %l83
  br label %bb21
bb20:
  br label %bb23
bb21:
  %t156 = getelementptr %"compiler/generic:varRow", ptr %l83, i32 0, i32 1
  %t157 = load i32, ptr %t156, !tbaa !23
  %t158 = load i64, ptr %l8, !tbaa !24
  %t159 = load ptr, ptr %l77, !tbaa !29
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fsource_3aNameId_2c_20I64_3e_H862756c16d115e5c03a79726209f69fa(ptr %v0, ptr %t159, i32 %t157, i64 %t158)
  br label %bb22
bb22:
  br label %bb23
bb23:
  br label %bb24
bb24:
  %t162 = load i64, ptr %l7, !tbaa !24
  %t164 = add i64 %t162, 1
  store i64 %t164, ptr %l7, !tbaa !24
  br label %bb12
bb25:
  %t166 = load ptr, ptr %l0, !tbaa !29
  %t168 = getelementptr %"compiler/needs:walker", ptr %t166, i32 0, i32 4
  %t170 = call i64 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fsource_3aNameId_2c_20I64_3e_H51b81a00fa8bf5fab3fd9fdb4d8e9d32(ptr %v0, ptr %t168)
  store i64 %t170, ptr %l90
  br label %bb26
bb26:
  %t171 = load i64, ptr %l90, !tbaa !24
  %t172 = icmp eq i64 %t171, 0
  br i1 %t172, label %bb27, label %bb28
bb27:
  br label %ret
bb28:
  br label %bb29
bb29:
  %t174 = load ptr, ptr %l2, !tbaa !29
  %t176 = getelementptr %"compiler/ast:Func", ptr %t174, i32 0, i32 1
  %t177 = load ptr, ptr %t176, !tbaa !29
  %t179 = icmp eq ptr %t177, null
  %t181 = xor i1 %t179, true
  br i1 %t181, label %bb30, label %bb31
bb30:
  %t183 = load ptr, ptr %l0, !tbaa !29
  store ptr %t183, ptr %l96, !tbaa !29
  %t184 = load ptr, ptr %l2, !tbaa !29
  %t186 = getelementptr %"compiler/ast:Func", ptr %t184, i32 0, i32 1
  %t187 = load ptr, ptr %t186, !tbaa !29
  %t189 = icmp eq ptr %t187, null
  br i1 %t189, label %bb32, label %bb33
bb31:
  br label %bb39
bb32:
  call void @__olang_check_failed(ptr @olang_loc_7062293b76b04d1c_de3e9d47303f78c0)
  unreachable
bb33:
  br label %bb34
bb34:
  %t191 = load ptr, ptr %l2, !tbaa !29
  %t193 = getelementptr %"compiler/ast:Func", ptr %t191, i32 0, i32 1
  %t194 = load ptr, ptr %t193, !tbaa !29
  %t197 = getelementptr %"compiler/ast:Param", ptr %t194, i32 0, i32 1
  %t198 = load i32, ptr %t197, !tbaa !23
  store i32 %t198, ptr %l103, !tbaa !23
  %t199 = load ptr, ptr %l2, !tbaa !29
  %t201 = getelementptr %"compiler/ast:Func", ptr %t199, i32 0, i32 1
  %t202 = load ptr, ptr %t201, !tbaa !29
  %t204 = icmp eq ptr %t202, null
  br i1 %t204, label %bb35, label %bb36
bb35:
  call void @__olang_check_failed(ptr @olang_loc_7062293b76b04d1c_de3e9d47303f78c0)
  unreachable
bb36:
  br label %bb37
bb37:
  %t206 = load ptr, ptr %l2, !tbaa !29
  %t208 = getelementptr %"compiler/ast:Func", ptr %t206, i32 0, i32 1
  %t209 = load ptr, ptr %t208, !tbaa !29
  %t212 = getelementptr %"compiler/ast:Param", ptr %t209, i32 0, i32 2
  %t213 = load ptr, ptr %t212, !tbaa !29
  %t214 = load ptr, ptr %l96, !tbaa !29
  %t215 = load i32, ptr %l103, !tbaa !23
  call void @compiler_2fneeds_2ecompiler_2fneeds_3awalker_2eparam(ptr %v0, ptr %v0, ptr %t214, i32 %t215, ptr %t213)
  br label %bb38
bb38:
  br label %bb39
bb39:
  %t217 = load ptr, ptr %l2, !tbaa !29
  %t219 = getelementptr %"compiler/ast:Func", ptr %t217, i32 0, i32 3
  %t220 = load ptr, ptr %t219, !tbaa !29
  %t222 = getelementptr %"compiler/ast:Sig", ptr %t220, i32 0, i32 0
  %t223 = load { i64, ptr }, ptr %t222, !tbaa !27
  store { i64, ptr } %t223, ptr %l9, !tbaa !27
  store i64 0, ptr %l10, !tbaa !24
  %t225 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t227 = extractvalue { i64, ptr } %t225, 0
  store i64 %t227, ptr %l11, !tbaa !24
  br label %bb40
bb40:
  %t229 = load i64, ptr %l10, !tbaa !24
  %t230 = load i64, ptr %l11, !tbaa !24
  %t233 = icmp slt i64 %t229, %t230
  %t235 = xor i1 %t233, true
  br i1 %t235, label %bb41, label %bb42
bb41:
  br label %bb46
bb42:
  br label %bb43
bb43:
  %t237 = load { i64, ptr }, ptr %l9, !tbaa !27
  store { i64, ptr } %t237, ptr %l120, !tbaa !27
  %t238 = load i64, ptr %l10, !tbaa !24
  %t240 = getelementptr { i64, ptr }, ptr %l120, i32 0, i32 1
  %t241 = load ptr, ptr %t240, !tbaa !27
  %t242 = getelementptr ptr, ptr %t241, i64 %t238
  %t243 = load ptr, ptr %t242, !tbaa !39
  store ptr %t243, ptr %l12, !tbaa !29
  %t245 = load ptr, ptr %l0, !tbaa !29
  %t246 = load ptr, ptr %l12, !tbaa !29
  %t248 = getelementptr %"compiler/ast:Param", ptr %t246, i32 0, i32 1
  %t249 = load i32, ptr %t248, !tbaa !23
  %t250 = load ptr, ptr %l12, !tbaa !29
  %t252 = getelementptr %"compiler/ast:Param", ptr %t250, i32 0, i32 2
  %t253 = load ptr, ptr %t252, !tbaa !29
  call void @compiler_2fneeds_2ecompiler_2fneeds_3awalker_2eparam(ptr %v0, ptr %v0, ptr %t245, i32 %t249, ptr %t253)
  br label %bb44
bb44:
  br label %bb45
bb45:
  %t257 = load i64, ptr %l10, !tbaa !24
  %t259 = add i64 %t257, 1
  store i64 %t259, ptr %l10, !tbaa !24
  br label %bb40
bb46:
  %t261 = load ptr, ptr %l0, !tbaa !29
  %t262 = load ptr, ptr %l2, !tbaa !29
  %t264 = getelementptr %"compiler/ast:Func", ptr %t262, i32 0, i32 4
  %t265 = load { i64, ptr }, ptr %t264, !tbaa !27
  call void @compiler_2fneeds_2ecompiler_2fneeds_3awalker_2estmts(ptr %v0, ptr %v0, ptr %t261, { i64, ptr } %t265)
  br label %bb47
bb47:
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2fneeds_2ecompiler_2fneeds_3awalker_2estmt(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca ptr
  %l4 = alloca ptr
  %l5 = alloca { i64, ptr }
  %l6 = alloca i64
  %l7 = alloca i64
  %l9 = alloca ptr
  %l10 = alloca ptr
  %l11 = alloca ptr
  %l12 = alloca { i64, ptr }
  %l13 = alloca ptr
  %l14 = alloca { i64, ptr }
  %l15 = alloca ptr
  %l16 = alloca { i64, ptr }
  %l17 = alloca ptr
  %l18 = alloca ptr
  %l19 = alloca ptr
  %l20 = alloca { i64, ptr }
  %l21 = alloca { i64, ptr }
  %l22 = alloca i64
  %l23 = alloca i64
  %l25 = alloca ptr
  %l26 = alloca ptr
  %l27 = alloca ptr
  %l28 = alloca ptr
  %l29 = alloca ptr
  %l30 = alloca ptr
  %l31 = alloca ptr
  %l32 = alloca i1
  %l37 = alloca ptr
  %l38 = alloca i1
  %l43 = alloca ptr
  %l44 = alloca i1
  %l52 = alloca ptr
  %l53 = alloca i1
  %l60 = alloca ptr
  %l61 = alloca i1
  %l74 = alloca { i64, ptr }
  %l82 = alloca ptr
  %l83 = alloca i1
  %l93 = alloca ptr
  %l94 = alloca i1
  %l105 = alloca ptr
  %l106 = alloca i1
  %l113 = alloca ptr
  %l114 = alloca i1
  %l119 = alloca ptr
  %l120 = alloca i1
  %l127 = alloca ptr
  %l128 = alloca i1
  %l135 = alloca ptr
  %l136 = alloca i1
  %l148 = alloca ptr
  %l149 = alloca i1
  %l166 = alloca ptr
  %l167 = alloca i1
  %l174 = alloca ptr
  %l175 = alloca i1
  %l182 = alloca ptr
  %l183 = alloca i1
  %l195 = alloca { i64, ptr }
  %l203 = alloca ptr
  %l204 = alloca i1
  %l211 = alloca ptr
  %l212 = alloca i1
  %l224 = alloca ptr
  %l225 = alloca i1
  %l233 = alloca ptr
  %l234 = alloca i1
  %l245 = alloca ptr
  %l246 = alloca i1
  %l253 = alloca ptr
  %l254 = alloca i1
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l1, !tbaa !29
  store ptr %t1, ptr %l31, !tbaa !29
  store i1 false, ptr %l32, !tbaa !21
  %t2 = load ptr, ptr %l31, !tbaa !29
  %t3 = icmp ne ptr %t2, null
  br i1 %t3, label %bb1, label %bb2
bb1:
  %t5 = load ptr, ptr %l31, !tbaa !29
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 22}
  %t8 = icmp eq i64 %t6, 0
  store i1 %t8, ptr %l32, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l32, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  %t10 = load ptr, ptr %l1, !tbaa !29
  %t12 = getelementptr { i64, [4 x i64] }, ptr %t10, i32 0, i32 1
  %t13 = getelementptr { %"compiler/source:Span", ptr }, ptr %t12, i32 0, i32 1
  %t14 = load ptr, ptr %t13
  store ptr %t14, ptr %l2, !tbaa !29
  br label %bb13
bb4:
  %t16 = load ptr, ptr %l1, !tbaa !29
  store ptr %t16, ptr %l37, !tbaa !29
  store i1 false, ptr %l38, !tbaa !21
  %t17 = load ptr, ptr %l37, !tbaa !29
  %t18 = icmp ne ptr %t17, null
  br i1 %t18, label %bb5, label %bb6
bb5:
  %t20 = load ptr, ptr %l37, !tbaa !29
  %t21 = load i64, ptr %t20, !range !{i64 0, i64 22}
  %t23 = icmp eq i64 %t21, 15
  store i1 %t23, ptr %l38, !tbaa !21
  br label %bb6
bb6:
  %t24 = load i1, ptr %l38, !tbaa !21
  br i1 %t24, label %bb7, label %bb8
bb7:
  %t25 = load ptr, ptr %l1, !tbaa !29
  %t27 = getelementptr { i64, [4 x i64] }, ptr %t25, i32 0, i32 1
  %t28 = getelementptr { %"compiler/source:Span", ptr }, ptr %t27, i32 0, i32 1
  %t29 = load ptr, ptr %t28
  store ptr %t29, ptr %l2, !tbaa !29
  br label %bb13
bb8:
  %t31 = load ptr, ptr %l1, !tbaa !29
  store ptr %t31, ptr %l43, !tbaa !29
  store i1 false, ptr %l44, !tbaa !21
  %t32 = load ptr, ptr %l43, !tbaa !29
  %t33 = icmp ne ptr %t32, null
  br i1 %t33, label %bb9, label %bb10
bb9:
  %t35 = load ptr, ptr %l43, !tbaa !29
  %t36 = load i64, ptr %t35, !range !{i64 0, i64 22}
  %t38 = icmp eq i64 %t36, 21
  store i1 %t38, ptr %l44, !tbaa !21
  br label %bb10
bb10:
  %t39 = load i1, ptr %l44, !tbaa !21
  br i1 %t39, label %bb11, label %bb12
bb11:
  %t40 = load ptr, ptr %l1, !tbaa !29
  %t42 = getelementptr { i64, [4 x i64] }, ptr %t40, i32 0, i32 1
  %t43 = getelementptr { %"compiler/source:Span", ptr }, ptr %t42, i32 0, i32 1
  %t44 = load ptr, ptr %t43
  store ptr %t44, ptr %l2, !tbaa !29
  br label %bb13
bb12:
  br label %bb15
bb13:
  %t46 = load ptr, ptr %l0, !tbaa !29
  %t47 = load ptr, ptr %l2, !tbaa !29
  call void @compiler_2fneeds_2ecompiler_2fneeds_3awalker_2eexpr(ptr %v0, ptr %v1, ptr %t46, ptr %t47)
  br label %bb14
bb14:
  br label %bb161
bb15:
  %t51 = load ptr, ptr %l1, !tbaa !29
  store ptr %t51, ptr %l52, !tbaa !29
  store i1 false, ptr %l53, !tbaa !21
  %t52 = load ptr, ptr %l52, !tbaa !29
  %t53 = icmp ne ptr %t52, null
  br i1 %t53, label %bb16, label %bb17
bb16:
  %t55 = load ptr, ptr %l52, !tbaa !29
  %t56 = load i64, ptr %t55, !range !{i64 0, i64 22}
  %t58 = icmp eq i64 %t56, 1
  store i1 %t58, ptr %l53, !tbaa !21
  br label %bb17
bb17:
  %t59 = load i1, ptr %l53, !tbaa !21
  br i1 %t59, label %bb18, label %bb19
bb18:
  %t60 = load ptr, ptr %l1, !tbaa !29
  %t62 = getelementptr { i64, [4 x i64] }, ptr %t60, i32 0, i32 1
  %t63 = getelementptr { %"compiler/source:Span", ptr }, ptr %t62, i32 0, i32 1
  %t64 = load ptr, ptr %t63
  store ptr %t64, ptr %l3, !tbaa !29
  br label %bb20
bb19:
  br label %bb22
bb20:
  %t66 = load ptr, ptr %l0, !tbaa !29
  %t67 = load ptr, ptr %l3, !tbaa !29
  call void @compiler_2fneeds_2ecompiler_2fneeds_3awalker_2edecl(ptr %v0, ptr %v1, ptr %t66, ptr %t67)
  br label %bb21
bb21:
  br label %bb161
bb22:
  %t70 = load ptr, ptr %l1, !tbaa !29
  store ptr %t70, ptr %l60, !tbaa !29
  store i1 false, ptr %l61, !tbaa !21
  %t71 = load ptr, ptr %l60, !tbaa !29
  %t72 = icmp ne ptr %t71, null
  br i1 %t72, label %bb23, label %bb24
bb23:
  %t74 = load ptr, ptr %l60, !tbaa !29
  %t75 = load i64, ptr %t74, !range !{i64 0, i64 22}
  %t77 = icmp eq i64 %t75, 2
  store i1 %t77, ptr %l61, !tbaa !21
  br label %bb24
bb24:
  %t78 = load i1, ptr %l61, !tbaa !21
  br i1 %t78, label %bb25, label %bb26
bb25:
  %t79 = load ptr, ptr %l1, !tbaa !29
  %t81 = getelementptr { i64, [4 x i64] }, ptr %t79, i32 0, i32 1
  %t82 = getelementptr { %"compiler/source:Span", ptr }, ptr %t81, i32 0, i32 1
  %t83 = load ptr, ptr %t82
  store ptr %t83, ptr %l4, !tbaa !29
  br label %bb27
bb26:
  br label %bb35
bb27:
  %t85 = load ptr, ptr %l4, !tbaa !29
  %t87 = getelementptr %"compiler/ast:Multi", ptr %t85, i32 0, i32 2
  %t88 = load { i64, ptr }, ptr %t87, !tbaa !27
  store { i64, ptr } %t88, ptr %l5, !tbaa !27
  store i64 0, ptr %l6, !tbaa !24
  %t90 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t92 = extractvalue { i64, ptr } %t90, 0
  store i64 %t92, ptr %l7, !tbaa !24
  br label %bb28
bb28:
  %t94 = load i64, ptr %l6, !tbaa !24
  %t95 = load i64, ptr %l7, !tbaa !24
  %t98 = icmp slt i64 %t94, %t95
  %t100 = xor i1 %t98, true
  br i1 %t100, label %bb29, label %bb30
bb29:
  br label %bb34
bb30:
  br label %bb31
bb31:
  %t102 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t102, ptr %l74, !tbaa !27
  %t103 = load i64, ptr %l6, !tbaa !24
  %t105 = getelementptr { i64, ptr }, ptr %l74, i32 0, i32 1
  %t106 = load ptr, ptr %t105, !tbaa !27
  %t107 = getelementptr ptr, ptr %t106, i64 %t103
  %t108 = load ptr, ptr %t107, !tbaa !39
  %t110 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2fneeds_2ecompiler_2fneeds_3awalker_2eexpr(ptr %v0, ptr %v1, ptr %t110, ptr %t108)
  br label %bb32
bb32:
  br label %bb33
bb33:
  %t115 = load i64, ptr %l6, !tbaa !24
  %t117 = add i64 %t115, 1
  store i64 %t117, ptr %l6, !tbaa !24
  br label %bb28
bb34:
  br label %bb161
bb35:
  %t119 = load ptr, ptr %l1, !tbaa !29
  store ptr %t119, ptr %l82, !tbaa !29
  store i1 false, ptr %l83, !tbaa !21
  %t120 = load ptr, ptr %l82, !tbaa !29
  %t121 = icmp ne ptr %t120, null
  br i1 %t121, label %bb36, label %bb37
bb36:
  %t123 = load ptr, ptr %l82, !tbaa !29
  %t124 = load i64, ptr %t123, !range !{i64 0, i64 22}
  %t126 = icmp eq i64 %t124, 3
  store i1 %t126, ptr %l83, !tbaa !21
  br label %bb37
bb37:
  %t127 = load i1, ptr %l83, !tbaa !21
  br i1 %t127, label %bb38, label %bb39
bb38:
  %t128 = load ptr, ptr %l1, !tbaa !29
  %t130 = getelementptr { i64, [4 x i64] }, ptr %t128, i32 0, i32 1
  %t131 = getelementptr { %"compiler/source:Span", i32, ptr, ptr }, ptr %t130, i32 0, i32 2
  %t132 = load ptr, ptr %t131
  store ptr %t132, ptr %l9, !tbaa !29
  %t134 = load ptr, ptr %l1, !tbaa !29
  %t136 = getelementptr { i64, [4 x i64] }, ptr %t134, i32 0, i32 1
  %t137 = getelementptr { %"compiler/source:Span", i32, ptr, ptr }, ptr %t136, i32 0, i32 3
  %t138 = load ptr, ptr %t137
  store ptr %t138, ptr %l10, !tbaa !29
  br label %bb40
bb39:
  br label %bb42
bb40:
  %t140 = load ptr, ptr %l0, !tbaa !29
  %t141 = load ptr, ptr %l9, !tbaa !29
  %t142 = load ptr, ptr %l10, !tbaa !29
  call void @compiler_2fneeds_2ecompiler_2fneeds_3awalker_2eassign(ptr %v0, ptr %v1, ptr %v1, ptr %t140, ptr %t141, ptr %t142)
  br label %bb41
bb41:
  br label %bb161
bb42:
  %t146 = load ptr, ptr %l1, !tbaa !29
  store ptr %t146, ptr %l93, !tbaa !29
  store i1 false, ptr %l94, !tbaa !21
  %t147 = load ptr, ptr %l93, !tbaa !29
  %t148 = icmp ne ptr %t147, null
  br i1 %t148, label %bb43, label %bb44
bb43:
  %t150 = load ptr, ptr %l93, !tbaa !29
  %t151 = load i64, ptr %t150, !range !{i64 0, i64 22}
  %t153 = icmp eq i64 %t151, 4
  store i1 %t153, ptr %l94, !tbaa !21
  br label %bb44
bb44:
  %t154 = load i1, ptr %l94, !tbaa !21
  br i1 %t154, label %bb45, label %bb46
bb45:
  %t155 = load ptr, ptr %l1, !tbaa !29
  %t157 = getelementptr { i64, [4 x i64] }, ptr %t155, i32 0, i32 1
  %t158 = getelementptr { %"compiler/source:Span", ptr, { i64, ptr } }, ptr %t157, i32 0, i32 1
  %t159 = load ptr, ptr %t158
  store ptr %t159, ptr %l11, !tbaa !29
  %t161 = load ptr, ptr %l1, !tbaa !29
  %t163 = getelementptr { i64, [4 x i64] }, ptr %t161, i32 0, i32 1
  %t164 = getelementptr { %"compiler/source:Span", ptr, { i64, ptr } }, ptr %t163, i32 0, i32 2
  %t165 = load { i64, ptr }, ptr %t164
  store { i64, ptr } %t165, ptr %l12, !tbaa !27
  br label %bb47
bb46:
  br label %bb50
bb47:
  %t167 = load ptr, ptr %l0, !tbaa !29
  %t168 = load ptr, ptr %l11, !tbaa !29
  call void @compiler_2fneeds_2ecompiler_2fneeds_3awalker_2estmt(ptr %v0, ptr %v1, ptr %t167, ptr %t168)
  br label %bb48
bb48:
  %t171 = load ptr, ptr %l0, !tbaa !29
  %t172 = load { i64, ptr }, ptr %l12, !tbaa !27
  call void @compiler_2fneeds_2ecompiler_2fneeds_3awalker_2ecatches(ptr %v0, ptr %v1, ptr %t171, { i64, ptr } %t172)
  br label %bb49
bb49:
  br label %bb161
bb50:
  %t175 = load ptr, ptr %l1, !tbaa !29
  store ptr %t175, ptr %l105, !tbaa !29
  store i1 false, ptr %l106, !tbaa !21
  %t176 = load ptr, ptr %l105, !tbaa !29
  %t177 = icmp ne ptr %t176, null
  br i1 %t177, label %bb51, label %bb52
bb51:
  %t179 = load ptr, ptr %l105, !tbaa !29
  %t180 = load i64, ptr %t179, !range !{i64 0, i64 22}
  %t182 = icmp eq i64 %t180, 5
  store i1 %t182, ptr %l106, !tbaa !21
  br label %bb52
bb52:
  %t183 = load i1, ptr %l106, !tbaa !21
  br i1 %t183, label %bb53, label %bb54
bb53:
  %t184 = load ptr, ptr %l1, !tbaa !29
  %t186 = getelementptr { i64, [4 x i64] }, ptr %t184, i32 0, i32 1
  %t187 = getelementptr { %"compiler/source:Span", ptr }, ptr %t186, i32 0, i32 1
  %t188 = load ptr, ptr %t187
  store ptr %t188, ptr %l13, !tbaa !29
  br label %bb55
bb54:
  br label %bb57
bb55:
  %t190 = load ptr, ptr %l0, !tbaa !29
  %t191 = load ptr, ptr %l13, !tbaa !29
  call void @compiler_2fneeds_2ecompiler_2fneeds_3awalker_2eifStmt(ptr %v0, ptr %v1, ptr %t190, ptr %t191)
  br label %bb56
bb56:
  br label %bb161
bb57:
  %t194 = load ptr, ptr %l1, !tbaa !29
  store ptr %t194, ptr %l113, !tbaa !29
  store i1 false, ptr %l114, !tbaa !21
  %t195 = load ptr, ptr %l113, !tbaa !29
  %t196 = icmp ne ptr %t195, null
  br i1 %t196, label %bb58, label %bb59
bb58:
  %t198 = load ptr, ptr %l113, !tbaa !29
  %t199 = load i64, ptr %t198, !range !{i64 0, i64 22}
  %t201 = icmp eq i64 %t199, 6
  store i1 %t201, ptr %l114, !tbaa !21
  br label %bb59
bb59:
  %t202 = load i1, ptr %l114, !tbaa !21
  br i1 %t202, label %bb60, label %bb61
bb60:
  %t203 = load ptr, ptr %l1, !tbaa !29
  %t205 = getelementptr { i64, [4 x i64] }, ptr %t203, i32 0, i32 1
  %t206 = getelementptr { %"compiler/source:Span", { i64, ptr } }, ptr %t205, i32 0, i32 1
  %t207 = load { i64, ptr }, ptr %t206
  store { i64, ptr } %t207, ptr %l14, !tbaa !27
  br label %bb66
bb61:
  %t209 = load ptr, ptr %l1, !tbaa !29
  store ptr %t209, ptr %l119, !tbaa !29
  store i1 false, ptr %l120, !tbaa !21
  %t210 = load ptr, ptr %l119, !tbaa !29
  %t211 = icmp ne ptr %t210, null
  br i1 %t211, label %bb62, label %bb63
bb62:
  %t213 = load ptr, ptr %l119, !tbaa !29
  %t214 = load i64, ptr %t213, !range !{i64 0, i64 22}
  %t216 = icmp eq i64 %t214, 20
  store i1 %t216, ptr %l120, !tbaa !21
  br label %bb63
bb63:
  %t217 = load i1, ptr %l120, !tbaa !21
  br i1 %t217, label %bb64, label %bb65
bb64:
  %t218 = load ptr, ptr %l1, !tbaa !29
  %t220 = getelementptr { i64, [4 x i64] }, ptr %t218, i32 0, i32 1
  %t221 = getelementptr { %"compiler/source:Span", { i64, ptr } }, ptr %t220, i32 0, i32 1
  %t222 = load { i64, ptr }, ptr %t221
  store { i64, ptr } %t222, ptr %l14, !tbaa !27
  br label %bb66
bb65:
  br label %bb68
bb66:
  %t224 = load ptr, ptr %l0, !tbaa !29
  %t225 = load { i64, ptr }, ptr %l14, !tbaa !27
  call void @compiler_2fneeds_2ecompiler_2fneeds_3awalker_2estmts(ptr %v0, ptr %v1, ptr %t224, { i64, ptr } %t225)
  br label %bb67
bb67:
  br label %bb161
bb68:
  %t228 = load ptr, ptr %l1, !tbaa !29
  store ptr %t228, ptr %l127, !tbaa !29
  store i1 false, ptr %l128, !tbaa !21
  %t229 = load ptr, ptr %l127, !tbaa !29
  %t230 = icmp ne ptr %t229, null
  br i1 %t230, label %bb69, label %bb70
bb69:
  %t232 = load ptr, ptr %l127, !tbaa !29
  %t233 = load i64, ptr %t232, !range !{i64 0, i64 22}
  %t235 = icmp eq i64 %t233, 7
  store i1 %t235, ptr %l128, !tbaa !21
  br label %bb70
bb70:
  %t236 = load i1, ptr %l128, !tbaa !21
  br i1 %t236, label %bb71, label %bb72
bb71:
  %t237 = load ptr, ptr %l1, !tbaa !29
  %t239 = getelementptr { i64, [4 x i64] }, ptr %t237, i32 0, i32 1
  %t240 = getelementptr { %"compiler/source:Span", ptr, { i64, ptr } }, ptr %t239, i32 0, i32 1
  %t241 = load ptr, ptr %t240
  store ptr %t241, ptr %l15, !tbaa !29
  %t243 = load ptr, ptr %l1, !tbaa !29
  %t245 = getelementptr { i64, [4 x i64] }, ptr %t243, i32 0, i32 1
  %t246 = getelementptr { %"compiler/source:Span", ptr, { i64, ptr } }, ptr %t245, i32 0, i32 2
  %t247 = load { i64, ptr }, ptr %t246
  store { i64, ptr } %t247, ptr %l16, !tbaa !27
  br label %bb77
bb72:
  %t249 = load ptr, ptr %l1, !tbaa !29
  store ptr %t249, ptr %l135, !tbaa !29
  store i1 false, ptr %l136, !tbaa !21
  %t250 = load ptr, ptr %l135, !tbaa !29
  %t251 = icmp ne ptr %t250, null
  br i1 %t251, label %bb73, label %bb74
bb73:
  %t253 = load ptr, ptr %l135, !tbaa !29
  %t254 = load i64, ptr %t253, !range !{i64 0, i64 22}
  %t256 = icmp eq i64 %t254, 10
  store i1 %t256, ptr %l136, !tbaa !21
  br label %bb74
bb74:
  %t257 = load i1, ptr %l136, !tbaa !21
  br i1 %t257, label %bb75, label %bb76
bb75:
  %t258 = load ptr, ptr %l1, !tbaa !29
  %t260 = getelementptr { i64, [4 x i64] }, ptr %t258, i32 0, i32 1
  %t261 = getelementptr { %"compiler/source:Span", { i64, ptr }, ptr }, ptr %t260, i32 0, i32 1
  %t262 = load { i64, ptr }, ptr %t261
  store { i64, ptr } %t262, ptr %l16, !tbaa !27
  %t264 = load ptr, ptr %l1, !tbaa !29
  %t266 = getelementptr { i64, [4 x i64] }, ptr %t264, i32 0, i32 1
  %t267 = getelementptr { %"compiler/source:Span", { i64, ptr }, ptr }, ptr %t266, i32 0, i32 2
  %t268 = load ptr, ptr %t267
  store ptr %t268, ptr %l15, !tbaa !29
  br label %bb77
bb76:
  br label %bb80
bb77:
  %t270 = load ptr, ptr %l0, !tbaa !29
  %t271 = load ptr, ptr %l15, !tbaa !29
  call void @compiler_2fneeds_2ecompiler_2fneeds_3awalker_2eexpr(ptr %v0, ptr %v1, ptr %t270, ptr %t271)
  br label %bb78
bb78:
  %t275 = load ptr, ptr %l0, !tbaa !29
  %t276 = load { i64, ptr }, ptr %l16, !tbaa !27
  call void @compiler_2fneeds_2ecompiler_2fneeds_3awalker_2estmts(ptr %v0, ptr %v1, ptr %t275, { i64, ptr } %t276)
  br label %bb79
bb79:
  br label %bb161
bb80:
  %t279 = load ptr, ptr %l1, !tbaa !29
  store ptr %t279, ptr %l148, !tbaa !29
  store i1 false, ptr %l149, !tbaa !21
  %t280 = load ptr, ptr %l148, !tbaa !29
  %t281 = icmp ne ptr %t280, null
  br i1 %t281, label %bb81, label %bb82
bb81:
  %t283 = load ptr, ptr %l148, !tbaa !29
  %t284 = load i64, ptr %t283, !range !{i64 0, i64 22}
  %t286 = icmp eq i64 %t284, 8
  store i1 %t286, ptr %l149, !tbaa !21
  br label %bb82
bb82:
  %t287 = load i1, ptr %l149, !tbaa !21
  br i1 %t287, label %bb83, label %bb84
bb83:
  %t288 = load ptr, ptr %l1, !tbaa !29
  %t290 = getelementptr { i64, [4 x i64] }, ptr %t288, i32 0, i32 1
  %t291 = getelementptr { %"compiler/source:Span", ptr }, ptr %t290, i32 0, i32 1
  %t292 = load ptr, ptr %t291
  store ptr %t292, ptr %l17, !tbaa !29
  br label %bb85
bb84:
  br label %bb90
bb85:
  %t294 = load ptr, ptr %l0, !tbaa !29
  %t295 = load ptr, ptr %l17, !tbaa !29
  %t297 = getelementptr %"compiler/ast:For3", ptr %t295, i32 0, i32 0
  %t298 = load ptr, ptr %t297, !tbaa !29
  call void @compiler_2fneeds_2ecompiler_2fneeds_3awalker_2estmt(ptr %v0, ptr %v1, ptr %t294, ptr %t298)
  br label %bb86
bb86:
  %t301 = load ptr, ptr %l0, !tbaa !29
  %t302 = load ptr, ptr %l17, !tbaa !29
  %t304 = getelementptr %"compiler/ast:For3", ptr %t302, i32 0, i32 1
  %t305 = load ptr, ptr %t304, !tbaa !29
  call void @compiler_2fneeds_2ecompiler_2fneeds_3awalker_2eexpr(ptr %v0, ptr %v1, ptr %t301, ptr %t305)
  br label %bb87
bb87:
  %t308 = load ptr, ptr %l0, !tbaa !29
  %t309 = load ptr, ptr %l17, !tbaa !29
  %t311 = getelementptr %"compiler/ast:For3", ptr %t309, i32 0, i32 2
  %t312 = load ptr, ptr %t311, !tbaa !29
  call void @compiler_2fneeds_2ecompiler_2fneeds_3awalker_2estmt(ptr %v0, ptr %v1, ptr %t308, ptr %t312)
  br label %bb88
bb88:
  %t315 = load ptr, ptr %l0, !tbaa !29
  %t316 = load ptr, ptr %l17, !tbaa !29
  %t318 = getelementptr %"compiler/ast:For3", ptr %t316, i32 0, i32 3
  %t319 = load { i64, ptr }, ptr %t318, !tbaa !27
  call void @compiler_2fneeds_2ecompiler_2fneeds_3awalker_2estmts(ptr %v0, ptr %v1, ptr %t315, { i64, ptr } %t319)
  br label %bb89
bb89:
  br label %bb161
bb90:
  %t322 = load ptr, ptr %l1, !tbaa !29
  store ptr %t322, ptr %l166, !tbaa !29
  store i1 false, ptr %l167, !tbaa !21
  %t323 = load ptr, ptr %l166, !tbaa !29
  %t324 = icmp ne ptr %t323, null
  br i1 %t324, label %bb91, label %bb92
bb91:
  %t326 = load ptr, ptr %l166, !tbaa !29
  %t327 = load i64, ptr %t326, !range !{i64 0, i64 22}
  %t329 = icmp eq i64 %t327, 9
  store i1 %t329, ptr %l167, !tbaa !21
  br label %bb92
bb92:
  %t330 = load i1, ptr %l167, !tbaa !21
  br i1 %t330, label %bb93, label %bb94
bb93:
  %t331 = load ptr, ptr %l1, !tbaa !29
  %t333 = getelementptr { i64, [4 x i64] }, ptr %t331, i32 0, i32 1
  %t334 = getelementptr { %"compiler/source:Span", ptr }, ptr %t333, i32 0, i32 1
  %t335 = load ptr, ptr %t334
  store ptr %t335, ptr %l18, !tbaa !29
  br label %bb95
bb94:
  br label %bb97
bb95:
  %t337 = load ptr, ptr %l0, !tbaa !29
  %t338 = load ptr, ptr %l18, !tbaa !29
  call void @compiler_2fneeds_2ecompiler_2fneeds_3awalker_2eforIn(ptr %v0, ptr %v1, ptr %t337, ptr %t338)
  br label %bb96
bb96:
  br label %bb161
bb97:
  %t341 = load ptr, ptr %l1, !tbaa !29
  store ptr %t341, ptr %l174, !tbaa !29
  store i1 false, ptr %l175, !tbaa !21
  %t342 = load ptr, ptr %l174, !tbaa !29
  %t343 = icmp ne ptr %t342, null
  br i1 %t343, label %bb98, label %bb99
bb98:
  %t345 = load ptr, ptr %l174, !tbaa !29
  %t346 = load i64, ptr %t345, !range !{i64 0, i64 22}
  %t348 = icmp eq i64 %t346, 11
  store i1 %t348, ptr %l175, !tbaa !21
  br label %bb99
bb99:
  %t349 = load i1, ptr %l175, !tbaa !21
  br i1 %t349, label %bb100, label %bb101
bb100:
  %t350 = load ptr, ptr %l1, !tbaa !29
  %t352 = getelementptr { i64, [4 x i64] }, ptr %t350, i32 0, i32 1
  %t353 = getelementptr { %"compiler/source:Span", ptr }, ptr %t352, i32 0, i32 1
  %t354 = load ptr, ptr %t353
  store ptr %t354, ptr %l19, !tbaa !29
  br label %bb102
bb101:
  br label %bb104
bb102:
  %t356 = load ptr, ptr %l0, !tbaa !29
  %t357 = load ptr, ptr %l19, !tbaa !29
  call void @compiler_2fneeds_2ecompiler_2fneeds_3awalker_2ematchOf(ptr %v0, ptr %v1, ptr %t356, ptr %t357)
  br label %bb103
bb103:
  br label %bb161
bb104:
  %t360 = load ptr, ptr %l1, !tbaa !29
  store ptr %t360, ptr %l182, !tbaa !29
  store i1 false, ptr %l183, !tbaa !21
  %t361 = load ptr, ptr %l182, !tbaa !29
  %t362 = icmp ne ptr %t361, null
  br i1 %t362, label %bb105, label %bb106
bb105:
  %t364 = load ptr, ptr %l182, !tbaa !29
  %t365 = load i64, ptr %t364, !range !{i64 0, i64 22}
  %t367 = icmp eq i64 %t365, 12
  store i1 %t367, ptr %l183, !tbaa !21
  br label %bb106
bb106:
  %t368 = load i1, ptr %l183, !tbaa !21
  br i1 %t368, label %bb107, label %bb108
bb107:
  %t369 = load ptr, ptr %l1, !tbaa !29
  %t371 = getelementptr { i64, [4 x i64] }, ptr %t369, i32 0, i32 1
  %t372 = getelementptr { %"compiler/source:Span", { i64, ptr } }, ptr %t371, i32 0, i32 1
  %t373 = load { i64, ptr }, ptr %t372
  store { i64, ptr } %t373, ptr %l20, !tbaa !27
  br label %bb109
bb108:
  br label %bb117
bb109:
  %t375 = load { i64, ptr }, ptr %l20, !tbaa !27
  store { i64, ptr } %t375, ptr %l21, !tbaa !27
  store i64 0, ptr %l22, !tbaa !24
  %t377 = load { i64, ptr }, ptr %l21, !tbaa !27
  %t379 = extractvalue { i64, ptr } %t377, 0
  store i64 %t379, ptr %l23, !tbaa !24
  br label %bb110
bb110:
  %t381 = load i64, ptr %l22, !tbaa !24
  %t382 = load i64, ptr %l23, !tbaa !24
  %t385 = icmp slt i64 %t381, %t382
  %t387 = xor i1 %t385, true
  br i1 %t387, label %bb111, label %bb112
bb111:
  br label %bb116
bb112:
  br label %bb113
bb113:
  %t389 = load { i64, ptr }, ptr %l21, !tbaa !27
  store { i64, ptr } %t389, ptr %l195, !tbaa !27
  %t390 = load i64, ptr %l22, !tbaa !24
  %t392 = getelementptr { i64, ptr }, ptr %l195, i32 0, i32 1
  %t393 = load ptr, ptr %t392, !tbaa !27
  %t394 = getelementptr ptr, ptr %t393, i64 %t390
  %t395 = load ptr, ptr %t394, !tbaa !39
  %t397 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2fneeds_2ecompiler_2fneeds_3awalker_2eexpr(ptr %v0, ptr %v1, ptr %t397, ptr %t395)
  br label %bb114
bb114:
  br label %bb115
bb115:
  %t402 = load i64, ptr %l22, !tbaa !24
  %t404 = add i64 %t402, 1
  store i64 %t404, ptr %l22, !tbaa !24
  br label %bb110
bb116:
  br label %bb161
bb117:
  %t406 = load ptr, ptr %l1, !tbaa !29
  store ptr %t406, ptr %l203, !tbaa !29
  store i1 false, ptr %l204, !tbaa !21
  %t407 = load ptr, ptr %l203, !tbaa !29
  %t408 = icmp ne ptr %t407, null
  br i1 %t408, label %bb118, label %bb119
bb118:
  %t410 = load ptr, ptr %l203, !tbaa !29
  %t411 = load i64, ptr %t410, !range !{i64 0, i64 22}
  %t413 = icmp eq i64 %t411, 13
  store i1 %t413, ptr %l204, !tbaa !21
  br label %bb119
bb119:
  %t414 = load i1, ptr %l204, !tbaa !21
  br i1 %t414, label %bb120, label %bb121
bb120:
  %t415 = load ptr, ptr %l1, !tbaa !29
  %t417 = getelementptr { i64, [4 x i64] }, ptr %t415, i32 0, i32 1
  %t418 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t417, i32 0, i32 2
  %t419 = load ptr, ptr %t418
  store ptr %t419, ptr %l25, !tbaa !29
  br label %bb122
bb121:
  br label %bb124
bb122:
  %t421 = load ptr, ptr %l0, !tbaa !29
  %t422 = load ptr, ptr %l25, !tbaa !29
  call void @compiler_2fneeds_2ecompiler_2fneeds_3awalker_2eexpr(ptr %v0, ptr %v1, ptr %t421, ptr %t422)
  br label %bb123
bb123:
  br label %bb161
bb124:
  %t425 = load ptr, ptr %l1, !tbaa !29
  store ptr %t425, ptr %l211, !tbaa !29
  store i1 false, ptr %l212, !tbaa !21
  %t426 = load ptr, ptr %l211, !tbaa !29
  %t427 = icmp ne ptr %t426, null
  br i1 %t427, label %bb125, label %bb126
bb125:
  %t429 = load ptr, ptr %l211, !tbaa !29
  %t430 = load i64, ptr %t429, !range !{i64 0, i64 22}
  %t432 = icmp eq i64 %t430, 14
  store i1 %t432, ptr %l212, !tbaa !21
  br label %bb126
bb126:
  %t433 = load i1, ptr %l212, !tbaa !21
  br i1 %t433, label %bb127, label %bb128
bb127:
  %t434 = load ptr, ptr %l1, !tbaa !29
  %t436 = getelementptr { i64, [4 x i64] }, ptr %t434, i32 0, i32 1
  %t437 = getelementptr { %"compiler/source:Span", ptr, ptr }, ptr %t436, i32 0, i32 1
  %t438 = load ptr, ptr %t437
  store ptr %t438, ptr %l26, !tbaa !29
  %t440 = load ptr, ptr %l1, !tbaa !29
  %t442 = getelementptr { i64, [4 x i64] }, ptr %t440, i32 0, i32 1
  %t443 = getelementptr { %"compiler/source:Span", ptr, ptr }, ptr %t442, i32 0, i32 2
  %t444 = load ptr, ptr %t443
  store ptr %t444, ptr %l27, !tbaa !29
  br label %bb129
bb128:
  br label %bb132
bb129:
  %t446 = load ptr, ptr %l0, !tbaa !29
  %t447 = load ptr, ptr %l26, !tbaa !29
  call void @compiler_2fneeds_2ecompiler_2fneeds_3awalker_2eexpr(ptr %v0, ptr %v1, ptr %t446, ptr %t447)
  br label %bb130
bb130:
  %t451 = load ptr, ptr %l0, !tbaa !29
  %t452 = load ptr, ptr %l27, !tbaa !29
  call void @compiler_2fneeds_2ecompiler_2fneeds_3awalker_2eexpr(ptr %v0, ptr %v1, ptr %t451, ptr %t452)
  br label %bb131
bb131:
  br label %bb161
bb132:
  %t455 = load ptr, ptr %l1, !tbaa !29
  store ptr %t455, ptr %l224, !tbaa !29
  store i1 false, ptr %l225, !tbaa !21
  %t456 = load ptr, ptr %l224, !tbaa !29
  %t457 = icmp ne ptr %t456, null
  br i1 %t457, label %bb133, label %bb134
bb133:
  %t459 = load ptr, ptr %l224, !tbaa !29
  %t460 = load i64, ptr %t459, !range !{i64 0, i64 22}
  %t462 = icmp eq i64 %t460, 17
  store i1 %t462, ptr %l225, !tbaa !21
  br label %bb134
bb134:
  %t463 = load i1, ptr %l225, !tbaa !21
  br i1 %t463, label %bb135, label %bb136
bb135:
  %t464 = load ptr, ptr %l1, !tbaa !29
  %t466 = getelementptr { i64, [4 x i64] }, ptr %t464, i32 0, i32 1
  %t467 = getelementptr { %"compiler/source:Span", { i64, ptr }, ptr }, ptr %t466, i32 0, i32 2
  %t468 = load ptr, ptr %t467
  store ptr %t468, ptr %l28, !tbaa !29
  br label %bb137
bb136:
  br label %bb139
bb137:
  %t470 = load ptr, ptr %l0, !tbaa !29
  %t471 = load ptr, ptr %l28, !tbaa !29
  call void @compiler_2fneeds_2ecompiler_2fneeds_3awalker_2eexpr(ptr %v0, ptr %v1, ptr %t470, ptr %t471)
  br label %bb138
bb138:
  br label %bb161
bb139:
  %t475 = load ptr, ptr %l1, !tbaa !29
  store ptr %t475, ptr %l233, !tbaa !29
  store i1 false, ptr %l234, !tbaa !21
  %t476 = load ptr, ptr %l233, !tbaa !29
  %t477 = icmp ne ptr %t476, null
  br i1 %t477, label %bb140, label %bb141
bb140:
  %t479 = load ptr, ptr %l233, !tbaa !29
  %t480 = load i64, ptr %t479, !range !{i64 0, i64 22}
  %t482 = icmp eq i64 %t480, 18
  store i1 %t482, ptr %l234, !tbaa !21
  br label %bb141
bb141:
  %t483 = load i1, ptr %l234, !tbaa !21
  br i1 %t483, label %bb142, label %bb143
bb142:
  %t484 = load ptr, ptr %l1, !tbaa !29
  %t486 = getelementptr { i64, [4 x i64] }, ptr %t484, i32 0, i32 1
  %t487 = getelementptr { %"compiler/source:Span", ptr }, ptr %t486, i32 0, i32 1
  %t488 = load ptr, ptr %t487
  store ptr %t488, ptr %l29, !tbaa !29
  br label %bb144
bb143:
  br label %bb147
bb144:
  %t490 = load ptr, ptr %l0, !tbaa !29
  %t491 = load ptr, ptr %l29, !tbaa !29
  %t493 = getelementptr %"compiler/ast:JoinS", ptr %t491, i32 0, i32 1
  %t494 = load { i64, ptr }, ptr %t493, !tbaa !27
  call void @compiler_2fneeds_2ecompiler_2fneeds_3awalker_2estmts(ptr %v0, ptr %v1, ptr %t490, { i64, ptr } %t494)
  br label %bb145
bb145:
  %t497 = load ptr, ptr %l0, !tbaa !29
  %t498 = load ptr, ptr %l29, !tbaa !29
  %t500 = getelementptr %"compiler/ast:JoinS", ptr %t498, i32 0, i32 2
  %t501 = load { i64, ptr }, ptr %t500, !tbaa !27
  call void @compiler_2fneeds_2ecompiler_2fneeds_3awalker_2ecatches(ptr %v0, ptr %v1, ptr %t497, { i64, ptr } %t501)
  br label %bb146
bb146:
  br label %bb161
bb147:
  %t504 = load ptr, ptr %l1, !tbaa !29
  store ptr %t504, ptr %l245, !tbaa !29
  store i1 false, ptr %l246, !tbaa !21
  %t505 = load ptr, ptr %l245, !tbaa !29
  %t506 = icmp ne ptr %t505, null
  br i1 %t506, label %bb148, label %bb149
bb148:
  %t508 = load ptr, ptr %l245, !tbaa !29
  %t509 = load i64, ptr %t508, !range !{i64 0, i64 22}
  %t511 = icmp eq i64 %t509, 19
  store i1 %t511, ptr %l246, !tbaa !21
  br label %bb149
bb149:
  %t512 = load i1, ptr %l246, !tbaa !21
  br i1 %t512, label %bb150, label %bb151
bb150:
  %t513 = load ptr, ptr %l1, !tbaa !29
  %t515 = getelementptr { i64, [4 x i64] }, ptr %t513, i32 0, i32 1
  %t516 = getelementptr { %"compiler/source:Span", ptr, i1 }, ptr %t515, i32 0, i32 1
  %t517 = load ptr, ptr %t516
  store ptr %t517, ptr %l30, !tbaa !29
  br label %bb152
bb151:
  br label %bb154
bb152:
  %t519 = load ptr, ptr %l0, !tbaa !29
  %t520 = load ptr, ptr %l30, !tbaa !29
  call void @compiler_2fneeds_2ecompiler_2fneeds_3awalker_2estmt(ptr %v0, ptr %v1, ptr %t519, ptr %t520)
  br label %bb153
bb153:
  br label %bb161
bb154:
  %t523 = load ptr, ptr %l1, !tbaa !29
  store ptr %t523, ptr %l253, !tbaa !29
  store i1 false, ptr %l254, !tbaa !21
  %t524 = load ptr, ptr %l253, !tbaa !29
  %t525 = icmp ne ptr %t524, null
  br i1 %t525, label %bb155, label %bb156
bb155:
  %t527 = load ptr, ptr %l253, !tbaa !29
  %t528 = load i64, ptr %t527, !range !{i64 0, i64 22}
  %t530 = icmp eq i64 %t528, 16
  store i1 %t530, ptr %l254, !tbaa !21
  br label %bb156
bb156:
  %t531 = load i1, ptr %l254, !tbaa !21
  br i1 %t531, label %bb157, label %bb158
bb157:
  br label %bb159
bb158:
  br label %bb160
bb159:
  br label %bb161
bb160:
  call void @__olang_check_failed(ptr @olang_loc_d978440131377666_280c73c325bb4b5a)
  unreachable
bb161:
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2fneeds_2ecompiler_2fneeds_3awalker_2estmts(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1) #0 {
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
  call void @compiler_2fneeds_2ecompiler_2fneeds_3awalker_2estmt(ptr %v0, ptr %v1, ptr %a0, ptr %t21)
  br label %bb5
bb5:
  br label %bb6
bb6:
  %t27 = load i64, ptr %l3, !tbaa !24
  %t29 = add i64 %t27, 1
  store i64 %t29, ptr %l3, !tbaa !24
  br label %bb1
bb7:
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2fneeds_2ecompiler_2fneeds_3awalker_2ethrough(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, { i64, ptr } %a2) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca { i64, ptr }
  %l3 = alloca i64
  %l4 = alloca { i64, ptr }
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca i64
  %l12 = alloca ptr
  %l13 = alloca i64
  %l20 = alloca i64
  %l23 = alloca i1
  %l28 = alloca i1
  %l31 = alloca ptr
  %l33 = alloca i64
  %l34 = alloca i64
  %l40 = alloca ptr
  %l49 = alloca i64
  %l52 = alloca i64
  %l71 = alloca { i64, ptr }
  %l75 = alloca i64
  %l78 = alloca i1
  %l86 = alloca { i64, ptr }
  %l93 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l95 = alloca i64
  %l97 = alloca i64
  %l102 = alloca { i64, ptr }
  %s6 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store { i64, ptr } %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/needs:walker", ptr %t1, i32 0, i32 2
  %t4 = load i64, ptr %t3, !tbaa !24
  %t6 = icmp sge i64 %t4, 3
  br i1 %t6, label %bb1, label %bb2
bb1:
  br label %ret
bb2:
  br label %bb3
bb3:
  %t8 = load ptr, ptr %l0, !tbaa !29
  %t12 = call i64 @compiler_2fneeds_2ecompiler_2fneeds_3awalker_2ecalled(ptr %v0, ptr %v1, ptr %t8, ptr %a1)
  store i64 %t12, ptr %l20
  br label %bb4
bb4:
  %t13 = load i64, ptr %l20, !tbaa !24
  store i64 %t13, ptr %l3, !tbaa !24
  %t14 = load i64, ptr %l3, !tbaa !24
  %t16 = icmp slt i64 %t14, 0
  br i1 %t16, label %bb5, label %bb6
bb5:
  store i1 true, ptr %l23, !tbaa !21
  br label %bb7
bb6:
  %t18 = load i64, ptr %l3, !tbaa !24
  %t19 = load ptr, ptr %l0, !tbaa !29
  %t21 = getelementptr %"compiler/needs:walker", ptr %t19, i32 0, i32 1
  %t22 = load i64, ptr %t21, !tbaa !24
  %t25 = icmp eq i64 %t18, %t22
  store i1 %t25, ptr %l23, !tbaa !21
  br label %bb7
bb7:
  %t27 = load i1, ptr %l23, !tbaa !21
  br i1 %t27, label %bb8, label %bb9
bb8:
  store i1 true, ptr %l28, !tbaa !21
  br label %bb12
bb9:
  %t28 = load ptr, ptr %l0, !tbaa !29
  %t30 = getelementptr %"compiler/needs:walker", ptr %t28, i32 0, i32 0
  %t31 = load ptr, ptr %t30, !tbaa !29
  %t33 = getelementptr %"compiler/check:Checker", ptr %t31, i32 0, i32 1
  %t34 = load ptr, ptr %t33, !tbaa !29
  store ptr %t34, ptr %l31, !tbaa !29
  %t35 = load i64, ptr %l3, !tbaa !24
  %t37 = call i64 @compiler_2fgeneric_2eFnOwner(i64 %t35)
  store i64 %t37, ptr %l33
  br label %bb10
bb10:
  %t38 = load ptr, ptr %l31, !tbaa !29
  %t39 = load i64, ptr %l33, !tbaa !24
  %t40 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eVarCount(ptr %v0, ptr %t38, i64 %t39)
  store i64 %t40, ptr %l34
  br label %bb11
bb11:
  %t41 = load i64, ptr %l34, !tbaa !24
  %t42 = icmp eq i64 %t41, 0
  store i1 %t42, ptr %l28, !tbaa !21
  br label %bb12
bb12:
  %t44 = load i1, ptr %l28, !tbaa !21
  br i1 %t44, label %bb13, label %bb14
bb13:
  br label %ret
bb14:
  br label %bb15
bb15:
  %t45 = load ptr, ptr %l0, !tbaa !29
  %t47 = getelementptr %"compiler/needs:walker", ptr %t45, i32 0, i32 0
  %t48 = load ptr, ptr %t47, !tbaa !29
  %t50 = getelementptr %"compiler/check:Checker", ptr %t48, i32 0, i32 1
  %t51 = load ptr, ptr %t50, !tbaa !29
  %t52 = load i64, ptr %l3, !tbaa !24
  %t55 = call ptr @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnDecl(ptr %v0, ptr %v0, ptr %t51, i64 %t52)
  store ptr %t55, ptr %l40
  br label %bb16
bb16:
  %t56 = load ptr, ptr %l40, !tbaa !29
  %t58 = getelementptr %"compiler/ast:Func", ptr %t56, i32 0, i32 3
  %t59 = load ptr, ptr %t58, !tbaa !29
  %t61 = getelementptr %"compiler/ast:Sig", ptr %t59, i32 0, i32 0
  %t62 = load { i64, ptr }, ptr %t61, !tbaa !27
  store { i64, ptr } %t62, ptr %l4, !tbaa !27
  store i64 0, ptr %l5, !tbaa !24
  %t64 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t66 = extractvalue { i64, ptr } %t64, 0
  store i64 %t66, ptr %l6, !tbaa !24
  store i64 1, ptr %l7, !tbaa !24
  %t68 = load i64, ptr %l6, !tbaa !24
  %t69 = load i64, ptr %l5, !tbaa !24
  %t72 = icmp sgt i64 %t68, %t69
  br i1 %t72, label %bb17, label %bb18
bb17:
  %t74 = load i64, ptr %l7, !tbaa !24
  %t76 = icmp sgt i64 %t74, 0
  br i1 %t76, label %bb19, label %bb20
bb18:
  store i64 0, ptr %l49, !tbaa !24
  br label %bb22
bb19:
  %t78 = load i64, ptr %l6, !tbaa !24
  %t79 = load i64, ptr %l5, !tbaa !24
  %t82 = sub i64 %t78, %t79
  %t83 = load i64, ptr %l7, !tbaa !24
  %t86 = add i64 %t82, %t83
  %t88 = sub i64 %t86, 1
  %t89 = load i64, ptr %l7, !tbaa !24
  %t92 = sdiv i64 %t88, %t89
  store i64 %t92, ptr %l52, !tbaa !24
  br label %bb21
bb20:
  store i64 0, ptr %l52, !tbaa !24
  br label %bb21
bb21:
  %t94 = load i64, ptr %l52, !tbaa !24
  store i64 %t94, ptr %l49, !tbaa !24
  br label %bb22
bb22:
  %t95 = load i64, ptr %l49, !tbaa !24
  store i64 %t95, ptr %l8, !tbaa !24
  store i64 0, ptr %l9, !tbaa !24
  br label %bb23
bb23:
  %t96 = load i64, ptr %l9, !tbaa !24
  %t97 = load i64, ptr %l8, !tbaa !24
  %t100 = icmp slt i64 %t96, %t97
  %t102 = xor i1 %t100, true
  br i1 %t102, label %bb24, label %bb25
bb24:
  br label %bb45
bb25:
  br label %bb26
bb26:
  %t104 = load i64, ptr %l5, !tbaa !24
  %t105 = load i64, ptr %l9, !tbaa !24
  %t106 = load i64, ptr %l7, !tbaa !24
  %t109 = mul i64 %t105, %t106
  %t112 = add i64 %t104, %t109
  store i64 %t112, ptr %l10, !tbaa !24
  %t114 = load ptr, ptr %l0, !tbaa !29
  %t115 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t115, ptr %l71, !tbaa !27
  %t116 = load i64, ptr %l10, !tbaa !24
  %t118 = getelementptr { i64, ptr }, ptr %l71, i32 0, i32 1
  %t119 = load ptr, ptr %t118, !tbaa !27
  %t120 = getelementptr ptr, ptr %t119, i64 %t116
  %t121 = load ptr, ptr %t120, !tbaa !39
  %t125 = call i64 @compiler_2fneeds_2ecompiler_2fneeds_3awalker_2evalOf(ptr %v0, ptr %v2, ptr %t114, ptr %t121)
  store i64 %t125, ptr %l75
  br label %bb27
bb27:
  %t126 = load i64, ptr %l75, !tbaa !24
  store i64 %t126, ptr %l11, !tbaa !24
  %t127 = load i64, ptr %l11, !tbaa !24
  %t129 = icmp slt i64 %t127, 0
  br i1 %t129, label %bb28, label %bb29
bb28:
  store i1 true, ptr %l78, !tbaa !21
  br label %bb30
bb29:
  %t131 = load i64, ptr %l10, !tbaa !24
  %t132 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t134 = extractvalue { i64, ptr } %t132, 0
  %t137 = icmp sge i64 %t131, %t134
  store i1 %t137, ptr %l78, !tbaa !21
  br label %bb30
bb30:
  %t139 = load i1, ptr %l78, !tbaa !21
  br i1 %t139, label %bb31, label %bb32
bb31:
  br label %bb44
bb32:
  br label %bb33
bb33:
  store %olang.scope zeroinitializer, ptr %s6
  %t140 = load ptr, ptr %l0, !tbaa !29
  %t142 = getelementptr %"compiler/needs:walker", ptr %t140, i32 0, i32 0
  %t143 = load ptr, ptr %t142, !tbaa !29
  %t144 = load i64, ptr %l3, !tbaa !24
  %t145 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t145, ptr %l86, !tbaa !27
  %t146 = load i64, ptr %l10, !tbaa !24
  %t148 = getelementptr { i64, ptr }, ptr %l86, i32 0, i32 1
  %t149 = load ptr, ptr %t148, !tbaa !27
  %t150 = getelementptr ptr, ptr %t149, i64 %t146
  %t151 = load ptr, ptr %t150, !tbaa !39
  %t153 = getelementptr %"compiler/ast:Param", ptr %t151, i32 0, i32 2
  %t154 = load ptr, ptr %t153, !tbaa !29
  %t155 = load ptr, ptr %l0, !tbaa !29
  %t157 = getelementptr %"compiler/needs:walker", ptr %t155, i32 0, i32 2
  %t158 = load i64, ptr %t157, !tbaa !24
  %t160 = add i64 %t158, 1
  %t165 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2fneeds_2einnerNeeds(ptr %v0, ptr %v0, ptr %s6, ptr %t143, i64 %t144, ptr %t154, i64 %t160)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t165, ptr %l93
  br label %bb34
bb34:
  %t166 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l93
  %t167 = call ptr @__olang_scope_alloc_a(ptr %s6, i64 32, i64 8)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t166, ptr %t167
  store ptr %t167, ptr %l12, !tbaa !29
  store i64 0, ptr %l13, !tbaa !24
  br label %bb35
bb35:
  %t169 = load i64, ptr %l13, !tbaa !24
  store i64 %t169, ptr %l95, !tbaa !24
  %t170 = load ptr, ptr %l12, !tbaa !29
  %t172 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %s6, ptr %t170)
  store i64 %t172, ptr %l97
  br label %bb36
bb36:
  %t173 = load i64, ptr %l95, !tbaa !24
  %t174 = load i64, ptr %l97, !tbaa !24
  %t175 = icmp slt i64 %t173, %t174
  %t177 = xor i1 %t175, true
  br i1 %t177, label %bb37, label %bb38
bb37:
  br label %bb43
bb38:
  br label %bb39
bb39:
  %t179 = load ptr, ptr %l12, !tbaa !29
  %t180 = load i64, ptr %l13, !tbaa !24
  %t183 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %s6, ptr %s6, ptr %t179, i64 %t180)
  store { i64, ptr } %t183, ptr %l102
  br label %bb40
bb40:
  %t184 = load { i64, ptr }, ptr %l102, !tbaa !27
  %t185 = load ptr, ptr %l0, !tbaa !29
  %t186 = load i64, ptr %l11, !tbaa !24
  call void @compiler_2fneeds_2ecompiler_2fneeds_3awalker_2eneed(ptr %v0, ptr %s6, ptr %t185, i64 %t186, { i64, ptr } %t184)
  br label %bb41
bb41:
  br label %bb42
bb42:
  %t191 = load i64, ptr %l13, !tbaa !24
  %t193 = add i64 %t191, 1
  store i64 %t193, ptr %l13, !tbaa !24
  br label %bb35
bb43:
  call void @__olang_scope_close(ptr %s6)
  br label %bb44
bb44:
  %t195 = load i64, ptr %l9, !tbaa !24
  %t197 = add i64 %t195, 1
  store i64 %t197, ptr %l9, !tbaa !24
  br label %bb23
bb45:
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2fneeds_2ecompiler_2fneeds_3awalker_2etraitMethods(ptr %v0, ptr %v1, ptr %a0, i32 %a1, ptr %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca ptr
  %l3 = alloca ptr
  %l4 = alloca ptr
  %l5 = alloca { i64, ptr }
  %l6 = alloca { i64, ptr }
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca ptr
  %l15 = alloca i32
  %l21 = alloca ptr
  %l27 = alloca i32
  %l28 = alloca ptr
  %l33 = alloca ptr
  %l34 = alloca i1
  %l46 = alloca { i64, ptr }
  %l50 = alloca i1
  %l51 = alloca ptr
  %l52 = alloca i64
  %l61 = alloca { i64, ptr }
  %l64 = alloca ptr
  %l65 = alloca i64
  %l74 = alloca { i64, ptr }
  %s6 = alloca %olang.scope
  %s8 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  store ptr %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/needs:walker", ptr %t1, i32 0, i32 0
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t6 = getelementptr %"compiler/check:Checker", ptr %t4, i32 0, i32 1
  %t7 = load ptr, ptr %t6, !tbaa !29
  %t9 = getelementptr %"compiler/generic:Program", ptr %t7, i32 0, i32 2
  %t10 = load i32, ptr %l1, !tbaa !23
  %t13 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t9, i32 %t10)
  store i32 %t13, ptr %l15
  br label %bb1
bb1:
  %t14 = load i32, ptr %l15, !range !{i32 0, i32 33}
  %t16 = trunc i64 18 to i32
  %t17 = icmp eq i32 %t14, %t16
  %t19 = xor i1 %t17, true
  br i1 %t19, label %bb2, label %bb3
bb2:
  br label %ret
bb3:
  br label %bb4
bb4:
  %t21 = load ptr, ptr %l0, !tbaa !29
  %t23 = getelementptr %"compiler/needs:walker", ptr %t21, i32 0, i32 0
  %t24 = load ptr, ptr %t23, !tbaa !29
  %t26 = getelementptr %"compiler/check:Checker", ptr %t24, i32 0, i32 1
  %t27 = load ptr, ptr %t26, !tbaa !29
  store ptr %t27, ptr %l21, !tbaa !29
  %t28 = load ptr, ptr %l0, !tbaa !29
  %t30 = getelementptr %"compiler/needs:walker", ptr %t28, i32 0, i32 0
  %t31 = load ptr, ptr %t30, !tbaa !29
  %t33 = getelementptr %"compiler/check:Checker", ptr %t31, i32 0, i32 1
  %t34 = load ptr, ptr %t33, !tbaa !29
  %t36 = getelementptr %"compiler/generic:Program", ptr %t34, i32 0, i32 2
  %t37 = load i32, ptr %l1, !tbaa !23
  %t40 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %t36, i32 %t37)
  store i32 %t40, ptr %l27
  br label %bb5
bb5:
  %t41 = load ptr, ptr %l21, !tbaa !29
  %t42 = load i32, ptr %l27, !tbaa !23
  %t43 = call ptr @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eTypeDecl(ptr %v0, ptr %v0, ptr %t41, i32 %t42)
  store ptr %t43, ptr %l28
  br label %bb6
bb6:
  %t44 = load ptr, ptr %l28, !tbaa !29
  store ptr %t44, ptr %l3, !tbaa !29
  %t45 = load ptr, ptr %l3, !tbaa !29
  %t47 = icmp eq ptr %t45, null
  br i1 %t47, label %bb7, label %bb8
bb7:
  br label %ret
bb8:
  br label %bb9
bb9:
  %t49 = load ptr, ptr %l3, !tbaa !29
  %t51 = getelementptr %"compiler/ast:TypeDecl", ptr %t49, i32 0, i32 3
  %t52 = load ptr, ptr %t51, !tbaa !29
  store ptr %t52, ptr %l4, !tbaa !29
  %t54 = load ptr, ptr %l4, !tbaa !29
  store ptr %t54, ptr %l33, !tbaa !29
  store i1 false, ptr %l34, !tbaa !21
  %t55 = load ptr, ptr %l33, !tbaa !29
  %t56 = icmp ne ptr %t55, null
  br i1 %t56, label %bb10, label %bb11
bb10:
  %t58 = load ptr, ptr %l33, !tbaa !29
  %t59 = load i64, ptr %t58, !range !{i64 0, i64 5}
  %t61 = icmp eq i64 %t59, 2
  store i1 %t61, ptr %l34, !tbaa !21
  br label %bb11
bb11:
  %t62 = load i1, ptr %l34, !tbaa !21
  br i1 %t62, label %bb12, label %bb13
bb12:
  %t63 = load ptr, ptr %l4, !tbaa !29
  %t65 = getelementptr { i64, [6 x i64] }, ptr %t63, i32 0, i32 1
  %t66 = getelementptr { { i64, ptr }, { i64, ptr }, { i64, ptr } }, ptr %t65, i32 0, i32 0
  %t67 = load { i64, ptr }, ptr %t66
  store { i64, ptr } %t67, ptr %l5, !tbaa !27
  br label %bb14
bb13:
  br label %bb33
bb14:
  %t69 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t69, ptr %l6, !tbaa !27
  store i64 0, ptr %l7, !tbaa !24
  %t71 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t73 = extractvalue { i64, ptr } %t71, 0
  store i64 %t73, ptr %l8, !tbaa !24
  br label %bb15
bb15:
  %t75 = load i64, ptr %l7, !tbaa !24
  %t76 = load i64, ptr %l8, !tbaa !24
  %t79 = icmp slt i64 %t75, %t76
  %t81 = xor i1 %t79, true
  br i1 %t81, label %bb16, label %bb17
bb16:
  br label %bb32
bb17:
  br label %bb18
bb18:
  %t83 = load { i64, ptr }, ptr %l6, !tbaa !27
  store { i64, ptr } %t83, ptr %l46, !tbaa !27
  %t84 = load i64, ptr %l7, !tbaa !24
  %t86 = getelementptr { i64, ptr }, ptr %l46, i32 0, i32 1
  %t87 = load ptr, ptr %t86, !tbaa !27
  %t88 = getelementptr ptr, ptr %t87, i64 %t84
  %t89 = load ptr, ptr %t88, !tbaa !39
  store ptr %t89, ptr %l9, !tbaa !29
  %t91 = load ptr, ptr %l9, !tbaa !29
  %t93 = call i1 @compiler_2fast_2ecompiler_2fast_3aFunc_2eIsBuilder(ptr %v0, ptr %t91)
  store i1 %t93, ptr %l50
  br label %bb19
bb19:
  %t94 = load i1, ptr %l50, !tbaa !21
  br i1 %t94, label %bb20, label %bb21
bb20:
  store %olang.scope zeroinitializer, ptr %s6
  %t95 = load ptr, ptr %l2, !tbaa !29
  store ptr %t95, ptr %l51, !tbaa !29
  %t96 = ptrtoint ptr %v1 to i64
  store i64 %t96, ptr %l52, !tbaa !24
  %t97 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1
  br i1 %t97, label %bb22, label %bb23
bb21:
  store %olang.scope zeroinitializer, ptr %s8
  %t99 = load ptr, ptr %l2, !tbaa !29
  store ptr %t99, ptr %l64, !tbaa !29
  %t100 = ptrtoint ptr %v1 to i64
  store i64 %t100, ptr %l65, !tbaa !24
  %t101 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1
  br i1 %t101, label %bb26, label %bb27
bb22:
  %t103 = call ptr @__olang_region_make(ptr %v1)
  %t104 = ptrtoint ptr %t103 to i64
  store i64 %t104, ptr %l52, !tbaa !24
  br label %bb23
bb23:
  %t105 = load ptr, ptr %l0, !tbaa !29
  %t107 = getelementptr %"compiler/needs:walker", ptr %t105, i32 0, i32 0
  %t108 = load ptr, ptr %t107, !tbaa !29
  %t110 = getelementptr %"compiler/check:Checker", ptr %t108, i32 0, i32 1
  %t111 = load ptr, ptr %t110, !tbaa !29
  %t113 = getelementptr %"compiler/generic:Program", ptr %t111, i32 0, i32 0
  %t114 = load ptr, ptr %t113, !tbaa !29
  %t116 = getelementptr %"compiler/load:Loader", ptr %t114, i32 0, i32 3
  %t117 = load ptr, ptr %t116, !tbaa !29
  %t118 = load ptr, ptr %l9, !tbaa !29
  %t120 = getelementptr %"compiler/ast:Func", ptr %t118, i32 0, i32 10
  %t121 = load i32, ptr %t120, !tbaa !23
  %t124 = call { i64, ptr } @compiler_2fsource_2ecompiler_2fsource_3aNames_2eText(ptr %v0, ptr %s6, ptr %t117, i32 %t121)
  store { i64, ptr } %t124, ptr %l61
  br label %bb24
bb24:
  %t125 = load { i64, ptr }, ptr %l61, !tbaa !27
  %t126 = extractvalue { i64, ptr } %t125, 1
  %t127 = extractvalue { i64, ptr } %t125, 0
  %t128 = extractvalue { i64, ptr } { i64 12, ptr getelementptr inbounds (<{ i64, [12 x i8] }>, ptr @.d30, i32 0, i32 1) }, 1
  %t129 = extractvalue { i64, ptr } { i64 12, ptr getelementptr inbounds (<{ i64, [12 x i8] }>, ptr @.d30, i32 0, i32 1) }, 0
  %t130 = add i64 %t127, %t129
  %t131 = load i64, ptr %l52
  %t132 = inttoptr i64 %t131 to ptr
  %t133 = call ptr @__olang_scope_alloc(ptr %t132, i64 %t130)
  call void @olang_textcopy(ptr %t133, ptr %t126, i64 %t127)
  %t134 = getelementptr i8, ptr %t133, i64 %t127
  call void @olang_textcopy(ptr %t134, ptr %t128, i64 %t129)
  %t135 = insertvalue { i64, ptr } undef, i64 %t130, 0
  %t136 = insertvalue { i64, ptr } %t135, ptr %t133, 1
  %t138 = load i64, ptr %l52
  %t139 = inttoptr i64 %t138 to ptr
  %t140 = extractvalue { i64, ptr } %t136, 0
  %t141 = extractvalue { i64, ptr } %t136, 1
  %t142 = mul i64 %t140, 1
  %t143 = call ptr @__olang_scope_alloc(ptr %t139, i64 %t142)
  call void @llvm.memcpy.p0.p0.i64(ptr %t143, ptr %t141, i64 %t142, i1 false)
  %t144 = insertvalue { i64, ptr } undef, i64 %t140, 0
  %t145 = insertvalue { i64, ptr } %t144, ptr %t143, 1
  %t146 = load ptr, ptr %l51, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v1, ptr %v1, ptr %t146, { i64, ptr } %t145)
  br label %bb25
bb25:
  call void @__olang_scope_close(ptr %s6)
  br label %bb30
bb26:
  %t148 = call ptr @__olang_region_make(ptr %v1)
  %t149 = ptrtoint ptr %t148 to i64
  store i64 %t149, ptr %l65, !tbaa !24
  br label %bb27
bb27:
  %t150 = load ptr, ptr %l0, !tbaa !29
  %t152 = getelementptr %"compiler/needs:walker", ptr %t150, i32 0, i32 0
  %t153 = load ptr, ptr %t152, !tbaa !29
  %t155 = getelementptr %"compiler/check:Checker", ptr %t153, i32 0, i32 1
  %t156 = load ptr, ptr %t155, !tbaa !29
  %t158 = getelementptr %"compiler/generic:Program", ptr %t156, i32 0, i32 0
  %t159 = load ptr, ptr %t158, !tbaa !29
  %t161 = getelementptr %"compiler/load:Loader", ptr %t159, i32 0, i32 3
  %t162 = load ptr, ptr %t161, !tbaa !29
  %t163 = load ptr, ptr %l9, !tbaa !29
  %t165 = getelementptr %"compiler/ast:Func", ptr %t163, i32 0, i32 2
  %t166 = load i32, ptr %t165, !tbaa !23
  %t169 = call { i64, ptr } @compiler_2fsource_2ecompiler_2fsource_3aNames_2eText(ptr %v0, ptr %s8, ptr %t162, i32 %t166)
  store { i64, ptr } %t169, ptr %l74
  br label %bb28
bb28:
  %t170 = load { i64, ptr }, ptr %l74, !tbaa !27
  %t171 = extractvalue { i64, ptr } %t170, 1
  %t172 = extractvalue { i64, ptr } %t170, 0
  %t173 = load i64, ptr %l65
  %t174 = inttoptr i64 %t173 to ptr
  %t175 = call ptr @__olang_scope_alloc(ptr %t174, i64 %t172)
  call void @olang_textcopy(ptr %t175, ptr %t171, i64 %t172)
  %t176 = insertvalue { i64, ptr } undef, i64 %t172, 0
  %t177 = insertvalue { i64, ptr } %t176, ptr %t175, 1
  %t179 = load i64, ptr %l65
  %t180 = inttoptr i64 %t179 to ptr
  %t181 = extractvalue { i64, ptr } %t177, 0
  %t182 = extractvalue { i64, ptr } %t177, 1
  %t183 = mul i64 %t181, 1
  %t184 = call ptr @__olang_scope_alloc(ptr %t180, i64 %t183)
  call void @llvm.memcpy.p0.p0.i64(ptr %t184, ptr %t182, i64 %t183, i1 false)
  %t185 = insertvalue { i64, ptr } undef, i64 %t181, 0
  %t186 = insertvalue { i64, ptr } %t185, ptr %t184, 1
  %t187 = load ptr, ptr %l64, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v1, ptr %v1, ptr %t187, { i64, ptr } %t186)
  br label %bb29
bb29:
  call void @__olang_scope_close(ptr %s8)
  br label %bb30
bb30:
  br label %bb31
bb31:
  %t189 = load i64, ptr %l7, !tbaa !24
  %t191 = add i64 %t189, 1
  store i64 %t191, ptr %l7, !tbaa !24
  br label %bb15
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
  call void @__olang_check_failed(ptr @olang_loc_cca6d9a3ad2d5c7a_8d3fd43a7368455e)
  unreachable
bb38:
  br label %ret
ret:
  ret void
}

define dso_local %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2fneeds_2ecompiler_2fneeds_3awalker_2eunpromised(ptr %v0, ptr %v1, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca %"compiler/generic:varRow"
  %lp3 = alloca ptr
  %l4 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l5 = alloca i1
  %l6 = alloca { i64, ptr }
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i32
  %l10 = alloca ptr
  %l11 = alloca i64
  %l12 = alloca { i64, ptr }
  %l15 = alloca ptr
  %l18 = alloca i64
  %l20 = alloca %"compiler/generic:varRow"
  %l21 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l22 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l30 = alloca { i64, ptr }
  %l38 = alloca { i64, ptr }
  %l45 = alloca i1
  %l54 = alloca ptr
  %l55 = alloca i64
  %l57 = alloca i64
  %l62 = alloca { i64, ptr }
  %l65 = alloca i1
  %l66 = alloca i1
  %l68 = alloca i1
  %l70 = alloca i1
  %s0 = alloca %olang.scope
  %s2 = alloca %olang.scope
  %rv = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/needs:walker", ptr %t1, i32 0, i32 0
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t6 = getelementptr %"compiler/check:Checker", ptr %t4, i32 0, i32 1
  %t7 = load ptr, ptr %t6, !tbaa !29
  store ptr %t7, ptr %l15, !tbaa !29
  %t8 = load ptr, ptr %l0, !tbaa !29
  %t10 = getelementptr %"compiler/needs:walker", ptr %t8, i32 0, i32 1
  %t11 = load i64, ptr %t10, !tbaa !24
  %t13 = call i64 @compiler_2fgeneric_2eFnOwner(i64 %t11)
  store i64 %t13, ptr %l18
  br label %bb1
bb1:
  %t14 = load i64, ptr %l1, !tbaa !24
  %t15 = load ptr, ptr %l15, !tbaa !29
  %t16 = load i64, ptr %l18, !tbaa !24
  %t18 = call %"compiler/generic:varRow" @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eVarAt(ptr %v0, ptr %t15, i64 %t16, i64 %t14)
  store %"compiler/generic:varRow" %t18, ptr %l20
  br label %bb2
bb2:
  %t19 = load %"compiler/generic:varRow", ptr %l20
  store %"compiler/generic:varRow" %t19, ptr %l2
  %t20 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2ector(ptr %v1, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t20, ptr %l21
  br label %bb3
bb3:
  %t21 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 32, i64 8)
  store ptr %t21, ptr %lp3
  %t22 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l21
  %t23 = load ptr, ptr %lp3
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t22, ptr %t23
  %t24 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2ector(ptr %s0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t24, ptr %l22
  br label %bb4
bb4:
  %t25 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l22
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t25, ptr %l4
  store i1 false, ptr %l5, !tbaa !21
  %t26 = getelementptr %"compiler/generic:varRow", ptr %l2, i32 0, i32 3
  %t27 = load i32, ptr %t26, !tbaa !23
  %t28 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t31 = icmp ne i32 %t27, %t28
  br i1 %t31, label %bb5, label %bb6
bb5:
  store %olang.scope zeroinitializer, ptr %s2
  %t33 = load ptr, ptr %l0, !tbaa !29
  %t35 = getelementptr %"compiler/needs:walker", ptr %t33, i32 0, i32 0
  %t36 = load ptr, ptr %t35, !tbaa !29
  %t38 = getelementptr %"compiler/check:Checker", ptr %t36, i32 0, i32 1
  %t39 = load ptr, ptr %t38, !tbaa !29
  %t40 = getelementptr %"compiler/generic:varRow", ptr %l2, i32 0, i32 3
  %t41 = load i32, ptr %t40, !tbaa !23
  %t44 = call { i64, ptr } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eBoundTraits(ptr %v0, ptr %s2, ptr %t39, i32 %t41)
  store { i64, ptr } %t44, ptr %l30
  br label %bb7
bb6:
  br label %bb19
bb7:
  %t45 = load { i64, ptr }, ptr %l30, !tbaa !27
  %t46 = extractvalue { i64, ptr } %t45, 0
  %t47 = extractvalue { i64, ptr } %t45, 1
  %t48 = mul i64 %t46, 4
  %t49 = call ptr @__olang_scope_alloc(ptr %s2, i64 %t48)
  call void @llvm.memcpy.p0.p0.i64(ptr %t49, ptr %t47, i64 %t48, i1 false)
  %t50 = insertvalue { i64, ptr } undef, i64 %t46, 0
  %t51 = insertvalue { i64, ptr } %t50, ptr %t49, 1
  store { i64, ptr } %t51, ptr %l6, !tbaa !27
  store i64 0, ptr %l7, !tbaa !24
  %t53 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t55 = extractvalue { i64, ptr } %t53, 0
  store i64 %t55, ptr %l8, !tbaa !24
  br label %bb8
bb8:
  %t57 = load i64, ptr %l7, !tbaa !24
  %t58 = load i64, ptr %l8, !tbaa !24
  %t61 = icmp slt i64 %t57, %t58
  %t63 = xor i1 %t61, true
  br i1 %t63, label %bb9, label %bb10
bb9:
  br label %bb18
bb10:
  br label %bb11
bb11:
  %t65 = load { i64, ptr }, ptr %l6, !tbaa !27
  store { i64, ptr } %t65, ptr %l38, !tbaa !27
  %t66 = load i64, ptr %l7, !tbaa !24
  %t68 = getelementptr { i64, ptr }, ptr %l38, i32 0, i32 1
  %t69 = load ptr, ptr %t68, !tbaa !27
  %t70 = getelementptr i32, ptr %t69, i64 %t66
  %t71 = load i32, ptr %t70, !tbaa !33
  store i32 %t71, ptr %l9, !tbaa !23
  %t73 = load ptr, ptr %l0, !tbaa !29
  %t75 = getelementptr %"compiler/needs:walker", ptr %t73, i32 0, i32 0
  %t76 = load ptr, ptr %t75, !tbaa !29
  %t78 = getelementptr %"compiler/check:Checker", ptr %t76, i32 0, i32 1
  %t79 = load ptr, ptr %t78, !tbaa !29
  %t80 = load i32, ptr %l9, !tbaa !23
  %t83 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eIsClosedTrait(ptr %v0, ptr %t79, i32 %t80)
  store i1 %t83, ptr %l45
  br label %bb12
bb12:
  %t84 = load i1, ptr %l45, !tbaa !21
  br i1 %t84, label %bb13, label %bb14
bb13:
  store i1 true, ptr %l5, !tbaa !21
  br label %bb15
bb14:
  br label %bb15
bb15:
  %t85 = load ptr, ptr %l0, !tbaa !29
  %t86 = load i32, ptr %l9, !tbaa !23
  call void @compiler_2fneeds_2ecompiler_2fneeds_3awalker_2etraitMethods(ptr %v0, ptr %s0, ptr %t85, i32 %t86, ptr %l4)
  br label %bb16
bb16:
  br label %bb17
bb17:
  %t90 = load i64, ptr %l7, !tbaa !24
  %t92 = add i64 %t90, 1
  store i64 %t92, ptr %l7, !tbaa !24
  br label %bb8
bb18:
  call void @__olang_scope_close(ptr %s2)
  br label %bb19
bb19:
  %t94 = load ptr, ptr %l0, !tbaa !29
  %t96 = getelementptr %"compiler/needs:walker", ptr %t94, i32 0, i32 7
  %t97 = load i64, ptr %l1, !tbaa !24
  %t100 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2fvec_3aVec_3cstd_2fprel_H7b5f712395151d264e9eac052c719793(ptr %v0, ptr %v0, ptr %t96, i64 %t97)
  store ptr %t100, ptr %l54
  br label %bb20
bb20:
  %t101 = load ptr, ptr %l54, !tbaa !29
  store ptr %t101, ptr %l10, !tbaa !29
  store i64 0, ptr %l11, !tbaa !24
  br label %bb21
bb21:
  %t102 = load i64, ptr %l11, !tbaa !24
  store i64 %t102, ptr %l55, !tbaa !24
  %t103 = load ptr, ptr %l10, !tbaa !29
  %t105 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %v0, ptr %t103)
  store i64 %t105, ptr %l57
  br label %bb22
bb22:
  %t106 = load i64, ptr %l55, !tbaa !24
  %t107 = load i64, ptr %l57, !tbaa !24
  %t108 = icmp slt i64 %t106, %t107
  %t110 = xor i1 %t108, true
  br i1 %t110, label %bb23, label %bb24
bb23:
  br label %bb40
bb24:
  br label %bb25
bb25:
  %t112 = load ptr, ptr %l10, !tbaa !29
  %t113 = load i64, ptr %l11, !tbaa !24
  %t116 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %v0, ptr %v0, ptr %t112, i64 %t113)
  store { i64, ptr } %t116, ptr %l62
  br label %bb26
bb26:
  %t117 = load { i64, ptr }, ptr %l62, !tbaa !27
  store { i64, ptr } %t117, ptr %l12, !tbaa !27
  %t118 = load { i64, ptr }, ptr %l12, !tbaa !27
  %t121 = call i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H0127831368543eff3b7740d7d3240080(ptr %s0, ptr %v0, ptr %l4, { i64, ptr } %t118)
  store i1 %t121, ptr %l65
  br label %bb27
bb27:
  %t122 = load i1, ptr %l65, !tbaa !21
  br i1 %t122, label %bb28, label %bb29
bb28:
  store i1 true, ptr %l66, !tbaa !21
  br label %bb34
bb29:
  %t123 = load i1, ptr %l5, !tbaa !21
  br i1 %t123, label %bb30, label %bb31
bb30:
  %t125 = load { i64, ptr }, ptr %l12, !tbaa !27
  %t127 = call i1 @compiler_2fneeds_2eopNeed(ptr %v0, { i64, ptr } %t125)
  store i1 %t127, ptr %l70
  br label %bb32
bb31:
  store i1 false, ptr %l68, !tbaa !21
  br label %bb33
bb32:
  %t128 = load i1, ptr %l70, !tbaa !21
  store i1 %t128, ptr %l68, !tbaa !21
  br label %bb33
bb33:
  %t129 = load i1, ptr %l68, !tbaa !21
  store i1 %t129, ptr %l66, !tbaa !21
  br label %bb34
bb34:
  %t130 = load i1, ptr %l66, !tbaa !21
  br i1 %t130, label %bb35, label %bb36
bb35:
  br label %bb39
bb36:
  br label %bb37
bb37:
  %t131 = load ptr, ptr %lp3
  %t132 = load { i64, ptr }, ptr %l12, !tbaa !27
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v1, ptr %v0, ptr %t131, { i64, ptr } %t132)
  br label %bb38
bb38:
  br label %bb39
bb39:
  %t135 = load i64, ptr %l11, !tbaa !24
  %t137 = add i64 %t135, 1
  store i64 %t137, ptr %l11, !tbaa !24
  br label %bb21
bb40:
  %t139 = load ptr, ptr %lp3
  %t140 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t139
  call void @__olang_scope_close(ptr %s0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t140, ptr %rv
  br label %ret
ret:
  %rr = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %rv
  ret %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %rr
}

define dso_local i64 @compiler_2fneeds_2ecompiler_2fneeds_3awalker_2evalOf(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i32
  %l3 = alloca ptr
  %l4 = alloca ptr
  %l8 = alloca ptr
  %l9 = alloca i1
  %l14 = alloca i64
  %l18 = alloca i64
  %l19 = alloca i32
  %l20 = alloca ptr
  %l21 = alloca i1
  %l29 = alloca i64
  %l30 = alloca ptr
  %l31 = alloca i1
  %l38 = alloca i64
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
  store i64 -1, ptr %rv
  br label %ret
bb2:
  br label %bb3
bb3:
  %t6 = load ptr, ptr %l1, !tbaa !29
  store ptr %t6, ptr %l8, !tbaa !29
  store i1 false, ptr %l9, !tbaa !21
  %t7 = load ptr, ptr %l8, !tbaa !29
  %t8 = icmp ne ptr %t7, null
  br i1 %t8, label %bb4, label %bb5
bb4:
  %t10 = load ptr, ptr %l8, !tbaa !29
  %t11 = load i64, ptr %t10, !range !{i64 0, i64 30}
  %t13 = icmp eq i64 %t11, 0
  store i1 %t13, ptr %l9, !tbaa !21
  br label %bb5
bb5:
  %t14 = load i1, ptr %l9, !tbaa !21
  br i1 %t14, label %bb6, label %bb7
bb6:
  %t15 = load ptr, ptr %l1, !tbaa !29
  %t17 = getelementptr { i64, [4 x i64] }, ptr %t15, i32 0, i32 1
  %t18 = getelementptr { %"compiler/source:Span", i32 }, ptr %t17, i32 0, i32 1
  %t19 = load i32, ptr %t18
  store i32 %t19, ptr %l2, !tbaa !23
  br label %bb8
bb7:
  br label %bb13
bb8:
  %t21 = load ptr, ptr %l0, !tbaa !29
  %t23 = getelementptr %"compiler/needs:walker", ptr %t21, i32 0, i32 5
  %t24 = load i32, ptr %l2, !tbaa !23
  %t27 = call { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fsource_3aNameId_2c_20I64_3e_H2a27ec2ae5362b2f0ac6d54f3e063c70(ptr %v0, ptr %t23, i32 %t24)
  %t28 = extractvalue { i32, i64 } %t27, 1
  %t29 = extractvalue { i32, i64 } %t27, 0
  store i32 %t29, ptr %l19
  %t30 = icmp ne i32 %t29, 0
  br i1 %t30, label %bb10, label %ok.31, !prof !99
ok.31:
  store i64 %t28, ptr %l18
  br label %bb9
bb9:
  %t32 = load i64, ptr %l18, !tbaa !24
  store i64 %t32, ptr %l14, !tbaa !24
  br label %bb12
bb10:
  br label %bb11
bb11:
  store i64 -1, ptr %l14, !tbaa !24
  br label %bb12
bb12:
  %t33 = load i64, ptr %l14, !tbaa !24
  store i64 %t33, ptr %rv
  br label %ret
bb13:
  %t34 = load ptr, ptr %l1, !tbaa !29
  store ptr %t34, ptr %l20, !tbaa !29
  store i1 false, ptr %l21, !tbaa !21
  %t35 = load ptr, ptr %l20, !tbaa !29
  %t36 = icmp ne ptr %t35, null
  br i1 %t36, label %bb14, label %bb15
bb14:
  %t38 = load ptr, ptr %l20, !tbaa !29
  %t39 = load i64, ptr %t38, !range !{i64 0, i64 30}
  %t41 = icmp eq i64 %t39, 2
  store i1 %t41, ptr %l21, !tbaa !21
  br label %bb15
bb15:
  %t42 = load i1, ptr %l21, !tbaa !21
  br i1 %t42, label %bb16, label %bb17
bb16:
  %t43 = load ptr, ptr %l1, !tbaa !29
  %t45 = getelementptr { i64, [4 x i64] }, ptr %t43, i32 0, i32 1
  %t46 = getelementptr { %"compiler/source:Span", ptr }, ptr %t45, i32 0, i32 1
  %t47 = load ptr, ptr %t46
  store ptr %t47, ptr %l3, !tbaa !29
  br label %bb18
bb17:
  br label %bb20
bb18:
  %t49 = load ptr, ptr %l0, !tbaa !29
  %t50 = load ptr, ptr %l3, !tbaa !29
  %t54 = call i64 @compiler_2fneeds_2ecompiler_2fneeds_3awalker_2evalOf(ptr %v0, ptr %v1, ptr %t49, ptr %t50)
  store i64 %t54, ptr %l29
  br label %bb19
bb19:
  %t55 = load i64, ptr %l29, !tbaa !24
  store i64 %t55, ptr %rv
  br label %ret
bb20:
  %t56 = load ptr, ptr %l1, !tbaa !29
  store ptr %t56, ptr %l30, !tbaa !29
  store i1 false, ptr %l31, !tbaa !21
  %t57 = load ptr, ptr %l30, !tbaa !29
  %t58 = icmp ne ptr %t57, null
  br i1 %t58, label %bb21, label %bb22
bb21:
  %t60 = load ptr, ptr %l30, !tbaa !29
  %t61 = load i64, ptr %t60, !range !{i64 0, i64 30}
  %t63 = icmp eq i64 %t61, 15
  store i1 %t63, ptr %l31, !tbaa !21
  br label %bb22
bb22:
  %t64 = load i1, ptr %l31, !tbaa !21
  br i1 %t64, label %bb23, label %bb24
bb23:
  %t65 = load ptr, ptr %l1, !tbaa !29
  %t67 = getelementptr { i64, [4 x i64] }, ptr %t65, i32 0, i32 1
  %t68 = getelementptr { %"compiler/source:Span", ptr, { i64, ptr } }, ptr %t67, i32 0, i32 1
  %t69 = load ptr, ptr %t68
  store ptr %t69, ptr %l4, !tbaa !29
  br label %bb25
bb24:
  br label %bb27
bb25:
  %t71 = load ptr, ptr %l0, !tbaa !29
  %t72 = load ptr, ptr %l4, !tbaa !29
  %t75 = call i64 @compiler_2fneeds_2ecompiler_2fneeds_3awalker_2eelemsOf(ptr %v0, ptr %v1, ptr %t71, ptr %t72)
  store i64 %t75, ptr %l38
  br label %bb26
bb26:
  %t76 = load i64, ptr %l38, !tbaa !24
  store i64 %t76, ptr %rv
  br label %ret
bb27:
  br i1 true, label %bb28, label %bb29
bb28:
  br label %bb30
bb29:
  br label %bb31
bb30:
  store i64 -1, ptr %rv
  br label %ret
bb31:
  call void @__olang_check_failed(ptr @olang_loc_af1627261b9cf562_9c70302a273e4dc6)
  unreachable
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local i64 @compiler_2fneeds_2ecompiler_2fneeds_3awalker_2evarOf(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca { i64, ptr }
  %l3 = alloca { i64, ptr }
  %l4 = alloca ptr
  %l5 = alloca ptr
  %l9 = alloca ptr
  %l10 = alloca i1
  %l20 = alloca i1
  %l25 = alloca i64
  %l28 = alloca { i64, ptr }
  %l30 = alloca i64
  %l31 = alloca i32
  %l32 = alloca ptr
  %l33 = alloca i1
  %l41 = alloca i64
  %l42 = alloca ptr
  %l43 = alloca i1
  %l50 = alloca i64
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
  store i64 -1, ptr %rv
  br label %ret
bb2:
  br label %bb3
bb3:
  %t6 = load ptr, ptr %l1, !tbaa !29
  store ptr %t6, ptr %l9, !tbaa !29
  store i1 false, ptr %l10, !tbaa !21
  %t7 = load ptr, ptr %l9, !tbaa !29
  %t8 = icmp ne ptr %t7, null
  br i1 %t8, label %bb4, label %bb5
bb4:
  %t10 = load ptr, ptr %l9, !tbaa !29
  %t11 = load i64, ptr %t10, !range !{i64 0, i64 8}
  %t13 = icmp eq i64 %t11, 0
  store i1 %t13, ptr %l10, !tbaa !21
  br label %bb5
bb5:
  %t14 = load i1, ptr %l10, !tbaa !21
  br i1 %t14, label %bb6, label %bb7
bb6:
  %t15 = load ptr, ptr %l1, !tbaa !29
  %t17 = getelementptr { i64, [5 x i64] }, ptr %t15, i32 0, i32 1
  %t18 = getelementptr { %"compiler/source:Span", { i64, ptr }, { i64, ptr } }, ptr %t17, i32 0, i32 1
  %t19 = load { i64, ptr }, ptr %t18
  store { i64, ptr } %t19, ptr %l2, !tbaa !27
  %t21 = load ptr, ptr %l1, !tbaa !29
  %t23 = getelementptr { i64, [5 x i64] }, ptr %t21, i32 0, i32 1
  %t24 = getelementptr { %"compiler/source:Span", { i64, ptr }, { i64, ptr } }, ptr %t23, i32 0, i32 2
  %t25 = load { i64, ptr }, ptr %t24
  store { i64, ptr } %t25, ptr %l3, !tbaa !27
  br label %bb8
bb7:
  br label %bb19
bb8:
  %t27 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t29 = extractvalue { i64, ptr } %t27, 0
  %t31 = icmp ne i64 %t29, 1
  br i1 %t31, label %bb9, label %bb10
bb9:
  store i1 true, ptr %l20, !tbaa !21
  br label %bb11
bb10:
  %t33 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t35 = extractvalue { i64, ptr } %t33, 0
  %t37 = icmp sgt i64 %t35, 0
  store i1 %t37, ptr %l20, !tbaa !21
  br label %bb11
bb11:
  %t39 = load i1, ptr %l20, !tbaa !21
  br i1 %t39, label %bb12, label %bb13
bb12:
  store i64 -1, ptr %rv
  br label %ret
bb13:
  br label %bb14
bb14:
  %t41 = load ptr, ptr %l0, !tbaa !29
  %t43 = getelementptr %"compiler/needs:walker", ptr %t41, i32 0, i32 4
  %t44 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t44, ptr %l28, !tbaa !27
  %t45 = getelementptr { i64, ptr }, ptr %l28, i32 0, i32 1
  %t46 = load ptr, ptr %t45, !tbaa !27
  %t47 = getelementptr i32, ptr %t46, i64 0
  %t48 = load i32, ptr %t47, !tbaa !33
  %t51 = call { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fsource_3aNameId_2c_20I64_3e_H2a27ec2ae5362b2f0ac6d54f3e063c70(ptr %v0, ptr %t43, i32 %t48)
  %t52 = extractvalue { i32, i64 } %t51, 1
  %t53 = extractvalue { i32, i64 } %t51, 0
  store i32 %t53, ptr %l31
  %t54 = icmp ne i32 %t53, 0
  br i1 %t54, label %bb16, label %ok.55, !prof !99
ok.55:
  store i64 %t52, ptr %l30
  br label %bb15
bb15:
  %t56 = load i64, ptr %l30, !tbaa !24
  store i64 %t56, ptr %l25, !tbaa !24
  br label %bb18
bb16:
  br label %bb17
bb17:
  store i64 -1, ptr %l25, !tbaa !24
  br label %bb18
bb18:
  %t57 = load i64, ptr %l25, !tbaa !24
  store i64 %t57, ptr %rv
  br label %ret
bb19:
  %t58 = load ptr, ptr %l1, !tbaa !29
  store ptr %t58, ptr %l32, !tbaa !29
  store i1 false, ptr %l33, !tbaa !21
  %t59 = load ptr, ptr %l32, !tbaa !29
  %t60 = icmp ne ptr %t59, null
  br i1 %t60, label %bb20, label %bb21
bb20:
  %t62 = load ptr, ptr %l32, !tbaa !29
  %t63 = load i64, ptr %t62, !range !{i64 0, i64 8}
  %t65 = icmp eq i64 %t63, 3
  store i1 %t65, ptr %l33, !tbaa !21
  br label %bb21
bb21:
  %t66 = load i1, ptr %l33, !tbaa !21
  br i1 %t66, label %bb22, label %bb23
bb22:
  %t67 = load ptr, ptr %l1, !tbaa !29
  %t69 = getelementptr { i64, [5 x i64] }, ptr %t67, i32 0, i32 1
  %t70 = getelementptr { %"compiler/source:Span", ptr, i1, i1 }, ptr %t69, i32 0, i32 1
  %t71 = load ptr, ptr %t70
  store ptr %t71, ptr %l4, !tbaa !29
  br label %bb24
bb23:
  br label %bb26
bb24:
  %t73 = load ptr, ptr %l0, !tbaa !29
  %t74 = load ptr, ptr %l4, !tbaa !29
  %t78 = call i64 @compiler_2fneeds_2ecompiler_2fneeds_3awalker_2evarOf(ptr %v0, ptr %v1, ptr %t73, ptr %t74)
  store i64 %t78, ptr %l41
  br label %bb25
bb25:
  %t79 = load i64, ptr %l41, !tbaa !24
  store i64 %t79, ptr %rv
  br label %ret
bb26:
  %t80 = load ptr, ptr %l1, !tbaa !29
  store ptr %t80, ptr %l42, !tbaa !29
  store i1 false, ptr %l43, !tbaa !21
  %t81 = load ptr, ptr %l42, !tbaa !29
  %t82 = icmp ne ptr %t81, null
  br i1 %t82, label %bb27, label %bb28
bb27:
  %t84 = load ptr, ptr %l42, !tbaa !29
  %t85 = load i64, ptr %t84, !range !{i64 0, i64 8}
  %t87 = icmp eq i64 %t85, 4
  store i1 %t87, ptr %l43, !tbaa !21
  br label %bb28
bb28:
  %t88 = load i1, ptr %l43, !tbaa !21
  br i1 %t88, label %bb29, label %bb30
bb29:
  %t89 = load ptr, ptr %l1, !tbaa !29
  %t91 = getelementptr { i64, [5 x i64] }, ptr %t89, i32 0, i32 1
  %t92 = getelementptr { %"compiler/source:Span", ptr, i1 }, ptr %t91, i32 0, i32 1
  %t93 = load ptr, ptr %t92
  store ptr %t93, ptr %l5, !tbaa !29
  br label %bb31
bb30:
  br label %bb33
bb31:
  %t95 = load ptr, ptr %l0, !tbaa !29
  %t96 = load ptr, ptr %l5, !tbaa !29
  %t99 = call i64 @compiler_2fneeds_2ecompiler_2fneeds_3awalker_2evarOf(ptr %v0, ptr %v1, ptr %t95, ptr %t96)
  store i64 %t99, ptr %l50
  br label %bb32
bb32:
  %t100 = load i64, ptr %l50, !tbaa !24
  store i64 %t100, ptr %rv
  br label %ret
bb33:
  br i1 true, label %bb34, label %bb35
bb34:
  br label %bb36
bb35:
  br label %bb37
bb36:
  store i64 -1, ptr %rv
  br label %ret
bb37:
  call void @__olang_check_failed(ptr @olang_loc_2483447c4624faa8_69435275da3e8e94)
  unreachable
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2fneeds_2einnerNeeds(ptr %v0, ptr %v1, ptr %v2, ptr %a0, i64 %a1, ptr %a2, i64 %a3) #0 {
entry:
  %l4 = alloca ptr
  %lp5 = alloca ptr
  %l6 = alloca i64
  %l7 = alloca ptr
  %l8 = alloca i64
  %l9 = alloca { i64, ptr }
  %l13 = alloca %"compiler/needs:walker"
  %l16 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l19 = alloca i64
  %l22 = alloca i1
  %l23 = alloca i64
  %l26 = alloca i64
  %l32 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l34 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l36 = alloca i64
  %l38 = alloca i64
  %l43 = alloca { i64, ptr }
  %l44 = alloca ptr
  %l45 = alloca i64
  %s2 = alloca %olang.scope
  %rv = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %t4 = alloca %"compiler/needs:walker", align 8
  br label %start
start:
  br label %bb0
bb0:
  call void @compiler_2fneeds_3awalker_2ector(ptr %t4, ptr %v0, ptr %v0, ptr %a0, i64 %a1, i64 %a3)
  call void @llvm.memmove.p0.p0.i64(ptr %l13, ptr %t4, i64 280, i1 false)
  br label %bb1
bb1:
  %t8 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 280, i64 8)
  call void @llvm.memmove.p0.p0.i64(ptr %t8, ptr %l13, i64 280, i1 false)
  store ptr %t8, ptr %l4, !tbaa !29
  %t10 = load ptr, ptr %l4, !tbaa !29
  call void @compiler_2fneeds_2ecompiler_2fneeds_3awalker_2erun(ptr %v0, ptr %t10)
  br label %bb2
bb2:
  %t12 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2ector(ptr %v2, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t12, ptr %l16
  br label %bb3
bb3:
  %t13 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 32, i64 8)
  store ptr %t13, ptr %lp5
  %t14 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l16
  %t15 = load ptr, ptr %lp5
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t14, ptr %t15
  %t16 = load ptr, ptr %l4, !tbaa !29
  %t20 = call i64 @compiler_2fneeds_2ecompiler_2fneeds_3awalker_2evarOf(ptr %v0, ptr %v1, ptr %t16, ptr %a2)
  store i64 %t20, ptr %l19
  br label %bb4
bb4:
  %t21 = load i64, ptr %l19, !tbaa !24
  store i64 %t21, ptr %l6, !tbaa !24
  %t22 = load i64, ptr %l6, !tbaa !24
  %t24 = icmp slt i64 %t22, 0
  br i1 %t24, label %bb5, label %bb6
bb5:
  store i1 true, ptr %l22, !tbaa !21
  br label %bb8
bb6:
  %t26 = load i64, ptr %l6, !tbaa !24
  store i64 %t26, ptr %l23, !tbaa !24
  %t27 = load ptr, ptr %l4, !tbaa !29
  %t29 = getelementptr %"compiler/needs:walker", ptr %t27, i32 0, i32 7
  %t31 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2fvec_3aVec_3cstd_2fprel_Hbb0b9cf8ae0bb786ffc6cf28ae45ef64(ptr %v0, ptr %t29)
  store i64 %t31, ptr %l26
  br label %bb7
bb7:
  %t32 = load i64, ptr %l23, !tbaa !24
  %t33 = load i64, ptr %l26, !tbaa !24
  %t34 = icmp sge i64 %t32, %t33
  store i1 %t34, ptr %l22, !tbaa !21
  br label %bb8
bb8:
  %t36 = load i1, ptr %l22, !tbaa !21
  br i1 %t36, label %bb9, label %bb10
bb9:
  %t37 = load ptr, ptr %lp5
  %t38 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t37
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t38, ptr %rv
  br label %ret
bb10:
  br label %bb11
bb11:
  store %olang.scope zeroinitializer, ptr %s2
  %t40 = load ptr, ptr %l4, !tbaa !29
  %t42 = getelementptr %"compiler/needs:walker", ptr %t40, i32 0, i32 7
  %t43 = load i64, ptr %l6, !tbaa !24
  %t46 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2fvec_3aVec_3cstd_2fprel_H21d8db2bdfeb46fab755f8173a35f95e(ptr %v0, ptr %s2, ptr %t42, i64 %t43)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t46, ptr %l32
  br label %bb12
bb12:
  %t48 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e(ptr %s2, ptr %l32)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t48, ptr %l34
  br label %bb13
bb13:
  %t49 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l34
  %t50 = call ptr @__olang_scope_alloc_a(ptr %s2, i64 32, i64 8)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t49, ptr %t50
  store ptr %t50, ptr %l7, !tbaa !29
  store i64 0, ptr %l8, !tbaa !24
  br label %bb14
bb14:
  %t52 = load i64, ptr %l8, !tbaa !24
  store i64 %t52, ptr %l36, !tbaa !24
  %t53 = load ptr, ptr %l7, !tbaa !29
  %t55 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %s2, ptr %t53)
  store i64 %t55, ptr %l38
  br label %bb15
bb15:
  %t56 = load i64, ptr %l36, !tbaa !24
  %t57 = load i64, ptr %l38, !tbaa !24
  %t58 = icmp slt i64 %t56, %t57
  %t60 = xor i1 %t58, true
  br i1 %t60, label %bb16, label %bb17
bb16:
  br label %bb24
bb17:
  br label %bb18
bb18:
  %t62 = load ptr, ptr %l7, !tbaa !29
  %t63 = load i64, ptr %l8, !tbaa !24
  %t66 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %s2, ptr %s2, ptr %t62, i64 %t63)
  store { i64, ptr } %t66, ptr %l43
  br label %bb19
bb19:
  %t67 = load { i64, ptr }, ptr %l43, !tbaa !27
  store { i64, ptr } %t67, ptr %l9, !tbaa !27
  %t68 = load ptr, ptr %lp5
  store ptr %t68, ptr %l44, !tbaa !29
  %t69 = ptrtoint ptr %v2 to i64
  store i64 %t69, ptr %l45, !tbaa !24
  %t70 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1
  br i1 %t70, label %bb20, label %bb21
bb20:
  %t72 = call ptr @__olang_region_make(ptr %v2)
  %t73 = ptrtoint ptr %t72 to i64
  store i64 %t73, ptr %l45, !tbaa !24
  br label %bb21
bb21:
  %t74 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t76 = extractvalue { i64, ptr } %t74, 1
  %t77 = extractvalue { i64, ptr } %t74, 0
  %t78 = load i64, ptr %l45
  %t79 = inttoptr i64 %t78 to ptr
  %t80 = call ptr @__olang_scope_alloc(ptr %t79, i64 %t77)
  call void @olang_textcopy(ptr %t80, ptr %t76, i64 %t77)
  %t81 = insertvalue { i64, ptr } undef, i64 %t77, 0
  %t82 = insertvalue { i64, ptr } %t81, ptr %t80, 1
  %t84 = load i64, ptr %l45
  %t85 = inttoptr i64 %t84 to ptr
  %t86 = extractvalue { i64, ptr } %t82, 0
  %t87 = extractvalue { i64, ptr } %t82, 1
  %t88 = mul i64 %t86, 1
  %t89 = call ptr @__olang_scope_alloc(ptr %t85, i64 %t88)
  call void @llvm.memcpy.p0.p0.i64(ptr %t89, ptr %t87, i64 %t88, i1 false)
  %t90 = insertvalue { i64, ptr } undef, i64 %t86, 0
  %t91 = insertvalue { i64, ptr } %t90, ptr %t89, 1
  %t92 = load ptr, ptr %l44, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v2, ptr %v2, ptr %t92, { i64, ptr } %t91)
  br label %bb22
bb22:
  br label %bb23
bb23:
  %t94 = load i64, ptr %l8, !tbaa !24
  %t96 = add i64 %t94, 1
  store i64 %t96, ptr %l8, !tbaa !24
  br label %bb14
bb24:
  call void @__olang_scope_close(ptr %s2)
  %t98 = load ptr, ptr %lp5
  %t99 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t98
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t99, ptr %rv
  br label %ret
ret:
  %rr = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %rv
  ret %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %rr
}

define dso_local i1 @compiler_2fneeds_2eopNeed(ptr %v0, { i64, ptr } %a0) #0 {
entry:
  %l1 = alloca ptr
  %l2 = alloca i64
  %l3 = alloca i64
  %l5 = alloca [12 x { i64, ptr }]
  %l18 = alloca i1
  %s1 = alloca %olang.scope
  %rv = alloca i1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s1
  %t1 = getelementptr [12 x { i64, ptr }], ptr %l5, i64 0, i64 0
  store { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d31, i32 0, i32 1) }, ptr %t1, !tbaa !37
  %t2 = getelementptr [12 x { i64, ptr }], ptr %l5, i64 0, i64 1
  store { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d32, i32 0, i32 1) }, ptr %t2, !tbaa !37
  %t3 = getelementptr [12 x { i64, ptr }], ptr %l5, i64 0, i64 2
  store { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d33, i32 0, i32 1) }, ptr %t3, !tbaa !37
  %t4 = getelementptr [12 x { i64, ptr }], ptr %l5, i64 0, i64 3
  store { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d34, i32 0, i32 1) }, ptr %t4, !tbaa !37
  %t5 = getelementptr [12 x { i64, ptr }], ptr %l5, i64 0, i64 4
  store { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d35, i32 0, i32 1) }, ptr %t5, !tbaa !37
  %t6 = getelementptr [12 x { i64, ptr }], ptr %l5, i64 0, i64 5
  store { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d36, i32 0, i32 1) }, ptr %t6, !tbaa !37
  %t7 = getelementptr [12 x { i64, ptr }], ptr %l5, i64 0, i64 6
  store { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d37, i32 0, i32 1) }, ptr %t7, !tbaa !37
  %t8 = getelementptr [12 x { i64, ptr }], ptr %l5, i64 0, i64 7
  store { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d38, i32 0, i32 1) }, ptr %t8, !tbaa !37
  %t9 = getelementptr [12 x { i64, ptr }], ptr %l5, i64 0, i64 8
  store { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d39, i32 0, i32 1) }, ptr %t9, !tbaa !37
  %t10 = getelementptr [12 x { i64, ptr }], ptr %l5, i64 0, i64 9
  store { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d40, i32 0, i32 1) }, ptr %t10, !tbaa !37
  %t11 = getelementptr [12 x { i64, ptr }], ptr %l5, i64 0, i64 10
  store { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d41, i32 0, i32 1) }, ptr %t11, !tbaa !37
  %t12 = getelementptr [12 x { i64, ptr }], ptr %l5, i64 0, i64 11
  store { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d42, i32 0, i32 1) }, ptr %t12, !tbaa !37
  %t13 = call ptr @__olang_scope_alloc_a(ptr %s1, i64 192, i64 8)
  call void @llvm.memmove.p0.p0.i64(ptr %t13, ptr %l5, i64 192, i1 false)
  store ptr %t13, ptr %l1
  store i64 0, ptr %l2, !tbaa !24
  %t15 = load ptr, ptr %l1
  store i64 12, ptr %l3, !tbaa !24
  br label %bb1
bb1:
  %t18 = load i64, ptr %l2, !tbaa !24
  %t19 = load i64, ptr %l3, !tbaa !24
  %t22 = icmp slt i64 %t18, %t19
  %t24 = xor i1 %t22, true
  br i1 %t24, label %bb2, label %bb3
bb2:
  br label %bb10
bb3:
  br label %bb4
bb4:
  %t26 = load ptr, ptr %l1
  %t27 = load i64, ptr %l2, !tbaa !24
  %t30 = getelementptr [12 x { i64, ptr }], ptr %t26, i64 0, i64 %t27
  %t31 = load { i64, ptr }, ptr %t30, !tbaa !37
  %t35 = load ptr, ptr @__olang_prog_scope
  %t38 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %t35, { i64, ptr } %a0, { i64, ptr } %t31)
  store i1 %t38, ptr %l18
  br label %bb5
bb5:
  %t39 = load i1, ptr %l18, !tbaa !21
  br i1 %t39, label %bb6, label %bb7
bb6:
  call void @__olang_scope_close(ptr %s1)
  store i1 true, ptr %rv
  br label %ret
bb7:
  br label %bb8
bb8:
  br label %bb9
bb9:
  %t41 = load i64, ptr %l2, !tbaa !24
  %t43 = add i64 %t41, 1
  store i64 %t43, ptr %l2, !tbaa !24
  br label %bb1
bb10:
  call void @__olang_scope_close(ptr %s1)
  store i1 false, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local void @compiler_2fneeds_3awalker_2ector(ptr %out, ptr %v0, ptr %v1, ptr %a0, i64 %a1, i64 %a2) #0 {
entry:
  %l3 = alloca ptr
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l8 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l9 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l14 = alloca i64
  %l16 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l18 = alloca i64
  %l20 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l22 = alloca i64
  %l24 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l26 = alloca i64
  %l28 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l30 = alloca %"compiler/needs:walker"
  br label %start
start:
  br label %bb0
bb0:
  store ptr %a0, ptr %l3, !tbaa !29
  store i64 %a1, ptr %l4, !tbaa !24
  store i64 %a2, ptr %l5, !tbaa !24
  store i64 -1, ptr %l6, !tbaa !24
  %t7 = ptrtoint ptr %v1 to i64
  store i64 %t7, ptr %l14, !tbaa !24
  %t8 = load i1, ptr @olang_2esole_2ecompiler_2fneeds_3awalker_2e4
  br i1 %t8, label %bb1, label %bb2
bb1:
  %t10 = call ptr @__olang_region_make(ptr %v1)
  %t11 = ptrtoint ptr %t10 to i64
  store i64 %t11, ptr %l14, !tbaa !24
  br label %bb2
bb2:
  %t12 = load i64, ptr %l14
  %t13 = inttoptr i64 %t12 to ptr
  %t14 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fsource_3aNameId_2c_20I64_3e(ptr %t13)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t14, ptr %l16
  br label %bb3
bb3:
  %t15 = load i1, ptr @olang_2esole_2ecompiler_2fneeds_3awalker_2e4
  br i1 %t15, label %bb4, label %bb5
bb4:
  %t17 = load i64, ptr %l14
  %t18 = inttoptr i64 %t17 to ptr
  %t19 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l16, i32 0, i32 2
  %t20 = load { i64, ptr }, ptr %t19
  %t21 = extractvalue { i64, ptr } %t20, 1
  %t22 = call ptr @__olang_region_or(ptr %t21, ptr null)
  %t23 = icmp ne ptr %t22, null
  %t24 = select i1 %t23, ptr %t22, ptr null
  %t25 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l16, i32 0, i32 1
  %t26 = load { i64, ptr }, ptr %t25
  %t27 = extractvalue { i64, ptr } %t26, 1
  %t28 = call ptr @__olang_region_or(ptr %t27, ptr null)
  %t29 = icmp ne ptr %t28, null
  %t30 = select i1 %t29, ptr %t28, ptr %t24
  %t31 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l16, i32 0, i32 0
  %t32 = load { i64, ptr }, ptr %t31
  %t33 = extractvalue { i64, ptr } %t32, 1
  %t34 = call ptr @__olang_region_or(ptr %t33, ptr null)
  %t35 = icmp ne ptr %t34, null
  %t36 = select i1 %t35, ptr %t34, ptr %t30
  %t37 = icmp eq ptr %t36, %t18
  call void @__olang_region_settle(ptr %t18, i1 %t37)
  br label %bb5
bb5:
  %t38 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l16
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t38, ptr %l7
  %t39 = ptrtoint ptr %v1 to i64
  store i64 %t39, ptr %l18, !tbaa !24
  %t40 = load i1, ptr @olang_2esole_2ecompiler_2fneeds_3awalker_2e5
  br i1 %t40, label %bb6, label %bb7
bb6:
  %t42 = call ptr @__olang_region_make(ptr %v1)
  %t43 = ptrtoint ptr %t42 to i64
  store i64 %t43, ptr %l18, !tbaa !24
  br label %bb7
bb7:
  %t44 = load i64, ptr %l18
  %t45 = inttoptr i64 %t44 to ptr
  %t46 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fsource_3aNameId_2c_20I64_3e(ptr %t45)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t46, ptr %l20
  br label %bb8
bb8:
  %t47 = load i1, ptr @olang_2esole_2ecompiler_2fneeds_3awalker_2e5
  br i1 %t47, label %bb9, label %bb10
bb9:
  %t49 = load i64, ptr %l18
  %t50 = inttoptr i64 %t49 to ptr
  %t51 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l20, i32 0, i32 2
  %t52 = load { i64, ptr }, ptr %t51
  %t53 = extractvalue { i64, ptr } %t52, 1
  %t54 = call ptr @__olang_region_or(ptr %t53, ptr null)
  %t55 = icmp ne ptr %t54, null
  %t56 = select i1 %t55, ptr %t54, ptr null
  %t57 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l20, i32 0, i32 1
  %t58 = load { i64, ptr }, ptr %t57
  %t59 = extractvalue { i64, ptr } %t58, 1
  %t60 = call ptr @__olang_region_or(ptr %t59, ptr null)
  %t61 = icmp ne ptr %t60, null
  %t62 = select i1 %t61, ptr %t60, ptr %t56
  %t63 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l20, i32 0, i32 0
  %t64 = load { i64, ptr }, ptr %t63
  %t65 = extractvalue { i64, ptr } %t64, 1
  %t66 = call ptr @__olang_region_or(ptr %t65, ptr null)
  %t67 = icmp ne ptr %t66, null
  %t68 = select i1 %t67, ptr %t66, ptr %t62
  %t69 = icmp eq ptr %t68, %t50
  call void @__olang_region_settle(ptr %t50, i1 %t69)
  br label %bb10
bb10:
  %t70 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l20
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t70, ptr %l8
  %t71 = ptrtoint ptr %v1 to i64
  store i64 %t71, ptr %l22, !tbaa !24
  %t72 = load i1, ptr @olang_2esole_2ecompiler_2fneeds_3awalker_2e6
  br i1 %t72, label %bb11, label %bb12
bb11:
  %t74 = call ptr @__olang_region_make(ptr %v1)
  %t75 = ptrtoint ptr %t74 to i64
  store i64 %t75, ptr %l22, !tbaa !24
  br label %bb12
bb12:
  %t76 = load i64, ptr %l22
  %t77 = inttoptr i64 %t76 to ptr
  %t78 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fsource_3aNameId_2c_20I64_3e(ptr %t77)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t78, ptr %l24
  br label %bb13
bb13:
  %t79 = load i1, ptr @olang_2esole_2ecompiler_2fneeds_3awalker_2e6
  br i1 %t79, label %bb14, label %bb15
bb14:
  %t81 = load i64, ptr %l22
  %t82 = inttoptr i64 %t81 to ptr
  %t83 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l24, i32 0, i32 2
  %t84 = load { i64, ptr }, ptr %t83
  %t85 = extractvalue { i64, ptr } %t84, 1
  %t86 = call ptr @__olang_region_or(ptr %t85, ptr null)
  %t87 = icmp ne ptr %t86, null
  %t88 = select i1 %t87, ptr %t86, ptr null
  %t89 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l24, i32 0, i32 1
  %t90 = load { i64, ptr }, ptr %t89
  %t91 = extractvalue { i64, ptr } %t90, 1
  %t92 = call ptr @__olang_region_or(ptr %t91, ptr null)
  %t93 = icmp ne ptr %t92, null
  %t94 = select i1 %t93, ptr %t92, ptr %t88
  %t95 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l24, i32 0, i32 0
  %t96 = load { i64, ptr }, ptr %t95
  %t97 = extractvalue { i64, ptr } %t96, 1
  %t98 = call ptr @__olang_region_or(ptr %t97, ptr null)
  %t99 = icmp ne ptr %t98, null
  %t100 = select i1 %t99, ptr %t98, ptr %t94
  %t101 = icmp eq ptr %t100, %t82
  call void @__olang_region_settle(ptr %t82, i1 %t101)
  br label %bb15
bb15:
  %t102 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l24
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t102, ptr %l9
  %t103 = ptrtoint ptr %v1 to i64
  store i64 %t103, ptr %l26, !tbaa !24
  %t104 = load i1, ptr @olang_2esole_2ecompiler_2fneeds_3awalker_2e7
  br i1 %t104, label %bb16, label %bb17
bb16:
  %t106 = call ptr @__olang_region_make(ptr %v1)
  %t107 = ptrtoint ptr %t106 to i64
  store i64 %t107, ptr %l26, !tbaa !24
  br label %bb17
bb17:
  %t108 = load i64, ptr %l26
  %t109 = inttoptr i64 %t108 to ptr
  %t110 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_3e_2ector(ptr %t109, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t110, ptr %l28
  br label %bb18
bb18:
  %t111 = load i1, ptr @olang_2esole_2ecompiler_2fneeds_3awalker_2e7
  br i1 %t111, label %bb19, label %bb20
bb19:
  %t113 = load i64, ptr %l26
  %t114 = inttoptr i64 %t113 to ptr
  %t115 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l28, i32 0, i32 0
  %t116 = load { i64, ptr }, ptr %t115
  %t117 = extractvalue { i64, ptr } %t116, 1
  %t118 = call ptr @__olang_region_or(ptr %t117, ptr null)
  %t119 = icmp ne ptr %t118, null
  %t120 = select i1 %t119, ptr %t118, ptr null
  %t121 = icmp eq ptr %t120, %t114
  call void @__olang_region_settle(ptr %t114, i1 %t121)
  br label %bb20
bb20:
  %t122 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l28
  %t123 = getelementptr %"compiler/needs:walker", ptr %l30, i32 0, i32 0
  %t124 = load ptr, ptr %l3, !tbaa !29
  store ptr %t124, ptr %t123, !tbaa !29
  %t125 = getelementptr %"compiler/needs:walker", ptr %l30, i32 0, i32 1
  %t126 = load i64, ptr %l4, !tbaa !24
  store i64 %t126, ptr %t125, !tbaa !24
  %t127 = getelementptr %"compiler/needs:walker", ptr %l30, i32 0, i32 2
  %t128 = load i64, ptr %l5, !tbaa !24
  store i64 %t128, ptr %t127, !tbaa !24
  %t129 = getelementptr %"compiler/needs:walker", ptr %l30, i32 0, i32 3
  %t130 = load i64, ptr %l6, !tbaa !24
  store i64 %t130, ptr %t129, !tbaa !24
  %t131 = getelementptr %"compiler/needs:walker", ptr %l30, i32 0, i32 4
  %t132 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l7
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t132, ptr %t131
  %t133 = getelementptr %"compiler/needs:walker", ptr %l30, i32 0, i32 5
  %t134 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l8
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t134, ptr %t133
  %t135 = getelementptr %"compiler/needs:walker", ptr %l30, i32 0, i32 6
  %t136 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l9
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t136, ptr %t135
  %t137 = getelementptr %"compiler/needs:walker", ptr %l30, i32 0, i32 7
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t122, ptr %t137
  call void @llvm.memmove.p0.p0.i64(ptr %out, ptr %l30, i64 280, i1 false)
  br label %ret
ret:
  ret void
}

declare void @llvm.memmove.p0.p0.i64(ptr, ptr, i64, i1)
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
@olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1 = weak hidden constant i1 false
declare ptr @__olang_region_make(ptr) noinline
@.d0 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c", " }>, align 8
@.d1 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c" needs: " }>, align 8
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
declare void @llvm.memcpy.p0.p0.i64(ptr, ptr, i64, i1)
@.d2 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"Plus" }>, align 8
@.d3 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"Minus" }>, align 8
@.d4 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"Mul" }>, align 8
@.d5 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"Div" }>, align 8
@.d6 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"Rem" }>, align 8
@.d7 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"MatMul" }>, align 8
@.d8 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"Less" }>, align 8
@.d9 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"BitAnd" }>, align 8
@.d10 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"BitOr" }>, align 8
@.d11 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"BitXor" }>, align 8
@.d12 = private constant <{ i64, [9 x i8] }> <{ i64 0, [9 x i8] c"ShiftLeft" }>, align 8
@.d13 = private constant <{ i64, [10 x i8] }> <{ i64 0, [10 x i8] c"ShiftRight" }>, align 8
@.d14 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
declare void @__olang_check_failed(ptr) cold noreturn
@.d15 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"SetAt" }>, align 8
@.d16 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"Has" }>, align 8
@.d17 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d18 = private constant <{ i64, [12 x i8] }> <{ i64 0, [12 x i8] c" (a builder)" }>, align 8
@.d19 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"Call" }>, align 8
@.d20 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"Array" }>, align 8
@.d21 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"Vec" }>, align 8
@.d22 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"Neg" }>, align 8
@.d23 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"Has" }>, align 8
@.d24 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"Less" }>, align 8
@.d25 = private constant <{ i64, [9 x i8] }> <{ i64 0, [9 x i8] c"a field '" }>, align 8
@.d26 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"'" }>, align 8
@.d27 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"At" }>, align 8
@.d28 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"Slice" }>, align 8
@.d29 = private constant <{ i64, [34 x i8] }> <{ i64 0, [34 x i8] c"a walk (Next, Iter, or At and Len)" }>, align 8
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

@.d30 = private constant <{ i64, [12 x i8] }> <{ i64 0, [12 x i8] c" (a builder)" }>, align 8
@.d31 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"Less" }>, align 8
@.d32 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"Plus" }>, align 8
@.d33 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"Minus" }>, align 8
@.d34 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"Mul" }>, align 8
@.d35 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"Div" }>, align 8
@.d36 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"Rem" }>, align 8
@.d37 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"Neg" }>, align 8
@.d38 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"BitAnd" }>, align 8
@.d39 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"BitOr" }>, align 8
@.d40 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"BitXor" }>, align 8
@.d41 = private constant <{ i64, [9 x i8] }> <{ i64 0, [9 x i8] c"ShiftLeft" }>, align 8
@.d42 = private constant <{ i64, [10 x i8] }> <{ i64 0, [10 x i8] c"ShiftRight" }>, align 8
@__olang_prog_scope = external thread_local(initialexec) global ptr
@olang_2esole_2ecompiler_2fneeds_3awalker_2e4 = weak hidden constant i1 false
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
declare void @__olang_region_settle(ptr, i1)
@olang_2esole_2ecompiler_2fneeds_3awalker_2e5 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2fneeds_3awalker_2e6 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2fneeds_3awalker_2e7 = weak hidden constant i1 false
declare noalias ptr @__olang_scope_alloc_slow(ptr, i64, i64) noinline
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
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2ector(ptr %v0, i64 %a0)
declare i64 @compiler_2fgeneric_2eFnOwner(i64 %a0)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2fvec_3aVec_3cstd_2fprel_Hbb0b9cf8ae0bb786ffc6cf28ae45ef64(ptr %v0, ptr %a0)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %v0, ptr %a0)
declare %"compiler/generic:varRow" @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eVarAt(ptr %v0, ptr %a0, i64 %a1, i64 %a2)
declare { i64, ptr } @compiler_2fsource_2ecompiler_2fsource_3aNames_2eText(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2eJoin(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H835e186358a312b102cd15b4faa0b451(ptr %v0, ptr %v1, ptr %a0)
@olang_loc_eb8dbdd343cc2ec5_7e04d3ec09c5f0b9 = external constant [0 x i8]
@olang_loc_e9926bfe55a51c67_a6d583928ea9cdb3 = external constant [0 x i8]
declare i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
declare i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fsource_3aNameId_2c_20I64_3e_Hf575c52a5a9e8993bae2b73c9c2548b3(ptr %v0, ptr %a0, i32 %a1)
declare { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fsource_3aNameId_2c_20I64_3e_H2a27ec2ae5362b2f0ac6d54f3e063c70(ptr %v0, ptr %a0, i32 %a1)
@olang_loc_585fa5a01a72b2ac_16d8ccfed8d78ee8 = external constant [0 x i8]
declare %"compiler/names:Ref" @compiler_2fnames_2ecompiler_2fnames_3aResolver_2eUse(ptr %v0, ptr %a0, i64 %a1, i32 %a2)
declare i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnNamed(ptr %v0, ptr %a0, i64 %a1, i32 %a2)
declare %"compiler/names:Ref" @compiler_2fnames_2ecompiler_2fnames_3aResolver_2eMember(ptr %v0, ptr %a0, i64 %a1, i32 %a2)
@olang_loc_905d4a0f3532f957_2b4330c2b114d9a3 = external constant [0 x i8]
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fsource_3aNameId_2c_20I64_3e_H862756c16d115e5c03a79726209f69fa(ptr %v0, ptr %a0, i32 %a1, i64 %a2)
@olang_loc_4d743041a8b20a6_9c6741a6974fda52 = external constant [0 x i8]
@olang_loc_854f045945ef731f_8132536c615b0d13 = external constant [0 x i8]
@olang_loc_21eaca0c6a8c7fc1_c6101a29af81bc15 = external constant [0 x i8]
@olang_loc_9c9e5b16a9737640_c9291bd1f0d77b3c = external constant [0 x i8]
@olang_loc_8cbabffa04a291df_a080b7e111f166ab = external constant [0 x i8]
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2fvec_3aVec_3cstd_2fprel_H21d8db2bdfeb46fab755f8173a35f95e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H0127831368543eff3b7740d7d3240080(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2fvec_3aVec_3cstd_2fprel_H7b5f712395151d264e9eac052c719793(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
@olang_loc_9f3ed7f83038a02_b8cf4e04baa63c1e = external constant [0 x i8]
@olang_loc_fa47b13b1fa62ba2_f81ee9a5bb5727e6 = external constant [0 x i8]
declare ptr @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnDecl(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnModule(ptr %v0, ptr %a0, i64 %a1)
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H7bcf2aeb09afa796f4333e6ec8c3f63f(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eVarCount(ptr %v0, ptr %a0, i64 %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2fvec_3aVec_3cstd_2fprel_H40771be639b3022d183b79789a9eab56(ptr %v0, ptr %v1, ptr %a0, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %a1)
declare i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eErrVarAt(ptr %v0, ptr %a0, i64 %a1, i64 %a2)
declare i64 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fsource_3aNameId_2c_20I64_3e_H51b81a00fa8bf5fab3fd9fdb4d8e9d32(ptr %v0, ptr %a0)
@olang_loc_7062293b76b04d1c_de3e9d47303f78c0 = external constant [0 x i8]
@olang_loc_d978440131377666_280c73c325bb4b5a = external constant [0 x i8]
declare { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %a0, i32 %a1)
declare ptr @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eTypeDecl(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare i1 @compiler_2fast_2ecompiler_2fast_3aFunc_2eIsBuilder(ptr %v0, ptr %a0)
@olang_loc_cca6d9a3ad2d5c7a_8d3fd43a7368455e = external constant [0 x i8]
@G_2ecompiler_2ftypes_2eUnknownT = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\00\00\00\00" }>, align 8
declare { i64, ptr } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eBoundTraits(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eIsClosedTrait(ptr %v0, ptr %a0, i32 %a1)
@olang_loc_af1627261b9cf562_9c70302a273e4dc6 = external constant [0 x i8]
@olang_loc_2483447c4624faa8_69435275da3e8e94 = external constant [0 x i8]
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_3e_2ector(ptr %v0, i64 %a0)
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

attributes #0 = { null_pointer_is_valid "target-cpu"="sapphirerapids" "target-features"="+64bit,+adx,+aes,+amx-bf16,+amx-int8,+amx-tile,+avx,+avx2,-avx512bf16,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512fp16,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+avxvnni,+bmi,+bmi2,+cldemote,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+evex512,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+movdir64b,+movdiri,+pclmul,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+rtm,+sahf,+serialize,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+tsxldtrk,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-complex,-amx-fp16,-avx10.1-256,-avx10.1-512,-avx512er,-avx512pf,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnniint16,-avxvnniint8,-clzero,-cmpccxadd,-enqcmd,-fma4,-hreset,-kl,-lwp,-mwaitx,-pconfig,-pku,-prefetchi,-prefetchwt1,-ptwrite,-raoint,-rdpru,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-uintr,-usermsr,-waitpkg,-widekl,-xop" "prefer-vector-width"="512" nounwind }
