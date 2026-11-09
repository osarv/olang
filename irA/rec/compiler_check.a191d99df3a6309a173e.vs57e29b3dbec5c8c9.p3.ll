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
%"compiler/source:Span" = type { i32, i32 }
%"compiler/check:litv" = type { i1, i1, i1, i64, double, i1, i1, i1, i128 }
%"compiler/diagmsg:Msg" = type { i32, { i64, ptr }, { i64, ptr } }
%"compiler/check:Checker" = type { ptr, ptr, i1, i1, i1, i1, i64, i64, i1, ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i1, { i64, [3 x i64] }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i32, i64, %"compiler/source:Span", i32, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"compiler/source:Span", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i64, i32, i1, i1, %"compiler/source:Span", %"compiler/source:Span", %"compiler/source:Span", %"compiler/source:Span", %"compiler/source:Span", { i64, ptr }, i32, i32, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, i1, i64, i64, i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, i1, i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, i64, i64, i64, i64, i64, i64, i64, i1, i1, i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, i1, i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, i1, i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/text:StringBuilder", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" = type { { i64, ptr }, i64, i64 }
%"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" = type { { i64, ptr }, { i64, ptr }, { i64, ptr }, i64, i64, i64 }
%"std/prelude/text:StringBuilder" = type { %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/generic:Program" = type { ptr, ptr, %"compiler/types:Table", %"compiler/facts:Table", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"compiler/generic:Origin", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"compiler/types:Table" = type { ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"compiler/facts:Table" = type { %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, i64 }
%"compiler/generic:Origin" = type { i64, %"compiler/source:Span", i64, i32 }
%"compiler/typed:Elem" = type { ptr, ptr, i32 }
%"compiler/typed:Payload" = type { ptr, i64, i32 }
%"compiler/check:rawTable" = type { i32, i1, { i64, ptr }, { i64, ptr } }
%"compiler/check:fieldSet" = type { { i64, ptr }, i32, { i64, ptr }, { i64, ptr } }
%"compiler/ast:CaseDecl" = type { %"compiler/source:Span", i32, { i64, ptr }, i1, ptr, { i64, ptr } }
%"compiler/ast:Param" = type { %"compiler/source:Span", i32, ptr, ptr, { i64, ptr } }
%"compiler/typed:Cond" = type { ptr, ptr, ptr }
%"compiler/ast:Func" = type { %"compiler/source:Span", ptr, i32, ptr, { i64, ptr }, { i64, ptr }, i1, i1, { i64, ptr }, ptr, i32 }
%"compiler/load:Loader" = type { { i64, ptr }, ptr, ptr, ptr, ptr, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", { i64, ptr }, { i64, ptr }, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", { i64, ptr }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/generic:Binding" = type { i64, i64, { i64, ptr }, { i64, ptr }, { i64, ptr } }
%"compiler/ast:Sig" = type { { i64, ptr }, { i64, ptr }, i1, { i64, ptr }, i1, ptr, i1, i1, { i64, ptr } }
%"std/prelude/iterator:ViewGenerator.00c7c71992d6e1815cd052c47b979cdd" = type { { ptr, ptr } }
%"compiler/ast:VarDecl" = type { { i64, ptr }, { i64, ptr }, ptr, { i64, ptr }, i1, i1, { i64, ptr }, i1 }
%"compiler/load:Module" = type { { i64, ptr }, { i64, ptr }, { i64, ptr }, i1, i64, i1, ptr, ptr, { i64, ptr }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr, ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr, ptr, ptr, i1, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, { i64, ptr }, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"compiler/check:b5aWalk" = type { i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, i1 }
%"compiler/check:frame" = type { i64, i64, i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"compiler/generic:Context", i32, i32, i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i1, i32, i64, i64, i64, i1, i64, i1, i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i1, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, i1, i64, i64, i64, i1, i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", { i64, ptr }, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", { i64, ptr }, i64, i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"compiler/source:Span", i64, i1 }
%"compiler/generic:Context" = type { i64, i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"compiler/ast:Match" = type { %"compiler/source:Span", ptr, i1, { i64, ptr } }
%"compiler/ast:Case" = type { %"compiler/source:Span", { i64, ptr }, { i64, ptr }, ptr, { i64, ptr }, ptr }
%"compiler/check:narrowed" = type { i64, i64, i32, i64, i64, i1 }
%"compiler/check:reflList" = type { i1, i32, i64, i64 }
%"compiler/ast:Compr" = type { ptr, ptr, i32, i32, ptr, ptr, i1, i64 }
%"compiler/typed:Slice" = type { ptr, ptr, ptr, i32 }
%"compiler/typed:Promote" = type { ptr, i32 }
%"compiler/typed:Seq" = type { { i64, ptr }, ptr, i1 }
%"compiler/typed:Try" = type { ptr, { i64, ptr }, i1, i1, i1 }
%"compiler/typed:Match" = type { { i64, ptr }, { i64, ptr }, ptr, i1 }
%"compiler/typed:Arm" = type { %"compiler/source:Span", { i64, ptr }, ptr, ptr, ptr }
%"compiler/typed:Call" = type { ptr, { i64, ptr }, i32, i1, i1 }
%"compiler/check:idleCall" = type { i64, i64, %"compiler/source:Span", { i64, ptr }, ptr }
%"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" = type { i64, i64 }
%"compiler/typed:Body" = type { i32, { i64, [2 x i64] }, i32, i64, %"compiler/source:Span", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i32, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/generic:varRow" = type { i64, i32, i32, i32 }
%"compiler/typed:Collect" = type { ptr, ptr, i32, i32, i1 }
%"compiler/typed:Make" = type { i32, i64, { i64, ptr }, ptr, i32, i32, i1 }
%"compiler/check:roDeepArg" = type { i64, ptr, i64, i64 }
%"compiler/check:weakPlace" = type { { i64, [3 x i64] }, { i64, ptr }, i64 }
define dso_local i1 @compiler_2fcheck_2ecompares(i32 %a0) #0 {
entry:
  %l0 = alloca i32
  %l3 = alloca i1
  %l6 = alloca i1
  %l9 = alloca i1
  %l12 = alloca i1
  %l15 = alloca i1
  %rv = alloca i1
  store i32 %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load i32, ptr %l0, !range !{i32 0, i32 114}
  %t3 = trunc i64 94 to i32
  %t4 = icmp eq i32 %t1, %t3
  br i1 %t4, label %bb1, label %bb2
bb1:
  store i1 true, ptr %l3, !tbaa !21
  br label %bb3
bb2:
  %t6 = load i32, ptr %l0, !range !{i32 0, i32 114}
  %t8 = trunc i64 95 to i32
  %t9 = icmp eq i32 %t6, %t8
  store i1 %t9, ptr %l3, !tbaa !21
  br label %bb3
bb3:
  %t11 = load i1, ptr %l3, !tbaa !21
  br i1 %t11, label %bb4, label %bb5
bb4:
  store i1 true, ptr %l6, !tbaa !21
  br label %bb6
bb5:
  %t12 = load i32, ptr %l0, !range !{i32 0, i32 114}
  %t14 = trunc i64 97 to i32
  %t15 = icmp eq i32 %t12, %t14
  store i1 %t15, ptr %l6, !tbaa !21
  br label %bb6
bb6:
  %t17 = load i1, ptr %l6, !tbaa !21
  br i1 %t17, label %bb7, label %bb8
bb7:
  store i1 true, ptr %l9, !tbaa !21
  br label %bb9
bb8:
  %t18 = load i32, ptr %l0, !range !{i32 0, i32 114}
  %t20 = trunc i64 98 to i32
  %t21 = icmp eq i32 %t18, %t20
  store i1 %t21, ptr %l9, !tbaa !21
  br label %bb9
bb9:
  %t23 = load i1, ptr %l9, !tbaa !21
  br i1 %t23, label %bb10, label %bb11
bb10:
  store i1 true, ptr %l12, !tbaa !21
  br label %bb12
bb11:
  %t24 = load i32, ptr %l0, !range !{i32 0, i32 114}
  %t26 = trunc i64 99 to i32
  %t27 = icmp eq i32 %t24, %t26
  store i1 %t27, ptr %l12, !tbaa !21
  br label %bb12
bb12:
  %t29 = load i1, ptr %l12, !tbaa !21
  br i1 %t29, label %bb13, label %bb14
bb13:
  store i1 true, ptr %l15, !tbaa !21
  br label %bb15
bb14:
  %t30 = load i32, ptr %l0, !range !{i32 0, i32 114}
  %t32 = trunc i64 100 to i32
  %t33 = icmp eq i32 %t30, %t32
  store i1 %t33, ptr %l15, !tbaa !21
  br label %bb15
bb15:
  %t35 = load i1, ptr %l15, !tbaa !21
  store i1 %t35, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eargPatterns(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1) #0 {
entry:
  %l1 = alloca { i64, ptr }
  %lp2 = alloca ptr
  %l3 = alloca { i64, ptr }
  %l4 = alloca i64
  %l5 = alloca i64
  %l9 = alloca i64
  %l10 = alloca %"compiler/source:Span"
  %l12 = alloca ptr
  %l24 = alloca { i64, ptr }
  %l27 = alloca i64
  %l30 = alloca ptr
  %rv = alloca { i64, ptr }
  %t5 = alloca { i64, [4 x i64] }, align 8
  %t23 = alloca i64
  store { i64, ptr } %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t3 = extractvalue { i64, ptr } %t1, 0
  store i64 %t3, ptr %l9, !tbaa !24
  %t4 = call %"compiler/source:Span" @compiler_2fsource_3aSpan_2ector(ptr %v2, i32 0, i32 0)
  store %"compiler/source:Span" %t4, ptr %l10
  br label %bb1
bb1:
  store { i64, [4 x i64] } zeroinitializer, ptr %t5
  %t6 = getelementptr { i64, [4 x i64] }, ptr %t5, i32 0, i32 0
  store i64 0, ptr %t6
  %t7 = load %"compiler/source:Span", ptr %l10
  %t8 = insertvalue { %"compiler/source:Span" } undef, %"compiler/source:Span" %t7, 0
  %t9 = getelementptr { i64, [4 x i64] }, ptr %t5, i32 0, i32 1
  store { %"compiler/source:Span" } %t8, ptr %t9
  %t10 = load { i64, [4 x i64] }, ptr %t5
  %t12 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 40, i64 8)
  store { i64, [4 x i64] } %t10, ptr %t12
  store ptr %t12, ptr %l12, !tbaa !29
  %t13 = load i64, ptr %l9, !tbaa !24
  %t14 = icmp sge i64 %t13, 0
  br i1 %t14, label %bb2, label %bb3
bb2:
  %t16 = load i64, ptr %l9, !tbaa !24
  %t17 = icmp sle i64 %t16, 1152921504606846975
  br i1 %t17, label %bb4, label %bb5
bb3:
  call void @__olang_check_failed(ptr @olang_loc_f2cd8ec8e3c16d57_506e218c0a0f6ccb)
  unreachable
bb4:
  %t19 = load i64, ptr %l9, !tbaa !24
  %t20 = mul i64 %t19, 8
  %t21 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t20)
  %t22 = load ptr, ptr %l12, !tbaa !29
  store i64 0, ptr %t23
  br label %fill.24
fill.24:
  %t27 = load i64, ptr %t23
  %t28 = icmp slt i64 %t27, %t19
  br i1 %t28, label %fillb.25, label %filld.26
fillb.25:
  %t29 = getelementptr ptr, ptr %t21, i64 %t27
  store ptr %t22, ptr %t29
  %t30 = add i64 %t27, 1
  store i64 %t30, ptr %t23
  br label %fill.24
filld.26:
  %t31 = insertvalue { i64, ptr } undef, i64 %t19, 0
  %t32 = insertvalue { i64, ptr } %t31, ptr %t21, 1
  %t33 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 16, i64 8)
  store ptr %t33, ptr %lp2
  %t35 = load ptr, ptr %lp2
  store { i64, ptr } %t32, ptr %t35, !tbaa !27
  %t36 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t36, ptr %l3, !tbaa !27
  store i64 0, ptr %l4, !tbaa !24
  %t38 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t40 = extractvalue { i64, ptr } %t38, 0
  store i64 %t40, ptr %l5, !tbaa !24
  br label %bb6
bb5:
  call void @__olang_check_failed(ptr @olang_loc_f2cd8ec8e3c16d57_506e218c0a0f6ccb)
  unreachable
bb6:
  %t42 = load i64, ptr %l4, !tbaa !24
  %t43 = load i64, ptr %l5, !tbaa !24
  %t46 = icmp slt i64 %t42, %t43
  %t48 = xor i1 %t46, true
  br i1 %t48, label %bb7, label %bb8
bb7:
  br label %bb12
bb8:
  br label %bb9
bb9:
  %t50 = load i64, ptr %l4, !tbaa !24
  %t52 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t52, ptr %l24, !tbaa !27
  %t53 = load i64, ptr %l4, !tbaa !24
  %t55 = getelementptr { i64, ptr }, ptr %l24, i32 0, i32 1
  %t56 = load ptr, ptr %t55, !tbaa !27
  %t57 = getelementptr ptr, ptr %t56, i64 %t53
  %t58 = load ptr, ptr %t57, !tbaa !39
  store i64 %t50, ptr %l27, !tbaa !24
  %t65 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eargPattern(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %t58)
  store ptr %t65, ptr %l30
  br label %bb10
bb10:
  %t66 = load ptr, ptr %l30, !tbaa !29
  %t67 = load ptr, ptr %lp2
  %t68 = load i64, ptr %l27, !tbaa !24
  %t69 = getelementptr { i64, ptr }, ptr %t67, i32 0, i32 1
  %t70 = load ptr, ptr %t69, !tbaa !27
  %t71 = getelementptr ptr, ptr %t70, i64 %t68
  store ptr %t66, ptr %t71, !tbaa !39
  br label %bb11
bb11:
  %t72 = load i64, ptr %l4, !tbaa !24
  %t74 = add i64 %t72, 1
  store i64 %t74, ptr %l4, !tbaa !24
  br label %bb6
bb12:
  %t76 = load ptr, ptr %lp2
  %t77 = load { i64, ptr }, ptr %t76, !tbaa !27
  store { i64, ptr } %t77, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eassign(ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"compiler/source:Span" %a1, i32 %a2, ptr %a3, ptr %a4) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/source:Span"
  %l2 = alloca i32
  %l3 = alloca ptr
  %l4 = alloca ptr
  %l5 = alloca %"compiler/source:Span"
  %l6 = alloca %"compiler/source:Span"
  %l7 = alloca ptr
  %l8 = alloca %"compiler/source:Span"
  %l9 = alloca i1
  %l10 = alloca i32
  %l11 = alloca i32
  %l12 = alloca ptr
  %l14 = alloca ptr
  %l15 = alloca i32
  %l17 = alloca ptr
  %l18 = alloca ptr
  %l19 = alloca ptr
  %l20 = alloca %"compiler/check:litv"
  %l21 = alloca i32
  %l27 = alloca i1
  %l28 = alloca ptr
  %l30 = alloca %"compiler/source:Span"
  %l33 = alloca i64
  %l34 = alloca %"compiler/source:Span"
  %l47 = alloca ptr
  %l56 = alloca ptr
  %l60 = alloca i1
  %l61 = alloca ptr
  %l64 = alloca %"compiler/source:Span"
  %l65 = alloca %"compiler/diagmsg:Msg"
  %l66 = alloca i64
  %l71 = alloca ptr
  %l74 = alloca i1
  %l77 = alloca i1
  %l82 = alloca ptr
  %l84 = alloca %"compiler/source:Span"
  %l87 = alloca i64
  %l88 = alloca %"compiler/source:Span"
  %l92 = alloca i1
  %l93 = alloca ptr
  %l95 = alloca i32
  %l96 = alloca i1
  %l97 = alloca i1
  %l98 = alloca ptr
  %l100 = alloca i32
  %l101 = alloca i1
  %l102 = alloca i1
  %l104 = alloca i32
  %l105 = alloca i1
  %l108 = alloca i1
  %l109 = alloca ptr
  %l110 = alloca %"compiler/source:Span"
  %l111 = alloca i32
  %l112 = alloca ptr
  %l114 = alloca ptr
  %l115 = alloca %"compiler/source:Span"
  %l119 = alloca i1
  %l122 = alloca ptr
  %l123 = alloca ptr
  %l126 = alloca %"compiler/source:Span"
  %l128 = alloca i32
  %l142 = alloca i32
  %l145 = alloca i1
  %l148 = alloca i1
  %l153 = alloca ptr
  %l154 = alloca ptr
  %l156 = alloca ptr
  %l159 = alloca i32
  %l160 = alloca ptr
  %l162 = alloca %"compiler/source:Span"
  %l163 = alloca ptr
  %l164 = alloca ptr
  %l165 = alloca %"compiler/source:Span"
  %l166 = alloca %"compiler/source:Span"
  %l173 = alloca ptr
  %l175 = alloca ptr
  %l176 = alloca ptr
  %l177 = alloca %"compiler/source:Span"
  %l178 = alloca ptr
  %l183 = alloca ptr
  %l188 = alloca i1
  %l189 = alloca i1
  %l191 = alloca i1
  %l200 = alloca i1
  %l202 = alloca i1
  %l205 = alloca i1
  %l206 = alloca i1
  %l210 = alloca i1
  %l219 = alloca ptr
  %l222 = alloca i1
  %l223 = alloca i1
  %l226 = alloca i1
  %l227 = alloca i1
  %l228 = alloca ptr
  %l229 = alloca i32
  %l231 = alloca { i64, ptr }
  %l232 = alloca i64
  %l236 = alloca i32
  %l245 = alloca i1
  %l246 = alloca ptr
  %l247 = alloca %"compiler/source:Span"
  %l250 = alloca { i64, ptr }
  %l251 = alloca { i64, ptr }
  %l253 = alloca { i64, ptr }
  %l254 = alloca { i64, ptr }
  %l255 = alloca { i64, ptr }
  %l257 = alloca { i64, ptr }
  %l260 = alloca %"compiler/diagmsg:Msg"
  %l261 = alloca i64
  %l264 = alloca i1
  %l265 = alloca i32
  %l268 = alloca i32
  %l270 = alloca ptr
  %l273 = alloca i32
  %l276 = alloca i32
  %l277 = alloca i32
  %l278 = alloca ptr
  %l279 = alloca %"compiler/source:Span"
  %l282 = alloca { i64, ptr }
  %l283 = alloca { i64, ptr }
  %l286 = alloca { i64, ptr }
  %l287 = alloca { i64, ptr }
  %l290 = alloca { i64, ptr }
  %l292 = alloca %"compiler/diagmsg:Msg"
  %l293 = alloca i64
  %l294 = alloca ptr
  %l295 = alloca %"compiler/source:Span"
  %l296 = alloca %"compiler/source:Span"
  %l297 = alloca i32
  %l304 = alloca ptr
  %l306 = alloca ptr
  %l311 = alloca ptr
  %l312 = alloca %"compiler/source:Span"
  %l313 = alloca ptr
  %l318 = alloca ptr
  %l327 = alloca ptr
  %l331 = alloca %"compiler/check:litv"
  %l337 = alloca ptr
  %l339 = alloca ptr
  %l344 = alloca ptr
  %l346 = alloca %"compiler/source:Span"
  %l347 = alloca ptr
  %l350 = alloca i32
  %l353 = alloca i1
  %l356 = alloca i1
  %l357 = alloca ptr
  %l358 = alloca i32
  %l361 = alloca ptr
  %l363 = alloca %"compiler/source:Span"
  %l364 = alloca i1
  %l369 = alloca i1
  %l373 = alloca i1
  %l377 = alloca i1
  %l383 = alloca i1
  %l384 = alloca i1
  %l389 = alloca i1
  %l390 = alloca ptr
  %l392 = alloca %"compiler/source:Span"
  %l397 = alloca ptr
  %l399 = alloca ptr
  %l400 = alloca %"compiler/source:Span"
  %l403 = alloca { i64, ptr }
  %l404 = alloca { i64, ptr }
  %l407 = alloca { i64, ptr }
  %l408 = alloca { i64, ptr }
  %l411 = alloca { i64, ptr }
  %l413 = alloca %"compiler/diagmsg:Msg"
  %l414 = alloca i64
  %l415 = alloca ptr
  %l416 = alloca %"compiler/source:Span"
  %l417 = alloca ptr
  %l418 = alloca ptr
  %l419 = alloca %"compiler/source:Span"
  %l420 = alloca i32
  %l422 = alloca i32
  %l425 = alloca ptr
  %s4 = alloca %olang.scope
  %s12 = alloca %olang.scope
  %s16 = alloca %olang.scope
  %s18 = alloca %olang.scope
  %s19 = alloca %olang.scope
  %s25 = alloca %olang.scope
  %t290 = alloca { i64, [4 x i64] }, align 8
  %t324 = alloca { i64, [3 x i64] }, align 8
  %t597 = alloca { i64, [4 x i64] }, align 8
  %t640 = alloca { i64, [3 x i64] }, align 8
  %t658 = alloca { i64, [4 x i64] }, align 8
  %t874 = alloca { i64, [3 x i64] }, align 8
  store ptr %a0, ptr %l0
  store %"compiler/source:Span" %a1, ptr %l1
  store i32 %a2, ptr %l2
  store ptr %a3, ptr %l3
  store ptr %a4, ptr %l4
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load %"compiler/source:Span", ptr %l1
  %t3 = load i32, ptr %l2, !range !{i32 0, i32 114}
  %t4 = load ptr, ptr %l3, !tbaa !29
  %t5 = load ptr, ptr %l4, !tbaa !29
  %t11 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eassignAt(ptr %v0, ptr %v1, ptr %v2, ptr %t1, %"compiler/source:Span" %t2, i32 %t3, ptr %t4, ptr %t5)
  store i1 %t11, ptr %l27
  br label %bb1
bb1:
  %t12 = load i1, ptr %l27, !tbaa !21
  br i1 %t12, label %bb2, label %bb3
bb2:
  br label %ret
bb3:
  br label %bb4
bb4:
  %t13 = load ptr, ptr %l0, !tbaa !29
  store ptr %t13, ptr %l28, !tbaa !29
  %t14 = load ptr, ptr %l3, !tbaa !29
  %t16 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v1, ptr %t14)
  store %"compiler/source:Span" %t16, ptr %l30
  br label %bb5
bb5:
  %t17 = load i32, ptr %l2, !range !{i32 0, i32 114}
  %t19 = trunc i64 78 to i32
  %t20 = icmp eq i32 %t17, %t19
  br i1 %t20, label %bb6, label %bb7
bb6:
  store i64 1, ptr %l33, !tbaa !24
  br label %bb8
bb7:
  store i64 2, ptr %l33, !tbaa !24
  br label %bb8
bb8:
  %t22 = load ptr, ptr %l28, !tbaa !29
  %t23 = load %"compiler/source:Span", ptr %l30
  %t24 = load i64, ptr %l33, !tbaa !24
  %t25 = call %"compiler/source:Span" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eopAfter(ptr %v0, ptr %t22, %"compiler/source:Span" %t23, i64 %t24)
  store %"compiler/source:Span" %t25, ptr %l34
  br label %bb9
bb9:
  %t26 = load %"compiler/source:Span", ptr %l34
  store %"compiler/source:Span" %t26, ptr %l5
  %t27 = load ptr, ptr %l0, !tbaa !29
  %t29 = getelementptr %"compiler/check:Checker", ptr %t27, i32 0, i32 48
  %t30 = load %"compiler/source:Span", ptr %t29
  store %"compiler/source:Span" %t30, ptr %l6
  %t32 = load i32, ptr %l2, !range !{i32 0, i32 114}
  %t34 = trunc i64 78 to i32
  %t35 = icmp eq i32 %t32, %t34
  %t37 = xor i1 %t35, true
  br i1 %t37, label %bb10, label %bb11
bb10:
  %t39 = load ptr, ptr %l0, !tbaa !29
  %t40 = load %"compiler/source:Span", ptr %l5
  %t43 = getelementptr %"compiler/check:Checker", ptr %t39, i32 0, i32 48
  store %"compiler/source:Span" %t40, ptr %t43
  br label %bb12
bb11:
  br label %bb12
bb12:
  %t44 = load ptr, ptr %l0, !tbaa !29
  %t45 = load i32, ptr %l2, !range !{i32 0, i32 114}
  %t47 = trunc i64 78 to i32
  %t48 = icmp eq i32 %t45, %t47
  %t51 = getelementptr %"compiler/check:Checker", ptr %t44, i32 0, i32 11
  store i1 %t48, ptr %t51, !tbaa !21
  %t52 = load ptr, ptr %l0, !tbaa !29
  %t53 = load ptr, ptr %l3, !tbaa !29
  %t56 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eplace(ptr %v0, ptr %v1, ptr %v0, ptr %t52, ptr %t53)
  store ptr %t56, ptr %l47
  br label %bb13
bb13:
  %t57 = load ptr, ptr %l47, !tbaa !29
  store ptr %t57, ptr %l7, !tbaa !29
  %t58 = load ptr, ptr %l0, !tbaa !29
  %t59 = load %"compiler/source:Span", ptr %l6
  %t62 = getelementptr %"compiler/check:Checker", ptr %t58, i32 0, i32 48
  store %"compiler/source:Span" %t59, ptr %t62
  %t63 = load ptr, ptr %l7, !tbaa !29
  %t65 = icmp eq ptr %t63, null
  br i1 %t65, label %bb14, label %bb15
bb14:
  %t67 = load ptr, ptr %l0, !tbaa !29
  %t68 = load ptr, ptr %l4, !tbaa !29
  %t70 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t74 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eexpr(ptr %v0, ptr %v2, ptr %v0, ptr %t67, ptr %t68, i32 %t70)
  store ptr %t74, ptr %l56
  br label %bb16
bb15:
  br label %bb17
bb16:
  br label %ret
bb17:
  %t75 = load ptr, ptr %l0, !tbaa !29
  %t76 = load ptr, ptr %l7, !tbaa !29
  %t77 = load ptr, ptr %l3, !tbaa !29
  %t81 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2econvertedPlace(ptr %v0, ptr %v0, ptr %v1, ptr %t75, ptr %t76, ptr %t77)
  store i1 %t81, ptr %l60
  br label %bb18
bb18:
  %t82 = load i1, ptr %l60, !tbaa !21
  br i1 %t82, label %bb19, label %bb20
bb19:
  store %olang.scope zeroinitializer, ptr %s4
  %t83 = load ptr, ptr %l0, !tbaa !29
  store ptr %t83, ptr %l61, !tbaa !29
  %t84 = load ptr, ptr %l0, !tbaa !29
  %t85 = load ptr, ptr %l3, !tbaa !29
  %t88 = call %"compiler/source:Span" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eargSpan(ptr %v0, ptr %v1, ptr %t84, ptr %t85)
  store %"compiler/source:Span" %t88, ptr %l64
  br label %bb21
bb20:
  br label %bb25
bb21:
  %t89 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eNotAssignable(ptr %s4)
  store %"compiler/diagmsg:Msg" %t89, ptr %l65
  br label %bb22
bb22:
  %t90 = load ptr, ptr %l61, !tbaa !29
  %t91 = load %"compiler/source:Span", ptr %l64
  %t92 = load %"compiler/diagmsg:Msg", ptr %l65
  %t93 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %s4, ptr %t90, %"compiler/source:Span" %t91, %"compiler/diagmsg:Msg" %t92)
  store i64 %t93, ptr %l66
  br label %bb23
bb23:
  %t94 = load ptr, ptr %l0, !tbaa !29
  %t95 = load ptr, ptr %l4, !tbaa !29
  %t97 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t101 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eexpr(ptr %v0, ptr %v2, ptr %v0, ptr %t94, ptr %t95, i32 %t97)
  store ptr %t101, ptr %l71
  br label %bb24
bb24:
  call void @__olang_scope_close(ptr %s4)
  br label %ret
bb25:
  %t102 = load i32, ptr %l2, !range !{i32 0, i32 114}
  %t104 = trunc i64 78 to i32
  %t105 = icmp eq i32 %t102, %t104
  br i1 %t105, label %bb26, label %bb27
bb26:
  %t107 = load ptr, ptr %l0, !tbaa !29
  %t108 = load ptr, ptr %l7, !tbaa !29
  %t111 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ewholeColumn(ptr %v0, ptr %v0, ptr %t107, ptr %t108)
  store i1 %t111, ptr %l77
  br label %bb28
bb27:
  store i1 false, ptr %l74, !tbaa !21
  br label %bb29
bb28:
  %t112 = load i1, ptr %l77, !tbaa !21
  store i1 %t112, ptr %l74, !tbaa !21
  br label %bb29
bb29:
  %t113 = load i1, ptr %l74, !tbaa !21
  br i1 %t113, label %bb30, label %bb31
bb30:
  %t114 = load ptr, ptr %l0, !tbaa !29
  %t115 = load %"compiler/source:Span", ptr %l1
  %t116 = load ptr, ptr %l7, !tbaa !29
  %t117 = load ptr, ptr %l4, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecolumnStore(ptr %v0, ptr %v0, ptr %v2, ptr %t114, %"compiler/source:Span" %t115, ptr %t116, ptr %t117)
  br label %bb32
bb31:
  br label %bb33
bb32:
  br label %ret
bb33:
  %t122 = load ptr, ptr %l0, !tbaa !29
  store ptr %t122, ptr %l82, !tbaa !29
  %t123 = load ptr, ptr %l3, !tbaa !29
  %t125 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v1, ptr %t123)
  store %"compiler/source:Span" %t125, ptr %l84
  br label %bb34
bb34:
  %t126 = load i32, ptr %l2, !range !{i32 0, i32 114}
  %t128 = trunc i64 78 to i32
  %t129 = icmp eq i32 %t126, %t128
  br i1 %t129, label %bb35, label %bb36
bb35:
  store i64 1, ptr %l87, !tbaa !24
  br label %bb37
bb36:
  store i64 2, ptr %l87, !tbaa !24
  br label %bb37
bb37:
  %t131 = load ptr, ptr %l82, !tbaa !29
  %t132 = load %"compiler/source:Span", ptr %l84
  %t133 = load i64, ptr %l87, !tbaa !24
  %t134 = call %"compiler/source:Span" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eopAfter(ptr %v0, ptr %t131, %"compiler/source:Span" %t132, i64 %t133)
  store %"compiler/source:Span" %t134, ptr %l88
  br label %bb38
bb38:
  %t135 = load %"compiler/source:Span", ptr %l88
  store %"compiler/source:Span" %t135, ptr %l8
  %t136 = load i32, ptr %l2, !range !{i32 0, i32 114}
  %t138 = trunc i64 78 to i32
  %t139 = icmp eq i32 %t136, %t138
  %t141 = xor i1 %t139, true
  br i1 %t141, label %bb39, label %bb40
bb39:
  %t143 = load ptr, ptr %l0, !tbaa !29
  store ptr %t143, ptr %l93, !tbaa !29
  %t144 = load ptr, ptr %l7, !tbaa !29
  %t146 = call i32 @compiler_2ftyped_2ecompiler_2ftyped_3aLvalue_2eType(ptr %v0, ptr %t144)
  store i32 %t146, ptr %l95
  br label %bb41
bb40:
  store i1 false, ptr %l92, !tbaa !21
  br label %bb43
bb41:
  %t147 = load ptr, ptr %l93, !tbaa !29
  %t148 = load i32, ptr %l95, !tbaa !23
  %t149 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisRef(ptr %v0, ptr %t147, i32 %t148)
  store i1 %t149, ptr %l96
  br label %bb42
bb42:
  %t150 = load i1, ptr %l96, !tbaa !21
  store i1 %t150, ptr %l92, !tbaa !21
  br label %bb43
bb43:
  %t151 = load i1, ptr %l92, !tbaa !21
  br i1 %t151, label %bb44, label %bb45
bb44:
  %t152 = load ptr, ptr %l0, !tbaa !29
  store ptr %t152, ptr %l98, !tbaa !29
  %t153 = load ptr, ptr %l7, !tbaa !29
  %t155 = call i32 @compiler_2ftyped_2ecompiler_2ftyped_3aLvalue_2eType(ptr %v0, ptr %t153)
  store i32 %t155, ptr %l100
  br label %bb46
bb45:
  store i1 false, ptr %l97, !tbaa !21
  br label %bb48
bb46:
  %t156 = load ptr, ptr %l98, !tbaa !29
  %t157 = load i32, ptr %l100, !tbaa !23
  %t158 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elaneArray(ptr %v0, ptr %t156, i32 %t157)
  store i1 %t158, ptr %l101
  br label %bb47
bb47:
  %t159 = load i1, ptr %l101, !tbaa !21
  store i1 %t159, ptr %l97, !tbaa !21
  br label %bb48
bb48:
  %t160 = load i1, ptr %l97, !tbaa !21
  br i1 %t160, label %bb49, label %bb50
bb49:
  %t161 = load i32, ptr %l2, !range !{i32 0, i32 114}
  %t163 = call i32 @compiler_2fcheck_2ecompoundOp(i32 %t161)
  store i32 %t163, ptr %l104
  br label %bb51
bb50:
  store i1 false, ptr %l102, !tbaa !21
  br label %bb53
bb51:
  %t164 = load i32, ptr %l104, !range !{i32 0, i32 114}
  %t165 = call i1 @compiler_2fcheck_2elaneTok(i32 %t164)
  store i1 %t165, ptr %l105
  br label %bb52
bb52:
  %t166 = load i1, ptr %l105, !tbaa !21
  store i1 %t166, ptr %l102, !tbaa !21
  br label %bb53
bb53:
  %t167 = load i1, ptr %l102, !tbaa !21
  store i1 %t167, ptr %l9, !tbaa !21
  %t168 = load i1, ptr %l9, !tbaa !21
  %t170 = xor i1 %t168, true
  br i1 %t170, label %bb54, label %bb55
bb54:
  %t172 = load ptr, ptr %l0, !tbaa !29
  store ptr %t172, ptr %l109, !tbaa !29
  %t173 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t173, ptr %l110
  %t174 = load i32, ptr %l2, !range !{i32 0, i32 114}
  store i32 %t174, ptr %l111
  %t175 = load ptr, ptr %l7, !tbaa !29
  store ptr %t175, ptr %l112, !tbaa !29
  %t176 = load ptr, ptr %l4, !tbaa !29
  store ptr %t176, ptr %l114, !tbaa !29
  %t178 = load %"compiler/source:Span", ptr %l8
  store %"compiler/source:Span" %t178, ptr %l115
  %t179 = icmp sge i64 0, 0
  br i1 %t179, label %bb56, label %bb57
bb55:
  store i1 false, ptr %l108, !tbaa !21
  br label %bb61
bb56:
  %t181 = icmp sle i64 0, 1152921504606846975
  br i1 %t181, label %bb58, label %bb59
bb57:
  call void @__olang_check_failed(ptr @olang_loc_d2a4873a2cff0127_7286b996ab1f319b)
  unreachable
bb58:
  %t183 = mul i64 0, 8
  %t184 = insertvalue { i64, ptr } undef, i64 0, 0
  %t185 = insertvalue { i64, ptr } %t184, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  %t186 = load ptr, ptr %l109, !tbaa !29
  %t187 = load %"compiler/source:Span", ptr %l110
  %t188 = load i32, ptr %l111, !range !{i32 0, i32 114}
  %t189 = load ptr, ptr %l112, !tbaa !29
  %t190 = load ptr, ptr %l114, !tbaa !29
  %t191 = load %"compiler/source:Span", ptr %l115
  %t193 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ewriteBack(ptr %v0, ptr %v0, ptr %v2, ptr %v0, ptr %t186, %"compiler/source:Span" %t187, i32 %t188, ptr %t189, ptr %t190, %"compiler/source:Span" %t191, i64 -1, { i64, ptr } %t185)
  store i1 %t193, ptr %l119
  br label %bb60
bb59:
  call void @__olang_check_failed(ptr @olang_loc_d2a4873a2cff0127_7286b996ab1f319b)
  unreachable
bb60:
  %t194 = load i1, ptr %l119, !tbaa !21
  store i1 %t194, ptr %l108, !tbaa !21
  br label %bb61
bb61:
  %t195 = load i1, ptr %l108, !tbaa !21
  br i1 %t195, label %bb62, label %bb63
bb62:
  br label %ret
bb63:
  br label %bb64
bb64:
  %t196 = load i1, ptr %l9, !tbaa !21
  %t198 = xor i1 %t196, true
  br i1 %t198, label %bb65, label %bb66
bb65:
  %t200 = load ptr, ptr %l0, !tbaa !29
  store ptr %t200, ptr %l122, !tbaa !29
  %t201 = load ptr, ptr %l7, !tbaa !29
  store ptr %t201, ptr %l123, !tbaa !29
  %t202 = load ptr, ptr %l0, !tbaa !29
  %t203 = load ptr, ptr %l3, !tbaa !29
  %t206 = call %"compiler/source:Span" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ewriteAt(ptr %v0, ptr %v1, ptr %t202, ptr %t203)
  store %"compiler/source:Span" %t206, ptr %l126
  br label %bb67
bb66:
  br label %bb69
bb67:
  %t207 = load ptr, ptr %l122, !tbaa !29
  %t208 = load ptr, ptr %l123, !tbaa !29
  %t209 = load %"compiler/source:Span", ptr %l126
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2enotCapture(ptr %v0, ptr %v0, ptr %t207, ptr %t208, %"compiler/source:Span" %t209)
  br label %bb68
bb68:
  br label %bb69
bb69:
  %t210 = load ptr, ptr %l7, !tbaa !29
  %t212 = call i32 @compiler_2ftyped_2ecompiler_2ftyped_3aLvalue_2eType(ptr %v0, ptr %t210)
  store i32 %t212, ptr %l128
  br label %bb70
bb70:
  %t213 = load i32, ptr %l128, !tbaa !23
  store i32 %t213, ptr %l10, !tbaa !23
  %t214 = load i32, ptr %l2, !range !{i32 0, i32 114}
  %t216 = trunc i64 78 to i32
  %t217 = icmp eq i32 %t214, %t216
  br i1 %t217, label %bb71, label %bb72
bb71:
  %t219 = load ptr, ptr %l0, !tbaa !29
  %t220 = load ptr, ptr %l7, !tbaa !29
  %t221 = load ptr, ptr %l4, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eweakFresh(ptr %v0, ptr %v0, ptr %v2, ptr %t219, ptr %t220, ptr %t221)
  br label %bb73
bb72:
  br label %bb75
bb73:
  %t225 = load ptr, ptr %l0, !tbaa !29
  %t226 = load %"compiler/source:Span", ptr %l1
  %t227 = load ptr, ptr %l7, !tbaa !29
  %t228 = load ptr, ptr %l4, !tbaa !29
  %t229 = load %"compiler/source:Span", ptr %l8
  %t230 = load ptr, ptr %l3, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2estoreInto(ptr %v0, ptr %v0, ptr %v2, ptr %v1, ptr %t225, %"compiler/source:Span" %t226, ptr %t227, ptr %t228, %"compiler/source:Span" %t229, ptr %t230, i1 false)
  br label %bb74
bb74:
  br label %ret
bb75:
  %t238 = load i32, ptr %l2, !range !{i32 0, i32 114}
  %t240 = call i32 @compiler_2fcheck_2ecompoundOp(i32 %t238)
  store i32 %t240, ptr %l142
  br label %bb76
bb76:
  %t241 = load i32, ptr %l142, !range !{i32 0, i32 114}
  store i32 %t241, ptr %l11
  %t242 = load i32, ptr %l11, !range !{i32 0, i32 114}
  %t244 = trunc i64 71 to i32
  %t245 = icmp eq i32 %t242, %t244
  br i1 %t245, label %bb77, label %bb78
bb77:
  %t247 = load ptr, ptr %l0, !tbaa !29
  %t248 = load i32, ptr %l10, !tbaa !23
  %t251 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elaneArray(ptr %v0, ptr %t247, i32 %t248)
  store i1 %t251, ptr %l148
  br label %bb79
bb78:
  store i1 false, ptr %l145, !tbaa !21
  br label %bb80
bb79:
  %t252 = load i1, ptr %l148, !tbaa !21
  %t253 = xor i1 %t252, true
  store i1 %t253, ptr %l145, !tbaa !21
  br label %bb80
bb80:
  %t255 = load i1, ptr %l145, !tbaa !21
  br i1 %t255, label %bb81, label %bb82
bb81:
  %t256 = load i32, ptr %l10, !tbaa !23
  %t257 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t260 = icmp eq i32 %t256, %t257
  br i1 %t260, label %bb83, label %bb84
bb82:
  br label %bb94
bb83:
  br label %ret
bb84:
  br label %bb85
bb85:
  %t262 = load ptr, ptr %l0, !tbaa !29
  store ptr %t262, ptr %l153, !tbaa !29
  %t263 = load ptr, ptr %l0, !tbaa !29
  store ptr %t263, ptr %l154, !tbaa !29
  %t264 = load ptr, ptr %l4, !tbaa !29
  store ptr %t264, ptr %l156, !tbaa !29
  %t266 = load ptr, ptr %l0, !tbaa !29
  %t267 = load i32, ptr %l10, !tbaa !23
  %t270 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2epowExponent(ptr %v0, ptr %t266, i32 %t267)
  store i32 %t270, ptr %l159
  br label %bb86
bb86:
  %t271 = load ptr, ptr %l154, !tbaa !29
  %t272 = load ptr, ptr %l156, !tbaa !29
  %t273 = load i32, ptr %l159, !tbaa !23
  %t274 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eexpr(ptr %v0, ptr %v2, ptr %v0, ptr %t271, ptr %t272, i32 %t273)
  store ptr %t274, ptr %l160
  br label %bb87
bb87:
  %t275 = load ptr, ptr %l4, !tbaa !29
  %t277 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v2, ptr %t275)
  store %"compiler/source:Span" %t277, ptr %l162
  br label %bb88
bb88:
  %t278 = load ptr, ptr %l153, !tbaa !29
  %t279 = load ptr, ptr %l160, !tbaa !29
  %t280 = load %"compiler/source:Span", ptr %l162
  %t281 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2evalue(ptr %v0, ptr %v0, ptr %v0, ptr %t278, ptr %t279, %"compiler/source:Span" %t280)
  store ptr %t281, ptr %l163
  br label %bb89
bb89:
  %t282 = load ptr, ptr %l163, !tbaa !29
  store ptr %t282, ptr %l12, !tbaa !29
  %t283 = load ptr, ptr %l0, !tbaa !29
  store ptr %t283, ptr %l164, !tbaa !29
  %t284 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t284, ptr %l165
  %t285 = load %"compiler/source:Span", ptr %l8
  store %"compiler/source:Span" %t285, ptr %l166
  %t286 = load ptr, ptr %l0, !tbaa !29
  %t287 = load %"compiler/source:Span", ptr %l1
  %t288 = load %"compiler/source:Span", ptr %l1
  %t289 = load i32, ptr %l10, !tbaa !23
  store { i64, [4 x i64] } zeroinitializer, ptr %t290
  %t291 = getelementptr { i64, [4 x i64] }, ptr %t290, i32 0, i32 0
  store i64 7, ptr %t291
  %t293 = insertvalue { %"compiler/source:Span", i32 } undef, %"compiler/source:Span" %t288, 0
  %t295 = insertvalue { %"compiler/source:Span", i32 } %t293, i32 %t289, 1
  %t296 = getelementptr { i64, [4 x i64] }, ptr %t290, i32 0, i32 1
  store { %"compiler/source:Span", i32 } %t295, ptr %t296
  %t297 = load { i64, [4 x i64] }, ptr %t290
  %t299 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 40, i64 8)
  store { i64, [4 x i64] } %t297, ptr %t299
  %t303 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eread(ptr %v0, ptr %v0, ptr %v0, ptr %t286, %"compiler/source:Span" %t287, ptr %t299)
  store ptr %t303, ptr %l173
  br label %bb90
bb90:
  %t304 = load ptr, ptr %l12, !tbaa !29
  %t305 = load ptr, ptr %l164, !tbaa !29
  %t306 = load %"compiler/source:Span", ptr %l165
  %t307 = load %"compiler/source:Span", ptr %l166
  %t308 = load ptr, ptr %l173, !tbaa !29
  %t310 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2epowValues(ptr %v0, ptr %v0, ptr %v0, ptr %v0, ptr %t305, %"compiler/source:Span" %t306, %"compiler/source:Span" %t307, ptr %t308, ptr %t304)
  store ptr %t310, ptr %l175
  br label %bb91
bb91:
  %t311 = load ptr, ptr %l175, !tbaa !29
  %t312 = load ptr, ptr %l0, !tbaa !29
  store ptr %t312, ptr %l176, !tbaa !29
  %t313 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t313, ptr %l177
  %t314 = load ptr, ptr %l7, !tbaa !29
  store ptr %t314, ptr %l178, !tbaa !29
  %t315 = load ptr, ptr %l0, !tbaa !29
  %t317 = load i32, ptr %l10, !tbaa !23
  %t318 = load %"compiler/source:Span", ptr %l1
  %t323 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efit(ptr %v0, ptr %v0, ptr %v0, ptr %t315, ptr %t311, i32 %t317, %"compiler/source:Span" %t318)
  store ptr %t323, ptr %l183
  br label %bb92
bb92:
  store { i64, [3 x i64] } zeroinitializer, ptr %t324
  %t325 = getelementptr { i64, [3 x i64] }, ptr %t324, i32 0, i32 0
  store i64 1, ptr %t325
  %t326 = load %"compiler/source:Span", ptr %l177
  %t327 = insertvalue { %"compiler/source:Span", ptr, ptr } undef, %"compiler/source:Span" %t326, 0
  %t328 = load ptr, ptr %l178, !tbaa !29
  %t329 = insertvalue { %"compiler/source:Span", ptr, ptr } %t327, ptr %t328, 1
  %t330 = load ptr, ptr %l183, !tbaa !29
  %t331 = insertvalue { %"compiler/source:Span", ptr, ptr } %t329, ptr %t330, 2
  %t332 = getelementptr { i64, [3 x i64] }, ptr %t324, i32 0, i32 1
  store { %"compiler/source:Span", ptr, ptr } %t331, ptr %t332
  %t333 = load { i64, [3 x i64] }, ptr %t324
  %t335 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 32, i64 8)
  store { i64, [3 x i64] } %t333, ptr %t335
  %t336 = load ptr, ptr %l176, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eemit(ptr %v0, ptr %v0, ptr %t336, ptr %t335)
  br label %bb93
bb93:
  br label %ret
bb94:
  %t338 = load ptr, ptr %l0, !tbaa !29
  %t339 = load i32, ptr %l10, !tbaa !23
  %t342 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elaneArray(ptr %v0, ptr %t338, i32 %t339)
  store i1 %t342, ptr %l188
  br label %bb95
bb95:
  %t343 = load i1, ptr %l188, !tbaa !21
  br i1 %t343, label %bb96, label %bb97
bb96:
  %t344 = load i32, ptr %l11, !range !{i32 0, i32 114}
  %t346 = call i1 @compiler_2fcheck_2elaneTok(i32 %t344)
  store i1 %t346, ptr %l191
  br label %bb98
bb97:
  store i1 false, ptr %l189, !tbaa !21
  br label %bb99
bb98:
  %t347 = load i1, ptr %l191, !tbaa !21
  store i1 %t347, ptr %l189, !tbaa !21
  br label %bb99
bb99:
  %t348 = load i1, ptr %l189, !tbaa !21
  br i1 %t348, label %bb100, label %bb101
bb100:
  %t349 = load ptr, ptr %l0, !tbaa !29
  %t350 = load %"compiler/source:Span", ptr %l1
  %t351 = load %"compiler/source:Span", ptr %l8
  %t352 = load i32, ptr %l11, !range !{i32 0, i32 114}
  %t353 = load ptr, ptr %l7, !tbaa !29
  %t354 = load ptr, ptr %l4, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elaneAssign(ptr %v0, ptr %v0, ptr %v2, ptr %t349, %"compiler/source:Span" %t350, %"compiler/source:Span" %t351, i32 %t352, ptr %t353, ptr %t354)
  br label %bb102
bb101:
  br label %bb103
bb102:
  br label %ret
bb103:
  %t361 = load ptr, ptr %l0, !tbaa !29
  %t362 = load i32, ptr %l10, !tbaa !23
  %t365 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisNumber(ptr %v0, ptr %t361, i32 %t362)
  store i1 %t365, ptr %l200
  br label %bb104
bb104:
  %t366 = load i1, ptr %l200, !tbaa !21
  %t367 = xor i1 %t366, true
  br i1 %t367, label %bb105, label %bb106
bb105:
  store i1 true, ptr %l202, !tbaa !21
  br label %bb112
bb106:
  %t369 = load ptr, ptr %l0, !tbaa !29
  %t370 = load i32, ptr %l10, !tbaa !23
  %t373 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisNamed(ptr %v0, ptr %t369, i32 %t370)
  store i1 %t373, ptr %l205
  br label %bb107
bb107:
  %t374 = load i1, ptr %l205, !tbaa !21
  br i1 %t374, label %bb108, label %bb109
bb108:
  %t375 = load ptr, ptr %l0, !tbaa !29
  %t377 = getelementptr %"compiler/check:Checker", ptr %t375, i32 0, i32 1
  %t378 = load ptr, ptr %t377, !tbaa !29
  %t379 = load i32, ptr %l10, !tbaa !23
  %t382 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eExtends(ptr %v0, ptr %t378, i32 %t379)
  store i1 %t382, ptr %l210
  br label %bb110
bb109:
  store i1 false, ptr %l206, !tbaa !21
  br label %bb111
bb110:
  %t383 = load i1, ptr %l210, !tbaa !21
  %t384 = xor i1 %t383, true
  store i1 %t384, ptr %l206, !tbaa !21
  br label %bb111
bb111:
  %t386 = load i1, ptr %l206, !tbaa !21
  store i1 %t386, ptr %l202, !tbaa !21
  br label %bb112
bb112:
  %t387 = load i1, ptr %l202, !tbaa !21
  br i1 %t387, label %bb113, label %bb114
bb113:
  store %olang.scope zeroinitializer, ptr %s12
  %t388 = load i32, ptr %l10, !tbaa !23
  %t389 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t392 = icmp eq i32 %t388, %t389
  br i1 %t392, label %bb115, label %bb116
bb114:
  br label %bb167
bb115:
  call void @__olang_scope_close(ptr %s12)
  br label %ret
bb116:
  br label %bb117
bb117:
  %t394 = load ptr, ptr %l0, !tbaa !29
  %t395 = load ptr, ptr %l4, !tbaa !29
  %t397 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t401 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eexpr(ptr %v0, ptr %v2, ptr %v0, ptr %t394, ptr %t395, i32 %t397)
  store ptr %t401, ptr %l219
  br label %bb118
bb118:
  %t402 = load ptr, ptr %l219, !tbaa !29
  store ptr %t402, ptr %l14, !tbaa !29
  %t403 = load ptr, ptr %l0, !tbaa !29
  %t404 = load i32, ptr %l10, !tbaa !23
  %t407 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisNumber(ptr %v0, ptr %t403, i32 %t404)
  store i1 %t407, ptr %l222
  br label %bb119
bb119:
  %t408 = load i1, ptr %l222, !tbaa !21
  br i1 %t408, label %bb120, label %bb121
bb120:
  %t409 = load ptr, ptr %l0, !tbaa !29
  %t410 = load i32, ptr %l10, !tbaa !23
  %t413 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisNamed(ptr %v0, ptr %t409, i32 %t410)
  store i1 %t413, ptr %l226
  br label %bb122
bb121:
  store i1 false, ptr %l223, !tbaa !21
  br label %bb123
bb122:
  %t414 = load i1, ptr %l226, !tbaa !21
  store i1 %t414, ptr %l223, !tbaa !21
  br label %bb123
bb123:
  %t415 = load i1, ptr %l223, !tbaa !21
  br i1 %t415, label %bb124, label %bb125
bb124:
  %t416 = load ptr, ptr %l0, !tbaa !29
  store ptr %t416, ptr %l228, !tbaa !29
  %t417 = load i32, ptr %l10, !tbaa !23
  store i32 %t417, ptr %l229, !tbaa !23
  %t418 = load i32, ptr %l11, !range !{i32 0, i32 114}
  %t420 = call { i64, ptr } @compiler_2fcheck_2eoperatorName(ptr %s12, i32 %t418)
  store { i64, ptr } %t420, ptr %l231
  br label %bb126
bb125:
  store i1 false, ptr %l227, !tbaa !21
  br label %bb128
bb126:
  %t421 = load ptr, ptr %l228, !tbaa !29
  %t422 = load i32, ptr %l229, !tbaa !23
  %t423 = load { i64, ptr }, ptr %l231, !tbaa !27
  %t424 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eroleMethod(ptr %v0, ptr %s12, ptr %t421, i32 %t422, { i64, ptr } %t423, i64 1)
  store i64 %t424, ptr %l232
  br label %bb127
bb127:
  %t425 = load i64, ptr %l232, !tbaa !24
  %t426 = icmp slt i64 %t425, 0
  store i1 %t426, ptr %l227, !tbaa !21
  br label %bb128
bb128:
  %t428 = load i1, ptr %l227, !tbaa !21
  br i1 %t428, label %bb129, label %bb130
bb129:
  %t429 = load ptr, ptr %l14, !tbaa !29
  %t432 = call i32 @compiler_2fcheck_2etypeOf(ptr %v0, ptr %t429)
  store i32 %t432, ptr %l236
  br label %bb131
bb130:
  br label %bb158
bb131:
  %t433 = load i32, ptr %l236, !tbaa !23
  store i32 %t433, ptr %l15, !tbaa !23
  %t434 = load i32, ptr %l15, !tbaa !23
  %t435 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t438 = icmp eq i32 %t434, %t435
  br i1 %t438, label %bb132, label %bb133
bb132:
  call void @__olang_scope_close(ptr %s12)
  br label %ret
bb133:
  br label %bb134
bb134:
  %t440 = load ptr, ptr %l0, !tbaa !29
  %t442 = getelementptr %"compiler/check:Checker", ptr %t440, i32 0, i32 1
  %t443 = load ptr, ptr %t442, !tbaa !29
  %t445 = getelementptr %"compiler/generic:Program", ptr %t443, i32 0, i32 2
  %t446 = load i32, ptr %l15, !tbaa !23
  %t447 = load i32, ptr %l10, !tbaa !23
  %t451 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eSame(ptr %v0, ptr %t445, i32 %t446, i32 %t447)
  store i1 %t451, ptr %l245
  br label %bb135
bb135:
  %t452 = load i1, ptr %l245, !tbaa !21
  br i1 %t452, label %bb136, label %bb137
bb136:
  store %olang.scope zeroinitializer, ptr %s16
  %t453 = load ptr, ptr %l0, !tbaa !29
  store ptr %t453, ptr %l246, !tbaa !29
  %t454 = load %"compiler/source:Span", ptr %l8
  store %"compiler/source:Span" %t454, ptr %l247
  %t455 = load ptr, ptr %l0, !tbaa !29
  %t456 = load i32, ptr %l10, !tbaa !23
  %t459 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %s16, ptr %t455, i32 %t456)
  store { i64, ptr } %t459, ptr %l250
  br label %bb138
bb137:
  store %olang.scope zeroinitializer, ptr %s18
  %t460 = load ptr, ptr %l0, !tbaa !29
  %t461 = load ptr, ptr %l4, !tbaa !29
  %t464 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elitLike(ptr %v0, ptr %v2, ptr %t460, ptr %t461)
  store i1 %t464, ptr %l264
  br label %bb144
bb138:
  %t465 = load { i64, ptr }, ptr %l250, !tbaa !27
  %t466 = extractvalue { i64, ptr } %t465, 0
  %t467 = extractvalue { i64, ptr } %t465, 1
  %t468 = mul i64 %t466, 1
  %t469 = call ptr @__olang_scope_alloc(ptr %s16, i64 %t468)
  call void @llvm.memcpy.p0.p0.i64(ptr %t469, ptr %t467, i64 %t468, i1 false)
  %t470 = insertvalue { i64, ptr } undef, i64 %t466, 0
  %t471 = insertvalue { i64, ptr } %t470, ptr %t469, 1
  store { i64, ptr } %t471, ptr %l251, !tbaa !27
  %t472 = load i32, ptr %l2, !range !{i32 0, i32 114}
  %t474 = call { i64, ptr } @compiler_2ftoken_2ecompiler_2ftoken_3aTok_2eText(ptr %s16, i32 %t472)
  store { i64, ptr } %t474, ptr %l253
  br label %bb139
bb139:
  %t475 = load { i64, ptr }, ptr %l253, !tbaa !27
  %t476 = call { i64, ptr } @compiler_2fmsgs_2eTok(ptr %s16, ptr %s16, { i64, ptr } %t475)
  store { i64, ptr } %t476, ptr %l254
  br label %bb140
bb140:
  %t477 = load { i64, ptr }, ptr %l254, !tbaa !27
  %t478 = extractvalue { i64, ptr } %t477, 0
  %t479 = extractvalue { i64, ptr } %t477, 1
  %t480 = mul i64 %t478, 1
  %t481 = call ptr @__olang_scope_alloc(ptr %s16, i64 %t480)
  call void @llvm.memcpy.p0.p0.i64(ptr %t481, ptr %t479, i64 %t480, i1 false)
  %t482 = insertvalue { i64, ptr } undef, i64 %t478, 0
  %t483 = insertvalue { i64, ptr } %t482, ptr %t481, 1
  store { i64, ptr } %t483, ptr %l255, !tbaa !27
  %t484 = load i32, ptr %l11, !range !{i32 0, i32 114}
  %t486 = call { i64, ptr } @compiler_2fcheck_2eoperatorName(ptr %s16, i32 %t484)
  store { i64, ptr } %t486, ptr %l257
  br label %bb141
bb141:
  %t487 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d0, i32 0, i32 1) }, 1
  %t488 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d0, i32 0, i32 1) }, 0
  %t489 = load { i64, ptr }, ptr %l257, !tbaa !27
  %t490 = extractvalue { i64, ptr } %t489, 1
  %t491 = extractvalue { i64, ptr } %t489, 0
  %t492 = add i64 %t488, %t491
  %t493 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d0, i32 0, i32 1) }, 1
  %t494 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d0, i32 0, i32 1) }, 0
  %t495 = add i64 %t492, %t494
  %t496 = call ptr @__olang_scope_alloc(ptr %s16, i64 %t495)
  call void @olang_textcopy(ptr %t496, ptr %t487, i64 %t488)
  %t497 = getelementptr i8, ptr %t496, i64 %t488
  call void @olang_textcopy(ptr %t497, ptr %t490, i64 %t491)
  %t498 = getelementptr i8, ptr %t497, i64 %t491
  call void @olang_textcopy(ptr %t498, ptr %t493, i64 %t494)
  %t499 = insertvalue { i64, ptr } undef, i64 %t495, 0
  %t500 = insertvalue { i64, ptr } %t499, ptr %t496, 1
  %t502 = extractvalue { i64, ptr } %t500, 0
  %t503 = extractvalue { i64, ptr } %t500, 1
  %t504 = mul i64 %t502, 1
  %t505 = call ptr @__olang_scope_alloc(ptr %s16, i64 %t504)
  call void @llvm.memcpy.p0.p0.i64(ptr %t505, ptr %t503, i64 %t504, i1 false)
  %t506 = insertvalue { i64, ptr } undef, i64 %t502, 0
  %t507 = insertvalue { i64, ptr } %t506, ptr %t505, 1
  %t508 = load { i64, ptr }, ptr %l251, !tbaa !27
  %t509 = load { i64, ptr }, ptr %l255, !tbaa !27
  %t511 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eNotExtendedOp(ptr %s16, ptr %s16, ptr %s16, ptr %s16, { i64, ptr } %t508, { i64, ptr } %t509, { i64, ptr } %t507)
  store %"compiler/diagmsg:Msg" %t511, ptr %l260
  br label %bb142
bb142:
  %t512 = load ptr, ptr %l246, !tbaa !29
  %t513 = load %"compiler/source:Span", ptr %l247
  %t514 = load %"compiler/diagmsg:Msg", ptr %l260
  %t515 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %s16, ptr %t512, %"compiler/source:Span" %t513, %"compiler/diagmsg:Msg" %t514)
  store i64 %t515, ptr %l261
  br label %bb143
bb143:
  call void @__olang_scope_close(ptr %s16)
  br label %bb157
bb144:
  %t516 = load i1, ptr %l264, !tbaa !21
  br i1 %t516, label %bb145, label %bb146
bb145:
  %t517 = load ptr, ptr %l0, !tbaa !29
  %t518 = load i32, ptr %l10, !tbaa !23
  %t521 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunder(ptr %v0, ptr %t517, i32 %t518)
  store i32 %t521, ptr %l268
  br label %bb147
bb146:
  %t522 = load ptr, ptr %l0, !tbaa !29
  %t524 = getelementptr %"compiler/check:Checker", ptr %t522, i32 0, i32 1
  %t525 = load ptr, ptr %t524, !tbaa !29
  store ptr %t525, ptr %l270, !tbaa !29
  %t526 = load ptr, ptr %l0, !tbaa !29
  %t527 = load i32, ptr %l10, !tbaa !23
  %t530 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunder(ptr %v0, ptr %t526, i32 %t527)
  store i32 %t530, ptr %l273
  br label %bb148
bb147:
  %t531 = load i32, ptr %l268, !tbaa !23
  store i32 %t531, ptr %l265, !tbaa !23
  br label %bb151
bb148:
  %t532 = load ptr, ptr %l0, !tbaa !29
  %t533 = load i32, ptr %l15, !tbaa !23
  %t536 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunder(ptr %v0, ptr %t532, i32 %t533)
  store i32 %t536, ptr %l276
  br label %bb149
bb149:
  %t537 = load ptr, ptr %l270, !tbaa !29
  %t538 = load i32, ptr %l273, !tbaa !23
  %t539 = load i32, ptr %l276, !tbaa !23
  %t540 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eMeet(ptr %v0, ptr %t537, i32 %t538, i32 %t539)
  store i32 %t540, ptr %l277
  br label %bb150
bb150:
  %t541 = load i32, ptr %l277, !tbaa !23
  store i32 %t541, ptr %l265, !tbaa !23
  br label %bb151
bb151:
  %t542 = load i32, ptr %l265, !tbaa !23
  %t543 = load ptr, ptr %l0, !tbaa !29
  store ptr %t543, ptr %l278, !tbaa !29
  %t544 = load %"compiler/source:Span", ptr %l8
  store %"compiler/source:Span" %t544, ptr %l279
  %t545 = load ptr, ptr %l0, !tbaa !29
  %t549 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %s18, ptr %t545, i32 %t542)
  store { i64, ptr } %t549, ptr %l282
  br label %bb152
bb152:
  %t550 = load { i64, ptr }, ptr %l282, !tbaa !27
  %t551 = extractvalue { i64, ptr } %t550, 0
  %t552 = extractvalue { i64, ptr } %t550, 1
  %t553 = mul i64 %t551, 1
  %t554 = call ptr @__olang_scope_alloc(ptr %s18, i64 %t553)
  call void @llvm.memcpy.p0.p0.i64(ptr %t554, ptr %t552, i64 %t553, i1 false)
  %t555 = insertvalue { i64, ptr } undef, i64 %t551, 0
  %t556 = insertvalue { i64, ptr } %t555, ptr %t554, 1
  store { i64, ptr } %t556, ptr %l283, !tbaa !27
  %t557 = load ptr, ptr %l0, !tbaa !29
  %t558 = load i32, ptr %l10, !tbaa !23
  %t561 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %s18, ptr %t557, i32 %t558)
  store { i64, ptr } %t561, ptr %l286
  br label %bb153
bb153:
  %t562 = load { i64, ptr }, ptr %l286, !tbaa !27
  %t563 = extractvalue { i64, ptr } %t562, 0
  %t564 = extractvalue { i64, ptr } %t562, 1
  %t565 = mul i64 %t563, 1
  %t566 = call ptr @__olang_scope_alloc(ptr %s18, i64 %t565)
  call void @llvm.memcpy.p0.p0.i64(ptr %t566, ptr %t564, i64 %t565, i1 false)
  %t567 = insertvalue { i64, ptr } undef, i64 %t563, 0
  %t568 = insertvalue { i64, ptr } %t567, ptr %t566, 1
  store { i64, ptr } %t568, ptr %l287, !tbaa !27
  %t569 = load ptr, ptr %l0, !tbaa !29
  %t570 = load i32, ptr %l10, !tbaa !23
  %t573 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %s18, ptr %t569, i32 %t570)
  store { i64, ptr } %t573, ptr %l290
  br label %bb154
bb154:
  %t574 = load { i64, ptr }, ptr %l290, !tbaa !27
  %t575 = extractvalue { i64, ptr } %t574, 0
  %t576 = extractvalue { i64, ptr } %t574, 1
  %t577 = mul i64 %t575, 1
  %t578 = call ptr @__olang_scope_alloc(ptr %s18, i64 %t577)
  call void @llvm.memcpy.p0.p0.i64(ptr %t578, ptr %t576, i64 %t577, i1 false)
  %t579 = insertvalue { i64, ptr } undef, i64 %t575, 0
  %t580 = insertvalue { i64, ptr } %t579, ptr %t578, 1
  %t581 = load { i64, ptr }, ptr %l283, !tbaa !27
  %t582 = load { i64, ptr }, ptr %l287, !tbaa !27
  %t584 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eNumberDoesNotFlow(ptr %s18, ptr %s18, ptr %s18, ptr %s18, { i64, ptr } %t581, { i64, ptr } %t582, { i64, ptr } %t580)
  store %"compiler/diagmsg:Msg" %t584, ptr %l292
  br label %bb155
bb155:
  %t585 = load ptr, ptr %l278, !tbaa !29
  %t586 = load %"compiler/source:Span", ptr %l279
  %t587 = load %"compiler/diagmsg:Msg", ptr %l292
  %t588 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %s18, ptr %t585, %"compiler/source:Span" %t586, %"compiler/diagmsg:Msg" %t587)
  store i64 %t588, ptr %l293
  br label %bb156
bb156:
  call void @__olang_scope_close(ptr %s18)
  br label %bb157
bb157:
  call void @__olang_scope_close(ptr %s12)
  br label %ret
bb158:
  %t589 = load ptr, ptr %l0, !tbaa !29
  store ptr %t589, ptr %l294, !tbaa !29
  %t590 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t590, ptr %l295
  %t591 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t591, ptr %l296
  %t592 = load i32, ptr %l11, !range !{i32 0, i32 114}
  store i32 %t592, ptr %l297
  %t593 = load ptr, ptr %l0, !tbaa !29
  %t594 = load %"compiler/source:Span", ptr %l1
  %t595 = load %"compiler/source:Span", ptr %l1
  %t596 = load i32, ptr %l10, !tbaa !23
  store { i64, [4 x i64] } zeroinitializer, ptr %t597
  %t598 = getelementptr { i64, [4 x i64] }, ptr %t597, i32 0, i32 0
  store i64 7, ptr %t598
  %t600 = insertvalue { %"compiler/source:Span", i32 } undef, %"compiler/source:Span" %t595, 0
  %t602 = insertvalue { %"compiler/source:Span", i32 } %t600, i32 %t596, 1
  %t603 = getelementptr { i64, [4 x i64] }, ptr %t597, i32 0, i32 1
  store { %"compiler/source:Span", i32 } %t602, ptr %t603
  %t604 = load { i64, [4 x i64] }, ptr %t597
  %t606 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 40, i64 8)
  store { i64, [4 x i64] } %t604, ptr %t606
  %t610 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eread(ptr %v0, ptr %v0, ptr %v0, ptr %t593, %"compiler/source:Span" %t594, ptr %t606)
  store ptr %t610, ptr %l304
  br label %bb159
bb159:
  %t611 = load ptr, ptr %l14, !tbaa !29
  %t612 = load ptr, ptr %l294, !tbaa !29
  %t613 = load %"compiler/source:Span", ptr %l295
  %t614 = load %"compiler/source:Span", ptr %l296
  %t615 = load i32, ptr %l297, !range !{i32 0, i32 114}
  %t616 = load ptr, ptr %l304, !tbaa !29
  %t618 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eoperatorCall(ptr %v0, ptr %v0, ptr %v0, ptr %v0, ptr %t612, %"compiler/source:Span" %t613, %"compiler/source:Span" %t614, i32 %t615, ptr %t616, ptr %t611)
  store ptr %t618, ptr %l306
  br label %bb160
bb160:
  %t619 = load ptr, ptr %l306, !tbaa !29
  store ptr %t619, ptr %l17, !tbaa !29
  %t620 = load ptr, ptr %l17, !tbaa !29
  %t622 = icmp eq ptr %t620, null
  br i1 %t622, label %bb161, label %bb162
bb161:
  store %olang.scope zeroinitializer, ptr %s19
  %t624 = load ptr, ptr %l0, !tbaa !29
  %t625 = load %"compiler/source:Span", ptr %l1
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2egap(ptr %v0, ptr %s19, ptr %t624, %"compiler/source:Span" %t625, { i64, ptr } { i64 58, ptr getelementptr inbounds (<{ i64, [58 x i8] }>, ptr @.d1, i32 0, i32 1) })
  br label %bb163
bb162:
  br label %bb164
bb163:
  call void @__olang_scope_close(ptr %s19)
  call void @__olang_scope_close(ptr %s12)
  br label %ret
bb164:
  %t628 = load ptr, ptr %l0, !tbaa !29
  store ptr %t628, ptr %l311, !tbaa !29
  %t629 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t629, ptr %l312
  %t630 = load ptr, ptr %l7, !tbaa !29
  store ptr %t630, ptr %l313, !tbaa !29
  %t631 = load ptr, ptr %l0, !tbaa !29
  %t632 = load ptr, ptr %l17, !tbaa !29
  %t633 = load i32, ptr %l10, !tbaa !23
  %t634 = load %"compiler/source:Span", ptr %l1
  %t639 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efit(ptr %v0, ptr %v0, ptr %v0, ptr %t631, ptr %t632, i32 %t633, %"compiler/source:Span" %t634)
  store ptr %t639, ptr %l318
  br label %bb165
bb165:
  store { i64, [3 x i64] } zeroinitializer, ptr %t640
  %t641 = getelementptr { i64, [3 x i64] }, ptr %t640, i32 0, i32 0
  store i64 1, ptr %t641
  %t642 = load %"compiler/source:Span", ptr %l312
  %t643 = insertvalue { %"compiler/source:Span", ptr, ptr } undef, %"compiler/source:Span" %t642, 0
  %t644 = load ptr, ptr %l313, !tbaa !29
  %t645 = insertvalue { %"compiler/source:Span", ptr, ptr } %t643, ptr %t644, 1
  %t646 = load ptr, ptr %l318, !tbaa !29
  %t647 = insertvalue { %"compiler/source:Span", ptr, ptr } %t645, ptr %t646, 2
  %t648 = getelementptr { i64, [3 x i64] }, ptr %t640, i32 0, i32 1
  store { %"compiler/source:Span", ptr, ptr } %t647, ptr %t648
  %t649 = load { i64, [3 x i64] }, ptr %t640
  %t651 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 32, i64 8)
  store { i64, [3 x i64] } %t649, ptr %t651
  %t652 = load ptr, ptr %l311, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eemit(ptr %v0, ptr %v0, ptr %t652, ptr %t651)
  br label %bb166
bb166:
  call void @__olang_scope_close(ptr %s12)
  br label %ret
bb167:
  %t654 = load ptr, ptr %l0, !tbaa !29
  %t655 = load %"compiler/source:Span", ptr %l1
  %t656 = load %"compiler/source:Span", ptr %l1
  %t657 = load i32, ptr %l10, !tbaa !23
  store { i64, [4 x i64] } zeroinitializer, ptr %t658
  %t659 = getelementptr { i64, [4 x i64] }, ptr %t658, i32 0, i32 0
  store i64 7, ptr %t659
  %t661 = insertvalue { %"compiler/source:Span", i32 } undef, %"compiler/source:Span" %t656, 0
  %t663 = insertvalue { %"compiler/source:Span", i32 } %t661, i32 %t657, 1
  %t664 = getelementptr { i64, [4 x i64] }, ptr %t658, i32 0, i32 1
  store { %"compiler/source:Span", i32 } %t663, ptr %t664
  %t665 = load { i64, [4 x i64] }, ptr %t658
  %t667 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 40, i64 8)
  store { i64, [4 x i64] } %t665, ptr %t667
  %t671 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eread(ptr %v0, ptr %v0, ptr %v0, ptr %t654, %"compiler/source:Span" %t655, ptr %t667)
  store ptr %t671, ptr %l327
  br label %bb168
bb168:
  %t672 = load ptr, ptr %l327, !tbaa !29
  store ptr %t672, ptr %l18, !tbaa !29
  store ptr null, ptr %l19, !tbaa !29
  %t673 = load ptr, ptr %l0, !tbaa !29
  %t674 = load ptr, ptr %l4, !tbaa !29
  %t678 = call %"compiler/check:litv" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efold(ptr %v0, ptr %v2, ptr %t673, ptr %t674)
  store %"compiler/check:litv" %t678, ptr %l331
  br label %bb169
bb169:
  %t679 = load %"compiler/check:litv", ptr %l331
  store %"compiler/check:litv" %t679, ptr %l20
  %t680 = getelementptr %"compiler/check:litv", ptr %l20, i32 0, i32 0
  %t681 = load i1, ptr %t680, !tbaa !21
  br i1 %t681, label %bb170, label %bb171
bb170:
  %t683 = load ptr, ptr %l0, !tbaa !29
  %t684 = load ptr, ptr %l4, !tbaa !29
  %t685 = load %"compiler/check:litv", ptr %l20
  %t686 = load i32, ptr %l10, !tbaa !23
  %t691 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elitOf(ptr %v0, ptr %v2, ptr %v0, ptr %t683, ptr %t684, %"compiler/check:litv" %t685, i32 %t686)
  store ptr %t691, ptr %l337
  br label %bb172
bb171:
  %t692 = load ptr, ptr %l0, !tbaa !29
  store ptr %t692, ptr %l339, !tbaa !29
  %t693 = load ptr, ptr %l0, !tbaa !29
  %t694 = load ptr, ptr %l4, !tbaa !29
  %t696 = load i32, ptr %l10, !tbaa !23
  %t700 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eexpr(ptr %v0, ptr %v2, ptr %v0, ptr %t693, ptr %t694, i32 %t696)
  store ptr %t700, ptr %l344
  br label %bb173
bb172:
  %t701 = load ptr, ptr %l337, !tbaa !29
  store ptr %t701, ptr %l19, !tbaa !29
  br label %bb176
bb173:
  %t703 = load ptr, ptr %l4, !tbaa !29
  %t705 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v2, ptr %t703)
  store %"compiler/source:Span" %t705, ptr %l346
  br label %bb174
bb174:
  %t706 = load ptr, ptr %l339, !tbaa !29
  %t707 = load ptr, ptr %l344, !tbaa !29
  %t708 = load %"compiler/source:Span", ptr %l346
  %t709 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2evalue(ptr %v0, ptr %v0, ptr %v0, ptr %t706, ptr %t707, %"compiler/source:Span" %t708)
  store ptr %t709, ptr %l347
  br label %bb175
bb175:
  %t710 = load ptr, ptr %l347, !tbaa !29
  store ptr %t710, ptr %l19, !tbaa !29
  br label %bb176
bb176:
  %t712 = load ptr, ptr %l19, !tbaa !29
  %t714 = call i32 @compiler_2fcheck_2etypeOf(ptr %v0, ptr %t712)
  store i32 %t714, ptr %l350
  br label %bb177
bb177:
  %t715 = load i32, ptr %l350, !tbaa !23
  store i32 %t715, ptr %l21, !tbaa !23
  %t716 = load i32, ptr %l11, !range !{i32 0, i32 114}
  %t718 = trunc i64 106 to i32
  %t719 = icmp eq i32 %t716, %t718
  br i1 %t719, label %bb178, label %bb179
bb178:
  store i1 true, ptr %l353, !tbaa !21
  br label %bb180
bb179:
  %t721 = load i32, ptr %l11, !range !{i32 0, i32 114}
  %t723 = trunc i64 107 to i32
  %t724 = icmp eq i32 %t721, %t723
  store i1 %t724, ptr %l353, !tbaa !21
  br label %bb180
bb180:
  %t726 = load i1, ptr %l353, !tbaa !21
  br i1 %t726, label %bb181, label %bb182
bb181:
  %t727 = load ptr, ptr %l0, !tbaa !29
  store ptr %t727, ptr %l357, !tbaa !29
  %t728 = load i32, ptr %l10, !tbaa !23
  store i32 %t728, ptr %l358, !tbaa !23
  %t729 = load ptr, ptr %l19, !tbaa !29
  %t731 = icmp eq ptr %t729, null
  br i1 %t731, label %bb183, label %bb184
bb182:
  store i1 false, ptr %l356, !tbaa !21
  br label %bb188
bb183:
  call void @__olang_check_failed(ptr @olang_loc_5957a34f5d629e92_b1985d6017512bae)
  unreachable
bb184:
  br label %bb185
bb185:
  %t733 = load ptr, ptr %l19, !tbaa !29
  store ptr %t733, ptr %l361, !tbaa !29
  %t734 = load ptr, ptr %l4, !tbaa !29
  %t736 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v2, ptr %t734)
  store %"compiler/source:Span" %t736, ptr %l363
  br label %bb186
bb186:
  %t737 = load ptr, ptr %l357, !tbaa !29
  %t738 = load i32, ptr %l358, !tbaa !23
  %t739 = load ptr, ptr %l361, !tbaa !29
  %t740 = load %"compiler/source:Span", ptr %l363
  %t741 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eshiftInRange(ptr %v0, ptr %v0, ptr %t737, i32 %t738, ptr %t739, %"compiler/source:Span" %t740)
  store i1 %t741, ptr %l364
  br label %bb187
bb187:
  %t742 = load i1, ptr %l364, !tbaa !21
  %t743 = xor i1 %t742, true
  store i1 %t743, ptr %l356, !tbaa !21
  br label %bb188
bb188:
  %t745 = load i1, ptr %l356, !tbaa !21
  br i1 %t745, label %bb189, label %bb190
bb189:
  br label %ret
bb190:
  br label %bb191
bb191:
  %t746 = load i32, ptr %l11, !range !{i32 0, i32 114}
  %t748 = trunc i64 106 to i32
  %t749 = icmp eq i32 %t746, %t748
  %t751 = xor i1 %t749, true
  br i1 %t751, label %bb192, label %bb193
bb192:
  %t753 = load i32, ptr %l11, !range !{i32 0, i32 114}
  %t755 = trunc i64 107 to i32
  %t756 = icmp eq i32 %t753, %t755
  %t758 = xor i1 %t756, true
  store i1 %t758, ptr %l369, !tbaa !21
  br label %bb194
bb193:
  store i1 false, ptr %l369, !tbaa !21
  br label %bb194
bb194:
  %t760 = load i1, ptr %l369, !tbaa !21
  br i1 %t760, label %bb195, label %bb196
bb195:
  %t761 = load i32, ptr %l21, !tbaa !23
  %t762 = load i32, ptr %l10, !tbaa !23
  %t765 = icmp ne i32 %t761, %t762
  store i1 %t765, ptr %l373, !tbaa !21
  br label %bb197
bb196:
  store i1 false, ptr %l373, !tbaa !21
  br label %bb197
bb197:
  %t767 = load i1, ptr %l373, !tbaa !21
  br i1 %t767, label %bb198, label %bb199
bb198:
  %t768 = load i32, ptr %l21, !tbaa !23
  %t769 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t772 = icmp ne i32 %t768, %t769
  store i1 %t772, ptr %l377, !tbaa !21
  br label %bb200
bb199:
  store i1 false, ptr %l377, !tbaa !21
  br label %bb200
bb200:
  %t774 = load i1, ptr %l377, !tbaa !21
  br i1 %t774, label %bb201, label %bb202
bb201:
  %t775 = load ptr, ptr %l0, !tbaa !29
  %t776 = load i32, ptr %l21, !tbaa !23
  %t779 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisNumber(ptr %v0, ptr %t775, i32 %t776)
  store i1 %t779, ptr %l383
  br label %bb203
bb202:
  br label %bb221
bb203:
  %t780 = load i1, ptr %l383, !tbaa !21
  br i1 %t780, label %bb204, label %bb205
bb204:
  %t781 = load ptr, ptr %l0, !tbaa !29
  %t783 = getelementptr %"compiler/check:Checker", ptr %t781, i32 0, i32 1
  %t784 = load ptr, ptr %t783, !tbaa !29
  %t785 = load i32, ptr %l21, !tbaa !23
  %t786 = load i32, ptr %l10, !tbaa !23
  %t790 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFlows(ptr %v0, ptr %t784, i32 %t785, i32 %t786)
  store i1 %t790, ptr %l389
  br label %bb206
bb205:
  store i1 false, ptr %l384, !tbaa !21
  br label %bb207
bb206:
  %t791 = load i1, ptr %l389, !tbaa !21
  store i1 %t791, ptr %l384, !tbaa !21
  br label %bb207
bb207:
  %t792 = load i1, ptr %l384, !tbaa !21
  br i1 %t792, label %bb208, label %bb209
bb208:
  %t793 = load ptr, ptr %l0, !tbaa !29
  store ptr %t793, ptr %l390, !tbaa !29
  %t794 = load ptr, ptr %l4, !tbaa !29
  %t796 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v2, ptr %t794)
  store %"compiler/source:Span" %t796, ptr %l392
  br label %bb210
bb209:
  store %olang.scope zeroinitializer, ptr %s25
  %t797 = load ptr, ptr %l0, !tbaa !29
  store ptr %t797, ptr %l399, !tbaa !29
  %t798 = load %"compiler/source:Span", ptr %l8
  store %"compiler/source:Span" %t798, ptr %l400
  %t799 = load ptr, ptr %l0, !tbaa !29
  %t800 = load i32, ptr %l21, !tbaa !23
  %t803 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %s25, ptr %t799, i32 %t800)
  store { i64, ptr } %t803, ptr %l403
  br label %bb215
bb210:
  %t804 = load ptr, ptr %l19, !tbaa !29
  %t806 = icmp eq ptr %t804, null
  br i1 %t806, label %bb211, label %bb212
bb211:
  call void @__olang_check_failed(ptr @olang_loc_211eb8206518cfd3_dabae8ca263a8cdf)
  unreachable
bb212:
  br label %bb213
bb213:
  %t808 = load ptr, ptr %l19, !tbaa !29
  %t809 = load i32, ptr %l10, !tbaa !23
  %t810 = load ptr, ptr %l390, !tbaa !29
  %t811 = load %"compiler/source:Span", ptr %l392
  %t814 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2econvert(ptr %v0, ptr %v0, ptr %v0, ptr %t810, %"compiler/source:Span" %t811, ptr %t808, i32 %t809)
  store ptr %t814, ptr %l397
  br label %bb214
bb214:
  %t815 = load ptr, ptr %l397, !tbaa !29
  store ptr %t815, ptr %l19, !tbaa !29
  br label %bb220
bb215:
  %t817 = load { i64, ptr }, ptr %l403, !tbaa !27
  %t818 = extractvalue { i64, ptr } %t817, 0
  %t819 = extractvalue { i64, ptr } %t817, 1
  %t820 = mul i64 %t818, 1
  %t821 = call ptr @__olang_scope_alloc(ptr %s25, i64 %t820)
  call void @llvm.memcpy.p0.p0.i64(ptr %t821, ptr %t819, i64 %t820, i1 false)
  %t822 = insertvalue { i64, ptr } undef, i64 %t818, 0
  %t823 = insertvalue { i64, ptr } %t822, ptr %t821, 1
  store { i64, ptr } %t823, ptr %l404, !tbaa !27
  %t824 = load ptr, ptr %l0, !tbaa !29
  %t825 = load i32, ptr %l10, !tbaa !23
  %t828 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %s25, ptr %t824, i32 %t825)
  store { i64, ptr } %t828, ptr %l407
  br label %bb216
bb216:
  %t829 = load { i64, ptr }, ptr %l407, !tbaa !27
  %t830 = extractvalue { i64, ptr } %t829, 0
  %t831 = extractvalue { i64, ptr } %t829, 1
  %t832 = mul i64 %t830, 1
  %t833 = call ptr @__olang_scope_alloc(ptr %s25, i64 %t832)
  call void @llvm.memcpy.p0.p0.i64(ptr %t833, ptr %t831, i64 %t832, i1 false)
  %t834 = insertvalue { i64, ptr } undef, i64 %t830, 0
  %t835 = insertvalue { i64, ptr } %t834, ptr %t833, 1
  store { i64, ptr } %t835, ptr %l408, !tbaa !27
  %t836 = load ptr, ptr %l0, !tbaa !29
  %t837 = load i32, ptr %l10, !tbaa !23
  %t840 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %s25, ptr %t836, i32 %t837)
  store { i64, ptr } %t840, ptr %l411
  br label %bb217
bb217:
  %t841 = load { i64, ptr }, ptr %l411, !tbaa !27
  %t842 = extractvalue { i64, ptr } %t841, 0
  %t843 = extractvalue { i64, ptr } %t841, 1
  %t844 = mul i64 %t842, 1
  %t845 = call ptr @__olang_scope_alloc(ptr %s25, i64 %t844)
  call void @llvm.memcpy.p0.p0.i64(ptr %t845, ptr %t843, i64 %t844, i1 false)
  %t846 = insertvalue { i64, ptr } undef, i64 %t842, 0
  %t847 = insertvalue { i64, ptr } %t846, ptr %t845, 1
  %t848 = load { i64, ptr }, ptr %l404, !tbaa !27
  %t849 = load { i64, ptr }, ptr %l408, !tbaa !27
  %t851 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eNumberDoesNotFlow(ptr %s25, ptr %s25, ptr %s25, ptr %s25, { i64, ptr } %t848, { i64, ptr } %t849, { i64, ptr } %t847)
  store %"compiler/diagmsg:Msg" %t851, ptr %l413
  br label %bb218
bb218:
  %t852 = load ptr, ptr %l399, !tbaa !29
  %t853 = load %"compiler/source:Span", ptr %l400
  %t854 = load %"compiler/diagmsg:Msg", ptr %l413
  %t855 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %s25, ptr %t852, %"compiler/source:Span" %t853, %"compiler/diagmsg:Msg" %t854)
  store i64 %t855, ptr %l414
  br label %bb219
bb219:
  call void @__olang_scope_close(ptr %s25)
  br label %bb220
bb220:
  br label %bb221
bb221:
  %t856 = load ptr, ptr %l0, !tbaa !29
  store ptr %t856, ptr %l415, !tbaa !29
  %t857 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t857, ptr %l416
  %t858 = load ptr, ptr %l7, !tbaa !29
  store ptr %t858, ptr %l417, !tbaa !29
  %t859 = load ptr, ptr %l0, !tbaa !29
  store ptr %t859, ptr %l418, !tbaa !29
  %t860 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t860, ptr %l419
  %t861 = load i32, ptr %l10, !tbaa !23
  store i32 %t861, ptr %l420, !tbaa !23
  %t862 = load i32, ptr %l11, !range !{i32 0, i32 114}
  %t864 = call i32 @compiler_2fcheck_2ebinaryOp(i32 %t862)
  store i32 %t864, ptr %l422
  br label %bb222
bb222:
  %t865 = load ptr, ptr %l18, !tbaa !29
  %t866 = load ptr, ptr %l19, !tbaa !29
  %t867 = load ptr, ptr %l418, !tbaa !29
  %t868 = load %"compiler/source:Span", ptr %l419
  %t869 = load i32, ptr %l420, !tbaa !23
  %t870 = load i32, ptr %l422, !range !{i32 0, i32 52}
  %t873 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eprim(ptr %v0, ptr %v0, ptr %v0, ptr %v0, ptr %t867, %"compiler/source:Span" %t868, i32 %t869, i32 %t870, ptr %t865, ptr %t866)
  store ptr %t873, ptr %l425
  br label %bb223
bb223:
  store { i64, [3 x i64] } zeroinitializer, ptr %t874
  %t875 = getelementptr { i64, [3 x i64] }, ptr %t874, i32 0, i32 0
  store i64 1, ptr %t875
  %t876 = load %"compiler/source:Span", ptr %l416
  %t877 = insertvalue { %"compiler/source:Span", ptr, ptr } undef, %"compiler/source:Span" %t876, 0
  %t878 = load ptr, ptr %l417, !tbaa !29
  %t879 = insertvalue { %"compiler/source:Span", ptr, ptr } %t877, ptr %t878, 1
  %t880 = load ptr, ptr %l425, !tbaa !29
  %t881 = insertvalue { %"compiler/source:Span", ptr, ptr } %t879, ptr %t880, 2
  %t882 = getelementptr { i64, [3 x i64] }, ptr %t874, i32 0, i32 1
  store { %"compiler/source:Span", ptr, ptr } %t881, ptr %t882
  %t883 = load { i64, [3 x i64] }, ptr %t874
  %t885 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 32, i64 8)
  store { i64, [3 x i64] } %t883, ptr %t885
  %t886 = load ptr, ptr %l415, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eemit(ptr %v0, ptr %v0, ptr %t886, ptr %t885)
  br label %bb224
bb224:
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eb5aPlace(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, ptr %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca i32
  %l4 = alloca i64
  %l5 = alloca i32
  %l6 = alloca ptr
  %l7 = alloca ptr
  %l8 = alloca ptr
  %l9 = alloca ptr
  %l10 = alloca ptr
  %l13 = alloca ptr
  %l14 = alloca i1
  %l28 = alloca ptr
  %l29 = alloca i1
  %l38 = alloca ptr
  %l39 = alloca i1
  %l48 = alloca ptr
  %l49 = alloca i1
  %l64 = alloca ptr
  %l65 = alloca i1
  %l75 = alloca ptr
  %l76 = alloca i1
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
  br label %ret
bb2:
  br label %bb3
bb3:
  %t5 = load ptr, ptr %l2, !tbaa !29
  store ptr %t5, ptr %l13, !tbaa !29
  store i1 false, ptr %l14, !tbaa !21
  %t6 = load ptr, ptr %l13, !tbaa !29
  %t7 = icmp ne ptr %t6, null
  br i1 %t7, label %bb4, label %bb5
bb4:
  %t9 = load ptr, ptr %l13, !tbaa !29
  %t10 = load i64, ptr %t9, !range !{i64 0, i64 8}
  %t12 = icmp eq i64 %t10, 1
  store i1 %t12, ptr %l14, !tbaa !21
  br label %bb5
bb5:
  %t13 = load i1, ptr %l14, !tbaa !21
  br i1 %t13, label %bb6, label %bb7
bb6:
  %t14 = load ptr, ptr %l2, !tbaa !29
  %t16 = getelementptr { i64, [4 x i64] }, ptr %t14, i32 0, i32 1
  %t17 = getelementptr { %"compiler/source:Span", i32, i64, i32 }, ptr %t16, i32 0, i32 1
  %t18 = load i32, ptr %t17
  store i32 %t18, ptr %l3, !tbaa !23
  %t20 = load ptr, ptr %l2, !tbaa !29
  %t22 = getelementptr { i64, [4 x i64] }, ptr %t20, i32 0, i32 1
  %t23 = getelementptr { %"compiler/source:Span", i32, i64, i32 }, ptr %t22, i32 0, i32 2
  %t24 = load i64, ptr %t23
  store i64 %t24, ptr %l4, !tbaa !24
  %t26 = load ptr, ptr %l2, !tbaa !29
  %t28 = getelementptr { i64, [4 x i64] }, ptr %t26, i32 0, i32 1
  %t29 = getelementptr { %"compiler/source:Span", i32, i64, i32 }, ptr %t28, i32 0, i32 3
  %t30 = load i32, ptr %t29
  store i32 %t30, ptr %l5, !tbaa !23
  br label %bb8
bb7:
  br label %bb10
bb8:
  %t32 = load ptr, ptr %l0, !tbaa !29
  %t33 = load ptr, ptr %l1, !tbaa !29
  %t34 = load i64, ptr %l4, !tbaa !24
  %t35 = load i32, ptr %l5, !tbaa !23
  %t36 = load i32, ptr %l3, !tbaa !23
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eb5aGlobal(ptr %v0, ptr %v1, ptr %t32, ptr %t33, i64 %t34, i32 %t35, i32 %t36)
  br label %bb9
bb9:
  br label %bb51
bb10:
  %t42 = load ptr, ptr %l2, !tbaa !29
  store ptr %t42, ptr %l28, !tbaa !29
  store i1 false, ptr %l29, !tbaa !21
  %t43 = load ptr, ptr %l28, !tbaa !29
  %t44 = icmp ne ptr %t43, null
  br i1 %t44, label %bb11, label %bb12
bb11:
  %t46 = load ptr, ptr %l28, !tbaa !29
  %t47 = load i64, ptr %t46, !range !{i64 0, i64 8}
  %t49 = icmp eq i64 %t47, 2
  store i1 %t49, ptr %l29, !tbaa !21
  br label %bb12
bb12:
  %t50 = load i1, ptr %l29, !tbaa !21
  br i1 %t50, label %bb13, label %bb14
bb13:
  %t51 = load ptr, ptr %l2, !tbaa !29
  %t53 = getelementptr { i64, [4 x i64] }, ptr %t51, i32 0, i32 1
  %t54 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t53, i32 0, i32 2
  %t55 = load ptr, ptr %t54
  store ptr %t55, ptr %l6, !tbaa !29
  br label %bb15
bb14:
  br label %bb17
bb15:
  %t57 = load ptr, ptr %l0, !tbaa !29
  %t58 = load ptr, ptr %l1, !tbaa !29
  %t59 = load ptr, ptr %l6, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eb5aExpr(ptr %v0, ptr %v1, ptr %v2, ptr %t57, ptr %t58, ptr %t59)
  br label %bb16
bb16:
  br label %bb51
bb17:
  %t64 = load ptr, ptr %l2, !tbaa !29
  store ptr %t64, ptr %l38, !tbaa !29
  store i1 false, ptr %l39, !tbaa !21
  %t65 = load ptr, ptr %l38, !tbaa !29
  %t66 = icmp ne ptr %t65, null
  br i1 %t66, label %bb18, label %bb19
bb18:
  %t68 = load ptr, ptr %l38, !tbaa !29
  %t69 = load i64, ptr %t68, !range !{i64 0, i64 8}
  %t71 = icmp eq i64 %t69, 3
  store i1 %t71, ptr %l39, !tbaa !21
  br label %bb19
bb19:
  %t72 = load i1, ptr %l39, !tbaa !21
  br i1 %t72, label %bb20, label %bb21
bb20:
  %t73 = load ptr, ptr %l2, !tbaa !29
  %t75 = getelementptr { i64, [4 x i64] }, ptr %t73, i32 0, i32 1
  %t76 = getelementptr { %"compiler/source:Span", i32, ptr, i64 }, ptr %t75, i32 0, i32 2
  %t77 = load ptr, ptr %t76
  store ptr %t77, ptr %l7, !tbaa !29
  br label %bb22
bb21:
  br label %bb24
bb22:
  %t79 = load ptr, ptr %l0, !tbaa !29
  %t80 = load ptr, ptr %l1, !tbaa !29
  %t81 = load ptr, ptr %l7, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eb5aPlace(ptr %v0, ptr %v1, ptr %v2, ptr %t79, ptr %t80, ptr %t81)
  br label %bb23
bb23:
  br label %bb51
bb24:
  %t86 = load ptr, ptr %l2, !tbaa !29
  store ptr %t86, ptr %l48, !tbaa !29
  store i1 false, ptr %l49, !tbaa !21
  %t87 = load ptr, ptr %l48, !tbaa !29
  %t88 = icmp ne ptr %t87, null
  br i1 %t88, label %bb25, label %bb26
bb25:
  %t90 = load ptr, ptr %l48, !tbaa !29
  %t91 = load i64, ptr %t90, !range !{i64 0, i64 8}
  %t93 = icmp eq i64 %t91, 4
  store i1 %t93, ptr %l49, !tbaa !21
  br label %bb26
bb26:
  %t94 = load i1, ptr %l49, !tbaa !21
  br i1 %t94, label %bb27, label %bb28
bb27:
  %t95 = load ptr, ptr %l2, !tbaa !29
  %t97 = getelementptr { i64, [4 x i64] }, ptr %t95, i32 0, i32 1
  %t98 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t97, i32 0, i32 2
  %t99 = load ptr, ptr %t98
  store ptr %t99, ptr %l8, !tbaa !29
  br label %bb29
bb28:
  br label %bb32
bb29:
  %t101 = load ptr, ptr %l0, !tbaa !29
  %t102 = load ptr, ptr %l1, !tbaa !29
  %t103 = load ptr, ptr %l8, !tbaa !29
  %t105 = getelementptr %"compiler/typed:Elem", ptr %t103, i32 0, i32 0
  %t106 = load ptr, ptr %t105, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eb5aPlace(ptr %v0, ptr %v1, ptr %v2, ptr %t101, ptr %t102, ptr %t106)
  br label %bb30
bb30:
  %t111 = load ptr, ptr %l0, !tbaa !29
  %t112 = load ptr, ptr %l1, !tbaa !29
  %t113 = load ptr, ptr %l8, !tbaa !29
  %t115 = getelementptr %"compiler/typed:Elem", ptr %t113, i32 0, i32 1
  %t116 = load ptr, ptr %t115, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eb5aExpr(ptr %v0, ptr %v1, ptr %v2, ptr %t111, ptr %t112, ptr %t116)
  br label %bb31
bb31:
  br label %bb51
bb32:
  %t121 = load ptr, ptr %l2, !tbaa !29
  store ptr %t121, ptr %l64, !tbaa !29
  store i1 false, ptr %l65, !tbaa !21
  %t122 = load ptr, ptr %l64, !tbaa !29
  %t123 = icmp ne ptr %t122, null
  br i1 %t123, label %bb33, label %bb34
bb33:
  %t125 = load ptr, ptr %l64, !tbaa !29
  %t126 = load i64, ptr %t125, !range !{i64 0, i64 8}
  %t128 = icmp eq i64 %t126, 5
  store i1 %t128, ptr %l65, !tbaa !21
  br label %bb34
bb34:
  %t129 = load i1, ptr %l65, !tbaa !21
  br i1 %t129, label %bb35, label %bb36
bb35:
  %t130 = load ptr, ptr %l2, !tbaa !29
  %t132 = getelementptr { i64, [4 x i64] }, ptr %t130, i32 0, i32 1
  %t133 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t132, i32 0, i32 2
  %t134 = load ptr, ptr %t133
  store ptr %t134, ptr %l9, !tbaa !29
  br label %bb37
bb36:
  br label %bb39
bb37:
  %t136 = load ptr, ptr %l0, !tbaa !29
  %t137 = load ptr, ptr %l1, !tbaa !29
  %t138 = load ptr, ptr %l9, !tbaa !29
  %t140 = getelementptr %"compiler/typed:Payload", ptr %t138, i32 0, i32 0
  %t141 = load ptr, ptr %t140, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eb5aPlace(ptr %v0, ptr %v1, ptr %v2, ptr %t136, ptr %t137, ptr %t141)
  br label %bb38
bb38:
  br label %bb51
bb39:
  %t146 = load ptr, ptr %l2, !tbaa !29
  store ptr %t146, ptr %l75, !tbaa !29
  store i1 false, ptr %l76, !tbaa !21
  %t147 = load ptr, ptr %l75, !tbaa !29
  %t148 = icmp ne ptr %t147, null
  br i1 %t148, label %bb40, label %bb41
bb40:
  %t150 = load ptr, ptr %l75, !tbaa !29
  %t151 = load i64, ptr %t150, !range !{i64 0, i64 8}
  %t153 = icmp eq i64 %t151, 6
  store i1 %t153, ptr %l76, !tbaa !21
  br label %bb41
bb41:
  %t154 = load i1, ptr %l76, !tbaa !21
  br i1 %t154, label %bb42, label %bb43
bb42:
  %t155 = load ptr, ptr %l2, !tbaa !29
  %t157 = getelementptr { i64, [4 x i64] }, ptr %t155, i32 0, i32 1
  %t158 = getelementptr { %"compiler/source:Span", i32, ptr, i32 }, ptr %t157, i32 0, i32 2
  %t159 = load ptr, ptr %t158
  store ptr %t159, ptr %l10, !tbaa !29
  br label %bb44
bb43:
  br label %bb46
bb44:
  %t161 = load ptr, ptr %l0, !tbaa !29
  %t162 = load ptr, ptr %l1, !tbaa !29
  %t163 = load ptr, ptr %l10, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eb5aExpr(ptr %v0, ptr %v1, ptr %v2, ptr %t161, ptr %t162, ptr %t163)
  br label %bb45
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
  call void @__olang_check_failed(ptr @olang_loc_b2a10b57ca8f7dfa_ebdfac3cc9f6695e)
  unreachable
bb51:
  br label %ret
ret:
  ret void
}

define dso_local ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ebodyCall(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %a0, %"compiler/source:Span" %a1, i64 %a2, i32 %a3, { i64, ptr } %a4, ptr %a5, ptr %a6) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/source:Span"
  %l4 = alloca { i64, ptr }
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca i64
  %l12 = alloca i64
  %l14 = alloca ptr
  %l15 = alloca i64
  %l19 = alloca i64
  %l25 = alloca i64
  %l28 = alloca i64
  %l47 = alloca ptr
  %l52 = alloca ptr
  %l56 = alloca i64
  %l58 = alloca i64
  %l63 = alloca i64
  %l65 = alloca ptr
  %l69 = alloca ptr
  %l72 = alloca ptr
  %l73 = alloca %"compiler/source:Span"
  %l74 = alloca i32
  %l75 = alloca i64
  %l79 = alloca { i64, ptr }
  %l80 = alloca ptr
  %rv = alloca ptr
  store ptr %a0, ptr %l0
  store %"compiler/source:Span" %a1, ptr %l1
  store { i64, ptr } %a4, ptr %l4
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/check:Checker", ptr %t1, i32 0, i32 36
  %t5 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2eLen_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %t3)
  store i64 %t5, ptr %l19
  br label %bb1
bb1:
  %t6 = load i64, ptr %l19, !tbaa !24
  store i64 %t6, ptr %l7, !tbaa !24
  store i64 0, ptr %l8, !tbaa !24
  %t7 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t9 = extractvalue { i64, ptr } %t7, 0
  store i64 %t9, ptr %l9, !tbaa !24
  store i64 1, ptr %l10, !tbaa !24
  %t11 = load i64, ptr %l9, !tbaa !24
  %t12 = load i64, ptr %l8, !tbaa !24
  %t15 = icmp sgt i64 %t11, %t12
  br i1 %t15, label %bb2, label %bb3
bb2:
  %t17 = load i64, ptr %l10, !tbaa !24
  %t19 = icmp sgt i64 %t17, 0
  br i1 %t19, label %bb4, label %bb5
bb3:
  store i64 0, ptr %l25, !tbaa !24
  br label %bb7
bb4:
  %t21 = load i64, ptr %l9, !tbaa !24
  %t22 = load i64, ptr %l8, !tbaa !24
  %t25 = sub i64 %t21, %t22
  %t26 = load i64, ptr %l10, !tbaa !24
  %t29 = add i64 %t25, %t26
  %t31 = sub i64 %t29, 1
  %t32 = load i64, ptr %l10, !tbaa !24
  %t35 = sdiv i64 %t31, %t32
  store i64 %t35, ptr %l28, !tbaa !24
  br label %bb6
bb5:
  store i64 0, ptr %l28, !tbaa !24
  br label %bb6
bb6:
  %t37 = load i64, ptr %l28, !tbaa !24
  store i64 %t37, ptr %l25, !tbaa !24
  br label %bb7
bb7:
  %t38 = load i64, ptr %l25, !tbaa !24
  store i64 %t38, ptr %l11, !tbaa !24
  store i64 0, ptr %l12, !tbaa !24
  br label %bb8
bb8:
  %t39 = load i64, ptr %l12, !tbaa !24
  %t40 = load i64, ptr %l11, !tbaa !24
  %t43 = icmp slt i64 %t39, %t40
  %t45 = xor i1 %t43, true
  br i1 %t45, label %bb9, label %bb10
bb9:
  br label %bb15
bb10:
  br label %bb11
bb11:
  %t47 = load i64, ptr %l8, !tbaa !24
  %t48 = load i64, ptr %l12, !tbaa !24
  %t49 = load i64, ptr %l10, !tbaa !24
  %t52 = mul i64 %t48, %t49
  %t55 = add i64 %t47, %t52
  %t57 = load ptr, ptr %l0, !tbaa !29
  %t59 = getelementptr %"compiler/check:Checker", ptr %t57, i32 0, i32 36
  store ptr %t59, ptr %l47, !tbaa !29
  %t60 = load ptr, ptr %l0, !tbaa !29
  %t61 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t68 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eheldArg(ptr %v0, ptr %v1, ptr %v2, ptr %v1, ptr %t60, { i64, ptr } %t61, ptr %a5, i64 %t55)
  store ptr %t68, ptr %l52
  br label %bb12
bb12:
  %t69 = load ptr, ptr %l47, !tbaa !29
  %t70 = load ptr, ptr %l52, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2ePush_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %v1, ptr %t69, ptr %t70)
  br label %bb13
bb13:
  br label %bb14
bb14:
  %t71 = load i64, ptr %l12, !tbaa !24
  %t73 = add i64 %t71, 1
  store i64 %t73, ptr %l12, !tbaa !24
  br label %bb8
bb15:
  store ptr %a6, ptr %l14, !tbaa !29
  store i64 0, ptr %l15, !tbaa !24
  br label %bb16
bb16:
  %t77 = load i64, ptr %l15, !tbaa !24
  store i64 %t77, ptr %l56, !tbaa !24
  %t78 = load ptr, ptr %l14, !tbaa !29
  %t80 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v3, ptr %t78)
  store i64 %t80, ptr %l58
  br label %bb17
bb17:
  %t81 = load i64, ptr %l56, !tbaa !24
  %t82 = load i64, ptr %l58, !tbaa !24
  %t83 = icmp slt i64 %t81, %t82
  %t85 = xor i1 %t83, true
  br i1 %t85, label %bb18, label %bb19
bb18:
  br label %bb25
bb19:
  br label %bb20
bb20:
  %t87 = load ptr, ptr %l14, !tbaa !29
  %t88 = load i64, ptr %l15, !tbaa !24
  %t91 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v3, ptr %t87, i64 %t88)
  store i64 %t91, ptr %l63
  br label %bb21
bb21:
  %t92 = load i64, ptr %l63, !tbaa !24
  %t93 = load ptr, ptr %l0, !tbaa !29
  %t95 = getelementptr %"compiler/check:Checker", ptr %t93, i32 0, i32 36
  store ptr %t95, ptr %l65, !tbaa !29
  %t96 = load ptr, ptr %l0, !tbaa !29
  %t97 = load %"compiler/source:Span", ptr %l1
  %t102 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ereadLocal(ptr %v0, ptr %v0, ptr %t96, %"compiler/source:Span" %t97, i64 %t92)
  store ptr %t102, ptr %l69
  br label %bb22
bb22:
  %t103 = load ptr, ptr %l65, !tbaa !29
  %t104 = load ptr, ptr %l69, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2ePush_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %v0, ptr %t103, ptr %t104)
  br label %bb23
bb23:
  br label %bb24
bb24:
  %t105 = load i64, ptr %l15, !tbaa !24
  %t107 = add i64 %t105, 1
  store i64 %t107, ptr %l15, !tbaa !24
  br label %bb16
bb25:
  %t109 = load ptr, ptr %l0, !tbaa !29
  store ptr %t109, ptr %l72, !tbaa !29
  %t110 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t110, ptr %l73
  store i32 %a3, ptr %l74, !tbaa !23
  store i64 %a2, ptr %l75, !tbaa !24
  %t113 = load ptr, ptr %l0, !tbaa !29
  %t115 = getelementptr %"compiler/check:Checker", ptr %t113, i32 0, i32 36
  %t116 = load i64, ptr %l7, !tbaa !24
  %t119 = call { i64, ptr } @compiler_2fcheck_2egather_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %v0, ptr %t115, i64 %t116)
  store { i64, ptr } %t119, ptr %l79
  br label %bb26
bb26:
  %t120 = load ptr, ptr %l72, !tbaa !29
  %t121 = load %"compiler/source:Span", ptr %l73
  %t122 = load i32, ptr %l74, !tbaa !23
  %t123 = load i64, ptr %l75, !tbaa !24
  %t124 = load { i64, ptr }, ptr %l79, !tbaa !27
  %t125 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecallOfBody(ptr %v0, ptr %v0, ptr %v4, ptr %t120, %"compiler/source:Span" %t121, i32 %t122, i64 %t123, { i64, ptr } %t124, i1 false)
  store ptr %t125, ptr %l80
  br label %bb27
bb27:
  %t126 = load ptr, ptr %l80, !tbaa !29
  store ptr %t126, ptr %rv
  br label %ret
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

define dso_local { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ebuilderNameTaken(ptr %v0, ptr %v1, ptr %a0, i32 %a1, i32 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca i32
  %l3 = alloca { i64, ptr }
  %l6 = alloca { i64, ptr }
  %l9 = alloca i1
  %l10 = alloca i1
  %l14 = alloca i1
  %l15 = alloca { i64, ptr }
  %l16 = alloca { i64, ptr }
  %l17 = alloca i64
  %l18 = alloca { i64, ptr }
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
  %l45 = alloca i1
  %l47 = alloca i1
  %l48 = alloca i1
  %l50 = alloca i1
  %l51 = alloca i1
  %l53 = alloca i1
  %l54 = alloca i1
  %l56 = alloca i1
  %l57 = alloca i1
  %l59 = alloca i1
  %l60 = alloca { i64, ptr }
  %l61 = alloca { i64, ptr }
  %l62 = alloca i64
  %l63 = alloca { i64, ptr }
  %l66 = alloca i1
  %l67 = alloca i1
  %l69 = alloca i1
  %l70 = alloca i1
  %l72 = alloca i1
  %l73 = alloca i1
  %l75 = alloca i1
  %l76 = alloca i1
  %l78 = alloca i1
  %l79 = alloca i1
  %l81 = alloca i1
  %l82 = alloca i1
  %l84 = alloca i1
  %l85 = alloca { i64, ptr }
  %l86 = alloca { i64, ptr }
  %l87 = alloca i64
  %l88 = alloca { i64, ptr }
  %l90 = alloca i1
  %l91 = alloca i1
  %l94 = alloca i1
  %l95 = alloca i1
  %l98 = alloca ptr
  %l103 = alloca { i64, ptr }
  %l104 = alloca { i64, ptr }
  %l105 = alloca i64
  %l106 = alloca { i64, ptr }
  %l107 = alloca { i64, ptr }
  %l108 = alloca { i64, ptr }
  %l109 = alloca i64
  %l110 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  store i32 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load i32, ptr %l2, !tbaa !23
  %t5 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %v0, ptr %t1, i32 %t2)
  store { i64, ptr } %t5, ptr %l6
  br label %bb1
bb1:
  %t6 = load { i64, ptr }, ptr %l6, !tbaa !27
  store { i64, ptr } %t6, ptr %l3, !tbaa !27
  %t7 = load ptr, ptr %l0, !tbaa !29
  %t8 = load i32, ptr %l1, !tbaa !23
  %t11 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisEnum(ptr %v0, ptr %t7, i32 %t8)
  store i1 %t11, ptr %l9
  br label %bb2
bb2:
  %t12 = load i1, ptr %l9, !tbaa !21
  br i1 %t12, label %bb3, label %bb4
bb3:
  %t13 = load ptr, ptr %l0, !tbaa !29
  %t14 = load i32, ptr %l1, !tbaa !23
  %t15 = load i32, ptr %l2, !tbaa !23
  %t19 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ehasCase(ptr %v0, ptr %t13, i32 %t14, i32 %t15)
  store i1 %t19, ptr %l14
  br label %bb5
bb4:
  store i1 false, ptr %l10, !tbaa !21
  br label %bb6
bb5:
  %t20 = load i1, ptr %l14, !tbaa !21
  store i1 %t20, ptr %l10, !tbaa !21
  br label %bb6
bb6:
  %t21 = load i1, ptr %l10, !tbaa !21
  br i1 %t21, label %bb7, label %bb8
bb7:
  store { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d2, i32 0, i32 1) }, ptr %l15, !tbaa !27
  %t22 = load { i64, ptr }, ptr %l15, !tbaa !27
  store { i64, ptr } %t22, ptr %l16, !tbaa !27
  %t23 = load { i64, ptr }, ptr %l16, !tbaa !27
  %t24 = extractvalue { i64, ptr } %t23, 0
  store i64 %t24, ptr %l17, !tbaa !24
  %t25 = load i64, ptr %l17, !tbaa !24
  %t26 = mul i64 %t25, 1
  %t27 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t26)
  %t28 = insertvalue { i64, ptr } undef, i64 %t25, 0
  %t29 = insertvalue { i64, ptr } %t28, ptr %t27, 1
  store { i64, ptr } %t29, ptr %l18, !tbaa !27
  %t30 = getelementptr { i64, ptr }, ptr %l18, i32 0, i32 1
  %t31 = load ptr, ptr %t30, !tbaa !27
  %t32 = getelementptr { i64, ptr }, ptr %l16, i32 0, i32 1
  %t33 = load ptr, ptr %t32, !tbaa !27
  %t34 = load i64, ptr %l17, !tbaa !24
  %t35 = mul i64 %t34, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t31, ptr %t33, i64 %t35, i1 false)
  %t36 = load { i64, ptr }, ptr %l18, !tbaa !27
  store { i64, ptr } %t36, ptr %l16, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  %t37 = load { i64, ptr }, ptr %l16, !tbaa !27
  store { i64, ptr } %t37, ptr %rv
  br label %ret
bb8:
  br label %bb9
bb9:
  %t38 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t40 = call i1 @compiler_2fgeneric_2eProjectsType(ptr %v0, { i64, ptr } %t38)
  store i1 %t40, ptr %l20
  br label %bb10
bb10:
  %t41 = load i1, ptr %l20, !tbaa !21
  br i1 %t41, label %bb11, label %bb12
bb11:
  store i1 true, ptr %l21, !tbaa !21
  br label %bb14
bb12:
  %t42 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t44 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t42, { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d3, i32 0, i32 1) })
  store i1 %t44, ptr %l23
  br label %bb13
bb13:
  %t45 = load i1, ptr %l23, !tbaa !21
  store i1 %t45, ptr %l21, !tbaa !21
  br label %bb14
bb14:
  %t46 = load i1, ptr %l21, !tbaa !21
  br i1 %t46, label %bb15, label %bb16
bb15:
  store i1 true, ptr %l24, !tbaa !21
  br label %bb18
bb16:
  %t47 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t49 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t47, { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d4, i32 0, i32 1) })
  store i1 %t49, ptr %l26
  br label %bb17
bb17:
  %t50 = load i1, ptr %l26, !tbaa !21
  store i1 %t50, ptr %l24, !tbaa !21
  br label %bb18
bb18:
  %t51 = load i1, ptr %l24, !tbaa !21
  br i1 %t51, label %bb19, label %bb20
bb19:
  store i1 true, ptr %l27, !tbaa !21
  br label %bb22
bb20:
  %t52 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t54 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t52, { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d5, i32 0, i32 1) })
  store i1 %t54, ptr %l29
  br label %bb21
bb21:
  %t55 = load i1, ptr %l29, !tbaa !21
  store i1 %t55, ptr %l27, !tbaa !21
  br label %bb22
bb22:
  %t56 = load i1, ptr %l27, !tbaa !21
  br i1 %t56, label %bb23, label %bb24
bb23:
  store i1 true, ptr %l30, !tbaa !21
  br label %bb26
bb24:
  %t57 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t59 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t57, { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d6, i32 0, i32 1) })
  store i1 %t59, ptr %l32
  br label %bb25
bb25:
  %t60 = load i1, ptr %l32, !tbaa !21
  store i1 %t60, ptr %l30, !tbaa !21
  br label %bb26
bb26:
  %t61 = load i1, ptr %l30, !tbaa !21
  br i1 %t61, label %bb27, label %bb28
bb27:
  store i1 true, ptr %l33, !tbaa !21
  br label %bb30
bb28:
  %t62 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t64 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t62, { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d7, i32 0, i32 1) })
  store i1 %t64, ptr %l35
  br label %bb29
bb29:
  %t65 = load i1, ptr %l35, !tbaa !21
  store i1 %t65, ptr %l33, !tbaa !21
  br label %bb30
bb30:
  %t66 = load i1, ptr %l33, !tbaa !21
  br i1 %t66, label %bb31, label %bb32
bb31:
  store i1 true, ptr %l36, !tbaa !21
  br label %bb34
bb32:
  %t67 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t69 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t67, { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d8, i32 0, i32 1) })
  store i1 %t69, ptr %l38
  br label %bb33
bb33:
  %t70 = load i1, ptr %l38, !tbaa !21
  store i1 %t70, ptr %l36, !tbaa !21
  br label %bb34
bb34:
  %t71 = load i1, ptr %l36, !tbaa !21
  br i1 %t71, label %bb35, label %bb36
bb35:
  store i1 true, ptr %l39, !tbaa !21
  br label %bb38
bb36:
  %t72 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t74 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t72, { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d9, i32 0, i32 1) })
  store i1 %t74, ptr %l41
  br label %bb37
bb37:
  %t75 = load i1, ptr %l41, !tbaa !21
  store i1 %t75, ptr %l39, !tbaa !21
  br label %bb38
bb38:
  %t76 = load i1, ptr %l39, !tbaa !21
  br i1 %t76, label %bb39, label %bb40
bb39:
  store i1 true, ptr %l42, !tbaa !21
  br label %bb42
bb40:
  %t77 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t79 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t77, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d10, i32 0, i32 1) })
  store i1 %t79, ptr %l44
  br label %bb41
bb41:
  %t80 = load i1, ptr %l44, !tbaa !21
  store i1 %t80, ptr %l42, !tbaa !21
  br label %bb42
bb42:
  %t81 = load i1, ptr %l42, !tbaa !21
  br i1 %t81, label %bb43, label %bb44
bb43:
  store i1 true, ptr %l45, !tbaa !21
  br label %bb46
bb44:
  %t82 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t84 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t82, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d11, i32 0, i32 1) })
  store i1 %t84, ptr %l47
  br label %bb45
bb45:
  %t85 = load i1, ptr %l47, !tbaa !21
  store i1 %t85, ptr %l45, !tbaa !21
  br label %bb46
bb46:
  %t86 = load i1, ptr %l45, !tbaa !21
  br i1 %t86, label %bb47, label %bb48
bb47:
  store i1 true, ptr %l48, !tbaa !21
  br label %bb50
bb48:
  %t87 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t89 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t87, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d12, i32 0, i32 1) })
  store i1 %t89, ptr %l50
  br label %bb49
bb49:
  %t90 = load i1, ptr %l50, !tbaa !21
  store i1 %t90, ptr %l48, !tbaa !21
  br label %bb50
bb50:
  %t91 = load i1, ptr %l48, !tbaa !21
  br i1 %t91, label %bb51, label %bb52
bb51:
  store i1 true, ptr %l51, !tbaa !21
  br label %bb54
bb52:
  %t92 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t94 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t92, { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d13, i32 0, i32 1) })
  store i1 %t94, ptr %l53
  br label %bb53
bb53:
  %t95 = load i1, ptr %l53, !tbaa !21
  store i1 %t95, ptr %l51, !tbaa !21
  br label %bb54
bb54:
  %t96 = load i1, ptr %l51, !tbaa !21
  br i1 %t96, label %bb55, label %bb56
bb55:
  store i1 true, ptr %l54, !tbaa !21
  br label %bb58
bb56:
  %t97 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t99 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t97, { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d14, i32 0, i32 1) })
  store i1 %t99, ptr %l56
  br label %bb57
bb57:
  %t100 = load i1, ptr %l56, !tbaa !21
  store i1 %t100, ptr %l54, !tbaa !21
  br label %bb58
bb58:
  %t101 = load i1, ptr %l54, !tbaa !21
  br i1 %t101, label %bb59, label %bb60
bb59:
  store i1 true, ptr %l57, !tbaa !21
  br label %bb62
bb60:
  %t102 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t104 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t102, { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d15, i32 0, i32 1) })
  store i1 %t104, ptr %l59
  br label %bb61
bb61:
  %t105 = load i1, ptr %l59, !tbaa !21
  store i1 %t105, ptr %l57, !tbaa !21
  br label %bb62
bb62:
  %t106 = load i1, ptr %l57, !tbaa !21
  br i1 %t106, label %bb63, label %bb64
bb63:
  store { i64, ptr } { i64 47, ptr getelementptr inbounds (<{ i64, [47 x i8] }>, ptr @.d16, i32 0, i32 1) }, ptr %l60, !tbaa !27
  %t107 = load { i64, ptr }, ptr %l60, !tbaa !27
  store { i64, ptr } %t107, ptr %l61, !tbaa !27
  %t108 = load { i64, ptr }, ptr %l61, !tbaa !27
  %t109 = extractvalue { i64, ptr } %t108, 0
  store i64 %t109, ptr %l62, !tbaa !24
  %t110 = load i64, ptr %l62, !tbaa !24
  %t111 = mul i64 %t110, 1
  %t112 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t111)
  %t113 = insertvalue { i64, ptr } undef, i64 %t110, 0
  %t114 = insertvalue { i64, ptr } %t113, ptr %t112, 1
  store { i64, ptr } %t114, ptr %l63, !tbaa !27
  %t115 = getelementptr { i64, ptr }, ptr %l63, i32 0, i32 1
  %t116 = load ptr, ptr %t115, !tbaa !27
  %t117 = getelementptr { i64, ptr }, ptr %l61, i32 0, i32 1
  %t118 = load ptr, ptr %t117, !tbaa !27
  %t119 = load i64, ptr %l62, !tbaa !24
  %t120 = mul i64 %t119, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t116, ptr %t118, i64 %t120, i1 false)
  %t121 = load { i64, ptr }, ptr %l63, !tbaa !27
  store { i64, ptr } %t121, ptr %l61, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  %t122 = load { i64, ptr }, ptr %l61, !tbaa !27
  store { i64, ptr } %t122, ptr %rv
  br label %ret
bb64:
  br label %bb65
bb65:
  %t123 = load ptr, ptr %l0, !tbaa !29
  %t124 = load i32, ptr %l1, !tbaa !23
  %t127 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisNumber(ptr %v0, ptr %t123, i32 %t124)
  store i1 %t127, ptr %l66
  br label %bb66
bb66:
  %t128 = load i1, ptr %l66, !tbaa !21
  br i1 %t128, label %bb67, label %bb68
bb67:
  %t129 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t131 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t129, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d17, i32 0, i32 1) })
  store i1 %t131, ptr %l69
  br label %bb69
bb68:
  store i1 false, ptr %l67, !tbaa !21
  br label %bb90
bb69:
  %t132 = load i1, ptr %l69, !tbaa !21
  br i1 %t132, label %bb70, label %bb71
bb70:
  store i1 true, ptr %l70, !tbaa !21
  br label %bb73
bb71:
  %t133 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t135 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t133, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d18, i32 0, i32 1) })
  store i1 %t135, ptr %l72
  br label %bb72
bb72:
  %t136 = load i1, ptr %l72, !tbaa !21
  store i1 %t136, ptr %l70, !tbaa !21
  br label %bb73
bb73:
  %t137 = load i1, ptr %l70, !tbaa !21
  br i1 %t137, label %bb74, label %bb75
bb74:
  store i1 true, ptr %l73, !tbaa !21
  br label %bb77
bb75:
  %t138 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t140 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t138, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d19, i32 0, i32 1) })
  store i1 %t140, ptr %l75
  br label %bb76
bb76:
  %t141 = load i1, ptr %l75, !tbaa !21
  store i1 %t141, ptr %l73, !tbaa !21
  br label %bb77
bb77:
  %t142 = load i1, ptr %l73, !tbaa !21
  br i1 %t142, label %bb78, label %bb79
bb78:
  store i1 true, ptr %l76, !tbaa !21
  br label %bb81
bb79:
  %t143 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t145 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t143, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d20, i32 0, i32 1) })
  store i1 %t145, ptr %l78
  br label %bb80
bb80:
  %t146 = load i1, ptr %l78, !tbaa !21
  store i1 %t146, ptr %l76, !tbaa !21
  br label %bb81
bb81:
  %t147 = load i1, ptr %l76, !tbaa !21
  br i1 %t147, label %bb82, label %bb83
bb82:
  store i1 true, ptr %l79, !tbaa !21
  br label %bb85
bb83:
  %t148 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t150 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t148, { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d21, i32 0, i32 1) })
  store i1 %t150, ptr %l81
  br label %bb84
bb84:
  %t151 = load i1, ptr %l81, !tbaa !21
  store i1 %t151, ptr %l79, !tbaa !21
  br label %bb85
bb85:
  %t152 = load i1, ptr %l79, !tbaa !21
  br i1 %t152, label %bb86, label %bb87
bb86:
  store i1 true, ptr %l82, !tbaa !21
  br label %bb89
bb87:
  %t153 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t155 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t153, { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d22, i32 0, i32 1) })
  store i1 %t155, ptr %l84
  br label %bb88
bb88:
  %t156 = load i1, ptr %l84, !tbaa !21
  store i1 %t156, ptr %l82, !tbaa !21
  br label %bb89
bb89:
  %t157 = load i1, ptr %l82, !tbaa !21
  store i1 %t157, ptr %l67, !tbaa !21
  br label %bb90
bb90:
  %t158 = load i1, ptr %l67, !tbaa !21
  br i1 %t158, label %bb91, label %bb92
bb91:
  store { i64, ptr } { i64 26, ptr getelementptr inbounds (<{ i64, [26 x i8] }>, ptr @.d23, i32 0, i32 1) }, ptr %l85, !tbaa !27
  %t159 = load { i64, ptr }, ptr %l85, !tbaa !27
  store { i64, ptr } %t159, ptr %l86, !tbaa !27
  %t160 = load { i64, ptr }, ptr %l86, !tbaa !27
  %t161 = extractvalue { i64, ptr } %t160, 0
  store i64 %t161, ptr %l87, !tbaa !24
  %t162 = load i64, ptr %l87, !tbaa !24
  %t163 = mul i64 %t162, 1
  %t164 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t163)
  %t165 = insertvalue { i64, ptr } undef, i64 %t162, 0
  %t166 = insertvalue { i64, ptr } %t165, ptr %t164, 1
  store { i64, ptr } %t166, ptr %l88, !tbaa !27
  %t167 = getelementptr { i64, ptr }, ptr %l88, i32 0, i32 1
  %t168 = load ptr, ptr %t167, !tbaa !27
  %t169 = getelementptr { i64, ptr }, ptr %l86, i32 0, i32 1
  %t170 = load ptr, ptr %t169, !tbaa !27
  %t171 = load i64, ptr %l87, !tbaa !24
  %t172 = mul i64 %t171, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t168, ptr %t170, i64 %t172, i1 false)
  %t173 = load { i64, ptr }, ptr %l88, !tbaa !27
  store { i64, ptr } %t173, ptr %l86, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  %t174 = load { i64, ptr }, ptr %l86, !tbaa !27
  store { i64, ptr } %t174, ptr %rv
  br label %ret
bb92:
  br label %bb93
bb93:
  %t175 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t177 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t175, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d24, i32 0, i32 1) })
  store i1 %t177, ptr %l90
  br label %bb94
bb94:
  %t178 = load i1, ptr %l90, !tbaa !21
  br i1 %t178, label %bb95, label %bb96
bb95:
  %t179 = load ptr, ptr %l0, !tbaa !29
  %t180 = load i32, ptr %l1, !tbaa !23
  %t183 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisEnum(ptr %v0, ptr %t179, i32 %t180)
  store i1 %t183, ptr %l94
  br label %bb97
bb96:
  store i1 false, ptr %l91, !tbaa !21
  br label %bb98
bb97:
  %t184 = load i1, ptr %l94, !tbaa !21
  store i1 %t184, ptr %l91, !tbaa !21
  br label %bb98
bb98:
  %t185 = load i1, ptr %l91, !tbaa !21
  br i1 %t185, label %bb99, label %bb100
bb99:
  %t186 = load ptr, ptr %l0, !tbaa !29
  %t187 = load i32, ptr %l1, !tbaa !23
  %t190 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2erawsOf(ptr %v0, ptr %v0, ptr %t186, i32 %t187)
  store ptr %t190, ptr %l98
  br label %bb101
bb100:
  store i1 false, ptr %l95, !tbaa !21
  br label %bb102
bb101:
  %t191 = load ptr, ptr %l98, !tbaa !29
  %t193 = getelementptr %"compiler/check:rawTable", ptr %t191, i32 0, i32 0
  %t194 = load i32, ptr %t193, !tbaa !23
  %t195 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t198 = icmp ne i32 %t194, %t195
  store i1 %t198, ptr %l95, !tbaa !21
  br label %bb102
bb102:
  %t200 = load i1, ptr %l95, !tbaa !21
  br i1 %t200, label %bb103, label %bb104
bb103:
  store { i64, ptr } { i64 23, ptr getelementptr inbounds (<{ i64, [23 x i8] }>, ptr @.d25, i32 0, i32 1) }, ptr %l103, !tbaa !27
  %t201 = load { i64, ptr }, ptr %l103, !tbaa !27
  store { i64, ptr } %t201, ptr %l104, !tbaa !27
  %t202 = load { i64, ptr }, ptr %l104, !tbaa !27
  %t203 = extractvalue { i64, ptr } %t202, 0
  store i64 %t203, ptr %l105, !tbaa !24
  %t204 = load i64, ptr %l105, !tbaa !24
  %t205 = mul i64 %t204, 1
  %t206 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t205)
  %t207 = insertvalue { i64, ptr } undef, i64 %t204, 0
  %t208 = insertvalue { i64, ptr } %t207, ptr %t206, 1
  store { i64, ptr } %t208, ptr %l106, !tbaa !27
  %t209 = getelementptr { i64, ptr }, ptr %l106, i32 0, i32 1
  %t210 = load ptr, ptr %t209, !tbaa !27
  %t211 = getelementptr { i64, ptr }, ptr %l104, i32 0, i32 1
  %t212 = load ptr, ptr %t211, !tbaa !27
  %t213 = load i64, ptr %l105, !tbaa !24
  %t214 = mul i64 %t213, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t210, ptr %t212, i64 %t214, i1 false)
  %t215 = load { i64, ptr }, ptr %l106, !tbaa !27
  store { i64, ptr } %t215, ptr %l104, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  %t216 = load { i64, ptr }, ptr %l104, !tbaa !27
  store { i64, ptr } %t216, ptr %rv
  br label %ret
bb104:
  br label %bb105
bb105:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d26, i32 0, i32 1) }, ptr %l107, !tbaa !27
  %t217 = load { i64, ptr }, ptr %l107, !tbaa !27
  store { i64, ptr } %t217, ptr %l108, !tbaa !27
  %t218 = load { i64, ptr }, ptr %l108, !tbaa !27
  %t219 = extractvalue { i64, ptr } %t218, 0
  store i64 %t219, ptr %l109, !tbaa !24
  %t220 = load i64, ptr %l109, !tbaa !24
  %t221 = mul i64 %t220, 1
  %t222 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t221)
  %t223 = insertvalue { i64, ptr } undef, i64 %t220, 0
  %t224 = insertvalue { i64, ptr } %t223, ptr %t222, 1
  store { i64, ptr } %t224, ptr %l110, !tbaa !27
  %t225 = getelementptr { i64, ptr }, ptr %l110, i32 0, i32 1
  %t226 = load ptr, ptr %t225, !tbaa !27
  %t227 = getelementptr { i64, ptr }, ptr %l108, i32 0, i32 1
  %t228 = load ptr, ptr %t227, !tbaa !27
  %t229 = load i64, ptr %l109, !tbaa !24
  %t230 = mul i64 %t229, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t226, ptr %t228, i64 %t230, i1 false)
  %t231 = load { i64, ptr }, ptr %l110, !tbaa !27
  store { i64, ptr } %t231, ptr %l108, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  %t232 = load { i64, ptr }, ptr %l108, !tbaa !27
  store { i64, ptr } %t232, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecVoidRef(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l4 = alloca i1
  %s0 = alloca %olang.scope
  %rv = alloca i1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t5 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2epreludeForeign(ptr %v0, ptr %s0, ptr %a0, i32 %a1, { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d27, i32 0, i32 1) })
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

define dso_local ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecaseFields(ptr %v0, ptr %v1, ptr %v2, ptr %a0, i32 %a1, i64 %a2, ptr %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca i64
  %l3 = alloca ptr
  %l4 = alloca { i64, ptr }
  %lp5 = alloca ptr
  %l6 = alloca ptr
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca i64
  %l12 = alloca i64
  %l15 = alloca ptr
  %l18 = alloca ptr
  %l23 = alloca i32
  %l24 = alloca i32
  %l25 = alloca { i64, ptr }
  %l27 = alloca i64
  %l32 = alloca ptr
  %l37 = alloca i32
  %l38 = alloca ptr
  %l40 = alloca ptr
  %l44 = alloca i1
  %l47 = alloca { i64, ptr }
  %l48 = alloca ptr
  %l50 = alloca %"compiler/source:Span"
  %l51 = alloca { i64, ptr }
  %l55 = alloca { i64, ptr }
  %l57 = alloca { i64, ptr }
  %l59 = alloca { i64, ptr }
  %l61 = alloca %"compiler/check:fieldSet"
  %l72 = alloca i64
  %l75 = alloca i64
  %l99 = alloca { i64, ptr }
  %l105 = alloca { i64, ptr }
  %l106 = alloca ptr
  %l108 = alloca %"compiler/source:Span"
  %l109 = alloca { i64, ptr }
  %l110 = alloca %"compiler/check:fieldSet"
  %rv = alloca ptr
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  store i64 %a2, ptr %l2
  store ptr %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/check:Checker", ptr %t1, i32 0, i32 1
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t6 = getelementptr %"compiler/generic:Program", ptr %t4, i32 0, i32 2
  store ptr %t6, ptr %l15, !tbaa !29
  %t7 = load ptr, ptr %l0, !tbaa !29
  %t9 = getelementptr %"compiler/check:Checker", ptr %t7, i32 0, i32 1
  %t10 = load ptr, ptr %t9, !tbaa !29
  %t12 = getelementptr %"compiler/generic:Program", ptr %t10, i32 0, i32 2
  store ptr %t12, ptr %l18, !tbaa !29
  %t13 = load ptr, ptr %l0, !tbaa !29
  %t15 = getelementptr %"compiler/check:Checker", ptr %t13, i32 0, i32 1
  %t16 = load ptr, ptr %t15, !tbaa !29
  %t17 = load i32, ptr %l1, !tbaa !23
  %t18 = load i64, ptr %l2, !tbaa !24
  %t22 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eCaseSig(ptr %v0, ptr %t16, i32 %t17, i64 %t18)
  store i32 %t22, ptr %l23
  br label %bb1
bb1:
  %t23 = load ptr, ptr %l18, !tbaa !29
  %t24 = load i32, ptr %l23, !tbaa !23
  %t25 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParams(ptr %v0, ptr %t23, i32 %t24)
  store i32 %t25, ptr %l24
  br label %bb2
bb2:
  %t26 = load ptr, ptr %l15, !tbaa !29
  %t27 = load i32, ptr %l24, !tbaa !23
  %t28 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t26, i32 %t27)
  store { i64, ptr } %t28, ptr %l25
  br label %bb3
bb3:
  %t29 = load { i64, ptr }, ptr %l25, !tbaa !27
  store { i64, ptr } %t29, ptr %l4, !tbaa !27
  %t30 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t32 = extractvalue { i64, ptr } %t30, 0
  store i64 %t32, ptr %l27, !tbaa !24
  %t33 = load i64, ptr %l27, !tbaa !24
  %t34 = icmp sge i64 %t33, 0
  br i1 %t34, label %bb4, label %bb5
bb4:
  %t36 = load i64, ptr %l27, !tbaa !24
  %t37 = icmp sle i64 %t36, 2305843009213693951
  br i1 %t37, label %bb6, label %bb7
bb5:
  call void @__olang_check_failed(ptr @olang_loc_701b0be85f390813_508d071905c6403f)
  unreachable
bb6:
  %t39 = load i64, ptr %l27, !tbaa !24
  %t40 = mul i64 %t39, 4
  %t41 = call ptr @__olang_scope_alloc_zeroed(ptr %v2, i64 %t40)
  %t42 = insertvalue { i64, ptr } undef, i64 %t39, 0
  %t43 = insertvalue { i64, ptr } %t42, ptr %t41, 1
  %t44 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 16, i64 8)
  store ptr %t44, ptr %lp5
  %t46 = load ptr, ptr %lp5
  store { i64, ptr } %t43, ptr %t46, !tbaa !27
  %t47 = load ptr, ptr %l0, !tbaa !29
  %t49 = getelementptr %"compiler/check:Checker", ptr %t47, i32 0, i32 1
  %t50 = load ptr, ptr %t49, !tbaa !29
  store ptr %t50, ptr %l32, !tbaa !29
  %t51 = load ptr, ptr %l0, !tbaa !29
  %t53 = getelementptr %"compiler/check:Checker", ptr %t51, i32 0, i32 1
  %t54 = load ptr, ptr %t53, !tbaa !29
  %t56 = getelementptr %"compiler/generic:Program", ptr %t54, i32 0, i32 2
  %t57 = load i32, ptr %l1, !tbaa !23
  %t60 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %t56, i32 %t57)
  store i32 %t60, ptr %l37
  br label %bb8
bb7:
  call void @__olang_check_failed(ptr @olang_loc_701b0be85f390813_508d071905c6403f)
  unreachable
bb8:
  %t61 = load ptr, ptr %l32, !tbaa !29
  %t62 = load i32, ptr %l37, !tbaa !23
  %t63 = call ptr @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eTypeDecl(ptr %v0, ptr %v0, ptr %t61, i32 %t62)
  store ptr %t63, ptr %l38
  br label %bb9
bb9:
  %t64 = load i64, ptr %l2, !tbaa !24
  %t65 = load ptr, ptr %l38, !tbaa !29
  %t67 = call ptr @compiler_2fcheck_2ecaseDecl(ptr %v0, ptr %v0, ptr %t65, i64 %t64)
  store ptr %t67, ptr %l40
  br label %bb10
bb10:
  %t68 = load ptr, ptr %l40, !tbaa !29
  store ptr %t68, ptr %l6, !tbaa !29
  %t69 = load ptr, ptr %l6, !tbaa !29
  %t71 = icmp eq ptr %t69, null
  %t73 = xor i1 %t71, true
  br i1 %t73, label %bb11, label %bb12
bb11:
  %t75 = load ptr, ptr %l6, !tbaa !29
  %t77 = getelementptr %"compiler/ast:CaseDecl", ptr %t75, i32 0, i32 3
  %t78 = load i1, ptr %t77, !tbaa !21
  store i1 %t78, ptr %l44, !tbaa !21
  br label %bb13
bb12:
  store i1 false, ptr %l44, !tbaa !21
  br label %bb13
bb13:
  %t80 = load i1, ptr %l44, !tbaa !21
  br i1 %t80, label %bb14, label %bb15
bb14:
  %t81 = load ptr, ptr %lp5
  %t82 = load { i64, ptr }, ptr %t81, !tbaa !27
  store { i64, ptr } %t82, ptr %l47, !tbaa !27
  %t83 = load ptr, ptr %l0, !tbaa !29
  store ptr %t83, ptr %l48, !tbaa !29
  %t84 = load ptr, ptr %l3, !tbaa !29
  %t86 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v1, ptr %t84)
  store %"compiler/source:Span" %t86, ptr %l50
  br label %bb16
bb15:
  br label %bb23
bb16:
  %t87 = load ptr, ptr %l48, !tbaa !29
  %t88 = load %"compiler/source:Span", ptr %l50
  %t89 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esrc(ptr %v0, ptr %v0, ptr %t87, %"compiler/source:Span" %t88)
  store { i64, ptr } %t89, ptr %l51
  br label %bb17
bb17:
  %t90 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t92 = extractvalue { i64, ptr } %t90, 0
  %t94 = icmp sgt i64 %t92, 0
  br i1 %t94, label %bb18, label %bb19
bb18:
  %t96 = load ptr, ptr %l0, !tbaa !29
  %t97 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t97, ptr %l57, !tbaa !27
  %t98 = getelementptr { i64, ptr }, ptr %l57, i32 0, i32 1
  %t99 = load ptr, ptr %t98, !tbaa !27
  %t100 = getelementptr i32, ptr %t99, i64 0
  %t101 = load i32, ptr %t100, !tbaa !33
  %t104 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %v2, ptr %t96, i32 %t101)
  store { i64, ptr } %t104, ptr %l59
  br label %bb20
bb19:
  store { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d28, i32 0, i32 1) }, ptr %l55, !tbaa !27
  br label %bb21
bb20:
  %t105 = load { i64, ptr }, ptr %l59, !tbaa !27
  %t106 = extractvalue { i64, ptr } %t105, 0
  %t107 = extractvalue { i64, ptr } %t105, 1
  %t108 = mul i64 %t106, 1
  %t109 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t108)
  call void @llvm.memcpy.p0.p0.i64(ptr %t109, ptr %t107, i64 %t108, i1 false)
  %t110 = insertvalue { i64, ptr } undef, i64 %t106, 0
  %t111 = insertvalue { i64, ptr } %t110, ptr %t109, 1
  store { i64, ptr } %t111, ptr %l55, !tbaa !27
  br label %bb21
bb21:
  %t113 = load { i64, ptr }, ptr %l47, !tbaa !27
  %t114 = load { i64, ptr }, ptr %l51, !tbaa !27
  %t115 = load { i64, ptr }, ptr %l55, !tbaa !27
  %t116 = call %"compiler/check:fieldSet" @compiler_2fcheck_3afieldSet_2ector(ptr %v2, ptr %v0, ptr %v2, ptr %v2, { i64, ptr } %t113, i32 -1, { i64, ptr } %t114, { i64, ptr } %t115)
  store %"compiler/check:fieldSet" %t116, ptr %l61
  br label %bb22
bb22:
  %t117 = load %"compiler/check:fieldSet", ptr %l61
  %t118 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 56, i64 8)
  store %"compiler/check:fieldSet" %t117, ptr %t118
  store ptr %t118, ptr %rv
  br label %ret
bb23:
  %t120 = load ptr, ptr %l6, !tbaa !29
  %t122 = icmp eq ptr %t120, null
  %t124 = xor i1 %t122, true
  br i1 %t124, label %bb24, label %bb25
bb24:
  store i64 0, ptr %l7, !tbaa !24
  %t126 = load ptr, ptr %l6, !tbaa !29
  %t128 = getelementptr %"compiler/ast:CaseDecl", ptr %t126, i32 0, i32 2
  %t129 = load { i64, ptr }, ptr %t128, !tbaa !27
  %t131 = extractvalue { i64, ptr } %t129, 0
  store i64 %t131, ptr %l8, !tbaa !24
  store i64 1, ptr %l9, !tbaa !24
  %t133 = load i64, ptr %l8, !tbaa !24
  %t134 = load i64, ptr %l7, !tbaa !24
  %t137 = icmp sgt i64 %t133, %t134
  br i1 %t137, label %bb26, label %bb27
bb25:
  br label %bb41
bb26:
  %t139 = load i64, ptr %l9, !tbaa !24
  %t141 = icmp sgt i64 %t139, 0
  br i1 %t141, label %bb28, label %bb29
bb27:
  store i64 0, ptr %l72, !tbaa !24
  br label %bb31
bb28:
  %t143 = load i64, ptr %l8, !tbaa !24
  %t144 = load i64, ptr %l7, !tbaa !24
  %t147 = sub i64 %t143, %t144
  %t148 = load i64, ptr %l9, !tbaa !24
  %t151 = add i64 %t147, %t148
  %t153 = sub i64 %t151, 1
  %t154 = load i64, ptr %l9, !tbaa !24
  %t157 = sdiv i64 %t153, %t154
  store i64 %t157, ptr %l75, !tbaa !24
  br label %bb30
bb29:
  store i64 0, ptr %l75, !tbaa !24
  br label %bb30
bb30:
  %t159 = load i64, ptr %l75, !tbaa !24
  store i64 %t159, ptr %l72, !tbaa !24
  br label %bb31
bb31:
  %t160 = load i64, ptr %l72, !tbaa !24
  store i64 %t160, ptr %l10, !tbaa !24
  store i64 0, ptr %l11, !tbaa !24
  br label %bb32
bb32:
  %t161 = load i64, ptr %l11, !tbaa !24
  %t162 = load i64, ptr %l10, !tbaa !24
  %t165 = icmp slt i64 %t161, %t162
  %t167 = xor i1 %t165, true
  br i1 %t167, label %bb33, label %bb34
bb33:
  br label %bb40
bb34:
  br label %bb35
bb35:
  %t169 = load i64, ptr %l7, !tbaa !24
  %t170 = load i64, ptr %l11, !tbaa !24
  %t171 = load i64, ptr %l9, !tbaa !24
  %t174 = mul i64 %t170, %t171
  %t177 = add i64 %t169, %t174
  store i64 %t177, ptr %l12, !tbaa !24
  %t179 = load i64, ptr %l12, !tbaa !24
  %t180 = load ptr, ptr %lp5
  %t181 = load { i64, ptr }, ptr %t180, !tbaa !27
  %t183 = extractvalue { i64, ptr } %t181, 0
  %t186 = icmp slt i64 %t179, %t183
  br i1 %t186, label %bb36, label %bb37
bb36:
  %t188 = load i64, ptr %l12, !tbaa !24
  %t189 = load ptr, ptr %l6, !tbaa !29
  %t191 = getelementptr %"compiler/ast:CaseDecl", ptr %t189, i32 0, i32 2
  %t192 = load { i64, ptr }, ptr %t191, !tbaa !27
  store { i64, ptr } %t192, ptr %l99, !tbaa !27
  %t193 = load i64, ptr %l12, !tbaa !24
  %t195 = getelementptr { i64, ptr }, ptr %l99, i32 0, i32 1
  %t196 = load ptr, ptr %t195, !tbaa !27
  %t197 = getelementptr ptr, ptr %t196, i64 %t193
  %t198 = load ptr, ptr %t197, !tbaa !39
  %t200 = getelementptr %"compiler/ast:Param", ptr %t198, i32 0, i32 1
  %t201 = load i32, ptr %t200, !tbaa !23
  %t203 = load ptr, ptr %lp5
  %t205 = getelementptr { i64, ptr }, ptr %t203, i32 0, i32 1
  %t206 = load ptr, ptr %t205, !tbaa !27
  %t207 = getelementptr i32, ptr %t206, i64 %t188
  store i32 %t201, ptr %t207, !tbaa !33
  br label %bb38
bb37:
  br label %bb38
bb38:
  br label %bb39
bb39:
  %t208 = load i64, ptr %l11, !tbaa !24
  %t210 = add i64 %t208, 1
  store i64 %t210, ptr %l11, !tbaa !24
  br label %bb32
bb40:
  br label %bb41
bb41:
  %t212 = load ptr, ptr %lp5
  %t213 = load { i64, ptr }, ptr %t212, !tbaa !27
  store { i64, ptr } %t213, ptr %l105, !tbaa !27
  %t214 = load ptr, ptr %l0, !tbaa !29
  store ptr %t214, ptr %l106, !tbaa !29
  %t215 = load ptr, ptr %l3, !tbaa !29
  %t217 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v1, ptr %t215)
  store %"compiler/source:Span" %t217, ptr %l108
  br label %bb42
bb42:
  %t218 = load ptr, ptr %l106, !tbaa !29
  %t219 = load %"compiler/source:Span", ptr %l108
  %t220 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esrc(ptr %v0, ptr %v0, ptr %t218, %"compiler/source:Span" %t219)
  store { i64, ptr } %t220, ptr %l109
  br label %bb43
bb43:
  %t221 = load { i64, ptr }, ptr %l105, !tbaa !27
  %t222 = load { i64, ptr }, ptr %l109, !tbaa !27
  %t223 = call %"compiler/check:fieldSet" @compiler_2fcheck_3afieldSet_2ector(ptr %v2, ptr %v0, ptr %v2, ptr %v2, { i64, ptr } %t221, i32 -1, { i64, ptr } %t222, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d29, i32 0, i32 1) })
  store %"compiler/check:fieldSet" %t223, ptr %l110
  br label %bb44
bb44:
  %t224 = load %"compiler/check:fieldSet", ptr %l110
  %t225 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 56, i64 8)
  store %"compiler/check:fieldSet" %t224, ptr %t225
  store ptr %t225, ptr %rv
  br label %ret
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

define dso_local ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2econd(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %a0, %"compiler/source:Span" %a1, ptr %a2, ptr %a3, ptr %a4, i32 %a5) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/source:Span"
  %l2 = alloca ptr
  %l3 = alloca ptr
  %l4 = alloca ptr
  %l5 = alloca i32
  %l6 = alloca i64
  %l7 = alloca ptr
  %l8 = alloca ptr
  %l9 = alloca ptr
  %l10 = alloca i32
  %l11 = alloca i32
  %l12 = alloca i32
  %l15 = alloca i64
  %l22 = alloca ptr
  %l29 = alloca ptr
  %l32 = alloca ptr
  %l36 = alloca i1
  %l39 = alloca i1
  %l40 = alloca i1
  %l43 = alloca i1
  %l49 = alloca ptr
  %l51 = alloca ptr
  %l52 = alloca ptr
  %l53 = alloca ptr
  %l54 = alloca ptr
  %l57 = alloca i32
  %l58 = alloca i1
  %l59 = alloca i32
  %l62 = alloca i32
  %l64 = alloca ptr
  %l70 = alloca ptr
  %l72 = alloca ptr
  %l73 = alloca ptr
  %l74 = alloca ptr
  %l78 = alloca i1
  %l81 = alloca i1
  %l82 = alloca i1
  %l85 = alloca i1
  %l87 = alloca i1
  %l88 = alloca ptr
  %l91 = alloca i32
  %l92 = alloca i1
  %l93 = alloca i32
  %l96 = alloca i32
  %l98 = alloca ptr
  %l101 = alloca i32
  %l103 = alloca i32
  %l106 = alloca i1
  %l107 = alloca i1
  %l110 = alloca i1
  %l111 = alloca i1
  %l117 = alloca i1
  %l119 = alloca i1
  %l122 = alloca i1
  %l124 = alloca i1
  %l127 = alloca i1
  %l129 = alloca ptr
  %l130 = alloca ptr
  %l132 = alloca %"compiler/source:Span"
  %l134 = alloca %"compiler/source:Span"
  %l135 = alloca %"compiler/source:Span"
  %l138 = alloca { i64, ptr }
  %l139 = alloca { i64, ptr }
  %l142 = alloca { i64, ptr }
  %l144 = alloca %"compiler/diagmsg:Msg"
  %l145 = alloca i64
  %l148 = alloca ptr
  %l157 = alloca i1
  %l169 = alloca i1
  %l178 = alloca i1
  %l182 = alloca i1
  %l183 = alloca i1
  %l186 = alloca i1
  %l187 = alloca i1
  %l192 = alloca i32
  %l198 = alloca i32
  %l202 = alloca i1
  %l205 = alloca i1
  %l206 = alloca i1
  %l211 = alloca i32
  %l218 = alloca i32
  %l222 = alloca i1
  %l225 = alloca i1
  %l226 = alloca i1
  %l231 = alloca i32
  %l238 = alloca i32
  %l243 = alloca i32
  %l246 = alloca i1
  %l249 = alloca ptr
  %l254 = alloca i32
  %l259 = alloca i32
  %l260 = alloca i1
  %l265 = alloca i32
  %l268 = alloca i1
  %l269 = alloca i1
  %l272 = alloca i1
  %l274 = alloca i1
  %l275 = alloca ptr
  %l276 = alloca i32
  %l281 = alloca i32
  %l282 = alloca i1
  %l286 = alloca i1
  %l287 = alloca i1
  %l290 = alloca i1
  %l292 = alloca i1
  %l293 = alloca ptr
  %l294 = alloca i32
  %l299 = alloca i32
  %l300 = alloca i1
  %l304 = alloca i1
  %l305 = alloca i1
  %l308 = alloca i1
  %l309 = alloca i1
  %l312 = alloca ptr
  %l315 = alloca i32
  %l318 = alloca i32
  %l319 = alloca i1
  %l322 = alloca ptr
  %l325 = alloca i32
  %l330 = alloca i64
  %l335 = alloca i64
  %l336 = alloca i64
  %l337 = alloca i32
  %l340 = alloca i1
  %l341 = alloca i1
  %l344 = alloca i1
  %l345 = alloca i1
  %l348 = alloca ptr
  %l349 = alloca ptr
  %l352 = alloca i32
  %l353 = alloca i32
  %l354 = alloca ptr
  %l357 = alloca i32
  %l358 = alloca i32
  %l359 = alloca i1
  %l362 = alloca ptr
  %l363 = alloca ptr
  %l366 = alloca i32
  %l367 = alloca i32
  %l372 = alloca i64
  %l377 = alloca i64
  %l378 = alloca i64
  %l379 = alloca i32
  %l384 = alloca i32
  %l387 = alloca i1
  %l392 = alloca i32
  %l395 = alloca i1
  %l398 = alloca ptr
  %l403 = alloca i32
  %l408 = alloca i32
  %l409 = alloca i1
  %l412 = alloca ptr
  %l417 = alloca i32
  %l418 = alloca i32
  %l419 = alloca ptr
  %l420 = alloca %"compiler/source:Span"
  %l423 = alloca { i64, ptr }
  %l424 = alloca { i64, ptr }
  %l427 = alloca { i64, ptr }
  %l429 = alloca %"compiler/diagmsg:Msg"
  %l430 = alloca i64
  %l433 = alloca ptr
  %l434 = alloca %"compiler/source:Span"
  %l435 = alloca i32
  %l436 = alloca ptr
  %l437 = alloca ptr
  %l440 = alloca ptr
  %l441 = alloca i32
  %l443 = alloca %"compiler/source:Span"
  %l444 = alloca ptr
  %l445 = alloca ptr
  %l446 = alloca ptr
  %l449 = alloca ptr
  %l450 = alloca i32
  %l452 = alloca %"compiler/source:Span"
  %l453 = alloca ptr
  %l454 = alloca %"compiler/typed:Cond"
  %s5 = alloca %olang.scope
  %s32 = alloca %olang.scope
  %rv = alloca ptr
  %t891 = alloca { i64, [5 x i64] }, align 8
  store ptr %a0, ptr %l0
  store %"compiler/source:Span" %a1, ptr %l1
  store ptr %a2, ptr %l2
  store ptr %a3, ptr %l3
  store ptr %a4, ptr %l4
  store i32 %a5, ptr %l5
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load ptr, ptr %l3, !tbaa !29
  %t5 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2econstCond(ptr %v0, ptr %v2, ptr %t1, ptr %t2)
  store i64 %t5, ptr %l15
  br label %bb1
bb1:
  %t6 = load i64, ptr %l15, !tbaa !24
  store i64 %t6, ptr %l6, !tbaa !24
  %t7 = load i64, ptr %l6, !tbaa !24
  %t9 = icmp eq i64 %t7, 1
  br i1 %t9, label %bb2, label %bb3
bb2:
  %t11 = load ptr, ptr %l0, !tbaa !29
  %t12 = load ptr, ptr %l2, !tbaa !29
  %t14 = load i32, ptr %l5, !tbaa !23
  %t18 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eexpr(ptr %v0, ptr %v1, ptr %v4, ptr %t11, ptr %t12, i32 %t14)
  store ptr %t18, ptr %l22
  br label %bb4
bb3:
  br label %bb5
bb4:
  %t19 = load ptr, ptr %l22, !tbaa !29
  store ptr %t19, ptr %rv
  br label %ret
bb5:
  %t20 = load i64, ptr %l6, !tbaa !24
  %t22 = icmp eq i64 %t20, 0
  br i1 %t22, label %bb6, label %bb7
bb6:
  %t24 = load ptr, ptr %l0, !tbaa !29
  %t25 = load ptr, ptr %l4, !tbaa !29
  %t27 = load i32, ptr %l5, !tbaa !23
  %t31 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eexpr(ptr %v0, ptr %v3, ptr %v4, ptr %t24, ptr %t25, i32 %t27)
  store ptr %t31, ptr %l29
  br label %bb8
bb7:
  br label %bb9
bb8:
  %t32 = load ptr, ptr %l29, !tbaa !29
  store ptr %t32, ptr %rv
  br label %ret
bb9:
  %t33 = load ptr, ptr %l0, !tbaa !29
  %t34 = load ptr, ptr %l3, !tbaa !29
  %t37 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2econd1(ptr %v0, ptr %v2, ptr %v4, ptr %t33, ptr %t34)
  store ptr %t37, ptr %l32
  br label %bb10
bb10:
  %t38 = load ptr, ptr %l32, !tbaa !29
  store ptr %t38, ptr %l7, !tbaa !29
  store ptr null, ptr %l8, !tbaa !29
  store ptr null, ptr %l9, !tbaa !29
  %t39 = load i32, ptr %l5, !tbaa !23
  %t40 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t43 = icmp eq i32 %t39, %t40
  br i1 %t43, label %bb11, label %bb12
bb11:
  %t45 = load ptr, ptr %l0, !tbaa !29
  %t46 = load ptr, ptr %l2, !tbaa !29
  %t49 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elitLike(ptr %v0, ptr %v1, ptr %t45, ptr %t46)
  store i1 %t49, ptr %l39
  br label %bb13
bb12:
  store i1 false, ptr %l36, !tbaa !21
  br label %bb14
bb13:
  %t50 = load i1, ptr %l39, !tbaa !21
  store i1 %t50, ptr %l36, !tbaa !21
  br label %bb14
bb14:
  %t51 = load i1, ptr %l36, !tbaa !21
  br i1 %t51, label %bb15, label %bb16
bb15:
  %t52 = load ptr, ptr %l0, !tbaa !29
  %t53 = load ptr, ptr %l4, !tbaa !29
  %t56 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elitLike(ptr %v0, ptr %v3, ptr %t52, ptr %t53)
  store i1 %t56, ptr %l43
  br label %bb17
bb16:
  store i1 false, ptr %l40, !tbaa !21
  br label %bb18
bb17:
  %t57 = load i1, ptr %l43, !tbaa !21
  %t58 = xor i1 %t57, true
  store i1 %t58, ptr %l40, !tbaa !21
  br label %bb18
bb18:
  %t60 = load i1, ptr %l40, !tbaa !21
  br i1 %t60, label %bb19, label %bb20
bb19:
  %t61 = load ptr, ptr %l0, !tbaa !29
  %t62 = load ptr, ptr %l3, !tbaa !29
  %t63 = load ptr, ptr %l4, !tbaa !29
  %t64 = load i32, ptr %l5, !tbaa !23
  %t69 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efactsExpr(ptr %v0, ptr %v2, ptr %v3, ptr %v4, ptr %t61, ptr %t62, i1 false, ptr %t63, i32 %t64)
  store ptr %t69, ptr %l49
  br label %bb21
bb20:
  %t70 = load ptr, ptr %l0, !tbaa !29
  %t71 = load ptr, ptr %l3, !tbaa !29
  %t72 = load ptr, ptr %l2, !tbaa !29
  %t73 = load i32, ptr %l5, !tbaa !23
  %t78 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efactsExpr(ptr %v0, ptr %v2, ptr %v1, ptr %v4, ptr %t70, ptr %t71, i1 true, ptr %t72, i32 %t73)
  store ptr %t78, ptr %l70
  br label %bb29
bb21:
  %t79 = load ptr, ptr %l49, !tbaa !29
  store ptr %t79, ptr %l9, !tbaa !29
  %t81 = load ptr, ptr %l0, !tbaa !29
  store ptr %t81, ptr %l51, !tbaa !29
  %t82 = load ptr, ptr %l3, !tbaa !29
  store ptr %t82, ptr %l52, !tbaa !29
  %t83 = load ptr, ptr %l2, !tbaa !29
  store ptr %t83, ptr %l53, !tbaa !29
  %t84 = load ptr, ptr %l0, !tbaa !29
  store ptr %t84, ptr %l54, !tbaa !29
  %t85 = load ptr, ptr %l9, !tbaa !29
  %t88 = call i32 @compiler_2fcheck_2etypeOf(ptr %v4, ptr %t85)
  store i32 %t88, ptr %l57
  br label %bb22
bb22:
  %t89 = load ptr, ptr %l54, !tbaa !29
  %t90 = load i32, ptr %l57, !tbaa !23
  %t91 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisNumber(ptr %v0, ptr %t89, i32 %t90)
  store i1 %t91, ptr %l58
  br label %bb23
bb23:
  %t92 = load i1, ptr %l58, !tbaa !21
  br i1 %t92, label %bb24, label %bb25
bb24:
  %t93 = load ptr, ptr %l9, !tbaa !29
  %t96 = call i32 @compiler_2fcheck_2etypeOf(ptr %v4, ptr %t93)
  store i32 %t96, ptr %l62
  br label %bb26
bb25:
  %t97 = load i32, ptr %l5, !tbaa !23
  store i32 %t97, ptr %l59, !tbaa !23
  br label %bb27
bb26:
  %t99 = load i32, ptr %l62, !tbaa !23
  store i32 %t99, ptr %l59, !tbaa !23
  br label %bb27
bb27:
  %t100 = load ptr, ptr %l51, !tbaa !29
  %t101 = load ptr, ptr %l52, !tbaa !29
  %t102 = load ptr, ptr %l53, !tbaa !29
  %t103 = load i32, ptr %l59, !tbaa !23
  %t104 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efactsExpr(ptr %v0, ptr %v2, ptr %v1, ptr %v4, ptr %t100, ptr %t101, i1 true, ptr %t102, i32 %t103)
  store ptr %t104, ptr %l64
  br label %bb28
bb28:
  %t105 = load ptr, ptr %l64, !tbaa !29
  store ptr %t105, ptr %l8, !tbaa !29
  br label %bb48
bb29:
  %t107 = load ptr, ptr %l70, !tbaa !29
  store ptr %t107, ptr %l8, !tbaa !29
  %t109 = load ptr, ptr %l0, !tbaa !29
  store ptr %t109, ptr %l72, !tbaa !29
  %t110 = load ptr, ptr %l3, !tbaa !29
  store ptr %t110, ptr %l73, !tbaa !29
  %t111 = load ptr, ptr %l4, !tbaa !29
  store ptr %t111, ptr %l74, !tbaa !29
  %t112 = load i32, ptr %l5, !tbaa !23
  %t113 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t116 = icmp eq i32 %t112, %t113
  br i1 %t116, label %bb30, label %bb31
bb30:
  %t118 = load ptr, ptr %l0, !tbaa !29
  %t119 = load ptr, ptr %l4, !tbaa !29
  %t122 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elitLike(ptr %v0, ptr %v3, ptr %t118, ptr %t119)
  store i1 %t122, ptr %l81
  br label %bb32
bb31:
  store i1 false, ptr %l78, !tbaa !21
  br label %bb33
bb32:
  %t123 = load i1, ptr %l81, !tbaa !21
  store i1 %t123, ptr %l78, !tbaa !21
  br label %bb33
bb33:
  %t124 = load i1, ptr %l78, !tbaa !21
  br i1 %t124, label %bb34, label %bb35
bb34:
  %t125 = load ptr, ptr %l0, !tbaa !29
  %t126 = load ptr, ptr %l2, !tbaa !29
  %t129 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elitLike(ptr %v0, ptr %v1, ptr %t125, ptr %t126)
  store i1 %t129, ptr %l85
  br label %bb36
bb35:
  store i1 false, ptr %l82, !tbaa !21
  br label %bb37
bb36:
  %t130 = load i1, ptr %l85, !tbaa !21
  %t131 = xor i1 %t130, true
  store i1 %t131, ptr %l82, !tbaa !21
  br label %bb37
bb37:
  %t133 = load i1, ptr %l82, !tbaa !21
  br i1 %t133, label %bb38, label %bb39
bb38:
  %t134 = load ptr, ptr %l0, !tbaa !29
  store ptr %t134, ptr %l88, !tbaa !29
  %t135 = load ptr, ptr %l8, !tbaa !29
  %t138 = call i32 @compiler_2fcheck_2etypeOf(ptr %v4, ptr %t135)
  store i32 %t138, ptr %l91
  br label %bb40
bb39:
  store i1 false, ptr %l87, !tbaa !21
  br label %bb42
bb40:
  %t139 = load ptr, ptr %l88, !tbaa !29
  %t140 = load i32, ptr %l91, !tbaa !23
  %t141 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisNumber(ptr %v0, ptr %t139, i32 %t140)
  store i1 %t141, ptr %l92
  br label %bb41
bb41:
  %t142 = load i1, ptr %l92, !tbaa !21
  store i1 %t142, ptr %l87, !tbaa !21
  br label %bb42
bb42:
  %t143 = load i1, ptr %l87, !tbaa !21
  br i1 %t143, label %bb43, label %bb44
bb43:
  %t144 = load ptr, ptr %l8, !tbaa !29
  %t147 = call i32 @compiler_2fcheck_2etypeOf(ptr %v4, ptr %t144)
  store i32 %t147, ptr %l96
  br label %bb45
bb44:
  %t148 = load i32, ptr %l5, !tbaa !23
  store i32 %t148, ptr %l93, !tbaa !23
  br label %bb46
bb45:
  %t150 = load i32, ptr %l96, !tbaa !23
  store i32 %t150, ptr %l93, !tbaa !23
  br label %bb46
bb46:
  %t151 = load ptr, ptr %l72, !tbaa !29
  %t152 = load ptr, ptr %l73, !tbaa !29
  %t153 = load ptr, ptr %l74, !tbaa !29
  %t154 = load i32, ptr %l93, !tbaa !23
  %t155 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efactsExpr(ptr %v0, ptr %v2, ptr %v3, ptr %v4, ptr %t151, ptr %t152, i1 false, ptr %t153, i32 %t154)
  store ptr %t155, ptr %l98
  br label %bb47
bb47:
  %t156 = load ptr, ptr %l98, !tbaa !29
  store ptr %t156, ptr %l9, !tbaa !29
  br label %bb48
bb48:
  %t158 = load ptr, ptr %l8, !tbaa !29
  %t160 = call i32 @compiler_2fcheck_2etypeOf(ptr %v4, ptr %t158)
  store i32 %t160, ptr %l101
  br label %bb49
bb49:
  %t161 = load i32, ptr %l101, !tbaa !23
  store i32 %t161, ptr %l10, !tbaa !23
  %t162 = load ptr, ptr %l9, !tbaa !29
  %t164 = call i32 @compiler_2fcheck_2etypeOf(ptr %v4, ptr %t162)
  store i32 %t164, ptr %l103
  br label %bb50
bb50:
  %t165 = load i32, ptr %l103, !tbaa !23
  store i32 %t165, ptr %l11, !tbaa !23
  %t166 = load ptr, ptr %l0, !tbaa !29
  %t167 = load i32, ptr %l10, !tbaa !23
  %t170 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisNumber(ptr %v0, ptr %t166, i32 %t167)
  store i1 %t170, ptr %l106
  br label %bb51
bb51:
  %t171 = load i1, ptr %l106, !tbaa !21
  br i1 %t171, label %bb52, label %bb53
bb52:
  %t172 = load ptr, ptr %l0, !tbaa !29
  %t173 = load i32, ptr %l11, !tbaa !23
  %t176 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisNumber(ptr %v0, ptr %t172, i32 %t173)
  store i1 %t176, ptr %l110
  br label %bb54
bb53:
  store i1 false, ptr %l107, !tbaa !21
  br label %bb55
bb54:
  %t177 = load i1, ptr %l110, !tbaa !21
  store i1 %t177, ptr %l107, !tbaa !21
  br label %bb55
bb55:
  %t178 = load i1, ptr %l107, !tbaa !21
  br i1 %t178, label %bb56, label %bb57
bb56:
  %t179 = load ptr, ptr %l0, !tbaa !29
  %t181 = getelementptr %"compiler/check:Checker", ptr %t179, i32 0, i32 1
  %t182 = load ptr, ptr %t181, !tbaa !29
  %t184 = getelementptr %"compiler/generic:Program", ptr %t182, i32 0, i32 2
  %t185 = load i32, ptr %l10, !tbaa !23
  %t186 = load i32, ptr %l11, !tbaa !23
  %t190 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eSame(ptr %v0, ptr %t184, i32 %t185, i32 %t186)
  store i1 %t190, ptr %l117
  br label %bb58
bb57:
  store i1 false, ptr %l111, !tbaa !21
  br label %bb59
bb58:
  %t191 = load i1, ptr %l117, !tbaa !21
  %t192 = xor i1 %t191, true
  store i1 %t192, ptr %l111, !tbaa !21
  br label %bb59
bb59:
  %t194 = load i1, ptr %l111, !tbaa !21
  br i1 %t194, label %bb60, label %bb61
bb60:
  %t195 = load ptr, ptr %l0, !tbaa !29
  %t196 = load ptr, ptr %l2, !tbaa !29
  %t199 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elitLike(ptr %v0, ptr %v1, ptr %t195, ptr %t196)
  store i1 %t199, ptr %l122
  br label %bb62
bb61:
  store i1 false, ptr %l119, !tbaa !21
  br label %bb63
bb62:
  %t200 = load i1, ptr %l122, !tbaa !21
  %t201 = xor i1 %t200, true
  store i1 %t201, ptr %l119, !tbaa !21
  br label %bb63
bb63:
  %t203 = load i1, ptr %l119, !tbaa !21
  br i1 %t203, label %bb64, label %bb65
bb64:
  %t204 = load ptr, ptr %l0, !tbaa !29
  %t205 = load ptr, ptr %l4, !tbaa !29
  %t208 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elitLike(ptr %v0, ptr %v3, ptr %t204, ptr %t205)
  store i1 %t208, ptr %l127
  br label %bb66
bb65:
  store i1 false, ptr %l124, !tbaa !21
  br label %bb67
bb66:
  %t209 = load i1, ptr %l127, !tbaa !21
  %t210 = xor i1 %t209, true
  store i1 %t210, ptr %l124, !tbaa !21
  br label %bb67
bb67:
  %t212 = load i1, ptr %l124, !tbaa !21
  br i1 %t212, label %bb68, label %bb69
bb68:
  store %olang.scope zeroinitializer, ptr %s5
  %t213 = load ptr, ptr %l0, !tbaa !29
  store ptr %t213, ptr %l129, !tbaa !29
  %t214 = load ptr, ptr %l0, !tbaa !29
  store ptr %t214, ptr %l130, !tbaa !29
  %t215 = load ptr, ptr %l2, !tbaa !29
  %t217 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v1, ptr %t215)
  store %"compiler/source:Span" %t217, ptr %l132
  br label %bb70
bb69:
  br label %bb78
bb70:
  %t218 = load ptr, ptr %l3, !tbaa !29
  %t220 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v2, ptr %t218)
  store %"compiler/source:Span" %t220, ptr %l134
  br label %bb71
bb71:
  %t221 = load ptr, ptr %l130, !tbaa !29
  %t222 = load %"compiler/source:Span", ptr %l132
  %t223 = load %"compiler/source:Span", ptr %l134
  %t224 = call %"compiler/source:Span" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ebetween(ptr %v0, ptr %t221, %"compiler/source:Span" %t222, %"compiler/source:Span" %t223, i64 2)
  store %"compiler/source:Span" %t224, ptr %l135
  br label %bb72
bb72:
  %t225 = load ptr, ptr %l0, !tbaa !29
  %t226 = load i32, ptr %l10, !tbaa !23
  %t229 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %s5, ptr %t225, i32 %t226)
  store { i64, ptr } %t229, ptr %l138
  br label %bb73
bb73:
  %t230 = load { i64, ptr }, ptr %l138, !tbaa !27
  %t231 = extractvalue { i64, ptr } %t230, 0
  %t232 = extractvalue { i64, ptr } %t230, 1
  %t233 = mul i64 %t231, 1
  %t234 = call ptr @__olang_scope_alloc(ptr %s5, i64 %t233)
  call void @llvm.memcpy.p0.p0.i64(ptr %t234, ptr %t232, i64 %t233, i1 false)
  %t235 = insertvalue { i64, ptr } undef, i64 %t231, 0
  %t236 = insertvalue { i64, ptr } %t235, ptr %t234, 1
  store { i64, ptr } %t236, ptr %l139, !tbaa !27
  %t237 = load ptr, ptr %l0, !tbaa !29
  %t238 = load i32, ptr %l11, !tbaa !23
  %t241 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %s5, ptr %t237, i32 %t238)
  store { i64, ptr } %t241, ptr %l142
  br label %bb74
bb74:
  %t242 = load { i64, ptr }, ptr %l142, !tbaa !27
  %t243 = extractvalue { i64, ptr } %t242, 0
  %t244 = extractvalue { i64, ptr } %t242, 1
  %t245 = mul i64 %t243, 1
  %t246 = call ptr @__olang_scope_alloc(ptr %s5, i64 %t245)
  call void @llvm.memcpy.p0.p0.i64(ptr %t246, ptr %t244, i64 %t245, i1 false)
  %t247 = insertvalue { i64, ptr } undef, i64 %t243, 0
  %t248 = insertvalue { i64, ptr } %t247, ptr %t246, 1
  %t249 = load { i64, ptr }, ptr %l139, !tbaa !27
  %t251 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eCondBranchTypes(ptr %s5, ptr %s5, ptr %s5, { i64, ptr } %t249, { i64, ptr } %t248)
  store %"compiler/diagmsg:Msg" %t251, ptr %l144
  br label %bb75
bb75:
  %t252 = load ptr, ptr %l129, !tbaa !29
  %t253 = load %"compiler/source:Span", ptr %l135
  %t254 = load %"compiler/diagmsg:Msg", ptr %l144
  %t255 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %s5, ptr %t252, %"compiler/source:Span" %t253, %"compiler/diagmsg:Msg" %t254)
  store i64 %t255, ptr %l145
  br label %bb76
bb76:
  %t256 = load ptr, ptr %l0, !tbaa !29
  %t257 = load %"compiler/source:Span", ptr %l1
  %t260 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunknown(ptr %v0, ptr %v4, ptr %t256, %"compiler/source:Span" %t257)
  store ptr %t260, ptr %l148
  br label %bb77
bb77:
  call void @__olang_scope_close(ptr %s5)
  %t261 = load ptr, ptr %l148, !tbaa !29
  store ptr %t261, ptr %rv
  br label %ret
bb78:
  %t262 = load i32, ptr %l10, !tbaa !23
  store i32 %t262, ptr %l12, !tbaa !23
  %t264 = load i32, ptr %l5, !tbaa !23
  %t265 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t268 = icmp ne i32 %t264, %t265
  br i1 %t268, label %bb79, label %bb80
bb79:
  %t270 = load i32, ptr %l5, !tbaa !23
  store i32 %t270, ptr %l12, !tbaa !23
  br label %bb236
bb80:
  %t272 = load i32, ptr %l10, !tbaa !23
  %t273 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t276 = icmp eq i32 %t272, %t273
  br i1 %t276, label %bb81, label %bb82
bb81:
  store i1 true, ptr %l157, !tbaa !21
  br label %bb83
bb82:
  %t278 = load i32, ptr %l10, !tbaa !23
  %t279 = load i32, ptr @G_2ecompiler_2ftypes_2eNoreturnT, !tbaa !23
  %t282 = icmp eq i32 %t278, %t279
  store i1 %t282, ptr %l157, !tbaa !21
  br label %bb83
bb83:
  %t284 = load i1, ptr %l157, !tbaa !21
  br i1 %t284, label %bb84, label %bb85
bb84:
  %t285 = load i32, ptr %l11, !tbaa !23
  store i32 %t285, ptr %l12, !tbaa !23
  br label %bb235
bb85:
  %t287 = load i32, ptr %l11, !tbaa !23
  %t288 = load i32, ptr @G_2ecompiler_2ftypes_2eNoreturnT, !tbaa !23
  %t291 = icmp eq i32 %t287, %t288
  br i1 %t291, label %bb86, label %bb87
bb86:
  %t293 = load i32, ptr %l10, !tbaa !23
  store i32 %t293, ptr %l12, !tbaa !23
  br label %bb234
bb87:
  %t295 = load i32, ptr %l10, !tbaa !23
  %t296 = load i32, ptr %l11, !tbaa !23
  %t299 = icmp ne i32 %t295, %t296
  br i1 %t299, label %bb88, label %bb89
bb88:
  %t301 = load i32, ptr %l11, !tbaa !23
  %t302 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t305 = icmp ne i32 %t301, %t302
  store i1 %t305, ptr %l169, !tbaa !21
  br label %bb90
bb89:
  store i1 false, ptr %l169, !tbaa !21
  br label %bb90
bb90:
  %t307 = load i1, ptr %l169, !tbaa !21
  br i1 %t307, label %bb91, label %bb92
bb91:
  %t308 = load ptr, ptr %l0, !tbaa !29
  %t310 = getelementptr %"compiler/check:Checker", ptr %t308, i32 0, i32 1
  %t311 = load ptr, ptr %t310, !tbaa !29
  %t313 = getelementptr %"compiler/generic:Program", ptr %t311, i32 0, i32 2
  %t314 = load i32, ptr %l10, !tbaa !23
  %t315 = load i32, ptr %l11, !tbaa !23
  %t319 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eSame(ptr %v0, ptr %t313, i32 %t314, i32 %t315)
  store i1 %t319, ptr %l178
  br label %bb93
bb92:
  br label %bb233
bb93:
  %t320 = load i1, ptr %l178, !tbaa !21
  br i1 %t320, label %bb94, label %bb95
bb94:
  %t321 = load i32, ptr %l10, !tbaa !23
  store i32 %t321, ptr %l12, !tbaa !23
  br label %bb232
bb95:
  %t323 = load ptr, ptr %l0, !tbaa !29
  %t324 = load i32, ptr %l10, !tbaa !23
  %t327 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisNumber(ptr %v0, ptr %t323, i32 %t324)
  store i1 %t327, ptr %l182
  br label %bb96
bb96:
  %t328 = load i1, ptr %l182, !tbaa !21
  br i1 %t328, label %bb97, label %bb98
bb97:
  %t329 = load ptr, ptr %l0, !tbaa !29
  %t330 = load i32, ptr %l11, !tbaa !23
  %t333 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisNumber(ptr %v0, ptr %t329, i32 %t330)
  store i1 %t333, ptr %l186
  br label %bb99
bb98:
  store i1 false, ptr %l183, !tbaa !21
  br label %bb100
bb99:
  %t334 = load i1, ptr %l186, !tbaa !21
  store i1 %t334, ptr %l183, !tbaa !21
  br label %bb100
bb100:
  %t335 = load i1, ptr %l183, !tbaa !21
  br i1 %t335, label %bb101, label %bb102
bb101:
  %t336 = load ptr, ptr %l0, !tbaa !29
  %t338 = getelementptr %"compiler/check:Checker", ptr %t336, i32 0, i32 1
  %t339 = load ptr, ptr %t338, !tbaa !29
  %t340 = load i32, ptr %l10, !tbaa !23
  %t341 = load i32, ptr %l11, !tbaa !23
  %t345 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eMeet(ptr %v0, ptr %t339, i32 %t340, i32 %t341)
  store i32 %t345, ptr %l192
  br label %bb103
bb102:
  store i1 false, ptr %l187, !tbaa !21
  br label %bb104
bb103:
  %t346 = load i32, ptr %l192, !tbaa !23
  %t347 = icmp sge i32 %t346, 0
  store i1 %t347, ptr %l187, !tbaa !21
  br label %bb104
bb104:
  %t349 = load i1, ptr %l187, !tbaa !21
  br i1 %t349, label %bb105, label %bb106
bb105:
  %t350 = load ptr, ptr %l0, !tbaa !29
  %t352 = getelementptr %"compiler/check:Checker", ptr %t350, i32 0, i32 1
  %t353 = load ptr, ptr %t352, !tbaa !29
  %t354 = load i32, ptr %l10, !tbaa !23
  %t355 = load i32, ptr %l11, !tbaa !23
  %t359 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eMeet(ptr %v0, ptr %t353, i32 %t354, i32 %t355)
  store i32 %t359, ptr %l198
  br label %bb107
bb106:
  %t360 = load i32, ptr %l11, !tbaa !23
  %t361 = load i32, ptr @G_2ecompiler_2ftypes_2eNullT, !tbaa !23
  %t364 = icmp eq i32 %t360, %t361
  br i1 %t364, label %bb108, label %bb109
bb107:
  %t366 = load i32, ptr %l198, !tbaa !23
  store i32 %t366, ptr %l12, !tbaa !23
  br label %bb231
bb108:
  %t367 = load ptr, ptr %l0, !tbaa !29
  %t368 = load i32, ptr %l10, !tbaa !23
  %t371 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisRef(ptr %v0, ptr %t367, i32 %t368)
  store i1 %t371, ptr %l205
  br label %bb110
bb109:
  store i1 false, ptr %l202, !tbaa !21
  br label %bb115
bb110:
  %t372 = load i1, ptr %l205, !tbaa !21
  br i1 %t372, label %bb111, label %bb112
bb111:
  store i1 true, ptr %l206, !tbaa !21
  br label %bb114
bb112:
  %t373 = load ptr, ptr %l0, !tbaa !29
  %t375 = getelementptr %"compiler/check:Checker", ptr %t373, i32 0, i32 1
  %t376 = load ptr, ptr %t375, !tbaa !29
  %t378 = getelementptr %"compiler/generic:Program", ptr %t376, i32 0, i32 2
  %t379 = load i32, ptr %l10, !tbaa !23
  %t382 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t378, i32 %t379)
  store i32 %t382, ptr %l211
  br label %bb113
bb113:
  %t383 = load i32, ptr %l211, !range !{i32 0, i32 33}
  %t385 = trunc i64 21 to i32
  %t386 = icmp eq i32 %t383, %t385
  store i1 %t386, ptr %l206, !tbaa !21
  br label %bb114
bb114:
  %t388 = load i1, ptr %l206, !tbaa !21
  store i1 %t388, ptr %l202, !tbaa !21
  br label %bb115
bb115:
  %t389 = load i1, ptr %l202, !tbaa !21
  br i1 %t389, label %bb116, label %bb117
bb116:
  %t390 = load ptr, ptr %l0, !tbaa !29
  %t392 = getelementptr %"compiler/check:Checker", ptr %t390, i32 0, i32 1
  %t393 = load ptr, ptr %t392, !tbaa !29
  %t395 = getelementptr %"compiler/generic:Program", ptr %t393, i32 0, i32 2
  %t396 = load i32, ptr %l10, !tbaa !23
  %t399 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eOrNull(ptr %v0, ptr %t395, i32 %t396)
  store i32 %t399, ptr %l218
  br label %bb118
bb117:
  %t400 = load i32, ptr %l10, !tbaa !23
  %t401 = load i32, ptr @G_2ecompiler_2ftypes_2eNullT, !tbaa !23
  %t404 = icmp eq i32 %t400, %t401
  br i1 %t404, label %bb119, label %bb120
bb118:
  %t406 = load i32, ptr %l218, !tbaa !23
  store i32 %t406, ptr %l12, !tbaa !23
  br label %bb230
bb119:
  %t407 = load ptr, ptr %l0, !tbaa !29
  %t408 = load i32, ptr %l11, !tbaa !23
  %t411 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisRef(ptr %v0, ptr %t407, i32 %t408)
  store i1 %t411, ptr %l225
  br label %bb121
bb120:
  store i1 false, ptr %l222, !tbaa !21
  br label %bb126
bb121:
  %t412 = load i1, ptr %l225, !tbaa !21
  br i1 %t412, label %bb122, label %bb123
bb122:
  store i1 true, ptr %l226, !tbaa !21
  br label %bb125
bb123:
  %t413 = load ptr, ptr %l0, !tbaa !29
  %t415 = getelementptr %"compiler/check:Checker", ptr %t413, i32 0, i32 1
  %t416 = load ptr, ptr %t415, !tbaa !29
  %t418 = getelementptr %"compiler/generic:Program", ptr %t416, i32 0, i32 2
  %t419 = load i32, ptr %l11, !tbaa !23
  %t422 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t418, i32 %t419)
  store i32 %t422, ptr %l231
  br label %bb124
bb124:
  %t423 = load i32, ptr %l231, !range !{i32 0, i32 33}
  %t425 = trunc i64 21 to i32
  %t426 = icmp eq i32 %t423, %t425
  store i1 %t426, ptr %l226, !tbaa !21
  br label %bb125
bb125:
  %t428 = load i1, ptr %l226, !tbaa !21
  store i1 %t428, ptr %l222, !tbaa !21
  br label %bb126
bb126:
  %t429 = load i1, ptr %l222, !tbaa !21
  br i1 %t429, label %bb127, label %bb128
bb127:
  %t430 = load ptr, ptr %l0, !tbaa !29
  %t432 = getelementptr %"compiler/check:Checker", ptr %t430, i32 0, i32 1
  %t433 = load ptr, ptr %t432, !tbaa !29
  %t435 = getelementptr %"compiler/generic:Program", ptr %t433, i32 0, i32 2
  %t436 = load i32, ptr %l11, !tbaa !23
  %t439 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eOrNull(ptr %v0, ptr %t435, i32 %t436)
  store i32 %t439, ptr %l238
  br label %bb129
bb128:
  %t440 = load ptr, ptr %l0, !tbaa !29
  %t442 = getelementptr %"compiler/check:Checker", ptr %t440, i32 0, i32 1
  %t443 = load ptr, ptr %t442, !tbaa !29
  %t445 = getelementptr %"compiler/generic:Program", ptr %t443, i32 0, i32 2
  %t446 = load i32, ptr %l10, !tbaa !23
  %t449 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t445, i32 %t446)
  store i32 %t449, ptr %l243
  br label %bb130
bb129:
  %t450 = load i32, ptr %l238, !tbaa !23
  store i32 %t450, ptr %l12, !tbaa !23
  br label %bb229
bb130:
  %t451 = load i32, ptr %l243, !range !{i32 0, i32 33}
  %t453 = trunc i64 21 to i32
  %t454 = icmp eq i32 %t451, %t453
  br i1 %t454, label %bb131, label %bb132
bb131:
  %t456 = load ptr, ptr %l0, !tbaa !29
  %t458 = getelementptr %"compiler/check:Checker", ptr %t456, i32 0, i32 1
  %t459 = load ptr, ptr %t458, !tbaa !29
  %t461 = getelementptr %"compiler/generic:Program", ptr %t459, i32 0, i32 2
  store ptr %t461, ptr %l249, !tbaa !29
  %t462 = load ptr, ptr %l0, !tbaa !29
  %t464 = getelementptr %"compiler/check:Checker", ptr %t462, i32 0, i32 1
  %t465 = load ptr, ptr %t464, !tbaa !29
  %t467 = getelementptr %"compiler/generic:Program", ptr %t465, i32 0, i32 2
  %t468 = load i32, ptr %l10, !tbaa !23
  %t471 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eOrNull(ptr %v0, ptr %t467, i32 %t468)
  store i32 %t471, ptr %l254
  br label %bb133
bb132:
  store i1 false, ptr %l246, !tbaa !21
  br label %bb136
bb133:
  %t472 = load ptr, ptr %l0, !tbaa !29
  %t474 = getelementptr %"compiler/check:Checker", ptr %t472, i32 0, i32 1
  %t475 = load ptr, ptr %t474, !tbaa !29
  %t477 = getelementptr %"compiler/generic:Program", ptr %t475, i32 0, i32 2
  %t478 = load i32, ptr %l11, !tbaa !23
  %t481 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eOrNull(ptr %v0, ptr %t477, i32 %t478)
  store i32 %t481, ptr %l259
  br label %bb134
bb134:
  %t482 = load ptr, ptr %l249, !tbaa !29
  %t483 = load i32, ptr %l254, !tbaa !23
  %t484 = load i32, ptr %l259, !tbaa !23
  %t485 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eSame(ptr %v0, ptr %t482, i32 %t483, i32 %t484)
  store i1 %t485, ptr %l260
  br label %bb135
bb135:
  %t486 = load i1, ptr %l260, !tbaa !21
  store i1 %t486, ptr %l246, !tbaa !21
  br label %bb136
bb136:
  %t487 = load i1, ptr %l246, !tbaa !21
  br i1 %t487, label %bb137, label %bb138
bb137:
  %t488 = load ptr, ptr %l0, !tbaa !29
  %t490 = getelementptr %"compiler/check:Checker", ptr %t488, i32 0, i32 1
  %t491 = load ptr, ptr %t490, !tbaa !29
  %t493 = getelementptr %"compiler/generic:Program", ptr %t491, i32 0, i32 2
  %t494 = load i32, ptr %l10, !tbaa !23
  %t497 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eOrNull(ptr %v0, ptr %t493, i32 %t494)
  store i32 %t497, ptr %l265
  br label %bb139
bb138:
  %t498 = load ptr, ptr %l0, !tbaa !29
  %t499 = load i32, ptr %l10, !tbaa !23
  %t502 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisRef(ptr %v0, ptr %t498, i32 %t499)
  store i1 %t502, ptr %l268
  br label %bb140
bb139:
  %t503 = load i32, ptr %l265, !tbaa !23
  store i32 %t503, ptr %l12, !tbaa !23
  br label %bb228
bb140:
  %t504 = load i1, ptr %l268, !tbaa !21
  br i1 %t504, label %bb141, label %bb142
bb141:
  %t505 = load ptr, ptr %l0, !tbaa !29
  %t506 = load i32, ptr %l11, !tbaa !23
  %t509 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisRef(ptr %v0, ptr %t505, i32 %t506)
  store i1 %t509, ptr %l272
  br label %bb143
bb142:
  store i1 false, ptr %l269, !tbaa !21
  br label %bb144
bb143:
  %t510 = load i1, ptr %l272, !tbaa !21
  %t511 = xor i1 %t510, true
  store i1 %t511, ptr %l269, !tbaa !21
  br label %bb144
bb144:
  %t513 = load i1, ptr %l269, !tbaa !21
  br i1 %t513, label %bb145, label %bb146
bb145:
  %t514 = load ptr, ptr %l0, !tbaa !29
  store ptr %t514, ptr %l275, !tbaa !29
  %t515 = load i32, ptr %l11, !tbaa !23
  store i32 %t515, ptr %l276, !tbaa !23
  %t516 = load ptr, ptr %l0, !tbaa !29
  %t518 = getelementptr %"compiler/check:Checker", ptr %t516, i32 0, i32 1
  %t519 = load ptr, ptr %t518, !tbaa !29
  %t521 = getelementptr %"compiler/generic:Program", ptr %t519, i32 0, i32 2
  %t522 = load i32, ptr %l10, !tbaa !23
  %t525 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eReferent(ptr %v0, ptr %t521, i32 %t522)
  store i32 %t525, ptr %l281
  br label %bb147
bb146:
  store i1 false, ptr %l274, !tbaa !21
  br label %bb149
bb147:
  %t526 = load ptr, ptr %l275, !tbaa !29
  %t527 = load i32, ptr %l276, !tbaa !23
  %t528 = load i32, ptr %l281, !tbaa !23
  %t529 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eflowsInto(ptr %v0, ptr %t526, i32 %t527, i32 %t528)
  store i1 %t529, ptr %l282
  br label %bb148
bb148:
  %t530 = load i1, ptr %l282, !tbaa !21
  store i1 %t530, ptr %l274, !tbaa !21
  br label %bb149
bb149:
  %t531 = load i1, ptr %l274, !tbaa !21
  br i1 %t531, label %bb150, label %bb151
bb150:
  %t532 = load i32, ptr %l10, !tbaa !23
  store i32 %t532, ptr %l12, !tbaa !23
  br label %bb227
bb151:
  %t534 = load ptr, ptr %l0, !tbaa !29
  %t535 = load i32, ptr %l11, !tbaa !23
  %t538 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisRef(ptr %v0, ptr %t534, i32 %t535)
  store i1 %t538, ptr %l286
  br label %bb152
bb152:
  %t539 = load i1, ptr %l286, !tbaa !21
  br i1 %t539, label %bb153, label %bb154
bb153:
  %t540 = load ptr, ptr %l0, !tbaa !29
  %t541 = load i32, ptr %l10, !tbaa !23
  %t544 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisRef(ptr %v0, ptr %t540, i32 %t541)
  store i1 %t544, ptr %l290
  br label %bb155
bb154:
  store i1 false, ptr %l287, !tbaa !21
  br label %bb156
bb155:
  %t545 = load i1, ptr %l290, !tbaa !21
  %t546 = xor i1 %t545, true
  store i1 %t546, ptr %l287, !tbaa !21
  br label %bb156
bb156:
  %t548 = load i1, ptr %l287, !tbaa !21
  br i1 %t548, label %bb157, label %bb158
bb157:
  %t549 = load ptr, ptr %l0, !tbaa !29
  store ptr %t549, ptr %l293, !tbaa !29
  %t550 = load i32, ptr %l10, !tbaa !23
  store i32 %t550, ptr %l294, !tbaa !23
  %t551 = load ptr, ptr %l0, !tbaa !29
  %t553 = getelementptr %"compiler/check:Checker", ptr %t551, i32 0, i32 1
  %t554 = load ptr, ptr %t553, !tbaa !29
  %t556 = getelementptr %"compiler/generic:Program", ptr %t554, i32 0, i32 2
  %t557 = load i32, ptr %l11, !tbaa !23
  %t560 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eReferent(ptr %v0, ptr %t556, i32 %t557)
  store i32 %t560, ptr %l299
  br label %bb159
bb158:
  store i1 false, ptr %l292, !tbaa !21
  br label %bb161
bb159:
  %t561 = load ptr, ptr %l293, !tbaa !29
  %t562 = load i32, ptr %l294, !tbaa !23
  %t563 = load i32, ptr %l299, !tbaa !23
  %t564 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eflowsInto(ptr %v0, ptr %t561, i32 %t562, i32 %t563)
  store i1 %t564, ptr %l300
  br label %bb160
bb160:
  %t565 = load i1, ptr %l300, !tbaa !21
  store i1 %t565, ptr %l292, !tbaa !21
  br label %bb161
bb161:
  %t566 = load i1, ptr %l292, !tbaa !21
  br i1 %t566, label %bb162, label %bb163
bb162:
  %t567 = load i32, ptr %l11, !tbaa !23
  store i32 %t567, ptr %l12, !tbaa !23
  br label %bb226
bb163:
  %t569 = load ptr, ptr %l0, !tbaa !29
  %t570 = load i32, ptr %l10, !tbaa !23
  %t573 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisRef(ptr %v0, ptr %t569, i32 %t570)
  store i1 %t573, ptr %l304
  br label %bb164
bb164:
  %t574 = load i1, ptr %l304, !tbaa !21
  br i1 %t574, label %bb165, label %bb166
bb165:
  %t575 = load ptr, ptr %l0, !tbaa !29
  %t576 = load i32, ptr %l11, !tbaa !23
  %t579 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisRef(ptr %v0, ptr %t575, i32 %t576)
  store i1 %t579, ptr %l308
  br label %bb167
bb166:
  store i1 false, ptr %l305, !tbaa !21
  br label %bb168
bb167:
  %t580 = load i1, ptr %l308, !tbaa !21
  store i1 %t580, ptr %l305, !tbaa !21
  br label %bb168
bb168:
  %t581 = load i1, ptr %l305, !tbaa !21
  br i1 %t581, label %bb169, label %bb170
bb169:
  %t582 = load ptr, ptr %l0, !tbaa !29
  %t584 = getelementptr %"compiler/check:Checker", ptr %t582, i32 0, i32 1
  %t585 = load ptr, ptr %t584, !tbaa !29
  %t587 = getelementptr %"compiler/generic:Program", ptr %t585, i32 0, i32 2
  store ptr %t587, ptr %l312, !tbaa !29
  %t588 = load ptr, ptr %l0, !tbaa !29
  %t589 = load i32, ptr %l10, !tbaa !23
  %t592 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ederef(ptr %v0, ptr %t588, i32 %t589)
  store i32 %t592, ptr %l315
  br label %bb171
bb170:
  store i1 false, ptr %l309, !tbaa !21
  br label %bb174
bb171:
  %t593 = load ptr, ptr %l0, !tbaa !29
  %t594 = load i32, ptr %l11, !tbaa !23
  %t597 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ederef(ptr %v0, ptr %t593, i32 %t594)
  store i32 %t597, ptr %l318
  br label %bb172
bb172:
  %t598 = load ptr, ptr %l312, !tbaa !29
  %t599 = load i32, ptr %l315, !tbaa !23
  %t600 = load i32, ptr %l318, !tbaa !23
  %t601 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eSame(ptr %v0, ptr %t598, i32 %t599, i32 %t600)
  store i1 %t601, ptr %l319
  br label %bb173
bb173:
  %t602 = load i1, ptr %l319, !tbaa !21
  store i1 %t602, ptr %l309, !tbaa !21
  br label %bb174
bb174:
  %t603 = load i1, ptr %l309, !tbaa !21
  br i1 %t603, label %bb175, label %bb176
bb175:
  %t604 = load ptr, ptr %l0, !tbaa !29
  %t606 = getelementptr %"compiler/check:Checker", ptr %t604, i32 0, i32 1
  %t607 = load ptr, ptr %t606, !tbaa !29
  %t609 = getelementptr %"compiler/generic:Program", ptr %t607, i32 0, i32 2
  store ptr %t609, ptr %l322, !tbaa !29
  %t610 = load ptr, ptr %l0, !tbaa !29
  %t611 = load i32, ptr %l10, !tbaa !23
  %t614 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ederef(ptr %v0, ptr %t610, i32 %t611)
  store i32 %t614, ptr %l325
  br label %bb177
bb176:
  %t615 = load ptr, ptr %l0, !tbaa !29
  %t616 = load i32, ptr %l10, !tbaa !23
  %t619 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisRef(ptr %v0, ptr %t615, i32 %t616)
  store i1 %t619, ptr %l340
  br label %bb182
bb177:
  %t620 = load ptr, ptr %l0, !tbaa !29
  %t622 = getelementptr %"compiler/check:Checker", ptr %t620, i32 0, i32 1
  %t623 = load ptr, ptr %t622, !tbaa !29
  %t625 = getelementptr %"compiler/generic:Program", ptr %t623, i32 0, i32 2
  %t626 = load i32, ptr %l10, !tbaa !23
  %t629 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePermOf(ptr %v0, ptr %t625, i32 %t626)
  store i64 %t629, ptr %l330
  br label %bb178
bb178:
  %t630 = load ptr, ptr %l0, !tbaa !29
  %t632 = getelementptr %"compiler/check:Checker", ptr %t630, i32 0, i32 1
  %t633 = load ptr, ptr %t632, !tbaa !29
  %t635 = getelementptr %"compiler/generic:Program", ptr %t633, i32 0, i32 2
  %t636 = load i32, ptr %l11, !tbaa !23
  %t639 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePermOf(ptr %v0, ptr %t635, i32 %t636)
  store i64 %t639, ptr %l335
  br label %bb179
bb179:
  %t640 = load i64, ptr %l330, !tbaa !24
  %t641 = load i64, ptr %l335, !tbaa !24
  %t642 = call i64 @compiler_2fcheck_2emeetPerm(i64 %t640, i64 %t641)
  store i64 %t642, ptr %l336
  br label %bb180
bb180:
  %t643 = load ptr, ptr %l322, !tbaa !29
  %t644 = load i32, ptr %l325, !tbaa !23
  %t645 = load i64, ptr %l336, !tbaa !24
  %t646 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRef(ptr %v0, ptr %t643, i32 %t644, i64 %t645)
  store i32 %t646, ptr %l337
  br label %bb181
bb181:
  %t647 = load i32, ptr %l337, !tbaa !23
  store i32 %t647, ptr %l12, !tbaa !23
  br label %bb225
bb182:
  %t648 = load i1, ptr %l340, !tbaa !21
  br i1 %t648, label %bb183, label %bb184
bb183:
  %t649 = load ptr, ptr %l0, !tbaa !29
  %t650 = load i32, ptr %l11, !tbaa !23
  %t653 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisRef(ptr %v0, ptr %t649, i32 %t650)
  store i1 %t653, ptr %l344
  br label %bb185
bb184:
  store i1 false, ptr %l341, !tbaa !21
  br label %bb186
bb185:
  %t654 = load i1, ptr %l344, !tbaa !21
  store i1 %t654, ptr %l341, !tbaa !21
  br label %bb186
bb186:
  %t655 = load i1, ptr %l341, !tbaa !21
  br i1 %t655, label %bb187, label %bb188
bb187:
  %t656 = load ptr, ptr %l0, !tbaa !29
  %t658 = getelementptr %"compiler/check:Checker", ptr %t656, i32 0, i32 1
  %t659 = load ptr, ptr %t658, !tbaa !29
  %t661 = getelementptr %"compiler/generic:Program", ptr %t659, i32 0, i32 2
  store ptr %t661, ptr %l348, !tbaa !29
  %t662 = load ptr, ptr %l0, !tbaa !29
  store ptr %t662, ptr %l349, !tbaa !29
  %t663 = load ptr, ptr %l0, !tbaa !29
  %t664 = load i32, ptr %l10, !tbaa !23
  %t667 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2erunLength(ptr %v0, ptr %t663, i32 %t664)
  store i32 %t667, ptr %l352
  br label %bb189
bb188:
  store i1 false, ptr %l345, !tbaa !21
  br label %bb194
bb189:
  %t668 = load ptr, ptr %l349, !tbaa !29
  %t669 = load i32, ptr %l352, !tbaa !23
  %t670 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ederef(ptr %v0, ptr %t668, i32 %t669)
  store i32 %t670, ptr %l353
  br label %bb190
bb190:
  %t671 = load ptr, ptr %l0, !tbaa !29
  store ptr %t671, ptr %l354, !tbaa !29
  %t672 = load ptr, ptr %l0, !tbaa !29
  %t673 = load i32, ptr %l11, !tbaa !23
  %t676 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2erunLength(ptr %v0, ptr %t672, i32 %t673)
  store i32 %t676, ptr %l357
  br label %bb191
bb191:
  %t677 = load ptr, ptr %l354, !tbaa !29
  %t678 = load i32, ptr %l357, !tbaa !23
  %t679 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ederef(ptr %v0, ptr %t677, i32 %t678)
  store i32 %t679, ptr %l358
  br label %bb192
bb192:
  %t680 = load ptr, ptr %l348, !tbaa !29
  %t681 = load i32, ptr %l353, !tbaa !23
  %t682 = load i32, ptr %l358, !tbaa !23
  %t683 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eSame(ptr %v0, ptr %t680, i32 %t681, i32 %t682)
  store i1 %t683, ptr %l359
  br label %bb193
bb193:
  %t684 = load i1, ptr %l359, !tbaa !21
  store i1 %t684, ptr %l345, !tbaa !21
  br label %bb194
bb194:
  %t685 = load i1, ptr %l345, !tbaa !21
  br i1 %t685, label %bb195, label %bb196
bb195:
  %t686 = load ptr, ptr %l0, !tbaa !29
  %t688 = getelementptr %"compiler/check:Checker", ptr %t686, i32 0, i32 1
  %t689 = load ptr, ptr %t688, !tbaa !29
  %t691 = getelementptr %"compiler/generic:Program", ptr %t689, i32 0, i32 2
  store ptr %t691, ptr %l362, !tbaa !29
  %t692 = load ptr, ptr %l0, !tbaa !29
  store ptr %t692, ptr %l363, !tbaa !29
  %t693 = load ptr, ptr %l0, !tbaa !29
  %t694 = load i32, ptr %l10, !tbaa !23
  %t697 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2erunLength(ptr %v0, ptr %t693, i32 %t694)
  store i32 %t697, ptr %l366
  br label %bb197
bb196:
  %t698 = load ptr, ptr %l0, !tbaa !29
  %t700 = getelementptr %"compiler/check:Checker", ptr %t698, i32 0, i32 1
  %t701 = load ptr, ptr %t700, !tbaa !29
  %t703 = getelementptr %"compiler/generic:Program", ptr %t701, i32 0, i32 2
  %t704 = load i32, ptr %l10, !tbaa !23
  %t707 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t703, i32 %t704)
  store i32 %t707, ptr %l384
  br label %bb203
bb197:
  %t708 = load ptr, ptr %l363, !tbaa !29
  %t709 = load i32, ptr %l366, !tbaa !23
  %t710 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ederef(ptr %v0, ptr %t708, i32 %t709)
  store i32 %t710, ptr %l367
  br label %bb198
bb198:
  %t711 = load ptr, ptr %l0, !tbaa !29
  %t713 = getelementptr %"compiler/check:Checker", ptr %t711, i32 0, i32 1
  %t714 = load ptr, ptr %t713, !tbaa !29
  %t716 = getelementptr %"compiler/generic:Program", ptr %t714, i32 0, i32 2
  %t717 = load i32, ptr %l10, !tbaa !23
  %t720 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePermOf(ptr %v0, ptr %t716, i32 %t717)
  store i64 %t720, ptr %l372
  br label %bb199
bb199:
  %t721 = load ptr, ptr %l0, !tbaa !29
  %t723 = getelementptr %"compiler/check:Checker", ptr %t721, i32 0, i32 1
  %t724 = load ptr, ptr %t723, !tbaa !29
  %t726 = getelementptr %"compiler/generic:Program", ptr %t724, i32 0, i32 2
  %t727 = load i32, ptr %l11, !tbaa !23
  %t730 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePermOf(ptr %v0, ptr %t726, i32 %t727)
  store i64 %t730, ptr %l377
  br label %bb200
bb200:
  %t731 = load i64, ptr %l372, !tbaa !24
  %t732 = load i64, ptr %l377, !tbaa !24
  %t733 = call i64 @compiler_2fcheck_2emeetPerm(i64 %t731, i64 %t732)
  store i64 %t733, ptr %l378
  br label %bb201
bb201:
  %t734 = load ptr, ptr %l362, !tbaa !29
  %t735 = load i32, ptr %l367, !tbaa !23
  %t736 = load i64, ptr %l378, !tbaa !24
  %t737 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRef(ptr %v0, ptr %t734, i32 %t735, i64 %t736)
  store i32 %t737, ptr %l379
  br label %bb202
bb202:
  %t738 = load i32, ptr %l379, !tbaa !23
  store i32 %t738, ptr %l12, !tbaa !23
  br label %bb224
bb203:
  %t739 = load i32, ptr %l384, !range !{i32 0, i32 33}
  %t741 = trunc i64 19 to i32
  %t742 = icmp eq i32 %t739, %t741
  br i1 %t742, label %bb204, label %bb205
bb204:
  %t744 = load ptr, ptr %l0, !tbaa !29
  %t746 = getelementptr %"compiler/check:Checker", ptr %t744, i32 0, i32 1
  %t747 = load ptr, ptr %t746, !tbaa !29
  %t749 = getelementptr %"compiler/generic:Program", ptr %t747, i32 0, i32 2
  %t750 = load i32, ptr %l11, !tbaa !23
  %t753 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t749, i32 %t750)
  store i32 %t753, ptr %l392
  br label %bb206
bb205:
  store i1 false, ptr %l387, !tbaa !21
  br label %bb207
bb206:
  %t754 = load i32, ptr %l392, !range !{i32 0, i32 33}
  %t756 = trunc i64 19 to i32
  %t757 = icmp eq i32 %t754, %t756
  store i1 %t757, ptr %l387, !tbaa !21
  br label %bb207
bb207:
  %t759 = load i1, ptr %l387, !tbaa !21
  br i1 %t759, label %bb208, label %bb209
bb208:
  %t760 = load ptr, ptr %l0, !tbaa !29
  %t762 = getelementptr %"compiler/check:Checker", ptr %t760, i32 0, i32 1
  %t763 = load ptr, ptr %t762, !tbaa !29
  %t765 = getelementptr %"compiler/generic:Program", ptr %t763, i32 0, i32 2
  store ptr %t765, ptr %l398, !tbaa !29
  %t766 = load ptr, ptr %l0, !tbaa !29
  %t768 = getelementptr %"compiler/check:Checker", ptr %t766, i32 0, i32 1
  %t769 = load ptr, ptr %t768, !tbaa !29
  %t771 = getelementptr %"compiler/generic:Program", ptr %t769, i32 0, i32 2
  %t772 = load i32, ptr %l10, !tbaa !23
  %t775 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eElem(ptr %v0, ptr %t771, i32 %t772)
  store i32 %t775, ptr %l403
  br label %bb210
bb209:
  store i1 false, ptr %l395, !tbaa !21
  br label %bb213
bb210:
  %t776 = load ptr, ptr %l0, !tbaa !29
  %t778 = getelementptr %"compiler/check:Checker", ptr %t776, i32 0, i32 1
  %t779 = load ptr, ptr %t778, !tbaa !29
  %t781 = getelementptr %"compiler/generic:Program", ptr %t779, i32 0, i32 2
  %t782 = load i32, ptr %l11, !tbaa !23
  %t785 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eElem(ptr %v0, ptr %t781, i32 %t782)
  store i32 %t785, ptr %l408
  br label %bb211
bb211:
  %t786 = load ptr, ptr %l398, !tbaa !29
  %t787 = load i32, ptr %l403, !tbaa !23
  %t788 = load i32, ptr %l408, !tbaa !23
  %t789 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eSame(ptr %v0, ptr %t786, i32 %t787, i32 %t788)
  store i1 %t789, ptr %l409
  br label %bb212
bb212:
  %t790 = load i1, ptr %l409, !tbaa !21
  store i1 %t790, ptr %l395, !tbaa !21
  br label %bb213
bb213:
  %t791 = load i1, ptr %l395, !tbaa !21
  br i1 %t791, label %bb214, label %bb215
bb214:
  %t792 = load ptr, ptr %l0, !tbaa !29
  %t794 = getelementptr %"compiler/check:Checker", ptr %t792, i32 0, i32 1
  %t795 = load ptr, ptr %t794, !tbaa !29
  %t797 = getelementptr %"compiler/generic:Program", ptr %t795, i32 0, i32 2
  store ptr %t797, ptr %l412, !tbaa !29
  %t798 = load ptr, ptr %l0, !tbaa !29
  %t800 = getelementptr %"compiler/check:Checker", ptr %t798, i32 0, i32 1
  %t801 = load ptr, ptr %t800, !tbaa !29
  %t803 = getelementptr %"compiler/generic:Program", ptr %t801, i32 0, i32 2
  %t804 = load i32, ptr %l10, !tbaa !23
  %t807 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eElem(ptr %v0, ptr %t803, i32 %t804)
  store i32 %t807, ptr %l417
  br label %bb216
bb215:
  store %olang.scope zeroinitializer, ptr %s32
  %t808 = load ptr, ptr %l0, !tbaa !29
  store ptr %t808, ptr %l419, !tbaa !29
  %t809 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t809, ptr %l420
  %t810 = load ptr, ptr %l0, !tbaa !29
  %t811 = load i32, ptr %l10, !tbaa !23
  %t814 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %s32, ptr %t810, i32 %t811)
  store { i64, ptr } %t814, ptr %l423
  br label %bb218
bb216:
  %t815 = load ptr, ptr %l412, !tbaa !29
  %t816 = load i32, ptr %l417, !tbaa !23
  %t817 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eArray(ptr %v0, ptr %t815, i32 %t816, i32 0)
  store i32 %t817, ptr %l418
  br label %bb217
bb217:
  %t818 = load i32, ptr %l418, !tbaa !23
  store i32 %t818, ptr %l12, !tbaa !23
  br label %bb223
bb218:
  %t819 = load { i64, ptr }, ptr %l423, !tbaa !27
  %t820 = extractvalue { i64, ptr } %t819, 0
  %t821 = extractvalue { i64, ptr } %t819, 1
  %t822 = mul i64 %t820, 1
  %t823 = call ptr @__olang_scope_alloc(ptr %s32, i64 %t822)
  call void @llvm.memcpy.p0.p0.i64(ptr %t823, ptr %t821, i64 %t822, i1 false)
  %t824 = insertvalue { i64, ptr } undef, i64 %t820, 0
  %t825 = insertvalue { i64, ptr } %t824, ptr %t823, 1
  store { i64, ptr } %t825, ptr %l424, !tbaa !27
  %t826 = load ptr, ptr %l0, !tbaa !29
  %t827 = load i32, ptr %l11, !tbaa !23
  %t830 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %s32, ptr %t826, i32 %t827)
  store { i64, ptr } %t830, ptr %l427
  br label %bb219
bb219:
  %t831 = load { i64, ptr }, ptr %l427, !tbaa !27
  %t832 = extractvalue { i64, ptr } %t831, 0
  %t833 = extractvalue { i64, ptr } %t831, 1
  %t834 = mul i64 %t832, 1
  %t835 = call ptr @__olang_scope_alloc(ptr %s32, i64 %t834)
  call void @llvm.memcpy.p0.p0.i64(ptr %t835, ptr %t833, i64 %t834, i1 false)
  %t836 = insertvalue { i64, ptr } undef, i64 %t832, 0
  %t837 = insertvalue { i64, ptr } %t836, ptr %t835, 1
  %t838 = load { i64, ptr }, ptr %l424, !tbaa !27
  %t840 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eCondBranchTypes(ptr %s32, ptr %s32, ptr %s32, { i64, ptr } %t838, { i64, ptr } %t837)
  store %"compiler/diagmsg:Msg" %t840, ptr %l429
  br label %bb220
bb220:
  %t841 = load ptr, ptr %l419, !tbaa !29
  %t842 = load %"compiler/source:Span", ptr %l420
  %t843 = load %"compiler/diagmsg:Msg", ptr %l429
  %t844 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %s32, ptr %t841, %"compiler/source:Span" %t842, %"compiler/diagmsg:Msg" %t843)
  store i64 %t844, ptr %l430
  br label %bb221
bb221:
  %t845 = load ptr, ptr %l0, !tbaa !29
  %t846 = load %"compiler/source:Span", ptr %l1
  %t849 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunknown(ptr %v0, ptr %v4, ptr %t845, %"compiler/source:Span" %t846)
  store ptr %t849, ptr %l433
  br label %bb222
bb222:
  call void @__olang_scope_close(ptr %s32)
  %t850 = load ptr, ptr %l433, !tbaa !29
  store ptr %t850, ptr %rv
  br label %ret
bb223:
  br label %bb224
bb224:
  br label %bb225
bb225:
  br label %bb226
bb226:
  br label %bb227
bb227:
  br label %bb228
bb228:
  br label %bb229
bb229:
  br label %bb230
bb230:
  br label %bb231
bb231:
  br label %bb232
bb232:
  br label %bb233
bb233:
  br label %bb234
bb234:
  br label %bb235
bb235:
  br label %bb236
bb236:
  %t851 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t851, ptr %l434
  %t852 = load i32, ptr %l12, !tbaa !23
  store i32 %t852, ptr %l435, !tbaa !23
  %t853 = load ptr, ptr %l7, !tbaa !29
  store ptr %t853, ptr %l436, !tbaa !29
  %t854 = load ptr, ptr %l0, !tbaa !29
  store ptr %t854, ptr %l437, !tbaa !29
  %t855 = load ptr, ptr %l8, !tbaa !29
  %t857 = icmp eq ptr %t855, null
  br i1 %t857, label %bb237, label %bb238
bb237:
  call void @__olang_check_failed(ptr @olang_loc_db85c439bc9f5684_3c0400873f27ba78)
  unreachable
bb238:
  br label %bb239
bb239:
  %t859 = load ptr, ptr %l8, !tbaa !29
  store ptr %t859, ptr %l440, !tbaa !29
  %t860 = load i32, ptr %l12, !tbaa !23
  store i32 %t860, ptr %l441, !tbaa !23
  %t861 = load ptr, ptr %l2, !tbaa !29
  %t863 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v1, ptr %t861)
  store %"compiler/source:Span" %t863, ptr %l443
  br label %bb240
bb240:
  %t864 = load ptr, ptr %l437, !tbaa !29
  %t865 = load ptr, ptr %l440, !tbaa !29
  %t866 = load i32, ptr %l441, !tbaa !23
  %t867 = load %"compiler/source:Span", ptr %l443
  %t868 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efit(ptr %v0, ptr %v4, ptr %v4, ptr %t864, ptr %t865, i32 %t866, %"compiler/source:Span" %t867)
  store ptr %t868, ptr %l444
  br label %bb241
bb241:
  %t869 = load ptr, ptr %l444, !tbaa !29
  store ptr %t869, ptr %l445, !tbaa !29
  %t870 = load ptr, ptr %l0, !tbaa !29
  store ptr %t870, ptr %l446, !tbaa !29
  %t871 = load ptr, ptr %l9, !tbaa !29
  %t873 = icmp eq ptr %t871, null
  br i1 %t873, label %bb242, label %bb243
bb242:
  call void @__olang_check_failed(ptr @olang_loc_db85c439bc9f5684_3c0400873f27ba78)
  unreachable
bb243:
  br label %bb244
bb244:
  %t875 = load ptr, ptr %l9, !tbaa !29
  store ptr %t875, ptr %l449, !tbaa !29
  %t876 = load i32, ptr %l12, !tbaa !23
  store i32 %t876, ptr %l450, !tbaa !23
  %t877 = load ptr, ptr %l4, !tbaa !29
  %t879 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v3, ptr %t877)
  store %"compiler/source:Span" %t879, ptr %l452
  br label %bb245
bb245:
  %t880 = load ptr, ptr %l446, !tbaa !29
  %t881 = load ptr, ptr %l449, !tbaa !29
  %t882 = load i32, ptr %l450, !tbaa !23
  %t883 = load %"compiler/source:Span", ptr %l452
  %t884 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efit(ptr %v0, ptr %v4, ptr %v0, ptr %t880, ptr %t881, i32 %t882, %"compiler/source:Span" %t883)
  store ptr %t884, ptr %l453
  br label %bb246
bb246:
  %t885 = load ptr, ptr %l436, !tbaa !29
  %t886 = load ptr, ptr %l445, !tbaa !29
  %t887 = load ptr, ptr %l453, !tbaa !29
  %t888 = call %"compiler/typed:Cond" @compiler_2ftyped_3aCond_2ector(ptr %v4, ptr %v4, ptr %v0, ptr %v4, ptr %t885, ptr %t886, ptr %t887)
  store %"compiler/typed:Cond" %t888, ptr %l454
  br label %bb247
bb247:
  %t889 = load %"compiler/typed:Cond", ptr %l454
  %t890 = call ptr @__olang_scope_alloc_a(ptr %v4, i64 24, i64 8)
  store %"compiler/typed:Cond" %t889, ptr %t890
  store { i64, [5 x i64] } zeroinitializer, ptr %t891
  %t892 = getelementptr { i64, [5 x i64] }, ptr %t891, i32 0, i32 0
  store i64 11, ptr %t892
  %t893 = load %"compiler/source:Span", ptr %l434
  %t894 = insertvalue { %"compiler/source:Span", i32, ptr } undef, %"compiler/source:Span" %t893, 0
  %t895 = load i32, ptr %l435, !tbaa !23
  %t896 = insertvalue { %"compiler/source:Span", i32, ptr } %t894, i32 %t895, 1
  %t898 = insertvalue { %"compiler/source:Span", i32, ptr } %t896, ptr %t890, 2
  %t899 = getelementptr { i64, [5 x i64] }, ptr %t891, i32 0, i32 1
  store { %"compiler/source:Span", i32, ptr } %t898, ptr %t899
  %t900 = load { i64, [5 x i64] }, ptr %t891
  %t902 = call ptr @__olang_scope_alloc_a(ptr %v4, i64 48, i64 8)
  store { i64, [5 x i64] } %t900, ptr %t902
  store ptr %t902, ptr %rv
  br label %ret
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

define dso_local ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2econdOf(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1, ptr %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca i32
  %l6 = alloca i32
  %l10 = alloca i1
  %l14 = alloca ptr
  %l16 = alloca %"compiler/source:Span"
  %l19 = alloca { i64, ptr }
  %l21 = alloca %"compiler/diagmsg:Msg"
  %l22 = alloca i64
  %l23 = alloca ptr
  %l25 = alloca %"compiler/source:Span"
  %l26 = alloca ptr
  %s1 = alloca %olang.scope
  %rv = alloca ptr
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store ptr %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l2, !tbaa !29
  %t4 = call i32 @compiler_2fcheck_2etypeOf(ptr %v2, ptr %t1)
  store i32 %t4, ptr %l6
  br label %bb1
bb1:
  %t5 = load i32, ptr %l6, !tbaa !23
  store i32 %t5, ptr %l3, !tbaa !23
  %t6 = load i32, ptr %l3, !tbaa !23
  %t7 = load i32, ptr @G_2ecompiler_2ftypes_2eBoolT, !tbaa !23
  %t10 = icmp ne i32 %t6, %t7
  br i1 %t10, label %bb2, label %bb3
bb2:
  %t12 = load i32, ptr %l3, !tbaa !23
  %t13 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t16 = icmp ne i32 %t12, %t13
  store i1 %t16, ptr %l10, !tbaa !21
  br label %bb4
bb3:
  store i1 false, ptr %l10, !tbaa !21
  br label %bb4
bb4:
  %t18 = load i1, ptr %l10, !tbaa !21
  br i1 %t18, label %bb5, label %bb6
bb5:
  store %olang.scope zeroinitializer, ptr %s1
  %t19 = load ptr, ptr %l0, !tbaa !29
  store ptr %t19, ptr %l14, !tbaa !29
  %t20 = load ptr, ptr %l1, !tbaa !29
  %t22 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v1, ptr %t20)
  store %"compiler/source:Span" %t22, ptr %l16
  br label %bb7
bb6:
  br label %bb13
bb7:
  %t23 = load ptr, ptr %l0, !tbaa !29
  %t24 = load i32, ptr %l3, !tbaa !23
  %t27 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %s1, ptr %t23, i32 %t24)
  store { i64, ptr } %t27, ptr %l19
  br label %bb8
bb8:
  %t28 = load { i64, ptr }, ptr %l19, !tbaa !27
  %t29 = extractvalue { i64, ptr } %t28, 0
  %t30 = extractvalue { i64, ptr } %t28, 1
  %t31 = mul i64 %t29, 1
  %t32 = call ptr @__olang_scope_alloc(ptr %s1, i64 %t31)
  call void @llvm.memcpy.p0.p0.i64(ptr %t32, ptr %t30, i64 %t31, i1 false)
  %t33 = insertvalue { i64, ptr } undef, i64 %t29, 0
  %t34 = insertvalue { i64, ptr } %t33, ptr %t32, 1
  %t36 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eCondNotBoolType(ptr %s1, ptr %s1, { i64, ptr } %t34)
  store %"compiler/diagmsg:Msg" %t36, ptr %l21
  br label %bb9
bb9:
  %t37 = load ptr, ptr %l14, !tbaa !29
  %t38 = load %"compiler/source:Span", ptr %l16
  %t39 = load %"compiler/diagmsg:Msg", ptr %l21
  %t40 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %s1, ptr %t37, %"compiler/source:Span" %t38, %"compiler/diagmsg:Msg" %t39)
  store i64 %t40, ptr %l22
  br label %bb10
bb10:
  %t41 = load ptr, ptr %l0, !tbaa !29
  store ptr %t41, ptr %l23, !tbaa !29
  %t42 = load ptr, ptr %l1, !tbaa !29
  %t44 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v1, ptr %t42)
  store %"compiler/source:Span" %t44, ptr %l25
  br label %bb11
bb11:
  %t45 = load ptr, ptr %l23, !tbaa !29
  %t46 = load %"compiler/source:Span", ptr %l25
  %t47 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunknown(ptr %v0, ptr %v3, ptr %t45, %"compiler/source:Span" %t46)
  store ptr %t47, ptr %l26
  br label %bb12
bb12:
  call void @__olang_scope_close(ptr %s1)
  %t48 = load ptr, ptr %l26, !tbaa !29
  store ptr %t48, ptr %rv
  br label %ret
bb13:
  %t49 = load ptr, ptr %l2, !tbaa !29
  store ptr %t49, ptr %rv
  br label %ret
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

define dso_local void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2edefaultBinds(ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"compiler/source:Span" %a1, i64 %a2, i64 %a3, { i64, ptr } %a4, i64 %a5, i1 %a6, ptr %a7) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca i64
  %l4 = alloca { i64, ptr }
  %l6 = alloca i1
  %l7 = alloca ptr
  %l8 = alloca ptr
  %l9 = alloca i64
  %l10 = alloca ptr
  %l11 = alloca i64
  %l12 = alloca i64
  %l13 = alloca i64
  %l14 = alloca i64
  %l15 = alloca i64
  %l16 = alloca i64
  %l17 = alloca i32
  %l18 = alloca i32
  %l19 = alloca i64
  %l20 = alloca i64
  %l21 = alloca ptr
  %l25 = alloca ptr
  %l27 = alloca i1
  %l32 = alloca i64
  %l43 = alloca i64
  %l46 = alloca i64
  %l64 = alloca { i64, ptr }
  %l69 = alloca i32
  %l74 = alloca i32
  %l78 = alloca i1
  %l83 = alloca i64
  %l86 = alloca i1
  %l88 = alloca { i64, ptr }
  %l93 = alloca i64
  %l102 = alloca i1
  %l109 = alloca i1
  %l112 = alloca { i64, ptr }
  %l118 = alloca i64
  %l125 = alloca ptr
  %l130 = alloca i32
  %l133 = alloca ptr
  %l134 = alloca i32
  %l137 = alloca i32
  store ptr %a0, ptr %l0
  store i64 %a2, ptr %l2
  store { i64, ptr } %a4, ptr %l4
  store i1 %a6, ptr %l6
  store ptr %a7, ptr %l7
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/check:Checker", ptr %t1, i32 0, i32 1
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t5 = load i64, ptr %l2, !tbaa !24
  %t8 = call ptr @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnDecl(ptr %v0, ptr %v0, ptr %t4, i64 %t5)
  store ptr %t8, ptr %l25
  br label %bb1
bb1:
  %t9 = load ptr, ptr %l25, !tbaa !29
  store ptr %t9, ptr %l8, !tbaa !29
  %t10 = load i1, ptr %l6, !tbaa !21
  br i1 %t10, label %bb2, label %bb3
bb2:
  store i1 true, ptr %l27, !tbaa !21
  br label %bb4
bb3:
  %t12 = load ptr, ptr %l8, !tbaa !29
  %t14 = getelementptr %"compiler/ast:Func", ptr %t12, i32 0, i32 1
  %t15 = load ptr, ptr %t14, !tbaa !29
  %t17 = icmp eq ptr %t15, null
  %t19 = xor i1 %t17, true
  store i1 %t19, ptr %l27, !tbaa !21
  br label %bb4
bb4:
  %t21 = load i1, ptr %l27, !tbaa !21
  br i1 %t21, label %bb5, label %bb6
bb5:
  store i64 1, ptr %l32, !tbaa !24
  br label %bb7
bb6:
  store i64 0, ptr %l32, !tbaa !24
  br label %bb7
bb7:
  %t22 = load i64, ptr %l32, !tbaa !24
  store i64 %t22, ptr %l9, !tbaa !24
  %t23 = load ptr, ptr %l0, !tbaa !29
  %t25 = getelementptr %"compiler/check:Checker", ptr %t23, i32 0, i32 1
  %t26 = load ptr, ptr %t25, !tbaa !29
  %t28 = getelementptr %"compiler/generic:Program", ptr %t26, i32 0, i32 0
  %t29 = load ptr, ptr %t28, !tbaa !29
  %t31 = getelementptr %"compiler/load:Loader", ptr %t29, i32 0, i32 4
  %t32 = load ptr, ptr %t31, !tbaa !29
  store ptr %t32, ptr %l10, !tbaa !29
  store i64 %a5, ptr %l11, !tbaa !24
  %t36 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t38 = extractvalue { i64, ptr } %t36, 0
  store i64 %t38, ptr %l12, !tbaa !24
  store i64 1, ptr %l13, !tbaa !24
  %t40 = load i64, ptr %l12, !tbaa !24
  %t41 = load i64, ptr %l11, !tbaa !24
  %t44 = icmp sgt i64 %t40, %t41
  br i1 %t44, label %bb8, label %bb9
bb8:
  %t46 = load i64, ptr %l13, !tbaa !24
  %t48 = icmp sgt i64 %t46, 0
  br i1 %t48, label %bb10, label %bb11
bb9:
  store i64 0, ptr %l43, !tbaa !24
  br label %bb13
bb10:
  %t50 = load i64, ptr %l12, !tbaa !24
  %t51 = load i64, ptr %l11, !tbaa !24
  %t54 = sub i64 %t50, %t51
  %t55 = load i64, ptr %l13, !tbaa !24
  %t58 = add i64 %t54, %t55
  %t60 = sub i64 %t58, 1
  %t61 = load i64, ptr %l13, !tbaa !24
  %t64 = sdiv i64 %t60, %t61
  store i64 %t64, ptr %l46, !tbaa !24
  br label %bb12
bb11:
  store i64 0, ptr %l46, !tbaa !24
  br label %bb12
bb12:
  %t66 = load i64, ptr %l46, !tbaa !24
  store i64 %t66, ptr %l43, !tbaa !24
  br label %bb13
bb13:
  %t67 = load i64, ptr %l43, !tbaa !24
  store i64 %t67, ptr %l14, !tbaa !24
  store i64 0, ptr %l15, !tbaa !24
  br label %bb14
bb14:
  %t68 = load i64, ptr %l15, !tbaa !24
  %t69 = load i64, ptr %l14, !tbaa !24
  %t72 = icmp slt i64 %t68, %t69
  %t74 = xor i1 %t72, true
  br i1 %t74, label %bb15, label %bb16
bb15:
  br label %bb50
bb16:
  br label %bb17
bb17:
  %t76 = load i64, ptr %l11, !tbaa !24
  %t77 = load i64, ptr %l15, !tbaa !24
  %t78 = load i64, ptr %l13, !tbaa !24
  %t81 = mul i64 %t77, %t78
  %t84 = add i64 %t76, %t81
  store i64 %t84, ptr %l16, !tbaa !24
  %t86 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t86, ptr %l64, !tbaa !27
  %t87 = load i64, ptr %l16, !tbaa !24
  %t89 = getelementptr { i64, ptr }, ptr %l64, i32 0, i32 1
  %t90 = load ptr, ptr %t89, !tbaa !27
  %t91 = getelementptr i32, ptr %t90, i64 %t87
  %t92 = load i32, ptr %t91, !tbaa !33
  store i32 %t92, ptr %l17, !tbaa !23
  %t94 = load ptr, ptr %l0, !tbaa !29
  %t95 = load i32, ptr %l17, !tbaa !23
  %t98 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ederef(ptr %v0, ptr %t94, i32 %t95)
  store i32 %t98, ptr %l69
  br label %bb18
bb18:
  %t99 = load i32, ptr %l69, !tbaa !23
  store i32 %t99, ptr %l18, !tbaa !23
  %t100 = load ptr, ptr %l0, !tbaa !29
  %t102 = getelementptr %"compiler/check:Checker", ptr %t100, i32 0, i32 1
  %t103 = load ptr, ptr %t102, !tbaa !29
  %t105 = getelementptr %"compiler/generic:Program", ptr %t103, i32 0, i32 2
  %t106 = load i32, ptr %l18, !tbaa !23
  %t109 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t105, i32 %t106)
  store i32 %t109, ptr %l74
  br label %bb19
bb19:
  %t110 = load i32, ptr %l74, !range !{i32 0, i32 33}
  %t112 = trunc i64 25 to i32
  %t113 = icmp eq i32 %t110, %t112
  %t115 = xor i1 %t113, true
  br i1 %t115, label %bb20, label %bb21
bb20:
  store i1 true, ptr %l78, !tbaa !21
  br label %bb23
bb21:
  %t117 = load ptr, ptr %l0, !tbaa !29
  %t119 = getelementptr %"compiler/check:Checker", ptr %t117, i32 0, i32 1
  %t120 = load ptr, ptr %t119, !tbaa !29
  %t122 = getelementptr %"compiler/generic:Program", ptr %t120, i32 0, i32 2
  %t123 = load i32, ptr %l18, !tbaa !23
  %t126 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eA(ptr %v0, ptr %t122, i32 %t123)
  store i64 %t126, ptr %l83
  br label %bb22
bb22:
  %t128 = load i64, ptr %l83, !tbaa !24
  %t130 = icmp ne i64 %t128, %a3
  store i1 %t130, ptr %l78, !tbaa !21
  br label %bb23
bb23:
  %t132 = load i1, ptr %l78, !tbaa !21
  br i1 %t132, label %bb24, label %bb25
bb24:
  store i1 true, ptr %l86, !tbaa !21
  br label %bb27
bb25:
  %t133 = load ptr, ptr %l7, !tbaa !29
  %t135 = getelementptr %"compiler/generic:Binding", ptr %t133, i32 0, i32 2
  %t136 = load { i64, ptr }, ptr %t135, !tbaa !27
  store { i64, ptr } %t136, ptr %l88, !tbaa !27
  %t137 = load ptr, ptr %l0, !tbaa !29
  %t139 = getelementptr %"compiler/check:Checker", ptr %t137, i32 0, i32 1
  %t140 = load ptr, ptr %t139, !tbaa !29
  %t142 = getelementptr %"compiler/generic:Program", ptr %t140, i32 0, i32 2
  %t143 = load i32, ptr %l18, !tbaa !23
  %t146 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eB(ptr %v0, ptr %t142, i32 %t143)
  store i64 %t146, ptr %l93
  br label %bb26
bb26:
  %t147 = load i64, ptr %l93, !tbaa !24
  %t148 = getelementptr { i64, ptr }, ptr %l88, i32 0, i32 1
  %t149 = load ptr, ptr %t148, !tbaa !27
  %t150 = getelementptr i32, ptr %t149, i64 %t147
  %t151 = load i32, ptr %t150, !tbaa !33
  %t152 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t155 = icmp ne i32 %t151, %t152
  store i1 %t155, ptr %l86, !tbaa !21
  br label %bb27
bb27:
  %t157 = load i1, ptr %l86, !tbaa !21
  br i1 %t157, label %bb28, label %bb29
bb28:
  br label %bb49
bb29:
  br label %bb30
bb30:
  %t158 = load i64, ptr %l16, !tbaa !24
  %t159 = load i64, ptr %l9, !tbaa !24
  %t162 = sub i64 %t158, %t159
  store i64 %t162, ptr %l19, !tbaa !24
  %t164 = load i64, ptr %l19, !tbaa !24
  %t166 = icmp slt i64 %t164, 0
  br i1 %t166, label %bb31, label %bb32
bb31:
  store i1 true, ptr %l102, !tbaa !21
  br label %bb33
bb32:
  %t168 = load i64, ptr %l19, !tbaa !24
  %t169 = load ptr, ptr %l8, !tbaa !29
  %t171 = getelementptr %"compiler/ast:Func", ptr %t169, i32 0, i32 3
  %t172 = load ptr, ptr %t171, !tbaa !29
  %t174 = getelementptr %"compiler/ast:Sig", ptr %t172, i32 0, i32 0
  %t175 = load { i64, ptr }, ptr %t174, !tbaa !27
  %t177 = extractvalue { i64, ptr } %t175, 0
  %t180 = icmp sge i64 %t168, %t177
  store i1 %t180, ptr %l102, !tbaa !21
  br label %bb33
bb33:
  %t182 = load i1, ptr %l102, !tbaa !21
  br i1 %t182, label %bb34, label %bb35
bb34:
  store i1 true, ptr %l109, !tbaa !21
  br label %bb36
bb35:
  %t183 = load ptr, ptr %l8, !tbaa !29
  %t185 = getelementptr %"compiler/ast:Func", ptr %t183, i32 0, i32 3
  %t186 = load ptr, ptr %t185, !tbaa !29
  %t188 = getelementptr %"compiler/ast:Sig", ptr %t186, i32 0, i32 0
  %t189 = load { i64, ptr }, ptr %t188, !tbaa !27
  store { i64, ptr } %t189, ptr %l112, !tbaa !27
  %t190 = load i64, ptr %l19, !tbaa !24
  %t192 = getelementptr { i64, ptr }, ptr %l112, i32 0, i32 1
  %t193 = load ptr, ptr %t192, !tbaa !27
  %t194 = getelementptr ptr, ptr %t193, i64 %t190
  %t195 = load ptr, ptr %t194, !tbaa !39
  %t197 = getelementptr %"compiler/ast:Param", ptr %t195, i32 0, i32 3
  %t198 = load ptr, ptr %t197, !tbaa !29
  %t200 = icmp eq ptr %t198, null
  store i1 %t200, ptr %l109, !tbaa !21
  br label %bb36
bb36:
  %t202 = load i1, ptr %l109, !tbaa !21
  br i1 %t202, label %bb37, label %bb38
bb37:
  br label %bb49
bb38:
  br label %bb39
bb39:
  %t203 = load ptr, ptr %l10, !tbaa !29
  %t205 = call i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eCount(ptr %v0, ptr %t203)
  store i64 %t205, ptr %l118
  br label %bb40
bb40:
  %t206 = load i64, ptr %l118, !tbaa !24
  store i64 %t206, ptr %l20, !tbaa !24
  %t207 = load ptr, ptr %l0, !tbaa !29
  %t209 = load i64, ptr %l2, !tbaa !24
  %t210 = load i64, ptr %l16, !tbaa !24
  %t211 = load i1, ptr %l6, !tbaa !21
  %t212 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t219 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2edefaultArg(ptr %v0, ptr %v0, ptr %t207, %"compiler/source:Span" %a1, i64 %t209, i64 %t210, i1 %t211, i32 %t212, i32 0)
  store ptr %t219, ptr %l125
  br label %bb41
bb41:
  %t220 = load ptr, ptr %l125, !tbaa !29
  store ptr %t220, ptr %l21, !tbaa !29
  %t221 = load ptr, ptr %l10, !tbaa !29
  %t222 = load i64, ptr %l20, !tbaa !24
  call void @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eForget(ptr %v0, ptr %t221, i64 %t222)
  br label %bb42
bb42:
  %t225 = load ptr, ptr %l21, !tbaa !29
  %t228 = call i32 @compiler_2fcheck_2etypeOf(ptr %v0, ptr %t225)
  store i32 %t228, ptr %l130
  br label %bb43
bb43:
  %t229 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t230 = load i32, ptr %l130, !tbaa !23
  %t232 = icmp ne i32 %t230, %t229
  br i1 %t232, label %bb44, label %bb45
bb44:
  %t234 = load ptr, ptr %l0, !tbaa !29
  store ptr %t234, ptr %l133, !tbaa !29
  %t235 = load i32, ptr %l17, !tbaa !23
  store i32 %t235, ptr %l134, !tbaa !23
  %t236 = load ptr, ptr %l0, !tbaa !29
  %t237 = load ptr, ptr %l21, !tbaa !29
  %t240 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ebindType(ptr %v0, ptr %v0, ptr %t236, ptr %t237)
  store i32 %t240, ptr %l137
  br label %bb46
bb45:
  br label %bb48
bb46:
  %t241 = load ptr, ptr %l7, !tbaa !29
  %t242 = load ptr, ptr %l133, !tbaa !29
  %t243 = load i32, ptr %l134, !tbaa !23
  %t244 = load i32, ptr %l137, !tbaa !23
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunify(ptr %v0, ptr %v2, ptr %t242, i32 %t243, i32 %t244, ptr %t241, i1 false, i1 false)
  br label %bb47
bb47:
  br label %bb48
bb48:
  br label %bb49
bb49:
  %t246 = load i64, ptr %l15, !tbaa !24
  %t248 = add i64 %t246, 1
  store i64 %t248, ptr %l15, !tbaa !24
  br label %bb14
bb50:
  br label %ret
ret:
  ret void
}

define dso_local i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eeffP(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i1 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i1
  %l3 = alloca ptr
  %l4 = alloca ptr
  %l5 = alloca ptr
  %l6 = alloca ptr
  %l7 = alloca ptr
  %l8 = alloca ptr
  %l9 = alloca i1
  %l12 = alloca ptr
  %l13 = alloca i1
  %l17 = alloca ptr
  %l18 = alloca i1
  %l22 = alloca ptr
  %l23 = alloca i1
  %l29 = alloca i1
  %l33 = alloca i1
  %l34 = alloca ptr
  %l35 = alloca i1
  %l43 = alloca i1
  %l44 = alloca ptr
  %l45 = alloca i1
  %l53 = alloca i1
  %l55 = alloca i1
  %l56 = alloca ptr
  %l59 = alloca i32
  %l60 = alloca i1
  %l66 = alloca i1
  %l67 = alloca i1
  %l72 = alloca i1
  %l73 = alloca ptr
  %l74 = alloca i1
  %l82 = alloca i1
  %l87 = alloca i1
  %l88 = alloca ptr
  %l89 = alloca i1
  %l97 = alloca i1
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store i1 %a2, ptr %l2
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
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 8}
  %t8 = icmp eq i64 %t6, 0
  store i1 %t8, ptr %l9, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l9, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  br label %bb9
bb4:
  %t10 = load ptr, ptr %l1, !tbaa !29
  store ptr %t10, ptr %l12, !tbaa !29
  store i1 false, ptr %l13, !tbaa !21
  %t11 = load ptr, ptr %l12, !tbaa !29
  %t12 = icmp ne ptr %t11, null
  br i1 %t12, label %bb5, label %bb6
bb5:
  %t14 = load ptr, ptr %l12, !tbaa !29
  %t15 = load i64, ptr %t14, !range !{i64 0, i64 8}
  %t17 = icmp eq i64 %t15, 7
  store i1 %t17, ptr %l13, !tbaa !21
  br label %bb6
bb6:
  %t18 = load i1, ptr %l13, !tbaa !21
  br i1 %t18, label %bb7, label %bb8
bb7:
  br label %bb9
bb8:
  br label %bb10
bb9:
  store i1 false, ptr %rv
  br label %ret
bb10:
  %t20 = load ptr, ptr %l1, !tbaa !29
  store ptr %t20, ptr %l17, !tbaa !29
  store i1 false, ptr %l18, !tbaa !21
  %t21 = load ptr, ptr %l17, !tbaa !29
  %t22 = icmp ne ptr %t21, null
  br i1 %t22, label %bb11, label %bb12
bb11:
  %t24 = load ptr, ptr %l17, !tbaa !29
  %t25 = load i64, ptr %t24, !range !{i64 0, i64 8}
  %t27 = icmp eq i64 %t25, 1
  store i1 %t27, ptr %l18, !tbaa !21
  br label %bb12
bb12:
  %t28 = load i1, ptr %l18, !tbaa !21
  br i1 %t28, label %bb13, label %bb14
bb13:
  br label %bb15
bb14:
  br label %bb16
bb15:
  %t29 = load i1, ptr %l2, !tbaa !21
  store i1 %t29, ptr %rv
  br label %ret
bb16:
  %t31 = load ptr, ptr %l1, !tbaa !29
  store ptr %t31, ptr %l22, !tbaa !29
  store i1 false, ptr %l23, !tbaa !21
  %t32 = load ptr, ptr %l22, !tbaa !29
  %t33 = icmp ne ptr %t32, null
  br i1 %t33, label %bb17, label %bb18
bb17:
  %t35 = load ptr, ptr %l22, !tbaa !29
  %t36 = load i64, ptr %t35, !range !{i64 0, i64 8}
  %t38 = icmp eq i64 %t36, 2
  store i1 %t38, ptr %l23, !tbaa !21
  br label %bb18
bb18:
  %t39 = load i1, ptr %l23, !tbaa !21
  br i1 %t39, label %bb19, label %bb20
bb19:
  %t40 = load ptr, ptr %l1, !tbaa !29
  %t42 = getelementptr { i64, [4 x i64] }, ptr %t40, i32 0, i32 1
  %t43 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t42, i32 0, i32 2
  %t44 = load ptr, ptr %t43
  store ptr %t44, ptr %l3, !tbaa !29
  br label %bb21
bb20:
  br label %bb26
bb21:
  %t46 = load i1, ptr %l2, !tbaa !21
  br i1 %t46, label %bb22, label %bb23
bb22:
  store i1 true, ptr %l29, !tbaa !21
  br label %bb25
bb23:
  %t48 = load ptr, ptr %l0, !tbaa !29
  %t49 = load ptr, ptr %l3, !tbaa !29
  %t53 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eeffX(ptr %v0, ptr %v1, ptr %t48, ptr %t49)
  store i1 %t53, ptr %l33
  br label %bb24
bb24:
  %t54 = load i1, ptr %l33, !tbaa !21
  store i1 %t54, ptr %l29, !tbaa !21
  br label %bb25
bb25:
  %t55 = load i1, ptr %l29, !tbaa !21
  store i1 %t55, ptr %rv
  br label %ret
bb26:
  %t56 = load ptr, ptr %l1, !tbaa !29
  store ptr %t56, ptr %l34, !tbaa !29
  store i1 false, ptr %l35, !tbaa !21
  %t57 = load ptr, ptr %l34, !tbaa !29
  %t58 = icmp ne ptr %t57, null
  br i1 %t58, label %bb27, label %bb28
bb27:
  %t60 = load ptr, ptr %l34, !tbaa !29
  %t61 = load i64, ptr %t60, !range !{i64 0, i64 8}
  %t63 = icmp eq i64 %t61, 3
  store i1 %t63, ptr %l35, !tbaa !21
  br label %bb28
bb28:
  %t64 = load i1, ptr %l35, !tbaa !21
  br i1 %t64, label %bb29, label %bb30
bb29:
  %t65 = load ptr, ptr %l1, !tbaa !29
  %t67 = getelementptr { i64, [4 x i64] }, ptr %t65, i32 0, i32 1
  %t68 = getelementptr { %"compiler/source:Span", i32, ptr, i64 }, ptr %t67, i32 0, i32 2
  %t69 = load ptr, ptr %t68
  store ptr %t69, ptr %l4, !tbaa !29
  br label %bb31
bb30:
  br label %bb33
bb31:
  %t71 = load ptr, ptr %l0, !tbaa !29
  %t72 = load ptr, ptr %l4, !tbaa !29
  %t73 = load i1, ptr %l2, !tbaa !21
  %t77 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eeffP(ptr %v0, ptr %v1, ptr %t71, ptr %t72, i1 %t73)
  store i1 %t77, ptr %l43
  br label %bb32
bb32:
  %t78 = load i1, ptr %l43, !tbaa !21
  store i1 %t78, ptr %rv
  br label %ret
bb33:
  %t79 = load ptr, ptr %l1, !tbaa !29
  store ptr %t79, ptr %l44, !tbaa !29
  store i1 false, ptr %l45, !tbaa !21
  %t80 = load ptr, ptr %l44, !tbaa !29
  %t81 = icmp ne ptr %t80, null
  br i1 %t81, label %bb34, label %bb35
bb34:
  %t83 = load ptr, ptr %l44, !tbaa !29
  %t84 = load i64, ptr %t83, !range !{i64 0, i64 8}
  %t86 = icmp eq i64 %t84, 4
  store i1 %t86, ptr %l45, !tbaa !21
  br label %bb35
bb35:
  %t87 = load i1, ptr %l45, !tbaa !21
  br i1 %t87, label %bb36, label %bb37
bb36:
  %t88 = load ptr, ptr %l1, !tbaa !29
  %t90 = getelementptr { i64, [4 x i64] }, ptr %t88, i32 0, i32 1
  %t91 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t90, i32 0, i32 2
  %t92 = load ptr, ptr %t91
  store ptr %t92, ptr %l5, !tbaa !29
  br label %bb38
bb37:
  br label %bb55
bb38:
  %t94 = load ptr, ptr %l5, !tbaa !29
  %t96 = getelementptr %"compiler/typed:Elem", ptr %t94, i32 0, i32 2
  %t97 = load i32, ptr %t96, !range !{i32 0, i32 3}
  %t99 = trunc i64 1 to i32
  %t100 = icmp eq i32 %t97, %t99
  br i1 %t100, label %bb39, label %bb40
bb39:
  store i1 true, ptr %l53, !tbaa !21
  br label %bb46
bb40:
  %t102 = load i1, ptr %l2, !tbaa !21
  br i1 %t102, label %bb41, label %bb42
bb41:
  %t104 = load ptr, ptr %l0, !tbaa !29
  store ptr %t104, ptr %l56, !tbaa !29
  %t105 = load ptr, ptr %l5, !tbaa !29
  %t107 = getelementptr %"compiler/typed:Elem", ptr %t105, i32 0, i32 0
  %t108 = load ptr, ptr %t107, !tbaa !29
  %t110 = call i32 @compiler_2ftyped_2ecompiler_2ftyped_3aLvalue_2eType(ptr %v1, ptr %t108)
  store i32 %t110, ptr %l59
  br label %bb43
bb42:
  store i1 false, ptr %l55, !tbaa !21
  br label %bb45
bb43:
  %t111 = load ptr, ptr %l56, !tbaa !29
  %t112 = load i32, ptr %l59, !tbaa !23
  %t113 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisRef(ptr %v0, ptr %t111, i32 %t112)
  store i1 %t113, ptr %l60
  br label %bb44
bb44:
  %t114 = load i1, ptr %l60, !tbaa !21
  store i1 %t114, ptr %l55, !tbaa !21
  br label %bb45
bb45:
  %t115 = load i1, ptr %l55, !tbaa !21
  store i1 %t115, ptr %l53, !tbaa !21
  br label %bb46
bb46:
  %t116 = load i1, ptr %l53, !tbaa !21
  br i1 %t116, label %bb47, label %bb48
bb47:
  store i1 true, ptr %rv
  br label %ret
bb48:
  br label %bb49
bb49:
  %t118 = load ptr, ptr %l0, !tbaa !29
  %t119 = load ptr, ptr %l5, !tbaa !29
  %t121 = getelementptr %"compiler/typed:Elem", ptr %t119, i32 0, i32 0
  %t122 = load ptr, ptr %t121, !tbaa !29
  %t123 = load i1, ptr %l2, !tbaa !21
  %t127 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eeffP(ptr %v0, ptr %v1, ptr %t118, ptr %t122, i1 %t123)
  store i1 %t127, ptr %l66
  br label %bb50
bb50:
  %t128 = load i1, ptr %l66, !tbaa !21
  br i1 %t128, label %bb51, label %bb52
bb51:
  store i1 true, ptr %l67, !tbaa !21
  br label %bb54
bb52:
  %t129 = load ptr, ptr %l0, !tbaa !29
  %t130 = load ptr, ptr %l5, !tbaa !29
  %t132 = getelementptr %"compiler/typed:Elem", ptr %t130, i32 0, i32 1
  %t133 = load ptr, ptr %t132, !tbaa !29
  %t137 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eeffX(ptr %v0, ptr %v1, ptr %t129, ptr %t133)
  store i1 %t137, ptr %l72
  br label %bb53
bb53:
  %t138 = load i1, ptr %l72, !tbaa !21
  store i1 %t138, ptr %l67, !tbaa !21
  br label %bb54
bb54:
  %t139 = load i1, ptr %l67, !tbaa !21
  store i1 %t139, ptr %rv
  br label %ret
bb55:
  %t140 = load ptr, ptr %l1, !tbaa !29
  store ptr %t140, ptr %l73, !tbaa !29
  store i1 false, ptr %l74, !tbaa !21
  %t141 = load ptr, ptr %l73, !tbaa !29
  %t142 = icmp ne ptr %t141, null
  br i1 %t142, label %bb56, label %bb57
bb56:
  %t144 = load ptr, ptr %l73, !tbaa !29
  %t145 = load i64, ptr %t144, !range !{i64 0, i64 8}
  %t147 = icmp eq i64 %t145, 5
  store i1 %t147, ptr %l74, !tbaa !21
  br label %bb57
bb57:
  %t148 = load i1, ptr %l74, !tbaa !21
  br i1 %t148, label %bb58, label %bb59
bb58:
  %t149 = load ptr, ptr %l1, !tbaa !29
  %t151 = getelementptr { i64, [4 x i64] }, ptr %t149, i32 0, i32 1
  %t152 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t151, i32 0, i32 2
  %t153 = load ptr, ptr %t152
  store ptr %t153, ptr %l6, !tbaa !29
  br label %bb60
bb59:
  br label %bb65
bb60:
  %t155 = load ptr, ptr %l6, !tbaa !29
  %t157 = getelementptr %"compiler/typed:Payload", ptr %t155, i32 0, i32 2
  %t158 = load i32, ptr %t157, !range !{i32 0, i32 3}
  %t160 = trunc i64 1 to i32
  %t161 = icmp eq i32 %t158, %t160
  br i1 %t161, label %bb61, label %bb62
bb61:
  store i1 true, ptr %l82, !tbaa !21
  br label %bb64
bb62:
  %t163 = load ptr, ptr %l0, !tbaa !29
  %t164 = load ptr, ptr %l6, !tbaa !29
  %t166 = getelementptr %"compiler/typed:Payload", ptr %t164, i32 0, i32 0
  %t167 = load ptr, ptr %t166, !tbaa !29
  %t168 = load i1, ptr %l2, !tbaa !21
  %t172 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eeffP(ptr %v0, ptr %v1, ptr %t163, ptr %t167, i1 %t168)
  store i1 %t172, ptr %l87
  br label %bb63
bb63:
  %t173 = load i1, ptr %l87, !tbaa !21
  store i1 %t173, ptr %l82, !tbaa !21
  br label %bb64
bb64:
  %t174 = load i1, ptr %l82, !tbaa !21
  store i1 %t174, ptr %rv
  br label %ret
bb65:
  %t175 = load ptr, ptr %l1, !tbaa !29
  store ptr %t175, ptr %l88, !tbaa !29
  store i1 false, ptr %l89, !tbaa !21
  %t176 = load ptr, ptr %l88, !tbaa !29
  %t177 = icmp ne ptr %t176, null
  br i1 %t177, label %bb66, label %bb67
bb66:
  %t179 = load ptr, ptr %l88, !tbaa !29
  %t180 = load i64, ptr %t179, !range !{i64 0, i64 8}
  %t182 = icmp eq i64 %t180, 6
  store i1 %t182, ptr %l89, !tbaa !21
  br label %bb67
bb67:
  %t183 = load i1, ptr %l89, !tbaa !21
  br i1 %t183, label %bb68, label %bb69
bb68:
  %t184 = load ptr, ptr %l1, !tbaa !29
  %t186 = getelementptr { i64, [4 x i64] }, ptr %t184, i32 0, i32 1
  %t187 = getelementptr { %"compiler/source:Span", i32, ptr, i32 }, ptr %t186, i32 0, i32 2
  %t188 = load ptr, ptr %t187
  store ptr %t188, ptr %l7, !tbaa !29
  br label %bb70
bb69:
  br label %bb72
bb70:
  %t190 = load ptr, ptr %l0, !tbaa !29
  %t191 = load ptr, ptr %l7, !tbaa !29
  %t195 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eeffX(ptr %v0, ptr %v1, ptr %t190, ptr %t191)
  store i1 %t195, ptr %l97
  br label %bb71
bb71:
  %t196 = load i1, ptr %l97, !tbaa !21
  store i1 %t196, ptr %rv
  br label %ret
bb72:
  call void @__olang_check_failed(ptr @olang_loc_a395790432891bd8_5a5437b807a0153c)
  unreachable
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerrValueType(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l4 = alloca i1
  %l5 = alloca i1
  %l8 = alloca i32
  %l14 = alloca i32
  %rv = alloca i32
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load i32, ptr %l1, !tbaa !23
  %t5 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisNamed(ptr %v0, ptr %t1, i32 %t2)
  store i1 %t5, ptr %l4
  br label %bb1
bb1:
  %t6 = load i1, ptr %l4, !tbaa !21
  br i1 %t6, label %bb2, label %bb3
bb2:
  %t7 = load ptr, ptr %l0, !tbaa !29
  %t8 = load i32, ptr %l1, !tbaa !23
  %t11 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2edeclKind(ptr %v0, ptr %t7, i32 %t8)
  store i32 %t11, ptr %l8
  br label %bb4
bb3:
  store i1 false, ptr %l5, !tbaa !21
  br label %bb5
bb4:
  %t12 = load i32, ptr %l8, !range !{i32 0, i32 6}
  %t14 = trunc i64 2 to i32
  %t15 = icmp eq i32 %t12, %t14
  store i1 %t15, ptr %l5, !tbaa !21
  br label %bb5
bb5:
  %t17 = load i1, ptr %l5, !tbaa !21
  br i1 %t17, label %bb6, label %bb7
bb6:
  %t18 = load ptr, ptr %l0, !tbaa !29
  %t20 = getelementptr %"compiler/check:Checker", ptr %t18, i32 0, i32 1
  %t21 = load ptr, ptr %t20, !tbaa !29
  %t22 = load i32, ptr %l1, !tbaa !23
  %t25 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eErrValOfType(ptr %v0, ptr %t21, i32 %t22)
  store i32 %t25, ptr %l14
  br label %bb8
bb7:
  br label %bb9
bb8:
  %t26 = load i32, ptr %l14, !tbaa !23
  store i32 %t26, ptr %rv
  br label %ret
bb9:
  %t27 = load i32, ptr %l1, !tbaa !23
  store i32 %t27, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local { i64, [3 x i64] } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efieldDeclAt(ptr %v0, ptr %a0, i32 %a1, i64 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l3 = alloca i32
  %l4 = alloca ptr
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca %"std/prelude/iterator:ViewGenerator.00c7c71992d6e1815cd052c47b979cdd"
  %l8 = alloca ptr
  %l9 = alloca { i64, ptr }
  %l10 = alloca i64
  %l11 = alloca i64
  %l12 = alloca i32
  %l17 = alloca i32
  %l20 = alloca ptr
  %l27 = alloca i64
  %l29 = alloca %"std/prelude/iterator:ViewGenerator.00c7c71992d6e1815cd052c47b979cdd"
  %l30 = alloca ptr
  %l32 = alloca ptr
  %l33 = alloca i32
  %l35 = alloca i1
  %l44 = alloca { i64, ptr }
  %l55 = alloca { i64, [3 x i64] }
  %s2 = alloca %olang.scope
  %wh2 = alloca ptr
  %wc2 = alloca ptr
  %ws2 = alloca i32
  %rv = alloca { i64, [3 x i64] }
  %t22 = alloca { i64, [3 x i64] }, align 8
  %t104 = alloca { i64, [3 x i64] }, align 8
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/check:Checker", ptr %t1, i32 0, i32 1
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t6 = getelementptr %"compiler/generic:Program", ptr %t4, i32 0, i32 2
  %t10 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %t6, i32 %a1)
  store i32 %t10, ptr %l17
  br label %bb1
bb1:
  %t11 = load i32, ptr %l17, !tbaa !23
  store i32 %t11, ptr %l3, !tbaa !23
  %t12 = load ptr, ptr %l0, !tbaa !29
  %t13 = load i32, ptr %l3, !tbaa !23
  %t16 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2estructBody(ptr %v0, ptr %v0, ptr %t12, i32 %t13)
  store ptr %t16, ptr %l20
  br label %bb2
bb2:
  %t17 = load ptr, ptr %l20, !tbaa !29
  store ptr %t17, ptr %l4, !tbaa !29
  %t18 = load ptr, ptr %l4, !tbaa !29
  %t20 = icmp eq ptr %t18, null
  br i1 %t20, label %bb3, label %bb4
bb3:
  store { i64, [3 x i64] } zeroinitializer, ptr %t22
  %t23 = getelementptr { i64, [3 x i64] }, ptr %t22, i32 0, i32 0
  store i64 0, ptr %t23
  %t24 = load { i64, [3 x i64] }, ptr %t22
  store { i64, [3 x i64] } %t24, ptr %rv
  br label %ret
bb4:
  br label %bb5
bb5:
  %t26 = load ptr, ptr %l0, !tbaa !29
  %t28 = getelementptr %"compiler/check:Checker", ptr %t26, i32 0, i32 1
  %t29 = load ptr, ptr %t28, !tbaa !29
  %t30 = load i32, ptr %l3, !tbaa !23
  %t33 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eDeclModule(ptr %v0, ptr %t29, i32 %t30)
  store i64 %t33, ptr %l27
  br label %bb6
bb6:
  %t34 = load i64, ptr %l27, !tbaa !24
  store i64 %t34, ptr %l5, !tbaa !24
  store i64 0, ptr %l6, !tbaa !24
  store %olang.scope zeroinitializer, ptr %s2
  %t35 = load ptr, ptr %l4, !tbaa !29
  %t37 = call %"std/prelude/iterator:ViewGenerator.00c7c71992d6e1815cd052c47b979cdd" @compiler_2fgeneric_2eFieldDecls.walk(ptr %v0, ptr %s2, ptr %t35)
  %t38 = extractvalue %"std/prelude/iterator:ViewGenerator.00c7c71992d6e1815cd052c47b979cdd" %t37, 0, 1
  %t39 = extractvalue %"std/prelude/iterator:ViewGenerator.00c7c71992d6e1815cd052c47b979cdd" %t37, 0, 0
  store ptr %t38, ptr %wh2
  store ptr %t39, ptr %wc2
  store %"std/prelude/iterator:ViewGenerator.00c7c71992d6e1815cd052c47b979cdd" %t37, ptr %l29
  br label %bb7
bb7:
  %t40 = load %"std/prelude/iterator:ViewGenerator.00c7c71992d6e1815cd052c47b979cdd", ptr %l29
  store %"std/prelude/iterator:ViewGenerator.00c7c71992d6e1815cd052c47b979cdd" %t40, ptr %l7
  br label %bb8
bb8:
  %t42 = call { i32, ptr } @std_2fprelude_2fiterator_2estd_2fprelude_2fiterator_3aViewGenerator_3ccompiler_2fast_3aV_Hf179e857cb72c72900f4614cd5df5a25(ptr %s2, ptr %l7)
  %t43 = extractvalue { i32, ptr } %t42, 1
  %t44 = extractvalue { i32, ptr } %t42, 0
  store i32 %t44, ptr %l33
  %t45 = icmp ne i32 %t44, 0
  br i1 %t45, label %bb10, label %ok.46, !prof !99
ok.46:
  store ptr %t43, ptr %l32
  br label %bb9
bb9:
  %t47 = load ptr, ptr %l32, !tbaa !29
  store ptr %t47, ptr %l30, !tbaa !29
  br label %bb12
bb10:
  %t48 = load i32, ptr %l33, !tbaa !23
  %t49 = ashr i32 %t48, 16
  %t51 = icmp eq i32 %t49, 1
  store i1 %t51, ptr %l35, !tbaa !21
  br label %bb11
bb11:
  br label %bb24
bb12:
  %t52 = load ptr, ptr %l30, !tbaa !29
  store ptr %t52, ptr %l8, !tbaa !29
  %t53 = load ptr, ptr %l8, !tbaa !29
  %t55 = getelementptr %"compiler/ast:VarDecl", ptr %t53, i32 0, i32 0
  %t56 = load { i64, ptr }, ptr %t55, !tbaa !27
  store { i64, ptr } %t56, ptr %l9, !tbaa !27
  store i64 0, ptr %l10, !tbaa !24
  %t58 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t60 = extractvalue { i64, ptr } %t58, 0
  store i64 %t60, ptr %l11, !tbaa !24
  br label %bb13
bb13:
  %t62 = load i64, ptr %l10, !tbaa !24
  %t63 = load i64, ptr %l11, !tbaa !24
  %t66 = icmp slt i64 %t62, %t63
  %t68 = xor i1 %t66, true
  br i1 %t68, label %bb14, label %bb15
bb14:
  br label %bb22
bb15:
  br label %bb16
bb16:
  %t70 = load { i64, ptr }, ptr %l9, !tbaa !27
  store { i64, ptr } %t70, ptr %l44, !tbaa !27
  %t71 = load i64, ptr %l10, !tbaa !24
  %t73 = getelementptr { i64, ptr }, ptr %l44, i32 0, i32 1
  %t74 = load ptr, ptr %t73, !tbaa !27
  %t75 = getelementptr i32, ptr %t74, i64 %t71
  %t76 = load i32, ptr %t75, !tbaa !33
  store i32 %t76, ptr %l12, !tbaa !23
  %t78 = load i64, ptr %l6, !tbaa !24
  %t82 = icmp eq i64 %t78, %a2
  br i1 %t82, label %bb17, label %bb18
bb17:
  %t84 = load ptr, ptr %l0, !tbaa !29
  %t85 = load i64, ptr %l5, !tbaa !24
  %t86 = load ptr, ptr %l4, !tbaa !29
  %t87 = load ptr, ptr %l8, !tbaa !29
  %t88 = load i32, ptr %l12, !tbaa !23
  %t94 = call { i64, [3 x i64] } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efieldTypeWritten(ptr %v0, ptr %v0, ptr %v0, ptr %t84, i64 %t85, ptr %t86, ptr %t87, i32 %t88)
  store { i64, [3 x i64] } %t94, ptr %l55
  br label %bb19
bb18:
  br label %bb20
bb19:
  store i32 0, ptr %ws2
  br label %wend2
wend2.c0:
  call void @__olang_scope_close(ptr %s2)
  %t95 = load { i64, [3 x i64] }, ptr %l55
  store { i64, [3 x i64] } %t95, ptr %rv
  br label %ret
bb20:
  %t96 = load i64, ptr %l6, !tbaa !24
  %t98 = add i64 %t96, 1
  store i64 %t98, ptr %l6, !tbaa !24
  br label %bb21
bb21:
  %t100 = load i64, ptr %l10, !tbaa !24
  %t102 = add i64 %t100, 1
  store i64 %t102, ptr %l10, !tbaa !24
  br label %bb13
bb22:
  br label %bb23
bb23:
  br label %bb8
bb24:
  store i32 1, ptr %ws2
  br label %wend2
wend2.c1:
  call void @__olang_scope_close(ptr %s2)
  store { i64, [3 x i64] } zeroinitializer, ptr %t104
  %t105 = getelementptr { i64, [3 x i64] }, ptr %t104, i32 0, i32 0
  store i64 0, ptr %t105
  %t106 = load { i64, [3 x i64] }, ptr %t104
  store { i64, [3 x i64] } %t106, ptr %rv
  br label %ret
wend2:
  %t108 = load ptr, ptr %wh2
  %t109 = load ptr, ptr %wc2
  %t110 = call ptr @llvm.coro.promise(ptr %t108, i32 8, i1 false)
  %t111 = getelementptr { { i32, ptr }, i32 }, ptr %t110, i32 0, i32 1
  store i32 2, ptr %t111
  %t112 = call { i32, ptr } %t109(ptr %t108, ptr null)
  %t113 = load i32, ptr %ws2
  switch i32 %t113, label %wend2.c0 [ i32 1, label %wend2.c1 ]
ret:
  %rr = load { i64, [3 x i64] }, ptr %rv
  ret { i64, [3 x i64] } %rr
}

define dso_local { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efileIdentity(ptr %v0, ptr %v1, ptr %a0, i64 %a1) #0 {
entry:
  %l2 = alloca ptr
  %l3 = alloca i64
  %l4 = alloca ptr
  %l9 = alloca i64
  %l11 = alloca i64
  %l16 = alloca ptr
  %l25 = alloca { i64, ptr }
  %rv = alloca { i64, ptr }
  br label %start
start:
  br label %bb0
bb0:
  %t3 = getelementptr %"compiler/check:Checker", ptr %a0, i32 0, i32 1
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t6 = getelementptr %"compiler/generic:Program", ptr %t4, i32 0, i32 0
  %t7 = load ptr, ptr %t6, !tbaa !29
  %t9 = getelementptr %"compiler/load:Loader", ptr %t7, i32 0, i32 10
  store ptr %t9, ptr %l2, !tbaa !29
  store i64 0, ptr %l3, !tbaa !24
  br label %bb1
bb1:
  %t11 = load i64, ptr %l3, !tbaa !24
  store i64 %t11, ptr %l9, !tbaa !24
  %t12 = load ptr, ptr %l2, !tbaa !29
  %t14 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_Hb2d19b6b5ea5ab5a85c5720545345bd4(ptr %v0, ptr %t12)
  store i64 %t14, ptr %l11
  br label %bb2
bb2:
  %t15 = load i64, ptr %l9, !tbaa !24
  %t16 = load i64, ptr %l11, !tbaa !24
  %t17 = icmp slt i64 %t15, %t16
  %t19 = xor i1 %t17, true
  br i1 %t19, label %bb3, label %bb4
bb3:
  br label %bb11
bb4:
  br label %bb5
bb5:
  %t21 = load ptr, ptr %l2, !tbaa !29
  %t22 = load i64, ptr %l3, !tbaa !24
  %t25 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H7bcf2aeb09afa796f4333e6ec8c3f63f(ptr %v0, ptr %v0, ptr %t21, i64 %t22)
  store ptr %t25, ptr %l16
  br label %bb6
bb6:
  %t26 = load ptr, ptr %l16, !tbaa !29
  store ptr %t26, ptr %l4, !tbaa !29
  %t27 = load ptr, ptr %l4, !tbaa !29
  %t29 = getelementptr %"compiler/load:Module", ptr %t27, i32 0, i32 4
  %t30 = load i64, ptr %t29, !tbaa !24
  %t34 = icmp eq i64 %t30, %a1
  br i1 %t34, label %bb7, label %bb8
bb7:
  %t36 = load ptr, ptr %l4, !tbaa !29
  %t38 = getelementptr %"compiler/load:Module", ptr %t36, i32 0, i32 2
  %t39 = load { i64, ptr }, ptr %t38, !tbaa !27
  store { i64, ptr } %t39, ptr %rv
  br label %ret
bb8:
  br label %bb9
bb9:
  br label %bb10
bb10:
  %t41 = load i64, ptr %l3, !tbaa !24
  %t43 = add i64 %t41, 1
  store i64 %t43, ptr %l3, !tbaa !24
  br label %bb1
bb11:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d30, i32 0, i32 1) }, ptr %l25, !tbaa !27
  %t45 = load { i64, ptr }, ptr %l25, !tbaa !27
  store { i64, ptr } %t45, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eglobalDeps(ptr %v0, ptr %v1, ptr %a0, i64 %a1, i64 %a2) #0 {
entry:
  %l0 = alloca ptr
  %lp3 = alloca ptr
  %l4 = alloca i64
  %l6 = alloca %"compiler/check:b5aWalk"
  %l11 = alloca i1
  %l12 = alloca i64
  %l14 = alloca i64
  %l17 = alloca ptr
  %l18 = alloca ptr
  %l21 = alloca i64
  %l24 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l26 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %rv = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %t2 = alloca %"compiler/check:b5aWalk", align 8
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  call void @compiler_2fcheck_3ab5aWalk_2ector(ptr %t2, ptr %v1, i64 %a1)
  call void @llvm.memmove.p0.p0.i64(ptr %l6, ptr %t2, i64 296, i1 false)
  br label %bb1
bb1:
  %t4 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 296, i64 8)
  store ptr %t4, ptr %lp3
  %t5 = load ptr, ptr %lp3
  call void @llvm.memmove.p0.p0.i64(ptr %t5, ptr %l6, i64 296, i1 false)
  %t6 = load ptr, ptr %l0, !tbaa !29
  %t7 = load ptr, ptr %lp3
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eb5aInit(ptr %v0, ptr %v1, ptr %t6, ptr %t7, i64 %a2)
  br label %bb2
bb2:
  store i64 0, ptr %l4, !tbaa !24
  br label %bb3
bb3:
  %t12 = load ptr, ptr %lp3
  %t13 = getelementptr %"compiler/check:b5aWalk", ptr %t12, i32 0, i32 7
  %t14 = load i1, ptr %t13, !tbaa !21
  br i1 %t14, label %bb4, label %bb5
bb4:
  %t16 = load i64, ptr %l4, !tbaa !24
  store i64 %t16, ptr %l12, !tbaa !24
  %t17 = load ptr, ptr %lp3
  %t18 = getelementptr %"compiler/check:b5aWalk", ptr %t17, i32 0, i32 2
  %t20 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v1, ptr %t18)
  store i64 %t20, ptr %l14
  br label %bb6
bb5:
  store i1 false, ptr %l11, !tbaa !21
  br label %bb7
bb6:
  %t21 = load i64, ptr %l12, !tbaa !24
  %t22 = load i64, ptr %l14, !tbaa !24
  %t23 = icmp slt i64 %t21, %t22
  store i1 %t23, ptr %l11, !tbaa !21
  br label %bb7
bb7:
  %t25 = load i1, ptr %l11, !tbaa !21
  %t26 = xor i1 %t25, true
  br i1 %t26, label %bb8, label %bb9
bb8:
  br label %bb14
bb9:
  br label %bb10
bb10:
  %t28 = load ptr, ptr %l0, !tbaa !29
  store ptr %t28, ptr %l17, !tbaa !29
  %t29 = load ptr, ptr %lp3
  store ptr %t29, ptr %l18, !tbaa !29
  %t30 = load ptr, ptr %lp3
  %t31 = getelementptr %"compiler/check:b5aWalk", ptr %t30, i32 0, i32 2
  %t32 = load i64, ptr %l4, !tbaa !24
  %t35 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v1, ptr %t31, i64 %t32)
  store i64 %t35, ptr %l21
  br label %bb11
bb11:
  %t36 = load ptr, ptr %l17, !tbaa !29
  %t37 = load ptr, ptr %l18, !tbaa !29
  %t38 = load i64, ptr %l21, !tbaa !24
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eb5aFn(ptr %v0, ptr %v1, ptr %t36, ptr %t37, i64 %t38)
  br label %bb12
bb12:
  %t39 = load i64, ptr %l4, !tbaa !24
  %t41 = add i64 %t39, 1
  store i64 %t41, ptr %l4, !tbaa !24
  br label %bb13
bb13:
  br label %bb3
bb14:
  %t43 = load ptr, ptr %lp3
  %t44 = getelementptr %"compiler/check:b5aWalk", ptr %t43, i32 0, i32 3
  %t45 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t44
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t45, ptr %l24
  %t47 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cI64_3e(ptr %v1, ptr %l24)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t47, ptr %l26
  br label %bb15
bb15:
  %t48 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l26
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t48, ptr %l24
  %t49 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l24
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t49, ptr %rv
  br label %ret
ret:
  %rr = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %rv
  ret %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %rr
}

define dso_local i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elaneTarget(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1, ptr %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/source:Span"
  %l2 = alloca ptr
  %l3 = alloca i32
  %l4 = alloca i64
  %l7 = alloca ptr
  %l8 = alloca ptr
  %l10 = alloca i32
  %l11 = alloca i32
  %l13 = alloca i32
  %l17 = alloca i64
  %l18 = alloca ptr
  %l19 = alloca %"compiler/source:Span"
  %l22 = alloca i32
  %l23 = alloca ptr
  %l27 = alloca ptr
  %l30 = alloca ptr
  %rv = alloca i64
  %t49 = alloca { i64, [3 x i64] }, align 8
  store ptr %a0, ptr %l0
  store %"compiler/source:Span" %a1, ptr %l1
  store ptr %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/check:Checker", ptr %t1, i32 0, i32 1
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t6 = getelementptr %"compiler/generic:Program", ptr %t4, i32 0, i32 2
  store ptr %t6, ptr %l7, !tbaa !29
  %t7 = load ptr, ptr %l0, !tbaa !29
  store ptr %t7, ptr %l8, !tbaa !29
  %t8 = load ptr, ptr %l2, !tbaa !29
  %t10 = call i32 @compiler_2ftyped_2ecompiler_2ftyped_3aLvalue_2eType(ptr %v1, ptr %t8)
  store i32 %t10, ptr %l10
  br label %bb1
bb1:
  %t11 = load ptr, ptr %l8, !tbaa !29
  %t12 = load i32, ptr %l10, !tbaa !23
  %t13 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ederef(ptr %v0, ptr %t11, i32 %t12)
  store i32 %t13, ptr %l11
  br label %bb2
bb2:
  %t14 = load i64, ptr @G_2ecompiler_2ftypes_2eWritable, !tbaa !24
  %t15 = load ptr, ptr %l7, !tbaa !29
  %t16 = load i32, ptr %l11, !tbaa !23
  %t18 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRef(ptr %v0, ptr %t15, i32 %t16, i64 %t14)
  store i32 %t18, ptr %l13
  br label %bb3
bb3:
  %t19 = load i32, ptr %l13, !tbaa !23
  store i32 %t19, ptr %l3, !tbaa !23
  %t20 = load ptr, ptr %l0, !tbaa !29
  %t21 = load %"compiler/source:Span", ptr %l1
  %t22 = load i32, ptr %l3, !tbaa !23
  %t26 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ehidden(ptr %v0, ptr %t20, %"compiler/source:Span" %t21, i32 %t22)
  store i64 %t26, ptr %l17
  br label %bb4
bb4:
  %t27 = load i64, ptr %l17, !tbaa !24
  store i64 %t27, ptr %l4, !tbaa !24
  %t28 = load ptr, ptr %l0, !tbaa !29
  store ptr %t28, ptr %l18, !tbaa !29
  %t29 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t29, ptr %l19
  %t30 = load i64, ptr %l4, !tbaa !24
  %t32 = trunc i64 %t30 to i32
  store i32 %t32, ptr %l22, !tbaa !23
  %t34 = load ptr, ptr %l0, !tbaa !29
  store ptr %t34, ptr %l23, !tbaa !29
  %t35 = load ptr, ptr %l0, !tbaa !29
  %t36 = load %"compiler/source:Span", ptr %l1
  %t37 = load ptr, ptr %l2, !tbaa !29
  %t41 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eread(ptr %v0, ptr %v1, ptr %v1, ptr %t35, %"compiler/source:Span" %t36, ptr %t37)
  store ptr %t41, ptr %l27
  br label %bb5
bb5:
  %t42 = load i32, ptr %l3, !tbaa !23
  %t43 = load %"compiler/source:Span", ptr %l1
  %t44 = load ptr, ptr %l23, !tbaa !29
  %t45 = load ptr, ptr %l27, !tbaa !29
  %t48 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efit(ptr %v0, ptr %v1, ptr %v0, ptr %t44, ptr %t45, i32 %t42, %"compiler/source:Span" %t43)
  store ptr %t48, ptr %l30
  br label %bb6
bb6:
  store { i64, [3 x i64] } zeroinitializer, ptr %t49
  %t50 = getelementptr { i64, [3 x i64] }, ptr %t49, i32 0, i32 0
  store i64 0, ptr %t50
  %t51 = load %"compiler/source:Span", ptr %l19
  %t52 = insertvalue { %"compiler/source:Span", i32, ptr } undef, %"compiler/source:Span" %t51, 0
  %t53 = load i32, ptr %l22, !tbaa !23
  %t54 = insertvalue { %"compiler/source:Span", i32, ptr } %t52, i32 %t53, 1
  %t55 = load ptr, ptr %l30, !tbaa !29
  %t56 = insertvalue { %"compiler/source:Span", i32, ptr } %t54, ptr %t55, 2
  %t57 = getelementptr { i64, [3 x i64] }, ptr %t49, i32 0, i32 1
  store { %"compiler/source:Span", i32, ptr } %t56, ptr %t57
  %t58 = load { i64, [3 x i64] }, ptr %t49
  %t60 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 32, i64 8)
  store { i64, [3 x i64] } %t58, ptr %t60
  %t61 = load ptr, ptr %l18, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eemit(ptr %v0, ptr %v0, ptr %t61, ptr %t60)
  br label %bb7
bb7:
  %t63 = load i64, ptr %l4, !tbaa !24
  store i64 %t63, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eleaks1(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l3 = alloca ptr
  br label %start
start:
  br label %bb0
bb0:
  %t3 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %a0)
  store ptr %t3, ptr %l3
  br label %bb1
bb1:
  %t4 = load ptr, ptr %l3, !tbaa !29
  %t6 = getelementptr %"compiler/check:frame", ptr %t4, i32 0, i32 28
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2ePush_3ccompiler_2ftypes_3aTypeId_3e(ptr %v0, ptr %t6, i32 %a1)
  br label %bb2
bb2:
  br label %ret
ret:
  ret void
}

define dso_local i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elenMatch(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i32
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca ptr
  %l11 = alloca { i64, ptr }
  %l12 = alloca i64
  %l13 = alloca i64
  %l14 = alloca ptr
  %l15 = alloca ptr
  %l16 = alloca ptr
  %l17 = alloca i32
  %l22 = alloca i1
  %l26 = alloca ptr
  %l28 = alloca ptr
  %l30 = alloca ptr
  %l32 = alloca ptr
  %l34 = alloca i32
  %l35 = alloca i32
  %l40 = alloca i32
  %l51 = alloca i64
  %l54 = alloca i64
  %l73 = alloca { i64, ptr }
  %l89 = alloca { i64, ptr }
  %l93 = alloca i1
  %l97 = alloca ptr
  %l98 = alloca i1
  %l103 = alloca ptr
  %l104 = alloca i1
  %l113 = alloca ptr
  %l115 = alloca ptr
  %l117 = alloca ptr
  %l120 = alloca ptr
  %l122 = alloca i32
  %l123 = alloca i32
  %l128 = alloca i32
  %l135 = alloca i1
  %l140 = alloca i64
  %l145 = alloca i64
  %rv = alloca i64
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load ptr, ptr %l1, !tbaa !29
  %t4 = getelementptr %"compiler/ast:Match", ptr %t2, i32 0, i32 1
  %t5 = load ptr, ptr %t4, !tbaa !29
  %t9 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ereadsConst(ptr %v0, ptr %v1, ptr %t1, ptr %t5)
  store i1 %t9, ptr %l22
  br label %bb1
bb1:
  %t10 = load i1, ptr %l22, !tbaa !21
  %t11 = xor i1 %t10, true
  br i1 %t11, label %bb2, label %bb3
bb2:
  store i64 -2, ptr %rv
  br label %ret
bb3:
  br label %bb4
bb4:
  %t14 = load ptr, ptr %l0, !tbaa !29
  %t16 = getelementptr %"compiler/check:Checker", ptr %t14, i32 0, i32 1
  %t17 = load ptr, ptr %t16, !tbaa !29
  store ptr %t17, ptr %l26, !tbaa !29
  %t18 = load ptr, ptr %l0, !tbaa !29
  %t20 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t18)
  store ptr %t20, ptr %l28
  br label %bb5
bb5:
  %t21 = load ptr, ptr %l28, !tbaa !29
  %t23 = getelementptr %"compiler/check:frame", ptr %t21, i32 0, i32 4
  store ptr %t23, ptr %l30, !tbaa !29
  %t24 = load ptr, ptr %l1, !tbaa !29
  %t26 = getelementptr %"compiler/ast:Match", ptr %t24, i32 0, i32 1
  %t27 = load ptr, ptr %t26, !tbaa !29
  store ptr %t27, ptr %l32, !tbaa !29
  %t28 = load ptr, ptr %l0, !tbaa !29
  %t30 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ei64(ptr %v0, ptr %t28)
  store i32 %t30, ptr %l34
  br label %bb6
bb6:
  %t31 = load ptr, ptr %l26, !tbaa !29
  %t32 = load ptr, ptr %l30, !tbaa !29
  %t33 = load ptr, ptr %l32, !tbaa !29
  %t34 = load i32, ptr %l34, !tbaa !23
  %t35 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFoldKnown(ptr %v0, ptr %v0, ptr %v1, ptr %t31, ptr %t32, ptr %t33, i32 %t34)
  store i32 %t35, ptr %l35
  br label %bb7
bb7:
  %t36 = load i32, ptr %l35, !tbaa !23
  store i32 %t36, ptr %l2, !tbaa !23
  %t37 = load ptr, ptr %l0, !tbaa !29
  %t39 = getelementptr %"compiler/check:Checker", ptr %t37, i32 0, i32 1
  %t40 = load ptr, ptr %t39, !tbaa !29
  %t42 = getelementptr %"compiler/generic:Program", ptr %t40, i32 0, i32 2
  %t43 = load i32, ptr %l2, !tbaa !23
  %t46 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t42, i32 %t43)
  store i32 %t46, ptr %l40
  br label %bb8
bb8:
  %t47 = load i32, ptr %l40, !range !{i32 0, i32 33}
  %t49 = trunc i64 26 to i32
  %t50 = icmp eq i32 %t47, %t49
  %t52 = xor i1 %t50, true
  br i1 %t52, label %bb9, label %bb10
bb9:
  store i64 -2, ptr %rv
  br label %ret
bb10:
  br label %bb11
bb11:
  store i64 -1, ptr %l3, !tbaa !24
  store i64 0, ptr %l4, !tbaa !24
  %t55 = load ptr, ptr %l1, !tbaa !29
  %t57 = getelementptr %"compiler/ast:Match", ptr %t55, i32 0, i32 3
  %t58 = load { i64, ptr }, ptr %t57, !tbaa !27
  %t60 = extractvalue { i64, ptr } %t58, 0
  store i64 %t60, ptr %l5, !tbaa !24
  store i64 1, ptr %l6, !tbaa !24
  %t62 = load i64, ptr %l5, !tbaa !24
  %t63 = load i64, ptr %l4, !tbaa !24
  %t66 = icmp sgt i64 %t62, %t63
  br i1 %t66, label %bb12, label %bb13
bb12:
  %t68 = load i64, ptr %l6, !tbaa !24
  %t70 = icmp sgt i64 %t68, 0
  br i1 %t70, label %bb14, label %bb15
bb13:
  store i64 0, ptr %l51, !tbaa !24
  br label %bb17
bb14:
  %t72 = load i64, ptr %l5, !tbaa !24
  %t73 = load i64, ptr %l4, !tbaa !24
  %t76 = sub i64 %t72, %t73
  %t77 = load i64, ptr %l6, !tbaa !24
  %t80 = add i64 %t76, %t77
  %t82 = sub i64 %t80, 1
  %t83 = load i64, ptr %l6, !tbaa !24
  %t86 = sdiv i64 %t82, %t83
  store i64 %t86, ptr %l54, !tbaa !24
  br label %bb16
bb15:
  store i64 0, ptr %l54, !tbaa !24
  br label %bb16
bb16:
  %t88 = load i64, ptr %l54, !tbaa !24
  store i64 %t88, ptr %l51, !tbaa !24
  br label %bb17
bb17:
  %t89 = load i64, ptr %l51, !tbaa !24
  store i64 %t89, ptr %l7, !tbaa !24
  store i64 0, ptr %l8, !tbaa !24
  br label %bb18
bb18:
  %t90 = load i64, ptr %l8, !tbaa !24
  %t91 = load i64, ptr %l7, !tbaa !24
  %t94 = icmp slt i64 %t90, %t91
  %t96 = xor i1 %t94, true
  br i1 %t96, label %bb19, label %bb20
bb19:
  br label %bb72
bb20:
  br label %bb21
bb21:
  %t98 = load i64, ptr %l4, !tbaa !24
  %t99 = load i64, ptr %l8, !tbaa !24
  %t100 = load i64, ptr %l6, !tbaa !24
  %t103 = mul i64 %t99, %t100
  %t106 = add i64 %t98, %t103
  store i64 %t106, ptr %l9, !tbaa !24
  %t108 = load ptr, ptr %l1, !tbaa !29
  %t110 = getelementptr %"compiler/ast:Match", ptr %t108, i32 0, i32 3
  %t111 = load { i64, ptr }, ptr %t110, !tbaa !27
  store { i64, ptr } %t111, ptr %l73, !tbaa !27
  %t112 = load i64, ptr %l9, !tbaa !24
  %t114 = getelementptr { i64, ptr }, ptr %l73, i32 0, i32 1
  %t115 = load ptr, ptr %t114, !tbaa !27
  %t116 = getelementptr ptr, ptr %t115, i64 %t112
  %t117 = load ptr, ptr %t116, !tbaa !39
  store ptr %t117, ptr %l10, !tbaa !29
  %t119 = load ptr, ptr %l10, !tbaa !29
  %t121 = getelementptr %"compiler/ast:Case", ptr %t119, i32 0, i32 3
  %t122 = load ptr, ptr %t121, !tbaa !29
  %t124 = icmp eq ptr %t122, null
  %t126 = xor i1 %t124, true
  br i1 %t126, label %bb22, label %bb23
bb22:
  store i64 -2, ptr %rv
  br label %ret
bb23:
  br label %bb24
bb24:
  %t129 = load ptr, ptr %l10, !tbaa !29
  %t131 = getelementptr %"compiler/ast:Case", ptr %t129, i32 0, i32 1
  %t132 = load { i64, ptr }, ptr %t131, !tbaa !27
  store { i64, ptr } %t132, ptr %l11, !tbaa !27
  store i64 0, ptr %l12, !tbaa !24
  %t134 = load { i64, ptr }, ptr %l11, !tbaa !27
  %t136 = extractvalue { i64, ptr } %t134, 0
  store i64 %t136, ptr %l13, !tbaa !24
  br label %bb25
bb25:
  %t138 = load i64, ptr %l12, !tbaa !24
  %t139 = load i64, ptr %l13, !tbaa !24
  %t142 = icmp slt i64 %t138, %t139
  %t144 = xor i1 %t142, true
  br i1 %t144, label %bb26, label %bb27
bb26:
  br label %bb70
bb27:
  br label %bb28
bb28:
  %t146 = load { i64, ptr }, ptr %l11, !tbaa !27
  store { i64, ptr } %t146, ptr %l89, !tbaa !27
  %t147 = load i64, ptr %l12, !tbaa !24
  %t149 = getelementptr { i64, ptr }, ptr %l89, i32 0, i32 1
  %t150 = load ptr, ptr %t149, !tbaa !27
  %t151 = getelementptr ptr, ptr %t150, i64 %t147
  %t152 = load ptr, ptr %t151, !tbaa !39
  store ptr %t152, ptr %l14, !tbaa !29
  %t154 = load ptr, ptr %l14, !tbaa !29
  %t156 = call i1 @compiler_2fcheck_2eisWild(ptr %v1, ptr %t154)
  store i1 %t156, ptr %l93
  br label %bb29
bb29:
  %t157 = load i1, ptr %l93, !tbaa !21
  br i1 %t157, label %bb30, label %bb31
bb30:
  %t158 = load i64, ptr %l3, !tbaa !24
  %t160 = icmp slt i64 %t158, 0
  br i1 %t160, label %bb32, label %bb33
bb31:
  br label %bb35
bb32:
  %t162 = load i64, ptr %l9, !tbaa !24
  store i64 %t162, ptr %l3, !tbaa !24
  br label %bb34
bb33:
  br label %bb34
bb34:
  br label %bb69
bb35:
  store ptr null, ptr %l15, !tbaa !29
  %t164 = load ptr, ptr %l14, !tbaa !29
  store ptr %t164, ptr %l97, !tbaa !29
  store i1 false, ptr %l98, !tbaa !21
  %t165 = load ptr, ptr %l97, !tbaa !29
  %t166 = icmp ne ptr %t165, null
  br i1 %t166, label %bb36, label %bb37
bb36:
  %t168 = load ptr, ptr %l97, !tbaa !29
  %t169 = load i64, ptr %t168, !range !{i64 0, i64 9}
  %t171 = icmp eq i64 %t169, 4
  store i1 %t171, ptr %l98, !tbaa !21
  br label %bb37
bb37:
  %t172 = load i1, ptr %l98, !tbaa !21
  br i1 %t172, label %bb38, label %bb39
bb38:
  %t173 = load ptr, ptr %l14, !tbaa !29
  %t175 = getelementptr { i64, [4 x i64] }, ptr %t173, i32 0, i32 1
  %t176 = getelementptr { %"compiler/source:Span", ptr }, ptr %t175, i32 0, i32 1
  %t177 = load ptr, ptr %t176
  store ptr %t177, ptr %l16, !tbaa !29
  br label %bb44
bb39:
  %t179 = load ptr, ptr %l14, !tbaa !29
  store ptr %t179, ptr %l103, !tbaa !29
  store i1 false, ptr %l104, !tbaa !21
  %t180 = load ptr, ptr %l103, !tbaa !29
  %t181 = icmp ne ptr %t180, null
  br i1 %t181, label %bb40, label %bb41
bb40:
  %t183 = load ptr, ptr %l103, !tbaa !29
  %t184 = load i64, ptr %t183, !range !{i64 0, i64 9}
  %t186 = icmp eq i64 %t184, 1
  store i1 %t186, ptr %l104, !tbaa !21
  br label %bb41
bb41:
  %t187 = load i1, ptr %l104, !tbaa !21
  br i1 %t187, label %bb42, label %bb43
bb42:
  %t188 = load ptr, ptr %l14, !tbaa !29
  %t190 = getelementptr { i64, [4 x i64] }, ptr %t188, i32 0, i32 1
  %t191 = getelementptr { %"compiler/source:Span", ptr }, ptr %t190, i32 0, i32 1
  %t192 = load ptr, ptr %t191
  store ptr %t192, ptr %l16, !tbaa !29
  br label %bb44
bb43:
  br label %bb45
bb44:
  %t194 = load ptr, ptr %l16, !tbaa !29
  store ptr %t194, ptr %l15, !tbaa !29
  br label %bb50
bb45:
  br i1 true, label %bb46, label %bb47
bb46:
  br label %bb48
bb47:
  br label %bb49
bb48:
  store i64 -2, ptr %rv
  br label %ret
bb49:
  call void @__olang_check_failed(ptr @olang_loc_660a686bd581f793_38ac5a37531336d7)
  unreachable
bb50:
  %t198 = load ptr, ptr %l0, !tbaa !29
  %t200 = getelementptr %"compiler/check:Checker", ptr %t198, i32 0, i32 1
  %t201 = load ptr, ptr %t200, !tbaa !29
  store ptr %t201, ptr %l113, !tbaa !29
  %t202 = load ptr, ptr %l0, !tbaa !29
  %t204 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t202)
  store ptr %t204, ptr %l115
  br label %bb51
bb51:
  %t205 = load ptr, ptr %l115, !tbaa !29
  %t207 = getelementptr %"compiler/check:frame", ptr %t205, i32 0, i32 4
  store ptr %t207, ptr %l117, !tbaa !29
  %t208 = load ptr, ptr %l15, !tbaa !29
  %t210 = icmp eq ptr %t208, null
  br i1 %t210, label %bb52, label %bb53
bb52:
  call void @__olang_check_failed(ptr @olang_loc_21b1f67e4c6ce46b_15219dc677df2bef)
  unreachable
bb53:
  br label %bb54
bb54:
  %t212 = load ptr, ptr %l15, !tbaa !29
  store ptr %t212, ptr %l120, !tbaa !29
  %t213 = load ptr, ptr %l0, !tbaa !29
  %t215 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ei64(ptr %v0, ptr %t213)
  store i32 %t215, ptr %l122
  br label %bb55
bb55:
  %t216 = load ptr, ptr %l113, !tbaa !29
  %t217 = load ptr, ptr %l117, !tbaa !29
  %t218 = load ptr, ptr %l120, !tbaa !29
  %t219 = load i32, ptr %l122, !tbaa !23
  %t220 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFoldKnown(ptr %v0, ptr %v0, ptr %v1, ptr %t216, ptr %t217, ptr %t218, i32 %t219)
  store i32 %t220, ptr %l123
  br label %bb56
bb56:
  %t221 = load i32, ptr %l123, !tbaa !23
  store i32 %t221, ptr %l17, !tbaa !23
  %t222 = load ptr, ptr %l0, !tbaa !29
  %t224 = getelementptr %"compiler/check:Checker", ptr %t222, i32 0, i32 1
  %t225 = load ptr, ptr %t224, !tbaa !29
  %t227 = getelementptr %"compiler/generic:Program", ptr %t225, i32 0, i32 2
  %t228 = load i32, ptr %l17, !tbaa !23
  %t231 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t227, i32 %t228)
  store i32 %t231, ptr %l128
  br label %bb57
bb57:
  %t232 = load i32, ptr %l128, !range !{i32 0, i32 33}
  %t234 = trunc i64 26 to i32
  %t235 = icmp eq i32 %t232, %t234
  %t237 = xor i1 %t235, true
  br i1 %t237, label %bb58, label %bb59
bb58:
  store i64 -2, ptr %rv
  br label %ret
bb59:
  br label %bb60
bb60:
  %t240 = load i64, ptr %l3, !tbaa !24
  %t242 = icmp slt i64 %t240, 0
  br i1 %t242, label %bb61, label %bb62
bb61:
  %t244 = load ptr, ptr %l0, !tbaa !29
  %t246 = getelementptr %"compiler/check:Checker", ptr %t244, i32 0, i32 1
  %t247 = load ptr, ptr %t246, !tbaa !29
  %t249 = getelementptr %"compiler/generic:Program", ptr %t247, i32 0, i32 2
  %t250 = load i32, ptr %l17, !tbaa !23
  %t253 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eConstValue(ptr %v0, ptr %t249, i32 %t250)
  store i64 %t253, ptr %l140
  br label %bb63
bb62:
  store i1 false, ptr %l135, !tbaa !21
  br label %bb65
bb63:
  %t254 = load ptr, ptr %l0, !tbaa !29
  %t256 = getelementptr %"compiler/check:Checker", ptr %t254, i32 0, i32 1
  %t257 = load ptr, ptr %t256, !tbaa !29
  %t259 = getelementptr %"compiler/generic:Program", ptr %t257, i32 0, i32 2
  %t260 = load i32, ptr %l2, !tbaa !23
  %t263 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eConstValue(ptr %v0, ptr %t259, i32 %t260)
  store i64 %t263, ptr %l145
  br label %bb64
bb64:
  %t264 = load i64, ptr %l140, !tbaa !24
  %t265 = load i64, ptr %l145, !tbaa !24
  %t266 = icmp eq i64 %t264, %t265
  store i1 %t266, ptr %l135, !tbaa !21
  br label %bb65
bb65:
  %t268 = load i1, ptr %l135, !tbaa !21
  br i1 %t268, label %bb66, label %bb67
bb66:
  %t269 = load i64, ptr %l9, !tbaa !24
  store i64 %t269, ptr %l3, !tbaa !24
  br label %bb68
bb67:
  br label %bb68
bb68:
  br label %bb69
bb69:
  %t271 = load i64, ptr %l12, !tbaa !24
  %t273 = add i64 %t271, 1
  store i64 %t273, ptr %l12, !tbaa !24
  br label %bb25
bb70:
  br label %bb71
bb71:
  %t275 = load i64, ptr %l8, !tbaa !24
  %t277 = add i64 %t275, 1
  store i64 %t277, ptr %l8, !tbaa !24
  br label %bb18
bb72:
  %t279 = load i64, ptr %l3, !tbaa !24
  store i64 %t279, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eliteralBeside(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l4 = alloca i1
  %l5 = alloca ptr
  %l8 = alloca i32
  %l9 = alloca i32
  %l12 = alloca i1
  %l13 = alloca i1
  %l16 = alloca i1
  %l17 = alloca i1
  %l21 = alloca i1
  %l25 = alloca i32
  %rv = alloca i32
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load i32, ptr %l1, !tbaa !23
  %t5 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elaneArray(ptr %v0, ptr %t1, i32 %t2)
  store i1 %t5, ptr %l4
  br label %bb1
bb1:
  %t6 = load i1, ptr %l4, !tbaa !21
  br i1 %t6, label %bb2, label %bb3
bb2:
  %t7 = load ptr, ptr %l0, !tbaa !29
  store ptr %t7, ptr %l5, !tbaa !29
  %t8 = load ptr, ptr %l0, !tbaa !29
  %t9 = load i32, ptr %l1, !tbaa !23
  %t12 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elaneElemOf(ptr %v0, ptr %t8, i32 %t9)
  store i32 %t12, ptr %l8
  br label %bb4
bb3:
  br label %bb6
bb4:
  %t13 = load ptr, ptr %l5, !tbaa !29
  %t14 = load i32, ptr %l8, !tbaa !23
  %t15 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eliteralBeside(ptr %v0, ptr %t13, i32 %t14)
  store i32 %t15, ptr %l9
  br label %bb5
bb5:
  %t16 = load i32, ptr %l9, !tbaa !23
  store i32 %t16, ptr %rv
  br label %ret
bb6:
  %t17 = load ptr, ptr %l0, !tbaa !29
  %t18 = load i32, ptr %l1, !tbaa !23
  %t21 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisNamed(ptr %v0, ptr %t17, i32 %t18)
  store i1 %t21, ptr %l12
  br label %bb7
bb7:
  %t22 = load i1, ptr %l12, !tbaa !21
  br i1 %t22, label %bb8, label %bb9
bb8:
  %t23 = load ptr, ptr %l0, !tbaa !29
  %t24 = load i32, ptr %l1, !tbaa !23
  %t27 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisNumber(ptr %v0, ptr %t23, i32 %t24)
  store i1 %t27, ptr %l16
  br label %bb10
bb9:
  store i1 false, ptr %l13, !tbaa !21
  br label %bb11
bb10:
  %t28 = load i1, ptr %l16, !tbaa !21
  store i1 %t28, ptr %l13, !tbaa !21
  br label %bb11
bb11:
  %t29 = load i1, ptr %l13, !tbaa !21
  br i1 %t29, label %bb12, label %bb13
bb12:
  %t30 = load ptr, ptr %l0, !tbaa !29
  %t32 = getelementptr %"compiler/check:Checker", ptr %t30, i32 0, i32 1
  %t33 = load ptr, ptr %t32, !tbaa !29
  %t34 = load i32, ptr %l1, !tbaa !23
  %t37 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eExtends(ptr %v0, ptr %t33, i32 %t34)
  store i1 %t37, ptr %l21
  br label %bb14
bb13:
  store i1 false, ptr %l17, !tbaa !21
  br label %bb15
bb14:
  %t38 = load i1, ptr %l21, !tbaa !21
  %t39 = xor i1 %t38, true
  store i1 %t39, ptr %l17, !tbaa !21
  br label %bb15
bb15:
  %t41 = load i1, ptr %l17, !tbaa !21
  br i1 %t41, label %bb16, label %bb17
bb16:
  %t42 = load ptr, ptr %l0, !tbaa !29
  %t43 = load i32, ptr %l1, !tbaa !23
  %t46 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunder(ptr %v0, ptr %t42, i32 %t43)
  store i32 %t46, ptr %l25
  br label %bb18
bb17:
  br label %bb19
bb18:
  %t47 = load i32, ptr %l25, !tbaa !23
  store i32 %t47, ptr %rv
  br label %ret
bb19:
  %t48 = load i32, ptr %l1, !tbaa !23
  store i32 %t48, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elocalOrCapture(ptr %v0, ptr %a0, i32 %a1, %"compiler/source:Span" %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l3 = alloca i64
  %l4 = alloca i64
  %l7 = alloca i64
  %l12 = alloca i64
  %l15 = alloca i64
  %l18 = alloca ptr
  %l21 = alloca i64
  %l25 = alloca i64
  %rv = alloca i64
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load i32, ptr %l1, !tbaa !23
  %t5 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elocalNamed(ptr %v0, ptr %t1, i32 %t2)
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
  %t12 = load i64, ptr %l3, !tbaa !24
  %t15 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ewholeNarrowed(ptr %v0, ptr %t11, i64 %t12)
  store i64 %t15, ptr %l12
  br label %bb4
bb3:
  br label %bb8
bb4:
  %t16 = load i64, ptr %l12, !tbaa !24
  store i64 %t16, ptr %l4, !tbaa !24
  %t17 = load i64, ptr %l4, !tbaa !24
  %t19 = icmp sge i64 %t17, 0
  br i1 %t19, label %bb5, label %bb6
bb5:
  %t21 = load i64, ptr %l4, !tbaa !24
  store i64 %t21, ptr %l15, !tbaa !24
  br label %bb7
bb6:
  %t23 = load i64, ptr %l3, !tbaa !24
  store i64 %t23, ptr %l15, !tbaa !24
  br label %bb7
bb7:
  %t25 = load i64, ptr %l15, !tbaa !24
  store i64 %t25, ptr %rv
  br label %ret
bb8:
  %t26 = load ptr, ptr %l0, !tbaa !29
  store ptr %t26, ptr %l18, !tbaa !29
  %t27 = load ptr, ptr %l0, !tbaa !29
  %t29 = getelementptr %"compiler/check:Checker", ptr %t27, i32 0, i32 16
  %t31 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fcheck_3aframe_26_3e_2_H2251bc8fca359ca0394d0bb11af7ba0a(ptr %v0, ptr %t29)
  store i64 %t31, ptr %l21
  br label %bb9
bb9:
  %t32 = load i64, ptr %l21, !tbaa !24
  %t33 = sub i64 %t32, 1
  %t34 = load i32, ptr %l1, !tbaa !23
  %t36 = load ptr, ptr %l18, !tbaa !29
  %t40 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecaptureIn(ptr %v0, ptr %t36, i64 %t33, i32 %t34, %"compiler/source:Span" %a2)
  store i64 %t40, ptr %l25
  br label %bb10
bb10:
  %t41 = load i64, ptr %l25, !tbaa !24
  store i64 %t41, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2enarrowCopy(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l2 = alloca ptr
  %l3 = alloca i32
  %l5 = alloca ptr
  %l9 = alloca ptr
  %l10 = alloca i1
  %l18 = alloca i64
  %l20 = alloca i64
  %rv = alloca i64
  br label %start
start:
  br label %bb0
bb0:
  %t3 = call ptr @compiler_2fcheck_2ereadPlace(ptr %v1, ptr %v1, ptr %a1)
  store ptr %t3, ptr %l5
  br label %bb1
bb1:
  %t4 = load ptr, ptr %l5, !tbaa !29
  store ptr %t4, ptr %l2, !tbaa !29
  %t5 = load ptr, ptr %l2, !tbaa !29
  %t7 = icmp eq ptr %t5, null
  br i1 %t7, label %bb2, label %bb3
bb2:
  store i64 -1, ptr %rv
  br label %ret
bb3:
  br label %bb4
bb4:
  %t10 = load ptr, ptr %l2, !tbaa !29
  store ptr %t10, ptr %l9, !tbaa !29
  store i1 false, ptr %l10, !tbaa !21
  %t11 = load ptr, ptr %l9, !tbaa !29
  %t12 = icmp ne ptr %t11, null
  br i1 %t12, label %bb5, label %bb6
bb5:
  %t14 = load ptr, ptr %l9, !tbaa !29
  %t15 = load i64, ptr %t14, !range !{i64 0, i64 8}
  %t17 = icmp eq i64 %t15, 0
  store i1 %t17, ptr %l10, !tbaa !21
  br label %bb6
bb6:
  %t18 = load i1, ptr %l10, !tbaa !21
  br i1 %t18, label %bb7, label %bb8
bb7:
  %t19 = load ptr, ptr %l2, !tbaa !29
  %t21 = getelementptr { i64, [4 x i64] }, ptr %t19, i32 0, i32 1
  %t22 = getelementptr { %"compiler/source:Span", i32, i32 }, ptr %t21, i32 0, i32 2
  %t23 = load i32, ptr %t22
  store i32 %t23, ptr %l3, !tbaa !23
  br label %bb9
bb8:
  br label %bb14
bb9:
  %t26 = load i32, ptr %l3, !tbaa !23
  %t28 = sext i32 %t26 to i64
  %t31 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2enarrowOwner(ptr %v0, ptr %a0, i64 %t28)
  store i64 %t31, ptr %l18
  br label %bb10
bb10:
  %t32 = load i64, ptr %l18, !tbaa !24
  %t33 = icmp sge i64 %t32, 0
  br i1 %t33, label %bb11, label %bb12
bb11:
  %t35 = load i32, ptr %l3, !tbaa !23
  %t37 = sext i32 %t35 to i64
  store i64 %t37, ptr %l20, !tbaa !24
  br label %bb13
bb12:
  store i64 -1, ptr %l20, !tbaa !24
  br label %bb13
bb13:
  %t39 = load i64, ptr %l20, !tbaa !24
  store i64 %t39, ptr %rv
  br label %ret
bb14:
  br i1 true, label %bb15, label %bb16
bb15:
  br label %bb17
bb16:
  br label %bb18
bb17:
  store i64 -1, ptr %rv
  br label %ret
bb18:
  call void @__olang_check_failed(ptr @olang_loc_cd94e6a5e488a5b1_e9066543c2d4a76d)
  unreachable
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2enarrowOwner(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca %"compiler/check:narrowed"
  %l12 = alloca i64
  %l14 = alloca ptr
  %l15 = alloca i64
  %l19 = alloca i64
  %l20 = alloca i32
  %l26 = alloca i64
  %l30 = alloca i64
  %l33 = alloca i64
  %l53 = alloca i64
  %l60 = alloca %"compiler/check:narrowed"
  %l63 = alloca ptr
  %l66 = alloca ptr
  %l71 = alloca i32
  %l72 = alloca i32
  %l73 = alloca { i64, ptr }
  %l78 = alloca i1
  %s3 = alloca %olang.scope
  %rv = alloca i64
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t1)
  store ptr %t3, ptr %l14
  br label %bb1
bb1:
  %t4 = load ptr, ptr %l14, !tbaa !29
  store ptr %t4, ptr %l2, !tbaa !29
  %t5 = load ptr, ptr %l2, !tbaa !29
  %t7 = getelementptr %"compiler/check:frame", ptr %t5, i32 0, i32 47
  %t11 = call { i32, i64 } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eIndexOf_3cI64_3e(ptr %v0, ptr %t7, i64 %a1)
  %t12 = extractvalue { i32, i64 } %t11, 1
  %t13 = extractvalue { i32, i64 } %t11, 0
  store i32 %t13, ptr %l20
  %t14 = icmp ne i32 %t13, 0
  br i1 %t14, label %bb3, label %ok.15, !prof !99
ok.15:
  store i64 %t12, ptr %l19
  br label %bb2
bb2:
  %t16 = load i64, ptr %l19, !tbaa !24
  store i64 %t16, ptr %l15, !tbaa !24
  br label %bb5
bb3:
  br label %bb4
bb4:
  store i64 -1, ptr %l15, !tbaa !24
  br label %bb5
bb5:
  %t17 = load i64, ptr %l15, !tbaa !24
  store i64 %t17, ptr %l3, !tbaa !24
  %t18 = load i64, ptr %l3, !tbaa !24
  %t20 = icmp slt i64 %t18, 0
  br i1 %t20, label %bb6, label %bb7
bb6:
  store i64 -1, ptr %rv
  br label %ret
bb7:
  br label %bb8
bb8:
  store i64 0, ptr %l4, !tbaa !24
  %t23 = load ptr, ptr %l2, !tbaa !29
  %t25 = getelementptr %"compiler/check:frame", ptr %t23, i32 0, i32 46
  %t27 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3anarrowed_3e_2eLen_3ccompiler_2fcheck_3anarrowed_3e(ptr %v0, ptr %t25)
  store i64 %t27, ptr %l26
  br label %bb9
bb9:
  %t28 = load i64, ptr %l26, !tbaa !24
  store i64 %t28, ptr %l5, !tbaa !24
  store i64 1, ptr %l6, !tbaa !24
  %t29 = load i64, ptr %l5, !tbaa !24
  %t30 = load i64, ptr %l4, !tbaa !24
  %t33 = icmp sgt i64 %t29, %t30
  br i1 %t33, label %bb10, label %bb11
bb10:
  %t35 = load i64, ptr %l6, !tbaa !24
  %t37 = icmp sgt i64 %t35, 0
  br i1 %t37, label %bb12, label %bb13
bb11:
  store i64 0, ptr %l30, !tbaa !24
  br label %bb15
bb12:
  %t39 = load i64, ptr %l5, !tbaa !24
  %t40 = load i64, ptr %l4, !tbaa !24
  %t43 = sub i64 %t39, %t40
  %t44 = load i64, ptr %l6, !tbaa !24
  %t47 = add i64 %t43, %t44
  %t49 = sub i64 %t47, 1
  %t50 = load i64, ptr %l6, !tbaa !24
  %t53 = sdiv i64 %t49, %t50
  store i64 %t53, ptr %l33, !tbaa !24
  br label %bb14
bb13:
  store i64 0, ptr %l33, !tbaa !24
  br label %bb14
bb14:
  %t55 = load i64, ptr %l33, !tbaa !24
  store i64 %t55, ptr %l30, !tbaa !24
  br label %bb15
bb15:
  %t56 = load i64, ptr %l30, !tbaa !24
  store i64 %t56, ptr %l7, !tbaa !24
  store i64 0, ptr %l8, !tbaa !24
  br label %bb16
bb16:
  store %olang.scope zeroinitializer, ptr %s3
  %t57 = load i64, ptr %l8, !tbaa !24
  %t58 = load i64, ptr %l7, !tbaa !24
  %t61 = icmp slt i64 %t57, %t58
  %t63 = xor i1 %t61, true
  br i1 %t63, label %bb17, label %bb18
bb17:
  call void @__olang_scope_close(ptr %s3)
  br label %bb32
bb18:
  br label %bb19
bb19:
  %t65 = load i64, ptr %l4, !tbaa !24
  %t66 = load i64, ptr %l8, !tbaa !24
  %t67 = load i64, ptr %l6, !tbaa !24
  %t70 = mul i64 %t66, %t67
  %t73 = add i64 %t65, %t70
  store i64 %t73, ptr %l9, !tbaa !24
  %t75 = load ptr, ptr %l2, !tbaa !29
  %t77 = getelementptr %"compiler/check:frame", ptr %t75, i32 0, i32 46
  %t79 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3anarrowed_3e_2eLen_3ccompiler_2fcheck_3anarrowed_3e(ptr %v0, ptr %t77)
  store i64 %t79, ptr %l53
  br label %bb20
bb20:
  %t80 = load i64, ptr %l53, !tbaa !24
  %t81 = sub i64 %t80, 1
  %t82 = load i64, ptr %l9, !tbaa !24
  %t85 = sub i64 %t81, %t82
  store i64 %t85, ptr %l10, !tbaa !24
  %t87 = load ptr, ptr %l2, !tbaa !29
  %t89 = getelementptr %"compiler/check:frame", ptr %t87, i32 0, i32 46
  %t90 = load i64, ptr %l10, !tbaa !24
  %t93 = call %"compiler/check:narrowed" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3anarrowed_3e_2eAt_3ccompiler_2fcheck_3anarrowed_3e(ptr %v0, ptr %t89, i64 %t90)
  store %"compiler/check:narrowed" %t93, ptr %l60
  br label %bb21
bb21:
  %t94 = load %"compiler/check:narrowed", ptr %l60
  store %"compiler/check:narrowed" %t94, ptr %l11
  %t95 = load ptr, ptr %l0, !tbaa !29
  %t97 = getelementptr %"compiler/check:Checker", ptr %t95, i32 0, i32 1
  %t98 = load ptr, ptr %t97, !tbaa !29
  %t100 = getelementptr %"compiler/generic:Program", ptr %t98, i32 0, i32 2
  store ptr %t100, ptr %l63, !tbaa !29
  %t101 = load ptr, ptr %l0, !tbaa !29
  %t103 = getelementptr %"compiler/check:Checker", ptr %t101, i32 0, i32 1
  %t104 = load ptr, ptr %t103, !tbaa !29
  %t106 = getelementptr %"compiler/generic:Program", ptr %t104, i32 0, i32 2
  store ptr %t106, ptr %l66, !tbaa !29
  %t107 = load ptr, ptr %l0, !tbaa !29
  %t109 = getelementptr %"compiler/check:Checker", ptr %t107, i32 0, i32 1
  %t110 = load ptr, ptr %t109, !tbaa !29
  %t111 = getelementptr %"compiler/check:narrowed", ptr %l11, i32 0, i32 2
  %t112 = load i32, ptr %t111, !tbaa !23
  %t113 = getelementptr %"compiler/check:narrowed", ptr %l11, i32 0, i32 1
  %t114 = load i64, ptr %t113, !tbaa !24
  %t118 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eCaseSig(ptr %v0, ptr %t110, i32 %t112, i64 %t114)
  store i32 %t118, ptr %l71
  br label %bb22
bb22:
  %t119 = load ptr, ptr %l66, !tbaa !29
  %t120 = load i32, ptr %l71, !tbaa !23
  %t121 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParams(ptr %v0, ptr %t119, i32 %t120)
  store i32 %t121, ptr %l72
  br label %bb23
bb23:
  %t122 = load ptr, ptr %l63, !tbaa !29
  %t123 = load i32, ptr %l72, !tbaa !23
  %t124 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %s3, ptr %t122, i32 %t123)
  store { i64, ptr } %t124, ptr %l73
  br label %bb24
bb24:
  %t125 = load { i64, ptr }, ptr %l73, !tbaa !27
  %t126 = extractvalue { i64, ptr } %t125, 0
  store i64 %t126, ptr %l12, !tbaa !24
  %t128 = load i64, ptr %l3, !tbaa !24
  %t129 = getelementptr %"compiler/check:narrowed", ptr %l11, i32 0, i32 3
  %t130 = load i64, ptr %t129, !tbaa !24
  %t133 = icmp sge i64 %t128, %t130
  br i1 %t133, label %bb25, label %bb26
bb25:
  %t135 = load i64, ptr %l3, !tbaa !24
  %t136 = getelementptr %"compiler/check:narrowed", ptr %l11, i32 0, i32 3
  %t137 = load i64, ptr %t136, !tbaa !24
  %t138 = load i64, ptr %l12, !tbaa !24
  %t141 = add i64 %t137, %t138
  %t144 = icmp slt i64 %t135, %t141
  store i1 %t144, ptr %l78, !tbaa !21
  br label %bb27
bb26:
  store i1 false, ptr %l78, !tbaa !21
  br label %bb27
bb27:
  %t146 = load i1, ptr %l78, !tbaa !21
  br i1 %t146, label %bb28, label %bb29
bb28:
  %t147 = load i64, ptr %l10, !tbaa !24
  call void @__olang_scope_close(ptr %s3)
  store i64 %t147, ptr %rv
  br label %ret
bb29:
  br label %bb30
bb30:
  call void @__olang_scope_close(ptr %s3)
  br label %bb31
bb31:
  %t149 = load i64, ptr %l8, !tbaa !24
  %t151 = add i64 %t149, 1
  store i64 %t151, ptr %l8, !tbaa !24
  br label %bb16
bb32:
  store i64 -1, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eneverNull(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l6 = alloca i32
  %l13 = alloca i1
  %l17 = alloca i1
  %l18 = alloca i1
  %l23 = alloca i1
  %l25 = alloca i1
  %l30 = alloca i1
  %l32 = alloca i1
  %l35 = alloca i32
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/check:Checker", ptr %t1, i32 0, i32 1
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t6 = getelementptr %"compiler/generic:Program", ptr %t4, i32 0, i32 2
  %t7 = load i32, ptr %l1, !tbaa !23
  %t10 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t6, i32 %t7)
  store i32 %t10, ptr %l6
  br label %bb1
bb1:
  %t11 = load i32, ptr %l6, !range !{i32 0, i32 33}
  %t13 = trunc i64 21 to i32
  %t14 = icmp eq i32 %t11, %t13
  br i1 %t14, label %bb2, label %bb3
bb2:
  %t16 = load ptr, ptr %l0, !tbaa !29
  %t18 = getelementptr %"compiler/check:Checker", ptr %t16, i32 0, i32 1
  %t19 = load ptr, ptr %t18, !tbaa !29
  %t21 = getelementptr %"compiler/generic:Program", ptr %t19, i32 0, i32 2
  %t22 = load i32, ptr %l1, !tbaa !23
  %t25 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eFuncNullable(ptr %v0, ptr %t21, i32 %t22)
  store i1 %t25, ptr %l13
  br label %bb4
bb3:
  br label %bb5
bb4:
  %t26 = load i1, ptr %l13, !tbaa !21
  %t27 = xor i1 %t26, true
  store i1 %t27, ptr %rv
  br label %ret
bb5:
  %t29 = load ptr, ptr %l0, !tbaa !29
  %t30 = load i32, ptr %l1, !tbaa !23
  %t33 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisRef(ptr %v0, ptr %t29, i32 %t30)
  store i1 %t33, ptr %l17
  br label %bb6
bb6:
  %t34 = load i1, ptr %l17, !tbaa !21
  br i1 %t34, label %bb7, label %bb8
bb7:
  %t35 = load ptr, ptr %l0, !tbaa !29
  %t37 = getelementptr %"compiler/check:Checker", ptr %t35, i32 0, i32 1
  %t38 = load ptr, ptr %t37, !tbaa !29
  %t40 = getelementptr %"compiler/generic:Program", ptr %t38, i32 0, i32 2
  %t41 = load i32, ptr %l1, !tbaa !23
  %t44 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsNullable(ptr %v0, ptr %t40, i32 %t41)
  store i1 %t44, ptr %l23
  br label %bb9
bb8:
  store i1 false, ptr %l18, !tbaa !21
  br label %bb10
bb9:
  %t45 = load i1, ptr %l23, !tbaa !21
  %t46 = xor i1 %t45, true
  store i1 %t46, ptr %l18, !tbaa !21
  br label %bb10
bb10:
  %t48 = load i1, ptr %l18, !tbaa !21
  br i1 %t48, label %bb11, label %bb12
bb11:
  %t49 = load ptr, ptr %l0, !tbaa !29
  %t51 = getelementptr %"compiler/check:Checker", ptr %t49, i32 0, i32 1
  %t52 = load ptr, ptr %t51, !tbaa !29
  %t54 = getelementptr %"compiler/generic:Program", ptr %t52, i32 0, i32 2
  %t55 = load i32, ptr %l1, !tbaa !23
  %t58 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eArrayRef(ptr %v0, ptr %t54, i32 %t55)
  store i1 %t58, ptr %l30
  br label %bb13
bb12:
  store i1 false, ptr %l25, !tbaa !21
  br label %bb14
bb13:
  %t59 = load i1, ptr %l30, !tbaa !21
  %t60 = xor i1 %t59, true
  store i1 %t60, ptr %l25, !tbaa !21
  br label %bb14
bb14:
  %t62 = load i1, ptr %l25, !tbaa !21
  br i1 %t62, label %bb15, label %bb16
bb15:
  %t63 = load ptr, ptr %l0, !tbaa !29
  %t64 = load i32, ptr %l1, !tbaa !23
  %t67 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ederef(ptr %v0, ptr %t63, i32 %t64)
  store i32 %t67, ptr %l35
  br label %bb17
bb16:
  store i1 false, ptr %l32, !tbaa !21
  br label %bb18
bb17:
  %t68 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t69 = load i32, ptr %l35, !tbaa !23
  %t71 = icmp ne i32 %t69, %t68
  store i1 %t71, ptr %l32, !tbaa !21
  br label %bb18
bb18:
  %t73 = load i1, ptr %l32, !tbaa !21
  store i1 %t73, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2enormalSet(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %lp2 = alloca ptr
  %l3 = alloca ptr
  %l4 = alloca i64
  %l5 = alloca i32
  %l6 = alloca i32
  %l7 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l9 = alloca i64
  %l11 = alloca i64
  %l16 = alloca i32
  %l17 = alloca ptr
  %l22 = alloca i32
  %l27 = alloca i64
  %l28 = alloca i32
  %rv = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2ector(ptr %v2, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1, ptr %l7
  br label %bb1
bb1:
  %t2 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 32, i64 8)
  store ptr %t2, ptr %lp2
  %t3 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l7
  %t4 = load ptr, ptr %lp2
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t3, ptr %t4
  store ptr %a1, ptr %l3, !tbaa !29
  store i64 0, ptr %l4, !tbaa !24
  br label %bb2
bb2:
  %t7 = load i64, ptr %l4, !tbaa !24
  store i64 %t7, ptr %l9, !tbaa !24
  %t8 = load ptr, ptr %l3, !tbaa !29
  %t10 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2eLen_3ccompiler_2ftypes_3aTypeId_3e(ptr %v1, ptr %t8)
  store i64 %t10, ptr %l11
  br label %bb3
bb3:
  %t11 = load i64, ptr %l9, !tbaa !24
  %t12 = load i64, ptr %l11, !tbaa !24
  %t13 = icmp slt i64 %t11, %t12
  %t15 = xor i1 %t13, true
  br i1 %t15, label %bb4, label %bb5
bb4:
  br label %bb16
bb5:
  br label %bb6
bb6:
  %t17 = load ptr, ptr %l3, !tbaa !29
  %t18 = load i64, ptr %l4, !tbaa !24
  %t21 = call i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2eAt_3ccompiler_2ftypes_3aTypeId_3e(ptr %v1, ptr %t17, i64 %t18)
  store i32 %t21, ptr %l16
  br label %bb7
bb7:
  %t22 = load i32, ptr %l16, !tbaa !23
  store i32 %t22, ptr %l5, !tbaa !23
  %t23 = load ptr, ptr %l0, !tbaa !29
  store ptr %t23, ptr %l17, !tbaa !29
  %t24 = load ptr, ptr %l0, !tbaa !29
  %t26 = getelementptr %"compiler/check:Checker", ptr %t24, i32 0, i32 1
  %t27 = load ptr, ptr %t26, !tbaa !29
  %t29 = getelementptr %"compiler/generic:Program", ptr %t27, i32 0, i32 2
  %t30 = load i32, ptr %l5, !tbaa !23
  %t33 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrOf(ptr %v0, ptr %t29, i32 %t30)
  store i32 %t33, ptr %l22
  br label %bb8
bb8:
  %t34 = load ptr, ptr %l0, !tbaa !29
  %t36 = getelementptr %"compiler/check:Checker", ptr %t34, i32 0, i32 1
  %t37 = load ptr, ptr %t36, !tbaa !29
  %t39 = getelementptr %"compiler/generic:Program", ptr %t37, i32 0, i32 2
  %t40 = load i32, ptr %l5, !tbaa !23
  %t43 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrMask(ptr %v0, ptr %t39, i32 %t40)
  store i64 %t43, ptr %l27
  br label %bb9
bb9:
  %t44 = load ptr, ptr %l17, !tbaa !29
  %t45 = load i32, ptr %l22, !tbaa !23
  %t46 = load i64, ptr %l27, !tbaa !65
  %t47 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eentryOf(ptr %v0, ptr %t44, i32 %t45, i64 %t46)
  store i32 %t47, ptr %l28
  br label %bb10
bb10:
  %t48 = load i32, ptr %l28, !tbaa !23
  store i32 %t48, ptr %l6, !tbaa !23
  %t49 = load i32, ptr %l6, !tbaa !23
  %t50 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t53 = icmp ne i32 %t49, %t50
  br i1 %t53, label %bb11, label %bb12
bb11:
  %t55 = load ptr, ptr %lp2
  %t56 = load i32, ptr %l6, !tbaa !23
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2ePush_3ccompiler_2ftypes_3aTypeId_3e(ptr %v2, ptr %t55, i32 %t56)
  br label %bb13
bb12:
  br label %bb14
bb13:
  br label %bb14
bb14:
  br label %bb15
bb15:
  %t59 = load i64, ptr %l4, !tbaa !24
  %t61 = add i64 %t59, 1
  store i64 %t61, ptr %l4, !tbaa !24
  br label %bb2
bb16:
  %t63 = load ptr, ptr %lp2
  %t64 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t63
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t64, ptr %rv
  br label %ret
ret:
  %rr = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %rv
  ret %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %rr
}

define dso_local i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eoverflowsF64(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca i32
  %l4 = alloca ptr
  %l5 = alloca ptr
  %l6 = alloca %"compiler/check:litv"
  %l7 = alloca %"compiler/check:litv"
  %l8 = alloca { ptr, ptr }
  %l9 = alloca ptr
  %l10 = alloca i1
  %l17 = alloca i1
  %l18 = alloca ptr
  %l19 = alloca i1
  %l34 = alloca %"compiler/check:litv"
  %l38 = alloca %"compiler/check:litv"
  %l42 = alloca i1
  %l43 = alloca i1
  %l46 = alloca i1
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
  store ptr %t1, ptr %l9, !tbaa !29
  store i1 false, ptr %l10, !tbaa !21
  %t2 = load ptr, ptr %l9, !tbaa !29
  %t3 = icmp ne ptr %t2, null
  br i1 %t3, label %bb1, label %bb2
bb1:
  %t5 = load ptr, ptr %l9, !tbaa !29
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 30}
  %t8 = icmp eq i64 %t6, 2
  store i1 %t8, ptr %l10, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l10, !tbaa !21
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
  %t20 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eoverflowsF64(ptr %v0, ptr %v1, ptr %t16, ptr %t17)
  store i1 %t20, ptr %l17
  br label %bb6
bb6:
  call void @__olang_scope_close(ptr %s0)
  %t21 = load i1, ptr %l17, !tbaa !21
  store i1 %t21, ptr %rv
  br label %ret
bb7:
  %t22 = load ptr, ptr %l1, !tbaa !29
  store ptr %t22, ptr %l18, !tbaa !29
  store i1 false, ptr %l19, !tbaa !21
  %t23 = load ptr, ptr %l18, !tbaa !29
  %t24 = icmp ne ptr %t23, null
  br i1 %t24, label %bb8, label %bb9
bb8:
  %t26 = load ptr, ptr %l18, !tbaa !29
  %t27 = load i64, ptr %t26, !range !{i64 0, i64 30}
  %t29 = icmp eq i64 %t27, 5
  store i1 %t29, ptr %l19, !tbaa !21
  br label %bb9
bb9:
  %t30 = load i1, ptr %l19, !tbaa !21
  br i1 %t30, label %bb10, label %bb11
bb10:
  %t31 = load ptr, ptr %l1, !tbaa !29
  %t33 = getelementptr { i64, [4 x i64] }, ptr %t31, i32 0, i32 1
  %t34 = getelementptr { %"compiler/source:Span", i32, ptr, ptr }, ptr %t33, i32 0, i32 1
  %t35 = load i32, ptr %t34, !range !{i32 0, i32 114}
  store i32 %t35, ptr %l3
  %t37 = load ptr, ptr %l1, !tbaa !29
  %t39 = getelementptr { i64, [4 x i64] }, ptr %t37, i32 0, i32 1
  %t40 = getelementptr { %"compiler/source:Span", i32, ptr, ptr }, ptr %t39, i32 0, i32 2
  %t41 = load ptr, ptr %t40
  store ptr %t41, ptr %l4, !tbaa !29
  %t43 = load ptr, ptr %l1, !tbaa !29
  %t45 = getelementptr { i64, [4 x i64] }, ptr %t43, i32 0, i32 1
  %t46 = getelementptr { %"compiler/source:Span", i32, ptr, ptr }, ptr %t45, i32 0, i32 3
  %t47 = load ptr, ptr %t46
  store ptr %t47, ptr %l5, !tbaa !29
  br label %bb12
bb11:
  br label %bb23
bb12:
  %t49 = load i32, ptr %l3, !range !{i32 0, i32 114}
  %t51 = trunc i64 72 to i32
  %t52 = icmp eq i32 %t49, %t51
  br i1 %t52, label %bb13, label %bb14
bb13:
  call void @__olang_scope_close(ptr %s0)
  store i1 false, ptr %rv
  br label %ret
bb14:
  br label %bb15
bb15:
  %t55 = load ptr, ptr %l0, !tbaa !29
  %t56 = load ptr, ptr %l4, !tbaa !29
  %t60 = call %"compiler/check:litv" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efold(ptr %v0, ptr %v1, ptr %t55, ptr %t56)
  store %"compiler/check:litv" %t60, ptr %l34
  br label %bb16
bb16:
  %t61 = load %"compiler/check:litv", ptr %l34
  store %"compiler/check:litv" %t61, ptr %l6
  %t62 = load ptr, ptr %l0, !tbaa !29
  %t63 = load ptr, ptr %l5, !tbaa !29
  %t67 = call %"compiler/check:litv" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efold(ptr %v0, ptr %v1, ptr %t62, ptr %t63)
  store %"compiler/check:litv" %t67, ptr %l38
  br label %bb17
bb17:
  %t68 = load %"compiler/check:litv", ptr %l38
  store %"compiler/check:litv" %t68, ptr %l7
  %t69 = insertvalue { ptr, ptr } undef, ptr @olang_lambda_31, 0
  %t70 = insertvalue { ptr, ptr } %t69, ptr null, 1
  store { ptr, ptr } %t70, ptr %l8
  %t72 = load { ptr, ptr }, ptr %l8
  %t73 = load %"compiler/check:litv", ptr %l6
  %t75 = extractvalue { ptr, ptr } %t72, 0
  %t76 = extractvalue { ptr, ptr } %t72, 1
  %t78 = call i1 %t75(ptr %t76, %"compiler/check:litv" %t73)
  store i1 %t78, ptr %l42
  br label %bb18
bb18:
  %t79 = load i1, ptr %l42, !tbaa !21
  br i1 %t79, label %bb19, label %bb20
bb19:
  %t80 = load { ptr, ptr }, ptr %l8
  %t81 = load %"compiler/check:litv", ptr %l7
  %t83 = extractvalue { ptr, ptr } %t80, 0
  %t84 = extractvalue { ptr, ptr } %t80, 1
  %t86 = call i1 %t83(ptr %t84, %"compiler/check:litv" %t81)
  store i1 %t86, ptr %l46
  br label %bb21
bb20:
  store i1 false, ptr %l43, !tbaa !21
  br label %bb22
bb21:
  %t87 = load i1, ptr %l46, !tbaa !21
  store i1 %t87, ptr %l43, !tbaa !21
  br label %bb22
bb22:
  call void @__olang_scope_close(ptr %s0)
  %t88 = load i1, ptr %l43, !tbaa !21
  store i1 %t88, ptr %rv
  br label %ret
bb23:
  br i1 true, label %bb24, label %bb25
bb24:
  br label %bb26
bb25:
  br label %bb27
bb26:
  call void @__olang_scope_close(ptr %s0)
  store i1 true, ptr %rv
  br label %ret
bb27:
  call void @__olang_check_failed(ptr @olang_loc_2c067c0920238e9c_6231d620e5a2e328)
  unreachable
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2epayloadPattern(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %v5, ptr %a0, %"compiler/source:Span" %a1, ptr %a2, i64 %a3, { i64, ptr } %a4, ptr %a5, i32 %a6, ptr %a7, i64 %a8) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/source:Span"
  %l3 = alloca i64
  %l5 = alloca ptr
  %l6 = alloca i32
  %l9 = alloca i32
  %l10 = alloca { i64, ptr }
  %l11 = alloca ptr
  %l12 = alloca { i64, ptr }
  %l13 = alloca ptr
  %lp15 = alloca ptr
  %l16 = alloca i64
  %l17 = alloca i64
  %l18 = alloca i64
  %l19 = alloca i64
  %l20 = alloca i64
  %l21 = alloca i64
  %lp22 = alloca ptr
  %l25 = alloca i32
  %l26 = alloca { i64, ptr }
  %l27 = alloca ptr
  %l28 = alloca %"compiler/source:Span"
  %l29 = alloca { i64, ptr }
  %l34 = alloca ptr
  %l35 = alloca { i64, ptr }
  %l36 = alloca i32
  %l38 = alloca i1
  %l42 = alloca ptr
  %l47 = alloca ptr
  %l50 = alloca ptr
  %l53 = alloca ptr
  %l58 = alloca i32
  %l59 = alloca i32
  %l60 = alloca { i64, ptr }
  %l64 = alloca i1
  %l65 = alloca %"compiler/source:Span"
  %l66 = alloca i32
  %l70 = alloca ptr
  %l75 = alloca ptr
  %l80 = alloca i32
  %l81 = alloca { i64, ptr }
  %l82 = alloca { i64, ptr }
  %l85 = alloca %"compiler/source:Span"
  %l86 = alloca i32
  %l87 = alloca ptr
  %l91 = alloca %"compiler/typed:Payload"
  %l99 = alloca i64
  %l102 = alloca i64
  %l120 = alloca { i64, ptr }
  %l123 = alloca i1
  %l124 = alloca { i64, ptr }
  %l127 = alloca %"compiler/source:Span"
  %l128 = alloca { i64, ptr }
  %l134 = alloca ptr
  %l135 = alloca %"compiler/source:Span"
  %l136 = alloca ptr
  %l138 = alloca { i64, ptr }
  %l142 = alloca { i64, ptr }
  %l147 = alloca ptr
  %l148 = alloca ptr
  %s0 = alloca %olang.scope
  %rv = alloca ptr
  %t98 = alloca { i64, [4 x i64] }, align 8
  %t153 = alloca { i64, [4 x i64] }, align 8
  %t244 = alloca { i64, [4 x i64] }, align 8
  store ptr %a0, ptr %l0
  store %"compiler/source:Span" %a1, ptr %l1
  store i64 %a3, ptr %l3
  store ptr %a5, ptr %l5
  store i32 %a6, ptr %l6
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load i32, ptr %l6, !tbaa !23
  %t5 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ederef(ptr %v0, ptr %t1, i32 %t2)
  store i32 %t5, ptr %l25
  br label %bb1
bb1:
  %t6 = load i32, ptr %l25, !tbaa !23
  store i32 %t6, ptr %l9, !tbaa !23
  %t7 = load ptr, ptr %l0, !tbaa !29
  store ptr %t7, ptr %l27, !tbaa !29
  %t8 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t8, ptr %l28
  store { i64, ptr } %a4, ptr %l29, !tbaa !27
  %t10 = load ptr, ptr %l0, !tbaa !29
  %t11 = load i32, ptr %l9, !tbaa !23
  %t12 = load i64, ptr %l3, !tbaa !24
  %t18 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecaseFields(ptr %v0, ptr %v1, ptr %v0, ptr %t10, i32 %t11, i64 %t12, ptr %a2)
  store ptr %t18, ptr %l34
  br label %bb2
bb2:
  %t19 = load ptr, ptr %l27, !tbaa !29
  %t20 = load %"compiler/source:Span", ptr %l28
  %t21 = load { i64, ptr }, ptr %l29, !tbaa !27
  %t22 = load ptr, ptr %l34, !tbaa !29
  %t23 = call { i32, { i64, ptr } } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ebyField(ptr %v0, ptr %v2, ptr %v0, ptr %v5, ptr %t19, %"compiler/source:Span" %t20, { i64, ptr } %t21, ptr %t22, i1 true)
  %t24 = extractvalue { i32, { i64, ptr } } %t23, 1
  %t25 = extractvalue { i32, { i64, ptr } } %t23, 0
  store i32 %t25, ptr %l36
  %t26 = icmp ne i32 %t25, 0
  br i1 %t26, label %bb4, label %ok.27, !prof !99
ok.27:
  store { i64, ptr } %t24, ptr %l35
  br label %bb3
bb3:
  %t28 = load { i64, ptr }, ptr %l35, !tbaa !27
  store { i64, ptr } %t28, ptr %l26, !tbaa !27
  br label %bb7
bb4:
  %t29 = load i32, ptr %l36, !tbaa !23
  %t30 = ashr i32 %t29, 16
  %t32 = icmp eq i32 %t30, 1
  store i1 %t32, ptr %l38, !tbaa !21
  br label %bb5
bb5:
  %t33 = load ptr, ptr %l0, !tbaa !29
  %t34 = load %"compiler/source:Span", ptr %l1
  %t35 = load i32, ptr @G_2ecompiler_2ftypes_2eBoolT, !tbaa !23
  %t39 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elit(ptr %v0, ptr %v5, ptr %t33, %"compiler/source:Span" %t34, i32 %t35, i64 0)
  store ptr %t39, ptr %l42
  br label %bb6
bb6:
  call void @__olang_scope_close(ptr %s0)
  %t40 = load ptr, ptr %l42, !tbaa !29
  store ptr %t40, ptr %rv
  br label %ret
bb7:
  %t41 = load { i64, ptr }, ptr %l26, !tbaa !27
  store { i64, ptr } %t41, ptr %l10, !tbaa !27
  %t42 = load ptr, ptr %l0, !tbaa !29
  %t43 = load %"compiler/source:Span", ptr %l1
  %t44 = load ptr, ptr %l5, !tbaa !29
  %t45 = load i64, ptr %l3, !tbaa !24
  %t50 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisCase(ptr %v0, ptr %v3, ptr %v5, ptr %t42, %"compiler/source:Span" %t43, ptr %t44, i64 %t45)
  store ptr %t50, ptr %l47
  br label %bb8
bb8:
  %t51 = load ptr, ptr %l47, !tbaa !29
  store ptr %t51, ptr %l11, !tbaa !29
  %t52 = load ptr, ptr %l0, !tbaa !29
  %t54 = getelementptr %"compiler/check:Checker", ptr %t52, i32 0, i32 1
  %t55 = load ptr, ptr %t54, !tbaa !29
  %t57 = getelementptr %"compiler/generic:Program", ptr %t55, i32 0, i32 2
  store ptr %t57, ptr %l50, !tbaa !29
  %t58 = load ptr, ptr %l0, !tbaa !29
  %t60 = getelementptr %"compiler/check:Checker", ptr %t58, i32 0, i32 1
  %t61 = load ptr, ptr %t60, !tbaa !29
  %t63 = getelementptr %"compiler/generic:Program", ptr %t61, i32 0, i32 2
  store ptr %t63, ptr %l53, !tbaa !29
  %t64 = load ptr, ptr %l0, !tbaa !29
  %t66 = getelementptr %"compiler/check:Checker", ptr %t64, i32 0, i32 1
  %t67 = load ptr, ptr %t66, !tbaa !29
  %t68 = load i32, ptr %l9, !tbaa !23
  %t69 = load i64, ptr %l3, !tbaa !24
  %t73 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eCaseSig(ptr %v0, ptr %t67, i32 %t68, i64 %t69)
  store i32 %t73, ptr %l58
  br label %bb9
bb9:
  %t74 = load ptr, ptr %l53, !tbaa !29
  %t75 = load i32, ptr %l58, !tbaa !23
  %t76 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParams(ptr %v0, ptr %t74, i32 %t75)
  store i32 %t76, ptr %l59
  br label %bb10
bb10:
  %t77 = load ptr, ptr %l50, !tbaa !29
  %t78 = load i32, ptr %l59, !tbaa !23
  %t79 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t77, i32 %t78)
  store { i64, ptr } %t79, ptr %l60
  br label %bb11
bb11:
  %t80 = load { i64, ptr }, ptr %l60, !tbaa !27
  store { i64, ptr } %t80, ptr %l12, !tbaa !27
  %t81 = load ptr, ptr %l5, !tbaa !29
  store ptr %t81, ptr %l13, !tbaa !29
  %t83 = load ptr, ptr %l0, !tbaa !29
  %t84 = load i32, ptr %l6, !tbaa !23
  %t87 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisRef(ptr %v0, ptr %t83, i32 %t84)
  store i1 %t87, ptr %l64
  br label %bb12
bb12:
  %t88 = load i1, ptr %l64, !tbaa !21
  br i1 %t88, label %bb13, label %bb14
bb13:
  %t89 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t89, ptr %l65
  %t90 = load i32, ptr %l9, !tbaa !23
  store i32 %t90, ptr %l66, !tbaa !23
  %t91 = load ptr, ptr %l0, !tbaa !29
  %t92 = load %"compiler/source:Span", ptr %l1
  %t93 = load ptr, ptr %l5, !tbaa !29
  %t97 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eread(ptr %v0, ptr %v3, ptr %v5, ptr %t91, %"compiler/source:Span" %t92, ptr %t93)
  store ptr %t97, ptr %l70
  br label %bb15
bb14:
  br label %bb16
bb15:
  store { i64, [4 x i64] } zeroinitializer, ptr %t98
  %t99 = getelementptr { i64, [4 x i64] }, ptr %t98, i32 0, i32 0
  store i64 2, ptr %t99
  %t100 = load %"compiler/source:Span", ptr %l65
  %t101 = insertvalue { %"compiler/source:Span", i32, ptr } undef, %"compiler/source:Span" %t100, 0
  %t102 = load i32, ptr %l66, !tbaa !23
  %t103 = insertvalue { %"compiler/source:Span", i32, ptr } %t101, i32 %t102, 1
  %t104 = load ptr, ptr %l70, !tbaa !29
  %t105 = insertvalue { %"compiler/source:Span", i32, ptr } %t103, ptr %t104, 2
  %t106 = getelementptr { i64, [4 x i64] }, ptr %t98, i32 0, i32 1
  store { %"compiler/source:Span", i32, ptr } %t105, ptr %t106
  %t107 = load { i64, [4 x i64] }, ptr %t98
  %t109 = call ptr @__olang_scope_alloc_a(ptr %v5, i64 40, i64 8)
  store { i64, [4 x i64] } %t107, ptr %t109
  store ptr %t109, ptr %l13, !tbaa !29
  br label %bb16
bb16:
  %t111 = load ptr, ptr %l0, !tbaa !29
  %t113 = getelementptr %"compiler/check:Checker", ptr %t111, i32 0, i32 1
  %t114 = load ptr, ptr %t113, !tbaa !29
  %t116 = getelementptr %"compiler/generic:Program", ptr %t114, i32 0, i32 2
  store ptr %t116, ptr %l75, !tbaa !29
  %t117 = load ptr, ptr %l0, !tbaa !29
  %t119 = getelementptr %"compiler/check:Checker", ptr %t117, i32 0, i32 1
  %t120 = load ptr, ptr %t119, !tbaa !29
  %t122 = getelementptr %"compiler/generic:Program", ptr %t120, i32 0, i32 2
  %t123 = load i32, ptr %l9, !tbaa !23
  %t126 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eCases(ptr %v0, ptr %t122, i32 %t123)
  store i32 %t126, ptr %l80
  br label %bb17
bb17:
  %t127 = load ptr, ptr %l75, !tbaa !29
  %t128 = load i32, ptr %l80, !tbaa !23
  %t129 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %s0, ptr %t127, i32 %t128)
  store { i64, ptr } %t129, ptr %l81
  br label %bb18
bb18:
  %t130 = load { i64, ptr }, ptr %l81, !tbaa !27
  store { i64, ptr } %t130, ptr %l82, !tbaa !27
  %t131 = load i64, ptr %l3, !tbaa !24
  %t133 = getelementptr { i64, ptr }, ptr %l82, i32 0, i32 1
  %t134 = load ptr, ptr %t133, !tbaa !27
  %t135 = getelementptr i32, ptr %t134, i64 %t131
  %t136 = load i32, ptr %t135, !tbaa !33
  %t138 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t138, ptr %l85
  store i32 %t136, ptr %l86, !tbaa !23
  %t140 = load ptr, ptr %l13, !tbaa !29
  store ptr %t140, ptr %l87, !tbaa !29
  %t141 = load i64, ptr %l3, !tbaa !24
  %t142 = load ptr, ptr %l87, !tbaa !29
  %t143 = call ptr @__olang_scope_of(ptr %t142, ptr null)
  %t144 = ptrtoint ptr %t143 to i64
  %t146 = inttoptr i64 %t144 to ptr
  %t147 = load ptr, ptr %l87, !tbaa !29
  %t150 = call %"compiler/typed:Payload" @compiler_2ftyped_3aPayload_2ector(ptr %t146, ptr %v5, ptr %t147, i64 %t141, i32 0)
  store %"compiler/typed:Payload" %t150, ptr %l91
  br label %bb19
bb19:
  %t151 = load %"compiler/typed:Payload", ptr %l91
  %t152 = call ptr @__olang_scope_alloc_a(ptr %v5, i64 24, i64 8)
  store %"compiler/typed:Payload" %t151, ptr %t152
  store { i64, [4 x i64] } zeroinitializer, ptr %t153
  %t154 = getelementptr { i64, [4 x i64] }, ptr %t153, i32 0, i32 0
  store i64 5, ptr %t154
  %t155 = load %"compiler/source:Span", ptr %l85
  %t156 = insertvalue { %"compiler/source:Span", i32, ptr } undef, %"compiler/source:Span" %t155, 0
  %t157 = load i32, ptr %l86, !tbaa !23
  %t158 = insertvalue { %"compiler/source:Span", i32, ptr } %t156, i32 %t157, 1
  %t160 = insertvalue { %"compiler/source:Span", i32, ptr } %t158, ptr %t152, 2
  %t161 = getelementptr { i64, [4 x i64] }, ptr %t153, i32 0, i32 1
  store { %"compiler/source:Span", i32, ptr } %t160, ptr %t161
  %t162 = load { i64, [4 x i64] }, ptr %t153
  %t163 = call ptr @__olang_scope_alloc_a(ptr %v5, i64 40, i64 8)
  store ptr %t163, ptr %lp15
  %t165 = load ptr, ptr %lp15
  store { i64, [4 x i64] } %t162, ptr %t165
  store i64 0, ptr %l16, !tbaa !24
  %t166 = load { i64, ptr }, ptr %l10, !tbaa !27
  %t168 = extractvalue { i64, ptr } %t166, 0
  store i64 %t168, ptr %l17, !tbaa !24
  store i64 1, ptr %l18, !tbaa !24
  %t170 = load i64, ptr %l17, !tbaa !24
  %t171 = load i64, ptr %l16, !tbaa !24
  %t174 = icmp sgt i64 %t170, %t171
  br i1 %t174, label %bb20, label %bb21
bb20:
  %t176 = load i64, ptr %l18, !tbaa !24
  %t178 = icmp sgt i64 %t176, 0
  br i1 %t178, label %bb22, label %bb23
bb21:
  store i64 0, ptr %l99, !tbaa !24
  br label %bb25
bb22:
  %t180 = load i64, ptr %l17, !tbaa !24
  %t181 = load i64, ptr %l16, !tbaa !24
  %t184 = sub i64 %t180, %t181
  %t185 = load i64, ptr %l18, !tbaa !24
  %t188 = add i64 %t184, %t185
  %t190 = sub i64 %t188, 1
  %t191 = load i64, ptr %l18, !tbaa !24
  %t194 = sdiv i64 %t190, %t191
  store i64 %t194, ptr %l102, !tbaa !24
  br label %bb24
bb23:
  store i64 0, ptr %l102, !tbaa !24
  br label %bb24
bb24:
  %t196 = load i64, ptr %l102, !tbaa !24
  store i64 %t196, ptr %l99, !tbaa !24
  br label %bb25
bb25:
  %t197 = load i64, ptr %l99, !tbaa !24
  store i64 %t197, ptr %l19, !tbaa !24
  store i64 0, ptr %l20, !tbaa !24
  br label %bb26
bb26:
  %t198 = load i64, ptr %l20, !tbaa !24
  %t199 = load i64, ptr %l19, !tbaa !24
  %t202 = icmp slt i64 %t198, %t199
  %t204 = xor i1 %t202, true
  br i1 %t204, label %bb27, label %bb28
bb27:
  br label %bb38
bb28:
  br label %bb29
bb29:
  %t206 = load i64, ptr %l16, !tbaa !24
  %t207 = load i64, ptr %l20, !tbaa !24
  %t208 = load i64, ptr %l18, !tbaa !24
  %t211 = mul i64 %t207, %t208
  %t214 = add i64 %t206, %t211
  store i64 %t214, ptr %l21, !tbaa !24
  %t216 = load { i64, ptr }, ptr %l10, !tbaa !27
  store { i64, ptr } %t216, ptr %l120, !tbaa !27
  %t217 = load i64, ptr %l21, !tbaa !24
  %t219 = getelementptr { i64, ptr }, ptr %l120, i32 0, i32 1
  %t220 = load ptr, ptr %t219, !tbaa !27
  %t221 = getelementptr ptr, ptr %t220, i64 %t217
  %t222 = load ptr, ptr %t221, !tbaa !39
  %t224 = call i1 @compiler_2fcheck_2eisWild(ptr %v5, ptr %t222)
  store i1 %t224, ptr %l123
  br label %bb30
bb30:
  %t225 = load i1, ptr %l123, !tbaa !21
  br i1 %t225, label %bb31, label %bb32
bb31:
  br label %bb37
bb32:
  br label %bb33
bb33:
  %t226 = load { i64, ptr }, ptr %l10, !tbaa !27
  store { i64, ptr } %t226, ptr %l124, !tbaa !27
  %t227 = load i64, ptr %l21, !tbaa !24
  %t229 = getelementptr { i64, ptr }, ptr %l124, i32 0, i32 1
  %t230 = load ptr, ptr %t229, !tbaa !27
  %t231 = getelementptr ptr, ptr %t230, i64 %t227
  %t232 = load ptr, ptr %t231, !tbaa !39
  %t234 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aPattern_2eSpan(ptr %v5, ptr %t232)
  store %"compiler/source:Span" %t234, ptr %l127
  br label %bb34
bb34:
  %t235 = load { i64, ptr }, ptr %l12, !tbaa !27
  store { i64, ptr } %t235, ptr %l128, !tbaa !27
  %t236 = load i64, ptr %l21, !tbaa !24
  %t238 = getelementptr { i64, ptr }, ptr %l128, i32 0, i32 1
  %t239 = load ptr, ptr %t238, !tbaa !27
  %t240 = getelementptr i32, ptr %t239, i64 %t236
  %t241 = load i32, ptr %t240, !tbaa !33
  %t242 = load ptr, ptr %lp15
  %t243 = load i64, ptr %l21, !tbaa !24
  store { i64, [4 x i64] } zeroinitializer, ptr %t244
  %t245 = getelementptr { i64, [4 x i64] }, ptr %t244, i32 0, i32 0
  store i64 3, ptr %t245
  %t246 = load %"compiler/source:Span", ptr %l127
  %t247 = insertvalue { %"compiler/source:Span", i32, ptr, i64 } undef, %"compiler/source:Span" %t246, 0
  %t249 = insertvalue { %"compiler/source:Span", i32, ptr, i64 } %t247, i32 %t241, 1
  %t251 = insertvalue { %"compiler/source:Span", i32, ptr, i64 } %t249, ptr %t242, 2
  %t253 = insertvalue { %"compiler/source:Span", i32, ptr, i64 } %t251, i64 %t243, 3
  %t254 = getelementptr { i64, [4 x i64] }, ptr %t244, i32 0, i32 1
  store { %"compiler/source:Span", i32, ptr, i64 } %t253, ptr %t254
  %t255 = load { i64, [4 x i64] }, ptr %t244
  %t256 = call ptr @__olang_scope_alloc_a(ptr %v5, i64 40, i64 8)
  store ptr %t256, ptr %lp22
  %t258 = load ptr, ptr %lp22
  store { i64, [4 x i64] } %t255, ptr %t258
  %t259 = load ptr, ptr %l0, !tbaa !29
  store ptr %t259, ptr %l134, !tbaa !29
  %t260 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t260, ptr %l135
  %t261 = load ptr, ptr %l11, !tbaa !29
  store ptr %t261, ptr %l136, !tbaa !29
  %t262 = load ptr, ptr %l0, !tbaa !29
  %t263 = load { i64, ptr }, ptr %l10, !tbaa !27
  store { i64, ptr } %t263, ptr %l138, !tbaa !27
  %t264 = load i64, ptr %l21, !tbaa !24
  %t266 = getelementptr { i64, ptr }, ptr %l138, i32 0, i32 1
  %t267 = load ptr, ptr %t266, !tbaa !27
  %t268 = getelementptr ptr, ptr %t267, i64 %t264
  %t269 = load ptr, ptr %t268, !tbaa !39
  %t270 = load ptr, ptr %lp22
  %t271 = load { i64, ptr }, ptr %l12, !tbaa !27
  store { i64, ptr } %t271, ptr %l142, !tbaa !27
  %t272 = load i64, ptr %l21, !tbaa !24
  %t274 = getelementptr { i64, ptr }, ptr %l142, i32 0, i32 1
  %t275 = load ptr, ptr %t274, !tbaa !27
  %t276 = getelementptr i32, ptr %t275, i64 %t272
  %t277 = load i32, ptr %t276, !tbaa !33
  %t286 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2epattern(ptr %v0, ptr %v5, ptr %v5, ptr %v4, ptr %v5, ptr %t262, ptr %t269, ptr %t270, i32 %t277, ptr %a7, i64 %a8)
  store ptr %t286, ptr %l147
  br label %bb35
bb35:
  %t287 = load ptr, ptr %l134, !tbaa !29
  %t288 = load %"compiler/source:Span", ptr %l135
  %t289 = load ptr, ptr %l136, !tbaa !29
  %t290 = load ptr, ptr %l147, !tbaa !29
  %t291 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eand2(ptr %v0, ptr %v5, ptr %v5, ptr %v5, ptr %t287, %"compiler/source:Span" %t288, ptr %t289, ptr %t290)
  store ptr %t291, ptr %l148
  br label %bb36
bb36:
  %t292 = load ptr, ptr %l148, !tbaa !29
  store ptr %t292, ptr %l11, !tbaa !29
  br label %bb37
bb37:
  %t293 = load i64, ptr %l20, !tbaa !24
  %t295 = add i64 %t293, 1
  store i64 %t295, ptr %l20, !tbaa !24
  br label %bb26
bb38:
  %t297 = load ptr, ptr %l11, !tbaa !29
  call void @__olang_scope_close(ptr %s0)
  store ptr %t297, ptr %rv
  br label %ret
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

define dso_local i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2epreludeForeign(ptr %v0, ptr %v1, ptr %a0, i32 %a1, { i64, ptr } %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l4 = alloca i32
  %l7 = alloca i1
  %l14 = alloca i32
  %l19 = alloca i32
  %l20 = alloca ptr
  %l25 = alloca i32
  %l26 = alloca { i64, ptr }
  %l28 = alloca i1
  %l29 = alloca i1
  %l33 = alloca ptr
  %l38 = alloca i64
  %l39 = alloca ptr
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load i32, ptr %l1, !tbaa !23
  %t5 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eforeignRef(ptr %v0, ptr %t1, i32 %t2)
  store i1 %t5, ptr %l7
  br label %bb1
bb1:
  %t6 = load i1, ptr %l7, !tbaa !21
  %t7 = xor i1 %t6, true
  br i1 %t7, label %bb2, label %bb3
bb2:
  store i1 false, ptr %rv
  br label %ret
bb3:
  br label %bb4
bb4:
  %t10 = load ptr, ptr %l0, !tbaa !29
  %t12 = getelementptr %"compiler/check:Checker", ptr %t10, i32 0, i32 1
  %t13 = load ptr, ptr %t12, !tbaa !29
  %t15 = getelementptr %"compiler/generic:Program", ptr %t13, i32 0, i32 2
  %t16 = load i32, ptr %l1, !tbaa !23
  %t19 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eReferent(ptr %v0, ptr %t15, i32 %t16)
  store i32 %t19, ptr %l14
  br label %bb5
bb5:
  %t20 = load i32, ptr %l14, !tbaa !23
  %t21 = load ptr, ptr %l0, !tbaa !29
  %t23 = getelementptr %"compiler/check:Checker", ptr %t21, i32 0, i32 1
  %t24 = load ptr, ptr %t23, !tbaa !29
  %t26 = getelementptr %"compiler/generic:Program", ptr %t24, i32 0, i32 2
  %t30 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %t26, i32 %t20)
  store i32 %t30, ptr %l19
  br label %bb6
bb6:
  %t31 = load i32, ptr %l19, !tbaa !23
  store i32 %t31, ptr %l4, !tbaa !23
  %t32 = load ptr, ptr %l0, !tbaa !29
  store ptr %t32, ptr %l20, !tbaa !29
  %t33 = load ptr, ptr %l0, !tbaa !29
  %t35 = getelementptr %"compiler/check:Checker", ptr %t33, i32 0, i32 1
  %t36 = load ptr, ptr %t35, !tbaa !29
  %t38 = getelementptr %"compiler/generic:Program", ptr %t36, i32 0, i32 2
  %t39 = load i32, ptr %l4, !tbaa !23
  %t42 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclName(ptr %v0, ptr %t38, i32 %t39)
  store i32 %t42, ptr %l25
  br label %bb7
bb7:
  %t43 = load ptr, ptr %l20, !tbaa !29
  %t44 = load i32, ptr %l25, !tbaa !23
  %t45 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %v0, ptr %t43, i32 %t44)
  store { i64, ptr } %t45, ptr %l26
  br label %bb8
bb8:
  %t47 = load { i64, ptr }, ptr %l26, !tbaa !27
  %t49 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %v1, { i64, ptr } %t47, { i64, ptr } %a2)
  store i1 %t49, ptr %l28
  br label %bb9
bb9:
  %t50 = load i1, ptr %l28, !tbaa !21
  br i1 %t50, label %bb10, label %bb11
bb10:
  %t51 = load ptr, ptr %l0, !tbaa !29
  %t53 = getelementptr %"compiler/check:Checker", ptr %t51, i32 0, i32 1
  %t54 = load ptr, ptr %t53, !tbaa !29
  %t56 = getelementptr %"compiler/generic:Program", ptr %t54, i32 0, i32 0
  %t57 = load ptr, ptr %t56, !tbaa !29
  %t59 = getelementptr %"compiler/load:Loader", ptr %t57, i32 0, i32 10
  store ptr %t59, ptr %l33, !tbaa !29
  %t60 = load ptr, ptr %l0, !tbaa !29
  %t62 = getelementptr %"compiler/check:Checker", ptr %t60, i32 0, i32 1
  %t63 = load ptr, ptr %t62, !tbaa !29
  %t65 = getelementptr %"compiler/generic:Program", ptr %t63, i32 0, i32 2
  %t66 = load i32, ptr %l4, !tbaa !23
  %t69 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclModule(ptr %v0, ptr %t65, i32 %t66)
  store i64 %t69, ptr %l38
  br label %bb12
bb11:
  store i1 false, ptr %l29, !tbaa !21
  br label %bb14
bb12:
  %t70 = load ptr, ptr %l33, !tbaa !29
  %t71 = load i64, ptr %l38, !tbaa !24
  %t72 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H7bcf2aeb09afa796f4333e6ec8c3f63f(ptr %v0, ptr %v0, ptr %t70, i64 %t71)
  store ptr %t72, ptr %l39
  br label %bb13
bb13:
  %t73 = load ptr, ptr %l39, !tbaa !29
  %t75 = getelementptr %"compiler/load:Module", ptr %t73, i32 0, i32 3
  %t76 = load i1, ptr %t75, !tbaa !21
  store i1 %t76, ptr %l29, !tbaa !21
  br label %bb14
bb14:
  %t78 = load i1, ptr %l29, !tbaa !21
  store i1 %t78, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ereflKeeps(ptr %v0, ptr %v1, ptr %a0, ptr %a1, %"compiler/check:reflList" %a2, i64 %a3, i64 %a4) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l5 = alloca i32
  %l6 = alloca i32
  %l7 = alloca i64
  %l8 = alloca ptr
  %l10 = alloca i32
  %l14 = alloca i32
  %l15 = alloca i32
  %l16 = alloca ptr
  %l18 = alloca i32
  %l21 = alloca ptr
  %l23 = alloca i32
  %l25 = alloca i32
  %l26 = alloca i32
  %l30 = alloca i64
  %l41 = alloca ptr
  %l47 = alloca %"compiler/source:Span"
  %l48 = alloca %"compiler/diagmsg:Msg"
  %l49 = alloca i64
  %s1 = alloca %olang.scope
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1, ptr %l8, !tbaa !29
  %t2 = load ptr, ptr %l1, !tbaa !29
  %t4 = getelementptr %"compiler/ast:Compr", ptr %t2, i32 0, i32 3
  %t5 = load i32, ptr %t4, !tbaa !23
  store i32 %t5, ptr %l10, !tbaa !23
  %t6 = load ptr, ptr %l0, !tbaa !29
  %t12 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2edescriptor(ptr %v0, ptr %t6, %"compiler/check:reflList" %a2, i64 %a3)
  store i32 %t12, ptr %l14
  br label %bb1
bb1:
  %t13 = load ptr, ptr %l8, !tbaa !29
  %t14 = load i32, ptr %l10, !tbaa !23
  %t15 = load i32, ptr %l14, !tbaa !23
  %t16 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ereflBind(ptr %v0, ptr %t13, i32 %t14, i32 %t15)
  store i32 %t16, ptr %l15
  br label %bb2
bb2:
  %t17 = load i32, ptr %l15, !tbaa !23
  store i32 %t17, ptr %l5, !tbaa !23
  %t18 = load ptr, ptr %l0, !tbaa !29
  store ptr %t18, ptr %l16, !tbaa !29
  %t19 = load ptr, ptr %l1, !tbaa !29
  %t21 = getelementptr %"compiler/ast:Compr", ptr %t19, i32 0, i32 2
  %t22 = load i32, ptr %t21, !tbaa !23
  store i32 %t22, ptr %l18, !tbaa !23
  %t23 = load ptr, ptr %l0, !tbaa !29
  %t25 = getelementptr %"compiler/check:Checker", ptr %t23, i32 0, i32 1
  %t26 = load ptr, ptr %t25, !tbaa !29
  %t28 = getelementptr %"compiler/generic:Program", ptr %t26, i32 0, i32 2
  store ptr %t28, ptr %l21, !tbaa !29
  %t29 = load ptr, ptr %l0, !tbaa !29
  %t31 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ei64(ptr %v0, ptr %t29)
  store i32 %t31, ptr %l23
  br label %bb3
bb3:
  %t33 = load ptr, ptr %l21, !tbaa !29
  %t34 = load i32, ptr %l23, !tbaa !23
  %t36 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eConst(ptr %v0, ptr %t33, i32 %t34, i64 %a4)
  store i32 %t36, ptr %l25
  br label %bb4
bb4:
  %t37 = load ptr, ptr %l16, !tbaa !29
  %t38 = load i32, ptr %l18, !tbaa !23
  %t39 = load i32, ptr %l25, !tbaa !23
  %t40 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ereflBind(ptr %v0, ptr %t37, i32 %t38, i32 %t39)
  store i32 %t40, ptr %l26
  br label %bb5
bb5:
  %t41 = load i32, ptr %l26, !tbaa !23
  store i32 %t41, ptr %l6, !tbaa !23
  %t42 = load ptr, ptr %l0, !tbaa !29
  %t43 = load ptr, ptr %l1, !tbaa !29
  %t45 = getelementptr %"compiler/ast:Compr", ptr %t43, i32 0, i32 5
  %t46 = load ptr, ptr %t45, !tbaa !29
  %t49 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ereflDecide(ptr %v0, ptr %v1, ptr %t42, ptr %t46)
  store i64 %t49, ptr %l30
  br label %bb6
bb6:
  %t50 = load i64, ptr %l30, !tbaa !24
  store i64 %t50, ptr %l7, !tbaa !24
  %t51 = load ptr, ptr %l0, !tbaa !29
  %t52 = load ptr, ptr %l1, !tbaa !29
  %t54 = getelementptr %"compiler/ast:Compr", ptr %t52, i32 0, i32 2
  %t55 = load i32, ptr %t54, !tbaa !23
  %t56 = load i32, ptr %l6, !tbaa !23
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ereflUnbind(ptr %v0, ptr %t51, i32 %t55, i32 %t56)
  br label %bb7
bb7:
  %t60 = load ptr, ptr %l0, !tbaa !29
  %t61 = load ptr, ptr %l1, !tbaa !29
  %t63 = getelementptr %"compiler/ast:Compr", ptr %t61, i32 0, i32 3
  %t64 = load i32, ptr %t63, !tbaa !23
  %t65 = load i32, ptr %l5, !tbaa !23
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ereflUnbind(ptr %v0, ptr %t60, i32 %t64, i32 %t65)
  br label %bb8
bb8:
  %t69 = load i64, ptr %l7, !tbaa !24
  %t71 = icmp slt i64 %t69, 0
  br i1 %t71, label %bb9, label %bb10
bb9:
  store %olang.scope zeroinitializer, ptr %s1
  %t73 = load ptr, ptr %l0, !tbaa !29
  store ptr %t73, ptr %l41, !tbaa !29
  %t74 = load ptr, ptr %l1, !tbaa !29
  %t76 = getelementptr %"compiler/ast:Compr", ptr %t74, i32 0, i32 5
  %t77 = load ptr, ptr %t76, !tbaa !29
  %t79 = icmp eq ptr %t77, null
  br i1 %t79, label %bb11, label %bb12
bb10:
  br label %bb17
bb11:
  call void @__olang_check_failed(ptr @olang_loc_320f9d8592ce2991_bf25bbc6142ecf8d)
  unreachable
bb12:
  br label %bb13
bb13:
  %t81 = load ptr, ptr %l1, !tbaa !29
  %t83 = getelementptr %"compiler/ast:Compr", ptr %t81, i32 0, i32 5
  %t84 = load ptr, ptr %t83, !tbaa !29
  %t86 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v1, ptr %t84)
  store %"compiler/source:Span" %t86, ptr %l47
  br label %bb14
bb14:
  %t87 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eReflFilterUndecided(ptr %s1)
  store %"compiler/diagmsg:Msg" %t87, ptr %l48
  br label %bb15
bb15:
  %t88 = load ptr, ptr %l41, !tbaa !29
  %t89 = load %"compiler/source:Span", ptr %l47
  %t90 = load %"compiler/diagmsg:Msg", ptr %l48
  %t91 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %s1, ptr %t88, %"compiler/source:Span" %t89, %"compiler/diagmsg:Msg" %t90)
  store i64 %t91, ptr %l49
  br label %bb16
bb16:
  %t92 = load ptr, ptr %l0, !tbaa !29
  %t94 = getelementptr %"compiler/check:Checker", ptr %t92, i32 0, i32 151
  store i1 true, ptr %t94, !tbaa !21
  call void @__olang_scope_close(ptr %s1)
  br label %bb17
bb17:
  %t95 = load i64, ptr %l7, !tbaa !24
  %t97 = icmp eq i64 %t95, 1
  store i1 %t97, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eroDeepIn(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, i64 %a1, ptr %a2, ptr %a3, ptr %a4, i64 %a5) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca ptr
  %l3 = alloca ptr
  %l4 = alloca ptr
  %l5 = alloca i64
  %l6 = alloca ptr
  %l7 = alloca ptr
  %l8 = alloca ptr
  %l9 = alloca ptr
  %l10 = alloca ptr
  %l11 = alloca ptr
  %l12 = alloca ptr
  %l13 = alloca ptr
  %l14 = alloca { i64, ptr }
  %l15 = alloca i64
  %l16 = alloca i64
  %l18 = alloca i32
  %l19 = alloca { i64, ptr }
  %l20 = alloca ptr
  %l21 = alloca i64
  %l22 = alloca i64
  %l23 = alloca i64
  %l24 = alloca i64
  %l25 = alloca i64
  %l26 = alloca i64
  %l27 = alloca i64
  %l30 = alloca i1
  %l33 = alloca ptr
  %l34 = alloca i1
  %l47 = alloca ptr
  %l48 = alloca i1
  %l61 = alloca ptr
  %l62 = alloca i1
  %l76 = alloca ptr
  %l77 = alloca i1
  %l91 = alloca ptr
  %l92 = alloca i1
  %l114 = alloca ptr
  %l115 = alloca i1
  %l128 = alloca ptr
  %l129 = alloca i1
  %l142 = alloca ptr
  %l143 = alloca i1
  %l156 = alloca { i64, ptr }
  %l173 = alloca ptr
  %l174 = alloca i64
  %l186 = alloca ptr
  %l187 = alloca i1
  %l195 = alloca i1
  %l196 = alloca i1
  %l202 = alloca { i64, ptr }
  %l209 = alloca ptr
  %l210 = alloca i1
  %l218 = alloca i64
  %l227 = alloca i64
  %l230 = alloca i64
  %l251 = alloca i1
  %l255 = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  store ptr %a2, ptr %l2
  store ptr %a3, ptr %l3
  store ptr %a4, ptr %l4
  store i64 %a5, ptr %l5
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l2, !tbaa !29
  %t3 = icmp eq ptr %t1, null
  br i1 %t3, label %bb1, label %bb2
bb1:
  store i1 true, ptr %l30, !tbaa !21
  br label %bb3
bb2:
  %t5 = load i64, ptr %l5, !tbaa !24
  %t7 = icmp sgt i64 %t5, 48
  store i1 %t7, ptr %l30, !tbaa !21
  br label %bb3
bb3:
  %t9 = load i1, ptr %l30, !tbaa !21
  br i1 %t9, label %bb4, label %bb5
bb4:
  br label %ret
bb5:
  br label %bb6
bb6:
  %t10 = load ptr, ptr %l2, !tbaa !29
  store ptr %t10, ptr %l33, !tbaa !29
  store i1 false, ptr %l34, !tbaa !21
  %t11 = load ptr, ptr %l33, !tbaa !29
  %t12 = icmp ne ptr %t11, null
  br i1 %t12, label %bb7, label %bb8
bb7:
  %t14 = load ptr, ptr %l33, !tbaa !29
  %t15 = load i64, ptr %t14, !range !{i64 0, i64 18}
  %t17 = icmp eq i64 %t15, 2
  store i1 %t17, ptr %l34, !tbaa !21
  br label %bb8
bb8:
  %t18 = load i1, ptr %l34, !tbaa !21
  br i1 %t18, label %bb9, label %bb10
bb9:
  %t19 = load ptr, ptr %l2, !tbaa !29
  %t21 = getelementptr { i64, [5 x i64] }, ptr %t19, i32 0, i32 1
  %t22 = getelementptr { %"compiler/source:Span", i32, ptr, i32 }, ptr %t21, i32 0, i32 2
  %t23 = load ptr, ptr %t22
  store ptr %t23, ptr %l6, !tbaa !29
  br label %bb11
bb10:
  br label %bb13
bb11:
  %t25 = load ptr, ptr %l0, !tbaa !29
  %t26 = load i64, ptr %l1, !tbaa !24
  %t27 = load ptr, ptr %l6, !tbaa !29
  %t29 = load ptr, ptr %l3, !tbaa !29
  %t30 = load ptr, ptr %l4, !tbaa !29
  %t31 = load i64, ptr %l5, !tbaa !24
  %t33 = add i64 %t31, 1
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eroDeepPlace(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %t25, i64 %t26, ptr %t27, ptr %t29, ptr %t30, i64 %t33)
  br label %bb12
bb12:
  br label %bb122
bb13:
  %t40 = load ptr, ptr %l2, !tbaa !29
  store ptr %t40, ptr %l47, !tbaa !29
  store i1 false, ptr %l48, !tbaa !21
  %t41 = load ptr, ptr %l47, !tbaa !29
  %t42 = icmp ne ptr %t41, null
  br i1 %t42, label %bb14, label %bb15
bb14:
  %t44 = load ptr, ptr %l47, !tbaa !29
  %t45 = load i64, ptr %t44, !range !{i64 0, i64 18}
  %t47 = icmp eq i64 %t45, 3
  store i1 %t47, ptr %l48, !tbaa !21
  br label %bb15
bb15:
  %t48 = load i1, ptr %l48, !tbaa !21
  br i1 %t48, label %bb16, label %bb17
bb16:
  %t49 = load ptr, ptr %l2, !tbaa !29
  %t51 = getelementptr { i64, [5 x i64] }, ptr %t49, i32 0, i32 1
  %t52 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t51, i32 0, i32 2
  %t53 = load ptr, ptr %t52
  store ptr %t53, ptr %l7, !tbaa !29
  br label %bb18
bb17:
  br label %bb20
bb18:
  %t55 = load ptr, ptr %l0, !tbaa !29
  %t56 = load i64, ptr %l1, !tbaa !24
  %t57 = load ptr, ptr %l7, !tbaa !29
  %t59 = load ptr, ptr %l3, !tbaa !29
  %t60 = load ptr, ptr %l4, !tbaa !29
  %t61 = load i64, ptr %l5, !tbaa !24
  %t63 = add i64 %t61, 1
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eroDeepPlace(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %t55, i64 %t56, ptr %t57, ptr %t59, ptr %t60, i64 %t63)
  br label %bb19
bb19:
  br label %bb122
bb20:
  %t70 = load ptr, ptr %l2, !tbaa !29
  store ptr %t70, ptr %l61, !tbaa !29
  store i1 false, ptr %l62, !tbaa !21
  %t71 = load ptr, ptr %l61, !tbaa !29
  %t72 = icmp ne ptr %t71, null
  br i1 %t72, label %bb21, label %bb22
bb21:
  %t74 = load ptr, ptr %l61, !tbaa !29
  %t75 = load i64, ptr %t74, !range !{i64 0, i64 18}
  %t77 = icmp eq i64 %t75, 10
  store i1 %t77, ptr %l62, !tbaa !21
  br label %bb22
bb22:
  %t78 = load i1, ptr %l62, !tbaa !21
  br i1 %t78, label %bb23, label %bb24
bb23:
  %t79 = load ptr, ptr %l2, !tbaa !29
  %t81 = getelementptr { i64, [5 x i64] }, ptr %t79, i32 0, i32 1
  %t82 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t81, i32 0, i32 2
  %t83 = load ptr, ptr %t82
  store ptr %t83, ptr %l8, !tbaa !29
  br label %bb25
bb24:
  br label %bb27
bb25:
  %t85 = load ptr, ptr %l0, !tbaa !29
  %t86 = load i64, ptr %l1, !tbaa !24
  %t87 = load ptr, ptr %l8, !tbaa !29
  %t89 = getelementptr %"compiler/typed:Slice", ptr %t87, i32 0, i32 0
  %t90 = load ptr, ptr %t89, !tbaa !29
  %t92 = load ptr, ptr %l3, !tbaa !29
  %t93 = load ptr, ptr %l4, !tbaa !29
  %t94 = load i64, ptr %l5, !tbaa !24
  %t96 = add i64 %t94, 1
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eroDeepPlace(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %t85, i64 %t86, ptr %t90, ptr %t92, ptr %t93, i64 %t96)
  br label %bb26
bb26:
  br label %bb122
bb27:
  %t103 = load ptr, ptr %l2, !tbaa !29
  store ptr %t103, ptr %l76, !tbaa !29
  store i1 false, ptr %l77, !tbaa !21
  %t104 = load ptr, ptr %l76, !tbaa !29
  %t105 = icmp ne ptr %t104, null
  br i1 %t105, label %bb28, label %bb29
bb28:
  %t107 = load ptr, ptr %l76, !tbaa !29
  %t108 = load i64, ptr %t107, !range !{i64 0, i64 18}
  %t110 = icmp eq i64 %t108, 5
  store i1 %t110, ptr %l77, !tbaa !21
  br label %bb29
bb29:
  %t111 = load i1, ptr %l77, !tbaa !21
  br i1 %t111, label %bb30, label %bb31
bb30:
  %t112 = load ptr, ptr %l2, !tbaa !29
  %t114 = getelementptr { i64, [5 x i64] }, ptr %t112, i32 0, i32 1
  %t115 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t114, i32 0, i32 2
  %t116 = load ptr, ptr %t115
  store ptr %t116, ptr %l9, !tbaa !29
  br label %bb32
bb31:
  br label %bb34
bb32:
  %t118 = load ptr, ptr %l0, !tbaa !29
  %t119 = load i64, ptr %l1, !tbaa !24
  %t120 = load ptr, ptr %l9, !tbaa !29
  %t122 = getelementptr %"compiler/typed:Promote", ptr %t120, i32 0, i32 0
  %t123 = load ptr, ptr %t122, !tbaa !29
  %t125 = load ptr, ptr %l3, !tbaa !29
  %t126 = load ptr, ptr %l4, !tbaa !29
  %t127 = load i64, ptr %l5, !tbaa !24
  %t129 = add i64 %t127, 1
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eroDeepIn(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %t118, i64 %t119, ptr %t123, ptr %t125, ptr %t126, i64 %t129)
  br label %bb33
bb33:
  br label %bb122
bb34:
  %t136 = load ptr, ptr %l2, !tbaa !29
  store ptr %t136, ptr %l91, !tbaa !29
  store i1 false, ptr %l92, !tbaa !21
  %t137 = load ptr, ptr %l91, !tbaa !29
  %t138 = icmp ne ptr %t137, null
  br i1 %t138, label %bb35, label %bb36
bb35:
  %t140 = load ptr, ptr %l91, !tbaa !29
  %t141 = load i64, ptr %t140, !range !{i64 0, i64 18}
  %t143 = icmp eq i64 %t141, 11
  store i1 %t143, ptr %l92, !tbaa !21
  br label %bb36
bb36:
  %t144 = load i1, ptr %l92, !tbaa !21
  br i1 %t144, label %bb37, label %bb38
bb37:
  %t145 = load ptr, ptr %l2, !tbaa !29
  %t147 = getelementptr { i64, [5 x i64] }, ptr %t145, i32 0, i32 1
  %t148 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t147, i32 0, i32 2
  %t149 = load ptr, ptr %t148
  store ptr %t149, ptr %l10, !tbaa !29
  br label %bb39
bb38:
  br label %bb42
bb39:
  %t151 = load ptr, ptr %l0, !tbaa !29
  %t152 = load i64, ptr %l1, !tbaa !24
  %t153 = load ptr, ptr %l10, !tbaa !29
  %t155 = getelementptr %"compiler/typed:Cond", ptr %t153, i32 0, i32 1
  %t156 = load ptr, ptr %t155, !tbaa !29
  %t157 = load ptr, ptr %l3, !tbaa !29
  %t158 = load ptr, ptr %l4, !tbaa !29
  %t159 = load i64, ptr %l5, !tbaa !24
  %t161 = add i64 %t159, 1
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eroDeepIn(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %t151, i64 %t152, ptr %t156, ptr %t157, ptr %t158, i64 %t161)
  br label %bb40
bb40:
  %t168 = load ptr, ptr %l0, !tbaa !29
  %t169 = load i64, ptr %l1, !tbaa !24
  %t170 = load ptr, ptr %l10, !tbaa !29
  %t172 = getelementptr %"compiler/typed:Cond", ptr %t170, i32 0, i32 2
  %t173 = load ptr, ptr %t172, !tbaa !29
  %t175 = load ptr, ptr %l3, !tbaa !29
  %t176 = load ptr, ptr %l4, !tbaa !29
  %t177 = load i64, ptr %l5, !tbaa !24
  %t179 = add i64 %t177, 1
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eroDeepIn(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %t168, i64 %t169, ptr %t173, ptr %t175, ptr %t176, i64 %t179)
  br label %bb41
bb41:
  br label %bb122
bb42:
  %t186 = load ptr, ptr %l2, !tbaa !29
  store ptr %t186, ptr %l114, !tbaa !29
  store i1 false, ptr %l115, !tbaa !21
  %t187 = load ptr, ptr %l114, !tbaa !29
  %t188 = icmp ne ptr %t187, null
  br i1 %t188, label %bb43, label %bb44
bb43:
  %t190 = load ptr, ptr %l114, !tbaa !29
  %t191 = load i64, ptr %t190, !range !{i64 0, i64 18}
  %t193 = icmp eq i64 %t191, 12
  store i1 %t193, ptr %l115, !tbaa !21
  br label %bb44
bb44:
  %t194 = load i1, ptr %l115, !tbaa !21
  br i1 %t194, label %bb45, label %bb46
bb45:
  %t195 = load ptr, ptr %l2, !tbaa !29
  %t197 = getelementptr { i64, [5 x i64] }, ptr %t195, i32 0, i32 1
  %t198 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t197, i32 0, i32 2
  %t199 = load ptr, ptr %t198
  store ptr %t199, ptr %l11, !tbaa !29
  br label %bb47
bb46:
  br label %bb49
bb47:
  %t201 = load ptr, ptr %l0, !tbaa !29
  %t202 = load i64, ptr %l1, !tbaa !24
  %t203 = load ptr, ptr %l11, !tbaa !29
  %t205 = getelementptr %"compiler/typed:Seq", ptr %t203, i32 0, i32 1
  %t206 = load ptr, ptr %t205, !tbaa !29
  %t207 = load ptr, ptr %l3, !tbaa !29
  %t208 = load ptr, ptr %l4, !tbaa !29
  %t209 = load i64, ptr %l5, !tbaa !24
  %t211 = add i64 %t209, 1
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eroDeepIn(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %t201, i64 %t202, ptr %t206, ptr %t207, ptr %t208, i64 %t211)
  br label %bb48
bb48:
  br label %bb122
bb49:
  %t218 = load ptr, ptr %l2, !tbaa !29
  store ptr %t218, ptr %l128, !tbaa !29
  store i1 false, ptr %l129, !tbaa !21
  %t219 = load ptr, ptr %l128, !tbaa !29
  %t220 = icmp ne ptr %t219, null
  br i1 %t220, label %bb50, label %bb51
bb50:
  %t222 = load ptr, ptr %l128, !tbaa !29
  %t223 = load i64, ptr %t222, !range !{i64 0, i64 18}
  %t225 = icmp eq i64 %t223, 14
  store i1 %t225, ptr %l129, !tbaa !21
  br label %bb51
bb51:
  %t226 = load i1, ptr %l129, !tbaa !21
  br i1 %t226, label %bb52, label %bb53
bb52:
  %t227 = load ptr, ptr %l2, !tbaa !29
  %t229 = getelementptr { i64, [5 x i64] }, ptr %t227, i32 0, i32 1
  %t230 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t229, i32 0, i32 2
  %t231 = load ptr, ptr %t230
  store ptr %t231, ptr %l12, !tbaa !29
  br label %bb54
bb53:
  br label %bb56
bb54:
  %t233 = load ptr, ptr %l0, !tbaa !29
  %t234 = load i64, ptr %l1, !tbaa !24
  %t235 = load ptr, ptr %l12, !tbaa !29
  %t237 = getelementptr %"compiler/typed:Try", ptr %t235, i32 0, i32 0
  %t238 = load ptr, ptr %t237, !tbaa !29
  %t239 = load ptr, ptr %l3, !tbaa !29
  %t240 = load ptr, ptr %l4, !tbaa !29
  %t241 = load i64, ptr %l5, !tbaa !24
  %t243 = add i64 %t241, 1
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eroDeepIn(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %t233, i64 %t234, ptr %t238, ptr %t239, ptr %t240, i64 %t243)
  br label %bb55
bb55:
  br label %bb122
bb56:
  %t250 = load ptr, ptr %l2, !tbaa !29
  store ptr %t250, ptr %l142, !tbaa !29
  store i1 false, ptr %l143, !tbaa !21
  %t251 = load ptr, ptr %l142, !tbaa !29
  %t252 = icmp ne ptr %t251, null
  br i1 %t252, label %bb57, label %bb58
bb57:
  %t254 = load ptr, ptr %l142, !tbaa !29
  %t255 = load i64, ptr %t254, !range !{i64 0, i64 18}
  %t257 = icmp eq i64 %t255, 13
  store i1 %t257, ptr %l143, !tbaa !21
  br label %bb58
bb58:
  %t258 = load i1, ptr %l143, !tbaa !21
  br i1 %t258, label %bb59, label %bb60
bb59:
  %t259 = load ptr, ptr %l2, !tbaa !29
  %t261 = getelementptr { i64, [5 x i64] }, ptr %t259, i32 0, i32 1
  %t262 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t261, i32 0, i32 2
  %t263 = load ptr, ptr %t262
  store ptr %t263, ptr %l13, !tbaa !29
  br label %bb61
bb60:
  br label %bb76
bb61:
  %t265 = load ptr, ptr %l13, !tbaa !29
  %t267 = getelementptr %"compiler/typed:Match", ptr %t265, i32 0, i32 1
  %t268 = load { i64, ptr }, ptr %t267, !tbaa !27
  store { i64, ptr } %t268, ptr %l14, !tbaa !27
  store i64 0, ptr %l15, !tbaa !24
  %t270 = load { i64, ptr }, ptr %l14, !tbaa !27
  %t272 = extractvalue { i64, ptr } %t270, 0
  store i64 %t272, ptr %l16, !tbaa !24
  br label %bb62
bb62:
  %t274 = load i64, ptr %l15, !tbaa !24
  %t275 = load i64, ptr %l16, !tbaa !24
  %t278 = icmp slt i64 %t274, %t275
  %t280 = xor i1 %t278, true
  br i1 %t280, label %bb63, label %bb64
bb63:
  br label %bb68
bb64:
  br label %bb65
bb65:
  %t282 = load { i64, ptr }, ptr %l14, !tbaa !27
  store { i64, ptr } %t282, ptr %l156, !tbaa !27
  %t283 = load i64, ptr %l15, !tbaa !24
  %t285 = getelementptr { i64, ptr }, ptr %l156, i32 0, i32 1
  %t286 = load ptr, ptr %t285, !tbaa !27
  %t287 = getelementptr ptr, ptr %t286, i64 %t283
  %t288 = load ptr, ptr %t287, !tbaa !39
  %t290 = load ptr, ptr %l0, !tbaa !29
  %t291 = load i64, ptr %l1, !tbaa !24
  %t294 = getelementptr %"compiler/typed:Arm", ptr %t288, i32 0, i32 4
  %t295 = load ptr, ptr %t294, !tbaa !29
  %t296 = load ptr, ptr %l3, !tbaa !29
  %t297 = load ptr, ptr %l4, !tbaa !29
  %t298 = load i64, ptr %l5, !tbaa !24
  %t300 = add i64 %t298, 1
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eroDeepIn(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %t290, i64 %t291, ptr %t295, ptr %t296, ptr %t297, i64 %t300)
  br label %bb66
bb66:
  br label %bb67
bb67:
  %t307 = load i64, ptr %l15, !tbaa !24
  %t309 = add i64 %t307, 1
  store i64 %t309, ptr %l15, !tbaa !24
  br label %bb62
bb68:
  %t311 = load ptr, ptr %l13, !tbaa !29
  %t313 = getelementptr %"compiler/typed:Match", ptr %t311, i32 0, i32 2
  %t314 = load ptr, ptr %t313, !tbaa !29
  %t316 = icmp eq ptr %t314, null
  %t318 = xor i1 %t316, true
  br i1 %t318, label %bb69, label %bb70
bb69:
  %t320 = load ptr, ptr %l0, !tbaa !29
  store ptr %t320, ptr %l173, !tbaa !29
  %t321 = load i64, ptr %l1, !tbaa !24
  store i64 %t321, ptr %l174, !tbaa !24
  %t322 = load ptr, ptr %l13, !tbaa !29
  %t324 = getelementptr %"compiler/typed:Match", ptr %t322, i32 0, i32 2
  %t325 = load ptr, ptr %t324, !tbaa !29
  %t327 = icmp eq ptr %t325, null
  br i1 %t327, label %bb71, label %bb72
bb70:
  br label %bb75
bb71:
  call void @__olang_check_failed(ptr @olang_loc_8273e01acb39955e_49f05f53ee74b1b2)
  unreachable
bb72:
  br label %bb73
bb73:
  %t329 = load ptr, ptr %l13, !tbaa !29
  %t331 = getelementptr %"compiler/typed:Match", ptr %t329, i32 0, i32 2
  %t332 = load ptr, ptr %t331, !tbaa !29
  %t335 = getelementptr %"compiler/typed:Arm", ptr %t332, i32 0, i32 4
  %t336 = load ptr, ptr %t335, !tbaa !29
  %t337 = load ptr, ptr %l3, !tbaa !29
  %t338 = load ptr, ptr %l4, !tbaa !29
  %t339 = load i64, ptr %l5, !tbaa !24
  %t341 = add i64 %t339, 1
  %t342 = load ptr, ptr %l173, !tbaa !29
  %t343 = load i64, ptr %l174, !tbaa !24
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eroDeepIn(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %t342, i64 %t343, ptr %t336, ptr %t337, ptr %t338, i64 %t341)
  br label %bb74
bb74:
  br label %bb75
bb75:
  br label %bb122
bb76:
  %t348 = load ptr, ptr %l2, !tbaa !29
  store ptr %t348, ptr %l186, !tbaa !29
  store i1 false, ptr %l187, !tbaa !21
  %t349 = load ptr, ptr %l186, !tbaa !29
  %t350 = icmp ne ptr %t349, null
  br i1 %t350, label %bb77, label %bb78
bb77:
  %t352 = load ptr, ptr %l186, !tbaa !29
  %t353 = load i64, ptr %t352, !range !{i64 0, i64 18}
  %t355 = icmp eq i64 %t353, 9
  store i1 %t355, ptr %l187, !tbaa !21
  br label %bb78
bb78:
  %t356 = load i1, ptr %l187, !tbaa !21
  br i1 %t356, label %bb79, label %bb80
bb79:
  %t357 = load ptr, ptr %l2, !tbaa !29
  %t359 = getelementptr { i64, [5 x i64] }, ptr %t357, i32 0, i32 1
  %t360 = getelementptr { %"compiler/source:Span", i32, i32, i32, { i64, ptr } }, ptr %t359, i32 0, i32 2
  %t361 = load i32, ptr %t360, !range !{i32 0, i32 52}
  store i32 %t361, ptr %l18
  %t363 = load ptr, ptr %l2, !tbaa !29
  %t365 = getelementptr { i64, [5 x i64] }, ptr %t363, i32 0, i32 1
  %t366 = getelementptr { %"compiler/source:Span", i32, i32, i32, { i64, ptr } }, ptr %t365, i32 0, i32 4
  %t367 = load { i64, ptr }, ptr %t366
  store { i64, ptr } %t367, ptr %l19, !tbaa !27
  br label %bb81
bb80:
  br label %bb90
bb81:
  %t369 = load i32, ptr %l18, !range !{i32 0, i32 52}
  %t371 = call i1 @compiler_2ftyped_2ePassesRefs(i32 %t369)
  store i1 %t371, ptr %l195
  br label %bb82
bb82:
  %t372 = load i1, ptr %l195, !tbaa !21
  br i1 %t372, label %bb83, label %bb84
bb83:
  %t373 = load { i64, ptr }, ptr %l19, !tbaa !27
  %t375 = extractvalue { i64, ptr } %t373, 0
  %t377 = icmp sgt i64 %t375, 0
  store i1 %t377, ptr %l196, !tbaa !21
  br label %bb85
bb84:
  store i1 false, ptr %l196, !tbaa !21
  br label %bb85
bb85:
  %t379 = load i1, ptr %l196, !tbaa !21
  br i1 %t379, label %bb86, label %bb87
bb86:
  %t380 = load ptr, ptr %l0, !tbaa !29
  %t381 = load i64, ptr %l1, !tbaa !24
  %t382 = load { i64, ptr }, ptr %l19, !tbaa !27
  store { i64, ptr } %t382, ptr %l202, !tbaa !27
  %t383 = getelementptr { i64, ptr }, ptr %l202, i32 0, i32 1
  %t384 = load ptr, ptr %t383, !tbaa !27
  %t385 = getelementptr ptr, ptr %t384, i64 0
  %t386 = load ptr, ptr %t385, !tbaa !39
  %t388 = load ptr, ptr %l3, !tbaa !29
  %t389 = load ptr, ptr %l4, !tbaa !29
  %t390 = load i64, ptr %l5, !tbaa !24
  %t392 = add i64 %t390, 1
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eroDeepIn(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %t380, i64 %t381, ptr %t386, ptr %t388, ptr %t389, i64 %t392)
  br label %bb88
bb87:
  br label %bb89
bb88:
  br label %bb89
bb89:
  br label %bb122
bb90:
  %t399 = load ptr, ptr %l2, !tbaa !29
  store ptr %t399, ptr %l209, !tbaa !29
  store i1 false, ptr %l210, !tbaa !21
  %t400 = load ptr, ptr %l209, !tbaa !29
  %t401 = icmp ne ptr %t400, null
  br i1 %t401, label %bb91, label %bb92
bb91:
  %t403 = load ptr, ptr %l209, !tbaa !29
  %t404 = load i64, ptr %t403, !range !{i64 0, i64 18}
  %t406 = icmp eq i64 %t404, 6
  store i1 %t406, ptr %l210, !tbaa !21
  br label %bb92
bb92:
  %t407 = load i1, ptr %l210, !tbaa !21
  br i1 %t407, label %bb93, label %bb94
bb93:
  %t408 = load ptr, ptr %l2, !tbaa !29
  %t410 = getelementptr { i64, [5 x i64] }, ptr %t408, i32 0, i32 1
  %t411 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t410, i32 0, i32 2
  %t412 = load ptr, ptr %t411
  store ptr %t412, ptr %l20, !tbaa !29
  br label %bb95
bb94:
  br label %bb117
bb95:
  %t414 = load ptr, ptr %l0, !tbaa !29
  %t415 = load ptr, ptr %l20, !tbaa !29
  %t417 = getelementptr %"compiler/typed:Call", ptr %t415, i32 0, i32 0
  %t418 = load ptr, ptr %t417, !tbaa !29
  %t421 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ebodyOfCallee(ptr %v0, ptr %v1, ptr %t414, ptr %t418)
  store i64 %t421, ptr %l218
  br label %bb96
bb96:
  %t422 = load i64, ptr %l218, !tbaa !24
  store i64 %t422, ptr %l21, !tbaa !24
  %t423 = load i64, ptr %l21, !tbaa !24
  %t425 = icmp slt i64 %t423, 0
  br i1 %t425, label %bb97, label %bb98
bb97:
  br label %ret
bb98:
  br label %bb99
bb99:
  store i64 0, ptr %l22, !tbaa !24
  %t427 = load ptr, ptr %l20, !tbaa !29
  %t429 = getelementptr %"compiler/typed:Call", ptr %t427, i32 0, i32 1
  %t430 = load { i64, ptr }, ptr %t429, !tbaa !27
  %t432 = extractvalue { i64, ptr } %t430, 0
  store i64 %t432, ptr %l23, !tbaa !24
  store i64 1, ptr %l24, !tbaa !24
  %t434 = load i64, ptr %l23, !tbaa !24
  %t435 = load i64, ptr %l22, !tbaa !24
  %t438 = icmp sgt i64 %t434, %t435
  br i1 %t438, label %bb100, label %bb101
bb100:
  %t440 = load i64, ptr %l24, !tbaa !24
  %t442 = icmp sgt i64 %t440, 0
  br i1 %t442, label %bb102, label %bb103
bb101:
  store i64 0, ptr %l227, !tbaa !24
  br label %bb105
bb102:
  %t444 = load i64, ptr %l23, !tbaa !24
  %t445 = load i64, ptr %l22, !tbaa !24
  %t448 = sub i64 %t444, %t445
  %t449 = load i64, ptr %l24, !tbaa !24
  %t452 = add i64 %t448, %t449
  %t454 = sub i64 %t452, 1
  %t455 = load i64, ptr %l24, !tbaa !24
  %t458 = sdiv i64 %t454, %t455
  store i64 %t458, ptr %l230, !tbaa !24
  br label %bb104
bb103:
  store i64 0, ptr %l230, !tbaa !24
  br label %bb104
bb104:
  %t460 = load i64, ptr %l230, !tbaa !24
  store i64 %t460, ptr %l227, !tbaa !24
  br label %bb105
bb105:
  %t461 = load i64, ptr %l227, !tbaa !24
  store i64 %t461, ptr %l25, !tbaa !24
  store i64 0, ptr %l26, !tbaa !24
  br label %bb106
bb106:
  %t462 = load i64, ptr %l26, !tbaa !24
  %t463 = load i64, ptr %l25, !tbaa !24
  %t466 = icmp slt i64 %t462, %t463
  %t468 = xor i1 %t466, true
  br i1 %t468, label %bb107, label %bb108
bb107:
  br label %bb116
bb108:
  br label %bb109
bb109:
  %t470 = load i64, ptr %l22, !tbaa !24
  %t471 = load i64, ptr %l26, !tbaa !24
  %t472 = load i64, ptr %l24, !tbaa !24
  %t475 = mul i64 %t471, %t472
  %t478 = add i64 %t470, %t475
  store i64 %t478, ptr %l27, !tbaa !24
  %t480 = load ptr, ptr %l0, !tbaa !29
  %t481 = load i64, ptr %l21, !tbaa !24
  %t482 = load i64, ptr %l27, !tbaa !24
  %t486 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eroFollows(ptr %v0, ptr %t480, i64 %t481, i64 %t482)
  store i1 %t486, ptr %l251
  br label %bb110
bb110:
  %t487 = load i1, ptr %l251, !tbaa !21
  br i1 %t487, label %bb111, label %bb112
bb111:
  %t488 = load ptr, ptr %l0, !tbaa !29
  %t489 = load i64, ptr %l1, !tbaa !24
  %t490 = load ptr, ptr %l20, !tbaa !29
  %t492 = getelementptr %"compiler/typed:Call", ptr %t490, i32 0, i32 1
  %t493 = load { i64, ptr }, ptr %t492, !tbaa !27
  store { i64, ptr } %t493, ptr %l255, !tbaa !27
  %t494 = load i64, ptr %l27, !tbaa !24
  %t496 = getelementptr { i64, ptr }, ptr %l255, i32 0, i32 1
  %t497 = load ptr, ptr %t496, !tbaa !27
  %t498 = getelementptr ptr, ptr %t497, i64 %t494
  %t499 = load ptr, ptr %t498, !tbaa !39
  %t501 = load ptr, ptr %l3, !tbaa !29
  %t502 = load ptr, ptr %l4, !tbaa !29
  %t503 = load i64, ptr %l5, !tbaa !24
  %t505 = add i64 %t503, 1
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eroDeepIn(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %t488, i64 %t489, ptr %t499, ptr %t501, ptr %t502, i64 %t505)
  br label %bb113
bb112:
  br label %bb114
bb113:
  br label %bb114
bb114:
  br label %bb115
bb115:
  %t512 = load i64, ptr %l26, !tbaa !24
  %t514 = add i64 %t512, 1
  store i64 %t514, ptr %l26, !tbaa !24
  br label %bb106
bb116:
  br label %bb122
bb117:
  br i1 true, label %bb118, label %bb119
bb118:
  br label %bb120
bb119:
  br label %bb121
bb120:
  br label %bb122
bb121:
  call void @__olang_check_failed(ptr @olang_loc_6132b637a09ab63c_579ebcf2b9b55890)
  unreachable
bb122:
  br label %ret
ret:
  ret void
}

define dso_local { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esetText(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1) #0 {
entry:
  %l1 = alloca ptr
  %l2 = alloca %"std/prelude/text:StringBuilder"
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l10 = alloca i64
  %l12 = alloca { i64, ptr }
  %l13 = alloca { i64, ptr }
  %l14 = alloca i64
  %l15 = alloca { i64, ptr }
  %l16 = alloca %"std/prelude/text:StringBuilder"
  %l18 = alloca i64
  %l22 = alloca i64
  %l25 = alloca i64
  %l46 = alloca ptr
  %l47 = alloca ptr
  %l50 = alloca i32
  %l51 = alloca { i64, ptr }
  %l56 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %s3 = alloca %olang.scope
  %s4 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l1, !tbaa !29
  %t3 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2eLen_3ccompiler_2ftypes_3aTypeId_3e(ptr %v1, ptr %t1)
  store i64 %t3, ptr %l10
  br label %bb1
bb1:
  %t4 = load i64, ptr %l10, !tbaa !24
  %t5 = icmp eq i64 %t4, 0
  br i1 %t5, label %bb2, label %bb3
bb2:
  store { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d32, i32 0, i32 1) }, ptr %l12, !tbaa !27
  %t7 = load { i64, ptr }, ptr %l12, !tbaa !27
  store { i64, ptr } %t7, ptr %l13, !tbaa !27
  %t8 = load { i64, ptr }, ptr %l13, !tbaa !27
  %t9 = extractvalue { i64, ptr } %t8, 0
  store i64 %t9, ptr %l14, !tbaa !24
  %t10 = load i64, ptr %l14, !tbaa !24
  %t11 = mul i64 %t10, 1
  %t12 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t11)
  %t13 = insertvalue { i64, ptr } undef, i64 %t10, 0
  %t14 = insertvalue { i64, ptr } %t13, ptr %t12, 1
  store { i64, ptr } %t14, ptr %l15, !tbaa !27
  %t15 = getelementptr { i64, ptr }, ptr %l15, i32 0, i32 1
  %t16 = load ptr, ptr %t15, !tbaa !27
  %t17 = getelementptr { i64, ptr }, ptr %l13, i32 0, i32 1
  %t18 = load ptr, ptr %t17, !tbaa !27
  %t19 = load i64, ptr %l14, !tbaa !24
  %t20 = mul i64 %t19, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t16, ptr %t18, i64 %t20, i1 false)
  %t21 = load { i64, ptr }, ptr %l15, !tbaa !27
  store { i64, ptr } %t21, ptr %l13, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  %t22 = load { i64, ptr }, ptr %l13, !tbaa !27
  store { i64, ptr } %t22, ptr %rv
  br label %ret
bb3:
  br label %bb4
bb4:
  %t23 = call %"std/prelude/text:StringBuilder" @std_2fprelude_2ftext_3aStringBuilder_2ector(ptr %s0)
  store %"std/prelude/text:StringBuilder" %t23, ptr %l16
  br label %bb5
bb5:
  %t24 = load %"std/prelude/text:StringBuilder", ptr %l16
  store %"std/prelude/text:StringBuilder" %t24, ptr %l2
  store i64 0, ptr %l3, !tbaa !24
  %t25 = load ptr, ptr %l1, !tbaa !29
  %t27 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2eLen_3ccompiler_2ftypes_3aTypeId_3e(ptr %v1, ptr %t25)
  store i64 %t27, ptr %l18
  br label %bb6
bb6:
  %t28 = load i64, ptr %l18, !tbaa !24
  store i64 %t28, ptr %l4, !tbaa !24
  store i64 1, ptr %l5, !tbaa !24
  %t29 = load i64, ptr %l4, !tbaa !24
  %t30 = load i64, ptr %l3, !tbaa !24
  %t33 = icmp sgt i64 %t29, %t30
  br i1 %t33, label %bb7, label %bb8
bb7:
  %t35 = load i64, ptr %l5, !tbaa !24
  %t37 = icmp sgt i64 %t35, 0
  br i1 %t37, label %bb9, label %bb10
bb8:
  store i64 0, ptr %l22, !tbaa !24
  br label %bb12
bb9:
  %t39 = load i64, ptr %l4, !tbaa !24
  %t40 = load i64, ptr %l3, !tbaa !24
  %t43 = sub i64 %t39, %t40
  %t44 = load i64, ptr %l5, !tbaa !24
  %t47 = add i64 %t43, %t44
  %t49 = sub i64 %t47, 1
  %t50 = load i64, ptr %l5, !tbaa !24
  %t53 = sdiv i64 %t49, %t50
  store i64 %t53, ptr %l25, !tbaa !24
  br label %bb11
bb10:
  store i64 0, ptr %l25, !tbaa !24
  br label %bb11
bb11:
  %t55 = load i64, ptr %l25, !tbaa !24
  store i64 %t55, ptr %l22, !tbaa !24
  br label %bb12
bb12:
  %t56 = load i64, ptr %l22, !tbaa !24
  store i64 %t56, ptr %l6, !tbaa !24
  store i64 0, ptr %l7, !tbaa !24
  br label %bb13
bb13:
  store %olang.scope zeroinitializer, ptr %s3
  %t57 = load i64, ptr %l7, !tbaa !24
  %t58 = load i64, ptr %l6, !tbaa !24
  %t61 = icmp slt i64 %t57, %t58
  %t63 = xor i1 %t61, true
  br i1 %t63, label %bb14, label %bb15
bb14:
  call void @__olang_scope_close(ptr %s3)
  br label %bb25
bb15:
  br label %bb16
bb16:
  %t65 = load i64, ptr %l3, !tbaa !24
  %t66 = load i64, ptr %l7, !tbaa !24
  %t67 = load i64, ptr %l5, !tbaa !24
  %t70 = mul i64 %t66, %t67
  %t73 = add i64 %t65, %t70
  store i64 %t73, ptr %l8, !tbaa !24
  %t75 = load i64, ptr %l8, !tbaa !24
  %t77 = icmp sgt i64 %t75, 0
  br i1 %t77, label %bb17, label %bb18
bb17:
  store %olang.scope zeroinitializer, ptr %s4
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s4, ptr %l2, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d33, i32 0, i32 1) })
  br label %bb19
bb18:
  br label %bb20
bb19:
  call void @__olang_scope_close(ptr %s4)
  br label %bb20
bb20:
  store ptr %l2, ptr %l46, !tbaa !29
  store ptr %a0, ptr %l47, !tbaa !29
  %t81 = load ptr, ptr %l1, !tbaa !29
  %t82 = load i64, ptr %l8, !tbaa !24
  %t85 = call i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2eAt_3ccompiler_2ftypes_3aTypeId_3e(ptr %v1, ptr %t81, i64 %t82)
  store i32 %t85, ptr %l50
  br label %bb21
bb21:
  %t86 = load ptr, ptr %l47, !tbaa !29
  %t87 = load i32, ptr %l50, !tbaa !23
  %t88 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %s3, ptr %t86, i32 %t87)
  store { i64, ptr } %t88, ptr %l51
  br label %bb22
bb22:
  %t89 = load { i64, ptr }, ptr %l51, !tbaa !27
  %t90 = extractvalue { i64, ptr } %t89, 0
  %t91 = extractvalue { i64, ptr } %t89, 1
  %t92 = mul i64 %t90, 1
  %t93 = call ptr @__olang_scope_alloc(ptr %s3, i64 %t92)
  call void @llvm.memcpy.p0.p0.i64(ptr %t93, ptr %t91, i64 %t92, i1 false)
  %t94 = insertvalue { i64, ptr } undef, i64 %t90, 0
  %t95 = insertvalue { i64, ptr } %t94, ptr %t93, 1
  %t96 = load ptr, ptr %l46, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s3, ptr %t96, { i64, ptr } %t95)
  br label %bb23
bb23:
  call void @__olang_scope_close(ptr %s3)
  br label %bb24
bb24:
  %t98 = load i64, ptr %l7, !tbaa !24
  %t100 = add i64 %t98, 1
  store i64 %t100, ptr %l7, !tbaa !24
  br label %bb13
bb25:
  %t103 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %s0, ptr %v2, ptr %l2)
  store { i64, ptr } %t103, ptr %l56
  br label %bb26
bb26:
  call void @__olang_scope_close(ptr %s0)
  %t104 = load { i64, ptr }, ptr %l56, !tbaa !27
  store { i64, ptr } %t104, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esettleIdle(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l2 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l3 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l4 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l5 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l6 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l7 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l8 = alloca ptr
  %l9 = alloca i64
  %l10 = alloca %"compiler/check:idleCall"
  %l11 = alloca ptr
  %l12 = alloca i64
  %l13 = alloca i64
  %l14 = alloca i64
  %l15 = alloca i64
  %l16 = alloca ptr
  %l17 = alloca i64
  %l18 = alloca i64
  %l19 = alloca i1
  %l20 = alloca ptr
  %l21 = alloca i64
  %l22 = alloca %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0"
  %l23 = alloca ptr
  %l24 = alloca i64
  %l25 = alloca i64
  %l26 = alloca %"compiler/check:idleCall"
  %l27 = alloca i1
  %l28 = alloca i64
  %l29 = alloca i64
  %l30 = alloca i64
  %l31 = alloca i64
  %l32 = alloca i64
  %l36 = alloca i64
  %l38 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l39 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l40 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l41 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l42 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l43 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l44 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l47 = alloca i64
  %l49 = alloca i64
  %l54 = alloca %"compiler/check:idleCall"
  %l55 = alloca ptr
  %l57 = alloca i64
  %l60 = alloca ptr
  %l64 = alloca i1
  %l67 = alloca i64
  %l69 = alloca i64
  %l74 = alloca i64
  %l79 = alloca i1
  %l81 = alloca ptr
  %l82 = alloca i64
  %l84 = alloca i64
  %l92 = alloca ptr
  %l94 = alloca i64
  %l95 = alloca i64
  %l97 = alloca i64
  %l102 = alloca i64
  %l105 = alloca i1
  %l106 = alloca i64
  %l109 = alloca i64
  %l111 = alloca i1
  %l115 = alloca ptr
  %l123 = alloca ptr
  %l127 = alloca ptr
  %l130 = alloca i1
  %l135 = alloca i64
  %l137 = alloca i64
  %l142 = alloca i64
  %l143 = alloca ptr
  %l146 = alloca %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0"
  %l149 = alloca i1
  %l151 = alloca ptr
  %l152 = alloca i64
  %l154 = alloca i64
  %l165 = alloca i64
  %l167 = alloca i64
  %l172 = alloca %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0"
  %l175 = alloca i1
  %l176 = alloca ptr
  %l177 = alloca i64
  %l180 = alloca i64
  %l181 = alloca i32
  %l182 = alloca i1
  %l189 = alloca i64
  %l191 = alloca i64
  %l197 = alloca %"compiler/check:idleCall"
  %l200 = alloca i1
  %l201 = alloca i1
  %l204 = alloca i1
  %l205 = alloca i64
  %l208 = alloca i64
  %l212 = alloca i64
  %l216 = alloca i64
  %l220 = alloca i64
  %l223 = alloca i64
  %l241 = alloca ptr
  %l242 = alloca i64
  %l243 = alloca ptr
  %l246 = alloca i64
  %l247 = alloca i64
  %l248 = alloca i32
  %l249 = alloca i1
  %l257 = alloca ptr
  %l263 = alloca { i64, [3 x i64] }
  %l265 = alloca %"compiler/diagmsg:Msg"
  %l266 = alloca i64
  %s0 = alloca %olang.scope
  %s14 = alloca %olang.scope
  %s25 = alloca %olang.scope
  %t432 = alloca { i64, [3 x i64] }, align 8
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/check:Checker", ptr %t1, i32 0, i32 114
  %t5 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3aidleCall_3e_2eLen_3ccompiler_2fcheck_3aidleCall_3e(ptr %v0, ptr %t3)
  store i64 %t5, ptr %l36
  br label %bb1
bb1:
  %t6 = load i64, ptr %l36, !tbaa !24
  %t7 = icmp eq i64 %t6, 0
  br i1 %t7, label %bb2, label %bb3
bb2:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb3:
  br label %bb4
bb4:
  %t9 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e(ptr %s0)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t9, ptr %l38
  br label %bb5
bb5:
  %t10 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l38
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t10, ptr %l1
  %t11 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %s0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t11, ptr %l39
  br label %bb6
bb6:
  %t12 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l39
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t12, ptr %l2
  %t13 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cBool_3e_2ector(ptr %s0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t13, ptr %l40
  br label %bb7
bb7:
  %t14 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l40
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t14, ptr %l3
  %t15 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_3e_2ector(ptr %s0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t15, ptr %l41
  br label %bb8
bb8:
  %t16 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l41
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t16, ptr %l4
  %t17 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cBool_3e_2ector(ptr %s0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t17, ptr %l42
  br label %bb9
bb9:
  %t18 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l42
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t18, ptr %l5
  %t19 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %s0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t19, ptr %l43
  br label %bb10
bb10:
  %t20 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l43
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t20, ptr %l6
  %t21 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %s0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t21, ptr %l44
  br label %bb11
bb11:
  %t22 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l44
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t22, ptr %l7
  %t23 = load ptr, ptr %l0, !tbaa !29
  %t25 = getelementptr %"compiler/check:Checker", ptr %t23, i32 0, i32 114
  store ptr %t25, ptr %l8, !tbaa !29
  store i64 0, ptr %l9, !tbaa !24
  br label %bb12
bb12:
  %t27 = load i64, ptr %l9, !tbaa !24
  store i64 %t27, ptr %l47, !tbaa !24
  %t28 = load ptr, ptr %l8, !tbaa !29
  %t30 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3aidleCall_3e_2eLen_3ccompiler_2fcheck_3aidleCall_3e(ptr %v0, ptr %t28)
  store i64 %t30, ptr %l49
  br label %bb13
bb13:
  %t31 = load i64, ptr %l47, !tbaa !24
  %t32 = load i64, ptr %l49, !tbaa !24
  %t33 = icmp slt i64 %t31, %t32
  %t35 = xor i1 %t33, true
  br i1 %t35, label %bb14, label %bb15
bb14:
  br label %bb41
bb15:
  br label %bb16
bb16:
  %t37 = load ptr, ptr %l8, !tbaa !29
  %t38 = load i64, ptr %l9, !tbaa !24
  %t41 = call %"compiler/check:idleCall" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3aidleCall_3e_2eAt_3ccompiler_2fcheck_3aidleCall_3e(ptr %v0, ptr %v0, ptr %t37, i64 %t38)
  store %"compiler/check:idleCall" %t41, ptr %l54
  br label %bb17
bb17:
  %t42 = load %"compiler/check:idleCall", ptr %l54
  store %"compiler/check:idleCall" %t42, ptr %l10
  store ptr %l6, ptr %l55, !tbaa !29
  %t44 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %s0, ptr %l7)
  store i64 %t44, ptr %l57
  br label %bb18
bb18:
  %t45 = load ptr, ptr %l55, !tbaa !29
  %t46 = load i64, ptr %l57, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %s0, ptr %t45, i64 %t46)
  br label %bb19
bb19:
  %t47 = load ptr, ptr %l0, !tbaa !29
  %t49 = getelementptr %"compiler/check:Checker", ptr %t47, i32 0, i32 115
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eClear_3cI64_3e(ptr %v0, ptr %t49)
  br label %bb20
bb20:
  store ptr %l5, ptr %l60, !tbaa !29
  %t51 = load ptr, ptr %l0, !tbaa !29
  %t52 = getelementptr %"compiler/check:idleCall", ptr %l10, i32 0, i32 4
  %t53 = load ptr, ptr %t52, !tbaa !29
  %t57 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eeffX(ptr %v0, ptr %v0, ptr %t51, ptr %t53)
  store i1 %t57, ptr %l64
  br label %bb21
bb21:
  %t58 = load ptr, ptr %l60, !tbaa !29
  %t59 = load i1, ptr %l64, !tbaa !21
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2ePush_3cBool_3e(ptr %s0, ptr %t58, i1 %t59)
  br label %bb22
bb22:
  %t60 = load ptr, ptr %l0, !tbaa !29
  %t62 = getelementptr %"compiler/check:Checker", ptr %t60, i32 0, i32 115
  store ptr %t62, ptr %l11, !tbaa !29
  store i64 0, ptr %l12, !tbaa !24
  br label %bb23
bb23:
  %t64 = load i64, ptr %l12, !tbaa !24
  store i64 %t64, ptr %l67, !tbaa !24
  %t65 = load ptr, ptr %l11, !tbaa !29
  %t67 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %t65)
  store i64 %t67, ptr %l69
  br label %bb24
bb24:
  %t68 = load i64, ptr %l67, !tbaa !24
  %t69 = load i64, ptr %l69, !tbaa !24
  %t70 = icmp slt i64 %t68, %t69
  %t72 = xor i1 %t70, true
  br i1 %t72, label %bb25, label %bb26
bb25:
  br label %bb39
bb26:
  br label %bb27
bb27:
  %t74 = load ptr, ptr %l11, !tbaa !29
  %t75 = load i64, ptr %l12, !tbaa !24
  %t78 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t74, i64 %t75)
  store i64 %t78, ptr %l74
  br label %bb28
bb28:
  %t79 = load i64, ptr %l74, !tbaa !24
  store i64 %t79, ptr %l13, !tbaa !24
  %t80 = load i64, ptr %l13, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %s0, ptr %l7, i64 %t80)
  br label %bb29
bb29:
  %t83 = load i64, ptr %l13, !tbaa !24
  %t86 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2eHas_3cI64_2c_20I64_3e(ptr %s0, ptr %l1, i64 %t83)
  store i1 %t86, ptr %l79
  br label %bb30
bb30:
  %t87 = load i1, ptr %l79, !tbaa !21
  %t88 = xor i1 %t87, true
  br i1 %t88, label %bb31, label %bb32
bb31:
  store ptr %l1, ptr %l81, !tbaa !29
  %t90 = load i64, ptr %l13, !tbaa !24
  store i64 %t90, ptr %l82, !tbaa !24
  %t92 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %s0, ptr %l2)
  store i64 %t92, ptr %l84
  br label %bb33
bb32:
  br label %bb37
bb33:
  %t93 = load ptr, ptr %l81, !tbaa !29
  %t94 = load i64, ptr %l82, !tbaa !24
  %t95 = load i64, ptr %l84, !tbaa !24
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2ePut_3cI64_2c_20I64_3e(ptr %s0, ptr %t93, i64 %t94, i64 %t95)
  br label %bb34
bb34:
  %t96 = load i64, ptr %l13, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %s0, ptr %l2, i64 %t96)
  br label %bb35
bb35:
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2ePush_3cBool_3e(ptr %s0, ptr %l3, i1 false)
  br label %bb36
bb36:
  br label %bb37
bb37:
  br label %bb38
bb38:
  %t100 = load i64, ptr %l12, !tbaa !24
  %t102 = add i64 %t100, 1
  store i64 %t102, ptr %l12, !tbaa !24
  br label %bb23
bb39:
  br label %bb40
bb40:
  %t104 = load i64, ptr %l9, !tbaa !24
  %t106 = add i64 %t104, 1
  store i64 %t106, ptr %l9, !tbaa !24
  br label %bb12
bb41:
  store ptr %l6, ptr %l92, !tbaa !29
  %t109 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %s0, ptr %l7)
  store i64 %t109, ptr %l94
  br label %bb42
bb42:
  %t110 = load ptr, ptr %l92, !tbaa !29
  %t111 = load i64, ptr %l94, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %s0, ptr %t110, i64 %t111)
  br label %bb43
bb43:
  store i64 0, ptr %l14, !tbaa !24
  br label %bb44
bb44:
  %t112 = load i64, ptr %l14, !tbaa !24
  store i64 %t112, ptr %l95, !tbaa !24
  %t114 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %s0, ptr %l2)
  store i64 %t114, ptr %l97
  br label %bb45
bb45:
  %t115 = load i64, ptr %l95, !tbaa !24
  %t116 = load i64, ptr %l97, !tbaa !24
  %t117 = icmp slt i64 %t115, %t116
  %t119 = xor i1 %t117, true
  br i1 %t119, label %bb46, label %bb47
bb46:
  br label %bb88
bb47:
  br label %bb48
bb48:
  %t121 = load i64, ptr %l14, !tbaa !24
  %t124 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %s0, ptr %l2, i64 %t121)
  store i64 %t124, ptr %l102
  br label %bb49
bb49:
  %t125 = load i64, ptr %l102, !tbaa !24
  store i64 %t125, ptr %l15, !tbaa !24
  %t126 = load i64, ptr %l15, !tbaa !24
  %t128 = icmp slt i64 %t126, 0
  br i1 %t128, label %bb50, label %bb51
bb50:
  store i1 true, ptr %l105, !tbaa !21
  br label %bb53
bb51:
  %t130 = load i64, ptr %l15, !tbaa !24
  store i64 %t130, ptr %l106, !tbaa !24
  %t131 = load ptr, ptr %l0, !tbaa !29
  %t133 = getelementptr %"compiler/check:Checker", ptr %t131, i32 0, i32 14
  %t135 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_Ha1ef0e278819e2a81939c80ef5438e96(ptr %v0, ptr %t133)
  store i64 %t135, ptr %l109
  br label %bb52
bb52:
  %t136 = load i64, ptr %l106, !tbaa !24
  %t137 = load i64, ptr %l109, !tbaa !24
  %t138 = icmp sge i64 %t136, %t137
  store i1 %t138, ptr %l105, !tbaa !21
  br label %bb53
bb53:
  %t140 = load i1, ptr %l105, !tbaa !21
  br i1 %t140, label %bb54, label %bb55
bb54:
  store i1 true, ptr %l111, !tbaa !21
  br label %bb57
bb55:
  %t141 = load ptr, ptr %l0, !tbaa !29
  %t143 = getelementptr %"compiler/check:Checker", ptr %t141, i32 0, i32 14
  %t144 = load i64, ptr %l15, !tbaa !24
  %t147 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v0, ptr %t143, i64 %t144)
  store ptr %t147, ptr %l115
  br label %bb56
bb56:
  %t148 = load ptr, ptr %l115, !tbaa !29
  %t150 = getelementptr %"compiler/typed:Body", ptr %t148, i32 0, i32 11
  %t151 = load ptr, ptr %t150, !tbaa !29
  %t153 = icmp eq ptr %t151, null
  store i1 %t153, ptr %l111, !tbaa !21
  br label %bb57
bb57:
  %t155 = load i1, ptr %l111, !tbaa !21
  br i1 %t155, label %bb58, label %bb59
bb58:
  %t156 = load i64, ptr %l14, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eSetAt_3cBool_3e(ptr %s0, ptr %l3, i64 %t156, i1 true)
  br label %bb60
bb59:
  br label %bb61
bb60:
  br label %bb87
bb61:
  %t159 = load ptr, ptr %l0, !tbaa !29
  %t161 = getelementptr %"compiler/check:Checker", ptr %t159, i32 0, i32 115
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eClear_3cI64_3e(ptr %v0, ptr %t161)
  br label %bb62
bb62:
  %t163 = load ptr, ptr %l0, !tbaa !29
  store ptr %t163, ptr %l123, !tbaa !29
  %t164 = load ptr, ptr %l0, !tbaa !29
  %t166 = getelementptr %"compiler/check:Checker", ptr %t164, i32 0, i32 14
  %t167 = load i64, ptr %l15, !tbaa !24
  %t170 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v0, ptr %t166, i64 %t167)
  store ptr %t170, ptr %l127
  br label %bb63
bb63:
  %t171 = load ptr, ptr %l127, !tbaa !29
  %t173 = getelementptr %"compiler/typed:Body", ptr %t171, i32 0, i32 11
  %t174 = load ptr, ptr %t173, !tbaa !29
  %t175 = load ptr, ptr %l123, !tbaa !29
  %t177 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eeffB(ptr %v0, ptr %v0, ptr %t175, ptr %t174)
  store i1 %t177, ptr %l130
  br label %bb64
bb64:
  %t178 = load i1, ptr %l130, !tbaa !21
  br i1 %t178, label %bb65, label %bb66
bb65:
  %t179 = load i64, ptr %l14, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eSetAt_3cBool_3e(ptr %s0, ptr %l3, i64 %t179, i1 true)
  br label %bb67
bb66:
  br label %bb68
bb67:
  br label %bb87
bb68:
  %t182 = load ptr, ptr %l0, !tbaa !29
  %t184 = getelementptr %"compiler/check:Checker", ptr %t182, i32 0, i32 115
  store ptr %t184, ptr %l16, !tbaa !29
  store i64 0, ptr %l17, !tbaa !24
  br label %bb69
bb69:
  store %olang.scope zeroinitializer, ptr %s14
  %t186 = load i64, ptr %l17, !tbaa !24
  store i64 %t186, ptr %l135, !tbaa !24
  %t187 = load ptr, ptr %l16, !tbaa !29
  %t189 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %t187)
  store i64 %t189, ptr %l137
  br label %bb70
bb70:
  %t190 = load i64, ptr %l135, !tbaa !24
  %t191 = load i64, ptr %l137, !tbaa !24
  %t192 = icmp slt i64 %t190, %t191
  %t194 = xor i1 %t192, true
  br i1 %t194, label %bb71, label %bb72
bb71:
  call void @__olang_scope_close(ptr %s14)
  br label %bb86
bb72:
  br label %bb73
bb73:
  %t196 = load ptr, ptr %l16, !tbaa !29
  %t197 = load i64, ptr %l17, !tbaa !24
  %t200 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t196, i64 %t197)
  store i64 %t200, ptr %l142
  br label %bb74
bb74:
  %t201 = load i64, ptr %l142, !tbaa !24
  store i64 %t201, ptr %l18, !tbaa !24
  store ptr %l4, ptr %l143, !tbaa !29
  %t202 = load i64, ptr %l14, !tbaa !24
  %t203 = load i64, ptr %l18, !tbaa !24
  %t206 = call %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" @std_2fpair_3aPair_3cI64_2c_20I64_3e_2ector(ptr %s14, i64 %t202, i64 %t203)
  store %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t206, ptr %l146
  br label %bb75
bb75:
  %t207 = load ptr, ptr %l143, !tbaa !29
  %t208 = load %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %l146
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_3e_H2474e1fc3c93452d7765e4ed18f29a03(ptr %s0, ptr %t207, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t208)
  br label %bb76
bb76:
  %t209 = load i64, ptr %l18, !tbaa !24
  %t212 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2eHas_3cI64_2c_20I64_3e(ptr %s0, ptr %l1, i64 %t209)
  store i1 %t212, ptr %l149
  br label %bb77
bb77:
  %t213 = load i1, ptr %l149, !tbaa !21
  %t214 = xor i1 %t213, true
  br i1 %t214, label %bb78, label %bb79
bb78:
  store ptr %l1, ptr %l151, !tbaa !29
  %t216 = load i64, ptr %l18, !tbaa !24
  store i64 %t216, ptr %l152, !tbaa !24
  %t218 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %s0, ptr %l2)
  store i64 %t218, ptr %l154
  br label %bb80
bb79:
  br label %bb84
bb80:
  %t219 = load ptr, ptr %l151, !tbaa !29
  %t220 = load i64, ptr %l152, !tbaa !24
  %t221 = load i64, ptr %l154, !tbaa !24
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2ePut_3cI64_2c_20I64_3e(ptr %s0, ptr %t219, i64 %t220, i64 %t221)
  br label %bb81
bb81:
  %t222 = load i64, ptr %l18, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %s0, ptr %l2, i64 %t222)
  br label %bb82
bb82:
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2ePush_3cBool_3e(ptr %s0, ptr %l3, i1 false)
  br label %bb83
bb83:
  br label %bb84
bb84:
  call void @__olang_scope_close(ptr %s14)
  br label %bb85
bb85:
  %t226 = load i64, ptr %l17, !tbaa !24
  %t228 = add i64 %t226, 1
  store i64 %t228, ptr %l17, !tbaa !24
  br label %bb69
bb86:
  br label %bb87
bb87:
  %t230 = load i64, ptr %l14, !tbaa !24
  %t232 = add i64 %t230, 1
  store i64 %t232, ptr %l14, !tbaa !24
  br label %bb44
bb88:
  store i1 true, ptr %l19, !tbaa !21
  br label %bb89
bb89:
  %t234 = load i1, ptr %l19, !tbaa !21
  %t236 = xor i1 %t234, true
  br i1 %t236, label %bb90, label %bb91
bb90:
  br label %bb115
bb91:
  br label %bb92
bb92:
  store i1 false, ptr %l19, !tbaa !21
  store ptr %l4, ptr %l20, !tbaa !29
  store i64 0, ptr %l21, !tbaa !24
  br label %bb93
bb93:
  %t239 = load i64, ptr %l21, !tbaa !24
  store i64 %t239, ptr %l165, !tbaa !24
  %t240 = load ptr, ptr %l20, !tbaa !29
  %t242 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_3e_Hda4ef06466535e66801340e999dad217(ptr %s0, ptr %t240)
  store i64 %t242, ptr %l167
  br label %bb94
bb94:
  %t243 = load i64, ptr %l165, !tbaa !24
  %t244 = load i64, ptr %l167, !tbaa !24
  %t245 = icmp slt i64 %t243, %t244
  %t247 = xor i1 %t245, true
  br i1 %t247, label %bb95, label %bb96
bb95:
  br label %bb113
bb96:
  br label %bb97
bb97:
  %t249 = load ptr, ptr %l20, !tbaa !29
  %t250 = load i64, ptr %l21, !tbaa !24
  %t253 = call %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_3e_H87a29777ccf22aa2985fa9d3c61f9cd3(ptr %s0, ptr %t249, i64 %t250)
  store %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t253, ptr %l172
  br label %bb98
bb98:
  %t254 = load %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %l172
  store %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t254, ptr %l22
  %t255 = getelementptr %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %l22, i32 0, i32 0
  %t256 = load i64, ptr %t255, !tbaa !24
  %t259 = call i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eAt_3cBool_3e(ptr %s0, ptr %l3, i64 %t256)
  store i1 %t259, ptr %l175
  br label %bb99
bb99:
  %t260 = load i1, ptr %l175, !tbaa !21
  br i1 %t260, label %bb100, label %bb101
bb100:
  br label %bb112
bb101:
  br label %bb102
bb102:
  store ptr %l3, ptr %l176, !tbaa !29
  %t261 = getelementptr %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %l22, i32 0, i32 1
  %t262 = load i64, ptr %t261, !tbaa !24
  %t265 = call { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2eGet_3cI64_2c_20I64_3e(ptr %s0, ptr %l1, i64 %t262)
  %t266 = extractvalue { i32, i64 } %t265, 1
  %t267 = extractvalue { i32, i64 } %t265, 0
  store i32 %t267, ptr %l181
  %t268 = icmp ne i32 %t267, 0
  br i1 %t268, label %bb104, label %ok.269, !prof !99
ok.269:
  store i64 %t266, ptr %l180
  br label %bb103
bb103:
  %t270 = load i64, ptr %l180, !tbaa !24
  store i64 %t270, ptr %l177, !tbaa !24
  br label %bb106
bb104:
  br label %bb105
bb105:
  store i64 0, ptr %l177, !tbaa !24
  br label %bb106
bb106:
  %t271 = load ptr, ptr %l176, !tbaa !29
  %t272 = load i64, ptr %l177, !tbaa !24
  %t273 = call i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eAt_3cBool_3e(ptr %s0, ptr %t271, i64 %t272)
  store i1 %t273, ptr %l182
  br label %bb107
bb107:
  %t274 = load i1, ptr %l182, !tbaa !21
  br i1 %t274, label %bb108, label %bb109
bb108:
  %t275 = getelementptr %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %l22, i32 0, i32 0
  %t276 = load i64, ptr %t275, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eSetAt_3cBool_3e(ptr %s0, ptr %l3, i64 %t276, i1 true)
  br label %bb110
bb109:
  br label %bb111
bb110:
  store i1 true, ptr %l19, !tbaa !21
  br label %bb111
bb111:
  br label %bb112
bb112:
  %t279 = load i64, ptr %l21, !tbaa !24
  %t281 = add i64 %t279, 1
  store i64 %t281, ptr %l21, !tbaa !24
  br label %bb93
bb113:
  br label %bb114
bb114:
  br label %bb89
bb115:
  %t283 = load ptr, ptr %l0, !tbaa !29
  %t285 = getelementptr %"compiler/check:Checker", ptr %t283, i32 0, i32 114
  store ptr %t285, ptr %l23, !tbaa !29
  store i64 0, ptr %l24, !tbaa !24
  br label %bb116
bb116:
  store %olang.scope zeroinitializer, ptr %s25
  %t287 = load i64, ptr %l24, !tbaa !24
  store i64 %t287, ptr %l189, !tbaa !24
  %t288 = load ptr, ptr %l23, !tbaa !29
  %t290 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3aidleCall_3e_2eLen_3ccompiler_2fcheck_3aidleCall_3e(ptr %v0, ptr %t288)
  store i64 %t290, ptr %l191
  br label %bb117
bb117:
  %t291 = load i64, ptr %l189, !tbaa !24
  %t292 = load i64, ptr %l191, !tbaa !24
  %t293 = icmp slt i64 %t291, %t292
  %t295 = xor i1 %t293, true
  br i1 %t295, label %bb118, label %bb119
bb118:
  call void @__olang_scope_close(ptr %s25)
  br label %bb162
bb119:
  br label %bb120
bb120:
  %t297 = load i64, ptr %l24, !tbaa !24
  store i64 %t297, ptr %l25, !tbaa !24
  %t299 = load ptr, ptr %l23, !tbaa !29
  %t300 = load i64, ptr %l24, !tbaa !24
  %t303 = call %"compiler/check:idleCall" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3aidleCall_3e_2eAt_3ccompiler_2fcheck_3aidleCall_3e(ptr %v0, ptr %v0, ptr %t299, i64 %t300)
  store %"compiler/check:idleCall" %t303, ptr %l197
  br label %bb121
bb121:
  %t304 = load %"compiler/check:idleCall", ptr %l197
  store %"compiler/check:idleCall" %t304, ptr %l26
  %t305 = load i64, ptr %l25, !tbaa !24
  %t308 = call i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eAt_3cBool_3e(ptr %s0, ptr %l5, i64 %t305)
  store i1 %t308, ptr %l200
  br label %bb122
bb122:
  %t309 = load i1, ptr %l200, !tbaa !21
  br i1 %t309, label %bb123, label %bb124
bb123:
  store i1 true, ptr %l201, !tbaa !21
  br label %bb125
bb124:
  %t310 = getelementptr %"compiler/check:idleCall", ptr %l26, i32 0, i32 0
  %t311 = load i64, ptr %t310, !tbaa !24
  %t313 = icmp slt i64 %t311, 0
  store i1 %t313, ptr %l201, !tbaa !21
  br label %bb125
bb125:
  %t315 = load i1, ptr %l201, !tbaa !21
  br i1 %t315, label %bb126, label %bb127
bb126:
  store i1 true, ptr %l204, !tbaa !21
  br label %bb129
bb127:
  %t316 = getelementptr %"compiler/check:idleCall", ptr %l26, i32 0, i32 0
  %t317 = load i64, ptr %t316, !tbaa !24
  store i64 %t317, ptr %l205, !tbaa !24
  %t318 = load ptr, ptr %l0, !tbaa !29
  %t320 = getelementptr %"compiler/check:Checker", ptr %t318, i32 0, i32 14
  %t322 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_Ha1ef0e278819e2a81939c80ef5438e96(ptr %v0, ptr %t320)
  store i64 %t322, ptr %l208
  br label %bb128
bb128:
  %t323 = load i64, ptr %l205, !tbaa !24
  %t324 = load i64, ptr %l208, !tbaa !24
  %t325 = icmp sge i64 %t323, %t324
  store i1 %t325, ptr %l204, !tbaa !21
  br label %bb129
bb129:
  %t327 = load i1, ptr %l204, !tbaa !21
  br i1 %t327, label %bb130, label %bb131
bb130:
  call void @__olang_scope_close(ptr %s25)
  br label %bb161
bb131:
  br label %bb132
bb132:
  store i1 true, ptr %l27, !tbaa !21
  %t328 = load i64, ptr %l25, !tbaa !24
  %t331 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %s0, ptr %l6, i64 %t328)
  store i64 %t331, ptr %l212
  br label %bb133
bb133:
  %t332 = load i64, ptr %l212, !tbaa !24
  store i64 %t332, ptr %l28, !tbaa !24
  %t333 = load i64, ptr %l25, !tbaa !24
  %t335 = add i64 %t333, 1
  %t338 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %s0, ptr %l6, i64 %t335)
  store i64 %t338, ptr %l216
  br label %bb134
bb134:
  %t339 = load i64, ptr %l216, !tbaa !24
  store i64 %t339, ptr %l29, !tbaa !24
  store i64 1, ptr %l30, !tbaa !24
  %t340 = load i64, ptr %l29, !tbaa !24
  %t341 = load i64, ptr %l28, !tbaa !24
  %t344 = icmp sgt i64 %t340, %t341
  br i1 %t344, label %bb135, label %bb136
bb135:
  %t346 = load i64, ptr %l30, !tbaa !24
  %t348 = icmp sgt i64 %t346, 0
  br i1 %t348, label %bb137, label %bb138
bb136:
  store i64 0, ptr %l220, !tbaa !24
  br label %bb140
bb137:
  %t350 = load i64, ptr %l29, !tbaa !24
  %t351 = load i64, ptr %l28, !tbaa !24
  %t354 = sub i64 %t350, %t351
  %t355 = load i64, ptr %l30, !tbaa !24
  %t358 = add i64 %t354, %t355
  %t360 = sub i64 %t358, 1
  %t361 = load i64, ptr %l30, !tbaa !24
  %t364 = sdiv i64 %t360, %t361
  store i64 %t364, ptr %l223, !tbaa !24
  br label %bb139
bb138:
  store i64 0, ptr %l223, !tbaa !24
  br label %bb139
bb139:
  %t366 = load i64, ptr %l223, !tbaa !24
  store i64 %t366, ptr %l220, !tbaa !24
  br label %bb140
bb140:
  %t367 = load i64, ptr %l220, !tbaa !24
  store i64 %t367, ptr %l31, !tbaa !24
  store i64 0, ptr %l32, !tbaa !24
  br label %bb141
bb141:
  %t368 = load i64, ptr %l32, !tbaa !24
  %t369 = load i64, ptr %l31, !tbaa !24
  %t372 = icmp slt i64 %t368, %t369
  %t374 = xor i1 %t372, true
  br i1 %t374, label %bb142, label %bb143
bb142:
  br label %bb155
bb143:
  br label %bb144
bb144:
  %t376 = load i64, ptr %l28, !tbaa !24
  %t377 = load i64, ptr %l32, !tbaa !24
  %t378 = load i64, ptr %l30, !tbaa !24
  %t381 = mul i64 %t377, %t378
  %t384 = add i64 %t376, %t381
  store ptr %l3, ptr %l241, !tbaa !29
  store ptr %l1, ptr %l243, !tbaa !29
  %t389 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %s0, ptr %l7, i64 %t384)
  store i64 %t389, ptr %l246
  br label %bb145
bb145:
  %t390 = load ptr, ptr %l243, !tbaa !29
  %t391 = load i64, ptr %l246, !tbaa !24
  %t392 = call { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2eGet_3cI64_2c_20I64_3e(ptr %s0, ptr %t390, i64 %t391)
  %t393 = extractvalue { i32, i64 } %t392, 1
  %t394 = extractvalue { i32, i64 } %t392, 0
  store i32 %t394, ptr %l248
  %t395 = icmp ne i32 %t394, 0
  br i1 %t395, label %bb147, label %ok.396, !prof !99
ok.396:
  store i64 %t393, ptr %l247
  br label %bb146
bb146:
  %t397 = load i64, ptr %l247, !tbaa !24
  store i64 %t397, ptr %l242, !tbaa !24
  br label %bb149
bb147:
  br label %bb148
bb148:
  store i64 0, ptr %l242, !tbaa !24
  br label %bb149
bb149:
  %t398 = load ptr, ptr %l241, !tbaa !29
  %t399 = load i64, ptr %l242, !tbaa !24
  %t400 = call i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eAt_3cBool_3e(ptr %s0, ptr %t398, i64 %t399)
  store i1 %t400, ptr %l249
  br label %bb150
bb150:
  %t401 = load i1, ptr %l249, !tbaa !21
  br i1 %t401, label %bb151, label %bb152
bb151:
  store i1 false, ptr %l27, !tbaa !21
  br label %bb153
bb152:
  br label %bb153
bb153:
  br label %bb154
bb154:
  %t402 = load i64, ptr %l32, !tbaa !24
  %t404 = add i64 %t402, 1
  store i64 %t404, ptr %l32, !tbaa !24
  br label %bb141
bb155:
  %t406 = load i1, ptr %l27, !tbaa !21
  %t408 = xor i1 %t406, true
  br i1 %t408, label %bb156, label %bb157
bb156:
  call void @__olang_scope_close(ptr %s25)
  br label %bb161
bb157:
  br label %bb158
bb158:
  %t410 = load ptr, ptr %l0, !tbaa !29
  %t412 = getelementptr %"compiler/check:Checker", ptr %t410, i32 0, i32 1
  %t413 = load ptr, ptr %t412, !tbaa !29
  %t415 = getelementptr %"compiler/generic:Program", ptr %t413, i32 0, i32 0
  %t416 = load ptr, ptr %t415, !tbaa !29
  %t418 = getelementptr %"compiler/load:Loader", ptr %t416, i32 0, i32 4
  %t419 = load ptr, ptr %t418, !tbaa !29
  store ptr %t419, ptr %l257, !tbaa !29
  %t420 = getelementptr %"compiler/check:idleCall", ptr %l26, i32 0, i32 1
  %t421 = load i64, ptr %t420, !tbaa !24
  %t422 = getelementptr %"compiler/check:idleCall", ptr %l26, i32 0, i32 2
  %t423 = getelementptr %"compiler/source:Span", ptr %t422, i32 0, i32 0
  %t424 = load i32, ptr %t423, !tbaa !23
  %t426 = sext i32 %t424 to i64
  %t427 = getelementptr %"compiler/check:idleCall", ptr %l26, i32 0, i32 2
  %t428 = getelementptr %"compiler/source:Span", ptr %t427, i32 0, i32 1
  %t429 = load i32, ptr %t428, !tbaa !23
  %t431 = sext i32 %t429 to i64
  store { i64, [3 x i64] } zeroinitializer, ptr %t432
  %t433 = getelementptr { i64, [3 x i64] }, ptr %t432, i32 0, i32 0
  store i64 3, ptr %t433
  %t435 = insertvalue { i64, i64, i64 } undef, i64 %t421, 0
  %t437 = insertvalue { i64, i64, i64 } %t435, i64 %t426, 1
  %t439 = insertvalue { i64, i64, i64 } %t437, i64 %t431, 2
  %t440 = getelementptr { i64, [3 x i64] }, ptr %t432, i32 0, i32 1
  store { i64, i64, i64 } %t439, ptr %t440
  %t441 = load { i64, [3 x i64] }, ptr %t432
  store { i64, [3 x i64] } %t441, ptr %l263
  %t442 = getelementptr %"compiler/check:idleCall", ptr %l26, i32 0, i32 3
  %t443 = load { i64, ptr }, ptr %t442, !tbaa !27
  %t445 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eCallDoesNothing(ptr %v0, ptr %s25, { i64, ptr } %t443)
  store %"compiler/diagmsg:Msg" %t445, ptr %l265
  br label %bb159
bb159:
  %t446 = load ptr, ptr %l257, !tbaa !29
  %t447 = load { i64, [3 x i64] }, ptr %l263
  %t448 = load %"compiler/diagmsg:Msg", ptr %l265
  %t449 = call i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eError(ptr %v0, ptr %s25, ptr %t446, { i64, [3 x i64] } %t447, %"compiler/diagmsg:Msg" %t448)
  store i64 %t449, ptr %l266
  br label %bb160
bb160:
  call void @__olang_scope_close(ptr %s25)
  br label %bb161
bb161:
  %t450 = load i64, ptr %l24, !tbaa !24
  %t452 = add i64 %t450, 1
  store i64 %t452, ptr %l24, !tbaa !24
  br label %bb116
bb162:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2espell(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i32 %a2, i1 %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i32
  %l4 = alloca i32
  %l5 = alloca i32
  %l6 = alloca { i64, ptr }
  %l7 = alloca { i64, ptr }
  %l8 = alloca i64
  %l9 = alloca i1
  %l10 = alloca i64
  %l11 = alloca i64
  %l12 = alloca i64
  %l13 = alloca i64
  %l14 = alloca i64
  %l15 = alloca i64
  %l16 = alloca { i64, ptr }
  %l17 = alloca i32
  %l18 = alloca i64
  %l19 = alloca i64
  %l20 = alloca i64
  %l21 = alloca i64
  %l22 = alloca i64
  %l23 = alloca i64
  %l24 = alloca i1
  %l25 = alloca i64
  %l26 = alloca i32
  %l27 = alloca { i64, ptr }
  %l28 = alloca i64
  %l29 = alloca { i64, ptr }
  %l30 = alloca i64
  %l31 = alloca i64
  %l33 = alloca i1
  %l34 = alloca i1
  %l35 = alloca i1
  %l36 = alloca { i64, ptr }
  %l37 = alloca { i64, ptr }
  %l38 = alloca i64
  %l39 = alloca i64
  %l40 = alloca i64
  %l41 = alloca i64
  %l42 = alloca i64
  %l43 = alloca i64
  %l44 = alloca { i64, ptr }
  %l45 = alloca i64
  %l46 = alloca i64
  %l47 = alloca i64
  %l48 = alloca i64
  %l49 = alloca i64
  %l50 = alloca i64
  %l51 = alloca i64
  %l52 = alloca { i64, ptr }
  %l53 = alloca i64
  %l54 = alloca i64
  %l55 = alloca i32
  %l56 = alloca { i64, ptr }
  %l57 = alloca { i64, ptr }
  %l58 = alloca { i64, ptr }
  %l59 = alloca i64
  %l60 = alloca i64
  %l61 = alloca i64
  %l62 = alloca i64
  %l63 = alloca i64
  %l64 = alloca i64
  %l65 = alloca i64
  %l66 = alloca { i64, ptr }
  %l67 = alloca i64
  %l68 = alloca i64
  %l69 = alloca i64
  %l70 = alloca i64
  %l71 = alloca i64
  %l72 = alloca i64
  %l73 = alloca { i64, ptr }
  %l74 = alloca i64
  %l75 = alloca i64
  %l76 = alloca i64
  %l77 = alloca i64
  %l78 = alloca i64
  %l79 = alloca i64
  %l84 = alloca i1
  %l85 = alloca ptr
  %l88 = alloca { i64, ptr }
  %l90 = alloca { i64, ptr }
  %l96 = alloca { i64, ptr }
  %l102 = alloca i32
  %l127 = alloca i32
  %l128 = alloca ptr
  %l131 = alloca ptr
  %l136 = alloca i32
  %l137 = alloca i32
  %l138 = alloca { i64, ptr }
  %l141 = alloca ptr
  %l144 = alloca ptr
  %l149 = alloca i32
  %l150 = alloca i64
  %l151 = alloca { i64, ptr }
  %l156 = alloca ptr
  %l161 = alloca i32
  %l162 = alloca { i64, ptr }
  %l167 = alloca i64
  %l173 = alloca i64
  %l176 = alloca i64
  %l196 = alloca i1
  %l198 = alloca i64
  %l205 = alloca ptr
  %l207 = alloca ptr
  %l212 = alloca i32
  %l213 = alloca i1
  %l214 = alloca { i64, ptr }
  %l218 = alloca { i64, ptr }
  %l220 = alloca { i64, ptr }
  %l223 = alloca { i64, ptr }
  %l232 = alloca ptr
  %l233 = alloca ptr
  %l236 = alloca ptr
  %l241 = alloca i32
  %l242 = alloca i64
  %l243 = alloca { i64, ptr }
  %l245 = alloca ptr
  %l246 = alloca ptr
  %l249 = alloca ptr
  %l254 = alloca i32
  %l255 = alloca i32
  %l256 = alloca { i64, ptr }
  %l257 = alloca ptr
  %l258 = alloca ptr
  %l263 = alloca i32
  %l268 = alloca ptr
  %l273 = alloca i32
  %l274 = alloca { i64, ptr }
  %l279 = alloca i32
  %l284 = alloca ptr
  %l285 = alloca ptr
  %l290 = alloca i64
  %l291 = alloca { i64, ptr }
  %l293 = alloca ptr
  %l294 = alloca ptr
  %l299 = alloca i32
  %l300 = alloca { i64, ptr }
  %l306 = alloca { i64, ptr }
  %l314 = alloca i64
  %l317 = alloca i64
  %l340 = alloca { i64, ptr }
  %l349 = alloca ptr
  %l350 = alloca ptr
  %l355 = alloca i32
  %l362 = alloca ptr
  %l363 = alloca ptr
  %l368 = alloca i32
  %l378 = alloca i64
  %l384 = alloca ptr
  %l385 = alloca ptr
  %l388 = alloca ptr
  %l393 = alloca i32
  %l394 = alloca i32
  %l397 = alloca i1
  %l403 = alloca ptr
  %l404 = alloca ptr
  %l409 = alloca i32
  %l410 = alloca ptr
  %l415 = alloca { i64, ptr }
  %l422 = alloca i32
  %l425 = alloca ptr
  %l430 = alloca i32
  %l431 = alloca { i64, ptr }
  %l439 = alloca { i64, ptr }
  %l453 = alloca i32
  %l456 = alloca i1
  %l459 = alloca ptr
  %l464 = alloca i32
  %l465 = alloca { i64, ptr }
  %l468 = alloca i1
  %l473 = alloca i1
  %l476 = alloca i1
  %l486 = alloca i32
  %l489 = alloca ptr
  %l490 = alloca ptr
  %l495 = alloca i32
  %l496 = alloca ptr
  %l501 = alloca i1
  %l502 = alloca { i64, ptr }
  %l508 = alloca ptr
  %l513 = alloca i1
  %l514 = alloca { i64, ptr }
  %l517 = alloca ptr
  %l522 = alloca i32
  %l523 = alloca { i64, ptr }
  %l528 = alloca { i64, ptr }
  %l534 = alloca i64
  %l537 = alloca i64
  %l563 = alloca ptr
  %l565 = alloca { i64, ptr }
  %l570 = alloca { i64, ptr }
  %l574 = alloca { i64, ptr }
  %l584 = alloca i32
  %l589 = alloca ptr
  %l594 = alloca i32
  %l595 = alloca { i64, ptr }
  %l601 = alloca i64
  %l604 = alloca i64
  %l622 = alloca ptr
  %l625 = alloca { i64, ptr }
  %l628 = alloca { i64, ptr }
  %l637 = alloca ptr
  %l641 = alloca i1
  %l646 = alloca i32
  %l649 = alloca i1
  %l652 = alloca ptr
  %l657 = alloca i32
  %l658 = alloca { i64, ptr }
  %l661 = alloca i1
  %l666 = alloca i64
  %l685 = alloca { i64, ptr }
  %l691 = alloca ptr
  %l694 = alloca { i64, ptr }
  %l702 = alloca ptr
  %l708 = alloca { i64, ptr }
  %l714 = alloca ptr
  %l715 = alloca ptr
  %l720 = alloca i32
  %l728 = alloca { i64, ptr }
  %l731 = alloca ptr
  %l736 = alloca i32
  %l737 = alloca { i64, ptr }
  %l742 = alloca { i64, ptr }
  %l748 = alloca i64
  %l751 = alloca i64
  %l770 = alloca ptr
  %l772 = alloca { i64, ptr }
  %l775 = alloca { i64, ptr }
  %l780 = alloca i1
  %l781 = alloca { i64, ptr }
  %l787 = alloca ptr
  %l791 = alloca { i64, ptr }
  %l794 = alloca i32
  %l795 = alloca { i64, ptr }
  %l806 = alloca ptr
  %l807 = alloca ptr
  %l811 = alloca { i64, ptr }
  %l814 = alloca i32
  %l821 = alloca i64
  %l824 = alloca i64
  %l845 = alloca ptr
  %l847 = alloca { i64, ptr }
  %l852 = alloca { i64, ptr }
  %l856 = alloca { i64, ptr }
  %l871 = alloca ptr
  %l876 = alloca i64
  %l881 = alloca ptr
  %l882 = alloca ptr
  %l884 = alloca ptr
  %l889 = alloca i64
  %l894 = alloca i64
  %l895 = alloca %"compiler/generic:varRow"
  %l897 = alloca { i64, ptr }
  %l902 = alloca ptr
  %l907 = alloca i32
  %l908 = alloca { i64, ptr }
  %l918 = alloca i64
  %l921 = alloca i64
  %l944 = alloca { i64, ptr }
  %l949 = alloca ptr
  %l955 = alloca { i64, ptr }
  %s1 = alloca %olang.scope
  %s2 = alloca %olang.scope
  %s4 = alloca %olang.scope
  %s5 = alloca %olang.scope
  %s6 = alloca %olang.scope
  %s7 = alloca %olang.scope
  %s8 = alloca %olang.scope
  %s9 = alloca %olang.scope
  %s13 = alloca %olang.scope
  %s14 = alloca %olang.scope
  %s19 = alloca %olang.scope
  %s22 = alloca %olang.scope
  %s28 = alloca %olang.scope
  %s30 = alloca %olang.scope
  %s31 = alloca %olang.scope
  %s32 = alloca %olang.scope
  %s33 = alloca %olang.scope
  %s34 = alloca %olang.scope
  %s35 = alloca %olang.scope
  %s40 = alloca %olang.scope
  %s44 = alloca %olang.scope
  %s49 = alloca %olang.scope
  %s52 = alloca %olang.scope
  %s53 = alloca %olang.scope
  %s55 = alloca %olang.scope
  %s59 = alloca %olang.scope
  %s60 = alloca %olang.scope
  %s65 = alloca %olang.scope
  %s68 = alloca %olang.scope
  %s71 = alloca %olang.scope
  %s75 = alloca %olang.scope
  %s78 = alloca %olang.scope
  %s80 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store i32 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/check:Checker", ptr %t1, i32 0, i32 1
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t6 = getelementptr %"compiler/generic:Program", ptr %t4, i32 0, i32 2
  %t7 = load i32, ptr %l2, !tbaa !23
  %t10 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsNumber(ptr %v0, ptr %t6, i32 %t7)
  store i1 %t10, ptr %l84
  br label %bb1
bb1:
  %t11 = load i1, ptr %l84, !tbaa !21
  br i1 %t11, label %bb2, label %bb3
bb2:
  store %olang.scope zeroinitializer, ptr %s1
  %t12 = load ptr, ptr %l1, !tbaa !29
  store ptr %t12, ptr %l85, !tbaa !29
  %t13 = load i32, ptr %l2, !tbaa !23
  %t15 = icmp sle i32 %t13, 14
  br i1 %t15, label %bb4, label %bb5
bb3:
  br label %bb10
bb4:
  %t17 = load i32, ptr %l2, !tbaa !23
  %t19 = call { i64, ptr } @compiler_2fcheck_2eprimName(ptr %s1, i32 %t17)
  store { i64, ptr } %t19, ptr %l90
  br label %bb6
bb5:
  %t20 = load ptr, ptr %l0, !tbaa !29
  %t22 = getelementptr %"compiler/check:Checker", ptr %t20, i32 0, i32 1
  %t23 = load ptr, ptr %t22, !tbaa !29
  %t25 = getelementptr %"compiler/generic:Program", ptr %t23, i32 0, i32 2
  %t26 = load i32, ptr %l2, !tbaa !23
  %t28 = inttoptr i64 0 to ptr
  %t31 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eCanon(ptr %v0, ptr %s1, ptr %t28, ptr %t25, i32 %t26)
  store { i64, ptr } %t31, ptr %l96
  br label %bb7
bb6:
  %t32 = load { i64, ptr }, ptr %l90, !tbaa !27
  store { i64, ptr } %t32, ptr %l88, !tbaa !27
  br label %bb8
bb7:
  %t33 = load { i64, ptr }, ptr %l96, !tbaa !27
  %t34 = extractvalue { i64, ptr } %t33, 0
  %t35 = extractvalue { i64, ptr } %t33, 1
  %t36 = mul i64 %t34, 1
  %t37 = call ptr @__olang_scope_alloc(ptr %s1, i64 %t36)
  call void @llvm.memcpy.p0.p0.i64(ptr %t37, ptr %t35, i64 %t36, i1 false)
  %t38 = insertvalue { i64, ptr } undef, i64 %t34, 0
  %t39 = insertvalue { i64, ptr } %t38, ptr %t37, 1
  store { i64, ptr } %t39, ptr %l88, !tbaa !27
  br label %bb8
bb8:
  %t41 = load ptr, ptr %l85, !tbaa !29
  %t42 = load { i64, ptr }, ptr %l88, !tbaa !27
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v1, ptr %s1, ptr %t41, { i64, ptr } %t42)
  br label %bb9
bb9:
  call void @__olang_scope_close(ptr %s1)
  br label %ret
bb10:
  %t43 = load ptr, ptr %l0, !tbaa !29
  %t45 = getelementptr %"compiler/check:Checker", ptr %t43, i32 0, i32 1
  %t46 = load ptr, ptr %t45, !tbaa !29
  %t48 = getelementptr %"compiler/generic:Program", ptr %t46, i32 0, i32 2
  %t49 = load i32, ptr %l2, !tbaa !23
  %t52 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t48, i32 %t49)
  store i32 %t52, ptr %l102
  br label %bb11
bb11:
  %t53 = load i32, ptr %l102, !range !{i32 0, i32 33}
  store i32 %t53, ptr %l4
  %t54 = load i32, ptr %l4, !range !{i32 0, i32 33}
  %t56 = trunc i64 2 to i32
  %t57 = icmp eq i32 %t54, %t56
  br i1 %t57, label %bb12, label %bb13
bb12:
  br label %bb14
bb13:
  br label %bb16
bb14:
  store %olang.scope zeroinitializer, ptr %s2
  %t59 = load ptr, ptr %l1, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v1, ptr %s2, ptr %t59, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d34, i32 0, i32 1) })
  br label %bb15
bb15:
  call void @__olang_scope_close(ptr %s2)
  br label %bb447
bb16:
  %t61 = load i32, ptr %l4, !range !{i32 0, i32 33}
  %t63 = trunc i64 0 to i32
  %t64 = icmp eq i32 %t61, %t63
  br i1 %t64, label %bb17, label %bb18
bb17:
  br label %bb19
bb18:
  br label %bb21
bb19:
  %t66 = load ptr, ptr %l1, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePushChar(ptr %v1, ptr %t66, i8 63)
  br label %bb20
bb20:
  br label %bb447
bb21:
  %t68 = load i32, ptr %l4, !range !{i32 0, i32 33}
  %t70 = trunc i64 1 to i32
  %t71 = icmp eq i32 %t68, %t70
  br i1 %t71, label %bb22, label %bb23
bb22:
  br label %bb24
bb23:
  br label %bb26
bb24:
  store %olang.scope zeroinitializer, ptr %s4
  %t73 = load ptr, ptr %l1, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v1, ptr %s4, ptr %t73, { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d35, i32 0, i32 1) })
  br label %bb25
bb25:
  call void @__olang_scope_close(ptr %s4)
  br label %bb447
bb26:
  %t75 = load i32, ptr %l4, !range !{i32 0, i32 33}
  %t77 = trunc i64 15 to i32
  %t78 = icmp eq i32 %t75, %t77
  br i1 %t78, label %bb27, label %bb28
bb27:
  br label %bb29
bb28:
  br label %bb31
bb29:
  store %olang.scope zeroinitializer, ptr %s5
  %t80 = load ptr, ptr %l1, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v1, ptr %s5, ptr %t80, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d36, i32 0, i32 1) })
  br label %bb30
bb30:
  call void @__olang_scope_close(ptr %s5)
  br label %bb447
bb31:
  %t82 = load i32, ptr %l4, !range !{i32 0, i32 33}
  %t84 = trunc i64 16 to i32
  %t85 = icmp eq i32 %t82, %t84
  br i1 %t85, label %bb32, label %bb33
bb32:
  br label %bb34
bb33:
  br label %bb36
bb34:
  store %olang.scope zeroinitializer, ptr %s6
  %t87 = load ptr, ptr %l1, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v1, ptr %s6, ptr %t87, { i64, ptr } { i64 27, ptr getelementptr inbounds (<{ i64, [27 x i8] }>, ptr @.d37, i32 0, i32 1) })
  br label %bb35
bb35:
  call void @__olang_scope_close(ptr %s6)
  br label %bb447
bb36:
  %t89 = load i32, ptr %l4, !range !{i32 0, i32 33}
  %t91 = trunc i64 17 to i32
  %t92 = icmp eq i32 %t89, %t91
  br i1 %t92, label %bb37, label %bb38
bb37:
  br label %bb39
bb38:
  br label %bb41
bb39:
  store %olang.scope zeroinitializer, ptr %s7
  %t94 = load ptr, ptr %l1, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v1, ptr %s7, ptr %t94, { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d38, i32 0, i32 1) })
  br label %bb40
bb40:
  call void @__olang_scope_close(ptr %s7)
  br label %bb447
bb41:
  %t96 = load i32, ptr %l4, !range !{i32 0, i32 33}
  %t98 = trunc i64 28 to i32
  %t99 = icmp eq i32 %t96, %t98
  br i1 %t99, label %bb42, label %bb43
bb42:
  br label %bb44
bb43:
  br label %bb87
bb44:
  store %olang.scope zeroinitializer, ptr %s8
  %t101 = load ptr, ptr %l0, !tbaa !29
  %t103 = getelementptr %"compiler/check:Checker", ptr %t101, i32 0, i32 1
  %t104 = load ptr, ptr %t103, !tbaa !29
  %t106 = getelementptr %"compiler/generic:Program", ptr %t104, i32 0, i32 2
  %t107 = load i32, ptr %l2, !tbaa !23
  %t110 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrOf(ptr %v0, ptr %t106, i32 %t107)
  store i32 %t110, ptr %l127
  br label %bb45
bb45:
  %t111 = load i32, ptr %l127, !tbaa !23
  store i32 %t111, ptr %l5, !tbaa !23
  %t112 = load ptr, ptr %l0, !tbaa !29
  store ptr %t112, ptr %l128, !tbaa !29
  %t113 = load ptr, ptr %l0, !tbaa !29
  %t115 = getelementptr %"compiler/check:Checker", ptr %t113, i32 0, i32 1
  %t116 = load ptr, ptr %t115, !tbaa !29
  %t118 = getelementptr %"compiler/generic:Program", ptr %t116, i32 0, i32 2
  store ptr %t118, ptr %l131, !tbaa !29
  %t119 = load ptr, ptr %l0, !tbaa !29
  %t121 = getelementptr %"compiler/check:Checker", ptr %t119, i32 0, i32 1
  %t122 = load ptr, ptr %t121, !tbaa !29
  %t124 = getelementptr %"compiler/generic:Program", ptr %t122, i32 0, i32 2
  %t125 = load i32, ptr %l5, !tbaa !23
  %t128 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %t124, i32 %t125)
  store i32 %t128, ptr %l136
  br label %bb46
bb46:
  %t129 = load ptr, ptr %l131, !tbaa !29
  %t130 = load i32, ptr %l136, !tbaa !23
  %t131 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclName(ptr %v0, ptr %t129, i32 %t130)
  store i32 %t131, ptr %l137
  br label %bb47
bb47:
  %t132 = load ptr, ptr %l128, !tbaa !29
  %t133 = load i32, ptr %l137, !tbaa !23
  %t134 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %v0, ptr %t132, i32 %t133)
  store { i64, ptr } %t134, ptr %l138
  br label %bb48
bb48:
  %t135 = load { i64, ptr }, ptr %l138, !tbaa !27
  store { i64, ptr } %t135, ptr %l6, !tbaa !27
  %t136 = load ptr, ptr %l0, !tbaa !29
  %t138 = getelementptr %"compiler/check:Checker", ptr %t136, i32 0, i32 5
  %t139 = load i1, ptr %t138, !tbaa !21
  br i1 %t139, label %bb49, label %bb50
bb49:
  store %olang.scope zeroinitializer, ptr %s9
  %t141 = load ptr, ptr %l0, !tbaa !29
  store ptr %t141, ptr %l141, !tbaa !29
  %t142 = load ptr, ptr %l0, !tbaa !29
  %t144 = getelementptr %"compiler/check:Checker", ptr %t142, i32 0, i32 1
  %t145 = load ptr, ptr %t144, !tbaa !29
  %t147 = getelementptr %"compiler/generic:Program", ptr %t145, i32 0, i32 2
  store ptr %t147, ptr %l144, !tbaa !29
  %t148 = load ptr, ptr %l0, !tbaa !29
  %t150 = getelementptr %"compiler/check:Checker", ptr %t148, i32 0, i32 1
  %t151 = load ptr, ptr %t150, !tbaa !29
  %t153 = getelementptr %"compiler/generic:Program", ptr %t151, i32 0, i32 2
  %t154 = load i32, ptr %l5, !tbaa !23
  %t157 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %t153, i32 %t154)
  store i32 %t157, ptr %l149
  br label %bb51
bb50:
  br label %bb54
bb51:
  %t158 = load ptr, ptr %l144, !tbaa !29
  %t159 = load i32, ptr %l149, !tbaa !23
  %t160 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclModule(ptr %v0, ptr %t158, i32 %t159)
  store i64 %t160, ptr %l150
  br label %bb52
bb52:
  %t161 = load ptr, ptr %l141, !tbaa !29
  %t162 = load i64, ptr %l150, !tbaa !24
  %t163 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2equalifierFor(ptr %v0, ptr %s9, ptr %t161, i64 %t162)
  store { i64, ptr } %t163, ptr %l151
  br label %bb53
bb53:
  %t164 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t165 = load { i64, ptr }, ptr %l151, !tbaa !27
  %t166 = extractvalue { i64, ptr } %t165, 1
  %t167 = extractvalue { i64, ptr } %t165, 0
  %t169 = extractvalue { i64, ptr } %t164, 1
  %t170 = extractvalue { i64, ptr } %t164, 0
  %t171 = add i64 %t167, %t170
  %t172 = call ptr @__olang_scope_alloc(ptr %s8, i64 %t171)
  call void @olang_textcopy(ptr %t172, ptr %t166, i64 %t167)
  %t173 = getelementptr i8, ptr %t172, i64 %t167
  call void @olang_textcopy(ptr %t173, ptr %t169, i64 %t170)
  %t174 = insertvalue { i64, ptr } undef, i64 %t171, 0
  %t175 = insertvalue { i64, ptr } %t174, ptr %t172, 1
  %t177 = extractvalue { i64, ptr } %t175, 0
  %t178 = extractvalue { i64, ptr } %t175, 1
  %t179 = mul i64 %t177, 1
  %t180 = call ptr @__olang_scope_alloc(ptr %s8, i64 %t179)
  call void @llvm.memcpy.p0.p0.i64(ptr %t180, ptr %t178, i64 %t179, i1 false)
  %t181 = insertvalue { i64, ptr } undef, i64 %t177, 0
  %t182 = insertvalue { i64, ptr } %t181, ptr %t180, 1
  store { i64, ptr } %t182, ptr %l6, !tbaa !27
  call void @__olang_scope_close(ptr %s9)
  br label %bb54
bb54:
  %t184 = load ptr, ptr %l0, !tbaa !29
  %t186 = getelementptr %"compiler/check:Checker", ptr %t184, i32 0, i32 1
  %t187 = load ptr, ptr %t186, !tbaa !29
  store ptr %t187, ptr %l156, !tbaa !29
  %t188 = load ptr, ptr %l0, !tbaa !29
  %t190 = getelementptr %"compiler/check:Checker", ptr %t188, i32 0, i32 1
  %t191 = load ptr, ptr %t190, !tbaa !29
  %t193 = getelementptr %"compiler/generic:Program", ptr %t191, i32 0, i32 2
  %t194 = load i32, ptr %l5, !tbaa !23
  %t197 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %t193, i32 %t194)
  store i32 %t197, ptr %l161
  br label %bb55
bb55:
  %t198 = load ptr, ptr %l156, !tbaa !29
  %t199 = load i32, ptr %l161, !tbaa !23
  %t200 = call { i64, ptr } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eErrorWords(ptr %v0, ptr %s8, ptr %t198, i32 %t199)
  store { i64, ptr } %t200, ptr %l162
  br label %bb56
bb56:
  %t201 = load { i64, ptr }, ptr %l162, !tbaa !27
  store { i64, ptr } %t201, ptr %l7, !tbaa !27
  %t202 = load ptr, ptr %l0, !tbaa !29
  %t204 = getelementptr %"compiler/check:Checker", ptr %t202, i32 0, i32 1
  %t205 = load ptr, ptr %t204, !tbaa !29
  %t207 = getelementptr %"compiler/generic:Program", ptr %t205, i32 0, i32 2
  %t208 = load i32, ptr %l2, !tbaa !23
  %t211 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrMask(ptr %v0, ptr %t207, i32 %t208)
  store i64 %t211, ptr %l167
  br label %bb57
bb57:
  %t212 = load i64, ptr %l167, !tbaa !65
  store i64 %t212, ptr %l8, !tbaa !65
  store i1 true, ptr %l9, !tbaa !21
  store i64 0, ptr %l10, !tbaa !24
  %t213 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t215 = extractvalue { i64, ptr } %t213, 0
  store i64 %t215, ptr %l11, !tbaa !24
  store i64 1, ptr %l12, !tbaa !24
  %t217 = load i64, ptr %l11, !tbaa !24
  %t218 = load i64, ptr %l10, !tbaa !24
  %t221 = icmp sgt i64 %t217, %t218
  br i1 %t221, label %bb58, label %bb59
bb58:
  %t223 = load i64, ptr %l12, !tbaa !24
  %t225 = icmp sgt i64 %t223, 0
  br i1 %t225, label %bb60, label %bb61
bb59:
  store i64 0, ptr %l173, !tbaa !24
  br label %bb63
bb60:
  %t227 = load i64, ptr %l11, !tbaa !24
  %t228 = load i64, ptr %l10, !tbaa !24
  %t231 = sub i64 %t227, %t228
  %t232 = load i64, ptr %l12, !tbaa !24
  %t235 = add i64 %t231, %t232
  %t237 = sub i64 %t235, 1
  %t238 = load i64, ptr %l12, !tbaa !24
  %t241 = sdiv i64 %t237, %t238
  store i64 %t241, ptr %l176, !tbaa !24
  br label %bb62
bb61:
  store i64 0, ptr %l176, !tbaa !24
  br label %bb62
bb62:
  %t243 = load i64, ptr %l176, !tbaa !24
  store i64 %t243, ptr %l173, !tbaa !24
  br label %bb63
bb63:
  %t244 = load i64, ptr %l173, !tbaa !24
  store i64 %t244, ptr %l13, !tbaa !24
  store i64 0, ptr %l14, !tbaa !24
  br label %bb64
bb64:
  %t245 = load i64, ptr %l14, !tbaa !24
  %t246 = load i64, ptr %l13, !tbaa !24
  %t249 = icmp slt i64 %t245, %t246
  %t251 = xor i1 %t249, true
  br i1 %t251, label %bb65, label %bb66
bb65:
  br label %bb86
bb66:
  br label %bb67
bb67:
  %t253 = load i64, ptr %l10, !tbaa !24
  %t254 = load i64, ptr %l14, !tbaa !24
  %t255 = load i64, ptr %l12, !tbaa !24
  %t258 = mul i64 %t254, %t255
  %t261 = add i64 %t253, %t258
  store i64 %t261, ptr %l15, !tbaa !24
  %t263 = load i64, ptr %l15, !tbaa !24
  %t265 = icmp slt i64 %t263, 64
  br i1 %t265, label %bb68, label %bb69
bb68:
  %t267 = load i64, ptr %l8, !tbaa !65
  %t268 = load i64, ptr %l15, !tbaa !24
  store i64 %t268, ptr %l198, !tbaa !24
  %t269 = load i64, ptr %l198, !tbaa !24
  %t270 = load i64, ptr %l198, !tbaa !24
  %t271 = shl i64 1, %t270
  %t274 = and i64 %t267, %t271
  %t276 = icmp ne i64 %t274, 0
  store i1 %t276, ptr %l196, !tbaa !21
  br label %bb70
bb69:
  store i1 false, ptr %l196, !tbaa !21
  br label %bb70
bb70:
  %t278 = load i1, ptr %l196, !tbaa !21
  br i1 %t278, label %bb71, label %bb72
bb71:
  store %olang.scope zeroinitializer, ptr %s13
  %t279 = load i1, ptr %l9, !tbaa !21
  %t281 = xor i1 %t279, true
  br i1 %t281, label %bb73, label %bb74
bb72:
  br label %bb84
bb73:
  store %olang.scope zeroinitializer, ptr %s14
  %t283 = load ptr, ptr %l1, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v1, ptr %s14, ptr %t283, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d39, i32 0, i32 1) })
  br label %bb75
bb74:
  br label %bb76
bb75:
  call void @__olang_scope_close(ptr %s14)
  br label %bb76
bb76:
  %t285 = load ptr, ptr %l1, !tbaa !29
  store ptr %t285, ptr %l205, !tbaa !29
  %t286 = load ptr, ptr %l0, !tbaa !29
  %t288 = getelementptr %"compiler/check:Checker", ptr %t286, i32 0, i32 1
  %t289 = load ptr, ptr %t288, !tbaa !29
  store ptr %t289, ptr %l207, !tbaa !29
  %t290 = load ptr, ptr %l0, !tbaa !29
  %t292 = getelementptr %"compiler/check:Checker", ptr %t290, i32 0, i32 1
  %t293 = load ptr, ptr %t292, !tbaa !29
  %t295 = getelementptr %"compiler/generic:Program", ptr %t293, i32 0, i32 2
  %t296 = load i32, ptr %l5, !tbaa !23
  %t299 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %t295, i32 %t296)
  store i32 %t299, ptr %l212
  br label %bb77
bb77:
  %t300 = load ptr, ptr %l207, !tbaa !29
  %t301 = load i32, ptr %l212, !tbaa !23
  %t302 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eIsRaisedError(ptr %v0, ptr %t300, i32 %t301)
  store i1 %t302, ptr %l213
  br label %bb78
bb78:
  %t303 = load i1, ptr %l213, !tbaa !21
  br i1 %t303, label %bb79, label %bb80
bb79:
  %t304 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t306 = extractvalue { i64, ptr } %t304, 1
  %t307 = extractvalue { i64, ptr } %t304, 0
  %t308 = call ptr @__olang_scope_alloc(ptr %s13, i64 %t307)
  call void @olang_textcopy(ptr %t308, ptr %t306, i64 %t307)
  %t309 = insertvalue { i64, ptr } undef, i64 %t307, 0
  %t310 = insertvalue { i64, ptr } %t309, ptr %t308, 1
  %t312 = extractvalue { i64, ptr } %t310, 0
  %t313 = extractvalue { i64, ptr } %t310, 1
  %t314 = mul i64 %t312, 1
  %t315 = call ptr @__olang_scope_alloc(ptr %s13, i64 %t314)
  call void @llvm.memcpy.p0.p0.i64(ptr %t315, ptr %t313, i64 %t314, i1 false)
  %t316 = insertvalue { i64, ptr } undef, i64 %t312, 0
  %t317 = insertvalue { i64, ptr } %t316, ptr %t315, 1
  store { i64, ptr } %t317, ptr %l214, !tbaa !27
  br label %bb82
bb80:
  %t319 = load { i64, ptr }, ptr %l6, !tbaa !27
  store { i64, ptr } %t319, ptr %l218, !tbaa !27
  %t320 = load ptr, ptr %l0, !tbaa !29
  %t321 = load { i64, ptr }, ptr %l7, !tbaa !27
  store { i64, ptr } %t321, ptr %l220, !tbaa !27
  %t322 = load i64, ptr %l15, !tbaa !24
  %t324 = getelementptr { i64, ptr }, ptr %l220, i32 0, i32 1
  %t325 = load ptr, ptr %t324, !tbaa !27
  %t326 = getelementptr i32, ptr %t325, i64 %t322
  %t327 = load i32, ptr %t326, !tbaa !33
  %t330 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %s13, ptr %t320, i32 %t327)
  store { i64, ptr } %t330, ptr %l223
  br label %bb81
bb81:
  %t331 = load { i64, ptr }, ptr %l218, !tbaa !27
  %t332 = extractvalue { i64, ptr } %t331, 1
  %t333 = extractvalue { i64, ptr } %t331, 0
  %t334 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d40, i32 0, i32 1) }, 1
  %t335 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d40, i32 0, i32 1) }, 0
  %t336 = add i64 %t333, %t335
  %t337 = load { i64, ptr }, ptr %l223, !tbaa !27
  %t338 = extractvalue { i64, ptr } %t337, 1
  %t339 = extractvalue { i64, ptr } %t337, 0
  %t340 = add i64 %t336, %t339
  %t341 = call ptr @__olang_scope_alloc(ptr %s13, i64 %t340)
  call void @olang_textcopy(ptr %t341, ptr %t332, i64 %t333)
  %t342 = getelementptr i8, ptr %t341, i64 %t333
  call void @olang_textcopy(ptr %t342, ptr %t334, i64 %t335)
  %t343 = getelementptr i8, ptr %t342, i64 %t335
  call void @olang_textcopy(ptr %t343, ptr %t338, i64 %t339)
  %t344 = insertvalue { i64, ptr } undef, i64 %t340, 0
  %t345 = insertvalue { i64, ptr } %t344, ptr %t341, 1
  %t347 = extractvalue { i64, ptr } %t345, 0
  %t348 = extractvalue { i64, ptr } %t345, 1
  %t349 = mul i64 %t347, 1
  %t350 = call ptr @__olang_scope_alloc(ptr %s13, i64 %t349)
  call void @llvm.memcpy.p0.p0.i64(ptr %t350, ptr %t348, i64 %t349, i1 false)
  %t351 = insertvalue { i64, ptr } undef, i64 %t347, 0
  %t352 = insertvalue { i64, ptr } %t351, ptr %t350, 1
  store { i64, ptr } %t352, ptr %l214, !tbaa !27
  br label %bb82
bb82:
  %t354 = load ptr, ptr %l205, !tbaa !29
  %t355 = load { i64, ptr }, ptr %l214, !tbaa !27
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v1, ptr %s13, ptr %t354, { i64, ptr } %t355)
  br label %bb83
bb83:
  store i1 false, ptr %l9, !tbaa !21
  call void @__olang_scope_close(ptr %s13)
  br label %bb84
bb84:
  br label %bb85
bb85:
  %t356 = load i64, ptr %l14, !tbaa !24
  %t358 = add i64 %t356, 1
  store i64 %t358, ptr %l14, !tbaa !24
  br label %bb64
bb86:
  call void @__olang_scope_close(ptr %s8)
  br label %bb447
bb87:
  %t360 = load i32, ptr %l4, !range !{i32 0, i32 33}
  %t362 = trunc i64 18 to i32
  %t363 = icmp eq i32 %t360, %t362
  br i1 %t363, label %bb88, label %bb89
bb88:
  br label %bb90
bb89:
  br label %bb104
bb90:
  %t365 = load ptr, ptr %l0, !tbaa !29
  %t367 = getelementptr %"compiler/check:Checker", ptr %t365, i32 0, i32 5
  %t368 = load i1, ptr %t367, !tbaa !21
  br i1 %t368, label %bb91, label %bb92
bb91:
  store %olang.scope zeroinitializer, ptr %s19
  %t370 = load ptr, ptr %l1, !tbaa !29
  store ptr %t370, ptr %l232, !tbaa !29
  %t371 = load ptr, ptr %l0, !tbaa !29
  store ptr %t371, ptr %l233, !tbaa !29
  %t372 = load ptr, ptr %l0, !tbaa !29
  %t374 = getelementptr %"compiler/check:Checker", ptr %t372, i32 0, i32 1
  %t375 = load ptr, ptr %t374, !tbaa !29
  %t377 = getelementptr %"compiler/generic:Program", ptr %t375, i32 0, i32 2
  store ptr %t377, ptr %l236, !tbaa !29
  %t378 = load ptr, ptr %l0, !tbaa !29
  %t380 = getelementptr %"compiler/check:Checker", ptr %t378, i32 0, i32 1
  %t381 = load ptr, ptr %t380, !tbaa !29
  %t383 = getelementptr %"compiler/generic:Program", ptr %t381, i32 0, i32 2
  %t384 = load i32, ptr %l2, !tbaa !23
  %t387 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %t383, i32 %t384)
  store i32 %t387, ptr %l241
  br label %bb93
bb92:
  br label %bb97
bb93:
  %t388 = load ptr, ptr %l236, !tbaa !29
  %t389 = load i32, ptr %l241, !tbaa !23
  %t390 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclModule(ptr %v0, ptr %t388, i32 %t389)
  store i64 %t390, ptr %l242
  br label %bb94
bb94:
  %t391 = load ptr, ptr %l233, !tbaa !29
  %t392 = load i64, ptr %l242, !tbaa !24
  %t393 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2equalifierFor(ptr %v0, ptr %s19, ptr %t391, i64 %t392)
  store { i64, ptr } %t393, ptr %l243
  br label %bb95
bb95:
  %t394 = load { i64, ptr }, ptr %l243, !tbaa !27
  %t395 = extractvalue { i64, ptr } %t394, 0
  %t396 = extractvalue { i64, ptr } %t394, 1
  %t397 = mul i64 %t395, 1
  %t398 = call ptr @__olang_scope_alloc(ptr %s19, i64 %t397)
  call void @llvm.memcpy.p0.p0.i64(ptr %t398, ptr %t396, i64 %t397, i1 false)
  %t399 = insertvalue { i64, ptr } undef, i64 %t395, 0
  %t400 = insertvalue { i64, ptr } %t399, ptr %t398, 1
  %t401 = load ptr, ptr %l232, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v1, ptr %s19, ptr %t401, { i64, ptr } %t400)
  br label %bb96
bb96:
  call void @__olang_scope_close(ptr %s19)
  br label %bb97
bb97:
  %t403 = load ptr, ptr %l1, !tbaa !29
  store ptr %t403, ptr %l245, !tbaa !29
  %t404 = load ptr, ptr %l0, !tbaa !29
  store ptr %t404, ptr %l246, !tbaa !29
  %t405 = load ptr, ptr %l0, !tbaa !29
  %t407 = getelementptr %"compiler/check:Checker", ptr %t405, i32 0, i32 1
  %t408 = load ptr, ptr %t407, !tbaa !29
  %t410 = getelementptr %"compiler/generic:Program", ptr %t408, i32 0, i32 2
  store ptr %t410, ptr %l249, !tbaa !29
  %t411 = load ptr, ptr %l0, !tbaa !29
  %t413 = getelementptr %"compiler/check:Checker", ptr %t411, i32 0, i32 1
  %t414 = load ptr, ptr %t413, !tbaa !29
  %t416 = getelementptr %"compiler/generic:Program", ptr %t414, i32 0, i32 2
  %t417 = load i32, ptr %l2, !tbaa !23
  %t420 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %t416, i32 %t417)
  store i32 %t420, ptr %l254
  br label %bb98
bb98:
  %t421 = load ptr, ptr %l249, !tbaa !29
  %t422 = load i32, ptr %l254, !tbaa !23
  %t423 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclName(ptr %v0, ptr %t421, i32 %t422)
  store i32 %t423, ptr %l255
  br label %bb99
bb99:
  %t424 = load ptr, ptr %l246, !tbaa !29
  %t425 = load i32, ptr %l255, !tbaa !23
  %t426 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %v0, ptr %t424, i32 %t425)
  store { i64, ptr } %t426, ptr %l256
  br label %bb100
bb100:
  %t427 = load ptr, ptr %l245, !tbaa !29
  %t428 = load { i64, ptr }, ptr %l256, !tbaa !27
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v1, ptr %v0, ptr %t427, { i64, ptr } %t428)
  br label %bb101
bb101:
  %t429 = load ptr, ptr %l0, !tbaa !29
  store ptr %t429, ptr %l257, !tbaa !29
  %t430 = load ptr, ptr %l1, !tbaa !29
  store ptr %t430, ptr %l258, !tbaa !29
  %t431 = load ptr, ptr %l0, !tbaa !29
  %t433 = getelementptr %"compiler/check:Checker", ptr %t431, i32 0, i32 1
  %t434 = load ptr, ptr %t433, !tbaa !29
  %t436 = getelementptr %"compiler/generic:Program", ptr %t434, i32 0, i32 2
  %t437 = load i32, ptr %l2, !tbaa !23
  %t440 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eArgs(ptr %v0, ptr %t436, i32 %t437)
  store i32 %t440, ptr %l263
  br label %bb102
bb102:
  %t441 = load ptr, ptr %l257, !tbaa !29
  %t442 = load ptr, ptr %l258, !tbaa !29
  %t443 = load i32, ptr %l263, !tbaa !23
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2espellArgs(ptr %v0, ptr %v1, ptr %t441, ptr %t442, i32 %t443)
  br label %bb103
bb103:
  br label %bb447
bb104:
  %t444 = load i32, ptr %l4, !range !{i32 0, i32 33}
  %t446 = trunc i64 32 to i32
  %t447 = icmp eq i32 %t444, %t446
  br i1 %t447, label %bb105, label %bb106
bb105:
  br label %bb107
bb106:
  br label %bb146
bb107:
  %t449 = load ptr, ptr %l0, !tbaa !29
  %t451 = getelementptr %"compiler/check:Checker", ptr %t449, i32 0, i32 1
  %t452 = load ptr, ptr %t451, !tbaa !29
  %t454 = getelementptr %"compiler/generic:Program", ptr %t452, i32 0, i32 2
  store ptr %t454, ptr %l268, !tbaa !29
  %t455 = load ptr, ptr %l0, !tbaa !29
  %t457 = getelementptr %"compiler/check:Checker", ptr %t455, i32 0, i32 1
  %t458 = load ptr, ptr %t457, !tbaa !29
  %t460 = getelementptr %"compiler/generic:Program", ptr %t458, i32 0, i32 2
  %t461 = load i32, ptr %l2, !tbaa !23
  %t464 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrValItems(ptr %v0, ptr %t460, i32 %t461)
  store i32 %t464, ptr %l273
  br label %bb108
bb108:
  %t465 = load ptr, ptr %l268, !tbaa !29
  %t466 = load i32, ptr %l273, !tbaa !23
  %t467 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t465, i32 %t466)
  store { i64, ptr } %t467, ptr %l274
  br label %bb109
bb109:
  %t468 = load { i64, ptr }, ptr %l274, !tbaa !27
  store { i64, ptr } %t468, ptr %l16, !tbaa !27
  %t469 = load ptr, ptr %l0, !tbaa !29
  %t471 = getelementptr %"compiler/check:Checker", ptr %t469, i32 0, i32 1
  %t472 = load ptr, ptr %t471, !tbaa !29
  %t474 = getelementptr %"compiler/generic:Program", ptr %t472, i32 0, i32 2
  %t475 = load i32, ptr %l2, !tbaa !23
  %t478 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrValName(ptr %v0, ptr %t474, i32 %t475)
  store i32 %t478, ptr %l279
  br label %bb110
bb110:
  %t479 = load i32, ptr %l279, !tbaa !23
  store i32 %t479, ptr %l17, !tbaa !23
  %t480 = load i32, ptr %l17, !tbaa !23
  %t482 = icmp sge i32 %t480, 0
  br i1 %t482, label %bb111, label %bb112
bb111:
  %t484 = load ptr, ptr %l0, !tbaa !29
  %t486 = getelementptr %"compiler/check:Checker", ptr %t484, i32 0, i32 5
  %t487 = load i1, ptr %t486, !tbaa !21
  br i1 %t487, label %bb113, label %bb114
bb112:
  %t489 = load { i64, ptr }, ptr %l16, !tbaa !27
  %t491 = extractvalue { i64, ptr } %t489, 0
  %t493 = icmp eq i64 %t491, 1
  br i1 %t493, label %bb122, label %bb123
bb113:
  store %olang.scope zeroinitializer, ptr %s22
  %t495 = load ptr, ptr %l1, !tbaa !29
  store ptr %t495, ptr %l284, !tbaa !29
  %t496 = load ptr, ptr %l0, !tbaa !29
  store ptr %t496, ptr %l285, !tbaa !29
  %t497 = load ptr, ptr %l0, !tbaa !29
  %t499 = getelementptr %"compiler/check:Checker", ptr %t497, i32 0, i32 1
  %t500 = load ptr, ptr %t499, !tbaa !29
  %t502 = getelementptr %"compiler/generic:Program", ptr %t500, i32 0, i32 2
  %t503 = load i32, ptr %l17, !tbaa !23
  %t506 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclModule(ptr %v0, ptr %t502, i32 %t503)
  store i64 %t506, ptr %l290
  br label %bb115
bb114:
  br label %bb118
bb115:
  %t507 = load ptr, ptr %l285, !tbaa !29
  %t508 = load i64, ptr %l290, !tbaa !24
  %t509 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2equalifierFor(ptr %v0, ptr %s22, ptr %t507, i64 %t508)
  store { i64, ptr } %t509, ptr %l291
  br label %bb116
bb116:
  %t510 = load { i64, ptr }, ptr %l291, !tbaa !27
  %t511 = extractvalue { i64, ptr } %t510, 0
  %t512 = extractvalue { i64, ptr } %t510, 1
  %t513 = mul i64 %t511, 1
  %t514 = call ptr @__olang_scope_alloc(ptr %s22, i64 %t513)
  call void @llvm.memcpy.p0.p0.i64(ptr %t514, ptr %t512, i64 %t513, i1 false)
  %t515 = insertvalue { i64, ptr } undef, i64 %t511, 0
  %t516 = insertvalue { i64, ptr } %t515, ptr %t514, 1
  %t517 = load ptr, ptr %l284, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v1, ptr %s22, ptr %t517, { i64, ptr } %t516)
  br label %bb117
bb117:
  call void @__olang_scope_close(ptr %s22)
  br label %bb118
bb118:
  %t519 = load ptr, ptr %l1, !tbaa !29
  store ptr %t519, ptr %l293, !tbaa !29
  %t520 = load ptr, ptr %l0, !tbaa !29
  store ptr %t520, ptr %l294, !tbaa !29
  %t521 = load ptr, ptr %l0, !tbaa !29
  %t523 = getelementptr %"compiler/check:Checker", ptr %t521, i32 0, i32 1
  %t524 = load ptr, ptr %t523, !tbaa !29
  %t526 = getelementptr %"compiler/generic:Program", ptr %t524, i32 0, i32 2
  %t527 = load i32, ptr %l17, !tbaa !23
  %t530 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclName(ptr %v0, ptr %t526, i32 %t527)
  store i32 %t530, ptr %l299
  br label %bb119
bb119:
  %t531 = load ptr, ptr %l294, !tbaa !29
  %t532 = load i32, ptr %l299, !tbaa !23
  %t533 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %v0, ptr %t531, i32 %t532)
  store { i64, ptr } %t533, ptr %l300
  br label %bb120
bb120:
  %t534 = load ptr, ptr %l293, !tbaa !29
  %t535 = load { i64, ptr }, ptr %l300, !tbaa !27
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v1, ptr %v0, ptr %t534, { i64, ptr } %t535)
  br label %bb121
bb121:
  br label %bb145
bb122:
  %t536 = load ptr, ptr %l0, !tbaa !29
  %t537 = load ptr, ptr %l1, !tbaa !29
  %t538 = load { i64, ptr }, ptr %l16, !tbaa !27
  store { i64, ptr } %t538, ptr %l306, !tbaa !27
  %t539 = getelementptr { i64, ptr }, ptr %l306, i32 0, i32 1
  %t540 = load ptr, ptr %t539, !tbaa !27
  %t541 = getelementptr i32, ptr %t540, i64 0
  %t542 = load i32, ptr %t541, !tbaa !33
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2espell(ptr %v0, ptr %v1, ptr %t536, ptr %t537, i32 %t542, i1 false)
  br label %bb124
bb123:
  %t546 = load ptr, ptr %l1, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePushChar(ptr %v1, ptr %t546, i8 123)
  br label %bb125
bb124:
  br label %bb144
bb125:
  store i64 0, ptr %l18, !tbaa !24
  %t548 = load { i64, ptr }, ptr %l16, !tbaa !27
  %t550 = extractvalue { i64, ptr } %t548, 0
  store i64 %t550, ptr %l19, !tbaa !24
  store i64 1, ptr %l20, !tbaa !24
  %t552 = load i64, ptr %l19, !tbaa !24
  %t553 = load i64, ptr %l18, !tbaa !24
  %t556 = icmp sgt i64 %t552, %t553
  br i1 %t556, label %bb126, label %bb127
bb126:
  %t558 = load i64, ptr %l20, !tbaa !24
  %t560 = icmp sgt i64 %t558, 0
  br i1 %t560, label %bb128, label %bb129
bb127:
  store i64 0, ptr %l314, !tbaa !24
  br label %bb131
bb128:
  %t562 = load i64, ptr %l19, !tbaa !24
  %t563 = load i64, ptr %l18, !tbaa !24
  %t566 = sub i64 %t562, %t563
  %t567 = load i64, ptr %l20, !tbaa !24
  %t570 = add i64 %t566, %t567
  %t572 = sub i64 %t570, 1
  %t573 = load i64, ptr %l20, !tbaa !24
  %t576 = sdiv i64 %t572, %t573
  store i64 %t576, ptr %l317, !tbaa !24
  br label %bb130
bb129:
  store i64 0, ptr %l317, !tbaa !24
  br label %bb130
bb130:
  %t578 = load i64, ptr %l317, !tbaa !24
  store i64 %t578, ptr %l314, !tbaa !24
  br label %bb131
bb131:
  %t579 = load i64, ptr %l314, !tbaa !24
  store i64 %t579, ptr %l21, !tbaa !24
  store i64 0, ptr %l22, !tbaa !24
  br label %bb132
bb132:
  %t580 = load i64, ptr %l22, !tbaa !24
  %t581 = load i64, ptr %l21, !tbaa !24
  %t584 = icmp slt i64 %t580, %t581
  %t586 = xor i1 %t584, true
  br i1 %t586, label %bb133, label %bb134
bb133:
  br label %bb142
bb134:
  br label %bb135
bb135:
  %t588 = load i64, ptr %l18, !tbaa !24
  %t589 = load i64, ptr %l22, !tbaa !24
  %t590 = load i64, ptr %l20, !tbaa !24
  %t593 = mul i64 %t589, %t590
  %t596 = add i64 %t588, %t593
  store i64 %t596, ptr %l23, !tbaa !24
  %t598 = load i64, ptr %l23, !tbaa !24
  %t600 = icmp sgt i64 %t598, 0
  br i1 %t600, label %bb136, label %bb137
bb136:
  store %olang.scope zeroinitializer, ptr %s28
  %t602 = load ptr, ptr %l1, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v1, ptr %s28, ptr %t602, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d41, i32 0, i32 1) })
  br label %bb138
bb137:
  br label %bb139
bb138:
  call void @__olang_scope_close(ptr %s28)
  br label %bb139
bb139:
  %t604 = load ptr, ptr %l0, !tbaa !29
  %t605 = load ptr, ptr %l1, !tbaa !29
  %t606 = load { i64, ptr }, ptr %l16, !tbaa !27
  store { i64, ptr } %t606, ptr %l340, !tbaa !27
  %t607 = load i64, ptr %l23, !tbaa !24
  %t609 = getelementptr { i64, ptr }, ptr %l340, i32 0, i32 1
  %t610 = load ptr, ptr %t609, !tbaa !27
  %t611 = getelementptr i32, ptr %t610, i64 %t607
  %t612 = load i32, ptr %t611, !tbaa !33
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2espell(ptr %v0, ptr %v1, ptr %t604, ptr %t605, i32 %t612, i1 false)
  br label %bb140
bb140:
  br label %bb141
bb141:
  %t616 = load i64, ptr %l22, !tbaa !24
  %t618 = add i64 %t616, 1
  store i64 %t618, ptr %l22, !tbaa !24
  br label %bb132
bb142:
  %t620 = load ptr, ptr %l1, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePushChar(ptr %v1, ptr %t620, i8 125)
  br label %bb143
bb143:
  br label %bb144
bb144:
  br label %bb145
bb145:
  br label %bb447
bb146:
  %t622 = load i32, ptr %l4, !range !{i32 0, i32 33}
  %t624 = trunc i64 29 to i32
  %t625 = icmp eq i32 %t622, %t624
  br i1 %t625, label %bb147, label %bb148
bb147:
  br label %bb149
bb148:
  br label %bb153
bb149:
  store %olang.scope zeroinitializer, ptr %s30
  %t627 = load ptr, ptr %l1, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v1, ptr %s30, ptr %t627, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d42, i32 0, i32 1) })
  br label %bb150
bb150:
  %t629 = load ptr, ptr %l0, !tbaa !29
  store ptr %t629, ptr %l349, !tbaa !29
  %t630 = load ptr, ptr %l1, !tbaa !29
  store ptr %t630, ptr %l350, !tbaa !29
  %t631 = load ptr, ptr %l0, !tbaa !29
  %t633 = getelementptr %"compiler/check:Checker", ptr %t631, i32 0, i32 1
  %t634 = load ptr, ptr %t633, !tbaa !29
  %t636 = getelementptr %"compiler/generic:Program", ptr %t634, i32 0, i32 2
  %t637 = load i32, ptr %l2, !tbaa !23
  %t640 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eAnyTrait(ptr %v0, ptr %t636, i32 %t637)
  store i32 %t640, ptr %l355
  br label %bb151
bb151:
  %t641 = load ptr, ptr %l349, !tbaa !29
  %t642 = load ptr, ptr %l350, !tbaa !29
  %t643 = load i32, ptr %l355, !tbaa !23
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2espell(ptr %v0, ptr %v1, ptr %t641, ptr %t642, i32 %t643, i1 false)
  br label %bb152
bb152:
  call void @__olang_scope_close(ptr %s30)
  br label %bb447
bb153:
  %t644 = load i32, ptr %l4, !range !{i32 0, i32 33}
  %t646 = trunc i64 19 to i32
  %t647 = icmp eq i32 %t644, %t646
  br i1 %t647, label %bb154, label %bb155
bb154:
  br label %bb156
bb155:
  br label %bb161
bb156:
  store %olang.scope zeroinitializer, ptr %s31
  %t649 = load ptr, ptr %l1, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v1, ptr %s31, ptr %t649, { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d43, i32 0, i32 1) })
  br label %bb157
bb157:
  %t651 = load ptr, ptr %l0, !tbaa !29
  %t653 = getelementptr %"compiler/check:Checker", ptr %t651, i32 0, i32 4
  %t654 = load i1, ptr %t653, !tbaa !21
  store i1 %t654, ptr %l24, !tbaa !21
  %t656 = load ptr, ptr %l0, !tbaa !29
  %t658 = getelementptr %"compiler/check:Checker", ptr %t656, i32 0, i32 4
  store i1 true, ptr %t658, !tbaa !21
  %t659 = load ptr, ptr %l0, !tbaa !29
  store ptr %t659, ptr %l362, !tbaa !29
  %t660 = load ptr, ptr %l1, !tbaa !29
  store ptr %t660, ptr %l363, !tbaa !29
  %t661 = load ptr, ptr %l0, !tbaa !29
  %t663 = getelementptr %"compiler/check:Checker", ptr %t661, i32 0, i32 1
  %t664 = load ptr, ptr %t663, !tbaa !29
  %t666 = getelementptr %"compiler/generic:Program", ptr %t664, i32 0, i32 2
  %t667 = load i32, ptr %l2, !tbaa !23
  %t670 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eElem(ptr %v0, ptr %t666, i32 %t667)
  store i32 %t670, ptr %l368
  br label %bb158
bb158:
  %t671 = load ptr, ptr %l362, !tbaa !29
  %t672 = load ptr, ptr %l363, !tbaa !29
  %t673 = load i32, ptr %l368, !tbaa !23
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2espell(ptr %v0, ptr %v1, ptr %t671, ptr %t672, i32 %t673, i1 false)
  br label %bb159
bb159:
  %t674 = load ptr, ptr %l0, !tbaa !29
  %t675 = load i1, ptr %l24, !tbaa !21
  %t678 = getelementptr %"compiler/check:Checker", ptr %t674, i32 0, i32 4
  store i1 %t675, ptr %t678, !tbaa !21
  %t679 = load ptr, ptr %l1, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePushChar(ptr %v1, ptr %t679, i8 62)
  br label %bb160
bb160:
  call void @__olang_scope_close(ptr %s31)
  br label %bb447
bb161:
  %t681 = load i32, ptr %l4, !range !{i32 0, i32 33}
  %t683 = trunc i64 20 to i32
  %t684 = icmp eq i32 %t681, %t683
  br i1 %t684, label %bb162, label %bb163
bb162:
  br label %bb164
bb163:
  br label %bb186
bb164:
  store %olang.scope zeroinitializer, ptr %s32
  %t686 = load ptr, ptr %l0, !tbaa !29
  %t688 = getelementptr %"compiler/check:Checker", ptr %t686, i32 0, i32 1
  %t689 = load ptr, ptr %t688, !tbaa !29
  %t691 = getelementptr %"compiler/generic:Program", ptr %t689, i32 0, i32 2
  %t692 = load i32, ptr %l2, !tbaa !23
  %t695 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePermOf(ptr %v0, ptr %t691, i32 %t692)
  store i64 %t695, ptr %l378
  br label %bb165
bb165:
  %t696 = load i64, ptr %l378, !tbaa !24
  store i64 %t696, ptr %l25, !tbaa !24
  %t697 = load i64, ptr %l25, !tbaa !24
  %t698 = load i64, ptr @G_2ecompiler_2ftypes_2eSpread, !tbaa !24
  %t701 = and i64 %t697, %t698
  %t703 = icmp ne i64 %t701, 0
  br i1 %t703, label %bb166, label %bb167
bb166:
  store %olang.scope zeroinitializer, ptr %s33
  %t705 = load ptr, ptr %l1, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v1, ptr %s33, ptr %t705, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d44, i32 0, i32 1) })
  br label %bb168
bb167:
  br label %bb172
bb168:
  %t707 = load ptr, ptr %l0, !tbaa !29
  store ptr %t707, ptr %l384, !tbaa !29
  %t708 = load ptr, ptr %l1, !tbaa !29
  store ptr %t708, ptr %l385, !tbaa !29
  %t709 = load ptr, ptr %l0, !tbaa !29
  %t711 = getelementptr %"compiler/check:Checker", ptr %t709, i32 0, i32 1
  %t712 = load ptr, ptr %t711, !tbaa !29
  %t714 = getelementptr %"compiler/generic:Program", ptr %t712, i32 0, i32 2
  store ptr %t714, ptr %l388, !tbaa !29
  %t715 = load ptr, ptr %l0, !tbaa !29
  %t717 = getelementptr %"compiler/check:Checker", ptr %t715, i32 0, i32 1
  %t718 = load ptr, ptr %t717, !tbaa !29
  %t720 = getelementptr %"compiler/generic:Program", ptr %t718, i32 0, i32 2
  %t721 = load i32, ptr %l2, !tbaa !23
  %t724 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eReferent(ptr %v0, ptr %t720, i32 %t721)
  store i32 %t724, ptr %l393
  br label %bb169
bb169:
  %t725 = load ptr, ptr %l388, !tbaa !29
  %t726 = load i32, ptr %l393, !tbaa !23
  %t727 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eElem(ptr %v0, ptr %t725, i32 %t726)
  store i32 %t727, ptr %l394
  br label %bb170
bb170:
  %t728 = load ptr, ptr %l384, !tbaa !29
  %t729 = load ptr, ptr %l385, !tbaa !29
  %t730 = load i32, ptr %l394, !tbaa !23
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2espell(ptr %v0, ptr %v1, ptr %t728, ptr %t729, i32 %t730, i1 false)
  br label %bb171
bb171:
  call void @__olang_scope_close(ptr %s33)
  call void @__olang_scope_close(ptr %s32)
  br label %ret
bb172:
  %t733 = xor i1 %a3, true
  br i1 %t733, label %bb173, label %bb174
bb173:
  %t735 = load i64, ptr %l25, !tbaa !24
  %t736 = load i64, ptr @G_2ecompiler_2ftypes_2eWritable, !tbaa !24
  %t739 = and i64 %t735, %t736
  %t741 = icmp ne i64 %t739, 0
  store i1 %t741, ptr %l397, !tbaa !21
  br label %bb175
bb174:
  store i1 false, ptr %l397, !tbaa !21
  br label %bb175
bb175:
  %t743 = load i1, ptr %l397, !tbaa !21
  br i1 %t743, label %bb176, label %bb177
bb176:
  store %olang.scope zeroinitializer, ptr %s34
  %t744 = load ptr, ptr %l1, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v1, ptr %s34, ptr %t744, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d45, i32 0, i32 1) })
  br label %bb178
bb177:
  br label %bb179
bb178:
  call void @__olang_scope_close(ptr %s34)
  br label %bb179
bb179:
  %t746 = load ptr, ptr %l0, !tbaa !29
  store ptr %t746, ptr %l403, !tbaa !29
  %t747 = load ptr, ptr %l1, !tbaa !29
  store ptr %t747, ptr %l404, !tbaa !29
  %t748 = load ptr, ptr %l0, !tbaa !29
  %t750 = getelementptr %"compiler/check:Checker", ptr %t748, i32 0, i32 1
  %t751 = load ptr, ptr %t750, !tbaa !29
  %t753 = getelementptr %"compiler/generic:Program", ptr %t751, i32 0, i32 2
  %t754 = load i32, ptr %l2, !tbaa !23
  %t757 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eReferent(ptr %v0, ptr %t753, i32 %t754)
  store i32 %t757, ptr %l409
  br label %bb180
bb180:
  %t758 = load ptr, ptr %l403, !tbaa !29
  %t759 = load ptr, ptr %l404, !tbaa !29
  %t760 = load i32, ptr %l409, !tbaa !23
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2espell(ptr %v0, ptr %v1, ptr %t758, ptr %t759, i32 %t760, i1 false)
  br label %bb181
bb181:
  %t761 = load ptr, ptr %l1, !tbaa !29
  store ptr %t761, ptr %l410, !tbaa !29
  %t762 = load i64, ptr %l25, !tbaa !24
  %t763 = load i64, ptr @G_2ecompiler_2ftypes_2eNullable, !tbaa !24
  %t766 = and i64 %t762, %t763
  %t768 = icmp ne i64 %t766, 0
  br i1 %t768, label %bb182, label %bb183
bb182:
  store { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d46, i32 0, i32 1) }, ptr %l415, !tbaa !27
  br label %bb184
bb183:
  store { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d47, i32 0, i32 1) }, ptr %l415, !tbaa !27
  br label %bb184
bb184:
  %t770 = load ptr, ptr %l410, !tbaa !29
  %t771 = load { i64, ptr }, ptr %l415, !tbaa !27
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v1, ptr %s32, ptr %t770, { i64, ptr } %t771)
  br label %bb185
bb185:
  call void @__olang_scope_close(ptr %s32)
  br label %bb447
bb186:
  %t772 = load i32, ptr %l4, !range !{i32 0, i32 33}
  %t774 = trunc i64 21 to i32
  %t775 = icmp eq i32 %t772, %t774
  br i1 %t775, label %bb187, label %bb188
bb187:
  br label %bb189
bb188:
  br label %bb329
bb189:
  store %olang.scope zeroinitializer, ptr %s35
  %t777 = load ptr, ptr %l0, !tbaa !29
  %t779 = getelementptr %"compiler/check:Checker", ptr %t777, i32 0, i32 1
  %t780 = load ptr, ptr %t779, !tbaa !29
  %t782 = getelementptr %"compiler/generic:Program", ptr %t780, i32 0, i32 2
  %t783 = load i32, ptr %l2, !tbaa !23
  %t786 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eResult(ptr %v0, ptr %t782, i32 %t783)
  store i32 %t786, ptr %l422
  br label %bb190
bb190:
  %t787 = load i32, ptr %l422, !tbaa !23
  store i32 %t787, ptr %l26, !tbaa !23
  %t788 = load ptr, ptr %l0, !tbaa !29
  %t790 = getelementptr %"compiler/check:Checker", ptr %t788, i32 0, i32 1
  %t791 = load ptr, ptr %t790, !tbaa !29
  %t793 = getelementptr %"compiler/generic:Program", ptr %t791, i32 0, i32 2
  store ptr %t793, ptr %l425, !tbaa !29
  %t794 = load ptr, ptr %l0, !tbaa !29
  %t796 = getelementptr %"compiler/check:Checker", ptr %t794, i32 0, i32 1
  %t797 = load ptr, ptr %t796, !tbaa !29
  %t799 = getelementptr %"compiler/generic:Program", ptr %t797, i32 0, i32 2
  %t800 = load i32, ptr %l2, !tbaa !23
  %t803 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrors(ptr %v0, ptr %t799, i32 %t800)
  store i32 %t803, ptr %l430
  br label %bb191
bb191:
  %t804 = load ptr, ptr %l425, !tbaa !29
  %t805 = load i32, ptr %l430, !tbaa !23
  %t806 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t804, i32 %t805)
  store { i64, ptr } %t806, ptr %l431
  br label %bb192
bb192:
  %t807 = load { i64, ptr }, ptr %l431, !tbaa !27
  store { i64, ptr } %t807, ptr %l27, !tbaa !27
  store i64 0, ptr %l28, !tbaa !24
  %t808 = load { i64, ptr }, ptr %l27, !tbaa !27
  store { i64, ptr } %t808, ptr %l29, !tbaa !27
  store i64 0, ptr %l30, !tbaa !24
  %t810 = load { i64, ptr }, ptr %l29, !tbaa !27
  %t812 = extractvalue { i64, ptr } %t810, 0
  store i64 %t812, ptr %l31, !tbaa !24
  br label %bb193
bb193:
  %t814 = load i64, ptr %l30, !tbaa !24
  %t815 = load i64, ptr %l31, !tbaa !24
  %t818 = icmp slt i64 %t814, %t815
  %t820 = xor i1 %t818, true
  br i1 %t820, label %bb194, label %bb195
bb194:
  br label %bb201
bb195:
  br label %bb196
bb196:
  %t822 = load { i64, ptr }, ptr %l29, !tbaa !27
  store { i64, ptr } %t822, ptr %l439, !tbaa !27
  %t823 = load i64, ptr %l30, !tbaa !24
  %t825 = getelementptr { i64, ptr }, ptr %l439, i32 0, i32 1
  %t826 = load ptr, ptr %t825, !tbaa !27
  %t827 = getelementptr i32, ptr %t826, i64 %t823
  %t828 = load i32, ptr %t827, !tbaa !33
  %t831 = load i32, ptr @G_2ecompiler_2ftypes_2eDefaultErrT, !tbaa !23
  %t834 = icmp ne i32 %t828, %t831
  br i1 %t834, label %bb197, label %bb198
bb197:
  %t836 = load i64, ptr %l28, !tbaa !24
  %t838 = add i64 %t836, 1
  store i64 %t838, ptr %l28, !tbaa !24
  br label %bb199
bb198:
  br label %bb199
bb199:
  br label %bb200
bb200:
  %t840 = load i64, ptr %l30, !tbaa !24
  %t842 = add i64 %t840, 1
  store i64 %t842, ptr %l30, !tbaa !24
  br label %bb193
bb201:
  %t844 = load ptr, ptr %l0, !tbaa !29
  %t846 = getelementptr %"compiler/check:Checker", ptr %t844, i32 0, i32 1
  %t847 = load ptr, ptr %t846, !tbaa !29
  %t849 = getelementptr %"compiler/generic:Program", ptr %t847, i32 0, i32 2
  %t850 = load i32, ptr %l26, !tbaa !23
  %t853 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t849, i32 %t850)
  store i32 %t853, ptr %l453
  br label %bb202
bb202:
  %t854 = load i32, ptr %l453, !range !{i32 0, i32 33}
  %t856 = trunc i64 22 to i32
  %t857 = icmp eq i32 %t854, %t856
  br i1 %t857, label %bb203, label %bb204
bb203:
  %t859 = load ptr, ptr %l0, !tbaa !29
  %t861 = getelementptr %"compiler/check:Checker", ptr %t859, i32 0, i32 1
  %t862 = load ptr, ptr %t861, !tbaa !29
  %t864 = getelementptr %"compiler/generic:Program", ptr %t862, i32 0, i32 2
  store ptr %t864, ptr %l459, !tbaa !29
  %t865 = load ptr, ptr %l0, !tbaa !29
  %t867 = getelementptr %"compiler/check:Checker", ptr %t865, i32 0, i32 1
  %t868 = load ptr, ptr %t867, !tbaa !29
  %t870 = getelementptr %"compiler/generic:Program", ptr %t868, i32 0, i32 2
  %t871 = load i32, ptr %l26, !tbaa !23
  %t874 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParts(ptr %v0, ptr %t870, i32 %t871)
  store i32 %t874, ptr %l464
  br label %bb205
bb204:
  store i1 false, ptr %l456, !tbaa !21
  br label %bb207
bb205:
  %t875 = load ptr, ptr %l459, !tbaa !29
  %t876 = load i32, ptr %l464, !tbaa !23
  %t877 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %s35, ptr %t875, i32 %t876)
  store { i64, ptr } %t877, ptr %l465
  br label %bb206
bb206:
  %t878 = load { i64, ptr }, ptr %l465, !tbaa !27
  %t879 = extractvalue { i64, ptr } %t878, 0
  %t881 = icmp sgt i64 %t879, 1
  store i1 %t881, ptr %l456, !tbaa !21
  br label %bb207
bb207:
  %t883 = load i1, ptr %l456, !tbaa !21
  br i1 %t883, label %bb208, label %bb209
bb208:
  store i1 true, ptr %l468, !tbaa !21
  br label %bb210
bb209:
  %t884 = load i64, ptr %l28, !tbaa !24
  %t886 = icmp sgt i64 %t884, 1
  store i1 %t886, ptr %l468, !tbaa !21
  br label %bb210
bb210:
  %t888 = load i1, ptr %l468, !tbaa !21
  store i1 %t888, ptr %l33, !tbaa !21
  %t889 = load ptr, ptr %l0, !tbaa !29
  %t891 = getelementptr %"compiler/check:Checker", ptr %t889, i32 0, i32 8
  %t892 = load i1, ptr %t891, !tbaa !21
  br i1 %t892, label %bb211, label %bb212
bb211:
  store i1 true, ptr %l473, !tbaa !21
  br label %bb216
bb212:
  %t894 = load ptr, ptr %l0, !tbaa !29
  %t896 = getelementptr %"compiler/check:Checker", ptr %t894, i32 0, i32 4
  %t897 = load i1, ptr %t896, !tbaa !21
  br i1 %t897, label %bb213, label %bb214
bb213:
  %t899 = load i1, ptr %l33, !tbaa !21
  store i1 %t899, ptr %l476, !tbaa !21
  br label %bb215
bb214:
  store i1 false, ptr %l476, !tbaa !21
  br label %bb215
bb215:
  %t901 = load i1, ptr %l476, !tbaa !21
  store i1 %t901, ptr %l473, !tbaa !21
  br label %bb216
bb216:
  %t902 = load i1, ptr %l473, !tbaa !21
  store i1 %t902, ptr %l34, !tbaa !21
  %t903 = load ptr, ptr %l0, !tbaa !29
  %t905 = getelementptr %"compiler/check:Checker", ptr %t903, i32 0, i32 8
  store i1 false, ptr %t905, !tbaa !21
  %t906 = load ptr, ptr %l0, !tbaa !29
  %t908 = getelementptr %"compiler/check:Checker", ptr %t906, i32 0, i32 4
  %t909 = load i1, ptr %t908, !tbaa !21
  store i1 %t909, ptr %l35, !tbaa !21
  %t911 = load ptr, ptr %l0, !tbaa !29
  %t913 = getelementptr %"compiler/check:Checker", ptr %t911, i32 0, i32 4
  store i1 true, ptr %t913, !tbaa !21
  %t914 = load ptr, ptr %l0, !tbaa !29
  %t916 = getelementptr %"compiler/check:Checker", ptr %t914, i32 0, i32 1
  %t917 = load ptr, ptr %t916, !tbaa !29
  %t919 = getelementptr %"compiler/generic:Program", ptr %t917, i32 0, i32 2
  %t920 = load i32, ptr %l2, !tbaa !23
  %t923 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eFuncTag(ptr %v0, ptr %t919, i32 %t920)
  store i32 %t923, ptr %l486
  br label %bb217
bb217:
  %t924 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t925 = load i32, ptr %l486, !tbaa !23
  %t927 = icmp ne i32 %t925, %t924
  br i1 %t927, label %bb218, label %bb219
bb218:
  store %olang.scope zeroinitializer, ptr %s40
  %t929 = load ptr, ptr %l0, !tbaa !29
  store ptr %t929, ptr %l489, !tbaa !29
  %t930 = load ptr, ptr %l1, !tbaa !29
  store ptr %t930, ptr %l490, !tbaa !29
  %t931 = load ptr, ptr %l0, !tbaa !29
  %t933 = getelementptr %"compiler/check:Checker", ptr %t931, i32 0, i32 1
  %t934 = load ptr, ptr %t933, !tbaa !29
  %t936 = getelementptr %"compiler/generic:Program", ptr %t934, i32 0, i32 2
  %t937 = load i32, ptr %l2, !tbaa !23
  %t940 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eFuncTag(ptr %v0, ptr %t936, i32 %t937)
  store i32 %t940, ptr %l495
  br label %bb220
bb219:
  br label %bb227
bb220:
  %t941 = load ptr, ptr %l489, !tbaa !29
  %t942 = load ptr, ptr %l490, !tbaa !29
  %t943 = load i32, ptr %l495, !tbaa !23
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2espell(ptr %v0, ptr %v1, ptr %t941, ptr %t942, i32 %t943, i1 false)
  br label %bb221
bb221:
  %t944 = load ptr, ptr %l1, !tbaa !29
  store ptr %t944, ptr %l496, !tbaa !29
  %t945 = load ptr, ptr %l0, !tbaa !29
  %t947 = getelementptr %"compiler/check:Checker", ptr %t945, i32 0, i32 1
  %t948 = load ptr, ptr %t947, !tbaa !29
  %t950 = getelementptr %"compiler/generic:Program", ptr %t948, i32 0, i32 2
  %t951 = load i32, ptr %l2, !tbaa !23
  %t954 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eFuncNullable(ptr %v0, ptr %t950, i32 %t951)
  store i1 %t954, ptr %l501
  br label %bb222
bb222:
  %t955 = load i1, ptr %l501, !tbaa !21
  br i1 %t955, label %bb223, label %bb224
bb223:
  store { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d48, i32 0, i32 1) }, ptr %l502, !tbaa !27
  br label %bb225
bb224:
  store { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d49, i32 0, i32 1) }, ptr %l502, !tbaa !27
  br label %bb225
bb225:
  %t956 = load ptr, ptr %l496, !tbaa !29
  %t957 = load { i64, ptr }, ptr %l502, !tbaa !27
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v1, ptr %s40, ptr %t956, { i64, ptr } %t957)
  br label %bb226
bb226:
  %t958 = load ptr, ptr %l0, !tbaa !29
  %t960 = getelementptr %"compiler/check:Checker", ptr %t958, i32 0, i32 8
  store i1 false, ptr %t960, !tbaa !21
  %t961 = load ptr, ptr %l0, !tbaa !29
  %t962 = load i1, ptr %l35, !tbaa !21
  %t965 = getelementptr %"compiler/check:Checker", ptr %t961, i32 0, i32 4
  store i1 %t962, ptr %t965, !tbaa !21
  call void @__olang_scope_close(ptr %s40)
  call void @__olang_scope_close(ptr %s35)
  br label %ret
bb227:
  %t966 = load i1, ptr %l34, !tbaa !21
  br i1 %t966, label %bb228, label %bb229
bb228:
  %t968 = load ptr, ptr %l1, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePushChar(ptr %v1, ptr %t968, i8 40)
  br label %bb230
bb229:
  br label %bb231
bb230:
  br label %bb231
bb231:
  %t970 = load ptr, ptr %l1, !tbaa !29
  store ptr %t970, ptr %l508, !tbaa !29
  %t971 = load ptr, ptr %l0, !tbaa !29
  %t973 = getelementptr %"compiler/check:Checker", ptr %t971, i32 0, i32 1
  %t974 = load ptr, ptr %t973, !tbaa !29
  %t976 = getelementptr %"compiler/generic:Program", ptr %t974, i32 0, i32 2
  %t977 = load i32, ptr %l2, !tbaa !23
  %t980 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eFuncNullable(ptr %v0, ptr %t976, i32 %t977)
  store i1 %t980, ptr %l513
  br label %bb232
bb232:
  %t981 = load i1, ptr %l513, !tbaa !21
  br i1 %t981, label %bb233, label %bb234
bb233:
  store { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d50, i32 0, i32 1) }, ptr %l514, !tbaa !27
  br label %bb235
bb234:
  store { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d51, i32 0, i32 1) }, ptr %l514, !tbaa !27
  br label %bb235
bb235:
  %t982 = load ptr, ptr %l508, !tbaa !29
  %t983 = load { i64, ptr }, ptr %l514, !tbaa !27
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v1, ptr %s35, ptr %t982, { i64, ptr } %t983)
  br label %bb236
bb236:
  %t984 = load ptr, ptr %l0, !tbaa !29
  %t986 = getelementptr %"compiler/check:Checker", ptr %t984, i32 0, i32 1
  %t987 = load ptr, ptr %t986, !tbaa !29
  %t989 = getelementptr %"compiler/generic:Program", ptr %t987, i32 0, i32 2
  store ptr %t989, ptr %l517, !tbaa !29
  %t990 = load ptr, ptr %l0, !tbaa !29
  %t992 = getelementptr %"compiler/check:Checker", ptr %t990, i32 0, i32 1
  %t993 = load ptr, ptr %t992, !tbaa !29
  %t995 = getelementptr %"compiler/generic:Program", ptr %t993, i32 0, i32 2
  %t996 = load i32, ptr %l2, !tbaa !23
  %t999 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParams(ptr %v0, ptr %t995, i32 %t996)
  store i32 %t999, ptr %l522
  br label %bb237
bb237:
  %t1000 = load ptr, ptr %l517, !tbaa !29
  %t1001 = load i32, ptr %l522, !tbaa !23
  %t1002 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t1000, i32 %t1001)
  store { i64, ptr } %t1002, ptr %l523
  br label %bb238
bb238:
  %t1003 = load { i64, ptr }, ptr %l523, !tbaa !27
  store { i64, ptr } %t1003, ptr %l36, !tbaa !27
  %t1004 = load ptr, ptr %l0, !tbaa !29
  %t1006 = getelementptr %"compiler/check:Checker", ptr %t1004, i32 0, i32 1
  %t1007 = load ptr, ptr %t1006, !tbaa !29
  %t1009 = getelementptr %"compiler/generic:Program", ptr %t1007, i32 0, i32 2
  %t1010 = load i32, ptr %l2, !tbaa !23
  %t1013 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eNamesOf(ptr %v0, ptr %v0, ptr %t1009, i32 %t1010)
  store { i64, ptr } %t1013, ptr %l528
  br label %bb239
bb239:
  %t1014 = load { i64, ptr }, ptr %l528, !tbaa !27
  store { i64, ptr } %t1014, ptr %l37, !tbaa !27
  store i64 0, ptr %l38, !tbaa !24
  %t1015 = load { i64, ptr }, ptr %l36, !tbaa !27
  %t1017 = extractvalue { i64, ptr } %t1015, 0
  store i64 %t1017, ptr %l39, !tbaa !24
  store i64 1, ptr %l40, !tbaa !24
  %t1019 = load i64, ptr %l39, !tbaa !24
  %t1020 = load i64, ptr %l38, !tbaa !24
  %t1023 = icmp sgt i64 %t1019, %t1020
  br i1 %t1023, label %bb240, label %bb241
bb240:
  %t1025 = load i64, ptr %l40, !tbaa !24
  %t1027 = icmp sgt i64 %t1025, 0
  br i1 %t1027, label %bb242, label %bb243
bb241:
  store i64 0, ptr %l534, !tbaa !24
  br label %bb245
bb242:
  %t1029 = load i64, ptr %l39, !tbaa !24
  %t1030 = load i64, ptr %l38, !tbaa !24
  %t1033 = sub i64 %t1029, %t1030
  %t1034 = load i64, ptr %l40, !tbaa !24
  %t1037 = add i64 %t1033, %t1034
  %t1039 = sub i64 %t1037, 1
  %t1040 = load i64, ptr %l40, !tbaa !24
  %t1043 = sdiv i64 %t1039, %t1040
  store i64 %t1043, ptr %l537, !tbaa !24
  br label %bb244
bb243:
  store i64 0, ptr %l537, !tbaa !24
  br label %bb244
bb244:
  %t1045 = load i64, ptr %l537, !tbaa !24
  store i64 %t1045, ptr %l534, !tbaa !24
  br label %bb245
bb245:
  %t1046 = load i64, ptr %l534, !tbaa !24
  store i64 %t1046, ptr %l41, !tbaa !24
  store i64 0, ptr %l42, !tbaa !24
  br label %bb246
bb246:
  %t1047 = load i64, ptr %l42, !tbaa !24
  %t1048 = load i64, ptr %l41, !tbaa !24
  %t1051 = icmp slt i64 %t1047, %t1048
  %t1053 = xor i1 %t1051, true
  br i1 %t1053, label %bb247, label %bb248
bb247:
  br label %bb262
bb248:
  br label %bb249
bb249:
  %t1055 = load i64, ptr %l38, !tbaa !24
  %t1056 = load i64, ptr %l42, !tbaa !24
  %t1057 = load i64, ptr %l40, !tbaa !24
  %t1060 = mul i64 %t1056, %t1057
  %t1063 = add i64 %t1055, %t1060
  store i64 %t1063, ptr %l43, !tbaa !24
  %t1065 = load i64, ptr %l43, !tbaa !24
  %t1067 = icmp sgt i64 %t1065, 0
  br i1 %t1067, label %bb250, label %bb251
bb250:
  store %olang.scope zeroinitializer, ptr %s44
  %t1069 = load ptr, ptr %l1, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v1, ptr %s44, ptr %t1069, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d52, i32 0, i32 1) })
  br label %bb252
bb251:
  br label %bb253
bb252:
  call void @__olang_scope_close(ptr %s44)
  br label %bb253
bb253:
  %t1071 = load { i64, ptr }, ptr %l37, !tbaa !27
  %t1073 = extractvalue { i64, ptr } %t1071, 0
  %t1074 = load { i64, ptr }, ptr %l36, !tbaa !27
  %t1076 = extractvalue { i64, ptr } %t1074, 0
  %t1079 = icmp eq i64 %t1073, %t1076
  br i1 %t1079, label %bb254, label %bb255
bb254:
  %t1081 = load ptr, ptr %l1, !tbaa !29
  store ptr %t1081, ptr %l563, !tbaa !29
  %t1082 = load ptr, ptr %l0, !tbaa !29
  %t1083 = load { i64, ptr }, ptr %l37, !tbaa !27
  store { i64, ptr } %t1083, ptr %l565, !tbaa !27
  %t1084 = load i64, ptr %l43, !tbaa !24
  %t1086 = getelementptr { i64, ptr }, ptr %l565, i32 0, i32 1
  %t1087 = load ptr, ptr %t1086, !tbaa !27
  %t1088 = getelementptr i64, ptr %t1087, i64 %t1084
  %t1089 = load i64, ptr %t1088, !tbaa !34
  %t1091 = trunc i64 %t1089 to i32
  %t1095 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %v0, ptr %t1082, i32 %t1091)
  store { i64, ptr } %t1095, ptr %l570
  br label %bb256
bb255:
  br label %bb259
bb256:
  %t1096 = load ptr, ptr %l563, !tbaa !29
  %t1097 = load { i64, ptr }, ptr %l570, !tbaa !27
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v1, ptr %v0, ptr %t1096, { i64, ptr } %t1097)
  br label %bb257
bb257:
  %t1098 = load ptr, ptr %l1, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePushChar(ptr %v1, ptr %t1098, i8 32)
  br label %bb258
bb258:
  br label %bb259
bb259:
  %t1100 = load ptr, ptr %l0, !tbaa !29
  %t1101 = load ptr, ptr %l1, !tbaa !29
  %t1102 = load { i64, ptr }, ptr %l36, !tbaa !27
  store { i64, ptr } %t1102, ptr %l574, !tbaa !27
  %t1103 = load i64, ptr %l43, !tbaa !24
  %t1105 = getelementptr { i64, ptr }, ptr %l574, i32 0, i32 1
  %t1106 = load ptr, ptr %t1105, !tbaa !27
  %t1107 = getelementptr i32, ptr %t1106, i64 %t1103
  %t1108 = load i32, ptr %t1107, !tbaa !33
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2espell(ptr %v0, ptr %v1, ptr %t1100, ptr %t1101, i32 %t1108, i1 false)
  br label %bb260
bb260:
  br label %bb261
bb261:
  %t1112 = load i64, ptr %l42, !tbaa !24
  %t1114 = add i64 %t1112, 1
  store i64 %t1114, ptr %l42, !tbaa !24
  br label %bb246
bb262:
  %t1116 = load ptr, ptr %l1, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePushChar(ptr %v1, ptr %t1116, i8 41)
  br label %bb263
bb263:
  %t1118 = load ptr, ptr %l0, !tbaa !29
  %t1120 = getelementptr %"compiler/check:Checker", ptr %t1118, i32 0, i32 1
  %t1121 = load ptr, ptr %t1120, !tbaa !29
  %t1123 = getelementptr %"compiler/generic:Program", ptr %t1121, i32 0, i32 2
  %t1124 = load i32, ptr %l26, !tbaa !23
  %t1127 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t1123, i32 %t1124)
  store i32 %t1127, ptr %l584
  br label %bb264
bb264:
  %t1128 = load i32, ptr %l584, !range !{i32 0, i32 33}
  %t1130 = trunc i64 22 to i32
  %t1131 = icmp eq i32 %t1128, %t1130
  br i1 %t1131, label %bb265, label %bb266
bb265:
  %t1133 = load ptr, ptr %l0, !tbaa !29
  %t1135 = getelementptr %"compiler/check:Checker", ptr %t1133, i32 0, i32 1
  %t1136 = load ptr, ptr %t1135, !tbaa !29
  %t1138 = getelementptr %"compiler/generic:Program", ptr %t1136, i32 0, i32 2
  store ptr %t1138, ptr %l589, !tbaa !29
  %t1139 = load ptr, ptr %l0, !tbaa !29
  %t1141 = getelementptr %"compiler/check:Checker", ptr %t1139, i32 0, i32 1
  %t1142 = load ptr, ptr %t1141, !tbaa !29
  %t1144 = getelementptr %"compiler/generic:Program", ptr %t1142, i32 0, i32 2
  %t1145 = load i32, ptr %l26, !tbaa !23
  %t1148 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParts(ptr %v0, ptr %t1144, i32 %t1145)
  store i32 %t1148, ptr %l594
  br label %bb267
bb266:
  %t1149 = load i32, ptr %l26, !tbaa !23
  %t1150 = load i32, ptr @G_2ecompiler_2ftypes_2eVoidT, !tbaa !23
  %t1153 = icmp ne i32 %t1149, %t1150
  br i1 %t1153, label %bb286, label %bb287
bb267:
  %t1155 = load ptr, ptr %l589, !tbaa !29
  %t1156 = load i32, ptr %l594, !tbaa !23
  %t1157 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t1155, i32 %t1156)
  store { i64, ptr } %t1157, ptr %l595
  br label %bb268
bb268:
  %t1158 = load { i64, ptr }, ptr %l595, !tbaa !27
  store { i64, ptr } %t1158, ptr %l44, !tbaa !27
  store i64 0, ptr %l45, !tbaa !24
  %t1159 = load { i64, ptr }, ptr %l44, !tbaa !27
  %t1161 = extractvalue { i64, ptr } %t1159, 0
  store i64 %t1161, ptr %l46, !tbaa !24
  store i64 1, ptr %l47, !tbaa !24
  %t1163 = load i64, ptr %l46, !tbaa !24
  %t1164 = load i64, ptr %l45, !tbaa !24
  %t1167 = icmp sgt i64 %t1163, %t1164
  br i1 %t1167, label %bb269, label %bb270
bb269:
  %t1169 = load i64, ptr %l47, !tbaa !24
  %t1171 = icmp sgt i64 %t1169, 0
  br i1 %t1171, label %bb271, label %bb272
bb270:
  store i64 0, ptr %l601, !tbaa !24
  br label %bb274
bb271:
  %t1173 = load i64, ptr %l46, !tbaa !24
  %t1174 = load i64, ptr %l45, !tbaa !24
  %t1177 = sub i64 %t1173, %t1174
  %t1178 = load i64, ptr %l47, !tbaa !24
  %t1181 = add i64 %t1177, %t1178
  %t1183 = sub i64 %t1181, 1
  %t1184 = load i64, ptr %l47, !tbaa !24
  %t1187 = sdiv i64 %t1183, %t1184
  store i64 %t1187, ptr %l604, !tbaa !24
  br label %bb273
bb272:
  store i64 0, ptr %l604, !tbaa !24
  br label %bb273
bb273:
  %t1189 = load i64, ptr %l604, !tbaa !24
  store i64 %t1189, ptr %l601, !tbaa !24
  br label %bb274
bb274:
  %t1190 = load i64, ptr %l601, !tbaa !24
  store i64 %t1190, ptr %l48, !tbaa !24
  store i64 0, ptr %l49, !tbaa !24
  br label %bb275
bb275:
  store %olang.scope zeroinitializer, ptr %s49
  %t1191 = load i64, ptr %l49, !tbaa !24
  %t1192 = load i64, ptr %l48, !tbaa !24
  %t1195 = icmp slt i64 %t1191, %t1192
  %t1197 = xor i1 %t1195, true
  br i1 %t1197, label %bb276, label %bb277
bb276:
  call void @__olang_scope_close(ptr %s49)
  br label %bb285
bb277:
  br label %bb278
bb278:
  %t1199 = load i64, ptr %l45, !tbaa !24
  %t1200 = load i64, ptr %l49, !tbaa !24
  %t1201 = load i64, ptr %l47, !tbaa !24
  %t1204 = mul i64 %t1200, %t1201
  %t1207 = add i64 %t1199, %t1204
  store i64 %t1207, ptr %l50, !tbaa !24
  %t1209 = load ptr, ptr %l1, !tbaa !29
  store ptr %t1209, ptr %l622, !tbaa !29
  %t1210 = load i64, ptr %l50, !tbaa !24
  %t1212 = icmp sgt i64 %t1210, 0
  br i1 %t1212, label %bb279, label %bb280
bb279:
  store { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d53, i32 0, i32 1) }, ptr %l625, !tbaa !27
  br label %bb281
bb280:
  store { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d54, i32 0, i32 1) }, ptr %l625, !tbaa !27
  br label %bb281
bb281:
  %t1214 = load ptr, ptr %l622, !tbaa !29
  %t1215 = load { i64, ptr }, ptr %l625, !tbaa !27
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v1, ptr %s49, ptr %t1214, { i64, ptr } %t1215)
  br label %bb282
bb282:
  %t1216 = load ptr, ptr %l0, !tbaa !29
  %t1217 = load ptr, ptr %l1, !tbaa !29
  %t1218 = load { i64, ptr }, ptr %l44, !tbaa !27
  store { i64, ptr } %t1218, ptr %l628, !tbaa !27
  %t1219 = load i64, ptr %l50, !tbaa !24
  %t1221 = getelementptr { i64, ptr }, ptr %l628, i32 0, i32 1
  %t1222 = load ptr, ptr %t1221, !tbaa !27
  %t1223 = getelementptr i32, ptr %t1222, i64 %t1219
  %t1224 = load i32, ptr %t1223, !tbaa !33
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2espell(ptr %v0, ptr %v1, ptr %t1216, ptr %t1217, i32 %t1224, i1 false)
  br label %bb283
bb283:
  call void @__olang_scope_close(ptr %s49)
  br label %bb284
bb284:
  %t1228 = load i64, ptr %l49, !tbaa !24
  %t1230 = add i64 %t1228, 1
  store i64 %t1230, ptr %l49, !tbaa !24
  br label %bb275
bb285:
  br label %bb304
bb286:
  store %olang.scope zeroinitializer, ptr %s52
  %t1232 = load ptr, ptr %l1, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePushChar(ptr %v1, ptr %t1232, i8 32)
  br label %bb288
bb287:
  br label %bb303
bb288:
  %t1234 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1234, ptr %l637, !tbaa !29
  %t1235 = load { i64, ptr }, ptr %l27, !tbaa !27
  %t1237 = extractvalue { i64, ptr } %t1235, 0
  %t1239 = icmp sgt i64 %t1237, 0
  br i1 %t1239, label %bb289, label %bb290
bb289:
  %t1241 = load ptr, ptr %l0, !tbaa !29
  %t1243 = getelementptr %"compiler/check:Checker", ptr %t1241, i32 0, i32 1
  %t1244 = load ptr, ptr %t1243, !tbaa !29
  %t1246 = getelementptr %"compiler/generic:Program", ptr %t1244, i32 0, i32 2
  %t1247 = load i32, ptr %l26, !tbaa !23
  %t1250 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t1246, i32 %t1247)
  store i32 %t1250, ptr %l646
  br label %bb291
bb290:
  store i1 false, ptr %l641, !tbaa !21
  br label %bb292
bb291:
  %t1251 = load i32, ptr %l646, !range !{i32 0, i32 33}
  %t1253 = trunc i64 21 to i32
  %t1254 = icmp eq i32 %t1251, %t1253
  store i1 %t1254, ptr %l641, !tbaa !21
  br label %bb292
bb292:
  %t1256 = load i1, ptr %l641, !tbaa !21
  br i1 %t1256, label %bb293, label %bb294
bb293:
  %t1257 = load ptr, ptr %l0, !tbaa !29
  %t1259 = getelementptr %"compiler/check:Checker", ptr %t1257, i32 0, i32 1
  %t1260 = load ptr, ptr %t1259, !tbaa !29
  %t1262 = getelementptr %"compiler/generic:Program", ptr %t1260, i32 0, i32 2
  store ptr %t1262, ptr %l652, !tbaa !29
  %t1263 = load ptr, ptr %l0, !tbaa !29
  %t1265 = getelementptr %"compiler/check:Checker", ptr %t1263, i32 0, i32 1
  %t1266 = load ptr, ptr %t1265, !tbaa !29
  %t1268 = getelementptr %"compiler/generic:Program", ptr %t1266, i32 0, i32 2
  %t1269 = load i32, ptr %l26, !tbaa !23
  %t1272 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrors(ptr %v0, ptr %t1268, i32 %t1269)
  store i32 %t1272, ptr %l657
  br label %bb295
bb294:
  store i1 false, ptr %l649, !tbaa !21
  br label %bb297
bb295:
  %t1273 = load ptr, ptr %l652, !tbaa !29
  %t1274 = load i32, ptr %l657, !tbaa !23
  %t1275 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %s52, ptr %t1273, i32 %t1274)
  store { i64, ptr } %t1275, ptr %l658
  br label %bb296
bb296:
  %t1276 = load { i64, ptr }, ptr %l658, !tbaa !27
  %t1277 = extractvalue { i64, ptr } %t1276, 0
  %t1279 = icmp eq i64 %t1277, 0
  store i1 %t1279, ptr %l649, !tbaa !21
  br label %bb297
bb297:
  %t1281 = load i1, ptr %l649, !tbaa !21
  br i1 %t1281, label %bb298, label %bb299
bb298:
  %t1282 = load ptr, ptr %l0, !tbaa !29
  %t1284 = getelementptr %"compiler/check:Checker", ptr %t1282, i32 0, i32 1
  %t1285 = load ptr, ptr %t1284, !tbaa !29
  %t1287 = getelementptr %"compiler/generic:Program", ptr %t1285, i32 0, i32 2
  %t1288 = load i32, ptr %l26, !tbaa !23
  %t1291 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePromisesOf(ptr %v0, ptr %t1287, i32 %t1288)
  store i64 %t1291, ptr %l666
  br label %bb300
bb299:
  store i1 false, ptr %l661, !tbaa !21
  br label %bb301
bb300:
  %t1292 = load i64, ptr %l666, !tbaa !24
  %t1293 = icmp eq i64 %t1292, 0
  store i1 %t1293, ptr %l661, !tbaa !21
  br label %bb301
bb301:
  %t1295 = load i1, ptr %l661, !tbaa !21
  %t1296 = load ptr, ptr %l637, !tbaa !29
  %t1297 = getelementptr %"compiler/check:Checker", ptr %t1296, i32 0, i32 8
  store i1 %t1295, ptr %t1297, !tbaa !21
  %t1298 = load ptr, ptr %l0, !tbaa !29
  %t1299 = load ptr, ptr %l1, !tbaa !29
  %t1300 = load i32, ptr %l26, !tbaa !23
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2espell(ptr %v0, ptr %v1, ptr %t1298, ptr %t1299, i32 %t1300, i1 false)
  br label %bb302
bb302:
  %t1304 = load ptr, ptr %l0, !tbaa !29
  %t1306 = getelementptr %"compiler/check:Checker", ptr %t1304, i32 0, i32 8
  store i1 false, ptr %t1306, !tbaa !21
  call void @__olang_scope_close(ptr %s52)
  br label %bb303
bb303:
  br label %bb304
bb304:
  %t1307 = load ptr, ptr %l0, !tbaa !29
  %t1308 = load i1, ptr %l35, !tbaa !21
  %t1311 = getelementptr %"compiler/check:Checker", ptr %t1307, i32 0, i32 4
  store i1 %t1308, ptr %t1311, !tbaa !21
  %t1312 = load { i64, ptr }, ptr %l27, !tbaa !27
  %t1314 = extractvalue { i64, ptr } %t1312, 0
  %t1316 = icmp sgt i64 %t1314, 0
  br i1 %t1316, label %bb305, label %bb306
bb305:
  store %olang.scope zeroinitializer, ptr %s53
  %t1318 = load ptr, ptr %l1, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v1, ptr %s53, ptr %t1318, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d55, i32 0, i32 1) })
  br label %bb307
bb306:
  br label %bb322
bb307:
  store i64 0, ptr %l51, !tbaa !24
  %t1320 = load { i64, ptr }, ptr %l27, !tbaa !27
  store { i64, ptr } %t1320, ptr %l52, !tbaa !27
  store i64 0, ptr %l53, !tbaa !24
  %t1322 = load { i64, ptr }, ptr %l52, !tbaa !27
  %t1324 = extractvalue { i64, ptr } %t1322, 0
  store i64 %t1324, ptr %l54, !tbaa !24
  br label %bb308
bb308:
  store %olang.scope zeroinitializer, ptr %s55
  %t1326 = load i64, ptr %l53, !tbaa !24
  %t1327 = load i64, ptr %l54, !tbaa !24
  %t1330 = icmp slt i64 %t1326, %t1327
  %t1332 = xor i1 %t1330, true
  br i1 %t1332, label %bb309, label %bb310
bb309:
  call void @__olang_scope_close(ptr %s55)
  br label %bb321
bb310:
  br label %bb311
bb311:
  %t1334 = load { i64, ptr }, ptr %l52, !tbaa !27
  store { i64, ptr } %t1334, ptr %l685, !tbaa !27
  %t1335 = load i64, ptr %l53, !tbaa !24
  %t1337 = getelementptr { i64, ptr }, ptr %l685, i32 0, i32 1
  %t1338 = load ptr, ptr %t1337, !tbaa !27
  %t1339 = getelementptr i32, ptr %t1338, i64 %t1335
  %t1340 = load i32, ptr %t1339, !tbaa !33
  store i32 %t1340, ptr %l55, !tbaa !23
  %t1342 = load i32, ptr %l55, !tbaa !23
  %t1343 = load i32, ptr @G_2ecompiler_2ftypes_2eDefaultErrT, !tbaa !23
  %t1346 = icmp eq i32 %t1342, %t1343
  br i1 %t1346, label %bb312, label %bb313
bb312:
  call void @__olang_scope_close(ptr %s55)
  br label %bb320
bb313:
  br label %bb314
bb314:
  %t1348 = load ptr, ptr %l1, !tbaa !29
  store ptr %t1348, ptr %l691, !tbaa !29
  %t1349 = load i64, ptr %l51, !tbaa !24
  %t1351 = icmp eq i64 %t1349, 0
  br i1 %t1351, label %bb315, label %bb316
bb315:
  store { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d56, i32 0, i32 1) }, ptr %l694, !tbaa !27
  br label %bb317
bb316:
  store { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d57, i32 0, i32 1) }, ptr %l694, !tbaa !27
  br label %bb317
bb317:
  %t1353 = load ptr, ptr %l691, !tbaa !29
  %t1354 = load { i64, ptr }, ptr %l694, !tbaa !27
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v1, ptr %s55, ptr %t1353, { i64, ptr } %t1354)
  br label %bb318
bb318:
  %t1355 = load ptr, ptr %l0, !tbaa !29
  %t1356 = load ptr, ptr %l1, !tbaa !29
  %t1357 = load i32, ptr %l55, !tbaa !23
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2espell(ptr %v0, ptr %v1, ptr %t1355, ptr %t1356, i32 %t1357, i1 false)
  br label %bb319
bb319:
  %t1361 = load i64, ptr %l51, !tbaa !24
  %t1363 = add i64 %t1361, 1
  store i64 %t1363, ptr %l51, !tbaa !24
  call void @__olang_scope_close(ptr %s55)
  br label %bb320
bb320:
  %t1365 = load i64, ptr %l53, !tbaa !24
  %t1367 = add i64 %t1365, 1
  store i64 %t1367, ptr %l53, !tbaa !24
  br label %bb308
bb321:
  call void @__olang_scope_close(ptr %s53)
  br label %bb322
bb322:
  %t1369 = load ptr, ptr %l1, !tbaa !29
  store ptr %t1369, ptr %l702, !tbaa !29
  %t1370 = load ptr, ptr %l0, !tbaa !29
  %t1372 = getelementptr %"compiler/check:Checker", ptr %t1370, i32 0, i32 1
  %t1373 = load ptr, ptr %t1372, !tbaa !29
  %t1375 = getelementptr %"compiler/generic:Program", ptr %t1373, i32 0, i32 2
  %t1376 = load i32, ptr %l2, !tbaa !23
  %t1378 = inttoptr i64 0 to ptr
  %t1381 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePromiseText(ptr %v0, ptr %s35, ptr %t1378, ptr %t1375, i32 %t1376)
  store { i64, ptr } %t1381, ptr %l708
  br label %bb323
bb323:
  %t1382 = load { i64, ptr }, ptr %l708, !tbaa !27
  %t1383 = extractvalue { i64, ptr } %t1382, 0
  %t1384 = extractvalue { i64, ptr } %t1382, 1
  %t1385 = mul i64 %t1383, 1
  %t1386 = call ptr @__olang_scope_alloc(ptr %s35, i64 %t1385)
  call void @llvm.memcpy.p0.p0.i64(ptr %t1386, ptr %t1384, i64 %t1385, i1 false)
  %t1387 = insertvalue { i64, ptr } undef, i64 %t1383, 0
  %t1388 = insertvalue { i64, ptr } %t1387, ptr %t1386, 1
  %t1389 = load ptr, ptr %l702, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v1, ptr %s35, ptr %t1389, { i64, ptr } %t1388)
  br label %bb324
bb324:
  %t1391 = load i1, ptr %l34, !tbaa !21
  br i1 %t1391, label %bb325, label %bb326
bb325:
  %t1393 = load ptr, ptr %l1, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePushChar(ptr %v1, ptr %t1393, i8 41)
  br label %bb327
bb326:
  br label %bb328
bb327:
  br label %bb328
bb328:
  call void @__olang_scope_close(ptr %s35)
  br label %bb447
bb329:
  %t1395 = load i32, ptr %l4, !range !{i32 0, i32 33}
  %t1397 = trunc i64 22 to i32
  %t1398 = icmp eq i32 %t1395, %t1397
  br i1 %t1398, label %bb330, label %bb331
bb330:
  br label %bb332
bb331:
  br label %bb335
bb332:
  store %olang.scope zeroinitializer, ptr %s59
  %t1400 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1400, ptr %l714, !tbaa !29
  %t1401 = load ptr, ptr %l1, !tbaa !29
  store ptr %t1401, ptr %l715, !tbaa !29
  %t1402 = load ptr, ptr %l0, !tbaa !29
  %t1404 = getelementptr %"compiler/check:Checker", ptr %t1402, i32 0, i32 1
  %t1405 = load ptr, ptr %t1404, !tbaa !29
  %t1407 = getelementptr %"compiler/generic:Program", ptr %t1405, i32 0, i32 2
  %t1408 = load i32, ptr %l2, !tbaa !23
  %t1411 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParts(ptr %v0, ptr %t1407, i32 %t1408)
  store i32 %t1411, ptr %l720
  br label %bb333
bb333:
  %t1412 = load ptr, ptr %l714, !tbaa !29
  %t1413 = load ptr, ptr %l715, !tbaa !29
  %t1414 = load i32, ptr %l720, !tbaa !23
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2espellList(ptr %v0, ptr %v1, ptr %s59, ptr %s59, ptr %t1412, ptr %t1413, i32 %t1414, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d58, i32 0, i32 1) }, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d59, i32 0, i32 1) })
  br label %bb334
bb334:
  call void @__olang_scope_close(ptr %s59)
  br label %bb447
bb335:
  %t1415 = load i32, ptr %l4, !range !{i32 0, i32 33}
  %t1417 = trunc i64 24 to i32
  %t1418 = icmp eq i32 %t1415, %t1417
  br i1 %t1418, label %bb336, label %bb337
bb336:
  br label %bb338
bb337:
  br label %bb398
bb338:
  store %olang.scope zeroinitializer, ptr %s60
  %t1420 = load ptr, ptr %l1, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v1, ptr %s60, ptr %t1420, { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d60, i32 0, i32 1) })
  br label %bb339
bb339:
  %t1422 = load ptr, ptr %l0, !tbaa !29
  %t1424 = getelementptr %"compiler/check:Checker", ptr %t1422, i32 0, i32 1
  %t1425 = load ptr, ptr %t1424, !tbaa !29
  %t1427 = getelementptr %"compiler/generic:Program", ptr %t1425, i32 0, i32 2
  %t1428 = load i32, ptr %l2, !tbaa !23
  %t1431 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eShapeNames(ptr %v0, ptr %v0, ptr %t1427, i32 %t1428)
  store { i64, ptr } %t1431, ptr %l728
  br label %bb340
bb340:
  %t1432 = load { i64, ptr }, ptr %l728, !tbaa !27
  store { i64, ptr } %t1432, ptr %l56, !tbaa !27
  %t1433 = load ptr, ptr %l0, !tbaa !29
  %t1435 = getelementptr %"compiler/check:Checker", ptr %t1433, i32 0, i32 1
  %t1436 = load ptr, ptr %t1435, !tbaa !29
  %t1438 = getelementptr %"compiler/generic:Program", ptr %t1436, i32 0, i32 2
  store ptr %t1438, ptr %l731, !tbaa !29
  %t1439 = load ptr, ptr %l0, !tbaa !29
  %t1441 = getelementptr %"compiler/check:Checker", ptr %t1439, i32 0, i32 1
  %t1442 = load ptr, ptr %t1441, !tbaa !29
  %t1444 = getelementptr %"compiler/generic:Program", ptr %t1442, i32 0, i32 2
  %t1445 = load i32, ptr %l2, !tbaa !23
  %t1448 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eShapeCases(ptr %v0, ptr %t1444, i32 %t1445)
  store i32 %t1448, ptr %l736
  br label %bb341
bb341:
  %t1449 = load ptr, ptr %l731, !tbaa !29
  %t1450 = load i32, ptr %l736, !tbaa !23
  %t1451 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t1449, i32 %t1450)
  store { i64, ptr } %t1451, ptr %l737
  br label %bb342
bb342:
  %t1452 = load { i64, ptr }, ptr %l737, !tbaa !27
  store { i64, ptr } %t1452, ptr %l57, !tbaa !27
  %t1453 = load ptr, ptr %l0, !tbaa !29
  %t1455 = getelementptr %"compiler/check:Checker", ptr %t1453, i32 0, i32 1
  %t1456 = load ptr, ptr %t1455, !tbaa !29
  %t1458 = getelementptr %"compiler/generic:Program", ptr %t1456, i32 0, i32 2
  %t1459 = load i32, ptr %l2, !tbaa !23
  %t1462 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eShapeFields(ptr %v0, ptr %v0, ptr %t1458, i32 %t1459)
  store { i64, ptr } %t1462, ptr %l742
  br label %bb343
bb343:
  %t1463 = load { i64, ptr }, ptr %l742, !tbaa !27
  store { i64, ptr } %t1463, ptr %l58, !tbaa !27
  store i64 0, ptr %l59, !tbaa !24
  store i64 0, ptr %l60, !tbaa !24
  %t1464 = load { i64, ptr }, ptr %l56, !tbaa !27
  %t1466 = extractvalue { i64, ptr } %t1464, 0
  store i64 %t1466, ptr %l61, !tbaa !24
  store i64 1, ptr %l62, !tbaa !24
  %t1468 = load i64, ptr %l61, !tbaa !24
  %t1469 = load i64, ptr %l60, !tbaa !24
  %t1472 = icmp sgt i64 %t1468, %t1469
  br i1 %t1472, label %bb344, label %bb345
bb344:
  %t1474 = load i64, ptr %l62, !tbaa !24
  %t1476 = icmp sgt i64 %t1474, 0
  br i1 %t1476, label %bb346, label %bb347
bb345:
  store i64 0, ptr %l748, !tbaa !24
  br label %bb349
bb346:
  %t1478 = load i64, ptr %l61, !tbaa !24
  %t1479 = load i64, ptr %l60, !tbaa !24
  %t1482 = sub i64 %t1478, %t1479
  %t1483 = load i64, ptr %l62, !tbaa !24
  %t1486 = add i64 %t1482, %t1483
  %t1488 = sub i64 %t1486, 1
  %t1489 = load i64, ptr %l62, !tbaa !24
  %t1492 = sdiv i64 %t1488, %t1489
  store i64 %t1492, ptr %l751, !tbaa !24
  br label %bb348
bb347:
  store i64 0, ptr %l751, !tbaa !24
  br label %bb348
bb348:
  %t1494 = load i64, ptr %l751, !tbaa !24
  store i64 %t1494, ptr %l748, !tbaa !24
  br label %bb349
bb349:
  %t1495 = load i64, ptr %l748, !tbaa !24
  store i64 %t1495, ptr %l63, !tbaa !24
  store i64 0, ptr %l64, !tbaa !24
  br label %bb350
bb350:
  %t1496 = load i64, ptr %l64, !tbaa !24
  %t1497 = load i64, ptr %l63, !tbaa !24
  %t1500 = icmp slt i64 %t1496, %t1497
  %t1502 = xor i1 %t1500, true
  br i1 %t1502, label %bb351, label %bb352
bb351:
  br label %bb396
bb352:
  br label %bb353
bb353:
  %t1504 = load i64, ptr %l60, !tbaa !24
  %t1505 = load i64, ptr %l64, !tbaa !24
  %t1506 = load i64, ptr %l62, !tbaa !24
  %t1509 = mul i64 %t1505, %t1506
  %t1512 = add i64 %t1504, %t1509
  store i64 %t1512, ptr %l65, !tbaa !24
  %t1514 = load ptr, ptr %l1, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePushChar(ptr %v1, ptr %t1514, i8 32)
  br label %bb354
bb354:
  %t1516 = load ptr, ptr %l1, !tbaa !29
  store ptr %t1516, ptr %l770, !tbaa !29
  %t1517 = load ptr, ptr %l0, !tbaa !29
  %t1518 = load { i64, ptr }, ptr %l56, !tbaa !27
  store { i64, ptr } %t1518, ptr %l772, !tbaa !27
  %t1519 = load i64, ptr %l65, !tbaa !24
  %t1521 = getelementptr { i64, ptr }, ptr %l772, i32 0, i32 1
  %t1522 = load ptr, ptr %t1521, !tbaa !27
  %t1523 = getelementptr i32, ptr %t1522, i64 %t1519
  %t1524 = load i32, ptr %t1523, !tbaa !33
  %t1527 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %v0, ptr %t1517, i32 %t1524)
  store { i64, ptr } %t1527, ptr %l775
  br label %bb355
bb355:
  %t1528 = load ptr, ptr %l770, !tbaa !29
  %t1529 = load { i64, ptr }, ptr %l775, !tbaa !27
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v1, ptr %v0, ptr %t1528, { i64, ptr } %t1529)
  br label %bb356
bb356:
  %t1530 = load i64, ptr %l65, !tbaa !24
  %t1531 = load { i64, ptr }, ptr %l57, !tbaa !27
  %t1533 = extractvalue { i64, ptr } %t1531, 0
  %t1536 = icmp sge i64 %t1530, %t1533
  br i1 %t1536, label %bb357, label %bb358
bb357:
  store i1 true, ptr %l780, !tbaa !21
  br label %bb359
bb358:
  %t1538 = load { i64, ptr }, ptr %l57, !tbaa !27
  store { i64, ptr } %t1538, ptr %l781, !tbaa !27
  %t1539 = load i64, ptr %l65, !tbaa !24
  %t1541 = getelementptr { i64, ptr }, ptr %l781, i32 0, i32 1
  %t1542 = load ptr, ptr %t1541, !tbaa !27
  %t1543 = getelementptr i32, ptr %t1542, i64 %t1539
  %t1544 = load i32, ptr %t1543, !tbaa !33
  %t1546 = icmp eq i32 %t1544, 0
  store i1 %t1546, ptr %l780, !tbaa !21
  br label %bb359
bb359:
  %t1548 = load i1, ptr %l780, !tbaa !21
  br i1 %t1548, label %bb360, label %bb361
bb360:
  br label %bb395
bb361:
  br label %bb362
bb362:
  %t1549 = load ptr, ptr %l0, !tbaa !29
  %t1551 = getelementptr %"compiler/check:Checker", ptr %t1549, i32 0, i32 1
  %t1552 = load ptr, ptr %t1551, !tbaa !29
  %t1554 = getelementptr %"compiler/generic:Program", ptr %t1552, i32 0, i32 2
  store ptr %t1554, ptr %l787, !tbaa !29
  %t1555 = load ptr, ptr %l0, !tbaa !29
  %t1557 = getelementptr %"compiler/check:Checker", ptr %t1555, i32 0, i32 1
  %t1558 = load ptr, ptr %t1557, !tbaa !29
  %t1560 = getelementptr %"compiler/generic:Program", ptr %t1558, i32 0, i32 2
  %t1561 = load { i64, ptr }, ptr %l57, !tbaa !27
  store { i64, ptr } %t1561, ptr %l791, !tbaa !27
  %t1562 = load i64, ptr %l65, !tbaa !24
  %t1564 = getelementptr { i64, ptr }, ptr %l791, i32 0, i32 1
  %t1565 = load ptr, ptr %t1564, !tbaa !27
  %t1566 = getelementptr i32, ptr %t1565, i64 %t1562
  %t1567 = load i32, ptr %t1566, !tbaa !33
  %t1570 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParts(ptr %v0, ptr %t1560, i32 %t1567)
  store i32 %t1570, ptr %l794
  br label %bb363
bb363:
  %t1571 = load ptr, ptr %l787, !tbaa !29
  %t1572 = load i32, ptr %l794, !tbaa !23
  %t1573 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t1571, i32 %t1572)
  store { i64, ptr } %t1573, ptr %l795
  br label %bb364
bb364:
  %t1574 = load { i64, ptr }, ptr %l795, !tbaa !27
  store { i64, ptr } %t1574, ptr %l66, !tbaa !27
  %t1575 = load { i64, ptr }, ptr %l66, !tbaa !27
  %t1577 = extractvalue { i64, ptr } %t1575, 0
  %t1579 = icmp eq i64 %t1577, 0
  br i1 %t1579, label %bb365, label %bb366
bb365:
  br label %bb395
bb366:
  br label %bb367
bb367:
  %t1581 = load { i64, ptr }, ptr %l58, !tbaa !27
  %t1583 = extractvalue { i64, ptr } %t1581, 0
  %t1584 = load i64, ptr %l59, !tbaa !24
  %t1585 = load { i64, ptr }, ptr %l66, !tbaa !27
  %t1587 = extractvalue { i64, ptr } %t1585, 0
  %t1590 = add i64 %t1584, %t1587
  %t1593 = icmp slt i64 %t1583, %t1590
  br i1 %t1593, label %bb368, label %bb369
bb368:
  store %olang.scope zeroinitializer, ptr %s65
  %t1595 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1595, ptr %l806, !tbaa !29
  %t1596 = load ptr, ptr %l1, !tbaa !29
  store ptr %t1596, ptr %l807, !tbaa !29
  %t1597 = load ptr, ptr %l0, !tbaa !29
  %t1599 = getelementptr %"compiler/check:Checker", ptr %t1597, i32 0, i32 1
  %t1600 = load ptr, ptr %t1599, !tbaa !29
  %t1602 = getelementptr %"compiler/generic:Program", ptr %t1600, i32 0, i32 2
  %t1603 = load { i64, ptr }, ptr %l57, !tbaa !27
  store { i64, ptr } %t1603, ptr %l811, !tbaa !27
  %t1604 = load i64, ptr %l65, !tbaa !24
  %t1606 = getelementptr { i64, ptr }, ptr %l811, i32 0, i32 1
  %t1607 = load ptr, ptr %t1606, !tbaa !27
  %t1608 = getelementptr i32, ptr %t1607, i64 %t1604
  %t1609 = load i32, ptr %t1608, !tbaa !33
  %t1612 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParts(ptr %v0, ptr %t1602, i32 %t1609)
  store i32 %t1612, ptr %l814
  br label %bb370
bb369:
  br label %bb372
bb370:
  %t1613 = load ptr, ptr %l806, !tbaa !29
  %t1614 = load ptr, ptr %l807, !tbaa !29
  %t1615 = load i32, ptr %l814, !tbaa !23
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2espellList(ptr %v0, ptr %v1, ptr %s65, ptr %s65, ptr %t1613, ptr %t1614, i32 %t1615, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d61, i32 0, i32 1) }, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d62, i32 0, i32 1) })
  br label %bb371
bb371:
  call void @__olang_scope_close(ptr %s65)
  br label %bb395
bb372:
  %t1616 = load ptr, ptr %l1, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePushChar(ptr %v1, ptr %t1616, i8 40)
  br label %bb373
bb373:
  store i64 0, ptr %l67, !tbaa !24
  %t1618 = load { i64, ptr }, ptr %l66, !tbaa !27
  %t1620 = extractvalue { i64, ptr } %t1618, 0
  store i64 %t1620, ptr %l68, !tbaa !24
  store i64 1, ptr %l69, !tbaa !24
  %t1622 = load i64, ptr %l68, !tbaa !24
  %t1623 = load i64, ptr %l67, !tbaa !24
  %t1626 = icmp sgt i64 %t1622, %t1623
  br i1 %t1626, label %bb374, label %bb375
bb374:
  %t1628 = load i64, ptr %l69, !tbaa !24
  %t1630 = icmp sgt i64 %t1628, 0
  br i1 %t1630, label %bb376, label %bb377
bb375:
  store i64 0, ptr %l821, !tbaa !24
  br label %bb379
bb376:
  %t1632 = load i64, ptr %l68, !tbaa !24
  %t1633 = load i64, ptr %l67, !tbaa !24
  %t1636 = sub i64 %t1632, %t1633
  %t1637 = load i64, ptr %l69, !tbaa !24
  %t1640 = add i64 %t1636, %t1637
  %t1642 = sub i64 %t1640, 1
  %t1643 = load i64, ptr %l69, !tbaa !24
  %t1646 = sdiv i64 %t1642, %t1643
  store i64 %t1646, ptr %l824, !tbaa !24
  br label %bb378
bb377:
  store i64 0, ptr %l824, !tbaa !24
  br label %bb378
bb378:
  %t1648 = load i64, ptr %l824, !tbaa !24
  store i64 %t1648, ptr %l821, !tbaa !24
  br label %bb379
bb379:
  %t1649 = load i64, ptr %l821, !tbaa !24
  store i64 %t1649, ptr %l70, !tbaa !24
  store i64 0, ptr %l71, !tbaa !24
  br label %bb380
bb380:
  %t1650 = load i64, ptr %l71, !tbaa !24
  %t1651 = load i64, ptr %l70, !tbaa !24
  %t1654 = icmp slt i64 %t1650, %t1651
  %t1656 = xor i1 %t1654, true
  br i1 %t1656, label %bb381, label %bb382
bb381:
  br label %bb393
bb382:
  br label %bb383
bb383:
  %t1658 = load i64, ptr %l67, !tbaa !24
  %t1659 = load i64, ptr %l71, !tbaa !24
  %t1660 = load i64, ptr %l69, !tbaa !24
  %t1663 = mul i64 %t1659, %t1660
  %t1666 = add i64 %t1658, %t1663
  store i64 %t1666, ptr %l72, !tbaa !24
  %t1668 = load i64, ptr %l72, !tbaa !24
  %t1670 = icmp sgt i64 %t1668, 0
  br i1 %t1670, label %bb384, label %bb385
bb384:
  store %olang.scope zeroinitializer, ptr %s68
  %t1672 = load ptr, ptr %l1, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v1, ptr %s68, ptr %t1672, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d63, i32 0, i32 1) })
  br label %bb386
bb385:
  br label %bb387
bb386:
  call void @__olang_scope_close(ptr %s68)
  br label %bb387
bb387:
  %t1674 = load ptr, ptr %l1, !tbaa !29
  store ptr %t1674, ptr %l845, !tbaa !29
  %t1675 = load ptr, ptr %l0, !tbaa !29
  %t1676 = load { i64, ptr }, ptr %l58, !tbaa !27
  store { i64, ptr } %t1676, ptr %l847, !tbaa !27
  %t1677 = load i64, ptr %l59, !tbaa !24
  %t1678 = load i64, ptr %l72, !tbaa !24
  %t1681 = add i64 %t1677, %t1678
  %t1683 = getelementptr { i64, ptr }, ptr %l847, i32 0, i32 1
  %t1684 = load ptr, ptr %t1683, !tbaa !27
  %t1685 = getelementptr i32, ptr %t1684, i64 %t1681
  %t1686 = load i32, ptr %t1685, !tbaa !33
  %t1689 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %v0, ptr %t1675, i32 %t1686)
  store { i64, ptr } %t1689, ptr %l852
  br label %bb388
bb388:
  %t1690 = load ptr, ptr %l845, !tbaa !29
  %t1691 = load { i64, ptr }, ptr %l852, !tbaa !27
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v1, ptr %v0, ptr %t1690, { i64, ptr } %t1691)
  br label %bb389
bb389:
  %t1692 = load ptr, ptr %l1, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePushChar(ptr %v1, ptr %t1692, i8 32)
  br label %bb390
bb390:
  %t1694 = load ptr, ptr %l0, !tbaa !29
  %t1695 = load ptr, ptr %l1, !tbaa !29
  %t1696 = load { i64, ptr }, ptr %l66, !tbaa !27
  store { i64, ptr } %t1696, ptr %l856, !tbaa !27
  %t1697 = load i64, ptr %l72, !tbaa !24
  %t1699 = getelementptr { i64, ptr }, ptr %l856, i32 0, i32 1
  %t1700 = load ptr, ptr %t1699, !tbaa !27
  %t1701 = getelementptr i32, ptr %t1700, i64 %t1697
  %t1702 = load i32, ptr %t1701, !tbaa !33
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2espell(ptr %v0, ptr %v1, ptr %t1694, ptr %t1695, i32 %t1702, i1 false)
  br label %bb391
bb391:
  br label %bb392
bb392:
  %t1706 = load i64, ptr %l71, !tbaa !24
  %t1708 = add i64 %t1706, 1
  store i64 %t1708, ptr %l71, !tbaa !24
  br label %bb380
bb393:
  %t1710 = load ptr, ptr %l1, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePushChar(ptr %v1, ptr %t1710, i8 41)
  br label %bb394
bb394:
  %t1712 = load i64, ptr %l59, !tbaa !24
  %t1713 = load { i64, ptr }, ptr %l66, !tbaa !27
  %t1715 = extractvalue { i64, ptr } %t1713, 0
  %t1718 = add i64 %t1712, %t1715
  store i64 %t1718, ptr %l59, !tbaa !24
  br label %bb395
bb395:
  %t1720 = load i64, ptr %l64, !tbaa !24
  %t1722 = add i64 %t1720, 1
  store i64 %t1722, ptr %l64, !tbaa !24
  br label %bb350
bb396:
  %t1724 = load ptr, ptr %l1, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v1, ptr %s60, ptr %t1724, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d64, i32 0, i32 1) })
  br label %bb397
bb397:
  call void @__olang_scope_close(ptr %s60)
  br label %bb447
bb398:
  %t1726 = load i32, ptr %l4, !range !{i32 0, i32 33}
  %t1728 = trunc i64 26 to i32
  %t1729 = icmp eq i32 %t1726, %t1728
  br i1 %t1729, label %bb399, label %bb400
bb399:
  br label %bb401
bb400:
  br label %bb404
bb401:
  store %olang.scope zeroinitializer, ptr %s71
  %t1731 = load ptr, ptr %l1, !tbaa !29
  store ptr %t1731, ptr %l871, !tbaa !29
  %t1732 = load ptr, ptr %l0, !tbaa !29
  %t1734 = getelementptr %"compiler/check:Checker", ptr %t1732, i32 0, i32 1
  %t1735 = load ptr, ptr %t1734, !tbaa !29
  %t1737 = getelementptr %"compiler/generic:Program", ptr %t1735, i32 0, i32 2
  %t1738 = load i32, ptr %l2, !tbaa !23
  %t1741 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eConstValue(ptr %v0, ptr %t1737, i32 %t1738)
  store i64 %t1741, ptr %l876
  br label %bb402
bb402:
  %t1742 = load i64, ptr %l876, !tbaa !24
  %t1743 = call i64 @__olang_fmt_i64(ptr null, i64 %t1742)
  %t1744 = call ptr @__olang_scope_alloc(ptr %s71, i64 %t1743)
  %t1745 = call i64 @__olang_fmt_i64(ptr %t1744, i64 %t1742)
  %t1746 = insertvalue { i64, ptr } undef, i64 %t1743, 0
  %t1747 = insertvalue { i64, ptr } %t1746, ptr %t1744, 1
  %t1749 = extractvalue { i64, ptr } %t1747, 0
  %t1750 = extractvalue { i64, ptr } %t1747, 1
  %t1751 = mul i64 %t1749, 1
  %t1752 = call ptr @__olang_scope_alloc(ptr %s71, i64 %t1751)
  call void @llvm.memcpy.p0.p0.i64(ptr %t1752, ptr %t1750, i64 %t1751, i1 false)
  %t1753 = insertvalue { i64, ptr } undef, i64 %t1749, 0
  %t1754 = insertvalue { i64, ptr } %t1753, ptr %t1752, 1
  %t1755 = load ptr, ptr %l871, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v1, ptr %s71, ptr %t1755, { i64, ptr } %t1754)
  br label %bb403
bb403:
  call void @__olang_scope_close(ptr %s71)
  br label %bb447
bb404:
  %t1757 = load i32, ptr %l4, !range !{i32 0, i32 33}
  %t1759 = trunc i64 25 to i32
  %t1760 = icmp eq i32 %t1757, %t1759
  br i1 %t1760, label %bb405, label %bb406
bb405:
  br label %bb407
bb406:
  br label %bb413
bb407:
  %t1762 = load ptr, ptr %l1, !tbaa !29
  store ptr %t1762, ptr %l881, !tbaa !29
  %t1763 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1763, ptr %l882, !tbaa !29
  %t1764 = load ptr, ptr %l0, !tbaa !29
  %t1766 = getelementptr %"compiler/check:Checker", ptr %t1764, i32 0, i32 1
  %t1767 = load ptr, ptr %t1766, !tbaa !29
  store ptr %t1767, ptr %l884, !tbaa !29
  %t1768 = load ptr, ptr %l0, !tbaa !29
  %t1770 = getelementptr %"compiler/check:Checker", ptr %t1768, i32 0, i32 1
  %t1771 = load ptr, ptr %t1770, !tbaa !29
  %t1773 = getelementptr %"compiler/generic:Program", ptr %t1771, i32 0, i32 2
  %t1774 = load i32, ptr %l2, !tbaa !23
  %t1777 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eA(ptr %v0, ptr %t1773, i32 %t1774)
  store i64 %t1777, ptr %l889
  br label %bb408
bb408:
  %t1778 = load ptr, ptr %l0, !tbaa !29
  %t1780 = getelementptr %"compiler/check:Checker", ptr %t1778, i32 0, i32 1
  %t1781 = load ptr, ptr %t1780, !tbaa !29
  %t1783 = getelementptr %"compiler/generic:Program", ptr %t1781, i32 0, i32 2
  %t1784 = load i32, ptr %l2, !tbaa !23
  %t1787 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eB(ptr %v0, ptr %t1783, i32 %t1784)
  store i64 %t1787, ptr %l894
  br label %bb409
bb409:
  %t1788 = load ptr, ptr %l884, !tbaa !29
  %t1789 = load i64, ptr %l889, !tbaa !24
  %t1790 = load i64, ptr %l894, !tbaa !24
  %t1791 = call %"compiler/generic:varRow" @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eVarAt(ptr %v0, ptr %t1788, i64 %t1789, i64 %t1790)
  store %"compiler/generic:varRow" %t1791, ptr %l895
  br label %bb410
bb410:
  %t1792 = getelementptr %"compiler/generic:varRow", ptr %l895, i32 0, i32 1
  %t1793 = load i32, ptr %t1792, !tbaa !23
  %t1794 = load ptr, ptr %l882, !tbaa !29
  %t1796 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %v0, ptr %t1794, i32 %t1793)
  store { i64, ptr } %t1796, ptr %l897
  br label %bb411
bb411:
  %t1797 = load ptr, ptr %l881, !tbaa !29
  %t1798 = load { i64, ptr }, ptr %l897, !tbaa !27
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v1, ptr %v0, ptr %t1797, { i64, ptr } %t1798)
  br label %bb412
bb412:
  br label %bb447
bb413:
  %t1799 = load i32, ptr %l4, !range !{i32 0, i32 33}
  %t1801 = trunc i64 30 to i32
  %t1802 = icmp eq i32 %t1799, %t1801
  br i1 %t1802, label %bb414, label %bb415
bb414:
  br label %bb416
bb415:
  br label %bb440
bb416:
  %t1804 = load ptr, ptr %l0, !tbaa !29
  %t1806 = getelementptr %"compiler/check:Checker", ptr %t1804, i32 0, i32 1
  %t1807 = load ptr, ptr %t1806, !tbaa !29
  %t1809 = getelementptr %"compiler/generic:Program", ptr %t1807, i32 0, i32 2
  store ptr %t1809, ptr %l902, !tbaa !29
  %t1810 = load ptr, ptr %l0, !tbaa !29
  %t1812 = getelementptr %"compiler/check:Checker", ptr %t1810, i32 0, i32 1
  %t1813 = load ptr, ptr %t1812, !tbaa !29
  %t1815 = getelementptr %"compiler/generic:Program", ptr %t1813, i32 0, i32 2
  %t1816 = load i32, ptr %l2, !tbaa !23
  %t1819 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrSetItems(ptr %v0, ptr %t1815, i32 %t1816)
  store i32 %t1819, ptr %l907
  br label %bb417
bb417:
  %t1820 = load ptr, ptr %l902, !tbaa !29
  %t1821 = load i32, ptr %l907, !tbaa !23
  %t1822 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t1820, i32 %t1821)
  store { i64, ptr } %t1822, ptr %l908
  br label %bb418
bb418:
  %t1823 = load { i64, ptr }, ptr %l908, !tbaa !27
  store { i64, ptr } %t1823, ptr %l73, !tbaa !27
  %t1824 = load { i64, ptr }, ptr %l73, !tbaa !27
  %t1826 = extractvalue { i64, ptr } %t1824, 0
  %t1828 = icmp eq i64 %t1826, 0
  br i1 %t1828, label %bb419, label %bb420
bb419:
  store %olang.scope zeroinitializer, ptr %s75
  %t1830 = load ptr, ptr %l1, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v1, ptr %s75, ptr %t1830, { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d65, i32 0, i32 1) })
  br label %bb421
bb420:
  br label %bb422
bb421:
  call void @__olang_scope_close(ptr %s75)
  br label %bb422
bb422:
  store i64 0, ptr %l74, !tbaa !24
  %t1832 = load { i64, ptr }, ptr %l73, !tbaa !27
  %t1834 = extractvalue { i64, ptr } %t1832, 0
  store i64 %t1834, ptr %l75, !tbaa !24
  store i64 1, ptr %l76, !tbaa !24
  %t1836 = load i64, ptr %l75, !tbaa !24
  %t1837 = load i64, ptr %l74, !tbaa !24
  %t1840 = icmp sgt i64 %t1836, %t1837
  br i1 %t1840, label %bb423, label %bb424
bb423:
  %t1842 = load i64, ptr %l76, !tbaa !24
  %t1844 = icmp sgt i64 %t1842, 0
  br i1 %t1844, label %bb425, label %bb426
bb424:
  store i64 0, ptr %l918, !tbaa !24
  br label %bb428
bb425:
  %t1846 = load i64, ptr %l75, !tbaa !24
  %t1847 = load i64, ptr %l74, !tbaa !24
  %t1850 = sub i64 %t1846, %t1847
  %t1851 = load i64, ptr %l76, !tbaa !24
  %t1854 = add i64 %t1850, %t1851
  %t1856 = sub i64 %t1854, 1
  %t1857 = load i64, ptr %l76, !tbaa !24
  %t1860 = sdiv i64 %t1856, %t1857
  store i64 %t1860, ptr %l921, !tbaa !24
  br label %bb427
bb426:
  store i64 0, ptr %l921, !tbaa !24
  br label %bb427
bb427:
  %t1862 = load i64, ptr %l921, !tbaa !24
  store i64 %t1862, ptr %l918, !tbaa !24
  br label %bb428
bb428:
  %t1863 = load i64, ptr %l918, !tbaa !24
  store i64 %t1863, ptr %l77, !tbaa !24
  store i64 0, ptr %l78, !tbaa !24
  br label %bb429
bb429:
  %t1864 = load i64, ptr %l78, !tbaa !24
  %t1865 = load i64, ptr %l77, !tbaa !24
  %t1868 = icmp slt i64 %t1864, %t1865
  %t1870 = xor i1 %t1868, true
  br i1 %t1870, label %bb430, label %bb431
bb430:
  br label %bb439
bb431:
  br label %bb432
bb432:
  %t1872 = load i64, ptr %l74, !tbaa !24
  %t1873 = load i64, ptr %l78, !tbaa !24
  %t1874 = load i64, ptr %l76, !tbaa !24
  %t1877 = mul i64 %t1873, %t1874
  %t1880 = add i64 %t1872, %t1877
  store i64 %t1880, ptr %l79, !tbaa !24
  %t1882 = load i64, ptr %l79, !tbaa !24
  %t1884 = icmp sgt i64 %t1882, 0
  br i1 %t1884, label %bb433, label %bb434
bb433:
  store %olang.scope zeroinitializer, ptr %s78
  %t1886 = load ptr, ptr %l1, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v1, ptr %s78, ptr %t1886, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d66, i32 0, i32 1) })
  br label %bb435
bb434:
  br label %bb436
bb435:
  call void @__olang_scope_close(ptr %s78)
  br label %bb436
bb436:
  %t1888 = load ptr, ptr %l0, !tbaa !29
  %t1889 = load ptr, ptr %l1, !tbaa !29
  %t1890 = load { i64, ptr }, ptr %l73, !tbaa !27
  store { i64, ptr } %t1890, ptr %l944, !tbaa !27
  %t1891 = load i64, ptr %l79, !tbaa !24
  %t1893 = getelementptr { i64, ptr }, ptr %l944, i32 0, i32 1
  %t1894 = load ptr, ptr %t1893, !tbaa !27
  %t1895 = getelementptr i32, ptr %t1894, i64 %t1891
  %t1896 = load i32, ptr %t1895, !tbaa !33
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2espell(ptr %v0, ptr %v1, ptr %t1888, ptr %t1889, i32 %t1896, i1 false)
  br label %bb437
bb437:
  br label %bb438
bb438:
  %t1900 = load i64, ptr %l78, !tbaa !24
  %t1902 = add i64 %t1900, 1
  store i64 %t1902, ptr %l78, !tbaa !24
  br label %bb429
bb439:
  br label %bb447
bb440:
  br i1 true, label %bb441, label %bb442
bb441:
  br label %bb443
bb442:
  br label %bb446
bb443:
  store %olang.scope zeroinitializer, ptr %s80
  %t1904 = load ptr, ptr %l1, !tbaa !29
  store ptr %t1904, ptr %l949, !tbaa !29
  %t1905 = load ptr, ptr %l0, !tbaa !29
  %t1907 = getelementptr %"compiler/check:Checker", ptr %t1905, i32 0, i32 1
  %t1908 = load ptr, ptr %t1907, !tbaa !29
  %t1910 = getelementptr %"compiler/generic:Program", ptr %t1908, i32 0, i32 2
  %t1911 = load i32, ptr %l2, !tbaa !23
  %t1913 = inttoptr i64 0 to ptr
  %t1916 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eCanon(ptr %v0, ptr %s80, ptr %t1913, ptr %t1910, i32 %t1911)
  store { i64, ptr } %t1916, ptr %l955
  br label %bb444
bb444:
  %t1917 = load { i64, ptr }, ptr %l955, !tbaa !27
  %t1918 = extractvalue { i64, ptr } %t1917, 0
  %t1919 = extractvalue { i64, ptr } %t1917, 1
  %t1920 = mul i64 %t1918, 1
  %t1921 = call ptr @__olang_scope_alloc(ptr %s80, i64 %t1920)
  call void @llvm.memcpy.p0.p0.i64(ptr %t1921, ptr %t1919, i64 %t1920, i1 false)
  %t1922 = insertvalue { i64, ptr } undef, i64 %t1918, 0
  %t1923 = insertvalue { i64, ptr } %t1922, ptr %t1921, 1
  %t1924 = load ptr, ptr %l949, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v1, ptr %s80, ptr %t1924, { i64, ptr } %t1923)
  br label %bb445
bb445:
  call void @__olang_scope_close(ptr %s80)
  br label %bb447
bb446:
  call void @__olang_check_failed(ptr @olang_loc_150065cf715feb7f_967c08b33fa11dcb)
  unreachable
bb447:
  br label %ret
ret:
  ret void
}

define dso_local ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esuppliedCall(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %v5, ptr %a0, %"compiler/source:Span" %a1, %"compiler/source:Span" %a2, ptr %a3, ptr %a4, { i64, ptr } %a5, { i64, ptr } %a6) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/source:Span"
  %l2 = alloca %"compiler/source:Span"
  %l3 = alloca ptr
  %l4 = alloca ptr
  %l5 = alloca { i64, ptr }
  %l6 = alloca { i64, ptr }
  %l7 = alloca i32
  %l8 = alloca i32
  %l9 = alloca i64
  %l11 = alloca ptr
  %l12 = alloca i32
  %l13 = alloca ptr
  %l14 = alloca i64
  %l15 = alloca i64
  %l16 = alloca ptr
  %l17 = alloca i32
  %l18 = alloca ptr
  %l19 = alloca i32
  %l20 = alloca i1
  %l21 = alloca i64
  %l22 = alloca ptr
  %l23 = alloca ptr
  %l24 = alloca i32
  %l25 = alloca i32
  %l26 = alloca i32
  %l27 = alloca i32
  %l28 = alloca i32
  %l29 = alloca i64
  %l30 = alloca i64
  %l31 = alloca i64
  %l32 = alloca i64
  %l33 = alloca { i64, i64, i64 }
  %l34 = alloca i64
  %l35 = alloca i64
  %l36 = alloca i64
  %l37 = alloca { i64, i64, i64, i64, i64 }
  %l38 = alloca i64
  %l39 = alloca i64
  %l40 = alloca i64
  %l41 = alloca i64
  %l42 = alloca i64
  %lp44 = alloca ptr
  %l45 = alloca ptr
  %lp46 = alloca ptr
  %l47 = alloca ptr
  %l48 = alloca ptr
  %l49 = alloca i64
  %l50 = alloca i32
  %l51 = alloca i64
  %l52 = alloca ptr
  %l53 = alloca i64
  %l54 = alloca { i64, ptr }
  %l55 = alloca i64
  %l56 = alloca i64
  %l59 = alloca i32
  %l60 = alloca ptr
  %l61 = alloca %"compiler/source:Span"
  %l62 = alloca i64
  %l63 = alloca ptr
  %l66 = alloca i32
  %l67 = alloca i32
  %l70 = alloca i32
  %l72 = alloca i1
  %l73 = alloca i1
  %l77 = alloca i1
  %l82 = alloca i1
  %l83 = alloca ptr
  %l84 = alloca %"compiler/source:Span"
  %l85 = alloca %"compiler/diagmsg:Msg"
  %l86 = alloca i64
  %l91 = alloca ptr
  %l94 = alloca i1
  %l95 = alloca i1
  %l99 = alloca i1
  %l104 = alloca i1
  %l109 = alloca i64
  %l112 = alloca i32
  %l116 = alloca i32
  %l119 = alloca i32
  %l123 = alloca i32
  %l127 = alloca i32
  %l128 = alloca ptr
  %l129 = alloca %"compiler/source:Span"
  %l130 = alloca i32
  %l131 = alloca i32
  %l135 = alloca ptr
  %l136 = alloca ptr
  %l139 = alloca i1
  %l140 = alloca i1
  %l143 = alloca i1
  %l150 = alloca ptr
  %l153 = alloca i1
  %l154 = alloca i1
  %l157 = alloca i32
  %l163 = alloca ptr
  %l164 = alloca %"compiler/source:Span"
  %l167 = alloca %"compiler/diagmsg:Msg"
  %l168 = alloca i64
  %l173 = alloca ptr
  %l176 = alloca ptr
  %l180 = alloca %"compiler/source:Span"
  %l183 = alloca i32
  %l184 = alloca ptr
  %l185 = alloca ptr
  %l186 = alloca i32
  %l188 = alloca %"compiler/source:Span"
  %l189 = alloca i32
  %l192 = alloca ptr
  %l194 = alloca i32
  %l195 = alloca { i64, ptr }
  %l197 = alloca i32
  %l198 = alloca ptr
  %l199 = alloca %"compiler/source:Span"
  %l202 = alloca ptr
  %l203 = alloca { i64, ptr }
  %l204 = alloca i64
  %l211 = alloca ptr
  %l215 = alloca { i64, ptr }
  %l219 = alloca ptr
  %l222 = alloca ptr
  %l226 = alloca i64
  %l227 = alloca ptr
  %l228 = alloca ptr
  %l231 = alloca %"compiler/source:Span"
  %l232 = alloca ptr
  %l233 = alloca %"compiler/source:Span"
  %l234 = alloca ptr
  %l235 = alloca { i64, ptr }
  %l236 = alloca ptr
  %l237 = alloca { i64, ptr }
  %l239 = alloca %"compiler/source:Span"
  %l240 = alloca %"compiler/source:Span"
  %l241 = alloca i32
  %l245 = alloca { i64, ptr }
  %l246 = alloca %"compiler/typed:Seq"
  %l251 = alloca i1
  %l252 = alloca i1
  %l254 = alloca i1
  %l255 = alloca i1
  %l258 = alloca i32
  %l262 = alloca i1
  %l263 = alloca i64
  %l268 = alloca ptr
  %l269 = alloca %"compiler/source:Span"
  %l270 = alloca i64
  %l273 = alloca { i64, ptr }
  %l276 = alloca %"compiler/diagmsg:Msg"
  %l277 = alloca i64
  %l282 = alloca ptr
  %l285 = alloca ptr
  %l289 = alloca %"compiler/source:Span"
  %l292 = alloca i32
  %l293 = alloca ptr
  %l294 = alloca ptr
  %l295 = alloca i32
  %l297 = alloca %"compiler/source:Span"
  %l298 = alloca i32
  %l301 = alloca ptr
  %l303 = alloca i32
  %l304 = alloca { i64, ptr }
  %l306 = alloca i32
  %l308 = alloca i1
  %l309 = alloca ptr
  %l310 = alloca %"compiler/source:Span"
  %l314 = alloca { i64, ptr }
  %l317 = alloca { i64, ptr }
  %l321 = alloca ptr
  %l323 = alloca ptr
  %l324 = alloca %"compiler/source:Span"
  %l330 = alloca ptr
  %l335 = alloca ptr
  %l340 = alloca ptr
  %l343 = alloca i1
  %l344 = alloca i1
  %l347 = alloca i1
  %l348 = alloca ptr
  %l349 = alloca %"compiler/source:Span"
  %l350 = alloca %"compiler/diagmsg:Msg"
  %l351 = alloca i64
  %l356 = alloca ptr
  %l359 = alloca i32
  %l367 = alloca i1
  %l369 = alloca ptr
  %l370 = alloca %"compiler/source:Span"
  %l371 = alloca { i64, ptr }
  %l374 = alloca { i64, ptr }
  %l376 = alloca %"compiler/diagmsg:Msg"
  %l377 = alloca i64
  %l382 = alloca ptr
  %l386 = alloca i1
  %l391 = alloca i64
  %l394 = alloca ptr
  %l395 = alloca %"compiler/source:Span"
  %l398 = alloca { i64, ptr }
  %l399 = alloca { i64, ptr }
  %l404 = alloca i64
  %l405 = alloca %"compiler/diagmsg:Msg"
  %l406 = alloca i64
  %l411 = alloca ptr
  %l415 = alloca i1
  %l419 = alloca i64
  %l424 = alloca ptr
  %l425 = alloca %"compiler/source:Span"
  %l426 = alloca i64
  %l429 = alloca { i64, ptr }
  %l432 = alloca %"compiler/diagmsg:Msg"
  %l433 = alloca i64
  %l438 = alloca ptr
  %l443 = alloca ptr
  %l446 = alloca ptr
  %l447 = alloca %"compiler/source:Span"
  %l450 = alloca i32
  %l453 = alloca i32
  %l456 = alloca ptr
  %l458 = alloca ptr
  %l459 = alloca { i64, ptr }
  %l461 = alloca ptr
  %l463 = alloca i32
  %l464 = alloca ptr
  %l467 = alloca i32
  %l473 = alloca ptr
  %l477 = alloca i1
  %l479 = alloca ptr
  %l480 = alloca { i64, ptr }
  %l482 = alloca %"compiler/source:Span"
  %l485 = alloca { i64, ptr }
  %l487 = alloca %"compiler/diagmsg:Msg"
  %l488 = alloca i64
  %l491 = alloca ptr
  %l495 = alloca i32
  %l497 = alloca i32
  %l499 = alloca ptr
  %l500 = alloca { i64, ptr }
  %l502 = alloca %"compiler/source:Span"
  %l504 = alloca i32
  %l507 = alloca ptr
  %l515 = alloca ptr
  %l518 = alloca i32
  %l522 = alloca i1
  %l527 = alloca i1
  %l528 = alloca i1
  %l530 = alloca ptr
  %l532 = alloca ptr
  %l535 = alloca i1
  %l539 = alloca ptr
  %l540 = alloca %"compiler/source:Span"
  %l543 = alloca %"compiler/diagmsg:Msg"
  %l544 = alloca i64
  %l549 = alloca ptr
  %l553 = alloca i32
  %l555 = alloca i32
  %l557 = alloca ptr
  %l558 = alloca %"compiler/source:Span"
  %l559 = alloca i32
  %l560 = alloca i32
  %l564 = alloca ptr
  %l566 = alloca { i64, ptr }
  %l569 = alloca ptr
  %l571 = alloca ptr
  %l574 = alloca i1
  %l575 = alloca i1
  %l579 = alloca i1
  %l582 = alloca i32
  %l585 = alloca i1
  %l587 = alloca ptr
  %l589 = alloca ptr
  %l592 = alloca i1
  %l596 = alloca ptr
  %l598 = alloca ptr
  %l601 = alloca ptr
  %l603 = alloca ptr
  %l604 = alloca %"compiler/source:Span"
  %l605 = alloca i32
  %l606 = alloca i32
  %l610 = alloca ptr
  %l611 = alloca ptr
  %l614 = alloca i1
  %l615 = alloca i1
  %l619 = alloca i1
  %l620 = alloca ptr
  %l623 = alloca i32
  %l624 = alloca i1
  %l625 = alloca i1
  %l628 = alloca i32
  %l631 = alloca i1
  %l633 = alloca ptr
  %l635 = alloca ptr
  %l638 = alloca i1
  %l640 = alloca ptr
  %l644 = alloca ptr
  %l647 = alloca i32
  %l648 = alloca i32
  %l653 = alloca i32
  %l656 = alloca i64
  %l657 = alloca ptr
  %l658 = alloca %"compiler/source:Span"
  %l661 = alloca i32
  %l662 = alloca i64
  %l663 = alloca ptr
  %l664 = alloca %"compiler/source:Span"
  %l667 = alloca i32
  %l671 = alloca ptr
  %l674 = alloca ptr
  %l675 = alloca %"compiler/source:Span"
  %l677 = alloca i32
  %l678 = alloca i64
  %l679 = alloca ptr
  %l680 = alloca %"compiler/source:Span"
  %l683 = alloca i32
  %l684 = alloca ptr
  %l685 = alloca ptr
  %l686 = alloca { i64, ptr }
  %l687 = alloca ptr
  %l689 = alloca i32
  %l690 = alloca ptr
  %l691 = alloca { i64, ptr }
  %l693 = alloca %"compiler/source:Span"
  %l694 = alloca ptr
  %l699 = alloca i64
  %l703 = alloca { i64, i64, i64 }
  %l707 = alloca ptr
  %l708 = alloca %"compiler/source:Span"
  %l709 = alloca ptr
  %l710 = alloca %"compiler/source:Span"
  %l712 = alloca i32
  %l713 = alloca i32
  %l717 = alloca ptr
  %l718 = alloca ptr
  %l719 = alloca { i64, i64, i64, i64, i64 }
  %l725 = alloca %"compiler/source:Span"
  %l726 = alloca i32
  %l730 = alloca ptr
  %l733 = alloca %"compiler/source:Span"
  %l734 = alloca i32
  %l735 = alloca ptr
  %l739 = alloca ptr
  %l741 = alloca %"compiler/typed:Elem"
  %l767 = alloca ptr
  %l768 = alloca %"compiler/source:Span"
  %l769 = alloca i32
  %l773 = alloca ptr
  %l774 = alloca ptr
  %l775 = alloca ptr
  %l779 = alloca i32
  %l781 = alloca %"compiler/typed:Collect"
  %l784 = alloca %"compiler/source:Span"
  %l785 = alloca i32
  %l789 = alloca { i64, ptr }
  %l791 = alloca %"compiler/typed:Seq"
  %l796 = alloca i1
  %l797 = alloca i1
  %l801 = alloca i1
  %l803 = alloca ptr
  %l805 = alloca ptr
  %l808 = alloca i1
  %l810 = alloca ptr
  %l813 = alloca i1
  %l816 = alloca i1
  %l818 = alloca ptr
  %l821 = alloca %"compiler/source:Span"
  %l822 = alloca %"compiler/diagmsg:Msg"
  %l823 = alloca i64
  %l826 = alloca ptr
  %l830 = alloca %"compiler/source:Span"
  %l832 = alloca i32
  %l837 = alloca i1
  %l838 = alloca i1
  %l842 = alloca i1
  %l844 = alloca ptr
  %l846 = alloca ptr
  %l849 = alloca i1
  %l851 = alloca ptr
  %l854 = alloca i1
  %l857 = alloca i1
  %l859 = alloca ptr
  %l862 = alloca %"compiler/source:Span"
  %l863 = alloca %"compiler/diagmsg:Msg"
  %l864 = alloca i64
  %l867 = alloca ptr
  %l871 = alloca i64
  %l872 = alloca ptr
  %l873 = alloca %"compiler/source:Span"
  %l874 = alloca ptr
  %l875 = alloca { i64, ptr }
  %l876 = alloca ptr
  %l877 = alloca { i64, ptr }
  %l879 = alloca %"compiler/source:Span"
  %l880 = alloca %"compiler/source:Span"
  %l881 = alloca i32
  %l885 = alloca { i64, ptr }
  %l886 = alloca %"compiler/typed:Seq"
  %l891 = alloca i1
  %l894 = alloca i1
  %l897 = alloca i1
  %l900 = alloca i1
  %l903 = alloca i1
  %l906 = alloca i1
  %l913 = alloca i1
  %l915 = alloca ptr
  %l916 = alloca %"compiler/source:Span"
  %l919 = alloca { i64, ptr }
  %l921 = alloca %"compiler/diagmsg:Msg"
  %l922 = alloca i64
  %l925 = alloca ptr
  %l929 = alloca ptr
  %l930 = alloca %"compiler/source:Span"
  %l933 = alloca { i64, ptr }
  %l935 = alloca %"compiler/diagmsg:Msg"
  %l936 = alloca i64
  %l939 = alloca ptr
  %l942 = alloca ptr
  %l945 = alloca ptr
  %l948 = alloca %"compiler/source:Span"
  %l949 = alloca %"compiler/diagmsg:Msg"
  %l950 = alloca i64
  %l953 = alloca ptr
  %l955 = alloca ptr
  %l956 = alloca ptr
  %l959 = alloca %"compiler/source:Span"
  %l960 = alloca i1
  %l963 = alloca ptr
  %l973 = alloca i1
  %l976 = alloca i1
  %l978 = alloca ptr
  %l981 = alloca %"compiler/source:Span"
  %l982 = alloca %"compiler/diagmsg:Msg"
  %l983 = alloca i64
  %l986 = alloca ptr
  %l992 = alloca ptr
  %l993 = alloca %"compiler/source:Span"
  %l994 = alloca i64
  %l997 = alloca { i64, ptr }
  %l1000 = alloca %"compiler/diagmsg:Msg"
  %l1001 = alloca i64
  %l1004 = alloca ptr
  %l1008 = alloca i64
  %l1010 = alloca ptr
  %l1011 = alloca %"compiler/source:Span"
  %l1017 = alloca i32
  %l1028 = alloca { i64, ptr }
  %l1032 = alloca ptr
  %l1036 = alloca ptr
  %l1041 = alloca i32
  %l1044 = alloca %"compiler/source:Span"
  %l1045 = alloca i32
  %l1046 = alloca i32
  %l1047 = alloca i32
  %l1051 = alloca { i64, ptr }
  %l1055 = alloca i1
  %l1056 = alloca i1
  %l1062 = alloca i32
  %l1064 = alloca ptr
  %l1067 = alloca i32
  %l1068 = alloca i1
  %l1069 = alloca ptr
  %l1070 = alloca %"compiler/source:Span"
  %l1071 = alloca ptr
  %l1074 = alloca i32
  %l1075 = alloca { i64, ptr }
  %l1077 = alloca %"compiler/diagmsg:Msg"
  %l1078 = alloca i64
  %l1081 = alloca ptr
  %l1084 = alloca ptr
  %l1087 = alloca i32
  %l1088 = alloca i1
  %l1089 = alloca i1
  %l1092 = alloca i1
  %l1093 = alloca ptr
  %l1094 = alloca %"compiler/source:Span"
  %l1095 = alloca ptr
  %l1098 = alloca i32
  %l1099 = alloca { i64, ptr }
  %l1101 = alloca %"compiler/diagmsg:Msg"
  %l1102 = alloca i64
  %l1105 = alloca ptr
  %l1109 = alloca i1
  %l1110 = alloca ptr
  %l1111 = alloca ptr
  %l1112 = alloca %"compiler/source:Span"
  %l1113 = alloca %"compiler/source:Span"
  %l1118 = alloca i32
  %l1122 = alloca ptr
  %l1125 = alloca i1
  %l1129 = alloca ptr
  %l1132 = alloca i32
  %l1134 = alloca %"compiler/source:Span"
  %l1137 = alloca i64
  %l1141 = alloca %"compiler/source:Span"
  %l1144 = alloca i32
  %l1145 = alloca i32
  %l1149 = alloca { i64, ptr }
  %l1153 = alloca i32
  %l1155 = alloca %"compiler/typed:Make"
  %l1160 = alloca i1
  %l1161 = alloca i1
  %l1169 = alloca ptr
  %l1170 = alloca %"compiler/source:Span"
  %l1171 = alloca ptr
  %l1172 = alloca %"compiler/source:Span"
  %l1174 = alloca i32
  %l1178 = alloca ptr
  %l1179 = alloca ptr
  %l1183 = alloca ptr
  %l1184 = alloca { i64, ptr }
  %l1185 = alloca ptr
  %s0 = alloca %olang.scope
  %s1 = alloca %olang.scope
  %s2 = alloca %olang.scope
  %s4 = alloca %olang.scope
  %s5 = alloca %olang.scope
  %s8 = alloca %olang.scope
  %s9 = alloca %olang.scope
  %s13 = alloca %olang.scope
  %s15 = alloca %olang.scope
  %s16 = alloca %olang.scope
  %s17 = alloca %olang.scope
  %s20 = alloca %olang.scope
  %s23 = alloca %olang.scope
  %s27 = alloca %olang.scope
  %s28 = alloca %olang.scope
  %s29 = alloca %olang.scope
  %s30 = alloca %olang.scope
  %s32 = alloca %olang.scope
  %s34 = alloca %olang.scope
  %s36 = alloca %olang.scope
  %s38 = alloca %olang.scope
  %s40 = alloca %olang.scope
  %s41 = alloca %olang.scope
  %s42 = alloca %olang.scope
  %s45 = alloca %olang.scope
  %s46 = alloca %olang.scope
  %s51 = alloca %olang.scope
  %s52 = alloca %olang.scope
  %s54 = alloca %olang.scope
  %rv = alloca ptr
  %t239 = alloca { i64, [4 x i64] }, align 8
  %t375 = alloca { i64, [5 x i64] }, align 8
  %t474 = alloca { i64, [4 x i64] }, align 8
  %t1231 = alloca { i64, [3 x i64] }, align 8
  %t1286 = alloca { i64, [3 x i64] }, align 8
  %t1371 = alloca { i64, [4 x i64] }, align 8
  %t1400 = alloca { i64, [4 x i64] }, align 8
  %t1422 = alloca { i64, [5 x i64] }, align 8
  %t1434 = alloca { i64, [3 x i64] }, align 8
  %t1496 = alloca { i64, [5 x i64] }, align 8
  %t1524 = alloca { i64, [5 x i64] }, align 8
  %t1608 = alloca { i64, [5 x i64] }, align 8
  %t1722 = alloca { i64, [5 x i64] }, align 8
  %t1984 = alloca { i64, [5 x i64] }, align 8
  %t2056 = alloca { i64, [5 x i64] }, align 8
  %t2206 = alloca { i64, [4 x i64] }, align 8
  %t2281 = alloca { i64, [5 x i64] }, align 8
  %t2325 = alloca { i64, [3 x i64] }, align 8
  store ptr %a0, ptr %l0
  store %"compiler/source:Span" %a1, ptr %l1
  store %"compiler/source:Span" %a2, ptr %l2
  store ptr %a3, ptr %l3
  store ptr %a4, ptr %l4
  store { i64, ptr } %a5, ptr %l5
  store { i64, ptr } %a6, ptr %l6
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1, ptr %l63, !tbaa !29
  %t2 = load ptr, ptr %l4, !tbaa !29
  %t5 = call i32 @compiler_2fcheck_2etypeOf(ptr %v2, ptr %t2)
  store i32 %t5, ptr %l66
  br label %bb1
bb1:
  %t6 = load ptr, ptr %l63, !tbaa !29
  %t7 = load i32, ptr %l66, !tbaa !23
  %t8 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ederef(ptr %v0, ptr %t6, i32 %t7)
  store i32 %t8, ptr %l67
  br label %bb2
bb2:
  %t9 = load i32, ptr %l67, !tbaa !23
  store i32 %t9, ptr %l7, !tbaa !23
  %t10 = load ptr, ptr %l0, !tbaa !29
  %t11 = load i32, ptr %l7, !tbaa !23
  %t14 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunder(ptr %v0, ptr %t10, i32 %t11)
  store i32 %t14, ptr %l70
  br label %bb3
bb3:
  %t15 = load i32, ptr %l70, !tbaa !23
  store i32 %t15, ptr %l8, !tbaa !23
  %t16 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t18 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v3, ptr %s0, { i64, ptr } %t16, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d67, i32 0, i32 1) })
  store i1 %t18, ptr %l72
  br label %bb4
bb4:
  %t19 = load i1, ptr %l72, !tbaa !21
  br i1 %t19, label %bb5, label %bb6
bb5:
  %t20 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t22 = extractvalue { i64, ptr } %t20, 0
  %t24 = icmp sgt i64 %t22, 0
  store i1 %t24, ptr %l73, !tbaa !21
  br label %bb7
bb6:
  store i1 false, ptr %l73, !tbaa !21
  br label %bb7
bb7:
  %t26 = load i1, ptr %l73, !tbaa !21
  br i1 %t26, label %bb8, label %bb9
bb8:
  %t27 = load ptr, ptr %l0, !tbaa !29
  %t29 = getelementptr %"compiler/check:Checker", ptr %t27, i32 0, i32 1
  %t30 = load ptr, ptr %t29, !tbaa !29
  %t32 = getelementptr %"compiler/generic:Program", ptr %t30, i32 0, i32 2
  %t33 = load i32, ptr %l8, !tbaa !23
  %t36 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsFloat(ptr %v0, ptr %t32, i32 %t33)
  store i1 %t36, ptr %l82
  br label %bb10
bb9:
  store i1 false, ptr %l77, !tbaa !21
  br label %bb11
bb10:
  %t37 = load i1, ptr %l82, !tbaa !21
  store i1 %t37, ptr %l77, !tbaa !21
  br label %bb11
bb11:
  %t38 = load i1, ptr %l77, !tbaa !21
  br i1 %t38, label %bb12, label %bb13
bb12:
  store %olang.scope zeroinitializer, ptr %s1
  %t39 = load ptr, ptr %l0, !tbaa !29
  store ptr %t39, ptr %l83, !tbaa !29
  %t40 = load %"compiler/source:Span", ptr %l2
  store %"compiler/source:Span" %t40, ptr %l84
  %t41 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eTakesNoArgs(ptr %s1, ptr %s1, { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d68, i32 0, i32 1) })
  store %"compiler/diagmsg:Msg" %t41, ptr %l85
  br label %bb14
bb13:
  br label %bb18
bb14:
  %t42 = load ptr, ptr %l83, !tbaa !29
  %t43 = load %"compiler/source:Span", ptr %l84
  %t44 = load %"compiler/diagmsg:Msg", ptr %l85
  %t45 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %s1, ptr %t42, %"compiler/source:Span" %t43, %"compiler/diagmsg:Msg" %t44)
  store i64 %t45, ptr %l86
  br label %bb15
bb15:
  %t46 = load ptr, ptr %l0, !tbaa !29
  %t47 = load { i64, ptr }, ptr %l6, !tbaa !27
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2edropArgs(ptr %v0, ptr %v4, ptr %t46, { i64, ptr } %t47)
  br label %bb16
bb16:
  %t50 = load ptr, ptr %l0, !tbaa !29
  %t51 = load %"compiler/source:Span", ptr %l1
  %t54 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunknown(ptr %v0, ptr %v5, ptr %t50, %"compiler/source:Span" %t51)
  store ptr %t54, ptr %l91
  br label %bb17
bb17:
  %t55 = load ptr, ptr %l91, !tbaa !29
  call void @__olang_scope_close(ptr %s1)
  call void @__olang_scope_close(ptr %s0)
  store ptr %t55, ptr %rv
  br label %ret
bb18:
  %t57 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t59 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v3, ptr %s0, { i64, ptr } %t57, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d69, i32 0, i32 1) })
  store i1 %t59, ptr %l94
  br label %bb19
bb19:
  %t60 = load i1, ptr %l94, !tbaa !21
  br i1 %t60, label %bb20, label %bb21
bb20:
  %t61 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t63 = extractvalue { i64, ptr } %t61, 0
  %t65 = icmp eq i64 %t63, 0
  store i1 %t65, ptr %l95, !tbaa !21
  br label %bb22
bb21:
  store i1 false, ptr %l95, !tbaa !21
  br label %bb22
bb22:
  %t67 = load i1, ptr %l95, !tbaa !21
  br i1 %t67, label %bb23, label %bb24
bb23:
  %t68 = load ptr, ptr %l0, !tbaa !29
  %t70 = getelementptr %"compiler/check:Checker", ptr %t68, i32 0, i32 1
  %t71 = load ptr, ptr %t70, !tbaa !29
  %t73 = getelementptr %"compiler/generic:Program", ptr %t71, i32 0, i32 2
  %t74 = load i32, ptr %l8, !tbaa !23
  %t77 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsFloat(ptr %v0, ptr %t73, i32 %t74)
  store i1 %t77, ptr %l104
  br label %bb25
bb24:
  store i1 false, ptr %l99, !tbaa !21
  br label %bb26
bb25:
  %t78 = load i1, ptr %l104, !tbaa !21
  store i1 %t78, ptr %l99, !tbaa !21
  br label %bb26
bb26:
  %t79 = load i1, ptr %l99, !tbaa !21
  br i1 %t79, label %bb27, label %bb28
bb27:
  store %olang.scope zeroinitializer, ptr %s2
  %t80 = load ptr, ptr %l0, !tbaa !29
  %t82 = getelementptr %"compiler/check:Checker", ptr %t80, i32 0, i32 1
  %t83 = load ptr, ptr %t82, !tbaa !29
  %t85 = getelementptr %"compiler/generic:Program", ptr %t83, i32 0, i32 2
  %t86 = load i32, ptr %l8, !tbaa !23
  %t89 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eBits(ptr %v0, ptr %t85, i32 %t86)
  store i64 %t89, ptr %l109
  br label %bb29
bb28:
  br label %bb41
bb29:
  %t90 = load i64, ptr %l109, !tbaa !24
  store i64 %t90, ptr %l9, !tbaa !24
  %t91 = load i64, ptr %l9, !tbaa !24
  %t93 = icmp eq i64 %t91, 64
  br i1 %t93, label %bb30, label %bb31
bb30:
  %t95 = load ptr, ptr %l0, !tbaa !29
  %t97 = getelementptr %"compiler/check:Checker", ptr %t95, i32 0, i32 1
  %t98 = load ptr, ptr %t97, !tbaa !29
  %t100 = getelementptr %"compiler/generic:Program", ptr %t98, i32 0, i32 2
  %t102 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePrim(ptr %v0, ptr %s2, ptr %t100, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d70, i32 0, i32 1) })
  store i32 %t102, ptr %l116
  br label %bb32
bb31:
  %t103 = load i64, ptr %l9, !tbaa !24
  %t105 = icmp eq i64 %t103, 32
  br i1 %t105, label %bb33, label %bb34
bb32:
  %t107 = load i32, ptr %l116, !tbaa !23
  store i32 %t107, ptr %l112, !tbaa !23
  br label %bb38
bb33:
  %t108 = load ptr, ptr %l0, !tbaa !29
  %t110 = getelementptr %"compiler/check:Checker", ptr %t108, i32 0, i32 1
  %t111 = load ptr, ptr %t110, !tbaa !29
  %t113 = getelementptr %"compiler/generic:Program", ptr %t111, i32 0, i32 2
  %t115 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePrim(ptr %v0, ptr %s2, ptr %t113, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d71, i32 0, i32 1) })
  store i32 %t115, ptr %l123
  br label %bb35
bb34:
  %t116 = load ptr, ptr %l0, !tbaa !29
  %t118 = getelementptr %"compiler/check:Checker", ptr %t116, i32 0, i32 1
  %t119 = load ptr, ptr %t118, !tbaa !29
  %t121 = getelementptr %"compiler/generic:Program", ptr %t119, i32 0, i32 2
  %t123 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePrim(ptr %v0, ptr %s2, ptr %t121, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d72, i32 0, i32 1) })
  store i32 %t123, ptr %l127
  br label %bb36
bb35:
  %t124 = load i32, ptr %l123, !tbaa !23
  store i32 %t124, ptr %l119, !tbaa !23
  br label %bb37
bb36:
  %t125 = load i32, ptr %l127, !tbaa !23
  store i32 %t125, ptr %l119, !tbaa !23
  br label %bb37
bb37:
  %t126 = load i32, ptr %l119, !tbaa !23
  store i32 %t126, ptr %l112, !tbaa !23
  br label %bb38
bb38:
  %t127 = load i32, ptr %l112, !tbaa !23
  %t128 = load ptr, ptr %l0, !tbaa !29
  store ptr %t128, ptr %l128, !tbaa !29
  %t129 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t129, ptr %l129
  store i32 %t127, ptr %l130, !tbaa !23
  store i32 21, ptr %l131
  %t131 = load ptr, ptr %l0, !tbaa !29
  %t132 = load ptr, ptr %l4, !tbaa !29
  %t133 = load %"compiler/source:Span", ptr %l1
  %t137 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2evalue(ptr %v0, ptr %v2, ptr %v2, ptr %t131, ptr %t132, %"compiler/source:Span" %t133)
  store ptr %t137, ptr %l135
  br label %bb39
bb39:
  %t138 = load ptr, ptr %l128, !tbaa !29
  %t139 = load %"compiler/source:Span", ptr %l129
  %t140 = load i32, ptr %l130, !tbaa !23
  %t141 = load i32, ptr %l131, !range !{i32 0, i32 52}
  %t142 = load ptr, ptr %l135, !tbaa !29
  %t143 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eprim(ptr %v0, ptr %v2, ptr %v0, ptr %v5, ptr %t138, %"compiler/source:Span" %t139, i32 %t140, i32 %t141, ptr %t142, ptr null)
  store ptr %t143, ptr %l136
  br label %bb40
bb40:
  %t144 = load ptr, ptr %l136, !tbaa !29
  call void @__olang_scope_close(ptr %s2)
  call void @__olang_scope_close(ptr %s0)
  store ptr %t144, ptr %rv
  br label %ret
bb41:
  %t146 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t148 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v3, ptr %s0, { i64, ptr } %t146, { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d73, i32 0, i32 1) })
  store i1 %t148, ptr %l139
  br label %bb42
bb42:
  %t149 = load i1, ptr %l139, !tbaa !21
  br i1 %t149, label %bb43, label %bb44
bb43:
  %t150 = load ptr, ptr %l0, !tbaa !29
  %t151 = load i32, ptr %l7, !tbaa !23
  %t154 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisEnum(ptr %v0, ptr %t150, i32 %t151)
  store i1 %t154, ptr %l143
  br label %bb45
bb44:
  store i1 false, ptr %l140, !tbaa !21
  br label %bb46
bb45:
  %t155 = load i1, ptr %l143, !tbaa !21
  store i1 %t155, ptr %l140, !tbaa !21
  br label %bb46
bb46:
  %t156 = load i1, ptr %l140, !tbaa !21
  br i1 %t156, label %bb47, label %bb48
bb47:
  %t157 = load ptr, ptr %l0, !tbaa !29
  %t158 = load %"compiler/source:Span", ptr %l1
  %t159 = load %"compiler/source:Span", ptr %l2
  %t160 = load i32, ptr %l7, !tbaa !23
  %t161 = load ptr, ptr %l4, !tbaa !29
  %t162 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t169 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2erawValue(ptr %v0, ptr %v2, ptr %v4, ptr %v5, ptr %t157, %"compiler/source:Span" %t158, %"compiler/source:Span" %t159, i32 %t160, ptr %t161, { i64, ptr } %t162)
  store ptr %t169, ptr %l150
  br label %bb49
bb48:
  br label %bb50
bb49:
  %t170 = load ptr, ptr %l150, !tbaa !29
  call void @__olang_scope_close(ptr %s0)
  store ptr %t170, ptr %rv
  br label %ret
bb50:
  %t172 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t174 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v3, ptr %s0, { i64, ptr } %t172, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d74, i32 0, i32 1) })
  store i1 %t174, ptr %l153
  br label %bb51
bb51:
  %t175 = load i1, ptr %l153, !tbaa !21
  br i1 %t175, label %bb52, label %bb53
bb52:
  %t176 = load ptr, ptr %l0, !tbaa !29
  %t177 = load i32, ptr %l7, !tbaa !23
  %t180 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2earrayOf(ptr %v0, ptr %t176, i32 %t177)
  store i32 %t180, ptr %l157
  br label %bb54
bb53:
  store i1 false, ptr %l154, !tbaa !21
  br label %bb55
bb54:
  %t181 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t182 = load i32, ptr %l157, !tbaa !23
  %t184 = icmp ne i32 %t182, %t181
  store i1 %t184, ptr %l154, !tbaa !21
  br label %bb55
bb55:
  %t186 = load i1, ptr %l154, !tbaa !21
  br i1 %t186, label %bb56, label %bb57
bb56:
  store %olang.scope zeroinitializer, ptr %s4
  %t187 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t189 = extractvalue { i64, ptr } %t187, 0
  %t191 = icmp ne i64 %t189, 2
  br i1 %t191, label %bb58, label %bb59
bb57:
  br label %bb97
bb58:
  store %olang.scope zeroinitializer, ptr %s5
  %t193 = load ptr, ptr %l0, !tbaa !29
  store ptr %t193, ptr %l163, !tbaa !29
  %t194 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t194, ptr %l164
  %t195 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t197 = extractvalue { i64, ptr } %t195, 0
  %t199 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eArgCount(ptr %s5, ptr %s5, i64 2, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d75, i32 0, i32 1) }, i64 %t197)
  store %"compiler/diagmsg:Msg" %t199, ptr %l167
  br label %bb60
bb59:
  br label %bb64
bb60:
  %t200 = load ptr, ptr %l163, !tbaa !29
  %t201 = load %"compiler/source:Span", ptr %l164
  %t202 = load %"compiler/diagmsg:Msg", ptr %l167
  %t203 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %s5, ptr %t200, %"compiler/source:Span" %t201, %"compiler/diagmsg:Msg" %t202)
  store i64 %t203, ptr %l168
  br label %bb61
bb61:
  %t204 = load ptr, ptr %l0, !tbaa !29
  %t205 = load { i64, ptr }, ptr %l6, !tbaa !27
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2edropArgs(ptr %v0, ptr %v4, ptr %t204, { i64, ptr } %t205)
  br label %bb62
bb62:
  %t208 = load ptr, ptr %l0, !tbaa !29
  %t209 = load %"compiler/source:Span", ptr %l1
  %t212 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunknown(ptr %v0, ptr %v5, ptr %t208, %"compiler/source:Span" %t209)
  store ptr %t212, ptr %l173
  br label %bb63
bb63:
  %t213 = load ptr, ptr %l173, !tbaa !29
  call void @__olang_scope_close(ptr %s5)
  call void @__olang_scope_close(ptr %s4)
  call void @__olang_scope_close(ptr %s0)
  store ptr %t213, ptr %rv
  br label %ret
bb64:
  %t215 = load ptr, ptr %l4, !tbaa !29
  %t217 = call ptr @compiler_2fcheck_2ereadPlace(ptr %v2, ptr %v5, ptr %t215)
  store ptr %t217, ptr %l176
  br label %bb65
bb65:
  %t218 = load ptr, ptr %l176, !tbaa !29
  store ptr %t218, ptr %l11, !tbaa !29
  %t219 = load ptr, ptr %l11, !tbaa !29
  %t221 = icmp eq ptr %t219, null
  br i1 %t221, label %bb66, label %bb67
bb66:
  %t223 = load ptr, ptr %l3, !tbaa !29
  %t225 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v1, ptr %t223)
  store %"compiler/source:Span" %t225, ptr %l180
  br label %bb68
bb67:
  br label %bb72
bb68:
  %t226 = load ptr, ptr %l4, !tbaa !29
  %t229 = call i32 @compiler_2fcheck_2etypeOf(ptr %v2, ptr %t226)
  store i32 %t229, ptr %l183
  br label %bb69
bb69:
  %t230 = load ptr, ptr %l4, !tbaa !29
  store ptr %t230, ptr %l184, !tbaa !29
  %t231 = load ptr, ptr %l0, !tbaa !29
  store ptr %t231, ptr %l185, !tbaa !29
  store i32 8, ptr %l186
  %t232 = load ptr, ptr %l3, !tbaa !29
  %t234 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v1, ptr %t232)
  store %"compiler/source:Span" %t234, ptr %l188
  br label %bb70
bb70:
  %t235 = load ptr, ptr %l185, !tbaa !29
  %t236 = load i32, ptr %l186, !range !{i32 0, i32 9}
  %t237 = load %"compiler/source:Span", ptr %l188
  %t238 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esite(ptr %v0, ptr %t235, i32 %t236, %"compiler/source:Span" %t237)
  store i32 %t238, ptr %l189
  br label %bb71
bb71:
  store { i64, [4 x i64] } zeroinitializer, ptr %t239
  %t240 = getelementptr { i64, [4 x i64] }, ptr %t239, i32 0, i32 0
  store i64 6, ptr %t240
  %t241 = load %"compiler/source:Span", ptr %l180
  %t242 = insertvalue { %"compiler/source:Span", i32, ptr, i32 } undef, %"compiler/source:Span" %t241, 0
  %t243 = load i32, ptr %l183, !tbaa !23
  %t244 = insertvalue { %"compiler/source:Span", i32, ptr, i32 } %t242, i32 %t243, 1
  %t245 = load ptr, ptr %l184, !tbaa !29
  %t246 = insertvalue { %"compiler/source:Span", i32, ptr, i32 } %t244, ptr %t245, 2
  %t247 = load i32, ptr %l189, !tbaa !23
  %t248 = insertvalue { %"compiler/source:Span", i32, ptr, i32 } %t246, i32 %t247, 3
  %t249 = getelementptr { i64, [4 x i64] }, ptr %t239, i32 0, i32 1
  store { %"compiler/source:Span", i32, ptr, i32 } %t248, ptr %t249
  %t250 = load { i64, [4 x i64] }, ptr %t239
  %t252 = call ptr @__olang_scope_alloc_a(ptr %v5, i64 40, i64 8)
  store { i64, [4 x i64] } %t250, ptr %t252
  store ptr %t252, ptr %l11, !tbaa !29
  br label %bb72
bb72:
  %t254 = load ptr, ptr %l0, !tbaa !29
  store ptr %t254, ptr %l192, !tbaa !29
  %t255 = load ptr, ptr %l0, !tbaa !29
  %t257 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eoutOfRange(ptr %v0, ptr %t255)
  store i32 %t257, ptr %l194
  br label %bb73
bb73:
  %t258 = mul i64 1, 4
  %t259 = call ptr @__olang_scope_alloc_zeroed(ptr %s4, i64 %t258)
  %t260 = insertvalue { i64, ptr } undef, i64 1, 0
  %t261 = insertvalue { i64, ptr } %t260, ptr %t259, 1
  store { i64, ptr } %t261, ptr %l195, !tbaa !27
  %t262 = load i32, ptr %l194, !tbaa !23
  %t263 = getelementptr { i64, ptr }, ptr %l195, i32 0, i32 1
  %t264 = load ptr, ptr %t263, !tbaa !27
  %t265 = getelementptr i32, ptr %t264, i64 0
  store i32 %t262, ptr %t265, !tbaa !33
  %t266 = load %"compiler/source:Span", ptr %l2
  %t267 = load ptr, ptr %l192, !tbaa !29
  %t268 = load { i64, ptr }, ptr %l195, !tbaa !27
  %t270 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efailOp(ptr %v0, ptr %s4, ptr %t267, { i64, ptr } %t268, %"compiler/source:Span" %t266, i1 false)
  store i32 %t270, ptr %l197
  br label %bb74
bb74:
  %t271 = load i32, ptr %l197, !range !{i32 0, i32 3}
  store i32 %t271, ptr %l12
  %t272 = load ptr, ptr %l0, !tbaa !29
  store ptr %t272, ptr %l198, !tbaa !29
  %t273 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t273, ptr %l199
  %t274 = load ptr, ptr %l11, !tbaa !29
  %t276 = icmp eq ptr %t274, null
  br i1 %t276, label %bb75, label %bb76
bb75:
  call void @__olang_check_failed(ptr @olang_loc_abac8132a300fc4a_61eef78091b78ca6)
  unreachable
bb76:
  br label %bb77
bb77:
  %t278 = load ptr, ptr %l11, !tbaa !29
  store ptr %t278, ptr %l202, !tbaa !29
  %t279 = load { i64, ptr }, ptr %l6, !tbaa !27
  store { i64, ptr } %t279, ptr %l203, !tbaa !27
  %t280 = load { i64, ptr }, ptr %l203, !tbaa !27
  %t281 = extractvalue { i64, ptr } %t280, 0
  store i64 %t281, ptr %l204, !tbaa !24
  %t282 = icmp sge i64 0, 0
  br i1 %t282, label %bb78, label %bb79
bb78:
  %t284 = icmp sle i64 0, 1
  br i1 %t284, label %bb80, label %bb81
bb79:
  call void @__olang_check_failed(ptr @olang_loc_740060cd3c65d53f_5a6edac2e2ccbc3b)
  unreachable
bb80:
  %t286 = load i64, ptr %l204, !tbaa !24
  %t287 = icmp sle i64 1, %t286
  br i1 %t287, label %bb82, label %bb83
bb81:
  call void @__olang_check_failed(ptr @olang_loc_740060cd3c65d53f_5a6edac2e2ccbc3b)
  unreachable
bb82:
  %t289 = getelementptr { i64, ptr }, ptr %l203, i32 0, i32 1
  %t290 = load ptr, ptr %t289, !tbaa !27
  %t291 = getelementptr ptr, ptr %t290, i64 0
  %t293 = insertvalue { i64, ptr } undef, i64 1, 0
  %t294 = insertvalue { i64, ptr } %t293, ptr %t291, 1
  %t295 = load i32, ptr %l12, !range !{i32 0, i32 3}
  %t296 = load ptr, ptr %l198, !tbaa !29
  %t297 = load %"compiler/source:Span", ptr %l199
  %t298 = load ptr, ptr %l202, !tbaa !29
  %t301 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eelemPlace(ptr %v0, ptr %v5, ptr %v4, ptr %v5, ptr %t296, %"compiler/source:Span" %t297, ptr %t298, { i64, ptr } %t294, i32 %t295)
  store ptr %t301, ptr %l211
  br label %bb84
bb83:
  call void @__olang_check_failed(ptr @olang_loc_740060cd3c65d53f_5a6edac2e2ccbc3b)
  unreachable
bb84:
  %t302 = load ptr, ptr %l211, !tbaa !29
  store ptr %t302, ptr %l13, !tbaa !29
  %t303 = load ptr, ptr %l13, !tbaa !29
  %t305 = icmp eq ptr %t303, null
  br i1 %t305, label %bb85, label %bb86
bb85:
  %t307 = load ptr, ptr %l0, !tbaa !29
  %t308 = load { i64, ptr }, ptr %l6, !tbaa !27
  store { i64, ptr } %t308, ptr %l215, !tbaa !27
  %t309 = getelementptr { i64, ptr }, ptr %l215, i32 0, i32 1
  %t310 = load ptr, ptr %t309, !tbaa !27
  %t311 = getelementptr ptr, ptr %t310, i64 1
  %t312 = load ptr, ptr %t311, !tbaa !39
  %t314 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t318 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eexpr(ptr %v0, ptr %v4, ptr %v0, ptr %t307, ptr %t312, i32 %t314)
  store ptr %t318, ptr %l219
  br label %bb87
bb86:
  br label %bb89
bb87:
  %t319 = load ptr, ptr %l0, !tbaa !29
  %t320 = load %"compiler/source:Span", ptr %l1
  %t323 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunknown(ptr %v0, ptr %v5, ptr %t319, %"compiler/source:Span" %t320)
  store ptr %t323, ptr %l222
  br label %bb88
bb88:
  %t324 = load ptr, ptr %l222, !tbaa !29
  call void @__olang_scope_close(ptr %s4)
  call void @__olang_scope_close(ptr %s0)
  store ptr %t324, ptr %rv
  br label %ret
bb89:
  %t326 = load ptr, ptr %l0, !tbaa !29
  %t328 = getelementptr %"compiler/check:Checker", ptr %t326, i32 0, i32 37
  %t330 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aStmt_26_3e_2eLen_3ccompiler_2ftyped_3aStmt_26_3e(ptr %v0, ptr %t328)
  store i64 %t330, ptr %l226
  br label %bb90
bb90:
  %t331 = load i64, ptr %l226, !tbaa !24
  store i64 %t331, ptr %l14, !tbaa !24
  %t332 = load ptr, ptr %l0, !tbaa !29
  store ptr %t332, ptr %l227, !tbaa !29
  %t333 = load ptr, ptr %l13, !tbaa !29
  store ptr %t333, ptr %l228, !tbaa !29
  %t334 = load ptr, ptr %l0, !tbaa !29
  %t335 = load ptr, ptr %l3, !tbaa !29
  %t338 = call %"compiler/source:Span" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ewriteAt(ptr %v0, ptr %v1, ptr %t334, ptr %t335)
  store %"compiler/source:Span" %t338, ptr %l231
  br label %bb91
bb91:
  %t339 = load ptr, ptr %l227, !tbaa !29
  %t340 = load ptr, ptr %l228, !tbaa !29
  %t341 = load %"compiler/source:Span", ptr %l231
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2enotCapture(ptr %v0, ptr %v5, ptr %t339, ptr %t340, %"compiler/source:Span" %t341)
  br label %bb92
bb92:
  %t342 = load ptr, ptr %l0, !tbaa !29
  store ptr %t342, ptr %l232, !tbaa !29
  %t343 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t343, ptr %l233
  %t344 = load ptr, ptr %l13, !tbaa !29
  store ptr %t344, ptr %l234, !tbaa !29
  %t345 = load { i64, ptr }, ptr %l6, !tbaa !27
  store { i64, ptr } %t345, ptr %l235, !tbaa !27
  %t346 = getelementptr { i64, ptr }, ptr %l235, i32 0, i32 1
  %t347 = load ptr, ptr %t346, !tbaa !27
  %t348 = getelementptr ptr, ptr %t347, i64 1
  %t349 = load ptr, ptr %t348, !tbaa !39
  store ptr %t349, ptr %l236, !tbaa !29
  %t350 = load { i64, ptr }, ptr %l6, !tbaa !27
  store { i64, ptr } %t350, ptr %l237, !tbaa !27
  %t351 = getelementptr { i64, ptr }, ptr %l237, i32 0, i32 1
  %t352 = load ptr, ptr %t351, !tbaa !27
  %t353 = getelementptr ptr, ptr %t352, i64 1
  %t354 = load ptr, ptr %t353, !tbaa !39
  %t356 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v4, ptr %t354)
  store %"compiler/source:Span" %t356, ptr %l239
  br label %bb93
bb93:
  %t357 = load ptr, ptr %l232, !tbaa !29
  %t358 = load %"compiler/source:Span", ptr %l233
  %t359 = load ptr, ptr %l234, !tbaa !29
  %t360 = load ptr, ptr %l236, !tbaa !29
  %t361 = load %"compiler/source:Span", ptr %l239
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2estoreInto(ptr %v0, ptr %v5, ptr %v4, ptr %s4, ptr %t357, %"compiler/source:Span" %t358, ptr %t359, ptr %t360, %"compiler/source:Span" %t361, ptr null, i1 false)
  br label %bb94
bb94:
  %t362 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t362, ptr %l240
  %t363 = load i32, ptr @G_2ecompiler_2ftypes_2eVoidT, !tbaa !23
  store i32 %t363, ptr %l241, !tbaa !23
  %t364 = load ptr, ptr %l0, !tbaa !29
  %t366 = getelementptr %"compiler/check:Checker", ptr %t364, i32 0, i32 37
  %t367 = load i64, ptr %l14, !tbaa !24
  %t370 = call { i64, ptr } @compiler_2fcheck_2egather_3ccompiler_2ftyped_3aStmt_26_3e(ptr %v0, ptr %v0, ptr %t366, i64 %t367)
  store { i64, ptr } %t370, ptr %l245
  br label %bb95
bb95:
  %t371 = load { i64, ptr }, ptr %l245, !tbaa !27
  %t372 = call %"compiler/typed:Seq" @compiler_2ftyped_3aSeq_2ector(ptr %v0, ptr %v5, ptr %v5, { i64, ptr } %t371, ptr null, i1 false)
  store %"compiler/typed:Seq" %t372, ptr %l246
  br label %bb96
bb96:
  %t373 = load %"compiler/typed:Seq", ptr %l246
  %t374 = call ptr @__olang_scope_alloc_a(ptr %v5, i64 32, i64 8)
  store %"compiler/typed:Seq" %t373, ptr %t374
  store { i64, [5 x i64] } zeroinitializer, ptr %t375
  %t376 = getelementptr { i64, [5 x i64] }, ptr %t375, i32 0, i32 0
  store i64 12, ptr %t376
  %t377 = load %"compiler/source:Span", ptr %l240
  %t378 = insertvalue { %"compiler/source:Span", i32, ptr } undef, %"compiler/source:Span" %t377, 0
  %t379 = load i32, ptr %l241, !tbaa !23
  %t380 = insertvalue { %"compiler/source:Span", i32, ptr } %t378, i32 %t379, 1
  %t382 = insertvalue { %"compiler/source:Span", i32, ptr } %t380, ptr %t374, 2
  %t383 = getelementptr { i64, [5 x i64] }, ptr %t375, i32 0, i32 1
  store { %"compiler/source:Span", i32, ptr } %t382, ptr %t383
  %t384 = load { i64, [5 x i64] }, ptr %t375
  %t386 = call ptr @__olang_scope_alloc_a(ptr %v5, i64 48, i64 8)
  store { i64, [5 x i64] } %t384, ptr %t386
  call void @__olang_scope_close(ptr %s4)
  call void @__olang_scope_close(ptr %s0)
  store ptr %t386, ptr %rv
  br label %ret
bb97:
  %t388 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t390 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v3, ptr %s0, { i64, ptr } %t388, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d76, i32 0, i32 1) })
  store i1 %t390, ptr %l251
  br label %bb98
bb98:
  %t391 = load i1, ptr %l251, !tbaa !21
  br i1 %t391, label %bb99, label %bb100
bb99:
  store i1 true, ptr %l252, !tbaa !21
  br label %bb102
bb100:
  %t392 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t394 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v3, ptr %s0, { i64, ptr } %t392, { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d77, i32 0, i32 1) })
  store i1 %t394, ptr %l254
  br label %bb101
bb101:
  %t395 = load i1, ptr %l254, !tbaa !21
  store i1 %t395, ptr %l252, !tbaa !21
  br label %bb102
bb102:
  %t396 = load i1, ptr %l252, !tbaa !21
  br i1 %t396, label %bb103, label %bb104
bb103:
  %t397 = load ptr, ptr %l0, !tbaa !29
  %t398 = load i32, ptr %l7, !tbaa !23
  %t401 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2earrayOf(ptr %v0, ptr %t397, i32 %t398)
  store i32 %t401, ptr %l258
  br label %bb105
bb104:
  store i1 false, ptr %l255, !tbaa !21
  br label %bb106
bb105:
  %t402 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t403 = load i32, ptr %l258, !tbaa !23
  %t405 = icmp ne i32 %t403, %t402
  store i1 %t405, ptr %l255, !tbaa !21
  br label %bb106
bb106:
  %t407 = load i1, ptr %l255, !tbaa !21
  br i1 %t407, label %bb107, label %bb108
bb107:
  store %olang.scope zeroinitializer, ptr %s8
  %t408 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t410 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v3, ptr %s8, { i64, ptr } %t408, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d78, i32 0, i32 1) })
  store i1 %t410, ptr %l262
  br label %bb109
bb108:
  br label %bb150
bb109:
  %t411 = load i1, ptr %l262, !tbaa !21
  br i1 %t411, label %bb110, label %bb111
bb110:
  store i64 1, ptr %l263, !tbaa !24
  br label %bb112
bb111:
  store i64 2, ptr %l263, !tbaa !24
  br label %bb112
bb112:
  %t412 = load i64, ptr %l263, !tbaa !24
  store i64 %t412, ptr %l15, !tbaa !24
  %t413 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t415 = extractvalue { i64, ptr } %t413, 0
  %t416 = load i64, ptr %l15, !tbaa !24
  %t419 = icmp ne i64 %t415, %t416
  br i1 %t419, label %bb113, label %bb114
bb113:
  store %olang.scope zeroinitializer, ptr %s9
  %t421 = load ptr, ptr %l0, !tbaa !29
  store ptr %t421, ptr %l268, !tbaa !29
  %t422 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t422, ptr %l269
  %t423 = load i64, ptr %l15, !tbaa !24
  store i64 %t423, ptr %l270, !tbaa !24
  %t424 = load i64, ptr %l15, !tbaa !24
  %t426 = icmp eq i64 %t424, 1
  br i1 %t426, label %bb115, label %bb116
bb114:
  br label %bb122
bb115:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d79, i32 0, i32 1) }, ptr %l273, !tbaa !27
  br label %bb117
bb116:
  store { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d80, i32 0, i32 1) }, ptr %l273, !tbaa !27
  br label %bb117
bb117:
  %t428 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t430 = extractvalue { i64, ptr } %t428, 0
  %t431 = load i64, ptr %l270, !tbaa !24
  %t432 = load { i64, ptr }, ptr %l273, !tbaa !27
  %t434 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eArgCount(ptr %s9, ptr %s9, i64 %t431, { i64, ptr } %t432, i64 %t430)
  store %"compiler/diagmsg:Msg" %t434, ptr %l276
  br label %bb118
bb118:
  %t435 = load ptr, ptr %l268, !tbaa !29
  %t436 = load %"compiler/source:Span", ptr %l269
  %t437 = load %"compiler/diagmsg:Msg", ptr %l276
  %t438 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %s9, ptr %t435, %"compiler/source:Span" %t436, %"compiler/diagmsg:Msg" %t437)
  store i64 %t438, ptr %l277
  br label %bb119
bb119:
  %t439 = load ptr, ptr %l0, !tbaa !29
  %t440 = load { i64, ptr }, ptr %l6, !tbaa !27
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2edropArgs(ptr %v0, ptr %v4, ptr %t439, { i64, ptr } %t440)
  br label %bb120
bb120:
  %t443 = load ptr, ptr %l0, !tbaa !29
  %t444 = load %"compiler/source:Span", ptr %l1
  %t447 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunknown(ptr %v0, ptr %v5, ptr %t443, %"compiler/source:Span" %t444)
  store ptr %t447, ptr %l282
  br label %bb121
bb121:
  %t448 = load ptr, ptr %l282, !tbaa !29
  call void @__olang_scope_close(ptr %s9)
  call void @__olang_scope_close(ptr %s8)
  call void @__olang_scope_close(ptr %s0)
  store ptr %t448, ptr %rv
  br label %ret
bb122:
  %t450 = load ptr, ptr %l4, !tbaa !29
  %t452 = call ptr @compiler_2fcheck_2ereadPlace(ptr %v2, ptr %v5, ptr %t450)
  store ptr %t452, ptr %l285
  br label %bb123
bb123:
  %t453 = load ptr, ptr %l285, !tbaa !29
  store ptr %t453, ptr %l16, !tbaa !29
  %t454 = load ptr, ptr %l16, !tbaa !29
  %t456 = icmp eq ptr %t454, null
  br i1 %t456, label %bb124, label %bb125
bb124:
  %t458 = load ptr, ptr %l3, !tbaa !29
  %t460 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v1, ptr %t458)
  store %"compiler/source:Span" %t460, ptr %l289
  br label %bb126
bb125:
  br label %bb130
bb126:
  %t461 = load ptr, ptr %l4, !tbaa !29
  %t464 = call i32 @compiler_2fcheck_2etypeOf(ptr %v2, ptr %t461)
  store i32 %t464, ptr %l292
  br label %bb127
bb127:
  %t465 = load ptr, ptr %l4, !tbaa !29
  store ptr %t465, ptr %l293, !tbaa !29
  %t466 = load ptr, ptr %l0, !tbaa !29
  store ptr %t466, ptr %l294, !tbaa !29
  store i32 8, ptr %l295
  %t467 = load ptr, ptr %l3, !tbaa !29
  %t469 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v1, ptr %t467)
  store %"compiler/source:Span" %t469, ptr %l297
  br label %bb128
bb128:
  %t470 = load ptr, ptr %l294, !tbaa !29
  %t471 = load i32, ptr %l295, !range !{i32 0, i32 9}
  %t472 = load %"compiler/source:Span", ptr %l297
  %t473 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esite(ptr %v0, ptr %t470, i32 %t471, %"compiler/source:Span" %t472)
  store i32 %t473, ptr %l298
  br label %bb129
bb129:
  store { i64, [4 x i64] } zeroinitializer, ptr %t474
  %t475 = getelementptr { i64, [4 x i64] }, ptr %t474, i32 0, i32 0
  store i64 6, ptr %t475
  %t476 = load %"compiler/source:Span", ptr %l289
  %t477 = insertvalue { %"compiler/source:Span", i32, ptr, i32 } undef, %"compiler/source:Span" %t476, 0
  %t478 = load i32, ptr %l292, !tbaa !23
  %t479 = insertvalue { %"compiler/source:Span", i32, ptr, i32 } %t477, i32 %t478, 1
  %t480 = load ptr, ptr %l293, !tbaa !29
  %t481 = insertvalue { %"compiler/source:Span", i32, ptr, i32 } %t479, ptr %t480, 2
  %t482 = load i32, ptr %l298, !tbaa !23
  %t483 = insertvalue { %"compiler/source:Span", i32, ptr, i32 } %t481, i32 %t482, 3
  %t484 = getelementptr { i64, [4 x i64] }, ptr %t474, i32 0, i32 1
  store { %"compiler/source:Span", i32, ptr, i32 } %t483, ptr %t484
  %t485 = load { i64, [4 x i64] }, ptr %t474
  %t487 = call ptr @__olang_scope_alloc_a(ptr %v5, i64 40, i64 8)
  store { i64, [4 x i64] } %t485, ptr %t487
  store ptr %t487, ptr %l16, !tbaa !29
  br label %bb130
bb130:
  %t489 = load ptr, ptr %l0, !tbaa !29
  store ptr %t489, ptr %l301, !tbaa !29
  %t490 = load ptr, ptr %l0, !tbaa !29
  %t492 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eoutOfRange(ptr %v0, ptr %t490)
  store i32 %t492, ptr %l303
  br label %bb131
bb131:
  %t493 = mul i64 1, 4
  %t494 = call ptr @__olang_scope_alloc_zeroed(ptr %s8, i64 %t493)
  %t495 = insertvalue { i64, ptr } undef, i64 1, 0
  %t496 = insertvalue { i64, ptr } %t495, ptr %t494, 1
  store { i64, ptr } %t496, ptr %l304, !tbaa !27
  %t497 = load i32, ptr %l303, !tbaa !23
  %t498 = getelementptr { i64, ptr }, ptr %l304, i32 0, i32 1
  %t499 = load ptr, ptr %t498, !tbaa !27
  %t500 = getelementptr i32, ptr %t499, i64 0
  store i32 %t497, ptr %t500, !tbaa !33
  %t501 = load %"compiler/source:Span", ptr %l2
  %t502 = load ptr, ptr %l301, !tbaa !29
  %t503 = load { i64, ptr }, ptr %l304, !tbaa !27
  %t505 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efailOp(ptr %v0, ptr %s8, ptr %t502, { i64, ptr } %t503, %"compiler/source:Span" %t501, i1 false)
  store i32 %t505, ptr %l306
  br label %bb132
bb132:
  %t506 = load i32, ptr %l306, !range !{i32 0, i32 3}
  store i32 %t506, ptr %l17
  %t507 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t509 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v3, ptr %s8, { i64, ptr } %t507, { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d81, i32 0, i32 1) })
  store i1 %t509, ptr %l308
  br label %bb133
bb133:
  %t510 = load i1, ptr %l308, !tbaa !21
  br i1 %t510, label %bb134, label %bb135
bb134:
  %t511 = load ptr, ptr %l0, !tbaa !29
  store ptr %t511, ptr %l309, !tbaa !29
  %t512 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t512, ptr %l310
  %t513 = load ptr, ptr %l16, !tbaa !29
  %t515 = icmp eq ptr %t513, null
  br i1 %t515, label %bb136, label %bb137
bb135:
  br label %bb140
bb136:
  call void @__olang_check_failed(ptr @olang_loc_2cb8a0e94f65b35c_b9489d26c7426678)
  unreachable
bb137:
  br label %bb138
bb138:
  %t517 = load ptr, ptr %l16, !tbaa !29
  %t518 = load { i64, ptr }, ptr %l6, !tbaa !27
  store { i64, ptr } %t518, ptr %l314, !tbaa !27
  %t519 = getelementptr { i64, ptr }, ptr %l314, i32 0, i32 1
  %t520 = load ptr, ptr %t519, !tbaa !27
  %t521 = getelementptr ptr, ptr %t520, i64 0
  %t522 = load ptr, ptr %t521, !tbaa !39
  %t524 = load { i64, ptr }, ptr %l6, !tbaa !27
  store { i64, ptr } %t524, ptr %l317, !tbaa !27
  %t525 = getelementptr { i64, ptr }, ptr %l317, i32 0, i32 1
  %t526 = load ptr, ptr %t525, !tbaa !27
  %t527 = getelementptr ptr, ptr %t526, i64 1
  %t528 = load ptr, ptr %t527, !tbaa !39
  %t530 = load i32, ptr %l17, !range !{i32 0, i32 3}
  %t531 = load ptr, ptr %l309, !tbaa !29
  %t532 = load %"compiler/source:Span", ptr %l310
  %t537 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esliceOf(ptr %v0, ptr %v5, ptr %v4, ptr %v4, ptr %v5, ptr %t531, %"compiler/source:Span" %t532, ptr %t517, ptr %t522, ptr %t528, i32 %t530)
  store ptr %t537, ptr %l321
  br label %bb139
bb139:
  %t538 = load ptr, ptr %l321, !tbaa !29
  call void @__olang_scope_close(ptr %s8)
  call void @__olang_scope_close(ptr %s0)
  store ptr %t538, ptr %rv
  br label %ret
bb140:
  %t540 = load ptr, ptr %l0, !tbaa !29
  store ptr %t540, ptr %l323, !tbaa !29
  %t541 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t541, ptr %l324
  %t542 = load ptr, ptr %l16, !tbaa !29
  %t544 = icmp eq ptr %t542, null
  br i1 %t544, label %bb141, label %bb142
bb141:
  call void @__olang_check_failed(ptr @olang_loc_56b27b3a434e6e4b_829f47044d523297)
  unreachable
bb142:
  br label %bb143
bb143:
  %t546 = load ptr, ptr %l16, !tbaa !29
  %t547 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t548 = load i32, ptr %l17, !range !{i32 0, i32 3}
  %t549 = load ptr, ptr %l323, !tbaa !29
  %t550 = load %"compiler/source:Span", ptr %l324
  %t554 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eelemPlace(ptr %v0, ptr %v5, ptr %v4, ptr %v5, ptr %t549, %"compiler/source:Span" %t550, ptr %t546, { i64, ptr } %t547, i32 %t548)
  store ptr %t554, ptr %l330
  br label %bb144
bb144:
  %t555 = load ptr, ptr %l330, !tbaa !29
  store ptr %t555, ptr %l18, !tbaa !29
  %t556 = load ptr, ptr %l18, !tbaa !29
  %t558 = icmp eq ptr %t556, null
  br i1 %t558, label %bb145, label %bb146
bb145:
  %t560 = load ptr, ptr %l0, !tbaa !29
  %t561 = load %"compiler/source:Span", ptr %l1
  %t564 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunknown(ptr %v0, ptr %v5, ptr %t560, %"compiler/source:Span" %t561)
  store ptr %t564, ptr %l335
  br label %bb147
bb146:
  br label %bb148
bb147:
  %t565 = load ptr, ptr %l335, !tbaa !29
  call void @__olang_scope_close(ptr %s8)
  call void @__olang_scope_close(ptr %s0)
  store ptr %t565, ptr %rv
  br label %ret
bb148:
  %t567 = load ptr, ptr %l0, !tbaa !29
  %t568 = load %"compiler/source:Span", ptr %l1
  %t569 = load ptr, ptr %l18, !tbaa !29
  %t573 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eread(ptr %v0, ptr %v5, ptr %v5, ptr %t567, %"compiler/source:Span" %t568, ptr %t569)
  store ptr %t573, ptr %l340
  br label %bb149
bb149:
  %t574 = load ptr, ptr %l340, !tbaa !29
  call void @__olang_scope_close(ptr %s8)
  call void @__olang_scope_close(ptr %s0)
  store ptr %t574, ptr %rv
  br label %ret
bb150:
  %t576 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t578 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v3, ptr %s0, { i64, ptr } %t576, { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d82, i32 0, i32 1) })
  store i1 %t578, ptr %l343
  br label %bb151
bb151:
  %t579 = load i1, ptr %l343, !tbaa !21
  br i1 %t579, label %bb152, label %bb153
bb152:
  %t580 = load ptr, ptr %l0, !tbaa !29
  %t581 = load i32, ptr %l7, !tbaa !23
  %t584 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisNumber(ptr %v0, ptr %t580, i32 %t581)
  store i1 %t584, ptr %l347
  br label %bb154
bb153:
  store i1 false, ptr %l344, !tbaa !21
  br label %bb155
bb154:
  %t585 = load i1, ptr %l347, !tbaa !21
  store i1 %t585, ptr %l344, !tbaa !21
  br label %bb155
bb155:
  %t586 = load i1, ptr %l344, !tbaa !21
  br i1 %t586, label %bb156, label %bb157
bb156:
  store %olang.scope zeroinitializer, ptr %s13
  %t587 = load ptr, ptr %l0, !tbaa !29
  store ptr %t587, ptr %l348, !tbaa !29
  %t588 = load %"compiler/source:Span", ptr %l2
  store %"compiler/source:Span" %t588, ptr %l349
  %t589 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eNarrowNeedsType(ptr %s13)
  store %"compiler/diagmsg:Msg" %t589, ptr %l350
  br label %bb158
bb157:
  br label %bb162
bb158:
  %t590 = load ptr, ptr %l348, !tbaa !29
  %t591 = load %"compiler/source:Span", ptr %l349
  %t592 = load %"compiler/diagmsg:Msg", ptr %l350
  %t593 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %s13, ptr %t590, %"compiler/source:Span" %t591, %"compiler/diagmsg:Msg" %t592)
  store i64 %t593, ptr %l351
  br label %bb159
bb159:
  %t594 = load ptr, ptr %l0, !tbaa !29
  %t595 = load { i64, ptr }, ptr %l6, !tbaa !27
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2edropArgs(ptr %v0, ptr %v4, ptr %t594, { i64, ptr } %t595)
  br label %bb160
bb160:
  %t598 = load ptr, ptr %l0, !tbaa !29
  %t599 = load %"compiler/source:Span", ptr %l1
  %t602 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunknown(ptr %v0, ptr %v5, ptr %t598, %"compiler/source:Span" %t599)
  store ptr %t602, ptr %l356
  br label %bb161
bb161:
  %t603 = load ptr, ptr %l356, !tbaa !29
  call void @__olang_scope_close(ptr %s13)
  call void @__olang_scope_close(ptr %s0)
  store ptr %t603, ptr %rv
  br label %ret
bb162:
  %t605 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t607 = call i32 @compiler_2fcheck_2ebitOp(ptr %v3, { i64, ptr } %t605)
  store i32 %t607, ptr %l359
  br label %bb163
bb163:
  %t608 = load i32, ptr %l359, !range !{i32 0, i32 52}
  store i32 %t608, ptr %l19
  %t609 = load i32, ptr %l19, !range !{i32 0, i32 52}
  %t611 = trunc i64 29 to i32
  %t612 = icmp eq i32 %t609, %t611
  %t614 = xor i1 %t612, true
  br i1 %t614, label %bb164, label %bb165
bb164:
  %t616 = load ptr, ptr %l0, !tbaa !29
  %t618 = getelementptr %"compiler/check:Checker", ptr %t616, i32 0, i32 1
  %t619 = load ptr, ptr %t618, !tbaa !29
  %t621 = getelementptr %"compiler/generic:Program", ptr %t619, i32 0, i32 2
  %t622 = load i32, ptr %l8, !tbaa !23
  %t625 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsInt(ptr %v0, ptr %t621, i32 %t622)
  store i1 %t625, ptr %l367
  br label %bb166
bb165:
  br label %bb238
bb166:
  %t626 = load i1, ptr %l367, !tbaa !21
  %t627 = xor i1 %t626, true
  br i1 %t627, label %bb167, label %bb168
bb167:
  store %olang.scope zeroinitializer, ptr %s15
  %t629 = load ptr, ptr %l0, !tbaa !29
  store ptr %t629, ptr %l369, !tbaa !29
  %t630 = load %"compiler/source:Span", ptr %l2
  store %"compiler/source:Span" %t630, ptr %l370
  %t631 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t631, ptr %l371, !tbaa !27
  %t632 = load ptr, ptr %l0, !tbaa !29
  %t633 = load i32, ptr %l7, !tbaa !23
  %t636 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %s15, ptr %t632, i32 %t633)
  store { i64, ptr } %t636, ptr %l374
  br label %bb169
bb168:
  br label %bb174
bb169:
  %t637 = load { i64, ptr }, ptr %l374, !tbaa !27
  %t638 = extractvalue { i64, ptr } %t637, 0
  %t639 = extractvalue { i64, ptr } %t637, 1
  %t640 = mul i64 %t638, 1
  %t641 = call ptr @__olang_scope_alloc(ptr %s15, i64 %t640)
  call void @llvm.memcpy.p0.p0.i64(ptr %t641, ptr %t639, i64 %t640, i1 false)
  %t642 = insertvalue { i64, ptr } undef, i64 %t638, 0
  %t643 = insertvalue { i64, ptr } %t642, ptr %t641, 1
  %t644 = load { i64, ptr }, ptr %l371, !tbaa !27
  %t646 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eBitOpNotInteger(ptr %v3, ptr %s15, ptr %s15, { i64, ptr } %t644, { i64, ptr } %t643)
  store %"compiler/diagmsg:Msg" %t646, ptr %l376
  br label %bb170
bb170:
  %t647 = load ptr, ptr %l369, !tbaa !29
  %t648 = load %"compiler/source:Span", ptr %l370
  %t649 = load %"compiler/diagmsg:Msg", ptr %l376
  %t650 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %s15, ptr %t647, %"compiler/source:Span" %t648, %"compiler/diagmsg:Msg" %t649)
  store i64 %t650, ptr %l377
  br label %bb171
bb171:
  %t651 = load ptr, ptr %l0, !tbaa !29
  %t652 = load { i64, ptr }, ptr %l6, !tbaa !27
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2edropArgs(ptr %v0, ptr %v4, ptr %t651, { i64, ptr } %t652)
  br label %bb172
bb172:
  %t655 = load ptr, ptr %l0, !tbaa !29
  %t656 = load %"compiler/source:Span", ptr %l1
  %t659 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunknown(ptr %v0, ptr %v5, ptr %t655, %"compiler/source:Span" %t656)
  store ptr %t659, ptr %l382
  br label %bb173
bb173:
  %t660 = load ptr, ptr %l382, !tbaa !29
  call void @__olang_scope_close(ptr %s15)
  call void @__olang_scope_close(ptr %s0)
  store ptr %t660, ptr %rv
  br label %ret
bb174:
  %t662 = load i32, ptr %l19, !range !{i32 0, i32 52}
  %t664 = trunc i64 36 to i32
  %t665 = icmp eq i32 %t662, %t664
  br i1 %t665, label %bb175, label %bb176
bb175:
  %t667 = load ptr, ptr %l0, !tbaa !29
  %t669 = getelementptr %"compiler/check:Checker", ptr %t667, i32 0, i32 1
  %t670 = load ptr, ptr %t669, !tbaa !29
  %t672 = getelementptr %"compiler/generic:Program", ptr %t670, i32 0, i32 2
  %t673 = load i32, ptr %l8, !tbaa !23
  %t676 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eBits(ptr %v0, ptr %t672, i32 %t673)
  store i64 %t676, ptr %l391
  br label %bb177
bb176:
  store i1 false, ptr %l386, !tbaa !21
  br label %bb178
bb177:
  %t677 = load i64, ptr %l391, !tbaa !24
  %t678 = srem i64 %t677, 8
  %t680 = icmp ne i64 %t678, 0
  store i1 %t680, ptr %l386, !tbaa !21
  br label %bb178
bb178:
  %t682 = load i1, ptr %l386, !tbaa !21
  br i1 %t682, label %bb179, label %bb180
bb179:
  store %olang.scope zeroinitializer, ptr %s16
  %t683 = load ptr, ptr %l0, !tbaa !29
  store ptr %t683, ptr %l394, !tbaa !29
  %t684 = load %"compiler/source:Span", ptr %l2
  store %"compiler/source:Span" %t684, ptr %l395
  %t685 = load ptr, ptr %l0, !tbaa !29
  %t686 = load i32, ptr %l7, !tbaa !23
  %t689 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %s16, ptr %t685, i32 %t686)
  store { i64, ptr } %t689, ptr %l398
  br label %bb181
bb180:
  br label %bb187
bb181:
  %t690 = load { i64, ptr }, ptr %l398, !tbaa !27
  %t691 = extractvalue { i64, ptr } %t690, 0
  %t692 = extractvalue { i64, ptr } %t690, 1
  %t693 = mul i64 %t691, 1
  %t694 = call ptr @__olang_scope_alloc(ptr %s16, i64 %t693)
  call void @llvm.memcpy.p0.p0.i64(ptr %t694, ptr %t692, i64 %t693, i1 false)
  %t695 = insertvalue { i64, ptr } undef, i64 %t691, 0
  %t696 = insertvalue { i64, ptr } %t695, ptr %t694, 1
  store { i64, ptr } %t696, ptr %l399, !tbaa !27
  %t697 = load ptr, ptr %l0, !tbaa !29
  %t699 = getelementptr %"compiler/check:Checker", ptr %t697, i32 0, i32 1
  %t700 = load ptr, ptr %t699, !tbaa !29
  %t702 = getelementptr %"compiler/generic:Program", ptr %t700, i32 0, i32 2
  %t703 = load i32, ptr %l8, !tbaa !23
  %t706 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eBits(ptr %v0, ptr %t702, i32 %t703)
  store i64 %t706, ptr %l404
  br label %bb182
bb182:
  %t707 = load { i64, ptr }, ptr %l399, !tbaa !27
  %t708 = load i64, ptr %l404, !tbaa !24
  %t709 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eByteSwapWidth(ptr %s16, ptr %s16, { i64, ptr } %t707, i64 %t708)
  store %"compiler/diagmsg:Msg" %t709, ptr %l405
  br label %bb183
bb183:
  %t710 = load ptr, ptr %l394, !tbaa !29
  %t711 = load %"compiler/source:Span", ptr %l395
  %t712 = load %"compiler/diagmsg:Msg", ptr %l405
  %t713 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %s16, ptr %t710, %"compiler/source:Span" %t711, %"compiler/diagmsg:Msg" %t712)
  store i64 %t713, ptr %l406
  br label %bb184
bb184:
  %t714 = load ptr, ptr %l0, !tbaa !29
  %t715 = load { i64, ptr }, ptr %l6, !tbaa !27
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2edropArgs(ptr %v0, ptr %v4, ptr %t714, { i64, ptr } %t715)
  br label %bb185
bb185:
  %t718 = load ptr, ptr %l0, !tbaa !29
  %t719 = load %"compiler/source:Span", ptr %l1
  %t722 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunknown(ptr %v0, ptr %v5, ptr %t718, %"compiler/source:Span" %t719)
  store ptr %t722, ptr %l411
  br label %bb186
bb186:
  %t723 = load ptr, ptr %l411, !tbaa !29
  call void @__olang_scope_close(ptr %s16)
  call void @__olang_scope_close(ptr %s0)
  store ptr %t723, ptr %rv
  br label %ret
bb187:
  %t725 = load i32, ptr %l19, !range !{i32 0, i32 52}
  %t727 = trunc i64 34 to i32
  %t728 = icmp eq i32 %t725, %t727
  br i1 %t728, label %bb188, label %bb189
bb188:
  store i1 true, ptr %l415, !tbaa !21
  br label %bb190
bb189:
  %t730 = load i32, ptr %l19, !range !{i32 0, i32 52}
  %t732 = trunc i64 35 to i32
  %t733 = icmp eq i32 %t730, %t732
  store i1 %t733, ptr %l415, !tbaa !21
  br label %bb190
bb190:
  %t735 = load i1, ptr %l415, !tbaa !21
  store i1 %t735, ptr %l20, !tbaa !21
  %t736 = load i1, ptr %l20, !tbaa !21
  br i1 %t736, label %bb191, label %bb192
bb191:
  store i64 1, ptr %l419, !tbaa !24
  br label %bb193
bb192:
  store i64 0, ptr %l419, !tbaa !24
  br label %bb193
bb193:
  %t738 = load i64, ptr %l419, !tbaa !24
  store i64 %t738, ptr %l21, !tbaa !24
  %t739 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t741 = extractvalue { i64, ptr } %t739, 0
  %t742 = load i64, ptr %l21, !tbaa !24
  %t745 = icmp ne i64 %t741, %t742
  br i1 %t745, label %bb194, label %bb195
bb194:
  store %olang.scope zeroinitializer, ptr %s17
  %t747 = load ptr, ptr %l0, !tbaa !29
  store ptr %t747, ptr %l424, !tbaa !29
  %t748 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t748, ptr %l425
  %t749 = load i64, ptr %l21, !tbaa !24
  store i64 %t749, ptr %l426, !tbaa !24
  %t750 = load i64, ptr %l21, !tbaa !24
  %t752 = icmp eq i64 %t750, 1
  br i1 %t752, label %bb196, label %bb197
bb195:
  br label %bb203
bb196:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d83, i32 0, i32 1) }, ptr %l429, !tbaa !27
  br label %bb198
bb197:
  store { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d84, i32 0, i32 1) }, ptr %l429, !tbaa !27
  br label %bb198
bb198:
  %t754 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t756 = extractvalue { i64, ptr } %t754, 0
  %t757 = load i64, ptr %l426, !tbaa !24
  %t758 = load { i64, ptr }, ptr %l429, !tbaa !27
  %t760 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eArgCount(ptr %s17, ptr %s17, i64 %t757, { i64, ptr } %t758, i64 %t756)
  store %"compiler/diagmsg:Msg" %t760, ptr %l432
  br label %bb199
bb199:
  %t761 = load ptr, ptr %l424, !tbaa !29
  %t762 = load %"compiler/source:Span", ptr %l425
  %t763 = load %"compiler/diagmsg:Msg", ptr %l432
  %t764 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %s17, ptr %t761, %"compiler/source:Span" %t762, %"compiler/diagmsg:Msg" %t763)
  store i64 %t764, ptr %l433
  br label %bb200
bb200:
  %t765 = load ptr, ptr %l0, !tbaa !29
  %t766 = load { i64, ptr }, ptr %l6, !tbaa !27
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2edropArgs(ptr %v0, ptr %v4, ptr %t765, { i64, ptr } %t766)
  br label %bb201
bb201:
  %t769 = load ptr, ptr %l0, !tbaa !29
  %t770 = load %"compiler/source:Span", ptr %l1
  %t773 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunknown(ptr %v0, ptr %v5, ptr %t769, %"compiler/source:Span" %t770)
  store ptr %t773, ptr %l438
  br label %bb202
bb202:
  %t774 = load ptr, ptr %l438, !tbaa !29
  call void @__olang_scope_close(ptr %s17)
  call void @__olang_scope_close(ptr %s0)
  store ptr %t774, ptr %rv
  br label %ret
bb203:
  %t776 = load ptr, ptr %l0, !tbaa !29
  %t777 = load ptr, ptr %l4, !tbaa !29
  %t778 = load %"compiler/source:Span", ptr %l1
  %t782 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2evalue(ptr %v0, ptr %v2, ptr %v5, ptr %t776, ptr %t777, %"compiler/source:Span" %t778)
  store ptr %t782, ptr %l443
  br label %bb204
bb204:
  %t783 = load ptr, ptr %l443, !tbaa !29
  store ptr %t783, ptr %l22, !tbaa !29
  %t784 = load i1, ptr %l20, !tbaa !21
  %t786 = xor i1 %t784, true
  br i1 %t786, label %bb205, label %bb206
bb205:
  %t788 = load ptr, ptr %l0, !tbaa !29
  store ptr %t788, ptr %l446, !tbaa !29
  %t789 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t789, ptr %l447
  %t790 = load i32, ptr %l19, !range !{i32 0, i32 52}
  %t792 = trunc i64 36 to i32
  %t793 = icmp eq i32 %t790, %t792
  br i1 %t793, label %bb207, label %bb208
bb206:
  br label %bb212
bb207:
  %t795 = load i32, ptr %l7, !tbaa !23
  store i32 %t795, ptr %l450, !tbaa !23
  br label %bb210
bb208:
  %t797 = load ptr, ptr %l0, !tbaa !29
  %t799 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ei64(ptr %v0, ptr %t797)
  store i32 %t799, ptr %l453
  br label %bb209
bb209:
  %t800 = load i32, ptr %l453, !tbaa !23
  store i32 %t800, ptr %l450, !tbaa !23
  br label %bb210
bb210:
  %t801 = load i32, ptr %l19, !range !{i32 0, i32 52}
  %t802 = load ptr, ptr %l22, !tbaa !29
  %t803 = load ptr, ptr %l446, !tbaa !29
  %t804 = load %"compiler/source:Span", ptr %l447
  %t805 = load i32, ptr %l450, !tbaa !23
  %t808 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eprim(ptr %v0, ptr %v5, ptr %v0, ptr %v5, ptr %t803, %"compiler/source:Span" %t804, i32 %t805, i32 %t801, ptr %t802, ptr null)
  store ptr %t808, ptr %l456
  br label %bb211
bb211:
  %t809 = load ptr, ptr %l456, !tbaa !29
  call void @__olang_scope_close(ptr %s0)
  store ptr %t809, ptr %rv
  br label %ret
bb212:
  %t811 = load ptr, ptr %l0, !tbaa !29
  store ptr %t811, ptr %l458, !tbaa !29
  %t812 = load { i64, ptr }, ptr %l6, !tbaa !27
  store { i64, ptr } %t812, ptr %l459, !tbaa !27
  %t813 = getelementptr { i64, ptr }, ptr %l459, i32 0, i32 1
  %t814 = load ptr, ptr %t813, !tbaa !27
  %t815 = getelementptr ptr, ptr %t814, i64 0
  %t816 = load ptr, ptr %t815, !tbaa !39
  store ptr %t816, ptr %l461, !tbaa !29
  %t818 = load ptr, ptr %l0, !tbaa !29
  %t820 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ei64(ptr %v0, ptr %t818)
  store i32 %t820, ptr %l463
  br label %bb213
bb213:
  %t821 = load ptr, ptr %l458, !tbaa !29
  %t822 = load ptr, ptr %l461, !tbaa !29
  %t823 = load i32, ptr %l463, !tbaa !23
  %t824 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eexpr(ptr %v0, ptr %v4, ptr %v5, ptr %t821, ptr %t822, i32 %t823)
  store ptr %t824, ptr %l464
  br label %bb214
bb214:
  %t825 = load ptr, ptr %l464, !tbaa !29
  store ptr %t825, ptr %l23, !tbaa !29
  %t826 = load ptr, ptr %l23, !tbaa !29
  %t829 = call i32 @compiler_2fcheck_2etypeOf(ptr %v5, ptr %t826)
  store i32 %t829, ptr %l467
  br label %bb215
bb215:
  %t830 = load i32, ptr %l467, !tbaa !23
  store i32 %t830, ptr %l24, !tbaa !23
  %t831 = load i32, ptr %l24, !tbaa !23
  %t832 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t835 = icmp eq i32 %t831, %t832
  br i1 %t835, label %bb216, label %bb217
bb216:
  %t837 = load ptr, ptr %l0, !tbaa !29
  %t838 = load %"compiler/source:Span", ptr %l1
  %t841 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunknown(ptr %v0, ptr %v5, ptr %t837, %"compiler/source:Span" %t838)
  store ptr %t841, ptr %l473
  br label %bb218
bb217:
  br label %bb219
bb218:
  %t842 = load ptr, ptr %l473, !tbaa !29
  call void @__olang_scope_close(ptr %s0)
  store ptr %t842, ptr %rv
  br label %ret
bb219:
  %t844 = load ptr, ptr %l0, !tbaa !29
  %t845 = load i32, ptr %l24, !tbaa !23
  %t848 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisInt(ptr %v0, ptr %t844, i32 %t845)
  store i1 %t848, ptr %l477
  br label %bb220
bb220:
  %t849 = load i1, ptr %l477, !tbaa !21
  %t850 = xor i1 %t849, true
  br i1 %t850, label %bb221, label %bb222
bb221:
  store %olang.scope zeroinitializer, ptr %s20
  %t852 = load ptr, ptr %l0, !tbaa !29
  store ptr %t852, ptr %l479, !tbaa !29
  %t853 = load { i64, ptr }, ptr %l6, !tbaa !27
  store { i64, ptr } %t853, ptr %l480, !tbaa !27
  %t854 = getelementptr { i64, ptr }, ptr %l480, i32 0, i32 1
  %t855 = load ptr, ptr %t854, !tbaa !27
  %t856 = getelementptr ptr, ptr %t855, i64 0
  %t857 = load ptr, ptr %t856, !tbaa !39
  %t859 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v4, ptr %t857)
  store %"compiler/source:Span" %t859, ptr %l482
  br label %bb223
bb222:
  br label %bb228
bb223:
  %t860 = load ptr, ptr %l0, !tbaa !29
  %t861 = load i32, ptr %l24, !tbaa !23
  %t864 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %s20, ptr %t860, i32 %t861)
  store { i64, ptr } %t864, ptr %l485
  br label %bb224
bb224:
  %t865 = load { i64, ptr }, ptr %l485, !tbaa !27
  %t866 = extractvalue { i64, ptr } %t865, 0
  %t867 = extractvalue { i64, ptr } %t865, 1
  %t868 = mul i64 %t866, 1
  %t869 = call ptr @__olang_scope_alloc(ptr %s20, i64 %t868)
  call void @llvm.memcpy.p0.p0.i64(ptr %t869, ptr %t867, i64 %t868, i1 false)
  %t870 = insertvalue { i64, ptr } undef, i64 %t866, 0
  %t871 = insertvalue { i64, ptr } %t870, ptr %t869, 1
  %t873 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eBitOpCount(ptr %s20, ptr %s20, { i64, ptr } %t871)
  store %"compiler/diagmsg:Msg" %t873, ptr %l487
  br label %bb225
bb225:
  %t874 = load ptr, ptr %l479, !tbaa !29
  %t875 = load %"compiler/source:Span", ptr %l482
  %t876 = load %"compiler/diagmsg:Msg", ptr %l487
  %t877 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %s20, ptr %t874, %"compiler/source:Span" %t875, %"compiler/diagmsg:Msg" %t876)
  store i64 %t877, ptr %l488
  br label %bb226
bb226:
  %t878 = load ptr, ptr %l0, !tbaa !29
  %t879 = load %"compiler/source:Span", ptr %l1
  %t882 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunknown(ptr %v0, ptr %v5, ptr %t878, %"compiler/source:Span" %t879)
  store ptr %t882, ptr %l491
  br label %bb227
bb227:
  %t883 = load ptr, ptr %l491, !tbaa !29
  call void @__olang_scope_close(ptr %s20)
  call void @__olang_scope_close(ptr %s0)
  store ptr %t883, ptr %rv
  br label %ret
bb228:
  %t885 = load ptr, ptr %l0, !tbaa !29
  %t886 = load i32, ptr %l24, !tbaa !23
  %t889 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunder(ptr %v0, ptr %t885, i32 %t886)
  store i32 %t889, ptr %l495
  br label %bb229
bb229:
  %t890 = load ptr, ptr %l0, !tbaa !29
  %t892 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ei64(ptr %v0, ptr %t890)
  store i32 %t892, ptr %l497
  br label %bb230
bb230:
  %t893 = load i32, ptr %l495, !tbaa !23
  %t894 = load i32, ptr %l497, !tbaa !23
  %t895 = icmp ne i32 %t893, %t894
  br i1 %t895, label %bb231, label %bb232
bb231:
  %t897 = load ptr, ptr %l0, !tbaa !29
  store ptr %t897, ptr %l499, !tbaa !29
  %t898 = load { i64, ptr }, ptr %l6, !tbaa !27
  store { i64, ptr } %t898, ptr %l500, !tbaa !27
  %t899 = getelementptr { i64, ptr }, ptr %l500, i32 0, i32 1
  %t900 = load ptr, ptr %t899, !tbaa !27
  %t901 = getelementptr ptr, ptr %t900, i64 0
  %t902 = load ptr, ptr %t901, !tbaa !39
  %t904 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v4, ptr %t902)
  store %"compiler/source:Span" %t904, ptr %l502
  br label %bb233
bb232:
  br label %bb236
bb233:
  %t905 = load ptr, ptr %l0, !tbaa !29
  %t907 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ei64(ptr %v0, ptr %t905)
  store i32 %t907, ptr %l504
  br label %bb234
bb234:
  %t908 = load ptr, ptr %l23, !tbaa !29
  %t909 = load ptr, ptr %l499, !tbaa !29
  %t910 = load %"compiler/source:Span", ptr %l502
  %t911 = load i32, ptr %l504, !tbaa !23
  %t914 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eprim(ptr %v0, ptr %v5, ptr %v0, ptr %v5, ptr %t909, %"compiler/source:Span" %t910, i32 %t911, i32 20, ptr %t908, ptr null)
  store ptr %t914, ptr %l507
  br label %bb235
bb235:
  %t915 = load ptr, ptr %l507, !tbaa !29
  store ptr %t915, ptr %l23, !tbaa !29
  br label %bb236
bb236:
  %t916 = load ptr, ptr %l0, !tbaa !29
  %t917 = load %"compiler/source:Span", ptr %l1
  %t918 = load i32, ptr %l7, !tbaa !23
  %t919 = load i32, ptr %l19, !range !{i32 0, i32 52}
  %t920 = load ptr, ptr %l22, !tbaa !29
  %t921 = load ptr, ptr %l23, !tbaa !29
  %t929 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eprim(ptr %v0, ptr %v5, ptr %v5, ptr %v5, ptr %t916, %"compiler/source:Span" %t917, i32 %t918, i32 %t919, ptr %t920, ptr %t921)
  store ptr %t929, ptr %l515
  br label %bb237
bb237:
  %t930 = load ptr, ptr %l515, !tbaa !29
  call void @__olang_scope_close(ptr %s0)
  store ptr %t930, ptr %rv
  br label %ret
bb238:
  %t932 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t934 = call i32 @compiler_2fcheck_2esatOp(ptr %v3, { i64, ptr } %t932)
  store i32 %t934, ptr %l518
  br label %bb239
bb239:
  %t935 = load i32, ptr %l518, !range !{i32 0, i32 52}
  store i32 %t935, ptr %l25
  %t936 = load i32, ptr %l25, !range !{i32 0, i32 52}
  %t938 = trunc i64 29 to i32
  %t939 = icmp eq i32 %t936, %t938
  %t941 = xor i1 %t939, true
  br i1 %t941, label %bb240, label %bb241
bb240:
  %t943 = load ptr, ptr %l0, !tbaa !29
  %t945 = getelementptr %"compiler/check:Checker", ptr %t943, i32 0, i32 1
  %t946 = load ptr, ptr %t945, !tbaa !29
  %t948 = getelementptr %"compiler/generic:Program", ptr %t946, i32 0, i32 2
  %t949 = load i32, ptr %l8, !tbaa !23
  %t952 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsInt(ptr %v0, ptr %t948, i32 %t949)
  store i1 %t952, ptr %l527
  br label %bb242
bb241:
  store i1 false, ptr %l522, !tbaa !21
  br label %bb243
bb242:
  %t953 = load i1, ptr %l527, !tbaa !21
  store i1 %t953, ptr %l522, !tbaa !21
  br label %bb243
bb243:
  %t954 = load i1, ptr %l522, !tbaa !21
  br i1 %t954, label %bb244, label %bb245
bb244:
  %t955 = load ptr, ptr %l0, !tbaa !29
  %t957 = getelementptr %"compiler/check:Checker", ptr %t955, i32 0, i32 1
  %t958 = load ptr, ptr %t957, !tbaa !29
  store ptr %t958, ptr %l530, !tbaa !29
  %t959 = load ptr, ptr %l0, !tbaa !29
  %t961 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t959)
  store ptr %t961, ptr %l532
  br label %bb246
bb245:
  store i1 false, ptr %l528, !tbaa !21
  br label %bb248
bb246:
  %t962 = load ptr, ptr %l532, !tbaa !29
  %t964 = getelementptr %"compiler/check:frame", ptr %t962, i32 0, i32 1
  %t965 = load i64, ptr %t964, !tbaa !24
  %t966 = load ptr, ptr %l530, !tbaa !29
  %t968 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eLibrary(ptr %v0, ptr %t966, i64 %t965)
  store i1 %t968, ptr %l535
  br label %bb247
bb247:
  %t969 = load i1, ptr %l535, !tbaa !21
  store i1 %t969, ptr %l528, !tbaa !21
  br label %bb248
bb248:
  %t970 = load i1, ptr %l528, !tbaa !21
  br i1 %t970, label %bb249, label %bb250
bb249:
  %t971 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t973 = extractvalue { i64, ptr } %t971, 0
  %t975 = icmp ne i64 %t973, 1
  br i1 %t975, label %bb251, label %bb252
bb250:
  br label %bb265
bb251:
  store %olang.scope zeroinitializer, ptr %s23
  %t977 = load ptr, ptr %l0, !tbaa !29
  store ptr %t977, ptr %l539, !tbaa !29
  %t978 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t978, ptr %l540
  %t979 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t981 = extractvalue { i64, ptr } %t979, 0
  %t983 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eArgCount(ptr %s23, ptr %s23, i64 1, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d85, i32 0, i32 1) }, i64 %t981)
  store %"compiler/diagmsg:Msg" %t983, ptr %l543
  br label %bb253
bb252:
  br label %bb257
bb253:
  %t984 = load ptr, ptr %l539, !tbaa !29
  %t985 = load %"compiler/source:Span", ptr %l540
  %t986 = load %"compiler/diagmsg:Msg", ptr %l543
  %t987 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %s23, ptr %t984, %"compiler/source:Span" %t985, %"compiler/diagmsg:Msg" %t986)
  store i64 %t987, ptr %l544
  br label %bb254
bb254:
  %t988 = load ptr, ptr %l0, !tbaa !29
  %t989 = load { i64, ptr }, ptr %l6, !tbaa !27
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2edropArgs(ptr %v0, ptr %v4, ptr %t988, { i64, ptr } %t989)
  br label %bb255
bb255:
  %t992 = load ptr, ptr %l0, !tbaa !29
  %t993 = load %"compiler/source:Span", ptr %l1
  %t996 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunknown(ptr %v0, ptr %v5, ptr %t992, %"compiler/source:Span" %t993)
  store ptr %t996, ptr %l549
  br label %bb256
bb256:
  %t997 = load ptr, ptr %l549, !tbaa !29
  call void @__olang_scope_close(ptr %s23)
  call void @__olang_scope_close(ptr %s0)
  store ptr %t997, ptr %rv
  br label %ret
bb257:
  %t999 = load i32, ptr %l25, !range !{i32 0, i32 52}
  %t1001 = trunc i64 51 to i32
  %t1002 = icmp eq i32 %t999, %t1001
  br i1 %t1002, label %bb258, label %bb259
bb258:
  %t1004 = load ptr, ptr %l0, !tbaa !29
  %t1006 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ei64(ptr %v0, ptr %t1004)
  store i32 %t1006, ptr %l555
  br label %bb260
bb259:
  %t1007 = load i32, ptr %l7, !tbaa !23
  store i32 %t1007, ptr %l553, !tbaa !23
  br label %bb261
bb260:
  %t1009 = load i32, ptr %l555, !tbaa !23
  store i32 %t1009, ptr %l553, !tbaa !23
  br label %bb261
bb261:
  %t1010 = load i32, ptr %l553, !tbaa !23
  store i32 %t1010, ptr %l26, !tbaa !23
  %t1011 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1011, ptr %l557, !tbaa !29
  %t1012 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t1012, ptr %l558
  %t1013 = load i32, ptr %l7, !tbaa !23
  store i32 %t1013, ptr %l559, !tbaa !23
  %t1014 = load i32, ptr %l25, !range !{i32 0, i32 52}
  store i32 %t1014, ptr %l560
  %t1015 = load ptr, ptr %l0, !tbaa !29
  %t1016 = load ptr, ptr %l4, !tbaa !29
  %t1017 = load %"compiler/source:Span", ptr %l1
  %t1021 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2evalue(ptr %v0, ptr %v2, ptr %v2, ptr %t1015, ptr %t1016, %"compiler/source:Span" %t1017)
  store ptr %t1021, ptr %l564
  br label %bb262
bb262:
  %t1022 = load ptr, ptr %l0, !tbaa !29
  %t1023 = load { i64, ptr }, ptr %l6, !tbaa !27
  store { i64, ptr } %t1023, ptr %l566, !tbaa !27
  %t1024 = getelementptr { i64, ptr }, ptr %l566, i32 0, i32 1
  %t1025 = load ptr, ptr %t1024, !tbaa !27
  %t1026 = getelementptr ptr, ptr %t1025, i64 0
  %t1027 = load ptr, ptr %t1026, !tbaa !39
  %t1028 = load i32, ptr %l26, !tbaa !23
  %t1032 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eexprTo(ptr %v0, ptr %v4, ptr %v0, ptr %t1022, ptr %t1027, i32 %t1028)
  store ptr %t1032, ptr %l569
  br label %bb263
bb263:
  %t1033 = load ptr, ptr %l569, !tbaa !29
  %t1034 = load ptr, ptr %l557, !tbaa !29
  %t1035 = load %"compiler/source:Span", ptr %l558
  %t1036 = load i32, ptr %l559, !tbaa !23
  %t1037 = load i32, ptr %l560, !range !{i32 0, i32 52}
  %t1038 = load ptr, ptr %l564, !tbaa !29
  %t1040 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eprim(ptr %v0, ptr %v2, ptr %v0, ptr %v5, ptr %t1034, %"compiler/source:Span" %t1035, i32 %t1036, i32 %t1037, ptr %t1038, ptr %t1033)
  store ptr %t1040, ptr %l571
  br label %bb264
bb264:
  %t1041 = load ptr, ptr %l571, !tbaa !29
  call void @__olang_scope_close(ptr %s0)
  store ptr %t1041, ptr %rv
  br label %ret
bb265:
  %t1043 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t1045 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v3, ptr %s0, { i64, ptr } %t1043, { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d86, i32 0, i32 1) })
  store i1 %t1045, ptr %l574
  br label %bb266
bb266:
  %t1046 = load i1, ptr %l574, !tbaa !21
  br i1 %t1046, label %bb267, label %bb268
bb267:
  %t1047 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t1049 = extractvalue { i64, ptr } %t1047, 0
  %t1051 = icmp eq i64 %t1049, 0
  store i1 %t1051, ptr %l575, !tbaa !21
  br label %bb269
bb268:
  store i1 false, ptr %l575, !tbaa !21
  br label %bb269
bb269:
  %t1053 = load i1, ptr %l575, !tbaa !21
  br i1 %t1053, label %bb270, label %bb271
bb270:
  %t1054 = load ptr, ptr %l0, !tbaa !29
  %t1055 = load i32, ptr %l7, !tbaa !23
  %t1058 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2earrayOf(ptr %v0, ptr %t1054, i32 %t1055)
  store i32 %t1058, ptr %l582
  br label %bb272
bb271:
  store i1 false, ptr %l579, !tbaa !21
  br label %bb273
bb272:
  %t1059 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t1060 = load i32, ptr %l582, !tbaa !23
  %t1062 = icmp ne i32 %t1060, %t1059
  store i1 %t1062, ptr %l579, !tbaa !21
  br label %bb273
bb273:
  %t1064 = load i1, ptr %l579, !tbaa !21
  br i1 %t1064, label %bb274, label %bb275
bb274:
  %t1065 = load ptr, ptr %l0, !tbaa !29
  %t1067 = getelementptr %"compiler/check:Checker", ptr %t1065, i32 0, i32 1
  %t1068 = load ptr, ptr %t1067, !tbaa !29
  store ptr %t1068, ptr %l587, !tbaa !29
  %t1069 = load ptr, ptr %l0, !tbaa !29
  %t1071 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t1069)
  store ptr %t1071, ptr %l589
  br label %bb276
bb275:
  store i1 false, ptr %l585, !tbaa !21
  br label %bb278
bb276:
  %t1072 = load ptr, ptr %l589, !tbaa !29
  %t1074 = getelementptr %"compiler/check:frame", ptr %t1072, i32 0, i32 1
  %t1075 = load i64, ptr %t1074, !tbaa !24
  %t1076 = load ptr, ptr %l587, !tbaa !29
  %t1078 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eLibrary(ptr %v0, ptr %t1076, i64 %t1075)
  store i1 %t1078, ptr %l592
  br label %bb277
bb277:
  %t1079 = load i1, ptr %l592, !tbaa !21
  store i1 %t1079, ptr %l585, !tbaa !21
  br label %bb278
bb278:
  %t1080 = load i1, ptr %l585, !tbaa !21
  br i1 %t1080, label %bb279, label %bb280
bb279:
  %t1081 = load ptr, ptr %l0, !tbaa !29
  %t1083 = getelementptr %"compiler/check:Checker", ptr %t1081, i32 0, i32 1
  %t1084 = load ptr, ptr %t1083, !tbaa !29
  %t1086 = getelementptr %"compiler/generic:Program", ptr %t1084, i32 0, i32 0
  %t1087 = load ptr, ptr %t1086, !tbaa !29
  %t1089 = getelementptr %"compiler/load:Loader", ptr %t1087, i32 0, i32 10
  store ptr %t1089, ptr %l596, !tbaa !29
  %t1090 = load ptr, ptr %l0, !tbaa !29
  %t1092 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t1090)
  store ptr %t1092, ptr %l598
  br label %bb281
bb280:
  br label %bb285
bb281:
  %t1093 = load ptr, ptr %l598, !tbaa !29
  %t1095 = getelementptr %"compiler/check:frame", ptr %t1093, i32 0, i32 1
  %t1096 = load i64, ptr %t1095, !tbaa !24
  %t1097 = load ptr, ptr %l596, !tbaa !29
  %t1099 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H7bcf2aeb09afa796f4333e6ec8c3f63f(ptr %v0, ptr %v0, ptr %t1097, i64 %t1096)
  store ptr %t1099, ptr %l601
  br label %bb282
bb282:
  %t1100 = load ptr, ptr %l601, !tbaa !29
  %t1102 = getelementptr %"compiler/load:Module", ptr %t1100, i32 0, i32 5
  store i1 true, ptr %t1102, !tbaa !21
  %t1103 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1103, ptr %l603, !tbaa !29
  %t1104 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t1104, ptr %l604
  %t1105 = load i32, ptr @G_2ecompiler_2ftypes_2eVoidT, !tbaa !23
  store i32 %t1105, ptr %l605, !tbaa !23
  store i32 29, ptr %l606
  %t1106 = load ptr, ptr %l0, !tbaa !29
  %t1107 = load ptr, ptr %l4, !tbaa !29
  %t1108 = load %"compiler/source:Span", ptr %l1
  %t1112 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2evalue(ptr %v0, ptr %v2, ptr %v2, ptr %t1106, ptr %t1107, %"compiler/source:Span" %t1108)
  store ptr %t1112, ptr %l610
  br label %bb283
bb283:
  %t1113 = load ptr, ptr %l603, !tbaa !29
  %t1114 = load %"compiler/source:Span", ptr %l604
  %t1115 = load i32, ptr %l605, !tbaa !23
  %t1116 = load i32, ptr %l606, !range !{i32 0, i32 52}
  %t1117 = load ptr, ptr %l610, !tbaa !29
  %t1118 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eprim(ptr %v0, ptr %v2, ptr %v0, ptr %v5, ptr %t1113, %"compiler/source:Span" %t1114, i32 %t1115, i32 %t1116, ptr %t1117, ptr null)
  store ptr %t1118, ptr %l611
  br label %bb284
bb284:
  %t1119 = load ptr, ptr %l611, !tbaa !29
  call void @__olang_scope_close(ptr %s0)
  store ptr %t1119, ptr %rv
  br label %ret
bb285:
  %t1121 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t1123 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v3, ptr %s0, { i64, ptr } %t1121, { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d87, i32 0, i32 1) })
  store i1 %t1123, ptr %l614
  br label %bb286
bb286:
  %t1124 = load i1, ptr %l614, !tbaa !21
  br i1 %t1124, label %bb287, label %bb288
bb287:
  %t1125 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t1127 = extractvalue { i64, ptr } %t1125, 0
  %t1129 = icmp eq i64 %t1127, 1
  store i1 %t1129, ptr %l615, !tbaa !21
  br label %bb289
bb288:
  store i1 false, ptr %l615, !tbaa !21
  br label %bb289
bb289:
  %t1131 = load i1, ptr %l615, !tbaa !21
  br i1 %t1131, label %bb290, label %bb291
bb290:
  %t1132 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1132, ptr %l620, !tbaa !29
  %t1133 = load ptr, ptr %l4, !tbaa !29
  %t1136 = call i32 @compiler_2fcheck_2etypeOf(ptr %v2, ptr %t1133)
  store i32 %t1136, ptr %l623
  br label %bb292
bb291:
  store i1 false, ptr %l619, !tbaa !21
  br label %bb294
bb292:
  %t1137 = load ptr, ptr %l620, !tbaa !29
  %t1138 = load i32, ptr %l623, !tbaa !23
  %t1139 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisRef(ptr %v0, ptr %t1137, i32 %t1138)
  store i1 %t1139, ptr %l624
  br label %bb293
bb293:
  %t1140 = load i1, ptr %l624, !tbaa !21
  store i1 %t1140, ptr %l619, !tbaa !21
  br label %bb294
bb294:
  %t1141 = load i1, ptr %l619, !tbaa !21
  br i1 %t1141, label %bb295, label %bb296
bb295:
  %t1142 = load ptr, ptr %l0, !tbaa !29
  %t1143 = load i32, ptr %l7, !tbaa !23
  %t1146 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2earrayOf(ptr %v0, ptr %t1142, i32 %t1143)
  store i32 %t1146, ptr %l628
  br label %bb297
bb296:
  store i1 false, ptr %l625, !tbaa !21
  br label %bb298
bb297:
  %t1147 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t1148 = load i32, ptr %l628, !tbaa !23
  %t1150 = icmp ne i32 %t1148, %t1147
  store i1 %t1150, ptr %l625, !tbaa !21
  br label %bb298
bb298:
  %t1152 = load i1, ptr %l625, !tbaa !21
  br i1 %t1152, label %bb299, label %bb300
bb299:
  %t1153 = load ptr, ptr %l0, !tbaa !29
  %t1155 = getelementptr %"compiler/check:Checker", ptr %t1153, i32 0, i32 1
  %t1156 = load ptr, ptr %t1155, !tbaa !29
  store ptr %t1156, ptr %l633, !tbaa !29
  %t1157 = load ptr, ptr %l0, !tbaa !29
  %t1159 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t1157)
  store ptr %t1159, ptr %l635
  br label %bb301
bb300:
  store i1 false, ptr %l631, !tbaa !21
  br label %bb303
bb301:
  %t1160 = load ptr, ptr %l635, !tbaa !29
  %t1162 = getelementptr %"compiler/check:frame", ptr %t1160, i32 0, i32 1
  %t1163 = load i64, ptr %t1162, !tbaa !24
  %t1164 = load ptr, ptr %l633, !tbaa !29
  %t1166 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eLibrary(ptr %v0, ptr %t1164, i64 %t1163)
  store i1 %t1166, ptr %l638
  br label %bb302
bb302:
  %t1167 = load i1, ptr %l638, !tbaa !21
  store i1 %t1167, ptr %l631, !tbaa !21
  br label %bb303
bb303:
  %t1168 = load i1, ptr %l631, !tbaa !21
  br i1 %t1168, label %bb304, label %bb305
bb304:
  %t1169 = load ptr, ptr %l0, !tbaa !29
  %t1171 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecur(ptr %v0, ptr %v0, ptr %t1169)
  store ptr %t1171, ptr %l640
  br label %bb306
bb305:
  br label %bb340
bb306:
  %t1172 = load ptr, ptr %l640, !tbaa !29
  %t1174 = getelementptr %"compiler/typed:Body", ptr %t1172, i32 0, i32 18
  store i1 true, ptr %t1174, !tbaa !21
  %t1175 = load ptr, ptr %l0, !tbaa !29
  %t1177 = getelementptr %"compiler/check:Checker", ptr %t1175, i32 0, i32 1
  %t1178 = load ptr, ptr %t1177, !tbaa !29
  %t1180 = getelementptr %"compiler/generic:Program", ptr %t1178, i32 0, i32 2
  store ptr %t1180, ptr %l644, !tbaa !29
  %t1181 = load ptr, ptr %l0, !tbaa !29
  %t1182 = load i32, ptr %l7, !tbaa !23
  %t1185 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2earrayOf(ptr %v0, ptr %t1181, i32 %t1182)
  store i32 %t1185, ptr %l647
  br label %bb307
bb307:
  %t1186 = load ptr, ptr %l644, !tbaa !29
  %t1187 = load i32, ptr %l647, !tbaa !23
  %t1188 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eElem(ptr %v0, ptr %t1186, i32 %t1187)
  store i32 %t1188, ptr %l648
  br label %bb308
bb308:
  %t1189 = load i32, ptr %l648, !tbaa !23
  store i32 %t1189, ptr %l27, !tbaa !23
  %t1190 = load ptr, ptr %l0, !tbaa !29
  %t1192 = getelementptr %"compiler/check:Checker", ptr %t1190, i32 0, i32 1
  %t1193 = load ptr, ptr %t1192, !tbaa !29
  %t1195 = getelementptr %"compiler/generic:Program", ptr %t1193, i32 0, i32 2
  %t1196 = load i32, ptr %l27, !tbaa !23
  %t1199 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eArray(ptr %v0, ptr %t1195, i32 %t1196, i32 0)
  store i32 %t1199, ptr %l653
  br label %bb309
bb309:
  %t1200 = load i32, ptr %l653, !tbaa !23
  store i32 %t1200, ptr %l28, !tbaa !23
  %t1201 = load ptr, ptr %l0, !tbaa !29
  %t1203 = getelementptr %"compiler/check:Checker", ptr %t1201, i32 0, i32 37
  %t1205 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aStmt_26_3e_2eLen_3ccompiler_2ftyped_3aStmt_26_3e(ptr %v0, ptr %t1203)
  store i64 %t1205, ptr %l656
  br label %bb310
bb310:
  %t1206 = load i64, ptr %l656, !tbaa !24
  store i64 %t1206, ptr %l29, !tbaa !24
  %t1207 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1207, ptr %l657, !tbaa !29
  %t1208 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t1208, ptr %l658
  %t1209 = load ptr, ptr %l4, !tbaa !29
  %t1212 = call i32 @compiler_2fcheck_2etypeOf(ptr %v2, ptr %t1209)
  store i32 %t1212, ptr %l661
  br label %bb311
bb311:
  %t1213 = load ptr, ptr %l657, !tbaa !29
  %t1214 = load %"compiler/source:Span", ptr %l658
  %t1215 = load i32, ptr %l661, !tbaa !23
  %t1216 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ehidden(ptr %v0, ptr %t1213, %"compiler/source:Span" %t1214, i32 %t1215)
  store i64 %t1216, ptr %l662
  br label %bb312
bb312:
  %t1217 = load i64, ptr %l662, !tbaa !24
  store i64 %t1217, ptr %l30, !tbaa !24
  %t1218 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1218, ptr %l663, !tbaa !29
  %t1219 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t1219, ptr %l664
  %t1220 = load i64, ptr %l30, !tbaa !24
  %t1222 = trunc i64 %t1220 to i32
  store i32 %t1222, ptr %l667, !tbaa !23
  %t1224 = load ptr, ptr %l0, !tbaa !29
  %t1225 = load ptr, ptr %l4, !tbaa !29
  %t1226 = load %"compiler/source:Span", ptr %l1
  %t1230 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2evalue(ptr %v0, ptr %v2, ptr %v0, ptr %t1224, ptr %t1225, %"compiler/source:Span" %t1226)
  store ptr %t1230, ptr %l671
  br label %bb313
bb313:
  store { i64, [3 x i64] } zeroinitializer, ptr %t1231
  %t1232 = getelementptr { i64, [3 x i64] }, ptr %t1231, i32 0, i32 0
  store i64 0, ptr %t1232
  %t1233 = load %"compiler/source:Span", ptr %l664
  %t1234 = insertvalue { %"compiler/source:Span", i32, ptr } undef, %"compiler/source:Span" %t1233, 0
  %t1235 = load i32, ptr %l667, !tbaa !23
  %t1236 = insertvalue { %"compiler/source:Span", i32, ptr } %t1234, i32 %t1235, 1
  %t1237 = load ptr, ptr %l671, !tbaa !29
  %t1238 = insertvalue { %"compiler/source:Span", i32, ptr } %t1236, ptr %t1237, 2
  %t1239 = getelementptr { i64, [3 x i64] }, ptr %t1231, i32 0, i32 1
  store { %"compiler/source:Span", i32, ptr } %t1238, ptr %t1239
  %t1240 = load { i64, [3 x i64] }, ptr %t1231
  %t1242 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 32, i64 8)
  store { i64, [3 x i64] } %t1240, ptr %t1242
  %t1243 = load ptr, ptr %l663, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eemit(ptr %v0, ptr %v0, ptr %t1243, ptr %t1242)
  br label %bb314
bb314:
  %t1245 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1245, ptr %l674, !tbaa !29
  %t1246 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t1246, ptr %l675
  %t1247 = load ptr, ptr %l0, !tbaa !29
  %t1249 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ei64(ptr %v0, ptr %t1247)
  store i32 %t1249, ptr %l677
  br label %bb315
bb315:
  %t1250 = load ptr, ptr %l674, !tbaa !29
  %t1251 = load %"compiler/source:Span", ptr %l675
  %t1252 = load i32, ptr %l677, !tbaa !23
  %t1253 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ehidden(ptr %v0, ptr %t1250, %"compiler/source:Span" %t1251, i32 %t1252)
  store i64 %t1253, ptr %l678
  br label %bb316
bb316:
  %t1254 = load i64, ptr %l678, !tbaa !24
  store i64 %t1254, ptr %l31, !tbaa !24
  %t1255 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1255, ptr %l679, !tbaa !29
  %t1256 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t1256, ptr %l680
  %t1257 = load i64, ptr %l31, !tbaa !24
  %t1259 = trunc i64 %t1257 to i32
  store i32 %t1259, ptr %l683, !tbaa !23
  %t1261 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1261, ptr %l684, !tbaa !29
  %t1262 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1262, ptr %l685, !tbaa !29
  %t1263 = load { i64, ptr }, ptr %l6, !tbaa !27
  store { i64, ptr } %t1263, ptr %l686, !tbaa !27
  %t1264 = getelementptr { i64, ptr }, ptr %l686, i32 0, i32 1
  %t1265 = load ptr, ptr %t1264, !tbaa !27
  %t1266 = getelementptr ptr, ptr %t1265, i64 0
  %t1267 = load ptr, ptr %t1266, !tbaa !39
  store ptr %t1267, ptr %l687, !tbaa !29
  %t1268 = load ptr, ptr %l0, !tbaa !29
  %t1270 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ei64(ptr %v0, ptr %t1268)
  store i32 %t1270, ptr %l689
  br label %bb317
bb317:
  %t1271 = load ptr, ptr %l685, !tbaa !29
  %t1272 = load ptr, ptr %l687, !tbaa !29
  %t1273 = load i32, ptr %l689, !tbaa !23
  %t1274 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eexprTo(ptr %v0, ptr %v4, ptr %v0, ptr %t1271, ptr %t1272, i32 %t1273)
  store ptr %t1274, ptr %l690
  br label %bb318
bb318:
  %t1275 = load { i64, ptr }, ptr %l6, !tbaa !27
  store { i64, ptr } %t1275, ptr %l691, !tbaa !27
  %t1276 = getelementptr { i64, ptr }, ptr %l691, i32 0, i32 1
  %t1277 = load ptr, ptr %t1276, !tbaa !27
  %t1278 = getelementptr ptr, ptr %t1277, i64 0
  %t1279 = load ptr, ptr %t1278, !tbaa !39
  %t1281 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v4, ptr %t1279)
  store %"compiler/source:Span" %t1281, ptr %l693
  br label %bb319
bb319:
  %t1282 = load ptr, ptr %l684, !tbaa !29
  %t1283 = load ptr, ptr %l690, !tbaa !29
  %t1284 = load %"compiler/source:Span", ptr %l693
  %t1285 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2evalue(ptr %v0, ptr %v0, ptr %v0, ptr %t1282, ptr %t1283, %"compiler/source:Span" %t1284)
  store ptr %t1285, ptr %l694
  br label %bb320
bb320:
  store { i64, [3 x i64] } zeroinitializer, ptr %t1286
  %t1287 = getelementptr { i64, [3 x i64] }, ptr %t1286, i32 0, i32 0
  store i64 0, ptr %t1287
  %t1288 = load %"compiler/source:Span", ptr %l680
  %t1289 = insertvalue { %"compiler/source:Span", i32, ptr } undef, %"compiler/source:Span" %t1288, 0
  %t1290 = load i32, ptr %l683, !tbaa !23
  %t1291 = insertvalue { %"compiler/source:Span", i32, ptr } %t1289, i32 %t1290, 1
  %t1292 = load ptr, ptr %l694, !tbaa !29
  %t1293 = insertvalue { %"compiler/source:Span", i32, ptr } %t1291, ptr %t1292, 2
  %t1294 = getelementptr { i64, [3 x i64] }, ptr %t1286, i32 0, i32 1
  store { %"compiler/source:Span", i32, ptr } %t1293, ptr %t1294
  %t1295 = load { i64, [3 x i64] }, ptr %t1286
  %t1297 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 32, i64 8)
  store { i64, [3 x i64] } %t1295, ptr %t1297
  %t1298 = load ptr, ptr %l679, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eemit(ptr %v0, ptr %v0, ptr %t1298, ptr %t1297)
  br label %bb321
bb321:
  %t1300 = load ptr, ptr %l0, !tbaa !29
  %t1302 = getelementptr %"compiler/check:Checker", ptr %t1300, i32 0, i32 37
  %t1304 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aStmt_26_3e_2eLen_3ccompiler_2ftyped_3aStmt_26_3e(ptr %v0, ptr %t1302)
  store i64 %t1304, ptr %l699
  br label %bb322
bb322:
  %t1305 = load i64, ptr %l699, !tbaa !24
  store i64 %t1305, ptr %l32, !tbaa !24
  %t1306 = load ptr, ptr %l0, !tbaa !29
  %t1307 = load %"compiler/source:Span", ptr %l1
  %t1311 = call { i64, i64, i64 } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eopen(ptr %v0, ptr %t1306, i32 9, %"compiler/source:Span" %t1307)
  store { i64, i64, i64 } %t1311, ptr %l703
  br label %bb323
bb323:
  %t1312 = load { i64, i64, i64 }, ptr %l703
  store { i64, i64, i64 } %t1312, ptr %l33
  %t1313 = getelementptr { i64, i64, i64 }, ptr %l33, i32 0, i32 0
  %t1314 = load i64, ptr %t1313, !tbaa !24
  store i64 %t1314, ptr %l34, !tbaa !24
  %t1316 = getelementptr { i64, i64, i64 }, ptr %l33, i32 0, i32 1
  %t1317 = load i64, ptr %t1316, !tbaa !24
  store i64 %t1317, ptr %l35, !tbaa !24
  %t1319 = getelementptr { i64, i64, i64 }, ptr %l33, i32 0, i32 2
  %t1320 = load i64, ptr %t1319, !tbaa !24
  store i64 %t1320, ptr %l36, !tbaa !24
  %t1322 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1322, ptr %l707, !tbaa !29
  %t1323 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t1323, ptr %l708
  %t1324 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1324, ptr %l709, !tbaa !29
  %t1325 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t1325, ptr %l710
  %t1326 = load ptr, ptr %l0, !tbaa !29
  %t1328 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ei64(ptr %v0, ptr %t1326)
  store i32 %t1328, ptr %l712
  br label %bb324
bb324:
  store i32 22, ptr %l713
  %t1329 = load ptr, ptr %l0, !tbaa !29
  %t1330 = load %"compiler/source:Span", ptr %l1
  %t1331 = load i64, ptr %l30, !tbaa !24
  %t1335 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ereadLocal(ptr %v0, ptr %v0, ptr %t1329, %"compiler/source:Span" %t1330, i64 %t1331)
  store ptr %t1335, ptr %l717
  br label %bb325
bb325:
  %t1336 = load ptr, ptr %l709, !tbaa !29
  %t1337 = load %"compiler/source:Span", ptr %l710
  %t1338 = load i32, ptr %l712, !tbaa !23
  %t1339 = load i32, ptr %l713, !range !{i32 0, i32 52}
  %t1340 = load ptr, ptr %l717, !tbaa !29
  %t1341 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eprim(ptr %v0, ptr %v0, ptr %v0, ptr %v0, ptr %t1336, %"compiler/source:Span" %t1337, i32 %t1338, i32 %t1339, ptr %t1340, ptr null)
  store ptr %t1341, ptr %l718
  br label %bb326
bb326:
  %t1342 = load ptr, ptr %l707, !tbaa !29
  %t1343 = load %"compiler/source:Span", ptr %l708
  %t1344 = load ptr, ptr %l718, !tbaa !29
  %t1345 = call { i64, i64, i64, i64, i64 } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elaneLoopOpen(ptr %v0, ptr %v0, ptr %t1342, %"compiler/source:Span" %t1343, ptr %t1344, i64 0)
  store { i64, i64, i64, i64, i64 } %t1345, ptr %l719
  br label %bb327
bb327:
  %t1346 = load { i64, i64, i64, i64, i64 }, ptr %l719
  store { i64, i64, i64, i64, i64 } %t1346, ptr %l37
  %t1347 = getelementptr { i64, i64, i64, i64, i64 }, ptr %l37, i32 0, i32 0
  %t1348 = load i64, ptr %t1347, !tbaa !24
  store i64 %t1348, ptr %l38, !tbaa !24
  %t1350 = getelementptr { i64, i64, i64, i64, i64 }, ptr %l37, i32 0, i32 1
  %t1351 = load i64, ptr %t1350, !tbaa !24
  store i64 %t1351, ptr %l39, !tbaa !24
  %t1353 = getelementptr { i64, i64, i64, i64, i64 }, ptr %l37, i32 0, i32 2
  %t1354 = load i64, ptr %t1353, !tbaa !24
  store i64 %t1354, ptr %l40, !tbaa !24
  %t1356 = getelementptr { i64, i64, i64, i64, i64 }, ptr %l37, i32 0, i32 3
  %t1357 = load i64, ptr %t1356, !tbaa !24
  store i64 %t1357, ptr %l41, !tbaa !24
  %t1359 = getelementptr { i64, i64, i64, i64, i64 }, ptr %l37, i32 0, i32 4
  %t1360 = load i64, ptr %t1359, !tbaa !24
  store i64 %t1360, ptr %l42, !tbaa !24
  %t1362 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t1362, ptr %l725
  %t1363 = load i32, ptr %l7, !tbaa !23
  store i32 %t1363, ptr %l726, !tbaa !23
  %t1364 = load ptr, ptr %l0, !tbaa !29
  %t1365 = load %"compiler/source:Span", ptr %l1
  %t1366 = load i64, ptr %l30, !tbaa !24
  %t1370 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ereadLocal(ptr %v0, ptr %v5, ptr %t1364, %"compiler/source:Span" %t1365, i64 %t1366)
  store ptr %t1370, ptr %l730
  br label %bb328
bb328:
  store { i64, [4 x i64] } zeroinitializer, ptr %t1371
  %t1372 = getelementptr { i64, [4 x i64] }, ptr %t1371, i32 0, i32 0
  store i64 2, ptr %t1372
  %t1373 = load %"compiler/source:Span", ptr %l725
  %t1374 = insertvalue { %"compiler/source:Span", i32, ptr } undef, %"compiler/source:Span" %t1373, 0
  %t1375 = load i32, ptr %l726, !tbaa !23
  %t1376 = insertvalue { %"compiler/source:Span", i32, ptr } %t1374, i32 %t1375, 1
  %t1377 = load ptr, ptr %l730, !tbaa !29
  %t1378 = insertvalue { %"compiler/source:Span", i32, ptr } %t1376, ptr %t1377, 2
  %t1379 = getelementptr { i64, [4 x i64] }, ptr %t1371, i32 0, i32 1
  store { %"compiler/source:Span", i32, ptr } %t1378, ptr %t1379
  %t1380 = load { i64, [4 x i64] }, ptr %t1371
  %t1382 = call ptr @__olang_scope_alloc_a(ptr %v5, i64 40, i64 8)
  store { i64, [4 x i64] } %t1380, ptr %t1382
  %t1384 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t1384, ptr %l733
  %t1385 = load i32, ptr %l27, !tbaa !23
  store i32 %t1385, ptr %l734, !tbaa !23
  store ptr %t1382, ptr %l735, !tbaa !29
  %t1387 = load ptr, ptr %l0, !tbaa !29
  %t1388 = load %"compiler/source:Span", ptr %l1
  %t1389 = load i64, ptr %l38, !tbaa !24
  %t1393 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ereadLocal(ptr %v0, ptr %v5, ptr %t1387, %"compiler/source:Span" %t1388, i64 %t1389)
  store ptr %t1393, ptr %l739
  br label %bb329
bb329:
  %t1394 = load ptr, ptr %l735, !tbaa !29
  %t1395 = load ptr, ptr %l739, !tbaa !29
  %t1397 = call %"compiler/typed:Elem" @compiler_2ftyped_3aElem_2ector(ptr %v5, ptr %v5, ptr %v5, ptr %t1394, ptr %t1395, i32 0)
  store %"compiler/typed:Elem" %t1397, ptr %l741
  br label %bb330
bb330:
  %t1398 = load %"compiler/typed:Elem", ptr %l741
  %t1399 = call ptr @__olang_scope_alloc_a(ptr %v5, i64 24, i64 8)
  store %"compiler/typed:Elem" %t1398, ptr %t1399
  store { i64, [4 x i64] } zeroinitializer, ptr %t1400
  %t1401 = getelementptr { i64, [4 x i64] }, ptr %t1400, i32 0, i32 0
  store i64 4, ptr %t1401
  %t1402 = load %"compiler/source:Span", ptr %l733
  %t1403 = insertvalue { %"compiler/source:Span", i32, ptr } undef, %"compiler/source:Span" %t1402, 0
  %t1404 = load i32, ptr %l734, !tbaa !23
  %t1405 = insertvalue { %"compiler/source:Span", i32, ptr } %t1403, i32 %t1404, 1
  %t1407 = insertvalue { %"compiler/source:Span", i32, ptr } %t1405, ptr %t1399, 2
  %t1408 = getelementptr { i64, [4 x i64] }, ptr %t1400, i32 0, i32 1
  store { %"compiler/source:Span", i32, ptr } %t1407, ptr %t1408
  %t1409 = load { i64, [4 x i64] }, ptr %t1400
  %t1410 = call ptr @__olang_scope_alloc_a(ptr %v5, i64 40, i64 8)
  store ptr %t1410, ptr %lp44
  %t1412 = load ptr, ptr %lp44
  store { i64, [4 x i64] } %t1409, ptr %t1412
  %t1413 = load ptr, ptr %l0, !tbaa !29
  %t1414 = load ptr, ptr %lp44
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2enoteWrite(ptr %v0, ptr %v5, ptr %t1413, ptr %t1414)
  br label %bb331
bb331:
  %t1417 = load ptr, ptr %l0, !tbaa !29
  %t1418 = load %"compiler/source:Span", ptr %l1
  %t1419 = load %"compiler/source:Span", ptr %l1
  %t1420 = load i32, ptr %l27, !tbaa !23
  %t1421 = load ptr, ptr %lp44
  store { i64, [5 x i64] } zeroinitializer, ptr %t1422
  %t1423 = getelementptr { i64, [5 x i64] }, ptr %t1422, i32 0, i32 0
  store i64 4, ptr %t1423
  %t1425 = insertvalue { %"compiler/source:Span", i32, ptr } undef, %"compiler/source:Span" %t1419, 0
  %t1427 = insertvalue { %"compiler/source:Span", i32, ptr } %t1425, i32 %t1420, 1
  %t1429 = insertvalue { %"compiler/source:Span", i32, ptr } %t1427, ptr %t1421, 2
  %t1430 = getelementptr { i64, [5 x i64] }, ptr %t1422, i32 0, i32 1
  store { %"compiler/source:Span", i32, ptr } %t1429, ptr %t1430
  %t1431 = load { i64, [5 x i64] }, ptr %t1422
  %t1433 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 48, i64 8)
  store { i64, [5 x i64] } %t1431, ptr %t1433
  store { i64, [3 x i64] } zeroinitializer, ptr %t1434
  %t1435 = getelementptr { i64, [3 x i64] }, ptr %t1434, i32 0, i32 0
  store i64 15, ptr %t1435
  %t1437 = insertvalue { %"compiler/source:Span", ptr } undef, %"compiler/source:Span" %t1418, 0
  %t1439 = insertvalue { %"compiler/source:Span", ptr } %t1437, ptr %t1433, 1
  %t1440 = getelementptr { i64, [3 x i64] }, ptr %t1434, i32 0, i32 1
  store { %"compiler/source:Span", ptr } %t1439, ptr %t1440
  %t1441 = load { i64, [3 x i64] }, ptr %t1434
  %t1443 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 32, i64 8)
  store { i64, [3 x i64] } %t1441, ptr %t1443
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eemit(ptr %v0, ptr %v0, ptr %t1417, ptr %t1443)
  br label %bb332
bb332:
  %t1446 = load ptr, ptr %l0, !tbaa !29
  %t1447 = load %"compiler/source:Span", ptr %l1
  %t1448 = load i64, ptr %l38, !tbaa !24
  %t1449 = load i64, ptr %l39, !tbaa !24
  %t1450 = load i64, ptr %l40, !tbaa !24
  %t1451 = load i64, ptr %l41, !tbaa !24
  %t1452 = load i64, ptr %l42, !tbaa !24
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elaneLoopClose(ptr %v0, ptr %t1446, %"compiler/source:Span" %t1447, i64 %t1448, i64 %t1449, i64 %t1450, i64 %t1451, i64 %t1452)
  br label %bb333
bb333:
  %t1460 = load ptr, ptr %l0, !tbaa !29
  %t1461 = load i64, ptr %l34, !tbaa !24
  %t1462 = load i64, ptr %l35, !tbaa !24
  %t1463 = load i64, ptr %l36, !tbaa !24
  %t1464 = load i64, ptr %l32, !tbaa !24
  %t1470 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eclose(ptr %v0, ptr %v5, ptr %t1460, i64 %t1461, i64 %t1462, i64 %t1463, i64 %t1464)
  store ptr %t1470, ptr %l767
  br label %bb334
bb334:
  %t1471 = load ptr, ptr %l767, !tbaa !29
  store ptr %t1471, ptr %l45, !tbaa !29
  %t1472 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t1472, ptr %l768
  %t1473 = load i32, ptr %l28, !tbaa !23
  store i32 %t1473, ptr %l769, !tbaa !23
  %t1474 = load ptr, ptr %l0, !tbaa !29
  %t1475 = load %"compiler/source:Span", ptr %l1
  %t1476 = load i64, ptr %l31, !tbaa !24
  %t1480 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ereadLocal(ptr %v0, ptr %v5, ptr %t1474, %"compiler/source:Span" %t1475, i64 %t1476)
  store ptr %t1480, ptr %l773
  br label %bb335
bb335:
  %t1481 = load ptr, ptr %l773, !tbaa !29
  store ptr %t1481, ptr %l774, !tbaa !29
  %t1482 = load ptr, ptr %l45, !tbaa !29
  store ptr %t1482, ptr %l775, !tbaa !29
  %t1483 = load ptr, ptr %l0, !tbaa !29
  %t1484 = load %"compiler/source:Span", ptr %l1
  %t1488 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esite(ptr %v0, ptr %t1483, i32 3, %"compiler/source:Span" %t1484)
  store i32 %t1488, ptr %l779
  br label %bb336
bb336:
  %t1489 = load ptr, ptr %l774, !tbaa !29
  %t1490 = load ptr, ptr %l775, !tbaa !29
  %t1491 = load i32, ptr %l779, !tbaa !23
  %t1493 = call %"compiler/typed:Collect" @compiler_2ftyped_3aCollect_2ector(ptr %v5, ptr %v5, ptr %v5, ptr %t1489, ptr %t1490, i32 %t1491, i32 0, i1 true)
  store %"compiler/typed:Collect" %t1493, ptr %l781
  br label %bb337
bb337:
  %t1494 = load %"compiler/typed:Collect", ptr %l781
  %t1495 = call ptr @__olang_scope_alloc_a(ptr %v5, i64 32, i64 8)
  store %"compiler/typed:Collect" %t1494, ptr %t1495
  store { i64, [5 x i64] } zeroinitializer, ptr %t1496
  %t1497 = getelementptr { i64, [5 x i64] }, ptr %t1496, i32 0, i32 0
  store i64 8, ptr %t1497
  %t1498 = load %"compiler/source:Span", ptr %l768
  %t1499 = insertvalue { %"compiler/source:Span", i32, ptr } undef, %"compiler/source:Span" %t1498, 0
  %t1500 = load i32, ptr %l769, !tbaa !23
  %t1501 = insertvalue { %"compiler/source:Span", i32, ptr } %t1499, i32 %t1500, 1
  %t1503 = insertvalue { %"compiler/source:Span", i32, ptr } %t1501, ptr %t1495, 2
  %t1504 = getelementptr { i64, [5 x i64] }, ptr %t1496, i32 0, i32 1
  store { %"compiler/source:Span", i32, ptr } %t1503, ptr %t1504
  %t1505 = load { i64, [5 x i64] }, ptr %t1496
  %t1506 = call ptr @__olang_scope_alloc_a(ptr %v5, i64 48, i64 8)
  store ptr %t1506, ptr %lp46
  %t1508 = load ptr, ptr %lp46
  store { i64, [5 x i64] } %t1505, ptr %t1508
  %t1509 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t1509, ptr %l784
  %t1510 = load i32, ptr %l28, !tbaa !23
  store i32 %t1510, ptr %l785, !tbaa !23
  %t1511 = load ptr, ptr %l0, !tbaa !29
  %t1513 = getelementptr %"compiler/check:Checker", ptr %t1511, i32 0, i32 37
  %t1514 = load i64, ptr %l29, !tbaa !24
  %t1517 = call { i64, ptr } @compiler_2fcheck_2egather_3ccompiler_2ftyped_3aStmt_26_3e(ptr %v0, ptr %v0, ptr %t1513, i64 %t1514)
  store { i64, ptr } %t1517, ptr %l789
  br label %bb338
bb338:
  %t1518 = load ptr, ptr %lp46
  %t1519 = load { i64, ptr }, ptr %l789, !tbaa !27
  %t1521 = call %"compiler/typed:Seq" @compiler_2ftyped_3aSeq_2ector(ptr %v0, ptr %v5, ptr %v5, { i64, ptr } %t1519, ptr %t1518, i1 false)
  store %"compiler/typed:Seq" %t1521, ptr %l791
  br label %bb339
bb339:
  %t1522 = load %"compiler/typed:Seq", ptr %l791
  %t1523 = call ptr @__olang_scope_alloc_a(ptr %v5, i64 32, i64 8)
  store %"compiler/typed:Seq" %t1522, ptr %t1523
  store { i64, [5 x i64] } zeroinitializer, ptr %t1524
  %t1525 = getelementptr { i64, [5 x i64] }, ptr %t1524, i32 0, i32 0
  store i64 12, ptr %t1525
  %t1526 = load %"compiler/source:Span", ptr %l784
  %t1527 = insertvalue { %"compiler/source:Span", i32, ptr } undef, %"compiler/source:Span" %t1526, 0
  %t1528 = load i32, ptr %l785, !tbaa !23
  %t1529 = insertvalue { %"compiler/source:Span", i32, ptr } %t1527, i32 %t1528, 1
  %t1531 = insertvalue { %"compiler/source:Span", i32, ptr } %t1529, ptr %t1523, 2
  %t1532 = getelementptr { i64, [5 x i64] }, ptr %t1524, i32 0, i32 1
  store { %"compiler/source:Span", i32, ptr } %t1531, ptr %t1532
  %t1533 = load { i64, [5 x i64] }, ptr %t1524
  %t1535 = call ptr @__olang_scope_alloc_a(ptr %v5, i64 48, i64 8)
  store { i64, [5 x i64] } %t1533, ptr %t1535
  call void @__olang_scope_close(ptr %s0)
  store ptr %t1535, ptr %rv
  br label %ret
bb340:
  %t1537 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t1539 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v3, ptr %s0, { i64, ptr } %t1537, { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d88, i32 0, i32 1) })
  store i1 %t1539, ptr %l796
  br label %bb341
bb341:
  %t1540 = load i1, ptr %l796, !tbaa !21
  br i1 %t1540, label %bb342, label %bb343
bb342:
  %t1541 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t1543 = extractvalue { i64, ptr } %t1541, 0
  %t1545 = icmp eq i64 %t1543, 0
  store i1 %t1545, ptr %l797, !tbaa !21
  br label %bb344
bb343:
  store i1 false, ptr %l797, !tbaa !21
  br label %bb344
bb344:
  %t1547 = load i1, ptr %l797, !tbaa !21
  br i1 %t1547, label %bb345, label %bb346
bb345:
  %t1548 = load ptr, ptr %l0, !tbaa !29
  %t1550 = getelementptr %"compiler/check:Checker", ptr %t1548, i32 0, i32 1
  %t1551 = load ptr, ptr %t1550, !tbaa !29
  store ptr %t1551, ptr %l803, !tbaa !29
  %t1552 = load ptr, ptr %l0, !tbaa !29
  %t1554 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t1552)
  store ptr %t1554, ptr %l805
  br label %bb347
bb346:
  store i1 false, ptr %l801, !tbaa !21
  br label %bb349
bb347:
  %t1555 = load ptr, ptr %l805, !tbaa !29
  %t1557 = getelementptr %"compiler/check:frame", ptr %t1555, i32 0, i32 1
  %t1558 = load i64, ptr %t1557, !tbaa !24
  %t1559 = load ptr, ptr %l803, !tbaa !29
  %t1561 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eLibrary(ptr %v0, ptr %t1559, i64 %t1558)
  store i1 %t1561, ptr %l808
  br label %bb348
bb348:
  %t1562 = load i1, ptr %l808, !tbaa !21
  store i1 %t1562, ptr %l801, !tbaa !21
  br label %bb349
bb349:
  %t1563 = load i1, ptr %l801, !tbaa !21
  br i1 %t1563, label %bb350, label %bb351
bb350:
  %t1564 = load ptr, ptr %l4, !tbaa !29
  %t1566 = call ptr @compiler_2fcheck_2ereadPlace(ptr %v2, ptr %v5, ptr %t1564)
  store ptr %t1566, ptr %l810
  br label %bb352
bb351:
  br label %bb366
bb352:
  %t1567 = load ptr, ptr %l810, !tbaa !29
  store ptr %t1567, ptr %l47, !tbaa !29
  %t1568 = load ptr, ptr %l47, !tbaa !29
  %t1570 = icmp eq ptr %t1568, null
  br i1 %t1570, label %bb353, label %bb354
bb353:
  store i1 true, ptr %l813, !tbaa !21
  br label %bb356
bb354:
  %t1572 = load ptr, ptr %l0, !tbaa !29
  %t1573 = load ptr, ptr %l47, !tbaa !29
  %t1576 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eplaceWritable(ptr %v0, ptr %v5, ptr %t1572, ptr %t1573)
  store i1 %t1576, ptr %l816
  br label %bb355
bb355:
  %t1577 = load i1, ptr %l816, !tbaa !21
  %t1578 = xor i1 %t1577, true
  store i1 %t1578, ptr %l813, !tbaa !21
  br label %bb356
bb356:
  %t1580 = load i1, ptr %l813, !tbaa !21
  br i1 %t1580, label %bb357, label %bb358
bb357:
  store %olang.scope zeroinitializer, ptr %s27
  %t1581 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1581, ptr %l818, !tbaa !29
  %t1582 = load ptr, ptr %l0, !tbaa !29
  %t1583 = load ptr, ptr %l3, !tbaa !29
  %t1586 = call %"compiler/source:Span" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eoperandAt(ptr %v0, ptr %v1, ptr %t1582, ptr %t1583)
  store %"compiler/source:Span" %t1586, ptr %l821
  br label %bb359
bb358:
  br label %bb363
bb359:
  %t1587 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eVacateNotPlace(ptr %s27)
  store %"compiler/diagmsg:Msg" %t1587, ptr %l822
  br label %bb360
bb360:
  %t1588 = load ptr, ptr %l818, !tbaa !29
  %t1589 = load %"compiler/source:Span", ptr %l821
  %t1590 = load %"compiler/diagmsg:Msg", ptr %l822
  %t1591 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %s27, ptr %t1588, %"compiler/source:Span" %t1589, %"compiler/diagmsg:Msg" %t1590)
  store i64 %t1591, ptr %l823
  br label %bb361
bb361:
  %t1592 = load ptr, ptr %l0, !tbaa !29
  %t1593 = load %"compiler/source:Span", ptr %l1
  %t1596 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunknown(ptr %v0, ptr %v5, ptr %t1592, %"compiler/source:Span" %t1593)
  store ptr %t1596, ptr %l826
  br label %bb362
bb362:
  %t1597 = load ptr, ptr %l826, !tbaa !29
  call void @__olang_scope_close(ptr %s27)
  call void @__olang_scope_close(ptr %s0)
  store ptr %t1597, ptr %rv
  br label %ret
bb363:
  %t1599 = load ptr, ptr %l0, !tbaa !29
  %t1600 = load ptr, ptr %l47, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2enoteWrite(ptr %v0, ptr %v5, ptr %t1599, ptr %t1600)
  br label %bb364
bb364:
  %t1603 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t1603, ptr %l830
  %t1604 = load ptr, ptr %l47, !tbaa !29
  %t1606 = call i32 @compiler_2ftyped_2ecompiler_2ftyped_3aLvalue_2eType(ptr %v5, ptr %t1604)
  store i32 %t1606, ptr %l832
  br label %bb365
bb365:
  %t1607 = load ptr, ptr %l47, !tbaa !29
  store { i64, [5 x i64] } zeroinitializer, ptr %t1608
  %t1609 = getelementptr { i64, [5 x i64] }, ptr %t1608, i32 0, i32 0
  store i64 4, ptr %t1609
  %t1610 = load %"compiler/source:Span", ptr %l830
  %t1611 = insertvalue { %"compiler/source:Span", i32, ptr } undef, %"compiler/source:Span" %t1610, 0
  %t1612 = load i32, ptr %l832, !tbaa !23
  %t1613 = insertvalue { %"compiler/source:Span", i32, ptr } %t1611, i32 %t1612, 1
  %t1615 = insertvalue { %"compiler/source:Span", i32, ptr } %t1613, ptr %t1607, 2
  %t1616 = getelementptr { i64, [5 x i64] }, ptr %t1608, i32 0, i32 1
  store { %"compiler/source:Span", i32, ptr } %t1615, ptr %t1616
  %t1617 = load { i64, [5 x i64] }, ptr %t1608
  %t1619 = call ptr @__olang_scope_alloc_a(ptr %v5, i64 48, i64 8)
  store { i64, [5 x i64] } %t1617, ptr %t1619
  call void @__olang_scope_close(ptr %s0)
  store ptr %t1619, ptr %rv
  br label %ret
bb366:
  %t1621 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t1623 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v3, ptr %s0, { i64, ptr } %t1621, { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d89, i32 0, i32 1) })
  store i1 %t1623, ptr %l837
  br label %bb367
bb367:
  %t1624 = load i1, ptr %l837, !tbaa !21
  br i1 %t1624, label %bb368, label %bb369
bb368:
  %t1625 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t1627 = extractvalue { i64, ptr } %t1625, 0
  %t1629 = icmp eq i64 %t1627, 1
  store i1 %t1629, ptr %l838, !tbaa !21
  br label %bb370
bb369:
  store i1 false, ptr %l838, !tbaa !21
  br label %bb370
bb370:
  %t1631 = load i1, ptr %l838, !tbaa !21
  br i1 %t1631, label %bb371, label %bb372
bb371:
  %t1632 = load ptr, ptr %l0, !tbaa !29
  %t1634 = getelementptr %"compiler/check:Checker", ptr %t1632, i32 0, i32 1
  %t1635 = load ptr, ptr %t1634, !tbaa !29
  store ptr %t1635, ptr %l844, !tbaa !29
  %t1636 = load ptr, ptr %l0, !tbaa !29
  %t1638 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t1636)
  store ptr %t1638, ptr %l846
  br label %bb373
bb372:
  store i1 false, ptr %l842, !tbaa !21
  br label %bb375
bb373:
  %t1639 = load ptr, ptr %l846, !tbaa !29
  %t1641 = getelementptr %"compiler/check:frame", ptr %t1639, i32 0, i32 1
  %t1642 = load i64, ptr %t1641, !tbaa !24
  %t1643 = load ptr, ptr %l844, !tbaa !29
  %t1645 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eLibrary(ptr %v0, ptr %t1643, i64 %t1642)
  store i1 %t1645, ptr %l849
  br label %bb374
bb374:
  %t1646 = load i1, ptr %l849, !tbaa !21
  store i1 %t1646, ptr %l842, !tbaa !21
  br label %bb375
bb375:
  %t1647 = load i1, ptr %l842, !tbaa !21
  br i1 %t1647, label %bb376, label %bb377
bb376:
  store %olang.scope zeroinitializer, ptr %s28
  %t1648 = load ptr, ptr %l4, !tbaa !29
  %t1650 = call ptr @compiler_2fcheck_2ereadPlace(ptr %v2, ptr %v5, ptr %t1648)
  store ptr %t1650, ptr %l851
  br label %bb378
bb377:
  br label %bb395
bb378:
  %t1651 = load ptr, ptr %l851, !tbaa !29
  store ptr %t1651, ptr %l48, !tbaa !29
  %t1652 = load ptr, ptr %l48, !tbaa !29
  %t1654 = icmp eq ptr %t1652, null
  br i1 %t1654, label %bb379, label %bb380
bb379:
  store i1 true, ptr %l854, !tbaa !21
  br label %bb382
bb380:
  %t1656 = load ptr, ptr %l0, !tbaa !29
  %t1657 = load ptr, ptr %l48, !tbaa !29
  %t1660 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eplaceWritable(ptr %v0, ptr %v5, ptr %t1656, ptr %t1657)
  store i1 %t1660, ptr %l857
  br label %bb381
bb381:
  %t1661 = load i1, ptr %l857, !tbaa !21
  %t1662 = xor i1 %t1661, true
  store i1 %t1662, ptr %l854, !tbaa !21
  br label %bb382
bb382:
  %t1664 = load i1, ptr %l854, !tbaa !21
  br i1 %t1664, label %bb383, label %bb384
bb383:
  store %olang.scope zeroinitializer, ptr %s29
  %t1665 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1665, ptr %l859, !tbaa !29
  %t1666 = load ptr, ptr %l0, !tbaa !29
  %t1667 = load ptr, ptr %l3, !tbaa !29
  %t1670 = call %"compiler/source:Span" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eoperandAt(ptr %v0, ptr %v1, ptr %t1666, ptr %t1667)
  store %"compiler/source:Span" %t1670, ptr %l862
  br label %bb385
bb384:
  br label %bb389
bb385:
  %t1671 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eVacateNotPlace(ptr %s29)
  store %"compiler/diagmsg:Msg" %t1671, ptr %l863
  br label %bb386
bb386:
  %t1672 = load ptr, ptr %l859, !tbaa !29
  %t1673 = load %"compiler/source:Span", ptr %l862
  %t1674 = load %"compiler/diagmsg:Msg", ptr %l863
  %t1675 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %s29, ptr %t1672, %"compiler/source:Span" %t1673, %"compiler/diagmsg:Msg" %t1674)
  store i64 %t1675, ptr %l864
  br label %bb387
bb387:
  %t1676 = load ptr, ptr %l0, !tbaa !29
  %t1677 = load %"compiler/source:Span", ptr %l1
  %t1680 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunknown(ptr %v0, ptr %v5, ptr %t1676, %"compiler/source:Span" %t1677)
  store ptr %t1680, ptr %l867
  br label %bb388
bb388:
  %t1681 = load ptr, ptr %l867, !tbaa !29
  call void @__olang_scope_close(ptr %s29)
  call void @__olang_scope_close(ptr %s28)
  call void @__olang_scope_close(ptr %s0)
  store ptr %t1681, ptr %rv
  br label %ret
bb389:
  %t1683 = load ptr, ptr %l0, !tbaa !29
  %t1685 = getelementptr %"compiler/check:Checker", ptr %t1683, i32 0, i32 37
  %t1687 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aStmt_26_3e_2eLen_3ccompiler_2ftyped_3aStmt_26_3e(ptr %v0, ptr %t1685)
  store i64 %t1687, ptr %l871
  br label %bb390
bb390:
  %t1688 = load i64, ptr %l871, !tbaa !24
  store i64 %t1688, ptr %l49, !tbaa !24
  %t1689 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1689, ptr %l872, !tbaa !29
  %t1690 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t1690, ptr %l873
  %t1691 = load ptr, ptr %l48, !tbaa !29
  store ptr %t1691, ptr %l874, !tbaa !29
  %t1692 = load { i64, ptr }, ptr %l6, !tbaa !27
  store { i64, ptr } %t1692, ptr %l875, !tbaa !27
  %t1693 = getelementptr { i64, ptr }, ptr %l875, i32 0, i32 1
  %t1694 = load ptr, ptr %t1693, !tbaa !27
  %t1695 = getelementptr ptr, ptr %t1694, i64 0
  %t1696 = load ptr, ptr %t1695, !tbaa !39
  store ptr %t1696, ptr %l876, !tbaa !29
  %t1697 = load { i64, ptr }, ptr %l6, !tbaa !27
  store { i64, ptr } %t1697, ptr %l877, !tbaa !27
  %t1698 = getelementptr { i64, ptr }, ptr %l877, i32 0, i32 1
  %t1699 = load ptr, ptr %t1698, !tbaa !27
  %t1700 = getelementptr ptr, ptr %t1699, i64 0
  %t1701 = load ptr, ptr %t1700, !tbaa !39
  %t1703 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v4, ptr %t1701)
  store %"compiler/source:Span" %t1703, ptr %l879
  br label %bb391
bb391:
  %t1704 = load ptr, ptr %l872, !tbaa !29
  %t1705 = load %"compiler/source:Span", ptr %l873
  %t1706 = load ptr, ptr %l874, !tbaa !29
  %t1707 = load ptr, ptr %l876, !tbaa !29
  %t1708 = load %"compiler/source:Span", ptr %l879
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2estoreInto(ptr %v0, ptr %v5, ptr %v4, ptr %s28, ptr %t1704, %"compiler/source:Span" %t1705, ptr %t1706, ptr %t1707, %"compiler/source:Span" %t1708, ptr null, i1 true)
  br label %bb392
bb392:
  %t1709 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t1709, ptr %l880
  %t1710 = load i32, ptr @G_2ecompiler_2ftypes_2eVoidT, !tbaa !23
  store i32 %t1710, ptr %l881, !tbaa !23
  %t1711 = load ptr, ptr %l0, !tbaa !29
  %t1713 = getelementptr %"compiler/check:Checker", ptr %t1711, i32 0, i32 37
  %t1714 = load i64, ptr %l49, !tbaa !24
  %t1717 = call { i64, ptr } @compiler_2fcheck_2egather_3ccompiler_2ftyped_3aStmt_26_3e(ptr %v0, ptr %v0, ptr %t1713, i64 %t1714)
  store { i64, ptr } %t1717, ptr %l885
  br label %bb393
bb393:
  %t1718 = load { i64, ptr }, ptr %l885, !tbaa !27
  %t1719 = call %"compiler/typed:Seq" @compiler_2ftyped_3aSeq_2ector(ptr %v0, ptr %v5, ptr %v5, { i64, ptr } %t1718, ptr null, i1 false)
  store %"compiler/typed:Seq" %t1719, ptr %l886
  br label %bb394
bb394:
  %t1720 = load %"compiler/typed:Seq", ptr %l886
  %t1721 = call ptr @__olang_scope_alloc_a(ptr %v5, i64 32, i64 8)
  store %"compiler/typed:Seq" %t1720, ptr %t1721
  store { i64, [5 x i64] } zeroinitializer, ptr %t1722
  %t1723 = getelementptr { i64, [5 x i64] }, ptr %t1722, i32 0, i32 0
  store i64 12, ptr %t1723
  %t1724 = load %"compiler/source:Span", ptr %l880
  %t1725 = insertvalue { %"compiler/source:Span", i32, ptr } undef, %"compiler/source:Span" %t1724, 0
  %t1726 = load i32, ptr %l881, !tbaa !23
  %t1727 = insertvalue { %"compiler/source:Span", i32, ptr } %t1725, i32 %t1726, 1
  %t1729 = insertvalue { %"compiler/source:Span", i32, ptr } %t1727, ptr %t1721, 2
  %t1730 = getelementptr { i64, [5 x i64] }, ptr %t1722, i32 0, i32 1
  store { %"compiler/source:Span", i32, ptr } %t1729, ptr %t1730
  %t1731 = load { i64, [5 x i64] }, ptr %t1722
  %t1733 = call ptr @__olang_scope_alloc_a(ptr %v5, i64 48, i64 8)
  store { i64, [5 x i64] } %t1731, ptr %t1733
  call void @__olang_scope_close(ptr %s28)
  call void @__olang_scope_close(ptr %s0)
  store ptr %t1733, ptr %rv
  br label %ret
bb395:
  %t1735 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t1737 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %v3, ptr %s0, { i64, ptr } %t1735, { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d90, i32 0, i32 1) })
  store i1 %t1737, ptr %l891
  br label %bb396
bb396:
  %t1738 = load i1, ptr %l891, !tbaa !21
  br i1 %t1738, label %bb397, label %bb398
bb397:
  store %olang.scope zeroinitializer, ptr %s30
  store i32 24, ptr %l50
  store i64 0, ptr %l51, !tbaa !24
  %t1740 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t1742 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v3, ptr %s30, { i64, ptr } %t1740, { i64, ptr } { i64 11, ptr getelementptr inbounds (<{ i64, [11 x i8] }>, ptr @.d91, i32 0, i32 1) })
  store i1 %t1742, ptr %l894
  br label %bb399
bb398:
  br label %bb487
bb399:
  %t1743 = load i1, ptr %l894, !tbaa !21
  br i1 %t1743, label %bb400, label %bb401
bb400:
  store i32 25, ptr %l50
  store i64 1, ptr %l51, !tbaa !24
  br label %bb418
bb401:
  store %olang.scope zeroinitializer, ptr %s32
  %t1745 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t1747 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v3, ptr %s32, { i64, ptr } %t1745, { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d92, i32 0, i32 1) })
  store i1 %t1747, ptr %l897
  br label %bb402
bb402:
  %t1748 = load i1, ptr %l897, !tbaa !21
  br i1 %t1748, label %bb403, label %bb404
bb403:
  store i32 26, ptr %l50
  store i64 1, ptr %l51, !tbaa !24
  br label %bb417
bb404:
  store %olang.scope zeroinitializer, ptr %s34
  %t1750 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t1752 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v3, ptr %s34, { i64, ptr } %t1750, { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d93, i32 0, i32 1) })
  store i1 %t1752, ptr %l900
  br label %bb405
bb405:
  %t1753 = load i1, ptr %l900, !tbaa !21
  br i1 %t1753, label %bb406, label %bb407
bb406:
  store i32 27, ptr %l50
  store i64 1, ptr %l51, !tbaa !24
  br label %bb416
bb407:
  store %olang.scope zeroinitializer, ptr %s36
  %t1755 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t1757 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v3, ptr %s36, { i64, ptr } %t1755, { i64, ptr } { i64 17, ptr getelementptr inbounds (<{ i64, [17 x i8] }>, ptr @.d94, i32 0, i32 1) })
  store i1 %t1757, ptr %l903
  br label %bb408
bb408:
  %t1758 = load i1, ptr %l903, !tbaa !21
  br i1 %t1758, label %bb409, label %bb410
bb409:
  store i32 28, ptr %l50
  store i64 2, ptr %l51, !tbaa !24
  br label %bb415
bb410:
  store %olang.scope zeroinitializer, ptr %s38
  %t1760 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t1762 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v3, ptr %s38, { i64, ptr } %t1760, { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d95, i32 0, i32 1) })
  store i1 %t1762, ptr %l906
  br label %bb411
bb411:
  %t1763 = load i1, ptr %l906, !tbaa !21
  %t1764 = xor i1 %t1763, true
  br i1 %t1764, label %bb412, label %bb413
bb412:
  call void @__olang_scope_close(ptr %s38)
  call void @__olang_scope_close(ptr %s36)
  call void @__olang_scope_close(ptr %s34)
  call void @__olang_scope_close(ptr %s32)
  call void @__olang_scope_close(ptr %s30)
  call void @__olang_scope_close(ptr %s0)
  store ptr null, ptr %rv
  br label %ret
bb413:
  br label %bb414
bb414:
  call void @__olang_scope_close(ptr %s38)
  br label %bb415
bb415:
  call void @__olang_scope_close(ptr %s36)
  br label %bb416
bb416:
  call void @__olang_scope_close(ptr %s34)
  br label %bb417
bb417:
  call void @__olang_scope_close(ptr %s32)
  br label %bb418
bb418:
  %t1767 = load ptr, ptr %l0, !tbaa !29
  %t1769 = getelementptr %"compiler/check:Checker", ptr %t1767, i32 0, i32 1
  %t1770 = load ptr, ptr %t1769, !tbaa !29
  %t1772 = getelementptr %"compiler/generic:Program", ptr %t1770, i32 0, i32 2
  %t1773 = load i32, ptr %l8, !tbaa !23
  %t1776 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsInt(ptr %v0, ptr %t1772, i32 %t1773)
  store i1 %t1776, ptr %l913
  br label %bb419
bb419:
  %t1777 = load i1, ptr %l913, !tbaa !21
  %t1778 = xor i1 %t1777, true
  br i1 %t1778, label %bb420, label %bb421
bb420:
  store %olang.scope zeroinitializer, ptr %s40
  %t1780 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1780, ptr %l915, !tbaa !29
  %t1781 = load %"compiler/source:Span", ptr %l2
  store %"compiler/source:Span" %t1781, ptr %l916
  %t1782 = load ptr, ptr %l0, !tbaa !29
  %t1783 = load i32, ptr %l7, !tbaa !23
  %t1786 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %s40, ptr %t1782, i32 %t1783)
  store { i64, ptr } %t1786, ptr %l919
  br label %bb422
bb421:
  br label %bb426
bb422:
  %t1787 = load { i64, ptr }, ptr %l919, !tbaa !27
  %t1788 = extractvalue { i64, ptr } %t1787, 0
  %t1789 = extractvalue { i64, ptr } %t1787, 1
  %t1790 = mul i64 %t1788, 1
  %t1791 = call ptr @__olang_scope_alloc(ptr %s40, i64 %t1790)
  call void @llvm.memcpy.p0.p0.i64(ptr %t1791, ptr %t1789, i64 %t1790, i1 false)
  %t1792 = insertvalue { i64, ptr } undef, i64 %t1788, 0
  %t1793 = insertvalue { i64, ptr } %t1792, ptr %t1791, 1
  %t1795 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eAtomicNotInteger(ptr %s40, ptr %s40, { i64, ptr } %t1793)
  store %"compiler/diagmsg:Msg" %t1795, ptr %l921
  br label %bb423
bb423:
  %t1796 = load ptr, ptr %l915, !tbaa !29
  %t1797 = load %"compiler/source:Span", ptr %l916
  %t1798 = load %"compiler/diagmsg:Msg", ptr %l921
  %t1799 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %s40, ptr %t1796, %"compiler/source:Span" %t1797, %"compiler/diagmsg:Msg" %t1798)
  store i64 %t1799, ptr %l922
  br label %bb424
bb424:
  %t1800 = load ptr, ptr %l0, !tbaa !29
  %t1801 = load %"compiler/source:Span", ptr %l1
  %t1804 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunknown(ptr %v0, ptr %v5, ptr %t1800, %"compiler/source:Span" %t1801)
  store ptr %t1804, ptr %l925
  br label %bb425
bb425:
  %t1805 = load ptr, ptr %l925, !tbaa !29
  call void @__olang_scope_close(ptr %s40)
  call void @__olang_scope_close(ptr %s30)
  call void @__olang_scope_close(ptr %s0)
  store ptr %t1805, ptr %rv
  br label %ret
bb426:
  %t1807 = load i32, ptr %l8, !tbaa !23
  %t1809 = icmp sgt i32 %t1807, 14
  br i1 %t1809, label %bb427, label %bb428
bb427:
  store %olang.scope zeroinitializer, ptr %s41
  %t1811 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1811, ptr %l929, !tbaa !29
  %t1812 = load %"compiler/source:Span", ptr %l2
  store %"compiler/source:Span" %t1812, ptr %l930
  %t1813 = load ptr, ptr %l0, !tbaa !29
  %t1814 = load i32, ptr %l7, !tbaa !23
  %t1817 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %s41, ptr %t1813, i32 %t1814)
  store { i64, ptr } %t1817, ptr %l933
  br label %bb429
bb428:
  br label %bb433
bb429:
  %t1818 = load { i64, ptr }, ptr %l933, !tbaa !27
  %t1819 = extractvalue { i64, ptr } %t1818, 0
  %t1820 = extractvalue { i64, ptr } %t1818, 1
  %t1821 = mul i64 %t1819, 1
  %t1822 = call ptr @__olang_scope_alloc(ptr %s41, i64 %t1821)
  call void @llvm.memcpy.p0.p0.i64(ptr %t1822, ptr %t1820, i64 %t1821, i1 false)
  %t1823 = insertvalue { i64, ptr } undef, i64 %t1819, 0
  %t1824 = insertvalue { i64, ptr } %t1823, ptr %t1822, 1
  %t1826 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eAtomicWidth(ptr %s41, ptr %s41, { i64, ptr } %t1824)
  store %"compiler/diagmsg:Msg" %t1826, ptr %l935
  br label %bb430
bb430:
  %t1827 = load ptr, ptr %l929, !tbaa !29
  %t1828 = load %"compiler/source:Span", ptr %l930
  %t1829 = load %"compiler/diagmsg:Msg", ptr %l935
  %t1830 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %s41, ptr %t1827, %"compiler/source:Span" %t1828, %"compiler/diagmsg:Msg" %t1829)
  store i64 %t1830, ptr %l936
  br label %bb431
bb431:
  %t1831 = load ptr, ptr %l0, !tbaa !29
  %t1832 = load %"compiler/source:Span", ptr %l1
  %t1835 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunknown(ptr %v0, ptr %v5, ptr %t1831, %"compiler/source:Span" %t1832)
  store ptr %t1835, ptr %l939
  br label %bb432
bb432:
  %t1836 = load ptr, ptr %l939, !tbaa !29
  call void @__olang_scope_close(ptr %s41)
  call void @__olang_scope_close(ptr %s30)
  call void @__olang_scope_close(ptr %s0)
  store ptr %t1836, ptr %rv
  br label %ret
bb433:
  %t1838 = load ptr, ptr %l4, !tbaa !29
  %t1840 = call ptr @compiler_2fcheck_2ereadPlace(ptr %v2, ptr %v5, ptr %t1838)
  store ptr %t1840, ptr %l942
  br label %bb434
bb434:
  %t1841 = load ptr, ptr %l942, !tbaa !29
  store ptr %t1841, ptr %l52, !tbaa !29
  %t1842 = load ptr, ptr %l52, !tbaa !29
  %t1844 = icmp eq ptr %t1842, null
  br i1 %t1844, label %bb435, label %bb436
bb435:
  store %olang.scope zeroinitializer, ptr %s42
  %t1846 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1846, ptr %l945, !tbaa !29
  %t1847 = load ptr, ptr %l0, !tbaa !29
  %t1848 = load ptr, ptr %l3, !tbaa !29
  %t1851 = call %"compiler/source:Span" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eoperandAt(ptr %v0, ptr %v1, ptr %t1847, ptr %t1848)
  store %"compiler/source:Span" %t1851, ptr %l948
  br label %bb437
bb436:
  br label %bb441
bb437:
  %t1852 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eAtomicNotPlace(ptr %s42)
  store %"compiler/diagmsg:Msg" %t1852, ptr %l949
  br label %bb438
bb438:
  %t1853 = load ptr, ptr %l945, !tbaa !29
  %t1854 = load %"compiler/source:Span", ptr %l948
  %t1855 = load %"compiler/diagmsg:Msg", ptr %l949
  %t1856 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %s42, ptr %t1853, %"compiler/source:Span" %t1854, %"compiler/diagmsg:Msg" %t1855)
  store i64 %t1856, ptr %l950
  br label %bb439
bb439:
  %t1857 = load ptr, ptr %l0, !tbaa !29
  %t1858 = load %"compiler/source:Span", ptr %l1
  %t1861 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunknown(ptr %v0, ptr %v5, ptr %t1857, %"compiler/source:Span" %t1858)
  store ptr %t1861, ptr %l953
  br label %bb440
bb440:
  %t1862 = load ptr, ptr %l953, !tbaa !29
  call void @__olang_scope_close(ptr %s42)
  call void @__olang_scope_close(ptr %s30)
  call void @__olang_scope_close(ptr %s0)
  store ptr %t1862, ptr %rv
  br label %ret
bb441:
  %t1864 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1864, ptr %l955, !tbaa !29
  %t1865 = load ptr, ptr %l52, !tbaa !29
  store ptr %t1865, ptr %l956, !tbaa !29
  %t1866 = load ptr, ptr %l0, !tbaa !29
  %t1867 = load ptr, ptr %l3, !tbaa !29
  %t1870 = call %"compiler/source:Span" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eoperandAt(ptr %v0, ptr %v1, ptr %t1866, ptr %t1867)
  store %"compiler/source:Span" %t1870, ptr %l959
  br label %bb442
bb442:
  %t1871 = load ptr, ptr %l955, !tbaa !29
  %t1872 = load ptr, ptr %l956, !tbaa !29
  %t1873 = load %"compiler/source:Span", ptr %l959
  %t1874 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elendsPacked(ptr %v0, ptr %v5, ptr %t1871, ptr %t1872, %"compiler/source:Span" %t1873)
  store i1 %t1874, ptr %l960
  br label %bb443
bb443:
  %t1875 = load i1, ptr %l960, !tbaa !21
  br i1 %t1875, label %bb444, label %bb445
bb444:
  %t1876 = load ptr, ptr %l0, !tbaa !29
  %t1877 = load %"compiler/source:Span", ptr %l1
  %t1880 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunknown(ptr %v0, ptr %v5, ptr %t1876, %"compiler/source:Span" %t1877)
  store ptr %t1880, ptr %l963
  br label %bb446
bb445:
  br label %bb447
bb446:
  %t1881 = load ptr, ptr %l963, !tbaa !29
  call void @__olang_scope_close(ptr %s30)
  call void @__olang_scope_close(ptr %s0)
  store ptr %t1881, ptr %rv
  br label %ret
bb447:
  %t1883 = load i32, ptr %l50, !range !{i32 0, i32 52}
  %t1885 = trunc i64 24 to i32
  %t1886 = icmp eq i32 %t1883, %t1885
  %t1888 = xor i1 %t1886, true
  br i1 %t1888, label %bb448, label %bb449
bb448:
  %t1890 = load ptr, ptr %l0, !tbaa !29
  %t1891 = load ptr, ptr %l52, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2enoteWrite(ptr %v0, ptr %v5, ptr %t1890, ptr %t1891)
  br label %bb450
bb449:
  br label %bb451
bb450:
  br label %bb451
bb451:
  %t1894 = load i32, ptr %l50, !range !{i32 0, i32 52}
  %t1896 = trunc i64 24 to i32
  %t1897 = icmp eq i32 %t1894, %t1896
  %t1899 = xor i1 %t1897, true
  br i1 %t1899, label %bb452, label %bb453
bb452:
  %t1901 = load ptr, ptr %l0, !tbaa !29
  %t1902 = load ptr, ptr %l52, !tbaa !29
  %t1905 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eplaceWritable(ptr %v0, ptr %v5, ptr %t1901, ptr %t1902)
  store i1 %t1905, ptr %l976
  br label %bb454
bb453:
  store i1 false, ptr %l973, !tbaa !21
  br label %bb455
bb454:
  %t1906 = load i1, ptr %l976, !tbaa !21
  %t1907 = xor i1 %t1906, true
  store i1 %t1907, ptr %l973, !tbaa !21
  br label %bb455
bb455:
  %t1909 = load i1, ptr %l973, !tbaa !21
  br i1 %t1909, label %bb456, label %bb457
bb456:
  store %olang.scope zeroinitializer, ptr %s45
  %t1910 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1910, ptr %l978, !tbaa !29
  %t1911 = load ptr, ptr %l0, !tbaa !29
  %t1912 = load ptr, ptr %l3, !tbaa !29
  %t1915 = call %"compiler/source:Span" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eoperandAt(ptr %v0, ptr %v1, ptr %t1911, ptr %t1912)
  store %"compiler/source:Span" %t1915, ptr %l981
  br label %bb458
bb457:
  br label %bb462
bb458:
  %t1916 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eAtomicNotWritable(ptr %s45)
  store %"compiler/diagmsg:Msg" %t1916, ptr %l982
  br label %bb459
bb459:
  %t1917 = load ptr, ptr %l978, !tbaa !29
  %t1918 = load %"compiler/source:Span", ptr %l981
  %t1919 = load %"compiler/diagmsg:Msg", ptr %l982
  %t1920 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %s45, ptr %t1917, %"compiler/source:Span" %t1918, %"compiler/diagmsg:Msg" %t1919)
  store i64 %t1920, ptr %l983
  br label %bb460
bb460:
  %t1921 = load ptr, ptr %l0, !tbaa !29
  %t1922 = load %"compiler/source:Span", ptr %l1
  %t1925 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunknown(ptr %v0, ptr %v5, ptr %t1921, %"compiler/source:Span" %t1922)
  store ptr %t1925, ptr %l986
  br label %bb461
bb461:
  %t1926 = load ptr, ptr %l986, !tbaa !29
  call void @__olang_scope_close(ptr %s45)
  call void @__olang_scope_close(ptr %s30)
  call void @__olang_scope_close(ptr %s0)
  store ptr %t1926, ptr %rv
  br label %ret
bb462:
  %t1928 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t1930 = extractvalue { i64, ptr } %t1928, 0
  %t1931 = load i64, ptr %l51, !tbaa !24
  %t1934 = icmp ne i64 %t1930, %t1931
  br i1 %t1934, label %bb463, label %bb464
bb463:
  store %olang.scope zeroinitializer, ptr %s46
  %t1936 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1936, ptr %l992, !tbaa !29
  %t1937 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t1937, ptr %l993
  %t1938 = load i64, ptr %l51, !tbaa !24
  store i64 %t1938, ptr %l994, !tbaa !24
  %t1939 = load i64, ptr %l51, !tbaa !24
  %t1941 = icmp eq i64 %t1939, 1
  br i1 %t1941, label %bb465, label %bb466
bb464:
  br label %bb471
bb465:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d96, i32 0, i32 1) }, ptr %l997, !tbaa !27
  br label %bb467
bb466:
  store { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d97, i32 0, i32 1) }, ptr %l997, !tbaa !27
  br label %bb467
bb467:
  %t1943 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t1945 = extractvalue { i64, ptr } %t1943, 0
  %t1946 = load i64, ptr %l994, !tbaa !24
  %t1947 = load { i64, ptr }, ptr %l997, !tbaa !27
  %t1949 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eArgCount(ptr %s46, ptr %s46, i64 %t1946, { i64, ptr } %t1947, i64 %t1945)
  store %"compiler/diagmsg:Msg" %t1949, ptr %l1000
  br label %bb468
bb468:
  %t1950 = load ptr, ptr %l992, !tbaa !29
  %t1951 = load %"compiler/source:Span", ptr %l993
  %t1952 = load %"compiler/diagmsg:Msg", ptr %l1000
  %t1953 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %s46, ptr %t1950, %"compiler/source:Span" %t1951, %"compiler/diagmsg:Msg" %t1952)
  store i64 %t1953, ptr %l1001
  br label %bb469
bb469:
  %t1954 = load ptr, ptr %l0, !tbaa !29
  %t1955 = load %"compiler/source:Span", ptr %l1
  %t1958 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunknown(ptr %v0, ptr %v5, ptr %t1954, %"compiler/source:Span" %t1955)
  store ptr %t1958, ptr %l1004
  br label %bb470
bb470:
  %t1959 = load ptr, ptr %l1004, !tbaa !29
  call void @__olang_scope_close(ptr %s46)
  call void @__olang_scope_close(ptr %s30)
  call void @__olang_scope_close(ptr %s0)
  store ptr %t1959, ptr %rv
  br label %ret
bb471:
  %t1961 = load ptr, ptr %l0, !tbaa !29
  %t1963 = getelementptr %"compiler/check:Checker", ptr %t1961, i32 0, i32 36
  %t1965 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2eLen_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %t1963)
  store i64 %t1965, ptr %l1008
  br label %bb472
bb472:
  %t1966 = load i64, ptr %l1008, !tbaa !24
  store i64 %t1966, ptr %l53, !tbaa !24
  %t1967 = load ptr, ptr %l0, !tbaa !29
  %t1969 = getelementptr %"compiler/check:Checker", ptr %t1967, i32 0, i32 36
  store ptr %t1969, ptr %l1010, !tbaa !29
  %t1970 = load %"compiler/source:Span", ptr %l2
  store %"compiler/source:Span" %t1970, ptr %l1011
  %t1971 = load ptr, ptr %l0, !tbaa !29
  %t1973 = getelementptr %"compiler/check:Checker", ptr %t1971, i32 0, i32 1
  %t1974 = load ptr, ptr %t1973, !tbaa !29
  %t1976 = getelementptr %"compiler/generic:Program", ptr %t1974, i32 0, i32 2
  %t1977 = load i32, ptr %l7, !tbaa !23
  %t1978 = load i64, ptr @G_2ecompiler_2ftypes_2eWritable, !tbaa !24
  %t1982 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRef(ptr %v0, ptr %t1976, i32 %t1977, i64 %t1978)
  store i32 %t1982, ptr %l1017
  br label %bb473
bb473:
  %t1983 = load ptr, ptr %l52, !tbaa !29
  store { i64, [5 x i64] } zeroinitializer, ptr %t1984
  %t1985 = getelementptr { i64, [5 x i64] }, ptr %t1984, i32 0, i32 0
  store i64 3, ptr %t1985
  %t1986 = load %"compiler/source:Span", ptr %l1011
  %t1987 = insertvalue { %"compiler/source:Span", i32, ptr } undef, %"compiler/source:Span" %t1986, 0
  %t1988 = load i32, ptr %l1017, !tbaa !23
  %t1989 = insertvalue { %"compiler/source:Span", i32, ptr } %t1987, i32 %t1988, 1
  %t1991 = insertvalue { %"compiler/source:Span", i32, ptr } %t1989, ptr %t1983, 2
  %t1992 = getelementptr { i64, [5 x i64] }, ptr %t1984, i32 0, i32 1
  store { %"compiler/source:Span", i32, ptr } %t1991, ptr %t1992
  %t1993 = load { i64, [5 x i64] }, ptr %t1984
  %t1995 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 48, i64 8)
  store { i64, [5 x i64] } %t1993, ptr %t1995
  %t1996 = load ptr, ptr %l1010, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2ePush_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %v0, ptr %t1996, ptr %t1995)
  br label %bb474
bb474:
  %t1998 = load { i64, ptr }, ptr %l6, !tbaa !27
  store { i64, ptr } %t1998, ptr %l54, !tbaa !27
  store i64 0, ptr %l55, !tbaa !24
  %t2000 = load { i64, ptr }, ptr %l54, !tbaa !27
  %t2002 = extractvalue { i64, ptr } %t2000, 0
  store i64 %t2002, ptr %l56, !tbaa !24
  br label %bb475
bb475:
  %t2004 = load i64, ptr %l55, !tbaa !24
  %t2005 = load i64, ptr %l56, !tbaa !24
  %t2008 = icmp slt i64 %t2004, %t2005
  %t2010 = xor i1 %t2008, true
  br i1 %t2010, label %bb476, label %bb477
bb476:
  br label %bb482
bb477:
  br label %bb478
bb478:
  %t2012 = load { i64, ptr }, ptr %l54, !tbaa !27
  store { i64, ptr } %t2012, ptr %l1028, !tbaa !27
  %t2013 = load i64, ptr %l55, !tbaa !24
  %t2015 = getelementptr { i64, ptr }, ptr %l1028, i32 0, i32 1
  %t2016 = load ptr, ptr %t2015, !tbaa !27
  %t2017 = getelementptr ptr, ptr %t2016, i64 %t2013
  %t2018 = load ptr, ptr %t2017, !tbaa !39
  %t2020 = load ptr, ptr %l0, !tbaa !29
  %t2022 = getelementptr %"compiler/check:Checker", ptr %t2020, i32 0, i32 36
  store ptr %t2022, ptr %l1032, !tbaa !29
  %t2023 = load ptr, ptr %l0, !tbaa !29
  %t2025 = load i32, ptr %l7, !tbaa !23
  %t2029 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eexprTo(ptr %v0, ptr %v4, ptr %v0, ptr %t2023, ptr %t2018, i32 %t2025)
  store ptr %t2029, ptr %l1036
  br label %bb479
bb479:
  %t2030 = load ptr, ptr %l1032, !tbaa !29
  %t2031 = load ptr, ptr %l1036, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2ePush_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %v0, ptr %t2030, ptr %t2031)
  br label %bb480
bb480:
  br label %bb481
bb481:
  %t2032 = load i64, ptr %l55, !tbaa !24
  %t2034 = add i64 %t2032, 1
  store i64 %t2034, ptr %l55, !tbaa !24
  br label %bb475
bb482:
  %t2036 = load i32, ptr %l50, !range !{i32 0, i32 52}
  %t2038 = trunc i64 25 to i32
  %t2039 = icmp eq i32 %t2036, %t2038
  br i1 %t2039, label %bb483, label %bb484
bb483:
  %t2041 = load i32, ptr @G_2ecompiler_2ftypes_2eVoidT, !tbaa !23
  store i32 %t2041, ptr %l1041, !tbaa !23
  br label %bb485
bb484:
  %t2043 = load i32, ptr %l7, !tbaa !23
  store i32 %t2043, ptr %l1041, !tbaa !23
  br label %bb485
bb485:
  %t2045 = load i32, ptr %l1041, !tbaa !23
  %t2046 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t2046, ptr %l1044
  store i32 %t2045, ptr %l1045, !tbaa !23
  %t2048 = load i32, ptr %l50, !range !{i32 0, i32 52}
  store i32 %t2048, ptr %l1046
  store i32 0, ptr %l1047
  %t2049 = load ptr, ptr %l0, !tbaa !29
  %t2051 = getelementptr %"compiler/check:Checker", ptr %t2049, i32 0, i32 36
  %t2052 = load i64, ptr %l53, !tbaa !24
  %t2055 = call { i64, ptr } @compiler_2fcheck_2egather_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %v5, ptr %t2051, i64 %t2052)
  store { i64, ptr } %t2055, ptr %l1051
  br label %bb486
bb486:
  store { i64, [5 x i64] } zeroinitializer, ptr %t2056
  %t2057 = getelementptr { i64, [5 x i64] }, ptr %t2056, i32 0, i32 0
  store i64 9, ptr %t2057
  %t2058 = load %"compiler/source:Span", ptr %l1044
  %t2059 = insertvalue { %"compiler/source:Span", i32, i32, i32, { i64, ptr } } undef, %"compiler/source:Span" %t2058, 0
  %t2060 = load i32, ptr %l1045, !tbaa !23
  %t2061 = insertvalue { %"compiler/source:Span", i32, i32, i32, { i64, ptr } } %t2059, i32 %t2060, 1
  %t2062 = load i32, ptr %l1046, !range !{i32 0, i32 52}
  %t2063 = insertvalue { %"compiler/source:Span", i32, i32, i32, { i64, ptr } } %t2061, i32 %t2062, 2
  %t2064 = load i32, ptr %l1047, !range !{i32 0, i32 3}
  %t2065 = insertvalue { %"compiler/source:Span", i32, i32, i32, { i64, ptr } } %t2063, i32 %t2064, 3
  %t2066 = load { i64, ptr }, ptr %l1051, !tbaa !27
  %t2067 = insertvalue { %"compiler/source:Span", i32, i32, i32, { i64, ptr } } %t2065, { i64, ptr } %t2066, 4
  %t2068 = getelementptr { i64, [5 x i64] }, ptr %t2056, i32 0, i32 1
  store { %"compiler/source:Span", i32, i32, i32, { i64, ptr } } %t2067, ptr %t2068
  %t2069 = load { i64, [5 x i64] }, ptr %t2056
  %t2071 = call ptr @__olang_scope_alloc_a(ptr %v5, i64 48, i64 8)
  store { i64, [5 x i64] } %t2069, ptr %t2071
  call void @__olang_scope_close(ptr %s30)
  call void @__olang_scope_close(ptr %s0)
  store ptr %t2071, ptr %rv
  br label %ret
bb487:
  %t2073 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t2075 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v3, ptr %s0, { i64, ptr } %t2073, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d98, i32 0, i32 1) })
  store i1 %t2075, ptr %l1055
  br label %bb488
bb488:
  %t2076 = load i1, ptr %l1055, !tbaa !21
  br i1 %t2076, label %bb489, label %bb490
bb489:
  %t2077 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t2079 = extractvalue { i64, ptr } %t2077, 0
  %t2081 = icmp eq i64 %t2079, 0
  store i1 %t2081, ptr %l1056, !tbaa !21
  br label %bb491
bb490:
  store i1 false, ptr %l1056, !tbaa !21
  br label %bb491
bb491:
  %t2083 = load i1, ptr %l1056, !tbaa !21
  br i1 %t2083, label %bb492, label %bb493
bb492:
  %t2084 = load ptr, ptr %l4, !tbaa !29
  %t2087 = call i32 @compiler_2fcheck_2etypeOf(ptr %v2, ptr %t2084)
  store i32 %t2087, ptr %l1062
  br label %bb494
bb493:
  br label %bb538
bb494:
  %t2088 = load i32, ptr %l1062, !tbaa !23
  store i32 %t2088, ptr %l59, !tbaa !23
  %t2089 = load ptr, ptr %l0, !tbaa !29
  %t2091 = getelementptr %"compiler/check:Checker", ptr %t2089, i32 0, i32 1
  %t2092 = load ptr, ptr %t2091, !tbaa !29
  store ptr %t2092, ptr %l1064, !tbaa !29
  %t2093 = load ptr, ptr %l0, !tbaa !29
  %t2094 = load i32, ptr %l59, !tbaa !23
  %t2097 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ederef(ptr %v0, ptr %t2093, i32 %t2094)
  store i32 %t2097, ptr %l1067
  br label %bb495
bb495:
  %t2098 = load ptr, ptr %l1064, !tbaa !29
  %t2099 = load i32, ptr %l1067, !tbaa !23
  %t2100 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eUnique(ptr %v0, ptr %t2098, i32 %t2099)
  store i1 %t2100, ptr %l1068
  br label %bb496
bb496:
  %t2101 = load i1, ptr %l1068, !tbaa !21
  br i1 %t2101, label %bb497, label %bb498
bb497:
  store %olang.scope zeroinitializer, ptr %s51
  %t2102 = load ptr, ptr %l0, !tbaa !29
  store ptr %t2102, ptr %l1069, !tbaa !29
  %t2103 = load %"compiler/source:Span", ptr %l2
  store %"compiler/source:Span" %t2103, ptr %l1070
  %t2104 = load ptr, ptr %l0, !tbaa !29
  store ptr %t2104, ptr %l1071, !tbaa !29
  %t2105 = load ptr, ptr %l0, !tbaa !29
  %t2106 = load i32, ptr %l59, !tbaa !23
  %t2109 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ederef(ptr %v0, ptr %t2105, i32 %t2106)
  store i32 %t2109, ptr %l1074
  br label %bb499
bb498:
  br label %bb504
bb499:
  %t2110 = load ptr, ptr %l1071, !tbaa !29
  %t2111 = load i32, ptr %l1074, !tbaa !23
  %t2112 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %s51, ptr %t2110, i32 %t2111)
  store { i64, ptr } %t2112, ptr %l1075
  br label %bb500
bb500:
  %t2113 = load { i64, ptr }, ptr %l1075, !tbaa !27
  %t2114 = extractvalue { i64, ptr } %t2113, 0
  %t2115 = extractvalue { i64, ptr } %t2113, 1
  %t2116 = mul i64 %t2114, 1
  %t2117 = call ptr @__olang_scope_alloc(ptr %s51, i64 %t2116)
  call void @llvm.memcpy.p0.p0.i64(ptr %t2117, ptr %t2115, i64 %t2116, i1 false)
  %t2118 = insertvalue { i64, ptr } undef, i64 %t2114, 0
  %t2119 = insertvalue { i64, ptr } %t2118, ptr %t2117, 1
  %t2121 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eUniqueCopy(ptr %s51, ptr %s51, { i64, ptr } %t2119)
  store %"compiler/diagmsg:Msg" %t2121, ptr %l1077
  br label %bb501
bb501:
  %t2122 = load ptr, ptr %l1069, !tbaa !29
  %t2123 = load %"compiler/source:Span", ptr %l1070
  %t2124 = load %"compiler/diagmsg:Msg", ptr %l1077
  %t2125 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %s51, ptr %t2122, %"compiler/source:Span" %t2123, %"compiler/diagmsg:Msg" %t2124)
  store i64 %t2125, ptr %l1078
  br label %bb502
bb502:
  %t2126 = load ptr, ptr %l0, !tbaa !29
  %t2127 = load %"compiler/source:Span", ptr %l1
  %t2130 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunknown(ptr %v0, ptr %v5, ptr %t2126, %"compiler/source:Span" %t2127)
  store ptr %t2130, ptr %l1081
  br label %bb503
bb503:
  %t2131 = load ptr, ptr %l1081, !tbaa !29
  call void @__olang_scope_close(ptr %s51)
  call void @__olang_scope_close(ptr %s0)
  store ptr %t2131, ptr %rv
  br label %ret
bb504:
  %t2133 = load ptr, ptr %l0, !tbaa !29
  %t2135 = getelementptr %"compiler/check:Checker", ptr %t2133, i32 0, i32 1
  %t2136 = load ptr, ptr %t2135, !tbaa !29
  store ptr %t2136, ptr %l1084, !tbaa !29
  %t2137 = load ptr, ptr %l0, !tbaa !29
  %t2138 = load i32, ptr %l59, !tbaa !23
  %t2141 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ederef(ptr %v0, ptr %t2137, i32 %t2138)
  store i32 %t2141, ptr %l1087
  br label %bb505
bb505:
  %t2142 = load ptr, ptr %l1084, !tbaa !29
  %t2143 = load i32, ptr %l1087, !tbaa !23
  %t2144 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eGenerational(ptr %v0, ptr %t2142, i32 %t2143)
  store i1 %t2144, ptr %l1088
  br label %bb506
bb506:
  %t2145 = load i1, ptr %l1088, !tbaa !21
  br i1 %t2145, label %bb507, label %bb508
bb507:
  %t2146 = load ptr, ptr %l0, !tbaa !29
  %t2147 = load i32, ptr %l59, !tbaa !23
  %t2150 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2edestructs(ptr %v0, ptr %t2146, i32 %t2147)
  store i1 %t2150, ptr %l1092
  br label %bb509
bb508:
  store i1 false, ptr %l1089, !tbaa !21
  br label %bb510
bb509:
  %t2151 = load i1, ptr %l1092, !tbaa !21
  store i1 %t2151, ptr %l1089, !tbaa !21
  br label %bb510
bb510:
  %t2152 = load i1, ptr %l1089, !tbaa !21
  br i1 %t2152, label %bb511, label %bb512
bb511:
  store %olang.scope zeroinitializer, ptr %s52
  %t2153 = load ptr, ptr %l0, !tbaa !29
  store ptr %t2153, ptr %l1093, !tbaa !29
  %t2154 = load %"compiler/source:Span", ptr %l2
  store %"compiler/source:Span" %t2154, ptr %l1094
  %t2155 = load ptr, ptr %l0, !tbaa !29
  store ptr %t2155, ptr %l1095, !tbaa !29
  %t2156 = load ptr, ptr %l0, !tbaa !29
  %t2157 = load i32, ptr %l59, !tbaa !23
  %t2160 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ederef(ptr %v0, ptr %t2156, i32 %t2157)
  store i32 %t2160, ptr %l1098
  br label %bb513
bb512:
  br label %bb518
bb513:
  %t2161 = load ptr, ptr %l1095, !tbaa !29
  %t2162 = load i32, ptr %l1098, !tbaa !23
  %t2163 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %s52, ptr %t2161, i32 %t2162)
  store { i64, ptr } %t2163, ptr %l1099
  br label %bb514
bb514:
  %t2164 = load { i64, ptr }, ptr %l1099, !tbaa !27
  %t2165 = extractvalue { i64, ptr } %t2164, 0
  %t2166 = extractvalue { i64, ptr } %t2164, 1
  %t2167 = mul i64 %t2165, 1
  %t2168 = call ptr @__olang_scope_alloc(ptr %s52, i64 %t2167)
  call void @llvm.memcpy.p0.p0.i64(ptr %t2168, ptr %t2166, i64 %t2167, i1 false)
  %t2169 = insertvalue { i64, ptr } undef, i64 %t2165, 0
  %t2170 = insertvalue { i64, ptr } %t2169, ptr %t2168, 1
  %t2172 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eGenCopyDestruct(ptr %s52, ptr %s52, { i64, ptr } %t2170)
  store %"compiler/diagmsg:Msg" %t2172, ptr %l1101
  br label %bb515
bb515:
  %t2173 = load ptr, ptr %l1093, !tbaa !29
  %t2174 = load %"compiler/source:Span", ptr %l1094
  %t2175 = load %"compiler/diagmsg:Msg", ptr %l1101
  %t2176 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %s52, ptr %t2173, %"compiler/source:Span" %t2174, %"compiler/diagmsg:Msg" %t2175)
  store i64 %t2176, ptr %l1102
  br label %bb516
bb516:
  %t2177 = load ptr, ptr %l0, !tbaa !29
  %t2178 = load %"compiler/source:Span", ptr %l1
  %t2181 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunknown(ptr %v0, ptr %v5, ptr %t2177, %"compiler/source:Span" %t2178)
  store ptr %t2181, ptr %l1105
  br label %bb517
bb517:
  %t2182 = load ptr, ptr %l1105, !tbaa !29
  call void @__olang_scope_close(ptr %s52)
  call void @__olang_scope_close(ptr %s0)
  store ptr %t2182, ptr %rv
  br label %ret
bb518:
  %t2184 = load ptr, ptr %l0, !tbaa !29
  %t2185 = load i32, ptr %l59, !tbaa !23
  %t2188 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisRef(ptr %v0, ptr %t2184, i32 %t2185)
  store i1 %t2188, ptr %l1109
  br label %bb519
bb519:
  %t2189 = load i1, ptr %l1109, !tbaa !21
  br i1 %t2189, label %bb520, label %bb521
bb520:
  %t2190 = load ptr, ptr %l0, !tbaa !29
  store ptr %t2190, ptr %l1111, !tbaa !29
  %t2191 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t2191, ptr %l1112
  %t2192 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t2192, ptr %l1113
  %t2193 = load ptr, ptr %l0, !tbaa !29
  %t2195 = getelementptr %"compiler/check:Checker", ptr %t2193, i32 0, i32 1
  %t2196 = load ptr, ptr %t2195, !tbaa !29
  %t2198 = getelementptr %"compiler/generic:Program", ptr %t2196, i32 0, i32 2
  %t2199 = load i32, ptr %l59, !tbaa !23
  %t2202 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eReferent(ptr %v0, ptr %t2198, i32 %t2199)
  store i32 %t2202, ptr %l1118
  br label %bb522
bb521:
  %t2203 = load ptr, ptr %l4, !tbaa !29
  store ptr %t2203, ptr %l1110, !tbaa !29
  br label %bb524
bb522:
  %t2205 = load ptr, ptr %l4, !tbaa !29
  store { i64, [4 x i64] } zeroinitializer, ptr %t2206
  %t2207 = getelementptr { i64, [4 x i64] }, ptr %t2206, i32 0, i32 0
  store i64 2, ptr %t2207
  %t2208 = load %"compiler/source:Span", ptr %l1113
  %t2209 = insertvalue { %"compiler/source:Span", i32, ptr } undef, %"compiler/source:Span" %t2208, 0
  %t2210 = load i32, ptr %l1118, !tbaa !23
  %t2211 = insertvalue { %"compiler/source:Span", i32, ptr } %t2209, i32 %t2210, 1
  %t2213 = insertvalue { %"compiler/source:Span", i32, ptr } %t2211, ptr %t2205, 2
  %t2214 = getelementptr { i64, [4 x i64] }, ptr %t2206, i32 0, i32 1
  store { %"compiler/source:Span", i32, ptr } %t2213, ptr %t2214
  %t2215 = load { i64, [4 x i64] }, ptr %t2206
  %t2217 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 40, i64 8)
  store { i64, [4 x i64] } %t2215, ptr %t2217
  %t2218 = load ptr, ptr %l1111, !tbaa !29
  %t2219 = load %"compiler/source:Span", ptr %l1112
  %t2221 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eread(ptr %v0, ptr %v2, ptr %v2, ptr %t2218, %"compiler/source:Span" %t2219, ptr %t2217)
  store ptr %t2221, ptr %l1122
  br label %bb523
bb523:
  %t2222 = load ptr, ptr %l1122, !tbaa !29
  store ptr %t2222, ptr %l1110, !tbaa !29
  br label %bb524
bb524:
  %t2223 = load ptr, ptr %l1110, !tbaa !29
  store ptr %t2223, ptr %l60, !tbaa !29
  %t2224 = load ptr, ptr %l60, !tbaa !29
  %t2226 = call i1 @compiler_2fcheck_2eexistingValue(ptr %v2, ptr %t2224)
  store i1 %t2226, ptr %l1125
  br label %bb525
bb525:
  %t2227 = load i1, ptr %l1125, !tbaa !21
  %t2228 = xor i1 %t2227, true
  br i1 %t2228, label %bb526, label %bb527
bb526:
  %t2230 = load ptr, ptr %l60, !tbaa !29
  call void @__olang_scope_close(ptr %s0)
  store ptr %t2230, ptr %rv
  br label %ret
bb527:
  br label %bb528
bb528:
  %t2233 = load ptr, ptr %l0, !tbaa !29
  store ptr %t2233, ptr %l1129, !tbaa !29
  %t2234 = load ptr, ptr %l60, !tbaa !29
  %t2237 = call i32 @compiler_2fcheck_2etypeOf(ptr %v2, ptr %t2234)
  store i32 %t2237, ptr %l1132
  br label %bb529
bb529:
  %t2238 = load ptr, ptr %l1129, !tbaa !29
  %t2239 = load i32, ptr %l1132, !tbaa !23
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ewantCopy(ptr %v0, ptr %t2238, i32 %t2239, i64 0)
  br label %bb530
bb530:
  %t2240 = load ptr, ptr %l60, !tbaa !29
  %t2242 = call %"compiler/source:Span" @compiler_2ftyped_2ecompiler_2ftyped_3aExpr_2eSpan(ptr %v2, ptr %t2240)
  store %"compiler/source:Span" %t2242, ptr %l1134
  br label %bb531
bb531:
  %t2243 = load %"compiler/source:Span", ptr %l1134
  store %"compiler/source:Span" %t2243, ptr %l61
  %t2244 = load ptr, ptr %l0, !tbaa !29
  %t2246 = getelementptr %"compiler/check:Checker", ptr %t2244, i32 0, i32 36
  %t2248 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2eLen_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %t2246)
  store i64 %t2248, ptr %l1137
  br label %bb532
bb532:
  %t2249 = load i64, ptr %l1137, !tbaa !24
  store i64 %t2249, ptr %l62, !tbaa !24
  %t2250 = load ptr, ptr %l0, !tbaa !29
  %t2252 = getelementptr %"compiler/check:Checker", ptr %t2250, i32 0, i32 36
  %t2253 = load ptr, ptr %l60, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2ePush_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %v2, ptr %t2252, ptr %t2253)
  br label %bb533
bb533:
  %t2256 = load %"compiler/source:Span", ptr %l61
  store %"compiler/source:Span" %t2256, ptr %l1141
  %t2257 = load ptr, ptr %l60, !tbaa !29
  %t2260 = call i32 @compiler_2fcheck_2etypeOf(ptr %v2, ptr %t2257)
  store i32 %t2260, ptr %l1144
  br label %bb534
bb534:
  store i32 4, ptr %l1145
  %t2261 = load ptr, ptr %l0, !tbaa !29
  %t2263 = getelementptr %"compiler/check:Checker", ptr %t2261, i32 0, i32 36
  %t2264 = load i64, ptr %l62, !tbaa !24
  %t2267 = call { i64, ptr } @compiler_2fcheck_2egather_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %v0, ptr %t2263, i64 %t2264)
  store { i64, ptr } %t2267, ptr %l1149
  br label %bb535
bb535:
  %t2268 = load ptr, ptr %l0, !tbaa !29
  %t2269 = load %"compiler/source:Span", ptr %l61
  %t2273 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esite(ptr %v0, ptr %t2268, i32 1, %"compiler/source:Span" %t2269)
  store i32 %t2273, ptr %l1153
  br label %bb536
bb536:
  %t2274 = load i32, ptr %l1145, !range !{i32 0, i32 5}
  %t2275 = load { i64, ptr }, ptr %l1149, !tbaa !27
  %t2276 = load i32, ptr %l1153, !tbaa !23
  %t2278 = call %"compiler/typed:Make" @compiler_2ftyped_3aMake_2ector(ptr %v0, ptr %v5, ptr %v5, i32 %t2274, i64 0, { i64, ptr } %t2275, ptr null, i32 %t2276, i32 0, i1 false)
  store %"compiler/typed:Make" %t2278, ptr %l1155
  br label %bb537
bb537:
  %t2279 = load %"compiler/typed:Make", ptr %l1155
  %t2280 = call ptr @__olang_scope_alloc_a(ptr %v5, i64 56, i64 8)
  store %"compiler/typed:Make" %t2279, ptr %t2280
  store { i64, [5 x i64] } zeroinitializer, ptr %t2281
  %t2282 = getelementptr { i64, [5 x i64] }, ptr %t2281, i32 0, i32 0
  store i64 7, ptr %t2282
  %t2283 = load %"compiler/source:Span", ptr %l1141
  %t2284 = insertvalue { %"compiler/source:Span", i32, ptr } undef, %"compiler/source:Span" %t2283, 0
  %t2285 = load i32, ptr %l1144, !tbaa !23
  %t2286 = insertvalue { %"compiler/source:Span", i32, ptr } %t2284, i32 %t2285, 1
  %t2288 = insertvalue { %"compiler/source:Span", i32, ptr } %t2286, ptr %t2280, 2
  %t2289 = getelementptr { i64, [5 x i64] }, ptr %t2281, i32 0, i32 1
  store { %"compiler/source:Span", i32, ptr } %t2288, ptr %t2289
  %t2290 = load { i64, [5 x i64] }, ptr %t2281
  %t2292 = call ptr @__olang_scope_alloc_a(ptr %v5, i64 48, i64 8)
  store { i64, [5 x i64] } %t2290, ptr %t2292
  call void @__olang_scope_close(ptr %s0)
  store ptr %t2292, ptr %rv
  br label %ret
bb538:
  %t2294 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t2296 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v3, ptr %s0, { i64, ptr } %t2294, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d99, i32 0, i32 1) })
  store i1 %t2296, ptr %l1160
  br label %bb539
bb539:
  %t2297 = load i1, ptr %l1160, !tbaa !21
  br i1 %t2297, label %bb540, label %bb541
bb540:
  %t2298 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t2300 = extractvalue { i64, ptr } %t2298, 0
  %t2302 = icmp eq i64 %t2300, 0
  store i1 %t2302, ptr %l1161, !tbaa !21
  br label %bb542
bb541:
  store i1 false, ptr %l1161, !tbaa !21
  br label %bb542
bb542:
  %t2304 = load i1, ptr %l1161, !tbaa !21
  br i1 %t2304, label %bb543, label %bb544
bb543:
  store %olang.scope zeroinitializer, ptr %s54
  %t2305 = load ptr, ptr %l0, !tbaa !29
  %t2306 = load %"compiler/source:Span", ptr %l2
  %t2309 = getelementptr %"compiler/check:Checker", ptr %t2305, i32 0, i32 47
  store %"compiler/source:Span" %t2306, ptr %t2309
  %t2310 = load ptr, ptr %l0, !tbaa !29
  %t2311 = load i32, ptr %l7, !tbaa !23
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2epartHashes(ptr %v0, ptr %t2310, i32 %t2311, i64 0)
  br label %bb545
bb544:
  br label %bb551
bb545:
  %t2314 = load ptr, ptr %l0, !tbaa !29
  store ptr %t2314, ptr %l1169, !tbaa !29
  %t2315 = call %"compiler/source:Span" @compiler_2fsource_3aSpan_2ector(ptr %s54, i32 -1, i32 -1)
  store %"compiler/source:Span" %t2315, ptr %l1170
  br label %bb546
bb546:
  %t2316 = load %"compiler/source:Span", ptr %l1170
  %t2317 = load ptr, ptr %l1169, !tbaa !29
  %t2318 = getelementptr %"compiler/check:Checker", ptr %t2317, i32 0, i32 47
  store %"compiler/source:Span" %t2316, ptr %t2318
  %t2319 = load ptr, ptr %l0, !tbaa !29
  store ptr %t2319, ptr %l1171, !tbaa !29
  %t2320 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t2320, ptr %l1172
  %t2321 = load ptr, ptr %l0, !tbaa !29
  %t2323 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ei64(ptr %v0, ptr %t2321)
  store i32 %t2323, ptr %l1174
  br label %bb547
bb547:
  %t2324 = load i32, ptr %l7, !tbaa !23
  store { i64, [3 x i64] } zeroinitializer, ptr %t2325
  %t2326 = getelementptr { i64, [3 x i64] }, ptr %t2325, i32 0, i32 0
  store i64 4, ptr %t2326
  %t2328 = insertvalue { i32, i32 } undef, i32 1, 0
  %t2330 = insertvalue { i32, i32 } %t2328, i32 %t2324, 1
  %t2331 = getelementptr { i64, [3 x i64] }, ptr %t2325, i32 0, i32 1
  store { i32, i32 } %t2330, ptr %t2331
  %t2332 = load { i64, [3 x i64] }, ptr %t2325
  %t2334 = call ptr @__olang_scope_alloc_a(ptr %v5, i64 32, i64 8)
  store { i64, [3 x i64] } %t2332, ptr %t2334
  store ptr %t2334, ptr %l1178, !tbaa !29
  %t2335 = load ptr, ptr %l0, !tbaa !29
  store ptr %t2335, ptr %l1179, !tbaa !29
  %t2336 = load ptr, ptr %l0, !tbaa !29
  %t2337 = load ptr, ptr %l4, !tbaa !29
  %t2338 = load %"compiler/source:Span", ptr %l1
  %t2342 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2evalue(ptr %v0, ptr %v2, ptr %v2, ptr %t2336, ptr %t2337, %"compiler/source:Span" %t2338)
  store ptr %t2342, ptr %l1183
  br label %bb548
bb548:
  %t2343 = load ptr, ptr %l1179, !tbaa !29
  %t2344 = load ptr, ptr %l1183, !tbaa !29
  %t2345 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eone(ptr %v0, ptr %v2, ptr %v0, ptr %t2343, ptr %t2344)
  store { i64, ptr } %t2345, ptr %l1184
  br label %bb549
bb549:
  %t2346 = load ptr, ptr %l1171, !tbaa !29
  %t2347 = load %"compiler/source:Span", ptr %l1172
  %t2348 = load i32, ptr %l1174, !tbaa !23
  %t2349 = load ptr, ptr %l1178, !tbaa !29
  %t2350 = load { i64, ptr }, ptr %l1184, !tbaa !27
  %t2351 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecallOf(ptr %v0, ptr %v5, ptr %v0, ptr %v5, ptr %t2346, %"compiler/source:Span" %t2347, i32 %t2348, ptr %t2349, { i64, ptr } %t2350)
  store ptr %t2351, ptr %l1185
  br label %bb550
bb550:
  %t2352 = load ptr, ptr %l1185, !tbaa !29
  call void @__olang_scope_close(ptr %s54)
  call void @__olang_scope_close(ptr %s0)
  store ptr %t2352, ptr %rv
  br label %ret
bb551:
  call void @__olang_scope_close(ptr %s0)
  store ptr null, ptr %rv
  br label %ret
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

define dso_local { i32, %"compiler/source:Span" } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etextValue(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l1 = alloca ptr
  %l2 = alloca %"compiler/source:Span"
  %l3 = alloca i32
  %l4 = alloca ptr
  %l5 = alloca ptr
  %l6 = alloca i1
  %l16 = alloca ptr
  %l17 = alloca i1
  %l22 = alloca %"compiler/source:Span"
  %l25 = alloca %"compiler/source:Span"
  %l26 = alloca i32
  %rv = alloca { i32, %"compiler/source:Span" }
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
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 30}
  %t8 = icmp eq i64 %t6, 1
  store i1 %t8, ptr %l6, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l6, !tbaa !21
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
  %t20 = load i32, ptr %t19, !range !{i32 0, i32 114}
  store i32 %t20, ptr %l3
  br label %bb5
bb4:
  br label %bb9
bb5:
  %t22 = load i32, ptr %l3, !range !{i32 0, i32 114}
  %t24 = trunc i64 5 to i32
  %t25 = icmp eq i32 %t22, %t24
  br i1 %t25, label %bb6, label %bb7
bb6:
  %t27 = load %"compiler/source:Span", ptr %l2
  %t29 = insertvalue { i32, %"compiler/source:Span" } zeroinitializer, %"compiler/source:Span" %t27, 1
  store { i32, %"compiler/source:Span" } %t29, ptr %rv
  br label %ret
bb7:
  br label %bb8
bb8:
  br label %bb23
bb9:
  %t30 = load ptr, ptr %l1, !tbaa !29
  store ptr %t30, ptr %l16, !tbaa !29
  store i1 false, ptr %l17, !tbaa !21
  %t31 = load ptr, ptr %l16, !tbaa !29
  %t32 = icmp ne ptr %t31, null
  br i1 %t32, label %bb10, label %bb11
bb10:
  %t34 = load ptr, ptr %l16, !tbaa !29
  %t35 = load i64, ptr %t34, !range !{i64 0, i64 30}
  %t37 = icmp eq i64 %t35, 2
  store i1 %t37, ptr %l17, !tbaa !21
  br label %bb11
bb11:
  %t38 = load i1, ptr %l17, !tbaa !21
  br i1 %t38, label %bb12, label %bb13
bb12:
  %t39 = load ptr, ptr %l1, !tbaa !29
  %t41 = getelementptr { i64, [4 x i64] }, ptr %t39, i32 0, i32 1
  %t42 = getelementptr { %"compiler/source:Span", ptr }, ptr %t41, i32 0, i32 1
  %t43 = load ptr, ptr %t42
  store ptr %t43, ptr %l4, !tbaa !29
  br label %bb14
bb13:
  br label %bb18
bb14:
  %t46 = load ptr, ptr %l4, !tbaa !29
  %t49 = call { i32, %"compiler/source:Span" } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etextValue(ptr %v0, ptr %v1, ptr %a0, ptr %t46)
  %t50 = extractvalue { i32, %"compiler/source:Span" } %t49, 1
  %t51 = extractvalue { i32, %"compiler/source:Span" } %t49, 0
  store i32 %t51, ptr %l26
  %t52 = icmp ne i32 %t51, 0
  br i1 %t52, label %bb16, label %ok.53, !prof !99
ok.53:
  store %"compiler/source:Span" %t50, ptr %l25
  br label %bb15
bb15:
  %t54 = load %"compiler/source:Span", ptr %l25
  store %"compiler/source:Span" %t54, ptr %l22
  br label %bb17
bb16:
  %t55 = load i32, ptr %l26, !tbaa !23
  %t56 = lshr i32 %t55, 16
  %t57 = and i32 %t55, 65535
  %t58 = icmp eq i32 %t56, 1
  %t59 = select i1 %t58, i32 1, i32 0
  %t60 = icmp eq i32 %t55, 0
  %t61 = shl i32 %t59, 16
  %t62 = or i32 %t61, %t57
  %t63 = select i1 %t60, i32 0, i32 %t62
  %t65 = insertvalue { i32, %"compiler/source:Span" } zeroinitializer, i32 %t63, 0
  store { i32, %"compiler/source:Span" } %t65, ptr %rv
  br label %ret
bb17:
  %t66 = load %"compiler/source:Span", ptr %l22
  %t67 = insertvalue { i32, %"compiler/source:Span" } zeroinitializer, %"compiler/source:Span" %t66, 1
  store { i32, %"compiler/source:Span" } %t67, ptr %rv
  br label %ret
bb18:
  br i1 true, label %bb19, label %bb20
bb19:
  br label %bb21
bb20:
  br label %bb22
bb21:
  br label %bb23
bb22:
  call void @__olang_check_failed(ptr @olang_loc_ec59a5f60fda0dc9_336029f9ba6be385)
  unreachable
bb23:
  %t69 = insertvalue { i32, %"compiler/source:Span" } zeroinitializer, i32 65536, 0
  store { i32, %"compiler/source:Span" } %t69, ptr %rv
  br label %ret
ret:
  %rr = load { i32, %"compiler/source:Span" }, ptr %rv
  ret { i32, %"compiler/source:Span" } %rr
}

define dso_local { i64, [3 x i64] } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etypeWrittenAt(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca ptr
  %l4 = alloca ptr
  %l9 = alloca { i64, [3 x i64] }
  %rv = alloca { i64, [3 x i64] }
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1, ptr %l2, !tbaa !29
  %t2 = load ptr, ptr %l0, !tbaa !29
  %t4 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t2)
  store ptr %t4, ptr %l4
  br label %bb1
bb1:
  %t5 = load ptr, ptr %l4, !tbaa !29
  %t7 = getelementptr %"compiler/check:frame", ptr %t5, i32 0, i32 1
  %t8 = load i64, ptr %t7, !tbaa !24
  %t11 = load ptr, ptr %l2, !tbaa !29
  %t14 = call { i64, [3 x i64] } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2emarkAt(ptr %v0, ptr %v1, ptr %t11, i64 %t8, ptr %a1)
  store { i64, [3 x i64] } %t14, ptr %l9
  br label %bb2
bb2:
  %t15 = load { i64, [3 x i64] }, ptr %l9
  store { i64, [3 x i64] } %t15, ptr %rv
  br label %ret
ret:
  %rr = load { i64, [3 x i64] }, ptr %rv
  ret { i64, [3 x i64] } %rr
}

define dso_local i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ewithin(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, ptr %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca ptr
  %l4 = alloca ptr
  %l5 = alloca ptr
  %l9 = alloca i1
  %l11 = alloca i1
  %l12 = alloca ptr
  %l13 = alloca i1
  %l21 = alloca i1
  %l22 = alloca ptr
  %l23 = alloca i1
  %l32 = alloca i1
  %l33 = alloca ptr
  %l34 = alloca i1
  %l43 = alloca i1
  %rv = alloca i1
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
  %t7 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esamePlace(ptr %v0, ptr %v1, ptr %v2, ptr %t1, ptr %t2, ptr %t3)
  store i1 %t7, ptr %l9
  br label %bb1
bb1:
  %t8 = load i1, ptr %l9, !tbaa !21
  br i1 %t8, label %bb2, label %bb3
bb2:
  store i1 true, ptr %rv
  br label %ret
bb3:
  br label %bb4
bb4:
  %t10 = load ptr, ptr %l1, !tbaa !29
  store ptr %t10, ptr %l12, !tbaa !29
  store i1 false, ptr %l13, !tbaa !21
  %t11 = load ptr, ptr %l12, !tbaa !29
  %t12 = icmp ne ptr %t11, null
  br i1 %t12, label %bb5, label %bb6
bb5:
  %t14 = load ptr, ptr %l12, !tbaa !29
  %t15 = load i64, ptr %t14, !range !{i64 0, i64 8}
  %t17 = icmp eq i64 %t15, 3
  store i1 %t17, ptr %l13, !tbaa !21
  br label %bb6
bb6:
  %t18 = load i1, ptr %l13, !tbaa !21
  br i1 %t18, label %bb7, label %bb8
bb7:
  %t19 = load ptr, ptr %l1, !tbaa !29
  %t21 = getelementptr { i64, [4 x i64] }, ptr %t19, i32 0, i32 1
  %t22 = getelementptr { %"compiler/source:Span", i32, ptr, i64 }, ptr %t21, i32 0, i32 2
  %t23 = load ptr, ptr %t22
  store ptr %t23, ptr %l3, !tbaa !29
  br label %bb9
bb8:
  br label %bb11
bb9:
  %t25 = load ptr, ptr %l0, !tbaa !29
  %t26 = load ptr, ptr %l3, !tbaa !29
  %t27 = load ptr, ptr %l2, !tbaa !29
  %t31 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ewithin(ptr %v0, ptr %v1, ptr %v2, ptr %t25, ptr %t26, ptr %t27)
  store i1 %t31, ptr %l21
  br label %bb10
bb10:
  %t32 = load i1, ptr %l21, !tbaa !21
  store i1 %t32, ptr %l11, !tbaa !21
  br label %bb30
bb11:
  %t33 = load ptr, ptr %l1, !tbaa !29
  store ptr %t33, ptr %l22, !tbaa !29
  store i1 false, ptr %l23, !tbaa !21
  %t34 = load ptr, ptr %l22, !tbaa !29
  %t35 = icmp ne ptr %t34, null
  br i1 %t35, label %bb12, label %bb13
bb12:
  %t37 = load ptr, ptr %l22, !tbaa !29
  %t38 = load i64, ptr %t37, !range !{i64 0, i64 8}
  %t40 = icmp eq i64 %t38, 4
  store i1 %t40, ptr %l23, !tbaa !21
  br label %bb13
bb13:
  %t41 = load i1, ptr %l23, !tbaa !21
  br i1 %t41, label %bb14, label %bb15
bb14:
  %t42 = load ptr, ptr %l1, !tbaa !29
  %t44 = getelementptr { i64, [4 x i64] }, ptr %t42, i32 0, i32 1
  %t45 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t44, i32 0, i32 2
  %t46 = load ptr, ptr %t45
  store ptr %t46, ptr %l4, !tbaa !29
  br label %bb16
bb15:
  br label %bb18
bb16:
  %t48 = load ptr, ptr %l0, !tbaa !29
  %t49 = load ptr, ptr %l4, !tbaa !29
  %t51 = getelementptr %"compiler/typed:Elem", ptr %t49, i32 0, i32 0
  %t52 = load ptr, ptr %t51, !tbaa !29
  %t53 = load ptr, ptr %l2, !tbaa !29
  %t57 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ewithin(ptr %v0, ptr %v1, ptr %v2, ptr %t48, ptr %t52, ptr %t53)
  store i1 %t57, ptr %l32
  br label %bb17
bb17:
  %t58 = load i1, ptr %l32, !tbaa !21
  store i1 %t58, ptr %l11, !tbaa !21
  br label %bb30
bb18:
  %t59 = load ptr, ptr %l1, !tbaa !29
  store ptr %t59, ptr %l33, !tbaa !29
  store i1 false, ptr %l34, !tbaa !21
  %t60 = load ptr, ptr %l33, !tbaa !29
  %t61 = icmp ne ptr %t60, null
  br i1 %t61, label %bb19, label %bb20
bb19:
  %t63 = load ptr, ptr %l33, !tbaa !29
  %t64 = load i64, ptr %t63, !range !{i64 0, i64 8}
  %t66 = icmp eq i64 %t64, 5
  store i1 %t66, ptr %l34, !tbaa !21
  br label %bb20
bb20:
  %t67 = load i1, ptr %l34, !tbaa !21
  br i1 %t67, label %bb21, label %bb22
bb21:
  %t68 = load ptr, ptr %l1, !tbaa !29
  %t70 = getelementptr { i64, [4 x i64] }, ptr %t68, i32 0, i32 1
  %t71 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t70, i32 0, i32 2
  %t72 = load ptr, ptr %t71
  store ptr %t72, ptr %l5, !tbaa !29
  br label %bb23
bb22:
  br label %bb25
bb23:
  %t74 = load ptr, ptr %l0, !tbaa !29
  %t75 = load ptr, ptr %l5, !tbaa !29
  %t77 = getelementptr %"compiler/typed:Payload", ptr %t75, i32 0, i32 0
  %t78 = load ptr, ptr %t77, !tbaa !29
  %t79 = load ptr, ptr %l2, !tbaa !29
  %t83 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ewithin(ptr %v0, ptr %v1, ptr %v2, ptr %t74, ptr %t78, ptr %t79)
  store i1 %t83, ptr %l43
  br label %bb24
bb24:
  %t84 = load i1, ptr %l43, !tbaa !21
  store i1 %t84, ptr %l11, !tbaa !21
  br label %bb30
bb25:
  br i1 true, label %bb26, label %bb27
bb26:
  br label %bb28
bb27:
  br label %bb29
bb28:
  store i1 false, ptr %l11, !tbaa !21
  br label %bb30
bb29:
  call void @__olang_check_failed(ptr @olang_loc_e1df209ea46513ba_c2fba828617e051e)
  unreachable
bb30:
  %t85 = load i1, ptr %l11, !tbaa !21
  store i1 %t85, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local %"compiler/check:litv" @compiler_2fcheck_2elitv_2enoLit() #0 {
entry:
  %l0 = alloca %"compiler/check:litv"
  %s0 = alloca %olang.scope
  %rv = alloca %"compiler/check:litv"
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = call %"compiler/check:litv" @compiler_2fcheck_3alitv_2ector(ptr %s0, i1 false, i1 false, i1 false, i64 0, double 0x0000000000000000)
  store %"compiler/check:litv" %t1, ptr %l0
  br label %bb1
bb1:
  call void @__olang_scope_close(ptr %s0)
  %t2 = load %"compiler/check:litv", ptr %l0
  store %"compiler/check:litv" %t2, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/check:litv", ptr %rv
  ret %"compiler/check:litv" %rr
}

define dso_local void @compiler_2fcheck_2estoredIn(ptr %v0, ptr %v1, { i64, ptr } %a0, ptr %a1) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l2 = alloca { i64, ptr }
  %l3 = alloca i64
  %l4 = alloca i64
  %l16 = alloca { i64, ptr }
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
  br label %ret
bb2:
  br label %bb3
bb3:
  %t7 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t7, ptr %l2, !tbaa !27
  store i64 0, ptr %l3, !tbaa !24
  %t9 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t11 = extractvalue { i64, ptr } %t9, 0
  store i64 %t11, ptr %l4, !tbaa !24
  br label %bb4
bb4:
  %t13 = load i64, ptr %l3, !tbaa !24
  %t14 = load i64, ptr %l4, !tbaa !24
  %t17 = icmp slt i64 %t13, %t14
  %t19 = xor i1 %t17, true
  br i1 %t19, label %bb5, label %bb6
bb5:
  br label %bb10
bb6:
  br label %bb7
bb7:
  %t21 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t21, ptr %l16, !tbaa !27
  %t22 = load i64, ptr %l3, !tbaa !24
  %t24 = getelementptr { i64, ptr }, ptr %l16, i32 0, i32 1
  %t25 = load ptr, ptr %t24, !tbaa !27
  %t26 = getelementptr ptr, ptr %t25, i64 %t22
  %t27 = load ptr, ptr %t26, !tbaa !39
  call void @compiler_2fcheck_2estoredStmt(ptr %v0, ptr %v1, ptr %t27, ptr %a1)
  br label %bb8
bb8:
  br label %bb9
bb9:
  %t34 = load i64, ptr %l3, !tbaa !24
  %t36 = add i64 %t34, 1
  store i64 %t36, ptr %l3, !tbaa !24
  br label %bb4
bb10:
  br label %ret
ret:
  ret void
}

define dso_local { i64, ptr } @compiler_2fcheck_2etextBytes(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %lp1 = alloca ptr
  %l2 = alloca { i64, ptr }
  %l3 = alloca i64
  %l4 = alloca i64
  %l8 = alloca i64
  %l19 = alloca { i64, ptr }
  %rv = alloca { i64, ptr }
  store { i64, ptr } %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t3 = extractvalue { i64, ptr } %t1, 0
  store i64 %t3, ptr %l8, !tbaa !24
  %t4 = load i64, ptr %l8, !tbaa !24
  %t5 = icmp sge i64 %t4, 0
  br i1 %t5, label %bb1, label %bb2
bb1:
  %t7 = load i64, ptr %l8, !tbaa !24
  %t8 = mul i64 %t7, 1
  %t9 = call ptr @__olang_scope_alloc_zeroed(ptr %v1, i64 %t8)
  %t10 = insertvalue { i64, ptr } undef, i64 %t7, 0
  %t11 = insertvalue { i64, ptr } %t10, ptr %t9, 1
  %t12 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 16, i64 8)
  store ptr %t12, ptr %lp1
  %t14 = load ptr, ptr %lp1
  store { i64, ptr } %t11, ptr %t14, !tbaa !27
  %t15 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t15, ptr %l2, !tbaa !27
  store i64 0, ptr %l3, !tbaa !24
  %t17 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t19 = extractvalue { i64, ptr } %t17, 0
  store i64 %t19, ptr %l4, !tbaa !24
  br label %bb3
bb2:
  call void @__olang_check_failed(ptr @olang_loc_7873eed4a01e5678_b9c164dc568d47a4)
  unreachable
bb3:
  %t21 = load i64, ptr %l3, !tbaa !24
  %t22 = load i64, ptr %l4, !tbaa !24
  %t25 = icmp slt i64 %t21, %t22
  %t27 = xor i1 %t25, true
  br i1 %t27, label %bb4, label %bb5
bb4:
  br label %bb8
bb5:
  br label %bb6
bb6:
  %t29 = load i64, ptr %l3, !tbaa !24
  %t31 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t31, ptr %l19, !tbaa !27
  %t32 = load i64, ptr %l3, !tbaa !24
  %t34 = getelementptr { i64, ptr }, ptr %l19, i32 0, i32 1
  %t35 = load ptr, ptr %t34, !tbaa !27
  %t36 = getelementptr i8, ptr %t35, i64 %t32
  %t37 = load i8, ptr %t36, !tbaa !32
  %t43 = load ptr, ptr %lp1
  %t45 = getelementptr { i64, ptr }, ptr %t43, i32 0, i32 1
  %t46 = load ptr, ptr %t45, !tbaa !27
  %t47 = getelementptr i8, ptr %t46, i64 %t29
  store i8 %t37, ptr %t47, !tbaa !32
  br label %bb7
bb7:
  %t48 = load i64, ptr %l3, !tbaa !24
  %t50 = add i64 %t48, 1
  store i64 %t50, ptr %l3, !tbaa !24
  br label %bb3
bb8:
  %t52 = load ptr, ptr %lp1
  %t53 = load { i64, ptr }, ptr %t52, !tbaa !27
  store { i64, ptr } %t53, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local %"compiler/check:roDeepArg" @compiler_2fcheck_3aroDeepArg_2ector(ptr %v0, ptr %v1, i64 %a0, ptr %a1, i64 %a2, i64 %a3) #0 {
entry:
  %rv = alloca %"compiler/check:roDeepArg"
  br label %start
start:
  br label %bb0
bb0:
  %t10 = insertvalue %"compiler/check:roDeepArg" undef, i64 %a0, 0
  %t12 = insertvalue %"compiler/check:roDeepArg" %t10, ptr %a1, 1
  %t14 = insertvalue %"compiler/check:roDeepArg" %t12, i64 %a2, 2
  %t16 = insertvalue %"compiler/check:roDeepArg" %t14, i64 %a3, 3
  store %"compiler/check:roDeepArg" %t16, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/check:roDeepArg", ptr %rv
  ret %"compiler/check:roDeepArg" %rr
}

define dso_local %"compiler/check:weakPlace" @compiler_2fcheck_3aweakPlace_2ector(ptr %v0, { i64, [3 x i64] } %a0, { i64, ptr } %a1, i64 %a2) #0 {
entry:
  %rv = alloca %"compiler/check:weakPlace"
  br label %start
start:
  br label %bb0
bb0:
  %t8 = insertvalue %"compiler/check:weakPlace" undef, { i64, [3 x i64] } %a0, 0
  %t10 = insertvalue %"compiler/check:weakPlace" %t8, { i64, ptr } %a1, 1
  %t12 = insertvalue %"compiler/check:weakPlace" %t10, i64 %a2, 2
  store %"compiler/check:weakPlace" %t12, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/check:weakPlace", ptr %rv
  ret %"compiler/check:weakPlace" %rr
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
declare void @llvm.memcpy.p0.p0.i64(ptr, ptr, i64, i1)
@.d0 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"'" }>, align 8
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
@.d1 = private constant <{ i64, [58 x i8] }> <{ i64 0, [58 x i8] c"a compound assignment to what has no operator method (E31)" }>, align 8
@.d2 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"a case" }>, align 8
declare void @llvm.memmove.p0.p0.i64(ptr, ptr, i64, i1)
@.d3 = private constant <{ i64, [9 x i8] }> <{ i64 0, [9 x i8] c"Functions" }>, align 8
@.d4 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c"Methods" }>, align 8
@.d5 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"Cases" }>, align 8
@.d6 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"Fields" }>, align 8
@.d7 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"Params" }>, align 8
@.d8 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c"Results" }>, align 8
@.d9 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"Errors" }>, align 8
@.d10 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"Name" }>, align 8
@.d11 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"Kind" }>, align 8
@.d12 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"Size" }>, align 8
@.d13 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"Align" }>, align 8
@.d14 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"Length" }>, align 8
@.d15 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c"Nullable" }>, align 8
@.d16 = private constant <{ i64, [47 x i8] }> <{ i64 0, [47 x i8] c"a member reflection reads through a type's name" }>, align 8
@.d17 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"Max" }>, align 8
@.d18 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"Min" }>, align 8
@.d19 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"Inf" }>, align 8
@.d20 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"NaN" }>, align 8
@.d21 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c"Epsilon" }>, align 8
@.d22 = private constant <{ i64, [14 x i8] }> <{ i64 0, [14 x i8] c"SmallestNormal" }>, align 8
@.d23 = private constant <{ i64, [26 x i8] }> <{ i64 0, [26 x i8] c"a limit of the number type" }>, align 8
@.d24 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"From" }>, align 8
@.d25 = private constant <{ i64, [23 x i8] }> <{ i64 0, [23 x i8] c"the raw value's reverse" }>, align 8
@.d26 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d27 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"CVoid" }>, align 8
declare noalias ptr @__olang_scope_alloc_zeroed(ptr, i64)
@.d28 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"?" }>, align 8
@.d29 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
declare ptr @llvm.coro.promise(ptr, i32, i1)
@.d30 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
define linkonce_odr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cI64_3e(ptr %v0, ptr %a0) #0 {
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
  %t8 = mul i64 %t7, 8
  %t9 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t8)
  %t10 = insertvalue { i64, ptr } undef, i64 %t7, 0
  %t11 = insertvalue { i64, ptr } %t10, ptr %t9, 1
  store { i64, ptr } %t11, ptr %l4, !tbaa !27
  %t12 = getelementptr { i64, ptr }, ptr %l4, i32 0, i32 1
  %t13 = load ptr, ptr %t12, !tbaa !27
  %t14 = getelementptr { i64, ptr }, ptr %l2, i32 0, i32 1
  %t15 = load ptr, ptr %t14, !tbaa !27
  %t16 = load i64, ptr %l3, !tbaa !24
  %t17 = mul i64 %t16, 8
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

define internal i1 @olang_lambda_31(ptr %env, %"compiler/check:litv" %a0) #0 {
entry:
  %l0 = alloca %"compiler/check:litv"
  %l3 = alloca i1
  %l6 = alloca i1
  %rv = alloca i1
  store %"compiler/check:litv" %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = getelementptr %"compiler/check:litv", ptr %l0, i32 0, i32 1
  %t2 = load i1, ptr %t1, !tbaa !21
  %t4 = xor i1 %t2, true
  br i1 %t4, label %bb1, label %bb2
bb1:
  store i1 true, ptr %l3, !tbaa !21
  br label %bb6
bb2:
  %t6 = getelementptr %"compiler/check:litv", ptr %l0, i32 0, i32 4
  %t7 = load double, ptr %t6, !tbaa !26
  %t9 = fcmp ole double %t7, 0x7fefffffffffffff
  br i1 %t9, label %bb3, label %bb4
bb3:
  %t11 = getelementptr %"compiler/check:litv", ptr %l0, i32 0, i32 4
  %t12 = load double, ptr %t11, !tbaa !26
  %t14 = fcmp oge double %t12, 0xffefffffffffffff
  store i1 %t14, ptr %l6, !tbaa !21
  br label %bb5
bb4:
  store i1 false, ptr %l6, !tbaa !21
  br label %bb5
bb5:
  %t16 = load i1, ptr %l6, !tbaa !21
  store i1 %t16, ptr %l3, !tbaa !21
  br label %bb6
bb6:
  %t17 = load i1, ptr %l3, !tbaa !21
  store i1 %t17, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

declare ptr @__olang_scope_of(ptr, ptr) noinline
@.d32 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c"nothing" }>, align 8
@.d33 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c", " }>, align 8
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

@.d34 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"Bool" }>, align 8
@.d35 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c"nothing" }>, align 8
@.d36 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"null" }>, align 8
@.d37 = private constant <{ i64, [27 x i8] }> <{ i64 0, [27 x i8] c"what its body can fail with" }>, align 8
@.d38 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c"noreturn" }>, align 8
@.d39 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c", " }>, align 8
@.d40 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"." }>, align 8
@.d41 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c", " }>, align 8
@.d42 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"any " }>, align 8
@.d43 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"Array<" }>, align 8
@.d44 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"..." }>, align 8
@.d45 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"mut " }>, align 8
@.d46 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"?&" }>, align 8
@.d47 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"&" }>, align 8
@.d48 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"?&" }>, align 8
@.d49 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"&" }>, align 8
@.d50 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"fn?&(" }>, align 8
@.d51 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"fn&(" }>, align 8
@.d52 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c", " }>, align 8
@.d53 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c", " }>, align 8
@.d54 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d55 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c" ?" }>, align 8
@.d56 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d57 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c", " }>, align 8
@.d58 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"(" }>, align 8
@.d59 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c")" }>, align 8
@.d60 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"enum {" }>, align 8
@.d61 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"(" }>, align 8
@.d62 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c")" }>, align 8
@.d63 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c", " }>, align 8
@.d64 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c" }" }>, align 8
declare i64 @__olang_fmt_i64(ptr, i64)
@.d65 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c"nothing" }>, align 8
@.d66 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c", " }>, align 8
@.d67 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"Bits" }>, align 8
@.d68 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"'Bits'" }>, align 8
@.d69 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"Bits" }>, align 8
@.d70 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"U64" }>, align 8
@.d71 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"U32" }>, align 8
@.d72 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"U16" }>, align 8
@.d73 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"Value" }>, align 8
@.d74 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"Set" }>, align 8
@.d75 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"s" }>, align 8
@.d76 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"Get" }>, align 8
@.d77 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c"SliceOf" }>, align 8
@.d78 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"Get" }>, align 8
@.d79 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d80 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"s" }>, align 8
@.d81 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c"SliceOf" }>, align 8
@.d82 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"Narrow" }>, align 8
@.d83 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d84 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"s" }>, align 8
@.d85 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d86 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"retire" }>, align 8
@.d87 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"grown" }>, align 8
@.d88 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"vacate" }>, align 8
@.d89 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"occupy" }>, align 8
@.d90 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"Atomic" }>, align 8
@.d91 = private constant <{ i64, [11 x i8] }> <{ i64 0, [11 x i8] c"AtomicStore" }>, align 8
@.d92 = private constant <{ i64, [9 x i8] }> <{ i64 0, [9 x i8] c"AtomicAdd" }>, align 8
@.d93 = private constant <{ i64, [10 x i8] }> <{ i64 0, [10 x i8] c"AtomicSwap" }>, align 8
@.d94 = private constant <{ i64, [17 x i8] }> <{ i64 0, [17 x i8] c"AtomicCompareSwap" }>, align 8
@.d95 = private constant <{ i64, [10 x i8] }> <{ i64 0, [10 x i8] c"AtomicLoad" }>, align 8
@.d96 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d97 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"s" }>, align 8
@.d98 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"Copy" }>, align 8
@.d99 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"Hash" }>, align 8
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
declare %"compiler/source:Span" @compiler_2fsource_3aSpan_2ector(ptr %v0, i32 %a0, i32 %a1)
@olang_loc_f2cd8ec8e3c16d57_506e218c0a0f6ccb = external constant [0 x i8]
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eargPattern(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eassignAt(ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"compiler/source:Span" %a1, i32 %a2, ptr %a3, ptr %a4)
declare %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v0, ptr %a0)
declare %"compiler/source:Span" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eopAfter(ptr %v0, ptr %a0, %"compiler/source:Span" %a1, i64 %a2)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eplace(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1)
@G_2ecompiler_2ftypes_2eUnknownT = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\00\00\00\00" }>, align 8
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eexpr(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, i32 %a2)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2econvertedPlace(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, ptr %a2)
declare %"compiler/source:Span" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eargSpan(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eNotAssignable(ptr %v0)
declare i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1, %"compiler/diagmsg:Msg" %a2)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ewholeColumn(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecolumnStore(ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"compiler/source:Span" %a1, ptr %a2, ptr %a3)
declare i32 @compiler_2ftyped_2ecompiler_2ftyped_3aLvalue_2eType(ptr %v0, ptr %a0)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisRef(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elaneArray(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2fcheck_2ecompoundOp(i32 %a0)
declare i1 @compiler_2fcheck_2elaneTok(i32 %a0)
@olang_loc_d2a4873a2cff0127_7286b996ab1f319b = external constant [0 x i8]
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ewriteBack(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, %"compiler/source:Span" %a1, i32 %a2, ptr %a3, ptr %a4, %"compiler/source:Span" %a5, i64 %a6, { i64, ptr } %a7)
declare %"compiler/source:Span" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ewriteAt(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2enotCapture(ptr %v0, ptr %v1, ptr %a0, ptr %a1, %"compiler/source:Span" %a2)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eweakFresh(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, ptr %a2)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2estoreInto(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, %"compiler/source:Span" %a1, ptr %a2, ptr %a3, %"compiler/source:Span" %a4, ptr %a5, i1 %a6)
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2epowExponent(ptr %v0, ptr %a0, i32 %a1)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2evalue(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, %"compiler/source:Span" %a2)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eread(ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"compiler/source:Span" %a1, ptr %a2)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2epowValues(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, %"compiler/source:Span" %a1, %"compiler/source:Span" %a2, ptr %a3, ptr %a4)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efit(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, i32 %a2, %"compiler/source:Span" %a3)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eemit(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elaneAssign(ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"compiler/source:Span" %a1, %"compiler/source:Span" %a2, i32 %a3, ptr %a4, ptr %a5)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisNumber(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisNamed(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eExtends(ptr %v0, ptr %a0, i32 %a1)
declare { i64, ptr } @compiler_2fcheck_2eoperatorName(ptr %v0, i32 %a0)
declare i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eroleMethod(ptr %v0, ptr %v1, ptr %a0, i32 %a1, { i64, ptr } %a2, i64 %a3)
declare i32 @compiler_2fcheck_2etypeOf(ptr %v0, ptr %a0)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eSame(ptr %v0, ptr %a0, i32 %a1, i32 %a2)
declare { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elitLike(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare { i64, ptr } @compiler_2ftoken_2ecompiler_2ftoken_3aTok_2eText(ptr %v0, i32 %a0)
declare { i64, ptr } @compiler_2fmsgs_2eTok(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eNotExtendedOp(ptr %v0, ptr %v1, ptr %v2, ptr %v3, { i64, ptr } %a0, { i64, ptr } %a1, { i64, ptr } %a2)
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunder(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eMeet(ptr %v0, ptr %a0, i32 %a1, i32 %a2)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eNumberDoesNotFlow(ptr %v0, ptr %v1, ptr %v2, ptr %v3, { i64, ptr } %a0, { i64, ptr } %a1, { i64, ptr } %a2)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eoperatorCall(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, %"compiler/source:Span" %a1, %"compiler/source:Span" %a2, i32 %a3, ptr %a4, ptr %a5)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2egap(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1, { i64, ptr } %a2)
declare %"compiler/check:litv" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efold(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elitOf(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, %"compiler/check:litv" %a2, i32 %a3)
@olang_loc_5957a34f5d629e92_b1985d6017512bae = external constant [0 x i8]
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eshiftInRange(ptr %v0, ptr %v1, ptr %a0, i32 %a1, ptr %a2, %"compiler/source:Span" %a3)
declare i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFlows(ptr %v0, ptr %a0, i32 %a1, i32 %a2)
@olang_loc_211eb8206518cfd3_dabae8ca263a8cdf = external constant [0 x i8]
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2econvert(ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"compiler/source:Span" %a1, ptr %a2, i32 %a3)
declare i32 @compiler_2fcheck_2ebinaryOp(i32 %a0)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eprim(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, %"compiler/source:Span" %a1, i32 %a2, i32 %a3, ptr %a4, ptr %a5)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eb5aGlobal(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i64 %a2, i32 %a3, i32 %a4)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eb5aExpr(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, ptr %a2)
@olang_loc_b2a10b57ca8f7dfa_ebdfac3cc9f6695e = external constant [0 x i8]
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2eLen_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %a0)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eheldArg(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, { i64, ptr } %a1, ptr %a2, i64 %a3)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2ePush_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %a0)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %a0, i64 %a1)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ereadLocal(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1, i64 %a2)
declare { i64, ptr } @compiler_2fcheck_2egather_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecallOfBody(ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"compiler/source:Span" %a1, i32 %a2, i64 %a3, { i64, ptr } %a4, i1 %a5)
declare { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisEnum(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ehasCase(ptr %v0, ptr %a0, i32 %a1, i32 %a2)
declare i1 @compiler_2fgeneric_2eProjectsType(ptr %v0, { i64, ptr } %a0)
declare i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2erawsOf(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eCaseSig(ptr %v0, ptr %a0, i32 %a1, i64 %a2)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParams(ptr %v0, ptr %a0, i32 %a1)
declare { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
@olang_loc_701b0be85f390813_508d071905c6403f = external constant [0 x i8]
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %a0, i32 %a1)
declare ptr @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eTypeDecl(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare ptr @compiler_2fcheck_2ecaseDecl(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esrc(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1)
declare %"compiler/check:fieldSet" @compiler_2fcheck_3afieldSet_2ector(ptr %v0, ptr %v1, ptr %v2, ptr %v3, { i64, ptr } %a0, i32 %a1, { i64, ptr } %a2, { i64, ptr } %a3)
declare i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2econstCond(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2econd1(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efactsExpr(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1, i1 %a2, ptr %a3, i32 %a4)
declare %"compiler/source:Span" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ebetween(ptr %v0, ptr %a0, %"compiler/source:Span" %a1, %"compiler/source:Span" %a2, i64 %a3)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eCondBranchTypes(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunknown(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1)
@G_2ecompiler_2ftypes_2eNoreturnT = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\11\00\00\00" }>, align 8
@G_2ecompiler_2ftypes_2eNullT = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\0F\00\00\00" }>, align 8
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eOrNull(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eReferent(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eflowsInto(ptr %v0, ptr %a0, i32 %a1, i32 %a2)
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ederef(ptr %v0, ptr %a0, i32 %a1)
declare i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePermOf(ptr %v0, ptr %a0, i32 %a1)
declare i64 @compiler_2fcheck_2emeetPerm(i64 %a0, i64 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRef(ptr %v0, ptr %a0, i32 %a1, i64 %a2)
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2erunLength(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eElem(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eArray(ptr %v0, ptr %a0, i32 %a1, i32 %a2)
@olang_loc_db85c439bc9f5684_3c0400873f27ba78 = external constant [0 x i8]
declare %"compiler/typed:Cond" @compiler_2ftyped_3aCond_2ector(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1, ptr %a2)
@G_2ecompiler_2ftypes_2eBoolT = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\02\00\00\00" }>, align 8
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eCondNotBoolType(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare ptr @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnDecl(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eA(ptr %v0, ptr %a0, i32 %a1)
declare i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eB(ptr %v0, ptr %a0, i32 %a1)
declare i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eCount(ptr %v0, ptr %a0)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2edefaultArg(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1, i64 %a2, i64 %a3, i1 %a4, i32 %a5, i32 %a6)
declare void @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eForget(ptr %v0, ptr %a0, i64 %a1)
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ebindType(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunify(ptr %v0, ptr %v1, ptr %a0, i32 %a1, i32 %a2, ptr %a3, i1 %a4, i1 %a5)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eeffX(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
@olang_loc_a395790432891bd8_5a5437b807a0153c = external constant [0 x i8]
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2edeclKind(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eErrValOfType(ptr %v0, ptr %a0, i32 %a1)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2estructBody(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eDeclModule(ptr %v0, ptr %a0, i32 %a1)
declare %"std/prelude/iterator:ViewGenerator.00c7c71992d6e1815cd052c47b979cdd" @compiler_2fgeneric_2eFieldDecls.walk(ptr %v0, ptr %v1, ptr %a0)
declare { i32, ptr } @std_2fprelude_2fiterator_2estd_2fprelude_2fiterator_3aViewGenerator_3ccompiler_2fast_3aV_Hf179e857cb72c72900f4614cd5df5a25(ptr %v0, ptr %a0)
declare { i64, [3 x i64] } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efieldTypeWritten(ptr %v0, ptr %v1, ptr %v2, ptr %a0, i64 %a1, ptr %a2, ptr %a3, i32 %a4)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_Hb2d19b6b5ea5ab5a85c5720545345bd4(ptr %v0, ptr %a0)
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H7bcf2aeb09afa796f4333e6ec8c3f63f(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare void @compiler_2fcheck_3ab5aWalk_2ector(ptr %out, ptr %v0, i64 %a0)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eb5aInit(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i64 %a2)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eb5aFn(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i64 %a2)
@G_2ecompiler_2ftypes_2eWritable = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\01\00\00\00\00\00\00\00" }>, align 8
declare i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ehidden(ptr %v0, ptr %a0, %"compiler/source:Span" %a1, i32 %a2)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v1, ptr %a0)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2ePush_3ccompiler_2ftypes_3aTypeId_3e(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ereadsConst(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ei64(ptr %v0, ptr %a0)
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFoldKnown(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, ptr %a2, i32 %a3)
declare i1 @compiler_2fcheck_2eisWild(ptr %v0, ptr %a0)
@olang_loc_660a686bd581f793_38ac5a37531336d7 = external constant [0 x i8]
@olang_loc_21b1f67e4c6ce46b_15219dc677df2bef = external constant [0 x i8]
declare i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eConstValue(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elaneElemOf(ptr %v0, ptr %a0, i32 %a1)
declare i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elocalNamed(ptr %v0, ptr %a0, i32 %a1)
declare i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ewholeNarrowed(ptr %v0, ptr %a0, i64 %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fcheck_3aframe_26_3e_2_H2251bc8fca359ca0394d0bb11af7ba0a(ptr %v0, ptr %a0)
declare i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecaptureIn(ptr %v0, ptr %a0, i64 %a1, i32 %a2, %"compiler/source:Span" %a3)
declare ptr @compiler_2fcheck_2ereadPlace(ptr %v0, ptr %v1, ptr %a0)
@olang_loc_cd94e6a5e488a5b1_e9066543c2d4a76d = external constant [0 x i8]
declare { i32, i64 } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eIndexOf_3cI64_3e(ptr %v0, ptr %a0, i64 %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3anarrowed_3e_2eLen_3ccompiler_2fcheck_3anarrowed_3e(ptr %v0, ptr %a0)
declare %"compiler/check:narrowed" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3anarrowed_3e_2eAt_3ccompiler_2fcheck_3anarrowed_3e(ptr %v0, ptr %a0, i64 %a1)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eFuncNullable(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsNullable(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eArrayRef(ptr %v0, ptr %a0, i32 %a1)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2ector(ptr %v0, i64 %a0)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2eLen_3ccompiler_2ftypes_3aTypeId_3e(ptr %v0, ptr %a0)
declare i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2eAt_3ccompiler_2ftypes_3aTypeId_3e(ptr %v0, ptr %a0, i64 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrOf(ptr %v0, ptr %a0, i32 %a1)
declare i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrMask(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eentryOf(ptr %v0, ptr %a0, i32 %a1, i64 %a2)
@olang_loc_2c067c0920238e9c_6231d620e5a2e328 = external constant [0 x i8]
declare { i32, { i64, ptr } } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ebyField(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, %"compiler/source:Span" %a1, { i64, ptr } %a2, ptr %a3, i1 %a4)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elit(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1, i32 %a2, i64 %a3)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisCase(ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"compiler/source:Span" %a1, ptr %a2, i64 %a3)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eCases(ptr %v0, ptr %a0, i32 %a1)
declare %"compiler/typed:Payload" @compiler_2ftyped_3aPayload_2ector(ptr %v0, ptr %v1, ptr %a0, i64 %a1, i32 %a2)
declare %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aPattern_2eSpan(ptr %v0, ptr %a0)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2epattern(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %a0, ptr %a1, ptr %a2, i32 %a3, ptr %a4, i64 %a5)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eand2(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, %"compiler/source:Span" %a1, ptr %a2, ptr %a3)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eforeignRef(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclName(ptr %v0, ptr %a0, i32 %a1)
declare i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclModule(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2edescriptor(ptr %v0, ptr %a0, %"compiler/check:reflList" %a1, i64 %a2)
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ereflBind(ptr %v0, ptr %a0, i32 %a1, i32 %a2)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eConst(ptr %v0, ptr %a0, i32 %a1, i64 %a2)
declare i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ereflDecide(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ereflUnbind(ptr %v0, ptr %a0, i32 %a1, i32 %a2)
@olang_loc_320f9d8592ce2991_bf25bbc6142ecf8d = external constant [0 x i8]
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eReflFilterUndecided(ptr %v0)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eroDeepPlace(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, i64 %a1, ptr %a2, ptr %a3, ptr %a4, i64 %a5)
@olang_loc_8273e01acb39955e_49f05f53ee74b1b2 = external constant [0 x i8]
declare i1 @compiler_2ftyped_2ePassesRefs(i32 %a0)
declare i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ebodyOfCallee(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eroFollows(ptr %v0, ptr %a0, i64 %a1, i64 %a2)
@olang_loc_6132b637a09ab63c_579ebcf2b9b55890 = external constant [0 x i8]
declare %"std/prelude/text:StringBuilder" @std_2fprelude_2ftext_3aStringBuilder_2ector(ptr %v0)
declare void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %v0, ptr %v1, ptr %a0)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3aidleCall_3e_2eLen_3ccompiler_2fcheck_3aidleCall_3e(ptr %v0, ptr %a0)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %v0, i64 %a0)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cBool_3e_2ector(ptr %v0, i64 %a0)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_3e_2ector(ptr %v0, i64 %a0)
declare %"compiler/check:idleCall" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3aidleCall_3e_2eAt_3ccompiler_2fcheck_3aidleCall_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %a0, i64 %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eClear_3cI64_3e(ptr %v0, ptr %a0)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2ePush_3cBool_3e(ptr %v0, ptr %a0, i1 %a1)
declare i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2eHas_3cI64_2c_20I64_3e(ptr %v0, ptr %a0, i64 %a1)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2ePut_3cI64_2c_20I64_3e(ptr %v0, ptr %a0, i64 %a1, i64 %a2)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_Ha1ef0e278819e2a81939c80ef5438e96(ptr %v0, ptr %a0)
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eSetAt_3cBool_3e(ptr %v0, ptr %a0, i64 %a1, i1 %a2)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eeffB(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" @std_2fpair_3aPair_3cI64_2c_20I64_3e_2ector(ptr %v0, i64 %a0, i64 %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_3e_H2474e1fc3c93452d7765e4ed18f29a03(ptr %v0, ptr %a0, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_3e_Hda4ef06466535e66801340e999dad217(ptr %v0, ptr %a0)
declare %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_3e_H87a29777ccf22aa2985fa9d3c61f9cd3(ptr %v0, ptr %a0, i64 %a1)
declare i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eAt_3cBool_3e(ptr %v0, ptr %a0, i64 %a1)
declare { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2eGet_3cI64_2c_20I64_3e(ptr %v0, ptr %a0, i64 %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eCallDoesNothing(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eError(ptr %v0, ptr %v1, ptr %a0, { i64, [3 x i64] } %a1, %"compiler/diagmsg:Msg" %a2)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsNumber(ptr %v0, ptr %a0, i32 %a1)
declare { i64, ptr } @compiler_2fcheck_2eprimName(ptr %v0, i32 %a0)
declare { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eCanon(ptr %v0, ptr %v1, ptr %v2, ptr %a0, i32 %a1)
declare void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePushChar(ptr %v0, ptr %a0, i8 %a1)
declare { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2equalifierFor(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare { i64, ptr } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eErrorWords(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eIsRaisedError(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eArgs(ptr %v0, ptr %a0, i32 %a1)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2espellArgs(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i32 %a2)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrValItems(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrValName(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eAnyTrait(ptr %v0, ptr %a0, i32 %a1)
@G_2ecompiler_2ftypes_2eSpread = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\08\00\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2ftypes_2eNullable = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\04\00\00\00\00\00\00\00" }>, align 8
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eResult(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrors(ptr %v0, ptr %a0, i32 %a1)
@G_2ecompiler_2ftypes_2eDefaultErrT = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\10\00\00\00" }>, align 8
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParts(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eFuncTag(ptr %v0, ptr %a0, i32 %a1)
declare { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eNamesOf(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
@G_2ecompiler_2ftypes_2eVoidT = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\01\00\00\00" }>, align 8
declare i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePromisesOf(ptr %v0, ptr %a0, i32 %a1)
declare { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePromiseText(ptr %v0, ptr %v1, ptr %v2, ptr %a0, i32 %a1)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2espellList(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1, i32 %a2, { i64, ptr } %a3, { i64, ptr } %a4)
declare { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eShapeNames(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eShapeCases(ptr %v0, ptr %a0, i32 %a1)
declare { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eShapeFields(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare %"compiler/generic:varRow" @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eVarAt(ptr %v0, ptr %a0, i64 %a1, i64 %a2)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrSetItems(ptr %v0, ptr %a0, i32 %a1)
@olang_loc_150065cf715feb7f_967c08b33fa11dcb = external constant [0 x i8]
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsFloat(ptr %v0, ptr %a0, i32 %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eTakesNoArgs(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2edropArgs(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eBits(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePrim(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2erawValue(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, %"compiler/source:Span" %a1, %"compiler/source:Span" %a2, i32 %a3, ptr %a4, { i64, ptr } %a5)
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2earrayOf(ptr %v0, ptr %a0, i32 %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eArgCount(ptr %v0, ptr %v1, i64 %a0, { i64, ptr } %a1, i64 %a2)
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esite(ptr %v0, ptr %a0, i32 %a1, %"compiler/source:Span" %a2)
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eoutOfRange(ptr %v0, ptr %a0)
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efailOp(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1, %"compiler/source:Span" %a2, i1 %a3)
@olang_loc_abac8132a300fc4a_61eef78091b78ca6 = external constant [0 x i8]
@olang_loc_740060cd3c65d53f_5a6edac2e2ccbc3b = external constant [0 x i8]
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eelemPlace(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, %"compiler/source:Span" %a1, ptr %a2, { i64, ptr } %a3, i32 %a4)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aStmt_26_3e_2eLen_3ccompiler_2ftyped_3aStmt_26_3e(ptr %v0, ptr %a0)
declare { i64, ptr } @compiler_2fcheck_2egather_3ccompiler_2ftyped_3aStmt_26_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare %"compiler/typed:Seq" @compiler_2ftyped_3aSeq_2ector(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, ptr %a1, i1 %a2)
@olang_loc_2cb8a0e94f65b35c_b9489d26c7426678 = external constant [0 x i8]
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esliceOf(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %a0, %"compiler/source:Span" %a1, ptr %a2, ptr %a3, ptr %a4, i32 %a5)
@olang_loc_56b27b3a434e6e4b_829f47044d523297 = external constant [0 x i8]
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eNarrowNeedsType(ptr %v0)
declare i32 @compiler_2fcheck_2ebitOp(ptr %v0, { i64, ptr } %a0)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsInt(ptr %v0, ptr %a0, i32 %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eBitOpNotInteger(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eByteSwapWidth(ptr %v0, ptr %v1, { i64, ptr } %a0, i64 %a1)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisInt(ptr %v0, ptr %a0, i32 %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eBitOpCount(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare i32 @compiler_2fcheck_2esatOp(ptr %v0, { i64, ptr } %a0)
declare i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eLibrary(ptr %v0, ptr %a0, i64 %a1)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eexprTo(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, i32 %a2)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecur(ptr %v0, ptr %v1, ptr %a0)
declare { i64, i64, i64 } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eopen(ptr %v0, ptr %a0, i32 %a1, %"compiler/source:Span" %a2)
declare { i64, i64, i64, i64, i64 } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elaneLoopOpen(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1, ptr %a2, i64 %a3)
declare %"compiler/typed:Elem" @compiler_2ftyped_3aElem_2ector(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, i32 %a2)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2enoteWrite(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elaneLoopClose(ptr %v0, ptr %a0, %"compiler/source:Span" %a1, i64 %a2, i64 %a3, i64 %a4, i64 %a5, i64 %a6)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eclose(ptr %v0, ptr %v1, ptr %a0, i64 %a1, i64 %a2, i64 %a3, i64 %a4)
declare %"compiler/typed:Collect" @compiler_2ftyped_3aCollect_2ector(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, i32 %a2, i32 %a3, i1 %a4)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eplaceWritable(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare %"compiler/source:Span" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eoperandAt(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eVacateNotPlace(ptr %v0)
declare i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eAtomicNotInteger(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eAtomicWidth(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eAtomicNotPlace(ptr %v0)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elendsPacked(ptr %v0, ptr %v1, ptr %a0, ptr %a1, %"compiler/source:Span" %a2)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eAtomicNotWritable(ptr %v0)
declare i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eUnique(ptr %v0, ptr %a0, i32 %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eUniqueCopy(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eGenerational(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2edestructs(ptr %v0, ptr %a0, i32 %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eGenCopyDestruct(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare i1 @compiler_2fcheck_2eexistingValue(ptr %v0, ptr %a0)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ewantCopy(ptr %v0, ptr %a0, i32 %a1, i64 %a2)
declare %"compiler/source:Span" @compiler_2ftyped_2ecompiler_2ftyped_3aExpr_2eSpan(ptr %v0, ptr %a0)
declare %"compiler/typed:Make" @compiler_2ftyped_3aMake_2ector(ptr %v0, ptr %v1, ptr %v2, i32 %a0, i64 %a1, { i64, ptr } %a2, ptr %a3, i32 %a4, i32 %a5, i1 %a6)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2epartHashes(ptr %v0, ptr %a0, i32 %a1, i64 %a2)
declare { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eone(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecallOf(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, %"compiler/source:Span" %a1, i32 %a2, ptr %a3, { i64, ptr } %a4)
@olang_loc_ec59a5f60fda0dc9_336029f9ba6be385 = external constant [0 x i8]
declare { i64, [3 x i64] } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2emarkAt(ptr %v0, ptr %v1, ptr %a0, i64 %a1, ptr %a2)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esamePlace(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, ptr %a2)
@olang_loc_e1df209ea46513ba_c2fba828617e051e = external constant [0 x i8]
declare %"compiler/check:litv" @compiler_2fcheck_3alitv_2ector(ptr %v0, i1 %a0, i1 %a1, i1 %a2, i64 %a3, double %a4)
declare void @compiler_2fcheck_2estoredStmt(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
@olang_loc_7873eed4a01e5678_b9c164dc568d47a4 = external constant [0 x i8]
declare %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2ector(ptr %v0)

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
